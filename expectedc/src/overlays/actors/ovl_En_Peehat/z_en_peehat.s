
build/src/overlays/actors/ovl_En_Peehat/z_en_peehat.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80ACF4A0>:
       0:	03e00008 	jr	ra
       4:	ac8502b8 	sw	a1,696(a0)

00000008 <EnPeehat_Init>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	afb10028 	sw	s1,40(sp)
      10:	00a08825 	move	s1,a1
      14:	afbf002c 	sw	ra,44(sp)
      18:	afb00024 	sw	s0,36(sp)
      1c:	3c050000 	lui	a1,0x0
      20:	00808025 	move	s0,a0
      24:	0c000000 	jal	0 <func_80ACF4A0>
      28:	24a50000 	addiu	a1,a1,0
      2c:	3c053d13 	lui	a1,0x3d13
      30:	34a574bd 	ori	a1,a1,0x74bd
      34:	0c000000 	jal	0 <func_80ACF4A0>
      38:	02002025 	move	a0,s0
      3c:	3c060600 	lui	a2,0x600
      40:	3c070600 	lui	a3,0x600
      44:	260e0190 	addiu	t6,s0,400
      48:	260f0220 	addiu	t7,s0,544
      4c:	24180018 	li	t8,24
      50:	afb80018 	sw	t8,24(sp)
      54:	afaf0014 	sw	t7,20(sp)
      58:	afae0010 	sw	t6,16(sp)
      5c:	24e709c4 	addiu	a3,a3,2500
      60:	24c61c80 	addiu	a2,a2,7296
      64:	02202025 	move	a0,s1
      68:	0c000000 	jal	0 <func_80ACF4A0>
      6c:	2605014c 	addiu	a1,s0,332
      70:	3c060000 	lui	a2,0x0
      74:	24c60000 	addiu	a2,a2,0
      78:	260400b4 	addiu	a0,s0,180
      7c:	3c0542c8 	lui	a1,0x42c8
      80:	0c000000 	jal	0 <func_80ACF4A0>
      84:	3c0741d8 	lui	a3,0x41d8
      88:	8e080024 	lw	t0,36(s0)
      8c:	8e190028 	lw	t9,40(s0)
      90:	c6040028 	lwc1	$f4,40(s0)
      94:	ae080038 	sw	t0,56(s0)
      98:	8e08002c 	lw	t0,44(s0)
      9c:	3c0b0000 	lui	t3,0x0
      a0:	240900fe 	li	t1,254
      a4:	240a0006 	li	t2,6
      a8:	256b0000 	addiu	t3,t3,0
      ac:	ae0002d4 	sw	zero,724(s0)
      b0:	a6000032 	sh	zero,50(s0)
      b4:	a20900ae 	sb	t1,174(s0)
      b8:	a20a00af 	sb	t2,175(s0)
      bc:	ae0b0098 	sw	t3,152(s0)
      c0:	26050300 	addiu	a1,s0,768
      c4:	ae19003c 	sw	t9,60(s0)
      c8:	e6040080 	swc1	$f4,128(s0)
      cc:	ae080040 	sw	t0,64(s0)
      d0:	afa50034 	sw	a1,52(sp)
      d4:	0c000000 	jal	0 <func_80ACF4A0>
      d8:	02202025 	move	a0,s1
      dc:	3c070000 	lui	a3,0x0
      e0:	8fa50034 	lw	a1,52(sp)
      e4:	24e70000 	addiu	a3,a3,0
      e8:	02202025 	move	a0,s1
      ec:	0c000000 	jal	0 <func_80ACF4A0>
      f0:	02003025 	move	a2,s0
      f4:	260503ac 	addiu	a1,s0,940
      f8:	afa50034 	sw	a1,52(sp)
      fc:	0c000000 	jal	0 <func_80ACF4A0>
     100:	02202025 	move	a0,s1
     104:	3c070000 	lui	a3,0x0
     108:	8fa50034 	lw	a1,52(sp)
     10c:	24e70000 	addiu	a3,a3,0
     110:	02202025 	move	a0,s1
     114:	0c000000 	jal	0 <func_80ACF4A0>
     118:	02003025 	move	a2,s0
     11c:	2605034c 	addiu	a1,s0,844
     120:	afa50034 	sw	a1,52(sp)
     124:	0c000000 	jal	0 <func_80ACF4A0>
     128:	02202025 	move	a0,s1
     12c:	3c070000 	lui	a3,0x0
     130:	260c036c 	addiu	t4,s0,876
     134:	8fa50034 	lw	a1,52(sp)
     138:	afac0010 	sw	t4,16(sp)
     13c:	24e70000 	addiu	a3,a3,0
     140:	02202025 	move	a0,s1
     144:	0c000000 	jal	0 <func_80ACF4A0>
     148:	02003025 	move	a2,s0
     14c:	3c014439 	lui	at,0x4439
     150:	44813000 	mtc1	at,$f6
     154:	3c014496 	lui	at,0x4496
     158:	44814000 	mtc1	at,$f8
     15c:	3c01457a 	lui	at,0x457a
     160:	44815000 	mtc1	at,$f10
     164:	3c014448 	lui	at,0x4448
     168:	44818000 	mtc1	at,$f16
     16c:	3c0144e1 	lui	at,0x44e1
     170:	44819000 	mtc1	at,$f18
     174:	8602001c 	lh	v0,28(s0)
     178:	240d0048 	li	t5,72
     17c:	2401ffff 	li	at,-1
     180:	a20d0117 	sb	t5,279(s0)
     184:	e60602dc 	swc1	$f6,732(s0)
     188:	e60802d8 	swc1	$f8,728(s0)
     18c:	e60a00f4 	swc1	$f10,244(s0)
     190:	e61000f8 	swc1	$f16,248(s0)
     194:	10410008 	beq	v0,at,1b8 <EnPeehat_Init+0x1b0>
     198:	e61200fc 	swc1	$f18,252(s0)
     19c:	1040000a 	beqz	v0,1c8 <EnPeehat_Init+0x1c0>
     1a0:	3c010000 	lui	at,0x0
     1a4:	24010001 	li	at,1
     1a8:	10410016 	beq	v0,at,204 <EnPeehat_Init+0x1fc>
     1ac:	24180019 	li	t8,25
     1b0:	1000002c 	b	264 <EnPeehat_Init+0x25c>
     1b4:	8fbf002c 	lw	ra,44(sp)
     1b8:	0c000000 	jal	0 <func_80ACF4A0>
     1bc:	02002025 	move	a0,s0
     1c0:	10000028 	b	264 <EnPeehat_Init+0x25c>
     1c4:	8fbf002c 	lw	ra,44(sp)
     1c8:	c4240000 	lwc1	$f4,0(at)
     1cc:	3c01452f 	lui	at,0x452f
     1d0:	44813000 	mtc1	at,$f6
     1d4:	3c0144af 	lui	at,0x44af
     1d8:	44814000 	mtc1	at,$f8
     1dc:	02002025 	move	a0,s0
     1e0:	e60400f4 	swc1	$f4,244(s0)
     1e4:	e60602dc 	swc1	$f6,732(s0)
     1e8:	0c000000 	jal	0 <func_80ACF4A0>
     1ec:	e60802d8 	swc1	$f8,728(s0)
     1f0:	8e0e0004 	lw	t6,4(s0)
     1f4:	2401fffe 	li	at,-2
     1f8:	01c17824 	and	t7,t6,at
     1fc:	10000018 	b	260 <EnPeehat_Init+0x258>
     200:	ae0f0004 	sw	t7,4(s0)
     204:	3c010000 	lui	at,0x0
     208:	c4200000 	lwc1	$f0,0(at)
     20c:	3c010000 	lui	at,0x0
     210:	3c090001 	lui	t1,0x1
     214:	e6000058 	swc1	$f0,88(s0)
     218:	e6000050 	swc1	$f0,80(s0)
     21c:	c42a0000 	lwc1	$f10,0(at)
     220:	2419000f 	li	t9,15
     224:	2408fffb 	li	t0,-5
     228:	3529f824 	ori	t1,t1,0xf824
     22c:	240a0011 	li	t2,17
     230:	240b0009 	li	t3,9
     234:	240c0049 	li	t4,73
     238:	a6180340 	sh	t8,832(s0)
     23c:	a6190342 	sh	t9,834(s0)
     240:	a6080344 	sh	t0,836(s0)
     244:	ae090320 	sw	t1,800(s0)
     248:	a20a03bc 	sb	t2,956(s0)
     24c:	a20b03bd 	sb	t3,957(s0)
     250:	a20c0117 	sb	t4,279(s0)
     254:	02002025 	move	a0,s0
     258:	0c000000 	jal	0 <func_80ACF4A0>
     25c:	e60a0054 	swc1	$f10,84(s0)
     260:	8fbf002c 	lw	ra,44(sp)
     264:	8fb00024 	lw	s0,36(sp)
     268:	8fb10028 	lw	s1,40(sp)
     26c:	03e00008 	jr	ra
     270:	27bd0040 	addiu	sp,sp,64

00000274 <EnPeehat_Destroy>:
     274:	27bdffe8 	addiu	sp,sp,-24
     278:	afa40018 	sw	a0,24(sp)
     27c:	afa5001c 	sw	a1,28(sp)
     280:	00a02025 	move	a0,a1
     284:	8fa50018 	lw	a1,24(sp)
     288:	afbf0014 	sw	ra,20(sp)
     28c:	0c000000 	jal	0 <func_80ACF4A0>
     290:	24a50300 	addiu	a1,a1,768
     294:	8fa50018 	lw	a1,24(sp)
     298:	8fa4001c 	lw	a0,28(sp)
     29c:	0c000000 	jal	0 <func_80ACF4A0>
     2a0:	24a5034c 	addiu	a1,a1,844
     2a4:	8fa30018 	lw	v1,24(sp)
     2a8:	846e001c 	lh	t6,28(v1)
     2ac:	59c0000b 	blezl	t6,2dc <EnPeehat_Destroy+0x68>
     2b0:	8fbf0014 	lw	ra,20(sp)
     2b4:	8c620118 	lw	v0,280(v1)
     2b8:	50400008 	beqzl	v0,2dc <EnPeehat_Destroy+0x68>
     2bc:	8fbf0014 	lw	ra,20(sp)
     2c0:	8c4f0130 	lw	t7,304(v0)
     2c4:	51e00005 	beqzl	t7,2dc <EnPeehat_Destroy+0x68>
     2c8:	8fbf0014 	lw	ra,20(sp)
     2cc:	845802fa 	lh	t8,762(v0)
     2d0:	2719ffff 	addiu	t9,t8,-1
     2d4:	a45902fa 	sh	t9,762(v0)
     2d8:	8fbf0014 	lw	ra,20(sp)
     2dc:	27bd0018 	addiu	sp,sp,24
     2e0:	03e00008 	jr	ra
     2e4:	00000000 	nop

000002e8 <func_80ACF788>:
     2e8:	27bdff98 	addiu	sp,sp,-104
     2ec:	3c0f0000 	lui	t7,0x0
     2f0:	afbf002c 	sw	ra,44(sp)
     2f4:	afa40068 	sw	a0,104(sp)
     2f8:	afa5006c 	sw	a1,108(sp)
     2fc:	afa60070 	sw	a2,112(sp)
     300:	afa70074 	sw	a3,116(sp)
     304:	25ef0000 	addiu	t7,t7,0
     308:	8df90000 	lw	t9,0(t7)
     30c:	27ae0050 	addiu	t6,sp,80
     310:	8df80004 	lw	t8,4(t7)
     314:	add90000 	sw	t9,0(t6)
     318:	8df90008 	lw	t9,8(t7)
     31c:	3c090000 	lui	t1,0x0
     320:	25290000 	addiu	t1,t1,0
     324:	add80004 	sw	t8,4(t6)
     328:	add90008 	sw	t9,8(t6)
     32c:	8d2b0000 	lw	t3,0(t1)
     330:	27a80044 	addiu	t0,sp,68
     334:	8d2a0004 	lw	t2,4(t1)
     338:	ad0b0000 	sw	t3,0(t0)
     33c:	8d2b0008 	lw	t3,8(t1)
     340:	ad0a0004 	sw	t2,4(t0)
     344:	0c000000 	jal	0 <func_80ACF4A0>
     348:	ad0b0008 	sw	t3,8(t0)
     34c:	3c013f00 	lui	at,0x3f00
     350:	44812000 	mtc1	at,$f4
     354:	3c010000 	lui	at,0x0
     358:	c4280000 	lwc1	$f8,0(at)
     35c:	46040181 	sub.s	$f6,$f0,$f4
     360:	8fac006c 	lw	t4,108(sp)
     364:	46083302 	mul.s	$f12,$f6,$f8
     368:	e7ac0040 	swc1	$f12,64(sp)
     36c:	c58a0080 	lwc1	$f10,128(t4)
     370:	0c000000 	jal	0 <func_80ACF4A0>
     374:	e7aa0060 	swc1	$f10,96(sp)
     378:	c7b00074 	lwc1	$f16,116(sp)
     37c:	8fad0070 	lw	t5,112(sp)
     380:	c7ac0040 	lwc1	$f12,64(sp)
     384:	46100482 	mul.s	$f18,$f0,$f16
     388:	c5a40000 	lwc1	$f4,0(t5)
     38c:	46049180 	add.s	$f6,$f18,$f4
     390:	0c000000 	jal	0 <func_80ACF4A0>
     394:	e7a6005c 	swc1	$f6,92(sp)
     398:	c7a80074 	lwc1	$f8,116(sp)
     39c:	8fae0070 	lw	t6,112(sp)
     3a0:	46080282 	mul.s	$f10,$f0,$f8
     3a4:	c5d00008 	lwc1	$f16,8(t6)
     3a8:	46105480 	add.s	$f18,$f10,$f16
     3ac:	0c000000 	jal	0 <func_80ACF4A0>
     3b0:	e7b20064 	swc1	$f18,100(sp)
     3b4:	3c013f00 	lui	at,0x3f00
     3b8:	44812000 	mtc1	at,$f4
     3bc:	c7a8007c 	lwc1	$f8,124(sp)
     3c0:	46040181 	sub.s	$f6,$f0,$f4
     3c4:	46083282 	mul.s	$f10,$f6,$f8
     3c8:	0c000000 	jal	0 <func_80ACF4A0>
     3cc:	e7aa0044 	swc1	$f10,68(sp)
     3d0:	3c013f00 	lui	at,0x3f00
     3d4:	44818000 	mtc1	at,$f16
     3d8:	c7a4007c 	lwc1	$f4,124(sp)
     3dc:	46100481 	sub.s	$f18,$f0,$f16
     3e0:	46049182 	mul.s	$f6,$f18,$f4
     3e4:	0c000000 	jal	0 <func_80ACF4A0>
     3e8:	e7a6004c 	swc1	$f6,76(sp)
     3ec:	3c013f00 	lui	at,0x3f00
     3f0:	44814000 	mtc1	at,$f8
     3f4:	3c014080 	lui	at,0x4080
     3f8:	44818000 	mtc1	at,$f16
     3fc:	46080281 	sub.s	$f10,$f0,$f8
     400:	c7a40054 	lwc1	$f4,84(sp)
     404:	46105482 	mul.s	$f18,$f10,$f16
     408:	46122180 	add.s	$f6,$f4,$f18
     40c:	0c000000 	jal	0 <func_80ACF4A0>
     410:	e7a60054 	swc1	$f6,84(sp)
     414:	3c0140a0 	lui	at,0x40a0
     418:	44814000 	mtc1	at,$f8
     41c:	3c014140 	lui	at,0x4140
     420:	44818000 	mtc1	at,$f16
     424:	46080282 	mul.s	$f10,$f0,$f8
     428:	c7b20080 	lwc1	$f18,128(sp)
     42c:	8faf0078 	lw	t7,120(sp)
     430:	2408ffff 	li	t0,-1
     434:	2409000a 	li	t1,10
     438:	afa9001c 	sw	t1,28(sp)
     43c:	afa80018 	sw	t0,24(sp)
     440:	46105100 	add.s	$f4,$f10,$f16
     444:	8fa40068 	lw	a0,104(sp)
     448:	27a5005c 	addiu	a1,sp,92
     44c:	27a60050 	addiu	a2,sp,80
     450:	46122182 	mul.s	$f6,$f4,$f18
     454:	27a70044 	addiu	a3,sp,68
     458:	afa00020 	sw	zero,32(sp)
     45c:	afaf0010 	sw	t7,16(sp)
     460:	4600320d 	trunc.w.s	$f8,$f6
     464:	44194000 	mfc1	t9,$f8
     468:	0c000000 	jal	0 <func_80ACF4A0>
     46c:	afb90014 	sw	t9,20(sp)
     470:	8fbf002c 	lw	ra,44(sp)
     474:	27bd0068 	addiu	sp,sp,104
     478:	03e00008 	jr	ra
     47c:	00000000 	nop

00000480 <func_80ACF920>:
     480:	27bdff58 	addiu	sp,sp,-168
     484:	afbf007c 	sw	ra,124(sp)
     488:	afb40078 	sw	s4,120(sp)
     48c:	afb30074 	sw	s3,116(sp)
     490:	afb20070 	sw	s2,112(sp)
     494:	afb1006c 	sw	s1,108(sp)
     498:	afb00068 	sw	s0,104(sp)
     49c:	f7be0060 	sdc1	$f30,96(sp)
     4a0:	f7bc0058 	sdc1	$f28,88(sp)
     4a4:	f7ba0050 	sdc1	$f26,80(sp)
     4a8:	f7b80048 	sdc1	$f24,72(sp)
     4ac:	f7b60040 	sdc1	$f22,64(sp)
     4b0:	f7b40038 	sdc1	$f20,56(sp)
     4b4:	908e0311 	lbu	t6,785(a0)
     4b8:	3c180001 	lui	t8,0x1
     4bc:	0305c021 	addu	t8,t8,a1
     4c0:	31cffffd 	andi	t7,t6,0xfffd
     4c4:	a08f0311 	sb	t7,785(a0)
     4c8:	8f181de4 	lw	t8,7652(t8)
     4cc:	00808825 	move	s1,a0
     4d0:	00a0a025 	move	s4,a1
     4d4:	3319000f 	andi	t9,t8,0xf
     4d8:	1720001f 	bnez	t9,558 <func_80ACF920+0xd8>
     4dc:	2402fffd 	li	v0,-3
     4e0:	8c890024 	lw	t1,36(a0)
     4e4:	27b0009c 	addiu	s0,sp,156
     4e8:	3c01428c 	lui	at,0x428c
     4ec:	ae090000 	sw	t1,0(s0)
     4f0:	8c880028 	lw	t0,40(a0)
     4f4:	44813000 	mtc1	at,$f6
     4f8:	02003025 	move	a2,s0
     4fc:	ae080004 	sw	t0,4(s0)
     500:	8c89002c 	lw	t1,44(a0)
     504:	00a02025 	move	a0,a1
     508:	02202825 	move	a1,s1
     50c:	ae090008 	sw	t1,8(s0)
     510:	c7a400a0 	lwc1	$f4,160(sp)
     514:	24070040 	li	a3,64
     518:	46062200 	add.s	$f8,$f4,$f6
     51c:	0c000000 	jal	0 <func_80ACF4A0>
     520:	e7a800a0 	swc1	$f8,160(sp)
     524:	02802025 	move	a0,s4
     528:	02202825 	move	a1,s1
     52c:	02003025 	move	a2,s0
     530:	0c000000 	jal	0 <func_80ACF4A0>
     534:	24070040 	li	a3,64
     538:	02802025 	move	a0,s4
     53c:	02202825 	move	a1,s1
     540:	02003025 	move	a2,s0
     544:	0c000000 	jal	0 <func_80ACF4A0>
     548:	24070040 	li	a3,64
     54c:	240a00f0 	li	t2,240
     550:	1000003f 	b	650 <func_80ACF920+0x1d0>
     554:	ae2a02d4 	sw	t2,724(s1)
     558:	922b0311 	lbu	t3,785(s1)
     55c:	862d02fa 	lh	t5,762(s1)
     560:	240e0003 	li	t6,3
     564:	01626024 	and	t4,t3,v0
     568:	01cd9023 	subu	s2,t6,t5
     56c:	1a400036 	blez	s2,648 <func_80ACF920+0x1c8>
     570:	a22c0311 	sb	t4,785(s1)
     574:	3c010000 	lui	at,0x0
     578:	c43e0000 	lwc1	$f30,0(at)
     57c:	3c0140c0 	lui	at,0x40c0
     580:	4481e000 	mtc1	at,$f28
     584:	3c014248 	lui	at,0x4248
     588:	4481d000 	mtc1	at,$f26
     58c:	3c0141c8 	lui	at,0x41c8
     590:	4481c000 	mtc1	at,$f24
     594:	26931c24 	addiu	s3,s4,7204
     598:	0c000000 	jal	0 <func_80ACF4A0>
     59c:	4600c306 	mov.s	$f12,$f24
     5a0:	46000506 	mov.s	$f20,$f0
     5a4:	0c000000 	jal	0 <func_80ACF4A0>
     5a8:	4600c306 	mov.s	$f12,$f24
     5ac:	46000586 	mov.s	$f22,$f0
     5b0:	0c000000 	jal	0 <func_80ACF4A0>
     5b4:	4600c306 	mov.s	$f12,$f24
     5b8:	c62a0024 	lwc1	$f10,36(s1)
     5bc:	240f0001 	li	t7,1
     5c0:	02602025 	move	a0,s3
     5c4:	460aa400 	add.s	$f16,$f20,$f10
     5c8:	02202825 	move	a1,s1
     5cc:	02803025 	move	a2,s4
     5d0:	2407001d 	li	a3,29
     5d4:	e7b00010 	swc1	$f16,16(sp)
     5d8:	c6320028 	lwc1	$f18,40(s1)
     5dc:	461a9100 	add.s	$f4,$f18,$f26
     5e0:	4604b180 	add.s	$f6,$f22,$f4
     5e4:	e7a60014 	swc1	$f6,20(sp)
     5e8:	c628002c 	lwc1	$f8,44(s1)
     5ec:	afaf0028 	sw	t7,40(sp)
     5f0:	afa00024 	sw	zero,36(sp)
     5f4:	46080280 	add.s	$f10,$f0,$f8
     5f8:	afa00020 	sw	zero,32(sp)
     5fc:	afa0001c 	sw	zero,28(sp)
     600:	0c000000 	jal	0 <func_80ACF4A0>
     604:	e7aa0018 	swc1	$f10,24(sp)
     608:	1040000c 	beqz	v0,63c <func_80ACF920+0x1bc>
     60c:	00408025 	move	s0,v0
     610:	e45c0060 	swc1	$f28,96(v0)
     614:	0c000000 	jal	0 <func_80ACF4A0>
     618:	4600f306 	mov.s	$f12,$f30
     61c:	4600040d 	trunc.w.s	$f16,$f0
     620:	44028000 	mfc1	v0,$f16
     624:	00000000 	nop
     628:	a6020032 	sh	v0,50(s0)
     62c:	a60200b6 	sh	v0,182(s0)
     630:	863902fa 	lh	t9,762(s1)
     634:	27280001 	addiu	t0,t9,1
     638:	a62802fa 	sh	t0,762(s1)
     63c:	2652ffff 	addiu	s2,s2,-1
     640:	1e40ffd5 	bgtz	s2,598 <func_80ACF920+0x118>
     644:	00000000 	nop
     648:	24090008 	li	t1,8
     64c:	ae2902d4 	sw	t1,724(s1)
     650:	02202025 	move	a0,s1
     654:	0c000000 	jal	0 <func_80ACF4A0>
     658:	24053956 	li	a1,14678
     65c:	8fbf007c 	lw	ra,124(sp)
     660:	d7b40038 	ldc1	$f20,56(sp)
     664:	d7b60040 	ldc1	$f22,64(sp)
     668:	d7b80048 	ldc1	$f24,72(sp)
     66c:	d7ba0050 	ldc1	$f26,80(sp)
     670:	d7bc0058 	ldc1	$f28,88(sp)
     674:	d7be0060 	ldc1	$f30,96(sp)
     678:	8fb00068 	lw	s0,104(sp)
     67c:	8fb1006c 	lw	s1,108(sp)
     680:	8fb20070 	lw	s2,112(sp)
     684:	8fb30074 	lw	s3,116(sp)
     688:	8fb40078 	lw	s4,120(sp)
     68c:	03e00008 	jr	ra
     690:	27bd00a8 	addiu	sp,sp,168

