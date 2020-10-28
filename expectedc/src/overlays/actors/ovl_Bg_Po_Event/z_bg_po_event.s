
build/src/overlays/actors/ovl_Bg_Po_Event/z_bg_po_event.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgPoEvent_InitPaintings>:
       0:	27bdff30 	addiu	sp,sp,-208
       4:	afb00050 	sw	s0,80(sp)
       8:	00808025 	move	s0,a0
       c:	afbf0074 	sw	ra,116(sp)
      10:	afbe0070 	sw	s8,112(sp)
      14:	afb7006c 	sw	s7,108(sp)
      18:	afb60068 	sw	s6,104(sp)
      1c:	afb50064 	sw	s5,100(sp)
      20:	afb40060 	sw	s4,96(sp)
      24:	afb3005c 	sw	s3,92(sp)
      28:	afb20058 	sw	s2,88(sp)
      2c:	afb10054 	sw	s1,84(sp)
      30:	f7b80048 	sdc1	$f24,72(sp)
      34:	f7b60040 	sdc1	$f22,64(sp)
      38:	f7b40038 	sdc1	$f20,56(sp)
      3c:	afa500d4 	sw	a1,212(sp)
      40:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
      44:	848400b6 	lh	a0,182(a0)
      48:	46000506 	mov.s	$f20,$f0
      4c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
      50:	860400b6 	lh	a0,182(s0)
      54:	92080168 	lbu	t0,360(s0)
      58:	24010004 	li	at,4
      5c:	46000586 	mov.s	$f22,$f0
      60:	1501000a 	bne	t0,at,8c <BgPoEvent_InitPaintings+0x8c>
      64:	3c140000 	lui	s4,0x0
      68:	3c010000 	lui	at,0x0
      6c:	c422003c 	lwc1	$f2,60(at)
      70:	3c010000 	lui	at,0x0
      74:	c4380040 	lwc1	$f24,64(at)
      78:	4602a502 	mul.s	$f20,$f20,$f2
      7c:	00000000 	nop
      80:	46020582 	mul.s	$f22,$f0,$f2
      84:	10000004 	b	98 <BgPoEvent_InitPaintings+0x98>
      88:	00000000 	nop
      8c:	3c013f80 	lui	at,0x3f80
      90:	4481c000 	mtc1	at,$f24
      94:	00000000 	nop
      98:	26940098 	addiu	s4,s4,152
      9c:	8e8e0008 	lw	t6,8(s4)
      a0:	00009025 	move	s2,zero
      a4:	00009825 	move	s3,zero
      a8:	19c00046 	blez	t6,1c4 <BgPoEvent_InitPaintings+0x1c4>
      ac:	26150170 	addiu	s5,s0,368
      b0:	27be00b4 	addiu	s8,sp,180
      b4:	27b700a8 	addiu	s7,sp,168
      b8:	27b6009c 	addiu	s6,sp,156
      bc:	27b100c0 	addiu	s1,sp,192
      c0:	8e8f000c 	lw	t7,12(s4)
      c4:	27a3009c 	addiu	v1,sp,156
      c8:	026f1021 	addu	v0,s3,t7
      cc:	c44a0020 	lwc1	$f10,32(v0)
      d0:	2463000c 	addiu	v1,v1,12
      d4:	c6120008 	lwc1	$f18,8(s0)
      d8:	460aa402 	mul.s	$f16,$f20,$f10
      dc:	1071001a 	beq	v1,s1,148 <BgPoEvent_InitPaintings+0x148>
      e0:	c44e0018 	lwc1	$f14,24(v0)
      e4:	46167302 	mul.s	$f12,$f14,$f22
      e8:	46109280 	add.s	$f10,$f18,$f16
      ec:	2463000c 	addiu	v1,v1,12
      f0:	2442000c 	addiu	v0,v0,12
      f4:	460a6280 	add.s	$f10,$f12,$f10
      f8:	e46affe8 	swc1	$f10,-24(v1)
      fc:	c44a0010 	lwc1	$f10,16(v0)
     100:	c60c000c 	lwc1	$f12,12(s0)
     104:	46185282 	mul.s	$f10,$f10,$f24
     108:	460c5300 	add.s	$f12,$f10,$f12
     10c:	e46cffec 	swc1	$f12,-20(v1)
     110:	c44c0014 	lwc1	$f12,20(v0)
     114:	c44a000c 	lwc1	$f10,12(v0)
     118:	c6080010 	lwc1	$f8,16(s0)
     11c:	460cb302 	mul.s	$f12,$f22,$f12
     120:	460c4300 	add.s	$f12,$f8,$f12
     124:	46145282 	mul.s	$f10,$f10,$f20
     128:	460a6281 	sub.s	$f10,$f12,$f10
     12c:	e46afff0 	swc1	$f10,-16(v1)
     130:	c44a0020 	lwc1	$f10,32(v0)
     134:	c6120008 	lwc1	$f18,8(s0)
     138:	c44e0018 	lwc1	$f14,24(v0)
     13c:	460aa402 	mul.s	$f16,$f20,$f10
     140:	1471ffe8 	bne	v1,s1,e4 <BgPoEvent_InitPaintings+0xe4>
     144:	00000000 	nop
     148:	46167302 	mul.s	$f12,$f14,$f22
     14c:	46109280 	add.s	$f10,$f18,$f16
     150:	2442000c 	addiu	v0,v0,12
     154:	460a6280 	add.s	$f10,$f12,$f10
     158:	e46afff4 	swc1	$f10,-12(v1)
     15c:	c44a0010 	lwc1	$f10,16(v0)
     160:	c60c000c 	lwc1	$f12,12(s0)
     164:	46185282 	mul.s	$f10,$f10,$f24
     168:	460c5300 	add.s	$f12,$f10,$f12
     16c:	e46cfff8 	swc1	$f12,-8(v1)
     170:	c44c0014 	lwc1	$f12,20(v0)
     174:	c44a000c 	lwc1	$f10,12(v0)
     178:	c6080010 	lwc1	$f8,16(s0)
     17c:	460cb302 	mul.s	$f12,$f22,$f12
     180:	460c4300 	add.s	$f12,$f8,$f12
     184:	46145282 	mul.s	$f10,$f10,$f20
     188:	460a6281 	sub.s	$f10,$f12,$f10
     18c:	e46afffc 	swc1	$f10,-4(v1)
     190:	02a02025 	move	a0,s5
     194:	02402825 	move	a1,s2
     198:	02c03025 	move	a2,s6
     19c:	02e03825 	move	a3,s7
     1a0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     1a4:	afbe0010 	sw	s8,16(sp)
     1a8:	8e980008 	lw	t8,8(s4)
     1ac:	26520001 	addiu	s2,s2,1
     1b0:	2673003c 	addiu	s3,s3,60
     1b4:	0258082a 	slt	at,s2,t8
     1b8:	5420ffc2 	bnezl	at,c4 <BgPoEvent_InitPaintings+0xc4>
     1bc:	8e8f000c 	lw	t7,12(s4)
     1c0:	92080168 	lbu	t0,360(s0)
     1c4:	24010004 	li	at,4
     1c8:	51010044 	beql	t0,at,2dc <BgPoEvent_InitPaintings+0x2dc>
     1cc:	92190168 	lbu	t9,360(s0)
     1d0:	92090169 	lbu	t1,361(s0)
     1d4:	24020002 	li	v0,2
     1d8:	8fa600d4 	lw	a2,212(sp)
     1dc:	1049003e 	beq	v0,t1,2d8 <BgPoEvent_InitPaintings+0x2d8>
     1e0:	01201825 	move	v1,t1
     1e4:	14480003 	bne	v0,t0,1f4 <BgPoEvent_InitPaintings+0x1f4>
     1e8:	3c0b0000 	lui	t3,0x0
     1ec:	10000002 	b	1f8 <BgPoEvent_InitPaintings+0x1f8>
     1f0:	00605025 	move	t2,v1
     1f4:	246a0002 	addiu	t2,v1,2
     1f8:	000ac840 	sll	t9,t2,0x1
     1fc:	01795821 	addu	t3,t3,t9
     200:	856b00b8 	lh	t3,184(t3)
     204:	00091040 	sll	v0,t1,0x1
     208:	3c0c0000 	lui	t4,0x0
     20c:	448bc000 	mtc1	t3,$f24
     210:	01826021 	addu	t4,t4,v0
     214:	858c00c0 	lh	t4,192(t4)
     218:	4680c620 	cvt.s.w	$f24,$f24
     21c:	3c0d0000 	lui	t5,0x0
     220:	448cb000 	mtc1	t4,$f22
     224:	01a26821 	addu	t5,t5,v0
     228:	85ad00c4 	lh	t5,196(t5)
     22c:	4680b5a0 	cvt.s.w	$f22,$f22
     230:	e7b80010 	swc1	$f24,16(sp)
     234:	448dc000 	mtc1	t5,$f24
     238:	afa0001c 	sw	zero,28(sp)
     23c:	34018000 	li	at,0x8000
     240:	4680c620 	cvt.s.w	$f24,$f24
     244:	e7b60014 	swc1	$f22,20(sp)
     248:	24780001 	addiu	t8,v1,1
     24c:	0018cb00 	sll	t9,t8,0xc
     250:	00085a00 	sll	t3,t0,0x8
     254:	032b6021 	addu	t4,t9,t3
     258:	e7b80018 	swc1	$f24,24(sp)
     25c:	860e00b6 	lh	t6,182(s0)
     260:	afa00024 	sw	zero,36(sp)
     264:	24c41c24 	addiu	a0,a2,7204
     268:	01c17821 	addu	t7,t6,at
     26c:	afaf0020 	sw	t7,32(sp)
     270:	860d001c 	lh	t5,28(s0)
     274:	02002825 	move	a1,s0
     278:	24070093 	li	a3,147
     27c:	018d7021 	addu	t6,t4,t5
     280:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     284:	afae0028 	sw	t6,40(sp)
     288:	54400006 	bnezl	v0,2a4 <BgPoEvent_InitPaintings+0x2a4>
     28c:	920f0169 	lbu	t7,361(s0)
     290:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     294:	02002025 	move	a0,s0
     298:	1000002a 	b	344 <BgPoEvent_InitPaintings+0x344>
     29c:	8fbf0074 	lw	ra,116(sp)
     2a0:	920f0169 	lbu	t7,361(s0)
     2a4:	55e0000d 	bnezl	t7,2dc <BgPoEvent_InitPaintings+0x2dc>
     2a8:	92190168 	lbu	t9,360(s0)
     2ac:	8e02011c 	lw	v0,284(s0)
     2b0:	8c43011c 	lw	v1,284(v0)
     2b4:	54600006 	bnezl	v1,2d0 <BgPoEvent_InitPaintings+0x2d0>
     2b8:	ae030118 	sw	v1,280(s0)
     2bc:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     2c0:	02002025 	move	a0,s0
     2c4:	1000001f 	b	344 <BgPoEvent_InitPaintings+0x344>
     2c8:	8fbf0074 	lw	ra,116(sp)
     2cc:	ae030118 	sw	v1,280(s0)
     2d0:	8c58011c 	lw	t8,284(v0)
     2d4:	af10011c 	sw	s0,284(t8)
     2d8:	92190168 	lbu	t9,360(s0)
     2dc:	24010004 	li	at,4
     2e0:	a600016c 	sh	zero,364(s0)
     2e4:	17210006 	bne	t9,at,300 <BgPoEvent_InitPaintings+0x300>
     2e8:	3c0b0000 	lui	t3,0x0
     2ec:	3c010000 	lui	at,0x0
     2f0:	a0200000 	sb	zero,0(at)
     2f4:	256b0000 	addiu	t3,t3,0
     2f8:	10000011 	b	340 <BgPoEvent_InitPaintings+0x340>
     2fc:	ae0b0164 	sw	t3,356(s0)
     300:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     304:	00000000 	nop
     308:	3c014040 	lui	at,0x4040
     30c:	44815000 	mtc1	at,$f10
     310:	24010003 	li	at,3
     314:	3c0f0000 	lui	t7,0x0
     318:	460a0102 	mul.s	$f4,$f0,$f10
     31c:	25ef0000 	addiu	t7,t7,0
     320:	4600240d 	trunc.w.s	$f16,$f4
     324:	440d8000 	mfc1	t5,$f16
     328:	00000000 	nop
     32c:	01a1001a 	div	zero,t5,at
     330:	00007010 	mfhi	t6
     334:	3c010000 	lui	at,0x0
     338:	a02e0000 	sb	t6,0(at)
     33c:	ae0f0164 	sw	t7,356(s0)
     340:	8fbf0074 	lw	ra,116(sp)
     344:	d7b40038 	ldc1	$f20,56(sp)
     348:	d7b60040 	ldc1	$f22,64(sp)
     34c:	d7b80048 	ldc1	$f24,72(sp)
     350:	8fb00050 	lw	s0,80(sp)
     354:	8fb10054 	lw	s1,84(sp)
     358:	8fb20058 	lw	s2,88(sp)
     35c:	8fb3005c 	lw	s3,92(sp)
     360:	8fb40060 	lw	s4,96(sp)
     364:	8fb50064 	lw	s5,100(sp)
     368:	8fb60068 	lw	s6,104(sp)
     36c:	8fb7006c 	lw	s7,108(sp)
     370:	8fbe0070 	lw	s8,112(sp)
     374:	03e00008 	jr	ra
     378:	27bd00d0 	addiu	sp,sp,208

