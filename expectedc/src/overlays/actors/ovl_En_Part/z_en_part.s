
build/src/overlays/actors/ovl_En_Part/z_en_part.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnPart_Init>:
       0:	afa40000 	sw	a0,0(sp)
       4:	03e00008 	jr	ra
       8:	afa50004 	sw	a1,4(sp)

0000000c <EnPart_Destroy>:
       c:	afa40000 	sw	a0,0(sp)
      10:	03e00008 	jr	ra
      14:	afa50004 	sw	a1,4(sp)

00000018 <func_80ACDDE8>:
      18:	27bdffc8 	addiu	sp,sp,-56
      1c:	3c013f80 	lui	at,0x3f80
      20:	44811000 	mtc1	at,$f2
      24:	afbf002c 	sw	ra,44(sp)
      28:	afb00028 	sw	s0,40(sp)
      2c:	afa5003c 	sw	a1,60(sp)
      30:	240e0001 	li	t6,1
      34:	a08e014c 	sb	t6,332(a0)
      38:	00808025 	move	s0,a0
      3c:	0c000000 	jal	0 <EnPart_Init>
      40:	e7a20034 	swc1	$f2,52(sp)
      44:	3c010000 	lui	at,0x0
      48:	c4240030 	lwc1	$f4,48(at)
      4c:	9619001c 	lhu	t9,28(s0)
      50:	8fa4003c 	lw	a0,60(sp)
      54:	46040182 	mul.s	$f6,$f0,$f4
      58:	c7a20034 	lwc1	$f2,52(sp)
      5c:	2f21000f 	sltiu	at,t9,15
      60:	0019c880 	sll	t9,t9,0x2
      64:	4600320d 	trunc.w.s	$f8,$f6
      68:	44184000 	mfc1	t8,$f8
      6c:	102000ba 	beqz	at,358 <func_80ACDDE8+0x340>
      70:	a6180032 	sh	t8,50(s0)
      74:	3c010000 	lui	at,0x0
      78:	00390821 	addu	at,at,t9
      7c:	8c390034 	lw	t9,52(at)
      80:	03200008 	jr	t9
      84:	00000000 	nop
      88:	44800000 	mtc1	zero,$f0
      8c:	0c000000 	jal	0 <EnPart_Init>
      90:	e6000060 	swc1	$f0,96(s0)
      94:	3c010000 	lui	at,0x0
      98:	c42a0070 	lwc1	$f10,112(at)
      9c:	3c013f00 	lui	at,0x3f00
      a0:	44818000 	mtc1	at,$f16
      a4:	3c010000 	lui	at,0x0
      a8:	24080019 	li	t0,25
      ac:	46100482 	mul.s	$f18,$f0,$f16
      b0:	46125101 	sub.s	$f4,$f10,$f18
      b4:	e604006c 	swc1	$f4,108(s0)
      b8:	c4260074 	lwc1	$f6,116(at)
      bc:	a608014e 	sh	t0,334(s0)
      c0:	0c000000 	jal	0 <EnPart_Init>
      c4:	e6060158 	swc1	$f6,344(s0)
      c8:	3c013f00 	lui	at,0x3f00
      cc:	44814000 	mtc1	at,$f8
      d0:	00000000 	nop
      d4:	46080081 	sub.s	$f2,$f0,$f8
      d8:	46021400 	add.s	$f16,$f2,$f2
      dc:	1000009e 	b	358 <func_80ACDDE8+0x340>
      e0:	e6100068 	swc1	$f16,104(s0)
      e4:	24090190 	li	t1,400
      e8:	a609014e 	sh	t1,334(s0)
      ec:	3c0140c0 	lui	at,0x40c0
      f0:	44816000 	mtc1	at,$f12
      f4:	0c000000 	jal	0 <EnPart_Init>
      f8:	00000000 	nop
      fc:	8e0b0024 	lw	t3,36(s0)
     100:	860c014e 	lh	t4,334(s0)
     104:	8e0a0028 	lw	t2,40(s0)
     108:	ae0b0008 	sw	t3,8(s0)
     10c:	8e0b002c 	lw	t3,44(s0)
     110:	258d003c 	addiu	t5,t4,60
     114:	e6000068 	swc1	$f0,104(s0)
     118:	a60d014e 	sh	t5,334(s0)
     11c:	ae0a000c 	sw	t2,12(s0)
     120:	0c000000 	jal	0 <EnPart_Init>
     124:	ae0b0010 	sw	t3,16(s0)
     128:	3c0140a0 	lui	at,0x40a0
     12c:	44815000 	mtc1	at,$f10
     130:	3c014080 	lui	at,0x4080
     134:	44812000 	mtc1	at,$f4
     138:	460a0482 	mul.s	$f18,$f0,$f10
     13c:	46049180 	add.s	$f6,$f18,$f4
     140:	0c000000 	jal	0 <EnPart_Init>
     144:	e6060060 	swc1	$f6,96(s0)
     148:	3c010000 	lui	at,0x0
     14c:	c4280078 	lwc1	$f8,120(at)
     150:	3c013f00 	lui	at,0x3f00
     154:	44818000 	mtc1	at,$f16
     158:	3c010000 	lui	at,0x0
     15c:	46100282 	mul.s	$f10,$f0,$f16
     160:	460a4481 	sub.s	$f18,$f8,$f10
     164:	e612006c 	swc1	$f18,108(s0)
     168:	c424007c 	lwc1	$f4,124(at)
     16c:	1000007a 	b	358 <func_80ACDDE8+0x340>
     170:	e6040158 	swc1	$f4,344(s0)
     174:	240e8001 	li	t6,-32767
     178:	240fffff 	li	t7,-1
     17c:	afaf0018 	sw	t7,24(sp)
     180:	afae0010 	sw	t6,16(sp)
     184:	02002825 	move	a1,s0
     188:	26060024 	addiu	a2,s0,36
     18c:	24070028 	li	a3,40
     190:	0c000000 	jal	0 <EnPart_Init>
     194:	afa00014 	sw	zero,20(sp)
     198:	0c000000 	jal	0 <EnPart_Init>
     19c:	00000000 	nop
     1a0:	3c014188 	lui	at,0x4188
     1a4:	44813000 	mtc1	at,$f6
     1a8:	8618014e 	lh	t8,334(s0)
     1ac:	46060402 	mul.s	$f16,$f0,$f6
     1b0:	4600820d 	trunc.w.s	$f8,$f16
     1b4:	440a4000 	mfc1	t2,$f8
     1b8:	00000000 	nop
     1bc:	030a5821 	addu	t3,t8,t2
     1c0:	256c0005 	addiu	t4,t3,5
     1c4:	a60c014e 	sh	t4,334(s0)
     1c8:	0c000000 	jal	0 <EnPart_Init>
     1cc:	00000000 	nop
     1d0:	3c0140a0 	lui	at,0x40a0
     1d4:	44815000 	mtc1	at,$f10
     1d8:	3c014080 	lui	at,0x4080
     1dc:	44812000 	mtc1	at,$f4
     1e0:	460a0482 	mul.s	$f18,$f0,$f10
     1e4:	46049180 	add.s	$f6,$f18,$f4
     1e8:	0c000000 	jal	0 <EnPart_Init>
     1ec:	e6060060 	swc1	$f6,96(s0)
     1f0:	3c010000 	lui	at,0x0
     1f4:	c4300080 	lwc1	$f16,128(at)
     1f8:	3c013f00 	lui	at,0x3f00
     1fc:	44814000 	mtc1	at,$f8
     200:	3c010000 	lui	at,0x0
     204:	46080282 	mul.s	$f10,$f0,$f8
     208:	460a8481 	sub.s	$f18,$f16,$f10
     20c:	e612006c 	swc1	$f18,108(s0)
     210:	c4240084 	lwc1	$f4,132(at)
     214:	10000050 	b	358 <func_80ACDDE8+0x340>
     218:	e6040158 	swc1	$f4,344(s0)
     21c:	240d8001 	li	t5,-32767
     220:	240effff 	li	t6,-1
     224:	afae0018 	sw	t6,24(sp)
     228:	afad0010 	sw	t5,16(sp)
     22c:	02002825 	move	a1,s0
     230:	26060024 	addiu	a2,s0,36
     234:	24070028 	li	a3,40
     238:	0c000000 	jal	0 <EnPart_Init>
     23c:	afa00014 	sw	zero,20(sp)
     240:	0c000000 	jal	0 <EnPart_Init>
     244:	00000000 	nop
     248:	3c013f00 	lui	at,0x3f00
     24c:	44813000 	mtc1	at,$f6
     250:	3c014040 	lui	at,0x4040
     254:	44818000 	mtc1	at,$f16
     258:	46060201 	sub.s	$f8,$f0,$f6
     25c:	46104282 	mul.s	$f10,$f8,$f16
     260:	0c000000 	jal	0 <EnPart_Init>
     264:	e60a0068 	swc1	$f10,104(s0)
     268:	3c014188 	lui	at,0x4188
     26c:	44819000 	mtc1	at,$f18
     270:	00000000 	nop
     274:	46120102 	mul.s	$f4,$f0,$f18
     278:	4600218d 	trunc.w.s	$f6,$f4
     27c:	44093000 	mfc1	t1,$f6
     280:	00000000 	nop
     284:	2538000a 	addiu	t8,t1,10
     288:	0c000000 	jal	0 <EnPart_Init>
     28c:	a618014e 	sh	t8,334(s0)
     290:	3c014040 	lui	at,0x4040
     294:	44814000 	mtc1	at,$f8
     298:	3c014100 	lui	at,0x4100
     29c:	44815000 	mtc1	at,$f10
     2a0:	46080402 	mul.s	$f16,$f0,$f8
     2a4:	460a8480 	add.s	$f18,$f16,$f10
     2a8:	0c000000 	jal	0 <EnPart_Init>
     2ac:	e6120060 	swc1	$f18,96(s0)
     2b0:	3c010000 	lui	at,0x0
     2b4:	c4240088 	lwc1	$f4,136(at)
     2b8:	3c010000 	lui	at,0x0
     2bc:	c426008c 	lwc1	$f6,140(at)
     2c0:	3c010000 	lui	at,0x0
     2c4:	46060202 	mul.s	$f8,$f0,$f6
     2c8:	46082401 	sub.s	$f16,$f4,$f8
     2cc:	e610006c 	swc1	$f16,108(s0)
     2d0:	c42a0090 	lwc1	$f10,144(at)
     2d4:	10000020 	b	358 <func_80ACDDE8+0x340>
     2d8:	e60a0158 	swc1	$f10,344(s0)
     2dc:	8e0a0118 	lw	t2,280(s0)
     2e0:	8e0d0150 	lw	t5,336(s0)
     2e4:	3c0c0000 	lui	t4,0x0
     2e8:	854b00b6 	lh	t3,182(t2)
     2ec:	258c0000 	addiu	t4,t4,0
     2f0:	158d0004 	bne	t4,t5,304 <func_80ACDDE8+0x2ec>
     2f4:	a60b0032 	sh	t3,50(s0)
     2f8:	3c01bf80 	lui	at,0xbf80
     2fc:	44811000 	mtc1	at,$f2
     300:	00000000 	nop
     304:	3c0140c0 	lui	at,0x40c0
     308:	44819000 	mtc1	at,$f18
     30c:	44800000 	mtc1	zero,$f0
     310:	3c010000 	lui	at,0x0
     314:	46029182 	mul.s	$f6,$f18,$f2
     318:	e6000060 	swc1	$f0,96(s0)
     31c:	3c060000 	lui	a2,0x0
     320:	44050000 	mfc1	a1,$f0
     324:	24c60000 	addiu	a2,a2,0
     328:	260400b4 	addiu	a0,s0,180
     32c:	3c0741f0 	lui	a3,0x41f0
     330:	e6060068 	swc1	$f6,104(s0)
     334:	c4240094 	lwc1	$f4,148(at)
     338:	3c010000 	lui	at,0x0
     33c:	e604006c 	swc1	$f4,108(s0)
     340:	c4280098 	lwc1	$f8,152(at)
     344:	46024402 	mul.s	$f16,$f8,$f2
     348:	0c000000 	jal	0 <EnPart_Init>
     34c:	e6100158 	swc1	$f16,344(s0)
     350:	240e0012 	li	t6,18
     354:	a60e014e 	sh	t6,334(s0)
     358:	8fbf002c 	lw	ra,44(sp)
     35c:	8fb00028 	lw	s0,40(sp)
     360:	27bd0038 	addiu	sp,sp,56
     364:	03e00008 	jr	ra
     368:	00000000 	nop