00000694 <func_80ACFB34>:
     694:	27bdffd0 	addiu	sp,sp,-48
     698:	afb00028 	sw	s0,40(sp)
     69c:	00808025 	move	s0,a0
     6a0:	afbf002c 	sw	ra,44(sp)
     6a4:	3c040600 	lui	a0,0x600
     6a8:	0c000000 	jal	0 <func_80ACF4A0>
     6ac:	248409c4 	addiu	a0,a0,2500
     6b0:	44822000 	mtc1	v0,$f4
     6b4:	44800000 	mtc1	zero,$f0
     6b8:	3c050600 	lui	a1,0x600
     6bc:	468021a0 	cvt.s.w	$f6,$f4
     6c0:	240e0002 	li	t6,2
     6c4:	44060000 	mfc1	a2,$f0
     6c8:	afae0014 	sw	t6,20(sp)
     6cc:	24a509c4 	addiu	a1,a1,2500
     6d0:	2604014c 	addiu	a0,s0,332
     6d4:	e7a60010 	swc1	$f6,16(sp)
     6d8:	3c074040 	lui	a3,0x4040
     6dc:	0c000000 	jal	0 <func_80ACF4A0>
     6e0:	e7a00018 	swc1	$f0,24(sp)
     6e4:	92190311 	lbu	t9,785(s0)
     6e8:	240f0258 	li	t7,600
     6ec:	24180003 	li	t8,3
     6f0:	3c050000 	lui	a1,0x0
     6f4:	3328fffd 	andi	t0,t9,0xfffd
     6f8:	a60f02f8 	sh	t7,760(s0)
     6fc:	ae0002d4 	sw	zero,724(s0)
     700:	a60002fa 	sh	zero,762(s0)
     704:	ae1802b0 	sw	t8,688(s0)
     708:	a2080311 	sb	t0,785(s0)
     70c:	24a50000 	addiu	a1,a1,0
     710:	0c000000 	jal	0 <func_80ACF4A0>
     714:	02002025 	move	a0,s0
     718:	8fbf002c 	lw	ra,44(sp)
     71c:	8fb00028 	lw	s0,40(sp)
     720:	27bd0030 	addiu	sp,sp,48
     724:	03e00008 	jr	ra
     728:	00000000 	nop

0000072c <func_80ACFBCC>:
     72c:	3c0e0000 	lui	t6,0x0
     730:	8dce0010 	lw	t6,16(t6)
     734:	27bdffd8 	addiu	sp,sp,-40
     738:	afb00020 	sw	s0,32(sp)
     73c:	00808025 	move	s0,a0
     740:	afbf0024 	sw	ra,36(sp)
     744:	15c0001b 	bnez	t6,7b4 <func_80ACFBCC+0x88>
     748:	afa5002c 	sw	a1,44(sp)
     74c:	8c8f0004 	lw	t7,4(a0)
     750:	849902f6 	lh	t9,758(a0)
     754:	3c05c47a 	lui	a1,0xc47a
     758:	35f80001 	ori	t8,t7,0x1
     75c:	1720000b 	bnez	t9,78c <func_80ACFBCC+0x60>
     760:	ac980004 	sw	t8,4(a0)
     764:	c4840090 	lwc1	$f4,144(a0)
     768:	c48602dc 	lwc1	$f6,732(a0)
     76c:	4606203c 	c.lt.s	$f4,$f6
     770:	00000000 	nop
     774:	4502003e 	bc1fl	870 <func_80ACFBCC+0x144>
     778:	8fbf0024 	lw	ra,36(sp)
     77c:	0c000000 	jal	0 <func_80ACF4A0>
     780:	00000000 	nop
     784:	1000003a 	b	870 <func_80ACFBCC+0x144>
     788:	8fbf0024 	lw	ra,36(sp)
     78c:	44800000 	mtc1	zero,$f0
     790:	260400bc 	addiu	a0,s0,188
     794:	3c063f80 	lui	a2,0x3f80
     798:	3c074120 	lui	a3,0x4120
     79c:	0c000000 	jal	0 <func_80ACF4A0>
     7a0:	e7a00010 	swc1	$f0,16(sp)
     7a4:	860802f6 	lh	t0,758(s0)
     7a8:	2509ffff 	addiu	t1,t0,-1
     7ac:	1000002f 	b	86c <func_80ACFBCC+0x140>
     7b0:	a60902f6 	sh	t1,758(s0)
     7b4:	8e0a0004 	lw	t2,4(s0)
     7b8:	2401fffe 	li	at,-2
     7bc:	44800000 	mtc1	zero,$f0
     7c0:	01415824 	and	t3,t2,at
     7c4:	ae0b0004 	sw	t3,4(s0)
     7c8:	260400bc 	addiu	a0,s0,188
     7cc:	3c05c47a 	lui	a1,0xc47a
     7d0:	3c063f80 	lui	a2,0x3f80
     7d4:	3c074248 	lui	a3,0x4248
     7d8:	0c000000 	jal	0 <func_80ACF4A0>
     7dc:	e7a00010 	swc1	$f0,16(sp)
     7e0:	8e0202d4 	lw	v0,724(s0)
     7e4:	3c013f80 	lui	at,0x3f80
     7e8:	44811000 	mtc1	at,$f2
     7ec:	44800000 	mtc1	zero,$f0
     7f0:	10400017 	beqz	v0,850 <func_80ACFBCC+0x124>
     7f4:	244cffff 	addiu	t4,v0,-1
     7f8:	318e0004 	andi	t6,t4,0x4
     7fc:	11c0000b 	beqz	t6,82c <func_80ACFBCC+0x100>
     800:	ae0c02d4 	sw	t4,724(s0)
     804:	3c053e51 	lui	a1,0x3e51
     808:	44061000 	mfc1	a2,$f2
     80c:	3c073e70 	lui	a3,0x3e70
     810:	34e7a3d7 	ori	a3,a3,0xa3d7
     814:	34a5eb85 	ori	a1,a1,0xeb85
     818:	260402ec 	addiu	a0,s0,748
     81c:	0c000000 	jal	0 <func_80ACF4A0>
     820:	e7a00010 	swc1	$f0,16(sp)
     824:	10000012 	b	870 <func_80ACFBCC+0x144>
     828:	8fbf0024 	lw	ra,36(sp)
     82c:	44050000 	mfc1	a1,$f0
     830:	44061000 	mfc1	a2,$f2
     834:	3c073ba3 	lui	a3,0x3ba3
     838:	34e7d70a 	ori	a3,a3,0xd70a
     83c:	260402ec 	addiu	a0,s0,748
     840:	0c000000 	jal	0 <func_80ACF4A0>
     844:	e7a00010 	swc1	$f0,16(sp)
     848:	10000009 	b	870 <func_80ACFBCC+0x144>
     84c:	8fbf0024 	lw	ra,36(sp)
     850:	920f0311 	lbu	t7,785(s0)
     854:	02002025 	move	a0,s0
     858:	31f80002 	andi	t8,t7,0x2
     85c:	53000004 	beqzl	t8,870 <func_80ACFBCC+0x144>
     860:	8fbf0024 	lw	ra,36(sp)
     864:	0c000000 	jal	0 <func_80ACF4A0>
     868:	8fa5002c 	lw	a1,44(sp)
     86c:	8fbf0024 	lw	ra,36(sp)
     870:	8fb00020 	lw	s0,32(sp)
     874:	27bd0028 	addiu	sp,sp,40
     878:	03e00008 	jr	ra
     87c:	00000000 	nop

00000880 <func_80ACFD20>:
     880:	27bdffd0 	addiu	sp,sp,-48
     884:	afb00028 	sw	s0,40(sp)
     888:	00808025 	move	s0,a0
     88c:	afbf002c 	sw	ra,44(sp)
     890:	3c040600 	lui	a0,0x600
     894:	0c000000 	jal	0 <func_80ACF4A0>
     898:	248409c4 	addiu	a0,a0,2500
     89c:	44822000 	mtc1	v0,$f4
     8a0:	44800000 	mtc1	zero,$f0
     8a4:	3c050600 	lui	a1,0x600
     8a8:	468021a0 	cvt.s.w	$f6,$f4
     8ac:	240e0002 	li	t6,2
     8b0:	44060000 	mfc1	a2,$f0
     8b4:	afae0014 	sw	t6,20(sp)
     8b8:	24a509c4 	addiu	a1,a1,2500
     8bc:	2604014c 	addiu	a0,s0,332
     8c0:	e7a60010 	swc1	$f6,16(sp)
     8c4:	3c074040 	lui	a3,0x4040
     8c8:	0c000000 	jal	0 <func_80ACF4A0>
     8cc:	e7a00018 	swc1	$f0,24(sp)
     8d0:	240f0190 	li	t7,400
     8d4:	24180004 	li	t8,4
     8d8:	3c050000 	lui	a1,0x0
     8dc:	a60f02f8 	sh	t7,760(s0)
     8e0:	ae0002d4 	sw	zero,724(s0)
     8e4:	a60002fa 	sh	zero,762(s0)
     8e8:	ae1802b0 	sw	t8,688(s0)
     8ec:	24a50000 	addiu	a1,a1,0
     8f0:	0c000000 	jal	0 <func_80ACF4A0>
     8f4:	02002025 	move	a0,s0
     8f8:	8fbf002c 	lw	ra,44(sp)
     8fc:	8fb00028 	lw	s0,40(sp)
     900:	27bd0030 	addiu	sp,sp,48
     904:	03e00008 	jr	ra
     908:	00000000 	nop

0000090c <func_80ACFDAC>:
     90c:	3c0e0000 	lui	t6,0x0
     910:	8dce0010 	lw	t6,16(t6)
     914:	27bdffd8 	addiu	sp,sp,-40
     918:	afb00020 	sw	s0,32(sp)
     91c:	00808025 	move	s0,a0
     920:	afbf0024 	sw	ra,36(sp)
     924:	15c0000b 	bnez	t6,954 <func_80ACFDAC+0x48>
     928:	afa5002c 	sw	a1,44(sp)
     92c:	c4840090 	lwc1	$f4,144(a0)
     930:	c48602dc 	lwc1	$f6,732(a0)
     934:	4606203c 	c.lt.s	$f4,$f6
     938:	00000000 	nop
     93c:	45020030 	bc1fl	a00 <func_80ACFDAC+0xf4>
     940:	8fbf0024 	lw	ra,36(sp)
     944:	0c000000 	jal	0 <func_80ACF4A0>
     948:	00000000 	nop
     94c:	1000002c 	b	a00 <func_80ACFDAC+0xf4>
     950:	8fbf0024 	lw	ra,36(sp)
     954:	44800000 	mtc1	zero,$f0
     958:	260400bc 	addiu	a0,s0,188
     95c:	3c05c47a 	lui	a1,0xc47a
     960:	3c063f80 	lui	a2,0x3f80
     964:	3c074248 	lui	a3,0x4248
     968:	0c000000 	jal	0 <func_80ACF4A0>
     96c:	e7a00010 	swc1	$f0,16(sp)
     970:	8e0202d4 	lw	v0,724(s0)
     974:	3c013f80 	lui	at,0x3f80
     978:	44811000 	mtc1	at,$f2
     97c:	44800000 	mtc1	zero,$f0
     980:	10400017 	beqz	v0,9e0 <func_80ACFDAC+0xd4>
     984:	244fffff 	addiu	t7,v0,-1
     988:	31f90004 	andi	t9,t7,0x4
     98c:	1320000b 	beqz	t9,9bc <func_80ACFDAC+0xb0>
     990:	ae0f02d4 	sw	t7,724(s0)
     994:	3c053e51 	lui	a1,0x3e51
     998:	44061000 	mfc1	a2,$f2
     99c:	3c073e70 	lui	a3,0x3e70
     9a0:	34e7a3d7 	ori	a3,a3,0xa3d7
     9a4:	34a5eb85 	ori	a1,a1,0xeb85
     9a8:	260402ec 	addiu	a0,s0,748
     9ac:	0c000000 	jal	0 <func_80ACF4A0>
     9b0:	e7a00010 	swc1	$f0,16(sp)
     9b4:	10000012 	b	a00 <func_80ACFDAC+0xf4>
     9b8:	8fbf0024 	lw	ra,36(sp)
     9bc:	44050000 	mfc1	a1,$f0
     9c0:	44061000 	mfc1	a2,$f2
     9c4:	3c073ba3 	lui	a3,0x3ba3
     9c8:	34e7d70a 	ori	a3,a3,0xd70a
     9cc:	260402ec 	addiu	a0,s0,748
     9d0:	0c000000 	jal	0 <func_80ACF4A0>
     9d4:	e7a00010 	swc1	$f0,16(sp)
     9d8:	10000009 	b	a00 <func_80ACFDAC+0xf4>
     9dc:	8fbf0024 	lw	ra,36(sp)
     9e0:	92080311 	lbu	t0,785(s0)
     9e4:	02002025 	move	a0,s0
     9e8:	31090002 	andi	t1,t0,0x2
     9ec:	51200004 	beqzl	t1,a00 <func_80ACFDAC+0xf4>
     9f0:	8fbf0024 	lw	ra,36(sp)
     9f4:	0c000000 	jal	0 <func_80ACF4A0>
     9f8:	8fa5002c 	lw	a1,44(sp)
     9fc:	8fbf0024 	lw	ra,36(sp)
     a00:	8fb00020 	lw	s0,32(sp)
     a04:	27bd0028 	addiu	sp,sp,40
     a08:	03e00008 	jr	ra
     a0c:	00000000 	nop

00000a10 <func_80ACFEB0>:
     a10:	27bdffe8 	addiu	sp,sp,-24
     a14:	afbf0014 	sw	ra,20(sp)
     a18:	00803025 	move	a2,a0
     a1c:	3c050600 	lui	a1,0x600
     a20:	24a505c4 	addiu	a1,a1,1476
     a24:	afa60018 	sw	a2,24(sp)
     a28:	0c000000 	jal	0 <func_80ACF4A0>
     a2c:	2484014c 	addiu	a0,a0,332
     a30:	8fa40018 	lw	a0,24(sp)
     a34:	240e0005 	li	t6,5
     a38:	3c050000 	lui	a1,0x0
     a3c:	24a50000 	addiu	a1,a1,0
     a40:	0c000000 	jal	0 <func_80ACF4A0>
     a44:	ac8e02b0 	sw	t6,688(a0)
     a48:	8fbf0014 	lw	ra,20(sp)
     a4c:	27bd0018 	addiu	sp,sp,24
     a50:	03e00008 	jr	ra
     a54:	00000000 	nop

00000a58 <func_80ACFEF8>:
     a58:	27bdffb0 	addiu	sp,sp,-80
     a5c:	afbf003c 	sw	ra,60(sp)
     a60:	afb00038 	sw	s0,56(sp)
     a64:	afa50054 	sw	a1,84(sp)
     a68:	00808025 	move	s0,a0
     a6c:	0c000000 	jal	0 <func_80ACF4A0>
     a70:	24053155 	li	a1,12629
     a74:	0c000000 	jal	0 <func_80ACF4A0>
     a78:	2604014c 	addiu	a0,s0,332
     a7c:	3c0e0000 	lui	t6,0x0
     a80:	8dce0010 	lw	t6,16(t6)
     a84:	15c00007 	bnez	t6,aa4 <func_80ACFEF8+0x4c>
     a88:	00000000 	nop
     a8c:	c6000090 	lwc1	$f0,144(s0)
     a90:	c60402dc 	lwc1	$f4,732(s0)
     a94:	4600203c 	c.lt.s	$f4,$f0
     a98:	00000000 	nop
     a9c:	45020006 	bc1fl	ab8 <func_80ACFEF8+0x60>
     aa0:	c60602d8 	lwc1	$f6,728(s0)
     aa4:	0c000000 	jal	0 <func_80ACF4A0>
     aa8:	02002025 	move	a0,s0
     aac:	10000040 	b	bb0 <func_80ACFEF8+0x158>
     ab0:	860e02f2 	lh	t6,754(s0)
     ab4:	c60602d8 	lwc1	$f6,728(s0)
     ab8:	4606003c 	c.lt.s	$f0,$f6
     abc:	00000000 	nop
     ac0:	4502003b 	bc1fl	bb0 <func_80ACFEF8+0x158>
     ac4:	860e02f2 	lh	t6,754(s0)
     ac8:	860f02fa 	lh	t7,762(s0)
     acc:	8fb80054 	lw	t8,84(sp)
     ad0:	3c190001 	lui	t9,0x1
     ad4:	29e10003 	slti	at,t7,3
     ad8:	10200034 	beqz	at,bac <func_80ACFEF8+0x154>
     adc:	0338c821 	addu	t9,t9,t8
     ae0:	8f391de4 	lw	t9,7652(t9)
     ae4:	3c0141c8 	lui	at,0x41c8
     ae8:	33280007 	andi	t0,t9,0x7
     aec:	55000030 	bnezl	t0,bb0 <func_80ACFEF8+0x158>
     af0:	860e02f2 	lh	t6,754(s0)
     af4:	44816000 	mtc1	at,$f12
     af8:	0c000000 	jal	0 <func_80ACF4A0>
     afc:	00000000 	nop
     b00:	3c0140a0 	lui	at,0x40a0
     b04:	44816000 	mtc1	at,$f12
     b08:	0c000000 	jal	0 <func_80ACF4A0>
     b0c:	e7a00040 	swc1	$f0,64(sp)
     b10:	3c0141c8 	lui	at,0x41c8
     b14:	44816000 	mtc1	at,$f12
     b18:	0c000000 	jal	0 <func_80ACF4A0>
     b1c:	e7a00044 	swc1	$f0,68(sp)
     b20:	c7a80040 	lwc1	$f8,64(sp)
     b24:	c60a0024 	lwc1	$f10,36(s0)
     b28:	c7b20044 	lwc1	$f18,68(sp)
     b2c:	8fa60054 	lw	a2,84(sp)
     b30:	460a4400 	add.s	$f16,$f8,$f10
     b34:	240a0001 	li	t2,1
     b38:	02002825 	move	a1,s0
     b3c:	2407001d 	li	a3,29
     b40:	e7b00010 	swc1	$f16,16(sp)
     b44:	c6040028 	lwc1	$f4,40(s0)
     b48:	24c41c24 	addiu	a0,a2,7204
     b4c:	46049180 	add.s	$f6,$f18,$f4
     b50:	e7a60014 	swc1	$f6,20(sp)
     b54:	c608002c 	lwc1	$f8,44(s0)
     b58:	afaa0028 	sw	t2,40(sp)
     b5c:	afa00024 	sw	zero,36(sp)
     b60:	46080280 	add.s	$f10,$f0,$f8
     b64:	afa00020 	sw	zero,32(sp)
     b68:	afa0001c 	sw	zero,28(sp)
     b6c:	0c000000 	jal	0 <func_80ACF4A0>
     b70:	e7aa0018 	swc1	$f10,24(sp)
     b74:	1040000d 	beqz	v0,bac <func_80ACFEF8+0x154>
     b78:	3c010000 	lui	at,0x0
     b7c:	c42c0000 	lwc1	$f12,0(at)
     b80:	0c000000 	jal	0 <func_80ACF4A0>
     b84:	afa2004c 	sw	v0,76(sp)
     b88:	4600040d 	trunc.w.s	$f16,$f0
     b8c:	8fa3004c 	lw	v1,76(sp)
     b90:	44028000 	mfc1	v0,$f16
     b94:	00000000 	nop
     b98:	a4620032 	sh	v0,50(v1)
     b9c:	a46200b6 	sh	v0,182(v1)
     ba0:	860c02fa 	lh	t4,762(s0)
     ba4:	258d0001 	addiu	t5,t4,1
     ba8:	a60d02fa 	sh	t5,762(s0)
     bac:	860e02f2 	lh	t6,754(s0)
     bb0:	860f02f0 	lh	t7,752(s0)
     bb4:	01cfc021 	addu	t8,t6,t7
     bb8:	a61802f2 	sh	t8,754(s0)
     bbc:	8fbf003c 	lw	ra,60(sp)
     bc0:	8fb00038 	lw	s0,56(sp)
     bc4:	27bd0050 	addiu	sp,sp,80
     bc8:	03e00008 	jr	ra
     bcc:	00000000 	nop

00000bd0 <func_80AD0070>:
     bd0:	27bdffc8 	addiu	sp,sp,-56
     bd4:	afb00028 	sw	s0,40(sp)
     bd8:	00808025 	move	s0,a0
     bdc:	afbf002c 	sw	ra,44(sp)
     be0:	3c040600 	lui	a0,0x600
     be4:	0c000000 	jal	0 <func_80ACF4A0>
     be8:	248409c4 	addiu	a0,a0,2500
     bec:	8e0e02b0 	lw	t6,688(s0)
     bf0:	44822000 	mtc1	v0,$f4
     bf4:	2401000d 	li	at,13
     bf8:	11c1000e 	beq	t6,at,c34 <func_80AD0070+0x64>
     bfc:	46802020 	cvt.s.w	$f0,$f4
     c00:	44801000 	mtc1	zero,$f2
     c04:	3c050600 	lui	a1,0x600
     c08:	240f0002 	li	t7,2
     c0c:	44061000 	mfc1	a2,$f2
     c10:	afaf0014 	sw	t7,20(sp)
     c14:	24a509c4 	addiu	a1,a1,2500
     c18:	2604014c 	addiu	a0,s0,332
     c1c:	3c074040 	lui	a3,0x4040
     c20:	e7a00010 	swc1	$f0,16(sp)
     c24:	e7a00034 	swc1	$f0,52(sp)
     c28:	0c000000 	jal	0 <func_80ACF4A0>
     c2c:	e7a20018 	swc1	$f2,24(sp)
     c30:	c7a00034 	lwc1	$f0,52(sp)
     c34:	4600018d 	trunc.w.s	$f6,$f0
     c38:	24180008 	li	t8,8
     c3c:	ae1802b0 	sw	t8,688(s0)
     c40:	02002025 	move	a0,s0
     c44:	44083000 	mfc1	t0,$f6
     c48:	24053954 	li	a1,14676
     c4c:	0c000000 	jal	0 <func_80ACF4A0>
     c50:	a60802fc 	sh	t0,764(s0)
     c54:	3c050000 	lui	a1,0x0
     c58:	24a50000 	addiu	a1,a1,0
     c5c:	0c000000 	jal	0 <func_80ACF4A0>
     c60:	02002025 	move	a0,s0
     c64:	8fbf002c 	lw	ra,44(sp)
     c68:	8fb00028 	lw	s0,40(sp)
     c6c:	27bd0038 	addiu	sp,sp,56
     c70:	03e00008 	jr	ra
     c74:	00000000 	nop

