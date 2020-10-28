
build/src/overlays/actors/ovl_En_St/z_en_st.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSt_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac850190 	sw	a1,400(a0)

00000008 <EnSt_SpawnDust>:
       8:	27bdff58 	addiu	sp,sp,-168
       c:	3c0e0000 	lui	t6,0x0
      10:	afbf006c 	sw	ra,108(sp)
      14:	afbe0068 	sw	s8,104(sp)
      18:	afb70064 	sw	s7,100(sp)
      1c:	afb60060 	sw	s6,96(sp)
      20:	afb5005c 	sw	s5,92(sp)
      24:	afb40058 	sw	s4,88(sp)
      28:	afb30054 	sw	s3,84(sp)
      2c:	afb20050 	sw	s2,80(sp)
      30:	afb1004c 	sw	s1,76(sp)
      34:	afb00048 	sw	s0,72(sp)
      38:	f7b80040 	sdc1	$f24,64(sp)
      3c:	f7b60038 	sdc1	$f22,56(sp)
      40:	f7b40030 	sdc1	$f20,48(sp)
      44:	25ce0208 	addiu	t6,t6,520
      48:	8dd80000 	lw	t8,0(t6)
      4c:	27b500a4 	addiu	s5,sp,164
      50:	3c190000 	lui	t9,0x0
      54:	2739020c 	addiu	t9,t9,524
      58:	aeb80000 	sw	t8,0(s5)
      5c:	8f290000 	lw	t1,0(t9)
      60:	27b600a0 	addiu	s6,sp,160
      64:	3c0a0000 	lui	t2,0x0
      68:	254a0210 	addiu	t2,t2,528
      6c:	aec90000 	sw	t1,0(s6)
      70:	8d4c0000 	lw	t4,0(t2)
      74:	27b70094 	addiu	s7,sp,148
      78:	3c0d0000 	lui	t5,0x0
      7c:	aeec0000 	sw	t4,0(s7)
      80:	8d4b0004 	lw	t3,4(t2)
      84:	25ad021c 	addiu	t5,t5,540
      88:	27be0088 	addiu	s8,sp,136
      8c:	aeeb0004 	sw	t3,4(s7)
      90:	8d4c0008 	lw	t4,8(t2)
      94:	00809025 	move	s2,a0
      98:	00a0a025 	move	s4,a1
      9c:	aeec0008 	sw	t4,8(s7)
      a0:	8daf0000 	lw	t7,0(t5)
      a4:	afcf0000 	sw	t7,0(s8)
      a8:	8dae0004 	lw	t6,4(t5)
      ac:	afce0004 	sw	t6,4(s8)
      b0:	8daf0008 	lw	t7,8(t5)
      b4:	afcf0008 	sw	t7,8(s8)
      b8:	0c000000 	jal	0 <EnSt_SetupAction>
      bc:	afa600b0 	sw	a2,176(sp)
      c0:	3c013f00 	lui	at,0x3f00
      c4:	4481a000 	mtc1	at,$f20
      c8:	3c014780 	lui	at,0x4780
      cc:	44813000 	mtc1	at,$f6
      d0:	46140101 	sub.s	$f4,$f0,$f20
      d4:	8fa600b0 	lw	a2,176(sp)
      d8:	c6500080 	lwc1	$f16,128(s2)
      dc:	3c190001 	lui	t9,0x1
      e0:	46062202 	mul.s	$f8,$f4,$f6
      e4:	00c08825 	move	s1,a2
      e8:	e7b00080 	swc1	$f16,128(sp)
      ec:	4600428d 	trunc.w.s	$f10,$f8
      f0:	44105000 	mfc1	s0,$f10
      f4:	00000000 	nop
      f8:	00108400 	sll	s0,s0,0x10
      fc:	04c0003b 	bltz	a2,1ec <EnSt_SpawnDust+0x1e4>
     100:	00108403 	sra	s0,s0,0x10
     104:	0326001a 	div	zero,t9,a2
     108:	14c00002 	bnez	a2,114 <EnSt_SpawnDust+0x10c>
     10c:	00000000 	nop
     110:	0007000d 	break	0x7
     114:	2401ffff 	li	at,-1
     118:	14c10004 	bne	a2,at,12c <EnSt_SpawnDust+0x124>
     11c:	3c018000 	lui	at,0x8000
     120:	17210002 	bne	t9,at,12c <EnSt_SpawnDust+0x124>
     124:	00000000 	nop
     128:	0006000d 	break	0x6
     12c:	3c0141b0 	lui	at,0x41b0
     130:	4481c000 	mtc1	at,$f24
     134:	3c014080 	lui	at,0x4080
     138:	00009812 	mflo	s3
     13c:	00139c00 	sll	s3,s3,0x10
     140:	4481b000 	mtc1	at,$f22
     144:	00139c03 	sra	s3,s3,0x10
     148:	0c000000 	jal	0 <EnSt_SetupAction>
     14c:	00000000 	nop
     150:	46140481 	sub.s	$f18,$f0,$f20
     154:	46169102 	mul.s	$f4,$f18,$f22
     158:	0c000000 	jal	0 <EnSt_SetupAction>
     15c:	e7a40088 	swc1	$f4,136(sp)
     160:	46140181 	sub.s	$f6,$f0,$f20
     164:	00102400 	sll	a0,s0,0x10
     168:	00042403 	sra	a0,a0,0x10
     16c:	46163202 	mul.s	$f8,$f6,$f22
     170:	0c000000 	jal	0 <EnSt_SetupAction>
     174:	e7a80090 	swc1	$f8,144(sp)
     178:	46180282 	mul.s	$f10,$f0,$f24
     17c:	c6500024 	lwc1	$f16,36(s2)
     180:	00102400 	sll	a0,s0,0x10
     184:	00042403 	sra	a0,a0,0x10
     188:	46105480 	add.s	$f18,$f10,$f16
     18c:	0c000000 	jal	0 <EnSt_SetupAction>
     190:	e7b2007c 	swc1	$f18,124(sp)
     194:	46180102 	mul.s	$f4,$f0,$f24
     198:	c646002c 	lwc1	$f6,44(s2)
     19c:	24080078 	li	t0,120
     1a0:	24090028 	li	t1,40
     1a4:	240a000a 	li	t2,10
     1a8:	afaa0020 	sw	t2,32(sp)
     1ac:	afa9001c 	sw	t1,28(sp)
     1b0:	46062200 	add.s	$f8,$f4,$f6
     1b4:	afa80018 	sw	t0,24(sp)
     1b8:	afb60014 	sw	s6,20(sp)
     1bc:	afb50010 	sw	s5,16(sp)
     1c0:	e7a80084 	swc1	$f8,132(sp)
     1c4:	02802025 	move	a0,s4
     1c8:	27a5007c 	addiu	a1,sp,124
     1cc:	02e03025 	move	a2,s7
     1d0:	0c000000 	jal	0 <EnSt_SetupAction>
     1d4:	03c03825 	move	a3,s8
     1d8:	02138021 	addu	s0,s0,s3
     1dc:	00108400 	sll	s0,s0,0x10
     1e0:	2631ffff 	addiu	s1,s1,-1
     1e4:	0621ffd8 	bgez	s1,148 <EnSt_SpawnDust+0x140>
     1e8:	00108403 	sra	s0,s0,0x10
     1ec:	8fbf006c 	lw	ra,108(sp)
     1f0:	d7b40030 	ldc1	$f20,48(sp)
     1f4:	d7b60038 	ldc1	$f22,56(sp)
     1f8:	d7b80040 	ldc1	$f24,64(sp)
     1fc:	8fb00048 	lw	s0,72(sp)
     200:	8fb1004c 	lw	s1,76(sp)
     204:	8fb20050 	lw	s2,80(sp)
     208:	8fb30054 	lw	s3,84(sp)
     20c:	8fb40058 	lw	s4,88(sp)
     210:	8fb5005c 	lw	s5,92(sp)
     214:	8fb60060 	lw	s6,96(sp)
     218:	8fb70064 	lw	s7,100(sp)
     21c:	8fbe0068 	lw	s8,104(sp)
     220:	03e00008 	jr	ra
     224:	27bd00a8 	addiu	sp,sp,168

00000228 <EnSt_SpawnBlastEffect>:
     228:	27bdffc0 	addiu	sp,sp,-64
     22c:	3c0e0000 	lui	t6,0x0
     230:	afbf0024 	sw	ra,36(sp)
     234:	afa40040 	sw	a0,64(sp)
     238:	afa50044 	sw	a1,68(sp)
     23c:	25ce0228 	addiu	t6,t6,552
     240:	8dd80000 	lw	t8,0(t6)
     244:	27a60034 	addiu	a2,sp,52
     248:	24080064 	li	t0,100
     24c:	acd80000 	sw	t8,0(a2)
     250:	8dcf0004 	lw	t7,4(t6)
     254:	240900dc 	li	t1,220
     258:	240a0008 	li	t2,8
     25c:	accf0004 	sw	t7,4(a2)
     260:	8dd80008 	lw	t8,8(t6)
     264:	00c03825 	move	a3,a2
     268:	27a50028 	addiu	a1,sp,40
     26c:	acd80008 	sw	t8,8(a2)
     270:	8fb90040 	lw	t9,64(sp)
     274:	8fa40044 	lw	a0,68(sp)
     278:	c7240024 	lwc1	$f4,36(t9)
     27c:	e7a40028 	swc1	$f4,40(sp)
     280:	c7260080 	lwc1	$f6,128(t9)
     284:	e7a6002c 	swc1	$f6,44(sp)
     288:	c728002c 	lwc1	$f8,44(t9)
     28c:	afaa0018 	sw	t2,24(sp)
     290:	afa90014 	sw	t1,20(sp)
     294:	afa80010 	sw	t0,16(sp)
     298:	0c000000 	jal	0 <EnSt_SetupAction>
     29c:	e7a80030 	swc1	$f8,48(sp)
     2a0:	8fbf0024 	lw	ra,36(sp)
     2a4:	27bd0040 	addiu	sp,sp,64
     2a8:	03e00008 	jr	ra
     2ac:	00000000 	nop

000002b0 <EnSt_SpawnDeadEffect>:
     2b0:	27bdffa0 	addiu	sp,sp,-96
     2b4:	3c0f0000 	lui	t7,0x0
     2b8:	afbf0044 	sw	ra,68(sp)
     2bc:	afa40060 	sw	a0,96(sp)
     2c0:	afa50064 	sw	a1,100(sp)
     2c4:	25ef0234 	addiu	t7,t7,564
     2c8:	8df90000 	lw	t9,0(t7)
     2cc:	27ae0054 	addiu	t6,sp,84
     2d0:	8df80004 	lw	t8,4(t7)
     2d4:	add90000 	sw	t9,0(t6)
     2d8:	8df90008 	lw	t9,8(t7)
     2dc:	add80004 	sw	t8,4(t6)
     2e0:	0c000000 	jal	0 <EnSt_SetupAction>
     2e4:	add90008 	sw	t9,8(t6)
     2e8:	3c013f00 	lui	at,0x3f00
     2ec:	44812000 	mtc1	at,$f4
     2f0:	3c014270 	lui	at,0x4270
     2f4:	44814000 	mtc1	at,$f8
     2f8:	46040181 	sub.s	$f6,$f0,$f4
     2fc:	8fa80060 	lw	t0,96(sp)
     300:	46083282 	mul.s	$f10,$f6,$f8
     304:	c5100024 	lwc1	$f16,36(t0)
     308:	46105480 	add.s	$f18,$f10,$f16
     30c:	0c000000 	jal	0 <EnSt_SetupAction>
     310:	e7b20048 	swc1	$f18,72(sp)
     314:	3c013f00 	lui	at,0x3f00
     318:	44812000 	mtc1	at,$f4
     31c:	3c014234 	lui	at,0x4234
     320:	44814000 	mtc1	at,$f8
     324:	46040181 	sub.s	$f6,$f0,$f4
     328:	8fa90060 	lw	t1,96(sp)
     32c:	3c014120 	lui	at,0x4120
     330:	44819000 	mtc1	at,$f18
     334:	46083282 	mul.s	$f10,$f6,$f8
     338:	c5300028 	lwc1	$f16,40(t1)
     33c:	46128100 	add.s	$f4,$f16,$f18
     340:	46045180 	add.s	$f6,$f10,$f4
     344:	0c000000 	jal	0 <EnSt_SetupAction>
     348:	e7a6004c 	swc1	$f6,76(sp)
     34c:	3c013f00 	lui	at,0x3f00
     350:	44814000 	mtc1	at,$f8
     354:	8faa0060 	lw	t2,96(sp)
     358:	3c014270 	lui	at,0x4270
     35c:	46080401 	sub.s	$f16,$f0,$f8
     360:	44819000 	mtc1	at,$f18
     364:	c544002c 	lwc1	$f4,44(t2)
     368:	27a60054 	addiu	a2,sp,84
     36c:	46128282 	mul.s	$f10,$f16,$f18
     370:	240b0064 	li	t3,100
     374:	240c00ff 	li	t4,255
     378:	240d00ff 	li	t5,255
     37c:	240e00ff 	li	t6,255
     380:	240f00ff 	li	t7,255
     384:	241800ff 	li	t8,255
     388:	46045180 	add.s	$f6,$f10,$f4
     38c:	24190001 	li	t9,1
     390:	24080009 	li	t0,9
     394:	24090001 	li	t1,1
     398:	e7a60050 	swc1	$f6,80(sp)
     39c:	afa9003c 	sw	t1,60(sp)
     3a0:	afa80038 	sw	t0,56(sp)
     3a4:	afb90034 	sw	t9,52(sp)
     3a8:	afb80028 	sw	t8,40(sp)
     3ac:	afaf0024 	sw	t7,36(sp)
     3b0:	afae0020 	sw	t6,32(sp)
     3b4:	afad001c 	sw	t5,28(sp)
     3b8:	afac0018 	sw	t4,24(sp)
     3bc:	afab0010 	sw	t3,16(sp)
     3c0:	00c03825 	move	a3,a2
     3c4:	afa00030 	sw	zero,48(sp)
     3c8:	afa0002c 	sw	zero,44(sp)
     3cc:	afa00014 	sw	zero,20(sp)
     3d0:	8fa40064 	lw	a0,100(sp)
     3d4:	0c000000 	jal	0 <EnSt_SetupAction>
     3d8:	27a50048 	addiu	a1,sp,72
     3dc:	8fbf0044 	lw	ra,68(sp)
     3e0:	27bd0060 	addiu	sp,sp,96
     3e4:	03e00008 	jr	ra
     3e8:	00000000 	nop

000003ec <EnSt_CreateBlureEffect>:
     3ec:	27bdfe28 	addiu	sp,sp,-472
     3f0:	3c0e0000 	lui	t6,0x0
     3f4:	8dce0240 	lw	t6,576(t6)
     3f8:	3c0f0000 	lui	t7,0x0
     3fc:	3c180000 	lui	t8,0x0
     400:	8def0244 	lw	t7,580(t7)
     404:	8f180248 	lw	t8,584(t8)
     408:	3c190000 	lui	t9,0x0
     40c:	8f39024c 	lw	t9,588(t9)
     410:	afae0034 	sw	t6,52(sp)
     414:	afaf0030 	sw	t7,48(sp)
     418:	afb8002c 	sw	t8,44(sp)
     41c:	afb90028 	sw	t9,40(sp)
     420:	93ad0031 	lbu	t5,49(sp)
     424:	93ac0035 	lbu	t4,53(sp)
     428:	93a80034 	lbu	t0,52(sp)
     42c:	93a90030 	lbu	t1,48(sp)
     430:	93aa002c 	lbu	t2,44(sp)
     434:	93ab0028 	lbu	t3,40(sp)
     438:	93af0029 	lbu	t7,41(sp)
     43c:	93ae002d 	lbu	t6,45(sp)
     440:	93b80036 	lbu	t8,54(sp)
     444:	a3ad01c1 	sb	t5,449(sp)
     448:	a3ac01bd 	sb	t4,445(sp)
     44c:	a3a801bc 	sb	t0,444(sp)
     450:	a3a901c0 	sb	t1,448(sp)
     454:	a3aa01c4 	sb	t2,452(sp)
     458:	a3ab01c8 	sb	t3,456(sp)
     45c:	93ab0033 	lbu	t3,51(sp)
     460:	93aa0037 	lbu	t2,55(sp)
     464:	93a9002a 	lbu	t1,42(sp)
     468:	93a8002e 	lbu	t0,46(sp)
     46c:	93ac002f 	lbu	t4,47(sp)
     470:	93ad002b 	lbu	t5,43(sp)
     474:	93b90032 	lbu	t9,50(sp)
     478:	a3af01c9 	sb	t7,457(sp)
     47c:	a3ae01c5 	sb	t6,453(sp)
     480:	a3b801be 	sb	t8,446(sp)
     484:	afbf001c 	sw	ra,28(sp)
     488:	240e0006 	li	t6,6
     48c:	240f0003 	li	t7,3
     490:	27b80038 	addiu	t8,sp,56
     494:	afae01cc 	sw	t6,460(sp)
     498:	afa001d0 	sw	zero,464(sp)
     49c:	afaf01d4 	sw	t7,468(sp)
     4a0:	afb80014 	sw	t8,20(sp)
     4a4:	27a50020 	addiu	a1,sp,32
     4a8:	afa00010 	sw	zero,16(sp)
     4ac:	24060001 	li	a2,1
     4b0:	00003825 	move	a3,zero
     4b4:	a3ab01c3 	sb	t3,451(sp)
     4b8:	a3aa01bf 	sb	t2,447(sp)
     4bc:	a3a901ca 	sb	t1,458(sp)
     4c0:	a3a801c6 	sb	t0,454(sp)
     4c4:	a3ac01c7 	sb	t4,455(sp)
     4c8:	a3ad01cb 	sb	t5,459(sp)
     4cc:	0c000000 	jal	0 <EnSt_SetupAction>
     4d0:	a3b901c2 	sb	t9,450(sp)
     4d4:	8fbf001c 	lw	ra,28(sp)
     4d8:	8fa20020 	lw	v0,32(sp)
     4dc:	27bd01d8 	addiu	sp,sp,472
     4e0:	03e00008 	jr	ra
     4e4:	00000000 	nop

