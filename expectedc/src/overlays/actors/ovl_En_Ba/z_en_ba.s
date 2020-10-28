
build/src/overlays/actors/ovl_En_Ba/z_en_ba.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809B6350>:
       0:	03e00008 	jr	ra
       4:	ac850150 	sw	a1,336(a0)

00000008 <EnBa_Init>:
       8:	27bdffb8 	addiu	sp,sp,-72
       c:	3c0e0000 	lui	t6,0x0
      10:	afbf0024 	sw	ra,36(sp)
      14:	afb00020 	sw	s0,32(sp)
      18:	afa5004c 	sw	a1,76(sp)
      1c:	25ce0000 	addiu	t6,t6,0
      20:	8dd80000 	lw	t8,0(t6)
      24:	27a80038 	addiu	t0,sp,56
      28:	3c050000 	lui	a1,0x0
      2c:	ad180000 	sw	t8,0(t0)
      30:	8dcf0004 	lw	t7,4(t6)
      34:	00808025 	move	s0,a0
      38:	24a50000 	addiu	a1,a1,0
      3c:	ad0f0004 	sw	t7,4(t0)
      40:	8dd80008 	lw	t8,8(t6)
      44:	0c000000 	jal	0 <func_809B6350>
      48:	ad180008 	sw	t8,8(t0)
      4c:	3c0142c8 	lui	at,0x42c8
      50:	44813000 	mtc1	at,$f6
      54:	c604000c 	lwc1	$f4,12(s0)
      58:	3c014200 	lui	at,0x4200
      5c:	44810000 	mtc1	at,$f0
      60:	46062200 	add.s	$f8,$f4,$f6
      64:	27a80038 	addiu	t0,sp,56
      68:	2403000d 	li	v1,13
      6c:	26070024 	addiu	a3,s0,36
      70:	e6080028 	swc1	$f8,40(s0)
      74:	2406c000 	li	a2,-16384
      78:	24050006 	li	a1,6
      7c:	2404000c 	li	a0,12
      80:	00640019 	multu	v1,a0
      84:	8d0a0000 	lw	t2,0(t0)
      88:	246f0001 	addiu	t7,v1,1
      8c:	448f8000 	mtc1	t7,$f16
      90:	00000000 	nop
      94:	468084a0 	cvt.s.w	$f18,$f16
      98:	0000c812 	mflo	t9
      9c:	02191021 	addu	v0,s0,t9
      a0:	ac4a0200 	sw	t2,512(v0)
      a4:	00650019 	multu	v1,a1
      a8:	8d090004 	lw	t1,4(t0)
      ac:	46009102 	mul.s	$f4,$f18,$f0
      b0:	2463ffff 	addiu	v1,v1,-1
      b4:	ac490204 	sw	t1,516(v0)
      b8:	8d0a0008 	lw	t2,8(t0)
      bc:	00031c00 	sll	v1,v1,0x10
      c0:	00031c03 	sra	v1,v1,0x10
      c4:	ac4a0208 	sw	t2,520(v0)
      c8:	00005812 	mflo	t3
      cc:	020b6021 	addu	t4,s0,t3
      d0:	a58602a8 	sh	a2,680(t4)
      d4:	8cee0000 	lw	t6,0(a3)
      d8:	ac4e0158 	sw	t6,344(v0)
      dc:	8ced0004 	lw	t5,4(a3)
      e0:	ac4d015c 	sw	t5,348(v0)
      e4:	8cee0008 	lw	t6,8(a3)
      e8:	ac4e0160 	sw	t6,352(v0)
      ec:	c60a0028 	lwc1	$f10,40(s0)
      f0:	46045181 	sub.s	$f6,$f10,$f4
      f4:	0461ffe2 	bgez	v1,80 <EnBa_Init+0x78>
      f8:	e446015c 	swc1	$f6,348(v0)
      fc:	860b001c 	lh	t3,28(s0)
     100:	8619001c 	lh	t9,28(s0)
     104:	24180004 	li	t8,4
     108:	316c00ff 	andi	t4,t3,0xff
     10c:	a60c001c 	sh	t4,28(s0)
     110:	860d001c 	lh	t5,28(s0)
     114:	00194a03 	sra	t1,t9,0x8
     118:	312a00ff 	andi	t2,t1,0xff
     11c:	29a10003 	slti	at,t5,3
     120:	a218001f 	sb	t8,31(s0)
     124:	10200027 	beqz	at,1c4 <EnBa_Init+0x1bc>
     128:	a60a0154 	sh	t2,340(s0)
     12c:	8fa4004c 	lw	a0,76(sp)
     130:	0c000000 	jal	0 <func_809B6350>
     134:	86050154 	lh	a1,340(s0)
     138:	10400005 	beqz	v0,150 <EnBa_Init+0x148>
     13c:	260400b4 	addiu	a0,s0,180
     140:	0c000000 	jal	0 <func_809B6350>
     144:	02002025 	move	a0,s0
     148:	10000025 	b	1e0 <EnBa_Init+0x1d8>
     14c:	8fbf0024 	lw	ra,36(sp)
     150:	3c060000 	lui	a2,0x0
     154:	24c60000 	addiu	a2,a2,0
     158:	24050000 	li	a1,0
     15c:	0c000000 	jal	0 <func_809B6350>
     160:	3c074240 	lui	a3,0x4240
     164:	3c053c23 	lui	a1,0x3c23
     168:	34a5d70a 	ori	a1,a1,0xd70a
     16c:	0c000000 	jal	0 <func_809B6350>
     170:	02002025 	move	a0,s0
     174:	0c000000 	jal	0 <func_809B6350>
     178:	02002025 	move	a0,s0
     17c:	240e0004 	li	t6,4
     180:	240f00fe 	li	t7,254
     184:	a20e00af 	sb	t6,175(s0)
     188:	a20f00ae 	sb	t7,174(s0)
     18c:	26050320 	addiu	a1,s0,800
     190:	afa5002c 	sw	a1,44(sp)
     194:	0c000000 	jal	0 <func_809B6350>
     198:	8fa4004c 	lw	a0,76(sp)
     19c:	3c070000 	lui	a3,0x0
     1a0:	26180340 	addiu	t8,s0,832
     1a4:	8fa5002c 	lw	a1,44(sp)
     1a8:	afb80010 	sw	t8,16(sp)
     1ac:	24e70000 	addiu	a3,a3,0
     1b0:	8fa4004c 	lw	a0,76(sp)
     1b4:	0c000000 	jal	0 <func_809B6350>
     1b8:	02003025 	move	a2,s0
     1bc:	10000008 	b	1e0 <EnBa_Init+0x1d8>
     1c0:	8fbf0024 	lw	ra,36(sp)
     1c4:	3c053cac 	lui	a1,0x3cac
     1c8:	34a50831 	ori	a1,a1,0x831
     1cc:	0c000000 	jal	0 <func_809B6350>
     1d0:	02002025 	move	a0,s0
     1d4:	0c000000 	jal	0 <func_809B6350>
     1d8:	02002025 	move	a0,s0
     1dc:	8fbf0024 	lw	ra,36(sp)
     1e0:	8fb00020 	lw	s0,32(sp)
     1e4:	27bd0048 	addiu	sp,sp,72
     1e8:	03e00008 	jr	ra
     1ec:	00000000 	nop

000001f0 <EnBa_Destroy>:
     1f0:	27bdffe8 	addiu	sp,sp,-24
     1f4:	00803025 	move	a2,a0
     1f8:	afbf0014 	sw	ra,20(sp)
     1fc:	00a02025 	move	a0,a1
     200:	0c000000 	jal	0 <func_809B6350>
     204:	24c50320 	addiu	a1,a2,800
     208:	8fbf0014 	lw	ra,20(sp)
     20c:	27bd0018 	addiu	sp,sp,24
     210:	03e00008 	jr	ra
     214:	00000000 	nop

00000218 <func_809B6568>:
     218:	27bdffe8 	addiu	sp,sp,-24
     21c:	afbf0014 	sw	ra,20(sp)
     220:	3c014120 	lui	at,0x4120
     224:	44812000 	mtc1	at,$f4
     228:	240e0002 	li	t6,2
     22c:	240f05dc 	li	t7,1500
     230:	3c050000 	lui	a1,0x0
     234:	ac8e014c 	sw	t6,332(a0)
     238:	a48f031c 	sh	t7,796(a0)
     23c:	24a50000 	addiu	a1,a1,0
     240:	0c000000 	jal	0 <func_809B6350>
     244:	e4840068 	swc1	$f4,104(a0)
     248:	8fbf0014 	lw	ra,20(sp)
     24c:	27bd0018 	addiu	sp,sp,24
     250:	03e00008 	jr	ra
     254:	00000000 	nop