00000c78 <func_80AD0118>:
     c78:	44800000 	mtc1	zero,$f0
     c7c:	27bdffc0 	addiu	sp,sp,-64
     c80:	afb00028 	sw	s0,40(sp)
     c84:	afa50044 	sw	a1,68(sp)
     c88:	00808025 	move	s0,a0
     c8c:	afbf002c 	sw	ra,44(sp)
     c90:	44050000 	mfc1	a1,$f0
     c94:	248400bc 	addiu	a0,a0,188
     c98:	3c063f80 	lui	a2,0x3f80
     c9c:	3c074248 	lui	a3,0x4248
     ca0:	0c000000 	jal	0 <func_80ACF4A0>
     ca4:	e7a00010 	swc1	$f0,16(sp)
     ca8:	260402f0 	addiu	a0,s0,752
     cac:	24050fa0 	li	a1,4000
     cb0:	24060001 	li	a2,1
     cb4:	24070320 	li	a3,800
     cb8:	0c000000 	jal	0 <func_80ACF4A0>
     cbc:	afa00010 	sw	zero,16(sp)
     cc0:	14400041 	bnez	v0,dc8 <func_80AD0118+0x150>
     cc4:	00000000 	nop
     cc8:	860202fc 	lh	v0,764(s0)
     ccc:	10400011 	beqz	v0,d14 <func_80AD0118+0x9c>
     cd0:	00000000 	nop
     cd4:	44802000 	mtc1	zero,$f4
     cd8:	c6060168 	lwc1	$f6,360(s0)
     cdc:	244effff 	addiu	t6,v0,-1
     ce0:	a60e02fc 	sh	t6,764(s0)
     ce4:	46062032 	c.eq.s	$f4,$f6
     ce8:	00000000 	nop
     cec:	45000009 	bc1f	d14 <func_80AD0118+0x9c>
     cf0:	00000000 	nop
     cf4:	860f02fc 	lh	t7,764(s0)
     cf8:	3c013f80 	lui	at,0x3f80
     cfc:	15e00005 	bnez	t7,d14 <func_80AD0118+0x9c>
     d00:	00000000 	nop
     d04:	44814000 	mtc1	at,$f8
     d08:	24180028 	li	t8,40
     d0c:	a61802fc 	sh	t8,764(s0)
     d10:	e6080168 	swc1	$f8,360(s0)
     d14:	0c000000 	jal	0 <func_80ACF4A0>
     d18:	2604014c 	addiu	a0,s0,332
     d1c:	14400005 	bnez	v0,d34 <func_80AD0118+0xbc>
     d20:	00000000 	nop
     d24:	861902fc 	lh	t9,764(s0)
     d28:	3c0140d0 	lui	at,0x40d0
     d2c:	57200006 	bnezl	t9,d48 <func_80AD0118+0xd0>
     d30:	c60a0028 	lwc1	$f10,40(s0)
     d34:	0c000000 	jal	0 <func_80ACF4A0>
     d38:	02002025 	move	a0,s0
     d3c:	10000007 	b	d5c <func_80AD0118+0xe4>
     d40:	c6040028 	lwc1	$f4,40(s0)
     d44:	c60a0028 	lwc1	$f10,40(s0)
     d48:	44818000 	mtc1	at,$f16
     d4c:	00000000 	nop
     d50:	46105480 	add.s	$f18,$f10,$f16
     d54:	e6120028 	swc1	$f18,40(s0)
     d58:	c6040028 	lwc1	$f4,40(s0)
     d5c:	c6060080 	lwc1	$f6,128(s0)
     d60:	3c0142a0 	lui	at,0x42a0
     d64:	44815000 	mtc1	at,$f10
     d68:	46062201 	sub.s	$f8,$f4,$f6
     d6c:	460a403c 	c.lt.s	$f8,$f10
     d70:	00000000 	nop
     d74:	45000014 	bc1f	dc8 <func_80AD0118+0x150>
     d78:	00000000 	nop
     d7c:	8e090024 	lw	t1,36(s0)
     d80:	27a50034 	addiu	a1,sp,52
     d84:	240a0096 	li	t2,150
     d88:	aca90000 	sw	t1,0(a1)
     d8c:	8e080028 	lw	t0,40(s0)
     d90:	240b0064 	li	t3,100
     d94:	240c0001 	li	t4,1
     d98:	aca80004 	sw	t0,4(a1)
     d9c:	8e09002c 	lw	t1,44(s0)
     da0:	3c0642b4 	lui	a2,0x42b4
     da4:	24070001 	li	a3,1
     da8:	aca90008 	sw	t1,8(a1)
     dac:	c6100080 	lwc1	$f16,128(s0)
     db0:	afac0018 	sw	t4,24(sp)
     db4:	afab0014 	sw	t3,20(sp)
     db8:	afaa0010 	sw	t2,16(sp)
     dbc:	8fa40044 	lw	a0,68(sp)
     dc0:	0c000000 	jal	0 <func_80ACF4A0>
     dc4:	e7b00038 	swc1	$f16,56(sp)
     dc8:	3c010000 	lui	at,0x0
     dcc:	c4320000 	lwc1	$f18,0(at)
     dd0:	3c014000 	lui	at,0x4000
     dd4:	44812000 	mtc1	at,$f4
     dd8:	240d0002 	li	t5,2
     ddc:	afad0010 	sw	t5,16(sp)
     de0:	8fa40044 	lw	a0,68(sp)
     de4:	02002825 	move	a1,s0
     de8:	26060024 	addiu	a2,s0,36
     dec:	3c074296 	lui	a3,0x4296
     df0:	e7b20014 	swc1	$f18,20(sp)
     df4:	0c000000 	jal	0 <func_80ACF4A0>
     df8:	e7a40018 	swc1	$f4,24(sp)
     dfc:	44803000 	mtc1	zero,$f6
     e00:	3c053d99 	lui	a1,0x3d99
     e04:	3c073ba3 	lui	a3,0x3ba3
     e08:	34e7d70a 	ori	a3,a3,0xd70a
     e0c:	34a5999a 	ori	a1,a1,0x999a
     e10:	260402ec 	addiu	a0,s0,748
     e14:	3c063f80 	lui	a2,0x3f80
     e18:	0c000000 	jal	0 <func_80ACF4A0>
     e1c:	e7a60010 	swc1	$f6,16(sp)
     e20:	860e02f2 	lh	t6,754(s0)
     e24:	860f02f0 	lh	t7,752(s0)
     e28:	01cfc021 	addu	t8,t6,t7
     e2c:	a61802f2 	sh	t8,754(s0)
     e30:	8fbf002c 	lw	ra,44(sp)
     e34:	8fb00028 	lw	s0,40(sp)
     e38:	27bd0040 	addiu	sp,sp,64
     e3c:	03e00008 	jr	ra
     e40:	00000000 	nop

00000e44 <func_80AD02E4>:
     e44:	27bdffc8 	addiu	sp,sp,-56
     e48:	afb00028 	sw	s0,40(sp)
     e4c:	00808025 	move	s0,a0
     e50:	afbf002c 	sw	ra,44(sp)
     e54:	3c040600 	lui	a0,0x600
     e58:	0c000000 	jal	0 <func_80ACF4A0>
     e5c:	248409c4 	addiu	a0,a0,2500
     e60:	8e0e02b0 	lw	t6,688(s0)
     e64:	44822000 	mtc1	v0,$f4
     e68:	2401000d 	li	at,13
     e6c:	11c1000e 	beq	t6,at,ea8 <func_80AD02E4+0x64>
     e70:	46802020 	cvt.s.w	$f0,$f4
     e74:	44801000 	mtc1	zero,$f2
     e78:	3c050600 	lui	a1,0x600
     e7c:	240f0002 	li	t7,2
     e80:	44061000 	mfc1	a2,$f2
     e84:	afaf0014 	sw	t7,20(sp)
     e88:	24a509c4 	addiu	a1,a1,2500
     e8c:	2604014c 	addiu	a0,s0,332
     e90:	3c074040 	lui	a3,0x4040
     e94:	e7a00010 	swc1	$f0,16(sp)
     e98:	e7a00034 	swc1	$f0,52(sp)
     e9c:	0c000000 	jal	0 <func_80ACF4A0>
     ea0:	e7a20018 	swc1	$f2,24(sp)
     ea4:	c7a00034 	lwc1	$f0,52(sp)
     ea8:	4600018d 	trunc.w.s	$f6,$f0
     eac:	24180009 	li	t8,9
     eb0:	ae1802b0 	sw	t8,688(s0)
     eb4:	02002025 	move	a0,s0
     eb8:	44083000 	mfc1	t0,$f6
     ebc:	24053954 	li	a1,14676
     ec0:	0c000000 	jal	0 <func_80ACF4A0>
     ec4:	a60802fc 	sh	t0,764(s0)
     ec8:	3c050000 	lui	a1,0x0
     ecc:	24a50000 	addiu	a1,a1,0
     ed0:	0c000000 	jal	0 <func_80ACF4A0>
     ed4:	02002025 	move	a0,s0
     ed8:	8fbf002c 	lw	ra,44(sp)
     edc:	8fb00028 	lw	s0,40(sp)
     ee0:	27bd0038 	addiu	sp,sp,56
     ee4:	03e00008 	jr	ra
     ee8:	00000000 	nop

00000eec <func_80AD038C>:
     eec:	44800000 	mtc1	zero,$f0
     ef0:	27bdffc0 	addiu	sp,sp,-64
     ef4:	afb00028 	sw	s0,40(sp)
     ef8:	afa50044 	sw	a1,68(sp)
     efc:	00808025 	move	s0,a0
     f00:	afbf002c 	sw	ra,44(sp)
     f04:	44050000 	mfc1	a1,$f0
     f08:	248400bc 	addiu	a0,a0,188
     f0c:	3c063f80 	lui	a2,0x3f80
     f10:	3c074248 	lui	a3,0x4248
     f14:	0c000000 	jal	0 <func_80ACF4A0>
     f18:	e7a00010 	swc1	$f0,16(sp)
     f1c:	260402f0 	addiu	a0,s0,752
     f20:	24050fa0 	li	a1,4000
     f24:	24060001 	li	a2,1
     f28:	24070320 	li	a3,800
     f2c:	0c000000 	jal	0 <func_80ACF4A0>
     f30:	afa00010 	sw	zero,16(sp)
     f34:	14400041 	bnez	v0,103c <func_80AD038C+0x150>
     f38:	00000000 	nop
     f3c:	860202fc 	lh	v0,764(s0)
     f40:	10400011 	beqz	v0,f88 <func_80AD038C+0x9c>
     f44:	00000000 	nop
     f48:	44802000 	mtc1	zero,$f4
     f4c:	c6060168 	lwc1	$f6,360(s0)
     f50:	244effff 	addiu	t6,v0,-1
     f54:	a60e02fc 	sh	t6,764(s0)
     f58:	46062032 	c.eq.s	$f4,$f6
     f5c:	00000000 	nop
     f60:	45000009 	bc1f	f88 <func_80AD038C+0x9c>
     f64:	00000000 	nop
     f68:	860f02fc 	lh	t7,764(s0)
     f6c:	3c013f80 	lui	at,0x3f80
     f70:	15e00005 	bnez	t7,f88 <func_80AD038C+0x9c>
     f74:	00000000 	nop
     f78:	44814000 	mtc1	at,$f8
     f7c:	24180028 	li	t8,40
     f80:	a61802fc 	sh	t8,764(s0)
     f84:	e6080168 	swc1	$f8,360(s0)
     f88:	0c000000 	jal	0 <func_80ACF4A0>
     f8c:	2604014c 	addiu	a0,s0,332
     f90:	14400005 	bnez	v0,fa8 <func_80AD038C+0xbc>
     f94:	02002025 	move	a0,s0
     f98:	861902fc 	lh	t9,764(s0)
     f9c:	3c014190 	lui	at,0x4190
     fa0:	57200006 	bnezl	t9,fbc <func_80AD038C+0xd0>
     fa4:	c60a0028 	lwc1	$f10,40(s0)
     fa8:	0c000000 	jal	0 <func_80ACF4A0>
     fac:	a60002fa 	sh	zero,762(s0)
     fb0:	10000007 	b	fd0 <func_80AD038C+0xe4>
     fb4:	c6040028 	lwc1	$f4,40(s0)
     fb8:	c60a0028 	lwc1	$f10,40(s0)
     fbc:	44818000 	mtc1	at,$f16
     fc0:	00000000 	nop
     fc4:	46105480 	add.s	$f18,$f10,$f16
     fc8:	e6120028 	swc1	$f18,40(s0)
     fcc:	c6040028 	lwc1	$f4,40(s0)
     fd0:	c6060080 	lwc1	$f6,128(s0)
     fd4:	3c0142a0 	lui	at,0x42a0
     fd8:	44815000 	mtc1	at,$f10
     fdc:	46062201 	sub.s	$f8,$f4,$f6
     fe0:	460a403c 	c.lt.s	$f8,$f10
     fe4:	00000000 	nop
     fe8:	45000014 	bc1f	103c <func_80AD038C+0x150>
     fec:	00000000 	nop
     ff0:	8e090024 	lw	t1,36(s0)
     ff4:	27a50034 	addiu	a1,sp,52
     ff8:	240a0096 	li	t2,150
     ffc:	aca90000 	sw	t1,0(a1)
    1000:	8e080028 	lw	t0,40(s0)
    1004:	240b0064 	li	t3,100
    1008:	240c0001 	li	t4,1
    100c:	aca80004 	sw	t0,4(a1)
    1010:	8e09002c 	lw	t1,44(s0)
    1014:	3c0642b4 	lui	a2,0x42b4
    1018:	24070001 	li	a3,1
    101c:	aca90008 	sw	t1,8(a1)
    1020:	c6100080 	lwc1	$f16,128(s0)
    1024:	afac0018 	sw	t4,24(sp)
    1028:	afab0014 	sw	t3,20(sp)
    102c:	afaa0010 	sw	t2,16(sp)
    1030:	8fa40044 	lw	a0,68(sp)
    1034:	0c000000 	jal	0 <func_80ACF4A0>
    1038:	e7b00038 	swc1	$f16,56(sp)
    103c:	3c010000 	lui	at,0x0
    1040:	c4320000 	lwc1	$f18,0(at)
    1044:	3c014000 	lui	at,0x4000
    1048:	44812000 	mtc1	at,$f4
    104c:	240d0002 	li	t5,2
    1050:	afad0010 	sw	t5,16(sp)
    1054:	8fa40044 	lw	a0,68(sp)
    1058:	02002825 	move	a1,s0
    105c:	26060024 	addiu	a2,s0,36
    1060:	3c074296 	lui	a3,0x4296
    1064:	e7b20014 	swc1	$f18,20(sp)
    1068:	0c000000 	jal	0 <func_80ACF4A0>
    106c:	e7a40018 	swc1	$f4,24(sp)
    1070:	44803000 	mtc1	zero,$f6
    1074:	3c053d99 	lui	a1,0x3d99
    1078:	3c073ba3 	lui	a3,0x3ba3
    107c:	34e7d70a 	ori	a3,a3,0xd70a
    1080:	34a5999a 	ori	a1,a1,0x999a
    1084:	260402ec 	addiu	a0,s0,748
    1088:	3c063f80 	lui	a2,0x3f80
    108c:	0c000000 	jal	0 <func_80ACF4A0>
    1090:	e7a60010 	swc1	$f6,16(sp)
    1094:	860e02f2 	lh	t6,754(s0)
    1098:	860f02f0 	lh	t7,752(s0)
    109c:	01cfc021 	addu	t8,t6,t7
    10a0:	a61802f2 	sh	t8,754(s0)
    10a4:	8fbf002c 	lw	ra,44(sp)
    10a8:	8fb00028 	lw	s0,40(sp)
    10ac:	27bd0040 	addiu	sp,sp,64
    10b0:	03e00008 	jr	ra
    10b4:	00000000 	nop

000010b8 <func_80AD0558>:
    10b8:	27bdffe8 	addiu	sp,sp,-24
    10bc:	afbf0014 	sw	ra,20(sp)
    10c0:	00803025 	move	a2,a0
    10c4:	3c050600 	lui	a1,0x600
    10c8:	24a505c4 	addiu	a1,a1,1476
    10cc:	afa60018 	sw	a2,24(sp)
    10d0:	0c000000 	jal	0 <func_80ACF4A0>
    10d4:	2484014c 	addiu	a0,a0,332
    10d8:	8fa40018 	lw	a0,24(sp)
    10dc:	44802000 	mtc1	zero,$f4
    10e0:	240e000e 	li	t6,14
    10e4:	3c050000 	lui	a1,0x0
    10e8:	24a50000 	addiu	a1,a1,0
    10ec:	ac8e02b0 	sw	t6,688(a0)
    10f0:	0c000000 	jal	0 <func_80ACF4A0>
    10f4:	e48402e0 	swc1	$f4,736(a0)
    10f8:	8fbf0014 	lw	ra,20(sp)
    10fc:	27bd0018 	addiu	sp,sp,24
    1100:	03e00008 	jr	ra
    1104:	00000000 	nop

00001108 <func_80AD05A8>:
    1108:	27bdffd0 	addiu	sp,sp,-48
    110c:	afbf0024 	sw	ra,36(sp)
    1110:	afb00020 	sw	s0,32(sp)
    1114:	afa50034 	sw	a1,52(sp)
    1118:	8caf1c44 	lw	t7,7236(a1)
    111c:	44802000 	mtc1	zero,$f4
    1120:	00808025 	move	s0,a0
    1124:	24840068 	addiu	a0,a0,104
    1128:	3c054040 	lui	a1,0x4040
    112c:	3c063f80 	lui	a2,0x3f80
    1130:	3c073e80 	lui	a3,0x3e80
    1134:	afaf002c 	sw	t7,44(sp)
    1138:	0c000000 	jal	0 <func_80ACF4A0>
    113c:	e7a40010 	swc1	$f4,16(sp)
    1140:	3c0142a0 	lui	at,0x42a0
    1144:	44814000 	mtc1	at,$f8
    1148:	c6060080 	lwc1	$f6,128(s0)
    114c:	44808000 	mtc1	zero,$f16
    1150:	26040028 	addiu	a0,s0,40
    1154:	46083280 	add.s	$f10,$f6,$f8
    1158:	3c063f80 	lui	a2,0x3f80
    115c:	3c074040 	lui	a3,0x4040
    1160:	e7b00010 	swc1	$f16,16(sp)
    1164:	44055000 	mfc1	a1,$f10
    1168:	0c000000 	jal	0 <func_80ACF4A0>
    116c:	00000000 	nop
    1170:	860202f8 	lh	v0,760(s0)
    1174:	1c400006 	bgtz	v0,1190 <func_80AD05A8+0x88>
    1178:	2459ffff 	addiu	t9,v0,-1
    117c:	0c000000 	jal	0 <func_80ACF4A0>
    1180:	02002025 	move	a0,s0
    1184:	24180028 	li	t8,40
    1188:	10000002 	b	1194 <func_80AD05A8+0x8c>
    118c:	a61802f6 	sh	t8,758(s0)
    1190:	a61902f8 	sh	t9,760(s0)
    1194:	3c080000 	lui	t0,0x0
    1198:	8d080010 	lw	t0,16(t0)
    119c:	8fa5002c 	lw	a1,44(sp)
    11a0:	15000018 	bnez	t0,1204 <func_80AD05A8+0xfc>
    11a4:	24a50024 	addiu	a1,a1,36
    11a8:	0c000000 	jal	0 <func_80ACF4A0>
    11ac:	26040008 	addiu	a0,s0,8
    11b0:	c61202d8 	lwc1	$f18,728(s0)
    11b4:	26040032 	addiu	a0,s0,50
    11b8:	24060001 	li	a2,1
    11bc:	4612003c 	c.lt.s	$f0,$f18
    11c0:	240703e8 	li	a3,1000
    11c4:	4500000f 	bc1f	1204 <func_80AD05A8+0xfc>
    11c8:	00000000 	nop
    11cc:	8605008a 	lh	a1,138(s0)
    11d0:	0c000000 	jal	0 <func_80ACF4A0>
    11d4:	afa00010 	sw	zero,16(sp)
    11d8:	860902fa 	lh	t1,762(s0)
    11dc:	51200006 	beqzl	t1,11f8 <func_80AD05A8+0xf0>
    11e0:	860c00b6 	lh	t4,182(s0)
    11e4:	860a00b6 	lh	t2,182(s0)
    11e8:	254b01c2 	addiu	t3,t2,450
    11ec:	10000007 	b	120c <func_80AD05A8+0x104>
    11f0:	a60b00b6 	sh	t3,182(s0)
    11f4:	860c00b6 	lh	t4,182(s0)
    11f8:	258dfe3e 	addiu	t5,t4,-450
    11fc:	10000003 	b	120c <func_80AD05A8+0x104>
    1200:	a60d00b6 	sh	t5,182(s0)
    1204:	0c000000 	jal	0 <func_80ACF4A0>
    1208:	02002025 	move	a0,s0
    120c:	0c000000 	jal	0 <func_80ACF4A0>
    1210:	2604014c 	addiu	a0,s0,332
    1214:	260402f0 	addiu	a0,s0,752
    1218:	24050fa0 	li	a1,4000
    121c:	24060001 	li	a2,1
    1220:	240701f4 	li	a3,500
    1224:	0c000000 	jal	0 <func_80ACF4A0>
    1228:	afa00010 	sw	zero,16(sp)
    122c:	860e02f2 	lh	t6,754(s0)
    1230:	860f02f0 	lh	t7,752(s0)
    1234:	44802000 	mtc1	zero,$f4
    1238:	3c053d99 	lui	a1,0x3d99
    123c:	01cfc021 	addu	t8,t6,t7
    1240:	a61802f2 	sh	t8,754(s0)
    1244:	3c073ba3 	lui	a3,0x3ba3
    1248:	34e7d70a 	ori	a3,a3,0xd70a
    124c:	34a5999a 	ori	a1,a1,0x999a
    1250:	260402ec 	addiu	a0,s0,748
    1254:	3c063f80 	lui	a2,0x3f80
    1258:	0c000000 	jal	0 <func_80ACF4A0>
    125c:	e7a40010 	swc1	$f4,16(sp)
    1260:	02002025 	move	a0,s0
    1264:	0c000000 	jal	0 <func_80ACF4A0>
    1268:	24053155 	li	a1,12629
    126c:	8fbf0024 	lw	ra,36(sp)
    1270:	8fb00020 	lw	s0,32(sp)
    1274:	27bd0030 	addiu	sp,sp,48
    1278:	03e00008 	jr	ra
    127c:	00000000 	nop

