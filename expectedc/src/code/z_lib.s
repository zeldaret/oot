
build/src/code/z_lib.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Lib_MemSet>:
       0:	afa60008 	sw	a2,8(sp)
       4:	30c600ff 	andi	a2,a2,0xff
       8:	10a00010 	beqz	a1,4c <Lib_MemSet+0x4c>
       c:	00001025 	move	v0,zero
      10:	30a70003 	andi	a3,a1,0x3
      14:	10e00006 	beqz	a3,30 <Lib_MemSet+0x30>
      18:	00e01825 	move	v1,a3
      1c:	24420001 	addiu	v0,v0,1
      20:	a0860000 	sb	a2,0(a0)
      24:	1462fffd 	bne	v1,v0,1c <Lib_MemSet+0x1c>
      28:	24840001 	addiu	a0,a0,1
      2c:	10450007 	beq	v0,a1,4c <Lib_MemSet+0x4c>
      30:	24420004 	addiu	v0,v0,4
      34:	a0860000 	sb	a2,0(a0)
      38:	a0860001 	sb	a2,1(a0)
      3c:	a0860002 	sb	a2,2(a0)
      40:	a0860003 	sb	a2,3(a0)
      44:	1445fffa 	bne	v0,a1,30 <Lib_MemSet+0x30>
      48:	24840004 	addiu	a0,a0,4
      4c:	03e00008 	jr	ra
      50:	00000000 	nop

00000054 <Math_Coss>:
      54:	27bdffe8 	addiu	sp,sp,-24
      58:	afbf0014 	sw	ra,20(sp)
      5c:	afa40018 	sw	a0,24(sp)
      60:	00802825 	move	a1,a0
      64:	0c000000 	jal	0 <Lib_MemSet>
      68:	30a4ffff 	andi	a0,a1,0xffff
      6c:	44822000 	mtc1	v0,$f4
      70:	3c010000 	lui	at,0x0
      74:	c4280010 	lwc1	$f8,16(at)
      78:	468021a0 	cvt.s.w	$f6,$f4
      7c:	8fbf0014 	lw	ra,20(sp)
      80:	27bd0018 	addiu	sp,sp,24
      84:	46083002 	mul.s	$f0,$f6,$f8
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <Math_Sins>:
      90:	27bdffe8 	addiu	sp,sp,-24
      94:	afbf0014 	sw	ra,20(sp)
      98:	afa40018 	sw	a0,24(sp)
      9c:	00802825 	move	a1,a0
      a0:	0c000000 	jal	0 <Lib_MemSet>
      a4:	30a4ffff 	andi	a0,a1,0xffff
      a8:	44822000 	mtc1	v0,$f4
      ac:	3c010000 	lui	at,0x0
      b0:	c4280014 	lwc1	$f8,20(at)
      b4:	468021a0 	cvt.s.w	$f6,$f4
      b8:	8fbf0014 	lw	ra,20(sp)
      bc:	27bd0018 	addiu	sp,sp,24
      c0:	46083002 	mul.s	$f0,$f6,$f8
      c4:	03e00008 	jr	ra
      c8:	00000000 	nop

000000cc <Math_ApproxUpdateScaledS>:
      cc:	afa60008 	sw	a2,8(sp)
      d0:	00063400 	sll	a2,a2,0x10
      d4:	afa50004 	sw	a1,4(sp)
      d8:	00052c00 	sll	a1,a1,0x10
      dc:	00063403 	sra	a2,a2,0x10
      e0:	10c00026 	beqz	a2,17c <Math_ApproxUpdateScaledS+0xb0>
      e4:	00052c03 	sra	a1,a1,0x10
      e8:	3c0e0000 	lui	t6,0x0
      ec:	8dce0000 	lw	t6,0(t6)
      f0:	84820000 	lh	v0,0(a0)
      f4:	3c013f00 	lui	at,0x3f00
      f8:	85cf0110 	lh	t7,272(t6)
      fc:	44814000 	mtc1	at,$f8
     100:	0045c023 	subu	t8,v0,a1
     104:	448f2000 	mtc1	t7,$f4
     108:	0018cc00 	sll	t9,t8,0x10
     10c:	00194403 	sra	t0,t9,0x10
     110:	468021a0 	cvt.s.w	$f6,$f4
     114:	46083002 	mul.s	$f0,$f6,$f8
     118:	59000005 	blezl	t0,130 <Math_ApproxUpdateScaledS+0x64>
     11c:	44865000 	mtc1	a2,$f10
     120:	00063023 	negu	a2,a2
     124:	00063400 	sll	a2,a2,0x10
     128:	00063403 	sra	a2,a2,0x10
     12c:	44865000 	mtc1	a2,$f10
     130:	00000000 	nop
     134:	46805420 	cvt.s.w	$f16,$f10
     138:	46008482 	mul.s	$f18,$f16,$f0
     13c:	4600910d 	trunc.w.s	$f4,$f18
     140:	440c2000 	mfc1	t4,$f4
     144:	00000000 	nop
     148:	004c6821 	addu	t5,v0,t4
     14c:	a48d0000 	sh	t5,0(a0)
     150:	848e0000 	lh	t6,0(a0)
     154:	24020001 	li	v0,1
     158:	01c57823 	subu	t7,t6,a1
     15c:	000fc400 	sll	t8,t7,0x10
     160:	0018cc03 	sra	t9,t8,0x10
     164:	03260019 	multu	t9,a2
     168:	00004012 	mflo	t0
     16c:	05020009 	bltzl	t0,194 <Math_ApproxUpdateScaledS+0xc8>
     170:	00001025 	move	v0,zero
     174:	03e00008 	jr	ra
     178:	a4850000 	sh	a1,0(a0)
     17c:	84890000 	lh	t1,0(a0)
     180:	54a90004 	bnel	a1,t1,194 <Math_ApproxUpdateScaledS+0xc8>
     184:	00001025 	move	v0,zero
     188:	03e00008 	jr	ra
     18c:	24020001 	li	v0,1
     190:	00001025 	move	v0,zero
     194:	03e00008 	jr	ra
     198:	00000000 	nop

0000019c <Math_ApproxS>:
     19c:	afa60008 	sw	a2,8(sp)
     1a0:	00063400 	sll	a2,a2,0x10
     1a4:	afa50004 	sw	a1,4(sp)
     1a8:	00052c00 	sll	a1,a1,0x10
     1ac:	00063403 	sra	a2,a2,0x10
     1b0:	10c00013 	beqz	a2,200 <Math_ApproxS+0x64>
     1b4:	00052c03 	sra	a1,a1,0x10
     1b8:	84820000 	lh	v0,0(a0)
     1bc:	00a2082a 	slt	at,a1,v0
     1c0:	50200005 	beqzl	at,1d8 <Math_ApproxS+0x3c>
     1c4:	00467021 	addu	t6,v0,a2
     1c8:	00063023 	negu	a2,a2
     1cc:	00063400 	sll	a2,a2,0x10
     1d0:	00063403 	sra	a2,a2,0x10
     1d4:	00467021 	addu	t6,v0,a2
     1d8:	a48e0000 	sh	t6,0(a0)
     1dc:	848f0000 	lh	t7,0(a0)
     1e0:	24020001 	li	v0,1
     1e4:	01e5c023 	subu	t8,t7,a1
     1e8:	03060019 	multu	t8,a2
     1ec:	0000c812 	mflo	t9
     1f0:	07220009 	bltzl	t9,218 <Math_ApproxS+0x7c>
     1f4:	00001025 	move	v0,zero
     1f8:	03e00008 	jr	ra
     1fc:	a4850000 	sh	a1,0(a0)
     200:	84880000 	lh	t0,0(a0)
     204:	54a80004 	bnel	a1,t0,218 <Math_ApproxS+0x7c>
     208:	00001025 	move	v0,zero
     20c:	03e00008 	jr	ra
     210:	24020001 	li	v0,1
     214:	00001025 	move	v0,zero
     218:	03e00008 	jr	ra
     21c:	00000000 	nop