0000037c <BgPoEvent_InitBlocks>:
     37c:	27bdffa0 	addiu	sp,sp,-96
     380:	afbf003c 	sw	ra,60(sp)
     384:	afb10038 	sw	s1,56(sp)
     388:	afb00034 	sw	s0,52(sp)
     38c:	afa00058 	sw	zero,88(sp)
     390:	8c8e0004 	lw	t6,4(a0)
     394:	00808025 	move	s0,a0
     398:	00a08825 	move	s1,a1
     39c:	35cf0030 	ori	t7,t6,0x30
     3a0:	ac8f0004 	sw	t7,4(a0)
     3a4:	3c040000 	lui	a0,0x0
     3a8:	24840000 	addiu	a0,a0,0
     3ac:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     3b0:	27a50058 	addiu	a1,sp,88
     3b4:	02202025 	move	a0,s1
     3b8:	26250810 	addiu	a1,s1,2064
     3bc:	02003025 	move	a2,s0
     3c0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     3c4:	8fa70058 	lw	a3,88(sp)
     3c8:	92030168 	lbu	v1,360(s0)
     3cc:	ae02014c 	sw	v0,332(s0)
     3d0:	14600043 	bnez	v1,4e0 <BgPoEvent_InitBlocks+0x164>
     3d4:	00000000 	nop
     3d8:	92080169 	lbu	t0,361(s0)
     3dc:	24010003 	li	at,3
     3e0:	3c180000 	lui	t8,0x0
     3e4:	1101003e 	beq	t0,at,4e0 <BgPoEvent_InitBlocks+0x164>
     3e8:	00081040 	sll	v0,t0,0x1
     3ec:	0302c021 	addu	t8,t8,v0
     3f0:	871800c8 	lh	t8,200(t8)
     3f4:	3c190000 	lui	t9,0x0
     3f8:	0322c821 	addu	t9,t9,v0
     3fc:	44982000 	mtc1	t8,$f4
     400:	873900d0 	lh	t9,208(t9)
     404:	250d0001 	addiu	t5,t0,1
     408:	468021a0 	cvt.s.w	$f6,$f4
     40c:	44995000 	mtc1	t9,$f10
     410:	000d7300 	sll	t6,t5,0xc
     414:	00037a00 	sll	t7,v1,0x8
     418:	01cfc021 	addu	t8,t6,t7
     41c:	46805420 	cvt.s.w	$f16,$f10
     420:	e7a60010 	swc1	$f6,16(sp)
     424:	c6080028 	lwc1	$f8,40(s0)
     428:	afa0001c 	sw	zero,28(sp)
     42c:	26241c24 	addiu	a0,s1,7204
     430:	e7a80014 	swc1	$f8,20(sp)
     434:	e7b00018 	swc1	$f16,24(sp)
     438:	860a00b6 	lh	t2,182(s0)
     43c:	02002825 	move	a1,s0
     440:	02203025 	move	a2,s1
     444:	afaa0020 	sw	t2,32(sp)
     448:	860b00b8 	lh	t3,184(s0)
     44c:	24070093 	li	a3,147
     450:	256cc000 	addiu	t4,t3,-16384
     454:	afac0024 	sw	t4,36(sp)
     458:	8619001c 	lh	t9,28(s0)
     45c:	03195021 	addu	t2,t8,t9
     460:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     464:	afaa0028 	sw	t2,40(sp)
     468:	54400006 	bnezl	v0,484 <BgPoEvent_InitBlocks+0x108>
     46c:	920b0169 	lbu	t3,361(s0)
     470:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     474:	02002025 	move	a0,s0
     478:	10000028 	b	51c <BgPoEvent_InitBlocks+0x1a0>
     47c:	8fbf003c 	lw	ra,60(sp)
     480:	920b0169 	lbu	t3,361(s0)
     484:	15600016 	bnez	t3,4e0 <BgPoEvent_InitBlocks+0x164>
     488:	00000000 	nop
     48c:	8e02011c 	lw	v0,284(s0)
     490:	8c43011c 	lw	v1,284(v0)
     494:	54600006 	bnezl	v1,4b0 <BgPoEvent_InitBlocks+0x134>
     498:	8c64011c 	lw	a0,284(v1)
     49c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     4a0:	02002025 	move	a0,s0
     4a4:	1000001d 	b	51c <BgPoEvent_InitBlocks+0x1a0>
     4a8:	8fbf003c 	lw	ra,60(sp)
     4ac:	8c64011c 	lw	a0,284(v1)
     4b0:	54800008 	bnezl	a0,4d4 <BgPoEvent_InitBlocks+0x158>
     4b4:	ae040118 	sw	a0,280(s0)
     4b8:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     4bc:	02002025 	move	a0,s0
     4c0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     4c4:	8e04011c 	lw	a0,284(s0)
     4c8:	10000014 	b	51c <BgPoEvent_InitBlocks+0x1a0>
     4cc:	8fbf003c 	lw	ra,60(sp)
     4d0:	ae040118 	sw	a0,280(s0)
     4d4:	8c4c011c 	lw	t4,284(v0)
     4d8:	8d8d011c 	lw	t5,284(t4)
     4dc:	adb0011c 	sw	s0,284(t5)
     4e0:	3c010000 	lui	at,0x0
     4e4:	c4320044 	lwc1	$f18,68(at)
     4e8:	260e0024 	addiu	t6,s0,36
     4ec:	262407c0 	addiu	a0,s1,1984
     4f0:	e6120028 	swc1	$f18,40(s0)
     4f4:	afae0010 	sw	t6,16(sp)
     4f8:	26050078 	addiu	a1,s0,120
     4fc:	27a60054 	addiu	a2,sp,84
     500:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     504:	02003825 	move	a3,s0
     508:	3c0f0000 	lui	t7,0x0
     50c:	25ef0000 	addiu	t7,t7,0
     510:	e6000080 	swc1	$f0,128(s0)
     514:	ae0f0164 	sw	t7,356(s0)
     518:	8fbf003c 	lw	ra,60(sp)
     51c:	8fb00034 	lw	s0,52(sp)
     520:	8fb10038 	lw	s1,56(sp)
     524:	03e00008 	jr	ra
     528:	27bd0060 	addiu	sp,sp,96

0000052c <BgPoEvent_Init>:
     52c:	27bdffc8 	addiu	sp,sp,-56
     530:	afb10020 	sw	s1,32(sp)
     534:	00a08825 	move	s1,a1
     538:	afbf0024 	sw	ra,36(sp)
     53c:	afb0001c 	sw	s0,28(sp)
     540:	3c050000 	lui	a1,0x0
     544:	00808025 	move	s0,a0
     548:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     54c:	24a500d8 	addiu	a1,a1,216
     550:	860e001c 	lh	t6,28(s0)
     554:	8619001c 	lh	t9,28(s0)
     558:	860a001c 	lh	t2,28(s0)
     55c:	000e7a03 	sra	t7,t6,0x8
     560:	31f8000f 	andi	t8,t7,0xf
     564:	330c00ff 	andi	t4,t8,0xff
     568:	00194303 	sra	t0,t9,0xc
     56c:	3109000f 	andi	t1,t0,0xf
     570:	29810002 	slti	at,t4,2
     574:	314b003f 	andi	t3,t2,0x3f
     578:	a2180168 	sb	t8,360(s0)
     57c:	a2090169 	sb	t1,361(s0)
     580:	1420001a 	bnez	at,5ec <BgPoEvent_Init+0xc0>
     584:	a60b001c 	sh	t3,28(s0)
     588:	26050170 	addiu	a1,s0,368
     58c:	afa5002c 	sw	a1,44(sp)
     590:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     594:	02202025 	move	a0,s1
     598:	3c070000 	lui	a3,0x0
     59c:	260d0190 	addiu	t5,s0,400
     5a0:	8fa5002c 	lw	a1,44(sp)
     5a4:	afad0010 	sw	t5,16(sp)
     5a8:	24e70098 	addiu	a3,a3,152
     5ac:	02202025 	move	a0,s1
     5b0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     5b4:	02003025 	move	a2,s0
     5b8:	02202025 	move	a0,s1
     5bc:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     5c0:	8605001c 	lh	a1,28(s0)
     5c4:	10400005 	beqz	v0,5dc <BgPoEvent_Init+0xb0>
     5c8:	02002025 	move	a0,s0
     5cc:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     5d0:	02002025 	move	a0,s0
     5d4:	10000014 	b	628 <BgPoEvent_Init+0xfc>
     5d8:	8fbf0024 	lw	ra,36(sp)
     5dc:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     5e0:	02202825 	move	a1,s1
     5e4:	10000010 	b	628 <BgPoEvent_Init+0xfc>
     5e8:	8fbf0024 	lw	ra,36(sp)
     5ec:	02002025 	move	a0,s0
     5f0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     5f4:	00002825 	move	a1,zero
     5f8:	02202025 	move	a0,s1
     5fc:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     600:	8605001c 	lh	a1,28(s0)
     604:	10400005 	beqz	v0,61c <BgPoEvent_Init+0xf0>
     608:	02002025 	move	a0,s0
     60c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     610:	02002025 	move	a0,s0
     614:	10000004 	b	628 <BgPoEvent_Init+0xfc>
     618:	8fbf0024 	lw	ra,36(sp)
     61c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     620:	02202825 	move	a1,s1
     624:	8fbf0024 	lw	ra,36(sp)
     628:	8fb0001c 	lw	s0,28(sp)
     62c:	8fb10020 	lw	s1,32(sp)
     630:	03e00008 	jr	ra
     634:	27bd0038 	addiu	sp,sp,56

00000638 <BgPoEvent_Destroy>:
     638:	27bdffe8 	addiu	sp,sp,-24
     63c:	afbf0014 	sw	ra,20(sp)
     640:	afa5001c 	sw	a1,28(sp)
     644:	908e0168 	lbu	t6,360(a0)
     648:	00803825 	move	a3,a0
     64c:	8fa4001c 	lw	a0,28(sp)
     650:	29c10002 	slti	at,t6,2
     654:	54200007 	bnezl	at,674 <BgPoEvent_Destroy+0x3c>
     658:	8ce6014c 	lw	a2,332(a3)
     65c:	00a02025 	move	a0,a1
     660:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     664:	24e50170 	addiu	a1,a3,368
     668:	10000012 	b	6b4 <BgPoEvent_Destroy+0x7c>
     66c:	8fbf0014 	lw	ra,20(sp)
     670:	8ce6014c 	lw	a2,332(a3)
     674:	afa70018 	sw	a3,24(sp)
     678:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     67c:	24850810 	addiu	a1,a0,2064
     680:	8fa70018 	lw	a3,24(sp)
     684:	24010001 	li	at,1
     688:	3c020000 	lui	v0,0x0
     68c:	90f80168 	lbu	t8,360(a3)
     690:	24420000 	addiu	v0,v0,0
     694:	57010007 	bnel	t8,at,6b4 <BgPoEvent_Destroy+0x7c>
     698:	8fbf0014 	lw	ra,20(sp)
     69c:	845913d0 	lh	t9,5072(v0)
     6a0:	2408000a 	li	t0,10
     6a4:	5b200003 	blezl	t9,6b4 <BgPoEvent_Destroy+0x7c>
     6a8:	8fbf0014 	lw	ra,20(sp)
     6ac:	a44813ce 	sh	t0,5070(v0)
     6b0:	8fbf0014 	lw	ra,20(sp)
     6b4:	27bd0018 	addiu	sp,sp,24
     6b8:	03e00008 	jr	ra
     6bc:	00000000 	nop