000004e8 <EnSt_CheckCeilingPos>:
     4e8:	27bdffb0 	addiu	sp,sp,-80
     4ec:	afbf0034 	sw	ra,52(sp)
     4f0:	afb00030 	sw	s0,48(sp)
     4f4:	afa50054 	sw	a1,84(sp)
     4f8:	c4840024 	lwc1	$f4,36(a0)
     4fc:	3c01447a 	lui	at,0x447a
     500:	44814000 	mtc1	at,$f8
     504:	e7a4003c 	swc1	$f4,60(sp)
     508:	c4860028 	lwc1	$f6,40(a0)
     50c:	00808025 	move	s0,a0
     510:	27ae004c 	addiu	t6,sp,76
     514:	46083280 	add.s	$f10,$f6,$f8
     518:	27b90048 	addiu	t9,sp,72
     51c:	240f0001 	li	t7,1
     520:	24180001 	li	t8,1
     524:	e7aa0040 	swc1	$f10,64(sp)
     528:	c490002c 	lwc1	$f16,44(a0)
     52c:	24a407c0 	addiu	a0,a1,1984
     530:	26050024 	addiu	a1,s0,36
     534:	afa50038 	sw	a1,56(sp)
     538:	afb90024 	sw	t9,36(sp)
     53c:	afb80020 	sw	t8,32(sp)
     540:	afaf001c 	sw	t7,28(sp)
     544:	afa00018 	sw	zero,24(sp)
     548:	afa00014 	sw	zero,20(sp)
     54c:	afae0010 	sw	t6,16(sp)
     550:	260703f0 	addiu	a3,s0,1008
     554:	27a6003c 	addiu	a2,sp,60
     558:	0c000000 	jal	0 <EnSt_SetupAction>
     55c:	e7b00044 	swc1	$f16,68(sp)
     560:	14400003 	bnez	v0,570 <EnSt_CheckCeilingPos+0x88>
     564:	8fa50038 	lw	a1,56(sp)
     568:	1000000d 	b	5a0 <EnSt_CheckCeilingPos+0xb8>
     56c:	00001025 	move	v0,zero
     570:	8ca90000 	lw	t1,0(a1)
     574:	3c0142c8 	lui	at,0x42c8
     578:	44812000 	mtc1	at,$f4
     57c:	ae0903e4 	sw	t1,996(s0)
     580:	8ca80004 	lw	t0,4(a1)
     584:	24020001 	li	v0,1
     588:	ae0803e8 	sw	t0,1000(s0)
     58c:	c61203e8 	lwc1	$f18,1000(s0)
     590:	8ca90008 	lw	t1,8(a1)
     594:	46049181 	sub.s	$f6,$f18,$f4
     598:	ae0903ec 	sw	t1,1004(s0)
     59c:	e60603e8 	swc1	$f6,1000(s0)
     5a0:	8fbf0034 	lw	ra,52(sp)
     5a4:	8fb00030 	lw	s0,48(sp)
     5a8:	27bd0050 	addiu	sp,sp,80
     5ac:	03e00008 	jr	ra
     5b0:	00000000 	nop

000005b4 <EnSt_AddBlurVertex>:
     5b4:	27bdffa8 	addiu	sp,sp,-88
     5b8:	3c0f0000 	lui	t7,0x0
     5bc:	afbf001c 	sw	ra,28(sp)
     5c0:	afb00018 	sw	s0,24(sp)
     5c4:	25ef0250 	addiu	t7,t7,592
     5c8:	8df90000 	lw	t9,0(t7)
     5cc:	27ae004c 	addiu	t6,sp,76
     5d0:	8df80004 	lw	t8,4(t7)
     5d4:	add90000 	sw	t9,0(t6)
     5d8:	8df90008 	lw	t9,8(t7)
     5dc:	3c090000 	lui	t1,0x0
     5e0:	2529025c 	addiu	t1,t1,604
     5e4:	add80004 	sw	t8,4(t6)
     5e8:	add90008 	sw	t9,8(t6)
     5ec:	8d2b0000 	lw	t3,0(t1)
     5f0:	27a80040 	addiu	t0,sp,64
     5f4:	8d2a0004 	lw	t2,4(t1)
     5f8:	ad0b0000 	sw	t3,0(t0)
     5fc:	8d2b0008 	lw	t3,8(t1)
     600:	ad0a0004 	sw	t2,4(t0)
     604:	00808025 	move	s0,a0
     608:	ad0b0008 	sw	t3,8(t0)
     60c:	c4860408 	lwc1	$f6,1032(a0)
     610:	c7a4004c 	lwc1	$f4,76(sp)
     614:	c7aa0050 	lwc1	$f10,80(sp)
     618:	46062202 	mul.s	$f8,$f4,$f6
     61c:	c7a40054 	lwc1	$f4,84(sp)
     620:	e7a8004c 	swc1	$f8,76(sp)
     624:	c4900408 	lwc1	$f16,1032(a0)
     628:	46105482 	mul.s	$f18,$f10,$f16
     62c:	c7aa0040 	lwc1	$f10,64(sp)
     630:	e7b20050 	swc1	$f18,80(sp)
     634:	c4860408 	lwc1	$f6,1032(a0)
     638:	46062202 	mul.s	$f8,$f4,$f6
     63c:	c7a40044 	lwc1	$f4,68(sp)
     640:	e7a80054 	swc1	$f8,84(sp)
     644:	c4900408 	lwc1	$f16,1032(a0)
     648:	46105482 	mul.s	$f18,$f10,$f16
     64c:	c7aa0048 	lwc1	$f10,72(sp)
     650:	e7b20040 	swc1	$f18,64(sp)
     654:	c4860408 	lwc1	$f6,1032(a0)
     658:	46062202 	mul.s	$f8,$f4,$f6
     65c:	e7a80044 	swc1	$f8,68(sp)
     660:	c4900408 	lwc1	$f16,1032(a0)
     664:	46105482 	mul.s	$f18,$f10,$f16
     668:	0c000000 	jal	0 <EnSt_SetupAction>
     66c:	e7b20048 	swc1	$f18,72(sp)
     670:	27a4004c 	addiu	a0,sp,76
     674:	0c000000 	jal	0 <EnSt_SetupAction>
     678:	27a50034 	addiu	a1,sp,52
     67c:	27a40040 	addiu	a0,sp,64
     680:	0c000000 	jal	0 <EnSt_SetupAction>
     684:	27a50028 	addiu	a1,sp,40
     688:	0c000000 	jal	0 <EnSt_SetupAction>
     68c:	00000000 	nop
     690:	0c000000 	jal	0 <EnSt_SetupAction>
     694:	8e040404 	lw	a0,1028(s0)
     698:	00402025 	move	a0,v0
     69c:	27a50034 	addiu	a1,sp,52
     6a0:	0c000000 	jal	0 <EnSt_SetupAction>
     6a4:	27a60028 	addiu	a2,sp,40
     6a8:	8fbf001c 	lw	ra,28(sp)
     6ac:	8fb00018 	lw	s0,24(sp)
     6b0:	27bd0058 	addiu	sp,sp,88
     6b4:	03e00008 	jr	ra
     6b8:	00000000 	nop

000006bc <EnSt_AddBlurSpace>:
     6bc:	27bdffe8 	addiu	sp,sp,-24
     6c0:	afbf0014 	sw	ra,20(sp)
     6c4:	0c000000 	jal	0 <EnSt_SetupAction>
     6c8:	8c840404 	lw	a0,1028(a0)
     6cc:	0c000000 	jal	0 <EnSt_SetupAction>
     6d0:	00402025 	move	a0,v0
     6d4:	8fbf0014 	lw	ra,20(sp)
     6d8:	27bd0018 	addiu	sp,sp,24
     6dc:	03e00008 	jr	ra
     6e0:	00000000 	nop

000006e4 <EnSt_SetWaitingAnimation>:
     6e4:	27bdffe8 	addiu	sp,sp,-24
     6e8:	afbf0014 	sw	ra,20(sp)
     6ec:	3c050000 	lui	a1,0x0
     6f0:	24a50000 	addiu	a1,a1,0
     6f4:	2484014c 	addiu	a0,a0,332
     6f8:	0c000000 	jal	0 <EnSt_SetupAction>
     6fc:	24060003 	li	a2,3
     700:	8fbf0014 	lw	ra,20(sp)
     704:	27bd0018 	addiu	sp,sp,24
     708:	03e00008 	jr	ra
     70c:	00000000 	nop

00000710 <EnSt_SetReturnToCeilingAnimation>:
     710:	27bdffe8 	addiu	sp,sp,-24
     714:	afbf0014 	sw	ra,20(sp)
     718:	afa40018 	sw	a0,24(sp)
     71c:	0c000000 	jal	0 <EnSt_SetupAction>
     720:	24053869 	li	a1,14441
     724:	8fa40018 	lw	a0,24(sp)
     728:	3c050000 	lui	a1,0x0
     72c:	24a50000 	addiu	a1,a1,0
     730:	24060002 	li	a2,2
     734:	0c000000 	jal	0 <EnSt_SetupAction>
     738:	2484014c 	addiu	a0,a0,332
     73c:	8fbf0014 	lw	ra,20(sp)
     740:	27bd0018 	addiu	sp,sp,24
     744:	03e00008 	jr	ra
     748:	00000000 	nop

0000074c <EnSt_SetLandAnimation>:
     74c:	27bdffe8 	addiu	sp,sp,-24
     750:	afbf0014 	sw	ra,20(sp)
     754:	c486040c 	lwc1	$f6,1036(a0)
     758:	c4840080 	lwc1	$f4,128(a0)
     75c:	00803825 	move	a3,a0
     760:	3c050000 	lui	a1,0x0
     764:	46062200 	add.s	$f8,$f4,$f6
     768:	24a50000 	addiu	a1,a1,0
     76c:	2484014c 	addiu	a0,a0,332
     770:	24060004 	li	a2,4
     774:	e488fedc 	swc1	$f8,-292(a0)
     778:	0c000000 	jal	0 <EnSt_SetupAction>
     77c:	afa70018 	sw	a3,24(sp)
     780:	8fa70018 	lw	a3,24(sp)
     784:	c4ea0160 	lwc1	$f10,352(a3)
     788:	a4e003d2 	sh	zero,978(a3)
     78c:	4600540d 	trunc.w.s	$f16,$f10
     790:	440f8000 	mfc1	t7,$f16
     794:	00000000 	nop
     798:	a4ef03c2 	sh	t7,962(a3)
     79c:	8fbf0014 	lw	ra,20(sp)
     7a0:	27bd0018 	addiu	sp,sp,24
     7a4:	03e00008 	jr	ra
     7a8:	00000000 	nop

000007ac <EnSt_SetDropAnimAndVel>:
     7ac:	27bdffe8 	addiu	sp,sp,-24
     7b0:	afbf0014 	sw	ra,20(sp)
     7b4:	848e03cc 	lh	t6,972(a0)
     7b8:	00803825 	move	a3,a0
     7bc:	2484014c 	addiu	a0,a0,332
     7c0:	15c0000b 	bnez	t6,7f0 <EnSt_SetDropAnimAndVel+0x44>
     7c4:	3c050000 	lui	a1,0x0
     7c8:	24a50000 	addiu	a1,a1,0
     7cc:	24060004 	li	a2,4
     7d0:	0c000000 	jal	0 <EnSt_SetupAction>
     7d4:	afa70018 	sw	a3,24(sp)
     7d8:	8fa70018 	lw	a3,24(sp)
     7dc:	c4e40160 	lwc1	$f4,352(a3)
     7e0:	4600218d 	trunc.w.s	$f6,$f4
     7e4:	44183000 	mfc1	t8,$f6
     7e8:	00000000 	nop
     7ec:	a4f803c2 	sh	t8,962(a3)
     7f0:	3c01c120 	lui	at,0xc120
     7f4:	44814000 	mtc1	at,$f8
     7f8:	a4e003d2 	sh	zero,978(a3)
     7fc:	e4e80060 	swc1	$f8,96(a3)
     800:	8fbf0014 	lw	ra,20(sp)
     804:	27bd0018 	addiu	sp,sp,24
     808:	03e00008 	jr	ra
     80c:	00000000 	nop

00000810 <EnSt_InitColliders>:
     810:	27bdff98 	addiu	sp,sp,-104
     814:	3c0f0000 	lui	t7,0x0
     818:	afbf0034 	sw	ra,52(sp)
     81c:	afb40030 	sw	s4,48(sp)
     820:	afb3002c 	sw	s3,44(sp)
     824:	afb20028 	sw	s2,40(sp)
     828:	afb10024 	sw	s1,36(sp)
     82c:	afb00020 	sw	s0,32(sp)
     830:	25ef0268 	addiu	t7,t7,616
     834:	8df90000 	lw	t9,0(t7)
     838:	8df80004 	lw	t8,4(t7)
     83c:	27ae0050 	addiu	t6,sp,80
     840:	add90000 	sw	t9,0(t6)
     844:	add80004 	sw	t8,4(t6)
     848:	8df8000c 	lw	t8,12(t7)
     84c:	8df90008 	lw	t9,8(t7)
     850:	00a09025 	move	s2,a1
     854:	add8000c 	sw	t8,12(t6)
     858:	add90008 	sw	t9,8(t6)
     85c:	8df90010 	lw	t9,16(t7)
     860:	8df80014 	lw	t8,20(t7)
     864:	00809825 	move	s3,a0
     868:	24900194 	addiu	s0,a0,404
     86c:	27b10050 	addiu	s1,sp,80
     870:	27b40068 	addiu	s4,sp,104
     874:	add90010 	sw	t9,16(t6)
     878:	add80014 	sw	t8,20(t6)
     87c:	02402025 	move	a0,s2
     880:	0c000000 	jal	0 <EnSt_SetupAction>
     884:	02002825 	move	a1,s0
     888:	02402025 	move	a0,s2
     88c:	02002825 	move	a1,s0
     890:	02603025 	move	a2,s3
     894:	0c000000 	jal	0 <EnSt_SetupAction>
     898:	8e270000 	lw	a3,0(s1)
     89c:	26310004 	addiu	s1,s1,4
     8a0:	1634fff6 	bne	s1,s4,87c <EnSt_InitColliders+0x6c>
     8a4:	2610004c 	addiu	s0,s0,76
     8a8:	3c080003 	lui	t0,0x3
     8ac:	3c09ffc0 	lui	t1,0xffc0
     8b0:	3c0dffcc 	lui	t5,0xffcc
     8b4:	3508f8f9 	ori	t0,t0,0xf8f9
     8b8:	35290706 	ori	t1,t1,0x706
     8bc:	240a0009 	li	t2,9
     8c0:	240b000d 	li	t3,13
     8c4:	240c0002 	li	t4,2
     8c8:	35ad0706 	ori	t5,t5,0x706
     8cc:	ae6801b4 	sw	t0,436(s3)
     8d0:	ae690200 	sw	t1,512(s3)
     8d4:	a26a0240 	sb	t2,576(s3)
     8d8:	a26b025a 	sb	t3,602(s3)
     8dc:	a26c0258 	sb	t4,600(s3)
     8e0:	ae6d024c 	sw	t5,588(s3)
     8e4:	0c000000 	jal	0 <EnSt_SetupAction>
     8e8:	24040002 	li	a0,2
     8ec:	3c060000 	lui	a2,0x0
     8f0:	24c600dc 	addiu	a2,a2,220
     8f4:	26640098 	addiu	a0,s3,152
     8f8:	0c000000 	jal	0 <EnSt_SetupAction>
     8fc:	00402825 	move	a1,v0
     900:	2670035c 	addiu	s0,s3,860
     904:	02002825 	move	a1,s0
     908:	0c000000 	jal	0 <EnSt_SetupAction>
     90c:	02402025 	move	a0,s2
     910:	3c070000 	lui	a3,0x0
     914:	266e037c 	addiu	t6,s3,892
     918:	afae0010 	sw	t6,16(sp)
     91c:	24e70138 	addiu	a3,a3,312
     920:	02402025 	move	a0,s2
     924:	02002825 	move	a1,s0
     928:	0c000000 	jal	0 <EnSt_SetupAction>
     92c:	02603025 	move	a2,s3
     930:	8fbf0034 	lw	ra,52(sp)
     934:	8fb00020 	lw	s0,32(sp)
     938:	8fb10024 	lw	s1,36(sp)
     93c:	8fb20028 	lw	s2,40(sp)
     940:	8fb3002c 	lw	s3,44(sp)
     944:	8fb40030 	lw	s4,48(sp)
     948:	03e00008 	jr	ra
     94c:	27bd0068 	addiu	sp,sp,104

00000950 <EnSt_CheckBodyStickHit>:
     950:	8ca21c44 	lw	v0,7236(a1)
     954:	844e0860 	lh	t6,2144(v0)
     958:	248201ac 	addiu	v0,a0,428
     95c:	51c0000e 	beqzl	t6,998 <EnSt_CheckBodyStickHit+0x48>
     960:	8c4b0008 	lw	t3,8(v0)
     964:	248201ac 	addiu	v0,a0,428
     968:	8c4f0008 	lw	t7,8(v0)
     96c:	2403fffd 	li	v1,-3
     970:	35f80002 	ori	t8,t7,0x2
     974:	ac580008 	sw	t8,8(v0)
     978:	8c990200 	lw	t9,512(a0)
     97c:	8c89024c 	lw	t1,588(a0)
     980:	03234024 	and	t0,t9,v1
     984:	01235024 	and	t2,t1,v1
     988:	ac880200 	sw	t0,512(a0)
     98c:	03e00008 	jr	ra
     990:	ac8a024c 	sw	t2,588(a0)
     994:	8c4b0008 	lw	t3,8(v0)
     998:	2403fffd 	li	v1,-3
     99c:	01636024 	and	t4,t3,v1
     9a0:	ac4c0008 	sw	t4,8(v0)
     9a4:	8c8d0200 	lw	t5,512(a0)
     9a8:	8c8f024c 	lw	t7,588(a0)
     9ac:	35ae0002 	ori	t6,t5,0x2
     9b0:	35f80002 	ori	t8,t7,0x2
     9b4:	ac8e0200 	sw	t6,512(a0)
     9b8:	ac98024c 	sw	t8,588(a0)
     9bc:	03e00008 	jr	ra
     9c0:	00000000 	nop

000009c4 <EnSt_SetBodyCylinderAC>:
     9c4:	27bdffe0 	addiu	sp,sp,-32
     9c8:	afbf0014 	sw	ra,20(sp)
     9cc:	afa50024 	sw	a1,36(sp)
     9d0:	24860194 	addiu	a2,a0,404
     9d4:	00c02825 	move	a1,a2
     9d8:	0c000000 	jal	0 <EnSt_SetupAction>
     9dc:	afa6001c 	sw	a2,28(sp)
     9e0:	8fa40024 	lw	a0,36(sp)
     9e4:	3c010001 	lui	at,0x1
     9e8:	34211e60 	ori	at,at,0x1e60
     9ec:	8fa6001c 	lw	a2,28(sp)
     9f0:	0c000000 	jal	0 <EnSt_SetupAction>
     9f4:	00812821 	addu	a1,a0,at
     9f8:	8fbf0014 	lw	ra,20(sp)
     9fc:	27bd0020 	addiu	sp,sp,32
     a00:	03e00008 	jr	ra
     a04:	00000000 	nop