0000036c <func_80ACE13C>:
     36c:	27bdff58 	addiu	sp,sp,-168
     370:	3c0f0000 	lui	t7,0x0
     374:	afbf0064 	sw	ra,100(sp)
     378:	afb40060 	sw	s4,96(sp)
     37c:	afb3005c 	sw	s3,92(sp)
     380:	afb20058 	sw	s2,88(sp)
     384:	afb10054 	sw	s1,84(sp)
     388:	afb00050 	sw	s0,80(sp)
     38c:	f7b40048 	sdc1	$f20,72(sp)
     390:	25ef0020 	addiu	t7,t7,32
     394:	8df90000 	lw	t9,0(t7)
     398:	27ae008c 	addiu	t6,sp,140
     39c:	8df80004 	lw	t8,4(t7)
     3a0:	add90000 	sw	t9,0(t6)
     3a4:	8df90008 	lw	t9,8(t7)
     3a8:	3c090000 	lui	t1,0x0
     3ac:	2529002c 	addiu	t1,t1,44
     3b0:	add80004 	sw	t8,4(t6)
     3b4:	add90008 	sw	t9,8(t6)
     3b8:	8d2b0000 	lw	t3,0(t1)
     3bc:	27a80080 	addiu	t0,sp,128
     3c0:	8d2a0004 	lw	t2,4(t1)
     3c4:	ad0b0000 	sw	t3,0(t0)
     3c8:	8d2b0008 	lw	t3,8(t1)
     3cc:	3c0c0000 	lui	t4,0x0
     3d0:	258c0038 	addiu	t4,t4,56
     3d4:	ad0a0004 	sw	t2,4(t0)
     3d8:	ad0b0008 	sw	t3,8(t0)
     3dc:	8d8e0000 	lw	t6,0(t4)
     3e0:	27b30074 	addiu	s3,sp,116
     3e4:	2401000c 	li	at,12
     3e8:	ae6e0000 	sw	t6,0(s3)
     3ec:	8d8d0004 	lw	t5,4(t4)
     3f0:	00808825 	move	s1,a0
     3f4:	00a0a025 	move	s4,a1
     3f8:	ae6d0004 	sw	t5,4(s3)
     3fc:	8d8e0008 	lw	t6,8(t4)
     400:	ae6e0008 	sw	t6,8(s3)
     404:	8482001c 	lh	v0,28(a0)
     408:	10410004 	beq	v0,at,41c <func_80ACE13C+0xb0>
     40c:	244bffff 	addiu	t3,v0,-1
     410:	2401000d 	li	at,13
     414:	54410027 	bnel	v0,at,4b4 <func_80ACE13C+0x148>
     418:	8623014e 	lh	v1,334(s1)
     41c:	4480a000 	mtc1	zero,$f20
     420:	240f001d 	li	t7,29
     424:	afaf0014 	sw	t7,20(sp)
     428:	02802025 	move	a0,s4
     42c:	02202825 	move	a1,s1
     430:	3c0640a0 	lui	a2,0x40a0
     434:	3c074170 	lui	a3,0x4170
     438:	0c000000 	jal	0 <EnPart_Init>
     43c:	e7b40010 	swc1	$f20,16(sp)
     440:	96380088 	lhu	t8,136(s1)
     444:	24080004 	li	t0,4
     448:	33190001 	andi	t9,t8,0x1
     44c:	57200008 	bnezl	t9,470 <func_80ACE13C+0x104>
     450:	a228014c 	sb	t0,332(s1)
     454:	c6240080 	lwc1	$f4,128(s1)
     458:	c6260028 	lwc1	$f6,40(s1)
     45c:	4604303e 	c.le.s	$f6,$f4
     460:	00000000 	nop
     464:	45020006 	bc1fl	480 <func_80ACE13C+0x114>
     468:	8629001c 	lh	t1,28(s1)
     46c:	a228014c 	sb	t0,332(s1)
     470:	e6340068 	swc1	$f20,104(s1)
     474:	e634006c 	swc1	$f20,108(s1)
     478:	e6340060 	swc1	$f20,96(s1)
     47c:	8629001c 	lh	t1,28(s1)
     480:	2401000d 	li	at,13
     484:	15210008 	bne	t1,at,4a8 <func_80ACE13C+0x13c>
     488:	00000000 	nop
     48c:	8e220118 	lw	v0,280(s1)
     490:	10400005 	beqz	v0,4a8 <func_80ACE13C+0x13c>
     494:	00000000 	nop
     498:	8c4a0130 	lw	t2,304(v0)
     49c:	15400002 	bnez	t2,4a8 <func_80ACE13C+0x13c>
     4a0:	00000000 	nop
     4a4:	ae200118 	sw	zero,280(s1)
     4a8:	100000c0 	b	7ac <func_80ACE13C+0x440>
     4ac:	8623014e 	lh	v1,334(s1)
     4b0:	8623014e 	lh	v1,334(s1)
     4b4:	2d61000e 	sltiu	at,t3,14
     4b8:	000b5880 	sll	t3,t3,0x2
     4bc:	5c6000bc 	bgtzl	v1,7b0 <func_80ACE13C+0x444>
     4c0:	c6300154 	lwc1	$f16,340(s1)
     4c4:	102000b5 	beqz	at,79c <func_80ACE13C+0x430>
     4c8:	3c010000 	lui	at,0x0
     4cc:	002b0821 	addu	at,at,t3
     4d0:	8c2b009c 	lw	t3,156(at)
     4d4:	01600008 	jr	t3
     4d8:	00000000 	nop
     4dc:	3c0142c8 	lui	at,0x42c8
     4e0:	44815000 	mtc1	at,$f10
     4e4:	c6280054 	lwc1	$f8,84(s1)
     4e8:	24190007 	li	t9,7
     4ec:	240800ff 	li	t0,255
     4f0:	460a4402 	mul.s	$f16,$f8,$f10
     4f4:	240900ff 	li	t1,255
     4f8:	240a00ff 	li	t2,255
     4fc:	240b00ff 	li	t3,255
     500:	240c00ff 	li	t4,255
     504:	afac002c 	sw	t4,44(sp)
     508:	afab0024 	sw	t3,36(sp)
     50c:	4600848d 	trunc.w.s	$f18,$f16
     510:	afaa0020 	sw	t2,32(sp)
     514:	afa9001c 	sw	t1,28(sp)
     518:	afa80018 	sw	t0,24(sp)
     51c:	440d9000 	mfc1	t5,$f18
     520:	afb90014 	sw	t9,20(sp)
     524:	afa00030 	sw	zero,48(sp)
     528:	000d7400 	sll	t6,t5,0x10
     52c:	000e7c03 	sra	t7,t6,0x10
     530:	000fc080 	sll	t8,t7,0x2
     534:	030fc021 	addu	t8,t8,t7
     538:	0018c0c0 	sll	t8,t8,0x3
     53c:	240f0001 	li	t7,1
     540:	240e0009 	li	t6,9
     544:	240d0001 	li	t5,1
     548:	afad0034 	sw	t5,52(sp)
     54c:	afae0038 	sw	t6,56(sp)
     550:	afaf003c 	sw	t7,60(sp)
     554:	afb80010 	sw	t8,16(sp)
     558:	afa00028 	sw	zero,40(sp)
     55c:	02802025 	move	a0,s4
     560:	26250024 	addiu	a1,s1,36
     564:	02603025 	move	a2,s3
     568:	0c000000 	jal	0 <EnPart_Init>
     56c:	02603825 	move	a3,s3
     570:	1000008a 	b	79c <func_80ACE13C+0x430>
     574:	00000000 	nop
     578:	3c0142c8 	lui	at,0x42c8
     57c:	44813000 	mtc1	at,$f6
     580:	c6240054 	lwc1	$f4,84(s1)
     584:	240b0007 	li	t3,7
     588:	240c00ff 	li	t4,255
     58c:	46062202 	mul.s	$f8,$f4,$f6
     590:	240d00ff 	li	t5,255
     594:	240e00ff 	li	t6,255
     598:	240f00ff 	li	t7,255
     59c:	241800ff 	li	t8,255
     5a0:	afb80030 	sw	t8,48(sp)
     5a4:	afaf0024 	sw	t7,36(sp)
     5a8:	4600428d 	trunc.w.s	$f10,$f8
     5ac:	afae0020 	sw	t6,32(sp)
     5b0:	afad001c 	sw	t5,28(sp)
     5b4:	afac0018 	sw	t4,24(sp)
     5b8:	44195000 	mfc1	t9,$f10
     5bc:	afab0014 	sw	t3,20(sp)
     5c0:	afa0002c 	sw	zero,44(sp)
     5c4:	00194400 	sll	t0,t9,0x10
     5c8:	00084c03 	sra	t1,t0,0x10
     5cc:	00095080 	sll	t2,t1,0x2
     5d0:	01495021 	addu	t2,t2,t1
     5d4:	000a50c0 	sll	t2,t2,0x3
     5d8:	24090001 	li	t1,1
     5dc:	24080009 	li	t0,9
     5e0:	24190001 	li	t9,1
     5e4:	afb90034 	sw	t9,52(sp)
     5e8:	afa80038 	sw	t0,56(sp)
     5ec:	afa9003c 	sw	t1,60(sp)
     5f0:	afaa0010 	sw	t2,16(sp)
     5f4:	afa00028 	sw	zero,40(sp)
     5f8:	02802025 	move	a0,s4
     5fc:	26250024 	addiu	a1,s1,36
     600:	02603025 	move	a2,s3
     604:	0c000000 	jal	0 <EnPart_Init>
     608:	02603825 	move	a3,s3
     60c:	10000063 	b	79c <func_80ACE13C+0x430>
     610:	00000000 	nop
     614:	3c014270 	lui	at,0x4270
     618:	4481a000 	mtc1	at,$f20
     61c:	24100007 	li	s0,7
     620:	27b20098 	addiu	s2,sp,152
     624:	0c000000 	jal	0 <EnPart_Init>
     628:	4600a306 	mov.s	$f12,$f20
     62c:	c6300024 	lwc1	$f16,36(s1)
     630:	3c014248 	lui	at,0x4248
     634:	44816000 	mtc1	at,$f12
     638:	46100480 	add.s	$f18,$f0,$f16
     63c:	0c000000 	jal	0 <EnPart_Init>
     640:	e7b20098 	swc1	$f18,152(sp)
     644:	c62400bc 	lwc1	$f4,188(s1)
     648:	c6260054 	lwc1	$f6,84(s1)
     64c:	c62a0028 	lwc1	$f10,40(s1)
     650:	4600a306 	mov.s	$f12,$f20
     654:	46062202 	mul.s	$f8,$f4,$f6
     658:	46085400 	add.s	$f16,$f10,$f8
     65c:	46100480 	add.s	$f18,$f0,$f16
     660:	0c000000 	jal	0 <EnPart_Init>
     664:	e7b2009c 	swc1	$f18,156(sp)
     668:	c624002c 	lwc1	$f4,44(s1)
     66c:	46040180 	add.s	$f6,$f0,$f4
     670:	0c000000 	jal	0 <EnPart_Init>
     674:	e7a600a0 	swc1	$f6,160(sp)
     678:	3c013f80 	lui	at,0x3f80
     67c:	44815000 	mtc1	at,$f10
     680:	24040050 	li	a0,80
     684:	24050064 	li	a1,100
     688:	460a0200 	add.s	$f8,$f0,$f10
     68c:	0c000000 	jal	0 <EnPart_Init>
     690:	e7a80090 	swc1	$f8,144(sp)
     694:	240a0019 	li	t2,25
     698:	240b0001 	li	t3,1
     69c:	afab001c 	sw	t3,28(sp)
     6a0:	afaa0014 	sw	t2,20(sp)
     6a4:	02802025 	move	a0,s4
     6a8:	02402825 	move	a1,s2
     6ac:	27a6008c 	addiu	a2,sp,140
     6b0:	27a70080 	addiu	a3,sp,128
     6b4:	afa20010 	sw	v0,16(sp)
     6b8:	0c000000 	jal	0 <EnPart_Init>
     6bc:	afa00018 	sw	zero,24(sp)
     6c0:	2610ffff 	addiu	s0,s0,-1
     6c4:	0601ffd7 	bgez	s0,624 <func_80ACE13C+0x2b8>
     6c8:	00000000 	nop
     6cc:	10000033 	b	79c <func_80ACE13C+0x430>
     6d0:	00000000 	nop
     6d4:	3c0141c8 	lui	at,0x41c8
     6d8:	4481a000 	mtc1	at,$f20
     6dc:	24100004 	li	s0,4
     6e0:	27b20098 	addiu	s2,sp,152
     6e4:	0c000000 	jal	0 <EnPart_Init>
     6e8:	4600a306 	mov.s	$f12,$f20
     6ec:	c6300024 	lwc1	$f16,36(s1)
     6f0:	3c014220 	lui	at,0x4220
     6f4:	44816000 	mtc1	at,$f12
     6f8:	46100480 	add.s	$f18,$f0,$f16
     6fc:	0c000000 	jal	0 <EnPart_Init>
     700:	e7b20098 	swc1	$f18,152(sp)
     704:	c6240028 	lwc1	$f4,40(s1)
     708:	4600a306 	mov.s	$f12,$f20
     70c:	46040180 	add.s	$f6,$f0,$f4
     710:	0c000000 	jal	0 <EnPart_Init>
     714:	e7a6009c 	swc1	$f6,156(sp)
     718:	c62a002c 	lwc1	$f10,44(s1)
     71c:	240c0028 	li	t4,40
     720:	240d0007 	li	t5,7
     724:	460a0200 	add.s	$f8,$f0,$f10
     728:	240e00ff 	li	t6,255
     72c:	240f00ff 	li	t7,255
     730:	241800ff 	li	t8,255
     734:	241900ff 	li	t9,255
     738:	240800ff 	li	t0,255
     73c:	24090001 	li	t1,1
     740:	240a0009 	li	t2,9
     744:	240b0001 	li	t3,1
     748:	e7a800a0 	swc1	$f8,160(sp)
     74c:	afab003c 	sw	t3,60(sp)
     750:	afaa0038 	sw	t2,56(sp)
     754:	afa90034 	sw	t1,52(sp)
     758:	afa80030 	sw	t0,48(sp)
     75c:	afb90024 	sw	t9,36(sp)
     760:	afb80020 	sw	t8,32(sp)
     764:	afaf001c 	sw	t7,28(sp)
     768:	afae0018 	sw	t6,24(sp)
     76c:	afad0014 	sw	t5,20(sp)
     770:	afac0010 	sw	t4,16(sp)
     774:	afa0002c 	sw	zero,44(sp)
     778:	afa00028 	sw	zero,40(sp)
     77c:	02802025 	move	a0,s4
     780:	02402825 	move	a1,s2
     784:	02603025 	move	a2,s3
     788:	0c000000 	jal	0 <EnPart_Init>
     78c:	02603825 	move	a3,s3
     790:	2610ffff 	addiu	s0,s0,-1
     794:	0601ffd3 	bgez	s0,6e4 <func_80ACE13C+0x378>
     798:	00000000 	nop
     79c:	0c000000 	jal	0 <EnPart_Init>
     7a0:	02202025 	move	a0,s1
     7a4:	10000008 	b	7c8 <func_80ACE13C+0x45c>
     7a8:	8fbf0064 	lw	ra,100(sp)
     7ac:	c6300154 	lwc1	$f16,340(s1)
     7b0:	c6320158 	lwc1	$f18,344(s1)
     7b4:	246cffff 	addiu	t4,v1,-1
     7b8:	a62c014e 	sh	t4,334(s1)
     7bc:	46128100 	add.s	$f4,$f16,$f18
     7c0:	e6240154 	swc1	$f4,340(s1)
     7c4:	8fbf0064 	lw	ra,100(sp)
     7c8:	d7b40048 	ldc1	$f20,72(sp)
     7cc:	8fb00050 	lw	s0,80(sp)
     7d0:	8fb10054 	lw	s1,84(sp)
     7d4:	8fb20058 	lw	s2,88(sp)
     7d8:	8fb3005c 	lw	s3,92(sp)
     7dc:	8fb40060 	lw	s4,96(sp)
     7e0:	03e00008 	jr	ra
     7e4:	27bd00a8 	addiu	sp,sp,168