000006c0 <BgPoEvent_BlockWait>:
     6c0:	27bdffd8 	addiu	sp,sp,-40
     6c4:	3c010000 	lui	at,0x0
     6c8:	c4240048 	lwc1	$f4,72(at)
     6cc:	afbf0024 	sw	ra,36(sp)
     6d0:	afb00020 	sw	s0,32(sp)
     6d4:	afa5002c 	sw	a1,44(sp)
     6d8:	3c030000 	lui	v1,0x0
     6dc:	24630000 	addiu	v1,v1,0
     6e0:	e4840028 	swc1	$f4,40(a0)
     6e4:	90620000 	lbu	v0,0(v1)
     6e8:	2401003f 	li	at,63
     6ec:	00808025 	move	s0,a0
     6f0:	54410011 	bnel	v0,at,738 <BgPoEvent_BlockWait+0x78>
     6f4:	3c014248 	lui	at,0x4248
     6f8:	908e0168 	lbu	t6,360(a0)
     6fc:	24010001 	li	at,1
     700:	8fa4002c 	lw	a0,44(sp)
     704:	15c10005 	bne	t6,at,71c <BgPoEvent_BlockWait+0x5c>
     708:	24050c4e 	li	a1,3150
     70c:	24060041 	li	a2,65
     710:	00003825 	move	a3,zero
     714:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     718:	afa00010 	sw	zero,16(sp)
     71c:	3c180000 	lui	t8,0x0
     720:	240f002d 	li	t7,45
     724:	27180000 	addiu	t8,t8,0
     728:	a60f016c 	sh	t7,364(s0)
     72c:	10000022 	b	7b8 <BgPoEvent_BlockWait+0xf8>
     730:	ae180164 	sw	t8,356(s0)
     734:	3c014248 	lui	at,0x4248
     738:	44813000 	mtc1	at,$f6
     73c:	c6080090 	lwc1	$f8,144(s0)
     740:	4608303c 	c.lt.s	$f6,$f8
     744:	00000000 	nop
     748:	4502000f 	bc1fl	788 <BgPoEvent_BlockWait+0xc8>
     74c:	920d0168 	lbu	t5,360(s0)
     750:	92190168 	lbu	t9,360(s0)
     754:	24010001 	li	at,1
     758:	344c0010 	ori	t4,v0,0x10
     75c:	13210007 	beq	t9,at,77c <BgPoEvent_BlockWait+0xbc>
     760:	00000000 	nop
     764:	92080169 	lbu	t0,361(s0)
     768:	24090001 	li	t1,1
     76c:	01095004 	sllv	t2,t1,t0
     770:	004a5825 	or	t3,v0,t2
     774:	10000010 	b	7b8 <BgPoEvent_BlockWait+0xf8>
     778:	a06b0000 	sb	t3,0(v1)
     77c:	1000000e 	b	7b8 <BgPoEvent_BlockWait+0xf8>
     780:	a06c0000 	sb	t4,0(v1)
     784:	920d0168 	lbu	t5,360(s0)
     788:	24010001 	li	at,1
     78c:	3048ffef 	andi	t0,v0,0xffef
     790:	51a10009 	beql	t5,at,7b8 <BgPoEvent_BlockWait+0xf8>
     794:	a0680000 	sb	t0,0(v1)
     798:	920e0169 	lbu	t6,361(s0)
     79c:	240f0001 	li	t7,1
     7a0:	01cfc004 	sllv	t8,t7,t6
     7a4:	0300c827 	nor	t9,t8,zero
     7a8:	00594824 	and	t1,v0,t9
     7ac:	10000002 	b	7b8 <BgPoEvent_BlockWait+0xf8>
     7b0:	a0690000 	sb	t1,0(v1)
     7b4:	a0680000 	sb	t0,0(v1)
     7b8:	8fbf0024 	lw	ra,36(sp)
     7bc:	8fb00020 	lw	s0,32(sp)
     7c0:	27bd0028 	addiu	sp,sp,40
     7c4:	03e00008 	jr	ra
     7c8:	00000000 	nop

000007cc <BgPoEvent_BlockShake>:
     7cc:	27bdffe8 	addiu	sp,sp,-24
     7d0:	afbf0014 	sw	ra,20(sp)
     7d4:	afa5001c 	sw	a1,28(sp)
     7d8:	8482016c 	lh	v0,364(a0)
     7dc:	10400003 	beqz	v0,7ec <BgPoEvent_BlockShake+0x20>
     7e0:	244effff 	addiu	t6,v0,-1
     7e4:	a48e016c 	sh	t6,364(a0)
     7e8:	8482016c 	lh	v0,364(a0)
     7ec:	2841000f 	slti	at,v0,15
     7f0:	10200016 	beqz	at,84c <BgPoEvent_BlockShake+0x80>
     7f4:	24010003 	li	at,3
     7f8:	0041001a 	div	zero,v0,at
     7fc:	00007810 	mfhi	t7
     800:	25f8ffff 	addiu	t8,t7,-1
     804:	44982000 	mtc1	t8,$f4
     808:	c4860008 	lwc1	$f6,8(a0)
     80c:	24052838 	li	a1,10296
     810:	46802020 	cvt.s.w	$f0,$f4
     814:	46000200 	add.s	$f8,$f0,$f0
     818:	46083280 	add.s	$f10,$f6,$f8
     81c:	e48a0024 	swc1	$f10,36(a0)
     820:	04410004 	bgez	v0,834 <BgPoEvent_BlockShake+0x68>
     824:	30590003 	andi	t9,v0,0x3
     828:	13200002 	beqz	t9,834 <BgPoEvent_BlockShake+0x68>
     82c:	00000000 	nop
     830:	2739fffc 	addiu	t9,t9,-4
     834:	17200005 	bnez	t9,84c <BgPoEvent_BlockShake+0x80>
     838:	00000000 	nop
     83c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     840:	afa40018 	sw	a0,24(sp)
     844:	8fa40018 	lw	a0,24(sp)
     848:	8482016c 	lh	v0,364(a0)
     84c:	14400009 	bnez	v0,874 <BgPoEvent_BlockShake+0xa8>
     850:	3c010000 	lui	at,0x0
     854:	c4900008 	lwc1	$f16,8(a0)
     858:	3c090000 	lui	t1,0x0
     85c:	2408003c 	li	t0,60
     860:	e4900024 	swc1	$f16,36(a0)
     864:	a0200000 	sb	zero,0(at)
     868:	25290000 	addiu	t1,t1,0
     86c:	a488016c 	sh	t0,364(a0)
     870:	ac890164 	sw	t1,356(a0)
     874:	8fbf0014 	lw	ra,20(sp)
     878:	27bd0018 	addiu	sp,sp,24
     87c:	03e00008 	jr	ra
     880:	00000000 	nop

00000884 <BgPoEvent_CheckBlock>:
     884:	90820169 	lbu	v0,361(a0)
     888:	24070003 	li	a3,3
     88c:	24010001 	li	at,1
     890:	10e20003 	beq	a3,v0,8a0 <BgPoEvent_CheckBlock+0x1c>
     894:	240e0001 	li	t6,1
     898:	5441001b 	bnel	v0,at,908 <BgPoEvent_CheckBlock+0x84>
     89c:	8c86011c 	lw	a2,284(a0)
     8a0:	8c86011c 	lw	a2,284(a0)
     8a4:	c484002c 	lwc1	$f4,44(a0)
     8a8:	c4c8002c 	lwc1	$f8,44(a2)
     8ac:	4600218d 	trunc.w.s	$f6,$f4
     8b0:	4600428d 	trunc.w.s	$f10,$f8
     8b4:	44033000 	mfc1	v1,$f6
     8b8:	44055000 	mfc1	a1,$f10
     8bc:	54e2000a 	bnel	a3,v0,8e8 <BgPoEvent_CheckBlock+0x64>
     8c0:	c4c80024 	lwc1	$f8,36(a2)
     8c4:	c4900024 	lwc1	$f16,36(a0)
     8c8:	c4c40024 	lwc1	$f4,36(a2)
     8cc:	4600848d 	trunc.w.s	$f18,$f16
     8d0:	4600218d 	trunc.w.s	$f6,$f4
     8d4:	44079000 	mfc1	a3,$f18
     8d8:	44083000 	mfc1	t0,$f6
     8dc:	10000021 	b	964 <BgPoEvent_CheckBlock+0xe0>
     8e0:	00000000 	nop
     8e4:	c4c80024 	lwc1	$f8,36(a2)
     8e8:	c4900024 	lwc1	$f16,36(a0)
     8ec:	4600428d 	trunc.w.s	$f10,$f8
     8f0:	4600848d 	trunc.w.s	$f18,$f16
     8f4:	44075000 	mfc1	a3,$f10
     8f8:	44089000 	mfc1	t0,$f18
     8fc:	10000019 	b	964 <BgPoEvent_CheckBlock+0xe0>
     900:	00000000 	nop
     904:	8c86011c 	lw	a2,284(a0)
     908:	c4840024 	lwc1	$f4,36(a0)
     90c:	c4c80024 	lwc1	$f8,36(a2)
     910:	4600218d 	trunc.w.s	$f6,$f4
     914:	4600428d 	trunc.w.s	$f10,$f8
     918:	44033000 	mfc1	v1,$f6
     91c:	44055000 	mfc1	a1,$f10
     920:	5440000a 	bnezl	v0,94c <BgPoEvent_CheckBlock+0xc8>
     924:	c4c8002c 	lwc1	$f8,44(a2)
     928:	c490002c 	lwc1	$f16,44(a0)
     92c:	c4c4002c 	lwc1	$f4,44(a2)
     930:	4600848d 	trunc.w.s	$f18,$f16
     934:	4600218d 	trunc.w.s	$f6,$f4
     938:	44079000 	mfc1	a3,$f18
     93c:	44083000 	mfc1	t0,$f6
     940:	10000008 	b	964 <BgPoEvent_CheckBlock+0xe0>
     944:	00000000 	nop
     948:	c4c8002c 	lwc1	$f8,44(a2)
     94c:	c490002c 	lwc1	$f16,44(a0)
     950:	4600428d 	trunc.w.s	$f10,$f8
     954:	4600848d 	trunc.w.s	$f18,$f16
     958:	44075000 	mfc1	a3,$f10
     95c:	44089000 	mfc1	t0,$f18
     960:	00000000 	nop
     964:	1465000b 	bne	v1,a1,994 <BgPoEvent_CheckBlock+0x110>
     968:	0107c823 	subu	t9,t0,a3
     96c:	2401003c 	li	at,60
     970:	17210008 	bne	t9,at,994 <BgPoEvent_CheckBlock+0x110>
     974:	3c030000 	lui	v1,0x0
     978:	24630000 	addiu	v1,v1,0
     97c:	90690000 	lbu	t1,0(v1)
     980:	240a0001 	li	t2,1
     984:	004a5804 	sllv	t3,t2,v0
     988:	012b6025 	or	t4,t1,t3
     98c:	03e00008 	jr	ra
     990:	a06c0000 	sb	t4,0(v1)
     994:	3c030000 	lui	v1,0x0
     998:	24630000 	addiu	v1,v1,0
     99c:	906d0000 	lbu	t5,0(v1)
     9a0:	004e7804 	sllv	t7,t6,v0
     9a4:	01e0c027 	nor	t8,t7,zero
     9a8:	01b8c824 	and	t9,t5,t8
     9ac:	a0790000 	sb	t9,0(v1)
     9b0:	03e00008 	jr	ra
     9b4:	00000000 	nop