00000258 <func_809B65A8>:
     258:	27bdff90 	addiu	sp,sp,-112
     25c:	afbf003c 	sw	ra,60(sp)
     260:	afb70038 	sw	s7,56(sp)
     264:	afb60034 	sw	s6,52(sp)
     268:	afb50030 	sw	s5,48(sp)
     26c:	afb4002c 	sw	s4,44(sp)
     270:	afb30028 	sw	s3,40(sp)
     274:	afb20024 	sw	s2,36(sp)
     278:	afb10020 	sw	s1,32(sp)
     27c:	afb0001c 	sw	s0,28(sp)
     280:	8cae1c44 	lw	t6,7236(a1)
     284:	240100ff 	li	at,255
     288:	00a08025 	move	s0,a1
     28c:	afae006c 	sw	t6,108(sp)
     290:	908f00ae 	lbu	t7,174(a0)
     294:	0080b025 	move	s6,a0
     298:	15e10015 	bne	t7,at,2f0 <func_809B65A8+0x98>
     29c:	3c01432f 	lui	at,0x432f
     2a0:	44812000 	mtc1	at,$f4
     2a4:	c4860090 	lwc1	$f6,144(a0)
     2a8:	3c0143a5 	lui	at,0x43a5
     2ac:	4606203c 	c.lt.s	$f4,$f6
     2b0:	00000000 	nop
     2b4:	4502000f 	bc1fl	2f4 <func_809B65A8+0x9c>
     2b8:	3c0142c8 	lui	at,0x42c8
     2bc:	c6c8000c 	lwc1	$f8,12(s6)
     2c0:	44815000 	mtc1	at,$f10
     2c4:	44809000 	mtc1	zero,$f18
     2c8:	24840028 	addiu	a0,a0,40
     2cc:	460a4400 	add.s	$f16,$f8,$f10
     2d0:	3c063f80 	lui	a2,0x3f80
     2d4:	3c0740e0 	lui	a3,0x40e0
     2d8:	e7b20010 	swc1	$f18,16(sp)
     2dc:	44058000 	mfc1	a1,$f16
     2e0:	0c000000 	jal	0 <func_809B6350>
     2e4:	00000000 	nop
     2e8:	10000010 	b	32c <func_809B65A8+0xd4>
     2ec:	8ec90024 	lw	t1,36(s6)
     2f0:	3c0142c8 	lui	at,0x42c8
     2f4:	44813000 	mtc1	at,$f6
     2f8:	c6c4000c 	lwc1	$f4,12(s6)
     2fc:	8ed80004 	lw	t8,4(s6)
     300:	44805000 	mtc1	zero,$f10
     304:	46062200 	add.s	$f8,$f4,$f6
     308:	37190001 	ori	t9,t8,0x1
     30c:	aed90004 	sw	t9,4(s6)
     310:	26c40028 	addiu	a0,s6,40
     314:	44054000 	mfc1	a1,$f8
     318:	3c063f80 	lui	a2,0x3f80
     31c:	3c074120 	lui	a3,0x4120
     320:	0c000000 	jal	0 <func_809B6350>
     324:	e7aa0010 	swc1	$f10,16(sp)
     328:	8ec90024 	lw	t1,36(s6)
     32c:	26d502fc 	addiu	s5,s6,764
     330:	3c0a0001 	lui	t2,0x1
     334:	aea90000 	sw	t1,0(s5)
     338:	8ec80028 	lw	t0,40(s6)
     33c:	01505021 	addu	t2,t2,s0
     340:	aea80004 	sw	t0,4(s5)
     344:	8ec9002c 	lw	t1,44(s6)
     348:	aea90008 	sw	t1,8(s5)
     34c:	8d4a1de4 	lw	t2,7652(t2)
     350:	314b000f 	andi	t3,t2,0xf
     354:	1560001a 	bnez	t3,3c0 <func_809B65A8+0x168>
     358:	3c014334 	lui	at,0x4334
     35c:	44816000 	mtc1	at,$f12
     360:	0c000000 	jal	0 <func_809B6350>
     364:	00000000 	nop
     368:	c6d00310 	lwc1	$f16,784(s6)
     36c:	3c014334 	lui	at,0x4334
     370:	44816000 	mtc1	at,$f12
     374:	46008480 	add.s	$f18,$f16,$f0
     378:	0c000000 	jal	0 <func_809B6350>
     37c:	e6d20310 	swc1	$f18,784(s6)
     380:	c6c40314 	lwc1	$f4,788(s6)
     384:	c6cc0310 	lwc1	$f12,784(s6)
     388:	46002180 	add.s	$f6,$f4,$f0
     38c:	0c000000 	jal	0 <func_809B6350>
     390:	e6c60314 	swc1	$f6,788(s6)
     394:	3c0142a0 	lui	at,0x42a0
     398:	44814000 	mtc1	at,$f8
     39c:	c6cc0314 	lwc1	$f12,788(s6)
     3a0:	46080282 	mul.s	$f10,$f0,$f8
     3a4:	0c000000 	jal	0 <func_809B6350>
     3a8:	e6ca0308 	swc1	$f10,776(s6)
     3ac:	3c0142a0 	lui	at,0x42a0
     3b0:	44818000 	mtc1	at,$f16
     3b4:	00000000 	nop
     3b8:	46100482 	mul.s	$f18,$f0,$f16
     3bc:	e6d2030c 	swc1	$f18,780(s6)
     3c0:	3c0143e0 	lui	at,0x43e0
     3c4:	44813000 	mtc1	at,$f6
     3c8:	c6c40300 	lwc1	$f4,768(s6)
     3cc:	c6ca02fc 	lwc1	$f10,764(s6)
     3d0:	c6d00308 	lwc1	$f16,776(s6)
     3d4:	46062201 	sub.s	$f8,$f4,$f6
     3d8:	c6c6030c 	lwc1	$f6,780(s6)
     3dc:	c6c40304 	lwc1	$f4,772(s6)
     3e0:	46105480 	add.s	$f18,$f10,$f16
     3e4:	e6c80300 	swc1	$f8,768(s6)
     3e8:	44800000 	mtc1	zero,$f0
     3ec:	46062200 	add.s	$f8,$f4,$f6
     3f0:	e6d202fc 	swc1	$f18,764(s6)
     3f4:	8ec70068 	lw	a3,104(s6)
     3f8:	02a02025 	move	a0,s5
     3fc:	e6c80304 	swc1	$f8,772(s6)
     400:	26c501f4 	addiu	a1,s6,500
     404:	3c063f80 	lui	a2,0x3f80
     408:	e7a00014 	swc1	$f0,20(sp)
     40c:	0c000000 	jal	0 <func_809B6350>
     410:	e7a00010 	swc1	$f0,16(sp)
     414:	26d00090 	addiu	s0,s6,144
     418:	3c170000 	lui	s7,0x0
     41c:	26f70000 	addiu	s7,s7,0
     420:	26120164 	addiu	s2,s0,356
     424:	26110158 	addiu	s1,s0,344
     428:	24130090 	li	s3,144
     42c:	27b4005c 	addiu	s4,sp,92
     430:	02402025 	move	a0,s2
     434:	02202825 	move	a1,s1
     438:	02803025 	move	a2,s4
     43c:	0c000000 	jal	0 <func_809B6350>
     440:	00003825 	move	a3,zero
     444:	c60c0164 	lwc1	$f12,356(s0)
     448:	c60e0168 	lwc1	$f14,360(s0)
     44c:	8e06016c 	lw	a2,364(s0)
     450:	0c000000 	jal	0 <func_809B6350>
     454:	00003825 	move	a3,zero
     458:	87a4005c 	lh	a0,92(sp)
     45c:	87a5005e 	lh	a1,94(sp)
     460:	00003025 	move	a2,zero
     464:	0c000000 	jal	0 <func_809B6350>
     468:	24070001 	li	a3,1
     46c:	02e02025 	move	a0,s7
     470:	0c000000 	jal	0 <func_809B6350>
     474:	02202825 	move	a1,s1
     478:	2673fff4 	addiu	s3,s3,-12
     47c:	2610fff4 	addiu	s0,s0,-12
     480:	2652fff4 	addiu	s2,s2,-12
     484:	0661ffea 	bgez	s3,430 <func_809B65A8+0x1d8>
     488:	2631fff4 	addiu	s1,s1,-12
     48c:	26d00158 	addiu	s0,s6,344
     490:	02002025 	move	a0,s0
     494:	02a02825 	move	a1,s5
     498:	02803025 	move	a2,s4
     49c:	0c000000 	jal	0 <func_809B6350>
     4a0:	00003825 	move	a3,zero
     4a4:	c6cc0024 	lwc1	$f12,36(s6)
     4a8:	c6ce0028 	lwc1	$f14,40(s6)
     4ac:	8ec6002c 	lw	a2,44(s6)
     4b0:	0c000000 	jal	0 <func_809B6350>
     4b4:	00003825 	move	a3,zero
     4b8:	86c502aa 	lh	a1,682(s6)
     4bc:	86c7031c 	lh	a3,796(s6)
     4c0:	240c00b6 	li	t4,182
     4c4:	afac0010 	sw	t4,16(sp)
     4c8:	26c400b6 	addiu	a0,s6,182
     4cc:	0c000000 	jal	0 <func_809B6350>
     4d0:	24060003 	li	a2,3
     4d4:	86c502a8 	lh	a1,680(s6)
     4d8:	86c7031c 	lh	a3,796(s6)
     4dc:	240d00b6 	li	t5,182
     4e0:	afad0010 	sw	t5,16(sp)
     4e4:	26c400b4 	addiu	a0,s6,180
     4e8:	0c000000 	jal	0 <func_809B6350>
     4ec:	24060003 	li	a2,3
     4f0:	86c400b4 	lh	a0,180(s6)
     4f4:	24018000 	li	at,-32768
     4f8:	86c500b6 	lh	a1,182(s6)
     4fc:	00812021 	addu	a0,a0,at
     500:	00042400 	sll	a0,a0,0x10
     504:	00042403 	sra	a0,a0,0x10
     508:	00003025 	move	a2,zero
     50c:	0c000000 	jal	0 <func_809B6350>
     510:	24070001 	li	a3,1
     514:	02e02025 	move	a0,s7
     518:	0c000000 	jal	0 <func_809B6350>
     51c:	02002825 	move	a1,s0
     520:	87ae005e 	lh	t6,94(sp)
     524:	34018000 	li	at,0x8000
     528:	02c08025 	move	s0,s6
     52c:	a6ce02f8 	sh	t6,760(s6)
     530:	87af005c 	lh	t7,92(sp)
     534:	26d20164 	addiu	s2,s6,356
     538:	00009825 	move	s3,zero
     53c:	01e1c021 	addu	t8,t7,at
     540:	a6d802f6 	sh	t8,758(s6)
     544:	02c08825 	move	s1,s6
     548:	26d402aa 	addiu	s4,s6,682
     54c:	26d502a8 	addiu	s5,s6,680
     550:	c60c0158 	lwc1	$f12,344(s0)
     554:	c60e015c 	lwc1	$f14,348(s0)
     558:	8e060160 	lw	a2,352(s0)
     55c:	0c000000 	jal	0 <func_809B6350>
     560:	00003825 	move	a3,zero
     564:	862502b0 	lh	a1,688(s1)
     568:	86c7031c 	lh	a3,796(s6)
     56c:	241900b6 	li	t9,182
     570:	afb90010 	sw	t9,16(sp)
     574:	02802025 	move	a0,s4
     578:	0c000000 	jal	0 <func_809B6350>
     57c:	24060003 	li	a2,3
     580:	862502ae 	lh	a1,686(s1)
     584:	86c7031c 	lh	a3,796(s6)
     588:	240800b6 	li	t0,182
     58c:	afa80010 	sw	t0,16(sp)
     590:	02a02025 	move	a0,s5
     594:	0c000000 	jal	0 <func_809B6350>
     598:	24060003 	li	a2,3
     59c:	862402a8 	lh	a0,680(s1)
     5a0:	24018000 	li	at,-32768
     5a4:	862502aa 	lh	a1,682(s1)
     5a8:	00812021 	addu	a0,a0,at
     5ac:	00042400 	sll	a0,a0,0x10
     5b0:	00042403 	sra	a0,a0,0x10
     5b4:	00003025 	move	a2,zero
     5b8:	0c000000 	jal	0 <func_809B6350>
     5bc:	24070001 	li	a3,1
     5c0:	02e02025 	move	a0,s7
     5c4:	0c000000 	jal	0 <func_809B6350>
     5c8:	02402825 	move	a1,s2
     5cc:	26730006 	addiu	s3,s3,6
     5d0:	2401004e 	li	at,78
     5d4:	2610000c 	addiu	s0,s0,12
     5d8:	2652000c 	addiu	s2,s2,12
     5dc:	26310006 	addiu	s1,s1,6
     5e0:	26940006 	addiu	s4,s4,6
     5e4:	1661ffda 	bne	s3,at,550 <func_809B65A8+0x2f8>
     5e8:	26b50006 	addiu	s5,s5,6
     5ec:	86c902f0 	lh	t1,752(s6)
     5f0:	86ca02f2 	lh	t2,754(s6)
     5f4:	3c01432f 	lui	at,0x432f
     5f8:	a6c902f6 	sh	t1,758(s6)
     5fc:	a6ca02f8 	sh	t2,760(s6)
     600:	8fab006c 	lw	t3,108(sp)
     604:	8d6c067c 	lw	t4,1660(t3)
     608:	000c6940 	sll	t5,t4,0x5
     60c:	05a20013 	bltzl	t5,65c <func_809B65A8+0x404>
     610:	8fbf003c 	lw	ra,60(sp)
     614:	44815000 	mtc1	at,$f10
     618:	c6d00090 	lwc1	$f16,144(s6)
     61c:	3c0142c8 	lui	at,0x42c8
     620:	460a803e 	c.le.s	$f16,$f10
     624:	00000000 	nop
     628:	4502000c 	bc1fl	65c <func_809B65A8+0x404>
     62c:	8fbf003c 	lw	ra,60(sp)
     630:	c6d2000c 	lwc1	$f18,12(s6)
     634:	44812000 	mtc1	at,$f4
     638:	c6c80028 	lwc1	$f8,40(s6)
     63c:	46049180 	add.s	$f6,$f18,$f4
     640:	46083032 	c.eq.s	$f6,$f8
     644:	00000000 	nop
     648:	45020004 	bc1fl	65c <func_809B65A8+0x404>
     64c:	8fbf003c 	lw	ra,60(sp)
     650:	0c000000 	jal	0 <func_809B6350>
     654:	02c02025 	move	a0,s6
     658:	8fbf003c 	lw	ra,60(sp)
     65c:	8fb0001c 	lw	s0,28(sp)
     660:	8fb10020 	lw	s1,32(sp)
     664:	8fb20024 	lw	s2,36(sp)
     668:	8fb30028 	lw	s3,40(sp)
     66c:	8fb4002c 	lw	s4,44(sp)
     670:	8fb50030 	lw	s5,48(sp)
     674:	8fb60034 	lw	s6,52(sp)
     678:	8fb70038 	lw	s7,56(sp)
     67c:	03e00008 	jr	ra
     680:	27bd0070 	addiu	sp,sp,112

00000684 <func_809B69D4>:
     684:	27bdffe8 	addiu	sp,sp,-24
     688:	afbf0014 	sw	ra,20(sp)
     68c:	3c014100 	lui	at,0x4100
     690:	ac80014c 	sw	zero,332(a0)
     694:	44816000 	mtc1	at,$f12
     698:	0c000000 	jal	0 <func_809B6350>
     69c:	afa40018 	sw	a0,24(sp)
     6a0:	8fa40018 	lw	a0,24(sp)
     6a4:	3c010000 	lui	at,0x0
     6a8:	e4800068 	swc1	$f0,104(a0)
     6ac:	0c000000 	jal	0 <func_809B6350>
     6b0:	c42c0000 	lwc1	$f12,0(at)
     6b4:	4600010d 	trunc.w.s	$f4,$f0
     6b8:	8fa40018 	lw	a0,24(sp)
     6bc:	3c01c000 	lui	at,0xc000
     6c0:	44813000 	mtc1	at,$f6
     6c4:	440f2000 	mfc1	t7,$f4
     6c8:	24180014 	li	t8,20
     6cc:	3c050000 	lui	a1,0x0
     6d0:	24a50000 	addiu	a1,a1,0
     6d4:	a4980318 	sh	t8,792(a0)
     6d8:	e486006c 	swc1	$f6,108(a0)
     6dc:	0c000000 	jal	0 <func_809B6350>
     6e0:	a48f0032 	sh	t7,50(a0)
     6e4:	8fbf0014 	lw	ra,20(sp)
     6e8:	27bd0018 	addiu	sp,sp,24
     6ec:	03e00008 	jr	ra
     6f0:	00000000 	nop