00001280 <func_80AD0720>:
    1280:	27bdffe8 	addiu	sp,sp,-24
    1284:	afbf0014 	sw	ra,20(sp)
    1288:	00803025 	move	a2,a0
    128c:	3c050600 	lui	a1,0x600
    1290:	24a505c4 	addiu	a1,a1,1476
    1294:	afa60018 	sw	a2,24(sp)
    1298:	0c000000 	jal	0 <func_80ACF4A0>
    129c:	2484014c 	addiu	a0,a0,332
    12a0:	8fa40018 	lw	a0,24(sp)
    12a4:	240e000e 	li	t6,14
    12a8:	3c050000 	lui	a1,0x0
    12ac:	24a50000 	addiu	a1,a1,0
    12b0:	ac8e02b0 	sw	t6,688(a0)
    12b4:	0c000000 	jal	0 <func_80ACF4A0>
    12b8:	ac8002d4 	sw	zero,724(a0)
    12bc:	8fbf0014 	lw	ra,20(sp)
    12c0:	27bd0018 	addiu	sp,sp,24
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_80AD076C>:
    12cc:	27bdff70 	addiu	sp,sp,-144
    12d0:	afbf005c 	sw	ra,92(sp)
    12d4:	afb20058 	sw	s2,88(sp)
    12d8:	afb10054 	sw	s1,84(sp)
    12dc:	afb00050 	sw	s0,80(sp)
    12e0:	f7b40048 	sdc1	$f20,72(sp)
    12e4:	afa50094 	sw	a1,148(sp)
    12e8:	3c010000 	lui	at,0x0
    12ec:	c4220000 	lwc1	$f2,0(at)
    12f0:	c4800090 	lwc1	$f0,144(a0)
    12f4:	00809025 	move	s2,a0
    12f8:	3c010000 	lui	at,0x0
    12fc:	4602003e 	c.le.s	$f0,$f2
    1300:	00000000 	nop
    1304:	45020004 	bc1fl	1318 <func_80AD076C+0x4c>
    1308:	8e420118 	lw	v0,280(s2)
    130c:	c4240000 	lwc1	$f4,0(at)
    1310:	46040080 	add.s	$f2,$f0,$f4
    1314:	8e420118 	lw	v0,280(s2)
    1318:	3c05be0a 	lui	a1,0xbe0a
    131c:	34a53d71 	ori	a1,a1,0x3d71
    1320:	10400005 	beqz	v0,1338 <func_80AD076C+0x6c>
    1324:	26440060 	addiu	a0,s2,96
    1328:	8c4e0130 	lw	t6,304(v0)
    132c:	55c00003 	bnezl	t6,133c <func_80AD076C+0x70>
    1330:	c6460028 	lwc1	$f6,40(s2)
    1334:	ae400118 	sw	zero,280(s2)
    1338:	c6460028 	lwc1	$f6,40(s2)
    133c:	c6480080 	lwc1	$f8,128(s2)
    1340:	3c01428c 	lui	at,0x428c
    1344:	44818000 	mtc1	at,$f16
    1348:	46083281 	sub.s	$f10,$f6,$f8
    134c:	e6420068 	swc1	$f2,104(s2)
    1350:	3c013f80 	lui	at,0x3f80
    1354:	3c073d4c 	lui	a3,0x3d4c
    1358:	460a803e 	c.le.s	$f16,$f10
    135c:	00000000 	nop
    1360:	4502000e 	bc1fl	139c <func_80AD076C+0xd0>
    1364:	4481a000 	mtc1	at,$f20
    1368:	3c013f80 	lui	at,0x3f80
    136c:	4481a000 	mtc1	at,$f20
    1370:	44809000 	mtc1	zero,$f18
    1374:	3c05bfa6 	lui	a1,0xbfa6
    1378:	4406a000 	mfc1	a2,$f20
    137c:	34a56666 	ori	a1,a1,0x6666
    1380:	26440060 	addiu	a0,s2,96
    1384:	3c073f00 	lui	a3,0x3f00
    1388:	0c000000 	jal	0 <func_80ACF4A0>
    138c:	e7b20010 	swc1	$f18,16(sp)
    1390:	10000008 	b	13b4 <func_80AD076C+0xe8>
    1394:	8e4202d4 	lw	v0,724(s2)
    1398:	4481a000 	mtc1	at,$f20
    139c:	44802000 	mtc1	zero,$f4
    13a0:	34e7cccd 	ori	a3,a3,0xcccd
    13a4:	4406a000 	mfc1	a2,$f20
    13a8:	0c000000 	jal	0 <func_80ACF4A0>
    13ac:	e7a40010 	swc1	$f4,16(sp)
    13b0:	8e4202d4 	lw	v0,724(s2)
    13b4:	26440032 	addiu	a0,s2,50
    13b8:	24060001 	li	a2,1
    13bc:	14400007 	bnez	v0,13dc <func_80AD076C+0x110>
    13c0:	244fffff 	addiu	t7,v0,-1
    13c4:	8645008a 	lh	a1,138(s2)
    13c8:	afa00010 	sw	zero,16(sp)
    13cc:	0c000000 	jal	0 <func_80ACF4A0>
    13d0:	2407033e 	li	a3,830
    13d4:	10000003 	b	13e4 <func_80AD076C+0x118>
    13d8:	865800b6 	lh	t8,182(s2)
    13dc:	ae4f02d4 	sw	t7,724(s2)
    13e0:	865800b6 	lh	t8,182(s2)
    13e4:	2644014c 	addiu	a0,s2,332
    13e8:	2719015e 	addiu	t9,t8,350
    13ec:	0c000000 	jal	0 <func_80ACF4A0>
    13f0:	a65900b6 	sh	t9,182(s2)
    13f4:	264402f0 	addiu	a0,s2,752
    13f8:	24050fa0 	li	a1,4000
    13fc:	24060001 	li	a2,1
    1400:	240701f4 	li	a3,500
    1404:	0c000000 	jal	0 <func_80ACF4A0>
    1408:	afa00010 	sw	zero,16(sp)
    140c:	864802f2 	lh	t0,754(s2)
    1410:	864902f0 	lh	t1,752(s2)
    1414:	44803000 	mtc1	zero,$f6
    1418:	3c053d99 	lui	a1,0x3d99
    141c:	01095021 	addu	t2,t0,t1
    1420:	a64a02f2 	sh	t2,754(s2)
    1424:	4406a000 	mfc1	a2,$f20
    1428:	3c073ba3 	lui	a3,0x3ba3
    142c:	34e7d70a 	ori	a3,a3,0xd70a
    1430:	34a5999a 	ori	a1,a1,0x999a
    1434:	264402ec 	addiu	a0,s2,748
    1438:	0c000000 	jal	0 <func_80ACF4A0>
    143c:	e7a60010 	swc1	$f6,16(sp)
    1440:	02402025 	move	a0,s2
    1444:	0c000000 	jal	0 <func_80ACF4A0>
    1448:	24053184 	li	a1,12676
    144c:	924303bc 	lbu	v1,956(s2)
    1450:	306b0004 	andi	t3,v1,0x4
    1454:	11600009 	beqz	t3,147c <func_80AD076C+0x1b0>
    1458:	306e0002 	andi	t6,v1,0x2
    145c:	924c03bd 	lbu	t4,957(s2)
    1460:	a24000af 	sb	zero,175(s2)
    1464:	02402025 	move	a0,s2
    1468:	318dff7f 	andi	t5,t4,0xff7f
    146c:	0c000000 	jal	0 <func_80ACF4A0>
    1470:	a24d03bd 	sb	t5,957(s2)
    1474:	10000083 	b	1684 <func_80AD076C+0x3b8>
    1478:	8fbf005c 	lw	ra,92(sp)
    147c:	15c00009 	bnez	t6,14a4 <func_80AD076C+0x1d8>
    1480:	8fa90094 	lw	t1,148(sp)
    1484:	924f0311 	lbu	t7,785(s2)
    1488:	31f80002 	andi	t8,t7,0x2
    148c:	57000006 	bnezl	t8,14a8 <func_80AD076C+0x1dc>
    1490:	8d2a1c44 	lw	t2,7236(t1)
    1494:	96590088 	lhu	t9,136(s2)
    1498:	33280001 	andi	t0,t9,0x1
    149c:	51000079 	beqzl	t0,1684 <func_80AD076C+0x3b8>
    14a0:	8fbf005c 	lw	ra,92(sp)
    14a4:	8d2a1c44 	lw	t2,7236(t1)
    14a8:	306bfffd 	andi	t3,v1,0xfffd
    14ac:	afaa0088 	sw	t2,136(sp)
    14b0:	92420311 	lbu	v0,785(s2)
    14b4:	a24b03bc 	sb	t3,956(s2)
    14b8:	8fac0088 	lw	t4,136(sp)
    14bc:	30420002 	andi	v0,v0,0x2
    14c0:	14400016 	bnez	v0,151c <func_80AD076C+0x250>
    14c4:	00000000 	nop
    14c8:	8e4d03b0 	lw	t5,944(s2)
    14cc:	158d0013 	bne	t4,t5,151c <func_80AD076C+0x250>
    14d0:	00000000 	nop
    14d4:	0c000000 	jal	0 <func_80ACF4A0>
    14d8:	00000000 	nop
    14dc:	3c013f00 	lui	at,0x3f00
    14e0:	44814000 	mtc1	at,$f8
    14e4:	24080028 	li	t0,40
    14e8:	4600403c 	c.lt.s	$f8,$f0
    14ec:	00000000 	nop
    14f0:	45020006 	bc1fl	150c <func_80AD076C+0x240>
    14f4:	86580032 	lh	t8,50(s2)
    14f8:	864e0032 	lh	t6,50(s2)
    14fc:	25cf2000 	addiu	t7,t6,8192
    1500:	10000004 	b	1514 <func_80AD076C+0x248>
    1504:	a64f0032 	sh	t7,50(s2)
    1508:	86580032 	lh	t8,50(s2)
    150c:	2719e000 	addiu	t9,t8,-8192
    1510:	a6590032 	sh	t9,50(s2)
    1514:	1000003f 	b	1614 <func_80AD076C+0x348>
    1518:	ae4802d4 	sw	t0,724(s2)
    151c:	14400004 	bnez	v0,1530 <func_80AD076C+0x264>
    1520:	3c0b0000 	lui	t3,0x0
    1524:	96490088 	lhu	t1,136(s2)
    1528:	312a0001 	andi	t2,t1,0x1
    152c:	11400039 	beqz	t2,1614 <func_80AD076C+0x348>
    1530:	256b0000 	addiu	t3,t3,0
    1534:	8d6d0000 	lw	t5,0(t3)
    1538:	27b1007c 	addiu	s1,sp,124
    153c:	3c0141a0 	lui	at,0x41a0
    1540:	ae2d0000 	sw	t5,0(s1)
    1544:	8d6c0004 	lw	t4,4(t3)
    1548:	4481a000 	mtc1	at,$f20
    154c:	24100004 	li	s0,4
    1550:	ae2c0004 	sw	t4,4(s1)
    1554:	8d6d0008 	lw	t5,8(t3)
    1558:	ae2d0008 	sw	t5,8(s1)
    155c:	0c000000 	jal	0 <func_80ACF4A0>
    1560:	4600a306 	mov.s	$f12,$f20
    1564:	c64a0024 	lwc1	$f10,36(s2)
    1568:	3c014120 	lui	at,0x4120
    156c:	44816000 	mtc1	at,$f12
    1570:	460a0400 	add.s	$f16,$f0,$f10
    1574:	0c000000 	jal	0 <func_80ACF4A0>
    1578:	e7b0006c 	swc1	$f16,108(sp)
    157c:	c6520028 	lwc1	$f18,40(s2)
    1580:	4600a306 	mov.s	$f12,$f20
    1584:	46120100 	add.s	$f4,$f0,$f18
    1588:	0c000000 	jal	0 <func_80ACF4A0>
    158c:	e7a40070 	swc1	$f4,112(sp)
    1590:	c646002c 	lwc1	$f6,44(s2)
    1594:	240e0028 	li	t6,40
    1598:	240f0007 	li	t7,7
    159c:	46060200 	add.s	$f8,$f0,$f6
    15a0:	241800ff 	li	t8,255
    15a4:	241900ff 	li	t9,255
    15a8:	240800ff 	li	t0,255
    15ac:	240900ff 	li	t1,255
    15b0:	240a00ff 	li	t2,255
    15b4:	240b0001 	li	t3,1
    15b8:	240c0009 	li	t4,9
    15bc:	240d0001 	li	t5,1
    15c0:	e7a80074 	swc1	$f8,116(sp)
    15c4:	afad003c 	sw	t5,60(sp)
    15c8:	afac0038 	sw	t4,56(sp)
    15cc:	afab0034 	sw	t3,52(sp)
    15d0:	afaa0028 	sw	t2,40(sp)
    15d4:	afa90024 	sw	t1,36(sp)
    15d8:	afa80020 	sw	t0,32(sp)
    15dc:	afb9001c 	sw	t9,28(sp)
    15e0:	afb80018 	sw	t8,24(sp)
    15e4:	afaf0014 	sw	t7,20(sp)
    15e8:	afae0010 	sw	t6,16(sp)
    15ec:	afa00030 	sw	zero,48(sp)
    15f0:	afa0002c 	sw	zero,44(sp)
    15f4:	8fa40094 	lw	a0,148(sp)
    15f8:	27a5006c 	addiu	a1,sp,108
    15fc:	02203025 	move	a2,s1
    1600:	0c000000 	jal	0 <func_80ACF4A0>
    1604:	02203825 	move	a3,s1
    1608:	2610ffff 	addiu	s0,s0,-1
    160c:	0601ffd3 	bgez	s0,155c <func_80AD076C+0x290>
    1610:	00000000 	nop
    1614:	8fae0088 	lw	t6,136(sp)
    1618:	8e4f03b0 	lw	t7,944(s2)
    161c:	55cf0006 	bnel	t6,t7,1638 <func_80AD076C+0x36c>
    1620:	96480088 	lhu	t0,136(s2)
    1624:	92580311 	lbu	t8,785(s2)
    1628:	33190002 	andi	t9,t8,0x2
    162c:	53200015 	beqzl	t9,1684 <func_80AD076C+0x3b8>
    1630:	8fbf005c 	lw	ra,92(sp)
    1634:	96480088 	lhu	t0,136(s2)
    1638:	8fa40094 	lw	a0,148(sp)
    163c:	264500e4 	addiu	a1,s2,228
    1640:	31090001 	andi	t1,t0,0x1
    1644:	15200007 	bnez	t1,1664 <func_80AD076C+0x398>
    1648:	24063985 	li	a2,14725
    164c:	240a0001 	li	t2,1
    1650:	240b0028 	li	t3,40
    1654:	afab0014 	sw	t3,20(sp)
    1658:	afaa0010 	sw	t2,16(sp)
    165c:	0c000000 	jal	0 <func_80ACF4A0>
    1660:	24070001 	li	a3,1
    1664:	8fa40094 	lw	a0,148(sp)
    1668:	02402825 	move	a1,s2
    166c:	26460024 	addiu	a2,s2,36
    1670:	0c000000 	jal	0 <func_80ACF4A0>
    1674:	24070020 	li	a3,32
    1678:	0c000000 	jal	0 <func_80ACF4A0>
    167c:	02402025 	move	a0,s2
    1680:	8fbf005c 	lw	ra,92(sp)
    1684:	d7b40048 	ldc1	$f20,72(sp)
    1688:	8fb00050 	lw	s0,80(sp)
    168c:	8fb10054 	lw	s1,84(sp)
    1690:	8fb20058 	lw	s2,88(sp)
    1694:	03e00008 	jr	ra
    1698:	27bd0090 	addiu	sp,sp,144

0000169c <func_80AD0B3C>:
    169c:	27bdffe8 	addiu	sp,sp,-24
    16a0:	afbf0014 	sw	ra,20(sp)
    16a4:	240e000a 	li	t6,10
    16a8:	00803025 	move	a2,a0
    16ac:	ac8e02b0 	sw	t6,688(a0)
    16b0:	3c050600 	lui	a1,0x600
    16b4:	24a50350 	addiu	a1,a1,848
    16b8:	afa60018 	sw	a2,24(sp)
    16bc:	0c000000 	jal	0 <func_80ACF4A0>
    16c0:	2484014c 	addiu	a0,a0,332
    16c4:	3c050000 	lui	a1,0x0
    16c8:	8fa40018 	lw	a0,24(sp)
    16cc:	0c000000 	jal	0 <func_80ACF4A0>
    16d0:	24a50000 	addiu	a1,a1,0
    16d4:	8fbf0014 	lw	ra,20(sp)
    16d8:	27bd0018 	addiu	sp,sp,24
    16dc:	03e00008 	jr	ra
    16e0:	00000000 	nop

000016e4 <func_80AD0B84>:
    16e4:	27bdffc0 	addiu	sp,sp,-64
    16e8:	44802000 	mtc1	zero,$f4
    16ec:	afb00028 	sw	s0,40(sp)
    16f0:	00808025 	move	s0,a0
    16f4:	afbf002c 	sw	ra,44(sp)
    16f8:	afa50044 	sw	a1,68(sp)
    16fc:	3c05c47a 	lui	a1,0xc47a
    1700:	248400bc 	addiu	a0,a0,188
    1704:	3c063f80 	lui	a2,0x3f80
    1708:	3c074248 	lui	a3,0x4248
    170c:	0c000000 	jal	0 <func_80ACF4A0>
    1710:	e7a40010 	swc1	$f4,16(sp)
    1714:	3c013f80 	lui	at,0x3f80
    1718:	44810000 	mtc1	at,$f0
    171c:	44801000 	mtc1	zero,$f2
    1720:	26040068 	addiu	a0,s0,104
    1724:	44060000 	mfc1	a2,$f0
    1728:	44070000 	mfc1	a3,$f0
    172c:	44051000 	mfc1	a1,$f2
    1730:	0c000000 	jal	0 <func_80ACF4A0>
    1734:	e7a20010 	swc1	$f2,16(sp)
    1738:	260400b4 	addiu	a0,s0,180
    173c:	00002825 	move	a1,zero
    1740:	24060001 	li	a2,1
    1744:	24070032 	li	a3,50
    1748:	0c000000 	jal	0 <func_80ACF4A0>
    174c:	afa00010 	sw	zero,16(sp)
    1750:	0c000000 	jal	0 <func_80ACF4A0>
    1754:	2604014c 	addiu	a0,s0,332
    1758:	5040000b 	beqzl	v0,1788 <func_80AD0B84+0xa4>
    175c:	c6000080 	lwc1	$f0,128(s0)
    1760:	0c000000 	jal	0 <func_80ACF4A0>
    1764:	02002025 	move	a0,s0
    1768:	c6060080 	lwc1	$f6,128(s0)
    176c:	02002025 	move	a0,s0
    1770:	24053957 	li	a1,14679
    1774:	0c000000 	jal	0 <func_80ACF4A0>
    1778:	e6060028 	swc1	$f6,40(s0)
    177c:	10000039 	b	1864 <func_80AD0B84+0x180>
    1780:	260402f0 	addiu	a0,s0,752
    1784:	c6000080 	lwc1	$f0,128(s0)
    1788:	c6080028 	lwc1	$f8,40(s0)
    178c:	3c063e99 	lui	a2,0x3e99
    1790:	34c6999a 	ori	a2,a2,0x999a
    1794:	4608003c 	c.lt.s	$f0,$f8
    1798:	26040028 	addiu	a0,s0,40
    179c:	3c074060 	lui	a3,0x4060
    17a0:	3c013e80 	lui	at,0x3e80
    17a4:	4502002f 	bc1fl	1864 <func_80AD0B84+0x180>
    17a8:	260402f0 	addiu	a0,s0,752
    17ac:	44815000 	mtc1	at,$f10
    17b0:	44050000 	mfc1	a1,$f0
    17b4:	0c000000 	jal	0 <func_80ACF4A0>
    17b8:	e7aa0010 	swc1	$f10,16(sp)
    17bc:	c6100028 	lwc1	$f16,40(s0)
    17c0:	c6120080 	lwc1	$f18,128(s0)
    17c4:	3c014270 	lui	at,0x4270
    17c8:	44813000 	mtc1	at,$f6
    17cc:	46128101 	sub.s	$f4,$f16,$f18
    17d0:	4606203c 	c.lt.s	$f4,$f6
    17d4:	00000000 	nop
    17d8:	45020022 	bc1fl	1864 <func_80AD0B84+0x180>
    17dc:	260402f0 	addiu	a0,s0,752
    17e0:	8e0f0024 	lw	t7,36(s0)
    17e4:	27a50034 	addiu	a1,sp,52
    17e8:	24180096 	li	t8,150
    17ec:	acaf0000 	sw	t7,0(a1)
    17f0:	8e0e0028 	lw	t6,40(s0)
    17f4:	24190064 	li	t9,100
    17f8:	24080001 	li	t0,1
    17fc:	acae0004 	sw	t6,4(a1)
    1800:	8e0f002c 	lw	t7,44(s0)
    1804:	3c0642a0 	lui	a2,0x42a0
    1808:	24070001 	li	a3,1
    180c:	acaf0008 	sw	t7,8(a1)
    1810:	c6080080 	lwc1	$f8,128(s0)
    1814:	afa80018 	sw	t0,24(sp)
    1818:	afb90014 	sw	t9,20(sp)
    181c:	afb80010 	sw	t8,16(sp)
    1820:	8fa40044 	lw	a0,68(sp)
    1824:	0c000000 	jal	0 <func_80ACF4A0>
    1828:	e7a80038 	swc1	$f8,56(sp)
    182c:	3c010000 	lui	at,0x0
    1830:	c42a0000 	lwc1	$f10,0(at)
    1834:	3c014000 	lui	at,0x4000
    1838:	44818000 	mtc1	at,$f16
    183c:	24090002 	li	t1,2
    1840:	afa90010 	sw	t1,16(sp)
    1844:	8fa40044 	lw	a0,68(sp)
    1848:	02002825 	move	a1,s0
    184c:	27a60034 	addiu	a2,sp,52
    1850:	3c074296 	lui	a3,0x4296
    1854:	e7aa0014 	swc1	$f10,20(sp)
    1858:	0c000000 	jal	0 <func_80ACF4A0>
    185c:	e7b00018 	swc1	$f16,24(sp)
    1860:	260402f0 	addiu	a0,s0,752
    1864:	00002825 	move	a1,zero
    1868:	24060001 	li	a2,1
    186c:	24070064 	li	a3,100
    1870:	0c000000 	jal	0 <func_80ACF4A0>
    1874:	afa00010 	sw	zero,16(sp)
    1878:	860a02f2 	lh	t2,754(s0)
    187c:	860b02f0 	lh	t3,752(s0)
    1880:	014b6021 	addu	t4,t2,t3
    1884:	a60c02f2 	sh	t4,754(s0)
    1888:	8fbf002c 	lw	ra,44(sp)
    188c:	8fb00028 	lw	s0,40(sp)
    1890:	27bd0040 	addiu	sp,sp,64
    1894:	03e00008 	jr	ra
    1898:	00000000 	nop

0000189c <func_80AD0D3C>:
    189c:	27bdffe8 	addiu	sp,sp,-24
    18a0:	afbf0014 	sw	ra,20(sp)
    18a4:	00803025 	move	a2,a0
    18a8:	3c050600 	lui	a1,0x600
    18ac:	24a50350 	addiu	a1,a1,848
    18b0:	afa60018 	sw	a2,24(sp)
    18b4:	0c000000 	jal	0 <func_80ACF4A0>
    18b8:	2484014c 	addiu	a0,a0,332
    18bc:	8fa40018 	lw	a0,24(sp)
    18c0:	240e000a 	li	t6,10
    18c4:	3c050000 	lui	a1,0x0
    18c8:	24a50000 	addiu	a1,a1,0
    18cc:	0c000000 	jal	0 <func_80ACF4A0>
    18d0:	ac8e02b0 	sw	t6,688(a0)
    18d4:	8fbf0014 	lw	ra,20(sp)
    18d8:	27bd0018 	addiu	sp,sp,24
    18dc:	03e00008 	jr	ra
    18e0:	00000000 	nop

