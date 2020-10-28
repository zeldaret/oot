
build/src/code/z_bgcheck.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80038600>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0034 	sw	ra,52(sp)
       8:	afb00030 	sw	s0,48(sp)
       c:	afa5003c 	sw	a1,60(sp)
      10:	afa60040 	sw	a2,64(sp)
      14:	3c010000 	lui	at,0x0
      18:	c4220000 	lwc1	$f2,0(at)
      1c:	c4800000 	lwc1	$f0,0(a0)
      20:	00808025 	move	s0,a0
      24:	3c010000 	lui	at,0x0
      28:	4600103e 	c.le.s	$f2,$f0
      2c:	00000000 	nop
      30:	45010017 	bc1t	90 <func_80038600+0x90>
      34:	00000000 	nop
      38:	c42c0000 	lwc1	$f12,0(at)
      3c:	460c003e 	c.le.s	$f0,$f12
      40:	00000000 	nop
      44:	45010012 	bc1t	90 <func_80038600+0x90>
      48:	00000000 	nop
      4c:	c4800004 	lwc1	$f0,4(a0)
      50:	4600103e 	c.le.s	$f2,$f0
      54:	00000000 	nop
      58:	4501000d 	bc1t	90 <func_80038600+0x90>
      5c:	00000000 	nop
      60:	460c003e 	c.le.s	$f0,$f12
      64:	00000000 	nop
      68:	45010009 	bc1t	90 <func_80038600+0x90>
      6c:	00000000 	nop
      70:	c4800008 	lwc1	$f0,8(a0)
      74:	4600103e 	c.le.s	$f2,$f0
      78:	00000000 	nop
      7c:	45010004 	bc1t	90 <func_80038600+0x90>
      80:	00000000 	nop
      84:	460c003e 	c.le.s	$f0,$f12
      88:	00001025 	move	v0,zero
      8c:	45000019 	bc1f	f4 <func_80038600+0xf4>
      90:	3c040000 	lui	a0,0x0
      94:	0c000000 	jal	0 <func_80038600>
      98:	24840000 	addiu	a0,a0,0
      9c:	c6080004 	lwc1	$f8,4(s0)
      a0:	c6040000 	lwc1	$f4,0(s0)
      a4:	8fae003c 	lw	t6,60(sp)
      a8:	460042a1 	cvt.d.s	$f10,$f8
      ac:	460021a1 	cvt.d.s	$f6,$f4
      b0:	f7aa0010 	sdc1	$f10,16(sp)
      b4:	c6100008 	lwc1	$f16,8(s0)
      b8:	8faf0040 	lw	t7,64(sp)
      bc:	44073000 	mfc1	a3,$f6
      c0:	460084a1 	cvt.d.s	$f18,$f16
      c4:	44063800 	mfc1	a2,$f7
      c8:	3c040000 	lui	a0,0x0
      cc:	24840000 	addiu	a0,a0,0
      d0:	f7b20018 	sdc1	$f18,24(sp)
      d4:	afae0020 	sw	t6,32(sp)
      d8:	0c000000 	jal	0 <func_80038600>
      dc:	afaf0024 	sw	t7,36(sp)
      e0:	3c040000 	lui	a0,0x0
      e4:	0c000000 	jal	0 <func_80038600>
      e8:	24840000 	addiu	a0,a0,0
      ec:	10000001 	b	f4 <func_80038600+0xf4>
      f0:	24020001 	li	v0,1
      f4:	8fbf0034 	lw	ra,52(sp)
      f8:	8fb00030 	lw	s0,48(sp)
      fc:	27bd0038 	addiu	sp,sp,56
     100:	03e00008 	jr	ra
     104:	00000000 	nop

00000108 <func_80038708>:
     108:	afa60008 	sw	a2,8(sp)
     10c:	84ae0000 	lh	t6,0(a1)
     110:	a4860002 	sh	a2,2(a0)
     114:	03e00008 	jr	ra
     118:	a48e0000 	sh	t6,0(a0)

0000011c <func_8003871C>:
     11c:	340effff 	li	t6,0xffff
     120:	03e00008 	jr	ra
     124:	a48e0000 	sh	t6,0(a0)

00000128 <func_80038728>:
     128:	27bdffe0 	addiu	sp,sp,-32
     12c:	afbf0014 	sw	ra,20(sp)
     130:	afa40020 	sw	a0,32(sp)
     134:	afa50024 	sw	a1,36(sp)
     138:	0c000000 	jal	0 <func_80038600>
     13c:	afa60028 	sw	a2,40(sp)
     140:	8fae0020 	lw	t6,32(sp)
     144:	a7a2001e 	sh	v0,30(sp)
     148:	8fb90024 	lw	t9,36(sp)
     14c:	8dcf0004 	lw	t7,4(t6)
     150:	0002c080 	sll	t8,v0,0x2
     154:	8fa50028 	lw	a1,40(sp)
     158:	97260000 	lhu	a2,0(t9)
     15c:	0c000000 	jal	0 <func_80038600>
     160:	01f82021 	addu	a0,t7,t8
     164:	97a8001e 	lhu	t0,30(sp)
     168:	8fa90024 	lw	t1,36(sp)
     16c:	a5280000 	sh	t0,0(t1)
     170:	8fbf0014 	lw	ra,20(sp)
     174:	27bd0020 	addiu	sp,sp,32
     178:	03e00008 	jr	ra
     17c:	00000000 	nop

00000180 <func_80038780>:
     180:	27bdffe0 	addiu	sp,sp,-32
     184:	afbf0014 	sw	ra,20(sp)
     188:	afa40020 	sw	a0,32(sp)
     18c:	afa50024 	sw	a1,36(sp)
     190:	0c000000 	jal	0 <func_80038600>
     194:	afa60028 	sw	a2,40(sp)
     198:	3401ffff 	li	at,0xffff
     19c:	14410007 	bne	v0,at,1bc <func_80038780+0x3c>
     1a0:	a7a2001e 	sh	v0,30(sp)
     1a4:	3c040000 	lui	a0,0x0
     1a8:	3c050000 	lui	a1,0x0
     1ac:	24a50000 	addiu	a1,a1,0
     1b0:	24840000 	addiu	a0,a0,0
     1b4:	0c000000 	jal	0 <func_80038600>
     1b8:	240606f0 	li	a2,1776
     1bc:	8fae0020 	lw	t6,32(sp)
     1c0:	97b8001e 	lhu	t8,30(sp)
     1c4:	8fa80024 	lw	t0,36(sp)
     1c8:	8dcf0000 	lw	t7,0(t6)
     1cc:	0018c880 	sll	t9,t8,0x2
     1d0:	8fa50028 	lw	a1,40(sp)
     1d4:	95060000 	lhu	a2,0(t0)
     1d8:	0c000000 	jal	0 <func_80038600>
     1dc:	01f92021 	addu	a0,t7,t9
     1e0:	97a9001e 	lhu	t1,30(sp)
     1e4:	8faa0024 	lw	t2,36(sp)
     1e8:	a5490000 	sh	t1,0(t2)
     1ec:	8fbf0014 	lw	ra,20(sp)
     1f0:	27bd0020 	addiu	sp,sp,32
     1f4:	03e00008 	jr	ra
     1f8:	00000000 	nop

000001fc <func_800387FC>:
     1fc:	afa40000 	sw	a0,0(sp)
     200:	aca00000 	sw	zero,0(a1)
     204:	03e00008 	jr	ra
     208:	aca00004 	sw	zero,4(a1)

0000020c <func_8003880C>:
     20c:	27bdffe8 	addiu	sp,sp,-24
     210:	afa5001c 	sw	a1,28(sp)
     214:	afbf0014 	sw	ra,20(sp)
     218:	afa60020 	sw	a2,32(sp)
     21c:	00062880 	sll	a1,a2,0x2
     220:	2406fffe 	li	a2,-2
     224:	0c000000 	jal	0 <func_80038600>
     228:	24840074 	addiu	a0,a0,116
     22c:	8fa3001c 	lw	v1,28(sp)
     230:	3c040000 	lui	a0,0x0
     234:	14400007 	bnez	v0,254 <func_8003880C+0x48>
     238:	ac620000 	sw	v0,0(v1)
     23c:	3c050000 	lui	a1,0x0
     240:	24a50000 	addiu	a1,a1,0
     244:	24840000 	addiu	a0,a0,0
     248:	0c000000 	jal	0 <func_80038600>
     24c:	24060713 	li	a2,1811
     250:	8fa3001c 	lw	v1,28(sp)
     254:	8fae0020 	lw	t6,32(sp)
     258:	ac600004 	sw	zero,4(v1)
     25c:	ac6e0008 	sw	t6,8(v1)
     260:	8fbf0014 	lw	ra,20(sp)
     264:	27bd0018 	addiu	sp,sp,24
     268:	03e00008 	jr	ra
     26c:	00000000 	nop

00000270 <func_80038870>:
     270:	03e00008 	jr	ra
     274:	ac800004 	sw	zero,4(a0)

00000278 <func_80038878>:
     278:	8c820004 	lw	v0,4(a0)
     27c:	8c8f0008 	lw	t7,8(a0)
     280:	3043ffff 	andi	v1,v0,0xffff
     284:	244e0001 	addiu	t6,v0,1
     288:	006f082a 	slt	at,v1,t7
     28c:	14200003 	bnez	at,29c <func_80038878+0x24>
     290:	ac8e0004 	sw	t6,4(a0)
     294:	03e00008 	jr	ra
     298:	3402ffff 	li	v0,0xffff
     29c:	00601025 	move	v0,v1
     2a0:	03e00008 	jr	ra
     2a4:	00000000 	nop

000002a8 <func_800388A8>:
     2a8:	848e0000 	lh	t6,0(a0)
     2ac:	448e2000 	mtc1	t6,$f4
     2b0:	00000000 	nop
     2b4:	468021a0 	cvt.s.w	$f6,$f4
     2b8:	e4a60000 	swc1	$f6,0(a1)
     2bc:	848f0002 	lh	t7,2(a0)
     2c0:	448f4000 	mtc1	t7,$f8
     2c4:	00000000 	nop
     2c8:	468042a0 	cvt.s.w	$f10,$f8
     2cc:	e4aa0004 	swc1	$f10,4(a1)
     2d0:	84980004 	lh	t8,4(a0)
     2d4:	44988000 	mtc1	t8,$f16
     2d8:	00000000 	nop
     2dc:	468084a0 	cvt.s.w	$f18,$f16
     2e0:	03e00008 	jr	ra
     2e4:	e4b20008 	swc1	$f18,8(a1)

000002e8 <func_800388E8>:
     2e8:	c4a40000 	lwc1	$f4,0(a1)
     2ec:	4600218d 	trunc.w.s	$f6,$f4
     2f0:	440f3000 	mfc1	t7,$f6
     2f4:	00000000 	nop
     2f8:	a48f0000 	sh	t7,0(a0)
     2fc:	c4a80004 	lwc1	$f8,4(a1)
     300:	4600428d 	trunc.w.s	$f10,$f8
     304:	44195000 	mfc1	t9,$f10
     308:	00000000 	nop
     30c:	a4990002 	sh	t9,2(a0)
     310:	c4b00008 	lwc1	$f16,8(a1)
     314:	4600848d 	trunc.w.s	$f18,$f16
     318:	44099000 	mfc1	t1,$f18
     31c:	03e00008 	jr	ra
     320:	a4890004 	sh	t1,4(a0)

00000324 <func_80038924>:
     324:	8482000a 	lh	v0,10(a0)
     328:	24017fff 	li	at,32767
     32c:	10410003 	beq	v0,at,33c <func_80038924+0x18>
     330:	24018001 	li	at,-32767
     334:	5441000a 	bnel	v0,at,360 <func_80038924+0x3c>
     338:	94820002 	lhu	v0,2(a0)
     33c:	948e0002 	lhu	t6,2(a0)
     340:	24090006 	li	t1,6
     344:	31cf1fff 	andi	t7,t6,0x1fff
     348:	01e90019 	multu	t7,t1
     34c:	0000c012 	mflo	t8
     350:	00b8c821 	addu	t9,a1,t8
     354:	03e00008 	jr	ra
     358:	87220002 	lh	v0,2(t9)
     35c:	94820002 	lhu	v0,2(a0)
     360:	24090006 	li	t1,6
     364:	94830004 	lhu	v1,4(a0)
     368:	30421fff 	andi	v0,v0,0x1fff
     36c:	00490019 	multu	v0,t1
     370:	30631fff 	andi	v1,v1,0x1fff
     374:	94860006 	lhu	a2,6(a0)
     378:	00005012 	mflo	t2
     37c:	00aa5821 	addu	t3,a1,t2
     380:	85670002 	lh	a3,2(t3)
     384:	00690019 	multu	v1,t1
     388:	00006012 	mflo	t4
     38c:	00ac6821 	addu	t5,a1,t4
     390:	85a80002 	lh	t0,2(t5)
     394:	0107082a 	slt	at,t0,a3
     398:	10200003 	beqz	at,3a8 <func_80038924+0x84>
     39c:	00000000 	nop
     3a0:	00083c00 	sll	a3,t0,0x10
     3a4:	00073c03 	sra	a3,a3,0x10
     3a8:	00c90019 	multu	a2,t1
     3ac:	00007012 	mflo	t6
     3b0:	00ae7821 	addu	t7,a1,t6
     3b4:	85e30002 	lh	v1,2(t7)
     3b8:	00e3082a 	slt	at,a3,v1
     3bc:	10200003 	beqz	at,3cc <func_80038924+0xa8>
     3c0:	00601025 	move	v0,v1
     3c4:	03e00008 	jr	ra
     3c8:	00e01025 	move	v0,a3
     3cc:	03e00008 	jr	ra
     3d0:	00000000 	nop

000003d4 <func_800389D4>:
     3d4:	848e0008 	lh	t6,8(a0)
     3d8:	3c010000 	lui	at,0x0
     3dc:	c4200000 	lwc1	$f0,0(at)
     3e0:	448e2000 	mtc1	t6,$f4
     3e4:	00000000 	nop
     3e8:	468021a0 	cvt.s.w	$f6,$f4
     3ec:	46003202 	mul.s	$f8,$f6,$f0
     3f0:	e4a80000 	swc1	$f8,0(a1)
     3f4:	848f000a 	lh	t7,10(a0)
     3f8:	448f5000 	mtc1	t7,$f10
     3fc:	00000000 	nop
     400:	46805420 	cvt.s.w	$f16,$f10
     404:	46008482 	mul.s	$f18,$f16,$f0
     408:	e4d20000 	swc1	$f18,0(a2)
     40c:	8498000c 	lh	t8,12(a0)
     410:	44982000 	mtc1	t8,$f4
     414:	00000000 	nop
     418:	468021a0 	cvt.s.w	$f6,$f4
     41c:	46003202 	mul.s	$f8,$f6,$f0
     420:	03e00008 	jr	ra
     424:	e4e80000 	swc1	$f8,0(a3)

00000428 <func_80038A28>:
     428:	27bdffc0 	addiu	sp,sp,-64
     42c:	afbf0014 	sw	ra,20(sp)
     430:	afa50044 	sw	a1,68(sp)
     434:	afa60048 	sw	a2,72(sp)
     438:	1080004c 	beqz	a0,56c <func_80038A28+0x144>
     43c:	afa7004c 	sw	a3,76(sp)
     440:	27a5003c 	addiu	a1,sp,60
     444:	27a60038 	addiu	a2,sp,56
     448:	0c000000 	jal	0 <func_80038600>
     44c:	27a70034 	addiu	a3,sp,52
     450:	c7b2003c 	lwc1	$f18,60(sp)
     454:	3c010000 	lui	at,0x0
     458:	c42c0000 	lwc1	$f12,0(at)
     45c:	46129102 	mul.s	$f4,$f18,$f18
     460:	3c013f80 	lui	at,0x3f80
     464:	44818000 	mtc1	at,$f16
     468:	8fa20050 	lw	v0,80(sp)
     46c:	46048001 	sub.s	$f0,$f16,$f4
     470:	46000084 	sqrt.s	$f2,$f0
     474:	46001005 	abs.s	$f0,$f2
     478:	460c003c 	c.lt.s	$f0,$f12
     47c:	00000000 	nop
     480:	4503000b 	bc1tl	4b0 <func_80038A28+0x88>
     484:	c7a20038 	lwc1	$f2,56(sp)
     488:	46028003 	div.s	$f0,$f16,$f2
     48c:	c7a60038 	lwc1	$f6,56(sp)
     490:	c7a80034 	lwc1	$f8,52(sp)
     494:	46003382 	mul.s	$f14,$f6,$f0
     498:	00000000 	nop
     49c:	46004302 	mul.s	$f12,$f8,$f0
     4a0:	44800000 	mtc1	zero,$f0
     4a4:	10000016 	b	500 <func_80038A28+0xd8>
     4a8:	46006307 	neg.s	$f12,$f12
     4ac:	c7a20038 	lwc1	$f2,56(sp)
     4b0:	46021282 	mul.s	$f10,$f2,$f2
     4b4:	460a8001 	sub.s	$f0,$f16,$f10
     4b8:	46000384 	sqrt.s	$f14,$f0
     4bc:	46007005 	abs.s	$f0,$f14
     4c0:	460c003c 	c.lt.s	$f0,$f12
     4c4:	00000000 	nop
     4c8:	4503000a 	bc1tl	4f4 <func_80038A28+0xcc>
     4cc:	44800000 	mtc1	zero,$f0
     4d0:	460e8003 	div.s	$f0,$f16,$f14
     4d4:	c7a40034 	lwc1	$f4,52(sp)
     4d8:	46009302 	mul.s	$f12,$f18,$f0
     4dc:	00000000 	nop
     4e0:	46002082 	mul.s	$f2,$f4,$f0
     4e4:	44800000 	mtc1	zero,$f0
     4e8:	10000005 	b	500 <func_80038A28+0xd8>
     4ec:	46001087 	neg.s	$f2,$f2
     4f0:	44800000 	mtc1	zero,$f0
     4f4:	00000000 	nop
     4f8:	46000306 	mov.s	$f12,$f0
     4fc:	46000086 	mov.s	$f2,$f0
     500:	e4420000 	swc1	$f2,0(v0)
     504:	c7a6003c 	lwc1	$f6,60(sp)
     508:	46003207 	neg.s	$f8,$f6
     50c:	460e4282 	mul.s	$f10,$f8,$f14
     510:	e44a0004 	swc1	$f10,4(v0)
     514:	c7a4003c 	lwc1	$f4,60(sp)
     518:	460c2182 	mul.s	$f6,$f4,$f12
     51c:	e4460008 	swc1	$f6,8(v0)
     520:	c7a8003c 	lwc1	$f8,60(sp)
     524:	e4480010 	swc1	$f8,16(v0)
     528:	c7aa0038 	lwc1	$f10,56(sp)
     52c:	e44a0014 	swc1	$f10,20(v0)
     530:	c7a40034 	lwc1	$f4,52(sp)
     534:	e44c0024 	swc1	$f12,36(v0)
     538:	e44e0028 	swc1	$f14,40(v0)
     53c:	e440000c 	swc1	$f0,12(v0)
     540:	e440001c 	swc1	$f0,28(v0)
     544:	e4400020 	swc1	$f0,32(v0)
     548:	e440002c 	swc1	$f0,44(v0)
     54c:	e4440018 	swc1	$f4,24(v0)
     550:	c7a60044 	lwc1	$f6,68(sp)
     554:	e4460030 	swc1	$f6,48(v0)
     558:	c7a80048 	lwc1	$f8,72(sp)
     55c:	e4480034 	swc1	$f8,52(v0)
     560:	c7aa004c 	lwc1	$f10,76(sp)
     564:	e450003c 	swc1	$f16,60(v0)
     568:	e44a0038 	swc1	$f10,56(v0)
     56c:	8fbf0014 	lw	ra,20(sp)
     570:	27bd0040 	addiu	sp,sp,64
     574:	03e00008 	jr	ra
     578:	00000000 	nop

0000057c <func_80038B7C>:
     57c:	848e0008 	lh	t6,8(a0)
     580:	848f000a 	lh	t7,10(a0)
     584:	c4a80000 	lwc1	$f8,0(a1)
     588:	448e2000 	mtc1	t6,$f4
     58c:	448f8000 	mtc1	t7,$f16
     590:	8498000c 	lh	t8,12(a0)
     594:	468021a0 	cvt.s.w	$f6,$f4
     598:	c4a40004 	lwc1	$f4,4(a1)
     59c:	8499000e 	lh	t9,14(a0)
     5a0:	3c010000 	lui	at,0x0
     5a4:	468084a0 	cvt.s.w	$f18,$f16
     5a8:	46083282 	mul.s	$f10,$f6,$f8
     5ac:	44988000 	mtc1	t8,$f16
     5b0:	46049182 	mul.s	$f6,$f18,$f4
     5b4:	c4a40008 	lwc1	$f4,8(a1)
     5b8:	468084a0 	cvt.s.w	$f18,$f16
     5bc:	c4300000 	lwc1	$f16,0(at)
     5c0:	46065200 	add.s	$f8,$f10,$f6
     5c4:	46049282 	mul.s	$f10,$f18,$f4
     5c8:	44992000 	mtc1	t9,$f4
     5cc:	460a4180 	add.s	$f6,$f8,$f10
     5d0:	46802220 	cvt.s.w	$f8,$f4
     5d4:	46103482 	mul.s	$f18,$f6,$f16
     5d8:	03e00008 	jr	ra
     5dc:	46089000 	add.s	$f0,$f18,$f8

000005e0 <func_80038BE0>:
     5e0:	27bdffe8 	addiu	sp,sp,-24
     5e4:	afbf0014 	sw	ra,20(sp)
     5e8:	afa40018 	sw	a0,24(sp)
     5ec:	afa5001c 	sw	a1,28(sp)
     5f0:	afa60020 	sw	a2,32(sp)
     5f4:	948f0002 	lhu	t7,2(a0)
     5f8:	31f81fff 	andi	t8,t7,0x1fff
     5fc:	0018c880 	sll	t9,t8,0x2
     600:	0338c823 	subu	t9,t9,t8
     604:	0019c840 	sll	t9,t9,0x1
     608:	03252021 	addu	a0,t9,a1
     60c:	0c000000 	jal	0 <func_80038600>
     610:	00c02825 	move	a1,a2
     614:	8fa90018 	lw	t1,24(sp)
     618:	8fad001c 	lw	t5,28(sp)
     61c:	8fa50020 	lw	a1,32(sp)
     620:	952a0004 	lhu	t2,4(t1)
     624:	24a5000c 	addiu	a1,a1,12
     628:	314b1fff 	andi	t3,t2,0x1fff
     62c:	000b6080 	sll	t4,t3,0x2
     630:	018b6023 	subu	t4,t4,t3
     634:	000c6040 	sll	t4,t4,0x1
     638:	0c000000 	jal	0 <func_80038600>
     63c:	018d2021 	addu	a0,t4,t5
     640:	8fae0018 	lw	t6,24(sp)
     644:	8fb9001c 	lw	t9,28(sp)
     648:	8fa50020 	lw	a1,32(sp)
     64c:	95cf0006 	lhu	t7,6(t6)
     650:	24a50018 	addiu	a1,a1,24
     654:	000fc080 	sll	t8,t7,0x2
     658:	030fc023 	subu	t8,t8,t7
     65c:	0018c040 	sll	t8,t8,0x1
     660:	0c000000 	jal	0 <func_80038600>
     664:	03192021 	addu	a0,t8,t9
     668:	8fbf0014 	lw	ra,20(sp)
     66c:	27bd0018 	addiu	sp,sp,24
     670:	03e00008 	jr	ra
     674:	00000000 	nop

00000678 <func_80038C78>:
     678:	27bdffe0 	addiu	sp,sp,-32
     67c:	afb00018 	sw	s0,24(sp)
     680:	00e08025 	move	s0,a3
     684:	afbf001c 	sw	ra,28(sp)
     688:	10800006 	beqz	a0,6a4 <func_80038C78+0x2c>
     68c:	afa40020 	sw	a0,32(sp)
     690:	28a10033 	slti	at,a1,51
     694:	10200003 	beqz	at,6a4 <func_80038C78+0x2c>
     698:	00000000 	nop
     69c:	14e0001d 	bnez	a3,714 <func_80038C78+0x9c>
     6a0:	24010032 	li	at,50
     6a4:	3c040000 	lui	a0,0x0
     6a8:	24840000 	addiu	a0,a0,0
     6ac:	0c000000 	jal	0 <func_80038600>
     6b0:	afa50024 	sw	a1,36(sp)
     6b4:	8fa60024 	lw	a2,36(sp)
     6b8:	8fa50020 	lw	a1,32(sp)
     6bc:	3c040000 	lui	a0,0x0
     6c0:	28c60033 	slti	a2,a2,51
     6c4:	38c60001 	xori	a2,a2,0x1
     6c8:	24840000 	addiu	a0,a0,0
     6cc:	2e070001 	sltiu	a3,s0,1
     6d0:	0c000000 	jal	0 <func_80038600>
     6d4:	2ca50001 	sltiu	a1,a1,1
     6d8:	3c040000 	lui	a0,0x0
     6dc:	0c000000 	jal	0 <func_80038600>
     6e0:	24840000 	addiu	a0,a0,0
     6e4:	52000014 	beqzl	s0,738 <func_80038C78+0xc0>
     6e8:	8fbf001c 	lw	ra,28(sp)
     6ec:	44800000 	mtc1	zero,$f0
     6f0:	00000000 	nop
     6f4:	e6000020 	swc1	$f0,32(s0)
     6f8:	e6000014 	swc1	$f0,20(s0)
     6fc:	e6000010 	swc1	$f0,16(s0)
     700:	e600000c 	swc1	$f0,12(s0)
     704:	e6000008 	swc1	$f0,8(s0)
     708:	e6000004 	swc1	$f0,4(s0)
     70c:	10000009 	b	734 <func_80038C78+0xbc>
     710:	e6000000 	swc1	$f0,0(s0)
     714:	14a10004 	bne	a1,at,728 <func_80038C78+0xb0>
     718:	8fa40020 	lw	a0,32(sp)
     71c:	8ccf0000 	lw	t7,0(a2)
     720:	10000002 	b	72c <func_80038C78+0xb4>
     724:	8de50010 	lw	a1,16(t7)
     728:	8cc51444 	lw	a1,5188(a2)
     72c:	0c000000 	jal	0 <func_80038600>
     730:	02003025 	move	a2,s0
     734:	8fbf001c 	lw	ra,28(sp)
     738:	8fb00018 	lw	s0,24(sp)
     73c:	27bd0020 	addiu	sp,sp,32
     740:	03e00008 	jr	ra
     744:	00000000 	nop

00000748 <func_80038D48>:
     748:	27bdffc0 	addiu	sp,sp,-64
     74c:	afbf003c 	sw	ra,60(sp)
     750:	afb00038 	sw	s0,56(sp)
     754:	afa50044 	sw	a1,68(sp)
     758:	afa60048 	sw	a2,72(sp)
     75c:	afa7004c 	sw	a3,76(sp)
     760:	948e0002 	lhu	t6,2(a0)
     764:	00808025 	move	s0,a0
     768:	3c040000 	lui	a0,0x0
     76c:	31cf1fff 	andi	t7,t6,0x1fff
     770:	000fc080 	sll	t8,t7,0x2
     774:	030fc023 	subu	t8,t8,t7
     778:	0018c040 	sll	t8,t8,0x1
     77c:	03052821 	addu	a1,t8,a1
     780:	0c000000 	jal	0 <func_80038600>
     784:	24840000 	addiu	a0,a0,0
     788:	96080004 	lhu	t0,4(s0)
     78c:	8fab0044 	lw	t3,68(sp)
     790:	3c040000 	lui	a0,0x0
     794:	31091fff 	andi	t1,t0,0x1fff
     798:	00095080 	sll	t2,t1,0x2
     79c:	01495023 	subu	t2,t2,t1
     7a0:	000a5040 	sll	t2,t2,0x1
     7a4:	24840000 	addiu	a0,a0,0
     7a8:	0c000000 	jal	0 <func_80038600>
     7ac:	014b2821 	addu	a1,t2,t3
     7b0:	960c0006 	lhu	t4,6(s0)
     7b4:	8fae0044 	lw	t6,68(sp)
     7b8:	3c040000 	lui	a0,0x0
     7bc:	000c6880 	sll	t5,t4,0x2
     7c0:	01ac6823 	subu	t5,t5,t4
     7c4:	000d6840 	sll	t5,t5,0x1
     7c8:	24840000 	addiu	a0,a0,0
     7cc:	0c000000 	jal	0 <func_80038600>
     7d0:	01ae2821 	addu	a1,t5,t6
     7d4:	860f0008 	lh	t7,8(s0)
     7d8:	8618000a 	lh	t8,10(s0)
     7dc:	8619000c 	lh	t9,12(s0)
     7e0:	448f2000 	mtc1	t7,$f4
     7e4:	44984000 	mtc1	t8,$f8
     7e8:	3c010000 	lui	at,0x0
     7ec:	468021a0 	cvt.s.w	$f6,$f4
     7f0:	c42e0000 	lwc1	$f14,0(at)
     7f4:	44998000 	mtc1	t9,$f16
     7f8:	8fa90050 	lw	t1,80(sp)
     7fc:	3c040000 	lui	a0,0x0
     800:	468042a0 	cvt.s.w	$f10,$f8
     804:	460e3002 	mul.s	$f0,$f6,$f14
     808:	c7a8004c 	lwc1	$f8,76(sp)
     80c:	3c050000 	lui	a1,0x0
     810:	3c060000 	lui	a2,0x0
     814:	24c60000 	addiu	a2,a2,0
     818:	460e5082 	mul.s	$f2,$f10,$f14
     81c:	c7aa0048 	lwc1	$f10,72(sp)
     820:	44070000 	mfc1	a3,$f0
     824:	24a50000 	addiu	a1,a1,0
     828:	24840000 	addiu	a0,a0,0
     82c:	468084a0 	cvt.s.w	$f18,$f16
     830:	e7a20010 	swc1	$f2,16(sp)
     834:	c7b00054 	lwc1	$f16,84(sp)
     838:	460e9302 	mul.s	$f12,$f18,$f14
     83c:	e7ac0014 	swc1	$f12,20(sp)
     840:	8608000e 	lh	t0,14(s0)
     844:	afa90024 	sw	t1,36(sp)
     848:	e7a8001c 	swc1	$f8,28(sp)
     84c:	44882000 	mtc1	t0,$f4
     850:	e7aa0020 	swc1	$f10,32(sp)
     854:	e7b00028 	swc1	$f16,40(sp)
     858:	468021a0 	cvt.s.w	$f6,$f4
     85c:	0c000000 	jal	0 <func_80038600>
     860:	e7a60018 	swc1	$f6,24(sp)
     864:	8fbf003c 	lw	ra,60(sp)
     868:	8fb00038 	lw	s0,56(sp)
     86c:	27bd0040 	addiu	sp,sp,64
     870:	03e00008 	jr	ra
     874:	00000000 	nop

00000878 <func_80038E78>:
     878:	27bdffb8 	addiu	sp,sp,-72
     87c:	afa60050 	sw	a2,80(sp)
     880:	afbf0034 	sw	ra,52(sp)
     884:	3c060000 	lui	a2,0x0
     888:	afa40048 	sw	a0,72(sp)
     88c:	afa70054 	sw	a3,84(sp)
     890:	0c000000 	jal	0 <func_80038600>
     894:	24c60000 	addiu	a2,a2,0
     898:	8fa40048 	lw	a0,72(sp)
     89c:	27a50044 	addiu	a1,sp,68
     8a0:	27a60040 	addiu	a2,sp,64
     8a4:	0c000000 	jal	0 <func_80038600>
     8a8:	27a7003c 	addiu	a3,sp,60
     8ac:	c7a40040 	lwc1	$f4,64(sp)
     8b0:	c7a6003c 	lwc1	$f6,60(sp)
     8b4:	8fae0048 	lw	t6,72(sp)
     8b8:	e7a40010 	swc1	$f4,16(sp)
     8bc:	e7a60014 	swc1	$f6,20(sp)
     8c0:	85cf000e 	lh	t7,14(t6)
     8c4:	c7a4005c 	lwc1	$f4,92(sp)
     8c8:	c7b00054 	lwc1	$f16,84(sp)
     8cc:	448f4000 	mtc1	t7,$f8
     8d0:	c7b20050 	lwc1	$f18,80(sp)
     8d4:	8fb80058 	lw	t8,88(sp)
     8d8:	468042a0 	cvt.s.w	$f10,$f8
     8dc:	3c040000 	lui	a0,0x0
     8e0:	3c050000 	lui	a1,0x0
     8e4:	3c060000 	lui	a2,0x0
     8e8:	24c60000 	addiu	a2,a2,0
     8ec:	24a50000 	addiu	a1,a1,0
     8f0:	24840000 	addiu	a0,a0,0
     8f4:	e7aa0018 	swc1	$f10,24(sp)
     8f8:	8fa70044 	lw	a3,68(sp)
     8fc:	e7a40028 	swc1	$f4,40(sp)
     900:	e7b0001c 	swc1	$f16,28(sp)
     904:	e7b20020 	swc1	$f18,32(sp)
     908:	0c000000 	jal	0 <func_80038600>
     90c:	afb80024 	sw	t8,36(sp)
     910:	8fbf0034 	lw	ra,52(sp)
     914:	27bd0048 	addiu	sp,sp,72
     918:	03e00008 	jr	ra
     91c:	00000000 	nop

00000920 <func_80038F20>:
     920:	44866000 	mtc1	a2,$f12
     924:	44877000 	mtc1	a3,$f14
     928:	27bdffe0 	addiu	sp,sp,-32
     92c:	3c013f80 	lui	at,0x3f80
     930:	44812000 	mtc1	at,$f4
     934:	8fae0030 	lw	t6,48(sp)
     938:	afbf001c 	sw	ra,28(sp)
     93c:	44066000 	mfc1	a2,$f12
     940:	44077000 	mfc1	a3,$f14
     944:	afae0010 	sw	t6,16(sp)
     948:	0c000000 	jal	0 <func_80038600>
     94c:	e7a40014 	swc1	$f4,20(sp)
     950:	8fbf001c 	lw	ra,28(sp)
     954:	27bd0020 	addiu	sp,sp,32
     958:	03e00008 	jr	ra
     95c:	00000000 	nop

00000960 <func_80038F60>:
     960:	27bdffc0 	addiu	sp,sp,-64
     964:	afa60048 	sw	a2,72(sp)
     968:	afbf002c 	sw	ra,44(sp)
     96c:	3c060000 	lui	a2,0x0
     970:	afa40040 	sw	a0,64(sp)
     974:	afa7004c 	sw	a3,76(sp)
     978:	0c000000 	jal	0 <func_80038600>
     97c:	24c60000 	addiu	a2,a2,0
     980:	8fa40040 	lw	a0,64(sp)
     984:	27a5003c 	addiu	a1,sp,60
     988:	27a60038 	addiu	a2,sp,56
     98c:	0c000000 	jal	0 <func_80038600>
     990:	27a70034 	addiu	a3,sp,52
     994:	c7a40038 	lwc1	$f4,56(sp)
     998:	c7a60034 	lwc1	$f6,52(sp)
     99c:	8fae0040 	lw	t6,64(sp)
     9a0:	e7a40010 	swc1	$f4,16(sp)
     9a4:	e7a60014 	swc1	$f6,20(sp)
     9a8:	85cf000e 	lh	t7,14(t6)
     9ac:	c7b00048 	lwc1	$f16,72(sp)
     9b0:	c7b2004c 	lwc1	$f18,76(sp)
     9b4:	448f4000 	mtc1	t7,$f8
     9b8:	8fb80050 	lw	t8,80(sp)
     9bc:	3c040000 	lui	a0,0x0
     9c0:	468042a0 	cvt.s.w	$f10,$f8
     9c4:	3c050000 	lui	a1,0x0
     9c8:	3c060000 	lui	a2,0x0
     9cc:	24c60000 	addiu	a2,a2,0
     9d0:	24a50000 	addiu	a1,a1,0
     9d4:	24840000 	addiu	a0,a0,0
     9d8:	e7aa0018 	swc1	$f10,24(sp)
     9dc:	8fa7003c 	lw	a3,60(sp)
     9e0:	e7b0001c 	swc1	$f16,28(sp)
     9e4:	e7b20020 	swc1	$f18,32(sp)
     9e8:	0c000000 	jal	0 <func_80038600>
     9ec:	afb80024 	sw	t8,36(sp)
     9f0:	8fbf002c 	lw	ra,44(sp)
     9f4:	27bd0040 	addiu	sp,sp,64
     9f8:	03e00008 	jr	ra
     9fc:	00000000 	nop

00000a00 <func_80039000>:
     a00:	27bdffc0 	addiu	sp,sp,-64
     a04:	afa60048 	sw	a2,72(sp)
     a08:	afbf002c 	sw	ra,44(sp)
     a0c:	3c060000 	lui	a2,0x0
     a10:	afa40040 	sw	a0,64(sp)
     a14:	afa7004c 	sw	a3,76(sp)
     a18:	0c000000 	jal	0 <func_80038600>
     a1c:	24c60000 	addiu	a2,a2,0
     a20:	8fa40040 	lw	a0,64(sp)
     a24:	27a5003c 	addiu	a1,sp,60
     a28:	27a60038 	addiu	a2,sp,56
     a2c:	0c000000 	jal	0 <func_80038600>
     a30:	27a70034 	addiu	a3,sp,52
     a34:	c7a40038 	lwc1	$f4,56(sp)
     a38:	c7a60034 	lwc1	$f6,52(sp)
     a3c:	8fae0040 	lw	t6,64(sp)
     a40:	e7a40010 	swc1	$f4,16(sp)
     a44:	e7a60014 	swc1	$f6,20(sp)
     a48:	85cf000e 	lh	t7,14(t6)
     a4c:	c7b00048 	lwc1	$f16,72(sp)
     a50:	c7b2004c 	lwc1	$f18,76(sp)
     a54:	448f4000 	mtc1	t7,$f8
     a58:	8fb80050 	lw	t8,80(sp)
     a5c:	3c040000 	lui	a0,0x0
     a60:	468042a0 	cvt.s.w	$f10,$f8
     a64:	3c050000 	lui	a1,0x0
     a68:	3c060000 	lui	a2,0x0
     a6c:	24c60000 	addiu	a2,a2,0
     a70:	24a50000 	addiu	a1,a1,0
     a74:	24840000 	addiu	a0,a0,0
     a78:	e7aa0018 	swc1	$f10,24(sp)
     a7c:	8fa7003c 	lw	a3,60(sp)
     a80:	e7b0001c 	swc1	$f16,28(sp)
     a84:	e7b20020 	swc1	$f18,32(sp)
     a88:	0c000000 	jal	0 <func_80038600>
     a8c:	afb80024 	sw	t8,36(sp)
     a90:	8fbf002c 	lw	ra,44(sp)
     a94:	27bd0040 	addiu	sp,sp,64
     a98:	03e00008 	jr	ra
     a9c:	00000000 	nop

00000aa0 <func_800390A0>:
     aa0:	27bdffc8 	addiu	sp,sp,-56
     aa4:	afbf0024 	sw	ra,36(sp)
     aa8:	afa5003c 	sw	a1,60(sp)
     aac:	afa60040 	sw	a2,64(sp)
     ab0:	afa70044 	sw	a3,68(sp)
     ab4:	848e000e 	lh	t6,14(a0)
     ab8:	3c010000 	lui	at,0x0
     abc:	44807000 	mtc1	zero,$f14
     ac0:	448e2000 	mtc1	t6,$f4
     ac4:	00000000 	nop
     ac8:	468021a0 	cvt.s.w	$f6,$f4
     acc:	e4260000 	swc1	$f6,0(at)
     ad0:	848f0008 	lh	t7,8(a0)
     ad4:	8498000a 	lh	t8,10(a0)
     ad8:	8499000c 	lh	t9,12(a0)
     adc:	448f4000 	mtc1	t7,$f8
     ae0:	44985000 	mtc1	t8,$f10
     ae4:	c4c60000 	lwc1	$f6,0(a2)
     ae8:	46804020 	cvt.s.w	$f0,$f8
     aec:	44992000 	mtc1	t9,$f4
     af0:	3c010000 	lui	at,0x0
     af4:	468050a0 	cvt.s.w	$f2,$f10
     af8:	46060202 	mul.s	$f8,$f0,$f6
     afc:	c4ca0004 	lwc1	$f10,4(a2)
     b00:	46802320 	cvt.s.w	$f12,$f4
     b04:	460a1102 	mul.s	$f4,$f2,$f10
     b08:	c4ca0008 	lwc1	$f10,8(a2)
     b0c:	46044180 	add.s	$f6,$f8,$f4
     b10:	460a6202 	mul.s	$f8,$f12,$f10
     b14:	c42a0000 	lwc1	$f10,0(at)
     b18:	3c010000 	lui	at,0x0
     b1c:	46083100 	add.s	$f4,$f6,$f8
     b20:	c4280000 	lwc1	$f8,0(at)
     b24:	3c010000 	lui	at,0x0
     b28:	460a2182 	mul.s	$f6,$f4,$f10
     b2c:	c4e40000 	lwc1	$f4,0(a3)
     b30:	46040282 	mul.s	$f10,$f0,$f4
     b34:	46083480 	add.s	$f18,$f6,$f8
     b38:	c4e60004 	lwc1	$f6,4(a3)
     b3c:	46061102 	mul.s	$f4,$f2,$f6
     b40:	4612703e 	c.le.s	$f14,$f18
     b44:	46045180 	add.s	$f6,$f10,$f4
     b48:	c4ea0008 	lwc1	$f10,8(a3)
     b4c:	460a6102 	mul.s	$f4,$f12,$f10
     b50:	46043280 	add.s	$f10,$f6,$f4
     b54:	c4260000 	lwc1	$f6,0(at)
     b58:	46065102 	mul.s	$f4,$f10,$f6
     b5c:	45000005 	bc1f	b74 <func_800390A0+0xd4>
     b60:	46082400 	add.s	$f16,$f4,$f8
     b64:	4610703e 	c.le.s	$f14,$f16
     b68:	00000000 	nop
     b6c:	4501001f 	bc1t	bec <func_800390A0+0x14c>
     b70:	00000000 	nop
     b74:	460e903c 	c.lt.s	$f18,$f14
     b78:	8faa004c 	lw	t2,76(sp)
     b7c:	45000005 	bc1f	b94 <func_800390A0+0xf4>
     b80:	00000000 	nop
     b84:	460e803c 	c.lt.s	$f16,$f14
     b88:	00000000 	nop
     b8c:	45010017 	bc1t	bec <func_800390A0+0x14c>
     b90:	00000000 	nop
     b94:	5140000a 	beqzl	t2,bc0 <func_800390A0+0x120>
     b98:	46109081 	sub.s	$f2,$f18,$f16
     b9c:	460e903c 	c.lt.s	$f18,$f14
     ba0:	00000000 	nop
     ba4:	45020006 	bc1fl	bc0 <func_800390A0+0x120>
     ba8:	46109081 	sub.s	$f2,$f18,$f16
     bac:	4610703c 	c.lt.s	$f14,$f16
     bb0:	00000000 	nop
     bb4:	4501000d 	bc1t	bec <func_800390A0+0x14c>
     bb8:	00000000 	nop
     bbc:	46109081 	sub.s	$f2,$f18,$f16
     bc0:	3c010000 	lui	at,0x0
     bc4:	c42a0000 	lwc1	$f10,0(at)
     bc8:	3c050000 	lui	a1,0x0
     bcc:	46001005 	abs.s	$f0,$f2
     bd0:	3c060000 	lui	a2,0x0
     bd4:	460a003c 	c.lt.s	$f0,$f10
     bd8:	3c070000 	lui	a3,0x0
     bdc:	24e70000 	addiu	a3,a3,0
     be0:	24c60000 	addiu	a2,a2,0
     be4:	45000003 	bc1f	bf4 <func_800390A0+0x154>
     be8:	24a50000 	addiu	a1,a1,0
     bec:	1000005f 	b	d6c <func_800390A0+0x2cc>
     bf0:	00001025 	move	v0,zero
     bf4:	afa40038 	sw	a0,56(sp)
     bf8:	e7a20028 	swc1	$f2,40(sp)
     bfc:	0c000000 	jal	0 <func_80038600>
     c00:	e7b20034 	swc1	$f18,52(sp)
     c04:	3c060000 	lui	a2,0x0
     c08:	8fa40038 	lw	a0,56(sp)
     c0c:	24c60000 	addiu	a2,a2,0
     c10:	0c000000 	jal	0 <func_80038600>
     c14:	8fa5003c 	lw	a1,60(sp)
     c18:	c7a20028 	lwc1	$f2,40(sp)
     c1c:	c7b20034 	lwc1	$f18,52(sp)
     c20:	8fa40040 	lw	a0,64(sp)
     c24:	8fa50044 	lw	a1,68(sp)
     c28:	46029183 	div.s	$f6,$f18,$f2
     c2c:	8fa70048 	lw	a3,72(sp)
     c30:	44063000 	mfc1	a2,$f6
     c34:	0c000000 	jal	0 <func_80038600>
     c38:	00000000 	nop
     c3c:	3c010000 	lui	at,0x0
     c40:	c4200000 	lwc1	$f0,0(at)
     c44:	3c013f00 	lui	at,0x3f00
     c48:	44812000 	mtc1	at,$f4
     c4c:	46000005 	abs.s	$f0,$f0
     c50:	3c040000 	lui	a0,0x0
     c54:	4600203c 	c.lt.s	$f4,$f0
     c58:	3c050000 	lui	a1,0x0
     c5c:	8fa30048 	lw	v1,72(sp)
     c60:	24a50000 	addiu	a1,a1,0
     c64:	4500000e 	bc1f	ca0 <func_800390A0+0x200>
     c68:	24840000 	addiu	a0,a0,0
     c6c:	c4680004 	lwc1	$f8,4(v1)
     c70:	c7a60050 	lwc1	$f6,80(sp)
     c74:	3c060000 	lui	a2,0x0
     c78:	e7a80010 	swc1	$f8,16(sp)
     c7c:	c46a0008 	lwc1	$f10,8(v1)
     c80:	3c070000 	lui	a3,0x0
     c84:	24e70000 	addiu	a3,a3,0
     c88:	24c60000 	addiu	a2,a2,0
     c8c:	e7a60018 	swc1	$f6,24(sp)
     c90:	0c000000 	jal	0 <func_80038600>
     c94:	e7aa0014 	swc1	$f10,20(sp)
     c98:	14400031 	bnez	v0,d60 <func_800390A0+0x2c0>
     c9c:	8fa30048 	lw	v1,72(sp)
     ca0:	3c010000 	lui	at,0x0
     ca4:	c4200000 	lwc1	$f0,0(at)
     ca8:	3c013f00 	lui	at,0x3f00
     cac:	44812000 	mtc1	at,$f4
     cb0:	46000005 	abs.s	$f0,$f0
     cb4:	3c040000 	lui	a0,0x0
     cb8:	4600203c 	c.lt.s	$f4,$f0
     cbc:	3c050000 	lui	a1,0x0
     cc0:	24a50000 	addiu	a1,a1,0
     cc4:	24840000 	addiu	a0,a0,0
     cc8:	4500000d 	bc1f	d00 <func_800390A0+0x260>
     ccc:	3c060000 	lui	a2,0x0
     cd0:	c4680008 	lwc1	$f8,8(v1)
     cd4:	c7a60050 	lwc1	$f6,80(sp)
     cd8:	3c070000 	lui	a3,0x0
     cdc:	e7a80010 	swc1	$f8,16(sp)
     ce0:	c46a0000 	lwc1	$f10,0(v1)
     ce4:	24e70000 	addiu	a3,a3,0
     ce8:	24c60000 	addiu	a2,a2,0
     cec:	e7a60018 	swc1	$f6,24(sp)
     cf0:	0c000000 	jal	0 <func_80038600>
     cf4:	e7aa0014 	swc1	$f10,20(sp)
     cf8:	14400019 	bnez	v0,d60 <func_800390A0+0x2c0>
     cfc:	8fa30048 	lw	v1,72(sp)
     d00:	3c010000 	lui	at,0x0
     d04:	c4200000 	lwc1	$f0,0(at)
     d08:	3c013f00 	lui	at,0x3f00
     d0c:	44812000 	mtc1	at,$f4
     d10:	46000005 	abs.s	$f0,$f0
     d14:	3c040000 	lui	a0,0x0
     d18:	4600203c 	c.lt.s	$f4,$f0
     d1c:	3c050000 	lui	a1,0x0
     d20:	24a50000 	addiu	a1,a1,0
     d24:	24840000 	addiu	a0,a0,0
     d28:	4500000f 	bc1f	d68 <func_800390A0+0x2c8>
     d2c:	3c060000 	lui	a2,0x0
     d30:	c4680000 	lwc1	$f8,0(v1)
     d34:	c7a60050 	lwc1	$f6,80(sp)
     d38:	3c070000 	lui	a3,0x0
     d3c:	e7a80010 	swc1	$f8,16(sp)
     d40:	c46a0004 	lwc1	$f10,4(v1)
     d44:	24e70000 	addiu	a3,a3,0
     d48:	24c60000 	addiu	a2,a2,0
     d4c:	e7a60018 	swc1	$f6,24(sp)
     d50:	0c000000 	jal	0 <func_80038600>
     d54:	e7aa0014 	swc1	$f10,20(sp)
     d58:	50400004 	beqzl	v0,d6c <func_800390A0+0x2cc>
     d5c:	00001025 	move	v0,zero
     d60:	10000002 	b	d6c <func_800390A0+0x2cc>
     d64:	24020001 	li	v0,1
     d68:	00001025 	move	v0,zero
     d6c:	8fbf0024 	lw	ra,36(sp)
     d70:	27bd0038 	addiu	sp,sp,56
     d74:	03e00008 	jr	ra
     d78:	00000000 	nop

00000d7c <func_8003937C>:
     d7c:	27bdffd8 	addiu	sp,sp,-40
     d80:	afa60030 	sw	a2,48(sp)
     d84:	afbf0014 	sw	ra,20(sp)
     d88:	3c060000 	lui	a2,0x0
     d8c:	afa40028 	sw	a0,40(sp)
     d90:	afa70034 	sw	a3,52(sp)
     d94:	0c000000 	jal	0 <func_80038600>
     d98:	24c60000 	addiu	a2,a2,0
     d9c:	3c050000 	lui	a1,0x0
     da0:	3c060000 	lui	a2,0x0
     da4:	3c070000 	lui	a3,0x0
     da8:	24e70000 	addiu	a3,a3,0
     dac:	24c60000 	addiu	a2,a2,0
     db0:	24a50000 	addiu	a1,a1,0
     db4:	0c000000 	jal	0 <func_80038600>
     db8:	8fa40028 	lw	a0,40(sp)
     dbc:	8fae0028 	lw	t6,40(sp)
     dc0:	8fa20030 	lw	v0,48(sp)
     dc4:	3c010000 	lui	at,0x0
     dc8:	85cf000e 	lh	t7,14(t6)
     dcc:	3c040000 	lui	a0,0x0
     dd0:	3c050000 	lui	a1,0x0
     dd4:	448f2000 	mtc1	t7,$f4
     dd8:	24a50000 	addiu	a1,a1,0
     ddc:	24840000 	addiu	a0,a0,0
     de0:	468021a0 	cvt.s.w	$f6,$f4
     de4:	27a6001c 	addiu	a2,sp,28
     de8:	e4260000 	swc1	$f6,0(at)
     dec:	c4480000 	lwc1	$f8,0(v0)
     df0:	3c010000 	lui	at,0x0
     df4:	4600428d 	trunc.w.s	$f10,$f8
     df8:	c7a80034 	lwc1	$f8,52(sp)
     dfc:	44195000 	mfc1	t9,$f10
     e00:	4600428d 	trunc.w.s	$f10,$f8
     e04:	a4390000 	sh	t9,0(at)
     e08:	c4500004 	lwc1	$f16,4(v0)
     e0c:	440d5000 	mfc1	t5,$f10
     e10:	4600848d 	trunc.w.s	$f18,$f16
     e14:	44099000 	mfc1	t1,$f18
     e18:	00000000 	nop
     e1c:	a4290000 	sh	t1,0(at)
     e20:	c4440008 	lwc1	$f4,8(v0)
     e24:	a42d0000 	sh	t5,0(at)
     e28:	4600218d 	trunc.w.s	$f6,$f4
     e2c:	440b3000 	mfc1	t3,$f6
     e30:	0c000000 	jal	0 <func_80038600>
     e34:	a42b0000 	sh	t3,0(at)
     e38:	8fbf0014 	lw	ra,20(sp)
     e3c:	27bd0028 	addiu	sp,sp,40
     e40:	03e00008 	jr	ra
     e44:	00000000 	nop

00000e48 <func_80039448>:
     e48:	27bdffd8 	addiu	sp,sp,-40
     e4c:	afbf001c 	sw	ra,28(sp)
     e50:	afb10018 	sw	s1,24(sp)
     e54:	afb00014 	sw	s0,20(sp)
     e58:	afa5002c 	sw	a1,44(sp)
     e5c:	94af0000 	lhu	t7,0(a1)
     e60:	340cffff 	li	t4,0xffff
     e64:	00c08025 	move	s0,a2
     e68:	158f0006 	bne	t4,t7,e84 <func_80039448+0x3c>
     e6c:	00808825 	move	s1,a0
     e70:	24840044 	addiu	a0,a0,68
     e74:	0c000000 	jal	0 <func_80038600>
     e78:	27a6003a 	addiu	a2,sp,58
     e7c:	10000073 	b	104c <func_80039448+0x204>
     e80:	8fbf001c 	lw	ra,28(sp)
     e84:	87b8003a 	lh	t8,58(sp)
     e88:	00e02825 	move	a1,a3
     e8c:	afa70034 	sw	a3,52(sp)
     e90:	0018c900 	sll	t9,t8,0x4
     e94:	0c000000 	jal	0 <func_80038600>
     e98:	03302021 	addu	a0,t9,s0
     e9c:	8fad002c 	lw	t5,44(sp)
     ea0:	8e2a0048 	lw	t2,72(s1)
     ea4:	24080006 	li	t0,6
     ea8:	95af0000 	lhu	t7,0(t5)
     eac:	8fa70034 	lw	a3,52(sp)
     eb0:	340cffff 	li	t4,0xffff
     eb4:	000f7080 	sll	t6,t7,0x2
     eb8:	014e4821 	addu	t1,t2,t6
     ebc:	85260000 	lh	a2,0(t1)
     ec0:	0006c100 	sll	t8,a2,0x4
     ec4:	02182821 	addu	a1,s0,t8
     ec8:	94b90002 	lhu	t9,2(a1)
     ecc:	332f1fff 	andi	t7,t9,0x1fff
     ed0:	01e80019 	multu	t7,t0
     ed4:	00007012 	mflo	t6
     ed8:	00eec021 	addu	t8,a3,t6
     edc:	87190002 	lh	t9,2(t8)
     ee0:	0059082a 	slt	at,v0,t9
     ee4:	5020001a 	beqzl	at,f50 <func_80039448+0x108>
     ee8:	240b0006 	li	t3,6
     eec:	94af0004 	lhu	t7,4(a1)
     ef0:	31ee1fff 	andi	t6,t7,0x1fff
     ef4:	01c80019 	multu	t6,t0
     ef8:	0000c012 	mflo	t8
     efc:	00f8c821 	addu	t9,a3,t8
     f00:	872f0002 	lh	t7,2(t9)
     f04:	004f082a 	slt	at,v0,t7
     f08:	50200011 	beqzl	at,f50 <func_80039448+0x108>
     f0c:	240b0006 	li	t3,6
     f10:	94ae0006 	lhu	t6,6(a1)
     f14:	240b0006 	li	t3,6
     f18:	01a02825 	move	a1,t5
     f1c:	01cb0019 	multu	t6,t3
     f20:	26240044 	addiu	a0,s1,68
     f24:	0000c012 	mflo	t8
     f28:	00f8c821 	addu	t9,a3,t8
     f2c:	872f0002 	lh	t7,2(t9)
     f30:	004f082a 	slt	at,v0,t7
     f34:	50200006 	beqzl	at,f50 <func_80039448+0x108>
     f38:	240b0006 	li	t3,6
     f3c:	0c000000 	jal	0 <func_80038600>
     f40:	27a6003a 	addiu	a2,sp,58
     f44:	10000041 	b	104c <func_80039448+0x204>
     f48:	8fbf001c 	lw	ra,28(sp)
     f4c:	240b0006 	li	t3,6
     f50:	95230002 	lhu	v1,2(t1)
     f54:	1583000e 	bne	t4,v1,f90 <func_80039448+0x148>
     f58:	0003c880 	sll	t9,v1,0x2
     f5c:	26240044 	addiu	a0,s1,68
     f60:	0c000000 	jal	0 <func_80038600>
     f64:	afa90024 	sw	t1,36(sp)
     f68:	8e2e0048 	lw	t6,72(s1)
     f6c:	0002c080 	sll	t8,v0,0x2
     f70:	3050ffff 	andi	s0,v0,0xffff
     f74:	27a5003a 	addiu	a1,sp,58
     f78:	3406ffff 	li	a2,0xffff
     f7c:	0c000000 	jal	0 <func_80038600>
     f80:	01d82021 	addu	a0,t6,t8
     f84:	8fa90024 	lw	t1,36(sp)
     f88:	1000002f 	b	1048 <func_80039448+0x200>
     f8c:	a5300002 	sh	s0,2(t1)
     f90:	01592021 	addu	a0,t2,t9
     f94:	84860000 	lh	a2,0(a0)
     f98:	00067900 	sll	t7,a2,0x4
     f9c:	020f2821 	addu	a1,s0,t7
     fa0:	94ad0002 	lhu	t5,2(a1)
     fa4:	31ae1fff 	andi	t6,t5,0x1fff
     fa8:	01c80019 	multu	t6,t0
     fac:	0000c012 	mflo	t8
     fb0:	00f8c821 	addu	t9,a3,t8
     fb4:	872f0002 	lh	t7,2(t9)
     fb8:	004f082a 	slt	at,v0,t7
     fbc:	10200020 	beqz	at,1040 <func_80039448+0x1f8>
     fc0:	00000000 	nop
     fc4:	94ad0004 	lhu	t5,4(a1)
     fc8:	31ae1fff 	andi	t6,t5,0x1fff
     fcc:	01c80019 	multu	t6,t0
     fd0:	0000c012 	mflo	t8
     fd4:	00f8c821 	addu	t9,a3,t8
     fd8:	872f0002 	lh	t7,2(t9)
     fdc:	004f082a 	slt	at,v0,t7
     fe0:	10200017 	beqz	at,1040 <func_80039448+0x1f8>
     fe4:	00000000 	nop
     fe8:	94ad0006 	lhu	t5,6(a1)
     fec:	01ab0019 	multu	t5,t3
     ff0:	00007012 	mflo	t6
     ff4:	00eec021 	addu	t8,a3,t6
     ff8:	87190002 	lh	t9,2(t8)
     ffc:	0059082a 	slt	at,v0,t9
    1000:	1020000f 	beqz	at,1040 <func_80039448+0x1f8>
    1004:	00000000 	nop
    1008:	26240044 	addiu	a0,s1,68
    100c:	0c000000 	jal	0 <func_80038600>
    1010:	afa90024 	sw	t1,36(sp)
    1014:	8fa90024 	lw	t1,36(sp)
    1018:	8e2f0048 	lw	t7,72(s1)
    101c:	00026880 	sll	t5,v0,0x2
    1020:	3050ffff 	andi	s0,v0,0xffff
    1024:	27a5003a 	addiu	a1,sp,58
    1028:	95260002 	lhu	a2,2(t1)
    102c:	0c000000 	jal	0 <func_80038600>
    1030:	01ed2021 	addu	a0,t7,t5
    1034:	8fa90024 	lw	t1,36(sp)
    1038:	10000003 	b	1048 <func_80039448+0x200>
    103c:	a5300002 	sh	s0,2(t1)
    1040:	1000ffc3 	b	f50 <func_80039448+0x108>
    1044:	00804825 	move	t1,a0
    1048:	8fbf001c 	lw	ra,28(sp)
    104c:	8fb00014 	lw	s0,20(sp)
    1050:	8fb10018 	lw	s1,24(sp)
    1054:	03e00008 	jr	ra
    1058:	27bd0028 	addiu	sp,sp,40

0000105c <func_8003965C>:
    105c:	27bdffe0 	addiu	sp,sp,-32
    1060:	87ae0032 	lh	t6,50(sp)
    1064:	afbf001c 	sw	ra,28(sp)
    1068:	afa40020 	sw	a0,32(sp)
    106c:	000e7900 	sll	t7,t6,0x4
    1070:	afa50024 	sw	a1,36(sp)
    1074:	00cfc021 	addu	t8,a2,t7
    1078:	8702000a 	lh	v0,10(t8)
    107c:	00a02025 	move	a0,a1
    1080:	8fa50020 	lw	a1,32(sp)
    1084:	28414000 	slti	at,v0,16384
    1088:	54200006 	bnezl	at,10a4 <func_8003965C+0x48>
    108c:	2841999b 	slti	at,v0,-26213
    1090:	0c000000 	jal	0 <func_80038600>
    1094:	afae0010 	sw	t6,16(sp)
    1098:	10000012 	b	10e4 <func_8003965C+0x88>
    109c:	8fbf001c 	lw	ra,28(sp)
    10a0:	2841999b 	slti	at,v0,-26213
    10a4:	10200009 	beqz	at,10cc <func_8003965C+0x70>
    10a8:	8fa50020 	lw	a1,32(sp)
    10ac:	8fa50020 	lw	a1,32(sp)
    10b0:	87b90032 	lh	t9,50(sp)
    10b4:	8fa40024 	lw	a0,36(sp)
    10b8:	24a50004 	addiu	a1,a1,4
    10bc:	0c000000 	jal	0 <func_80038600>
    10c0:	afb90010 	sw	t9,16(sp)
    10c4:	10000007 	b	10e4 <func_8003965C+0x88>
    10c8:	8fbf001c 	lw	ra,28(sp)
    10cc:	87a80032 	lh	t0,50(sp)
    10d0:	8fa40024 	lw	a0,36(sp)
    10d4:	24a50002 	addiu	a1,a1,2
    10d8:	0c000000 	jal	0 <func_80038600>
    10dc:	afa80010 	sw	t0,16(sp)
    10e0:	8fbf001c 	lw	ra,28(sp)
    10e4:	27bd0020 	addiu	sp,sp,32
    10e8:	03e00008 	jr	ra
    10ec:	00000000 	nop

000010f0 <func_800396F0>:
    10f0:	27bdff78 	addiu	sp,sp,-136
    10f4:	afbf0054 	sw	ra,84(sp)
    10f8:	afbe0050 	sw	s8,80(sp)
    10fc:	afb7004c 	sw	s7,76(sp)
    1100:	afb60048 	sw	s6,72(sp)
    1104:	afb50044 	sw	s5,68(sp)
    1108:	afb40040 	sw	s4,64(sp)
    110c:	afb3003c 	sw	s3,60(sp)
    1110:	afb20038 	sw	s2,56(sp)
    1114:	afb10034 	sw	s1,52(sp)
    1118:	afb00030 	sw	s0,48(sp)
    111c:	f7b60028 	sdc1	$f22,40(sp)
    1120:	f7b40020 	sdc1	$f20,32(sp)
    1124:	afa5008c 	sw	a1,140(sp)
    1128:	afa70094 	sw	a3,148(sp)
    112c:	94c20000 	lhu	v0,0(a2)
    1130:	c7ac009c 	lwc1	$f12,156(sp)
    1134:	3415ffff 	li	s5,0xffff
    1138:	30b0ffff 	andi	s0,a1,0xffff
    113c:	00809825 	move	s3,a0
    1140:	16a20003 	bne	s5,v0,1150 <func_800396F0+0x60>
    1144:	46006506 	mov.s	$f20,$f12
    1148:	1000006a 	b	12f4 <func_800396F0+0x204>
    114c:	46006006 	mov.s	$f0,$f12
    1150:	8e650048 	lw	a1,72(s3)
    1154:	8e660000 	lw	a2,0(s3)
    1158:	00027080 	sll	t6,v0,0x2
    115c:	32090007 	andi	t1,s0,0x7
    1160:	00094b40 	sll	t1,t1,0xd
    1164:	c7b600a0 	lwc1	$f22,160(sp)
    1168:	27be0078 	addiu	s8,sp,120
    116c:	24170006 	li	s7,6
    1170:	8fb600a4 	lw	s6,164(sp)
    1174:	24140006 	li	s4,6
    1178:	8fb20098 	lw	s2,152(sp)
    117c:	00ae8821 	addu	s1,a1,t6
    1180:	8cc80018 	lw	t0,24(a2)
    1184:	86220000 	lh	v0,0(s1)
    1188:	32d80001 	andi	t8,s6,0x1
    118c:	00028100 	sll	s0,v0,0x4
    1190:	01101821 	addu	v1,t0,s0
    1194:	94640002 	lhu	a0,2(v1)
    1198:	00897824 	and	t7,a0,t1
    119c:	55e00007 	bnezl	t7,11bc <func_800396F0+0xcc>
    11a0:	96220002 	lhu	v0,2(s1)
    11a4:	13000009 	beqz	t8,11cc <func_800396F0+0xdc>
    11a8:	308b1fff 	andi	t3,a0,0x1fff
    11ac:	8479000a 	lh	t9,10(v1)
    11b0:	07210006 	bgez	t9,11cc <func_800396F0+0xdc>
    11b4:	00000000 	nop
    11b8:	96220002 	lhu	v0,2(s1)
    11bc:	12a2004c 	beq	s5,v0,12f0 <func_800396F0+0x200>
    11c0:	00025080 	sll	t2,v0,0x2
    11c4:	1000ffef 	b	1184 <func_800396F0+0x94>
    11c8:	00aa8821 	addu	s1,a1,t2
    11cc:	01740019 	multu	t3,s4
    11d0:	8cc50010 	lw	a1,16(a2)
    11d4:	c6400004 	lwc1	$f0,4(s2)
    11d8:	01102021 	addu	a0,t0,s0
    11dc:	00006012 	mflo	t4
    11e0:	00ac6821 	addu	t5,a1,t4
    11e4:	85ae0002 	lh	t6,2(t5)
    11e8:	448e2000 	mtc1	t6,$f4
    11ec:	00000000 	nop
    11f0:	468021a0 	cvt.s.w	$f6,$f4
    11f4:	4606003c 	c.lt.s	$f0,$f6
    11f8:	00000000 	nop
    11fc:	4502001b 	bc1fl	126c <func_800396F0+0x17c>
    1200:	8e460000 	lw	a2,0(s2)
    1204:	946f0004 	lhu	t7,4(v1)
    1208:	31f81fff 	andi	t8,t7,0x1fff
    120c:	03140019 	multu	t8,s4
    1210:	0000c812 	mflo	t9
    1214:	00b95021 	addu	t2,a1,t9
    1218:	854b0002 	lh	t3,2(t2)
    121c:	448b4000 	mtc1	t3,$f8
    1220:	00000000 	nop
    1224:	468042a0 	cvt.s.w	$f10,$f8
    1228:	460a003c 	c.lt.s	$f0,$f10
    122c:	00000000 	nop
    1230:	4502000e 	bc1fl	126c <func_800396F0+0x17c>
    1234:	8e460000 	lw	a2,0(s2)
    1238:	946c0006 	lhu	t4,6(v1)
    123c:	01970019 	multu	t4,s7
    1240:	00006812 	mflo	t5
    1244:	00ad7021 	addu	t6,a1,t5
    1248:	85cf0002 	lh	t7,2(t6)
    124c:	448f8000 	mtc1	t7,$f16
    1250:	00000000 	nop
    1254:	468084a0 	cvt.s.w	$f18,$f16
    1258:	4612003c 	c.lt.s	$f0,$f18
    125c:	00000000 	nop
    1260:	45030024 	bc1tl	12f4 <func_800396F0+0x204>
    1264:	4600a006 	mov.s	$f0,$f20
    1268:	8e460000 	lw	a2,0(s2)
    126c:	8e470008 	lw	a3,8(s2)
    1270:	afa9005c 	sw	t1,92(sp)
    1274:	e7b60014 	swc1	$f22,20(sp)
    1278:	0c000000 	jal	0 <func_80038600>
    127c:	afbe0010 	sw	s8,16(sp)
    1280:	24010001 	li	at,1
    1284:	14410011 	bne	v0,at,12cc <func_800396F0+0x1dc>
    1288:	8fa9005c 	lw	t1,92(sp)
    128c:	c7a40078 	lwc1	$f4,120(sp)
    1290:	c6460004 	lwc1	$f6,4(s2)
    1294:	4606203c 	c.lt.s	$f4,$f6
    1298:	00000000 	nop
    129c:	4502000c 	bc1fl	12d0 <func_800396F0+0x1e0>
    12a0:	96220002 	lhu	v0,2(s1)
    12a4:	4604a03c 	c.lt.s	$f20,$f4
    12a8:	00000000 	nop
    12ac:	45020008 	bc1fl	12d0 <func_800396F0+0x1e0>
    12b0:	96220002 	lhu	v0,2(s1)
    12b4:	8e780000 	lw	t8,0(s3)
    12b8:	8fab0094 	lw	t3,148(sp)
    12bc:	46002506 	mov.s	$f20,$f4
    12c0:	8f190018 	lw	t9,24(t8)
    12c4:	03305021 	addu	t2,t9,s0
    12c8:	ad6a0000 	sw	t2,0(t3)
    12cc:	96220002 	lhu	v0,2(s1)
    12d0:	52a20008 	beql	s5,v0,12f4 <func_800396F0+0x204>
    12d4:	4600a006 	mov.s	$f0,$f20
    12d8:	8e660000 	lw	a2,0(s3)
    12dc:	8e650048 	lw	a1,72(s3)
    12e0:	00026080 	sll	t4,v0,0x2
    12e4:	8cc80018 	lw	t0,24(a2)
    12e8:	1000ffa6 	b	1184 <func_800396F0+0x94>
    12ec:	00ac8821 	addu	s1,a1,t4
    12f0:	4600a006 	mov.s	$f0,$f20
    12f4:	8fbf0054 	lw	ra,84(sp)
    12f8:	d7b40020 	ldc1	$f20,32(sp)
    12fc:	d7b60028 	ldc1	$f22,40(sp)
    1300:	8fb00030 	lw	s0,48(sp)
    1304:	8fb10034 	lw	s1,52(sp)
    1308:	8fb20038 	lw	s2,56(sp)
    130c:	8fb3003c 	lw	s3,60(sp)
    1310:	8fb40040 	lw	s4,64(sp)
    1314:	8fb50044 	lw	s5,68(sp)
    1318:	8fb60048 	lw	s6,72(sp)
    131c:	8fb7004c 	lw	s7,76(sp)
    1320:	8fbe0050 	lw	s8,80(sp)
    1324:	03e00008 	jr	ra
    1328:	27bd0088 	addiu	sp,sp,136

0000132c <func_8003992C>:
    132c:	27bdffd0 	addiu	sp,sp,-48
    1330:	afb00028 	sw	s0,40(sp)
    1334:	8fb00044 	lw	s0,68(sp)
    1338:	c7ac004c 	lwc1	$f12,76(sp)
    133c:	afbf002c 	sw	ra,44(sp)
    1340:	320e0004 	andi	t6,s0,0x4
    1344:	afa40030 	sw	a0,48(sp)
    1348:	afa50034 	sw	a1,52(sp)
    134c:	afa60038 	sw	a2,56(sp)
    1350:	afa7003c 	sw	a3,60(sp)
    1354:	11c0000c 	beqz	t6,1388 <func_8003992C+0x5c>
    1358:	46006086 	mov.s	$f2,$f12
    135c:	8faf0040 	lw	t7,64(sp)
    1360:	c7a40048 	lwc1	$f4,72(sp)
    1364:	00a02025 	move	a0,a1
    1368:	97a5003a 	lhu	a1,58(sp)
    136c:	8fa60030 	lw	a2,48(sp)
    1370:	e7ac0014 	swc1	$f12,20(sp)
    1374:	afa0001c 	sw	zero,28(sp)
    1378:	afaf0010 	sw	t7,16(sp)
    137c:	0c000000 	jal	0 <func_80038600>
    1380:	e7a40018 	swc1	$f4,24(sp)
    1384:	46000086 	mov.s	$f2,$f0
    1388:	32180002 	andi	t8,s0,0x2
    138c:	17000002 	bnez	t8,1398 <func_8003992C+0x6c>
    1390:	32190008 	andi	t9,s0,0x8
    1394:	13200011 	beqz	t9,13dc <func_8003992C+0xb0>
    1398:	32080010 	andi	t0,s0,0x10
    139c:	11000002 	beqz	t0,13a8 <func_8003992C+0x7c>
    13a0:	00001025 	move	v0,zero
    13a4:	24020001 	li	v0,1
    13a8:	8fa60030 	lw	a2,48(sp)
    13ac:	8fa90040 	lw	t1,64(sp)
    13b0:	c7a60048 	lwc1	$f6,72(sp)
    13b4:	8fa40034 	lw	a0,52(sp)
    13b8:	97a5003a 	lhu	a1,58(sp)
    13bc:	8fa7003c 	lw	a3,60(sp)
    13c0:	e7a20014 	swc1	$f2,20(sp)
    13c4:	afa2001c 	sw	v0,28(sp)
    13c8:	24c60002 	addiu	a2,a2,2
    13cc:	afa90010 	sw	t1,16(sp)
    13d0:	0c000000 	jal	0 <func_80038600>
    13d4:	e7a60018 	swc1	$f6,24(sp)
    13d8:	46000086 	mov.s	$f2,$f0
    13dc:	320a0001 	andi	t2,s0,0x1
    13e0:	11400011 	beqz	t2,1428 <func_8003992C+0xfc>
    13e4:	320b0010 	andi	t3,s0,0x10
    13e8:	11600002 	beqz	t3,13f4 <func_8003992C+0xc8>
    13ec:	00001025 	move	v0,zero
    13f0:	24020001 	li	v0,1
    13f4:	8fa60030 	lw	a2,48(sp)
    13f8:	8fac0040 	lw	t4,64(sp)
    13fc:	c7a80048 	lwc1	$f8,72(sp)
    1400:	8fa40034 	lw	a0,52(sp)
    1404:	97a5003a 	lhu	a1,58(sp)
    1408:	8fa7003c 	lw	a3,60(sp)
    140c:	e7a20014 	swc1	$f2,20(sp)
    1410:	afa2001c 	sw	v0,28(sp)
    1414:	24c60004 	addiu	a2,a2,4
    1418:	afac0010 	sw	t4,16(sp)
    141c:	0c000000 	jal	0 <func_80038600>
    1420:	e7a80018 	swc1	$f8,24(sp)
    1424:	46000086 	mov.s	$f2,$f0
    1428:	8fbf002c 	lw	ra,44(sp)
    142c:	8fb00028 	lw	s0,40(sp)
    1430:	27bd0030 	addiu	sp,sp,48
    1434:	03e00008 	jr	ra
    1438:	46001006 	mov.s	$f0,$f2

0000143c <func_80039A3C>:
    143c:	c7a40024 	lwc1	$f4,36(sp)
    1440:	c7a60020 	lwc1	$f6,32(sp)
    1444:	c7aa001c 	lwc1	$f10,28(sp)
    1448:	c7b20010 	lwc1	$f18,16(sp)
    144c:	46062201 	sub.s	$f8,$f4,$f6
    1450:	c4d00000 	lwc1	$f16,0(a2)
    1454:	460a4002 	mul.s	$f0,$f8,$f10
    1458:	00000000 	nop
    145c:	46120102 	mul.s	$f4,$f0,$f18
    1460:	46048180 	add.s	$f6,$f16,$f4
    1464:	e4c60000 	swc1	$f6,0(a2)
    1468:	c7aa0018 	lwc1	$f10,24(sp)
    146c:	c4e80000 	lwc1	$f8,0(a3)
    1470:	460a0482 	mul.s	$f18,$f0,$f10
    1474:	46124400 	add.s	$f16,$f8,$f18
    1478:	e4f00000 	swc1	$f16,0(a3)
    147c:	8fae0028 	lw	t6,40(sp)
    1480:	8dc20000 	lw	v0,0(t6)
    1484:	14400004 	bnez	v0,1498 <func_80039A3C+0x5c>
    1488:	00000000 	nop
    148c:	adc50000 	sw	a1,0(t6)
    1490:	03e00008 	jr	ra
    1494:	24020001 	li	v0,1
    1498:	8c8f0000 	lw	t7,0(a0)
    149c:	94590000 	lhu	t9,0(v0)
    14a0:	00001025 	move	v0,zero
    14a4:	8df8001c 	lw	t8,28(t7)
    14a8:	001940c0 	sll	t0,t9,0x3
    14ac:	8fab0028 	lw	t3,40(sp)
    14b0:	03084821 	addu	t1,t8,t0
    14b4:	8d230004 	lw	v1,4(t1)
    14b8:	00035100 	sll	t2,v1,0x4
    14bc:	05410003 	bgez	t2,14cc <func_80039A3C+0x90>
    14c0:	00000000 	nop
    14c4:	10000001 	b	14cc <func_80039A3C+0x90>
    14c8:	24020001 	li	v0,1
    14cc:	54400005 	bnezl	v0,14e4 <func_80039A3C+0xa8>
    14d0:	00001025 	move	v0,zero
    14d4:	ad650000 	sw	a1,0(t3)
    14d8:	03e00008 	jr	ra
    14dc:	24020001 	li	v0,1
    14e0:	00001025 	move	v0,zero
    14e4:	03e00008 	jr	ra
    14e8:	00000000 	nop

000014ec <func_80039AEC>:
    14ec:	27bdfef8 	addiu	sp,sp,-264
    14f0:	afbf008c 	sw	ra,140(sp)
    14f4:	afbe0088 	sw	s8,136(sp)
    14f8:	afb70084 	sw	s7,132(sp)
    14fc:	afb60080 	sw	s6,128(sp)
    1500:	afb5007c 	sw	s5,124(sp)
    1504:	afb40078 	sw	s4,120(sp)
    1508:	afb30074 	sw	s3,116(sp)
    150c:	afb20070 	sw	s2,112(sp)
    1510:	afb1006c 	sw	s1,108(sp)
    1514:	afb00068 	sw	s0,104(sp)
    1518:	f7be0060 	sdc1	$f30,96(sp)
    151c:	f7bc0058 	sdc1	$f28,88(sp)
    1520:	f7ba0050 	sdc1	$f26,80(sp)
    1524:	f7b80048 	sdc1	$f24,72(sp)
    1528:	f7b60040 	sdc1	$f22,64(sp)
    152c:	f7b40038 	sdc1	$f20,56(sp)
    1530:	afa40108 	sw	a0,264(sp)
    1534:	afa60110 	sw	a2,272(sp)
    1538:	afa70114 	sw	a3,276(sp)
    153c:	afa000e8 	sw	zero,232(sp)
    1540:	948f0002 	lhu	t7,2(a0)
    1544:	3414ffff 	li	s4,0xffff
    1548:	00a09825 	move	s3,a1
    154c:	168f0003 	bne	s4,t7,155c <func_80039AEC+0x70>
    1550:	8fb6011c 	lw	s6,284(sp)
    1554:	10000210 	b	1d98 <func_80039AEC+0x8ac>
    1558:	00001025 	move	v0,zero
    155c:	8ed90000 	lw	t9,0(s6)
    1560:	27b700fc 	addiu	s7,sp,252
    1564:	241e0006 	li	s8,6
    1568:	aef90000 	sw	t9,0(s7)
    156c:	8ed80004 	lw	t8,4(s6)
    1570:	24150006 	li	s5,6
    1574:	aef80004 	sw	t8,4(s7)
    1578:	8ed90008 	lw	t9,8(s6)
    157c:	aef90008 	sw	t9,8(s7)
    1580:	8e620000 	lw	v0,0(s3)
    1584:	8fa90108 	lw	t1,264(sp)
    1588:	c7bc0120 	lwc1	$f28,288(sp)
    158c:	8c480018 	lw	t0,24(v0)
    1590:	afa800e0 	sw	t0,224(sp)
    1594:	952a0002 	lhu	t2,2(t1)
    1598:	8e630048 	lw	v1,72(s3)
    159c:	8c520010 	lw	s2,16(v0)
    15a0:	000a5880 	sll	t3,t2,0x2
    15a4:	006b8821 	addu	s1,v1,t3
    15a8:	86220000 	lh	v0,0(s1)
    15ac:	8fad00e0 	lw	t5,224(sp)
    15b0:	c6c00004 	lwc1	$f0,4(s6)
    15b4:	00026100 	sll	t4,v0,0x4
    15b8:	018d8021 	addu	s0,t4,t5
    15bc:	960e0002 	lhu	t6,2(s0)
    15c0:	31cf1fff 	andi	t7,t6,0x1fff
    15c4:	01f50019 	multu	t7,s5
    15c8:	0000c012 	mflo	t8
    15cc:	0258c821 	addu	t9,s2,t8
    15d0:	87280002 	lh	t0,2(t9)
    15d4:	44882000 	mtc1	t0,$f4
    15d8:	00000000 	nop
    15dc:	468021a0 	cvt.s.w	$f6,$f4
    15e0:	4606003c 	c.lt.s	$f0,$f6
    15e4:	00000000 	nop
    15e8:	45020020 	bc1fl	166c <func_80039AEC+0x180>
    15ec:	860b0008 	lh	t3,8(s0)
    15f0:	96090004 	lhu	t1,4(s0)
    15f4:	312a1fff 	andi	t2,t1,0x1fff
    15f8:	01550019 	multu	t2,s5
    15fc:	00005812 	mflo	t3
    1600:	024b6021 	addu	t4,s2,t3
    1604:	858d0002 	lh	t5,2(t4)
    1608:	448d4000 	mtc1	t5,$f8
    160c:	00000000 	nop
    1610:	468042a0 	cvt.s.w	$f10,$f8
    1614:	460a003c 	c.lt.s	$f0,$f10
    1618:	00000000 	nop
    161c:	45020013 	bc1fl	166c <func_80039AEC+0x180>
    1620:	860b0008 	lh	t3,8(s0)
    1624:	960e0006 	lhu	t6,6(s0)
    1628:	01de0019 	multu	t6,s8
    162c:	00007812 	mflo	t7
    1630:	024fc021 	addu	t8,s2,t7
    1634:	87190002 	lh	t9,2(t8)
    1638:	44992000 	mtc1	t9,$f4
    163c:	00000000 	nop
    1640:	468021a0 	cvt.s.w	$f6,$f4
    1644:	4606003c 	c.lt.s	$f0,$f6
    1648:	00000000 	nop
    164c:	45020007 	bc1fl	166c <func_80039AEC+0x180>
    1650:	860b0008 	lh	t3,8(s0)
    1654:	8fa80108 	lw	t0,264(sp)
    1658:	95090002 	lhu	t1,2(t0)
    165c:	00095080 	sll	t2,t1,0x2
    1660:	100000dc 	b	19d4 <func_80039AEC+0x4e8>
    1664:	006a8821 	addu	s1,v1,t2
    1668:	860b0008 	lh	t3,8(s0)
    166c:	860c000a 	lh	t4,10(s0)
    1670:	860d000c 	lh	t5,12(s0)
    1674:	448b4000 	mtc1	t3,$f8
    1678:	448c2000 	mtc1	t4,$f4
    167c:	3c010000 	lui	at,0x0
    1680:	468042a0 	cvt.s.w	$f10,$f8
    1684:	c4220000 	lwc1	$f2,0(at)
    1688:	448d4000 	mtc1	t5,$f8
    168c:	860e000e 	lh	t6,14(s0)
    1690:	afb70010 	sw	s7,16(sp)
    1694:	468021a0 	cvt.s.w	$f6,$f4
    1698:	46025582 	mul.s	$f22,$f10,$f2
    169c:	468042a0 	cvt.s.w	$f10,$f8
    16a0:	46023682 	mul.s	$f26,$f6,$f2
    16a4:	448e4000 	mtc1	t6,$f8
    16a8:	4600b306 	mov.s	$f12,$f22
    16ac:	46025602 	mul.s	$f24,$f10,$f2
    16b0:	4600d386 	mov.s	$f14,$f26
    16b4:	4616b102 	mul.s	$f4,$f22,$f22
    16b8:	00000000 	nop
    16bc:	4618c182 	mul.s	$f6,$f24,$f24
    16c0:	4406c000 	mfc1	a2,$f24
    16c4:	46804220 	cvt.s.w	$f8,$f8
    16c8:	46062000 	add.s	$f0,$f4,$f6
    16cc:	44074000 	mfc1	a3,$f8
    16d0:	0c000000 	jal	0 <func_80038600>
    16d4:	46000504 	sqrt.s	$f20,$f0
    16d8:	46000786 	mov.s	$f30,$f0
    16dc:	46000005 	abs.s	$f0,$f0
    16e0:	97b80112 	lhu	t8,274(sp)
    16e4:	4600e03c 	c.lt.s	$f28,$f0
    16e8:	00000000 	nop
    16ec:	45030008 	bc1tl	1710 <func_80039AEC+0x224>
    16f0:	96220002 	lhu	v0,2(s1)
    16f4:	960f0002 	lhu	t7,2(s0)
    16f8:	33190007 	andi	t9,t8,0x7
    16fc:	00194340 	sll	t0,t9,0xd
    1700:	01e84824 	and	t1,t7,t0
    1704:	1120000f 	beqz	t1,1744 <func_80039AEC+0x258>
    1708:	3c010000 	lui	at,0x0
    170c:	96220002 	lhu	v0,2(s1)
    1710:	56820009 	bnel	s4,v0,1738 <func_80039AEC+0x24c>
    1714:	8e630048 	lw	v1,72(s3)
    1718:	8fab0108 	lw	t3,264(sp)
    171c:	8e6a0048 	lw	t2,72(s3)
    1720:	c6c00004 	lwc1	$f0,4(s6)
    1724:	956c0002 	lhu	t4,2(t3)
    1728:	000c6880 	sll	t5,t4,0x2
    172c:	100000a9 	b	19d4 <func_80039AEC+0x4e8>
    1730:	014d8821 	addu	s1,t2,t5
    1734:	8e630048 	lw	v1,72(s3)
    1738:	00027080 	sll	t6,v0,0x2
    173c:	1000ff9a 	b	15a8 <func_80039AEC+0xbc>
    1740:	006e8821 	addu	s1,v1,t6
    1744:	c42a0000 	lwc1	$f10,0(at)
    1748:	4600a005 	abs.s	$f0,$f20
    174c:	3c040000 	lui	a0,0x0
    1750:	460a003c 	c.lt.s	$f0,$f10
    1754:	3c050000 	lui	a1,0x0
    1758:	24a50000 	addiu	a1,a1,0
    175c:	24840000 	addiu	a0,a0,0
    1760:	45020004 	bc1fl	1774 <func_80039AEC+0x288>
    1764:	3c013f80 	lui	at,0x3f80
    1768:	0c000000 	jal	0 <func_80038600>
    176c:	24060b26 	li	a2,2854
    1770:	3c013f80 	lui	at,0x3f80
    1774:	44812000 	mtc1	at,$f4
    1778:	4600c005 	abs.s	$f0,$f24
    177c:	3c010000 	lui	at,0x0
    1780:	46142383 	div.s	$f14,$f4,$f20
    1784:	c4260000 	lwc1	$f6,0(at)
    1788:	460e0402 	mul.s	$f16,$f0,$f14
    178c:	4606803c 	c.lt.s	$f16,$f6
    1790:	00000000 	nop
    1794:	45020010 	bc1fl	17d8 <func_80039AEC+0x2ec>
    1798:	960b0002 	lhu	t3,2(s0)
    179c:	96220002 	lhu	v0,2(s1)
    17a0:	56820009 	bnel	s4,v0,17c8 <func_80039AEC+0x2dc>
    17a4:	8e630048 	lw	v1,72(s3)
    17a8:	8fb90108 	lw	t9,264(sp)
    17ac:	8e780048 	lw	t8,72(s3)
    17b0:	c6c00004 	lwc1	$f0,4(s6)
    17b4:	972f0002 	lhu	t7,2(t9)
    17b8:	000f4080 	sll	t0,t7,0x2
    17bc:	10000085 	b	19d4 <func_80039AEC+0x4e8>
    17c0:	03088821 	addu	s1,t8,t0
    17c4:	8e630048 	lw	v1,72(s3)
    17c8:	00024880 	sll	t1,v0,0x2
    17cc:	1000ff76 	b	15a8 <func_80039AEC+0xbc>
    17d0:	00698821 	addu	s1,v1,t1
    17d4:	960b0002 	lhu	t3,2(s0)
    17d8:	96190004 	lhu	t9,4(s0)
    17dc:	316c1fff 	andi	t4,t3,0x1fff
    17e0:	01950019 	multu	t4,s5
    17e4:	332f1fff 	andi	t7,t9,0x1fff
    17e8:	00005012 	mflo	t2
    17ec:	024a6821 	addu	t5,s2,t2
    17f0:	85ae0004 	lh	t6,4(t5)
    17f4:	01f50019 	multu	t7,s5
    17f8:	448e4000 	mtc1	t6,$f8
    17fc:	00000000 	nop
    1800:	46804320 	cvt.s.w	$f12,$f8
    1804:	0000c012 	mflo	t8
    1808:	02584021 	addu	t0,s2,t8
    180c:	85090004 	lh	t1,4(t0)
    1810:	46006086 	mov.s	$f2,$f12
    1814:	44895000 	mtc1	t1,$f10
    1818:	00000000 	nop
    181c:	46805020 	cvt.s.w	$f0,$f10
    1820:	4602003c 	c.lt.s	$f0,$f2
    1824:	00000000 	nop
    1828:	45020004 	bc1fl	183c <func_80039AEC+0x350>
    182c:	4600603c 	c.lt.s	$f12,$f0
    1830:	10000006 	b	184c <func_80039AEC+0x360>
    1834:	46000086 	mov.s	$f2,$f0
    1838:	4600603c 	c.lt.s	$f12,$f0
    183c:	00000000 	nop
    1840:	45020003 	bc1fl	1850 <func_80039AEC+0x364>
    1844:	960b0006 	lhu	t3,6(s0)
    1848:	46000306 	mov.s	$f12,$f0
    184c:	960b0006 	lhu	t3,6(s0)
    1850:	017e0019 	multu	t3,s8
    1854:	00006012 	mflo	t4
    1858:	024c5021 	addu	t2,s2,t4
    185c:	854d0004 	lh	t5,4(t2)
    1860:	448d2000 	mtc1	t5,$f4
    1864:	00000000 	nop
    1868:	46802020 	cvt.s.w	$f0,$f4
    186c:	4602003c 	c.lt.s	$f0,$f2
    1870:	00000000 	nop
    1874:	45020004 	bc1fl	1888 <func_80039AEC+0x39c>
    1878:	4600603c 	c.lt.s	$f12,$f0
    187c:	10000006 	b	1898 <func_80039AEC+0x3ac>
    1880:	46000086 	mov.s	$f2,$f0
    1884:	4600603c 	c.lt.s	$f12,$f0
    1888:	00000000 	nop
    188c:	45020003 	bc1fl	189c <func_80039AEC+0x3b0>
    1890:	461c1081 	sub.s	$f2,$f2,$f28
    1894:	46000306 	mov.s	$f12,$f0
    1898:	461c1081 	sub.s	$f2,$f2,$f28
    189c:	c7b20104 	lwc1	$f18,260(sp)
    18a0:	461c6300 	add.s	$f12,$f12,$f28
    18a4:	4602903c 	c.lt.s	$f18,$f2
    18a8:	00000000 	nop
    18ac:	45030008 	bc1tl	18d0 <func_80039AEC+0x3e4>
    18b0:	96220002 	lhu	v0,2(s1)
    18b4:	4612603c 	c.lt.s	$f12,$f18
    18b8:	02002025 	move	a0,s0
    18bc:	02402825 	move	a1,s2
    18c0:	8fa600fc 	lw	a2,252(sp)
    18c4:	4500000f 	bc1f	1904 <func_80039AEC+0x418>
    18c8:	27a900ec 	addiu	t1,sp,236
    18cc:	96220002 	lhu	v0,2(s1)
    18d0:	56820009 	bnel	s4,v0,18f8 <func_80039AEC+0x40c>
    18d4:	8e630048 	lw	v1,72(s3)
    18d8:	8fb90108 	lw	t9,264(sp)
    18dc:	8e6e0048 	lw	t6,72(s3)
    18e0:	c6c00004 	lwc1	$f0,4(s6)
    18e4:	972f0002 	lhu	t7,2(t9)
    18e8:	000fc080 	sll	t8,t7,0x2
    18ec:	10000039 	b	19d4 <func_80039AEC+0x4e8>
    18f0:	01d88821 	addu	s1,t6,t8
    18f4:	8e630048 	lw	v1,72(s3)
    18f8:	00024080 	sll	t0,v0,0x2
    18fc:	1000ff2a 	b	15a8 <func_80039AEC+0xbc>
    1900:	00688821 	addu	s1,v1,t0
    1904:	8ec70004 	lw	a3,4(s6)
    1908:	e7b000b8 	swc1	$f16,184(sp)
    190c:	e7ae009c 	swc1	$f14,156(sp)
    1910:	0c000000 	jal	0 <func_80038600>
    1914:	afa90010 	sw	t1,16(sp)
    1918:	c7ae009c 	lwc1	$f14,156(sp)
    191c:	1040001f 	beqz	v0,199c <func_80039AEC+0x4b0>
    1920:	c7b000b8 	lwc1	$f16,184(sp)
    1924:	4610e203 	div.s	$f8,$f28,$f16
    1928:	c7b20104 	lwc1	$f18,260(sp)
    192c:	c7a600ec 	lwc1	$f6,236(sp)
    1930:	46123081 	sub.s	$f2,$f6,$f18
    1934:	46001005 	abs.s	$f0,$f2
    1938:	4608003e 	c.le.s	$f0,$f8
    193c:	00000000 	nop
    1940:	45020017 	bc1fl	19a0 <func_80039AEC+0x4b4>
    1944:	96220002 	lhu	v0,2(s1)
    1948:	46181102 	mul.s	$f4,$f2,$f24
    194c:	3c014080 	lui	at,0x4080
    1950:	44815000 	mtc1	at,$f10
    1954:	02602025 	move	a0,s3
    1958:	02002825 	move	a1,s0
    195c:	02e03025 	move	a2,s7
    1960:	27a70104 	addiu	a3,sp,260
    1964:	460a203e 	c.le.s	$f4,$f10
    1968:	240c0001 	li	t4,1
    196c:	4502000c 	bc1fl	19a0 <func_80039AEC+0x4b4>
    1970:	96220002 	lhu	v0,2(s1)
    1974:	8fab0124 	lw	t3,292(sp)
    1978:	e7b60010 	swc1	$f22,16(sp)
    197c:	e7ba0014 	swc1	$f26,20(sp)
    1980:	e7b80018 	swc1	$f24,24(sp)
    1984:	e7ae001c 	swc1	$f14,28(sp)
    1988:	e7be0020 	swc1	$f30,32(sp)
    198c:	e7bc0024 	swc1	$f28,36(sp)
    1990:	afac00e8 	sw	t4,232(sp)
    1994:	0c000000 	jal	0 <func_80038600>
    1998:	afab0028 	sw	t3,40(sp)
    199c:	96220002 	lhu	v0,2(s1)
    19a0:	56820009 	bnel	s4,v0,19c8 <func_80039AEC+0x4dc>
    19a4:	8e630048 	lw	v1,72(s3)
    19a8:	8fad0108 	lw	t5,264(sp)
    19ac:	8e6a0048 	lw	t2,72(s3)
    19b0:	c6c00004 	lwc1	$f0,4(s6)
    19b4:	95b90002 	lhu	t9,2(t5)
    19b8:	00197880 	sll	t7,t9,0x2
    19bc:	10000005 	b	19d4 <func_80039AEC+0x4e8>
    19c0:	014f8821 	addu	s1,t2,t7
    19c4:	8e630048 	lw	v1,72(s3)
    19c8:	00027080 	sll	t6,v0,0x2
    19cc:	1000fef6 	b	15a8 <func_80039AEC+0xbc>
    19d0:	006e8821 	addu	s1,v1,t6
    19d4:	86220000 	lh	v0,0(s1)
    19d8:	8fa800e0 	lw	t0,224(sp)
    19dc:	0002c100 	sll	t8,v0,0x4
    19e0:	03088021 	addu	s0,t8,t0
    19e4:	96090002 	lhu	t1,2(s0)
    19e8:	312b1fff 	andi	t3,t1,0x1fff
    19ec:	01750019 	multu	t3,s5
    19f0:	00006012 	mflo	t4
    19f4:	024c6821 	addu	t5,s2,t4
    19f8:	85b90002 	lh	t9,2(t5)
    19fc:	44993000 	mtc1	t9,$f6
    1a00:	00000000 	nop
    1a04:	46803220 	cvt.s.w	$f8,$f6
    1a08:	4608003c 	c.lt.s	$f0,$f8
    1a0c:	00000000 	nop
    1a10:	4502001b 	bc1fl	1a80 <func_80039AEC+0x594>
    1a14:	86190008 	lh	t9,8(s0)
    1a18:	960a0004 	lhu	t2,4(s0)
    1a1c:	314f1fff 	andi	t7,t2,0x1fff
    1a20:	01f50019 	multu	t7,s5
    1a24:	00007012 	mflo	t6
    1a28:	024ec021 	addu	t8,s2,t6
    1a2c:	87080002 	lh	t0,2(t8)
    1a30:	44885000 	mtc1	t0,$f10
    1a34:	00000000 	nop
    1a38:	46805120 	cvt.s.w	$f4,$f10
    1a3c:	4604003c 	c.lt.s	$f0,$f4
    1a40:	00000000 	nop
    1a44:	4502000e 	bc1fl	1a80 <func_80039AEC+0x594>
    1a48:	86190008 	lh	t9,8(s0)
    1a4c:	96090006 	lhu	t1,6(s0)
    1a50:	013e0019 	multu	t1,s8
    1a54:	00005812 	mflo	t3
    1a58:	024b6021 	addu	t4,s2,t3
    1a5c:	858d0002 	lh	t5,2(t4)
    1a60:	448d3000 	mtc1	t5,$f6
    1a64:	00000000 	nop
    1a68:	46803220 	cvt.s.w	$f8,$f6
    1a6c:	4608003c 	c.lt.s	$f0,$f8
    1a70:	00000000 	nop
    1a74:	450300c2 	bc1tl	1d80 <func_80039AEC+0x894>
    1a78:	c7a800fc 	lwc1	$f8,252(sp)
    1a7c:	86190008 	lh	t9,8(s0)
    1a80:	860a000a 	lh	t2,10(s0)
    1a84:	860f000c 	lh	t7,12(s0)
    1a88:	44995000 	mtc1	t9,$f10
    1a8c:	448a3000 	mtc1	t2,$f6
    1a90:	3c010000 	lui	at,0x0
    1a94:	46805120 	cvt.s.w	$f4,$f10
    1a98:	c4220000 	lwc1	$f2,0(at)
    1a9c:	448f5000 	mtc1	t7,$f10
    1aa0:	860e000e 	lh	t6,14(s0)
    1aa4:	afb70010 	sw	s7,16(sp)
    1aa8:	46803220 	cvt.s.w	$f8,$f6
    1aac:	46022582 	mul.s	$f22,$f4,$f2
    1ab0:	46805120 	cvt.s.w	$f4,$f10
    1ab4:	46024682 	mul.s	$f26,$f8,$f2
    1ab8:	448e5000 	mtc1	t6,$f10
    1abc:	4600b306 	mov.s	$f12,$f22
    1ac0:	46022602 	mul.s	$f24,$f4,$f2
    1ac4:	4600d386 	mov.s	$f14,$f26
    1ac8:	4616b182 	mul.s	$f6,$f22,$f22
    1acc:	00000000 	nop
    1ad0:	4618c202 	mul.s	$f8,$f24,$f24
    1ad4:	4406c000 	mfc1	a2,$f24
    1ad8:	468052a0 	cvt.s.w	$f10,$f10
    1adc:	46083000 	add.s	$f0,$f6,$f8
    1ae0:	44075000 	mfc1	a3,$f10
    1ae4:	0c000000 	jal	0 <func_80038600>
    1ae8:	46000504 	sqrt.s	$f20,$f0
    1aec:	46000786 	mov.s	$f30,$f0
    1af0:	46000005 	abs.s	$f0,$f0
    1af4:	97a80112 	lhu	t0,274(sp)
    1af8:	4600e03c 	c.lt.s	$f28,$f0
    1afc:	00000000 	nop
    1b00:	45030008 	bc1tl	1b24 <func_80039AEC+0x638>
    1b04:	96220002 	lhu	v0,2(s1)
    1b08:	96180002 	lhu	t8,2(s0)
    1b0c:	31090007 	andi	t1,t0,0x7
    1b10:	00095b40 	sll	t3,t1,0xd
    1b14:	030b6024 	and	t4,t8,t3
    1b18:	11800008 	beqz	t4,1b3c <func_80039AEC+0x650>
    1b1c:	3c010000 	lui	at,0x0
    1b20:	96220002 	lhu	v0,2(s1)
    1b24:	52820096 	beql	s4,v0,1d80 <func_80039AEC+0x894>
    1b28:	c7a800fc 	lwc1	$f8,252(sp)
    1b2c:	8e6d0048 	lw	t5,72(s3)
    1b30:	0002c880 	sll	t9,v0,0x2
    1b34:	1000008f 	b	1d74 <func_80039AEC+0x888>
    1b38:	01b98821 	addu	s1,t5,t9
    1b3c:	c4240000 	lwc1	$f4,0(at)
    1b40:	4600a005 	abs.s	$f0,$f20
    1b44:	3c040000 	lui	a0,0x0
    1b48:	4604003c 	c.lt.s	$f0,$f4
    1b4c:	3c050000 	lui	a1,0x0
    1b50:	24a50000 	addiu	a1,a1,0
    1b54:	24840000 	addiu	a0,a0,0
    1b58:	45020004 	bc1fl	1b6c <func_80039AEC+0x680>
    1b5c:	3c013f80 	lui	at,0x3f80
    1b60:	0c000000 	jal	0 <func_80038600>
    1b64:	24060b94 	li	a2,2964
    1b68:	3c013f80 	lui	at,0x3f80
    1b6c:	44813000 	mtc1	at,$f6
    1b70:	4600b005 	abs.s	$f0,$f22
    1b74:	3c010000 	lui	at,0x0
    1b78:	46143383 	div.s	$f14,$f6,$f20
    1b7c:	c4280000 	lwc1	$f8,0(at)
    1b80:	460e0402 	mul.s	$f16,$f0,$f14
    1b84:	4608803c 	c.lt.s	$f16,$f8
    1b88:	00000000 	nop
    1b8c:	45020009 	bc1fl	1bb4 <func_80039AEC+0x6c8>
    1b90:	960e0002 	lhu	t6,2(s0)
    1b94:	96220002 	lhu	v0,2(s1)
    1b98:	52820079 	beql	s4,v0,1d80 <func_80039AEC+0x894>
    1b9c:	c7a800fc 	lwc1	$f8,252(sp)
    1ba0:	8e6a0048 	lw	t2,72(s3)
    1ba4:	00027880 	sll	t7,v0,0x2
    1ba8:	10000072 	b	1d74 <func_80039AEC+0x888>
    1bac:	014f8821 	addu	s1,t2,t7
    1bb0:	960e0002 	lhu	t6,2(s0)
    1bb4:	960c0004 	lhu	t4,4(s0)
    1bb8:	31c81fff 	andi	t0,t6,0x1fff
    1bbc:	01150019 	multu	t0,s5
    1bc0:	318d1fff 	andi	t5,t4,0x1fff
    1bc4:	00004812 	mflo	t1
    1bc8:	0249c021 	addu	t8,s2,t1
    1bcc:	870b0000 	lh	t3,0(t8)
    1bd0:	01b50019 	multu	t5,s5
    1bd4:	448b5000 	mtc1	t3,$f10
    1bd8:	00000000 	nop
    1bdc:	46805320 	cvt.s.w	$f12,$f10
    1be0:	0000c812 	mflo	t9
    1be4:	02595021 	addu	t2,s2,t9
    1be8:	854f0000 	lh	t7,0(t2)
    1bec:	46006086 	mov.s	$f2,$f12
    1bf0:	448f2000 	mtc1	t7,$f4
    1bf4:	00000000 	nop
    1bf8:	46802020 	cvt.s.w	$f0,$f4
    1bfc:	4602003c 	c.lt.s	$f0,$f2
    1c00:	00000000 	nop
    1c04:	45020004 	bc1fl	1c18 <func_80039AEC+0x72c>
    1c08:	4600603c 	c.lt.s	$f12,$f0
    1c0c:	10000006 	b	1c28 <func_80039AEC+0x73c>
    1c10:	46000086 	mov.s	$f2,$f0
    1c14:	4600603c 	c.lt.s	$f12,$f0
    1c18:	00000000 	nop
    1c1c:	45020003 	bc1fl	1c2c <func_80039AEC+0x740>
    1c20:	960e0006 	lhu	t6,6(s0)
    1c24:	46000306 	mov.s	$f12,$f0
    1c28:	960e0006 	lhu	t6,6(s0)
    1c2c:	01de0019 	multu	t6,s8
    1c30:	00004012 	mflo	t0
    1c34:	02484821 	addu	t1,s2,t0
    1c38:	85380000 	lh	t8,0(t1)
    1c3c:	44983000 	mtc1	t8,$f6
    1c40:	00000000 	nop
    1c44:	46803020 	cvt.s.w	$f0,$f6
    1c48:	4602003c 	c.lt.s	$f0,$f2
    1c4c:	00000000 	nop
    1c50:	45020004 	bc1fl	1c64 <func_80039AEC+0x778>
    1c54:	4600603c 	c.lt.s	$f12,$f0
    1c58:	10000006 	b	1c74 <func_80039AEC+0x788>
    1c5c:	46000086 	mov.s	$f2,$f0
    1c60:	4600603c 	c.lt.s	$f12,$f0
    1c64:	00000000 	nop
    1c68:	45020003 	bc1fl	1c78 <func_80039AEC+0x78c>
    1c6c:	461c1081 	sub.s	$f2,$f2,$f28
    1c70:	46000306 	mov.s	$f12,$f0
    1c74:	461c1081 	sub.s	$f2,$f2,$f28
    1c78:	c7b200fc 	lwc1	$f18,252(sp)
    1c7c:	461c6300 	add.s	$f12,$f12,$f28
    1c80:	4602903c 	c.lt.s	$f18,$f2
    1c84:	00000000 	nop
    1c88:	45030008 	bc1tl	1cac <func_80039AEC+0x7c0>
    1c8c:	96220002 	lhu	v0,2(s1)
    1c90:	4612603c 	c.lt.s	$f12,$f18
    1c94:	02002025 	move	a0,s0
    1c98:	02402825 	move	a1,s2
    1c9c:	8fa70104 	lw	a3,260(sp)
    1ca0:	45000008 	bc1f	1cc4 <func_80039AEC+0x7d8>
    1ca4:	27ad00ec 	addiu	t5,sp,236
    1ca8:	96220002 	lhu	v0,2(s1)
    1cac:	52820034 	beql	s4,v0,1d80 <func_80039AEC+0x894>
    1cb0:	c7a800fc 	lwc1	$f8,252(sp)
    1cb4:	8e6b0048 	lw	t3,72(s3)
    1cb8:	00026080 	sll	t4,v0,0x2
    1cbc:	1000002d 	b	1d74 <func_80039AEC+0x888>
    1cc0:	016c8821 	addu	s1,t3,t4
    1cc4:	8ec60004 	lw	a2,4(s6)
    1cc8:	e7b000b8 	swc1	$f16,184(sp)
    1ccc:	e7ae009c 	swc1	$f14,156(sp)
    1cd0:	0c000000 	jal	0 <func_80038600>
    1cd4:	afad0010 	sw	t5,16(sp)
    1cd8:	c7ae009c 	lwc1	$f14,156(sp)
    1cdc:	1040001f 	beqz	v0,1d5c <func_80039AEC+0x870>
    1ce0:	c7b000b8 	lwc1	$f16,184(sp)
    1ce4:	4610e283 	div.s	$f10,$f28,$f16
    1ce8:	c7b200fc 	lwc1	$f18,252(sp)
    1cec:	c7a800ec 	lwc1	$f8,236(sp)
    1cf0:	46124081 	sub.s	$f2,$f8,$f18
    1cf4:	46001005 	abs.s	$f0,$f2
    1cf8:	460a003e 	c.le.s	$f0,$f10
    1cfc:	00000000 	nop
    1d00:	45020017 	bc1fl	1d60 <func_80039AEC+0x874>
    1d04:	96220002 	lhu	v0,2(s1)
    1d08:	46161182 	mul.s	$f6,$f2,$f22
    1d0c:	3c014080 	lui	at,0x4080
    1d10:	44812000 	mtc1	at,$f4
    1d14:	02602025 	move	a0,s3
    1d18:	02002825 	move	a1,s0
    1d1c:	02e03025 	move	a2,s7
    1d20:	27a70104 	addiu	a3,sp,260
    1d24:	4604303e 	c.le.s	$f6,$f4
    1d28:	240a0001 	li	t2,1
    1d2c:	4502000c 	bc1fl	1d60 <func_80039AEC+0x874>
    1d30:	96220002 	lhu	v0,2(s1)
    1d34:	8fb90124 	lw	t9,292(sp)
    1d38:	e7b60010 	swc1	$f22,16(sp)
    1d3c:	e7ba0014 	swc1	$f26,20(sp)
    1d40:	e7b80018 	swc1	$f24,24(sp)
    1d44:	e7ae001c 	swc1	$f14,28(sp)
    1d48:	e7be0020 	swc1	$f30,32(sp)
    1d4c:	e7bc0024 	swc1	$f28,36(sp)
    1d50:	afaa00e8 	sw	t2,232(sp)
    1d54:	0c000000 	jal	0 <func_80038600>
    1d58:	afb90028 	sw	t9,40(sp)
    1d5c:	96220002 	lhu	v0,2(s1)
    1d60:	52820007 	beql	s4,v0,1d80 <func_80039AEC+0x894>
    1d64:	c7a800fc 	lwc1	$f8,252(sp)
    1d68:	8e6f0048 	lw	t7,72(s3)
    1d6c:	00027080 	sll	t6,v0,0x2
    1d70:	01ee8821 	addu	s1,t7,t6
    1d74:	1000ff17 	b	19d4 <func_80039AEC+0x4e8>
    1d78:	c6c00004 	lwc1	$f0,4(s6)
    1d7c:	c7a800fc 	lwc1	$f8,252(sp)
    1d80:	8fa80114 	lw	t0,276(sp)
    1d84:	e5080000 	swc1	$f8,0(t0)
    1d88:	8fa90118 	lw	t1,280(sp)
    1d8c:	c7aa0104 	lwc1	$f10,260(sp)
    1d90:	e52a0000 	swc1	$f10,0(t1)
    1d94:	8fa200e8 	lw	v0,232(sp)
    1d98:	8fbf008c 	lw	ra,140(sp)
    1d9c:	d7b40038 	ldc1	$f20,56(sp)
    1da0:	d7b60040 	ldc1	$f22,64(sp)
    1da4:	d7b80048 	ldc1	$f24,72(sp)
    1da8:	d7ba0050 	ldc1	$f26,80(sp)
    1dac:	d7bc0058 	ldc1	$f28,88(sp)
    1db0:	d7be0060 	ldc1	$f30,96(sp)
    1db4:	8fb00068 	lw	s0,104(sp)
    1db8:	8fb1006c 	lw	s1,108(sp)
    1dbc:	8fb20070 	lw	s2,112(sp)
    1dc0:	8fb30074 	lw	s3,116(sp)
    1dc4:	8fb40078 	lw	s4,120(sp)
    1dc8:	8fb5007c 	lw	s5,124(sp)
    1dcc:	8fb60080 	lw	s6,128(sp)
    1dd0:	8fb70084 	lw	s7,132(sp)
    1dd4:	8fbe0088 	lw	s8,136(sp)
    1dd8:	03e00008 	jr	ra
    1ddc:	27bd0108 	addiu	sp,sp,264

00001de0 <func_8003A3E0>:
    1de0:	27bdff60 	addiu	sp,sp,-160
    1de4:	afbf0064 	sw	ra,100(sp)
    1de8:	afbe0060 	sw	s8,96(sp)
    1dec:	afb7005c 	sw	s7,92(sp)
    1df0:	afb60058 	sw	s6,88(sp)
    1df4:	afb50054 	sw	s5,84(sp)
    1df8:	afb40050 	sw	s4,80(sp)
    1dfc:	afb3004c 	sw	s3,76(sp)
    1e00:	afb20048 	sw	s2,72(sp)
    1e04:	afb10044 	sw	s1,68(sp)
    1e08:	afb00040 	sw	s0,64(sp)
    1e0c:	f7ba0038 	sdc1	$f26,56(sp)
    1e10:	f7b80030 	sdc1	$f24,48(sp)
    1e14:	f7b60028 	sdc1	$f22,40(sp)
    1e18:	f7b40020 	sdc1	$f20,32(sp)
    1e1c:	afa500a4 	sw	a1,164(sp)
    1e20:	94830004 	lhu	v1,4(a0)
    1e24:	3415ffff 	li	s5,0xffff
    1e28:	30a5ffff 	andi	a1,a1,0xffff
    1e2c:	00c09025 	move	s2,a2
    1e30:	00e0a025 	move	s4,a3
    1e34:	16a30003 	bne	s5,v1,1e44 <func_8003A3E0+0x64>
    1e38:	00004025 	move	t0,zero
    1e3c:	1000004e 	b	1f78 <func_8003A3E0+0x198>
    1e40:	00001025 	move	v0,zero
    1e44:	8fb300b0 	lw	s3,176(sp)
    1e48:	8e420000 	lw	v0,0(s2)
    1e4c:	8e4e0048 	lw	t6,72(s2)
    1e50:	c6640004 	lwc1	$f4,4(s3)
    1e54:	8c560018 	lw	s6,24(v0)
    1e58:	8c570010 	lw	s7,16(v0)
    1e5c:	e6840000 	swc1	$f4,0(s4)
    1e60:	8e580000 	lw	t8,0(s2)
    1e64:	00037880 	sll	t7,v1,0x2
    1e68:	30be0007 	andi	s8,a1,0x7
    1e6c:	3c010000 	lui	at,0x0
    1e70:	4480d000 	mtc1	zero,$f26
    1e74:	4480c000 	mtc1	zero,$f24
    1e78:	c4360000 	lwc1	$f22,0(at)
    1e7c:	001ef340 	sll	s8,s8,0xd
    1e80:	c7b400b4 	lwc1	$f20,180(sp)
    1e84:	01cf8821 	addu	s1,t6,t7
    1e88:	8f040018 	lw	a0,24(t8)
    1e8c:	86220000 	lh	v0,0(s1)
    1e90:	02e02825 	move	a1,s7
    1e94:	27ad008c 	addiu	t5,sp,140
    1e98:	00021900 	sll	v1,v0,0x4
    1e9c:	0083c821 	addu	t9,a0,v1
    1ea0:	97290002 	lhu	t1,2(t9)
    1ea4:	00768021 	addu	s0,v1,s6
    1ea8:	013e5024 	and	t2,t1,s8
    1eac:	51400009 	beqzl	t2,1ed4 <func_8003A3E0+0xf4>
    1eb0:	8e660000 	lw	a2,0(s3)
    1eb4:	96220002 	lhu	v0,2(s1)
    1eb8:	52a2002f 	beql	s5,v0,1f78 <func_8003A3E0+0x198>
    1ebc:	01001025 	move	v0,t0
    1ec0:	8e4b0048 	lw	t3,72(s2)
    1ec4:	00026080 	sll	t4,v0,0x2
    1ec8:	1000fff0 	b	1e8c <func_8003A3E0+0xac>
    1ecc:	016c8821 	addu	s1,t3,t4
    1ed0:	8e660000 	lw	a2,0(s3)
    1ed4:	8e670008 	lw	a3,8(s3)
    1ed8:	afa8009c 	sw	t0,156(sp)
    1edc:	afad0010 	sw	t5,16(sp)
    1ee0:	0c000000 	jal	0 <func_80038600>
    1ee4:	02002025 	move	a0,s0
    1ee8:	10400019 	beqz	v0,1f50 <func_8003A3E0+0x170>
    1eec:	8fa8009c 	lw	t0,156(sp)
    1ef0:	860e000a 	lh	t6,10(s0)
    1ef4:	c7a6008c 	lwc1	$f6,140(sp)
    1ef8:	c6880000 	lwc1	$f8,0(s4)
    1efc:	448e5000 	mtc1	t6,$f10
    1f00:	46083001 	sub.s	$f0,$f6,$f8
    1f04:	46805420 	cvt.s.w	$f16,$f10
    1f08:	4600c03c 	c.lt.s	$f24,$f0
    1f0c:	46168082 	mul.s	$f2,$f16,$f22
    1f10:	45020010 	bc1fl	1f54 <func_8003A3E0+0x174>
    1f14:	96220002 	lhu	v0,2(s1)
    1f18:	4614003c 	c.lt.s	$f0,$f20
    1f1c:	00000000 	nop
    1f20:	4502000c 	bc1fl	1f54 <func_8003A3E0+0x174>
    1f24:	96220002 	lhu	v0,2(s1)
    1f28:	46020482 	mul.s	$f18,$f0,$f2
    1f2c:	461a903e 	c.le.s	$f18,$f26
    1f30:	00000000 	nop
    1f34:	45020007 	bc1fl	1f54 <func_8003A3E0+0x174>
    1f38:	96220002 	lhu	v0,2(s1)
    1f3c:	46143101 	sub.s	$f4,$f6,$f20
    1f40:	24080001 	li	t0,1
    1f44:	e6840000 	swc1	$f4,0(s4)
    1f48:	8faf00b8 	lw	t7,184(sp)
    1f4c:	adf00000 	sw	s0,0(t7)
    1f50:	96220002 	lhu	v0,2(s1)
    1f54:	52a20008 	beql	s5,v0,1f78 <func_8003A3E0+0x198>
    1f58:	01001025 	move	v0,t0
    1f5c:	8e580048 	lw	t8,72(s2)
    1f60:	8e490000 	lw	t1,0(s2)
    1f64:	0002c880 	sll	t9,v0,0x2
    1f68:	03198821 	addu	s1,t8,t9
    1f6c:	1000ffc7 	b	1e8c <func_8003A3E0+0xac>
    1f70:	8d240018 	lw	a0,24(t1)
    1f74:	01001025 	move	v0,t0
    1f78:	8fbf0064 	lw	ra,100(sp)
    1f7c:	d7b40020 	ldc1	$f20,32(sp)
    1f80:	d7b60028 	ldc1	$f22,40(sp)
    1f84:	d7b80030 	ldc1	$f24,48(sp)
    1f88:	d7ba0038 	ldc1	$f26,56(sp)
    1f8c:	8fb00040 	lw	s0,64(sp)
    1f90:	8fb10044 	lw	s1,68(sp)
    1f94:	8fb20048 	lw	s2,72(sp)
    1f98:	8fb3004c 	lw	s3,76(sp)
    1f9c:	8fb40050 	lw	s4,80(sp)
    1fa0:	8fb50054 	lw	s5,84(sp)
    1fa4:	8fb60058 	lw	s6,88(sp)
    1fa8:	8fb7005c 	lw	s7,92(sp)
    1fac:	8fbe0060 	lw	s8,96(sp)
    1fb0:	03e00008 	jr	ra
    1fb4:	27bd00a0 	addiu	sp,sp,160

00001fb8 <func_8003A5B8>:
    1fb8:	27bdff68 	addiu	sp,sp,-152
    1fbc:	afbf0054 	sw	ra,84(sp)
    1fc0:	afbe0050 	sw	s8,80(sp)
    1fc4:	afb7004c 	sw	s7,76(sp)
    1fc8:	afb60048 	sw	s6,72(sp)
    1fcc:	afb50044 	sw	s5,68(sp)
    1fd0:	afb40040 	sw	s4,64(sp)
    1fd4:	afb3003c 	sw	s3,60(sp)
    1fd8:	afb20038 	sw	s2,56(sp)
    1fdc:	afb10034 	sw	s1,52(sp)
    1fe0:	afb00030 	sw	s0,48(sp)
    1fe4:	f7b40028 	sdc1	$f20,40(sp)
    1fe8:	afa600a0 	sw	a2,160(sp)
    1fec:	afa700a4 	sw	a3,164(sp)
    1ff0:	afa00078 	sw	zero,120(sp)
    1ff4:	94820000 	lhu	v0,0(a0)
    1ff8:	8cae0000 	lw	t6,0(a1)
    1ffc:	341effff 	li	s8,0xffff
    2000:	00a09025 	move	s2,a1
    2004:	17c20003 	bne	s8,v0,2014 <func_8003A5B8+0x5c>
    2008:	8dd60018 	lw	s6,24(t6)
    200c:	10000065 	b	21a4 <func_8003A5B8+0x1ec>
    2010:	00001025 	move	v0,zero
    2014:	8e450048 	lw	a1,72(s2)
    2018:	00027880 	sll	t7,v0,0x2
    201c:	8e47004c 	lw	a3,76(s2)
    2020:	c7b400bc 	lwc1	$f20,188(sp)
    2024:	8fb700b8 	lw	s7,184(sp)
    2028:	8fb500ac 	lw	s5,172(sp)
    202c:	8fb400a8 	lw	s4,168(sp)
    2030:	27b30084 	addiu	s3,sp,132
    2034:	00af8821 	addu	s1,a1,t7
    2038:	86220000 	lh	v0,0(s1)
    203c:	24010001 	li	at,1
    2040:	97a800a2 	lhu	t0,162(sp)
    2044:	00e21821 	addu	v1,a3,v0
    2048:	90780000 	lbu	t8,0(v1)
    204c:	00023100 	sll	a2,v0,0x4
    2050:	1301000d 	beq	t8,at,2088 <func_8003A5B8+0xd0>
    2054:	02c6c821 	addu	t9,s6,a2
    2058:	97240002 	lhu	a0,2(t9)
    205c:	31090007 	andi	t1,t0,0x7
    2060:	00095340 	sll	t2,t1,0xd
    2064:	008a5824 	and	t3,a0,t2
    2068:	15600007 	bnez	t3,2088 <func_8003A5B8+0xd0>
    206c:	97a200a6 	lhu	v0,166(sp)
    2070:	1040000a 	beqz	v0,209c <func_8003A5B8+0xe4>
    2074:	304c0007 	andi	t4,v0,0x7
    2078:	000c6b40 	sll	t5,t4,0xd
    207c:	008d7024 	and	t6,a0,t5
    2080:	55c00007 	bnezl	t6,20a0 <func_8003A5B8+0xe8>
    2084:	24180001 	li	t8,1
    2088:	96220002 	lhu	v0,2(s1)
    208c:	13c20044 	beq	s8,v0,21a0 <func_8003A5B8+0x1e8>
    2090:	00027880 	sll	t7,v0,0x2
    2094:	1000ffe8 	b	2038 <func_8003A5B8+0x80>
    2098:	00af8821 	addu	s1,a1,t7
    209c:	24180001 	li	t8,1
    20a0:	a0780000 	sb	t8,0(v1)
    20a4:	8e590000 	lw	t9,0(s2)
    20a8:	00d68021 	addu	s0,a2,s6
    20ac:	02002025 	move	a0,s0
    20b0:	0c000000 	jal	0 <func_80038600>
    20b4:	8f250010 	lw	a1,16(t9)
    20b8:	44822000 	mtc1	v0,$f4
    20bc:	c6860004 	lwc1	$f6,4(s4)
    20c0:	02002025 	move	a0,s0
    20c4:	46802020 	cvt.s.w	$f0,$f4
    20c8:	02803025 	move	a2,s4
    20cc:	4600303c 	c.lt.s	$f6,$f0
    20d0:	00000000 	nop
    20d4:	45020007 	bc1fl	20f4 <func_8003A5B8+0x13c>
    20d8:	8e480000 	lw	t0,0(s2)
    20dc:	c6a80004 	lwc1	$f8,4(s5)
    20e0:	4600403c 	c.lt.s	$f8,$f0
    20e4:	00000000 	nop
    20e8:	4503002e 	bc1tl	21a4 <func_8003A5B8+0x1ec>
    20ec:	8fa20078 	lw	v0,120(sp)
    20f0:	8e480000 	lw	t0,0(s2)
    20f4:	8fa900c0 	lw	t1,192(sp)
    20f8:	02a03825 	move	a3,s5
    20fc:	8d050010 	lw	a1,16(t0)
    2100:	312a0008 	andi	t2,t1,0x8
    2104:	000a582b 	sltu	t3,zero,t2
    2108:	afab0014 	sw	t3,20(sp)
    210c:	e7b40018 	swc1	$f20,24(sp)
    2110:	0c000000 	jal	0 <func_80038600>
    2114:	afb30010 	sw	s3,16(sp)
    2118:	1040001a 	beqz	v0,2184 <func_8003A5B8+0x1cc>
    211c:	02802025 	move	a0,s4
    2120:	0c000000 	jal	0 <func_80038600>
    2124:	02602825 	move	a1,s3
    2128:	c6ea0000 	lwc1	$f10,0(s7)
    212c:	460a003c 	c.lt.s	$f0,$f10
    2130:	00000000 	nop
    2134:	45020014 	bc1fl	2188 <func_8003A5B8+0x1d0>
    2138:	96220002 	lhu	v0,2(s1)
    213c:	e6e00000 	swc1	$f0,0(s7)
    2140:	8e6e0000 	lw	t6,0(s3)
    2144:	8fac00b0 	lw	t4,176(sp)
    2148:	24080001 	li	t0,1
    214c:	ad8e0000 	sw	t6,0(t4)
    2150:	8e6d0004 	lw	t5,4(s3)
    2154:	ad8d0004 	sw	t5,4(t4)
    2158:	8e6e0008 	lw	t6,8(s3)
    215c:	ad8e0008 	sw	t6,8(t4)
    2160:	8e780000 	lw	t8,0(s3)
    2164:	aeb80000 	sw	t8,0(s5)
    2168:	8e6f0004 	lw	t7,4(s3)
    216c:	aeaf0004 	sw	t7,4(s5)
    2170:	8e780008 	lw	t8,8(s3)
    2174:	aeb80008 	sw	t8,8(s5)
    2178:	8fb900b4 	lw	t9,180(sp)
    217c:	af300000 	sw	s0,0(t9)
    2180:	afa80078 	sw	t0,120(sp)
    2184:	96220002 	lhu	v0,2(s1)
    2188:	13c20005 	beq	s8,v0,21a0 <func_8003A5B8+0x1e8>
    218c:	00024880 	sll	t1,v0,0x2
    2190:	8e450048 	lw	a1,72(s2)
    2194:	8e47004c 	lw	a3,76(s2)
    2198:	1000ffa7 	b	2038 <func_8003A5B8+0x80>
    219c:	00a98821 	addu	s1,a1,t1
    21a0:	8fa20078 	lw	v0,120(sp)
    21a4:	8fbf0054 	lw	ra,84(sp)
    21a8:	d7b40028 	ldc1	$f20,40(sp)
    21ac:	8fb00030 	lw	s0,48(sp)
    21b0:	8fb10034 	lw	s1,52(sp)
    21b4:	8fb20038 	lw	s2,56(sp)
    21b8:	8fb3003c 	lw	s3,60(sp)
    21bc:	8fb40040 	lw	s4,64(sp)
    21c0:	8fb50044 	lw	s5,68(sp)
    21c4:	8fb60048 	lw	s6,72(sp)
    21c8:	8fb7004c 	lw	s7,76(sp)
    21cc:	8fbe0050 	lw	s8,80(sp)
    21d0:	03e00008 	jr	ra
    21d4:	27bd0098 	addiu	sp,sp,152

000021d8 <func_8003A7D8>:
    21d8:	27bdffb8 	addiu	sp,sp,-72
    21dc:	afb10038 	sw	s1,56(sp)
    21e0:	8fb10070 	lw	s1,112(sp)
    21e4:	afb00034 	sw	s0,52(sp)
    21e8:	00808025 	move	s0,a0
    21ec:	322e0002 	andi	t6,s1,0x2
    21f0:	afbf003c 	sw	ra,60(sp)
    21f4:	afa5004c 	sw	a1,76(sp)
    21f8:	afa60050 	sw	a2,80(sp)
    21fc:	afa70054 	sw	a3,84(sp)
    2200:	11c00018 	beqz	t6,2264 <func_8003A7D8+0x8c>
    2204:	00001825 	move	v1,zero
    2208:	948f0000 	lhu	t7,0(a0)
    220c:	3401ffff 	li	at,0xffff
    2210:	97a60052 	lhu	a2,82(sp)
    2214:	11e10013 	beq	t7,at,2264 <func_8003A7D8+0x8c>
    2218:	97a70056 	lhu	a3,86(sp)
    221c:	8fb80058 	lw	t8,88(sp)
    2220:	8fb9005c 	lw	t9,92(sp)
    2224:	8fa80060 	lw	t0,96(sp)
    2228:	8fa90064 	lw	t1,100(sp)
    222c:	8faa006c 	lw	t2,108(sp)
    2230:	c7a40068 	lwc1	$f4,104(sp)
    2234:	afb10028 	sw	s1,40(sp)
    2238:	afa00044 	sw	zero,68(sp)
    223c:	afb80010 	sw	t8,16(sp)
    2240:	afb90014 	sw	t9,20(sp)
    2244:	afa80018 	sw	t0,24(sp)
    2248:	afa9001c 	sw	t1,28(sp)
    224c:	afaa0020 	sw	t2,32(sp)
    2250:	0c000000 	jal	0 <func_80038600>
    2254:	e7a40024 	swc1	$f4,36(sp)
    2258:	10400002 	beqz	v0,2264 <func_8003A7D8+0x8c>
    225c:	8fa30044 	lw	v1,68(sp)
    2260:	24030001 	li	v1,1
    2264:	322b0001 	andi	t3,s1,0x1
    2268:	5160001b 	beqzl	t3,22d8 <func_8003A7D8+0x100>
    226c:	32280004 	andi	t0,s1,0x4
    2270:	960c0002 	lhu	t4,2(s0)
    2274:	3401ffff 	li	at,0xffff
    2278:	26040002 	addiu	a0,s0,2
    227c:	11810015 	beq	t4,at,22d4 <func_8003A7D8+0xfc>
    2280:	8fa5004c 	lw	a1,76(sp)
    2284:	8fad0058 	lw	t5,88(sp)
    2288:	8fae005c 	lw	t6,92(sp)
    228c:	8faf0060 	lw	t7,96(sp)
    2290:	8fb80064 	lw	t8,100(sp)
    2294:	8fb9006c 	lw	t9,108(sp)
    2298:	c7a60068 	lwc1	$f6,104(sp)
    229c:	97a60052 	lhu	a2,82(sp)
    22a0:	97a70056 	lhu	a3,86(sp)
    22a4:	afb10028 	sw	s1,40(sp)
    22a8:	afa30044 	sw	v1,68(sp)
    22ac:	afad0010 	sw	t5,16(sp)
    22b0:	afae0014 	sw	t6,20(sp)
    22b4:	afaf0018 	sw	t7,24(sp)
    22b8:	afb8001c 	sw	t8,28(sp)
    22bc:	afb90020 	sw	t9,32(sp)
    22c0:	0c000000 	jal	0 <func_80038600>
    22c4:	e7a60024 	swc1	$f6,36(sp)
    22c8:	10400002 	beqz	v0,22d4 <func_8003A7D8+0xfc>
    22cc:	8fa30044 	lw	v1,68(sp)
    22d0:	24030001 	li	v1,1
    22d4:	32280004 	andi	t0,s1,0x4
    22d8:	5100001b 	beqzl	t0,2348 <func_8003A7D8+0x170>
    22dc:	8fbf003c 	lw	ra,60(sp)
    22e0:	96090004 	lhu	t1,4(s0)
    22e4:	3401ffff 	li	at,0xffff
    22e8:	26040004 	addiu	a0,s0,4
    22ec:	11210015 	beq	t1,at,2344 <func_8003A7D8+0x16c>
    22f0:	8fa5004c 	lw	a1,76(sp)
    22f4:	8faa0058 	lw	t2,88(sp)
    22f8:	8fab005c 	lw	t3,92(sp)
    22fc:	8fac0060 	lw	t4,96(sp)
    2300:	8fad0064 	lw	t5,100(sp)
    2304:	8fae006c 	lw	t6,108(sp)
    2308:	c7a80068 	lwc1	$f8,104(sp)
    230c:	97a60052 	lhu	a2,82(sp)
    2310:	97a70056 	lhu	a3,86(sp)
    2314:	afb10028 	sw	s1,40(sp)
    2318:	afa30044 	sw	v1,68(sp)
    231c:	afaa0010 	sw	t2,16(sp)
    2320:	afab0014 	sw	t3,20(sp)
    2324:	afac0018 	sw	t4,24(sp)
    2328:	afad001c 	sw	t5,28(sp)
    232c:	afae0020 	sw	t6,32(sp)
    2330:	0c000000 	jal	0 <func_80038600>
    2334:	e7a80024 	swc1	$f8,36(sp)
    2338:	10400002 	beqz	v0,2344 <func_8003A7D8+0x16c>
    233c:	8fa30044 	lw	v1,68(sp)
    2340:	24030001 	li	v1,1
    2344:	8fbf003c 	lw	ra,60(sp)
    2348:	8fb00034 	lw	s0,52(sp)
    234c:	8fb10038 	lw	s1,56(sp)
    2350:	27bd0048 	addiu	sp,sp,72
    2354:	03e00008 	jr	ra
    2358:	00601025 	move	v0,v1

0000235c <func_8003A95C>:
    235c:	27bdffb8 	addiu	sp,sp,-72
    2360:	afbf0044 	sw	ra,68(sp)
    2364:	afbe0040 	sw	s8,64(sp)
    2368:	afb7003c 	sw	s7,60(sp)
    236c:	afb60038 	sw	s6,56(sp)
    2370:	afb50034 	sw	s5,52(sp)
    2374:	afb40030 	sw	s4,48(sp)
    2378:	afb3002c 	sw	s3,44(sp)
    237c:	afb20028 	sw	s2,40(sp)
    2380:	afb10024 	sw	s1,36(sp)
    2384:	afb00020 	sw	s0,32(sp)
    2388:	f7b40018 	sdc1	$f20,24(sp)
    238c:	afa5004c 	sw	a1,76(sp)
    2390:	8cc20000 	lw	v0,0(a2)
    2394:	30be0007 	andi	s8,a1,0x7
    2398:	00808825 	move	s1,a0
    239c:	8c480018 	lw	t0,24(v0)
    23a0:	00c09825 	move	s3,a2
    23a4:	00e0a025 	move	s4,a3
    23a8:	001ef340 	sll	s8,s8,0xd
    23ac:	c7b40058 	lwc1	$f20,88(sp)
    23b0:	3415ffff 	li	s5,0xffff
    23b4:	24160006 	li	s6,6
    23b8:	8c520010 	lw	s2,16(v0)
    23bc:	0100b825 	move	s7,t0
    23c0:	86220000 	lh	v0,0(s1)
    23c4:	00021900 	sll	v1,v0,0x4
    23c8:	01037021 	addu	t6,t0,v1
    23cc:	95cf0002 	lhu	t7,2(t6)
    23d0:	00778021 	addu	s0,v1,s7
    23d4:	01fec024 	and	t8,t7,s8
    23d8:	53000009 	beqzl	t8,2400 <func_8003A95C+0xa4>
    23dc:	960a0002 	lhu	t2,2(s0)
    23e0:	96220002 	lhu	v0,2(s1)
    23e4:	52a20043 	beql	s5,v0,24f4 <func_8003A95C+0x198>
    23e8:	00001025 	move	v0,zero
    23ec:	8e790048 	lw	t9,72(s3)
    23f0:	00024880 	sll	t1,v0,0x2
    23f4:	1000fff2 	b	23c0 <func_8003A95C+0x64>
    23f8:	03298821 	addu	s1,t9,t1
    23fc:	960a0002 	lhu	t2,2(s0)
    2400:	c6840004 	lwc1	$f4,4(s4)
    2404:	02002025 	move	a0,s0
    2408:	314b1fff 	andi	t3,t2,0x1fff
    240c:	01760019 	multu	t3,s6
    2410:	46142000 	add.s	$f0,$f4,$f20
    2414:	02402825 	move	a1,s2
    2418:	00006012 	mflo	t4
    241c:	024c6821 	addu	t5,s2,t4
    2420:	85ae0002 	lh	t6,2(t5)
    2424:	448e3000 	mtc1	t6,$f6
    2428:	00000000 	nop
    242c:	46803220 	cvt.s.w	$f8,$f6
    2430:	4608003c 	c.lt.s	$f0,$f8
    2434:	00000000 	nop
    2438:	4502001c 	bc1fl	24ac <func_8003A95C+0x150>
    243c:	4407a000 	mfc1	a3,$f20
    2440:	960f0004 	lhu	t7,4(s0)
    2444:	31f81fff 	andi	t8,t7,0x1fff
    2448:	03160019 	multu	t8,s6
    244c:	0000c812 	mflo	t9
    2450:	02594821 	addu	t1,s2,t9
    2454:	852a0002 	lh	t2,2(t1)
    2458:	448a5000 	mtc1	t2,$f10
    245c:	00000000 	nop
    2460:	46805420 	cvt.s.w	$f16,$f10
    2464:	4610003c 	c.lt.s	$f0,$f16
    2468:	00000000 	nop
    246c:	4502000f 	bc1fl	24ac <func_8003A95C+0x150>
    2470:	4407a000 	mfc1	a3,$f20
    2474:	960b0006 	lhu	t3,6(s0)
    2478:	000b6080 	sll	t4,t3,0x2
    247c:	018b6023 	subu	t4,t4,t3
    2480:	000c6040 	sll	t4,t4,0x1
    2484:	024c6821 	addu	t5,s2,t4
    2488:	85ae0002 	lh	t6,2(t5)
    248c:	448e9000 	mtc1	t6,$f18
    2490:	00000000 	nop
    2494:	46809120 	cvt.s.w	$f4,$f18
    2498:	4604003c 	c.lt.s	$f0,$f4
    249c:	00000000 	nop
    24a0:	45030014 	bc1tl	24f4 <func_8003A95C+0x198>
    24a4:	00001025 	move	v0,zero
    24a8:	4407a000 	mfc1	a3,$f20
    24ac:	0c000000 	jal	0 <func_80038600>
    24b0:	02803025 	move	a2,s4
    24b4:	50400006 	beqzl	v0,24d0 <func_8003A95C+0x174>
    24b8:	96220002 	lhu	v0,2(s1)
    24bc:	8faf005c 	lw	t7,92(sp)
    24c0:	24020001 	li	v0,1
    24c4:	1000000b 	b	24f4 <func_8003A95C+0x198>
    24c8:	adf00000 	sw	s0,0(t7)
    24cc:	96220002 	lhu	v0,2(s1)
    24d0:	52a20008 	beql	s5,v0,24f4 <func_8003A95C+0x198>
    24d4:	00001025 	move	v0,zero
    24d8:	8e690000 	lw	t1,0(s3)
    24dc:	8e780048 	lw	t8,72(s3)
    24e0:	0002c880 	sll	t9,v0,0x2
    24e4:	8d280018 	lw	t0,24(t1)
    24e8:	1000ffb5 	b	23c0 <func_8003A95C+0x64>
    24ec:	03198821 	addu	s1,t8,t9
    24f0:	00001025 	move	v0,zero
    24f4:	8fbf0044 	lw	ra,68(sp)
    24f8:	d7b40018 	ldc1	$f20,24(sp)
    24fc:	8fb00020 	lw	s0,32(sp)
    2500:	8fb10024 	lw	s1,36(sp)
    2504:	8fb20028 	lw	s2,40(sp)
    2508:	8fb3002c 	lw	s3,44(sp)
    250c:	8fb40030 	lw	s4,48(sp)
    2510:	8fb50034 	lw	s5,52(sp)
    2514:	8fb60038 	lw	s6,56(sp)
    2518:	8fb7003c 	lw	s7,60(sp)
    251c:	8fbe0040 	lw	s8,64(sp)
    2520:	03e00008 	jr	ra
    2524:	27bd0048 	addiu	sp,sp,72

00002528 <func_8003AB28>:
    2528:	27bdffe0 	addiu	sp,sp,-32
    252c:	afbf001c 	sw	ra,28(sp)
    2530:	afa40020 	sw	a0,32(sp)
    2534:	afa50024 	sw	a1,36(sp)
    2538:	afa7002c 	sw	a3,44(sp)
    253c:	94820000 	lhu	v0,0(a0)
    2540:	97af003a 	lhu	t7,58(sp)
    2544:	3401ffff 	li	at,0xffff
    2548:	10410010 	beq	v0,at,258c <func_8003AB28+0x64>
    254c:	31f80004 	andi	t8,t7,0x4
    2550:	1700000e 	bnez	t8,258c <func_8003AB28+0x64>
    2554:	00024080 	sll	t0,v0,0x2
    2558:	8cd90048 	lw	t9,72(a2)
    255c:	c7a40030 	lwc1	$f4,48(sp)
    2560:	8fa90034 	lw	t1,52(sp)
    2564:	afa60028 	sw	a2,40(sp)
    2568:	97a50026 	lhu	a1,38(sp)
    256c:	03282021 	addu	a0,t9,t0
    2570:	e7a40010 	swc1	$f4,16(sp)
    2574:	0c000000 	jal	0 <func_80038600>
    2578:	afa90014 	sw	t1,20(sp)
    257c:	10400003 	beqz	v0,258c <func_8003AB28+0x64>
    2580:	8fa60028 	lw	a2,40(sp)
    2584:	1000002f 	b	2644 <func_8003AB28+0x11c>
    2588:	24020001 	li	v0,1
    258c:	8faa0020 	lw	t2,32(sp)
    2590:	97ab003a 	lhu	t3,58(sp)
    2594:	3401ffff 	li	at,0xffff
    2598:	95420002 	lhu	v0,2(t2)
    259c:	316c0002 	andi	t4,t3,0x2
    25a0:	50410012 	beql	v0,at,25ec <func_8003AB28+0xc4>
    25a4:	8fb80020 	lw	t8,32(sp)
    25a8:	1580000f 	bnez	t4,25e8 <func_8003AB28+0xc0>
    25ac:	00027080 	sll	t6,v0,0x2
    25b0:	8ccd0048 	lw	t5,72(a2)
    25b4:	c7a60030 	lwc1	$f6,48(sp)
    25b8:	8faf0034 	lw	t7,52(sp)
    25bc:	afa60028 	sw	a2,40(sp)
    25c0:	97a50026 	lhu	a1,38(sp)
    25c4:	8fa7002c 	lw	a3,44(sp)
    25c8:	01ae2021 	addu	a0,t5,t6
    25cc:	e7a60010 	swc1	$f6,16(sp)
    25d0:	0c000000 	jal	0 <func_80038600>
    25d4:	afaf0014 	sw	t7,20(sp)
    25d8:	10400003 	beqz	v0,25e8 <func_8003AB28+0xc0>
    25dc:	8fa60028 	lw	a2,40(sp)
    25e0:	10000018 	b	2644 <func_8003AB28+0x11c>
    25e4:	24020001 	li	v0,1
    25e8:	8fb80020 	lw	t8,32(sp)
    25ec:	97b9003a 	lhu	t9,58(sp)
    25f0:	3401ffff 	li	at,0xffff
    25f4:	97020004 	lhu	v0,4(t8)
    25f8:	33280001 	andi	t0,t9,0x1
    25fc:	50410011 	beql	v0,at,2644 <func_8003AB28+0x11c>
    2600:	00001025 	move	v0,zero
    2604:	1500000e 	bnez	t0,2640 <func_8003AB28+0x118>
    2608:	00025080 	sll	t2,v0,0x2
    260c:	8cc90048 	lw	t1,72(a2)
    2610:	c7a80030 	lwc1	$f8,48(sp)
    2614:	8fab0034 	lw	t3,52(sp)
    2618:	97a50026 	lhu	a1,38(sp)
    261c:	8fa7002c 	lw	a3,44(sp)
    2620:	012a2021 	addu	a0,t1,t2
    2624:	e7a80010 	swc1	$f8,16(sp)
    2628:	0c000000 	jal	0 <func_80038600>
    262c:	afab0014 	sw	t3,20(sp)
    2630:	50400004 	beqzl	v0,2644 <func_8003AB28+0x11c>
    2634:	00001025 	move	v0,zero
    2638:	10000002 	b	2644 <func_8003AB28+0x11c>
    263c:	24020001 	li	v0,1
    2640:	00001025 	move	v0,zero
    2644:	8fbf001c 	lw	ra,28(sp)
    2648:	27bd0020 	addiu	sp,sp,32
    264c:	03e00008 	jr	ra
    2650:	00000000 	nop

00002654 <func_8003AC54>:
    2654:	27bdffd8 	addiu	sp,sp,-40
    2658:	afa5002c 	sw	a1,44(sp)
    265c:	afbf0014 	sw	ra,20(sp)
    2660:	afa60030 	sw	a2,48(sp)
    2664:	00c02825 	move	a1,a2
    2668:	27a6001c 	addiu	a2,sp,28
    266c:	0c000000 	jal	0 <func_80038600>
    2670:	afa40028 	sw	a0,40(sp)
    2674:	8fa70028 	lw	a3,40(sp)
    2678:	8fae0024 	lw	t6,36(sp)
    267c:	24040006 	li	a0,6
    2680:	8ce3001c 	lw	v1,28(a3)
    2684:	8cf80020 	lw	t8,32(a3)
    2688:	8fab001c 	lw	t3,28(sp)
    268c:	01c30019 	multu	t6,v1
    2690:	8fae0020 	lw	t6,32(sp)
    2694:	8fa9002c 	lw	t1,44(sp)
    2698:	8fbf0014 	lw	ra,20(sp)
    269c:	27bd0028 	addiu	sp,sp,40
    26a0:	00007812 	mflo	t7
	...
    26ac:	01f80019 	multu	t7,t8
    26b0:	0000c812 	mflo	t9
	...
    26bc:	03240019 	multu	t9,a0
    26c0:	00004012 	mflo	t0
    26c4:	01095021 	addu	t2,t0,t1
    26c8:	00000000 	nop
    26cc:	01640019 	multu	t3,a0
    26d0:	00006012 	mflo	t4
    26d4:	014c6821 	addu	t5,t2,t4
    26d8:	00000000 	nop
    26dc:	01c30019 	multu	t6,v1
    26e0:	00007812 	mflo	t7
	...
    26ec:	01e40019 	multu	t7,a0
    26f0:	0000c012 	mflo	t8
    26f4:	01b81021 	addu	v0,t5,t8
    26f8:	03e00008 	jr	ra
    26fc:	00000000 	nop

00002700 <func_8003AD00>:
    2700:	27bdffd8 	addiu	sp,sp,-40
    2704:	afbf0014 	sw	ra,20(sp)
    2708:	afa5002c 	sw	a1,44(sp)
    270c:	afa40028 	sw	a0,40(sp)
    2710:	afa60030 	sw	a2,48(sp)
    2714:	0c000000 	jal	0 <func_80038600>
    2718:	00c02825 	move	a1,a2
    271c:	14400003 	bnez	v0,272c <func_8003AD00+0x2c>
    2720:	8fa40028 	lw	a0,40(sp)
    2724:	10000024 	b	27b8 <func_8003AD00+0xb8>
    2728:	00001025 	move	v0,zero
    272c:	8fa50030 	lw	a1,48(sp)
    2730:	0c000000 	jal	0 <func_80038600>
    2734:	27a6001c 	addiu	a2,sp,28
    2738:	8fae0028 	lw	t6,40(sp)
    273c:	8faf0024 	lw	t7,36(sp)
    2740:	24040006 	li	a0,6
    2744:	8dc3001c 	lw	v1,28(t6)
    2748:	8dd90020 	lw	t9,32(t6)
    274c:	8fac001c 	lw	t4,28(sp)
    2750:	01e30019 	multu	t7,v1
    2754:	8fae0020 	lw	t6,32(sp)
    2758:	8faa002c 	lw	t2,44(sp)
    275c:	0000c012 	mflo	t8
	...
    2768:	03190019 	multu	t8,t9
    276c:	00004012 	mflo	t0
	...
    2778:	01040019 	multu	t0,a0
    277c:	00004812 	mflo	t1
    2780:	012a5821 	addu	t3,t1,t2
    2784:	00000000 	nop
    2788:	01840019 	multu	t4,a0
    278c:	00006812 	mflo	t5
    2790:	016d7821 	addu	t7,t3,t5
    2794:	00000000 	nop
    2798:	01c30019 	multu	t6,v1
    279c:	0000c012 	mflo	t8
	...
    27a8:	03040019 	multu	t8,a0
    27ac:	0000c812 	mflo	t9
    27b0:	01f91021 	addu	v0,t7,t9
    27b4:	00000000 	nop
    27b8:	8fbf0014 	lw	ra,20(sp)
    27bc:	27bd0028 	addiu	sp,sp,40
    27c0:	03e00008 	jr	ra
    27c4:	00000000 	nop

000027c8 <func_8003ADC8>:
    27c8:	c4a40000 	lwc1	$f4,0(a1)
    27cc:	c4860004 	lwc1	$f6,4(a0)
    27d0:	c48a0034 	lwc1	$f10,52(a0)
    27d4:	46062201 	sub.s	$f8,$f4,$f6
    27d8:	460a4402 	mul.s	$f16,$f8,$f10
    27dc:	4600848d 	trunc.w.s	$f18,$f16
    27e0:	44029000 	mfc1	v0,$f18
    27e4:	00000000 	nop
    27e8:	acc20000 	sw	v0,0(a2)
    27ec:	c4860008 	lwc1	$f6,8(a0)
    27f0:	c4a40004 	lwc1	$f4,4(a1)
    27f4:	c48a0038 	lwc1	$f10,56(a0)
    27f8:	46062201 	sub.s	$f8,$f4,$f6
    27fc:	460a4402 	mul.s	$f16,$f8,$f10
    2800:	4600848d 	trunc.w.s	$f18,$f16
    2804:	44199000 	mfc1	t9,$f18
    2808:	00000000 	nop
    280c:	acd90004 	sw	t9,4(a2)
    2810:	c486000c 	lwc1	$f6,12(a0)
    2814:	c4a40008 	lwc1	$f4,8(a1)
    2818:	c48a003c 	lwc1	$f10,60(a0)
    281c:	46062201 	sub.s	$f8,$f4,$f6
    2820:	460a4402 	mul.s	$f16,$f8,$f10
    2824:	4600848d 	trunc.w.s	$f18,$f16
    2828:	44099000 	mfc1	t1,$f18
    282c:	04410003 	bgez	v0,283c <func_8003ADC8+0x74>
    2830:	acc90008 	sw	t1,8(a2)
    2834:	10000006 	b	2850 <func_8003ADC8+0x88>
    2838:	acc00000 	sw	zero,0(a2)
    283c:	8c83001c 	lw	v1,28(a0)
    2840:	0043082a 	slt	at,v0,v1
    2844:	14200002 	bnez	at,2850 <func_8003ADC8+0x88>
    2848:	246affff 	addiu	t2,v1,-1
    284c:	acca0000 	sw	t2,0(a2)
    2850:	8cc20004 	lw	v0,4(a2)
    2854:	04430004 	bgezl	v0,2868 <func_8003ADC8+0xa0>
    2858:	8c830020 	lw	v1,32(a0)
    285c:	10000006 	b	2878 <func_8003ADC8+0xb0>
    2860:	acc00004 	sw	zero,4(a2)
    2864:	8c830020 	lw	v1,32(a0)
    2868:	0043082a 	slt	at,v0,v1
    286c:	14200002 	bnez	at,2878 <func_8003ADC8+0xb0>
    2870:	246bffff 	addiu	t3,v1,-1
    2874:	accb0004 	sw	t3,4(a2)
    2878:	8cc20008 	lw	v0,8(a2)
    287c:	04430004 	bgezl	v0,2890 <func_8003ADC8+0xc8>
    2880:	8c830024 	lw	v1,36(a0)
    2884:	03e00008 	jr	ra
    2888:	acc00008 	sw	zero,8(a2)
    288c:	8c830024 	lw	v1,36(a0)
    2890:	0043082a 	slt	at,v0,v1
    2894:	14200002 	bnez	at,28a0 <func_8003ADC8+0xd8>
    2898:	246cffff 	addiu	t4,v1,-1
    289c:	accc0008 	sw	t4,8(a2)
    28a0:	03e00008 	jr	ra
    28a4:	00000000 	nop

000028a8 <func_8003AEA8>:
    28a8:	c4a40000 	lwc1	$f4,0(a1)
    28ac:	c4860004 	lwc1	$f6,4(a0)
    28b0:	c4a80004 	lwc1	$f8,4(a1)
    28b4:	c48a0008 	lwc1	$f10,8(a0)
    28b8:	46062001 	sub.s	$f0,$f4,$f6
    28bc:	c4840034 	lwc1	$f4,52(a0)
    28c0:	c4b00008 	lwc1	$f16,8(a1)
    28c4:	460a4081 	sub.s	$f2,$f8,$f10
    28c8:	46002182 	mul.s	$f6,$f4,$f0
    28cc:	c492000c 	lwc1	$f18,12(a0)
    28d0:	46128301 	sub.s	$f12,$f16,$f18
    28d4:	4600320d 	trunc.w.s	$f8,$f6
    28d8:	440f4000 	mfc1	t7,$f8
    28dc:	00000000 	nop
    28e0:	accf0000 	sw	t7,0(a2)
    28e4:	c48a0038 	lwc1	$f10,56(a0)
    28e8:	46025402 	mul.s	$f16,$f10,$f2
    28ec:	4600028d 	trunc.w.s	$f10,$f0
    28f0:	440c5000 	mfc1	t4,$f10
    28f4:	4600848d 	trunc.w.s	$f18,$f16
    28f8:	44199000 	mfc1	t9,$f18
    28fc:	00000000 	nop
    2900:	acf90000 	sw	t9,0(a3)
    2904:	c484003c 	lwc1	$f4,60(a0)
    2908:	8faa0010 	lw	t2,16(sp)
    290c:	460c2182 	mul.s	$f6,$f4,$f12
    2910:	4600110d 	trunc.w.s	$f4,$f2
    2914:	4600320d 	trunc.w.s	$f8,$f6
    2918:	44094000 	mfc1	t1,$f8
    291c:	00000000 	nop
    2920:	ad490000 	sw	t1,0(t2)
    2924:	c4900028 	lwc1	$f16,40(a0)
    2928:	4600848d 	trunc.w.s	$f18,$f16
    292c:	440e9000 	mfc1	t6,$f18
    2930:	00000000 	nop
    2934:	018e001a 	div	zero,t4,t6
    2938:	15c00002 	bnez	t6,2944 <func_8003AEA8+0x9c>
    293c:	00000000 	nop
    2940:	0007000d 	break	0x7
    2944:	2401ffff 	li	at,-1
    2948:	15c10004 	bne	t6,at,295c <func_8003AEA8+0xb4>
    294c:	3c018000 	lui	at,0x8000
    2950:	15810002 	bne	t4,at,295c <func_8003AEA8+0xb4>
    2954:	00000000 	nop
    2958:	0006000d 	break	0x6
    295c:	00007810 	mfhi	t7
    2960:	29e10032 	slti	at,t7,50
    2964:	50200007 	beqzl	at,2984 <func_8003AEA8+0xdc>
    2968:	c486002c 	lwc1	$f6,44(a0)
    296c:	8cc20000 	lw	v0,0(a2)
    2970:	58400004 	blezl	v0,2984 <func_8003AEA8+0xdc>
    2974:	c486002c 	lwc1	$f6,44(a0)
    2978:	2458ffff 	addiu	t8,v0,-1
    297c:	acd80000 	sw	t8,0(a2)
    2980:	c486002c 	lwc1	$f6,44(a0)
    2984:	44082000 	mfc1	t0,$f4
    2988:	4600320d 	trunc.w.s	$f8,$f6
    298c:	440a4000 	mfc1	t2,$f8
    2990:	00000000 	nop
    2994:	010a001a 	div	zero,t0,t2
    2998:	15400002 	bnez	t2,29a4 <func_8003AEA8+0xfc>
    299c:	00000000 	nop
    29a0:	0007000d 	break	0x7
    29a4:	2401ffff 	li	at,-1
    29a8:	15410004 	bne	t2,at,29bc <func_8003AEA8+0x114>
    29ac:	3c018000 	lui	at,0x8000
    29b0:	15010002 	bne	t0,at,29bc <func_8003AEA8+0x114>
    29b4:	00000000 	nop
    29b8:	0006000d 	break	0x6
    29bc:	00005810 	mfhi	t3
    29c0:	29610032 	slti	at,t3,50
    29c4:	50200007 	beqzl	at,29e4 <func_8003AEA8+0x13c>
    29c8:	c4900030 	lwc1	$f16,48(a0)
    29cc:	8ce20000 	lw	v0,0(a3)
    29d0:	58400004 	blezl	v0,29e4 <func_8003AEA8+0x13c>
    29d4:	c4900030 	lwc1	$f16,48(a0)
    29d8:	244dffff 	addiu	t5,v0,-1
    29dc:	aced0000 	sw	t5,0(a3)
    29e0:	c4900030 	lwc1	$f16,48(a0)
    29e4:	4600628d 	trunc.w.s	$f10,$f12
    29e8:	8fa90010 	lw	t1,16(sp)
    29ec:	4600848d 	trunc.w.s	$f18,$f16
    29f0:	440e5000 	mfc1	t6,$f10
    29f4:	44189000 	mfc1	t8,$f18
    29f8:	00000000 	nop
    29fc:	01d8001a 	div	zero,t6,t8
    2a00:	17000002 	bnez	t8,2a0c <func_8003AEA8+0x164>
    2a04:	00000000 	nop
    2a08:	0007000d 	break	0x7
    2a0c:	2401ffff 	li	at,-1
    2a10:	17010004 	bne	t8,at,2a24 <func_8003AEA8+0x17c>
    2a14:	3c018000 	lui	at,0x8000
    2a18:	15c10002 	bne	t6,at,2a24 <func_8003AEA8+0x17c>
    2a1c:	00000000 	nop
    2a20:	0006000d 	break	0x6
    2a24:	0000c810 	mfhi	t9
    2a28:	2b210032 	slti	at,t9,50
    2a2c:	10200005 	beqz	at,2a44 <func_8003AEA8+0x19c>
    2a30:	00000000 	nop
    2a34:	8d220000 	lw	v0,0(t1)
    2a38:	18400002 	blez	v0,2a44 <func_8003AEA8+0x19c>
    2a3c:	2448ffff 	addiu	t0,v0,-1
    2a40:	ad280000 	sw	t0,0(t1)
    2a44:	03e00008 	jr	ra
    2a48:	00000000 	nop

00002a4c <func_8003B04C>:
    2a4c:	c4a40000 	lwc1	$f4,0(a1)
    2a50:	c4860004 	lwc1	$f6,4(a0)
    2a54:	c4a80004 	lwc1	$f8,4(a1)
    2a58:	c48a0008 	lwc1	$f10,8(a0)
    2a5c:	46062001 	sub.s	$f0,$f4,$f6
    2a60:	c4840034 	lwc1	$f4,52(a0)
    2a64:	c4b00008 	lwc1	$f16,8(a1)
    2a68:	460a4081 	sub.s	$f2,$f8,$f10
    2a6c:	46002182 	mul.s	$f6,$f4,$f0
    2a70:	c492000c 	lwc1	$f18,12(a0)
    2a74:	46128301 	sub.s	$f12,$f16,$f18
    2a78:	4600320d 	trunc.w.s	$f8,$f6
    2a7c:	440f4000 	mfc1	t7,$f8
    2a80:	00000000 	nop
    2a84:	accf0000 	sw	t7,0(a2)
    2a88:	c48a0038 	lwc1	$f10,56(a0)
    2a8c:	46025402 	mul.s	$f16,$f10,$f2
    2a90:	4600848d 	trunc.w.s	$f18,$f16
    2a94:	44199000 	mfc1	t9,$f18
    2a98:	4600048d 	trunc.w.s	$f18,$f0
    2a9c:	acf90000 	sw	t9,0(a3)
    2aa0:	c484003c 	lwc1	$f4,60(a0)
    2aa4:	8faa0010 	lw	t2,16(sp)
    2aa8:	440d9000 	mfc1	t5,$f18
    2aac:	460c2182 	mul.s	$f6,$f4,$f12
    2ab0:	4600648d 	trunc.w.s	$f18,$f12
    2ab4:	4600320d 	trunc.w.s	$f8,$f6
    2ab8:	44094000 	mfc1	t1,$f8
    2abc:	4600120d 	trunc.w.s	$f8,$f2
    2ac0:	ad490000 	sw	t1,0(t2)
    2ac4:	c48a0028 	lwc1	$f10,40(a0)
    2ac8:	4600540d 	trunc.w.s	$f16,$f10
    2acc:	44028000 	mfc1	v0,$f16
    2ad0:	00000000 	nop
    2ad4:	01a2001a 	div	zero,t5,v0
    2ad8:	14400002 	bnez	v0,2ae4 <func_8003B04C+0x98>
    2adc:	00000000 	nop
    2ae0:	0007000d 	break	0x7
    2ae4:	2401ffff 	li	at,-1
    2ae8:	14410004 	bne	v0,at,2afc <func_8003B04C+0xb0>
    2aec:	3c018000 	lui	at,0x8000
    2af0:	15a10002 	bne	t5,at,2afc <func_8003B04C+0xb0>
    2af4:	00000000 	nop
    2af8:	0006000d 	break	0x6
    2afc:	00007010 	mfhi	t6
    2b00:	244fffce 	addiu	t7,v0,-50
    2b04:	01ee082a 	slt	at,t7,t6
    2b08:	5020000a 	beqzl	at,2b34 <func_8003B04C+0xe8>
    2b0c:	c484002c 	lwc1	$f4,44(a0)
    2b10:	8c98001c 	lw	t8,28(a0)
    2b14:	8cc20000 	lw	v0,0(a2)
    2b18:	2719ffff 	addiu	t9,t8,-1
    2b1c:	0059082a 	slt	at,v0,t9
    2b20:	50200004 	beqzl	at,2b34 <func_8003B04C+0xe8>
    2b24:	c484002c 	lwc1	$f4,44(a0)
    2b28:	24480001 	addiu	t0,v0,1
    2b2c:	acc80000 	sw	t0,0(a2)
    2b30:	c484002c 	lwc1	$f4,44(a0)
    2b34:	440b4000 	mfc1	t3,$f8
    2b38:	4600218d 	trunc.w.s	$f6,$f4
    2b3c:	44023000 	mfc1	v0,$f6
    2b40:	00000000 	nop
    2b44:	0162001a 	div	zero,t3,v0
    2b48:	14400002 	bnez	v0,2b54 <func_8003B04C+0x108>
    2b4c:	00000000 	nop
    2b50:	0007000d 	break	0x7
    2b54:	2401ffff 	li	at,-1
    2b58:	14410004 	bne	v0,at,2b6c <func_8003B04C+0x120>
    2b5c:	3c018000 	lui	at,0x8000
    2b60:	15610002 	bne	t3,at,2b6c <func_8003B04C+0x120>
    2b64:	00000000 	nop
    2b68:	0006000d 	break	0x6
    2b6c:	00006010 	mfhi	t4
    2b70:	244dffce 	addiu	t5,v0,-50
    2b74:	01ac082a 	slt	at,t5,t4
    2b78:	5020000a 	beqzl	at,2ba4 <func_8003B04C+0x158>
    2b7c:	c48a0030 	lwc1	$f10,48(a0)
    2b80:	8c8e0020 	lw	t6,32(a0)
    2b84:	8ce20000 	lw	v0,0(a3)
    2b88:	25cfffff 	addiu	t7,t6,-1
    2b8c:	004f082a 	slt	at,v0,t7
    2b90:	50200004 	beqzl	at,2ba4 <func_8003B04C+0x158>
    2b94:	c48a0030 	lwc1	$f10,48(a0)
    2b98:	24580001 	addiu	t8,v0,1
    2b9c:	acf80000 	sw	t8,0(a3)
    2ba0:	c48a0030 	lwc1	$f10,48(a0)
    2ba4:	44099000 	mfc1	t1,$f18
    2ba8:	8fac0010 	lw	t4,16(sp)
    2bac:	4600540d 	trunc.w.s	$f16,$f10
    2bb0:	44028000 	mfc1	v0,$f16
    2bb4:	00000000 	nop
    2bb8:	0122001a 	div	zero,t1,v0
    2bbc:	14400002 	bnez	v0,2bc8 <func_8003B04C+0x17c>
    2bc0:	00000000 	nop
    2bc4:	0007000d 	break	0x7
    2bc8:	2401ffff 	li	at,-1
    2bcc:	14410004 	bne	v0,at,2be0 <func_8003B04C+0x194>
    2bd0:	3c018000 	lui	at,0x8000
    2bd4:	15210002 	bne	t1,at,2be0 <func_8003B04C+0x194>
    2bd8:	00000000 	nop
    2bdc:	0006000d 	break	0x6
    2be0:	00005010 	mfhi	t2
    2be4:	244bffce 	addiu	t3,v0,-50
    2be8:	016a082a 	slt	at,t3,t2
    2bec:	10200008 	beqz	at,2c10 <func_8003B04C+0x1c4>
    2bf0:	00000000 	nop
    2bf4:	8c8d0024 	lw	t5,36(a0)
    2bf8:	8d820000 	lw	v0,0(t4)
    2bfc:	25aeffff 	addiu	t6,t5,-1
    2c00:	004e082a 	slt	at,v0,t6
    2c04:	10200002 	beqz	at,2c10 <func_8003B04C+0x1c4>
    2c08:	244f0001 	addiu	t7,v0,1
    2c0c:	ad8f0000 	sw	t7,0(t4)
    2c10:	03e00008 	jr	ra
    2c14:	00000000 	nop

00002c18 <func_8003B218>:
    2c18:	27bdff98 	addiu	sp,sp,-104
    2c1c:	87ae008e 	lh	t6,142(sp)
    2c20:	afbf0024 	sw	ra,36(sp)
    2c24:	afb00020 	sw	s0,32(sp)
    2c28:	000e7900 	sll	t7,t6,0x4
    2c2c:	afa40068 	sw	a0,104(sp)
    2c30:	afa70074 	sw	a3,116(sp)
    2c34:	00cf4021 	addu	t0,a2,t7
    2c38:	95030002 	lhu	v1,2(t0)
    2c3c:	24090006 	li	t1,6
    2c40:	00a08025 	move	s0,a1
    2c44:	30631fff 	andi	v1,v1,0x1fff
    2c48:	00031c00 	sll	v1,v1,0x10
    2c4c:	00031c03 	sra	v1,v1,0x10
    2c50:	00690019 	multu	v1,t1
    2c54:	afa80034 	sw	t0,52(sp)
    2c58:	27a4004c 	addiu	a0,sp,76
    2c5c:	0000c012 	mflo	t8
    2c60:	03052821 	addu	a1,t8,a1
    2c64:	0c000000 	jal	0 <func_80038600>
    2c68:	00000000 	nop
    2c6c:	27a40058 	addiu	a0,sp,88
    2c70:	0c000000 	jal	0 <func_80038600>
    2c74:	27a5004c 	addiu	a1,sp,76
    2c78:	8fa80034 	lw	t0,52(sp)
    2c7c:	24090006 	li	t1,6
    2c80:	25040004 	addiu	a0,t0,4
    2c84:	25050008 	addiu	a1,t0,8
    2c88:	0085082b 	sltu	at,a0,a1
    2c8c:	5020003c 	beqzl	at,2d80 <func_8003B218+0x168>
    2c90:	8fad007c 	lw	t5,124(sp)
    2c94:	94830000 	lhu	v1,0(a0)
    2c98:	c7aa0058 	lwc1	$f10,88(sp)
    2c9c:	24840002 	addiu	a0,a0,2
    2ca0:	30631fff 	andi	v1,v1,0x1fff
    2ca4:	00031c00 	sll	v1,v1,0x10
    2ca8:	00031c03 	sra	v1,v1,0x10
    2cac:	00690019 	multu	v1,t1
    2cb0:	0085082b 	sltu	at,a0,a1
    2cb4:	c7b0004c 	lwc1	$f16,76(sp)
    2cb8:	0000c812 	mflo	t9
    2cbc:	03301021 	addu	v0,t9,s0
    2cc0:	844a0000 	lh	t2,0(v0)
    2cc4:	844b0002 	lh	t3,2(v0)
    2cc8:	844c0004 	lh	t4,4(v0)
    2ccc:	448a2000 	mtc1	t2,$f4
    2cd0:	448b3000 	mtc1	t3,$f6
    2cd4:	448c4000 	mtc1	t4,$f8
    2cd8:	46802020 	cvt.s.w	$f0,$f4
    2cdc:	468030a0 	cvt.s.w	$f2,$f6
    2ce0:	460a003c 	c.lt.s	$f0,$f10
    2ce4:	46804320 	cvt.s.w	$f12,$f8
    2ce8:	45020004 	bc1fl	2cfc <func_8003B218+0xe4>
    2cec:	4600803c 	c.lt.s	$f16,$f0
    2cf0:	10000006 	b	2d0c <func_8003B218+0xf4>
    2cf4:	e7a00058 	swc1	$f0,88(sp)
    2cf8:	4600803c 	c.lt.s	$f16,$f0
    2cfc:	00000000 	nop
    2d00:	45020003 	bc1fl	2d10 <func_8003B218+0xf8>
    2d04:	c7b2005c 	lwc1	$f18,92(sp)
    2d08:	e7a0004c 	swc1	$f0,76(sp)
    2d0c:	c7b2005c 	lwc1	$f18,92(sp)
    2d10:	c7a40050 	lwc1	$f4,80(sp)
    2d14:	4612103c 	c.lt.s	$f2,$f18
    2d18:	00000000 	nop
    2d1c:	45020004 	bc1fl	2d30 <func_8003B218+0x118>
    2d20:	4602203c 	c.lt.s	$f4,$f2
    2d24:	10000006 	b	2d40 <func_8003B218+0x128>
    2d28:	e7a2005c 	swc1	$f2,92(sp)
    2d2c:	4602203c 	c.lt.s	$f4,$f2
    2d30:	00000000 	nop
    2d34:	45020003 	bc1fl	2d44 <func_8003B218+0x12c>
    2d38:	c7a60060 	lwc1	$f6,96(sp)
    2d3c:	e7a20050 	swc1	$f2,80(sp)
    2d40:	c7a60060 	lwc1	$f6,96(sp)
    2d44:	c7a80054 	lwc1	$f8,84(sp)
    2d48:	4606603c 	c.lt.s	$f12,$f6
    2d4c:	00000000 	nop
    2d50:	45020004 	bc1fl	2d64 <func_8003B218+0x14c>
    2d54:	460c403c 	c.lt.s	$f8,$f12
    2d58:	10000006 	b	2d74 <func_8003B218+0x15c>
    2d5c:	e7ac0060 	swc1	$f12,96(sp)
    2d60:	460c403c 	c.lt.s	$f8,$f12
    2d64:	00000000 	nop
    2d68:	45000002 	bc1f	2d74 <func_8003B218+0x15c>
    2d6c:	00000000 	nop
    2d70:	e7ac0054 	swc1	$f12,84(sp)
    2d74:	5420ffc8 	bnezl	at,2c98 <func_8003B218+0x80>
    2d78:	94830000 	lhu	v1,0(a0)
    2d7c:	8fad007c 	lw	t5,124(sp)
    2d80:	8fa40068 	lw	a0,104(sp)
    2d84:	27a50058 	addiu	a1,sp,88
    2d88:	8fa60074 	lw	a2,116(sp)
    2d8c:	8fa70078 	lw	a3,120(sp)
    2d90:	0c000000 	jal	0 <func_80038600>
    2d94:	afad0010 	sw	t5,16(sp)
    2d98:	8fae0088 	lw	t6,136(sp)
    2d9c:	8fa40068 	lw	a0,104(sp)
    2da0:	27a5004c 	addiu	a1,sp,76
    2da4:	8fa60080 	lw	a2,128(sp)
    2da8:	8fa70084 	lw	a3,132(sp)
    2dac:	0c000000 	jal	0 <func_80038600>
    2db0:	afae0010 	sw	t6,16(sp)
    2db4:	8fbf0024 	lw	ra,36(sp)
    2db8:	8fb00020 	lw	s0,32(sp)
    2dbc:	27bd0068 	addiu	sp,sp,104
    2dc0:	03e00008 	jr	ra
    2dc4:	00000000 	nop

00002dc8 <func_8003B3C8>:
    2dc8:	27bdff48 	addiu	sp,sp,-184
    2dcc:	87ae00ca 	lh	t6,202(sp)
    2dd0:	afbf003c 	sw	ra,60(sp)
    2dd4:	afb10038 	sw	s1,56(sp)
    2dd8:	000e7900 	sll	t7,t6,0x4
    2ddc:	afb00034 	sw	s0,52(sp)
    2de0:	afa700c4 	sw	a3,196(sp)
    2de4:	afa00050 	sw	zero,80(sp)
    2de8:	afa0004c 	sw	zero,76(sp)
    2dec:	01e61021 	addu	v0,t7,a2
    2df0:	94580002 	lhu	t8,2(v0)
    2df4:	00808025 	move	s0,a0
    2df8:	00a08825 	move	s1,a1
    2dfc:	33191fff 	andi	t9,t8,0x1fff
    2e00:	00194880 	sll	t1,t9,0x2
    2e04:	01394823 	subu	t1,t1,t9
    2e08:	00094840 	sll	t1,t1,0x1
    2e0c:	01272021 	addu	a0,t1,a3
    2e10:	27a50070 	addiu	a1,sp,112
    2e14:	0c000000 	jal	0 <func_80038600>
    2e18:	afa20044 	sw	v0,68(sp)
    2e1c:	27a40070 	addiu	a0,sp,112
    2e20:	02002825 	move	a1,s0
    2e24:	0c000000 	jal	0 <func_80038600>
    2e28:	02203025 	move	a2,s1
    2e2c:	14400003 	bnez	v0,2e3c <func_8003B3C8+0x74>
    2e30:	afa2004c 	sw	v0,76(sp)
    2e34:	100001b3 	b	3504 <func_8003B3C8+0x73c>
    2e38:	24020001 	li	v0,1
    2e3c:	8fab0044 	lw	t3,68(sp)
    2e40:	8faf00c4 	lw	t7,196(sp)
    2e44:	27a50064 	addiu	a1,sp,100
    2e48:	956c0004 	lhu	t4,4(t3)
    2e4c:	318d1fff 	andi	t5,t4,0x1fff
    2e50:	000d7080 	sll	t6,t5,0x2
    2e54:	01cd7023 	subu	t6,t6,t5
    2e58:	000e7040 	sll	t6,t6,0x1
    2e5c:	0c000000 	jal	0 <func_80038600>
    2e60:	01cf2021 	addu	a0,t6,t7
    2e64:	27a40064 	addiu	a0,sp,100
    2e68:	02002825 	move	a1,s0
    2e6c:	0c000000 	jal	0 <func_80038600>
    2e70:	02203025 	move	a2,s1
    2e74:	14400003 	bnez	v0,2e84 <func_8003B3C8+0xbc>
    2e78:	afa20050 	sw	v0,80(sp)
    2e7c:	100001a1 	b	3504 <func_8003B3C8+0x73c>
    2e80:	24020001 	li	v0,1
    2e84:	8fb80044 	lw	t8,68(sp)
    2e88:	8faa00c4 	lw	t2,196(sp)
    2e8c:	27a50058 	addiu	a1,sp,88
    2e90:	97190006 	lhu	t9,6(t8)
    2e94:	00194880 	sll	t1,t9,0x2
    2e98:	01394823 	subu	t1,t1,t9
    2e9c:	00094840 	sll	t1,t1,0x1
    2ea0:	0c000000 	jal	0 <func_80038600>
    2ea4:	012a2021 	addu	a0,t1,t2
    2ea8:	27a40058 	addiu	a0,sp,88
    2eac:	02002825 	move	a1,s0
    2eb0:	0c000000 	jal	0 <func_80038600>
    2eb4:	02203025 	move	a2,s1
    2eb8:	14400003 	bnez	v0,2ec8 <func_8003B3C8+0x100>
    2ebc:	afa20054 	sw	v0,84(sp)
    2ec0:	10000190 	b	3504 <func_8003B3C8+0x73c>
    2ec4:	24020001 	li	v0,1
    2ec8:	8fa8004c 	lw	t0,76(sp)
    2ecc:	8fa70050 	lw	a3,80(sp)
    2ed0:	27a40070 	addiu	a0,sp,112
    2ed4:	00485824 	and	t3,v0,t0
    2ed8:	01676024 	and	t4,t3,a3
    2edc:	11800003 	beqz	t4,2eec <func_8003B3C8+0x124>
    2ee0:	02002825 	move	a1,s0
    2ee4:	10000187 	b	3504 <func_8003B3C8+0x73c>
    2ee8:	00001025 	move	v0,zero
    2eec:	0c000000 	jal	0 <func_80038600>
    2ef0:	02203025 	move	a2,s1
    2ef4:	8fa8004c 	lw	t0,76(sp)
    2ef8:	00026a00 	sll	t5,v0,0x8
    2efc:	27a40064 	addiu	a0,sp,100
    2f00:	010d4025 	or	t0,t0,t5
    2f04:	afa8004c 	sw	t0,76(sp)
    2f08:	02002825 	move	a1,s0
    2f0c:	0c000000 	jal	0 <func_80038600>
    2f10:	02203025 	move	a2,s1
    2f14:	8fa70050 	lw	a3,80(sp)
    2f18:	00027200 	sll	t6,v0,0x8
    2f1c:	27a40058 	addiu	a0,sp,88
    2f20:	00ee3825 	or	a3,a3,t6
    2f24:	afa70050 	sw	a3,80(sp)
    2f28:	02002825 	move	a1,s0
    2f2c:	0c000000 	jal	0 <func_80038600>
    2f30:	02203025 	move	a2,s1
    2f34:	8fa30054 	lw	v1,84(sp)
    2f38:	8fa8004c 	lw	t0,76(sp)
    2f3c:	8fa70050 	lw	a3,80(sp)
    2f40:	00027a00 	sll	t7,v0,0x8
    2f44:	006f1825 	or	v1,v1,t7
    2f48:	0068c024 	and	t8,v1,t0
    2f4c:	0307c824 	and	t9,t8,a3
    2f50:	13200003 	beqz	t9,2f60 <func_8003B3C8+0x198>
    2f54:	afa30054 	sw	v1,84(sp)
    2f58:	1000016a 	b	3504 <func_8003B3C8+0x73c>
    2f5c:	00001025 	move	v0,zero
    2f60:	27a40070 	addiu	a0,sp,112
    2f64:	02002825 	move	a1,s0
    2f68:	0c000000 	jal	0 <func_80038600>
    2f6c:	02203025 	move	a2,s1
    2f70:	8fa8004c 	lw	t0,76(sp)
    2f74:	00024e00 	sll	t1,v0,0x18
    2f78:	27a40064 	addiu	a0,sp,100
    2f7c:	01094025 	or	t0,t0,t1
    2f80:	afa8004c 	sw	t0,76(sp)
    2f84:	02002825 	move	a1,s0
    2f88:	0c000000 	jal	0 <func_80038600>
    2f8c:	02203025 	move	a2,s1
    2f90:	8fa70050 	lw	a3,80(sp)
    2f94:	00025600 	sll	t2,v0,0x18
    2f98:	27a40058 	addiu	a0,sp,88
    2f9c:	00ea3825 	or	a3,a3,t2
    2fa0:	afa70050 	sw	a3,80(sp)
    2fa4:	02002825 	move	a1,s0
    2fa8:	0c000000 	jal	0 <func_80038600>
    2fac:	02203025 	move	a2,s1
    2fb0:	8fa30054 	lw	v1,84(sp)
    2fb4:	8fa8004c 	lw	t0,76(sp)
    2fb8:	8fa70050 	lw	a3,80(sp)
    2fbc:	00025e00 	sll	t3,v0,0x18
    2fc0:	006b1825 	or	v1,v1,t3
    2fc4:	00686024 	and	t4,v1,t0
    2fc8:	01876824 	and	t5,t4,a3
    2fcc:	11a00003 	beqz	t5,2fdc <func_8003B3C8+0x214>
    2fd0:	afa30054 	sw	v1,84(sp)
    2fd4:	1000014b 	b	3504 <func_8003B3C8+0x73c>
    2fd8:	00001025 	move	v0,zero
    2fdc:	8fa40044 	lw	a0,68(sp)
    2fe0:	27a50088 	addiu	a1,sp,136
    2fe4:	27a60084 	addiu	a2,sp,132
    2fe8:	0c000000 	jal	0 <func_80038600>
    2fec:	27a70080 	addiu	a3,sp,128
    2ff0:	8fae0044 	lw	t6,68(sp)
    2ff4:	c7a60084 	lwc1	$f6,132(sp)
    2ff8:	c7a80080 	lwc1	$f8,128(sp)
    2ffc:	85cf000e 	lh	t7,14(t6)
    3000:	e7a60010 	swc1	$f6,16(sp)
    3004:	e7a80014 	swc1	$f8,20(sp)
    3008:	448f2000 	mtc1	t7,$f4
    300c:	27b800b4 	addiu	t8,sp,180
    3010:	27a40070 	addiu	a0,sp,112
    3014:	46802020 	cvt.s.w	$f0,$f4
    3018:	27a50064 	addiu	a1,sp,100
    301c:	27a60058 	addiu	a2,sp,88
    3020:	8fa70088 	lw	a3,136(sp)
    3024:	e7a00018 	swc1	$f0,24(sp)
    3028:	c60a0008 	lwc1	$f10,8(s0)
    302c:	e7aa001c 	swc1	$f10,28(sp)
    3030:	c6100000 	lwc1	$f16,0(s0)
    3034:	afb80024 	sw	t8,36(sp)
    3038:	e7b00020 	swc1	$f16,32(sp)
    303c:	c6120004 	lwc1	$f18,4(s0)
    3040:	e7b20028 	swc1	$f18,40(sp)
    3044:	c6240004 	lwc1	$f4,4(s1)
    3048:	e7a0007c 	swc1	$f0,124(sp)
    304c:	0c000000 	jal	0 <func_80038600>
    3050:	e7a4002c 	swc1	$f4,44(sp)
    3054:	14400043 	bnez	v0,3164 <func_8003B3C8+0x39c>
    3058:	c7a60084 	lwc1	$f6,132(sp)
    305c:	c7a80080 	lwc1	$f8,128(sp)
    3060:	c7aa007c 	lwc1	$f10,124(sp)
    3064:	e7a60010 	swc1	$f6,16(sp)
    3068:	e7a80014 	swc1	$f8,20(sp)
    306c:	e7aa0018 	swc1	$f10,24(sp)
    3070:	c6300008 	lwc1	$f16,8(s1)
    3074:	27b900b4 	addiu	t9,sp,180
    3078:	27a40070 	addiu	a0,sp,112
    307c:	e7b0001c 	swc1	$f16,28(sp)
    3080:	c6120000 	lwc1	$f18,0(s0)
    3084:	afb90024 	sw	t9,36(sp)
    3088:	27a50064 	addiu	a1,sp,100
    308c:	e7b20020 	swc1	$f18,32(sp)
    3090:	c6040004 	lwc1	$f4,4(s0)
    3094:	27a60058 	addiu	a2,sp,88
    3098:	8fa70088 	lw	a3,136(sp)
    309c:	e7a40028 	swc1	$f4,40(sp)
    30a0:	c6260004 	lwc1	$f6,4(s1)
    30a4:	0c000000 	jal	0 <func_80038600>
    30a8:	e7a6002c 	swc1	$f6,44(sp)
    30ac:	1440002d 	bnez	v0,3164 <func_8003B3C8+0x39c>
    30b0:	c7a80084 	lwc1	$f8,132(sp)
    30b4:	c7aa0080 	lwc1	$f10,128(sp)
    30b8:	c7b0007c 	lwc1	$f16,124(sp)
    30bc:	e7a80010 	swc1	$f8,16(sp)
    30c0:	e7aa0014 	swc1	$f10,20(sp)
    30c4:	e7b00018 	swc1	$f16,24(sp)
    30c8:	c6120008 	lwc1	$f18,8(s0)
    30cc:	27a900b4 	addiu	t1,sp,180
    30d0:	27a40070 	addiu	a0,sp,112
    30d4:	e7b2001c 	swc1	$f18,28(sp)
    30d8:	c6240000 	lwc1	$f4,0(s1)
    30dc:	afa90024 	sw	t1,36(sp)
    30e0:	27a50064 	addiu	a1,sp,100
    30e4:	e7a40020 	swc1	$f4,32(sp)
    30e8:	c6060004 	lwc1	$f6,4(s0)
    30ec:	27a60058 	addiu	a2,sp,88
    30f0:	8fa70088 	lw	a3,136(sp)
    30f4:	e7a60028 	swc1	$f6,40(sp)
    30f8:	c6280004 	lwc1	$f8,4(s1)
    30fc:	0c000000 	jal	0 <func_80038600>
    3100:	e7a8002c 	swc1	$f8,44(sp)
    3104:	14400017 	bnez	v0,3164 <func_8003B3C8+0x39c>
    3108:	c7aa0084 	lwc1	$f10,132(sp)
    310c:	c7b00080 	lwc1	$f16,128(sp)
    3110:	c7b2007c 	lwc1	$f18,124(sp)
    3114:	e7aa0010 	swc1	$f10,16(sp)
    3118:	e7b00014 	swc1	$f16,20(sp)
    311c:	e7b20018 	swc1	$f18,24(sp)
    3120:	c6240008 	lwc1	$f4,8(s1)
    3124:	27aa00b4 	addiu	t2,sp,180
    3128:	27a40070 	addiu	a0,sp,112
    312c:	e7a4001c 	swc1	$f4,28(sp)
    3130:	c6260000 	lwc1	$f6,0(s1)
    3134:	afaa0024 	sw	t2,36(sp)
    3138:	27a50064 	addiu	a1,sp,100
    313c:	e7a60020 	swc1	$f6,32(sp)
    3140:	c6080004 	lwc1	$f8,4(s0)
    3144:	27a60058 	addiu	a2,sp,88
    3148:	8fa70088 	lw	a3,136(sp)
    314c:	e7a80028 	swc1	$f8,40(sp)
    3150:	c62a0004 	lwc1	$f10,4(s1)
    3154:	0c000000 	jal	0 <func_80038600>
    3158:	e7aa002c 	swc1	$f10,44(sp)
    315c:	10400003 	beqz	v0,316c <func_8003B3C8+0x3a4>
    3160:	c7b00084 	lwc1	$f16,132(sp)
    3164:	100000e7 	b	3504 <func_8003B3C8+0x73c>
    3168:	24020001 	li	v0,1
    316c:	c7b20080 	lwc1	$f18,128(sp)
    3170:	c7a4007c 	lwc1	$f4,124(sp)
    3174:	e7b00010 	swc1	$f16,16(sp)
    3178:	e7b20014 	swc1	$f18,20(sp)
    317c:	e7a40018 	swc1	$f4,24(sp)
    3180:	c6060000 	lwc1	$f6,0(s0)
    3184:	27ab00b4 	addiu	t3,sp,180
    3188:	27a40070 	addiu	a0,sp,112
    318c:	e7a6001c 	swc1	$f6,28(sp)
    3190:	c6080004 	lwc1	$f8,4(s0)
    3194:	afab0024 	sw	t3,36(sp)
    3198:	27a50064 	addiu	a1,sp,100
    319c:	e7a80020 	swc1	$f8,32(sp)
    31a0:	c60a0008 	lwc1	$f10,8(s0)
    31a4:	27a60058 	addiu	a2,sp,88
    31a8:	8fa70088 	lw	a3,136(sp)
    31ac:	e7aa0028 	swc1	$f10,40(sp)
    31b0:	c6300008 	lwc1	$f16,8(s1)
    31b4:	0c000000 	jal	0 <func_80038600>
    31b8:	e7b0002c 	swc1	$f16,44(sp)
    31bc:	14400043 	bnez	v0,32cc <func_8003B3C8+0x504>
    31c0:	c7b20084 	lwc1	$f18,132(sp)
    31c4:	c7a40080 	lwc1	$f4,128(sp)
    31c8:	c7a6007c 	lwc1	$f6,124(sp)
    31cc:	e7b20010 	swc1	$f18,16(sp)
    31d0:	e7a40014 	swc1	$f4,20(sp)
    31d4:	e7a60018 	swc1	$f6,24(sp)
    31d8:	c6080000 	lwc1	$f8,0(s0)
    31dc:	27ac00b4 	addiu	t4,sp,180
    31e0:	27a40070 	addiu	a0,sp,112
    31e4:	e7a8001c 	swc1	$f8,28(sp)
    31e8:	c62a0004 	lwc1	$f10,4(s1)
    31ec:	afac0024 	sw	t4,36(sp)
    31f0:	27a50064 	addiu	a1,sp,100
    31f4:	e7aa0020 	swc1	$f10,32(sp)
    31f8:	c6100008 	lwc1	$f16,8(s0)
    31fc:	27a60058 	addiu	a2,sp,88
    3200:	8fa70088 	lw	a3,136(sp)
    3204:	e7b00028 	swc1	$f16,40(sp)
    3208:	c6320008 	lwc1	$f18,8(s1)
    320c:	0c000000 	jal	0 <func_80038600>
    3210:	e7b2002c 	swc1	$f18,44(sp)
    3214:	1440002d 	bnez	v0,32cc <func_8003B3C8+0x504>
    3218:	c7a40084 	lwc1	$f4,132(sp)
    321c:	c7a60080 	lwc1	$f6,128(sp)
    3220:	c7a8007c 	lwc1	$f8,124(sp)
    3224:	e7a40010 	swc1	$f4,16(sp)
    3228:	e7a60014 	swc1	$f6,20(sp)
    322c:	e7a80018 	swc1	$f8,24(sp)
    3230:	c62a0000 	lwc1	$f10,0(s1)
    3234:	27ad00b4 	addiu	t5,sp,180
    3238:	27a40070 	addiu	a0,sp,112
    323c:	e7aa001c 	swc1	$f10,28(sp)
    3240:	c6100004 	lwc1	$f16,4(s0)
    3244:	afad0024 	sw	t5,36(sp)
    3248:	27a50064 	addiu	a1,sp,100
    324c:	e7b00020 	swc1	$f16,32(sp)
    3250:	c6120008 	lwc1	$f18,8(s0)
    3254:	27a60058 	addiu	a2,sp,88
    3258:	8fa70088 	lw	a3,136(sp)
    325c:	e7b20028 	swc1	$f18,40(sp)
    3260:	c6240008 	lwc1	$f4,8(s1)
    3264:	0c000000 	jal	0 <func_80038600>
    3268:	e7a4002c 	swc1	$f4,44(sp)
    326c:	14400017 	bnez	v0,32cc <func_8003B3C8+0x504>
    3270:	c7a60084 	lwc1	$f6,132(sp)
    3274:	c7a80080 	lwc1	$f8,128(sp)
    3278:	c7aa007c 	lwc1	$f10,124(sp)
    327c:	e7a60010 	swc1	$f6,16(sp)
    3280:	e7a80014 	swc1	$f8,20(sp)
    3284:	e7aa0018 	swc1	$f10,24(sp)
    3288:	c6300000 	lwc1	$f16,0(s1)
    328c:	27ae00b4 	addiu	t6,sp,180
    3290:	27a40070 	addiu	a0,sp,112
    3294:	e7b0001c 	swc1	$f16,28(sp)
    3298:	c6320004 	lwc1	$f18,4(s1)
    329c:	afae0024 	sw	t6,36(sp)
    32a0:	27a50064 	addiu	a1,sp,100
    32a4:	e7b20020 	swc1	$f18,32(sp)
    32a8:	c6040008 	lwc1	$f4,8(s0)
    32ac:	27a60058 	addiu	a2,sp,88
    32b0:	8fa70088 	lw	a3,136(sp)
    32b4:	e7a40028 	swc1	$f4,40(sp)
    32b8:	c6260008 	lwc1	$f6,8(s1)
    32bc:	0c000000 	jal	0 <func_80038600>
    32c0:	e7a6002c 	swc1	$f6,44(sp)
    32c4:	10400003 	beqz	v0,32d4 <func_8003B3C8+0x50c>
    32c8:	c7a80084 	lwc1	$f8,132(sp)
    32cc:	1000008d 	b	3504 <func_8003B3C8+0x73c>
    32d0:	24020001 	li	v0,1
    32d4:	c7aa0080 	lwc1	$f10,128(sp)
    32d8:	c7b0007c 	lwc1	$f16,124(sp)
    32dc:	e7a80010 	swc1	$f8,16(sp)
    32e0:	e7aa0014 	swc1	$f10,20(sp)
    32e4:	e7b00018 	swc1	$f16,24(sp)
    32e8:	c6120004 	lwc1	$f18,4(s0)
    32ec:	27af00b4 	addiu	t7,sp,180
    32f0:	27a40070 	addiu	a0,sp,112
    32f4:	e7b2001c 	swc1	$f18,28(sp)
    32f8:	c6040008 	lwc1	$f4,8(s0)
    32fc:	afaf0024 	sw	t7,36(sp)
    3300:	27a50064 	addiu	a1,sp,100
    3304:	e7a40020 	swc1	$f4,32(sp)
    3308:	c6060000 	lwc1	$f6,0(s0)
    330c:	27a60058 	addiu	a2,sp,88
    3310:	8fa70088 	lw	a3,136(sp)
    3314:	e7a60028 	swc1	$f6,40(sp)
    3318:	c6280000 	lwc1	$f8,0(s1)
    331c:	0c000000 	jal	0 <func_80038600>
    3320:	e7a8002c 	swc1	$f8,44(sp)
    3324:	14400043 	bnez	v0,3434 <func_8003B3C8+0x66c>
    3328:	c7aa0084 	lwc1	$f10,132(sp)
    332c:	c7b00080 	lwc1	$f16,128(sp)
    3330:	c7b2007c 	lwc1	$f18,124(sp)
    3334:	e7aa0010 	swc1	$f10,16(sp)
    3338:	e7b00014 	swc1	$f16,20(sp)
    333c:	e7b20018 	swc1	$f18,24(sp)
    3340:	c6040004 	lwc1	$f4,4(s0)
    3344:	27b800b4 	addiu	t8,sp,180
    3348:	27a40070 	addiu	a0,sp,112
    334c:	e7a4001c 	swc1	$f4,28(sp)
    3350:	c6260008 	lwc1	$f6,8(s1)
    3354:	afb80024 	sw	t8,36(sp)
    3358:	27a50064 	addiu	a1,sp,100
    335c:	e7a60020 	swc1	$f6,32(sp)
    3360:	c6080000 	lwc1	$f8,0(s0)
    3364:	27a60058 	addiu	a2,sp,88
    3368:	8fa70088 	lw	a3,136(sp)
    336c:	e7a80028 	swc1	$f8,40(sp)
    3370:	c62a0000 	lwc1	$f10,0(s1)
    3374:	0c000000 	jal	0 <func_80038600>
    3378:	e7aa002c 	swc1	$f10,44(sp)
    337c:	1440002d 	bnez	v0,3434 <func_8003B3C8+0x66c>
    3380:	c7b00084 	lwc1	$f16,132(sp)
    3384:	c7b20080 	lwc1	$f18,128(sp)
    3388:	c7a4007c 	lwc1	$f4,124(sp)
    338c:	e7b00010 	swc1	$f16,16(sp)
    3390:	e7b20014 	swc1	$f18,20(sp)
    3394:	e7a40018 	swc1	$f4,24(sp)
    3398:	c6260004 	lwc1	$f6,4(s1)
    339c:	27b900b4 	addiu	t9,sp,180
    33a0:	27a40070 	addiu	a0,sp,112
    33a4:	e7a6001c 	swc1	$f6,28(sp)
    33a8:	c6080008 	lwc1	$f8,8(s0)
    33ac:	afb90024 	sw	t9,36(sp)
    33b0:	27a50064 	addiu	a1,sp,100
    33b4:	e7a80020 	swc1	$f8,32(sp)
    33b8:	c60a0000 	lwc1	$f10,0(s0)
    33bc:	27a60058 	addiu	a2,sp,88
    33c0:	8fa70088 	lw	a3,136(sp)
    33c4:	e7aa0028 	swc1	$f10,40(sp)
    33c8:	c6300000 	lwc1	$f16,0(s1)
    33cc:	0c000000 	jal	0 <func_80038600>
    33d0:	e7b0002c 	swc1	$f16,44(sp)
    33d4:	14400017 	bnez	v0,3434 <func_8003B3C8+0x66c>
    33d8:	c7b20084 	lwc1	$f18,132(sp)
    33dc:	c7a40080 	lwc1	$f4,128(sp)
    33e0:	c7a6007c 	lwc1	$f6,124(sp)
    33e4:	e7b20010 	swc1	$f18,16(sp)
    33e8:	e7a40014 	swc1	$f4,20(sp)
    33ec:	e7a60018 	swc1	$f6,24(sp)
    33f0:	c6280004 	lwc1	$f8,4(s1)
    33f4:	27a900b4 	addiu	t1,sp,180
    33f8:	27a40070 	addiu	a0,sp,112
    33fc:	e7a8001c 	swc1	$f8,28(sp)
    3400:	c62a0008 	lwc1	$f10,8(s1)
    3404:	afa90024 	sw	t1,36(sp)
    3408:	27a50064 	addiu	a1,sp,100
    340c:	e7aa0020 	swc1	$f10,32(sp)
    3410:	c6100000 	lwc1	$f16,0(s0)
    3414:	27a60058 	addiu	a2,sp,88
    3418:	8fa70088 	lw	a3,136(sp)
    341c:	e7b00028 	swc1	$f16,40(sp)
    3420:	c6320000 	lwc1	$f18,0(s1)
    3424:	0c000000 	jal	0 <func_80038600>
    3428:	e7b2002c 	swc1	$f18,44(sp)
    342c:	10400003 	beqz	v0,343c <func_8003B3C8+0x674>
    3430:	8faa0044 	lw	t2,68(sp)
    3434:	10000033 	b	3504 <func_8003B3C8+0x73c>
    3438:	24020001 	li	v0,1
    343c:	954b0002 	lhu	t3,2(t2)
    3440:	8fae00c4 	lw	t6,196(sp)
    3444:	27a500a8 	addiu	a1,sp,168
    3448:	316c1fff 	andi	t4,t3,0x1fff
    344c:	000c6880 	sll	t5,t4,0x2
    3450:	01ac6823 	subu	t5,t5,t4
    3454:	000d6840 	sll	t5,t5,0x1
    3458:	0c000000 	jal	0 <func_80038600>
    345c:	01ae2021 	addu	a0,t5,t6
    3460:	8faf0044 	lw	t7,68(sp)
    3464:	8faa00c4 	lw	t2,196(sp)
    3468:	27a5009c 	addiu	a1,sp,156
    346c:	95f80004 	lhu	t8,4(t7)
    3470:	33191fff 	andi	t9,t8,0x1fff
    3474:	00194880 	sll	t1,t9,0x2
    3478:	01394823 	subu	t1,t1,t9
    347c:	00094840 	sll	t1,t1,0x1
    3480:	0c000000 	jal	0 <func_80038600>
    3484:	012a2021 	addu	a0,t1,t2
    3488:	8fab0044 	lw	t3,68(sp)
    348c:	8fae00c4 	lw	t6,196(sp)
    3490:	27a50090 	addiu	a1,sp,144
    3494:	956c0006 	lhu	t4,6(t3)
    3498:	000c6880 	sll	t5,t4,0x2
    349c:	01ac6823 	subu	t5,t5,t4
    34a0:	000d6840 	sll	t5,t5,0x1
    34a4:	0c000000 	jal	0 <func_80038600>
    34a8:	01ae2021 	addu	a0,t5,t6
    34ac:	02002025 	move	a0,s0
    34b0:	02202825 	move	a1,s1
    34b4:	27a600a8 	addiu	a2,sp,168
    34b8:	0c000000 	jal	0 <func_80038600>
    34bc:	27a7009c 	addiu	a3,sp,156
    34c0:	1440000d 	bnez	v0,34f8 <func_8003B3C8+0x730>
    34c4:	02002025 	move	a0,s0
    34c8:	02202825 	move	a1,s1
    34cc:	27a6009c 	addiu	a2,sp,156
    34d0:	0c000000 	jal	0 <func_80038600>
    34d4:	27a70090 	addiu	a3,sp,144
    34d8:	14400007 	bnez	v0,34f8 <func_8003B3C8+0x730>
    34dc:	02002025 	move	a0,s0
    34e0:	02202825 	move	a1,s1
    34e4:	27a60090 	addiu	a2,sp,144
    34e8:	0c000000 	jal	0 <func_80038600>
    34ec:	27a700a8 	addiu	a3,sp,168
    34f0:	50400004 	beqzl	v0,3504 <func_8003B3C8+0x73c>
    34f4:	00001025 	move	v0,zero
    34f8:	10000002 	b	3504 <func_8003B3C8+0x73c>
    34fc:	24020001 	li	v0,1
    3500:	00001025 	move	v0,zero
    3504:	8fbf003c 	lw	ra,60(sp)
    3508:	8fb00034 	lw	s0,52(sp)
    350c:	8fb10038 	lw	s1,56(sp)
    3510:	03e00008 	jr	ra
    3514:	27bd00b8 	addiu	sp,sp,184

00003518 <func_8003BB18>:
    3518:	27bdff08 	addiu	sp,sp,-248
    351c:	afbf0074 	sw	ra,116(sp)
    3520:	afbe0070 	sw	s8,112(sp)
    3524:	afb7006c 	sw	s7,108(sp)
    3528:	afb60068 	sw	s6,104(sp)
    352c:	afb50064 	sw	s5,100(sp)
    3530:	afb40060 	sw	s4,96(sp)
    3534:	afb3005c 	sw	s3,92(sp)
    3538:	afb20058 	sw	s2,88(sp)
    353c:	afb10054 	sw	s1,84(sp)
    3540:	afb00050 	sw	s0,80(sp)
    3544:	f7ba0048 	sdc1	$f26,72(sp)
    3548:	f7b80040 	sdc1	$f24,64(sp)
    354c:	f7b60038 	sdc1	$f22,56(sp)
    3550:	f7b40030 	sdc1	$f20,48(sp)
    3554:	afa500fc 	sw	a1,252(sp)
    3558:	8c8f0020 	lw	t7,32(a0)
    355c:	8c8e001c 	lw	t6,28(a0)
    3560:	8c980024 	lw	t8,36(a0)
    3564:	24080006 	li	t0,6
    3568:	01cf0019 	multu	t6,t7
    356c:	00809025 	move	s2,a0
    3570:	8c870000 	lw	a3,0(a0)
    3574:	00c01025 	move	v0,a2
    3578:	3403ffff 	li	v1,0xffff
    357c:	27b600b8 	addiu	s6,sp,184
    3580:	27b700ac 	addiu	s7,sp,172
    3584:	00002812 	mflo	a1
	...
    3590:	00b80019 	multu	a1,t8
    3594:	0000c812 	mflo	t9
	...
    35a0:	03280019 	multu	t9,t0
    35a4:	00004812 	mflo	t1
    35a8:	01265021 	addu	t2,t1,a2
    35ac:	00ca082b 	sltu	at,a2,t2
    35b0:	50200017 	beqzl	at,3610 <func_8003BB18+0xf8>
    35b4:	94e30014 	lhu	v1,20(a3)
    35b8:	a4430000 	sh	v1,0(v0)
    35bc:	a4430002 	sh	v1,2(v0)
    35c0:	a4430004 	sh	v1,4(v0)
    35c4:	8e4c0020 	lw	t4,32(s2)
    35c8:	8e4b001c 	lw	t3,28(s2)
    35cc:	8e4d0024 	lw	t5,36(s2)
    35d0:	24420006 	addiu	v0,v0,6
    35d4:	016c0019 	multu	t3,t4
    35d8:	00002812 	mflo	a1
	...
    35e4:	00ad0019 	multu	a1,t5
    35e8:	00007012 	mflo	t6
	...
    35f4:	01c80019 	multu	t6,t0
    35f8:	00007812 	mflo	t7
    35fc:	01e6c021 	addu	t8,t7,a2
    3600:	0058082b 	sltu	at,v0,t8
    3604:	5420ffed 	bnezl	at,35bc <func_8003BB18+0xa4>
    3608:	a4430000 	sh	v1,0(v0)
    360c:	94e30014 	lhu	v1,20(a3)
    3610:	8cf40010 	lw	s4,16(a3)
    3614:	8cf50018 	lw	s5,24(a3)
    3618:	3c0142c8 	lui	at,0x42c8
    361c:	afa50098 	sw	a1,152(sp)
    3620:	44810000 	mtc1	at,$f0
    3624:	c6440028 	lwc1	$f4,40(s2)
    3628:	c646002c 	lwc1	$f6,44(s2)
    362c:	c6480030 	lwc1	$f8,48(s2)
    3630:	46002580 	add.s	$f22,$f4,$f0
    3634:	46003600 	add.s	$f24,$f6,$f0
    3638:	186000a5 	blez	v1,38d0 <func_8003BB18+0x3b8>
    363c:	46004680 	add.s	$f26,$f8,$f0
    3640:	3c014248 	lui	at,0x4248
    3644:	4481a000 	mtc1	at,$f20
    3648:	afa000e8 	sw	zero,232(sp)
    364c:	afa300ec 	sw	v1,236(sp)
    3650:	afa60100 	sw	a2,256(sp)
    3654:	8fa200e8 	lw	v0,232(sp)
    3658:	27b900d4 	addiu	t9,sp,212
    365c:	27a900d0 	addiu	t1,sp,208
    3660:	00029c00 	sll	s3,v0,0x10
    3664:	00139c03 	sra	s3,s3,0x10
    3668:	27aa00cc 	addiu	t2,sp,204
    366c:	27ab00c8 	addiu	t3,sp,200
    3670:	27ac00c4 	addiu	t4,sp,196
    3674:	afac0020 	sw	t4,32(sp)
    3678:	afab001c 	sw	t3,28(sp)
    367c:	afaa0018 	sw	t2,24(sp)
    3680:	afb30024 	sw	s3,36(sp)
    3684:	afa90014 	sw	t1,20(sp)
    3688:	afb90010 	sw	t9,16(sp)
    368c:	02402025 	move	a0,s2
    3690:	02802825 	move	a1,s4
    3694:	02a03025 	move	a2,s5
    3698:	0c000000 	jal	0 <func_80038600>
    369c:	27a700d8 	addiu	a3,sp,216
    36a0:	8fa400d0 	lw	a0,208(sp)
    36a4:	c64a0030 	lwc1	$f10,48(s2)
    36a8:	8fae0098 	lw	t6,152(sp)
    36ac:	44848000 	mtc1	a0,$f16
    36b0:	c646000c 	lwc1	$f6,12(s2)
    36b4:	008e0019 	multu	a0,t6
    36b8:	468084a0 	cvt.s.w	$f18,$f16
    36bc:	8fa200c4 	lw	v0,196(sp)
    36c0:	8fb90100 	lw	t9,256(sp)
    36c4:	8fa300c8 	lw	v1,200(sp)
    36c8:	000e4880 	sll	t1,t6,0x2
    36cc:	24420001 	addiu	v0,v0,1
    36d0:	46125102 	mul.s	$f4,$f10,$f18
    36d4:	0082082a 	slt	at,a0,v0
    36d8:	012e4823 	subu	t1,t1,t6
    36dc:	00007812 	mflo	t7
    36e0:	000fc080 	sll	t8,t7,0x2
    36e4:	030fc023 	subu	t8,t8,t7
    36e8:	0018c040 	sll	t8,t8,0x1
    36ec:	46062200 	add.s	$f8,$f4,$f6
    36f0:	00094840 	sll	t1,t1,0x1
    36f4:	03192821 	addu	a1,t8,t9
    36f8:	24630001 	addiu	v1,v1,1
    36fc:	46144401 	sub.s	$f16,$f8,$f20
    3700:	461a8280 	add.s	$f10,$f16,$f26
    3704:	e7b000c0 	swc1	$f16,192(sp)
    3708:	1020006c 	beqz	at,38bc <func_8003BB18+0x3a4>
    370c:	e7aa00b4 	swc1	$f10,180(sp)
    3710:	afa9007c 	sw	t1,124(sp)
    3714:	8fab00d4 	lw	t3,212(sp)
    3718:	c652002c 	lwc1	$f18,44(s2)
    371c:	8e4a001c 	lw	t2,28(s2)
    3720:	448b2000 	mtc1	t3,$f4
    3724:	c6500008 	lwc1	$f16,8(s2)
    3728:	014b0019 	multu	t2,t3
    372c:	468021a0 	cvt.s.w	$f6,$f4
    3730:	0163082a 	slt	at,t3,v1
    3734:	afab00e0 	sw	t3,224(sp)
    3738:	46069202 	mul.s	$f8,$f18,$f6
    373c:	00006012 	mflo	t4
    3740:	000c7880 	sll	t7,t4,0x2
    3744:	01ec7823 	subu	t7,t7,t4
    3748:	000f7840 	sll	t7,t7,0x1
    374c:	46104280 	add.s	$f10,$f8,$f16
    3750:	01e5f021 	addu	s8,t7,a1
    3754:	46145101 	sub.s	$f4,$f10,$f20
    3758:	46182480 	add.s	$f18,$f4,$f24
    375c:	e7a400bc 	swc1	$f4,188(sp)
    3760:	10200049 	beqz	at,3888 <func_8003BB18+0x370>
    3764:	e7b200b0 	swc1	$f18,176(sp)
    3768:	8fa200cc 	lw	v0,204(sp)
    376c:	afa400dc 	sw	a0,220(sp)
    3770:	afa500a4 	sw	a1,164(sp)
    3774:	24420001 	addiu	v0,v0,1
    3778:	8fb100d8 	lw	s1,216(sp)
    377c:	c6460028 	lwc1	$f6,40(s2)
    3780:	c6440004 	lwc1	$f4,4(s2)
    3784:	44914000 	mtc1	s1,$f8
    3788:	0011c880 	sll	t9,s1,0x2
    378c:	0331c823 	subu	t9,t9,s1
    3790:	46804420 	cvt.s.w	$f16,$f8
    3794:	0019c840 	sll	t9,t9,0x1
    3798:	0222082a 	slt	at,s1,v0
    379c:	033e8021 	addu	s0,t9,s8
    37a0:	46103282 	mul.s	$f10,$f6,$f16
    37a4:	46045480 	add.s	$f18,$f10,$f4
    37a8:	46149201 	sub.s	$f8,$f18,$f20
    37ac:	46164180 	add.s	$f6,$f8,$f22
    37b0:	e7a800b8 	swc1	$f8,184(sp)
    37b4:	1020001e 	beqz	at,3830 <func_8003BB18+0x318>
    37b8:	e7a600ac 	swc1	$f6,172(sp)
    37bc:	02c02025 	move	a0,s6
    37c0:	02e02825 	move	a1,s7
    37c4:	02a03025 	move	a2,s5
    37c8:	02803825 	move	a3,s4
    37cc:	0c000000 	jal	0 <func_80038600>
    37d0:	afb30010 	sw	s3,16(sp)
    37d4:	10400006 	beqz	v0,37f0 <func_8003BB18+0x2d8>
    37d8:	02002025 	move	a0,s0
    37dc:	02402825 	move	a1,s2
    37e0:	02a03025 	move	a2,s5
    37e4:	02803825 	move	a3,s4
    37e8:	0c000000 	jal	0 <func_80038600>
    37ec:	afb30010 	sw	s3,16(sp)
    37f0:	c7b000b8 	lwc1	$f16,184(sp)
    37f4:	c64a0028 	lwc1	$f10,40(s2)
    37f8:	c7b200ac 	lwc1	$f18,172(sp)
    37fc:	8fa200cc 	lw	v0,204(sp)
    3800:	460a8100 	add.s	$f4,$f16,$f10
    3804:	26310001 	addiu	s1,s1,1
    3808:	24420001 	addiu	v0,v0,1
    380c:	0222082a 	slt	at,s1,v0
    3810:	e7a400b8 	swc1	$f4,184(sp)
    3814:	c6480028 	lwc1	$f8,40(s2)
    3818:	26100006 	addiu	s0,s0,6
    381c:	46089180 	add.s	$f6,$f18,$f8
    3820:	1420ffe6 	bnez	at,37bc <func_8003BB18+0x2a4>
    3824:	e7a600ac 	swc1	$f6,172(sp)
    3828:	8fa300c8 	lw	v1,200(sp)
    382c:	24630001 	addiu	v1,v1,1
    3830:	c7b000bc 	lwc1	$f16,188(sp)
    3834:	c64a002c 	lwc1	$f10,44(s2)
    3838:	c7b200b0 	lwc1	$f18,176(sp)
    383c:	8fa400e0 	lw	a0,224(sp)
    3840:	460a8100 	add.s	$f4,$f16,$f10
    3844:	24840001 	addiu	a0,a0,1
    3848:	0083082a 	slt	at,a0,v1
    384c:	e7a400bc 	swc1	$f4,188(sp)
    3850:	c648002c 	lwc1	$f8,44(s2)
    3854:	46089180 	add.s	$f6,$f18,$f8
    3858:	e7a600b0 	swc1	$f6,176(sp)
    385c:	8e4d001c 	lw	t5,28(s2)
    3860:	afa400e0 	sw	a0,224(sp)
    3864:	000d7080 	sll	t6,t5,0x2
    3868:	01cd7023 	subu	t6,t6,t5
    386c:	000e7040 	sll	t6,t6,0x1
    3870:	1420ffc1 	bnez	at,3778 <func_8003BB18+0x260>
    3874:	03cef021 	addu	s8,s8,t6
    3878:	8fa200c4 	lw	v0,196(sp)
    387c:	8fa500a4 	lw	a1,164(sp)
    3880:	8fa400dc 	lw	a0,220(sp)
    3884:	24420001 	addiu	v0,v0,1
    3888:	c7b000c0 	lwc1	$f16,192(sp)
    388c:	c64a0030 	lwc1	$f10,48(s2)
    3890:	c7b200b4 	lwc1	$f18,180(sp)
    3894:	8fa9007c 	lw	t1,124(sp)
    3898:	460a8100 	add.s	$f4,$f16,$f10
    389c:	24840001 	addiu	a0,a0,1
    38a0:	0082082a 	slt	at,a0,v0
    38a4:	00a92821 	addu	a1,a1,t1
    38a8:	e7a400c0 	swc1	$f4,192(sp)
    38ac:	c6480030 	lwc1	$f8,48(s2)
    38b0:	46089180 	add.s	$f6,$f18,$f8
    38b4:	1420ff97 	bnez	at,3714 <func_8003BB18+0x1fc>
    38b8:	e7a600b4 	swc1	$f6,180(sp)
    38bc:	8fa200e8 	lw	v0,232(sp)
    38c0:	8faa00ec 	lw	t2,236(sp)
    38c4:	24420001 	addiu	v0,v0,1
    38c8:	144aff62 	bne	v0,t2,3654 <func_8003BB18+0x13c>
    38cc:	afa200e8 	sw	v0,232(sp)
    38d0:	96420046 	lhu	v0,70(s2)
    38d4:	8fbf0074 	lw	ra,116(sp)
    38d8:	8fb20058 	lw	s2,88(sp)
    38dc:	d7b40030 	ldc1	$f20,48(sp)
    38e0:	d7b60038 	ldc1	$f22,56(sp)
    38e4:	d7b80040 	ldc1	$f24,64(sp)
    38e8:	d7ba0048 	ldc1	$f26,72(sp)
    38ec:	8fb00050 	lw	s0,80(sp)
    38f0:	8fb10054 	lw	s1,84(sp)
    38f4:	8fb3005c 	lw	s3,92(sp)
    38f8:	8fb40060 	lw	s4,96(sp)
    38fc:	8fb50064 	lw	s5,100(sp)
    3900:	8fb60068 	lw	s6,104(sp)
    3904:	8fb7006c 	lw	s7,108(sp)
    3908:	8fbe0070 	lw	s8,112(sp)
    390c:	27bd00f8 	addiu	sp,sp,248
    3910:	03e00008 	jr	ra
    3914:	00021080 	sll	v0,v0,0x2

00003918 <func_8003BF18>:
    3918:	848300a4 	lh	v1,164(a0)
    391c:	3c040000 	lui	a0,0x0
    3920:	3c020000 	lui	v0,0x0
    3924:	24420000 	addiu	v0,v0,0
    3928:	24840000 	addiu	a0,a0,0
    392c:	844e0000 	lh	t6,0(v0)
    3930:	24420002 	addiu	v0,v0,2
    3934:	0044082b 	sltu	at,v0,a0
    3938:	146e0003 	bne	v1,t6,3948 <func_8003BF18+0x30>
    393c:	00000000 	nop
    3940:	03e00008 	jr	ra
    3944:	24020001 	li	v0,1
    3948:	5420fff9 	bnezl	at,3930 <func_8003BF18+0x18>
    394c:	844e0000 	lh	t6,0(v0)
    3950:	00001025 	move	v0,zero
    3954:	03e00008 	jr	ra
    3958:	00000000 	nop

0000395c <func_8003BF5C>:
    395c:	3c030000 	lui	v1,0x0
    3960:	3c020000 	lui	v0,0x0
    3964:	24420000 	addiu	v0,v0,0
    3968:	24630000 	addiu	v1,v1,0
    396c:	846e0000 	lh	t6,0(v1)
    3970:	548e0006 	bnel	a0,t6,398c <func_8003BF5C+0x30>
    3974:	84780008 	lh	t8,8(v1)
    3978:	8c6f0004 	lw	t7,4(v1)
    397c:	24020001 	li	v0,1
    3980:	03e00008 	jr	ra
    3984:	acaf0000 	sw	t7,0(a1)
    3988:	84780008 	lh	t8,8(v1)
    398c:	54980006 	bnel	a0,t8,39a8 <func_8003BF5C+0x4c>
    3990:	84680010 	lh	t0,16(v1)
    3994:	8c79000c 	lw	t9,12(v1)
    3998:	24020001 	li	v0,1
    399c:	03e00008 	jr	ra
    39a0:	acb90000 	sw	t9,0(a1)
    39a4:	84680010 	lh	t0,16(v1)
    39a8:	54880006 	bnel	a0,t0,39c4 <func_8003BF5C+0x68>
    39ac:	846a0018 	lh	t2,24(v1)
    39b0:	8c690014 	lw	t1,20(v1)
    39b4:	24020001 	li	v0,1
    39b8:	03e00008 	jr	ra
    39bc:	aca90000 	sw	t1,0(a1)
    39c0:	846a0018 	lh	t2,24(v1)
    39c4:	548a0006 	bnel	a0,t2,39e0 <func_8003BF5C+0x84>
    39c8:	24630020 	addiu	v1,v1,32
    39cc:	8c6b001c 	lw	t3,28(v1)
    39d0:	24020001 	li	v0,1
    39d4:	03e00008 	jr	ra
    39d8:	acab0000 	sw	t3,0(a1)
    39dc:	24630020 	addiu	v1,v1,32
    39e0:	5462ffe3 	bnel	v1,v0,3970 <func_8003BF5C+0x14>
    39e4:	846e0000 	lh	t6,0(v1)
    39e8:	00001025 	move	v0,zero
    39ec:	03e00008 	jr	ra
    39f0:	00000000 	nop

000039f4 <func_8003BFF4>:
    39f4:	44853000 	mtc1	a1,$f6
    39f8:	c4c40000 	lwc1	$f4,0(a2)
    39fc:	3c014316 	lui	at,0x4316
    3a00:	468030a0 	cvt.s.w	$f2,$f6
    3a04:	44818000 	mtc1	at,$f16
    3a08:	3c013f80 	lui	at,0x3f80
    3a0c:	44813000 	mtc1	at,$f6
    3a10:	460c2001 	sub.s	$f0,$f4,$f12
    3a14:	46020203 	div.s	$f8,$f0,$f2
    3a18:	4600428d 	trunc.w.s	$f10,$f8
    3a1c:	440f5000 	mfc1	t7,$f10
    3a20:	00000000 	nop
    3a24:	25f80001 	addiu	t8,t7,1
    3a28:	44989000 	mtc1	t8,$f18
    3a2c:	00000000 	nop
    3a30:	468093a0 	cvt.s.w	$f14,$f18
    3a34:	4610703c 	c.lt.s	$f14,$f16
    3a38:	e4ee0000 	swc1	$f14,0(a3)
    3a3c:	45020004 	bc1fl	3a50 <func_8003BFF4+0x5c>
    3a40:	c4e40000 	lwc1	$f4,0(a3)
    3a44:	10000003 	b	3a54 <func_8003BFF4+0x60>
    3a48:	e4f00000 	swc1	$f16,0(a3)
    3a4c:	c4e40000 	lwc1	$f4,0(a3)
    3a50:	e4e40000 	swc1	$f4,0(a3)
    3a54:	c4e80000 	lwc1	$f8,0(a3)
    3a58:	8fb90010 	lw	t9,16(sp)
    3a5c:	46083283 	div.s	$f10,$f6,$f8
    3a60:	e72a0000 	swc1	$f10,0(t9)
    3a64:	c4f20000 	lwc1	$f18,0(a3)
    3a68:	46029102 	mul.s	$f4,$f18,$f2
    3a6c:	460c2180 	add.s	$f6,$f4,$f12
    3a70:	03e00008 	jr	ra
    3a74:	e4c60000 	swc1	$f6,0(a2)

00003a78 <func_8003C078>:
    3a78:	27bdffa8 	addiu	sp,sp,-88
    3a7c:	afb00020 	sw	s0,32(sp)
    3a80:	afbf002c 	sw	ra,44(sp)
    3a84:	afb20028 	sw	s2,40(sp)
    3a88:	afb10024 	sw	s1,36(sp)
    3a8c:	00808025 	move	s0,a0
    3a90:	ac860000 	sw	a2,0(a0)
    3a94:	3c040000 	lui	a0,0x0
    3a98:	00a08825 	move	s1,a1
    3a9c:	2412ffff 	li	s2,-1
    3aa0:	0c000000 	jal	0 <func_80038600>
    3aa4:	24840000 	addiu	a0,a0,0
    3aa8:	3c0e0000 	lui	t6,0x0
    3aac:	8dce0000 	lw	t6,0(t6)
    3ab0:	24010010 	li	at,16
    3ab4:	85c204b2 	lh	v0,1202(t6)
    3ab8:	10410007 	beq	v0,at,3ad8 <func_8003C078+0x60>
    3abc:	24010020 	li	at,32
    3ac0:	10410005 	beq	v0,at,3ad8 <func_8003C078+0x60>
    3ac4:	24010030 	li	at,48
    3ac8:	10410003 	beq	v0,at,3ad8 <func_8003C078+0x60>
    3acc:	24010040 	li	at,64
    3ad0:	1441001b 	bne	v0,at,3b40 <func_8003C078+0xc8>
    3ad4:	00000000 	nop
    3ad8:	862f00a4 	lh	t7,164(s1)
    3adc:	24010036 	li	at,54
    3ae0:	3c040000 	lui	a0,0x0
    3ae4:	15e10008 	bne	t7,at,3b08 <func_8003C078+0x90>
    3ae8:	24840000 	addiu	a0,a0,0
    3aec:	3c040000 	lui	a0,0x0
    3af0:	24840000 	addiu	a0,a0,0
    3af4:	0c000000 	jal	0 <func_80038600>
    3af8:	24053520 	li	a1,13600
    3afc:	24183520 	li	t8,13600
    3b00:	10000005 	b	3b18 <func_8003C078+0xa0>
    3b04:	ae181460 	sw	t8,5216(s0)
    3b08:	0c000000 	jal	0 <func_80038600>
    3b0c:	24054e20 	li	a1,20000
    3b10:	24194e20 	li	t9,20000
    3b14:	ae191460 	sw	t9,5216(s0)
    3b18:	24020002 	li	v0,2
    3b1c:	24030100 	li	v1,256
    3b20:	240801f4 	li	t0,500
    3b24:	ae081454 	sw	t0,5204(s0)
    3b28:	ae031458 	sw	v1,5208(s0)
    3b2c:	ae03145c 	sw	v1,5212(s0)
    3b30:	ae02001c 	sw	v0,28(s0)
    3b34:	ae020020 	sw	v0,32(s0)
    3b38:	10000043 	b	3c48 <func_8003C078+0x1d0>
    3b3c:	ae020024 	sw	v0,36(s0)
    3b40:	0c000000 	jal	0 <func_80038600>
    3b44:	02202025 	move	a0,s1
    3b48:	24010001 	li	at,1
    3b4c:	14410012 	bne	v0,at,3b98 <func_8003C078+0x120>
    3b50:	27a50040 	addiu	a1,sp,64
    3b54:	3409f000 	li	t1,0xf000
    3b58:	3c040000 	lui	a0,0x0
    3b5c:	ae091460 	sw	t1,5216(s0)
    3b60:	24840000 	addiu	a0,a0,0
    3b64:	0c000000 	jal	0 <func_80038600>
    3b68:	3405f000 	li	a1,0xf000
    3b6c:	24020010 	li	v0,16
    3b70:	24050200 	li	a1,512
    3b74:	240a03e8 	li	t2,1000
    3b78:	240b0004 	li	t3,4
    3b7c:	ae0a1454 	sw	t2,5204(s0)
    3b80:	ae051458 	sw	a1,5208(s0)
    3b84:	ae05145c 	sw	a1,5212(s0)
    3b88:	ae02001c 	sw	v0,28(s0)
    3b8c:	ae0b0020 	sw	t3,32(s0)
    3b90:	1000002d 	b	3c48 <func_8003C078+0x1d0>
    3b94:	ae020024 	sw	v0,36(s0)
    3b98:	0c000000 	jal	0 <func_80038600>
    3b9c:	862400a4 	lh	a0,164(s1)
    3ba0:	10400004 	beqz	v0,3bb4 <func_8003C078+0x13c>
    3ba4:	3c040000 	lui	a0,0x0
    3ba8:	8fac0040 	lw	t4,64(sp)
    3bac:	10000004 	b	3bc0 <func_8003C078+0x148>
    3bb0:	ae0c1460 	sw	t4,5216(s0)
    3bb4:	3c0d0001 	lui	t5,0x1
    3bb8:	35adcc00 	ori	t5,t5,0xcc00
    3bbc:	ae0d1460 	sw	t5,5216(s0)
    3bc0:	24840000 	addiu	a0,a0,0
    3bc4:	0c000000 	jal	0 <func_80038600>
    3bc8:	8e051460 	lw	a1,5216(s0)
    3bcc:	24050200 	li	a1,512
    3bd0:	240e03e8 	li	t6,1000
    3bd4:	3c020000 	lui	v0,0x0
    3bd8:	3c030000 	lui	v1,0x0
    3bdc:	ae0e1454 	sw	t6,5204(s0)
    3be0:	ae051458 	sw	a1,5208(s0)
    3be4:	ae05145c 	sw	a1,5212(s0)
    3be8:	00002025 	move	a0,zero
    3bec:	24630000 	addiu	v1,v1,0
    3bf0:	24420000 	addiu	v0,v0,0
    3bf4:	862f00a4 	lh	t7,164(s1)
    3bf8:	84580000 	lh	t8,0(v0)
    3bfc:	55f8000a 	bnel	t7,t8,3c28 <func_8003C078+0x1b0>
    3c00:	2442000c 	addiu	v0,v0,12
    3c04:	84590002 	lh	t9,2(v0)
    3c08:	24040001 	li	a0,1
    3c0c:	ae19001c 	sw	t9,28(s0)
    3c10:	84480004 	lh	t0,4(v0)
    3c14:	ae080020 	sw	t0,32(s0)
    3c18:	84490006 	lh	t1,6(v0)
    3c1c:	ae090024 	sw	t1,36(s0)
    3c20:	8c520008 	lw	s2,8(v0)
    3c24:	2442000c 	addiu	v0,v0,12
    3c28:	5443fff3 	bnel	v0,v1,3bf8 <func_8003C078+0x180>
    3c2c:	862f00a4 	lh	t7,164(s1)
    3c30:	14800005 	bnez	a0,3c48 <func_8003C078+0x1d0>
    3c34:	24020010 	li	v0,16
    3c38:	240a0004 	li	t2,4
    3c3c:	ae02001c 	sw	v0,28(s0)
    3c40:	ae0a0020 	sw	t2,32(s0)
    3c44:	ae020024 	sw	v0,36(s0)
    3c48:	8e0b001c 	lw	t3,28(s0)
    3c4c:	8e0d0020 	lw	t5,32(s0)
    3c50:	8e0f0024 	lw	t7,36(s0)
    3c54:	000b6080 	sll	t4,t3,0x2
    3c58:	018b6023 	subu	t4,t4,t3
    3c5c:	000c6040 	sll	t4,t4,0x1
    3c60:	018d0019 	multu	t4,t5
    3c64:	26240074 	addiu	a0,s1,116
    3c68:	2406fffe 	li	a2,-2
    3c6c:	00007012 	mflo	t6
	...
    3c78:	01cf0019 	multu	t6,t7
    3c7c:	00002812 	mflo	a1
    3c80:	0c000000 	jal	0 <func_80038600>
    3c84:	00000000 	nop
    3c88:	14400005 	bnez	v0,3ca0 <func_8003C078+0x228>
    3c8c:	ae020040 	sw	v0,64(s0)
    3c90:	3c040000 	lui	a0,0x0
    3c94:	24840000 	addiu	a0,a0,0
    3c98:	0c000000 	jal	0 <func_80038600>
    3c9c:	24051050 	li	a1,4176
    3ca0:	8e020000 	lw	v0,0(s0)
    3ca4:	8e05001c 	lw	a1,28(s0)
    3ca8:	260c0034 	addiu	t4,s0,52
    3cac:	84580000 	lh	t8,0(v0)
    3cb0:	26060010 	addiu	a2,s0,16
    3cb4:	26070028 	addiu	a3,s0,40
    3cb8:	44982000 	mtc1	t8,$f4
    3cbc:	00000000 	nop
    3cc0:	468021a0 	cvt.s.w	$f6,$f4
    3cc4:	e6060004 	swc1	$f6,4(s0)
    3cc8:	84590002 	lh	t9,2(v0)
    3ccc:	c60c0004 	lwc1	$f12,4(s0)
    3cd0:	44994000 	mtc1	t9,$f8
    3cd4:	00000000 	nop
    3cd8:	468042a0 	cvt.s.w	$f10,$f8
    3cdc:	e60a0008 	swc1	$f10,8(s0)
    3ce0:	84480004 	lh	t0,4(v0)
    3ce4:	44888000 	mtc1	t0,$f16
    3ce8:	00000000 	nop
    3cec:	468084a0 	cvt.s.w	$f18,$f16
    3cf0:	e612000c 	swc1	$f18,12(s0)
    3cf4:	84490006 	lh	t1,6(v0)
    3cf8:	44892000 	mtc1	t1,$f4
    3cfc:	00000000 	nop
    3d00:	468021a0 	cvt.s.w	$f6,$f4
    3d04:	e6060010 	swc1	$f6,16(s0)
    3d08:	844a0008 	lh	t2,8(v0)
    3d0c:	448a4000 	mtc1	t2,$f8
    3d10:	00000000 	nop
    3d14:	468042a0 	cvt.s.w	$f10,$f8
    3d18:	e60a0014 	swc1	$f10,20(s0)
    3d1c:	844b000a 	lh	t3,10(v0)
    3d20:	448b8000 	mtc1	t3,$f16
    3d24:	00000000 	nop
    3d28:	468084a0 	cvt.s.w	$f18,$f16
    3d2c:	e6120018 	swc1	$f18,24(s0)
    3d30:	0c000000 	jal	0 <func_80038600>
    3d34:	afac0010 	sw	t4,16(sp)
    3d38:	c60c0008 	lwc1	$f12,8(s0)
    3d3c:	8e050020 	lw	a1,32(s0)
    3d40:	260d0038 	addiu	t5,s0,56
    3d44:	afad0010 	sw	t5,16(sp)
    3d48:	26060014 	addiu	a2,s0,20
    3d4c:	0c000000 	jal	0 <func_80038600>
    3d50:	2607002c 	addiu	a3,s0,44
    3d54:	c60c000c 	lwc1	$f12,12(s0)
    3d58:	8e050024 	lw	a1,36(s0)
    3d5c:	260e003c 	addiu	t6,s0,60
    3d60:	afae0010 	sw	t6,16(sp)
    3d64:	26060018 	addiu	a2,s0,24
    3d68:	0c000000 	jal	0 <func_80038600>
    3d6c:	26070030 	addiu	a3,s0,48
    3d70:	8e0f001c 	lw	t7,28(s0)
    3d74:	24020006 	li	v0,6
    3d78:	8e190020 	lw	t9,32(s0)
    3d7c:	01e20019 	multu	t7,v0
    3d80:	8e090024 	lw	t1,36(s0)
    3d84:	8e0b0000 	lw	t3,0(s0)
    3d88:	8e0e1454 	lw	t6,5204(s0)
    3d8c:	956c0014 	lhu	t4,20(t3)
    3d90:	8e0b145c 	lw	t3,5212(s0)
    3d94:	000e7880 	sll	t7,t6,0x2
    3d98:	0000c012 	mflo	t8
	...
    3da4:	03190019 	multu	t8,t9
    3da8:	8e191458 	lw	t9,5208(s0)
    3dac:	00004012 	mflo	t0
	...
    3db8:	01090019 	multu	t0,t1
    3dbc:	00194100 	sll	t0,t9,0x4
    3dc0:	00005012 	mflo	t2
    3dc4:	014c6821 	addu	t5,t2,t4
    3dc8:	01afc021 	addu	t8,t5,t7
    3dcc:	01620019 	multu	t3,v0
    3dd0:	03084821 	addu	t1,t8,t0
    3dd4:	00005012 	mflo	t2
    3dd8:	012a6021 	addu	t4,t1,t2
    3ddc:	258e1464 	addiu	t6,t4,5220
    3de0:	1a400003 	blez	s2,3df0 <func_8003C078+0x378>
    3de4:	afae0050 	sw	t6,80(sp)
    3de8:	1000000e 	b	3e24 <func_8003C078+0x3ac>
    3dec:	02403025 	move	a2,s2
    3df0:	8e021460 	lw	v0,5216(s0)
    3df4:	8fad0050 	lw	t5,80(sp)
    3df8:	3c040000 	lui	a0,0x0
    3dfc:	24840000 	addiu	a0,a0,0
    3e00:	004d082b 	sltu	at,v0,t5
    3e04:	50200005 	beqzl	at,3e1c <func_8003C078+0x3a4>
    3e08:	8faf0050 	lw	t7,80(sp)
    3e0c:	0c000000 	jal	0 <func_80038600>
    3e10:	24051086 	li	a1,4230
    3e14:	8e021460 	lw	v0,5216(s0)
    3e18:	8faf0050 	lw	t7,80(sp)
    3e1c:	004f3023 	subu	a2,v0,t7
    3e20:	00063082 	srl	a2,a2,0x2
    3e24:	26050044 	addiu	a1,s0,68
    3e28:	00a02025 	move	a0,a1
    3e2c:	afa50034 	sw	a1,52(sp)
    3e30:	0c000000 	jal	0 <func_80038600>
    3e34:	afa60054 	sw	a2,84(sp)
    3e38:	8e190000 	lw	t9,0(s0)
    3e3c:	8fa50034 	lw	a1,52(sp)
    3e40:	8fa60054 	lw	a2,84(sp)
    3e44:	02202025 	move	a0,s1
    3e48:	0c000000 	jal	0 <func_80038600>
    3e4c:	97270014 	lhu	a3,20(t9)
    3e50:	02002025 	move	a0,s0
    3e54:	02202825 	move	a1,s1
    3e58:	0c000000 	jal	0 <func_80038600>
    3e5c:	8e060040 	lw	a2,64(s0)
    3e60:	3c040000 	lui	a0,0x0
    3e64:	00409025 	move	s2,v0
    3e68:	0c000000 	jal	0 <func_80038600>
    3e6c:	24840000 	addiu	a0,a0,0
    3e70:	8fb80050 	lw	t8,80(sp)
    3e74:	3c040000 	lui	a0,0x0
    3e78:	24840000 	addiu	a0,a0,0
    3e7c:	0c000000 	jal	0 <func_80038600>
    3e80:	03122821 	addu	a1,t8,s2
    3e84:	3c040000 	lui	a0,0x0
    3e88:	0c000000 	jal	0 <func_80038600>
    3e8c:	24840000 	addiu	a0,a0,0
    3e90:	26050050 	addiu	a1,s0,80
    3e94:	afa50034 	sw	a1,52(sp)
    3e98:	0c000000 	jal	0 <func_80038600>
    3e9c:	02202025 	move	a0,s1
    3ea0:	8fa50034 	lw	a1,52(sp)
    3ea4:	0c000000 	jal	0 <func_80038600>
    3ea8:	02202025 	move	a0,s1
    3eac:	8fbf002c 	lw	ra,44(sp)
    3eb0:	8fb00020 	lw	s0,32(sp)
    3eb4:	8fb10024 	lw	s1,36(sp)
    3eb8:	8fb20028 	lw	s2,40(sp)
    3ebc:	03e00008 	jr	ra
    3ec0:	27bd0058 	addiu	sp,sp,88

00003ec4 <T_BGCheck_getBGDataInfo>:
    3ec4:	27bdffe8 	addiu	sp,sp,-24
    3ec8:	24010032 	li	at,50
    3ecc:	14a10003 	bne	a1,at,3edc <T_BGCheck_getBGDataInfo+0x18>
    3ed0:	afbf0014 	sw	ra,20(sp)
    3ed4:	1000001d 	b	3f4c <T_BGCheck_getBGDataInfo+0x88>
    3ed8:	8c820000 	lw	v0,0(a0)
    3edc:	04a00003 	bltz	a1,3eec <T_BGCheck_getBGDataInfo+0x28>
    3ee0:	28a10033 	slti	at,a1,51
    3ee4:	14200003 	bnez	at,3ef4 <T_BGCheck_getBGDataInfo+0x30>
    3ee8:	00057040 	sll	t6,a1,0x1
    3eec:	10000017 	b	3f4c <T_BGCheck_getBGDataInfo+0x88>
    3ef0:	00001025 	move	v0,zero
    3ef4:	008e7821 	addu	t7,a0,t6
    3ef8:	95f813dc 	lhu	t8,5084(t7)
    3efc:	00054080 	sll	t0,a1,0x2
    3f00:	01054023 	subu	t0,t0,a1
    3f04:	33190001 	andi	t9,t8,0x1
    3f08:	1720000c 	bnez	t9,3f3c <T_BGCheck_getBGDataInfo+0x78>
    3f0c:	000840c0 	sll	t0,t0,0x3
    3f10:	3c040000 	lui	a0,0x0
    3f14:	0c000000 	jal	0 <func_80038600>
    3f18:	24840000 	addiu	a0,a0,0
    3f1c:	3c040000 	lui	a0,0x0
    3f20:	0c000000 	jal	0 <func_80038600>
    3f24:	24840000 	addiu	a0,a0,0
    3f28:	3c040000 	lui	a0,0x0
    3f2c:	0c000000 	jal	0 <func_80038600>
    3f30:	24840000 	addiu	a0,a0,0
    3f34:	10000005 	b	3f4c <T_BGCheck_getBGDataInfo+0x88>
    3f38:	00001025 	move	v0,zero
    3f3c:	01054021 	addu	t0,t0,a1
    3f40:	00084080 	sll	t0,t0,0x2
    3f44:	00884821 	addu	t1,a0,t0
    3f48:	8d220058 	lw	v0,88(t1)
    3f4c:	8fbf0014 	lw	ra,20(sp)
    3f50:	27bd0018 	addiu	sp,sp,24
    3f54:	03e00008 	jr	ra
    3f58:	00000000 	nop

00003f5c <func_8003C55C>:
    3f5c:	3c014248 	lui	at,0x4248
    3f60:	44811000 	mtc1	at,$f2
    3f64:	c4840004 	lwc1	$f4,4(a0)
    3f68:	c4a00000 	lwc1	$f0,0(a1)
    3f6c:	46022181 	sub.s	$f6,$f4,$f2
    3f70:	4606003c 	c.lt.s	$f0,$f6
    3f74:	00000000 	nop
    3f78:	45010022 	bc1t	4004 <func_8003C55C+0xa8>
    3f7c:	00000000 	nop
    3f80:	c4880010 	lwc1	$f8,16(a0)
    3f84:	46024280 	add.s	$f10,$f8,$f2
    3f88:	4600503c 	c.lt.s	$f10,$f0
    3f8c:	00000000 	nop
    3f90:	4501001c 	bc1t	4004 <func_8003C55C+0xa8>
    3f94:	00000000 	nop
    3f98:	c4900008 	lwc1	$f16,8(a0)
    3f9c:	c4a00004 	lwc1	$f0,4(a1)
    3fa0:	46028481 	sub.s	$f18,$f16,$f2
    3fa4:	4612003c 	c.lt.s	$f0,$f18
    3fa8:	00000000 	nop
    3fac:	45010015 	bc1t	4004 <func_8003C55C+0xa8>
    3fb0:	00000000 	nop
    3fb4:	c4840014 	lwc1	$f4,20(a0)
    3fb8:	46022180 	add.s	$f6,$f4,$f2
    3fbc:	4600303c 	c.lt.s	$f6,$f0
    3fc0:	00000000 	nop
    3fc4:	4501000f 	bc1t	4004 <func_8003C55C+0xa8>
    3fc8:	00000000 	nop
    3fcc:	c488000c 	lwc1	$f8,12(a0)
    3fd0:	c4a00008 	lwc1	$f0,8(a1)
    3fd4:	46024281 	sub.s	$f10,$f8,$f2
    3fd8:	460a003c 	c.lt.s	$f0,$f10
    3fdc:	00000000 	nop
    3fe0:	45010008 	bc1t	4004 <func_8003C55C+0xa8>
    3fe4:	00000000 	nop
    3fe8:	c4900018 	lwc1	$f16,24(a0)
    3fec:	24020001 	li	v0,1
    3ff0:	46028480 	add.s	$f18,$f16,$f2
    3ff4:	4600903c 	c.lt.s	$f18,$f0
    3ff8:	00000000 	nop
    3ffc:	45000003 	bc1f	400c <func_8003C55C+0xb0>
    4000:	00000000 	nop
    4004:	03e00008 	jr	ra
    4008:	00001025 	move	v0,zero
    400c:	03e00008 	jr	ra
    4010:	00000000 	nop

00004014 <func_8003C614>:
    4014:	27bdff48 	addiu	sp,sp,-184
    4018:	8faf00c8 	lw	t7,200(sp)
    401c:	afb60058 	sw	s6,88(sp)
    4020:	8fb600cc 	lw	s6,204(sp)
    4024:	afbf0064 	sw	ra,100(sp)
    4028:	afbe0060 	sw	s8,96(sp)
    402c:	afb7005c 	sw	s7,92(sp)
    4030:	afb50054 	sw	s5,84(sp)
    4034:	afb40050 	sw	s4,80(sp)
    4038:	afb3004c 	sw	s3,76(sp)
    403c:	afb20048 	sw	s2,72(sp)
    4040:	afb10044 	sw	s1,68(sp)
    4044:	afb00040 	sw	s0,64(sp)
    4048:	f7b80038 	sdc1	$f24,56(sp)
    404c:	f7b60030 	sdc1	$f22,48(sp)
    4050:	f7b40028 	sdc1	$f20,40(sp)
    4054:	afa400b8 	sw	a0,184(sp)
    4058:	afa600c0 	sw	a2,192(sp)
    405c:	afa700c4 	sw	a3,196(sp)
    4060:	240e0032 	li	t6,50
    4064:	adee0000 	sw	t6,0(t7)
    4068:	8fb800c4 	lw	t8,196(sp)
    406c:	27b200a0 	addiu	s2,sp,160
    4070:	3c01c6fa 	lui	at,0xc6fa
    4074:	af000000 	sw	zero,0(t8)
    4078:	8ec80000 	lw	t0,0(s6)
    407c:	8cb50040 	lw	s5,64(a1)
    4080:	4481a000 	mtc1	at,$f20
    4084:	ae480000 	sw	t0,0(s2)
    4088:	8ed90004 	lw	t9,4(s6)
    408c:	3c130000 	lui	s3,0x0
    4090:	3c140000 	lui	s4,0x0
    4094:	ae590004 	sw	t9,4(s2)
    4098:	8ec80008 	lw	t0,8(s6)
    409c:	00a08025 	move	s0,a1
    40a0:	30d7ffff 	andi	s7,a2,0xffff
    40a4:	ae480008 	sw	t0,8(s2)
    40a8:	8fb100d0 	lw	s1,208(sp)
    40ac:	8fbe00d4 	lw	s8,212(sp)
    40b0:	c7b800d8 	lwc1	$f24,216(sp)
    40b4:	26940000 	addiu	s4,s4,0
    40b8:	26730000 	addiu	s3,s3,0
    40bc:	4600a586 	mov.s	$f22,$f20
    40c0:	c7a400a4 	lwc1	$f4,164(sp)
    40c4:	c6060008 	lwc1	$f6,8(s0)
    40c8:	02402025 	move	a0,s2
    40cc:	02602825 	move	a1,s3
    40d0:	4606203c 	c.lt.s	$f4,$f6
    40d4:	00000000 	nop
    40d8:	45030026 	bc1tl	4174 <func_8003C614+0x160>
    40dc:	8fa900b8 	lw	t1,184(sp)
    40e0:	0c000000 	jal	0 <func_80038600>
    40e4:	2406113a 	li	a2,4410
    40e8:	50400006 	beqzl	v0,4104 <func_8003C614+0xf0>
    40ec:	02002025 	move	a0,s0
    40f0:	12200003 	beqz	s1,4100 <func_8003C614+0xec>
    40f4:	02802025 	move	a0,s4
    40f8:	0c000000 	jal	0 <func_80038600>
    40fc:	86250000 	lh	a1,0(s1)
    4100:	02002025 	move	a0,s0
    4104:	02a02825 	move	a1,s5
    4108:	0c000000 	jal	0 <func_80038600>
    410c:	02403025 	move	a2,s2
    4110:	14400006 	bnez	v0,412c <func_8003C614+0x118>
    4114:	00402025 	move	a0,v0
    4118:	c7a800a4 	lwc1	$f8,164(sp)
    411c:	c60a002c 	lwc1	$f10,44(s0)
    4120:	460a4401 	sub.s	$f16,$f8,$f10
    4124:	1000ffe6 	b	40c0 <func_8003C614+0xac>
    4128:	e7b000a4 	swc1	$f16,164(sp)
    412c:	02002825 	move	a1,s0
    4130:	32e6ffff 	andi	a2,s7,0xffff
    4134:	8fa700c4 	lw	a3,196(sp)
    4138:	afb60010 	sw	s6,16(sp)
    413c:	afbe0014 	sw	s8,20(sp)
    4140:	e7b80018 	swc1	$f24,24(sp)
    4144:	0c000000 	jal	0 <func_80038600>
    4148:	e7b4001c 	swc1	$f20,28(sp)
    414c:	4600a03c 	c.lt.s	$f20,$f0
    4150:	46000586 	mov.s	$f22,$f0
    4154:	c7b200a4 	lwc1	$f18,164(sp)
    4158:	45030006 	bc1tl	4174 <func_8003C614+0x160>
    415c:	8fa900b8 	lw	t1,184(sp)
    4160:	c604002c 	lwc1	$f4,44(s0)
    4164:	46049181 	sub.s	$f6,$f18,$f4
    4168:	1000ffd5 	b	40c0 <func_8003C614+0xac>
    416c:	e7a600a4 	swc1	$f6,164(sp)
    4170:	8fa900b8 	lw	t1,184(sp)
    4174:	8faa00c4 	lw	t2,196(sp)
    4178:	8fab00c8 	lw	t3,200(sp)
    417c:	afb00070 	sw	s0,112(sp)
    4180:	a7b70074 	sh	s7,116(sp)
    4184:	e7b6007c 	swc1	$f22,124(sp)
    4188:	afb60080 	sw	s6,128(sp)
    418c:	afb10088 	sw	s1,136(sp)
    4190:	afbe008c 	sw	s8,140(sp)
    4194:	e7b80090 	swc1	$f24,144(sp)
    4198:	27a4006c 	addiu	a0,sp,108
    419c:	afa9006c 	sw	t1,108(sp)
    41a0:	afaa0078 	sw	t2,120(sp)
    41a4:	0c000000 	jal	0 <func_80038600>
    41a8:	afab0084 	sw	t3,132(sp)
    41ac:	4600b03c 	c.lt.s	$f22,$f0
    41b0:	8fac00c4 	lw	t4,196(sp)
    41b4:	8fad00c8 	lw	t5,200(sp)
    41b8:	45020003 	bc1fl	41c8 <func_8003C614+0x1b4>
    41bc:	4614b032 	c.eq.s	$f22,$f20
    41c0:	46000586 	mov.s	$f22,$f0
    41c4:	4614b032 	c.eq.s	$f22,$f20
    41c8:	02002025 	move	a0,s0
    41cc:	4503000a 	bc1tl	41f8 <func_8003C614+0x1e4>
    41d0:	8fbf0064 	lw	ra,100(sp)
    41d4:	8d850000 	lw	a1,0(t4)
    41d8:	0c000000 	jal	0 <func_80038600>
    41dc:	8da60000 	lw	a2,0(t5)
    41e0:	10400004 	beqz	v0,41f4 <func_8003C614+0x1e0>
    41e4:	3c013f80 	lui	at,0x3f80
    41e8:	44814000 	mtc1	at,$f8
    41ec:	00000000 	nop
    41f0:	4608b581 	sub.s	$f22,$f22,$f8
    41f4:	8fbf0064 	lw	ra,100(sp)
    41f8:	4600b006 	mov.s	$f0,$f22
    41fc:	d7b60030 	ldc1	$f22,48(sp)
    4200:	d7b40028 	ldc1	$f20,40(sp)
    4204:	d7b80038 	ldc1	$f24,56(sp)
    4208:	8fb00040 	lw	s0,64(sp)
    420c:	8fb10044 	lw	s1,68(sp)
    4210:	8fb20048 	lw	s2,72(sp)
    4214:	8fb3004c 	lw	s3,76(sp)
    4218:	8fb40050 	lw	s4,80(sp)
    421c:	8fb50054 	lw	s5,84(sp)
    4220:	8fb60058 	lw	s6,88(sp)
    4224:	8fb7005c 	lw	s7,92(sp)
    4228:	8fbe0060 	lw	s8,96(sp)
    422c:	03e00008 	jr	ra
    4230:	27bd00b8 	addiu	sp,sp,184
    4234:	27bdffc8 	addiu	sp,sp,-56
    4238:	afa60040 	sw	a2,64(sp)
    423c:	3c013f80 	lui	at,0x3f80
    4240:	44812000 	mtc1	at,$f4
    4244:	8faf0040 	lw	t7,64(sp)
    4248:	00a03825 	move	a3,a1
    424c:	00802825 	move	a1,a0
    4250:	afbf002c 	sw	ra,44(sp)
    4254:	afa40038 	sw	a0,56(sp)
    4258:	27ae0034 	addiu	t6,sp,52
    425c:	2418001c 	li	t8,28
    4260:	afb8001c 	sw	t8,28(sp)
    4264:	afae0010 	sw	t6,16(sp)
    4268:	00002025 	move	a0,zero
    426c:	24060001 	li	a2,1
    4270:	afa00018 	sw	zero,24(sp)
    4274:	afaf0014 	sw	t7,20(sp)
    4278:	0c000000 	jal	0 <func_80038600>
    427c:	e7a40020 	swc1	$f4,32(sp)
    4280:	8fbf002c 	lw	ra,44(sp)
    4284:	27bd0038 	addiu	sp,sp,56
    4288:	03e00008 	jr	ra
    428c:	00000000 	nop

00004290 <func_8003C890>:
    4290:	27bdffc8 	addiu	sp,sp,-56
    4294:	afa60040 	sw	a2,64(sp)
    4298:	3c013f80 	lui	at,0x3f80
    429c:	44812000 	mtc1	at,$f4
    42a0:	8faf0040 	lw	t7,64(sp)
    42a4:	00a03825 	move	a3,a1
    42a8:	00802825 	move	a1,a0
    42ac:	afbf002c 	sw	ra,44(sp)
    42b0:	afa40038 	sw	a0,56(sp)
    42b4:	27ae0034 	addiu	t6,sp,52
    42b8:	2418001c 	li	t8,28
    42bc:	afb8001c 	sw	t8,28(sp)
    42c0:	afae0010 	sw	t6,16(sp)
    42c4:	00002025 	move	a0,zero
    42c8:	24060002 	li	a2,2
    42cc:	afa00018 	sw	zero,24(sp)
    42d0:	afaf0014 	sw	t7,20(sp)
    42d4:	0c000000 	jal	0 <func_80038600>
    42d8:	e7a40020 	swc1	$f4,32(sp)
    42dc:	8fbf002c 	lw	ra,44(sp)
    42e0:	27bd0038 	addiu	sp,sp,56
    42e4:	03e00008 	jr	ra
    42e8:	00000000 	nop

000042ec <func_8003C8EC>:
    42ec:	27bdffc8 	addiu	sp,sp,-56
    42f0:	afa70044 	sw	a3,68(sp)
    42f4:	3c013f80 	lui	at,0x3f80
    42f8:	44812000 	mtc1	at,$f4
    42fc:	8faf0044 	lw	t7,68(sp)
    4300:	00c03825 	move	a3,a2
    4304:	afbf002c 	sw	ra,44(sp)
    4308:	afa60040 	sw	a2,64(sp)
    430c:	27ae0034 	addiu	t6,sp,52
    4310:	2418001c 	li	t8,28
    4314:	afb8001c 	sw	t8,28(sp)
    4318:	afae0010 	sw	t6,16(sp)
    431c:	24060002 	li	a2,2
    4320:	afa00018 	sw	zero,24(sp)
    4324:	afaf0014 	sw	t7,20(sp)
    4328:	0c000000 	jal	0 <func_80038600>
    432c:	e7a40020 	swc1	$f4,32(sp)
    4330:	8fbf002c 	lw	ra,44(sp)
    4334:	27bd0038 	addiu	sp,sp,56
    4338:	03e00008 	jr	ra
    433c:	00000000 	nop

00004340 <func_8003C940>:
    4340:	27bdffd0 	addiu	sp,sp,-48
    4344:	afa60038 	sw	a2,56(sp)
    4348:	afa7003c 	sw	a3,60(sp)
    434c:	3c013f80 	lui	at,0x3f80
    4350:	44812000 	mtc1	at,$f4
    4354:	8faf003c 	lw	t7,60(sp)
    4358:	8fae0038 	lw	t6,56(sp)
    435c:	afa50034 	sw	a1,52(sp)
    4360:	00802825 	move	a1,a0
    4364:	afbf002c 	sw	ra,44(sp)
    4368:	afa40030 	sw	a0,48(sp)
    436c:	2418001c 	li	t8,28
    4370:	8fa70034 	lw	a3,52(sp)
    4374:	afb8001c 	sw	t8,28(sp)
    4378:	00002025 	move	a0,zero
    437c:	24060002 	li	a2,2
    4380:	afa00018 	sw	zero,24(sp)
    4384:	afaf0014 	sw	t7,20(sp)
    4388:	e7a40020 	swc1	$f4,32(sp)
    438c:	0c000000 	jal	0 <func_80038600>
    4390:	afae0010 	sw	t6,16(sp)
    4394:	8fbf002c 	lw	ra,44(sp)
    4398:	27bd0030 	addiu	sp,sp,48
    439c:	03e00008 	jr	ra
    43a0:	00000000 	nop

000043a4 <func_8003C9A4>:
    43a4:	27bdffd0 	addiu	sp,sp,-48
    43a8:	afa60038 	sw	a2,56(sp)
    43ac:	afa7003c 	sw	a3,60(sp)
    43b0:	3c013f80 	lui	at,0x3f80
    43b4:	44812000 	mtc1	at,$f4
    43b8:	8fb8003c 	lw	t8,60(sp)
    43bc:	8fae0038 	lw	t6,56(sp)
    43c0:	8faf0040 	lw	t7,64(sp)
    43c4:	afa50034 	sw	a1,52(sp)
    43c8:	00802825 	move	a1,a0
    43cc:	afbf002c 	sw	ra,44(sp)
    43d0:	afa40030 	sw	a0,48(sp)
    43d4:	2419001c 	li	t9,28
    43d8:	8fa70034 	lw	a3,52(sp)
    43dc:	afb9001c 	sw	t9,28(sp)
    43e0:	00002025 	move	a0,zero
    43e4:	24060002 	li	a2,2
    43e8:	afb80018 	sw	t8,24(sp)
    43ec:	e7a40020 	swc1	$f4,32(sp)
    43f0:	afae0010 	sw	t6,16(sp)
    43f4:	0c000000 	jal	0 <func_80038600>
    43f8:	afaf0014 	sw	t7,20(sp)
    43fc:	8fbf002c 	lw	ra,44(sp)
    4400:	27bd0030 	addiu	sp,sp,48
    4404:	03e00008 	jr	ra
    4408:	00000000 	nop

0000440c <func_8003CA0C>:
    440c:	27bdffd0 	addiu	sp,sp,-48
    4410:	afa7003c 	sw	a3,60(sp)
    4414:	3c013f80 	lui	at,0x3f80
    4418:	44812000 	mtc1	at,$f4
    441c:	8fae003c 	lw	t6,60(sp)
    4420:	8faf0044 	lw	t7,68(sp)
    4424:	8fb80040 	lw	t8,64(sp)
    4428:	00c03825 	move	a3,a2
    442c:	afbf002c 	sw	ra,44(sp)
    4430:	afa60038 	sw	a2,56(sp)
    4434:	2419001c 	li	t9,28
    4438:	afb9001c 	sw	t9,28(sp)
    443c:	24060002 	li	a2,2
    4440:	afae0010 	sw	t6,16(sp)
    4444:	e7a40020 	swc1	$f4,32(sp)
    4448:	afaf0014 	sw	t7,20(sp)
    444c:	0c000000 	jal	0 <func_80038600>
    4450:	afb80018 	sw	t8,24(sp)
    4454:	8fbf002c 	lw	ra,44(sp)
    4458:	27bd0030 	addiu	sp,sp,48
    445c:	03e00008 	jr	ra
    4460:	00000000 	nop

00004464 <func_8003CA64>:
    4464:	27bdffd0 	addiu	sp,sp,-48
    4468:	afa60038 	sw	a2,56(sp)
    446c:	afa7003c 	sw	a3,60(sp)
    4470:	8fb8003c 	lw	t8,60(sp)
    4474:	8fae0038 	lw	t6,56(sp)
    4478:	8faf0040 	lw	t7,64(sp)
    447c:	c7a40044 	lwc1	$f4,68(sp)
    4480:	afa50034 	sw	a1,52(sp)
    4484:	00802825 	move	a1,a0
    4488:	afbf002c 	sw	ra,44(sp)
    448c:	afa40030 	sw	a0,48(sp)
    4490:	2419001c 	li	t9,28
    4494:	8fa70034 	lw	a3,52(sp)
    4498:	afb9001c 	sw	t9,28(sp)
    449c:	00002025 	move	a0,zero
    44a0:	24060002 	li	a2,2
    44a4:	afb80018 	sw	t8,24(sp)
    44a8:	afae0010 	sw	t6,16(sp)
    44ac:	afaf0014 	sw	t7,20(sp)
    44b0:	0c000000 	jal	0 <func_80038600>
    44b4:	e7a40020 	swc1	$f4,32(sp)
    44b8:	8fbf002c 	lw	ra,44(sp)
    44bc:	27bd0030 	addiu	sp,sp,48
    44c0:	03e00008 	jr	ra
    44c4:	00000000 	nop
    44c8:	27bdffd0 	addiu	sp,sp,-48
    44cc:	afa60038 	sw	a2,56(sp)
    44d0:	afa7003c 	sw	a3,60(sp)
    44d4:	3c013f80 	lui	at,0x3f80
    44d8:	44812000 	mtc1	at,$f4
    44dc:	8fb8003c 	lw	t8,60(sp)
    44e0:	8fae0038 	lw	t6,56(sp)
    44e4:	8faf0040 	lw	t7,64(sp)
    44e8:	afa50034 	sw	a1,52(sp)
    44ec:	00802825 	move	a1,a0
    44f0:	afbf002c 	sw	ra,44(sp)
    44f4:	afa40030 	sw	a0,48(sp)
    44f8:	24190006 	li	t9,6
    44fc:	8fa70034 	lw	a3,52(sp)
    4500:	afb9001c 	sw	t9,28(sp)
    4504:	00002025 	move	a0,zero
    4508:	24060002 	li	a2,2
    450c:	afb80018 	sw	t8,24(sp)
    4510:	e7a40020 	swc1	$f4,32(sp)
    4514:	afae0010 	sw	t6,16(sp)
    4518:	0c000000 	jal	0 <func_80038600>
    451c:	afaf0014 	sw	t7,20(sp)
    4520:	8fbf002c 	lw	ra,44(sp)
    4524:	27bd0030 	addiu	sp,sp,48
    4528:	03e00008 	jr	ra
    452c:	00000000 	nop

00004530 <func_8003CB30>:
    4530:	27bdffc0 	addiu	sp,sp,-64
    4534:	afa60048 	sw	a2,72(sp)
    4538:	3c013f80 	lui	at,0x3f80
    453c:	44812000 	mtc1	at,$f4
    4540:	8faf0048 	lw	t7,72(sp)
    4544:	afa50044 	sw	a1,68(sp)
    4548:	00802825 	move	a1,a0
    454c:	afbf002c 	sw	ra,44(sp)
    4550:	afa40040 	sw	a0,64(sp)
    4554:	27ae0034 	addiu	t6,sp,52
    4558:	2418001c 	li	t8,28
    455c:	afb8001c 	sw	t8,28(sp)
    4560:	afae0010 	sw	t6,16(sp)
    4564:	00002025 	move	a0,zero
    4568:	00003025 	move	a2,zero
    456c:	27a7003c 	addiu	a3,sp,60
    4570:	afa00018 	sw	zero,24(sp)
    4574:	afaf0014 	sw	t7,20(sp)
    4578:	0c000000 	jal	0 <func_80038600>
    457c:	e7a40020 	swc1	$f4,32(sp)
    4580:	8fb9003c 	lw	t9,60(sp)
    4584:	46000086 	mov.s	$f2,$f0
    4588:	8fa80044 	lw	t0,68(sp)
    458c:	53200012 	beqzl	t9,45d8 <func_8003CB30+0xa8>
    4590:	8fbf002c 	lw	ra,44(sp)
    4594:	8b2a0000 	lwl	t2,0(t9)
    4598:	9b2a0003 	lwr	t2,3(t9)
    459c:	a90a0000 	swl	t2,0(t0)
    45a0:	b90a0003 	swr	t2,3(t0)
    45a4:	8b290004 	lwl	t1,4(t9)
    45a8:	9b290007 	lwr	t1,7(t9)
    45ac:	a9090004 	swl	t1,4(t0)
    45b0:	b9090007 	swr	t1,7(t0)
    45b4:	8b2a0008 	lwl	t2,8(t9)
    45b8:	9b2a000b 	lwr	t2,11(t9)
    45bc:	a90a0008 	swl	t2,8(t0)
    45c0:	b90a000b 	swr	t2,11(t0)
    45c4:	8b29000c 	lwl	t1,12(t9)
    45c8:	9b29000f 	lwr	t1,15(t9)
    45cc:	a909000c 	swl	t1,12(t0)
    45d0:	b909000f 	swr	t1,15(t0)
    45d4:	8fbf002c 	lw	ra,44(sp)
    45d8:	27bd0040 	addiu	sp,sp,64
    45dc:	46001006 	mov.s	$f0,$f2
    45e0:	03e00008 	jr	ra
    45e4:	00000000 	nop
    45e8:	27bdffc8 	addiu	sp,sp,-56
    45ec:	afa60040 	sw	a2,64(sp)
    45f0:	afa70044 	sw	a3,68(sp)
    45f4:	3c013f80 	lui	at,0x3f80
    45f8:	44812000 	mtc1	at,$f4
    45fc:	8faf0044 	lw	t7,68(sp)
    4600:	8fae0040 	lw	t6,64(sp)
    4604:	afa5003c 	sw	a1,60(sp)
    4608:	00802825 	move	a1,a0
    460c:	afbf002c 	sw	ra,44(sp)
    4610:	afa40038 	sw	a0,56(sp)
    4614:	2418001c 	li	t8,28
    4618:	afb8001c 	sw	t8,28(sp)
    461c:	00002025 	move	a0,zero
    4620:	27a70034 	addiu	a3,sp,52
    4624:	00003025 	move	a2,zero
    4628:	afa00018 	sw	zero,24(sp)
    462c:	afaf0014 	sw	t7,20(sp)
    4630:	e7a40020 	swc1	$f4,32(sp)
    4634:	0c000000 	jal	0 <func_80038600>
    4638:	afae0010 	sw	t6,16(sp)
    463c:	8fb90034 	lw	t9,52(sp)
    4640:	46000086 	mov.s	$f2,$f0
    4644:	8fa8003c 	lw	t0,60(sp)
    4648:	53200012 	beqzl	t9,4694 <func_8003CB30+0x164>
    464c:	8fbf002c 	lw	ra,44(sp)
    4650:	8b2a0000 	lwl	t2,0(t9)
    4654:	9b2a0003 	lwr	t2,3(t9)
    4658:	a90a0000 	swl	t2,0(t0)
    465c:	b90a0003 	swr	t2,3(t0)
    4660:	8b290004 	lwl	t1,4(t9)
    4664:	9b290007 	lwr	t1,7(t9)
    4668:	a9090004 	swl	t1,4(t0)
    466c:	b9090007 	swr	t1,7(t0)
    4670:	8b2a0008 	lwl	t2,8(t9)
    4674:	9b2a000b 	lwr	t2,11(t9)
    4678:	a90a0008 	swl	t2,8(t0)
    467c:	b90a000b 	swr	t2,11(t0)
    4680:	8b29000c 	lwl	t1,12(t9)
    4684:	9b29000f 	lwr	t1,15(t9)
    4688:	a909000c 	swl	t1,12(t0)
    468c:	b909000f 	swr	t1,15(t0)
    4690:	8fbf002c 	lw	ra,44(sp)
    4694:	27bd0038 	addiu	sp,sp,56
    4698:	46001006 	mov.s	$f0,$f2
    469c:	03e00008 	jr	ra
    46a0:	00000000 	nop

000046a4 <func_8003CCA4>:
    46a4:	27bdffd0 	addiu	sp,sp,-48
    46a8:	afa60038 	sw	a2,56(sp)
    46ac:	afa7003c 	sw	a3,60(sp)
    46b0:	3c013f80 	lui	at,0x3f80
    46b4:	44812000 	mtc1	at,$f4
    46b8:	8faf003c 	lw	t7,60(sp)
    46bc:	8fae0038 	lw	t6,56(sp)
    46c0:	afa50034 	sw	a1,52(sp)
    46c4:	00802825 	move	a1,a0
    46c8:	afbf002c 	sw	ra,44(sp)
    46cc:	afa40030 	sw	a0,48(sp)
    46d0:	24180006 	li	t8,6
    46d4:	8fa70034 	lw	a3,52(sp)
    46d8:	afb8001c 	sw	t8,28(sp)
    46dc:	00002025 	move	a0,zero
    46e0:	24060001 	li	a2,1
    46e4:	afa00018 	sw	zero,24(sp)
    46e8:	afaf0014 	sw	t7,20(sp)
    46ec:	e7a40020 	swc1	$f4,32(sp)
    46f0:	0c000000 	jal	0 <func_80038600>
    46f4:	afae0010 	sw	t6,16(sp)
    46f8:	8fbf002c 	lw	ra,44(sp)
    46fc:	27bd0030 	addiu	sp,sp,48
    4700:	03e00008 	jr	ra
    4704:	00000000 	nop
    4708:	27bdffd0 	addiu	sp,sp,-48
    470c:	afa60038 	sw	a2,56(sp)
    4710:	afa7003c 	sw	a3,60(sp)
    4714:	3c013f80 	lui	at,0x3f80
    4718:	44812000 	mtc1	at,$f4
    471c:	8fb8003c 	lw	t8,60(sp)
    4720:	8fae0038 	lw	t6,56(sp)
    4724:	8faf0040 	lw	t7,64(sp)
    4728:	afa50034 	sw	a1,52(sp)
    472c:	00802825 	move	a1,a0
    4730:	afbf002c 	sw	ra,44(sp)
    4734:	afa40030 	sw	a0,48(sp)
    4738:	24190002 	li	t9,2
    473c:	8fa70034 	lw	a3,52(sp)
    4740:	afb9001c 	sw	t9,28(sp)
    4744:	00002025 	move	a0,zero
    4748:	24060002 	li	a2,2
    474c:	afb80018 	sw	t8,24(sp)
    4750:	e7a40020 	swc1	$f4,32(sp)
    4754:	afae0010 	sw	t6,16(sp)
    4758:	0c000000 	jal	0 <func_80038600>
    475c:	afaf0014 	sw	t7,20(sp)
    4760:	8fbf002c 	lw	ra,44(sp)
    4764:	27bd0030 	addiu	sp,sp,48
    4768:	03e00008 	jr	ra
    476c:	00000000 	nop
    4770:	27bdffd0 	addiu	sp,sp,-48
    4774:	afa60038 	sw	a2,56(sp)
    4778:	afa7003c 	sw	a3,60(sp)
    477c:	3c013f80 	lui	at,0x3f80
    4780:	44812000 	mtc1	at,$f4
    4784:	8faf003c 	lw	t7,60(sp)
    4788:	8fae0038 	lw	t6,56(sp)
    478c:	afa50034 	sw	a1,52(sp)
    4790:	00802825 	move	a1,a0
    4794:	afbf002c 	sw	ra,44(sp)
    4798:	afa40030 	sw	a0,48(sp)
    479c:	24180006 	li	t8,6
    47a0:	8fa70034 	lw	a3,52(sp)
    47a4:	afb8001c 	sw	t8,28(sp)
    47a8:	00002025 	move	a0,zero
    47ac:	24060002 	li	a2,2
    47b0:	afa00018 	sw	zero,24(sp)
    47b4:	afaf0014 	sw	t7,20(sp)
    47b8:	e7a40020 	swc1	$f4,32(sp)
    47bc:	0c000000 	jal	0 <func_80038600>
    47c0:	afae0010 	sw	t6,16(sp)
    47c4:	8fbf002c 	lw	ra,44(sp)
    47c8:	27bd0030 	addiu	sp,sp,48
    47cc:	03e00008 	jr	ra
    47d0:	00000000 	nop

000047d4 <func_8003CDD4>:
    47d4:	27bdff20 	addiu	sp,sp,-224
    47d8:	8faf00fc 	lw	t7,252(sp)
    47dc:	afbf003c 	sw	ra,60(sp)
    47e0:	afb00038 	sw	s0,56(sp)
    47e4:	afa400e0 	sw	a0,224(sp)
    47e8:	afa500e4 	sw	a1,228(sp)
    47ec:	afa000d4 	sw	zero,212(sp)
    47f0:	240e0032 	li	t6,50
    47f4:	adee0000 	sw	t6,0(t7)
    47f8:	8fb800f8 	lw	t8,248(sp)
    47fc:	00c08025 	move	s0,a2
    4800:	3c050000 	lui	a1,0x0
    4804:	af000000 	sw	zero,0(t8)
    4808:	8fb900e0 	lw	t9,224(sp)
    480c:	24a50000 	addiu	a1,a1,0
    4810:	00e02025 	move	a0,a3
    4814:	8f290040 	lw	t1,64(t9)
    4818:	afa900dc 	sw	t1,220(sp)
    481c:	8ceb0000 	lw	t3,0(a3)
    4820:	accb0000 	sw	t3,0(a2)
    4824:	8cea0004 	lw	t2,4(a3)
    4828:	acca0004 	sw	t2,4(a2)
    482c:	8ceb0008 	lw	t3,8(a3)
    4830:	accb0008 	sw	t3,8(a2)
    4834:	8fac00f0 	lw	t4,240(sp)
    4838:	c4e40000 	lwc1	$f4,0(a3)
    483c:	240612df 	li	a2,4831
    4840:	c5860000 	lwc1	$f6,0(t4)
    4844:	46062201 	sub.s	$f8,$f4,$f6
    4848:	e7a800cc 	swc1	$f8,204(sp)
    484c:	c4ea0004 	lwc1	$f10,4(a3)
    4850:	c5920004 	lwc1	$f18,4(t4)
    4854:	46125101 	sub.s	$f4,$f10,$f18
    4858:	e7a400c8 	swc1	$f4,200(sp)
    485c:	c4e60008 	lwc1	$f6,8(a3)
    4860:	c5880008 	lwc1	$f8,8(t4)
    4864:	afa700ec 	sw	a3,236(sp)
    4868:	46083281 	sub.s	$f10,$f6,$f8
    486c:	0c000000 	jal	0 <func_80038600>
    4870:	e7aa00c4 	swc1	$f10,196(sp)
    4874:	24010001 	li	at,1
    4878:	10410008 	beq	v0,at,489c <func_8003CDD4+0xc8>
    487c:	8fa400f0 	lw	a0,240(sp)
    4880:	3c050000 	lui	a1,0x0
    4884:	24a50000 	addiu	a1,a1,0
    4888:	0c000000 	jal	0 <func_80038600>
    488c:	240612e0 	li	a2,4832
    4890:	24010001 	li	at,1
    4894:	54410009 	bnel	v0,at,48bc <func_8003CDD4+0xe8>
    4898:	44800000 	mtc1	zero,$f0
    489c:	8fa80100 	lw	t0,256(sp)
    48a0:	3c040000 	lui	a0,0x0
    48a4:	24840000 	addiu	a0,a0,0
    48a8:	51000004 	beqzl	t0,48bc <func_8003CDD4+0xe8>
    48ac:	44800000 	mtc1	zero,$f0
    48b0:	0c000000 	jal	0 <func_80038600>
    48b4:	85050000 	lh	a1,0(t0)
    48b8:	44800000 	mtc1	zero,$f0
    48bc:	c7a200cc 	lwc1	$f2,204(sp)
    48c0:	93ad010b 	lbu	t5,267(sp)
    48c4:	8fa80100 	lw	t0,256(sp)
    48c8:	46001032 	c.eq.s	$f2,$f0
    48cc:	c7ac00c4 	lwc1	$f12,196(sp)
    48d0:	31ae0001 	andi	t6,t5,0x1
    48d4:	45000005 	bc1f	48ec <func_8003CDD4+0x118>
    48d8:	00000000 	nop
    48dc:	46006032 	c.eq.s	$f12,$f0
    48e0:	00000000 	nop
    48e4:	450300cb 	bc1tl	4c14 <func_8003CDD4+0x440>
    48e8:	8e0c0000 	lw	t4,0(s0)
    48ec:	15c000c8 	bnez	t6,4c10 <func_8003CDD4+0x43c>
    48f0:	c7ac00c4 	lwc1	$f12,196(sp)
    48f4:	c7a00104 	lwc1	$f0,260(sp)
    48f8:	c7b200c8 	lwc1	$f18,200(sp)
    48fc:	3c0140a0 	lui	at,0x40a0
    4900:	44813000 	mtc1	at,$f6
    4904:	46120100 	add.s	$f4,$f0,$f18
    4908:	8fa400e0 	lw	a0,224(sp)
    490c:	97a500e6 	lhu	a1,230(sp)
    4910:	00003025 	move	a2,zero
    4914:	4606203c 	c.lt.s	$f4,$f6
    4918:	8fa700f0 	lw	a3,240(sp)
    491c:	8faf00ec 	lw	t7,236(sp)
    4920:	c7a400f4 	lwc1	$f4,244(sp)
    4924:	45000058 	bc1f	4a88 <func_8003CDD4+0x2b4>
    4928:	8fab00ec 	lw	t3,236(sp)
    492c:	3c013f80 	lui	at,0x3f80
    4930:	44814000 	mtc1	at,$f8
    4934:	27b800a8 	addiu	t8,sp,168
    4938:	27b900d0 	addiu	t9,sp,208
    493c:	27a900a4 	addiu	t1,sp,164
    4940:	240a001b 	li	t2,27
    4944:	afaa0028 	sw	t2,40(sp)
    4948:	afa9001c 	sw	t1,28(sp)
    494c:	afb90018 	sw	t9,24(sp)
    4950:	afb80014 	sw	t8,20(sp)
    4954:	afaf0010 	sw	t7,16(sp)
    4958:	afa80020 	sw	t0,32(sp)
    495c:	0c000000 	jal	0 <func_80038600>
    4960:	e7a80024 	swc1	$f8,36(sp)
    4964:	104000aa 	beqz	v0,4c10 <func_8003CDD4+0x43c>
    4968:	afa200d4 	sw	v0,212(sp)
    496c:	8fab00d0 	lw	t3,208(sp)
    4970:	3c010000 	lui	at,0x0
    4974:	c4240000 	lwc1	$f4,0(at)
    4978:	856c000a 	lh	t4,10(t3)
    497c:	3c013f00 	lui	at,0x3f00
    4980:	44813000 	mtc1	at,$f6
    4984:	448c5000 	mtc1	t4,$f10
    4988:	c7a800a8 	lwc1	$f8,168(sp)
    498c:	3c013f80 	lui	at,0x3f80
    4990:	468054a0 	cvt.s.w	$f18,$f10
    4994:	8fad00d0 	lw	t5,208(sp)
    4998:	46049302 	mul.s	$f12,$f18,$f4
    499c:	460c303c 	c.lt.s	$f6,$f12
    49a0:	00000000 	nop
    49a4:	45020016 	bc1fl	4a00 <func_8003CDD4+0x22c>
    49a8:	85ae0008 	lh	t6,8(t5)
    49ac:	e6080000 	swc1	$f8,0(s0)
    49b0:	c7b20104 	lwc1	$f18,260(sp)
    49b4:	44815000 	mtc1	at,$f10
    49b8:	3c013f80 	lui	at,0x3f80
    49bc:	c7a400ac 	lwc1	$f4,172(sp)
    49c0:	4612503c 	c.lt.s	$f10,$f18
    49c4:	c7b20104 	lwc1	$f18,260(sp)
    49c8:	c7aa00ac 	lwc1	$f10,172(sp)
    49cc:	45020007 	bc1fl	49ec <func_8003CDD4+0x218>
    49d0:	46125101 	sub.s	$f4,$f10,$f18
    49d4:	44813000 	mtc1	at,$f6
    49d8:	00000000 	nop
    49dc:	46062201 	sub.s	$f8,$f4,$f6
    49e0:	10000003 	b	49f0 <func_8003CDD4+0x21c>
    49e4:	e6080004 	swc1	$f8,4(s0)
    49e8:	46125101 	sub.s	$f4,$f10,$f18
    49ec:	e6040004 	swc1	$f4,4(s0)
    49f0:	c7a600b0 	lwc1	$f6,176(sp)
    49f4:	1000001d 	b	4a6c <func_8003CDD4+0x298>
    49f8:	e6060008 	swc1	$f6,8(s0)
    49fc:	85ae0008 	lh	t6,8(t5)
    4a00:	85af000c 	lh	t7,12(t5)
    4a04:	3c010000 	lui	at,0x0
    4a08:	448e4000 	mtc1	t6,$f8
    4a0c:	448f2000 	mtc1	t7,$f4
    4a10:	c4320000 	lwc1	$f18,0(at)
    4a14:	468042a0 	cvt.s.w	$f10,$f8
    4a18:	3c010000 	lui	at,0x0
    4a1c:	c4280000 	lwc1	$f8,0(at)
    4a20:	468021a0 	cvt.s.w	$f6,$f4
    4a24:	46125002 	mul.s	$f0,$f10,$f18
    4a28:	c7aa00f4 	lwc1	$f10,244(sp)
    4a2c:	c7a400a8 	lwc1	$f4,168(sp)
    4a30:	46083082 	mul.s	$f2,$f6,$f8
    4a34:	00000000 	nop
    4a38:	46005482 	mul.s	$f18,$f10,$f0
    4a3c:	46049180 	add.s	$f6,$f18,$f4
    4a40:	e6060000 	swc1	$f6,0(s0)
    4a44:	c7a800f4 	lwc1	$f8,244(sp)
    4a48:	c7b200ac 	lwc1	$f18,172(sp)
    4a4c:	460c4282 	mul.s	$f10,$f8,$f12
    4a50:	46125100 	add.s	$f4,$f10,$f18
    4a54:	e6040004 	swc1	$f4,4(s0)
    4a58:	c7a600f4 	lwc1	$f6,244(sp)
    4a5c:	c7aa00b0 	lwc1	$f10,176(sp)
    4a60:	46023202 	mul.s	$f8,$f6,$f2
    4a64:	460a4480 	add.s	$f18,$f8,$f10
    4a68:	e6120008 	swc1	$f18,8(s0)
    4a6c:	8fb800d0 	lw	t8,208(sp)
    4a70:	8fb900f8 	lw	t9,248(sp)
    4a74:	af380000 	sw	t8,0(t9)
    4a78:	8faa00fc 	lw	t2,252(sp)
    4a7c:	8fa900a4 	lw	t1,164(sp)
    4a80:	10000063 	b	4c10 <func_8003CDD4+0x43c>
    4a84:	ad490000 	sw	t1,0(t2)
    4a88:	46042182 	mul.s	$f6,$f4,$f4
    4a8c:	24020019 	li	v0,25
    4a90:	46021202 	mul.s	$f8,$f2,$f2
    4a94:	00000000 	nop
    4a98:	460c6282 	mul.s	$f10,$f12,$f12
    4a9c:	460a4480 	add.s	$f18,$f8,$f10
    4aa0:	4612303c 	c.lt.s	$f6,$f18
    4aa4:	00000000 	nop
    4aa8:	45000003 	bc1f	4ab8 <func_8003CDD4+0x2e4>
    4aac:	00000000 	nop
    4ab0:	10000001 	b	4ab8 <func_8003CDD4+0x2e4>
    4ab4:	2402001b 	li	v0,27
    4ab8:	8d6e0000 	lw	t6,0(t3)
    4abc:	27a30088 	addiu	v1,sp,136
    4ac0:	27a7007c 	addiu	a3,sp,124
    4ac4:	ac6e0000 	sw	t6,0(v1)
    4ac8:	8d6c0004 	lw	t4,4(t3)
    4acc:	3c013f80 	lui	at,0x3f80
    4ad0:	44813000 	mtc1	at,$f6
    4ad4:	ac6c0004 	sw	t4,4(v1)
    4ad8:	8d6e0008 	lw	t6,8(t3)
    4adc:	27b900a8 	addiu	t9,sp,168
    4ae0:	27a900d0 	addiu	t1,sp,208
    4ae4:	ac6e0008 	sw	t6,8(v1)
    4ae8:	c7a4008c 	lwc1	$f4,140(sp)
    4aec:	8fad00f0 	lw	t5,240(sp)
    4af0:	27aa00a4 	addiu	t2,sp,164
    4af4:	46002200 	add.s	$f8,$f4,$f0
    4af8:	00003025 	move	a2,zero
    4afc:	e7a8008c 	swc1	$f8,140(sp)
    4b00:	8db80000 	lw	t8,0(t5)
    4b04:	acf80000 	sw	t8,0(a3)
    4b08:	8daf0004 	lw	t7,4(t5)
    4b0c:	acef0004 	sw	t7,4(a3)
    4b10:	8db80008 	lw	t8,8(t5)
    4b14:	acf80008 	sw	t8,8(a3)
    4b18:	c7aa008c 	lwc1	$f10,140(sp)
    4b1c:	afa20028 	sw	v0,40(sp)
    4b20:	afa80020 	sw	t0,32(sp)
    4b24:	afaa001c 	sw	t2,28(sp)
    4b28:	afa90018 	sw	t1,24(sp)
    4b2c:	afb90014 	sw	t9,20(sp)
    4b30:	afa30010 	sw	v1,16(sp)
    4b34:	97a500e6 	lhu	a1,230(sp)
    4b38:	8fa400e0 	lw	a0,224(sp)
    4b3c:	e7a60024 	swc1	$f6,36(sp)
    4b40:	0c000000 	jal	0 <func_80038600>
    4b44:	e7aa0080 	swc1	$f10,128(sp)
    4b48:	10400031 	beqz	v0,4c10 <func_8003CDD4+0x43c>
    4b4c:	afa200d4 	sw	v0,212(sp)
    4b50:	8fab00d0 	lw	t3,208(sp)
    4b54:	3c010000 	lui	at,0x0
    4b58:	c4280000 	lwc1	$f8,0(at)
    4b5c:	856c0008 	lh	t4,8(t3)
    4b60:	856e000c 	lh	t6,12(t3)
    4b64:	3c010000 	lui	at,0x0
    4b68:	448c9000 	mtc1	t4,$f18
    4b6c:	448e5000 	mtc1	t6,$f10
    4b70:	46809120 	cvt.s.w	$f4,$f18
    4b74:	c4320000 	lwc1	$f18,0(at)
    4b78:	3c010000 	lui	at,0x0
    4b7c:	468051a0 	cvt.s.w	$f6,$f10
    4b80:	46082082 	mul.s	$f2,$f4,$f8
    4b84:	c42a0000 	lwc1	$f10,0(at)
    4b88:	3c013f80 	lui	at,0x3f80
    4b8c:	46123302 	mul.s	$f12,$f6,$f18
    4b90:	00000000 	nop
    4b94:	46021102 	mul.s	$f4,$f2,$f2
    4b98:	00000000 	nop
    4b9c:	460c6202 	mul.s	$f8,$f12,$f12
    4ba0:	46082000 	add.s	$f0,$f4,$f8
    4ba4:	46000384 	sqrt.s	$f14,$f0
    4ba8:	46007005 	abs.s	$f0,$f14
    4bac:	460a003c 	c.lt.s	$f0,$f10
    4bb0:	00000000 	nop
    4bb4:	45010016 	bc1t	4c10 <func_8003CDD4+0x43c>
    4bb8:	00000000 	nop
    4bbc:	44819000 	mtc1	at,$f18
    4bc0:	c7a600f4 	lwc1	$f6,244(sp)
    4bc4:	c7aa00a8 	lwc1	$f10,168(sp)
    4bc8:	460e9103 	div.s	$f4,$f18,$f14
    4bcc:	24090001 	li	t1,1
    4bd0:	46043002 	mul.s	$f0,$f6,$f4
    4bd4:	00000000 	nop
    4bd8:	46020202 	mul.s	$f8,$f0,$f2
    4bdc:	460a4480 	add.s	$f18,$f8,$f10
    4be0:	460c0182 	mul.s	$f6,$f0,$f12
    4be4:	e6120000 	swc1	$f18,0(s0)
    4be8:	c7a400b0 	lwc1	$f4,176(sp)
    4bec:	46043200 	add.s	$f8,$f6,$f4
    4bf0:	e6080008 	swc1	$f8,8(s0)
    4bf4:	8faf00f8 	lw	t7,248(sp)
    4bf8:	8fad00d0 	lw	t5,208(sp)
    4bfc:	aded0000 	sw	t5,0(t7)
    4c00:	8fb900fc 	lw	t9,252(sp)
    4c04:	8fb800a4 	lw	t8,164(sp)
    4c08:	af380000 	sw	t8,0(t9)
    4c0c:	afa900d4 	sw	t1,212(sp)
    4c10:	8e0c0000 	lw	t4,0(s0)
    4c14:	8fa80100 	lw	t0,256(sp)
    4c18:	27a200b8 	addiu	v0,sp,184
    4c1c:	ac4c0000 	sw	t4,0(v0)
    4c20:	8e0a0004 	lw	t2,4(s0)
    4c24:	26070008 	addiu	a3,s0,8
    4c28:	02003025 	move	a2,s0
    4c2c:	ac4a0004 	sw	t2,4(v0)
    4c30:	8e0c0008 	lw	t4,8(s0)
    4c34:	ac4c0008 	sw	t4,8(v0)
    4c38:	c7aa00bc 	lwc1	$f10,188(sp)
    4c3c:	c7b20104 	lwc1	$f18,260(sp)
    4c40:	8fae00fc 	lw	t6,252(sp)
    4c44:	8fab00f8 	lw	t3,248(sp)
    4c48:	46125180 	add.s	$f6,$f10,$f18
    4c4c:	c7a400f4 	lwc1	$f4,244(sp)
    4c50:	afa000b4 	sw	zero,180(sp)
    4c54:	afa70044 	sw	a3,68(sp)
    4c58:	e7a600bc 	swc1	$f6,188(sp)
    4c5c:	afa20010 	sw	v0,16(sp)
    4c60:	97a500e6 	lhu	a1,230(sp)
    4c64:	8fa400e0 	lw	a0,224(sp)
    4c68:	afa80020 	sw	t0,32(sp)
    4c6c:	afae001c 	sw	t6,28(sp)
    4c70:	afab0018 	sw	t3,24(sp)
    4c74:	0c000000 	jal	0 <func_80038600>
    4c78:	e7a40014 	swc1	$f4,20(sp)
    4c7c:	1040000f 	beqz	v0,4cbc <func_8003CDD4+0x4e8>
    4c80:	240d0001 	li	t5,1
    4c84:	240f0001 	li	t7,1
    4c88:	afad00d4 	sw	t5,212(sp)
    4c8c:	afaf00b4 	sw	t7,180(sp)
    4c90:	8e090000 	lw	t1,0(s0)
    4c94:	27b800b8 	addiu	t8,sp,184
    4c98:	af090000 	sw	t1,0(t8)
    4c9c:	8e190004 	lw	t9,4(s0)
    4ca0:	af190004 	sw	t9,4(t8)
    4ca4:	8e090008 	lw	t1,8(s0)
    4ca8:	af090008 	sw	t1,8(t8)
    4cac:	c7a800bc 	lwc1	$f8,188(sp)
    4cb0:	c7aa0104 	lwc1	$f10,260(sp)
    4cb4:	460a4480 	add.s	$f18,$f8,$f10
    4cb8:	e7b200bc 	swc1	$f18,188(sp)
    4cbc:	8fa400e0 	lw	a0,224(sp)
    4cc0:	0c000000 	jal	0 <func_80038600>
    4cc4:	8fa500ec 	lw	a1,236(sp)
    4cc8:	24010001 	li	at,1
    4ccc:	14410017 	bne	v0,at,4d2c <func_8003CDD4+0x558>
    4cd0:	8fa400e0 	lw	a0,224(sp)
    4cd4:	8fa500dc 	lw	a1,220(sp)
    4cd8:	0c000000 	jal	0 <func_80038600>
    4cdc:	02003025 	move	a2,s0
    4ce0:	8faa0044 	lw	t2,68(sp)
    4ce4:	c7a600f4 	lwc1	$f6,244(sp)
    4ce8:	8fab00f8 	lw	t3,248(sp)
    4cec:	27ac00b8 	addiu	t4,sp,184
    4cf0:	afac0014 	sw	t4,20(sp)
    4cf4:	00402025 	move	a0,v0
    4cf8:	8fa500e0 	lw	a1,224(sp)
    4cfc:	97a600e6 	lhu	a2,230(sp)
    4d00:	02003825 	move	a3,s0
    4d04:	afaa0010 	sw	t2,16(sp)
    4d08:	e7a60018 	swc1	$f6,24(sp)
    4d0c:	0c000000 	jal	0 <func_80038600>
    4d10:	afab001c 	sw	t3,28(sp)
    4d14:	10400005 	beqz	v0,4d2c <func_8003CDD4+0x558>
    4d18:	8fad00fc 	lw	t5,252(sp)
    4d1c:	240e0032 	li	t6,50
    4d20:	adae0000 	sw	t6,0(t5)
    4d24:	240f0001 	li	t7,1
    4d28:	afaf00d4 	sw	t7,212(sp)
    4d2c:	8fb800b4 	lw	t8,180(sp)
    4d30:	24010001 	li	at,1
    4d34:	8fb900fc 	lw	t9,252(sp)
    4d38:	13010004 	beq	t8,at,4d4c <func_8003CDD4+0x578>
    4d3c:	8fa400e0 	lw	a0,224(sp)
    4d40:	8f290000 	lw	t1,0(t9)
    4d44:	24010032 	li	at,50
    4d48:	11210041 	beq	t1,at,4e50 <func_8003CDD4+0x67c>
    4d4c:	3c013f80 	lui	at,0x3f80
    4d50:	44812000 	mtc1	at,$f4
    4d54:	8fae0100 	lw	t6,256(sp)
    4d58:	27aa005c 	addiu	t2,sp,92
    4d5c:	27ac00d0 	addiu	t4,sp,208
    4d60:	27ab0058 	addiu	t3,sp,88
    4d64:	240d0009 	li	t5,9
    4d68:	afad0028 	sw	t5,40(sp)
    4d6c:	afab001c 	sw	t3,28(sp)
    4d70:	afac0018 	sw	t4,24(sp)
    4d74:	afaa0014 	sw	t2,20(sp)
    4d78:	97a500e6 	lhu	a1,230(sp)
    4d7c:	00003025 	move	a2,zero
    4d80:	8fa700f0 	lw	a3,240(sp)
    4d84:	afb00010 	sw	s0,16(sp)
    4d88:	afae0020 	sw	t6,32(sp)
    4d8c:	0c000000 	jal	0 <func_80038600>
    4d90:	e7a40024 	swc1	$f4,36(sp)
    4d94:	1040002e 	beqz	v0,4e50 <func_8003CDD4+0x67c>
    4d98:	8faf00d0 	lw	t7,208(sp)
    4d9c:	85f80008 	lh	t8,8(t7)
    4da0:	85f9000c 	lh	t9,12(t7)
    4da4:	3c010000 	lui	at,0x0
    4da8:	44984000 	mtc1	t8,$f8
    4dac:	44999000 	mtc1	t9,$f18
    4db0:	c4300000 	lwc1	$f16,0(at)
    4db4:	468042a0 	cvt.s.w	$f10,$f8
    4db8:	3c010000 	lui	at,0x0
    4dbc:	468091a0 	cvt.s.w	$f6,$f18
    4dc0:	46105082 	mul.s	$f2,$f10,$f16
    4dc4:	c42a0000 	lwc1	$f10,0(at)
    4dc8:	3c013f80 	lui	at,0x3f80
    4dcc:	46103302 	mul.s	$f12,$f6,$f16
    4dd0:	00000000 	nop
    4dd4:	46021102 	mul.s	$f4,$f2,$f2
    4dd8:	00000000 	nop
    4ddc:	460c6202 	mul.s	$f8,$f12,$f12
    4de0:	46082000 	add.s	$f0,$f4,$f8
    4de4:	46000384 	sqrt.s	$f14,$f0
    4de8:	46007005 	abs.s	$f0,$f14
    4dec:	460a003c 	c.lt.s	$f0,$f10
    4df0:	00000000 	nop
    4df4:	45010016 	bc1t	4e50 <func_8003CDD4+0x67c>
    4df8:	00000000 	nop
    4dfc:	44813000 	mtc1	at,$f6
    4e00:	c7b200f4 	lwc1	$f18,244(sp)
    4e04:	c7aa005c 	lwc1	$f10,92(sp)
    4e08:	460e3103 	div.s	$f4,$f6,$f14
    4e0c:	240e0001 	li	t6,1
    4e10:	46049002 	mul.s	$f0,$f18,$f4
    4e14:	00000000 	nop
    4e18:	46020202 	mul.s	$f8,$f0,$f2
    4e1c:	460a4180 	add.s	$f6,$f8,$f10
    4e20:	460c0482 	mul.s	$f18,$f0,$f12
    4e24:	e6060000 	swc1	$f6,0(s0)
    4e28:	c7a40064 	lwc1	$f4,100(sp)
    4e2c:	46049200 	add.s	$f8,$f18,$f4
    4e30:	e6080008 	swc1	$f8,8(s0)
    4e34:	8faa00f8 	lw	t2,248(sp)
    4e38:	8fa900d0 	lw	t1,208(sp)
    4e3c:	ad490000 	sw	t1,0(t2)
    4e40:	8fab00fc 	lw	t3,252(sp)
    4e44:	8fac0058 	lw	t4,88(sp)
    4e48:	ad6c0000 	sw	t4,0(t3)
    4e4c:	afae00d4 	sw	t6,212(sp)
    4e50:	8fbf003c 	lw	ra,60(sp)
    4e54:	8fa200d4 	lw	v0,212(sp)
    4e58:	8fb00038 	lw	s0,56(sp)
    4e5c:	03e00008 	jr	ra
    4e60:	27bd00e0 	addiu	sp,sp,224

00004e64 <func_8003D464>:
    4e64:	27bdffc0 	addiu	sp,sp,-64
    4e68:	afa7004c 	sw	a3,76(sp)
    4e6c:	8fae004c 	lw	t6,76(sp)
    4e70:	c7a40050 	lwc1	$f4,80(sp)
    4e74:	8faf0054 	lw	t7,84(sp)
    4e78:	c7a60058 	lwc1	$f6,88(sp)
    4e7c:	afa60048 	sw	a2,72(sp)
    4e80:	00a03025 	move	a2,a1
    4e84:	afbf0034 	sw	ra,52(sp)
    4e88:	afa50044 	sw	a1,68(sp)
    4e8c:	27b8003c 	addiu	t8,sp,60
    4e90:	8fa70048 	lw	a3,72(sp)
    4e94:	afb8001c 	sw	t8,28(sp)
    4e98:	24050002 	li	a1,2
    4e9c:	afa00020 	sw	zero,32(sp)
    4ea0:	afa00028 	sw	zero,40(sp)
    4ea4:	afae0010 	sw	t6,16(sp)
    4ea8:	e7a40014 	swc1	$f4,20(sp)
    4eac:	afaf0018 	sw	t7,24(sp)
    4eb0:	0c000000 	jal	0 <func_80038600>
    4eb4:	e7a60024 	swc1	$f6,36(sp)
    4eb8:	8fbf0034 	lw	ra,52(sp)
    4ebc:	27bd0040 	addiu	sp,sp,64
    4ec0:	03e00008 	jr	ra
    4ec4:	00000000 	nop
    4ec8:	27bdffc8 	addiu	sp,sp,-56
    4ecc:	afa70044 	sw	a3,68(sp)
    4ed0:	8fae0044 	lw	t6,68(sp)
    4ed4:	c7a40048 	lwc1	$f4,72(sp)
    4ed8:	8faf004c 	lw	t7,76(sp)
    4edc:	8fb80050 	lw	t8,80(sp)
    4ee0:	c7a60054 	lwc1	$f6,84(sp)
    4ee4:	afa60040 	sw	a2,64(sp)
    4ee8:	00a03025 	move	a2,a1
    4eec:	afbf0034 	sw	ra,52(sp)
    4ef0:	afa5003c 	sw	a1,60(sp)
    4ef4:	8fa70040 	lw	a3,64(sp)
    4ef8:	24050002 	li	a1,2
    4efc:	afa00020 	sw	zero,32(sp)
    4f00:	afa00028 	sw	zero,40(sp)
    4f04:	afae0010 	sw	t6,16(sp)
    4f08:	e7a40014 	swc1	$f4,20(sp)
    4f0c:	afaf0018 	sw	t7,24(sp)
    4f10:	afb8001c 	sw	t8,28(sp)
    4f14:	0c000000 	jal	0 <func_80038600>
    4f18:	e7a60024 	swc1	$f6,36(sp)
    4f1c:	8fbf0034 	lw	ra,52(sp)
    4f20:	27bd0038 	addiu	sp,sp,56
    4f24:	03e00008 	jr	ra
    4f28:	00000000 	nop

00004f2c <func_8003D52C>:
    4f2c:	27bdffc8 	addiu	sp,sp,-56
    4f30:	afa70044 	sw	a3,68(sp)
    4f34:	8fae0044 	lw	t6,68(sp)
    4f38:	c7a40048 	lwc1	$f4,72(sp)
    4f3c:	8faf004c 	lw	t7,76(sp)
    4f40:	8fb80050 	lw	t8,80(sp)
    4f44:	8fb90054 	lw	t9,84(sp)
    4f48:	c7a60058 	lwc1	$f6,88(sp)
    4f4c:	afa60040 	sw	a2,64(sp)
    4f50:	00a03025 	move	a2,a1
    4f54:	afbf0034 	sw	ra,52(sp)
    4f58:	afa5003c 	sw	a1,60(sp)
    4f5c:	8fa70040 	lw	a3,64(sp)
    4f60:	24050002 	li	a1,2
    4f64:	afa00028 	sw	zero,40(sp)
    4f68:	afae0010 	sw	t6,16(sp)
    4f6c:	e7a40014 	swc1	$f4,20(sp)
    4f70:	afaf0018 	sw	t7,24(sp)
    4f74:	afb8001c 	sw	t8,28(sp)
    4f78:	afb90020 	sw	t9,32(sp)
    4f7c:	0c000000 	jal	0 <func_80038600>
    4f80:	e7a60024 	swc1	$f6,36(sp)
    4f84:	8fbf0034 	lw	ra,52(sp)
    4f88:	27bd0038 	addiu	sp,sp,56
    4f8c:	03e00008 	jr	ra
    4f90:	00000000 	nop

00004f94 <func_8003D594>:
    4f94:	27bdffc8 	addiu	sp,sp,-56
    4f98:	afa70044 	sw	a3,68(sp)
    4f9c:	8fae0044 	lw	t6,68(sp)
    4fa0:	c7a40048 	lwc1	$f4,72(sp)
    4fa4:	8faf004c 	lw	t7,76(sp)
    4fa8:	8fb80050 	lw	t8,80(sp)
    4fac:	8fb90054 	lw	t9,84(sp)
    4fb0:	c7a60058 	lwc1	$f6,88(sp)
    4fb4:	afa60040 	sw	a2,64(sp)
    4fb8:	00a03025 	move	a2,a1
    4fbc:	afbf0034 	sw	ra,52(sp)
    4fc0:	afa5003c 	sw	a1,60(sp)
    4fc4:	24080001 	li	t0,1
    4fc8:	8fa70040 	lw	a3,64(sp)
    4fcc:	afa80028 	sw	t0,40(sp)
    4fd0:	24050002 	li	a1,2
    4fd4:	afae0010 	sw	t6,16(sp)
    4fd8:	e7a40014 	swc1	$f4,20(sp)
    4fdc:	afaf0018 	sw	t7,24(sp)
    4fe0:	afb8001c 	sw	t8,28(sp)
    4fe4:	afb90020 	sw	t9,32(sp)
    4fe8:	0c000000 	jal	0 <func_80038600>
    4fec:	e7a60024 	swc1	$f6,36(sp)
    4ff0:	8fbf0034 	lw	ra,52(sp)
    4ff4:	27bd0038 	addiu	sp,sp,56
    4ff8:	03e00008 	jr	ra
    4ffc:	00000000 	nop

00005000 <func_8003D600>:
    5000:	27bdffa8 	addiu	sp,sp,-88
    5004:	8faf0070 	lw	t7,112(sp)
    5008:	afbf0034 	sw	ra,52(sp)
    500c:	afb20030 	sw	s2,48(sp)
    5010:	afb1002c 	sw	s1,44(sp)
    5014:	afb00028 	sw	s0,40(sp)
    5018:	afa5005c 	sw	a1,92(sp)
    501c:	240e0032 	li	t6,50
    5020:	adee0000 	sw	t6,0(t7)
    5024:	c4e40004 	lwc1	$f4,4(a3)
    5028:	00c08825 	move	s1,a2
    502c:	00809025 	move	s2,a0
    5030:	3c050000 	lui	a1,0x0
    5034:	e4c40000 	swc1	$f4,0(a2)
    5038:	00e08025 	move	s0,a3
    503c:	24061456 	li	a2,5206
    5040:	24a50000 	addiu	a1,a1,0
    5044:	0c000000 	jal	0 <func_80038600>
    5048:	00e02025 	move	a0,a3
    504c:	24010001 	li	at,1
    5050:	14410006 	bne	v0,at,506c <func_8003D600+0x6c>
    5054:	8fb80074 	lw	t8,116(sp)
    5058:	13000004 	beqz	t8,506c <func_8003D600+0x6c>
    505c:	3c040000 	lui	a0,0x0
    5060:	24840000 	addiu	a0,a0,0
    5064:	0c000000 	jal	0 <func_80038600>
    5068:	87050000 	lh	a1,0(t8)
    506c:	8e590040 	lw	t9,64(s2)
    5070:	02402025 	move	a0,s2
    5074:	02002825 	move	a1,s0
    5078:	0c000000 	jal	0 <func_80038600>
    507c:	afb90054 	sw	t9,84(sp)
    5080:	14400003 	bnez	v0,5090 <func_8003D600+0x90>
    5084:	02402025 	move	a0,s2
    5088:	1000002c 	b	513c <func_8003D600+0x13c>
    508c:	00001025 	move	v0,zero
    5090:	8fa50054 	lw	a1,84(sp)
    5094:	0c000000 	jal	0 <func_80038600>
    5098:	02003025 	move	a2,s0
    509c:	c7a60068 	lwc1	$f6,104(sp)
    50a0:	8fa8006c 	lw	t0,108(sp)
    50a4:	00402025 	move	a0,v0
    50a8:	97a5005e 	lhu	a1,94(sp)
    50ac:	02403025 	move	a2,s2
    50b0:	02203825 	move	a3,s1
    50b4:	afb00010 	sw	s0,16(sp)
    50b8:	e7a60014 	swc1	$f6,20(sp)
    50bc:	0c000000 	jal	0 <func_80038600>
    50c0:	afa80018 	sw	t0,24(sp)
    50c4:	8e0a0000 	lw	t2,0(s0)
    50c8:	27a70040 	addiu	a3,sp,64
    50cc:	02402025 	move	a0,s2
    50d0:	acea0000 	sw	t2,0(a3)
    50d4:	8e090004 	lw	t1,4(s0)
    50d8:	27a6003c 	addiu	a2,sp,60
    50dc:	ace90004 	sw	t1,4(a3)
    50e0:	8e0a0008 	lw	t2,8(s0)
    50e4:	acea0008 	sw	t2,8(a3)
    50e8:	c6280000 	lwc1	$f8,0(s1)
    50ec:	8fad0074 	lw	t5,116(sp)
    50f0:	8fac0070 	lw	t4,112(sp)
    50f4:	e7a80044 	swc1	$f8,68(sp)
    50f8:	c62a0000 	lwc1	$f10,0(s1)
    50fc:	8fab006c 	lw	t3,108(sp)
    5100:	c7b00068 	lwc1	$f16,104(sp)
    5104:	afa2004c 	sw	v0,76(sp)
    5108:	97a5005e 	lhu	a1,94(sp)
    510c:	afad001c 	sw	t5,28(sp)
    5110:	afac0018 	sw	t4,24(sp)
    5114:	e7aa003c 	swc1	$f10,60(sp)
    5118:	afab0014 	sw	t3,20(sp)
    511c:	0c000000 	jal	0 <func_80038600>
    5120:	e7b00010 	swc1	$f16,16(sp)
    5124:	10400004 	beqz	v0,5138 <func_8003D600+0x138>
    5128:	8fa3004c 	lw	v1,76(sp)
    512c:	c7b2003c 	lwc1	$f18,60(sp)
    5130:	24030001 	li	v1,1
    5134:	e6320000 	swc1	$f18,0(s1)
    5138:	00601025 	move	v0,v1
    513c:	8fbf0034 	lw	ra,52(sp)
    5140:	8fb00028 	lw	s0,40(sp)
    5144:	8fb1002c 	lw	s1,44(sp)
    5148:	8fb20030 	lw	s2,48(sp)
    514c:	03e00008 	jr	ra
    5150:	27bd0058 	addiu	sp,sp,88
    5154:	27bdffd0 	addiu	sp,sp,-48
    5158:	44876000 	mtc1	a3,$f12
    515c:	afa60038 	sw	a2,56(sp)
    5160:	00a03025 	move	a2,a1
    5164:	afbf0024 	sw	ra,36(sp)
    5168:	afa50034 	sw	a1,52(sp)
    516c:	27ae002c 	addiu	t6,sp,44
    5170:	27af0028 	addiu	t7,sp,40
    5174:	8fa70038 	lw	a3,56(sp)
    5178:	afaf0018 	sw	t7,24(sp)
    517c:	afae0014 	sw	t6,20(sp)
    5180:	00002825 	move	a1,zero
    5184:	afa0001c 	sw	zero,28(sp)
    5188:	0c000000 	jal	0 <func_80038600>
    518c:	e7ac0010 	swc1	$f12,16(sp)
    5190:	8fbf0024 	lw	ra,36(sp)
    5194:	27bd0030 	addiu	sp,sp,48
    5198:	03e00008 	jr	ra
    519c:	00000000 	nop

000051a0 <func_8003D7A0>:
    51a0:	27bdffd8 	addiu	sp,sp,-40
    51a4:	44876000 	mtc1	a3,$f12
    51a8:	8fae0038 	lw	t6,56(sp)
    51ac:	8faf003c 	lw	t7,60(sp)
    51b0:	8fb80040 	lw	t8,64(sp)
    51b4:	afa60030 	sw	a2,48(sp)
    51b8:	00a03025 	move	a2,a1
    51bc:	afbf0024 	sw	ra,36(sp)
    51c0:	afa5002c 	sw	a1,44(sp)
    51c4:	8fa70030 	lw	a3,48(sp)
    51c8:	24050002 	li	a1,2
    51cc:	afae0014 	sw	t6,20(sp)
    51d0:	e7ac0010 	swc1	$f12,16(sp)
    51d4:	afaf0018 	sw	t7,24(sp)
    51d8:	0c000000 	jal	0 <func_80038600>
    51dc:	afb8001c 	sw	t8,28(sp)
    51e0:	8fbf0024 	lw	ra,36(sp)
    51e4:	27bd0028 	addiu	sp,sp,40
    51e8:	03e00008 	jr	ra
    51ec:	00000000 	nop

000051f0 <func_8003D7F0>:
    51f0:	27bdff20 	addiu	sp,sp,-224
    51f4:	afb00040 	sw	s0,64(sp)
    51f8:	8fb000f0 	lw	s0,240(sp)
    51fc:	afbf0064 	sw	ra,100(sp)
    5200:	afbe0060 	sw	s8,96(sp)
    5204:	afb7005c 	sw	s7,92(sp)
    5208:	afb60058 	sw	s6,88(sp)
    520c:	afb50054 	sw	s5,84(sp)
    5210:	afb40050 	sw	s4,80(sp)
    5214:	afb3004c 	sw	s3,76(sp)
    5218:	afb20048 	sw	s2,72(sp)
    521c:	afb10044 	sw	s1,68(sp)
    5220:	f7b40038 	sdc1	$f20,56(sp)
    5224:	afa500e4 	sw	a1,228(sp)
    5228:	afa600e8 	sw	a2,232(sp)
    522c:	8e0f0000 	lw	t7,0(s0)
    5230:	27b600a8 	addiu	s6,sp,168
    5234:	8c910040 	lw	s1,64(a0)
    5238:	aecf0000 	sw	t7,0(s6)
    523c:	8e0e0004 	lw	t6,4(s0)
    5240:	00809025 	move	s2,a0
    5244:	24180032 	li	t8,50
    5248:	aece0004 	sw	t6,4(s6)
    524c:	8e0f0008 	lw	t7,8(s0)
    5250:	3c050000 	lui	a1,0x0
    5254:	00e0a825 	move	s5,a3
    5258:	aecf0008 	sw	t7,8(s6)
    525c:	8fb900fc 	lw	t9,252(sp)
    5260:	24a50000 	addiu	a1,a1,0
    5264:	00e02025 	move	a0,a3
    5268:	240614d6 	li	a2,5334
    526c:	0c000000 	jal	0 <func_80038600>
    5270:	af380000 	sw	t8,0(t9)
    5274:	24010001 	li	at,1
    5278:	10410008 	beq	v0,at,529c <func_8003D7F0+0xac>
    527c:	02002025 	move	a0,s0
    5280:	3c050000 	lui	a1,0x0
    5284:	24a50000 	addiu	a1,a1,0
    5288:	0c000000 	jal	0 <func_80038600>
    528c:	240614d7 	li	a2,5335
    5290:	24010001 	li	at,1
    5294:	5441000e 	bnel	v0,at,52d0 <func_8003D7F0+0xe0>
    5298:	8e490000 	lw	t1,0(s2)
    529c:	8fa20100 	lw	v0,256(sp)
    52a0:	3c040000 	lui	a0,0x0
    52a4:	10400007 	beqz	v0,52c4 <func_8003D7F0+0xd4>
    52a8:	00000000 	nop
    52ac:	3c040000 	lui	a0,0x0
    52b0:	24840000 	addiu	a0,a0,0
    52b4:	0c000000 	jal	0 <func_80038600>
    52b8:	84450000 	lh	a1,0(v0)
    52bc:	10000004 	b	52d0 <func_8003D7F0+0xe0>
    52c0:	8e490000 	lw	t1,0(s2)
    52c4:	0c000000 	jal	0 <func_80038600>
    52c8:	24840000 	addiu	a0,a0,0
    52cc:	8e490000 	lw	t1,0(s2)
    52d0:	26440044 	addiu	a0,s2,68
    52d4:	0c000000 	jal	0 <func_80038600>
    52d8:	95250014 	lhu	a1,20(t1)
    52dc:	02402025 	move	a0,s2
    52e0:	02a02825 	move	a1,s5
    52e4:	0c000000 	jal	0 <func_80038600>
    52e8:	27a600cc 	addiu	a2,sp,204
    52ec:	02402025 	move	a0,s2
    52f0:	02c02825 	move	a1,s6
    52f4:	0c000000 	jal	0 <func_80038600>
    52f8:	27a600c0 	addiu	a2,sp,192
    52fc:	8faa00f4 	lw	t2,244(sp)
    5300:	8e0c0000 	lw	t4,0(s0)
    5304:	3c010000 	lui	at,0x0
    5308:	27a300c0 	addiu	v1,sp,192
    530c:	ad4c0000 	sw	t4,0(t2)
    5310:	8e0b0004 	lw	t3,4(s0)
    5314:	27a200cc 	addiu	v0,sp,204
    5318:	27a700d8 	addiu	a3,sp,216
    531c:	ad4b0004 	sw	t3,4(t2)
    5320:	8e0c0008 	lw	t4,8(s0)
    5324:	ad4c0008 	sw	t4,8(t2)
    5328:	c4240000 	lwc1	$f4,0(at)
    532c:	8fad00f8 	lw	t5,248(sp)
    5330:	afa000b8 	sw	zero,184(sp)
    5334:	e7a400b4 	swc1	$f4,180(sp)
    5338:	ada00000 	sw	zero,0(t5)
    533c:	8faf00c0 	lw	t7,192(sp)
    5340:	8fae00cc 	lw	t6,204(sp)
    5344:	8fb900c4 	lw	t9,196(sp)
    5348:	8fb800d0 	lw	t8,208(sp)
    534c:	15cf0007 	bne	t6,t7,536c <func_8003D7F0+0x17c>
    5350:	00000000 	nop
    5354:	17190005 	bne	t8,t9,536c <func_8003D7F0+0x17c>
    5358:	8fa900d4 	lw	t1,212(sp)
    535c:	8faa00c8 	lw	t2,200(sp)
    5360:	02402025 	move	a0,s2
    5364:	112a00ac 	beq	t1,t2,5618 <func_8003D7F0+0x428>
    5368:	00000000 	nop
    536c:	8c650000 	lw	a1,0(v1)
    5370:	8c460000 	lw	a2,0(v0)
    5374:	00a6082a 	slt	at,a1,a2
    5378:	50200004 	beqzl	at,538c <func_8003D7F0+0x19c>
    537c:	24420004 	addiu	v0,v0,4
    5380:	ac660000 	sw	a2,0(v1)
    5384:	ac450000 	sw	a1,0(v0)
    5388:	24420004 	addiu	v0,v0,4
    538c:	0047082b 	sltu	at,v0,a3
    5390:	1420fff6 	bnez	at,536c <func_8003D7F0+0x17c>
    5394:	24630004 	addiu	v1,v1,4
    5398:	8e4b001c 	lw	t3,28(s2)
    539c:	8e4c0020 	lw	t4,32(s2)
    53a0:	8fa800d4 	lw	t0,212(sp)
    53a4:	c64a0030 	lwc1	$f10,48(s2)
    53a8:	016c0019 	multu	t3,t4
    53ac:	44883000 	mtc1	t0,$f6
    53b0:	c652000c 	lwc1	$f18,12(s2)
    53b4:	24040006 	li	a0,6
    53b8:	46803220 	cvt.s.w	$f8,$f6
    53bc:	8fa200c8 	lw	v0,200(sp)
    53c0:	8fa300c4 	lw	v1,196(sp)
    53c4:	27be00b4 	addiu	s8,sp,180
    53c8:	24420001 	addiu	v0,v0,1
    53cc:	0102082a 	slt	at,t0,v0
    53d0:	00002812 	mflo	a1
    53d4:	460a4402 	mul.s	$f16,$f8,$f10
    53d8:	0005c080 	sll	t8,a1,0x2
    53dc:	01050019 	multu	t0,a1
    53e0:	0305c023 	subu	t8,t8,a1
    53e4:	0018c040 	sll	t8,t8,0x1
    53e8:	27b40090 	addiu	s4,sp,144
    53ec:	27b3009c 	addiu	s3,sp,156
    53f0:	46128100 	add.s	$f4,$f16,$f18
    53f4:	24630001 	addiu	v1,v1,1
    53f8:	e7a400a4 	swc1	$f4,164(sp)
    53fc:	00007012 	mflo	t6
    5400:	c6460030 	lwc1	$f6,48(s2)
    5404:	00000000 	nop
    5408:	01c40019 	multu	t6,a0
    540c:	46043200 	add.s	$f8,$f6,$f4
    5410:	e7a80098 	swc1	$f8,152(sp)
    5414:	00007812 	mflo	t7
    5418:	01f13821 	addu	a3,t7,s1
    541c:	5020007b 	beqzl	at,560c <func_8003D7F0+0x41c>
    5420:	8fb70108 	lw	s7,264(sp)
    5424:	afb8006c 	sw	t8,108(sp)
    5428:	c7b40104 	lwc1	$f20,260(sp)
    542c:	8fb70108 	lw	s7,264(sp)
    5430:	8fa600d0 	lw	a2,208(sp)
    5434:	8e49001c 	lw	t1,28(s2)
    5438:	c652002c 	lwc1	$f18,44(s2)
    543c:	44865000 	mtc1	a2,$f10
    5440:	00c90019 	multu	a2,t1
    5444:	c6440008 	lwc1	$f4,8(s2)
    5448:	46805420 	cvt.s.w	$f16,$f10
    544c:	00c3082a 	slt	at,a2,v1
    5450:	46128182 	mul.s	$f6,$f16,$f18
    5454:	00005012 	mflo	t2
	...
    5460:	01440019 	multu	t2,a0
    5464:	46043200 	add.s	$f8,$f6,$f4
    5468:	e7a800a0 	swc1	$f8,160(sp)
    546c:	c64a002c 	lwc1	$f10,44(s2)
    5470:	46085400 	add.s	$f16,$f10,$f8
    5474:	00005812 	mflo	t3
    5478:	01672821 	addu	a1,t3,a3
    547c:	10200055 	beqz	at,55d4 <func_8003D7F0+0x3e4>
    5480:	e7b00094 	swc1	$f16,148(sp)
    5484:	8fa200c0 	lw	v0,192(sp)
    5488:	afa700d8 	sw	a3,216(sp)
    548c:	afa800bc 	sw	t0,188(sp)
    5490:	24420001 	addiu	v0,v0,1
    5494:	8fb100cc 	lw	s1,204(sp)
    5498:	c6440028 	lwc1	$f4,40(s2)
    549c:	c6480004 	lwc1	$f8,4(s2)
    54a0:	44919000 	mtc1	s1,$f18
    54a4:	02240019 	multu	s1,a0
    54a8:	0222082a 	slt	at,s1,v0
    54ac:	468091a0 	cvt.s.w	$f6,$f18
    54b0:	46043282 	mul.s	$f10,$f6,$f4
    54b4:	00007012 	mflo	t6
    54b8:	01c58021 	addu	s0,t6,a1
    54bc:	46085400 	add.s	$f16,$f10,$f8
    54c0:	e7b0009c 	swc1	$f16,156(sp)
    54c4:	c6520028 	lwc1	$f18,40(s2)
    54c8:	46109180 	add.s	$f6,$f18,$f16
    54cc:	1020002e 	beqz	at,5588 <func_8003D7F0+0x398>
    54d0:	e7a60090 	swc1	$f6,144(sp)
    54d4:	afa50080 	sw	a1,128(sp)
    54d8:	afa60084 	sw	a2,132(sp)
    54dc:	02602025 	move	a0,s3
    54e0:	02802825 	move	a1,s4
    54e4:	02a03025 	move	a2,s5
    54e8:	0c000000 	jal	0 <func_80038600>
    54ec:	02c03825 	move	a3,s6
    54f0:	24010001 	li	at,1
    54f4:	14410011 	bne	v0,at,553c <func_8003D7F0+0x34c>
    54f8:	02002025 	move	a0,s0
    54fc:	8faf00f4 	lw	t7,244(sp)
    5500:	8fad00f8 	lw	t5,248(sp)
    5504:	02402825 	move	a1,s2
    5508:	97a600e6 	lhu	a2,230(sp)
    550c:	97a700ea 	lhu	a3,234(sp)
    5510:	afb50010 	sw	s5,16(sp)
    5514:	afb60014 	sw	s6,20(sp)
    5518:	e7b40020 	swc1	$f20,32(sp)
    551c:	afbe0024 	sw	s8,36(sp)
    5520:	afb70028 	sw	s7,40(sp)
    5524:	afaf0018 	sw	t7,24(sp)
    5528:	0c000000 	jal	0 <func_80038600>
    552c:	afad001c 	sw	t5,28(sp)
    5530:	10400002 	beqz	v0,553c <func_8003D7F0+0x34c>
    5534:	24180001 	li	t8,1
    5538:	afb800b8 	sw	t8,184(sp)
    553c:	c7a4009c 	lwc1	$f4,156(sp)
    5540:	c64a0028 	lwc1	$f10,40(s2)
    5544:	c7b20090 	lwc1	$f18,144(sp)
    5548:	8fa200c0 	lw	v0,192(sp)
    554c:	460a2200 	add.s	$f8,$f4,$f10
    5550:	26310001 	addiu	s1,s1,1
    5554:	24420001 	addiu	v0,v0,1
    5558:	0222082a 	slt	at,s1,v0
    555c:	e7a8009c 	swc1	$f8,156(sp)
    5560:	c6500028 	lwc1	$f16,40(s2)
    5564:	26100006 	addiu	s0,s0,6
    5568:	46109180 	add.s	$f6,$f18,$f16
    556c:	1420ffdb 	bnez	at,54dc <func_8003D7F0+0x2ec>
    5570:	e7a60090 	swc1	$f6,144(sp)
    5574:	8fa300c4 	lw	v1,196(sp)
    5578:	8fa60084 	lw	a2,132(sp)
    557c:	8fa50080 	lw	a1,128(sp)
    5580:	24040006 	li	a0,6
    5584:	24630001 	addiu	v1,v1,1
    5588:	8e49001c 	lw	t1,28(s2)
    558c:	c7a400a0 	lwc1	$f4,160(sp)
    5590:	c64a002c 	lwc1	$f10,44(s2)
    5594:	01240019 	multu	t1,a0
    5598:	c7b20094 	lwc1	$f18,148(sp)
    559c:	460a2200 	add.s	$f8,$f4,$f10
    55a0:	24c60001 	addiu	a2,a2,1
    55a4:	00c3082a 	slt	at,a2,v1
    55a8:	e7a800a0 	swc1	$f8,160(sp)
    55ac:	c650002c 	lwc1	$f16,44(s2)
    55b0:	46109180 	add.s	$f6,$f18,$f16
    55b4:	00005012 	mflo	t2
    55b8:	00aa2821 	addu	a1,a1,t2
    55bc:	1420ffb5 	bnez	at,5494 <func_8003D7F0+0x2a4>
    55c0:	e7a60094 	swc1	$f6,148(sp)
    55c4:	8fa200c8 	lw	v0,200(sp)
    55c8:	8fa800bc 	lw	t0,188(sp)
    55cc:	8fa700d8 	lw	a3,216(sp)
    55d0:	24420001 	addiu	v0,v0,1
    55d4:	c7a400a4 	lwc1	$f4,164(sp)
    55d8:	c64a0030 	lwc1	$f10,48(s2)
    55dc:	c7b20098 	lwc1	$f18,152(sp)
    55e0:	8fab006c 	lw	t3,108(sp)
    55e4:	460a2200 	add.s	$f8,$f4,$f10
    55e8:	25080001 	addiu	t0,t0,1
    55ec:	0102082a 	slt	at,t0,v0
    55f0:	00eb3821 	addu	a3,a3,t3
    55f4:	e7a800a4 	swc1	$f8,164(sp)
    55f8:	c6500030 	lwc1	$f16,48(s2)
    55fc:	46109180 	add.s	$f6,$f18,$f16
    5600:	1420ff8b 	bnez	at,5430 <func_8003D7F0+0x240>
    5604:	e7a60098 	swc1	$f6,152(sp)
    5608:	8fb70108 	lw	s7,264(sp)
    560c:	27be00b4 	addiu	s8,sp,180
    5610:	10000022 	b	569c <func_8003D7F0+0x4ac>
    5614:	c7b40104 	lwc1	$f20,260(sp)
    5618:	0c000000 	jal	0 <func_80038600>
    561c:	02a02825 	move	a1,s5
    5620:	14400003 	bnez	v0,5630 <func_8003D7F0+0x440>
    5624:	02402025 	move	a0,s2
    5628:	10000032 	b	56f4 <func_8003D7F0+0x504>
    562c:	00001025 	move	v0,zero
    5630:	02202825 	move	a1,s1
    5634:	0c000000 	jal	0 <func_80038600>
    5638:	02a03025 	move	a2,s5
    563c:	8fb70108 	lw	s7,264(sp)
    5640:	c7b40104 	lwc1	$f20,260(sp)
    5644:	8fb900f4 	lw	t9,244(sp)
    5648:	8fae00f8 	lw	t6,248(sp)
    564c:	27be00b4 	addiu	s8,sp,180
    5650:	afbe0024 	sw	s8,36(sp)
    5654:	00402025 	move	a0,v0
    5658:	02402825 	move	a1,s2
    565c:	97a600e6 	lhu	a2,230(sp)
    5660:	97a700ea 	lhu	a3,234(sp)
    5664:	afb50010 	sw	s5,16(sp)
    5668:	afb60014 	sw	s6,20(sp)
    566c:	afb70028 	sw	s7,40(sp)
    5670:	e7b40020 	swc1	$f20,32(sp)
    5674:	afb90018 	sw	t9,24(sp)
    5678:	0c000000 	jal	0 <func_80038600>
    567c:	afae001c 	sw	t6,28(sp)
    5680:	24010001 	li	at,1
    5684:	14410005 	bne	v0,at,569c <func_8003D7F0+0x4ac>
    5688:	afa200b8 	sw	v0,184(sp)
    568c:	8fa400f4 	lw	a0,244(sp)
    5690:	0c000000 	jal	0 <func_80038600>
    5694:	02a02825 	move	a1,s5
    5698:	e7a000b4 	swc1	$f0,180(sp)
    569c:	32ec0010 	andi	t4,s7,0x10
    56a0:	11800013 	beqz	t4,56f0 <func_8003D7F0+0x500>
    56a4:	02402025 	move	a0,s2
    56a8:	8faf00f4 	lw	t7,244(sp)
    56ac:	8fad00f8 	lw	t5,248(sp)
    56b0:	8fb800fc 	lw	t8,252(sp)
    56b4:	8fa90100 	lw	t1,256(sp)
    56b8:	97a500e6 	lhu	a1,230(sp)
    56bc:	02a03025 	move	a2,s5
    56c0:	02c03825 	move	a3,s6
    56c4:	afbe0018 	sw	s8,24(sp)
    56c8:	e7b40024 	swc1	$f20,36(sp)
    56cc:	afb70028 	sw	s7,40(sp)
    56d0:	afaf0010 	sw	t7,16(sp)
    56d4:	afad0014 	sw	t5,20(sp)
    56d8:	afb8001c 	sw	t8,28(sp)
    56dc:	0c000000 	jal	0 <func_80038600>
    56e0:	afa90020 	sw	t1,32(sp)
    56e4:	10400002 	beqz	v0,56f0 <func_8003D7F0+0x500>
    56e8:	240a0001 	li	t2,1
    56ec:	afaa00b8 	sw	t2,184(sp)
    56f0:	8fa200b8 	lw	v0,184(sp)
    56f4:	8fbf0064 	lw	ra,100(sp)
    56f8:	d7b40038 	ldc1	$f20,56(sp)
    56fc:	8fb00040 	lw	s0,64(sp)
    5700:	8fb10044 	lw	s1,68(sp)
    5704:	8fb20048 	lw	s2,72(sp)
    5708:	8fb3004c 	lw	s3,76(sp)
    570c:	8fb40050 	lw	s4,80(sp)
    5710:	8fb50054 	lw	s5,84(sp)
    5714:	8fb60058 	lw	s6,88(sp)
    5718:	8fb7005c 	lw	s7,92(sp)
    571c:	8fbe0060 	lw	s8,96(sp)
    5720:	03e00008 	jr	ra
    5724:	27bd00e0 	addiu	sp,sp,224

00005728 <func_8003DD28>:
    5728:	10800002 	beqz	a0,5734 <func_8003DD28+0xc>
    572c:	00001825 	move	v1,zero
    5730:	24030001 	li	v1,1
    5734:	10a00002 	beqz	a1,5740 <func_8003DD28+0x18>
    5738:	8fae0010 	lw	t6,16(sp)
    573c:	34630002 	ori	v1,v1,0x2
    5740:	10c00002 	beqz	a2,574c <func_8003DD28+0x24>
    5744:	00000000 	nop
    5748:	34630004 	ori	v1,v1,0x4
    574c:	10e00002 	beqz	a3,5758 <func_8003DD28+0x30>
    5750:	00000000 	nop
    5754:	34630008 	ori	v1,v1,0x8
    5758:	11c00002 	beqz	t6,5764 <func_8003DD28+0x3c>
    575c:	00000000 	nop
    5760:	34630010 	ori	v1,v1,0x10
    5764:	03e00008 	jr	ra
    5768:	00601025 	move	v0,v1

0000576c <func_8003DD6C>:
    576c:	27bdffc8 	addiu	sp,sp,-56
    5770:	afbf0034 	sw	ra,52(sp)
    5774:	afa40038 	sw	a0,56(sp)
    5778:	afa5003c 	sw	a1,60(sp)
    577c:	afa60040 	sw	a2,64(sp)
    5780:	afa70044 	sw	a3,68(sp)
    5784:	240e0001 	li	t6,1
    5788:	afae0010 	sw	t6,16(sp)
    578c:	8fa70058 	lw	a3,88(sp)
    5790:	8fa60054 	lw	a2,84(sp)
    5794:	8fa50050 	lw	a1,80(sp)
    5798:	0c000000 	jal	0 <func_80038600>
    579c:	8fa4004c 	lw	a0,76(sp)
    57a0:	3c013f80 	lui	at,0x3f80
    57a4:	44812000 	mtc1	at,$f4
    57a8:	8faf0040 	lw	t7,64(sp)
    57ac:	8fb80044 	lw	t8,68(sp)
    57b0:	8fb90048 	lw	t9,72(sp)
    57b4:	8fa8005c 	lw	t0,92(sp)
    57b8:	8fa40038 	lw	a0,56(sp)
    57bc:	24050001 	li	a1,1
    57c0:	00003025 	move	a2,zero
    57c4:	8fa7003c 	lw	a3,60(sp)
    57c8:	afa00020 	sw	zero,32(sp)
    57cc:	afa20028 	sw	v0,40(sp)
    57d0:	afaf0010 	sw	t7,16(sp)
    57d4:	e7a40024 	swc1	$f4,36(sp)
    57d8:	afb80014 	sw	t8,20(sp)
    57dc:	afb90018 	sw	t9,24(sp)
    57e0:	0c000000 	jal	0 <func_80038600>
    57e4:	afa8001c 	sw	t0,28(sp)
    57e8:	8fbf0034 	lw	ra,52(sp)
    57ec:	27bd0038 	addiu	sp,sp,56
    57f0:	03e00008 	jr	ra
    57f4:	00000000 	nop
    57f8:	27bdffc8 	addiu	sp,sp,-56
    57fc:	afbf0034 	sw	ra,52(sp)
    5800:	afa40038 	sw	a0,56(sp)
    5804:	afa5003c 	sw	a1,60(sp)
    5808:	afa60040 	sw	a2,64(sp)
    580c:	afa70044 	sw	a3,68(sp)
    5810:	240e0001 	li	t6,1
    5814:	afae0010 	sw	t6,16(sp)
    5818:	8fa70058 	lw	a3,88(sp)
    581c:	8fa60054 	lw	a2,84(sp)
    5820:	8fa50050 	lw	a1,80(sp)
    5824:	0c000000 	jal	0 <func_80038600>
    5828:	8fa4004c 	lw	a0,76(sp)
    582c:	3c013f80 	lui	at,0x3f80
    5830:	44812000 	mtc1	at,$f4
    5834:	8faf0040 	lw	t7,64(sp)
    5838:	8fb80044 	lw	t8,68(sp)
    583c:	8fb90048 	lw	t9,72(sp)
    5840:	8fa8005c 	lw	t0,92(sp)
    5844:	8fa40038 	lw	a0,56(sp)
    5848:	00002825 	move	a1,zero
    584c:	24060001 	li	a2,1
    5850:	8fa7003c 	lw	a3,60(sp)
    5854:	afa00020 	sw	zero,32(sp)
    5858:	afa20028 	sw	v0,40(sp)
    585c:	afaf0010 	sw	t7,16(sp)
    5860:	e7a40024 	swc1	$f4,36(sp)
    5864:	afb80014 	sw	t8,20(sp)
    5868:	afb90018 	sw	t9,24(sp)
    586c:	0c000000 	jal	0 <func_80038600>
    5870:	afa8001c 	sw	t0,28(sp)
    5874:	8fbf0034 	lw	ra,52(sp)
    5878:	27bd0038 	addiu	sp,sp,56
    587c:	03e00008 	jr	ra
    5880:	00000000 	nop

00005884 <func_8003DE84>:
    5884:	27bdffc8 	addiu	sp,sp,-56
    5888:	afbf0034 	sw	ra,52(sp)
    588c:	afa40038 	sw	a0,56(sp)
    5890:	afa5003c 	sw	a1,60(sp)
    5894:	afa60040 	sw	a2,64(sp)
    5898:	afa70044 	sw	a3,68(sp)
    589c:	240e0001 	li	t6,1
    58a0:	afae0010 	sw	t6,16(sp)
    58a4:	8fa70058 	lw	a3,88(sp)
    58a8:	8fa60054 	lw	a2,84(sp)
    58ac:	8fa50050 	lw	a1,80(sp)
    58b0:	0c000000 	jal	0 <func_80038600>
    58b4:	8fa4004c 	lw	a0,76(sp)
    58b8:	3c013f80 	lui	at,0x3f80
    58bc:	44812000 	mtc1	at,$f4
    58c0:	8faf0040 	lw	t7,64(sp)
    58c4:	8fb80044 	lw	t8,68(sp)
    58c8:	8fb90048 	lw	t9,72(sp)
    58cc:	8fa8005c 	lw	t0,92(sp)
    58d0:	8fa40038 	lw	a0,56(sp)
    58d4:	24050002 	li	a1,2
    58d8:	00003025 	move	a2,zero
    58dc:	8fa7003c 	lw	a3,60(sp)
    58e0:	afa00020 	sw	zero,32(sp)
    58e4:	afa20028 	sw	v0,40(sp)
    58e8:	afaf0010 	sw	t7,16(sp)
    58ec:	e7a40024 	swc1	$f4,36(sp)
    58f0:	afb80014 	sw	t8,20(sp)
    58f4:	afb90018 	sw	t9,24(sp)
    58f8:	0c000000 	jal	0 <func_80038600>
    58fc:	afa8001c 	sw	t0,28(sp)
    5900:	8fbf0034 	lw	ra,52(sp)
    5904:	27bd0038 	addiu	sp,sp,56
    5908:	03e00008 	jr	ra
    590c:	00000000 	nop

00005910 <func_8003DF10>:
    5910:	27bdffc8 	addiu	sp,sp,-56
    5914:	afbf0034 	sw	ra,52(sp)
    5918:	afa40038 	sw	a0,56(sp)
    591c:	afa5003c 	sw	a1,60(sp)
    5920:	afa60040 	sw	a2,64(sp)
    5924:	afa70044 	sw	a3,68(sp)
    5928:	240e0001 	li	t6,1
    592c:	afae0010 	sw	t6,16(sp)
    5930:	8fa70058 	lw	a3,88(sp)
    5934:	8fa60054 	lw	a2,84(sp)
    5938:	8fa50050 	lw	a1,80(sp)
    593c:	0c000000 	jal	0 <func_80038600>
    5940:	8fa4004c 	lw	a0,76(sp)
    5944:	3c013f80 	lui	at,0x3f80
    5948:	44812000 	mtc1	at,$f4
    594c:	8faf0040 	lw	t7,64(sp)
    5950:	8fb80044 	lw	t8,68(sp)
    5954:	8fb90048 	lw	t9,72(sp)
    5958:	8fa8005c 	lw	t0,92(sp)
    595c:	8fa90060 	lw	t1,96(sp)
    5960:	8fa40038 	lw	a0,56(sp)
    5964:	24050002 	li	a1,2
    5968:	00003025 	move	a2,zero
    596c:	8fa7003c 	lw	a3,60(sp)
    5970:	afa20028 	sw	v0,40(sp)
    5974:	afaf0010 	sw	t7,16(sp)
    5978:	e7a40024 	swc1	$f4,36(sp)
    597c:	afb80014 	sw	t8,20(sp)
    5980:	afb90018 	sw	t9,24(sp)
    5984:	afa8001c 	sw	t0,28(sp)
    5988:	0c000000 	jal	0 <func_80038600>
    598c:	afa90020 	sw	t1,32(sp)
    5990:	8fbf0034 	lw	ra,52(sp)
    5994:	27bd0038 	addiu	sp,sp,56
    5998:	03e00008 	jr	ra
    599c:	00000000 	nop

000059a0 <func_8003DFA0>:
    59a0:	27bdffc8 	addiu	sp,sp,-56
    59a4:	afbf0034 	sw	ra,52(sp)
    59a8:	afa40038 	sw	a0,56(sp)
    59ac:	afa5003c 	sw	a1,60(sp)
    59b0:	afa60040 	sw	a2,64(sp)
    59b4:	afa70044 	sw	a3,68(sp)
    59b8:	240e0001 	li	t6,1
    59bc:	afae0010 	sw	t6,16(sp)
    59c0:	8fa70058 	lw	a3,88(sp)
    59c4:	8fa60054 	lw	a2,84(sp)
    59c8:	8fa50050 	lw	a1,80(sp)
    59cc:	0c000000 	jal	0 <func_80038600>
    59d0:	8fa4004c 	lw	a0,76(sp)
    59d4:	8faf0040 	lw	t7,64(sp)
    59d8:	8fb80044 	lw	t8,68(sp)
    59dc:	8fb90048 	lw	t9,72(sp)
    59e0:	8fa8005c 	lw	t0,92(sp)
    59e4:	8fa90060 	lw	t1,96(sp)
    59e8:	c7a40064 	lwc1	$f4,100(sp)
    59ec:	8fa40038 	lw	a0,56(sp)
    59f0:	24050002 	li	a1,2
    59f4:	00003025 	move	a2,zero
    59f8:	8fa7003c 	lw	a3,60(sp)
    59fc:	afa20028 	sw	v0,40(sp)
    5a00:	afaf0010 	sw	t7,16(sp)
    5a04:	afb80014 	sw	t8,20(sp)
    5a08:	afb90018 	sw	t9,24(sp)
    5a0c:	afa8001c 	sw	t0,28(sp)
    5a10:	afa90020 	sw	t1,32(sp)
    5a14:	0c000000 	jal	0 <func_80038600>
    5a18:	e7a40024 	swc1	$f4,36(sp)
    5a1c:	8fbf0034 	lw	ra,52(sp)
    5a20:	27bd0038 	addiu	sp,sp,56
    5a24:	03e00008 	jr	ra
    5a28:	00000000 	nop

00005a2c <func_8003E02C>:
    5a2c:	27bdffc8 	addiu	sp,sp,-56
    5a30:	afbf0034 	sw	ra,52(sp)
    5a34:	afa40038 	sw	a0,56(sp)
    5a38:	afa5003c 	sw	a1,60(sp)
    5a3c:	afa60040 	sw	a2,64(sp)
    5a40:	afa70044 	sw	a3,68(sp)
    5a44:	240e0001 	li	t6,1
    5a48:	afae0010 	sw	t6,16(sp)
    5a4c:	8fa70058 	lw	a3,88(sp)
    5a50:	8fa60054 	lw	a2,84(sp)
    5a54:	8fa50050 	lw	a1,80(sp)
    5a58:	0c000000 	jal	0 <func_80038600>
    5a5c:	8fa4004c 	lw	a0,76(sp)
    5a60:	3c013f80 	lui	at,0x3f80
    5a64:	44812000 	mtc1	at,$f4
    5a68:	8faf0040 	lw	t7,64(sp)
    5a6c:	8fb80044 	lw	t8,68(sp)
    5a70:	8fb90048 	lw	t9,72(sp)
    5a74:	8fa8005c 	lw	t0,92(sp)
    5a78:	8fa40038 	lw	a0,56(sp)
    5a7c:	24050004 	li	a1,4
    5a80:	00003025 	move	a2,zero
    5a84:	8fa7003c 	lw	a3,60(sp)
    5a88:	afa00020 	sw	zero,32(sp)
    5a8c:	afa20028 	sw	v0,40(sp)
    5a90:	afaf0010 	sw	t7,16(sp)
    5a94:	e7a40024 	swc1	$f4,36(sp)
    5a98:	afb80014 	sw	t8,20(sp)
    5a9c:	afb90018 	sw	t9,24(sp)
    5aa0:	0c000000 	jal	0 <func_80038600>
    5aa4:	afa8001c 	sw	t0,28(sp)
    5aa8:	8fbf0034 	lw	ra,52(sp)
    5aac:	27bd0038 	addiu	sp,sp,56
    5ab0:	03e00008 	jr	ra
    5ab4:	00000000 	nop

00005ab8 <func_8003E0B8>:
    5ab8:	27bdffd0 	addiu	sp,sp,-48
    5abc:	8fae0040 	lw	t6,64(sp)
    5ac0:	8fa80044 	lw	t0,68(sp)
    5ac4:	afbf002c 	sw	ra,44(sp)
    5ac8:	240f0001 	li	t7,1
    5acc:	24180001 	li	t8,1
    5ad0:	24190001 	li	t9,1
    5ad4:	afb9001c 	sw	t9,28(sp)
    5ad8:	afb80018 	sw	t8,24(sp)
    5adc:	afaf0014 	sw	t7,20(sp)
    5ae0:	afae0010 	sw	t6,16(sp)
    5ae4:	0c000000 	jal	0 <func_80038600>
    5ae8:	afa80020 	sw	t0,32(sp)
    5aec:	8fbf002c 	lw	ra,44(sp)
    5af0:	27bd0030 	addiu	sp,sp,48
    5af4:	03e00008 	jr	ra
    5af8:	00000000 	nop

00005afc <func_8003E0FC>:
    5afc:	27bdffc0 	addiu	sp,sp,-64
    5b00:	afbf0034 	sw	ra,52(sp)
    5b04:	afa40040 	sw	a0,64(sp)
    5b08:	afa50044 	sw	a1,68(sp)
    5b0c:	afa60048 	sw	a2,72(sp)
    5b10:	afa7004c 	sw	a3,76(sp)
    5b14:	240e0001 	li	t6,1
    5b18:	afae0010 	sw	t6,16(sp)
    5b1c:	8fa70060 	lw	a3,96(sp)
    5b20:	8fa6005c 	lw	a2,92(sp)
    5b24:	8fa50058 	lw	a1,88(sp)
    5b28:	0c000000 	jal	0 <func_80038600>
    5b2c:	8fa40054 	lw	a0,84(sp)
    5b30:	3c013f80 	lui	at,0x3f80
    5b34:	44812000 	mtc1	at,$f4
    5b38:	8faf0048 	lw	t7,72(sp)
    5b3c:	8fb8004c 	lw	t8,76(sp)
    5b40:	8fb90050 	lw	t9,80(sp)
    5b44:	27a8003c 	addiu	t0,sp,60
    5b48:	afa8001c 	sw	t0,28(sp)
    5b4c:	8fa40040 	lw	a0,64(sp)
    5b50:	00002825 	move	a1,zero
    5b54:	00003025 	move	a2,zero
    5b58:	8fa70044 	lw	a3,68(sp)
    5b5c:	afa00020 	sw	zero,32(sp)
    5b60:	afa20028 	sw	v0,40(sp)
    5b64:	afaf0010 	sw	t7,16(sp)
    5b68:	e7a40024 	swc1	$f4,36(sp)
    5b6c:	afb80014 	sw	t8,20(sp)
    5b70:	0c000000 	jal	0 <func_80038600>
    5b74:	afb90018 	sw	t9,24(sp)
    5b78:	8fbf0034 	lw	ra,52(sp)
    5b7c:	27bd0040 	addiu	sp,sp,64
    5b80:	03e00008 	jr	ra
    5b84:	00000000 	nop

00005b88 <func_8003E188>:
    5b88:	27bdffc8 	addiu	sp,sp,-56
    5b8c:	afbf0034 	sw	ra,52(sp)
    5b90:	afa40038 	sw	a0,56(sp)
    5b94:	afa5003c 	sw	a1,60(sp)
    5b98:	afa60040 	sw	a2,64(sp)
    5b9c:	afa70044 	sw	a3,68(sp)
    5ba0:	240e0001 	li	t6,1
    5ba4:	afae0010 	sw	t6,16(sp)
    5ba8:	8fa70058 	lw	a3,88(sp)
    5bac:	8fa60054 	lw	a2,84(sp)
    5bb0:	8fa50050 	lw	a1,80(sp)
    5bb4:	0c000000 	jal	0 <func_80038600>
    5bb8:	8fa4004c 	lw	a0,76(sp)
    5bbc:	3c013f80 	lui	at,0x3f80
    5bc0:	44812000 	mtc1	at,$f4
    5bc4:	8faf0040 	lw	t7,64(sp)
    5bc8:	8fb80044 	lw	t8,68(sp)
    5bcc:	8fb90048 	lw	t9,72(sp)
    5bd0:	8fa8005c 	lw	t0,92(sp)
    5bd4:	8fa40038 	lw	a0,56(sp)
    5bd8:	00002825 	move	a1,zero
    5bdc:	00003025 	move	a2,zero
    5be0:	8fa7003c 	lw	a3,60(sp)
    5be4:	afa00020 	sw	zero,32(sp)
    5be8:	afa20028 	sw	v0,40(sp)
    5bec:	afaf0010 	sw	t7,16(sp)
    5bf0:	e7a40024 	swc1	$f4,36(sp)
    5bf4:	afb80014 	sw	t8,20(sp)
    5bf8:	afb90018 	sw	t9,24(sp)
    5bfc:	0c000000 	jal	0 <func_80038600>
    5c00:	afa8001c 	sw	t0,28(sp)
    5c04:	8fbf0034 	lw	ra,52(sp)
    5c08:	27bd0038 	addiu	sp,sp,56
    5c0c:	03e00008 	jr	ra
    5c10:	00000000 	nop

00005c14 <func_8003E214>:
    5c14:	27bdffd8 	addiu	sp,sp,-40
    5c18:	afa5002c 	sw	a1,44(sp)
    5c1c:	afbf0024 	sw	ra,36(sp)
    5c20:	afa40028 	sw	a0,40(sp)
    5c24:	afa60030 	sw	a2,48(sp)
    5c28:	afa70034 	sw	a3,52(sp)
    5c2c:	240e0032 	li	t6,50
    5c30:	acee0000 	sw	t6,0(a3)
    5c34:	3c050000 	lui	a1,0x0
    5c38:	24a50000 	addiu	a1,a1,0
    5c3c:	8fa40038 	lw	a0,56(sp)
    5c40:	0c000000 	jal	0 <func_80038600>
    5c44:	240616dc 	li	a2,5852
    5c48:	24010001 	li	at,1
    5c4c:	14410006 	bne	v0,at,5c68 <func_8003E214+0x54>
    5c50:	8fb80040 	lw	t8,64(sp)
    5c54:	13000004 	beqz	t8,5c68 <func_8003E214+0x54>
    5c58:	3c040000 	lui	a0,0x0
    5c5c:	24840000 	addiu	a0,a0,0
    5c60:	0c000000 	jal	0 <func_80038600>
    5c64:	87050000 	lh	a1,0(t8)
    5c68:	8fa40028 	lw	a0,40(sp)
    5c6c:	8fa60038 	lw	a2,56(sp)
    5c70:	0c000000 	jal	0 <func_80038600>
    5c74:	8c850040 	lw	a1,64(a0)
    5c78:	14400003 	bnez	v0,5c88 <func_8003E214+0x74>
    5c7c:	00402025 	move	a0,v0
    5c80:	1000001e 	b	5cfc <func_8003E214+0xe8>
    5c84:	00001025 	move	v0,zero
    5c88:	c7a4003c 	lwc1	$f4,60(sp)
    5c8c:	8fb90030 	lw	t9,48(sp)
    5c90:	97a80046 	lhu	t0,70(sp)
    5c94:	97a5002e 	lhu	a1,46(sp)
    5c98:	8fa60028 	lw	a2,40(sp)
    5c9c:	8fa70038 	lw	a3,56(sp)
    5ca0:	e7a40010 	swc1	$f4,16(sp)
    5ca4:	afb90014 	sw	t9,20(sp)
    5ca8:	0c000000 	jal	0 <func_80038600>
    5cac:	afa80018 	sw	t0,24(sp)
    5cb0:	1440000f 	bnez	v0,5cf0 <func_8003E214+0xdc>
    5cb4:	8fa40028 	lw	a0,40(sp)
    5cb8:	8fa90038 	lw	t1,56(sp)
    5cbc:	c7a6003c 	lwc1	$f6,60(sp)
    5cc0:	8faa0040 	lw	t2,64(sp)
    5cc4:	97ab0046 	lhu	t3,70(sp)
    5cc8:	97a5002e 	lhu	a1,46(sp)
    5ccc:	8fa60030 	lw	a2,48(sp)
    5cd0:	8fa70034 	lw	a3,52(sp)
    5cd4:	afa90010 	sw	t1,16(sp)
    5cd8:	e7a60014 	swc1	$f6,20(sp)
    5cdc:	afaa0018 	sw	t2,24(sp)
    5ce0:	0c000000 	jal	0 <func_80038600>
    5ce4:	afab001c 	sw	t3,28(sp)
    5ce8:	50400004 	beqzl	v0,5cfc <func_8003E214+0xe8>
    5cec:	00001025 	move	v0,zero
    5cf0:	10000002 	b	5cfc <func_8003E214+0xe8>
    5cf4:	24020001 	li	v0,1
    5cf8:	00001025 	move	v0,zero
    5cfc:	8fbf0024 	lw	ra,36(sp)
    5d00:	27bd0028 	addiu	sp,sp,40
    5d04:	03e00008 	jr	ra
    5d08:	00000000 	nop

00005d0c <func_8003E30C>:
    5d0c:	27bdffd0 	addiu	sp,sp,-48
    5d10:	afa50034 	sw	a1,52(sp)
    5d14:	44866000 	mtc1	a2,$f12
    5d18:	8fae0034 	lw	t6,52(sp)
    5d1c:	afbf0024 	sw	ra,36(sp)
    5d20:	27a6002c 	addiu	a2,sp,44
    5d24:	00002825 	move	a1,zero
    5d28:	27a70028 	addiu	a3,sp,40
    5d2c:	afa00018 	sw	zero,24(sp)
    5d30:	afa0001c 	sw	zero,28(sp)
    5d34:	afae0010 	sw	t6,16(sp)
    5d38:	0c000000 	jal	0 <func_80038600>
    5d3c:	e7ac0014 	swc1	$f12,20(sp)
    5d40:	8fbf0024 	lw	ra,36(sp)
    5d44:	27bd0030 	addiu	sp,sp,48
    5d48:	03e00008 	jr	ra
    5d4c:	00000000 	nop
    5d50:	27bdffd0 	addiu	sp,sp,-48
    5d54:	afa50034 	sw	a1,52(sp)
    5d58:	44866000 	mtc1	a2,$f12
    5d5c:	8fae0034 	lw	t6,52(sp)
    5d60:	afbf0024 	sw	ra,36(sp)
    5d64:	240f0005 	li	t7,5
    5d68:	afaf001c 	sw	t7,28(sp)
    5d6c:	27a6002c 	addiu	a2,sp,44
    5d70:	00002825 	move	a1,zero
    5d74:	27a70028 	addiu	a3,sp,40
    5d78:	afa00018 	sw	zero,24(sp)
    5d7c:	afae0010 	sw	t6,16(sp)
    5d80:	0c000000 	jal	0 <func_80038600>
    5d84:	e7ac0014 	swc1	$f12,20(sp)
    5d88:	8fbf0024 	lw	ra,36(sp)
    5d8c:	27bd0030 	addiu	sp,sp,48
    5d90:	03e00008 	jr	ra
    5d94:	00000000 	nop

00005d98 <func_8003E398>:
    5d98:	a4800000 	sh	zero,0(a0)
    5d9c:	a4800002 	sh	zero,2(a0)
    5da0:	ac800004 	sw	zero,4(a0)
    5da4:	03e00008 	jr	ra
    5da8:	ac800008 	sw	zero,8(a0)

00005dac <func_8003E3AC>:
    5dac:	27bdffe8 	addiu	sp,sp,-24
    5db0:	afbf0014 	sw	ra,20(sp)
    5db4:	afa40018 	sw	a0,24(sp)
    5db8:	afa5001c 	sw	a1,28(sp)
    5dbc:	afa60020 	sw	a2,32(sp)
    5dc0:	afa70024 	sw	a3,36(sp)
    5dc4:	a4a60000 	sh	a2,0(a1)
    5dc8:	8fb8001c 	lw	t8,28(sp)
    5dcc:	2406fffe 	li	a2,-2
    5dd0:	a7000002 	sh	zero,2(t8)
    5dd4:	8fa50020 	lw	a1,32(sp)
    5dd8:	8fa40018 	lw	a0,24(sp)
    5ddc:	00052880 	sll	a1,a1,0x2
    5de0:	0c000000 	jal	0 <func_80038600>
    5de4:	24840074 	addiu	a0,a0,116
    5de8:	8fb9001c 	lw	t9,28(sp)
    5dec:	3c040000 	lui	a0,0x0
    5df0:	14400006 	bnez	v0,5e0c <func_8003E3AC+0x60>
    5df4:	af220004 	sw	v0,4(t9)
    5df8:	3c050000 	lui	a1,0x0
    5dfc:	24a50000 	addiu	a1,a1,0
    5e00:	24840000 	addiu	a0,a0,0
    5e04:	0c000000 	jal	0 <func_80038600>
    5e08:	24061757 	li	a2,5975
    5e0c:	3c060000 	lui	a2,0x0
    5e10:	24c60000 	addiu	a2,a2,0
    5e14:	8fa40018 	lw	a0,24(sp)
    5e18:	8fa50024 	lw	a1,36(sp)
    5e1c:	0c000000 	jal	0 <func_80038600>
    5e20:	2407175b 	li	a3,5979
    5e24:	8fa8001c 	lw	t0,28(sp)
    5e28:	3c040000 	lui	a0,0x0
    5e2c:	14400006 	bnez	v0,5e48 <func_8003E3AC+0x9c>
    5e30:	ad020008 	sw	v0,8(t0)
    5e34:	3c050000 	lui	a1,0x0
    5e38:	24a50000 	addiu	a1,a1,0
    5e3c:	24840000 	addiu	a0,a0,0
    5e40:	0c000000 	jal	0 <func_80038600>
    5e44:	2406175d 	li	a2,5981
    5e48:	8fbf0014 	lw	ra,20(sp)
    5e4c:	27bd0018 	addiu	sp,sp,24
    5e50:	03e00008 	jr	ra
    5e54:	00000000 	nop
    5e58:	27bdffe0 	addiu	sp,sp,-32
    5e5c:	afbf0014 	sw	ra,20(sp)
    5e60:	94820002 	lhu	v0,2(a0)
    5e64:	94850000 	lhu	a1,0(a0)
    5e68:	8c8e0004 	lw	t6,4(a0)
    5e6c:	24580001 	addiu	t8,v0,1
    5e70:	3303ffff 	andi	v1,t8,0xffff
    5e74:	00027880 	sll	t7,v0,0x2
    5e78:	0065082a 	slt	at,v1,a1
    5e7c:	00803825 	move	a3,a0
    5e80:	a4980002 	sh	t8,2(a0)
    5e84:	1420000d 	bnez	at,5ebc <func_8003E3AC+0x110>
    5e88:	01cf4021 	addu	t0,t6,t7
    5e8c:	3c040000 	lui	a0,0x0
    5e90:	3c050000 	lui	a1,0x0
    5e94:	24a50000 	addiu	a1,a1,0
    5e98:	24840000 	addiu	a0,a0,0
    5e9c:	2406176e 	li	a2,5998
    5ea0:	afa70020 	sw	a3,32(sp)
    5ea4:	0c000000 	jal	0 <func_80038600>
    5ea8:	afa8001c 	sw	t0,28(sp)
    5eac:	8fa70020 	lw	a3,32(sp)
    5eb0:	8fa8001c 	lw	t0,28(sp)
    5eb4:	94e30002 	lhu	v1,2(a3)
    5eb8:	94e50000 	lhu	a1,0(a3)
    5ebc:	0065082a 	slt	at,v1,a1
    5ec0:	14200003 	bnez	at,5ed0 <func_8003E3AC+0x124>
    5ec4:	8fbf0014 	lw	ra,20(sp)
    5ec8:	10000002 	b	5ed4 <func_8003E3AC+0x128>
    5ecc:	00001025 	move	v0,zero
    5ed0:	01001025 	move	v0,t0
    5ed4:	03e00008 	jr	ra
    5ed8:	27bd0020 	addiu	sp,sp,32

00005edc <func_8003E4DC>:
    5edc:	27bdffe0 	addiu	sp,sp,-32
    5ee0:	afbf0014 	sw	ra,20(sp)
    5ee4:	94830002 	lhu	v1,2(a0)
    5ee8:	948f0000 	lhu	t7,0(a0)
    5eec:	3c050000 	lui	a1,0x0
    5ef0:	246e0001 	addiu	t6,v1,1
    5ef4:	006f082a 	slt	at,v1,t7
    5ef8:	14200008 	bnez	at,5f1c <func_8003E4DC+0x40>
    5efc:	a48e0002 	sh	t6,2(a0)
    5f00:	3c040000 	lui	a0,0x0
    5f04:	24840000 	addiu	a0,a0,0
    5f08:	24a50000 	addiu	a1,a1,0
    5f0c:	24061785 	li	a2,6021
    5f10:	0c000000 	jal	0 <func_80038600>
    5f14:	a7a3001e 	sh	v1,30(sp)
    5f18:	97a3001e 	lhu	v1,30(sp)
    5f1c:	8fbf0014 	lw	ra,20(sp)
    5f20:	27bd0020 	addiu	sp,sp,32
    5f24:	00601025 	move	v0,v1
    5f28:	03e00008 	jr	ra
    5f2c:	00000000 	nop

00005f30 <func_8003E530>:
    5f30:	3c013f80 	lui	at,0x3f80
    5f34:	44810000 	mtc1	at,$f0
    5f38:	44801000 	mtc1	zero,$f2
    5f3c:	a4800010 	sh	zero,16(a0)
    5f40:	84820010 	lh	v0,16(a0)
    5f44:	e4800008 	swc1	$f0,8(a0)
    5f48:	e4800004 	swc1	$f0,4(a0)
    5f4c:	e4800000 	swc1	$f0,0(a0)
    5f50:	e482001c 	swc1	$f2,28(a0)
    5f54:	e4820018 	swc1	$f2,24(a0)
    5f58:	e4820014 	swc1	$f2,20(a0)
    5f5c:	a482000e 	sh	v0,14(a0)
    5f60:	03e00008 	jr	ra
    5f64:	a482000c 	sh	v0,12(a0)

00005f68 <func_8003E568>:
    5f68:	8caf0000 	lw	t7,0(a1)
    5f6c:	ac8f0000 	sw	t7,0(a0)
    5f70:	8cae0004 	lw	t6,4(a1)
    5f74:	ac8e0004 	sw	t6,4(a0)
    5f78:	8caf0008 	lw	t7,8(a1)
    5f7c:	ac8f0008 	sw	t7,8(a0)
    5f80:	88d90000 	lwl	t9,0(a2)
    5f84:	98d90003 	lwr	t9,3(a2)
    5f88:	a899000c 	swl	t9,12(a0)
    5f8c:	b899000f 	swr	t9,15(a0)
    5f90:	94d90004 	lhu	t9,4(a2)
    5f94:	a4990010 	sh	t9,16(a0)
    5f98:	8ce90000 	lw	t1,0(a3)
    5f9c:	ac890014 	sw	t1,20(a0)
    5fa0:	8ce80004 	lw	t0,4(a3)
    5fa4:	ac880018 	sw	t0,24(a0)
    5fa8:	8ce90008 	lw	t1,8(a3)
    5fac:	03e00008 	jr	ra
    5fb0:	ac89001c 	sw	t1,28(a0)

00005fb4 <func_8003E5B4>:
    5fb4:	c4a40000 	lwc1	$f4,0(a1)
    5fb8:	c4860000 	lwc1	$f6,0(a0)
    5fbc:	46062032 	c.eq.s	$f4,$f6
    5fc0:	00000000 	nop
    5fc4:	4500002c 	bc1f	6078 <func_8003E5B4+0xc4>
    5fc8:	00000000 	nop
    5fcc:	c4a80004 	lwc1	$f8,4(a1)
    5fd0:	c48a0004 	lwc1	$f10,4(a0)
    5fd4:	460a4032 	c.eq.s	$f8,$f10
    5fd8:	00000000 	nop
    5fdc:	45000026 	bc1f	6078 <func_8003E5B4+0xc4>
    5fe0:	00000000 	nop
    5fe4:	c4b00008 	lwc1	$f16,8(a1)
    5fe8:	c4920008 	lwc1	$f18,8(a0)
    5fec:	46128032 	c.eq.s	$f16,$f18
    5ff0:	00000000 	nop
    5ff4:	45000020 	bc1f	6078 <func_8003E5B4+0xc4>
    5ff8:	00000000 	nop
    5ffc:	84ae000c 	lh	t6,12(a1)
    6000:	848f000c 	lh	t7,12(a0)
    6004:	15cf001c 	bne	t6,t7,6078 <func_8003E5B4+0xc4>
    6008:	00000000 	nop
    600c:	84b8000e 	lh	t8,14(a1)
    6010:	8499000e 	lh	t9,14(a0)
    6014:	17190018 	bne	t8,t9,6078 <func_8003E5B4+0xc4>
    6018:	00000000 	nop
    601c:	84a80010 	lh	t0,16(a1)
    6020:	84890010 	lh	t1,16(a0)
    6024:	15090014 	bne	t0,t1,6078 <func_8003E5B4+0xc4>
    6028:	00000000 	nop
    602c:	c4a40014 	lwc1	$f4,20(a1)
    6030:	c4860014 	lwc1	$f6,20(a0)
    6034:	46062032 	c.eq.s	$f4,$f6
    6038:	00000000 	nop
    603c:	4500000e 	bc1f	6078 <func_8003E5B4+0xc4>
    6040:	00000000 	nop
    6044:	c4a80018 	lwc1	$f8,24(a1)
    6048:	c48a0018 	lwc1	$f10,24(a0)
    604c:	460a4032 	c.eq.s	$f8,$f10
    6050:	00000000 	nop
    6054:	45000008 	bc1f	6078 <func_8003E5B4+0xc4>
    6058:	00000000 	nop
    605c:	c4b0001c 	lwc1	$f16,28(a1)
    6060:	c492001c 	lwc1	$f18,28(a0)
    6064:	24020001 	li	v0,1
    6068:	46128032 	c.eq.s	$f16,$f18
    606c:	00000000 	nop
    6070:	45010003 	bc1t	6080 <func_8003E5B4+0xcc>
    6074:	00000000 	nop
    6078:	03e00008 	jr	ra
    607c:	00001025 	move	v0,zero
    6080:	03e00008 	jr	ra
    6084:	00000000 	nop

00006088 <func_8003E688>:
    6088:	27bdffe8 	addiu	sp,sp,-24
    608c:	afbf0014 	sw	ra,20(sp)
    6090:	afa40018 	sw	a0,24(sp)
    6094:	0c000000 	jal	0 <func_80038600>
    6098:	24840002 	addiu	a0,a0,2
    609c:	8fa40018 	lw	a0,24(sp)
    60a0:	0c000000 	jal	0 <func_80038600>
    60a4:	24840004 	addiu	a0,a0,4
    60a8:	8fa40018 	lw	a0,24(sp)
    60ac:	0c000000 	jal	0 <func_80038600>
    60b0:	24840006 	addiu	a0,a0,6
    60b4:	8fbf0014 	lw	ra,20(sp)
    60b8:	27bd0018 	addiu	sp,sp,24
    60bc:	03e00008 	jr	ra
    60c0:	00000000 	nop

000060c4 <func_8003E6C4>:
    60c4:	27bdffe8 	addiu	sp,sp,-24
    60c8:	afbf0014 	sw	ra,20(sp)
    60cc:	0c000000 	jal	0 <func_80038600>
    60d0:	a4800000 	sh	zero,0(a0)
    60d4:	8fbf0014 	lw	ra,20(sp)
    60d8:	27bd0018 	addiu	sp,sp,24
    60dc:	03e00008 	jr	ra
    60e0:	00000000 	nop

000060e4 <func_8003E6E4>:
    60e4:	03e00008 	jr	ra
    60e8:	a4800000 	sh	zero,0(a0)

000060ec <func_8003E6EC>:
    60ec:	27bdffe0 	addiu	sp,sp,-32
    60f0:	afbf001c 	sw	ra,28(sp)
    60f4:	afb00018 	sw	s0,24(sp)
    60f8:	afa40020 	sw	a0,32(sp)
    60fc:	00a08025 	move	s0,a1
    6100:	aca00000 	sw	zero,0(a1)
    6104:	aca00004 	sw	zero,4(a1)
    6108:	0c000000 	jal	0 <func_80038600>
    610c:	24a40014 	addiu	a0,a1,20
    6110:	0c000000 	jal	0 <func_80038600>
    6114:	26040034 	addiu	a0,s0,52
    6118:	0c000000 	jal	0 <func_80038600>
    611c:	26040008 	addiu	a0,s0,8
    6120:	0c000000 	jal	0 <func_80038600>
    6124:	26040010 	addiu	a0,s0,16
    6128:	a6000058 	sh	zero,88(s0)
    612c:	86020058 	lh	v0,88(s0)
    6130:	a600005a 	sh	zero,90(s0)
    6134:	a6020056 	sh	v0,86(s0)
    6138:	a6020054 	sh	v0,84(s0)
    613c:	8fbf001c 	lw	ra,28(sp)
    6140:	8fb00018 	lw	s0,24(sp)
    6144:	27bd0020 	addiu	sp,sp,32
    6148:	03e00008 	jr	ra
    614c:	00000000 	nop

00006150 <func_8003E750>:
    6150:	ac850000 	sw	a1,0(a0)
    6154:	ac860004 	sw	a2,4(a0)
    6158:	24a20050 	addiu	v0,a1,80
    615c:	8c4f0000 	lw	t7,0(v0)
    6160:	24a300b4 	addiu	v1,a1,180
    6164:	24a70024 	addiu	a3,a1,36
    6168:	ac8f0014 	sw	t7,20(a0)
    616c:	8c4e0004 	lw	t6,4(v0)
    6170:	ac8e0018 	sw	t6,24(a0)
    6174:	8c4f0008 	lw	t7,8(v0)
    6178:	ac8f001c 	sw	t7,28(a0)
    617c:	88790000 	lwl	t9,0(v1)
    6180:	98790003 	lwr	t9,3(v1)
    6184:	a8990020 	swl	t9,32(a0)
    6188:	b8990023 	swr	t9,35(a0)
    618c:	84880020 	lh	t0,32(a0)
    6190:	94790004 	lhu	t9,4(v1)
    6194:	2509ffff 	addiu	t1,t0,-1
    6198:	a4890020 	sh	t1,32(a0)
    619c:	a4990024 	sh	t9,36(a0)
    61a0:	8ceb0000 	lw	t3,0(a3)
    61a4:	ac8b0028 	sw	t3,40(a0)
    61a8:	8cea0004 	lw	t2,4(a3)
    61ac:	ac8a002c 	sw	t2,44(a0)
    61b0:	8ceb0008 	lw	t3,8(a3)
    61b4:	ac8b0030 	sw	t3,48(a0)
    61b8:	8c4d0000 	lw	t5,0(v0)
    61bc:	ac8d0034 	sw	t5,52(a0)
    61c0:	8c4c0004 	lw	t4,4(v0)
    61c4:	ac8c0038 	sw	t4,56(a0)
    61c8:	8c4d0008 	lw	t5,8(v0)
    61cc:	ac8d003c 	sw	t5,60(a0)
    61d0:	886f0000 	lwl	t7,0(v1)
    61d4:	986f0003 	lwr	t7,3(v1)
    61d8:	a88f0040 	swl	t7,64(a0)
    61dc:	b88f0043 	swr	t7,67(a0)
    61e0:	946f0004 	lhu	t7,4(v1)
    61e4:	a48f0044 	sh	t7,68(a0)
    61e8:	8cf90000 	lw	t9,0(a3)
    61ec:	ac990048 	sw	t9,72(a0)
    61f0:	8cf80004 	lw	t8,4(a3)
    61f4:	ac98004c 	sw	t8,76(a0)
    61f8:	8cf90008 	lw	t9,8(a3)
    61fc:	03e00008 	jr	ra
    6200:	ac990050 	sw	t9,80(a0)

00006204 <func_8003E804>:
    6204:	27bdffe8 	addiu	sp,sp,-24
    6208:	afbf0014 	sw	ra,20(sp)
    620c:	00803025 	move	a2,a0
    6210:	24c50034 	addiu	a1,a2,52
    6214:	0c000000 	jal	0 <func_80038600>
    6218:	24840014 	addiu	a0,a0,20
    621c:	8fbf0014 	lw	ra,20(sp)
    6220:	27bd0018 	addiu	sp,sp,24
    6224:	03e00008 	jr	ra
    6228:	00000000 	nop

0000622c <func_8003E82C>:
    622c:	03e00008 	jr	ra
    6230:	ac800000 	sw	zero,0(a0)

00006234 <func_8003E834>:
    6234:	27bdffe8 	addiu	sp,sp,-24
    6238:	afa5001c 	sw	a1,28(sp)
    623c:	afbf0014 	sw	ra,20(sp)
    6240:	afa60020 	sw	a2,32(sp)
    6244:	00062900 	sll	a1,a2,0x4
    6248:	2406fffe 	li	a2,-2
    624c:	0c000000 	jal	0 <func_80038600>
    6250:	24840074 	addiu	a0,a0,116
    6254:	8fae001c 	lw	t6,28(sp)
    6258:	3c040000 	lui	a0,0x0
    625c:	14400006 	bnez	v0,6278 <func_8003E834+0x44>
    6260:	adc20000 	sw	v0,0(t6)
    6264:	3c050000 	lui	a1,0x0
    6268:	24a50000 	addiu	a1,a1,0
    626c:	24840000 	addiu	a0,a0,0
    6270:	0c000000 	jal	0 <func_80038600>
    6274:	24061867 	li	a2,6247
    6278:	8fbf0014 	lw	ra,20(sp)
    627c:	27bd0018 	addiu	sp,sp,24
    6280:	03e00008 	jr	ra
    6284:	00000000 	nop

00006288 <func_8003E888>:
    6288:	03e00008 	jr	ra
    628c:	ac800000 	sw	zero,0(a0)

00006290 <func_8003E890>:
    6290:	27bdffe8 	addiu	sp,sp,-24
    6294:	afa5001c 	sw	a1,28(sp)
    6298:	00062880 	sll	a1,a2,0x2
    629c:	afbf0014 	sw	ra,20(sp)
    62a0:	afa60020 	sw	a2,32(sp)
    62a4:	00a62823 	subu	a1,a1,a2
    62a8:	00052840 	sll	a1,a1,0x1
    62ac:	2406fffe 	li	a2,-2
    62b0:	0c000000 	jal	0 <func_80038600>
    62b4:	24840074 	addiu	a0,a0,116
    62b8:	8fae001c 	lw	t6,28(sp)
    62bc:	3c040000 	lui	a0,0x0
    62c0:	14400006 	bnez	v0,62dc <func_8003E890+0x4c>
    62c4:	adc20000 	sw	v0,0(t6)
    62c8:	3c050000 	lui	a1,0x0
    62cc:	24a50000 	addiu	a1,a1,0
    62d0:	24840000 	addiu	a0,a0,0
    62d4:	0c000000 	jal	0 <func_80038600>
    62d8:	24061885 	li	a2,6277
    62dc:	8fbf0014 	lw	ra,20(sp)
    62e0:	27bd0018 	addiu	sp,sp,24
    62e4:	03e00008 	jr	ra
    62e8:	00000000 	nop

000062ec <func_8003E8EC>:
    62ec:	afa40000 	sw	a0,0(sp)
    62f0:	8cae0038 	lw	t6,56(a1)
    62f4:	8caf0034 	lw	t7,52(a1)
    62f8:	acae0018 	sw	t6,24(a1)
    62fc:	acaf0014 	sw	t7,20(a1)
    6300:	8caf003c 	lw	t7,60(a1)
    6304:	8cae0040 	lw	t6,64(a1)
    6308:	acaf001c 	sw	t7,28(a1)
    630c:	acae0020 	sw	t6,32(a1)
    6310:	8cae0048 	lw	t6,72(a1)
    6314:	8caf0044 	lw	t7,68(a1)
    6318:	acae0028 	sw	t6,40(a1)
    631c:	acaf0024 	sw	t7,36(a1)
    6320:	8caf004c 	lw	t7,76(a1)
    6324:	8cae0050 	lw	t6,80(a1)
    6328:	acaf002c 	sw	t7,44(a1)
    632c:	03e00008 	jr	ra
    6330:	acae0030 	sw	t6,48(a1)

00006334 <func_8003E934>:
    6334:	04800003 	bltz	a0,6344 <func_8003E934+0x10>
    6338:	28810032 	slti	at,a0,50
    633c:	14200003 	bnez	at,634c <func_8003E934+0x18>
    6340:	24020001 	li	v0,1
    6344:	03e00008 	jr	ra
    6348:	00001025 	move	v0,zero
    634c:	03e00008 	jr	ra
    6350:	00000000 	nop

00006354 <func_8003E954>:
    6354:	27bdffe8 	addiu	sp,sp,-24
    6358:	afbf0014 	sw	ra,20(sp)
    635c:	afa40018 	sw	a0,24(sp)
    6360:	240e0001 	li	t6,1
    6364:	a0ae0000 	sb	t6,0(a1)
    6368:	afa5001c 	sw	a1,28(sp)
    636c:	0c000000 	jal	0 <func_80038600>
    6370:	24a413f0 	addiu	a0,a1,5104
    6374:	8fa4001c 	lw	a0,28(sp)
    6378:	0c000000 	jal	0 <func_80038600>
    637c:	248413f4 	addiu	a0,a0,5108
    6380:	8fa5001c 	lw	a1,28(sp)
    6384:	8fa40018 	lw	a0,24(sp)
    6388:	0c000000 	jal	0 <func_80038600>
    638c:	24a513f8 	addiu	a1,a1,5112
    6390:	8fbf0014 	lw	ra,20(sp)
    6394:	27bd0018 	addiu	sp,sp,24
    6398:	03e00008 	jr	ra
    639c:	00000000 	nop

000063a0 <func_8003E9A0>:
    63a0:	27bdffd0 	addiu	sp,sp,-48
    63a4:	afb50028 	sw	s5,40(sp)
    63a8:	afb40024 	sw	s4,36(sp)
    63ac:	afb30020 	sw	s3,32(sp)
    63b0:	afb2001c 	sw	s2,28(sp)
    63b4:	afb10018 	sw	s1,24(sp)
    63b8:	afb00014 	sw	s0,20(sp)
    63bc:	0080a025 	move	s4,a0
    63c0:	00a0a825 	move	s5,a1
    63c4:	afbf002c 	sw	ra,44(sp)
    63c8:	00008025 	move	s0,zero
    63cc:	24b10004 	addiu	s1,a1,4
    63d0:	00a09025 	move	s2,a1
    63d4:	24131388 	li	s3,5000
    63d8:	02802025 	move	a0,s4
    63dc:	0c000000 	jal	0 <func_80038600>
    63e0:	02202825 	move	a1,s1
    63e4:	26100064 	addiu	s0,s0,100
    63e8:	26310064 	addiu	s1,s1,100
    63ec:	26520002 	addiu	s2,s2,2
    63f0:	1613fff9 	bne	s0,s3,63d8 <func_8003E9A0+0x38>
    63f4:	a640138a 	sh	zero,5002(s2)
    63f8:	26b013f0 	addiu	s0,s5,5104
    63fc:	0c000000 	jal	0 <func_80038600>
    6400:	02002025 	move	a0,s0
    6404:	02802025 	move	a0,s4
    6408:	02002825 	move	a1,s0
    640c:	0c000000 	jal	0 <func_80038600>
    6410:	8ea61408 	lw	a2,5128(s5)
    6414:	26b013f4 	addiu	s0,s5,5108
    6418:	0c000000 	jal	0 <func_80038600>
    641c:	02002025 	move	a0,s0
    6420:	02802025 	move	a0,s4
    6424:	02002825 	move	a1,s0
    6428:	0c000000 	jal	0 <func_80038600>
    642c:	8ea6140c 	lw	a2,5132(s5)
    6430:	26b013f8 	addiu	s0,s5,5112
    6434:	02002825 	move	a1,s0
    6438:	0c000000 	jal	0 <func_80038600>
    643c:	02802025 	move	a0,s4
    6440:	02802025 	move	a0,s4
    6444:	02002825 	move	a1,s0
    6448:	0c000000 	jal	0 <func_80038600>
    644c:	8ea61404 	lw	a2,5124(s5)
    6450:	8fbf002c 	lw	ra,44(sp)
    6454:	8fb00014 	lw	s0,20(sp)
    6458:	8fb10018 	lw	s1,24(sp)
    645c:	8fb2001c 	lw	s2,28(sp)
    6460:	8fb30020 	lw	s3,32(sp)
    6464:	8fb40024 	lw	s4,36(sp)
    6468:	8fb50028 	lw	s5,40(sp)
    646c:	03e00008 	jr	ra
    6470:	27bd0030 	addiu	sp,sp,48

00006474 <DynaPolyInfo_RegisterActor>:
    6474:	27bdffd0 	addiu	sp,sp,-48
    6478:	afb00018 	sw	s0,24(sp)
    647c:	afa40030 	sw	a0,48(sp)
    6480:	afbf001c 	sw	ra,28(sp)
    6484:	afa50034 	sw	a1,52(sp)
    6488:	afa60038 	sw	a2,56(sp)
    648c:	00004025 	move	t0,zero
    6490:	24040032 	li	a0,50
    6494:	00008025 	move	s0,zero
    6498:	00a01025 	move	v0,a1
    649c:	9443138c 	lhu	v1,5004(v0)
    64a0:	306e0001 	andi	t6,v1,0x1
    64a4:	15c00004 	bnez	t6,64b8 <DynaPolyInfo_RegisterActor+0x44>
    64a8:	346f0001 	ori	t7,v1,0x1
    64ac:	a44f138c 	sh	t7,5004(v0)
    64b0:	10000004 	b	64c4 <DynaPolyInfo_RegisterActor+0x50>
    64b4:	24080001 	li	t0,1
    64b8:	26100001 	addiu	s0,s0,1
    64bc:	1604fff7 	bne	s0,a0,649c <DynaPolyInfo_RegisterActor+0x28>
    64c0:	24420002 	addiu	v0,v0,2
    64c4:	1500000c 	bnez	t0,64f8 <DynaPolyInfo_RegisterActor+0x84>
    64c8:	8fb80034 	lw	t8,52(sp)
    64cc:	3c040000 	lui	a0,0x0
    64d0:	0c000000 	jal	0 <func_80038600>
    64d4:	24840000 	addiu	a0,a0,0
    64d8:	3c040000 	lui	a0,0x0
    64dc:	0c000000 	jal	0 <func_80038600>
    64e0:	24840000 	addiu	a0,a0,0
    64e4:	3c040000 	lui	a0,0x0
    64e8:	0c000000 	jal	0 <func_80038600>
    64ec:	24840000 	addiu	a0,a0,0
    64f0:	1000001f 	b	6570 <DynaPolyInfo_RegisterActor+0xfc>
    64f4:	24020032 	li	v0,50
    64f8:	0010c880 	sll	t9,s0,0x2
    64fc:	0330c823 	subu	t9,t9,s0
    6500:	0019c8c0 	sll	t9,t9,0x3
    6504:	0330c821 	addu	t9,t9,s0
    6508:	0019c880 	sll	t9,t9,0x2
    650c:	03192021 	addu	a0,t8,t9
    6510:	24840004 	addiu	a0,a0,4
    6514:	8fa50038 	lw	a1,56(sp)
    6518:	00e03025 	move	a2,a3
    651c:	0c000000 	jal	0 <func_80038600>
    6520:	afa20024 	sw	v0,36(sp)
    6524:	8fa30034 	lw	v1,52(sp)
    6528:	8fa20024 	lw	v0,36(sp)
    652c:	3c040000 	lui	a0,0x0
    6530:	90690000 	lbu	t1,0(v1)
    6534:	24840000 	addiu	a0,a0,0
    6538:	352a0001 	ori	t2,t1,0x1
    653c:	a06a0000 	sb	t2,0(v1)
    6540:	944b138c 	lhu	t3,5004(v0)
    6544:	316cfffd 	andi	t4,t3,0xfffd
    6548:	0c000000 	jal	0 <func_80038600>
    654c:	a44c138c 	sh	t4,5004(v0)
    6550:	3c040000 	lui	a0,0x0
    6554:	24840000 	addiu	a0,a0,0
    6558:	0c000000 	jal	0 <func_80038600>
    655c:	02002825 	move	a1,s0
    6560:	3c040000 	lui	a0,0x0
    6564:	0c000000 	jal	0 <func_80038600>
    6568:	24840000 	addiu	a0,a0,0
    656c:	02001025 	move	v0,s0
    6570:	8fbf001c 	lw	ra,28(sp)
    6574:	8fb00018 	lw	s0,24(sp)
    6578:	27bd0030 	addiu	sp,sp,48
    657c:	03e00008 	jr	ra
    6580:	00000000 	nop

00006584 <DynaPolyInfo_GetActor>:
    6584:	27bdffe8 	addiu	sp,sp,-24
    6588:	afbf0014 	sw	ra,20(sp)
    658c:	afa40018 	sw	a0,24(sp)
    6590:	00a02025 	move	a0,a1
    6594:	0c000000 	jal	0 <func_80038600>
    6598:	afa5001c 	sw	a1,28(sp)
    659c:	8fa30018 	lw	v1,24(sp)
    65a0:	10400009 	beqz	v0,65c8 <DynaPolyInfo_GetActor+0x44>
    65a4:	8fa5001c 	lw	a1,28(sp)
    65a8:	00057040 	sll	t6,a1,0x1
    65ac:	006e7821 	addu	t7,v1,t6
    65b0:	95e213dc 	lhu	v0,5084(t7)
    65b4:	30580001 	andi	t8,v0,0x1
    65b8:	13000003 	beqz	t8,65c8 <DynaPolyInfo_GetActor+0x44>
    65bc:	30590002 	andi	t9,v0,0x2
    65c0:	13200003 	beqz	t9,65d0 <DynaPolyInfo_GetActor+0x4c>
    65c4:	00054080 	sll	t0,a1,0x2
    65c8:	10000007 	b	65e8 <DynaPolyInfo_GetActor+0x64>
    65cc:	00001025 	move	v0,zero
    65d0:	01054023 	subu	t0,t0,a1
    65d4:	000840c0 	sll	t0,t0,0x3
    65d8:	01054021 	addu	t0,t0,a1
    65dc:	00084080 	sll	t0,t0,0x2
    65e0:	00684821 	addu	t1,v1,t0
    65e4:	8d220054 	lw	v0,84(t1)
    65e8:	8fbf0014 	lw	ra,20(sp)
    65ec:	27bd0018 	addiu	sp,sp,24
    65f0:	03e00008 	jr	ra
    65f4:	00000000 	nop

000065f8 <func_8003EBF8>:
    65f8:	27bdffe8 	addiu	sp,sp,-24
    65fc:	afbf0014 	sw	ra,20(sp)
    6600:	afa40018 	sw	a0,24(sp)
    6604:	afa60020 	sw	a2,32(sp)
    6608:	00c02025 	move	a0,a2
    660c:	0c000000 	jal	0 <func_80038600>
    6610:	afa5001c 	sw	a1,28(sp)
    6614:	1040000a 	beqz	v0,6640 <func_8003EBF8+0x48>
    6618:	8fa5001c 	lw	a1,28(sp)
    661c:	8fae0020 	lw	t6,32(sp)
    6620:	000e7840 	sll	t7,t6,0x1
    6624:	00af1021 	addu	v0,a1,t7
    6628:	9458138c 	lhu	t8,5004(v0)
    662c:	37190004 	ori	t9,t8,0x4
    6630:	a459138c 	sh	t9,5004(v0)
    6634:	90a80000 	lbu	t0,0(a1)
    6638:	35090001 	ori	t1,t0,0x1
    663c:	a0a90000 	sb	t1,0(a1)
    6640:	8fbf0014 	lw	ra,20(sp)
    6644:	27bd0018 	addiu	sp,sp,24
    6648:	03e00008 	jr	ra
    664c:	00000000 	nop

00006650 <func_8003EC50>:
    6650:	27bdffe8 	addiu	sp,sp,-24
    6654:	afbf0014 	sw	ra,20(sp)
    6658:	afa40018 	sw	a0,24(sp)
    665c:	afa60020 	sw	a2,32(sp)
    6660:	00c02025 	move	a0,a2
    6664:	0c000000 	jal	0 <func_80038600>
    6668:	afa5001c 	sw	a1,28(sp)
    666c:	1040000a 	beqz	v0,6698 <func_8003EC50+0x48>
    6670:	8fa5001c 	lw	a1,28(sp)
    6674:	8fae0020 	lw	t6,32(sp)
    6678:	000e7840 	sll	t7,t6,0x1
    667c:	00af1021 	addu	v0,a1,t7
    6680:	9458138c 	lhu	t8,5004(v0)
    6684:	3319fffb 	andi	t9,t8,0xfffb
    6688:	a459138c 	sh	t9,5004(v0)
    668c:	90a80000 	lbu	t0,0(a1)
    6690:	35090001 	ori	t1,t0,0x1
    6694:	a0a90000 	sb	t1,0(a1)
    6698:	8fbf0014 	lw	ra,20(sp)
    669c:	27bd0018 	addiu	sp,sp,24
    66a0:	03e00008 	jr	ra
    66a4:	00000000 	nop

000066a8 <func_8003ECA8>:
    66a8:	27bdffe8 	addiu	sp,sp,-24
    66ac:	afbf0014 	sw	ra,20(sp)
    66b0:	afa40018 	sw	a0,24(sp)
    66b4:	afa60020 	sw	a2,32(sp)
    66b8:	00c02025 	move	a0,a2
    66bc:	0c000000 	jal	0 <func_80038600>
    66c0:	afa5001c 	sw	a1,28(sp)
    66c4:	1040000a 	beqz	v0,66f0 <func_8003ECA8+0x48>
    66c8:	8fa5001c 	lw	a1,28(sp)
    66cc:	8fae0020 	lw	t6,32(sp)
    66d0:	000e7840 	sll	t7,t6,0x1
    66d4:	00af1021 	addu	v0,a1,t7
    66d8:	9458138c 	lhu	t8,5004(v0)
    66dc:	37190008 	ori	t9,t8,0x8
    66e0:	a459138c 	sh	t9,5004(v0)
    66e4:	90a80000 	lbu	t0,0(a1)
    66e8:	35090001 	ori	t1,t0,0x1
    66ec:	a0a90000 	sb	t1,0(a1)
    66f0:	8fbf0014 	lw	ra,20(sp)
    66f4:	27bd0018 	addiu	sp,sp,24
    66f8:	03e00008 	jr	ra
    66fc:	00000000 	nop
    6700:	27bdffe8 	addiu	sp,sp,-24
    6704:	afbf0014 	sw	ra,20(sp)
    6708:	afa40018 	sw	a0,24(sp)
    670c:	afa60020 	sw	a2,32(sp)
    6710:	00c02025 	move	a0,a2
    6714:	0c000000 	jal	0 <func_80038600>
    6718:	afa5001c 	sw	a1,28(sp)
    671c:	1040000a 	beqz	v0,6748 <func_8003ECA8+0xa0>
    6720:	8fa5001c 	lw	a1,28(sp)
    6724:	8fae0020 	lw	t6,32(sp)
    6728:	000e7840 	sll	t7,t6,0x1
    672c:	00af1021 	addu	v0,a1,t7
    6730:	9458138c 	lhu	t8,5004(v0)
    6734:	3319fff7 	andi	t9,t8,0xfff7
    6738:	a459138c 	sh	t9,5004(v0)
    673c:	90a80000 	lbu	t0,0(a1)
    6740:	35090001 	ori	t1,t0,0x1
    6744:	a0a90000 	sb	t1,0(a1)
    6748:	8fbf0014 	lw	ra,20(sp)
    674c:	27bd0018 	addiu	sp,sp,24
    6750:	03e00008 	jr	ra
    6754:	00000000 	nop

00006758 <DynaPolyInfo_Free>:
    6758:	27bdffe0 	addiu	sp,sp,-32
    675c:	afa40020 	sw	a0,32(sp)
    6760:	afbf001c 	sw	ra,28(sp)
    6764:	afb00018 	sw	s0,24(sp)
    6768:	3c040000 	lui	a0,0x0
    676c:	00c08025 	move	s0,a2
    6770:	afa50024 	sw	a1,36(sp)
    6774:	0c000000 	jal	0 <func_80038600>
    6778:	24840000 	addiu	a0,a0,0
    677c:	3c040000 	lui	a0,0x0
    6780:	24840000 	addiu	a0,a0,0
    6784:	0c000000 	jal	0 <func_80038600>
    6788:	02002825 	move	a1,s0
    678c:	3c040000 	lui	a0,0x0
    6790:	0c000000 	jal	0 <func_80038600>
    6794:	24840000 	addiu	a0,a0,0
    6798:	0c000000 	jal	0 <func_80038600>
    679c:	02002025 	move	a0,s0
    67a0:	1440001a 	bnez	v0,680c <DynaPolyInfo_Free+0xb4>
    67a4:	8fa40020 	lw	a0,32(sp)
    67a8:	2401ffff 	li	at,-1
    67ac:	1601000c 	bne	s0,at,67e0 <DynaPolyInfo_Free+0x88>
    67b0:	3c040000 	lui	a0,0x0
    67b4:	3c040000 	lui	a0,0x0
    67b8:	0c000000 	jal	0 <func_80038600>
    67bc:	24840000 	addiu	a0,a0,0
    67c0:	3c040000 	lui	a0,0x0
    67c4:	0c000000 	jal	0 <func_80038600>
    67c8:	24840000 	addiu	a0,a0,0
    67cc:	3c040000 	lui	a0,0x0
    67d0:	0c000000 	jal	0 <func_80038600>
    67d4:	24840000 	addiu	a0,a0,0
    67d8:	10000020 	b	685c <DynaPolyInfo_Free+0x104>
    67dc:	8fbf001c 	lw	ra,28(sp)
    67e0:	0c000000 	jal	0 <func_80038600>
    67e4:	24840000 	addiu	a0,a0,0
    67e8:	3c040000 	lui	a0,0x0
    67ec:	24840000 	addiu	a0,a0,0
    67f0:	0c000000 	jal	0 <func_80038600>
    67f4:	02002825 	move	a1,s0
    67f8:	3c040000 	lui	a0,0x0
    67fc:	0c000000 	jal	0 <func_80038600>
    6800:	24840000 	addiu	a0,a0,0
    6804:	10000015 	b	685c <DynaPolyInfo_Free+0x104>
    6808:	8fbf001c 	lw	ra,28(sp)
    680c:	248407c0 	addiu	a0,a0,1984
    6810:	0c000000 	jal	0 <func_80038600>
    6814:	02002825 	move	a1,s0
    6818:	1040000f 	beqz	v0,6858 <DynaPolyInfo_Free+0x100>
    681c:	8fa40024 	lw	a0,36(sp)
    6820:	00107880 	sll	t7,s0,0x2
    6824:	01f07823 	subu	t7,t7,s0
    6828:	000f78c0 	sll	t7,t7,0x3
    682c:	01f07821 	addu	t7,t7,s0
    6830:	240effff 	li	t6,-1
    6834:	000f7880 	sll	t7,t7,0x2
    6838:	ac4e014c 	sw	t6,332(v0)
    683c:	008fc021 	addu	t8,a0,t7
    6840:	0010c840 	sll	t9,s0,0x1
    6844:	af000004 	sw	zero,4(t8)
    6848:	00991821 	addu	v1,a0,t9
    684c:	9468138c 	lhu	t0,5004(v1)
    6850:	35090002 	ori	t1,t0,0x2
    6854:	a469138c 	sh	t1,5004(v1)
    6858:	8fbf001c 	lw	ra,28(sp)
    685c:	8fb00018 	lw	s0,24(sp)
    6860:	27bd0020 	addiu	sp,sp,32
    6864:	03e00008 	jr	ra
    6868:	00000000 	nop

0000686c <func_8003EE6C>:
    686c:	afa40000 	sw	a0,0(sp)
    6870:	90ae0000 	lbu	t6,0(a1)
    6874:	35cf0001 	ori	t7,t6,0x1
    6878:	03e00008 	jr	ra
    687c:	a0af0000 	sb	t7,0(a1)

00006880 <func_8003EE80>:
    6880:	27bdfe98 	addiu	sp,sp,-360
    6884:	8faf0178 	lw	t7,376(sp)
    6888:	00067080 	sll	t6,a2,0x2
    688c:	01c67023 	subu	t6,t6,a2
    6890:	afbf005c 	sw	ra,92(sp)
    6894:	afbe0058 	sw	s8,88(sp)
    6898:	afb70054 	sw	s7,84(sp)
    689c:	afb60050 	sw	s6,80(sp)
    68a0:	afb5004c 	sw	s5,76(sp)
    68a4:	afb40048 	sw	s4,72(sp)
    68a8:	afb30044 	sw	s3,68(sp)
    68ac:	afb20040 	sw	s2,64(sp)
    68b0:	afb1003c 	sw	s1,60(sp)
    68b4:	afb00038 	sw	s0,56(sp)
    68b8:	f7b40030 	sdc1	$f20,48(sp)
    68bc:	afa40168 	sw	a0,360(sp)
    68c0:	afa70174 	sw	a3,372(sp)
    68c4:	000e70c0 	sll	t6,t6,0x3
    68c8:	8df80000 	lw	t8,0(t7)
    68cc:	01c67021 	addu	t6,t6,a2
    68d0:	000e7080 	sll	t6,t6,0x2
    68d4:	00aea021 	addu	s4,a1,t6
    68d8:	a698000c 	sh	t8,12(s4)
    68dc:	8fb90174 	lw	t9,372(sp)
    68e0:	8e820004 	lw	v0,4(s4)
    68e4:	27a70108 	addiu	a3,sp,264
    68e8:	8f290000 	lw	t1,0(t9)
    68ec:	8e9e0008 	lw	s8,8(s4)
    68f0:	00c08025 	move	s0,a2
    68f4:	a6890014 	sh	t1,20(s4)
    68f8:	8c4b0024 	lw	t3,36(v0)
    68fc:	00a0b825 	move	s7,a1
    6900:	26840038 	addiu	a0,s4,56
    6904:	aceb0000 	sw	t3,0(a3)
    6908:	8c4a0028 	lw	t2,40(v0)
    690c:	24450050 	addiu	a1,v0,80
    6910:	244600b4 	addiu	a2,v0,180
    6914:	acea0004 	sw	t2,4(a3)
    6918:	8c4b002c 	lw	t3,44(v0)
    691c:	aceb0008 	sw	t3,8(a3)
    6920:	c4460054 	lwc1	$f6,84(v0)
    6924:	c44400bc 	lwc1	$f4,188(v0)
    6928:	c7aa010c 	lwc1	$f10,268(sp)
    692c:	46062202 	mul.s	$f8,$f4,$f6
    6930:	46085400 	add.s	$f16,$f10,$f8
    6934:	0c000000 	jal	0 <func_80038600>
    6938:	e7b0010c 	swc1	$f16,268(sp)
    693c:	00106040 	sll	t4,s0,0x1
    6940:	02ecb021 	addu	s6,s7,t4
    6944:	96cd138c 	lhu	t5,5004(s6)
    6948:	8fb80178 	lw	t8,376(sp)
    694c:	31ae0004 	andi	t6,t5,0x4
    6950:	55c0025a 	bnezl	t6,72bc <func_8003EE80+0xa3c>
    6954:	8fbf005c 	lw	ra,92(sp)
    6958:	8f190000 	lw	t9,0(t8)
    695c:	97c90014 	lhu	t1,20(s8)
    6960:	8eef1408 	lw	t7,5128(s7)
    6964:	3c040000 	lui	a0,0x0
    6968:	03295021 	addu	t2,t9,t1
    696c:	01ea082a 	slt	at,t7,t2
    6970:	5020000c 	beqzl	at,69a4 <func_8003EE80+0x124>
    6974:	8fb80174 	lw	t8,372(sp)
    6978:	0c000000 	jal	0 <func_80038600>
    697c:	24840000 	addiu	a0,a0,0
    6980:	8fab0178 	lw	t3,376(sp)
    6984:	97cd0014 	lhu	t5,20(s8)
    6988:	3c040000 	lui	a0,0x0
    698c:	8d6c0000 	lw	t4,0(t3)
    6990:	24840000 	addiu	a0,a0,0
    6994:	8ee61408 	lw	a2,5128(s7)
    6998:	0c000000 	jal	0 <func_80038600>
    699c:	018d2821 	addu	a1,t4,t5
    69a0:	8fb80174 	lw	t8,372(sp)
    69a4:	97c9000c 	lhu	t1,12(s8)
    69a8:	8eee140c 	lw	t6,5132(s7)
    69ac:	8f190000 	lw	t9,0(t8)
    69b0:	3c040000 	lui	a0,0x0
    69b4:	03297821 	addu	t7,t9,t1
    69b8:	01cf082a 	slt	at,t6,t7
    69bc:	5020000c 	beqzl	at,69f0 <func_8003EE80+0x170>
    69c0:	8fb80178 	lw	t8,376(sp)
    69c4:	0c000000 	jal	0 <func_80038600>
    69c8:	24840000 	addiu	a0,a0,0
    69cc:	8faa0174 	lw	t2,372(sp)
    69d0:	97cc000c 	lhu	t4,12(s8)
    69d4:	3c040000 	lui	a0,0x0
    69d8:	8d4b0000 	lw	t3,0(t2)
    69dc:	24840000 	addiu	a0,a0,0
    69e0:	8ee6140c 	lw	a2,5132(s7)
    69e4:	0c000000 	jal	0 <func_80038600>
    69e8:	016c2821 	addu	a1,t3,t4
    69ec:	8fb80178 	lw	t8,376(sp)
    69f0:	97c90014 	lhu	t1,20(s8)
    69f4:	8eed1408 	lw	t5,5128(s7)
    69f8:	8f190000 	lw	t9,0(t8)
    69fc:	3c040000 	lui	a0,0x0
    6a00:	24840000 	addiu	a0,a0,0
    6a04:	03297021 	addu	t6,t9,t1
    6a08:	01ae082a 	slt	at,t5,t6
    6a0c:	14200007 	bnez	at,6a2c <func_8003EE80+0x1ac>
    6a10:	3c050000 	lui	a1,0x0
    6a14:	8faf0174 	lw	t7,372(sp)
    6a18:	97cb000c 	lhu	t3,12(s8)
    6a1c:	8ee2140c 	lw	v0,5132(s7)
    6a20:	8dea0000 	lw	t2,0(t7)
    6a24:	10000009 	b	6a4c <func_8003EE80+0x1cc>
    6a28:	014b1821 	addu	v1,t2,t3
    6a2c:	24a50000 	addiu	a1,a1,0
    6a30:	0c000000 	jal	0 <func_80038600>
    6a34:	24061a1f 	li	a2,6687
    6a38:	8fac0174 	lw	t4,372(sp)
    6a3c:	97d9000c 	lhu	t9,12(s8)
    6a40:	8ee2140c 	lw	v0,5132(s7)
    6a44:	8d980000 	lw	t8,0(t4)
    6a48:	03191821 	addu	v1,t8,t9
    6a4c:	0043082a 	slt	at,v0,v1
    6a50:	10200006 	beqz	at,6a6c <func_8003EE80+0x1ec>
    6a54:	3c040000 	lui	a0,0x0
    6a58:	3c050000 	lui	a1,0x0
    6a5c:	24a50000 	addiu	a1,a1,0
    6a60:	24840000 	addiu	a0,a0,0
    6a64:	0c000000 	jal	0 <func_80038600>
    6a68:	24061a20 	li	a2,6688
    6a6c:	92e90000 	lbu	t1,0(s7)
    6a70:	312d0001 	andi	t5,t1,0x1
    6a74:	55a00046 	bnezl	t5,6b90 <func_8003EE80+0x310>
    6a78:	868e0044 	lh	t6,68(s4)
    6a7c:	0c000000 	jal	0 <func_80038600>
    6a80:	26840004 	addiu	a0,s4,4
    6a84:	24010001 	li	at,1
    6a88:	14410040 	bne	v0,at,6b8c <func_8003EE80+0x30c>
    6a8c:	8fae0178 	lw	t6,376(sp)
    6a90:	8dc20000 	lw	v0,0(t6)
    6a94:	97cf0014 	lhu	t7,20(s8)
    6a98:	27b5009c 	addiu	s5,sp,156
    6a9c:	00408025 	move	s0,v0
    6aa0:	004f2021 	addu	a0,v0,t7
    6aa4:	0044082a 	slt	at,v0,a0
    6aa8:	10200030 	beqz	at,6b6c <func_8003EE80+0x2ec>
    6aac:	00028900 	sll	s1,v0,0x4
    6ab0:	27b3009e 	addiu	s3,sp,158
    6ab4:	27b200a0 	addiu	s2,sp,160
    6ab8:	8eea13f0 	lw	t2,5104(s7)
    6abc:	26850012 	addiu	a1,s4,18
    6ac0:	02403025 	move	a2,s2
    6ac4:	01511021 	addu	v0,t2,s1
    6ac8:	8443000a 	lh	v1,10(v0)
    6acc:	28614000 	slti	at,v1,16384
    6ad0:	5420000a 	bnezl	at,6afc <func_8003EE80+0x27c>
    6ad4:	2861999b 	slti	at,v1,-26213
    6ad8:	a7b000a0 	sh	s0,160(sp)
    6adc:	0c000000 	jal	0 <func_80038600>
    6ae0:	26e413f8 	addiu	a0,s7,5112
    6ae4:	8fab0178 	lw	t3,376(sp)
    6ae8:	97d80014 	lhu	t8,20(s8)
    6aec:	8d6c0000 	lw	t4,0(t3)
    6af0:	1000001a 	b	6b5c <func_8003EE80+0x2dc>
    6af4:	01982021 	addu	a0,t4,t8
    6af8:	2861999b 	slti	at,v1,-26213
    6afc:	1020000f 	beqz	at,6b3c <func_8003EE80+0x2bc>
    6b00:	26850010 	addiu	a1,s4,16
    6b04:	96d9138c 	lhu	t9,5004(s6)
    6b08:	2685000e 	addiu	a1,s4,14
    6b0c:	02603025 	move	a2,s3
    6b10:	33290008 	andi	t1,t9,0x8
    6b14:	55200012 	bnezl	t1,6b60 <func_8003EE80+0x2e0>
    6b18:	26100001 	addiu	s0,s0,1
    6b1c:	a7b0009e 	sh	s0,158(sp)
    6b20:	0c000000 	jal	0 <func_80038600>
    6b24:	26e413f8 	addiu	a0,s7,5112
    6b28:	8fad0178 	lw	t5,376(sp)
    6b2c:	97cf0014 	lhu	t7,20(s8)
    6b30:	8dae0000 	lw	t6,0(t5)
    6b34:	10000009 	b	6b5c <func_8003EE80+0x2dc>
    6b38:	01cf2021 	addu	a0,t6,t7
    6b3c:	a7b0009c 	sh	s0,156(sp)
    6b40:	26e413f8 	addiu	a0,s7,5112
    6b44:	0c000000 	jal	0 <func_80038600>
    6b48:	02a03025 	move	a2,s5
    6b4c:	8faa0178 	lw	t2,376(sp)
    6b50:	97cc0014 	lhu	t4,20(s8)
    6b54:	8d4b0000 	lw	t3,0(t2)
    6b58:	016c2021 	addu	a0,t3,t4
    6b5c:	26100001 	addiu	s0,s0,1
    6b60:	0204082a 	slt	at,s0,a0
    6b64:	1420ffd4 	bnez	at,6ab8 <func_8003EE80+0x238>
    6b68:	26310010 	addiu	s1,s1,16
    6b6c:	8fb80178 	lw	t8,376(sp)
    6b70:	8fa20174 	lw	v0,372(sp)
    6b74:	af040000 	sw	a0,0(t8)
    6b78:	97c9000c 	lhu	t1,12(s8)
    6b7c:	8c590000 	lw	t9,0(v0)
    6b80:	03296821 	addu	t5,t9,t1
    6b84:	100001cc 	b	72b8 <func_8003EE80+0xa38>
    6b88:	ac4d0000 	sw	t5,0(v0)
    6b8c:	868e0044 	lh	t6,68(s4)
    6b90:	8e850038 	lw	a1,56(s4)
    6b94:	8e86003c 	lw	a2,60(s4)
    6b98:	8e870040 	lw	a3,64(s4)
    6b9c:	afae0010 	sw	t6,16(sp)
    6ba0:	868f0046 	lh	t7,70(s4)
    6ba4:	27b50128 	addiu	s5,sp,296
    6ba8:	02a02025 	move	a0,s5
    6bac:	afaf0014 	sw	t7,20(sp)
    6bb0:	868a0048 	lh	t2,72(s4)
    6bb4:	afaa0018 	sw	t2,24(sp)
    6bb8:	c692004c 	lwc1	$f18,76(s4)
    6bbc:	e7b2001c 	swc1	$f18,28(sp)
    6bc0:	c6840050 	lwc1	$f4,80(s4)
    6bc4:	e7a40020 	swc1	$f4,32(sp)
    6bc8:	c6860054 	lwc1	$f6,84(s4)
    6bcc:	0c000000 	jal	0 <func_80038600>
    6bd0:	e7a60024 	swc1	$f6,36(sp)
    6bd4:	97cb000c 	lhu	t3,12(s8)
    6bd8:	3c013f80 	lui	at,0x3f80
    6bdc:	44800000 	mtc1	zero,$f0
    6be0:	448b4000 	mtc1	t3,$f8
    6be4:	44815000 	mtc1	at,$f10
    6be8:	05610005 	bgez	t3,6c00 <func_8003EE80+0x380>
    6bec:	46804420 	cvt.s.w	$f16,$f8
    6bf0:	3c014f80 	lui	at,0x4f80
    6bf4:	44819000 	mtc1	at,$f18
    6bf8:	00000000 	nop
    6bfc:	46128400 	add.s	$f16,$f16,$f18
    6c00:	e7a000f8 	swc1	$f0,248(sp)
    6c04:	e7a000f4 	swc1	$f0,244(sp)
    6c08:	e7a000f0 	swc1	$f0,240(sp)
    6c0c:	97cc000c 	lhu	t4,12(s8)
    6c10:	46105503 	div.s	$f20,$f10,$f16
    6c14:	00009825 	move	s3,zero
    6c18:	1980003e 	blez	t4,6d14 <func_8003EE80+0x494>
    6c1c:	00008025 	move	s0,zero
    6c20:	24160006 	li	s6,6
    6c24:	27b20084 	addiu	s2,sp,132
    6c28:	27b10090 	addiu	s1,sp,144
    6c2c:	8fd80010 	lw	t8,16(s8)
    6c30:	02202025 	move	a0,s1
    6c34:	0c000000 	jal	0 <func_80038600>
    6c38:	03102821 	addu	a1,t8,s0
    6c3c:	02a02025 	move	a0,s5
    6c40:	02202825 	move	a1,s1
    6c44:	0c000000 	jal	0 <func_80038600>
    6c48:	02403025 	move	a2,s2
    6c4c:	8fb90174 	lw	t9,372(sp)
    6c50:	8eef13f4 	lw	t7,5108(s7)
    6c54:	02402825 	move	a1,s2
    6c58:	8f290000 	lw	t1,0(t9)
    6c5c:	01336821 	addu	t5,t1,s3
    6c60:	01b60019 	multu	t5,s6
    6c64:	00007012 	mflo	t6
    6c68:	01cf2021 	addu	a0,t6,t7
    6c6c:	0c000000 	jal	0 <func_80038600>
    6c70:	00000000 	nop
    6c74:	16600006 	bnez	s3,6c90 <func_8003EE80+0x410>
    6c78:	c7a80088 	lwc1	$f8,136(sp)
    6c7c:	c7a40088 	lwc1	$f4,136(sp)
    6c80:	e6840064 	swc1	$f4,100(s4)
    6c84:	c6860064 	lwc1	$f6,100(s4)
    6c88:	1000000f 	b	6cc8 <func_8003EE80+0x448>
    6c8c:	e6860060 	swc1	$f6,96(s4)
    6c90:	c6920060 	lwc1	$f18,96(s4)
    6c94:	c7b00088 	lwc1	$f16,136(sp)
    6c98:	4612403c 	c.lt.s	$f8,$f18
    6c9c:	00000000 	nop
    6ca0:	45020004 	bc1fl	6cb4 <func_8003EE80+0x434>
    6ca4:	c68a0064 	lwc1	$f10,100(s4)
    6ca8:	10000007 	b	6cc8 <func_8003EE80+0x448>
    6cac:	e6880060 	swc1	$f8,96(s4)
    6cb0:	c68a0064 	lwc1	$f10,100(s4)
    6cb4:	4610503c 	c.lt.s	$f10,$f16
    6cb8:	00000000 	nop
    6cbc:	45020003 	bc1fl	6ccc <func_8003EE80+0x44c>
    6cc0:	c7a400f0 	lwc1	$f4,240(sp)
    6cc4:	e6900064 	swc1	$f16,100(s4)
    6cc8:	c7a400f0 	lwc1	$f4,240(sp)
    6ccc:	c7a60084 	lwc1	$f6,132(sp)
    6cd0:	c7a800f4 	lwc1	$f8,244(sp)
    6cd4:	c7aa0088 	lwc1	$f10,136(sp)
    6cd8:	46062480 	add.s	$f18,$f4,$f6
    6cdc:	c7a6008c 	lwc1	$f6,140(sp)
    6ce0:	c7a400f8 	lwc1	$f4,248(sp)
    6ce4:	460a4400 	add.s	$f16,$f8,$f10
    6ce8:	e7b200f0 	swc1	$f18,240(sp)
    6cec:	26730001 	addiu	s3,s3,1
    6cf0:	46062480 	add.s	$f18,$f4,$f6
    6cf4:	e7b000f4 	swc1	$f16,244(sp)
    6cf8:	26100006 	addiu	s0,s0,6
    6cfc:	e7b200f8 	swc1	$f18,248(sp)
    6d00:	97ca000c 	lhu	t2,12(s8)
    6d04:	026a082a 	slt	at,s3,t2
    6d08:	5420ffc9 	bnezl	at,6c30 <func_8003EE80+0x3b0>
    6d0c:	8fd80010 	lw	t8,16(s8)
    6d10:	00009825 	move	s3,zero
    6d14:	c7a800f0 	lwc1	$f8,240(sp)
    6d18:	c7b000f4 	lwc1	$f16,244(sp)
    6d1c:	c7a600f8 	lwc1	$f6,248(sp)
    6d20:	46144282 	mul.s	$f10,$f8,$f20
    6d24:	26950058 	addiu	s5,s4,88
    6d28:	3c01c2c8 	lui	at,0xc2c8
    6d2c:	46148102 	mul.s	$f4,$f16,$f20
    6d30:	44811000 	mtc1	at,$f2
    6d34:	00008025 	move	s0,zero
    6d38:	46143482 	mul.s	$f18,$f6,$f20
    6d3c:	e7aa00f0 	swc1	$f10,240(sp)
    6d40:	27b200f0 	addiu	s2,sp,240
    6d44:	27b100dc 	addiu	s1,sp,220
    6d48:	e7a400f4 	swc1	$f4,244(sp)
    6d4c:	4600520d 	trunc.w.s	$f8,$f10
    6d50:	e7b200f8 	swc1	$f18,248(sp)
    6d54:	440c4000 	mfc1	t4,$f8
    6d58:	00000000 	nop
    6d5c:	a6ac0000 	sh	t4,0(s5)
    6d60:	c7b000f4 	lwc1	$f16,244(sp)
    6d64:	4600810d 	trunc.w.s	$f4,$f16
    6d68:	44192000 	mfc1	t9,$f4
    6d6c:	00000000 	nop
    6d70:	a6b90002 	sh	t9,2(s5)
    6d74:	c7a600f8 	lwc1	$f6,248(sp)
    6d78:	4600348d 	trunc.w.s	$f18,$f6
    6d7c:	440d9000 	mfc1	t5,$f18
    6d80:	00000000 	nop
    6d84:	a6ad0004 	sh	t5,4(s5)
    6d88:	97ce000c 	lhu	t6,12(s8)
    6d8c:	59c00038 	blezl	t6,6e70 <func_8003EE80+0x5f0>
    6d90:	46001004 	sqrt.s	$f0,$f2
    6d94:	8fa20174 	lw	v0,372(sp)
    6d98:	8eef13f4 	lw	t7,5108(s7)
    6d9c:	02202025 	move	a0,s1
    6da0:	8c4a0000 	lw	t2,0(v0)
    6da4:	02402825 	move	a1,s2
    6da8:	000a5880 	sll	t3,t2,0x2
    6dac:	016a5823 	subu	t3,t3,t2
    6db0:	000b5840 	sll	t3,t3,0x1
    6db4:	01eb6021 	addu	t4,t7,t3
    6db8:	0190c021 	addu	t8,t4,s0
    6dbc:	87190000 	lh	t9,0(t8)
    6dc0:	44995000 	mtc1	t9,$f10
    6dc4:	00000000 	nop
    6dc8:	46805220 	cvt.s.w	$f8,$f10
    6dcc:	e7a800dc 	swc1	$f8,220(sp)
    6dd0:	8c4d0000 	lw	t5,0(v0)
    6dd4:	8ee913f4 	lw	t1,5108(s7)
    6dd8:	000d7080 	sll	t6,t5,0x2
    6ddc:	01cd7023 	subu	t6,t6,t5
    6de0:	000e7040 	sll	t6,t6,0x1
    6de4:	012e5021 	addu	t2,t1,t6
    6de8:	01507821 	addu	t7,t2,s0
    6dec:	85eb0002 	lh	t3,2(t7)
    6df0:	448b8000 	mtc1	t3,$f16
    6df4:	00000000 	nop
    6df8:	46808120 	cvt.s.w	$f4,$f16
    6dfc:	e7a400e0 	swc1	$f4,224(sp)
    6e00:	8c580000 	lw	t8,0(v0)
    6e04:	8eec13f4 	lw	t4,5108(s7)
    6e08:	0018c880 	sll	t9,t8,0x2
    6e0c:	0338c823 	subu	t9,t9,t8
    6e10:	0019c840 	sll	t9,t9,0x1
    6e14:	01996821 	addu	t5,t4,t9
    6e18:	01b04821 	addu	t1,t5,s0
    6e1c:	852e0004 	lh	t6,4(t1)
    6e20:	e7a200ec 	swc1	$f2,236(sp)
    6e24:	448e3000 	mtc1	t6,$f6
    6e28:	00000000 	nop
    6e2c:	468034a0 	cvt.s.w	$f18,$f6
    6e30:	0c000000 	jal	0 <func_80038600>
    6e34:	e7b200e4 	swc1	$f18,228(sp)
    6e38:	c7a200ec 	lwc1	$f2,236(sp)
    6e3c:	4600103c 	c.lt.s	$f2,$f0
    6e40:	00000000 	nop
    6e44:	45020003 	bc1fl	6e54 <func_8003EE80+0x5d4>
    6e48:	97ca000c 	lhu	t2,12(s8)
    6e4c:	46000086 	mov.s	$f2,$f0
    6e50:	97ca000c 	lhu	t2,12(s8)
    6e54:	26730001 	addiu	s3,s3,1
    6e58:	26100006 	addiu	s0,s0,6
    6e5c:	026a082a 	slt	at,s3,t2
    6e60:	5420ffcd 	bnezl	at,6d98 <func_8003EE80+0x518>
    6e64:	8fa20174 	lw	v0,372(sp)
    6e68:	00009825 	move	s3,zero
    6e6c:	46001004 	sqrt.s	$f0,$f2
    6e70:	3c010000 	lui	at,0x0
    6e74:	c42a0000 	lwc1	$f10,0(at)
    6e78:	3c010000 	lui	at,0x0
    6e7c:	0000b025 	move	s6,zero
    6e80:	24120006 	li	s2,6
    6e84:	460a0202 	mul.s	$f8,$f0,$f10
    6e88:	4600440d 	trunc.w.s	$f16,$f8
    6e8c:	440b8000 	mfc1	t3,$f16
    6e90:	00000000 	nop
    6e94:	a6ab0006 	sh	t3,6(s5)
    6e98:	97c20014 	lhu	v0,20(s8)
    6e9c:	26f513f8 	addiu	s5,s7,5112
    6ea0:	584000fd 	blezl	v0,7298 <func_8003EE80+0xa18>
    6ea4:	8faa0178 	lw	t2,376(sp)
    6ea8:	c4340000 	lwc1	$f20,0(at)
    6eac:	8fb80178 	lw	t8,376(sp)
    6eb0:	8fce0018 	lw	t6,24(s8)
    6eb4:	8ee913f0 	lw	t1,5104(s7)
    6eb8:	8f0c0000 	lw	t4,0(t8)
    6ebc:	01d65021 	addu	t2,t6,s6
    6ec0:	894b0000 	lwl	t3,0(t2)
    6ec4:	994b0003 	lwr	t3,3(t2)
    6ec8:	0193c821 	addu	t9,t4,s3
    6ecc:	00196900 	sll	t5,t9,0x4
    6ed0:	8fa80174 	lw	t0,372(sp)
    6ed4:	01a98021 	addu	s0,t5,t1
    6ed8:	aa0b0000 	swl	t3,0(s0)
    6edc:	ba0b0003 	swr	t3,3(s0)
    6ee0:	894f0004 	lwl	t7,4(t2)
    6ee4:	994f0007 	lwr	t7,7(t2)
    6ee8:	96020002 	lhu	v0,2(s0)
    6eec:	27a400d0 	addiu	a0,sp,208
    6ef0:	aa0f0004 	swl	t7,4(s0)
    6ef4:	ba0f0007 	swr	t7,7(s0)
    6ef8:	894b0008 	lwl	t3,8(t2)
    6efc:	994b000b 	lwr	t3,11(t2)
    6f00:	30581fff 	andi	t8,v0,0x1fff
    6f04:	304de000 	andi	t5,v0,0xe000
    6f08:	aa0b0008 	swl	t3,8(s0)
    6f0c:	ba0b000b 	swr	t3,11(s0)
    6f10:	894f000c 	lwl	t7,12(t2)
    6f14:	994f000f 	lwr	t7,15(t2)
    6f18:	96030004 	lhu	v1,4(s0)
    6f1c:	27a500c4 	addiu	a1,sp,196
    6f20:	aa0f000c 	swl	t7,12(s0)
    6f24:	ba0f000f 	swr	t7,15(s0)
    6f28:	8d0c0000 	lw	t4,0(t0)
    6f2c:	306e1fff 	andi	t6,v1,0x1fff
    6f30:	306be000 	andi	t3,v1,0xe000
    6f34:	030cc821 	addu	t9,t8,t4
    6f38:	01b94825 	or	t1,t5,t9
    6f3c:	a6090002 	sh	t1,2(s0)
    6f40:	8d0a0000 	lw	t2,0(t0)
    6f44:	960d0006 	lhu	t5,6(s0)
    6f48:	27a600b8 	addiu	a2,sp,184
    6f4c:	01ca7821 	addu	t7,t6,t2
    6f50:	312e1fff 	andi	t6,t1,0x1fff
    6f54:	01d20019 	multu	t6,s2
    6f58:	016fc025 	or	t8,t3,t7
    6f5c:	a6180004 	sh	t8,4(s0)
    6f60:	8d0c0000 	lw	t4,0(t0)
    6f64:	27a700ac 	addiu	a3,sp,172
    6f68:	018dc821 	addu	t9,t4,t5
    6f6c:	a6190006 	sh	t9,6(s0)
    6f70:	8ef113f4 	lw	s1,5108(s7)
    6f74:	00005012 	mflo	t2
    6f78:	022a5821 	addu	t3,s1,t2
    6f7c:	856f0000 	lh	t7,0(t3)
    6f80:	448f2000 	mtc1	t7,$f4
    6f84:	00000000 	nop
    6f88:	468021a0 	cvt.s.w	$f6,$f4
    6f8c:	e7a600d0 	swc1	$f6,208(sp)
    6f90:	96180002 	lhu	t8,2(s0)
    6f94:	330c1fff 	andi	t4,t8,0x1fff
    6f98:	01920019 	multu	t4,s2
    6f9c:	00006812 	mflo	t5
    6fa0:	022dc821 	addu	t9,s1,t5
    6fa4:	87290002 	lh	t1,2(t9)
    6fa8:	44899000 	mtc1	t1,$f18
    6fac:	00000000 	nop
    6fb0:	468092a0 	cvt.s.w	$f10,$f18
    6fb4:	e7aa00d4 	swc1	$f10,212(sp)
    6fb8:	960e0002 	lhu	t6,2(s0)
    6fbc:	31ca1fff 	andi	t2,t6,0x1fff
    6fc0:	01520019 	multu	t2,s2
    6fc4:	00005812 	mflo	t3
    6fc8:	022b7821 	addu	t7,s1,t3
    6fcc:	85f80004 	lh	t8,4(t7)
    6fd0:	44984000 	mtc1	t8,$f8
    6fd4:	00000000 	nop
    6fd8:	46804420 	cvt.s.w	$f16,$f8
    6fdc:	e7b000d8 	swc1	$f16,216(sp)
    6fe0:	960c0004 	lhu	t4,4(s0)
    6fe4:	318d1fff 	andi	t5,t4,0x1fff
    6fe8:	01b20019 	multu	t5,s2
    6fec:	0000c812 	mflo	t9
    6ff0:	02394821 	addu	t1,s1,t9
    6ff4:	852e0000 	lh	t6,0(t1)
    6ff8:	448e2000 	mtc1	t6,$f4
    6ffc:	00000000 	nop
    7000:	468021a0 	cvt.s.w	$f6,$f4
    7004:	e7a600c4 	swc1	$f6,196(sp)
    7008:	960a0004 	lhu	t2,4(s0)
    700c:	314b1fff 	andi	t3,t2,0x1fff
    7010:	01720019 	multu	t3,s2
    7014:	00007812 	mflo	t7
    7018:	022fc021 	addu	t8,s1,t7
    701c:	870c0002 	lh	t4,2(t8)
    7020:	448c9000 	mtc1	t4,$f18
    7024:	00000000 	nop
    7028:	468092a0 	cvt.s.w	$f10,$f18
    702c:	e7aa00c8 	swc1	$f10,200(sp)
    7030:	960d0004 	lhu	t5,4(s0)
    7034:	31b91fff 	andi	t9,t5,0x1fff
    7038:	03320019 	multu	t9,s2
    703c:	00004812 	mflo	t1
    7040:	02297021 	addu	t6,s1,t1
    7044:	85ca0004 	lh	t2,4(t6)
    7048:	448a4000 	mtc1	t2,$f8
    704c:	00000000 	nop
    7050:	46804420 	cvt.s.w	$f16,$f8
    7054:	e7b000cc 	swc1	$f16,204(sp)
    7058:	960b0006 	lhu	t3,6(s0)
    705c:	01720019 	multu	t3,s2
    7060:	00007812 	mflo	t7
    7064:	022fc021 	addu	t8,s1,t7
    7068:	870c0000 	lh	t4,0(t8)
    706c:	448c2000 	mtc1	t4,$f4
    7070:	00000000 	nop
    7074:	468021a0 	cvt.s.w	$f6,$f4
    7078:	e7a600b8 	swc1	$f6,184(sp)
    707c:	960d0006 	lhu	t5,6(s0)
    7080:	01b20019 	multu	t5,s2
    7084:	0000c812 	mflo	t9
    7088:	02394821 	addu	t1,s1,t9
    708c:	852e0002 	lh	t6,2(t1)
    7090:	448e9000 	mtc1	t6,$f18
    7094:	00000000 	nop
    7098:	468092a0 	cvt.s.w	$f10,$f18
    709c:	e7aa00bc 	swc1	$f10,188(sp)
    70a0:	960a0006 	lhu	t2,6(s0)
    70a4:	01520019 	multu	t2,s2
    70a8:	00005812 	mflo	t3
    70ac:	022b7821 	addu	t7,s1,t3
    70b0:	85f80004 	lh	t8,4(t7)
    70b4:	44984000 	mtc1	t8,$f8
    70b8:	00000000 	nop
    70bc:	46804420 	cvt.s.w	$f16,$f8
    70c0:	0c000000 	jal	0 <func_80038600>
    70c4:	e7b000c0 	swc1	$f16,192(sp)
    70c8:	0c000000 	jal	0 <func_80038600>
    70cc:	27a400ac 	addiu	a0,sp,172
    70d0:	3c010000 	lui	at,0x0
    70d4:	c4240000 	lwc1	$f4,0(at)
    70d8:	46000086 	mov.s	$f2,$f0
    70dc:	46000005 	abs.s	$f0,$f0
    70e0:	3c013f80 	lui	at,0x3f80
    70e4:	4604003c 	c.lt.s	$f0,$f4
    70e8:	00000000 	nop
    70ec:	45030020 	bc1tl	7170 <func_8003EE80+0x8f0>
    70f0:	960b0002 	lhu	t3,2(s0)
    70f4:	44813000 	mtc1	at,$f6
    70f8:	c7b200ac 	lwc1	$f18,172(sp)
    70fc:	c7a800b0 	lwc1	$f8,176(sp)
    7100:	46023003 	div.s	$f0,$f6,$f2
    7104:	c7a400b4 	lwc1	$f4,180(sp)
    7108:	46009282 	mul.s	$f10,$f18,$f0
    710c:	00000000 	nop
    7110:	46004402 	mul.s	$f16,$f8,$f0
    7114:	00000000 	nop
    7118:	46002182 	mul.s	$f6,$f4,$f0
    711c:	e7aa00ac 	swc1	$f10,172(sp)
    7120:	46145482 	mul.s	$f18,$f10,$f20
    7124:	e7b000b0 	swc1	$f16,176(sp)
    7128:	e7a600b4 	swc1	$f6,180(sp)
    712c:	4600920d 	trunc.w.s	$f8,$f18
    7130:	440d4000 	mfc1	t5,$f8
    7134:	00000000 	nop
    7138:	a60d0008 	sh	t5,8(s0)
    713c:	c7b000b0 	lwc1	$f16,176(sp)
    7140:	46148102 	mul.s	$f4,$f16,$f20
    7144:	4600218d 	trunc.w.s	$f6,$f4
    7148:	44093000 	mfc1	t1,$f6
    714c:	00000000 	nop
    7150:	a609000a 	sh	t1,10(s0)
    7154:	c7aa00b4 	lwc1	$f10,180(sp)
    7158:	46145482 	mul.s	$f18,$f10,$f20
    715c:	4600920d 	trunc.w.s	$f8,$f18
    7160:	440a4000 	mfc1	t2,$f8
    7164:	00000000 	nop
    7168:	a60a000c 	sh	t2,12(s0)
    716c:	960b0002 	lhu	t3,2(s0)
    7170:	c7b000ac 	lwc1	$f16,172(sp)
    7174:	c7b200b0 	lwc1	$f18,176(sp)
    7178:	316f1fff 	andi	t7,t3,0x1fff
    717c:	01f20019 	multu	t7,s2
    7180:	3c013f00 	lui	at,0x3f00
    7184:	02a02025 	move	a0,s5
    7188:	0000c012 	mflo	t8
    718c:	02381021 	addu	v0,s1,t8
    7190:	844c0000 	lh	t4,0(v0)
    7194:	844d0002 	lh	t5,2(v0)
    7198:	84590004 	lh	t9,4(v0)
    719c:	448c2000 	mtc1	t4,$f4
    71a0:	448d4000 	mtc1	t5,$f8
    71a4:	468021a0 	cvt.s.w	$f6,$f4
    71a8:	46804120 	cvt.s.w	$f4,$f8
    71ac:	46068282 	mul.s	$f10,$f16,$f6
    71b0:	44994000 	mtc1	t9,$f8
    71b4:	46049402 	mul.s	$f16,$f18,$f4
    71b8:	c7a400b4 	lwc1	$f4,180(sp)
    71bc:	468044a0 	cvt.s.w	$f18,$f8
    71c0:	46105180 	add.s	$f6,$f10,$f16
    71c4:	46049282 	mul.s	$f10,$f18,$f4
    71c8:	44812000 	mtc1	at,$f4
    71cc:	3c010000 	lui	at,0x0
    71d0:	46065400 	add.s	$f16,$f10,$f6
    71d4:	46008207 	neg.s	$f8,$f16
    71d8:	4600448d 	trunc.w.s	$f18,$f8
    71dc:	440e9000 	mfc1	t6,$f18
    71e0:	00000000 	nop
    71e4:	a60e000e 	sh	t6,14(s0)
    71e8:	c7aa00b0 	lwc1	$f10,176(sp)
    71ec:	8faa0178 	lw	t2,376(sp)
    71f0:	c7a600b0 	lwc1	$f6,176(sp)
    71f4:	460a203c 	c.lt.s	$f4,$f10
    71f8:	00000000 	nop
    71fc:	45000009 	bc1f	7224 <func_8003EE80+0x9a4>
    7200:	00000000 	nop
    7204:	8d4b0000 	lw	t3,0(t2)
    7208:	26850012 	addiu	a1,s4,18
    720c:	27a60076 	addiu	a2,sp,118
    7210:	01737821 	addu	t7,t3,s3
    7214:	0c000000 	jal	0 <func_80038600>
    7218:	a7af0076 	sh	t7,118(sp)
    721c:	10000018 	b	7280 <func_8003EE80+0xa00>
    7220:	97c20014 	lhu	v0,20(s8)
    7224:	c4300000 	lwc1	$f16,0(at)
    7228:	8fb80178 	lw	t8,376(sp)
    722c:	2685000e 	addiu	a1,s4,14
    7230:	4610303c 	c.lt.s	$f6,$f16
    7234:	8fb90178 	lw	t9,376(sp)
    7238:	02a02025 	move	a0,s5
    723c:	4502000a 	bc1fl	7268 <func_8003EE80+0x9e8>
    7240:	8f290000 	lw	t1,0(t9)
    7244:	8f0c0000 	lw	t4,0(t8)
    7248:	02a02025 	move	a0,s5
    724c:	27a60074 	addiu	a2,sp,116
    7250:	01936821 	addu	t5,t4,s3
    7254:	0c000000 	jal	0 <func_80038600>
    7258:	a7ad0074 	sh	t5,116(sp)
    725c:	10000008 	b	7280 <func_8003EE80+0xa00>
    7260:	97c20014 	lhu	v0,20(s8)
    7264:	8f290000 	lw	t1,0(t9)
    7268:	26850010 	addiu	a1,s4,16
    726c:	27a60072 	addiu	a2,sp,114
    7270:	01337021 	addu	t6,t1,s3
    7274:	0c000000 	jal	0 <func_80038600>
    7278:	a7ae0072 	sh	t6,114(sp)
    727c:	97c20014 	lhu	v0,20(s8)
    7280:	26730001 	addiu	s3,s3,1
    7284:	26d60010 	addiu	s6,s6,16
    7288:	0262082a 	slt	at,s3,v0
    728c:	5420ff08 	bnezl	at,6eb0 <func_8003EE80+0x630>
    7290:	8fb80178 	lw	t8,376(sp)
    7294:	8faa0178 	lw	t2,376(sp)
    7298:	8d4b0000 	lw	t3,0(t2)
    729c:	01627821 	addu	t7,t3,v0
    72a0:	ad4f0000 	sw	t7,0(t2)
    72a4:	8fb80174 	lw	t8,372(sp)
    72a8:	97cd000c 	lhu	t5,12(s8)
    72ac:	8f0c0000 	lw	t4,0(t8)
    72b0:	018dc821 	addu	t9,t4,t5
    72b4:	af190000 	sw	t9,0(t8)
    72b8:	8fbf005c 	lw	ra,92(sp)
    72bc:	d7b40030 	ldc1	$f20,48(sp)
    72c0:	8fb00038 	lw	s0,56(sp)
    72c4:	8fb1003c 	lw	s1,60(sp)
    72c8:	8fb20040 	lw	s2,64(sp)
    72cc:	8fb30044 	lw	s3,68(sp)
    72d0:	8fb40048 	lw	s4,72(sp)
    72d4:	8fb5004c 	lw	s5,76(sp)
    72d8:	8fb60050 	lw	s6,80(sp)
    72dc:	8fb70054 	lw	s7,84(sp)
    72e0:	8fbe0058 	lw	s8,88(sp)
    72e4:	03e00008 	jr	ra
    72e8:	27bd0168 	addiu	sp,sp,360

000072ec <func_8003F8EC>:
    72ec:	27bdffd0 	addiu	sp,sp,-48
    72f0:	afb40028 	sw	s4,40(sp)
    72f4:	afb30024 	sw	s3,36(sp)
    72f8:	afb20020 	sw	s2,32(sp)
    72fc:	afb1001c 	sw	s1,28(sp)
    7300:	afb00018 	sw	s0,24(sp)
    7304:	00c09825 	move	s3,a2
    7308:	0080a025 	move	s4,a0
    730c:	afbf002c 	sw	ra,44(sp)
    7310:	00008025 	move	s0,zero
    7314:	00a08825 	move	s1,a1
    7318:	24120032 	li	s2,50
    731c:	962e138c 	lhu	t6,5004(s1)
    7320:	268407c0 	addiu	a0,s4,1984
    7324:	31cf0001 	andi	t7,t6,0x1
    7328:	51e0000c 	beqzl	t7,735c <func_8003F8EC+0x70>
    732c:	26100001 	addiu	s0,s0,1
    7330:	0c000000 	jal	0 <func_80038600>
    7334:	02002825 	move	a1,s0
    7338:	50400008 	beqzl	v0,735c <func_8003F8EC+0x70>
    733c:	26100001 	addiu	s0,s0,1
    7340:	54530006 	bnel	v0,s3,735c <func_8003F8EC+0x70>
    7344:	26100001 	addiu	s0,s0,1
    7348:	0c000000 	jal	0 <func_80038600>
    734c:	02602025 	move	a0,s3
    7350:	10000005 	b	7368 <func_8003F8EC+0x7c>
    7354:	8fbf002c 	lw	ra,44(sp)
    7358:	26100001 	addiu	s0,s0,1
    735c:	1612ffef 	bne	s0,s2,731c <func_8003F8EC+0x30>
    7360:	26310002 	addiu	s1,s1,2
    7364:	8fbf002c 	lw	ra,44(sp)
    7368:	8fb00018 	lw	s0,24(sp)
    736c:	8fb1001c 	lw	s1,28(sp)
    7370:	8fb20020 	lw	s2,32(sp)
    7374:	8fb30024 	lw	s3,36(sp)
    7378:	8fb40028 	lw	s4,40(sp)
    737c:	03e00008 	jr	ra
    7380:	27bd0030 	addiu	sp,sp,48

00007384 <func_8003F984>:
    7384:	27bdff98 	addiu	sp,sp,-104
    7388:	afb50034 	sw	s5,52(sp)
    738c:	0080a825 	move	s5,a0
    7390:	afbf0044 	sw	ra,68(sp)
    7394:	afb40030 	sw	s4,48(sp)
    7398:	00a0a025 	move	s4,a1
    739c:	afbe0040 	sw	s8,64(sp)
    73a0:	afb7003c 	sw	s7,60(sp)
    73a4:	afb60038 	sw	s6,56(sp)
    73a8:	afb3002c 	sw	s3,44(sp)
    73ac:	afb20028 	sw	s2,40(sp)
    73b0:	afb10024 	sw	s1,36(sp)
    73b4:	afb00020 	sw	s0,32(sp)
    73b8:	0c000000 	jal	0 <func_80038600>
    73bc:	24a413f8 	addiu	a0,a1,5112
    73c0:	00008025 	move	s0,zero
    73c4:	2691000c 	addiu	s1,s4,12
    73c8:	0c000000 	jal	0 <func_80038600>
    73cc:	02202025 	move	a0,s1
    73d0:	26100064 	addiu	s0,s0,100
    73d4:	2a011388 	slti	at,s0,5000
    73d8:	1420fffb 	bnez	at,73c8 <func_8003F984+0x44>
    73dc:	26310064 	addiu	s1,s1,100
    73e0:	3c1e0000 	lui	s8,0x0
    73e4:	3c170000 	lui	s7,0x0
    73e8:	3c160000 	lui	s6,0x0
    73ec:	26d60000 	addiu	s6,s6,0
    73f0:	26f70000 	addiu	s7,s7,0
    73f4:	27de0000 	addiu	s8,s8,0
    73f8:	00009025 	move	s2,zero
    73fc:	02808825 	move	s1,s4
    7400:	02808025 	move	s0,s4
    7404:	960e138c 	lhu	t6,5004(s0)
    7408:	02c02025 	move	a0,s6
    740c:	31cf0002 	andi	t7,t6,0x2
    7410:	51e00010 	beqzl	t7,7454 <func_8003F984+0xd0>
    7414:	8e220004 	lw	v0,4(s1)
    7418:	0c000000 	jal	0 <func_80038600>
    741c:	26330004 	addiu	s3,s1,4
    7420:	02e02025 	move	a0,s7
    7424:	0c000000 	jal	0 <func_80038600>
    7428:	02402825 	move	a1,s2
    742c:	0c000000 	jal	0 <func_80038600>
    7430:	03c02025 	move	a0,s8
    7434:	a600138c 	sh	zero,5004(s0)
    7438:	02a02025 	move	a0,s5
    743c:	0c000000 	jal	0 <func_80038600>
    7440:	02602825 	move	a1,s3
    7444:	92980000 	lbu	t8,0(s4)
    7448:	37190001 	ori	t9,t8,0x1
    744c:	a2990000 	sb	t9,0(s4)
    7450:	8e220004 	lw	v0,4(s1)
    7454:	5040001d 	beqzl	v0,74cc <func_8003F984+0x148>
    7458:	26520001 	addiu	s2,s2,1
    745c:	8c480130 	lw	t0,304(v0)
    7460:	3c040000 	lui	a0,0x0
    7464:	24840000 	addiu	a0,a0,0
    7468:	55000018 	bnezl	t0,74cc <func_8003F984+0x148>
    746c:	26520001 	addiu	s2,s2,1
    7470:	0c000000 	jal	0 <func_80038600>
    7474:	26b307c0 	addiu	s3,s5,1984
    7478:	3c040000 	lui	a0,0x0
    747c:	24840000 	addiu	a0,a0,0
    7480:	0c000000 	jal	0 <func_80038600>
    7484:	02402825 	move	a1,s2
    7488:	3c040000 	lui	a0,0x0
    748c:	0c000000 	jal	0 <func_80038600>
    7490:	24840000 	addiu	a0,a0,0
    7494:	02602025 	move	a0,s3
    7498:	0c000000 	jal	0 <func_80038600>
    749c:	02402825 	move	a1,s2
    74a0:	10400024 	beqz	v0,7534 <func_8003F984+0x1b0>
    74a4:	2409ffff 	li	t1,-1
    74a8:	ac49014c 	sw	t1,332(v0)
    74ac:	a600138c 	sh	zero,5004(s0)
    74b0:	02a02025 	move	a0,s5
    74b4:	0c000000 	jal	0 <func_80038600>
    74b8:	26250004 	addiu	a1,s1,4
    74bc:	928a0000 	lbu	t2,0(s4)
    74c0:	354b0001 	ori	t3,t2,0x1
    74c4:	a28b0000 	sb	t3,0(s4)
    74c8:	26520001 	addiu	s2,s2,1
    74cc:	2a410032 	slti	at,s2,50
    74d0:	26310064 	addiu	s1,s1,100
    74d4:	1420ffcb 	bnez	at,7404 <func_8003F984+0x80>
    74d8:	26100002 	addiu	s0,s0,2
    74dc:	afa00060 	sw	zero,96(sp)
    74e0:	afa0005c 	sw	zero,92(sp)
    74e4:	00009025 	move	s2,zero
    74e8:	02808025 	move	s0,s4
    74ec:	24160032 	li	s6,50
    74f0:	27b3005c 	addiu	s3,sp,92
    74f4:	27b10060 	addiu	s1,sp,96
    74f8:	960c138c 	lhu	t4,5004(s0)
    74fc:	02a02025 	move	a0,s5
    7500:	02802825 	move	a1,s4
    7504:	318d0001 	andi	t5,t4,0x1
    7508:	11a00004 	beqz	t5,751c <func_8003F984+0x198>
    750c:	02403025 	move	a2,s2
    7510:	02203825 	move	a3,s1
    7514:	0c000000 	jal	0 <func_80038600>
    7518:	afb30010 	sw	s3,16(sp)
    751c:	26520001 	addiu	s2,s2,1
    7520:	1656fff5 	bne	s2,s6,74f8 <func_8003F984+0x174>
    7524:	26100002 	addiu	s0,s0,2
    7528:	928e0000 	lbu	t6,0(s4)
    752c:	31cffffe 	andi	t7,t6,0xfffe
    7530:	a28f0000 	sb	t7,0(s4)
    7534:	8fbf0044 	lw	ra,68(sp)
    7538:	8fb00020 	lw	s0,32(sp)
    753c:	8fb10024 	lw	s1,36(sp)
    7540:	8fb20028 	lw	s2,40(sp)
    7544:	8fb3002c 	lw	s3,44(sp)
    7548:	8fb40030 	lw	s4,48(sp)
    754c:	8fb50034 	lw	s5,52(sp)
    7550:	8fb60038 	lw	s6,56(sp)
    7554:	8fb7003c 	lw	s7,60(sp)
    7558:	8fbe0040 	lw	s8,64(sp)
    755c:	03e00008 	jr	ra
    7560:	27bd0068 	addiu	sp,sp,104

00007564 <func_8003FB64>:
    7564:	27bdffd0 	addiu	sp,sp,-48
    7568:	afb50028 	sw	s5,40(sp)
    756c:	afb40024 	sw	s4,36(sp)
    7570:	afb30020 	sw	s3,32(sp)
    7574:	afb2001c 	sw	s2,28(sp)
    7578:	afb10018 	sw	s1,24(sp)
    757c:	afb00014 	sw	s0,20(sp)
    7580:	00a09025 	move	s2,a1
    7584:	00809825 	move	s3,a0
    7588:	afbf002c 	sw	ra,44(sp)
    758c:	00008025 	move	s0,zero
    7590:	00a08825 	move	s1,a1
    7594:	24140064 	li	s4,100
    7598:	24150032 	li	s5,50
    759c:	962e138c 	lhu	t6,5004(s1)
    75a0:	31cf0001 	andi	t7,t6,0x1
    75a4:	51e00008 	beqzl	t7,75c8 <func_8003FB64+0x64>
    75a8:	26100001 	addiu	s0,s0,1
    75ac:	02140019 	multu	s0,s4
    75b0:	02602025 	move	a0,s3
    75b4:	0000c012 	mflo	t8
    75b8:	02582821 	addu	a1,s2,t8
    75bc:	0c000000 	jal	0 <func_80038600>
    75c0:	24a50004 	addiu	a1,a1,4
    75c4:	26100001 	addiu	s0,s0,1
    75c8:	1615fff4 	bne	s0,s5,759c <func_8003FB64+0x38>
    75cc:	26310002 	addiu	s1,s1,2
    75d0:	8fbf002c 	lw	ra,44(sp)
    75d4:	8fb00014 	lw	s0,20(sp)
    75d8:	8fb10018 	lw	s1,24(sp)
    75dc:	8fb2001c 	lw	s2,28(sp)
    75e0:	8fb30020 	lw	s3,32(sp)
    75e4:	8fb40024 	lw	s4,36(sp)
    75e8:	8fb50028 	lw	s5,40(sp)
    75ec:	03e00008 	jr	ra
    75f0:	27bd0030 	addiu	sp,sp,48

000075f4 <func_8003FBF4>:
    75f4:	27bdff80 	addiu	sp,sp,-128
    75f8:	afbf0054 	sw	ra,84(sp)
    75fc:	afb70050 	sw	s7,80(sp)
    7600:	afb6004c 	sw	s6,76(sp)
    7604:	afb50048 	sw	s5,72(sp)
    7608:	afb40044 	sw	s4,68(sp)
    760c:	afb30040 	sw	s3,64(sp)
    7610:	afb2003c 	sw	s2,60(sp)
    7614:	afb10038 	sw	s1,56(sp)
    7618:	afb00034 	sw	s0,52(sp)
    761c:	f7b80028 	sdc1	$f24,40(sp)
    7620:	f7b60020 	sdc1	$f22,32(sp)
    7624:	f7b40018 	sdc1	$f20,24(sp)
    7628:	8c8e002c 	lw	t6,44(a0)
    762c:	3413ffff 	li	s3,0xffff
    7630:	00808825 	move	s1,a0
    7634:	95c20000 	lhu	v0,0(t6)
    7638:	00a0b825 	move	s7,a1
    763c:	c4940010 	lwc1	$f20,16(a0)
    7640:	16620003 	bne	s3,v0,7650 <func_8003FBF4+0x5c>
    7644:	00027880 	sll	t7,v0,0x2
    7648:	10000056 	b	77a4 <func_8003FBF4+0x1b0>
    764c:	4600a006 	mov.s	$f0,$f20
    7650:	8e280028 	lw	t0,40(s1)
    7654:	96250008 	lhu	a1,8(s1)
    7658:	3c010000 	lui	at,0x0
    765c:	8d0413f8 	lw	a0,5112(t0)
    7660:	30a50007 	andi	a1,a1,0x7
    7664:	4480c000 	mtc1	zero,$f24
    7668:	00052b40 	sll	a1,a1,0xd
    766c:	c4360000 	lwc1	$f22,0(at)
    7670:	24160001 	li	s6,1
    7674:	27b50070 	addiu	s5,sp,112
    7678:	8d1413f0 	lw	s4,5104(t0)
    767c:	008f8021 	addu	s0,a0,t7
    7680:	86020000 	lh	v0,0(s0)
    7684:	32ea0006 	andi	t2,s7,0x6
    7688:	00029100 	sll	s2,v0,0x4
    768c:	02921821 	addu	v1,s4,s2
    7690:	94780002 	lhu	t8,2(v1)
    7694:	0305c824 	and	t9,t8,a1
    7698:	13200006 	beqz	t9,76b4 <func_8003FBF4+0xc0>
    769c:	00000000 	nop
    76a0:	96020002 	lhu	v0,2(s0)
    76a4:	1262003e 	beq	s3,v0,77a0 <func_8003FBF4+0x1ac>
    76a8:	00024880 	sll	t1,v0,0x2
    76ac:	1000fff4 	b	7680 <func_8003FBF4+0x8c>
    76b0:	00898021 	addu	s0,a0,t1
    76b4:	51400014 	beqzl	t2,7708 <func_8003FBF4+0x114>
    76b8:	8e220014 	lw	v0,20(s1)
    76bc:	8e2b0020 	lw	t3,32(s1)
    76c0:	316c0010 	andi	t4,t3,0x10
    76c4:	51800010 	beqzl	t4,7708 <func_8003FBF4+0x114>
    76c8:	8e220014 	lw	v0,20(s1)
    76cc:	846d000a 	lh	t5,10(v1)
    76d0:	448d2000 	mtc1	t5,$f4
    76d4:	00000000 	nop
    76d8:	468021a0 	cvt.s.w	$f6,$f4
    76dc:	46163202 	mul.s	$f8,$f6,$f22
    76e0:	4618403c 	c.lt.s	$f8,$f24
    76e4:	00000000 	nop
    76e8:	45020007 	bc1fl	7708 <func_8003FBF4+0x114>
    76ec:	8e220014 	lw	v0,20(s1)
    76f0:	96020002 	lhu	v0,2(s0)
    76f4:	1262002a 	beq	s3,v0,77a0 <func_8003FBF4+0x1ac>
    76f8:	00027080 	sll	t6,v0,0x2
    76fc:	1000ffe0 	b	7680 <func_8003FBF4+0x8c>
    7700:	008e8021 	addu	s0,a0,t6
    7704:	8e220014 	lw	v0,20(s1)
    7708:	8d0513f4 	lw	a1,5108(t0)
    770c:	02542021 	addu	a0,s2,s4
    7710:	8c460000 	lw	a2,0(v0)
    7714:	8c470008 	lw	a3,8(v0)
    7718:	afb50010 	sw	s5,16(sp)
    771c:	c62a0024 	lwc1	$f10,36(s1)
    7720:	0c000000 	jal	0 <func_80038600>
    7724:	e7aa0014 	swc1	$f10,20(sp)
    7728:	54560013 	bnel	v0,s6,7778 <func_8003FBF4+0x184>
    772c:	96020002 	lhu	v0,2(s0)
    7730:	8e2f0014 	lw	t7,20(s1)
    7734:	c7b00070 	lwc1	$f16,112(sp)
    7738:	c5f20004 	lwc1	$f18,4(t7)
    773c:	4612803c 	c.lt.s	$f16,$f18
    7740:	00000000 	nop
    7744:	4502000c 	bc1fl	7778 <func_8003FBF4+0x184>
    7748:	96020002 	lhu	v0,2(s0)
    774c:	4610a03c 	c.lt.s	$f20,$f16
    7750:	00000000 	nop
    7754:	45020008 	bc1fl	7778 <func_8003FBF4+0x184>
    7758:	96020002 	lhu	v0,2(s0)
    775c:	8e380028 	lw	t8,40(s1)
    7760:	8e2a000c 	lw	t2,12(s1)
    7764:	46008506 	mov.s	$f20,$f16
    7768:	8f1913f0 	lw	t9,5104(t8)
    776c:	03324821 	addu	t1,t9,s2
    7770:	ad490000 	sw	t1,0(t2)
    7774:	96020002 	lhu	v0,2(s0)
    7778:	5262000a 	beql	s3,v0,77a4 <func_8003FBF4+0x1b0>
    777c:	4600a006 	mov.s	$f0,$f20
    7780:	8e280028 	lw	t0,40(s1)
    7784:	96250008 	lhu	a1,8(s1)
    7788:	00025880 	sll	t3,v0,0x2
    778c:	8d0413f8 	lw	a0,5112(t0)
    7790:	30a50007 	andi	a1,a1,0x7
    7794:	00052b40 	sll	a1,a1,0xd
    7798:	1000ffb9 	b	7680 <func_8003FBF4+0x8c>
    779c:	008b8021 	addu	s0,a0,t3
    77a0:	4600a006 	mov.s	$f0,$f20
    77a4:	8fbf0054 	lw	ra,84(sp)
    77a8:	d7b40018 	ldc1	$f20,24(sp)
    77ac:	d7b60020 	ldc1	$f22,32(sp)
    77b0:	d7b80028 	ldc1	$f24,40(sp)
    77b4:	8fb00034 	lw	s0,52(sp)
    77b8:	8fb10038 	lw	s1,56(sp)
    77bc:	8fb2003c 	lw	s2,60(sp)
    77c0:	8fb30040 	lw	s3,64(sp)
    77c4:	8fb40044 	lw	s4,68(sp)
    77c8:	8fb50048 	lw	s5,72(sp)
    77cc:	8fb6004c 	lw	s6,76(sp)
    77d0:	8fb70050 	lw	s7,80(sp)
    77d4:	03e00008 	jr	ra
    77d8:	27bd0080 	addiu	sp,sp,128

000077dc <func_8003FDDC>:
    77dc:	27bdfee0 	addiu	sp,sp,-288
    77e0:	afbf004c 	sw	ra,76(sp)
    77e4:	afb30048 	sw	s3,72(sp)
    77e8:	afb20044 	sw	s2,68(sp)
    77ec:	afb10040 	sw	s1,64(sp)
    77f0:	afb0003c 	sw	s0,60(sp)
    77f4:	f7b40030 	sdc1	$f20,48(sp)
    77f8:	8c8f0018 	lw	t7,24(a0)
    77fc:	3c01c6fa 	lui	at,0xc6fa
    7800:	240e0032 	li	t6,50
    7804:	adee0000 	sw	t6,0(t7)
    7808:	4481a000 	mtc1	at,$f20
    780c:	00808025 	move	s0,a0
    7810:	8c860004 	lw	a2,4(a0)
    7814:	00009025 	move	s2,zero
    7818:	00009825 	move	s3,zero
    781c:	00d3c021 	addu	t8,a2,s3
    7820:	971913dc 	lhu	t9,5084(t8)
    7824:	00128880 	sll	s1,s2,0x2
    7828:	02328823 	subu	s1,s1,s2
    782c:	332c0001 	andi	t4,t9,0x1
    7830:	1180005c 	beqz	t4,79a4 <func_8003FDDC+0x1c8>
    7834:	001188c0 	sll	s1,s1,0x3
    7838:	02328821 	addu	s1,s1,s2
    783c:	00118880 	sll	s1,s1,0x2
    7840:	00d11821 	addu	v1,a2,s1
    7844:	8c6e0054 	lw	t6,84(v1)
    7848:	8e0d001c 	lw	t5,28(s0)
    784c:	51ae0056 	beql	t5,t6,79a8 <func_8003FDDC+0x1cc>
    7850:	26520001 	addiu	s2,s2,1
    7854:	8e020014 	lw	v0,20(s0)
    7858:	c46600b0 	lwc1	$f6,176(v1)
    785c:	246400a8 	addiu	a0,v1,168
    7860:	c4440004 	lwc1	$f4,4(v0)
    7864:	4606203c 	c.lt.s	$f4,$f6
    7868:	00000000 	nop
    786c:	4503004e 	bc1tl	79a8 <func_8003FDDC+0x1cc>
    7870:	26520001 	addiu	s2,s2,1
    7874:	8c450000 	lw	a1,0(v0)
    7878:	0c000000 	jal	0 <func_80038600>
    787c:	8c460008 	lw	a2,8(v0)
    7880:	54400004 	bnezl	v0,7894 <func_8003FDDC+0xb8>
    7884:	8e060004 	lw	a2,4(s0)
    7888:	10000046 	b	79a4 <func_8003FDDC+0x1c8>
    788c:	8e060004 	lw	a2,4(s0)
    7890:	8e060004 	lw	a2,4(s0)
    7894:	8e180020 	lw	t8,32(s0)
    7898:	02002025 	move	a0,s0
    789c:	24cf0050 	addiu	t7,a2,80
    78a0:	33190004 	andi	t9,t8,0x4
    78a4:	1320000f 	beqz	t9,78e4 <func_8003FDDC+0x108>
    78a8:	ae0f0028 	sw	t7,40(s0)
    78ac:	00d16021 	addu	t4,a2,s1
    78b0:	258d0062 	addiu	t5,t4,98
    78b4:	ae0d002c 	sw	t5,44(s0)
    78b8:	0c000000 	jal	0 <func_80038600>
    78bc:	24050001 	li	a1,1
    78c0:	c6080010 	lwc1	$f8,16(s0)
    78c4:	4600403c 	c.lt.s	$f8,$f0
    78c8:	00000000 	nop
    78cc:	45020006 	bc1fl	78e8 <func_8003FDDC+0x10c>
    78d0:	8e020020 	lw	v0,32(s0)
    78d4:	8e0e0018 	lw	t6,24(s0)
    78d8:	e6000010 	swc1	$f0,16(s0)
    78dc:	46000506 	mov.s	$f20,$f0
    78e0:	add20000 	sw	s2,0(t6)
    78e4:	8e020020 	lw	v0,32(s0)
    78e8:	304f0002 	andi	t7,v0,0x2
    78ec:	55e00009 	bnezl	t7,7914 <func_8003FDDC+0x138>
    78f0:	8e0d0004 	lw	t5,4(s0)
    78f4:	8e18000c 	lw	t8,12(s0)
    78f8:	304c0008 	andi	t4,v0,0x8
    78fc:	8f190000 	lw	t9,0(t8)
    7900:	57200014 	bnezl	t9,7954 <func_8003FDDC+0x178>
    7904:	8e190020 	lw	t9,32(s0)
    7908:	51800012 	beqzl	t4,7954 <func_8003FDDC+0x178>
    790c:	8e190020 	lw	t9,32(s0)
    7910:	8e0d0004 	lw	t5,4(s0)
    7914:	02002025 	move	a0,s0
    7918:	24050002 	li	a1,2
    791c:	01b17021 	addu	t6,t5,s1
    7920:	25cf0060 	addiu	t7,t6,96
    7924:	0c000000 	jal	0 <func_80038600>
    7928:	ae0f002c 	sw	t7,44(s0)
    792c:	c60a0010 	lwc1	$f10,16(s0)
    7930:	4600503c 	c.lt.s	$f10,$f0
    7934:	00000000 	nop
    7938:	45020006 	bc1fl	7954 <func_8003FDDC+0x178>
    793c:	8e190020 	lw	t9,32(s0)
    7940:	8e180018 	lw	t8,24(s0)
    7944:	e6000010 	swc1	$f0,16(s0)
    7948:	46000506 	mov.s	$f20,$f0
    794c:	af120000 	sw	s2,0(t8)
    7950:	8e190020 	lw	t9,32(s0)
    7954:	332c0001 	andi	t4,t9,0x1
    7958:	51800012 	beqzl	t4,79a4 <func_8003FDDC+0x1c8>
    795c:	8e060004 	lw	a2,4(s0)
    7960:	8e0d0004 	lw	t5,4(s0)
    7964:	02002025 	move	a0,s0
    7968:	24050004 	li	a1,4
    796c:	01b17021 	addu	t6,t5,s1
    7970:	25cf005e 	addiu	t7,t6,94
    7974:	0c000000 	jal	0 <func_80038600>
    7978:	ae0f002c 	sw	t7,44(s0)
    797c:	c6100010 	lwc1	$f16,16(s0)
    7980:	4600803c 	c.lt.s	$f16,$f0
    7984:	00000000 	nop
    7988:	45020006 	bc1fl	79a4 <func_8003FDDC+0x1c8>
    798c:	8e060004 	lw	a2,4(s0)
    7990:	8e180018 	lw	t8,24(s0)
    7994:	e6000010 	swc1	$f0,16(s0)
    7998:	46000506 	mov.s	$f20,$f0
    799c:	af120000 	sw	s2,0(t8)
    79a0:	8e060004 	lw	a2,4(s0)
    79a4:	26520001 	addiu	s2,s2,1
    79a8:	24010032 	li	at,50
    79ac:	1641ff9b 	bne	s2,at,781c <func_8003FDDC+0x40>
    79b0:	26730002 	addiu	s3,s3,2
    79b4:	8e190018 	lw	t9,24(s0)
    79b8:	00c02025 	move	a0,a2
    79bc:	0c000000 	jal	0 <func_80038600>
    79c0:	8f250000 	lw	a1,0(t9)
    79c4:	3c01c6fa 	lui	at,0xc6fa
    79c8:	44819000 	mtc1	at,$f18
    79cc:	00000000 	nop
    79d0:	4612a032 	c.eq.s	$f20,$f18
    79d4:	00000000 	nop
    79d8:	450300a2 	bc1tl	7c64 <func_8003FDDC+0x488>
    79dc:	8fbf004c 	lw	ra,76(sp)
    79e0:	504000a0 	beqzl	v0,7c64 <func_8003FDDC+0x488>
    79e4:	8fbf004c 	lw	ra,76(sp)
    79e8:	8e030000 	lw	v1,0(s0)
    79ec:	3c010001 	lui	at,0x1
    79f0:	1060009b 	beqz	v1,7c60 <func_8003FDDC+0x484>
    79f4:	00612021 	addu	a0,v1,at
    79f8:	94820934 	lhu	v0,2356(a0)
    79fc:	0002102b 	sltu	v0,zero,v0
    7a00:	14400003 	bnez	v0,7a10 <func_8003FDDC+0x234>
    7a04:	00000000 	nop
    7a08:	94820936 	lhu	v0,2358(a0)
    7a0c:	0002102b 	sltu	v0,zero,v0
    7a10:	54400094 	bnezl	v0,7c64 <func_8003FDDC+0x488>
    7a14:	8fbf004c 	lw	ra,76(sp)
    7a18:	8e0c0018 	lw	t4,24(s0)
    7a1c:	8e0d0004 	lw	t5,4(s0)
    7a20:	8d8b0000 	lw	t3,0(t4)
    7a24:	000b7040 	sll	t6,t3,0x1
    7a28:	01ae7821 	addu	t7,t5,t6
    7a2c:	95f813dc 	lhu	t8,5084(t7)
    7a30:	000b6080 	sll	t4,t3,0x2
    7a34:	018b6023 	subu	t4,t4,t3
    7a38:	33190002 	andi	t9,t8,0x2
    7a3c:	13200088 	beqz	t9,7c60 <func_8003FDDC+0x484>
    7a40:	000c60c0 	sll	t4,t4,0x3
    7a44:	8e080028 	lw	t0,40(s0)
    7a48:	018b6021 	addu	t4,t4,t3
    7a4c:	000c6080 	sll	t4,t4,0x2
    7a50:	010c1821 	addu	v1,t0,t4
    7a54:	946d000c 	lhu	t5,12(v1)
    7a58:	8d0f13f0 	lw	t7,5104(t0)
    7a5c:	24620038 	addiu	v0,v1,56
    7a60:	000d7100 	sll	t6,t5,0x4
    7a64:	8e18000c 	lw	t8,12(s0)
    7a68:	8c6c0008 	lw	t4,8(v1)
    7a6c:	01cf4821 	addu	t1,t6,t7
    7a70:	844f000c 	lh	t7,12(v0)
    7a74:	8f190000 	lw	t9,0(t8)
    7a78:	8d8d0018 	lw	t5,24(t4)
    7a7c:	8c450000 	lw	a1,0(v0)
    7a80:	8c460004 	lw	a2,4(v0)
    7a84:	8c470008 	lw	a3,8(v0)
    7a88:	afaf0010 	sw	t7,16(sp)
    7a8c:	8458000e 	lh	t8,14(v0)
    7a90:	03295023 	subu	t2,t9,t1
    7a94:	000a5103 	sra	t2,t2,0x4
    7a98:	afb80014 	sw	t8,20(sp)
    7a9c:	84590010 	lh	t9,16(v0)
    7aa0:	000a7100 	sll	t6,t2,0x4
    7aa4:	27a4008c 	addiu	a0,sp,140
    7aa8:	afb90018 	sw	t9,24(sp)
    7aac:	c4440014 	lwc1	$f4,20(v0)
    7ab0:	01ae9821 	addu	s3,t5,t6
    7ab4:	e7a4001c 	swc1	$f4,28(sp)
    7ab8:	c4460018 	lwc1	$f6,24(v0)
    7abc:	e7a60020 	swc1	$f6,32(sp)
    7ac0:	c448001c 	lwc1	$f8,28(v0)
    7ac4:	0c000000 	jal	0 <func_80038600>
    7ac8:	e7a80024 	swc1	$f8,36(sp)
    7acc:	8e0d0018 	lw	t5,24(s0)
    7ad0:	8e0c0028 	lw	t4,40(s0)
    7ad4:	02609025 	move	s2,s3
    7ad8:	8dae0000 	lw	t6,0(t5)
    7adc:	27b30074 	addiu	s3,sp,116
    7ae0:	27b100e0 	addiu	s1,sp,224
    7ae4:	000e7880 	sll	t7,t6,0x2
    7ae8:	01ee7823 	subu	t7,t7,t6
    7aec:	000f78c0 	sll	t7,t7,0x3
    7af0:	01ee7821 	addu	t7,t7,t6
    7af4:	000f7880 	sll	t7,t7,0x2
    7af8:	018fc021 	addu	t8,t4,t7
    7afc:	8f190008 	lw	t9,8(t8)
    7b00:	8f220010 	lw	v0,16(t9)
    7b04:	afa20084 	sw	v0,132(sp)
    7b08:	964d0002 	lhu	t5,2(s2)
    7b0c:	8fa20084 	lw	v0,132(sp)
    7b10:	02602025 	move	a0,s3
    7b14:	31ae1fff 	andi	t6,t5,0x1fff
    7b18:	000e6080 	sll	t4,t6,0x2
    7b1c:	018e6023 	subu	t4,t4,t6
    7b20:	000c6040 	sll	t4,t4,0x1
    7b24:	0c000000 	jal	0 <func_80038600>
    7b28:	01822821 	addu	a1,t4,v0
    7b2c:	27a4008c 	addiu	a0,sp,140
    7b30:	02602825 	move	a1,s3
    7b34:	0c000000 	jal	0 <func_80038600>
    7b38:	02203025 	move	a2,s1
    7b3c:	2631000c 	addiu	s1,s1,12
    7b40:	27af0104 	addiu	t7,sp,260
    7b44:	162ffff0 	bne	s1,t7,7b08 <func_8003FDDC+0x32c>
    7b48:	26520002 	addiu	s2,s2,2
    7b4c:	27b100e0 	addiu	s1,sp,224
    7b50:	27b200ec 	addiu	s2,sp,236
    7b54:	27b300f8 	addiu	s3,sp,248
    7b58:	02603025 	move	a2,s3
    7b5c:	02402825 	move	a1,s2
    7b60:	02202025 	move	a0,s1
    7b64:	0c000000 	jal	0 <func_80038600>
    7b68:	27a700d4 	addiu	a3,sp,212
    7b6c:	0c000000 	jal	0 <func_80038600>
    7b70:	27a400d4 	addiu	a0,sp,212
    7b74:	3c010000 	lui	at,0x0
    7b78:	c42a0000 	lwc1	$f10,0(at)
    7b7c:	46000306 	mov.s	$f12,$f0
    7b80:	46000005 	abs.s	$f0,$f0
    7b84:	3c013f80 	lui	at,0x3f80
    7b88:	460a003c 	c.lt.s	$f0,$f10
    7b8c:	00000000 	nop
    7b90:	45030034 	bc1tl	7c64 <func_8003FDDC+0x488>
    7b94:	8fbf004c 	lw	ra,76(sp)
    7b98:	44818000 	mtc1	at,$f16
    7b9c:	c7b200d4 	lwc1	$f18,212(sp)
    7ba0:	c7a600d8 	lwc1	$f6,216(sp)
    7ba4:	460c8003 	div.s	$f0,$f16,$f12
    7ba8:	c7aa00dc 	lwc1	$f10,220(sp)
    7bac:	27b80070 	addiu	t8,sp,112
    7bb0:	02202025 	move	a0,s1
    7bb4:	02402825 	move	a1,s2
    7bb8:	02603025 	move	a2,s3
    7bbc:	46009102 	mul.s	$f4,$f18,$f0
    7bc0:	c7b200e0 	lwc1	$f18,224(sp)
    7bc4:	46003202 	mul.s	$f8,$f6,$f0
    7bc8:	00000000 	nop
    7bcc:	46005402 	mul.s	$f16,$f10,$f0
    7bd0:	c7aa00e4 	lwc1	$f10,228(sp)
    7bd4:	e7a400d4 	swc1	$f4,212(sp)
    7bd8:	46122182 	mul.s	$f6,$f4,$f18
    7bdc:	e7a800d8 	swc1	$f8,216(sp)
    7be0:	e7a80010 	swc1	$f8,16(sp)
    7be4:	460a4482 	mul.s	$f18,$f8,$f10
    7be8:	e7b000dc 	swc1	$f16,220(sp)
    7bec:	e7b00014 	swc1	$f16,20(sp)
    7bf0:	44072000 	mfc1	a3,$f4
    7bf4:	46123280 	add.s	$f10,$f6,$f18
    7bf8:	c7a600e8 	lwc1	$f6,232(sp)
    7bfc:	46103482 	mul.s	$f18,$f6,$f16
    7c00:	460a9080 	add.s	$f2,$f18,$f10
    7c04:	46001087 	neg.s	$f2,$f2
    7c08:	e7a20018 	swc1	$f2,24(sp)
    7c0c:	8e020014 	lw	v0,20(s0)
    7c10:	c4460008 	lwc1	$f6,8(v0)
    7c14:	e7a6001c 	swc1	$f6,28(sp)
    7c18:	c4520000 	lwc1	$f18,0(v0)
    7c1c:	afb80024 	sw	t8,36(sp)
    7c20:	e7b20020 	swc1	$f18,32(sp)
    7c24:	c60a0024 	lwc1	$f10,36(s0)
    7c28:	0c000000 	jal	0 <func_80038600>
    7c2c:	e7aa0028 	swc1	$f10,40(sp)
    7c30:	5040000c 	beqzl	v0,7c64 <func_8003FDDC+0x488>
    7c34:	8fbf004c 	lw	ra,76(sp)
    7c38:	c7a20070 	lwc1	$f2,112(sp)
    7c3c:	3c013f80 	lui	at,0x3f80
    7c40:	44812000 	mtc1	at,$f4
    7c44:	46141001 	sub.s	$f0,$f2,$f20
    7c48:	46000005 	abs.s	$f0,$f0
    7c4c:	4604003c 	c.lt.s	$f0,$f4
    7c50:	00000000 	nop
    7c54:	45020003 	bc1fl	7c64 <func_8003FDDC+0x488>
    7c58:	8fbf004c 	lw	ra,76(sp)
    7c5c:	46001506 	mov.s	$f20,$f2
    7c60:	8fbf004c 	lw	ra,76(sp)
    7c64:	4600a006 	mov.s	$f0,$f20
    7c68:	d7b40030 	ldc1	$f20,48(sp)
    7c6c:	8fb0003c 	lw	s0,60(sp)
    7c70:	8fb10040 	lw	s1,64(sp)
    7c74:	8fb20044 	lw	s2,68(sp)
    7c78:	8fb30048 	lw	s3,72(sp)
    7c7c:	03e00008 	jr	ra
    7c80:	27bd0120 	addiu	sp,sp,288

00007c84 <func_80040284>:
    7c84:	27bdff28 	addiu	sp,sp,-216
    7c88:	afbf0064 	sw	ra,100(sp)
    7c8c:	afb50060 	sw	s5,96(sp)
    7c90:	afb4005c 	sw	s4,92(sp)
    7c94:	afb30058 	sw	s3,88(sp)
    7c98:	afb20054 	sw	s2,84(sp)
    7c9c:	afb10050 	sw	s1,80(sp)
    7ca0:	afb0004c 	sw	s0,76(sp)
    7ca4:	f7b80040 	sdc1	$f24,64(sp)
    7ca8:	f7b60038 	sdc1	$f22,56(sp)
    7cac:	f7b40030 	sdc1	$f20,48(sp)
    7cb0:	afa400d8 	sw	a0,216(sp)
    7cb4:	afa500dc 	sw	a1,220(sp)
    7cb8:	afa700e4 	sw	a3,228(sp)
    7cbc:	afa000cc 	sw	zero,204(sp)
    7cc0:	94ef0000 	lhu	t7,0(a3)
    7cc4:	3413ffff 	li	s3,0xffff
    7cc8:	00c09025 	move	s2,a2
    7ccc:	166f0003 	bne	s3,t7,7cdc <func_80040284+0x58>
    7cd0:	8fb800f8 	lw	t8,248(sp)
    7cd4:	100001a8 	b	8378 <func_80040284+0x6f4>
    7cd8:	00001025 	move	v0,zero
    7cdc:	8f080000 	lw	t0,0(t8)
    7ce0:	27b500ac 	addiu	s5,sp,172
    7ce4:	24140006 	li	s4,6
    7ce8:	aea80000 	sw	t0,0(s5)
    7cec:	8f190004 	lw	t9,4(t8)
    7cf0:	aeb90004 	sw	t9,4(s5)
    7cf4:	8f080008 	lw	t0,8(t8)
    7cf8:	aea80008 	sw	t0,8(s5)
    7cfc:	8faa00e4 	lw	t2,228(sp)
    7d00:	8e4913f8 	lw	t1,5112(s2)
    7d04:	c7b600fc 	lwc1	$f22,252(sp)
    7d08:	954b0000 	lhu	t3,0(t2)
    7d0c:	000b6080 	sll	t4,t3,0x2
    7d10:	012c8821 	addu	s1,t1,t4
    7d14:	86220000 	lh	v0,0(s1)
    7d18:	8e4d13f0 	lw	t5,5104(s2)
    7d1c:	27a500c0 	addiu	a1,sp,192
    7d20:	00027100 	sll	t6,v0,0x4
    7d24:	01ae8021 	addu	s0,t5,t6
    7d28:	02002025 	move	a0,s0
    7d2c:	27a600bc 	addiu	a2,sp,188
    7d30:	0c000000 	jal	0 <func_80038600>
    7d34:	27a700b8 	addiu	a3,sp,184
    7d38:	c7ac00c0 	lwc1	$f12,192(sp)
    7d3c:	c7ae00b8 	lwc1	$f14,184(sp)
    7d40:	3c010000 	lui	at,0x0
    7d44:	460c6102 	mul.s	$f4,$f12,$f12
    7d48:	c4280000 	lwc1	$f8,0(at)
    7d4c:	3c040000 	lui	a0,0x0
    7d50:	460e7182 	mul.s	$f6,$f14,$f14
    7d54:	3c050000 	lui	a1,0x0
    7d58:	24a50000 	addiu	a1,a1,0
    7d5c:	24840000 	addiu	a0,a0,0
    7d60:	46062000 	add.s	$f0,$f4,$f6
    7d64:	46000504 	sqrt.s	$f20,$f0
    7d68:	4600a005 	abs.s	$f0,$f20
    7d6c:	4608003c 	c.lt.s	$f0,$f8
    7d70:	00000000 	nop
    7d74:	45020004 	bc1fl	7d88 <func_80040284+0x104>
    7d78:	860f000e 	lh	t7,14(s0)
    7d7c:	0c000000 	jal	0 <func_80038600>
    7d80:	24061cd6 	li	a2,7382
    7d84:	860f000e 	lh	t7,14(s0)
    7d88:	afb50010 	sw	s5,16(sp)
    7d8c:	c7ac00c0 	lwc1	$f12,192(sp)
    7d90:	448f5000 	mtc1	t7,$f10
    7d94:	c7ae00bc 	lwc1	$f14,188(sp)
    7d98:	8fa600b8 	lw	a2,184(sp)
    7d9c:	468052a0 	cvt.s.w	$f10,$f10
    7da0:	44075000 	mfc1	a3,$f10
    7da4:	0c000000 	jal	0 <func_80038600>
    7da8:	00000000 	nop
    7dac:	46000606 	mov.s	$f24,$f0
    7db0:	46000005 	abs.s	$f0,$f0
    7db4:	97b800de 	lhu	t8,222(sp)
    7db8:	4600b03c 	c.lt.s	$f22,$f0
    7dbc:	00000000 	nop
    7dc0:	45030008 	bc1tl	7de4 <func_80040284+0x160>
    7dc4:	96220002 	lhu	v0,2(s1)
    7dc8:	96020002 	lhu	v0,2(s0)
    7dcc:	33190007 	andi	t9,t8,0x7
    7dd0:	00194340 	sll	t0,t9,0xd
    7dd4:	00485024 	and	t2,v0,t0
    7dd8:	11400008 	beqz	t2,7dfc <func_80040284+0x178>
    7ddc:	3c013f80 	lui	at,0x3f80
    7de0:	96220002 	lhu	v0,2(s1)
    7de4:	52620093 	beql	s3,v0,8034 <func_80040284+0x3b0>
    7de8:	8fa800e4 	lw	t0,228(sp)
    7dec:	8e4b13f8 	lw	t3,5112(s2)
    7df0:	00024880 	sll	t1,v0,0x2
    7df4:	1000ffc7 	b	7d14 <func_80040284+0x90>
    7df8:	01698821 	addu	s1,t3,t1
    7dfc:	44812000 	mtc1	at,$f4
    7e00:	c7ae00b8 	lwc1	$f14,184(sp)
    7e04:	3c010000 	lui	at,0x0
    7e08:	46142403 	div.s	$f16,$f4,$f20
    7e0c:	c4260000 	lwc1	$f6,0(at)
    7e10:	304e1fff 	andi	t6,v0,0x1fff
    7e14:	46007005 	abs.s	$f0,$f14
    7e18:	46100482 	mul.s	$f18,$f0,$f16
    7e1c:	4606903c 	c.lt.s	$f18,$f6
    7e20:	00000000 	nop
    7e24:	45000008 	bc1f	7e48 <func_80040284+0x1c4>
    7e28:	00000000 	nop
    7e2c:	96220002 	lhu	v0,2(s1)
    7e30:	52620080 	beql	s3,v0,8034 <func_80040284+0x3b0>
    7e34:	8fa800e4 	lw	t0,228(sp)
    7e38:	8e4c13f8 	lw	t4,5112(s2)
    7e3c:	00026880 	sll	t5,v0,0x2
    7e40:	1000ffb4 	b	7d14 <func_80040284+0x90>
    7e44:	018d8821 	addu	s1,t4,t5
    7e48:	01d40019 	multu	t6,s4
    7e4c:	96080004 	lhu	t0,4(s0)
    7e50:	8e4513f4 	lw	a1,5108(s2)
    7e54:	310a1fff 	andi	t2,t0,0x1fff
    7e58:	00007812 	mflo	t7
    7e5c:	00afc021 	addu	t8,a1,t7
    7e60:	87190004 	lh	t9,4(t8)
    7e64:	01540019 	multu	t2,s4
    7e68:	44994000 	mtc1	t9,$f8
    7e6c:	00000000 	nop
    7e70:	46804320 	cvt.s.w	$f12,$f8
    7e74:	00005812 	mflo	t3
    7e78:	00ab4821 	addu	t1,a1,t3
    7e7c:	852c0004 	lh	t4,4(t1)
    7e80:	46006086 	mov.s	$f2,$f12
    7e84:	448c5000 	mtc1	t4,$f10
    7e88:	00000000 	nop
    7e8c:	46805020 	cvt.s.w	$f0,$f10
    7e90:	4602003c 	c.lt.s	$f0,$f2
    7e94:	00000000 	nop
    7e98:	45020004 	bc1fl	7eac <func_80040284+0x228>
    7e9c:	4600603c 	c.lt.s	$f12,$f0
    7ea0:	10000006 	b	7ebc <func_80040284+0x238>
    7ea4:	46000086 	mov.s	$f2,$f0
    7ea8:	4600603c 	c.lt.s	$f12,$f0
    7eac:	00000000 	nop
    7eb0:	45020003 	bc1fl	7ec0 <func_80040284+0x23c>
    7eb4:	960d0006 	lhu	t5,6(s0)
    7eb8:	46000306 	mov.s	$f12,$f0
    7ebc:	960d0006 	lhu	t5,6(s0)
    7ec0:	000d7080 	sll	t6,t5,0x2
    7ec4:	01cd7023 	subu	t6,t6,t5
    7ec8:	000e7040 	sll	t6,t6,0x1
    7ecc:	00ae7821 	addu	t7,a1,t6
    7ed0:	85f80004 	lh	t8,4(t7)
    7ed4:	44982000 	mtc1	t8,$f4
    7ed8:	00000000 	nop
    7edc:	46802020 	cvt.s.w	$f0,$f4
    7ee0:	4602003c 	c.lt.s	$f0,$f2
    7ee4:	00000000 	nop
    7ee8:	45020004 	bc1fl	7efc <func_80040284+0x278>
    7eec:	4600603c 	c.lt.s	$f12,$f0
    7ef0:	10000006 	b	7f0c <func_80040284+0x288>
    7ef4:	46000086 	mov.s	$f2,$f0
    7ef8:	4600603c 	c.lt.s	$f12,$f0
    7efc:	00000000 	nop
    7f00:	45020003 	bc1fl	7f10 <func_80040284+0x28c>
    7f04:	46161081 	sub.s	$f2,$f2,$f22
    7f08:	46000306 	mov.s	$f12,$f0
    7f0c:	46161081 	sub.s	$f2,$f2,$f22
    7f10:	c7ae00b4 	lwc1	$f14,180(sp)
    7f14:	46166300 	add.s	$f12,$f12,$f22
    7f18:	4602703c 	c.lt.s	$f14,$f2
    7f1c:	00000000 	nop
    7f20:	45030008 	bc1tl	7f44 <func_80040284+0x2c0>
    7f24:	96220002 	lhu	v0,2(s1)
    7f28:	460e603c 	c.lt.s	$f12,$f14
    7f2c:	02002025 	move	a0,s0
    7f30:	8faa00f8 	lw	t2,248(sp)
    7f34:	27ab00d0 	addiu	t3,sp,208
    7f38:	45020009 	bc1fl	7f60 <func_80040284+0x2dc>
    7f3c:	8d470004 	lw	a3,4(t2)
    7f40:	96220002 	lhu	v0,2(s1)
    7f44:	5262003b 	beql	s3,v0,8034 <func_80040284+0x3b0>
    7f48:	8fa800e4 	lw	t0,228(sp)
    7f4c:	8e5913f8 	lw	t9,5112(s2)
    7f50:	00024080 	sll	t0,v0,0x2
    7f54:	1000ff6f 	b	7d14 <func_80040284+0x90>
    7f58:	03288821 	addu	s1,t9,t0
    7f5c:	8d470004 	lw	a3,4(t2)
    7f60:	e7b20090 	swc1	$f18,144(sp)
    7f64:	e7b00070 	swc1	$f16,112(sp)
    7f68:	afab0010 	sw	t3,16(sp)
    7f6c:	0c000000 	jal	0 <func_80038600>
    7f70:	8fa600ac 	lw	a2,172(sp)
    7f74:	c7b00070 	lwc1	$f16,112(sp)
    7f78:	10400026 	beqz	v0,8014 <func_80040284+0x390>
    7f7c:	c7b20090 	lwc1	$f18,144(sp)
    7f80:	4612b203 	div.s	$f8,$f22,$f18
    7f84:	c7ae00b4 	lwc1	$f14,180(sp)
    7f88:	c7a600d0 	lwc1	$f6,208(sp)
    7f8c:	460e3081 	sub.s	$f2,$f6,$f14
    7f90:	c7ae00b8 	lwc1	$f14,184(sp)
    7f94:	46001005 	abs.s	$f0,$f2
    7f98:	4608003e 	c.le.s	$f0,$f8
    7f9c:	00000000 	nop
    7fa0:	4502001d 	bc1fl	8018 <func_80040284+0x394>
    7fa4:	96220002 	lhu	v0,2(s1)
    7fa8:	460e1102 	mul.s	$f4,$f2,$f14
    7fac:	3c014080 	lui	at,0x4080
    7fb0:	44815000 	mtc1	at,$f10
    7fb4:	c7ac00c0 	lwc1	$f12,192(sp)
    7fb8:	8fa400d8 	lw	a0,216(sp)
    7fbc:	02002825 	move	a1,s0
    7fc0:	02a03025 	move	a2,s5
    7fc4:	460a203e 	c.le.s	$f4,$f10
    7fc8:	27a700b4 	addiu	a3,sp,180
    7fcc:	240c0001 	li	t4,1
    7fd0:	45020011 	bc1fl	8018 <func_80040284+0x394>
    7fd4:	96220002 	lhu	v0,2(s1)
    7fd8:	c7a600bc 	lwc1	$f6,188(sp)
    7fdc:	8fa900f0 	lw	t1,240(sp)
    7fe0:	e7ac0010 	swc1	$f12,16(sp)
    7fe4:	e7ae0018 	swc1	$f14,24(sp)
    7fe8:	e7b0001c 	swc1	$f16,28(sp)
    7fec:	e7b80020 	swc1	$f24,32(sp)
    7ff0:	e7b60024 	swc1	$f22,36(sp)
    7ff4:	afac00cc 	sw	t4,204(sp)
    7ff8:	e7a60014 	swc1	$f6,20(sp)
    7ffc:	0c000000 	jal	0 <func_80038600>
    8000:	afa90028 	sw	t1,40(sp)
    8004:	10400003 	beqz	v0,8014 <func_80040284+0x390>
    8008:	8fad0100 	lw	t5,256(sp)
    800c:	8fae00f4 	lw	t6,244(sp)
    8010:	adcd0000 	sw	t5,0(t6)
    8014:	96220002 	lhu	v0,2(s1)
    8018:	52620006 	beql	s3,v0,8034 <func_80040284+0x3b0>
    801c:	8fa800e4 	lw	t0,228(sp)
    8020:	8e4f13f8 	lw	t7,5112(s2)
    8024:	0002c080 	sll	t8,v0,0x2
    8028:	1000ff3a 	b	7d14 <func_80040284+0x90>
    802c:	01f88821 	addu	s1,t7,t8
    8030:	8fa800e4 	lw	t0,228(sp)
    8034:	8e5913f8 	lw	t9,5112(s2)
    8038:	950a0000 	lhu	t2,0(t0)
    803c:	000a5880 	sll	t3,t2,0x2
    8040:	032b8821 	addu	s1,t9,t3
    8044:	86220000 	lh	v0,0(s1)
    8048:	8e4913f0 	lw	t1,5104(s2)
    804c:	27a500c0 	addiu	a1,sp,192
    8050:	00026100 	sll	t4,v0,0x4
    8054:	012c8021 	addu	s0,t1,t4
    8058:	02002025 	move	a0,s0
    805c:	27a600bc 	addiu	a2,sp,188
    8060:	0c000000 	jal	0 <func_80038600>
    8064:	27a700b8 	addiu	a3,sp,184
    8068:	c7ac00c0 	lwc1	$f12,192(sp)
    806c:	c7ae00b8 	lwc1	$f14,184(sp)
    8070:	3c010000 	lui	at,0x0
    8074:	460c6202 	mul.s	$f8,$f12,$f12
    8078:	c4240000 	lwc1	$f4,0(at)
    807c:	3c040000 	lui	a0,0x0
    8080:	460e7282 	mul.s	$f10,$f14,$f14
    8084:	3c050000 	lui	a1,0x0
    8088:	24a50000 	addiu	a1,a1,0
    808c:	24840000 	addiu	a0,a0,0
    8090:	460a4000 	add.s	$f0,$f8,$f10
    8094:	46000504 	sqrt.s	$f20,$f0
    8098:	4600a005 	abs.s	$f0,$f20
    809c:	4604003c 	c.lt.s	$f0,$f4
    80a0:	00000000 	nop
    80a4:	45020004 	bc1fl	80b8 <func_80040284+0x434>
    80a8:	860d000e 	lh	t5,14(s0)
    80ac:	0c000000 	jal	0 <func_80038600>
    80b0:	24061d41 	li	a2,7489
    80b4:	860d000e 	lh	t5,14(s0)
    80b8:	afb50010 	sw	s5,16(sp)
    80bc:	c7ac00c0 	lwc1	$f12,192(sp)
    80c0:	448d3000 	mtc1	t5,$f6
    80c4:	c7ae00bc 	lwc1	$f14,188(sp)
    80c8:	8fa600b8 	lw	a2,184(sp)
    80cc:	468031a0 	cvt.s.w	$f6,$f6
    80d0:	44073000 	mfc1	a3,$f6
    80d4:	0c000000 	jal	0 <func_80038600>
    80d8:	00000000 	nop
    80dc:	46000606 	mov.s	$f24,$f0
    80e0:	46000005 	abs.s	$f0,$f0
    80e4:	97ae00de 	lhu	t6,222(sp)
    80e8:	4600b03c 	c.lt.s	$f22,$f0
    80ec:	00000000 	nop
    80f0:	45030008 	bc1tl	8114 <func_80040284+0x490>
    80f4:	96220002 	lhu	v0,2(s1)
    80f8:	96020002 	lhu	v0,2(s0)
    80fc:	31cf0007 	andi	t7,t6,0x7
    8100:	000fc340 	sll	t8,t7,0xd
    8104:	00584024 	and	t0,v0,t8
    8108:	11000008 	beqz	t0,812c <func_80040284+0x4a8>
    810c:	3c013f80 	lui	at,0x3f80
    8110:	96220002 	lhu	v0,2(s1)
    8114:	52620092 	beql	s3,v0,8360 <func_80040284+0x6dc>
    8118:	c7a400ac 	lwc1	$f4,172(sp)
    811c:	8e4a13f8 	lw	t2,5112(s2)
    8120:	0002c880 	sll	t9,v0,0x2
    8124:	1000ffc7 	b	8044 <func_80040284+0x3c0>
    8128:	01598821 	addu	s1,t2,t9
    812c:	44814000 	mtc1	at,$f8
    8130:	c7ac00c0 	lwc1	$f12,192(sp)
    8134:	3c010000 	lui	at,0x0
    8138:	46144403 	div.s	$f16,$f8,$f20
    813c:	c42a0000 	lwc1	$f10,0(at)
    8140:	304c1fff 	andi	t4,v0,0x1fff
    8144:	46006005 	abs.s	$f0,$f12
    8148:	46100482 	mul.s	$f18,$f0,$f16
    814c:	460a903c 	c.lt.s	$f18,$f10
    8150:	00000000 	nop
    8154:	45000008 	bc1f	8178 <func_80040284+0x4f4>
    8158:	00000000 	nop
    815c:	96220002 	lhu	v0,2(s1)
    8160:	5262007f 	beql	s3,v0,8360 <func_80040284+0x6dc>
    8164:	c7a400ac 	lwc1	$f4,172(sp)
    8168:	8e4b13f8 	lw	t3,5112(s2)
    816c:	00024880 	sll	t1,v0,0x2
    8170:	1000ffb4 	b	8044 <func_80040284+0x3c0>
    8174:	01698821 	addu	s1,t3,t1
    8178:	01940019 	multu	t4,s4
    817c:	96180004 	lhu	t8,4(s0)
    8180:	8e4513f4 	lw	a1,5108(s2)
    8184:	33081fff 	andi	t0,t8,0x1fff
    8188:	00006812 	mflo	t5
    818c:	00ad7021 	addu	t6,a1,t5
    8190:	85cf0000 	lh	t7,0(t6)
    8194:	01140019 	multu	t0,s4
    8198:	448f2000 	mtc1	t7,$f4
    819c:	00000000 	nop
    81a0:	46802320 	cvt.s.w	$f12,$f4
    81a4:	00005012 	mflo	t2
    81a8:	00aac821 	addu	t9,a1,t2
    81ac:	872b0000 	lh	t3,0(t9)
    81b0:	46006086 	mov.s	$f2,$f12
    81b4:	448b3000 	mtc1	t3,$f6
    81b8:	00000000 	nop
    81bc:	46803020 	cvt.s.w	$f0,$f6
    81c0:	4602003c 	c.lt.s	$f0,$f2
    81c4:	00000000 	nop
    81c8:	45020004 	bc1fl	81dc <func_80040284+0x558>
    81cc:	4600603c 	c.lt.s	$f12,$f0
    81d0:	10000006 	b	81ec <func_80040284+0x568>
    81d4:	46000086 	mov.s	$f2,$f0
    81d8:	4600603c 	c.lt.s	$f12,$f0
    81dc:	00000000 	nop
    81e0:	45020003 	bc1fl	81f0 <func_80040284+0x56c>
    81e4:	96090006 	lhu	t1,6(s0)
    81e8:	46000306 	mov.s	$f12,$f0
    81ec:	96090006 	lhu	t1,6(s0)
    81f0:	00096080 	sll	t4,t1,0x2
    81f4:	01896023 	subu	t4,t4,t1
    81f8:	000c6040 	sll	t4,t4,0x1
    81fc:	00ac6821 	addu	t5,a1,t4
    8200:	85ae0000 	lh	t6,0(t5)
    8204:	448e4000 	mtc1	t6,$f8
    8208:	00000000 	nop
    820c:	46804020 	cvt.s.w	$f0,$f8
    8210:	4602003c 	c.lt.s	$f0,$f2
    8214:	00000000 	nop
    8218:	45020004 	bc1fl	822c <func_80040284+0x5a8>
    821c:	4600603c 	c.lt.s	$f12,$f0
    8220:	10000006 	b	823c <func_80040284+0x5b8>
    8224:	46000086 	mov.s	$f2,$f0
    8228:	4600603c 	c.lt.s	$f12,$f0
    822c:	00000000 	nop
    8230:	45020003 	bc1fl	8240 <func_80040284+0x5bc>
    8234:	46161081 	sub.s	$f2,$f2,$f22
    8238:	46000306 	mov.s	$f12,$f0
    823c:	46161081 	sub.s	$f2,$f2,$f22
    8240:	c7ae00ac 	lwc1	$f14,172(sp)
    8244:	46166300 	add.s	$f12,$f12,$f22
    8248:	4602703c 	c.lt.s	$f14,$f2
    824c:	00000000 	nop
    8250:	45030008 	bc1tl	8274 <func_80040284+0x5f0>
    8254:	96220002 	lhu	v0,2(s1)
    8258:	460e603c 	c.lt.s	$f12,$f14
    825c:	02002025 	move	a0,s0
    8260:	8fa800f8 	lw	t0,248(sp)
    8264:	8fa700b4 	lw	a3,180(sp)
    8268:	45000008 	bc1f	828c <func_80040284+0x608>
    826c:	27aa00d0 	addiu	t2,sp,208
    8270:	96220002 	lhu	v0,2(s1)
    8274:	5262003a 	beql	s3,v0,8360 <func_80040284+0x6dc>
    8278:	c7a400ac 	lwc1	$f4,172(sp)
    827c:	8e4f13f8 	lw	t7,5112(s2)
    8280:	0002c080 	sll	t8,v0,0x2
    8284:	1000ff6f 	b	8044 <func_80040284+0x3c0>
    8288:	01f88821 	addu	s1,t7,t8
    828c:	8d060004 	lw	a2,4(t0)
    8290:	e7b20090 	swc1	$f18,144(sp)
    8294:	e7b00070 	swc1	$f16,112(sp)
    8298:	0c000000 	jal	0 <func_80038600>
    829c:	afaa0010 	sw	t2,16(sp)
    82a0:	c7b00070 	lwc1	$f16,112(sp)
    82a4:	10400026 	beqz	v0,8340 <func_80040284+0x6bc>
    82a8:	c7b20090 	lwc1	$f18,144(sp)
    82ac:	4612b103 	div.s	$f4,$f22,$f18
    82b0:	c7ae00ac 	lwc1	$f14,172(sp)
    82b4:	c7aa00d0 	lwc1	$f10,208(sp)
    82b8:	c7ac00c0 	lwc1	$f12,192(sp)
    82bc:	460e5081 	sub.s	$f2,$f10,$f14
    82c0:	46001005 	abs.s	$f0,$f2
    82c4:	4604003e 	c.le.s	$f0,$f4
    82c8:	00000000 	nop
    82cc:	4502001d 	bc1fl	8344 <func_80040284+0x6c0>
    82d0:	96220002 	lhu	v0,2(s1)
    82d4:	460c1202 	mul.s	$f8,$f2,$f12
    82d8:	3c014080 	lui	at,0x4080
    82dc:	44813000 	mtc1	at,$f6
    82e0:	c7ae00b8 	lwc1	$f14,184(sp)
    82e4:	8fa400d8 	lw	a0,216(sp)
    82e8:	02002825 	move	a1,s0
    82ec:	02a03025 	move	a2,s5
    82f0:	4606403e 	c.le.s	$f8,$f6
    82f4:	27a700b4 	addiu	a3,sp,180
    82f8:	240b0001 	li	t3,1
    82fc:	45020011 	bc1fl	8344 <func_80040284+0x6c0>
    8300:	96220002 	lhu	v0,2(s1)
    8304:	c7aa00bc 	lwc1	$f10,188(sp)
    8308:	8fb900f0 	lw	t9,240(sp)
    830c:	e7ac0010 	swc1	$f12,16(sp)
    8310:	e7ae0018 	swc1	$f14,24(sp)
    8314:	e7b0001c 	swc1	$f16,28(sp)
    8318:	e7b80020 	swc1	$f24,32(sp)
    831c:	e7b60024 	swc1	$f22,36(sp)
    8320:	afab00cc 	sw	t3,204(sp)
    8324:	e7aa0014 	swc1	$f10,20(sp)
    8328:	0c000000 	jal	0 <func_80038600>
    832c:	afb90028 	sw	t9,40(sp)
    8330:	10400003 	beqz	v0,8340 <func_80040284+0x6bc>
    8334:	8fa90100 	lw	t1,256(sp)
    8338:	8fac00f4 	lw	t4,244(sp)
    833c:	ad890000 	sw	t1,0(t4)
    8340:	96220002 	lhu	v0,2(s1)
    8344:	52620006 	beql	s3,v0,8360 <func_80040284+0x6dc>
    8348:	c7a400ac 	lwc1	$f4,172(sp)
    834c:	8e4d13f8 	lw	t5,5112(s2)
    8350:	00027080 	sll	t6,v0,0x2
    8354:	1000ff3b 	b	8044 <func_80040284+0x3c0>
    8358:	01ae8821 	addu	s1,t5,t6
    835c:	c7a400ac 	lwc1	$f4,172(sp)
    8360:	8faf00e8 	lw	t7,232(sp)
    8364:	e5e40000 	swc1	$f4,0(t7)
    8368:	8fb800ec 	lw	t8,236(sp)
    836c:	c7a600b4 	lwc1	$f6,180(sp)
    8370:	e7060000 	swc1	$f6,0(t8)
    8374:	8fa200cc 	lw	v0,204(sp)
    8378:	8fbf0064 	lw	ra,100(sp)
    837c:	d7b40030 	ldc1	$f20,48(sp)
    8380:	d7b60038 	ldc1	$f22,56(sp)
    8384:	d7b80040 	ldc1	$f24,64(sp)
    8388:	8fb0004c 	lw	s0,76(sp)
    838c:	8fb10050 	lw	s1,80(sp)
    8390:	8fb20054 	lw	s2,84(sp)
    8394:	8fb30058 	lw	s3,88(sp)
    8398:	8fb4005c 	lw	s4,92(sp)
    839c:	8fb50060 	lw	s5,96(sp)
    83a0:	03e00008 	jr	ra
    83a4:	27bd00d8 	addiu	sp,sp,216

000083a8 <func_800409A8>:
    83a8:	27bdff60 	addiu	sp,sp,-160
    83ac:	8faf00b0 	lw	t7,176(sp)
    83b0:	afbf0064 	sw	ra,100(sp)
    83b4:	afbe0060 	sw	s8,96(sp)
    83b8:	afb7005c 	sw	s7,92(sp)
    83bc:	afb60058 	sw	s6,88(sp)
    83c0:	afb50054 	sw	s5,84(sp)
    83c4:	afb40050 	sw	s4,80(sp)
    83c8:	afb3004c 	sw	s3,76(sp)
    83cc:	afb20048 	sw	s2,72(sp)
    83d0:	afb10044 	sw	s1,68(sp)
    83d4:	afb00040 	sw	s0,64(sp)
    83d8:	f7b40038 	sdc1	$f20,56(sp)
    83dc:	afa500a4 	sw	a1,164(sp)
    83e0:	afa00090 	sw	zero,144(sp)
    83e4:	8df90000 	lw	t9,0(t7)
    83e8:	27ae0094 	addiu	t6,sp,148
    83ec:	0080a825 	move	s5,a0
    83f0:	add90000 	sw	t9,0(t6)
    83f4:	8df80004 	lw	t8,4(t7)
    83f8:	00c0b825 	move	s7,a2
    83fc:	00e0f025 	move	s8,a3
    8400:	add80004 	sw	t8,4(t6)
    8404:	8df90008 	lw	t9,8(t7)
    8408:	0000a025 	move	s4,zero
    840c:	0080b025 	move	s6,a0
    8410:	add90008 	sw	t9,8(t6)
    8414:	c7b400b4 	lwc1	$f20,180(sp)
    8418:	96c813dc 	lhu	t0,5084(s6)
    841c:	00141080 	sll	v0,s4,0x2
    8420:	00541023 	subu	v0,v0,s4
    8424:	31090001 	andi	t1,t0,0x1
    8428:	1120005c 	beqz	t1,859c <func_800409A8+0x1f4>
    842c:	000210c0 	sll	v0,v0,0x3
    8430:	00541021 	addu	v0,v0,s4
    8434:	00021080 	sll	v0,v0,0x2
    8438:	02a29821 	addu	s3,s5,v0
    843c:	8e6b0054 	lw	t3,84(s3)
    8440:	8faa00c0 	lw	t2,192(sp)
    8444:	02a21821 	addu	v1,s5,v0
    8448:	c7a40098 	lwc1	$f4,152(sp)
    844c:	514b0054 	beql	t2,t3,85a0 <func_800409A8+0x1f8>
    8450:	26940001 	addiu	s4,s4,1
    8454:	c46600b0 	lwc1	$f6,176(v1)
    8458:	24700054 	addiu	s0,v1,84
    845c:	4606203c 	c.lt.s	$f4,$f6
    8460:	00000000 	nop
    8464:	4503004e 	bc1tl	85a0 <func_800409A8+0x1f8>
    8468:	26940001 	addiu	s4,s4,1
    846c:	c6080060 	lwc1	$f8,96(s0)
    8470:	4604403c 	c.lt.s	$f8,$f4
    8474:	00000000 	nop
    8478:	45030049 	bc1tl	85a0 <func_800409A8+0x1f8>
    847c:	26940001 	addiu	s4,s4,1
    8480:	4600a28d 	trunc.w.s	$f10,$f20
    8484:	860d005a 	lh	t5,90(s0)
    8488:	860f0054 	lh	t7,84(s0)
    848c:	86180058 	lh	t8,88(s0)
    8490:	44125000 	mfc1	s2,$f10
    8494:	448f9000 	mtc1	t7,$f18
    8498:	44982000 	mtc1	t8,$f4
    849c:	00129400 	sll	s2,s2,0x10
    84a0:	00129403 	sra	s2,s2,0x10
    84a4:	01b27021 	addu	t6,t5,s2
    84a8:	a60e005a 	sh	t6,90(s0)
    84ac:	8602005a 	lh	v0,90(s0)
    84b0:	468091a0 	cvt.s.w	$f6,$f18
    84b4:	c7a80094 	lwc1	$f8,148(sp)
    84b8:	44828000 	mtc1	v0,$f16
    84bc:	26110054 	addiu	s1,s0,84
    84c0:	02202025 	move	a0,s1
    84c4:	46808020 	cvt.s.w	$f0,$f16
    84c8:	c7b0009c 	lwc1	$f16,156(sp)
    84cc:	468022a0 	cvt.s.w	$f10,$f4
    84d0:	46000482 	mul.s	$f18,$f0,$f0
    84d4:	46083081 	sub.s	$f2,$f6,$f8
    84d8:	46105301 	sub.s	$f12,$f10,$f16
    84dc:	46021182 	mul.s	$f6,$f2,$f2
    84e0:	00000000 	nop
    84e4:	460c6102 	mul.s	$f4,$f12,$f12
    84e8:	46043280 	add.s	$f10,$f6,$f4
    84ec:	460a903c 	c.lt.s	$f18,$f10
    84f0:	00000000 	nop
    84f4:	4501000c 	bc1t	8528 <func_800409A8+0x180>
    84f8:	00000000 	nop
    84fc:	44054000 	mfc1	a1,$f8
    8500:	0c000000 	jal	0 <func_80038600>
    8504:	8fa60098 	lw	a2,152(sp)
    8508:	1440000a 	bnez	v0,8534 <func_800409A8+0x18c>
    850c:	02202025 	move	a0,s1
    8510:	8fa50098 	lw	a1,152(sp)
    8514:	0c000000 	jal	0 <func_80038600>
    8518:	8fa6009c 	lw	a2,156(sp)
    851c:	54400006 	bnezl	v0,8538 <func_800409A8+0x190>
    8520:	8608005a 	lh	t0,90(s0)
    8524:	8602005a 	lh	v0,90(s0)
    8528:	0052c823 	subu	t9,v0,s2
    852c:	1000001b 	b	859c <func_800409A8+0x1f4>
    8530:	a619005a 	sh	t9,90(s0)
    8534:	8608005a 	lh	t0,90(s0)
    8538:	27ac0094 	addiu	t4,sp,148
    853c:	02a02025 	move	a0,s5
    8540:	01124823 	subu	t1,t0,s2
    8544:	a609005a 	sh	t1,90(s0)
    8548:	8fab00bc 	lw	t3,188(sp)
    854c:	8faa00b8 	lw	t2,184(sp)
    8550:	afb40028 	sw	s4,40(sp)
    8554:	e7b40024 	swc1	$f20,36(sp)
    8558:	afac0020 	sw	t4,32(sp)
    855c:	afbe0014 	sw	s8,20(sp)
    8560:	afb70010 	sw	s7,16(sp)
    8564:	97a500a6 	lhu	a1,166(sp)
    8568:	26a60050 	addiu	a2,s5,80
    856c:	26670060 	addiu	a3,s3,96
    8570:	afab001c 	sw	t3,28(sp)
    8574:	0c000000 	jal	0 <func_80038600>
    8578:	afaa0018 	sw	t2,24(sp)
    857c:	50400008 	beqzl	v0,85a0 <func_800409A8+0x1f8>
    8580:	26940001 	addiu	s4,s4,1
    8584:	c6f00000 	lwc1	$f16,0(s7)
    8588:	240d0001 	li	t5,1
    858c:	e7b00094 	swc1	$f16,148(sp)
    8590:	c7c60000 	lwc1	$f6,0(s8)
    8594:	afad0090 	sw	t5,144(sp)
    8598:	e7a6009c 	swc1	$f6,156(sp)
    859c:	26940001 	addiu	s4,s4,1
    85a0:	24010032 	li	at,50
    85a4:	1681ff9c 	bne	s4,at,8418 <func_800409A8+0x70>
    85a8:	26d60002 	addiu	s6,s6,2
    85ac:	8fbf0064 	lw	ra,100(sp)
    85b0:	8fa20090 	lw	v0,144(sp)
    85b4:	d7b40038 	ldc1	$f20,56(sp)
    85b8:	8fb00040 	lw	s0,64(sp)
    85bc:	8fb10044 	lw	s1,68(sp)
    85c0:	8fb20048 	lw	s2,72(sp)
    85c4:	8fb3004c 	lw	s3,76(sp)
    85c8:	8fb40050 	lw	s4,80(sp)
    85cc:	8fb50054 	lw	s5,84(sp)
    85d0:	8fb60058 	lw	s6,88(sp)
    85d4:	8fb7005c 	lw	s7,92(sp)
    85d8:	8fbe0060 	lw	s8,96(sp)
    85dc:	03e00008 	jr	ra
    85e0:	27bd00a0 	addiu	sp,sp,160

000085e4 <func_80040BE4>:
    85e4:	27bdff50 	addiu	sp,sp,-176
    85e8:	afbf0064 	sw	ra,100(sp)
    85ec:	afbe0060 	sw	s8,96(sp)
    85f0:	afb7005c 	sw	s7,92(sp)
    85f4:	afb60058 	sw	s6,88(sp)
    85f8:	afb50054 	sw	s5,84(sp)
    85fc:	afb40050 	sw	s4,80(sp)
    8600:	afb3004c 	sw	s3,76(sp)
    8604:	afb20048 	sw	s2,72(sp)
    8608:	afb10044 	sw	s1,68(sp)
    860c:	afb00040 	sw	s0,64(sp)
    8610:	f7ba0038 	sdc1	$f26,56(sp)
    8614:	f7b80030 	sdc1	$f24,48(sp)
    8618:	f7b60028 	sdc1	$f22,40(sp)
    861c:	f7b40020 	sdc1	$f20,32(sp)
    8620:	afa400b0 	sw	a0,176(sp)
    8624:	afa500b4 	sw	a1,180(sp)
    8628:	afa00080 	sw	zero,128(sp)
    862c:	94e20000 	lhu	v0,0(a3)
    8630:	3413ffff 	li	s3,0xffff
    8634:	30a5ffff 	andi	a1,a1,0xffff
    8638:	16620003 	bne	s3,v0,8648 <func_80040BE4+0x64>
    863c:	00c09025 	move	s2,a2
    8640:	1000006f 	b	8800 <func_80040BE4+0x21c>
    8644:	00001025 	move	v0,zero
    8648:	8fb800c4 	lw	t8,196(sp)
    864c:	8e4e13f8 	lw	t6,5112(s2)
    8650:	27b60098 	addiu	s6,sp,152
    8654:	8f080000 	lw	t0,0(t8)
    8658:	3c01bf80 	lui	at,0xbf80
    865c:	4481d000 	mtc1	at,$f26
    8660:	aec80000 	sw	t0,0(s6)
    8664:	8f190004 	lw	t9,4(t8)
    8668:	3c013f80 	lui	at,0x3f80
    866c:	00027880 	sll	t7,v0,0x2
    8670:	aed90004 	sw	t9,4(s6)
    8674:	8f080008 	lw	t0,8(t8)
    8678:	30b40007 	andi	s4,a1,0x7
    867c:	4481c000 	mtc1	at,$f24
    8680:	aec80008 	sw	t0,8(s6)
    8684:	4480b000 	mtc1	zero,$f22
    8688:	8fb500cc 	lw	s5,204(sp)
    868c:	c7b400c8 	lwc1	$f20,200(sp)
    8690:	8e4313f0 	lw	v1,5104(s2)
    8694:	0014a340 	sll	s4,s4,0xd
    8698:	27be0088 	addiu	s8,sp,136
    869c:	27b7008c 	addiu	s7,sp,140
    86a0:	01cf8821 	addu	s1,t6,t7
    86a4:	86220000 	lh	v0,0(s1)
    86a8:	02e02825 	move	a1,s7
    86ac:	03c03025 	move	a2,s8
    86b0:	00024900 	sll	t1,v0,0x4
    86b4:	00698021 	addu	s0,v1,t1
    86b8:	960a0002 	lhu	t2,2(s0)
    86bc:	02002025 	move	a0,s0
    86c0:	01545824 	and	t3,t2,s4
    86c4:	11600008 	beqz	t3,86e8 <func_80040BE4+0x104>
    86c8:	00000000 	nop
    86cc:	96220002 	lhu	v0,2(s1)
    86d0:	52620048 	beql	s3,v0,87f4 <func_80040BE4+0x210>
    86d4:	c7b2009c 	lwc1	$f18,156(sp)
    86d8:	8e4c13f8 	lw	t4,5112(s2)
    86dc:	00026880 	sll	t5,v0,0x2
    86e0:	1000fff0 	b	86a4 <func_80040BE4+0xc0>
    86e4:	018d8821 	addu	s1,t4,t5
    86e8:	0c000000 	jal	0 <func_80038600>
    86ec:	27a70084 	addiu	a3,sp,132
    86f0:	860e000e 	lh	t6,14(s0)
    86f4:	afb60010 	sw	s6,16(sp)
    86f8:	c7ac008c 	lwc1	$f12,140(sp)
    86fc:	448e2000 	mtc1	t6,$f4
    8700:	c7ae0088 	lwc1	$f14,136(sp)
    8704:	8fa60084 	lw	a2,132(sp)
    8708:	46802120 	cvt.s.w	$f4,$f4
    870c:	44072000 	mfc1	a3,$f4
    8710:	0c000000 	jal	0 <func_80038600>
    8714:	00000000 	nop
    8718:	4600a03c 	c.lt.s	$f20,$f0
    871c:	02002025 	move	a0,s0
    8720:	8fa60098 	lw	a2,152(sp)
    8724:	8fa700a0 	lw	a3,160(sp)
    8728:	45000008 	bc1f	874c <func_80040BE4+0x168>
    872c:	27b90094 	addiu	t9,sp,148
    8730:	96220002 	lhu	v0,2(s1)
    8734:	1262002e 	beq	s3,v0,87f0 <func_80040BE4+0x20c>
    8738:	0002c080 	sll	t8,v0,0x2
    873c:	8e4f13f8 	lw	t7,5112(s2)
    8740:	8e4313f0 	lw	v1,5104(s2)
    8744:	1000ffd7 	b	86a4 <func_80040BE4+0xc0>
    8748:	01f88821 	addu	s1,t7,t8
    874c:	8e4513f4 	lw	a1,5108(s2)
    8750:	0c000000 	jal	0 <func_80038600>
    8754:	afb90010 	sw	t9,16(sp)
    8758:	1040001e 	beqz	v0,87d4 <func_80040BE4+0x1f0>
    875c:	c7a20094 	lwc1	$f2,148(sp)
    8760:	c7ac009c 	lwc1	$f12,156(sp)
    8764:	4602603c 	c.lt.s	$f12,$f2
    8768:	00000000 	nop
    876c:	4502001a 	bc1fl	87d8 <func_80040BE4+0x1f4>
    8770:	96220002 	lhu	v0,2(s1)
    8774:	460c1001 	sub.s	$f0,$f2,$f12
    8778:	c7a20088 	lwc1	$f2,136(sp)
    877c:	4614003c 	c.lt.s	$f0,$f20
    8780:	00000000 	nop
    8784:	45020014 	bc1fl	87d8 <func_80040BE4+0x1f4>
    8788:	96220002 	lhu	v0,2(s1)
    878c:	46020182 	mul.s	$f6,$f0,$f2
    8790:	4616303e 	c.le.s	$f6,$f22
    8794:	00000000 	nop
    8798:	4502000f 	bc1fl	87d8 <func_80040BE4+0x1f4>
    879c:	96220002 	lhu	v0,2(s1)
    87a0:	4602b03e 	c.le.s	$f22,$f2
    87a4:	24080001 	li	t0,1
    87a8:	afa80080 	sw	t0,128(sp)
    87ac:	45020004 	bc1fl	87c0 <func_80040BE4+0x1dc>
    87b0:	4600d006 	mov.s	$f0,$f26
    87b4:	10000002 	b	87c0 <func_80040BE4+0x1dc>
    87b8:	4600c006 	mov.s	$f0,$f24
    87bc:	4600d006 	mov.s	$f0,$f26
    87c0:	46140202 	mul.s	$f8,$f0,$f20
    87c4:	c7aa0094 	lwc1	$f10,148(sp)
    87c8:	460a4400 	add.s	$f16,$f8,$f10
    87cc:	e7b0009c 	swc1	$f16,156(sp)
    87d0:	aeb00000 	sw	s0,0(s5)
    87d4:	96220002 	lhu	v0,2(s1)
    87d8:	12620005 	beq	s3,v0,87f0 <func_80040BE4+0x20c>
    87dc:	00025080 	sll	t2,v0,0x2
    87e0:	8e4913f8 	lw	t1,5112(s2)
    87e4:	8e4313f0 	lw	v1,5104(s2)
    87e8:	1000ffae 	b	86a4 <func_80040BE4+0xc0>
    87ec:	012a8821 	addu	s1,t1,t2
    87f0:	c7b2009c 	lwc1	$f18,156(sp)
    87f4:	8fab00c0 	lw	t3,192(sp)
    87f8:	e5720000 	swc1	$f18,0(t3)
    87fc:	8fa20080 	lw	v0,128(sp)
    8800:	8fbf0064 	lw	ra,100(sp)
    8804:	d7b40020 	ldc1	$f20,32(sp)
    8808:	d7b60028 	ldc1	$f22,40(sp)
    880c:	d7b80030 	ldc1	$f24,48(sp)
    8810:	d7ba0038 	ldc1	$f26,56(sp)
    8814:	8fb00040 	lw	s0,64(sp)
    8818:	8fb10044 	lw	s1,68(sp)
    881c:	8fb20048 	lw	s2,72(sp)
    8820:	8fb3004c 	lw	s3,76(sp)
    8824:	8fb40050 	lw	s4,80(sp)
    8828:	8fb50054 	lw	s5,84(sp)
    882c:	8fb60058 	lw	s6,88(sp)
    8830:	8fb7005c 	lw	s7,92(sp)
    8834:	8fbe0060 	lw	s8,96(sp)
    8838:	03e00008 	jr	ra
    883c:	27bd00b0 	addiu	sp,sp,176

00008840 <func_80040E40>:
    8840:	27bdff80 	addiu	sp,sp,-128
    8844:	f7b60030 	sdc1	$f22,48(sp)
    8848:	afbf005c 	sw	ra,92(sp)
    884c:	afbe0058 	sw	s8,88(sp)
    8850:	afb70054 	sw	s7,84(sp)
    8854:	afb60050 	sw	s6,80(sp)
    8858:	afb5004c 	sw	s5,76(sp)
    885c:	afb40048 	sw	s4,72(sp)
    8860:	afb30044 	sw	s3,68(sp)
    8864:	afb20040 	sw	s2,64(sp)
    8868:	afb1003c 	sw	s1,60(sp)
    886c:	afb00038 	sw	s0,56(sp)
    8870:	f7b40028 	sdc1	$f20,40(sp)
    8874:	afa50084 	sw	a1,132(sp)
    8878:	afa60088 	sw	a2,136(sp)
    887c:	afa00078 	sw	zero,120(sp)
    8880:	c7b60090 	lwc1	$f22,144(sp)
    8884:	c4e40004 	lwc1	$f4,4(a3)
    8888:	00e09025 	move	s2,a3
    888c:	00809825 	move	s3,a0
    8890:	46162180 	add.s	$f6,$f4,$f22
    8894:	00008825 	move	s1,zero
    8898:	0080a025 	move	s4,a0
    889c:	8fb5009c 	lw	s5,156(sp)
    88a0:	e7a60070 	swc1	$f6,112(sp)
    88a4:	c7b40070 	lwc1	$f20,112(sp)
    88a8:	8fb60094 	lw	s6,148(sp)
    88ac:	8fb70098 	lw	s7,152(sp)
    88b0:	241e0032 	li	s8,50
    88b4:	968e13dc 	lhu	t6,5084(s4)
    88b8:	0011c080 	sll	t8,s1,0x2
    88bc:	0311c023 	subu	t8,t8,s1
    88c0:	31cf0001 	andi	t7,t6,0x1
    88c4:	11e00023 	beqz	t7,8954 <func_80040E40+0x114>
    88c8:	0018c0c0 	sll	t8,t8,0x3
    88cc:	0311c021 	addu	t8,t8,s1
    88d0:	0018c080 	sll	t8,t8,0x2
    88d4:	02788021 	addu	s0,s3,t8
    88d8:	8e190054 	lw	t9,84(s0)
    88dc:	260400a8 	addiu	a0,s0,168
    88e0:	52b9001d 	beql	s5,t9,8958 <func_80040E40+0x118>
    88e4:	26310001 	addiu	s1,s1,1
    88e8:	8e450000 	lw	a1,0(s2)
    88ec:	0c000000 	jal	0 <func_80038600>
    88f0:	8e460008 	lw	a2,8(s2)
    88f4:	10400017 	beqz	v0,8954 <func_80040E40+0x114>
    88f8:	02602025 	move	a0,s3
    88fc:	27a80070 	addiu	t0,sp,112
    8900:	27a90068 	addiu	t1,sp,104
    8904:	afa9001c 	sw	t1,28(sp)
    8908:	afa80010 	sw	t0,16(sp)
    890c:	97a50086 	lhu	a1,134(sp)
    8910:	26660050 	addiu	a2,s3,80
    8914:	2607005e 	addiu	a3,s0,94
    8918:	afb20014 	sw	s2,20(sp)
    891c:	0c000000 	jal	0 <func_80038600>
    8920:	e7b60018 	swc1	$f22,24(sp)
    8924:	24010001 	li	at,1
    8928:	1441000a 	bne	v0,at,8954 <func_80040E40+0x114>
    892c:	c7a80070 	lwc1	$f8,112(sp)
    8930:	4614403c 	c.lt.s	$f8,$f20
    8934:	8faa0068 	lw	t2,104(sp)
    8938:	240b0001 	li	t3,1
    893c:	45020006 	bc1fl	8958 <func_80040E40+0x118>
    8940:	26310001 	addiu	s1,s1,1
    8944:	aeca0000 	sw	t2,0(s6)
    8948:	aef10000 	sw	s1,0(s7)
    894c:	46004506 	mov.s	$f20,$f8
    8950:	afab0078 	sw	t3,120(sp)
    8954:	26310001 	addiu	s1,s1,1
    8958:	163effd6 	bne	s1,s8,88b4 <func_80040E40+0x74>
    895c:	26940002 	addiu	s4,s4,2
    8960:	8fac0088 	lw	t4,136(sp)
    8964:	e5940000 	swc1	$f20,0(t4)
    8968:	8fbf005c 	lw	ra,92(sp)
    896c:	8fbe0058 	lw	s8,88(sp)
    8970:	8fb70054 	lw	s7,84(sp)
    8974:	8fb60050 	lw	s6,80(sp)
    8978:	8fb5004c 	lw	s5,76(sp)
    897c:	8fb40048 	lw	s4,72(sp)
    8980:	8fb30044 	lw	s3,68(sp)
    8984:	8fb20040 	lw	s2,64(sp)
    8988:	8fb1003c 	lw	s1,60(sp)
    898c:	8fb00038 	lw	s0,56(sp)
    8990:	d7b60030 	ldc1	$f22,48(sp)
    8994:	d7b40028 	ldc1	$f20,40(sp)
    8998:	8fa20078 	lw	v0,120(sp)
    899c:	03e00008 	jr	ra
    89a0:	27bd0080 	addiu	sp,sp,128

000089a4 <func_80040FA4>:
    89a4:	27bdff88 	addiu	sp,sp,-120
    89a8:	afbf003c 	sw	ra,60(sp)
    89ac:	afb50038 	sw	s5,56(sp)
    89b0:	afb40034 	sw	s4,52(sp)
    89b4:	afb30030 	sw	s3,48(sp)
    89b8:	afb2002c 	sw	s2,44(sp)
    89bc:	afb10028 	sw	s1,40(sp)
    89c0:	afb00024 	sw	s0,36(sp)
    89c4:	8c8e000c 	lw	t6,12(a0)
    89c8:	3414ffff 	li	s4,0xffff
    89cc:	00808025 	move	s0,a0
    89d0:	95c20000 	lhu	v0,0(t6)
    89d4:	0000a825 	move	s5,zero
    89d8:	16820003 	bne	s4,v0,89e8 <func_80040FA4+0x44>
    89dc:	00027880 	sll	t7,v0,0x2
    89e0:	10000048 	b	8b04 <func_80040FA4+0x160>
    89e4:	00001025 	move	v0,zero
    89e8:	8e030008 	lw	v1,8(s0)
    89ec:	96060004 	lhu	a2,4(s0)
    89f0:	27b3005c 	addiu	s3,sp,92
    89f4:	8c6413f8 	lw	a0,5112(v1)
    89f8:	30c60007 	andi	a2,a2,0x7
    89fc:	00063340 	sll	a2,a2,0xd
    8a00:	8c6513f0 	lw	a1,5104(v1)
    8a04:	008f9021 	addu	s2,a0,t7
    8a08:	86420000 	lh	v0,0(s2)
    8a0c:	0002c100 	sll	t8,v0,0x4
    8a10:	00b88821 	addu	s1,a1,t8
    8a14:	96390002 	lhu	t9,2(s1)
    8a18:	03264024 	and	t0,t9,a2
    8a1c:	51000007 	beqzl	t0,8a3c <func_80040FA4+0x98>
    8a20:	8c6513f4 	lw	a1,5108(v1)
    8a24:	96420002 	lhu	v0,2(s2)
    8a28:	12820035 	beq	s4,v0,8b00 <func_80040FA4+0x15c>
    8a2c:	00024880 	sll	t1,v0,0x2
    8a30:	1000fff5 	b	8a08 <func_80040FA4+0x64>
    8a34:	00899021 	addu	s2,a0,t1
    8a38:	8c6513f4 	lw	a1,5108(v1)
    8a3c:	8e060010 	lw	a2,16(s0)
    8a40:	8e070014 	lw	a3,20(s0)
    8a44:	afb30010 	sw	s3,16(sp)
    8a48:	8e0a0020 	lw	t2,32(s0)
    8a4c:	02202025 	move	a0,s1
    8a50:	afaa0014 	sw	t2,20(sp)
    8a54:	c6040028 	lwc1	$f4,40(s0)
    8a58:	0c000000 	jal	0 <func_80038600>
    8a5c:	e7a40018 	swc1	$f4,24(sp)
    8a60:	1040001b 	beqz	v0,8ad0 <func_80040FA4+0x12c>
    8a64:	02602825 	move	a1,s3
    8a68:	0c000000 	jal	0 <func_80038600>
    8a6c:	8e040010 	lw	a0,16(s0)
    8a70:	8e020024 	lw	v0,36(s0)
    8a74:	c4460000 	lwc1	$f6,0(v0)
    8a78:	4606003c 	c.lt.s	$f0,$f6
    8a7c:	00000000 	nop
    8a80:	45020014 	bc1fl	8ad4 <func_80040FA4+0x130>
    8a84:	96420002 	lhu	v0,2(s2)
    8a88:	e4400000 	swc1	$f0,0(v0)
    8a8c:	8e6d0000 	lw	t5,0(s3)
    8a90:	8e0b0018 	lw	t3,24(s0)
    8a94:	24150001 	li	s5,1
    8a98:	ad6d0000 	sw	t5,0(t3)
    8a9c:	8e6c0004 	lw	t4,4(s3)
    8aa0:	ad6c0004 	sw	t4,4(t3)
    8aa4:	8e6d0008 	lw	t5,8(s3)
    8aa8:	ad6d0008 	sw	t5,8(t3)
    8aac:	8e780000 	lw	t8,0(s3)
    8ab0:	8e0e0014 	lw	t6,20(s0)
    8ab4:	add80000 	sw	t8,0(t6)
    8ab8:	8e6f0004 	lw	t7,4(s3)
    8abc:	adcf0004 	sw	t7,4(t6)
    8ac0:	8e780008 	lw	t8,8(s3)
    8ac4:	add80008 	sw	t8,8(t6)
    8ac8:	8e19001c 	lw	t9,28(s0)
    8acc:	af310000 	sw	s1,0(t9)
    8ad0:	96420002 	lhu	v0,2(s2)
    8ad4:	5282000b 	beql	s4,v0,8b04 <func_80040FA4+0x160>
    8ad8:	02a01025 	move	v0,s5
    8adc:	8e030008 	lw	v1,8(s0)
    8ae0:	96060004 	lhu	a2,4(s0)
    8ae4:	00024080 	sll	t0,v0,0x2
    8ae8:	8c6413f8 	lw	a0,5112(v1)
    8aec:	30c60007 	andi	a2,a2,0x7
    8af0:	00063340 	sll	a2,a2,0xd
    8af4:	8c6513f0 	lw	a1,5104(v1)
    8af8:	1000ffc3 	b	8a08 <func_80040FA4+0x64>
    8afc:	00889021 	addu	s2,a0,t0
    8b00:	02a01025 	move	v0,s5
    8b04:	8fbf003c 	lw	ra,60(sp)
    8b08:	8fb00024 	lw	s0,36(sp)
    8b0c:	8fb10028 	lw	s1,40(sp)
    8b10:	8fb2002c 	lw	s2,44(sp)
    8b14:	8fb30030 	lw	s3,48(sp)
    8b18:	8fb40034 	lw	s4,52(sp)
    8b1c:	8fb50038 	lw	s5,56(sp)
    8b20:	03e00008 	jr	ra
    8b24:	27bd0078 	addiu	sp,sp,120

00008b28 <func_80041128>:
    8b28:	27bdffb0 	addiu	sp,sp,-80
    8b2c:	8fac006c 	lw	t4,108(sp)
    8b30:	8faf0060 	lw	t7,96(sp)
    8b34:	8fb90074 	lw	t9,116(sp)
    8b38:	000c6880 	sll	t5,t4,0x2
    8b3c:	01ac6823 	subu	t5,t5,t4
    8b40:	000d68c0 	sll	t5,t5,0x3
    8b44:	01ac6821 	addu	t5,t5,t4
    8b48:	248e0050 	addiu	t6,a0,80
    8b4c:	000d6880 	sll	t5,t5,0x2
    8b50:	8fb80064 	lw	t8,100(sp)
    8b54:	8fab0068 	lw	t3,104(sp)
    8b58:	c7a40070 	lwc1	$f4,112(sp)
    8b5c:	afae0028 	sw	t6,40(sp)
    8b60:	008d1821 	addu	v1,a0,t5
    8b64:	afaf0038 	sw	t7,56(sp)
    8b68:	33290008 	andi	t1,t9,0x8
    8b6c:	0009502b 	sltu	t2,zero,t1
    8b70:	246e0060 	addiu	t6,v1,96
    8b74:	332f0001 	andi	t7,t9,0x1
    8b78:	afbf0014 	sw	ra,20(sp)
    8b7c:	afa50054 	sw	a1,84(sp)
    8b80:	00004025 	move	t0,zero
    8b84:	afa40020 	sw	a0,32(sp)
    8b88:	a7a50024 	sh	a1,36(sp)
    8b8c:	afa60030 	sw	a2,48(sp)
    8b90:	afa70034 	sw	a3,52(sp)
    8b94:	afaa0040 	sw	t2,64(sp)
    8b98:	afae002c 	sw	t6,44(sp)
    8b9c:	afb8003c 	sw	t8,60(sp)
    8ba0:	afab0044 	sw	t3,68(sp)
    8ba4:	11e00009 	beqz	t7,8bcc <func_80041128+0xa4>
    8ba8:	e7a40048 	swc1	$f4,72(sp)
    8bac:	27a40020 	addiu	a0,sp,32
    8bb0:	afa3001c 	sw	v1,28(sp)
    8bb4:	0c000000 	jal	0 <func_80038600>
    8bb8:	afa0004c 	sw	zero,76(sp)
    8bbc:	8fa3001c 	lw	v1,28(sp)
    8bc0:	10400002 	beqz	v0,8bcc <func_80041128+0xa4>
    8bc4:	8fa8004c 	lw	t0,76(sp)
    8bc8:	24080001 	li	t0,1
    8bcc:	8fa90074 	lw	t1,116(sp)
    8bd0:	24780062 	addiu	t8,v1,98
    8bd4:	afb8002c 	sw	t8,44(sp)
    8bd8:	312a0002 	andi	t2,t1,0x2
    8bdc:	11400008 	beqz	t2,8c00 <func_80041128+0xd8>
    8be0:	27a40020 	addiu	a0,sp,32
    8be4:	afa3001c 	sw	v1,28(sp)
    8be8:	0c000000 	jal	0 <func_80038600>
    8bec:	afa8004c 	sw	t0,76(sp)
    8bf0:	8fa3001c 	lw	v1,28(sp)
    8bf4:	10400002 	beqz	v0,8c00 <func_80041128+0xd8>
    8bf8:	8fa8004c 	lw	t0,76(sp)
    8bfc:	24080001 	li	t0,1
    8c00:	8fac0074 	lw	t4,116(sp)
    8c04:	246b005e 	addiu	t3,v1,94
    8c08:	afab002c 	sw	t3,44(sp)
    8c0c:	318d0004 	andi	t5,t4,0x4
    8c10:	11a00006 	beqz	t5,8c2c <func_80041128+0x104>
    8c14:	27a40020 	addiu	a0,sp,32
    8c18:	0c000000 	jal	0 <func_80038600>
    8c1c:	afa8004c 	sw	t0,76(sp)
    8c20:	10400002 	beqz	v0,8c2c <func_80041128+0x104>
    8c24:	8fa8004c 	lw	t0,76(sp)
    8c28:	24080001 	li	t0,1
    8c2c:	8fbf0014 	lw	ra,20(sp)
    8c30:	27bd0050 	addiu	sp,sp,80
    8c34:	01001025 	move	v0,t0
    8c38:	03e00008 	jr	ra
    8c3c:	00000000 	nop

00008c40 <func_80041240>:
    8c40:	27bdff68 	addiu	sp,sp,-152
    8c44:	afbe0058 	sw	s8,88(sp)
    8c48:	afb70054 	sw	s7,84(sp)
    8c4c:	afb60050 	sw	s6,80(sp)
    8c50:	afb5004c 	sw	s5,76(sp)
    8c54:	afb40048 	sw	s4,72(sp)
    8c58:	afb30044 	sw	s3,68(sp)
    8c5c:	afb20040 	sw	s2,64(sp)
    8c60:	afb1003c 	sw	s1,60(sp)
    8c64:	afb00038 	sw	s0,56(sp)
    8c68:	f7b40030 	sdc1	$f20,48(sp)
    8c6c:	00c09025 	move	s2,a2
    8c70:	00e09825 	move	s3,a3
    8c74:	0080a025 	move	s4,a0
    8c78:	30beffff 	andi	s8,a1,0xffff
    8c7c:	afbf005c 	sw	ra,92(sp)
    8c80:	afa5009c 	sw	a1,156(sp)
    8c84:	0000b025 	move	s6,zero
    8c88:	c7b400bc 	lwc1	$f20,188(sp)
    8c8c:	00008025 	move	s0,zero
    8c90:	00808825 	move	s1,a0
    8c94:	27b50074 	addiu	s5,sp,116
    8c98:	8fb700b8 	lw	s7,184(sp)
    8c9c:	962e13dc 	lhu	t6,5084(s1)
    8ca0:	0010c080 	sll	t8,s0,0x2
    8ca4:	0310c023 	subu	t8,t8,s0
    8ca8:	31cf0001 	andi	t7,t6,0x1
    8cac:	11e00040 	beqz	t7,8db0 <func_80041240+0x170>
    8cb0:	0018c0c0 	sll	t8,t8,0x3
    8cb4:	0310c021 	addu	t8,t8,s0
    8cb8:	0018c080 	sll	t8,t8,0x2
    8cbc:	02981021 	addu	v0,s4,t8
    8cc0:	8c590054 	lw	t9,84(v0)
    8cc4:	52f9003b 	beql	s7,t9,8db4 <func_80041240+0x174>
    8cc8:	26100001 	addiu	s0,s0,1
    8ccc:	c6400004 	lwc1	$f0,4(s2)
    8cd0:	c44c00b0 	lwc1	$f12,176(v0)
    8cd4:	c6620004 	lwc1	$f2,4(s3)
    8cd8:	460c003c 	c.lt.s	$f0,$f12
    8cdc:	00000000 	nop
    8ce0:	45020006 	bc1fl	8cfc <func_80041240+0xbc>
    8ce4:	c44c00b4 	lwc1	$f12,180(v0)
    8ce8:	460c103c 	c.lt.s	$f2,$f12
    8cec:	00000000 	nop
    8cf0:	45030030 	bc1tl	8db4 <func_80041240+0x174>
    8cf4:	26100001 	addiu	s0,s0,1
    8cf8:	c44c00b4 	lwc1	$f12,180(v0)
    8cfc:	4600603c 	c.lt.s	$f12,$f0
    8d00:	00000000 	nop
    8d04:	45020006 	bc1fl	8d20 <func_80041240+0xe0>
    8d08:	8e490000 	lw	t1,0(s2)
    8d0c:	4602603c 	c.lt.s	$f12,$f2
    8d10:	00000000 	nop
    8d14:	45030027 	bc1tl	8db4 <func_80041240+0x174>
    8d18:	26100001 	addiu	s0,s0,1
    8d1c:	8e490000 	lw	t1,0(s2)
    8d20:	27aa0080 	addiu	t2,sp,128
    8d24:	244400a8 	addiu	a0,v0,168
    8d28:	aea90000 	sw	t1,0(s5)
    8d2c:	8e480004 	lw	t0,4(s2)
    8d30:	02a02825 	move	a1,s5
    8d34:	aea80004 	sw	t0,4(s5)
    8d38:	8e490008 	lw	t1,8(s2)
    8d3c:	aea90008 	sw	t1,8(s5)
    8d40:	8e6c0000 	lw	t4,0(s3)
    8d44:	ad4c0000 	sw	t4,0(t2)
    8d48:	8e6b0004 	lw	t3,4(s3)
    8d4c:	ad4b0004 	sw	t3,4(t2)
    8d50:	8e6c0008 	lw	t4,8(s3)
    8d54:	0c000000 	jal	0 <func_80038600>
    8d58:	ad4c0008 	sw	t4,8(t2)
    8d5c:	10400014 	beqz	v0,8db0 <func_80041240+0x170>
    8d60:	02802025 	move	a0,s4
    8d64:	8fad00a8 	lw	t5,168(sp)
    8d68:	8fae00ac 	lw	t6,172(sp)
    8d6c:	8faf00b0 	lw	t7,176(sp)
    8d70:	8fb800c0 	lw	t8,192(sp)
    8d74:	33c5ffff 	andi	a1,s8,0xffff
    8d78:	02403025 	move	a2,s2
    8d7c:	02603825 	move	a3,s3
    8d80:	afb0001c 	sw	s0,28(sp)
    8d84:	e7b40020 	swc1	$f20,32(sp)
    8d88:	afad0010 	sw	t5,16(sp)
    8d8c:	afae0014 	sw	t6,20(sp)
    8d90:	afaf0018 	sw	t7,24(sp)
    8d94:	0c000000 	jal	0 <func_80038600>
    8d98:	afb80024 	sw	t8,36(sp)
    8d9c:	24010001 	li	at,1
    8da0:	14410003 	bne	v0,at,8db0 <func_80041240+0x170>
    8da4:	8fb900b4 	lw	t9,180(sp)
    8da8:	af300000 	sw	s0,0(t9)
    8dac:	24160001 	li	s6,1
    8db0:	26100001 	addiu	s0,s0,1
    8db4:	24010032 	li	at,50
    8db8:	1601ffb8 	bne	s0,at,8c9c <func_80041240+0x5c>
    8dbc:	26310002 	addiu	s1,s1,2
    8dc0:	8fbf005c 	lw	ra,92(sp)
    8dc4:	02c01025 	move	v0,s6
    8dc8:	8fb60050 	lw	s6,80(sp)
    8dcc:	d7b40030 	ldc1	$f20,48(sp)
    8dd0:	8fb00038 	lw	s0,56(sp)
    8dd4:	8fb1003c 	lw	s1,60(sp)
    8dd8:	8fb20040 	lw	s2,64(sp)
    8ddc:	8fb30044 	lw	s3,68(sp)
    8de0:	8fb40048 	lw	s4,72(sp)
    8de4:	8fb5004c 	lw	s5,76(sp)
    8de8:	8fb70054 	lw	s7,84(sp)
    8dec:	8fbe0058 	lw	s8,88(sp)
    8df0:	03e00008 	jr	ra
    8df4:	27bd0098 	addiu	sp,sp,152

00008df8 <func_800413F8>:
    8df8:	27bdffc8 	addiu	sp,sp,-56
    8dfc:	8fae004c 	lw	t6,76(sp)
    8e00:	afbf0034 	sw	ra,52(sp)
    8e04:	afb50030 	sw	s5,48(sp)
    8e08:	afb4002c 	sw	s4,44(sp)
    8e0c:	afb30028 	sw	s3,40(sp)
    8e10:	afb20024 	sw	s2,36(sp)
    8e14:	afb10020 	sw	s1,32(sp)
    8e18:	afb0001c 	sw	s0,28(sp)
    8e1c:	f7b40010 	sdc1	$f20,16(sp)
    8e20:	afa5003c 	sw	a1,60(sp)
    8e24:	afa60040 	sw	a2,64(sp)
    8e28:	95c20000 	lhu	v0,0(t6)
    8e2c:	3413ffff 	li	s3,0xffff
    8e30:	30a5ffff 	andi	a1,a1,0xffff
    8e34:	16620003 	bne	s3,v0,8e44 <func_800413F8+0x4c>
    8e38:	00e0a825 	move	s5,a3
    8e3c:	1000002a 	b	8ee8 <func_800413F8+0xf0>
    8e40:	00001025 	move	v0,zero
    8e44:	8c8f1448 	lw	t7,5192(a0)
    8e48:	0002c080 	sll	t8,v0,0x2
    8e4c:	24920050 	addiu	s2,a0,80
    8e50:	30b40007 	andi	s4,a1,0x7
    8e54:	0014a340 	sll	s4,s4,0xd
    8e58:	8e4313f0 	lw	v1,5104(s2)
    8e5c:	c7b40048 	lwc1	$f20,72(sp)
    8e60:	01f88021 	addu	s0,t7,t8
    8e64:	86020000 	lh	v0,0(s0)
    8e68:	02a03025 	move	a2,s5
    8e6c:	0002c900 	sll	t9,v0,0x4
    8e70:	00798821 	addu	s1,v1,t9
    8e74:	96280002 	lhu	t0,2(s1)
    8e78:	02202025 	move	a0,s1
    8e7c:	01144824 	and	t1,t0,s4
    8e80:	51200009 	beqzl	t1,8ea8 <func_800413F8+0xb0>
    8e84:	4407a000 	mfc1	a3,$f20
    8e88:	96020002 	lhu	v0,2(s0)
    8e8c:	52620016 	beql	s3,v0,8ee8 <func_800413F8+0xf0>
    8e90:	00001025 	move	v0,zero
    8e94:	8e4a13f8 	lw	t2,5112(s2)
    8e98:	00025880 	sll	t3,v0,0x2
    8e9c:	1000fff1 	b	8e64 <func_800413F8+0x6c>
    8ea0:	014b8021 	addu	s0,t2,t3
    8ea4:	4407a000 	mfc1	a3,$f20
    8ea8:	0c000000 	jal	0 <func_80038600>
    8eac:	8e4513f4 	lw	a1,5108(s2)
    8eb0:	50400006 	beqzl	v0,8ecc <func_800413F8+0xd4>
    8eb4:	96020002 	lhu	v0,2(s0)
    8eb8:	8fac0040 	lw	t4,64(sp)
    8ebc:	24020001 	li	v0,1
    8ec0:	10000009 	b	8ee8 <func_800413F8+0xf0>
    8ec4:	ad910000 	sw	s1,0(t4)
    8ec8:	96020002 	lhu	v0,2(s0)
    8ecc:	12620005 	beq	s3,v0,8ee4 <func_800413F8+0xec>
    8ed0:	00027080 	sll	t6,v0,0x2
    8ed4:	8e4d13f8 	lw	t5,5112(s2)
    8ed8:	8e4313f0 	lw	v1,5104(s2)
    8edc:	1000ffe1 	b	8e64 <func_800413F8+0x6c>
    8ee0:	01ae8021 	addu	s0,t5,t6
    8ee4:	00001025 	move	v0,zero
    8ee8:	8fbf0034 	lw	ra,52(sp)
    8eec:	d7b40010 	ldc1	$f20,16(sp)
    8ef0:	8fb0001c 	lw	s0,28(sp)
    8ef4:	8fb10020 	lw	s1,32(sp)
    8ef8:	8fb20024 	lw	s2,36(sp)
    8efc:	8fb30028 	lw	s3,40(sp)
    8f00:	8fb4002c 	lw	s4,44(sp)
    8f04:	8fb50030 	lw	s5,48(sp)
    8f08:	03e00008 	jr	ra
    8f0c:	27bd0038 	addiu	sp,sp,56

00008f10 <func_80041510>:
    8f10:	27bdffd8 	addiu	sp,sp,-40
    8f14:	97a30042 	lhu	v1,66(sp)
    8f18:	afbf001c 	sw	ra,28(sp)
    8f1c:	afa5002c 	sw	a1,44(sp)
    8f20:	306e0001 	andi	t6,v1,0x1
    8f24:	afa60030 	sw	a2,48(sp)
    8f28:	15c00015 	bnez	t6,8f80 <func_80041510+0x70>
    8f2c:	afa70034 	sw	a3,52(sp)
    8f30:	8faf003c 	lw	t7,60(sp)
    8f34:	c7a40038 	lwc1	$f4,56(sp)
    8f38:	97a5002e 	lhu	a1,46(sp)
    8f3c:	000fc080 	sll	t8,t7,0x2
    8f40:	030fc023 	subu	t8,t8,t7
    8f44:	0018c0c0 	sll	t8,t8,0x3
    8f48:	030fc021 	addu	t8,t8,t7
    8f4c:	0018c080 	sll	t8,t8,0x2
    8f50:	0098c821 	addu	t9,a0,t8
    8f54:	2728005e 	addiu	t0,t9,94
    8f58:	afa80014 	sw	t0,20(sp)
    8f5c:	afa30024 	sw	v1,36(sp)
    8f60:	afa40028 	sw	a0,40(sp)
    8f64:	0c000000 	jal	0 <func_80038600>
    8f68:	e7a40010 	swc1	$f4,16(sp)
    8f6c:	8fa30024 	lw	v1,36(sp)
    8f70:	10400003 	beqz	v0,8f80 <func_80041510+0x70>
    8f74:	8fa40028 	lw	a0,40(sp)
    8f78:	1000002f 	b	9038 <func_80041510+0x128>
    8f7c:	24020001 	li	v0,1
    8f80:	30690002 	andi	t1,v1,0x2
    8f84:	15200016 	bnez	t1,8fe0 <func_80041510+0xd0>
    8f88:	97a5002e 	lhu	a1,46(sp)
    8f8c:	8faa003c 	lw	t2,60(sp)
    8f90:	c7a60038 	lwc1	$f6,56(sp)
    8f94:	8fa60030 	lw	a2,48(sp)
    8f98:	000a5880 	sll	t3,t2,0x2
    8f9c:	016a5823 	subu	t3,t3,t2
    8fa0:	000b58c0 	sll	t3,t3,0x3
    8fa4:	016a5821 	addu	t3,t3,t2
    8fa8:	000b5880 	sll	t3,t3,0x2
    8fac:	008b6021 	addu	t4,a0,t3
    8fb0:	258d0060 	addiu	t5,t4,96
    8fb4:	afad0014 	sw	t5,20(sp)
    8fb8:	8fa70034 	lw	a3,52(sp)
    8fbc:	afa30024 	sw	v1,36(sp)
    8fc0:	afa40028 	sw	a0,40(sp)
    8fc4:	0c000000 	jal	0 <func_80038600>
    8fc8:	e7a60010 	swc1	$f6,16(sp)
    8fcc:	8fa30024 	lw	v1,36(sp)
    8fd0:	10400003 	beqz	v0,8fe0 <func_80041510+0xd0>
    8fd4:	8fa40028 	lw	a0,40(sp)
    8fd8:	10000017 	b	9038 <func_80041510+0x128>
    8fdc:	24020001 	li	v0,1
    8fe0:	306e0004 	andi	t6,v1,0x4
    8fe4:	15c00013 	bnez	t6,9034 <func_80041510+0x124>
    8fe8:	97a5002e 	lhu	a1,46(sp)
    8fec:	8faf003c 	lw	t7,60(sp)
    8ff0:	c7a80038 	lwc1	$f8,56(sp)
    8ff4:	8fa60030 	lw	a2,48(sp)
    8ff8:	000fc080 	sll	t8,t7,0x2
    8ffc:	030fc023 	subu	t8,t8,t7
    9000:	0018c0c0 	sll	t8,t8,0x3
    9004:	030fc021 	addu	t8,t8,t7
    9008:	0018c080 	sll	t8,t8,0x2
    900c:	0098c821 	addu	t9,a0,t8
    9010:	27280062 	addiu	t0,t9,98
    9014:	afa80014 	sw	t0,20(sp)
    9018:	8fa70034 	lw	a3,52(sp)
    901c:	0c000000 	jal	0 <func_80038600>
    9020:	e7a80010 	swc1	$f8,16(sp)
    9024:	50400004 	beqzl	v0,9038 <func_80041510+0x128>
    9028:	00001025 	move	v0,zero
    902c:	10000002 	b	9038 <func_80041510+0x128>
    9030:	24020001 	li	v0,1
    9034:	00001025 	move	v0,zero
    9038:	8fbf001c 	lw	ra,28(sp)
    903c:	27bd0028 	addiu	sp,sp,40
    9040:	03e00008 	jr	ra
    9044:	00000000 	nop

00009048 <func_80041648>:
    9048:	27bdff90 	addiu	sp,sp,-112
    904c:	afbe0050 	sw	s8,80(sp)
    9050:	afb7004c 	sw	s7,76(sp)
    9054:	afb60048 	sw	s6,72(sp)
    9058:	afb50044 	sw	s5,68(sp)
    905c:	afb40040 	sw	s4,64(sp)
    9060:	afb3003c 	sw	s3,60(sp)
    9064:	afb20038 	sw	s2,56(sp)
    9068:	afb10034 	sw	s1,52(sp)
    906c:	afb00030 	sw	s0,48(sp)
    9070:	f7b40028 	sdc1	$f20,40(sp)
    9074:	00809825 	move	s3,a0
    9078:	30b5ffff 	andi	s5,a1,0xffff
    907c:	00c0b025 	move	s6,a2
    9080:	afbf0054 	sw	ra,84(sp)
    9084:	afa50074 	sw	a1,116(sp)
    9088:	afa7007c 	sw	a3,124(sp)
    908c:	c7b40084 	lwc1	$f20,132(sp)
    9090:	00008025 	move	s0,zero
    9094:	8fb10080 	lw	s1,128(sp)
    9098:	00809025 	move	s2,a0
    909c:	8fb40088 	lw	s4,136(sp)
    90a0:	97b7008e 	lhu	s7,142(sp)
    90a4:	241e0032 	li	s8,50
    90a8:	964e13dc 	lhu	t6,5084(s2)
    90ac:	0010c080 	sll	t8,s0,0x2
    90b0:	0310c023 	subu	t8,t8,s0
    90b4:	31cf0001 	andi	t7,t6,0x1
    90b8:	11e00028 	beqz	t7,915c <func_80041648+0x114>
    90bc:	0018c0c0 	sll	t8,t8,0x3
    90c0:	0310c021 	addu	t8,t8,s0
    90c4:	0018c080 	sll	t8,t8,0x2
    90c8:	02781021 	addu	v0,s3,t8
    90cc:	8c590054 	lw	t9,84(v0)
    90d0:	52990023 	beql	s4,t9,9160 <func_80041648+0x118>
    90d4:	26100001 	addiu	s0,s0,1
    90d8:	c6240000 	lwc1	$f4,0(s1)
    90dc:	27a40064 	addiu	a0,sp,100
    90e0:	244500a8 	addiu	a1,v0,168
    90e4:	4600218d 	trunc.w.s	$f6,$f4
    90e8:	4600a10d 	trunc.w.s	$f4,$f20
    90ec:	44093000 	mfc1	t1,$f6
    90f0:	00000000 	nop
    90f4:	a7a90064 	sh	t1,100(sp)
    90f8:	c6280004 	lwc1	$f8,4(s1)
    90fc:	440f2000 	mfc1	t7,$f4
    9100:	4600428d 	trunc.w.s	$f10,$f8
    9104:	440b5000 	mfc1	t3,$f10
    9108:	00000000 	nop
    910c:	a7ab0066 	sh	t3,102(sp)
    9110:	c6300008 	lwc1	$f16,8(s1)
    9114:	a7af006a 	sh	t7,106(sp)
    9118:	4600848d 	trunc.w.s	$f18,$f16
    911c:	440d9000 	mfc1	t5,$f18
    9120:	0c000000 	jal	0 <func_80038600>
    9124:	a7ad0068 	sh	t5,104(sp)
    9128:	1040000c 	beqz	v0,915c <func_80041648+0x114>
    912c:	02602025 	move	a0,s3
    9130:	32a5ffff 	andi	a1,s5,0xffff
    9134:	02c03025 	move	a2,s6
    9138:	02203825 	move	a3,s1
    913c:	e7b40010 	swc1	$f20,16(sp)
    9140:	afb00014 	sw	s0,20(sp)
    9144:	0c000000 	jal	0 <func_80038600>
    9148:	afb70018 	sw	s7,24(sp)
    914c:	50400004 	beqzl	v0,9160 <func_80041648+0x118>
    9150:	26100001 	addiu	s0,s0,1
    9154:	10000005 	b	916c <func_80041648+0x124>
    9158:	24020001 	li	v0,1
    915c:	26100001 	addiu	s0,s0,1
    9160:	161effd1 	bne	s0,s8,90a8 <func_80041648+0x60>
    9164:	26520002 	addiu	s2,s2,2
    9168:	00001025 	move	v0,zero
    916c:	8fbf0054 	lw	ra,84(sp)
    9170:	d7b40028 	ldc1	$f20,40(sp)
    9174:	8fb00030 	lw	s0,48(sp)
    9178:	8fb10034 	lw	s1,52(sp)
    917c:	8fb20038 	lw	s2,56(sp)
    9180:	8fb3003c 	lw	s3,60(sp)
    9184:	8fb40040 	lw	s4,64(sp)
    9188:	8fb50044 	lw	s5,68(sp)
    918c:	8fb60048 	lw	s6,72(sp)
    9190:	8fb7004c 	lw	s7,76(sp)
    9194:	8fbe0050 	lw	s8,80(sp)
    9198:	03e00008 	jr	ra
    919c:	27bd0070 	addiu	sp,sp,112

000091a0 <func_800417A0>:
    91a0:	8c820010 	lw	v0,16(a0)
    91a4:	3c080000 	lui	t0,0x0
    91a8:	25080000 	addiu	t0,t0,0
    91ac:	00027100 	sll	t6,v0,0x4
    91b0:	000e7f02 	srl	t7,t6,0x1c
    91b4:	000fc080 	sll	t8,t7,0x2
    91b8:	8c830018 	lw	v1,24(a0)
    91bc:	0118c821 	addu	t9,t0,t8
    91c0:	8f2b0000 	lw	t3,0(t9)
    91c4:	3c0900ff 	lui	t1,0xff
    91c8:	3529ffff 	ori	t1,t1,0xffff
    91cc:	00496024 	and	t4,v0,t1
    91d0:	00037900 	sll	t7,v1,0x4
    91d4:	3c0a8000 	lui	t2,0x8000
    91d8:	000fc702 	srl	t8,t7,0x1c
    91dc:	016c6821 	addu	t5,t3,t4
    91e0:	01aa7021 	addu	t6,t5,t2
    91e4:	0018c880 	sll	t9,t8,0x2
    91e8:	8c85001c 	lw	a1,28(a0)
    91ec:	ac8e0010 	sw	t6,16(a0)
    91f0:	01195821 	addu	t3,t0,t9
    91f4:	8d6c0000 	lw	t4,0(t3)
    91f8:	00696824 	and	t5,v1,t1
    91fc:	0005c100 	sll	t8,a1,0x4
    9200:	0018cf02 	srl	t9,t8,0x1c
    9204:	018d7021 	addu	t6,t4,t5
    9208:	01ca7821 	addu	t7,t6,t2
    920c:	00195880 	sll	t3,t9,0x2
    9210:	8c860020 	lw	a2,32(a0)
    9214:	ac8f0018 	sw	t7,24(a0)
    9218:	010b6021 	addu	t4,t0,t3
    921c:	8d8d0000 	lw	t5,0(t4)
    9220:	00a97024 	and	t6,a1,t1
    9224:	0006c900 	sll	t9,a2,0x4
    9228:	00195f02 	srl	t3,t9,0x1c
    922c:	01ae7821 	addu	t7,t5,t6
    9230:	01eac021 	addu	t8,t7,t2
    9234:	000b6080 	sll	t4,t3,0x2
    9238:	8c870028 	lw	a3,40(a0)
    923c:	ac98001c 	sw	t8,28(a0)
    9240:	010c6821 	addu	t5,t0,t4
    9244:	8dae0000 	lw	t6,0(t5)
    9248:	00c97824 	and	t7,a2,t1
    924c:	00075900 	sll	t3,a3,0x4
    9250:	000b6702 	srl	t4,t3,0x1c
    9254:	01cfc021 	addu	t8,t6,t7
    9258:	030ac821 	addu	t9,t8,t2
    925c:	000c6880 	sll	t5,t4,0x2
    9260:	ac990020 	sw	t9,32(a0)
    9264:	010d7021 	addu	t6,t0,t5
    9268:	8dcf0000 	lw	t7,0(t6)
    926c:	00e9c024 	and	t8,a3,t1
    9270:	01f8c821 	addu	t9,t7,t8
    9274:	032a5821 	addu	t3,t9,t2
    9278:	03e00008 	jr	ra
    927c:	ac8b0028 	sw	t3,40(a0)

00009280 <DynaPolyInfo_Alloc>:
    9280:	00047100 	sll	t6,a0,0x4
    9284:	000e7f02 	srl	t7,t6,0x1c
    9288:	000fc080 	sll	t8,t7,0x2
    928c:	3c190000 	lui	t9,0x0
    9290:	0338c821 	addu	t9,t9,t8
    9294:	3c0100ff 	lui	at,0xff
    9298:	8f390000 	lw	t9,0(t9)
    929c:	3421ffff 	ori	at,at,0xffff
    92a0:	00814024 	and	t0,a0,at
    92a4:	27bdffe8 	addiu	sp,sp,-24
    92a8:	3c018000 	lui	at,0x8000
    92ac:	03284821 	addu	t1,t9,t0
    92b0:	afbf0014 	sw	ra,20(sp)
    92b4:	01212021 	addu	a0,t1,at
    92b8:	0c000000 	jal	0 <func_80038600>
    92bc:	aca40000 	sw	a0,0(a1)
    92c0:	8fbf0014 	lw	ra,20(sp)
    92c4:	27bd0018 	addiu	sp,sp,24
    92c8:	03e00008 	jr	ra
    92cc:	00000000 	nop

000092d0 <func_800418D0>:
    92d0:	27bdffc8 	addiu	sp,sp,-56
    92d4:	afb30024 	sw	s3,36(sp)
    92d8:	afb60030 	sw	s6,48(sp)
    92dc:	afb5002c 	sw	s5,44(sp)
    92e0:	afb40028 	sw	s4,40(sp)
    92e4:	afb20020 	sw	s2,32(sp)
    92e8:	afb1001c 	sw	s1,28(sp)
    92ec:	24930050 	addiu	s3,a0,80
    92f0:	00a0a025 	move	s4,a1
    92f4:	afbf0034 	sw	ra,52(sp)
    92f8:	afb00018 	sw	s0,24(sp)
    92fc:	02609025 	move	s2,s3
    9300:	00008825 	move	s1,zero
    9304:	24150064 	li	s5,100
    9308:	24160032 	li	s6,50
    930c:	9642138c 	lhu	v0,5004(s2)
    9310:	304e0001 	andi	t6,v0,0x1
    9314:	11c0000b 	beqz	t6,9344 <func_800418D0+0x74>
    9318:	304f0002 	andi	t7,v0,0x2
    931c:	55e0000a 	bnezl	t7,9348 <func_800418D0+0x78>
    9320:	26310001 	addiu	s1,s1,1
    9324:	02350019 	multu	s1,s5
    9328:	02802025 	move	a0,s4
    932c:	0000c012 	mflo	t8
    9330:	02788021 	addu	s0,s3,t8
    9334:	0c000000 	jal	0 <func_80038600>
    9338:	8e050004 	lw	a1,4(s0)
    933c:	0c000000 	jal	0 <func_80038600>
    9340:	8e040008 	lw	a0,8(s0)
    9344:	26310001 	addiu	s1,s1,1
    9348:	1636fff0 	bne	s1,s6,930c <func_800418D0+0x3c>
    934c:	26520002 	addiu	s2,s2,2
    9350:	8fbf0034 	lw	ra,52(sp)
    9354:	8fb00018 	lw	s0,24(sp)
    9358:	8fb1001c 	lw	s1,28(sp)
    935c:	8fb20020 	lw	s2,32(sp)
    9360:	8fb30024 	lw	s3,36(sp)
    9364:	8fb40028 	lw	s4,40(sp)
    9368:	8fb5002c 	lw	s5,44(sp)
    936c:	8fb60030 	lw	s6,48(sp)
    9370:	03e00008 	jr	ra
    9374:	27bd0038 	addiu	sp,sp,56

00009378 <func_80041978>:
    9378:	8c820008 	lw	v0,8(a0)
    937c:	00457021 	addu	t6,v0,a1
    9380:	004e082b 	sltu	at,v0,t6
    9384:	10200008 	beqz	at,93a8 <func_80041978+0x30>
    9388:	00000000 	nop
    938c:	a0400000 	sb	zero,0(v0)
    9390:	8c8f0008 	lw	t7,8(a0)
    9394:	24420001 	addiu	v0,v0,1
    9398:	01e5c021 	addu	t8,t7,a1
    939c:	0058082b 	sltu	at,v0,t8
    93a0:	5420fffb 	bnezl	at,9390 <func_80041978+0x18>
    93a4:	a0400000 	sb	zero,0(v0)
    93a8:	03e00008 	jr	ra
    93ac:	00000000 	nop

000093b0 <func_800419B0>:
    93b0:	27bdffe8 	addiu	sp,sp,-24
    93b4:	afbf0014 	sw	ra,20(sp)
    93b8:	afa5001c 	sw	a1,28(sp)
    93bc:	afa70024 	sw	a3,36(sp)
    93c0:	0c000000 	jal	0 <func_80038600>
    93c4:	00c02825 	move	a1,a2
    93c8:	10400003 	beqz	v0,93d8 <func_800419B0+0x28>
    93cc:	8fa4001c 	lw	a0,28(sp)
    93d0:	14800003 	bnez	a0,93e0 <func_800419B0+0x30>
    93d4:	3c0f0000 	lui	t7,0x0
    93d8:	1000000f 	b	9418 <func_800419B0+0x68>
    93dc:	00001025 	move	v0,zero
    93e0:	8c43001c 	lw	v1,28(v0)
    93e4:	8def0000 	lw	t7,0(t7)
    93e8:	3c018000 	lui	at,0x8000
    93ec:	00617021 	addu	t6,v1,at
    93f0:	15cf0003 	bne	t6,t7,9400 <func_800419B0+0x50>
    93f4:	8fa90024 	lw	t1,36(sp)
    93f8:	10000007 	b	9418 <func_800419B0+0x68>
    93fc:	00001025 	move	v0,zero
    9400:	94980000 	lhu	t8,0(a0)
    9404:	00095080 	sll	t2,t1,0x2
    9408:	0018c8c0 	sll	t9,t8,0x3
    940c:	00794021 	addu	t0,v1,t9
    9410:	010a5821 	addu	t3,t0,t2
    9414:	8d620000 	lw	v0,0(t3)
    9418:	8fbf0014 	lw	ra,20(sp)
    941c:	27bd0018 	addiu	sp,sp,24
    9420:	03e00008 	jr	ra
    9424:	00000000 	nop

00009428 <func_80041A28>:
    9428:	27bdffe8 	addiu	sp,sp,-24
    942c:	afbf0014 	sw	ra,20(sp)
    9430:	0c000000 	jal	0 <func_80038600>
    9434:	00003825 	move	a3,zero
    9438:	8fbf0014 	lw	ra,20(sp)
    943c:	27bd0018 	addiu	sp,sp,24
    9440:	304200ff 	andi	v0,v0,0xff
    9444:	03e00008 	jr	ra
    9448:	00000000 	nop

0000944c <func_80041A4C>:
    944c:	27bdffe8 	addiu	sp,sp,-24
    9450:	afbf0014 	sw	ra,20(sp)
    9454:	afa5001c 	sw	a1,28(sp)
    9458:	0c000000 	jal	0 <func_80038600>
    945c:	00c02825 	move	a1,a2
    9460:	14400003 	bnez	v0,9470 <func_80041A4C+0x24>
    9464:	00402825 	move	a1,v0
    9468:	10000006 	b	9484 <func_80041A4C+0x38>
    946c:	00001025 	move	v0,zero
    9470:	8fae001c 	lw	t6,28(sp)
    9474:	8ca30020 	lw	v1,32(a1)
    9478:	000e78c0 	sll	t7,t6,0x3
    947c:	006fc021 	addu	t8,v1,t7
    9480:	97020000 	lhu	v0,0(t8)
    9484:	8fbf0014 	lw	ra,20(sp)
    9488:	27bd0018 	addiu	sp,sp,24
    948c:	03e00008 	jr	ra
    9490:	00000000 	nop
    9494:	27bdffe8 	addiu	sp,sp,-24
    9498:	afbf0014 	sw	ra,20(sp)
    949c:	afa5001c 	sw	a1,28(sp)
    94a0:	afa40018 	sw	a0,24(sp)
    94a4:	afa60020 	sw	a2,32(sp)
    94a8:	0c000000 	jal	0 <func_80038600>
    94ac:	00c02825 	move	a1,a2
    94b0:	14400003 	bnez	v0,94c0 <func_80041A4C+0x74>
    94b4:	3c040000 	lui	a0,0x0
    94b8:	10000016 	b	9514 <func_80041A4C+0xc8>
    94bc:	00001025 	move	v0,zero
    94c0:	8c840000 	lw	a0,0(a0)
    94c4:	8c430020 	lw	v1,32(v0)
    94c8:	3c018000 	lui	at,0x8000
    94cc:	00812021 	addu	a0,a0,at
    94d0:	54640004 	bnel	v1,a0,94e4 <func_80041A4C+0x98>
    94d4:	8c43001c 	lw	v1,28(v0)
    94d8:	1000000e 	b	9514 <func_80041A4C+0xc8>
    94dc:	00001025 	move	v0,zero
    94e0:	8c43001c 	lw	v1,28(v0)
    94e4:	8fa5001c 	lw	a1,28(sp)
    94e8:	8fa60020 	lw	a2,32(sp)
    94ec:	14640003 	bne	v1,a0,94fc <func_80041A4C+0xb0>
    94f0:	00000000 	nop
    94f4:	10000007 	b	9514 <func_80041A4C+0xc8>
    94f8:	00001025 	move	v0,zero
    94fc:	0c000000 	jal	0 <func_80038600>
    9500:	8fa40018 	lw	a0,24(sp)
    9504:	8fa40018 	lw	a0,24(sp)
    9508:	00402825 	move	a1,v0
    950c:	0c000000 	jal	0 <func_80038600>
    9510:	8fa60020 	lw	a2,32(sp)
    9514:	8fbf0014 	lw	ra,20(sp)
    9518:	27bd0018 	addiu	sp,sp,24
    951c:	03e00008 	jr	ra
    9520:	00000000 	nop

00009524 <func_80041B24>:
    9524:	27bdffe8 	addiu	sp,sp,-24
    9528:	afbf0014 	sw	ra,20(sp)
    952c:	afa5001c 	sw	a1,28(sp)
    9530:	0c000000 	jal	0 <func_80038600>
    9534:	00c02825 	move	a1,a2
    9538:	14400003 	bnez	v0,9548 <func_80041B24+0x24>
    953c:	8fbf0014 	lw	ra,20(sp)
    9540:	1000000d 	b	9578 <func_80041B24+0x54>
    9544:	00001025 	move	v0,zero
    9548:	8c430020 	lw	v1,32(v0)
    954c:	3c0f0000 	lui	t7,0x0
    9550:	8def0000 	lw	t7,0(t7)
    9554:	3c018000 	lui	at,0x8000
    9558:	00617021 	addu	t6,v1,at
    955c:	15cf0003 	bne	t6,t7,956c <func_80041B24+0x48>
    9560:	8fb8001c 	lw	t8,28(sp)
    9564:	10000004 	b	9578 <func_80041B24+0x54>
    9568:	00001025 	move	v0,zero
    956c:	0018c8c0 	sll	t9,t8,0x3
    9570:	00794021 	addu	t0,v1,t9
    9574:	95020002 	lhu	v0,2(t0)
    9578:	03e00008 	jr	ra
    957c:	27bd0018 	addiu	sp,sp,24

00009580 <func_80041B80>:
    9580:	27bdffe8 	addiu	sp,sp,-24
    9584:	afbf0014 	sw	ra,20(sp)
    9588:	afa5001c 	sw	a1,28(sp)
    958c:	afa40018 	sw	a0,24(sp)
    9590:	afa60020 	sw	a2,32(sp)
    9594:	0c000000 	jal	0 <func_80038600>
    9598:	00c02825 	move	a1,a2
    959c:	14400003 	bnez	v0,95ac <func_80041B80+0x2c>
    95a0:	3c040000 	lui	a0,0x0
    95a4:	10000016 	b	9600 <func_80041B80+0x80>
    95a8:	00001025 	move	v0,zero
    95ac:	8c840000 	lw	a0,0(a0)
    95b0:	8c430020 	lw	v1,32(v0)
    95b4:	3c018000 	lui	at,0x8000
    95b8:	00812021 	addu	a0,a0,at
    95bc:	54640004 	bnel	v1,a0,95d0 <func_80041B80+0x50>
    95c0:	8c43001c 	lw	v1,28(v0)
    95c4:	1000000e 	b	9600 <func_80041B80+0x80>
    95c8:	00001025 	move	v0,zero
    95cc:	8c43001c 	lw	v1,28(v0)
    95d0:	8fa5001c 	lw	a1,28(sp)
    95d4:	8fa60020 	lw	a2,32(sp)
    95d8:	14640003 	bne	v1,a0,95e8 <func_80041B80+0x68>
    95dc:	00000000 	nop
    95e0:	10000007 	b	9600 <func_80041B80+0x80>
    95e4:	00001025 	move	v0,zero
    95e8:	0c000000 	jal	0 <func_80038600>
    95ec:	8fa40018 	lw	a0,24(sp)
    95f0:	8fa40018 	lw	a0,24(sp)
    95f4:	00402825 	move	a1,v0
    95f8:	0c000000 	jal	0 <func_80038600>
    95fc:	8fa60020 	lw	a2,32(sp)
    9600:	8fbf0014 	lw	ra,20(sp)
    9604:	27bd0018 	addiu	sp,sp,24
    9608:	03e00008 	jr	ra
    960c:	00000000 	nop

00009610 <func_80041C10>:
    9610:	27bdffe8 	addiu	sp,sp,-24
    9614:	afbf0014 	sw	ra,20(sp)
    9618:	afa5001c 	sw	a1,28(sp)
    961c:	0c000000 	jal	0 <func_80038600>
    9620:	00c02825 	move	a1,a2
    9624:	14400003 	bnez	v0,9634 <func_80041C10+0x24>
    9628:	8fbf0014 	lw	ra,20(sp)
    962c:	10000018 	b	9690 <func_80041C10+0x80>
    9630:	00001025 	move	v0,zero
    9634:	3c050000 	lui	a1,0x0
    9638:	24a50000 	addiu	a1,a1,0
    963c:	8cae0000 	lw	t6,0(a1)
    9640:	8c440020 	lw	a0,32(v0)
    9644:	3c068000 	lui	a2,0x8000
    9648:	01c67821 	addu	t7,t6,a2
    964c:	148f0003 	bne	a0,t7,965c <func_80041C10+0x4c>
    9650:	8fb8001c 	lw	t8,28(sp)
    9654:	1000000e 	b	9690 <func_80041C10+0x80>
    9658:	00001025 	move	v0,zero
    965c:	0018c8c0 	sll	t9,t8,0x3
    9660:	00994021 	addu	t0,a0,t9
    9664:	8d030004 	lw	v1,4(t0)
    9668:	3c0100ff 	lui	at,0xff
    966c:	3421ffff 	ori	at,at,0xffff
    9670:	00035100 	sll	t2,v1,0x4
    9674:	000a5f02 	srl	t3,t2,0x1c
    9678:	000b6080 	sll	t4,t3,0x2
    967c:	00ac6821 	addu	t5,a1,t4
    9680:	8dae0000 	lw	t6,0(t5)
    9684:	00614824 	and	t1,v1,at
    9688:	012e7821 	addu	t7,t1,t6
    968c:	01e61021 	addu	v0,t7,a2
    9690:	03e00008 	jr	ra
    9694:	27bd0018 	addiu	sp,sp,24

00009698 <func_80041C98>:
    9698:	27bdffe8 	addiu	sp,sp,-24
    969c:	afbf0014 	sw	ra,20(sp)
    96a0:	afa5001c 	sw	a1,28(sp)
    96a4:	afa40018 	sw	a0,24(sp)
    96a8:	afa60020 	sw	a2,32(sp)
    96ac:	0c000000 	jal	0 <func_80038600>
    96b0:	00c02825 	move	a1,a2
    96b4:	14400003 	bnez	v0,96c4 <func_80041C98+0x2c>
    96b8:	3c040000 	lui	a0,0x0
    96bc:	10000016 	b	9718 <func_80041C98+0x80>
    96c0:	00001025 	move	v0,zero
    96c4:	8c840000 	lw	a0,0(a0)
    96c8:	8c430020 	lw	v1,32(v0)
    96cc:	3c018000 	lui	at,0x8000
    96d0:	00812021 	addu	a0,a0,at
    96d4:	54640004 	bnel	v1,a0,96e8 <func_80041C98+0x50>
    96d8:	8c43001c 	lw	v1,28(v0)
    96dc:	1000000e 	b	9718 <func_80041C98+0x80>
    96e0:	00001025 	move	v0,zero
    96e4:	8c43001c 	lw	v1,28(v0)
    96e8:	8fa5001c 	lw	a1,28(sp)
    96ec:	8fa60020 	lw	a2,32(sp)
    96f0:	14640003 	bne	v1,a0,9700 <func_80041C98+0x68>
    96f4:	00000000 	nop
    96f8:	10000007 	b	9718 <func_80041C98+0x80>
    96fc:	00001025 	move	v0,zero
    9700:	0c000000 	jal	0 <func_80038600>
    9704:	8fa40018 	lw	a0,24(sp)
    9708:	8fa40018 	lw	a0,24(sp)
    970c:	00402825 	move	a1,v0
    9710:	0c000000 	jal	0 <func_80038600>
    9714:	8fa60020 	lw	a2,32(sp)
    9718:	8fbf0014 	lw	ra,20(sp)
    971c:	27bd0018 	addiu	sp,sp,24
    9720:	03e00008 	jr	ra
    9724:	00000000 	nop

00009728 <func_80041D28>:
    9728:	27bdffe8 	addiu	sp,sp,-24
    972c:	afbf0014 	sw	ra,20(sp)
    9730:	0c000000 	jal	0 <func_80038600>
    9734:	00003825 	move	a3,zero
    9738:	8fbf0014 	lw	ra,20(sp)
    973c:	00021202 	srl	v0,v0,0x8
    9740:	3042001f 	andi	v0,v0,0x1f
    9744:	03e00008 	jr	ra
    9748:	27bd0018 	addiu	sp,sp,24

0000974c <func_80041D4C>:
    974c:	27bdffe8 	addiu	sp,sp,-24
    9750:	afbf0014 	sw	ra,20(sp)
    9754:	0c000000 	jal	0 <func_80038600>
    9758:	00003825 	move	a3,zero
    975c:	8fbf0014 	lw	ra,20(sp)
    9760:	00021342 	srl	v0,v0,0xd
    9764:	3042001f 	andi	v0,v0,0x1f
    9768:	03e00008 	jr	ra
    976c:	27bd0018 	addiu	sp,sp,24
    9770:	27bdffe8 	addiu	sp,sp,-24
    9774:	afbf0014 	sw	ra,20(sp)
    9778:	0c000000 	jal	0 <func_80038600>
    977c:	00003825 	move	a3,zero
    9780:	8fbf0014 	lw	ra,20(sp)
    9784:	00021482 	srl	v0,v0,0x12
    9788:	30420007 	andi	v0,v0,0x7
    978c:	03e00008 	jr	ra
    9790:	27bd0018 	addiu	sp,sp,24

00009794 <func_80041D94>:
    9794:	27bdffe8 	addiu	sp,sp,-24
    9798:	afbf0014 	sw	ra,20(sp)
    979c:	0c000000 	jal	0 <func_80038600>
    97a0:	00003825 	move	a3,zero
    97a4:	8fbf0014 	lw	ra,20(sp)
    97a8:	00021542 	srl	v0,v0,0x15
    97ac:	3042001f 	andi	v0,v0,0x1f
    97b0:	03e00008 	jr	ra
    97b4:	27bd0018 	addiu	sp,sp,24

000097b8 <func_80041DB8>:
    97b8:	27bdffe8 	addiu	sp,sp,-24
    97bc:	afbf0014 	sw	ra,20(sp)
    97c0:	0c000000 	jal	0 <func_80038600>
    97c4:	00000000 	nop
    97c8:	00027080 	sll	t6,v0,0x2
    97cc:	8fbf0014 	lw	ra,20(sp)
    97d0:	3c020000 	lui	v0,0x0
    97d4:	004e1021 	addu	v0,v0,t6
    97d8:	8c420000 	lw	v0,0(v0)
    97dc:	03e00008 	jr	ra
    97e0:	27bd0018 	addiu	sp,sp,24

000097e4 <func_80041DE4>:
    97e4:	27bdffe8 	addiu	sp,sp,-24
    97e8:	afbf0014 	sw	ra,20(sp)
    97ec:	0c000000 	jal	0 <func_80038600>
    97f0:	00000000 	nop
    97f4:	304e0001 	andi	t6,v0,0x1
    97f8:	11c00003 	beqz	t6,9808 <func_80041DE4+0x24>
    97fc:	8fbf0014 	lw	ra,20(sp)
    9800:	10000002 	b	980c <func_80041DE4+0x28>
    9804:	24030001 	li	v1,1
    9808:	00001825 	move	v1,zero
    980c:	00601025 	move	v0,v1
    9810:	03e00008 	jr	ra
    9814:	27bd0018 	addiu	sp,sp,24

00009818 <func_80041E18>:
    9818:	27bdffe8 	addiu	sp,sp,-24
    981c:	afbf0014 	sw	ra,20(sp)
    9820:	0c000000 	jal	0 <func_80038600>
    9824:	00000000 	nop
    9828:	304e0002 	andi	t6,v0,0x2
    982c:	11c00003 	beqz	t6,983c <func_80041E18+0x24>
    9830:	8fbf0014 	lw	ra,20(sp)
    9834:	10000002 	b	9840 <func_80041E18+0x28>
    9838:	24030001 	li	v1,1
    983c:	00001825 	move	v1,zero
    9840:	00601025 	move	v0,v1
    9844:	03e00008 	jr	ra
    9848:	27bd0018 	addiu	sp,sp,24

0000984c <func_80041E4C>:
    984c:	27bdffe8 	addiu	sp,sp,-24
    9850:	afbf0014 	sw	ra,20(sp)
    9854:	0c000000 	jal	0 <func_80038600>
    9858:	00000000 	nop
    985c:	304e0004 	andi	t6,v0,0x4
    9860:	11c00003 	beqz	t6,9870 <func_80041E4C+0x24>
    9864:	8fbf0014 	lw	ra,20(sp)
    9868:	10000002 	b	9874 <func_80041E4C+0x28>
    986c:	24030001 	li	v1,1
    9870:	00001825 	move	v1,zero
    9874:	00601025 	move	v0,v1
    9878:	03e00008 	jr	ra
    987c:	27bd0018 	addiu	sp,sp,24
    9880:	27bdffe8 	addiu	sp,sp,-24
    9884:	afbf0014 	sw	ra,20(sp)
    9888:	0c000000 	jal	0 <func_80038600>
    988c:	00003825 	move	a3,zero
    9890:	8fbf0014 	lw	ra,20(sp)
    9894:	00021682 	srl	v0,v0,0x1a
    9898:	3042000f 	andi	v0,v0,0xf
    989c:	03e00008 	jr	ra
    98a0:	27bd0018 	addiu	sp,sp,24

000098a4 <func_80041EA4>:
    98a4:	27bdffe8 	addiu	sp,sp,-24
    98a8:	afbf0014 	sw	ra,20(sp)
    98ac:	0c000000 	jal	0 <func_80038600>
    98b0:	00003825 	move	a3,zero
    98b4:	8fbf0014 	lw	ra,20(sp)
    98b8:	00021682 	srl	v0,v0,0x1a
    98bc:	3042000f 	andi	v0,v0,0xf
    98c0:	03e00008 	jr	ra
    98c4:	27bd0018 	addiu	sp,sp,24

000098c8 <func_80041EC8>:
    98c8:	27bdffe8 	addiu	sp,sp,-24
    98cc:	afbf0014 	sw	ra,20(sp)
    98d0:	0c000000 	jal	0 <func_80038600>
    98d4:	00003825 	move	a3,zero
    98d8:	8fbf0014 	lw	ra,20(sp)
    98dc:	00021782 	srl	v0,v0,0x1e
    98e0:	30420001 	andi	v0,v0,0x1
    98e4:	03e00008 	jr	ra
    98e8:	27bd0018 	addiu	sp,sp,24

000098ec <func_80041EEC>:
    98ec:	27bdffe8 	addiu	sp,sp,-24
    98f0:	afbf0014 	sw	ra,20(sp)
    98f4:	0c000000 	jal	0 <func_80038600>
    98f8:	00003825 	move	a3,zero
    98fc:	8fbf0014 	lw	ra,20(sp)
    9900:	000217c2 	srl	v0,v0,0x1f
    9904:	30420001 	andi	v0,v0,0x1
    9908:	03e00008 	jr	ra
    990c:	27bd0018 	addiu	sp,sp,24

00009910 <func_80041F10>:
    9910:	27bdffe8 	addiu	sp,sp,-24
    9914:	afbf0014 	sw	ra,20(sp)
    9918:	0c000000 	jal	0 <func_80038600>
    991c:	24070001 	li	a3,1
    9920:	8fbf0014 	lw	ra,20(sp)
    9924:	27bd0018 	addiu	sp,sp,24
    9928:	3042000f 	andi	v0,v0,0xf
    992c:	03e00008 	jr	ra
    9930:	00000000 	nop

00009934 <func_80041F34>:
    9934:	27bdffe8 	addiu	sp,sp,-24
    9938:	afbf0014 	sw	ra,20(sp)
    993c:	0c000000 	jal	0 <func_80038600>
    9940:	00000000 	nop
    9944:	04400004 	bltz	v0,9958 <func_80041F34+0x24>
    9948:	00401825 	move	v1,v0
    994c:	2841000e 	slti	at,v0,14
    9950:	14200003 	bnez	at,9960 <func_80041F34+0x2c>
    9954:	00037040 	sll	t6,v1,0x1
    9958:	10000004 	b	996c <func_80041F34+0x38>
    995c:	00001025 	move	v0,zero
    9960:	3c020000 	lui	v0,0x0
    9964:	004e1021 	addu	v0,v0,t6
    9968:	94420000 	lhu	v0,0(v0)
    996c:	8fbf0014 	lw	ra,20(sp)
    9970:	27bd0018 	addiu	sp,sp,24
    9974:	03e00008 	jr	ra
    9978:	00000000 	nop

0000997c <func_80041F7C>:
    997c:	27bdffe8 	addiu	sp,sp,-24
    9980:	afbf0014 	sw	ra,20(sp)
    9984:	0c000000 	jal	0 <func_80038600>
    9988:	24070001 	li	a3,1
    998c:	8fbf0014 	lw	ra,20(sp)
    9990:	00021102 	srl	v0,v0,0x4
    9994:	30420003 	andi	v0,v0,0x3
    9998:	03e00008 	jr	ra
    999c:	27bd0018 	addiu	sp,sp,24

000099a0 <func_80041FA0>:
    99a0:	27bdffe8 	addiu	sp,sp,-24
    99a4:	afbf0014 	sw	ra,20(sp)
    99a8:	0c000000 	jal	0 <func_80038600>
    99ac:	24070001 	li	a3,1
    99b0:	8fbf0014 	lw	ra,20(sp)
    99b4:	00021182 	srl	v0,v0,0x6
    99b8:	3042001f 	andi	v0,v0,0x1f
    99bc:	03e00008 	jr	ra
    99c0:	27bd0018 	addiu	sp,sp,24

000099c4 <func_80041FC4>:
    99c4:	27bdffe8 	addiu	sp,sp,-24
    99c8:	afbf0014 	sw	ra,20(sp)
    99cc:	0c000000 	jal	0 <func_80038600>
    99d0:	24070001 	li	a3,1
    99d4:	8fbf0014 	lw	ra,20(sp)
    99d8:	000212c2 	srl	v0,v0,0xb
    99dc:	3042003f 	andi	v0,v0,0x3f
    99e0:	03e00008 	jr	ra
    99e4:	27bd0018 	addiu	sp,sp,24

000099e8 <func_80041FE8>:
    99e8:	27bdffe8 	addiu	sp,sp,-24
    99ec:	afbf0014 	sw	ra,20(sp)
    99f0:	0c000000 	jal	0 <func_80038600>
    99f4:	24070001 	li	a3,1
    99f8:	8fbf0014 	lw	ra,20(sp)
    99fc:	00021442 	srl	v0,v0,0x11
    9a00:	30420001 	andi	v0,v0,0x1
    9a04:	03e00008 	jr	ra
    9a08:	27bd0018 	addiu	sp,sp,24

00009a0c <func_8004200C>:
    9a0c:	27bdffe8 	addiu	sp,sp,-24
    9a10:	afbf0014 	sw	ra,20(sp)
    9a14:	afa5001c 	sw	a1,28(sp)
    9a18:	0c000000 	jal	0 <func_80038600>
    9a1c:	00c02825 	move	a1,a2
    9a20:	14400003 	bnez	v0,9a30 <func_8004200C+0x24>
    9a24:	8fbf0014 	lw	ra,20(sp)
    9a28:	10000005 	b	9a40 <func_8004200C+0x34>
    9a2c:	24020001 	li	v0,1
    9a30:	8fae001c 	lw	t6,28(sp)
    9a34:	95c30002 	lhu	v1,2(t6)
    9a38:	30634000 	andi	v1,v1,0x4000
    9a3c:	0003102b 	sltu	v0,zero,v1
    9a40:	03e00008 	jr	ra
    9a44:	27bd0018 	addiu	sp,sp,24

00009a48 <func_80042048>:
    9a48:	27bdffe8 	addiu	sp,sp,-24
    9a4c:	afbf0014 	sw	ra,20(sp)
    9a50:	afa5001c 	sw	a1,28(sp)
    9a54:	0c000000 	jal	0 <func_80038600>
    9a58:	00c02825 	move	a1,a2
    9a5c:	14400003 	bnez	v0,9a6c <func_80042048+0x24>
    9a60:	8fbf0014 	lw	ra,20(sp)
    9a64:	10000005 	b	9a7c <func_80042048+0x34>
    9a68:	24020001 	li	v0,1
    9a6c:	8fae001c 	lw	t6,28(sp)
    9a70:	95c30002 	lhu	v1,2(t6)
    9a74:	30638000 	andi	v1,v1,0x8000
    9a78:	0003102b 	sltu	v0,zero,v1
    9a7c:	03e00008 	jr	ra
    9a80:	27bd0018 	addiu	sp,sp,24

00009a84 <func_80042084>:
    9a84:	27bdffe8 	addiu	sp,sp,-24
    9a88:	afbf0014 	sw	ra,20(sp)
    9a8c:	afa5001c 	sw	a1,28(sp)
    9a90:	0c000000 	jal	0 <func_80038600>
    9a94:	00c02825 	move	a1,a2
    9a98:	14400003 	bnez	v0,9aa8 <func_80042084+0x24>
    9a9c:	8fbf0014 	lw	ra,20(sp)
    9aa0:	10000005 	b	9ab8 <func_80042084+0x34>
    9aa4:	24020001 	li	v0,1
    9aa8:	8fae001c 	lw	t6,28(sp)
    9aac:	95c30004 	lhu	v1,4(t6)
    9ab0:	30632000 	andi	v1,v1,0x2000
    9ab4:	0003102b 	sltu	v0,zero,v1
    9ab8:	03e00008 	jr	ra
    9abc:	27bd0018 	addiu	sp,sp,24

00009ac0 <func_800420C0>:
    9ac0:	27bdffe8 	addiu	sp,sp,-24
    9ac4:	afbf0014 	sw	ra,20(sp)
    9ac8:	0c000000 	jal	0 <func_80038600>
    9acc:	24070001 	li	a3,1
    9ad0:	8fbf0014 	lw	ra,20(sp)
    9ad4:	00021482 	srl	v0,v0,0x12
    9ad8:	30420007 	andi	v0,v0,0x7
    9adc:	03e00008 	jr	ra
    9ae0:	27bd0018 	addiu	sp,sp,24

00009ae4 <func_800420E4>:
    9ae4:	27bdffe8 	addiu	sp,sp,-24
    9ae8:	afbf0014 	sw	ra,20(sp)
    9aec:	0c000000 	jal	0 <func_80038600>
    9af0:	24070001 	li	a3,1
    9af4:	8fbf0014 	lw	ra,20(sp)
    9af8:	00021542 	srl	v0,v0,0x15
    9afc:	3042003f 	andi	v0,v0,0x3f
    9b00:	03e00008 	jr	ra
    9b04:	27bd0018 	addiu	sp,sp,24

00009b08 <func_80042108>:
    9b08:	27bdffe8 	addiu	sp,sp,-24
    9b0c:	afbf0014 	sw	ra,20(sp)
    9b10:	0c000000 	jal	0 <func_80038600>
    9b14:	24070001 	li	a3,1
    9b18:	00027100 	sll	t6,v0,0x4
    9b1c:	05c10003 	bgez	t6,9b2c <func_80042108+0x24>
    9b20:	8fbf0014 	lw	ra,20(sp)
    9b24:	10000002 	b	9b30 <func_80042108+0x28>
    9b28:	24030001 	li	v1,1
    9b2c:	00001825 	move	v1,zero
    9b30:	00601025 	move	v0,v1
    9b34:	03e00008 	jr	ra
    9b38:	27bd0018 	addiu	sp,sp,24

00009b3c <func_8004213C>:
    9b3c:	27bdffe0 	addiu	sp,sp,-32
    9b40:	afbf001c 	sw	ra,28(sp)
    9b44:	848e00a4 	lh	t6,164(a0)
    9b48:	44866000 	mtc1	a2,$f12
    9b4c:	44877000 	mtc1	a3,$f14
    9b50:	24010058 	li	at,88
    9b54:	15c10030 	bne	t6,at,9c18 <func_8004213C+0xdc>
    9b58:	3c010000 	lui	at,0x0
    9b5c:	c4240000 	lwc1	$f4,0(at)
    9b60:	3c010000 	lui	at,0x0
    9b64:	460c203c 	c.lt.s	$f4,$f12
    9b68:	00000000 	nop
    9b6c:	4502002b 	bc1fl	9c1c <func_8004213C+0xe0>
    9b70:	8fa80030 	lw	t0,48(sp)
    9b74:	c4260000 	lwc1	$f6,0(at)
    9b78:	3c010000 	lui	at,0x0
    9b7c:	8fa80030 	lw	t0,48(sp)
    9b80:	4606603c 	c.lt.s	$f12,$f6
    9b84:	00000000 	nop
    9b88:	45020024 	bc1fl	9c1c <func_8004213C+0xe0>
    9b8c:	8fa80030 	lw	t0,48(sp)
    9b90:	c5000000 	lwc1	$f0,0(t0)
    9b94:	c4280000 	lwc1	$f8,0(at)
    9b98:	3c010000 	lui	at,0x0
    9b9c:	4600403c 	c.lt.s	$f8,$f0
    9ba0:	00000000 	nop
    9ba4:	4502001d 	bc1fl	9c1c <func_8004213C+0xe0>
    9ba8:	8fa80030 	lw	t0,48(sp)
    9bac:	c42a0000 	lwc1	$f10,0(at)
    9bb0:	3c010000 	lui	at,0x0
    9bb4:	460a003c 	c.lt.s	$f0,$f10
    9bb8:	00000000 	nop
    9bbc:	45020017 	bc1fl	9c1c <func_8004213C+0xe0>
    9bc0:	8fa80030 	lw	t0,48(sp)
    9bc4:	c4300000 	lwc1	$f16,0(at)
    9bc8:	3c010000 	lui	at,0x0
    9bcc:	460e803c 	c.lt.s	$f16,$f14
    9bd0:	00000000 	nop
    9bd4:	45020011 	bc1fl	9c1c <func_8004213C+0xe0>
    9bd8:	8fa80030 	lw	t0,48(sp)
    9bdc:	c4320000 	lwc1	$f18,0(at)
    9be0:	8faf0034 	lw	t7,52(sp)
    9be4:	4612703c 	c.lt.s	$f14,$f18
    9be8:	00000000 	nop
    9bec:	4500000a 	bc1f	9c18 <func_8004213C+0xdc>
    9bf0:	3c030000 	lui	v1,0x0
    9bf4:	24630000 	addiu	v1,v1,0
    9bf8:	ade30000 	sw	v1,0(t7)
    9bfc:	84780002 	lh	t8,2(v1)
    9c00:	24020001 	li	v0,1
    9c04:	44982000 	mtc1	t8,$f4
    9c08:	00000000 	nop
    9c0c:	468021a0 	cvt.s.w	$f6,$f4
    9c10:	10000008 	b	9c34 <func_8004213C+0xf8>
    9c14:	e5060000 	swc1	$f6,0(t0)
    9c18:	8fa80030 	lw	t0,48(sp)
    9c1c:	8fb90034 	lw	t9,52(sp)
    9c20:	44066000 	mfc1	a2,$f12
    9c24:	44077000 	mfc1	a3,$f14
    9c28:	afa80010 	sw	t0,16(sp)
    9c2c:	0c000000 	jal	0 <func_80038600>
    9c30:	afb90014 	sw	t9,20(sp)
    9c34:	8fbf001c 	lw	ra,28(sp)
    9c38:	27bd0020 	addiu	sp,sp,32
    9c3c:	03e00008 	jr	ra
    9c40:	00000000 	nop

00009c44 <func_80042244>:
    9c44:	afa40000 	sw	a0,0(sp)
    9c48:	8ca20000 	lw	v0,0(a1)
    9c4c:	44866000 	mtc1	a2,$f12
    9c50:	44877000 	mtc1	a3,$f14
    9c54:	94430024 	lhu	v1,36(v0)
    9c58:	00803025 	move	a2,a0
    9c5c:	3c0f0000 	lui	t7,0x0
    9c60:	10600007 	beqz	v1,9c80 <func_80042244+0x3c>
    9c64:	00000000 	nop
    9c68:	8c440028 	lw	a0,40(v0)
    9c6c:	8def0000 	lw	t7,0(t7)
    9c70:	3c018000 	lui	at,0x8000
    9c74:	00817021 	addu	t6,a0,at
    9c78:	15cf0003 	bne	t6,t7,9c88 <func_80042244+0x44>
    9c7c:	0003c100 	sll	t8,v1,0x4
    9c80:	03e00008 	jr	ra
    9c84:	00001025 	move	v0,zero
    9c88:	00981021 	addu	v0,a0,t8
    9c8c:	0082082b 	sltu	at,a0,v0
    9c90:	1020003f 	beqz	at,9d90 <func_80042244+0x14c>
    9c94:	00802825 	move	a1,a0
    9c98:	3c070001 	lui	a3,0x1
    9c9c:	00e63821 	addu	a3,a3,a2
    9ca0:	80e71cbc 	lb	a3,7356(a3)
    9ca4:	2406003f 	li	a2,63
    9ca8:	3c080008 	lui	t0,0x8
    9cac:	8ca4000c 	lw	a0,12(a1)
    9cb0:	00041b42 	srl	v1,a0,0xd
    9cb4:	3063003f 	andi	v1,v1,0x3f
    9cb8:	10670003 	beq	v1,a3,9cc8 <func_80042244+0x84>
    9cbc:	0088c824 	and	t9,a0,t0
    9cc0:	54660030 	bnel	v1,a2,9d84 <func_80042244+0x140>
    9cc4:	24a50010 	addiu	a1,a1,16
    9cc8:	5720002e 	bnezl	t9,9d84 <func_80042244+0x140>
    9ccc:	24a50010 	addiu	a1,a1,16
    9cd0:	84a30000 	lh	v1,0(a1)
    9cd4:	44832000 	mtc1	v1,$f4
    9cd8:	00000000 	nop
    9cdc:	468021a0 	cvt.s.w	$f6,$f4
    9ce0:	460c303c 	c.lt.s	$f6,$f12
    9ce4:	00000000 	nop
    9ce8:	45020026 	bc1fl	9d84 <func_80042244+0x140>
    9cec:	24a50010 	addiu	a1,a1,16
    9cf0:	84a90006 	lh	t1,6(a1)
    9cf4:	00695021 	addu	t2,v1,t1
    9cf8:	448a4000 	mtc1	t2,$f8
    9cfc:	00000000 	nop
    9d00:	468042a0 	cvt.s.w	$f10,$f8
    9d04:	460a603c 	c.lt.s	$f12,$f10
    9d08:	00000000 	nop
    9d0c:	4502001d 	bc1fl	9d84 <func_80042244+0x140>
    9d10:	24a50010 	addiu	a1,a1,16
    9d14:	84a30004 	lh	v1,4(a1)
    9d18:	44838000 	mtc1	v1,$f16
    9d1c:	00000000 	nop
    9d20:	468084a0 	cvt.s.w	$f18,$f16
    9d24:	460e903c 	c.lt.s	$f18,$f14
    9d28:	00000000 	nop
    9d2c:	45020015 	bc1fl	9d84 <func_80042244+0x140>
    9d30:	24a50010 	addiu	a1,a1,16
    9d34:	84ab0008 	lh	t3,8(a1)
    9d38:	006b6021 	addu	t4,v1,t3
    9d3c:	448c2000 	mtc1	t4,$f4
    9d40:	00000000 	nop
    9d44:	468021a0 	cvt.s.w	$f6,$f4
    9d48:	4606703c 	c.lt.s	$f14,$f6
    9d4c:	00000000 	nop
    9d50:	4502000c 	bc1fl	9d84 <func_80042244+0x140>
    9d54:	24a50010 	addiu	a1,a1,16
    9d58:	8fad0014 	lw	t5,20(sp)
    9d5c:	24020001 	li	v0,1
    9d60:	ada50000 	sw	a1,0(t5)
    9d64:	84ae0002 	lh	t6,2(a1)
    9d68:	8faf0010 	lw	t7,16(sp)
    9d6c:	448e4000 	mtc1	t6,$f8
    9d70:	00000000 	nop
    9d74:	468042a0 	cvt.s.w	$f10,$f8
    9d78:	03e00008 	jr	ra
    9d7c:	e5ea0000 	swc1	$f10,0(t7)
    9d80:	24a50010 	addiu	a1,a1,16
    9d84:	00a2082b 	sltu	at,a1,v0
    9d88:	5420ffc9 	bnezl	at,9cb0 <func_80042244+0x6c>
    9d8c:	8ca4000c 	lw	a0,12(a1)
    9d90:	00001025 	move	v0,zero
    9d94:	03e00008 	jr	ra
    9d98:	00000000 	nop

00009d9c <func_8004239C>:
    9d9c:	27bdfff8 	addiu	sp,sp,-8
    9da0:	afb00004 	sw	s0,4(sp)
    9da4:	afa40008 	sw	a0,8(sp)
    9da8:	8ca20000 	lw	v0,0(a1)
    9dac:	44876000 	mtc1	a3,$f12
    9db0:	00c08025 	move	s0,a2
    9db4:	94470024 	lhu	a3,36(v0)
    9db8:	3c0f0000 	lui	t7,0x0
    9dbc:	8fb80018 	lw	t8,24(sp)
    9dc0:	50e00008 	beqzl	a3,9de4 <func_8004239C+0x48>
    9dc4:	af000000 	sw	zero,0(t8)
    9dc8:	8c430028 	lw	v1,40(v0)
    9dcc:	8def0000 	lw	t7,0(t7)
    9dd0:	3c018000 	lui	at,0x8000
    9dd4:	00617021 	addu	t6,v1,at
    9dd8:	15cf0004 	bne	t6,t7,9dec <func_8004239C+0x50>
    9ddc:	00000000 	nop
    9de0:	af000000 	sw	zero,0(t8)
    9de4:	10000051 	b	9f2c <func_8004239C+0x190>
    9de8:	2402ffff 	li	v0,-1
    9dec:	18e0004c 	blez	a3,9f20 <func_8004239C+0x184>
    9df0:	00002025 	move	a0,zero
    9df4:	8fb90008 	lw	t9,8(sp)
    9df8:	3c080001 	lui	t0,0x1
    9dfc:	00601025 	move	v0,v1
    9e00:	01194021 	addu	t0,t0,t9
    9e04:	81081cbc 	lb	t0,7356(t0)
    9e08:	3c0a0008 	lui	t2,0x8
    9e0c:	2409003f 	li	t1,63
    9e10:	8c46000c 	lw	a2,12(v0)
    9e14:	00401825 	move	v1,v0
    9e18:	00062b42 	srl	a1,a2,0xd
    9e1c:	30a5003f 	andi	a1,a1,0x3f
    9e20:	10a80003 	beq	a1,t0,9e30 <func_8004239C+0x94>
    9e24:	00ca5824 	and	t3,a2,t2
    9e28:	54a9003a 	bnel	a1,t1,9f14 <func_8004239C+0x178>
    9e2c:	24840001 	addiu	a0,a0,1
    9e30:	55600038 	bnezl	t3,9f14 <func_8004239C+0x178>
    9e34:	24840001 	addiu	a0,a0,1
    9e38:	84650000 	lh	a1,0(v1)
    9e3c:	c6000000 	lwc1	$f0,0(s0)
    9e40:	44852000 	mtc1	a1,$f4
    9e44:	00000000 	nop
    9e48:	468021a0 	cvt.s.w	$f6,$f4
    9e4c:	4600303c 	c.lt.s	$f6,$f0
    9e50:	00000000 	nop
    9e54:	4502002f 	bc1fl	9f14 <func_8004239C+0x178>
    9e58:	24840001 	addiu	a0,a0,1
    9e5c:	846c0006 	lh	t4,6(v1)
    9e60:	00ac6821 	addu	t5,a1,t4
    9e64:	448d4000 	mtc1	t5,$f8
    9e68:	00000000 	nop
    9e6c:	468042a0 	cvt.s.w	$f10,$f8
    9e70:	460a003c 	c.lt.s	$f0,$f10
    9e74:	00000000 	nop
    9e78:	45020026 	bc1fl	9f14 <func_8004239C+0x178>
    9e7c:	24840001 	addiu	a0,a0,1
    9e80:	84650004 	lh	a1,4(v1)
    9e84:	c6000008 	lwc1	$f0,8(s0)
    9e88:	44858000 	mtc1	a1,$f16
    9e8c:	00000000 	nop
    9e90:	468084a0 	cvt.s.w	$f18,$f16
    9e94:	4600903c 	c.lt.s	$f18,$f0
    9e98:	00000000 	nop
    9e9c:	4502001d 	bc1fl	9f14 <func_8004239C+0x178>
    9ea0:	24840001 	addiu	a0,a0,1
    9ea4:	846e0008 	lh	t6,8(v1)
    9ea8:	00ae7821 	addu	t7,a1,t6
    9eac:	448f2000 	mtc1	t7,$f4
    9eb0:	00000000 	nop
    9eb4:	468021a0 	cvt.s.w	$f6,$f4
    9eb8:	4606003c 	c.lt.s	$f0,$f6
    9ebc:	00000000 	nop
    9ec0:	45020014 	bc1fl	9f14 <func_8004239C+0x178>
    9ec4:	24840001 	addiu	a0,a0,1
    9ec8:	84780002 	lh	t8,2(v1)
    9ecc:	c6000004 	lwc1	$f0,4(s0)
    9ed0:	44984000 	mtc1	t8,$f8
    9ed4:	460c0281 	sub.s	$f10,$f0,$f12
    9ed8:	468040a0 	cvt.s.w	$f2,$f8
    9edc:	4602503c 	c.lt.s	$f10,$f2
    9ee0:	00000000 	nop
    9ee4:	4502000b 	bc1fl	9f14 <func_8004239C+0x178>
    9ee8:	24840001 	addiu	a0,a0,1
    9eec:	460c0400 	add.s	$f16,$f0,$f12
    9ef0:	4610103c 	c.lt.s	$f2,$f16
    9ef4:	00000000 	nop
    9ef8:	45020006 	bc1fl	9f14 <func_8004239C+0x178>
    9efc:	24840001 	addiu	a0,a0,1
    9f00:	8fb90018 	lw	t9,24(sp)
    9f04:	00801025 	move	v0,a0
    9f08:	10000008 	b	9f2c <func_8004239C+0x190>
    9f0c:	af230000 	sw	v1,0(t9)
    9f10:	24840001 	addiu	a0,a0,1
    9f14:	0087082a 	slt	at,a0,a3
    9f18:	1420ffbd 	bnez	at,9e10 <func_8004239C+0x74>
    9f1c:	24420010 	addiu	v0,v0,16
    9f20:	8fab0018 	lw	t3,24(sp)
    9f24:	2402ffff 	li	v0,-1
    9f28:	ad600000 	sw	zero,0(t3)
    9f2c:	8fb00004 	lw	s0,4(sp)
    9f30:	03e00008 	jr	ra
    9f34:	27bd0008 	addiu	sp,sp,8

00009f38 <func_80042538>:
    9f38:	afa40000 	sw	a0,0(sp)
    9f3c:	8ca3000c 	lw	v1,12(a1)
    9f40:	03e00008 	jr	ra
    9f44:	306200ff 	andi	v0,v1,0xff

00009f48 <func_80042548>:
    9f48:	27bdffe8 	addiu	sp,sp,-24
    9f4c:	afbf0014 	sw	ra,20(sp)
    9f50:	0c000000 	jal	0 <func_80038600>
    9f54:	afa40018 	sw	a0,24(sp)
    9f58:	8fae0018 	lw	t6,24(sp)
    9f5c:	3c190000 	lui	t9,0x0
    9f60:	8f390000 	lw	t9,0(t9)
    9f64:	8dcf0000 	lw	t7,0(t6)
    9f68:	00402825 	move	a1,v0
    9f6c:	3c018000 	lui	at,0x8000
    9f70:	8de40020 	lw	a0,32(t7)
    9f74:	000540c0 	sll	t0,a1,0x3
    9f78:	8fbf0014 	lw	ra,20(sp)
    9f7c:	0081c021 	addu	t8,a0,at
    9f80:	17190003 	bne	t8,t9,9f90 <func_80042548+0x48>
    9f84:	00884821 	addu	t1,a0,t0
    9f88:	10000002 	b	9f94 <func_80042548+0x4c>
    9f8c:	00001025 	move	v0,zero
    9f90:	95220000 	lhu	v0,0(t1)
    9f94:	03e00008 	jr	ra
    9f98:	27bd0018 	addiu	sp,sp,24

00009f9c <func_8004259C>:
    9f9c:	afa40000 	sw	a0,0(sp)
    9fa0:	8ca3000c 	lw	v1,12(a1)
    9fa4:	00031a02 	srl	v1,v1,0x8
    9fa8:	03e00008 	jr	ra
    9fac:	3062001f 	andi	v0,v1,0x1f
    9fb0:	afa40000 	sw	a0,0(sp)
    9fb4:	8ca20000 	lw	v0,0(a1)
    9fb8:	44866000 	mtc1	a2,$f12
    9fbc:	44877000 	mtc1	a3,$f14
    9fc0:	94430024 	lhu	v1,36(v0)
    9fc4:	00803025 	move	a2,a0
    9fc8:	3c0f0000 	lui	t7,0x0
    9fcc:	10600007 	beqz	v1,9fec <func_8004259C+0x50>
    9fd0:	00000000 	nop
    9fd4:	8c440028 	lw	a0,40(v0)
    9fd8:	8def0000 	lw	t7,0(t7)
    9fdc:	3c018000 	lui	at,0x8000
    9fe0:	00817021 	addu	t6,a0,at
    9fe4:	15cf0003 	bne	t6,t7,9ff4 <func_8004259C+0x58>
    9fe8:	0003c100 	sll	t8,v1,0x4
    9fec:	03e00008 	jr	ra
    9ff0:	00001025 	move	v0,zero
    9ff4:	00981021 	addu	v0,a0,t8
    9ff8:	0082082b 	sltu	at,a0,v0
    9ffc:	1020003f 	beqz	at,a0fc <func_8004259C+0x160>
    a000:	00802825 	move	a1,a0
    a004:	3c070001 	lui	a3,0x1
    a008:	00e63821 	addu	a3,a3,a2
    a00c:	80e71cbc 	lb	a3,7356(a3)
    a010:	2406003f 	li	a2,63
    a014:	3c080008 	lui	t0,0x8
    a018:	8ca4000c 	lw	a0,12(a1)
    a01c:	00041b42 	srl	v1,a0,0xd
    a020:	3063003f 	andi	v1,v1,0x3f
    a024:	10670003 	beq	v1,a3,a034 <func_8004259C+0x98>
    a028:	0088c824 	and	t9,a0,t0
    a02c:	54660030 	bnel	v1,a2,a0f0 <func_8004259C+0x154>
    a030:	24a50010 	addiu	a1,a1,16
    a034:	5320002e 	beqzl	t9,a0f0 <func_8004259C+0x154>
    a038:	24a50010 	addiu	a1,a1,16
    a03c:	84a30000 	lh	v1,0(a1)
    a040:	44832000 	mtc1	v1,$f4
    a044:	00000000 	nop
    a048:	468021a0 	cvt.s.w	$f6,$f4
    a04c:	460c303c 	c.lt.s	$f6,$f12
    a050:	00000000 	nop
    a054:	45020026 	bc1fl	a0f0 <func_8004259C+0x154>
    a058:	24a50010 	addiu	a1,a1,16
    a05c:	84a90006 	lh	t1,6(a1)
    a060:	00695021 	addu	t2,v1,t1
    a064:	448a4000 	mtc1	t2,$f8
    a068:	00000000 	nop
    a06c:	468042a0 	cvt.s.w	$f10,$f8
    a070:	460a603c 	c.lt.s	$f12,$f10
    a074:	00000000 	nop
    a078:	4502001d 	bc1fl	a0f0 <func_8004259C+0x154>
    a07c:	24a50010 	addiu	a1,a1,16
    a080:	84a30004 	lh	v1,4(a1)
    a084:	44838000 	mtc1	v1,$f16
    a088:	00000000 	nop
    a08c:	468084a0 	cvt.s.w	$f18,$f16
    a090:	460e903c 	c.lt.s	$f18,$f14
    a094:	00000000 	nop
    a098:	45020015 	bc1fl	a0f0 <func_8004259C+0x154>
    a09c:	24a50010 	addiu	a1,a1,16
    a0a0:	84ab0008 	lh	t3,8(a1)
    a0a4:	006b6021 	addu	t4,v1,t3
    a0a8:	448c2000 	mtc1	t4,$f4
    a0ac:	00000000 	nop
    a0b0:	468021a0 	cvt.s.w	$f6,$f4
    a0b4:	4606703c 	c.lt.s	$f14,$f6
    a0b8:	00000000 	nop
    a0bc:	4502000c 	bc1fl	a0f0 <func_8004259C+0x154>
    a0c0:	24a50010 	addiu	a1,a1,16
    a0c4:	8fad0014 	lw	t5,20(sp)
    a0c8:	24020001 	li	v0,1
    a0cc:	ada50000 	sw	a1,0(t5)
    a0d0:	84ae0002 	lh	t6,2(a1)
    a0d4:	8faf0010 	lw	t7,16(sp)
    a0d8:	448e4000 	mtc1	t6,$f8
    a0dc:	00000000 	nop
    a0e0:	468042a0 	cvt.s.w	$f10,$f8
    a0e4:	03e00008 	jr	ra
    a0e8:	e5ea0000 	swc1	$f10,0(t7)
    a0ec:	24a50010 	addiu	a1,a1,16
    a0f0:	00a2082b 	sltu	at,a1,v0
    a0f4:	5420ffc9 	bnezl	at,a01c <func_8004259C+0x80>
    a0f8:	8ca4000c 	lw	a0,12(a1)
    a0fc:	00001025 	move	v0,zero
    a100:	03e00008 	jr	ra
    a104:	00000000 	nop
    a108:	27bdffb8 	addiu	sp,sp,-72
    a10c:	afbf002c 	sw	ra,44(sp)
    a110:	afa5004c 	sw	a1,76(sp)
    a114:	afa60050 	sw	a2,80(sp)
    a118:	afa70054 	sw	a3,84(sp)
    a11c:	afa40048 	sw	a0,72(sp)
    a120:	27a7003c 	addiu	a3,sp,60
    a124:	27a60040 	addiu	a2,sp,64
    a128:	0c000000 	jal	0 <func_80038600>
    a12c:	27a50044 	addiu	a1,sp,68
    a130:	8fa4004c 	lw	a0,76(sp)
    a134:	27a50038 	addiu	a1,sp,56
    a138:	27a60034 	addiu	a2,sp,52
    a13c:	0c000000 	jal	0 <func_80038600>
    a140:	27a70030 	addiu	a3,sp,48
    a144:	8fae0048 	lw	t6,72(sp)
    a148:	c7a60038 	lwc1	$f6,56(sp)
    a14c:	c7a80034 	lwc1	$f8,52(sp)
    a150:	85cf000e 	lh	t7,14(t6)
    a154:	c7aa0030 	lwc1	$f10,48(sp)
    a158:	8fb8004c 	lw	t8,76(sp)
    a15c:	e7a60010 	swc1	$f6,16(sp)
    a160:	e7a80014 	swc1	$f8,20(sp)
    a164:	e7aa0018 	swc1	$f10,24(sp)
    a168:	8719000e 	lh	t9,14(t8)
    a16c:	448f2000 	mtc1	t7,$f4
    a170:	8fa80050 	lw	t0,80(sp)
    a174:	44998000 	mtc1	t9,$f16
    a178:	46802120 	cvt.s.w	$f4,$f4
    a17c:	8fa90054 	lw	t1,84(sp)
    a180:	c7ac0044 	lwc1	$f12,68(sp)
    a184:	c7ae0040 	lwc1	$f14,64(sp)
    a188:	8fa6003c 	lw	a2,60(sp)
    a18c:	468084a0 	cvt.s.w	$f18,$f16
    a190:	44072000 	mfc1	a3,$f4
    a194:	afa80020 	sw	t0,32(sp)
    a198:	afa90024 	sw	t1,36(sp)
    a19c:	0c000000 	jal	0 <func_80038600>
    a1a0:	e7b2001c 	swc1	$f18,28(sp)
    a1a4:	8fbf002c 	lw	ra,44(sp)
    a1a8:	27bd0048 	addiu	sp,sp,72
    a1ac:	03e00008 	jr	ra
    a1b0:	00000000 	nop

0000a1b4 <func_800427B4>:
    a1b4:	27bdffa8 	addiu	sp,sp,-88
    a1b8:	afbf0034 	sw	ra,52(sp)
    a1bc:	afa5005c 	sw	a1,92(sp)
    a1c0:	afa60060 	sw	a2,96(sp)
    a1c4:	afa70064 	sw	a3,100(sp)
    a1c8:	afa40058 	sw	a0,88(sp)
    a1cc:	27a7004c 	addiu	a3,sp,76
    a1d0:	27a60050 	addiu	a2,sp,80
    a1d4:	0c000000 	jal	0 <func_80038600>
    a1d8:	27a50054 	addiu	a1,sp,84
    a1dc:	8fa4005c 	lw	a0,92(sp)
    a1e0:	27a50048 	addiu	a1,sp,72
    a1e4:	27a60044 	addiu	a2,sp,68
    a1e8:	0c000000 	jal	0 <func_80038600>
    a1ec:	27a70040 	addiu	a3,sp,64
    a1f0:	8fae0058 	lw	t6,88(sp)
    a1f4:	c7a60048 	lwc1	$f6,72(sp)
    a1f8:	c7a80044 	lwc1	$f8,68(sp)
    a1fc:	85cf000e 	lh	t7,14(t6)
    a200:	c7aa0040 	lwc1	$f10,64(sp)
    a204:	8fb8005c 	lw	t8,92(sp)
    a208:	e7a60010 	swc1	$f6,16(sp)
    a20c:	e7a80014 	swc1	$f8,20(sp)
    a210:	e7aa0018 	swc1	$f10,24(sp)
    a214:	8719000e 	lh	t9,14(t8)
    a218:	448f2000 	mtc1	t7,$f4
    a21c:	8fa80060 	lw	t0,96(sp)
    a220:	44998000 	mtc1	t9,$f16
    a224:	46802120 	cvt.s.w	$f4,$f4
    a228:	8fa90064 	lw	t1,100(sp)
    a22c:	8faa0068 	lw	t2,104(sp)
    a230:	c7ac0054 	lwc1	$f12,84(sp)
    a234:	c7ae0050 	lwc1	$f14,80(sp)
    a238:	468084a0 	cvt.s.w	$f18,$f16
    a23c:	44072000 	mfc1	a3,$f4
    a240:	8fa6004c 	lw	a2,76(sp)
    a244:	afa80020 	sw	t0,32(sp)
    a248:	afa90024 	sw	t1,36(sp)
    a24c:	afaa0028 	sw	t2,40(sp)
    a250:	0c000000 	jal	0 <func_80038600>
    a254:	e7b2001c 	swc1	$f18,28(sp)
    a258:	8fbf0034 	lw	ra,52(sp)
    a25c:	27bd0058 	addiu	sp,sp,88
    a260:	03e00008 	jr	ra
    a264:	00000000 	nop

0000a268 <func_80042868>:
    a268:	27bdff60 	addiu	sp,sp,-160
    a26c:	afbf0054 	sw	ra,84(sp)
    a270:	afbe0050 	sw	s8,80(sp)
    a274:	afb7004c 	sw	s7,76(sp)
    a278:	afb60048 	sw	s6,72(sp)
    a27c:	afb50044 	sw	s5,68(sp)
    a280:	afb40040 	sw	s4,64(sp)
    a284:	afb3003c 	sw	s3,60(sp)
    a288:	afb20038 	sw	s2,56(sp)
    a28c:	afb10034 	sw	s1,52(sp)
    a290:	afb00030 	sw	s0,48(sp)
    a294:	f7b40028 	sdc1	$f20,40(sp)
    a298:	afa400a0 	sw	a0,160(sp)
    a29c:	afa500a4 	sw	a1,164(sp)
    a2a0:	94e20000 	lhu	v0,0(a3)
    a2a4:	3401ffff 	li	at,0xffff
    a2a8:	00c08825 	move	s1,a2
    a2ac:	10410092 	beq	v0,at,a4f8 <func_80042868+0x290>
    a2b0:	00027880 	sll	t7,v0,0x2
    a2b4:	8cce13f8 	lw	t6,5112(a2)
    a2b8:	3c010000 	lui	at,0x0
    a2bc:	c4340000 	lwc1	$f20,0(at)
    a2c0:	93be00b7 	lbu	s8,183(sp)
    a2c4:	93b700b3 	lbu	s7,179(sp)
    a2c8:	27b60070 	addiu	s6,sp,112
    a2cc:	27b5007c 	addiu	s5,sp,124
    a2d0:	27b40088 	addiu	s4,sp,136
    a2d4:	24130006 	li	s3,6
    a2d8:	01cf9021 	addu	s2,t6,t7
    a2dc:	86420000 	lh	v0,0(s2)
    a2e0:	8e3813f0 	lw	t8,5104(s1)
    a2e4:	8e2b13f4 	lw	t3,5108(s1)
    a2e8:	0002c900 	sll	t9,v0,0x4
    a2ec:	03198021 	addu	s0,t8,t9
    a2f0:	96080002 	lhu	t0,2(s0)
    a2f4:	02802825 	move	a1,s4
    a2f8:	31091fff 	andi	t1,t0,0x1fff
    a2fc:	01330019 	multu	t1,s3
    a300:	00005012 	mflo	t2
    a304:	014b2021 	addu	a0,t2,t3
    a308:	0c000000 	jal	0 <func_80038600>
    a30c:	00000000 	nop
    a310:	960c0004 	lhu	t4,4(s0)
    a314:	8e2f13f4 	lw	t7,5108(s1)
    a318:	02a02825 	move	a1,s5
    a31c:	318d1fff 	andi	t5,t4,0x1fff
    a320:	01b30019 	multu	t5,s3
    a324:	00007012 	mflo	t6
    a328:	01cf2021 	addu	a0,t6,t7
    a32c:	0c000000 	jal	0 <func_80038600>
    a330:	00000000 	nop
    a334:	96180006 	lhu	t8,6(s0)
    a338:	8e2813f4 	lw	t0,5108(s1)
    a33c:	02c02825 	move	a1,s6
    a340:	03130019 	multu	t8,s3
    a344:	0000c812 	mflo	t9
    a348:	03282021 	addu	a0,t9,t0
    a34c:	0c000000 	jal	0 <func_80038600>
    a350:	00000000 	nop
    a354:	3c020000 	lui	v0,0x0
    a358:	8c420000 	lw	v0,0(v0)
    a35c:	02802825 	move	a1,s4
    a360:	02a03025 	move	a2,s5
    a364:	84430e88 	lh	v1,3720(v0)
    a368:	50600054 	beqzl	v1,a4bc <func_80042868+0x254>
    a36c:	8faa00a0 	lw	t2,160(sp)
    a370:	86090008 	lh	t1,8(s0)
    a374:	860a000a 	lh	t2,10(s0)
    a378:	860b000c 	lh	t3,12(s0)
    a37c:	44892000 	mtc1	t1,$f4
    a380:	448a4000 	mtc1	t2,$f8
    a384:	448b8000 	mtc1	t3,$f16
    a388:	468021a0 	cvt.s.w	$f6,$f4
    a38c:	c7a40088 	lwc1	$f4,136(sp)
    a390:	468042a0 	cvt.s.w	$f10,$f8
    a394:	46143002 	mul.s	$f0,$f6,$f20
    a398:	44833000 	mtc1	v1,$f6
    a39c:	46145082 	mul.s	$f2,$f10,$f20
    a3a0:	468084a0 	cvt.s.w	$f18,$f16
    a3a4:	46803220 	cvt.s.w	$f8,$f6
    a3a8:	46149302 	mul.s	$f12,$f18,$f20
    a3ac:	c7b2008c 	lwc1	$f18,140(sp)
    a3b0:	46004282 	mul.s	$f10,$f8,$f0
    a3b4:	460a2400 	add.s	$f16,$f4,$f10
    a3b8:	e7b00088 	swc1	$f16,136(sp)
    a3bc:	844c0e88 	lh	t4,3720(v0)
    a3c0:	c7b00090 	lwc1	$f16,144(sp)
    a3c4:	448c3000 	mtc1	t4,$f6
    a3c8:	00000000 	nop
    a3cc:	46803220 	cvt.s.w	$f8,$f6
    a3d0:	46024102 	mul.s	$f4,$f8,$f2
    a3d4:	46049280 	add.s	$f10,$f18,$f4
    a3d8:	e7aa008c 	swc1	$f10,140(sp)
    a3dc:	844d0e88 	lh	t5,3720(v0)
    a3e0:	c7aa007c 	lwc1	$f10,124(sp)
    a3e4:	448d3000 	mtc1	t5,$f6
    a3e8:	00000000 	nop
    a3ec:	46803220 	cvt.s.w	$f8,$f6
    a3f0:	460c4482 	mul.s	$f18,$f8,$f12
    a3f4:	46128100 	add.s	$f4,$f16,$f18
    a3f8:	e7a40090 	swc1	$f4,144(sp)
    a3fc:	844e0e88 	lh	t6,3720(v0)
    a400:	c7a40080 	lwc1	$f4,128(sp)
    a404:	448e3000 	mtc1	t6,$f6
    a408:	00000000 	nop
    a40c:	46803220 	cvt.s.w	$f8,$f6
    a410:	46004402 	mul.s	$f16,$f8,$f0
    a414:	46105480 	add.s	$f18,$f10,$f16
    a418:	e7b2007c 	swc1	$f18,124(sp)
    a41c:	844f0e88 	lh	t7,3720(v0)
    a420:	c7b20084 	lwc1	$f18,132(sp)
    a424:	448f3000 	mtc1	t7,$f6
    a428:	00000000 	nop
    a42c:	46803220 	cvt.s.w	$f8,$f6
    a430:	46024282 	mul.s	$f10,$f8,$f2
    a434:	460a2400 	add.s	$f16,$f4,$f10
    a438:	e7b00080 	swc1	$f16,128(sp)
    a43c:	84580e88 	lh	t8,3720(v0)
    a440:	c7b00070 	lwc1	$f16,112(sp)
    a444:	44983000 	mtc1	t8,$f6
    a448:	00000000 	nop
    a44c:	46803220 	cvt.s.w	$f8,$f6
    a450:	460c4102 	mul.s	$f4,$f8,$f12
    a454:	46049280 	add.s	$f10,$f18,$f4
    a458:	e7aa0084 	swc1	$f10,132(sp)
    a45c:	84590e88 	lh	t9,3720(v0)
    a460:	c7aa0074 	lwc1	$f10,116(sp)
    a464:	44993000 	mtc1	t9,$f6
    a468:	00000000 	nop
    a46c:	46803220 	cvt.s.w	$f8,$f6
    a470:	46004482 	mul.s	$f18,$f8,$f0
    a474:	46128100 	add.s	$f4,$f16,$f18
    a478:	e7a40070 	swc1	$f4,112(sp)
    a47c:	84480e88 	lh	t0,3720(v0)
    a480:	c7a40078 	lwc1	$f4,120(sp)
    a484:	44883000 	mtc1	t0,$f6
    a488:	00000000 	nop
    a48c:	46803220 	cvt.s.w	$f8,$f6
    a490:	46024402 	mul.s	$f16,$f8,$f2
    a494:	46105480 	add.s	$f18,$f10,$f16
    a498:	e7b20074 	swc1	$f18,116(sp)
    a49c:	84490e88 	lh	t1,3720(v0)
    a4a0:	44893000 	mtc1	t1,$f6
    a4a4:	00000000 	nop
    a4a8:	46803220 	cvt.s.w	$f8,$f6
    a4ac:	460c4282 	mul.s	$f10,$f8,$f12
    a4b0:	460a2400 	add.s	$f16,$f4,$f10
    a4b4:	e7b00078 	swc1	$f16,120(sp)
    a4b8:	8faa00a0 	lw	t2,160(sp)
    a4bc:	93ab00bb 	lbu	t3,187(sp)
    a4c0:	02c03825 	move	a3,s6
    a4c4:	8d440000 	lw	a0,0(t2)
    a4c8:	afbe0014 	sw	s8,20(sp)
    a4cc:	afb70010 	sw	s7,16(sp)
    a4d0:	0c000000 	jal	0 <func_80038600>
    a4d4:	afab0018 	sw	t3,24(sp)
    a4d8:	96420002 	lhu	v0,2(s2)
    a4dc:	3401ffff 	li	at,0xffff
    a4e0:	50410006 	beql	v0,at,a4fc <func_80042868+0x294>
    a4e4:	8fbf0054 	lw	ra,84(sp)
    a4e8:	8e2c13f8 	lw	t4,5112(s1)
    a4ec:	00026880 	sll	t5,v0,0x2
    a4f0:	1000ff7a 	b	a2dc <func_80042868+0x74>
    a4f4:	018d9021 	addu	s2,t4,t5
    a4f8:	8fbf0054 	lw	ra,84(sp)
    a4fc:	d7b40028 	ldc1	$f20,40(sp)
    a500:	8fb00030 	lw	s0,48(sp)
    a504:	8fb10034 	lw	s1,52(sp)
    a508:	8fb20038 	lw	s2,56(sp)
    a50c:	8fb3003c 	lw	s3,60(sp)
    a510:	8fb40040 	lw	s4,64(sp)
    a514:	8fb50044 	lw	s5,68(sp)
    a518:	8fb60048 	lw	s6,72(sp)
    a51c:	8fb7004c 	lw	s7,76(sp)
    a520:	8fbe0050 	lw	s8,80(sp)
    a524:	03e00008 	jr	ra
    a528:	27bd00a0 	addiu	sp,sp,160

0000a52c <func_80042B2C>:
    a52c:	27bdffd8 	addiu	sp,sp,-40
    a530:	3c020000 	lui	v0,0x0
    a534:	8c420000 	lw	v0,0(v0)
    a538:	afbf0024 	sw	ra,36(sp)
    a53c:	afa40028 	sw	a0,40(sp)
    a540:	afa60030 	sw	a2,48(sp)
    a544:	844e0e7e 	lh	t6,3710(v0)
    a548:	8faf0030 	lw	t7,48(sp)
    a54c:	24a60050 	addiu	a2,a1,80
    a550:	11c00010 	beqz	t6,a594 <func_80042B2C+0x68>
    a554:	000fc080 	sll	t8,t7,0x2
    a558:	030fc023 	subu	t8,t8,t7
    a55c:	0018c0c0 	sll	t8,t8,0x3
    a560:	030fc021 	addu	t8,t8,t7
    a564:	0018c080 	sll	t8,t8,0x2
    a568:	00b83821 	addu	a3,a1,t8
    a56c:	241900ff 	li	t9,255
    a570:	afb90010 	sw	t9,16(sp)
    a574:	24e7005e 	addiu	a3,a3,94
    a578:	afa00014 	sw	zero,20(sp)
    a57c:	afa00018 	sw	zero,24(sp)
    a580:	0c000000 	jal	0 <func_80038600>
    a584:	afa5002c 	sw	a1,44(sp)
    a588:	3c020000 	lui	v0,0x0
    a58c:	8c420000 	lw	v0,0(v0)
    a590:	8fa5002c 	lw	a1,44(sp)
    a594:	84480e80 	lh	t0,3712(v0)
    a598:	8fa40028 	lw	a0,40(sp)
    a59c:	24a60050 	addiu	a2,a1,80
    a5a0:	11000011 	beqz	t0,a5e8 <func_80042B2C+0xbc>
    a5a4:	8fa90030 	lw	t1,48(sp)
    a5a8:	00095080 	sll	t2,t1,0x2
    a5ac:	01495023 	subu	t2,t2,t1
    a5b0:	000a50c0 	sll	t2,t2,0x3
    a5b4:	01495021 	addu	t2,t2,t1
    a5b8:	000a5080 	sll	t2,t2,0x2
    a5bc:	00aa3821 	addu	a3,a1,t2
    a5c0:	240b00ff 	li	t3,255
    a5c4:	afab0014 	sw	t3,20(sp)
    a5c8:	24e70060 	addiu	a3,a3,96
    a5cc:	afa00010 	sw	zero,16(sp)
    a5d0:	afa00018 	sw	zero,24(sp)
    a5d4:	0c000000 	jal	0 <func_80038600>
    a5d8:	afa5002c 	sw	a1,44(sp)
    a5dc:	3c020000 	lui	v0,0x0
    a5e0:	8c420000 	lw	v0,0(v0)
    a5e4:	8fa5002c 	lw	a1,44(sp)
    a5e8:	844c0e82 	lh	t4,3714(v0)
    a5ec:	8fa40028 	lw	a0,40(sp)
    a5f0:	24a60050 	addiu	a2,a1,80
    a5f4:	1180000d 	beqz	t4,a62c <func_80042B2C+0x100>
    a5f8:	8fad0030 	lw	t5,48(sp)
    a5fc:	000d7080 	sll	t6,t5,0x2
    a600:	01cd7023 	subu	t6,t6,t5
    a604:	000e70c0 	sll	t6,t6,0x3
    a608:	01cd7021 	addu	t6,t6,t5
    a60c:	000e7080 	sll	t6,t6,0x2
    a610:	00ae3821 	addu	a3,a1,t6
    a614:	240f00ff 	li	t7,255
    a618:	afaf0018 	sw	t7,24(sp)
    a61c:	24e70062 	addiu	a3,a3,98
    a620:	afa00010 	sw	zero,16(sp)
    a624:	0c000000 	jal	0 <func_80038600>
    a628:	afa00014 	sw	zero,20(sp)
    a62c:	8fbf0024 	lw	ra,36(sp)
    a630:	27bd0028 	addiu	sp,sp,40
    a634:	03e00008 	jr	ra
    a638:	00000000 	nop

0000a63c <func_80042C3C>:
    a63c:	27bdffd0 	addiu	sp,sp,-48
    a640:	afb40028 	sw	s4,40(sp)
    a644:	afb30024 	sw	s3,36(sp)
    a648:	afb20020 	sw	s2,32(sp)
    a64c:	afb1001c 	sw	s1,28(sp)
    a650:	afb00018 	sw	s0,24(sp)
    a654:	00a09825 	move	s3,a1
    a658:	0080a025 	move	s4,a0
    a65c:	afbf002c 	sw	ra,44(sp)
    a660:	00008025 	move	s0,zero
    a664:	00a08825 	move	s1,a1
    a668:	24120032 	li	s2,50
    a66c:	962e13dc 	lhu	t6,5084(s1)
    a670:	02802025 	move	a0,s4
    a674:	02602825 	move	a1,s3
    a678:	31cf0001 	andi	t7,t6,0x1
    a67c:	51e00004 	beqzl	t7,a690 <func_80042C3C+0x54>
    a680:	26100001 	addiu	s0,s0,1
    a684:	0c000000 	jal	0 <func_80038600>
    a688:	02003025 	move	a2,s0
    a68c:	26100001 	addiu	s0,s0,1
    a690:	1612fff6 	bne	s0,s2,a66c <func_80042C3C+0x30>
    a694:	26310002 	addiu	s1,s1,2
    a698:	8fbf002c 	lw	ra,44(sp)
    a69c:	8fb00018 	lw	s0,24(sp)
    a6a0:	8fb1001c 	lw	s1,28(sp)
    a6a4:	8fb20020 	lw	s2,32(sp)
    a6a8:	8fb30024 	lw	s3,36(sp)
    a6ac:	8fb40028 	lw	s4,40(sp)
    a6b0:	03e00008 	jr	ra
    a6b4:	27bd0030 	addiu	sp,sp,48

0000a6b8 <func_80042CB8>:
    a6b8:	27bdff98 	addiu	sp,sp,-104
    a6bc:	afbf002c 	sw	ra,44(sp)
    a6c0:	afb00028 	sw	s0,40(sp)
    a6c4:	afa40068 	sw	a0,104(sp)
    a6c8:	afa5006c 	sw	a1,108(sp)
    a6cc:	afa70074 	sw	a3,116(sp)
    a6d0:	94ce0002 	lhu	t6,2(a2)
    a6d4:	8ca80000 	lw	t0,0(a1)
    a6d8:	00c08025 	move	s0,a2
    a6dc:	31cf1fff 	andi	t7,t6,0x1fff
    a6e0:	000fc080 	sll	t8,t7,0x2
    a6e4:	8d090010 	lw	t1,16(t0)
    a6e8:	030fc023 	subu	t8,t8,t7
    a6ec:	0018c040 	sll	t8,t8,0x1
    a6f0:	27a5005c 	addiu	a1,sp,92
    a6f4:	0c000000 	jal	0 <func_80038600>
    a6f8:	03092021 	addu	a0,t8,t1
    a6fc:	8fad006c 	lw	t5,108(sp)
    a700:	960a0004 	lhu	t2,4(s0)
    a704:	27a50050 	addiu	a1,sp,80
    a708:	8dae0000 	lw	t6,0(t5)
    a70c:	314b1fff 	andi	t3,t2,0x1fff
    a710:	000b6080 	sll	t4,t3,0x2
    a714:	8dcf0010 	lw	t7,16(t6)
    a718:	018b6023 	subu	t4,t4,t3
    a71c:	000c6040 	sll	t4,t4,0x1
    a720:	0c000000 	jal	0 <func_80038600>
    a724:	018f2021 	addu	a0,t4,t7
    a728:	8fb8006c 	lw	t8,108(sp)
    a72c:	96190006 	lhu	t9,6(s0)
    a730:	27a50044 	addiu	a1,sp,68
    a734:	8f090000 	lw	t1,0(t8)
    a738:	00194080 	sll	t0,t9,0x2
    a73c:	01194023 	subu	t0,t0,t9
    a740:	8d2a0010 	lw	t2,16(t1)
    a744:	00084040 	sll	t0,t0,0x1
    a748:	0c000000 	jal	0 <func_80038600>
    a74c:	010a2021 	addu	a0,t0,t2
    a750:	3c020000 	lui	v0,0x0
    a754:	8c420000 	lw	v0,0(v0)
    a758:	27a5005c 	addiu	a1,sp,92
    a75c:	27a60050 	addiu	a2,sp,80
    a760:	84430e88 	lh	v1,3720(v0)
    a764:	27a70044 	addiu	a3,sp,68
    a768:	50600056 	beqzl	v1,a8c4 <func_80042CB8+0x20c>
    a76c:	8fad0068 	lw	t5,104(sp)
    a770:	860b0008 	lh	t3,8(s0)
    a774:	860d000a 	lh	t5,10(s0)
    a778:	860e000c 	lh	t6,12(s0)
    a77c:	448b2000 	mtc1	t3,$f4
    a780:	448d4000 	mtc1	t5,$f8
    a784:	3c010000 	lui	at,0x0
    a788:	468021a0 	cvt.s.w	$f6,$f4
    a78c:	c42e0000 	lwc1	$f14,0(at)
    a790:	448e8000 	mtc1	t6,$f16
    a794:	c7a4005c 	lwc1	$f4,92(sp)
    a798:	468042a0 	cvt.s.w	$f10,$f8
    a79c:	460e3002 	mul.s	$f0,$f6,$f14
    a7a0:	44833000 	mtc1	v1,$f6
    a7a4:	460e5082 	mul.s	$f2,$f10,$f14
    a7a8:	468084a0 	cvt.s.w	$f18,$f16
    a7ac:	46803220 	cvt.s.w	$f8,$f6
    a7b0:	460e9302 	mul.s	$f12,$f18,$f14
    a7b4:	c7b20060 	lwc1	$f18,96(sp)
    a7b8:	46004282 	mul.s	$f10,$f8,$f0
    a7bc:	460a2400 	add.s	$f16,$f4,$f10
    a7c0:	e7b0005c 	swc1	$f16,92(sp)
    a7c4:	844c0e88 	lh	t4,3720(v0)
    a7c8:	c7b00064 	lwc1	$f16,100(sp)
    a7cc:	448c3000 	mtc1	t4,$f6
    a7d0:	00000000 	nop
    a7d4:	46803220 	cvt.s.w	$f8,$f6
    a7d8:	46024102 	mul.s	$f4,$f8,$f2
    a7dc:	46049280 	add.s	$f10,$f18,$f4
    a7e0:	e7aa0060 	swc1	$f10,96(sp)
    a7e4:	844f0e88 	lh	t7,3720(v0)
    a7e8:	c7aa0050 	lwc1	$f10,80(sp)
    a7ec:	448f3000 	mtc1	t7,$f6
    a7f0:	00000000 	nop
    a7f4:	46803220 	cvt.s.w	$f8,$f6
    a7f8:	460c4482 	mul.s	$f18,$f8,$f12
    a7fc:	46128100 	add.s	$f4,$f16,$f18
    a800:	e7a40064 	swc1	$f4,100(sp)
    a804:	84590e88 	lh	t9,3720(v0)
    a808:	c7a40054 	lwc1	$f4,84(sp)
    a80c:	44993000 	mtc1	t9,$f6
    a810:	00000000 	nop
    a814:	46803220 	cvt.s.w	$f8,$f6
    a818:	46004402 	mul.s	$f16,$f8,$f0
    a81c:	46105480 	add.s	$f18,$f10,$f16
    a820:	e7b20050 	swc1	$f18,80(sp)
    a824:	84580e88 	lh	t8,3720(v0)
    a828:	c7b20058 	lwc1	$f18,88(sp)
    a82c:	44983000 	mtc1	t8,$f6
    a830:	00000000 	nop
    a834:	46803220 	cvt.s.w	$f8,$f6
    a838:	46024282 	mul.s	$f10,$f8,$f2
    a83c:	460a2400 	add.s	$f16,$f4,$f10
    a840:	e7b00054 	swc1	$f16,84(sp)
    a844:	84490e88 	lh	t1,3720(v0)
    a848:	c7b00044 	lwc1	$f16,68(sp)
    a84c:	44893000 	mtc1	t1,$f6
    a850:	00000000 	nop
    a854:	46803220 	cvt.s.w	$f8,$f6
    a858:	460c4102 	mul.s	$f4,$f8,$f12
    a85c:	46049280 	add.s	$f10,$f18,$f4
    a860:	e7aa0058 	swc1	$f10,88(sp)
    a864:	84480e88 	lh	t0,3720(v0)
    a868:	c7aa0048 	lwc1	$f10,72(sp)
    a86c:	44883000 	mtc1	t0,$f6
    a870:	00000000 	nop
    a874:	46803220 	cvt.s.w	$f8,$f6
    a878:	46004482 	mul.s	$f18,$f8,$f0
    a87c:	46128100 	add.s	$f4,$f16,$f18
    a880:	e7a40044 	swc1	$f4,68(sp)
    a884:	844a0e88 	lh	t2,3720(v0)
    a888:	c7a4004c 	lwc1	$f4,76(sp)
    a88c:	448a3000 	mtc1	t2,$f6
    a890:	00000000 	nop
    a894:	46803220 	cvt.s.w	$f8,$f6
    a898:	46024402 	mul.s	$f16,$f8,$f2
    a89c:	46105480 	add.s	$f18,$f10,$f16
    a8a0:	e7b20048 	swc1	$f18,72(sp)
    a8a4:	844b0e88 	lh	t3,3720(v0)
    a8a8:	448b3000 	mtc1	t3,$f6
    a8ac:	00000000 	nop
    a8b0:	46803220 	cvt.s.w	$f8,$f6
    a8b4:	460c4282 	mul.s	$f10,$f8,$f12
    a8b8:	460a2400 	add.s	$f16,$f4,$f10
    a8bc:	e7b0004c 	swc1	$f16,76(sp)
    a8c0:	8fad0068 	lw	t5,104(sp)
    a8c4:	93ae0077 	lbu	t6,119(sp)
    a8c8:	93ac007b 	lbu	t4,123(sp)
    a8cc:	93af007f 	lbu	t7,127(sp)
    a8d0:	8da40000 	lw	a0,0(t5)
    a8d4:	afae0010 	sw	t6,16(sp)
    a8d8:	afac0014 	sw	t4,20(sp)
    a8dc:	0c000000 	jal	0 <func_80038600>
    a8e0:	afaf0018 	sw	t7,24(sp)
    a8e4:	8fbf002c 	lw	ra,44(sp)
    a8e8:	8fb00028 	lw	s0,40(sp)
    a8ec:	27bd0068 	addiu	sp,sp,104
    a8f0:	03e00008 	jr	ra
    a8f4:	00000000 	nop

0000a8f8 <func_80042EF8>:
    a8f8:	27bdffc0 	addiu	sp,sp,-64
    a8fc:	afbf003c 	sw	ra,60(sp)
    a900:	afb70038 	sw	s7,56(sp)
    a904:	afb60034 	sw	s6,52(sp)
    a908:	afb50030 	sw	s5,48(sp)
    a90c:	afb4002c 	sw	s4,44(sp)
    a910:	afb30028 	sw	s3,40(sp)
    a914:	afb20024 	sw	s2,36(sp)
    a918:	afb10020 	sw	s1,32(sp)
    a91c:	afb0001c 	sw	s0,28(sp)
    a920:	afa7004c 	sw	a3,76(sp)
    a924:	94c20000 	lhu	v0,0(a2)
    a928:	8cae0000 	lw	t6,0(a1)
    a92c:	3417ffff 	li	s7,0xffff
    a930:	00a08825 	move	s1,a1
    a934:	00809825 	move	s3,a0
    a938:	30f400ff 	andi	s4,a3,0xff
    a93c:	12e20016 	beq	s7,v0,a998 <func_80042EF8+0xa0>
    a940:	8dd20018 	lw	s2,24(t6)
    a944:	8caf0048 	lw	t7,72(a1)
    a948:	0002c080 	sll	t8,v0,0x2
    a94c:	93b60057 	lbu	s6,87(sp)
    a950:	93b50053 	lbu	s5,83(sp)
    a954:	01f88021 	addu	s0,t7,t8
    a958:	86020000 	lh	v0,0(s0)
    a95c:	afb60014 	sw	s6,20(sp)
    a960:	afb50010 	sw	s5,16(sp)
    a964:	0002c900 	sll	t9,v0,0x4
    a968:	03323021 	addu	a2,t9,s2
    a96c:	02602025 	move	a0,s3
    a970:	02202825 	move	a1,s1
    a974:	0c000000 	jal	0 <func_80038600>
    a978:	328700ff 	andi	a3,s4,0xff
    a97c:	96020002 	lhu	v0,2(s0)
    a980:	52e20006 	beql	s7,v0,a99c <func_80042EF8+0xa4>
    a984:	8fbf003c 	lw	ra,60(sp)
    a988:	8e280048 	lw	t0,72(s1)
    a98c:	00024880 	sll	t1,v0,0x2
    a990:	1000fff1 	b	a958 <func_80042EF8+0x60>
    a994:	01098021 	addu	s0,t0,t1
    a998:	8fbf003c 	lw	ra,60(sp)
    a99c:	8fb0001c 	lw	s0,28(sp)
    a9a0:	8fb10020 	lw	s1,32(sp)
    a9a4:	8fb20024 	lw	s2,36(sp)
    a9a8:	8fb30028 	lw	s3,40(sp)
    a9ac:	8fb4002c 	lw	s4,44(sp)
    a9b0:	8fb50030 	lw	s5,48(sp)
    a9b4:	8fb60034 	lw	s6,52(sp)
    a9b8:	8fb70038 	lw	s7,56(sp)
    a9bc:	03e00008 	jr	ra
    a9c0:	27bd0040 	addiu	sp,sp,64

0000a9c4 <func_80042FC4>:
    a9c4:	27bdffd0 	addiu	sp,sp,-48
    a9c8:	afbf0024 	sw	ra,36(sp)
    a9cc:	afb00020 	sw	s0,32(sp)
    a9d0:	afa40030 	sw	a0,48(sp)
    a9d4:	8c821c44 	lw	v0,7236(a0)
    a9d8:	00a08025 	move	s0,a1
    a9dc:	00a02025 	move	a0,a1
    a9e0:	8ca50040 	lw	a1,64(a1)
    a9e4:	0c000000 	jal	0 <func_80038600>
    a9e8:	24460024 	addiu	a2,v0,36
    a9ec:	3c030000 	lui	v1,0x0
    a9f0:	8c630000 	lw	v1,0(v1)
    a9f4:	afa20028 	sw	v0,40(sp)
    a9f8:	8fa40030 	lw	a0,48(sp)
    a9fc:	846f0e82 	lh	t7,3714(v1)
    aa00:	02002825 	move	a1,s0
    aa04:	00403025 	move	a2,v0
    aa08:	11e00007 	beqz	t7,aa28 <func_80042FC4+0x64>
    aa0c:	00003825 	move	a3,zero
    aa10:	241800ff 	li	t8,255
    aa14:	afb80014 	sw	t8,20(sp)
    aa18:	0c000000 	jal	0 <func_80038600>
    aa1c:	afa00010 	sw	zero,16(sp)
    aa20:	3c030000 	lui	v1,0x0
    aa24:	8c630000 	lw	v1,0(v1)
    aa28:	84790e80 	lh	t9,3712(v1)
    aa2c:	8fa40030 	lw	a0,48(sp)
    aa30:	02002825 	move	a1,s0
    aa34:	13200009 	beqz	t9,aa5c <func_80042FC4+0x98>
    aa38:	8fa60028 	lw	a2,40(sp)
    aa3c:	240800ff 	li	t0,255
    aa40:	afa80010 	sw	t0,16(sp)
    aa44:	24c60002 	addiu	a2,a2,2
    aa48:	00003825 	move	a3,zero
    aa4c:	0c000000 	jal	0 <func_80038600>
    aa50:	afa00014 	sw	zero,20(sp)
    aa54:	3c030000 	lui	v1,0x0
    aa58:	8c630000 	lw	v1,0(v1)
    aa5c:	84690e7e 	lh	t1,3710(v1)
    aa60:	8fa40030 	lw	a0,48(sp)
    aa64:	02002825 	move	a1,s0
    aa68:	11200006 	beqz	t1,aa84 <func_80042FC4+0xc0>
    aa6c:	8fa60028 	lw	a2,40(sp)
    aa70:	24c60004 	addiu	a2,a2,4
    aa74:	240700ff 	li	a3,255
    aa78:	afa00010 	sw	zero,16(sp)
    aa7c:	0c000000 	jal	0 <func_80038600>
    aa80:	afa00014 	sw	zero,20(sp)
    aa84:	8fbf0024 	lw	ra,36(sp)
    aa88:	8fb00020 	lw	s0,32(sp)
    aa8c:	27bd0030 	addiu	sp,sp,48
    aa90:	03e00008 	jr	ra
    aa94:	00000000 	nop
	...