000009b8 <BgPoEvent_BlockFall>:
     9b8:	27bdffe0 	addiu	sp,sp,-32
     9bc:	afbf001c 	sw	ra,28(sp)
     9c0:	afb00018 	sw	s0,24(sp)
     9c4:	afa50024 	sw	a1,36(sp)
     9c8:	3c013f80 	lui	at,0x3f80
     9cc:	44813000 	mtc1	at,$f6
     9d0:	c4840060 	lwc1	$f4,96(a0)
     9d4:	00808025 	move	s0,a0
     9d8:	3c0543d8 	lui	a1,0x43d8
     9dc:	46062200 	add.s	$f8,$f4,$f6
     9e0:	34a58000 	ori	a1,a1,0x8000
     9e4:	24840028 	addiu	a0,a0,40
     9e8:	e4880038 	swc1	$f8,56(a0)
     9ec:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     9f0:	8e060060 	lw	a2,96(s0)
     9f4:	1040002c 	beqz	v0,aa8 <BgPoEvent_BlockFall+0xf0>
     9f8:	2401ffdf 	li	at,-33
     9fc:	8e0e0004 	lw	t6,4(s0)
     a00:	44805000 	mtc1	zero,$f10
     a04:	3c020000 	lui	v0,0x0
     a08:	01c17824 	and	t7,t6,at
     a0c:	244200a8 	addiu	v0,v0,168
     a10:	ae0f0004 	sw	t7,4(s0)
     a14:	e60a0060 	swc1	$f10,96(s0)
     a18:	90580000 	lbu	t8,0(v0)
     a1c:	24010001 	li	at,1
     a20:	02002025 	move	a0,s0
     a24:	27190001 	addiu	t9,t8,1
     a28:	a0590000 	sb	t9,0(v0)
     a2c:	92080168 	lbu	t0,360(s0)
     a30:	11010005 	beq	t0,at,a48 <BgPoEvent_BlockFall+0x90>
     a34:	00000000 	nop
     a38:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     a3c:	02002025 	move	a0,s0
     a40:	10000015 	b	a98 <BgPoEvent_BlockFall+0xe0>
     a44:	00000000 	nop
     a48:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     a4c:	2405281d 	li	a1,10269
     a50:	02002025 	move	a0,s0
     a54:	8fa50024 	lw	a1,36(sp)
     a58:	24060005 	li	a2,5
     a5c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     a60:	24070005 	li	a3,5
     a64:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     a68:	8604016c 	lh	a0,364(s0)
     a6c:	3c090000 	lui	t1,0x0
     a70:	8d2900dc 	lw	t1,220(t1)
     a74:	240a0001 	li	t2,1
     a78:	8fa40024 	lw	a0,36(sp)
     a7c:	15200004 	bnez	t1,a90 <BgPoEvent_BlockFall+0xd8>
     a80:	24060007 	li	a2,7
     a84:	3c010000 	lui	at,0x0
     a88:	10000003 	b	a98 <BgPoEvent_BlockFall+0xe0>
     a8c:	ac2a00dc 	sw	t2,220(at)
     a90:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     a94:	8c851c44 	lw	a1,7236(a0)
     a98:	3c0c0000 	lui	t4,0x0
     a9c:	258c0000 	addiu	t4,t4,0
     aa0:	a200016a 	sb	zero,362(s0)
     aa4:	ae0c0164 	sw	t4,356(s0)
     aa8:	8fbf001c 	lw	ra,28(sp)
     aac:	8fb00018 	lw	s0,24(sp)
     ab0:	27bd0020 	addiu	sp,sp,32
     ab4:	03e00008 	jr	ra
     ab8:	00000000 	nop

00000abc <BgPoEvent_BlockIdle>:
     abc:	27bdffc0 	addiu	sp,sp,-64
     ac0:	3c030000 	lui	v1,0x0
     ac4:	24630000 	addiu	v1,v1,0
     ac8:	90620000 	lbu	v0,0(v1)
     acc:	afbf0034 	sw	ra,52(sp)
     ad0:	afb00030 	sw	s0,48(sp)
     ad4:	afa50044 	sw	a1,68(sp)
     ad8:	8caf1c44 	lw	t7,7236(a1)
     adc:	2401000f 	li	at,15
     ae0:	00808025 	move	s0,a0
     ae4:	1441002c 	bne	v0,at,b98 <BgPoEvent_BlockIdle+0xdc>
     ae8:	afaf003c 	sw	t7,60(sp)
     aec:	90990168 	lbu	t9,360(a0)
     af0:	3c180000 	lui	t8,0x0
     af4:	27180000 	addiu	t8,t8,0
     af8:	17200097 	bnez	t9,d58 <BgPoEvent_BlockIdle+0x29c>
     afc:	ac980164 	sw	t8,356(a0)
     b00:	90880169 	lbu	t0,361(a0)
     b04:	3c0141f0 	lui	at,0x41f0
     b08:	55000094 	bnezl	t0,d5c <BgPoEvent_BlockIdle+0x2a0>
     b0c:	8fbf0034 	lw	ra,52(sp)
     b10:	44810000 	mtc1	at,$f0
     b14:	c6080028 	lwc1	$f8,40(s0)
     b18:	c6040024 	lwc1	$f4,36(s0)
     b1c:	8fa50044 	lw	a1,68(sp)
     b20:	46004281 	sub.s	$f10,$f8,$f0
     b24:	24060091 	li	a2,145
     b28:	24a41c24 	addiu	a0,a1,7204
     b2c:	46002180 	add.s	$f6,$f4,$f0
     b30:	e7aa0010 	swc1	$f10,16(sp)
     b34:	c610002c 	lwc1	$f16,44(s0)
     b38:	afa00018 	sw	zero,24(sp)
     b3c:	44073000 	mfc1	a3,$f6
     b40:	46008480 	add.s	$f18,$f16,$f0
     b44:	e7b20014 	swc1	$f18,20(sp)
     b48:	860a00b6 	lh	t2,182(s0)
     b4c:	afa00020 	sw	zero,32(sp)
     b50:	afaa001c 	sw	t2,28(sp)
     b54:	860b001c 	lh	t3,28(s0)
     b58:	256c0300 	addiu	t4,t3,768
     b5c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     b60:	afac0024 	sw	t4,36(sp)
     b64:	10400006 	beqz	v0,b80 <BgPoEvent_BlockIdle+0xc4>
     b68:	00403825 	move	a3,v0
     b6c:	8fa40044 	lw	a0,68(sp)
     b70:	24050c62 	li	a1,3170
     b74:	2406001e 	li	a2,30
     b78:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     b7c:	afa00010 	sw	zero,16(sp)
     b80:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     b84:	24044802 	li	a0,18434
     b88:	240d000a 	li	t5,10
     b8c:	3c010000 	lui	at,0x0
     b90:	10000071 	b	d58 <BgPoEvent_BlockIdle+0x29c>
     b94:	a42d13ce 	sh	t5,5070(at)
     b98:	3c0e0000 	lui	t6,0x0
     b9c:	85ce13d0 	lh	t6,5072(t6)
     ba0:	3c0f0000 	lui	t7,0x0
     ba4:	55c00010 	bnezl	t6,be8 <BgPoEvent_BlockIdle+0x12c>
     ba8:	24010040 	li	at,64
     bac:	91ef00a8 	lbu	t7,168(t7)
     bb0:	24010005 	li	at,5
     bb4:	8fb8003c 	lw	t8,60(sp)
     bb8:	55e1000b 	bnel	t7,at,be8 <BgPoEvent_BlockIdle+0x12c>
     bbc:	24010040 	li	at,64
     bc0:	8f190680 	lw	t9,1664(t8)
     bc4:	2401ffef 	li	at,-17
     bc8:	24090010 	li	t1,16
     bcc:	03214024 	and	t0,t9,at
     bd0:	af080680 	sw	t0,1664(t8)
     bd4:	a0690000 	sb	t1,0(v1)
     bd8:	3c010000 	lui	at,0x0
     bdc:	a02000a8 	sb	zero,168(at)
     be0:	90620000 	lbu	v0,0(v1)
     be4:	24010040 	li	at,64
     be8:	10410008 	beq	v0,at,c0c <BgPoEvent_BlockIdle+0x150>
     bec:	24010010 	li	at,16
     bf0:	5441001a 	bnel	v0,at,c5c <BgPoEvent_BlockIdle+0x1a0>
     bf4:	44800000 	mtc1	zero,$f0
     bf8:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     bfc:	8fa40044 	lw	a0,68(sp)
     c00:	3c030000 	lui	v1,0x0
     c04:	14400014 	bnez	v0,c58 <BgPoEvent_BlockIdle+0x19c>
     c08:	24630000 	addiu	v1,v1,0
     c0c:	860a00b8 	lh	t2,184(s0)
     c10:	3c0b0000 	lui	t3,0x0
     c14:	256b0000 	addiu	t3,t3,0
     c18:	ae0b0164 	sw	t3,356(s0)
     c1c:	a60a0034 	sh	t2,52(s0)
     c20:	906c0000 	lbu	t4,0(v1)
     c24:	24010010 	li	at,16
     c28:	240d0040 	li	t5,64
     c2c:	1581004a 	bne	t4,at,d58 <BgPoEvent_BlockIdle+0x29c>
     c30:	02002025 	move	a0,s0
     c34:	a06d0000 	sb	t5,0(v1)
     c38:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     c3c:	240528a4 	li	a1,10404
     c40:	8fa40044 	lw	a0,68(sp)
     c44:	8fa5003c 	lw	a1,60(sp)
     c48:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     c4c:	24060008 	li	a2,8
     c50:	10000042 	b	d5c <BgPoEvent_BlockIdle+0x2a0>
     c54:	8fbf0034 	lw	ra,52(sp)
     c58:	44800000 	mtc1	zero,$f0
     c5c:	c6040150 	lwc1	$f4,336(s0)
     c60:	46040032 	c.eq.s	$f0,$f4
     c64:	00000000 	nop
     c68:	4503003b 	bc1tl	d58 <BgPoEvent_BlockIdle+0x29c>
     c6c:	a200016a 	sb	zero,362(s0)
     c70:	820e016a 	lb	t6,362(s0)
     c74:	8fa40044 	lw	a0,68(sp)
     c78:	02002825 	move	a1,s0
     c7c:	15c0002b 	bnez	t6,d2c <BgPoEvent_BlockIdle+0x270>
     c80:	8fb9003c 	lw	t9,60(sp)
     c84:	240fffec 	li	t7,-20
     c88:	afaf0010 	sw	t7,16(sp)
     c8c:	2406001e 	li	a2,30
     c90:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     c94:	24070032 	li	a3,50
     c98:	44800000 	mtc1	zero,$f0
     c9c:	1040001d 	beqz	v0,d14 <BgPoEvent_BlockIdle+0x258>
     ca0:	8fad003c 	lw	t5,60(sp)
     ca4:	3c190000 	lui	t9,0x0
     ca8:	933900a8 	lbu	t9,168(t9)
     cac:	3c010000 	lui	at,0x0
     cb0:	3c0c0000 	lui	t4,0x0
     cb4:	2728ffff 	addiu	t0,t9,-1
     cb8:	a02800a8 	sb	t0,168(at)
     cbc:	c6060150 	lwc1	$f6,336(s0)
     cc0:	3c01bf80 	lui	at,0xbf80
     cc4:	258c0000 	addiu	t4,t4,0
     cc8:	4606003e 	c.le.s	$f0,$f6
     ccc:	00000000 	nop
     cd0:	45020009 	bc1fl	cf8 <BgPoEvent_BlockIdle+0x23c>
     cd4:	44818000 	mtc1	at,$f16
     cd8:	3c013f80 	lui	at,0x3f80
     cdc:	44814000 	mtc1	at,$f8
     ce0:	00000000 	nop
     ce4:	4600428d 	trunc.w.s	$f10,$f8
     ce8:	44095000 	mfc1	t1,$f10
     cec:	10000007 	b	d0c <BgPoEvent_BlockIdle+0x250>
     cf0:	a209016a 	sb	t1,362(s0)
     cf4:	44818000 	mtc1	at,$f16
     cf8:	00000000 	nop
     cfc:	4600848d 	trunc.w.s	$f18,$f16
     d00:	440b9000 	mfc1	t3,$f18
     d04:	00000000 	nop
     d08:	a20b016a 	sb	t3,362(s0)
     d0c:	10000012 	b	d58 <BgPoEvent_BlockIdle+0x29c>
     d10:	ae0c0164 	sw	t4,356(s0)
     d14:	8dae0680 	lw	t6,1664(t5)
     d18:	2401ffef 	li	at,-17
     d1c:	01c17824 	and	t7,t6,at
     d20:	adaf0680 	sw	t7,1664(t5)
     d24:	1000000c 	b	d58 <BgPoEvent_BlockIdle+0x29c>
     d28:	e6000150 	swc1	$f0,336(s0)
     d2c:	8f280680 	lw	t0,1664(t9)
     d30:	2401ffef 	li	at,-17
     d34:	0101c024 	and	t8,t0,at
     d38:	af380680 	sw	t8,1664(t9)
     d3c:	8202016a 	lb	v0,362(s0)
     d40:	e6000150 	swc1	$f0,336(s0)
     d44:	10400004 	beqz	v0,d58 <BgPoEvent_BlockIdle+0x29c>
     d48:	2449ffff 	addiu	t1,v0,-1
     d4c:	10000002 	b	d58 <BgPoEvent_BlockIdle+0x29c>
     d50:	a209016a 	sb	t1,362(s0)
     d54:	a200016a 	sb	zero,362(s0)
     d58:	8fbf0034 	lw	ra,52(sp)
     d5c:	8fb00030 	lw	s0,48(sp)
     d60:	27bd0040 	addiu	sp,sp,64
     d64:	03e00008 	jr	ra
     d68:	00000000 	nop