000018e4 <func_80AD0D84>:
    18e4:	27bdffc0 	addiu	sp,sp,-64
    18e8:	44802000 	mtc1	zero,$f4
    18ec:	afb00028 	sw	s0,40(sp)
    18f0:	00808025 	move	s0,a0
    18f4:	afbf002c 	sw	ra,44(sp)
    18f8:	afa50044 	sw	a1,68(sp)
    18fc:	3c05c47a 	lui	a1,0xc47a
    1900:	248400bc 	addiu	a0,a0,188
    1904:	3c063f80 	lui	a2,0x3f80
    1908:	3c074248 	lui	a3,0x4248
    190c:	0c000000 	jal	0 <func_80ACF4A0>
    1910:	e7a40010 	swc1	$f4,16(sp)
    1914:	3c013f80 	lui	at,0x3f80
    1918:	44810000 	mtc1	at,$f0
    191c:	44801000 	mtc1	zero,$f2
    1920:	26040068 	addiu	a0,s0,104
    1924:	44060000 	mfc1	a2,$f0
    1928:	44070000 	mfc1	a3,$f0
    192c:	44051000 	mfc1	a1,$f2
    1930:	0c000000 	jal	0 <func_80ACF4A0>
    1934:	e7a20010 	swc1	$f2,16(sp)
    1938:	260400b4 	addiu	a0,s0,180
    193c:	00002825 	move	a1,zero
    1940:	24060001 	li	a2,1
    1944:	24070032 	li	a3,50
    1948:	0c000000 	jal	0 <func_80ACF4A0>
    194c:	afa00010 	sw	zero,16(sp)
    1950:	0c000000 	jal	0 <func_80ACF4A0>
    1954:	2604014c 	addiu	a0,s0,332
    1958:	5040000a 	beqzl	v0,1984 <func_80AD0D84+0xa0>
    195c:	c6000080 	lwc1	$f0,128(s0)
    1960:	0c000000 	jal	0 <func_80ACF4A0>
    1964:	02002025 	move	a0,s0
    1968:	02002025 	move	a0,s0
    196c:	0c000000 	jal	0 <func_80ACF4A0>
    1970:	24053957 	li	a1,14679
    1974:	c6060080 	lwc1	$f6,128(s0)
    1978:	10000038 	b	1a5c <func_80AD0D84+0x178>
    197c:	e6060028 	swc1	$f6,40(s0)
    1980:	c6000080 	lwc1	$f0,128(s0)
    1984:	c6080028 	lwc1	$f8,40(s0)
    1988:	3c063e99 	lui	a2,0x3e99
    198c:	34c6999a 	ori	a2,a2,0x999a
    1990:	4608003c 	c.lt.s	$f0,$f8
    1994:	26040028 	addiu	a0,s0,40
    1998:	3c074158 	lui	a3,0x4158
    199c:	3c013e80 	lui	at,0x3e80
    19a0:	4502002f 	bc1fl	1a60 <func_80AD0D84+0x17c>
    19a4:	260402f0 	addiu	a0,s0,752
    19a8:	44815000 	mtc1	at,$f10
    19ac:	44050000 	mfc1	a1,$f0
    19b0:	0c000000 	jal	0 <func_80ACF4A0>
    19b4:	e7aa0010 	swc1	$f10,16(sp)
    19b8:	c6100028 	lwc1	$f16,40(s0)
    19bc:	c6120080 	lwc1	$f18,128(s0)
    19c0:	3c014270 	lui	at,0x4270
    19c4:	44813000 	mtc1	at,$f6
    19c8:	46128101 	sub.s	$f4,$f16,$f18
    19cc:	4606203c 	c.lt.s	$f4,$f6
    19d0:	00000000 	nop
    19d4:	45020022 	bc1fl	1a60 <func_80AD0D84+0x17c>
    19d8:	260402f0 	addiu	a0,s0,752
    19dc:	8e0f0024 	lw	t7,36(s0)
    19e0:	27a50034 	addiu	a1,sp,52
    19e4:	24180096 	li	t8,150
    19e8:	acaf0000 	sw	t7,0(a1)
    19ec:	8e0e0028 	lw	t6,40(s0)
    19f0:	24190064 	li	t9,100
    19f4:	24080001 	li	t0,1
    19f8:	acae0004 	sw	t6,4(a1)
    19fc:	8e0f002c 	lw	t7,44(s0)
    1a00:	3c0642a0 	lui	a2,0x42a0
    1a04:	24070001 	li	a3,1
    1a08:	acaf0008 	sw	t7,8(a1)
    1a0c:	c6080080 	lwc1	$f8,128(s0)
    1a10:	afa80018 	sw	t0,24(sp)
    1a14:	afb90014 	sw	t9,20(sp)
    1a18:	afb80010 	sw	t8,16(sp)
    1a1c:	8fa40044 	lw	a0,68(sp)
    1a20:	0c000000 	jal	0 <func_80ACF4A0>
    1a24:	e7a80038 	swc1	$f8,56(sp)
    1a28:	3c010000 	lui	at,0x0
    1a2c:	c42a0000 	lwc1	$f10,0(at)
    1a30:	3c014000 	lui	at,0x4000
    1a34:	44818000 	mtc1	at,$f16
    1a38:	24090002 	li	t1,2
    1a3c:	afa90010 	sw	t1,16(sp)
    1a40:	8fa40044 	lw	a0,68(sp)
    1a44:	02002825 	move	a1,s0
    1a48:	27a60034 	addiu	a2,sp,52
    1a4c:	3c074296 	lui	a3,0x4296
    1a50:	e7aa0014 	swc1	$f10,20(sp)
    1a54:	0c000000 	jal	0 <func_80ACF4A0>
    1a58:	e7b00018 	swc1	$f16,24(sp)
    1a5c:	260402f0 	addiu	a0,s0,752
    1a60:	00002825 	move	a1,zero
    1a64:	24060001 	li	a2,1
    1a68:	24070064 	li	a3,100
    1a6c:	0c000000 	jal	0 <func_80ACF4A0>
    1a70:	afa00010 	sw	zero,16(sp)
    1a74:	860a02f2 	lh	t2,754(s0)
    1a78:	860b02f0 	lh	t3,752(s0)
    1a7c:	014b6021 	addu	t4,t2,t3
    1a80:	a60c02f2 	sh	t4,754(s0)
    1a84:	8fbf002c 	lw	ra,44(sp)
    1a88:	8fb00028 	lw	s0,40(sp)
    1a8c:	27bd0040 	addiu	sp,sp,64
    1a90:	03e00008 	jr	ra
    1a94:	00000000 	nop

00001a98 <func_80AD0F38>:
    1a98:	27bdffe0 	addiu	sp,sp,-32
    1a9c:	afb00018 	sw	s0,24(sp)
    1aa0:	00808025 	move	s0,a0
    1aa4:	afbf001c 	sw	ra,28(sp)
    1aa8:	3c050600 	lui	a1,0x600
    1aac:	24a505c4 	addiu	a1,a1,1476
    1ab0:	0c000000 	jal	0 <func_80ACF4A0>
    1ab4:	2484014c 	addiu	a0,a0,332
    1ab8:	0c000000 	jal	0 <func_80ACF4A0>
    1abc:	00000000 	nop
    1ac0:	3c013f00 	lui	at,0x3f00
    1ac4:	44812000 	mtc1	at,$f4
    1ac8:	3c014020 	lui	at,0x4020
    1acc:	44814000 	mtc1	at,$f8
    1ad0:	46040182 	mul.s	$f6,$f0,$f4
    1ad4:	46083280 	add.s	$f10,$f6,$f8
    1ad8:	0c000000 	jal	0 <func_80ACF4A0>
    1adc:	e60a0068 	swc1	$f10,104(s0)
    1ae0:	3c014120 	lui	at,0x4120
    1ae4:	44811000 	mtc1	at,$f2
    1ae8:	2418000f 	li	t8,15
    1aec:	3c050000 	lui	a1,0x0
    1af0:	46020402 	mul.s	$f16,$f0,$f2
    1af4:	ae1802b0 	sw	t8,688(s0)
    1af8:	24a50000 	addiu	a1,a1,0
    1afc:	02002025 	move	a0,s0
    1b00:	46028480 	add.s	$f18,$f16,$f2
    1b04:	4600910d 	trunc.w.s	$f4,$f18
    1b08:	440f2000 	mfc1	t7,$f4
    1b0c:	0c000000 	jal	0 <func_80ACF4A0>
    1b10:	ae0f02d4 	sw	t7,724(s0)
    1b14:	8fbf001c 	lw	ra,28(sp)
    1b18:	8fb00018 	lw	s0,24(sp)
    1b1c:	27bd0020 	addiu	sp,sp,32
    1b20:	03e00008 	jr	ra
    1b24:	00000000 	nop

00001b28 <func_80AD0FC8>:
    1b28:	27bdffd0 	addiu	sp,sp,-48
    1b2c:	afbf0024 	sw	ra,36(sp)
    1b30:	afb00020 	sw	s0,32(sp)
    1b34:	afa50034 	sw	a1,52(sp)
    1b38:	8caf1c44 	lw	t7,7236(a1)
    1b3c:	3c014296 	lui	at,0x4296
    1b40:	44812000 	mtc1	at,$f4
    1b44:	afaf0028 	sw	t7,40(sp)
    1b48:	c4860080 	lwc1	$f6,128(a0)
    1b4c:	c4800028 	lwc1	$f0,40(a0)
    1b50:	00808025 	move	s0,a0
    1b54:	46060201 	sub.s	$f8,$f0,$f6
    1b58:	4608203c 	c.lt.s	$f4,$f8
    1b5c:	00000000 	nop
    1b60:	45000005 	bc1f	1b78 <func_80AD0FC8+0x50>
    1b64:	3c013f80 	lui	at,0x3f80
    1b68:	44815000 	mtc1	at,$f10
    1b6c:	00000000 	nop
    1b70:	460a0401 	sub.s	$f16,$f0,$f10
    1b74:	e4900028 	swc1	$f16,40(a0)
    1b78:	0c000000 	jal	0 <func_80ACF4A0>
    1b7c:	c60c02e0 	lwc1	$f12,736(s0)
    1b80:	3c010000 	lui	at,0x0
    1b84:	c4260000 	lwc1	$f6,0(at)
    1b88:	c6120028 	lwc1	$f18,40(s0)
    1b8c:	c60c02e0 	lwc1	$f12,736(s0)
    1b90:	46060102 	mul.s	$f4,$f0,$f6
    1b94:	46049200 	add.s	$f8,$f18,$f4
    1b98:	0c000000 	jal	0 <func_80ACF4A0>
    1b9c:	e6080028 	swc1	$f8,40(s0)
    1ba0:	3c010000 	lui	at,0x0
    1ba4:	c42a0000 	lwc1	$f10,0(at)
    1ba8:	44808000 	mtc1	zero,$f16
    1bac:	3c010000 	lui	at,0x0
    1bb0:	460a0082 	mul.s	$f2,$f0,$f10
    1bb4:	4602803e 	c.le.s	$f16,$f2
    1bb8:	00000000 	nop
    1bbc:	45020004 	bc1fl	1bd0 <func_80AD0FC8+0xa8>
    1bc0:	46001007 	neg.s	$f0,$f2
    1bc4:	10000002 	b	1bd0 <func_80AD0FC8+0xa8>
    1bc8:	46001006 	mov.s	$f0,$f2
    1bcc:	46001007 	neg.s	$f0,$f2
    1bd0:	c4320000 	lwc1	$f18,0(at)
    1bd4:	c60602e0 	lwc1	$f6,736(s0)
    1bd8:	8e1802d4 	lw	t8,724(s0)
    1bdc:	46120100 	add.s	$f4,$f0,$f18
    1be0:	2719ffff 	addiu	t9,t8,-1
    1be4:	ae1902d4 	sw	t9,724(s0)
    1be8:	46043200 	add.s	$f8,$f6,$f4
    1bec:	1f20001e 	bgtz	t9,1c68 <func_80AD0FC8+0x140>
    1bf0:	e60802e0 	swc1	$f8,736(s0)
    1bf4:	0c000000 	jal	0 <func_80ACF4A0>
    1bf8:	00000000 	nop
    1bfc:	3c013f00 	lui	at,0x3f00
    1c00:	44815000 	mtc1	at,$f10
    1c04:	3c014020 	lui	at,0x4020
    1c08:	44819000 	mtc1	at,$f18
    1c0c:	460a0402 	mul.s	$f16,$f0,$f10
    1c10:	46128180 	add.s	$f6,$f16,$f18
    1c14:	0c000000 	jal	0 <func_80ACF4A0>
    1c18:	e6060068 	swc1	$f6,104(s0)
    1c1c:	3c014120 	lui	at,0x4120
    1c20:	44811000 	mtc1	at,$f2
    1c24:	00000000 	nop
    1c28:	46020102 	mul.s	$f4,$f0,$f2
    1c2c:	46022200 	add.s	$f8,$f4,$f2
    1c30:	4600428d 	trunc.w.s	$f10,$f8
    1c34:	440a5000 	mfc1	t2,$f10
    1c38:	0c000000 	jal	0 <func_80ACF4A0>
    1c3c:	ae0a02d4 	sw	t2,724(s0)
    1c40:	3c013f00 	lui	at,0x3f00
    1c44:	44818000 	mtc1	at,$f16
    1c48:	3c01447a 	lui	at,0x447a
    1c4c:	44813000 	mtc1	at,$f6
    1c50:	46100481 	sub.s	$f18,$f0,$f16
    1c54:	46069102 	mul.s	$f4,$f18,$f6
    1c58:	4600220d 	trunc.w.s	$f8,$f4
    1c5c:	440c4000 	mfc1	t4,$f8
    1c60:	00000000 	nop
    1c64:	a60c02f4 	sh	t4,756(s0)
    1c68:	0c000000 	jal	0 <func_80ACF4A0>
    1c6c:	2604014c 	addiu	a0,s0,332
    1c70:	860d0032 	lh	t5,50(s0)
    1c74:	860e02f4 	lh	t6,756(s0)
    1c78:	860202f8 	lh	v0,760(s0)
    1c7c:	01ae7821 	addu	t7,t5,t6
    1c80:	1c400006 	bgtz	v0,1c9c <func_80AD0FC8+0x174>
    1c84:	a60f0032 	sh	t7,50(s0)
    1c88:	0c000000 	jal	0 <func_80ACF4A0>
    1c8c:	02002025 	move	a0,s0
    1c90:	24180028 	li	t8,40
    1c94:	10000003 	b	1ca4 <func_80AD0FC8+0x17c>
    1c98:	a61802f6 	sh	t8,758(s0)
    1c9c:	2459ffff 	addiu	t9,v0,-1
    1ca0:	a61902f8 	sh	t9,760(s0)
    1ca4:	860800b6 	lh	t0,182(s0)
    1ca8:	3c0a0000 	lui	t2,0x0
    1cac:	2509015e 	addiu	t1,t0,350
    1cb0:	a60900b6 	sh	t1,182(s0)
    1cb4:	8d4a0010 	lw	t2,16(t2)
    1cb8:	8fa50028 	lw	a1,40(sp)
    1cbc:	15400013 	bnez	t2,1d0c <func_80AD0FC8+0x1e4>
    1cc0:	24a50024 	addiu	a1,a1,36
    1cc4:	0c000000 	jal	0 <func_80ACF4A0>
    1cc8:	26040008 	addiu	a0,s0,8
    1ccc:	c60a02d8 	lwc1	$f10,728(s0)
    1cd0:	460a003c 	c.lt.s	$f0,$f10
    1cd4:	00000000 	nop
    1cd8:	4500000c 	bc1f	1d0c <func_80AD0FC8+0x1e4>
    1cdc:	00000000 	nop
    1ce0:	860b008a 	lh	t3,138(s0)
    1ce4:	02002025 	move	a0,s0
    1ce8:	0c000000 	jal	0 <func_80ACF4A0>
    1cec:	a60b0032 	sh	t3,50(s0)
    1cf0:	8fac0034 	lw	t4,52(sp)
    1cf4:	3c0d0001 	lui	t5,0x1
    1cf8:	01ac6821 	addu	t5,t5,t4
    1cfc:	8dad1de4 	lw	t5,7652(t5)
    1d00:	31ae0001 	andi	t6,t5,0x1
    1d04:	10000003 	b	1d14 <func_80AD0FC8+0x1ec>
    1d08:	a60e02fa 	sh	t6,762(s0)
    1d0c:	0c000000 	jal	0 <func_80ACF4A0>
    1d10:	02002025 	move	a0,s0
    1d14:	260402f0 	addiu	a0,s0,752
    1d18:	24050fa0 	li	a1,4000
    1d1c:	24060001 	li	a2,1
    1d20:	240701f4 	li	a3,500
    1d24:	0c000000 	jal	0 <func_80ACF4A0>
    1d28:	afa00010 	sw	zero,16(sp)
    1d2c:	860f02f2 	lh	t7,754(s0)
    1d30:	861802f0 	lh	t8,752(s0)
    1d34:	44808000 	mtc1	zero,$f16
    1d38:	3c053d99 	lui	a1,0x3d99
    1d3c:	01f8c821 	addu	t9,t7,t8
    1d40:	a61902f2 	sh	t9,754(s0)
    1d44:	3c073ba3 	lui	a3,0x3ba3
    1d48:	34e7d70a 	ori	a3,a3,0xd70a
    1d4c:	34a5999a 	ori	a1,a1,0x999a
    1d50:	260402ec 	addiu	a0,s0,748
    1d54:	3c063f80 	lui	a2,0x3f80
    1d58:	0c000000 	jal	0 <func_80ACF4A0>
    1d5c:	e7b00010 	swc1	$f16,16(sp)
    1d60:	02002025 	move	a0,s0
    1d64:	0c000000 	jal	0 <func_80ACF4A0>
    1d68:	24053155 	li	a1,12629
    1d6c:	8fbf0024 	lw	ra,36(sp)
    1d70:	8fb00020 	lw	s0,32(sp)
    1d74:	27bd0030 	addiu	sp,sp,48
    1d78:	03e00008 	jr	ra
    1d7c:	00000000 	nop

00001d80 <func_80AD1220>:
    1d80:	27bdffe8 	addiu	sp,sp,-24
    1d84:	3c014020 	lui	at,0x4020
    1d88:	44812000 	mtc1	at,$f4
    1d8c:	afbf0014 	sw	ra,20(sp)
    1d90:	240e000c 	li	t6,12
    1d94:	3c050000 	lui	a1,0x0
    1d98:	ac8e02b0 	sw	t6,688(a0)
    1d9c:	24a50000 	addiu	a1,a1,0
    1da0:	0c000000 	jal	0 <func_80ACF4A0>
    1da4:	e4840068 	swc1	$f4,104(a0)
    1da8:	8fbf0014 	lw	ra,20(sp)
    1dac:	27bd0018 	addiu	sp,sp,24
    1db0:	03e00008 	jr	ra
    1db4:	00000000 	nop

00001db8 <func_80AD1258>:
    1db8:	27bdffc0 	addiu	sp,sp,-64
    1dbc:	afbf0024 	sw	ra,36(sp)
    1dc0:	afb00020 	sw	s0,32(sp)
    1dc4:	afa50044 	sw	a1,68(sp)
    1dc8:	8caf1c44 	lw	t7,7236(a1)
    1dcc:	3c014296 	lui	at,0x4296
    1dd0:	44812000 	mtc1	at,$f4
    1dd4:	afaf0034 	sw	t7,52(sp)
    1dd8:	c4860080 	lwc1	$f6,128(a0)
    1ddc:	c4800028 	lwc1	$f0,40(a0)
    1de0:	00808025 	move	s0,a0
    1de4:	46060201 	sub.s	$f8,$f0,$f6
    1de8:	4608203c 	c.lt.s	$f4,$f8
    1dec:	00000000 	nop
    1df0:	45000006 	bc1f	1e0c <func_80AD1258+0x54>
    1df4:	3c013f80 	lui	at,0x3f80
    1df8:	44815000 	mtc1	at,$f10
    1dfc:	00000000 	nop
    1e00:	460a0401 	sub.s	$f16,$f0,$f10
    1e04:	10000006 	b	1e20 <func_80AD1258+0x68>
    1e08:	e4900028 	swc1	$f16,40(a0)
    1e0c:	3c013f80 	lui	at,0x3f80
    1e10:	44819000 	mtc1	at,$f18
    1e14:	00000000 	nop
    1e18:	46120180 	add.s	$f6,$f0,$f18
    1e1c:	e6060028 	swc1	$f6,40(s0)
    1e20:	0c000000 	jal	0 <func_80ACF4A0>
    1e24:	c60c02e0 	lwc1	$f12,736(s0)
    1e28:	3c010000 	lui	at,0x0
    1e2c:	c4280000 	lwc1	$f8,0(at)
    1e30:	c6040028 	lwc1	$f4,40(s0)
    1e34:	c60c02e0 	lwc1	$f12,736(s0)
    1e38:	46080282 	mul.s	$f10,$f0,$f8
    1e3c:	460a2400 	add.s	$f16,$f4,$f10
    1e40:	0c000000 	jal	0 <func_80ACF4A0>
    1e44:	e6100028 	swc1	$f16,40(s0)
    1e48:	3c010000 	lui	at,0x0
    1e4c:	c4320000 	lwc1	$f18,0(at)
    1e50:	44803000 	mtc1	zero,$f6
    1e54:	3c010000 	lui	at,0x0
    1e58:	46120082 	mul.s	$f2,$f0,$f18
    1e5c:	4602303e 	c.le.s	$f6,$f2
    1e60:	00000000 	nop
    1e64:	45020004 	bc1fl	1e78 <func_80AD1258+0xc0>
    1e68:	46001007 	neg.s	$f0,$f2
    1e6c:	10000002 	b	1e78 <func_80AD1258+0xc0>
    1e70:	46001006 	mov.s	$f0,$f2
    1e74:	46001007 	neg.s	$f0,$f2
    1e78:	c4240000 	lwc1	$f4,0(at)
    1e7c:	c60802e0 	lwc1	$f8,736(s0)
    1e80:	26040024 	addiu	a0,s0,36
    1e84:	46040280 	add.s	$f10,$f0,$f4
    1e88:	26050008 	addiu	a1,s0,8
    1e8c:	460a4400 	add.s	$f16,$f8,$f10
    1e90:	e61002e0 	swc1	$f16,736(s0)
    1e94:	afa50028 	sw	a1,40(sp)
    1e98:	0c000000 	jal	0 <func_80ACF4A0>
    1e9c:	afa4002c 	sw	a0,44(sp)
    1ea0:	00022c00 	sll	a1,v0,0x10
    1ea4:	00052c03 	sra	a1,a1,0x10
    1ea8:	26040032 	addiu	a0,s0,50
    1eac:	24060001 	li	a2,1
    1eb0:	24070258 	li	a3,600
    1eb4:	0c000000 	jal	0 <func_80ACF4A0>
    1eb8:	afa00010 	sw	zero,16(sp)
    1ebc:	260400b4 	addiu	a0,s0,180
    1ec0:	24051194 	li	a1,4500
    1ec4:	24060001 	li	a2,1
    1ec8:	24070258 	li	a3,600
    1ecc:	0c000000 	jal	0 <func_80ACF4A0>
    1ed0:	afa00010 	sw	zero,16(sp)
    1ed4:	861800b6 	lh	t8,182(s0)
    1ed8:	860802f2 	lh	t0,754(s0)
    1edc:	860902f0 	lh	t1,752(s0)
    1ee0:	2719015e 	addiu	t9,t8,350
    1ee4:	a61900b6 	sh	t9,182(s0)
    1ee8:	01095021 	addu	t2,t0,t1
    1eec:	a60a02f2 	sh	t2,754(s0)
    1ef0:	8fa50028 	lw	a1,40(sp)
    1ef4:	0c000000 	jal	0 <func_80ACF4A0>
    1ef8:	8fa4002c 	lw	a0,44(sp)
    1efc:	3c014000 	lui	at,0x4000
    1f00:	44819000 	mtc1	at,$f18
    1f04:	00000000 	nop
    1f08:	4612003c 	c.lt.s	$f0,$f18
    1f0c:	00000000 	nop
    1f10:	45000005 	bc1f	1f28 <func_80AD1258+0x170>
    1f14:	00000000 	nop
    1f18:	0c000000 	jal	0 <func_80ACF4A0>
    1f1c:	02002025 	move	a0,s0
    1f20:	240b003c 	li	t3,60
    1f24:	a60b02f6 	sh	t3,758(s0)
    1f28:	3c0c0000 	lui	t4,0x0
    1f2c:	8d8c0010 	lw	t4,16(t4)
    1f30:	8fa50034 	lw	a1,52(sp)
    1f34:	15800012 	bnez	t4,1f80 <func_80AD1258+0x1c8>
    1f38:	24a50024 	addiu	a1,a1,36
    1f3c:	0c000000 	jal	0 <func_80ACF4A0>
    1f40:	8fa40028 	lw	a0,40(sp)
    1f44:	c60602d8 	lwc1	$f6,728(s0)
    1f48:	240d0190 	li	t5,400
    1f4c:	02002025 	move	a0,s0
    1f50:	4606003c 	c.lt.s	$f0,$f6
    1f54:	00000000 	nop
    1f58:	4502000a 	bc1fl	1f84 <func_80AD1258+0x1cc>
    1f5c:	02002025 	move	a0,s0
    1f60:	0c000000 	jal	0 <func_80ACF4A0>
    1f64:	a60d02f8 	sh	t5,760(s0)
    1f68:	8fae0044 	lw	t6,68(sp)
    1f6c:	3c0f0001 	lui	t7,0x1
    1f70:	01ee7821 	addu	t7,t7,t6
    1f74:	8def1de4 	lw	t7,7652(t7)
    1f78:	31f80001 	andi	t8,t7,0x1
    1f7c:	a61802fa 	sh	t8,762(s0)
    1f80:	02002025 	move	a0,s0
    1f84:	0c000000 	jal	0 <func_80ACF4A0>
    1f88:	24053155 	li	a1,12629
    1f8c:	8fbf0024 	lw	ra,36(sp)
    1f90:	8fb00020 	lw	s0,32(sp)
    1f94:	27bd0040 	addiu	sp,sp,64
    1f98:	03e00008 	jr	ra
    1f9c:	00000000 	nop