00000a08 <EnSt_SetLegsCylinderAC>:
     a08:	27bdffe0 	addiu	sp,sp,-32
     a0c:	afbf0014 	sw	ra,20(sp)
     a10:	848f00b6 	lh	t7,182(a0)
     a14:	848e008a 	lh	t6,138(a0)
     a18:	00a03825 	move	a3,a1
     a1c:	248601e0 	addiu	a2,a0,480
     a20:	01cf1023 	subu	v0,t6,t7
     a24:	00021400 	sll	v0,v0,0x10
     a28:	00021403 	sra	v0,v0,0x10
     a2c:	04400004 	bltz	v0,a40 <EnSt_SetLegsCylinderAC+0x38>
     a30:	00021823 	negu	v1,v0
     a34:	00021c00 	sll	v1,v0,0x10
     a38:	10000003 	b	a48 <EnSt_SetLegsCylinderAC+0x40>
     a3c:	00031c03 	sra	v1,v1,0x10
     a40:	00031c00 	sll	v1,v1,0x10
     a44:	00031c03 	sra	v1,v1,0x10
     a48:	28613ffc 	slti	at,v1,16380
     a4c:	1020000e 	beqz	at,a88 <EnSt_SetLegsCylinderAC+0x80>
     a50:	00c02825 	move	a1,a2
     a54:	2486022c 	addiu	a2,a0,556
     a58:	00c02825 	move	a1,a2
     a5c:	afa60018 	sw	a2,24(sp)
     a60:	0c000000 	jal	0 <EnSt_SetupAction>
     a64:	afa70024 	sw	a3,36(sp)
     a68:	8fa40024 	lw	a0,36(sp)
     a6c:	3c010001 	lui	at,0x1
     a70:	34211e60 	ori	at,at,0x1e60
     a74:	8fa60018 	lw	a2,24(sp)
     a78:	0c000000 	jal	0 <EnSt_SetupAction>
     a7c:	00812821 	addu	a1,a0,at
     a80:	1000000b 	b	ab0 <EnSt_SetLegsCylinderAC+0xa8>
     a84:	8fbf0014 	lw	ra,20(sp)
     a88:	afa60018 	sw	a2,24(sp)
     a8c:	0c000000 	jal	0 <EnSt_SetupAction>
     a90:	afa70024 	sw	a3,36(sp)
     a94:	8fa40024 	lw	a0,36(sp)
     a98:	3c010001 	lui	at,0x1
     a9c:	34211e60 	ori	at,at,0x1e60
     aa0:	8fa60018 	lw	a2,24(sp)
     aa4:	0c000000 	jal	0 <EnSt_SetupAction>
     aa8:	00812821 	addu	a1,a0,at
     aac:	8fbf0014 	lw	ra,20(sp)
     ab0:	27bd0020 	addiu	sp,sp,32
     ab4:	03e00008 	jr	ra
     ab8:	00000000 	nop

00000abc <EnSt_SetCylinderOC>:
     abc:	27bdff60 	addiu	sp,sp,-160
     ac0:	3c0f0000 	lui	t7,0x0
     ac4:	afb70044 	sw	s7,68(sp)
     ac8:	afb20030 	sw	s2,48(sp)
     acc:	25ef0280 	addiu	t7,t7,640
     ad0:	00809025 	move	s2,a0
     ad4:	00a0b825 	move	s7,a1
     ad8:	afbf004c 	sw	ra,76(sp)
     adc:	afbe0048 	sw	s8,72(sp)
     ae0:	afb60040 	sw	s6,64(sp)
     ae4:	afb5003c 	sw	s5,60(sp)
     ae8:	afb40038 	sw	s4,56(sp)
     aec:	afb30034 	sw	s3,52(sp)
     af0:	afb1002c 	sw	s1,44(sp)
     af4:	afb00028 	sw	s0,40(sp)
     af8:	f7b60020 	sdc1	$f22,32(sp)
     afc:	f7b40018 	sdc1	$f20,24(sp)
     b00:	25e80024 	addiu	t0,t7,36
     b04:	27ae007c 	addiu	t6,sp,124
     b08:	8df90000 	lw	t9,0(t7)
     b0c:	25ef000c 	addiu	t7,t7,12
     b10:	25ce000c 	addiu	t6,t6,12
     b14:	add9fff4 	sw	t9,-12(t6)
     b18:	8df8fff8 	lw	t8,-8(t7)
     b1c:	add8fff8 	sw	t8,-8(t6)
     b20:	8df9fffc 	lw	t9,-4(t7)
     b24:	15e8fff8 	bne	t7,t0,b08 <EnSt_SetCylinderOC+0x4c>
     b28:	add9fffc 	sw	t9,-4(t6)
     b2c:	3c010001 	lui	at,0x1
     b30:	34211e60 	ori	at,at,0x1e60
     b34:	02e1f021 	addu	s8,s7,at
     b38:	3c010000 	lui	at,0x0
     b3c:	c4360020 	lwc1	$f22,32(at)
     b40:	3c014700 	lui	at,0x4700
     b44:	4481a000 	mtc1	at,$f20
     b48:	26560024 	addiu	s6,s2,36
     b4c:	27b0007c 	addiu	s0,sp,124
     b50:	00009825 	move	s3,zero
     b54:	02408825 	move	s1,s2
     b58:	26540278 	addiu	s4,s2,632
     b5c:	27b50070 	addiu	s5,sp,112
     b60:	8eca0000 	lw	t2,0(s6)
     b64:	c6040000 	lwc1	$f4,0(s0)
     b68:	c60a0004 	lwc1	$f10,4(s0)
     b6c:	aeaa0000 	sw	t2,0(s5)
     b70:	8ec90004 	lw	t1,4(s6)
     b74:	aea90004 	sw	t1,4(s5)
     b78:	8eca0008 	lw	t2,8(s6)
     b7c:	aeaa0008 	sw	t2,8(s5)
     b80:	c6460408 	lwc1	$f6,1032(s2)
     b84:	46062202 	mul.s	$f8,$f4,$f6
     b88:	c6040008 	lwc1	$f4,8(s0)
     b8c:	e6080000 	swc1	$f8,0(s0)
     b90:	c6500408 	lwc1	$f16,1032(s2)
     b94:	46105482 	mul.s	$f18,$f10,$f16
     b98:	e6120004 	swc1	$f18,4(s0)
     b9c:	c6460408 	lwc1	$f6,1032(s2)
     ba0:	46062202 	mul.s	$f8,$f4,$f6
     ba4:	0c000000 	jal	0 <EnSt_SetupAction>
     ba8:	e6080008 	swc1	$f8,8(s0)
     bac:	c7ac0070 	lwc1	$f12,112(sp)
     bb0:	c7ae0074 	lwc1	$f14,116(sp)
     bb4:	8fa60078 	lw	a2,120(sp)
     bb8:	0c000000 	jal	0 <EnSt_SetupAction>
     bbc:	00003825 	move	a3,zero
     bc0:	864b03bc 	lh	t3,956(s2)
     bc4:	24050001 	li	a1,1
     bc8:	448b5000 	mtc1	t3,$f10
     bcc:	00000000 	nop
     bd0:	46805420 	cvt.s.w	$f16,$f10
     bd4:	46148483 	div.s	$f18,$f16,$f20
     bd8:	46169302 	mul.s	$f12,$f18,$f22
     bdc:	0c000000 	jal	0 <EnSt_SetupAction>
     be0:	00000000 	nop
     be4:	02002025 	move	a0,s0
     be8:	0c000000 	jal	0 <EnSt_SetupAction>
     bec:	02a02825 	move	a1,s5
     bf0:	0c000000 	jal	0 <EnSt_SetupAction>
     bf4:	00000000 	nop
     bf8:	c7a40070 	lwc1	$f4,112(sp)
     bfc:	02e02025 	move	a0,s7
     c00:	03c02825 	move	a1,s8
     c04:	4600218d 	trunc.w.s	$f6,$f4
     c08:	02803025 	move	a2,s4
     c0c:	440d3000 	mfc1	t5,$f6
     c10:	00000000 	nop
     c14:	a62d02be 	sh	t5,702(s1)
     c18:	c7a80074 	lwc1	$f8,116(sp)
     c1c:	4600428d 	trunc.w.s	$f10,$f8
     c20:	440f5000 	mfc1	t7,$f10
     c24:	00000000 	nop
     c28:	a62f02c0 	sh	t7,704(s1)
     c2c:	c7b00078 	lwc1	$f16,120(sp)
     c30:	4600848d 	trunc.w.s	$f18,$f16
     c34:	44189000 	mfc1	t8,$f18
     c38:	0c000000 	jal	0 <EnSt_SetupAction>
     c3c:	a63802c2 	sh	t8,706(s1)
     c40:	2673004c 	addiu	s3,s3,76
     c44:	240100e4 	li	at,228
     c48:	2610000c 	addiu	s0,s0,12
     c4c:	2631004c 	addiu	s1,s1,76
     c50:	1661ffc3 	bne	s3,at,b60 <EnSt_SetCylinderOC+0xa4>
     c54:	2694004c 	addiu	s4,s4,76
     c58:	8fbf004c 	lw	ra,76(sp)
     c5c:	d7b40018 	ldc1	$f20,24(sp)
     c60:	d7b60020 	ldc1	$f22,32(sp)
     c64:	8fb00028 	lw	s0,40(sp)
     c68:	8fb1002c 	lw	s1,44(sp)
     c6c:	8fb20030 	lw	s2,48(sp)
     c70:	8fb30034 	lw	s3,52(sp)
     c74:	8fb40038 	lw	s4,56(sp)
     c78:	8fb5003c 	lw	s5,60(sp)
     c7c:	8fb60040 	lw	s6,64(sp)
     c80:	8fb70044 	lw	s7,68(sp)
     c84:	8fbe0048 	lw	s8,72(sp)
     c88:	27bd00a0 	addiu	sp,sp,160
     c8c:	03e00008 	jr	ra
     c90:	24020001 	li	v0,1

00000c94 <EnSt_UpdateCylinders>:
     c94:	27bdffe8 	addiu	sp,sp,-24
     c98:	afbf0014 	sw	ra,20(sp)
     c9c:	afa5001c 	sw	a1,28(sp)
     ca0:	908e00af 	lbu	t6,175(a0)
     ca4:	55c00007 	bnezl	t6,cc4 <EnSt_UpdateCylinders+0x30>
     ca8:	848203d4 	lh	v0,980(a0)
     cac:	8c980190 	lw	t8,400(a0)
     cb0:	3c0f0000 	lui	t7,0x0
     cb4:	25ef0000 	addiu	t7,t7,0
     cb8:	55f80024 	bnel	t7,t8,d4c <EnSt_UpdateCylinders+0xb8>
     cbc:	8fbf0014 	lw	ra,20(sp)
     cc0:	848203d4 	lh	v0,980(a0)
     cc4:	14400003 	bnez	v0,cd4 <EnSt_UpdateCylinders+0x40>
     cc8:	2459ffff 	addiu	t9,v0,-1
     ccc:	10000003 	b	cdc <EnSt_UpdateCylinders+0x48>
     cd0:	00001825 	move	v1,zero
     cd4:	a49903d4 	sh	t9,980(a0)
     cd8:	848303d4 	lh	v1,980(a0)
     cdc:	14600004 	bnez	v1,cf0 <EnSt_UpdateCylinders+0x5c>
     ce0:	8fa5001c 	lw	a1,28(sp)
     ce4:	0c000000 	jal	0 <EnSt_SetupAction>
     ce8:	afa40018 	sw	a0,24(sp)
     cec:	8fa40018 	lw	a0,24(sp)
     cf0:	848203d0 	lh	v0,976(a0)
     cf4:	10400002 	beqz	v0,d00 <EnSt_UpdateCylinders+0x6c>
     cf8:	2448ffff 	addiu	t0,v0,-1
     cfc:	a48803d0 	sh	t0,976(a0)
     d00:	848303cc 	lh	v1,972(a0)
     d04:	14600003 	bnez	v1,d14 <EnSt_UpdateCylinders+0x80>
     d08:	2469ffff 	addiu	t1,v1,-1
     d0c:	10000003 	b	d1c <EnSt_UpdateCylinders+0x88>
     d10:	848203d0 	lh	v0,976(a0)
     d14:	a48903cc 	sh	t1,972(a0)
     d18:	848203d0 	lh	v0,976(a0)
     d1c:	5440000b 	bnezl	v0,d4c <EnSt_UpdateCylinders+0xb8>
     d20:	8fbf0014 	lw	ra,20(sp)
     d24:	848a03cc 	lh	t2,972(a0)
     d28:	8fa5001c 	lw	a1,28(sp)
     d2c:	55400007 	bnezl	t2,d4c <EnSt_UpdateCylinders+0xb8>
     d30:	8fbf0014 	lw	ra,20(sp)
     d34:	0c000000 	jal	0 <EnSt_SetupAction>
     d38:	afa40018 	sw	a0,24(sp)
     d3c:	8fa40018 	lw	a0,24(sp)
     d40:	0c000000 	jal	0 <EnSt_SetupAction>
     d44:	8fa5001c 	lw	a1,28(sp)
     d48:	8fbf0014 	lw	ra,20(sp)
     d4c:	27bd0018 	addiu	sp,sp,24
     d50:	03e00008 	jr	ra
     d54:	00000000 	nop

00000d58 <EnSt_CheckHitLink>:
     d58:	27bdffd0 	addiu	sp,sp,-48
     d5c:	afbf0024 	sw	ra,36(sp)
     d60:	afb00020 	sw	s0,32(sp)
     d64:	afa50034 	sw	a1,52(sp)
     d68:	8caf1c44 	lw	t7,7236(a1)
     d6c:	00808025 	move	s0,a0
     d70:	240500e4 	li	a1,228
     d74:	00003825 	move	a3,zero
     d78:	00001825 	move	v1,zero
     d7c:	00801025 	move	v0,a0
     d80:	2406fffe 	li	a2,-2
     d84:	afaf002c 	sw	t7,44(sp)
     d88:	9044028b 	lbu	a0,651(v0)
     d8c:	2463004c 	addiu	v1,v1,76
     d90:	30980001 	andi	t8,a0,0x1
     d94:	0018c82b 	sltu	t9,zero,t8
     d98:	13200003 	beqz	t9,da8 <EnSt_CheckHitLink+0x50>
     d9c:	00864024 	and	t0,a0,a2
     da0:	a048028b 	sb	t0,651(v0)
     da4:	24070001 	li	a3,1
     da8:	1465fff7 	bne	v1,a1,d88 <EnSt_CheckHitLink+0x30>
     dac:	2442004c 	addiu	v0,v0,76
     db0:	54e00004 	bnezl	a3,dc4 <EnSt_CheckHitLink+0x6c>
     db4:	860903c4 	lh	t1,964(s0)
     db8:	1000001c 	b	e2c <EnSt_CheckHitLink+0xd4>
     dbc:	00001025 	move	v0,zero
     dc0:	860903c4 	lh	t1,964(s0)
     dc4:	02002025 	move	a0,s0
     dc8:	55200004 	bnezl	t1,ddc <EnSt_CheckHitLink+0x84>
     dcc:	240a001e 	li	t2,30
     dd0:	0c000000 	jal	0 <EnSt_SetupAction>
     dd4:	24053884 	li	a1,14468
     dd8:	240a001e 	li	t2,30
     ddc:	a60a03d4 	sh	t2,980(s0)
     de0:	8fa40034 	lw	a0,52(sp)
     de4:	3c190001 	lui	t9,0x1
     de8:	2405fff8 	li	a1,-8
     dec:	0324c821 	addu	t9,t9,a0
     df0:	8f391d58 	lw	t9,7512(t9)
     df4:	0320f809 	jalr	t9
     df8:	00000000 	nop
     dfc:	8fa4002c 	lw	a0,44(sp)
     e00:	0c000000 	jal	0 <EnSt_SetupAction>
     e04:	2405083e 	li	a1,2110
     e08:	3c0140c0 	lui	at,0x40c0
     e0c:	44812000 	mtc1	at,$f4
     e10:	8607008a 	lh	a3,138(s0)
     e14:	8fa40034 	lw	a0,52(sp)
     e18:	02002825 	move	a1,s0
     e1c:	3c064080 	lui	a2,0x4080
     e20:	0c000000 	jal	0 <EnSt_SetupAction>
     e24:	e7a40010 	swc1	$f4,16(sp)
     e28:	24020001 	li	v0,1
     e2c:	8fbf0024 	lw	ra,36(sp)
     e30:	8fb00020 	lw	s0,32(sp)
     e34:	27bd0030 	addiu	sp,sp,48
     e38:	03e00008 	jr	ra
     e3c:	00000000 	nop

00000e40 <EnSt_CheckHitFrontside>:
     e40:	9083023d 	lbu	v1,573(a0)
     e44:	24190008 	li	t9,8
     e48:	2408003c 	li	t0,60
     e4c:	306e0002 	andi	t6,v1,0x2
     e50:	000e782b 	sltu	t7,zero,t6
     e54:	15e00003 	bnez	t7,e64 <EnSt_CheckHitFrontside+0x24>
     e58:	3078fffd 	andi	t8,v1,0xfffd
     e5c:	03e00008 	jr	ra
     e60:	00001025 	move	v0,zero
     e64:	a098023d 	sb	t8,573(a0)
     e68:	a49903d0 	sh	t9,976(a0)
     e6c:	a08003dc 	sb	zero,988(a0)
     e70:	a48803c4 	sh	t0,964(a0)
     e74:	24020001 	li	v0,1
     e78:	03e00008 	jr	ra
     e7c:	00000000 	nop