00000220 <Math_ApproxF>:
     220:	44866000 	mtc1	a2,$f12
     224:	44802000 	mtc1	zero,$f4
     228:	44857000 	mtc1	a1,$f14
     22c:	46046032 	c.eq.s	$f12,$f4
     230:	00000000 	nop
     234:	45030015 	bc1tl	28c <Math_ApproxF+0x6c>
     238:	c4840000 	lwc1	$f4,0(a0)
     23c:	c4800000 	lwc1	$f0,0(a0)
     240:	24020001 	li	v0,1
     244:	4600703c 	c.lt.s	$f14,$f0
     248:	00000000 	nop
     24c:	45020003 	bc1fl	25c <Math_ApproxF+0x3c>
     250:	460c0180 	add.s	$f6,$f0,$f12
     254:	46006307 	neg.s	$f12,$f12
     258:	460c0180 	add.s	$f6,$f0,$f12
     25c:	44809000 	mtc1	zero,$f18
     260:	e4860000 	swc1	$f6,0(a0)
     264:	c4880000 	lwc1	$f8,0(a0)
     268:	460e4281 	sub.s	$f10,$f8,$f14
     26c:	460c5402 	mul.s	$f16,$f10,$f12
     270:	4610903e 	c.le.s	$f18,$f16
     274:	00000000 	nop
     278:	4502000b 	bc1fl	2a8 <Math_ApproxF+0x88>
     27c:	00001025 	move	v0,zero
     280:	03e00008 	jr	ra
     284:	e48e0000 	swc1	$f14,0(a0)
     288:	c4840000 	lwc1	$f4,0(a0)
     28c:	46047032 	c.eq.s	$f14,$f4
     290:	00000000 	nop
     294:	45020004 	bc1fl	2a8 <Math_ApproxF+0x88>
     298:	00001025 	move	v0,zero
     29c:	03e00008 	jr	ra
     2a0:	24020001 	li	v0,1
     2a4:	00001025 	move	v0,zero
     2a8:	03e00008 	jr	ra
     2ac:	00000000 	nop

000002b0 <func_80077A90>:
     2b0:	afa50004 	sw	a1,4(sp)
     2b4:	afa60008 	sw	a2,8(sp)
     2b8:	84820000 	lh	v0,0(a0)
     2bc:	00063400 	sll	a2,a2,0x10
     2c0:	00063403 	sra	a2,a2,0x10
     2c4:	00467021 	addu	t6,v0,a2
     2c8:	a48e0000 	sh	t6,0(a0)
     2cc:	848f0000 	lh	t7,0(a0)
     2d0:	00052c00 	sll	a1,a1,0x10
     2d4:	00052c03 	sra	a1,a1,0x10
     2d8:	00454823 	subu	t1,v0,a1
     2dc:	01e5c023 	subu	t8,t7,a1
     2e0:	0018cc00 	sll	t9,t8,0x10
     2e4:	00095400 	sll	t2,t1,0x10
     2e8:	000a5c03 	sra	t3,t2,0x10
     2ec:	00194403 	sra	t0,t9,0x10
     2f0:	010b0019 	multu	t0,t3
     2f4:	00001025 	move	v0,zero
     2f8:	00006012 	mflo	t4
     2fc:	1d800004 	bgtz	t4,310 <func_80077A90+0x60>
     300:	00000000 	nop
     304:	a4850000 	sh	a1,0(a0)
     308:	03e00008 	jr	ra
     30c:	24020001 	li	v0,1
     310:	03e00008 	jr	ra
     314:	00000000 	nop

00000318 <func_80077AF8>:
     318:	afa50004 	sw	a1,4(sp)
     31c:	afa60008 	sw	a2,8(sp)
     320:	84830000 	lh	v1,0(a0)
     324:	00063400 	sll	a2,a2,0x10
     328:	00063403 	sra	a2,a2,0x10
     32c:	00667021 	addu	t6,v1,a2
     330:	a48e0000 	sh	t6,0(a0)
     334:	848f0000 	lh	t7,0(a0)
     338:	00052c00 	sll	a1,a1,0x10
     33c:	00052c03 	sra	a1,a1,0x10
     340:	00031400 	sll	v0,v1,0x10
     344:	00021403 	sra	v0,v0,0x10
     348:	0045c823 	subu	t9,v0,a1
     34c:	01e5c023 	subu	t8,t7,a1
     350:	03190019 	multu	t8,t9
     354:	00001025 	move	v0,zero
     358:	00004012 	mflo	t0
     35c:	1d000004 	bgtz	t0,370 <func_80077AF8+0x58>
     360:	00000000 	nop
     364:	a4850000 	sh	a1,0(a0)
     368:	03e00008 	jr	ra
     36c:	24020001 	li	v0,1
     370:	03e00008 	jr	ra
     374:	00000000 	nop

00000378 <func_80077B58>:
     378:	afa50004 	sw	a1,4(sp)
     37c:	afa60008 	sw	a2,8(sp)
     380:	84830000 	lh	v1,0(a0)
     384:	00052c00 	sll	a1,a1,0x10
     388:	00052c03 	sra	a1,a1,0x10
     38c:	00063400 	sll	a2,a2,0x10
     390:	00a31023 	subu	v0,a1,v1
     394:	04410004 	bgez	v0,3a8 <func_80077B58+0x30>
     398:	00063403 	sra	a2,a2,0x10
     39c:	00063023 	negu	a2,a2
     3a0:	00063400 	sll	a2,a2,0x10
     3a4:	00063403 	sra	a2,a2,0x10
     3a8:	34018000 	li	at,0x8000
     3ac:	0041082a 	slt	at,v0,at
     3b0:	14200008 	bnez	at,3d4 <func_80077B58+0x5c>
     3b4:	00027023 	negu	t6,v0
     3b8:	00063023 	negu	a2,a2
     3bc:	3c0fffff 	lui	t7,0xffff
     3c0:	00063400 	sll	a2,a2,0x10
     3c4:	35ef0001 	ori	t7,t7,0x1
     3c8:	00063403 	sra	a2,a2,0x10
     3cc:	10000009 	b	3f4 <func_80077B58+0x7c>
     3d0:	01ee1023 	subu	v0,t7,t6
     3d4:	28418001 	slti	at,v0,-32767
     3d8:	10200006 	beqz	at,3f4 <func_80077B58+0x7c>
     3dc:	00000000 	nop
     3e0:	00063023 	negu	a2,a2
     3e4:	3401ffff 	li	at,0xffff
     3e8:	00063400 	sll	a2,a2,0x10
     3ec:	00411021 	addu	v0,v0,at
     3f0:	00063403 	sra	a2,a2,0x10
     3f4:	10c0000a 	beqz	a2,420 <func_80077B58+0xa8>
     3f8:	00000000 	nop
     3fc:	00c20019 	multu	a2,v0
     400:	0066c021 	addu	t8,v1,a2
     404:	a4980000 	sh	t8,0(a0)
     408:	24020001 	li	v0,1
     40c:	0000c812 	mflo	t9
     410:	5f200008 	bgtzl	t9,434 <func_80077B58+0xbc>
     414:	00001025 	move	v0,zero
     418:	03e00008 	jr	ra
     41c:	a4850000 	sh	a1,0(a0)
     420:	54a30004 	bnel	a1,v1,434 <func_80077B58+0xbc>
     424:	00001025 	move	v0,zero
     428:	03e00008 	jr	ra
     42c:	24020001 	li	v0,1
     430:	00001025 	move	v0,zero
     434:	03e00008 	jr	ra
     438:	00000000 	nop

0000043c <func_80077C1C>:
     43c:	44866000 	mtc1	a2,$f12
     440:	c4820000 	lwc1	$f2,0(a0)
     444:	44857000 	mtc1	a1,$f14
     448:	44803000 	mtc1	zero,$f6
     44c:	460c1100 	add.s	$f4,$f2,$f12
     450:	00001025 	move	v0,zero
     454:	460e1401 	sub.s	$f16,$f2,$f14
     458:	e4840000 	swc1	$f4,0(a0)
     45c:	c4880000 	lwc1	$f8,0(a0)
     460:	460e4281 	sub.s	$f10,$f8,$f14
     464:	46105482 	mul.s	$f18,$f10,$f16
     468:	4606903e 	c.le.s	$f18,$f6
     46c:	00000000 	nop
     470:	45000004 	bc1f	484 <func_80077C1C+0x48>
     474:	00000000 	nop
     478:	e48e0000 	swc1	$f14,0(a0)
     47c:	03e00008 	jr	ra
     480:	24020001 	li	v0,1
     484:	03e00008 	jr	ra
     488:	00000000 	nop