00000d6c <BgPoEvent_BlockPush>:
     d6c:	27bdffc8 	addiu	sp,sp,-56
     d70:	afbf0024 	sw	ra,36(sp)
     d74:	afb00020 	sw	s0,32(sp)
     d78:	afa5003c 	sw	a1,60(sp)
     d7c:	8caf1c44 	lw	t7,7236(a1)
     d80:	3c014000 	lui	at,0x4000
     d84:	44811000 	mtc1	at,$f2
     d88:	3c010000 	lui	at,0x0
     d8c:	afaf002c 	sw	t7,44(sp)
     d90:	c4840068 	lwc1	$f4,104(a0)
     d94:	c426004c 	lwc1	$f6,76(at)
     d98:	00808025 	move	s0,a0
     d9c:	3c0541a0 	lui	a1,0x41a0
     da0:	46062200 	add.s	$f8,$f4,$f6
     da4:	e4880068 	swc1	$f8,104(a0)
     da8:	c4800068 	lwc1	$f0,104(a0)
     dac:	4600103c 	c.lt.s	$f2,$f0
     db0:	00000000 	nop
     db4:	45020004 	bc1fl	dc8 <BgPoEvent_BlockPush+0x5c>
     db8:	e6000068 	swc1	$f0,104(s0)
     dbc:	10000002 	b	dc8 <BgPoEvent_BlockPush+0x5c>
     dc0:	e4820068 	swc1	$f2,104(a0)
     dc4:	e6000068 	swc1	$f0,104(s0)
     dc8:	3c040000 	lui	a0,0x0
     dcc:	248400e0 	addiu	a0,a0,224
     dd0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     dd4:	8e060068 	lw	a2,104(s0)
     dd8:	afa20030 	sw	v0,48(sp)
     ddc:	8218016a 	lb	t8,362(s0)
     de0:	3c010000 	lui	at,0x0
     de4:	c43200e0 	lwc1	$f18,224(at)
     de8:	44985000 	mtc1	t8,$f10
     dec:	00000000 	nop
     df0:	46805420 	cvt.s.w	$f16,$f10
     df4:	46128102 	mul.s	$f4,$f16,$f18
     df8:	e7a40034 	swc1	$f4,52(sp)
     dfc:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     e00:	86040158 	lh	a0,344(s0)
     e04:	c7a60034 	lwc1	$f6,52(sp)
     e08:	c60a0008 	lwc1	$f10,8(s0)
     e0c:	86040158 	lh	a0,344(s0)
     e10:	46060202 	mul.s	$f8,$f0,$f6
     e14:	460a4400 	add.s	$f16,$f8,$f10
     e18:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     e1c:	e6100024 	swc1	$f16,36(s0)
     e20:	c7b20034 	lwc1	$f18,52(sp)
     e24:	c6060010 	lwc1	$f6,16(s0)
     e28:	46120102 	mul.s	$f4,$f0,$f18
     e2c:	46062200 	add.s	$f8,$f4,$f6
     e30:	e608002c 	swc1	$f8,44(s0)
     e34:	8fb90030 	lw	t9,48(sp)
     e38:	8fa2002c 	lw	v0,44(sp)
     e3c:	53200033 	beqzl	t9,f0c <BgPoEvent_BlockPush+0x1a0>
     e40:	02002025 	move	a0,s0
     e44:	8c480680 	lw	t0,1664(v0)
     e48:	2401ffef 	li	at,-17
     e4c:	44800000 	mtc1	zero,$f0
     e50:	01014824 	and	t1,t0,at
     e54:	ac490680 	sw	t1,1664(v0)
     e58:	c60a0150 	lwc1	$f10,336(s0)
     e5c:	8fa4003c 	lw	a0,60(sp)
     e60:	02002825 	move	a1,s0
     e64:	460a003c 	c.lt.s	$f0,$f10
     e68:	2406001e 	li	a2,30
     e6c:	24070032 	li	a3,50
     e70:	240affec 	li	t2,-20
     e74:	4502000b 	bc1fl	ea4 <BgPoEvent_BlockPush+0x138>
     e78:	c6100024 	lwc1	$f16,36(s0)
     e7c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     e80:	afaa0010 	sw	t2,16(sp)
     e84:	44800000 	mtc1	zero,$f0
     e88:	14400005 	bnez	v0,ea0 <BgPoEvent_BlockPush+0x134>
     e8c:	02002025 	move	a0,s0
     e90:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     e94:	24052835 	li	a1,10293
     e98:	44800000 	mtc1	zero,$f0
     e9c:	00000000 	nop
     ea0:	c6100024 	lwc1	$f16,36(s0)
     ea4:	c612002c 	lwc1	$f18,44(s0)
     ea8:	e6000150 	swc1	$f0,336(s0)
     eac:	3c010000 	lui	at,0x0
     eb0:	e6100008 	swc1	$f16,8(s0)
     eb4:	e6120010 	swc1	$f18,16(s0)
     eb8:	e42000e0 	swc1	$f0,224(at)
     ebc:	3c020000 	lui	v0,0x0
     ec0:	240b0005 	li	t3,5
     ec4:	244200a8 	addiu	v0,v0,168
     ec8:	e6000068 	swc1	$f0,104(s0)
     ecc:	a20b016a 	sb	t3,362(s0)
     ed0:	904c0000 	lbu	t4,0(v0)
     ed4:	3c0e0000 	lui	t6,0x0
     ed8:	25ce0000 	addiu	t6,t6,0
     edc:	258d0001 	addiu	t5,t4,1
     ee0:	a04d0000 	sb	t5,0(v0)
     ee4:	920f0168 	lbu	t7,360(s0)
     ee8:	24010001 	li	at,1
     eec:	ae0e0164 	sw	t6,356(s0)
     ef0:	51e10009 	beql	t7,at,f18 <BgPoEvent_BlockPush+0x1ac>
     ef4:	8fbf0024 	lw	ra,36(sp)
     ef8:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     efc:	02002025 	move	a0,s0
     f00:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     f04:	8e040118 	lw	a0,280(s0)
     f08:	02002025 	move	a0,s0
     f0c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     f10:	2405200a 	li	a1,8202
     f14:	8fbf0024 	lw	ra,36(sp)
     f18:	8fb00020 	lw	s0,32(sp)
     f1c:	27bd0038 	addiu	sp,sp,56
     f20:	03e00008 	jr	ra
     f24:	00000000 	nop

00000f28 <BgPoEvent_BlockReset>:
     f28:	27bdffe8 	addiu	sp,sp,-24
     f2c:	afbf0014 	sw	ra,20(sp)
     f30:	44800000 	mtc1	zero,$f0
     f34:	c4840150 	lwc1	$f4,336(a0)
     f38:	8ca21c44 	lw	v0,7236(a1)
     f3c:	3c0543f6 	lui	a1,0x43f6
     f40:	46040032 	c.eq.s	$f0,$f4
     f44:	00803825 	move	a3,a0
     f48:	34a58000 	ori	a1,a1,0x8000
     f4c:	3c063f80 	lui	a2,0x3f80
     f50:	45030007 	bc1tl	f70 <BgPoEvent_BlockReset+0x48>
     f54:	24e40028 	addiu	a0,a3,40
     f58:	8c4e0680 	lw	t6,1664(v0)
     f5c:	2401ffef 	li	at,-17
     f60:	01c17824 	and	t7,t6,at
     f64:	ac4f0680 	sw	t7,1664(v0)
     f68:	e4800150 	swc1	$f0,336(a0)
     f6c:	24e40028 	addiu	a0,a3,40
     f70:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     f74:	afa70018 	sw	a3,24(sp)
     f78:	10400027 	beqz	v0,1018 <BgPoEvent_BlockReset+0xf0>
     f7c:	8fa70018 	lw	a3,24(sp)
     f80:	84e50034 	lh	a1,52(a3)
     f84:	afa70018 	sw	a3,24(sp)
     f88:	24e400b8 	addiu	a0,a3,184
     f8c:	24a5c000 	addiu	a1,a1,-16384
     f90:	00052c00 	sll	a1,a1,0x10
     f94:	00052c03 	sra	a1,a1,0x10
     f98:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
     f9c:	24060400 	li	a2,1024
     fa0:	1040001d 	beqz	v0,1018 <BgPoEvent_BlockReset+0xf0>
     fa4:	8fa70018 	lw	a3,24(sp)
     fa8:	90f80169 	lbu	t8,361(a3)
     fac:	3c090000 	lui	t1,0x0
     fb0:	25290000 	addiu	t1,t1,0
     fb4:	27190001 	addiu	t9,t8,1
     fb8:	07210004 	bgez	t9,fcc <BgPoEvent_BlockReset+0xa4>
     fbc:	33280003 	andi	t0,t9,0x3
     fc0:	11000002 	beqz	t0,fcc <BgPoEvent_BlockReset+0xa4>
     fc4:	00000000 	nop
     fc8:	2508fffc 	addiu	t0,t0,-4
     fcc:	a0e80169 	sb	t0,361(a3)
     fd0:	ace90164 	sw	t1,356(a3)
     fd4:	3c010000 	lui	at,0x0
     fd8:	a0200000 	sb	zero,0(at)
     fdc:	90ea0168 	lbu	t2,360(a3)
     fe0:	24010001 	li	at,1
     fe4:	5541000d 	bnel	t2,at,101c <BgPoEvent_BlockReset+0xf4>
     fe8:	8fbf0014 	lw	ra,20(sp)
     fec:	84eb016c 	lh	t3,364(a3)
     ff0:	240d0078 	li	t5,120
     ff4:	256c000a 	addiu	t4,t3,10
     ff8:	a4ec016c 	sh	t4,364(a3)
     ffc:	84e2016c 	lh	v0,364(a3)
    1000:	28410079 	slti	at,v0,121
    1004:	54200004 	bnezl	at,1018 <BgPoEvent_BlockReset+0xf0>
    1008:	a4e2016c 	sh	v0,364(a3)
    100c:	10000002 	b	1018 <BgPoEvent_BlockReset+0xf0>
    1010:	a4ed016c 	sh	t5,364(a3)
    1014:	a4e2016c 	sh	v0,364(a3)
    1018:	8fbf0014 	lw	ra,20(sp)
    101c:	27bd0018 	addiu	sp,sp,24
    1020:	03e00008 	jr	ra
    1024:	00000000 	nop

00001028 <BgPoEvent_BlockSolved>:
    1028:	27bdffe8 	addiu	sp,sp,-24
    102c:	afbf0014 	sw	ra,20(sp)
    1030:	c4860150 	lwc1	$f6,336(a0)
    1034:	44802000 	mtc1	zero,$f4
    1038:	8ca21c44 	lw	v0,7236(a1)
    103c:	00803825 	move	a3,a0
    1040:	46062032 	c.eq.s	$f4,$f6
    1044:	3c0543b8 	lui	a1,0x43b8
    1048:	34a58000 	ori	a1,a1,0x8000
    104c:	24e40028 	addiu	a0,a3,40
    1050:	45010005 	bc1t	1068 <BgPoEvent_BlockSolved+0x40>
    1054:	3c064000 	lui	a2,0x4000
    1058:	8c4e0680 	lw	t6,1664(v0)
    105c:	2401ffef 	li	at,-17
    1060:	01c17824 	and	t7,t6,at
    1064:	ac4f0680 	sw	t7,1664(v0)
    1068:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    106c:	afa70018 	sw	a3,24(sp)
    1070:	10400006 	beqz	v0,108c <BgPoEvent_BlockSolved+0x64>
    1074:	8fa70018 	lw	a3,24(sp)
    1078:	24180020 	li	t8,32
    107c:	3c010000 	lui	at,0x0
    1080:	a0380000 	sb	t8,0(at)
    1084:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1088:	00e02025 	move	a0,a3
    108c:	8fbf0014 	lw	ra,20(sp)
    1090:	27bd0018 	addiu	sp,sp,24
    1094:	03e00008 	jr	ra
    1098:	00000000 	nop