00000e80 <EnSt_CheckHitBackside>:
     e80:	27bdffd0 	addiu	sp,sp,-48
     e84:	afbf0024 	sw	ra,36(sp)
     e88:	afb00020 	sw	s0,32(sp)
     e8c:	afa50034 	sw	a1,52(sp)
     e90:	908e01a5 	lbu	t6,421(a0)
     e94:	00808025 	move	s0,a0
     e98:	00003825 	move	a3,zero
     e9c:	31cf0002 	andi	t7,t6,0x2
     ea0:	11e00008 	beqz	t7,ec4 <EnSt_CheckHitBackside+0x44>
     ea4:	00001825 	move	v1,zero
     ea8:	24820194 	addiu	v0,a0,404
     eac:	90580011 	lbu	t8,17(v0)
     eb0:	8c48003c 	lw	t0,60(v0)
     eb4:	24030001 	li	v1,1
     eb8:	3319fffd 	andi	t9,t8,0xfffd
     ebc:	a0590011 	sb	t9,17(v0)
     ec0:	8d070000 	lw	a3,0(t0)
     ec4:	920901f1 	lbu	t1,497(s0)
     ec8:	260201e0 	addiu	v0,s0,480
     ecc:	312a0002 	andi	t2,t1,0x2
     ed0:	11400008 	beqz	t2,ef4 <EnSt_CheckHitBackside+0x74>
     ed4:	00000000 	nop
     ed8:	904b0011 	lbu	t3,17(v0)
     edc:	8c4d003c 	lw	t5,60(v0)
     ee0:	24030001 	li	v1,1
     ee4:	316cfffd 	andi	t4,t3,0xfffd
     ee8:	a04c0011 	sb	t4,17(v0)
     eec:	8dae0000 	lw	t6,0(t5)
     ef0:	00ee3825 	or	a3,a3,t6
     ef4:	54600004 	bnezl	v1,f08 <EnSt_CheckHitBackside+0x88>
     ef8:	921800b1 	lbu	t8,177(s0)
     efc:	10000057 	b	105c <EnSt_CheckHitBackside+0x1dc>
     f00:	00001025 	move	v0,zero
     f04:	921800b1 	lbu	t8,177(s0)
     f08:	24020001 	li	v0,1
     f0c:	240f0008 	li	t7,8
     f10:	14580012 	bne	v0,t8,f5c <EnSt_CheckHitBackside+0xdc>
     f14:	a60f03d0 	sh	t7,976(s0)
     f18:	861903ce 	lh	t9,974(s0)
     f1c:	02002025 	move	a0,s0
     f20:	1720000c 	bnez	t9,f54 <EnSt_CheckHitBackside+0xd4>
     f24:	00000000 	nop
     f28:	0c000000 	jal	0 <EnSt_SetupAction>
     f2c:	2405389e 	li	a1,14494
     f30:	24080078 	li	t0,120
     f34:	a60803ce 	sh	t0,974(s0)
     f38:	860903ce 	lh	t1,974(s0)
     f3c:	02002025 	move	a0,s0
     f40:	00002825 	move	a1,zero
     f44:	240600c8 	li	a2,200
     f48:	00003825 	move	a3,zero
     f4c:	0c000000 	jal	0 <EnSt_SetupAction>
     f50:	afa90010 	sw	t1,16(sp)
     f54:	10000041 	b	105c <EnSt_CheckHitBackside+0x1dc>
     f58:	00001025 	move	v0,zero
     f5c:	a60003ce 	sh	zero,974(s0)
     f60:	860a03ce 	lh	t2,974(s0)
     f64:	a60203d4 	sh	v0,980(s0)
     f68:	3c050000 	lui	a1,0x0
     f6c:	a60a03c4 	sh	t2,964(s0)
     f70:	afa70028 	sw	a3,40(sp)
     f74:	24a50000 	addiu	a1,a1,0
     f78:	2604014c 	addiu	a0,s0,332
     f7c:	0c000000 	jal	0 <EnSt_SetupAction>
     f80:	24060003 	li	a2,3
     f84:	c6040160 	lwc1	$f4,352(s0)
     f88:	02002025 	move	a0,s0
     f8c:	24054000 	li	a1,16384
     f90:	4600218d 	trunc.w.s	$f6,$f4
     f94:	240600c8 	li	a2,200
     f98:	00003825 	move	a3,zero
     f9c:	440c3000 	mfc1	t4,$f6
     fa0:	00000000 	nop
     fa4:	a60c03cc 	sh	t4,972(s0)
     fa8:	860d03cc 	lh	t5,972(s0)
     fac:	0c000000 	jal	0 <EnSt_SetupAction>
     fb0:	afad0010 	sw	t5,16(sp)
     fb4:	0c000000 	jal	0 <EnSt_SetupAction>
     fb8:	02002025 	move	a0,s0
     fbc:	10400006 	beqz	v0,fd8 <EnSt_CheckHitBackside+0x158>
     fc0:	8fa40034 	lw	a0,52(sp)
     fc4:	02002025 	move	a0,s0
     fc8:	0c000000 	jal	0 <EnSt_SetupAction>
     fcc:	2405386b 	li	a1,14443
     fd0:	10000022 	b	105c <EnSt_CheckHitBackside+0x1dc>
     fd4:	00001025 	move	v0,zero
     fd8:	0c000000 	jal	0 <EnSt_SetupAction>
     fdc:	02002825 	move	a1,s0
     fe0:	8e0e0004 	lw	t6,4(s0)
     fe4:	2401fffe 	li	at,-2
     fe8:	24180003 	li	t8,3
     fec:	01c17824 	and	t7,t6,at
     ff0:	3c01bf80 	lui	at,0xbf80
     ff4:	44814000 	mtc1	at,$f8
     ff8:	24190014 	li	t9,20
     ffc:	ae0f0004 	sw	t7,4(s0)
    1000:	a61803c0 	sh	t8,960(s0)
    1004:	a61903d8 	sh	t9,984(s0)
    1008:	02002025 	move	a0,s0
    100c:	24053885 	li	a1,14469
    1010:	0c000000 	jal	0 <EnSt_SetupAction>
    1014:	e608006c 	swc1	$f8,108(s0)
    1018:	8fa80028 	lw	t0,40(sp)
    101c:	3c010001 	lui	at,0x1
    1020:	3421f820 	ori	at,at,0xf820
    1024:	01014824 	and	t1,t0,at
    1028:	11200008 	beqz	t1,104c <EnSt_CheckHitBackside+0x1cc>
    102c:	02002025 	move	a0,s0
    1030:	3c050000 	lui	a1,0x0
    1034:	24a50000 	addiu	a1,a1,0
    1038:	0c000000 	jal	0 <EnSt_SetupAction>
    103c:	02002025 	move	a0,s0
    1040:	240a0008 	li	t2,8
    1044:	10000004 	b	1058 <EnSt_CheckHitBackside+0x1d8>
    1048:	a60a03d6 	sh	t2,982(s0)
    104c:	3c050000 	lui	a1,0x0
    1050:	0c000000 	jal	0 <EnSt_SetupAction>
    1054:	24a50000 	addiu	a1,a1,0
    1058:	24020001 	li	v0,1
    105c:	8fbf0024 	lw	ra,36(sp)
    1060:	8fb00020 	lw	s0,32(sp)
    1064:	27bd0030 	addiu	sp,sp,48
    1068:	03e00008 	jr	ra
    106c:	00000000 	nop

00001070 <EnSt_CheckColliders>:
    1070:	27bdffe8 	addiu	sp,sp,-24
    1074:	afbf0014 	sw	ra,20(sp)
    1078:	afa5001c 	sw	a1,28(sp)
    107c:	0c000000 	jal	0 <EnSt_SetupAction>
    1080:	afa40018 	sw	a0,24(sp)
    1084:	10400003 	beqz	v0,1094 <EnSt_CheckColliders+0x24>
    1088:	8fa40018 	lw	a0,24(sp)
    108c:	10000016 	b	10e8 <EnSt_CheckColliders+0x78>
    1090:	00001025 	move	v0,zero
    1094:	8fa5001c 	lw	a1,28(sp)
    1098:	90ae1c26 	lbu	t6,7206(a1)
    109c:	11c00003 	beqz	t6,10ac <EnSt_CheckColliders+0x3c>
    10a0:	00000000 	nop
    10a4:	10000010 	b	10e8 <EnSt_CheckColliders+0x78>
    10a8:	24020001 	li	v0,1
    10ac:	0c000000 	jal	0 <EnSt_SetupAction>
    10b0:	afa40018 	sw	a0,24(sp)
    10b4:	10400003 	beqz	v0,10c4 <EnSt_CheckColliders+0x54>
    10b8:	8fa40018 	lw	a0,24(sp)
    10bc:	1000000a 	b	10e8 <EnSt_CheckColliders+0x78>
    10c0:	24020001 	li	v0,1
    10c4:	848f03ce 	lh	t7,974(a0)
    10c8:	55e00007 	bnezl	t7,10e8 <EnSt_CheckColliders+0x78>
    10cc:	00001025 	move	v0,zero
    10d0:	849803cc 	lh	t8,972(a0)
    10d4:	57000004 	bnezl	t8,10e8 <EnSt_CheckColliders+0x78>
    10d8:	00001025 	move	v0,zero
    10dc:	0c000000 	jal	0 <EnSt_SetupAction>
    10e0:	8fa5001c 	lw	a1,28(sp)
    10e4:	00001025 	move	v0,zero
    10e8:	8fbf0014 	lw	ra,20(sp)
    10ec:	27bd0018 	addiu	sp,sp,24
    10f0:	03e00008 	jr	ra
    10f4:	00000000 	nop

000010f8 <EnSt_SetColliderScale>:
    10f8:	27bdffe0 	addiu	sp,sp,-32
    10fc:	afbf0014 	sw	ra,20(sp)
    1100:	848e001c 	lh	t6,28(a0)
    1104:	3c013f80 	lui	at,0x3f80
    1108:	44817000 	mtc1	at,$f14
    110c:	24010001 	li	at,1
    1110:	15c10003 	bne	t6,at,1120 <EnSt_SetColliderScale+0x28>
    1114:	00803025 	move	a2,a0
    1118:	3c010000 	lui	at,0x0
    111c:	c42e0024 	lwc1	$f14,36(at)
    1120:	8cc40378 	lw	a0,888(a2)
    1124:	00001825 	move	v1,zero
    1128:	00c01025 	move	v0,a2
    112c:	848f002e 	lh	t7,46(a0)
    1130:	448f2000 	mtc1	t7,$f4
    1134:	00000000 	nop
    1138:	46802320 	cvt.s.w	$f12,$f4
    113c:	460e6302 	mul.s	$f12,$f12,$f14
    1140:	4600618d 	trunc.w.s	$f6,$f12
    1144:	44193000 	mfc1	t9,$f6
    1148:	00000000 	nop
    114c:	a499002e 	sh	t9,46(a0)
    1150:	240401c8 	li	a0,456
    1154:	2463004c 	addiu	v1,v1,76
    1158:	10640019 	beq	v1,a0,11c0 <EnSt_SetColliderScale+0xc8>
    115c:	844801d8 	lh	t0,472(v0)
    1160:	844901d4 	lh	t1,468(v0)
    1164:	44889000 	mtc1	t0,$f18
    1168:	844a01d6 	lh	t2,470(v0)
    116c:	44898000 	mtc1	t1,$f16
    1170:	468094a0 	cvt.s.w	$f18,$f18
    1174:	448a6000 	mtc1	t2,$f12
    1178:	2463004c 	addiu	v1,v1,76
    117c:	2442004c 	addiu	v0,v0,76
    1180:	844801d8 	lh	t0,472(v0)
    1184:	46808420 	cvt.s.w	$f16,$f16
    1188:	460e9482 	mul.s	$f18,$f18,$f14
    118c:	46806320 	cvt.s.w	$f12,$f12
    1190:	460e8402 	mul.s	$f16,$f16,$f14
    1194:	4600948d 	trunc.w.s	$f18,$f18
    1198:	460e6302 	mul.s	$f12,$f12,$f14
    119c:	440c9000 	mfc1	t4,$f18
    11a0:	4600840d 	trunc.w.s	$f16,$f16
    11a4:	a44c018c 	sh	t4,396(v0)
    11a8:	4600630d 	trunc.w.s	$f12,$f12
    11ac:	440e8000 	mfc1	t6,$f16
    11b0:	44186000 	mfc1	t8,$f12
    11b4:	a44e0188 	sh	t6,392(v0)
    11b8:	1464ffe9 	bne	v1,a0,1160 <EnSt_SetColliderScale+0x68>
    11bc:	a458018a 	sh	t8,394(v0)
    11c0:	44889000 	mtc1	t0,$f18
    11c4:	844901d4 	lh	t1,468(v0)
    11c8:	844a01d6 	lh	t2,470(v0)
    11cc:	468094a0 	cvt.s.w	$f18,$f18
    11d0:	44898000 	mtc1	t1,$f16
    11d4:	448a6000 	mtc1	t2,$f12
    11d8:	2442004c 	addiu	v0,v0,76
    11dc:	46808420 	cvt.s.w	$f16,$f16
    11e0:	460e9482 	mul.s	$f18,$f18,$f14
    11e4:	00000000 	nop
    11e8:	460e8402 	mul.s	$f16,$f16,$f14
    11ec:	46806320 	cvt.s.w	$f12,$f12
    11f0:	4600948d 	trunc.w.s	$f18,$f18
    11f4:	460e6302 	mul.s	$f12,$f12,$f14
    11f8:	440c9000 	mfc1	t4,$f18
    11fc:	4600840d 	trunc.w.s	$f16,$f16
    1200:	a44c018c 	sh	t4,396(v0)
    1204:	4600630d 	trunc.w.s	$f12,$f12
    1208:	440e8000 	mfc1	t6,$f16
    120c:	44186000 	mfc1	t8,$f12
    1210:	a44e0188 	sh	t6,392(v0)
    1214:	a458018a 	sh	t8,394(v0)
    1218:	3c010000 	lui	at,0x0
    121c:	c4280028 	lwc1	$f8,40(at)
    1220:	00c02025 	move	a0,a2
    1224:	afa60020 	sw	a2,32(sp)
    1228:	460e4282 	mul.s	$f10,$f8,$f14
    122c:	e7ae001c 	swc1	$f14,28(sp)
    1230:	44055000 	mfc1	a1,$f10
    1234:	0c000000 	jal	0 <EnSt_SetupAction>
    1238:	00000000 	nop
    123c:	3c014200 	lui	at,0x4200
    1240:	c7ae001c 	lwc1	$f14,28(sp)
    1244:	44818000 	mtc1	at,$f16
    1248:	8fa60020 	lw	a2,32(sp)
    124c:	460e8482 	mul.s	$f18,$f16,$f14
    1250:	e4ce0408 	swc1	$f14,1032(a2)
    1254:	e4d2040c 	swc1	$f18,1036(a2)
    1258:	8fbf0014 	lw	ra,20(sp)
    125c:	27bd0020 	addiu	sp,sp,32
    1260:	03e00008 	jr	ra
    1264:	00000000 	nop

00001268 <EnSt_SetTeethColor>:
    1268:	27bdffd0 	addiu	sp,sp,-48
    126c:	afb0001c 	sw	s0,28(sp)
    1270:	87b00042 	lh	s0,66(sp)
    1274:	3c010000 	lui	at,0x0
    1278:	c428002c 	lwc1	$f8,44(at)
    127c:	44902000 	mtc1	s0,$f4
    1280:	240b00ff 	li	t3,255
    1284:	afbf0024 	sw	ra,36(sp)
    1288:	468021a0 	cvt.s.w	$f6,$f4
    128c:	afb10020 	sw	s1,32(sp)
    1290:	afa50034 	sw	a1,52(sp)
    1294:	afa60038 	sw	a2,56(sp)
    1298:	afa7003c 	sw	a3,60(sp)
    129c:	908e03dd 	lbu	t6,989(a0)
    12a0:	46083282 	mul.s	$f10,$f6,$f8
    12a4:	00052c00 	sll	a1,a1,0x10
    12a8:	a7ae002e 	sh	t6,46(sp)
    12ac:	908f03de 	lbu	t7,990(a0)
    12b0:	00808825 	move	s1,a0
    12b4:	00052c03 	sra	a1,a1,0x10
    12b8:	a7af002c 	sh	t7,44(sp)
    12bc:	4600540d 	trunc.w.s	$f16,$f10
    12c0:	909803df 	lbu	t8,991(a0)
    12c4:	27a4002e 	addiu	a0,sp,46
    12c8:	24060001 	li	a2,1
    12cc:	44088000 	mfc1	t0,$f16
    12d0:	a7b8002a 	sh	t8,42(sp)
    12d4:	00084c00 	sll	t1,t0,0x10
    12d8:	00095403 	sra	t2,t1,0x10
    12dc:	016a001a 	div	zero,t3,t2
    12e0:	00008012 	mflo	s0
    12e4:	00108400 	sll	s0,s0,0x10
    12e8:	00108403 	sra	s0,s0,0x10
    12ec:	15400002 	bnez	t2,12f8 <EnSt_SetTeethColor+0x90>
    12f0:	00000000 	nop
    12f4:	0007000d 	break	0x7
    12f8:	2401ffff 	li	at,-1
    12fc:	15410004 	bne	t2,at,1310 <EnSt_SetTeethColor+0xa8>
    1300:	3c018000 	lui	at,0x8000
    1304:	15610002 	bne	t3,at,1310 <EnSt_SetTeethColor+0xa8>
    1308:	00000000 	nop
    130c:	0006000d 	break	0x6
    1310:	5e000003 	bgtzl	s0,1320 <EnSt_SetTeethColor+0xb8>
    1314:	00103c00 	sll	a3,s0,0x10
    1318:	24100001 	li	s0,1
    131c:	00103c00 	sll	a3,s0,0x10
    1320:	00073c03 	sra	a3,a3,0x10
    1324:	0c000000 	jal	0 <EnSt_SetupAction>
    1328:	afb00010 	sw	s0,16(sp)
    132c:	00103c00 	sll	a3,s0,0x10
    1330:	00073c03 	sra	a3,a3,0x10
    1334:	27a4002c 	addiu	a0,sp,44
    1338:	87a5003a 	lh	a1,58(sp)
    133c:	24060001 	li	a2,1
    1340:	0c000000 	jal	0 <EnSt_SetupAction>
    1344:	afb00010 	sw	s0,16(sp)
    1348:	00103c00 	sll	a3,s0,0x10
    134c:	00073c03 	sra	a3,a3,0x10
    1350:	27a4002a 	addiu	a0,sp,42
    1354:	87a5003e 	lh	a1,62(sp)
    1358:	24060001 	li	a2,1
    135c:	0c000000 	jal	0 <EnSt_SetupAction>
    1360:	afb00010 	sw	s0,16(sp)
    1364:	87ac002e 	lh	t4,46(sp)
    1368:	24020001 	li	v0,1
    136c:	a22c03dd 	sb	t4,989(s1)
    1370:	87ad002c 	lh	t5,44(sp)
    1374:	a22d03de 	sb	t5,990(s1)
    1378:	87ae002a 	lh	t6,42(sp)
    137c:	a22e03df 	sb	t6,991(s1)
    1380:	8fbf0024 	lw	ra,36(sp)
    1384:	8fb10020 	lw	s1,32(sp)
    1388:	8fb0001c 	lw	s0,28(sp)
    138c:	03e00008 	jr	ra
    1390:	27bd0030 	addiu	sp,sp,48

00001394 <EnSt_DecrStunTimer>:
    1394:	848203ce 	lh	v0,974(a0)
    1398:	14400003 	bnez	v0,13a8 <EnSt_DecrStunTimer+0x14>
    139c:	244effff 	addiu	t6,v0,-1
    13a0:	03e00008 	jr	ra
    13a4:	00001025 	move	v0,zero
    13a8:	a48e03ce 	sh	t6,974(a0)
    13ac:	03e00008 	jr	ra
    13b0:	00000000 	nop