0000048c <func_80077C6C>:
     48c:	afa7000c 	sw	a3,12(sp)
     490:	44856000 	mtc1	a1,$f12
     494:	c4800000 	lwc1	$f0,0(a0)
     498:	44867000 	mtc1	a2,$f14
     49c:	44802000 	mtc1	zero,$f4
     4a0:	460c003e 	c.le.s	$f0,$f12
     4a4:	c7a2000c 	lwc1	$f2,12(sp)
     4a8:	45000003 	bc1f	4b8 <func_80077C6C+0x2c>
     4ac:	00000000 	nop
     4b0:	10000001 	b	4b8 <func_80077C6C+0x2c>
     4b4:	46007086 	mov.s	$f2,$f14
     4b8:	46041032 	c.eq.s	$f2,$f4
     4bc:	00000000 	nop
     4c0:	45030013 	bc1tl	510 <func_80077C6C+0x84>
     4c4:	46006032 	c.eq.s	$f12,$f0
     4c8:	4600603c 	c.lt.s	$f12,$f0
     4cc:	24020001 	li	v0,1
     4d0:	45020003 	bc1fl	4e0 <func_80077C6C+0x54>
     4d4:	46020180 	add.s	$f6,$f0,$f2
     4d8:	46001087 	neg.s	$f2,$f2
     4dc:	46020180 	add.s	$f6,$f0,$f2
     4e0:	44809000 	mtc1	zero,$f18
     4e4:	e4860000 	swc1	$f6,0(a0)
     4e8:	c4880000 	lwc1	$f8,0(a0)
     4ec:	460c4281 	sub.s	$f10,$f8,$f12
     4f0:	46025402 	mul.s	$f16,$f10,$f2
     4f4:	4610903e 	c.le.s	$f18,$f16
     4f8:	00000000 	nop
     4fc:	4502000a 	bc1fl	528 <func_80077C6C+0x9c>
     500:	00001025 	move	v0,zero
     504:	03e00008 	jr	ra
     508:	e48c0000 	swc1	$f12,0(a0)
     50c:	46006032 	c.eq.s	$f12,$f0
     510:	00000000 	nop
     514:	45020004 	bc1fl	528 <func_80077C6C+0x9c>
     518:	00001025 	move	v0,zero
     51c:	03e00008 	jr	ra
     520:	24020001 	li	v0,1
     524:	00001025 	move	v0,zero
     528:	03e00008 	jr	ra
     52c:	00000000 	nop

00000530 <func_80077D10>:
     530:	27bdffe8 	addiu	sp,sp,-24
     534:	afbf0014 	sw	ra,20(sp)
     538:	afa5001c 	sw	a1,28(sp)
     53c:	80ce0014 	lb	t6,20(a2)
     540:	80cf0015 	lb	t7,21(a2)
     544:	3c014270 	lui	at,0x4270
     548:	448e2000 	mtc1	t6,$f4
     54c:	448f3000 	mtc1	t7,$f6
     550:	44817000 	mtc1	at,$f14
     554:	468020a0 	cvt.s.w	$f2,$f4
     558:	46803320 	cvt.s.w	$f12,$f6
     55c:	46021202 	mul.s	$f8,$f2,$f2
     560:	00000000 	nop
     564:	460c6282 	mul.s	$f10,$f12,$f12
     568:	460a4000 	add.s	$f0,$f8,$f10
     56c:	46000004 	sqrt.s	$f0,$f0
     570:	4600703c 	c.lt.s	$f14,$f0
     574:	e4800000 	swc1	$f0,0(a0)
     578:	45000003 	bc1f	588 <func_80077D10+0x58>
     57c:	00000000 	nop
     580:	10000003 	b	590 <func_80077D10+0x60>
     584:	e48e0000 	swc1	$f14,0(a0)
     588:	c4900000 	lwc1	$f16,0(a0)
     58c:	e4900000 	swc1	$f16,0(a0)
     590:	0c000000 	jal	0 <Lib_MemSet>
     594:	46001387 	neg.s	$f14,$f2
     598:	8fb8001c 	lw	t8,28(sp)
     59c:	a7020000 	sh	v0,0(t8)
     5a0:	8fbf0014 	lw	ra,20(sp)
     5a4:	27bd0018 	addiu	sp,sp,24
     5a8:	03e00008 	jr	ra
     5ac:	00000000 	nop

000005b0 <Math_Rand_S16Offset>:
     5b0:	27bdffe8 	addiu	sp,sp,-24
     5b4:	afbf0014 	sw	ra,20(sp)
     5b8:	afa40018 	sw	a0,24(sp)
     5bc:	0c000000 	jal	0 <Lib_MemSet>
     5c0:	afa5001c 	sw	a1,28(sp)
     5c4:	87ae001e 	lh	t6,30(sp)
     5c8:	87a9001a 	lh	t1,26(sp)
     5cc:	8fbf0014 	lw	ra,20(sp)
     5d0:	448e2000 	mtc1	t6,$f4
     5d4:	27bd0018 	addiu	sp,sp,24
     5d8:	468021a0 	cvt.s.w	$f6,$f4
     5dc:	46060202 	mul.s	$f8,$f0,$f6
     5e0:	4600428d 	trunc.w.s	$f10,$f8
     5e4:	44085000 	mfc1	t0,$f10
     5e8:	00000000 	nop
     5ec:	01091021 	addu	v0,t0,t1
     5f0:	00021400 	sll	v0,v0,0x10
     5f4:	03e00008 	jr	ra
     5f8:	00021403 	sra	v0,v0,0x10

000005fc <Math_Rand_S16OffsetStride>:
     5fc:	27bdffe8 	addiu	sp,sp,-24
     600:	afbf0014 	sw	ra,20(sp)
     604:	afa40018 	sw	a0,24(sp)
     608:	afa5001c 	sw	a1,28(sp)
     60c:	0c000000 	jal	0 <Lib_MemSet>
     610:	afa60020 	sw	a2,32(sp)
     614:	87ae0022 	lh	t6,34(sp)
     618:	87a9001e 	lh	t1,30(sp)
     61c:	87ab001a 	lh	t3,26(sp)
     620:	448e2000 	mtc1	t6,$f4
     624:	8fbf0014 	lw	ra,20(sp)
     628:	27bd0018 	addiu	sp,sp,24
     62c:	468021a0 	cvt.s.w	$f6,$f4
     630:	46060202 	mul.s	$f8,$f0,$f6
     634:	4600428d 	trunc.w.s	$f10,$f8
     638:	44185000 	mfc1	t8,$f10
     63c:	00000000 	nop
     640:	0018cc00 	sll	t9,t8,0x10
     644:	00194403 	sra	t0,t9,0x10
     648:	01090019 	multu	t0,t1
     64c:	00005012 	mflo	t2
     650:	014b1021 	addu	v0,t2,t3
     654:	00021400 	sll	v0,v0,0x10
     658:	03e00008 	jr	ra
     65c:	00021403 	sra	v0,v0,0x10

00000660 <Math_Vec3f_Copy>:
     660:	c4a40000 	lwc1	$f4,0(a1)
     664:	e4840000 	swc1	$f4,0(a0)
     668:	c4a60004 	lwc1	$f6,4(a1)
     66c:	e4860004 	swc1	$f6,4(a0)
     670:	c4a80008 	lwc1	$f8,8(a1)
     674:	03e00008 	jr	ra
     678:	e4880008 	swc1	$f8,8(a0)

0000067c <Math_Vec3s_ToVec3f>:
     67c:	84ae0000 	lh	t6,0(a1)
     680:	448e2000 	mtc1	t6,$f4
     684:	00000000 	nop
     688:	468021a0 	cvt.s.w	$f6,$f4
     68c:	e4860000 	swc1	$f6,0(a0)
     690:	84af0002 	lh	t7,2(a1)
     694:	448f4000 	mtc1	t7,$f8
     698:	00000000 	nop
     69c:	468042a0 	cvt.s.w	$f10,$f8
     6a0:	e48a0004 	swc1	$f10,4(a0)
     6a4:	84b80004 	lh	t8,4(a1)
     6a8:	44988000 	mtc1	t8,$f16
     6ac:	00000000 	nop
     6b0:	468084a0 	cvt.s.w	$f18,$f16
     6b4:	03e00008 	jr	ra
     6b8:	e4920008 	swc1	$f18,8(a0)

000006bc <Math_Vec3f_Sum>:
     6bc:	c4840000 	lwc1	$f4,0(a0)
     6c0:	c4a60000 	lwc1	$f6,0(a1)
     6c4:	46062200 	add.s	$f8,$f4,$f6
     6c8:	e4c80000 	swc1	$f8,0(a2)
     6cc:	c4b00004 	lwc1	$f16,4(a1)
     6d0:	c48a0004 	lwc1	$f10,4(a0)
     6d4:	46105480 	add.s	$f18,$f10,$f16
     6d8:	e4d20004 	swc1	$f18,4(a2)
     6dc:	c4a60008 	lwc1	$f6,8(a1)
     6e0:	c4840008 	lwc1	$f4,8(a0)
     6e4:	46062200 	add.s	$f8,$f4,$f6
     6e8:	03e00008 	jr	ra
     6ec:	e4c80008 	swc1	$f8,8(a2)

