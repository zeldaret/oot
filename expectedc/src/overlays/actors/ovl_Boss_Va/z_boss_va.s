
build/src/overlays/actors/ovl_Boss_Va/z_boss_va.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8094F2C0>:
       0:	03e00008 	jr	ra
       4:	ac850190 	sw	a1,400(a0)

00000008 <func_8094F2C8>:
       8:	27bdffd8 	addiu	sp,sp,-40
       c:	afbf001c 	sw	ra,28(sp)
      10:	afb10018 	sw	s1,24(sp)
      14:	afb00014 	sw	s0,20(sp)
      18:	8c910118 	lw	s1,280(a0)
      1c:	00808025 	move	s0,a0
      20:	00003825 	move	a3,zero
      24:	c62c0024 	lwc1	$f12,36(s1)
      28:	c62e0028 	lwc1	$f14,40(s1)
      2c:	0c000000 	jal	0 <func_8094F2C0>
      30:	8e26002c 	lw	a2,44(s1)
      34:	862400b4 	lh	a0,180(s1)
      38:	00002825 	move	a1,zero
      3c:	862600b8 	lh	a2,184(s1)
      40:	0c000000 	jal	0 <func_8094F2C0>
      44:	24070001 	li	a3,1
      48:	860e001c 	lh	t6,28(s0)
      4c:	3c180000 	lui	t8,0x0
      50:	27180000 	addiu	t8,t8,0
      54:	000e7880 	sll	t7,t6,0x2
      58:	01ee7823 	subu	t7,t7,t6
      5c:	000f7880 	sll	t7,t7,0x2
      60:	01f82021 	addu	a0,t7,t8
      64:	0c000000 	jal	0 <func_8094F2C0>
      68:	26050024 	addiu	a1,s0,36
      6c:	8603001c 	lh	v1,28(s0)
      70:	2c610006 	sltiu	at,v1,6
      74:	10200067 	beqz	at,214 <L8094F39C+0x138>
      78:	0003c880 	sll	t9,v1,0x2
      7c:	3c010000 	lui	at,0x0
      80:	00390821 	addu	at,at,t9
      84:	8c390000 	lw	t9,0(at)
      88:	03200008 	jr	t9
      8c:	00000000 	nop

00000090 <L8094F350>:
      90:	92080194 	lbu	t0,404(s0)
      94:	00034880 	sll	t1,v1,0x2
      98:	01234823 	subu	t1,t1,v1
      9c:	1500005d 	bnez	t0,214 <L8094F39C+0x138>
      a0:	00094840 	sll	t1,t1,0x1
      a4:	3c0a0000 	lui	t2,0x0
      a8:	254a0000 	addiu	t2,t2,0
      ac:	012a1021 	addu	v0,t1,t2
      b0:	844b0000 	lh	t3,0(v0)
      b4:	862c00b4 	lh	t4,180(s1)
      b8:	016c6821 	addu	t5,t3,t4
      bc:	a60d00b4 	sh	t5,180(s0)
      c0:	844e0002 	lh	t6,2(v0)
      c4:	a60e00b6 	sh	t6,182(s0)
      c8:	863800b8 	lh	t8,184(s1)
      cc:	844f0004 	lh	t7,4(v0)
      d0:	01f8c821 	addu	t9,t7,t8
      d4:	1000004f 	b	214 <L8094F39C+0x138>
      d8:	a61900b8 	sh	t9,184(s0)

000000dc <L8094F39C>:
      dc:	00034080 	sll	t0,v1,0x2
      e0:	01034023 	subu	t0,t0,v1
      e4:	3c090000 	lui	t1,0x0
      e8:	25290000 	addiu	t1,t1,0
      ec:	00084040 	sll	t0,t0,0x1
      f0:	01091021 	addu	v0,t0,t1
      f4:	844a0002 	lh	t2,2(v0)
      f8:	a60a00b6 	sh	t2,182(s0)
      fc:	0c000000 	jal	0 <func_8094F2C0>
     100:	84440002 	lh	a0,2(v0)
     104:	e7a00020 	swc1	$f0,32(sp)
     108:	860b001c 	lh	t3,28(s0)
     10c:	3c040000 	lui	a0,0x0
     110:	000b6080 	sll	t4,t3,0x2
     114:	018b6023 	subu	t4,t4,t3
     118:	000c6040 	sll	t4,t4,0x1
     11c:	008c2021 	addu	a0,a0,t4
     120:	0c000000 	jal	0 <func_8094F2C0>
     124:	84840000 	lh	a0,0(a0)
     128:	860d001c 	lh	t5,28(s0)
     12c:	863800b4 	lh	t8,180(s1)
     130:	c7a40020 	lwc1	$f4,32(sp)
     134:	000d7080 	sll	t6,t5,0x2
     138:	01cd7023 	subu	t6,t6,t5
     13c:	862d00b8 	lh	t5,184(s1)
     140:	44983000 	mtc1	t8,$f6
     144:	3c0f0000 	lui	t7,0x0
     148:	448d9000 	mtc1	t5,$f18
     14c:	46803220 	cvt.s.w	$f8,$f6
     150:	25ef0000 	addiu	t7,t7,0
     154:	000e7040 	sll	t6,t6,0x1
     158:	01cf1021 	addu	v0,t6,t7
     15c:	844b0000 	lh	t3,0(v0)
     160:	468091a0 	cvt.s.w	$f6,$f18
     164:	46082282 	mul.s	$f10,$f4,$f8
     168:	00000000 	nop
     16c:	46060102 	mul.s	$f4,$f0,$f6
     170:	4600540d 	trunc.w.s	$f16,$f10
     174:	4600220d 	trunc.w.s	$f8,$f4
     178:	440a8000 	mfc1	t2,$f16
     17c:	44194000 	mfc1	t9,$f8
     180:	016a6021 	addu	t4,t3,t2
     184:	01994023 	subu	t0,t4,t9
     188:	a60800b4 	sh	t0,180(s0)
     18c:	0c000000 	jal	0 <func_8094F2C0>
     190:	84440002 	lh	a0,2(v0)
     194:	e7a00020 	swc1	$f0,32(sp)
     198:	8609001c 	lh	t1,28(s0)
     19c:	3c040000 	lui	a0,0x0
     1a0:	00095880 	sll	t3,t1,0x2
     1a4:	01695823 	subu	t3,t3,t1
     1a8:	000b5840 	sll	t3,t3,0x1
     1ac:	008b2021 	addu	a0,a0,t3
     1b0:	0c000000 	jal	0 <func_8094F2C0>
     1b4:	84840000 	lh	a0,0(a0)
     1b8:	862a00b4 	lh	t2,180(s1)
     1bc:	862b00b8 	lh	t3,184(s1)
     1c0:	c7a40020 	lwc1	$f4,32(sp)
     1c4:	448a5000 	mtc1	t2,$f10
     1c8:	448b4000 	mtc1	t3,$f8
     1cc:	860c001c 	lh	t4,28(s0)
     1d0:	46805420 	cvt.s.w	$f16,$f10
     1d4:	3c080000 	lui	t0,0x0
     1d8:	000cc880 	sll	t9,t4,0x2
     1dc:	032cc823 	subu	t9,t9,t4
     1e0:	0019c840 	sll	t9,t9,0x1
     1e4:	468042a0 	cvt.s.w	$f10,$f8
     1e8:	46100482 	mul.s	$f18,$f0,$f16
     1ec:	01194021 	addu	t0,t0,t9
     1f0:	85080000 	lh	t0,0(t0)
     1f4:	460a2402 	mul.s	$f16,$f4,$f10
     1f8:	4600918d 	trunc.w.s	$f6,$f18
     1fc:	4600848d 	trunc.w.s	$f18,$f16
     200:	44183000 	mfc1	t8,$f6
     204:	440f9000 	mfc1	t7,$f18
     208:	03084821 	addu	t1,t8,t0
     20c:	012f6021 	addu	t4,t1,t7
     210:	a60c00b8 	sh	t4,184(s0)
     214:	8a1800b4 	lwl	t8,180(s0)
     218:	9a1800b7 	lwr	t8,183(s0)
     21c:	8e080118 	lw	t0,280(s0)
     220:	aa180030 	swl	t8,48(s0)
     224:	ba180033 	swr	t8,51(s0)
     228:	961800b8 	lhu	t8,184(s0)
     22c:	a6180034 	sh	t8,52(s0)
     230:	c50600bc 	lwc1	$f6,188(t0)
     234:	e60600bc 	swc1	$f6,188(s0)
     238:	8fbf001c 	lw	ra,28(sp)
     23c:	8fb10018 	lw	s1,24(sp)
     240:	8fb00014 	lw	s0,20(sp)
     244:	03e00008 	jr	ra
     248:	27bd0028 	addiu	sp,sp,40

0000024c <func_8094F50C>:
     24c:	27bdffa0 	addiu	sp,sp,-96
     250:	f7b60028 	sdc1	$f22,40(sp)
     254:	3c014170 	lui	at,0x4170
     258:	4481b000 	mtc1	at,$f22
     25c:	afb60048 	sw	s6,72(sp)
     260:	afb50044 	sw	s5,68(sp)
     264:	afb20038 	sw	s2,56(sp)
     268:	f7b40020 	sdc1	$f20,32(sp)
     26c:	3c014120 	lui	at,0x4120
     270:	0006ac00 	sll	s5,a2,0x10
     274:	0007b400 	sll	s6,a3,0x10
     278:	afb40040 	sw	s4,64(sp)
     27c:	afb3003c 	sw	s3,60(sp)
     280:	afb10034 	sw	s1,52(sp)
     284:	afb00030 	sw	s0,48(sp)
     288:	3c120000 	lui	s2,0x0
     28c:	4481a000 	mtc1	at,$f20
     290:	00a08825 	move	s1,a1
     294:	0080a025 	move	s4,a0
     298:	0016b403 	sra	s6,s6,0x10
     29c:	0015ac03 	sra	s5,s5,0x10
     2a0:	afbf004c 	sw	ra,76(sp)
     2a4:	afa60068 	sw	a2,104(sp)
     2a8:	afa7006c 	sw	a3,108(sp)
     2ac:	26520000 	addiu	s2,s2,0
     2b0:	24100002 	li	s0,2
     2b4:	27b30050 	addiu	s3,sp,80
     2b8:	0c000000 	jal	0 <func_8094F2C0>
     2bc:	4600a306 	mov.s	$f12,$f20
     2c0:	c6240000 	lwc1	$f4,0(s1)
     2c4:	46040180 	add.s	$f6,$f0,$f4
     2c8:	0c000000 	jal	0 <func_8094F2C0>
     2cc:	e7a60050 	swc1	$f6,80(sp)
     2d0:	46160282 	mul.s	$f10,$f0,$f22
     2d4:	c6280004 	lwc1	$f8,4(s1)
     2d8:	4600a306 	mov.s	$f12,$f20
     2dc:	460a4401 	sub.s	$f16,$f8,$f10
     2e0:	0c000000 	jal	0 <func_8094F2C0>
     2e4:	e7b00054 	swc1	$f16,84(sp)
     2e8:	c6320008 	lwc1	$f18,8(s1)
     2ec:	afb60014 	sw	s6,20(sp)
     2f0:	afb50010 	sw	s5,16(sp)
     2f4:	46120100 	add.s	$f4,$f0,$f18
     2f8:	02802025 	move	a0,s4
     2fc:	02402825 	move	a1,s2
     300:	02603025 	move	a2,s3
     304:	e7a40058 	swc1	$f4,88(sp)
     308:	0c000000 	jal	0 <func_8094F2C0>
     30c:	24070041 	li	a3,65
     310:	2610ffff 	addiu	s0,s0,-1
     314:	1600ffe8 	bnez	s0,2b8 <func_8094F50C+0x6c>
     318:	00000000 	nop
     31c:	8fbf004c 	lw	ra,76(sp)
     320:	d7b40020 	ldc1	$f20,32(sp)
     324:	d7b60028 	ldc1	$f22,40(sp)
     328:	8fb00030 	lw	s0,48(sp)
     32c:	8fb10034 	lw	s1,52(sp)
     330:	8fb20038 	lw	s2,56(sp)
     334:	8fb3003c 	lw	s3,60(sp)
     338:	8fb40040 	lw	s4,64(sp)
     33c:	8fb50044 	lw	s5,68(sp)
     340:	8fb60048 	lw	s6,72(sp)
     344:	03e00008 	jr	ra
     348:	27bd0060 	addiu	sp,sp,96

0000034c <func_8094F60C>:
     34c:	27bdff90 	addiu	sp,sp,-112
     350:	afb00038 	sw	s0,56(sp)
     354:	8fb00080 	lw	s0,128(sp)
     358:	afb40048 	sw	s4,72(sp)
     35c:	afb30044 	sw	s3,68(sp)
     360:	00069c00 	sll	s3,a2,0x10
     364:	0007a400 	sll	s4,a3,0x10
     368:	afb20040 	sw	s2,64(sp)
     36c:	afb1003c 	sw	s1,60(sp)
     370:	00a08825 	move	s1,a1
     374:	00809025 	move	s2,a0
     378:	0014a403 	sra	s4,s4,0x10
     37c:	00139c03 	sra	s3,s3,0x10
     380:	afbf0054 	sw	ra,84(sp)
     384:	afb60050 	sw	s6,80(sp)
     388:	afb5004c 	sw	s5,76(sp)
     38c:	f7b80030 	sdc1	$f24,48(sp)
     390:	f7b60028 	sdc1	$f22,40(sp)
     394:	f7b40020 	sdc1	$f20,32(sp)
     398:	afa60078 	sw	a2,120(sp)
     39c:	1a000028 	blez	s0,440 <func_8094F60C+0xf4>
     3a0:	afa7007c 	sw	a3,124(sp)
     3a4:	3c010000 	lui	at,0x0
     3a8:	c4380000 	lwc1	$f24,0(at)
     3ac:	3c014170 	lui	at,0x4170
     3b0:	4481b000 	mtc1	at,$f22
     3b4:	3c014120 	lui	at,0x4120
     3b8:	3c150000 	lui	s5,0x0
     3bc:	4481a000 	mtc1	at,$f20
     3c0:	26b50000 	addiu	s5,s5,0
     3c4:	27b60060 	addiu	s6,sp,96
     3c8:	0c000000 	jal	0 <func_8094F2C0>
     3cc:	4600a306 	mov.s	$f12,$f20
     3d0:	c6240000 	lwc1	$f4,0(s1)
     3d4:	46040180 	add.s	$f6,$f0,$f4
     3d8:	0c000000 	jal	0 <func_8094F2C0>
     3dc:	e7a60060 	swc1	$f6,96(sp)
     3e0:	46160282 	mul.s	$f10,$f0,$f22
     3e4:	c6280004 	lwc1	$f8,4(s1)
     3e8:	4600a306 	mov.s	$f12,$f20
     3ec:	460a4401 	sub.s	$f16,$f8,$f10
     3f0:	0c000000 	jal	0 <func_8094F2C0>
     3f4:	e7b00064 	swc1	$f16,100(sp)
     3f8:	c6320008 	lwc1	$f18,8(s1)
     3fc:	4600c306 	mov.s	$f12,$f24
     400:	46120100 	add.s	$f4,$f0,$f18
     404:	0c000000 	jal	0 <func_8094F2C0>
     408:	e7a40068 	swc1	$f4,104(sp)
     40c:	4600018d 	trunc.w.s	$f6,$f0
     410:	02402025 	move	a0,s2
     414:	02a02825 	move	a1,s5
     418:	02c03025 	move	a2,s6
     41c:	44193000 	mfc1	t9,$f6
     420:	afb40010 	sw	s4,16(sp)
     424:	03333821 	addu	a3,t9,s3
     428:	00073c00 	sll	a3,a3,0x10
     42c:	0c000000 	jal	0 <func_8094F2C0>
     430:	00073c03 	sra	a3,a3,0x10
     434:	2610ffff 	addiu	s0,s0,-1
     438:	1600ffe3 	bnez	s0,3c8 <func_8094F60C+0x7c>
     43c:	00000000 	nop
     440:	8fbf0054 	lw	ra,84(sp)
     444:	d7b40020 	ldc1	$f20,32(sp)
     448:	d7b60028 	ldc1	$f22,40(sp)
     44c:	d7b80030 	ldc1	$f24,48(sp)
     450:	8fb00038 	lw	s0,56(sp)
     454:	8fb1003c 	lw	s1,60(sp)
     458:	8fb20040 	lw	s2,64(sp)
     45c:	8fb30044 	lw	s3,68(sp)
     460:	8fb40048 	lw	s4,72(sp)
     464:	8fb5004c 	lw	s5,76(sp)
     468:	8fb60050 	lw	s6,80(sp)
     46c:	03e00008 	jr	ra
     470:	27bd0070 	addiu	sp,sp,112

00000474 <func_8094F734>:
     474:	27bdff98 	addiu	sp,sp,-104
     478:	3c0e0000 	lui	t6,0x0
     47c:	81ce0000 	lb	t6,0(t6)
     480:	afb60048 	sw	s6,72(sp)
     484:	afb50044 	sw	s5,68(sp)
     488:	0006ac00 	sll	s5,a2,0x10
     48c:	0007b400 	sll	s6,a3,0x10
     490:	afb40040 	sw	s4,64(sp)
     494:	afb10034 	sw	s1,52(sp)
     498:	29c10014 	slti	at,t6,20
     49c:	00a08825 	move	s1,a1
     4a0:	0080a025 	move	s4,a0
     4a4:	0016b403 	sra	s6,s6,0x10
     4a8:	0015ac03 	sra	s5,s5,0x10
     4ac:	afbf004c 	sw	ra,76(sp)
     4b0:	afb3003c 	sw	s3,60(sp)
     4b4:	afb20038 	sw	s2,56(sp)
     4b8:	afb00030 	sw	s0,48(sp)
     4bc:	f7b60028 	sdc1	$f22,40(sp)
     4c0:	f7b40020 	sdc1	$f20,32(sp)
     4c4:	afa60070 	sw	a2,112(sp)
     4c8:	10200003 	beqz	at,4d8 <func_8094F734+0x64>
     4cc:	afa70074 	sw	a3,116(sp)
     4d0:	10000002 	b	4dc <func_8094F734+0x68>
     4d4:	24100002 	li	s0,2
     4d8:	24100001 	li	s0,1
     4dc:	1a000025 	blez	s0,574 <func_8094F734+0x100>
     4e0:	3c010000 	lui	at,0x0
     4e4:	c4360000 	lwc1	$f22,0(at)
     4e8:	3c014120 	lui	at,0x4120
     4ec:	3c120000 	lui	s2,0x0
     4f0:	4481a000 	mtc1	at,$f20
     4f4:	26520000 	addiu	s2,s2,0
     4f8:	27b30058 	addiu	s3,sp,88
     4fc:	0c000000 	jal	0 <func_8094F2C0>
     500:	4600a306 	mov.s	$f12,$f20
     504:	c6240000 	lwc1	$f4,0(s1)
     508:	4600a306 	mov.s	$f12,$f20
     50c:	46040180 	add.s	$f6,$f0,$f4
     510:	0c000000 	jal	0 <func_8094F2C0>
     514:	e7a60058 	swc1	$f6,88(sp)
     518:	c6280004 	lwc1	$f8,4(s1)
     51c:	4600a306 	mov.s	$f12,$f20
     520:	46080280 	add.s	$f10,$f0,$f8
     524:	0c000000 	jal	0 <func_8094F2C0>
     528:	e7aa005c 	swc1	$f10,92(sp)
     52c:	c6300008 	lwc1	$f16,8(s1)
     530:	4600b306 	mov.s	$f12,$f22
     534:	46100480 	add.s	$f18,$f0,$f16
     538:	0c000000 	jal	0 <func_8094F2C0>
     53c:	e7b20060 	swc1	$f18,96(sp)
     540:	4600010d 	trunc.w.s	$f4,$f0
     544:	02802025 	move	a0,s4
     548:	02402825 	move	a1,s2
     54c:	02603025 	move	a2,s3
     550:	44082000 	mfc1	t0,$f4
     554:	afb60010 	sw	s6,16(sp)
     558:	01153821 	addu	a3,t0,s5
     55c:	00073c00 	sll	a3,a3,0x10
     560:	0c000000 	jal	0 <func_8094F2C0>
     564:	00073c03 	sra	a3,a3,0x10
     568:	2610ffff 	addiu	s0,s0,-1
     56c:	1e00ffe3 	bgtz	s0,4fc <func_8094F734+0x88>
     570:	00000000 	nop
     574:	8fbf004c 	lw	ra,76(sp)
     578:	d7b40020 	ldc1	$f20,32(sp)
     57c:	d7b60028 	ldc1	$f22,40(sp)
     580:	8fb00030 	lw	s0,48(sp)
     584:	8fb10034 	lw	s1,52(sp)
     588:	8fb20038 	lw	s2,56(sp)
     58c:	8fb3003c 	lw	s3,60(sp)
     590:	8fb40040 	lw	s4,64(sp)
     594:	8fb50044 	lw	s5,68(sp)
     598:	8fb60048 	lw	s6,72(sp)
     59c:	03e00008 	jr	ra
     5a0:	27bd0068 	addiu	sp,sp,104

000005a4 <func_8094F864>:
     5a4:	27bdff80 	addiu	sp,sp,-128
     5a8:	afb30044 	sw	s3,68(sp)
     5ac:	afb20040 	sw	s2,64(sp)
     5b0:	00a09025 	move	s2,a1
     5b4:	afbf005c 	sw	ra,92(sp)
     5b8:	afbe0058 	sw	s8,88(sp)
     5bc:	afb70054 	sw	s7,84(sp)
     5c0:	afb60050 	sw	s6,80(sp)
     5c4:	afb5004c 	sw	s5,76(sp)
     5c8:	afb40048 	sw	s4,72(sp)
     5cc:	afb1003c 	sw	s1,60(sp)
     5d0:	afb00038 	sw	s0,56(sp)
     5d4:	f7b80030 	sdc1	$f24,48(sp)
     5d8:	f7b60028 	sdc1	$f22,40(sp)
     5dc:	f7b40020 	sdc1	$f20,32(sp)
     5e0:	afa40080 	sw	a0,128(sp)
     5e4:	afa7008c 	sw	a3,140(sp)
     5e8:	18c00040 	blez	a2,6ec <func_8094F864+0x148>
     5ec:	00c09825 	move	s3,a2
     5f0:	3c010000 	lui	at,0x0
     5f4:	c4260000 	lwc1	$f6,0(at)
     5f8:	c7a4009c 	lwc1	$f4,156(sp)
     5fc:	3c170000 	lui	s7,0x0
     600:	26f70000 	addiu	s7,s7,0
     604:	c7b80094 	lwc1	$f24,148(sp)
     608:	c7b40090 	lwc1	$f20,144(sp)
     60c:	27be006c 	addiu	s8,sp,108
     610:	2416000c 	li	s6,12
     614:	93b5009b 	lbu	s5,155(sp)
     618:	93b400a3 	lbu	s4,163(sp)
     61c:	46062581 	sub.s	$f22,$f4,$f6
     620:	5680000b 	bnezl	s4,650 <func_8094F864+0xac>
     624:	4600b40d 	trunc.w.s	$f16,$f22
     628:	0c000000 	jal	0 <func_8094F2C0>
     62c:	00000000 	nop
     630:	46160202 	mul.s	$f8,$f0,$f22
     634:	4600428d 	trunc.w.s	$f10,$f8
     638:	44115000 	mfc1	s1,$f10
     63c:	00000000 	nop
     640:	00118c00 	sll	s1,s1,0x10
     644:	10000006 	b	660 <func_8094F864+0xbc>
     648:	00118c03 	sra	s1,s1,0x10
     64c:	4600b40d 	trunc.w.s	$f16,$f22
     650:	44118000 	mfc1	s1,$f16
     654:	00000000 	nop
     658:	00118c00 	sll	s1,s1,0x10
     65c:	00118c03 	sra	s1,s1,0x10
     660:	0c000000 	jal	0 <func_8094F2C0>
     664:	4600a306 	mov.s	$f12,$f20
     668:	02360019 	multu	s1,s6
     66c:	c6460024 	lwc1	$f6,36(s2)
     670:	4600c306 	mov.s	$f12,$f24
     674:	0000c012 	mflo	t8
     678:	02588021 	addu	s0,s2,t8
     67c:	c61201fc 	lwc1	$f18,508(s0)
     680:	46009100 	add.s	$f4,$f18,$f0
     684:	46062201 	sub.s	$f8,$f4,$f6
     688:	0c000000 	jal	0 <func_8094F2C0>
     68c:	e7a8006c 	swc1	$f8,108(sp)
     690:	c60a0200 	lwc1	$f10,512(s0)
     694:	c6520028 	lwc1	$f18,40(s2)
     698:	4600a306 	mov.s	$f12,$f20
     69c:	46005400 	add.s	$f16,$f10,$f0
     6a0:	46128101 	sub.s	$f4,$f16,$f18
     6a4:	0c000000 	jal	0 <func_8094F2C0>
     6a8:	e7a40070 	swc1	$f4,112(sp)
     6ac:	c6060204 	lwc1	$f6,516(s0)
     6b0:	c64a002c 	lwc1	$f10,44(s2)
     6b4:	87b9008e 	lh	t9,142(sp)
     6b8:	46003200 	add.s	$f8,$f6,$f0
     6bc:	afb50014 	sw	s5,20(sp)
     6c0:	8fa40080 	lw	a0,128(sp)
     6c4:	02e02825 	move	a1,s7
     6c8:	460a4401 	sub.s	$f16,$f8,$f10
     6cc:	02403025 	move	a2,s2
     6d0:	03c03825 	move	a3,s8
     6d4:	afb90010 	sw	t9,16(sp)
     6d8:	0c000000 	jal	0 <func_8094F2C0>
     6dc:	e7b00074 	swc1	$f16,116(sp)
     6e0:	2673ffff 	addiu	s3,s3,-1
     6e4:	1660ffce 	bnez	s3,620 <func_8094F864+0x7c>
     6e8:	00000000 	nop
     6ec:	8fbf005c 	lw	ra,92(sp)
     6f0:	d7b40020 	ldc1	$f20,32(sp)
     6f4:	d7b60028 	ldc1	$f22,40(sp)
     6f8:	d7b80030 	ldc1	$f24,48(sp)
     6fc:	8fb00038 	lw	s0,56(sp)
     700:	8fb1003c 	lw	s1,60(sp)
     704:	8fb20040 	lw	s2,64(sp)
     708:	8fb30044 	lw	s3,68(sp)
     70c:	8fb40048 	lw	s4,72(sp)
     710:	8fb5004c 	lw	s5,76(sp)
     714:	8fb60050 	lw	s6,80(sp)
     718:	8fb70054 	lw	s7,84(sp)
     71c:	8fbe0058 	lw	s8,88(sp)
     720:	03e00008 	jr	ra
     724:	27bd0080 	addiu	sp,sp,128

00000728 <func_8094F9E8>:
     728:	27bdff80 	addiu	sp,sp,-128
     72c:	afb30044 	sw	s3,68(sp)
     730:	afb20040 	sw	s2,64(sp)
     734:	00a09025 	move	s2,a1
     738:	afbf005c 	sw	ra,92(sp)
     73c:	afbe0058 	sw	s8,88(sp)
     740:	afb70054 	sw	s7,84(sp)
     744:	afb60050 	sw	s6,80(sp)
     748:	afb5004c 	sw	s5,76(sp)
     74c:	afb40048 	sw	s4,72(sp)
     750:	afb1003c 	sw	s1,60(sp)
     754:	afb00038 	sw	s0,56(sp)
     758:	f7b80030 	sdc1	$f24,48(sp)
     75c:	f7b60028 	sdc1	$f22,40(sp)
     760:	f7b40020 	sdc1	$f20,32(sp)
     764:	afa40080 	sw	a0,128(sp)
     768:	afa7008c 	sw	a3,140(sp)
     76c:	18c00040 	blez	a2,870 <func_8094F9E8+0x148>
     770:	00c09825 	move	s3,a2
     774:	3c010000 	lui	at,0x0
     778:	c4260000 	lwc1	$f6,0(at)
     77c:	c7a4009c 	lwc1	$f4,156(sp)
     780:	3c170000 	lui	s7,0x0
     784:	26f70000 	addiu	s7,s7,0
     788:	c7b80094 	lwc1	$f24,148(sp)
     78c:	c7b40090 	lwc1	$f20,144(sp)
     790:	27be006c 	addiu	s8,sp,108
     794:	2416000c 	li	s6,12
     798:	93b5009b 	lbu	s5,155(sp)
     79c:	93b400a3 	lbu	s4,163(sp)
     7a0:	46062581 	sub.s	$f22,$f4,$f6
     7a4:	5680000b 	bnezl	s4,7d4 <func_8094F9E8+0xac>
     7a8:	4600b40d 	trunc.w.s	$f16,$f22
     7ac:	0c000000 	jal	0 <func_8094F2C0>
     7b0:	00000000 	nop
     7b4:	46160202 	mul.s	$f8,$f0,$f22
     7b8:	4600428d 	trunc.w.s	$f10,$f8
     7bc:	44115000 	mfc1	s1,$f10
     7c0:	00000000 	nop
     7c4:	00118c00 	sll	s1,s1,0x10
     7c8:	10000006 	b	7e4 <func_8094F9E8+0xbc>
     7cc:	00118c03 	sra	s1,s1,0x10
     7d0:	4600b40d 	trunc.w.s	$f16,$f22
     7d4:	44118000 	mfc1	s1,$f16
     7d8:	00000000 	nop
     7dc:	00118c00 	sll	s1,s1,0x10
     7e0:	00118c03 	sra	s1,s1,0x10
     7e4:	0c000000 	jal	0 <func_8094F2C0>
     7e8:	4600a306 	mov.s	$f12,$f20
     7ec:	02360019 	multu	s1,s6
     7f0:	c6460024 	lwc1	$f6,36(s2)
     7f4:	4600c306 	mov.s	$f12,$f24
     7f8:	0000c012 	mflo	t8
     7fc:	02588021 	addu	s0,s2,t8
     800:	c61201fc 	lwc1	$f18,508(s0)
     804:	46009100 	add.s	$f4,$f18,$f0
     808:	46062201 	sub.s	$f8,$f4,$f6
     80c:	0c000000 	jal	0 <func_8094F2C0>
     810:	e7a8006c 	swc1	$f8,108(sp)
     814:	c60a0200 	lwc1	$f10,512(s0)
     818:	c6520028 	lwc1	$f18,40(s2)
     81c:	4600a306 	mov.s	$f12,$f20
     820:	46005400 	add.s	$f16,$f10,$f0
     824:	46128101 	sub.s	$f4,$f16,$f18
     828:	0c000000 	jal	0 <func_8094F2C0>
     82c:	e7a40070 	swc1	$f4,112(sp)
     830:	c6060204 	lwc1	$f6,516(s0)
     834:	c64a002c 	lwc1	$f10,44(s2)
     838:	87b9008e 	lh	t9,142(sp)
     83c:	46003200 	add.s	$f8,$f6,$f0
     840:	afb50014 	sw	s5,20(sp)
     844:	8fa40080 	lw	a0,128(sp)
     848:	02e02825 	move	a1,s7
     84c:	460a4401 	sub.s	$f16,$f8,$f10
     850:	02403025 	move	a2,s2
     854:	03c03825 	move	a3,s8
     858:	afb90010 	sw	t9,16(sp)
     85c:	0c000000 	jal	0 <func_8094F2C0>
     860:	e7b00074 	swc1	$f16,116(sp)
     864:	2673ffff 	addiu	s3,s3,-1
     868:	1660ffce 	bnez	s3,7a4 <func_8094F9E8+0x7c>
     86c:	00000000 	nop
     870:	8fbf005c 	lw	ra,92(sp)
     874:	d7b40020 	ldc1	$f20,32(sp)
     878:	d7b60028 	ldc1	$f22,40(sp)
     87c:	d7b80030 	ldc1	$f24,48(sp)
     880:	8fb00038 	lw	s0,56(sp)
     884:	8fb1003c 	lw	s1,60(sp)
     888:	8fb20040 	lw	s2,64(sp)
     88c:	8fb30044 	lw	s3,68(sp)
     890:	8fb40048 	lw	s4,72(sp)
     894:	8fb5004c 	lw	s5,76(sp)
     898:	8fb60050 	lw	s6,80(sp)
     89c:	8fb70054 	lw	s7,84(sp)
     8a0:	8fbe0058 	lw	s8,88(sp)
     8a4:	03e00008 	jr	ra
     8a8:	27bd0080 	addiu	sp,sp,128

000008ac <func_8094FB6C>:
     8ac:	3c010001 	lui	at,0x1
     8b0:	00811021 	addu	v0,a0,at
     8b4:	2403000a 	li	v1,10
     8b8:	24050078 	li	a1,120
     8bc:	240e0073 	li	t6,115
     8c0:	240f0041 	li	t7,65
     8c4:	24180064 	li	t8,100
     8c8:	24190046 	li	t9,70
     8cc:	a4430ab0 	sh	v1,2736(v0)
     8d0:	a4430ab2 	sh	v1,2738(v0)
     8d4:	a4430ab4 	sh	v1,2740(v0)
     8d8:	a44e0ab6 	sh	t6,2742(v0)
     8dc:	a44f0ab8 	sh	t7,2744(v0)
     8e0:	a4580aba 	sh	t8,2746(v0)
     8e4:	a4450abc 	sh	a1,2748(v0)
     8e8:	a4450abe 	sh	a1,2750(v0)
     8ec:	03e00008 	jr	ra
     8f0:	a4590ac0 	sh	t9,2752(v0)

000008f4 <func_8094FBB4>:
     8f4:	3c010001 	lui	at,0x1
     8f8:	00811021 	addu	v0,a0,at
     8fc:	240300dc 	li	v1,220
     900:	240e0096 	li	t6,150
     904:	a4430abc 	sh	v1,2748(v0)
     908:	a4430abe 	sh	v1,2750(v0)
     90c:	a44e0ac0 	sh	t6,2752(v0)
     910:	00240821 	addu	at,at,a0
     914:	240ffc18 	li	t7,-1000
     918:	a42f0ac2 	sh	t7,2754(at)
     91c:	3c010001 	lui	at,0x1
     920:	00240821 	addu	at,at,a0
     924:	2418fc7c 	li	t8,-900
     928:	a4380ac4 	sh	t8,2756(at)
     92c:	240500c8 	li	a1,200
     930:	240600dc 	li	a2,220
     934:	241900d7 	li	t9,215
     938:	240800a5 	li	t0,165
     93c:	24090096 	li	t1,150
     940:	240a0064 	li	t2,100
     944:	a4450ab0 	sh	a1,2736(v0)
     948:	a4450ab2 	sh	a1,2738(v0)
     94c:	a4450ab4 	sh	a1,2740(v0)
     950:	a4590ab6 	sh	t9,2742(v0)
     954:	a4480ab8 	sh	t0,2744(v0)
     958:	a4450aba 	sh	a1,2746(v0)
     95c:	a0460b06 	sb	a2,2822(v0)
     960:	a0460b07 	sb	a2,2823(v0)
     964:	a0490b08 	sb	t1,2824(v0)
     968:	03e00008 	jr	ra
     96c:	a04a0b09 	sb	t2,2825(v0)

00000970 <func_8094FC30>:
     970:	8c831c74 	lw	v1,7284(a0)
     974:	24020032 	li	v0,50
     978:	5060000b 	beqzl	v1,9a8 <func_8094FC30+0x38>
     97c:	00001025 	move	v0,zero
     980:	846e0000 	lh	t6,0(v1)
     984:	104e0003 	beq	v0,t6,994 <func_8094FC30+0x24>
     988:	00000000 	nop
     98c:	10000003 	b	99c <func_8094FC30+0x2c>
     990:	8c630124 	lw	v1,292(v1)
     994:	03e00008 	jr	ra
     998:	00601025 	move	v0,v1
     99c:	5460fff9 	bnezl	v1,984 <func_8094FC30+0x14>
     9a0:	846e0000 	lh	t6,0(v1)
     9a4:	00001025 	move	v0,zero
     9a8:	03e00008 	jr	ra
     9ac:	00000000 	nop

000009b0 <func_8094FC70>:
     9b0:	27bdff68 	addiu	sp,sp,-152
     9b4:	3c0e0000 	lui	t6,0x0
     9b8:	afbf0064 	sw	ra,100(sp)
     9bc:	afb60060 	sw	s6,96(sp)
     9c0:	afb5005c 	sw	s5,92(sp)
     9c4:	afb40058 	sw	s4,88(sp)
     9c8:	afb30054 	sw	s3,84(sp)
     9cc:	afb20050 	sw	s2,80(sp)
     9d0:	afb1004c 	sw	s1,76(sp)
     9d4:	afb00048 	sw	s0,72(sp)
     9d8:	f7ba0040 	sdc1	$f26,64(sp)
     9dc:	f7b80038 	sdc1	$f24,56(sp)
     9e0:	f7b60030 	sdc1	$f22,48(sp)
     9e4:	f7b40028 	sdc1	$f20,40(sp)
     9e8:	25ce0000 	addiu	t6,t6,0
     9ec:	8dd80000 	lw	t8,0(t6)
     9f0:	27b40078 	addiu	s4,sp,120
     9f4:	3c190000 	lui	t9,0x0
     9f8:	ae980000 	sw	t8,0(s4)
     9fc:	8dcf0004 	lw	t7,4(t6)
     a00:	27390000 	addiu	t9,t9,0
     a04:	27b5006c 	addiu	s5,sp,108
     a08:	ae8f0004 	sw	t7,4(s4)
     a0c:	8dd80008 	lw	t8,8(t6)
     a10:	3c010000 	lui	at,0x0
     a14:	00808825 	move	s1,a0
     a18:	ae980008 	sw	t8,8(s4)
     a1c:	8f290000 	lw	t1,0(t9)
     a20:	00a09825 	move	s3,a1
     a24:	24120007 	li	s2,7
     a28:	aea90000 	sw	t1,0(s5)
     a2c:	8f280004 	lw	t0,4(t9)
     a30:	27b60084 	addiu	s6,sp,132
     a34:	aea80004 	sw	t0,4(s5)
     a38:	8f290008 	lw	t1,8(t9)
     a3c:	aea90008 	sw	t1,8(s5)
     a40:	c43a0000 	lwc1	$f26,0(at)
     a44:	3c013f80 	lui	at,0x3f80
     a48:	4481c000 	mtc1	at,$f24
     a4c:	3c014248 	lui	at,0x4248
     a50:	4481b000 	mtc1	at,$f22
     a54:	3c014270 	lui	at,0x4270
     a58:	4481a000 	mtc1	at,$f20
     a5c:	00000000 	nop
     a60:	0c000000 	jal	0 <func_8094F2C0>
     a64:	4600a306 	mov.s	$f12,$f20
     a68:	c6240024 	lwc1	$f4,36(s1)
     a6c:	4600b306 	mov.s	$f12,$f22
     a70:	46040180 	add.s	$f6,$f0,$f4
     a74:	0c000000 	jal	0 <func_8094F2C0>
     a78:	e7a60084 	swc1	$f6,132(sp)
     a7c:	c62800bc 	lwc1	$f8,188(s1)
     a80:	c62a0054 	lwc1	$f10,84(s1)
     a84:	c6320028 	lwc1	$f18,40(s1)
     a88:	4600a306 	mov.s	$f12,$f20
     a8c:	460a4402 	mul.s	$f16,$f8,$f10
     a90:	46109100 	add.s	$f4,$f18,$f16
     a94:	46040180 	add.s	$f6,$f0,$f4
     a98:	0c000000 	jal	0 <func_8094F2C0>
     a9c:	e7a60088 	swc1	$f6,136(sp)
     aa0:	c628002c 	lwc1	$f8,44(s1)
     aa4:	46080280 	add.s	$f10,$f0,$f8
     aa8:	0c000000 	jal	0 <func_8094F2C0>
     aac:	e7aa008c 	swc1	$f10,140(sp)
     ab0:	46180480 	add.s	$f18,$f0,$f24
     ab4:	24040050 	li	a0,80
     ab8:	24050064 	li	a1,100
     abc:	0c000000 	jal	0 <func_8094F2C0>
     ac0:	e7b2007c 	swc1	$f18,124(sp)
     ac4:	00028400 	sll	s0,v0,0x10
     ac8:	0c000000 	jal	0 <func_8094F2C0>
     acc:	00108403 	sra	s0,s0,0x10
     ad0:	461a003c 	c.lt.s	$f0,$f26
     ad4:	02602025 	move	a0,s3
     ad8:	02c02825 	move	a1,s6
     adc:	02803025 	move	a2,s4
     ae0:	4500000f 	bc1f	b20 <func_8094FC70+0x170>
     ae4:	02a03825 	move	a3,s5
     ae8:	240a0019 	li	t2,25
     aec:	240b0002 	li	t3,2
     af0:	240c0001 	li	t4,1
     af4:	afac001c 	sw	t4,28(sp)
     af8:	afab0018 	sw	t3,24(sp)
     afc:	afaa0014 	sw	t2,20(sp)
     b00:	02602025 	move	a0,s3
     b04:	02c02825 	move	a1,s6
     b08:	02803025 	move	a2,s4
     b0c:	02a03825 	move	a3,s5
     b10:	0c000000 	jal	0 <func_8094F2C0>
     b14:	afb00010 	sw	s0,16(sp)
     b18:	10000009 	b	b40 <func_8094FC70+0x190>
     b1c:	2652ffff 	addiu	s2,s2,-1
     b20:	240d0019 	li	t5,25
     b24:	240e0001 	li	t6,1
     b28:	afae001c 	sw	t6,28(sp)
     b2c:	afad0014 	sw	t5,20(sp)
     b30:	afb00010 	sw	s0,16(sp)
     b34:	0c000000 	jal	0 <func_8094F2C0>
     b38:	afa00018 	sw	zero,24(sp)
     b3c:	2652ffff 	addiu	s2,s2,-1
     b40:	0641ffc7 	bgez	s2,a60 <func_8094FC70+0xb0>
     b44:	00000000 	nop
     b48:	3c020000 	lui	v0,0x0
     b4c:	24420000 	addiu	v0,v0,0
     b50:	904f0000 	lbu	t7,0(v0)
     b54:	02202025 	move	a0,s1
     b58:	25f80001 	addiu	t8,t7,1
     b5c:	0c000000 	jal	0 <func_8094F2C0>
     b60:	a0580000 	sb	t8,0(v0)
     b64:	8fbf0064 	lw	ra,100(sp)
     b68:	d7b40028 	ldc1	$f20,40(sp)
     b6c:	d7b60030 	ldc1	$f22,48(sp)
     b70:	d7b80038 	ldc1	$f24,56(sp)
     b74:	d7ba0040 	ldc1	$f26,64(sp)
     b78:	8fb00048 	lw	s0,72(sp)
     b7c:	8fb1004c 	lw	s1,76(sp)
     b80:	8fb20050 	lw	s2,80(sp)
     b84:	8fb30054 	lw	s3,84(sp)
     b88:	8fb40058 	lw	s4,88(sp)
     b8c:	8fb5005c 	lw	s5,92(sp)
     b90:	8fb60060 	lw	s6,96(sp)
     b94:	03e00008 	jr	ra
     b98:	27bd0098 	addiu	sp,sp,152

00000b9c <BossVa_Init>:
     b9c:	27bdff88 	addiu	sp,sp,-120
     ba0:	afb40048 	sw	s4,72(sp)
     ba4:	00a0a025 	move	s4,a1
     ba8:	afbf004c 	sw	ra,76(sp)
     bac:	afb30044 	sw	s3,68(sp)
     bb0:	3c053dcc 	lui	a1,0x3dcc
     bb4:	00809825 	move	s3,a0
     bb8:	afb20040 	sw	s2,64(sp)
     bbc:	afb1003c 	sw	s1,60(sp)
     bc0:	afb00038 	sw	s0,56(sp)
     bc4:	0c000000 	jal	0 <func_8094F2C0>
     bc8:	34a5cccd 	ori	a1,a1,0xcccd
     bcc:	8678001c 	lh	t8,28(s3)
     bd0:	240e0005 	li	t6,5
     bd4:	240f00ff 	li	t7,255
     bd8:	27190001 	addiu	t9,t8,1
     bdc:	2f210015 	sltiu	at,t9,21
     be0:	a26e001f 	sb	t6,31(s3)
     be4:	1020003a 	beqz	at,cd0 <L8094FF90>
     be8:	a26f00ae 	sb	t7,174(s3)
     bec:	0019c880 	sll	t9,t9,0x2
     bf0:	3c010000 	lui	at,0x0
     bf4:	00390821 	addu	at,at,t9
     bf8:	8c390000 	lw	t9,0(at)
     bfc:	03200008 	jr	t9
     c00:	00000000 	nop

00000c04 <L8094FEC4>:
     c04:	3c060601 	lui	a2,0x601
     c08:	3c070600 	lui	a3,0x600
     c0c:	24e75184 	addiu	a3,a3,20868
     c10:	24c65b18 	addiu	a2,a2,23320
     c14:	02802025 	move	a0,s4
     c18:	2665014c 	addiu	a1,s3,332
     c1c:	afa00010 	sw	zero,16(sp)
     c20:	afa00014 	sw	zero,20(sp)
     c24:	0c000000 	jal	0 <func_8094F2C0>
     c28:	afa00018 	sw	zero,24(sp)
     c2c:	8e690004 	lw	t1,4(s3)
     c30:	3c010100 	lui	at,0x100
     c34:	01215025 	or	t2,t1,at
     c38:	10000037 	b	d18 <L8094FFD8>
     c3c:	ae6a0004 	sw	t2,4(s3)

00000c40 <L8094FF00>:
     c40:	3c060601 	lui	a2,0x601
     c44:	3c070601 	lui	a3,0x601
     c48:	24e766a8 	addiu	a3,a3,26280
     c4c:	24c67498 	addiu	a2,a2,29848
     c50:	02802025 	move	a0,s4
     c54:	2665014c 	addiu	a1,s3,332
     c58:	afa00010 	sw	zero,16(sp)
     c5c:	afa00014 	sw	zero,20(sp)
     c60:	0c000000 	jal	0 <func_8094F2C0>
     c64:	afa00018 	sw	zero,24(sp)
     c68:	1000002c 	b	d1c <L8094FFD8+0x4>
     c6c:	8e6e0024 	lw	t6,36(s3)

00000c70 <L8094FF30>:
     c70:	3c060602 	lui	a2,0x602
     c74:	3c070602 	lui	a3,0x602
     c78:	24e78d18 	addiu	a3,a3,-29416
     c7c:	24c699a0 	addiu	a2,a2,-26208
     c80:	02802025 	move	a0,s4
     c84:	2665014c 	addiu	a1,s3,332
     c88:	afa00010 	sw	zero,16(sp)
     c8c:	afa00014 	sw	zero,20(sp)
     c90:	0c000000 	jal	0 <func_8094F2C0>
     c94:	afa00018 	sw	zero,24(sp)
     c98:	10000020 	b	d1c <L8094FFD8+0x4>
     c9c:	8e6e0024 	lw	t6,36(s3)

00000ca0 <L8094FF60>:
     ca0:	3c060602 	lui	a2,0x602
     ca4:	3c070602 	lui	a3,0x602
     ca8:	24e78150 	addiu	a3,a3,-32432
     cac:	24c68870 	addiu	a2,a2,-30608
     cb0:	02802025 	move	a0,s4
     cb4:	2665014c 	addiu	a1,s3,332
     cb8:	afa00010 	sw	zero,16(sp)
     cbc:	afa00014 	sw	zero,20(sp)
     cc0:	0c000000 	jal	0 <func_8094F2C0>
     cc4:	afa00018 	sw	zero,24(sp)
     cc8:	10000014 	b	d1c <L8094FFD8+0x4>
     ccc:	8e6e0024 	lw	t6,36(s3)

00000cd0 <L8094FF90>:
     cd0:	8e6b0004 	lw	t3,4(s3)
     cd4:	3c010100 	lui	at,0x100
     cd8:	3c060600 	lui	a2,0x600
     cdc:	01616025 	or	t4,t3,at
     ce0:	ae6c0004 	sw	t4,4(s3)
     ce4:	3c070600 	lui	a3,0x600
     ce8:	24e70024 	addiu	a3,a3,36
     cec:	afa00018 	sw	zero,24(sp)
     cf0:	afa00014 	sw	zero,20(sp)
     cf4:	afa00010 	sw	zero,16(sp)
     cf8:	24c64e70 	addiu	a2,a2,20080
     cfc:	02802025 	move	a0,s4
     d00:	0c000000 	jal	0 <func_8094F2C0>
     d04:	2665014c 	addiu	a1,s3,332
     d08:	3c0143c8 	lui	at,0x43c8
     d0c:	44812000 	mtc1	at,$f4
     d10:	00000000 	nop
     d14:	e66400bc 	swc1	$f4,188(s3)

00000d18 <L8094FFD8>:
     d18:	8e6e0024 	lw	t6,36(s3)
     d1c:	8678001c 	lh	t8,28(s3)
     d20:	8e6d0028 	lw	t5,40(s3)
     d24:	ae6e0038 	sw	t6,56(s3)
     d28:	8e6e002c 	lw	t6,44(s3)
     d2c:	27190001 	addiu	t9,t8,1
     d30:	240f0014 	li	t7,20
     d34:	2f210015 	sltiu	at,t9,21
     d38:	a2600194 	sb	zero,404(s3)
     d3c:	a26f0117 	sb	t7,279(s3)
     d40:	ae6d003c 	sw	t5,60(s3)
     d44:	1020016f 	beqz	at,1304 <L809505C4>
     d48:	ae6e0040 	sw	t6,64(s3)
     d4c:	0019c880 	sll	t9,t9,0x2
     d50:	3c010000 	lui	at,0x0
     d54:	00390821 	addu	at,at,t9
     d58:	8c390000 	lw	t9,0(at)
     d5c:	03200008 	jr	t9
     d60:	00000000 	nop

00000d64 <L80950024>:
     d64:	3c0142a0 	lui	at,0x42a0
     d68:	44814000 	mtc1	at,$f8
     d6c:	3c0143c8 	lui	at,0x43c8
     d70:	44815000 	mtc1	at,$f10
     d74:	44803000 	mtc1	zero,$f6
     d78:	26841c24 	addiu	a0,s4,7204
     d7c:	24090013 	li	t1,19
     d80:	afa90028 	sw	t1,40(sp)
     d84:	afa40050 	sw	a0,80(sp)
     d88:	02602825 	move	a1,s3
     d8c:	02803025 	move	a2,s4
     d90:	240700ba 	li	a3,186
     d94:	afa0001c 	sw	zero,28(sp)
     d98:	afa00020 	sw	zero,32(sp)
     d9c:	afa00024 	sw	zero,36(sp)
     da0:	e7a80014 	swc1	$f8,20(sp)
     da4:	e7aa0018 	swc1	$f10,24(sp)
     da8:	0c000000 	jal	0 <func_8094F2C0>
     dac:	e7a60010 	swc1	$f6,16(sp)
     db0:	3c010001 	lui	at,0x1
     db4:	02818021 	addu	s0,s4,at
     db8:	82051cbc 	lb	a1,7356(s0)
     dbc:	0c000000 	jal	0 <func_8094F2C0>
     dc0:	02802025 	move	a0,s4
     dc4:	1040002c 	beqz	v0,e78 <L80950024+0x114>
     dc8:	3c0d0000 	lui	t5,0x0
     dcc:	3c0a0000 	lui	t2,0x0
     dd0:	954a0eda 	lhu	t2,3802(t2)
     dd4:	240600a1 	li	a2,161
     dd8:	8fa40050 	lw	a0,80(sp)
     ddc:	314b0080 	andi	t3,t2,0x80
     de0:	51600003 	beqzl	t3,df0 <L80950024+0x8c>
     de4:	c6700028 	lwc1	$f16,40(s3)
     de8:	2406005d 	li	a2,93
     dec:	c6700028 	lwc1	$f16,40(s3)
     df0:	8e670024 	lw	a3,36(s3)
     df4:	02802825 	move	a1,s4
     df8:	e7b00010 	swc1	$f16,16(sp)
     dfc:	c672002c 	lwc1	$f18,44(s3)
     e00:	afa00024 	sw	zero,36(sp)
     e04:	afa00020 	sw	zero,32(sp)
     e08:	afa0001c 	sw	zero,28(sp)
     e0c:	afa00018 	sw	zero,24(sp)
     e10:	0c000000 	jal	0 <func_8094F2C0>
     e14:	e7b20014 	swc1	$f18,20(sp)
     e18:	3c014320 	lui	at,0x4320
     e1c:	44813000 	mtc1	at,$f6
     e20:	c6640024 	lwc1	$f4,36(s3)
     e24:	c66a0028 	lwc1	$f10,40(s3)
     e28:	8fa40050 	lw	a0,80(sp)
     e2c:	46062200 	add.s	$f8,$f4,$f6
     e30:	e7aa0010 	swc1	$f10,16(sp)
     e34:	c670002c 	lwc1	$f16,44(s3)
     e38:	afa00024 	sw	zero,36(sp)
     e3c:	44074000 	mfc1	a3,$f8
     e40:	afa00020 	sw	zero,32(sp)
     e44:	afa0001c 	sw	zero,28(sp)
     e48:	afa00018 	sw	zero,24(sp)
     e4c:	02802825 	move	a1,s4
     e50:	2406005f 	li	a2,95
     e54:	0c000000 	jal	0 <func_8094F2C0>
     e58:	e7b00014 	swc1	$f16,20(sp)
     e5c:	240c0064 	li	t4,100
     e60:	3c010000 	lui	at,0x0
     e64:	a42c0000 	sh	t4,0(at)
     e68:	0c000000 	jal	0 <func_8094F2C0>
     e6c:	02602025 	move	a0,s3
     e70:	10000156 	b	13cc <L809505C4+0xc8>
     e74:	8fbf004c 	lw	ra,76(sp)
     e78:	25ad0000 	addiu	t5,t5,0
     e7c:	ae6d0098 	sw	t5,152(s3)
     e80:	3c0f0000 	lui	t7,0x0
     e84:	95ef0ee2 	lhu	t7,3810(t7)
     e88:	340effff 	li	t6,0xffff
     e8c:	3c010000 	lui	at,0x0
     e90:	31f80040 	andi	t8,t7,0x40
     e94:	1300008f 	beqz	t8,10d4 <L80950024+0x370>
     e98:	a42e0000 	sh	t6,0(at)
     e9c:	24190008 	li	t9,8
     ea0:	3c010000 	lui	at,0x0
     ea4:	a0390000 	sb	t9,0(at)
     ea8:	3c010000 	lui	at,0x0
     eac:	24090064 	li	t1,100
     eb0:	a4290000 	sh	t1,0(at)
     eb4:	02802025 	move	a0,s4
     eb8:	02602825 	move	a1,s3
     ebc:	0c000000 	jal	0 <func_8094F2C0>
     ec0:	24060001 	li	a2,1
     ec4:	240300dc 	li	v1,220
     ec8:	240a00be 	li	t2,190
     ecc:	240b00d2 	li	t3,210
     ed0:	a2030b06 	sb	v1,2822(s0)
     ed4:	a2030b07 	sb	v1,2823(s0)
     ed8:	a20a0b08 	sb	t2,2824(s0)
     edc:	a20b0b09 	sb	t3,2825(s0)
     ee0:	02802025 	move	a0,s4
     ee4:	0c000000 	jal	0 <func_8094F2C0>
     ee8:	26851d64 	addiu	a1,s4,7524
     eec:	0c000000 	jal	0 <func_8094F2C0>
     ef0:	02802025 	move	a0,s4
     ef4:	3c100000 	lui	s0,0x0
     ef8:	26100000 	addiu	s0,s0,0
     efc:	a6020000 	sh	v0,0(s0)
     f00:	02802025 	move	a0,s4
     f04:	00002825 	move	a1,zero
     f08:	0c000000 	jal	0 <func_8094F2C0>
     f0c:	24060001 	li	a2,1
     f10:	02802025 	move	a0,s4
     f14:	86050000 	lh	a1,0(s0)
     f18:	0c000000 	jal	0 <func_8094F2C0>
     f1c:	24060007 	li	a2,7
     f20:	3c01430c 	lui	at,0x430c
     f24:	44819000 	mtc1	at,$f18
     f28:	3c01434d 	lui	at,0x434d
     f2c:	44813000 	mtc1	at,$f6
     f30:	3c070000 	lui	a3,0x0
     f34:	3c01c1a0 	lui	at,0xc1a0
     f38:	44815000 	mtc1	at,$f10
     f3c:	24e70000 	addiu	a3,a3,0
     f40:	3c014120 	lui	at,0x4120
     f44:	e4f20000 	swc1	$f18,0(a3)
     f48:	44819000 	mtc1	at,$f18
     f4c:	3c060000 	lui	a2,0x0
     f50:	3c014248 	lui	at,0x4248
     f54:	e4e60004 	swc1	$f6,4(a3)
     f58:	44813000 	mtc1	at,$f6
     f5c:	24c60000 	addiu	a2,a2,0
     f60:	e4ea0008 	swc1	$f10,8(a3)
     f64:	3c030000 	lui	v1,0x0
     f68:	3c01c35c 	lui	at,0xc35c
     f6c:	c4e40000 	lwc1	$f4,0(a3)
     f70:	c4e80004 	lwc1	$f8,4(a3)
     f74:	c4f00008 	lwc1	$f16,8(a3)
     f78:	44815000 	mtc1	at,$f10
     f7c:	24630000 	addiu	v1,v1,0
     f80:	3c080000 	lui	t0,0x0
     f84:	e4d20000 	swc1	$f18,0(a2)
     f88:	e4c60004 	swc1	$f6,4(a2)
     f8c:	e4640000 	swc1	$f4,0(v1)
     f90:	e4680004 	swc1	$f8,4(v1)
     f94:	e4700008 	swc1	$f16,8(v1)
     f98:	e4ca0008 	swc1	$f10,8(a2)
     f9c:	c4c40000 	lwc1	$f4,0(a2)
     fa0:	c4c80004 	lwc1	$f8,4(a2)
     fa4:	c4d00008 	lwc1	$f16,8(a2)
     fa8:	25080000 	addiu	t0,t0,0
     fac:	02802025 	move	a0,s4
     fb0:	86050000 	lh	a1,0(s0)
     fb4:	e5040000 	swc1	$f4,0(t0)
     fb8:	e5080004 	swc1	$f8,4(t0)
     fbc:	0c000000 	jal	0 <func_8094F2C0>
     fc0:	e5100008 	swc1	$f16,8(t0)
     fc4:	240c0014 	li	t4,20
     fc8:	3c100000 	lui	s0,0x0
     fcc:	3c110000 	lui	s1,0x0
     fd0:	ae6c0198 	sw	t4,408(s3)
     fd4:	26310000 	addiu	s1,s1,0
     fd8:	26100000 	addiu	s0,s0,0
     fdc:	2412000f 	li	s2,15
     fe0:	c6120000 	lwc1	$f18,0(s0)
     fe4:	c6640024 	lwc1	$f4,36(s3)
     fe8:	c6080004 	lwc1	$f8,4(s0)
     fec:	862d0000 	lh	t5,0(s1)
     ff0:	46049180 	add.s	$f6,$f18,$f4
     ff4:	c6120008 	lwc1	$f18,8(s0)
     ff8:	86380002 	lh	t8,2(s1)
     ffc:	862a0004 	lh	t2,4(s1)
    1000:	e7a60010 	swc1	$f6,16(sp)
    1004:	c66a0028 	lwc1	$f10,40(s3)
    1008:	8fa40050 	lw	a0,80(sp)
    100c:	02602825 	move	a1,s3
    1010:	460a4400 	add.s	$f16,$f8,$f10
    1014:	02803025 	move	a2,s4
    1018:	240700ba 	li	a3,186
    101c:	e7b00014 	swc1	$f16,20(sp)
    1020:	c664002c 	lwc1	$f4,44(s3)
    1024:	46049180 	add.s	$f6,$f18,$f4
    1028:	e7a60018 	swc1	$f6,24(sp)
    102c:	866e0030 	lh	t6,48(s3)
    1030:	01ae7821 	addu	t7,t5,t6
    1034:	afaf001c 	sw	t7,28(sp)
    1038:	86790032 	lh	t9,50(s3)
    103c:	03194821 	addu	t1,t8,t9
    1040:	afa90020 	sw	t1,32(sp)
    1044:	866b0034 	lh	t3,52(s3)
    1048:	afb20028 	sw	s2,40(sp)
    104c:	014b6021 	addu	t4,t2,t3
    1050:	0c000000 	jal	0 <func_8094F2C0>
    1054:	afac0024 	sw	t4,36(sp)
    1058:	2652ffff 	addiu	s2,s2,-1
    105c:	24010005 	li	at,5
    1060:	2610fff4 	addiu	s0,s0,-12
    1064:	1641ffde 	bne	s2,at,fe0 <L80950024+0x27c>
    1068:	2631fffa 	addiu	s1,s1,-6
    106c:	3c0d0000 	lui	t5,0x0
    1070:	25ad0000 	addiu	t5,t5,0
    1074:	8daf0000 	lw	t7,0(t5)
    1078:	27a2005c 	addiu	v0,sp,92
    107c:	3c180000 	lui	t8,0x0
    1080:	ac4f0000 	sw	t7,0(v0)
    1084:	8dae0004 	lw	t6,4(t5)
    1088:	8c490000 	lw	t1,0(v0)
    108c:	27180000 	addiu	t8,t8,0
    1090:	ac4e0004 	sw	t6,4(v0)
    1094:	8daf0008 	lw	t7,8(t5)
    1098:	3c0a0000 	lui	t2,0x0
    109c:	254a0000 	addiu	t2,t2,0
    10a0:	ac4f0008 	sw	t7,8(v0)
    10a4:	af090000 	sw	t1,0(t8)
    10a8:	8c590004 	lw	t9,4(v0)
    10ac:	af190004 	sw	t9,4(t8)
    10b0:	8c490008 	lw	t1,8(v0)
    10b4:	af090008 	sw	t1,8(t8)
    10b8:	8c4c0000 	lw	t4,0(v0)
    10bc:	ad4c0000 	sw	t4,0(t2)
    10c0:	8c4b0004 	lw	t3,4(v0)
    10c4:	ad4b0004 	sw	t3,4(t2)
    10c8:	8c4c0008 	lw	t4,8(v0)
    10cc:	10000007 	b	10ec <L80950024+0x388>
    10d0:	ad4c0008 	sw	t4,8(t2)
    10d4:	240dfffc 	li	t5,-4
    10d8:	3c010000 	lui	at,0x0
    10dc:	a02d0000 	sb	t5,0(at)
    10e0:	3c010000 	lui	at,0x0
    10e4:	240e0005 	li	t6,5
    10e8:	a42e0000 	sh	t6,0(at)
    10ec:	3c013f80 	lui	at,0x3f80
    10f0:	44810000 	mtc1	at,$f0
    10f4:	2670028c 	addiu	s0,s3,652
    10f8:	02002825 	move	a1,s0
    10fc:	02802025 	move	a0,s4
    1100:	0c000000 	jal	0 <func_8094F2C0>
    1104:	e66001cc 	swc1	$f0,460(s3)
    1108:	3c070000 	lui	a3,0x0
    110c:	24e70000 	addiu	a3,a3,0
    1110:	02802025 	move	a0,s4
    1114:	02002825 	move	a1,s0
    1118:	0c000000 	jal	0 <func_8094F2C0>
    111c:	02603025 	move	a2,s3
    1120:	3c100000 	lui	s0,0x0
    1124:	3c110000 	lui	s1,0x0
    1128:	26310000 	addiu	s1,s1,0
    112c:	26100000 	addiu	s0,s0,0
    1130:	24120005 	li	s2,5
    1134:	c6080000 	lwc1	$f8,0(s0)
    1138:	c66a0024 	lwc1	$f10,36(s3)
    113c:	c6120004 	lwc1	$f18,4(s0)
    1140:	862f0000 	lh	t7,0(s1)
    1144:	460a4400 	add.s	$f16,$f8,$f10
    1148:	c6080008 	lwc1	$f8,8(s0)
    114c:	86290002 	lh	t1,2(s1)
    1150:	862c0004 	lh	t4,4(s1)
    1154:	e7b00010 	swc1	$f16,16(sp)
    1158:	c6640028 	lwc1	$f4,40(s3)
    115c:	8fa40050 	lw	a0,80(sp)
    1160:	02602825 	move	a1,s3
    1164:	46049180 	add.s	$f6,$f18,$f4
    1168:	02803025 	move	a2,s4
    116c:	240700ba 	li	a3,186
    1170:	e7a60014 	swc1	$f6,20(sp)
    1174:	c66a002c 	lwc1	$f10,44(s3)
    1178:	460a4400 	add.s	$f16,$f8,$f10
    117c:	e7b00018 	swc1	$f16,24(sp)
    1180:	86780030 	lh	t8,48(s3)
    1184:	01f8c821 	addu	t9,t7,t8
    1188:	afb9001c 	sw	t9,28(sp)
    118c:	866a0032 	lh	t2,50(s3)
    1190:	012a5821 	addu	t3,t1,t2
    1194:	afab0020 	sw	t3,32(sp)
    1198:	866d0034 	lh	t5,52(s3)
    119c:	afb20028 	sw	s2,40(sp)
    11a0:	018d7021 	addu	t6,t4,t5
    11a4:	0c000000 	jal	0 <func_8094F2C0>
    11a8:	afae0024 	sw	t6,36(sp)
    11ac:	2652ffff 	addiu	s2,s2,-1
    11b0:	2610fff4 	addiu	s0,s0,-12
    11b4:	0641ffdf 	bgez	s2,1134 <L80950024+0x3d0>
    11b8:	2631fffa 	addiu	s1,s1,-6
    11bc:	3c040000 	lui	a0,0x0
    11c0:	24840000 	addiu	a0,a0,0
    11c4:	34058980 	li	a1,0x8980
    11c8:	0c000000 	jal	0 <func_8094F2C0>
    11cc:	00003025 	move	a2,zero
    11d0:	3c0f0000 	lui	t7,0x0
    11d4:	81ef0000 	lb	t7,0(t7)
    11d8:	29e1000d 	slti	at,t7,13
    11dc:	10200005 	beqz	at,11f4 <L80950024+0x490>
    11e0:	00000000 	nop
    11e4:	0c000000 	jal	0 <func_8094F2C0>
    11e8:	02602025 	move	a0,s3
    11ec:	10000077 	b	13cc <L809505C4+0xc8>
    11f0:	8fbf004c 	lw	ra,76(sp)
    11f4:	0c000000 	jal	0 <func_8094F2C0>
    11f8:	02602025 	move	a0,s3
    11fc:	10000073 	b	13cc <L809505C4+0xc8>
    1200:	8fbf004c 	lw	ra,76(sp)

00001204 <L809504C4>:
    1204:	267002d8 	addiu	s0,s3,728
    1208:	02002825 	move	a1,s0
    120c:	0c000000 	jal	0 <func_8094F2C0>
    1210:	02802025 	move	a0,s4
    1214:	3c070000 	lui	a3,0x0
    1218:	267802f8 	addiu	t8,s3,760
    121c:	afb80010 	sw	t8,16(sp)
    1220:	24e70000 	addiu	a3,a3,0
    1224:	02802025 	move	a0,s4
    1228:	02002825 	move	a1,s0
    122c:	0c000000 	jal	0 <func_8094F2C0>
    1230:	02603025 	move	a2,s3
    1234:	3c190000 	lui	t9,0x0
    1238:	83390000 	lb	t9,0(t9)
    123c:	02802825 	move	a1,s4
    1240:	02602025 	move	a0,s3
    1244:	2b21000d 	slti	at,t9,13
    1248:	10200005 	beqz	at,1260 <L809504C4+0x5c>
    124c:	00000000 	nop
    1250:	0c000000 	jal	0 <func_8094F2C0>
    1254:	02602025 	move	a0,s3
    1258:	10000004 	b	126c <L809504C4+0x68>
    125c:	92690194 	lbu	t1,404(s3)
    1260:	0c000000 	jal	0 <func_8094F2C0>
    1264:	02802825 	move	a1,s4
    1268:	92690194 	lbu	t1,404(s3)
    126c:	252a0001 	addiu	t2,t1,1
    1270:	10000055 	b	13c8 <L809505C4+0xc4>
    1274:	a26a0194 	sb	t2,404(s3)

00001278 <L80950538>:
    1278:	26700338 	addiu	s0,s3,824
    127c:	02002825 	move	a1,s0
    1280:	0c000000 	jal	0 <func_8094F2C0>
    1284:	02802025 	move	a0,s4
    1288:	3c070000 	lui	a3,0x0
    128c:	24e70000 	addiu	a3,a3,0
    1290:	02802025 	move	a0,s4
    1294:	02002825 	move	a1,s0
    1298:	0c000000 	jal	0 <func_8094F2C0>
    129c:	02603025 	move	a2,s3
    12a0:	3c0b0000 	lui	t3,0x0
    12a4:	816b0000 	lb	t3,0(t3)
    12a8:	02802825 	move	a1,s4
    12ac:	02602025 	move	a0,s3
    12b0:	2961000d 	slti	at,t3,13
    12b4:	10200005 	beqz	at,12cc <L80950538+0x54>
    12b8:	00000000 	nop
    12bc:	0c000000 	jal	0 <func_8094F2C0>
    12c0:	02602025 	move	a0,s3
    12c4:	10000041 	b	13cc <L809505C4+0xc8>
    12c8:	8fbf004c 	lw	ra,76(sp)
    12cc:	0c000000 	jal	0 <func_8094F2C0>
    12d0:	02802825 	move	a1,s4
    12d4:	1000003d 	b	13cc <L809505C4+0xc8>
    12d8:	8fbf004c 	lw	ra,76(sp)

000012dc <L8095059C>:
    12dc:	02602025 	move	a0,s3
    12e0:	0c000000 	jal	0 <func_8094F2C0>
    12e4:	02802825 	move	a1,s4
    12e8:	10000038 	b	13cc <L809505C4+0xc8>
    12ec:	8fbf004c 	lw	ra,76(sp)

000012f0 <L809505B0>:
    12f0:	02602025 	move	a0,s3
    12f4:	0c000000 	jal	0 <func_8094F2C0>
    12f8:	02802825 	move	a1,s4
    12fc:	10000033 	b	13cc <L809505C4+0xc8>
    1300:	8fbf004c 	lw	ra,76(sp)

00001304 <L809505C4>:
    1304:	267002d8 	addiu	s0,s3,728
    1308:	02002825 	move	a1,s0
    130c:	0c000000 	jal	0 <func_8094F2C0>
    1310:	02802025 	move	a0,s4
    1314:	3c070000 	lui	a3,0x0
    1318:	266c02f8 	addiu	t4,s3,760
    131c:	afac0010 	sw	t4,16(sp)
    1320:	24e70000 	addiu	a3,a3,0
    1324:	02802025 	move	a0,s4
    1328:	02002825 	move	a1,s0
    132c:	0c000000 	jal	0 <func_8094F2C0>
    1330:	02603025 	move	a2,s3
    1334:	26700338 	addiu	s0,s3,824
    1338:	02002825 	move	a1,s0
    133c:	0c000000 	jal	0 <func_8094F2C0>
    1340:	02802025 	move	a0,s4
    1344:	3c070000 	lui	a3,0x0
    1348:	24e70000 	addiu	a3,a3,0
    134c:	02802025 	move	a0,s4
    1350:	02002825 	move	a1,s0
    1354:	0c000000 	jal	0 <func_8094F2C0>
    1358:	02603025 	move	a2,s3
    135c:	3c013f80 	lui	at,0x3f80
    1360:	44810000 	mtc1	at,$f0
    1364:	3c0d0000 	lui	t5,0x0
    1368:	02602025 	move	a0,s3
    136c:	e66001d8 	swc1	$f0,472(s3)
    1370:	e66001dc 	swc1	$f0,476(s3)
    1374:	81ad0000 	lb	t5,0(t5)
    1378:	3c0e0000 	lui	t6,0x0
    137c:	29a1000d 	slti	at,t5,13
    1380:	10200005 	beqz	at,1398 <L809505C4+0x94>
    1384:	00000000 	nop
    1388:	0c000000 	jal	0 <func_8094F2C0>
    138c:	02802825 	move	a1,s4
    1390:	1000000e 	b	13cc <L809505C4+0xc8>
    1394:	8fbf004c 	lw	ra,76(sp)
    1398:	91ce0000 	lbu	t6,0(t6)
    139c:	02802825 	move	a1,s4
    13a0:	02602025 	move	a0,s3
    13a4:	29c10009 	slti	at,t6,9
    13a8:	14200005 	bnez	at,13c0 <L809505C4+0xbc>
    13ac:	00000000 	nop
    13b0:	0c000000 	jal	0 <func_8094F2C0>
    13b4:	02602025 	move	a0,s3
    13b8:	10000004 	b	13cc <L809505C4+0xc8>
    13bc:	8fbf004c 	lw	ra,76(sp)
    13c0:	0c000000 	jal	0 <func_8094F2C0>
    13c4:	02802825 	move	a1,s4
    13c8:	8fbf004c 	lw	ra,76(sp)
    13cc:	8fb00038 	lw	s0,56(sp)
    13d0:	8fb1003c 	lw	s1,60(sp)
    13d4:	8fb20040 	lw	s2,64(sp)
    13d8:	8fb30044 	lw	s3,68(sp)
    13dc:	8fb40048 	lw	s4,72(sp)
    13e0:	03e00008 	jr	ra
    13e4:	27bd0078 	addiu	sp,sp,120

000013e8 <BossVa_Destroy>:
    13e8:	27bdffe8 	addiu	sp,sp,-24
    13ec:	afbf0014 	sw	ra,20(sp)
    13f0:	afa40018 	sw	a0,24(sp)
    13f4:	afa5001c 	sw	a1,28(sp)
    13f8:	0c000000 	jal	0 <func_8094F2C0>
    13fc:	2484014c 	addiu	a0,a0,332
    1400:	8fa50018 	lw	a1,24(sp)
    1404:	8fa4001c 	lw	a0,28(sp)
    1408:	0c000000 	jal	0 <func_8094F2C0>
    140c:	24a502d8 	addiu	a1,a1,728
    1410:	8fa50018 	lw	a1,24(sp)
    1414:	8fa4001c 	lw	a0,28(sp)
    1418:	0c000000 	jal	0 <func_8094F2C0>
    141c:	24a5028c 	addiu	a1,a1,652
    1420:	8fbf0014 	lw	ra,20(sp)
    1424:	27bd0018 	addiu	sp,sp,24
    1428:	03e00008 	jr	ra
    142c:	00000000 	nop

00001430 <func_809506F0>:
    1430:	27bdffd0 	addiu	sp,sp,-48
    1434:	afb00028 	sw	s0,40(sp)
    1438:	00808025 	move	s0,a0
    143c:	afbf002c 	sw	ra,44(sp)
    1440:	3c040600 	lui	a0,0x600
    1444:	0c000000 	jal	0 <func_8094F2C0>
    1448:	24845184 	addiu	a0,a0,20868
    144c:	44822000 	mtc1	v0,$f4
    1450:	44803000 	mtc1	zero,$f6
    1454:	3c050600 	lui	a1,0x600
    1458:	46802020 	cvt.s.w	$f0,$f4
    145c:	240e0002 	li	t6,2
    1460:	afae0014 	sw	t6,20(sp)
    1464:	24a55184 	addiu	a1,a1,20868
    1468:	2604014c 	addiu	a0,s0,332
    146c:	3c063f80 	lui	a2,0x3f80
    1470:	44070000 	mfc1	a3,$f0
    1474:	e7a00010 	swc1	$f0,16(sp)
    1478:	0c000000 	jal	0 <func_8094F2C0>
    147c:	e7a60018 	swc1	$f6,24(sp)
    1480:	8e0f0004 	lw	t7,4(s0)
    1484:	3c01c3e1 	lui	at,0xc3e1
    1488:	44814000 	mtc1	at,$f8
    148c:	2401fffe 	li	at,-2
    1490:	3c050000 	lui	a1,0x0
    1494:	01e1c024 	and	t8,t7,at
    1498:	ae180004 	sw	t8,4(s0)
    149c:	24a50000 	addiu	a1,a1,0
    14a0:	02002025 	move	a0,s0
    14a4:	0c000000 	jal	0 <func_8094F2C0>
    14a8:	e60800bc 	swc1	$f8,188(s0)
    14ac:	8fbf002c 	lw	ra,44(sp)
    14b0:	8fb00028 	lw	s0,40(sp)
    14b4:	27bd0030 	addiu	sp,sp,48
    14b8:	03e00008 	jr	ra
    14bc:	00000000 	nop

000014c0 <func_80950780>:
    14c0:	27bdff90 	addiu	sp,sp,-112
    14c4:	afbf0044 	sw	ra,68(sp)
    14c8:	afb30040 	sw	s3,64(sp)
    14cc:	afb2003c 	sw	s2,60(sp)
    14d0:	afb10038 	sw	s1,56(sp)
    14d4:	afb00034 	sw	s0,52(sp)
    14d8:	8cae1c44 	lw	t6,7236(a1)
    14dc:	00808825 	move	s1,a0
    14e0:	00a09025 	move	s2,a1
    14e4:	afae0068 	sw	t6,104(sp)
    14e8:	848f01ac 	lh	t7,428(a0)
    14ec:	25f80c31 	addiu	t8,t7,3121
    14f0:	a49801ac 	sh	t8,428(a0)
    14f4:	0c000000 	jal	0 <func_8094F2C0>
    14f8:	848401ac 	lh	a0,428(a0)
    14fc:	3c010000 	lui	at,0x0
    1500:	c4240000 	lwc1	$f4,0(at)
    1504:	3c013f80 	lui	at,0x3f80
    1508:	44814000 	mtc1	at,$f8
    150c:	46040182 	mul.s	$f6,$f0,$f4
    1510:	8fb00068 	lw	s0,104(sp)
    1514:	862401ac 	lh	a0,428(s1)
    1518:	46083280 	add.s	$f10,$f6,$f8
    151c:	0c000000 	jal	0 <func_8094F2C0>
    1520:	e62a01a0 	swc1	$f10,416(s1)
    1524:	3c010000 	lui	at,0x0
    1528:	c4220000 	lwc1	$f2,0(at)
    152c:	3c013f80 	lui	at,0x3f80
    1530:	44819000 	mtc1	at,$f18
    1534:	46020402 	mul.s	$f16,$f0,$f2
    1538:	3c130000 	lui	s3,0x0
    153c:	26730000 	addiu	s3,s3,0
    1540:	46128100 	add.s	$f4,$f16,$f18
    1544:	e62401a4 	swc1	$f4,420(s1)
    1548:	82630000 	lb	v1,0(s3)
    154c:	24790005 	addiu	t9,v1,5
    1550:	2f210013 	sltiu	at,t9,19
    1554:	10200358 	beqz	at,22b8 <L80951578>
    1558:	0019c880 	sll	t9,t9,0x2
    155c:	3c010000 	lui	at,0x0
    1560:	00390821 	addu	at,at,t9
    1564:	8c390000 	lw	t9,0(at)
    1568:	03200008 	jr	t9
    156c:	00000000 	nop

00001570 <L80950830>:
    1570:	8e2b0198 	lw	t3,408(s1)
    1574:	240efffe 	li	t6,-2
    1578:	240f000a 	li	t7,10
    157c:	256cffff 	addiu	t4,t3,-1
    1580:	15800003 	bnez	t4,1590 <L80950830+0x20>
    1584:	ae2c0198 	sw	t4,408(s1)
    1588:	a26e0000 	sb	t6,0(s3)
    158c:	ae2f0198 	sw	t7,408(s1)
    1590:	10000349 	b	22b8 <L80951578>
    1594:	82630000 	lb	v1,0(s3)

00001598 <L80950858>:
    1598:	3c010001 	lui	at,0x1
    159c:	02411021 	addu	v0,s2,at
    15a0:	240300dc 	li	v1,220
    15a4:	241800be 	li	t8,190
    15a8:	241900d2 	li	t9,210
    15ac:	a0430b06 	sb	v1,2822(v0)
    15b0:	a0430b07 	sb	v1,2823(v0)
    15b4:	a0580b08 	sb	t8,2824(v0)
    15b8:	a0590b09 	sb	t9,2825(v0)
    15bc:	02402025 	move	a0,s2
    15c0:	02202825 	move	a1,s1
    15c4:	0c000000 	jal	0 <func_8094F2C0>
    15c8:	24060008 	li	a2,8
    15cc:	240b7fff 	li	t3,32767
    15d0:	a60b00b6 	sh	t3,182(s0)
    15d4:	860c00b6 	lh	t4,182(s0)
    15d8:	a60c0032 	sh	t4,50(s0)
    15dc:	826d0000 	lb	t5,0(s3)
    15e0:	25ae0001 	addiu	t6,t5,1
    15e4:	a26e0000 	sb	t6,0(s3)
    15e8:	10000333 	b	22b8 <L80951578>
    15ec:	82630000 	lb	v1,0(s3)

000015f0 <L809508B0>:
    15f0:	02402025 	move	a0,s2
    15f4:	0c000000 	jal	0 <func_8094F2C0>
    15f8:	26451d64 	addiu	a1,s2,7524
    15fc:	3c0f0000 	lui	t7,0x0
    1600:	85ef0000 	lh	t7,0(t7)
    1604:	55e00006 	bnezl	t7,1620 <L809508B0+0x30>
    1608:	02402025 	move	a0,s2
    160c:	0c000000 	jal	0 <func_8094F2C0>
    1610:	02402025 	move	a0,s2
    1614:	3c010000 	lui	at,0x0
    1618:	a4220000 	sh	v0,0(at)
    161c:	02402025 	move	a0,s2
    1620:	00002825 	move	a1,zero
    1624:	0c000000 	jal	0 <func_8094F2C0>
    1628:	24060001 	li	a2,1
    162c:	3c050000 	lui	a1,0x0
    1630:	84a50000 	lh	a1,0(a1)
    1634:	02402025 	move	a0,s2
    1638:	0c000000 	jal	0 <func_8094F2C0>
    163c:	24060007 	li	a2,7
    1640:	3c014150 	lui	at,0x4150
    1644:	44813000 	mtc1	at,$f6
    1648:	3c010000 	lui	at,0x0
    164c:	3c180000 	lui	t8,0x0
    1650:	e4260000 	swc1	$f6,0(at)
    1654:	3c010000 	lui	at,0x0
    1658:	e4260000 	swc1	$f6,0(at)
    165c:	3c0142f8 	lui	at,0x42f8
    1660:	44814000 	mtc1	at,$f8
    1664:	3c010000 	lui	at,0x0
    1668:	27180000 	addiu	t8,t8,0
    166c:	e4280000 	swc1	$f8,0(at)
    1670:	3c010000 	lui	at,0x0
    1674:	e4280000 	swc1	$f8,0(at)
    1678:	3c014327 	lui	at,0x4327
    167c:	44815000 	mtc1	at,$f10
    1680:	3c010000 	lui	at,0x0
    1684:	27a5005c 	addiu	a1,sp,92
    1688:	e42a0000 	swc1	$f10,0(at)
    168c:	3c010000 	lui	at,0x0
    1690:	e42a0000 	swc1	$f10,0(at)
    1694:	c6100024 	lwc1	$f16,36(s0)
    1698:	3c010000 	lui	at,0x0
    169c:	3c0c0000 	lui	t4,0x0
    16a0:	e4300000 	swc1	$f16,0(at)
    16a4:	c4320000 	lwc1	$f18,0(at)
    16a8:	3c010000 	lui	at,0x0
    16ac:	258c0000 	addiu	t4,t4,0
    16b0:	e4320000 	swc1	$f18,0(at)
    16b4:	c6040028 	lwc1	$f4,40(s0)
    16b8:	3c010000 	lui	at,0x0
    16bc:	3c0f0000 	lui	t7,0x0
    16c0:	e4240000 	swc1	$f4,0(at)
    16c4:	c4260000 	lwc1	$f6,0(at)
    16c8:	3c010000 	lui	at,0x0
    16cc:	25ef0000 	addiu	t7,t7,0
    16d0:	e4260000 	swc1	$f6,0(at)
    16d4:	c608002c 	lwc1	$f8,44(s0)
    16d8:	3c010000 	lui	at,0x0
    16dc:	e4280000 	swc1	$f8,0(at)
    16e0:	c42a0000 	lwc1	$f10,0(at)
    16e4:	3c010000 	lui	at,0x0
    16e8:	e42a0000 	swc1	$f10,0(at)
    16ec:	8f0b0000 	lw	t3,0(t8)
    16f0:	acab0000 	sw	t3,0(a1)
    16f4:	8f190004 	lw	t9,4(t8)
    16f8:	8cae0000 	lw	t6,0(a1)
    16fc:	acb90004 	sw	t9,4(a1)
    1700:	8f0b0008 	lw	t3,8(t8)
    1704:	acab0008 	sw	t3,8(a1)
    1708:	ad8e0000 	sw	t6,0(t4)
    170c:	8cad0004 	lw	t5,4(a1)
    1710:	240b000a 	li	t3,10
    1714:	ad8d0004 	sw	t5,4(t4)
    1718:	8cae0008 	lw	t6,8(a1)
    171c:	ad8e0008 	sw	t6,8(t4)
    1720:	8cb90000 	lw	t9,0(a1)
    1724:	adf90000 	sw	t9,0(t7)
    1728:	8cb80004 	lw	t8,4(a1)
    172c:	adf80004 	sw	t8,4(t7)
    1730:	8cb90008 	lw	t9,8(a1)
    1734:	adf90008 	sw	t9,8(t7)
    1738:	ae2b0198 	sw	t3,408(s1)
    173c:	826c0000 	lb	t4,0(s3)
    1740:	258d0001 	addiu	t5,t4,1
    1744:	a26d0000 	sb	t5,0(s3)
    1748:	100002db 	b	22b8 <L80951578>
    174c:	82630000 	lb	v1,0(s3)

00001750 <L80950A10>:
    1750:	8e2e0198 	lw	t6,408(s1)
    1754:	02402025 	move	a0,s2
    1758:	02202825 	move	a1,s1
    175c:	25cfffff 	addiu	t7,t6,-1
    1760:	15e00008 	bnez	t7,1784 <L80950A10+0x34>
    1764:	ae2f0198 	sw	t7,408(s1)
    1768:	0c000000 	jal	0 <func_8094F2C0>
    176c:	24060002 	li	a2,2
    1770:	82790000 	lb	t9,0(s3)
    1774:	240c001e 	li	t4,30
    1778:	272b0001 	addiu	t3,t9,1
    177c:	a26b0000 	sb	t3,0(s3)
    1780:	ae2c0198 	sw	t4,408(s1)
    1784:	100002cc 	b	22b8 <L80951578>
    1788:	82630000 	lb	v1,0(s3)

0000178c <L80950A4C>:
    178c:	8e2d0198 	lw	t5,408(s1)
    1790:	25aeffff 	addiu	t6,t5,-1
    1794:	15c00004 	bnez	t6,17a8 <L80950A4C+0x1c>
    1798:	ae2e0198 	sw	t6,408(s1)
    179c:	82780000 	lb	t8,0(s3)
    17a0:	27190001 	addiu	t9,t8,1
    17a4:	a2790000 	sb	t9,0(s3)
    17a8:	0c000000 	jal	0 <func_8094F2C0>
    17ac:	00000000 	nop
    17b0:	3c010000 	lui	at,0x0
    17b4:	c4300000 	lwc1	$f16,0(at)
    17b8:	02202025 	move	a0,s1
    17bc:	4610003c 	c.lt.s	$f0,$f16
    17c0:	00000000 	nop
    17c4:	45000003 	bc1f	17d4 <L80950A4C+0x48>
    17c8:	00000000 	nop
    17cc:	0c000000 	jal	0 <func_8094F2C0>
    17d0:	24053143 	li	a1,12611
    17d4:	100002b8 	b	22b8 <L80951578>
    17d8:	82630000 	lb	v1,0(s3)

000017dc <L80950A9C>:
    17dc:	02402025 	move	a0,s2
    17e0:	02202825 	move	a1,s1
    17e4:	0c000000 	jal	0 <func_8094F2C0>
    17e8:	24060001 	li	a2,1
    17ec:	826b0000 	lb	t3,0(s3)
    17f0:	256c0001 	addiu	t4,t3,1
    17f4:	a26c0000 	sb	t4,0(s3)
    17f8:	100002af 	b	22b8 <L80951578>
    17fc:	82630000 	lb	v1,0(s3)

00001800 <L80950AC0>:
    1800:	02402025 	move	a0,s2
    1804:	0c000000 	jal	0 <func_8094F2C0>
    1808:	26451d64 	addiu	a1,s2,7524
    180c:	3c0d0000 	lui	t5,0x0
    1810:	85ad0000 	lh	t5,0(t5)
    1814:	55a00006 	bnezl	t5,1830 <L80950AC0+0x30>
    1818:	02402025 	move	a0,s2
    181c:	0c000000 	jal	0 <func_8094F2C0>
    1820:	02402025 	move	a0,s2
    1824:	3c010000 	lui	at,0x0
    1828:	a4220000 	sh	v0,0(at)
    182c:	02402025 	move	a0,s2
    1830:	00002825 	move	a1,zero
    1834:	0c000000 	jal	0 <func_8094F2C0>
    1838:	24060001 	li	a2,1
    183c:	3c050000 	lui	a1,0x0
    1840:	84a50000 	lh	a1,0(a1)
    1844:	02402025 	move	a0,s2
    1848:	0c000000 	jal	0 <func_8094F2C0>
    184c:	24060007 	li	a2,7
    1850:	3c014150 	lui	at,0x4150
    1854:	44819000 	mtc1	at,$f18
    1858:	3c090000 	lui	t1,0x0
    185c:	25290000 	addiu	t1,t1,0
    1860:	e5320000 	swc1	$f18,0(t1)
    1864:	c5240000 	lwc1	$f4,0(t1)
    1868:	3c010000 	lui	at,0x0
    186c:	8fa60068 	lw	a2,104(sp)
    1870:	e4240000 	swc1	$f4,0(at)
    1874:	3c0142f8 	lui	at,0x42f8
    1878:	44813000 	mtc1	at,$f6
    187c:	3c010000 	lui	at,0x0
    1880:	3c0a0000 	lui	t2,0x0
    1884:	e5260004 	swc1	$f6,4(t1)
    1888:	c5280004 	lwc1	$f8,4(t1)
    188c:	254a0000 	addiu	t2,t2,0
    1890:	3c0e0000 	lui	t6,0x0
    1894:	e4280000 	swc1	$f8,0(at)
    1898:	3c014327 	lui	at,0x4327
    189c:	44815000 	mtc1	at,$f10
    18a0:	3c010000 	lui	at,0x0
    18a4:	25ce0000 	addiu	t6,t6,0
    18a8:	e52a0008 	swc1	$f10,8(t1)
    18ac:	c5300008 	lwc1	$f16,8(t1)
    18b0:	27a5005c 	addiu	a1,sp,92
    18b4:	3c190000 	lui	t9,0x0
    18b8:	e4300000 	swc1	$f16,0(at)
    18bc:	c4d20024 	lwc1	$f18,36(a2)
    18c0:	3c010000 	lui	at,0x0
    18c4:	27390000 	addiu	t9,t9,0
    18c8:	e5520000 	swc1	$f18,0(t2)
    18cc:	c5440000 	lwc1	$f4,0(t2)
    18d0:	3c0d0000 	lui	t5,0x0
    18d4:	25ad0000 	addiu	t5,t5,0
    18d8:	e4240000 	swc1	$f4,0(at)
    18dc:	c4c60028 	lwc1	$f6,40(a2)
    18e0:	26441c24 	addiu	a0,s2,7204
    18e4:	3c030000 	lui	v1,0x0
    18e8:	e5460004 	swc1	$f6,4(t2)
    18ec:	c5480004 	lwc1	$f8,4(t2)
    18f0:	3c080000 	lui	t0,0x0
    18f4:	25080000 	addiu	t0,t0,0
    18f8:	e4280000 	swc1	$f8,0(at)
    18fc:	c4ca002c 	lwc1	$f10,44(a2)
    1900:	3c010000 	lui	at,0x0
    1904:	24630000 	addiu	v1,v1,0
    1908:	e54a0008 	swc1	$f10,8(t2)
    190c:	c5500008 	lwc1	$f16,8(t2)
    1910:	2410000f 	li	s0,15
    1914:	e4300000 	swc1	$f16,0(at)
    1918:	8dd80000 	lw	t8,0(t6)
    191c:	acb80000 	sw	t8,0(a1)
    1920:	8dcf0004 	lw	t7,4(t6)
    1924:	8cac0000 	lw	t4,0(a1)
    1928:	acaf0004 	sw	t7,4(a1)
    192c:	8dd80008 	lw	t8,8(t6)
    1930:	acb80008 	sw	t8,8(a1)
    1934:	af2c0000 	sw	t4,0(t9)
    1938:	8cab0004 	lw	t3,4(a1)
    193c:	af2b0004 	sw	t3,4(t9)
    1940:	8cac0008 	lw	t4,8(a1)
    1944:	af2c0008 	sw	t4,8(t9)
    1948:	8caf0000 	lw	t7,0(a1)
    194c:	adaf0000 	sw	t7,0(t5)
    1950:	8cae0004 	lw	t6,4(a1)
    1954:	adae0004 	sw	t6,4(t5)
    1958:	8caf0008 	lw	t7,8(a1)
    195c:	adaf0008 	sw	t7,8(t5)
    1960:	afa40054 	sw	a0,84(sp)
    1964:	c4720000 	lwc1	$f18,0(v1)
    1968:	c6240024 	lwc1	$f4,36(s1)
    196c:	c4680004 	lwc1	$f8,4(v1)
    1970:	85180000 	lh	t8,0(t0)
    1974:	46049180 	add.s	$f6,$f18,$f4
    1978:	c4720008 	lwc1	$f18,8(v1)
    197c:	850c0002 	lh	t4,2(t0)
    1980:	850f0004 	lh	t7,4(t0)
    1984:	e7a60010 	swc1	$f6,16(sp)
    1988:	c62a0028 	lwc1	$f10,40(s1)
    198c:	8fa40054 	lw	a0,84(sp)
    1990:	02202825 	move	a1,s1
    1994:	460a4400 	add.s	$f16,$f8,$f10
    1998:	02403025 	move	a2,s2
    199c:	240700ba 	li	a3,186
    19a0:	e7b00014 	swc1	$f16,20(sp)
    19a4:	c624002c 	lwc1	$f4,44(s1)
    19a8:	46049180 	add.s	$f6,$f18,$f4
    19ac:	e7a60018 	swc1	$f6,24(sp)
    19b0:	86390030 	lh	t9,48(s1)
    19b4:	03195821 	addu	t3,t8,t9
    19b8:	afab001c 	sw	t3,28(sp)
    19bc:	862d0032 	lh	t5,50(s1)
    19c0:	018d7021 	addu	t6,t4,t5
    19c4:	afae0020 	sw	t6,32(sp)
    19c8:	86380034 	lh	t8,52(s1)
    19cc:	afa8004c 	sw	t0,76(sp)
    19d0:	afa30050 	sw	v1,80(sp)
    19d4:	01f8c821 	addu	t9,t7,t8
    19d8:	afb90024 	sw	t9,36(sp)
    19dc:	0c000000 	jal	0 <func_8094F2C0>
    19e0:	afb00028 	sw	s0,40(sp)
    19e4:	8fa30050 	lw	v1,80(sp)
    19e8:	8fa8004c 	lw	t0,76(sp)
    19ec:	2610ffff 	addiu	s0,s0,-1
    19f0:	24010005 	li	at,5
    19f4:	2463fff4 	addiu	v1,v1,-12
    19f8:	1601ffda 	bne	s0,at,1964 <L80950AC0+0x164>
    19fc:	2508fffa 	addiu	t0,t0,-6
    1a00:	240b005a 	li	t3,90
    1a04:	ae2b0198 	sw	t3,408(s1)
    1a08:	826c0000 	lb	t4,0(s3)
    1a0c:	258d0001 	addiu	t5,t4,1
    1a10:	a26d0000 	sb	t5,0(s3)
    1a14:	10000228 	b	22b8 <L80951578>
    1a18:	82630000 	lb	v1,0(s3)

00001a1c <L80950CDC>:
    1a1c:	3c01c2b8 	lui	at,0xc2b8
    1a20:	44814000 	mtc1	at,$f8
    1a24:	3c0141b0 	lui	at,0x41b0
    1a28:	44815000 	mtc1	at,$f10
    1a2c:	3c0143b4 	lui	at,0x43b4
    1a30:	44818000 	mtc1	at,$f16
    1a34:	3c020000 	lui	v0,0x0
    1a38:	24420000 	addiu	v0,v0,0
    1a3c:	3c01427c 	lui	at,0x427c
    1a40:	44819000 	mtc1	at,$f18
    1a44:	3c010000 	lui	at,0x0
    1a48:	e4480000 	swc1	$f8,0(v0)
    1a4c:	e44a0004 	swc1	$f10,4(v0)
    1a50:	e4500008 	swc1	$f16,8(v0)
    1a54:	e4320000 	swc1	$f18,0(at)
    1a58:	3c0142d0 	lui	at,0x42d0
    1a5c:	44812000 	mtc1	at,$f4
    1a60:	3c010000 	lui	at,0x0
    1a64:	3c040000 	lui	a0,0x0
    1a68:	e4240000 	swc1	$f4,0(at)
    1a6c:	3c014378 	lui	at,0x4378
    1a70:	44813000 	mtc1	at,$f6
    1a74:	3c010000 	lui	at,0x0
    1a78:	3c063e99 	lui	a2,0x3e99
    1a7c:	3c073f33 	lui	a3,0x3f33
    1a80:	34e73333 	ori	a3,a3,0x3333
    1a84:	34c6999a 	ori	a2,a2,0x999a
    1a88:	24840000 	addiu	a0,a0,0
    1a8c:	3c0540e0 	lui	a1,0x40e0
    1a90:	e7a20010 	swc1	$f2,16(sp)
    1a94:	0c000000 	jal	0 <func_8094F2C0>
    1a98:	e4260000 	swc1	$f6,0(at)
    1a9c:	3c010000 	lui	at,0x0
    1aa0:	c4280000 	lwc1	$f8,0(at)
    1aa4:	3c010000 	lui	at,0x0
    1aa8:	3c0f0000 	lui	t7,0x0
    1aac:	e4280000 	swc1	$f8,0(at)
    1ab0:	3c010000 	lui	at,0x0
    1ab4:	25ef0000 	addiu	t7,t7,0
    1ab8:	e4280000 	swc1	$f8,0(at)
    1abc:	8df90000 	lw	t9,0(t7)
    1ac0:	3c0e0000 	lui	t6,0x0
    1ac4:	25ce0000 	addiu	t6,t6,0
    1ac8:	add90000 	sw	t9,0(t6)
    1acc:	8df90008 	lw	t9,8(t7)
    1ad0:	8df80004 	lw	t8,4(t7)
    1ad4:	add90008 	sw	t9,8(t6)
    1ad8:	add80004 	sw	t8,4(t6)
    1adc:	8e2b0198 	lw	t3,408(s1)
    1ae0:	256cffff 	addiu	t4,t3,-1
    1ae4:	15800006 	bnez	t4,1b00 <L80950CDC+0xe4>
    1ae8:	ae2c0198 	sw	t4,408(s1)
    1aec:	826e0000 	lb	t6,0(s3)
    1af0:	2418003c 	li	t8,60
    1af4:	25cf0001 	addiu	t7,t6,1
    1af8:	a26f0000 	sb	t7,0(s3)
    1afc:	ae380198 	sw	t8,408(s1)
    1b00:	100001ed 	b	22b8 <L80951578>
    1b04:	82630000 	lb	v1,0(s3)

00001b08 <L80950DC8>:
    1b08:	3c01430c 	lui	at,0x430c
    1b0c:	44815000 	mtc1	at,$f10
    1b10:	3c01434d 	lui	at,0x434d
    1b14:	44819000 	mtc1	at,$f18
    1b18:	3c020000 	lui	v0,0x0
    1b1c:	3c01c1a0 	lui	at,0xc1a0
    1b20:	44813000 	mtc1	at,$f6
    1b24:	24420000 	addiu	v0,v0,0
    1b28:	3c014120 	lui	at,0x4120
    1b2c:	e44a0000 	swc1	$f10,0(v0)
    1b30:	44815000 	mtc1	at,$f10
    1b34:	3c070000 	lui	a3,0x0
    1b38:	3c014377 	lui	at,0x4377
    1b3c:	e4520004 	swc1	$f18,4(v0)
    1b40:	44819000 	mtc1	at,$f18
    1b44:	24e70000 	addiu	a3,a3,0
    1b48:	e4460008 	swc1	$f6,8(v0)
    1b4c:	3c040000 	lui	a0,0x0
    1b50:	3c01c35c 	lui	at,0xc35c
    1b54:	c4500000 	lwc1	$f16,0(v0)
    1b58:	c4440004 	lwc1	$f4,4(v0)
    1b5c:	c4480008 	lwc1	$f8,8(v0)
    1b60:	44813000 	mtc1	at,$f6
    1b64:	24840000 	addiu	a0,a0,0
    1b68:	3c050000 	lui	a1,0x0
    1b6c:	e4ea0000 	swc1	$f10,0(a3)
    1b70:	e4f20004 	swc1	$f18,4(a3)
    1b74:	e4900000 	swc1	$f16,0(a0)
    1b78:	e4840004 	swc1	$f4,4(a0)
    1b7c:	e4880008 	swc1	$f8,8(a0)
    1b80:	e4e60008 	swc1	$f6,8(a3)
    1b84:	c4f00000 	lwc1	$f16,0(a3)
    1b88:	c4e40004 	lwc1	$f4,4(a3)
    1b8c:	c4e80008 	lwc1	$f8,8(a3)
    1b90:	24a50000 	addiu	a1,a1,0
    1b94:	24790001 	addiu	t9,v1,1
    1b98:	a2790000 	sb	t9,0(s3)
    1b9c:	240b0001 	li	t3,1
    1ba0:	e4b00000 	swc1	$f16,0(a1)
    1ba4:	e4a40004 	swc1	$f4,4(a1)
    1ba8:	e4a80008 	swc1	$f8,8(a1)
    1bac:	ae2b0198 	sw	t3,408(s1)
    1bb0:	100001c1 	b	22b8 <L80951578>
    1bb4:	82630000 	lb	v1,0(s3)

00001bb8 <L80950E78>:
    1bb8:	3c014120 	lui	at,0x4120
    1bbc:	44815000 	mtc1	at,$f10
    1bc0:	3c014377 	lui	at,0x4377
    1bc4:	44818000 	mtc1	at,$f16
    1bc8:	3c020000 	lui	v0,0x0
    1bcc:	3c01c35c 	lui	at,0xc35c
    1bd0:	44819000 	mtc1	at,$f18
    1bd4:	24420000 	addiu	v0,v0,0
    1bd8:	3c040000 	lui	a0,0x0
    1bdc:	3c063e99 	lui	a2,0x3e99
    1be0:	3c073f33 	lui	a3,0x3f33
    1be4:	34e73333 	ori	a3,a3,0x3333
    1be8:	34c6999a 	ori	a2,a2,0x999a
    1bec:	24840000 	addiu	a0,a0,0
    1bf0:	3c0540e0 	lui	a1,0x40e0
    1bf4:	e7a20010 	swc1	$f2,16(sp)
    1bf8:	e44a0000 	swc1	$f10,0(v0)
    1bfc:	e4500004 	swc1	$f16,4(v0)
    1c00:	0c000000 	jal	0 <func_8094F2C0>
    1c04:	e4520008 	swc1	$f18,8(v0)
    1c08:	3c020000 	lui	v0,0x0
    1c0c:	24420000 	addiu	v0,v0,0
    1c10:	c4440000 	lwc1	$f4,0(v0)
    1c14:	8c4e0000 	lw	t6,0(v0)
    1c18:	3c0c0000 	lui	t4,0x0
    1c1c:	e4440008 	swc1	$f4,8(v0)
    1c20:	c4460008 	lwc1	$f6,8(v0)
    1c24:	258c0000 	addiu	t4,t4,0
    1c28:	e4460004 	swc1	$f6,4(v0)
    1c2c:	ad8e0000 	sw	t6,0(t4)
    1c30:	8c4d0004 	lw	t5,4(v0)
    1c34:	ad8d0004 	sw	t5,4(t4)
    1c38:	8c4e0008 	lw	t6,8(v0)
    1c3c:	ad8e0008 	sw	t6,8(t4)
    1c40:	8e2f0198 	lw	t7,408(s1)
    1c44:	25f8ffff 	addiu	t8,t7,-1
    1c48:	17000006 	bnez	t8,1c64 <L80950E78+0xac>
    1c4c:	ae380198 	sw	t8,408(s1)
    1c50:	826b0000 	lb	t3,0(s3)
    1c54:	240d0028 	li	t5,40
    1c58:	256c0001 	addiu	t4,t3,1
    1c5c:	a26c0000 	sb	t4,0(s3)
    1c60:	ae2d0198 	sw	t5,408(s1)
    1c64:	10000194 	b	22b8 <L80951578>
    1c68:	82630000 	lb	v1,0(s3)

00001c6c <L80950F2C>:
    1c6c:	8e2e0198 	lw	t6,408(s1)
    1c70:	3c014120 	lui	at,0x4120
    1c74:	25cfffff 	addiu	t7,t6,-1
    1c78:	15e0002d 	bnez	t7,1d30 <L80950F2C+0xc4>
    1c7c:	ae2f0198 	sw	t7,408(s1)
    1c80:	44814000 	mtc1	at,$f8
    1c84:	3c010000 	lui	at,0x0
    1c88:	3c190000 	lui	t9,0x0
    1c8c:	e4280000 	swc1	$f8,0(at)
    1c90:	3c014248 	lui	at,0x4248
    1c94:	44815000 	mtc1	at,$f10
    1c98:	3c010000 	lui	at,0x0
    1c9c:	27390000 	addiu	t9,t9,0
    1ca0:	e42a0000 	swc1	$f10,0(at)
    1ca4:	3c01c35c 	lui	at,0xc35c
    1ca8:	44818000 	mtc1	at,$f16
    1cac:	3c010000 	lui	at,0x0
    1cb0:	27a5005c 	addiu	a1,sp,92
    1cb4:	e4300000 	swc1	$f16,0(at)
    1cb8:	8f2c0000 	lw	t4,0(t9)
    1cbc:	3c0d0000 	lui	t5,0x0
    1cc0:	25ad0000 	addiu	t5,t5,0
    1cc4:	acac0000 	sw	t4,0(a1)
    1cc8:	8f2b0004 	lw	t3,4(t9)
    1ccc:	8caf0000 	lw	t7,0(a1)
    1cd0:	3c180000 	lui	t8,0x0
    1cd4:	acab0004 	sw	t3,4(a1)
    1cd8:	8f2c0008 	lw	t4,8(t9)
    1cdc:	27180000 	addiu	t8,t8,0
    1ce0:	acac0008 	sw	t4,8(a1)
    1ce4:	adaf0000 	sw	t7,0(t5)
    1ce8:	8cae0004 	lw	t6,4(a1)
    1cec:	adae0004 	sw	t6,4(t5)
    1cf0:	8caf0008 	lw	t7,8(a1)
    1cf4:	adaf0008 	sw	t7,8(t5)
    1cf8:	8cab0000 	lw	t3,0(a1)
    1cfc:	af0b0000 	sw	t3,0(t8)
    1d00:	8cb90004 	lw	t9,4(a1)
    1d04:	af190004 	sw	t9,4(t8)
    1d08:	8cab0008 	lw	t3,8(a1)
    1d0c:	af0b0008 	sw	t3,8(t8)
    1d10:	826c0000 	lb	t4,0(s3)
    1d14:	24180014 	li	t8,20
    1d18:	258d0001 	addiu	t5,t4,1
    1d1c:	a26d0000 	sb	t5,0(s3)
    1d20:	826e0000 	lb	t6,0(s3)
    1d24:	25cf0001 	addiu	t7,t6,1
    1d28:	a26f0000 	sb	t7,0(s3)
    1d2c:	ae380198 	sw	t8,408(s1)
    1d30:	10000161 	b	22b8 <L80951578>
    1d34:	82630000 	lb	v1,0(s3)

00001d38 <L80950FF8>:
    1d38:	3c013e80 	lui	at,0x3e80
    1d3c:	44819000 	mtc1	at,$f18
    1d40:	3c040000 	lui	a0,0x0
    1d44:	3c063e99 	lui	a2,0x3e99
    1d48:	34c6999a 	ori	a2,a2,0x999a
    1d4c:	24840000 	addiu	a0,a0,0
    1d50:	3c054160 	lui	a1,0x4160
    1d54:	3c073f80 	lui	a3,0x3f80
    1d58:	0c000000 	jal	0 <func_8094F2C0>
    1d5c:	e7b20010 	swc1	$f18,16(sp)
    1d60:	3c080000 	lui	t0,0x0
    1d64:	25080000 	addiu	t0,t0,0
    1d68:	3c010000 	lui	at,0x0
    1d6c:	c4240000 	lwc1	$f4,0(at)
    1d70:	c5020000 	lwc1	$f2,0(t0)
    1d74:	8d0c0000 	lw	t4,0(t0)
    1d78:	3c190000 	lui	t9,0x0
    1d7c:	46041182 	mul.s	$f6,$f2,$f4
    1d80:	27390000 	addiu	t9,t9,0
    1d84:	e5020008 	swc1	$f2,8(t0)
    1d88:	3c010000 	lui	at,0x0
    1d8c:	e5060004 	swc1	$f6,4(t0)
    1d90:	af2c0000 	sw	t4,0(t9)
    1d94:	8d0b0004 	lw	t3,4(t0)
    1d98:	af2b0004 	sw	t3,4(t9)
    1d9c:	8d0c0008 	lw	t4,8(t0)
    1da0:	af2c0008 	sw	t4,8(t9)
    1da4:	c4280000 	lwc1	$f8,0(at)
    1da8:	3c013fe0 	lui	at,0x3fe0
    1dac:	44815000 	mtc1	at,$f10
    1db0:	3c010000 	lui	at,0x0
    1db4:	460a4402 	mul.s	$f16,$f8,$f10
    1db8:	e4300000 	swc1	$f16,0(at)
    1dbc:	8e2d0198 	lw	t5,408(s1)
    1dc0:	25aeffff 	addiu	t6,t5,-1
    1dc4:	15c00007 	bnez	t6,1de4 <L80950FF8+0xac>
    1dc8:	ae2e0198 	sw	t6,408(s1)
    1dcc:	82780000 	lb	t8,0(s3)
    1dd0:	240b1d4c 	li	t3,7500
    1dd4:	27190001 	addiu	t9,t8,1
    1dd8:	a2790000 	sb	t9,0(s3)
    1ddc:	ae2b0198 	sw	t3,408(s1)
    1de0:	a62001f2 	sh	zero,498(s1)
    1de4:	10000134 	b	22b8 <L80951578>
    1de8:	82630000 	lb	v1,0(s3)

00001dec <L809510AC>:
    1dec:	3c080000 	lui	t0,0x0
    1df0:	25080000 	addiu	t0,t0,0
    1df4:	2410000a 	li	s0,10
    1df8:	9103ffff 	lbu	v1,-1(t0)
    1dfc:	24010001 	li	at,1
    1e00:	5060002f 	beqzl	v1,1ec0 <L809510AC+0xd4>
    1e04:	2610ffff 	addiu	s0,s0,-1
    1e08:	14610010 	bne	v1,at,1e4c <L809510AC+0x60>
    1e0c:	00601025 	move	v0,v1
    1e10:	02202025 	move	a0,s1
    1e14:	24053941 	li	a1,14657
    1e18:	0c000000 	jal	0 <func_8094F2C0>
    1e1c:	afa80054 	sw	t0,84(sp)
    1e20:	0c000000 	jal	0 <func_8094F2C0>
    1e24:	02402025 	move	a0,s2
    1e28:	922c0194 	lbu	t4,404(s1)
    1e2c:	8fa80054 	lw	t0,84(sp)
    1e30:	240d0002 	li	t5,2
    1e34:	55800003 	bnezl	t4,1e44 <L809510AC+0x58>
    1e38:	9103ffff 	lbu	v1,-1(t0)
    1e3c:	a22d0194 	sb	t5,404(s1)
    1e40:	9103ffff 	lbu	v1,-1(t0)
    1e44:	10000019 	b	1eac <L809510AC+0xc0>
    1e48:	00601025 	move	v0,v1
    1e4c:	24010002 	li	at,2
    1e50:	14410016 	bne	v0,at,1eac <L809510AC+0xc0>
    1e54:	02402025 	move	a0,s2
    1e58:	44903000 	mtc1	s0,$f6
    1e5c:	3c014248 	lui	at,0x4248
    1e60:	44819000 	mtc1	at,$f18
    1e64:	46803220 	cvt.s.w	$f8,$f6
    1e68:	3c0141f0 	lui	at,0x41f0
    1e6c:	44812000 	mtc1	at,$f4
    1e70:	240e0002 	li	t6,2
    1e74:	240f0001 	li	t7,1
    1e78:	afaf0020 	sw	t7,32(sp)
    1e7c:	afae0018 	sw	t6,24(sp)
    1e80:	e7a8001c 	swc1	$f8,28(sp)
    1e84:	02202825 	move	a1,s1
    1e88:	24060006 	li	a2,6
    1e8c:	2407008c 	li	a3,140
    1e90:	afa80054 	sw	t0,84(sp)
    1e94:	e7b20010 	swc1	$f18,16(sp)
    1e98:	0c000000 	jal	0 <func_8094F2C0>
    1e9c:	e7a40014 	swc1	$f4,20(sp)
    1ea0:	8fa80054 	lw	t0,84(sp)
    1ea4:	9103ffff 	lbu	v1,-1(t0)
    1ea8:	00601025 	move	v0,v1
    1eac:	28410003 	slti	at,v0,3
    1eb0:	10200002 	beqz	at,1ebc <L809510AC+0xd0>
    1eb4:	24780001 	addiu	t8,v1,1
    1eb8:	a118ffff 	sb	t8,-1(t0)
    1ebc:	2610ffff 	addiu	s0,s0,-1
    1ec0:	1600ffcd 	bnez	s0,1df8 <L809510AC+0xc>
    1ec4:	2508ffff 	addiu	t0,t0,-1
    1ec8:	262401f2 	addiu	a0,s1,498
    1ecc:	24050280 	li	a1,640
    1ed0:	24060001 	li	a2,1
    1ed4:	24070032 	li	a3,50
    1ed8:	0c000000 	jal	0 <func_8094F2C0>
    1edc:	afa00010 	sw	zero,16(sp)
    1ee0:	3c013e80 	lui	at,0x3e80
    1ee4:	44815000 	mtc1	at,$f10
    1ee8:	3c040000 	lui	a0,0x0
    1eec:	3c063e99 	lui	a2,0x3e99
    1ef0:	34c6999a 	ori	a2,a2,0x999a
    1ef4:	24840000 	addiu	a0,a0,0
    1ef8:	3c054160 	lui	a1,0x4160
    1efc:	3c073f80 	lui	a3,0x3f80
    1f00:	0c000000 	jal	0 <func_8094F2C0>
    1f04:	e7aa0010 	swc1	$f10,16(sp)
    1f08:	3c080000 	lui	t0,0x0
    1f0c:	25080000 	addiu	t0,t0,0
    1f10:	c5100000 	lwc1	$f16,0(t0)
    1f14:	8d0c0000 	lw	t4,0(t0)
    1f18:	3c190000 	lui	t9,0x0
    1f1c:	27390000 	addiu	t9,t9,0
    1f20:	e5100008 	swc1	$f16,8(t0)
    1f24:	af2c0000 	sw	t4,0(t9)
    1f28:	8d0b0004 	lw	t3,4(t0)
    1f2c:	3401afc8 	li	at,0xafc8
    1f30:	240d0001 	li	t5,1
    1f34:	af2b0004 	sw	t3,4(t9)
    1f38:	8d0c0008 	lw	t4,8(t0)
    1f3c:	02402025 	move	a0,s2
    1f40:	02202825 	move	a1,s1
    1f44:	af2c0008 	sw	t4,8(t9)
    1f48:	8e230198 	lw	v1,408(s1)
    1f4c:	24060008 	li	a2,8
    1f50:	0061082a 	slt	at,v1,at
    1f54:	14200008 	bnez	at,1f78 <L809510AC+0x18c>
    1f58:	3c010001 	lui	at,0x1
    1f5c:	00320821 	addu	at,at,s2
    1f60:	0c000000 	jal	0 <func_8094F2C0>
    1f64:	a02d0ae3 	sb	t5,2787(at)
    1f68:	3c080000 	lui	t0,0x0
    1f6c:	25080000 	addiu	t0,t0,0
    1f70:	1000000a 	b	1f9c <L809510AC+0x1b0>
    1f74:	8e230198 	lw	v1,408(s1)
    1f78:	340188b8 	li	at,0x88b8
    1f7c:	0061082a 	slt	at,v1,at
    1f80:	54200007 	bnezl	at,1fa0 <L809510AC+0x1b4>
    1f84:	862e01f2 	lh	t6,498(s1)
    1f88:	0c000000 	jal	0 <func_8094F2C0>
    1f8c:	2404001b 	li	a0,27
    1f90:	3c080000 	lui	t0,0x0
    1f94:	25080000 	addiu	t0,t0,0
    1f98:	8e230198 	lw	v1,408(s1)
    1f9c:	862e01f2 	lh	t6,498(s1)
    1fa0:	3c010001 	lui	at,0x1
    1fa4:	3c050000 	lui	a1,0x0
    1fa8:	006e7821 	addu	t7,v1,t6
    1fac:	01e1082a 	slt	at,t7,at
    1fb0:	14200045 	bnez	at,20c8 <L809510AC+0x2dc>
    1fb4:	ae2f0198 	sw	t7,408(s1)
    1fb8:	3c010000 	lui	at,0x0
    1fbc:	c4320000 	lwc1	$f18,0(at)
    1fc0:	3c010000 	lui	at,0x0
    1fc4:	44803000 	mtc1	zero,$f6
    1fc8:	e4320000 	swc1	$f18,0(at)
    1fcc:	82790000 	lb	t9,0(s3)
    1fd0:	3c014120 	lui	at,0x4120
    1fd4:	44812000 	mtc1	at,$f4
    1fd8:	272b0001 	addiu	t3,t9,1
    1fdc:	a26b0000 	sb	t3,0(s3)
    1fe0:	3c010000 	lui	at,0x0
    1fe4:	e5120004 	swc1	$f18,4(t0)
    1fe8:	e4240000 	swc1	$f4,0(at)
    1fec:	3c010000 	lui	at,0x0
    1ff0:	e4260000 	swc1	$f6,0(at)
    1ff4:	3c014120 	lui	at,0x4120
    1ff8:	44814000 	mtc1	at,$f8
    1ffc:	24a50000 	addiu	a1,a1,0
    2000:	3c01430c 	lui	at,0x430c
    2004:	44815000 	mtc1	at,$f10
    2008:	94ac0ee2 	lhu	t4,3810(a1)
    200c:	3c030000 	lui	v1,0x0
    2010:	3c01c348 	lui	at,0xc348
    2014:	44818000 	mtc1	at,$f16
    2018:	24630000 	addiu	v1,v1,0
    201c:	318d0040 	andi	t5,t4,0x40
    2020:	e4680000 	swc1	$f8,0(v1)
    2024:	e46a0004 	swc1	$f10,4(v1)
    2028:	15a00019 	bnez	t5,2090 <L809510AC+0x2a4>
    202c:	e4700008 	swc1	$f16,8(v1)
    2030:	3c020600 	lui	v0,0x600
    2034:	24421230 	addiu	v0,v0,4656
    2038:	00027100 	sll	t6,v0,0x4
    203c:	000e7f02 	srl	t7,t6,0x1c
    2040:	000fc080 	sll	t8,t7,0x2
    2044:	3c190000 	lui	t9,0x0
    2048:	0338c821 	addu	t9,t9,t8
    204c:	3c0100ff 	lui	at,0xff
    2050:	8f390000 	lw	t9,0(t9)
    2054:	3421ffff 	ori	at,at,0xffff
    2058:	00415824 	and	t3,v0,at
    205c:	3c018000 	lui	at,0x8000
    2060:	240e0028 	li	t6,40
    2064:	240c00b4 	li	t4,180
    2068:	240d0080 	li	t5,128
    206c:	032b3021 	addu	a2,t9,t3
    2070:	00c13021 	addu	a2,a2,at
    2074:	afad0014 	sw	t5,20(sp)
    2078:	afac0010 	sw	t4,16(sp)
    207c:	afae0018 	sw	t6,24(sp)
    2080:	02402025 	move	a0,s2
    2084:	26451d4c 	addiu	a1,s2,7500
    2088:	0c000000 	jal	0 <func_8094F2C0>
    208c:	240700a0 	li	a3,160
    2090:	0c000000 	jal	0 <func_8094F2C0>
    2094:	00000000 	nop
    2098:	3c010000 	lui	at,0x0
    209c:	c4320000 	lwc1	$f18,0(at)
    20a0:	02202025 	move	a0,s1
    20a4:	4612003c 	c.lt.s	$f0,$f18
    20a8:	00000000 	nop
    20ac:	45020004 	bc1fl	20c0 <L809510AC+0x2d4>
    20b0:	240f0028 	li	t7,40
    20b4:	0c000000 	jal	0 <func_8094F2C0>
    20b8:	24053143 	li	a1,12611
    20bc:	240f0028 	li	t7,40
    20c0:	10000019 	b	2128 <L809510AC+0x33c>
    20c4:	ae2f0198 	sw	t7,408(s1)
    20c8:	3c010000 	lui	at,0x0
    20cc:	c4240000 	lwc1	$f4,0(at)
    20d0:	3c0140a0 	lui	at,0x40a0
    20d4:	44813000 	mtc1	at,$f6
    20d8:	3c010000 	lui	at,0x0
    20dc:	e5040004 	swc1	$f4,4(t0)
    20e0:	e4260000 	swc1	$f6,0(at)
    20e4:	0c000000 	jal	0 <func_8094F2C0>
    20e8:	8624019a 	lh	a0,410(s1)
    20ec:	3c014348 	lui	at,0x4348
    20f0:	44814000 	mtc1	at,$f8
    20f4:	3c010000 	lui	at,0x0
    20f8:	46080282 	mul.s	$f10,$f0,$f8
    20fc:	e42a0000 	swc1	$f10,0(at)
    2100:	0c000000 	jal	0 <func_8094F2C0>
    2104:	8624019a 	lh	a0,410(s1)
    2108:	3c014348 	lui	at,0x4348
    210c:	44818000 	mtc1	at,$f16
    2110:	3c01c348 	lui	at,0xc348
    2114:	44812000 	mtc1	at,$f4
    2118:	46100482 	mul.s	$f18,$f0,$f16
    211c:	3c010000 	lui	at,0x0
    2120:	46049180 	add.s	$f6,$f18,$f4
    2124:	e4260000 	swc1	$f6,0(at)
    2128:	10000063 	b	22b8 <L80951578>
    212c:	82630000 	lb	v1,0(s3)

00002130 <L809513F0>:
    2130:	3c014248 	lui	at,0x4248
    2134:	44814000 	mtc1	at,$f8
    2138:	3c0141f0 	lui	at,0x41f0
    213c:	44815000 	mtc1	at,$f10
    2140:	3c014120 	lui	at,0x4120
    2144:	44818000 	mtc1	at,$f16
    2148:	24180002 	li	t8,2
    214c:	afb80018 	sw	t8,24(sp)
    2150:	02402025 	move	a0,s2
    2154:	02202825 	move	a1,s1
    2158:	24060003 	li	a2,3
    215c:	2407008c 	li	a3,140
    2160:	afa00020 	sw	zero,32(sp)
    2164:	e7a80010 	swc1	$f8,16(sp)
    2168:	e7aa0014 	swc1	$f10,20(sp)
    216c:	0c000000 	jal	0 <func_8094F2C0>
    2170:	e7b0001c 	swc1	$f16,28(sp)
    2174:	8e390198 	lw	t9,408(s1)
    2178:	272bffff 	addiu	t3,t9,-1
    217c:	15600006 	bnez	t3,2198 <L809513F0+0x68>
    2180:	ae2b0198 	sw	t3,408(s1)
    2184:	826d0000 	lb	t5,0(s3)
    2188:	240f002d 	li	t7,45
    218c:	25ae0001 	addiu	t6,t5,1
    2190:	a26e0000 	sb	t6,0(s3)
    2194:	ae2f0198 	sw	t7,408(s1)
    2198:	10000047 	b	22b8 <L80951578>
    219c:	82630000 	lb	v1,0(s3)

000021a0 <L80951460>:
    21a0:	3c014248 	lui	at,0x4248
    21a4:	44819000 	mtc1	at,$f18
    21a8:	3c0141f0 	lui	at,0x41f0
    21ac:	44812000 	mtc1	at,$f4
    21b0:	3c014120 	lui	at,0x4120
    21b4:	44813000 	mtc1	at,$f6
    21b8:	24180002 	li	t8,2
    21bc:	afb80018 	sw	t8,24(sp)
    21c0:	02402025 	move	a0,s2
    21c4:	02202825 	move	a1,s1
    21c8:	24060003 	li	a2,3
    21cc:	2407008c 	li	a3,140
    21d0:	afa00020 	sw	zero,32(sp)
    21d4:	e7b20010 	swc1	$f18,16(sp)
    21d8:	e7a40014 	swc1	$f4,20(sp)
    21dc:	0c000000 	jal	0 <func_8094F2C0>
    21e0:	e7a6001c 	swc1	$f6,28(sp)
    21e4:	8e390198 	lw	t9,408(s1)
    21e8:	272bffff 	addiu	t3,t9,-1
    21ec:	15600006 	bnez	t3,2208 <L80951460+0x68>
    21f0:	ae2b0198 	sw	t3,408(s1)
    21f4:	826d0000 	lb	t5,0(s3)
    21f8:	240f000b 	li	t7,11
    21fc:	25ae0001 	addiu	t6,t5,1
    2200:	a26e0000 	sb	t6,0(s3)
    2204:	ae2f0198 	sw	t7,408(s1)
    2208:	1000002b 	b	22b8 <L80951578>
    220c:	82630000 	lb	v1,0(s3)

00002210 <L809514D0>:
    2210:	8e380198 	lw	t8,408(s1)
    2214:	02402025 	move	a0,s2
    2218:	3c050000 	lui	a1,0x0
    221c:	2719ffff 	addiu	t9,t8,-1
    2220:	17200020 	bnez	t9,22a4 <L809514D0+0x94>
    2224:	ae390198 	sw	t9,408(s1)
    2228:	0c000000 	jal	0 <func_8094F2C0>
    222c:	84a50000 	lh	a1,0(a1)
    2230:	3c010000 	lui	at,0x0
    2234:	a4200000 	sh	zero,0(at)
    2238:	02402025 	move	a0,s2
    223c:	0c000000 	jal	0 <func_8094F2C0>
    2240:	26451d64 	addiu	a1,s2,7524
    2244:	02402025 	move	a0,s2
    2248:	00002825 	move	a1,zero
    224c:	0c000000 	jal	0 <func_8094F2C0>
    2250:	24060007 	li	a2,7
    2254:	02402025 	move	a0,s2
    2258:	02202825 	move	a1,s1
    225c:	0c000000 	jal	0 <func_8094F2C0>
    2260:	24060007 	li	a2,7
    2264:	3c050000 	lui	a1,0x0
    2268:	24a50000 	addiu	a1,a1,0
    226c:	826c0000 	lb	t4,0(s3)
    2270:	94ae0ee2 	lhu	t6,3810(a1)
    2274:	34018000 	li	at,0x8000
    2278:	258d0001 	addiu	t5,t4,1
    227c:	35cf0040 	ori	t7,t6,0x40
    2280:	a26d0000 	sb	t5,0(s3)
    2284:	a4af0ee2 	sh	t7,3810(a1)
    2288:	8623008a 	lh	v1,138(s1)
    228c:	8fa40068 	lw	a0,104(sp)
    2290:	00611821 	addu	v1,v1,at
    2294:	00031c00 	sll	v1,v1,0x10
    2298:	00031c03 	sra	v1,v1,0x10
    229c:	a4830032 	sh	v1,50(a0)
    22a0:	a48300b6 	sh	v1,182(a0)
    22a4:	10000004 	b	22b8 <L80951578>
    22a8:	82630000 	lb	v1,0(s3)

000022ac <L8095156C>:
    22ac:	0c000000 	jal	0 <func_8094F2C0>
    22b0:	02202025 	move	a0,s1
    22b4:	82630000 	lb	v1,0(s3)

000022b8 <L80951578>:
    22b8:	28610005 	slti	at,v1,5
    22bc:	1420001d 	bnez	at,2334 <L80951578+0x7c>
    22c0:	262400e4 	addiu	a0,s1,228
    22c4:	2405313c 	li	a1,12604
    22c8:	0c000000 	jal	0 <func_8094F2C0>
    22cc:	3c063f80 	lui	a2,0x3f80
    22d0:	82780000 	lb	t8,0(s3)
    22d4:	3c190001 	lui	t9,0x1
    22d8:	0332c821 	addu	t9,t9,s2
    22dc:	2b010008 	slti	at,t8,8
    22e0:	54200015 	bnezl	at,2338 <L80951578+0x80>
    22e4:	862d01b0 	lh	t5,432(s1)
    22e8:	8f391de4 	lw	t9,7652(t9)
    22ec:	02402025 	move	a0,s2
    22f0:	02202825 	move	a1,s1
    22f4:	332b0003 	andi	t3,t9,0x3
    22f8:	1560000e 	bnez	t3,2334 <L80951578+0x7c>
    22fc:	24060001 	li	a2,1
    2300:	3c014248 	lui	at,0x4248
    2304:	44814000 	mtc1	at,$f8
    2308:	3c014120 	lui	at,0x4120
    230c:	44815000 	mtc1	at,$f10
    2310:	44818000 	mtc1	at,$f16
    2314:	240c0005 	li	t4,5
    2318:	afac0018 	sw	t4,24(sp)
    231c:	24070064 	li	a3,100
    2320:	afa00020 	sw	zero,32(sp)
    2324:	e7a80010 	swc1	$f8,16(sp)
    2328:	e7aa0014 	swc1	$f10,20(sp)
    232c:	0c000000 	jal	0 <func_8094F2C0>
    2330:	e7b0001c 	swc1	$f16,28(sp)
    2334:	862d01b0 	lh	t5,432(s1)
    2338:	25ae0ce4 	addiu	t6,t5,3300
    233c:	a62e01b0 	sh	t6,432(s1)
    2340:	0c000000 	jal	0 <func_8094F2C0>
    2344:	862401b0 	lh	a0,432(s1)
    2348:	3c014248 	lui	at,0x4248
    234c:	44819000 	mtc1	at,$f18
    2350:	3c0d0000 	lui	t5,0x0
    2354:	46120102 	mul.s	$f4,$f0,$f18
    2358:	4600218d 	trunc.w.s	$f6,$f4
    235c:	440b3000 	mfc1	t3,$f6
    2360:	00000000 	nop
    2364:	256c0096 	addiu	t4,t3,150
    2368:	a62c01ae 	sh	t4,430(s1)
    236c:	85ad0000 	lh	t5,0(t5)
    2370:	51a00055 	beqzl	t5,24c8 <L80951578+0x210>
    2374:	8fbf0044 	lw	ra,68(sp)
    2378:	826e0000 	lb	t6,0(s3)
    237c:	3c040000 	lui	a0,0x0
    2380:	24840000 	addiu	a0,a0,0
    2384:	29c1000b 	slti	at,t6,11
    2388:	1020004e 	beqz	at,24c4 <L80951578+0x20c>
    238c:	3c050000 	lui	a1,0x0
    2390:	3c010000 	lui	at,0x0
    2394:	c4280000 	lwc1	$f8,0(at)
    2398:	3c063e99 	lui	a2,0x3e99
    239c:	3c070000 	lui	a3,0x0
    23a0:	8ce70000 	lw	a3,0(a3)
    23a4:	34c6999a 	ori	a2,a2,0x999a
    23a8:	8ca50000 	lw	a1,0(a1)
    23ac:	0c000000 	jal	0 <func_8094F2C0>
    23b0:	e7a80010 	swc1	$f8,16(sp)
    23b4:	3c010000 	lui	at,0x0
    23b8:	c42a0000 	lwc1	$f10,0(at)
    23bc:	3c040000 	lui	a0,0x0
    23c0:	3c050000 	lui	a1,0x0
    23c4:	3c063e99 	lui	a2,0x3e99
    23c8:	3c070000 	lui	a3,0x0
    23cc:	8ce70000 	lw	a3,0(a3)
    23d0:	34c6999a 	ori	a2,a2,0x999a
    23d4:	8ca50000 	lw	a1,0(a1)
    23d8:	24840000 	addiu	a0,a0,0
    23dc:	0c000000 	jal	0 <func_8094F2C0>
    23e0:	e7aa0010 	swc1	$f10,16(sp)
    23e4:	3c010000 	lui	at,0x0
    23e8:	c4300000 	lwc1	$f16,0(at)
    23ec:	3c040000 	lui	a0,0x0
    23f0:	3c050000 	lui	a1,0x0
    23f4:	3c063e99 	lui	a2,0x3e99
    23f8:	3c070000 	lui	a3,0x0
    23fc:	8ce70000 	lw	a3,0(a3)
    2400:	34c6999a 	ori	a2,a2,0x999a
    2404:	8ca50000 	lw	a1,0(a1)
    2408:	24840000 	addiu	a0,a0,0
    240c:	0c000000 	jal	0 <func_8094F2C0>
    2410:	e7b00010 	swc1	$f16,16(sp)
    2414:	3c010000 	lui	at,0x0
    2418:	c4320000 	lwc1	$f18,0(at)
    241c:	3c040000 	lui	a0,0x0
    2420:	3c050000 	lui	a1,0x0
    2424:	3c063e99 	lui	a2,0x3e99
    2428:	3c070000 	lui	a3,0x0
    242c:	8ce70000 	lw	a3,0(a3)
    2430:	34c6999a 	ori	a2,a2,0x999a
    2434:	8ca50000 	lw	a1,0(a1)
    2438:	24840000 	addiu	a0,a0,0
    243c:	0c000000 	jal	0 <func_8094F2C0>
    2440:	e7b20010 	swc1	$f18,16(sp)
    2444:	3c010000 	lui	at,0x0
    2448:	c4240000 	lwc1	$f4,0(at)
    244c:	3c040000 	lui	a0,0x0
    2450:	3c050000 	lui	a1,0x0
    2454:	3c063e99 	lui	a2,0x3e99
    2458:	3c070000 	lui	a3,0x0
    245c:	8ce70000 	lw	a3,0(a3)
    2460:	34c6999a 	ori	a2,a2,0x999a
    2464:	8ca50000 	lw	a1,0(a1)
    2468:	24840000 	addiu	a0,a0,0
    246c:	0c000000 	jal	0 <func_8094F2C0>
    2470:	e7a40010 	swc1	$f4,16(sp)
    2474:	3c010000 	lui	at,0x0
    2478:	c4260000 	lwc1	$f6,0(at)
    247c:	3c040000 	lui	a0,0x0
    2480:	3c050000 	lui	a1,0x0
    2484:	3c063e99 	lui	a2,0x3e99
    2488:	3c070000 	lui	a3,0x0
    248c:	8ce70000 	lw	a3,0(a3)
    2490:	34c6999a 	ori	a2,a2,0x999a
    2494:	8ca50000 	lw	a1,0(a1)
    2498:	24840000 	addiu	a0,a0,0
    249c:	0c000000 	jal	0 <func_8094F2C0>
    24a0:	e7a60010 	swc1	$f6,16(sp)
    24a4:	3c050000 	lui	a1,0x0
    24a8:	3c060000 	lui	a2,0x0
    24ac:	3c070000 	lui	a3,0x0
    24b0:	24e70000 	addiu	a3,a3,0
    24b4:	24c60000 	addiu	a2,a2,0
    24b8:	84a50000 	lh	a1,0(a1)
    24bc:	0c000000 	jal	0 <func_8094F2C0>
    24c0:	02402025 	move	a0,s2
    24c4:	8fbf0044 	lw	ra,68(sp)
    24c8:	8fb00034 	lw	s0,52(sp)
    24cc:	8fb10038 	lw	s1,56(sp)
    24d0:	8fb2003c 	lw	s2,60(sp)
    24d4:	8fb30040 	lw	s3,64(sp)
    24d8:	03e00008 	jr	ra
    24dc:	27bd0070 	addiu	sp,sp,112

000024e0 <func_809517A0>:
    24e0:	27bdffd0 	addiu	sp,sp,-48
    24e4:	afb00028 	sw	s0,40(sp)
    24e8:	00808025 	move	s0,a0
    24ec:	afbf002c 	sw	ra,44(sp)
    24f0:	3c040600 	lui	a0,0x600
    24f4:	0c000000 	jal	0 <func_8094F2C0>
    24f8:	24845184 	addiu	a0,a0,20868
    24fc:	44822000 	mtc1	v0,$f4
    2500:	44803000 	mtc1	zero,$f6
    2504:	3c050600 	lui	a1,0x600
    2508:	46802020 	cvt.s.w	$f0,$f4
    250c:	240e0002 	li	t6,2
    2510:	afae0014 	sw	t6,20(sp)
    2514:	24a55184 	addiu	a1,a1,20868
    2518:	2604014c 	addiu	a0,s0,332
    251c:	3c063f80 	lui	a2,0x3f80
    2520:	44070000 	mfc1	a3,$f0
    2524:	e7a00010 	swc1	$f0,16(sp)
    2528:	0c000000 	jal	0 <func_8094F2C0>
    252c:	e7a60018 	swc1	$f6,24(sp)
    2530:	8e0f0004 	lw	t7,4(s0)
    2534:	3c01c3e1 	lui	at,0xc3e1
    2538:	44814000 	mtc1	at,$f8
    253c:	2401fffe 	li	at,-2
    2540:	01e1c024 	and	t8,t7,at
    2544:	24190019 	li	t9,25
    2548:	ae180004 	sw	t8,4(s0)
    254c:	ae190198 	sw	t9,408(s0)
    2550:	3c010000 	lui	at,0x0
    2554:	24080080 	li	t0,128
    2558:	3c050000 	lui	a1,0x0
    255c:	e60800bc 	swc1	$f8,188(s0)
    2560:	a0280000 	sb	t0,0(at)
    2564:	24a50000 	addiu	a1,a1,0
    2568:	0c000000 	jal	0 <func_8094F2C0>
    256c:	02002025 	move	a0,s0
    2570:	8fbf002c 	lw	ra,44(sp)
    2574:	8fb00028 	lw	s0,40(sp)
    2578:	27bd0030 	addiu	sp,sp,48
    257c:	03e00008 	jr	ra
    2580:	00000000 	nop

00002584 <func_80951844>:
    2584:	27bdffb8 	addiu	sp,sp,-72
    2588:	afbf0034 	sw	ra,52(sp)
    258c:	afb00030 	sw	s0,48(sp)
    2590:	afa5004c 	sw	a1,76(sp)
    2594:	8caf1c44 	lw	t7,7236(a1)
    2598:	00808025 	move	s0,a0
    259c:	afaf0044 	sw	t7,68(sp)
    25a0:	849801b0 	lh	t8,432(a0)
    25a4:	27190ce4 	addiu	t9,t8,3300
    25a8:	a49901b0 	sh	t9,432(a0)
    25ac:	0c000000 	jal	0 <func_8094F2C0>
    25b0:	848401b0 	lh	a0,432(a0)
    25b4:	3c014248 	lui	at,0x4248
    25b8:	44812000 	mtc1	at,$f4
    25bc:	8e020198 	lw	v0,408(s0)
    25c0:	46040182 	mul.s	$f6,$f0,$f4
    25c4:	4600320d 	trunc.w.s	$f8,$f6
    25c8:	440b4000 	mfc1	t3,$f8
    25cc:	00000000 	nop
    25d0:	256c0096 	addiu	t4,t3,150
    25d4:	10400009 	beqz	v0,25fc <func_80951844+0x78>
    25d8:	a60c01ae 	sh	t4,430(s0)
    25dc:	244dffff 	addiu	t5,v0,-1
    25e0:	15a00006 	bnez	t5,25fc <func_80951844+0x78>
    25e4:	ae0d0198 	sw	t5,408(s0)
    25e8:	3c0f0000 	lui	t7,0x0
    25ec:	91ef0000 	lbu	t7,0(t7)
    25f0:	3c010000 	lui	at,0x0
    25f4:	31f8007f 	andi	t8,t7,0x7f
    25f8:	a0380000 	sb	t8,0(at)
    25fc:	9202029c 	lbu	v0,668(s0)
    2600:	30590002 	andi	t9,v0,0x2
    2604:	1320000e 	beqz	t9,2640 <func_80951844+0xbc>
    2608:	3048fffd 	andi	t0,v0,0xfffd
    260c:	a208029c 	sb	t0,668(s0)
    2610:	8fa90044 	lw	t1,68(sp)
    2614:	8e0a0290 	lw	t2,656(s0)
    2618:	3c014100 	lui	at,0x4100
    261c:	8fa4004c 	lw	a0,76(sp)
    2620:	152a0007 	bne	t1,t2,2640 <func_80951844+0xbc>
    2624:	00000000 	nop
    2628:	44810000 	mtc1	at,$f0
    262c:	8607008a 	lh	a3,138(s0)
    2630:	02002825 	move	a1,s0
    2634:	44060000 	mfc1	a2,$f0
    2638:	0c000000 	jal	0 <func_8094F2C0>
    263c:	e7a00010 	swc1	$f0,16(sp)
    2640:	3c0b0000 	lui	t3,0x0
    2644:	916b0000 	lbu	t3,0(t3)
    2648:	316c007f 	andi	t4,t3,0x7f
    264c:	1180000d 	beqz	t4,2684 <func_80951844+0x100>
    2650:	00000000 	nop
    2654:	44805000 	mtc1	zero,$f10
    2658:	240d000c 	li	t5,12
    265c:	02002025 	move	a0,s0
    2660:	e60a0164 	swc1	$f10,356(s0)
    2664:	afad0010 	sw	t5,16(sp)
    2668:	00002825 	move	a1,zero
    266c:	240600ff 	li	a2,255
    2670:	0c000000 	jal	0 <func_8094F2C0>
    2674:	00003825 	move	a3,zero
    2678:	02002025 	move	a0,s0
    267c:	0c000000 	jal	0 <func_8094F2C0>
    2680:	2405393d 	li	a1,14653
    2684:	0c000000 	jal	0 <func_8094F2C0>
    2688:	2604014c 	addiu	a0,s0,332
    268c:	10400008 	beqz	v0,26b0 <func_80951844+0x12c>
    2690:	3c0e0000 	lui	t6,0x0
    2694:	91ce0000 	lbu	t6,0(t6)
    2698:	02002025 	move	a0,s0
    269c:	29c10003 	slti	at,t6,3
    26a0:	54200004 	bnezl	at,26b4 <func_80951844+0x130>
    26a4:	86050030 	lh	a1,48(s0)
    26a8:	0c000000 	jal	0 <func_8094F2C0>
    26ac:	8fa5004c 	lw	a1,76(sp)
    26b0:	86050030 	lh	a1,48(s0)
    26b4:	afa00010 	sw	zero,16(sp)
    26b8:	260400b4 	addiu	a0,s0,180
    26bc:	24060001 	li	a2,1
    26c0:	0c000000 	jal	0 <func_8094F2C0>
    26c4:	240700c8 	li	a3,200
    26c8:	86050034 	lh	a1,52(s0)
    26cc:	afa00010 	sw	zero,16(sp)
    26d0:	260400b8 	addiu	a0,s0,184
    26d4:	24060001 	li	a2,1
    26d8:	0c000000 	jal	0 <func_8094F2C0>
    26dc:	240700c8 	li	a3,200
    26e0:	860f01ac 	lh	t7,428(s0)
    26e4:	25f80c31 	addiu	t8,t7,3121
    26e8:	a61801ac 	sh	t8,428(s0)
    26ec:	0c000000 	jal	0 <func_8094F2C0>
    26f0:	860401ac 	lh	a0,428(s0)
    26f4:	3c010000 	lui	at,0x0
    26f8:	c4300000 	lwc1	$f16,0(at)
    26fc:	3c013f80 	lui	at,0x3f80
    2700:	44812000 	mtc1	at,$f4
    2704:	46100482 	mul.s	$f18,$f0,$f16
    2708:	860401ac 	lh	a0,428(s0)
    270c:	46049180 	add.s	$f6,$f18,$f4
    2710:	0c000000 	jal	0 <func_8094F2C0>
    2714:	e60601a0 	swc1	$f6,416(s0)
    2718:	3c010000 	lui	at,0x0
    271c:	c4280000 	lwc1	$f8,0(at)
    2720:	3c013f80 	lui	at,0x3f80
    2724:	44818000 	mtc1	at,$f16
    2728:	46080282 	mul.s	$f10,$f0,$f8
    272c:	3c080001 	lui	t0,0x1
    2730:	3c014120 	lui	at,0x4120
    2734:	02002825 	move	a1,s0
    2738:	24060001 	li	a2,1
    273c:	24070064 	li	a3,100
    2740:	240a0002 	li	t2,2
    2744:	46105480 	add.s	$f18,$f10,$f16
    2748:	e61201a4 	swc1	$f18,420(s0)
    274c:	8fb9004c 	lw	t9,76(sp)
    2750:	01194021 	addu	t0,t0,t9
    2754:	8d081de4 	lw	t0,7652(t0)
    2758:	03202025 	move	a0,t9
    275c:	31090003 	andi	t1,t0,0x3
    2760:	1520000a 	bnez	t1,278c <func_80951844+0x208>
    2764:	00000000 	nop
    2768:	44810000 	mtc1	at,$f0
    276c:	3c014248 	lui	at,0x4248
    2770:	44812000 	mtc1	at,$f4
    2774:	afaa0018 	sw	t2,24(sp)
    2778:	afa00020 	sw	zero,32(sp)
    277c:	e7a00014 	swc1	$f0,20(sp)
    2780:	e7a0001c 	swc1	$f0,28(sp)
    2784:	0c000000 	jal	0 <func_8094F2C0>
    2788:	e7a40010 	swc1	$f4,16(sp)
    278c:	0c000000 	jal	0 <func_8094F2C0>
    2790:	00000000 	nop
    2794:	3c010000 	lui	at,0x0
    2798:	c4260000 	lwc1	$f6,0(at)
    279c:	02002025 	move	a0,s0
    27a0:	4606003c 	c.lt.s	$f0,$f6
    27a4:	00000000 	nop
    27a8:	45020004 	bc1fl	27bc <func_80951844+0x238>
    27ac:	2605028c 	addiu	a1,s0,652
    27b0:	0c000000 	jal	0 <func_8094F2C0>
    27b4:	24053143 	li	a1,12611
    27b8:	2605028c 	addiu	a1,s0,652
    27bc:	afa50040 	sw	a1,64(sp)
    27c0:	0c000000 	jal	0 <func_8094F2C0>
    27c4:	02002025 	move	a0,s0
    27c8:	8fa4004c 	lw	a0,76(sp)
    27cc:	3c010001 	lui	at,0x1
    27d0:	34211e60 	ori	at,at,0x1e60
    27d4:	00812821 	addu	a1,a0,at
    27d8:	afa5003c 	sw	a1,60(sp)
    27dc:	0c000000 	jal	0 <func_8094F2C0>
    27e0:	8fa60040 	lw	a2,64(sp)
    27e4:	8fa5003c 	lw	a1,60(sp)
    27e8:	8fa4004c 	lw	a0,76(sp)
    27ec:	0c000000 	jal	0 <func_8094F2C0>
    27f0:	8fa60040 	lw	a2,64(sp)
    27f4:	260400e4 	addiu	a0,s0,228
    27f8:	2405313c 	li	a1,12604
    27fc:	0c000000 	jal	0 <func_8094F2C0>
    2800:	3c063f80 	lui	a2,0x3f80
    2804:	8fbf0034 	lw	ra,52(sp)
    2808:	8fb00030 	lw	s0,48(sp)
    280c:	27bd0048 	addiu	sp,sp,72
    2810:	03e00008 	jr	ra
    2814:	00000000 	nop

00002818 <func_80951AD8>:
    2818:	27bdffa8 	addiu	sp,sp,-88
    281c:	3c020000 	lui	v0,0x0
    2820:	24420000 	addiu	v0,v0,0
    2824:	904e0000 	lbu	t6,0(v0)
    2828:	afb20040 	sw	s2,64(sp)
    282c:	afb1003c 	sw	s1,60(sp)
    2830:	afb60050 	sw	s6,80(sp)
    2834:	afb5004c 	sw	s5,76(sp)
    2838:	afb40048 	sw	s4,72(sp)
    283c:	afb30044 	sw	s3,68(sp)
    2840:	afb00038 	sw	s0,56(sp)
    2844:	3c110000 	lui	s1,0x0
    2848:	3c120000 	lui	s2,0x0
    284c:	25cf0001 	addiu	t7,t6,1
    2850:	00808025 	move	s0,a0
    2854:	00a0a025 	move	s4,a1
    2858:	afbf0054 	sw	ra,84(sp)
    285c:	a04f0000 	sb	t7,0(v0)
    2860:	26520000 	addiu	s2,s2,0
    2864:	26310000 	addiu	s1,s1,0
    2868:	2413000a 	li	s3,10
    286c:	24b51c24 	addiu	s5,a1,7204
    2870:	24160005 	li	s6,5
    2874:	c6240000 	lwc1	$f4,0(s1)
    2878:	c6060024 	lwc1	$f6,36(s0)
    287c:	c62a0004 	lwc1	$f10,4(s1)
    2880:	86580000 	lh	t8,0(s2)
    2884:	46062200 	add.s	$f8,$f4,$f6
    2888:	c6240008 	lwc1	$f4,8(s1)
    288c:	86490002 	lh	t1,2(s2)
    2890:	864c0004 	lh	t4,4(s2)
    2894:	e7a80010 	swc1	$f8,16(sp)
    2898:	c6100028 	lwc1	$f16,40(s0)
    289c:	02a02025 	move	a0,s5
    28a0:	02002825 	move	a1,s0
    28a4:	46105480 	add.s	$f18,$f10,$f16
    28a8:	02803025 	move	a2,s4
    28ac:	240700ba 	li	a3,186
    28b0:	e7b20014 	swc1	$f18,20(sp)
    28b4:	c606002c 	lwc1	$f6,44(s0)
    28b8:	46062200 	add.s	$f8,$f4,$f6
    28bc:	e7a80018 	swc1	$f8,24(sp)
    28c0:	86190030 	lh	t9,48(s0)
    28c4:	03194021 	addu	t0,t8,t9
    28c8:	afa8001c 	sw	t0,28(sp)
    28cc:	860a0032 	lh	t2,50(s0)
    28d0:	012a5821 	addu	t3,t1,t2
    28d4:	afab0020 	sw	t3,32(sp)
    28d8:	860d0034 	lh	t5,52(s0)
    28dc:	afb30028 	sw	s3,40(sp)
    28e0:	018d7021 	addu	t6,t4,t5
    28e4:	0c000000 	jal	0 <func_8094F2C0>
    28e8:	afae0024 	sw	t6,36(sp)
    28ec:	2673ffff 	addiu	s3,s3,-1
    28f0:	2631fff4 	addiu	s1,s1,-12
    28f4:	1676ffdf 	bne	s3,s6,2874 <func_80951AD8+0x5c>
    28f8:	2652fffa 	addiu	s2,s2,-6
    28fc:	8e0f0004 	lw	t7,4(s0)
    2900:	3c050000 	lui	a1,0x0
    2904:	a2000196 	sb	zero,406(s0)
    2908:	35f80001 	ori	t8,t7,0x1
    290c:	ae180004 	sw	t8,4(s0)
    2910:	24a50000 	addiu	a1,a1,0
    2914:	0c000000 	jal	0 <func_8094F2C0>
    2918:	02002025 	move	a0,s0
    291c:	8fbf0054 	lw	ra,84(sp)
    2920:	8fb00038 	lw	s0,56(sp)
    2924:	8fb1003c 	lw	s1,60(sp)
    2928:	8fb20040 	lw	s2,64(sp)
    292c:	8fb30044 	lw	s3,68(sp)
    2930:	8fb40048 	lw	s4,72(sp)
    2934:	8fb5004c 	lw	s5,76(sp)
    2938:	8fb60050 	lw	s6,80(sp)
    293c:	03e00008 	jr	ra
    2940:	27bd0058 	addiu	sp,sp,88

00002944 <func_80951C04>:
    2944:	27bdffa8 	addiu	sp,sp,-88
    2948:	afbf0034 	sw	ra,52(sp)
    294c:	afb00030 	sw	s0,48(sp)
    2950:	afa5005c 	sw	a1,92(sp)
    2954:	8caf1c44 	lw	t7,7236(a1)
    2958:	00808025 	move	s0,a0
    295c:	afaf0054 	sw	t7,84(sp)
    2960:	90980114 	lbu	t8,276(a0)
    2964:	17000016 	bnez	t8,29c0 <func_80951C04+0x7c>
    2968:	3c080000 	lui	t0,0x0
    296c:	25080000 	addiu	t0,t0,0
    2970:	95190000 	lhu	t9,0(t0)
    2974:	240f0010 	li	t7,16
    2978:	27290001 	addiu	t1,t9,1
    297c:	a5090000 	sh	t1,0(t0)
    2980:	808a0196 	lb	t2,406(a0)
    2984:	5140000e 	beqzl	t2,29c0 <func_80951C04+0x7c>
    2988:	ae0f02ac 	sw	t7,684(s0)
    298c:	948b0112 	lhu	t3,274(a0)
    2990:	00002825 	move	a1,zero
    2994:	240600ff 	li	a2,255
    2998:	316c4000 	andi	t4,t3,0x4000
    299c:	11800007 	beqz	t4,29bc <func_80951C04+0x78>
    29a0:	00003825 	move	a3,zero
    29a4:	240d00a0 	li	t5,160
    29a8:	0c000000 	jal	0 <func_8094F2C0>
    29ac:	afad0010 	sw	t5,16(sp)
    29b0:	820e0196 	lb	t6,406(s0)
    29b4:	10000002 	b	29c0 <func_80951C04+0x7c>
    29b8:	a20e0114 	sb	t6,276(s0)
    29bc:	ae0f02ac 	sw	t7,684(s0)
    29c0:	9202029d 	lbu	v0,669(s0)
    29c4:	3c080000 	lui	t0,0x0
    29c8:	25080000 	addiu	t0,t0,0
    29cc:	30580002 	andi	t8,v0,0x2
    29d0:	53000034 	beqzl	t8,2aa4 <func_80951C04+0x160>
    29d4:	9202029c 	lbu	v0,668(s0)
    29d8:	8e090294 	lw	t1,660(s0)
    29dc:	3059fffd 	andi	t9,v0,0xfffd
    29e0:	a219029d 	sb	t9,669(s0)
    29e4:	852a0000 	lh	t2,0(t1)
    29e8:	24010032 	li	at,50
    29ec:	3c020000 	lui	v0,0x0
    29f0:	1541000f 	bne	t2,at,2a30 <func_80951C04+0xec>
    29f4:	24420000 	addiu	v0,v0,0
    29f8:	950b0000 	lhu	t3,0(t0)
    29fc:	240d00a0 	li	t5,160
    2a00:	afad0010 	sw	t5,16(sp)
    2a04:	316cfe00 	andi	t4,t3,0xfe00
    2a08:	a50c0000 	sh	t4,0(t0)
    2a0c:	02002025 	move	a0,s0
    2a10:	00002825 	move	a1,zero
    2a14:	240600ff 	li	a2,255
    2a18:	0c000000 	jal	0 <func_8094F2C0>
    2a1c:	00003825 	move	a3,zero
    2a20:	3c0e0fc0 	lui	t6,0xfc0
    2a24:	35ce0712 	ori	t6,t6,0x712
    2a28:	10000018 	b	2a8c <func_80951C04+0x148>
    2a2c:	ae0e02ac 	sw	t6,684(s0)
    2a30:	904f0000 	lbu	t7,0(v0)
    2a34:	02002025 	move	a0,s0
    2a38:	24054000 	li	a1,16384
    2a3c:	25f80001 	addiu	t8,t7,1
    2a40:	a0580000 	sb	t8,0(v0)
    2a44:	92030114 	lbu	v1,276(s0)
    2a48:	240600ff 	li	a2,255
    2a4c:	00003825 	move	a3,zero
    2a50:	1060000c 	beqz	v1,2a84 <func_80951C04+0x140>
    2a54:	240c000c 	li	t4,12
    2a58:	96190112 	lhu	t9,274(s0)
    2a5c:	246afffb 	addiu	t2,v1,-5
    2a60:	33294000 	andi	t1,t9,0x4000
    2a64:	15200007 	bnez	t1,2a84 <func_80951C04+0x140>
    2a68:	00000000 	nop
    2a6c:	a20a0196 	sb	t2,406(s0)
    2a70:	820b0196 	lb	t3,406(s0)
    2a74:	296100a1 	slti	at,t3,161
    2a78:	14200002 	bnez	at,2a84 <func_80951C04+0x140>
    2a7c:	00000000 	nop
    2a80:	a2000196 	sb	zero,406(s0)
    2a84:	0c000000 	jal	0 <func_8094F2C0>
    2a88:	afac0010 	sw	t4,16(sp)
    2a8c:	02002025 	move	a0,s0
    2a90:	0c000000 	jal	0 <func_8094F2C0>
    2a94:	2405393e 	li	a1,14654
    2a98:	3c080000 	lui	t0,0x0
    2a9c:	25080000 	addiu	t0,t0,0
    2aa0:	9202029c 	lbu	v0,668(s0)
    2aa4:	304d0002 	andi	t5,v0,0x2
    2aa8:	11a00017 	beqz	t5,2b08 <func_80951C04+0x1c4>
    2aac:	304efffd 	andi	t6,v0,0xfffd
    2ab0:	a20e029c 	sb	t6,668(s0)
    2ab4:	950f0000 	lhu	t7,0(t0)
    2ab8:	8fa90054 	lw	t1,84(sp)
    2abc:	3c014100 	lui	at,0x4100
    2ac0:	25f80018 	addiu	t8,t7,24
    2ac4:	3319fff0 	andi	t9,t8,0xfff0
    2ac8:	a5190000 	sh	t9,0(t0)
    2acc:	8e0a0290 	lw	t2,656(s0)
    2ad0:	8fa4005c 	lw	a0,92(sp)
    2ad4:	552a000d 	bnel	t1,t2,2b0c <func_80951C04+0x1c8>
    2ad8:	95020000 	lhu	v0,0(t0)
    2adc:	44810000 	mtc1	at,$f0
    2ae0:	8607008a 	lh	a3,138(s0)
    2ae4:	02002825 	move	a1,s0
    2ae8:	44060000 	mfc1	a2,$f0
    2aec:	0c000000 	jal	0 <func_8094F2C0>
    2af0:	e7a00010 	swc1	$f0,16(sp)
    2af4:	8fa40054 	lw	a0,84(sp)
    2af8:	0c000000 	jal	0 <func_8094F2C0>
    2afc:	2405083e 	li	a1,2110
    2b00:	3c080000 	lui	t0,0x0
    2b04:	25080000 	addiu	t0,t0,0
    2b08:	95020000 	lhu	v0,0(t0)
    2b0c:	2841000b 	slti	at,v0,11
    2b10:	1420002b 	bnez	at,2bc0 <func_80951C04+0x27c>
    2b14:	304b0007 	andi	t3,v0,0x7
    2b18:	15600029 	bnez	t3,2bc0 <func_80951C04+0x27c>
    2b1c:	3c013f80 	lui	at,0x3f80
    2b20:	44812000 	mtc1	at,$f4
    2b24:	c6060068 	lwc1	$f6,104(s0)
    2b28:	46062032 	c.eq.s	$f4,$f6
    2b2c:	00000000 	nop
    2b30:	45020024 	bc1fl	2bc4 <func_80951C04+0x280>
    2b34:	260f0024 	addiu	t7,s0,36
    2b38:	8e0d0024 	lw	t5,36(s0)
    2b3c:	27a70048 	addiu	a3,sp,72
    2b40:	3c01439b 	lui	at,0x439b
    2b44:	aced0000 	sw	t5,0(a3)
    2b48:	8e0c0028 	lw	t4,40(s0)
    2b4c:	44819000 	mtc1	at,$f18
    2b50:	3c01c120 	lui	at,0xc120
    2b54:	acec0004 	sw	t4,4(a3)
    2b58:	8e0d002c 	lw	t5,44(s0)
    2b5c:	3c050000 	lui	a1,0x0
    2b60:	240e0004 	li	t6,4
    2b64:	aced0008 	sw	t5,8(a3)
    2b68:	c60a0054 	lwc1	$f10,84(s0)
    2b6c:	c60800bc 	lwc1	$f8,188(s0)
    2b70:	c7a6004c 	lwc1	$f6,76(sp)
    2b74:	afa00014 	sw	zero,20(sp)
    2b78:	460a4402 	mul.s	$f16,$f8,$f10
    2b7c:	c7aa0048 	lwc1	$f10,72(sp)
    2b80:	afae0010 	sw	t6,16(sp)
    2b84:	8fa4005c 	lw	a0,92(sp)
    2b88:	24a50000 	addiu	a1,a1,0
    2b8c:	02003025 	move	a2,s0
    2b90:	46109100 	add.s	$f4,$f18,$f16
    2b94:	44819000 	mtc1	at,$f18
    2b98:	3c01435c 	lui	at,0x435c
    2b9c:	46043200 	add.s	$f8,$f6,$f4
    2ba0:	44812000 	mtc1	at,$f4
    2ba4:	c7a60050 	lwc1	$f6,80(sp)
    2ba8:	46125400 	add.s	$f16,$f10,$f18
    2bac:	e7a8004c 	swc1	$f8,76(sp)
    2bb0:	46043200 	add.s	$f8,$f6,$f4
    2bb4:	e7b00048 	swc1	$f16,72(sp)
    2bb8:	0c000000 	jal	0 <func_8094F2C0>
    2bbc:	e7a80050 	swc1	$f8,80(sp)
    2bc0:	260f0024 	addiu	t7,s0,36
    2bc4:	0c000000 	jal	0 <func_8094F2C0>
    2bc8:	afaf0044 	sw	t7,68(sp)
    2bcc:	3c010000 	lui	at,0x0
    2bd0:	c42a0000 	lwc1	$f10,0(at)
    2bd4:	460a003c 	c.lt.s	$f0,$f10
    2bd8:	00000000 	nop
    2bdc:	45000003 	bc1f	2bec <func_80951C04+0x2a8>
    2be0:	02002025 	move	a0,s0
    2be4:	0c000000 	jal	0 <func_8094F2C0>
    2be8:	24053143 	li	a1,12611
    2bec:	86050030 	lh	a1,48(s0)
    2bf0:	afa00010 	sw	zero,16(sp)
    2bf4:	260400b4 	addiu	a0,s0,180
    2bf8:	24060001 	li	a2,1
    2bfc:	0c000000 	jal	0 <func_8094F2C0>
    2c00:	240700c8 	li	a3,200
    2c04:	86050034 	lh	a1,52(s0)
    2c08:	afa00010 	sw	zero,16(sp)
    2c0c:	260400b8 	addiu	a0,s0,184
    2c10:	24060001 	li	a2,1
    2c14:	0c000000 	jal	0 <func_8094F2C0>
    2c18:	240700c8 	li	a3,200
    2c1c:	44809000 	mtc1	zero,$f18
    2c20:	260400bc 	addiu	a0,s0,188
    2c24:	3c05c47a 	lui	a1,0xc47a
    2c28:	3c063f80 	lui	a2,0x3f80
    2c2c:	3c0741a0 	lui	a3,0x41a0
    2c30:	0c000000 	jal	0 <func_8094F2C0>
    2c34:	e7b20010 	swc1	$f18,16(sp)
    2c38:	3c180000 	lui	t8,0x0
    2c3c:	97180000 	lhu	t8,0(t8)
    2c40:	33190100 	andi	t9,t8,0x100
    2c44:	57200009 	bnezl	t9,2c6c <func_80951C04+0x328>
    2c48:	8e0b0004 	lw	t3,4(s0)
    2c4c:	8e090004 	lw	t1,4(s0)
    2c50:	3c013f80 	lui	at,0x3f80
    2c54:	44818000 	mtc1	at,$f16
    2c58:	352a0001 	ori	t2,t1,0x1
    2c5c:	ae0a0004 	sw	t2,4(s0)
    2c60:	10000007 	b	2c80 <func_80951C04+0x33c>
    2c64:	e6100068 	swc1	$f16,104(s0)
    2c68:	8e0b0004 	lw	t3,4(s0)
    2c6c:	44803000 	mtc1	zero,$f6
    2c70:	2401fffe 	li	at,-2
    2c74:	01616024 	and	t4,t3,at
    2c78:	ae0c0004 	sw	t4,4(s0)
    2c7c:	e6060068 	swc1	$f6,104(s0)
    2c80:	0c000000 	jal	0 <func_8094F2C0>
    2c84:	2604014c 	addiu	a0,s0,332
    2c88:	10400007 	beqz	v0,2ca8 <func_80951C04+0x364>
    2c8c:	3c0d0000 	lui	t5,0x0
    2c90:	91ad0000 	lbu	t5,0(t5)
    2c94:	29a10009 	slti	at,t5,9
    2c98:	54200004 	bnezl	at,2cac <func_80951C04+0x368>
    2c9c:	860e01ac 	lh	t6,428(s0)
    2ca0:	0c000000 	jal	0 <func_8094F2C0>
    2ca4:	02002025 	move	a0,s0
    2ca8:	860e01ac 	lh	t6,428(s0)
    2cac:	25cf0c31 	addiu	t7,t6,3121
    2cb0:	a60f01ac 	sh	t7,428(s0)
    2cb4:	0c000000 	jal	0 <func_8094F2C0>
    2cb8:	860401ac 	lh	a0,428(s0)
    2cbc:	3c010000 	lui	at,0x0
    2cc0:	c4240000 	lwc1	$f4,0(at)
    2cc4:	3c013f80 	lui	at,0x3f80
    2cc8:	44815000 	mtc1	at,$f10
    2ccc:	46040202 	mul.s	$f8,$f0,$f4
    2cd0:	860401ac 	lh	a0,428(s0)
    2cd4:	460a4480 	add.s	$f18,$f8,$f10
    2cd8:	0c000000 	jal	0 <func_8094F2C0>
    2cdc:	e61201a0 	swc1	$f18,416(s0)
    2ce0:	3c010000 	lui	at,0x0
    2ce4:	c4300000 	lwc1	$f16,0(at)
    2ce8:	3c013f80 	lui	at,0x3f80
    2cec:	44812000 	mtc1	at,$f4
    2cf0:	46100182 	mul.s	$f6,$f0,$f16
    2cf4:	3c190001 	lui	t9,0x1
    2cf8:	3c014120 	lui	at,0x4120
    2cfc:	02002825 	move	a1,s0
    2d00:	24060001 	li	a2,1
    2d04:	24070064 	li	a3,100
    2d08:	240a0005 	li	t2,5
    2d0c:	46043200 	add.s	$f8,$f6,$f4
    2d10:	e60801a4 	swc1	$f8,420(s0)
    2d14:	8fb8005c 	lw	t8,92(sp)
    2d18:	0338c821 	addu	t9,t9,t8
    2d1c:	8f391de4 	lw	t9,7652(t9)
    2d20:	03002025 	move	a0,t8
    2d24:	33290003 	andi	t1,t9,0x3
    2d28:	5520000b 	bnezl	t1,2d58 <func_80951C04+0x414>
    2d2c:	8fab0044 	lw	t3,68(sp)
    2d30:	44810000 	mtc1	at,$f0
    2d34:	3c014248 	lui	at,0x4248
    2d38:	44815000 	mtc1	at,$f10
    2d3c:	afaa0018 	sw	t2,24(sp)
    2d40:	afa00020 	sw	zero,32(sp)
    2d44:	e7a00014 	swc1	$f0,20(sp)
    2d48:	e7a0001c 	swc1	$f0,28(sp)
    2d4c:	0c000000 	jal	0 <func_8094F2C0>
    2d50:	e7aa0010 	swc1	$f10,16(sp)
    2d54:	8fab0044 	lw	t3,68(sp)
    2d58:	3c014234 	lui	at,0x4234
    2d5c:	44818000 	mtc1	at,$f16
    2d60:	8d6d0000 	lw	t5,0(t3)
    2d64:	2605028c 	addiu	a1,s0,652
    2d68:	02002025 	move	a0,s0
    2d6c:	ae0d0038 	sw	t5,56(s0)
    2d70:	8d6c0004 	lw	t4,4(t3)
    2d74:	ae0c003c 	sw	t4,60(s0)
    2d78:	c612003c 	lwc1	$f18,60(s0)
    2d7c:	8d6d0008 	lw	t5,8(t3)
    2d80:	46109180 	add.s	$f6,$f18,$f16
    2d84:	ae0d0040 	sw	t5,64(s0)
    2d88:	e606003c 	swc1	$f6,60(s0)
    2d8c:	0c000000 	jal	0 <func_8094F2C0>
    2d90:	afa50040 	sw	a1,64(sp)
    2d94:	8fa4005c 	lw	a0,92(sp)
    2d98:	3c010001 	lui	at,0x1
    2d9c:	34211e60 	ori	at,at,0x1e60
    2da0:	00812821 	addu	a1,a0,at
    2da4:	afa5003c 	sw	a1,60(sp)
    2da8:	0c000000 	jal	0 <func_8094F2C0>
    2dac:	8fa60040 	lw	a2,64(sp)
    2db0:	92030114 	lbu	v1,276(s0)
    2db4:	8fa4005c 	lw	a0,92(sp)
    2db8:	8fa5003c 	lw	a1,60(sp)
    2dbc:	14600004 	bnez	v1,2dd0 <func_80951C04+0x48c>
    2dc0:	00000000 	nop
    2dc4:	0c000000 	jal	0 <func_8094F2C0>
    2dc8:	8fa60040 	lw	a2,64(sp)
    2dcc:	92030114 	lbu	v1,276(s0)
    2dd0:	10600005 	beqz	v1,2de8 <func_80951C04+0x4a4>
    2dd4:	8fa4005c 	lw	a0,92(sp)
    2dd8:	960f0112 	lhu	t7,274(s0)
    2ddc:	31f94000 	andi	t9,t7,0x4000
    2de0:	57200005 	bnezl	t9,2df8 <func_80951C04+0x4b4>
    2de4:	860901f8 	lh	t1,504(s0)
    2de8:	8fa5003c 	lw	a1,60(sp)
    2dec:	0c000000 	jal	0 <func_8094F2C0>
    2df0:	8fa60040 	lw	a2,64(sp)
    2df4:	860901f8 	lh	t1,504(s0)
    2df8:	3c010000 	lui	at,0x0
    2dfc:	c42a0000 	lwc1	$f10,0(at)
    2e00:	44892000 	mtc1	t1,$f4
    2e04:	3c013f80 	lui	at,0x3f80
    2e08:	44818000 	mtc1	at,$f16
    2e0c:	46802220 	cvt.s.w	$f8,$f4
    2e10:	260400e4 	addiu	a0,s0,228
    2e14:	2405313c 	li	a1,12604
    2e18:	460a4482 	mul.s	$f18,$f8,$f10
    2e1c:	46109180 	add.s	$f6,$f18,$f16
    2e20:	44063000 	mfc1	a2,$f6
    2e24:	0c000000 	jal	0 <func_8094F2C0>
    2e28:	00000000 	nop
    2e2c:	8fbf0034 	lw	ra,52(sp)
    2e30:	8fb00030 	lw	s0,48(sp)
    2e34:	27bd0058 	addiu	sp,sp,88
    2e38:	03e00008 	jr	ra
    2e3c:	00000000 	nop

00002e40 <func_80952100>:
    2e40:	44802000 	mtc1	zero,$f4
    2e44:	27bdffe8 	addiu	sp,sp,-24
    2e48:	afbf0014 	sw	ra,20(sp)
    2e4c:	240e0010 	li	t6,16
    2e50:	ac8e02ac 	sw	t6,684(a0)
    2e54:	3c010000 	lui	at,0x0
    2e58:	3c050000 	lui	a1,0x0
    2e5c:	e4840068 	swc1	$f4,104(a0)
    2e60:	a0200000 	sb	zero,0(at)
    2e64:	0c000000 	jal	0 <func_8094F2C0>
    2e68:	24a50000 	addiu	a1,a1,0
    2e6c:	8fbf0014 	lw	ra,20(sp)
    2e70:	27bd0018 	addiu	sp,sp,24
    2e74:	03e00008 	jr	ra
    2e78:	00000000 	nop

00002e7c <func_8095213C>:
    2e7c:	27bdff90 	addiu	sp,sp,-112
    2e80:	afb30044 	sw	s3,68(sp)
    2e84:	00809825 	move	s3,a0
    2e88:	afb40048 	sw	s4,72(sp)
    2e8c:	afb20040 	sw	s2,64(sp)
    2e90:	afbf004c 	sw	ra,76(sp)
    2e94:	afb1003c 	sw	s1,60(sp)
    2e98:	afb00038 	sw	s0,56(sp)
    2e9c:	00a0a025 	move	s4,a1
    2ea0:	8cb11c44 	lw	s1,7236(a1)
    2ea4:	26720008 	addiu	s2,s3,8
    2ea8:	24840024 	addiu	a0,a0,36
    2eac:	afa40058 	sw	a0,88(sp)
    2eb0:	0c000000 	jal	0 <func_8094F2C0>
    2eb4:	02402825 	move	a1,s2
    2eb8:	a7a20062 	sh	v0,98(sp)
    2ebc:	866e01b0 	lh	t6,432(s3)
    2ec0:	25cf0ce4 	addiu	t7,t6,3300
    2ec4:	a66f01b0 	sh	t7,432(s3)
    2ec8:	0c000000 	jal	0 <func_8094F2C0>
    2ecc:	866401b0 	lh	a0,432(s3)
    2ed0:	3c014248 	lui	at,0x4248
    2ed4:	44812000 	mtc1	at,$f4
    2ed8:	9262029c 	lbu	v0,668(s3)
    2edc:	46040182 	mul.s	$f6,$f0,$f4
    2ee0:	304b0002 	andi	t3,v0,0x2
    2ee4:	4600320d 	trunc.w.s	$f8,$f6
    2ee8:	44094000 	mfc1	t1,$f8
    2eec:	00000000 	nop
    2ef0:	252a0096 	addiu	t2,t1,150
    2ef4:	1160001a 	beqz	t3,2f60 <func_8095213C+0xe4>
    2ef8:	a66a01ae 	sh	t2,430(s3)
    2efc:	8e6d0290 	lw	t5,656(s3)
    2f00:	304cfffd 	andi	t4,v0,0xfffd
    2f04:	a26c029c 	sb	t4,668(s3)
    2f08:	162d0015 	bne	s1,t5,2f60 <func_8095213C+0xe4>
    2f0c:	3c014100 	lui	at,0x4100
    2f10:	44810000 	mtc1	at,$f0
    2f14:	8667008a 	lh	a3,138(s3)
    2f18:	02802025 	move	a0,s4
    2f1c:	44060000 	mfc1	a2,$f0
    2f20:	02602825 	move	a1,s3
    2f24:	0c000000 	jal	0 <func_8094F2C0>
    2f28:	e7a00010 	swc1	$f0,16(sp)
    2f2c:	3c010000 	lui	at,0x0
    2f30:	0c000000 	jal	0 <func_8094F2C0>
    2f34:	c42c0000 	lwc1	$f12,0(at)
    2f38:	4600028d 	trunc.w.s	$f10,$f0
    2f3c:	866e0032 	lh	t6,50(s3)
    2f40:	34018000 	li	at,0x8000
    2f44:	02202025 	move	a0,s1
    2f48:	44085000 	mfc1	t0,$f10
    2f4c:	2405083e 	li	a1,2110
    2f50:	01c84821 	addu	t1,t6,t0
    2f54:	01215021 	addu	t2,t1,at
    2f58:	0c000000 	jal	0 <func_8094F2C0>
    2f5c:	a66a0032 	sh	t2,50(s3)
    2f60:	926b029d 	lbu	t3,669(s3)
    2f64:	316c0002 	andi	t4,t3,0x2
    2f68:	11800019 	beqz	t4,2fd0 <func_8095213C+0x154>
    2f6c:	00000000 	nop
    2f70:	44808000 	mtc1	zero,$f16
    2f74:	240d000c 	li	t5,12
    2f78:	02602025 	move	a0,s3
    2f7c:	e6700164 	swc1	$f16,356(s3)
    2f80:	afad0010 	sw	t5,16(sp)
    2f84:	00002825 	move	a1,zero
    2f88:	240600ff 	li	a2,255
    2f8c:	0c000000 	jal	0 <func_8094F2C0>
    2f90:	00003825 	move	a3,zero
    2f94:	02602025 	move	a0,s3
    2f98:	0c000000 	jal	0 <func_8094F2C0>
    2f9c:	2405393e 	li	a1,14654
    2fa0:	3c030000 	lui	v1,0x0
    2fa4:	24630000 	addiu	v1,v1,0
    2fa8:	240f0001 	li	t7,1
    2fac:	a06f0000 	sb	t7,0(v1)
    2fb0:	8e790004 	lw	t9,4(s3)
    2fb4:	2401fffe 	li	at,-2
    2fb8:	24180083 	li	t8,131
    2fbc:	03217024 	and	t6,t9,at
    2fc0:	ae780198 	sw	t8,408(s3)
    2fc4:	ae6e0004 	sw	t6,4(s3)
    2fc8:	1000003e 	b	30c4 <func_8095213C+0x248>
    2fcc:	267000bc 	addiu	s0,s3,188
    2fd0:	3c030000 	lui	v1,0x0
    2fd4:	24630000 	addiu	v1,v1,0
    2fd8:	a0600000 	sb	zero,0(v1)
    2fdc:	8e620198 	lw	v0,408(s3)
    2fe0:	266401f8 	addiu	a0,s3,504
    2fe4:	00002825 	move	a1,zero
    2fe8:	1440001c 	bnez	v0,305c <func_8095213C+0x1e0>
    2fec:	244bffff 	addiu	t3,v0,-1
    2ff0:	266401f8 	addiu	a0,s3,504
    2ff4:	24050fa0 	li	a1,4000
    2ff8:	24060001 	li	a2,1
    2ffc:	2407012c 	li	a3,300
    3000:	0c000000 	jal	0 <func_8094F2C0>
    3004:	afa00010 	sw	zero,16(sp)
    3008:	1440000f 	bnez	v0,3048 <func_8095213C+0x1cc>
    300c:	26640068 	addiu	a0,s3,104
    3010:	44809000 	mtc1	zero,$f18
    3014:	c6640068 	lwc1	$f4,104(s3)
    3018:	44803000 	mtc1	zero,$f6
    301c:	3c054040 	lui	a1,0x4040
    3020:	46049032 	c.eq.s	$f18,$f4
    3024:	3c063f80 	lui	a2,0x3f80
    3028:	3c073e19 	lui	a3,0x3e19
    302c:	45020004 	bc1fl	3040 <func_8095213C+0x1c4>
    3030:	34e7999a 	ori	a3,a3,0x999a
    3034:	8668008a 	lh	t0,138(s3)
    3038:	a6680032 	sh	t0,50(s3)
    303c:	34e7999a 	ori	a3,a3,0x999a
    3040:	0c000000 	jal	0 <func_8094F2C0>
    3044:	e7a60010 	swc1	$f6,16(sp)
    3048:	8e690004 	lw	t1,4(s3)
    304c:	267000bc 	addiu	s0,s3,188
    3050:	352a0001 	ori	t2,t1,0x1
    3054:	1000001b 	b	30c4 <func_8095213C+0x248>
    3058:	ae6a0004 	sw	t2,4(s3)
    305c:	29610023 	slti	at,t3,35
    3060:	10200003 	beqz	at,3070 <func_8095213C+0x1f4>
    3064:	ae6b0198 	sw	t3,408(s3)
    3068:	240d0080 	li	t5,128
    306c:	a06d0000 	sb	t5,0(v1)
    3070:	24060001 	li	a2,1
    3074:	2407012c 	li	a3,300
    3078:	0c000000 	jal	0 <func_8094F2C0>
    307c:	afa00010 	sw	zero,16(sp)
    3080:	44804000 	mtc1	zero,$f8
    3084:	3c073e4c 	lui	a3,0x3e4c
    3088:	34e7cccd 	ori	a3,a3,0xcccd
    308c:	26640068 	addiu	a0,s3,104
    3090:	24050000 	li	a1,0
    3094:	3c063f80 	lui	a2,0x3f80
    3098:	0c000000 	jal	0 <func_8094F2C0>
    309c:	e7a80010 	swc1	$f8,16(sp)
    30a0:	44805000 	mtc1	zero,$f10
    30a4:	267000bc 	addiu	s0,s3,188
    30a8:	3c05c4b1 	lui	a1,0xc4b1
    30ac:	34a58000 	ori	a1,a1,0x8000
    30b0:	02002025 	move	a0,s0
    30b4:	3c063f80 	lui	a2,0x3f80
    30b8:	3c0741f0 	lui	a3,0x41f0
    30bc:	0c000000 	jal	0 <func_8094F2C0>
    30c0:	e7aa0010 	swc1	$f10,16(sp)
    30c4:	8fa40058 	lw	a0,88(sp)
    30c8:	0c000000 	jal	0 <func_8094F2C0>
    30cc:	02402825 	move	a1,s2
    30d0:	3c0143c8 	lui	at,0x43c8
    30d4:	44818000 	mtc1	at,$f16
    30d8:	00000000 	nop
    30dc:	4600803e 	c.le.s	$f16,$f0
    30e0:	00000000 	nop
    30e4:	4500000a 	bc1f	3110 <func_8095213C+0x294>
    30e8:	26640032 	addiu	a0,s3,50
    30ec:	87a50062 	lh	a1,98(sp)
    30f0:	24060001 	li	a2,1
    30f4:	240703e8 	li	a3,1000
    30f8:	0c000000 	jal	0 <func_8094F2C0>
    30fc:	afa00010 	sw	zero,16(sp)
    3100:	3c010001 	lui	at,0x1
    3104:	02817821 	addu	t7,s4,at
    3108:	10000025 	b	31a0 <func_8095213C+0x324>
    310c:	afaf0054 	sw	t7,84(sp)
    3110:	82380a78 	lb	t8,2680(s1)
    3114:	3c010001 	lui	at,0x1
    3118:	26640032 	addiu	a0,s3,50
    311c:	1300000e 	beqz	t8,3158 <func_8095213C+0x2dc>
    3120:	02817021 	addu	t6,s4,at
    3124:	8665008a 	lh	a1,138(s3)
    3128:	34018000 	li	at,0x8000
    312c:	afa00010 	sw	zero,16(sp)
    3130:	00a12821 	addu	a1,a1,at
    3134:	00052c00 	sll	a1,a1,0x10
    3138:	00052c03 	sra	a1,a1,0x10
    313c:	24060001 	li	a2,1
    3140:	0c000000 	jal	0 <func_8094F2C0>
    3144:	2407012c 	li	a3,300
    3148:	3c010001 	lui	at,0x1
    314c:	0281c821 	addu	t9,s4,at
    3150:	10000013 	b	31a0 <func_8095213C+0x324>
    3154:	afb90054 	sw	t9,84(sp)
    3158:	afae0054 	sw	t6,84(sp)
    315c:	8dc91de4 	lw	t1,7652(t6)
    3160:	26640032 	addiu	a0,s3,50
    3164:	87a50062 	lh	a1,98(sp)
    3168:	312a0080 	andi	t2,t1,0x80
    316c:	15400009 	bnez	t2,3194 <func_8095213C+0x318>
    3170:	24060001 	li	a2,1
    3174:	8665008a 	lh	a1,138(s3)
    3178:	afa00010 	sw	zero,16(sp)
    317c:	26640032 	addiu	a0,s3,50
    3180:	24060001 	li	a2,1
    3184:	0c000000 	jal	0 <func_8094F2C0>
    3188:	2407012c 	li	a3,300
    318c:	10000004 	b	31a0 <func_8095213C+0x324>
    3190:	00000000 	nop
    3194:	24070258 	li	a3,600
    3198:	0c000000 	jal	0 <func_8094F2C0>
    319c:	afa00010 	sw	zero,16(sp)
    31a0:	3c0b0000 	lui	t3,0x0
    31a4:	916b0000 	lbu	t3,0(t3)
    31a8:	11600004 	beqz	t3,31bc <func_8095213C+0x340>
    31ac:	00000000 	nop
    31b0:	44809000 	mtc1	zero,$f18
    31b4:	00000000 	nop
    31b8:	e6720068 	swc1	$f18,104(s3)
    31bc:	0c000000 	jal	0 <func_8094F2C0>
    31c0:	02602025 	move	a0,s3
    31c4:	0c000000 	jal	0 <func_8094F2C0>
    31c8:	2664014c 	addiu	a0,s3,332
    31cc:	10400008 	beqz	v0,31f0 <func_8095213C+0x374>
    31d0:	3c0c0000 	lui	t4,0x0
    31d4:	918c0000 	lbu	t4,0(t4)
    31d8:	02602025 	move	a0,s3
    31dc:	2981000f 	slti	at,t4,15
    31e0:	54200004 	bnezl	at,31f4 <func_8095213C+0x378>
    31e4:	866d00b6 	lh	t5,182(s3)
    31e8:	0c000000 	jal	0 <func_8094F2C0>
    31ec:	02802825 	move	a1,s4
    31f0:	866d00b6 	lh	t5,182(s3)
    31f4:	866f01f8 	lh	t7,504(s3)
    31f8:	3c190000 	lui	t9,0x0
    31fc:	24110009 	li	s1,9
    3200:	01afc021 	addu	t8,t5,t7
    3204:	a67800b6 	sh	t8,182(s3)
    3208:	93390000 	lbu	t9,0(t9)
    320c:	5639000b 	bnel	s1,t9,323c <func_8095213C+0x3c0>
    3210:	44803000 	mtc1	zero,$f6
    3214:	44802000 	mtc1	zero,$f4
    3218:	02002025 	move	a0,s0
    321c:	3c05c3e1 	lui	a1,0xc3e1
    3220:	3c063f80 	lui	a2,0x3f80
    3224:	3c074170 	lui	a3,0x4170
    3228:	0c000000 	jal	0 <func_8094F2C0>
    322c:	e7a40010 	swc1	$f4,16(sp)
    3230:	1000000a 	b	325c <func_8095213C+0x3e0>
    3234:	3c01c3fa 	lui	at,0xc3fa
    3238:	44803000 	mtc1	zero,$f6
    323c:	3c05c44a 	lui	a1,0xc44a
    3240:	34a58000 	ori	a1,a1,0x8000
    3244:	02002025 	move	a0,s0
    3248:	3c063f80 	lui	a2,0x3f80
    324c:	3c074170 	lui	a3,0x4170
    3250:	0c000000 	jal	0 <func_8094F2C0>
    3254:	e7a60010 	swc1	$f6,16(sp)
    3258:	3c01c3fa 	lui	at,0xc3fa
    325c:	44815000 	mtc1	at,$f10
    3260:	c66800bc 	lwc1	$f8,188(s3)
    3264:	4608503e 	c.le.s	$f10,$f8
    3268:	00000000 	nop
    326c:	45000032 	bc1f	3338 <func_8095213C+0x4bc>
    3270:	3c0e0000 	lui	t6,0x0
    3274:	91ce0000 	lbu	t6,0(t6)
    3278:	2412000f 	li	s2,15
    327c:	26841c24 	addiu	a0,s4,7204
    3280:	162e002d 	bne	s1,t6,3338 <func_8095213C+0x4bc>
    3284:	3c100000 	lui	s0,0x0
    3288:	3c110000 	lui	s1,0x0
    328c:	26310000 	addiu	s1,s1,0
    3290:	26100000 	addiu	s0,s0,0
    3294:	afa40050 	sw	a0,80(sp)
    3298:	c6100000 	lwc1	$f16,0(s0)
    329c:	c6720024 	lwc1	$f18,36(s3)
    32a0:	c6060004 	lwc1	$f6,4(s0)
    32a4:	86280000 	lh	t0,0(s1)
    32a8:	46128100 	add.s	$f4,$f16,$f18
    32ac:	c6100008 	lwc1	$f16,8(s0)
    32b0:	862b0002 	lh	t3,2(s1)
    32b4:	862f0004 	lh	t7,4(s1)
    32b8:	e7a40010 	swc1	$f4,16(sp)
    32bc:	c6680028 	lwc1	$f8,40(s3)
    32c0:	8fa40050 	lw	a0,80(sp)
    32c4:	02602825 	move	a1,s3
    32c8:	46083280 	add.s	$f10,$f6,$f8
    32cc:	02803025 	move	a2,s4
    32d0:	240700ba 	li	a3,186
    32d4:	e7aa0014 	swc1	$f10,20(sp)
    32d8:	c672002c 	lwc1	$f18,44(s3)
    32dc:	46128100 	add.s	$f4,$f16,$f18
    32e0:	e7a40018 	swc1	$f4,24(sp)
    32e4:	86690030 	lh	t1,48(s3)
    32e8:	01095021 	addu	t2,t0,t1
    32ec:	afaa001c 	sw	t2,28(sp)
    32f0:	866c0032 	lh	t4,50(s3)
    32f4:	016c6821 	addu	t5,t3,t4
    32f8:	afad0020 	sw	t5,32(sp)
    32fc:	86780034 	lh	t8,52(s3)
    3300:	afb20028 	sw	s2,40(sp)
    3304:	01f8c821 	addu	t9,t7,t8
    3308:	0c000000 	jal	0 <func_8094F2C0>
    330c:	afb90024 	sw	t9,36(sp)
    3310:	2652ffff 	addiu	s2,s2,-1
    3314:	2401000a 	li	at,10
    3318:	2610fff4 	addiu	s0,s0,-12
    331c:	1641ffde 	bne	s2,at,3298 <func_8095213C+0x41c>
    3320:	2631fffa 	addiu	s1,s1,-6
    3324:	3c0e0000 	lui	t6,0x0
    3328:	91ce0000 	lbu	t6,0(t6)
    332c:	3c010000 	lui	at,0x0
    3330:	25c80001 	addiu	t0,t6,1
    3334:	a0280000 	sb	t0,0(at)
    3338:	866901ac 	lh	t1,428(s3)
    333c:	252a0c31 	addiu	t2,t1,3121
    3340:	a66a01ac 	sh	t2,428(s3)
    3344:	0c000000 	jal	0 <func_8094F2C0>
    3348:	866401ac 	lh	a0,428(s3)
    334c:	3c010000 	lui	at,0x0
    3350:	c4260000 	lwc1	$f6,0(at)
    3354:	3c013f80 	lui	at,0x3f80
    3358:	44815000 	mtc1	at,$f10
    335c:	46060202 	mul.s	$f8,$f0,$f6
    3360:	866401ac 	lh	a0,428(s3)
    3364:	460a4400 	add.s	$f16,$f8,$f10
    3368:	0c000000 	jal	0 <func_8094F2C0>
    336c:	e67001a0 	swc1	$f16,416(s3)
    3370:	3c010000 	lui	at,0x0
    3374:	c4320000 	lwc1	$f18,0(at)
    3378:	3c013f80 	lui	at,0x3f80
    337c:	44813000 	mtc1	at,$f6
    3380:	46120102 	mul.s	$f4,$f0,$f18
    3384:	3c014120 	lui	at,0x4120
    3388:	02802025 	move	a0,s4
    338c:	02602825 	move	a1,s3
    3390:	24060001 	li	a2,1
    3394:	24070064 	li	a3,100
    3398:	240f0005 	li	t7,5
    339c:	46062200 	add.s	$f8,$f4,$f6
    33a0:	e66801a4 	swc1	$f8,420(s3)
    33a4:	8fab0054 	lw	t3,84(sp)
    33a8:	8d6c1de4 	lw	t4,7652(t3)
    33ac:	318d0003 	andi	t5,t4,0x3
    33b0:	55a0000b 	bnezl	t5,33e0 <func_8095213C+0x564>
    33b4:	8fb80058 	lw	t8,88(sp)
    33b8:	44810000 	mtc1	at,$f0
    33bc:	3c014248 	lui	at,0x4248
    33c0:	44815000 	mtc1	at,$f10
    33c4:	afaf0018 	sw	t7,24(sp)
    33c8:	afa00020 	sw	zero,32(sp)
    33cc:	e7a00014 	swc1	$f0,20(sp)
    33d0:	e7a0001c 	swc1	$f0,28(sp)
    33d4:	0c000000 	jal	0 <func_8094F2C0>
    33d8:	e7aa0010 	swc1	$f10,16(sp)
    33dc:	8fb80058 	lw	t8,88(sp)
    33e0:	3c0141a0 	lui	at,0x41a0
    33e4:	44819000 	mtc1	at,$f18
    33e8:	8f0e0000 	lw	t6,0(t8)
    33ec:	ae6e0038 	sw	t6,56(s3)
    33f0:	8f190004 	lw	t9,4(t8)
    33f4:	ae79003c 	sw	t9,60(s3)
    33f8:	c670003c 	lwc1	$f16,60(s3)
    33fc:	8f0e0008 	lw	t6,8(t8)
    3400:	46128100 	add.s	$f4,$f16,$f18
    3404:	ae6e0040 	sw	t6,64(s3)
    3408:	0c000000 	jal	0 <func_8094F2C0>
    340c:	e664003c 	swc1	$f4,60(s3)
    3410:	3c010000 	lui	at,0x0
    3414:	c4260000 	lwc1	$f6,0(at)
    3418:	02602025 	move	a0,s3
    341c:	4606003c 	c.lt.s	$f0,$f6
    3420:	00000000 	nop
    3424:	45020004 	bc1fl	3438 <func_8095213C+0x5bc>
    3428:	2670028c 	addiu	s0,s3,652
    342c:	0c000000 	jal	0 <func_8094F2C0>
    3430:	24053143 	li	a1,12611
    3434:	2670028c 	addiu	s0,s3,652
    3438:	02002825 	move	a1,s0
    343c:	0c000000 	jal	0 <func_8094F2C0>
    3440:	02602025 	move	a0,s3
    3444:	3c010001 	lui	at,0x1
    3448:	34211e60 	ori	at,at,0x1e60
    344c:	02818821 	addu	s1,s4,at
    3450:	02202825 	move	a1,s1
    3454:	02802025 	move	a0,s4
    3458:	0c000000 	jal	0 <func_8094F2C0>
    345c:	02003025 	move	a2,s0
    3460:	02802025 	move	a0,s4
    3464:	02202825 	move	a1,s1
    3468:	0c000000 	jal	0 <func_8094F2C0>
    346c:	02003025 	move	a2,s0
    3470:	8e680198 	lw	t0,408(s3)
    3474:	02802025 	move	a0,s4
    3478:	02202825 	move	a1,s1
    347c:	55000004 	bnezl	t0,3490 <func_8095213C+0x614>
    3480:	866901f8 	lh	t1,504(s3)
    3484:	0c000000 	jal	0 <func_8094F2C0>
    3488:	02003025 	move	a2,s0
    348c:	866901f8 	lh	t1,504(s3)
    3490:	3c010000 	lui	at,0x0
    3494:	c4300000 	lwc1	$f16,0(at)
    3498:	44894000 	mtc1	t1,$f8
    349c:	3c013f80 	lui	at,0x3f80
    34a0:	44812000 	mtc1	at,$f4
    34a4:	468042a0 	cvt.s.w	$f10,$f8
    34a8:	266400e4 	addiu	a0,s3,228
    34ac:	2405313c 	li	a1,12604
    34b0:	46105482 	mul.s	$f18,$f10,$f16
    34b4:	46049180 	add.s	$f6,$f18,$f4
    34b8:	44063000 	mfc1	a2,$f6
    34bc:	0c000000 	jal	0 <func_8094F2C0>
    34c0:	00000000 	nop
    34c4:	8fbf004c 	lw	ra,76(sp)
    34c8:	8fb00038 	lw	s0,56(sp)
    34cc:	8fb1003c 	lw	s1,60(sp)
    34d0:	8fb20040 	lw	s2,64(sp)
    34d4:	8fb30044 	lw	s3,68(sp)
    34d8:	8fb40048 	lw	s4,72(sp)
    34dc:	03e00008 	jr	ra
    34e0:	27bd0070 	addiu	sp,sp,112

000034e4 <func_809527A4>:
    34e4:	27bdffe8 	addiu	sp,sp,-24
    34e8:	afbf0014 	sw	ra,20(sp)
    34ec:	afa5001c 	sw	a1,28(sp)
    34f0:	8c8e0004 	lw	t6,4(a0)
    34f4:	a48001ac 	sh	zero,428(a0)
    34f8:	849801ac 	lh	t8,428(a0)
    34fc:	8499008a 	lh	t9,138(a0)
    3500:	35cf0001 	ori	t7,t6,0x1
    3504:	ac8f0004 	sw	t7,4(a0)
    3508:	a49801f8 	sh	t8,504(a0)
    350c:	a4990032 	sh	t9,50(a0)
    3510:	0c000000 	jal	0 <func_8094F2C0>
    3514:	afa40018 	sw	a0,24(sp)
    3518:	3c014316 	lui	at,0x4316
    351c:	44812000 	mtc1	at,$f4
    3520:	8fa40018 	lw	a0,24(sp)
    3524:	3c010000 	lui	at,0x0
    3528:	46040182 	mul.s	$f6,$f0,$f4
    352c:	240d0001 	li	t5,1
    3530:	240e0004 	li	t6,4
    3534:	44805000 	mtc1	zero,$f10
    3538:	3c050000 	lui	a1,0x0
    353c:	240fffe2 	li	t7,-30
    3540:	24180037 	li	t8,55
    3544:	4600320d 	trunc.w.s	$f8,$f6
    3548:	24a50000 	addiu	a1,a1,0
    354c:	440b4000 	mfc1	t3,$f8
    3550:	00000000 	nop
    3554:	256c012c 	addiu	t4,t3,300
    3558:	a48c019c 	sh	t4,412(a0)
    355c:	a02d0000 	sb	t5,0(at)
    3560:	3c010000 	lui	at,0x0
    3564:	a02e0000 	sb	t6,0(at)
    3568:	c49000bc 	lwc1	$f16,188(a0)
    356c:	46105032 	c.eq.s	$f10,$f16
    3570:	00000000 	nop
    3574:	45010002 	bc1t	3580 <func_809527A4+0x9c>
    3578:	00000000 	nop
    357c:	ac8f0198 	sw	t7,408(a0)
    3580:	0c000000 	jal	0 <func_8094F2C0>
    3584:	a49802cc 	sh	t8,716(a0)
    3588:	8fbf0014 	lw	ra,20(sp)
    358c:	27bd0018 	addiu	sp,sp,24
    3590:	03e00008 	jr	ra
    3594:	00000000 	nop

00003598 <func_80952858>:
    3598:	3c180000 	lui	t8,0x0
    359c:	93180000 	lbu	t8,0(t8)
    35a0:	3c01447a 	lui	at,0x447a
    35a4:	44814000 	mtc1	at,$f8
    35a8:	2719fff2 	addiu	t9,t8,-14
    35ac:	44992000 	mtc1	t9,$f4
    35b0:	27bdffa8 	addiu	sp,sp,-88
    35b4:	afbf0034 	sw	ra,52(sp)
    35b8:	468021a0 	cvt.s.w	$f6,$f4
    35bc:	afb00030 	sw	s0,48(sp)
    35c0:	afa5005c 	sw	a1,92(sp)
    35c4:	8caf1c44 	lw	t7,7236(a1)
    35c8:	00808025 	move	s0,a0
    35cc:	46083282 	mul.s	$f10,$f6,$f8
    35d0:	afaf0054 	sw	t7,84(sp)
    35d4:	848c01b0 	lh	t4,432(a0)
    35d8:	4600540d 	trunc.w.s	$f16,$f10
    35dc:	440b8000 	mfc1	t3,$f16
    35e0:	00000000 	nop
    35e4:	018b6821 	addu	t5,t4,t3
    35e8:	25ae0ce4 	addiu	t6,t5,3300
    35ec:	a48e01b0 	sh	t6,432(a0)
    35f0:	0c000000 	jal	0 <func_8094F2C0>
    35f4:	848401b0 	lh	a0,432(a0)
    35f8:	3c014248 	lui	at,0x4248
    35fc:	44819000 	mtc1	at,$f18
    3600:	9202029c 	lbu	v0,668(s0)
    3604:	46120102 	mul.s	$f4,$f0,$f18
    3608:	304a0002 	andi	t2,v0,0x2
    360c:	304cfffd 	andi	t4,v0,0xfffd
    3610:	4600218d 	trunc.w.s	$f6,$f4
    3614:	44083000 	mfc1	t0,$f6
    3618:	00000000 	nop
    361c:	25090096 	addiu	t1,t0,150
    3620:	1140001c 	beqz	t2,3694 <func_80952858+0xfc>
    3624:	a60901ae 	sh	t1,430(s0)
    3628:	a20c029c 	sb	t4,668(s0)
    362c:	8fab0054 	lw	t3,84(sp)
    3630:	8e0d0290 	lw	t5,656(s0)
    3634:	3c014100 	lui	at,0x4100
    3638:	8fa4005c 	lw	a0,92(sp)
    363c:	156d0015 	bne	t3,t5,3694 <func_80952858+0xfc>
    3640:	00000000 	nop
    3644:	44810000 	mtc1	at,$f0
    3648:	8607008a 	lh	a3,138(s0)
    364c:	02002825 	move	a1,s0
    3650:	44060000 	mfc1	a2,$f0
    3654:	0c000000 	jal	0 <func_8094F2C0>
    3658:	e7a00010 	swc1	$f0,16(sp)
    365c:	3c010000 	lui	at,0x0
    3660:	0c000000 	jal	0 <func_8094F2C0>
    3664:	c42c0000 	lwc1	$f12,0(at)
    3668:	4600020d 	trunc.w.s	$f8,$f0
    366c:	860e0032 	lh	t6,50(s0)
    3670:	34018000 	li	at,0x8000
    3674:	2405083e 	li	a1,2110
    3678:	44084000 	mfc1	t0,$f8
    367c:	00000000 	nop
    3680:	01c84821 	addu	t1,t6,t0
    3684:	01215021 	addu	t2,t1,at
    3688:	a60a0032 	sh	t2,50(s0)
    368c:	0c000000 	jal	0 <func_8094F2C0>
    3690:	8fa40054 	lw	a0,84(sp)
    3694:	0c000000 	jal	0 <func_8094F2C0>
    3698:	00000000 	nop
    369c:	3c010000 	lui	at,0x0
    36a0:	c42a0000 	lwc1	$f10,0(at)
    36a4:	02002025 	move	a0,s0
    36a8:	460a003c 	c.lt.s	$f0,$f10
    36ac:	00000000 	nop
    36b0:	45020004 	bc1fl	36c4 <func_80952858+0x12c>
    36b4:	9202029d 	lbu	v0,669(s0)
    36b8:	0c000000 	jal	0 <func_8094F2C0>
    36bc:	24053143 	li	a1,12611
    36c0:	9202029d 	lbu	v0,669(s0)
    36c4:	304c0002 	andi	t4,v0,0x2
    36c8:	1180006f 	beqz	t4,3888 <func_80952858+0x2f0>
    36cc:	304bfffd 	andi	t3,v0,0xfffd
    36d0:	8e0d0198 	lw	t5,408(s0)
    36d4:	44808000 	mtc1	zero,$f16
    36d8:	a20b029d 	sb	t3,669(s0)
    36dc:	05a0005b 	bltz	t5,384c <func_80952858+0x2b4>
    36e0:	e6100164 	swc1	$f16,356(s0)
    36e4:	820f0196 	lb	t7,406(s0)
    36e8:	15e00081 	bnez	t7,38f0 <func_80952858+0x358>
    36ec:	00000000 	nop
    36f0:	921900b1 	lbu	t9,177(s0)
    36f4:	24180008 	li	t8,8
    36f8:	24010001 	li	at,1
    36fc:	1321003a 	beq	t9,at,37e8 <func_80952858+0x250>
    3700:	a2180196 	sb	t8,406(s0)
    3704:	860e008a 	lh	t6,138(s0)
    3708:	02002025 	move	a0,s0
    370c:	2405393d 	li	a1,14653
    3710:	0c000000 	jal	0 <func_8094F2C0>
    3714:	a60e0032 	sh	t6,50(s0)
    3718:	2408000c 	li	t0,12
    371c:	afa80010 	sw	t0,16(sp)
    3720:	02002025 	move	a0,s0
    3724:	24054000 	li	a1,16384
    3728:	240600ff 	li	a2,255
    372c:	0c000000 	jal	0 <func_8094F2C0>
    3730:	00003825 	move	a3,zero
    3734:	3c020000 	lui	v0,0x0
    3738:	24420000 	addiu	v0,v0,0
    373c:	80490000 	lb	t1,0(v0)
    3740:	920a00b0 	lbu	t2,176(s0)
    3744:	3c030000 	lui	v1,0x0
    3748:	24630000 	addiu	v1,v1,0
    374c:	012a6023 	subu	t4,t1,t2
    3750:	a04c0000 	sb	t4,0(v0)
    3754:	804b0000 	lb	t3,0(v0)
    3758:	1d600065 	bgtz	t3,38f0 <func_80952858+0x358>
    375c:	00000000 	nop
    3760:	ae000198 	sw	zero,408(s0)
    3764:	906d0000 	lbu	t5,0(v1)
    3768:	80580000 	lb	t8,0(v0)
    376c:	02002025 	move	a0,s0
    3770:	25af0001 	addiu	t7,t5,1
    3774:	31ee00ff 	andi	t6,t7,0xff
    3778:	29c10012 	slti	at,t6,18
    377c:	27190003 	addiu	t9,t8,3
    3780:	a06f0000 	sb	t7,0(v1)
    3784:	14200008 	bnez	at,37a8 <func_80952858+0x210>
    3788:	a0590000 	sb	t9,0(v0)
    378c:	0c000000 	jal	0 <func_8094F2C0>
    3790:	8fa5005c 	lw	a1,92(sp)
    3794:	8fa4005c 	lw	a0,92(sp)
    3798:	0c000000 	jal	0 <func_8094F2C0>
    379c:	02002825 	move	a1,s0
    37a0:	1000023a 	b	408c <func_80952858+0xaf4>
    37a4:	8fbf0034 	lw	ra,52(sp)
    37a8:	3c01c120 	lui	at,0xc120
    37ac:	44819000 	mtc1	at,$f18
    37b0:	0c000000 	jal	0 <func_8094F2C0>
    37b4:	e6120068 	swc1	$f18,104(s0)
    37b8:	3c014316 	lui	at,0x4316
    37bc:	44812000 	mtc1	at,$f4
    37c0:	240bff56 	li	t3,-170
    37c4:	46040182 	mul.s	$f6,$f0,$f4
    37c8:	4600320d 	trunc.w.s	$f8,$f6
    37cc:	44094000 	mfc1	t1,$f8
    37d0:	00000000 	nop
    37d4:	00095400 	sll	t2,t1,0x10
    37d8:	000a6403 	sra	t4,t2,0x10
    37dc:	016c6823 	subu	t5,t3,t4
    37e0:	10000043 	b	38f0 <func_80952858+0x358>
    37e4:	ae0d0198 	sw	t5,408(s0)
    37e8:	3c014220 	lui	at,0x4220
    37ec:	44816000 	mtc1	at,$f12
    37f0:	0c000000 	jal	0 <func_8094F2C0>
    37f4:	00000000 	nop
    37f8:	4600028d 	trunc.w.s	$f10,$f0
    37fc:	44808000 	mtc1	zero,$f16
    3800:	a60001f8 	sh	zero,504(s0)
    3804:	240900ff 	li	t1,255
    3808:	44185000 	mfc1	t8,$f10
    380c:	e6100068 	swc1	$f16,104(s0)
    3810:	02002025 	move	a0,s0
    3814:	0018cc00 	sll	t9,t8,0x10
    3818:	00197403 	sra	t6,t9,0x10
    381c:	25c800a0 	addiu	t0,t6,160
    3820:	ae080198 	sw	t0,408(s0)
    3824:	afa90010 	sw	t1,16(sp)
    3828:	00002825 	move	a1,zero
    382c:	2406007d 	li	a2,125
    3830:	0c000000 	jal	0 <func_8094F2C0>
    3834:	00003825 	move	a3,zero
    3838:	02002025 	move	a0,s0
    383c:	0c000000 	jal	0 <func_8094F2C0>
    3840:	2405393e 	li	a1,14654
    3844:	1000002a 	b	38f0 <func_80952858+0x358>
    3848:	00000000 	nop
    384c:	8e030294 	lw	v1,660(s0)
    3850:	24010032 	li	at,50
    3854:	02002025 	move	a0,s0
    3858:	846a0000 	lh	t2,0(v1)
    385c:	15410024 	bne	t2,at,38f0 <func_80952858+0x358>
    3860:	00000000 	nop
    3864:	a06001d4 	sb	zero,468(v1)
    3868:	8fab0054 	lw	t3,84(sp)
    386c:	846c008a 	lh	t4,138(v1)
    3870:	24051808 	li	a1,6152
    3874:	ac6b01cc 	sw	t3,460(v1)
    3878:	0c000000 	jal	0 <func_8094F2C0>
    387c:	a46c0032 	sh	t4,50(v1)
    3880:	1000001b 	b	38f0 <func_80952858+0x358>
    3884:	00000000 	nop
    3888:	8602019c 	lh	v0,412(s0)
    388c:	14400015 	bnez	v0,38e4 <func_80952858+0x34c>
    3890:	00000000 	nop
    3894:	44809000 	mtc1	zero,$f18
    3898:	c60400bc 	lwc1	$f4,188(s0)
    389c:	46049032 	c.eq.s	$f18,$f4
    38a0:	00000000 	nop
    38a4:	4500000f 	bc1f	38e4 <func_80952858+0x34c>
    38a8:	00000000 	nop
    38ac:	0c000000 	jal	0 <func_8094F2C0>
    38b0:	00000000 	nop
    38b4:	3c014348 	lui	at,0x4348
    38b8:	44813000 	mtc1	at,$f6
    38bc:	240eff24 	li	t6,-220
    38c0:	46060202 	mul.s	$f8,$f0,$f6
    38c4:	4600428d 	trunc.w.s	$f10,$f8
    38c8:	440f5000 	mfc1	t7,$f10
    38cc:	00000000 	nop
    38d0:	000fc400 	sll	t8,t7,0x10
    38d4:	0018cc03 	sra	t9,t8,0x10
    38d8:	01d94023 	subu	t0,t6,t9
    38dc:	10000004 	b	38f0 <func_80952858+0x358>
    38e0:	ae080198 	sw	t0,408(s0)
    38e4:	10400002 	beqz	v0,38f0 <func_80952858+0x358>
    38e8:	2449ffff 	addiu	t1,v0,-1
    38ec:	a609019c 	sh	t1,412(s0)
    38f0:	0c000000 	jal	0 <func_8094F2C0>
    38f4:	2604014c 	addiu	a0,s0,332
    38f8:	8e0a0198 	lw	t2,408(s0)
    38fc:	15400057 	bnez	t2,3a5c <func_80952858+0x4c4>
    3900:	3c0b0000 	lui	t3,0x0
    3904:	916b0000 	lbu	t3,0(t3)
    3908:	3c0140a0 	lui	at,0x40a0
    390c:	44812000 	mtc1	at,$f4
    3910:	256cfff2 	addiu	t4,t3,-14
    3914:	448c8000 	mtc1	t4,$f16
    3918:	3c014120 	lui	at,0x4120
    391c:	44814000 	mtc1	at,$f8
    3920:	468084a0 	cvt.s.w	$f18,$f16
    3924:	44800000 	mtc1	zero,$f0
    3928:	260400bc 	addiu	a0,s0,188
    392c:	3c063f80 	lui	a2,0x3f80
    3930:	44050000 	mfc1	a1,$f0
    3934:	e7a00010 	swc1	$f0,16(sp)
    3938:	46049182 	mul.s	$f6,$f18,$f4
    393c:	46083280 	add.s	$f10,$f6,$f8
    3940:	44075000 	mfc1	a3,$f10
    3944:	0c000000 	jal	0 <func_8094F2C0>
    3948:	00000000 	nop
    394c:	3c0d0000 	lui	t5,0x0
    3950:	91ad0000 	lbu	t5,0(t5)
    3954:	3c0143fa 	lui	at,0x43fa
    3958:	44812000 	mtc1	at,$f4
    395c:	25affff2 	addiu	t7,t5,-14
    3960:	448f8000 	mtc1	t7,$f16
    3964:	260401f8 	addiu	a0,s0,504
    3968:	24060001 	li	a2,1
    396c:	468084a0 	cvt.s.w	$f18,$f16
    3970:	2407012c 	li	a3,300
    3974:	afa00010 	sw	zero,16(sp)
    3978:	46049182 	mul.s	$f6,$f18,$f4
    397c:	4600320d 	trunc.w.s	$f8,$f6
    3980:	44054000 	mfc1	a1,$f8
    3984:	00000000 	nop
    3988:	00052c00 	sll	a1,a1,0x10
    398c:	00052c03 	sra	a1,a1,0x10
    3990:	24a50fa0 	addiu	a1,a1,4000
    3994:	00052c00 	sll	a1,a1,0x10
    3998:	0c000000 	jal	0 <func_8094F2C0>
    399c:	00052c03 	sra	a1,a1,0x10
    39a0:	54400028 	bnezl	v0,3a44 <func_80952858+0x4ac>
    39a4:	240f0010 	li	t7,16
    39a8:	44805000 	mtc1	zero,$f10
    39ac:	c6100068 	lwc1	$f16,104(s0)
    39b0:	46105032 	c.eq.s	$f10,$f16
    39b4:	00000000 	nop
    39b8:	4500000e 	bc1f	39f4 <func_80952858+0x45c>
    39bc:	00000000 	nop
    39c0:	860e008a 	lh	t6,138(s0)
    39c4:	a2000114 	sb	zero,276(s0)
    39c8:	0c000000 	jal	0 <func_8094F2C0>
    39cc:	a60e0032 	sh	t6,50(s0)
    39d0:	3c014316 	lui	at,0x4316
    39d4:	44819000 	mtc1	at,$f18
    39d8:	00000000 	nop
    39dc:	46120102 	mul.s	$f4,$f0,$f18
    39e0:	4600218d 	trunc.w.s	$f6,$f4
    39e4:	440a3000 	mfc1	t2,$f6
    39e8:	00000000 	nop
    39ec:	254b012c 	addiu	t3,t2,300
    39f0:	a60b019c 	sh	t3,412(s0)
    39f4:	3c0c0000 	lui	t4,0x0
    39f8:	918c0000 	lbu	t4,0(t4)
    39fc:	3c013fc0 	lui	at,0x3fc0
    3a00:	44818000 	mtc1	at,$f16
    3a04:	258dfff2 	addiu	t5,t4,-14
    3a08:	448d4000 	mtc1	t5,$f8
    3a0c:	3c014080 	lui	at,0x4080
    3a10:	44812000 	mtc1	at,$f4
    3a14:	468042a0 	cvt.s.w	$f10,$f8
    3a18:	44804000 	mtc1	zero,$f8
    3a1c:	26040068 	addiu	a0,s0,104
    3a20:	3c063f80 	lui	a2,0x3f80
    3a24:	3c073e80 	lui	a3,0x3e80
    3a28:	e7a80010 	swc1	$f8,16(sp)
    3a2c:	46105482 	mul.s	$f18,$f10,$f16
    3a30:	46049180 	add.s	$f6,$f18,$f4
    3a34:	44053000 	mfc1	a1,$f6
    3a38:	0c000000 	jal	0 <func_8094F2C0>
    3a3c:	00000000 	nop
    3a40:	240f0010 	li	t7,16
    3a44:	ae0f02ac 	sw	t7,684(s0)
    3a48:	8fb8005c 	lw	t8,92(sp)
    3a4c:	3c010001 	lui	at,0x1
    3a50:	03017021 	addu	t6,t8,at
    3a54:	10000095 	b	3cac <func_80952858+0x714>
    3a58:	afae0040 	sw	t6,64(sp)
    3a5c:	260401f8 	addiu	a0,s0,504
    3a60:	afa4003c 	sw	a0,60(sp)
    3a64:	00002825 	move	a1,zero
    3a68:	24060001 	li	a2,1
    3a6c:	24070096 	li	a3,150
    3a70:	0c000000 	jal	0 <func_8094F2C0>
    3a74:	afa00010 	sw	zero,16(sp)
    3a78:	8e030198 	lw	v1,408(s0)
    3a7c:	8fb90054 	lw	t9,84(sp)
    3a80:	260400bc 	addiu	a0,s0,188
    3a84:	18600019 	blez	v1,3aec <func_80952858+0x554>
    3a88:	8fae0054 	lw	t6,84(sp)
    3a8c:	8f28067c 	lw	t0,1660(t9)
    3a90:	44805000 	mtc1	zero,$f10
    3a94:	3c05c3f0 	lui	a1,0xc3f0
    3a98:	00084940 	sll	t1,t0,0x5
    3a9c:	05210005 	bgez	t1,3ab4 <func_80952858+0x51c>
    3aa0:	3c063f80 	lui	a2,0x3f80
    3aa4:	28610024 	slti	at,v1,36
    3aa8:	14200002 	bnez	at,3ab4 <func_80952858+0x51c>
    3aac:	240a0023 	li	t2,35
    3ab0:	ae0a0198 	sw	t2,408(s0)
    3ab4:	3c0741f0 	lui	a3,0x41f0
    3ab8:	0c000000 	jal	0 <func_8094F2C0>
    3abc:	e7aa0010 	swc1	$f10,16(sp)
    3ac0:	8e0c0198 	lw	t4,408(s0)
    3ac4:	3c0b0fc0 	lui	t3,0xfc0
    3ac8:	356b0712 	ori	t3,t3,0x712
    3acc:	258dffff 	addiu	t5,t4,-1
    3ad0:	ae0b02ac 	sw	t3,684(s0)
    3ad4:	ae0d0198 	sw	t5,408(s0)
    3ad8:	8faf005c 	lw	t7,92(sp)
    3adc:	3c010001 	lui	at,0x1
    3ae0:	01e1c021 	addu	t8,t7,at
    3ae4:	10000071 	b	3cac <func_80952858+0x714>
    3ae8:	afb80040 	sw	t8,64(sp)
    3aec:	8dd9067c 	lw	t9,1660(t6)
    3af0:	2861ffc4 	slti	at,v1,-60
    3af4:	02002825 	move	a1,s0
    3af8:	00194140 	sll	t0,t9,0x5
    3afc:	05010004 	bgez	t0,3b10 <func_80952858+0x578>
    3b00:	24060002 	li	a2,2
    3b04:	10200002 	beqz	at,3b10 <func_80952858+0x578>
    3b08:	2409ffc5 	li	t1,-59
    3b0c:	ae090198 	sw	t1,408(s0)
    3b10:	8faa005c 	lw	t2,92(sp)
    3b14:	3c010001 	lui	at,0x1
    3b18:	3c0c0001 	lui	t4,0x1
    3b1c:	01415821 	addu	t3,t2,at
    3b20:	afab0040 	sw	t3,64(sp)
    3b24:	018a6021 	addu	t4,t4,t2
    3b28:	8d8c1de4 	lw	t4,7652(t4)
    3b2c:	3c01435c 	lui	at,0x435c
    3b30:	24070064 	li	a3,100
    3b34:	318d0003 	andi	t5,t4,0x3
    3b38:	15a0000e 	bnez	t5,3b74 <func_80952858+0x5dc>
    3b3c:	01402025 	move	a0,t2
    3b40:	44818000 	mtc1	at,$f16
    3b44:	3c0140a0 	lui	at,0x40a0
    3b48:	44819000 	mtc1	at,$f18
    3b4c:	3c014140 	lui	at,0x4140
    3b50:	44812000 	mtc1	at,$f4
    3b54:	240f0005 	li	t7,5
    3b58:	24180001 	li	t8,1
    3b5c:	afb80020 	sw	t8,32(sp)
    3b60:	afaf0018 	sw	t7,24(sp)
    3b64:	e7b00010 	swc1	$f16,16(sp)
    3b68:	e7b20014 	swc1	$f18,20(sp)
    3b6c:	0c000000 	jal	0 <func_8094F2C0>
    3b70:	e7a4001c 	swc1	$f4,28(sp)
    3b74:	8e0e0198 	lw	t6,408(s0)
    3b78:	29c1ffe2 	slti	at,t6,-30
    3b7c:	50200017 	beqzl	at,3bdc <func_80952858+0x644>
    3b80:	44809000 	mtc1	zero,$f18
    3b84:	44803000 	mtc1	zero,$f6
    3b88:	c6080068 	lwc1	$f8,104(s0)
    3b8c:	26040068 	addiu	a0,s0,104
    3b90:	24050000 	li	a1,0
    3b94:	4608303c 	c.lt.s	$f6,$f8
    3b98:	3c063f80 	lui	a2,0x3f80
    3b9c:	45020006 	bc1fl	3bb8 <func_80952858+0x620>
    3ba0:	44808000 	mtc1	zero,$f16
    3ba4:	44805000 	mtc1	zero,$f10
    3ba8:	3c073f00 	lui	a3,0x3f00
    3bac:	0c000000 	jal	0 <func_8094F2C0>
    3bb0:	e7aa0010 	swc1	$f10,16(sp)
    3bb4:	44808000 	mtc1	zero,$f16
    3bb8:	260400bc 	addiu	a0,s0,188
    3bbc:	3c05c4af 	lui	a1,0xc4af
    3bc0:	3c063f80 	lui	a2,0x3f80
    3bc4:	3c074270 	lui	a3,0x4270
    3bc8:	0c000000 	jal	0 <func_8094F2C0>
    3bcc:	e7b00010 	swc1	$f16,16(sp)
    3bd0:	10000034 	b	3ca4 <func_80952858+0x70c>
    3bd4:	8e0e0198 	lw	t6,408(s0)
    3bd8:	44809000 	mtc1	zero,$f18
    3bdc:	c6040068 	lwc1	$f4,104(s0)
    3be0:	46049032 	c.eq.s	$f18,$f4
    3be4:	00000000 	nop
    3be8:	45020010 	bc1fl	3c2c <func_80952858+0x694>
    3bec:	8fa4003c 	lw	a0,60(sp)
    3bf0:	8619008a 	lh	t9,138(s0)
    3bf4:	34018000 	li	at,0x8000
    3bf8:	03214021 	addu	t0,t9,at
    3bfc:	0c000000 	jal	0 <func_8094F2C0>
    3c00:	a6080032 	sh	t0,50(s0)
    3c04:	3c014316 	lui	at,0x4316
    3c08:	44813000 	mtc1	at,$f6
    3c0c:	00000000 	nop
    3c10:	46060202 	mul.s	$f8,$f0,$f6
    3c14:	4600428d 	trunc.w.s	$f10,$f8
    3c18:	440d5000 	mfc1	t5,$f10
    3c1c:	00000000 	nop
    3c20:	25aa014a 	addiu	t2,t5,330
    3c24:	a60a019c 	sh	t2,412(s0)
    3c28:	8fa4003c 	lw	a0,60(sp)
    3c2c:	24050fa0 	li	a1,4000
    3c30:	24060001 	li	a2,1
    3c34:	240701f4 	li	a3,500
    3c38:	0c000000 	jal	0 <func_8094F2C0>
    3c3c:	afa00010 	sw	zero,16(sp)
    3c40:	3c0f0000 	lui	t7,0x0
    3c44:	91ef0000 	lbu	t7,0(t7)
    3c48:	3c014080 	lui	at,0x4080
    3c4c:	44812000 	mtc1	at,$f4
    3c50:	25f8fff2 	addiu	t8,t7,-14
    3c54:	44988000 	mtc1	t8,$f16
    3c58:	44804000 	mtc1	zero,$f8
    3c5c:	26040068 	addiu	a0,s0,104
    3c60:	46808020 	cvt.s.w	$f0,$f16
    3c64:	3c063f80 	lui	a2,0x3f80
    3c68:	3c073e80 	lui	a3,0x3e80
    3c6c:	e7a80010 	swc1	$f8,16(sp)
    3c70:	46000480 	add.s	$f18,$f0,$f0
    3c74:	46049180 	add.s	$f6,$f18,$f4
    3c78:	44053000 	mfc1	a1,$f6
    3c7c:	0c000000 	jal	0 <func_8094F2C0>
    3c80:	00000000 	nop
    3c84:	44805000 	mtc1	zero,$f10
    3c88:	260400bc 	addiu	a0,s0,188
    3c8c:	24050000 	li	a1,0
    3c90:	3c063f80 	lui	a2,0x3f80
    3c94:	3c0741a0 	lui	a3,0x41a0
    3c98:	0c000000 	jal	0 <func_8094F2C0>
    3c9c:	e7aa0010 	swc1	$f10,16(sp)
    3ca0:	8e0e0198 	lw	t6,408(s0)
    3ca4:	25d90001 	addiu	t9,t6,1
    3ca8:	ae190198 	sw	t9,408(s0)
    3cac:	44800000 	mtc1	zero,$f0
    3cb0:	c6100068 	lwc1	$f16,104(s0)
    3cb4:	860800b6 	lh	t0,182(s0)
    3cb8:	860901f8 	lh	t1,504(s0)
    3cbc:	4600803c 	c.lt.s	$f16,$f0
    3cc0:	01095821 	addu	t3,t0,t1
    3cc4:	a60b00b6 	sh	t3,182(s0)
    3cc8:	45020008 	bc1fl	3cec <func_80952858+0x754>
    3ccc:	860c01ac 	lh	t4,428(s0)
    3cd0:	44050000 	mfc1	a1,$f0
    3cd4:	26040068 	addiu	a0,s0,104
    3cd8:	3c063f80 	lui	a2,0x3f80
    3cdc:	3c073f00 	lui	a3,0x3f00
    3ce0:	0c000000 	jal	0 <func_8094F2C0>
    3ce4:	e7a00010 	swc1	$f0,16(sp)
    3ce8:	860c01ac 	lh	t4,428(s0)
    3cec:	258d0c31 	addiu	t5,t4,3121
    3cf0:	a60d01ac 	sh	t5,428(s0)
    3cf4:	0c000000 	jal	0 <func_8094F2C0>
    3cf8:	860401ac 	lh	a0,428(s0)
    3cfc:	3c010000 	lui	at,0x0
    3d00:	c4320000 	lwc1	$f18,0(at)
    3d04:	3c013f80 	lui	at,0x3f80
    3d08:	44813000 	mtc1	at,$f6
    3d0c:	46120102 	mul.s	$f4,$f0,$f18
    3d10:	860401ac 	lh	a0,428(s0)
    3d14:	46062200 	add.s	$f8,$f4,$f6
    3d18:	0c000000 	jal	0 <func_8094F2C0>
    3d1c:	e60801a0 	swc1	$f8,416(s0)
    3d20:	3c010000 	lui	at,0x0
    3d24:	c42a0000 	lwc1	$f10,0(at)
    3d28:	3c013f80 	lui	at,0x3f80
    3d2c:	44819000 	mtc1	at,$f18
    3d30:	460a0402 	mul.s	$f16,$f0,$f10
    3d34:	96020088 	lhu	v0,136(s0)
    3d38:	3c010000 	lui	at,0x0
    3d3c:	304a0008 	andi	t2,v0,0x8
    3d40:	304ffff7 	andi	t7,v0,0xfff7
    3d44:	46128100 	add.s	$f4,$f16,$f18
    3d48:	1140000a 	beqz	t2,3d74 <func_80952858+0x7dc>
    3d4c:	e60401a4 	swc1	$f4,420(s0)
    3d50:	a60f0088 	sh	t7,136(s0)
    3d54:	0c000000 	jal	0 <func_8094F2C0>
    3d58:	c42c0000 	lwc1	$f12,0(at)
    3d5c:	4600018d 	trunc.w.s	$f6,$f0
    3d60:	8609007e 	lh	t1,126(s0)
    3d64:	44083000 	mfc1	t0,$f6
    3d68:	00000000 	nop
    3d6c:	01095821 	addu	t3,t0,t1
    3d70:	a60b0032 	sh	t3,50(s0)
    3d74:	3c0c0000 	lui	t4,0x0
    3d78:	918c0000 	lbu	t4,0(t4)
    3d7c:	26060024 	addiu	a2,s0,36
    3d80:	00c02025 	move	a0,a2
    3d84:	29810010 	slti	at,t4,16
    3d88:	1020003f 	beqz	at,3e88 <func_80952858+0x8f0>
    3d8c:	26050008 	addiu	a1,s0,8
    3d90:	afa50038 	sw	a1,56(sp)
    3d94:	0c000000 	jal	0 <func_8094F2C0>
    3d98:	afa6003c 	sw	a2,60(sp)
    3d9c:	3c0143c8 	lui	at,0x43c8
    3da0:	44814000 	mtc1	at,$f8
    3da4:	8fa50038 	lw	a1,56(sp)
    3da8:	8fa6003c 	lw	a2,60(sp)
    3dac:	4600403e 	c.le.s	$f8,$f0
    3db0:	8fad0054 	lw	t5,84(sp)
    3db4:	4502000d 	bc1fl	3dec <func_80952858+0x854>
    3db8:	81aa0a78 	lb	t2,2680(t5)
    3dbc:	0c000000 	jal	0 <func_8094F2C0>
    3dc0:	00c02025 	move	a0,a2
    3dc4:	00022c00 	sll	a1,v0,0x10
    3dc8:	00052c03 	sra	a1,a1,0x10
    3dcc:	26040032 	addiu	a0,s0,50
    3dd0:	24060001 	li	a2,1
    3dd4:	240705dc 	li	a3,1500
    3dd8:	0c000000 	jal	0 <func_8094F2C0>
    3ddc:	afa00010 	sw	zero,16(sp)
    3de0:	1000002a 	b	3e8c <func_80952858+0x8f4>
    3de4:	26060024 	addiu	a2,s0,36
    3de8:	81aa0a78 	lb	t2,2680(t5)
    3dec:	26040032 	addiu	a0,s0,50
    3df0:	34018000 	li	at,0x8000
    3df4:	1140000b 	beqz	t2,3e24 <func_80952858+0x88c>
    3df8:	8faf0040 	lw	t7,64(sp)
    3dfc:	8605008a 	lh	a1,138(s0)
    3e00:	afa00010 	sw	zero,16(sp)
    3e04:	24060001 	li	a2,1
    3e08:	00a12821 	addu	a1,a1,at
    3e0c:	00052c00 	sll	a1,a1,0x10
    3e10:	00052c03 	sra	a1,a1,0x10
    3e14:	0c000000 	jal	0 <func_8094F2C0>
    3e18:	2407012c 	li	a3,300
    3e1c:	1000001b 	b	3e8c <func_80952858+0x8f4>
    3e20:	26060024 	addiu	a2,s0,36
    3e24:	8df81de4 	lw	t8,7652(t7)
    3e28:	3c190000 	lui	t9,0x0
    3e2c:	330e0080 	andi	t6,t8,0x80
    3e30:	55c00016 	bnezl	t6,3e8c <func_80952858+0x8f4>
    3e34:	26060024 	addiu	a2,s0,36
    3e38:	93390000 	lbu	t9,0(t9)
    3e3c:	3c0142c8 	lui	at,0x42c8
    3e40:	44819000 	mtc1	at,$f18
    3e44:	2728fff2 	addiu	t0,t9,-14
    3e48:	44885000 	mtc1	t0,$f10
    3e4c:	8605008a 	lh	a1,138(s0)
    3e50:	afa00010 	sw	zero,16(sp)
    3e54:	46805420 	cvt.s.w	$f16,$f10
    3e58:	26040032 	addiu	a0,s0,50
    3e5c:	24060001 	li	a2,1
    3e60:	46128102 	mul.s	$f4,$f16,$f18
    3e64:	4600218d 	trunc.w.s	$f6,$f4
    3e68:	44073000 	mfc1	a3,$f6
    3e6c:	00000000 	nop
    3e70:	00073c00 	sll	a3,a3,0x10
    3e74:	00073c03 	sra	a3,a3,0x10
    3e78:	24e70064 	addiu	a3,a3,100
    3e7c:	00073c00 	sll	a3,a3,0x10
    3e80:	0c000000 	jal	0 <func_8094F2C0>
    3e84:	00073c03 	sra	a3,a3,0x10
    3e88:	26060024 	addiu	a2,s0,36
    3e8c:	afa6003c 	sw	a2,60(sp)
    3e90:	0c000000 	jal	0 <func_8094F2C0>
    3e94:	02002025 	move	a0,s0
    3e98:	8fa6003c 	lw	a2,60(sp)
    3e9c:	3c014270 	lui	at,0x4270
    3ea0:	44815000 	mtc1	at,$f10
    3ea4:	8ccc0000 	lw	t4,0(a2)
    3ea8:	ae0c0038 	sw	t4,56(s0)
    3eac:	8ccb0004 	lw	t3,4(a2)
    3eb0:	ae0b003c 	sw	t3,60(s0)
    3eb4:	c608003c 	lwc1	$f8,60(s0)
    3eb8:	8ccc0008 	lw	t4,8(a2)
    3ebc:	460a4400 	add.s	$f16,$f8,$f10
    3ec0:	ae0c0040 	sw	t4,64(s0)
    3ec4:	e610003c 	swc1	$f16,60(s0)
    3ec8:	8fad0040 	lw	t5,64(sp)
    3ecc:	8daa1de4 	lw	t2,7652(t5)
    3ed0:	314f0001 	andi	t7,t2,0x1
    3ed4:	55e00025 	bnezl	t7,3f6c <func_80952858+0x9d4>
    3ed8:	44805000 	mtc1	zero,$f10
    3edc:	8e180198 	lw	t8,408(s0)
    3ee0:	3c014120 	lui	at,0x4120
    3ee4:	8fa4005c 	lw	a0,92(sp)
    3ee8:	1700001f 	bnez	t8,3f68 <func_80952858+0x9d0>
    3eec:	02002825 	move	a1,s0
    3ef0:	44810000 	mtc1	at,$f0
    3ef4:	3c014220 	lui	at,0x4220
    3ef8:	44819000 	mtc1	at,$f18
    3efc:	240e0005 	li	t6,5
    3f00:	afae0018 	sw	t6,24(sp)
    3f04:	24060002 	li	a2,2
    3f08:	2407007d 	li	a3,125
    3f0c:	afa00020 	sw	zero,32(sp)
    3f10:	e7a00014 	swc1	$f0,20(sp)
    3f14:	e7a0001c 	swc1	$f0,28(sp)
    3f18:	0c000000 	jal	0 <func_8094F2C0>
    3f1c:	e7b20010 	swc1	$f18,16(sp)
    3f20:	3c014170 	lui	at,0x4170
    3f24:	44812000 	mtc1	at,$f4
    3f28:	3c014120 	lui	at,0x4120
    3f2c:	44813000 	mtc1	at,$f6
    3f30:	3c014130 	lui	at,0x4130
    3f34:	44814000 	mtc1	at,$f8
    3f38:	24190002 	li	t9,2
    3f3c:	24080001 	li	t0,1
    3f40:	afa80020 	sw	t0,32(sp)
    3f44:	afb90018 	sw	t9,24(sp)
    3f48:	8fa4005c 	lw	a0,92(sp)
    3f4c:	02002825 	move	a1,s0
    3f50:	24060001 	li	a2,1
    3f54:	24070064 	li	a3,100
    3f58:	e7a40010 	swc1	$f4,16(sp)
    3f5c:	e7a60014 	swc1	$f6,20(sp)
    3f60:	0c000000 	jal	0 <func_8094F2C0>
    3f64:	e7a8001c 	swc1	$f8,28(sp)
    3f68:	44805000 	mtc1	zero,$f10
    3f6c:	24090001 	li	t1,1
    3f70:	afa90014 	sw	t1,20(sp)
    3f74:	8fa4005c 	lw	a0,92(sp)
    3f78:	02002825 	move	a1,s0
    3f7c:	3c0641f0 	lui	a2,0x41f0
    3f80:	3c07428c 	lui	a3,0x428c
    3f84:	0c000000 	jal	0 <func_8094F2C0>
    3f88:	e7aa0010 	swc1	$f10,16(sp)
    3f8c:	2605028c 	addiu	a1,s0,652
    3f90:	afa5003c 	sw	a1,60(sp)
    3f94:	0c000000 	jal	0 <func_8094F2C0>
    3f98:	02002025 	move	a0,s0
    3f9c:	8fa4005c 	lw	a0,92(sp)
    3fa0:	3c010001 	lui	at,0x1
    3fa4:	34211e60 	ori	at,at,0x1e60
    3fa8:	00812821 	addu	a1,a0,at
    3fac:	afa50038 	sw	a1,56(sp)
    3fb0:	0c000000 	jal	0 <func_8094F2C0>
    3fb4:	8fa6003c 	lw	a2,60(sp)
    3fb8:	820b0196 	lb	t3,406(s0)
    3fbc:	8fa4005c 	lw	a0,92(sp)
    3fc0:	8fa50038 	lw	a1,56(sp)
    3fc4:	55600004 	bnezl	t3,3fd8 <func_80952858+0xa40>
    3fc8:	860301f8 	lh	v1,504(s0)
    3fcc:	0c000000 	jal	0 <func_8094F2C0>
    3fd0:	8fa6003c 	lw	a2,60(sp)
    3fd4:	860301f8 	lh	v1,504(s0)
    3fd8:	8fa4005c 	lw	a0,92(sp)
    3fdc:	8fa50038 	lw	a1,56(sp)
    3fe0:	286103e9 	slti	at,v1,1001
    3fe4:	10200007 	beqz	at,4004 <func_80952858+0xa6c>
    3fe8:	3c01c496 	lui	at,0xc496
    3fec:	44819000 	mtc1	at,$f18
    3ff0:	c61000bc 	lwc1	$f16,188(s0)
    3ff4:	4612803c 	c.lt.s	$f16,$f18
    3ff8:	00000000 	nop
    3ffc:	45020005 	bc1fl	4014 <func_80952858+0xa7c>
    4000:	44832000 	mtc1	v1,$f4
    4004:	0c000000 	jal	0 <func_8094F2C0>
    4008:	8fa6003c 	lw	a2,60(sp)
    400c:	860301f8 	lh	v1,504(s0)
    4010:	44832000 	mtc1	v1,$f4
    4014:	3c010000 	lui	at,0x0
    4018:	c4280000 	lwc1	$f8,0(at)
    401c:	468021a0 	cvt.s.w	$f6,$f4
    4020:	3c013f80 	lui	at,0x3f80
    4024:	44818000 	mtc1	at,$f16
    4028:	260400e4 	addiu	a0,s0,228
    402c:	2405313c 	li	a1,12604
    4030:	46083282 	mul.s	$f10,$f6,$f8
    4034:	46105480 	add.s	$f18,$f10,$f16
    4038:	44069000 	mfc1	a2,$f18
    403c:	0c000000 	jal	0 <func_8094F2C0>
    4040:	00000000 	nop
    4044:	82020196 	lb	v0,406(s0)
    4048:	3c030000 	lui	v1,0x0
    404c:	24630000 	addiu	v1,v1,0
    4050:	10400009 	beqz	v0,4078 <func_80952858+0xae0>
    4054:	244cffff 	addiu	t4,v0,-1
    4058:	3c030000 	lui	v1,0x0
    405c:	24630000 	addiu	v1,v1,0
    4060:	a20c0196 	sb	t4,406(s0)
    4064:	906d0000 	lbu	t5,0(v1)
    4068:	31aa0080 	andi	t2,t5,0x80
    406c:	354f0002 	ori	t7,t2,0x2
    4070:	10000005 	b	4088 <func_80952858+0xaf0>
    4074:	a06f0000 	sb	t7,0(v1)
    4078:	90780000 	lbu	t8,0(v1)
    407c:	330e0080 	andi	t6,t8,0x80
    4080:	35d90001 	ori	t9,t6,0x1
    4084:	a0790000 	sb	t9,0(v1)
    4088:	8fbf0034 	lw	ra,52(sp)
    408c:	8fb00030 	lw	s0,48(sp)
    4090:	27bd0058 	addiu	sp,sp,88
    4094:	03e00008 	jr	ra
    4098:	00000000 	nop

0000409c <func_8095335C>:
    409c:	27bdffe0 	addiu	sp,sp,-32
    40a0:	afb00018 	sw	s0,24(sp)
    40a4:	00808025 	move	s0,a0
    40a8:	afbf001c 	sw	ra,28(sp)
    40ac:	afa50024 	sw	a1,36(sp)
    40b0:	2405313c 	li	a1,12604
    40b4:	248400e4 	addiu	a0,a0,228
    40b8:	0c000000 	jal	0 <func_8094F2C0>
    40bc:	3c063f80 	lui	a2,0x3f80
    40c0:	8e0e0004 	lw	t6,4(s0)
    40c4:	2401fffa 	li	at,-6
    40c8:	3c041001 	lui	a0,0x1001
    40cc:	01c17824 	and	t7,t6,at
    40d0:	ae0f0004 	sw	t7,4(s0)
    40d4:	0c000000 	jal	0 <func_8094F2C0>
    40d8:	348400ff 	ori	a0,a0,0xff
    40dc:	8fa40024 	lw	a0,36(sp)
    40e0:	44800000 	mtc1	zero,$f0
    40e4:	24180c31 	li	t8,3121
    40e8:	a61801f6 	sh	t8,502(s0)
    40ec:	2419000e 	li	t9,14
    40f0:	3c010000 	lui	at,0x0
    40f4:	a0390000 	sb	t9,0(at)
    40f8:	3c050001 	lui	a1,0x1
    40fc:	00a42821 	addu	a1,a1,a0
    4100:	e6000068 	swc1	$f0,104(s0)
    4104:	e60001a8 	swc1	$f0,424(s0)
    4108:	0c000000 	jal	0 <func_8094F2C0>
    410c:	80a51cbc 	lb	a1,7356(a1)
    4110:	3c050000 	lui	a1,0x0
    4114:	24a50000 	addiu	a1,a1,0
    4118:	0c000000 	jal	0 <func_8094F2C0>
    411c:	02002025 	move	a0,s0
    4120:	8fbf001c 	lw	ra,28(sp)
    4124:	8fb00018 	lw	s0,24(sp)
    4128:	27bd0020 	addiu	sp,sp,32
    412c:	03e00008 	jr	ra
    4130:	00000000 	nop

00004134 <func_809533F4>:
    4134:	27bdff78 	addiu	sp,sp,-136
    4138:	afb30044 	sw	s3,68(sp)
    413c:	00809825 	move	s3,a0
    4140:	afb40048 	sw	s4,72(sp)
    4144:	00a0a025 	move	s4,a1
    4148:	afbf004c 	sw	ra,76(sp)
    414c:	00a02025 	move	a0,a1
    4150:	afb20040 	sw	s2,64(sp)
    4154:	afb1003c 	sw	s1,60(sp)
    4158:	afb00038 	sw	s0,56(sp)
    415c:	f7b40030 	sdc1	$f20,48(sp)
    4160:	0c000000 	jal	0 <func_8094F2C0>
    4164:	00002825 	move	a1,zero
    4168:	3c0f0000 	lui	t7,0x0
    416c:	81ef0000 	lb	t7,0(t7)
    4170:	8e8e1c44 	lw	t6,7236(s4)
    4174:	00408025 	move	s0,v0
    4178:	25f8fff2 	addiu	t8,t7,-14
    417c:	2f01000b 	sltiu	at,t8,11
    4180:	10200225 	beqz	at,4a18 <L80953CD8>
    4184:	afae0078 	sw	t6,120(sp)
    4188:	0018c080 	sll	t8,t8,0x2
    418c:	3c010000 	lui	at,0x0
    4190:	00380821 	addu	at,at,t8
    4194:	8c380000 	lw	t8,0(at)
    4198:	03000008 	jr	t8
    419c:	00000000 	nop

000041a0 <L80953460>:
    41a0:	02802025 	move	a0,s4
    41a4:	02602825 	move	a1,s3
    41a8:	0c000000 	jal	0 <func_8094F2C0>
    41ac:	24060001 	li	a2,1
    41b0:	02802025 	move	a0,s4
    41b4:	0c000000 	jal	0 <func_8094F2C0>
    41b8:	26851d64 	addiu	a1,s4,7524
    41bc:	0c000000 	jal	0 <func_8094F2C0>
    41c0:	02802025 	move	a0,s4
    41c4:	3c010000 	lui	at,0x0
    41c8:	a4220000 	sh	v0,0(at)
    41cc:	02802025 	move	a0,s4
    41d0:	00002825 	move	a1,zero
    41d4:	0c000000 	jal	0 <func_8094F2C0>
    41d8:	24060001 	li	a2,1
    41dc:	3c050000 	lui	a1,0x0
    41e0:	84a50000 	lh	a1,0(a1)
    41e4:	02802025 	move	a0,s4
    41e8:	0c000000 	jal	0 <func_8094F2C0>
    41ec:	24060007 	li	a2,7
    41f0:	c6640024 	lwc1	$f4,36(s3)
    41f4:	3c050000 	lui	a1,0x0
    41f8:	24a50000 	addiu	a1,a1,0
    41fc:	e4a40000 	swc1	$f4,0(a1)
    4200:	c6660028 	lwc1	$f6,40(s3)
    4204:	3c190000 	lui	t9,0x0
    4208:	27390000 	addiu	t9,t9,0
    420c:	e4a60004 	swc1	$f6,4(a1)
    4210:	c668002c 	lwc1	$f8,44(s3)
    4214:	27a30068 	addiu	v1,sp,104
    4218:	3c0c0000 	lui	t4,0x0
    421c:	e4a80008 	swc1	$f8,8(a1)
    4220:	8e090050 	lw	t1,80(s0)
    4224:	258c0000 	addiu	t4,t4,0
    4228:	3c060000 	lui	a2,0x0
    422c:	af290000 	sw	t1,0(t9)
    4230:	8e080054 	lw	t0,84(s0)
    4234:	3c014220 	lui	at,0x4220
    4238:	44815000 	mtc1	at,$f10
    423c:	af280004 	sw	t0,4(t9)
    4240:	8e090058 	lw	t1,88(s0)
    4244:	24c60000 	addiu	a2,a2,0
    4248:	3c01430c 	lui	at,0x430c
    424c:	af290008 	sw	t1,8(t9)
    4250:	8e0b005c 	lw	t3,92(s0)
    4254:	44818000 	mtc1	at,$f16
    4258:	3c190000 	lui	t9,0x0
    425c:	ac6b0000 	sw	t3,0(v1)
    4260:	8e0a0060 	lw	t2,96(s0)
    4264:	8c6e0000 	lw	t6,0(v1)
    4268:	27390000 	addiu	t9,t9,0
    426c:	ac6a0004 	sw	t2,4(v1)
    4270:	8e0b0064 	lw	t3,100(s0)
    4274:	3c0a0000 	lui	t2,0x0
    4278:	254a0000 	addiu	t2,t2,0
    427c:	ac6b0008 	sw	t3,8(v1)
    4280:	ad8e0000 	sw	t6,0(t4)
    4284:	8c6d0004 	lw	t5,4(v1)
    4288:	3c040000 	lui	a0,0x0
    428c:	24840000 	addiu	a0,a0,0
    4290:	ad8d0004 	sw	t5,4(t4)
    4294:	8c6e0008 	lw	t6,8(v1)
    4298:	3c0d0000 	lui	t5,0x0
    429c:	25ad0000 	addiu	t5,t5,0
    42a0:	ad8e0008 	sw	t6,8(t4)
    42a4:	8c780000 	lw	t8,0(v1)
    42a8:	8c6f0004 	lw	t7,4(v1)
    42ac:	e4b00004 	swc1	$f16,4(a1)
    42b0:	acd80000 	sw	t8,0(a2)
    42b4:	8c780008 	lw	t8,8(v1)
    42b8:	accf0004 	sw	t7,4(a2)
    42bc:	e4ca0004 	swc1	$f10,4(a2)
    42c0:	acd80008 	sw	t8,8(a2)
    42c4:	8f290000 	lw	t1,0(t9)
    42c8:	ac690000 	sw	t1,0(v1)
    42cc:	8f280004 	lw	t0,4(t9)
    42d0:	8c6c0000 	lw	t4,0(v1)
    42d4:	ac680004 	sw	t0,4(v1)
    42d8:	8f290008 	lw	t1,8(t9)
    42dc:	ac690008 	sw	t1,8(v1)
    42e0:	ad4c0000 	sw	t4,0(t2)
    42e4:	8c6b0004 	lw	t3,4(v1)
    42e8:	ad4b0004 	sw	t3,4(t2)
    42ec:	8c6c0008 	lw	t4,8(v1)
    42f0:	ad4c0008 	sw	t4,8(t2)
    42f4:	8c6f0000 	lw	t7,0(v1)
    42f8:	adaf0000 	sw	t7,0(t5)
    42fc:	8c6e0004 	lw	t6,4(v1)
    4300:	adae0004 	sw	t6,4(t5)
    4304:	8c6f0008 	lw	t7,8(v1)
    4308:	0c000000 	jal	0 <func_8094F2C0>
    430c:	adaf0008 	sw	t7,8(t5)
    4310:	3c010001 	lui	at,0x1
    4314:	2458ff00 	addiu	t8,v0,-256
    4318:	2419000f 	li	t9,15
    431c:	02818021 	addu	s0,s4,at
    4320:	a67801ac 	sh	t8,428(s3)
    4324:	a67901b0 	sh	t9,432(s3)
    4328:	240300ff 	li	v1,255
    432c:	3c040000 	lui	a0,0x0
    4330:	a2030b08 	sb	v1,2824(s0)
    4334:	a2030b07 	sb	v1,2823(s0)
    4338:	a2030b06 	sb	v1,2822(s0)
    433c:	a2000b09 	sb	zero,2825(s0)
    4340:	00340821 	addu	at,at,s4
    4344:	24090001 	li	t1,1
    4348:	24840000 	addiu	a0,a0,0
    434c:	a0290b05 	sb	t1,2821(at)
    4350:	808a0000 	lb	t2,0(a0)
    4354:	254b0001 	addiu	t3,t2,1
    4358:	a08b0000 	sb	t3,0(a0)

0000435c <L8095361C>:
    435c:	866c01ac 	lh	t4,428(s3)
    4360:	3c010001 	lui	at,0x1
    4364:	02818021 	addu	s0,s4,at
    4368:	258d0100 	addiu	t5,t4,256
    436c:	a66d01ac 	sh	t5,428(s3)
    4370:	0c000000 	jal	0 <func_8094F2C0>
    4374:	866401ac 	lh	a0,428(s3)
    4378:	3c014320 	lui	at,0x4320
    437c:	4481a000 	mtc1	at,$f20
    4380:	c67201a8 	lwc1	$f18,424(s3)
    4384:	3c010000 	lui	at,0x0
    4388:	c4280000 	lwc1	$f8,0(at)
    438c:	4612a100 	add.s	$f4,$f20,$f18
    4390:	3c010000 	lui	at,0x0
    4394:	46040182 	mul.s	$f6,$f0,$f4
    4398:	46083280 	add.s	$f10,$f6,$f8
    439c:	e42a0000 	swc1	$f10,0(at)
    43a0:	0c000000 	jal	0 <func_8094F2C0>
    43a4:	866401ac 	lh	a0,428(s3)
    43a8:	c67001a8 	lwc1	$f16,424(s3)
    43ac:	3c010000 	lui	at,0x0
    43b0:	c4260000 	lwc1	$f6,0(at)
    43b4:	4610a480 	add.s	$f18,$f20,$f16
    43b8:	3c010000 	lui	at,0x0
    43bc:	3c040000 	lui	a0,0x0
    43c0:	3c063ecc 	lui	a2,0x3ecc
    43c4:	46120102 	mul.s	$f4,$f0,$f18
    43c8:	34c6cccd 	ori	a2,a2,0xcccd
    43cc:	24840000 	addiu	a0,a0,0
    43d0:	3c054180 	lui	a1,0x4180
    43d4:	3c073fc0 	lui	a3,0x3fc0
    43d8:	46062200 	add.s	$f8,$f4,$f6
    43dc:	e4280000 	swc1	$f8,0(at)
    43e0:	3c013f00 	lui	at,0x3f00
    43e4:	44815000 	mtc1	at,$f10
    43e8:	0c000000 	jal	0 <func_8094F2C0>
    43ec:	e7aa0010 	swc1	$f10,16(sp)
    43f0:	3c020000 	lui	v0,0x0
    43f4:	24420000 	addiu	v0,v0,0
    43f8:	3c013f00 	lui	at,0x3f00
    43fc:	44816000 	mtc1	at,$f12
    4400:	c4420000 	lwc1	$f2,0(v0)
    4404:	8c580000 	lw	t8,0(v0)
    4408:	3c0e0000 	lui	t6,0x0
    440c:	460c1402 	mul.s	$f16,$f2,$f12
    4410:	25ce0000 	addiu	t6,t6,0
    4414:	e4420008 	swc1	$f2,8(v0)
    4418:	e4500004 	swc1	$f16,4(v0)
    441c:	add80000 	sw	t8,0(t6)
    4420:	8c4f0004 	lw	t7,4(v0)
    4424:	adcf0004 	sw	t7,4(t6)
    4428:	8c580008 	lw	t8,8(v0)
    442c:	0c000000 	jal	0 <func_8094F2C0>
    4430:	add80008 	sw	t8,8(t6)
    4434:	3c010000 	lui	at,0x0
    4438:	c4320000 	lwc1	$f18,0(at)
    443c:	3c013f00 	lui	at,0x3f00
    4440:	44812000 	mtc1	at,$f4
    4444:	3c010000 	lui	at,0x0
    4448:	c4280000 	lwc1	$f8,0(at)
    444c:	46049182 	mul.s	$f6,$f18,$f4
    4450:	8e081de4 	lw	t0,7652(s0)
    4454:	31090003 	andi	t1,t0,0x3
    4458:	46083280 	add.s	$f10,$f6,$f8
    445c:	460a0400 	add.s	$f16,$f0,$f10
    4460:	4600848d 	trunc.w.s	$f18,$f16
    4464:	44129000 	mfc1	s2,$f18
    4468:	00000000 	nop
    446c:	00129400 	sll	s2,s2,0x10
    4470:	1520002b 	bnez	t1,4520 <L8095361C+0x1c4>
    4474:	00129403 	sra	s2,s2,0x10
    4478:	866a01b0 	lh	t2,432(s3)
    447c:	24100006 	li	s0,6
    4480:	51400028 	beqzl	t2,4524 <L8095361C+0x1c8>
    4484:	867901b0 	lh	t9,432(s3)
    4488:	4480a000 	mtc1	zero,$f20
    448c:	24110001 	li	s1,1
    4490:	44902000 	mtc1	s0,$f4
    4494:	00123c00 	sll	a3,s2,0x10
    4498:	240b0001 	li	t3,1
    449c:	468021a0 	cvt.s.w	$f6,$f4
    44a0:	240c0001 	li	t4,1
    44a4:	afac0020 	sw	t4,32(sp)
    44a8:	afab0018 	sw	t3,24(sp)
    44ac:	00073c03 	sra	a3,a3,0x10
    44b0:	02802025 	move	a0,s4
    44b4:	e7a6001c 	swc1	$f6,28(sp)
    44b8:	02602825 	move	a1,s3
    44bc:	02203025 	move	a2,s1
    44c0:	e7b40010 	swc1	$f20,16(sp)
    44c4:	0c000000 	jal	0 <func_8094F2C0>
    44c8:	e7b40014 	swc1	$f20,20(sp)
    44cc:	2610ffff 	addiu	s0,s0,-1
    44d0:	5611fff0 	bnel	s0,s1,4494 <L8095361C+0x138>
    44d4:	44902000 	mtc1	s0,$f4
    44d8:	3c014130 	lui	at,0x4130
    44dc:	44814000 	mtc1	at,$f8
    44e0:	00123c00 	sll	a3,s2,0x10
    44e4:	240d0001 	li	t5,1
    44e8:	240e0001 	li	t6,1
    44ec:	afae0020 	sw	t6,32(sp)
    44f0:	afad0018 	sw	t5,24(sp)
    44f4:	00073c03 	sra	a3,a3,0x10
    44f8:	02802025 	move	a0,s4
    44fc:	02602825 	move	a1,s3
    4500:	24060001 	li	a2,1
    4504:	e7b40010 	swc1	$f20,16(sp)
    4508:	e7b40014 	swc1	$f20,20(sp)
    450c:	0c000000 	jal	0 <func_8094F2C0>
    4510:	e7a8001c 	swc1	$f8,28(sp)
    4514:	866f01b0 	lh	t7,432(s3)
    4518:	25f8ffff 	addiu	t8,t7,-1
    451c:	a67801b0 	sh	t8,432(s3)
    4520:	867901b0 	lh	t9,432(s3)
    4524:	3c030000 	lui	v1,0x0
    4528:	24630000 	addiu	v1,v1,0
    452c:	1720013a 	bnez	t9,4a18 <L80953CD8>
    4530:	00000000 	nop
    4534:	80680000 	lb	t0,0(v1)
    4538:	3c0a0000 	lui	t2,0x0
    453c:	254a0000 	addiu	t2,t2,0
    4540:	25090001 	addiu	t1,t0,1
    4544:	a0690000 	sb	t1,0(v1)
    4548:	8d4c0000 	lw	t4,0(t2)
    454c:	27a20068 	addiu	v0,sp,104
    4550:	3c0d0000 	lui	t5,0x0
    4554:	ac4c0000 	sw	t4,0(v0)
    4558:	8d4b0004 	lw	t3,4(t2)
    455c:	8c4f0000 	lw	t7,0(v0)
    4560:	25ad0000 	addiu	t5,t5,0
    4564:	ac4b0004 	sw	t3,4(v0)
    4568:	8d4c0008 	lw	t4,8(t2)
    456c:	3c180000 	lui	t8,0x0
    4570:	27180000 	addiu	t8,t8,0
    4574:	ac4c0008 	sw	t4,8(v0)
    4578:	adaf0000 	sw	t7,0(t5)
    457c:	8c4e0004 	lw	t6,4(v0)
    4580:	adae0004 	sw	t6,4(t5)
    4584:	8c4f0008 	lw	t7,8(v0)
    4588:	adaf0008 	sw	t7,8(t5)
    458c:	8c480000 	lw	t0,0(v0)
    4590:	af080000 	sw	t0,0(t8)
    4594:	8c590004 	lw	t9,4(v0)
    4598:	af190004 	sw	t9,4(t8)
    459c:	8c480008 	lw	t0,8(v0)
    45a0:	1000011d 	b	4a18 <L80953CD8>
    45a4:	af080008 	sw	t0,8(t8)

000045a8 <L80953868>:
    45a8:	866901ac 	lh	t1,428(s3)
    45ac:	252a1862 	addiu	t2,t1,6242
    45b0:	a66a01ac 	sh	t2,428(s3)
    45b4:	0c000000 	jal	0 <func_8094F2C0>
    45b8:	866401ac 	lh	a0,428(s3)
    45bc:	3c010000 	lui	at,0x0
    45c0:	c42a0000 	lwc1	$f10,0(at)
    45c4:	3c013f80 	lui	at,0x3f80
    45c8:	44819000 	mtc1	at,$f18
    45cc:	460a0402 	mul.s	$f16,$f0,$f10
    45d0:	866401ac 	lh	a0,428(s3)
    45d4:	46128100 	add.s	$f4,$f16,$f18
    45d8:	0c000000 	jal	0 <func_8094F2C0>
    45dc:	e66401a0 	swc1	$f4,416(s3)
    45e0:	3c010000 	lui	at,0x0
    45e4:	c4260000 	lwc1	$f6,0(at)
    45e8:	3c013f80 	lui	at,0x3f80
    45ec:	44815000 	mtc1	at,$f10
    45f0:	46060202 	mul.s	$f8,$f0,$f6
    45f4:	92620197 	lbu	v0,407(s3)
    45f8:	240e001e 	li	t6,30
    45fc:	3c010000 	lui	at,0x0
    4600:	3c0f0000 	lui	t7,0x0
    4604:	02802025 	move	a0,s4
    4608:	266500e4 	addiu	a1,s3,228
    460c:	460a4400 	add.s	$f16,$f8,$f10
    4610:	24063940 	li	a2,14656
    4614:	244d0001 	addiu	t5,v0,1
    4618:	144000ff 	bnez	v0,4a18 <L80953CD8>
    461c:	e67001a4 	swc1	$f16,420(s3)
    4620:	926b0195 	lbu	t3,405(s3)
    4624:	a26d0197 	sb	t5,407(s3)
    4628:	ae6e0198 	sw	t6,408(s3)
    462c:	256c0001 	addiu	t4,t3,1
    4630:	a26c0195 	sb	t4,405(s3)
    4634:	81ef0000 	lb	t7,0(t7)
    4638:	24190001 	li	t9,1
    463c:	24080028 	li	t0,40
    4640:	25f80001 	addiu	t8,t7,1
    4644:	a0380000 	sb	t8,0(at)
    4648:	afa80014 	sw	t0,20(sp)
    464c:	afb90010 	sw	t9,16(sp)
    4650:	0c000000 	jal	0 <func_8094F2C0>
    4654:	24070001 	li	a3,1
    4658:	24090002 	li	t1,2
    465c:	a2690194 	sb	t1,404(s3)
    4660:	0c000000 	jal	0 <func_8094F2C0>
    4664:	02802025 	move	a0,s4
    4668:	02802025 	move	a0,s4
    466c:	02602825 	move	a1,s3
    4670:	0c000000 	jal	0 <func_8094F2C0>
    4674:	24060008 	li	a2,8
    4678:	100000e7 	b	4a18 <L80953CD8>
    467c:	00000000 	nop

00004680 <L80953940>:
    4680:	8e620198 	lw	v0,408(s3)
    4684:	2401000d 	li	at,13
    4688:	54410005 	bnel	v0,at,46a0 <L80953940+0x20>
    468c:	244affff 	addiu	t2,v0,-1
    4690:	0c000000 	jal	0 <func_8094F2C0>
    4694:	24040021 	li	a0,33
    4698:	8e620198 	lw	v0,408(s3)
    469c:	244affff 	addiu	t2,v0,-1
    46a0:	154000dd 	bnez	t2,4a18 <L80953CD8>
    46a4:	ae6a0198 	sw	t2,408(s3)
    46a8:	c6720024 	lwc1	$f18,36(s3)
    46ac:	3c010000 	lui	at,0x0
    46b0:	8fac0078 	lw	t4,120(sp)
    46b4:	e4320000 	swc1	$f18,0(at)
    46b8:	3c0141f0 	lui	at,0x41f0
    46bc:	44813000 	mtc1	at,$f6
    46c0:	c6640028 	lwc1	$f4,40(s3)
    46c4:	3c010000 	lui	at,0x0
    46c8:	46062200 	add.s	$f8,$f4,$f6
    46cc:	e4280000 	swc1	$f8,0(at)
    46d0:	c66a002c 	lwc1	$f10,44(s3)
    46d4:	3c010000 	lui	at,0x0
    46d8:	e42a0000 	swc1	$f10,0(at)
    46dc:	0c000000 	jal	0 <func_8094F2C0>
    46e0:	858400b6 	lh	a0,182(t4)
    46e4:	3c01c302 	lui	at,0xc302
    46e8:	4481a000 	mtc1	at,$f20
    46ec:	8fb10078 	lw	s1,120(sp)
    46f0:	3c010000 	lui	at,0x0
    46f4:	46140402 	mul.s	$f16,$f0,$f20
    46f8:	c6320024 	lwc1	$f18,36(s1)
    46fc:	46128100 	add.s	$f4,$f16,$f18
    4700:	e4240000 	swc1	$f4,0(at)
    4704:	0c000000 	jal	0 <func_8094F2C0>
    4708:	862400b6 	lh	a0,182(s1)
    470c:	46140182 	mul.s	$f6,$f0,$f20
    4710:	c628002c 	lwc1	$f8,44(s1)
    4714:	3c010000 	lui	at,0x0
    4718:	3c0e0000 	lui	t6,0x0
    471c:	25ce0000 	addiu	t6,t6,0
    4720:	27ad0068 	addiu	t5,sp,104
    4724:	27a80068 	addiu	t0,sp,104
    4728:	46083280 	add.s	$f10,$f6,$f8
    472c:	3c190000 	lui	t9,0x0
    4730:	27390000 	addiu	t9,t9,0
    4734:	27ac0068 	addiu	t4,sp,104
    4738:	e42a0000 	swc1	$f10,0(at)
    473c:	3c01425c 	lui	at,0x425c
    4740:	44819000 	mtc1	at,$f18
    4744:	c6300028 	lwc1	$f16,40(s1)
    4748:	3c010000 	lui	at,0x0
    474c:	3c0b0000 	lui	t3,0x0
    4750:	46128100 	add.s	$f4,$f16,$f18
    4754:	256b0000 	addiu	t3,t3,0
    4758:	e4240000 	swc1	$f4,0(at)
    475c:	8dd80000 	lw	t8,0(t6)
    4760:	8dcf0004 	lw	t7,4(t6)
    4764:	3c010000 	lui	at,0x0
    4768:	adb80000 	sw	t8,0(t5)
    476c:	8dd80008 	lw	t8,8(t6)
    4770:	adaf0004 	sw	t7,4(t5)
    4774:	3c0f0000 	lui	t7,0x0
    4778:	adb80008 	sw	t8,8(t5)
    477c:	8d0a0000 	lw	t2,0(t0)
    4780:	8d090004 	lw	t1,4(t0)
    4784:	af2a0000 	sw	t2,0(t9)
    4788:	8d0a0008 	lw	t2,8(t0)
    478c:	af290004 	sw	t1,4(t9)
    4790:	af2a0008 	sw	t2,8(t9)
    4794:	8d8e0000 	lw	t6,0(t4)
    4798:	8d8d0004 	lw	t5,4(t4)
    479c:	24190085 	li	t9,133
    47a0:	ad6e0000 	sw	t6,0(t3)
    47a4:	8d8e0008 	lw	t6,8(t4)
    47a8:	ad6d0004 	sw	t5,4(t3)
    47ac:	ad6e0008 	sw	t6,8(t3)
    47b0:	81ef0000 	lb	t7,0(t7)
    47b4:	25f80001 	addiu	t8,t7,1
    47b8:	a0380000 	sb	t8,0(at)
    47bc:	10000096 	b	4a18 <L80953CD8>
    47c0:	ae790198 	sw	t9,408(s3)

000047c4 <L80953A84>:
    47c4:	3c010000 	lui	at,0x0
    47c8:	c4260000 	lwc1	$f6,0(at)
    47cc:	3c040000 	lui	a0,0x0
    47d0:	3c063e99 	lui	a2,0x3e99
    47d4:	3c073d4c 	lui	a3,0x3d4c
    47d8:	34e7cccd 	ori	a3,a3,0xcccd
    47dc:	34c6999a 	ori	a2,a2,0x999a
    47e0:	24840000 	addiu	a0,a0,0
    47e4:	3c053fc0 	lui	a1,0x3fc0
    47e8:	0c000000 	jal	0 <func_8094F2C0>
    47ec:	e7a60010 	swc1	$f6,16(sp)
    47f0:	3c010000 	lui	at,0x0
    47f4:	c4280000 	lwc1	$f8,0(at)
    47f8:	3c010000 	lui	at,0x0
    47fc:	3c090000 	lui	t1,0x0
    4800:	e4280000 	swc1	$f8,0(at)
    4804:	3c010000 	lui	at,0x0
    4808:	25290000 	addiu	t1,t1,0
    480c:	e4280000 	swc1	$f8,0(at)
    4810:	8d2b0000 	lw	t3,0(t1)
    4814:	3c080000 	lui	t0,0x0
    4818:	25080000 	addiu	t0,t0,0
    481c:	ad0b0000 	sw	t3,0(t0)
    4820:	8d2b0008 	lw	t3,8(t1)
    4824:	8d2a0004 	lw	t2,4(t1)
    4828:	02802025 	move	a0,s4
    482c:	ad0b0008 	sw	t3,8(t0)
    4830:	ad0a0004 	sw	t2,4(t0)
    4834:	8e6c0198 	lw	t4,408(s3)
    4838:	3c050000 	lui	a1,0x0
    483c:	258dffff 	addiu	t5,t4,-1
    4840:	15a0006e 	bnez	t5,49fc <L80953CBC>
    4844:	ae6d0198 	sw	t5,408(s3)
    4848:	0c000000 	jal	0 <func_8094F2C0>
    484c:	84a50000 	lh	a1,0(a1)
    4850:	3c010000 	lui	at,0x0
    4854:	a4200000 	sh	zero,0(at)
    4858:	02802025 	move	a0,s4
    485c:	0c000000 	jal	0 <func_8094F2C0>
    4860:	26851d64 	addiu	a1,s4,7524
    4864:	02802025 	move	a0,s4
    4868:	00002825 	move	a1,zero
    486c:	0c000000 	jal	0 <func_8094F2C0>
    4870:	24060007 	li	a2,7
    4874:	3c0f0000 	lui	t7,0x0
    4878:	25ef0000 	addiu	t7,t7,0
    487c:	8df90000 	lw	t9,0(t7)
    4880:	27a30068 	addiu	v1,sp,104
    4884:	3c0c0000 	lui	t4,0x0
    4888:	ac790000 	sw	t9,0(v1)
    488c:	8df80004 	lw	t8,4(t7)
    4890:	8c690000 	lw	t1,0(v1)
    4894:	258c0000 	addiu	t4,t4,0
    4898:	ac780004 	sw	t8,4(v1)
    489c:	8df90008 	lw	t9,8(t7)
    48a0:	02802025 	move	a0,s4
    48a4:	02602825 	move	a1,s3
    48a8:	ac790008 	sw	t9,8(v1)
    48ac:	ae09005c 	sw	t1,92(s0)
    48b0:	8c680004 	lw	t0,4(v1)
    48b4:	24060007 	li	a2,7
    48b8:	ae080060 	sw	t0,96(s0)
    48bc:	8c690008 	lw	t1,8(v1)
    48c0:	ae090064 	sw	t1,100(s0)
    48c4:	8c6b0000 	lw	t3,0(v1)
    48c8:	ae0b0074 	sw	t3,116(s0)
    48cc:	8c6a0004 	lw	t2,4(v1)
    48d0:	ae0a0078 	sw	t2,120(s0)
    48d4:	8c6b0008 	lw	t3,8(v1)
    48d8:	ae0b007c 	sw	t3,124(s0)
    48dc:	8d8e0000 	lw	t6,0(t4)
    48e0:	ae0e0050 	sw	t6,80(s0)
    48e4:	8d8d0004 	lw	t5,4(t4)
    48e8:	ae0d0054 	sw	t5,84(s0)
    48ec:	8d8e0008 	lw	t6,8(t4)
    48f0:	0c000000 	jal	0 <func_8094F2C0>
    48f4:	ae0e0058 	sw	t6,88(s0)
    48f8:	3c0f0000 	lui	t7,0x0
    48fc:	81ef0000 	lb	t7,0(t7)
    4900:	3c010000 	lui	at,0x0
    4904:	26841c24 	addiu	a0,s4,7204
    4908:	25f80001 	addiu	t8,t7,1
    490c:	a0380000 	sb	t8,0(at)
    4910:	c66a0028 	lwc1	$f10,40(s3)
    4914:	8e670024 	lw	a3,36(s3)
    4918:	02802825 	move	a1,s4
    491c:	e7aa0010 	swc1	$f10,16(sp)
    4920:	c670002c 	lwc1	$f16,44(s3)
    4924:	afa4005c 	sw	a0,92(sp)
    4928:	afa00024 	sw	zero,36(sp)
    492c:	afa00020 	sw	zero,32(sp)
    4930:	afa0001c 	sw	zero,28(sp)
    4934:	afa00018 	sw	zero,24(sp)
    4938:	2406005f 	li	a2,95
    493c:	0c000000 	jal	0 <func_8094F2C0>
    4940:	e7b00014 	swc1	$f16,20(sp)
    4944:	8fa50078 	lw	a1,120(sp)
    4948:	24190002 	li	t9,2
    494c:	3c110000 	lui	s1,0x0
    4950:	3c120000 	lui	s2,0x0
    4954:	24a50024 	addiu	a1,a1,36
    4958:	afa50054 	sw	a1,84(sp)
    495c:	26520000 	addiu	s2,s2,0
    4960:	26310000 	addiu	s1,s1,0
    4964:	afb9007c 	sw	t9,124(sp)
    4968:	24100002 	li	s0,2
    496c:	8fa50054 	lw	a1,84(sp)
    4970:	0c000000 	jal	0 <func_8094F2C0>
    4974:	02202025 	move	a0,s1
    4978:	46000506 	mov.s	$f20,$f0
    497c:	02402025 	move	a0,s2
    4980:	0c000000 	jal	0 <func_8094F2C0>
    4984:	8fa50054 	lw	a1,84(sp)
    4988:	4600a03c 	c.lt.s	$f20,$f0
    498c:	2631fff4 	addiu	s1,s1,-12
    4990:	2608ffff 	addiu	t0,s0,-1
    4994:	45020003 	bc1fl	49a4 <L80953A84+0x1e0>
    4998:	2610ffff 	addiu	s0,s0,-1
    499c:	afa8007c 	sw	t0,124(sp)
    49a0:	2610ffff 	addiu	s0,s0,-1
    49a4:	1600fff1 	bnez	s0,496c <L80953A84+0x1a8>
    49a8:	2652fff4 	addiu	s2,s2,-12
    49ac:	8fa9007c 	lw	t1,124(sp)
    49b0:	3c0b0000 	lui	t3,0x0
    49b4:	256b0000 	addiu	t3,t3,0
    49b8:	00095080 	sll	t2,t1,0x2
    49bc:	01495023 	subu	t2,t2,t1
    49c0:	000a5080 	sll	t2,t2,0x2
    49c4:	014b1021 	addu	v0,t2,t3
    49c8:	c4520004 	lwc1	$f18,4(v0)
    49cc:	c4440008 	lwc1	$f4,8(v0)
    49d0:	8c470000 	lw	a3,0(v0)
    49d4:	8fa4005c 	lw	a0,92(sp)
    49d8:	02802825 	move	a1,s4
    49dc:	240600a1 	li	a2,161
    49e0:	afa00018 	sw	zero,24(sp)
    49e4:	afa0001c 	sw	zero,28(sp)
    49e8:	afa00020 	sw	zero,32(sp)
    49ec:	afa00024 	sw	zero,36(sp)
    49f0:	e7b20010 	swc1	$f18,16(sp)
    49f4:	0c000000 	jal	0 <func_8094F2C0>
    49f8:	e7a40014 	swc1	$f4,20(sp)

000049fc <L80953CBC>:
    49fc:	3c013f00 	lui	at,0x3f00
    4a00:	44816000 	mtc1	at,$f12
    4a04:	0c000000 	jal	0 <func_8094F2C0>
    4a08:	00000000 	nop
    4a0c:	3c010001 	lui	at,0x1
    4a10:	00340821 	addu	at,at,s4
    4a14:	a0200b05 	sb	zero,2821(at)

00004a18 <L80953CD8>:
    4a18:	3c0c0000 	lui	t4,0x0
    4a1c:	858c0000 	lh	t4,0(t4)
    4a20:	4480a000 	mtc1	zero,$f20
    4a24:	3c010001 	lui	at,0x1
    4a28:	11800051 	beqz	t4,4b70 <L80953CD8+0x158>
    4a2c:	02818021 	addu	s0,s4,at
    4a30:	3c010000 	lui	at,0x0
    4a34:	c4260000 	lwc1	$f6,0(at)
    4a38:	3c040000 	lui	a0,0x0
    4a3c:	3c050000 	lui	a1,0x0
    4a40:	3c063e99 	lui	a2,0x3e99
    4a44:	3c070000 	lui	a3,0x0
    4a48:	8ce70000 	lw	a3,0(a3)
    4a4c:	34c6999a 	ori	a2,a2,0x999a
    4a50:	8ca50000 	lw	a1,0(a1)
    4a54:	24840000 	addiu	a0,a0,0
    4a58:	0c000000 	jal	0 <func_8094F2C0>
    4a5c:	e7a60010 	swc1	$f6,16(sp)
    4a60:	3c010000 	lui	at,0x0
    4a64:	c4280000 	lwc1	$f8,0(at)
    4a68:	3c040000 	lui	a0,0x0
    4a6c:	3c050000 	lui	a1,0x0
    4a70:	3c063e99 	lui	a2,0x3e99
    4a74:	3c070000 	lui	a3,0x0
    4a78:	8ce70000 	lw	a3,0(a3)
    4a7c:	34c6999a 	ori	a2,a2,0x999a
    4a80:	8ca50000 	lw	a1,0(a1)
    4a84:	24840000 	addiu	a0,a0,0
    4a88:	0c000000 	jal	0 <func_8094F2C0>
    4a8c:	e7a80010 	swc1	$f8,16(sp)
    4a90:	3c010000 	lui	at,0x0
    4a94:	c42a0000 	lwc1	$f10,0(at)
    4a98:	3c040000 	lui	a0,0x0
    4a9c:	3c050000 	lui	a1,0x0
    4aa0:	3c063e99 	lui	a2,0x3e99
    4aa4:	3c070000 	lui	a3,0x0
    4aa8:	8ce70000 	lw	a3,0(a3)
    4aac:	34c6999a 	ori	a2,a2,0x999a
    4ab0:	8ca50000 	lw	a1,0(a1)
    4ab4:	24840000 	addiu	a0,a0,0
    4ab8:	0c000000 	jal	0 <func_8094F2C0>
    4abc:	e7aa0010 	swc1	$f10,16(sp)
    4ac0:	3c010000 	lui	at,0x0
    4ac4:	c4300000 	lwc1	$f16,0(at)
    4ac8:	3c040000 	lui	a0,0x0
    4acc:	3c050000 	lui	a1,0x0
    4ad0:	3c063e99 	lui	a2,0x3e99
    4ad4:	3c070000 	lui	a3,0x0
    4ad8:	8ce70000 	lw	a3,0(a3)
    4adc:	34c6999a 	ori	a2,a2,0x999a
    4ae0:	8ca50000 	lw	a1,0(a1)
    4ae4:	24840000 	addiu	a0,a0,0
    4ae8:	0c000000 	jal	0 <func_8094F2C0>
    4aec:	e7b00010 	swc1	$f16,16(sp)
    4af0:	3c010000 	lui	at,0x0
    4af4:	c4320000 	lwc1	$f18,0(at)
    4af8:	3c040000 	lui	a0,0x0
    4afc:	3c050000 	lui	a1,0x0
    4b00:	3c063e99 	lui	a2,0x3e99
    4b04:	3c070000 	lui	a3,0x0
    4b08:	8ce70000 	lw	a3,0(a3)
    4b0c:	34c6999a 	ori	a2,a2,0x999a
    4b10:	8ca50000 	lw	a1,0(a1)
    4b14:	24840000 	addiu	a0,a0,0
    4b18:	0c000000 	jal	0 <func_8094F2C0>
    4b1c:	e7b20010 	swc1	$f18,16(sp)
    4b20:	3c010000 	lui	at,0x0
    4b24:	c4240000 	lwc1	$f4,0(at)
    4b28:	3c040000 	lui	a0,0x0
    4b2c:	3c050000 	lui	a1,0x0
    4b30:	3c063e99 	lui	a2,0x3e99
    4b34:	3c070000 	lui	a3,0x0
    4b38:	8ce70000 	lw	a3,0(a3)
    4b3c:	34c6999a 	ori	a2,a2,0x999a
    4b40:	8ca50000 	lw	a1,0(a1)
    4b44:	24840000 	addiu	a0,a0,0
    4b48:	0c000000 	jal	0 <func_8094F2C0>
    4b4c:	e7a40010 	swc1	$f4,16(sp)
    4b50:	3c050000 	lui	a1,0x0
    4b54:	3c060000 	lui	a2,0x0
    4b58:	3c070000 	lui	a3,0x0
    4b5c:	24e70000 	addiu	a3,a3,0
    4b60:	24c60000 	addiu	a2,a2,0
    4b64:	84a50000 	lh	a1,0(a1)
    4b68:	0c000000 	jal	0 <func_8094F2C0>
    4b6c:	02802025 	move	a0,s4
    4b70:	0c000000 	jal	0 <func_8094F2C0>
    4b74:	2664014c 	addiu	a0,s3,332
    4b78:	266400bc 	addiu	a0,s3,188
    4b7c:	3c05c3f0 	lui	a1,0xc3f0
    4b80:	3c063f80 	lui	a2,0x3f80
    4b84:	3c0741f0 	lui	a3,0x41f0
    4b88:	0c000000 	jal	0 <func_8094F2C0>
    4b8c:	e7b40010 	swc1	$f20,16(sp)
    4b90:	266401f8 	addiu	a0,s3,504
    4b94:	00002825 	move	a1,zero
    4b98:	24060001 	li	a2,1
    4b9c:	240700c8 	li	a3,200
    4ba0:	0c000000 	jal	0 <func_8094F2C0>
    4ba4:	afa00010 	sw	zero,16(sp)
    4ba8:	266401f6 	addiu	a0,s3,502
    4bac:	00002825 	move	a1,zero
    4bb0:	24060001 	li	a2,1
    4bb4:	240700c8 	li	a3,200
    4bb8:	0c000000 	jal	0 <func_8094F2C0>
    4bbc:	afa00010 	sw	zero,16(sp)
    4bc0:	266401ae 	addiu	a0,s3,430
    4bc4:	240500c8 	li	a1,200
    4bc8:	24060001 	li	a2,1
    4bcc:	2407000a 	li	a3,10
    4bd0:	0c000000 	jal	0 <func_8094F2C0>
    4bd4:	afa00010 	sw	zero,16(sp)
    4bd8:	92030b09 	lbu	v1,2825(s0)
    4bdc:	4405a000 	mfc1	a1,$f20
    4be0:	26640068 	addiu	a0,s3,104
    4be4:	10600003 	beqz	v1,4bf4 <L80953CD8+0x1dc>
    4be8:	3c063f80 	lui	a2,0x3f80
    4bec:	246dffce 	addiu	t5,v1,-50
    4bf0:	a20d0b09 	sb	t5,2825(s0)
    4bf4:	3c073f00 	lui	a3,0x3f00
    4bf8:	0c000000 	jal	0 <func_8094F2C0>
    4bfc:	e7b40010 	swc1	$f20,16(sp)
    4c00:	867901ac 	lh	t9,428(s3)
    4c04:	866801f6 	lh	t0,502(s3)
    4c08:	866e00b6 	lh	t6,182(s3)
    4c0c:	866f01f8 	lh	t7,504(s3)
    4c10:	03284821 	addu	t1,t9,t0
    4c14:	a66901ac 	sh	t1,428(s3)
    4c18:	01cfc021 	addu	t8,t6,t7
    4c1c:	a67800b6 	sh	t8,182(s3)
    4c20:	0c000000 	jal	0 <func_8094F2C0>
    4c24:	866401ac 	lh	a0,428(s3)
    4c28:	3c010000 	lui	at,0x0
    4c2c:	c4260000 	lwc1	$f6,0(at)
    4c30:	3c013f80 	lui	at,0x3f80
    4c34:	44815000 	mtc1	at,$f10
    4c38:	46060202 	mul.s	$f8,$f0,$f6
    4c3c:	866401ac 	lh	a0,428(s3)
    4c40:	460a4400 	add.s	$f16,$f8,$f10
    4c44:	0c000000 	jal	0 <func_8094F2C0>
    4c48:	e67001a0 	swc1	$f16,416(s3)
    4c4c:	3c010000 	lui	at,0x0
    4c50:	c4320000 	lwc1	$f18,0(at)
    4c54:	3c013f80 	lui	at,0x3f80
    4c58:	44813000 	mtc1	at,$f6
    4c5c:	46120102 	mul.s	$f4,$f0,$f18
    4c60:	46062200 	add.s	$f8,$f4,$f6
    4c64:	e66801a4 	swc1	$f8,420(s3)
    4c68:	8fbf004c 	lw	ra,76(sp)
    4c6c:	8fb40048 	lw	s4,72(sp)
    4c70:	8fb30044 	lw	s3,68(sp)
    4c74:	8fb20040 	lw	s2,64(sp)
    4c78:	8fb1003c 	lw	s1,60(sp)
    4c7c:	8fb00038 	lw	s0,56(sp)
    4c80:	d7b40030 	ldc1	$f20,48(sp)
    4c84:	03e00008 	jr	ra
    4c88:	27bd0088 	addiu	sp,sp,136

00004c8c <func_80953F4C>:
    4c8c:	27bdffd8 	addiu	sp,sp,-40
    4c90:	afa40028 	sw	a0,40(sp)
    4c94:	afbf0024 	sw	ra,36(sp)
    4c98:	3c040601 	lui	a0,0x601
    4c9c:	afa5002c 	sw	a1,44(sp)
    4ca0:	0c000000 	jal	0 <func_8094F2C0>
    4ca4:	248466a8 	addiu	a0,a0,26280
    4ca8:	44822000 	mtc1	v0,$f4
    4cac:	44800000 	mtc1	zero,$f0
    4cb0:	8fa40028 	lw	a0,40(sp)
    4cb4:	468021a0 	cvt.s.w	$f6,$f4
    4cb8:	3c050601 	lui	a1,0x601
    4cbc:	240e0001 	li	t6,1
    4cc0:	44060000 	mfc1	a2,$f0
    4cc4:	44070000 	mfc1	a3,$f0
    4cc8:	afae0014 	sw	t6,20(sp)
    4ccc:	24a566a8 	addiu	a1,a1,26280
    4cd0:	e7a60010 	swc1	$f6,16(sp)
    4cd4:	2484014c 	addiu	a0,a0,332
    4cd8:	0c000000 	jal	0 <func_8094F2C0>
    4cdc:	e7a00018 	swc1	$f0,24(sp)
    4ce0:	8fa40028 	lw	a0,40(sp)
    4ce4:	3c050000 	lui	a1,0x0
    4ce8:	24a50000 	addiu	a1,a1,0
    4cec:	0c000000 	jal	0 <func_8094F2C0>
    4cf0:	ac800198 	sw	zero,408(a0)
    4cf4:	8fbf0024 	lw	ra,36(sp)
    4cf8:	27bd0028 	addiu	sp,sp,40
    4cfc:	03e00008 	jr	ra
    4d00:	00000000 	nop

00004d04 <func_80953FC4>:
    4d04:	27bdffc8 	addiu	sp,sp,-56
    4d08:	afbf0034 	sw	ra,52(sp)
    4d0c:	afb00030 	sw	s0,48(sp)
    4d10:	00808025 	move	s0,a0
    4d14:	0c000000 	jal	0 <func_8094F2C0>
    4d18:	afa5003c 	sw	a1,60(sp)
    4d1c:	3c020000 	lui	v0,0x0
    4d20:	80420000 	lb	v0,0(v0)
    4d24:	2401000d 	li	at,13
    4d28:	02002025 	move	a0,s0
    4d2c:	54410006 	bnel	v0,at,4d48 <func_80953FC4+0x44>
    4d30:	28410003 	slti	at,v0,3
    4d34:	0c000000 	jal	0 <func_8094F2C0>
    4d38:	8fa5003c 	lw	a1,60(sp)
    4d3c:	10000035 	b	4e14 <func_80953FC4+0x110>
    4d40:	8fbf0034 	lw	ra,52(sp)
    4d44:	28410003 	slti	at,v0,3
    4d48:	54200032 	bnezl	at,4e14 <func_80953FC4+0x110>
    4d4c:	8fbf0034 	lw	ra,52(sp)
    4d50:	8e0e0198 	lw	t6,408(s0)
    4d54:	02002825 	move	a1,s0
    4d58:	24060002 	li	a2,2
    4d5c:	25cf0001 	addiu	t7,t6,1
    4d60:	31f80001 	andi	t8,t7,0x1
    4d64:	17000013 	bnez	t8,4db4 <func_80953FC4+0xb0>
    4d68:	ae0f0198 	sw	t7,408(s0)
    4d6c:	31e80020 	andi	t0,t7,0x20
    4d70:	00084943 	sra	t1,t0,0x5
    4d74:	252a0001 	addiu	t2,t1,1
    4d78:	448a4000 	mtc1	t2,$f8
    4d7c:	3c0140a0 	lui	at,0x40a0
    4d80:	44812000 	mtc1	at,$f4
    4d84:	468042a0 	cvt.s.w	$f10,$f8
    4d88:	44803000 	mtc1	zero,$f6
    4d8c:	24190005 	li	t9,5
    4d90:	240b0001 	li	t3,1
    4d94:	afab0020 	sw	t3,32(sp)
    4d98:	afb90018 	sw	t9,24(sp)
    4d9c:	e7aa001c 	swc1	$f10,28(sp)
    4da0:	8fa4003c 	lw	a0,60(sp)
    4da4:	2407005a 	li	a3,90
    4da8:	e7a40010 	swc1	$f4,16(sp)
    4dac:	0c000000 	jal	0 <func_8094F2C0>
    4db0:	e7a60014 	swc1	$f6,20(sp)
    4db4:	0c000000 	jal	0 <func_8094F2C0>
    4db8:	2604014c 	addiu	a0,s0,332
    4dbc:	3c013f80 	lui	at,0x3f80
    4dc0:	44810000 	mtc1	at,$f0
    4dc4:	44808000 	mtc1	zero,$f16
    4dc8:	3c073d4c 	lui	a3,0x3d4c
    4dcc:	44050000 	mfc1	a1,$f0
    4dd0:	44060000 	mfc1	a2,$f0
    4dd4:	34e7cccd 	ori	a3,a3,0xcccd
    4dd8:	26040168 	addiu	a0,s0,360
    4ddc:	0c000000 	jal	0 <func_8094F2C0>
    4de0:	e7b00010 	swc1	$f16,16(sp)
    4de4:	0c000000 	jal	0 <func_8094F2C0>
    4de8:	00000000 	nop
    4dec:	3c010000 	lui	at,0x0
    4df0:	c4320000 	lwc1	$f18,0(at)
    4df4:	02002025 	move	a0,s0
    4df8:	4612003c 	c.lt.s	$f0,$f18
    4dfc:	00000000 	nop
    4e00:	45020004 	bc1fl	4e14 <func_80953FC4+0x110>
    4e04:	8fbf0034 	lw	ra,52(sp)
    4e08:	0c000000 	jal	0 <func_8094F2C0>
    4e0c:	24053143 	li	a1,12611
    4e10:	8fbf0034 	lw	ra,52(sp)
    4e14:	8fb00030 	lw	s0,48(sp)
    4e18:	27bd0038 	addiu	sp,sp,56
    4e1c:	03e00008 	jr	ra
    4e20:	00000000 	nop

00004e24 <func_809540E4>:
    4e24:	27bdffd8 	addiu	sp,sp,-40
    4e28:	afa40028 	sw	a0,40(sp)
    4e2c:	afbf0024 	sw	ra,36(sp)
    4e30:	3c040601 	lui	a0,0x601
    4e34:	afa5002c 	sw	a1,44(sp)
    4e38:	0c000000 	jal	0 <func_8094F2C0>
    4e3c:	248466a8 	addiu	a0,a0,26280
    4e40:	44822000 	mtc1	v0,$f4
    4e44:	44800000 	mtc1	zero,$f0
    4e48:	8fa40028 	lw	a0,40(sp)
    4e4c:	468021a0 	cvt.s.w	$f6,$f4
    4e50:	3c050601 	lui	a1,0x601
    4e54:	44070000 	mfc1	a3,$f0
    4e58:	24a566a8 	addiu	a1,a1,26280
    4e5c:	3c063f80 	lui	a2,0x3f80
    4e60:	afa00014 	sw	zero,20(sp)
    4e64:	e7a60010 	swc1	$f6,16(sp)
    4e68:	2484014c 	addiu	a0,a0,332
    4e6c:	0c000000 	jal	0 <func_8094F2C0>
    4e70:	e7a00018 	swc1	$f0,24(sp)
    4e74:	8fa40028 	lw	a0,40(sp)
    4e78:	3c050000 	lui	a1,0x0
    4e7c:	24a50000 	addiu	a1,a1,0
    4e80:	848e001c 	lh	t6,28(a0)
    4e84:	000e7880 	sll	t7,t6,0x2
    4e88:	01ee7821 	addu	t7,t7,t6
    4e8c:	000f7840 	sll	t7,t7,0x1
    4e90:	0c000000 	jal	0 <func_8094F2C0>
    4e94:	ac8f0198 	sw	t7,408(a0)
    4e98:	8fbf0024 	lw	ra,36(sp)
    4e9c:	27bd0028 	addiu	sp,sp,40
    4ea0:	03e00008 	jr	ra
    4ea4:	00000000 	nop

00004ea8 <func_80954168>:
    4ea8:	27bdffc0 	addiu	sp,sp,-64
    4eac:	afbf0034 	sw	ra,52(sp)
    4eb0:	afb00030 	sw	s0,48(sp)
    4eb4:	afa50044 	sw	a1,68(sp)
    4eb8:	8c8e0198 	lw	t6,408(a0)
    4ebc:	3c180000 	lui	t8,0x0
    4ec0:	00808025 	move	s0,a0
    4ec4:	25cf0001 	addiu	t7,t6,1
    4ec8:	ac8f0198 	sw	t7,408(a0)
    4ecc:	93180000 	lbu	t8,0(t8)
    4ed0:	00002825 	move	a1,zero
    4ed4:	240600ff 	li	a2,255
    4ed8:	3319007f 	andi	t9,t8,0x7f
    4edc:	1320002e 	beqz	t9,4f98 <func_80954168+0xf0>
    4ee0:	00003825 	move	a3,zero
    4ee4:	2408000c 	li	t0,12
    4ee8:	0c000000 	jal	0 <func_8094F2C0>
    4eec:	afa80010 	sw	t0,16(sp)
    4ef0:	0c000000 	jal	0 <func_8094F2C0>
    4ef4:	00000000 	nop
    4ef8:	3c013f00 	lui	at,0x3f00
    4efc:	44812000 	mtc1	at,$f4
    4f00:	3c040601 	lui	a0,0x601
    4f04:	4600203c 	c.lt.s	$f4,$f0
    4f08:	00000000 	nop
    4f0c:	45000013 	bc1f	4f5c <func_80954168+0xb4>
    4f10:	00000000 	nop
    4f14:	3c040601 	lui	a0,0x601
    4f18:	0c000000 	jal	0 <func_8094F2C0>
    4f1c:	248462ac 	addiu	a0,a0,25260
    4f20:	44823000 	mtc1	v0,$f6
    4f24:	44800000 	mtc1	zero,$f0
    4f28:	3c050601 	lui	a1,0x601
    4f2c:	46803220 	cvt.s.w	$f8,$f6
    4f30:	24090002 	li	t1,2
    4f34:	44070000 	mfc1	a3,$f0
    4f38:	afa90014 	sw	t1,20(sp)
    4f3c:	24a562ac 	addiu	a1,a1,25260
    4f40:	2604014c 	addiu	a0,s0,332
    4f44:	e7a80010 	swc1	$f8,16(sp)
    4f48:	3c063f80 	lui	a2,0x3f80
    4f4c:	0c000000 	jal	0 <func_8094F2C0>
    4f50:	e7a00018 	swc1	$f0,24(sp)
    4f54:	10000011 	b	4f9c <func_80954168+0xf4>
    4f58:	2604014c 	addiu	a0,s0,332
    4f5c:	0c000000 	jal	0 <func_8094F2C0>
    4f60:	248464b0 	addiu	a0,a0,25776
    4f64:	44825000 	mtc1	v0,$f10
    4f68:	44809000 	mtc1	zero,$f18
    4f6c:	3c050601 	lui	a1,0x601
    4f70:	46805420 	cvt.s.w	$f16,$f10
    4f74:	240a0002 	li	t2,2
    4f78:	afaa0014 	sw	t2,20(sp)
    4f7c:	24a564b0 	addiu	a1,a1,25776
    4f80:	2604014c 	addiu	a0,s0,332
    4f84:	3c063f80 	lui	a2,0x3f80
    4f88:	e7b00010 	swc1	$f16,16(sp)
    4f8c:	24070000 	li	a3,0
    4f90:	0c000000 	jal	0 <func_8094F2C0>
    4f94:	e7b20018 	swc1	$f18,24(sp)
    4f98:	2604014c 	addiu	a0,s0,332
    4f9c:	0c000000 	jal	0 <func_8094F2C0>
    4fa0:	afa40038 	sw	a0,56(sp)
    4fa4:	1040000f 	beqz	v0,4fe4 <func_80954168+0x13c>
    4fa8:	3c040601 	lui	a0,0x601
    4fac:	0c000000 	jal	0 <func_8094F2C0>
    4fb0:	248466a8 	addiu	a0,a0,26280
    4fb4:	44822000 	mtc1	v0,$f4
    4fb8:	44800000 	mtc1	zero,$f0
    4fbc:	3c050601 	lui	a1,0x601
    4fc0:	468021a0 	cvt.s.w	$f6,$f4
    4fc4:	44070000 	mfc1	a3,$f0
    4fc8:	24a566a8 	addiu	a1,a1,26280
    4fcc:	8fa40038 	lw	a0,56(sp)
    4fd0:	3c063f80 	lui	a2,0x3f80
    4fd4:	afa00014 	sw	zero,20(sp)
    4fd8:	e7a60010 	swc1	$f6,16(sp)
    4fdc:	0c000000 	jal	0 <func_8094F2C0>
    4fe0:	e7a00018 	swc1	$f0,24(sp)
    4fe4:	0c000000 	jal	0 <func_8094F2C0>
    4fe8:	02002025 	move	a0,s0
    4fec:	0c000000 	jal	0 <func_8094F2C0>
    4ff0:	00000000 	nop
    4ff4:	3c010000 	lui	at,0x0
    4ff8:	c4280000 	lwc1	$f8,0(at)
    4ffc:	02002025 	move	a0,s0
    5000:	4608003c 	c.lt.s	$f0,$f8
    5004:	00000000 	nop
    5008:	45020004 	bc1fl	501c <func_80954168+0x174>
    500c:	920b02e9 	lbu	t3,745(s0)
    5010:	0c000000 	jal	0 <func_8094F2C0>
    5014:	24053143 	li	a1,12611
    5018:	920b02e9 	lbu	t3,745(s0)
    501c:	02002025 	move	a0,s0
    5020:	316c0002 	andi	t4,t3,0x2
    5024:	51800006 	beqzl	t4,5040 <func_80954168+0x198>
    5028:	920d0114 	lbu	t5,276(s0)
    502c:	0c000000 	jal	0 <func_8094F2C0>
    5030:	8fa50044 	lw	a1,68(sp)
    5034:	10000021 	b	50bc <func_80954168+0x214>
    5038:	8fbf0034 	lw	ra,52(sp)
    503c:	920d0114 	lbu	t5,276(s0)
    5040:	3c010001 	lui	at,0x1
    5044:	8fa40044 	lw	a0,68(sp)
    5048:	15a00004 	bnez	t5,505c <func_80954168+0x1b4>
    504c:	34211e60 	ori	at,at,0x1e60
    5050:	00812821 	addu	a1,a0,at
    5054:	0c000000 	jal	0 <func_8094F2C0>
    5058:	260602d8 	addiu	a2,s0,728
    505c:	8e020198 	lw	v0,408(s0)
    5060:	8fa40044 	lw	a0,68(sp)
    5064:	02002825 	move	a1,s0
    5068:	304e0001 	andi	t6,v0,0x1
    506c:	15c00012 	bnez	t6,50b8 <func_80954168+0x210>
    5070:	24060001 	li	a2,1
    5074:	30580020 	andi	t8,v0,0x20
    5078:	0018c943 	sra	t9,t8,0x5
    507c:	27280001 	addiu	t0,t9,1
    5080:	44889000 	mtc1	t0,$f18
    5084:	3c0140a0 	lui	at,0x40a0
    5088:	44815000 	mtc1	at,$f10
    508c:	46809120 	cvt.s.w	$f4,$f18
    5090:	44808000 	mtc1	zero,$f16
    5094:	240f0005 	li	t7,5
    5098:	24090001 	li	t1,1
    509c:	afa90020 	sw	t1,32(sp)
    50a0:	afaf0018 	sw	t7,24(sp)
    50a4:	e7a4001c 	swc1	$f4,28(sp)
    50a8:	24070064 	li	a3,100
    50ac:	e7aa0010 	swc1	$f10,16(sp)
    50b0:	0c000000 	jal	0 <func_8094F2C0>
    50b4:	e7b00014 	swc1	$f16,20(sp)
    50b8:	8fbf0034 	lw	ra,52(sp)
    50bc:	8fb00030 	lw	s0,48(sp)
    50c0:	27bd0040 	addiu	sp,sp,64
    50c4:	03e00008 	jr	ra
    50c8:	00000000 	nop

000050cc <func_8095438C>:
    50cc:	3c030000 	lui	v1,0x0
    50d0:	3c080000 	lui	t0,0x0
    50d4:	25080000 	addiu	t0,t0,0
    50d8:	24630000 	addiu	v1,v1,0
    50dc:	27bdffc8 	addiu	sp,sp,-56
    50e0:	906e0000 	lbu	t6,0(v1)
    50e4:	91180000 	lbu	t8,0(t0)
    50e8:	afbf0034 	sw	ra,52(sp)
    50ec:	afb00030 	sw	s0,48(sp)
    50f0:	8482001c 	lh	v0,28(a0)
    50f4:	25cf0001 	addiu	t7,t6,1
    50f8:	27190001 	addiu	t9,t8,1
    50fc:	00808025 	move	s0,a0
    5100:	a06f0000 	sb	t7,0(v1)
    5104:	a1190000 	sb	t9,0(t0)
    5108:	3c0141a0 	lui	at,0x41a0
    510c:	44813000 	mtc1	at,$f6
    5110:	c60401b8 	lwc1	$f4,440(s0)
    5114:	8e0701b4 	lw	a3,436(s0)
    5118:	24420010 	addiu	v0,v0,16
    511c:	46062200 	add.s	$f8,$f4,$f6
    5120:	24a41c24 	addiu	a0,a1,7204
    5124:	240600ba 	li	a2,186
    5128:	e7a80010 	swc1	$f8,16(sp)
    512c:	c60a01bc 	lwc1	$f10,444(s0)
    5130:	afa00018 	sw	zero,24(sp)
    5134:	e7aa0014 	swc1	$f10,20(sp)
    5138:	860900b6 	lh	t1,182(s0)
    513c:	afa5003c 	sw	a1,60(sp)
    5140:	afa20024 	sw	v0,36(sp)
    5144:	afa00020 	sw	zero,32(sp)
    5148:	0c000000 	jal	0 <func_8094F2C0>
    514c:	afa9001c 	sw	t1,28(sp)
    5150:	8fa4003c 	lw	a0,60(sp)
    5154:	24050002 	li	a1,2
    5158:	2406000b 	li	a2,11
    515c:	24070008 	li	a3,8
    5160:	0c000000 	jal	0 <func_8094F2C0>
    5164:	248401e0 	addiu	a0,a0,480
    5168:	3c050000 	lui	a1,0x0
    516c:	a2000195 	sb	zero,405(s0)
    5170:	a600019c 	sh	zero,412(s0)
    5174:	24a50000 	addiu	a1,a1,0
    5178:	0c000000 	jal	0 <func_8094F2C0>
    517c:	02002025 	move	a0,s0
    5180:	8fbf0034 	lw	ra,52(sp)
    5184:	8fb00030 	lw	s0,48(sp)
    5188:	27bd0038 	addiu	sp,sp,56
    518c:	03e00008 	jr	ra
    5190:	00000000 	nop

00005194 <func_80954454>:
    5194:	27bdffb0 	addiu	sp,sp,-80
    5198:	afbf0034 	sw	ra,52(sp)
    519c:	afb00030 	sw	s0,48(sp)
    51a0:	afa50054 	sw	a1,84(sp)
    51a4:	8c8e0118 	lw	t6,280(a0)
    51a8:	00808025 	move	s0,a0
    51ac:	0c000000 	jal	0 <func_8094F2C0>
    51b0:	afae004c 	sw	t6,76(sp)
    51b4:	920f0194 	lbu	t7,404(s0)
    51b8:	3c040601 	lui	a0,0x601
    51bc:	51e00054 	beqzl	t7,5310 <func_80954454+0x17c>
    51c0:	8faa004c 	lw	t2,76(sp)
    51c4:	0c000000 	jal	0 <func_8094F2C0>
    51c8:	24847694 	addiu	a0,a0,30356
    51cc:	44822000 	mtc1	v0,$f4
    51d0:	00000000 	nop
    51d4:	468021a0 	cvt.s.w	$f6,$f4
    51d8:	e7a60048 	swc1	$f6,72(sp)
    51dc:	0c000000 	jal	0 <func_8094F2C0>
    51e0:	a2000194 	sb	zero,404(s0)
    51e4:	3c014120 	lui	at,0x4120
    51e8:	44814000 	mtc1	at,$f8
    51ec:	2604014c 	addiu	a0,s0,332
    51f0:	46080282 	mul.s	$f10,$f0,$f8
    51f4:	4600540d 	trunc.w.s	$f16,$f10
    51f8:	44198000 	mfc1	t9,$f16
    51fc:	00000000 	nop
    5200:	27280005 	addiu	t0,t9,5
    5204:	ae080198 	sw	t0,408(s0)
    5208:	afa4003c 	sw	a0,60(sp)
    520c:	0c000000 	jal	0 <func_8094F2C0>
    5210:	8fa50054 	lw	a1,84(sp)
    5214:	3c060601 	lui	a2,0x601
    5218:	3c070601 	lui	a3,0x601
    521c:	24e77694 	addiu	a3,a3,30356
    5220:	24c67fc8 	addiu	a2,a2,32712
    5224:	8fa40054 	lw	a0,84(sp)
    5228:	8fa5003c 	lw	a1,60(sp)
    522c:	afa00010 	sw	zero,16(sp)
    5230:	afa00014 	sw	zero,20(sp)
    5234:	0c000000 	jal	0 <func_8094F2C0>
    5238:	afa00018 	sw	zero,24(sp)
    523c:	44800000 	mtc1	zero,$f0
    5240:	c7b20048 	lwc1	$f18,72(sp)
    5244:	3c050601 	lui	a1,0x601
    5248:	24090002 	li	t1,2
    524c:	44070000 	mfc1	a3,$f0
    5250:	afa90014 	sw	t1,20(sp)
    5254:	24a57694 	addiu	a1,a1,30356
    5258:	8fa4003c 	lw	a0,60(sp)
    525c:	3c063f80 	lui	a2,0x3f80
    5260:	e7b20010 	swc1	$f18,16(sp)
    5264:	0c000000 	jal	0 <func_8094F2C0>
    5268:	e7a00018 	swc1	$f0,24(sp)
    526c:	3c010000 	lui	at,0x0
    5270:	a0200000 	sb	zero,0(at)
    5274:	8e020118 	lw	v0,280(s0)
    5278:	3c014270 	lui	at,0x4270
    527c:	44813000 	mtc1	at,$f6
    5280:	c44400bc 	lwc1	$f4,188(v0)
    5284:	24010001 	li	at,1
    5288:	46062201 	sub.s	$f8,$f4,$f6
    528c:	e44800bc 	swc1	$f8,188(v0)
    5290:	8603001c 	lh	v1,28(s0)
    5294:	50600008 	beqzl	v1,52b8 <func_80954454+0x124>
    5298:	8e020118 	lw	v0,280(s0)
    529c:	1061000a 	beq	v1,at,52c8 <func_80954454+0x134>
    52a0:	24010002 	li	at,2
    52a4:	50610012 	beql	v1,at,52f0 <func_80954454+0x15c>
    52a8:	8e020118 	lw	v0,280(s0)
    52ac:	10000018 	b	5310 <func_80954454+0x17c>
    52b0:	8faa004c 	lw	t2,76(sp)
    52b4:	8e020118 	lw	v0,280(s0)
    52b8:	844a0030 	lh	t2,48(v0)
    52bc:	254b04b0 	addiu	t3,t2,1200
    52c0:	10000012 	b	530c <func_80954454+0x178>
    52c4:	a44b0030 	sh	t3,48(v0)
    52c8:	8e020118 	lw	v0,280(s0)
    52cc:	844c0030 	lh	t4,48(v0)
    52d0:	258dfda8 	addiu	t5,t4,-600
    52d4:	a44d0030 	sh	t5,48(v0)
    52d8:	8e020118 	lw	v0,280(s0)
    52dc:	844e0034 	lh	t6,52(v0)
    52e0:	25cffb1e 	addiu	t7,t6,-1250
    52e4:	10000009 	b	530c <func_80954454+0x178>
    52e8:	a44f0034 	sh	t7,52(v0)
    52ec:	8e020118 	lw	v0,280(s0)
    52f0:	84580030 	lh	t8,48(v0)
    52f4:	2719fda8 	addiu	t9,t8,-600
    52f8:	a4590030 	sh	t9,48(v0)
    52fc:	8e020118 	lw	v0,280(s0)
    5300:	84480034 	lh	t0,52(v0)
    5304:	250904e2 	addiu	t1,t0,1250
    5308:	a4490034 	sh	t1,52(v0)
    530c:	8faa004c 	lw	t2,76(sp)
    5310:	260b014c 	addiu	t3,s0,332
    5314:	260401f6 	addiu	a0,s0,502
    5318:	854501f8 	lh	a1,504(t2)
    531c:	afab003c 	sw	t3,60(sp)
    5320:	afa00010 	sw	zero,16(sp)
    5324:	00050823 	negu	at,a1
    5328:	00012880 	sll	a1,at,0x2
    532c:	00a12823 	subu	a1,a1,at
    5330:	00052c00 	sll	a1,a1,0x10
    5334:	00052c03 	sra	a1,a1,0x10
    5338:	24060001 	li	a2,1
    533c:	0c000000 	jal	0 <func_8094F2C0>
    5340:	240704b0 	li	a3,1200
    5344:	0c000000 	jal	0 <func_8094F2C0>
    5348:	8fa4003c 	lw	a0,60(sp)
    534c:	10400014 	beqz	v0,53a0 <func_80954454+0x20c>
    5350:	3c040601 	lui	a0,0x601
    5354:	0c000000 	jal	0 <func_8094F2C0>
    5358:	248477f4 	addiu	a0,a0,30708
    535c:	44825000 	mtc1	v0,$f10
    5360:	44800000 	mtc1	zero,$f0
    5364:	3c050601 	lui	a1,0x601
    5368:	46805420 	cvt.s.w	$f16,$f10
    536c:	240c0001 	li	t4,1
    5370:	44070000 	mfc1	a3,$f0
    5374:	afac0014 	sw	t4,20(sp)
    5378:	24a577f4 	addiu	a1,a1,30708
    537c:	8fa4003c 	lw	a0,60(sp)
    5380:	e7b00010 	swc1	$f16,16(sp)
    5384:	3c063f80 	lui	a2,0x3f80
    5388:	0c000000 	jal	0 <func_8094F2C0>
    538c:	e7a00018 	swc1	$f0,24(sp)
    5390:	8e0d0004 	lw	t5,4(s0)
    5394:	2401fffe 	li	at,-2
    5398:	01a17024 	and	t6,t5,at
    539c:	ae0e0004 	sw	t6,4(s0)
    53a0:	8e0f0198 	lw	t7,408(s0)
    53a4:	3c180000 	lui	t8,0x0
    53a8:	15e00014 	bnez	t7,53fc <func_80954454+0x268>
    53ac:	00000000 	nop
    53b0:	83180000 	lb	t8,0(t8)
    53b4:	2b01000e 	slti	at,t8,14
    53b8:	10200010 	beqz	at,53fc <func_80954454+0x268>
    53bc:	00000000 	nop
    53c0:	0c000000 	jal	0 <func_8094F2C0>
    53c4:	00000000 	nop
    53c8:	3c014120 	lui	at,0x4120
    53cc:	44819000 	mtc1	at,$f18
    53d0:	260501b4 	addiu	a1,s0,436
    53d4:	860601f6 	lh	a2,502(s0)
    53d8:	46120102 	mul.s	$f4,$f0,$f18
    53dc:	860700b6 	lh	a3,182(s0)
    53e0:	4600218d 	trunc.w.s	$f6,$f4
    53e4:	44083000 	mfc1	t0,$f6
    53e8:	00000000 	nop
    53ec:	2509000a 	addiu	t1,t0,10
    53f0:	ae090198 	sw	t1,408(s0)
    53f4:	0c000000 	jal	0 <func_8094F2C0>
    53f8:	8fa40054 	lw	a0,84(sp)
    53fc:	3c020000 	lui	v0,0x0
    5400:	80420000 	lb	v0,0(v0)
    5404:	26040168 	addiu	a0,s0,360
    5408:	24050000 	li	a1,0
    540c:	2841000e 	slti	at,v0,14
    5410:	14200009 	bnez	at,5438 <func_80954454+0x2a4>
    5414:	3c063e99 	lui	a2,0x3e99
    5418:	3c013e00 	lui	at,0x3e00
    541c:	44814000 	mtc1	at,$f8
    5420:	34c6999a 	ori	a2,a2,0x999a
    5424:	3c073e80 	lui	a3,0x3e80
    5428:	0c000000 	jal	0 <func_8094F2C0>
    542c:	e7a80010 	swc1	$f8,16(sp)
    5430:	3c020000 	lui	v0,0x0
    5434:	80420000 	lb	v0,0(v0)
    5438:	24010013 	li	at,19
    543c:	1041000a 	beq	v0,at,5468 <func_80954454+0x2d4>
    5440:	3c040000 	lui	a0,0x0
    5444:	24010014 	li	at,20
    5448:	10410035 	beq	v0,at,5520 <func_80954454+0x38c>
    544c:	24010015 	li	at,21
    5450:	10410033 	beq	v0,at,5520 <func_80954454+0x38c>
    5454:	24010016 	li	at,22
    5458:	50410032 	beql	v0,at,5524 <func_80954454+0x390>
    545c:	92080195 	lbu	t0,405(s0)
    5460:	10000079 	b	5648 <func_80954454+0x4b4>
    5464:	8e020198 	lw	v0,408(s0)
    5468:	3c0a0000 	lui	t2,0x0
    546c:	254a0000 	addiu	t2,t2,0
    5470:	8d4c0000 	lw	t4,0(t2)
    5474:	24840000 	addiu	a0,a0,0
    5478:	3c020000 	lui	v0,0x0
    547c:	ac8c0000 	sw	t4,0(a0)
    5480:	8d4b0004 	lw	t3,4(t2)
    5484:	24420000 	addiu	v0,v0,0
    5488:	8c4f0000 	lw	t7,0(v0)
    548c:	ac8b0004 	sw	t3,4(a0)
    5490:	8d4c0008 	lw	t4,8(t2)
    5494:	3c0d0000 	lui	t5,0x0
    5498:	25ad0000 	addiu	t5,t5,0
    549c:	ac8c0008 	sw	t4,8(a0)
    54a0:	adaf0000 	sw	t7,0(t5)
    54a4:	8c4e0004 	lw	t6,4(v0)
    54a8:	44805000 	mtc1	zero,$f10
    54ac:	3c063f80 	lui	a2,0x3f80
    54b0:	adae0004 	sw	t6,4(t5)
    54b4:	8c4f0008 	lw	t7,8(v0)
    54b8:	3c074120 	lui	a3,0x4120
    54bc:	adaf0008 	sw	t7,8(t5)
    54c0:	8c450000 	lw	a1,0(v0)
    54c4:	0c000000 	jal	0 <func_8094F2C0>
    54c8:	e7aa0010 	swc1	$f10,16(sp)
    54cc:	44808000 	mtc1	zero,$f16
    54d0:	3c040000 	lui	a0,0x0
    54d4:	3c050000 	lui	a1,0x0
    54d8:	8ca50000 	lw	a1,0(a1)
    54dc:	24840000 	addiu	a0,a0,0
    54e0:	3c063f80 	lui	a2,0x3f80
    54e4:	3c074120 	lui	a3,0x4120
    54e8:	0c000000 	jal	0 <func_8094F2C0>
    54ec:	e7b00010 	swc1	$f16,16(sp)
    54f0:	3c020000 	lui	v0,0x0
    54f4:	24420000 	addiu	v0,v0,0
    54f8:	3c0141a0 	lui	at,0x41a0
    54fc:	44812000 	mtc1	at,$f4
    5500:	c4520004 	lwc1	$f18,4(v0)
    5504:	3c180000 	lui	t8,0x0
    5508:	3c010000 	lui	at,0x0
    550c:	46049180 	add.s	$f6,$f18,$f4
    5510:	e4460004 	swc1	$f6,4(v0)
    5514:	83180000 	lb	t8,0(t8)
    5518:	27190001 	addiu	t9,t8,1
    551c:	a0390000 	sb	t9,0(at)
    5520:	92080195 	lbu	t0,405(s0)
    5524:	8fa90054 	lw	t1,84(sp)
    5528:	3c0a0001 	lui	t2,0x1
    552c:	1500003d 	bnez	t0,5624 <func_80954454+0x490>
    5530:	01495021 	addu	t2,t2,t1
    5534:	8d4a1de4 	lw	t2,7652(t2)
    5538:	3c0140a0 	lui	at,0x40a0
    553c:	314b0001 	andi	t3,t2,0x1
    5540:	51600020 	beqzl	t3,55c4 <func_80954454+0x430>
    5544:	8608019c 	lh	t0,412(s0)
    5548:	44816000 	mtc1	at,$f12
    554c:	0c000000 	jal	0 <func_8094F2C0>
    5550:	00000000 	nop
    5554:	3c0140e0 	lui	at,0x40e0
    5558:	44815000 	mtc1	at,$f10
    555c:	3c0140a0 	lui	at,0x40a0
    5560:	44818000 	mtc1	at,$f16
    5564:	240d0002 	li	t5,2
    5568:	afad0018 	sw	t5,24(sp)
    556c:	e7aa0010 	swc1	$f10,16(sp)
    5570:	e7b00014 	swc1	$f16,20(sp)
    5574:	860e019c 	lh	t6,412(s0)
    5578:	4600020d 	trunc.w.s	$f8,$f0
    557c:	24190001 	li	t9,1
    5580:	000e78c3 	sra	t7,t6,0x3
    5584:	25f80001 	addiu	t8,t7,1
    5588:	44989000 	mtc1	t8,$f18
    558c:	44074000 	mfc1	a3,$f8
    5590:	afb90020 	sw	t9,32(sp)
    5594:	46809120 	cvt.s.w	$f4,$f18
    5598:	00073c00 	sll	a3,a3,0x10
    559c:	00073c03 	sra	a3,a3,0x10
    55a0:	24e70006 	addiu	a3,a3,6
    55a4:	00073c00 	sll	a3,a3,0x10
    55a8:	00073c03 	sra	a3,a3,0x10
    55ac:	e7a4001c 	swc1	$f4,28(sp)
    55b0:	8fa40054 	lw	a0,84(sp)
    55b4:	02002825 	move	a1,s0
    55b8:	0c000000 	jal	0 <func_8094F2C0>
    55bc:	24060001 	li	a2,1
    55c0:	8608019c 	lh	t0,412(s0)
    55c4:	240d0001 	li	t5,1
    55c8:	02002025 	move	a0,s0
    55cc:	25090001 	addiu	t1,t0,1
    55d0:	a609019c 	sh	t1,412(s0)
    55d4:	860a019c 	lh	t2,412(s0)
    55d8:	29410020 	slti	at,t2,32
    55dc:	5420001a 	bnezl	at,5648 <func_80954454+0x4b4>
    55e0:	8e020198 	lw	v0,408(s0)
    55e4:	920b0195 	lbu	t3,405(s0)
    55e8:	a20d0197 	sb	t5,407(s0)
    55ec:	24053945 	li	a1,14661
    55f0:	256c0001 	addiu	t4,t3,1
    55f4:	0c000000 	jal	0 <func_8094F2C0>
    55f8:	a20c0195 	sb	t4,405(s0)
    55fc:	860e001c 	lh	t6,28(s0)
    5600:	24010002 	li	at,2
    5604:	3c0f0000 	lui	t7,0x0
    5608:	55c1000f 	bnel	t6,at,5648 <func_80954454+0x4b4>
    560c:	8e020198 	lw	v0,408(s0)
    5610:	81ef0000 	lb	t7,0(t7)
    5614:	3c010000 	lui	at,0x0
    5618:	25f80001 	addiu	t8,t7,1
    561c:	10000009 	b	5644 <func_80954454+0x4b0>
    5620:	a0380000 	sb	t8,0(at)
    5624:	8619019c 	lh	t9,412(s0)
    5628:	2728ffff 	addiu	t0,t9,-1
    562c:	a608019c 	sh	t0,412(s0)
    5630:	8609019c 	lh	t1,412(s0)
    5634:	55200004 	bnezl	t1,5648 <func_80954454+0x4b4>
    5638:	8e020198 	lw	v0,408(s0)
    563c:	0c000000 	jal	0 <func_8094F2C0>
    5640:	02002025 	move	a0,s0
    5644:	8e020198 	lw	v0,408(s0)
    5648:	244affff 	addiu	t2,v0,-1
    564c:	ae0a0198 	sw	t2,408(s0)
    5650:	8fbf0034 	lw	ra,52(sp)
    5654:	8fb00030 	lw	s0,48(sp)
    5658:	27bd0050 	addiu	sp,sp,80
    565c:	03e00008 	jr	ra
    5660:	00000000 	nop

00005664 <func_80954924>:
    5664:	27bdffd8 	addiu	sp,sp,-40
    5668:	afa40028 	sw	a0,40(sp)
    566c:	afbf0024 	sw	ra,36(sp)
    5670:	3c040602 	lui	a0,0x602
    5674:	afa5002c 	sw	a1,44(sp)
    5678:	0c000000 	jal	0 <func_8094F2C0>
    567c:	24848150 	addiu	a0,a0,-32432
    5680:	44822000 	mtc1	v0,$f4
    5684:	44800000 	mtc1	zero,$f0
    5688:	8fa40028 	lw	a0,40(sp)
    568c:	468021a0 	cvt.s.w	$f6,$f4
    5690:	3c050602 	lui	a1,0x602
    5694:	240e0002 	li	t6,2
    5698:	44070000 	mfc1	a3,$f0
    569c:	afae0014 	sw	t6,20(sp)
    56a0:	24a58150 	addiu	a1,a1,-32432
    56a4:	e7a60010 	swc1	$f6,16(sp)
    56a8:	3c063f80 	lui	a2,0x3f80
    56ac:	2484014c 	addiu	a0,a0,332
    56b0:	0c000000 	jal	0 <func_8094F2C0>
    56b4:	e7a00018 	swc1	$f0,24(sp)
    56b8:	8fa40028 	lw	a0,40(sp)
    56bc:	2401fffe 	li	at,-2
    56c0:	3c050000 	lui	a1,0x0
    56c4:	8c8f0004 	lw	t7,4(a0)
    56c8:	24a50000 	addiu	a1,a1,0
    56cc:	01e1c024 	and	t8,t7,at
    56d0:	0c000000 	jal	0 <func_8094F2C0>
    56d4:	ac980004 	sw	t8,4(a0)
    56d8:	8fbf0024 	lw	ra,36(sp)
    56dc:	27bd0028 	addiu	sp,sp,40
    56e0:	03e00008 	jr	ra
    56e4:	00000000 	nop

000056e8 <func_809549A8>:
    56e8:	27bdffe8 	addiu	sp,sp,-24
    56ec:	afbf0014 	sw	ra,20(sp)
    56f0:	afa40018 	sw	a0,24(sp)
    56f4:	afa5001c 	sw	a1,28(sp)
    56f8:	0c000000 	jal	0 <func_8094F2C0>
    56fc:	2484014c 	addiu	a0,a0,332
    5700:	10400012 	beqz	v0,574c <func_809549A8+0x64>
    5704:	00000000 	nop
    5708:	0c000000 	jal	0 <func_8094F2C0>
    570c:	00000000 	nop
    5710:	3c010000 	lui	at,0x0
    5714:	c4240000 	lwc1	$f4,0(at)
    5718:	4604003c 	c.lt.s	$f0,$f4
    571c:	00000000 	nop
    5720:	4500000a 	bc1f	574c <func_809549A8+0x64>
    5724:	00000000 	nop
    5728:	0c000000 	jal	0 <func_8094F2C0>
    572c:	00000000 	nop
    5730:	3c014040 	lui	at,0x4040
    5734:	44814000 	mtc1	at,$f8
    5738:	8fa40018 	lw	a0,24(sp)
    573c:	46080282 	mul.s	$f10,$f0,$f8
    5740:	c4860164 	lwc1	$f6,356(a0)
    5744:	460a3401 	sub.s	$f16,$f6,$f10
    5748:	e4900164 	swc1	$f16,356(a0)
    574c:	3c0e0000 	lui	t6,0x0
    5750:	81ce0000 	lb	t6,0(t6)
    5754:	8fa40018 	lw	a0,24(sp)
    5758:	29c1000e 	slti	at,t6,14
    575c:	54200004 	bnezl	at,5770 <func_809549A8+0x88>
    5760:	8fbf0014 	lw	ra,20(sp)
    5764:	0c000000 	jal	0 <func_8094F2C0>
    5768:	00000000 	nop
    576c:	8fbf0014 	lw	ra,20(sp)
    5770:	27bd0018 	addiu	sp,sp,24
    5774:	03e00008 	jr	ra
    5778:	00000000 	nop

0000577c <func_80954A3C>:
    577c:	27bdffd8 	addiu	sp,sp,-40
    5780:	afa40028 	sw	a0,40(sp)
    5784:	afbf0024 	sw	ra,36(sp)
    5788:	3c040602 	lui	a0,0x602
    578c:	afa5002c 	sw	a1,44(sp)
    5790:	0c000000 	jal	0 <func_8094F2C0>
    5794:	24848d18 	addiu	a0,a0,-29416
    5798:	44822000 	mtc1	v0,$f4
    579c:	3c013f80 	lui	at,0x3f80
    57a0:	44811000 	mtc1	at,$f2
    57a4:	46802020 	cvt.s.w	$f0,$f4
    57a8:	3c01c0c0 	lui	at,0xc0c0
    57ac:	44814000 	mtc1	at,$f8
    57b0:	8fa40028 	lw	a0,40(sp)
    57b4:	3c050602 	lui	a1,0x602
    57b8:	240e0001 	li	t6,1
    57bc:	46020181 	sub.s	$f6,$f0,$f2
    57c0:	44061000 	mfc1	a2,$f2
    57c4:	afae0014 	sw	t6,20(sp)
    57c8:	24a58d18 	addiu	a1,a1,-29416
    57cc:	44073000 	mfc1	a3,$f6
    57d0:	e7a00010 	swc1	$f0,16(sp)
    57d4:	2484014c 	addiu	a0,a0,332
    57d8:	0c000000 	jal	0 <func_8094F2C0>
    57dc:	e7a80018 	swc1	$f8,24(sp)
    57e0:	8fa40028 	lw	a0,40(sp)
    57e4:	2401fffe 	li	at,-2
    57e8:	3c050000 	lui	a1,0x0
    57ec:	8c8f0004 	lw	t7,4(a0)
    57f0:	24a50000 	addiu	a1,a1,0
    57f4:	01e1c024 	and	t8,t7,at
    57f8:	0c000000 	jal	0 <func_8094F2C0>
    57fc:	ac980004 	sw	t8,4(a0)
    5800:	8fbf0024 	lw	ra,36(sp)
    5804:	27bd0028 	addiu	sp,sp,40
    5808:	03e00008 	jr	ra
    580c:	00000000 	nop

00005810 <func_80954AD0>:
    5810:	27bdffd8 	addiu	sp,sp,-40
    5814:	afbf0024 	sw	ra,36(sp)
    5818:	afb00020 	sw	s0,32(sp)
    581c:	00808025 	move	s0,a0
    5820:	0c000000 	jal	0 <func_8094F2C0>
    5824:	afa5002c 	sw	a1,44(sp)
    5828:	3c020000 	lui	v0,0x0
    582c:	80420000 	lb	v0,0(v0)
    5830:	2401000a 	li	at,10
    5834:	10410009 	beq	v0,at,585c <func_80954AD0+0x4c>
    5838:	2401000b 	li	at,11
    583c:	10410007 	beq	v0,at,585c <func_80954AD0+0x4c>
    5840:	2401000c 	li	at,12
    5844:	10410005 	beq	v0,at,585c <func_80954AD0+0x4c>
    5848:	2401000d 	li	at,13
    584c:	10410007 	beq	v0,at,586c <func_80954AD0+0x5c>
    5850:	02002025 	move	a0,s0
    5854:	10000008 	b	5878 <func_80954AD0+0x68>
    5858:	860e00b6 	lh	t6,182(s0)
    585c:	0c000000 	jal	0 <func_8094F2C0>
    5860:	2604014c 	addiu	a0,s0,332
    5864:	10000004 	b	5878 <func_80954AD0+0x68>
    5868:	860e00b6 	lh	t6,182(s0)
    586c:	0c000000 	jal	0 <func_8094F2C0>
    5870:	8fa5002c 	lw	a1,44(sp)
    5874:	860e00b6 	lh	t6,182(s0)
    5878:	860f00b4 	lh	t7,180(s0)
    587c:	afa00010 	sw	zero,16(sp)
    5880:	260401f2 	addiu	a0,s0,498
    5884:	01cf2823 	subu	a1,t6,t7
    5888:	00052c00 	sll	a1,a1,0x10
    588c:	00052c03 	sra	a1,a1,0x10
    5890:	24060001 	li	a2,1
    5894:	0c000000 	jal	0 <func_8094F2C0>
    5898:	240702ee 	li	a3,750
    589c:	8e18016c 	lw	t8,364(s0)
    58a0:	260401f0 	addiu	a0,s0,496
    58a4:	24060001 	li	a2,1
    58a8:	8705002e 	lh	a1,46(t8)
    58ac:	afa00010 	sw	zero,16(sp)
    58b0:	0c000000 	jal	0 <func_8094F2C0>
    58b4:	240702ee 	li	a3,750
    58b8:	8fbf0024 	lw	ra,36(sp)
    58bc:	8fb00020 	lw	s0,32(sp)
    58c0:	27bd0028 	addiu	sp,sp,40
    58c4:	03e00008 	jr	ra
    58c8:	00000000 	nop

000058cc <func_80954B8C>:
    58cc:	27bdffd8 	addiu	sp,sp,-40
    58d0:	afa40028 	sw	a0,40(sp)
    58d4:	afbf0024 	sw	ra,36(sp)
    58d8:	3c040602 	lui	a0,0x602
    58dc:	afa5002c 	sw	a1,44(sp)
    58e0:	0c000000 	jal	0 <func_8094F2C0>
    58e4:	24848d18 	addiu	a0,a0,-29416
    58e8:	44822000 	mtc1	v0,$f4
    58ec:	3c013f80 	lui	at,0x3f80
    58f0:	44811000 	mtc1	at,$f2
    58f4:	46802020 	cvt.s.w	$f0,$f4
    58f8:	3c01c0c0 	lui	at,0xc0c0
    58fc:	44814000 	mtc1	at,$f8
    5900:	8fa40028 	lw	a0,40(sp)
    5904:	3c050602 	lui	a1,0x602
    5908:	240e0001 	li	t6,1
    590c:	46020181 	sub.s	$f6,$f0,$f2
    5910:	44061000 	mfc1	a2,$f2
    5914:	afae0014 	sw	t6,20(sp)
    5918:	24a58d18 	addiu	a1,a1,-29416
    591c:	44073000 	mfc1	a3,$f6
    5920:	e7a00010 	swc1	$f0,16(sp)
    5924:	2484014c 	addiu	a0,a0,332
    5928:	0c000000 	jal	0 <func_8094F2C0>
    592c:	e7a80018 	swc1	$f8,24(sp)
    5930:	8fa40028 	lw	a0,40(sp)
    5934:	2401fffe 	li	at,-2
    5938:	3c050000 	lui	a1,0x0
    593c:	8c8f0004 	lw	t7,4(a0)
    5940:	24a50000 	addiu	a1,a1,0
    5944:	01e1c024 	and	t8,t7,at
    5948:	0c000000 	jal	0 <func_8094F2C0>
    594c:	ac980004 	sw	t8,4(a0)
    5950:	8fbf0024 	lw	ra,36(sp)
    5954:	27bd0028 	addiu	sp,sp,40
    5958:	03e00008 	jr	ra
    595c:	00000000 	nop

00005960 <func_80954C20>:
    5960:	27bdff58 	addiu	sp,sp,-168
    5964:	afbf0034 	sw	ra,52(sp)
    5968:	afb00030 	sw	s0,48(sp)
    596c:	8cae1c44 	lw	t6,7236(a1)
    5970:	00808025 	move	s0,a0
    5974:	240f01f4 	li	t7,500
    5978:	a7af0090 	sh	t7,144(sp)
    597c:	00a02025 	move	a0,a1
    5980:	afa500ac 	sw	a1,172(sp)
    5984:	0c000000 	jal	0 <func_8094F2C0>
    5988:	afae00a4 	sw	t6,164(sp)
    598c:	10400007 	beqz	v0,59ac <func_80954C20+0x4c>
    5990:	8fa900a4 	lw	t1,164(sp)
    5994:	8c4301cc 	lw	v1,460(v0)
    5998:	8fb800a4 	lw	t8,164(sp)
    599c:	50600004 	beqzl	v1,59b0 <func_80954C20+0x50>
    59a0:	8d2b0024 	lw	t3,36(t1)
    59a4:	17030010 	bne	t8,v1,59e8 <func_80954C20+0x88>
    59a8:	3c0d0000 	lui	t5,0x0
    59ac:	8d2b0024 	lw	t3,36(t1)
    59b0:	27b9007c 	addiu	t9,sp,124
    59b4:	3c014120 	lui	at,0x4120
    59b8:	af2b0000 	sw	t3,0(t9)
    59bc:	8d2a0028 	lw	t2,40(t1)
    59c0:	44813000 	mtc1	at,$f6
    59c4:	240c3e80 	li	t4,16000
    59c8:	af2a0004 	sw	t2,4(t9)
    59cc:	8d2b002c 	lw	t3,44(t1)
    59d0:	af2b0008 	sw	t3,8(t9)
    59d4:	c7a40080 	lwc1	$f4,128(sp)
    59d8:	a7ac008e 	sh	t4,142(sp)
    59dc:	46062200 	add.s	$f8,$f4,$f6
    59e0:	10000091 	b	5c28 <func_80954C20+0x2c8>
    59e4:	e7a80080 	swc1	$f8,128(sp)
    59e8:	8dad0000 	lw	t5,0(t5)
    59ec:	3c013f00 	lui	at,0x3f00
    59f0:	44819000 	mtc1	at,$f18
    59f4:	85ae0110 	lh	t6,272(t5)
    59f8:	240f4650 	li	t7,18000
    59fc:	a7af008e 	sh	t7,142(sp)
    5a00:	448e5000 	mtc1	t6,$f10
    5a04:	27a4007c 	addiu	a0,sp,124
    5a08:	24650038 	addiu	a1,v1,56
    5a0c:	46805420 	cvt.s.w	$f16,$f10
    5a10:	46128102 	mul.s	$f4,$f16,$f18
    5a14:	e7a40074 	swc1	$f4,116(sp)
    5a18:	8c590024 	lw	t9,36(v0)
    5a1c:	ac990000 	sw	t9,0(a0)
    5a20:	8c580028 	lw	t8,40(v0)
    5a24:	ac980004 	sw	t8,4(a0)
    5a28:	8c59002c 	lw	t9,44(v0)
    5a2c:	ac990008 	sw	t9,8(a0)
    5a30:	84490032 	lh	t1,50(v0)
    5a34:	a7a9006c 	sh	t1,108(sp)
    5a38:	844a0030 	lh	t2,48(v0)
    5a3c:	a7aa0056 	sh	t2,86(sp)
    5a40:	904701d4 	lbu	a3,468(v0)
    5a44:	28e10003 	slti	at,a3,3
    5a48:	54200076 	bnezl	at,5c24 <func_80954C20+0x2c4>
    5a4c:	240f3e80 	li	t7,16000
    5a50:	afa5003c 	sw	a1,60(sp)
    5a54:	afa70070 	sw	a3,112(sp)
    5a58:	27a4007c 	addiu	a0,sp,124
    5a5c:	0c000000 	jal	0 <func_8094F2C0>
    5a60:	8fa5003c 	lw	a1,60(sp)
    5a64:	87ab006c 	lh	t3,108(sp)
    5a68:	a7a2006e 	sh	v0,110(sp)
    5a6c:	27a4007c 	addiu	a0,sp,124
    5a70:	01621823 	subu	v1,t3,v0
    5a74:	00031c00 	sll	v1,v1,0x10
    5a78:	00031c03 	sra	v1,v1,0x10
    5a7c:	a7a3005a 	sh	v1,90(sp)
    5a80:	0c000000 	jal	0 <func_8094F2C0>
    5a84:	8fa5003c 	lw	a1,60(sp)
    5a88:	87ac0056 	lh	t4,86(sp)
    5a8c:	a7a20058 	sh	v0,88(sp)
    5a90:	27a4007c 	addiu	a0,sp,124
    5a94:	01823823 	subu	a3,t4,v0
    5a98:	00073c00 	sll	a3,a3,0x10
    5a9c:	00073c03 	sra	a3,a3,0x10
    5aa0:	a7a70054 	sh	a3,84(sp)
    5aa4:	0c000000 	jal	0 <func_8094F2C0>
    5aa8:	8fa5003c 	lw	a1,60(sp)
    5aac:	3c010000 	lui	at,0x0
    5ab0:	c42e0000 	lwc1	$f14,0(at)
    5ab4:	3c014348 	lui	at,0x4348
    5ab8:	44813000 	mtc1	at,$f6
    5abc:	3c010000 	lui	at,0x0
    5ac0:	c42a0000 	lwc1	$f10,0(at)
    5ac4:	46003201 	sub.s	$f8,$f6,$f0
    5ac8:	87a3005a 	lh	v1,90(sp)
    5acc:	87a70054 	lh	a3,84(sp)
    5ad0:	460a4302 	mul.s	$f12,$f8,$f10
    5ad4:	460e603c 	c.lt.s	$f12,$f14
    5ad8:	00000000 	nop
    5adc:	45000002 	bc1f	5ae8 <func_80954C20+0x188>
    5ae0:	00000000 	nop
    5ae4:	46007306 	mov.s	$f12,$f14
    5ae8:	04630005 	bgezl	v1,5b00 <func_80954C20+0x1a0>
    5aec:	44838000 	mtc1	v1,$f16
    5af0:	00031823 	negu	v1,v1
    5af4:	00031c00 	sll	v1,v1,0x10
    5af8:	00031c03 	sra	v1,v1,0x10
    5afc:	44838000 	mtc1	v1,$f16
    5b00:	04e10004 	bgez	a3,5b14 <func_80954C20+0x1b4>
    5b04:	468084a0 	cvt.s.w	$f18,$f16
    5b08:	00073823 	negu	a3,a3
    5b0c:	00073c00 	sll	a3,a3,0x10
    5b10:	00073c03 	sra	a3,a3,0x10
    5b14:	460c9102 	mul.s	$f4,$f18,$f12
    5b18:	27a4006c 	addiu	a0,sp,108
    5b1c:	87a5006e 	lh	a1,110(sp)
    5b20:	a7a70054 	sh	a3,84(sp)
    5b24:	e7ac0050 	swc1	$f12,80(sp)
    5b28:	4600218d 	trunc.w.s	$f6,$f4
    5b2c:	44063000 	mfc1	a2,$f6
    5b30:	00000000 	nop
    5b34:	00063400 	sll	a2,a2,0x10
    5b38:	0c000000 	jal	0 <func_8094F2C0>
    5b3c:	00063403 	sra	a2,a2,0x10
    5b40:	87a70054 	lh	a3,84(sp)
    5b44:	c7ac0050 	lwc1	$f12,80(sp)
    5b48:	27a40056 	addiu	a0,sp,86
    5b4c:	44874000 	mtc1	a3,$f8
    5b50:	87a50058 	lh	a1,88(sp)
    5b54:	468042a0 	cvt.s.w	$f10,$f8
    5b58:	460c5402 	mul.s	$f16,$f10,$f12
    5b5c:	4600848d 	trunc.w.s	$f18,$f16
    5b60:	44069000 	mfc1	a2,$f18
    5b64:	00000000 	nop
    5b68:	00063400 	sll	a2,a2,0x10
    5b6c:	0c000000 	jal	0 <func_8094F2C0>
    5b70:	00063403 	sra	a2,a2,0x10
    5b74:	0c000000 	jal	0 <func_8094F2C0>
    5b78:	87a40056 	lh	a0,86(sp)
    5b7c:	3c014140 	lui	at,0x4140
    5b80:	44813000 	mtc1	at,$f6
    5b84:	46000107 	neg.s	$f4,$f0
    5b88:	87a40056 	lh	a0,86(sp)
    5b8c:	46062202 	mul.s	$f8,$f4,$f6
    5b90:	0c000000 	jal	0 <func_8094F2C0>
    5b94:	e7a80068 	swc1	$f8,104(sp)
    5b98:	3c014140 	lui	at,0x4140
    5b9c:	44815000 	mtc1	at,$f10
    5ba0:	87a4006c 	lh	a0,108(sp)
    5ba4:	460a0402 	mul.s	$f16,$f0,$f10
    5ba8:	0c000000 	jal	0 <func_8094F2C0>
    5bac:	e7b0005c 	swc1	$f16,92(sp)
    5bb0:	c7b2005c 	lwc1	$f18,92(sp)
    5bb4:	87a4006c 	lh	a0,108(sp)
    5bb8:	46120102 	mul.s	$f4,$f0,$f18
    5bbc:	0c000000 	jal	0 <func_8094F2C0>
    5bc0:	e7a40064 	swc1	$f4,100(sp)
    5bc4:	c7a20074 	lwc1	$f2,116(sp)
    5bc8:	c7a80064 	lwc1	$f8,100(sp)
    5bcc:	c7a6007c 	lwc1	$f6,124(sp)
    5bd0:	c7a40068 	lwc1	$f4,104(sp)
    5bd4:	46024282 	mul.s	$f10,$f8,$f2
    5bd8:	c7b20080 	lwc1	$f18,128(sp)
    5bdc:	8fa20070 	lw	v0,112(sp)
    5be0:	46022202 	mul.s	$f8,$f4,$f2
    5be4:	2442ffff 	addiu	v0,v0,-1
    5be8:	28410003 	slti	at,v0,3
    5bec:	afa20070 	sw	v0,112(sp)
    5bf0:	460a3400 	add.s	$f16,$f6,$f10
    5bf4:	c7aa0084 	lwc1	$f10,132(sp)
    5bf8:	46089180 	add.s	$f6,$f18,$f8
    5bfc:	e7b0007c 	swc1	$f16,124(sp)
    5c00:	c7b0005c 	lwc1	$f16,92(sp)
    5c04:	e7a60080 	swc1	$f6,128(sp)
    5c08:	46100102 	mul.s	$f4,$f0,$f16
    5c0c:	00000000 	nop
    5c10:	46022482 	mul.s	$f18,$f4,$f2
    5c14:	46125200 	add.s	$f8,$f10,$f18
    5c18:	1020ff8f 	beqz	at,5a58 <func_80954C20+0xf8>
    5c1c:	e7a80084 	swc1	$f8,132(sp)
    5c20:	240f3e80 	li	t7,16000
    5c24:	a7af0090 	sh	t7,144(sp)
    5c28:	0c000000 	jal	0 <func_8094F2C0>
    5c2c:	2604014c 	addiu	a0,s0,332
    5c30:	0c000000 	jal	0 <func_8094F2C0>
    5c34:	02002025 	move	a0,s0
    5c38:	3c020000 	lui	v0,0x0
    5c3c:	90420000 	lbu	v0,0(v0)
    5c40:	02002025 	move	a0,s0
    5c44:	3c180000 	lui	t8,0x0
    5c48:	2841000f 	slti	at,v0,15
    5c4c:	14200005 	bnez	at,5c64 <func_80954C20+0x304>
    5c50:	00000000 	nop
    5c54:	0c000000 	jal	0 <func_8094F2C0>
    5c58:	8fa500ac 	lw	a1,172(sp)
    5c5c:	100001ca 	b	6388 <func_80954C20+0xa28>
    5c60:	8fbf0034 	lw	ra,52(sp)
    5c64:	93180000 	lbu	t8,0(t8)
    5c68:	02002025 	move	a0,s0
    5c6c:	2841000f 	slti	at,v0,15
    5c70:	3319007f 	andi	t9,t8,0x7f
    5c74:	13200005 	beqz	t9,5c8c <func_80954C20+0x32c>
    5c78:	00000000 	nop
    5c7c:	0c000000 	jal	0 <func_8094F2C0>
    5c80:	8fa500ac 	lw	a1,172(sp)
    5c84:	100001c0 	b	6388 <func_80954C20+0xa28>
    5c88:	8fbf0034 	lw	ra,52(sp)
    5c8c:	1020000d 	beqz	at,5cc4 <func_80954C20+0x364>
    5c90:	27a4007c 	addiu	a0,sp,124
    5c94:	8e090118 	lw	t1,280(s0)
    5c98:	44803000 	mtc1	zero,$f6
    5c9c:	8fa500ac 	lw	a1,172(sp)
    5ca0:	c5300068 	lwc1	$f16,104(t1)
    5ca4:	46103032 	c.eq.s	$f6,$f16
    5ca8:	00000000 	nop
    5cac:	45010005 	bc1t	5cc4 <func_80954C20+0x364>
    5cb0:	00000000 	nop
    5cb4:	0c000000 	jal	0 <func_8094F2C0>
    5cb8:	02002025 	move	a0,s0
    5cbc:	100001b2 	b	6388 <func_80954C20+0xa28>
    5cc0:	8fbf0034 	lw	ra,52(sp)
    5cc4:	0c000000 	jal	0 <func_8094F2C0>
    5cc8:	260501b4 	addiu	a1,s0,436
    5ccc:	860600b6 	lh	a2,182(s0)
    5cd0:	00024400 	sll	t0,v0,0x10
    5cd4:	00084403 	sra	t0,t0,0x10
    5cd8:	00462023 	subu	a0,v0,a2
    5cdc:	00042400 	sll	a0,a0,0x10
    5ce0:	00042403 	sra	a0,a0,0x10
    5ce4:	04800003 	bltz	a0,5cf4 <func_80954C20+0x394>
    5ce8:	87aa008e 	lh	t2,142(sp)
    5cec:	10000002 	b	5cf8 <func_80954C20+0x398>
    5cf0:	00801825 	move	v1,a0
    5cf4:	00041823 	negu	v1,a0
    5cf8:	0143082a 	slt	at,t2,v1
    5cfc:	10200004 	beqz	at,5d10 <func_80954C20+0x3b0>
    5d00:	3c0b0000 	lui	t3,0x0
    5d04:	92030195 	lbu	v1,405(s0)
    5d08:	106000c2 	beqz	v1,6014 <func_80954C20+0x6b4>
    5d0c:	00000000 	nop
    5d10:	916b0000 	lbu	t3,0(t3)
    5d14:	92030195 	lbu	v1,405(s0)
    5d18:	8fad00a4 	lw	t5,164(sp)
    5d1c:	316c0080 	andi	t4,t3,0x80
    5d20:	158000bc 	bnez	t4,6014 <func_80954C20+0x6b4>
    5d24:	00000000 	nop
    5d28:	8dae067c 	lw	t6,1660(t5)
    5d2c:	000e7940 	sll	t7,t6,0x5
    5d30:	05e000b8 	bltz	t7,6014 <func_80954C20+0x6b4>
    5d34:	00000000 	nop
    5d38:	146000b4 	bnez	v1,600c <func_80954C20+0x6ac>
    5d3c:	00462823 	subu	a1,v0,a2
    5d40:	00052c00 	sll	a1,a1,0x10
    5d44:	00052c03 	sra	a1,a1,0x10
    5d48:	04a00003 	bltz	a1,5d58 <func_80954C20+0x3f8>
    5d4c:	260401e6 	addiu	a0,s0,486
    5d50:	10000002 	b	5d5c <func_80954C20+0x3fc>
    5d54:	00a01825 	move	v1,a1
    5d58:	00051823 	negu	v1,a1
    5d5c:	28611771 	slti	at,v1,6001
    5d60:	14200006 	bnez	at,5d7c <func_80954C20+0x41c>
    5d64:	24060001 	li	a2,1
    5d68:	58a00004 	blezl	a1,5d7c <func_80954C20+0x41c>
    5d6c:	2405e890 	li	a1,-6000
    5d70:	10000002 	b	5d7c <func_80954C20+0x41c>
    5d74:	24051770 	li	a1,6000
    5d78:	2405e890 	li	a1,-6000
    5d7c:	240706d6 	li	a3,1750
    5d80:	afa00010 	sw	zero,16(sp)
    5d84:	a7a50094 	sh	a1,148(sp)
    5d88:	0c000000 	jal	0 <func_8094F2C0>
    5d8c:	a7a80098 	sh	t0,152(sp)
    5d90:	87a50094 	lh	a1,148(sp)
    5d94:	04400005 	bltz	v0,5dac <func_80954C20+0x44c>
    5d98:	87a80098 	lh	t0,152(sp)
    5d9c:	00024c00 	sll	t1,v0,0x10
    5da0:	00095403 	sra	t2,t1,0x10
    5da4:	10000005 	b	5dbc <func_80954C20+0x45c>
    5da8:	afaa0088 	sw	t2,136(sp)
    5dac:	00025c00 	sll	t3,v0,0x10
    5db0:	000b6403 	sra	t4,t3,0x10
    5db4:	000c6823 	negu	t5,t4
    5db8:	afad0088 	sw	t5,136(sp)
    5dbc:	01052823 	subu	a1,t0,a1
    5dc0:	00052c00 	sll	a1,a1,0x10
    5dc4:	00052c03 	sra	a1,a1,0x10
    5dc8:	04a00003 	bltz	a1,5dd8 <func_80954C20+0x478>
    5dcc:	260401ec 	addiu	a0,s0,492
    5dd0:	10000002 	b	5ddc <func_80954C20+0x47c>
    5dd4:	00a01825 	move	v1,a1
    5dd8:	00051823 	negu	v1,a1
    5ddc:	28611771 	slti	at,v1,6001
    5de0:	14200006 	bnez	at,5dfc <func_80954C20+0x49c>
    5de4:	24060001 	li	a2,1
    5de8:	58a00004 	blezl	a1,5dfc <func_80954C20+0x49c>
    5dec:	2405e890 	li	a1,-6000
    5df0:	10000002 	b	5dfc <func_80954C20+0x49c>
    5df4:	24051770 	li	a1,6000
    5df8:	2405e890 	li	a1,-6000
    5dfc:	240706d6 	li	a3,1750
    5e00:	0c000000 	jal	0 <func_8094F2C0>
    5e04:	afa00010 	sw	zero,16(sp)
    5e08:	04400004 	bltz	v0,5e1c <func_80954C20+0x4bc>
    5e0c:	8fae0088 	lw	t6,136(sp)
    5e10:	00021c00 	sll	v1,v0,0x10
    5e14:	10000004 	b	5e28 <func_80954C20+0x4c8>
    5e18:	00031c03 	sra	v1,v1,0x10
    5e1c:	00021c00 	sll	v1,v0,0x10
    5e20:	00031c03 	sra	v1,v1,0x10
    5e24:	00031823 	negu	v1,v1
    5e28:	01c37821 	addu	t7,t6,v1
    5e2c:	260401cc 	addiu	a0,s0,460
    5e30:	afaf0088 	sw	t7,136(sp)
    5e34:	afa4003c 	sw	a0,60(sp)
    5e38:	0c000000 	jal	0 <func_8094F2C0>
    5e3c:	27a5007c 	addiu	a1,sp,124
    5e40:	2445c000 	addiu	a1,v0,-16384
    5e44:	00052c00 	sll	a1,a1,0x10
    5e48:	00052c03 	sra	a1,a1,0x10
    5e4c:	260401f2 	addiu	a0,s0,498
    5e50:	24060001 	li	a2,1
    5e54:	240709c4 	li	a3,2500
    5e58:	0c000000 	jal	0 <func_8094F2C0>
    5e5c:	afa00010 	sw	zero,16(sp)
    5e60:	04400004 	bltz	v0,5e74 <func_80954C20+0x514>
    5e64:	8fb80088 	lw	t8,136(sp)
    5e68:	00021c00 	sll	v1,v0,0x10
    5e6c:	10000004 	b	5e80 <func_80954C20+0x520>
    5e70:	00031c03 	sra	v1,v1,0x10
    5e74:	00021c00 	sll	v1,v0,0x10
    5e78:	00031c03 	sra	v1,v1,0x10
    5e7c:	00031823 	negu	v1,v1
    5e80:	0303c821 	addu	t9,t8,v1
    5e84:	afb90088 	sw	t9,136(sp)
    5e88:	8e02016c 	lw	v0,364(s0)
    5e8c:	860a00b4 	lh	t2,180(s0)
    5e90:	27a4007c 	addiu	a0,sp,124
    5e94:	84490022 	lh	t1,34(v0)
    5e98:	844c000a 	lh	t4,10(v0)
    5e9c:	844e0010 	lh	t6,16(v0)
    5ea0:	012a5821 	addu	t3,t1,t2
    5ea4:	84580016 	lh	t8,22(v0)
    5ea8:	8449001c 	lh	t1,28(v0)
    5eac:	016c6821 	addu	t5,t3,t4
    5eb0:	01ae7821 	addu	t7,t5,t6
    5eb4:	01f8c821 	addu	t9,t7,t8
    5eb8:	03295021 	addu	t2,t9,t1
    5ebc:	a7aa0096 	sh	t2,150(sp)
    5ec0:	0c000000 	jal	0 <func_8094F2C0>
    5ec4:	260501c0 	addiu	a1,s0,448
    5ec8:	87ab0096 	lh	t3,150(sp)
    5ecc:	260401ea 	addiu	a0,s0,490
    5ed0:	24060001 	li	a2,1
    5ed4:	004b2823 	subu	a1,v0,t3
    5ed8:	00052c00 	sll	a1,a1,0x10
    5edc:	00052c03 	sra	a1,a1,0x10
    5ee0:	24070fa0 	li	a3,4000
    5ee4:	0c000000 	jal	0 <func_8094F2C0>
    5ee8:	afa00010 	sw	zero,16(sp)
    5eec:	04400004 	bltz	v0,5f00 <func_80954C20+0x5a0>
    5ef0:	8fac0088 	lw	t4,136(sp)
    5ef4:	00021c00 	sll	v1,v0,0x10
    5ef8:	10000004 	b	5f0c <func_80954C20+0x5ac>
    5efc:	00031c03 	sra	v1,v1,0x10
    5f00:	00021c00 	sll	v1,v0,0x10
    5f04:	00031c03 	sra	v1,v1,0x10
    5f08:	00031823 	negu	v1,v1
    5f0c:	01836821 	addu	t5,t4,v1
    5f10:	afad0088 	sw	t5,136(sp)
    5f14:	8fa4003c 	lw	a0,60(sp)
    5f18:	0c000000 	jal	0 <func_8094F2C0>
    5f1c:	27a5007c 	addiu	a1,sp,124
    5f20:	00022823 	negu	a1,v0
    5f24:	00052c00 	sll	a1,a1,0x10
    5f28:	00052c03 	sra	a1,a1,0x10
    5f2c:	260401f0 	addiu	a0,s0,496
    5f30:	24060001 	li	a2,1
    5f34:	24070fa0 	li	a3,4000
    5f38:	0c000000 	jal	0 <func_8094F2C0>
    5f3c:	afa00010 	sw	zero,16(sp)
    5f40:	04400004 	bltz	v0,5f54 <func_80954C20+0x5f4>
    5f44:	3c013f80 	lui	at,0x3f80
    5f48:	00021c00 	sll	v1,v0,0x10
    5f4c:	10000004 	b	5f60 <func_80954C20+0x600>
    5f50:	00031c03 	sra	v1,v1,0x10
    5f54:	00021c00 	sll	v1,v0,0x10
    5f58:	00031c03 	sra	v1,v1,0x10
    5f5c:	00031823 	negu	v1,v1
    5f60:	8fae0088 	lw	t6,136(sp)
    5f64:	44801000 	mtc1	zero,$f2
    5f68:	44810000 	mtc1	at,$f0
    5f6c:	01c37821 	addu	t7,t6,v1
    5f70:	afaf0088 	sw	t7,136(sp)
    5f74:	e6020168 	swc1	$f2,360(s0)
    5f78:	44051000 	mfc1	a1,$f2
    5f7c:	44060000 	mfc1	a2,$f0
    5f80:	26040164 	addiu	a0,s0,356
    5f84:	3c074000 	lui	a3,0x4000
    5f88:	0c000000 	jal	0 <func_8094F2C0>
    5f8c:	e7a20010 	swc1	$f2,16(sp)
    5f90:	44802000 	mtc1	zero,$f4
    5f94:	8fb80088 	lw	t8,136(sp)
    5f98:	87b90090 	lh	t9,144(sp)
    5f9c:	46040032 	c.eq.s	$f0,$f4
    5fa0:	0319082b 	sltu	at,t8,t9
    5fa4:	45000019 	bc1f	600c <func_80954C20+0x6ac>
    5fa8:	00000000 	nop
    5fac:	1020000c 	beqz	at,5fe0 <func_80954C20+0x680>
    5fb0:	00000000 	nop
    5fb4:	92090195 	lbu	t1,405(s0)
    5fb8:	a600019c 	sh	zero,412(s0)
    5fbc:	27ab007c 	addiu	t3,sp,124
    5fc0:	252a0001 	addiu	t2,t1,1
    5fc4:	a20a0195 	sb	t2,405(s0)
    5fc8:	8d6d0000 	lw	t5,0(t3)
    5fcc:	ae0d01d8 	sw	t5,472(s0)
    5fd0:	8d6c0004 	lw	t4,4(t3)
    5fd4:	ae0c01dc 	sw	t4,476(s0)
    5fd8:	8d6d0008 	lw	t5,8(t3)
    5fdc:	ae0d01e0 	sw	t5,480(s0)
    5fe0:	0c000000 	jal	0 <func_8094F2C0>
    5fe4:	00000000 	nop
    5fe8:	3c010000 	lui	at,0x0
    5fec:	c42a0000 	lwc1	$f10,0(at)
    5ff0:	02002025 	move	a0,s0
    5ff4:	460a003c 	c.lt.s	$f0,$f10
    5ff8:	00000000 	nop
    5ffc:	45000003 	bc1f	600c <func_80954C20+0x6ac>
    6000:	00000000 	nop
    6004:	0c000000 	jal	0 <func_8094F2C0>
    6008:	24053143 	li	a1,12611
    600c:	1000005d 	b	6184 <func_80954C20+0x824>
    6010:	92030195 	lbu	v1,405(s0)
    6014:	54600005 	bnezl	v1,602c <func_80954C20+0x6cc>
    6018:	920f0348 	lbu	t7,840(s0)
    601c:	860e019c 	lh	t6,412(s0)
    6020:	05c3002a 	bgezl	t6,60cc <func_80954C20+0x76c>
    6024:	260401e6 	addiu	a0,s0,486
    6028:	920f0348 	lbu	t7,840(s0)
    602c:	8603019c 	lh	v1,412(s0)
    6030:	31f80002 	andi	t8,t7,0x2
    6034:	1300000e 	beqz	t8,6070 <func_80954C20+0x710>
    6038:	00000000 	nop
    603c:	18600010 	blez	v1,6080 <func_80954C20+0x720>
    6040:	02002025 	move	a0,s0
    6044:	0c000000 	jal	0 <func_8094F2C0>
    6048:	24053946 	li	a1,14662
    604c:	0c000000 	jal	0 <func_8094F2C0>
    6050:	8fa400ac 	lw	a0,172(sp)
    6054:	8e0a0118 	lw	t2,280(s0)
    6058:	2419ffff 	li	t9,-1
    605c:	a619019c 	sh	t9,412(s0)
    6060:	24090006 	li	t1,6
    6064:	a1490194 	sb	t1,404(t2)
    6068:	10000005 	b	6080 <func_80954C20+0x720>
    606c:	8603019c 	lh	v1,412(s0)
    6070:	18600003 	blez	v1,6080 <func_80954C20+0x720>
    6074:	00000000 	nop
    6078:	a600019c 	sh	zero,412(s0)
    607c:	8603019c 	lh	v1,412(s0)
    6080:	04610011 	bgez	v1,60c8 <func_80954C20+0x768>
    6084:	8fab00a4 	lw	t3,164(sp)
    6088:	8d6c067c 	lw	t4,1660(t3)
    608c:	8fa400ac 	lw	a0,172(sp)
    6090:	02002825 	move	a1,s0
    6094:	000c6940 	sll	t5,t4,0x5
    6098:	05a1000b 	bgez	t5,60c8 <func_80954C20+0x768>
    609c:	24060001 	li	a2,1
    60a0:	44800000 	mtc1	zero,$f0
    60a4:	240e0006 	li	t6,6
    60a8:	240f0001 	li	t7,1
    60ac:	afaf0020 	sw	t7,32(sp)
    60b0:	afae0018 	sw	t6,24(sp)
    60b4:	2407001e 	li	a3,30
    60b8:	e7a00010 	swc1	$f0,16(sp)
    60bc:	e7a00014 	swc1	$f0,20(sp)
    60c0:	0c000000 	jal	0 <func_8094F2C0>
    60c4:	e7a0001c 	swc1	$f0,28(sp)
    60c8:	260401e6 	addiu	a0,s0,486
    60cc:	00002825 	move	a1,zero
    60d0:	24060001 	li	a2,1
    60d4:	240706d6 	li	a3,1750
    60d8:	0c000000 	jal	0 <func_8094F2C0>
    60dc:	afa00010 	sw	zero,16(sp)
    60e0:	260401ec 	addiu	a0,s0,492
    60e4:	00002825 	move	a1,zero
    60e8:	24060001 	li	a2,1
    60ec:	240706d6 	li	a3,1750
    60f0:	0c000000 	jal	0 <func_8094F2C0>
    60f4:	afa00010 	sw	zero,16(sp)
    60f8:	260401ea 	addiu	a0,s0,490
    60fc:	00002825 	move	a1,zero
    6100:	24060001 	li	a2,1
    6104:	240706d6 	li	a3,1750
    6108:	0c000000 	jal	0 <func_8094F2C0>
    610c:	afa00010 	sw	zero,16(sp)
    6110:	861800b6 	lh	t8,182(s0)
    6114:	861900b4 	lh	t9,180(s0)
    6118:	afa00010 	sw	zero,16(sp)
    611c:	260401f2 	addiu	a0,s0,498
    6120:	03192823 	subu	a1,t8,t9
    6124:	00052c00 	sll	a1,a1,0x10
    6128:	00052c03 	sra	a1,a1,0x10
    612c:	24060001 	li	a2,1
    6130:	0c000000 	jal	0 <func_8094F2C0>
    6134:	240706d6 	li	a3,1750
    6138:	8e09016c 	lw	t1,364(s0)
    613c:	260401f0 	addiu	a0,s0,496
    6140:	24060001 	li	a2,1
    6144:	8525002e 	lh	a1,46(t1)
    6148:	afa00010 	sw	zero,16(sp)
    614c:	0c000000 	jal	0 <func_8094F2C0>
    6150:	240706d6 	li	a3,1750
    6154:	3c013f80 	lui	at,0x3f80
    6158:	44810000 	mtc1	at,$f0
    615c:	44809000 	mtc1	zero,$f18
    6160:	3c073d4c 	lui	a3,0x3d4c
    6164:	44050000 	mfc1	a1,$f0
    6168:	44060000 	mfc1	a2,$f0
    616c:	34e7cccd 	ori	a3,a3,0xcccd
    6170:	26040168 	addiu	a0,s0,360
    6174:	0c000000 	jal	0 <func_8094F2C0>
    6178:	e7b20010 	swc1	$f18,16(sp)
    617c:	a2000195 	sb	zero,405(s0)
    6180:	300300ff 	andi	v1,zero,0xff
    6184:	1060007f 	beqz	v1,6384 <func_80954C20+0xa24>
    6188:	24010002 	li	at,2
    618c:	5061007e 	beql	v1,at,6388 <func_80954C20+0xa28>
    6190:	8fbf0034 	lw	ra,52(sp)
    6194:	8603019c 	lh	v1,412(s0)
    6198:	8fa400ac 	lw	a0,172(sp)
    619c:	02002825 	move	a1,s0
    61a0:	28610020 	slti	at,v1,32
    61a4:	14200044 	bnez	at,62b8 <func_80954C20+0x958>
    61a8:	24060002 	li	a2,2
    61ac:	24010020 	li	at,32
    61b0:	14610003 	bne	v1,at,61c0 <func_80954C20+0x860>
    61b4:	02002025 	move	a0,s0
    61b8:	0c000000 	jal	0 <func_8094F2C0>
    61bc:	24053942 	li	a1,14658
    61c0:	3c014170 	lui	at,0x4170
    61c4:	44810000 	mtc1	at,$f0
    61c8:	3c0140a0 	lui	at,0x40a0
    61cc:	44814000 	mtc1	at,$f8
    61d0:	240a0003 	li	t2,3
    61d4:	240b0001 	li	t3,1
    61d8:	afab0020 	sw	t3,32(sp)
    61dc:	afaa0018 	sw	t2,24(sp)
    61e0:	8fa400ac 	lw	a0,172(sp)
    61e4:	02002825 	move	a1,s0
    61e8:	24060002 	li	a2,2
    61ec:	2407006e 	li	a3,110
    61f0:	e7a00010 	swc1	$f0,16(sp)
    61f4:	e7a00014 	swc1	$f0,20(sp)
    61f8:	0c000000 	jal	0 <func_8094F2C0>
    61fc:	e7a8001c 	swc1	$f8,28(sp)
    6200:	3c014170 	lui	at,0x4170
    6204:	44810000 	mtc1	at,$f0
    6208:	3c0140c0 	lui	at,0x40c0
    620c:	44813000 	mtc1	at,$f6
    6210:	240c0003 	li	t4,3
    6214:	240d0001 	li	t5,1
    6218:	afad0020 	sw	t5,32(sp)
    621c:	afac0018 	sw	t4,24(sp)
    6220:	8fa400ac 	lw	a0,172(sp)
    6224:	02002825 	move	a1,s0
    6228:	24060002 	li	a2,2
    622c:	2407006e 	li	a3,110
    6230:	e7a00010 	swc1	$f0,16(sp)
    6234:	e7a00014 	swc1	$f0,20(sp)
    6238:	0c000000 	jal	0 <func_8094F2C0>
    623c:	e7a6001c 	swc1	$f6,28(sp)
    6240:	3c014170 	lui	at,0x4170
    6244:	44810000 	mtc1	at,$f0
    6248:	3c0140e0 	lui	at,0x40e0
    624c:	44818000 	mtc1	at,$f16
    6250:	240e0003 	li	t6,3
    6254:	240f0001 	li	t7,1
    6258:	afaf0020 	sw	t7,32(sp)
    625c:	afae0018 	sw	t6,24(sp)
    6260:	8fa400ac 	lw	a0,172(sp)
    6264:	02002825 	move	a1,s0
    6268:	24060002 	li	a2,2
    626c:	2407006e 	li	a3,110
    6270:	e7a00010 	swc1	$f0,16(sp)
    6274:	e7a00014 	swc1	$f0,20(sp)
    6278:	0c000000 	jal	0 <func_8094F2C0>
    627c:	e7b0001c 	swc1	$f16,28(sp)
    6280:	8fa400ac 	lw	a0,172(sp)
    6284:	3c010001 	lui	at,0x1
    6288:	34211e60 	ori	at,at,0x1e60
    628c:	26060338 	addiu	a2,s0,824
    6290:	00812821 	addu	a1,a0,at
    6294:	afa5003c 	sw	a1,60(sp)
    6298:	0c000000 	jal	0 <func_8094F2C0>
    629c:	afa60038 	sw	a2,56(sp)
    62a0:	8fa5003c 	lw	a1,60(sp)
    62a4:	8fa60038 	lw	a2,56(sp)
    62a8:	0c000000 	jal	0 <func_8094F2C0>
    62ac:	8fa400ac 	lw	a0,172(sp)
    62b0:	1000002d 	b	6368 <func_80954C20+0xa08>
    62b4:	8603019c 	lh	v1,412(s0)
    62b8:	0003c8c3 	sra	t9,v1,0x3
    62bc:	27290001 	addiu	t1,t9,1
    62c0:	44895000 	mtc1	t1,$f10
    62c4:	3c014170 	lui	at,0x4170
    62c8:	44810000 	mtc1	at,$f0
    62cc:	468054a0 	cvt.s.w	$f18,$f10
    62d0:	44802000 	mtc1	zero,$f4
    62d4:	24180005 	li	t8,5
    62d8:	240a0001 	li	t2,1
    62dc:	afaa0020 	sw	t2,32(sp)
    62e0:	afb80018 	sw	t8,24(sp)
    62e4:	e7b2001c 	swc1	$f18,28(sp)
    62e8:	24070032 	li	a3,50
    62ec:	e7a00010 	swc1	$f0,16(sp)
    62f0:	0c000000 	jal	0 <func_8094F2C0>
    62f4:	e7a40014 	swc1	$f4,20(sp)
    62f8:	8603019c 	lh	v1,412(s0)
    62fc:	2401001e 	li	at,30
    6300:	54610005 	bnel	v1,at,6318 <func_80954C20+0x9b8>
    6304:	24010014 	li	at,20
    6308:	0c000000 	jal	0 <func_8094F2C0>
    630c:	8fa400ac 	lw	a0,172(sp)
    6310:	8603019c 	lh	v1,412(s0)
    6314:	24010014 	li	at,20
    6318:	54610014 	bnel	v1,at,636c <func_80954C20+0xa0c>
    631c:	246f0001 	addiu	t7,v1,1
    6320:	8e0c01cc 	lw	t4,460(s0)
    6324:	27a70044 	addiu	a3,sp,68
    6328:	3c050000 	lui	a1,0x0
    632c:	acec0000 	sw	t4,0(a3)
    6330:	8e0b01d0 	lw	t3,464(s0)
    6334:	260d01f6 	addiu	t5,s0,502
    6338:	240e0064 	li	t6,100
    633c:	aceb0004 	sw	t3,4(a3)
    6340:	8e0c01d4 	lw	t4,468(s0)
    6344:	24a50000 	addiu	a1,a1,0
    6348:	02003025 	move	a2,s0
    634c:	acec0008 	sw	t4,8(a3)
    6350:	afa00018 	sw	zero,24(sp)
    6354:	afae0014 	sw	t6,20(sp)
    6358:	afad0010 	sw	t5,16(sp)
    635c:	0c000000 	jal	0 <func_8094F2C0>
    6360:	8fa400ac 	lw	a0,172(sp)
    6364:	8603019c 	lh	v1,412(s0)
    6368:	246f0001 	addiu	t7,v1,1
    636c:	a60f019c 	sh	t7,412(s0)
    6370:	8618019c 	lh	t8,412(s0)
    6374:	2b010028 	slti	at,t8,40
    6378:	54200003 	bnezl	at,6388 <func_80954C20+0xa28>
    637c:	8fbf0034 	lw	ra,52(sp)
    6380:	a2000195 	sb	zero,405(s0)
    6384:	8fbf0034 	lw	ra,52(sp)
    6388:	8fb00030 	lw	s0,48(sp)
    638c:	27bd00a8 	addiu	sp,sp,168
    6390:	03e00008 	jr	ra
    6394:	00000000 	nop

00006398 <func_80955658>:
    6398:	27bdffd0 	addiu	sp,sp,-48
    639c:	afbf002c 	sw	ra,44(sp)
    63a0:	afb00028 	sw	s0,40(sp)
    63a4:	00808025 	move	s0,a0
    63a8:	0c000000 	jal	0 <func_8094F2C0>
    63ac:	afa50034 	sw	a1,52(sp)
    63b0:	3c013f00 	lui	at,0x3f00
    63b4:	44812000 	mtc1	at,$f4
    63b8:	3c040602 	lui	a0,0x602
    63bc:	4600203c 	c.lt.s	$f4,$f0
    63c0:	00000000 	nop
    63c4:	45000014 	bc1f	6418 <func_80955658+0x80>
    63c8:	00000000 	nop
    63cc:	3c040602 	lui	a0,0x602
    63d0:	0c000000 	jal	0 <func_8094F2C0>
    63d4:	24848a68 	addiu	a0,a0,-30104
    63d8:	44823000 	mtc1	v0,$f6
    63dc:	3c014080 	lui	at,0x4080
    63e0:	44815000 	mtc1	at,$f10
    63e4:	46803220 	cvt.s.w	$f8,$f6
    63e8:	3c050602 	lui	a1,0x602
    63ec:	240e0003 	li	t6,3
    63f0:	afae0014 	sw	t6,20(sp)
    63f4:	24a58a68 	addiu	a1,a1,-30104
    63f8:	2604014c 	addiu	a0,s0,332
    63fc:	e7a80010 	swc1	$f8,16(sp)
    6400:	3c063f00 	lui	a2,0x3f00
    6404:	24070000 	li	a3,0
    6408:	0c000000 	jal	0 <func_8094F2C0>
    640c:	e7aa0018 	swc1	$f10,24(sp)
    6410:	10000012 	b	645c <func_80955658+0xc4>
    6414:	2418000c 	li	t8,12
    6418:	0c000000 	jal	0 <func_8094F2C0>
    641c:	24848b90 	addiu	a0,a0,-29808
    6420:	44828000 	mtc1	v0,$f16
    6424:	3c014080 	lui	at,0x4080
    6428:	44812000 	mtc1	at,$f4
    642c:	468084a0 	cvt.s.w	$f18,$f16
    6430:	3c050602 	lui	a1,0x602
    6434:	240f0003 	li	t7,3
    6438:	afaf0014 	sw	t7,20(sp)
    643c:	24a58b90 	addiu	a1,a1,-29808
    6440:	2604014c 	addiu	a0,s0,332
    6444:	e7b20010 	swc1	$f18,16(sp)
    6448:	3c063f00 	lui	a2,0x3f00
    644c:	24070000 	li	a3,0
    6450:	0c000000 	jal	0 <func_8094F2C0>
    6454:	e7a40018 	swc1	$f4,24(sp)
    6458:	2418000c 	li	t8,12
    645c:	afb80010 	sw	t8,16(sp)
    6460:	02002025 	move	a0,s0
    6464:	00002825 	move	a1,zero
    6468:	240600ff 	li	a2,255
    646c:	0c000000 	jal	0 <func_8094F2C0>
    6470:	00003825 	move	a3,zero
    6474:	3c050000 	lui	a1,0x0
    6478:	a2000195 	sb	zero,405(s0)
    647c:	24a50000 	addiu	a1,a1,0
    6480:	0c000000 	jal	0 <func_8094F2C0>
    6484:	02002025 	move	a0,s0
    6488:	8fbf002c 	lw	ra,44(sp)
    648c:	8fb00028 	lw	s0,40(sp)
    6490:	27bd0030 	addiu	sp,sp,48
    6494:	03e00008 	jr	ra
    6498:	00000000 	nop

0000649c <func_8095575C>:
    649c:	27bdffd8 	addiu	sp,sp,-40
    64a0:	afbf0024 	sw	ra,36(sp)
    64a4:	afb00020 	sw	s0,32(sp)
    64a8:	00808025 	move	s0,a0
    64ac:	0c000000 	jal	0 <func_8094F2C0>
    64b0:	afa5002c 	sw	a1,44(sp)
    64b4:	260401e6 	addiu	a0,s0,486
    64b8:	00002825 	move	a1,zero
    64bc:	24060001 	li	a2,1
    64c0:	24070fa0 	li	a3,4000
    64c4:	0c000000 	jal	0 <func_8094F2C0>
    64c8:	afa00010 	sw	zero,16(sp)
    64cc:	260401e4 	addiu	a0,s0,484
    64d0:	00002825 	move	a1,zero
    64d4:	24060001 	li	a2,1
    64d8:	24070fa0 	li	a3,4000
    64dc:	0c000000 	jal	0 <func_8094F2C0>
    64e0:	afa00010 	sw	zero,16(sp)
    64e4:	260401ec 	addiu	a0,s0,492
    64e8:	00002825 	move	a1,zero
    64ec:	24060001 	li	a2,1
    64f0:	24070fa0 	li	a3,4000
    64f4:	0c000000 	jal	0 <func_8094F2C0>
    64f8:	afa00010 	sw	zero,16(sp)
    64fc:	260401ea 	addiu	a0,s0,490
    6500:	00002825 	move	a1,zero
    6504:	24060001 	li	a2,1
    6508:	24070fa0 	li	a3,4000
    650c:	0c000000 	jal	0 <func_8094F2C0>
    6510:	afa00010 	sw	zero,16(sp)
    6514:	860e00b6 	lh	t6,182(s0)
    6518:	860f00b4 	lh	t7,180(s0)
    651c:	afa00010 	sw	zero,16(sp)
    6520:	260401f2 	addiu	a0,s0,498
    6524:	01cf2823 	subu	a1,t6,t7
    6528:	00052c00 	sll	a1,a1,0x10
    652c:	00052c03 	sra	a1,a1,0x10
    6530:	24060001 	li	a2,1
    6534:	0c000000 	jal	0 <func_8094F2C0>
    6538:	240702ee 	li	a3,750
    653c:	8e18016c 	lw	t8,364(s0)
    6540:	260401f0 	addiu	a0,s0,496
    6544:	24060001 	li	a2,1
    6548:	8705002e 	lh	a1,46(t8)
    654c:	afa00010 	sw	zero,16(sp)
    6550:	0c000000 	jal	0 <func_8094F2C0>
    6554:	240702ee 	li	a3,750
    6558:	0c000000 	jal	0 <func_8094F2C0>
    655c:	2604014c 	addiu	a0,s0,332
    6560:	1040000d 	beqz	v0,6598 <func_8095575C+0xfc>
    6564:	3c190000 	lui	t9,0x0
    6568:	93390000 	lbu	t9,0(t9)
    656c:	8fa5002c 	lw	a1,44(sp)
    6570:	02002025 	move	a0,s0
    6574:	2b21000f 	slti	at,t9,15
    6578:	14200005 	bnez	at,6590 <func_8095575C+0xf4>
    657c:	00000000 	nop
    6580:	0c000000 	jal	0 <func_8094F2C0>
    6584:	02002025 	move	a0,s0
    6588:	10000004 	b	659c <func_8095575C+0x100>
    658c:	8fbf0024 	lw	ra,36(sp)
    6590:	0c000000 	jal	0 <func_8094F2C0>
    6594:	8fa5002c 	lw	a1,44(sp)
    6598:	8fbf0024 	lw	ra,36(sp)
    659c:	8fb00020 	lw	s0,32(sp)
    65a0:	27bd0028 	addiu	sp,sp,40
    65a4:	03e00008 	jr	ra
    65a8:	00000000 	nop

000065ac <func_8095586C>:
    65ac:	27bdffc0 	addiu	sp,sp,-64
    65b0:	afb00028 	sw	s0,40(sp)
    65b4:	00808025 	move	s0,a0
    65b8:	afbf002c 	sw	ra,44(sp)
    65bc:	3c040602 	lui	a0,0x602
    65c0:	afa50044 	sw	a1,68(sp)
    65c4:	0c000000 	jal	0 <func_8094F2C0>
    65c8:	24848d18 	addiu	a0,a0,-29416
    65cc:	44822000 	mtc1	v0,$f4
    65d0:	00000000 	nop
    65d4:	468021a0 	cvt.s.w	$f6,$f4
    65d8:	0c000000 	jal	0 <func_8094F2C0>
    65dc:	e7a6003c 	swc1	$f6,60(sp)
    65e0:	0c000000 	jal	0 <func_8094F2C0>
    65e4:	e7a00034 	swc1	$f0,52(sp)
    65e8:	3c013e80 	lui	at,0x3e80
    65ec:	44815000 	mtc1	at,$f10
    65f0:	3c014040 	lui	at,0x4040
    65f4:	44819000 	mtc1	at,$f18
    65f8:	c7a80034 	lwc1	$f8,52(sp)
    65fc:	3c01c0c0 	lui	at,0xc0c0
    6600:	46120102 	mul.s	$f4,$f0,$f18
    6604:	460a4400 	add.s	$f16,$f8,$f10
    6608:	44814000 	mtc1	at,$f8
    660c:	c7a6003c 	lwc1	$f6,60(sp)
    6610:	3c050602 	lui	a1,0x602
    6614:	44068000 	mfc1	a2,$f16
    6618:	240e0001 	li	t6,1
    661c:	44072000 	mfc1	a3,$f4
    6620:	afae0014 	sw	t6,20(sp)
    6624:	24a58d18 	addiu	a1,a1,-29416
    6628:	2604014c 	addiu	a0,s0,332
    662c:	e7a60010 	swc1	$f6,16(sp)
    6630:	0c000000 	jal	0 <func_8094F2C0>
    6634:	e7a80018 	swc1	$f8,24(sp)
    6638:	860f001c 	lh	t7,28(s0)
    663c:	3c050000 	lui	a1,0x0
    6640:	a2000195 	sb	zero,405(s0)
    6644:	000f0823 	negu	at,t7
    6648:	0001c080 	sll	t8,at,0x2
    664c:	0301c023 	subu	t8,t8,at
    6650:	0018c040 	sll	t8,t8,0x1
    6654:	27190012 	addiu	t9,t8,18
    6658:	a619019c 	sh	t9,412(s0)
    665c:	a60001b0 	sh	zero,432(s0)
    6660:	24a50000 	addiu	a1,a1,0
    6664:	0c000000 	jal	0 <func_8094F2C0>
    6668:	02002025 	move	a0,s0
    666c:	8fbf002c 	lw	ra,44(sp)
    6670:	8fb00028 	lw	s0,40(sp)
    6674:	27bd0040 	addiu	sp,sp,64
    6678:	03e00008 	jr	ra
    667c:	00000000 	nop

00006680 <func_80955940>:
    6680:	27bdffc0 	addiu	sp,sp,-64
    6684:	3c01425c 	lui	at,0x425c
    6688:	44812000 	mtc1	at,$f4
    668c:	afbf0034 	sw	ra,52(sp)
    6690:	afb00030 	sw	s0,48(sp)
    6694:	00808025 	move	s0,a0
    6698:	afa50044 	sw	a1,68(sp)
    669c:	0c000000 	jal	0 <func_8094F2C0>
    66a0:	e7a4003c 	swc1	$f4,60(sp)
    66a4:	8fae0044 	lw	t6,68(sp)
    66a8:	3c0f0001 	lui	t7,0x1
    66ac:	01ee7821 	addu	t7,t7,t6
    66b0:	8def1de4 	lw	t7,7652(t7)
    66b4:	31f8001f 	andi	t8,t7,0x1f
    66b8:	1700001d 	bnez	t8,6730 <func_80955940+0xb0>
    66bc:	3c190000 	lui	t9,0x0
    66c0:	83390000 	lb	t9,0(t9)
    66c4:	2b210010 	slti	at,t9,16
    66c8:	10200019 	beqz	at,6730 <func_80955940+0xb0>
    66cc:	3c014680 	lui	at,0x4680
    66d0:	44816000 	mtc1	at,$f12
    66d4:	0c000000 	jal	0 <func_8094F2C0>
    66d8:	00000000 	nop
    66dc:	4600018d 	trunc.w.s	$f6,$f0
    66e0:	3c014680 	lui	at,0x4680
    66e4:	44816000 	mtc1	at,$f12
    66e8:	44093000 	mfc1	t1,$f6
    66ec:	0c000000 	jal	0 <func_8094F2C0>
    66f0:	a60901e8 	sh	t1,488(s0)
    66f4:	4600020d 	trunc.w.s	$f8,$f0
    66f8:	3c014680 	lui	at,0x4680
    66fc:	44816000 	mtc1	at,$f12
    6700:	440b4000 	mfc1	t3,$f8
    6704:	0c000000 	jal	0 <func_8094F2C0>
    6708:	a60b01ee 	sh	t3,494(s0)
    670c:	4600028d 	trunc.w.s	$f10,$f0
    6710:	861800b6 	lh	t8,182(s0)
    6714:	860800b4 	lh	t0,180(s0)
    6718:	440f5000 	mfc1	t7,$f10
    671c:	00000000 	nop
    6720:	01f8c821 	addu	t9,t7,t8
    6724:	03284823 	subu	t1,t9,t0
    6728:	10000009 	b	6750 <func_80955940+0xd0>
    672c:	a60901f4 	sh	t1,500(s0)
    6730:	44808000 	mtc1	zero,$f16
    6734:	3c073ccc 	lui	a3,0x3ccc
    6738:	34e7cccd 	ori	a3,a3,0xcccd
    673c:	26040168 	addiu	a0,s0,360
    6740:	24050000 	li	a1,0
    6744:	3c063f80 	lui	a2,0x3f80
    6748:	0c000000 	jal	0 <func_8094F2C0>
    674c:	e7b00010 	swc1	$f16,16(sp)
    6750:	0c000000 	jal	0 <func_8094F2C0>
    6754:	2604014c 	addiu	a0,s0,332
    6758:	3c0143fa 	lui	at,0x43fa
    675c:	44816000 	mtc1	at,$f12
    6760:	0c000000 	jal	0 <func_8094F2C0>
    6764:	00000000 	nop
    6768:	4600048d 	trunc.w.s	$f18,$f0
    676c:	860501e8 	lh	a1,488(s0)
    6770:	afa00010 	sw	zero,16(sp)
    6774:	260401e6 	addiu	a0,s0,486
    6778:	44079000 	mfc1	a3,$f18
    677c:	24060001 	li	a2,1
    6780:	00073c00 	sll	a3,a3,0x10
    6784:	00073c03 	sra	a3,a3,0x10
    6788:	24e701f4 	addiu	a3,a3,500
    678c:	00073c00 	sll	a3,a3,0x10
    6790:	0c000000 	jal	0 <func_8094F2C0>
    6794:	00073c03 	sra	a3,a3,0x10
    6798:	260401e4 	addiu	a0,s0,484
    679c:	00002825 	move	a1,zero
    67a0:	24060001 	li	a2,1
    67a4:	240701f4 	li	a3,500
    67a8:	0c000000 	jal	0 <func_8094F2C0>
    67ac:	afa00010 	sw	zero,16(sp)
    67b0:	3c0143fa 	lui	at,0x43fa
    67b4:	44816000 	mtc1	at,$f12
    67b8:	0c000000 	jal	0 <func_8094F2C0>
    67bc:	00000000 	nop
    67c0:	4600010d 	trunc.w.s	$f4,$f0
    67c4:	860501ee 	lh	a1,494(s0)
    67c8:	afa00010 	sw	zero,16(sp)
    67cc:	260401ec 	addiu	a0,s0,492
    67d0:	44072000 	mfc1	a3,$f4
    67d4:	24060001 	li	a2,1
    67d8:	00073c00 	sll	a3,a3,0x10
    67dc:	00073c03 	sra	a3,a3,0x10
    67e0:	24e701f4 	addiu	a3,a3,500
    67e4:	00073c00 	sll	a3,a3,0x10
    67e8:	0c000000 	jal	0 <func_8094F2C0>
    67ec:	00073c03 	sra	a3,a3,0x10
    67f0:	260401ea 	addiu	a0,s0,490
    67f4:	00002825 	move	a1,zero
    67f8:	24060001 	li	a2,1
    67fc:	240701f4 	li	a3,500
    6800:	0c000000 	jal	0 <func_8094F2C0>
    6804:	afa00010 	sw	zero,16(sp)
    6808:	3c0143fa 	lui	at,0x43fa
    680c:	44816000 	mtc1	at,$f12
    6810:	0c000000 	jal	0 <func_8094F2C0>
    6814:	00000000 	nop
    6818:	4600018d 	trunc.w.s	$f6,$f0
    681c:	860501f4 	lh	a1,500(s0)
    6820:	afa00010 	sw	zero,16(sp)
    6824:	260401f2 	addiu	a0,s0,498
    6828:	44073000 	mfc1	a3,$f6
    682c:	24060001 	li	a2,1
    6830:	00073c00 	sll	a3,a3,0x10
    6834:	00073c03 	sra	a3,a3,0x10
    6838:	24e701f4 	addiu	a3,a3,500
    683c:	00073c00 	sll	a3,a3,0x10
    6840:	0c000000 	jal	0 <func_8094F2C0>
    6844:	00073c03 	sra	a3,a3,0x10
    6848:	3c050000 	lui	a1,0x0
    684c:	24a50000 	addiu	a1,a1,0
    6850:	80a20000 	lb	v0,0(a1)
    6854:	24010010 	li	at,16
    6858:	1041000b 	beq	v0,at,6888 <func_80955940+0x208>
    685c:	24010011 	li	at,17
    6860:	10410005 	beq	v0,at,6878 <func_80955940+0x1f8>
    6864:	24010012 	li	at,18
    6868:	50410008 	beql	v0,at,688c <func_80955940+0x20c>
    686c:	92040195 	lbu	a0,405(s0)
    6870:	100000c8 	b	6b94 <func_80955940+0x514>
    6874:	8fbf0034 	lw	ra,52(sp)
    6878:	3c01c25c 	lui	at,0xc25c
    687c:	44814000 	mtc1	at,$f8
    6880:	00000000 	nop
    6884:	e7a8003c 	swc1	$f8,60(sp)
    6888:	92040195 	lbu	a0,405(s0)
    688c:	548000b2 	bnezl	a0,6b58 <func_80955940+0x4d8>
    6890:	8619019c 	lh	t9,412(s0)
    6894:	8603001c 	lh	v1,28(s0)
    6898:	24010003 	li	at,3
    689c:	54610005 	bnel	v1,at,68b4 <func_80955940+0x234>
    68a0:	24010004 	li	at,4
    68a4:	8602019c 	lh	v0,412(s0)
    68a8:	28410010 	slti	at,v0,16
    68ac:	1420000a 	bnez	at,68d8 <func_80955940+0x258>
    68b0:	24010004 	li	at,4
    68b4:	54610005 	bnel	v1,at,68cc <func_80955940+0x24c>
    68b8:	24010005 	li	at,5
    68bc:	8602019c 	lh	v0,412(s0)
    68c0:	28410018 	slti	at,v0,24
    68c4:	14200004 	bnez	at,68d8 <func_80955940+0x258>
    68c8:	24010005 	li	at,5
    68cc:	1461006b 	bne	v1,at,6a7c <func_80955940+0x3fc>
    68d0:	248d0001 	addiu	t5,a0,1
    68d4:	8602019c 	lh	v0,412(s0)
    68d8:	304d0001 	andi	t5,v0,0x1
    68dc:	55a00055 	bnezl	t5,6a34 <func_80955940+0x3b4>
    68e0:	24480001 	addiu	t0,v0,1
    68e4:	04400052 	bltz	v0,6a30 <func_80955940+0x3b0>
    68e8:	28410008 	slti	at,v0,8
    68ec:	1020001b 	beqz	at,695c <func_80955940+0x2dc>
    68f0:	3c0140a0 	lui	at,0x40a0
    68f4:	44816000 	mtc1	at,$f12
    68f8:	0c000000 	jal	0 <func_8094F2C0>
    68fc:	00000000 	nop
    6900:	4600028d 	trunc.w.s	$f10,$f0
    6904:	44801000 	mtc1	zero,$f2
    6908:	3c010000 	lui	at,0x0
    690c:	c4300000 	lwc1	$f16,0(at)
    6910:	44075000 	mfc1	a3,$f10
    6914:	240f0002 	li	t7,2
    6918:	24180001 	li	t8,1
    691c:	00073c00 	sll	a3,a3,0x10
    6920:	00073c03 	sra	a3,a3,0x10
    6924:	24e7000d 	addiu	a3,a3,13
    6928:	00073c00 	sll	a3,a3,0x10
    692c:	00073c03 	sra	a3,a3,0x10
    6930:	afb80020 	sw	t8,32(sp)
    6934:	afaf0018 	sw	t7,24(sp)
    6938:	8fa40044 	lw	a0,68(sp)
    693c:	02002825 	move	a1,s0
    6940:	24060001 	li	a2,1
    6944:	e7a20010 	swc1	$f2,16(sp)
    6948:	e7a20014 	swc1	$f2,20(sp)
    694c:	0c000000 	jal	0 <func_8094F2C0>
    6950:	e7b0001c 	swc1	$f16,28(sp)
    6954:	10000020 	b	69d8 <func_80955940+0x358>
    6958:	3c014170 	lui	at,0x4170
    695c:	3c0140a0 	lui	at,0x40a0
    6960:	44816000 	mtc1	at,$f12
    6964:	0c000000 	jal	0 <func_8094F2C0>
    6968:	00000000 	nop
    696c:	3c0140e0 	lui	at,0x40e0
    6970:	44813000 	mtc1	at,$f6
    6974:	44802000 	mtc1	zero,$f4
    6978:	24080002 	li	t0,2
    697c:	afa80018 	sw	t0,24(sp)
    6980:	e7a60014 	swc1	$f6,20(sp)
    6984:	e7a40010 	swc1	$f4,16(sp)
    6988:	8609019c 	lh	t1,412(s0)
    698c:	4600048d 	trunc.w.s	$f18,$f0
    6990:	240c0001 	li	t4,1
    6994:	000950c3 	sra	t2,t1,0x3
    6998:	254b0001 	addiu	t3,t2,1
    699c:	448b4000 	mtc1	t3,$f8
    69a0:	44079000 	mfc1	a3,$f18
    69a4:	afac0020 	sw	t4,32(sp)
    69a8:	468042a0 	cvt.s.w	$f10,$f8
    69ac:	00073c00 	sll	a3,a3,0x10
    69b0:	00073c03 	sra	a3,a3,0x10
    69b4:	24e70006 	addiu	a3,a3,6
    69b8:	00073c00 	sll	a3,a3,0x10
    69bc:	00073c03 	sra	a3,a3,0x10
    69c0:	e7aa001c 	swc1	$f10,28(sp)
    69c4:	8fa40044 	lw	a0,68(sp)
    69c8:	02002825 	move	a1,s0
    69cc:	0c000000 	jal	0 <func_8094F2C0>
    69d0:	24060001 	li	a2,1
    69d4:	3c014170 	lui	at,0x4170
    69d8:	44818000 	mtc1	at,$f16
    69dc:	44809000 	mtc1	zero,$f18
    69e0:	240d0005 	li	t5,5
    69e4:	afad0018 	sw	t5,24(sp)
    69e8:	e7b00010 	swc1	$f16,16(sp)
    69ec:	e7b20014 	swc1	$f18,20(sp)
    69f0:	860e019c 	lh	t6,412(s0)
    69f4:	24190001 	li	t9,1
    69f8:	afb90020 	sw	t9,32(sp)
    69fc:	000e78c3 	sra	t7,t6,0x3
    6a00:	25f80001 	addiu	t8,t7,1
    6a04:	44982000 	mtc1	t8,$f4
    6a08:	8fa40044 	lw	a0,68(sp)
    6a0c:	02002825 	move	a1,s0
    6a10:	468021a0 	cvt.s.w	$f6,$f4
    6a14:	24060002 	li	a2,2
    6a18:	24070032 	li	a3,50
    6a1c:	0c000000 	jal	0 <func_8094F2C0>
    6a20:	e7a6001c 	swc1	$f6,28(sp)
    6a24:	3c050000 	lui	a1,0x0
    6a28:	24a50000 	addiu	a1,a1,0
    6a2c:	8602019c 	lh	v0,412(s0)
    6a30:	24480001 	addiu	t0,v0,1
    6a34:	a608019c 	sh	t0,412(s0)
    6a38:	8609019c 	lh	t1,412(s0)
    6a3c:	29210020 	slti	at,t1,32
    6a40:	54200017 	bnezl	at,6aa0 <func_80955940+0x420>
    6a44:	8609001c 	lh	t1,28(s0)
    6a48:	920a0195 	lbu	t2,405(s0)
    6a4c:	240c0001 	li	t4,1
    6a50:	a20c0197 	sb	t4,407(s0)
    6a54:	254b0001 	addiu	t3,t2,1
    6a58:	a20b0195 	sb	t3,405(s0)
    6a5c:	0c000000 	jal	0 <func_8094F2C0>
    6a60:	8fa40044 	lw	a0,68(sp)
    6a64:	02002025 	move	a0,s0
    6a68:	0c000000 	jal	0 <func_8094F2C0>
    6a6c:	24053945 	li	a1,14661
    6a70:	3c050000 	lui	a1,0x0
    6a74:	10000009 	b	6a9c <func_80955940+0x41c>
    6a78:	24a50000 	addiu	a1,a1,0
    6a7c:	240e0001 	li	t6,1
    6a80:	240f0020 	li	t7,32
    6a84:	a20d0195 	sb	t5,405(s0)
    6a88:	a20e0197 	sb	t6,407(s0)
    6a8c:	a60f019c 	sh	t7,412(s0)
    6a90:	80b80000 	lb	t8,0(a1)
    6a94:	27190001 	addiu	t9,t8,1
    6a98:	a0b90000 	sb	t9,0(a1)
    6a9c:	8609001c 	lh	t1,28(s0)
    6aa0:	80a80000 	lb	t0,0(a1)
    6aa4:	252a000d 	addiu	t2,t1,13
    6aa8:	550a003a 	bnel	t0,t2,6b94 <func_80955940+0x514>
    6aac:	8fbf0034 	lw	ra,52(sp)
    6ab0:	c60801c0 	lwc1	$f8,448(s0)
    6ab4:	3c020000 	lui	v0,0x0
    6ab8:	24420000 	addiu	v0,v0,0
    6abc:	e4480000 	swc1	$f8,0(v0)
    6ac0:	c60a01c4 	lwc1	$f10,452(s0)
    6ac4:	3c010000 	lui	at,0x0
    6ac8:	e44a0004 	swc1	$f10,4(v0)
    6acc:	c4500004 	lwc1	$f16,4(v0)
    6ad0:	e4300000 	swc1	$f16,0(at)
    6ad4:	c61201c8 	lwc1	$f18,456(s0)
    6ad8:	e4520008 	swc1	$f18,8(v0)
    6adc:	860c01b0 	lh	t4,432(s0)
    6ae0:	860b00b6 	lh	t3,182(s0)
    6ae4:	016c2021 	addu	a0,t3,t4
    6ae8:	00042023 	negu	a0,a0
    6aec:	00042400 	sll	a0,a0,0x10
    6af0:	0c000000 	jal	0 <func_8094F2C0>
    6af4:	00042403 	sra	a0,a0,0x10
    6af8:	c7a4003c 	lwc1	$f4,60(sp)
    6afc:	c60801c0 	lwc1	$f8,448(s0)
    6b00:	3c010000 	lui	at,0x0
    6b04:	46040182 	mul.s	$f6,$f0,$f4
    6b08:	46083280 	add.s	$f10,$f6,$f8
    6b0c:	e42a0000 	swc1	$f10,0(at)
    6b10:	860e01b0 	lh	t6,432(s0)
    6b14:	860d00b6 	lh	t5,182(s0)
    6b18:	01ae2021 	addu	a0,t5,t6
    6b1c:	00042023 	negu	a0,a0
    6b20:	00042400 	sll	a0,a0,0x10
    6b24:	0c000000 	jal	0 <func_8094F2C0>
    6b28:	00042403 	sra	a0,a0,0x10
    6b2c:	c7b0003c 	lwc1	$f16,60(sp)
    6b30:	c60401c8 	lwc1	$f4,456(s0)
    6b34:	3c010000 	lui	at,0x0
    6b38:	46100482 	mul.s	$f18,$f0,$f16
    6b3c:	46049180 	add.s	$f6,$f18,$f4
    6b40:	e4260000 	swc1	$f6,0(at)
    6b44:	860f01b0 	lh	t7,432(s0)
    6b48:	25f8015e 	addiu	t8,t7,350
    6b4c:	10000010 	b	6b90 <func_80955940+0x510>
    6b50:	a61801b0 	sh	t8,432(s0)
    6b54:	8619019c 	lh	t9,412(s0)
    6b58:	2729ffff 	addiu	t1,t9,-1
    6b5c:	a609019c 	sh	t1,412(s0)
    6b60:	8608019c 	lh	t0,412(s0)
    6b64:	5500000b 	bnezl	t0,6b94 <func_80955940+0x514>
    6b68:	8fbf0034 	lw	ra,52(sp)
    6b6c:	860a001c 	lh	t2,28(s0)
    6b70:	24010005 	li	at,5
    6b74:	15410004 	bne	t2,at,6b88 <func_80955940+0x508>
    6b78:	00000000 	nop
    6b7c:	80ab0000 	lb	t3,0(a1)
    6b80:	256c0001 	addiu	t4,t3,1
    6b84:	a0ac0000 	sb	t4,0(a1)
    6b88:	0c000000 	jal	0 <func_8094F2C0>
    6b8c:	02002025 	move	a0,s0
    6b90:	8fbf0034 	lw	ra,52(sp)
    6b94:	8fb00030 	lw	s0,48(sp)
    6b98:	27bd0040 	addiu	sp,sp,64
    6b9c:	03e00008 	jr	ra
    6ba0:	00000000 	nop

00006ba4 <func_80955E64>:
    6ba4:	27bdffd8 	addiu	sp,sp,-40
    6ba8:	afa40028 	sw	a0,40(sp)
    6bac:	afbf0024 	sw	ra,36(sp)
    6bb0:	3c040602 	lui	a0,0x602
    6bb4:	afa5002c 	sw	a1,44(sp)
    6bb8:	0c000000 	jal	0 <func_8094F2C0>
    6bbc:	24848d18 	addiu	a0,a0,-29416
    6bc0:	44822000 	mtc1	v0,$f4
    6bc4:	3c013f80 	lui	at,0x3f80
    6bc8:	44811000 	mtc1	at,$f2
    6bcc:	46802020 	cvt.s.w	$f0,$f4
    6bd0:	3c01c0c0 	lui	at,0xc0c0
    6bd4:	44814000 	mtc1	at,$f8
    6bd8:	8fa40028 	lw	a0,40(sp)
    6bdc:	3c050602 	lui	a1,0x602
    6be0:	240e0001 	li	t6,1
    6be4:	46020181 	sub.s	$f6,$f0,$f2
    6be8:	44061000 	mfc1	a2,$f2
    6bec:	afae0014 	sw	t6,20(sp)
    6bf0:	24a58d18 	addiu	a1,a1,-29416
    6bf4:	44073000 	mfc1	a3,$f6
    6bf8:	e7a00010 	swc1	$f0,16(sp)
    6bfc:	2484014c 	addiu	a0,a0,332
    6c00:	0c000000 	jal	0 <func_8094F2C0>
    6c04:	e7a80018 	swc1	$f8,24(sp)
    6c08:	8fa40028 	lw	a0,40(sp)
    6c0c:	3c050000 	lui	a1,0x0
    6c10:	24a50000 	addiu	a1,a1,0
    6c14:	0c000000 	jal	0 <func_8094F2C0>
    6c18:	a0800195 	sb	zero,405(a0)
    6c1c:	8fbf0024 	lw	ra,36(sp)
    6c20:	27bd0028 	addiu	sp,sp,40
    6c24:	03e00008 	jr	ra
    6c28:	00000000 	nop

00006c2c <func_80955EEC>:
    6c2c:	27bdff88 	addiu	sp,sp,-120
    6c30:	afbf0034 	sw	ra,52(sp)
    6c34:	afb00030 	sw	s0,48(sp)
    6c38:	afa5007c 	sw	a1,124(sp)
    6c3c:	8ca21c44 	lw	v0,7236(a1)
    6c40:	27af0054 	addiu	t7,sp,84
    6c44:	3c014120 	lui	at,0x4120
    6c48:	8c590024 	lw	t9,36(v0)
    6c4c:	44813000 	mtc1	at,$f6
    6c50:	00808025 	move	s0,a0
    6c54:	adf90000 	sw	t9,0(t7)
    6c58:	8c580028 	lw	t8,40(v0)
    6c5c:	2484014c 	addiu	a0,a0,332
    6c60:	adf80004 	sw	t8,4(t7)
    6c64:	8c59002c 	lw	t9,44(v0)
    6c68:	adf90008 	sw	t9,8(t7)
    6c6c:	c7a40058 	lwc1	$f4,88(sp)
    6c70:	afa20074 	sw	v0,116(sp)
    6c74:	46062200 	add.s	$f8,$f4,$f6
    6c78:	0c000000 	jal	0 <func_8094F2C0>
    6c7c:	e7a80058 	swc1	$f8,88(sp)
    6c80:	0c000000 	jal	0 <func_8094F2C0>
    6c84:	02002025 	move	a0,s0
    6c88:	3c090000 	lui	t1,0x0
    6c8c:	91290000 	lbu	t1,0(t1)
    6c90:	02002025 	move	a0,s0
    6c94:	3c0a0000 	lui	t2,0x0
    6c98:	29210012 	slti	at,t1,18
    6c9c:	14200005 	bnez	at,6cb4 <func_80955EEC+0x88>
    6ca0:	00000000 	nop
    6ca4:	0c000000 	jal	0 <func_8094F2C0>
    6ca8:	8fa5007c 	lw	a1,124(sp)
    6cac:	100001b1 	b	7374 <func_80955EEC+0x748>
    6cb0:	8fbf0034 	lw	ra,52(sp)
    6cb4:	914a0000 	lbu	t2,0(t2)
    6cb8:	02002025 	move	a0,s0
    6cbc:	c7aa0058 	lwc1	$f10,88(sp)
    6cc0:	314b007e 	andi	t3,t2,0x7e
    6cc4:	11600005 	beqz	t3,6cdc <func_80955EEC+0xb0>
    6cc8:	3c014039 	lui	at,0x4039
    6ccc:	0c000000 	jal	0 <func_8094F2C0>
    6cd0:	8fa5007c 	lw	a1,124(sp)
    6cd4:	100001a7 	b	7374 <func_80955EEC+0x748>
    6cd8:	8fbf0034 	lw	ra,52(sp)
    6cdc:	44819800 	mtc1	at,$f19
    6ce0:	44809000 	mtc1	zero,$f18
    6ce4:	46005421 	cvt.d.s	$f16,$f10
    6ce8:	27a40054 	addiu	a0,sp,84
    6cec:	46328100 	add.d	$f4,$f16,$f18
    6cf0:	260501b4 	addiu	a1,s0,436
    6cf4:	462021a0 	cvt.s.d	$f6,$f4
    6cf8:	0c000000 	jal	0 <func_8094F2C0>
    6cfc:	e7a60058 	swc1	$f6,88(sp)
    6d00:	860c00b6 	lh	t4,182(s0)
    6d04:	00024400 	sll	t0,v0,0x10
    6d08:	00084403 	sra	t0,t0,0x10
    6d0c:	004c3023 	subu	a2,v0,t4
    6d10:	00062400 	sll	a0,a2,0x10
    6d14:	00042403 	sra	a0,a0,0x10
    6d18:	04800003 	bltz	a0,6d28 <func_80955EEC+0xfc>
    6d1c:	00041823 	negu	v1,a0
    6d20:	10000001 	b	6d28 <func_80955EEC+0xfc>
    6d24:	00801825 	move	v1,a0
    6d28:	28614651 	slti	at,v1,18001
    6d2c:	14200004 	bnez	at,6d40 <func_80955EEC+0x114>
    6d30:	3c0d0000 	lui	t5,0x0
    6d34:	92030195 	lbu	v1,405(s0)
    6d38:	106000af 	beqz	v1,6ff8 <func_80955EEC+0x3cc>
    6d3c:	00000000 	nop
    6d40:	91ad0000 	lbu	t5,0(t5)
    6d44:	92030195 	lbu	v1,405(s0)
    6d48:	8faf0074 	lw	t7,116(sp)
    6d4c:	31ae0080 	andi	t6,t5,0x80
    6d50:	15c000a9 	bnez	t6,6ff8 <func_80955EEC+0x3cc>
    6d54:	00000000 	nop
    6d58:	8df8067c 	lw	t8,1660(t7)
    6d5c:	0018c940 	sll	t9,t8,0x5
    6d60:	072000a5 	bltz	t9,6ff8 <func_80955EEC+0x3cc>
    6d64:	00000000 	nop
    6d68:	146000a1 	bnez	v1,6ff0 <func_80955EEC+0x3c4>
    6d6c:	00062c00 	sll	a1,a2,0x10
    6d70:	00052c03 	sra	a1,a1,0x10
    6d74:	04a00003 	bltz	a1,6d84 <func_80955EEC+0x158>
    6d78:	260401e6 	addiu	a0,s0,486
    6d7c:	10000002 	b	6d88 <func_80955EEC+0x15c>
    6d80:	00a01825 	move	v1,a1
    6d84:	00051823 	negu	v1,a1
    6d88:	28611771 	slti	at,v1,6001
    6d8c:	14200006 	bnez	at,6da8 <func_80955EEC+0x17c>
    6d90:	24060001 	li	a2,1
    6d94:	58a00004 	blezl	a1,6da8 <func_80955EEC+0x17c>
    6d98:	2405e890 	li	a1,-6000
    6d9c:	10000002 	b	6da8 <func_80955EEC+0x17c>
    6da0:	24051770 	li	a1,6000
    6da4:	2405e890 	li	a1,-6000
    6da8:	24070dac 	li	a3,3500
    6dac:	afa00010 	sw	zero,16(sp)
    6db0:	a7a50068 	sh	a1,104(sp)
    6db4:	0c000000 	jal	0 <func_8094F2C0>
    6db8:	a7a8006c 	sh	t0,108(sp)
    6dbc:	87a50068 	lh	a1,104(sp)
    6dc0:	04400003 	bltz	v0,6dd0 <func_80955EEC+0x1a4>
    6dc4:	87a8006c 	lh	t0,108(sp)
    6dc8:	10000003 	b	6dd8 <func_80955EEC+0x1ac>
    6dcc:	afa20060 	sw	v0,96(sp)
    6dd0:	00024823 	negu	t1,v0
    6dd4:	afa90060 	sw	t1,96(sp)
    6dd8:	01052823 	subu	a1,t0,a1
    6ddc:	00052c00 	sll	a1,a1,0x10
    6de0:	00052c03 	sra	a1,a1,0x10
    6de4:	04a00003 	bltz	a1,6df4 <func_80955EEC+0x1c8>
    6de8:	260401ec 	addiu	a0,s0,492
    6dec:	10000002 	b	6df8 <func_80955EEC+0x1cc>
    6df0:	00a01825 	move	v1,a1
    6df4:	00051823 	negu	v1,a1
    6df8:	28611771 	slti	at,v1,6001
    6dfc:	14200006 	bnez	at,6e18 <func_80955EEC+0x1ec>
    6e00:	24060001 	li	a2,1
    6e04:	58a00004 	blezl	a1,6e18 <func_80955EEC+0x1ec>
    6e08:	2405e890 	li	a1,-6000
    6e0c:	10000002 	b	6e18 <func_80955EEC+0x1ec>
    6e10:	24051770 	li	a1,6000
    6e14:	2405e890 	li	a1,-6000
    6e18:	24070dac 	li	a3,3500
    6e1c:	0c000000 	jal	0 <func_8094F2C0>
    6e20:	afa00010 	sw	zero,16(sp)
    6e24:	04400003 	bltz	v0,6e34 <func_80955EEC+0x208>
    6e28:	8faa0060 	lw	t2,96(sp)
    6e2c:	10000002 	b	6e38 <func_80955EEC+0x20c>
    6e30:	00401825 	move	v1,v0
    6e34:	00021823 	negu	v1,v0
    6e38:	01435821 	addu	t3,t2,v1
    6e3c:	260401cc 	addiu	a0,s0,460
    6e40:	afab0060 	sw	t3,96(sp)
    6e44:	afa40040 	sw	a0,64(sp)
    6e48:	0c000000 	jal	0 <func_8094F2C0>
    6e4c:	27a50054 	addiu	a1,sp,84
    6e50:	2445c000 	addiu	a1,v0,-16384
    6e54:	00052c00 	sll	a1,a1,0x10
    6e58:	00052c03 	sra	a1,a1,0x10
    6e5c:	260401f2 	addiu	a0,s0,498
    6e60:	24060001 	li	a2,1
    6e64:	24070ea6 	li	a3,3750
    6e68:	0c000000 	jal	0 <func_8094F2C0>
    6e6c:	afa00010 	sw	zero,16(sp)
    6e70:	04400003 	bltz	v0,6e80 <func_80955EEC+0x254>
    6e74:	8fac0060 	lw	t4,96(sp)
    6e78:	10000002 	b	6e84 <func_80955EEC+0x258>
    6e7c:	00401825 	move	v1,v0
    6e80:	00021823 	negu	v1,v0
    6e84:	01836821 	addu	t5,t4,v1
    6e88:	afad0060 	sw	t5,96(sp)
    6e8c:	8e02016c 	lw	v0,364(s0)
    6e90:	860f00b4 	lh	t7,180(s0)
    6e94:	27a40054 	addiu	a0,sp,84
    6e98:	844e001e 	lh	t6,30(v0)
    6e9c:	84590006 	lh	t9,6(v0)
    6ea0:	844a000c 	lh	t2,12(v0)
    6ea4:	01cfc021 	addu	t8,t6,t7
    6ea8:	844c0012 	lh	t4,18(v0)
    6eac:	844e0018 	lh	t6,24(v0)
    6eb0:	03194821 	addu	t1,t8,t9
    6eb4:	012a5821 	addu	t3,t1,t2
    6eb8:	016c6821 	addu	t5,t3,t4
    6ebc:	01ae7821 	addu	t7,t5,t6
    6ec0:	a7af006a 	sh	t7,106(sp)
    6ec4:	0c000000 	jal	0 <func_8094F2C0>
    6ec8:	260501c0 	addiu	a1,s0,448
    6ecc:	87b8006a 	lh	t8,106(sp)
    6ed0:	260401ea 	addiu	a0,s0,490
    6ed4:	24060001 	li	a2,1
    6ed8:	00582823 	subu	a1,v0,t8
    6edc:	00052c00 	sll	a1,a1,0x10
    6ee0:	00052c03 	sra	a1,a1,0x10
    6ee4:	24071b58 	li	a3,7000
    6ee8:	0c000000 	jal	0 <func_8094F2C0>
    6eec:	afa00010 	sw	zero,16(sp)
    6ef0:	04400003 	bltz	v0,6f00 <func_80955EEC+0x2d4>
    6ef4:	8fb90060 	lw	t9,96(sp)
    6ef8:	10000002 	b	6f04 <func_80955EEC+0x2d8>
    6efc:	00401825 	move	v1,v0
    6f00:	00021823 	negu	v1,v0
    6f04:	03234821 	addu	t1,t9,v1
    6f08:	afa90060 	sw	t1,96(sp)
    6f0c:	8fa40040 	lw	a0,64(sp)
    6f10:	0c000000 	jal	0 <func_8094F2C0>
    6f14:	27a50054 	addiu	a1,sp,84
    6f18:	00022823 	negu	a1,v0
    6f1c:	00052c00 	sll	a1,a1,0x10
    6f20:	00052c03 	sra	a1,a1,0x10
    6f24:	260401f0 	addiu	a0,s0,496
    6f28:	24060001 	li	a2,1
    6f2c:	24071b58 	li	a3,7000
    6f30:	0c000000 	jal	0 <func_8094F2C0>
    6f34:	afa00010 	sw	zero,16(sp)
    6f38:	04400003 	bltz	v0,6f48 <func_80955EEC+0x31c>
    6f3c:	3c013f80 	lui	at,0x3f80
    6f40:	10000002 	b	6f4c <func_80955EEC+0x320>
    6f44:	00401825 	move	v1,v0
    6f48:	00021823 	negu	v1,v0
    6f4c:	8faa0060 	lw	t2,96(sp)
    6f50:	44800000 	mtc1	zero,$f0
    6f54:	44811000 	mtc1	at,$f2
    6f58:	01435821 	addu	t3,t2,v1
    6f5c:	afab0060 	sw	t3,96(sp)
    6f60:	e6000168 	swc1	$f0,360(s0)
    6f64:	44050000 	mfc1	a1,$f0
    6f68:	44061000 	mfc1	a2,$f2
    6f6c:	26040164 	addiu	a0,s0,356
    6f70:	3c074040 	lui	a3,0x4040
    6f74:	0c000000 	jal	0 <func_8094F2C0>
    6f78:	e7a00010 	swc1	$f0,16(sp)
    6f7c:	44804000 	mtc1	zero,$f8
    6f80:	8fac0060 	lw	t4,96(sp)
    6f84:	46080032 	c.eq.s	$f0,$f8
    6f88:	2d810258 	sltiu	at,t4,600
    6f8c:	45000018 	bc1f	6ff0 <func_80955EEC+0x3c4>
    6f90:	00000000 	nop
    6f94:	10200016 	beqz	at,6ff0 <func_80955EEC+0x3c4>
    6f98:	00000000 	nop
    6f9c:	920d0195 	lbu	t5,405(s0)
    6fa0:	a600019c 	sh	zero,412(s0)
    6fa4:	27af0054 	addiu	t7,sp,84
    6fa8:	25ae0001 	addiu	t6,t5,1
    6fac:	a20e0195 	sb	t6,405(s0)
    6fb0:	8df90000 	lw	t9,0(t7)
    6fb4:	ae1901d8 	sw	t9,472(s0)
    6fb8:	8df80004 	lw	t8,4(t7)
    6fbc:	ae1801dc 	sw	t8,476(s0)
    6fc0:	8df90008 	lw	t9,8(t7)
    6fc4:	0c000000 	jal	0 <func_8094F2C0>
    6fc8:	ae1901e0 	sw	t9,480(s0)
    6fcc:	3c010000 	lui	at,0x0
    6fd0:	c42a0000 	lwc1	$f10,0(at)
    6fd4:	02002025 	move	a0,s0
    6fd8:	460a003c 	c.lt.s	$f0,$f10
    6fdc:	00000000 	nop
    6fe0:	45000003 	bc1f	6ff0 <func_80955EEC+0x3c4>
    6fe4:	00000000 	nop
    6fe8:	0c000000 	jal	0 <func_8094F2C0>
    6fec:	24053143 	li	a1,12611
    6ff0:	1000005f 	b	7170 <func_80955EEC+0x544>
    6ff4:	92030195 	lbu	v1,405(s0)
    6ff8:	54600005 	bnezl	v1,7010 <func_80955EEC+0x3e4>
    6ffc:	920a0348 	lbu	t2,840(s0)
    7000:	8609019c 	lh	t1,412(s0)
    7004:	0523002c 	bgezl	t1,70b8 <func_80955EEC+0x48c>
    7008:	260401e6 	addiu	a0,s0,486
    700c:	920a0348 	lbu	t2,840(s0)
    7010:	8603019c 	lh	v1,412(s0)
    7014:	314b0002 	andi	t3,t2,0x2
    7018:	1160000e 	beqz	t3,7054 <func_80955EEC+0x428>
    701c:	00000000 	nop
    7020:	18600010 	blez	v1,7064 <func_80955EEC+0x438>
    7024:	02002025 	move	a0,s0
    7028:	0c000000 	jal	0 <func_8094F2C0>
    702c:	24053946 	li	a1,14662
    7030:	0c000000 	jal	0 <func_8094F2C0>
    7034:	8fa4007c 	lw	a0,124(sp)
    7038:	8e0e0118 	lw	t6,280(s0)
    703c:	240cffff 	li	t4,-1
    7040:	a60c019c 	sh	t4,412(s0)
    7044:	240d0006 	li	t5,6
    7048:	a1cd0194 	sb	t5,404(t6)
    704c:	10000005 	b	7064 <func_80955EEC+0x438>
    7050:	8603019c 	lh	v1,412(s0)
    7054:	18600003 	blez	v1,7064 <func_80955EEC+0x438>
    7058:	00000000 	nop
    705c:	a600019c 	sh	zero,412(s0)
    7060:	8603019c 	lh	v1,412(s0)
    7064:	04610013 	bgez	v1,70b4 <func_80955EEC+0x488>
    7068:	8faf0074 	lw	t7,116(sp)
    706c:	8df8067c 	lw	t8,1660(t7)
    7070:	8fa4007c 	lw	a0,124(sp)
    7074:	02002825 	move	a1,s0
    7078:	0018c940 	sll	t9,t8,0x5
    707c:	0721000d 	bgez	t9,70b4 <func_80955EEC+0x488>
    7080:	24060001 	li	a2,1
    7084:	44808000 	mtc1	zero,$f16
    7088:	44809000 	mtc1	zero,$f18
    708c:	44802000 	mtc1	zero,$f4
    7090:	24090006 	li	t1,6
    7094:	240a0001 	li	t2,1
    7098:	afaa0020 	sw	t2,32(sp)
    709c:	afa90018 	sw	t1,24(sp)
    70a0:	2407001e 	li	a3,30
    70a4:	e7b00010 	swc1	$f16,16(sp)
    70a8:	e7b20014 	swc1	$f18,20(sp)
    70ac:	0c000000 	jal	0 <func_8094F2C0>
    70b0:	e7a4001c 	swc1	$f4,28(sp)
    70b4:	260401e6 	addiu	a0,s0,486
    70b8:	00002825 	move	a1,zero
    70bc:	24060001 	li	a2,1
    70c0:	24070ea6 	li	a3,3750
    70c4:	0c000000 	jal	0 <func_8094F2C0>
    70c8:	afa00010 	sw	zero,16(sp)
    70cc:	260401ec 	addiu	a0,s0,492
    70d0:	00002825 	move	a1,zero
    70d4:	24060001 	li	a2,1
    70d8:	24070ea6 	li	a3,3750
    70dc:	0c000000 	jal	0 <func_8094F2C0>
    70e0:	afa00010 	sw	zero,16(sp)
    70e4:	260401ea 	addiu	a0,s0,490
    70e8:	00002825 	move	a1,zero
    70ec:	24060001 	li	a2,1
    70f0:	24070ea6 	li	a3,3750
    70f4:	0c000000 	jal	0 <func_8094F2C0>
    70f8:	afa00010 	sw	zero,16(sp)
    70fc:	860b00b6 	lh	t3,182(s0)
    7100:	860c00b4 	lh	t4,180(s0)
    7104:	afa00010 	sw	zero,16(sp)
    7108:	260401f2 	addiu	a0,s0,498
    710c:	016c2823 	subu	a1,t3,t4
    7110:	00052c00 	sll	a1,a1,0x10
    7114:	00052c03 	sra	a1,a1,0x10
    7118:	24060001 	li	a2,1
    711c:	0c000000 	jal	0 <func_8094F2C0>
    7120:	24070ea6 	li	a3,3750
    7124:	8e0d016c 	lw	t5,364(s0)
    7128:	260401f0 	addiu	a0,s0,496
    712c:	24060001 	li	a2,1
    7130:	85a5002e 	lh	a1,46(t5)
    7134:	afa00010 	sw	zero,16(sp)
    7138:	0c000000 	jal	0 <func_8094F2C0>
    713c:	24070ea6 	li	a3,3750
    7140:	3c013f80 	lui	at,0x3f80
    7144:	44811000 	mtc1	at,$f2
    7148:	44803000 	mtc1	zero,$f6
    714c:	3c073d4c 	lui	a3,0x3d4c
    7150:	44051000 	mfc1	a1,$f2
    7154:	44061000 	mfc1	a2,$f2
    7158:	34e7cccd 	ori	a3,a3,0xcccd
    715c:	26040168 	addiu	a0,s0,360
    7160:	0c000000 	jal	0 <func_8094F2C0>
    7164:	e7a60010 	swc1	$f6,16(sp)
    7168:	a2000195 	sb	zero,405(s0)
    716c:	300300ff 	andi	v1,zero,0xff
    7170:	1060007f 	beqz	v1,7370 <func_80955EEC+0x744>
    7174:	24010002 	li	at,2
    7178:	5061007e 	beql	v1,at,7374 <func_80955EEC+0x748>
    717c:	8fbf0034 	lw	ra,52(sp)
    7180:	8603019c 	lh	v1,412(s0)
    7184:	8fa4007c 	lw	a0,124(sp)
    7188:	02002825 	move	a1,s0
    718c:	28610010 	slti	at,v1,16
    7190:	14200044 	bnez	at,72a4 <func_80955EEC+0x678>
    7194:	24060002 	li	a2,2
    7198:	24010012 	li	at,18
    719c:	14610003 	bne	v1,at,71ac <func_80955EEC+0x580>
    71a0:	02002025 	move	a0,s0
    71a4:	0c000000 	jal	0 <func_8094F2C0>
    71a8:	24053942 	li	a1,14658
    71ac:	3c014170 	lui	at,0x4170
    71b0:	44810000 	mtc1	at,$f0
    71b4:	3c0140a0 	lui	at,0x40a0
    71b8:	44814000 	mtc1	at,$f8
    71bc:	240e0003 	li	t6,3
    71c0:	240f0001 	li	t7,1
    71c4:	afaf0020 	sw	t7,32(sp)
    71c8:	afae0018 	sw	t6,24(sp)
    71cc:	8fa4007c 	lw	a0,124(sp)
    71d0:	02002825 	move	a1,s0
    71d4:	24060002 	li	a2,2
    71d8:	2407006e 	li	a3,110
    71dc:	e7a00010 	swc1	$f0,16(sp)
    71e0:	e7a00014 	swc1	$f0,20(sp)
    71e4:	0c000000 	jal	0 <func_8094F2C0>
    71e8:	e7a8001c 	swc1	$f8,28(sp)
    71ec:	3c014170 	lui	at,0x4170
    71f0:	44810000 	mtc1	at,$f0
    71f4:	3c0140c0 	lui	at,0x40c0
    71f8:	44815000 	mtc1	at,$f10
    71fc:	24180003 	li	t8,3
    7200:	24190001 	li	t9,1
    7204:	afb90020 	sw	t9,32(sp)
    7208:	afb80018 	sw	t8,24(sp)
    720c:	8fa4007c 	lw	a0,124(sp)
    7210:	02002825 	move	a1,s0
    7214:	24060002 	li	a2,2
    7218:	2407006e 	li	a3,110
    721c:	e7a00010 	swc1	$f0,16(sp)
    7220:	e7a00014 	swc1	$f0,20(sp)
    7224:	0c000000 	jal	0 <func_8094F2C0>
    7228:	e7aa001c 	swc1	$f10,28(sp)
    722c:	3c014170 	lui	at,0x4170
    7230:	44810000 	mtc1	at,$f0
    7234:	3c0140e0 	lui	at,0x40e0
    7238:	44818000 	mtc1	at,$f16
    723c:	24090003 	li	t1,3
    7240:	240a0001 	li	t2,1
    7244:	afaa0020 	sw	t2,32(sp)
    7248:	afa90018 	sw	t1,24(sp)
    724c:	8fa4007c 	lw	a0,124(sp)
    7250:	02002825 	move	a1,s0
    7254:	24060002 	li	a2,2
    7258:	2407006e 	li	a3,110
    725c:	e7a00010 	swc1	$f0,16(sp)
    7260:	e7a00014 	swc1	$f0,20(sp)
    7264:	0c000000 	jal	0 <func_8094F2C0>
    7268:	e7b0001c 	swc1	$f16,28(sp)
    726c:	8fa4007c 	lw	a0,124(sp)
    7270:	3c010001 	lui	at,0x1
    7274:	34211e60 	ori	at,at,0x1e60
    7278:	26060338 	addiu	a2,s0,824
    727c:	00812821 	addu	a1,a0,at
    7280:	afa50040 	sw	a1,64(sp)
    7284:	0c000000 	jal	0 <func_8094F2C0>
    7288:	afa6003c 	sw	a2,60(sp)
    728c:	8fa50040 	lw	a1,64(sp)
    7290:	8fa6003c 	lw	a2,60(sp)
    7294:	0c000000 	jal	0 <func_8094F2C0>
    7298:	8fa4007c 	lw	a0,124(sp)
    729c:	1000002d 	b	7354 <func_80955EEC+0x728>
    72a0:	8603019c 	lh	v1,412(s0)
    72a4:	00036043 	sra	t4,v1,0x1
    72a8:	258d0001 	addiu	t5,t4,1
    72ac:	448d2000 	mtc1	t5,$f4
    72b0:	3c014170 	lui	at,0x4170
    72b4:	44810000 	mtc1	at,$f0
    72b8:	468021a0 	cvt.s.w	$f6,$f4
    72bc:	44809000 	mtc1	zero,$f18
    72c0:	240b0005 	li	t3,5
    72c4:	240e0001 	li	t6,1
    72c8:	afae0020 	sw	t6,32(sp)
    72cc:	afab0018 	sw	t3,24(sp)
    72d0:	e7a6001c 	swc1	$f6,28(sp)
    72d4:	24070032 	li	a3,50
    72d8:	e7a00010 	swc1	$f0,16(sp)
    72dc:	0c000000 	jal	0 <func_8094F2C0>
    72e0:	e7b20014 	swc1	$f18,20(sp)
    72e4:	8603019c 	lh	v1,412(s0)
    72e8:	2401000e 	li	at,14
    72ec:	54610005 	bnel	v1,at,7304 <func_80955EEC+0x6d8>
    72f0:	24010004 	li	at,4
    72f4:	0c000000 	jal	0 <func_8094F2C0>
    72f8:	8fa4007c 	lw	a0,124(sp)
    72fc:	8603019c 	lh	v1,412(s0)
    7300:	24010004 	li	at,4
    7304:	54610014 	bnel	v1,at,7358 <func_80955EEC+0x72c>
    7308:	246a0001 	addiu	t2,v1,1
    730c:	8e1801cc 	lw	t8,460(s0)
    7310:	27a70048 	addiu	a3,sp,72
    7314:	3c050000 	lui	a1,0x0
    7318:	acf80000 	sw	t8,0(a3)
    731c:	8e0f01d0 	lw	t7,464(s0)
    7320:	261901f6 	addiu	t9,s0,502
    7324:	24090064 	li	t1,100
    7328:	acef0004 	sw	t7,4(a3)
    732c:	8e1801d4 	lw	t8,468(s0)
    7330:	24a50000 	addiu	a1,a1,0
    7334:	02003025 	move	a2,s0
    7338:	acf80008 	sw	t8,8(a3)
    733c:	afa00018 	sw	zero,24(sp)
    7340:	afa90014 	sw	t1,20(sp)
    7344:	afb90010 	sw	t9,16(sp)
    7348:	0c000000 	jal	0 <func_8094F2C0>
    734c:	8fa4007c 	lw	a0,124(sp)
    7350:	8603019c 	lh	v1,412(s0)
    7354:	246a0001 	addiu	t2,v1,1
    7358:	a60a019c 	sh	t2,412(s0)
    735c:	860b019c 	lh	t3,412(s0)
    7360:	29610018 	slti	at,t3,24
    7364:	54200003 	bnezl	at,7374 <func_80955EEC+0x748>
    7368:	8fbf0034 	lw	ra,52(sp)
    736c:	a2000195 	sb	zero,405(s0)
    7370:	8fbf0034 	lw	ra,52(sp)
    7374:	8fb00030 	lw	s0,48(sp)
    7378:	27bd0078 	addiu	sp,sp,120
    737c:	03e00008 	jr	ra
    7380:	00000000 	nop

00007384 <func_80956644>:
    7384:	27bdffd8 	addiu	sp,sp,-40
    7388:	afa40028 	sw	a0,40(sp)
    738c:	afbf0024 	sw	ra,36(sp)
    7390:	3c040602 	lui	a0,0x602
    7394:	afa5002c 	sw	a1,44(sp)
    7398:	0c000000 	jal	0 <func_8094F2C0>
    739c:	24848b90 	addiu	a0,a0,-29808
    73a0:	44822000 	mtc1	v0,$f4
    73a4:	44800000 	mtc1	zero,$f0
    73a8:	3c01c0c0 	lui	at,0xc0c0
    73ac:	468021a0 	cvt.s.w	$f6,$f4
    73b0:	44814000 	mtc1	at,$f8
    73b4:	8fa40028 	lw	a0,40(sp)
    73b8:	3c050602 	lui	a1,0x602
    73bc:	240e0003 	li	t6,3
    73c0:	44060000 	mfc1	a2,$f0
    73c4:	44070000 	mfc1	a3,$f0
    73c8:	afae0014 	sw	t6,20(sp)
    73cc:	24a58b90 	addiu	a1,a1,-29808
    73d0:	e7a60010 	swc1	$f6,16(sp)
    73d4:	2484014c 	addiu	a0,a0,332
    73d8:	0c000000 	jal	0 <func_8094F2C0>
    73dc:	e7a80018 	swc1	$f8,24(sp)
    73e0:	8fa40028 	lw	a0,40(sp)
    73e4:	3c050000 	lui	a1,0x0
    73e8:	24a50000 	addiu	a1,a1,0
    73ec:	0c000000 	jal	0 <func_8094F2C0>
    73f0:	a0800195 	sb	zero,405(a0)
    73f4:	8fbf0024 	lw	ra,36(sp)
    73f8:	27bd0028 	addiu	sp,sp,40
    73fc:	03e00008 	jr	ra
    7400:	00000000 	nop

00007404 <func_809566C4>:
    7404:	27bdffd8 	addiu	sp,sp,-40
    7408:	afb00020 	sw	s0,32(sp)
    740c:	00808025 	move	s0,a0
    7410:	afbf0024 	sw	ra,36(sp)
    7414:	afa5002c 	sw	a1,44(sp)
    7418:	0c000000 	jal	0 <func_8094F2C0>
    741c:	2484014c 	addiu	a0,a0,332
    7420:	0c000000 	jal	0 <func_8094F2C0>
    7424:	02002025 	move	a0,s0
    7428:	260401e6 	addiu	a0,s0,486
    742c:	00002825 	move	a1,zero
    7430:	24060001 	li	a2,1
    7434:	24071770 	li	a3,6000
    7438:	0c000000 	jal	0 <func_8094F2C0>
    743c:	afa00010 	sw	zero,16(sp)
    7440:	260401e4 	addiu	a0,s0,484
    7444:	00002825 	move	a1,zero
    7448:	24060001 	li	a2,1
    744c:	24071770 	li	a3,6000
    7450:	0c000000 	jal	0 <func_8094F2C0>
    7454:	afa00010 	sw	zero,16(sp)
    7458:	260401ec 	addiu	a0,s0,492
    745c:	00002825 	move	a1,zero
    7460:	24060001 	li	a2,1
    7464:	24071770 	li	a3,6000
    7468:	0c000000 	jal	0 <func_8094F2C0>
    746c:	afa00010 	sw	zero,16(sp)
    7470:	260401ea 	addiu	a0,s0,490
    7474:	00002825 	move	a1,zero
    7478:	24060001 	li	a2,1
    747c:	24071770 	li	a3,6000
    7480:	0c000000 	jal	0 <func_8094F2C0>
    7484:	afa00010 	sw	zero,16(sp)
    7488:	860500b6 	lh	a1,182(s0)
    748c:	afa00010 	sw	zero,16(sp)
    7490:	260401f2 	addiu	a0,s0,498
    7494:	24a5c000 	addiu	a1,a1,-16384
    7498:	00052c00 	sll	a1,a1,0x10
    749c:	00052c03 	sra	a1,a1,0x10
    74a0:	24060001 	li	a2,1
    74a4:	0c000000 	jal	0 <func_8094F2C0>
    74a8:	24072710 	li	a3,10000
    74ac:	8e0e016c 	lw	t6,364(s0)
    74b0:	260401f0 	addiu	a0,s0,496
    74b4:	24060001 	li	a2,1
    74b8:	85c5002e 	lh	a1,46(t6)
    74bc:	afa00010 	sw	zero,16(sp)
    74c0:	24071770 	li	a3,6000
    74c4:	24a5ec78 	addiu	a1,a1,-5000
    74c8:	00052c00 	sll	a1,a1,0x10
    74cc:	0c000000 	jal	0 <func_8094F2C0>
    74d0:	00052c03 	sra	a1,a1,0x10
    74d4:	8e0f0118 	lw	t7,280(s0)
    74d8:	44802000 	mtc1	zero,$f4
    74dc:	02002025 	move	a0,s0
    74e0:	c5e60068 	lwc1	$f6,104(t7)
    74e4:	46062032 	c.eq.s	$f4,$f6
    74e8:	00000000 	nop
    74ec:	45020004 	bc1fl	7500 <func_809566C4+0xfc>
    74f0:	8fbf0024 	lw	ra,36(sp)
    74f4:	0c000000 	jal	0 <func_8094F2C0>
    74f8:	8fa5002c 	lw	a1,44(sp)
    74fc:	8fbf0024 	lw	ra,36(sp)
    7500:	8fb00020 	lw	s0,32(sp)
    7504:	27bd0028 	addiu	sp,sp,40
    7508:	03e00008 	jr	ra
    750c:	00000000 	nop

00007510 <func_809567D0>:
    7510:	27bdffd0 	addiu	sp,sp,-48
    7514:	afb00028 	sw	s0,40(sp)
    7518:	00808025 	move	s0,a0
    751c:	afbf002c 	sw	ra,44(sp)
    7520:	3c040600 	lui	a0,0x600
    7524:	afa50034 	sw	a1,52(sp)
    7528:	0c000000 	jal	0 <func_8094F2C0>
    752c:	24840024 	addiu	a0,a0,36
    7530:	44822000 	mtc1	v0,$f4
    7534:	44800000 	mtc1	zero,$f0
    7538:	3c050600 	lui	a1,0x600
    753c:	468021a0 	cvt.s.w	$f6,$f4
    7540:	44070000 	mfc1	a3,$f0
    7544:	24a50024 	addiu	a1,a1,36
    7548:	2604014c 	addiu	a0,s0,332
    754c:	3c063f80 	lui	a2,0x3f80
    7550:	afa00014 	sw	zero,20(sp)
    7554:	e7a60010 	swc1	$f6,16(sp)
    7558:	0c000000 	jal	0 <func_8094F2C0>
    755c:	e7a00018 	swc1	$f0,24(sp)
    7560:	3c014270 	lui	at,0x4270
    7564:	44814000 	mtc1	at,$f8
    7568:	0c000000 	jal	0 <func_8094F2C0>
    756c:	e60801a0 	swc1	$f8,416(s0)
    7570:	3c0143b4 	lui	at,0x43b4
    7574:	44815000 	mtc1	at,$f10
    7578:	8618001c 	lh	t8,28(s0)
    757c:	44809000 	mtc1	zero,$f18
    7580:	460a0402 	mul.s	$f16,$f0,$f10
    7584:	0018c880 	sll	t9,t8,0x2
    7588:	3c080000 	lui	t0,0x0
    758c:	0338c823 	subu	t9,t9,t8
    7590:	240e0040 	li	t6,64
    7594:	240f0078 	li	t7,120
    7598:	0019c880 	sll	t9,t9,0x2
    759c:	25080000 	addiu	t0,t0,0
    75a0:	e61001a4 	swc1	$f16,420(s0)
    75a4:	a60e019c 	sh	t6,412(s0)
    75a8:	a60f01f0 	sh	t7,496(s0)
    75ac:	03281021 	addu	v0,t9,t0
    75b0:	e61201a8 	swc1	$f18,424(s0)
    75b4:	c4440078 	lwc1	$f4,120(v0)
    75b8:	c6060008 	lwc1	$f6,8(s0)
    75bc:	c610000c 	lwc1	$f16,12(s0)
    75c0:	8e0a0004 	lw	t2,4(s0)
    75c4:	46062200 	add.s	$f8,$f4,$f6
    75c8:	c6060010 	lwc1	$f6,16(s0)
    75cc:	2401fffe 	li	at,-2
    75d0:	2409002d 	li	t1,45
    75d4:	e6080024 	swc1	$f8,36(s0)
    75d8:	c44a007c 	lwc1	$f10,124(v0)
    75dc:	3c050000 	lui	a1,0x0
    75e0:	01415824 	and	t3,t2,at
    75e4:	46105480 	add.s	$f18,$f10,$f16
    75e8:	24a50000 	addiu	a1,a1,0
    75ec:	02002025 	move	a0,s0
    75f0:	e6120028 	swc1	$f18,40(s0)
    75f4:	c4440080 	lwc1	$f4,128(v0)
    75f8:	ae090198 	sw	t1,408(s0)
    75fc:	ae0b0004 	sw	t3,4(s0)
    7600:	46062200 	add.s	$f8,$f4,$f6
    7604:	0c000000 	jal	0 <func_8094F2C0>
    7608:	e608002c 	swc1	$f8,44(s0)
    760c:	8fbf002c 	lw	ra,44(sp)
    7610:	8fb00028 	lw	s0,40(sp)
    7614:	27bd0030 	addiu	sp,sp,48
    7618:	03e00008 	jr	ra
    761c:	00000000 	nop

00007620 <func_809568E0>:
    7620:	27bdffa0 	addiu	sp,sp,-96
    7624:	afbf0034 	sw	ra,52(sp)
    7628:	afb00030 	sw	s0,48(sp)
    762c:	afa50064 	sw	a1,100(sp)
    7630:	8c980008 	lw	t8,8(a0)
    7634:	27ae0054 	addiu	t6,sp,84
    7638:	3c014220 	lui	at,0x4220
    763c:	add80000 	sw	t8,0(t6)
    7640:	8c8f000c 	lw	t7,12(a0)
    7644:	44812000 	mtc1	at,$f4
    7648:	44804000 	mtc1	zero,$f8
    764c:	adcf0004 	sw	t7,4(t6)
    7650:	8c980010 	lw	t8,16(a0)
    7654:	00808025 	move	s0,a0
    7658:	3c0141c8 	lui	at,0x41c8
    765c:	add80008 	sw	t8,8(t6)
    7660:	e7a40050 	swc1	$f4,80(sp)
    7664:	c486000c 	lwc1	$f6,12(a0)
    7668:	c7aa0058 	lwc1	$f10,88(sp)
    766c:	4606403e 	c.le.s	$f8,$f6
    7670:	00000000 	nop
    7674:	45000005 	bc1f	768c <func_809568E0+0x6c>
    7678:	00000000 	nop
    767c:	44818000 	mtc1	at,$f16
    7680:	00000000 	nop
    7684:	46105480 	add.s	$f18,$f10,$f16
    7688:	e7b20058 	swc1	$f18,88(sp)
    768c:	0c000000 	jal	0 <func_8094F2C0>
    7690:	00000000 	nop
    7694:	3c013e80 	lui	at,0x3e80
    7698:	44813000 	mtc1	at,$f6
    769c:	c60401a4 	lwc1	$f4,420(s0)
    76a0:	3c190000 	lui	t9,0x0
    76a4:	46060202 	mul.s	$f8,$f0,$f6
    76a8:	46082280 	add.s	$f10,$f4,$f8
    76ac:	e60a01a4 	swc1	$f10,420(s0)
    76b0:	83390000 	lb	t9,0(t9)
    76b4:	2728fffe 	addiu	t0,t9,-2
    76b8:	2d01000c 	sltiu	at,t0,12
    76bc:	10200102 	beqz	at,7ac8 <L80956D88>
    76c0:	00084080 	sll	t0,t0,0x2
    76c4:	3c010000 	lui	at,0x0
    76c8:	00280821 	addu	at,at,t0
    76cc:	8c280000 	lw	t0,0(at)
    76d0:	01000008 	jr	t0
    76d4:	00000000 	nop

000076d8 <L80956998>:
    76d8:	8609001c 	lh	t1,28(s0)
    76dc:	24010006 	li	at,6
    76e0:	8fa40064 	lw	a0,100(sp)
    76e4:	1521001b 	bne	t1,at,7754 <L80956998+0x7c>
    76e8:	02002825 	move	a1,s0
    76ec:	0c000000 	jal	0 <func_8094F2C0>
    76f0:	24060001 	li	a2,1
    76f4:	3c010000 	lui	at,0x0
    76f8:	c4300000 	lwc1	$f16,0(at)
    76fc:	3c063e99 	lui	a2,0x3e99
    7700:	34c6999a 	ori	a2,a2,0x999a
    7704:	26040028 	addiu	a0,s0,40
    7708:	3c054270 	lui	a1,0x4270
    770c:	3c073f80 	lui	a3,0x3f80
    7710:	0c000000 	jal	0 <func_8094F2C0>
    7714:	e7b00010 	swc1	$f16,16(sp)
    7718:	44809000 	mtc1	zero,$f18
    771c:	00000000 	nop
    7720:	46120032 	c.eq.s	$f0,$f18
    7724:	00000000 	nop
    7728:	4500000a 	bc1f	7754 <L80956998+0x7c>
    772c:	00000000 	nop
    7730:	8e0a0198 	lw	t2,408(s0)
    7734:	3c0d0000 	lui	t5,0x0
    7738:	254bffff 	addiu	t3,t2,-1
    773c:	15600005 	bnez	t3,7754 <L80956998+0x7c>
    7740:	ae0b0198 	sw	t3,408(s0)
    7744:	81ad0000 	lb	t5,0(t5)
    7748:	3c010000 	lui	at,0x0
    774c:	25ae0001 	addiu	t6,t5,1
    7750:	a02e0000 	sb	t6,0(at)
    7754:	100000dc 	b	7ac8 <L80956D88>
    7758:	a60000b4 	sh	zero,180(s0)

0000775c <L80956A1C>:
    775c:	8603001c 	lh	v1,28(s0)
    7760:	24010006 	li	at,6
    7764:	26040028 	addiu	a0,s0,40
    7768:	1061001f 	beq	v1,at,77e8 <L80956A1C+0x8c>
    776c:	3c054270 	lui	a1,0x4270
    7770:	00037880 	sll	t7,v1,0x2
    7774:	01e37823 	subu	t7,t7,v1
    7778:	000f7880 	sll	t7,t7,0x2
    777c:	3c010000 	lui	at,0x0
    7780:	002f0821 	addu	at,at,t7
    7784:	c4260000 	lwc1	$f6,0(at)
    7788:	c604000c 	lwc1	$f4,12(s0)
    778c:	3c010000 	lui	at,0x0
    7790:	c42a0000 	lwc1	$f10,0(at)
    7794:	46043200 	add.s	$f8,$f6,$f4
    7798:	3c063e99 	lui	a2,0x3e99
    779c:	34c6999a 	ori	a2,a2,0x999a
    77a0:	26040028 	addiu	a0,s0,40
    77a4:	44054000 	mfc1	a1,$f8
    77a8:	3c073f80 	lui	a3,0x3f80
    77ac:	0c000000 	jal	0 <func_8094F2C0>
    77b0:	e7aa0010 	swc1	$f10,16(sp)
    77b4:	3c013e80 	lui	at,0x3e80
    77b8:	44819000 	mtc1	at,$f18
    77bc:	c61001a4 	lwc1	$f16,420(s0)
    77c0:	46128302 	mul.s	$f12,$f16,$f18
    77c4:	0c000000 	jal	0 <func_8094F2C0>
    77c8:	00000000 	nop
    77cc:	3c013f00 	lui	at,0x3f00
    77d0:	44812000 	mtc1	at,$f4
    77d4:	c6060024 	lwc1	$f6,36(s0)
    77d8:	46040202 	mul.s	$f8,$f0,$f4
    77dc:	46083280 	add.s	$f10,$f6,$f8
    77e0:	10000008 	b	7804 <L80956A1C+0xa8>
    77e4:	e60a0024 	swc1	$f10,36(s0)
    77e8:	3c010000 	lui	at,0x0
    77ec:	c4300000 	lwc1	$f16,0(at)
    77f0:	3c063e99 	lui	a2,0x3e99
    77f4:	34c6999a 	ori	a2,a2,0x999a
    77f8:	3c073f80 	lui	a3,0x3f80
    77fc:	0c000000 	jal	0 <func_8094F2C0>
    7800:	e7b00010 	swc1	$f16,16(sp)
    7804:	0c000000 	jal	0 <func_8094F2C0>
    7808:	c60c01a4 	lwc1	$f12,420(s0)
    780c:	e7a00044 	swc1	$f0,68(sp)
    7810:	0c000000 	jal	0 <func_8094F2C0>
    7814:	c60c01a4 	lwc1	$f12,420(s0)
    7818:	3c014000 	lui	at,0x4000
    781c:	44819000 	mtc1	at,$f18
    7820:	c7a40044 	lwc1	$f4,68(sp)
    7824:	c60a0028 	lwc1	$f10,40(s0)
    7828:	46049181 	sub.s	$f6,$f18,$f4
    782c:	46060202 	mul.s	$f8,$f0,$f6
    7830:	46085400 	add.s	$f16,$f10,$f8
    7834:	100000a4 	b	7ac8 <L80956D88>
    7838:	e6100028 	swc1	$f16,40(s0)

0000783c <L80956AFC>:
    783c:	8618019c 	lh	t8,412(s0)
    7840:	2b010010 	slti	at,t8,16
    7844:	5420006f 	bnezl	at,7a04 <L80956CC0+0x4>
    7848:	8e0b0198 	lw	t3,408(s0)
    784c:	8e190198 	lw	t9,408(s0)
    7850:	26040024 	addiu	a0,s0,36
    7854:	8fa50054 	lw	a1,84(sp)
    7858:	07210069 	bgez	t9,7a00 <L80956CC0>
    785c:	3c063f80 	lui	a2,0x3f80
    7860:	44809000 	mtc1	zero,$f18
    7864:	3c0740d0 	lui	a3,0x40d0
    7868:	afa4003c 	sw	a0,60(sp)
    786c:	0c000000 	jal	0 <func_8094F2C0>
    7870:	e7b20010 	swc1	$f18,16(sp)
    7874:	44802000 	mtc1	zero,$f4
    7878:	26040028 	addiu	a0,s0,40
    787c:	8fa50058 	lw	a1,88(sp)
    7880:	3c063f80 	lui	a2,0x3f80
    7884:	3c0740d0 	lui	a3,0x40d0
    7888:	0c000000 	jal	0 <func_8094F2C0>
    788c:	e7a40010 	swc1	$f4,16(sp)
    7890:	44803000 	mtc1	zero,$f6
    7894:	2604002c 	addiu	a0,s0,44
    7898:	8fa5005c 	lw	a1,92(sp)
    789c:	3c063f80 	lui	a2,0x3f80
    78a0:	3c0740d0 	lui	a3,0x40d0
    78a4:	0c000000 	jal	0 <func_8094F2C0>
    78a8:	e7a60010 	swc1	$f6,16(sp)
    78ac:	27a40054 	addiu	a0,sp,84
    78b0:	0c000000 	jal	0 <func_8094F2C0>
    78b4:	8fa5003c 	lw	a1,60(sp)
    78b8:	3c014270 	lui	at,0x4270
    78bc:	44815000 	mtc1	at,$f10
    78c0:	e7a00050 	swc1	$f0,80(sp)
    78c4:	260400b4 	addiu	a0,s0,180
    78c8:	460a003e 	c.le.s	$f0,$f10
    78cc:	24060001 	li	a2,1
    78d0:	240707d0 	li	a3,2000
    78d4:	4502004b 	bc1fl	7a04 <L80956CC0+0x4>
    78d8:	8e0b0198 	lw	t3,408(s0)
    78dc:	86050014 	lh	a1,20(s0)
    78e0:	0c000000 	jal	0 <func_8094F2C0>
    78e4:	afa00010 	sw	zero,16(sp)
    78e8:	04400004 	bltz	v0,78fc <L80956AFC+0xc0>
    78ec:	260400b6 	addiu	a0,s0,182
    78f0:	00021c00 	sll	v1,v0,0x10
    78f4:	10000004 	b	7908 <L80956AFC+0xcc>
    78f8:	00031c03 	sra	v1,v1,0x10
    78fc:	00021823 	negu	v1,v0
    7900:	00031c00 	sll	v1,v1,0x10
    7904:	00031c03 	sra	v1,v1,0x10
    7908:	86050016 	lh	a1,22(s0)
    790c:	a7a3004e 	sh	v1,78(sp)
    7910:	afa00010 	sw	zero,16(sp)
    7914:	24060001 	li	a2,1
    7918:	0c000000 	jal	0 <func_8094F2C0>
    791c:	240707d0 	li	a3,2000
    7920:	04400003 	bltz	v0,7930 <L80956AFC+0xf4>
    7924:	87a3004e 	lh	v1,78(sp)
    7928:	10000002 	b	7934 <L80956AFC+0xf8>
    792c:	00402025 	move	a0,v0
    7930:	00022023 	negu	a0,v0
    7934:	c7a80050 	lwc1	$f8,80(sp)
    7938:	44808000 	mtc1	zero,$f16
    793c:	00641821 	addu	v1,v1,a0
    7940:	00031c00 	sll	v1,v1,0x10
    7944:	46104032 	c.eq.s	$f8,$f16
    7948:	00031c03 	sra	v1,v1,0x10
    794c:	4502002d 	bc1fl	7a04 <L80956CC0+0x4>
    7950:	8e0b0198 	lw	t3,408(s0)
    7954:	5460002b 	bnezl	v1,7a04 <L80956CC0+0x4>
    7958:	8e0b0198 	lw	t3,408(s0)
    795c:	92080197 	lbu	t0,407(s0)
    7960:	55000020 	bnezl	t0,79e4 <L80956AFC+0x1a8>
    7964:	8e080198 	lw	t0,408(s0)
    7968:	8603001c 	lh	v1,28(s0)
    796c:	3c040000 	lui	a0,0x0
    7970:	24840000 	addiu	a0,a0,0
    7974:	2861000b 	slti	at,v1,11
    7978:	14200010 	bnez	at,79bc <L80956AFC+0x180>
    797c:	00831021 	addu	v0,a0,v1
    7980:	2401000b 	li	at,11
    7984:	14610007 	bne	v1,at,79a4 <L80956AFC+0x168>
    7988:	3c040000 	lui	a0,0x0
    798c:	3c040000 	lui	a0,0x0
    7990:	24840000 	addiu	a0,a0,0
    7994:	90890000 	lbu	t1,0(a0)
    7998:	252a0001 	addiu	t2,t1,1
    799c:	1000000a 	b	79c8 <L80956AFC+0x18c>
    79a0:	a08a0000 	sb	t2,0(a0)
    79a4:	24840000 	addiu	a0,a0,0
    79a8:	00831021 	addu	v0,a0,v1
    79ac:	904bfffa 	lbu	t3,-6(v0)
    79b0:	256c0001 	addiu	t4,t3,1
    79b4:	10000004 	b	79c8 <L80956AFC+0x18c>
    79b8:	a04cfffa 	sb	t4,-6(v0)
    79bc:	904dfffb 	lbu	t5,-5(v0)
    79c0:	25ae0001 	addiu	t6,t5,1
    79c4:	a04efffb 	sb	t6,-5(v0)
    79c8:	92180197 	lbu	t8,407(s0)
    79cc:	240fffe2 	li	t7,-30
    79d0:	ae0f0198 	sw	t7,408(s0)
    79d4:	27190001 	addiu	t9,t8,1
    79d8:	10000062 	b	7b64 <L80956D88+0x9c>
    79dc:	a2190197 	sb	t9,407(s0)
    79e0:	8e080198 	lw	t0,408(s0)
    79e4:	25090001 	addiu	t1,t0,1
    79e8:	1520005e 	bnez	t1,7b64 <L80956D88+0x9c>
    79ec:	ae090198 	sw	t1,408(s0)
    79f0:	0c000000 	jal	0 <func_8094F2C0>
    79f4:	02002025 	move	a0,s0
    79f8:	1000005b 	b	7b68 <L80956D88+0xa0>
    79fc:	8fbf0034 	lw	ra,52(sp)

00007a00 <L80956CC0>:
    7a00:	8e0b0198 	lw	t3,408(s0)
    7a04:	26050024 	addiu	a1,s0,36
    7a08:	26060030 	addiu	a2,s0,48
    7a0c:	256cffff 	addiu	t4,t3,-1
    7a10:	15800003 	bnez	t4,7a20 <L80956CC0+0x20>
    7a14:	ae0c0198 	sw	t4,408(s0)
    7a18:	1000002b 	b	7ac8 <L80956D88>
    7a1c:	a600019c 	sh	zero,412(s0)
    7a20:	8e040118 	lw	a0,280(s0)
    7a24:	afa5003c 	sw	a1,60(sp)
    7a28:	00003825 	move	a3,zero
    7a2c:	0c000000 	jal	0 <func_8094F2C0>
    7a30:	24840024 	addiu	a0,a0,36
    7a34:	8e040118 	lw	a0,280(s0)
    7a38:	8fa5003c 	lw	a1,60(sp)
    7a3c:	0c000000 	jal	0 <func_8094F2C0>
    7a40:	24840024 	addiu	a0,a0,36
    7a44:	e60001a0 	swc1	$f0,416(s0)
    7a48:	3c0141f0 	lui	at,0x41f0
    7a4c:	44819000 	mtc1	at,$f18
    7a50:	c7a40050 	lwc1	$f4,80(sp)
    7a54:	3c014170 	lui	at,0x4170
    7a58:	8fa40064 	lw	a0,100(sp)
    7a5c:	4604903c 	c.lt.s	$f18,$f4
    7a60:	02002825 	move	a1,s0
    7a64:	24060001 	li	a2,1
    7a68:	24070050 	li	a3,80
    7a6c:	45000016 	bc1f	7ac8 <L80956D88>
    7a70:	240e0002 	li	t6,2
    7a74:	44813000 	mtc1	at,$f6
    7a78:	3c013f80 	lui	at,0x3f80
    7a7c:	44814000 	mtc1	at,$f8
    7a80:	44805000 	mtc1	zero,$f10
    7a84:	240f0001 	li	t7,1
    7a88:	afaf0020 	sw	t7,32(sp)
    7a8c:	afae0018 	sw	t6,24(sp)
    7a90:	e7a60010 	swc1	$f6,16(sp)
    7a94:	e7a8001c 	swc1	$f8,28(sp)
    7a98:	0c000000 	jal	0 <func_8094F2C0>
    7a9c:	e7aa0014 	swc1	$f10,20(sp)
    7aa0:	1000000a 	b	7acc <L80956D88+0x4>
    7aa4:	8fa40064 	lw	a0,100(sp)

00007aa8 <L80956D68>:
    7aa8:	8e180198 	lw	t8,408(s0)
    7aac:	27190001 	addiu	t9,t8,1
    7ab0:	1720002c 	bnez	t9,7b64 <L80956D88+0x9c>
    7ab4:	ae190198 	sw	t9,408(s0)
    7ab8:	0c000000 	jal	0 <func_8094F2C0>
    7abc:	02002025 	move	a0,s0
    7ac0:	10000029 	b	7b68 <L80956D88+0xa0>
    7ac4:	8fbf0034 	lw	ra,52(sp)

00007ac8 <L80956D88>:
    7ac8:	8fa40064 	lw	a0,100(sp)
    7acc:	3c090001 	lui	t1,0x1
    7ad0:	3c0b0000 	lui	t3,0x0
    7ad4:	01244821 	addu	t1,t1,a0
    7ad8:	8d291de4 	lw	t1,7652(t1)
    7adc:	312a0003 	andi	t2,t1,0x3
    7ae0:	15400015 	bnez	t2,7b38 <L80956D88+0x70>
    7ae4:	00000000 	nop
    7ae8:	816b0000 	lb	t3,0(t3)
    7aec:	02002825 	move	a1,s0
    7af0:	24060001 	li	a2,1
    7af4:	29610009 	slti	at,t3,9
    7af8:	1020000f 	beqz	at,7b38 <L80956D88+0x70>
    7afc:	24070046 	li	a3,70
    7b00:	3c0141c8 	lui	at,0x41c8
    7b04:	44818000 	mtc1	at,$f16
    7b08:	3c0141a0 	lui	at,0x41a0
    7b0c:	44819000 	mtc1	at,$f18
    7b10:	3c014000 	lui	at,0x4000
    7b14:	44812000 	mtc1	at,$f4
    7b18:	240c0002 	li	t4,2
    7b1c:	240d0001 	li	t5,1
    7b20:	afad0020 	sw	t5,32(sp)
    7b24:	afac0018 	sw	t4,24(sp)
    7b28:	e7b00010 	swc1	$f16,16(sp)
    7b2c:	e7b20014 	swc1	$f18,20(sp)
    7b30:	0c000000 	jal	0 <func_8094F2C0>
    7b34:	e7a4001c 	swc1	$f4,28(sp)
    7b38:	0c000000 	jal	0 <func_8094F2C0>
    7b3c:	00000000 	nop
    7b40:	3c010000 	lui	at,0x0
    7b44:	c4260000 	lwc1	$f6,0(at)
    7b48:	02002025 	move	a0,s0
    7b4c:	4606003c 	c.lt.s	$f0,$f6
    7b50:	00000000 	nop
    7b54:	45020004 	bc1fl	7b68 <L80956D88+0xa0>
    7b58:	8fbf0034 	lw	ra,52(sp)
    7b5c:	0c000000 	jal	0 <func_8094F2C0>
    7b60:	24053143 	li	a1,12611
    7b64:	8fbf0034 	lw	ra,52(sp)
    7b68:	8fb00030 	lw	s0,48(sp)
    7b6c:	27bd0060 	addiu	sp,sp,96
    7b70:	03e00008 	jr	ra
    7b74:	00000000 	nop

00007b78 <func_80956E38>:
    7b78:	27bdffd0 	addiu	sp,sp,-48
    7b7c:	afb00028 	sw	s0,40(sp)
    7b80:	00808025 	move	s0,a0
    7b84:	afbf002c 	sw	ra,44(sp)
    7b88:	3c040600 	lui	a0,0x600
    7b8c:	afa50034 	sw	a1,52(sp)
    7b90:	0c000000 	jal	0 <func_8094F2C0>
    7b94:	24840024 	addiu	a0,a0,36
    7b98:	44822000 	mtc1	v0,$f4
    7b9c:	44800000 	mtc1	zero,$f0
    7ba0:	3c050600 	lui	a1,0x600
    7ba4:	468021a0 	cvt.s.w	$f6,$f4
    7ba8:	44070000 	mfc1	a3,$f0
    7bac:	24a50024 	addiu	a1,a1,36
    7bb0:	2604014c 	addiu	a0,s0,332
    7bb4:	3c063f80 	lui	a2,0x3f80
    7bb8:	afa00014 	sw	zero,20(sp)
    7bbc:	e7a60010 	swc1	$f6,16(sp)
    7bc0:	0c000000 	jal	0 <func_8094F2C0>
    7bc4:	e7a00018 	swc1	$f0,24(sp)
    7bc8:	8e180004 	lw	t8,4(s0)
    7bcc:	3c014270 	lui	at,0x4270
    7bd0:	44814000 	mtc1	at,$f8
    7bd4:	44805000 	mtc1	zero,$f10
    7bd8:	2401fffe 	li	at,-2
    7bdc:	240e0080 	li	t6,128
    7be0:	240f0078 	li	t7,120
    7be4:	3c050000 	lui	a1,0x0
    7be8:	0301c824 	and	t9,t8,at
    7bec:	a60e019c 	sh	t6,412(s0)
    7bf0:	a60f01f0 	sh	t7,496(s0)
    7bf4:	ae190004 	sw	t9,4(s0)
    7bf8:	24a50000 	addiu	a1,a1,0
    7bfc:	02002025 	move	a0,s0
    7c00:	e60801a0 	swc1	$f8,416(s0)
    7c04:	0c000000 	jal	0 <func_8094F2C0>
    7c08:	e60a01a8 	swc1	$f10,424(s0)
    7c0c:	8fbf002c 	lw	ra,44(sp)
    7c10:	8fb00028 	lw	s0,40(sp)
    7c14:	27bd0030 	addiu	sp,sp,48
    7c18:	03e00008 	jr	ra
    7c1c:	00000000 	nop

00007c20 <func_80956EE0>:
    7c20:	27bdff98 	addiu	sp,sp,-104
    7c24:	afbf0034 	sw	ra,52(sp)
    7c28:	afb00030 	sw	s0,48(sp)
    7c2c:	afa5006c 	sw	a1,108(sp)
    7c30:	8caf1c44 	lw	t7,7236(a1)
    7c34:	27b80054 	addiu	t8,sp,84
    7c38:	00808025 	move	s0,a0
    7c3c:	afaf0064 	sw	t7,100(sp)
    7c40:	8c990118 	lw	t9,280(a0)
    7c44:	8f2901d8 	lw	t1,472(t9)
    7c48:	af090000 	sw	t1,0(t8)
    7c4c:	8f2801dc 	lw	t0,476(t9)
    7c50:	af080004 	sw	t0,4(t8)
    7c54:	8f2901e0 	lw	t1,480(t9)
    7c58:	0c000000 	jal	0 <func_8094F2C0>
    7c5c:	af090008 	sw	t1,8(t8)
    7c60:	3c013f00 	lui	at,0x3f00
    7c64:	44813000 	mtc1	at,$f6
    7c68:	c60401a4 	lwc1	$f4,420(s0)
    7c6c:	860a019c 	lh	t2,412(s0)
    7c70:	46060202 	mul.s	$f8,$f0,$f6
    7c74:	3c010001 	lui	at,0x1
    7c78:	3c0e0001 	lui	t6,0x1
    7c7c:	314b01ff 	andi	t3,t2,0x1ff
    7c80:	46082280 	add.s	$f10,$f4,$f8
    7c84:	e60a01a4 	swc1	$f10,420(s0)
    7c88:	8fac006c 	lw	t4,108(sp)
    7c8c:	a7ab0052 	sh	t3,82(sp)
    7c90:	01816821 	addu	t5,t4,at
    7c94:	afad0044 	sw	t5,68(sp)
    7c98:	01cc7021 	addu	t6,t6,t4
    7c9c:	8dce1de4 	lw	t6,7652(t6)
    7ca0:	31cf007f 	andi	t7,t6,0x7f
    7ca4:	55e0000d 	bnezl	t7,7cdc <func_80956EE0+0xbc>
    7ca8:	860501f6 	lh	a1,502(s0)
    7cac:	0c000000 	jal	0 <func_8094F2C0>
    7cb0:	00000000 	nop
    7cb4:	3c0142c8 	lui	at,0x42c8
    7cb8:	44818000 	mtc1	at,$f16
    7cbc:	00000000 	nop
    7cc0:	46100482 	mul.s	$f18,$f0,$f16
    7cc4:	4600918d 	trunc.w.s	$f6,$f18
    7cc8:	44093000 	mfc1	t1,$f6
    7ccc:	00000000 	nop
    7cd0:	252a0064 	addiu	t2,t1,100
    7cd4:	a60a01f6 	sh	t2,502(s0)
    7cd8:	860501f6 	lh	a1,502(s0)
    7cdc:	afa00010 	sw	zero,16(sp)
    7ce0:	260401fa 	addiu	a0,s0,506
    7ce4:	24060001 	li	a2,1
    7ce8:	0c000000 	jal	0 <func_8094F2C0>
    7cec:	2407001e 	li	a3,30
    7cf0:	860b01f8 	lh	t3,504(s0)
    7cf4:	860d01fa 	lh	t5,506(s0)
    7cf8:	92030348 	lbu	v1,840(s0)
    7cfc:	016d6021 	addu	t4,t3,t5
    7d00:	306e0002 	andi	t6,v1,0x2
    7d04:	15c00005 	bnez	t6,7d1c <func_80956EE0+0xfc>
    7d08:	a60c01f8 	sh	t4,504(s0)
    7d0c:	920f02e8 	lbu	t7,744(s0)
    7d10:	31f80002 	andi	t8,t7,0x2
    7d14:	5300001d 	beqzl	t8,7d8c <func_80956EE0+0x16c>
    7d18:	920202e9 	lbu	v0,745(s0)
    7d1c:	8fb90064 	lw	t9,100(sp)
    7d20:	8e08033c 	lw	t0,828(s0)
    7d24:	3c014100 	lui	at,0x4100
    7d28:	8fa4006c 	lw	a0,108(sp)
    7d2c:	53280005 	beql	t9,t0,7d44 <func_80956EE0+0x124>
    7d30:	44810000 	mtc1	at,$f0
    7d34:	8e0902dc 	lw	t1,732(s0)
    7d38:	5729000f 	bnel	t9,t1,7d78 <func_80956EE0+0x158>
    7d3c:	920d02e8 	lbu	t5,744(s0)
    7d40:	44810000 	mtc1	at,$f0
    7d44:	8e0a0118 	lw	t2,280(s0)
    7d48:	02002825 	move	a1,s0
    7d4c:	44060000 	mfc1	a2,$f0
    7d50:	8547008a 	lh	a3,138(t2)
    7d54:	0c000000 	jal	0 <func_8094F2C0>
    7d58:	e7a00010 	swc1	$f0,16(sp)
    7d5c:	8fa40064 	lw	a0,100(sp)
    7d60:	0c000000 	jal	0 <func_8094F2C0>
    7d64:	2405083e 	li	a1,2110
    7d68:	ae0002dc 	sw	zero,732(s0)
    7d6c:	ae00033c 	sw	zero,828(s0)
    7d70:	92030348 	lbu	v1,840(s0)
    7d74:	920d02e8 	lbu	t5,744(s0)
    7d78:	306bfffd 	andi	t3,v1,0xfffd
    7d7c:	a20b0348 	sb	t3,840(s0)
    7d80:	31acfffd 	andi	t4,t5,0xfffd
    7d84:	a20c02e8 	sb	t4,744(s0)
    7d88:	920202e9 	lbu	v0,745(s0)
    7d8c:	2404fffd 	li	a0,-3
    7d90:	304e0002 	andi	t6,v0,0x2
    7d94:	11c00012 	beqz	t6,7de0 <func_80956EE0+0x1c0>
    7d98:	00000000 	nop
    7d9c:	8e0302e0 	lw	v1,736(s0)
    7da0:	00447824 	and	t7,v0,a0
    7da4:	a20f02e9 	sb	t7,745(s0)
    7da8:	84780000 	lh	t8,0(v1)
    7dac:	24010032 	li	at,50
    7db0:	87a80052 	lh	t0,82(sp)
    7db4:	1701000a 	bne	t8,at,7de0 <func_80956EE0+0x1c0>
    7db8:	29010080 	slti	at,t0,128
    7dbc:	14200008 	bnez	at,7de0 <func_80956EE0+0x1c0>
    7dc0:	02002025 	move	a0,s0
    7dc4:	a06001d4 	sb	zero,468(v1)
    7dc8:	8fb90064 	lw	t9,100(sp)
    7dcc:	8469008a 	lh	t1,138(v1)
    7dd0:	24051808 	li	a1,6152
    7dd4:	ac7901cc 	sw	t9,460(v1)
    7dd8:	0c000000 	jal	0 <func_8094F2C0>
    7ddc:	a4690032 	sh	t1,50(v1)
    7de0:	0c000000 	jal	0 <func_8094F2C0>
    7de4:	86040032 	lh	a0,50(s0)
    7de8:	c60401a0 	lwc1	$f4,416(s0)
    7dec:	c7aa0054 	lwc1	$f10,84(sp)
    7df0:	86040032 	lh	a0,50(s0)
    7df4:	46040202 	mul.s	$f8,$f0,$f4
    7df8:	460a4400 	add.s	$f16,$f8,$f10
    7dfc:	0c000000 	jal	0 <func_8094F2C0>
    7e00:	e6100024 	swc1	$f16,36(s0)
    7e04:	c61201a0 	lwc1	$f18,416(s0)
    7e08:	c7a4005c 	lwc1	$f4,92(sp)
    7e0c:	44805000 	mtc1	zero,$f10
    7e10:	46120182 	mul.s	$f6,$f0,$f18
    7e14:	26040028 	addiu	a0,s0,40
    7e18:	3c054080 	lui	a1,0x4080
    7e1c:	3c063f80 	lui	a2,0x3f80
    7e20:	3c074000 	lui	a3,0x4000
    7e24:	46043200 	add.s	$f8,$f6,$f4
    7e28:	e608002c 	swc1	$f8,44(s0)
    7e2c:	0c000000 	jal	0 <func_8094F2C0>
    7e30:	e7aa0010 	swc1	$f10,16(sp)
    7e34:	0c000000 	jal	0 <func_8094F2C0>
    7e38:	c60c01a4 	lwc1	$f12,420(s0)
    7e3c:	46000480 	add.s	$f18,$f0,$f0
    7e40:	c6100028 	lwc1	$f16,40(s0)
    7e44:	27a40054 	addiu	a0,sp,84
    7e48:	26050024 	addiu	a1,s0,36
    7e4c:	46128180 	add.s	$f6,$f16,$f18
    7e50:	0c000000 	jal	0 <func_8094F2C0>
    7e54:	e6060028 	swc1	$f6,40(s0)
    7e58:	44802000 	mtc1	zero,$f4
    7e5c:	a6020030 	sh	v0,48(s0)
    7e60:	260401a0 	addiu	a0,s0,416
    7e64:	3c054320 	lui	a1,0x4320
    7e68:	3c063f80 	lui	a2,0x3f80
    7e6c:	3c074000 	lui	a3,0x4000
    7e70:	0c000000 	jal	0 <func_8094F2C0>
    7e74:	e7a40010 	swc1	$f4,16(sp)
    7e78:	260400b4 	addiu	a0,s0,180
    7e7c:	00002825 	move	a1,zero
    7e80:	24060001 	li	a2,1
    7e84:	240705dc 	li	a3,1500
    7e88:	0c000000 	jal	0 <func_8094F2C0>
    7e8c:	afa00010 	sw	zero,16(sp)
    7e90:	860a019c 	lh	t2,412(s0)
    7e94:	240d0bb8 	li	t5,3000
    7e98:	240cf448 	li	t4,-3000
    7e9c:	314b0200 	andi	t3,t2,0x200
    7ea0:	15600003 	bnez	t3,7eb0 <func_80956EE0+0x290>
    7ea4:	24080001 	li	t0,1
    7ea8:	10000002 	b	7eb4 <func_80956EE0+0x294>
    7eac:	a60d01ac 	sh	t5,428(s0)
    7eb0:	a60c01ac 	sh	t4,428(s0)
    7eb4:	87ae0052 	lh	t6,82(sp)
    7eb8:	8fa4006c 	lw	a0,108(sp)
    7ebc:	02002825 	move	a1,s0
    7ec0:	29c10080 	slti	at,t6,128
    7ec4:	1420001f 	bnez	at,7f44 <func_80956EE0+0x324>
    7ec8:	260702d8 	addiu	a3,s0,728
    7ecc:	3c014170 	lui	at,0x4170
    7ed0:	44814000 	mtc1	at,$f8
    7ed4:	3c0140e0 	lui	at,0x40e0
    7ed8:	44815000 	mtc1	at,$f10
    7edc:	3c013f80 	lui	at,0x3f80
    7ee0:	44818000 	mtc1	at,$f16
    7ee4:	240f0001 	li	t7,1
    7ee8:	24180001 	li	t8,1
    7eec:	afb80020 	sw	t8,32(sp)
    7ef0:	afaf0018 	sw	t7,24(sp)
    7ef4:	24060001 	li	a2,1
    7ef8:	2407004b 	li	a3,75
    7efc:	e7a80010 	swc1	$f8,16(sp)
    7f00:	e7aa0014 	swc1	$f10,20(sp)
    7f04:	0c000000 	jal	0 <func_8094F2C0>
    7f08:	e7b0001c 	swc1	$f16,28(sp)
    7f0c:	8fa4006c 	lw	a0,108(sp)
    7f10:	3c010001 	lui	at,0x1
    7f14:	34211e60 	ori	at,at,0x1e60
    7f18:	260702d8 	addiu	a3,s0,728
    7f1c:	00812821 	addu	a1,a0,at
    7f20:	afa50040 	sw	a1,64(sp)
    7f24:	00e03025 	move	a2,a3
    7f28:	0c000000 	jal	0 <func_8094F2C0>
    7f2c:	afa7003c 	sw	a3,60(sp)
    7f30:	3c010000 	lui	at,0x0
    7f34:	8fa50040 	lw	a1,64(sp)
    7f38:	8fa7003c 	lw	a3,60(sp)
    7f3c:	10000007 	b	7f5c <func_80956EE0+0x33c>
    7f40:	a0200000 	sb	zero,0(at)
    7f44:	3c010000 	lui	at,0x0
    7f48:	8fa5006c 	lw	a1,108(sp)
    7f4c:	a0280000 	sb	t0,0(at)
    7f50:	3c010001 	lui	at,0x1
    7f54:	34211e60 	ori	at,at,0x1e60
    7f58:	00a12821 	addu	a1,a1,at
    7f5c:	8fa4006c 	lw	a0,108(sp)
    7f60:	26060338 	addiu	a2,s0,824
    7f64:	afa50040 	sw	a1,64(sp)
    7f68:	0c000000 	jal	0 <func_8094F2C0>
    7f6c:	afa7003c 	sw	a3,60(sp)
    7f70:	8fa50040 	lw	a1,64(sp)
    7f74:	8fa6003c 	lw	a2,60(sp)
    7f78:	0c000000 	jal	0 <func_8094F2C0>
    7f7c:	8fa4006c 	lw	a0,108(sp)
    7f80:	8fb90044 	lw	t9,68(sp)
    7f84:	260401f0 	addiu	a0,s0,496
    7f88:	24050078 	li	a1,120
    7f8c:	8f291de4 	lw	t1,7652(t9)
    7f90:	24060001 	li	a2,1
    7f94:	2407000a 	li	a3,10
    7f98:	312a0003 	andi	t2,t1,0x3
    7f9c:	15400003 	bnez	t2,7fac <func_80956EE0+0x38c>
    7fa0:	00000000 	nop
    7fa4:	0c000000 	jal	0 <func_8094F2C0>
    7fa8:	afa00010 	sw	zero,16(sp)
    7fac:	0c000000 	jal	0 <func_8094F2C0>
    7fb0:	00000000 	nop
    7fb4:	3c010000 	lui	at,0x0
    7fb8:	c4320000 	lwc1	$f18,0(at)
    7fbc:	02002025 	move	a0,s0
    7fc0:	4612003c 	c.lt.s	$f0,$f18
    7fc4:	00000000 	nop
    7fc8:	45020004 	bc1fl	7fdc <func_80956EE0+0x3bc>
    7fcc:	860b0032 	lh	t3,50(s0)
    7fd0:	0c000000 	jal	0 <func_8094F2C0>
    7fd4:	24053143 	li	a1,12611
    7fd8:	860b0032 	lh	t3,50(s0)
    7fdc:	860d01ac 	lh	t5,428(s0)
    7fe0:	3c0e0000 	lui	t6,0x0
    7fe4:	02002025 	move	a0,s0
    7fe8:	016d6021 	addu	t4,t3,t5
    7fec:	a60c0032 	sh	t4,50(s0)
    7ff0:	91ce0000 	lbu	t6,0(t6)
    7ff4:	31cf007f 	andi	t7,t6,0x7f
    7ff8:	51e00004 	beqzl	t7,800c <func_80956EE0+0x3ec>
    7ffc:	8fbf0034 	lw	ra,52(sp)
    8000:	0c000000 	jal	0 <func_8094F2C0>
    8004:	8fa5006c 	lw	a1,108(sp)
    8008:	8fbf0034 	lw	ra,52(sp)
    800c:	8fb00030 	lw	s0,48(sp)
    8010:	27bd0068 	addiu	sp,sp,104
    8014:	03e00008 	jr	ra
    8018:	00000000 	nop

0000801c <func_809572DC>:
    801c:	27bdffd0 	addiu	sp,sp,-48
    8020:	afb00028 	sw	s0,40(sp)
    8024:	00808025 	move	s0,a0
    8028:	afbf002c 	sw	ra,44(sp)
    802c:	3c040600 	lui	a0,0x600
    8030:	afa50034 	sw	a1,52(sp)
    8034:	0c000000 	jal	0 <func_8094F2C0>
    8038:	24840024 	addiu	a0,a0,36
    803c:	44822000 	mtc1	v0,$f4
    8040:	44800000 	mtc1	zero,$f0
    8044:	3c050600 	lui	a1,0x600
    8048:	468021a0 	cvt.s.w	$f6,$f4
    804c:	44070000 	mfc1	a3,$f0
    8050:	24a50024 	addiu	a1,a1,36
    8054:	2604014c 	addiu	a0,s0,332
    8058:	3c063f80 	lui	a2,0x3f80
    805c:	afa00014 	sw	zero,20(sp)
    8060:	e7a60010 	swc1	$f6,16(sp)
    8064:	0c000000 	jal	0 <func_8094F2C0>
    8068:	e7a00018 	swc1	$f0,24(sp)
    806c:	8e180004 	lw	t8,4(s0)
    8070:	3c014270 	lui	at,0x4270
    8074:	44814000 	mtc1	at,$f8
    8078:	44805000 	mtc1	zero,$f10
    807c:	2401fffe 	li	at,-2
    8080:	240e0040 	li	t6,64
    8084:	240f0078 	li	t7,120
    8088:	3c050000 	lui	a1,0x0
    808c:	0301c824 	and	t9,t8,at
    8090:	a60e019c 	sh	t6,412(s0)
    8094:	a60f01f0 	sh	t7,496(s0)
    8098:	ae190004 	sw	t9,4(s0)
    809c:	24a50000 	addiu	a1,a1,0
    80a0:	02002025 	move	a0,s0
    80a4:	e60801a0 	swc1	$f8,416(s0)
    80a8:	0c000000 	jal	0 <func_8094F2C0>
    80ac:	e60a01a8 	swc1	$f10,424(s0)
    80b0:	8fbf002c 	lw	ra,44(sp)
    80b4:	8fb00028 	lw	s0,40(sp)
    80b8:	27bd0030 	addiu	sp,sp,48
    80bc:	03e00008 	jr	ra
    80c0:	00000000 	nop

000080c4 <func_80957384>:
    80c4:	27bdff98 	addiu	sp,sp,-104
    80c8:	afbf0034 	sw	ra,52(sp)
    80cc:	afb00030 	sw	s0,48(sp)
    80d0:	afa5006c 	sw	a1,108(sp)
    80d4:	8caf1c44 	lw	t7,7236(a1)
    80d8:	27b80054 	addiu	t8,sp,84
    80dc:	00808025 	move	s0,a0
    80e0:	afaf0064 	sw	t7,100(sp)
    80e4:	8c990118 	lw	t9,280(a0)
    80e8:	8f2901d8 	lw	t1,472(t9)
    80ec:	af090000 	sw	t1,0(t8)
    80f0:	8f2801dc 	lw	t0,476(t9)
    80f4:	af080004 	sw	t0,4(t8)
    80f8:	8f2901e0 	lw	t1,480(t9)
    80fc:	0c000000 	jal	0 <func_8094F2C0>
    8100:	af090008 	sw	t1,8(t8)
    8104:	3c013f00 	lui	at,0x3f00
    8108:	44813000 	mtc1	at,$f6
    810c:	c60401a4 	lwc1	$f4,420(s0)
    8110:	860a019c 	lh	t2,412(s0)
    8114:	46060202 	mul.s	$f8,$f0,$f6
    8118:	3c010001 	lui	at,0x1
    811c:	3c0e0001 	lui	t6,0x1
    8120:	314b01ff 	andi	t3,t2,0x1ff
    8124:	46082280 	add.s	$f10,$f4,$f8
    8128:	e60a01a4 	swc1	$f10,420(s0)
    812c:	8fac006c 	lw	t4,108(sp)
    8130:	a7ab0052 	sh	t3,82(sp)
    8134:	01816821 	addu	t5,t4,at
    8138:	afad0040 	sw	t5,64(sp)
    813c:	01cc7021 	addu	t6,t6,t4
    8140:	8dce1de4 	lw	t6,7652(t6)
    8144:	31cf007f 	andi	t7,t6,0x7f
    8148:	15e0000c 	bnez	t7,817c <func_80957384+0xb8>
    814c:	00000000 	nop
    8150:	0c000000 	jal	0 <func_8094F2C0>
    8154:	00000000 	nop
    8158:	3c0142c8 	lui	at,0x42c8
    815c:	44818000 	mtc1	at,$f16
    8160:	00000000 	nop
    8164:	46100482 	mul.s	$f18,$f0,$f16
    8168:	4600918d 	trunc.w.s	$f6,$f18
    816c:	44093000 	mfc1	t1,$f6
    8170:	00000000 	nop
    8174:	252a0064 	addiu	t2,t1,100
    8178:	a60a01f6 	sh	t2,502(s0)
    817c:	3c0b0000 	lui	t3,0x0
    8180:	916b0000 	lbu	t3,0(t3)
    8184:	260401fa 	addiu	a0,s0,506
    8188:	24060001 	li	a2,1
    818c:	000b68c0 	sll	t5,t3,0x3
    8190:	01ab6821 	addu	t5,t5,t3
    8194:	000d6880 	sll	t5,t5,0x2
    8198:	01ab6823 	subu	t5,t5,t3
    819c:	000d6840 	sll	t5,t5,0x1
    81a0:	25acfee8 	addiu	t4,t5,-280
    81a4:	a7ac0050 	sh	t4,80(sp)
    81a8:	860501f6 	lh	a1,502(s0)
    81ac:	afa00010 	sw	zero,16(sp)
    81b0:	0c000000 	jal	0 <func_8094F2C0>
    81b4:	2407001e 	li	a3,30
    81b8:	860e01f8 	lh	t6,504(s0)
    81bc:	860f01fa 	lh	t7,506(s0)
    81c0:	3c060000 	lui	a2,0x0
    81c4:	24c60000 	addiu	a2,a2,0
    81c8:	01cfc021 	addu	t8,t6,t7
    81cc:	a61801f8 	sh	t8,504(s0)
    81d0:	90c30000 	lbu	v1,0(a2)
    81d4:	10600007 	beqz	v1,81f4 <func_80957384+0x130>
    81d8:	2479ffff 	addiu	t9,v1,-1
    81dc:	a0d90000 	sb	t9,0(a2)
    81e0:	02002025 	move	a0,s0
    81e4:	0c000000 	jal	0 <func_8094F2C0>
    81e8:	8fa5006c 	lw	a1,108(sp)
    81ec:	10000136 	b	86c8 <func_80957384+0x604>
    81f0:	8fbf0034 	lw	ra,52(sp)
    81f4:	92020348 	lbu	v0,840(s0)
    81f8:	30480002 	andi	t0,v0,0x2
    81fc:	55000006 	bnezl	t0,8218 <func_80957384+0x154>
    8200:	8fab0064 	lw	t3,100(sp)
    8204:	920902e8 	lbu	t1,744(s0)
    8208:	312a0002 	andi	t2,t1,0x2
    820c:	5140001d 	beqzl	t2,8284 <func_80957384+0x1c0>
    8210:	44802000 	mtc1	zero,$f4
    8214:	8fab0064 	lw	t3,100(sp)
    8218:	8e0d033c 	lw	t5,828(s0)
    821c:	3c014100 	lui	at,0x4100
    8220:	8fa4006c 	lw	a0,108(sp)
    8224:	516d0005 	beql	t3,t5,823c <func_80957384+0x178>
    8228:	44810000 	mtc1	at,$f0
    822c:	8e0c02dc 	lw	t4,732(s0)
    8230:	556c000f 	bnel	t3,t4,8270 <func_80957384+0x1ac>
    8234:	921802e8 	lbu	t8,744(s0)
    8238:	44810000 	mtc1	at,$f0
    823c:	8e0e0118 	lw	t6,280(s0)
    8240:	02002825 	move	a1,s0
    8244:	44060000 	mfc1	a2,$f0
    8248:	85c7008a 	lh	a3,138(t6)
    824c:	0c000000 	jal	0 <func_8094F2C0>
    8250:	e7a00010 	swc1	$f0,16(sp)
    8254:	8fa40064 	lw	a0,100(sp)
    8258:	0c000000 	jal	0 <func_8094F2C0>
    825c:	2405083e 	li	a1,2110
    8260:	ae0002dc 	sw	zero,732(s0)
    8264:	ae00033c 	sw	zero,828(s0)
    8268:	92020348 	lbu	v0,840(s0)
    826c:	921802e8 	lbu	t8,744(s0)
    8270:	304ffffd 	andi	t7,v0,0xfffd
    8274:	a20f0348 	sb	t7,840(s0)
    8278:	3319fffd 	andi	t9,t8,0xfffd
    827c:	a21902e8 	sb	t9,744(s0)
    8280:	44802000 	mtc1	zero,$f4
    8284:	26040028 	addiu	a0,s0,40
    8288:	3c054080 	lui	a1,0x4080
    828c:	3c063f80 	lui	a2,0x3f80
    8290:	3c074000 	lui	a3,0x4000
    8294:	0c000000 	jal	0 <func_8094F2C0>
    8298:	e7a40010 	swc1	$f4,16(sp)
    829c:	27a40054 	addiu	a0,sp,84
    82a0:	0c000000 	jal	0 <func_8094F2C0>
    82a4:	26050024 	addiu	a1,s0,36
    82a8:	a6020030 	sh	v0,48(s0)
    82ac:	8fa80040 	lw	t0,64(sp)
    82b0:	260401f0 	addiu	a0,s0,496
    82b4:	24050028 	li	a1,40
    82b8:	8d091de4 	lw	t1,7652(t0)
    82bc:	24060001 	li	a2,1
    82c0:	2407000a 	li	a3,10
    82c4:	312a0007 	andi	t2,t1,0x7
    82c8:	15400015 	bnez	t2,8320 <func_80957384+0x25c>
    82cc:	00000000 	nop
    82d0:	0c000000 	jal	0 <func_8094F2C0>
    82d4:	afa00010 	sw	zero,16(sp)
    82d8:	3c0141c8 	lui	at,0x41c8
    82dc:	44814000 	mtc1	at,$f8
    82e0:	3c0141a0 	lui	at,0x41a0
    82e4:	44815000 	mtc1	at,$f10
    82e8:	860701f0 	lh	a3,496(s0)
    82ec:	3c014000 	lui	at,0x4000
    82f0:	44818000 	mtc1	at,$f16
    82f4:	240d0002 	li	t5,2
    82f8:	240b0001 	li	t3,1
    82fc:	afab0020 	sw	t3,32(sp)
    8300:	afad0018 	sw	t5,24(sp)
    8304:	8fa4006c 	lw	a0,108(sp)
    8308:	02002825 	move	a1,s0
    830c:	24060001 	li	a2,1
    8310:	e7a80010 	swc1	$f8,16(sp)
    8314:	e7aa0014 	swc1	$f10,20(sp)
    8318:	0c000000 	jal	0 <func_8094F2C0>
    831c:	e7b0001c 	swc1	$f16,28(sp)
    8320:	3c0c0000 	lui	t4,0x0
    8324:	958c0000 	lhu	t4,0(t4)
    8328:	318e0100 	andi	t6,t4,0x100
    832c:	55c0006d 	bnezl	t6,84e4 <func_80957384+0x420>
    8330:	8e090004 	lw	t1,4(s0)
    8334:	8e0f0118 	lw	t7,280(s0)
    8338:	3c014348 	lui	at,0x4348
    833c:	02002825 	move	a1,s0
    8340:	91f80114 	lbu	t8,276(t7)
    8344:	24060001 	li	a2,1
    8348:	2407007d 	li	a3,125
    834c:	17000064 	bnez	t8,84e0 <func_80957384+0x41c>
    8350:	24190001 	li	t9,1
    8354:	44819000 	mtc1	at,$f18
    8358:	3c014170 	lui	at,0x4170
    835c:	44813000 	mtc1	at,$f6
    8360:	3c0140e0 	lui	at,0x40e0
    8364:	44812000 	mtc1	at,$f4
    8368:	3c013f80 	lui	at,0x3f80
    836c:	44814000 	mtc1	at,$f8
    8370:	24080001 	li	t0,1
    8374:	afa80020 	sw	t0,32(sp)
    8378:	8fa4006c 	lw	a0,108(sp)
    837c:	afb90018 	sw	t9,24(sp)
    8380:	e7b2004c 	swc1	$f18,76(sp)
    8384:	e7a60010 	swc1	$f6,16(sp)
    8388:	e7a40014 	swc1	$f4,20(sp)
    838c:	0c000000 	jal	0 <func_8094F2C0>
    8390:	e7a8001c 	swc1	$f8,28(sp)
    8394:	8e090004 	lw	t1,4(s0)
    8398:	860d001c 	lh	t5,28(s0)
    839c:	2401fffe 	li	at,-2
    83a0:	01215024 	and	t2,t1,at
    83a4:	31ab0001 	andi	t3,t5,0x1
    83a8:	11600005 	beqz	t3,83c0 <func_80957384+0x2fc>
    83ac:	ae0a0004 	sw	t2,4(s0)
    83b0:	3c01c348 	lui	at,0xc348
    83b4:	44815000 	mtc1	at,$f10
    83b8:	00000000 	nop
    83bc:	e7aa004c 	swc1	$f10,76(sp)
    83c0:	3c040000 	lui	a0,0x0
    83c4:	94840000 	lhu	a0,0(a0)
    83c8:	00800821 	move	at,a0
    83cc:	00042080 	sll	a0,a0,0x2
    83d0:	00812023 	subu	a0,a0,at
    83d4:	000420c0 	sll	a0,a0,0x3
    83d8:	00812021 	addu	a0,a0,at
    83dc:	00042100 	sll	a0,a0,0x4
    83e0:	00042400 	sll	a0,a0,0x10
    83e4:	0c000000 	jal	0 <func_8094F2C0>
    83e8:	00042403 	sra	a0,a0,0x10
    83ec:	c7b0004c 	lwc1	$f16,76(sp)
    83f0:	3c0143a0 	lui	at,0x43a0
    83f4:	44813000 	mtc1	at,$f6
    83f8:	46100482 	mul.s	$f18,$f0,$f16
    83fc:	44804000 	mtc1	zero,$f8
    8400:	260401a0 	addiu	a0,s0,416
    8404:	3c063f80 	lui	a2,0x3f80
    8408:	3c074120 	lui	a3,0x4120
    840c:	e7a80010 	swc1	$f8,16(sp)
    8410:	46069100 	add.s	$f4,$f18,$f6
    8414:	44052000 	mfc1	a1,$f4
    8418:	0c000000 	jal	0 <func_8094F2C0>
    841c:	00000000 	nop
    8420:	87a50050 	lh	a1,80(sp)
    8424:	260401ac 	addiu	a0,s0,428
    8428:	24060001 	li	a2,1
    842c:	24a501f4 	addiu	a1,a1,500
    8430:	00052c00 	sll	a1,a1,0x10
    8434:	00052c03 	sra	a1,a1,0x10
    8438:	2407003c 	li	a3,60
    843c:	0c000000 	jal	0 <func_8094F2C0>
    8440:	afa00010 	sw	zero,16(sp)
    8444:	0c000000 	jal	0 <func_8094F2C0>
    8448:	c60c01a4 	lwc1	$f12,420(s0)
    844c:	46000400 	add.s	$f16,$f0,$f0
    8450:	c60a0028 	lwc1	$f10,40(s0)
    8454:	920202e9 	lbu	v0,745(s0)
    8458:	46105480 	add.s	$f18,$f10,$f16
    845c:	304c0002 	andi	t4,v0,0x2
    8460:	11800012 	beqz	t4,84ac <func_80957384+0x3e8>
    8464:	e6120028 	swc1	$f18,40(s0)
    8468:	8e0302e0 	lw	v1,736(s0)
    846c:	304efffd 	andi	t6,v0,0xfffd
    8470:	a20e02e9 	sb	t6,745(s0)
    8474:	846f0000 	lh	t7,0(v1)
    8478:	24010032 	li	at,50
    847c:	87b80052 	lh	t8,82(sp)
    8480:	15e1000a 	bne	t7,at,84ac <func_80957384+0x3e8>
    8484:	2b010040 	slti	at,t8,64
    8488:	14200008 	bnez	at,84ac <func_80957384+0x3e8>
    848c:	02002025 	move	a0,s0
    8490:	a06001d4 	sb	zero,468(v1)
    8494:	8fb90064 	lw	t9,100(sp)
    8498:	8468008a 	lh	t0,138(v1)
    849c:	24051808 	li	a1,6152
    84a0:	ac7901cc 	sw	t9,460(v1)
    84a4:	0c000000 	jal	0 <func_8094F2C0>
    84a8:	a4680032 	sh	t0,50(v1)
    84ac:	8fa4006c 	lw	a0,108(sp)
    84b0:	3c010001 	lui	at,0x1
    84b4:	34211e60 	ori	at,at,0x1e60
    84b8:	00812821 	addu	a1,a0,at
    84bc:	afa5003c 	sw	a1,60(sp)
    84c0:	0c000000 	jal	0 <func_8094F2C0>
    84c4:	26060338 	addiu	a2,s0,824
    84c8:	8fa4006c 	lw	a0,108(sp)
    84cc:	8fa5003c 	lw	a1,60(sp)
    84d0:	0c000000 	jal	0 <func_8094F2C0>
    84d4:	260602d8 	addiu	a2,s0,728
    84d8:	10000035 	b	85b0 <func_80957384+0x4ec>
    84dc:	8fa8006c 	lw	t0,108(sp)
    84e0:	8e090004 	lw	t1,4(s0)
    84e4:	260401ac 	addiu	a0,s0,428
    84e8:	24060001 	li	a2,1
    84ec:	352a0001 	ori	t2,t1,0x1
    84f0:	ae0a0004 	sw	t2,4(s0)
    84f4:	87a50050 	lh	a1,80(sp)
    84f8:	afa00010 	sw	zero,16(sp)
    84fc:	2407003c 	li	a3,60
    8500:	24a50096 	addiu	a1,a1,150
    8504:	00052c00 	sll	a1,a1,0x10
    8508:	0c000000 	jal	0 <func_8094F2C0>
    850c:	00052c03 	sra	a1,a1,0x10
    8510:	8e0d0118 	lw	t5,280(s0)
    8514:	260401a0 	addiu	a0,s0,416
    8518:	3c054334 	lui	a1,0x4334
    851c:	91ab0114 	lbu	t3,276(t5)
    8520:	3c063f80 	lui	a2,0x3f80
    8524:	55600008 	bnezl	t3,8548 <func_80957384+0x484>
    8528:	920c0114 	lbu	t4,276(s0)
    852c:	44803000 	mtc1	zero,$f6
    8530:	3c073fc0 	lui	a3,0x3fc0
    8534:	0c000000 	jal	0 <func_8094F2C0>
    8538:	e7a60010 	swc1	$f6,16(sp)
    853c:	1000000d 	b	8574 <func_80957384+0x4b0>
    8540:	00000000 	nop
    8544:	920c0114 	lbu	t4,276(s0)
    8548:	a60001ac 	sh	zero,428(s0)
    854c:	02002025 	move	a0,s0
    8550:	15800008 	bnez	t4,8574 <func_80957384+0x4b0>
    8554:	00000000 	nop
    8558:	8e0e0118 	lw	t6,280(s0)
    855c:	00002825 	move	a1,zero
    8560:	240600ff 	li	a2,255
    8564:	91cf0114 	lbu	t7,276(t6)
    8568:	24072000 	li	a3,8192
    856c:	0c000000 	jal	0 <func_8094F2C0>
    8570:	afaf0010 	sw	t7,16(sp)
    8574:	0c000000 	jal	0 <func_8094F2C0>
    8578:	c60c01a4 	lwc1	$f12,420(s0)
    857c:	3c014080 	lui	at,0x4080
    8580:	44814000 	mtc1	at,$f8
    8584:	c6040028 	lwc1	$f4,40(s0)
    8588:	921802e9 	lbu	t8,745(s0)
    858c:	46080282 	mul.s	$f10,$f0,$f8
    8590:	02002025 	move	a0,s0
    8594:	33190002 	andi	t9,t8,0x2
    8598:	460a2400 	add.s	$f16,$f4,$f10
    859c:	13200003 	beqz	t9,85ac <func_80957384+0x4e8>
    85a0:	e6100028 	swc1	$f16,40(s0)
    85a4:	0c000000 	jal	0 <func_8094F2C0>
    85a8:	8fa5006c 	lw	a1,108(sp)
    85ac:	8fa8006c 	lw	t0,108(sp)
    85b0:	3c010001 	lui	at,0x1
    85b4:	34211e60 	ori	at,at,0x1e60
    85b8:	260a02d8 	addiu	t2,s0,728
    85bc:	01014821 	addu	t1,t0,at
    85c0:	afa9003c 	sw	t1,60(sp)
    85c4:	afaa0038 	sw	t2,56(sp)
    85c8:	260400b4 	addiu	a0,s0,180
    85cc:	00002825 	move	a1,zero
    85d0:	24060001 	li	a2,1
    85d4:	240705dc 	li	a3,1500
    85d8:	0c000000 	jal	0 <func_8094F2C0>
    85dc:	afa00010 	sw	zero,16(sp)
    85e0:	8fa4006c 	lw	a0,108(sp)
    85e4:	8fa5003c 	lw	a1,60(sp)
    85e8:	0c000000 	jal	0 <func_8094F2C0>
    85ec:	8fa60038 	lw	a2,56(sp)
    85f0:	8fad0040 	lw	t5,64(sp)
    85f4:	260401f0 	addiu	a0,s0,496
    85f8:	24050078 	li	a1,120
    85fc:	8dab1de4 	lw	t3,7652(t5)
    8600:	24060001 	li	a2,1
    8604:	2407000a 	li	a3,10
    8608:	316c0003 	andi	t4,t3,0x3
    860c:	15800003 	bnez	t4,861c <func_80957384+0x558>
    8610:	00000000 	nop
    8614:	0c000000 	jal	0 <func_8094F2C0>
    8618:	afa00010 	sw	zero,16(sp)
    861c:	0c000000 	jal	0 <func_8094F2C0>
    8620:	00000000 	nop
    8624:	3c010000 	lui	at,0x0
    8628:	c4320000 	lwc1	$f18,0(at)
    862c:	02002025 	move	a0,s0
    8630:	4612003c 	c.lt.s	$f0,$f18
    8634:	00000000 	nop
    8638:	45020004 	bc1fl	864c <func_80957384+0x588>
    863c:	8e0e0118 	lw	t6,280(s0)
    8640:	0c000000 	jal	0 <func_8094F2C0>
    8644:	24053143 	li	a1,12611
    8648:	8e0e0118 	lw	t6,280(s0)
    864c:	91cf0114 	lbu	t7,276(t6)
    8650:	55e0001d 	bnezl	t7,86c8 <func_80957384+0x604>
    8654:	8fbf0034 	lw	ra,52(sp)
    8658:	8618019c 	lh	t8,412(s0)
    865c:	33190400 	andi	t9,t8,0x400
    8660:	57200007 	bnezl	t9,8680 <func_80957384+0x5bc>
    8664:	860d0032 	lh	t5,50(s0)
    8668:	86080032 	lh	t0,50(s0)
    866c:	860901ac 	lh	t1,428(s0)
    8670:	01095021 	addu	t2,t0,t1
    8674:	10000005 	b	868c <func_80957384+0x5c8>
    8678:	a60a0032 	sh	t2,50(s0)
    867c:	860d0032 	lh	t5,50(s0)
    8680:	860b01ac 	lh	t3,428(s0)
    8684:	01ab6023 	subu	t4,t5,t3
    8688:	a60c0032 	sh	t4,50(s0)
    868c:	0c000000 	jal	0 <func_8094F2C0>
    8690:	86040032 	lh	a0,50(s0)
    8694:	c60601a0 	lwc1	$f6,416(s0)
    8698:	c7a40054 	lwc1	$f4,84(sp)
    869c:	86040032 	lh	a0,50(s0)
    86a0:	46060202 	mul.s	$f8,$f0,$f6
    86a4:	46044280 	add.s	$f10,$f8,$f4
    86a8:	0c000000 	jal	0 <func_8094F2C0>
    86ac:	e60a0024 	swc1	$f10,36(s0)
    86b0:	c61001a0 	lwc1	$f16,416(s0)
    86b4:	c7a6005c 	lwc1	$f6,92(sp)
    86b8:	46100482 	mul.s	$f18,$f0,$f16
    86bc:	46069200 	add.s	$f8,$f18,$f6
    86c0:	e608002c 	swc1	$f8,44(s0)
    86c4:	8fbf0034 	lw	ra,52(sp)
    86c8:	8fb00030 	lw	s0,48(sp)
    86cc:	27bd0068 	addiu	sp,sp,104
    86d0:	03e00008 	jr	ra
    86d4:	00000000 	nop

000086d8 <func_80957998>:
    86d8:	27bdffe0 	addiu	sp,sp,-32
    86dc:	afbf001c 	sw	ra,28(sp)
    86e0:	afa50024 	sw	a1,36(sp)
    86e4:	8c8e0004 	lw	t6,4(a0)
    86e8:	8c980118 	lw	t8,280(a0)
    86ec:	00002825 	move	a1,zero
    86f0:	35cf0001 	ori	t7,t6,0x1
    86f4:	ac8f0004 	sw	t7,4(a0)
    86f8:	8f190198 	lw	t9,408(t8)
    86fc:	240600ff 	li	a2,255
    8700:	24072000 	li	a3,8192
    8704:	ac990198 	sw	t9,408(a0)
    8708:	afa40020 	sw	a0,32(sp)
    870c:	0c000000 	jal	0 <func_8094F2C0>
    8710:	afb90010 	sw	t9,16(sp)
    8714:	3c050000 	lui	a1,0x0
    8718:	8fa40020 	lw	a0,32(sp)
    871c:	0c000000 	jal	0 <func_8094F2C0>
    8720:	24a50000 	addiu	a1,a1,0
    8724:	8fbf001c 	lw	ra,28(sp)
    8728:	27bd0020 	addiu	sp,sp,32
    872c:	03e00008 	jr	ra
    8730:	00000000 	nop

00008734 <func_809579F4>:
    8734:	27bdffb0 	addiu	sp,sp,-80
    8738:	afbf0034 	sw	ra,52(sp)
    873c:	afb10030 	sw	s1,48(sp)
    8740:	afb0002c 	sw	s0,44(sp)
    8744:	8c8f0118 	lw	t7,280(a0)
    8748:	27ae0040 	addiu	t6,sp,64
    874c:	00808025 	move	s0,a0
    8750:	8df901d8 	lw	t9,472(t7)
    8754:	00a08825 	move	s1,a1
    8758:	26050024 	addiu	a1,s0,36
    875c:	add90000 	sw	t9,0(t6)
    8760:	8df801dc 	lw	t8,476(t7)
    8764:	add80004 	sw	t8,4(t6)
    8768:	8df901e0 	lw	t9,480(t7)
    876c:	add90008 	sw	t9,8(t6)
    8770:	8c840118 	lw	a0,280(a0)
    8774:	afa50038 	sw	a1,56(sp)
    8778:	0c000000 	jal	0 <func_8094F2C0>
    877c:	24840024 	addiu	a0,a0,36
    8780:	920802e9 	lbu	t0,745(s0)
    8784:	a6020030 	sh	v0,48(s0)
    8788:	02002025 	move	a0,s0
    878c:	31090002 	andi	t1,t0,0x2
    8790:	11200005 	beqz	t1,87a8 <func_809579F4+0x74>
    8794:	00000000 	nop
    8798:	0c000000 	jal	0 <func_8094F2C0>
    879c:	02202825 	move	a1,s1
    87a0:	10000067 	b	8940 <func_809579F4+0x20c>
    87a4:	8fbf0034 	lw	ra,52(sp)
    87a8:	0c000000 	jal	0 <func_8094F2C0>
    87ac:	00000000 	nop
    87b0:	3c013f00 	lui	at,0x3f00
    87b4:	44813000 	mtc1	at,$f6
    87b8:	c60401a4 	lwc1	$f4,420(s0)
    87bc:	44808000 	mtc1	zero,$f16
    87c0:	46060202 	mul.s	$f8,$f0,$f6
    87c4:	26040028 	addiu	a0,s0,40
    87c8:	3c054080 	lui	a1,0x4080
    87cc:	3c063f80 	lui	a2,0x3f80
    87d0:	3c074000 	lui	a3,0x4000
    87d4:	46082280 	add.s	$f10,$f4,$f8
    87d8:	e60a01a4 	swc1	$f10,420(s0)
    87dc:	0c000000 	jal	0 <func_8094F2C0>
    87e0:	e7b00010 	swc1	$f16,16(sp)
    87e4:	0c000000 	jal	0 <func_8094F2C0>
    87e8:	c60c01a4 	lwc1	$f12,420(s0)
    87ec:	3c014040 	lui	at,0x4040
    87f0:	44813000 	mtc1	at,$f6
    87f4:	c6120028 	lwc1	$f18,40(s0)
    87f8:	3c010001 	lui	at,0x1
    87fc:	46060102 	mul.s	$f4,$f0,$f6
    8800:	34211e60 	ori	at,at,0x1e60
    8804:	02212821 	addu	a1,s1,at
    8808:	02202025 	move	a0,s1
    880c:	260602d8 	addiu	a2,s0,728
    8810:	46049200 	add.s	$f8,$f18,$f4
    8814:	0c000000 	jal	0 <func_8094F2C0>
    8818:	e6080028 	swc1	$f8,40(s0)
    881c:	3c0a0001 	lui	t2,0x1
    8820:	01515021 	addu	t2,t2,s1
    8824:	8d4a1de4 	lw	t2,7652(t2)
    8828:	260401f0 	addiu	a0,s0,496
    882c:	24050028 	li	a1,40
    8830:	314b0003 	andi	t3,t2,0x3
    8834:	15600016 	bnez	t3,8890 <func_809579F4+0x15c>
    8838:	24060001 	li	a2,1
    883c:	2407000a 	li	a3,10
    8840:	0c000000 	jal	0 <func_8094F2C0>
    8844:	afa00010 	sw	zero,16(sp)
    8848:	3c0141c8 	lui	at,0x41c8
    884c:	44815000 	mtc1	at,$f10
    8850:	3c0141a0 	lui	at,0x41a0
    8854:	44818000 	mtc1	at,$f16
    8858:	860701f0 	lh	a3,496(s0)
    885c:	3c014000 	lui	at,0x4000
    8860:	44813000 	mtc1	at,$f6
    8864:	240c0002 	li	t4,2
    8868:	240d0001 	li	t5,1
    886c:	afad0020 	sw	t5,32(sp)
    8870:	afac0018 	sw	t4,24(sp)
    8874:	02202025 	move	a0,s1
    8878:	02002825 	move	a1,s0
    887c:	24060001 	li	a2,1
    8880:	e7aa0010 	swc1	$f10,16(sp)
    8884:	e7b00014 	swc1	$f16,20(sp)
    8888:	0c000000 	jal	0 <func_8094F2C0>
    888c:	e7a6001c 	swc1	$f6,28(sp)
    8890:	8e0e0198 	lw	t6,408(s0)
    8894:	27a40040 	addiu	a0,sp,64
    8898:	25cfffff 	addiu	t7,t6,-1
    889c:	ae0f0198 	sw	t7,408(s0)
    88a0:	0c000000 	jal	0 <func_8094F2C0>
    88a4:	8fa50038 	lw	a1,56(sp)
    88a8:	8e030198 	lw	v1,408(s0)
    88ac:	a6020030 	sh	v0,48(s0)
    88b0:	5c600023 	bgtzl	v1,8940 <func_809579F4+0x20c>
    88b4:	8fbf0034 	lw	ra,52(sp)
    88b8:	14600003 	bnez	v1,88c8 <func_809579F4+0x194>
    88bc:	02202025 	move	a0,s1
    88c0:	1000001e 	b	893c <func_809579F4+0x208>
    88c4:	a600019c 	sh	zero,412(s0)
    88c8:	3c014170 	lui	at,0x4170
    88cc:	44819000 	mtc1	at,$f18
    88d0:	3c013f80 	lui	at,0x3f80
    88d4:	44814000 	mtc1	at,$f8
    88d8:	44802000 	mtc1	zero,$f4
    88dc:	24180001 	li	t8,1
    88e0:	24190001 	li	t9,1
    88e4:	afb90020 	sw	t9,32(sp)
    88e8:	afb80018 	sw	t8,24(sp)
    88ec:	02002825 	move	a1,s0
    88f0:	24060001 	li	a2,1
    88f4:	24070055 	li	a3,85
    88f8:	e7b20010 	swc1	$f18,16(sp)
    88fc:	e7a8001c 	swc1	$f8,28(sp)
    8900:	0c000000 	jal	0 <func_8094F2C0>
    8904:	e7a40014 	swc1	$f4,20(sp)
    8908:	8608019c 	lh	t0,412(s0)
    890c:	240b0080 	li	t3,128
    8910:	02002025 	move	a0,s0
    8914:	29010010 	slti	at,t0,16
    8918:	14200008 	bnez	at,893c <func_809579F4+0x208>
    891c:	3c050000 	lui	a1,0x0
    8920:	8e090004 	lw	t1,4(s0)
    8924:	2401fffe 	li	at,-2
    8928:	a60b019c 	sh	t3,412(s0)
    892c:	01215024 	and	t2,t1,at
    8930:	ae0a0004 	sw	t2,4(s0)
    8934:	0c000000 	jal	0 <func_8094F2C0>
    8938:	24a50000 	addiu	a1,a1,0
    893c:	8fbf0034 	lw	ra,52(sp)
    8940:	8fb0002c 	lw	s0,44(sp)
    8944:	8fb10030 	lw	s1,48(sp)
    8948:	03e00008 	jr	ra
    894c:	27bd0050 	addiu	sp,sp,80

00008950 <func_80957C10>:
    8950:	27bdffe8 	addiu	sp,sp,-24
    8954:	afbf0014 	sw	ra,20(sp)
    8958:	8c8e0004 	lw	t6,4(a0)
    895c:	2401fffe 	li	at,-2
    8960:	2418001e 	li	t8,30
    8964:	01c17824 	and	t7,t6,at
    8968:	ac8f0004 	sw	t7,4(a0)
    896c:	ac980198 	sw	t8,408(a0)
    8970:	afa40018 	sw	a0,24(sp)
    8974:	0c000000 	jal	0 <func_8094F2C0>
    8978:	24053944 	li	a1,14660
    897c:	8fa40018 	lw	a0,24(sp)
    8980:	3c050000 	lui	a1,0x0
    8984:	24a50000 	addiu	a1,a1,0
    8988:	90990197 	lbu	t9,407(a0)
    898c:	27280001 	addiu	t0,t9,1
    8990:	0c000000 	jal	0 <func_8094F2C0>
    8994:	a0880197 	sb	t0,407(a0)
    8998:	8fbf0014 	lw	ra,20(sp)
    899c:	27bd0018 	addiu	sp,sp,24
    89a0:	03e00008 	jr	ra
    89a4:	00000000 	nop

000089a8 <func_80957C68>:
    89a8:	27bdffe8 	addiu	sp,sp,-24
    89ac:	afbf0014 	sw	ra,20(sp)
    89b0:	afa5001c 	sw	a1,28(sp)
    89b4:	8c8e0198 	lw	t6,408(a0)
    89b8:	25cfffff 	addiu	t7,t6,-1
    89bc:	15e00003 	bnez	t7,89cc <func_80957C68+0x24>
    89c0:	ac8f0198 	sw	t7,408(a0)
    89c4:	0c000000 	jal	0 <func_8094F2C0>
    89c8:	00000000 	nop
    89cc:	8fbf0014 	lw	ra,20(sp)
    89d0:	27bd0018 	addiu	sp,sp,24
    89d4:	03e00008 	jr	ra
    89d8:	00000000 	nop

000089dc <func_80957C9C>:
    89dc:	3c0e0000 	lui	t6,0x0
    89e0:	81ce0000 	lb	t6,0(t6)
    89e4:	27bdffe8 	addiu	sp,sp,-24
    89e8:	afbf0014 	sw	ra,20(sp)
    89ec:	19c00004 	blez	t6,8a00 <func_80957C9C+0x24>
    89f0:	afa5001c 	sw	a1,28(sp)
    89f4:	240f0064 	li	t7,100
    89f8:	3c010000 	lui	at,0x0
    89fc:	a42f0000 	sh	t7,0(at)
    8a00:	8c980004 	lw	t8,4(a0)
    8a04:	2401fffe 	li	at,-2
    8a08:	3c050000 	lui	a1,0x0
    8a0c:	0301c824 	and	t9,t8,at
    8a10:	ac990004 	sw	t9,4(a0)
    8a14:	0c000000 	jal	0 <func_8094F2C0>
    8a18:	24a50000 	addiu	a1,a1,0
    8a1c:	8fbf0014 	lw	ra,20(sp)
    8a20:	27bd0018 	addiu	sp,sp,24
    8a24:	03e00008 	jr	ra
    8a28:	00000000 	nop

00008a2c <func_80957CEC>:
    8a2c:	3c030000 	lui	v1,0x0
    8a30:	24630000 	addiu	v1,v1,0
    8a34:	846e0000 	lh	t6,0(v1)
    8a38:	27bdffe8 	addiu	sp,sp,-24
    8a3c:	2401001d 	li	at,29
    8a40:	afbf0014 	sw	ra,20(sp)
    8a44:	15c10005 	bne	t6,at,8a5c <func_80957CEC+0x30>
    8a48:	afa5001c 	sw	a1,28(sp)
    8a4c:	0c000000 	jal	0 <func_8094F2C0>
    8a50:	24052865 	li	a1,10341
    8a54:	3c030000 	lui	v1,0x0
    8a58:	24630000 	addiu	v1,v1,0
    8a5c:	3c0f0000 	lui	t7,0x0
    8a60:	81ef0000 	lb	t7,0(t7)
    8a64:	05e3000a 	bgezl	t7,8a90 <func_80957CEC+0x64>
    8a68:	8fbf0014 	lw	ra,20(sp)
    8a6c:	84620000 	lh	v0,0(v1)
    8a70:	24190064 	li	t9,100
    8a74:	28410064 	slti	at,v0,100
    8a78:	10200003 	beqz	at,8a88 <func_80957CEC+0x5c>
    8a7c:	24580008 	addiu	t8,v0,8
    8a80:	10000002 	b	8a8c <func_80957CEC+0x60>
    8a84:	a4780000 	sh	t8,0(v1)
    8a88:	a4790000 	sh	t9,0(v1)
    8a8c:	8fbf0014 	lw	ra,20(sp)
    8a90:	27bd0018 	addiu	sp,sp,24
    8a94:	03e00008 	jr	ra
    8a98:	00000000 	nop

00008a9c <BossVa_Update>:
    8a9c:	27bdffe8 	addiu	sp,sp,-24
    8aa0:	afbf0014 	sw	ra,20(sp)
    8aa4:	afa5001c 	sw	a1,28(sp)
    8aa8:	afa40018 	sw	a0,24(sp)
    8aac:	8c990190 	lw	t9,400(a0)
    8ab0:	0320f809 	jalr	t9
    8ab4:	00000000 	nop
    8ab8:	8fa60018 	lw	a2,24(sp)
    8abc:	8fa5001c 	lw	a1,28(sp)
    8ac0:	84ce001c 	lh	t6,28(a2)
    8ac4:	25cf0001 	addiu	t7,t6,1
    8ac8:	2de10015 	sltiu	at,t7,21
    8acc:	10200039 	beqz	at,8bb4 <L80957E74>
    8ad0:	000f7880 	sll	t7,t7,0x2
    8ad4:	3c010000 	lui	at,0x0
    8ad8:	002f0821 	addu	at,at,t7
    8adc:	8c2f0000 	lw	t7,0(at)
    8ae0:	01e00008 	jr	t7
    8ae4:	00000000 	nop

00008ae8 <L80957DA8>:
    8ae8:	90c2029d 	lbu	v0,669(a2)
    8aec:	00a02025 	move	a0,a1
    8af0:	30580002 	andi	t8,v0,0x2
    8af4:	5300000a 	beqzl	t8,8b20 <L80957DA8+0x38>
    8af8:	afa5001c 	sw	a1,28(sp)
    8afc:	8cc30294 	lw	v1,660(a2)
    8b00:	3048fffd 	andi	t0,v0,0xfffd
    8b04:	a0c8029d 	sb	t0,669(a2)
    8b08:	84690000 	lh	t1,0(v1)
    8b0c:	24010032 	li	at,50
    8b10:	55210003 	bnel	t1,at,8b20 <L80957DA8+0x38>
    8b14:	afa5001c 	sw	a1,28(sp)
    8b18:	a06001d4 	sb	zero,468(v1)
    8b1c:	afa5001c 	sw	a1,28(sp)
    8b20:	0c000000 	jal	0 <func_8094F2C0>
    8b24:	afa60018 	sw	a2,24(sp)
    8b28:	8fa5001c 	lw	a1,28(sp)
    8b2c:	3c010001 	lui	at,0x1
    8b30:	34210004 	ori	at,at,0x4
    8b34:	8fa60018 	lw	a2,24(sp)
    8b38:	24040004 	li	a0,4
    8b3c:	00a11021 	addu	v0,a1,at
    8b40:	84430ab0 	lh	v1,2736(v0)
    8b44:	2484fffe 	addiu	a0,a0,-2
    8b48:	2463ffff 	addiu	v1,v1,-1
    8b4c:	58600004 	blezl	v1,8b60 <L80957DA8+0x78>
    8b50:	a4400ab0 	sh	zero,2736(v0)
    8b54:	10000002 	b	8b60 <L80957DA8+0x78>
    8b58:	a4430ab0 	sh	v1,2736(v0)
    8b5c:	a4400ab0 	sh	zero,2736(v0)
    8b60:	84430ab6 	lh	v1,2742(v0)
    8b64:	2463fff6 	addiu	v1,v1,-10
    8b68:	58600004 	blezl	v1,8b7c <L80957DA8+0x94>
    8b6c:	a4400ab6 	sh	zero,2742(v0)
    8b70:	10000002 	b	8b7c <L80957DA8+0x94>
    8b74:	a4430ab6 	sh	v1,2742(v0)
    8b78:	a4400ab6 	sh	zero,2742(v0)
    8b7c:	84430abc 	lh	v1,2748(v0)
    8b80:	2463fff6 	addiu	v1,v1,-10
    8b84:	58600004 	blezl	v1,8b98 <L80957DA8+0xb0>
    8b88:	a4400abc 	sh	zero,2748(v0)
    8b8c:	10000002 	b	8b98 <L80957DA8+0xb0>
    8b90:	a4430abc 	sh	v1,2748(v0)
    8b94:	a4400abc 	sh	zero,2748(v0)
    8b98:	0481ffe9 	bgez	a0,8b40 <L80957DA8+0x58>
    8b9c:	2442fffe 	addiu	v0,v0,-2
    8ba0:	90c20194 	lbu	v0,404(a2)
    8ba4:	1840003a 	blez	v0,8c90 <L80957F50>
    8ba8:	244affff 	addiu	t2,v0,-1
    8bac:	10000038 	b	8c90 <L80957F50>
    8bb0:	a0ca0194 	sb	t2,404(a2)

00008bb4 <L80957E74>:
    8bb4:	84cb019c 	lh	t3,412(a2)
    8bb8:	8ccd0028 	lw	t5,40(a2)
    8bbc:	3c014234 	lui	at,0x4234
    8bc0:	256c0001 	addiu	t4,t3,1
    8bc4:	a4cc019c 	sh	t4,412(a2)
    8bc8:	84c4019c 	lh	a0,412(a2)
    8bcc:	44813000 	mtc1	at,$f6
    8bd0:	accd003c 	sw	t5,60(a2)
    8bd4:	00800821 	move	at,a0
    8bd8:	8cd90024 	lw	t9,36(a2)
    8bdc:	c4c4003c 	lwc1	$f4,60(a2)
    8be0:	00042140 	sll	a0,a0,0x5
    8be4:	00812023 	subu	a0,a0,at
    8be8:	00042080 	sll	a0,a0,0x2
    8bec:	46062200 	add.s	$f8,$f4,$f6
    8bf0:	00812021 	addu	a0,a0,at
    8bf4:	acd90038 	sw	t9,56(a2)
    8bf8:	8cd9002c 	lw	t9,44(a2)
    8bfc:	000420c0 	sll	a0,a0,0x3
    8c00:	00812021 	addu	a0,a0,at
    8c04:	00042080 	sll	a0,a0,0x2
    8c08:	e4c8003c 	swc1	$f8,60(a2)
    8c0c:	00042400 	sll	a0,a0,0x10
    8c10:	acd90040 	sw	t9,64(a2)
    8c14:	afa60018 	sw	a2,24(sp)
    8c18:	0c000000 	jal	0 <func_8094F2C0>
    8c1c:	00042403 	sra	a0,a0,0x10
    8c20:	8fa60018 	lw	a2,24(sp)
    8c24:	3c010000 	lui	at,0x0
    8c28:	c42a0000 	lwc1	$f10,0(at)
    8c2c:	84c4019c 	lh	a0,412(a2)
    8c30:	3c010000 	lui	at,0x0
    8c34:	460a0402 	mul.s	$f16,$f0,$f10
    8c38:	c4320000 	lwc1	$f18,0(at)
    8c3c:	00800821 	move	at,a0
    8c40:	00042140 	sll	a0,a0,0x5
    8c44:	00812023 	subu	a0,a0,at
    8c48:	00042080 	sll	a0,a0,0x2
    8c4c:	00812021 	addu	a0,a0,at
    8c50:	000420c0 	sll	a0,a0,0x3
    8c54:	46128100 	add.s	$f4,$f16,$f18
    8c58:	00812021 	addu	a0,a0,at
    8c5c:	00042080 	sll	a0,a0,0x2
    8c60:	00042400 	sll	a0,a0,0x10
    8c64:	00042403 	sra	a0,a0,0x10
    8c68:	0c000000 	jal	0 <func_8094F2C0>
    8c6c:	e4c401dc 	swc1	$f4,476(a2)
    8c70:	3c010000 	lui	at,0x0
    8c74:	c4260000 	lwc1	$f6,0(at)
    8c78:	3c013f80 	lui	at,0x3f80
    8c7c:	44815000 	mtc1	at,$f10
    8c80:	46060202 	mul.s	$f8,$f0,$f6
    8c84:	8fa60018 	lw	a2,24(sp)
    8c88:	460a4400 	add.s	$f16,$f8,$f10
    8c8c:	e4d001d8 	swc1	$f16,472(a2)

00008c90 <L80957F50>:
    8c90:	8fbf0014 	lw	ra,20(sp)
    8c94:	27bd0018 	addiu	sp,sp,24
    8c98:	03e00008 	jr	ra
    8c9c:	00000000 	nop

00008ca0 <func_80957F60>:
    8ca0:	27bdff98 	addiu	sp,sp,-104
    8ca4:	afbf0034 	sw	ra,52(sp)
    8ca8:	afa40068 	sw	a0,104(sp)
    8cac:	afa5006c 	sw	a1,108(sp)
    8cb0:	afa60070 	sw	a2,112(sp)
    8cb4:	afa70074 	sw	a3,116(sp)
    8cb8:	8c850000 	lw	a1,0(a0)
    8cbc:	3c060000 	lui	a2,0x0
    8cc0:	24c60000 	addiu	a2,a2,0
    8cc4:	27a4004c 	addiu	a0,sp,76
    8cc8:	2407103c 	li	a3,4156
    8ccc:	0c000000 	jal	0 <func_8094F2C0>
    8cd0:	afa5005c 	sw	a1,92(sp)
    8cd4:	8fa2006c 	lw	v0,108(sp)
    8cd8:	24010014 	li	at,20
    8cdc:	8fa8005c 	lw	t0,92(sp)
    8ce0:	14410038 	bne	v0,at,8dc4 <func_80957F60+0x124>
    8ce4:	3c18e700 	lui	t8,0xe700
    8ce8:	8d0202c0 	lw	v0,704(t0)
    8cec:	3c0adb06 	lui	t2,0xdb06
    8cf0:	354a0020 	ori	t2,t2,0x20
    8cf4:	244f0008 	addiu	t7,v0,8
    8cf8:	ad0f02c0 	sw	t7,704(t0)
    8cfc:	ac580000 	sw	t8,0(v0)
    8d00:	ac400004 	sw	zero,4(v0)
    8d04:	8d0202c0 	lw	v0,704(t0)
    8d08:	8fa90068 	lw	t1,104(sp)
    8d0c:	240b0008 	li	t3,8
    8d10:	24590008 	addiu	t9,v0,8
    8d14:	ad1902c0 	sw	t9,704(t0)
    8d18:	ac4a0000 	sw	t2,0(v0)
    8d1c:	8d240000 	lw	a0,0(t1)
    8d20:	240c0010 	li	t4,16
    8d24:	240d0001 	li	t5,1
    8d28:	3c0e0001 	lui	t6,0x1
    8d2c:	afad0018 	sw	t5,24(sp)
    8d30:	afac0014 	sw	t4,20(sp)
    8d34:	afa0001c 	sw	zero,28(sp)
    8d38:	afab0010 	sw	t3,16(sp)
    8d3c:	01c97021 	addu	t6,t6,t1
    8d40:	8dce1de4 	lw	t6,7652(t6)
    8d44:	240a0010 	li	t2,16
    8d48:	24190010 	li	t9,16
    8d4c:	000e0823 	negu	at,t6
    8d50:	00017840 	sll	t7,at,0x1
    8d54:	31f8003f 	andi	t8,t7,0x3f
    8d58:	afb80020 	sw	t8,32(sp)
    8d5c:	afb90024 	sw	t9,36(sp)
    8d60:	afaa0028 	sw	t2,40(sp)
    8d64:	afa8005c 	sw	t0,92(sp)
    8d68:	00002825 	move	a1,zero
    8d6c:	00003025 	move	a2,zero
    8d70:	00003825 	move	a3,zero
    8d74:	0c000000 	jal	0 <func_8094F2C0>
    8d78:	afa20044 	sw	v0,68(sp)
    8d7c:	8fa30044 	lw	v1,68(sp)
    8d80:	8fa8005c 	lw	t0,92(sp)
    8d84:	3c0cfb00 	lui	t4,0xfb00
    8d88:	ac620004 	sw	v0,4(v1)
    8d8c:	8d0202c0 	lw	v0,704(t0)
    8d90:	3c010000 	lui	at,0x0
    8d94:	24050001 	li	a1,1
    8d98:	244b0008 	addiu	t3,v0,8
    8d9c:	ad0b02c0 	sw	t3,704(t0)
    8da0:	ac4c0000 	sw	t4,0(v0)
    8da4:	8fad007c 	lw	t5,124(sp)
    8da8:	85ae01ae 	lh	t6,430(t5)
    8dac:	31cf00ff 	andi	t7,t6,0xff
    8db0:	ac4f0004 	sw	t7,4(v0)
    8db4:	0c000000 	jal	0 <func_8094F2C0>
    8db8:	c42c0000 	lwc1	$f12,0(at)
    8dbc:	10000029 	b	8e64 <func_80957F60+0x1c4>
    8dc0:	8faf0068 	lw	t7,104(sp)
    8dc4:	2841000a 	slti	at,v0,10
    8dc8:	1420000a 	bnez	at,8df4 <func_80957F60+0x154>
    8dcc:	28410014 	slti	at,v0,20
    8dd0:	50200009 	beqzl	at,8df8 <func_80957F60+0x158>
    8dd4:	24010006 	li	at,6
    8dd8:	8fa20078 	lw	v0,120(sp)
    8ddc:	84580000 	lh	t8,0(v0)
    8de0:	2719c000 	addiu	t9,t8,-16384
    8de4:	a4590000 	sh	t9,0(v0)
    8de8:	8faa0070 	lw	t2,112(sp)
    8dec:	1000001c 	b	8e60 <func_80957F60+0x1c0>
    8df0:	ad400000 	sw	zero,0(t2)
    8df4:	24010006 	li	at,6
    8df8:	14410008 	bne	v0,at,8e1c <func_80957F60+0x17c>
    8dfc:	8fab007c 	lw	t3,124(sp)
    8e00:	c56c01a4 	lwc1	$f12,420(t3)
    8e04:	24070001 	li	a3,1
    8e08:	44066000 	mfc1	a2,$f12
    8e0c:	0c000000 	jal	0 <func_8094F2C0>
    8e10:	46006386 	mov.s	$f14,$f12
    8e14:	10000013 	b	8e64 <func_80957F60+0x1c4>
    8e18:	8faf0068 	lw	t7,104(sp)
    8e1c:	2401003d 	li	at,61
    8e20:	14410008 	bne	v0,at,8e44 <func_80957F60+0x1a4>
    8e24:	8fac007c 	lw	t4,124(sp)
    8e28:	c58c01a0 	lwc1	$f12,416(t4)
    8e2c:	24070001 	li	a3,1
    8e30:	44066000 	mfc1	a2,$f12
    8e34:	0c000000 	jal	0 <func_8094F2C0>
    8e38:	46006386 	mov.s	$f14,$f12
    8e3c:	10000009 	b	8e64 <func_80957F60+0x1c4>
    8e40:	8faf0068 	lw	t7,104(sp)
    8e44:	24010007 	li	at,7
    8e48:	54410006 	bnel	v0,at,8e64 <func_80957F60+0x1c4>
    8e4c:	8faf0068 	lw	t7,104(sp)
    8e50:	8fa20078 	lw	v0,120(sp)
    8e54:	844d0000 	lh	t5,0(v0)
    8e58:	25aef334 	addiu	t6,t5,-3276
    8e5c:	a44e0000 	sh	t6,0(v0)
    8e60:	8faf0068 	lw	t7,104(sp)
    8e64:	3c060000 	lui	a2,0x0
    8e68:	24c60000 	addiu	a2,a2,0
    8e6c:	27a4004c 	addiu	a0,sp,76
    8e70:	24071057 	li	a3,4183
    8e74:	0c000000 	jal	0 <func_8094F2C0>
    8e78:	8de50000 	lw	a1,0(t7)
    8e7c:	8fbf0034 	lw	ra,52(sp)
    8e80:	27bd0068 	addiu	sp,sp,104
    8e84:	00001025 	move	v0,zero
    8e88:	03e00008 	jr	ra
    8e8c:	00000000 	nop

00008e90 <func_80958150>:
    8e90:	27bdff78 	addiu	sp,sp,-136
    8e94:	3c0f0000 	lui	t7,0x0
    8e98:	afbf0034 	sw	ra,52(sp)
    8e9c:	afa40088 	sw	a0,136(sp)
    8ea0:	afa5008c 	sw	a1,140(sp)
    8ea4:	afa60090 	sw	a2,144(sp)
    8ea8:	afa70094 	sw	a3,148(sp)
    8eac:	25ef0000 	addiu	t7,t7,0
    8eb0:	8df90000 	lw	t9,0(t7)
    8eb4:	27ae0078 	addiu	t6,sp,120
    8eb8:	8df80004 	lw	t8,4(t7)
    8ebc:	add90000 	sw	t9,0(t6)
    8ec0:	8df90008 	lw	t9,8(t7)
    8ec4:	add80004 	sw	t8,4(t6)
    8ec8:	3c060000 	lui	a2,0x0
    8ecc:	add90008 	sw	t9,8(t6)
    8ed0:	8fac0088 	lw	t4,136(sp)
    8ed4:	24c60000 	addiu	a2,a2,0
    8ed8:	24071060 	li	a3,4192
    8edc:	8d850000 	lw	a1,0(t4)
    8ee0:	27a40060 	addiu	a0,sp,96
    8ee4:	0c000000 	jal	0 <func_8094F2C0>
    8ee8:	afa50070 	sw	a1,112(sp)
    8eec:	8faa008c 	lw	t2,140(sp)
    8ef0:	24010006 	li	at,6
    8ef4:	8fa80070 	lw	t0,112(sp)
    8ef8:	15410012 	bne	t2,at,8f44 <func_80958150+0xb4>
    8efc:	3c0d0000 	lui	t5,0x0
    8f00:	91ad0000 	lbu	t5,0(t5)
    8f04:	29a10009 	slti	at,t5,9
    8f08:	10200004 	beqz	at,8f1c <func_80958150+0x8c>
    8f0c:	3c01c47a 	lui	at,0xc47a
    8f10:	44812000 	mtc1	at,$f4
    8f14:	10000005 	b	8f2c <func_80958150+0x9c>
    8f18:	e7a40078 	swc1	$f4,120(sp)
    8f1c:	3c014348 	lui	at,0x4348
    8f20:	44813000 	mtc1	at,$f6
    8f24:	00000000 	nop
    8f28:	e7a60078 	swc1	$f6,120(sp)
    8f2c:	8fa50098 	lw	a1,152(sp)
    8f30:	27a40078 	addiu	a0,sp,120
    8f34:	0c000000 	jal	0 <func_8094F2C0>
    8f38:	24a501d8 	addiu	a1,a1,472
    8f3c:	100000ea 	b	92e8 <func_80958150+0x458>
    8f40:	8faa008c 	lw	t2,140(sp)
    8f44:	2941000a 	slti	at,t2,10
    8f48:	14200067 	bnez	at,90e8 <func_80958150+0x258>
    8f4c:	29410014 	slti	at,t2,20
    8f50:	10200065 	beqz	at,90e8 <func_80958150+0x258>
    8f54:	3c0e0000 	lui	t6,0x0
    8f58:	01ca7021 	addu	t6,t6,t2
    8f5c:	91ce0000 	lbu	t6,0(t6)
    8f60:	29410010 	slti	at,t2,16
    8f64:	51c00061 	beqzl	t6,90ec <func_80958150+0x25c>
    8f68:	24010019 	li	at,25
    8f6c:	10200004 	beqz	at,8f80 <func_80958150+0xf0>
    8f70:	3c0f0000 	lui	t7,0x0
    8f74:	2401000a 	li	at,10
    8f78:	55410021 	bnel	t2,at,9000 <func_80958150+0x170>
    8f7c:	2941000b 	slti	at,t2,11
    8f80:	91ef0000 	lbu	t7,0(t7)
    8f84:	3c19da38 	lui	t9,0xda38
    8f88:	29e1000a 	slti	at,t7,10
    8f8c:	5020001c 	beqzl	at,9000 <func_80958150+0x170>
    8f90:	2941000b 	slti	at,t2,11
    8f94:	8d0202d0 	lw	v0,720(t0)
    8f98:	37390003 	ori	t9,t9,0x3
    8f9c:	3c050000 	lui	a1,0x0
    8fa0:	24580008 	addiu	t8,v0,8
    8fa4:	ad1802d0 	sw	t8,720(t0)
    8fa8:	ac590000 	sw	t9,0(v0)
    8fac:	8fac0088 	lw	t4,136(sp)
    8fb0:	24a50000 	addiu	a1,a1,0
    8fb4:	24061070 	li	a2,4208
    8fb8:	8d840000 	lw	a0,0(t4)
    8fbc:	afa80070 	sw	t0,112(sp)
    8fc0:	0c000000 	jal	0 <func_8094F2C0>
    8fc4:	afa2005c 	sw	v0,92(sp)
    8fc8:	8fa3005c 	lw	v1,92(sp)
    8fcc:	8fa80070 	lw	t0,112(sp)
    8fd0:	3c0f0601 	lui	t7,0x601
    8fd4:	ac620004 	sw	v0,4(v1)
    8fd8:	8d0202d0 	lw	v0,720(t0)
    8fdc:	25ef8bb8 	addiu	t7,t7,-29768
    8fe0:	3c0ede00 	lui	t6,0xde00
    8fe4:	244d0008 	addiu	t5,v0,8
    8fe8:	ad0d02d0 	sw	t5,720(t0)
    8fec:	ac4f0004 	sw	t7,4(v0)
    8ff0:	ac4e0000 	sw	t6,0(v0)
    8ff4:	10000022 	b	9080 <func_80958150+0x1f0>
    8ff8:	8faa008c 	lw	t2,140(sp)
    8ffc:	2941000b 	slti	at,t2,11
    9000:	1420001f 	bnez	at,9080 <func_80958150+0x1f0>
    9004:	3c180000 	lui	t8,0x0
    9008:	93180000 	lbu	t8,0(t8)
    900c:	3c0cda38 	lui	t4,0xda38
    9010:	2b010004 	slti	at,t8,4
    9014:	1020001a 	beqz	at,9080 <func_80958150+0x1f0>
    9018:	00000000 	nop
    901c:	8d0202d0 	lw	v0,720(t0)
    9020:	358c0003 	ori	t4,t4,0x3
    9024:	3c050000 	lui	a1,0x0
    9028:	24590008 	addiu	t9,v0,8
    902c:	ad1902d0 	sw	t9,720(t0)
    9030:	ac4c0000 	sw	t4,0(v0)
    9034:	8fad0088 	lw	t5,136(sp)
    9038:	24a50000 	addiu	a1,a1,0
    903c:	24061074 	li	a2,4212
    9040:	8da40000 	lw	a0,0(t5)
    9044:	afa80070 	sw	t0,112(sp)
    9048:	0c000000 	jal	0 <func_8094F2C0>
    904c:	afa20054 	sw	v0,84(sp)
    9050:	8fa30054 	lw	v1,84(sp)
    9054:	8fa80070 	lw	t0,112(sp)
    9058:	3c180601 	lui	t8,0x601
    905c:	ac620004 	sw	v0,4(v1)
    9060:	8d0202d0 	lw	v0,720(t0)
    9064:	27188bb8 	addiu	t8,t8,-29768
    9068:	3c0fde00 	lui	t7,0xde00
    906c:	244e0008 	addiu	t6,v0,8
    9070:	ad0e02d0 	sw	t6,720(t0)
    9074:	ac580004 	sw	t8,4(v0)
    9078:	ac4f0000 	sw	t7,0(v0)
    907c:	8faa008c 	lw	t2,140(sp)
    9080:	3c190000 	lui	t9,0x0
    9084:	83390000 	lb	t9,0(t9)
    9088:	2b21000e 	slti	at,t9,14
    908c:	1420000c 	bnez	at,90c0 <func_80958150+0x230>
    9090:	3c010000 	lui	at,0x0
    9094:	0c000000 	jal	0 <func_8094F2C0>
    9098:	c42c0000 	lwc1	$f12,0(at)
    909c:	3c010000 	lui	at,0x0
    90a0:	e7a00078 	swc1	$f0,120(sp)
    90a4:	0c000000 	jal	0 <func_8094F2C0>
    90a8:	c42c0000 	lwc1	$f12,0(at)
    90ac:	3c01c270 	lui	at,0xc270
    90b0:	44814000 	mtc1	at,$f8
    90b4:	e7a0007c 	swc1	$f0,124(sp)
    90b8:	8faa008c 	lw	t2,140(sp)
    90bc:	e7a80080 	swc1	$f8,128(sp)
    90c0:	8fac0098 	lw	t4,152(sp)
    90c4:	000a6880 	sll	t5,t2,0x2
    90c8:	01aa6823 	subu	t5,t5,t2
    90cc:	000d6880 	sll	t5,t5,0x2
    90d0:	018d2821 	addu	a1,t4,t5
    90d4:	24a50184 	addiu	a1,a1,388
    90d8:	0c000000 	jal	0 <func_8094F2C0>
    90dc:	27a40078 	addiu	a0,sp,120
    90e0:	10000081 	b	92e8 <func_80958150+0x458>
    90e4:	8faa008c 	lw	t2,140(sp)
    90e8:	24010019 	li	at,25
    90ec:	15410042 	bne	t2,at,91f8 <func_80958150+0x368>
    90f0:	8fb90090 	lw	t9,144(sp)
    90f4:	8d0202d0 	lw	v0,720(t0)
    90f8:	8fab0088 	lw	t3,136(sp)
    90fc:	3c0fdb06 	lui	t7,0xdb06
    9100:	244e0008 	addiu	t6,v0,8
    9104:	ad0e02d0 	sw	t6,720(t0)
    9108:	35ef0024 	ori	t7,t7,0x24
    910c:	3c030001 	lui	v1,0x1
    9110:	ac4f0000 	sw	t7,0(v0)
    9114:	006b1821 	addu	v1,v1,t3
    9118:	8c631de4 	lw	v1,7652(v1)
    911c:	8d640000 	lw	a0,0(t3)
    9120:	24180010 	li	t8,16
    9124:	00033880 	sll	a3,v1,0x2
    9128:	00036880 	sll	t5,v1,0x2
    912c:	afb80010 	sw	t8,16(sp)
    9130:	01a36821 	addu	t5,t5,v1
    9134:	00e33821 	addu	a3,a3,v1
    9138:	00073840 	sll	a3,a3,0x1
    913c:	31ae007f 	andi	t6,t5,0x7f
    9140:	24180020 	li	t8,32
    9144:	240f0010 	li	t7,16
    9148:	24190020 	li	t9,32
    914c:	240c0001 	li	t4,1
    9150:	afac0018 	sw	t4,24(sp)
    9154:	afb90014 	sw	t9,20(sp)
    9158:	afaf0024 	sw	t7,36(sp)
    915c:	afb80028 	sw	t8,40(sp)
    9160:	afae0020 	sw	t6,32(sp)
    9164:	30e7007f 	andi	a3,a3,0x7f
    9168:	afa80070 	sw	t0,112(sp)
    916c:	afa0001c 	sw	zero,28(sp)
    9170:	00002825 	move	a1,zero
    9174:	00003025 	move	a2,zero
    9178:	0c000000 	jal	0 <func_8094F2C0>
    917c:	afa2004c 	sw	v0,76(sp)
    9180:	8fa9004c 	lw	t1,76(sp)
    9184:	8fa80070 	lw	t0,112(sp)
    9188:	3c0cda38 	lui	t4,0xda38
    918c:	ad220004 	sw	v0,4(t1)
    9190:	8d0202d0 	lw	v0,720(t0)
    9194:	358c0003 	ori	t4,t4,0x3
    9198:	3c050000 	lui	a1,0x0
    919c:	24590008 	addiu	t9,v0,8
    91a0:	ad1902d0 	sw	t9,720(t0)
    91a4:	ac4c0000 	sw	t4,0(v0)
    91a8:	8fad0088 	lw	t5,136(sp)
    91ac:	24a50000 	addiu	a1,a1,0
    91b0:	24061088 	li	a2,4232
    91b4:	8da40000 	lw	a0,0(t5)
    91b8:	afa80070 	sw	t0,112(sp)
    91bc:	0c000000 	jal	0 <func_8094F2C0>
    91c0:	afa20048 	sw	v0,72(sp)
    91c4:	8fa30048 	lw	v1,72(sp)
    91c8:	8fa80070 	lw	t0,112(sp)
    91cc:	3c180601 	lui	t8,0x601
    91d0:	ac620004 	sw	v0,4(v1)
    91d4:	8d0202d0 	lw	v0,720(t0)
    91d8:	27188d70 	addiu	t8,t8,-29328
    91dc:	3c0fde00 	lui	t7,0xde00
    91e0:	244e0008 	addiu	t6,v0,8
    91e4:	ad0e02d0 	sw	t6,720(t0)
    91e8:	ac580004 	sw	t8,4(v0)
    91ec:	ac4f0000 	sw	t7,0(v0)
    91f0:	1000003d 	b	92e8 <func_80958150+0x458>
    91f4:	8faa008c 	lw	t2,140(sp)
    91f8:	8f2c0000 	lw	t4,0(t9)
    91fc:	2941001d 	slti	at,t2,29
    9200:	51800020 	beqzl	t4,9284 <func_80958150+0x3f4>
    9204:	24010018 	li	at,24
    9208:	1420001d 	bnez	at,9280 <func_80958150+0x3f0>
    920c:	29410038 	slti	at,t2,56
    9210:	1020001b 	beqz	at,9280 <func_80958150+0x3f0>
    9214:	3c0eda38 	lui	t6,0xda38
    9218:	8d0202d0 	lw	v0,720(t0)
    921c:	35ce0003 	ori	t6,t6,0x3
    9220:	3c050000 	lui	a1,0x0
    9224:	244d0008 	addiu	t5,v0,8
    9228:	ad0d02d0 	sw	t5,720(t0)
    922c:	ac4e0000 	sw	t6,0(v0)
    9230:	8faf0088 	lw	t7,136(sp)
    9234:	24a50000 	addiu	a1,a1,0
    9238:	2406108c 	li	a2,4236
    923c:	8de40000 	lw	a0,0(t7)
    9240:	afa80070 	sw	t0,112(sp)
    9244:	0c000000 	jal	0 <func_8094F2C0>
    9248:	afa20040 	sw	v0,64(sp)
    924c:	8fa30040 	lw	v1,64(sp)
    9250:	8fa80070 	lw	t0,112(sp)
    9254:	3c19de00 	lui	t9,0xde00
    9258:	ac620004 	sw	v0,4(v1)
    925c:	8d0202d0 	lw	v0,720(t0)
    9260:	24580008 	addiu	t8,v0,8
    9264:	ad1802d0 	sw	t8,720(t0)
    9268:	ac590000 	sw	t9,0(v0)
    926c:	8fac0090 	lw	t4,144(sp)
    9270:	8d8d0000 	lw	t5,0(t4)
    9274:	ac4d0004 	sw	t5,4(v0)
    9278:	1000001b 	b	92e8 <func_80958150+0x458>
    927c:	8faa008c 	lw	t2,140(sp)
    9280:	24010018 	li	at,24
    9284:	15410018 	bne	t2,at,92e8 <func_80958150+0x458>
    9288:	3c0e0000 	lui	t6,0x0
    928c:	81ce0000 	lb	t6,0(t6)
    9290:	8faf0098 	lw	t7,152(sp)
    9294:	29c1000e 	slti	at,t6,14
    9298:	10200013 	beqz	at,92e8 <func_80958150+0x458>
    929c:	3c0143e1 	lui	at,0x43e1
    92a0:	44818000 	mtc1	at,$f16
    92a4:	c5ea00bc 	lwc1	$f10,188(t7)
    92a8:	3c01c30c 	lui	at,0xc30c
    92ac:	44812000 	mtc1	at,$f4
    92b0:	46105480 	add.s	$f18,$f10,$f16
    92b4:	27a40078 	addiu	a0,sp,120
    92b8:	25e50280 	addiu	a1,t7,640
    92bc:	46049180 	add.s	$f6,$f18,$f4
    92c0:	0c000000 	jal	0 <func_8094F2C0>
    92c4:	e7a60078 	swc1	$f6,120(sp)
    92c8:	3c014348 	lui	at,0x4348
    92cc:	44814000 	mtc1	at,$f8
    92d0:	8fa50098 	lw	a1,152(sp)
    92d4:	27a40078 	addiu	a0,sp,120
    92d8:	e7a80078 	swc1	$f8,120(sp)
    92dc:	0c000000 	jal	0 <func_8094F2C0>
    92e0:	24a50274 	addiu	a1,a1,628
    92e4:	8faa008c 	lw	t2,140(sp)
    92e8:	24010007 	li	at,7
    92ec:	15410032 	bne	t2,at,93b8 <func_80958150+0x528>
    92f0:	3c180000 	lui	t8,0x0
    92f4:	83180000 	lb	t8,0(t8)
    92f8:	8fb90098 	lw	t9,152(sp)
    92fc:	2b01000e 	slti	at,t8,14
    9300:	1420002d 	bnez	at,93b8 <func_80958150+0x528>
    9304:	272c0274 	addiu	t4,t9,628
    9308:	3c0143a0 	lui	at,0x43a0
    930c:	44816000 	mtc1	at,$f12
    9310:	0c000000 	jal	0 <func_8094F2C0>
    9314:	afac0038 	sw	t4,56(sp)
    9318:	3c01c37a 	lui	at,0xc37a
    931c:	44815000 	mtc1	at,$f10
    9320:	3c0143a0 	lui	at,0x43a0
    9324:	44816000 	mtc1	at,$f12
    9328:	460a0400 	add.s	$f16,$f0,$f10
    932c:	0c000000 	jal	0 <func_8094F2C0>
    9330:	e7b00078 	swc1	$f16,120(sp)
    9334:	3c0143a0 	lui	at,0x43a0
    9338:	44816000 	mtc1	at,$f12
    933c:	0c000000 	jal	0 <func_8094F2C0>
    9340:	e7a0007c 	swc1	$f0,124(sp)
    9344:	c7a2007c 	lwc1	$f2,124(sp)
    9348:	44807000 	mtc1	zero,$f14
    934c:	3c014316 	lui	at,0x4316
    9350:	27a40078 	addiu	a0,sp,120
    9354:	460e103c 	c.lt.s	$f2,$f14
    9358:	00000000 	nop
    935c:	45020008 	bc1fl	9380 <func_80958150+0x4f0>
    9360:	44816000 	mtc1	at,$f12
    9364:	3c014316 	lui	at,0x4316
    9368:	44816000 	mtc1	at,$f12
    936c:	00000000 	nop
    9370:	460c1081 	sub.s	$f2,$f2,$f12
    9374:	10000005 	b	938c <func_80958150+0x4fc>
    9378:	e7a2007c 	swc1	$f2,124(sp)
    937c:	44816000 	mtc1	at,$f12
    9380:	00000000 	nop
    9384:	460c1080 	add.s	$f2,$f2,$f12
    9388:	e7a2007c 	swc1	$f2,124(sp)
    938c:	460e003c 	c.lt.s	$f0,$f14
    9390:	00000000 	nop
    9394:	45020005 	bc1fl	93ac <func_80958150+0x51c>
    9398:	460c0100 	add.s	$f4,$f0,$f12
    939c:	460c0481 	sub.s	$f18,$f0,$f12
    93a0:	10000003 	b	93b0 <func_80958150+0x520>
    93a4:	e7b20080 	swc1	$f18,128(sp)
    93a8:	460c0100 	add.s	$f4,$f0,$f12
    93ac:	e7a40080 	swc1	$f4,128(sp)
    93b0:	0c000000 	jal	0 <func_8094F2C0>
    93b4:	8fa50038 	lw	a1,56(sp)
    93b8:	8fad0088 	lw	t5,136(sp)
    93bc:	3c060000 	lui	a2,0x0
    93c0:	24c60000 	addiu	a2,a2,0
    93c4:	27a40060 	addiu	a0,sp,96
    93c8:	240710a8 	li	a3,4264
    93cc:	0c000000 	jal	0 <func_8094F2C0>
    93d0:	8da50000 	lw	a1,0(t5)
    93d4:	8fbf0034 	lw	ra,52(sp)
    93d8:	27bd0088 	addiu	sp,sp,136
    93dc:	03e00008 	jr	ra
    93e0:	00000000 	nop

000093e4 <func_809586A4>:
    93e4:	afa40000 	sw	a0,0(sp)
    93e8:	8fa40014 	lw	a0,20(sp)
    93ec:	afa60008 	sw	a2,8(sp)
    93f0:	afa7000c 	sw	a3,12(sp)
    93f4:	908e0194 	lbu	t6,404(a0)
    93f8:	24010004 	li	at,4
    93fc:	15c00007 	bnez	t6,941c <func_809586A4+0x38>
    9400:	00000000 	nop
    9404:	14a10005 	bne	a1,at,941c <func_809586A4+0x38>
    9408:	8fa20010 	lw	v0,16(sp)
    940c:	844f0004 	lh	t7,4(v0)
    9410:	849801f6 	lh	t8,502(a0)
    9414:	01f8c821 	addu	t9,t7,t8
    9418:	a4590004 	sh	t9,4(v0)
    941c:	03e00008 	jr	ra
    9420:	00001025 	move	v0,zero

00009424 <func_809586E4>:
    9424:	27bdffd0 	addiu	sp,sp,-48
    9428:	3c0e0000 	lui	t6,0x0
    942c:	afbf0014 	sw	ra,20(sp)
    9430:	afa40030 	sw	a0,48(sp)
    9434:	afa60038 	sw	a2,56(sp)
    9438:	afa7003c 	sw	a3,60(sp)
    943c:	25ce0000 	addiu	t6,t6,0
    9440:	8dd80000 	lw	t8,0(t6)
    9444:	8fa60040 	lw	a2,64(sp)
    9448:	27a70020 	addiu	a3,sp,32
    944c:	acf80000 	sw	t8,0(a3)
    9450:	8dcf0004 	lw	t7,4(t6)
    9454:	24010005 	li	at,5
    9458:	acef0004 	sw	t7,4(a3)
    945c:	8dd80008 	lw	t8,8(t6)
    9460:	acf80008 	sw	t8,8(a3)
    9464:	90d90194 	lbu	t9,404(a2)
    9468:	13200049 	beqz	t9,9590 <func_809586E4+0x16c>
    946c:	00000000 	nop
    9470:	24010004 	li	at,4
    9474:	10a10009 	beq	a1,at,949c <func_809586E4+0x78>
    9478:	3c040000 	lui	a0,0x0
    947c:	24010007 	li	at,7
    9480:	10a1000f 	beq	a1,at,94c0 <func_809586E4+0x9c>
    9484:	3c040000 	lui	a0,0x0
    9488:	24010009 	li	at,9
    948c:	50a10029 	beql	a1,at,9534 <func_809586E4+0x110>
    9490:	8cce0198 	lw	t6,408(a2)
    9494:	10000074 	b	9668 <func_809586E4+0x244>
    9498:	8fbf0014 	lw	ra,20(sp)
    949c:	24840000 	addiu	a0,a0,0
    94a0:	0c000000 	jal	0 <func_8094F2C0>
    94a4:	24c50038 	addiu	a1,a2,56
    94a8:	8fa60040 	lw	a2,64(sp)
    94ac:	00002025 	move	a0,zero
    94b0:	0c000000 	jal	0 <func_8094F2C0>
    94b4:	24c502d8 	addiu	a1,a2,728
    94b8:	1000006b 	b	9668 <func_809586E4+0x244>
    94bc:	8fbf0014 	lw	ra,20(sp)
    94c0:	24840000 	addiu	a0,a0,0
    94c4:	0c000000 	jal	0 <func_8094F2C0>
    94c8:	24c501b4 	addiu	a1,a2,436
    94cc:	8fa60040 	lw	a2,64(sp)
    94d0:	3c01c220 	lui	at,0xc220
    94d4:	44814000 	mtc1	at,$f8
    94d8:	8cc80198 	lw	t0,408(a2)
    94dc:	3c01c0e0 	lui	at,0xc0e0
    94e0:	27a40020 	addiu	a0,sp,32
    94e4:	3109001f 	andi	t1,t0,0x1f
    94e8:	00095043 	sra	t2,t1,0x1
    94ec:	448a2000 	mtc1	t2,$f4
    94f0:	24c501fc 	addiu	a1,a2,508
    94f4:	468021a0 	cvt.s.w	$f6,$f4
    94f8:	44812000 	mtc1	at,$f4
    94fc:	46083282 	mul.s	$f10,$f6,$f8
    9500:	e7aa0020 	swc1	$f10,32(sp)
    9504:	8ccb0198 	lw	t3,408(a2)
    9508:	316c001f 	andi	t4,t3,0x1f
    950c:	000c6843 	sra	t5,t4,0x1
    9510:	448d8000 	mtc1	t5,$f16
    9514:	00000000 	nop
    9518:	468084a0 	cvt.s.w	$f18,$f16
    951c:	46049182 	mul.s	$f6,$f18,$f4
    9520:	0c000000 	jal	0 <func_8094F2C0>
    9524:	e7a60024 	swc1	$f6,36(sp)
    9528:	1000004f 	b	9668 <func_809586E4+0x244>
    952c:	8fbf0014 	lw	ra,20(sp)
    9530:	8cce0198 	lw	t6,408(a2)
    9534:	3c01c270 	lui	at,0xc270
    9538:	44818000 	mtc1	at,$f16
    953c:	31cf001f 	andi	t7,t6,0x1f
    9540:	000fc043 	sra	t8,t7,0x1
    9544:	44984000 	mtc1	t8,$f8
    9548:	3c01c234 	lui	at,0xc234
    954c:	00e02025 	move	a0,a3
    9550:	468042a0 	cvt.s.w	$f10,$f8
    9554:	44814000 	mtc1	at,$f8
    9558:	24c50208 	addiu	a1,a2,520
    955c:	46105482 	mul.s	$f18,$f10,$f16
    9560:	e7b20020 	swc1	$f18,32(sp)
    9564:	8cd90198 	lw	t9,408(a2)
    9568:	3328001f 	andi	t0,t9,0x1f
    956c:	00084843 	sra	t1,t0,0x1
    9570:	44892000 	mtc1	t1,$f4
    9574:	00000000 	nop
    9578:	468021a0 	cvt.s.w	$f6,$f4
    957c:	46083282 	mul.s	$f10,$f6,$f8
    9580:	0c000000 	jal	0 <func_8094F2C0>
    9584:	e7aa0024 	swc1	$f10,36(sp)
    9588:	10000037 	b	9668 <func_809586E4+0x244>
    958c:	8fbf0014 	lw	ra,20(sp)
    9590:	10a1000a 	beq	a1,at,95bc <func_809586E4+0x198>
    9594:	3c040000 	lui	a0,0x0
    9598:	24010008 	li	at,8
    959c:	10a1000c 	beq	a1,at,95d0 <func_809586E4+0x1ac>
    95a0:	24010009 	li	at,9
    95a4:	10a10017 	beq	a1,at,9604 <func_809586E4+0x1e0>
    95a8:	2401000a 	li	at,10
    95ac:	50a10023 	beql	a1,at,963c <func_809586E4+0x218>
    95b0:	84ce019c 	lh	t6,412(a2)
    95b4:	1000002c 	b	9668 <func_809586E4+0x244>
    95b8:	8fbf0014 	lw	ra,20(sp)
    95bc:	24840000 	addiu	a0,a0,0
    95c0:	0c000000 	jal	0 <func_8094F2C0>
    95c4:	24c501b4 	addiu	a1,a2,436
    95c8:	10000027 	b	9668 <func_809586E4+0x244>
    95cc:	8fbf0014 	lw	ra,20(sp)
    95d0:	84ca019c 	lh	t2,412(a2)
    95d4:	3c0142b4 	lui	at,0x42b4
    95d8:	44812000 	mtc1	at,$f4
    95dc:	314b0007 	andi	t3,t2,0x7
    95e0:	448b8000 	mtc1	t3,$f16
    95e4:	00e02025 	move	a0,a3
    95e8:	24c50214 	addiu	a1,a2,532
    95ec:	468084a0 	cvt.s.w	$f18,$f16
    95f0:	46049182 	mul.s	$f6,$f18,$f4
    95f4:	0c000000 	jal	0 <func_8094F2C0>
    95f8:	e7a60020 	swc1	$f6,32(sp)
    95fc:	1000001a 	b	9668 <func_809586E4+0x244>
    9600:	8fbf0014 	lw	ra,20(sp)
    9604:	84cc019c 	lh	t4,412(a2)
    9608:	3c014248 	lui	at,0x4248
    960c:	44818000 	mtc1	at,$f16
    9610:	318d0007 	andi	t5,t4,0x7
    9614:	448d4000 	mtc1	t5,$f8
    9618:	00e02025 	move	a0,a3
    961c:	24c50208 	addiu	a1,a2,520
    9620:	468042a0 	cvt.s.w	$f10,$f8
    9624:	46105482 	mul.s	$f18,$f10,$f16
    9628:	0c000000 	jal	0 <func_8094F2C0>
    962c:	e7b20020 	swc1	$f18,32(sp)
    9630:	1000000d 	b	9668 <func_809586E4+0x244>
    9634:	8fbf0014 	lw	ra,20(sp)
    9638:	84ce019c 	lh	t6,412(a2)
    963c:	3c014238 	lui	at,0x4238
    9640:	44814000 	mtc1	at,$f8
    9644:	31cf0007 	andi	t7,t6,0x7
    9648:	448f2000 	mtc1	t7,$f4
    964c:	00e02025 	move	a0,a3
    9650:	24c501fc 	addiu	a1,a2,508
    9654:	468021a0 	cvt.s.w	$f6,$f4
    9658:	46083282 	mul.s	$f10,$f6,$f8
    965c:	0c000000 	jal	0 <func_8094F2C0>
    9660:	e7aa0020 	swc1	$f10,32(sp)
    9664:	8fbf0014 	lw	ra,20(sp)
    9668:	27bd0030 	addiu	sp,sp,48
    966c:	03e00008 	jr	ra
    9670:	00000000 	nop

00009674 <func_80958934>:
    9674:	27bdff90 	addiu	sp,sp,-112
    9678:	afb00018 	sw	s0,24(sp)
    967c:	24010004 	li	at,4
    9680:	00e08025 	move	s0,a3
    9684:	afbf001c 	sw	ra,28(sp)
    9688:	afa40070 	sw	a0,112(sp)
    968c:	10a10009 	beq	a1,at,96b4 <func_80958934+0x40>
    9690:	afa60078 	sw	a2,120(sp)
    9694:	24010005 	li	at,5
    9698:	10a10011 	beq	a1,at,96e0 <func_80958934+0x6c>
    969c:	8fa20080 	lw	v0,128(sp)
    96a0:	24010007 	li	at,7
    96a4:	10a10018 	beq	a1,at,9708 <func_80958934+0x94>
    96a8:	24070001 	li	a3,1
    96ac:	10000063 	b	983c <func_80958934+0x1c8>
    96b0:	8fbf001c 	lw	ra,28(sp)
    96b4:	8fa20080 	lw	v0,128(sp)
    96b8:	8fa30084 	lw	v1,132(sp)
    96bc:	844e0002 	lh	t6,2(v0)
    96c0:	846f01e6 	lh	t7,486(v1)
    96c4:	84590004 	lh	t9,4(v0)
    96c8:	01cfc021 	addu	t8,t6,t7
    96cc:	a4580002 	sh	t8,2(v0)
    96d0:	846801e4 	lh	t0,484(v1)
    96d4:	03284821 	addu	t1,t9,t0
    96d8:	10000057 	b	9838 <func_80958934+0x1c4>
    96dc:	a4490004 	sh	t1,4(v0)
    96e0:	8fa30084 	lw	v1,132(sp)
    96e4:	844a0002 	lh	t2,2(v0)
    96e8:	844d0004 	lh	t5,4(v0)
    96ec:	846b01ec 	lh	t3,492(v1)
    96f0:	014b6021 	addu	t4,t2,t3
    96f4:	a44c0002 	sh	t4,2(v0)
    96f8:	846e01ea 	lh	t6,490(v1)
    96fc:	01ae7821 	addu	t7,t5,t6
    9700:	1000004d 	b	9838 <func_80958934+0x1c4>
    9704:	a44f0004 	sh	t7,4(v0)
    9708:	c60c0000 	lwc1	$f12,0(s0)
    970c:	c60e0004 	lwc1	$f14,4(s0)
    9710:	0c000000 	jal	0 <func_8094F2C0>
    9714:	8e060008 	lw	a2,8(s0)
    9718:	0c000000 	jal	0 <func_8094F2C0>
    971c:	27a4002c 	addiu	a0,sp,44
    9720:	3c050000 	lui	a1,0x0
    9724:	24a50000 	addiu	a1,a1,0
    9728:	27a4002c 	addiu	a0,sp,44
    972c:	0c000000 	jal	0 <func_8094F2C0>
    9730:	00003025 	move	a2,zero
    9734:	3c180000 	lui	t8,0x0
    9738:	87180000 	lh	t8,0(t8)
    973c:	3c010000 	lui	at,0x0
    9740:	c4280000 	lwc1	$f8,0(at)
    9744:	0018c823 	negu	t9,t8
    9748:	44992000 	mtc1	t9,$f4
    974c:	24050001 	li	a1,1
    9750:	468021a0 	cvt.s.w	$f6,$f4
    9754:	46083302 	mul.s	$f12,$f6,$f8
    9758:	0c000000 	jal	0 <func_8094F2C0>
    975c:	00000000 	nop
    9760:	3c080000 	lui	t0,0x0
    9764:	85080000 	lh	t0,0(t0)
    9768:	3c010000 	lui	at,0x0
    976c:	c4320000 	lwc1	$f18,0(at)
    9770:	00084823 	negu	t1,t0
    9774:	44895000 	mtc1	t1,$f10
    9778:	24050001 	li	a1,1
    977c:	46805420 	cvt.s.w	$f16,$f10
    9780:	46128302 	mul.s	$f12,$f16,$f18
    9784:	0c000000 	jal	0 <func_8094F2C0>
    9788:	00000000 	nop
    978c:	3c0a0000 	lui	t2,0x0
    9790:	854a0000 	lh	t2,0(t2)
    9794:	3c010000 	lui	at,0x0
    9798:	c4280000 	lwc1	$f8,0(at)
    979c:	000a5823 	negu	t3,t2
    97a0:	448b2000 	mtc1	t3,$f4
    97a4:	24050001 	li	a1,1
    97a8:	468021a0 	cvt.s.w	$f6,$f4
    97ac:	46083302 	mul.s	$f12,$f6,$f8
    97b0:	0c000000 	jal	0 <func_8094F2C0>
    97b4:	00000000 	nop
    97b8:	8fa30084 	lw	v1,132(sp)
    97bc:	3c010000 	lui	at,0x0
    97c0:	c4320000 	lwc1	$f18,0(at)
    97c4:	846c01f2 	lh	t4,498(v1)
    97c8:	24050001 	li	a1,1
    97cc:	448c5000 	mtc1	t4,$f10
    97d0:	00000000 	nop
    97d4:	46805420 	cvt.s.w	$f16,$f10
    97d8:	46128302 	mul.s	$f12,$f16,$f18
    97dc:	0c000000 	jal	0 <func_8094F2C0>
    97e0:	00000000 	nop
    97e4:	8fa30084 	lw	v1,132(sp)
    97e8:	3c010000 	lui	at,0x0
    97ec:	c4280000 	lwc1	$f8,0(at)
    97f0:	846d01f0 	lh	t5,496(v1)
    97f4:	24050001 	li	a1,1
    97f8:	448d2000 	mtc1	t5,$f4
    97fc:	00000000 	nop
    9800:	468021a0 	cvt.s.w	$f6,$f4
    9804:	46083302 	mul.s	$f12,$f6,$f8
    9808:	0c000000 	jal	0 <func_8094F2C0>
    980c:	00000000 	nop
    9810:	8fa20080 	lw	v0,128(sp)
    9814:	44800000 	mtc1	zero,$f0
    9818:	00000000 	nop
    981c:	e6000008 	swc1	$f0,8(s0)
    9820:	e6000004 	swc1	$f0,4(s0)
    9824:	e6000000 	swc1	$f0,0(s0)
    9828:	a4400004 	sh	zero,4(v0)
    982c:	84430004 	lh	v1,4(v0)
    9830:	a4430002 	sh	v1,2(v0)
    9834:	a4430000 	sh	v1,0(v0)
    9838:	8fbf001c 	lw	ra,28(sp)
    983c:	8fb00018 	lw	s0,24(sp)
    9840:	27bd0070 	addiu	sp,sp,112
    9844:	03e00008 	jr	ra
    9848:	00001025 	move	v0,zero

0000984c <func_80958B0C>:
    984c:	27bdff80 	addiu	sp,sp,-128
    9850:	3c0e0000 	lui	t6,0x0
    9854:	afbf0024 	sw	ra,36(sp)
    9858:	afb00020 	sw	s0,32(sp)
    985c:	afa40080 	sw	a0,128(sp)
    9860:	afa60088 	sw	a2,136(sp)
    9864:	afa7008c 	sw	a3,140(sp)
    9868:	25ce0000 	addiu	t6,t6,0
    986c:	8dd80000 	lw	t8,0(t6)
    9870:	27a60070 	addiu	a2,sp,112
    9874:	3c080000 	lui	t0,0x0
    9878:	acd80000 	sw	t8,0(a2)
    987c:	8dcf0004 	lw	t7,4(t6)
    9880:	25080000 	addiu	t0,t0,0
    9884:	27b90064 	addiu	t9,sp,100
    9888:	accf0004 	sw	t7,4(a2)
    988c:	8dd80008 	lw	t8,8(t6)
    9890:	3c0c0000 	lui	t4,0x0
    9894:	258c0000 	addiu	t4,t4,0
    9898:	acd80008 	sw	t8,8(a2)
    989c:	8d0a0000 	lw	t2,0(t0)
    98a0:	8d090004 	lw	t1,4(t0)
    98a4:	27ab0058 	addiu	t3,sp,88
    98a8:	af2a0000 	sw	t2,0(t9)
    98ac:	8d0a0008 	lw	t2,8(t0)
    98b0:	af290004 	sw	t1,4(t9)
    98b4:	3c180000 	lui	t8,0x0
    98b8:	af2a0008 	sw	t2,8(t9)
    98bc:	8d8e0000 	lw	t6,0(t4)
    98c0:	8d8d0004 	lw	t5,4(t4)
    98c4:	27180000 	addiu	t8,t8,0
    98c8:	ad6e0000 	sw	t6,0(t3)
    98cc:	8d8e0008 	lw	t6,8(t4)
    98d0:	ad6d0004 	sw	t5,4(t3)
    98d4:	27af004c 	addiu	t7,sp,76
    98d8:	ad6e0008 	sw	t6,8(t3)
    98dc:	8f080000 	lw	t0,0(t8)
    98e0:	8f190004 	lw	t9,4(t8)
    98e4:	3c0a0000 	lui	t2,0x0
    98e8:	ade80000 	sw	t0,0(t7)
    98ec:	8f080008 	lw	t0,8(t8)
    98f0:	254a0000 	addiu	t2,t2,0
    98f4:	adf90004 	sw	t9,4(t7)
    98f8:	ade80008 	sw	t0,8(t7)
    98fc:	8d4c0000 	lw	t4,0(t2)
    9900:	27a90040 	addiu	t1,sp,64
    9904:	8d4b0004 	lw	t3,4(t2)
    9908:	ad2c0000 	sw	t4,0(t1)
    990c:	8d4c0008 	lw	t4,8(t2)
    9910:	24010003 	li	at,3
    9914:	ad2b0004 	sw	t3,4(t1)
    9918:	10a1000c 	beq	a1,at,994c <func_80958B0C+0x100>
    991c:	ad2c0008 	sw	t4,8(t1)
    9920:	24010004 	li	at,4
    9924:	10a10018 	beq	a1,at,9988 <func_80958B0C+0x13c>
    9928:	8fb00090 	lw	s0,144(sp)
    992c:	24010005 	li	at,5
    9930:	10a10026 	beq	a1,at,99cc <func_80958B0C+0x180>
    9934:	8fb00090 	lw	s0,144(sp)
    9938:	24010007 	li	at,7
    993c:	10a10034 	beq	a1,at,9a10 <func_80958B0C+0x1c4>
    9940:	8fb00090 	lw	s0,144(sp)
    9944:	100000d5 	b	9c9c <func_80958B0C+0x450>
    9948:	8fbf0024 	lw	ra,36(sp)
    994c:	8fb00090 	lw	s0,144(sp)
    9950:	3c0141f0 	lui	at,0x41f0
    9954:	44814000 	mtc1	at,$f8
    9958:	860d019c 	lh	t5,412(s0)
    995c:	00c02025 	move	a0,a2
    9960:	260501fc 	addiu	a1,s0,508
    9964:	31ae0007 	andi	t6,t5,0x7
    9968:	448e2000 	mtc1	t6,$f4
    996c:	00000000 	nop
    9970:	468021a0 	cvt.s.w	$f6,$f4
    9974:	46083282 	mul.s	$f10,$f6,$f8
    9978:	0c000000 	jal	0 <func_8094F2C0>
    997c:	e7aa0070 	swc1	$f10,112(sp)
    9980:	100000c6 	b	9c9c <func_80958B0C+0x450>
    9984:	8fbf0024 	lw	ra,36(sp)
    9988:	3c040000 	lui	a0,0x0
    998c:	24840000 	addiu	a0,a0,0
    9990:	0c000000 	jal	0 <func_8094F2C0>
    9994:	260501b4 	addiu	a1,s0,436
    9998:	860f019c 	lh	t7,412(s0)
    999c:	3c0141f0 	lui	at,0x41f0
    99a0:	44812000 	mtc1	at,$f4
    99a4:	31f80007 	andi	t8,t7,0x7
    99a8:	44988000 	mtc1	t8,$f16
    99ac:	27a40070 	addiu	a0,sp,112
    99b0:	26050208 	addiu	a1,s0,520
    99b4:	468084a0 	cvt.s.w	$f18,$f16
    99b8:	46049182 	mul.s	$f6,$f18,$f4
    99bc:	0c000000 	jal	0 <func_8094F2C0>
    99c0:	e7a60070 	swc1	$f6,112(sp)
    99c4:	100000b5 	b	9c9c <func_80958B0C+0x450>
    99c8:	8fbf0024 	lw	ra,36(sp)
    99cc:	3c040000 	lui	a0,0x0
    99d0:	24840000 	addiu	a0,a0,0
    99d4:	0c000000 	jal	0 <func_8094F2C0>
    99d8:	260501c0 	addiu	a1,s0,448
    99dc:	8619019c 	lh	t9,412(s0)
    99e0:	3c014238 	lui	at,0x4238
    99e4:	44818000 	mtc1	at,$f16
    99e8:	33280007 	andi	t0,t9,0x7
    99ec:	44884000 	mtc1	t0,$f8
    99f0:	27a40070 	addiu	a0,sp,112
    99f4:	26050214 	addiu	a1,s0,532
    99f8:	468042a0 	cvt.s.w	$f10,$f8
    99fc:	46105482 	mul.s	$f18,$f10,$f16
    9a00:	0c000000 	jal	0 <func_8094F2C0>
    9a04:	e7b20070 	swc1	$f18,112(sp)
    9a08:	100000a4 	b	9c9c <func_80958B0C+0x450>
    9a0c:	8fbf0024 	lw	ra,36(sp)
    9a10:	3c040000 	lui	a0,0x0
    9a14:	24840000 	addiu	a0,a0,0
    9a18:	0c000000 	jal	0 <func_8094F2C0>
    9a1c:	260501cc 	addiu	a1,s0,460
    9a20:	8609019c 	lh	t1,412(s0)
    9a24:	3c014238 	lui	at,0x4238
    9a28:	44814000 	mtc1	at,$f8
    9a2c:	312a0007 	andi	t2,t1,0x7
    9a30:	448a2000 	mtc1	t2,$f4
    9a34:	27a40070 	addiu	a0,sp,112
    9a38:	26050220 	addiu	a1,s0,544
    9a3c:	468021a0 	cvt.s.w	$f6,$f4
    9a40:	46083282 	mul.s	$f10,$f6,$f8
    9a44:	0c000000 	jal	0 <func_8094F2C0>
    9a48:	e7aa0070 	swc1	$f10,112(sp)
    9a4c:	3c0141a0 	lui	at,0x41a0
    9a50:	44818000 	mtc1	at,$f16
    9a54:	26050268 	addiu	a1,s0,616
    9a58:	afa50034 	sw	a1,52(sp)
    9a5c:	27a40070 	addiu	a0,sp,112
    9a60:	0c000000 	jal	0 <func_8094F2C0>
    9a64:	e7b00070 	swc1	$f16,112(sp)
    9a68:	8fa40034 	lw	a0,52(sp)
    9a6c:	260501d8 	addiu	a1,s0,472
    9a70:	260601f6 	addiu	a2,s0,502
    9a74:	0c000000 	jal	0 <func_8094F2C0>
    9a78:	00003825 	move	a3,zero
    9a7c:	860b01f6 	lh	t3,502(s0)
    9a80:	a7ab003e 	sh	t3,62(sp)
    9a84:	860c01f8 	lh	t4,504(s0)
    9a88:	0c000000 	jal	0 <func_8094F2C0>
    9a8c:	a7ac003c 	sh	t4,60(sp)
    9a90:	c60c0268 	lwc1	$f12,616(s0)
    9a94:	c60e026c 	lwc1	$f14,620(s0)
    9a98:	8e060270 	lw	a2,624(s0)
    9a9c:	0c000000 	jal	0 <func_8094F2C0>
    9aa0:	00003825 	move	a3,zero
    9aa4:	87a4003e 	lh	a0,62(sp)
    9aa8:	87a5003c 	lh	a1,60(sp)
    9aac:	00003025 	move	a2,zero
    9ab0:	0c000000 	jal	0 <func_8094F2C0>
    9ab4:	24070001 	li	a3,1
    9ab8:	3c0d0000 	lui	t5,0x0
    9abc:	91ad0000 	lbu	t5,0(t5)
    9ac0:	44801000 	mtc1	zero,$f2
    9ac4:	29a1000f 	slti	at,t5,15
    9ac8:	1420000c 	bnez	at,9afc <func_80958B0C+0x2b0>
    9acc:	e7a20070 	swc1	$f2,112(sp)
    9ad0:	860e019c 	lh	t6,412(s0)
    9ad4:	3c0142f0 	lui	at,0x42f0
    9ad8:	44813000 	mtc1	at,$f6
    9adc:	25cffff0 	addiu	t7,t6,-16
    9ae0:	31f80007 	andi	t8,t7,0x7
    9ae4:	44989000 	mtc1	t8,$f18
    9ae8:	00000000 	nop
    9aec:	46809120 	cvt.s.w	$f4,$f18
    9af0:	46062202 	mul.s	$f8,$f4,$f6
    9af4:	1000000b 	b	9b24 <func_80958B0C+0x2d8>
    9af8:	e7a80078 	swc1	$f8,120(sp)
    9afc:	8619019c 	lh	t9,412(s0)
    9b00:	3c0142a0 	lui	at,0x42a0
    9b04:	44819000 	mtc1	at,$f18
    9b08:	2728ffe0 	addiu	t0,t9,-32
    9b0c:	3109000f 	andi	t1,t0,0xf
    9b10:	44895000 	mtc1	t1,$f10
    9b14:	00000000 	nop
    9b18:	46805420 	cvt.s.w	$f16,$f10
    9b1c:	46128102 	mul.s	$f4,$f16,$f18
    9b20:	e7a40078 	swc1	$f4,120(sp)
    9b24:	3c014220 	lui	at,0x4220
    9b28:	c7a00078 	lwc1	$f0,120(sp)
    9b2c:	44813000 	mtc1	at,$f6
    9b30:	3c014248 	lui	at,0x4248
    9b34:	44814000 	mtc1	at,$f8
    9b38:	46060000 	add.s	$f0,$f0,$f6
    9b3c:	27a40070 	addiu	a0,sp,112
    9b40:	2605022c 	addiu	a1,s0,556
    9b44:	e7a00048 	swc1	$f0,72(sp)
    9b48:	e7a00054 	swc1	$f0,84(sp)
    9b4c:	46080000 	add.s	$f0,$f0,$f8
    9b50:	0c000000 	jal	0 <func_8094F2C0>
    9b54:	e7a00078 	swc1	$f0,120(sp)
    9b58:	3c0a0000 	lui	t2,0x0
    9b5c:	914a0000 	lbu	t2,0(t2)
    9b60:	44801000 	mtc1	zero,$f2
    9b64:	c7a00078 	lwc1	$f0,120(sp)
    9b68:	2941000f 	slti	at,t2,15
    9b6c:	14200018 	bnez	at,9bd0 <func_80958B0C+0x384>
    9b70:	27a40070 	addiu	a0,sp,112
    9b74:	3c014204 	lui	at,0x4204
    9b78:	c7a00078 	lwc1	$f0,120(sp)
    9b7c:	44815000 	mtc1	at,$f10
    9b80:	27a40070 	addiu	a0,sp,112
    9b84:	460a0001 	sub.s	$f0,$f0,$f10
    9b88:	4602003c 	c.lt.s	$f0,$f2
    9b8c:	e7a00078 	swc1	$f0,120(sp)
    9b90:	45000002 	bc1f	9b9c <func_80958B0C+0x350>
    9b94:	00000000 	nop
    9b98:	e7a20078 	swc1	$f2,120(sp)
    9b9c:	0c000000 	jal	0 <func_8094F2C0>
    9ba0:	26050244 	addiu	a1,s0,580
    9ba4:	3c014204 	lui	at,0x4204
    9ba8:	c7a00078 	lwc1	$f0,120(sp)
    9bac:	44818000 	mtc1	at,$f16
    9bb0:	44801000 	mtc1	zero,$f2
    9bb4:	46100001 	sub.s	$f0,$f0,$f16
    9bb8:	4602003c 	c.lt.s	$f0,$f2
    9bbc:	e7a00078 	swc1	$f0,120(sp)
    9bc0:	45020019 	bc1fl	9c28 <func_80958B0C+0x3dc>
    9bc4:	27a40070 	addiu	a0,sp,112
    9bc8:	10000016 	b	9c24 <func_80958B0C+0x3d8>
    9bcc:	e7a20078 	swc1	$f2,120(sp)
    9bd0:	3c0141b0 	lui	at,0x41b0
    9bd4:	44819000 	mtc1	at,$f18
    9bd8:	00000000 	nop
    9bdc:	46120001 	sub.s	$f0,$f0,$f18
    9be0:	4602003c 	c.lt.s	$f0,$f2
    9be4:	e7a00078 	swc1	$f0,120(sp)
    9be8:	45000002 	bc1f	9bf4 <func_80958B0C+0x3a8>
    9bec:	00000000 	nop
    9bf0:	e7a20078 	swc1	$f2,120(sp)
    9bf4:	0c000000 	jal	0 <func_8094F2C0>
    9bf8:	26050244 	addiu	a1,s0,580
    9bfc:	3c0141b0 	lui	at,0x41b0
    9c00:	c7a00078 	lwc1	$f0,120(sp)
    9c04:	44812000 	mtc1	at,$f4
    9c08:	44801000 	mtc1	zero,$f2
    9c0c:	46040001 	sub.s	$f0,$f0,$f4
    9c10:	4602003c 	c.lt.s	$f0,$f2
    9c14:	e7a00078 	swc1	$f0,120(sp)
    9c18:	45020003 	bc1fl	9c28 <func_80958B0C+0x3dc>
    9c1c:	27a40070 	addiu	a0,sp,112
    9c20:	e7a20078 	swc1	$f2,120(sp)
    9c24:	27a40070 	addiu	a0,sp,112
    9c28:	0c000000 	jal	0 <func_8094F2C0>
    9c2c:	26050238 	addiu	a1,s0,568
    9c30:	26050384 	addiu	a1,s0,900
    9c34:	afa50030 	sw	a1,48(sp)
    9c38:	0c000000 	jal	0 <func_8094F2C0>
    9c3c:	27a40064 	addiu	a0,sp,100
    9c40:	26050378 	addiu	a1,s0,888
    9c44:	afa50034 	sw	a1,52(sp)
    9c48:	0c000000 	jal	0 <func_8094F2C0>
    9c4c:	27a40058 	addiu	a0,sp,88
    9c50:	2605039c 	addiu	a1,s0,924
    9c54:	afa50028 	sw	a1,40(sp)
    9c58:	0c000000 	jal	0 <func_8094F2C0>
    9c5c:	27a4004c 	addiu	a0,sp,76
    9c60:	26070390 	addiu	a3,s0,912
    9c64:	00e02825 	move	a1,a3
    9c68:	afa7002c 	sw	a3,44(sp)
    9c6c:	0c000000 	jal	0 <func_8094F2C0>
    9c70:	27a40040 	addiu	a0,sp,64
    9c74:	8fab0028 	lw	t3,40(sp)
    9c78:	8fa7002c 	lw	a3,44(sp)
    9c7c:	26040338 	addiu	a0,s0,824
    9c80:	8fa50034 	lw	a1,52(sp)
    9c84:	8fa60030 	lw	a2,48(sp)
    9c88:	0c000000 	jal	0 <func_8094F2C0>
    9c8c:	afab0010 	sw	t3,16(sp)
    9c90:	0c000000 	jal	0 <func_8094F2C0>
    9c94:	00000000 	nop
    9c98:	8fbf0024 	lw	ra,36(sp)
    9c9c:	8fb00020 	lw	s0,32(sp)
    9ca0:	27bd0080 	addiu	sp,sp,128
    9ca4:	03e00008 	jr	ra
    9ca8:	00000000 	nop

00009cac <func_80958F6C>:
    9cac:	27bdffe8 	addiu	sp,sp,-24
    9cb0:	24010002 	li	at,2
    9cb4:	afbf0014 	sw	ra,20(sp)
    9cb8:	afa40018 	sw	a0,24(sp)
    9cbc:	10a10009 	beq	a1,at,9ce4 <func_80958F6C+0x38>
    9cc0:	afa70024 	sw	a3,36(sp)
    9cc4:	24010003 	li	at,3
    9cc8:	10a10008 	beq	a1,at,9cec <func_80958F6C+0x40>
    9ccc:	8fae002c 	lw	t6,44(sp)
    9cd0:	24010004 	li	at,4
    9cd4:	50a1000e 	beql	a1,at,9d10 <func_80958F6C+0x64>
    9cd8:	3c013f80 	lui	at,0x3f80
    9cdc:	10000013 	b	9d2c <func_80958F6C+0x80>
    9ce0:	8fbf0014 	lw	ra,20(sp)
    9ce4:	10000010 	b	9d28 <func_80958F6C+0x7c>
    9ce8:	acc00000 	sw	zero,0(a2)
    9cec:	c5cc01d8 	lwc1	$f12,472(t6)
    9cf0:	3c013f80 	lui	at,0x3f80
    9cf4:	44817000 	mtc1	at,$f14
    9cf8:	44066000 	mfc1	a2,$f12
    9cfc:	0c000000 	jal	0 <func_8094F2C0>
    9d00:	24070001 	li	a3,1
    9d04:	10000009 	b	9d2c <func_80958F6C+0x80>
    9d08:	8fbf0014 	lw	ra,20(sp)
    9d0c:	3c013f80 	lui	at,0x3f80
    9d10:	44816000 	mtc1	at,$f12
    9d14:	8faf002c 	lw	t7,44(sp)
    9d18:	24070001 	li	a3,1
    9d1c:	44066000 	mfc1	a2,$f12
    9d20:	0c000000 	jal	0 <func_8094F2C0>
    9d24:	c5ee01dc 	lwc1	$f14,476(t7)
    9d28:	8fbf0014 	lw	ra,20(sp)
    9d2c:	27bd0018 	addiu	sp,sp,24
    9d30:	00001025 	move	v0,zero
    9d34:	03e00008 	jr	ra
    9d38:	00000000 	nop

00009d3c <func_80958FFC>:
    9d3c:	27bdff90 	addiu	sp,sp,-112
    9d40:	afbf003c 	sw	ra,60(sp)
    9d44:	afb10038 	sw	s1,56(sp)
    9d48:	afb00034 	sw	s0,52(sp)
    9d4c:	afa50074 	sw	a1,116(sp)
    9d50:	afa60078 	sw	a2,120(sp)
    9d54:	afa7007c 	sw	a3,124(sp)
    9d58:	8c850000 	lw	a1,0(a0)
    9d5c:	00808825 	move	s1,a0
    9d60:	3c060000 	lui	a2,0x0
    9d64:	24c60000 	addiu	a2,a2,0
    9d68:	27a40058 	addiu	a0,sp,88
    9d6c:	2407118e 	li	a3,4494
    9d70:	0c000000 	jal	0 <func_8094F2C0>
    9d74:	00a08025 	move	s0,a1
    9d78:	8fa20074 	lw	v0,116(sp)
    9d7c:	24010002 	li	at,2
    9d80:	3c0fdb06 	lui	t7,0xdb06
    9d84:	1441003a 	bne	v0,at,9e70 <func_80958FFC+0x134>
    9d88:	35ef0028 	ori	t7,t7,0x28
    9d8c:	8e0202d0 	lw	v0,720(s0)
    9d90:	3c030001 	lui	v1,0x1
    9d94:	00711821 	addu	v1,v1,s1
    9d98:	244e0008 	addiu	t6,v0,8
    9d9c:	ae0e02d0 	sw	t6,720(s0)
    9da0:	ac4f0000 	sw	t7,0(v0)
    9da4:	8c631de4 	lw	v1,7652(v1)
    9da8:	8e240000 	lw	a0,0(s1)
    9dac:	24180010 	li	t8,16
    9db0:	00030823 	negu	at,v1
    9db4:	00015080 	sll	t2,at,0x2
    9db8:	00033880 	sll	a3,v1,0x2
    9dbc:	01415021 	addu	t2,t2,at
    9dc0:	00e33821 	addu	a3,a3,v1
    9dc4:	00073840 	sll	a3,a3,0x1
    9dc8:	314b001f 	andi	t3,t2,0x1f
    9dcc:	24190020 	li	t9,32
    9dd0:	24090001 	li	t1,1
    9dd4:	240c0010 	li	t4,16
    9dd8:	240d0020 	li	t5,32
    9ddc:	afad0028 	sw	t5,40(sp)
    9de0:	afac0024 	sw	t4,36(sp)
    9de4:	afa90018 	sw	t1,24(sp)
    9de8:	afb90014 	sw	t9,20(sp)
    9dec:	afab0020 	sw	t3,32(sp)
    9df0:	30e7001f 	andi	a3,a3,0x1f
    9df4:	afb80010 	sw	t8,16(sp)
    9df8:	afa0001c 	sw	zero,28(sp)
    9dfc:	00002825 	move	a1,zero
    9e00:	00003025 	move	a2,zero
    9e04:	0c000000 	jal	0 <func_8094F2C0>
    9e08:	afa20054 	sw	v0,84(sp)
    9e0c:	8fa80054 	lw	t0,84(sp)
    9e10:	3c0fda38 	lui	t7,0xda38
    9e14:	35ef0003 	ori	t7,t7,0x3
    9e18:	ad020004 	sw	v0,4(t0)
    9e1c:	8e0202d0 	lw	v0,720(s0)
    9e20:	3c050000 	lui	a1,0x0
    9e24:	24a50000 	addiu	a1,a1,0
    9e28:	244e0008 	addiu	t6,v0,8
    9e2c:	ae0e02d0 	sw	t6,720(s0)
    9e30:	ac4f0000 	sw	t7,0(v0)
    9e34:	8e240000 	lw	a0,0(s1)
    9e38:	2406119c 	li	a2,4508
    9e3c:	0c000000 	jal	0 <func_8094F2C0>
    9e40:	afa20050 	sw	v0,80(sp)
    9e44:	8fa30050 	lw	v1,80(sp)
    9e48:	3c090600 	lui	t1,0x600
    9e4c:	25290fa0 	addiu	t1,t1,4000
    9e50:	ac620004 	sw	v0,4(v1)
    9e54:	8e0202d0 	lw	v0,720(s0)
    9e58:	3c19de00 	lui	t9,0xde00
    9e5c:	24580008 	addiu	t8,v0,8
    9e60:	ae1802d0 	sw	t8,720(s0)
    9e64:	ac490004 	sw	t1,4(v0)
    9e68:	1000001c 	b	9edc <func_80958FFC+0x1a0>
    9e6c:	ac590000 	sw	t9,0(v0)
    9e70:	24010003 	li	at,3
    9e74:	10410004 	beq	v0,at,9e88 <func_80958FFC+0x14c>
    9e78:	3c0bda38 	lui	t3,0xda38
    9e7c:	24010004 	li	at,4
    9e80:	14410016 	bne	v0,at,9edc <func_80958FFC+0x1a0>
    9e84:	00000000 	nop
    9e88:	8e0202d0 	lw	v0,720(s0)
    9e8c:	356b0003 	ori	t3,t3,0x3
    9e90:	3c050000 	lui	a1,0x0
    9e94:	244a0008 	addiu	t2,v0,8
    9e98:	ae0a02d0 	sw	t2,720(s0)
    9e9c:	ac4b0000 	sw	t3,0(v0)
    9ea0:	8e240000 	lw	a0,0(s1)
    9ea4:	24a50000 	addiu	a1,a1,0
    9ea8:	240611a0 	li	a2,4512
    9eac:	0c000000 	jal	0 <func_8094F2C0>
    9eb0:	afa20048 	sw	v0,72(sp)
    9eb4:	8fa30048 	lw	v1,72(sp)
    9eb8:	3c0dde00 	lui	t5,0xde00
    9ebc:	ac620004 	sw	v0,4(v1)
    9ec0:	8e0202d0 	lw	v0,720(s0)
    9ec4:	244c0008 	addiu	t4,v0,8
    9ec8:	ae0c02d0 	sw	t4,720(s0)
    9ecc:	ac4d0000 	sw	t5,0(v0)
    9ed0:	8fae0078 	lw	t6,120(sp)
    9ed4:	8dcf0000 	lw	t7,0(t6)
    9ed8:	ac4f0004 	sw	t7,4(v0)
    9edc:	3c060000 	lui	a2,0x0
    9ee0:	24c60000 	addiu	a2,a2,0
    9ee4:	27a40058 	addiu	a0,sp,88
    9ee8:	8e250000 	lw	a1,0(s1)
    9eec:	0c000000 	jal	0 <func_8094F2C0>
    9ef0:	240711a5 	li	a3,4517
    9ef4:	8fbf003c 	lw	ra,60(sp)
    9ef8:	8fb00034 	lw	s0,52(sp)
    9efc:	8fb10038 	lw	s1,56(sp)
    9f00:	03e00008 	jr	ra
    9f04:	27bd0070 	addiu	sp,sp,112

00009f08 <BossVa_Draw>:
    9f08:	27bdff30 	addiu	sp,sp,-208
    9f0c:	3c0f0000 	lui	t7,0x0
    9f10:	afbf003c 	sw	ra,60(sp)
    9f14:	afb10038 	sw	s1,56(sp)
    9f18:	afb00034 	sw	s0,52(sp)
    9f1c:	25ef0000 	addiu	t7,t7,0
    9f20:	8df90000 	lw	t9,0(t7)
    9f24:	27ae00b0 	addiu	t6,sp,176
    9f28:	8df80004 	lw	t8,4(t7)
    9f2c:	add90000 	sw	t9,0(t6)
    9f30:	8df90008 	lw	t9,8(t7)
    9f34:	3c0b0000 	lui	t3,0x0
    9f38:	256b0000 	addiu	t3,t3,0
    9f3c:	add80004 	sw	t8,4(t6)
    9f40:	add90008 	sw	t9,8(t6)
    9f44:	8d6d0000 	lw	t5,0(t3)
    9f48:	27aa00a4 	addiu	t2,sp,164
    9f4c:	8d6c0004 	lw	t4,4(t3)
    9f50:	ad4d0000 	sw	t5,0(t2)
    9f54:	8d6d0008 	lw	t5,8(t3)
    9f58:	3c0f0000 	lui	t7,0x0
    9f5c:	25ef0000 	addiu	t7,t7,0
    9f60:	ad4c0004 	sw	t4,4(t2)
    9f64:	ad4d0008 	sw	t5,8(t2)
    9f68:	8df90000 	lw	t9,0(t7)
    9f6c:	27ae0098 	addiu	t6,sp,152
    9f70:	8df80004 	lw	t8,4(t7)
    9f74:	add90000 	sw	t9,0(t6)
    9f78:	8df90008 	lw	t9,8(t7)
    9f7c:	3c0b0000 	lui	t3,0x0
    9f80:	256b0000 	addiu	t3,t3,0
    9f84:	add80004 	sw	t8,4(t6)
    9f88:	add90008 	sw	t9,8(t6)
    9f8c:	8d6d0000 	lw	t5,0(t3)
    9f90:	27aa008c 	addiu	t2,sp,140
    9f94:	8d6c0004 	lw	t4,4(t3)
    9f98:	ad4d0000 	sw	t5,0(t2)
    9f9c:	8d6d0008 	lw	t5,8(t3)
    9fa0:	3c0f0000 	lui	t7,0x0
    9fa4:	25ef0000 	addiu	t7,t7,0
    9fa8:	ad4c0004 	sw	t4,4(t2)
    9fac:	ad4d0008 	sw	t5,8(t2)
    9fb0:	8df90000 	lw	t9,0(t7)
    9fb4:	27ae0080 	addiu	t6,sp,128
    9fb8:	8df80004 	lw	t8,4(t7)
    9fbc:	add90000 	sw	t9,0(t6)
    9fc0:	8df90008 	lw	t9,8(t7)
    9fc4:	3c0b0000 	lui	t3,0x0
    9fc8:	256b0000 	addiu	t3,t3,0
    9fcc:	add80004 	sw	t8,4(t6)
    9fd0:	add90008 	sw	t9,8(t6)
    9fd4:	8d6d0000 	lw	t5,0(t3)
    9fd8:	27aa0074 	addiu	t2,sp,116
    9fdc:	8d6c0004 	lw	t4,4(t3)
    9fe0:	ad4d0000 	sw	t5,0(t2)
    9fe4:	8d6d0008 	lw	t5,8(t3)
    9fe8:	3c0e0000 	lui	t6,0x0
    9fec:	ad4c0004 	sw	t4,4(t2)
    9ff0:	ad4d0008 	sw	t5,8(t2)
    9ff4:	8dce0000 	lw	t6,0(t6)
    9ff8:	00a08825 	move	s1,a1
    9ffc:	00808025 	move	s0,a0
    a000:	afae0070 	sw	t6,112(sp)
    a004:	8ca50000 	lw	a1,0(a1)
    a008:	3c060000 	lui	a2,0x0
    a00c:	24c60000 	addiu	a2,a2,0
    a010:	27a4005c 	addiu	a0,sp,92
    a014:	240711be 	li	a3,4542
    a018:	0c000000 	jal	0 <func_8094F2C0>
    a01c:	afa5006c 	sw	a1,108(sp)
    a020:	0c000000 	jal	0 <func_8094F2C0>
    a024:	8e240000 	lw	a0,0(s1)
    a028:	0c000000 	jal	0 <func_8094F2C0>
    a02c:	8e240000 	lw	a0,0(s1)
    a030:	860f001c 	lh	t7,28(s0)
    a034:	25f80001 	addiu	t8,t7,1
    a038:	2f010015 	sltiu	at,t8,21
    a03c:	1020009e 	beqz	at,a2b8 <L80959578>
    a040:	0018c080 	sll	t8,t8,0x2
    a044:	3c010000 	lui	at,0x0
    a048:	00380821 	addu	at,at,t8
    a04c:	8c380000 	lw	t8,0(at)
    a050:	03000008 	jr	t8
    a054:	00000000 	nop

0000a058 <L80959318>:
    a058:	3c010001 	lui	at,0x1
    a05c:	02214021 	addu	t0,s1,at
    a060:	85020ac2 	lh	v0,2754(t0)
    a064:	3c010001 	lui	at,0x1
    a068:	00310821 	addu	at,at,s1
    a06c:	10400008 	beqz	v0,a090 <L80959318+0x38>
    a070:	2459015e 	addiu	t9,v0,350
    a074:	a4390ac2 	sh	t9,2754(at)
    a078:	850a0ac2 	lh	t2,2754(t0)
    a07c:	3c010001 	lui	at,0x1
    a080:	00310821 	addu	at,at,s1
    a084:	59400003 	blezl	t2,a094 <L80959318+0x3c>
    a088:	85020ac4 	lh	v0,2756(t0)
    a08c:	a4200ac2 	sh	zero,2754(at)
    a090:	85020ac4 	lh	v0,2756(t0)
    a094:	3c010001 	lui	at,0x1
    a098:	00310821 	addu	at,at,s1
    a09c:	10400008 	beqz	v0,a0c0 <L80959318+0x68>
    a0a0:	244b015e 	addiu	t3,v0,350
    a0a4:	a42b0ac4 	sh	t3,2756(at)
    a0a8:	850c0ac4 	lh	t4,2756(t0)
    a0ac:	3c010001 	lui	at,0x1
    a0b0:	00310821 	addu	at,at,s1
    a0b4:	59800003 	blezl	t4,a0c4 <L80959318+0x6c>
    a0b8:	920d0197 	lbu	t5,407(s0)
    a0bc:	a4200ac4 	sh	zero,2756(at)
    a0c0:	920d0197 	lbu	t5,407(s0)
    a0c4:	3c0fdb06 	lui	t7,0xdb06
    a0c8:	35ef0020 	ori	t7,t7,0x20
    a0cc:	15a000ff 	bnez	t5,a4cc <L8095978C>
    a0d0:	8fa9006c 	lw	t1,108(sp)
    a0d4:	8d2202c0 	lw	v0,704(t1)
    a0d8:	24180008 	li	t8,8
    a0dc:	24190010 	li	t9,16
    a0e0:	244e0008 	addiu	t6,v0,8
    a0e4:	ad2e02c0 	sw	t6,704(t1)
    a0e8:	ac4f0000 	sw	t7,0(v0)
    a0ec:	8e240000 	lw	a0,0(s1)
    a0f0:	240a0001 	li	t2,1
    a0f4:	afaa0018 	sw	t2,24(sp)
    a0f8:	afa0001c 	sw	zero,28(sp)
    a0fc:	afb90014 	sw	t9,20(sp)
    a100:	afb80010 	sw	t8,16(sp)
    a104:	8d0b1de4 	lw	t3,7652(t0)
    a108:	240f0010 	li	t7,16
    a10c:	240e0010 	li	t6,16
    a110:	000b0823 	negu	at,t3
    a114:	00016080 	sll	t4,at,0x2
    a118:	01816021 	addu	t4,t4,at
    a11c:	000c6040 	sll	t4,t4,0x1
    a120:	318d000f 	andi	t5,t4,0xf
    a124:	afad0020 	sw	t5,32(sp)
    a128:	afae0024 	sw	t6,36(sp)
    a12c:	afaf0028 	sw	t7,40(sp)
    a130:	afa8004c 	sw	t0,76(sp)
    a134:	00002825 	move	a1,zero
    a138:	00003025 	move	a2,zero
    a13c:	00003825 	move	a3,zero
    a140:	0c000000 	jal	0 <func_8094F2C0>
    a144:	afa20058 	sw	v0,88(sp)
    a148:	8fa30058 	lw	v1,88(sp)
    a14c:	8fa8004c 	lw	t0,76(sp)
    a150:	3c0adb06 	lui	t2,0xdb06
    a154:	ac620004 	sw	v0,4(v1)
    a158:	8fb8006c 	lw	t8,108(sp)
    a15c:	354a0024 	ori	t2,t2,0x24
    a160:	240b0010 	li	t3,16
    a164:	8f0202c0 	lw	v0,704(t8)
    a168:	240c0020 	li	t4,32
    a16c:	240d0001 	li	t5,1
    a170:	24590008 	addiu	t9,v0,8
    a174:	af1902c0 	sw	t9,704(t8)
    a178:	ac4a0000 	sw	t2,0(v0)
    a17c:	8d031de4 	lw	v1,7652(t0)
    a180:	8e240000 	lw	a0,0(s1)
    a184:	24190010 	li	t9,16
    a188:	00030823 	negu	at,v1
    a18c:	00013880 	sll	a3,at,0x2
    a190:	00017080 	sll	t6,at,0x2
    a194:	01c17021 	addu	t6,t6,at
    a198:	00e13821 	addu	a3,a3,at
    a19c:	00073840 	sll	a3,a3,0x1
    a1a0:	31cf001f 	andi	t7,t6,0x1f
    a1a4:	24180020 	li	t8,32
    a1a8:	afb80028 	sw	t8,40(sp)
    a1ac:	afaf0020 	sw	t7,32(sp)
    a1b0:	30e7001f 	andi	a3,a3,0x1f
    a1b4:	afb90024 	sw	t9,36(sp)
    a1b8:	afa0001c 	sw	zero,28(sp)
    a1bc:	afad0018 	sw	t5,24(sp)
    a1c0:	afac0014 	sw	t4,20(sp)
    a1c4:	afab0010 	sw	t3,16(sp)
    a1c8:	00002825 	move	a1,zero
    a1cc:	00003025 	move	a2,zero
    a1d0:	0c000000 	jal	0 <func_8094F2C0>
    a1d4:	afa20054 	sw	v0,84(sp)
    a1d8:	8fa90054 	lw	t1,84(sp)
    a1dc:	3c0a0000 	lui	t2,0x0
    a1e0:	254a0000 	addiu	t2,t2,0
    a1e4:	ad220004 	sw	v0,4(t1)
    a1e8:	8e06016c 	lw	a2,364(s0)
    a1ec:	8e050150 	lw	a1,336(s0)
    a1f0:	3c070000 	lui	a3,0x0
    a1f4:	24e70000 	addiu	a3,a3,0
    a1f8:	afb00014 	sw	s0,20(sp)
    a1fc:	afaa0010 	sw	t2,16(sp)
    a200:	0c000000 	jal	0 <func_8094F2C0>
    a204:	02202025 	move	a0,s1
    a208:	100000b1 	b	a4d0 <L8095978C+0x4>
    a20c:	8602001c 	lh	v0,28(s0)

0000a210 <L809594D0>:
    a210:	920b0197 	lbu	t3,407(s0)
    a214:	3c0c0000 	lui	t4,0x0
    a218:	258c0000 	addiu	t4,t4,0
    a21c:	156000ab 	bnez	t3,a4cc <L8095978C>
    a220:	02202025 	move	a0,s1
    a224:	8e050150 	lw	a1,336(s0)
    a228:	8e06016c 	lw	a2,364(s0)
    a22c:	9207014e 	lbu	a3,334(s0)
    a230:	3c0d0000 	lui	t5,0x0
    a234:	25ad0000 	addiu	t5,t5,0
    a238:	afad0014 	sw	t5,20(sp)
    a23c:	afb00018 	sw	s0,24(sp)
    a240:	0c000000 	jal	0 <func_8094F2C0>
    a244:	afac0010 	sw	t4,16(sp)
    a248:	100000a1 	b	a4d0 <L8095978C+0x4>
    a24c:	8602001c 	lh	v0,28(s0)

0000a250 <L80959510>:
    a250:	920e0197 	lbu	t6,407(s0)
    a254:	3c0f0000 	lui	t7,0x0
    a258:	25ef0000 	addiu	t7,t7,0
    a25c:	15c0009b 	bnez	t6,a4cc <L8095978C>
    a260:	02202025 	move	a0,s1
    a264:	8e050150 	lw	a1,336(s0)
    a268:	8e06016c 	lw	a2,364(s0)
    a26c:	9207014e 	lbu	a3,334(s0)
    a270:	3c190000 	lui	t9,0x0
    a274:	27390000 	addiu	t9,t9,0
    a278:	afb90014 	sw	t9,20(sp)
    a27c:	afb00018 	sw	s0,24(sp)
    a280:	0c000000 	jal	0 <func_8094F2C0>
    a284:	afaf0010 	sw	t7,16(sp)
    a288:	10000091 	b	a4d0 <L8095978C+0x4>
    a28c:	8602001c 	lh	v0,28(s0)

0000a290 <L80959550>:
    a290:	8e050150 	lw	a1,336(s0)
    a294:	8e06016c 	lw	a2,364(s0)
    a298:	9207014e 	lbu	a3,334(s0)
    a29c:	afa00018 	sw	zero,24(sp)
    a2a0:	afa00014 	sw	zero,20(sp)
    a2a4:	afa00010 	sw	zero,16(sp)
    a2a8:	0c000000 	jal	0 <func_8094F2C0>
    a2ac:	02202025 	move	a0,s1
    a2b0:	10000087 	b	a4d0 <L8095978C+0x4>
    a2b4:	8602001c 	lh	v0,28(s0)

0000a2b8 <L80959578>:
    a2b8:	92180197 	lbu	t8,407(s0)
    a2bc:	3c070000 	lui	a3,0x0
    a2c0:	24e70000 	addiu	a3,a3,0
    a2c4:	17000081 	bnez	t8,a4cc <L8095978C>
    a2c8:	02202025 	move	a0,s1
    a2cc:	3c0a0000 	lui	t2,0x0
    a2d0:	254a0000 	addiu	t2,t2,0
    a2d4:	8e050150 	lw	a1,336(s0)
    a2d8:	8e06016c 	lw	a2,364(s0)
    a2dc:	afb00014 	sw	s0,20(sp)
    a2e0:	0c000000 	jal	0 <func_8094F2C0>
    a2e4:	afaa0010 	sw	t2,16(sp)
    a2e8:	00002025 	move	a0,zero
    a2ec:	0c000000 	jal	0 <func_8094F2C0>
    a2f0:	260502d8 	addiu	a1,s0,728
    a2f4:	3c0b0000 	lui	t3,0x0
    a2f8:	816b0000 	lb	t3,0(t3)
    a2fc:	3c040000 	lui	a0,0x0
    a300:	24840000 	addiu	a0,a0,0
    a304:	2961000d 	slti	at,t3,13
    a308:	5020000b 	beqzl	at,a338 <L80959578+0x80>
    a30c:	8e180118 	lw	t8,280(s0)
    a310:	8e0d0118 	lw	t5,280(s0)
    a314:	27ac00bc 	addiu	t4,sp,188
    a318:	8daf0024 	lw	t7,36(t5)
    a31c:	ad8f0000 	sw	t7,0(t4)
    a320:	8dae0028 	lw	t6,40(t5)
    a324:	ad8e0004 	sw	t6,4(t4)
    a328:	8daf002c 	lw	t7,44(t5)
    a32c:	10000009 	b	a354 <L80959578+0x9c>
    a330:	ad8f0008 	sw	t7,8(t4)
    a334:	8e180118 	lw	t8,280(s0)
    a338:	27b900bc 	addiu	t9,sp,188
    a33c:	8f0b01d8 	lw	t3,472(t8)
    a340:	af2b0000 	sw	t3,0(t9)
    a344:	8f0a01dc 	lw	t2,476(t8)
    a348:	af2a0004 	sw	t2,4(t9)
    a34c:	8f0b01e0 	lw	t3,480(t8)
    a350:	af2b0008 	sw	t3,8(t9)
    a354:	0c000000 	jal	0 <func_8094F2C0>
    a358:	26050208 	addiu	a1,s0,520
    a35c:	0c000000 	jal	0 <func_8094F2C0>
    a360:	00000000 	nop
    a364:	c7ac00bc 	lwc1	$f12,188(sp)
    a368:	c7ae00c0 	lwc1	$f14,192(sp)
    a36c:	8fa600c4 	lw	a2,196(sp)
    a370:	0c000000 	jal	0 <func_8094F2C0>
    a374:	00003825 	move	a3,zero
    a378:	86040030 	lh	a0,48(s0)
    a37c:	86050032 	lh	a1,50(s0)
    a380:	00003025 	move	a2,zero
    a384:	0c000000 	jal	0 <func_8094F2C0>
    a388:	24070001 	li	a3,1
    a38c:	c60401a0 	lwc1	$f4,416(s0)
    a390:	3c013d80 	lui	at,0x3d80
    a394:	44815000 	mtc1	at,$f10
    a398:	e7a4007c 	swc1	$f4,124(sp)
    a39c:	c7a6007c 	lwc1	$f6,124(sp)
    a3a0:	27a400b0 	addiu	a0,sp,176
    a3a4:	260501fc 	addiu	a1,s0,508
    a3a8:	e7a60088 	swc1	$f6,136(sp)
    a3ac:	860c019c 	lh	t4,412(s0)
    a3b0:	c60801a0 	lwc1	$f8,416(s0)
    a3b4:	318d000f 	andi	t5,t4,0xf
    a3b8:	448d9000 	mtc1	t5,$f18
    a3bc:	460a4402 	mul.s	$f16,$f8,$f10
    a3c0:	46809120 	cvt.s.w	$f4,$f18
    a3c4:	46102182 	mul.s	$f6,$f4,$f16
    a3c8:	0c000000 	jal	0 <func_8094F2C0>
    a3cc:	e7a600b8 	swc1	$f6,184(sp)
    a3d0:	26050384 	addiu	a1,s0,900
    a3d4:	afa50048 	sw	a1,72(sp)
    a3d8:	0c000000 	jal	0 <func_8094F2C0>
    a3dc:	27a40098 	addiu	a0,sp,152
    a3e0:	26050378 	addiu	a1,s0,888
    a3e4:	afa5004c 	sw	a1,76(sp)
    a3e8:	0c000000 	jal	0 <func_8094F2C0>
    a3ec:	27a4008c 	addiu	a0,sp,140
    a3f0:	2605039c 	addiu	a1,s0,924
    a3f4:	afa50040 	sw	a1,64(sp)
    a3f8:	0c000000 	jal	0 <func_8094F2C0>
    a3fc:	27a40080 	addiu	a0,sp,128
    a400:	26070390 	addiu	a3,s0,912
    a404:	00e02825 	move	a1,a3
    a408:	afa70044 	sw	a3,68(sp)
    a40c:	0c000000 	jal	0 <func_8094F2C0>
    a410:	27a40074 	addiu	a0,sp,116
    a414:	8fae0040 	lw	t6,64(sp)
    a418:	8fa70044 	lw	a3,68(sp)
    a41c:	26040338 	addiu	a0,s0,824
    a420:	8fa5004c 	lw	a1,76(sp)
    a424:	8fa60048 	lw	a2,72(sp)
    a428:	0c000000 	jal	0 <func_8094F2C0>
    a42c:	afae0010 	sw	t6,16(sp)
    a430:	0c000000 	jal	0 <func_8094F2C0>
    a434:	00000000 	nop
    a438:	8e180024 	lw	t8,36(s0)
    a43c:	27af00bc 	addiu	t7,sp,188
    a440:	3c014110 	lui	at,0x4110
    a444:	adf80000 	sw	t8,0(t7)
    a448:	8e190028 	lw	t9,40(s0)
    a44c:	44815000 	mtc1	at,$f10
    a450:	adf90004 	sw	t9,4(t7)
    a454:	8e18002c 	lw	t8,44(s0)
    a458:	adf80008 	sw	t8,8(t7)
    a45c:	c7a800c0 	lwc1	$f8,192(sp)
    a460:	460a4480 	add.s	$f18,$f8,$f10
    a464:	e7b200c0 	swc1	$f18,192(sp)
    a468:	920a0114 	lbu	t2,276(s0)
    a46c:	51400004 	beqzl	t2,a480 <L80959578+0x1c8>
    a470:	27a400bc 	addiu	a0,sp,188
    a474:	0c000000 	jal	0 <func_8094F2C0>
    a478:	02202025 	move	a0,s1
    a47c:	27a400bc 	addiu	a0,sp,188
    a480:	27a500a4 	addiu	a1,sp,164
    a484:	240600ff 	li	a2,255
    a488:	0c000000 	jal	0 <func_8094F2C0>
    a48c:	02203825 	move	a3,s1
    a490:	920b0114 	lbu	t3,276(s0)
    a494:	3c0c0000 	lui	t4,0x0
    a498:	258c0000 	addiu	t4,t4,0
    a49c:	5160000c 	beqzl	t3,a4d0 <L8095978C+0x4>
    a4a0:	8602001c 	lh	v0,28(s0)
    a4a4:	8d8e0000 	lw	t6,0(t4)
    a4a8:	27a50050 	addiu	a1,sp,80
    a4ac:	02202025 	move	a0,s1
    a4b0:	acae0000 	sw	t6,0(a1)
    a4b4:	96070112 	lhu	a3,274(s0)
    a4b8:	92060114 	lbu	a2,276(s0)
    a4bc:	30e700ff 	andi	a3,a3,0xff
    a4c0:	00073c00 	sll	a3,a3,0x10
    a4c4:	0c000000 	jal	0 <func_8094F2C0>
    a4c8:	00073c03 	sra	a3,a3,0x10

0000a4cc <L8095978C>:
    a4cc:	8602001c 	lh	v0,28(s0)
    a4d0:	2401ffff 	li	at,-1
    a4d4:	3c040000 	lui	a0,0x0
    a4d8:	14410005 	bne	v0,at,a4f0 <L8095978C+0x24>
    a4dc:	24840000 	addiu	a0,a0,0
    a4e0:	0c000000 	jal	0 <func_8094F2C0>
    a4e4:	02202825 	move	a1,s1
    a4e8:	10000007 	b	a508 <L8095978C+0x3c>
    a4ec:	00000000 	nop
    a4f0:	24010013 	li	at,19
    a4f4:	14410004 	bne	v0,at,a508 <L8095978C+0x3c>
    a4f8:	02202025 	move	a0,s1
    a4fc:	3c050000 	lui	a1,0x0
    a500:	0c000000 	jal	0 <func_8094F2C0>
    a504:	84a50000 	lh	a1,0(a1)
    a508:	3c060000 	lui	a2,0x0
    a50c:	24c60000 	addiu	a2,a2,0
    a510:	27a4005c 	addiu	a0,sp,92
    a514:	8e250000 	lw	a1,0(s1)
    a518:	0c000000 	jal	0 <func_8094F2C0>
    a51c:	24071241 	li	a3,4673
    a520:	8fbf003c 	lw	ra,60(sp)
    a524:	8fb00034 	lw	s0,52(sp)
    a528:	8fb10038 	lw	s1,56(sp)
    a52c:	03e00008 	jr	ra
    a530:	27bd00d0 	addiu	sp,sp,208

0000a534 <func_809597F4>:
    a534:	27bdff40 	addiu	sp,sp,-192
    a538:	f7b60020 	sdc1	$f22,32(sp)
    a53c:	afbf004c 	sw	ra,76(sp)
    a540:	afb70048 	sw	s7,72(sp)
    a544:	afb60044 	sw	s6,68(sp)
    a548:	afb50040 	sw	s5,64(sp)
    a54c:	afb4003c 	sw	s4,60(sp)
    a550:	afb30038 	sw	s3,56(sp)
    a554:	afb20034 	sw	s2,52(sp)
    a558:	afb10030 	sw	s1,48(sp)
    a55c:	afb0002c 	sw	s0,44(sp)
    a560:	f7b40018 	sdc1	$f20,24(sp)
    a564:	3c010000 	lui	at,0x0
    a568:	8c8e1c44 	lw	t6,7236(a0)
    a56c:	c4360000 	lwc1	$f22,0(at)
    a570:	3c013f80 	lui	at,0x3f80
    a574:	3c100000 	lui	s0,0x0
    a578:	4481a000 	mtc1	at,$f20
    a57c:	00809025 	move	s2,a0
    a580:	26100000 	addiu	s0,s0,0
    a584:	27b30064 	addiu	s3,sp,100
    a588:	24140002 	li	s4,2
    a58c:	24150001 	li	s5,1
    a590:	24160005 	li	s6,5
    a594:	0000b825 	move	s7,zero
    a598:	afae00b8 	sw	t6,184(sp)
    a59c:	920f0024 	lbu	t7,36(s0)
    a5a0:	51e00237 	beqzl	t7,ae80 <func_809597F4+0x94c>
    a5a4:	26f70001 	addiu	s7,s7,1
    a5a8:	c600000c 	lwc1	$f0,12(s0)
    a5ac:	c6040000 	lwc1	$f4,0(s0)
    a5b0:	c6020010 	lwc1	$f2,16(s0)
    a5b4:	c6080004 	lwc1	$f8,4(s0)
    a5b8:	c60c0014 	lwc1	$f12,20(s0)
    a5bc:	c6100008 	lwc1	$f16,8(s0)
    a5c0:	46002180 	add.s	$f6,$f4,$f0
    a5c4:	c6040018 	lwc1	$f4,24(s0)
    a5c8:	96180026 	lhu	t8,38(s0)
    a5cc:	46024280 	add.s	$f10,$f8,$f2
    a5d0:	c608001c 	lwc1	$f8,28(s0)
    a5d4:	e6060000 	swc1	$f6,0(s0)
    a5d8:	460c8480 	add.s	$f18,$f16,$f12
    a5dc:	c6100020 	lwc1	$f16,32(s0)
    a5e0:	e60a0004 	swc1	$f10,4(s0)
    a5e4:	46040180 	add.s	$f6,$f0,$f4
    a5e8:	e6120008 	swc1	$f18,8(s0)
    a5ec:	92020024 	lbu	v0,36(s0)
    a5f0:	46081280 	add.s	$f10,$f2,$f8
    a5f4:	2719ffff 	addiu	t9,t8,-1
    a5f8:	a6190026 	sh	t9,38(s0)
    a5fc:	46106480 	add.s	$f18,$f12,$f16
    a600:	e606000c 	swc1	$f6,12(s0)
    a604:	e60a0010 	swc1	$f10,16(s0)
    a608:	12a20004 	beq	s5,v0,a61c <func_809597F4+0xe8>
    a60c:	e6120014 	swc1	$f18,20(s0)
    a610:	24010003 	li	at,3
    a614:	54410079 	bnel	v0,at,a7fc <func_809597F4+0x2c8>
    a618:	920d0024 	lbu	t5,36(s0)
    a61c:	0c000000 	jal	0 <func_8094F2C0>
    a620:	8e110054 	lw	s1,84(s0)
    a624:	3c010000 	lui	at,0x0
    a628:	c4240000 	lwc1	$f4,0(at)
    a62c:	8608002e 	lh	t0,46(s0)
    a630:	46040182 	mul.s	$f6,$f0,$f4
    a634:	4600320d 	trunc.w.s	$f8,$f6
    a638:	440c4000 	mfc1	t4,$f8
    a63c:	00000000 	nop
    a640:	010c6821 	addu	t5,t0,t4
    a644:	25ae2000 	addiu	t6,t5,8192
    a648:	0c000000 	jal	0 <func_8094F2C0>
    a64c:	a60e002e 	sh	t6,46(s0)
    a650:	3c010000 	lui	at,0x0
    a654:	c42a0000 	lwc1	$f10,0(at)
    a658:	860f002c 	lh	t7,44(s0)
    a65c:	86020028 	lh	v0,40(s0)
    a660:	460a0402 	mul.s	$f16,$f0,$f10
    a664:	24010004 	li	at,4
    a668:	4600848d 	trunc.w.s	$f18,$f16
    a66c:	440a9000 	mfc1	t2,$f18
    a670:	00000000 	nop
    a674:	01ea5821 	addu	t3,t7,t2
    a678:	25682000 	addiu	t0,t3,8192
    a67c:	12a20003 	beq	s5,v0,a68c <func_809597F4+0x158>
    a680:	a608002c 	sh	t0,44(s0)
    a684:	14410021 	bne	v0,at,a70c <func_809597F4+0x1d8>
    a688:	00000000 	nop
    a68c:	8e250118 	lw	a1,280(s1)
    a690:	26240024 	addiu	a0,s1,36
    a694:	0c000000 	jal	0 <func_8094F2C0>
    a698:	24a501d8 	addiu	a1,a1,472
    a69c:	860c002a 	lh	t4,42(s0)
    a6a0:	01826823 	subu	t5,t4,v0
    a6a4:	a7ad00aa 	sh	t5,170(sp)
    a6a8:	0c000000 	jal	0 <func_8094F2C0>
    a6ac:	86240032 	lh	a0,50(s1)
    a6b0:	c6060048 	lwc1	$f6,72(s0)
    a6b4:	c6240024 	lwc1	$f4,36(s1)
    a6b8:	46003202 	mul.s	$f8,$f6,$f0
    a6bc:	46082281 	sub.s	$f10,$f4,$f8
    a6c0:	e60a0000 	swc1	$f10,0(s0)
    a6c4:	0c000000 	jal	0 <func_8094F2C0>
    a6c8:	86240032 	lh	a0,50(s1)
    a6cc:	c6120048 	lwc1	$f18,72(s0)
    a6d0:	c630002c 	lwc1	$f16,44(s1)
    a6d4:	46009182 	mul.s	$f6,$f18,$f0
    a6d8:	46068101 	sub.s	$f4,$f16,$f6
    a6dc:	e6040008 	swc1	$f4,8(s0)
    a6e0:	87a400aa 	lh	a0,170(sp)
    a6e4:	00042023 	negu	a0,a0
    a6e8:	00042400 	sll	a0,a0,0x10
    a6ec:	0c000000 	jal	0 <func_8094F2C0>
    a6f0:	00042403 	sra	a0,a0,0x10
    a6f4:	c608004c 	lwc1	$f8,76(s0)
    a6f8:	c6320028 	lwc1	$f18,40(s1)
    a6fc:	46004282 	mul.s	$f10,$f8,$f0
    a700:	46125400 	add.s	$f16,$f10,$f18
    a704:	1000002f 	b	a7c4 <func_809597F4+0x290>
    a708:	e6100004 	swc1	$f16,4(s0)
    a70c:	52820004 	beql	s4,v0,a720 <func_809597F4+0x1ec>
    a710:	c6060048 	lwc1	$f6,72(s0)
    a714:	16c2000e 	bne	s6,v0,a750 <func_809597F4+0x21c>
    a718:	3c010000 	lui	at,0x0
    a71c:	c6060048 	lwc1	$f6,72(s0)
    a720:	c6240024 	lwc1	$f4,36(s1)
    a724:	c60a004c 	lwc1	$f10,76(s0)
    a728:	46043200 	add.s	$f8,$f6,$f4
    a72c:	c6060050 	lwc1	$f6,80(s0)
    a730:	e6080000 	swc1	$f8,0(s0)
    a734:	c6320028 	lwc1	$f18,40(s1)
    a738:	46125400 	add.s	$f16,$f10,$f18
    a73c:	e6100004 	swc1	$f16,4(s0)
    a740:	c624002c 	lwc1	$f4,44(s1)
    a744:	46043200 	add.s	$f8,$f6,$f4
    a748:	1000001e 	b	a7c4 <func_809597F4+0x290>
    a74c:	e6080008 	swc1	$f8,8(s0)
    a750:	0c000000 	jal	0 <func_8094F2C0>
    a754:	c42c0000 	lwc1	$f12,0(at)
    a758:	4600028d 	trunc.w.s	$f10,$f0
    a75c:	3c014120 	lui	at,0x4120
    a760:	44816000 	mtc1	at,$f12
    a764:	44185000 	mfc1	t8,$f10
    a768:	0c000000 	jal	0 <func_8094F2C0>
    a76c:	a7b800b6 	sh	t8,182(sp)
    a770:	87a900b6 	lh	t1,182(sp)
    a774:	8fb900b8 	lw	t9,184(sp)
    a778:	3c014170 	lui	at,0x4170
    a77c:	00097880 	sll	t7,t1,0x2
    a780:	01e97823 	subu	t7,t7,t1
    a784:	000f7880 	sll	t7,t7,0x2
    a788:	032f8821 	addu	s1,t9,t7
    a78c:	c6320908 	lwc1	$f18,2312(s1)
    a790:	44816000 	mtc1	at,$f12
    a794:	46120400 	add.s	$f16,$f0,$f18
    a798:	0c000000 	jal	0 <func_8094F2C0>
    a79c:	e6100000 	swc1	$f16,0(s0)
    a7a0:	c626090c 	lwc1	$f6,2316(s1)
    a7a4:	3c014120 	lui	at,0x4120
    a7a8:	44816000 	mtc1	at,$f12
    a7ac:	46060100 	add.s	$f4,$f0,$f6
    a7b0:	0c000000 	jal	0 <func_8094F2C0>
    a7b4:	e6040004 	swc1	$f4,4(s0)
    a7b8:	c6280910 	lwc1	$f8,2320(s1)
    a7bc:	46080280 	add.s	$f10,$f0,$f8
    a7c0:	e60a0008 	swc1	$f10,8(s0)
    a7c4:	960a0026 	lhu	t2,38(s0)
    a7c8:	29410064 	slti	at,t2,100
    a7cc:	5020000b 	beqzl	at,a7fc <func_809597F4+0x2c8>
    a7d0:	920d0024 	lbu	t5,36(s0)
    a7d4:	860b0036 	lh	t3,54(s0)
    a7d8:	2568ffce 	addiu	t0,t3,-50
    a7dc:	a6080036 	sh	t0,54(s0)
    a7e0:	860c0036 	lh	t4,54(s0)
    a7e4:	05830005 	bgezl	t4,a7fc <func_809597F4+0x2c8>
    a7e8:	920d0024 	lbu	t5,36(s0)
    a7ec:	a6000036 	sh	zero,54(s0)
    a7f0:	a6000026 	sh	zero,38(s0)
    a7f4:	a2000024 	sb	zero,36(s0)
    a7f8:	920d0024 	lbu	t5,36(s0)
    a7fc:	568d001a 	bnel	s4,t5,a868 <func_809597F4+0x334>
    a800:	92090024 	lbu	t1,36(s0)
    a804:	0c000000 	jal	0 <func_8094F2C0>
    a808:	00000000 	nop
    a80c:	3c010000 	lui	at,0x0
    a810:	c4320000 	lwc1	$f18,0(at)
    a814:	860e002e 	lh	t6,46(s0)
    a818:	96080026 	lhu	t0,38(s0)
    a81c:	46120402 	mul.s	$f16,$f0,$f18
    a820:	29010064 	slti	at,t0,100
    a824:	4600818d 	trunc.w.s	$f6,$f16
    a828:	440f3000 	mfc1	t7,$f6
    a82c:	00000000 	nop
    a830:	01cf5021 	addu	t2,t6,t7
    a834:	254b4000 	addiu	t3,t2,16384
    a838:	1020000a 	beqz	at,a864 <func_809597F4+0x330>
    a83c:	a60b002e 	sh	t3,46(s0)
    a840:	860c0036 	lh	t4,54(s0)
    a844:	258dffce 	addiu	t5,t4,-50
    a848:	a60d0036 	sh	t5,54(s0)
    a84c:	86180036 	lh	t8,54(s0)
    a850:	07030005 	bgezl	t8,a868 <func_809597F4+0x334>
    a854:	92090024 	lbu	t1,36(s0)
    a858:	a6000036 	sh	zero,54(s0)
    a85c:	a6000026 	sh	zero,38(s0)
    a860:	a2000024 	sb	zero,36(s0)
    a864:	92090024 	lbu	t1,36(s0)
    a868:	24010004 	li	at,4
    a86c:	55210031 	bnel	t1,at,a934 <func_809597F4+0x400>
    a870:	920b0024 	lbu	t3,36(s0)
    a874:	8e020054 	lw	v0,84(s0)
    a878:	0c000000 	jal	0 <func_8094F2C0>
    a87c:	afa200a4 	sw	v0,164(sp)
    a880:	3c010000 	lui	at,0x0
    a884:	c4240000 	lwc1	$f4,0(at)
    a888:	8619002e 	lh	t9,46(s0)
    a88c:	8fa200a4 	lw	v0,164(sp)
    a890:	46040202 	mul.s	$f8,$f0,$f4
    a894:	c6120048 	lwc1	$f18,72(s0)
    a898:	3c01439b 	lui	at,0x439b
    a89c:	860d0028 	lh	t5,40(s0)
    a8a0:	960e0026 	lhu	t6,38(s0)
    a8a4:	25b80001 	addiu	t8,t5,1
    a8a8:	4600428d 	trunc.w.s	$f10,$f8
    a8ac:	44814000 	mtc1	at,$f8
    a8b0:	33090007 	andi	t1,t8,0x7
    a8b4:	29c10064 	slti	at,t6,100
    a8b8:	440b5000 	mfc1	t3,$f10
    a8bc:	00000000 	nop
    a8c0:	032b4021 	addu	t0,t9,t3
    a8c4:	250c24a8 	addiu	t4,t0,9384
    a8c8:	a60c002e 	sh	t4,46(s0)
    a8cc:	c4500024 	lwc1	$f16,36(v0)
    a8d0:	46109180 	add.s	$f6,$f18,$f16
    a8d4:	e6060000 	swc1	$f6,0(s0)
    a8d8:	c4500054 	lwc1	$f16,84(v0)
    a8dc:	c45200bc 	lwc1	$f18,188(v0)
    a8e0:	c4440028 	lwc1	$f4,40(v0)
    a8e4:	46109182 	mul.s	$f6,$f18,$f16
    a8e8:	46082280 	add.s	$f10,$f4,$f8
    a8ec:	c6080050 	lwc1	$f8,80(s0)
    a8f0:	46065100 	add.s	$f4,$f10,$f6
    a8f4:	e6040004 	swc1	$f4,4(s0)
    a8f8:	c452002c 	lwc1	$f18,44(v0)
    a8fc:	a6090028 	sh	t1,40(s0)
    a900:	46124400 	add.s	$f16,$f8,$f18
    a904:	1020000a 	beqz	at,a930 <func_809597F4+0x3fc>
    a908:	e6100008 	swc1	$f16,8(s0)
    a90c:	860f0036 	lh	t7,54(s0)
    a910:	25eaffce 	addiu	t2,t7,-50
    a914:	a60a0036 	sh	t2,54(s0)
    a918:	86190036 	lh	t9,54(s0)
    a91c:	07230005 	bgezl	t9,a934 <func_809597F4+0x400>
    a920:	920b0024 	lbu	t3,36(s0)
    a924:	a6000036 	sh	zero,54(s0)
    a928:	a6000026 	sh	zero,38(s0)
    a92c:	a2000024 	sb	zero,36(s0)
    a930:	920b0024 	lbu	t3,36(s0)
    a934:	56cb000e 	bnel	s6,t3,a970 <func_809597F4+0x43c>
    a938:	920f0024 	lbu	t7,36(s0)
    a93c:	86180036 	lh	t8,54(s0)
    a940:	86080028 	lh	t0,40(s0)
    a944:	2709ffec 	addiu	t1,t8,-20
    a948:	a6090036 	sh	t1,54(s0)
    a94c:	860e0036 	lh	t6,54(s0)
    a950:	250c0001 	addiu	t4,t0,1
    a954:	318d0007 	andi	t5,t4,0x7
    a958:	1dc00004 	bgtz	t6,a96c <func_809597F4+0x438>
    a95c:	a60d0028 	sh	t5,40(s0)
    a960:	a6000036 	sh	zero,54(s0)
    a964:	a6000026 	sh	zero,38(s0)
    a968:	a2000024 	sb	zero,36(s0)
    a96c:	920f0024 	lbu	t7,36(s0)
    a970:	24010006 	li	at,6
    a974:	55e1005c 	bnel	t7,at,aae8 <func_809597F4+0x5b4>
    a978:	92020024 	lbu	v0,36(s0)
    a97c:	860a0028 	lh	t2,40(s0)
    a980:	29410002 	slti	at,t2,2
    a984:	50200042 	beqzl	at,aa90 <func_809597F4+0x55c>
    a988:	96020026 	lhu	v0,38(s0)
    a98c:	8e0b0000 	lw	t3,0(s0)
    a990:	27a60094 	addiu	a2,sp,148
    a994:	3c014080 	lui	at,0x4080
    a998:	accb0000 	sw	t3,0(a2)
    a99c:	8e190004 	lw	t9,4(s0)
    a9a0:	44813000 	mtc1	at,$f6
    a9a4:	264407c0 	addiu	a0,s2,1984
    a9a8:	acd90004 	sw	t9,4(a2)
    a9ac:	8e0b0008 	lw	t3,8(s0)
    a9b0:	27a50090 	addiu	a1,sp,144
    a9b4:	accb0008 	sw	t3,8(a2)
    a9b8:	c60a0010 	lwc1	$f10,16(s0)
    a9bc:	c7a80098 	lwc1	$f8,152(sp)
    a9c0:	46065100 	add.s	$f4,$f10,$f6
    a9c4:	46044481 	sub.s	$f18,$f8,$f4
    a9c8:	0c000000 	jal	0 <func_8094F2C0>
    a9cc:	e7b20098 	swc1	$f18,152(sp)
    a9d0:	8fa80090 	lw	t0,144(sp)
    a9d4:	51000028 	beqzl	t0,aa78 <func_809597F4+0x544>
    a9d8:	96020026 	lhu	v0,38(s0)
    a9dc:	c6100004 	lwc1	$f16,4(s0)
    a9e0:	3c090000 	lui	t1,0x0
    a9e4:	25290000 	addiu	t1,t1,0
    a9e8:	4600803e 	c.le.s	$f16,$f0
    a9ec:	00000000 	nop
    a9f0:	45020021 	bc1fl	aa78 <func_809597F4+0x544>
    a9f4:	96020026 	lhu	v0,38(s0)
    a9f8:	46140280 	add.s	$f10,$f0,$f20
    a9fc:	a6140028 	sh	s4,40(s0)
    aa00:	3c0c0000 	lui	t4,0x0
    aa04:	240d0050 	li	t5,80
    aa08:	e60a0004 	swc1	$f10,4(s0)
    aa0c:	818c0000 	lb	t4,0(t4)
    aa10:	3418ea60 	li	t8,0xea60
    aa14:	29810014 	slti	at,t4,20
    aa18:	50200004 	beqzl	at,aa2c <func_809597F4+0x4f8>
    aa1c:	a6180026 	sh	t8,38(s0)
    aa20:	10000002 	b	aa2c <func_809597F4+0x4f8>
    aa24:	a60d0026 	sh	t5,38(s0)
    aa28:	a6180026 	sh	t8,38(s0)
    aa2c:	8d2f0000 	lw	t7,0(t1)
    aa30:	ae6f0000 	sw	t7,0(s3)
    aa34:	8d2e0004 	lw	t6,4(t1)
    aa38:	8e790000 	lw	t9,0(s3)
    aa3c:	ae6e0004 	sw	t6,4(s3)
    aa40:	8d2f0008 	lw	t7,8(t1)
    aa44:	ae6f0008 	sw	t7,8(s3)
    aa48:	ae19000c 	sw	t9,12(s0)
    aa4c:	8e6a0004 	lw	t2,4(s3)
    aa50:	ae0a0010 	sw	t2,16(s0)
    aa54:	8e790008 	lw	t9,8(s3)
    aa58:	ae190014 	sw	t9,20(s0)
    aa5c:	8e680000 	lw	t0,0(s3)
    aa60:	ae080018 	sw	t0,24(s0)
    aa64:	8e6b0004 	lw	t3,4(s3)
    aa68:	ae0b001c 	sw	t3,28(s0)
    aa6c:	8e680008 	lw	t0,8(s3)
    aa70:	ae080020 	sw	t0,32(s0)
    aa74:	96020026 	lhu	v0,38(s0)
    aa78:	14400017 	bnez	v0,aad8 <func_809597F4+0x5a4>
    aa7c:	00000000 	nop
    aa80:	a2000024 	sb	zero,36(s0)
    aa84:	10000014 	b	aad8 <func_809597F4+0x5a4>
    aa88:	96020026 	lhu	v0,38(s0)
    aa8c:	96020026 	lhu	v0,38(s0)
    aa90:	28410014 	slti	at,v0,20
    aa94:	1020000a 	beqz	at,aac0 <func_809597F4+0x58c>
    aa98:	00401825 	move	v1,v0
    aa9c:	00760019 	multu	v1,s6
    aaa0:	00036880 	sll	t5,v1,0x2
    aaa4:	01a36821 	addu	t5,t5,v1
    aaa8:	000d6840 	sll	t5,t5,0x1
    aaac:	a60d0036 	sh	t5,54(s0)
    aab0:	00006012 	mflo	t4
    aab4:	a60c003e 	sh	t4,62(s0)
    aab8:	10000007 	b	aad8 <func_809597F4+0x5a4>
    aabc:	00000000 	nop
    aac0:	3401c351 	li	at,0xc351
    aac4:	0061082a 	slt	at,v1,at
    aac8:	14200003 	bnez	at,aad8 <func_809597F4+0x5a4>
    aacc:	24580001 	addiu	t8,v0,1
    aad0:	a6180026 	sh	t8,38(s0)
    aad4:	3302ffff 	andi	v0,t8,0xffff
    aad8:	54400003 	bnezl	v0,aae8 <func_809597F4+0x5b4>
    aadc:	92020024 	lbu	v0,36(s0)
    aae0:	a2000024 	sb	zero,36(s0)
    aae4:	92020024 	lbu	v0,36(s0)
    aae8:	24010008 	li	at,8
    aaec:	5441006a 	bnel	v0,at,ac98 <func_809597F4+0x764>
    aaf0:	24010007 	li	at,7
    aaf4:	86020028 	lh	v0,40(s0)
    aaf8:	1440003d 	bnez	v0,abf0 <func_809597F4+0x6bc>
    aafc:	00000000 	nop
    ab00:	8e0e0000 	lw	t6,0(s0)
    ab04:	27a60080 	addiu	a2,sp,128
    ab08:	3c014080 	lui	at,0x4080
    ab0c:	acce0000 	sw	t6,0(a2)
    ab10:	8e090004 	lw	t1,4(s0)
    ab14:	44814000 	mtc1	at,$f8
    ab18:	264407c0 	addiu	a0,s2,1984
    ab1c:	acc90004 	sw	t1,4(a2)
    ab20:	8e0e0008 	lw	t6,8(s0)
    ab24:	27a5007c 	addiu	a1,sp,124
    ab28:	acce0008 	sw	t6,8(a2)
    ab2c:	c6060010 	lwc1	$f6,16(s0)
    ab30:	c7b20084 	lwc1	$f18,132(sp)
    ab34:	46083100 	add.s	$f4,$f6,$f8
    ab38:	46049401 	sub.s	$f16,$f18,$f4
    ab3c:	e7b00084 	swc1	$f16,132(sp)
    ab40:	860f002a 	lh	t7,42(s0)
    ab44:	25ea1770 	addiu	t2,t7,6000
    ab48:	0c000000 	jal	0 <func_8094F2C0>
    ab4c:	a60a002a 	sh	t2,42(s0)
    ab50:	8fb9007c 	lw	t9,124(sp)
    ab54:	53200022 	beqzl	t9,abe0 <func_809597F4+0x6ac>
    ab58:	96190026 	lhu	t9,38(s0)
    ab5c:	c60a0004 	lwc1	$f10,4(s0)
    ab60:	240b001e 	li	t3,30
    ab64:	3c080000 	lui	t0,0x0
    ab68:	4600503e 	c.le.s	$f10,$f0
    ab6c:	00000000 	nop
    ab70:	4502001b 	bc1fl	abe0 <func_809597F4+0x6ac>
    ab74:	96190026 	lhu	t9,38(s0)
    ab78:	46140180 	add.s	$f6,$f0,$f20
    ab7c:	a6150028 	sh	s5,40(s0)
    ab80:	a60b0026 	sh	t3,38(s0)
    ab84:	25080000 	addiu	t0,t0,0
    ab88:	e6060004 	swc1	$f6,4(s0)
    ab8c:	8d0d0000 	lw	t5,0(t0)
    ab90:	240ac000 	li	t2,-16384
    ab94:	ae6d0000 	sw	t5,0(s3)
    ab98:	8d0c0004 	lw	t4,4(t0)
    ab9c:	8e690000 	lw	t1,0(s3)
    aba0:	ae6c0004 	sw	t4,4(s3)
    aba4:	8d0d0008 	lw	t5,8(t0)
    aba8:	ae6d0008 	sw	t5,8(s3)
    abac:	ae09000c 	sw	t1,12(s0)
    abb0:	8e780004 	lw	t8,4(s3)
    abb4:	ae180010 	sw	t8,16(s0)
    abb8:	8e690008 	lw	t1,8(s3)
    abbc:	ae090014 	sw	t1,20(s0)
    abc0:	8e6f0000 	lw	t7,0(s3)
    abc4:	ae0f0018 	sw	t7,24(s0)
    abc8:	8e6e0004 	lw	t6,4(s3)
    abcc:	ae0e001c 	sw	t6,28(s0)
    abd0:	8e6f0008 	lw	t7,8(s3)
    abd4:	a60a002a 	sh	t2,42(s0)
    abd8:	ae0f0020 	sw	t7,32(s0)
    abdc:	96190026 	lhu	t9,38(s0)
    abe0:	57200028 	bnezl	t9,ac84 <func_809597F4+0x750>
    abe4:	c6040048 	lwc1	$f4,72(s0)
    abe8:	10000025 	b	ac80 <func_809597F4+0x74c>
    abec:	a2000024 	sb	zero,36(s0)
    abf0:	16820006 	bne	s4,v0,ac0c <func_809597F4+0x6d8>
    abf4:	26040044 	addiu	a0,s0,68
    abf8:	960b0026 	lhu	t3,38(s0)
    abfc:	55600021 	bnezl	t3,ac84 <func_809597F4+0x750>
    ac00:	c6040048 	lwc1	$f4,72(s0)
    ac04:	1000001e 	b	ac80 <func_809597F4+0x74c>
    ac08:	a2000024 	sb	zero,36(s0)
    ac0c:	44804000 	mtc1	zero,$f8
    ac10:	3c053d99 	lui	a1,0x3d99
    ac14:	4406a000 	mfc1	a2,$f20
    ac18:	4407b000 	mfc1	a3,$f22
    ac1c:	3c010001 	lui	at,0x1
    ac20:	02418821 	addu	s1,s2,at
    ac24:	34a5999a 	ori	a1,a1,0x999a
    ac28:	0c000000 	jal	0 <func_8094F2C0>
    ac2c:	e7a80010 	swc1	$f8,16(sp)
    ac30:	3c010000 	lui	at,0x0
    ac34:	c4320000 	lwc1	$f18,0(at)
    ac38:	3c063f19 	lui	a2,0x3f19
    ac3c:	4407b000 	mfc1	a3,$f22
    ac40:	34c6999a 	ori	a2,a2,0x999a
    ac44:	2604004c 	addiu	a0,s0,76
    ac48:	24050000 	li	a1,0
    ac4c:	0c000000 	jal	0 <func_8094F2C0>
    ac50:	e7b20010 	swc1	$f18,16(sp)
    ac54:	8e281de4 	lw	t0,7652(s1)
    ac58:	26040030 	addiu	a0,s0,48
    ac5c:	2405005f 	li	a1,95
    ac60:	310c0003 	andi	t4,t0,0x3
    ac64:	15800006 	bnez	t4,ac80 <func_809597F4+0x74c>
    ac68:	00153400 	sll	a2,s5,0x10
    ac6c:	00153c00 	sll	a3,s5,0x10
    ac70:	00073c03 	sra	a3,a3,0x10
    ac74:	00063403 	sra	a2,a2,0x10
    ac78:	0c000000 	jal	0 <func_8094F2C0>
    ac7c:	afa00010 	sw	zero,16(sp)
    ac80:	c6040048 	lwc1	$f4,72(s0)
    ac84:	c610004c 	lwc1	$f16,76(s0)
    ac88:	92020024 	lbu	v0,36(s0)
    ac8c:	46102280 	add.s	$f10,$f4,$f16
    ac90:	e60a0048 	swc1	$f10,72(s0)
    ac94:	24010007 	li	at,7
    ac98:	54410079 	bnel	v0,at,ae80 <func_809597F4+0x94c>
    ac9c:	26f70001 	addiu	s7,s7,1
    aca0:	860d002e 	lh	t5,46(s0)
    aca4:	8e110054 	lw	s1,84(s0)
    aca8:	25b8157c 	addiu	t8,t5,5500
    acac:	a618002e 	sh	t8,46(s0)
    acb0:	0c000000 	jal	0 <func_8094F2C0>
    acb4:	8604002e 	lh	a0,46(s0)
    acb8:	3c014248 	lui	at,0x4248
    acbc:	44813000 	mtc1	at,$f6
    acc0:	8e050044 	lw	a1,68(s0)
    acc4:	4406a000 	mfc1	a2,$f20
    acc8:	46060202 	mul.s	$f8,$f0,$f6
    accc:	3c073c23 	lui	a3,0x3c23
    acd0:	34e7d70a 	ori	a3,a3,0xd70a
    acd4:	26040040 	addiu	a0,s0,64
    acd8:	4600448d 	trunc.w.s	$f18,$f8
    acdc:	440a9000 	mfc1	t2,$f18
    ace0:	00000000 	nop
    ace4:	25590050 	addiu	t9,t2,80
    ace8:	a619003e 	sh	t9,62(s0)
    acec:	0c000000 	jal	0 <func_8094F2C0>
    acf0:	e7b60010 	swc1	$f22,16(sp)
    acf4:	c6040048 	lwc1	$f4,72(s0)
    acf8:	c6300024 	lwc1	$f16,36(s1)
    acfc:	c606004c 	lwc1	$f6,76(s0)
    ad00:	86020028 	lh	v0,40(s0)
    ad04:	46102280 	add.s	$f10,$f4,$f16
    ad08:	c6040050 	lwc1	$f4,80(s0)
    ad0c:	e60a0000 	swc1	$f10,0(s0)
    ad10:	c6280028 	lwc1	$f8,40(s1)
    ad14:	46083480 	add.s	$f18,$f6,$f8
    ad18:	e6120004 	swc1	$f18,4(s0)
    ad1c:	c630002c 	lwc1	$f16,44(s1)
    ad20:	46102280 	add.s	$f10,$f4,$f16
    ad24:	10400007 	beqz	v0,ad44 <func_809597F4+0x810>
    ad28:	e60a0008 	swc1	$f10,8(s0)
    ad2c:	5055002e 	beql	v0,s5,ade8 <func_809597F4+0x8b4>
    ad30:	922d0195 	lbu	t5,405(s1)
    ad34:	5054002c 	beql	v0,s4,ade8 <func_809597F4+0x8b4>
    ad38:	922d0195 	lbu	t5,405(s1)
    ad3c:	10000050 	b	ae80 <func_809597F4+0x94c>
    ad40:	26f70001 	addiu	s7,s7,1
    ad44:	960b0026 	lhu	t3,38(s0)
    ad48:	26240024 	addiu	a0,s1,36
    ad4c:	5560004c 	bnezl	t3,ae80 <func_809597F4+0x94c>
    ad50:	26f70001 	addiu	s7,s7,1
    ad54:	0c000000 	jal	0 <func_8094F2C0>
    ad58:	02002825 	move	a1,s0
    ad5c:	a2000024 	sb	zero,36(s0)
    ad60:	3c010000 	lui	at,0x0
    ad64:	c4280000 	lwc1	$f8,0(at)
    ad68:	c6060040 	lwc1	$f6,64(s0)
    ad6c:	00028c00 	sll	s1,v0,0x10
    ad70:	00023400 	sll	a2,v0,0x10
    ad74:	46083482 	mul.s	$f18,$f6,$f8
    ad78:	00118c03 	sra	s1,s1,0x10
    ad7c:	00063403 	sra	a2,a2,0x10
    ad80:	afb50010 	sw	s5,16(sp)
    ad84:	02402025 	move	a0,s2
    ad88:	02002825 	move	a1,s0
    ad8c:	4600910d 	trunc.w.s	$f4,$f18
    ad90:	44072000 	mfc1	a3,$f4
    ad94:	00000000 	nop
    ad98:	00073c00 	sll	a3,a3,0x10
    ad9c:	0c000000 	jal	0 <func_8094F2C0>
    ada0:	00073c03 	sra	a3,a3,0x10
    ada4:	3c010000 	lui	at,0x0
    ada8:	c42a0000 	lwc1	$f10,0(at)
    adac:	c6100040 	lwc1	$f16,64(s0)
    adb0:	00113400 	sll	a2,s1,0x10
    adb4:	00063403 	sra	a2,a2,0x10
    adb8:	460a8182 	mul.s	$f6,$f16,$f10
    adbc:	02402025 	move	a0,s2
    adc0:	02002825 	move	a1,s0
    adc4:	4600320d 	trunc.w.s	$f8,$f6
    adc8:	44074000 	mfc1	a3,$f8
    adcc:	00000000 	nop
    add0:	00073c00 	sll	a3,a3,0x10
    add4:	0c000000 	jal	0 <func_8094F2C0>
    add8:	00073c03 	sra	a3,a3,0x10
    addc:	10000028 	b	ae80 <func_809597F4+0x94c>
    ade0:	26f70001 	addiu	s7,s7,1
    ade4:	922d0195 	lbu	t5,405(s1)
    ade8:	26240024 	addiu	a0,s1,36
    adec:	02002825 	move	a1,s0
    adf0:	51a00023 	beqzl	t5,ae80 <func_809597F4+0x94c>
    adf4:	26f70001 	addiu	s7,s7,1
    adf8:	0c000000 	jal	0 <func_8094F2C0>
    adfc:	a2000024 	sb	zero,36(s0)
    ae00:	3c010000 	lui	at,0x0
    ae04:	c4240000 	lwc1	$f4,0(at)
    ae08:	c6120040 	lwc1	$f18,64(s0)
    ae0c:	00028c00 	sll	s1,v0,0x10
    ae10:	00023400 	sll	a2,v0,0x10
    ae14:	46049402 	mul.s	$f16,$f18,$f4
    ae18:	00118c03 	sra	s1,s1,0x10
    ae1c:	00063403 	sra	a2,a2,0x10
    ae20:	afb50010 	sw	s5,16(sp)
    ae24:	02402025 	move	a0,s2
    ae28:	02002825 	move	a1,s0
    ae2c:	4600828d 	trunc.w.s	$f10,$f16
    ae30:	44075000 	mfc1	a3,$f10
    ae34:	00000000 	nop
    ae38:	00073c00 	sll	a3,a3,0x10
    ae3c:	0c000000 	jal	0 <func_8094F2C0>
    ae40:	00073c03 	sra	a3,a3,0x10
    ae44:	3c010000 	lui	at,0x0
    ae48:	c4280000 	lwc1	$f8,0(at)
    ae4c:	c6060040 	lwc1	$f6,64(s0)
    ae50:	00113400 	sll	a2,s1,0x10
    ae54:	00063403 	sra	a2,a2,0x10
    ae58:	46083482 	mul.s	$f18,$f6,$f8
    ae5c:	02402025 	move	a0,s2
    ae60:	02002825 	move	a1,s0
    ae64:	4600910d 	trunc.w.s	$f4,$f18
    ae68:	44072000 	mfc1	a3,$f4
    ae6c:	00000000 	nop
    ae70:	00073c00 	sll	a3,a3,0x10
    ae74:	0c000000 	jal	0 <func_8094F2C0>
    ae78:	00073c03 	sra	a3,a3,0x10
    ae7c:	26f70001 	addiu	s7,s7,1
    ae80:	0017bc00 	sll	s7,s7,0x10
    ae84:	0017bc03 	sra	s7,s7,0x10
    ae88:	2ae10190 	slti	at,s7,400
    ae8c:	1420fdc3 	bnez	at,a59c <func_809597F4+0x68>
    ae90:	26100058 	addiu	s0,s0,88
    ae94:	8fbf004c 	lw	ra,76(sp)
    ae98:	d7b40018 	ldc1	$f20,24(sp)
    ae9c:	d7b60020 	ldc1	$f22,32(sp)
    aea0:	8fb0002c 	lw	s0,44(sp)
    aea4:	8fb10030 	lw	s1,48(sp)
    aea8:	8fb20034 	lw	s2,52(sp)
    aeac:	8fb30038 	lw	s3,56(sp)
    aeb0:	8fb4003c 	lw	s4,60(sp)
    aeb4:	8fb50040 	lw	s5,64(sp)
    aeb8:	8fb60044 	lw	s6,68(sp)
    aebc:	8fb70048 	lw	s7,72(sp)
    aec0:	03e00008 	jr	ra
    aec4:	27bd00c0 	addiu	sp,sp,192

0000aec8 <func_8095A188>:
    aec8:	27bdfeb8 	addiu	sp,sp,-328
    aecc:	afbf0044 	sw	ra,68(sp)
    aed0:	afbe0040 	sw	s8,64(sp)
    aed4:	afb7003c 	sw	s7,60(sp)
    aed8:	afb60038 	sw	s6,56(sp)
    aedc:	afb50034 	sw	s5,52(sp)
    aee0:	afb40030 	sw	s4,48(sp)
    aee4:	afb3002c 	sw	s3,44(sp)
    aee8:	afb20028 	sw	s2,40(sp)
    aeec:	afb10024 	sw	s1,36(sp)
    aef0:	afb00020 	sw	s0,32(sp)
    aef4:	f7b40018 	sdc1	$f20,24(sp)
    aef8:	8cb10000 	lw	s1,0(a1)
    aefc:	00808025 	move	s0,a0
    af00:	afa40138 	sw	a0,312(sp)
    af04:	00a0b025 	move	s6,a1
    af08:	00a02025 	move	a0,a1
    af0c:	3c050000 	lui	a1,0x0
    af10:	0000a025 	move	s4,zero
    af14:	0c000000 	jal	0 <func_8094F2C0>
    af18:	84a50000 	lh	a1,0(a1)
    af1c:	3c060000 	lui	a2,0x0
    af20:	afa20134 	sw	v0,308(sp)
    af24:	24c60000 	addiu	a2,a2,0
    af28:	27a40120 	addiu	a0,sp,288
    af2c:	02202825 	move	a1,s1
    af30:	0c000000 	jal	0 <func_8094F2C0>
    af34:	24071359 	li	a3,4953
    af38:	3c013f80 	lui	at,0x3f80
    af3c:	3c170000 	lui	s7,0x0
    af40:	4481a000 	mtc1	at,$f20
    af44:	26f70000 	addiu	s7,s7,0
    af48:	00009825 	move	s3,zero
    af4c:	3c1efb00 	lui	s8,0xfb00
    af50:	3c15de00 	lui	s5,0xde00
    af54:	920e0024 	lbu	t6,36(s0)
    af58:	24010001 	li	at,1
    af5c:	3c0f0601 	lui	t7,0x601
    af60:	15c10053 	bne	t6,at,b0b0 <func_8095A188+0x1e8>
    af64:	25ef5710 	addiu	t7,t7,22288
    af68:	3c010001 	lui	at,0x1
    af6c:	34211da0 	ori	at,at,0x1da0
    af70:	02c19021 	addu	s2,s6,at
    af74:	16800015 	bnez	s4,afcc <func_8095A188+0x104>
    af78:	afaf0050 	sw	t7,80(sp)
    af7c:	3c180601 	lui	t8,0x601
    af80:	271856a0 	addiu	t8,t8,22176
    af84:	8ec40000 	lw	a0,0(s6)
    af88:	0c000000 	jal	0 <func_8094F2C0>
    af8c:	afb80058 	sw	t8,88(sp)
    af90:	8e2202d0 	lw	v0,720(s1)
    af94:	3c088282 	lui	t0,0x8282
    af98:	35081e00 	ori	t0,t0,0x1e00
    af9c:	24590008 	addiu	t9,v0,8
    afa0:	ae3902d0 	sw	t9,720(s1)
    afa4:	ac480004 	sw	t0,4(v0)
    afa8:	ac5e0000 	sw	s8,0(v0)
    afac:	8e2202d0 	lw	v0,720(s1)
    afb0:	26940001 	addiu	s4,s4,1
    afb4:	329400ff 	andi	s4,s4,0xff
    afb8:	24490008 	addiu	t1,v0,8
    afbc:	ae2902d0 	sw	t1,720(s1)
    afc0:	ac550000 	sw	s5,0(v0)
    afc4:	8faa0058 	lw	t2,88(sp)
    afc8:	ac4a0004 	sw	t2,4(v0)
    afcc:	8e2202d0 	lw	v0,720(s1)
    afd0:	3c0cfa00 	lui	t4,0xfa00
    afd4:	3c01e6e6 	lui	at,0xe6e6
    afd8:	244b0008 	addiu	t3,v0,8
    afdc:	ae2b02d0 	sw	t3,720(s1)
    afe0:	ac4c0000 	sw	t4,0(v0)
    afe4:	860d0036 	lh	t5,54(s0)
    afe8:	3421e600 	ori	at,at,0xe600
    afec:	00003825 	move	a3,zero
    aff0:	31ae00ff 	andi	t6,t5,0xff
    aff4:	01c17825 	or	t7,t6,at
    aff8:	ac4f0004 	sw	t7,4(v0)
    affc:	8e060008 	lw	a2,8(s0)
    b000:	c60e0004 	lwc1	$f14,4(s0)
    b004:	0c000000 	jal	0 <func_8094F2C0>
    b008:	c60c0000 	lwc1	$f12,0(s0)
    b00c:	0c000000 	jal	0 <func_8094F2C0>
    b010:	02402025 	move	a0,s2
    b014:	8618002e 	lh	t8,46(s0)
    b018:	3c014700 	lui	at,0x4700
    b01c:	44814000 	mtc1	at,$f8
    b020:	44982000 	mtc1	t8,$f4
    b024:	3c010000 	lui	at,0x0
    b028:	c4300000 	lwc1	$f16,0(at)
    b02c:	468021a0 	cvt.s.w	$f6,$f4
    b030:	24050001 	li	a1,1
    b034:	46083283 	div.s	$f10,$f6,$f8
    b038:	46105302 	mul.s	$f12,$f10,$f16
    b03c:	0c000000 	jal	0 <func_8094F2C0>
    b040:	00000000 	nop
    b044:	3c010000 	lui	at,0x0
    b048:	c4240000 	lwc1	$f4,0(at)
    b04c:	c6120040 	lwc1	$f18,64(s0)
    b050:	4406a000 	mfc1	a2,$f20
    b054:	24070001 	li	a3,1
    b058:	46049302 	mul.s	$f12,$f18,$f4
    b05c:	0c000000 	jal	0 <func_8094F2C0>
    b060:	46006386 	mov.s	$f14,$f12
    b064:	8e2202d0 	lw	v0,720(s1)
    b068:	3c08da38 	lui	t0,0xda38
    b06c:	35080003 	ori	t0,t0,0x3
    b070:	24590008 	addiu	t9,v0,8
    b074:	ae3902d0 	sw	t9,720(s1)
    b078:	ac480000 	sw	t0,0(v0)
    b07c:	02202025 	move	a0,s1
    b080:	02e02825 	move	a1,s7
    b084:	24061370 	li	a2,4976
    b088:	0c000000 	jal	0 <func_8094F2C0>
    b08c:	afa20110 	sw	v0,272(sp)
    b090:	8fa30110 	lw	v1,272(sp)
    b094:	ac620004 	sw	v0,4(v1)
    b098:	8e2202d0 	lw	v0,720(s1)
    b09c:	24490008 	addiu	t1,v0,8
    b0a0:	ae2902d0 	sw	t1,720(s1)
    b0a4:	ac550000 	sw	s5,0(v0)
    b0a8:	8faa0050 	lw	t2,80(sp)
    b0ac:	ac4a0004 	sw	t2,4(v0)
    b0b0:	26730001 	addiu	s3,s3,1
    b0b4:	00139c00 	sll	s3,s3,0x10
    b0b8:	00139c03 	sra	s3,s3,0x10
    b0bc:	2a610190 	slti	at,s3,400
    b0c0:	1420ffa4 	bnez	at,af54 <func_8095A188+0x8c>
    b0c4:	26100058 	addiu	s0,s0,88
    b0c8:	0000a025 	move	s4,zero
    b0cc:	8fb00138 	lw	s0,312(sp)
    b0d0:	00009825 	move	s3,zero
    b0d4:	3c17e700 	lui	s7,0xe700
    b0d8:	920b0024 	lbu	t3,36(s0)
    b0dc:	24010004 	li	at,4
    b0e0:	3c0c0601 	lui	t4,0x601
    b0e4:	15610086 	bne	t3,at,b300 <func_8095A188+0x438>
    b0e8:	258c1768 	addiu	t4,t4,5992
    b0ec:	3c010001 	lui	at,0x1
    b0f0:	34211da0 	ori	at,at,0x1da0
    b0f4:	02c19021 	addu	s2,s6,at
    b0f8:	1680000e 	bnez	s4,b134 <func_8095A188+0x26c>
    b0fc:	afac0050 	sw	t4,80(sp)
    b100:	3c0d0601 	lui	t5,0x601
    b104:	25ad1738 	addiu	t5,t5,5944
    b108:	8ec40000 	lw	a0,0(s6)
    b10c:	0c000000 	jal	0 <func_8094F2C0>
    b110:	afad0058 	sw	t5,88(sp)
    b114:	8e2202d0 	lw	v0,720(s1)
    b118:	26940001 	addiu	s4,s4,1
    b11c:	329400ff 	andi	s4,s4,0xff
    b120:	244e0008 	addiu	t6,v0,8
    b124:	ae2e02d0 	sw	t6,720(s1)
    b128:	ac550000 	sw	s5,0(v0)
    b12c:	8faf0058 	lw	t7,88(sp)
    b130:	ac4f0004 	sw	t7,4(v0)
    b134:	c60c0000 	lwc1	$f12,0(s0)
    b138:	c60e0004 	lwc1	$f14,4(s0)
    b13c:	8e060008 	lw	a2,8(s0)
    b140:	0c000000 	jal	0 <func_8094F2C0>
    b144:	00003825 	move	a3,zero
    b148:	0c000000 	jal	0 <func_8094F2C0>
    b14c:	02402025 	move	a0,s2
    b150:	c60c0040 	lwc1	$f12,64(s0)
    b154:	24070001 	li	a3,1
    b158:	44066000 	mfc1	a2,$f12
    b15c:	0c000000 	jal	0 <func_8094F2C0>
    b160:	46006386 	mov.s	$f14,$f12
    b164:	8618002e 	lh	t8,46(s0)
    b168:	3c014700 	lui	at,0x4700
    b16c:	44815000 	mtc1	at,$f10
    b170:	44983000 	mtc1	t8,$f6
    b174:	3c010000 	lui	at,0x0
    b178:	c4320000 	lwc1	$f18,0(at)
    b17c:	46803220 	cvt.s.w	$f8,$f6
    b180:	24050001 	li	a1,1
    b184:	460a4403 	div.s	$f16,$f8,$f10
    b188:	46128302 	mul.s	$f12,$f16,$f18
    b18c:	0c000000 	jal	0 <func_8094F2C0>
    b190:	00000000 	nop
    b194:	8e2202d0 	lw	v0,720(s1)
    b198:	3c08da38 	lui	t0,0xda38
    b19c:	35080003 	ori	t0,t0,0x3
    b1a0:	24590008 	addiu	t9,v0,8
    b1a4:	ae3902d0 	sw	t9,720(s1)
    b1a8:	3c050000 	lui	a1,0x0
    b1ac:	ac480000 	sw	t0,0(v0)
    b1b0:	24a50000 	addiu	a1,a1,0
    b1b4:	02202025 	move	a0,s1
    b1b8:	2406138a 	li	a2,5002
    b1bc:	0c000000 	jal	0 <func_8094F2C0>
    b1c0:	afa20104 	sw	v0,260(sp)
    b1c4:	8fa30104 	lw	v1,260(sp)
    b1c8:	3c0bdb06 	lui	t3,0xdb06
    b1cc:	356b0020 	ori	t3,t3,0x20
    b1d0:	ac620004 	sw	v0,4(v1)
    b1d4:	8e2202d0 	lw	v0,720(s1)
    b1d8:	3c040000 	lui	a0,0x0
    b1dc:	3c080000 	lui	t0,0x0
    b1e0:	24490008 	addiu	t1,v0,8
    b1e4:	ae2902d0 	sw	t1,720(s1)
    b1e8:	ac400004 	sw	zero,4(v0)
    b1ec:	ac570000 	sw	s7,0(v0)
    b1f0:	8e2202d0 	lw	v0,720(s1)
    b1f4:	3c0100ff 	lui	at,0xff
    b1f8:	3421ffff 	ori	at,at,0xffff
    b1fc:	244a0008 	addiu	t2,v0,8
    b200:	ae2a02d0 	sw	t2,720(s1)
    b204:	ac4b0000 	sw	t3,0(v0)
    b208:	860c0028 	lh	t4,40(s0)
    b20c:	000c6880 	sll	t5,t4,0x2
    b210:	008d2021 	addu	a0,a0,t5
    b214:	8c840000 	lw	a0,0(a0)
    b218:	3c0cfa00 	lui	t4,0xfa00
    b21c:	00047900 	sll	t7,a0,0x4
    b220:	000fc702 	srl	t8,t7,0x1c
    b224:	0018c880 	sll	t9,t8,0x2
    b228:	01194021 	addu	t0,t0,t9
    b22c:	8d080000 	lw	t0,0(t0)
    b230:	00817024 	and	t6,a0,at
    b234:	3c018000 	lui	at,0x8000
    b238:	01c84821 	addu	t1,t6,t0
    b23c:	01215021 	addu	t2,t1,at
    b240:	ac4a0004 	sw	t2,4(v0)
    b244:	8e2202d0 	lw	v0,720(s1)
    b248:	244b0008 	addiu	t3,v0,8
    b24c:	ae2b02d0 	sw	t3,720(s1)
    b250:	ac4c0000 	sw	t4,0(v0)
    b254:	860d0036 	lh	t5,54(s0)
    b258:	86090032 	lh	t1,50(s0)
    b25c:	86190030 	lh	t9,48(s0)
    b260:	31af00ff 	andi	t7,t5,0xff
    b264:	860d0034 	lh	t5,52(s0)
    b268:	312a00ff 	andi	t2,t1,0xff
    b26c:	00197600 	sll	t6,t9,0x18
    b270:	01ee4025 	or	t0,t7,t6
    b274:	000a5c00 	sll	t3,t2,0x10
    b278:	31b800ff 	andi	t8,t5,0xff
    b27c:	0018ca00 	sll	t9,t8,0x8
    b280:	010b6025 	or	t4,t0,t3
    b284:	01997825 	or	t7,t4,t9
    b288:	ac4f0004 	sw	t7,4(v0)
    b28c:	8e2202d0 	lw	v0,720(s1)
    b290:	244e0008 	addiu	t6,v0,8
    b294:	ae2e02d0 	sw	t6,720(s1)
    b298:	ac400004 	sw	zero,4(v0)
    b29c:	ac570000 	sw	s7,0(v0)
    b2a0:	8e2202d0 	lw	v0,720(s1)
    b2a4:	24490008 	addiu	t1,v0,8
    b2a8:	ae2902d0 	sw	t1,720(s1)
    b2ac:	ac5e0000 	sw	s8,0(v0)
    b2b0:	860a003e 	lh	t2,62(s0)
    b2b4:	8619003a 	lh	t9,58(s0)
    b2b8:	860d0038 	lh	t5,56(s0)
    b2bc:	314800ff 	andi	t0,t2,0xff
    b2c0:	860a003c 	lh	t2,60(s0)
    b2c4:	332f00ff 	andi	t7,t9,0xff
    b2c8:	000dc600 	sll	t8,t5,0x18
    b2cc:	01186025 	or	t4,t0,t8
    b2d0:	000f7400 	sll	t6,t7,0x10
    b2d4:	314b00ff 	andi	t3,t2,0xff
    b2d8:	000b6a00 	sll	t5,t3,0x8
    b2dc:	018e4825 	or	t1,t4,t6
    b2e0:	012d4025 	or	t0,t1,t5
    b2e4:	ac480004 	sw	t0,4(v0)
    b2e8:	8e2202d0 	lw	v0,720(s1)
    b2ec:	24580008 	addiu	t8,v0,8
    b2f0:	ae3802d0 	sw	t8,720(s1)
    b2f4:	ac550000 	sw	s5,0(v0)
    b2f8:	8fb90050 	lw	t9,80(sp)
    b2fc:	ac590004 	sw	t9,4(v0)
    b300:	26730001 	addiu	s3,s3,1
    b304:	00139c00 	sll	s3,s3,0x10
    b308:	00139c03 	sra	s3,s3,0x10
    b30c:	2a610190 	slti	at,s3,400
    b310:	1420ff71 	bnez	at,b0d8 <func_8095A188+0x210>
    b314:	26100058 	addiu	s0,s0,88
    b318:	0000a025 	move	s4,zero
    b31c:	8fb00138 	lw	s0,312(sp)
    b320:	00009825 	move	s3,zero
    b324:	920f0024 	lbu	t7,36(s0)
    b328:	24010006 	li	at,6
    b32c:	3c120601 	lui	s2,0x601
    b330:	55e10072 	bnel	t7,at,b4fc <func_8095A188+0x634>
    b334:	26730001 	addiu	s3,s3,1
    b338:	16800028 	bnez	s4,b3dc <func_8095A188+0x514>
    b33c:	26529468 	addiu	s2,s2,-27544
    b340:	3c020405 	lui	v0,0x405
    b344:	24425db0 	addiu	v0,v0,23984
    b348:	00027100 	sll	t6,v0,0x4
    b34c:	000e5702 	srl	t2,t6,0x1c
    b350:	3c090000 	lui	t1,0x0
    b354:	3c0100ff 	lui	at,0xff
    b358:	3421ffff 	ori	at,at,0xffff
    b35c:	25290000 	addiu	t1,t1,0
    b360:	000a5880 	sll	t3,t2,0x2
    b364:	8ec40000 	lw	a0,0(s6)
    b368:	3c0c0601 	lui	t4,0x601
    b36c:	258c9430 	addiu	t4,t4,-27600
    b370:	01696821 	addu	t5,t3,t1
    b374:	00414024 	and	t0,v0,at
    b378:	afa8004c 	sw	t0,76(sp)
    b37c:	afad0050 	sw	t5,80(sp)
    b380:	0c000000 	jal	0 <func_8094F2C0>
    b384:	afac0058 	sw	t4,88(sp)
    b388:	8e2202d0 	lw	v0,720(s1)
    b38c:	3c0cdb06 	lui	t4,0xdb06
    b390:	358c0020 	ori	t4,t4,0x20
    b394:	24580008 	addiu	t8,v0,8
    b398:	ae3802d0 	sw	t8,720(s1)
    b39c:	ac550000 	sw	s5,0(v0)
    b3a0:	8fb90058 	lw	t9,88(sp)
    b3a4:	3c018000 	lui	at,0x8000
    b3a8:	26940001 	addiu	s4,s4,1
    b3ac:	ac590004 	sw	t9,4(v0)
    b3b0:	8e2202d0 	lw	v0,720(s1)
    b3b4:	329400ff 	andi	s4,s4,0xff
    b3b8:	244f0008 	addiu	t7,v0,8
    b3bc:	ae2f02d0 	sw	t7,720(s1)
    b3c0:	ac4c0000 	sw	t4,0(v0)
    b3c4:	8fae0050 	lw	t6,80(sp)
    b3c8:	8fab004c 	lw	t3,76(sp)
    b3cc:	8dca0000 	lw	t2,0(t6)
    b3d0:	014b4821 	addu	t1,t2,t3
    b3d4:	01216821 	addu	t5,t1,at
    b3d8:	ac4d0004 	sw	t5,4(v0)
    b3dc:	8e2202d0 	lw	v0,720(s1)
    b3e0:	3c010064 	lui	at,0x64
    b3e4:	3c0afa00 	lui	t2,0xfa00
    b3e8:	24480008 	addiu	t0,v0,8
    b3ec:	ae2802d0 	sw	t0,720(s1)
    b3f0:	ac400004 	sw	zero,4(v0)
    b3f4:	ac570000 	sw	s7,0(v0)
    b3f8:	8e2202d0 	lw	v0,720(s1)
    b3fc:	00003825 	move	a3,zero
    b400:	24580008 	addiu	t8,v0,8
    b404:	ae3802d0 	sw	t8,720(s1)
    b408:	ac5e0000 	sw	s8,0(v0)
    b40c:	8619003e 	lh	t9,62(s0)
    b410:	332f00ff 	andi	t7,t9,0xff
    b414:	01e16025 	or	t4,t7,at
    b418:	ac4c0004 	sw	t4,4(v0)
    b41c:	8e2202d0 	lw	v0,720(s1)
    b420:	3c010096 	lui	at,0x96
    b424:	244e0008 	addiu	t6,v0,8
    b428:	ae2e02d0 	sw	t6,720(s1)
    b42c:	ac4a0000 	sw	t2,0(v0)
    b430:	860b0036 	lh	t3,54(s0)
    b434:	316900ff 	andi	t1,t3,0xff
    b438:	01216825 	or	t5,t1,at
    b43c:	ac4d0004 	sw	t5,4(v0)
    b440:	8e060008 	lw	a2,8(s0)
    b444:	c60e0004 	lwc1	$f14,4(s0)
    b448:	0c000000 	jal	0 <func_8094F2C0>
    b44c:	c60c0000 	lwc1	$f12,0(s0)
    b450:	86080028 	lh	t0,40(s0)
    b454:	24010002 	li	at,2
    b458:	24050001 	li	a1,1
    b45c:	15010005 	bne	t0,at,b474 <func_8095A188+0x5ac>
    b460:	3c010000 	lui	at,0x0
    b464:	0c000000 	jal	0 <func_8094F2C0>
    b468:	c42c0000 	lwc1	$f12,0(at)
    b46c:	10000006 	b	b488 <func_8095A188+0x5c0>
    b470:	c60c0040 	lwc1	$f12,64(s0)
    b474:	3c010001 	lui	at,0x1
    b478:	34211da0 	ori	at,at,0x1da0
    b47c:	0c000000 	jal	0 <func_8094F2C0>
    b480:	02c12021 	addu	a0,s6,at
    b484:	c60c0040 	lwc1	$f12,64(s0)
    b488:	4406a000 	mfc1	a2,$f20
    b48c:	24070001 	li	a3,1
    b490:	0c000000 	jal	0 <func_8094F2C0>
    b494:	46006386 	mov.s	$f14,$f12
    b498:	8e2202d0 	lw	v0,720(s1)
    b49c:	3c0fda38 	lui	t7,0xda38
    b4a0:	35ef0003 	ori	t7,t7,0x3
    b4a4:	24580008 	addiu	t8,v0,8
    b4a8:	ae3802d0 	sw	t8,720(s1)
    b4ac:	ac570000 	sw	s7,0(v0)
    b4b0:	ac400004 	sw	zero,4(v0)
    b4b4:	8e2202d0 	lw	v0,720(s1)
    b4b8:	3c050000 	lui	a1,0x0
    b4bc:	24a50000 	addiu	a1,a1,0
    b4c0:	24590008 	addiu	t9,v0,8
    b4c4:	ae3902d0 	sw	t9,720(s1)
    b4c8:	ac4f0000 	sw	t7,0(v0)
    b4cc:	02202025 	move	a0,s1
    b4d0:	240613bc 	li	a2,5052
    b4d4:	0c000000 	jal	0 <func_8094F2C0>
    b4d8:	afa200d0 	sw	v0,208(sp)
    b4dc:	8fa300d0 	lw	v1,208(sp)
    b4e0:	ac620004 	sw	v0,4(v1)
    b4e4:	8e2202d0 	lw	v0,720(s1)
    b4e8:	244c0008 	addiu	t4,v0,8
    b4ec:	ae2c02d0 	sw	t4,720(s1)
    b4f0:	ac520004 	sw	s2,4(v0)
    b4f4:	ac550000 	sw	s5,0(v0)
    b4f8:	26730001 	addiu	s3,s3,1
    b4fc:	00139c00 	sll	s3,s3,0x10
    b500:	00139c03 	sra	s3,s3,0x10
    b504:	2a610190 	slti	at,s3,400
    b508:	1420ff86 	bnez	at,b324 <func_8095A188+0x45c>
    b50c:	26100058 	addiu	s0,s0,88
    b510:	0000a025 	move	s4,zero
    b514:	8fb00138 	lw	s0,312(sp)
    b518:	00009825 	move	s3,zero
    b51c:	920e0024 	lbu	t6,36(s0)
    b520:	24010007 	li	at,7
    b524:	55c1004a 	bnel	t6,at,b650 <func_8095A188+0x788>
    b528:	26730001 	addiu	s3,s3,1
    b52c:	16800015 	bnez	s4,b584 <func_8095A188+0x6bc>
    b530:	8e120054 	lw	s2,84(s0)
    b534:	3c0a0601 	lui	t2,0x601
    b538:	254a28b8 	addiu	t2,t2,10424
    b53c:	8ec40000 	lw	a0,0(s6)
    b540:	0c000000 	jal	0 <func_8094F2C0>
    b544:	afaa0058 	sw	t2,88(sp)
    b548:	8e2202c0 	lw	v0,704(s1)
    b54c:	26940001 	addiu	s4,s4,1
    b550:	329400ff 	andi	s4,s4,0xff
    b554:	244b0008 	addiu	t3,v0,8
    b558:	ae2b02c0 	sw	t3,704(s1)
    b55c:	ac5e0000 	sw	s8,0(v0)
    b560:	8609003e 	lh	t1,62(s0)
    b564:	312d00ff 	andi	t5,t1,0xff
    b568:	ac4d0004 	sw	t5,4(v0)
    b56c:	8e2202c0 	lw	v0,704(s1)
    b570:	24480008 	addiu	t0,v0,8
    b574:	ae2802c0 	sw	t0,704(s1)
    b578:	ac550000 	sw	s5,0(v0)
    b57c:	8fb80058 	lw	t8,88(sp)
    b580:	ac580004 	sw	t8,4(v0)
    b584:	86190028 	lh	t9,40(s0)
    b588:	8fa40134 	lw	a0,308(sp)
    b58c:	24010001 	li	at,1
    b590:	1721000f 	bne	t9,at,b5d0 <func_8095A188+0x708>
    b594:	2484005c 	addiu	a0,a0,92
    b598:	02002825 	move	a1,s0
    b59c:	0c000000 	jal	0 <func_8094F2C0>
    b5a0:	afa40058 	sw	a0,88(sp)
    b5a4:	8fa40058 	lw	a0,88(sp)
    b5a8:	e7a0005c 	swc1	$f0,92(sp)
    b5ac:	0c000000 	jal	0 <func_8094F2C0>
    b5b0:	26450024 	addiu	a1,s2,36
    b5b4:	c7a4005c 	lwc1	$f4,92(sp)
    b5b8:	3c014120 	lui	at,0x4120
    b5bc:	44814000 	mtc1	at,$f8
    b5c0:	46002181 	sub.s	$f6,$f4,$f0
    b5c4:	4608303c 	c.lt.s	$f6,$f8
    b5c8:	00000000 	nop
    b5cc:	4500001f 	bc1f	b64c <func_8095A188+0x784>
    b5d0:	3c120601 	lui	s2,0x601
    b5d4:	26522948 	addiu	s2,s2,10568
    b5d8:	c60c0000 	lwc1	$f12,0(s0)
    b5dc:	c60e0004 	lwc1	$f14,4(s0)
    b5e0:	8e060008 	lw	a2,8(s0)
    b5e4:	0c000000 	jal	0 <func_8094F2C0>
    b5e8:	00003825 	move	a3,zero
    b5ec:	c60c0040 	lwc1	$f12,64(s0)
    b5f0:	24070001 	li	a3,1
    b5f4:	44066000 	mfc1	a2,$f12
    b5f8:	0c000000 	jal	0 <func_8094F2C0>
    b5fc:	46006386 	mov.s	$f14,$f12
    b600:	8e2202c0 	lw	v0,704(s1)
    b604:	3c0cda38 	lui	t4,0xda38
    b608:	358c0003 	ori	t4,t4,0x3
    b60c:	244f0008 	addiu	t7,v0,8
    b610:	ae2f02c0 	sw	t7,704(s1)
    b614:	3c050000 	lui	a1,0x0
    b618:	ac4c0000 	sw	t4,0(v0)
    b61c:	24a50000 	addiu	a1,a1,0
    b620:	02202025 	move	a0,s1
    b624:	240613d8 	li	a2,5080
    b628:	0c000000 	jal	0 <func_8094F2C0>
    b62c:	afa200bc 	sw	v0,188(sp)
    b630:	8fa300bc 	lw	v1,188(sp)
    b634:	ac620004 	sw	v0,4(v1)
    b638:	8e2202c0 	lw	v0,704(s1)
    b63c:	244e0008 	addiu	t6,v0,8
    b640:	ae2e02c0 	sw	t6,704(s1)
    b644:	ac520004 	sw	s2,4(v0)
    b648:	ac550000 	sw	s5,0(v0)
    b64c:	26730001 	addiu	s3,s3,1
    b650:	00139c00 	sll	s3,s3,0x10
    b654:	00139c03 	sra	s3,s3,0x10
    b658:	2a610190 	slti	at,s3,400
    b65c:	1420ffaf 	bnez	at,b51c <func_8095A188+0x654>
    b660:	26100058 	addiu	s0,s0,88
    b664:	0000a025 	move	s4,zero
    b668:	8fb00138 	lw	s0,312(sp)
    b66c:	00009825 	move	s3,zero
    b670:	920a0024 	lbu	t2,36(s0)
    b674:	24010008 	li	at,8
    b678:	3c120601 	lui	s2,0x601
    b67c:	55410085 	bnel	t2,at,b894 <func_8095A188+0x9cc>
    b680:	26730001 	addiu	s3,s3,1
    b684:	1680000e 	bnez	s4,b6c0 <func_8095A188+0x7f8>
    b688:	26522c50 	addiu	s2,s2,11344
    b68c:	3c0b0601 	lui	t3,0x601
    b690:	256b2ba0 	addiu	t3,t3,11168
    b694:	8ec40000 	lw	a0,0(s6)
    b698:	0c000000 	jal	0 <func_8094F2C0>
    b69c:	afab0058 	sw	t3,88(sp)
    b6a0:	8e2202c0 	lw	v0,704(s1)
    b6a4:	26940001 	addiu	s4,s4,1
    b6a8:	329400ff 	andi	s4,s4,0xff
    b6ac:	24490008 	addiu	t1,v0,8
    b6b0:	ae2902c0 	sw	t1,704(s1)
    b6b4:	ac550000 	sw	s5,0(v0)
    b6b8:	8fad0058 	lw	t5,88(sp)
    b6bc:	ac4d0004 	sw	t5,4(v0)
    b6c0:	8e2202c0 	lw	v0,704(s1)
    b6c4:	2401ff00 	li	at,-256
    b6c8:	3c0afa00 	lui	t2,0xfa00
    b6cc:	24480008 	addiu	t0,v0,8
    b6d0:	ae2802c0 	sw	t0,704(s1)
    b6d4:	ac400004 	sw	zero,4(v0)
    b6d8:	ac570000 	sw	s7,0(v0)
    b6dc:	8e2202c0 	lw	v0,704(s1)
    b6e0:	00003825 	move	a3,zero
    b6e4:	24580008 	addiu	t8,v0,8
    b6e8:	ae3802c0 	sw	t8,704(s1)
    b6ec:	ac5e0000 	sw	s8,0(v0)
    b6f0:	86190036 	lh	t9,54(s0)
    b6f4:	332f00ff 	andi	t7,t9,0xff
    b6f8:	01e16025 	or	t4,t7,at
    b6fc:	ac4c0004 	sw	t4,4(v0)
    b700:	8e2202c0 	lw	v0,704(s1)
    b704:	244e0008 	addiu	t6,v0,8
    b708:	ae2e02c0 	sw	t6,704(s1)
    b70c:	ac4a0000 	sw	t2,0(v0)
    b710:	860b0036 	lh	t3,54(s0)
    b714:	860f0032 	lh	t7,50(s0)
    b718:	86080030 	lh	t0,48(s0)
    b71c:	316900ff 	andi	t1,t3,0xff
    b720:	860b0034 	lh	t3,52(s0)
    b724:	31ec00ff 	andi	t4,t7,0xff
    b728:	0008c600 	sll	t8,t0,0x18
    b72c:	0138c825 	or	t9,t1,t8
    b730:	000c7400 	sll	t6,t4,0x10
    b734:	316d00ff 	andi	t5,t3,0xff
    b738:	000d4200 	sll	t0,t5,0x8
    b73c:	032e5025 	or	t2,t9,t6
    b740:	01484825 	or	t1,t2,t0
    b744:	ac490004 	sw	t1,4(v0)
    b748:	8e060008 	lw	a2,8(s0)
    b74c:	c60e0004 	lwc1	$f14,4(s0)
    b750:	0c000000 	jal	0 <func_8094F2C0>
    b754:	c60c0000 	lwc1	$f12,0(s0)
    b758:	8604002a 	lh	a0,42(s0)
    b75c:	8605002c 	lh	a1,44(s0)
    b760:	00003025 	move	a2,zero
    b764:	0c000000 	jal	0 <func_8094F2C0>
    b768:	24070001 	li	a3,1
    b76c:	c60c0040 	lwc1	$f12,64(s0)
    b770:	24070001 	li	a3,1
    b774:	44066000 	mfc1	a2,$f12
    b778:	0c000000 	jal	0 <func_8094F2C0>
    b77c:	46006386 	mov.s	$f14,$f12
    b780:	3c010000 	lui	at,0x0
    b784:	c4300000 	lwc1	$f16,0(at)
    b788:	c60a0048 	lwc1	$f10,72(s0)
    b78c:	24050001 	li	a1,1
    b790:	46105302 	mul.s	$f12,$f10,$f16
    b794:	0c000000 	jal	0 <func_8094F2C0>
    b798:	00000000 	nop
    b79c:	3c010000 	lui	at,0x0
    b7a0:	c4240000 	lwc1	$f4,0(at)
    b7a4:	c6120048 	lwc1	$f18,72(s0)
    b7a8:	24050001 	li	a1,1
    b7ac:	46049302 	mul.s	$f12,$f18,$f4
    b7b0:	0c000000 	jal	0 <func_8094F2C0>
    b7b4:	00000000 	nop
    b7b8:	3c010000 	lui	at,0x0
    b7bc:	c4280000 	lwc1	$f8,0(at)
    b7c0:	c6060048 	lwc1	$f6,72(s0)
    b7c4:	24050001 	li	a1,1
    b7c8:	46083302 	mul.s	$f12,$f6,$f8
    b7cc:	0c000000 	jal	0 <func_8094F2C0>
    b7d0:	00000000 	nop
    b7d4:	c6000044 	lwc1	$f0,68(s0)
    b7d8:	24070001 	li	a3,1
    b7dc:	4600a301 	sub.s	$f12,$f20,$f0
    b7e0:	46140380 	add.s	$f14,$f0,$f20
    b7e4:	44066000 	mfc1	a2,$f12
    b7e8:	0c000000 	jal	0 <func_8094F2C0>
    b7ec:	00000000 	nop
    b7f0:	3c010000 	lui	at,0x0
    b7f4:	c4300000 	lwc1	$f16,0(at)
    b7f8:	c60a0048 	lwc1	$f10,72(s0)
    b7fc:	24050001 	li	a1,1
    b800:	46105302 	mul.s	$f12,$f10,$f16
    b804:	0c000000 	jal	0 <func_8094F2C0>
    b808:	46006307 	neg.s	$f12,$f12
    b80c:	3c010000 	lui	at,0x0
    b810:	c4240000 	lwc1	$f4,0(at)
    b814:	c6120048 	lwc1	$f18,72(s0)
    b818:	24050001 	li	a1,1
    b81c:	46049302 	mul.s	$f12,$f18,$f4
    b820:	0c000000 	jal	0 <func_8094F2C0>
    b824:	46006307 	neg.s	$f12,$f12
    b828:	3c010000 	lui	at,0x0
    b82c:	c4280000 	lwc1	$f8,0(at)
    b830:	c6060048 	lwc1	$f6,72(s0)
    b834:	24050001 	li	a1,1
    b838:	46083302 	mul.s	$f12,$f6,$f8
    b83c:	0c000000 	jal	0 <func_8094F2C0>
    b840:	46006307 	neg.s	$f12,$f12
    b844:	8e2202c0 	lw	v0,704(s1)
    b848:	3c0fda38 	lui	t7,0xda38
    b84c:	35ef0003 	ori	t7,t7,0x3
    b850:	24580008 	addiu	t8,v0,8
    b854:	ae3802c0 	sw	t8,704(s1)
    b858:	3c050000 	lui	a1,0x0
    b85c:	ac4f0000 	sw	t7,0(v0)
    b860:	24a50000 	addiu	a1,a1,0
    b864:	02202025 	move	a0,s1
    b868:	24061404 	li	a2,5124
    b86c:	0c000000 	jal	0 <func_8094F2C0>
    b870:	afa200a4 	sw	v0,164(sp)
    b874:	8fa300a4 	lw	v1,164(sp)
    b878:	ac620004 	sw	v0,4(v1)
    b87c:	8e2202c0 	lw	v0,704(s1)
    b880:	244c0008 	addiu	t4,v0,8
    b884:	ae2c02c0 	sw	t4,704(s1)
    b888:	ac520004 	sw	s2,4(v0)
    b88c:	ac550000 	sw	s5,0(v0)
    b890:	26730001 	addiu	s3,s3,1
    b894:	00139c00 	sll	s3,s3,0x10
    b898:	00139c03 	sra	s3,s3,0x10
    b89c:	2a610190 	slti	at,s3,400
    b8a0:	1420ff73 	bnez	at,b670 <func_8095A188+0x7a8>
    b8a4:	26100058 	addiu	s0,s0,88
    b8a8:	0000a025 	move	s4,zero
    b8ac:	8fb00138 	lw	s0,312(sp)
    b8b0:	00009825 	move	s3,zero
    b8b4:	92190024 	lbu	t9,36(s0)
    b8b8:	24010005 	li	at,5
    b8bc:	3c120601 	lui	s2,0x601
    b8c0:	5721004c 	bnel	t9,at,b9f4 <func_8095A188+0xb2c>
    b8c4:	26730001 	addiu	s3,s3,1
    b8c8:	1680000e 	bnez	s4,b904 <func_8095A188+0xa3c>
    b8cc:	26523638 	addiu	s2,s2,13880
    b8d0:	3c0e0601 	lui	t6,0x601
    b8d4:	25ce35b0 	addiu	t6,t6,13744
    b8d8:	8ec40000 	lw	a0,0(s6)
    b8dc:	0c000000 	jal	0 <func_8094F2C0>
    b8e0:	afae0058 	sw	t6,88(sp)
    b8e4:	8e2202d0 	lw	v0,720(s1)
    b8e8:	26940001 	addiu	s4,s4,1
    b8ec:	329400ff 	andi	s4,s4,0xff
    b8f0:	244b0008 	addiu	t3,v0,8
    b8f4:	ae2b02d0 	sw	t3,720(s1)
    b8f8:	ac550000 	sw	s5,0(v0)
    b8fc:	8fad0058 	lw	t5,88(sp)
    b900:	ac4d0004 	sw	t5,4(v0)
    b904:	8e2202d0 	lw	v0,720(s1)
    b908:	3c01ffff 	lui	at,0xffff
    b90c:	34213200 	ori	at,at,0x3200
    b910:	244a0008 	addiu	t2,v0,8
    b914:	ae2a02d0 	sw	t2,720(s1)
    b918:	ac400004 	sw	zero,4(v0)
    b91c:	ac570000 	sw	s7,0(v0)
    b920:	8e2202d0 	lw	v0,720(s1)
    b924:	3c19fa00 	lui	t9,0xfa00
    b928:	00003825 	move	a3,zero
    b92c:	24480008 	addiu	t0,v0,8
    b930:	ae2802d0 	sw	t0,720(s1)
    b934:	ac5e0000 	sw	s8,0(v0)
    b938:	86090036 	lh	t1,54(s0)
    b93c:	313800ff 	andi	t8,t1,0xff
    b940:	03017825 	or	t7,t8,at
    b944:	ac4f0004 	sw	t7,4(v0)
    b948:	8e2202d0 	lw	v0,720(s1)
    b94c:	2401ff00 	li	at,-256
    b950:	244c0008 	addiu	t4,v0,8
    b954:	ae2c02d0 	sw	t4,720(s1)
    b958:	ac590000 	sw	t9,0(v0)
    b95c:	860e0036 	lh	t6,54(s0)
    b960:	31cb00ff 	andi	t3,t6,0xff
    b964:	01616825 	or	t5,t3,at
    b968:	ac4d0004 	sw	t5,4(v0)
    b96c:	8e060008 	lw	a2,8(s0)
    b970:	c60e0004 	lwc1	$f14,4(s0)
    b974:	0c000000 	jal	0 <func_8094F2C0>
    b978:	c60c0000 	lwc1	$f12,0(s0)
    b97c:	8604002a 	lh	a0,42(s0)
    b980:	8605002c 	lh	a1,44(s0)
    b984:	00003025 	move	a2,zero
    b988:	0c000000 	jal	0 <func_8094F2C0>
    b98c:	24070001 	li	a3,1
    b990:	c60c0040 	lwc1	$f12,64(s0)
    b994:	24070001 	li	a3,1
    b998:	44066000 	mfc1	a2,$f12
    b99c:	0c000000 	jal	0 <func_8094F2C0>
    b9a0:	46006386 	mov.s	$f14,$f12
    b9a4:	8e2202d0 	lw	v0,720(s1)
    b9a8:	3c08da38 	lui	t0,0xda38
    b9ac:	35080003 	ori	t0,t0,0x3
    b9b0:	244a0008 	addiu	t2,v0,8
    b9b4:	ae2a02d0 	sw	t2,720(s1)
    b9b8:	3c050000 	lui	a1,0x0
    b9bc:	ac480000 	sw	t0,0(v0)
    b9c0:	24a50000 	addiu	a1,a1,0
    b9c4:	02202025 	move	a0,s1
    b9c8:	24061420 	li	a2,5152
    b9cc:	0c000000 	jal	0 <func_8094F2C0>
    b9d0:	afa2008c 	sw	v0,140(sp)
    b9d4:	8fa3008c 	lw	v1,140(sp)
    b9d8:	ac620004 	sw	v0,4(v1)
    b9dc:	8e2202d0 	lw	v0,720(s1)
    b9e0:	24490008 	addiu	t1,v0,8
    b9e4:	ae2902d0 	sw	t1,720(s1)
    b9e8:	ac520004 	sw	s2,4(v0)
    b9ec:	ac550000 	sw	s5,0(v0)
    b9f0:	26730001 	addiu	s3,s3,1
    b9f4:	00139c00 	sll	s3,s3,0x10
    b9f8:	00139c03 	sra	s3,s3,0x10
    b9fc:	2a610190 	slti	at,s3,400
    ba00:	1420ffac 	bnez	at,b8b4 <func_8095A188+0x9ec>
    ba04:	26100058 	addiu	s0,s0,88
    ba08:	3c170000 	lui	s7,0x0
    ba0c:	0000a025 	move	s4,zero
    ba10:	8fb00138 	lw	s0,312(sp)
    ba14:	26f70000 	addiu	s7,s7,0
    ba18:	00009825 	move	s3,zero
    ba1c:	92180024 	lbu	t8,36(s0)
    ba20:	24010002 	li	at,2
    ba24:	3c0f0601 	lui	t7,0x601
    ba28:	17010053 	bne	t8,at,bb78 <func_8095A188+0xcb0>
    ba2c:	25ef5710 	addiu	t7,t7,22288
    ba30:	3c010001 	lui	at,0x1
    ba34:	34211da0 	ori	at,at,0x1da0
    ba38:	02c19021 	addu	s2,s6,at
    ba3c:	16800015 	bnez	s4,ba94 <func_8095A188+0xbcc>
    ba40:	afaf0050 	sw	t7,80(sp)
    ba44:	3c0c0601 	lui	t4,0x601
    ba48:	258c56a0 	addiu	t4,t4,22176
    ba4c:	8ec40000 	lw	a0,0(s6)
    ba50:	0c000000 	jal	0 <func_8094F2C0>
    ba54:	afac0058 	sw	t4,88(sp)
    ba58:	8e2202d0 	lw	v0,720(s1)
    ba5c:	3c0e8282 	lui	t6,0x8282
    ba60:	35ce1e00 	ori	t6,t6,0x1e00
    ba64:	24590008 	addiu	t9,v0,8
    ba68:	ae3902d0 	sw	t9,720(s1)
    ba6c:	ac4e0004 	sw	t6,4(v0)
    ba70:	ac5e0000 	sw	s8,0(v0)
    ba74:	8e2202d0 	lw	v0,720(s1)
    ba78:	26940001 	addiu	s4,s4,1
    ba7c:	329400ff 	andi	s4,s4,0xff
    ba80:	244b0008 	addiu	t3,v0,8
    ba84:	ae2b02d0 	sw	t3,720(s1)
    ba88:	ac550000 	sw	s5,0(v0)
    ba8c:	8fad0058 	lw	t5,88(sp)
    ba90:	ac4d0004 	sw	t5,4(v0)
    ba94:	8e2202d0 	lw	v0,720(s1)
    ba98:	3c08fa00 	lui	t0,0xfa00
    ba9c:	3c01e6e6 	lui	at,0xe6e6
    baa0:	244a0008 	addiu	t2,v0,8
    baa4:	ae2a02d0 	sw	t2,720(s1)
    baa8:	ac480000 	sw	t0,0(v0)
    baac:	86090036 	lh	t1,54(s0)
    bab0:	3421e600 	ori	at,at,0xe600
    bab4:	00003825 	move	a3,zero
    bab8:	313800ff 	andi	t8,t1,0xff
    babc:	03017825 	or	t7,t8,at
    bac0:	ac4f0004 	sw	t7,4(v0)
    bac4:	8e060008 	lw	a2,8(s0)
    bac8:	c60e0004 	lwc1	$f14,4(s0)
    bacc:	0c000000 	jal	0 <func_8094F2C0>
    bad0:	c60c0000 	lwc1	$f12,0(s0)
    bad4:	0c000000 	jal	0 <func_8094F2C0>
    bad8:	02402025 	move	a0,s2
    badc:	860c002e 	lh	t4,46(s0)
    bae0:	3c014700 	lui	at,0x4700
    bae4:	44819000 	mtc1	at,$f18
    bae8:	448c5000 	mtc1	t4,$f10
    baec:	3c010000 	lui	at,0x0
    baf0:	c4260000 	lwc1	$f6,0(at)
    baf4:	46805420 	cvt.s.w	$f16,$f10
    baf8:	24050001 	li	a1,1
    bafc:	46128103 	div.s	$f4,$f16,$f18
    bb00:	46062302 	mul.s	$f12,$f4,$f6
    bb04:	0c000000 	jal	0 <func_8094F2C0>
    bb08:	00000000 	nop
    bb0c:	3c010000 	lui	at,0x0
    bb10:	c42a0000 	lwc1	$f10,0(at)
    bb14:	c6080040 	lwc1	$f8,64(s0)
    bb18:	4406a000 	mfc1	a2,$f20
    bb1c:	24070001 	li	a3,1
    bb20:	460a4302 	mul.s	$f12,$f8,$f10
    bb24:	0c000000 	jal	0 <func_8094F2C0>
    bb28:	46006386 	mov.s	$f14,$f12
    bb2c:	8e2202d0 	lw	v0,720(s1)
    bb30:	3c0eda38 	lui	t6,0xda38
    bb34:	35ce0003 	ori	t6,t6,0x3
    bb38:	24590008 	addiu	t9,v0,8
    bb3c:	ae3902d0 	sw	t9,720(s1)
    bb40:	ac4e0000 	sw	t6,0(v0)
    bb44:	02202025 	move	a0,s1
    bb48:	02e02825 	move	a1,s7
    bb4c:	2406143c 	li	a2,5180
    bb50:	0c000000 	jal	0 <func_8094F2C0>
    bb54:	afa20078 	sw	v0,120(sp)
    bb58:	8fa30078 	lw	v1,120(sp)
    bb5c:	ac620004 	sw	v0,4(v1)
    bb60:	8e2202d0 	lw	v0,720(s1)
    bb64:	244b0008 	addiu	t3,v0,8
    bb68:	ae2b02d0 	sw	t3,720(s1)
    bb6c:	ac550000 	sw	s5,0(v0)
    bb70:	8fad0050 	lw	t5,80(sp)
    bb74:	ac4d0004 	sw	t5,4(v0)
    bb78:	26730001 	addiu	s3,s3,1
    bb7c:	00139c00 	sll	s3,s3,0x10
    bb80:	00139c03 	sra	s3,s3,0x10
    bb84:	2a610190 	slti	at,s3,400
    bb88:	1420ffa4 	bnez	at,ba1c <func_8095A188+0xb54>
    bb8c:	26100058 	addiu	s0,s0,88
    bb90:	0000a025 	move	s4,zero
    bb94:	8fb00138 	lw	s0,312(sp)
    bb98:	00009825 	move	s3,zero
    bb9c:	24170003 	li	s7,3
    bba0:	920a0024 	lbu	t2,36(s0)
    bba4:	3c120601 	lui	s2,0x601
    bba8:	56ea0057 	bnel	s7,t2,bd08 <func_8095A188+0xe40>
    bbac:	26730001 	addiu	s3,s3,1
    bbb0:	16800015 	bnez	s4,bc08 <func_8095A188+0xd40>
    bbb4:	26528f70 	addiu	s2,s2,-28816
    bbb8:	3c080601 	lui	t0,0x601
    bbbc:	25088f08 	addiu	t0,t0,-28920
    bbc0:	8ec40000 	lw	a0,0(s6)
    bbc4:	0c000000 	jal	0 <func_8094F2C0>
    bbc8:	afa80058 	sw	t0,88(sp)
    bbcc:	8e2202d0 	lw	v0,720(s1)
    bbd0:	3c18ffff 	lui	t8,0xffff
    bbd4:	37186400 	ori	t8,t8,0x6400
    bbd8:	24490008 	addiu	t1,v0,8
    bbdc:	ae2902d0 	sw	t1,720(s1)
    bbe0:	ac580004 	sw	t8,4(v0)
    bbe4:	ac5e0000 	sw	s8,0(v0)
    bbe8:	8e2202d0 	lw	v0,720(s1)
    bbec:	26940001 	addiu	s4,s4,1
    bbf0:	329400ff 	andi	s4,s4,0xff
    bbf4:	244f0008 	addiu	t7,v0,8
    bbf8:	ae2f02d0 	sw	t7,720(s1)
    bbfc:	ac550000 	sw	s5,0(v0)
    bc00:	8fac0058 	lw	t4,88(sp)
    bc04:	ac4c0004 	sw	t4,4(v0)
    bc08:	8e2202d0 	lw	v0,720(s1)
    bc0c:	3c0efa00 	lui	t6,0xfa00
    bc10:	2401ff00 	li	at,-256
    bc14:	24590008 	addiu	t9,v0,8
    bc18:	ae3902d0 	sw	t9,720(s1)
    bc1c:	ac4e0000 	sw	t6,0(v0)
    bc20:	860b0036 	lh	t3,54(s0)
    bc24:	00003825 	move	a3,zero
    bc28:	316d00ff 	andi	t5,t3,0xff
    bc2c:	01a15025 	or	t2,t5,at
    bc30:	ac4a0004 	sw	t2,4(v0)
    bc34:	8e060008 	lw	a2,8(s0)
    bc38:	c60e0004 	lwc1	$f14,4(s0)
    bc3c:	0c000000 	jal	0 <func_8094F2C0>
    bc40:	c60c0000 	lwc1	$f12,0(s0)
    bc44:	8608002e 	lh	t0,46(s0)
    bc48:	3c014700 	lui	at,0x4700
    bc4c:	44812000 	mtc1	at,$f4
    bc50:	44888000 	mtc1	t0,$f16
    bc54:	3c010000 	lui	at,0x0
    bc58:	c4280000 	lwc1	$f8,0(at)
    bc5c:	468084a0 	cvt.s.w	$f18,$f16
    bc60:	24050001 	li	a1,1
    bc64:	46049183 	div.s	$f6,$f18,$f4
    bc68:	46083302 	mul.s	$f12,$f6,$f8
    bc6c:	0c000000 	jal	0 <func_8094F2C0>
    bc70:	00000000 	nop
    bc74:	8609002c 	lh	t1,44(s0)
    bc78:	3c014700 	lui	at,0x4700
    bc7c:	44819000 	mtc1	at,$f18
    bc80:	44895000 	mtc1	t1,$f10
    bc84:	3c010000 	lui	at,0x0
    bc88:	c4260000 	lwc1	$f6,0(at)
    bc8c:	46805420 	cvt.s.w	$f16,$f10
    bc90:	24050001 	li	a1,1
    bc94:	46128103 	div.s	$f4,$f16,$f18
    bc98:	46062302 	mul.s	$f12,$f4,$f6
    bc9c:	0c000000 	jal	0 <func_8094F2C0>
    bca0:	00000000 	nop
    bca4:	c60c0040 	lwc1	$f12,64(s0)
    bca8:	4406a000 	mfc1	a2,$f20
    bcac:	24070001 	li	a3,1
    bcb0:	0c000000 	jal	0 <func_8094F2C0>
    bcb4:	46006386 	mov.s	$f14,$f12
    bcb8:	8e2202d0 	lw	v0,720(s1)
    bcbc:	3c0fda38 	lui	t7,0xda38
    bcc0:	35ef0003 	ori	t7,t7,0x3
    bcc4:	24580008 	addiu	t8,v0,8
    bcc8:	ae3802d0 	sw	t8,720(s1)
    bccc:	3c050000 	lui	a1,0x0
    bcd0:	ac4f0000 	sw	t7,0(v0)
    bcd4:	24a50000 	addiu	a1,a1,0
    bcd8:	02202025 	move	a0,s1
    bcdc:	24061458 	li	a2,5208
    bce0:	0c000000 	jal	0 <func_8094F2C0>
    bce4:	afa20064 	sw	v0,100(sp)
    bce8:	8fa30064 	lw	v1,100(sp)
    bcec:	ac620004 	sw	v0,4(v1)
    bcf0:	8e2202d0 	lw	v0,720(s1)
    bcf4:	244c0008 	addiu	t4,v0,8
    bcf8:	ae2c02d0 	sw	t4,720(s1)
    bcfc:	ac520004 	sw	s2,4(v0)
    bd00:	ac550000 	sw	s5,0(v0)
    bd04:	26730001 	addiu	s3,s3,1
    bd08:	00139c00 	sll	s3,s3,0x10
    bd0c:	00139c03 	sra	s3,s3,0x10
    bd10:	2a610190 	slti	at,s3,400
    bd14:	1420ffa2 	bnez	at,bba0 <func_8095A188+0xcd8>
    bd18:	26100058 	addiu	s0,s0,88
    bd1c:	3c060000 	lui	a2,0x0
    bd20:	24c60000 	addiu	a2,a2,0
    bd24:	27a40120 	addiu	a0,sp,288
    bd28:	02202825 	move	a1,s1
    bd2c:	0c000000 	jal	0 <func_8094F2C0>
    bd30:	2407145f 	li	a3,5215
    bd34:	8fbf0044 	lw	ra,68(sp)
    bd38:	d7b40018 	ldc1	$f20,24(sp)
    bd3c:	8fb00020 	lw	s0,32(sp)
    bd40:	8fb10024 	lw	s1,36(sp)
    bd44:	8fb20028 	lw	s2,40(sp)
    bd48:	8fb3002c 	lw	s3,44(sp)
    bd4c:	8fb40030 	lw	s4,48(sp)
    bd50:	8fb50034 	lw	s5,52(sp)
    bd54:	8fb60038 	lw	s6,56(sp)
    bd58:	8fb7003c 	lw	s7,60(sp)
    bd5c:	8fbe0040 	lw	s8,64(sp)
    bd60:	03e00008 	jr	ra
    bd64:	27bd0148 	addiu	sp,sp,328

0000bd68 <func_8095B028>:
    bd68:	27bdffa8 	addiu	sp,sp,-88
    bd6c:	afbf001c 	sw	ra,28(sp)
    bd70:	afb10018 	sw	s1,24(sp)
    bd74:	afb00014 	sw	s0,20(sp)
    bd78:	8c8e1c44 	lw	t6,7236(a0)
    bd7c:	3c0f0000 	lui	t7,0x0
    bd80:	25ef0000 	addiu	t7,t7,0
    bd84:	afae0054 	sw	t6,84(sp)
    bd88:	8df90000 	lw	t9,0(t7)
    bd8c:	27a30044 	addiu	v1,sp,68
    bd90:	00a08025 	move	s0,a1
    bd94:	ac790000 	sw	t9,0(v1)
    bd98:	8df80004 	lw	t8,4(t7)
    bd9c:	00e08825 	move	s1,a3
    bda0:	00001025 	move	v0,zero
    bda4:	ac780004 	sw	t8,4(v1)
    bda8:	8df90008 	lw	t9,8(t7)
    bdac:	24090001 	li	t1,1
    bdb0:	ac790008 	sw	t9,8(v1)
    bdb4:	92080024 	lbu	t0,36(s0)
    bdb8:	24420001 	addiu	v0,v0,1
    bdbc:	00021400 	sll	v0,v0,0x10
    bdc0:	1500009d 	bnez	t0,c038 <L8095B228+0xd0>
    bdc4:	00021403 	sra	v0,v0,0x10
    bdc8:	a2090024 	sb	t1,36(s0)
    bdcc:	ae060054 	sw	a2,84(s0)
    bdd0:	8c6b0000 	lw	t3,0(v1)
    bdd4:	ae0b0000 	sw	t3,0(s0)
    bdd8:	8c6a0004 	lw	t2,4(v1)
    bddc:	ae0a0004 	sw	t2,4(s0)
    bde0:	8c6b0008 	lw	t3,8(v1)
    bde4:	ae0b0008 	sw	t3,8(s0)
    bde8:	0c000000 	jal	0 <func_8094F2C0>
    bdec:	afa60060 	sw	a2,96(sp)
    bdf0:	3c014120 	lui	at,0x4120
    bdf4:	44812000 	mtc1	at,$f4
    bdf8:	8fa60060 	lw	a2,96(sp)
    bdfc:	3c190000 	lui	t9,0x0
    be00:	46040182 	mul.s	$f6,$f0,$f4
    be04:	27390000 	addiu	t9,t9,0
    be08:	27a30028 	addiu	v1,sp,40
    be0c:	4600320d 	trunc.w.s	$f8,$f6
    be10:	440f4000 	mfc1	t7,$f8
    be14:	00000000 	nop
    be18:	25f8006f 	addiu	t8,t7,111
    be1c:	a6180026 	sh	t8,38(s0)
    be20:	8f290000 	lw	t1,0(t9)
    be24:	ac690000 	sw	t1,0(v1)
    be28:	8f280004 	lw	t0,4(t9)
    be2c:	8c6b0000 	lw	t3,0(v1)
    be30:	ac680004 	sw	t0,4(v1)
    be34:	8f290008 	lw	t1,8(t9)
    be38:	ac690008 	sw	t1,8(v1)
    be3c:	ae0b0018 	sw	t3,24(s0)
    be40:	8c6a0004 	lw	t2,4(v1)
    be44:	ae0a001c 	sw	t2,28(s0)
    be48:	8c6b0008 	lw	t3,8(v1)
    be4c:	ae0b0020 	sw	t3,32(s0)
    be50:	8c6d0000 	lw	t5,0(v1)
    be54:	ae0d000c 	sw	t5,12(s0)
    be58:	8c6c0004 	lw	t4,4(v1)
    be5c:	ae0c0010 	sw	t4,16(s0)
    be60:	8c6d0008 	lw	t5,8(v1)
    be64:	ae0d0014 	sw	t5,20(s0)
    be68:	93a2006f 	lbu	v0,111(sp)
    be6c:	244effff 	addiu	t6,v0,-1
    be70:	2dc10006 	sltiu	at,t6,6
    be74:	1020005f 	beqz	at,bff4 <L8095B228+0x8c>
    be78:	a6020028 	sh	v0,40(s0)
    be7c:	000e7080 	sll	t6,t6,0x2
    be80:	3c010000 	lui	at,0x0
    be84:	002e0821 	addu	at,at,t6
    be88:	8c2e0000 	lw	t6,0(at)
    be8c:	01c00008 	jr	t6
    be90:	00000000 	nop

0000be94 <L8095B154>:
    be94:	240f0003 	li	t7,3
    be98:	a20f0024 	sb	t7,36(s0)

0000be9c <L8095B15C>:
    be9c:	8e390000 	lw	t9,0(s1)
    bea0:	27a50038 	addiu	a1,sp,56
    bea4:	24c40024 	addiu	a0,a2,36
    bea8:	acb90000 	sw	t9,0(a1)
    beac:	8e380004 	lw	t8,4(s1)
    beb0:	acb80004 	sw	t8,4(a1)
    beb4:	8e390008 	lw	t9,8(s1)
    beb8:	acb90008 	sw	t9,8(a1)
    bebc:	c7aa0038 	lwc1	$f10,56(sp)
    bec0:	c4d00024 	lwc1	$f16,36(a2)
    bec4:	c7a40040 	lwc1	$f4,64(sp)
    bec8:	46105480 	add.s	$f18,$f10,$f16
    becc:	e7b20038 	swc1	$f18,56(sp)
    bed0:	c4c6002c 	lwc1	$f6,44(a2)
    bed4:	afa60060 	sw	a2,96(sp)
    bed8:	afa40024 	sw	a0,36(sp)
    bedc:	46062200 	add.s	$f8,$f4,$f6
    bee0:	0c000000 	jal	0 <func_8094F2C0>
    bee4:	e7a80040 	swc1	$f8,64(sp)
    bee8:	8fa60060 	lw	a2,96(sp)
    beec:	8fa40024 	lw	a0,36(sp)
    bef0:	e6000048 	swc1	$f0,72(s0)
    bef4:	8cc50118 	lw	a1,280(a2)
    bef8:	0c000000 	jal	0 <func_8094F2C0>
    befc:	24a501d8 	addiu	a1,a1,472
    bf00:	1000003c 	b	bff4 <L8095B228+0x8c>
    bf04:	a602002a 	sh	v0,42(s0)

0000bf08 <L8095B1C8>:
    bf08:	24080003 	li	t0,3
    bf0c:	a2080024 	sb	t0,36(s0)

0000bf10 <L8095B1D0>:
    bf10:	c62a0000 	lwc1	$f10,0(s1)
    bf14:	e60a0048 	swc1	$f10,72(s0)
    bf18:	c6300008 	lwc1	$f16,8(s1)
    bf1c:	10000035 	b	bff4 <L8095B228+0x8c>
    bf20:	e6100050 	swc1	$f16,80(s0)

0000bf24 <L8095B1E4>:
    bf24:	24090002 	li	t1,2
    bf28:	a2090024 	sb	t1,36(s0)
    bf2c:	c4c40024 	lwc1	$f4,36(a2)
    bf30:	c6320000 	lwc1	$f18,0(s1)
    bf34:	240a006f 	li	t2,111
    bf38:	46049180 	add.s	$f6,$f18,$f4
    bf3c:	e6060000 	swc1	$f6,0(s0)
    bf40:	c4ca0028 	lwc1	$f10,40(a2)
    bf44:	c6280004 	lwc1	$f8,4(s1)
    bf48:	460a4400 	add.s	$f16,$f8,$f10
    bf4c:	e6100004 	swc1	$f16,4(s0)
    bf50:	c4c4002c 	lwc1	$f4,44(a2)
    bf54:	c6320008 	lwc1	$f18,8(s1)
    bf58:	a60a0026 	sh	t2,38(s0)
    bf5c:	46049180 	add.s	$f6,$f18,$f4
    bf60:	10000024 	b	bff4 <L8095B228+0x8c>
    bf64:	e6060008 	swc1	$f6,8(s0)

0000bf68 <L8095B228>:
    bf68:	240b0003 	li	t3,3
    bf6c:	a20b0024 	sb	t3,36(s0)
    bf70:	3c010000 	lui	at,0x0
    bf74:	0c000000 	jal	0 <func_8094F2C0>
    bf78:	c42c0000 	lwc1	$f12,0(at)
    bf7c:	4600020d 	trunc.w.s	$f8,$f0
    bf80:	3c014120 	lui	at,0x4120
    bf84:	44816000 	mtc1	at,$f12
    bf88:	440d4000 	mfc1	t5,$f8
    bf8c:	0c000000 	jal	0 <func_8094F2C0>
    bf90:	a7ad0052 	sh	t5,82(sp)
    bf94:	87af0052 	lh	t7,82(sp)
    bf98:	8fae0054 	lw	t6,84(sp)
    bf9c:	3c014170 	lui	at,0x4170
    bfa0:	000fc080 	sll	t8,t7,0x2
    bfa4:	030fc023 	subu	t8,t8,t7
    bfa8:	0018c080 	sll	t8,t8,0x2
    bfac:	01d81021 	addu	v0,t6,t8
    bfb0:	c44a0908 	lwc1	$f10,2312(v0)
    bfb4:	44816000 	mtc1	at,$f12
    bfb8:	460a0400 	add.s	$f16,$f0,$f10
    bfbc:	e6100000 	swc1	$f16,0(s0)
    bfc0:	0c000000 	jal	0 <func_8094F2C0>
    bfc4:	afa20024 	sw	v0,36(sp)
    bfc8:	8fb90024 	lw	t9,36(sp)
    bfcc:	3c014120 	lui	at,0x4120
    bfd0:	44816000 	mtc1	at,$f12
    bfd4:	c732090c 	lwc1	$f18,2316(t9)
    bfd8:	46120100 	add.s	$f4,$f0,$f18
    bfdc:	0c000000 	jal	0 <func_8094F2C0>
    bfe0:	e6040004 	swc1	$f4,4(s0)
    bfe4:	8fa80024 	lw	t0,36(sp)
    bfe8:	c5060910 	lwc1	$f6,2320(t0)
    bfec:	46060200 	add.s	$f8,$f0,$f6
    bff0:	e6080008 	swc1	$f8,8(s0)
    bff4:	c62a0004 	lwc1	$f10,4(s1)
    bff8:	e60a004c 	swc1	$f10,76(s0)
    bffc:	87a9006a 	lh	t1,106(sp)
    c000:	44898000 	mtc1	t1,$f16
    c004:	00000000 	nop
    c008:	46808320 	cvt.s.w	$f12,$f16
    c00c:	0c000000 	jal	0 <func_8094F2C0>
    c010:	e7ac0024 	swc1	$f12,36(sp)
    c014:	c7ac0024 	lwc1	$f12,36(sp)
    c018:	3c010000 	lui	at,0x0
    c01c:	c4240000 	lwc1	$f4,0(at)
    c020:	460c0480 	add.s	$f18,$f0,$f12
    c024:	240a00ff 	li	t2,255
    c028:	a60a0036 	sh	t2,54(s0)
    c02c:	46049182 	mul.s	$f6,$f18,$f4
    c030:	10000004 	b	c044 <L8095B228+0xdc>
    c034:	e6060040 	swc1	$f6,64(s0)
    c038:	28410190 	slti	at,v0,400
    c03c:	1420ff5d 	bnez	at,bdb4 <func_8095B028+0x4c>
    c040:	26100058 	addiu	s0,s0,88
    c044:	8fbf001c 	lw	ra,28(sp)
    c048:	8fb00014 	lw	s0,20(sp)
    c04c:	8fb10018 	lw	s1,24(sp)
    c050:	03e00008 	jr	ra
    c054:	27bd0058 	addiu	sp,sp,88

0000c058 <func_8095B318>:
    c058:	27bdffc0 	addiu	sp,sp,-64
    c05c:	3c0e0000 	lui	t6,0x0
    c060:	afbf0014 	sw	ra,20(sp)
    c064:	afa40040 	sw	a0,64(sp)
    c068:	25ce0000 	addiu	t6,t6,0
    c06c:	8dd80000 	lw	t8,0(t6)
    c070:	27a30034 	addiu	v1,sp,52
    c074:	00001025 	move	v0,zero
    c078:	ac780000 	sw	t8,0(v1)
    c07c:	8dcf0004 	lw	t7,4(t6)
    c080:	24080004 	li	t0,4
    c084:	ac6f0004 	sw	t7,4(v1)
    c088:	8dd80008 	lw	t8,8(t6)
    c08c:	ac780008 	sw	t8,8(v1)
    c090:	90b90024 	lbu	t9,36(a1)
    c094:	24420001 	addiu	v0,v0,1
    c098:	00021400 	sll	v0,v0,0x10
    c09c:	1720004a 	bnez	t9,c1c8 <func_8095B318+0x170>
    c0a0:	00021403 	sra	v0,v0,0x10
    c0a4:	a0a80024 	sb	t0,36(a1)
    c0a8:	aca60054 	sw	a2,84(a1)
    c0ac:	8c6a0000 	lw	t2,0(v1)
    c0b0:	3c0b0000 	lui	t3,0x0
    c0b4:	256b0000 	addiu	t3,t3,0
    c0b8:	acaa0000 	sw	t2,0(a1)
    c0bc:	8c690004 	lw	t1,4(v1)
    c0c0:	27a20024 	addiu	v0,sp,36
    c0c4:	aca90004 	sw	t1,4(a1)
    c0c8:	8c6a0008 	lw	t2,8(v1)
    c0cc:	acaa0008 	sw	t2,8(a1)
    c0d0:	8d6d0000 	lw	t5,0(t3)
    c0d4:	ac4d0000 	sw	t5,0(v0)
    c0d8:	8d6c0004 	lw	t4,4(t3)
    c0dc:	8c4f0000 	lw	t7,0(v0)
    c0e0:	ac4c0004 	sw	t4,4(v0)
    c0e4:	8d6d0008 	lw	t5,8(t3)
    c0e8:	ac4d0008 	sw	t5,8(v0)
    c0ec:	acaf0018 	sw	t7,24(a1)
    c0f0:	8c4e0004 	lw	t6,4(v0)
    c0f4:	acae001c 	sw	t6,28(a1)
    c0f8:	8c4f0008 	lw	t7,8(v0)
    c0fc:	acaf0020 	sw	t7,32(a1)
    c100:	8c590000 	lw	t9,0(v0)
    c104:	acb9000c 	sw	t9,12(a1)
    c108:	8c580004 	lw	t8,4(v0)
    c10c:	acb80010 	sw	t8,16(a1)
    c110:	8c590008 	lw	t9,8(v0)
    c114:	a4a00028 	sh	zero,40(a1)
    c118:	acb90014 	sw	t9,20(a1)
    c11c:	c4e40000 	lwc1	$f4,0(a3)
    c120:	e4a40048 	swc1	$f4,72(a1)
    c124:	c4e60008 	lwc1	$f6,8(a3)
    c128:	e4a60050 	swc1	$f6,80(a1)
    c12c:	c4e80004 	lwc1	$f8,4(a3)
    c130:	e4a8004c 	swc1	$f8,76(a1)
    c134:	0c000000 	jal	0 <func_8094F2C0>
    c138:	afa50044 	sw	a1,68(sp)
    c13c:	3c014120 	lui	at,0x4120
    c140:	44815000 	mtc1	at,$f10
    c144:	8fa50044 	lw	a1,68(sp)
    c148:	240d00e6 	li	t5,230
    c14c:	460a0402 	mul.s	$f16,$f0,$f10
    c150:	a4ad0036 	sh	t5,54(a1)
    c154:	84a20036 	lh	v0,54(a1)
    c158:	240e0064 	li	t6,100
    c15c:	240f00dc 	li	t7,220
    c160:	241800a0 	li	t8,160
    c164:	a4a00038 	sh	zero,56(a1)
    c168:	4600848d 	trunc.w.s	$f18,$f16
    c16c:	a4ae003a 	sh	t6,58(a1)
    c170:	a4af003c 	sh	t7,60(a1)
    c174:	a4b8003e 	sh	t8,62(a1)
    c178:	440b9000 	mfc1	t3,$f18
    c17c:	a4a20034 	sh	v0,52(a1)
    c180:	a4a20032 	sh	v0,50(a1)
    c184:	256c006f 	addiu	t4,t3,111
    c188:	a4ac0026 	sh	t4,38(a1)
    c18c:	a4a20030 	sh	v0,48(a1)
    c190:	87b90052 	lh	t9,82(sp)
    c194:	44992000 	mtc1	t9,$f4
    c198:	00000000 	nop
    c19c:	46802320 	cvt.s.w	$f12,$f4
    c1a0:	0c000000 	jal	0 <func_8094F2C0>
    c1a4:	e7ac001c 	swc1	$f12,28(sp)
    c1a8:	c7ac001c 	lwc1	$f12,28(sp)
    c1ac:	3c010000 	lui	at,0x0
    c1b0:	c4280000 	lwc1	$f8,0(at)
    c1b4:	460c0180 	add.s	$f6,$f0,$f12
    c1b8:	8fa50044 	lw	a1,68(sp)
    c1bc:	46083282 	mul.s	$f10,$f6,$f8
    c1c0:	10000004 	b	c1d4 <func_8095B318+0x17c>
    c1c4:	e4aa0040 	swc1	$f10,64(a1)
    c1c8:	28410190 	slti	at,v0,400
    c1cc:	1420ffb0 	bnez	at,c090 <func_8095B318+0x38>
    c1d0:	24a50058 	addiu	a1,a1,88
    c1d4:	8fbf0014 	lw	ra,20(sp)
    c1d8:	27bd0040 	addiu	sp,sp,64
    c1dc:	03e00008 	jr	ra
    c1e0:	00000000 	nop

0000c1e4 <func_8095B4A4>:
    c1e4:	27bdffb8 	addiu	sp,sp,-72
    c1e8:	3c0f0000 	lui	t7,0x0
    c1ec:	afbf001c 	sw	ra,28(sp)
    c1f0:	afb00018 	sw	s0,24(sp)
    c1f4:	afa40048 	sw	a0,72(sp)
    c1f8:	afa70054 	sw	a3,84(sp)
    c1fc:	25ef0000 	addiu	t7,t7,0
    c200:	8df90000 	lw	t9,0(t7)
    c204:	27ae0038 	addiu	t6,sp,56
    c208:	8df80004 	lw	t8,4(t7)
    c20c:	add90000 	sw	t9,0(t6)
    c210:	8df90008 	lw	t9,8(t7)
    c214:	3c090000 	lui	t1,0x0
    c218:	25290000 	addiu	t1,t1,0
    c21c:	add80004 	sw	t8,4(t6)
    c220:	add90008 	sw	t9,8(t6)
    c224:	8d2b0000 	lw	t3,0(t1)
    c228:	27a8002c 	addiu	t0,sp,44
    c22c:	8d2a0004 	lw	t2,4(t1)
    c230:	ad0b0000 	sw	t3,0(t0)
    c234:	8d2b0008 	lw	t3,8(t1)
    c238:	00a08025 	move	s0,a1
    c23c:	00001025 	move	v0,zero
    c240:	24030190 	li	v1,400
    c244:	ad0a0004 	sw	t2,4(t0)
    c248:	ad0b0008 	sw	t3,8(t0)
    c24c:	920c0024 	lbu	t4,36(s0)
    c250:	24420001 	addiu	v0,v0,1
    c254:	1580004f 	bnez	t4,c394 <func_8095B4A4+0x1b0>
    c258:	240d0006 	li	t5,6
    c25c:	a20d0024 	sb	t5,36(s0)
    c260:	8ccf0000 	lw	t7,0(a2)
    c264:	ae0f0000 	sw	t7,0(s0)
    c268:	8cce0004 	lw	t6,4(a2)
    c26c:	ae0e0004 	sw	t6,4(s0)
    c270:	8ccf0008 	lw	t7,8(a2)
    c274:	a6000028 	sh	zero,40(s0)
    c278:	ae0f0008 	sw	t7,8(s0)
    c27c:	0c000000 	jal	0 <func_8094F2C0>
    c280:	87a4005a 	lh	a0,90(sp)
    c284:	3c0140c0 	lui	at,0x40c0
    c288:	44812000 	mtc1	at,$f4
    c28c:	3c013f80 	lui	at,0x3f80
    c290:	44816000 	mtc1	at,$f12
    c294:	46040182 	mul.s	$f6,$f0,$f4
    c298:	0c000000 	jal	0 <func_8094F2C0>
    c29c:	e7a60028 	swc1	$f6,40(sp)
    c2a0:	e7a00024 	swc1	$f0,36(sp)
    c2a4:	0c000000 	jal	0 <func_8094F2C0>
    c2a8:	87a4005e 	lh	a0,94(sp)
    c2ac:	c7aa0028 	lwc1	$f10,40(sp)
    c2b0:	46000207 	neg.s	$f8,$f0
    c2b4:	c7b20024 	lwc1	$f18,36(sp)
    c2b8:	460a4402 	mul.s	$f16,$f8,$f10
    c2bc:	3c013f80 	lui	at,0x3f80
    c2c0:	44816000 	mtc1	at,$f12
    c2c4:	46128100 	add.s	$f4,$f16,$f18
    c2c8:	0c000000 	jal	0 <func_8094F2C0>
    c2cc:	e7a4002c 	swc1	$f4,44(sp)
    c2d0:	e7a00024 	swc1	$f0,36(sp)
    c2d4:	0c000000 	jal	0 <func_8094F2C0>
    c2d8:	87a4005e 	lh	a0,94(sp)
    c2dc:	c7a80028 	lwc1	$f8,40(sp)
    c2e0:	46000187 	neg.s	$f6,$f0
    c2e4:	c7b00024 	lwc1	$f16,36(sp)
    c2e8:	46083282 	mul.s	$f10,$f6,$f8
    c2ec:	27b8002c 	addiu	t8,sp,44
    c2f0:	3c010000 	lui	at,0x0
    c2f4:	46105480 	add.s	$f18,$f10,$f16
    c2f8:	e7b20034 	swc1	$f18,52(sp)
    c2fc:	8f080000 	lw	t0,0(t8)
    c300:	ae08000c 	sw	t0,12(s0)
    c304:	8f190004 	lw	t9,4(t8)
    c308:	ae190010 	sw	t9,16(s0)
    c30c:	8f080008 	lw	t0,8(t8)
    c310:	ae080014 	sw	t0,20(s0)
    c314:	0c000000 	jal	0 <func_8094F2C0>
    c318:	c42c0000 	lwc1	$f12,0(at)
    c31c:	3c013f80 	lui	at,0x3f80
    c320:	44812000 	mtc1	at,$f4
    c324:	27a90038 	addiu	t1,sp,56
    c328:	240c0014 	li	t4,20
    c32c:	46040181 	sub.s	$f6,$f0,$f4
    c330:	240d0064 	li	t5,100
    c334:	240e00c8 	li	t6,200
    c338:	e7a6003c 	swc1	$f6,60(sp)
    c33c:	8d2b0000 	lw	t3,0(t1)
    c340:	ae0b0018 	sw	t3,24(s0)
    c344:	8d2a0004 	lw	t2,4(t1)
    c348:	ae0a001c 	sw	t2,28(s0)
    c34c:	8d2b0008 	lw	t3,8(t1)
    c350:	a60c0026 	sh	t4,38(s0)
    c354:	a60d003e 	sh	t5,62(s0)
    c358:	a60e0036 	sh	t6,54(s0)
    c35c:	ae0b0020 	sw	t3,32(s0)
    c360:	87af0056 	lh	t7,86(sp)
    c364:	448f4000 	mtc1	t7,$f8
    c368:	00000000 	nop
    c36c:	46804320 	cvt.s.w	$f12,$f8
    c370:	0c000000 	jal	0 <func_8094F2C0>
    c374:	e7ac0020 	swc1	$f12,32(sp)
    c378:	c7ac0020 	lwc1	$f12,32(sp)
    c37c:	3c010000 	lui	at,0x0
    c380:	c4300000 	lwc1	$f16,0(at)
    c384:	460c0280 	add.s	$f10,$f0,$f12
    c388:	46105482 	mul.s	$f18,$f10,$f16
    c38c:	10000003 	b	c39c <func_8095B4A4+0x1b8>
    c390:	e6120040 	swc1	$f18,64(s0)
    c394:	1443ffad 	bne	v0,v1,c24c <func_8095B4A4+0x68>
    c398:	26100058 	addiu	s0,s0,88
    c39c:	8fbf001c 	lw	ra,28(sp)
    c3a0:	8fb00018 	lw	s0,24(sp)
    c3a4:	27bd0048 	addiu	sp,sp,72
    c3a8:	03e00008 	jr	ra
    c3ac:	00000000 	nop

0000c3b0 <func_8095B670>:
    c3b0:	27bdffc0 	addiu	sp,sp,-64
    c3b4:	3c0f0000 	lui	t7,0x0
    c3b8:	afbf001c 	sw	ra,28(sp)
    c3bc:	afb00018 	sw	s0,24(sp)
    c3c0:	afa40040 	sw	a0,64(sp)
    c3c4:	afa7004c 	sw	a3,76(sp)
    c3c8:	25ef0000 	addiu	t7,t7,0
    c3cc:	8df90000 	lw	t9,0(t7)
    c3d0:	27ae002c 	addiu	t6,sp,44
    c3d4:	8df80004 	lw	t8,4(t7)
    c3d8:	add90000 	sw	t9,0(t6)
    c3dc:	8df90008 	lw	t9,8(t7)
    c3e0:	00a08025 	move	s0,a1
    c3e4:	00001025 	move	v0,zero
    c3e8:	24030190 	li	v1,400
    c3ec:	add80004 	sw	t8,4(t6)
    c3f0:	add90008 	sw	t9,8(t6)
    c3f4:	92080024 	lbu	t0,36(s0)
    c3f8:	24420001 	addiu	v0,v0,1
    c3fc:	1500004c 	bnez	t0,c530 <func_8095B670+0x180>
    c400:	24090006 	li	t1,6
    c404:	a2090024 	sb	t1,36(s0)
    c408:	8ccb0000 	lw	t3,0(a2)
    c40c:	240c0001 	li	t4,1
    c410:	ae0b0000 	sw	t3,0(s0)
    c414:	8cca0004 	lw	t2,4(a2)
    c418:	ae0a0004 	sw	t2,4(s0)
    c41c:	8ccb0008 	lw	t3,8(a2)
    c420:	a60c0028 	sh	t4,40(s0)
    c424:	0c000000 	jal	0 <func_8094F2C0>
    c428:	ae0b0008 	sw	t3,8(s0)
    c42c:	3c0140e0 	lui	at,0x40e0
    c430:	44812000 	mtc1	at,$f4
    c434:	87a4004e 	lh	a0,78(sp)
    c438:	46040182 	mul.s	$f6,$f0,$f4
    c43c:	0c000000 	jal	0 <func_8094F2C0>
    c440:	e7a60038 	swc1	$f6,56(sp)
    c444:	c7a80038 	lwc1	$f8,56(sp)
    c448:	3c014080 	lui	at,0x4080
    c44c:	44816000 	mtc1	at,$f12
    c450:	46080282 	mul.s	$f10,$f0,$f8
    c454:	0c000000 	jal	0 <func_8094F2C0>
    c458:	e7aa0020 	swc1	$f10,32(sp)
    c45c:	3c014080 	lui	at,0x4080
    c460:	44818000 	mtc1	at,$f16
    c464:	87a4004e 	lh	a0,78(sp)
    c468:	46100480 	add.s	$f18,$f0,$f16
    c46c:	0c000000 	jal	0 <func_8094F2C0>
    c470:	e7b20024 	swc1	$f18,36(sp)
    c474:	c7a40038 	lwc1	$f4,56(sp)
    c478:	27ad0020 	addiu	t5,sp,32
    c47c:	3c010000 	lui	at,0x0
    c480:	46040182 	mul.s	$f6,$f0,$f4
    c484:	e7a60028 	swc1	$f6,40(sp)
    c488:	8daf0000 	lw	t7,0(t5)
    c48c:	ae0f000c 	sw	t7,12(s0)
    c490:	8dae0004 	lw	t6,4(t5)
    c494:	ae0e0010 	sw	t6,16(s0)
    c498:	8daf0008 	lw	t7,8(t5)
    c49c:	ae0f0014 	sw	t7,20(s0)
    c4a0:	0c000000 	jal	0 <func_8094F2C0>
    c4a4:	c42c0000 	lwc1	$f12,0(at)
    c4a8:	3c013f80 	lui	at,0x3f80
    c4ac:	44814000 	mtc1	at,$f8
    c4b0:	27b8002c 	addiu	t8,sp,44
    c4b4:	3c090000 	lui	t1,0x0
    c4b8:	46080281 	sub.s	$f10,$f0,$f8
    c4bc:	240a0014 	li	t2,20
    c4c0:	240b003c 	li	t3,60
    c4c4:	240c0064 	li	t4,100
    c4c8:	e7aa0030 	swc1	$f10,48(sp)
    c4cc:	8f080000 	lw	t0,0(t8)
    c4d0:	240d00c8 	li	t5,200
    c4d4:	ae080018 	sw	t0,24(s0)
    c4d8:	8f190004 	lw	t9,4(t8)
    c4dc:	ae19001c 	sw	t9,28(s0)
    c4e0:	8f080008 	lw	t0,8(t8)
    c4e4:	ae080020 	sw	t0,32(s0)
    c4e8:	81290000 	lb	t1,0(t1)
    c4ec:	29210014 	slti	at,t1,20
    c4f0:	50200004 	beqzl	at,c504 <func_8095B670+0x154>
    c4f4:	a60b0026 	sh	t3,38(s0)
    c4f8:	10000002 	b	c504 <func_8095B670+0x154>
    c4fc:	a60a0026 	sh	t2,38(s0)
    c500:	a60b0026 	sh	t3,38(s0)
    c504:	a60c003e 	sh	t4,62(s0)
    c508:	a60d0036 	sh	t5,54(s0)
    c50c:	87ae0052 	lh	t6,82(sp)
    c510:	3c010000 	lui	at,0x0
    c514:	c4240000 	lwc1	$f4,0(at)
    c518:	448e8000 	mtc1	t6,$f16
    c51c:	00000000 	nop
    c520:	468084a0 	cvt.s.w	$f18,$f16
    c524:	46049182 	mul.s	$f6,$f18,$f4
    c528:	10000003 	b	c538 <func_8095B670+0x188>
    c52c:	e6060040 	swc1	$f6,64(s0)
    c530:	1443ffb0 	bne	v0,v1,c3f4 <func_8095B670+0x44>
    c534:	26100058 	addiu	s0,s0,88
    c538:	8fbf001c 	lw	ra,28(sp)
    c53c:	8fb00018 	lw	s0,24(sp)
    c540:	27bd0040 	addiu	sp,sp,64
    c544:	03e00008 	jr	ra
    c548:	00000000 	nop

0000c54c <func_8095B80C>:
    c54c:	27bdffc0 	addiu	sp,sp,-64
    c550:	3c0e0000 	lui	t6,0x0
    c554:	afbf001c 	sw	ra,28(sp)
    c558:	afa40040 	sw	a0,64(sp)
    c55c:	25ce0000 	addiu	t6,t6,0
    c560:	8dd80000 	lw	t8,0(t6)
    c564:	27a80034 	addiu	t0,sp,52
    c568:	00001025 	move	v0,zero
    c56c:	ad180000 	sw	t8,0(t0)
    c570:	8dcf0004 	lw	t7,4(t6)
    c574:	24090007 	li	t1,7
    c578:	ad0f0004 	sw	t7,4(t0)
    c57c:	8dd80008 	lw	t8,8(t6)
    c580:	ad180008 	sw	t8,8(t0)
    c584:	90b90024 	lbu	t9,36(a1)
    c588:	57200050 	bnezl	t9,c6cc <func_8095B80C+0x180>
    c58c:	24420001 	addiu	v0,v0,1
    c590:	a0a90024 	sb	t1,36(a1)
    c594:	aca60054 	sw	a2,84(a1)
    c598:	8d0b0000 	lw	t3,0(t0)
    c59c:	3c0c0000 	lui	t4,0x0
    c5a0:	258c0000 	addiu	t4,t4,0
    c5a4:	acab0000 	sw	t3,0(a1)
    c5a8:	8d0a0004 	lw	t2,4(t0)
    c5ac:	27a30024 	addiu	v1,sp,36
    c5b0:	acaa0004 	sw	t2,4(a1)
    c5b4:	8d0b0008 	lw	t3,8(t0)
    c5b8:	acab0008 	sw	t3,8(a1)
    c5bc:	8d8e0000 	lw	t6,0(t4)
    c5c0:	ac6e0000 	sw	t6,0(v1)
    c5c4:	8d8d0004 	lw	t5,4(t4)
    c5c8:	8c780000 	lw	t8,0(v1)
    c5cc:	ac6d0004 	sw	t5,4(v1)
    c5d0:	8d8e0008 	lw	t6,8(t4)
    c5d4:	ac6e0008 	sw	t6,8(v1)
    c5d8:	acb80018 	sw	t8,24(a1)
    c5dc:	8c6f0004 	lw	t7,4(v1)
    c5e0:	acaf001c 	sw	t7,28(a1)
    c5e4:	8c780008 	lw	t8,8(v1)
    c5e8:	acb80020 	sw	t8,32(a1)
    c5ec:	8c690000 	lw	t1,0(v1)
    c5f0:	aca9000c 	sw	t1,12(a1)
    c5f4:	8c790004 	lw	t9,4(v1)
    c5f8:	acb90010 	sw	t9,16(a1)
    c5fc:	8c690008 	lw	t1,8(v1)
    c600:	aca90014 	sw	t1,20(a1)
    c604:	93a40057 	lbu	a0,87(sp)
    c608:	a4a0002e 	sh	zero,46(a1)
    c60c:	a4a40028 	sh	a0,40(a1)
    c610:	c4e40000 	lwc1	$f4,0(a3)
    c614:	e4a40048 	swc1	$f4,72(a1)
    c618:	c4e60008 	lwc1	$f6,8(a3)
    c61c:	e4a60050 	swc1	$f6,80(a1)
    c620:	c4e80004 	lwc1	$f8,4(a3)
    c624:	e4a8004c 	swc1	$f8,76(a1)
    c628:	afa50044 	sw	a1,68(sp)
    c62c:	a7a20032 	sh	v0,50(sp)
    c630:	0c000000 	jal	0 <func_8094F2C0>
    c634:	afa40020 	sw	a0,32(sp)
    c638:	3c014120 	lui	at,0x4120
    c63c:	44815000 	mtc1	at,$f10
    c640:	8fa50044 	lw	a1,68(sp)
    c644:	87a20032 	lh	v0,50(sp)
    c648:	460a0402 	mul.s	$f16,$f0,$f10
    c64c:	8fa40020 	lw	a0,32(sp)
    c650:	240f0064 	li	t7,100
    c654:	a4af003e 	sh	t7,62(a1)
    c658:	3c010000 	lui	at,0x0
    c65c:	3c070000 	lui	a3,0x0
    c660:	3c090000 	lui	t1,0x0
    c664:	4600848d 	trunc.w.s	$f18,$f16
    c668:	44808000 	mtc1	zero,$f16
    c66c:	30590003 	andi	t9,v0,0x3
    c670:	24e70000 	addiu	a3,a3,0
    c674:	440d9000 	mfc1	t5,$f18
    c678:	25290000 	addiu	t1,t1,0
    c67c:	24060004 	li	a2,4
    c680:	25ae000a 	addiu	t6,t5,10
    c684:	a4ae0026 	sh	t6,38(a1)
    c688:	87b80052 	lh	t8,82(sp)
    c68c:	c4280000 	lwc1	$f8,0(at)
    c690:	24010002 	li	at,2
    c694:	44982000 	mtc1	t8,$f4
    c698:	e4b00040 	swc1	$f16,64(a1)
    c69c:	468021a0 	cvt.s.w	$f6,$f4
    c6a0:	46083282 	mul.s	$f10,$f6,$f8
    c6a4:	13200002 	beqz	t9,c6b0 <func_8095B80C+0x164>
    c6a8:	e4aa0044 	swc1	$f10,68(a1)
    c6ac:	1481000c 	bne	a0,at,c6e0 <func_8095B80C+0x194>
    c6b0:	2404393f 	li	a0,14655
    c6b4:	afa70010 	sw	a3,16(sp)
    c6b8:	0c000000 	jal	0 <func_8094F2C0>
    c6bc:	afa90014 	sw	t1,20(sp)
    c6c0:	10000008 	b	c6e4 <func_8095B80C+0x198>
    c6c4:	8fbf001c 	lw	ra,28(sp)
    c6c8:	24420001 	addiu	v0,v0,1
    c6cc:	00021400 	sll	v0,v0,0x10
    c6d0:	00021403 	sra	v0,v0,0x10
    c6d4:	28410190 	slti	at,v0,400
    c6d8:	1420ffaa 	bnez	at,c584 <func_8095B80C+0x38>
    c6dc:	24a50058 	addiu	a1,a1,88
    c6e0:	8fbf001c 	lw	ra,28(sp)
    c6e4:	27bd0040 	addiu	sp,sp,64
    c6e8:	03e00008 	jr	ra
    c6ec:	00000000 	nop

0000c6f0 <func_8095B9B0>:
    c6f0:	27bdffb0 	addiu	sp,sp,-80
    c6f4:	3c0f0000 	lui	t7,0x0
    c6f8:	afbf001c 	sw	ra,28(sp)
    c6fc:	afb00018 	sw	s0,24(sp)
    c700:	afa40050 	sw	a0,80(sp)
    c704:	afa7005c 	sw	a3,92(sp)
    c708:	25ef0000 	addiu	t7,t7,0
    c70c:	8df90000 	lw	t9,0(t7)
    c710:	27ae003c 	addiu	t6,sp,60
    c714:	8df80004 	lw	t8,4(t7)
    c718:	add90000 	sw	t9,0(t6)
    c71c:	8df90008 	lw	t9,8(t7)
    c720:	00a08025 	move	s0,a1
    c724:	00001025 	move	v0,zero
    c728:	24030190 	li	v1,400
    c72c:	add80004 	sw	t8,4(t6)
    c730:	add90008 	sw	t9,8(t6)
    c734:	92080024 	lbu	t0,36(s0)
    c738:	24420001 	addiu	v0,v0,1
    c73c:	1500006d 	bnez	t0,c8f4 <func_8095B9B0+0x204>
    c740:	24090008 	li	t1,8
    c744:	a2090024 	sb	t1,36(s0)
    c748:	8ccb0000 	lw	t3,0(a2)
    c74c:	44802000 	mtc1	zero,$f4
    c750:	ae0b0000 	sw	t3,0(s0)
    c754:	8cca0004 	lw	t2,4(a2)
    c758:	ae0a0004 	sw	t2,4(s0)
    c75c:	8ccb0008 	lw	t3,8(a2)
    c760:	e6040044 	swc1	$f4,68(s0)
    c764:	0c000000 	jal	0 <func_8094F2C0>
    c768:	ae0b0008 	sw	t3,8(s0)
    c76c:	3c014080 	lui	at,0x4080
    c770:	44811000 	mtc1	at,$f2
    c774:	87a4005e 	lh	a0,94(sp)
    c778:	46020182 	mul.s	$f6,$f0,$f2
    c77c:	46023200 	add.s	$f8,$f6,$f2
    c780:	0c000000 	jal	0 <func_8094F2C0>
    c784:	e7a80048 	swc1	$f8,72(sp)
    c788:	c7aa0048 	lwc1	$f10,72(sp)
    c78c:	3c014100 	lui	at,0x4100
    c790:	44816000 	mtc1	at,$f12
    c794:	460a0402 	mul.s	$f16,$f0,$f10
    c798:	0c000000 	jal	0 <func_8094F2C0>
    c79c:	e7b00030 	swc1	$f16,48(sp)
    c7a0:	e7a00034 	swc1	$f0,52(sp)
    c7a4:	0c000000 	jal	0 <func_8094F2C0>
    c7a8:	87a4005e 	lh	a0,94(sp)
    c7ac:	c7b20048 	lwc1	$f18,72(sp)
    c7b0:	27ac0030 	addiu	t4,sp,48
    c7b4:	3c010000 	lui	at,0x0
    c7b8:	46120102 	mul.s	$f4,$f0,$f18
    c7bc:	e7a40038 	swc1	$f4,56(sp)
    c7c0:	8d8e0000 	lw	t6,0(t4)
    c7c4:	ae0e000c 	sw	t6,12(s0)
    c7c8:	8d8d0004 	lw	t5,4(t4)
    c7cc:	ae0d0010 	sw	t5,16(s0)
    c7d0:	8d8e0008 	lw	t6,8(t4)
    c7d4:	ae0e0014 	sw	t6,20(s0)
    c7d8:	0c000000 	jal	0 <func_8094F2C0>
    c7dc:	c42c0000 	lwc1	$f12,0(at)
    c7e0:	3c013f80 	lui	at,0x3f80
    c7e4:	44813000 	mtc1	at,$f6
    c7e8:	27af003c 	addiu	t7,sp,60
    c7ec:	24080014 	li	t0,20
    c7f0:	46060201 	sub.s	$f8,$f0,$f6
    c7f4:	3c090000 	lui	t1,0x0
    c7f8:	240a0002 	li	t2,2
    c7fc:	240b00ff 	li	t3,255
    c800:	e7a80040 	swc1	$f8,64(sp)
    c804:	8df90000 	lw	t9,0(t7)
    c808:	240c009b 	li	t4,155
    c80c:	240d0037 	li	t5,55
    c810:	ae190018 	sw	t9,24(s0)
    c814:	8df80004 	lw	t8,4(t7)
    c818:	ae18001c 	sw	t8,28(s0)
    c81c:	8df90008 	lw	t9,8(t7)
    c820:	a6080026 	sh	t0,38(s0)
    c824:	ae190020 	sw	t9,32(s0)
    c828:	81290000 	lb	t1,0(t1)
    c82c:	29210014 	slti	at,t1,20
    c830:	50200004 	beqzl	at,c844 <func_8095B9B0+0x154>
    c834:	a6000028 	sh	zero,40(s0)
    c838:	10000002 	b	c844 <func_8095B9B0+0x154>
    c83c:	a60a0028 	sh	t2,40(s0)
    c840:	a6000028 	sh	zero,40(s0)
    c844:	a60b003e 	sh	t3,62(s0)
    c848:	8602003e 	lh	v0,62(s0)
    c84c:	a60d0034 	sh	t5,52(s0)
    c850:	860e0034 	lh	t6,52(s0)
    c854:	3c014780 	lui	at,0x4780
    c858:	44816000 	mtc1	at,$f12
    c85c:	a60c0030 	sh	t4,48(s0)
    c860:	a602003c 	sh	v0,60(s0)
    c864:	a602003a 	sh	v0,58(s0)
    c868:	a6020038 	sh	v0,56(s0)
    c86c:	a6020036 	sh	v0,54(s0)
    c870:	0c000000 	jal	0 <func_8094F2C0>
    c874:	a60e0032 	sh	t6,50(s0)
    c878:	4600028d 	trunc.w.s	$f10,$f0
    c87c:	3c014780 	lui	at,0x4780
    c880:	44816000 	mtc1	at,$f12
    c884:	44185000 	mfc1	t8,$f10
    c888:	0c000000 	jal	0 <func_8094F2C0>
    c88c:	a618002a 	sh	t8,42(s0)
    c890:	4600040d 	trunc.w.s	$f16,$f0
    c894:	44088000 	mfc1	t0,$f16
    c898:	00000000 	nop
    c89c:	a608002c 	sh	t0,44(s0)
    c8a0:	87a90062 	lh	t1,98(sp)
    c8a4:	44899000 	mtc1	t1,$f18
    c8a8:	00000000 	nop
    c8ac:	46809320 	cvt.s.w	$f12,$f18
    c8b0:	0c000000 	jal	0 <func_8094F2C0>
    c8b4:	e7ac0024 	swc1	$f12,36(sp)
    c8b8:	c7ac0024 	lwc1	$f12,36(sp)
    c8bc:	3c010000 	lui	at,0x0
    c8c0:	c4260000 	lwc1	$f6,0(at)
    c8c4:	460c0100 	add.s	$f4,$f0,$f12
    c8c8:	46062202 	mul.s	$f8,$f4,$f6
    c8cc:	0c000000 	jal	0 <func_8094F2C0>
    c8d0:	e6080040 	swc1	$f8,64(s0)
    c8d4:	3c013e80 	lui	at,0x3e80
    c8d8:	44815000 	mtc1	at,$f10
    c8dc:	3c010000 	lui	at,0x0
    c8e0:	c4320000 	lwc1	$f18,0(at)
    c8e4:	460a0402 	mul.s	$f16,$f0,$f10
    c8e8:	46128100 	add.s	$f4,$f16,$f18
    c8ec:	10000003 	b	c8fc <func_8095B9B0+0x20c>
    c8f0:	e604004c 	swc1	$f4,76(s0)
    c8f4:	1443ff8f 	bne	v0,v1,c734 <func_8095B9B0+0x44>
    c8f8:	26100058 	addiu	s0,s0,88
    c8fc:	8fbf001c 	lw	ra,28(sp)
    c900:	8fb00018 	lw	s0,24(sp)
    c904:	27bd0050 	addiu	sp,sp,80
    c908:	03e00008 	jr	ra
    c90c:	00000000 	nop

0000c910 <func_8095BBD0>:
    c910:	27bdffc8 	addiu	sp,sp,-56
    c914:	3c0f0000 	lui	t7,0x0
    c918:	afbf0014 	sw	ra,20(sp)
    c91c:	afa40038 	sw	a0,56(sp)
    c920:	25ef0000 	addiu	t7,t7,0
    c924:	8df90000 	lw	t9,0(t7)
    c928:	27ae002c 	addiu	t6,sp,44
    c92c:	8df80004 	lw	t8,4(t7)
    c930:	add90000 	sw	t9,0(t6)
    c934:	8df90008 	lw	t9,8(t7)
    c938:	00001025 	move	v0,zero
    c93c:	add80004 	sw	t8,4(t6)
    c940:	add90008 	sw	t9,8(t6)
    c944:	90a80024 	lbu	t0,36(a1)
    c948:	24420001 	addiu	v0,v0,1
    c94c:	00021400 	sll	v0,v0,0x10
    c950:	1500003d 	bnez	t0,ca48 <func_8095BBD0+0x138>
    c954:	00021403 	sra	v0,v0,0x10
    c958:	8fa30048 	lw	v1,72(sp)
    c95c:	24090005 	li	t1,5
    c960:	a0a90024 	sb	t1,36(a1)
    c964:	aca60054 	sw	a2,84(a1)
    c968:	8ceb0000 	lw	t3,0(a3)
    c96c:	3c0c0000 	lui	t4,0x0
    c970:	258c0000 	addiu	t4,t4,0
    c974:	acab0000 	sw	t3,0(a1)
    c978:	8cea0004 	lw	t2,4(a3)
    c97c:	27a2001c 	addiu	v0,sp,28
    c980:	acaa0004 	sw	t2,4(a1)
    c984:	8ceb0008 	lw	t3,8(a3)
    c988:	acab0008 	sw	t3,8(a1)
    c98c:	8d8e0000 	lw	t6,0(t4)
    c990:	ac4e0000 	sw	t6,0(v0)
    c994:	8d8d0004 	lw	t5,4(t4)
    c998:	8c580000 	lw	t8,0(v0)
    c99c:	ac4d0004 	sw	t5,4(v0)
    c9a0:	8d8e0008 	lw	t6,8(t4)
    c9a4:	ac4e0008 	sw	t6,8(v0)
    c9a8:	acb80018 	sw	t8,24(a1)
    c9ac:	8c4f0004 	lw	t7,4(v0)
    c9b0:	acaf001c 	sw	t7,28(a1)
    c9b4:	8c580008 	lw	t8,8(v0)
    c9b8:	acb80020 	sw	t8,32(a1)
    c9bc:	8c480000 	lw	t0,0(v0)
    c9c0:	aca8000c 	sw	t0,12(a1)
    c9c4:	8c590004 	lw	t9,4(v0)
    c9c8:	acb90010 	sw	t9,16(a1)
    c9cc:	8c480008 	lw	t0,8(v0)
    c9d0:	aca80014 	sw	t0,20(a1)
    c9d4:	93a90053 	lbu	t1,83(sp)
    c9d8:	a4a90028 	sh	t1,40(a1)
    c9dc:	846a0000 	lh	t2,0(v1)
    c9e0:	254b4000 	addiu	t3,t2,16384
    c9e4:	a4ab002a 	sh	t3,42(a1)
    c9e8:	846c0002 	lh	t4,2(v1)
    c9ec:	a4ac002c 	sh	t4,44(a1)
    c9f0:	0c000000 	jal	0 <func_8094F2C0>
    c9f4:	afa5003c 	sw	a1,60(sp)
    c9f8:	3c014120 	lui	at,0x4120
    c9fc:	44812000 	mtc1	at,$f4
    ca00:	8fa5003c 	lw	a1,60(sp)
    ca04:	240800f0 	li	t0,240
    ca08:	46040182 	mul.s	$f6,$f0,$f4
    ca0c:	a4a80036 	sh	t0,54(a1)
    ca10:	3c010000 	lui	at,0x0
    ca14:	4600320d 	trunc.w.s	$f8,$f6
    ca18:	44184000 	mfc1	t8,$f8
    ca1c:	00000000 	nop
    ca20:	2719000a 	addiu	t9,t8,10
    ca24:	a4b90026 	sh	t9,38(a1)
    ca28:	87a9004e 	lh	t1,78(sp)
    ca2c:	c4320000 	lwc1	$f18,0(at)
    ca30:	44895000 	mtc1	t1,$f10
    ca34:	00000000 	nop
    ca38:	46805420 	cvt.s.w	$f16,$f10
    ca3c:	46128102 	mul.s	$f4,$f16,$f18
    ca40:	10000004 	b	ca54 <func_8095BBD0+0x144>
    ca44:	e4a40040 	swc1	$f4,64(a1)
    ca48:	28410190 	slti	at,v0,400
    ca4c:	1420ffbd 	bnez	at,c944 <func_8095BBD0+0x34>
    ca50:	24a50058 	addiu	a1,a1,88
    ca54:	8fbf0014 	lw	ra,20(sp)
    ca58:	27bd0038 	addiu	sp,sp,56
    ca5c:	03e00008 	jr	ra
    ca60:	00000000 	nop

0000ca64 <func_8095BD24>:
    ca64:	27bdff28 	addiu	sp,sp,-216
    ca68:	afb00038 	sw	s0,56(sp)
    ca6c:	f7b60020 	sdc1	$f22,32(sp)
    ca70:	00058400 	sll	s0,a1,0x10
    ca74:	afbf005c 	sw	ra,92(sp)
    ca78:	afbe0058 	sw	s8,88(sp)
    ca7c:	afb70054 	sw	s7,84(sp)
    ca80:	afb60050 	sw	s6,80(sp)
    ca84:	afb5004c 	sw	s5,76(sp)
    ca88:	afb40048 	sw	s4,72(sp)
    ca8c:	afb30044 	sw	s3,68(sp)
    ca90:	afb20040 	sw	s2,64(sp)
    ca94:	afb1003c 	sw	s1,60(sp)
    ca98:	f7ba0030 	sdc1	$f26,48(sp)
    ca9c:	f7b80028 	sdc1	$f24,40(sp)
    caa0:	f7b40018 	sdc1	$f20,24(sp)
    caa4:	afa400d8 	sw	a0,216(sp)
    caa8:	afa500dc 	sw	a1,220(sp)
    caac:	4480b000 	mtc1	zero,$f22
    cab0:	8c850000 	lw	a1,0(a0)
    cab4:	3c060000 	lui	a2,0x0
    cab8:	00108403 	sra	s0,s0,0x10
    cabc:	24c60000 	addiu	a2,a2,0
    cac0:	27a40078 	addiu	a0,sp,120
    cac4:	240715e0 	li	a3,5600
    cac8:	4600b506 	mov.s	$f20,$f22
    cacc:	0c000000 	jal	0 <func_8094F2C0>
    cad0:	00a09825 	move	s3,a1
    cad4:	3c0142a0 	lui	at,0x42a0
    cad8:	44817000 	mtc1	at,$f14
    cadc:	4600b306 	mov.s	$f12,$f22
    cae0:	3c0643c8 	lui	a2,0x43c8
    cae4:	0c000000 	jal	0 <func_8094F2C0>
    cae8:	00003825 	move	a3,zero
    caec:	3c010000 	lui	at,0x0
    caf0:	c42c0000 	lwc1	$f12,0(at)
    caf4:	0c000000 	jal	0 <func_8094F2C0>
    caf8:	24050001 	li	a1,1
    cafc:	44902000 	mtc1	s0,$f4
    cb00:	3c010000 	lui	at,0x0
    cb04:	c42c0000 	lwc1	$f12,0(at)
    cb08:	468021a0 	cvt.s.w	$f6,$f4
    cb0c:	3c010000 	lui	at,0x0
    cb10:	c4280000 	lwc1	$f8,0(at)
    cb14:	44066000 	mfc1	a2,$f12
    cb18:	24070001 	li	a3,1
    cb1c:	46083282 	mul.s	$f10,$f6,$f8
    cb20:	00000000 	nop
    cb24:	460c5602 	mul.s	$f24,$f10,$f12
    cb28:	0c000000 	jal	0 <func_8094F2C0>
    cb2c:	4600c386 	mov.s	$f14,$f24
    cb30:	4616c032 	c.eq.s	$f24,$f22
    cb34:	3c010000 	lui	at,0x0
    cb38:	c42c0000 	lwc1	$f12,0(at)
    cb3c:	27be0098 	addiu	s8,sp,152
    cb40:	45030004 	bc1tl	cb54 <func_8095BD24+0xf0>
    cb44:	4600b686 	mov.s	$f26,$f22
    cb48:	10000002 	b	cb54 <func_8095BD24+0xf0>
    cb4c:	46186683 	div.s	$f26,$f12,$f24
    cb50:	4600b686 	mov.s	$f26,$f22
    cb54:	0c000000 	jal	0 <func_8094F2C0>
    cb58:	03c02025 	move	a0,s8
    cb5c:	3c120000 	lui	s2,0x0
    cb60:	3c110000 	lui	s1,0x0
    cb64:	3c010000 	lui	at,0x0
    cb68:	3c170000 	lui	s7,0x0
    cb6c:	3c150000 	lui	s5,0x0
    cb70:	3c14da38 	lui	s4,0xda38
    cb74:	36940003 	ori	s4,s4,0x3
    cb78:	26b50000 	addiu	s5,s5,0
    cb7c:	26f70000 	addiu	s7,s7,0
    cb80:	c4380000 	lwc1	$f24,0(at)
    cb84:	26310000 	addiu	s1,s1,0
    cb88:	26520000 	addiu	s2,s2,0
    cb8c:	3c16de00 	lui	s6,0xde00
    cb90:	0c000000 	jal	0 <func_8094F2C0>
    cb94:	03c02025 	move	a0,s8
    cb98:	4600a306 	mov.s	$f12,$f20
    cb9c:	0c000000 	jal	0 <func_8094F2C0>
    cba0:	24050001 	li	a1,1
    cba4:	864f0000 	lh	t7,0(s2)
    cba8:	4406b000 	mfc1	a2,$f22
    cbac:	4600b306 	mov.s	$f12,$f22
    cbb0:	448f8000 	mtc1	t7,$f16
    cbb4:	24070001 	li	a3,1
    cbb8:	468084a0 	cvt.s.w	$f18,$f16
    cbbc:	461a9382 	mul.s	$f14,$f18,$f26
    cbc0:	0c000000 	jal	0 <func_8094F2C0>
    cbc4:	00000000 	nop
    cbc8:	8e6202c0 	lw	v0,704(s3)
    cbcc:	02a02825 	move	a1,s5
    cbd0:	240615f5 	li	a2,5621
    cbd4:	24580008 	addiu	t8,v0,8
    cbd8:	ae7802c0 	sw	t8,704(s3)
    cbdc:	ac540000 	sw	s4,0(v0)
    cbe0:	8fb900d8 	lw	t9,216(sp)
    cbe4:	00408025 	move	s0,v0
    cbe8:	0c000000 	jal	0 <func_8094F2C0>
    cbec:	8f240000 	lw	a0,0(t9)
    cbf0:	ae020004 	sw	v0,4(s0)
    cbf4:	8e6202c0 	lw	v0,704(s3)
    cbf8:	26310004 	addiu	s1,s1,4
    cbfc:	26520002 	addiu	s2,s2,2
    cc00:	24480008 	addiu	t0,v0,8
    cc04:	ae6802c0 	sw	t0,704(s3)
    cc08:	ac560000 	sw	s6,0(v0)
    cc0c:	8e29fffc 	lw	t1,-4(s1)
    cc10:	4618a501 	sub.s	$f20,$f20,$f24
    cc14:	1637ffde 	bne	s1,s7,cb90 <func_8095BD24+0x12c>
    cc18:	ac490004 	sw	t1,4(v0)
    cc1c:	8faa00d8 	lw	t2,216(sp)
    cc20:	3c060000 	lui	a2,0x0
    cc24:	24c60000 	addiu	a2,a2,0
    cc28:	27a40078 	addiu	a0,sp,120
    cc2c:	240715fd 	li	a3,5629
    cc30:	0c000000 	jal	0 <func_8094F2C0>
    cc34:	8d450000 	lw	a1,0(t2)
    cc38:	8fbf005c 	lw	ra,92(sp)
    cc3c:	d7b40018 	ldc1	$f20,24(sp)
    cc40:	d7b60020 	ldc1	$f22,32(sp)
    cc44:	d7b80028 	ldc1	$f24,40(sp)
    cc48:	d7ba0030 	ldc1	$f26,48(sp)
    cc4c:	8fb00038 	lw	s0,56(sp)
    cc50:	8fb1003c 	lw	s1,60(sp)
    cc54:	8fb20040 	lw	s2,64(sp)
    cc58:	8fb30044 	lw	s3,68(sp)
    cc5c:	8fb40048 	lw	s4,72(sp)
    cc60:	8fb5004c 	lw	s5,76(sp)
    cc64:	8fb60050 	lw	s6,80(sp)
    cc68:	8fb70054 	lw	s7,84(sp)
    cc6c:	8fbe0058 	lw	s8,88(sp)
    cc70:	03e00008 	jr	ra
    cc74:	27bd00d8 	addiu	sp,sp,216
	...