0000109c <BgPoEvent_AmyWait>:
    109c:	27bdffe0 	addiu	sp,sp,-32
    10a0:	afbf001c 	sw	ra,28(sp)
    10a4:	afa50024 	sw	a1,36(sp)
    10a8:	908e0181 	lbu	t6,385(a0)
    10ac:	3c020000 	lui	v0,0x0
    10b0:	24420000 	addiu	v0,v0,0
    10b4:	31cf0002 	andi	t7,t6,0x2
    10b8:	11e00013 	beqz	t7,1108 <BgPoEvent_AmyWait+0x6c>
    10bc:	24080005 	li	t0,5
    10c0:	90580000 	lbu	t8,0(v0)
    10c4:	24090005 	li	t1,5
    10c8:	24054000 	li	a1,16384
    10cc:	37190020 	ori	t9,t8,0x20
    10d0:	a0590000 	sb	t9,0(v0)
    10d4:	a488016c 	sh	t0,364(a0)
    10d8:	afa40020 	sw	a0,32(sp)
    10dc:	afa90010 	sw	t1,16(sp)
    10e0:	240600ff 	li	a2,255
    10e4:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    10e8:	00003825 	move	a3,zero
    10ec:	8fa40020 	lw	a0,32(sp)
    10f0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    10f4:	240538ef 	li	a1,14575
    10f8:	8fa40020 	lw	a0,32(sp)
    10fc:	3c0a0000 	lui	t2,0x0
    1100:	254a0000 	addiu	t2,t2,0
    1104:	ac8a0164 	sw	t2,356(a0)
    1108:	8fbf001c 	lw	ra,28(sp)
    110c:	27bd0020 	addiu	sp,sp,32
    1110:	03e00008 	jr	ra
    1114:	00000000 	nop

00001118 <BgPoEvent_AmyPuzzle>:
    1118:	3c020000 	lui	v0,0x0
    111c:	90420000 	lbu	v0,0(v0)
    1120:	27bdffa0 	addiu	sp,sp,-96
    1124:	afb00048 	sw	s0,72(sp)
    1128:	2401000f 	li	at,15
    112c:	00808025 	move	s0,a0
    1130:	afbf004c 	sw	ra,76(sp)
    1134:	1441002f 	bne	v0,at,11f4 <BgPoEvent_AmyPuzzle+0xdc>
    1138:	afa50064 	sw	a1,100(sp)
    113c:	3c0140a0 	lui	at,0x40a0
    1140:	44813000 	mtc1	at,$f6
    1144:	c4840024 	lwc1	$f4,36(a0)
    1148:	3c0142f0 	lui	at,0x42f0
    114c:	44816000 	mtc1	at,$f12
    1150:	46062201 	sub.s	$f8,$f4,$f6
    1154:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1158:	e7a80054 	swc1	$f8,84(sp)
    115c:	c60a0028 	lwc1	$f10,40(s0)
    1160:	3c0142f0 	lui	at,0x42f0
    1164:	44816000 	mtc1	at,$f12
    1168:	460a0400 	add.s	$f16,$f0,$f10
    116c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1170:	e7b00058 	swc1	$f16,88(sp)
    1174:	c612002c 	lwc1	$f18,44(s0)
    1178:	3c060000 	lui	a2,0x0
    117c:	24c600ac 	addiu	a2,a2,172
    1180:	46120100 	add.s	$f4,$f0,$f18
    1184:	240e00aa 	li	t6,170
    1188:	240f00c8 	li	t7,200
    118c:	241800ff 	li	t8,255
    1190:	24190064 	li	t9,100
    1194:	240800aa 	li	t0,170
    1198:	240900ff 	li	t1,255
    119c:	240a0001 	li	t2,1
    11a0:	240b0009 	li	t3,9
    11a4:	240c0001 	li	t4,1
    11a8:	e7a4005c 	swc1	$f4,92(sp)
    11ac:	afac003c 	sw	t4,60(sp)
    11b0:	afab0038 	sw	t3,56(sp)
    11b4:	afaa0034 	sw	t2,52(sp)
    11b8:	afa9002c 	sw	t1,44(sp)
    11bc:	afa80024 	sw	t0,36(sp)
    11c0:	afb90020 	sw	t9,32(sp)
    11c4:	afb8001c 	sw	t8,28(sp)
    11c8:	afaf0018 	sw	t7,24(sp)
    11cc:	afae0010 	sw	t6,16(sp)
    11d0:	00c03825 	move	a3,a2
    11d4:	afa00030 	sw	zero,48(sp)
    11d8:	afa00028 	sw	zero,40(sp)
    11dc:	afa00014 	sw	zero,20(sp)
    11e0:	8fa40064 	lw	a0,100(sp)
    11e4:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    11e8:	27a50054 	addiu	a1,sp,84
    11ec:	1000000d 	b	1224 <BgPoEvent_AmyPuzzle+0x10c>
    11f0:	8fbf004c 	lw	ra,76(sp)
    11f4:	24010020 	li	at,32
    11f8:	54410006 	bnel	v0,at,1214 <BgPoEvent_AmyPuzzle+0xfc>
    11fc:	8602016c 	lh	v0,364(s0)
    1200:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1204:	02002025 	move	a0,s0
    1208:	10000006 	b	1224 <BgPoEvent_AmyPuzzle+0x10c>
    120c:	8fbf004c 	lw	ra,76(sp)
    1210:	8602016c 	lh	v0,364(s0)
    1214:	10400002 	beqz	v0,1220 <BgPoEvent_AmyPuzzle+0x108>
    1218:	244dffff 	addiu	t5,v0,-1
    121c:	a60d016c 	sh	t5,364(s0)
    1220:	8fbf004c 	lw	ra,76(sp)
    1224:	8fb00048 	lw	s0,72(sp)
    1228:	27bd0060 	addiu	sp,sp,96
    122c:	03e00008 	jr	ra
    1230:	00000000 	nop

00001234 <BgPoEvent_NextPainting>:
    1234:	27bdffe8 	addiu	sp,sp,-24
    1238:	afbf0014 	sw	ra,20(sp)
    123c:	8c820118 	lw	v0,280(a0)
    1240:	10400017 	beqz	v0,12a0 <BgPoEvent_NextPainting+0x6c>
    1244:	00000000 	nop
    1248:	8c8e011c 	lw	t6,284(a0)
    124c:	11c00014 	beqz	t6,12a0 <BgPoEvent_NextPainting+0x6c>
    1250:	00000000 	nop
    1254:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1258:	afa40018 	sw	a0,24(sp)
    125c:	3c013f00 	lui	at,0x3f00
    1260:	44812000 	mtc1	at,$f4
    1264:	8fa40018 	lw	a0,24(sp)
    1268:	4604003c 	c.lt.s	$f0,$f4
    126c:	00000000 	nop
    1270:	45020007 	bc1fl	1290 <BgPoEvent_NextPainting+0x5c>
    1274:	8c99011c 	lw	t9,284(a0)
    1278:	8c8f0118 	lw	t7,280(a0)
    127c:	3c010000 	lui	at,0x0
    1280:	91f80169 	lbu	t8,361(t7)
    1284:	10000015 	b	12dc <BgPoEvent_NextPainting+0xa8>
    1288:	a0380000 	sb	t8,0(at)
    128c:	8c99011c 	lw	t9,284(a0)
    1290:	3c010000 	lui	at,0x0
    1294:	93280169 	lbu	t0,361(t9)
    1298:	10000010 	b	12dc <BgPoEvent_NextPainting+0xa8>
    129c:	a0280000 	sb	t0,0(at)
    12a0:	50400006 	beqzl	v0,12bc <BgPoEvent_NextPainting+0x88>
    12a4:	8c82011c 	lw	v0,284(a0)
    12a8:	90490169 	lbu	t1,361(v0)
    12ac:	3c010000 	lui	at,0x0
    12b0:	1000000a 	b	12dc <BgPoEvent_NextPainting+0xa8>
    12b4:	a0290000 	sb	t1,0(at)
    12b8:	8c82011c 	lw	v0,284(a0)
    12bc:	10400005 	beqz	v0,12d4 <BgPoEvent_NextPainting+0xa0>
    12c0:	00000000 	nop
    12c4:	904a0169 	lbu	t2,361(v0)
    12c8:	3c010000 	lui	at,0x0
    12cc:	10000003 	b	12dc <BgPoEvent_NextPainting+0xa8>
    12d0:	a02a0000 	sb	t2,0(at)
    12d4:	10000002 	b	12e0 <BgPoEvent_NextPainting+0xac>
    12d8:	00001025 	move	v0,zero
    12dc:	24020001 	li	v0,1
    12e0:	8fbf0014 	lw	ra,20(sp)
    12e4:	27bd0018 	addiu	sp,sp,24
    12e8:	03e00008 	jr	ra
    12ec:	00000000 	nop

000012f0 <BgPoEvent_PaintingEmpty>:
    12f0:	afa50004 	sw	a1,4(sp)
    12f4:	3c0f0000 	lui	t7,0x0
    12f8:	91ef0000 	lbu	t7,0(t7)
    12fc:	908e0169 	lbu	t6,361(a0)
    1300:	3c190000 	lui	t9,0x0
    1304:	241800ff 	li	t8,255
    1308:	15cf0003 	bne	t6,t7,1318 <BgPoEvent_PaintingEmpty+0x28>
    130c:	27390000 	addiu	t9,t9,0
    1310:	a498016c 	sh	t8,364(a0)
    1314:	ac990164 	sw	t9,356(a0)
    1318:	03e00008 	jr	ra
    131c:	00000000 	nop

00001320 <BgPoEvent_PaintingAppear>:
    1320:	afa50004 	sw	a1,4(sp)
    1324:	848e016c 	lh	t6,364(a0)
    1328:	3c080000 	lui	t0,0x0
    132c:	241903e8 	li	t9,1000
    1330:	25cfffec 	addiu	t7,t6,-20
    1334:	a48f016c 	sh	t7,364(a0)
    1338:	8498016c 	lh	t8,364(a0)
    133c:	25080000 	addiu	t0,t0,0
    1340:	1f000003 	bgtz	t8,1350 <BgPoEvent_PaintingAppear+0x30>
    1344:	00000000 	nop
    1348:	a499016c 	sh	t9,364(a0)
    134c:	ac880164 	sw	t0,356(a0)
    1350:	03e00008 	jr	ra
    1354:	00000000 	nop

00001358 <BgPoEvent_PaintingVanish>:
    1358:	27bdffe8 	addiu	sp,sp,-24
    135c:	afbf0014 	sw	ra,20(sp)
    1360:	afa5001c 	sw	a1,28(sp)
    1364:	848e016c 	lh	t6,364(a0)
    1368:	25cf0014 	addiu	t7,t6,20
    136c:	a48f016c 	sh	t7,364(a0)
    1370:	8498016c 	lh	t8,364(a0)
    1374:	2b0100ff 	slti	at,t8,255
    1378:	54200008 	bnezl	at,139c <BgPoEvent_PaintingVanish+0x44>
    137c:	8fbf0014 	lw	ra,20(sp)
    1380:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1384:	afa40018 	sw	a0,24(sp)
    1388:	8fa40018 	lw	a0,24(sp)
    138c:	3c190000 	lui	t9,0x0
    1390:	27390000 	addiu	t9,t9,0
    1394:	ac990164 	sw	t9,356(a0)
    1398:	8fbf0014 	lw	ra,20(sp)
    139c:	27bd0018 	addiu	sp,sp,24
    13a0:	03e00008 	jr	ra
    13a4:	00000000 	nop