000006f0 <Math_Vec3f_Diff>:
     6f0:	c4840000 	lwc1	$f4,0(a0)
     6f4:	c4a60000 	lwc1	$f6,0(a1)
     6f8:	46062201 	sub.s	$f8,$f4,$f6
     6fc:	e4c80000 	swc1	$f8,0(a2)
     700:	c4b00004 	lwc1	$f16,4(a1)
     704:	c48a0004 	lwc1	$f10,4(a0)
     708:	46105481 	sub.s	$f18,$f10,$f16
     70c:	e4d20004 	swc1	$f18,4(a2)
     710:	c4a60008 	lwc1	$f6,8(a1)
     714:	c4840008 	lwc1	$f4,8(a0)
     718:	46062201 	sub.s	$f8,$f4,$f6
     71c:	03e00008 	jr	ra
     720:	e4c80008 	swc1	$f8,8(a2)

00000724 <Math_Vec3s_DiffToVec3f>:
     724:	84ae0000 	lh	t6,0(a1)
     728:	84cf0000 	lh	t7,0(a2)
     72c:	01cfc023 	subu	t8,t6,t7
     730:	44982000 	mtc1	t8,$f4
     734:	00000000 	nop
     738:	468021a0 	cvt.s.w	$f6,$f4
     73c:	e4860000 	swc1	$f6,0(a0)
     740:	84c80002 	lh	t0,2(a2)
     744:	84b90002 	lh	t9,2(a1)
     748:	03284823 	subu	t1,t9,t0
     74c:	44894000 	mtc1	t1,$f8
     750:	00000000 	nop
     754:	468042a0 	cvt.s.w	$f10,$f8
     758:	e48a0004 	swc1	$f10,4(a0)
     75c:	84cb0004 	lh	t3,4(a2)
     760:	84aa0004 	lh	t2,4(a1)
     764:	014b6023 	subu	t4,t2,t3
     768:	448c8000 	mtc1	t4,$f16
     76c:	00000000 	nop
     770:	468084a0 	cvt.s.w	$f18,$f16
     774:	03e00008 	jr	ra
     778:	e4920008 	swc1	$f18,8(a0)

0000077c <Math_Vec3f_Scale>:
     77c:	44856000 	mtc1	a1,$f12
     780:	c4840000 	lwc1	$f4,0(a0)
     784:	c4880004 	lwc1	$f8,4(a0)
     788:	c4900008 	lwc1	$f16,8(a0)
     78c:	460c2182 	mul.s	$f6,$f4,$f12
     790:	00000000 	nop
     794:	460c4282 	mul.s	$f10,$f8,$f12
     798:	00000000 	nop
     79c:	460c8482 	mul.s	$f18,$f16,$f12
     7a0:	e4860000 	swc1	$f6,0(a0)
     7a4:	e48a0004 	swc1	$f10,4(a0)
     7a8:	03e00008 	jr	ra
     7ac:	e4920008 	swc1	$f18,8(a0)

000007b0 <Math_Vec3f_DistXYZ>:
     7b0:	c4a40000 	lwc1	$f4,0(a1)
     7b4:	c4860000 	lwc1	$f6,0(a0)
     7b8:	c4a80004 	lwc1	$f8,4(a1)
     7bc:	c48a0004 	lwc1	$f10,4(a0)
     7c0:	46062081 	sub.s	$f2,$f4,$f6
     7c4:	c4b00008 	lwc1	$f16,8(a1)
     7c8:	c4920008 	lwc1	$f18,8(a0)
     7cc:	460a4301 	sub.s	$f12,$f8,$f10
     7d0:	46021102 	mul.s	$f4,$f2,$f2
     7d4:	46128381 	sub.s	$f14,$f16,$f18
     7d8:	460c6182 	mul.s	$f6,$f12,$f12
     7dc:	46062200 	add.s	$f8,$f4,$f6
     7e0:	460e7282 	mul.s	$f10,$f14,$f14
     7e4:	460a4000 	add.s	$f0,$f8,$f10
     7e8:	03e00008 	jr	ra
     7ec:	46000004 	sqrt.s	$f0,$f0

000007f0 <Math_Vec3f_DistXYZAndStoreDiff>:
     7f0:	c4a40000 	lwc1	$f4,0(a1)
     7f4:	c4860000 	lwc1	$f6,0(a0)
     7f8:	46062201 	sub.s	$f8,$f4,$f6
     7fc:	e4c80000 	swc1	$f8,0(a2)
     800:	c4900004 	lwc1	$f16,4(a0)
     804:	c4aa0004 	lwc1	$f10,4(a1)
     808:	c4c20000 	lwc1	$f2,0(a2)
     80c:	46105481 	sub.s	$f18,$f10,$f16
     810:	46021282 	mul.s	$f10,$f2,$f2
     814:	e4d20004 	swc1	$f18,4(a2)
     818:	c4860008 	lwc1	$f6,8(a0)
     81c:	c4a40008 	lwc1	$f4,8(a1)
     820:	c4cc0004 	lwc1	$f12,4(a2)
     824:	46062201 	sub.s	$f8,$f4,$f6
     828:	460c6402 	mul.s	$f16,$f12,$f12
     82c:	e4c80008 	swc1	$f8,8(a2)
     830:	c4ce0008 	lwc1	$f14,8(a2)
     834:	460e7102 	mul.s	$f4,$f14,$f14
     838:	46105480 	add.s	$f18,$f10,$f16
     83c:	46049000 	add.s	$f0,$f18,$f4
     840:	03e00008 	jr	ra
     844:	46000004 	sqrt.s	$f0,$f0

00000848 <Math_Vec3f_DistXZ>:
     848:	c4a40000 	lwc1	$f4,0(a1)
     84c:	c4860000 	lwc1	$f6,0(a0)
     850:	c4a80008 	lwc1	$f8,8(a1)
     854:	c48a0008 	lwc1	$f10,8(a0)
     858:	46062081 	sub.s	$f2,$f4,$f6
     85c:	460a4301 	sub.s	$f12,$f8,$f10
     860:	46021402 	mul.s	$f16,$f2,$f2
     864:	00000000 	nop
     868:	460c6482 	mul.s	$f18,$f12,$f12
     86c:	46128000 	add.s	$f0,$f16,$f18
     870:	03e00008 	jr	ra
     874:	46000004 	sqrt.s	$f0,$f0

00000878 <Math_Vec3f_DiffY>:
     878:	c4a40004 	lwc1	$f4,4(a1)
     87c:	c4860004 	lwc1	$f6,4(a0)
     880:	03e00008 	jr	ra
     884:	46062001 	sub.s	$f0,$f4,$f6

00000888 <Math_Vec3f_Yaw>:
     888:	27bdffe8 	addiu	sp,sp,-24
     88c:	afbf0014 	sw	ra,20(sp)
     890:	c4860000 	lwc1	$f6,0(a0)
     894:	c4a40000 	lwc1	$f4,0(a1)
     898:	c48a0008 	lwc1	$f10,8(a0)
     89c:	c4a80008 	lwc1	$f8,8(a1)
     8a0:	46062381 	sub.s	$f14,$f4,$f6
     8a4:	0c000000 	jal	0 <Lib_MemSet>
     8a8:	460a4301 	sub.s	$f12,$f8,$f10
     8ac:	8fbf0014 	lw	ra,20(sp)
     8b0:	27bd0018 	addiu	sp,sp,24
     8b4:	03e00008 	jr	ra
     8b8:	00000000 	nop

000008bc <Math_Vec3f_Pitch>:
     8bc:	27bdffe8 	addiu	sp,sp,-24
     8c0:	afbf0014 	sw	ra,20(sp)
     8c4:	afa40018 	sw	a0,24(sp)
     8c8:	0c000000 	jal	0 <Lib_MemSet>
     8cc:	afa5001c 	sw	a1,28(sp)
     8d0:	8fae0018 	lw	t6,24(sp)
     8d4:	8faf001c 	lw	t7,28(sp)
     8d8:	46000306 	mov.s	$f12,$f0
     8dc:	c5c40004 	lwc1	$f4,4(t6)
     8e0:	c5e60004 	lwc1	$f6,4(t7)
     8e4:	0c000000 	jal	0 <Lib_MemSet>
     8e8:	46062381 	sub.s	$f14,$f4,$f6
     8ec:	8fbf0014 	lw	ra,20(sp)
     8f0:	27bd0018 	addiu	sp,sp,24
     8f4:	03e00008 	jr	ra
     8f8:	00000000 	nop

