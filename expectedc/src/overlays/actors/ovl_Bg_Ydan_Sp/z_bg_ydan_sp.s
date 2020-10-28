
build/src/overlays/actors/ovl_Bg_Ydan_Sp/z_bg_ydan_sp.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgYdanSp_Init>:
       0:	27bdff80 	addiu	sp,sp,-128
       4:	afa50084 	sw	a1,132(sp)
       8:	afbf0024 	sw	ra,36(sp)
       c:	afb00020 	sw	s0,32(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	afa0004c 	sw	zero,76(sp)
      1c:	0c000000 	jal	0 <BgYdanSp_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	8618001c 	lh	t8,28(s0)
      28:	8609001c 	lh	t1,28(s0)
      2c:	860e001c 	lh	t6,28(s0)
      30:	0018c983 	sra	t9,t8,0x6
      34:	00095303 	sra	t2,t1,0xc
      38:	3328003f 	andi	t0,t9,0x3f
      3c:	314b000f 	andi	t3,t2,0xf
      40:	31cf003f 	andi	t7,t6,0x3f
      44:	a20f0168 	sb	t7,360(s0)
      48:	a2080169 	sb	t0,361(s0)
      4c:	a60b001c 	sh	t3,28(s0)
      50:	02002025 	move	a0,s0
      54:	0c000000 	jal	0 <BgYdanSp_Init>
      58:	24050001 	li	a1,1
      5c:	26050170 	addiu	a1,s0,368
      60:	afa50030 	sw	a1,48(sp)
      64:	0c000000 	jal	0 <BgYdanSp_Init>
      68:	8fa40084 	lw	a0,132(sp)
      6c:	3c070000 	lui	a3,0x0
      70:	260c0190 	addiu	t4,s0,400
      74:	afac0010 	sw	t4,16(sp)
      78:	24e70000 	addiu	a3,a3,0
      7c:	8fa40084 	lw	a0,132(sp)
      80:	8fa50030 	lw	a1,48(sp)
      84:	0c000000 	jal	0 <BgYdanSp_Init>
      88:	02003025 	move	a2,s0
      8c:	860d001c 	lh	t5,28(s0)
      90:	3c040600 	lui	a0,0x600
      94:	24846050 	addiu	a0,a0,24656
      98:	15a00040 	bnez	t5,19c <BgYdanSp_Init+0x19c>
      9c:	00000000 	nop
      a0:	3c040600 	lui	a0,0x600
      a4:	24846460 	addiu	a0,a0,25696
      a8:	0c000000 	jal	0 <BgYdanSp_Init>
      ac:	27a5004c 	addiu	a1,sp,76
      b0:	3c0e0000 	lui	t6,0x0
      b4:	25ce0000 	addiu	t6,t6,0
      b8:	3c030000 	lui	v1,0x0
      bc:	3c040000 	lui	a0,0x0
      c0:	ae0e0164 	sw	t6,356(s0)
      c4:	24840000 	addiu	a0,a0,0
      c8:	24630000 	addiu	v1,v1,0
      cc:	27a20054 	addiu	v0,sp,84
      d0:	2463000c 	addiu	v1,v1,12
      d4:	10640010 	beq	v1,a0,118 <BgYdanSp_Init+0x118>
      d8:	c472000c 	lwc1	$f18,12(v1)
      dc:	c6100024 	lwc1	$f16,36(s0)
      e0:	c46e0010 	lwc1	$f14,16(v1)
      e4:	c46c0014 	lwc1	$f12,20(v1)
      e8:	46109400 	add.s	$f16,$f18,$f16
      ec:	c4720018 	lwc1	$f18,24(v1)
      f0:	2463000c 	addiu	v1,v1,12
      f4:	2442000c 	addiu	v0,v0,12
      f8:	e450fff4 	swc1	$f16,-12(v0)
      fc:	c6100028 	lwc1	$f16,40(s0)
     100:	46107400 	add.s	$f16,$f14,$f16
     104:	e450fff8 	swc1	$f16,-8(v0)
     108:	c610002c 	lwc1	$f16,44(s0)
     10c:	46106400 	add.s	$f16,$f12,$f16
     110:	1464fff2 	bne	v1,a0,dc <BgYdanSp_Init+0xdc>
     114:	e450fffc 	swc1	$f16,-4(v0)
     118:	c6100024 	lwc1	$f16,36(s0)
     11c:	c46e0010 	lwc1	$f14,16(v1)
     120:	c46c0014 	lwc1	$f12,20(v1)
     124:	46109400 	add.s	$f16,$f18,$f16
     128:	2442000c 	addiu	v0,v0,12
     12c:	e450fff4 	swc1	$f16,-12(v0)
     130:	c6100028 	lwc1	$f16,40(s0)
     134:	46107400 	add.s	$f16,$f14,$f16
     138:	e450fff8 	swc1	$f16,-8(v0)
     13c:	c610002c 	lwc1	$f16,44(s0)
     140:	46106400 	add.s	$f16,$f12,$f16
     144:	e450fffc 	swc1	$f16,-4(v0)
     148:	27af006c 	addiu	t7,sp,108
     14c:	afaf0010 	sw	t7,16(sp)
     150:	8fa40030 	lw	a0,48(sp)
     154:	00002825 	move	a1,zero
     158:	27a60054 	addiu	a2,sp,84
     15c:	0c000000 	jal	0 <BgYdanSp_Init>
     160:	27a70060 	addiu	a3,sp,96
     164:	c7b20054 	lwc1	$f18,84(sp)
     168:	c7a40074 	lwc1	$f4,116(sp)
     16c:	27b80060 	addiu	t8,sp,96
     170:	afb80010 	sw	t8,16(sp)
     174:	8fa40030 	lw	a0,48(sp)
     178:	24050001 	li	a1,1
     17c:	27a60054 	addiu	a2,sp,84
     180:	27a7006c 	addiu	a3,sp,108
     184:	e7b20060 	swc1	$f18,96(sp)
     188:	0c000000 	jal	0 <BgYdanSp_Init>
     18c:	e7a40068 	swc1	$f4,104(sp)
     190:	44803000 	mtc1	zero,$f6
     194:	10000080 	b	398 <BgYdanSp_Init+0x398>
     198:	e606016c 	swc1	$f6,364(s0)
     19c:	0c000000 	jal	0 <BgYdanSp_Init>
     1a0:	27a5004c 	addiu	a1,sp,76
     1a4:	3c190000 	lui	t9,0x0
     1a8:	27390000 	addiu	t9,t9,0
     1ac:	ae190164 	sw	t9,356(s0)
     1b0:	02002025 	move	a0,s0
     1b4:	0c000000 	jal	0 <BgYdanSp_Init>
     1b8:	3c0541f0 	lui	a1,0x41f0
     1bc:	0c000000 	jal	0 <BgYdanSp_Init>
     1c0:	860400b6 	lh	a0,182(s0)
     1c4:	860400b6 	lh	a0,182(s0)
     1c8:	0c000000 	jal	0 <BgYdanSp_Init>
     1cc:	e7a00040 	swc1	$f0,64(sp)
     1d0:	860400b4 	lh	a0,180(s0)
     1d4:	0c000000 	jal	0 <BgYdanSp_Init>
     1d8:	e7a00044 	swc1	$f0,68(sp)
     1dc:	46000387 	neg.s	$f14,$f0
     1e0:	860400b4 	lh	a0,180(s0)
     1e4:	0c000000 	jal	0 <BgYdanSp_Init>
     1e8:	e7ae0038 	swc1	$f14,56(sp)
     1ec:	3c030000 	lui	v1,0x0
     1f0:	3c040000 	lui	a0,0x0
     1f4:	c7a20040 	lwc1	$f2,64(sp)
     1f8:	c7ac0044 	lwc1	$f12,68(sp)
     1fc:	c7ae0038 	lwc1	$f14,56(sp)
     200:	46000406 	mov.s	$f16,$f0
     204:	24840000 	addiu	a0,a0,0
     208:	24630000 	addiu	v1,v1,0
     20c:	27a20054 	addiu	v0,sp,84
     210:	2463000c 	addiu	v1,v1,12
     214:	c4720010 	lwc1	$f18,16(v1)
     218:	1064001b 	beq	v1,a0,288 <BgYdanSp_Init+0x288>
     21c:	c46a000c 	lwc1	$f10,12(v1)
     220:	46029202 	mul.s	$f8,$f18,$f2
     224:	c6060024 	lwc1	$f6,36(s0)
     228:	c4640010 	lwc1	$f4,16(v1)
     22c:	460a6482 	mul.s	$f18,$f12,$f10
     230:	c46a0010 	lwc1	$f10,16(v1)
     234:	2463000c 	addiu	v1,v1,12
     238:	46002102 	mul.s	$f4,$f4,$f0
     23c:	2442000c 	addiu	v0,v0,12
     240:	460e4202 	mul.s	$f8,$f8,$f14
     244:	46123180 	add.s	$f6,$f6,$f18
     248:	460c5482 	mul.s	$f18,$f10,$f12
     24c:	c46a0000 	lwc1	$f10,0(v1)
     250:	460a1282 	mul.s	$f10,$f2,$f10
     254:	46083201 	sub.s	$f8,$f6,$f8
     258:	460e9182 	mul.s	$f6,$f18,$f14
     25c:	c4720010 	lwc1	$f18,16(v1)
     260:	e448fff4 	swc1	$f8,-12(v0)
     264:	c6080028 	lwc1	$f8,40(s0)
     268:	46082200 	add.s	$f8,$f4,$f8
     26c:	e448fff8 	swc1	$f8,-8(v0)
     270:	c608002c 	lwc1	$f8,44(s0)
     274:	460a4201 	sub.s	$f8,$f8,$f10
     278:	c46a000c 	lwc1	$f10,12(v1)
     27c:	46083200 	add.s	$f8,$f6,$f8
     280:	1464ffe7 	bne	v1,a0,220 <BgYdanSp_Init+0x220>
     284:	e448fffc 	swc1	$f8,-4(v0)
     288:	46029202 	mul.s	$f8,$f18,$f2
     28c:	c4640010 	lwc1	$f4,16(v1)
     290:	c6060024 	lwc1	$f6,36(s0)
     294:	460a6482 	mul.s	$f18,$f12,$f10
     298:	c46a0010 	lwc1	$f10,16(v1)
     29c:	2442000c 	addiu	v0,v0,12
     2a0:	46002102 	mul.s	$f4,$f4,$f0
     2a4:	00000000 	nop
     2a8:	460e4202 	mul.s	$f8,$f8,$f14
     2ac:	46123180 	add.s	$f6,$f6,$f18
     2b0:	460c5482 	mul.s	$f18,$f10,$f12
     2b4:	c46a000c 	lwc1	$f10,12(v1)
     2b8:	460a1282 	mul.s	$f10,$f2,$f10
     2bc:	46083201 	sub.s	$f8,$f6,$f8
     2c0:	460e9182 	mul.s	$f6,$f18,$f14
     2c4:	e448fff4 	swc1	$f8,-12(v0)
     2c8:	c6080028 	lwc1	$f8,40(s0)
     2cc:	46082200 	add.s	$f8,$f4,$f8
     2d0:	e448fff8 	swc1	$f8,-8(v0)
     2d4:	c608002c 	lwc1	$f8,44(s0)
     2d8:	460a4201 	sub.s	$f8,$f8,$f10
     2dc:	46083200 	add.s	$f8,$f6,$f8
     2e0:	e448fffc 	swc1	$f8,-4(v0)
     2e4:	27a8006c 	addiu	t0,sp,108
     2e8:	afa80010 	sw	t0,16(sp)
     2ec:	8fa40030 	lw	a0,48(sp)
     2f0:	00002825 	move	a1,zero
     2f4:	27a60054 	addiu	a2,sp,84
     2f8:	27a70060 	addiu	a3,sp,96
     2fc:	e7a20040 	swc1	$f2,64(sp)
     300:	e7ac0044 	swc1	$f12,68(sp)
     304:	e7ae0038 	swc1	$f14,56(sp)
     308:	0c000000 	jal	0 <BgYdanSp_Init>
     30c:	e7b0003c 	swc1	$f16,60(sp)
     310:	3c010000 	lui	at,0x0
     314:	c7ac0044 	lwc1	$f12,68(sp)
     318:	c4260000 	lwc1	$f6,0(at)
     31c:	c6080024 	lwc1	$f8,36(s0)
     320:	3c010000 	lui	at,0x0
     324:	46066482 	mul.s	$f18,$f12,$f6
     328:	c7a20040 	lwc1	$f2,64(sp)
     32c:	c42a0000 	lwc1	$f10,0(at)
     330:	c7ae0038 	lwc1	$f14,56(sp)
     334:	c7b0003c 	lwc1	$f16,60(sp)
     338:	27a90060 	addiu	t1,sp,96
     33c:	8fa40030 	lw	a0,48(sp)
     340:	46124100 	add.s	$f4,$f8,$f18
     344:	46025202 	mul.s	$f8,$f10,$f2
     348:	24050001 	li	a1,1
     34c:	27a60054 	addiu	a2,sp,84
     350:	27a7006c 	addiu	a3,sp,108
     354:	460e4482 	mul.s	$f18,$f8,$f14
     358:	46122201 	sub.s	$f8,$f4,$f18
     35c:	46105102 	mul.s	$f4,$f10,$f16
     360:	e7a80060 	swc1	$f8,96(sp)
     364:	c6120028 	lwc1	$f18,40(s0)
     368:	46122200 	add.s	$f8,$f4,$f18
     36c:	46061482 	mul.s	$f18,$f2,$f6
     370:	00000000 	nop
     374:	460c5182 	mul.s	$f6,$f10,$f12
     378:	e7a80064 	swc1	$f8,100(sp)
     37c:	c604002c 	lwc1	$f4,44(s0)
     380:	afa90010 	sw	t1,16(sp)
     384:	46122201 	sub.s	$f8,$f4,$f18
     388:	460e3102 	mul.s	$f4,$f6,$f14
     38c:	46082480 	add.s	$f18,$f4,$f8
     390:	0c000000 	jal	0 <BgYdanSp_Init>
     394:	e7b20068 	swc1	$f18,104(sp)
     398:	8fa40084 	lw	a0,132(sp)
     39c:	02003025 	move	a2,s0
     3a0:	8fa7004c 	lw	a3,76(sp)
     3a4:	0c000000 	jal	0 <BgYdanSp_Init>
     3a8:	24850810 	addiu	a1,a0,2064
     3ac:	ae02014c 	sw	v0,332(s0)
     3b0:	a600016a 	sh	zero,362(s0)
     3b4:	8fa40084 	lw	a0,132(sp)
     3b8:	0c000000 	jal	0 <BgYdanSp_Init>
     3bc:	92050168 	lbu	a1,360(s0)
     3c0:	50400004 	beqzl	v0,3d4 <BgYdanSp_Init+0x3d4>
     3c4:	8fbf0024 	lw	ra,36(sp)
     3c8:	0c000000 	jal	0 <BgYdanSp_Init>
     3cc:	02002025 	move	a0,s0
     3d0:	8fbf0024 	lw	ra,36(sp)
     3d4:	8fb00020 	lw	s0,32(sp)
     3d8:	27bd0080 	addiu	sp,sp,128
     3dc:	03e00008 	jr	ra
     3e0:	00000000 	nop

000003e4 <BgYdanSp_Destroy>:
     3e4:	27bdffe8 	addiu	sp,sp,-24
     3e8:	afa40018 	sw	a0,24(sp)
     3ec:	8fae0018 	lw	t6,24(sp)
     3f0:	afbf0014 	sw	ra,20(sp)
     3f4:	00a03825 	move	a3,a1
     3f8:	00a02025 	move	a0,a1
     3fc:	8dc6014c 	lw	a2,332(t6)
     400:	afa7001c 	sw	a3,28(sp)
     404:	0c000000 	jal	0 <BgYdanSp_Init>
     408:	24a50810 	addiu	a1,a1,2064
     40c:	8fa50018 	lw	a1,24(sp)
     410:	8fa4001c 	lw	a0,28(sp)
     414:	0c000000 	jal	0 <BgYdanSp_Init>
     418:	24a50170 	addiu	a1,a1,368
     41c:	8fbf0014 	lw	ra,20(sp)
     420:	27bd0018 	addiu	sp,sp,24
     424:	03e00008 	jr	ra
     428:	00000000 	nop

0000042c <func_808BF83C>:
     42c:	3c030600 	lui	v1,0x600
     430:	24636460 	addiu	v1,v1,25696
     434:	00037100 	sll	t6,v1,0x4
     438:	3c070000 	lui	a3,0x0
     43c:	000e7f02 	srl	t7,t6,0x1c
     440:	24e70000 	addiu	a3,a3,0
     444:	000fc080 	sll	t8,t7,0x2
     448:	00f8c821 	addu	t9,a3,t8
     44c:	8f2a0000 	lw	t2,0(t9)
     450:	3c0800ff 	lui	t0,0xff
     454:	3508ffff 	ori	t0,t0,0xffff
     458:	00685824 	and	t3,v1,t0
     45c:	3c098000 	lui	t1,0x8000
     460:	014b6021 	addu	t4,t2,t3
     464:	01891021 	addu	v0,t4,t1
     468:	8c450010 	lw	a1,16(v0)
     46c:	3c014120 	lui	at,0x4120
     470:	44815000 	mtc1	at,$f10
     474:	00056900 	sll	t5,a1,0x4
     478:	000d7702 	srl	t6,t5,0x1c
     47c:	000e7880 	sll	t7,t6,0x2
     480:	00efc021 	addu	t8,a3,t7
     484:	8f190000 	lw	t9,0(t8)
     488:	00a85024 	and	t2,a1,t0
     48c:	032a5821 	addu	t3,t9,t2
     490:	01696021 	addu	t4,t3,t1
     494:	ac4c0010 	sw	t4,16(v0)
     498:	c4860028 	lwc1	$f6,40(a0)
     49c:	c484000c 	lwc1	$f4,12(a0)
     4a0:	46062201 	sub.s	$f8,$f4,$f6
     4a4:	460a4402 	mul.s	$f16,$f8,$f10
     4a8:	4600848d 	trunc.w.s	$f18,$f16
     4ac:	44069000 	mfc1	a2,$f18
     4b0:	00000000 	nop
     4b4:	00063400 	sll	a2,a2,0x10
     4b8:	00063403 	sra	a2,a2,0x10
     4bc:	a5860056 	sh	a2,86(t4)
     4c0:	8c4f0010 	lw	t7,16(v0)
     4c4:	a5e6004a 	sh	a2,74(t7)
     4c8:	8c580010 	lw	t8,16(v0)
     4cc:	a706003e 	sh	a2,62(t8)
     4d0:	8c590010 	lw	t9,16(v0)
     4d4:	a7260038 	sh	a2,56(t9)
     4d8:	8c4a0010 	lw	t2,16(v0)
     4dc:	a5460026 	sh	a2,38(t2)
     4e0:	8c4b0010 	lw	t3,16(v0)
     4e4:	a5660020 	sh	a2,32(t3)
     4e8:	8c4c0010 	lw	t4,16(v0)
     4ec:	a5860008 	sh	a2,8(t4)
     4f0:	8c4d0010 	lw	t5,16(v0)
     4f4:	03e00008 	jr	ra
     4f8:	a5a60002 	sh	a2,2(t5)

000004fc <func_808BF90C>:
     4fc:	27bdffe8 	addiu	sp,sp,-24
     500:	afbf0014 	sw	ra,20(sp)
     504:	afa5001c 	sw	a1,28(sp)
     508:	240e001e 	li	t6,30
     50c:	00803025 	move	a2,a0
     510:	a48e016a 	sh	t6,362(a0)
     514:	afa60018 	sw	a2,24(sp)
     518:	0c000000 	jal	0 <BgYdanSp_Init>
     51c:	24044802 	li	a0,18434
     520:	8fa60018 	lw	a2,24(sp)
     524:	8fa4001c 	lw	a0,28(sp)
     528:	0c000000 	jal	0 <BgYdanSp_Init>
     52c:	90c50168 	lbu	a1,360(a2)
     530:	8fa60018 	lw	a2,24(sp)
     534:	3c180000 	lui	t8,0x0
     538:	3c190000 	lui	t9,0x0
     53c:	84cf001c 	lh	t7,28(a2)
     540:	27180000 	addiu	t8,t8,0
     544:	27390000 	addiu	t9,t9,0
     548:	55e00004 	bnezl	t7,55c <func_808BF90C+0x60>
     54c:	acd90164 	sw	t9,356(a2)
     550:	10000002 	b	55c <func_808BF90C+0x60>
     554:	acd80164 	sw	t8,356(a2)
     558:	acd90164 	sw	t9,356(a2)
     55c:	8fbf0014 	lw	ra,20(sp)
     560:	27bd0018 	addiu	sp,sp,24
     564:	03e00008 	jr	ra
     568:	00000000 	nop

0000056c <func_808BF97C>:
     56c:	27bdff28 	addiu	sp,sp,-216
     570:	afbf009c 	sw	ra,156(sp)
     574:	afbe0098 	sw	s8,152(sp)
     578:	afb70094 	sw	s7,148(sp)
     57c:	afb60090 	sw	s6,144(sp)
     580:	afb5008c 	sw	s5,140(sp)
     584:	afb40088 	sw	s4,136(sp)
     588:	afb30084 	sw	s3,132(sp)
     58c:	afb20080 	sw	s2,128(sp)
     590:	afb1007c 	sw	s1,124(sp)
     594:	afb00078 	sw	s0,120(sp)
     598:	f7be0070 	sdc1	$f30,112(sp)
     59c:	f7bc0068 	sdc1	$f28,104(sp)
     5a0:	f7ba0060 	sdc1	$f26,96(sp)
     5a4:	f7b80058 	sdc1	$f24,88(sp)
     5a8:	f7b60050 	sdc1	$f22,80(sp)
     5ac:	f7b40048 	sdc1	$f20,72(sp)
     5b0:	afa500dc 	sw	a1,220(sp)
     5b4:	8482016a 	lh	v0,362(a0)
     5b8:	0080a825 	move	s5,a0
     5bc:	24010003 	li	at,3
     5c0:	10400003 	beqz	v0,5d0 <func_808BF97C+0x64>
     5c4:	244effff 	addiu	t6,v0,-1
     5c8:	a48e016a 	sh	t6,362(a0)
     5cc:	8482016a 	lh	v0,362(a0)
     5d0:	14400005 	bnez	v0,5e8 <func_808BF97C+0x7c>
     5d4:	00000000 	nop
     5d8:	0c000000 	jal	0 <BgYdanSp_Init>
     5dc:	02a02025 	move	a0,s5
     5e0:	10000086 	b	7fc <func_808BF97C+0x290>
     5e4:	8fbf009c 	lw	ra,156(sp)
     5e8:	0041001a 	div	zero,v0,at
     5ec:	00007810 	mfhi	t7
     5f0:	55e00082 	bnezl	t7,7fc <func_808BF97C+0x290>
     5f4:	8fbf009c 	lw	ra,156(sp)
     5f8:	0c000000 	jal	0 <BgYdanSp_Init>
     5fc:	00000000 	nop
     600:	3c010000 	lui	at,0x0
     604:	c4240000 	lwc1	$f4,0(at)
     608:	4480f000 	mtc1	zero,$f30
     60c:	3c0140e0 	lui	at,0x40e0
     610:	46040182 	mul.s	$f6,$f0,$f4
     614:	4481e000 	mtc1	at,$f28
     618:	3c010000 	lui	at,0x0
     61c:	e7be00d0 	swc1	$f30,208(sp)
     620:	c6aa0028 	lwc1	$f10,40(s5)
     624:	c43a0000 	lwc1	$f26,0(at)
     628:	3c0142f0 	lui	at,0x42f0
     62c:	4600320d 	trunc.w.s	$f8,$f6
     630:	4481c000 	mtc1	at,$f24
     634:	00009825 	move	s3,zero
     638:	26b40008 	addiu	s4,s5,8
     63c:	44124000 	mfc1	s2,$f8
     640:	27be00cc 	addiu	s8,sp,204
     644:	34178000 	li	s7,0x8000
     648:	00129400 	sll	s2,s2,0x10
     64c:	00129403 	sra	s2,s2,0x10
     650:	27b600c0 	addiu	s6,sp,192
     654:	e7aa00c4 	swc1	$f10,196(sp)
     658:	3c014620 	lui	at,0x4620
     65c:	44816000 	mtc1	at,$f12
     660:	0c000000 	jal	0 <BgYdanSp_Init>
     664:	00000000 	nop
     668:	44928000 	mtc1	s2,$f16
     66c:	00000000 	nop
     670:	468084a0 	cvt.s.w	$f18,$f16
     674:	46120100 	add.s	$f4,$f0,$f18
     678:	4600218d 	trunc.w.s	$f6,$f4
     67c:	44023000 	mfc1	v0,$f6
     680:	00000000 	nop
     684:	00028400 	sll	s0,v0,0x10
     688:	00022400 	sll	a0,v0,0x10
     68c:	00108403 	sra	s0,s0,0x10
     690:	0c000000 	jal	0 <BgYdanSp_Init>
     694:	00042403 	sra	a0,a0,0x10
     698:	00102400 	sll	a0,s0,0x10
     69c:	46000506 	mov.s	$f20,$f0
     6a0:	0c000000 	jal	0 <BgYdanSp_Init>
     6a4:	00042403 	sra	a0,a0,0x10
     6a8:	4614c282 	mul.s	$f10,$f24,$f20
     6ac:	c6a80024 	lwc1	$f8,36(s5)
     6b0:	46000586 	mov.s	$f22,$f0
     6b4:	4600c102 	mul.s	$f4,$f24,$f0
     6b8:	02802025 	move	a0,s4
     6bc:	02c02825 	move	a1,s6
     6c0:	460a4400 	add.s	$f16,$f8,$f10
     6c4:	e7b000c0 	swc1	$f16,192(sp)
     6c8:	c6b2002c 	lwc1	$f18,44(s5)
     6cc:	46049180 	add.s	$f6,$f18,$f4
     6d0:	0c000000 	jal	0 <BgYdanSp_Init>
     6d4:	e7a600c8 	swc1	$f6,200(sp)
     6d8:	461a0302 	mul.s	$f12,$f0,$f26
     6dc:	3c010000 	lui	at,0x0
     6e0:	c4280000 	lwc1	$f8,0(at)
     6e4:	02178821 	addu	s1,s0,s7
     6e8:	00118c00 	sll	s1,s1,0x10
     6ec:	00118c03 	sra	s1,s1,0x10
     6f0:	00112400 	sll	a0,s1,0x10
     6f4:	4608603c 	c.lt.s	$f12,$f8
     6f8:	00000000 	nop
     6fc:	45000015 	bc1f	754 <func_808BF97C+0x1e8>
     700:	00000000 	nop
     704:	0c000000 	jal	0 <BgYdanSp_Init>
     708:	00042403 	sra	a0,a0,0x10
     70c:	00112400 	sll	a0,s1,0x10
     710:	46000506 	mov.s	$f20,$f0
     714:	0c000000 	jal	0 <BgYdanSp_Init>
     718:	00042403 	sra	a0,a0,0x10
     71c:	4614c402 	mul.s	$f16,$f24,$f20
     720:	c6aa0024 	lwc1	$f10,36(s5)
     724:	46000586 	mov.s	$f22,$f0
     728:	4600c182 	mul.s	$f6,$f24,$f0
     72c:	02802025 	move	a0,s4
     730:	02c02825 	move	a1,s6
     734:	46105480 	add.s	$f18,$f10,$f16
     738:	e7b200c0 	swc1	$f18,192(sp)
     73c:	c6a4002c 	lwc1	$f4,44(s5)
     740:	46062200 	add.s	$f8,$f4,$f6
     744:	0c000000 	jal	0 <BgYdanSp_Init>
     748:	e7a800c8 	swc1	$f8,200(sp)
     74c:	461a0302 	mul.s	$f12,$f0,$f26
     750:	00000000 	nop
     754:	4614e282 	mul.s	$f10,$f28,$f20
     758:	3c070000 	lui	a3,0x0
     75c:	2408003c 	li	t0,60
     760:	24090006 	li	t1,6
     764:	240a00ff 	li	t2,255
     768:	240b00ff 	li	t3,255
     76c:	240c0096 	li	t4,150
     770:	460c5402 	mul.s	$f16,$f10,$f12
     774:	240d00aa 	li	t5,170
     778:	240e00ff 	li	t6,255
     77c:	4616e482 	mul.s	$f18,$f28,$f22
     780:	240f0001 	li	t7,1
     784:	2418000e 	li	t8,14
     788:	24190001 	li	t9,1
     78c:	e7b000cc 	swc1	$f16,204(sp)
     790:	e7be00d0 	swc1	$f30,208(sp)
     794:	afb9003c 	sw	t9,60(sp)
     798:	460c9102 	mul.s	$f4,$f18,$f12
     79c:	afb80038 	sw	t8,56(sp)
     7a0:	afaf0034 	sw	t7,52(sp)
     7a4:	afae0028 	sw	t6,40(sp)
     7a8:	afad0024 	sw	t5,36(sp)
     7ac:	afac0020 	sw	t4,32(sp)
     7b0:	afab001c 	sw	t3,28(sp)
     7b4:	e7a400d4 	swc1	$f4,212(sp)
     7b8:	afaa0018 	sw	t2,24(sp)
     7bc:	afa90014 	sw	t1,20(sp)
     7c0:	afa80010 	sw	t0,16(sp)
     7c4:	24e70000 	addiu	a3,a3,0
     7c8:	8fa400dc 	lw	a0,220(sp)
     7cc:	02802825 	move	a1,s4
     7d0:	03c03025 	move	a2,s8
     7d4:	afa0002c 	sw	zero,44(sp)
     7d8:	0c000000 	jal	0 <BgYdanSp_Init>
     7dc:	afa00030 	sw	zero,48(sp)
     7e0:	26522aaa 	addiu	s2,s2,10922
     7e4:	26730001 	addiu	s3,s3,1
     7e8:	24010006 	li	at,6
     7ec:	00129400 	sll	s2,s2,0x10
     7f0:	1661ff99 	bne	s3,at,658 <func_808BF97C+0xec>
     7f4:	00129403 	sra	s2,s2,0x10
     7f8:	8fbf009c 	lw	ra,156(sp)
     7fc:	d7b40048 	ldc1	$f20,72(sp)
     800:	d7b60050 	ldc1	$f22,80(sp)
     804:	d7b80058 	ldc1	$f24,88(sp)
     808:	d7ba0060 	ldc1	$f26,96(sp)
     80c:	d7bc0068 	ldc1	$f28,104(sp)
     810:	d7be0070 	ldc1	$f30,112(sp)
     814:	8fb00078 	lw	s0,120(sp)
     818:	8fb1007c 	lw	s1,124(sp)
     81c:	8fb20080 	lw	s2,128(sp)
     820:	8fb30084 	lw	s3,132(sp)
     824:	8fb40088 	lw	s4,136(sp)
     828:	8fb5008c 	lw	s5,140(sp)
     82c:	8fb60090 	lw	s6,144(sp)
     830:	8fb70094 	lw	s7,148(sp)
     834:	8fbe0098 	lw	s8,152(sp)
     838:	03e00008 	jr	ra
     83c:	27bd00d8 	addiu	sp,sp,216

00000840 <func_808BFC50>:
     840:	27bdffe8 	addiu	sp,sp,-24
     844:	afbf0014 	sw	ra,20(sp)
     848:	afa5001c 	sw	a1,28(sp)
     84c:	8482016a 	lh	v0,362(a0)
     850:	10400003 	beqz	v0,860 <func_808BFC50+0x20>
     854:	244effff 	addiu	t6,v0,-1
     858:	a48e016a 	sh	t6,362(a0)
     85c:	8482016a 	lh	v0,362(a0)
     860:	54400004 	bnezl	v0,874 <func_808BFC50+0x34>
     864:	8fbf0014 	lw	ra,20(sp)
     868:	0c000000 	jal	0 <BgYdanSp_Init>
     86c:	00000000 	nop
     870:	8fbf0014 	lw	ra,20(sp)
     874:	27bd0018 	addiu	sp,sp,24
     878:	03e00008 	jr	ra
     87c:	00000000 	nop

00000880 <func_808BFC90>:
     880:	27bdff88 	addiu	sp,sp,-120
     884:	afbf0054 	sw	ra,84(sp)
     888:	afbe0050 	sw	s8,80(sp)
     88c:	afb7004c 	sw	s7,76(sp)
     890:	afb60048 	sw	s6,72(sp)
     894:	afb50044 	sw	s5,68(sp)
     898:	afb40040 	sw	s4,64(sp)
     89c:	afb3003c 	sw	s3,60(sp)
     8a0:	afb20038 	sw	s2,56(sp)
     8a4:	afb10034 	sw	s1,52(sp)
     8a8:	afb00030 	sw	s0,48(sp)
     8ac:	f7b40028 	sdc1	$f20,40(sp)
     8b0:	8482016a 	lh	v0,362(a0)
     8b4:	00809825 	move	s3,a0
     8b8:	00a0f025 	move	s8,a1
     8bc:	10400003 	beqz	v0,8cc <func_808BFC90+0x4c>
     8c0:	244effff 	addiu	t6,v0,-1
     8c4:	a48e016a 	sh	t6,362(a0)
     8c8:	8482016a 	lh	v0,362(a0)
     8cc:	44822000 	mtc1	v0,$f4
     8d0:	3c010000 	lui	at,0x0
     8d4:	c4280000 	lwc1	$f8,0(at)
     8d8:	468021a0 	cvt.s.w	$f6,$f4
     8dc:	46083302 	mul.s	$f12,$f6,$f8
     8e0:	0c000000 	jal	0 <BgYdanSp_Init>
     8e4:	00000000 	nop
     8e8:	c66a016c 	lwc1	$f10,364(s3)
     8ec:	c662000c 	lwc1	$f2,12(s3)
     8f0:	3c01433e 	lui	at,0x433e
     8f4:	460a0402 	mul.s	$f16,$f0,$f10
     8f8:	44819000 	mtc1	at,$f18
     8fc:	03c02025 	move	a0,s8
     900:	27c50810 	addiu	a1,s8,2064
     904:	46028300 	add.s	$f12,$f16,$f2
     908:	460c1101 	sub.s	$f4,$f2,$f12
     90c:	e66c0028 	swc1	$f12,40(s3)
     910:	4604903c 	c.lt.s	$f18,$f4
     914:	00000000 	nop
     918:	4500003a 	bc1f	a04 <func_808BFC90+0x184>
     91c:	00000000 	nop
     920:	0c000000 	jal	0 <BgYdanSp_Init>
     924:	8e66014c 	lw	a2,332(s3)
     928:	240f0028 	li	t7,40
     92c:	a66f016a 	sh	t7,362(s3)
     930:	0c000000 	jal	0 <BgYdanSp_Init>
     934:	24044802 	li	a0,18434
     938:	03c02025 	move	a0,s8
     93c:	0c000000 	jal	0 <BgYdanSp_Init>
     940:	92650168 	lbu	a1,360(s3)
     944:	3c014270 	lui	at,0x4270
     948:	4481a000 	mtc1	at,$f20
     94c:	c6660028 	lwc1	$f6,40(s3)
     950:	3c180000 	lui	t8,0x0
     954:	27180000 	addiu	t8,t8,0
     958:	46143201 	sub.s	$f8,$f6,$f20
     95c:	ae780164 	sw	t8,356(s3)
     960:	3c160000 	lui	s6,0x0
     964:	3c150000 	lui	s5,0x0
     968:	3c120000 	lui	s2,0x0
     96c:	e7a8006c 	swc1	$f8,108(sp)
     970:	00008025 	move	s0,zero
     974:	26520000 	addiu	s2,s2,0
     978:	26b50000 	addiu	s5,s5,0
     97c:	26d60000 	addiu	s6,s6,0
     980:	00008825 	move	s1,zero
     984:	24170006 	li	s7,6
     988:	27b40068 	addiu	s4,sp,104
     98c:	00102400 	sll	a0,s0,0x10
     990:	0c000000 	jal	0 <BgYdanSp_Init>
     994:	00042403 	sra	a0,a0,0x10
     998:	46140282 	mul.s	$f10,$f0,$f20
     99c:	c6700024 	lwc1	$f16,36(s3)
     9a0:	00102400 	sll	a0,s0,0x10
     9a4:	00042403 	sra	a0,a0,0x10
     9a8:	46105480 	add.s	$f18,$f10,$f16
     9ac:	0c000000 	jal	0 <BgYdanSp_Init>
     9b0:	e7b20068 	swc1	$f18,104(sp)
     9b4:	46140102 	mul.s	$f4,$f0,$f20
     9b8:	c666002c 	lwc1	$f6,44(s3)
     9bc:	241903e8 	li	t9,1000
     9c0:	2408000a 	li	t0,10
     9c4:	afa8001c 	sw	t0,28(sp)
     9c8:	afb90018 	sw	t9,24(sp)
     9cc:	afb60014 	sw	s6,20(sp)
     9d0:	46062200 	add.s	$f8,$f4,$f6
     9d4:	afb50010 	sw	s5,16(sp)
     9d8:	03c02025 	move	a0,s8
     9dc:	02802825 	move	a1,s4
     9e0:	e7a80070 	swc1	$f8,112(sp)
     9e4:	02403025 	move	a2,s2
     9e8:	0c000000 	jal	0 <BgYdanSp_Init>
     9ec:	02403825 	move	a3,s2
     9f0:	26102aaa 	addiu	s0,s0,10922
     9f4:	26310001 	addiu	s1,s1,1
     9f8:	00108400 	sll	s0,s0,0x10
     9fc:	1637ffe3 	bne	s1,s7,98c <func_808BFC90+0x10c>
     a00:	00108403 	sra	s0,s0,0x10
     a04:	0c000000 	jal	0 <BgYdanSp_Init>
     a08:	02602025 	move	a0,s3
     a0c:	8fbf0054 	lw	ra,84(sp)
     a10:	d7b40028 	ldc1	$f20,40(sp)
     a14:	8fb00030 	lw	s0,48(sp)
     a18:	8fb10034 	lw	s1,52(sp)
     a1c:	8fb20038 	lw	s2,56(sp)
     a20:	8fb3003c 	lw	s3,60(sp)
     a24:	8fb40040 	lw	s4,64(sp)
     a28:	8fb50044 	lw	s5,68(sp)
     a2c:	8fb60048 	lw	s6,72(sp)
     a30:	8fb7004c 	lw	s7,76(sp)
     a34:	8fbe0050 	lw	s8,80(sp)
     a38:	03e00008 	jr	ra
     a3c:	27bd0078 	addiu	sp,sp,120

00000a40 <func_808BFE50>:
     a40:	27bdffc0 	addiu	sp,sp,-64
     a44:	afbf001c 	sw	ra,28(sp)
     a48:	afb00018 	sw	s0,24(sp)
     a4c:	afa50044 	sw	a1,68(sp)
     a50:	c4840024 	lwc1	$f4,36(a0)
     a54:	8ca31c44 	lw	v1,7236(a1)
     a58:	3c014248 	lui	at,0x4248
     a5c:	e7a40030 	swc1	$f4,48(sp)
     a60:	44810000 	mtc1	at,$f0
     a64:	c4860028 	lwc1	$f6,40(a0)
     a68:	00808025 	move	s0,a0
     a6c:	44070000 	mfc1	a3,$f0
     a70:	46003201 	sub.s	$f8,$f6,$f0
     a74:	3c06428c 	lui	a2,0x428c
     a78:	e7a80034 	swc1	$f8,52(sp)
     a7c:	c48a002c 	lwc1	$f10,44(a0)
     a80:	00a02025 	move	a0,a1
     a84:	27a50030 	addiu	a1,sp,48
     a88:	afa3003c 	sw	v1,60(sp)
     a8c:	0c000000 	jal	0 <BgYdanSp_Init>
     a90:	e7aa0038 	swc1	$f10,56(sp)
     a94:	1040000a 	beqz	v0,ac0 <func_808BFE50+0x80>
     a98:	8fa3003c 	lw	v1,60(sp)
     a9c:	c47008b8 	lwc1	$f16,2232(v1)
     aa0:	02002025 	move	a0,s0
     aa4:	e6100008 	swc1	$f16,8(s0)
     aa8:	c47208c0 	lwc1	$f18,2240(v1)
     aac:	e6120010 	swc1	$f18,16(s0)
     ab0:	0c000000 	jal	0 <BgYdanSp_Init>
     ab4:	8fa50044 	lw	a1,68(sp)
     ab8:	10000094 	b	d0c <func_808BFE50+0x2cc>
     abc:	8fbf001c 	lw	ra,28(sp)
     ac0:	920f0181 	lbu	t7,385(s0)
     ac4:	8fa50044 	lw	a1,68(sp)
     ac8:	02002025 	move	a0,s0
     acc:	31f80002 	andi	t8,t7,0x2
     ad0:	13000005 	beqz	t8,ae8 <func_808BFE50+0xa8>
     ad4:	00000000 	nop
     ad8:	0c000000 	jal	0 <BgYdanSp_Init>
     adc:	02002025 	move	a0,s0
     ae0:	1000008a 	b	d0c <func_808BFE50+0x2cc>
     ae4:	8fbf001c 	lw	ra,28(sp)
     ae8:	0c000000 	jal	0 <BgYdanSp_Init>
     aec:	afa3003c 	sw	v1,60(sp)
     af0:	10400051 	beqz	v0,c38 <func_808BFE50+0x1f8>
     af4:	8fa3003c 	lw	v1,60(sp)
     af8:	84790896 	lh	t9,2198(v1)
     afc:	44807000 	mtc1	zero,$f14
     b00:	3c010000 	lui	at,0x0
     b04:	44992000 	mtc1	t9,$f4
     b08:	00000000 	nop
     b0c:	468020a0 	cvt.s.w	$f2,$f4
     b10:	460e103c 	c.lt.s	$f2,$f14
     b14:	00000000 	nop
     b18:	45020004 	bc1fl	b2c <func_808BFE50+0xec>
     b1c:	46001306 	mov.s	$f12,$f2
     b20:	10000002 	b	b2c <func_808BFE50+0xec>
     b24:	46007306 	mov.s	$f12,$f14
     b28:	46001306 	mov.s	$f12,$f2
     b2c:	c4260000 	lwc1	$f6,0(at)
     b30:	46006004 	sqrt.s	$f0,$f12
     b34:	3c0142a0 	lui	at,0x42a0
     b38:	4602303c 	c.lt.s	$f6,$f2
     b3c:	00000000 	nop
     b40:	45020018 	bc1fl	ba4 <func_808BFE50+0x164>
     b44:	46000080 	add.s	$f2,$f0,$f0
     b48:	c6080090 	lwc1	$f8,144(s0)
     b4c:	44815000 	mtc1	at,$f10
     b50:	3c014348 	lui	at,0x4348
     b54:	2408ffff 	li	t0,-1
     b58:	460a403c 	c.lt.s	$f8,$f10
     b5c:	240b0028 	li	t3,40
     b60:	02002025 	move	a0,s0
     b64:	24052862 	li	a1,10338
     b68:	4502000e 	bc1fl	ba4 <func_808BFE50+0x164>
     b6c:	46000080 	add.s	$f2,$f0,$f0
     b70:	8e090004 	lw	t1,4(s0)
     b74:	44818000 	mtc1	at,$f16
     b78:	a2080003 	sb	t0,3(s0)
     b7c:	352a0010 	ori	t2,t1,0x10
     b80:	ae0a0004 	sw	t2,4(s0)
     b84:	a60b016a 	sh	t3,362(s0)
     b88:	0c000000 	jal	0 <BgYdanSp_Init>
     b8c:	e610016c 	swc1	$f16,364(s0)
     b90:	3c0c0000 	lui	t4,0x0
     b94:	258c0000 	addiu	t4,t4,0
     b98:	1000005b 	b	d08 <func_808BFE50+0x2c8>
     b9c:	ae0c0164 	sw	t4,356(s0)
     ba0:	46000080 	add.s	$f2,$f0,$f0
     ba4:	c612016c 	lwc1	$f18,364(s0)
     ba8:	3c014000 	lui	at,0x4000
     bac:	4602903c 	c.lt.s	$f18,$f2
     bb0:	00000000 	nop
     bb4:	4502000a 	bc1fl	be0 <func_808BFE50+0x1a0>
     bb8:	c4640068 	lwc1	$f4,104(v1)
     bbc:	44816000 	mtc1	at,$f12
     bc0:	240d000e 	li	t5,14
     bc4:	4602603c 	c.lt.s	$f12,$f2
     bc8:	00000000 	nop
     bcc:	45020004 	bc1fl	be0 <func_808BFE50+0x1a0>
     bd0:	c4640068 	lwc1	$f4,104(v1)
     bd4:	e602016c 	swc1	$f2,364(s0)
     bd8:	a60d016a 	sh	t5,362(s0)
     bdc:	c4640068 	lwc1	$f4,104(v1)
     be0:	3c014000 	lui	at,0x4000
     be4:	44816000 	mtc1	at,$f12
     be8:	46047032 	c.eq.s	$f14,$f4
     bec:	3c010000 	lui	at,0x0
     bf0:	45030012 	bc1tl	c3c <func_808BFE50+0x1fc>
     bf4:	8602016a 	lh	v0,362(s0)
     bf8:	c600016c 	lwc1	$f0,364(s0)
     bfc:	c4260000 	lwc1	$f6,0(at)
     c00:	240e000e 	li	t6,14
     c04:	4606003c 	c.lt.s	$f0,$f6
     c08:	00000000 	nop
     c0c:	45020004 	bc1fl	c20 <func_808BFE50+0x1e0>
     c10:	460c003c 	c.lt.s	$f0,$f12
     c14:	a60e016a 	sh	t6,362(s0)
     c18:	c600016c 	lwc1	$f0,364(s0)
     c1c:	460c003c 	c.lt.s	$f0,$f12
     c20:	00000000 	nop
     c24:	45020004 	bc1fl	c38 <func_808BFE50+0x1f8>
     c28:	e600016c 	swc1	$f0,364(s0)
     c2c:	10000002 	b	c38 <func_808BFE50+0x1f8>
     c30:	e60c016c 	swc1	$f12,364(s0)
     c34:	e600016c 	swc1	$f0,364(s0)
     c38:	8602016a 	lh	v0,362(s0)
     c3c:	2418000e 	li	t8,14
     c40:	10400003 	beqz	v0,c50 <func_808BFE50+0x210>
     c44:	244fffff 	addiu	t7,v0,-1
     c48:	a60f016a 	sh	t7,362(s0)
     c4c:	8602016a 	lh	v0,362(s0)
     c50:	54400004 	bnezl	v0,c64 <func_808BFE50+0x224>
     c54:	44824000 	mtc1	v0,$f8
     c58:	a618016a 	sh	t8,362(s0)
     c5c:	8602016a 	lh	v0,362(s0)
     c60:	44824000 	mtc1	v0,$f8
     c64:	3c010000 	lui	at,0x0
     c68:	c4300000 	lwc1	$f16,0(at)
     c6c:	468042a0 	cvt.s.w	$f10,$f8
     c70:	46105302 	mul.s	$f12,$f10,$f16
     c74:	0c000000 	jal	0 <BgYdanSp_Init>
     c78:	00000000 	nop
     c7c:	c612016c 	lwc1	$f18,364(s0)
     c80:	c606000c 	lwc1	$f6,12(s0)
     c84:	3c063f4c 	lui	a2,0x3f4c
     c88:	46120102 	mul.s	$f4,$f0,$f18
     c8c:	34c6cccd 	ori	a2,a2,0xcccd
     c90:	2604016c 	addiu	a0,s0,364
     c94:	3c053f80 	lui	a1,0x3f80
     c98:	46062200 	add.s	$f8,$f4,$f6
     c9c:	0c000000 	jal	0 <BgYdanSp_Init>
     ca0:	e6080028 	swc1	$f8,40(s0)
     ca4:	8619016a 	lh	t9,362(s0)
     ca8:	2401000d 	li	at,13
     cac:	1721000e 	bne	t9,at,ce8 <func_808BFE50+0x2a8>
     cb0:	3c014040 	lui	at,0x4040
     cb4:	44815000 	mtc1	at,$f10
     cb8:	c610016c 	lwc1	$f16,364(s0)
     cbc:	02002025 	move	a0,s0
     cc0:	4610503c 	c.lt.s	$f10,$f16
     cc4:	00000000 	nop
     cc8:	45000005 	bc1f	ce0 <func_808BFE50+0x2a0>
     ccc:	00000000 	nop
     cd0:	0c000000 	jal	0 <BgYdanSp_Init>
     cd4:	24052861 	li	a1,10337
     cd8:	10000003 	b	ce8 <func_808BFE50+0x2a8>
     cdc:	00000000 	nop
     ce0:	0c000000 	jal	0 <BgYdanSp_Init>
     ce4:	24042861 	li	a0,10337
     ce8:	0c000000 	jal	0 <BgYdanSp_Init>
     cec:	02002025 	move	a0,s0
     cf0:	8fa40044 	lw	a0,68(sp)
     cf4:	3c010001 	lui	at,0x1
     cf8:	34211e60 	ori	at,at,0x1e60
     cfc:	26060170 	addiu	a2,s0,368
     d00:	0c000000 	jal	0 <BgYdanSp_Init>
     d04:	00812821 	addu	a1,a0,at
     d08:	8fbf001c 	lw	ra,28(sp)
     d0c:	8fb00018 	lw	s0,24(sp)
     d10:	27bd0040 	addiu	sp,sp,64
     d14:	03e00008 	jr	ra
     d18:	00000000 	nop

00000d1c <func_808C012C>:
     d1c:	27bdff20 	addiu	sp,sp,-224
     d20:	afbf009c 	sw	ra,156(sp)
     d24:	afbe0098 	sw	s8,152(sp)
     d28:	afb70094 	sw	s7,148(sp)
     d2c:	afb60090 	sw	s6,144(sp)
     d30:	afb5008c 	sw	s5,140(sp)
     d34:	afb40088 	sw	s4,136(sp)
     d38:	afb30084 	sw	s3,132(sp)
     d3c:	afb20080 	sw	s2,128(sp)
     d40:	afb1007c 	sw	s1,124(sp)
     d44:	afb00078 	sw	s0,120(sp)
     d48:	f7be0070 	sdc1	$f30,112(sp)
     d4c:	f7bc0068 	sdc1	$f28,104(sp)
     d50:	f7ba0060 	sdc1	$f26,96(sp)
     d54:	f7b80058 	sdc1	$f24,88(sp)
     d58:	f7b60050 	sdc1	$f22,80(sp)
     d5c:	f7b40048 	sdc1	$f20,72(sp)
     d60:	afa500e4 	sw	a1,228(sp)
     d64:	8482016a 	lh	v0,362(a0)
     d68:	00808025 	move	s0,a0
     d6c:	24010003 	li	at,3
     d70:	10400003 	beqz	v0,d80 <func_808C012C+0x64>
     d74:	244effff 	addiu	t6,v0,-1
     d78:	a48e016a 	sh	t6,362(a0)
     d7c:	8482016a 	lh	v0,362(a0)
     d80:	14400005 	bnez	v0,d98 <func_808C012C+0x7c>
     d84:	00000000 	nop
     d88:	0c000000 	jal	0 <BgYdanSp_Init>
     d8c:	02002025 	move	a0,s0
     d90:	1000009f 	b	1010 <func_808C012C+0x2f4>
     d94:	8fbf009c 	lw	ra,156(sp)
     d98:	0041001a 	div	zero,v0,at
     d9c:	00007810 	mfhi	t7
     da0:	55e0009b 	bnezl	t7,1010 <func_808C012C+0x2f4>
     da4:	8fbf009c 	lw	ra,156(sp)
     da8:	0c000000 	jal	0 <BgYdanSp_Init>
     dac:	00000000 	nop
     db0:	3c010000 	lui	at,0x0
     db4:	c4240000 	lwc1	$f4,0(at)
     db8:	3c010000 	lui	at,0x0
     dbc:	c43e0000 	lwc1	$f30,0(at)
     dc0:	46040182 	mul.s	$f6,$f0,$f4
     dc4:	3c013f80 	lui	at,0x3f80
     dc8:	4481e000 	mtc1	at,$f28
     dcc:	3c01430c 	lui	at,0x430c
     dd0:	4481d000 	mtc1	at,$f26
     dd4:	0000a025 	move	s4,zero
     dd8:	26150008 	addiu	s5,s0,8
     ddc:	4600320d 	trunc.w.s	$f8,$f6
     de0:	27be00d4 	addiu	s8,sp,212
     de4:	34178000 	li	s7,0x8000
     de8:	27b600c8 	addiu	s6,sp,200
     dec:	44134000 	mfc1	s3,$f8
     df0:	00000000 	nop
     df4:	00139c00 	sll	s3,s3,0x10
     df8:	00139c03 	sra	s3,s3,0x10
     dfc:	3c014620 	lui	at,0x4620
     e00:	44816000 	mtc1	at,$f12
     e04:	0c000000 	jal	0 <BgYdanSp_Init>
     e08:	00000000 	nop
     e0c:	44935000 	mtc1	s3,$f10
     e10:	00000000 	nop
     e14:	46805420 	cvt.s.w	$f16,$f10
     e18:	46100480 	add.s	$f18,$f0,$f16
     e1c:	4600910d 	trunc.w.s	$f4,$f18
     e20:	44022000 	mfc1	v0,$f4
     e24:	00000000 	nop
     e28:	00029400 	sll	s2,v0,0x10
     e2c:	00022400 	sll	a0,v0,0x10
     e30:	00129403 	sra	s2,s2,0x10
     e34:	0c000000 	jal	0 <BgYdanSp_Init>
     e38:	00042403 	sra	a0,a0,0x10
     e3c:	00122400 	sll	a0,s2,0x10
     e40:	46000506 	mov.s	$f20,$f0
     e44:	0c000000 	jal	0 <BgYdanSp_Init>
     e48:	00042403 	sra	a0,a0,0x10
     e4c:	46000586 	mov.s	$f22,$f0
     e50:	0c000000 	jal	0 <BgYdanSp_Init>
     e54:	860400b6 	lh	a0,182(s0)
     e58:	46140602 	mul.s	$f24,$f0,$f20
     e5c:	0c000000 	jal	0 <BgYdanSp_Init>
     e60:	860400b6 	lh	a0,182(s0)
     e64:	4600a502 	mul.s	$f20,$f20,$f0
     e68:	4616e480 	add.s	$f18,$f28,$f22
     e6c:	c6060024 	lwc1	$f6,36(s0)
     e70:	4618d202 	mul.s	$f8,$f26,$f24
     e74:	02a02025 	move	a0,s5
     e78:	02c02825 	move	a1,s6
     e7c:	4612d102 	mul.s	$f4,$f26,$f18
     e80:	46083280 	add.s	$f10,$f6,$f8
     e84:	e7aa00c8 	swc1	$f10,200(sp)
     e88:	c6100028 	lwc1	$f16,40(s0)
     e8c:	4614d282 	mul.s	$f10,$f26,$f20
     e90:	46048180 	add.s	$f6,$f16,$f4
     e94:	e7a600cc 	swc1	$f6,204(sp)
     e98:	c608002c 	lwc1	$f8,44(s0)
     e9c:	460a4481 	sub.s	$f18,$f8,$f10
     ea0:	0c000000 	jal	0 <BgYdanSp_Init>
     ea4:	e7b200d0 	swc1	$f18,208(sp)
     ea8:	461e0302 	mul.s	$f12,$f0,$f30
     eac:	3c010000 	lui	at,0x0
     eb0:	c4300000 	lwc1	$f16,0(at)
     eb4:	02578821 	addu	s1,s2,s7
     eb8:	00118c00 	sll	s1,s1,0x10
     ebc:	00118c03 	sra	s1,s1,0x10
     ec0:	00112400 	sll	a0,s1,0x10
     ec4:	4610603c 	c.lt.s	$f12,$f16
     ec8:	00000000 	nop
     ecc:	45020021 	bc1fl	f54 <func_808C012C+0x238>
     ed0:	3c0140d0 	lui	at,0x40d0
     ed4:	0c000000 	jal	0 <BgYdanSp_Init>
     ed8:	00042403 	sra	a0,a0,0x10
     edc:	00112400 	sll	a0,s1,0x10
     ee0:	46000506 	mov.s	$f20,$f0
     ee4:	0c000000 	jal	0 <BgYdanSp_Init>
     ee8:	00042403 	sra	a0,a0,0x10
     eec:	46000586 	mov.s	$f22,$f0
     ef0:	0c000000 	jal	0 <BgYdanSp_Init>
     ef4:	860400b6 	lh	a0,182(s0)
     ef8:	46140602 	mul.s	$f24,$f0,$f20
     efc:	0c000000 	jal	0 <BgYdanSp_Init>
     f00:	860400b6 	lh	a0,182(s0)
     f04:	4600a502 	mul.s	$f20,$f20,$f0
     f08:	4616e480 	add.s	$f18,$f28,$f22
     f0c:	c6040024 	lwc1	$f4,36(s0)
     f10:	4618d182 	mul.s	$f6,$f26,$f24
     f14:	02a02025 	move	a0,s5
     f18:	02c02825 	move	a1,s6
     f1c:	4612d402 	mul.s	$f16,$f26,$f18
     f20:	46062200 	add.s	$f8,$f4,$f6
     f24:	e7a800c8 	swc1	$f8,200(sp)
     f28:	c60a0028 	lwc1	$f10,40(s0)
     f2c:	4614d202 	mul.s	$f8,$f26,$f20
     f30:	46105100 	add.s	$f4,$f10,$f16
     f34:	e7a400cc 	swc1	$f4,204(sp)
     f38:	c606002c 	lwc1	$f6,44(s0)
     f3c:	46083481 	sub.s	$f18,$f6,$f8
     f40:	0c000000 	jal	0 <BgYdanSp_Init>
     f44:	e7b200d0 	swc1	$f18,208(sp)
     f48:	461e0302 	mul.s	$f12,$f0,$f30
     f4c:	00000000 	nop
     f50:	3c0140d0 	lui	at,0x40d0
     f54:	44810000 	mtc1	at,$f0
     f58:	3c01c0d0 	lui	at,0xc0d0
     f5c:	44814000 	mtc1	at,$f8
     f60:	46180282 	mul.s	$f10,$f0,$f24
     f64:	3c070000 	lui	a3,0x0
     f68:	24080050 	li	t0,80
     f6c:	24090006 	li	t1,6
     f70:	240a00ff 	li	t2,255
     f74:	240b00ff 	li	t3,255
     f78:	240c0096 	li	t4,150
     f7c:	460c5402 	mul.s	$f16,$f10,$f12
     f80:	240d00aa 	li	t5,170
     f84:	240e00ff 	li	t6,255
     f88:	46160102 	mul.s	$f4,$f0,$f22
     f8c:	240f0001 	li	t7,1
     f90:	2418000e 	li	t8,14
     f94:	24190001 	li	t9,1
     f98:	e7b000d4 	swc1	$f16,212(sp)
     f9c:	afb9003c 	sw	t9,60(sp)
     fa0:	afb80038 	sw	t8,56(sp)
     fa4:	460c2182 	mul.s	$f6,$f4,$f12
     fa8:	afaf0034 	sw	t7,52(sp)
     fac:	afae0028 	sw	t6,40(sp)
     fb0:	46144482 	mul.s	$f18,$f8,$f20
     fb4:	afad0024 	sw	t5,36(sp)
     fb8:	afac0020 	sw	t4,32(sp)
     fbc:	afab001c 	sw	t3,28(sp)
     fc0:	e7a600d8 	swc1	$f6,216(sp)
     fc4:	afaa0018 	sw	t2,24(sp)
     fc8:	afa90014 	sw	t1,20(sp)
     fcc:	460c9282 	mul.s	$f10,$f18,$f12
     fd0:	afa80010 	sw	t0,16(sp)
     fd4:	24e70000 	addiu	a3,a3,0
     fd8:	8fa400e4 	lw	a0,228(sp)
     fdc:	02a02825 	move	a1,s5
     fe0:	03c03025 	move	a2,s8
     fe4:	afa0002c 	sw	zero,44(sp)
     fe8:	e7aa00dc 	swc1	$f10,220(sp)
     fec:	0c000000 	jal	0 <BgYdanSp_Init>
     ff0:	afa00030 	sw	zero,48(sp)
     ff4:	26732aaa 	addiu	s3,s3,10922
     ff8:	26940001 	addiu	s4,s4,1
     ffc:	24010006 	li	at,6
    1000:	00139c00 	sll	s3,s3,0x10
    1004:	1681ff7d 	bne	s4,at,dfc <func_808C012C+0xe0>
    1008:	00139c03 	sra	s3,s3,0x10
    100c:	8fbf009c 	lw	ra,156(sp)
    1010:	d7b40048 	ldc1	$f20,72(sp)
    1014:	d7b60050 	ldc1	$f22,80(sp)
    1018:	d7b80058 	ldc1	$f24,88(sp)
    101c:	d7ba0060 	ldc1	$f26,96(sp)
    1020:	d7bc0068 	ldc1	$f28,104(sp)
    1024:	d7be0070 	ldc1	$f30,112(sp)
    1028:	8fb00078 	lw	s0,120(sp)
    102c:	8fb1007c 	lw	s1,124(sp)
    1030:	8fb20080 	lw	s2,128(sp)
    1034:	8fb30084 	lw	s3,132(sp)
    1038:	8fb40088 	lw	s4,136(sp)
    103c:	8fb5008c 	lw	s5,140(sp)
    1040:	8fb60090 	lw	s6,144(sp)
    1044:	8fb70094 	lw	s7,148(sp)
    1048:	8fbe0098 	lw	s8,152(sp)
    104c:	03e00008 	jr	ra
    1050:	27bd00e0 	addiu	sp,sp,224

00001054 <func_808C0464>:
    1054:	27bdffc0 	addiu	sp,sp,-64
    1058:	afb0001c 	sw	s0,28(sp)
    105c:	afbf0024 	sw	ra,36(sp)
    1060:	afb10020 	sw	s1,32(sp)
    1064:	8ca31c44 	lw	v1,7236(a1)
    1068:	00808025 	move	s0,a0
    106c:	00a08825 	move	s1,a1
    1070:	00a02025 	move	a0,a1
    1074:	92050169 	lbu	a1,361(s0)
    1078:	0c000000 	jal	0 <BgYdanSp_Init>
    107c:	afa3003c 	sw	v1,60(sp)
    1080:	14400004 	bnez	v0,1094 <func_808C0464+0x40>
    1084:	8fa3003c 	lw	v1,60(sp)
    1088:	920e0181 	lbu	t6,385(s0)
    108c:	31cf0002 	andi	t7,t6,0x2
    1090:	11e0000a 	beqz	t7,10bc <func_808C0464+0x68>
    1094:	3c0142a0 	lui	at,0x42a0
    1098:	44813000 	mtc1	at,$f6
    109c:	c6040028 	lwc1	$f4,40(s0)
    10a0:	02002025 	move	a0,s0
    10a4:	02202825 	move	a1,s1
    10a8:	46062200 	add.s	$f8,$f4,$f6
    10ac:	0c000000 	jal	0 <BgYdanSp_Init>
    10b0:	e608000c 	swc1	$f8,12(s0)
    10b4:	1000002d 	b	116c <func_808C0464+0x118>
    10b8:	3c010001 	lui	at,0x1
    10bc:	80780151 	lb	t8,337(v1)
    10c0:	24010006 	li	at,6
    10c4:	57010029 	bnel	t8,at,116c <func_808C0464+0x118>
    10c8:	3c010001 	lui	at,0x1
    10cc:	84790860 	lh	t9,2144(v1)
    10d0:	02002025 	move	a0,s0
    10d4:	27a50030 	addiu	a1,sp,48
    10d8:	13200023 	beqz	t9,1168 <func_808C0464+0x114>
    10dc:	246608b8 	addiu	a2,v1,2232
    10e0:	0c000000 	jal	0 <BgYdanSp_Init>
    10e4:	afa6002c 	sw	a2,44(sp)
    10e8:	c7a00030 	lwc1	$f0,48(sp)
    10ec:	3c0142c8 	lui	at,0x42c8
    10f0:	44815000 	mtc1	at,$f10
    10f4:	46000005 	abs.s	$f0,$f0
    10f8:	3c013f80 	lui	at,0x3f80
    10fc:	460a003c 	c.lt.s	$f0,$f10
    1100:	c7b00038 	lwc1	$f16,56(sp)
    1104:	45020019 	bc1fl	116c <func_808C0464+0x118>
    1108:	3c010001 	lui	at,0x1
    110c:	44819000 	mtc1	at,$f18
    1110:	3c014348 	lui	at,0x4348
    1114:	c7a40034 	lwc1	$f4,52(sp)
    1118:	4612803c 	c.lt.s	$f16,$f18
    111c:	00000000 	nop
    1120:	45020012 	bc1fl	116c <func_808C0464+0x118>
    1124:	3c010001 	lui	at,0x1
    1128:	44813000 	mtc1	at,$f6
    112c:	02202025 	move	a0,s1
    1130:	24050bcc 	li	a1,3020
    1134:	4606203c 	c.lt.s	$f4,$f6
    1138:	24060028 	li	a2,40
    113c:	02003825 	move	a3,s0
    1140:	4502000a 	bc1fl	116c <func_808C0464+0x118>
    1144:	3c010001 	lui	at,0x1
    1148:	0c000000 	jal	0 <BgYdanSp_Init>
    114c:	afa00010 	sw	zero,16(sp)
    1150:	26040008 	addiu	a0,s0,8
    1154:	0c000000 	jal	0 <BgYdanSp_Init>
    1158:	8fa5002c 	lw	a1,44(sp)
    115c:	02002025 	move	a0,s0
    1160:	0c000000 	jal	0 <BgYdanSp_Init>
    1164:	02202825 	move	a1,s1
    1168:	3c010001 	lui	at,0x1
    116c:	34211e60 	ori	at,at,0x1e60
    1170:	02212821 	addu	a1,s1,at
    1174:	02202025 	move	a0,s1
    1178:	0c000000 	jal	0 <BgYdanSp_Init>
    117c:	26060170 	addiu	a2,s0,368
    1180:	8fbf0024 	lw	ra,36(sp)
    1184:	8fb0001c 	lw	s0,28(sp)
    1188:	8fb10020 	lw	s1,32(sp)
    118c:	03e00008 	jr	ra
    1190:	27bd0040 	addiu	sp,sp,64

00001194 <BgYdanSp_Update>:
    1194:	27bdffe8 	addiu	sp,sp,-24
    1198:	afbf0014 	sw	ra,20(sp)
    119c:	8c990164 	lw	t9,356(a0)
    11a0:	0320f809 	jalr	t9
    11a4:	00000000 	nop
    11a8:	8fbf0014 	lw	ra,20(sp)
    11ac:	27bd0018 	addiu	sp,sp,24
    11b0:	03e00008 	jr	ra
    11b4:	00000000 	nop

000011b8 <BgYdanSp_Draw>:
    11b8:	27bdff40 	addiu	sp,sp,-192
    11bc:	afb40030 	sw	s4,48(sp)
    11c0:	00a0a025 	move	s4,a1
    11c4:	afbf0034 	sw	ra,52(sp)
    11c8:	afb3002c 	sw	s3,44(sp)
    11cc:	afb20028 	sw	s2,40(sp)
    11d0:	afb10024 	sw	s1,36(sp)
    11d4:	afb00020 	sw	s0,32(sp)
    11d8:	f7b40018 	sdc1	$f20,24(sp)
    11dc:	8ca50000 	lw	a1,0(a1)
    11e0:	00808025 	move	s0,a0
    11e4:	3c060000 	lui	a2,0x0
    11e8:	24c60000 	addiu	a2,a2,0
    11ec:	27a40064 	addiu	a0,sp,100
    11f0:	2407030d 	li	a3,781
    11f4:	0c000000 	jal	0 <BgYdanSp_Init>
    11f8:	00a09025 	move	s2,a1
    11fc:	0c000000 	jal	0 <BgYdanSp_Init>
    1200:	8e840000 	lw	a0,0(s4)
    1204:	860e001c 	lh	t6,28(s0)
    1208:	24010001 	li	at,1
    120c:	3c18da38 	lui	t8,0xda38
    1210:	15c10014 	bne	t6,at,1264 <BgYdanSp_Draw+0xac>
    1214:	37180003 	ori	t8,t8,0x3
    1218:	8e5002d0 	lw	s0,720(s2)
    121c:	3c050000 	lui	a1,0x0
    1220:	24a50000 	addiu	a1,a1,0
    1224:	260f0008 	addiu	t7,s0,8
    1228:	ae4f02d0 	sw	t7,720(s2)
    122c:	ae180000 	sw	t8,0(s0)
    1230:	8e840000 	lw	a0,0(s4)
    1234:	0c000000 	jal	0 <BgYdanSp_Init>
    1238:	24060313 	li	a2,787
    123c:	ae020004 	sw	v0,4(s0)
    1240:	8e4302d0 	lw	v1,720(s2)
    1244:	3c090600 	lui	t1,0x600
    1248:	25295f40 	addiu	t1,t1,24384
    124c:	24790008 	addiu	t9,v1,8
    1250:	ae5902d0 	sw	t9,720(s2)
    1254:	3c08de00 	lui	t0,0xde00
    1258:	ac680000 	sw	t0,0(v1)
    125c:	10000099 	b	14c4 <BgYdanSp_Draw+0x30c>
    1260:	ac690004 	sw	t1,4(v1)
    1264:	8e0b0164 	lw	t3,356(s0)
    1268:	3c0a0000 	lui	t2,0x0
    126c:	254a0000 	addiu	t2,t2,0
    1270:	554b0067 	bnel	t2,t3,1410 <BgYdanSp_Draw+0x258>
    1274:	c610000c 	lwc1	$f16,12(s0)
    1278:	0c000000 	jal	0 <BgYdanSp_Init>
    127c:	27a40078 	addiu	a0,sp,120
    1280:	860c016a 	lh	t4,362(s0)
    1284:	24010028 	li	at,40
    1288:	55810030 	bnel	t4,at,134c <BgYdanSp_Draw+0x194>
    128c:	3c013f80 	lui	at,0x3f80
    1290:	c604000c 	lwc1	$f4,12(s0)
    1294:	c6060028 	lwc1	$f6,40(s0)
    1298:	3c014120 	lui	at,0x4120
    129c:	44806000 	mtc1	zero,$f12
    12a0:	46062201 	sub.s	$f8,$f4,$f6
    12a4:	44815000 	mtc1	at,$f10
    12a8:	44066000 	mfc1	a2,$f12
    12ac:	24070001 	li	a3,1
    12b0:	460a4382 	mul.s	$f14,$f8,$f10
    12b4:	0c000000 	jal	0 <BgYdanSp_Init>
    12b8:	00000000 	nop
    12bc:	c610000c 	lwc1	$f16,12(s0)
    12c0:	c6120028 	lwc1	$f18,40(s0)
    12c4:	3c013f80 	lui	at,0x3f80
    12c8:	44816000 	mtc1	at,$f12
    12cc:	46128101 	sub.s	$f4,$f16,$f18
    12d0:	3c014120 	lui	at,0x4120
    12d4:	44813000 	mtc1	at,$f6
    12d8:	3c010000 	lui	at,0x0
    12dc:	c42a0000 	lwc1	$f10,0(at)
    12e0:	46062200 	add.s	$f8,$f4,$f6
    12e4:	44066000 	mfc1	a2,$f12
    12e8:	24070001 	li	a3,1
    12ec:	460a4382 	mul.s	$f14,$f8,$f10
    12f0:	0c000000 	jal	0 <BgYdanSp_Init>
    12f4:	00000000 	nop
    12f8:	8e5002d0 	lw	s0,720(s2)
    12fc:	3c0eda38 	lui	t6,0xda38
    1300:	35ce0003 	ori	t6,t6,0x3
    1304:	260d0008 	addiu	t5,s0,8
    1308:	ae4d02d0 	sw	t5,720(s2)
    130c:	3c050000 	lui	a1,0x0
    1310:	ae0e0000 	sw	t6,0(s0)
    1314:	8e840000 	lw	a0,0(s4)
    1318:	24a50000 	addiu	a1,a1,0
    131c:	0c000000 	jal	0 <BgYdanSp_Init>
    1320:	24060328 	li	a2,808
    1324:	ae020004 	sw	v0,4(s0)
    1328:	8e4302d0 	lw	v1,720(s2)
    132c:	3c190600 	lui	t9,0x600
    1330:	273961b0 	addiu	t9,t9,25008
    1334:	246f0008 	addiu	t7,v1,8
    1338:	ae4f02d0 	sw	t7,720(s2)
    133c:	3c18de00 	lui	t8,0xde00
    1340:	ac780000 	sw	t8,0(v1)
    1344:	ac790004 	sw	t9,4(v1)
    1348:	3c013f80 	lui	at,0x3f80
    134c:	3c130600 	lui	s3,0x600
    1350:	4481a000 	mtc1	at,$f20
    1354:	26733850 	addiu	s3,s3,14416
    1358:	00008825 	move	s1,zero
    135c:	0c000000 	jal	0 <BgYdanSp_Init>
    1360:	27a40078 	addiu	a0,sp,120
    1364:	00112c00 	sll	a1,s1,0x10
    1368:	00052c03 	sra	a1,a1,0x10
    136c:	2404fa60 	li	a0,-1440
    1370:	00003025 	move	a2,zero
    1374:	0c000000 	jal	0 <BgYdanSp_Init>
    1378:	24070001 	li	a3,1
    137c:	3c01442f 	lui	at,0x442f
    1380:	44817000 	mtc1	at,$f14
    1384:	44806000 	mtc1	zero,$f12
    1388:	3c06c461 	lui	a2,0xc461
    138c:	0c000000 	jal	0 <BgYdanSp_Init>
    1390:	24070001 	li	a3,1
    1394:	3c014060 	lui	at,0x4060
    1398:	44816000 	mtc1	at,$f12
    139c:	3c0140a0 	lui	at,0x40a0
    13a0:	44817000 	mtc1	at,$f14
    13a4:	4406a000 	mfc1	a2,$f20
    13a8:	0c000000 	jal	0 <BgYdanSp_Init>
    13ac:	24070001 	li	a3,1
    13b0:	8e5002d0 	lw	s0,720(s2)
    13b4:	3c09da38 	lui	t1,0xda38
    13b8:	35290003 	ori	t1,t1,0x3
    13bc:	26080008 	addiu	t0,s0,8
    13c0:	ae4802d0 	sw	t0,720(s2)
    13c4:	3c050000 	lui	a1,0x0
    13c8:	ae090000 	sw	t1,0(s0)
    13cc:	8e840000 	lw	a0,0(s4)
    13d0:	24a50000 	addiu	a1,a1,0
    13d4:	0c000000 	jal	0 <BgYdanSp_Init>
    13d8:	2406033e 	li	a2,830
    13dc:	ae020004 	sw	v0,4(s0)
    13e0:	8e4302d0 	lw	v1,720(s2)
    13e4:	26312000 	addiu	s1,s1,8192
    13e8:	3c010001 	lui	at,0x1
    13ec:	246a0008 	addiu	t2,v1,8
    13f0:	ae4a02d0 	sw	t2,720(s2)
    13f4:	3c0bde00 	lui	t3,0xde00
    13f8:	ac6b0000 	sw	t3,0(v1)
    13fc:	1621ffd7 	bne	s1,at,135c <BgYdanSp_Draw+0x1a4>
    1400:	ac730004 	sw	s3,4(v1)
    1404:	1000002f 	b	14c4 <BgYdanSp_Draw+0x30c>
    1408:	00000000 	nop
    140c:	c610000c 	lwc1	$f16,12(s0)
    1410:	c6120028 	lwc1	$f18,40(s0)
    1414:	3c014120 	lui	at,0x4120
    1418:	44813000 	mtc1	at,$f6
    141c:	46128101 	sub.s	$f4,$f16,$f18
    1420:	44806000 	mtc1	zero,$f12
    1424:	24060000 	li	a2,0
    1428:	24070001 	li	a3,1
    142c:	46062382 	mul.s	$f14,$f4,$f6
    1430:	0c000000 	jal	0 <BgYdanSp_Init>
    1434:	00000000 	nop
    1438:	c608000c 	lwc1	$f8,12(s0)
    143c:	c60a0028 	lwc1	$f10,40(s0)
    1440:	3c013f80 	lui	at,0x3f80
    1444:	44816000 	mtc1	at,$f12
    1448:	460a4401 	sub.s	$f16,$f8,$f10
    144c:	3c014120 	lui	at,0x4120
    1450:	44819000 	mtc1	at,$f18
    1454:	3c010000 	lui	at,0x0
    1458:	c4260000 	lwc1	$f6,0(at)
    145c:	46128100 	add.s	$f4,$f16,$f18
    1460:	44066000 	mfc1	a2,$f12
    1464:	24070001 	li	a3,1
    1468:	46062382 	mul.s	$f14,$f4,$f6
    146c:	0c000000 	jal	0 <BgYdanSp_Init>
    1470:	00000000 	nop
    1474:	8e5002d0 	lw	s0,720(s2)
    1478:	3c0dda38 	lui	t5,0xda38
    147c:	35ad0003 	ori	t5,t5,0x3
    1480:	260c0008 	addiu	t4,s0,8
    1484:	ae4c02d0 	sw	t4,720(s2)
    1488:	3c050000 	lui	a1,0x0
    148c:	ae0d0000 	sw	t5,0(s0)
    1490:	8e840000 	lw	a0,0(s4)
    1494:	24a50000 	addiu	a1,a1,0
    1498:	0c000000 	jal	0 <BgYdanSp_Init>
    149c:	24060351 	li	a2,849
    14a0:	ae020004 	sw	v0,4(s0)
    14a4:	8e4302d0 	lw	v1,720(s2)
    14a8:	3c180600 	lui	t8,0x600
    14ac:	271861b0 	addiu	t8,t8,25008
    14b0:	246e0008 	addiu	t6,v1,8
    14b4:	ae4e02d0 	sw	t6,720(s2)
    14b8:	3c0fde00 	lui	t7,0xde00
    14bc:	ac6f0000 	sw	t7,0(v1)
    14c0:	ac780004 	sw	t8,4(v1)
    14c4:	3c060000 	lui	a2,0x0
    14c8:	24c60000 	addiu	a2,a2,0
    14cc:	27a40064 	addiu	a0,sp,100
    14d0:	8e850000 	lw	a1,0(s4)
    14d4:	0c000000 	jal	0 <BgYdanSp_Init>
    14d8:	24070358 	li	a3,856
    14dc:	8fbf0034 	lw	ra,52(sp)
    14e0:	d7b40018 	ldc1	$f20,24(sp)
    14e4:	8fb00020 	lw	s0,32(sp)
    14e8:	8fb10024 	lw	s1,36(sp)
    14ec:	8fb20028 	lw	s2,40(sp)
    14f0:	8fb3002c 	lw	s3,44(sp)
    14f4:	8fb40030 	lw	s4,48(sp)
    14f8:	03e00008 	jr	ra
    14fc:	27bd00c0 	addiu	sp,sp,192