000006f4 <func_809B6A44>:
     6f4:	27bdffd8 	addiu	sp,sp,-40
     6f8:	afbf0024 	sw	ra,36(sp)
     6fc:	afb00020 	sw	s0,32(sp)
     700:	afa5002c 	sw	a1,44(sp)
     704:	948e0088 	lhu	t6,136(a0)
     708:	00808025 	move	s0,a0
     70c:	3c010000 	lui	at,0x0
     710:	31cf0001 	andi	t7,t6,0x1
     714:	11e00016 	beqz	t7,770 <func_809B6A44+0x7c>
     718:	00000000 	nop
     71c:	c4200000 	lwc1	$f0,0(at)
     720:	84980318 	lh	t8,792(a0)
     724:	3c010000 	lui	at,0x0
     728:	c4260000 	lwc1	$f6,0(at)
     72c:	c4840054 	lwc1	$f4,84(a0)
     730:	c48a0050 	lwc1	$f10,80(a0)
     734:	c4920058 	lwc1	$f18,88(a0)
     738:	2719ffff 	addiu	t9,t8,-1
     73c:	46062201 	sub.s	$f8,$f4,$f6
     740:	a4990318 	sh	t9,792(a0)
     744:	84880318 	lh	t0,792(a0)
     748:	46005400 	add.s	$f16,$f10,$f0
     74c:	e4880054 	swc1	$f8,84(a0)
     750:	46009100 	add.s	$f4,$f18,$f0
     754:	e4900050 	swc1	$f16,80(a0)
     758:	15000011 	bnez	t0,7a0 <func_809B6A44+0xac>
     75c:	e4840058 	swc1	$f4,88(a0)
     760:	0c000000 	jal	0 <func_809B6350>
     764:	00000000 	nop
     768:	1000000e 	b	7a4 <func_809B6A44+0xb0>
     76c:	8fbf0024 	lw	ra,36(sp)
     770:	0c000000 	jal	0 <func_809B6350>
     774:	02002025 	move	a0,s0
     778:	3c0142a0 	lui	at,0x42a0
     77c:	44813000 	mtc1	at,$f6
     780:	24090005 	li	t1,5
     784:	afa90014 	sw	t1,20(sp)
     788:	8fa4002c 	lw	a0,44(sp)
     78c:	02002825 	move	a1,s0
     790:	3c0641f0 	lui	a2,0x41f0
     794:	3c0741e0 	lui	a3,0x41e0
     798:	0c000000 	jal	0 <func_809B6350>
     79c:	e7a60010 	swc1	$f6,16(sp)
     7a0:	8fbf0024 	lw	ra,36(sp)
     7a4:	8fb00020 	lw	s0,32(sp)
     7a8:	27bd0028 	addiu	sp,sp,40
     7ac:	03e00008 	jr	ra
     7b0:	00000000 	nop

000007b4 <func_809B6B04>:
     7b4:	27bdffe8 	addiu	sp,sp,-24
     7b8:	afbf0014 	sw	ra,20(sp)
     7bc:	3c0141a0 	lui	at,0x41a0
     7c0:	44812000 	mtc1	at,$f4
     7c4:	240e0003 	li	t6,3
     7c8:	240f0014 	li	t7,20
     7cc:	241805dc 	li	t8,1500
     7d0:	241900ff 	li	t9,255
     7d4:	3c050000 	lui	a1,0x0
     7d8:	ac8e014c 	sw	t6,332(a0)
     7dc:	a48f0318 	sh	t7,792(a0)
     7e0:	a480031a 	sh	zero,794(a0)
     7e4:	a498031c 	sh	t8,796(a0)
     7e8:	a09900ae 	sb	t9,174(a0)
     7ec:	24a50000 	addiu	a1,a1,0
     7f0:	0c000000 	jal	0 <func_809B6350>
     7f4:	e4840068 	swc1	$f4,104(a0)
     7f8:	8fbf0014 	lw	ra,20(sp)
     7fc:	27bd0018 	addiu	sp,sp,24
     800:	03e00008 	jr	ra
     804:	00000000 	nop