000013a8 <BgPoEvent_PaintingPresent>:
    13a8:	27bdffc8 	addiu	sp,sp,-56
    13ac:	afbf0034 	sw	ra,52(sp)
    13b0:	afb00030 	sw	s0,48(sp)
    13b4:	afa5003c 	sw	a1,60(sp)
    13b8:	8482016c 	lh	v0,364(a0)
    13bc:	00808025 	move	s0,a0
    13c0:	8ca61c44 	lw	a2,7236(a1)
    13c4:	10400003 	beqz	v0,13d4 <BgPoEvent_PaintingPresent+0x2c>
    13c8:	244fffff 	addiu	t7,v0,-1
    13cc:	a48f016c 	sh	t7,364(a0)
    13d0:	8482016c 	lh	v0,364(a0)
    13d4:	10400038 	beqz	v0,14b8 <BgPoEvent_PaintingPresent+0x110>
    13d8:	3c014316 	lui	at,0x4316
    13dc:	c6040090 	lwc1	$f4,144(s0)
    13e0:	44813000 	mtc1	at,$f6
    13e4:	3c014248 	lui	at,0x4248
    13e8:	4606203c 	c.lt.s	$f4,$f6
    13ec:	00000000 	nop
    13f0:	45000008 	bc1f	1414 <BgPoEvent_PaintingPresent+0x6c>
    13f4:	00000000 	nop
    13f8:	c6080094 	lwc1	$f8,148(s0)
    13fc:	44815000 	mtc1	at,$f10
    1400:	00000000 	nop
    1404:	460a403c 	c.lt.s	$f8,$f10
    1408:	00000000 	nop
    140c:	4503002b 	bc1tl	14bc <BgPoEvent_PaintingPresent+0x114>
    1410:	8e190118 	lw	t9,280(s0)
    1414:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1418:	00c02025 	move	a0,a2
    141c:	10400034 	beqz	v0,14f0 <BgPoEvent_PaintingPresent+0x148>
    1420:	3c0143a0 	lui	at,0x43a0
    1424:	c6100090 	lwc1	$f16,144(s0)
    1428:	44819000 	mtc1	at,$f18
    142c:	00000000 	nop
    1430:	4612803c 	c.lt.s	$f16,$f18
    1434:	00000000 	nop
    1438:	4502002e 	bc1fl	14f4 <BgPoEvent_PaintingPresent+0x14c>
    143c:	920a0181 	lbu	t2,385(s0)
    1440:	92180169 	lbu	t8,361(s0)
    1444:	24010002 	li	at,2
    1448:	02002025 	move	a0,s0
    144c:	1301000c 	beq	t8,at,1480 <BgPoEvent_PaintingPresent+0xd8>
    1450:	24052000 	li	a1,8192
    1454:	3c0142c8 	lui	at,0x42c8
    1458:	44813000 	mtc1	at,$f6
    145c:	c6040094 	lwc1	$f4,148(s0)
    1460:	00001025 	move	v0,zero
    1464:	4606203c 	c.lt.s	$f4,$f6
    1468:	00000000 	nop
    146c:	4500000c 	bc1f	14a0 <BgPoEvent_PaintingPresent+0xf8>
    1470:	00000000 	nop
    1474:	24020001 	li	v0,1
    1478:	10000009 	b	14a0 <BgPoEvent_PaintingPresent+0xf8>
    147c:	00000000 	nop
    1480:	c6080094 	lwc1	$f8,148(s0)
    1484:	44805000 	mtc1	zero,$f10
    1488:	00001025 	move	v0,zero
    148c:	460a403c 	c.lt.s	$f8,$f10
    1490:	00000000 	nop
    1494:	45000002 	bc1f	14a0 <BgPoEvent_PaintingPresent+0xf8>
    1498:	00000000 	nop
    149c:	24020001 	li	v0,1
    14a0:	50400014 	beqzl	v0,14f4 <BgPoEvent_PaintingPresent+0x14c>
    14a4:	920a0181 	lbu	t2,385(s0)
    14a8:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    14ac:	8fa6003c 	lw	a2,60(sp)
    14b0:	50400010 	beqzl	v0,14f4 <BgPoEvent_PaintingPresent+0x14c>
    14b4:	920a0181 	lbu	t2,385(s0)
    14b8:	8e190118 	lw	t9,280(s0)
    14bc:	02002025 	move	a0,s0
    14c0:	240538ec 	li	a1,14572
    14c4:	17200004 	bnez	t9,14d8 <BgPoEvent_PaintingPresent+0x130>
    14c8:	00000000 	nop
    14cc:	8e08011c 	lw	t0,284(s0)
    14d0:	51000008 	beqzl	t0,14f4 <BgPoEvent_PaintingPresent+0x14c>
    14d4:	920a0181 	lbu	t2,385(s0)
    14d8:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    14dc:	a600016c 	sh	zero,364(s0)
    14e0:	3c090000 	lui	t1,0x0
    14e4:	25290000 	addiu	t1,t1,0
    14e8:	1000003f 	b	15e8 <BgPoEvent_PaintingPresent+0x240>
    14ec:	ae090164 	sw	t1,356(s0)
    14f0:	920a0181 	lbu	t2,385(s0)
    14f4:	314b0002 	andi	t3,t2,0x2
    14f8:	5160003c 	beqzl	t3,15ec <BgPoEvent_PaintingPresent+0x244>
    14fc:	8fbf0034 	lw	ra,52(sp)
    1500:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1504:	02002025 	move	a0,s0
    1508:	14400021 	bnez	v0,1590 <BgPoEvent_PaintingPresent+0x1e8>
    150c:	02002025 	move	a0,s0
    1510:	3c014220 	lui	at,0x4220
    1514:	44819000 	mtc1	at,$f18
    1518:	c6100028 	lwc1	$f16,40(s0)
    151c:	8e070024 	lw	a3,36(s0)
    1520:	8fa5003c 	lw	a1,60(sp)
    1524:	46128101 	sub.s	$f4,$f16,$f18
    1528:	24060091 	li	a2,145
    152c:	24a41c24 	addiu	a0,a1,7204
    1530:	e7a40010 	swc1	$f4,16(sp)
    1534:	c606002c 	lwc1	$f6,44(s0)
    1538:	afa00018 	sw	zero,24(sp)
    153c:	e7a60014 	swc1	$f6,20(sp)
    1540:	860c00b6 	lh	t4,182(s0)
    1544:	afa00020 	sw	zero,32(sp)
    1548:	afac001c 	sw	t4,28(sp)
    154c:	920e0168 	lbu	t6,360(s0)
    1550:	860d001c 	lh	t5,28(s0)
    1554:	25cfffff 	addiu	t7,t6,-1
    1558:	000fc200 	sll	t8,t7,0x8
    155c:	01b8c821 	addu	t9,t5,t8
    1560:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1564:	afb90024 	sw	t9,36(sp)
    1568:	8fa4003c 	lw	a0,60(sp)
    156c:	24050c58 	li	a1,3160
    1570:	24060050 	li	a2,80
    1574:	02003825 	move	a3,s0
    1578:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    157c:	afa00010 	sw	zero,16(sp)
    1580:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1584:	24044802 	li	a0,18434
    1588:	1000000a 	b	15b4 <BgPoEvent_PaintingPresent+0x20c>
    158c:	8e020118 	lw	v0,280(s0)
    1590:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1594:	240538ef 	li	a1,14575
    1598:	8fa4003c 	lw	a0,60(sp)
    159c:	24050c58 	li	a1,3160
    15a0:	24060023 	li	a2,35
    15a4:	02003825 	move	a3,s0
    15a8:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    15ac:	afa00010 	sw	zero,16(sp)
    15b0:	8e020118 	lw	v0,280(s0)
    15b4:	3c090000 	lui	t1,0x0
    15b8:	24080014 	li	t0,20
    15bc:	10400003 	beqz	v0,15cc <BgPoEvent_PaintingPresent+0x224>
    15c0:	25290000 	addiu	t1,t1,0
    15c4:	ac40011c 	sw	zero,284(v0)
    15c8:	ae000118 	sw	zero,280(s0)
    15cc:	8e02011c 	lw	v0,284(s0)
    15d0:	50400004 	beqzl	v0,15e4 <BgPoEvent_PaintingPresent+0x23c>
    15d4:	a608016c 	sh	t0,364(s0)
    15d8:	ac400118 	sw	zero,280(v0)
    15dc:	ae00011c 	sw	zero,284(s0)
    15e0:	a608016c 	sh	t0,364(s0)
    15e4:	ae090164 	sw	t1,356(s0)
    15e8:	8fbf0034 	lw	ra,52(sp)
    15ec:	8fb00030 	lw	s0,48(sp)
    15f0:	27bd0038 	addiu	sp,sp,56
    15f4:	03e00008 	jr	ra
    15f8:	00000000 	nop

000015fc <BgPoEvent_PaintingBurn>:
    15fc:	27bdffa0 	addiu	sp,sp,-96
    1600:	afbf004c 	sw	ra,76(sp)
    1604:	afb00048 	sw	s0,72(sp)
    1608:	afa50064 	sw	a1,100(sp)
    160c:	848e016c 	lh	t6,364(a0)
    1610:	00808025 	move	s0,a0
    1614:	25cfffff 	addiu	t7,t6,-1
    1618:	a48f016c 	sh	t7,364(a0)
    161c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1620:	848400b6 	lh	a0,182(a0)
    1624:	3c0140a0 	lui	at,0x40a0
    1628:	44812000 	mtc1	at,$f4
    162c:	c6080024 	lwc1	$f8,36(s0)
    1630:	3c014284 	lui	at,0x4284
    1634:	46040182 	mul.s	$f6,$f0,$f4
    1638:	44816000 	mtc1	at,$f12
    163c:	46083280 	add.s	$f10,$f6,$f8
    1640:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1644:	e7aa0054 	swc1	$f10,84(sp)
    1648:	c6100028 	lwc1	$f16,40(s0)
    164c:	3c014248 	lui	at,0x4248
    1650:	44816000 	mtc1	at,$f12
    1654:	46100480 	add.s	$f18,$f0,$f16
    1658:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    165c:	e7b20058 	swc1	$f18,88(sp)
    1660:	c604002c 	lwc1	$f4,44(s0)
    1664:	46040180 	add.s	$f6,$f0,$f4
    1668:	e7a6005c 	swc1	$f6,92(sp)
    166c:	8602016c 	lh	v0,364(s0)
    1670:	0440003f 	bltz	v0,1770 <BgPoEvent_PaintingBurn+0x174>
    1674:	00000000 	nop
    1678:	92180168 	lbu	t8,360(s0)
    167c:	24010002 	li	at,2
    1680:	3c060000 	lui	a2,0x0
    1684:	1701001e 	bne	t8,at,1700 <BgPoEvent_PaintingBurn+0x104>
    1688:	24c600ac 	addiu	a2,a2,172
    168c:	3c060000 	lui	a2,0x0
    1690:	24c600ac 	addiu	a2,a2,172
    1694:	24190064 	li	t9,100
    1698:	240800ff 	li	t0,255
    169c:	240900ff 	li	t1,255
    16a0:	240a0096 	li	t2,150
    16a4:	240b00aa 	li	t3,170
    16a8:	240c00ff 	li	t4,255
    16ac:	240d0001 	li	t5,1
    16b0:	240e0009 	li	t6,9
    16b4:	240f0001 	li	t7,1
    16b8:	afaf003c 	sw	t7,60(sp)
    16bc:	afae0038 	sw	t6,56(sp)
    16c0:	afad0034 	sw	t5,52(sp)
    16c4:	afac0028 	sw	t4,40(sp)
    16c8:	afab0024 	sw	t3,36(sp)
    16cc:	afaa0020 	sw	t2,32(sp)
    16d0:	afa9001c 	sw	t1,28(sp)
    16d4:	afa80018 	sw	t0,24(sp)
    16d8:	afb90010 	sw	t9,16(sp)
    16dc:	00c03825 	move	a3,a2
    16e0:	8fa40064 	lw	a0,100(sp)
    16e4:	27a50054 	addiu	a1,sp,84
    16e8:	afa00014 	sw	zero,20(sp)
    16ec:	afa0002c 	sw	zero,44(sp)
    16f0:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    16f4:	afa00030 	sw	zero,48(sp)
    16f8:	1000001d 	b	1770 <BgPoEvent_PaintingBurn+0x174>
    16fc:	8602016c 	lh	v0,364(s0)
    1700:	24180064 	li	t8,100
    1704:	afb80010 	sw	t8,16(sp)
    1708:	24180001 	li	t8,1
    170c:	241900c8 	li	t9,200
    1710:	240800ff 	li	t0,255
    1714:	240900ff 	li	t1,255
    1718:	240a00aa 	li	t2,170
    171c:	240b0032 	li	t3,50
    1720:	240c0064 	li	t4,100
    1724:	240d00ff 	li	t5,255
    1728:	240e0001 	li	t6,1
    172c:	240f0009 	li	t7,9
    1730:	afaf0038 	sw	t7,56(sp)
    1734:	afae0034 	sw	t6,52(sp)
    1738:	afad0030 	sw	t5,48(sp)
    173c:	afac002c 	sw	t4,44(sp)
    1740:	afab0028 	sw	t3,40(sp)
    1744:	afaa0024 	sw	t2,36(sp)
    1748:	afa90020 	sw	t1,32(sp)
    174c:	afa8001c 	sw	t0,28(sp)
    1750:	afb90018 	sw	t9,24(sp)
    1754:	afb8003c 	sw	t8,60(sp)
    1758:	8fa40064 	lw	a0,100(sp)
    175c:	27a50054 	addiu	a1,sp,84
    1760:	00c03825 	move	a3,a2
    1764:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1768:	afa00014 	sw	zero,20(sp)
    176c:	8602016c 	lh	v0,364(s0)
    1770:	54400004 	bnezl	v0,1784 <BgPoEvent_PaintingBurn+0x188>
    1774:	2841ffc4 	slti	at,v0,-60
    1778:	ae000134 	sw	zero,308(s0)
    177c:	8602016c 	lh	v0,364(s0)
    1780:	2841ffc4 	slti	at,v0,-60
    1784:	50200004 	beqzl	at,1798 <BgPoEvent_PaintingBurn+0x19c>
    1788:	8fbf004c 	lw	ra,76(sp)
    178c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1790:	02002025 	move	a0,s0
    1794:	8fbf004c 	lw	ra,76(sp)
    1798:	8fb00048 	lw	s0,72(sp)
    179c:	27bd0060 	addiu	sp,sp,96
    17a0:	03e00008 	jr	ra
    17a4:	00000000 	nop