00001fa0 <func_80AD1440>:
    1fa0:	27bdffe8 	addiu	sp,sp,-24
    1fa4:	afbf0014 	sw	ra,20(sp)
    1fa8:	00803825 	move	a3,a0
    1fac:	3c050600 	lui	a1,0x600
    1fb0:	24a50844 	addiu	a1,a1,2116
    1fb4:	afa70018 	sw	a3,24(sp)
    1fb8:	2484014c 	addiu	a0,a0,332
    1fbc:	0c000000 	jal	0 <func_80ACF4A0>
    1fc0:	3c06c080 	lui	a2,0xc080
    1fc4:	8fa40018 	lw	a0,24(sp)
    1fc8:	3c01c110 	lui	at,0xc110
    1fcc:	44812000 	mtc1	at,$f4
    1fd0:	848f008a 	lh	t7,138(a0)
    1fd4:	240e0007 	li	t6,7
    1fd8:	3c050000 	lui	a1,0x0
    1fdc:	24a50000 	addiu	a1,a1,0
    1fe0:	ac8e02b0 	sw	t6,688(a0)
    1fe4:	e4840068 	swc1	$f4,104(a0)
    1fe8:	0c000000 	jal	0 <func_80ACF4A0>
    1fec:	a48f0032 	sh	t7,50(a0)
    1ff0:	8fbf0014 	lw	ra,20(sp)
    1ff4:	27bd0018 	addiu	sp,sp,24
    1ff8:	03e00008 	jr	ra
    1ffc:	00000000 	nop

00002000 <func_80AD14A0>:
    2000:	27bdff70 	addiu	sp,sp,-144
    2004:	afbf006c 	sw	ra,108(sp)
    2008:	afb40068 	sw	s4,104(sp)
    200c:	afb30064 	sw	s3,100(sp)
    2010:	afb20060 	sw	s2,96(sp)
    2014:	afb1005c 	sw	s1,92(sp)
    2018:	afb00058 	sw	s0,88(sp)
    201c:	f7b60050 	sdc1	$f22,80(sp)
    2020:	f7b40048 	sdc1	$f20,72(sp)
    2024:	848e02f2 	lh	t6,754(a0)
    2028:	848f02f0 	lh	t7,752(a0)
    202c:	00808825 	move	s1,a0
    2030:	00a0a025 	move	s4,a1
    2034:	01cfc021 	addu	t8,t6,t7
    2038:	a49802f2 	sh	t8,754(a0)
    203c:	0c000000 	jal	0 <func_80ACF4A0>
    2040:	2484014c 	addiu	a0,a0,332
    2044:	3c013f00 	lui	at,0x3f00
    2048:	44813000 	mtc1	at,$f6
    204c:	c6240068 	lwc1	$f4,104(s1)
    2050:	44805000 	mtc1	zero,$f10
    2054:	46062200 	add.s	$f8,$f4,$f6
    2058:	e6280068 	swc1	$f8,104(s1)
    205c:	c6300068 	lwc1	$f16,104(s1)
    2060:	46105032 	c.eq.s	$f10,$f16
    2064:	00000000 	nop
    2068:	45020050 	bc1fl	21ac <func_80AD14A0+0x1ac>
    206c:	02202025 	move	a0,s1
    2070:	8639001c 	lh	t9,28(s1)
    2074:	3c080000 	lui	t0,0x0
    2078:	27b20084 	addiu	s2,sp,132
    207c:	1b20003e 	blez	t9,2178 <func_80AD14A0+0x178>
    2080:	25080000 	addiu	t0,t0,0
    2084:	8d0a0000 	lw	t2,0(t0)
    2088:	3c014120 	lui	at,0x4120
    208c:	4481b000 	mtc1	at,$f22
    2090:	ae4a0000 	sw	t2,0(s2)
    2094:	8d090004 	lw	t1,4(t0)
    2098:	3c0141a0 	lui	at,0x41a0
    209c:	4481a000 	mtc1	at,$f20
    20a0:	ae490004 	sw	t1,4(s2)
    20a4:	8d0a0008 	lw	t2,8(t0)
    20a8:	24100004 	li	s0,4
    20ac:	27b30074 	addiu	s3,sp,116
    20b0:	ae4a0008 	sw	t2,8(s2)
    20b4:	0c000000 	jal	0 <func_80ACF4A0>
    20b8:	4600a306 	mov.s	$f12,$f20
    20bc:	c6320024 	lwc1	$f18,36(s1)
    20c0:	4600b306 	mov.s	$f12,$f22
    20c4:	46120100 	add.s	$f4,$f0,$f18
    20c8:	0c000000 	jal	0 <func_80ACF4A0>
    20cc:	e7a40074 	swc1	$f4,116(sp)
    20d0:	c6260028 	lwc1	$f6,40(s1)
    20d4:	4600a306 	mov.s	$f12,$f20
    20d8:	46060200 	add.s	$f8,$f0,$f6
    20dc:	0c000000 	jal	0 <func_80ACF4A0>
    20e0:	e7a80078 	swc1	$f8,120(sp)
    20e4:	c62a002c 	lwc1	$f10,44(s1)
    20e8:	240b0028 	li	t3,40
    20ec:	240c0007 	li	t4,7
    20f0:	460a0400 	add.s	$f16,$f0,$f10
    20f4:	240d00ff 	li	t5,255
    20f8:	240e00ff 	li	t6,255
    20fc:	240f00ff 	li	t7,255
    2100:	241800ff 	li	t8,255
    2104:	241900ff 	li	t9,255
    2108:	24080001 	li	t0,1
    210c:	24090009 	li	t1,9
    2110:	240a0001 	li	t2,1
    2114:	e7b0007c 	swc1	$f16,124(sp)
    2118:	afaa003c 	sw	t2,60(sp)
    211c:	afa90038 	sw	t1,56(sp)
    2120:	afa80034 	sw	t0,52(sp)
    2124:	afb90028 	sw	t9,40(sp)
    2128:	afb80024 	sw	t8,36(sp)
    212c:	afaf0020 	sw	t7,32(sp)
    2130:	afae001c 	sw	t6,28(sp)
    2134:	afad0018 	sw	t5,24(sp)
    2138:	afac0014 	sw	t4,20(sp)
    213c:	afab0010 	sw	t3,16(sp)
    2140:	afa00030 	sw	zero,48(sp)
    2144:	afa0002c 	sw	zero,44(sp)
    2148:	02802025 	move	a0,s4
    214c:	02602825 	move	a1,s3
    2150:	02403025 	move	a2,s2
    2154:	0c000000 	jal	0 <func_80ACF4A0>
    2158:	02403825 	move	a3,s2
    215c:	2610ffff 	addiu	s0,s0,-1
    2160:	0601ffd4 	bgez	s0,20b4 <func_80AD14A0+0xb4>
    2164:	00000000 	nop
    2168:	0c000000 	jal	0 <func_80ACF4A0>
    216c:	02202025 	move	a0,s1
    2170:	1000000e 	b	21ac <func_80AD14A0+0x1ac>
    2174:	02202025 	move	a0,s1
    2178:	0c000000 	jal	0 <func_80ACF4A0>
    217c:	02202025 	move	a0,s1
    2180:	862b001c 	lh	t3,28(s1)
    2184:	05630009 	bgezl	t3,21ac <func_80AD14A0+0x1ac>
    2188:	02202025 	move	a0,s1
    218c:	862c02fa 	lh	t4,762(s1)
    2190:	240d0001 	li	t5,1
    2194:	51800004 	beqzl	t4,21a8 <func_80AD14A0+0x1a8>
    2198:	a62d02fa 	sh	t5,762(s1)
    219c:	10000002 	b	21a8 <func_80AD14A0+0x1a8>
    21a0:	a62002fa 	sh	zero,762(s1)
    21a4:	a62d02fa 	sh	t5,762(s1)
    21a8:	02202025 	move	a0,s1
    21ac:	0c000000 	jal	0 <func_80ACF4A0>
    21b0:	24053155 	li	a1,12629
    21b4:	8fbf006c 	lw	ra,108(sp)
    21b8:	d7b40048 	ldc1	$f20,72(sp)
    21bc:	d7b60050 	ldc1	$f22,80(sp)
    21c0:	8fb00058 	lw	s0,88(sp)
    21c4:	8fb1005c 	lw	s1,92(sp)
    21c8:	8fb20060 	lw	s2,96(sp)
    21cc:	8fb30064 	lw	s3,100(sp)
    21d0:	8fb40068 	lw	s4,104(sp)
    21d4:	03e00008 	jr	ra
    21d8:	27bd0090 	addiu	sp,sp,144

000021dc <func_80AD167C>:
    21dc:	27bdffe0 	addiu	sp,sp,-32
    21e0:	afbf001c 	sw	ra,28(sp)
    21e4:	c4860028 	lwc1	$f6,40(a0)
    21e8:	c4840080 	lwc1	$f4,128(a0)
    21ec:	240e000d 	li	t6,13
    21f0:	ac8e02b0 	sw	t6,688(a0)
    21f4:	4606203c 	c.lt.s	$f4,$f6
    21f8:	3c01c110 	lui	at,0xc110
    21fc:	00002825 	move	a1,zero
    2200:	240600c8 	li	a2,200
    2204:	45000004 	bc1f	2218 <func_80AD167C+0x3c>
    2208:	00003825 	move	a3,zero
    220c:	44814000 	mtc1	at,$f8
    2210:	00000000 	nop
    2214:	e4880068 	swc1	$f8,104(a0)
    2218:	848f008a 	lh	t7,138(a0)
    221c:	a48002f0 	sh	zero,752(a0)
    2220:	24180050 	li	t8,80
    2224:	a48f0032 	sh	t7,50(a0)
    2228:	afa40020 	sw	a0,32(sp)
    222c:	0c000000 	jal	0 <func_80ACF4A0>
    2230:	afb80010 	sw	t8,16(sp)
    2234:	8fa40020 	lw	a0,32(sp)
    2238:	0c000000 	jal	0 <func_80ACF4A0>
    223c:	2405389e 	li	a1,14494
    2240:	3c050000 	lui	a1,0x0
    2244:	8fa40020 	lw	a0,32(sp)
    2248:	0c000000 	jal	0 <func_80ACF4A0>
    224c:	24a50000 	addiu	a1,a1,0
    2250:	8fbf001c 	lw	ra,28(sp)
    2254:	27bd0020 	addiu	sp,sp,32
    2258:	03e00008 	jr	ra
    225c:	00000000 	nop

00002260 <func_80AD1700>:
    2260:	3c013f80 	lui	at,0x3f80
    2264:	44811000 	mtc1	at,$f2
    2268:	44800000 	mtc1	zero,$f0
    226c:	27bdffd8 	addiu	sp,sp,-40
    2270:	afb00020 	sw	s0,32(sp)
    2274:	afa5002c 	sw	a1,44(sp)
    2278:	00808025 	move	s0,a0
    227c:	afbf0024 	sw	ra,36(sp)
    2280:	44061000 	mfc1	a2,$f2
    2284:	44071000 	mfc1	a3,$f2
    2288:	44050000 	mfc1	a1,$f0
    228c:	24840068 	addiu	a0,a0,104
    2290:	0c000000 	jal	0 <func_80ACF4A0>
    2294:	e7a00010 	swc1	$f0,16(sp)
    2298:	44802000 	mtc1	zero,$f4
    229c:	8e050080 	lw	a1,128(s0)
    22a0:	26040028 	addiu	a0,s0,40
    22a4:	3c063f80 	lui	a2,0x3f80
    22a8:	3c074100 	lui	a3,0x4100
    22ac:	0c000000 	jal	0 <func_80ACF4A0>
    22b0:	e7a40010 	swc1	$f4,16(sp)
    22b4:	920e0114 	lbu	t6,276(s0)
    22b8:	55c00004 	bnezl	t6,22cc <func_80AD1700+0x6c>
    22bc:	8fbf0024 	lw	ra,36(sp)
    22c0:	0c000000 	jal	0 <func_80ACF4A0>
    22c4:	02002025 	move	a0,s0
    22c8:	8fbf0024 	lw	ra,36(sp)
    22cc:	8fb00020 	lw	s0,32(sp)
    22d0:	27bd0028 	addiu	sp,sp,40
    22d4:	03e00008 	jr	ra
    22d8:	00000000 	nop

000022dc <func_80AD177C>:
    22dc:	27bdffe0 	addiu	sp,sp,-32
    22e0:	44802000 	mtc1	zero,$f4
    22e4:	afbf001c 	sw	ra,28(sp)
    22e8:	240e0001 	li	t6,1
    22ec:	a48002f0 	sh	zero,752(a0)
    22f0:	ac8e02b4 	sw	t6,692(a0)
    22f4:	240f0008 	li	t7,8
    22f8:	e4840068 	swc1	$f4,104(a0)
    22fc:	afa40020 	sw	a0,32(sp)
    2300:	afaf0010 	sw	t7,16(sp)
    2304:	24054000 	li	a1,16384
    2308:	240600ff 	li	a2,255
    230c:	0c000000 	jal	0 <func_80ACF4A0>
    2310:	00003825 	move	a3,zero
    2314:	8fa40020 	lw	a0,32(sp)
    2318:	44803000 	mtc1	zero,$f6
    231c:	3c050000 	lui	a1,0x0
    2320:	8498008a 	lh	t8,138(a0)
    2324:	24a50000 	addiu	a1,a1,0
    2328:	ac8002b0 	sw	zero,688(a0)
    232c:	e48602ec 	swc1	$f6,748(a0)
    2330:	0c000000 	jal	0 <func_80ACF4A0>
    2334:	a4980032 	sh	t8,50(a0)
    2338:	8fbf001c 	lw	ra,28(sp)
    233c:	27bd0020 	addiu	sp,sp,32
    2340:	03e00008 	jr	ra
    2344:	00000000 	nop

00002348 <func_80AD17E8>:
    2348:	27bdffc0 	addiu	sp,sp,-64
    234c:	afbf002c 	sw	ra,44(sp)
    2350:	afb00028 	sw	s0,40(sp)
    2354:	afa50044 	sw	a1,68(sp)
    2358:	8c8e02b4 	lw	t6,692(a0)
    235c:	00808025 	move	s0,a0
    2360:	11c00032 	beqz	t6,242c <func_80AD17E8+0xe4>
    2364:	00000000 	nop
    2368:	8c8f02d4 	lw	t7,724(a0)
    236c:	3c050600 	lui	a1,0x600
    2370:	24a50844 	addiu	a1,a1,2116
    2374:	25f8ffff 	addiu	t8,t7,-1
    2378:	1b000003 	blez	t8,2388 <func_80AD17E8+0x40>
    237c:	ac9802d4 	sw	t8,724(a0)
    2380:	908800af 	lbu	t0,175(a0)
    2384:	15000011 	bnez	t0,23cc <func_80AD17E8+0x84>
    2388:	2604014c 	addiu	a0,s0,332
    238c:	0c000000 	jal	0 <func_80ACF4A0>
    2390:	3c06c080 	lui	a2,0xc080
    2394:	3c0140c0 	lui	at,0x40c0
    2398:	a60000b4 	sh	zero,180(s0)
    239c:	44801000 	mtc1	zero,$f2
    23a0:	44812000 	mtc1	at,$f4
    23a4:	860b00b4 	lh	t3,180(s0)
    23a8:	24090fa0 	li	t1,4000
    23ac:	240a000e 	li	t2,14
    23b0:	a60902f0 	sh	t1,752(s0)
    23b4:	ae0a02d4 	sw	t2,724(s0)
    23b8:	ae0002b4 	sw	zero,692(s0)
    23bc:	e6020068 	swc1	$f2,104(s0)
    23c0:	e6040060 	swc1	$f4,96(s0)
    23c4:	1000008b 	b	25f4 <func_80AD17E8+0x2ac>
    23c8:	a60b00b8 	sh	t3,184(s0)
    23cc:	920c0114 	lbu	t4,276(s0)
    23d0:	3c053e51 	lui	a1,0x3e51
    23d4:	260402ec 	addiu	a0,s0,748
    23d8:	318d0004 	andi	t5,t4,0x4
    23dc:	11a0000b 	beqz	t5,240c <func_80AD17E8+0xc4>
    23e0:	3c063f80 	lui	a2,0x3f80
    23e4:	44801000 	mtc1	zero,$f2
    23e8:	3c073e70 	lui	a3,0x3e70
    23ec:	34e7a3d7 	ori	a3,a3,0xa3d7
    23f0:	260402ec 	addiu	a0,s0,748
    23f4:	34a5eb85 	ori	a1,a1,0xeb85
    23f8:	3c063f80 	lui	a2,0x3f80
    23fc:	0c000000 	jal	0 <func_80ACF4A0>
    2400:	e7a20010 	swc1	$f2,16(sp)
    2404:	1000007c 	b	25f8 <func_80AD17E8+0x2b0>
    2408:	8fbf002c 	lw	ra,44(sp)
    240c:	44801000 	mtc1	zero,$f2
    2410:	3c073ba3 	lui	a3,0x3ba3
    2414:	34e7d70a 	ori	a3,a3,0xd70a
    2418:	44051000 	mfc1	a1,$f2
    241c:	0c000000 	jal	0 <func_80ACF4A0>
    2420:	e7a20010 	swc1	$f2,16(sp)
    2424:	10000074 	b	25f8 <func_80AD17E8+0x2b0>
    2428:	8fbf002c 	lw	ra,44(sp)
    242c:	0c000000 	jal	0 <func_80ACF4A0>
    2430:	2604014c 	addiu	a0,s0,332
    2434:	860e02f2 	lh	t6,754(s0)
    2438:	860f02f0 	lh	t7,752(s0)
    243c:	260402f0 	addiu	a0,s0,752
    2440:	24050fa0 	li	a1,4000
    2444:	01cfc021 	addu	t8,t6,t7
    2448:	a61802f2 	sh	t8,754(s0)
    244c:	afa00010 	sw	zero,16(sp)
    2450:	24060001 	li	a2,1
    2454:	0c000000 	jal	0 <func_80ACF4A0>
    2458:	240700fa 	li	a3,250
    245c:	921900af 	lbu	t9,175(s0)
    2460:	3c010000 	lui	at,0x0
    2464:	57200009 	bnezl	t9,248c <func_80AD17E8+0x144>
    2468:	3c0142b1 	lui	at,0x42b1
    246c:	c6060050 	lwc1	$f6,80(s0)
    2470:	c4280000 	lwc1	$f8,0(at)
    2474:	02002025 	move	a0,s0
    2478:	46083281 	sub.s	$f10,$f6,$f8
    247c:	e60a0050 	swc1	$f10,80(s0)
    2480:	0c000000 	jal	0 <func_80ACF4A0>
    2484:	8e050050 	lw	a1,80(s0)
    2488:	3c0142b1 	lui	at,0x42b1
    248c:	44819000 	mtc1	at,$f18
    2490:	c6100080 	lwc1	$f16,128(s0)
    2494:	44803000 	mtc1	zero,$f6
    2498:	26040028 	addiu	a0,s0,40
    249c:	46128100 	add.s	$f4,$f16,$f18
    24a0:	3c063f80 	lui	a2,0x3f80
    24a4:	3c074040 	lui	a3,0x4040
    24a8:	e7a60010 	swc1	$f6,16(sp)
    24ac:	44052000 	mfc1	a1,$f4
    24b0:	0c000000 	jal	0 <func_80ACF4A0>
    24b4:	00000000 	nop
    24b8:	44804000 	mtc1	zero,$f8
    24bc:	00000000 	nop
    24c0:	46080032 	c.eq.s	$f0,$f8
    24c4:	00000000 	nop
    24c8:	4502002b 	bc1fl	2578 <func_80AD17E8+0x230>
    24cc:	44801000 	mtc1	zero,$f2
    24d0:	c60a0028 	lwc1	$f10,40(s0)
    24d4:	c6100080 	lwc1	$f16,128(s0)
    24d8:	3c01426c 	lui	at,0x426c
    24dc:	44812000 	mtc1	at,$f4
    24e0:	46105481 	sub.s	$f18,$f10,$f16
    24e4:	4604903c 	c.lt.s	$f18,$f4
    24e8:	00000000 	nop
    24ec:	45020022 	bc1fl	2578 <func_80AD17E8+0x230>
    24f0:	44801000 	mtc1	zero,$f2
    24f4:	8e090024 	lw	t1,36(s0)
    24f8:	27a50034 	addiu	a1,sp,52
    24fc:	240a0096 	li	t2,150
    2500:	aca90000 	sw	t1,0(a1)
    2504:	8e080028 	lw	t0,40(s0)
    2508:	240b0064 	li	t3,100
    250c:	240c0001 	li	t4,1
    2510:	aca80004 	sw	t0,4(a1)
    2514:	8e09002c 	lw	t1,44(s0)
    2518:	3c0642a0 	lui	a2,0x42a0
    251c:	24070001 	li	a3,1
    2520:	aca90008 	sw	t1,8(a1)
    2524:	c6060080 	lwc1	$f6,128(s0)
    2528:	afac0018 	sw	t4,24(sp)
    252c:	afab0014 	sw	t3,20(sp)
    2530:	afaa0010 	sw	t2,16(sp)
    2534:	8fa40044 	lw	a0,68(sp)
    2538:	0c000000 	jal	0 <func_80ACF4A0>
    253c:	e7a60038 	swc1	$f6,56(sp)
    2540:	3c010000 	lui	at,0x0
    2544:	c4280000 	lwc1	$f8,0(at)
    2548:	3c014000 	lui	at,0x4000
    254c:	44815000 	mtc1	at,$f10
    2550:	240d0002 	li	t5,2
    2554:	afad0010 	sw	t5,16(sp)
    2558:	8fa40044 	lw	a0,68(sp)
    255c:	02002825 	move	a1,s0
    2560:	27a60034 	addiu	a2,sp,52
    2564:	3c074296 	lui	a3,0x4296
    2568:	e7a80014 	swc1	$f8,20(sp)
    256c:	0c000000 	jal	0 <func_80ACF4A0>
    2570:	e7aa0018 	swc1	$f10,24(sp)
    2574:	44801000 	mtc1	zero,$f2
    2578:	c6000068 	lwc1	$f0,104(s0)
    257c:	3c013e80 	lui	at,0x3e80
    2580:	4602003c 	c.lt.s	$f0,$f2
    2584:	00000000 	nop
    2588:	45020006 	bc1fl	25a4 <func_80AD17E8+0x25c>
    258c:	8e0e02d4 	lw	t6,724(s0)
    2590:	44818000 	mtc1	at,$f16
    2594:	00000000 	nop
    2598:	46100480 	add.s	$f18,$f0,$f16
    259c:	e6120068 	swc1	$f18,104(s0)
    25a0:	8e0e02d4 	lw	t6,724(s0)
    25a4:	25cfffff 	addiu	t7,t6,-1
    25a8:	1de00012 	bgtz	t7,25f4 <func_80AD17E8+0x2ac>
    25ac:	ae0f02d4 	sw	t7,724(s0)
    25b0:	921900af 	lbu	t9,175(s0)
    25b4:	57200006 	bnezl	t9,25d0 <func_80AD17E8+0x288>
    25b8:	8608001c 	lh	t0,28(s0)
    25bc:	0c000000 	jal	0 <func_80ACF4A0>
    25c0:	02002025 	move	a0,s0
    25c4:	1000000c 	b	25f8 <func_80AD17E8+0x2b0>
    25c8:	8fbf002c 	lw	ra,44(sp)
    25cc:	8608001c 	lh	t0,28(s0)
    25d0:	05010006 	bgez	t0,25ec <func_80AD17E8+0x2a4>
    25d4:	00000000 	nop
    25d8:	0c000000 	jal	0 <func_80ACF4A0>
    25dc:	02002025 	move	a0,s0
    25e0:	2409003c 	li	t1,60
    25e4:	10000003 	b	25f4 <func_80AD17E8+0x2ac>
    25e8:	a60902f6 	sh	t1,758(s0)
    25ec:	0c000000 	jal	0 <func_80ACF4A0>
    25f0:	02002025 	move	a0,s0
    25f4:	8fbf002c 	lw	ra,44(sp)
    25f8:	8fb00028 	lw	s0,40(sp)
    25fc:	27bd0040 	addiu	sp,sp,64
    2600:	03e00008 	jr	ra
    2604:	00000000 	nop