00000808 <func_809B6B58>:
     808:	27bdff98 	addiu	sp,sp,-104
     80c:	afbf0044 	sw	ra,68(sp)
     810:	afbe0040 	sw	s8,64(sp)
     814:	afb7003c 	sw	s7,60(sp)
     818:	afb60038 	sw	s6,56(sp)
     81c:	afb50034 	sw	s5,52(sp)
     820:	afb40030 	sw	s4,48(sp)
     824:	afb3002c 	sw	s3,44(sp)
     828:	afb20028 	sw	s2,40(sp)
     82c:	afb10024 	sw	s1,36(sp)
     830:	afb00020 	sw	s0,32(sp)
     834:	afa5006c 	sw	a1,108(sp)
     838:	8caf1c44 	lw	t7,7236(a1)
     83c:	00809825 	move	s3,a0
     840:	3c014270 	lui	at,0x4270
     844:	afaf0064 	sw	t7,100(sp)
     848:	c664000c 	lwc1	$f4,12(s3)
     84c:	44813000 	mtc1	at,$f6
     850:	44805000 	mtc1	zero,$f10
     854:	24840028 	addiu	a0,a0,40
     858:	46062200 	add.s	$f8,$f4,$f6
     85c:	3c063f80 	lui	a2,0x3f80
     860:	3c074120 	lui	a3,0x4120
     864:	e7aa0010 	swc1	$f10,16(sp)
     868:	44054000 	mfc1	a1,$f8
     86c:	0c000000 	jal	0 <func_809B6350>
     870:	00000000 	nop
     874:	3c01432f 	lui	at,0x432f
     878:	44818000 	mtc1	at,$f16
     87c:	c6620090 	lwc1	$f2,144(s3)
     880:	4610103e 	c.le.s	$f2,$f16
     884:	00000000 	nop
     888:	45030006 	bc1tl	8a4 <func_809B6B58+0x9c>
     88c:	86620318 	lh	v0,792(s3)
     890:	8678031a 	lh	t8,794(s3)
     894:	3c01432f 	lui	at,0x432f
     898:	53000143 	beqzl	t8,da8 <func_809B6B58+0x5a0>
     89c:	44815000 	mtc1	at,$f10
     8a0:	86620318 	lh	v0,792(s3)
     8a4:	24010014 	li	at,20
     8a8:	02602025 	move	a0,s3
     8ac:	14410006 	bne	v0,at,8c8 <func_809B6B58+0xc0>
     8b0:	00000000 	nop
     8b4:	0c000000 	jal	0 <func_809B6350>
     8b8:	24053959 	li	a1,14681
     8bc:	241905dc 	li	t9,1500
     8c0:	a679031c 	sh	t9,796(s3)
     8c4:	86620318 	lh	v0,792(s3)
     8c8:	1040007f 	beqz	v0,ac8 <func_809B6B58+0x2c0>
     8cc:	2449ffff 	addiu	t1,v0,-1
     8d0:	a6690318 	sh	t1,792(s3)
     8d4:	866a0318 	lh	t2,792(s3)
     8d8:	2408000a 	li	t0,10
     8dc:	a668031a 	sh	t0,794(s3)
     8e0:	2941000b 	slti	at,t2,11
     8e4:	14200010 	bnez	at,928 <func_809B6B58+0x120>
     8e8:	26700024 	addiu	s0,s3,36
     8ec:	8fab0064 	lw	t3,100(sp)
     8f0:	3c0141f0 	lui	at,0x41f0
     8f4:	44812000 	mtc1	at,$f4
     8f8:	8d6d0024 	lw	t5,36(t3)
     8fc:	867e008a 	lh	s8,138(s3)
     900:	26700024 	addiu	s0,s3,36
     904:	ae6d02fc 	sw	t5,764(s3)
     908:	8d6c0028 	lw	t4,40(t3)
     90c:	ae6c0300 	sw	t4,768(s3)
     910:	c6720300 	lwc1	$f18,768(s3)
     914:	8d6d002c 	lw	t5,44(t3)
     918:	46049180 	add.s	$f6,$f18,$f4
     91c:	ae6d0304 	sw	t5,772(s3)
     920:	10000006 	b	93c <func_809B6B58+0x134>
     924:	e6660300 	swc1	$f6,768(s3)
     928:	02002025 	move	a0,s0
     92c:	0c000000 	jal	0 <func_809B6350>
     930:	266502fc 	addiu	a1,s3,764
     934:	0002f400 	sll	s8,v0,0x10
     938:	001ef403 	sra	s8,s8,0x10
     93c:	2664031c 	addiu	a0,s3,796
     940:	240505dc 	li	a1,1500
     944:	24060001 	li	a2,1
     948:	2407001e 	li	a3,30
     94c:	0c000000 	jal	0 <func_809B6350>
     950:	afa00010 	sw	zero,16(sp)
     954:	26710158 	addiu	s1,s3,344
     958:	02202825 	move	a1,s1
     95c:	02002025 	move	a0,s0
     960:	27a60058 	addiu	a2,sp,88
     964:	0c000000 	jal	0 <func_809B6350>
     968:	00003825 	move	a3,zero
     96c:	8667031c 	lh	a3,796(s3)
     970:	afa00010 	sw	zero,16(sp)
     974:	266400b6 	addiu	a0,s3,182
     978:	87a5005a 	lh	a1,90(sp)
     97c:	0c000000 	jal	0 <func_809B6350>
     980:	24060001 	li	a2,1
     984:	87a50058 	lh	a1,88(sp)
     988:	34018000 	li	at,0x8000
     98c:	8667031c 	lh	a3,796(s3)
     990:	00a12821 	addu	a1,a1,at
     994:	00052c00 	sll	a1,a1,0x10
     998:	00052c03 	sra	a1,a1,0x10
     99c:	afa00010 	sw	zero,16(sp)
     9a0:	266400b4 	addiu	a0,s3,180
     9a4:	0c000000 	jal	0 <func_809B6350>
     9a8:	24060001 	li	a2,1
     9ac:	c66c0024 	lwc1	$f12,36(s3)
     9b0:	c66e0028 	lwc1	$f14,40(s3)
     9b4:	8e66002c 	lw	a2,44(s3)
     9b8:	0c000000 	jal	0 <func_809B6350>
     9bc:	00003825 	move	a3,zero
     9c0:	866400b4 	lh	a0,180(s3)
     9c4:	24018000 	li	at,-32768
     9c8:	866500b6 	lh	a1,182(s3)
     9cc:	00812021 	addu	a0,a0,at
     9d0:	00042400 	sll	a0,a0,0x10
     9d4:	00042403 	sra	a0,a0,0x10
     9d8:	00003025 	move	a2,zero
     9dc:	0c000000 	jal	0 <func_809B6350>
     9e0:	24070001 	li	a3,1
     9e4:	3c170000 	lui	s7,0x0
     9e8:	26f70000 	addiu	s7,s7,0
     9ec:	02e02025 	move	a0,s7
     9f0:	0c000000 	jal	0 <func_809B6350>
     9f4:	02202825 	move	a1,s1
     9f8:	00009025 	move	s2,zero
     9fc:	2416000c 	li	s6,12
     a00:	241504b0 	li	s5,1200
     a04:	24140006 	li	s4,6
     a08:	02540019 	multu	s2,s4
     a0c:	8667031c 	lh	a3,796(s3)
     a10:	afa00010 	sw	zero,16(sp)
     a14:	24060001 	li	a2,1
     a18:	00007012 	mflo	t6
     a1c:	026e8021 	addu	s0,s3,t6
     a20:	260402a8 	addiu	a0,s0,680
     a24:	02550019 	multu	s2,s5
     a28:	00002812 	mflo	a1
     a2c:	24a5c000 	addiu	a1,a1,-16384
     a30:	00052c00 	sll	a1,a1,0x10
     a34:	0c000000 	jal	0 <func_809B6350>
     a38:	00052c03 	sra	a1,a1,0x10
     a3c:	001e2c00 	sll	a1,s8,0x10
     a40:	8667031c 	lh	a3,796(s3)
     a44:	afa00010 	sw	zero,16(sp)
     a48:	00052c03 	sra	a1,a1,0x10
     a4c:	260402aa 	addiu	a0,s0,682
     a50:	0c000000 	jal	0 <func_809B6350>
     a54:	24060001 	li	a2,1
     a58:	02560019 	multu	s2,s6
     a5c:	00003825 	move	a3,zero
     a60:	00007812 	mflo	t7
     a64:	026f8821 	addu	s1,s3,t7
     a68:	c62c0158 	lwc1	$f12,344(s1)
     a6c:	c62e015c 	lwc1	$f14,348(s1)
     a70:	0c000000 	jal	0 <func_809B6350>
     a74:	8e260160 	lw	a2,352(s1)
     a78:	860402a8 	lh	a0,680(s0)
     a7c:	24018000 	li	at,-32768
     a80:	860502aa 	lh	a1,682(s0)
     a84:	00812021 	addu	a0,a0,at
     a88:	00042400 	sll	a0,a0,0x10
     a8c:	00042403 	sra	a0,a0,0x10
     a90:	00003025 	move	a2,zero
     a94:	0c000000 	jal	0 <func_809B6350>
     a98:	24070001 	li	a3,1
     a9c:	02e02025 	move	a0,s7
     aa0:	0c000000 	jal	0 <func_809B6350>
     aa4:	26250164 	addiu	a1,s1,356
     aa8:	26520001 	addiu	s2,s2,1
     aac:	00129400 	sll	s2,s2,0x10
     ab0:	00129403 	sra	s2,s2,0x10
     ab4:	2a41000d 	slti	at,s2,13
     ab8:	1420ffd3 	bnez	at,a08 <func_809B6B58+0x200>
     abc:	00000000 	nop
     ac0:	1000009c 	b	d34 <func_809B6B58+0x52c>
     ac4:	92620330 	lbu	v0,816(s3)
     ac8:	8662031a 	lh	v0,794(s3)
     acc:	2401000a 	li	at,10
     ad0:	02602025 	move	a0,s3
     ad4:	14410004 	bne	v0,at,ae8 <func_809B6B58+0x2e0>
     ad8:	00000000 	nop
     adc:	0c000000 	jal	0 <func_809B6350>
     ae0:	24053958 	li	a1,14680
     ae4:	8662031a 	lh	v0,794(s3)
     ae8:	1040007c 	beqz	v0,cdc <func_809B6B58+0x4d4>
     aec:	3c01432f 	lui	at,0x432f
     af0:	3c0141f0 	lui	at,0x41f0
     af4:	44814000 	mtc1	at,$f8
     af8:	24181f40 	li	t8,8000
     afc:	26700024 	addiu	s0,s3,36
     b00:	a678031c 	sh	t8,796(s3)
     b04:	02002025 	move	a0,s0
     b08:	266502fc 	addiu	a1,s3,764
     b0c:	0c000000 	jal	0 <func_809B6350>
     b10:	e6680068 	swc1	$f8,104(s3)
     b14:	0002f400 	sll	s8,v0,0x10
     b18:	26710158 	addiu	s1,s3,344
     b1c:	001ef403 	sra	s8,s8,0x10
     b20:	02202825 	move	a1,s1
     b24:	0c000000 	jal	0 <func_809B6350>
     b28:	02002025 	move	a0,s0
     b2c:	34018000 	li	at,0x8000
     b30:	00418021 	addu	s0,v0,at
     b34:	00108400 	sll	s0,s0,0x10
     b38:	001e2c00 	sll	a1,s8,0x10
     b3c:	8667031c 	lh	a3,796(s3)
     b40:	00108403 	sra	s0,s0,0x10
     b44:	afa00010 	sw	zero,16(sp)
     b48:	00052c03 	sra	a1,a1,0x10
     b4c:	266400b6 	addiu	a0,s3,182
     b50:	0c000000 	jal	0 <func_809B6350>
     b54:	24060001 	li	a2,1
     b58:	00102c00 	sll	a1,s0,0x10
     b5c:	8667031c 	lh	a3,796(s3)
     b60:	afa00010 	sw	zero,16(sp)
     b64:	00052c03 	sra	a1,a1,0x10
     b68:	266400b4 	addiu	a0,s3,180
     b6c:	0c000000 	jal	0 <func_809B6350>
     b70:	24060001 	li	a2,1
     b74:	c66c0024 	lwc1	$f12,36(s3)
     b78:	c66e0028 	lwc1	$f14,40(s3)
     b7c:	8e66002c 	lw	a2,44(s3)
     b80:	0c000000 	jal	0 <func_809B6350>
     b84:	00003825 	move	a3,zero
     b88:	866400b4 	lh	a0,180(s3)
     b8c:	24018000 	li	at,-32768
     b90:	866500b6 	lh	a1,182(s3)
     b94:	00812021 	addu	a0,a0,at
     b98:	00042400 	sll	a0,a0,0x10
     b9c:	00042403 	sra	a0,a0,0x10
     ba0:	00003025 	move	a2,zero
     ba4:	0c000000 	jal	0 <func_809B6350>
     ba8:	24070001 	li	a3,1
     bac:	3c170000 	lui	s7,0x0
     bb0:	26f70000 	addiu	s7,s7,0
     bb4:	02e02025 	move	a0,s7
     bb8:	0c000000 	jal	0 <func_809B6350>
     bbc:	02202825 	move	a1,s1
     bc0:	00009025 	move	s2,zero
     bc4:	2416000c 	li	s6,12
     bc8:	241504b0 	li	s5,1200
     bcc:	24140006 	li	s4,6
     bd0:	8664031a 	lh	a0,794(s3)
     bd4:	24010ccc 	li	at,3276
     bd8:	00810019 	multu	a0,at
     bdc:	00002012 	mflo	a0
     be0:	00042400 	sll	a0,a0,0x10
     be4:	0c000000 	jal	0 <func_809B6350>
     be8:	00042403 	sra	a0,a0,0x10
     bec:	02540019 	multu	s2,s4
     bf0:	46000287 	neg.s	$f10,$f0
     bf4:	8667031c 	lh	a3,796(s3)
     bf8:	afa00010 	sw	zero,16(sp)
     bfc:	24060001 	li	a2,1
     c00:	0000c812 	mflo	t9
     c04:	02798021 	addu	s0,s3,t9
     c08:	260402a8 	addiu	a0,s0,680
     c0c:	02550019 	multu	s2,s5
     c10:	00004012 	mflo	t0
     c14:	44888000 	mtc1	t0,$f16
     c18:	00000000 	nop
     c1c:	468084a0 	cvt.s.w	$f18,$f16
     c20:	46125102 	mul.s	$f4,$f10,$f18
     c24:	4600218d 	trunc.w.s	$f6,$f4
     c28:	44053000 	mfc1	a1,$f6
     c2c:	00000000 	nop
     c30:	00052c00 	sll	a1,a1,0x10
     c34:	00052c03 	sra	a1,a1,0x10
     c38:	24a5c000 	addiu	a1,a1,-16384
     c3c:	00052c00 	sll	a1,a1,0x10
     c40:	0c000000 	jal	0 <func_809B6350>
     c44:	00052c03 	sra	a1,a1,0x10
     c48:	001e2c00 	sll	a1,s8,0x10
     c4c:	8667031c 	lh	a3,796(s3)
     c50:	afa00010 	sw	zero,16(sp)
     c54:	00052c03 	sra	a1,a1,0x10
     c58:	260402aa 	addiu	a0,s0,682
     c5c:	0c000000 	jal	0 <func_809B6350>
     c60:	24060001 	li	a2,1
     c64:	02560019 	multu	s2,s6
     c68:	00003825 	move	a3,zero
     c6c:	00005012 	mflo	t2
     c70:	026a8821 	addu	s1,s3,t2
     c74:	c62c0158 	lwc1	$f12,344(s1)
     c78:	c62e015c 	lwc1	$f14,348(s1)
     c7c:	0c000000 	jal	0 <func_809B6350>
     c80:	8e260160 	lw	a2,352(s1)
     c84:	860402a8 	lh	a0,680(s0)
     c88:	24018000 	li	at,-32768
     c8c:	860502aa 	lh	a1,682(s0)
     c90:	00812021 	addu	a0,a0,at
     c94:	00042400 	sll	a0,a0,0x10
     c98:	00042403 	sra	a0,a0,0x10
     c9c:	00003025 	move	a2,zero
     ca0:	0c000000 	jal	0 <func_809B6350>
     ca4:	24070001 	li	a3,1
     ca8:	02e02025 	move	a0,s7
     cac:	0c000000 	jal	0 <func_809B6350>
     cb0:	26250164 	addiu	a1,s1,356
     cb4:	26520001 	addiu	s2,s2,1
     cb8:	00129400 	sll	s2,s2,0x10
     cbc:	00129403 	sra	s2,s2,0x10
     cc0:	2a41000d 	slti	at,s2,13
     cc4:	5420ffc3 	bnezl	at,bd4 <func_809B6B58+0x3cc>
     cc8:	8664031a 	lh	a0,794(s3)
     ccc:	866b031a 	lh	t3,794(s3)
     cd0:	256cffff 	addiu	t4,t3,-1
     cd4:	10000016 	b	d30 <func_809B6B58+0x528>
     cd8:	a66c031a 	sh	t4,794(s3)
     cdc:	44814000 	mtc1	at,$f8
     ce0:	c6700090 	lwc1	$f16,144(s3)
     ce4:	8fad0064 	lw	t5,100(sp)
     ce8:	4610403c 	c.lt.s	$f8,$f16
     cec:	00000000 	nop
     cf0:	45010005 	bc1t	d08 <func_809B6B58+0x500>
     cf4:	00000000 	nop
     cf8:	8dae067c 	lw	t6,1660(t5)
     cfc:	000e7940 	sll	t7,t6,0x5
     d00:	05e10005 	bgez	t7,d18 <func_809B6B58+0x510>
     d04:	00000000 	nop
     d08:	0c000000 	jal	0 <func_809B6350>
     d0c:	02602025 	move	a0,s3
     d10:	10000008 	b	d34 <func_809B6B58+0x52c>
     d14:	92620330 	lbu	v0,816(s3)
     d18:	0c000000 	jal	0 <func_809B6350>
     d1c:	02602025 	move	a0,s3
     d20:	2418001b 	li	t8,27
     d24:	241902ee 	li	t9,750
     d28:	a6780318 	sh	t8,792(s3)
     d2c:	a679031c 	sh	t9,796(s3)
     d30:	92620330 	lbu	v0,816(s3)
     d34:	866802f0 	lh	t0,752(s3)
     d38:	866902f2 	lh	t1,754(s3)
     d3c:	304a0002 	andi	t2,v0,0x2
     d40:	a66802f6 	sh	t0,758(s3)
     d44:	1140000f 	beqz	t2,d84 <func_809B6B58+0x57c>
     d48:	a66902f8 	sh	t1,760(s3)
     d4c:	304bfffd 	andi	t3,v0,0xfffd
     d50:	a26b0330 	sb	t3,816(s3)
     d54:	8fac0064 	lw	t4,100(sp)
     d58:	8e6d0324 	lw	t5,804(s3)
     d5c:	3c014100 	lui	at,0x4100
     d60:	8fa4006c 	lw	a0,108(sp)
     d64:	558d0008 	bnel	t4,t5,d88 <func_809B6B58+0x580>
     d68:	8fa4006c 	lw	a0,108(sp)
     d6c:	44810000 	mtc1	at,$f0
     d70:	8667008a 	lh	a3,138(s3)
     d74:	02602825 	move	a1,s3
     d78:	44060000 	mfc1	a2,$f0
     d7c:	0c000000 	jal	0 <func_809B6350>
     d80:	e7a00010 	swc1	$f0,16(sp)
     d84:	8fa4006c 	lw	a0,108(sp)
     d88:	3c010001 	lui	at,0x1
     d8c:	34211e60 	ori	at,at,0x1e60
     d90:	26660320 	addiu	a2,s3,800
     d94:	0c000000 	jal	0 <func_809B6350>
     d98:	00812821 	addu	a1,a0,at
     d9c:	10000016 	b	df8 <func_809B6B58+0x5f0>
     da0:	8fbf0044 	lw	ra,68(sp)
     da4:	44815000 	mtc1	at,$f10
     da8:	8faf0064 	lw	t7,100(sp)
     dac:	4602503c 	c.lt.s	$f10,$f2
     db0:	00000000 	nop
     db4:	45010005 	bc1t	dcc <func_809B6B58+0x5c4>
     db8:	00000000 	nop
     dbc:	8df8067c 	lw	t8,1660(t7)
     dc0:	0018c940 	sll	t9,t8,0x5
     dc4:	07210005 	bgez	t9,ddc <func_809B6B58+0x5d4>
     dc8:	00000000 	nop
     dcc:	0c000000 	jal	0 <func_809B6350>
     dd0:	02602025 	move	a0,s3
     dd4:	10000008 	b	df8 <func_809B6B58+0x5f0>
     dd8:	8fbf0044 	lw	ra,68(sp)
     ddc:	0c000000 	jal	0 <func_809B6350>
     de0:	02602025 	move	a0,s3
     de4:	2408001b 	li	t0,27
     de8:	240902ee 	li	t1,750
     dec:	a6680318 	sh	t0,792(s3)
     df0:	a669031c 	sh	t1,796(s3)
     df4:	8fbf0044 	lw	ra,68(sp)
     df8:	8fb00020 	lw	s0,32(sp)
     dfc:	8fb10024 	lw	s1,36(sp)
     e00:	8fb20028 	lw	s2,40(sp)
     e04:	8fb3002c 	lw	s3,44(sp)
     e08:	8fb40030 	lw	s4,48(sp)
     e0c:	8fb50034 	lw	s5,52(sp)
     e10:	8fb60038 	lw	s6,56(sp)
     e14:	8fb7003c 	lw	s7,60(sp)
     e18:	8fbe0040 	lw	s8,64(sp)
     e1c:	03e00008 	jr	ra
     e20:	27bd0068 	addiu	sp,sp,104

00000e24 <func_809B7174>:
     e24:	27bdffe0 	addiu	sp,sp,-32
     e28:	afbf001c 	sw	ra,28(sp)
     e2c:	3c014120 	lui	at,0x4120
     e30:	44812000 	mtc1	at,$f4
     e34:	240e0001 	li	t6,1
     e38:	240f05dc 	li	t7,1500
     e3c:	24180014 	li	t8,20
     e40:	241900ff 	li	t9,255
     e44:	ac8e014c 	sw	t6,332(a0)
     e48:	a48f031c 	sh	t7,796(a0)
     e4c:	a4980318 	sh	t8,792(a0)
     e50:	a09900ae 	sb	t9,174(a0)
     e54:	e4840068 	swc1	$f4,104(a0)
     e58:	afa40020 	sw	a0,32(sp)
     e5c:	0c000000 	jal	0 <func_809B6350>
     e60:	2405395a 	li	a1,14682
     e64:	2408000c 	li	t0,12
     e68:	8fa40020 	lw	a0,32(sp)
     e6c:	afa80010 	sw	t0,16(sp)
     e70:	24054000 	li	a1,16384
     e74:	240600ff 	li	a2,255
     e78:	0c000000 	jal	0 <func_809B6350>
     e7c:	00003825 	move	a3,zero
     e80:	3c050000 	lui	a1,0x0
     e84:	8fa40020 	lw	a0,32(sp)
     e88:	0c000000 	jal	0 <func_809B6350>
     e8c:	24a50000 	addiu	a1,a1,0
     e90:	8fbf001c 	lw	ra,28(sp)
     e94:	27bd0020 	addiu	sp,sp,32
     e98:	03e00008 	jr	ra
     e9c:	00000000 	nop