000007e8 <func_80ACE5B8>:
     7e8:	afa50004 	sw	a1,4(sp)
     7ec:	240e0003 	li	t6,3
     7f0:	03e00008 	jr	ra
     7f4:	a08e014c 	sb	t6,332(a0)

000007f8 <func_80ACE5C8>:
     7f8:	27bdffa0 	addiu	sp,sp,-96
     7fc:	afbf0034 	sw	ra,52(sp)
     800:	afb10030 	sw	s1,48(sp)
     804:	afb0002c 	sw	s0,44(sp)
     808:	848e014e 	lh	t6,334(a0)
     80c:	8ca31c44 	lw	v1,7236(a1)
     810:	00808025 	move	s0,a0
     814:	25cfffff 	addiu	t7,t6,-1
     818:	a48f014e 	sh	t7,334(a0)
     81c:	8498014e 	lh	t8,334(a0)
     820:	00a08825 	move	s1,a1
     824:	27b90050 	addiu	t9,sp,80
     828:	17000005 	bnez	t8,840 <func_80ACE5C8+0x48>
     82c:	3c080000 	lui	t0,0x0
     830:	0c000000 	jal	0 <EnPart_Init>
     834:	00000000 	nop
     838:	10000073 	b	a08 <func_80ACE5C8+0x210>
     83c:	8fbf0034 	lw	ra,52(sp)
     840:	25080044 	addiu	t0,t0,68
     844:	8d0a0000 	lw	t2,0(t0)
     848:	8d090004 	lw	t1,4(t0)
     84c:	3c0c0000 	lui	t4,0x0
     850:	af2a0000 	sw	t2,0(t9)
     854:	8d0a0008 	lw	t2,8(t0)
     858:	258c0050 	addiu	t4,t4,80
     85c:	af290004 	sw	t1,4(t9)
     860:	af2a0008 	sw	t2,8(t9)
     864:	8d8e0000 	lw	t6,0(t4)
     868:	27ab0044 	addiu	t3,sp,68
     86c:	8d8d0004 	lw	t5,4(t4)
     870:	ad6e0000 	sw	t6,0(t3)
     874:	8d8e0008 	lw	t6,8(t4)
     878:	ad6d0004 	sw	t5,4(t3)
     87c:	3c014044 	lui	at,0x4044
     880:	ad6e0008 	sw	t6,8(t3)
     884:	c604008c 	lwc1	$f4,140(s0)
     888:	44813800 	mtc1	at,$f7
     88c:	44803000 	mtc1	zero,$f6
     890:	46002021 	cvt.d.s	$f0,$f4
     894:	46200004 	sqrt.d	$f0,$f0
     898:	4626003e 	c.le.d	$f0,$f6
     89c:	00000000 	nop
     8a0:	4502002c 	bc1fl	954 <func_80ACE5C8+0x15c>
     8a4:	26050024 	addiu	a1,s0,36
     8a8:	80620a78 	lb	v0,2680(v1)
     8ac:	1c40000f 	bgtz	v0,8ec <func_80ACE5C8+0xf4>
     8b0:	a3a20043 	sb	v0,67(sp)
     8b4:	2841ffd9 	slti	at,v0,-39
     8b8:	10200003 	beqz	at,8c8 <func_80ACE5C8+0xd0>
     8bc:	3c190001 	lui	t9,0x1
     8c0:	1000000a 	b	8ec <func_80ACE5C8+0xf4>
     8c4:	a0600a78 	sb	zero,2680(v1)
     8c8:	a0600a78 	sb	zero,2680(v1)
     8cc:	afa3005c 	sw	v1,92(sp)
     8d0:	0331c821 	addu	t9,t9,s1
     8d4:	8f391d58 	lw	t9,7512(t9)
     8d8:	02202025 	move	a0,s1
     8dc:	2405fff8 	li	a1,-8
     8e0:	0320f809 	jalr	t9
     8e4:	00000000 	nop
     8e8:	8fa3005c 	lw	v1,92(sp)
     8ec:	8e050118 	lw	a1,280(s0)
     8f0:	3c010000 	lui	at,0x0
     8f4:	c42800d4 	lwc1	$f8,212(at)
     8f8:	c4aa0090 	lwc1	$f10,144(a1)
     8fc:	3c010000 	lui	at,0x0
     900:	c43200d8 	lwc1	$f18,216(at)
     904:	460a4401 	sub.s	$f16,$f8,$f10
     908:	3c014080 	lui	at,0x4080
     90c:	44813000 	mtc1	at,$f6
     910:	3c014100 	lui	at,0x4100
     914:	46128102 	mul.s	$f4,$f16,$f18
     918:	44815000 	mtc1	at,$f10
     91c:	84a70032 	lh	a3,50(a1)
     920:	afa3005c 	sw	v1,92(sp)
     924:	02202025 	move	a0,s1
     928:	e7aa0010 	swc1	$f10,16(sp)
     92c:	46062200 	add.s	$f8,$f4,$f6
     930:	44064000 	mfc1	a2,$f8
     934:	0c000000 	jal	0 <EnPart_Init>
     938:	00000000 	nop
     93c:	8fa3005c 	lw	v1,92(sp)
     940:	93af0043 	lbu	t7,67(sp)
     944:	24180001 	li	t8,1
     948:	a06f0a78 	sb	t7,2680(v1)
     94c:	a618014e 	sh	t8,334(s0)
     950:	26050024 	addiu	a1,s0,36
     954:	2408012c 	li	t0,300
     958:	24090096 	li	t1,150
     95c:	240a0001 	li	t2,1
     960:	afaa0018 	sw	t2,24(sp)
     964:	afa90014 	sw	t1,20(sp)
     968:	afa80010 	sw	t0,16(sp)
     96c:	afa50038 	sw	a1,56(sp)
     970:	02202025 	move	a0,s1
     974:	24060000 	li	a2,0
     978:	0c000000 	jal	0 <EnPart_Init>
     97c:	24070001 	li	a3,1
     980:	3c014180 	lui	at,0x4180
     984:	44816000 	mtc1	at,$f12
     988:	0c000000 	jal	0 <EnPart_Init>
     98c:	00000000 	nop
     990:	0c000000 	jal	0 <EnPart_Init>
     994:	e7a00050 	swc1	$f0,80(sp)
     998:	3c0140a0 	lui	at,0x40a0
     99c:	44818000 	mtc1	at,$f16
     9a0:	3c014140 	lui	at,0x4140
     9a4:	44812000 	mtc1	at,$f4
     9a8:	46100482 	mul.s	$f18,$f0,$f16
     9ac:	3c014000 	lui	at,0x4000
     9b0:	44814000 	mtc1	at,$f8
     9b4:	240b0014 	li	t3,20
     9b8:	240effff 	li	t6,-1
     9bc:	2419000a 	li	t9,10
     9c0:	afb9001c 	sw	t9,28(sp)
     9c4:	46049180 	add.s	$f6,$f18,$f4
     9c8:	afae0018 	sw	t6,24(sp)
     9cc:	afab0010 	sw	t3,16(sp)
     9d0:	02202025 	move	a0,s1
     9d4:	46083282 	mul.s	$f10,$f6,$f8
     9d8:	8fa50038 	lw	a1,56(sp)
     9dc:	27a60050 	addiu	a2,sp,80
     9e0:	27a70044 	addiu	a3,sp,68
     9e4:	afa00020 	sw	zero,32(sp)
     9e8:	4600540d 	trunc.w.s	$f16,$f10
     9ec:	440d8000 	mfc1	t5,$f16
     9f0:	0c000000 	jal	0 <EnPart_Init>
     9f4:	afad0014 	sw	t5,20(sp)
     9f8:	02002025 	move	a0,s0
     9fc:	0c000000 	jal	0 <EnPart_Init>
     a00:	240530e0 	li	a1,12512
     a04:	8fbf0034 	lw	ra,52(sp)
     a08:	8fb0002c 	lw	s0,44(sp)
     a0c:	8fb10030 	lw	s1,48(sp)
     a10:	03e00008 	jr	ra
     a14:	27bd0060 	addiu	sp,sp,96