00002608 <func_80AD1AA8>:
    2608:	27bdffe8 	addiu	sp,sp,-24
    260c:	afbf0014 	sw	ra,20(sp)
    2610:	00803025 	move	a2,a0
    2614:	3c050600 	lui	a1,0x600
    2618:	24a505c4 	addiu	a1,a1,1476
    261c:	afa60018 	sw	a2,24(sp)
    2620:	0c000000 	jal	0 <func_80ACF4A0>
    2624:	2484014c 	addiu	a0,a0,332
    2628:	8fa40018 	lw	a0,24(sp)
    262c:	44802000 	mtc1	zero,$f4
    2630:	240e0001 	li	t6,1
    2634:	240f0005 	li	t7,5
    2638:	3c050000 	lui	a1,0x0
    263c:	24a50000 	addiu	a1,a1,0
    2640:	ac8e02b0 	sw	t6,688(a0)
    2644:	a48f02fc 	sh	t7,764(a0)
    2648:	0c000000 	jal	0 <func_80ACF4A0>
    264c:	e48402e0 	swc1	$f4,736(a0)
    2650:	8fbf0014 	lw	ra,20(sp)
    2654:	27bd0018 	addiu	sp,sp,24
    2658:	03e00008 	jr	ra
    265c:	00000000 	nop

00002660 <func_80AD1B00>:
    2660:	27bdffb8 	addiu	sp,sp,-72
    2664:	afbf0034 	sw	ra,52(sp)
    2668:	afb10030 	sw	s1,48(sp)
    266c:	afb0002c 	sw	s0,44(sp)
    2670:	848e02fc 	lh	t6,764(a0)
    2674:	24010005 	li	at,5
    2678:	00808025 	move	s0,a0
    267c:	15c10011 	bne	t6,at,26c4 <func_80AD1B00+0x64>
    2680:	00a08825 	move	s1,a1
    2684:	c6040028 	lwc1	$f4,40(s0)
    2688:	8e070024 	lw	a3,36(s0)
    268c:	240f0602 	li	t7,1538
    2690:	e7a40010 	swc1	$f4,16(sp)
    2694:	c606002c 	lwc1	$f6,44(s0)
    2698:	afa00024 	sw	zero,36(sp)
    269c:	afaf0020 	sw	t7,32(sp)
    26a0:	afa0001c 	sw	zero,28(sp)
    26a4:	afa00018 	sw	zero,24(sp)
    26a8:	24a41c24 	addiu	a0,a1,7204
    26ac:	24060010 	li	a2,16
    26b0:	0c000000 	jal	0 <func_80ACF4A0>
    26b4:	e7a60014 	swc1	$f6,20(sp)
    26b8:	50400003 	beqzl	v0,26c8 <func_80AD1B00+0x68>
    26bc:	861802fc 	lh	t8,764(s0)
    26c0:	a44001f8 	sh	zero,504(v0)
    26c4:	861802fc 	lh	t8,764(s0)
    26c8:	02202025 	move	a0,s1
    26cc:	02002825 	move	a1,s0
    26d0:	2719ffff 	addiu	t9,t8,-1
    26d4:	a61902fc 	sh	t9,764(s0)
    26d8:	860802fc 	lh	t0,764(s0)
    26dc:	26060024 	addiu	a2,s0,36
    26e0:	24070040 	li	a3,64
    26e4:	55000010 	bnezl	t0,2728 <func_80AD1B00+0xc8>
    26e8:	8fbf0034 	lw	ra,52(sp)
    26ec:	0c000000 	jal	0 <func_80ACF4A0>
    26f0:	afa60038 	sw	a2,56(sp)
    26f4:	02202025 	move	a0,s1
    26f8:	02002825 	move	a1,s0
    26fc:	8fa60038 	lw	a2,56(sp)
    2700:	0c000000 	jal	0 <func_80ACF4A0>
    2704:	24070040 	li	a3,64
    2708:	02202025 	move	a0,s1
    270c:	02002825 	move	a1,s0
    2710:	8fa60038 	lw	a2,56(sp)
    2714:	0c000000 	jal	0 <func_80ACF4A0>
    2718:	24070040 	li	a3,64
    271c:	0c000000 	jal	0 <func_80ACF4A0>
    2720:	02002025 	move	a0,s0
    2724:	8fbf0034 	lw	ra,52(sp)
    2728:	8fb0002c 	lw	s0,44(sp)
    272c:	8fb10030 	lw	s1,48(sp)
    2730:	03e00008 	jr	ra
    2734:	27bd0048 	addiu	sp,sp,72

00002738 <func_80AD1BD8>:
    2738:	27bdffa0 	addiu	sp,sp,-96
    273c:	afbf0044 	sw	ra,68(sp)
    2740:	afb30040 	sw	s3,64(sp)
    2744:	afb2003c 	sw	s2,60(sp)
    2748:	afb10038 	sw	s1,56(sp)
    274c:	afb00034 	sw	s0,52(sp)
    2750:	f7b60028 	sdc1	$f22,40(sp)
    2754:	f7b40020 	sdc1	$f20,32(sp)
    2758:	90820311 	lbu	v0,785(a0)
    275c:	00808825 	move	s1,a0
    2760:	00a09825 	move	s3,a1
    2764:	304e0080 	andi	t6,v0,0x80
    2768:	15c00005 	bnez	t6,2780 <func_80AD1BD8+0x48>
    276c:	3049ff7f 	andi	t1,v0,0xff7f
    2770:	908f03bd 	lbu	t7,957(a0)
    2774:	31f80080 	andi	t8,t7,0x80
    2778:	5300000a 	beqzl	t8,27a4 <func_80AD1BD8+0x6c>
    277c:	9222035d 	lbu	v0,861(s1)
    2780:	923903bd 	lbu	t9,957(s1)
    2784:	922a035d 	lbu	t2,861(s1)
    2788:	a2290311 	sb	t1,785(s1)
    278c:	3328ff7f 	andi	t0,t9,0xff7f
    2790:	314bfffd 	andi	t3,t2,0xfffd
    2794:	a22803bd 	sb	t0,957(s1)
    2798:	10000059 	b	2900 <func_80AD1BD8+0x1c8>
    279c:	a22b035d 	sb	t3,861(s1)
    27a0:	9222035d 	lbu	v0,861(s1)
    27a4:	02202025 	move	a0,s1
    27a8:	2625034c 	addiu	a1,s1,844
    27ac:	304c0002 	andi	t4,v0,0x2
    27b0:	11800053 	beqz	t4,2900 <func_80AD1BD8+0x1c8>
    27b4:	304dfffd 	andi	t5,v0,0xfffd
    27b8:	a22d035d 	sb	t5,861(s1)
    27bc:	0c000000 	jal	0 <func_80ACF4A0>
    27c0:	24060001 	li	a2,1
    27c4:	922200b1 	lbu	v0,177(s1)
    27c8:	2401000f 	li	at,15
    27cc:	1041004c 	beq	v0,at,2900 <func_80AD1BD8+0x1c8>
    27d0:	24010006 	li	at,6
    27d4:	1041004a 	beq	v0,at,2900 <func_80AD1BD8+0x1c8>
    27d8:	2403000d 	li	v1,13
    27dc:	14620003 	bne	v1,v0,27ec <func_80AD1BD8+0xb4>
    27e0:	2401000e 	li	at,14
    27e4:	10000016 	b	2840 <func_80AD1BD8+0x108>
    27e8:	a22000af 	sb	zero,175(s1)
    27ec:	14410008 	bne	v0,at,2810 <func_80AD1BD8+0xd8>
    27f0:	00000000 	nop
    27f4:	8e2e02b0 	lw	t6,688(s1)
    27f8:	506e0042 	beql	v1,t6,2904 <func_80AD1BD8+0x1cc>
    27fc:	8fbf0044 	lw	ra,68(sp)
    2800:	0c000000 	jal	0 <func_80ACF4A0>
    2804:	02202025 	move	a0,s1
    2808:	1000003e 	b	2904 <func_80AD1BD8+0x1cc>
    280c:	8fbf0044 	lw	ra,68(sp)
    2810:	0c000000 	jal	0 <func_80ACF4A0>
    2814:	02202025 	move	a0,s1
    2818:	240f0008 	li	t7,8
    281c:	afaf0010 	sw	t7,16(sp)
    2820:	02202025 	move	a0,s1
    2824:	24054000 	li	a1,16384
    2828:	240600ff 	li	a2,255
    282c:	0c000000 	jal	0 <func_80ACF4A0>
    2830:	00003825 	move	a3,zero
    2834:	02202025 	move	a0,s1
    2838:	0c000000 	jal	0 <func_80ACF4A0>
    283c:	24053956 	li	a1,14678
    2840:	923800b1 	lbu	t8,177(s1)
    2844:	2401000c 	li	at,12
    2848:	24100004 	li	s0,4
    284c:	17010027 	bne	t8,at,28ec <func_80AD1BD8+0x1b4>
    2850:	3c0141c8 	lui	at,0x41c8
    2854:	4481b000 	mtc1	at,$f22
    2858:	3c0141a0 	lui	at,0x41a0
    285c:	4481a000 	mtc1	at,$f20
    2860:	27b20054 	addiu	s2,sp,84
    2864:	0c000000 	jal	0 <func_80ACF4A0>
    2868:	4600a306 	mov.s	$f12,$f20
    286c:	c6240024 	lwc1	$f4,36(s1)
    2870:	46040180 	add.s	$f6,$f0,$f4
    2874:	0c000000 	jal	0 <func_80ACF4A0>
    2878:	e7a60054 	swc1	$f6,84(sp)
    287c:	46160202 	mul.s	$f8,$f0,$f22
    2880:	c62a0028 	lwc1	$f10,40(s1)
    2884:	4600a306 	mov.s	$f12,$f20
    2888:	460a4400 	add.s	$f16,$f8,$f10
    288c:	0c000000 	jal	0 <func_80ACF4A0>
    2890:	e7b00058 	swc1	$f16,88(sp)
    2894:	c632002c 	lwc1	$f18,44(s1)
    2898:	2419ffff 	li	t9,-1
    289c:	afb90018 	sw	t9,24(sp)
    28a0:	46120100 	add.s	$f4,$f0,$f18
    28a4:	afa00014 	sw	zero,20(sp)
    28a8:	afa00010 	sw	zero,16(sp)
    28ac:	02602025 	move	a0,s3
    28b0:	e7a4005c 	swc1	$f4,92(sp)
    28b4:	02202825 	move	a1,s1
    28b8:	02403025 	move	a2,s2
    28bc:	0c000000 	jal	0 <func_80ACF4A0>
    28c0:	24070046 	li	a3,70
    28c4:	2610ffff 	addiu	s0,s0,-1
    28c8:	0601ffe6 	bgez	s0,2864 <func_80AD1BD8+0x12c>
    28cc:	00000000 	nop
    28d0:	24080064 	li	t0,100
    28d4:	afa80010 	sw	t0,16(sp)
    28d8:	02202025 	move	a0,s1
    28dc:	24054000 	li	a1,16384
    28e0:	240600c8 	li	a2,200
    28e4:	0c000000 	jal	0 <func_80ACF4A0>
    28e8:	00003825 	move	a3,zero
    28ec:	922900af 	lbu	t1,175(s1)
    28f0:	55200004 	bnezl	t1,2904 <func_80AD1BD8+0x1cc>
    28f4:	8fbf0044 	lw	ra,68(sp)
    28f8:	0c000000 	jal	0 <func_80ACF4A0>
    28fc:	02202025 	move	a0,s1
    2900:	8fbf0044 	lw	ra,68(sp)
    2904:	d7b40020 	ldc1	$f20,32(sp)
    2908:	d7b60028 	ldc1	$f22,40(sp)
    290c:	8fb00034 	lw	s0,52(sp)
    2910:	8fb10038 	lw	s1,56(sp)
    2914:	8fb2003c 	lw	s2,60(sp)
    2918:	8fb30040 	lw	s3,64(sp)
    291c:	03e00008 	jr	ra
    2920:	27bd0060 	addiu	sp,sp,96

00002924 <EnPeehat_Update>:
    2924:	27bdff78 	addiu	sp,sp,-136
    2928:	afbf004c 	sw	ra,76(sp)
    292c:	afb40048 	sw	s4,72(sp)
    2930:	afb30044 	sw	s3,68(sp)
    2934:	afb20040 	sw	s2,64(sp)
    2938:	afb1003c 	sw	s1,60(sp)
    293c:	afb00038 	sw	s0,56(sp)
    2940:	f7b40030 	sdc1	$f20,48(sp)
    2944:	8cae1c44 	lw	t6,7236(a1)
    2948:	00809825 	move	s3,a0
    294c:	00a0a025 	move	s4,a1
    2950:	afae007c 	sw	t6,124(sp)
    2954:	848f001c 	lh	t7,28(a0)
    2958:	5de00004 	bgtzl	t7,296c <EnPeehat_Update+0x48>
    295c:	927800b1 	lbu	t8,177(s3)
    2960:	0c000000 	jal	0 <func_80ACF4A0>
    2964:	00000000 	nop
    2968:	927800b1 	lbu	t8,177(s3)
    296c:	24010006 	li	at,6
    2970:	53010031 	beql	t8,at,2a38 <EnPeehat_Update+0x114>
    2974:	866a001c 	lh	t2,28(s3)
    2978:	4480a000 	mtc1	zero,$f20
    297c:	c6640068 	lwc1	$f4,104(s3)
    2980:	4604a032 	c.eq.s	$f20,$f4
    2984:	00000000 	nop
    2988:	45000006 	bc1f	29a4 <EnPeehat_Update+0x80>
    298c:	00000000 	nop
    2990:	c6660060 	lwc1	$f6,96(s3)
    2994:	4606a032 	c.eq.s	$f20,$f6
    2998:	00000000 	nop
    299c:	4503000e 	bc1tl	29d8 <EnPeehat_Update+0xb4>
    29a0:	8e7902b8 	lw	t9,696(s3)
    29a4:	0c000000 	jal	0 <func_80ACF4A0>
    29a8:	02602025 	move	a0,s3
    29ac:	3c0141f0 	lui	at,0x41f0
    29b0:	44810000 	mtc1	at,$f0
    29b4:	24190005 	li	t9,5
    29b8:	afb90014 	sw	t9,20(sp)
    29bc:	44070000 	mfc1	a3,$f0
    29c0:	02802025 	move	a0,s4
    29c4:	02602825 	move	a1,s3
    29c8:	3c0641c8 	lui	a2,0x41c8
    29cc:	0c000000 	jal	0 <func_80ACF4A0>
    29d0:	e7a00010 	swc1	$f0,16(sp)
    29d4:	8e7902b8 	lw	t9,696(s3)
    29d8:	02602025 	move	a0,s3
    29dc:	02802825 	move	a1,s4
    29e0:	0320f809 	jalr	t9
    29e4:	00000000 	nop
    29e8:	3c080001 	lui	t0,0x1
    29ec:	01144021 	addu	t0,t0,s4
    29f0:	8d081de4 	lw	t0,7652(t0)
    29f4:	3109007f 	andi	t1,t0,0x7f
    29f8:	5520000b 	bnezl	t1,2a28 <EnPeehat_Update+0x104>
    29fc:	c66402e4 	lwc1	$f4,740(s3)
    2a00:	0c000000 	jal	0 <func_80ACF4A0>
    2a04:	00000000 	nop
    2a08:	3c013e80 	lui	at,0x3e80
    2a0c:	44814000 	mtc1	at,$f8
    2a10:	3c013f00 	lui	at,0x3f00
    2a14:	44818000 	mtc1	at,$f16
    2a18:	46080282 	mul.s	$f10,$f0,$f8
    2a1c:	46105480 	add.s	$f18,$f10,$f16
    2a20:	e67202e8 	swc1	$f18,744(s3)
    2a24:	c66402e4 	lwc1	$f4,740(s3)
    2a28:	c66602e8 	lwc1	$f6,744(s3)
    2a2c:	46062200 	add.s	$f8,$f4,$f6
    2a30:	e66802e4 	swc1	$f8,740(s3)
    2a34:	866a001c 	lh	t2,28(s3)
    2a38:	4480a000 	mtc1	zero,$f20
    2a3c:	05430026 	bgezl	t2,2ad8 <EnPeehat_Update+0x1b4>
    2a40:	8e690024 	lw	t1,36(s3)
    2a44:	8e6b0368 	lw	t3,872(s3)
    2a48:	8e6d0368 	lw	t5,872(s3)
    2a4c:	8e6f0368 	lw	t7,872(s3)
    2a50:	856c0030 	lh	t4,48(t3)
    2a54:	8e7902b0 	lw	t9,688(s3)
    2a58:	2401000e 	li	at,14
    2a5c:	448c5000 	mtc1	t4,$f10
    2a60:	266400b4 	addiu	a0,s3,180
    2a64:	00002825 	move	a1,zero
    2a68:	46805420 	cvt.s.w	$f16,$f10
    2a6c:	24060001 	li	a2,1
    2a70:	2407012c 	li	a3,300
    2a74:	e6700038 	swc1	$f16,56(s3)
    2a78:	85ae0032 	lh	t6,50(t5)
    2a7c:	448e9000 	mtc1	t6,$f18
    2a80:	00000000 	nop
    2a84:	46809120 	cvt.s.w	$f4,$f18
    2a88:	e664003c 	swc1	$f4,60(s3)
    2a8c:	85f80034 	lh	t8,52(t7)
    2a90:	44983000 	mtc1	t8,$f6
    2a94:	00000000 	nop
    2a98:	46803220 	cvt.s.w	$f8,$f6
    2a9c:	17210009 	bne	t9,at,2ac4 <EnPeehat_Update+0x1a0>
    2aa0:	e6680040 	swc1	$f8,64(s3)
    2aa4:	266400b4 	addiu	a0,s3,180
    2aa8:	24051770 	li	a1,6000
    2aac:	24060001 	li	a2,1
    2ab0:	2407012c 	li	a3,300
    2ab4:	0c000000 	jal	0 <func_80ACF4A0>
    2ab8:	afa00010 	sw	zero,16(sp)
    2abc:	1000000c 	b	2af0 <EnPeehat_Update+0x1cc>
    2ac0:	26720300 	addiu	s2,s3,768
    2ac4:	0c000000 	jal	0 <func_80ACF4A0>
    2ac8:	afa00010 	sw	zero,16(sp)
    2acc:	10000008 	b	2af0 <EnPeehat_Update+0x1cc>
    2ad0:	26720300 	addiu	s2,s3,768
    2ad4:	8e690024 	lw	t1,36(s3)
    2ad8:	8e680028 	lw	t0,40(s3)
    2adc:	ae690038 	sw	t1,56(s3)
    2ae0:	8e69002c 	lw	t1,44(s3)
    2ae4:	ae68003c 	sw	t0,60(s3)
    2ae8:	ae690040 	sw	t1,64(s3)
    2aec:	26720300 	addiu	s2,s3,768
    2af0:	02402825 	move	a1,s2
    2af4:	0c000000 	jal	0 <func_80ACF4A0>
    2af8:	02602025 	move	a0,s3
    2afc:	926a00af 	lbu	t2,175(s3)
    2b00:	5940002c 	blezl	t2,2bb4 <EnPeehat_Update+0x290>
    2b04:	8e6202b0 	lw	v0,688(s3)
    2b08:	866b001c 	lh	t3,28(s3)
    2b0c:	3c010001 	lui	at,0x1
    2b10:	34211e60 	ori	at,at,0x1e60
    2b14:	1d600018 	bgtz	t3,2b78 <EnPeehat_Update+0x254>
    2b18:	02802025 	move	a0,s4
    2b1c:	02818021 	addu	s0,s4,at
    2b20:	02002825 	move	a1,s0
    2b24:	0c000000 	jal	0 <func_80ACF4A0>
    2b28:	02403025 	move	a2,s2
    2b2c:	2671034c 	addiu	s1,s3,844
    2b30:	02203025 	move	a2,s1
    2b34:	02802025 	move	a0,s4
    2b38:	0c000000 	jal	0 <func_80ACF4A0>
    2b3c:	02002825 	move	a1,s0
    2b40:	926c0114 	lbu	t4,276(s3)
    2b44:	51800006 	beqzl	t4,2b60 <EnPeehat_Update+0x23c>
    2b48:	8e6f02b0 	lw	t7,688(s3)
    2b4c:	966d0112 	lhu	t5,274(s3)
    2b50:	31ae4000 	andi	t6,t5,0x4000
    2b54:	55c00009 	bnezl	t6,2b7c <EnPeehat_Update+0x258>
    2b58:	8678001c 	lh	t8,28(s3)
    2b5c:	8e6f02b0 	lw	t7,688(s3)
    2b60:	24010001 	li	at,1
    2b64:	02802025 	move	a0,s4
    2b68:	11e10003 	beq	t7,at,2b78 <EnPeehat_Update+0x254>
    2b6c:	02002825 	move	a1,s0
    2b70:	0c000000 	jal	0 <func_80ACF4A0>
    2b74:	02203025 	move	a2,s1
    2b78:	8678001c 	lh	t8,28(s3)
    2b7c:	5300000d 	beqzl	t8,2bb4 <EnPeehat_Update+0x290>
    2b80:	8e6202b0 	lw	v0,688(s3)
    2b84:	926203bc 	lbu	v0,956(s3)
    2b88:	30590002 	andi	t9,v0,0x2
    2b8c:	13200008 	beqz	t9,2bb0 <EnPeehat_Update+0x28c>
    2b90:	3048fffd 	andi	t0,v0,0xfffd
    2b94:	a26803bc 	sb	t0,956(s3)
    2b98:	8fa9007c 	lw	t1,124(sp)
    2b9c:	8e6a03b0 	lw	t2,944(s3)
    2ba0:	552a0004 	bnel	t1,t2,2bb4 <EnPeehat_Update+0x290>
    2ba4:	8e6202b0 	lw	v0,688(s3)
    2ba8:	0c000000 	jal	0 <func_80ACF4A0>
    2bac:	02602025 	move	a0,s3
    2bb0:	8e6202b0 	lw	v0,688(s3)
    2bb4:	2401000f 	li	at,15
    2bb8:	10410009 	beq	v0,at,2be0 <EnPeehat_Update+0x2bc>
    2bbc:	2401000e 	li	at,14
    2bc0:	10410007 	beq	v0,at,2be0 <EnPeehat_Update+0x2bc>
    2bc4:	24010005 	li	at,5
    2bc8:	10410005 	beq	v0,at,2be0 <EnPeehat_Update+0x2bc>
    2bcc:	2401000c 	li	at,12
    2bd0:	10410003 	beq	v0,at,2be0 <EnPeehat_Update+0x2bc>
    2bd4:	24010001 	li	at,1
    2bd8:	14410055 	bne	v0,at,2d30 <EnPeehat_Update+0x40c>
    2bdc:	02802025 	move	a0,s4
    2be0:	8663001c 	lh	v1,28(s3)
    2be4:	3c010001 	lui	at,0x1
    2be8:	34211e60 	ori	at,at,0x1e60
    2bec:	1060000b 	beqz	v1,2c1c <EnPeehat_Update+0x2f8>
    2bf0:	02802025 	move	a0,s4
    2bf4:	02818021 	addu	s0,s4,at
    2bf8:	267103ac 	addiu	s1,s3,940
    2bfc:	02203025 	move	a2,s1
    2c00:	0c000000 	jal	0 <func_80ACF4A0>
    2c04:	02002825 	move	a1,s0
    2c08:	02802025 	move	a0,s4
    2c0c:	02002825 	move	a1,s0
    2c10:	0c000000 	jal	0 <func_80ACF4A0>
    2c14:	02203025 	move	a2,s1
    2c18:	8663001c 	lh	v1,28(s3)
    2c1c:	0461003b 	bgez	v1,2d0c <EnPeehat_Update+0x3e8>
    2c20:	00000000 	nop
    2c24:	8e6b0004 	lw	t3,4(s3)
    2c28:	26650024 	addiu	a1,s3,36
    2c2c:	2410000c 	li	s0,12
    2c30:	316c0040 	andi	t4,t3,0x40
    2c34:	11800035 	beqz	t4,2d0c <EnPeehat_Update+0x3e8>
    2c38:	268407c0 	addiu	a0,s4,1984
    2c3c:	267102c8 	addiu	s1,s3,712
    2c40:	afa40058 	sw	a0,88(sp)
    2c44:	afa50060 	sw	a1,96(sp)
    2c48:	27b20070 	addiu	s2,sp,112
    2c4c:	27ad006c 	addiu	t5,sp,108
    2c50:	240e0001 	li	t6,1
    2c54:	240f0001 	li	t7,1
    2c58:	24180001 	li	t8,1
    2c5c:	27b90068 	addiu	t9,sp,104
    2c60:	8fa40058 	lw	a0,88(sp)
    2c64:	8fa50060 	lw	a1,96(sp)
    2c68:	afa0006c 	sw	zero,108(sp)
    2c6c:	afb90024 	sw	t9,36(sp)
    2c70:	afb80020 	sw	t8,32(sp)
    2c74:	afaf0018 	sw	t7,24(sp)
    2c78:	afae0014 	sw	t6,20(sp)
    2c7c:	afad0010 	sw	t5,16(sp)
    2c80:	02203025 	move	a2,s1
    2c84:	02403825 	move	a3,s2
    2c88:	0c000000 	jal	0 <func_80ACF4A0>
    2c8c:	afa0001c 	sw	zero,28(sp)
    2c90:	24010001 	li	at,1
    2c94:	14410018 	bne	v0,at,2cf8 <EnPeehat_Update+0x3d4>
    2c98:	02802025 	move	a0,s4
    2c9c:	4406a000 	mfc1	a2,$f20
    2ca0:	2408012c 	li	t0,300
    2ca4:	24090096 	li	t1,150
    2ca8:	240a0001 	li	t2,1
    2cac:	afaa0018 	sw	t2,24(sp)
    2cb0:	afa90014 	sw	t1,20(sp)
    2cb4:	afa80010 	sw	t0,16(sp)
    2cb8:	02402825 	move	a1,s2
    2cbc:	0c000000 	jal	0 <func_80ACF4A0>
    2cc0:	24070001 	li	a3,1
    2cc4:	3c010000 	lui	at,0x0
    2cc8:	c42a0000 	lwc1	$f10,0(at)
    2ccc:	3c013fc0 	lui	at,0x3fc0
    2cd0:	44818000 	mtc1	at,$f16
    2cd4:	4407a000 	mfc1	a3,$f20
    2cd8:	240b0003 	li	t3,3
    2cdc:	afab0010 	sw	t3,16(sp)
    2ce0:	02802025 	move	a0,s4
    2ce4:	02602825 	move	a1,s3
    2ce8:	02403025 	move	a2,s2
    2cec:	e7aa0014 	swc1	$f10,20(sp)
    2cf0:	0c000000 	jal	0 <func_80ACF4A0>
    2cf4:	e7b00018 	swc1	$f16,24(sp)
    2cf8:	2610fff4 	addiu	s0,s0,-12
    2cfc:	0601ffd3 	bgez	s0,2c4c <EnPeehat_Update+0x328>
    2d00:	2631fff4 	addiu	s1,s1,-12
    2d04:	10000010 	b	2d48 <EnPeehat_Update+0x424>
    2d08:	4405a000 	mfc1	a1,$f20
    2d0c:	1060000d 	beqz	v1,2d44 <EnPeehat_Update+0x420>
    2d10:	02802025 	move	a0,s4
    2d14:	3c010001 	lui	at,0x1
    2d18:	34211e60 	ori	at,at,0x1e60
    2d1c:	02812821 	addu	a1,s4,at
    2d20:	0c000000 	jal	0 <func_80ACF4A0>
    2d24:	02403025 	move	a2,s2
    2d28:	10000007 	b	2d48 <EnPeehat_Update+0x424>
    2d2c:	4405a000 	mfc1	a1,$f20
    2d30:	3c010001 	lui	at,0x1
    2d34:	34211e60 	ori	at,at,0x1e60
    2d38:	02812821 	addu	a1,s4,at
    2d3c:	0c000000 	jal	0 <func_80ACF4A0>
    2d40:	02403025 	move	a2,s2
    2d44:	4405a000 	mfc1	a1,$f20
    2d48:	3c073a83 	lui	a3,0x3a83
    2d4c:	34e7126f 	ori	a3,a3,0x126f
    2d50:	266402ec 	addiu	a0,s3,748
    2d54:	3c063f80 	lui	a2,0x3f80
    2d58:	0c000000 	jal	0 <func_80ACF4A0>
    2d5c:	e7b40010 	swc1	$f20,16(sp)
    2d60:	8fbf004c 	lw	ra,76(sp)
    2d64:	d7b40030 	ldc1	$f20,48(sp)
    2d68:	8fb00038 	lw	s0,56(sp)
    2d6c:	8fb1003c 	lw	s1,60(sp)
    2d70:	8fb20040 	lw	s2,64(sp)
    2d74:	8fb30044 	lw	s3,68(sp)
    2d78:	8fb40048 	lw	s4,72(sp)
    2d7c:	03e00008 	jr	ra
    2d80:	27bd0088 	addiu	sp,sp,136