00000ea0 <func_809B71F0>:
     ea0:	27bdff88 	addiu	sp,sp,-120
     ea4:	afb7003c 	sw	s7,60(sp)
     ea8:	0080b825 	move	s7,a0
     eac:	afbf0044 	sw	ra,68(sp)
     eb0:	afbe0040 	sw	s8,64(sp)
     eb4:	afb60038 	sw	s6,56(sp)
     eb8:	afb50034 	sw	s5,52(sp)
     ebc:	afb40030 	sw	s4,48(sp)
     ec0:	afb3002c 	sw	s3,44(sp)
     ec4:	afb20028 	sw	s2,40(sp)
     ec8:	afb10024 	sw	s1,36(sp)
     ecc:	afb00020 	sw	s0,32(sp)
     ed0:	3c0143a5 	lui	at,0x43a5
     ed4:	44813000 	mtc1	at,$f6
     ed8:	c6e4000c 	lwc1	$f4,12(s7)
     edc:	44805000 	mtc1	zero,$f10
     ee0:	00a08825 	move	s1,a1
     ee4:	46062200 	add.s	$f8,$f4,$f6
     ee8:	24840028 	addiu	a0,a0,40
     eec:	3c063f80 	lui	a2,0x3f80
     ef0:	3c0741f0 	lui	a3,0x41f0
     ef4:	44054000 	mfc1	a1,$f8
     ef8:	0c000000 	jal	0 <func_809B6350>
     efc:	e7aa0010 	swc1	$f10,16(sp)
     f00:	26f40024 	addiu	s4,s7,36
     f04:	8e8f0000 	lw	t7,0(s4)
     f08:	26f002fc 	addiu	s0,s7,764
     f0c:	3c180001 	lui	t8,0x1
     f10:	ae0f0000 	sw	t7,0(s0)
     f14:	8e8e0004 	lw	t6,4(s4)
     f18:	0311c021 	addu	t8,t8,s1
     f1c:	ae0e0004 	sw	t6,4(s0)
     f20:	8e8f0008 	lw	t7,8(s4)
     f24:	ae0f0008 	sw	t7,8(s0)
     f28:	8f181de4 	lw	t8,7652(t8)
     f2c:	3319000f 	andi	t9,t8,0xf
     f30:	1720001a 	bnez	t9,f9c <func_809B71F0+0xfc>
     f34:	3c014334 	lui	at,0x4334
     f38:	44816000 	mtc1	at,$f12
     f3c:	0c000000 	jal	0 <func_809B6350>
     f40:	00000000 	nop
     f44:	c6f00310 	lwc1	$f16,784(s7)
     f48:	3c014334 	lui	at,0x4334
     f4c:	44816000 	mtc1	at,$f12
     f50:	46008480 	add.s	$f18,$f16,$f0
     f54:	0c000000 	jal	0 <func_809B6350>
     f58:	e6f20310 	swc1	$f18,784(s7)
     f5c:	c6e40314 	lwc1	$f4,788(s7)
     f60:	c6ec0310 	lwc1	$f12,784(s7)
     f64:	46002180 	add.s	$f6,$f4,$f0
     f68:	0c000000 	jal	0 <func_809B6350>
     f6c:	e6e60314 	swc1	$f6,788(s7)
     f70:	3c0142a0 	lui	at,0x42a0
     f74:	44814000 	mtc1	at,$f8
     f78:	c6ec0314 	lwc1	$f12,788(s7)
     f7c:	46080282 	mul.s	$f10,$f0,$f8
     f80:	0c000000 	jal	0 <func_809B6350>
     f84:	e6ea0308 	swc1	$f10,776(s7)
     f88:	3c0142a0 	lui	at,0x42a0
     f8c:	44818000 	mtc1	at,$f16
     f90:	00000000 	nop
     f94:	46100482 	mul.s	$f18,$f0,$f16
     f98:	e6f2030c 	swc1	$f18,780(s7)
     f9c:	3c0143e0 	lui	at,0x43e0
     fa0:	44813000 	mtc1	at,$f6
     fa4:	c6e40300 	lwc1	$f4,768(s7)
     fa8:	c6ea02fc 	lwc1	$f10,764(s7)
     fac:	c6f00308 	lwc1	$f16,776(s7)
     fb0:	46062201 	sub.s	$f8,$f4,$f6
     fb4:	c6e6030c 	lwc1	$f6,780(s7)
     fb8:	c6e40304 	lwc1	$f4,772(s7)
     fbc:	46105480 	add.s	$f18,$f10,$f16
     fc0:	e6e80300 	swc1	$f8,768(s7)
     fc4:	44800000 	mtc1	zero,$f0
     fc8:	46062200 	add.s	$f8,$f4,$f6
     fcc:	e6f202fc 	swc1	$f18,764(s7)
     fd0:	8ee70068 	lw	a3,104(s7)
     fd4:	02002025 	move	a0,s0
     fd8:	e6e80304 	swc1	$f8,772(s7)
     fdc:	26e501f4 	addiu	a1,s7,500
     fe0:	3c063f80 	lui	a2,0x3f80
     fe4:	e7a00014 	swc1	$f0,20(sp)
     fe8:	0c000000 	jal	0 <func_809B6350>
     fec:	e7a00010 	swc1	$f0,16(sp)
     ff0:	26f00090 	addiu	s0,s7,144
     ff4:	26110164 	addiu	s1,s0,356
     ff8:	26120158 	addiu	s2,s0,344
     ffc:	24130090 	li	s3,144
    1000:	27be006c 	addiu	s8,sp,108
    1004:	02202025 	move	a0,s1
    1008:	02402825 	move	a1,s2
    100c:	03c03025 	move	a2,s8
    1010:	0c000000 	jal	0 <func_809B6350>
    1014:	00003825 	move	a3,zero
    1018:	c60c0164 	lwc1	$f12,356(s0)
    101c:	c60e0168 	lwc1	$f14,360(s0)
    1020:	8e06016c 	lw	a2,364(s0)
    1024:	0c000000 	jal	0 <func_809B6350>
    1028:	00003825 	move	a3,zero
    102c:	87a4006c 	lh	a0,108(sp)
    1030:	87a5006e 	lh	a1,110(sp)
    1034:	00003025 	move	a2,zero
    1038:	0c000000 	jal	0 <func_809B6350>
    103c:	24070001 	li	a3,1
    1040:	3c040000 	lui	a0,0x0
    1044:	24840000 	addiu	a0,a0,0
    1048:	0c000000 	jal	0 <func_809B6350>
    104c:	02402825 	move	a1,s2
    1050:	2673fff4 	addiu	s3,s3,-12
    1054:	2610fff4 	addiu	s0,s0,-12
    1058:	2631fff4 	addiu	s1,s1,-12
    105c:	0661ffe9 	bgez	s3,1004 <func_809B71F0+0x164>
    1060:	2652fff4 	addiu	s2,s2,-12
    1064:	26f00158 	addiu	s0,s7,344
    1068:	02002825 	move	a1,s0
    106c:	02802025 	move	a0,s4
    1070:	03c03025 	move	a2,s8
    1074:	0c000000 	jal	0 <func_809B6350>
    1078:	00003825 	move	a3,zero
    107c:	c6ec0024 	lwc1	$f12,36(s7)
    1080:	c6ee0028 	lwc1	$f14,40(s7)
    1084:	8ee6002c 	lw	a2,44(s7)
    1088:	0c000000 	jal	0 <func_809B6350>
    108c:	00003825 	move	a3,zero
    1090:	86e7031c 	lh	a3,796(s7)
    1094:	240800b6 	li	t0,182
    1098:	afa80010 	sw	t0,16(sp)
    109c:	26e400b6 	addiu	a0,s7,182
    10a0:	87a5006e 	lh	a1,110(sp)
    10a4:	0c000000 	jal	0 <func_809B6350>
    10a8:	24060003 	li	a2,3
    10ac:	87a5006c 	lh	a1,108(sp)
    10b0:	34018000 	li	at,0x8000
    10b4:	86e7031c 	lh	a3,796(s7)
    10b8:	00a12821 	addu	a1,a1,at
    10bc:	00052c00 	sll	a1,a1,0x10
    10c0:	240900b6 	li	t1,182
    10c4:	afa90010 	sw	t1,16(sp)
    10c8:	00052c03 	sra	a1,a1,0x10
    10cc:	26e400b4 	addiu	a0,s7,180
    10d0:	0c000000 	jal	0 <func_809B6350>
    10d4:	24060003 	li	a2,3
    10d8:	86e400b4 	lh	a0,180(s7)
    10dc:	24018000 	li	at,-32768
    10e0:	86e500b6 	lh	a1,182(s7)
    10e4:	00812021 	addu	a0,a0,at
    10e8:	00042400 	sll	a0,a0,0x10
    10ec:	00042403 	sra	a0,a0,0x10
    10f0:	00003025 	move	a2,zero
    10f4:	0c000000 	jal	0 <func_809B6350>
    10f8:	24070001 	li	a3,1
    10fc:	3c040000 	lui	a0,0x0
    1100:	24840000 	addiu	a0,a0,0
    1104:	0c000000 	jal	0 <func_809B6350>
    1108:	02002825 	move	a1,s0
    110c:	02e08025 	move	s0,s7
    1110:	26f10164 	addiu	s1,s7,356
    1114:	26f20158 	addiu	s2,s7,344
    1118:	0000a025 	move	s4,zero
    111c:	02e09825 	move	s3,s7
    1120:	26f502aa 	addiu	s5,s7,682
    1124:	26f602a8 	addiu	s6,s7,680
    1128:	02402025 	move	a0,s2
    112c:	02202825 	move	a1,s1
    1130:	03c03025 	move	a2,s8
    1134:	0c000000 	jal	0 <func_809B6350>
    1138:	00003825 	move	a3,zero
    113c:	c60c0158 	lwc1	$f12,344(s0)
    1140:	c60e015c 	lwc1	$f14,348(s0)
    1144:	8e060160 	lw	a2,352(s0)
    1148:	0c000000 	jal	0 <func_809B6350>
    114c:	00003825 	move	a3,zero
    1150:	86e7031c 	lh	a3,796(s7)
    1154:	240a00b6 	li	t2,182
    1158:	afaa0010 	sw	t2,16(sp)
    115c:	02a02025 	move	a0,s5
    1160:	87a5006e 	lh	a1,110(sp)
    1164:	0c000000 	jal	0 <func_809B6350>
    1168:	24060003 	li	a2,3
    116c:	87a5006c 	lh	a1,108(sp)
    1170:	34018000 	li	at,0x8000
    1174:	86e7031c 	lh	a3,796(s7)
    1178:	00a12821 	addu	a1,a1,at
    117c:	00052c00 	sll	a1,a1,0x10
    1180:	240b00b6 	li	t3,182
    1184:	afab0010 	sw	t3,16(sp)
    1188:	00052c03 	sra	a1,a1,0x10
    118c:	02c02025 	move	a0,s6
    1190:	0c000000 	jal	0 <func_809B6350>
    1194:	24060003 	li	a2,3
    1198:	866402a8 	lh	a0,680(s3)
    119c:	24018000 	li	at,-32768
    11a0:	866502aa 	lh	a1,682(s3)
    11a4:	00812021 	addu	a0,a0,at
    11a8:	00042400 	sll	a0,a0,0x10
    11ac:	00042403 	sra	a0,a0,0x10
    11b0:	00003025 	move	a2,zero
    11b4:	0c000000 	jal	0 <func_809B6350>
    11b8:	24070001 	li	a3,1
    11bc:	3c040000 	lui	a0,0x0
    11c0:	24840000 	addiu	a0,a0,0
    11c4:	0c000000 	jal	0 <func_809B6350>
    11c8:	02202825 	move	a1,s1
    11cc:	26940006 	addiu	s4,s4,6
    11d0:	2401004e 	li	at,78
    11d4:	2610000c 	addiu	s0,s0,12
    11d8:	2631000c 	addiu	s1,s1,12
    11dc:	2652000c 	addiu	s2,s2,12
    11e0:	26730006 	addiu	s3,s3,6
    11e4:	26b50006 	addiu	s5,s5,6
    11e8:	1681ffcf 	bne	s4,at,1128 <func_809B71F0+0x288>
    11ec:	26d60006 	addiu	s6,s6,6
    11f0:	86ee0318 	lh	t6,792(s7)
    11f4:	86ec02f0 	lh	t4,752(s7)
    11f8:	86ed02f2 	lh	t5,754(s7)
    11fc:	25cfffff 	addiu	t7,t6,-1
    1200:	a6ef0318 	sh	t7,792(s7)
    1204:	86f80318 	lh	t8,792(s7)
    1208:	a6ec02f6 	sh	t4,758(s7)
    120c:	a6ed02f8 	sh	t5,760(s7)
    1210:	57000004 	bnezl	t8,1224 <func_809B71F0+0x384>
    1214:	8fbf0044 	lw	ra,68(sp)
    1218:	0c000000 	jal	0 <func_809B6350>
    121c:	02e02025 	move	a0,s7
    1220:	8fbf0044 	lw	ra,68(sp)
    1224:	8fb00020 	lw	s0,32(sp)
    1228:	8fb10024 	lw	s1,36(sp)
    122c:	8fb20028 	lw	s2,40(sp)
    1230:	8fb3002c 	lw	s3,44(sp)
    1234:	8fb40030 	lw	s4,48(sp)
    1238:	8fb50034 	lw	s5,52(sp)
    123c:	8fb60038 	lw	s6,56(sp)
    1240:	8fb7003c 	lw	s7,60(sp)
    1244:	8fbe0040 	lw	s8,64(sp)
    1248:	03e00008 	jr	ra
    124c:	27bd0078 	addiu	sp,sp,120