000008fc <Actor_ProcessInitChain>:
     8fc:	27bdffd8 	addiu	sp,sp,-40
     900:	afb20020 	sw	s2,32(sp)
     904:	afb1001c 	sw	s1,28(sp)
     908:	afb00018 	sw	s0,24(sp)
     90c:	3c120000 	lui	s2,0x0
     910:	00a08025 	move	s0,a1
     914:	00808825 	move	s1,a0
     918:	afbf0024 	sw	ra,36(sp)
     91c:	26520000 	addiu	s2,s2,0
     920:	8e0e0000 	lw	t6,0(s0)
     924:	02202025 	move	a0,s1
     928:	02002825 	move	a1,s0
     92c:	000e7840 	sll	t7,t6,0x1
     930:	000fc702 	srl	t8,t7,0x1c
     934:	0018c880 	sll	t9,t8,0x2
     938:	02594021 	addu	t0,s2,t9
     93c:	8d190000 	lw	t9,0(t0)
     940:	0320f809 	jalr	t9
     944:	00000000 	nop
     948:	8e020000 	lw	v0,0(s0)
     94c:	26100004 	addiu	s0,s0,4
     950:	000217c2 	srl	v0,v0,0x1f
     954:	5440fff3 	bnezl	v0,924 <Actor_ProcessInitChain+0x28>
     958:	8e0e0000 	lw	t6,0(s0)
     95c:	8fbf0024 	lw	ra,36(sp)
     960:	8fb00018 	lw	s0,24(sp)
     964:	8fb1001c 	lw	s1,28(sp)
     968:	8fb20020 	lw	s2,32(sp)
     96c:	03e00008 	jr	ra
     970:	27bd0028 	addiu	sp,sp,40

00000974 <IChain_Apply_u8>:
     974:	94af0000 	lhu	t7,0(a1)
     978:	84ae0002 	lh	t6,2(a1)
     97c:	31f807ff 	andi	t8,t7,0x7ff
     980:	0098c821 	addu	t9,a0,t8
     984:	03e00008 	jr	ra
     988:	a32e0000 	sb	t6,0(t9)

0000098c <IChain_Apply_s8>:
     98c:	94af0000 	lhu	t7,0(a1)
     990:	84ae0002 	lh	t6,2(a1)
     994:	31f807ff 	andi	t8,t7,0x7ff
     998:	0098c821 	addu	t9,a0,t8
     99c:	03e00008 	jr	ra
     9a0:	a32e0000 	sb	t6,0(t9)

000009a4 <IChain_Apply_u16>:
     9a4:	94af0000 	lhu	t7,0(a1)
     9a8:	84ae0002 	lh	t6,2(a1)
     9ac:	31f807ff 	andi	t8,t7,0x7ff
     9b0:	0098c821 	addu	t9,a0,t8
     9b4:	03e00008 	jr	ra
     9b8:	a72e0000 	sh	t6,0(t9)

000009bc <IChain_Apply_s16>:
     9bc:	94af0000 	lhu	t7,0(a1)
     9c0:	84ae0002 	lh	t6,2(a1)
     9c4:	31f807ff 	andi	t8,t7,0x7ff
     9c8:	0098c821 	addu	t9,a0,t8
     9cc:	03e00008 	jr	ra
     9d0:	a72e0000 	sh	t6,0(t9)

000009d4 <IChain_Apply_u32>:
     9d4:	94af0000 	lhu	t7,0(a1)
     9d8:	84ae0002 	lh	t6,2(a1)
     9dc:	31f807ff 	andi	t8,t7,0x7ff
     9e0:	0098c821 	addu	t9,a0,t8
     9e4:	03e00008 	jr	ra
     9e8:	af2e0000 	sw	t6,0(t9)

000009ec <IChain_Apply_s32>:
     9ec:	94af0000 	lhu	t7,0(a1)
     9f0:	84ae0002 	lh	t6,2(a1)
     9f4:	31f807ff 	andi	t8,t7,0x7ff
     9f8:	0098c821 	addu	t9,a0,t8
     9fc:	03e00008 	jr	ra
     a00:	af2e0000 	sw	t6,0(t9)

00000a04 <IChain_Apply_f32>:
     a04:	84ae0002 	lh	t6,2(a1)
     a08:	94af0000 	lhu	t7,0(a1)
     a0c:	448e2000 	mtc1	t6,$f4
     a10:	31f807ff 	andi	t8,t7,0x7ff
     a14:	0098c821 	addu	t9,a0,t8
     a18:	468021a0 	cvt.s.w	$f6,$f4
     a1c:	03e00008 	jr	ra
     a20:	e7260000 	swc1	$f6,0(t9)

00000a24 <IChain_Apply_f32div1000>:
     a24:	84ae0002 	lh	t6,2(a1)
     a28:	3c01447a 	lui	at,0x447a
     a2c:	44814000 	mtc1	at,$f8
     a30:	448e2000 	mtc1	t6,$f4
     a34:	94af0000 	lhu	t7,0(a1)
     a38:	468021a0 	cvt.s.w	$f6,$f4
     a3c:	31f807ff 	andi	t8,t7,0x7ff
     a40:	0098c821 	addu	t9,a0,t8
     a44:	46083283 	div.s	$f10,$f6,$f8
     a48:	03e00008 	jr	ra
     a4c:	e72a0000 	swc1	$f10,0(t9)

00000a50 <IChain_Apply_Vec3f>:
     a50:	84b80002 	lh	t8,2(a1)
     a54:	94ae0000 	lhu	t6,0(a1)
     a58:	44982000 	mtc1	t8,$f4
     a5c:	31cf07ff 	andi	t7,t6,0x7ff
     a60:	01e41021 	addu	v0,t7,a0
     a64:	46802020 	cvt.s.w	$f0,$f4
     a68:	e4400008 	swc1	$f0,8(v0)
     a6c:	e4400004 	swc1	$f0,4(v0)
     a70:	03e00008 	jr	ra
     a74:	e4400000 	swc1	$f0,0(v0)

00000a78 <IChain_Apply_Vec3fdiv1000>:
     a78:	27bdffe0 	addiu	sp,sp,-32
     a7c:	afbf0014 	sw	ra,20(sp)
     a80:	afa40020 	sw	a0,32(sp)
     a84:	afa50024 	sw	a1,36(sp)
     a88:	00a07025 	move	t6,a1
     a8c:	85c80002 	lh	t0,2(t6)
     a90:	3c01447a 	lui	at,0x447a
     a94:	44814000 	mtc1	at,$f8
     a98:	44882000 	mtc1	t0,$f4
     a9c:	94af0000 	lhu	t7,0(a1)
     aa0:	468021a0 	cvt.s.w	$f6,$f4
     aa4:	31f807ff 	andi	t8,t7,0x7ff
     aa8:	03042821 	addu	a1,t8,a0
     aac:	3c040000 	lui	a0,0x0
     ab0:	24840000 	addiu	a0,a0,0
     ab4:	afa5001c 	sw	a1,28(sp)
     ab8:	46083283 	div.s	$f10,$f6,$f8
     abc:	46005421 	cvt.d.s	$f16,$f10
     ac0:	44078000 	mfc1	a3,$f16
     ac4:	44068800 	mfc1	a2,$f17
     ac8:	0c000000 	jal	0 <Lib_MemSet>
     acc:	00000000 	nop
     ad0:	8fa90024 	lw	t1,36(sp)
     ad4:	3c01447a 	lui	at,0x447a
     ad8:	44813000 	mtc1	at,$f6
     adc:	852a0002 	lh	t2,2(t1)
     ae0:	8fa5001c 	lw	a1,28(sp)
     ae4:	448a9000 	mtc1	t2,$f18
     ae8:	00000000 	nop
     aec:	46809120 	cvt.s.w	$f4,$f18
     af0:	46062003 	div.s	$f0,$f4,$f6
     af4:	e4a00008 	swc1	$f0,8(a1)
     af8:	e4a00004 	swc1	$f0,4(a1)
     afc:	e4a00000 	swc1	$f0,0(a1)
     b00:	8fbf0014 	lw	ra,20(sp)
     b04:	27bd0020 	addiu	sp,sp,32
     b08:	03e00008 	jr	ra
     b0c:	00000000 	nop