000017a8 <BgPoEvent_Update>:
    17a8:	27bdffe8 	addiu	sp,sp,-24
    17ac:	afbf0014 	sw	ra,20(sp)
    17b0:	afa5001c 	sw	a1,28(sp)
    17b4:	afa40018 	sw	a0,24(sp)
    17b8:	8c990164 	lw	t9,356(a0)
    17bc:	0320f809 	jalr	t9
    17c0:	00000000 	nop
    17c4:	8fa70018 	lw	a3,24(sp)
    17c8:	3c0e0000 	lui	t6,0x0
    17cc:	25ce0000 	addiu	t6,t6,0
    17d0:	8ce20164 	lw	v0,356(a3)
    17d4:	3c0f0000 	lui	t7,0x0
    17d8:	8fa4001c 	lw	a0,28(sp)
    17dc:	11c20002 	beq	t6,v0,17e8 <BgPoEvent_Update+0x40>
    17e0:	25ef0000 	addiu	t7,t7,0
    17e4:	15e20005 	bne	t7,v0,17fc <BgPoEvent_Update+0x54>
    17e8:	3c010001 	lui	at,0x1
    17ec:	34211e60 	ori	at,at,0x1e60
    17f0:	00812821 	addu	a1,a0,at
    17f4:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    17f8:	24e60170 	addiu	a2,a3,368
    17fc:	8fbf0014 	lw	ra,20(sp)
    1800:	27bd0018 	addiu	sp,sp,24
    1804:	03e00008 	jr	ra
    1808:	00000000 	nop

0000180c <BgPoEvent_Draw>:
    180c:	27bdff90 	addiu	sp,sp,-112
    1810:	afbf001c 	sw	ra,28(sp)
    1814:	afb00018 	sw	s0,24(sp)
    1818:	afa50074 	sw	a1,116(sp)
    181c:	8ca50000 	lw	a1,0(a1)
    1820:	00808025 	move	s0,a0
    1824:	3c060000 	lui	a2,0x0
    1828:	24c60000 	addiu	a2,a2,0
    182c:	27a40030 	addiu	a0,sp,48
    1830:	240705c9 	li	a3,1481
    1834:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1838:	afa50040 	sw	a1,64(sp)
    183c:	8faf0074 	lw	t7,116(sp)
    1840:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1844:	8de40000 	lw	a0,0(t7)
    1848:	92020168 	lbu	v0,360(s0)
    184c:	24010003 	li	at,3
    1850:	8fa80040 	lw	t0,64(sp)
    1854:	10410004 	beq	v0,at,1868 <BgPoEvent_Draw+0x5c>
    1858:	3c0eda38 	lui	t6,0xda38
    185c:	24010002 	li	at,2
    1860:	54410018 	bnel	v0,at,18c4 <BgPoEvent_Draw+0xb8>
    1864:	8d0202c0 	lw	v0,704(t0)
    1868:	8e020164 	lw	v0,356(s0)
    186c:	3c180000 	lui	t8,0x0
    1870:	27180000 	addiu	t8,t8,0
    1874:	17020003 	bne	t8,v0,1884 <BgPoEvent_Draw+0x78>
    1878:	3c0afb00 	lui	t2,0xfb00
    187c:	10000008 	b	18a0 <BgPoEvent_Draw+0x94>
    1880:	240400ff 	li	a0,255
    1884:	3c190000 	lui	t9,0x0
    1888:	27390000 	addiu	t9,t9,0
    188c:	57220004 	bnel	t9,v0,18a0 <BgPoEvent_Draw+0x94>
    1890:	9204016d 	lbu	a0,365(s0)
    1894:	10000002 	b	18a0 <BgPoEvent_Draw+0x94>
    1898:	00002025 	move	a0,zero
    189c:	9204016d 	lbu	a0,365(s0)
    18a0:	8d0202c0 	lw	v0,704(t0)
    18a4:	308b00ff 	andi	t3,a0,0xff
    18a8:	2401ff00 	li	at,-256
    18ac:	24490008 	addiu	t1,v0,8
    18b0:	ad0902c0 	sw	t1,704(t0)
    18b4:	01616025 	or	t4,t3,at
    18b8:	ac4c0004 	sw	t4,4(v0)
    18bc:	ac4a0000 	sw	t2,0(v0)
    18c0:	8d0202c0 	lw	v0,704(t0)
    18c4:	35ce0003 	ori	t6,t6,0x3
    18c8:	3c050000 	lui	a1,0x0
    18cc:	244d0008 	addiu	t5,v0,8
    18d0:	ad0d02c0 	sw	t5,704(t0)
    18d4:	ac4e0000 	sw	t6,0(v0)
    18d8:	8faf0074 	lw	t7,116(sp)
    18dc:	24a50014 	addiu	a1,a1,20
    18e0:	240605dd 	li	a2,1501
    18e4:	8de40000 	lw	a0,0(t7)
    18e8:	afa80040 	sw	t0,64(sp)
    18ec:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    18f0:	afa20028 	sw	v0,40(sp)
    18f4:	8fa30028 	lw	v1,40(sp)
    18f8:	8fa80040 	lw	t0,64(sp)
    18fc:	3c19de00 	lui	t9,0xde00
    1900:	ac620004 	sw	v0,4(v1)
    1904:	8d0202c0 	lw	v0,704(t0)
    1908:	3c0b0000 	lui	t3,0x0
    190c:	3c060000 	lui	a2,0x0
    1910:	24580008 	addiu	t8,v0,8
    1914:	ad1802c0 	sw	t8,704(t0)
    1918:	ac590000 	sw	t9,0(v0)
    191c:	92090168 	lbu	t1,360(s0)
    1920:	24c60028 	addiu	a2,a2,40
    1924:	27a40030 	addiu	a0,sp,48
    1928:	00095080 	sll	t2,t1,0x2
    192c:	016a5821 	addu	t3,t3,t2
    1930:	8d6b00e4 	lw	t3,228(t3)
    1934:	240705e4 	li	a3,1508
    1938:	ac4b0004 	sw	t3,4(v0)
    193c:	8fac0074 	lw	t4,116(sp)
    1940:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1944:	8d850000 	lw	a1,0(t4)
    1948:	92020168 	lbu	v0,360(s0)
    194c:	24010001 	li	at,1
    1950:	50400003 	beqzl	v0,1960 <BgPoEvent_Draw+0x154>
    1954:	3c013f80 	lui	at,0x3f80
    1958:	1441004a 	bne	v0,at,1a84 <BgPoEvent_Draw+0x278>
    195c:	3c013f80 	lui	at,0x3f80
    1960:	44811000 	mtc1	at,$f2
    1964:	3c010000 	lui	at,0x0
    1968:	c4240050 	lwc1	$f4,80(at)
    196c:	c6060028 	lwc1	$f6,40(s0)
    1970:	3c010000 	lui	at,0x0
    1974:	c42a0054 	lwc1	$f10,84(at)
    1978:	46062201 	sub.s	$f8,$f4,$f6
    197c:	3c0141f0 	lui	at,0x41f0
    1980:	460a4002 	mul.s	$f0,$f8,$f10
    1984:	4600103c 	c.lt.s	$f2,$f0
    1988:	00000000 	nop
    198c:	4503003e 	bc1tl	1a88 <BgPoEvent_Draw+0x27c>
    1990:	8fbf001c 	lw	ra,28(sp)
    1994:	c6100024 	lwc1	$f16,36(s0)
    1998:	44812000 	mtc1	at,$f4
    199c:	3c010000 	lui	at,0x0
    19a0:	e7b00058 	swc1	$f16,88(sp)
    19a4:	c6120028 	lwc1	$f18,40(s0)
    19a8:	c42a0058 	lwc1	$f10,88(at)
    19ac:	3c010000 	lui	at,0x0
    19b0:	46049181 	sub.s	$f6,$f18,$f4
    19b4:	c432005c 	lwc1	$f18,92(at)
    19b8:	3c0142c8 	lui	at,0x42c8
    19bc:	460a0402 	mul.s	$f16,$f0,$f10
    19c0:	e7a6005c 	swc1	$f6,92(sp)
    19c4:	c608002c 	lwc1	$f8,44(s0)
    19c8:	44813000 	mtc1	at,$f6
    19cc:	3c01431b 	lui	at,0x431b
    19d0:	e7a80060 	swc1	$f8,96(sp)
    19d4:	46060202 	mul.s	$f8,$f0,$f6
    19d8:	44815000 	mtc1	at,$f10
    19dc:	46128100 	add.s	$f4,$f16,$f18
    19e0:	24060001 	li	a2,1
    19e4:	e7a20050 	swc1	$f2,80(sp)
    19e8:	3c014f00 	lui	at,0x4f00
    19ec:	e7a40054 	swc1	$f4,84(sp)
    19f0:	460a4400 	add.s	$f16,$f8,$f10
    19f4:	e7a4004c 	swc1	$f4,76(sp)
    19f8:	27a40058 	addiu	a0,sp,88
    19fc:	27a5004c 	addiu	a1,sp,76
    1a00:	444df800 	cfc1	t5,$31
    1a04:	44c6f800 	ctc1	a2,$31
    1a08:	8fa70074 	lw	a3,116(sp)
    1a0c:	460084a4 	cvt.w.s	$f18,$f16
    1a10:	4446f800 	cfc1	a2,$31
    1a14:	00000000 	nop
    1a18:	30c60078 	andi	a2,a2,0x78
    1a1c:	50c00013 	beqzl	a2,1a6c <BgPoEvent_Draw+0x260>
    1a20:	44069000 	mfc1	a2,$f18
    1a24:	44819000 	mtc1	at,$f18
    1a28:	24060001 	li	a2,1
    1a2c:	46128481 	sub.s	$f18,$f16,$f18
    1a30:	44c6f800 	ctc1	a2,$31
    1a34:	00000000 	nop
    1a38:	460094a4 	cvt.w.s	$f18,$f18
    1a3c:	4446f800 	cfc1	a2,$31
    1a40:	00000000 	nop
    1a44:	30c60078 	andi	a2,a2,0x78
    1a48:	14c00005 	bnez	a2,1a60 <BgPoEvent_Draw+0x254>
    1a4c:	00000000 	nop
    1a50:	44069000 	mfc1	a2,$f18
    1a54:	3c018000 	lui	at,0x8000
    1a58:	10000007 	b	1a78 <BgPoEvent_Draw+0x26c>
    1a5c:	00c13025 	or	a2,a2,at
    1a60:	10000005 	b	1a78 <BgPoEvent_Draw+0x26c>
    1a64:	2406ffff 	li	a2,-1
    1a68:	44069000 	mfc1	a2,$f18
    1a6c:	00000000 	nop
    1a70:	04c0fffb 	bltz	a2,1a60 <BgPoEvent_Draw+0x254>
    1a74:	00000000 	nop
    1a78:	44cdf800 	ctc1	t5,$31
    1a7c:	0c000000 	jal	0 <BgPoEvent_InitPaintings>
    1a80:	30c600ff 	andi	a2,a2,0xff
    1a84:	8fbf001c 	lw	ra,28(sp)
    1a88:	8fb00018 	lw	s0,24(sp)
    1a8c:	27bd0070 	addiu	sp,sp,112
    1a90:	03e00008 	jr	ra
    1a94:	00000000 	nop
	...