00001250 <func_809B75A0>:
    1250:	27bdff78 	addiu	sp,sp,-136
    1254:	3c0e0000 	lui	t6,0x0
    1258:	afbf0054 	sw	ra,84(sp)
    125c:	afbe0050 	sw	s8,80(sp)
    1260:	afb7004c 	sw	s7,76(sp)
    1264:	afb60048 	sw	s6,72(sp)
    1268:	afb50044 	sw	s5,68(sp)
    126c:	afb40040 	sw	s4,64(sp)
    1270:	afb3003c 	sw	s3,60(sp)
    1274:	afb20038 	sw	s2,56(sp)
    1278:	afb10034 	sw	s1,52(sp)
    127c:	afb00030 	sw	s0,48(sp)
    1280:	25ce0000 	addiu	t6,t6,0
    1284:	8dd80000 	lw	t8,0(t6)
    1288:	27be0074 	addiu	s8,sp,116
    128c:	241909c4 	li	t9,2500
    1290:	afd80000 	sw	t8,0(s8)
    1294:	8dcf0004 	lw	t7,4(t6)
    1298:	00809825 	move	s3,a0
    129c:	00a09025 	move	s2,a1
    12a0:	afcf0004 	sw	t7,4(s8)
    12a4:	8dd80008 	lw	t8,8(t6)
    12a8:	24080001 	li	t0,1
    12ac:	24090028 	li	t1,40
    12b0:	afd80008 	sw	t8,8(s8)
    12b4:	a499031c 	sh	t9,796(a0)
    12b8:	00a02025 	move	a0,a1
    12bc:	266500e4 	addiu	a1,s3,228
    12c0:	afa90014 	sw	t1,20(sp)
    12c4:	afa80010 	sw	t0,16(sp)
    12c8:	2406395b 	li	a2,14683
    12cc:	0c000000 	jal	0 <func_809B6350>
    12d0:	24070001 	li	a3,1
    12d4:	ae60014c 	sw	zero,332(s3)
    12d8:	24110054 	li	s1,84
    12dc:	26700054 	addiu	s0,s3,84
    12e0:	26541c24 	addiu	s4,s2,7204
    12e4:	c604015c 	lwc1	$f4,348(s0)
    12e8:	8e070158 	lw	a3,344(s0)
    12ec:	240a0003 	li	t2,3
    12f0:	e7a40010 	swc1	$f4,16(sp)
    12f4:	c6060160 	lwc1	$f6,352(s0)
    12f8:	afaa0024 	sw	t2,36(sp)
    12fc:	afa00020 	sw	zero,32(sp)
    1300:	afa0001c 	sw	zero,28(sp)
    1304:	afa00018 	sw	zero,24(sp)
    1308:	02802025 	move	a0,s4
    130c:	02402825 	move	a1,s2
    1310:	240600de 	li	a2,222
    1314:	0c000000 	jal	0 <func_809B6350>
    1318:	e7a60014 	swc1	$f6,20(sp)
    131c:	2631000c 	addiu	s1,s1,12
    1320:	2a2100a8 	slti	at,s1,168
    1324:	1420ffef 	bnez	at,12e4 <func_809B75A0+0x94>
    1328:	2610000c 	addiu	s0,s0,12
    132c:	26700158 	addiu	s0,s3,344
    1330:	02002825 	move	a1,s0
    1334:	0c000000 	jal	0 <func_809B6350>
    1338:	26640024 	addiu	a0,s3,36
    133c:	34018000 	li	at,0x8000
    1340:	00418821 	addu	s1,v0,at
    1344:	00118c00 	sll	s1,s1,0x10
    1348:	8665008a 	lh	a1,138(s3)
    134c:	8667031c 	lh	a3,796(s3)
    1350:	00118c03 	sra	s1,s1,0x10
    1354:	afa00010 	sw	zero,16(sp)
    1358:	266400b6 	addiu	a0,s3,182
    135c:	0c000000 	jal	0 <func_809B6350>
    1360:	24060001 	li	a2,1
    1364:	00112c00 	sll	a1,s1,0x10
    1368:	8667031c 	lh	a3,796(s3)
    136c:	afa00010 	sw	zero,16(sp)
    1370:	00052c03 	sra	a1,a1,0x10
    1374:	266400b4 	addiu	a0,s3,180
    1378:	0c000000 	jal	0 <func_809B6350>
    137c:	24060001 	li	a2,1
    1380:	c66c0024 	lwc1	$f12,36(s3)
    1384:	c66e0028 	lwc1	$f14,40(s3)
    1388:	8e66002c 	lw	a2,44(s3)
    138c:	0c000000 	jal	0 <func_809B6350>
    1390:	00003825 	move	a3,zero
    1394:	866400b4 	lh	a0,180(s3)
    1398:	24018000 	li	at,-32768
    139c:	866500b6 	lh	a1,182(s3)
    13a0:	00812021 	addu	a0,a0,at
    13a4:	00042400 	sll	a0,a0,0x10
    13a8:	00042403 	sra	a0,a0,0x10
    13ac:	00003025 	move	a2,zero
    13b0:	0c000000 	jal	0 <func_809B6350>
    13b4:	24070001 	li	a3,1
    13b8:	3c040000 	lui	a0,0x0
    13bc:	24840000 	addiu	a0,a0,0
    13c0:	0c000000 	jal	0 <func_809B6350>
    13c4:	02002825 	move	a1,s0
    13c8:	8e6b0004 	lw	t3,4(s3)
    13cc:	2401fffe 	li	at,-2
    13d0:	2671001e 	addiu	s1,s3,30
    13d4:	2670003c 	addiu	s0,s3,60
    13d8:	01616024 	and	t4,t3,at
    13dc:	ae6c0004 	sw	t4,4(s3)
    13e0:	26160164 	addiu	s6,s0,356
    13e4:	263402a8 	addiu	s4,s1,680
    13e8:	263502aa 	addiu	s5,s1,682
    13ec:	2412001e 	li	s2,30
    13f0:	2417004e 	li	s7,78
    13f4:	866502c6 	lh	a1,710(s3)
    13f8:	8667031c 	lh	a3,796(s3)
    13fc:	afa00010 	sw	zero,16(sp)
    1400:	02802025 	move	a0,s4
    1404:	0c000000 	jal	0 <func_809B6350>
    1408:	24060001 	li	a2,1
    140c:	866502c8 	lh	a1,712(s3)
    1410:	8667031c 	lh	a3,796(s3)
    1414:	afa00010 	sw	zero,16(sp)
    1418:	02a02025 	move	a0,s5
    141c:	0c000000 	jal	0 <func_809B6350>
    1420:	24060001 	li	a2,1
    1424:	c60c0158 	lwc1	$f12,344(s0)
    1428:	c60e015c 	lwc1	$f14,348(s0)
    142c:	8e060160 	lw	a2,352(s0)
    1430:	0c000000 	jal	0 <func_809B6350>
    1434:	00003825 	move	a3,zero
    1438:	862402a8 	lh	a0,680(s1)
    143c:	24018000 	li	at,-32768
    1440:	862502aa 	lh	a1,682(s1)
    1444:	00812021 	addu	a0,a0,at
    1448:	00042400 	sll	a0,a0,0x10
    144c:	00042403 	sra	a0,a0,0x10
    1450:	00003025 	move	a2,zero
    1454:	0c000000 	jal	0 <func_809B6350>
    1458:	24070001 	li	a3,1
    145c:	03c02025 	move	a0,s8
    1460:	0c000000 	jal	0 <func_809B6350>
    1464:	02c02825 	move	a1,s6
    1468:	26520006 	addiu	s2,s2,6
    146c:	2610000c 	addiu	s0,s0,12
    1470:	26310006 	addiu	s1,s1,6
    1474:	26940006 	addiu	s4,s4,6
    1478:	26b50006 	addiu	s5,s5,6
    147c:	1657ffdd 	bne	s2,s7,13f4 <func_809B75A0+0x1a4>
    1480:	26d6000c 	addiu	s6,s6,12
    1484:	240d000f 	li	t5,15
    1488:	3c050000 	lui	a1,0x0
    148c:	a66d031a 	sh	t5,794(s3)
    1490:	24a50000 	addiu	a1,a1,0
    1494:	0c000000 	jal	0 <func_809B6350>
    1498:	02602025 	move	a0,s3
    149c:	8fbf0054 	lw	ra,84(sp)
    14a0:	8fb00030 	lw	s0,48(sp)
    14a4:	8fb10034 	lw	s1,52(sp)
    14a8:	8fb20038 	lw	s2,56(sp)
    14ac:	8fb3003c 	lw	s3,60(sp)
    14b0:	8fb40040 	lw	s4,64(sp)
    14b4:	8fb50044 	lw	s5,68(sp)
    14b8:	8fb60048 	lw	s6,72(sp)
    14bc:	8fb7004c 	lw	s7,76(sp)
    14c0:	8fbe0050 	lw	s8,80(sp)
    14c4:	03e00008 	jr	ra
    14c8:	27bd0088 	addiu	sp,sp,136