00000a18 <func_80ACE7E8>:
     a18:	27bdff88 	addiu	sp,sp,-120
     a1c:	3c0e0000 	lui	t6,0x0
     a20:	afbf0054 	sw	ra,84(sp)
     a24:	afb00050 	sw	s0,80(sp)
     a28:	f7b40048 	sdc1	$f20,72(sp)
     a2c:	afa5007c 	sw	a1,124(sp)
     a30:	25ce005c 	addiu	t6,t6,92
     a34:	8dd80000 	lw	t8,0(t6)
     a38:	27a6006c 	addiu	a2,sp,108
     a3c:	00808025 	move	s0,a0
     a40:	acd80000 	sw	t8,0(a2)
     a44:	8dcf0004 	lw	t7,4(t6)
     a48:	26050024 	addiu	a1,s0,36
     a4c:	00c03825 	move	a3,a2
     a50:	accf0004 	sw	t7,4(a2)
     a54:	8dd80008 	lw	t8,8(t6)
     a58:	3c0142c8 	lui	at,0x42c8
     a5c:	240d0007 	li	t5,7
     a60:	acd80008 	sw	t8,8(a2)
     a64:	8c820118 	lw	v0,280(a0)
     a68:	8fa4007c 	lw	a0,124(sp)
     a6c:	50400005 	beqzl	v0,a84 <func_80ACE7E8+0x6c>
     a70:	c6040054 	lwc1	$f4,84(s0)
     a74:	8c590130 	lw	t9,304(v0)
     a78:	57200025 	bnezl	t9,b10 <func_80ACE7E8+0xf8>
     a7c:	8603014e 	lh	v1,334(s0)
     a80:	c6040054 	lwc1	$f4,84(s0)
     a84:	44813000 	mtc1	at,$f6
     a88:	240e00ff 	li	t6,255
     a8c:	240f00ff 	li	t7,255
     a90:	46062202 	mul.s	$f8,$f4,$f6
     a94:	241800ff 	li	t8,255
     a98:	241900ff 	li	t9,255
     a9c:	240800ff 	li	t0,255
     aa0:	afa8002c 	sw	t0,44(sp)
     aa4:	afb90024 	sw	t9,36(sp)
     aa8:	afb80020 	sw	t8,32(sp)
     aac:	4600428d 	trunc.w.s	$f10,$f8
     ab0:	afaf001c 	sw	t7,28(sp)
     ab4:	afae0018 	sw	t6,24(sp)
     ab8:	afa00030 	sw	zero,48(sp)
     abc:	44095000 	mfc1	t1,$f10
     ac0:	afa00028 	sw	zero,40(sp)
     ac4:	afad0014 	sw	t5,20(sp)
     ac8:	00095400 	sll	t2,t1,0x10
     acc:	000a5c03 	sra	t3,t2,0x10
     ad0:	000b6080 	sll	t4,t3,0x2
     ad4:	018b6021 	addu	t4,t4,t3
     ad8:	000c60c0 	sll	t4,t4,0x3
     adc:	240b0001 	li	t3,1
     ae0:	240a0009 	li	t2,9
     ae4:	24090001 	li	t1,1
     ae8:	afa90034 	sw	t1,52(sp)
     aec:	afaa0038 	sw	t2,56(sp)
     af0:	afab003c 	sw	t3,60(sp)
     af4:	0c000000 	jal	0 <EnPart_Init>
     af8:	afac0010 	sw	t4,16(sp)
     afc:	0c000000 	jal	0 <EnPart_Init>
     b00:	02002025 	move	a0,s0
     b04:	1000003f 	b	c04 <func_80ACE7E8+0x1ec>
     b08:	8fbf0054 	lw	ra,84(sp)
     b0c:	8603014e 	lh	v1,334(s0)
     b10:	26040024 	addiu	a0,s0,36
     b14:	3c063f80 	lui	a2,0x3f80
     b18:	14600030 	bnez	v1,bdc <func_80ACE7E8+0x1c4>
     b1c:	3c0740a0 	lui	a3,0x40a0
     b20:	44808000 	mtc1	zero,$f16
     b24:	8e050008 	lw	a1,8(s0)
     b28:	0c000000 	jal	0 <EnPart_Init>
     b2c:	e7b00010 	swc1	$f16,16(sp)
     b30:	44809000 	mtc1	zero,$f18
     b34:	8e05000c 	lw	a1,12(s0)
     b38:	46000506 	mov.s	$f20,$f0
     b3c:	26040028 	addiu	a0,s0,40
     b40:	3c063f80 	lui	a2,0x3f80
     b44:	3c0740a0 	lui	a3,0x40a0
     b48:	0c000000 	jal	0 <EnPart_Init>
     b4c:	e7b20010 	swc1	$f18,16(sp)
     b50:	44802000 	mtc1	zero,$f4
     b54:	8e050010 	lw	a1,16(s0)
     b58:	4600a500 	add.s	$f20,$f20,$f0
     b5c:	2604002c 	addiu	a0,s0,44
     b60:	3c063f80 	lui	a2,0x3f80
     b64:	3c0740a0 	lui	a3,0x40a0
     b68:	0c000000 	jal	0 <EnPart_Init>
     b6c:	e7a40010 	swc1	$f4,16(sp)
     b70:	44801000 	mtc1	zero,$f2
     b74:	4600a500 	add.s	$f20,$f20,$f0
     b78:	26040154 	addiu	a0,s0,340
     b7c:	44051000 	mfc1	a1,$f2
     b80:	3c063f80 	lui	a2,0x3f80
     b84:	3c073e80 	lui	a3,0x3e80
     b88:	0c000000 	jal	0 <EnPart_Init>
     b8c:	e7a20010 	swc1	$f2,16(sp)
     b90:	4600a500 	add.s	$f20,$f20,$f0
     b94:	44803000 	mtc1	zero,$f6
     b98:	00000000 	nop
     b9c:	4606a032 	c.eq.s	$f20,$f6
     ba0:	00000000 	nop
     ba4:	4500000b 	bc1f	bd4 <func_80ACE7E8+0x1bc>
     ba8:	00000000 	nop
     bac:	8e020118 	lw	v0,280(s0)
     bb0:	02002025 	move	a0,s0
     bb4:	2405383a 	li	a1,14394
     bb8:	844c0014 	lh	t4,20(v0)
     bbc:	258dffff 	addiu	t5,t4,-1
     bc0:	a44d0014 	sh	t5,20(v0)
     bc4:	860e014e 	lh	t6,334(s0)
     bc8:	25cfffff 	addiu	t7,t6,-1
     bcc:	0c000000 	jal	0 <EnPart_Init>
     bd0:	a60f014e 	sh	t7,334(s0)
     bd4:	10000005 	b	bec <func_80ACE7E8+0x1d4>
     bd8:	8e020118 	lw	v0,280(s0)
     bdc:	18600003 	blez	v1,bec <func_80ACE7E8+0x1d4>
     be0:	2478ffff 	addiu	t8,v1,-1
     be4:	a618014e 	sh	t8,334(s0)
     be8:	8e020118 	lw	v0,280(s0)
     bec:	905900af 	lbu	t9,175(v0)
     bf0:	53200004 	beqzl	t9,c04 <func_80ACE7E8+0x1ec>
     bf4:	8fbf0054 	lw	ra,84(sp)
     bf8:	0c000000 	jal	0 <EnPart_Init>
     bfc:	02002025 	move	a0,s0
     c00:	8fbf0054 	lw	ra,84(sp)
     c04:	d7b40048 	ldc1	$f20,72(sp)
     c08:	8fb00050 	lw	s0,80(sp)
     c0c:	03e00008 	jr	ra
     c10:	27bd0078 	addiu	sp,sp,120