000013b4 <EnSt_UpdateYaw>:
    13b4:	27bdffa8 	addiu	sp,sp,-88
    13b8:	afbf0024 	sw	ra,36(sp)
    13bc:	afb00020 	sw	s0,32(sp)
    13c0:	afa5005c 	sw	a1,92(sp)
    13c4:	848203ce 	lh	v0,974(a0)
    13c8:	00808025 	move	s0,a0
    13cc:	00003025 	move	a2,zero
    13d0:	1040000d 	beqz	v0,1408 <EnSt_UpdateYaw+0x54>
    13d4:	2841001e 	slti	at,v0,30
    13d8:	10200099 	beqz	at,1640 <EnSt_UpdateYaw+0x28c>
    13dc:	304e0001 	andi	t6,v0,0x1
    13e0:	51c00006 	beqzl	t6,13fc <EnSt_UpdateYaw+0x48>
    13e4:	861900b6 	lh	t9,182(s0)
    13e8:	848f00b6 	lh	t7,182(a0)
    13ec:	25f80800 	addiu	t8,t7,2048
    13f0:	10000093 	b	1640 <EnSt_UpdateYaw+0x28c>
    13f4:	a49800b6 	sh	t8,182(a0)
    13f8:	861900b6 	lh	t9,182(s0)
    13fc:	272bf800 	addiu	t3,t9,-2048
    1400:	1000008f 	b	1640 <EnSt_UpdateYaw+0x28c>
    1404:	a60b00b6 	sh	t3,182(s0)
    1408:	860c03c4 	lh	t4,964(s0)
    140c:	5580008d 	bnezl	t4,1644 <EnSt_UpdateYaw+0x290>
    1410:	8fbf0024 	lw	ra,36(sp)
    1414:	860d03d8 	lh	t5,984(s0)
    1418:	55a0008a 	bnezl	t5,1644 <EnSt_UpdateYaw+0x290>
    141c:	8fbf0024 	lw	ra,36(sp)
    1420:	860e03d6 	lh	t6,982(s0)
    1424:	55c00087 	bnezl	t6,1644 <EnSt_UpdateYaw+0x290>
    1428:	8fbf0024 	lw	ra,36(sp)
    142c:	860f03cc 	lh	t7,972(s0)
    1430:	55e00005 	bnezl	t7,1448 <EnSt_UpdateYaw+0x94>
    1434:	861900b6 	lh	t9,182(s0)
    1438:	861803d4 	lh	t8,980(s0)
    143c:	53000006 	beqzl	t8,1458 <EnSt_UpdateYaw+0xa4>
    1440:	8e0c0190 	lw	t4,400(s0)
    1444:	861900b6 	lh	t9,182(s0)
    1448:	272b2000 	addiu	t3,t9,8192
    144c:	1000007c 	b	1640 <EnSt_UpdateYaw+0x28c>
    1450:	a60b00b6 	sh	t3,182(s0)
    1454:	8e0c0190 	lw	t4,400(s0)
    1458:	3c030000 	lui	v1,0x0
    145c:	24630000 	addiu	v1,v1,0
    1460:	106c0003 	beq	v1,t4,1470 <EnSt_UpdateYaw+0xbc>
    1464:	240d001e 	li	t5,30
    1468:	a60d03c8 	sh	t5,968(s0)
    146c:	a60003ca 	sh	zero,970(s0)
    1470:	860203c8 	lh	v0,968(s0)
    1474:	1040000f 	beqz	v0,14b4 <EnSt_UpdateYaw+0x100>
    1478:	244effff 	addiu	t6,v0,-1
    147c:	a60e03c8 	sh	t6,968(s0)
    1480:	860f03c8 	lh	t7,968(s0)
    1484:	02002025 	move	a0,s0
    1488:	24053884 	li	a1,14468
    148c:	55e00019 	bnezl	t7,14f4 <EnSt_UpdateYaw+0x140>
    1490:	260a00b4 	addiu	t2,s0,180
    1494:	afa30038 	sw	v1,56(sp)
    1498:	0c000000 	jal	0 <EnSt_SetupAction>
    149c:	a7a60056 	sh	a2,86(sp)
    14a0:	8fa30038 	lw	v1,56(sp)
    14a4:	97a60056 	lhu	a2,86(sp)
    14a8:	2418001e 	li	t8,30
    14ac:	10000010 	b	14f0 <EnSt_UpdateYaw+0x13c>
    14b0:	a61803ca 	sh	t8,970(s0)
    14b4:	860203ca 	lh	v0,970(s0)
    14b8:	1040000d 	beqz	v0,14f0 <EnSt_UpdateYaw+0x13c>
    14bc:	2459ffff 	addiu	t9,v0,-1
    14c0:	a61903ca 	sh	t9,970(s0)
    14c4:	860b03ca 	lh	t3,970(s0)
    14c8:	02002025 	move	a0,s0
    14cc:	24053884 	li	a1,14468
    14d0:	55600007 	bnezl	t3,14f0 <EnSt_UpdateYaw+0x13c>
    14d4:	34068000 	li	a2,0x8000
    14d8:	0c000000 	jal	0 <EnSt_SetupAction>
    14dc:	afa30038 	sw	v1,56(sp)
    14e0:	8fa30038 	lw	v1,56(sp)
    14e4:	240c001e 	li	t4,30
    14e8:	a60c03c8 	sh	t4,968(s0)
    14ec:	34068000 	li	a2,0x8000
    14f0:	260a00b4 	addiu	t2,s0,180
    14f4:	894f0000 	lwl	t7,0(t2)
    14f8:	994f0003 	lwr	t7,3(t2)
    14fc:	27ad0050 	addiu	t5,sp,80
    1500:	24072000 	li	a3,8192
    1504:	adaf0000 	sw	t7,0(t5)
    1508:	954f0004 	lhu	t7,4(t2)
    150c:	24190001 	li	t9,1
    1510:	a5af0004 	sh	t7,4(t5)
    1514:	8e180190 	lw	t8,400(s0)
    1518:	87a40052 	lh	a0,82(sp)
    151c:	54780004 	bnel	v1,t8,1530 <EnSt_UpdateYaw+0x17c>
    1520:	860303bc 	lh	v1,956(s0)
    1524:	10000002 	b	1530 <EnSt_UpdateYaw+0x17c>
    1528:	8603008a 	lh	v1,138(s0)
    152c:	860303bc 	lh	v1,956(s0)
    1530:	00664026 	xor	t0,v1,a2
    1534:	00881023 	subu	v0,a0,t0
    1538:	00021400 	sll	v0,v0,0x10
    153c:	00021403 	sra	v0,v0,0x10
    1540:	04400003 	bltz	v0,1550 <EnSt_UpdateYaw+0x19c>
    1544:	00c04825 	move	t1,a2
    1548:	10000002 	b	1554 <EnSt_UpdateYaw+0x1a0>
    154c:	00401825 	move	v1,v0
    1550:	00021823 	negu	v1,v0
    1554:	28614001 	slti	at,v1,16385
    1558:	1020000c 	beqz	at,158c <EnSt_UpdateYaw+0x1d8>
    155c:	24842000 	addiu	a0,a0,8192
    1560:	00082c00 	sll	a1,t0,0x10
    1564:	00052c03 	sra	a1,a1,0x10
    1568:	27a40052 	addiu	a0,sp,82
    156c:	24060004 	li	a2,4
    1570:	afb90010 	sw	t9,16(sp)
    1574:	afa90038 	sw	t1,56(sp)
    1578:	0c000000 	jal	0 <EnSt_SetupAction>
    157c:	afaa0034 	sw	t2,52(sp)
    1580:	8fa90038 	lw	t1,56(sp)
    1584:	10000004 	b	1598 <EnSt_UpdateYaw+0x1e4>
    1588:	8faa0034 	lw	t2,52(sp)
    158c:	00042400 	sll	a0,a0,0x10
    1590:	00042403 	sra	a0,a0,0x10
    1594:	a7a40052 	sh	a0,82(sp)
    1598:	27ab0050 	addiu	t3,sp,80
    159c:	8d6d0000 	lw	t5,0(t3)
    15a0:	27a2003c 	addiu	v0,sp,60
    15a4:	ac4d0000 	sw	t5,0(v0)
    15a8:	956d0004 	lhu	t5,4(t3)
    15ac:	8c4f0000 	lw	t7,0(v0)
    15b0:	a44d0004 	sh	t5,4(v0)
    15b4:	aa0f0030 	swl	t7,48(s0)
    15b8:	ba0f0033 	swr	t7,51(s0)
    15bc:	944f0004 	lhu	t7,4(v0)
    15c0:	a60f0034 	sh	t7,52(s0)
    15c4:	88590000 	lwl	t9,0(v0)
    15c8:	98590003 	lwr	t9,3(v0)
    15cc:	a9590000 	swl	t9,0(t2)
    15d0:	b9590003 	swr	t9,3(t2)
    15d4:	94590004 	lhu	t9,4(v0)
    15d8:	15200007 	bnez	t1,15f8 <EnSt_UpdateYaw+0x244>
    15dc:	a5590004 	sh	t9,4(t2)
    15e0:	860203c8 	lh	v0,968(s0)
    15e4:	2841000a 	slti	at,v0,10
    15e8:	10200003 	beqz	at,15f8 <EnSt_UpdateYaw+0x244>
    15ec:	00021c00 	sll	v1,v0,0x10
    15f0:	10000009 	b	1618 <EnSt_UpdateYaw+0x264>
    15f4:	00031c03 	sra	v1,v1,0x10
    15f8:	34018000 	li	at,0x8000
    15fc:	55210011 	bnel	t1,at,1644 <EnSt_UpdateYaw+0x290>
    1600:	8fbf0024 	lw	ra,36(sp)
    1604:	860203ca 	lh	v0,970(s0)
    1608:	2841000a 	slti	at,v0,10
    160c:	1020000c 	beqz	at,1640 <EnSt_UpdateYaw+0x28c>
    1610:	00021c00 	sll	v1,v0,0x10
    1614:	00031c03 	sra	v1,v1,0x10
    1618:	306b0001 	andi	t3,v1,0x1
    161c:	51600006 	beqzl	t3,1638 <EnSt_UpdateYaw+0x284>
    1620:	860e00b6 	lh	t6,182(s0)
    1624:	860c00b6 	lh	t4,182(s0)
    1628:	258d0800 	addiu	t5,t4,2048
    162c:	10000004 	b	1640 <EnSt_UpdateYaw+0x28c>
    1630:	a60d00b6 	sh	t5,182(s0)
    1634:	860e00b6 	lh	t6,182(s0)
    1638:	25cff800 	addiu	t7,t6,-2048
    163c:	a60f00b6 	sh	t7,182(s0)
    1640:	8fbf0024 	lw	ra,36(sp)
    1644:	8fb00020 	lw	s0,32(sp)
    1648:	27bd0058 	addiu	sp,sp,88
    164c:	03e00008 	jr	ra
    1650:	00000000 	nop

00001654 <EnSt_IsDoneBouncing>:
    1654:	27bdffe8 	addiu	sp,sp,-24
    1658:	afbf0014 	sw	ra,20(sp)
    165c:	afa5001c 	sw	a1,28(sp)
    1660:	c4860060 	lwc1	$f6,96(a0)
    1664:	44802000 	mtc1	zero,$f4
    1668:	00000000 	nop
    166c:	4606203c 	c.lt.s	$f4,$f6
    1670:	00000000 	nop
    1674:	45010004 	bc1t	1688 <EnSt_IsDoneBouncing+0x34>
    1678:	00000000 	nop
    167c:	848e03c0 	lh	t6,960(a0)
    1680:	55c00004 	bnezl	t6,1694 <EnSt_IsDoneBouncing+0x40>
    1684:	948f0088 	lhu	t7,136(a0)
    1688:	10000021 	b	1710 <EnSt_IsDoneBouncing+0xbc>
    168c:	00001025 	move	v0,zero
    1690:	948f0088 	lhu	t7,136(a0)
    1694:	2405387b 	li	a1,14459
    1698:	31f80001 	andi	t8,t7,0x1
    169c:	17000003 	bnez	t8,16ac <EnSt_IsDoneBouncing+0x58>
    16a0:	00000000 	nop
    16a4:	1000001a 	b	1710 <EnSt_IsDoneBouncing+0xbc>
    16a8:	00001025 	move	v0,zero
    16ac:	0c000000 	jal	0 <EnSt_SetupAction>
    16b0:	afa40018 	sw	a0,24(sp)
    16b4:	8fa40018 	lw	a0,24(sp)
    16b8:	8fa5001c 	lw	a1,28(sp)
    16bc:	0c000000 	jal	0 <EnSt_SetupAction>
    16c0:	2406000a 	li	a2,10
    16c4:	8fa40018 	lw	a0,24(sp)
    16c8:	24190004 	li	t9,4
    16cc:	3c0140c0 	lui	at,0x40c0
    16d0:	848203c0 	lh	v0,960(a0)
    16d4:	44814000 	mtc1	at,$f8
    16d8:	03224023 	subu	t0,t9,v0
    16dc:	44885000 	mtc1	t0,$f10
    16e0:	2449ffff 	addiu	t1,v0,-1
    16e4:	a48903c0 	sh	t1,960(a0)
    16e8:	46805420 	cvt.s.w	$f16,$f10
    16ec:	848a03c0 	lh	t2,960(a0)
    16f0:	46104483 	div.s	$f18,$f8,$f16
    16f4:	11400003 	beqz	t2,1704 <EnSt_IsDoneBouncing+0xb0>
    16f8:	e4920060 	swc1	$f18,96(a0)
    16fc:	10000004 	b	1710 <EnSt_IsDoneBouncing+0xbc>
    1700:	00001025 	move	v0,zero
    1704:	44802000 	mtc1	zero,$f4
    1708:	24020001 	li	v0,1
    170c:	e4840060 	swc1	$f4,96(a0)
    1710:	8fbf0014 	lw	ra,20(sp)
    1714:	27bd0018 	addiu	sp,sp,24
    1718:	03e00008 	jr	ra
    171c:	00000000 	nop

00001720 <EnSt_Bob>:
    1720:	27bdffe0 	addiu	sp,sp,-32
    1724:	afbf001c 	sw	ra,28(sp)
    1728:	afa40020 	sw	a0,32(sp)
    172c:	8cae009c 	lw	t6,156(a1)
    1730:	3c013f00 	lui	at,0x3f00
    1734:	44811000 	mtc1	at,$f2
    1738:	31cf0008 	andi	t7,t6,0x8
    173c:	11e00006 	beqz	t7,1758 <EnSt_Bob+0x38>
    1740:	46001006 	mov.s	$f0,$f2
    1744:	3c01bf80 	lui	at,0xbf80
    1748:	44812000 	mtc1	at,$f4
    174c:	00000000 	nop
    1750:	46041002 	mul.s	$f0,$f2,$f4
    1754:	00000000 	nop
    1758:	8fa40020 	lw	a0,32(sp)
    175c:	44803000 	mtc1	zero,$f6
    1760:	44050000 	mfc1	a1,$f0
    1764:	3c063ecc 	lui	a2,0x3ecc
    1768:	34c6cccd 	ori	a2,a2,0xcccd
    176c:	3c07447a 	lui	a3,0x447a
    1770:	24840060 	addiu	a0,a0,96
    1774:	0c000000 	jal	0 <EnSt_SetupAction>
    1778:	e7a60010 	swc1	$f6,16(sp)
    177c:	8fbf001c 	lw	ra,28(sp)
    1780:	27bd0020 	addiu	sp,sp,32
    1784:	03e00008 	jr	ra
    1788:	00000000 	nop

0000178c <EnSt_IsCloseToPlayer>:
    178c:	848e03cc 	lh	t6,972(a0)
    1790:	8ca21c44 	lw	v0,7236(a1)
    1794:	3c014320 	lui	at,0x4320
    1798:	51c00004 	beqzl	t6,17ac <EnSt_IsCloseToPlayer+0x20>
    179c:	44812000 	mtc1	at,$f4
    17a0:	03e00008 	jr	ra
    17a4:	00001025 	move	v0,zero
    17a8:	44812000 	mtc1	at,$f4
    17ac:	c4860090 	lwc1	$f6,144(a0)
    17b0:	4606203c 	c.lt.s	$f4,$f6
    17b4:	00000000 	nop
    17b8:	45020004 	bc1fl	17cc <EnSt_IsCloseToPlayer+0x40>
    17bc:	c4420028 	lwc1	$f2,40(v0)
    17c0:	03e00008 	jr	ra
    17c4:	00001025 	move	v0,zero
    17c8:	c4420028 	lwc1	$f2,40(v0)
    17cc:	c4880028 	lwc1	$f8,40(a0)
    17d0:	44805000 	mtc1	zero,$f10
    17d4:	3c0143c8 	lui	at,0x43c8
    17d8:	46024001 	sub.s	$f0,$f8,$f2
    17dc:	460a003c 	c.lt.s	$f0,$f10
    17e0:	00000000 	nop
    17e4:	45010007 	bc1t	1804 <EnSt_IsCloseToPlayer+0x78>
    17e8:	00000000 	nop
    17ec:	44818000 	mtc1	at,$f16
    17f0:	00000000 	nop
    17f4:	4600803c 	c.lt.s	$f16,$f0
    17f8:	00000000 	nop
    17fc:	45020004 	bc1fl	1810 <EnSt_IsCloseToPlayer+0x84>
    1800:	c4920080 	lwc1	$f18,128(a0)
    1804:	03e00008 	jr	ra
    1808:	00001025 	move	v0,zero
    180c:	c4920080 	lwc1	$f18,128(a0)
    1810:	24020001 	li	v0,1
    1814:	4612103c 	c.lt.s	$f2,$f18
    1818:	00000000 	nop
    181c:	45000003 	bc1f	182c <EnSt_IsCloseToPlayer+0xa0>
    1820:	00000000 	nop
    1824:	03e00008 	jr	ra
    1828:	00001025 	move	v0,zero
    182c:	03e00008 	jr	ra
    1830:	00000000 	nop

00001834 <EnSt_IsCloseToInitalPos>:
    1834:	c4800060 	lwc1	$f0,96(a0)
    1838:	c4840028 	lwc1	$f4,40(a0)
    183c:	c488000c 	lwc1	$f8,12(a0)
    1840:	46000180 	add.s	$f6,$f0,$f0
    1844:	00001025 	move	v0,zero
    1848:	46062080 	add.s	$f2,$f4,$f6
    184c:	4602403e 	c.le.s	$f8,$f2
    1850:	00000000 	nop
    1854:	45000003 	bc1f	1864 <EnSt_IsCloseToInitalPos+0x30>
    1858:	00000000 	nop
    185c:	03e00008 	jr	ra
    1860:	24020001 	li	v0,1
    1864:	03e00008 	jr	ra
    1868:	00000000 	nop