000014cc <func_809B781C>:
    14cc:	27bdff88 	addiu	sp,sp,-120
    14d0:	3c0f0000 	lui	t7,0x0
    14d4:	afbf0044 	sw	ra,68(sp)
    14d8:	afbe0040 	sw	s8,64(sp)
    14dc:	afb7003c 	sw	s7,60(sp)
    14e0:	afb60038 	sw	s6,56(sp)
    14e4:	afb50034 	sw	s5,52(sp)
    14e8:	afb40030 	sw	s4,48(sp)
    14ec:	afb3002c 	sw	s3,44(sp)
    14f0:	afb20028 	sw	s2,40(sp)
    14f4:	afb10024 	sw	s1,36(sp)
    14f8:	afb00020 	sw	s0,32(sp)
    14fc:	25ef0000 	addiu	t7,t7,0
    1500:	8df90000 	lw	t9,0(t7)
    1504:	27ae006c 	addiu	t6,sp,108
    1508:	8df80004 	lw	t8,4(t7)
    150c:	add90000 	sw	t9,0(t6)
    1510:	8df90008 	lw	t9,8(t7)
    1514:	add80004 	sw	t8,4(t6)
    1518:	00809025 	move	s2,a0
    151c:	add90008 	sw	t9,8(t6)
    1520:	8488031a 	lh	t0,794(a0)
    1524:	00a03025 	move	a2,a1
    1528:	3c0141f0 	lui	at,0x41f0
    152c:	110000a2 	beqz	t0,17b8 <func_809B781C+0x2ec>
    1530:	24091f40 	li	t1,8000
    1534:	44812000 	mtc1	at,$f4
    1538:	3c014100 	lui	at,0x4100
    153c:	44814000 	mtc1	at,$f8
    1540:	c4860028 	lwc1	$f6,40(a0)
    1544:	26500158 	addiu	s0,s2,344
    1548:	a489031c 	sh	t1,796(a0)
    154c:	46083280 	add.s	$f10,$f6,$f8
    1550:	02002825 	move	a1,s0
    1554:	24840024 	addiu	a0,a0,36
    1558:	e4840044 	swc1	$f4,68(a0)
    155c:	0c000000 	jal	0 <func_809B6350>
    1560:	e48a0004 	swc1	$f10,4(a0)
    1564:	34018000 	li	at,0x8000
    1568:	00418821 	addu	s1,v0,at
    156c:	00118c00 	sll	s1,s1,0x10
    1570:	8645008a 	lh	a1,138(s2)
    1574:	8647031c 	lh	a3,796(s2)
    1578:	00118c03 	sra	s1,s1,0x10
    157c:	afa00010 	sw	zero,16(sp)
    1580:	264400b6 	addiu	a0,s2,182
    1584:	0c000000 	jal	0 <func_809B6350>
    1588:	24060001 	li	a2,1
    158c:	00112c00 	sll	a1,s1,0x10
    1590:	8647031c 	lh	a3,796(s2)
    1594:	afa00010 	sw	zero,16(sp)
    1598:	00052c03 	sra	a1,a1,0x10
    159c:	264400b4 	addiu	a0,s2,180
    15a0:	0c000000 	jal	0 <func_809B6350>
    15a4:	24060001 	li	a2,1
    15a8:	c64c0024 	lwc1	$f12,36(s2)
    15ac:	c64e0028 	lwc1	$f14,40(s2)
    15b0:	8e46002c 	lw	a2,44(s2)
    15b4:	0c000000 	jal	0 <func_809B6350>
    15b8:	00003825 	move	a3,zero
    15bc:	864400b4 	lh	a0,180(s2)
    15c0:	24018000 	li	at,-32768
    15c4:	864500b6 	lh	a1,182(s2)
    15c8:	00812021 	addu	a0,a0,at
    15cc:	00042400 	sll	a0,a0,0x10
    15d0:	00042403 	sra	a0,a0,0x10
    15d4:	00003025 	move	a2,zero
    15d8:	0c000000 	jal	0 <func_809B6350>
    15dc:	24070001 	li	a3,1
    15e0:	3c1e0000 	lui	s8,0x0
    15e4:	27de0000 	addiu	s8,s8,0
    15e8:	03c02025 	move	a0,s8
    15ec:	0c000000 	jal	0 <func_809B6350>
    15f0:	02002825 	move	a1,s0
    15f4:	0000b825 	move	s7,zero
    15f8:	02408825 	move	s1,s2
    15fc:	265302a8 	addiu	s3,s2,680
    1600:	265402aa 	addiu	s4,s2,682
    1604:	0000a825 	move	s5,zero
    1608:	02408025 	move	s0,s2
    160c:	26560164 	addiu	s6,s2,356
    1610:	8644031a 	lh	a0,794(s2)
    1614:	00800821 	move	at,a0
    1618:	00042100 	sll	a0,a0,0x4
    161c:	00812021 	addu	a0,a0,at
    1620:	00042100 	sll	a0,a0,0x4
    1624:	00812021 	addu	a0,a0,at
    1628:	00042080 	sll	a0,a0,0x2
    162c:	00042400 	sll	a0,a0,0x10
    1630:	0c000000 	jal	0 <func_809B6350>
    1634:	00042403 	sra	a0,a0,0x10
    1638:	44979000 	mtc1	s7,$f18
    163c:	46000407 	neg.s	$f16,$f0
    1640:	8647031c 	lh	a3,796(s2)
    1644:	46809120 	cvt.s.w	$f4,$f18
    1648:	afa00010 	sw	zero,16(sp)
    164c:	02602025 	move	a0,s3
    1650:	24060001 	li	a2,1
    1654:	46048182 	mul.s	$f6,$f16,$f4
    1658:	4600320d 	trunc.w.s	$f8,$f6
    165c:	44054000 	mfc1	a1,$f8
    1660:	00000000 	nop
    1664:	00052c00 	sll	a1,a1,0x10
    1668:	00052c03 	sra	a1,a1,0x10
    166c:	24a5c000 	addiu	a1,a1,-16384
    1670:	00052c00 	sll	a1,a1,0x10
    1674:	0c000000 	jal	0 <func_809B6350>
    1678:	00052c03 	sra	a1,a1,0x10
    167c:	8645008a 	lh	a1,138(s2)
    1680:	8647031c 	lh	a3,796(s2)
    1684:	afa00010 	sw	zero,16(sp)
    1688:	02802025 	move	a0,s4
    168c:	0c000000 	jal	0 <func_809B6350>
    1690:	24060001 	li	a2,1
    1694:	c60c0158 	lwc1	$f12,344(s0)
    1698:	c60e015c 	lwc1	$f14,348(s0)
    169c:	8e060160 	lw	a2,352(s0)
    16a0:	0c000000 	jal	0 <func_809B6350>
    16a4:	00003825 	move	a3,zero
    16a8:	862402a8 	lh	a0,680(s1)
    16ac:	24018000 	li	at,-32768
    16b0:	862502aa 	lh	a1,682(s1)
    16b4:	00812021 	addu	a0,a0,at
    16b8:	00042400 	sll	a0,a0,0x10
    16bc:	00042403 	sra	a0,a0,0x10
    16c0:	00003025 	move	a2,zero
    16c4:	0c000000 	jal	0 <func_809B6350>
    16c8:	24070001 	li	a3,1
    16cc:	03c02025 	move	a0,s8
    16d0:	0c000000 	jal	0 <func_809B6350>
    16d4:	02c02825 	move	a1,s6
    16d8:	26b5000c 	addiu	s5,s5,12
    16dc:	2aa1003c 	slti	at,s5,60
    16e0:	26f70190 	addiu	s7,s7,400
    16e4:	26310006 	addiu	s1,s1,6
    16e8:	26730006 	addiu	s3,s3,6
    16ec:	26940006 	addiu	s4,s4,6
    16f0:	2610000c 	addiu	s0,s0,12
    16f4:	1420ffc6 	bnez	at,1610 <func_809B781C+0x144>
    16f8:	26d6000c 	addiu	s6,s6,12
    16fc:	2651001e 	addiu	s1,s2,30
    1700:	2650003c 	addiu	s0,s2,60
    1704:	26160164 	addiu	s6,s0,356
    1708:	263302a8 	addiu	s3,s1,680
    170c:	263402aa 	addiu	s4,s1,682
    1710:	2415003c 	li	s5,60
    1714:	2417009c 	li	s7,156
    1718:	864502c6 	lh	a1,710(s2)
    171c:	8647031c 	lh	a3,796(s2)
    1720:	afa00010 	sw	zero,16(sp)
    1724:	02602025 	move	a0,s3
    1728:	0c000000 	jal	0 <func_809B6350>
    172c:	24060001 	li	a2,1
    1730:	864502c8 	lh	a1,712(s2)
    1734:	8647031c 	lh	a3,796(s2)
    1738:	afa00010 	sw	zero,16(sp)
    173c:	02802025 	move	a0,s4
    1740:	0c000000 	jal	0 <func_809B6350>
    1744:	24060001 	li	a2,1
    1748:	c60c0158 	lwc1	$f12,344(s0)
    174c:	c60e015c 	lwc1	$f14,348(s0)
    1750:	8e060160 	lw	a2,352(s0)
    1754:	0c000000 	jal	0 <func_809B6350>
    1758:	00003825 	move	a3,zero
    175c:	862402a8 	lh	a0,680(s1)
    1760:	24018000 	li	at,-32768
    1764:	862502aa 	lh	a1,682(s1)
    1768:	00812021 	addu	a0,a0,at
    176c:	00042400 	sll	a0,a0,0x10
    1770:	00042403 	sra	a0,a0,0x10
    1774:	00003025 	move	a2,zero
    1778:	0c000000 	jal	0 <func_809B6350>
    177c:	24070001 	li	a3,1
    1780:	27a4006c 	addiu	a0,sp,108
    1784:	0c000000 	jal	0 <func_809B6350>
    1788:	02c02825 	move	a1,s6
    178c:	26b5000c 	addiu	s5,s5,12
    1790:	26310006 	addiu	s1,s1,6
    1794:	26730006 	addiu	s3,s3,6
    1798:	26940006 	addiu	s4,s4,6
    179c:	2610000c 	addiu	s0,s0,12
    17a0:	16b7ffdd 	bne	s5,s7,1718 <func_809B781C+0x24c>
    17a4:	26d6000c 	addiu	s6,s6,12
    17a8:	864b031a 	lh	t3,794(s2)
    17ac:	256cffff 	addiu	t4,t3,-1
    17b0:	10000006 	b	17cc <func_809B781C+0x300>
    17b4:	a64c031a 	sh	t4,794(s2)
    17b8:	00c02025 	move	a0,a2
    17bc:	0c000000 	jal	0 <func_809B6350>
    17c0:	86450154 	lh	a1,340(s2)
    17c4:	0c000000 	jal	0 <func_809B6350>
    17c8:	02402025 	move	a0,s2
    17cc:	8fbf0044 	lw	ra,68(sp)
    17d0:	8fb00020 	lw	s0,32(sp)
    17d4:	8fb10024 	lw	s1,36(sp)
    17d8:	8fb20028 	lw	s2,40(sp)
    17dc:	8fb3002c 	lw	s3,44(sp)
    17e0:	8fb40030 	lw	s4,48(sp)
    17e4:	8fb50034 	lw	s5,52(sp)
    17e8:	8fb60038 	lw	s6,56(sp)
    17ec:	8fb7003c 	lw	s7,60(sp)
    17f0:	8fbe0040 	lw	s8,64(sp)
    17f4:	03e00008 	jr	ra
    17f8:	27bd0078 	addiu	sp,sp,120

000017fc <EnBa_Update>:
    17fc:	27bdffe0 	addiu	sp,sp,-32
    1800:	afbf001c 	sw	ra,28(sp)
    1804:	afb00018 	sw	s0,24(sp)
    1808:	afa50024 	sw	a1,36(sp)
    180c:	848e001c 	lh	t6,28(a0)
    1810:	00808025 	move	s0,a0
    1814:	29c10003 	slti	at,t6,3
    1818:	50200013 	beqzl	at,1868 <EnBa_Update+0x6c>
    181c:	8e190150 	lw	t9,336(s0)
    1820:	90820331 	lbu	v0,817(a0)
    1824:	304f0002 	andi	t7,v0,0x2
    1828:	51e0000f 	beqzl	t7,1868 <EnBa_Update+0x6c>
    182c:	8e190150 	lw	t9,336(s0)
    1830:	909900af 	lbu	t9,175(a0)
    1834:	3058fffd 	andi	t8,v0,0xfffd
    1838:	a0980331 	sb	t8,817(a0)
    183c:	2728ffff 	addiu	t0,t9,-1
    1840:	310900ff 	andi	t1,t0,0xff
    1844:	15200005 	bnez	t1,185c <EnBa_Update+0x60>
    1848:	a08800af 	sb	t0,175(a0)
    184c:	0c000000 	jal	0 <func_809B6350>
    1850:	8fa50024 	lw	a1,36(sp)
    1854:	10000004 	b	1868 <EnBa_Update+0x6c>
    1858:	8e190150 	lw	t9,336(s0)
    185c:	0c000000 	jal	0 <func_809B6350>
    1860:	02002025 	move	a0,s0
    1864:	8e190150 	lw	t9,336(s0)
    1868:	02002025 	move	a0,s0
    186c:	8fa50024 	lw	a1,36(sp)
    1870:	0320f809 	jalr	t9
    1874:	00000000 	nop
    1878:	860a001c 	lh	t2,28(s0)
    187c:	26060320 	addiu	a2,s0,800
    1880:	29410003 	slti	at,t2,3
    1884:	50200008 	beqzl	at,18a8 <EnBa_Update+0xac>
    1888:	8e0d014c 	lw	t5,332(s0)
    188c:	8e0c01a0 	lw	t4,416(s0)
    1890:	8e0b01a4 	lw	t3,420(s0)
    1894:	ae0c0038 	sw	t4,56(s0)
    1898:	8e0c01a8 	lw	t4,424(s0)
    189c:	ae0b003c 	sw	t3,60(s0)
    18a0:	ae0c0040 	sw	t4,64(s0)
    18a4:	8e0d014c 	lw	t5,332(s0)
    18a8:	8fa40024 	lw	a0,36(sp)
    18ac:	29a10002 	slti	at,t5,2
    18b0:	14200004 	bnez	at,18c4 <EnBa_Update+0xc8>
    18b4:	3c010001 	lui	at,0x1
    18b8:	34211e60 	ori	at,at,0x1e60
    18bc:	0c000000 	jal	0 <func_809B6350>
    18c0:	00812821 	addu	a1,a0,at
    18c4:	8fbf001c 	lw	ra,28(sp)
    18c8:	8fb00018 	lw	s0,24(sp)
    18cc:	27bd0020 	addiu	sp,sp,32
    18d0:	03e00008 	jr	ra
    18d4:	00000000 	nop