00000c14 <EnPart_Update>:
     c14:	27bdffd8 	addiu	sp,sp,-40
     c18:	afbf0024 	sw	ra,36(sp)
     c1c:	afb00020 	sw	s0,32(sp)
     c20:	00808025 	move	s0,a0
     c24:	0c000000 	jal	0 <EnPart_Init>
     c28:	afa5002c 	sw	a1,44(sp)
     c2c:	8602001c 	lh	v0,28(s0)
     c30:	28410005 	slti	at,v0,5
     c34:	14200003 	bnez	at,c44 <EnPart_Update+0x30>
     c38:	28410009 	slti	at,v0,9
     c3c:	54200004 	bnezl	at,c50 <EnPart_Update+0x3c>
     c40:	44802000 	mtc1	zero,$f4
     c44:	0443001d 	bgezl	v0,cbc <EnPart_Update+0xa8>
     c48:	9208014c 	lbu	t0,332(s0)
     c4c:	44802000 	mtc1	zero,$f4
     c50:	240e0005 	li	t6,5
     c54:	afae0014 	sw	t6,20(sp)
     c58:	8fa4002c 	lw	a0,44(sp)
     c5c:	02002825 	move	a1,s0
     c60:	3c0640a0 	lui	a2,0x40a0
     c64:	3c074170 	lui	a3,0x4170
     c68:	0c000000 	jal	0 <EnPart_Init>
     c6c:	e7a40010 	swc1	$f4,16(sp)
     c70:	860f001c 	lh	t7,28(s0)
     c74:	44800000 	mtc1	zero,$f0
     c78:	26040068 	addiu	a0,s0,104
     c7c:	05e0000e 	bltz	t7,cb8 <EnPart_Update+0xa4>
     c80:	3c063f80 	lui	a2,0x3f80
     c84:	44050000 	mfc1	a1,$f0
     c88:	3c073f00 	lui	a3,0x3f00
     c8c:	0c000000 	jal	0 <EnPart_Init>
     c90:	e7a00010 	swc1	$f0,16(sp)
     c94:	96020088 	lhu	v0,136(s0)
     c98:	3c0140c0 	lui	at,0x40c0
     c9c:	30580001 	andi	t8,v0,0x1
     ca0:	53000006 	beqzl	t8,cbc <EnPart_Update+0xa8>
     ca4:	9208014c 	lbu	t0,332(s0)
     ca8:	44813000 	mtc1	at,$f6
     cac:	3059fffe 	andi	t9,v0,0xfffe
     cb0:	a6190088 	sh	t9,136(s0)
     cb4:	e6060060 	swc1	$f6,96(s0)
     cb8:	9208014c 	lbu	t0,332(s0)
     cbc:	3c190000 	lui	t9,0x0
     cc0:	02002025 	move	a0,s0
     cc4:	00084880 	sll	t1,t0,0x2
     cc8:	0329c821 	addu	t9,t9,t1
     ccc:	8f390068 	lw	t9,104(t9)
     cd0:	8fa5002c 	lw	a1,44(sp)
     cd4:	0320f809 	jalr	t9
     cd8:	00000000 	nop
     cdc:	8fbf0024 	lw	ra,36(sp)
     ce0:	8fb00020 	lw	s0,32(sp)
     ce4:	27bd0028 	addiu	sp,sp,40
     ce8:	03e00008 	jr	ra
     cec:	00000000 	nop