0000186c <EnSt_IsCloseToGround>:
    186c:	c4800060 	lwc1	$f0,96(a0)
    1870:	c4840028 	lwc1	$f4,40(a0)
    1874:	c48a0080 	lwc1	$f10,128(a0)
    1878:	46000180 	add.s	$f6,$f0,$f0
    187c:	c488040c 	lwc1	$f8,1036(a0)
    1880:	00001025 	move	v0,zero
    1884:	46062080 	add.s	$f2,$f4,$f6
    1888:	460a1401 	sub.s	$f16,$f2,$f10
    188c:	4608803e 	c.le.s	$f16,$f8
    1890:	00000000 	nop
    1894:	45000003 	bc1f	18a4 <EnSt_IsCloseToGround+0x38>
    1898:	00000000 	nop
    189c:	03e00008 	jr	ra
    18a0:	24020001 	li	v0,1
    18a4:	03e00008 	jr	ra
    18a8:	00000000 	nop

000018ac <EnSt_Sway>:
    18ac:	27bdffb0 	addiu	sp,sp,-80
    18b0:	afbf001c 	sw	ra,28(sp)
    18b4:	afb10018 	sw	s1,24(sp)
    18b8:	afb00014 	sw	s0,20(sp)
    18bc:	848203c4 	lh	v0,964(a0)
    18c0:	00808025 	move	s0,a0
    18c4:	10400068 	beqz	v0,1a68 <EnSt_Sway+0x1bc>
    18c8:	2458ffff 	addiu	t8,v0,-1
    18cc:	848e0410 	lh	t6,1040(a0)
    18d0:	a49803c4 	sh	t8,964(a0)
    18d4:	848203c4 	lh	v0,964(a0)
    18d8:	25cf0a28 	addiu	t7,t6,2600
    18dc:	a48f0410 	sh	t7,1040(a0)
    18e0:	54400004 	bnezl	v0,18f4 <EnSt_Sway+0x48>
    18e4:	44822000 	mtc1	v0,$f4
    18e8:	a4800410 	sh	zero,1040(a0)
    18ec:	848203c4 	lh	v0,964(a0)
    18f0:	44822000 	mtc1	v0,$f4
    18f4:	3c010000 	lui	at,0x0
    18f8:	c4280030 	lwc1	$f8,48(at)
    18fc:	468021a0 	cvt.s.w	$f6,$f4
    1900:	46083282 	mul.s	$f10,$f6,$f8
    1904:	e7aa0034 	swc1	$f10,52(sp)
    1908:	0c000000 	jal	0 <EnSt_SetupAction>
    190c:	86040410 	lh	a0,1040(s0)
    1910:	3c010000 	lui	at,0x0
    1914:	c4320034 	lwc1	$f18,52(at)
    1918:	c7b00034 	lwc1	$f16,52(sp)
    191c:	46128102 	mul.s	$f4,$f16,$f18
    1920:	00000000 	nop
    1924:	46040182 	mul.s	$f6,$f0,$f4
    1928:	4600320d 	trunc.w.s	$f8,$f6
    192c:	44024000 	mfc1	v0,$f8
    1930:	00000000 	nop
    1934:	00021c00 	sll	v1,v0,0x10
    1938:	00031c03 	sra	v1,v1,0x10
    193c:	00028c00 	sll	s1,v0,0x10
    1940:	04600003 	bltz	v1,1950 <EnSt_Sway+0xa4>
    1944:	00118c03 	sra	s1,s1,0x10
    1948:	10000002 	b	1954 <EnSt_Sway+0xa8>
    194c:	00601025 	move	v0,v1
    1950:	00031023 	negu	v0,v1
    1954:	860303da 	lh	v1,986(s0)
    1958:	0062082a 	slt	at,v1,v0
    195c:	1420000a 	bnez	at,1988 <EnSt_Sway+0xdc>
    1960:	00000000 	nop
    1964:	920803dc 	lbu	t0,988(s0)
    1968:	02002025 	move	a0,s0
    196c:	15000006 	bnez	t0,1988 <EnSt_Sway+0xdc>
    1970:	00000000 	nop
    1974:	0c000000 	jal	0 <EnSt_SetupAction>
    1978:	240539e0 	li	a1,14816
    197c:	24090001 	li	t1,1
    1980:	a20903dc 	sb	t1,988(s0)
    1984:	860303da 	lh	v1,986(s0)
    1988:	06200003 	bltz	s1,1998 <EnSt_Sway+0xec>
    198c:	00112400 	sll	a0,s1,0x10
    1990:	10000002 	b	199c <EnSt_Sway+0xf0>
    1994:	02201025 	move	v0,s1
    1998:	00111023 	negu	v0,s1
    199c:	0062082a 	slt	at,v1,v0
    19a0:	10200002 	beqz	at,19ac <EnSt_Sway+0x100>
    19a4:	00115023 	negu	t2,s1
    19a8:	a20003dc 	sb	zero,988(s0)
    19ac:	06220004 	bltzl	s1,19c0 <EnSt_Sway+0x114>
    19b0:	a60a03da 	sh	t2,986(s0)
    19b4:	10000002 	b	19c0 <EnSt_Sway+0x114>
    19b8:	a61103da 	sh	s1,986(s0)
    19bc:	a60a03da 	sh	t2,986(s0)
    19c0:	0c000000 	jal	0 <EnSt_SetupAction>
    19c4:	00042403 	sra	a0,a0,0x10
    19c8:	3c01c348 	lui	at,0xc348
    19cc:	44815000 	mtc1	at,$f10
    19d0:	00112400 	sll	a0,s1,0x10
    19d4:	00042403 	sra	a0,a0,0x10
    19d8:	460a0402 	mul.s	$f16,$f0,$f10
    19dc:	0c000000 	jal	0 <EnSt_SetupAction>
    19e0:	e7b00044 	swc1	$f16,68(sp)
    19e4:	3c01c348 	lui	at,0xc348
    19e8:	44819000 	mtc1	at,$f18
    19ec:	44803000 	mtc1	zero,$f6
    19f0:	46120102 	mul.s	$f4,$f0,$f18
    19f4:	e7a6004c 	swc1	$f6,76(sp)
    19f8:	0c000000 	jal	0 <EnSt_SetupAction>
    19fc:	e7a40048 	swc1	$f4,72(sp)
    1a00:	c60c03f0 	lwc1	$f12,1008(s0)
    1a04:	c60e03f4 	lwc1	$f14,1012(s0)
    1a08:	8e0603f8 	lw	a2,1016(s0)
    1a0c:	0c000000 	jal	0 <EnSt_SetupAction>
    1a10:	00003825 	move	a3,zero
    1a14:	860b0032 	lh	t3,50(s0)
    1a18:	3c010000 	lui	at,0x0
    1a1c:	c4300038 	lwc1	$f16,56(at)
    1a20:	448b4000 	mtc1	t3,$f8
    1a24:	24050001 	li	a1,1
    1a28:	468042a0 	cvt.s.w	$f10,$f8
    1a2c:	46105302 	mul.s	$f12,$f10,$f16
    1a30:	0c000000 	jal	0 <EnSt_SetupAction>
    1a34:	00000000 	nop
    1a38:	27a40044 	addiu	a0,sp,68
    1a3c:	0c000000 	jal	0 <EnSt_SetupAction>
    1a40:	27a50038 	addiu	a1,sp,56
    1a44:	0c000000 	jal	0 <EnSt_SetupAction>
    1a48:	00000000 	nop
    1a4c:	00116040 	sll	t4,s1,0x1
    1a50:	000c6823 	negu	t5,t4
    1a54:	a60d00b8 	sh	t5,184(s0)
    1a58:	c7b20038 	lwc1	$f18,56(sp)
    1a5c:	e6120024 	swc1	$f18,36(s0)
    1a60:	c7a40040 	lwc1	$f4,64(sp)
    1a64:	e604002c 	swc1	$f4,44(s0)
    1a68:	8fbf001c 	lw	ra,28(sp)
    1a6c:	8fb00014 	lw	s0,20(sp)
    1a70:	8fb10018 	lw	s1,24(sp)
    1a74:	03e00008 	jr	ra
    1a78:	27bd0050 	addiu	sp,sp,80

00001a7c <EnSt_Init>:
    1a7c:	27bdffc0 	addiu	sp,sp,-64
    1a80:	afb00028 	sw	s0,40(sp)
    1a84:	00808025 	move	s0,a0
    1a88:	afbf002c 	sw	ra,44(sp)
    1a8c:	afa50044 	sw	a1,68(sp)
    1a90:	3c060000 	lui	a2,0x0
    1a94:	24c60000 	addiu	a2,a2,0
    1a98:	24050000 	li	a1,0
    1a9c:	248400b4 	addiu	a0,a0,180
    1aa0:	0c000000 	jal	0 <EnSt_SetupAction>
    1aa4:	3c074160 	lui	a3,0x4160
    1aa8:	2605014c 	addiu	a1,s0,332
    1aac:	3c060000 	lui	a2,0x0
    1ab0:	260e0412 	addiu	t6,s0,1042
    1ab4:	260f04c6 	addiu	t7,s0,1222
    1ab8:	2418001e 	li	t8,30
    1abc:	afb80018 	sw	t8,24(sp)
    1ac0:	afaf0014 	sw	t7,20(sp)
    1ac4:	afae0010 	sw	t6,16(sp)
    1ac8:	24c60000 	addiu	a2,a2,0
    1acc:	afa50034 	sw	a1,52(sp)
    1ad0:	8fa40044 	lw	a0,68(sp)
    1ad4:	0c000000 	jal	0 <EnSt_SetupAction>
    1ad8:	00003825 	move	a3,zero
    1adc:	3c050000 	lui	a1,0x0
    1ae0:	24a50000 	addiu	a1,a1,0
    1ae4:	8fa40034 	lw	a0,52(sp)
    1ae8:	0c000000 	jal	0 <EnSt_SetupAction>
    1aec:	00003025 	move	a2,zero
    1af0:	0c000000 	jal	0 <EnSt_SetupAction>
    1af4:	8fa40044 	lw	a0,68(sp)
    1af8:	ae020404 	sw	v0,1028(s0)
    1afc:	8fa50044 	lw	a1,68(sp)
    1b00:	0c000000 	jal	0 <EnSt_SetupAction>
    1b04:	02002025 	move	a0,s0
    1b08:	8602001c 	lh	v0,28(s0)
    1b0c:	24010002 	li	at,2
    1b10:	240a0004 	li	t2,4
    1b14:	14410005 	bne	v0,at,1b2c <EnSt_Init+0xb0>
    1b18:	02002025 	move	a0,s0
    1b1c:	8e190004 	lw	t9,4(s0)
    1b20:	8602001c 	lh	v0,28(s0)
    1b24:	37280080 	ori	t0,t9,0x80
    1b28:	ae080004 	sw	t0,4(s0)
    1b2c:	24010001 	li	at,1
    1b30:	14410003 	bne	v0,at,1b40 <EnSt_Init+0xc4>
    1b34:	24090005 	li	t1,5
    1b38:	10000002 	b	1b44 <EnSt_Init+0xc8>
    1b3c:	a2090117 	sb	t1,279(s0)
    1b40:	a20a0117 	sb	t2,279(s0)
    1b44:	0c000000 	jal	0 <EnSt_SetupAction>
    1b48:	8fa50044 	lw	a1,68(sp)
    1b4c:	8e0b0004 	lw	t3,4(s0)
    1b50:	3c010100 	lui	at,0x100
    1b54:	02002025 	move	a0,s0
    1b58:	356c4000 	ori	t4,t3,0x4000
    1b5c:	ae0c0004 	sw	t4,4(s0)
    1b60:	01817025 	or	t6,t4,at
    1b64:	0c000000 	jal	0 <EnSt_SetupAction>
    1b68:	ae0e0004 	sw	t6,4(s0)
    1b6c:	44802000 	mtc1	zero,$f4
    1b70:	860f0032 	lh	t7,50(s0)
    1b74:	3c050000 	lui	a1,0x0
    1b78:	24a50000 	addiu	a1,a1,0
    1b7c:	02002025 	move	a0,s0
    1b80:	e604006c 	swc1	$f4,108(s0)
    1b84:	0c000000 	jal	0 <EnSt_SetupAction>
    1b88:	a60f03bc 	sh	t7,956(s0)
    1b8c:	8fbf002c 	lw	ra,44(sp)
    1b90:	8fb00028 	lw	s0,40(sp)
    1b94:	27bd0040 	addiu	sp,sp,64
    1b98:	03e00008 	jr	ra
    1b9c:	00000000 	nop

00001ba0 <EnSt_Destroy>:
    1ba0:	27bdffd0 	addiu	sp,sp,-48
    1ba4:	afb30024 	sw	s3,36(sp)
    1ba8:	00809825 	move	s3,a0
    1bac:	afb40028 	sw	s4,40(sp)
    1bb0:	00a0a025 	move	s4,a1
    1bb4:	afbf002c 	sw	ra,44(sp)
    1bb8:	afb20020 	sw	s2,32(sp)
    1bbc:	afb1001c 	sw	s1,28(sp)
    1bc0:	afb00018 	sw	s0,24(sp)
    1bc4:	00a02025 	move	a0,a1
    1bc8:	0c000000 	jal	0 <EnSt_SetupAction>
    1bcc:	8e650404 	lw	a1,1028(s3)
    1bd0:	00008025 	move	s0,zero
    1bd4:	26710194 	addiu	s1,s3,404
    1bd8:	241201c8 	li	s2,456
    1bdc:	02802025 	move	a0,s4
    1be0:	0c000000 	jal	0 <EnSt_SetupAction>
    1be4:	02202825 	move	a1,s1
    1be8:	2610004c 	addiu	s0,s0,76
    1bec:	1612fffb 	bne	s0,s2,1bdc <EnSt_Destroy+0x3c>
    1bf0:	2631004c 	addiu	s1,s1,76
    1bf4:	02802025 	move	a0,s4
    1bf8:	0c000000 	jal	0 <EnSt_SetupAction>
    1bfc:	2665035c 	addiu	a1,s3,860
    1c00:	8fbf002c 	lw	ra,44(sp)
    1c04:	8fb00018 	lw	s0,24(sp)
    1c08:	8fb1001c 	lw	s1,28(sp)
    1c0c:	8fb20020 	lw	s2,32(sp)
    1c10:	8fb30024 	lw	s3,36(sp)
    1c14:	8fb40028 	lw	s4,40(sp)
    1c18:	03e00008 	jr	ra
    1c1c:	27bd0030 	addiu	sp,sp,48

00001c20 <EnSt_WaitOnCeiling>:
    1c20:	27bdffe8 	addiu	sp,sp,-24
    1c24:	afbf0014 	sw	ra,20(sp)
    1c28:	afa40018 	sw	a0,24(sp)
    1c2c:	0c000000 	jal	0 <EnSt_SetupAction>
    1c30:	afa5001c 	sw	a1,28(sp)
    1c34:	10400009 	beqz	v0,1c5c <EnSt_WaitOnCeiling+0x3c>
    1c38:	8fa40018 	lw	a0,24(sp)
    1c3c:	0c000000 	jal	0 <EnSt_SetupAction>
    1c40:	8fa40018 	lw	a0,24(sp)
    1c44:	3c050000 	lui	a1,0x0
    1c48:	24a50000 	addiu	a1,a1,0
    1c4c:	0c000000 	jal	0 <EnSt_SetupAction>
    1c50:	8fa40018 	lw	a0,24(sp)
    1c54:	10000004 	b	1c68 <EnSt_WaitOnCeiling+0x48>
    1c58:	8fbf0014 	lw	ra,20(sp)
    1c5c:	0c000000 	jal	0 <EnSt_SetupAction>
    1c60:	8fa5001c 	lw	a1,28(sp)
    1c64:	8fbf0014 	lw	ra,20(sp)
    1c68:	27bd0018 	addiu	sp,sp,24
    1c6c:	03e00008 	jr	ra
    1c70:	00000000 	nop

00001c74 <EnSt_WaitOnGround>:
    1c74:	27bdffe0 	addiu	sp,sp,-32
    1c78:	afbf001c 	sw	ra,28(sp)
    1c7c:	afb00018 	sw	s0,24(sp)
    1c80:	afa50024 	sw	a1,36(sp)
    1c84:	848203cc 	lh	v0,972(a0)
    1c88:	00808025 	move	s0,a0
    1c8c:	10400009 	beqz	v0,1cb4 <EnSt_WaitOnGround+0x40>
    1c90:	244effff 	addiu	t6,v0,-1
    1c94:	a48e03cc 	sh	t6,972(a0)
    1c98:	848f03cc 	lh	t7,972(a0)
    1c9c:	3c050000 	lui	a1,0x0
    1ca0:	24a50000 	addiu	a1,a1,0
    1ca4:	15e00003 	bnez	t7,1cb4 <EnSt_WaitOnGround+0x40>
    1ca8:	2484014c 	addiu	a0,a0,332
    1cac:	0c000000 	jal	0 <EnSt_SetupAction>
    1cb0:	24060003 	li	a2,3
    1cb4:	860203c2 	lh	v0,962(s0)
    1cb8:	10400009 	beqz	v0,1ce0 <EnSt_WaitOnGround+0x6c>
    1cbc:	2458ffff 	addiu	t8,v0,-1
    1cc0:	a61803c2 	sh	t8,962(s0)
    1cc4:	861903c2 	lh	t9,962(s0)
    1cc8:	3c050000 	lui	a1,0x0
    1ccc:	24a50000 	addiu	a1,a1,0
    1cd0:	17200003 	bnez	t9,1ce0 <EnSt_WaitOnGround+0x6c>
    1cd4:	2604014c 	addiu	a0,s0,332
    1cd8:	0c000000 	jal	0 <EnSt_SetupAction>
    1cdc:	24060003 	li	a2,3
    1ce0:	02002025 	move	a0,s0
    1ce4:	0c000000 	jal	0 <EnSt_SetupAction>
    1ce8:	8fa50024 	lw	a1,36(sp)
    1cec:	5440000a 	bnezl	v0,1d18 <EnSt_WaitOnGround+0xa4>
    1cf0:	860203d2 	lh	v0,978(s0)
    1cf4:	0c000000 	jal	0 <EnSt_SetupAction>
    1cf8:	02002025 	move	a0,s0
    1cfc:	3c050000 	lui	a1,0x0
    1d00:	24a50000 	addiu	a1,a1,0
    1d04:	0c000000 	jal	0 <EnSt_SetupAction>
    1d08:	02002025 	move	a0,s0
    1d0c:	10000013 	b	1d5c <EnSt_WaitOnGround+0xe8>
    1d10:	8fbf001c 	lw	ra,28(sp)
    1d14:	860203d2 	lh	v0,978(s0)
    1d18:	02002025 	move	a0,s0
    1d1c:	14400003 	bnez	v0,1d2c <EnSt_WaitOnGround+0xb8>
    1d20:	2448ffff 	addiu	t0,v0,-1
    1d24:	10000003 	b	1d34 <EnSt_WaitOnGround+0xc0>
    1d28:	00001825 	move	v1,zero
    1d2c:	a60803d2 	sh	t0,978(s0)
    1d30:	860303d2 	lh	v1,978(s0)
    1d34:	54600006 	bnezl	v1,1d50 <EnSt_WaitOnGround+0xdc>
    1d38:	02002025 	move	a0,s0
    1d3c:	0c000000 	jal	0 <EnSt_SetupAction>
    1d40:	2405386a 	li	a1,14442
    1d44:	24090040 	li	t1,64
    1d48:	a60903d2 	sh	t1,978(s0)
    1d4c:	02002025 	move	a0,s0
    1d50:	0c000000 	jal	0 <EnSt_SetupAction>
    1d54:	8fa50024 	lw	a1,36(sp)
    1d58:	8fbf001c 	lw	ra,28(sp)
    1d5c:	8fb00018 	lw	s0,24(sp)
    1d60:	27bd0020 	addiu	sp,sp,32
    1d64:	03e00008 	jr	ra
    1d68:	00000000 	nop