00000b10 <IChain_Apply_Vec3s>:
     b10:	94ae0000 	lhu	t6,0(a1)
     b14:	84a30002 	lh	v1,2(a1)
     b18:	31cf07ff 	andi	t7,t6,0x7ff
     b1c:	01e41021 	addu	v0,t7,a0
     b20:	a4430004 	sh	v1,4(v0)
     b24:	a4430002 	sh	v1,2(v0)
     b28:	03e00008 	jr	ra
     b2c:	a4430000 	sh	v1,0(v0)

00000b30 <Math_SmoothScaleMaxMinF>:
     b30:	afa7000c 	sw	a3,12(sp)
     b34:	44856000 	mtc1	a1,$f12
     b38:	c4820000 	lwc1	$f2,0(a0)
     b3c:	44867000 	mtc1	a2,$f14
     b40:	46026032 	c.eq.s	$f12,$f2
     b44:	00000000 	nop
     b48:	4503003a 	bc1tl	c34 <Math_SmoothScaleMaxMinF+0x104>
     b4c:	46026001 	sub.s	$f0,$f12,$f2
     b50:	46026101 	sub.s	$f4,$f12,$f2
     b54:	c7b00010 	lwc1	$f16,16(sp)
     b58:	c7a6000c 	lwc1	$f6,12(sp)
     b5c:	460e2002 	mul.s	$f0,$f4,$f14
     b60:	4600803e 	c.le.s	$f16,$f0
     b64:	00000000 	nop
     b68:	45030007 	bc1tl	b88 <Math_SmoothScaleMaxMinF+0x58>
     b6c:	4600303c 	c.lt.s	$f6,$f0
     b70:	46008387 	neg.s	$f14,$f16
     b74:	460e003e 	c.le.s	$f0,$f14
     b78:	00000000 	nop
     b7c:	45020012 	bc1fl	bc8 <Math_SmoothScaleMaxMinF+0x98>
     b80:	4610003c 	c.lt.s	$f0,$f16
     b84:	4600303c 	c.lt.s	$f6,$f0
     b88:	c7ae000c 	lwc1	$f14,12(sp)
     b8c:	45000002 	bc1f	b98 <Math_SmoothScaleMaxMinF+0x68>
     b90:	46007387 	neg.s	$f14,$f14
     b94:	46003006 	mov.s	$f0,$f6
     b98:	460e003c 	c.lt.s	$f0,$f14
     b9c:	00000000 	nop
     ba0:	45020003 	bc1fl	bb0 <Math_SmoothScaleMaxMinF+0x80>
     ba4:	46001200 	add.s	$f8,$f2,$f0
     ba8:	46007006 	mov.s	$f0,$f14
     bac:	46001200 	add.s	$f8,$f2,$f0
     bb0:	e4880000 	swc1	$f8,0(a0)
     bb4:	c4820000 	lwc1	$f2,0(a0)
     bb8:	46026001 	sub.s	$f0,$f12,$f2
     bbc:	03e00008 	jr	ra
     bc0:	46000005 	abs.s	$f0,$f0
     bc4:	4610003c 	c.lt.s	$f0,$f16
     bc8:	00000000 	nop
     bcc:	4502000c 	bc1fl	c00 <Math_SmoothScaleMaxMinF+0xd0>
     bd0:	4600703c 	c.lt.s	$f14,$f0
     bd4:	46101280 	add.s	$f10,$f2,$f16
     bd8:	46008006 	mov.s	$f0,$f16
     bdc:	e48a0000 	swc1	$f10,0(a0)
     be0:	c4820000 	lwc1	$f2,0(a0)
     be4:	4602603c 	c.lt.s	$f12,$f2
     be8:	00000000 	nop
     bec:	45020004 	bc1fl	c00 <Math_SmoothScaleMaxMinF+0xd0>
     bf0:	4600703c 	c.lt.s	$f14,$f0
     bf4:	e48c0000 	swc1	$f12,0(a0)
     bf8:	c4820000 	lwc1	$f2,0(a0)
     bfc:	4600703c 	c.lt.s	$f14,$f0
     c00:	00000000 	nop
     c04:	4502000b 	bc1fl	c34 <Math_SmoothScaleMaxMinF+0x104>
     c08:	46026001 	sub.s	$f0,$f12,$f2
     c0c:	460e1480 	add.s	$f18,$f2,$f14
     c10:	e4920000 	swc1	$f18,0(a0)
     c14:	c4820000 	lwc1	$f2,0(a0)
     c18:	460c103c 	c.lt.s	$f2,$f12
     c1c:	00000000 	nop
     c20:	45020004 	bc1fl	c34 <Math_SmoothScaleMaxMinF+0x104>
     c24:	46026001 	sub.s	$f0,$f12,$f2
     c28:	e48c0000 	swc1	$f12,0(a0)
     c2c:	c4820000 	lwc1	$f2,0(a0)
     c30:	46026001 	sub.s	$f0,$f12,$f2
     c34:	03e00008 	jr	ra
     c38:	46000005 	abs.s	$f0,$f0

00000c3c <Math_SmoothScaleMaxF>:
     c3c:	afa7000c 	sw	a3,12(sp)
     c40:	44856000 	mtc1	a1,$f12
     c44:	c4800000 	lwc1	$f0,0(a0)
     c48:	44867000 	mtc1	a2,$f14
     c4c:	46006032 	c.eq.s	$f12,$f0
     c50:	00000000 	nop
     c54:	45010013 	bc1t	ca4 <Math_SmoothScaleMaxF+0x68>
     c58:	00000000 	nop
     c5c:	46006101 	sub.s	$f4,$f12,$f0
     c60:	c7a6000c 	lwc1	$f6,12(sp)
     c64:	c7ac000c 	lwc1	$f12,12(sp)
     c68:	460e2082 	mul.s	$f2,$f4,$f14
     c6c:	4602303c 	c.lt.s	$f6,$f2
     c70:	00000000 	nop
     c74:	45020004 	bc1fl	c88 <Math_SmoothScaleMaxF+0x4c>
     c78:	46006307 	neg.s	$f12,$f12
     c7c:	10000007 	b	c9c <Math_SmoothScaleMaxF+0x60>
     c80:	46003086 	mov.s	$f2,$f6
     c84:	46006307 	neg.s	$f12,$f12
     c88:	460c103c 	c.lt.s	$f2,$f12
     c8c:	00000000 	nop
     c90:	45020003 	bc1fl	ca0 <Math_SmoothScaleMaxF+0x64>
     c94:	46020200 	add.s	$f8,$f0,$f2
     c98:	46006086 	mov.s	$f2,$f12
     c9c:	46020200 	add.s	$f8,$f0,$f2
     ca0:	e4880000 	swc1	$f8,0(a0)
     ca4:	03e00008 	jr	ra
     ca8:	00000000 	nop

00000cac <Math_SmoothDownscaleMaxF>:
     cac:	44856000 	mtc1	a1,$f12
     cb0:	c4820000 	lwc1	$f2,0(a0)
     cb4:	44867000 	mtc1	a2,$f14
     cb8:	460c1002 	mul.s	$f0,$f2,$f12
     cbc:	4600703c 	c.lt.s	$f14,$f0
     cc0:	00000000 	nop
     cc4:	45020004 	bc1fl	cd8 <Math_SmoothDownscaleMaxF+0x2c>
     cc8:	46007307 	neg.s	$f12,$f14
     ccc:	10000007 	b	cec <Math_SmoothDownscaleMaxF+0x40>
     cd0:	46007006 	mov.s	$f0,$f14
     cd4:	46007307 	neg.s	$f12,$f14
     cd8:	460c003c 	c.lt.s	$f0,$f12
     cdc:	00000000 	nop
     ce0:	45020003 	bc1fl	cf0 <Math_SmoothDownscaleMaxF+0x44>
     ce4:	46001101 	sub.s	$f4,$f2,$f0
     ce8:	46006006 	mov.s	$f0,$f12
     cec:	46001101 	sub.s	$f4,$f2,$f0
     cf0:	03e00008 	jr	ra
     cf4:	e4840000 	swc1	$f4,0(a0)