00000cf0 <func_80ACEAC0>:
     cf0:	27bdffe8 	addiu	sp,sp,-24
     cf4:	afbf0014 	sw	ra,20(sp)
     cf8:	afa5001c 	sw	a1,28(sp)
     cfc:	afa60020 	sw	a2,32(sp)
     d00:	afa70024 	sw	a3,36(sp)
     d04:	0c000000 	jal	0 <EnPart_Init>
     d08:	24050020 	li	a1,32
     d0c:	3c0ee700 	lui	t6,0xe700
     d10:	00402825 	move	a1,v0
     d14:	ac4e0000 	sw	t6,0(v0)
     d18:	24440008 	addiu	a0,v0,8
     d1c:	ac400004 	sw	zero,4(v0)
     d20:	00801025 	move	v0,a0
     d24:	3c0ffa00 	lui	t7,0xfa00
     d28:	ac4f0000 	sw	t7,0(v0)
     d2c:	93aa0023 	lbu	t2,35(sp)
     d30:	93b9001f 	lbu	t9,31(sp)
     d34:	93ae0027 	lbu	t6,39(sp)
     d38:	000a5c00 	sll	t3,t2,0x10
     d3c:	00194600 	sll	t0,t9,0x18
     d40:	010b6025 	or	t4,t0,t3
     d44:	000e7a00 	sll	t7,t6,0x8
     d48:	018fc025 	or	t8,t4,t7
     d4c:	371900ff 	ori	t9,t8,0xff
     d50:	ac590004 	sw	t9,4(v0)
     d54:	24840008 	addiu	a0,a0,8
     d58:	00801025 	move	v0,a0
     d5c:	3c09fb00 	lui	t1,0xfb00
     d60:	ac490000 	sw	t1,0(v0)
     d64:	93ae002f 	lbu	t6,47(sp)
     d68:	93a8002b 	lbu	t0,43(sp)
     d6c:	93b90033 	lbu	t9,51(sp)
     d70:	000e6400 	sll	t4,t6,0x10
     d74:	00085e00 	sll	t3,t0,0x18
     d78:	016c7825 	or	t7,t3,t4
     d7c:	00194a00 	sll	t1,t9,0x8
     d80:	01e95025 	or	t2,t7,t1
     d84:	354800ff 	ori	t0,t2,0xff
     d88:	ac480004 	sw	t0,4(v0)
     d8c:	3c0ddf00 	lui	t5,0xdf00
     d90:	ac8d0008 	sw	t5,8(a0)
     d94:	ac80000c 	sw	zero,12(a0)
     d98:	8fbf0014 	lw	ra,20(sp)
     d9c:	24840008 	addiu	a0,a0,8
     da0:	27bd0018 	addiu	sp,sp,24
     da4:	03e00008 	jr	ra
     da8:	00a01025 	move	v0,a1