00001d6c <EnSt_LandOnGround>:
    1d6c:	27bdffd8 	addiu	sp,sp,-40
    1d70:	afbf0024 	sw	ra,36(sp)
    1d74:	afb00020 	sw	s0,32(sp)
    1d78:	afa5002c 	sw	a1,44(sp)
    1d7c:	848203c2 	lh	v0,962(a0)
    1d80:	00808025 	move	s0,a0
    1d84:	10400009 	beqz	v0,1dac <EnSt_LandOnGround+0x40>
    1d88:	244effff 	addiu	t6,v0,-1
    1d8c:	a48e03c2 	sh	t6,962(a0)
    1d90:	848f03c2 	lh	t7,962(a0)
    1d94:	3c050000 	lui	a1,0x0
    1d98:	24a50000 	addiu	a1,a1,0
    1d9c:	15e00003 	bnez	t7,1dac <EnSt_LandOnGround+0x40>
    1da0:	2484014c 	addiu	a0,a0,332
    1da4:	0c000000 	jal	0 <EnSt_SetupAction>
    1da8:	24060003 	li	a2,3
    1dac:	860203cc 	lh	v0,972(s0)
    1db0:	10400009 	beqz	v0,1dd8 <EnSt_LandOnGround+0x6c>
    1db4:	2458ffff 	addiu	t8,v0,-1
    1db8:	a61803cc 	sh	t8,972(s0)
    1dbc:	861903cc 	lh	t9,972(s0)
    1dc0:	3c050000 	lui	a1,0x0
    1dc4:	24a50000 	addiu	a1,a1,0
    1dc8:	17200003 	bnez	t9,1dd8 <EnSt_LandOnGround+0x6c>
    1dcc:	2604014c 	addiu	a0,s0,332
    1dd0:	0c000000 	jal	0 <EnSt_SetupAction>
    1dd4:	24060003 	li	a2,3
    1dd8:	860803d2 	lh	t0,978(s0)
    1ddc:	2401000e 	li	at,14
    1de0:	02002025 	move	a0,s0
    1de4:	25090001 	addiu	t1,t0,1
    1de8:	a60903d2 	sh	t1,978(s0)
    1dec:	860a03d2 	lh	t2,978(s0)
    1df0:	55410004 	bnel	t2,at,1e04 <EnSt_LandOnGround+0x98>
    1df4:	c6040080 	lwc1	$f4,128(s0)
    1df8:	0c000000 	jal	0 <EnSt_SetupAction>
    1dfc:	240539e1 	li	a1,14817
    1e00:	c6040080 	lwc1	$f4,128(s0)
    1e04:	c606040c 	lwc1	$f6,1036(s0)
    1e08:	c60a0028 	lwc1	$f10,40(s0)
    1e0c:	3c063e99 	lui	a2,0x3e99
    1e10:	46062200 	add.s	$f8,$f4,$f6
    1e14:	34c6999a 	ori	a2,a2,0x999a
    1e18:	26040060 	addiu	a0,s0,96
    1e1c:	3c054000 	lui	a1,0x4000
    1e20:	460a403c 	c.lt.s	$f8,$f10
    1e24:	00000000 	nop
    1e28:	45020009 	bc1fl	1e50 <EnSt_LandOnGround+0xe4>
    1e2c:	44808000 	mtc1	zero,$f16
    1e30:	3c050000 	lui	a1,0x0
    1e34:	a60003d2 	sh	zero,978(s0)
    1e38:	24a50000 	addiu	a1,a1,0
    1e3c:	0c000000 	jal	0 <EnSt_SetupAction>
    1e40:	02002025 	move	a0,s0
    1e44:	10000006 	b	1e60 <EnSt_LandOnGround+0xf4>
    1e48:	8fbf0024 	lw	ra,36(sp)
    1e4c:	44808000 	mtc1	zero,$f16
    1e50:	3c073f80 	lui	a3,0x3f80
    1e54:	0c000000 	jal	0 <EnSt_SetupAction>
    1e58:	e7b00010 	swc1	$f16,16(sp)
    1e5c:	8fbf0024 	lw	ra,36(sp)
    1e60:	8fb00020 	lw	s0,32(sp)
    1e64:	27bd0028 	addiu	sp,sp,40
    1e68:	03e00008 	jr	ra
    1e6c:	00000000 	nop

00001e70 <EnSt_MoveToGround>:
    1e70:	27bdffe0 	addiu	sp,sp,-32
    1e74:	afbf001c 	sw	ra,28(sp)
    1e78:	afb00018 	sw	s0,24(sp)
    1e7c:	afa50024 	sw	a1,36(sp)
    1e80:	848203cc 	lh	v0,972(a0)
    1e84:	00808025 	move	s0,a0
    1e88:	10400009 	beqz	v0,1eb0 <EnSt_MoveToGround+0x40>
    1e8c:	244effff 	addiu	t6,v0,-1
    1e90:	a48e03cc 	sh	t6,972(a0)
    1e94:	848f03cc 	lh	t7,972(a0)
    1e98:	3c050000 	lui	a1,0x0
    1e9c:	24a50000 	addiu	a1,a1,0
    1ea0:	15e00003 	bnez	t7,1eb0 <EnSt_MoveToGround+0x40>
    1ea4:	2484014c 	addiu	a0,a0,332
    1ea8:	0c000000 	jal	0 <EnSt_SetupAction>
    1eac:	24060005 	li	a2,5
    1eb0:	02002025 	move	a0,s0
    1eb4:	0c000000 	jal	0 <EnSt_SetupAction>
    1eb8:	8fa50024 	lw	a1,36(sp)
    1ebc:	14400009 	bnez	v0,1ee4 <EnSt_MoveToGround+0x74>
    1ec0:	00000000 	nop
    1ec4:	0c000000 	jal	0 <EnSt_SetupAction>
    1ec8:	02002025 	move	a0,s0
    1ecc:	3c050000 	lui	a1,0x0
    1ed0:	24a50000 	addiu	a1,a1,0
    1ed4:	0c000000 	jal	0 <EnSt_SetupAction>
    1ed8:	02002025 	move	a0,s0
    1edc:	1000001e 	b	1f58 <EnSt_MoveToGround+0xe8>
    1ee0:	8fbf001c 	lw	ra,28(sp)
    1ee4:	0c000000 	jal	0 <EnSt_SetupAction>
    1ee8:	02002025 	move	a0,s0
    1eec:	1040000b 	beqz	v0,1f1c <EnSt_MoveToGround+0xac>
    1ef0:	02002025 	move	a0,s0
    1ef4:	0c000000 	jal	0 <EnSt_SetupAction>
    1ef8:	8fa50024 	lw	a1,36(sp)
    1efc:	0c000000 	jal	0 <EnSt_SetupAction>
    1f00:	02002025 	move	a0,s0
    1f04:	3c050000 	lui	a1,0x0
    1f08:	24a50000 	addiu	a1,a1,0
    1f0c:	0c000000 	jal	0 <EnSt_SetupAction>
    1f10:	02002025 	move	a0,s0
    1f14:	10000010 	b	1f58 <EnSt_MoveToGround+0xe8>
    1f18:	8fbf001c 	lw	ra,28(sp)
    1f1c:	860203d2 	lh	v0,978(s0)
    1f20:	02002025 	move	a0,s0
    1f24:	14400003 	bnez	v0,1f34 <EnSt_MoveToGround+0xc4>
    1f28:	2458ffff 	addiu	t8,v0,-1
    1f2c:	10000003 	b	1f3c <EnSt_MoveToGround+0xcc>
    1f30:	00001825 	move	v1,zero
    1f34:	a61803d2 	sh	t8,978(s0)
    1f38:	860303d2 	lh	v1,978(s0)
    1f3c:	54600006 	bnezl	v1,1f58 <EnSt_MoveToGround+0xe8>
    1f40:	8fbf001c 	lw	ra,28(sp)
    1f44:	0c000000 	jal	0 <EnSt_SetupAction>
    1f48:	24053868 	li	a1,14440
    1f4c:	24190003 	li	t9,3
    1f50:	a61903d2 	sh	t9,978(s0)
    1f54:	8fbf001c 	lw	ra,28(sp)
    1f58:	8fb00018 	lw	s0,24(sp)
    1f5c:	27bd0020 	addiu	sp,sp,32
    1f60:	03e00008 	jr	ra
    1f64:	00000000 	nop

00001f68 <EnSt_ReturnToCeiling>:
    1f68:	27bdffd8 	addiu	sp,sp,-40
    1f6c:	afbf001c 	sw	ra,28(sp)
    1f70:	afb00018 	sw	s0,24(sp)
    1f74:	afa5002c 	sw	a1,44(sp)
    1f78:	3c013f80 	lui	at,0x3f80
    1f7c:	44810000 	mtc1	at,$f0
    1f80:	c4860160 	lwc1	$f6,352(a0)
    1f84:	c4840164 	lwc1	$f4,356(a0)
    1f88:	00808025 	move	s0,a0
    1f8c:	46003201 	sub.s	$f8,$f6,$f0
    1f90:	46082283 	div.s	$f10,$f4,$f8
    1f94:	e7aa0024 	swc1	$f10,36(sp)
    1f98:	c7b00024 	lwc1	$f16,36(sp)
    1f9c:	46008032 	c.eq.s	$f16,$f0
    1fa0:	00000000 	nop
    1fa4:	45020004 	bc1fl	1fb8 <EnSt_ReturnToCeiling+0x50>
    1fa8:	02002025 	move	a0,s0
    1fac:	0c000000 	jal	0 <EnSt_SetupAction>
    1fb0:	00000000 	nop
    1fb4:	02002025 	move	a0,s0
    1fb8:	0c000000 	jal	0 <EnSt_SetupAction>
    1fbc:	8fa5002c 	lw	a1,44(sp)
    1fc0:	10400009 	beqz	v0,1fe8 <EnSt_ReturnToCeiling+0x80>
    1fc4:	00000000 	nop
    1fc8:	0c000000 	jal	0 <EnSt_SetupAction>
    1fcc:	02002025 	move	a0,s0
    1fd0:	3c050000 	lui	a1,0x0
    1fd4:	24a50000 	addiu	a1,a1,0
    1fd8:	0c000000 	jal	0 <EnSt_SetupAction>
    1fdc:	02002025 	move	a0,s0
    1fe0:	10000012 	b	202c <EnSt_ReturnToCeiling+0xc4>
    1fe4:	8fbf001c 	lw	ra,28(sp)
    1fe8:	0c000000 	jal	0 <EnSt_SetupAction>
    1fec:	02002025 	move	a0,s0
    1ff0:	10400009 	beqz	v0,2018 <EnSt_ReturnToCeiling+0xb0>
    1ff4:	3c014080 	lui	at,0x4080
    1ff8:	0c000000 	jal	0 <EnSt_SetupAction>
    1ffc:	02002025 	move	a0,s0
    2000:	3c050000 	lui	a1,0x0
    2004:	24a50000 	addiu	a1,a1,0
    2008:	0c000000 	jal	0 <EnSt_SetupAction>
    200c:	02002025 	move	a0,s0
    2010:	10000006 	b	202c <EnSt_ReturnToCeiling+0xc4>
    2014:	8fbf001c 	lw	ra,28(sp)
    2018:	44819000 	mtc1	at,$f18
    201c:	c7a60024 	lwc1	$f6,36(sp)
    2020:	46069102 	mul.s	$f4,$f18,$f6
    2024:	e6040060 	swc1	$f4,96(s0)
    2028:	8fbf001c 	lw	ra,28(sp)
    202c:	8fb00018 	lw	s0,24(sp)
    2030:	27bd0028 	addiu	sp,sp,40
    2034:	03e00008 	jr	ra
    2038:	00000000 	nop

0000203c <EnSt_BounceAround>:
    203c:	27bdffd8 	addiu	sp,sp,-40
    2040:	afbf0024 	sw	ra,36(sp)
    2044:	afb00020 	sw	s0,32(sp)
    2048:	afa5002c 	sw	a1,44(sp)
    204c:	848e03d8 	lh	t6,984(a0)
    2050:	00808025 	move	s0,a0
    2054:	0c000000 	jal	0 <EnSt_SetupAction>
    2058:	a08e0114 	sb	t6,276(a0)
    205c:	860f0030 	lh	t7,48(s0)
    2060:	86190034 	lh	t9,52(s0)
    2064:	02002025 	move	a0,s0
    2068:	25f80800 	addiu	t8,t7,2048
    206c:	a6180030 	sh	t8,48(s0)
    2070:	8a0a0030 	lwl	t2,48(s0)
    2074:	9a0a0033 	lwr	t2,51(s0)
    2078:	2728f800 	addiu	t0,t9,-2048
    207c:	a6080034 	sh	t0,52(s0)
    2080:	aa0a00b4 	swl	t2,180(s0)
    2084:	a60800b8 	sh	t0,184(s0)
    2088:	ba0a00b7 	swr	t2,183(s0)
    208c:	0c000000 	jal	0 <EnSt_SetupAction>
    2090:	8fa5002c 	lw	a1,44(sp)
    2094:	10400010 	beqz	v0,20d8 <EnSt_BounceAround+0x9c>
    2098:	260400bc 	addiu	a0,s0,188
    209c:	3c0143c8 	lui	at,0x43c8
    20a0:	44812000 	mtc1	at,$f4
    20a4:	3c013f80 	lui	at,0x3f80
    20a8:	44813000 	mtc1	at,$f6
    20ac:	3c01c000 	lui	at,0xc000
    20b0:	44814000 	mtc1	at,$f8
    20b4:	3c050000 	lui	a1,0x0
    20b8:	24a50000 	addiu	a1,a1,0
    20bc:	02002025 	move	a0,s0
    20c0:	e60400bc 	swc1	$f4,188(s0)
    20c4:	e6060068 	swc1	$f6,104(s0)
    20c8:	0c000000 	jal	0 <EnSt_SetupAction>
    20cc:	e608006c 	swc1	$f8,108(s0)
    20d0:	1000000a 	b	20fc <EnSt_BounceAround+0xc0>
    20d4:	8fbf0024 	lw	ra,36(sp)
    20d8:	44805000 	mtc1	zero,$f10
    20dc:	3c063ecc 	lui	a2,0x3ecc
    20e0:	3c07461c 	lui	a3,0x461c
    20e4:	34e74000 	ori	a3,a3,0x4000
    20e8:	34c6cccd 	ori	a2,a2,0xcccd
    20ec:	3c0543c8 	lui	a1,0x43c8
    20f0:	0c000000 	jal	0 <EnSt_SetupAction>
    20f4:	e7aa0010 	swc1	$f10,16(sp)
    20f8:	8fbf0024 	lw	ra,36(sp)
    20fc:	8fb00020 	lw	s0,32(sp)
    2100:	27bd0028 	addiu	sp,sp,40
    2104:	03e00008 	jr	ra
    2108:	00000000 	nop

0000210c <EnSt_FinishBouncing>:
    210c:	27bdffc0 	addiu	sp,sp,-64
    2110:	3c0e0000 	lui	t6,0x0
    2114:	afbf0024 	sw	ra,36(sp)
    2118:	afb00020 	sw	s0,32(sp)
    211c:	afa50044 	sw	a1,68(sp)
    2120:	25ce02a4 	addiu	t6,t6,676
    2124:	8dd80000 	lw	t8,0(t6)
    2128:	27a60034 	addiu	a2,sp,52
    212c:	00808025 	move	s0,a0
    2130:	acd80000 	sw	t8,0(a2)
    2134:	8dcf0004 	lw	t7,4(t6)
    2138:	accf0004 	sw	t7,4(a2)
    213c:	8dd80008 	lw	t8,8(t6)
    2140:	acd80008 	sw	t8,8(a2)
    2144:	848303d8 	lh	v1,984(a0)
    2148:	14600003 	bnez	v1,2158 <EnSt_FinishBouncing+0x4c>
    214c:	2479ffff 	addiu	t9,v1,-1
    2150:	10000003 	b	2160 <EnSt_FinishBouncing+0x54>
    2154:	00001025 	move	v0,zero
    2158:	a61903d8 	sh	t9,984(s0)
    215c:	860203d8 	lh	v0,984(s0)
    2160:	54400010 	bnezl	v0,21a4 <EnSt_FinishBouncing+0x98>
    2164:	860303c6 	lh	v1,966(s0)
    2168:	8cc90000 	lw	t1,0(a2)
    216c:	240a0008 	li	t2,8
    2170:	3c050000 	lui	a1,0x0
    2174:	ae09005c 	sw	t1,92(s0)
    2178:	8cc80004 	lw	t0,4(a2)
    217c:	24a50000 	addiu	a1,a1,0
    2180:	02002025 	move	a0,s0
    2184:	ae080060 	sw	t0,96(s0)
    2188:	8cc90008 	lw	t1,8(a2)
    218c:	a60a03d6 	sh	t2,982(s0)
    2190:	0c000000 	jal	0 <EnSt_SetupAction>
    2194:	ae090064 	sw	t1,100(s0)
    2198:	10000035 	b	2270 <EnSt_FinishBouncing+0x164>
    219c:	8fbf0024 	lw	ra,36(sp)
    21a0:	860303c6 	lh	v1,966(s0)
    21a4:	26040024 	addiu	a0,s0,36
    21a8:	14600003 	bnez	v1,21b8 <EnSt_FinishBouncing+0xac>
    21ac:	246bffff 	addiu	t3,v1,-1
    21b0:	10000003 	b	21c0 <EnSt_FinishBouncing+0xb4>
    21b4:	00001025 	move	v0,zero
    21b8:	a60b03c6 	sh	t3,966(s0)
    21bc:	860203c6 	lh	v0,966(s0)
    21c0:	54400007 	bnezl	v0,21e0 <EnSt_FinishBouncing+0xd4>
    21c4:	26040030 	addiu	a0,s0,48
    21c8:	0c000000 	jal	0 <EnSt_SetupAction>
    21cc:	26050008 	addiu	a1,s0,8
    21d0:	240c0008 	li	t4,8
    21d4:	a60203be 	sh	v0,958(s0)
    21d8:	a60c03c6 	sh	t4,966(s0)
    21dc:	26040030 	addiu	a0,s0,48
    21e0:	240d0001 	li	t5,1
    21e4:	afad0010 	sw	t5,16(sp)
    21e8:	afa4002c 	sw	a0,44(sp)
    21ec:	24053ffc 	li	a1,16380
    21f0:	24060004 	li	a2,4
    21f4:	0c000000 	jal	0 <EnSt_SetupAction>
    21f8:	24072710 	li	a3,10000
    21fc:	240e0001 	li	t6,1
    2200:	afae0010 	sw	t6,16(sp)
    2204:	26040034 	addiu	a0,s0,52
    2208:	00002825 	move	a1,zero
    220c:	24060004 	li	a2,4
    2210:	0c000000 	jal	0 <EnSt_SetupAction>
    2214:	24072710 	li	a3,10000
    2218:	860503be 	lh	a1,958(s0)
    221c:	240f0001 	li	t7,1
    2220:	afaf0010 	sw	t7,16(sp)
    2224:	26040032 	addiu	a0,s0,50
    2228:	2406000a 	li	a2,10
    222c:	0c000000 	jal	0 <EnSt_SetupAction>
    2230:	24072710 	li	a3,10000
    2234:	8fb8002c 	lw	t8,44(sp)
    2238:	02002025 	move	a0,s0
    223c:	8b080000 	lwl	t0,0(t8)
    2240:	9b080003 	lwr	t0,3(t8)
    2244:	aa0800b4 	swl	t0,180(s0)
    2248:	ba0800b7 	swr	t0,183(s0)
    224c:	97080004 	lhu	t0,4(t8)
    2250:	0c000000 	jal	0 <EnSt_SetupAction>
    2254:	a60800b8 	sh	t0,184(s0)
    2258:	24090002 	li	t1,2
    225c:	a60903c0 	sh	t1,960(s0)
    2260:	8fa50044 	lw	a1,68(sp)
    2264:	0c000000 	jal	0 <EnSt_SetupAction>
    2268:	02002025 	move	a0,s0
    226c:	8fbf0024 	lw	ra,36(sp)
    2270:	8fb00020 	lw	s0,32(sp)
    2274:	27bd0040 	addiu	sp,sp,64
    2278:	03e00008 	jr	ra
    227c:	00000000 	nop