00000cf8 <func_800784D8>:
     cf8:	27bdfff0 	addiu	sp,sp,-16
     cfc:	afa60018 	sw	a2,24(sp)
     d00:	44856000 	mtc1	a1,$f12
     d04:	c4800000 	lwc1	$f0,0(a0)
     d08:	44801000 	mtc1	zero,$f2
     d0c:	44877000 	mtc1	a3,$f14
     d10:	46006032 	c.eq.s	$f12,$f0
     d14:	3c014334 	lui	at,0x4334
     d18:	46006481 	sub.s	$f18,$f12,$f0
     d1c:	46001406 	mov.s	$f16,$f2
     d20:	45030050 	bc1tl	e64 <func_800784D8+0x16c>
     d24:	3c0143b4 	lui	at,0x43b4
     d28:	44812000 	mtc1	at,$f4
     d2c:	3c01c334 	lui	at,0xc334
     d30:	4612203c 	c.lt.s	$f4,$f18
     d34:	c7a40018 	lwc1	$f4,24(sp)
     d38:	45020008 	bc1fl	d5c <func_800784D8+0x64>
     d3c:	44814000 	mtc1	at,$f8
     d40:	3c0143b4 	lui	at,0x43b4
     d44:	44813000 	mtc1	at,$f6
     d48:	00000000 	nop
     d4c:	46123481 	sub.s	$f18,$f6,$f18
     d50:	1000000a 	b	d7c <func_800784D8+0x84>
     d54:	46009487 	neg.s	$f18,$f18
     d58:	44814000 	mtc1	at,$f8
     d5c:	3c0143b4 	lui	at,0x43b4
     d60:	4608903c 	c.lt.s	$f18,$f8
     d64:	00000000 	nop
     d68:	45000004 	bc1f	d7c <func_800784D8+0x84>
     d6c:	00000000 	nop
     d70:	44815000 	mtc1	at,$f10
     d74:	00000000 	nop
     d78:	46125480 	add.s	$f18,$f10,$f18
     d7c:	46049182 	mul.s	$f6,$f18,$f4
     d80:	c7aa0020 	lwc1	$f10,32(sp)
     d84:	e7a60000 	swc1	$f6,0(sp)
     d88:	c7a80000 	lwc1	$f8,0(sp)
     d8c:	c7a40000 	lwc1	$f4,0(sp)
     d90:	4608503e 	c.le.s	$f10,$f8
     d94:	46004406 	mov.s	$f16,$f8
     d98:	45030008 	bc1tl	dbc <func_800784D8+0xc4>
     d9c:	4604703c 	c.lt.s	$f14,$f4
     da0:	46005487 	neg.s	$f18,$f10
     da4:	c7aa0000 	lwc1	$f10,0(sp)
     da8:	4612403e 	c.le.s	$f8,$f18
     dac:	c7a80020 	lwc1	$f8,32(sp)
     db0:	45020010 	bc1fl	df4 <func_800784D8+0xfc>
     db4:	4608503c 	c.lt.s	$f10,$f8
     db8:	4604703c 	c.lt.s	$f14,$f4
     dbc:	46007307 	neg.s	$f12,$f14
     dc0:	45020003 	bc1fl	dd0 <func_800784D8+0xd8>
     dc4:	460c803c 	c.lt.s	$f16,$f12
     dc8:	46007406 	mov.s	$f16,$f14
     dcc:	460c803c 	c.lt.s	$f16,$f12
     dd0:	00000000 	nop
     dd4:	45020003 	bc1fl	de4 <func_800784D8+0xec>
     dd8:	46100180 	add.s	$f6,$f0,$f16
     ddc:	46006406 	mov.s	$f16,$f12
     de0:	46100180 	add.s	$f6,$f0,$f16
     de4:	e4860000 	swc1	$f6,0(a0)
     de8:	1000001d 	b	e60 <func_800784D8+0x168>
     dec:	c4800000 	lwc1	$f0,0(a0)
     df0:	4608503c 	c.lt.s	$f10,$f8
     df4:	00000000 	nop
     df8:	4502000c 	bc1fl	e2c <func_800784D8+0x134>
     dfc:	4610903c 	c.lt.s	$f18,$f16
     e00:	46080100 	add.s	$f4,$f0,$f8
     e04:	46004406 	mov.s	$f16,$f8
     e08:	e4840000 	swc1	$f4,0(a0)
     e0c:	c4800000 	lwc1	$f0,0(a0)
     e10:	4600603c 	c.lt.s	$f12,$f0
     e14:	00000000 	nop
     e18:	45020004 	bc1fl	e2c <func_800784D8+0x134>
     e1c:	4610903c 	c.lt.s	$f18,$f16
     e20:	e48c0000 	swc1	$f12,0(a0)
     e24:	c4800000 	lwc1	$f0,0(a0)
     e28:	4610903c 	c.lt.s	$f18,$f16
     e2c:	00000000 	nop
     e30:	4502000c 	bc1fl	e64 <func_800784D8+0x16c>
     e34:	3c0143b4 	lui	at,0x43b4
     e38:	46120180 	add.s	$f6,$f0,$f18
     e3c:	46009406 	mov.s	$f16,$f18
     e40:	e4860000 	swc1	$f6,0(a0)
     e44:	c4800000 	lwc1	$f0,0(a0)
     e48:	460c003c 	c.lt.s	$f0,$f12
     e4c:	00000000 	nop
     e50:	45020004 	bc1fl	e64 <func_800784D8+0x16c>
     e54:	3c0143b4 	lui	at,0x43b4
     e58:	e48c0000 	swc1	$f12,0(a0)
     e5c:	c4800000 	lwc1	$f0,0(a0)
     e60:	3c0143b4 	lui	at,0x43b4
     e64:	44815000 	mtc1	at,$f10
     e68:	3c0143b4 	lui	at,0x43b4
     e6c:	4600503e 	c.le.s	$f10,$f0
     e70:	00000000 	nop
     e74:	45020007 	bc1fl	e94 <func_800784D8+0x19c>
     e78:	4602003c 	c.lt.s	$f0,$f2
     e7c:	44814000 	mtc1	at,$f8
     e80:	00000000 	nop
     e84:	46080101 	sub.s	$f4,$f0,$f8
     e88:	e4840000 	swc1	$f4,0(a0)
     e8c:	c4800000 	lwc1	$f0,0(a0)
     e90:	4602003c 	c.lt.s	$f0,$f2
     e94:	3c0143b4 	lui	at,0x43b4
     e98:	45020006 	bc1fl	eb4 <func_800784D8+0x1bc>
     e9c:	46008006 	mov.s	$f0,$f16
     ea0:	44813000 	mtc1	at,$f6
     ea4:	00000000 	nop
     ea8:	46060280 	add.s	$f10,$f0,$f6
     eac:	e48a0000 	swc1	$f10,0(a0)
     eb0:	46008006 	mov.s	$f0,$f16
     eb4:	03e00008 	jr	ra
     eb8:	27bd0010 	addiu	sp,sp,16