00000dac <EnPart_Draw>:
     dac:	27bdff68 	addiu	sp,sp,-152
     db0:	afbf002c 	sw	ra,44(sp)
     db4:	afb00028 	sw	s0,40(sp)
     db8:	afa40098 	sw	a0,152(sp)
     dbc:	afa5009c 	sw	a1,156(sp)
     dc0:	8ca50000 	lw	a1,0(a1)
     dc4:	3c060000 	lui	a2,0x0
     dc8:	24c60000 	addiu	a2,a2,0
     dcc:	27a40080 	addiu	a0,sp,128
     dd0:	24070287 	li	a3,647
     dd4:	0c000000 	jal	0 <EnPart_Init>
     dd8:	00a08025 	move	s0,a1
     ddc:	8faf0098 	lw	t7,152(sp)
     de0:	24050001 	li	a1,1
     de4:	85f8001c 	lh	t8,28(t7)
     de8:	5b000004 	blezl	t8,dfc <EnPart_Draw+0x50>
     dec:	8fb9009c 	lw	t9,156(sp)
     df0:	0c000000 	jal	0 <EnPart_Init>
     df4:	c5ec0154 	lwc1	$f12,340(t7)
     df8:	8fb9009c 	lw	t9,156(sp)
     dfc:	0c000000 	jal	0 <EnPart_Init>
     e00:	8f240000 	lw	a0,0(t9)
     e04:	8fa40098 	lw	a0,152(sp)
     e08:	8fa5009c 	lw	a1,156(sp)
     e0c:	0c000000 	jal	0 <EnPart_Init>
     e10:	00003025 	move	a2,zero
     e14:	8fa90098 	lw	t1,152(sp)
     e18:	24010005 	li	at,5
     e1c:	3c0bdb06 	lui	t3,0xdb06
     e20:	8522001c 	lh	v0,28(t1)
     e24:	356b0020 	ori	t3,t3,0x20
     e28:	240500f5 	li	a1,245
     e2c:	5441003f 	bnel	v0,at,f2c <EnPart_Draw+0x180>
     e30:	24010006 	li	at,6
     e34:	8e0202c0 	lw	v0,704(s0)
     e38:	240d001e 	li	t5,30
     e3c:	240e0023 	li	t6,35
     e40:	244a0008 	addiu	t2,v0,8
     e44:	ae0a02c0 	sw	t2,704(s0)
     e48:	ac4b0000 	sw	t3,0(v0)
     e4c:	8fac009c 	lw	t4,156(sp)
     e50:	240600ff 	li	a2,255
     e54:	240700cd 	li	a3,205
     e58:	8d840000 	lw	a0,0(t4)
     e5c:	afa00018 	sw	zero,24(sp)
     e60:	afae0014 	sw	t6,20(sp)
     e64:	afad0010 	sw	t5,16(sp)
     e68:	0c000000 	jal	0 <EnPart_Init>
     e6c:	afa2007c 	sw	v0,124(sp)
     e70:	8fa3007c 	lw	v1,124(sp)
     e74:	3c0fdb06 	lui	t7,0xdb06
     e78:	35ef0024 	ori	t7,t7,0x24
     e7c:	ac620004 	sw	v0,4(v1)
     e80:	8e0202c0 	lw	v0,704(s0)
     e84:	240a0014 	li	t2,20
     e88:	240b0014 	li	t3,20
     e8c:	24580008 	addiu	t8,v0,8
     e90:	ae1802c0 	sw	t8,704(s0)
     e94:	ac4f0000 	sw	t7,0(v0)
     e98:	8fb9009c 	lw	t9,156(sp)
     e9c:	240500b9 	li	a1,185
     ea0:	24060087 	li	a2,135
     ea4:	8f240000 	lw	a0,0(t9)
     ea8:	afa00018 	sw	zero,24(sp)
     eac:	afab0014 	sw	t3,20(sp)
     eb0:	afaa0010 	sw	t2,16(sp)
     eb4:	24070019 	li	a3,25
     eb8:	0c000000 	jal	0 <EnPart_Init>
     ebc:	afa20078 	sw	v0,120(sp)
     ec0:	8fa30078 	lw	v1,120(sp)
     ec4:	3c0ddb06 	lui	t5,0xdb06
     ec8:	35ad0028 	ori	t5,t5,0x28
     ecc:	ac620004 	sw	v0,4(v1)
     ed0:	8e0202c0 	lw	v0,704(s0)
     ed4:	2418001e 	li	t8,30
     ed8:	240f0028 	li	t7,40
     edc:	244c0008 	addiu	t4,v0,8
     ee0:	ae0c02c0 	sw	t4,704(s0)
     ee4:	ac4d0000 	sw	t5,0(v0)
     ee8:	8fae009c 	lw	t6,156(sp)
     eec:	24190014 	li	t9,20
     ef0:	240500ff 	li	a1,255
     ef4:	8dc40000 	lw	a0,0(t6)
     ef8:	afb90018 	sw	t9,24(sp)
     efc:	afaf0014 	sw	t7,20(sp)
     f00:	afb80010 	sw	t8,16(sp)
     f04:	240600ff 	li	a2,255
     f08:	240700ff 	li	a3,255
     f0c:	0c000000 	jal	0 <EnPart_Init>
     f10:	afa20074 	sw	v0,116(sp)
     f14:	8fa30074 	lw	v1,116(sp)
     f18:	ac620004 	sw	v0,4(v1)
     f1c:	8faa0098 	lw	t2,152(sp)
     f20:	10000102 	b	132c <EnPart_Draw+0x580>
     f24:	8d450150 	lw	a1,336(t2)
     f28:	24010006 	li	at,6
     f2c:	1441003d 	bne	v0,at,1024 <EnPart_Draw+0x278>
     f30:	3c0cdb06 	lui	t4,0xdb06
     f34:	8e0202c0 	lw	v0,704(s0)
     f38:	358c0020 	ori	t4,t4,0x20
     f3c:	24050037 	li	a1,55
     f40:	244b0008 	addiu	t3,v0,8
     f44:	ae0b02c0 	sw	t3,704(s0)
     f48:	ac4c0000 	sw	t4,0(v0)
     f4c:	8fad009c 	lw	t5,156(sp)
     f50:	24060041 	li	a2,65
     f54:	24070037 	li	a3,55
     f58:	8da40000 	lw	a0,0(t5)
     f5c:	afa00018 	sw	zero,24(sp)
     f60:	afa00014 	sw	zero,20(sp)
     f64:	afa00010 	sw	zero,16(sp)
     f68:	0c000000 	jal	0 <EnPart_Init>
     f6c:	afa20070 	sw	v0,112(sp)
     f70:	8fa30070 	lw	v1,112(sp)
     f74:	3c18db06 	lui	t8,0xdb06
     f78:	37180024 	ori	t8,t8,0x24
     f7c:	ac620004 	sw	v0,4(v1)
     f80:	8e0202c0 	lw	v0,704(s0)
     f84:	24190019 	li	t9,25
     f88:	240a0014 	li	t2,20
     f8c:	244e0008 	addiu	t6,v0,8
     f90:	ae0e02c0 	sw	t6,704(s0)
     f94:	ac580000 	sw	t8,0(v0)
     f98:	8faf009c 	lw	t7,156(sp)
     f9c:	240500cd 	li	a1,205
     fa0:	240600a5 	li	a2,165
     fa4:	8de40000 	lw	a0,0(t7)
     fa8:	afa00018 	sw	zero,24(sp)
     fac:	afaa0014 	sw	t2,20(sp)
     fb0:	afb90010 	sw	t9,16(sp)
     fb4:	2407004b 	li	a3,75
     fb8:	0c000000 	jal	0 <EnPart_Init>
     fbc:	afa2006c 	sw	v0,108(sp)
     fc0:	8fa3006c 	lw	v1,108(sp)
     fc4:	3c0cdb06 	lui	t4,0xdb06
     fc8:	358c0028 	ori	t4,t4,0x28
     fcc:	ac620004 	sw	v0,4(v1)
     fd0:	8e0202c0 	lw	v0,704(s0)
     fd4:	240e0019 	li	t6,25
     fd8:	24180014 	li	t8,20
     fdc:	244b0008 	addiu	t3,v0,8
     fe0:	ae0b02c0 	sw	t3,704(s0)
     fe4:	ac4c0000 	sw	t4,0(v0)
     fe8:	8fad009c 	lw	t5,156(sp)
     fec:	240500cd 	li	a1,205
     ff0:	240600a5 	li	a2,165
     ff4:	8da40000 	lw	a0,0(t5)
     ff8:	afa00018 	sw	zero,24(sp)
     ffc:	afb80014 	sw	t8,20(sp)
    1000:	afae0010 	sw	t6,16(sp)
    1004:	2407004b 	li	a3,75
    1008:	0c000000 	jal	0 <EnPart_Init>
    100c:	afa20068 	sw	v0,104(sp)
    1010:	8fa30068 	lw	v1,104(sp)
    1014:	ac620004 	sw	v0,4(v1)
    1018:	8faf0098 	lw	t7,152(sp)
    101c:	100000c3 	b	132c <EnPart_Draw+0x580>
    1020:	8de50150 	lw	a1,336(t7)
    1024:	24010007 	li	at,7
    1028:	14410040 	bne	v0,at,112c <EnPart_Draw+0x380>
    102c:	3c0adb06 	lui	t2,0xdb06
    1030:	8e0202c0 	lw	v0,704(s0)
    1034:	354a0020 	ori	t2,t2,0x20
    1038:	240c00b4 	li	t4,180
    103c:	24590008 	addiu	t9,v0,8
    1040:	ae1902c0 	sw	t9,704(s0)
    1044:	ac4a0000 	sw	t2,0(v0)
    1048:	8fab009c 	lw	t3,156(sp)
    104c:	240d00b4 	li	t5,180
    1050:	240e00b4 	li	t6,180
    1054:	8d640000 	lw	a0,0(t3)
    1058:	afae0018 	sw	t6,24(sp)
    105c:	afad0014 	sw	t5,20(sp)
    1060:	afac0010 	sw	t4,16(sp)
    1064:	240500ff 	li	a1,255
    1068:	240600ff 	li	a2,255
    106c:	240700ff 	li	a3,255
    1070:	0c000000 	jal	0 <EnPart_Init>
    1074:	afa20064 	sw	v0,100(sp)
    1078:	8fa30064 	lw	v1,100(sp)
    107c:	3c0fdb06 	lui	t7,0xdb06
    1080:	35ef0024 	ori	t7,t7,0x24
    1084:	ac620004 	sw	v0,4(v1)
    1088:	8e0202c0 	lw	v0,704(s0)
    108c:	240a0019 	li	t2,25
    1090:	240b0014 	li	t3,20
    1094:	24580008 	addiu	t8,v0,8
    1098:	ae1802c0 	sw	t8,704(s0)
    109c:	ac4f0000 	sw	t7,0(v0)
    10a0:	8fb9009c 	lw	t9,156(sp)
    10a4:	240500e1 	li	a1,225
    10a8:	240600cd 	li	a2,205
    10ac:	8f240000 	lw	a0,0(t9)
    10b0:	afa00018 	sw	zero,24(sp)
    10b4:	afab0014 	sw	t3,20(sp)
    10b8:	afaa0010 	sw	t2,16(sp)
    10bc:	24070073 	li	a3,115
    10c0:	0c000000 	jal	0 <EnPart_Init>
    10c4:	afa20060 	sw	v0,96(sp)
    10c8:	8fa30060 	lw	v1,96(sp)
    10cc:	3c0ddb06 	lui	t5,0xdb06
    10d0:	35ad0028 	ori	t5,t5,0x28
    10d4:	ac620004 	sw	v0,4(v1)
    10d8:	8e0202c0 	lw	v0,704(s0)
    10dc:	24180019 	li	t8,25
    10e0:	240f0014 	li	t7,20
    10e4:	244c0008 	addiu	t4,v0,8
    10e8:	ae0c02c0 	sw	t4,704(s0)
    10ec:	ac4d0000 	sw	t5,0(v0)
    10f0:	8fae009c 	lw	t6,156(sp)
    10f4:	240500e1 	li	a1,225
    10f8:	240600cd 	li	a2,205
    10fc:	8dc40000 	lw	a0,0(t6)
    1100:	afa00018 	sw	zero,24(sp)
    1104:	afaf0014 	sw	t7,20(sp)
    1108:	afb80010 	sw	t8,16(sp)
    110c:	24070073 	li	a3,115
    1110:	0c000000 	jal	0 <EnPart_Init>
    1114:	afa2005c 	sw	v0,92(sp)
    1118:	8fa3005c 	lw	v1,92(sp)
    111c:	ac620004 	sw	v0,4(v1)
    1120:	8fb90098 	lw	t9,152(sp)
    1124:	10000081 	b	132c <EnPart_Draw+0x580>
    1128:	8f250150 	lw	a1,336(t9)
    112c:	24010009 	li	at,9
    1130:	54410040 	bnel	v0,at,1234 <EnPart_Draw+0x488>
    1134:	2401000a 	li	at,10
    1138:	8d2b0150 	lw	t3,336(t1)
    113c:	3c0a0000 	lui	t2,0x0
    1140:	254a0000 	addiu	t2,t2,0
    1144:	154b003a 	bne	t2,t3,1230 <EnPart_Draw+0x484>
    1148:	3c060000 	lui	a2,0x0
    114c:	8e0202c0 	lw	v0,704(s0)
    1150:	3c040000 	lui	a0,0x0
    1154:	24840000 	addiu	a0,a0,0
    1158:	00047100 	sll	t6,a0,0x4
    115c:	000ec702 	srl	t8,t6,0x1c
    1160:	3c0ddb06 	lui	t5,0xdb06
    1164:	244c0008 	addiu	t4,v0,8
    1168:	ae0c02c0 	sw	t4,704(s0)
    116c:	35ad0020 	ori	t5,t5,0x20
    1170:	00187880 	sll	t7,t8,0x2
    1174:	24c60000 	addiu	a2,a2,0
    1178:	00cfc821 	addu	t9,a2,t7
    117c:	ac4d0000 	sw	t5,0(v0)
    1180:	8f2a0000 	lw	t2,0(t9)
    1184:	3c0700ff 	lui	a3,0xff
    1188:	34e7ffff 	ori	a3,a3,0xffff
    118c:	00875824 	and	t3,a0,a3
    1190:	3c088000 	lui	t0,0x8000
    1194:	014b6021 	addu	t4,t2,t3
    1198:	01886821 	addu	t5,t4,t0
    119c:	ac4d0004 	sw	t5,4(v0)
    11a0:	8e0202c0 	lw	v0,704(s0)
    11a4:	3c040000 	lui	a0,0x0
    11a8:	24840000 	addiu	a0,a0,0
    11ac:	00047900 	sll	t7,a0,0x4
    11b0:	000fcf02 	srl	t9,t7,0x1c
    11b4:	3c18db06 	lui	t8,0xdb06
    11b8:	244e0008 	addiu	t6,v0,8
    11bc:	ae0e02c0 	sw	t6,704(s0)
    11c0:	37180024 	ori	t8,t8,0x24
    11c4:	00195080 	sll	t2,t9,0x2
    11c8:	00ca5821 	addu	t3,a2,t2
    11cc:	ac580000 	sw	t8,0(v0)
    11d0:	8d6c0000 	lw	t4,0(t3)
    11d4:	00876824 	and	t5,a0,a3
    11d8:	3c040000 	lui	a0,0x0
    11dc:	018d7021 	addu	t6,t4,t5
    11e0:	01c8c021 	addu	t8,t6,t0
    11e4:	ac580004 	sw	t8,4(v0)
    11e8:	8e0202c0 	lw	v0,704(s0)
    11ec:	24840000 	addiu	a0,a0,0
    11f0:	00045100 	sll	t2,a0,0x4
    11f4:	000a5f02 	srl	t3,t2,0x1c
    11f8:	3c19db06 	lui	t9,0xdb06
    11fc:	244f0008 	addiu	t7,v0,8
    1200:	ae0f02c0 	sw	t7,704(s0)
    1204:	37390028 	ori	t9,t9,0x28
    1208:	000b6080 	sll	t4,t3,0x2
    120c:	00cc6821 	addu	t5,a2,t4
    1210:	ac590000 	sw	t9,0(v0)
    1214:	8dae0000 	lw	t6,0(t5)
    1218:	0087c024 	and	t8,a0,a3
    121c:	01d87821 	addu	t7,t6,t8
    1220:	01e8c821 	addu	t9,t7,t0
    1224:	ac590004 	sw	t9,4(v0)
    1228:	10000040 	b	132c <EnPart_Draw+0x580>
    122c:	8d250150 	lw	a1,336(t1)
    1230:	2401000a 	li	at,10
    1234:	1441003d 	bne	v0,at,132c <EnPart_Draw+0x580>
    1238:	8d250150 	lw	a1,336(t1)
    123c:	3c0a0000 	lui	t2,0x0
    1240:	254a0000 	addiu	t2,t2,0
    1244:	15450039 	bne	t2,a1,132c <EnPart_Draw+0x580>
    1248:	3c060000 	lui	a2,0x0
    124c:	8e0202c0 	lw	v0,704(s0)
    1250:	3c040000 	lui	a0,0x0
    1254:	24840000 	addiu	a0,a0,0
    1258:	00046900 	sll	t5,a0,0x4
    125c:	000d7702 	srl	t6,t5,0x1c
    1260:	3c0cdb06 	lui	t4,0xdb06
    1264:	244b0008 	addiu	t3,v0,8
    1268:	ae0b02c0 	sw	t3,704(s0)
    126c:	358c0020 	ori	t4,t4,0x20
    1270:	000ec080 	sll	t8,t6,0x2
    1274:	24c60000 	addiu	a2,a2,0
    1278:	00d87821 	addu	t7,a2,t8
    127c:	ac4c0000 	sw	t4,0(v0)
    1280:	8df90000 	lw	t9,0(t7)
    1284:	3c0700ff 	lui	a3,0xff
    1288:	34e7ffff 	ori	a3,a3,0xffff
    128c:	00875024 	and	t2,a0,a3
    1290:	3c088000 	lui	t0,0x8000
    1294:	032a5821 	addu	t3,t9,t2
    1298:	01686021 	addu	t4,t3,t0
    129c:	ac4c0004 	sw	t4,4(v0)
    12a0:	8e0202c0 	lw	v0,704(s0)
    12a4:	3c040000 	lui	a0,0x0
    12a8:	24840000 	addiu	a0,a0,0
    12ac:	0004c100 	sll	t8,a0,0x4
    12b0:	00187f02 	srl	t7,t8,0x1c
    12b4:	3c0edb06 	lui	t6,0xdb06
    12b8:	244d0008 	addiu	t5,v0,8
    12bc:	ae0d02c0 	sw	t5,704(s0)
    12c0:	35ce0024 	ori	t6,t6,0x24
    12c4:	000fc880 	sll	t9,t7,0x2
    12c8:	00d95021 	addu	t2,a2,t9
    12cc:	ac4e0000 	sw	t6,0(v0)
    12d0:	8d4b0000 	lw	t3,0(t2)
    12d4:	00876024 	and	t4,a0,a3
    12d8:	3c040000 	lui	a0,0x0
    12dc:	016c6821 	addu	t5,t3,t4
    12e0:	01a87021 	addu	t6,t5,t0
    12e4:	ac4e0004 	sw	t6,4(v0)
    12e8:	8e0202c0 	lw	v0,704(s0)
    12ec:	24840000 	addiu	a0,a0,0
    12f0:	0004c900 	sll	t9,a0,0x4
    12f4:	00195702 	srl	t2,t9,0x1c
    12f8:	3c0fdb06 	lui	t7,0xdb06
    12fc:	24580008 	addiu	t8,v0,8
    1300:	ae1802c0 	sw	t8,704(s0)
    1304:	35ef0028 	ori	t7,t7,0x28
    1308:	000a5880 	sll	t3,t2,0x2
    130c:	00cb6021 	addu	t4,a2,t3
    1310:	ac4f0000 	sw	t7,0(v0)
    1314:	8d8d0000 	lw	t5,0(t4)
    1318:	00877024 	and	t6,a0,a3
    131c:	01aec021 	addu	t8,t5,t6
    1320:	03087821 	addu	t7,t8,t0
    1324:	ac4f0004 	sw	t7,4(v0)
    1328:	8d250150 	lw	a1,336(t1)
    132c:	10a00017 	beqz	a1,138c <EnPart_Draw+0x5e0>
    1330:	3c0ada38 	lui	t2,0xda38
    1334:	8e0202c0 	lw	v0,704(s0)
    1338:	354a0003 	ori	t2,t2,0x3
    133c:	3c050000 	lui	a1,0x0
    1340:	24590008 	addiu	t9,v0,8
    1344:	ae1902c0 	sw	t9,704(s0)
    1348:	ac4a0000 	sw	t2,0(v0)
    134c:	8fab009c 	lw	t3,156(sp)
    1350:	24a50010 	addiu	a1,a1,16
    1354:	240602b8 	li	a2,696
    1358:	8d640000 	lw	a0,0(t3)
    135c:	0c000000 	jal	0 <EnPart_Init>
    1360:	afa20040 	sw	v0,64(sp)
    1364:	8fa30040 	lw	v1,64(sp)
    1368:	3c0dde00 	lui	t5,0xde00
    136c:	ac620004 	sw	v0,4(v1)
    1370:	8e0202c0 	lw	v0,704(s0)
    1374:	244c0008 	addiu	t4,v0,8
    1378:	ae0c02c0 	sw	t4,704(s0)
    137c:	ac4d0000 	sw	t5,0(v0)
    1380:	8fae0098 	lw	t6,152(sp)
    1384:	8dd80150 	lw	t8,336(t6)
    1388:	ac580004 	sw	t8,4(v0)
    138c:	8faf009c 	lw	t7,156(sp)
    1390:	3c060000 	lui	a2,0x0
    1394:	24c60020 	addiu	a2,a2,32
    1398:	27a40080 	addiu	a0,sp,128
    139c:	240702bc 	li	a3,700
    13a0:	0c000000 	jal	0 <EnPart_Init>
    13a4:	8de50000 	lw	a1,0(t7)
    13a8:	8fbf002c 	lw	ra,44(sp)
    13ac:	8fb00028 	lw	s0,40(sp)
    13b0:	27bd0098 	addiu	sp,sp,152
    13b4:	03e00008 	jr	ra
    13b8:	00000000 	nop
    13bc:	00000000 	nop