00002d84 <func_80AD2224>:
    2d84:	27bdffb8 	addiu	sp,sp,-72
    2d88:	afa70054 	sw	a3,84(sp)
    2d8c:	24070004 	li	a3,4
    2d90:	afbf001c 	sw	ra,28(sp)
    2d94:	afb00018 	sw	s0,24(sp)
    2d98:	afa40048 	sw	a0,72(sp)
    2d9c:	14a70006 	bne	a1,a3,2db8 <func_80AD2224+0x34>
    2da0:	afa60050 	sw	a2,80(sp)
    2da4:	8fb0005c 	lw	s0,92(sp)
    2da8:	8fb80058 	lw	t8,88(sp)
    2dac:	860e02f2 	lh	t6,754(s0)
    2db0:	000e7823 	negu	t7,t6
    2db4:	a70f0000 	sh	t7,0(t8)
    2db8:	24030003 	li	v1,3
    2dbc:	10a3000b 	beq	a1,v1,2dec <func_80AD2224+0x68>
    2dc0:	8fb0005c 	lw	s0,92(sp)
    2dc4:	24010017 	li	at,23
    2dc8:	54a1006e 	bnel	a1,at,2f84 <func_80AD2224+0x200>
    2dcc:	00001025 	move	v0,zero
    2dd0:	8e0202b0 	lw	v0,688(s0)
    2dd4:	50400006 	beqzl	v0,2df0 <func_80AD2224+0x6c>
    2dd8:	8fb90048 	lw	t9,72(sp)
    2ddc:	50620004 	beql	v1,v0,2df0 <func_80AD2224+0x6c>
    2de0:	8fb90048 	lw	t9,72(sp)
    2de4:	54e20067 	bnel	a3,v0,2f84 <func_80AD2224+0x200>
    2de8:	00001025 	move	v0,zero
    2dec:	8fb90048 	lw	t9,72(sp)
    2df0:	3c060000 	lui	a2,0x0
    2df4:	24c60000 	addiu	a2,a2,0
    2df8:	8f250000 	lw	a1,0(t9)
    2dfc:	27a40030 	addiu	a0,sp,48
    2e00:	2407079a 	li	a3,1946
    2e04:	0c000000 	jal	0 <func_80ACF4A0>
    2e08:	afa50040 	sw	a1,64(sp)
    2e0c:	0c000000 	jal	0 <func_80ACF4A0>
    2e10:	00000000 	nop
    2e14:	3c013f80 	lui	at,0x3f80
    2e18:	44816000 	mtc1	at,$f12
    2e1c:	24070001 	li	a3,1
    2e20:	44066000 	mfc1	a2,$f12
    2e24:	0c000000 	jal	0 <func_80ACF4A0>
    2e28:	46006386 	mov.s	$f14,$f12
    2e2c:	3c010000 	lui	at,0x0
    2e30:	c4260000 	lwc1	$f6,0(at)
    2e34:	c60402e4 	lwc1	$f4,740(s0)
    2e38:	24050001 	li	a1,1
    2e3c:	46062302 	mul.s	$f12,$f4,$f6
    2e40:	0c000000 	jal	0 <func_80ACF4A0>
    2e44:	00000000 	nop
    2e48:	3c010000 	lui	at,0x0
    2e4c:	c42a0000 	lwc1	$f10,0(at)
    2e50:	c60802e4 	lwc1	$f8,740(s0)
    2e54:	24050001 	li	a1,1
    2e58:	460a4302 	mul.s	$f12,$f8,$f10
    2e5c:	0c000000 	jal	0 <func_80ACF4A0>
    2e60:	00000000 	nop
    2e64:	3c010000 	lui	at,0x0
    2e68:	c4320000 	lwc1	$f18,0(at)
    2e6c:	c61002e4 	lwc1	$f16,740(s0)
    2e70:	24050001 	li	a1,1
    2e74:	46128302 	mul.s	$f12,$f16,$f18
    2e78:	0c000000 	jal	0 <func_80ACF4A0>
    2e7c:	00000000 	nop
    2e80:	3c013f80 	lui	at,0x3f80
    2e84:	44811000 	mtc1	at,$f2
    2e88:	c60002ec 	lwc1	$f0,748(s0)
    2e8c:	24070001 	li	a3,1
    2e90:	46001301 	sub.s	$f12,$f2,$f0
    2e94:	46020380 	add.s	$f14,$f0,$f2
    2e98:	44066000 	mfc1	a2,$f12
    2e9c:	0c000000 	jal	0 <func_80ACF4A0>
    2ea0:	00000000 	nop
    2ea4:	3c010000 	lui	at,0x0
    2ea8:	c4260000 	lwc1	$f6,0(at)
    2eac:	c60402e4 	lwc1	$f4,740(s0)
    2eb0:	24050001 	li	a1,1
    2eb4:	46062302 	mul.s	$f12,$f4,$f6
    2eb8:	0c000000 	jal	0 <func_80ACF4A0>
    2ebc:	46006307 	neg.s	$f12,$f12
    2ec0:	3c010000 	lui	at,0x0
    2ec4:	c42a0000 	lwc1	$f10,0(at)
    2ec8:	c60802e4 	lwc1	$f8,740(s0)
    2ecc:	24050001 	li	a1,1
    2ed0:	460a4302 	mul.s	$f12,$f8,$f10
    2ed4:	0c000000 	jal	0 <func_80ACF4A0>
    2ed8:	46006307 	neg.s	$f12,$f12
    2edc:	3c010000 	lui	at,0x0
    2ee0:	c4320000 	lwc1	$f18,0(at)
    2ee4:	c61002e4 	lwc1	$f16,740(s0)
    2ee8:	24050001 	li	a1,1
    2eec:	46128302 	mul.s	$f12,$f16,$f18
    2ef0:	0c000000 	jal	0 <func_80ACF4A0>
    2ef4:	46006307 	neg.s	$f12,$f12
    2ef8:	8fa30040 	lw	v1,64(sp)
    2efc:	3c09da38 	lui	t1,0xda38
    2f00:	35290003 	ori	t1,t1,0x3
    2f04:	8c6202c0 	lw	v0,704(v1)
    2f08:	3c050000 	lui	a1,0x0
    2f0c:	24a50000 	addiu	a1,a1,0
    2f10:	24480008 	addiu	t0,v0,8
    2f14:	ac6802c0 	sw	t0,704(v1)
    2f18:	ac490000 	sw	t1,0(v0)
    2f1c:	8faa0048 	lw	t2,72(sp)
    2f20:	240607a7 	li	a2,1959
    2f24:	00408025 	move	s0,v0
    2f28:	0c000000 	jal	0 <func_80ACF4A0>
    2f2c:	8d440000 	lw	a0,0(t2)
    2f30:	ae020004 	sw	v0,4(s0)
    2f34:	8fab0040 	lw	t3,64(sp)
    2f38:	3c0dde00 	lui	t5,0xde00
    2f3c:	8d6202c0 	lw	v0,704(t3)
    2f40:	244c0008 	addiu	t4,v0,8
    2f44:	ad6c02c0 	sw	t4,704(t3)
    2f48:	ac4d0000 	sw	t5,0(v0)
    2f4c:	8fae0050 	lw	t6,80(sp)
    2f50:	8dcf0000 	lw	t7,0(t6)
    2f54:	0c000000 	jal	0 <func_80ACF4A0>
    2f58:	ac4f0004 	sw	t7,4(v0)
    2f5c:	8fb80048 	lw	t8,72(sp)
    2f60:	3c060000 	lui	a2,0x0
    2f64:	24c60000 	addiu	a2,a2,0
    2f68:	27a40030 	addiu	a0,sp,48
    2f6c:	240707ab 	li	a3,1963
    2f70:	0c000000 	jal	0 <func_80ACF4A0>
    2f74:	8f050000 	lw	a1,0(t8)
    2f78:	10000002 	b	2f84 <func_80AD2224+0x200>
    2f7c:	24020001 	li	v0,1
    2f80:	00001025 	move	v0,zero
    2f84:	8fbf001c 	lw	ra,28(sp)
    2f88:	8fb00018 	lw	s0,24(sp)
    2f8c:	27bd0048 	addiu	sp,sp,72
    2f90:	03e00008 	jr	ra
    2f94:	00000000 	nop

00002f98 <func_80AD2438>:
    2f98:	27bdffc0 	addiu	sp,sp,-64
    2f9c:	24010004 	li	at,4
    2fa0:	afbf0014 	sw	ra,20(sp)
    2fa4:	afa40040 	sw	a0,64(sp)
    2fa8:	afa60048 	sw	a2,72(sp)
    2fac:	14a1000d 	bne	a1,at,2fe4 <func_80AD2438+0x4c>
    2fb0:	afa7004c 	sw	a3,76(sp)
    2fb4:	8fa50050 	lw	a1,80(sp)
    2fb8:	3c040000 	lui	a0,0x0
    2fbc:	24840000 	addiu	a0,a0,0
    2fc0:	0c000000 	jal	0 <func_80ACF4A0>
    2fc4:	24a502bc 	addiu	a1,a1,700
    2fc8:	8fa50050 	lw	a1,80(sp)
    2fcc:	3c040000 	lui	a0,0x0
    2fd0:	24840000 	addiu	a0,a0,0
    2fd4:	0c000000 	jal	0 <func_80ACF4A0>
    2fd8:	24a502c8 	addiu	a1,a1,712
    2fdc:	10000067 	b	317c <func_80AD2438+0x1e4>
    2fe0:	8fbf0014 	lw	ra,20(sp)
    2fe4:	24010003 	li	at,3
    2fe8:	14a10063 	bne	a1,at,3178 <func_80AD2438+0x1e0>
    2fec:	8fae0050 	lw	t6,80(sp)
    2ff0:	85cf001c 	lh	t7,28(t6)
    2ff4:	27a40024 	addiu	a0,sp,36
    2ff8:	3c060000 	lui	a2,0x0
    2ffc:	5de0005f 	bgtzl	t7,317c <func_80AD2438+0x1e4>
    3000:	8fbf0014 	lw	ra,20(sp)
    3004:	44802000 	mtc1	zero,$f4
    3008:	8fb80040 	lw	t8,64(sp)
    300c:	24c60000 	addiu	a2,a2,0
    3010:	e7a40038 	swc1	$f4,56(sp)
    3014:	8f050000 	lw	a1,0(t8)
    3018:	240707bd 	li	a3,1981
    301c:	0c000000 	jal	0 <func_80ACF4A0>
    3020:	afa50034 	sw	a1,52(sp)
    3024:	0c000000 	jal	0 <func_80ACF4A0>
    3028:	00000000 	nop
    302c:	44807000 	mtc1	zero,$f14
    3030:	3c01c47a 	lui	at,0xc47a
    3034:	44816000 	mtc1	at,$f12
    3038:	44067000 	mfc1	a2,$f14
    303c:	0c000000 	jal	0 <func_80ACF4A0>
    3040:	24070001 	li	a3,1
    3044:	8fa50050 	lw	a1,80(sp)
    3048:	00002025 	move	a0,zero
    304c:	0c000000 	jal	0 <func_80ACF4A0>
    3050:	24a5034c 	addiu	a1,a1,844
    3054:	3c0143fa 	lui	at,0x43fa
    3058:	44816000 	mtc1	at,$f12
    305c:	44807000 	mtc1	zero,$f14
    3060:	24060000 	li	a2,0
    3064:	0c000000 	jal	0 <func_80ACF4A0>
    3068:	24070001 	li	a3,1
    306c:	8fa30050 	lw	v1,80(sp)
    3070:	90620114 	lbu	v0,276(v1)
    3074:	10400012 	beqz	v0,30c0 <func_80AD2438+0x128>
    3078:	00000000 	nop
    307c:	94790112 	lhu	t9,274(v1)
    3080:	00022080 	sll	a0,v0,0x2
    3084:	00822021 	addu	a0,a0,v0
    3088:	33284000 	andi	t0,t9,0x4000
    308c:	1100000c 	beqz	t0,30c0 <func_80AD2438+0x128>
    3090:	000420c0 	sll	a0,a0,0x3
    3094:	00822023 	subu	a0,a0,v0
    3098:	00042100 	sll	a0,a0,0x4
    309c:	00822021 	addu	a0,a0,v0
    30a0:	00042140 	sll	a0,a0,0x5
    30a4:	00042400 	sll	a0,a0,0x10
    30a8:	0c000000 	jal	0 <func_80ACF4A0>
    30ac:	00042403 	sra	a0,a0,0x10
    30b0:	3c010000 	lui	at,0x0
    30b4:	c4260000 	lwc1	$f6,0(at)
    30b8:	46060202 	mul.s	$f8,$f0,$f6
    30bc:	e7a80038 	swc1	$f8,56(sp)
    30c0:	3c010000 	lui	at,0x0
    30c4:	c42a0000 	lwc1	$f10,0(at)
    30c8:	c7b00038 	lwc1	$f16,56(sp)
    30cc:	24050001 	li	a1,1
    30d0:	0c000000 	jal	0 <func_80ACF4A0>
    30d4:	46105300 	add.s	$f12,$f10,$f16
    30d8:	3c010000 	lui	at,0x0
    30dc:	c42e0000 	lwc1	$f14,0(at)
    30e0:	3c010000 	lui	at,0x0
    30e4:	c42c0000 	lwc1	$f12,0(at)
    30e8:	44067000 	mfc1	a2,$f14
    30ec:	0c000000 	jal	0 <func_80ACF4A0>
    30f0:	24070001 	li	a3,1
    30f4:	8fa70034 	lw	a3,52(sp)
    30f8:	3c0ada38 	lui	t2,0xda38
    30fc:	354a0003 	ori	t2,t2,0x3
    3100:	8ce202c0 	lw	v0,704(a3)
    3104:	3c050000 	lui	a1,0x0
    3108:	24a50000 	addiu	a1,a1,0
    310c:	24490008 	addiu	t1,v0,8
    3110:	ace902c0 	sw	t1,704(a3)
    3114:	ac4a0000 	sw	t2,0(v0)
    3118:	8fab0040 	lw	t3,64(sp)
    311c:	240607c6 	li	a2,1990
    3120:	8d640000 	lw	a0,0(t3)
    3124:	0c000000 	jal	0 <func_80ACF4A0>
    3128:	afa20020 	sw	v0,32(sp)
    312c:	8fa30020 	lw	v1,32(sp)
    3130:	3c0ede00 	lui	t6,0xde00
    3134:	ac620004 	sw	v0,4(v1)
    3138:	8fac0034 	lw	t4,52(sp)
    313c:	8d8202c0 	lw	v0,704(t4)
    3140:	244d0008 	addiu	t5,v0,8
    3144:	ad8d02c0 	sw	t5,704(t4)
    3148:	ac4e0000 	sw	t6,0(v0)
    314c:	8faf0048 	lw	t7,72(sp)
    3150:	8df80000 	lw	t8,0(t7)
    3154:	0c000000 	jal	0 <func_80ACF4A0>
    3158:	ac580004 	sw	t8,4(v0)
    315c:	8fb90040 	lw	t9,64(sp)
    3160:	3c060000 	lui	a2,0x0
    3164:	24c60000 	addiu	a2,a2,0
    3168:	27a40024 	addiu	a0,sp,36
    316c:	240707ca 	li	a3,1994
    3170:	0c000000 	jal	0 <func_80ACF4A0>
    3174:	8f250000 	lw	a1,0(t9)
    3178:	8fbf0014 	lw	ra,20(sp)
    317c:	27bd0040 	addiu	sp,sp,64
    3180:	03e00008 	jr	ra
    3184:	00000000 	nop

00003188 <EnPeehat_Draw>:
    3188:	27bdffc0 	addiu	sp,sp,-64
    318c:	afb00020 	sw	s0,32(sp)
    3190:	00808025 	move	s0,a0
    3194:	afbf0024 	sw	ra,36(sp)
    3198:	afa50044 	sw	a1,68(sp)
    319c:	0c000000 	jal	0 <func_80ACF4A0>
    31a0:	8ca40000 	lw	a0,0(a1)
    31a4:	3c0f0000 	lui	t7,0x0
    31a8:	25ef0000 	addiu	t7,t7,0
    31ac:	8e050150 	lw	a1,336(s0)
    31b0:	8e06016c 	lw	a2,364(s0)
    31b4:	3c070000 	lui	a3,0x0
    31b8:	24e70000 	addiu	a3,a3,0
    31bc:	afb00014 	sw	s0,20(sp)
    31c0:	afaf0010 	sw	t7,16(sp)
    31c4:	0c000000 	jal	0 <func_80ACF4A0>
    31c8:	8fa40044 	lw	a0,68(sp)
    31cc:	44800000 	mtc1	zero,$f0
    31d0:	c6040068 	lwc1	$f4,104(s0)
    31d4:	3c040000 	lui	a0,0x0
    31d8:	24840000 	addiu	a0,a0,0
    31dc:	46040032 	c.eq.s	$f0,$f4
    31e0:	260503f8 	addiu	a1,s0,1016
    31e4:	45000006 	bc1f	3200 <EnPeehat_Draw+0x78>
    31e8:	00000000 	nop
    31ec:	c6060060 	lwc1	$f6,96(s0)
    31f0:	46060032 	c.eq.s	$f0,$f6
    31f4:	00000000 	nop
    31f8:	4503001b 	bc1tl	3268 <EnPeehat_Draw+0xe0>
    31fc:	8fbf0024 	lw	ra,36(sp)
    3200:	0c000000 	jal	0 <func_80ACF4A0>
    3204:	afa50034 	sw	a1,52(sp)
    3208:	3c040000 	lui	a0,0x0
    320c:	260503ec 	addiu	a1,s0,1004
    3210:	afa50038 	sw	a1,56(sp)
    3214:	0c000000 	jal	0 <func_80ACF4A0>
    3218:	24840000 	addiu	a0,a0,0
    321c:	3c040000 	lui	a0,0x0
    3220:	26050410 	addiu	a1,s0,1040
    3224:	afa5002c 	sw	a1,44(sp)
    3228:	0c000000 	jal	0 <func_80ACF4A0>
    322c:	24840000 	addiu	a0,a0,0
    3230:	3c040000 	lui	a0,0x0
    3234:	26070404 	addiu	a3,s0,1028
    3238:	00e02825 	move	a1,a3
    323c:	afa70030 	sw	a3,48(sp)
    3240:	0c000000 	jal	0 <func_80ACF4A0>
    3244:	24840000 	addiu	a0,a0,0
    3248:	8fb8002c 	lw	t8,44(sp)
    324c:	8fa70030 	lw	a3,48(sp)
    3250:	260403ac 	addiu	a0,s0,940
    3254:	8fa50038 	lw	a1,56(sp)
    3258:	8fa60034 	lw	a2,52(sp)
    325c:	0c000000 	jal	0 <func_80ACF4A0>
    3260:	afb80010 	sw	t8,16(sp)
    3264:	8fbf0024 	lw	ra,36(sp)
    3268:	8fb00020 	lw	s0,32(sp)
    326c:	27bd0040 	addiu	sp,sp,64
    3270:	03e00008 	jr	ra
    3274:	00000000 	nop
	...