00002280 <EnSt_Die>:
    2280:	27bdffe0 	addiu	sp,sp,-32
    2284:	afbf001c 	sw	ra,28(sp)
    2288:	afb00018 	sw	s0,24(sp)
    228c:	afa50024 	sw	a1,36(sp)
    2290:	848203d6 	lh	v0,982(a0)
    2294:	00808025 	move	s0,a0
    2298:	00002825 	move	a1,zero
    229c:	14400003 	bnez	v0,22ac <EnSt_Die+0x2c>
    22a0:	244effff 	addiu	t6,v0,-1
    22a4:	10000003 	b	22b4 <EnSt_Die+0x34>
    22a8:	00001825 	move	v1,zero
    22ac:	a60e03d6 	sh	t6,982(s0)
    22b0:	860303d6 	lh	v1,982(s0)
    22b4:	10600006 	beqz	v1,22d0 <EnSt_Die+0x50>
    22b8:	8fa40024 	lw	a0,36(sp)
    22bc:	02002025 	move	a0,s0
    22c0:	0c000000 	jal	0 <EnSt_SetupAction>
    22c4:	8fa50024 	lw	a1,36(sp)
    22c8:	10000007 	b	22e8 <EnSt_Die+0x68>
    22cc:	8fbf001c 	lw	ra,28(sp)
    22d0:	26060024 	addiu	a2,s0,36
    22d4:	0c000000 	jal	0 <EnSt_SetupAction>
    22d8:	240700e0 	li	a3,224
    22dc:	0c000000 	jal	0 <EnSt_SetupAction>
    22e0:	02002025 	move	a0,s0
    22e4:	8fbf001c 	lw	ra,28(sp)
    22e8:	8fb00018 	lw	s0,24(sp)
    22ec:	27bd0020 	addiu	sp,sp,32
    22f0:	03e00008 	jr	ra
    22f4:	00000000 	nop

000022f8 <EnSt_StartOnCeilingOrGround>:
    22f8:	27bdffe0 	addiu	sp,sp,-32
    22fc:	afbf001c 	sw	ra,28(sp)
    2300:	afb00018 	sw	s0,24(sp)
    2304:	00808025 	move	s0,a0
    2308:	0c000000 	jal	0 <EnSt_SetupAction>
    230c:	afa50024 	sw	a1,36(sp)
    2310:	1440000b 	bnez	v0,2340 <EnSt_StartOnCeilingOrGround+0x48>
    2314:	240e003c 	li	t6,60
    2318:	3c050000 	lui	a1,0x0
    231c:	a60e03c8 	sh	t6,968(s0)
    2320:	24a50000 	addiu	a1,a1,0
    2324:	0c000000 	jal	0 <EnSt_SetupAction>
    2328:	02002025 	move	a0,s0
    232c:	02002025 	move	a0,s0
    2330:	0c000000 	jal	0 <EnSt_SetupAction>
    2334:	8fa50024 	lw	a1,36(sp)
    2338:	1000000b 	b	2368 <EnSt_StartOnCeilingOrGround+0x70>
    233c:	8fbf001c 	lw	ra,28(sp)
    2340:	0c000000 	jal	0 <EnSt_SetupAction>
    2344:	02002025 	move	a0,s0
    2348:	3c050000 	lui	a1,0x0
    234c:	24a50000 	addiu	a1,a1,0
    2350:	0c000000 	jal	0 <EnSt_SetupAction>
    2354:	02002025 	move	a0,s0
    2358:	02002025 	move	a0,s0
    235c:	0c000000 	jal	0 <EnSt_SetupAction>
    2360:	8fa50024 	lw	a1,36(sp)
    2364:	8fbf001c 	lw	ra,28(sp)
    2368:	8fb00018 	lw	s0,24(sp)
    236c:	27bd0020 	addiu	sp,sp,32
    2370:	03e00008 	jr	ra
    2374:	00000000 	nop

00002378 <EnSt_Update>:
    2378:	27bdffc8 	addiu	sp,sp,-56
    237c:	3c0e0000 	lui	t6,0x0
    2380:	8dce02b0 	lw	t6,688(t6)
    2384:	afbf0024 	sw	ra,36(sp)
    2388:	afb00020 	sw	s0,32(sp)
    238c:	afa5003c 	sw	a1,60(sp)
    2390:	afae002c 	sw	t6,44(sp)
    2394:	8c8f0004 	lw	t7,4(a0)
    2398:	00808025 	move	s0,a0
    239c:	8fa5003c 	lw	a1,60(sp)
    23a0:	31f88000 	andi	t8,t7,0x8000
    23a4:	13000005 	beqz	t8,23bc <EnSt_Update+0x44>
    23a8:	00000000 	nop
    23ac:	0c000000 	jal	0 <EnSt_SetupAction>
    23b0:	2484014c 	addiu	a0,a0,332
    23b4:	1000004c 	b	24e8 <EnSt_Update+0x170>
    23b8:	8fbf0024 	lw	ra,36(sp)
    23bc:	0c000000 	jal	0 <EnSt_SetupAction>
    23c0:	02002025 	move	a0,s0
    23c4:	54400048 	bnezl	v0,24e8 <EnSt_Update+0x170>
    23c8:	8fbf0024 	lw	ra,36(sp)
    23cc:	861903ce 	lh	t9,974(s0)
    23d0:	57200004 	bnezl	t9,23e4 <EnSt_Update+0x6c>
    23d4:	860803c4 	lh	t0,964(s0)
    23d8:	0c000000 	jal	0 <EnSt_SetupAction>
    23dc:	2604014c 	addiu	a0,s0,332
    23e0:	860803c4 	lh	t0,964(s0)
    23e4:	55000007 	bnezl	t0,2404 <EnSt_Update+0x8c>
    23e8:	44800000 	mtc1	zero,$f0
    23ec:	860903ce 	lh	t1,974(s0)
    23f0:	55200004 	bnezl	t1,2404 <EnSt_Update+0x8c>
    23f4:	44800000 	mtc1	zero,$f0
    23f8:	0c000000 	jal	0 <EnSt_SetupAction>
    23fc:	02002025 	move	a0,s0
    2400:	44800000 	mtc1	zero,$f0
    2404:	240a0004 	li	t2,4
    2408:	afaa0014 	sw	t2,20(sp)
    240c:	44060000 	mfc1	a2,$f0
    2410:	44070000 	mfc1	a3,$f0
    2414:	8fa4003c 	lw	a0,60(sp)
    2418:	02002825 	move	a1,s0
    241c:	0c000000 	jal	0 <EnSt_SetupAction>
    2420:	e7a00010 	swc1	$f0,16(sp)
    2424:	860203ce 	lh	v0,974(s0)
    2428:	1440000b 	bnez	v0,2458 <EnSt_Update+0xe0>
    242c:	00000000 	nop
    2430:	860b03c4 	lh	t3,964(s0)
    2434:	15600008 	bnez	t3,2458 <EnSt_Update+0xe0>
    2438:	00000000 	nop
    243c:	8e190190 	lw	t9,400(s0)
    2440:	02002025 	move	a0,s0
    2444:	8fa5003c 	lw	a1,60(sp)
    2448:	0320f809 	jalr	t9
    244c:	00000000 	nop
    2450:	1000000a 	b	247c <EnSt_Update+0x104>
    2454:	02002025 	move	a0,s0
    2458:	10400005 	beqz	v0,2470 <EnSt_Update+0xf8>
    245c:	00000000 	nop
    2460:	0c000000 	jal	0 <EnSt_SetupAction>
    2464:	02002025 	move	a0,s0
    2468:	10000004 	b	247c <EnSt_Update+0x104>
    246c:	02002025 	move	a0,s0
    2470:	0c000000 	jal	0 <EnSt_SetupAction>
    2474:	02002025 	move	a0,s0
    2478:	02002025 	move	a0,s0
    247c:	0c000000 	jal	0 <EnSt_SetupAction>
    2480:	8fa5003c 	lw	a1,60(sp)
    2484:	8e0d0190 	lw	t5,400(s0)
    2488:	3c0c0000 	lui	t4,0x0
    248c:	258c0000 	addiu	t4,t4,0
    2490:	158d0008 	bne	t4,t5,24b4 <EnSt_Update+0x13c>
    2494:	02002025 	move	a0,s0
    2498:	8fae003c 	lw	t6,60(sp)
    249c:	240800ff 	li	t0,255
    24a0:	8dcf009c 	lw	t7,156(t6)
    24a4:	31f80010 	andi	t8,t7,0x10
    24a8:	53000003 	beqzl	t8,24b8 <EnSt_Update+0x140>
    24ac:	24090008 	li	t1,8
    24b0:	a3a8002c 	sb	t0,44(sp)
    24b4:	24090008 	li	t1,8
    24b8:	afa90010 	sw	t1,16(sp)
    24bc:	93a5002c 	lbu	a1,44(sp)
    24c0:	93a6002d 	lbu	a2,45(sp)
    24c4:	0c000000 	jal	0 <EnSt_SetupAction>
    24c8:	93a7002e 	lbu	a3,46(sp)
    24cc:	02002025 	move	a0,s0
    24d0:	0c000000 	jal	0 <EnSt_SetupAction>
    24d4:	8fa5003c 	lw	a1,60(sp)
    24d8:	02002025 	move	a0,s0
    24dc:	0c000000 	jal	0 <EnSt_SetupAction>
    24e0:	24050000 	li	a1,0
    24e4:	8fbf0024 	lw	ra,36(sp)
    24e8:	8fb00020 	lw	s0,32(sp)
    24ec:	27bd0038 	addiu	sp,sp,56
    24f0:	03e00008 	jr	ra
    24f4:	00000000 	nop

000024f8 <EnSt_OverrideLimbDraw>:
    24f8:	27bdffc0 	addiu	sp,sp,-64
    24fc:	afbf0014 	sw	ra,20(sp)
    2500:	afa40040 	sw	a0,64(sp)
    2504:	afa50044 	sw	a1,68(sp)
    2508:	afa60048 	sw	a2,72(sp)
    250c:	afa7004c 	sw	a3,76(sp)
    2510:	8c850000 	lw	a1,0(a0)
    2514:	3c060000 	lui	a2,0x0
    2518:	24c60000 	addiu	a2,a2,0
    251c:	27a40028 	addiu	a0,sp,40
    2520:	240708d4 	li	a3,2260
    2524:	0c000000 	jal	0 <EnSt_SetupAction>
    2528:	afa50038 	sw	a1,56(sp)
    252c:	8fa20044 	lw	v0,68(sp)
    2530:	24010001 	li	at,1
    2534:	8fa80038 	lw	t0,56(sp)
    2538:	10410006 	beq	v0,at,2554 <EnSt_OverrideLimbDraw+0x5c>
    253c:	8fa40054 	lw	a0,84(sp)
    2540:	24010004 	li	at,4
    2544:	50410015 	beql	v0,at,259c <EnSt_OverrideLimbDraw+0xa4>
    2548:	8d0302c0 	lw	v1,704(t0)
    254c:	10000028 	b	25f0 <EnSt_OverrideLimbDraw+0xf8>
    2550:	8fae0040 	lw	t6,64(sp)
    2554:	848203d4 	lh	v0,980(a0)
    2558:	50400025 	beqzl	v0,25f0 <EnSt_OverrideLimbDraw+0xf8>
    255c:	8fae0040 	lw	t6,64(sp)
    2560:	848f03c4 	lh	t7,964(a0)
    2564:	28410002 	slti	at,v0,2
    2568:	55e00021 	bnezl	t7,25f0 <EnSt_OverrideLimbDraw+0xf8>
    256c:	8fae0040 	lw	t6,64(sp)
    2570:	14200005 	bnez	at,2588 <EnSt_OverrideLimbDraw+0x90>
    2574:	00000000 	nop
    2578:	0c000000 	jal	0 <EnSt_SetupAction>
    257c:	00000000 	nop
    2580:	1000001b 	b	25f0 <EnSt_OverrideLimbDraw+0xf8>
    2584:	8fae0040 	lw	t6,64(sp)
    2588:	0c000000 	jal	0 <EnSt_SetupAction>
    258c:	00000000 	nop
    2590:	10000017 	b	25f0 <EnSt_OverrideLimbDraw+0xf8>
    2594:	8fae0040 	lw	t6,64(sp)
    2598:	8d0302c0 	lw	v1,704(t0)
    259c:	3c19e700 	lui	t9,0xe700
    25a0:	3c0afb00 	lui	t2,0xfb00
    25a4:	24780008 	addiu	t8,v1,8
    25a8:	ad1802c0 	sw	t8,704(t0)
    25ac:	ac600004 	sw	zero,4(v1)
    25b0:	ac790000 	sw	t9,0(v1)
    25b4:	8d0302c0 	lw	v1,704(t0)
    25b8:	8fa40054 	lw	a0,84(sp)
    25bc:	24690008 	addiu	t1,v1,8
    25c0:	ad0902c0 	sw	t1,704(t0)
    25c4:	ac6a0000 	sw	t2,0(v1)
    25c8:	908f03de 	lbu	t7,990(a0)
    25cc:	908c03dd 	lbu	t4,989(a0)
    25d0:	908a03df 	lbu	t2,991(a0)
    25d4:	000fc400 	sll	t8,t7,0x10
    25d8:	000c6e00 	sll	t5,t4,0x18
    25dc:	01b8c825 	or	t9,t5,t8
    25e0:	000a5a00 	sll	t3,t2,0x8
    25e4:	032b6025 	or	t4,t9,t3
    25e8:	ac6c0004 	sw	t4,4(v1)
    25ec:	8fae0040 	lw	t6,64(sp)
    25f0:	3c060000 	lui	a2,0x0
    25f4:	24c60010 	addiu	a2,a2,16
    25f8:	27a40028 	addiu	a0,sp,40
    25fc:	240708f7 	li	a3,2295
    2600:	0c000000 	jal	0 <EnSt_SetupAction>
    2604:	8dc50000 	lw	a1,0(t6)
    2608:	8fbf0014 	lw	ra,20(sp)
    260c:	27bd0040 	addiu	sp,sp,64
    2610:	00001025 	move	v0,zero
    2614:	03e00008 	jr	ra
    2618:	00000000 	nop

0000261c <EnSt_PostLimbDraw>:
    261c:	27bdffe8 	addiu	sp,sp,-24
    2620:	afa40018 	sw	a0,24(sp)
    2624:	afa5001c 	sw	a1,28(sp)
    2628:	00a02025 	move	a0,a1
    262c:	8fa50028 	lw	a1,40(sp)
    2630:	afbf0014 	sw	ra,20(sp)
    2634:	afa60020 	sw	a2,32(sp)
    2638:	afa70024 	sw	a3,36(sp)
    263c:	0c000000 	jal	0 <EnSt_SetupAction>
    2640:	24a5035c 	addiu	a1,a1,860
    2644:	8fbf0014 	lw	ra,20(sp)
    2648:	27bd0018 	addiu	sp,sp,24
    264c:	03e00008 	jr	ra
    2650:	00000000 	nop

00002654 <EnSt_Draw>:
    2654:	27bdffe0 	addiu	sp,sp,-32
    2658:	afbf001c 	sw	ra,28(sp)
    265c:	afa40020 	sw	a0,32(sp)
    2660:	0c000000 	jal	0 <EnSt_SetupAction>
    2664:	afa50024 	sw	a1,36(sp)
    2668:	8fae0024 	lw	t6,36(sp)
    266c:	0c000000 	jal	0 <EnSt_SetupAction>
    2670:	8dc40000 	lw	a0,0(t6)
    2674:	8fa20020 	lw	v0,32(sp)
    2678:	3c0f0000 	lui	t7,0x0
    267c:	25ef0000 	addiu	t7,t7,0
    2680:	3c070000 	lui	a3,0x0
    2684:	8c450150 	lw	a1,336(v0)
    2688:	8c46016c 	lw	a2,364(v0)
    268c:	afaf0010 	sw	t7,16(sp)
    2690:	24e70000 	addiu	a3,a3,0
    2694:	8fa40024 	lw	a0,36(sp)
    2698:	0c000000 	jal	0 <EnSt_SetupAction>
    269c:	afa20014 	sw	v0,20(sp)
    26a0:	8fbf001c 	lw	ra,28(sp)
    26a4:	27bd0020 	addiu	sp,sp,32
    26a8:	03e00008 	jr	ra
    26ac:	00000000 	nop