000018d8 <EnBa_Draw>:
    18d8:	27bdff40 	addiu	sp,sp,-192
    18dc:	afb20048 	sw	s2,72(sp)
    18e0:	00809025 	move	s2,a0
    18e4:	afbf005c 	sw	ra,92(sp)
    18e8:	afb60058 	sw	s6,88(sp)
    18ec:	afb50054 	sw	s5,84(sp)
    18f0:	afb40050 	sw	s4,80(sp)
    18f4:	afb3004c 	sw	s3,76(sp)
    18f8:	afb10044 	sw	s1,68(sp)
    18fc:	afb00040 	sw	s0,64(sp)
    1900:	f7b40038 	sdc1	$f20,56(sp)
    1904:	afa500c4 	sw	a1,196(sp)
    1908:	8ca40000 	lw	a0,0(a1)
    190c:	0c000000 	jal	0 <func_809B6350>
    1910:	24050380 	li	a1,896
    1914:	3c180000 	lui	t8,0x0
    1918:	27180000 	addiu	t8,t8,0
    191c:	8f090000 	lw	t1,0(t8)
    1920:	27af00a4 	addiu	t7,sp,164
    1924:	8f190004 	lw	t9,4(t8)
    1928:	ade90000 	sw	t1,0(t7)
    192c:	8f090008 	lw	t1,8(t8)
    1930:	adf90004 	sw	t9,4(t7)
    1934:	3c060000 	lui	a2,0x0
    1938:	ade90008 	sw	t1,8(t7)
    193c:	8faa00c4 	lw	t2,196(sp)
    1940:	00409825 	move	s3,v0
    1944:	24c60000 	addiu	a2,a2,0
    1948:	8d450000 	lw	a1,0(t2)
    194c:	27a40090 	addiu	a0,sp,144
    1950:	240703a5 	li	a3,933
    1954:	0c000000 	jal	0 <func_809B6350>
    1958:	00a0b025 	move	s6,a1
    195c:	8fab00c4 	lw	t3,196(sp)
    1960:	0c000000 	jal	0 <func_809B6350>
    1964:	8d640000 	lw	a0,0(t3)
    1968:	864c001c 	lh	t4,28(s2)
    196c:	3c09db06 	lui	t1,0xdb06
    1970:	35290020 	ori	t1,t1,0x20
    1974:	29810003 	slti	at,t4,3
    1978:	10200096 	beqz	at,1bd4 <EnBa_Draw+0x2fc>
    197c:	00002825 	move	a1,zero
    1980:	0c000000 	jal	0 <func_809B6350>
    1984:	00000000 	nop
    1988:	8ec202c0 	lw	v0,704(s6)
    198c:	3c0edb06 	lui	t6,0xdb06
    1990:	35ce0030 	ori	t6,t6,0x30
    1994:	244d0008 	addiu	t5,v0,8
    1998:	aecd02c0 	sw	t5,704(s6)
    199c:	ac4e0000 	sw	t6,0(v0)
    19a0:	ac530004 	sw	s3,4(v0)
    19a4:	8ec202c0 	lw	v0,704(s6)
    19a8:	3c18db06 	lui	t8,0xdb06
    19ac:	37180020 	ori	t8,t8,0x20
    19b0:	244f0008 	addiu	t7,v0,8
    19b4:	aecf02c0 	sw	t7,704(s6)
    19b8:	ac580000 	sw	t8,0(v0)
    19bc:	8659001c 	lh	t9,28(s2)
    19c0:	3c040000 	lui	a0,0x0
    19c4:	3c0e0000 	lui	t6,0x0
    19c8:	00194880 	sll	t1,t9,0x2
    19cc:	00892021 	addu	a0,a0,t1
    19d0:	8c840000 	lw	a0,0(a0)
    19d4:	3c0100ff 	lui	at,0xff
    19d8:	3421ffff 	ori	at,at,0xffff
    19dc:	00045900 	sll	t3,a0,0x4
    19e0:	000b6702 	srl	t4,t3,0x1c
    19e4:	000c6880 	sll	t5,t4,0x2
    19e8:	01cd7021 	addu	t6,t6,t5
    19ec:	8dce0000 	lw	t6,0(t6)
    19f0:	00815024 	and	t2,a0,at
    19f4:	3c018000 	lui	at,0x8000
    19f8:	014e7821 	addu	t7,t2,t6
    19fc:	01e1c021 	addu	t8,t7,at
    1a00:	ac580004 	sw	t8,4(v0)
    1a04:	8ec202c0 	lw	v0,704(s6)
    1a08:	8fa300c4 	lw	v1,196(sp)
    1a0c:	3c09db06 	lui	t1,0xdb06
    1a10:	24590008 	addiu	t9,v0,8
    1a14:	aed902c0 	sw	t9,704(s6)
    1a18:	35290024 	ori	t1,t1,0x24
    1a1c:	ac490000 	sw	t1,0(v0)
    1a20:	8c640000 	lw	a0,0(v1)
    1a24:	3c0a0001 	lui	t2,0x1
    1a28:	240d0001 	li	t5,1
    1a2c:	240c0010 	li	t4,16
    1a30:	240b0010 	li	t3,16
    1a34:	afab0010 	sw	t3,16(sp)
    1a38:	afac0014 	sw	t4,20(sp)
    1a3c:	afad0018 	sw	t5,24(sp)
    1a40:	afa0001c 	sw	zero,28(sp)
    1a44:	01435021 	addu	t2,t2,v1
    1a48:	8d4a1de4 	lw	t2,7652(t2)
    1a4c:	24190020 	li	t9,32
    1a50:	24180020 	li	t8,32
    1a54:	000a0823 	negu	at,t2
    1a58:	00017080 	sll	t6,at,0x2
    1a5c:	01c17021 	addu	t6,t6,at
    1a60:	000e7040 	sll	t6,t6,0x1
    1a64:	31cf007f 	andi	t7,t6,0x7f
    1a68:	afaf0020 	sw	t7,32(sp)
    1a6c:	afb80024 	sw	t8,36(sp)
    1a70:	afb90028 	sw	t9,40(sp)
    1a74:	00002825 	move	a1,zero
    1a78:	00003025 	move	a2,zero
    1a7c:	00003825 	move	a3,zero
    1a80:	0c000000 	jal	0 <func_809B6350>
    1a84:	00408025 	move	s0,v0
    1a88:	3c013f00 	lui	at,0x3f00
    1a8c:	4481a000 	mtc1	at,$f20
    1a90:	ae020004 	sw	v0,4(s0)
    1a94:	00008825 	move	s1,zero
    1a98:	2415000d 	li	s5,13
    1a9c:	24140006 	li	s4,6
    1aa0:	00114880 	sll	t1,s1,0x2
    1aa4:	01314823 	subu	t1,t1,s1
    1aa8:	00094880 	sll	t1,t1,0x2
    1aac:	02498021 	addu	s0,s2,t1
    1ab0:	c60c0158 	lwc1	$f12,344(s0)
    1ab4:	c60e015c 	lwc1	$f14,348(s0)
    1ab8:	8e060160 	lw	a2,352(s0)
    1abc:	0c000000 	jal	0 <func_809B6350>
    1ac0:	00003825 	move	a3,zero
    1ac4:	02340019 	multu	s1,s4
    1ac8:	24070001 	li	a3,1
    1acc:	00005812 	mflo	t3
    1ad0:	024b1021 	addu	v0,s2,t3
    1ad4:	844402a8 	lh	a0,680(v0)
    1ad8:	844502aa 	lh	a1,682(v0)
    1adc:	0c000000 	jal	0 <func_809B6350>
    1ae0:	844602ac 	lh	a2,684(v0)
    1ae4:	c60c0200 	lwc1	$f12,512(s0)
    1ae8:	c60e0204 	lwc1	$f14,516(s0)
    1aec:	8e060208 	lw	a2,520(s0)
    1af0:	0c000000 	jal	0 <func_809B6350>
    1af4:	24070001 	li	a3,1
    1af8:	12340003 	beq	s1,s4,1b08 <EnBa_Draw+0x230>
    1afc:	00000000 	nop
    1b00:	16350010 	bne	s1,s5,1b44 <EnBa_Draw+0x26c>
    1b04:	00000000 	nop
    1b08:	16350006 	bne	s1,s5,1b24 <EnBa_Draw+0x24c>
    1b0c:	26500320 	addiu	s0,s2,800
    1b10:	02202025 	move	a0,s1
    1b14:	0c000000 	jal	0 <func_809B6350>
    1b18:	02002825 	move	a1,s0
    1b1c:	10000009 	b	1b44 <EnBa_Draw+0x26c>
    1b20:	00000000 	nop
    1b24:	4600a306 	mov.s	$f12,$f20
    1b28:	4600a386 	mov.s	$f14,$f20
    1b2c:	3c063f80 	lui	a2,0x3f80
    1b30:	0c000000 	jal	0 <func_809B6350>
    1b34:	24070001 	li	a3,1
    1b38:	24040008 	li	a0,8
    1b3c:	0c000000 	jal	0 <func_809B6350>
    1b40:	02002825 	move	a1,s0
    1b44:	3c050000 	lui	a1,0x0
    1b48:	24a50000 	addiu	a1,a1,0
    1b4c:	02602025 	move	a0,s3
    1b50:	0c000000 	jal	0 <func_809B6350>
    1b54:	240603ca 	li	a2,970
    1b58:	26310001 	addiu	s1,s1,1
    1b5c:	00118c00 	sll	s1,s1,0x10
    1b60:	00118c03 	sra	s1,s1,0x10
    1b64:	2a21000e 	slti	at,s1,14
    1b68:	1420ffcd 	bnez	at,1aa0 <EnBa_Draw+0x1c8>
    1b6c:	26730040 	addiu	s3,s3,64
    1b70:	0c000000 	jal	0 <func_809B6350>
    1b74:	00000000 	nop
    1b78:	8ec202c0 	lw	v0,704(s6)
    1b7c:	3c0dda38 	lui	t5,0xda38
    1b80:	35ad0003 	ori	t5,t5,0x3
    1b84:	244c0008 	addiu	t4,v0,8
    1b88:	aecc02c0 	sw	t4,704(s6)
    1b8c:	ac4d0000 	sw	t5,0(v0)
    1b90:	8faa00c4 	lw	t2,196(sp)
    1b94:	3c050000 	lui	a1,0x0
    1b98:	24a50000 	addiu	a1,a1,0
    1b9c:	240603cd 	li	a2,973
    1ba0:	00408025 	move	s0,v0
    1ba4:	0c000000 	jal	0 <func_809B6350>
    1ba8:	8d440000 	lw	a0,0(t2)
    1bac:	ae020004 	sw	v0,4(s0)
    1bb0:	8ec202c0 	lw	v0,704(s6)
    1bb4:	3c180600 	lui	t8,0x600
    1bb8:	27180890 	addiu	t8,t8,2192
    1bbc:	244e0008 	addiu	t6,v0,8
    1bc0:	aece02c0 	sw	t6,704(s6)
    1bc4:	3c0fde00 	lui	t7,0xde00
    1bc8:	ac4f0000 	sw	t7,0(v0)
    1bcc:	1000003e 	b	1cc8 <EnBa_Draw+0x3f0>
    1bd0:	ac580004 	sw	t8,4(v0)
    1bd4:	8ec202c0 	lw	v0,704(s6)
    1bd8:	3c030001 	lui	v1,0x1
    1bdc:	240c0020 	li	t4,32
    1be0:	24590008 	addiu	t9,v0,8
    1be4:	aed902c0 	sw	t9,704(s6)
    1be8:	ac490000 	sw	t1,0(v0)
    1bec:	8fab00c4 	lw	t3,196(sp)
    1bf0:	240d0020 	li	t5,32
    1bf4:	240a0001 	li	t2,1
    1bf8:	006b1821 	addu	v1,v1,t3
    1bfc:	8c631de4 	lw	v1,7652(v1)
    1c00:	8d640000 	lw	a0,0(t3)
    1c04:	240e0020 	li	t6,32
    1c08:	00030823 	negu	at,v1
    1c0c:	00014080 	sll	t0,at,0x2
    1c10:	01014021 	addu	t0,t0,at
    1c14:	00033040 	sll	a2,v1,0x1
    1c18:	30c6007f 	andi	a2,a2,0x7f
    1c1c:	3108007f 	andi	t0,t0,0x7f
    1c20:	240f0020 	li	t7,32
    1c24:	afaf0028 	sw	t7,40(sp)
    1c28:	afa8001c 	sw	t0,28(sp)
    1c2c:	afa80020 	sw	t0,32(sp)
    1c30:	00c03825 	move	a3,a2
    1c34:	afae0024 	sw	t6,36(sp)
    1c38:	afaa0018 	sw	t2,24(sp)
    1c3c:	afad0014 	sw	t5,20(sp)
    1c40:	afac0010 	sw	t4,16(sp)
    1c44:	0c000000 	jal	0 <func_809B6350>
    1c48:	00408025 	move	s0,v0
    1c4c:	ae020004 	sw	v0,4(s0)
    1c50:	8ec202c0 	lw	v0,704(s6)
    1c54:	3c09ff7d 	lui	t1,0xff7d
    1c58:	352964ff 	ori	t1,t1,0x64ff
    1c5c:	24580008 	addiu	t8,v0,8
    1c60:	aed802c0 	sw	t8,704(s6)
    1c64:	3c19fa00 	lui	t9,0xfa00
    1c68:	ac590000 	sw	t9,0(v0)
    1c6c:	ac490004 	sw	t1,4(v0)
    1c70:	8ec202c0 	lw	v0,704(s6)
    1c74:	3c0cda38 	lui	t4,0xda38
    1c78:	358c0003 	ori	t4,t4,0x3
    1c7c:	244b0008 	addiu	t3,v0,8
    1c80:	aecb02c0 	sw	t3,704(s6)
    1c84:	ac4c0000 	sw	t4,0(v0)
    1c88:	8fad00c4 	lw	t5,196(sp)
    1c8c:	3c050000 	lui	a1,0x0
    1c90:	24a50000 	addiu	a1,a1,0
    1c94:	240603df 	li	a2,991
    1c98:	00408025 	move	s0,v0
    1c9c:	0c000000 	jal	0 <func_809B6350>
    1ca0:	8da40000 	lw	a0,0(t5)
    1ca4:	ae020004 	sw	v0,4(s0)
    1ca8:	8ec202c0 	lw	v0,704(s6)
    1cac:	3c0f0600 	lui	t7,0x600
    1cb0:	25ef1d80 	addiu	t7,t7,7552
    1cb4:	244a0008 	addiu	t2,v0,8
    1cb8:	aeca02c0 	sw	t2,704(s6)
    1cbc:	3c0ede00 	lui	t6,0xde00
    1cc0:	ac4e0000 	sw	t6,0(v0)
    1cc4:	ac4f0004 	sw	t7,4(v0)
    1cc8:	8fb800c4 	lw	t8,196(sp)
    1ccc:	3c060000 	lui	a2,0x0
    1cd0:	24c60000 	addiu	a2,a2,0
    1cd4:	27a40090 	addiu	a0,sp,144
    1cd8:	240703e3 	li	a3,995
    1cdc:	0c000000 	jal	0 <func_809B6350>
    1ce0:	8f050000 	lw	a1,0(t8)
    1ce4:	8fbf005c 	lw	ra,92(sp)
    1ce8:	d7b40038 	ldc1	$f20,56(sp)
    1cec:	8fb00040 	lw	s0,64(sp)
    1cf0:	8fb10044 	lw	s1,68(sp)
    1cf4:	8fb20048 	lw	s2,72(sp)
    1cf8:	8fb3004c 	lw	s3,76(sp)
    1cfc:	8fb40050 	lw	s4,80(sp)
    1d00:	8fb50054 	lw	s5,84(sp)
    1d04:	8fb60058 	lw	s6,88(sp)
    1d08:	03e00008 	jr	ra
    1d0c:	27bd00c0 	addiu	sp,sp,192