00000ebc <Math_SmoothScaleMaxMinS>:
     ebc:	afa50004 	sw	a1,4(sp)
     ec0:	afa60008 	sw	a2,8(sp)
     ec4:	afa7000c 	sw	a3,12(sp)
     ec8:	84880000 	lh	t0,0(a0)
     ecc:	00052c00 	sll	a1,a1,0x10
     ed0:	00052c03 	sra	a1,a1,0x10
     ed4:	00a81823 	subu	v1,a1,t0
     ed8:	00063400 	sll	a2,a2,0x10
     edc:	00031c00 	sll	v1,v1,0x10
     ee0:	00063403 	sra	a2,a2,0x10
     ee4:	10a8003b 	beq	a1,t0,fd4 <Math_SmoothScaleMaxMinS+0x118>
     ee8:	00031c03 	sra	v1,v1,0x10
     eec:	0066001a 	div	zero,v1,a2
     ef0:	87a90012 	lh	t1,18(sp)
     ef4:	14c00002 	bnez	a2,f00 <Math_SmoothScaleMaxMinS+0x44>
     ef8:	00000000 	nop
     efc:	0007000d 	break	0x7
     f00:	2401ffff 	li	at,-1
     f04:	14c10004 	bne	a2,at,f18 <Math_SmoothScaleMaxMinS+0x5c>
     f08:	3c018000 	lui	at,0x8000
     f0c:	14610002 	bne	v1,at,f18 <Math_SmoothScaleMaxMinS+0x5c>
     f10:	00000000 	nop
     f14:	0006000d 	break	0x6
     f18:	00003812 	mflo	a3
     f1c:	00075400 	sll	t2,a3,0x10
     f20:	000a5403 	sra	t2,t2,0x10
     f24:	00071400 	sll	v0,a3,0x10
     f28:	012a082a 	slt	at,t1,t2
     f2c:	14200005 	bnez	at,f44 <Math_SmoothScaleMaxMinS+0x88>
     f30:	00021403 	sra	v0,v0,0x10
     f34:	00097023 	negu	t6,t1
     f38:	014e082a 	slt	at,t2,t6
     f3c:	10200010 	beqz	at,f80 <Math_SmoothScaleMaxMinS+0xc4>
     f40:	00000000 	nop
     f44:	87af000e 	lh	t7,14(sp)
     f48:	87a5000e 	lh	a1,14(sp)
     f4c:	01ea082a 	slt	at,t7,t2
     f50:	10200002 	beqz	at,f5c <Math_SmoothScaleMaxMinS+0xa0>
     f54:	00052823 	negu	a1,a1
     f58:	01e01025 	move	v0,t7
     f5c:	0045082a 	slt	at,v0,a1
     f60:	50200004 	beqzl	at,f74 <Math_SmoothScaleMaxMinS+0xb8>
     f64:	0102c021 	addu	t8,t0,v0
     f68:	00051400 	sll	v0,a1,0x10
     f6c:	00021403 	sra	v0,v0,0x10
     f70:	0102c021 	addu	t8,t0,v0
     f74:	a4980000 	sh	t8,0(a0)
     f78:	03e00008 	jr	ra
     f7c:	00601025 	move	v0,v1
     f80:	0460000c 	bltz	v1,fb4 <Math_SmoothScaleMaxMinS+0xf8>
     f84:	01097823 	subu	t7,t0,t1
     f88:	0109c821 	addu	t9,t0,t1
     f8c:	a4990000 	sh	t9,0(a0)
     f90:	848b0000 	lh	t3,0(a0)
     f94:	00601025 	move	v0,v1
     f98:	00ab6023 	subu	t4,a1,t3
     f9c:	000c6c00 	sll	t5,t4,0x10
     fa0:	000d7403 	sra	t6,t5,0x10
     fa4:	1dc0000b 	bgtz	t6,fd4 <Math_SmoothScaleMaxMinS+0x118>
     fa8:	00000000 	nop
     fac:	03e00008 	jr	ra
     fb0:	a4850000 	sh	a1,0(a0)
     fb4:	a48f0000 	sh	t7,0(a0)
     fb8:	84980000 	lh	t8,0(a0)
     fbc:	00b8c823 	subu	t9,a1,t8
     fc0:	00195c00 	sll	t3,t9,0x10
     fc4:	000b6403 	sra	t4,t3,0x10
     fc8:	05800002 	bltz	t4,fd4 <Math_SmoothScaleMaxMinS+0x118>
     fcc:	00000000 	nop
     fd0:	a4850000 	sh	a1,0(a0)
     fd4:	03e00008 	jr	ra
     fd8:	00601025 	move	v0,v1

00000fdc <Math_SmoothScaleMaxS>:
     fdc:	afa50004 	sw	a1,4(sp)
     fe0:	afa60008 	sw	a2,8(sp)
     fe4:	afa7000c 	sw	a3,12(sp)
     fe8:	84830000 	lh	v1,0(a0)
     fec:	00052c00 	sll	a1,a1,0x10
     ff0:	00052c03 	sra	a1,a1,0x10
     ff4:	00a31023 	subu	v0,a1,v1
     ff8:	00021400 	sll	v0,v0,0x10
     ffc:	00021403 	sra	v0,v0,0x10
    1000:	00063400 	sll	a2,a2,0x10
    1004:	00063403 	sra	a2,a2,0x10
    1008:	0046001a 	div	zero,v0,a2
    100c:	00073c00 	sll	a3,a3,0x10
    1010:	00073c03 	sra	a3,a3,0x10
    1014:	14c00002 	bnez	a2,1020 <Math_SmoothScaleMaxS+0x44>
    1018:	00000000 	nop
    101c:	0007000d 	break	0x7
    1020:	2401ffff 	li	at,-1
    1024:	14c10004 	bne	a2,at,1038 <Math_SmoothScaleMaxS+0x5c>
    1028:	3c018000 	lui	at,0x8000
    102c:	14410002 	bne	v0,at,1038 <Math_SmoothScaleMaxS+0x5c>
    1030:	00000000 	nop
    1034:	0006000d 	break	0x6
    1038:	00001012 	mflo	v0
    103c:	00021400 	sll	v0,v0,0x10
    1040:	00021403 	sra	v0,v0,0x10
    1044:	00e2082a 	slt	at,a3,v0
    1048:	10200004 	beqz	at,105c <Math_SmoothScaleMaxS+0x80>
    104c:	00077823 	negu	t7,a3
    1050:	00677021 	addu	t6,v1,a3
    1054:	03e00008 	jr	ra
    1058:	a48e0000 	sh	t6,0(a0)
    105c:	004f082a 	slt	at,v0,t7
    1060:	10200004 	beqz	at,1074 <Math_SmoothScaleMaxS+0x98>
    1064:	0062c821 	addu	t9,v1,v0
    1068:	0067c023 	subu	t8,v1,a3
    106c:	03e00008 	jr	ra
    1070:	a4980000 	sh	t8,0(a0)
    1074:	a4990000 	sh	t9,0(a0)
    1078:	03e00008 	jr	ra
    107c:	00000000 	nop

00001080 <Color_RGBA8_Copy>:
    1080:	90ae0000 	lbu	t6,0(a1)
    1084:	a08e0000 	sb	t6,0(a0)
    1088:	90af0001 	lbu	t7,1(a1)
    108c:	a08f0001 	sb	t7,1(a0)
    1090:	90b80002 	lbu	t8,2(a1)
    1094:	a0980002 	sb	t8,2(a0)
    1098:	90b90003 	lbu	t9,3(a1)
    109c:	03e00008 	jr	ra
    10a0:	a0990003 	sb	t9,3(a0)

000010a4 <func_80078884>:
    10a4:	27bdffe0 	addiu	sp,sp,-32
    10a8:	3c070000 	lui	a3,0x0
    10ac:	3c0e0000 	lui	t6,0x0
    10b0:	24e70000 	addiu	a3,a3,0
    10b4:	afbf001c 	sw	ra,28(sp)
    10b8:	afa40020 	sw	a0,32(sp)
    10bc:	25ce0000 	addiu	t6,t6,0
    10c0:	3c050000 	lui	a1,0x0
    10c4:	3084ffff 	andi	a0,a0,0xffff
    10c8:	24a50000 	addiu	a1,a1,0
    10cc:	afae0014 	sw	t6,20(sp)
    10d0:	afa70010 	sw	a3,16(sp)
    10d4:	0c000000 	jal	0 <Lib_MemSet>
    10d8:	24060004 	li	a2,4
    10dc:	8fbf001c 	lw	ra,28(sp)
    10e0:	27bd0020 	addiu	sp,sp,32
    10e4:	03e00008 	jr	ra
    10e8:	00000000 	nop

000010ec <func_800788CC>:
    10ec:	27bdffe0 	addiu	sp,sp,-32
    10f0:	3c070000 	lui	a3,0x0
    10f4:	3c0e0000 	lui	t6,0x0
    10f8:	24e70000 	addiu	a3,a3,0
    10fc:	afbf001c 	sw	ra,28(sp)
    1100:	afa40020 	sw	a0,32(sp)
    1104:	25ce0000 	addiu	t6,t6,0
    1108:	3c050000 	lui	a1,0x0
    110c:	3084ffff 	andi	a0,a0,0xffff
    1110:	24a50000 	addiu	a1,a1,0
    1114:	afae0014 	sw	t6,20(sp)
    1118:	afa70010 	sw	a3,16(sp)
    111c:	0c000000 	jal	0 <Lib_MemSet>
    1120:	24060004 	li	a2,4
    1124:	8fbf001c 	lw	ra,28(sp)
    1128:	27bd0020 	addiu	sp,sp,32
    112c:	03e00008 	jr	ra
    1130:	00000000 	nop

00001134 <func_80078914>:
    1134:	27bdffe0 	addiu	sp,sp,-32
    1138:	afa50024 	sw	a1,36(sp)
    113c:	3c070000 	lui	a3,0x0
    1140:	3c0e0000 	lui	t6,0x0
    1144:	24e70000 	addiu	a3,a3,0
    1148:	00802825 	move	a1,a0
    114c:	afbf001c 	sw	ra,28(sp)
    1150:	afa40020 	sw	a0,32(sp)
    1154:	25ce0000 	addiu	t6,t6,0
    1158:	afae0014 	sw	t6,20(sp)
    115c:	97a40026 	lhu	a0,38(sp)
    1160:	afa70010 	sw	a3,16(sp)
    1164:	0c000000 	jal	0 <Lib_MemSet>
    1168:	24060004 	li	a2,4
    116c:	8fbf001c 	lw	ra,28(sp)
    1170:	27bd0020 	addiu	sp,sp,32
    1174:	03e00008 	jr	ra
    1178:	00000000 	nop
    117c:	00000000 	nop
