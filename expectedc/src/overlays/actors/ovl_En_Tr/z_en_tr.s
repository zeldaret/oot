
build/src/overlays/actors/ovl_En_Tr/z_en_tr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B22CF0>:
       0:	03e00008 	jr	ra
       4:	ac8502dc 	sw	a1,732(a0)

00000008 <EnTr_Init>:
       8:	27bdffd0 	addiu	sp,sp,-48
       c:	afb00024 	sw	s0,36(sp)
      10:	00808025 	move	s0,a0
      14:	afbf002c 	sw	ra,44(sp)
      18:	afa50034 	sw	a1,52(sp)
      1c:	3c060000 	lui	a2,0x0
      20:	afb10028 	sw	s1,40(sp)
      24:	24c60000 	addiu	a2,a2,0
      28:	24050000 	li	a1,0
      2c:	248400b4 	addiu	a0,a0,180
      30:	0c000000 	jal	0 <func_80B22CF0>
      34:	3c0741f0 	lui	a3,0x41f0
      38:	3c050000 	lui	a1,0x0
      3c:	24a50000 	addiu	a1,a1,0
      40:	0c000000 	jal	0 <func_80B22CF0>
      44:	02002025 	move	a0,s0
      48:	3c053c23 	lui	a1,0x3c23
      4c:	a60002d4 	sh	zero,724(s0)
      50:	ae00011c 	sw	zero,284(s0)
      54:	34a5d70a 	ori	a1,a1,0xd70a
      58:	0c000000 	jal	0 <func_80B22CF0>
      5c:	02002025 	move	a0,s0
      60:	8602001c 	lh	v0,28(s0)
      64:	2611014c 	addiu	s1,s0,332
      68:	02202825 	move	a1,s1
      6c:	10400006 	beqz	v0,88 <EnTr_Init+0x80>
      70:	8fa40034 	lw	a0,52(sp)
      74:	24010001 	li	at,1
      78:	1041001a 	beq	v0,at,e4 <EnTr_Init+0xdc>
      7c:	8fa40034 	lw	a0,52(sp)
      80:	10000031 	b	148 <EnTr_Init+0x140>
      84:	3c040000 	lui	a0,0x0
      88:	3c060601 	lui	a2,0x601
      8c:	3c070600 	lui	a3,0x600
      90:	260e0190 	addiu	t6,s0,400
      94:	260f0232 	addiu	t7,s0,562
      98:	2418001b 	li	t8,27
      9c:	afb80018 	sw	t8,24(sp)
      a0:	afaf0014 	sw	t7,20(sp)
      a4:	afae0010 	sw	t6,16(sp)
      a8:	24e73fc8 	addiu	a3,a3,16328
      ac:	0c000000 	jal	0 <func_80B22CF0>
      b0:	24c61688 	addiu	a2,a2,5768
      b4:	3c050600 	lui	a1,0x600
      b8:	24a53fc8 	addiu	a1,a1,16328
      bc:	0c000000 	jal	0 <func_80B22CF0>
      c0:	02202025 	move	a0,s1
      c4:	3c050000 	lui	a1,0x0
      c8:	ae0002e4 	sw	zero,740(s0)
      cc:	24a50000 	addiu	a1,a1,0
      d0:	0c000000 	jal	0 <func_80B22CF0>
      d4:	02002025 	move	a0,s0
      d8:	24190003 	li	t9,3
      dc:	1000001f 	b	15c <EnTr_Init+0x154>
      e0:	a61902d8 	sh	t9,728(s0)
      e4:	2611014c 	addiu	s1,s0,332
      e8:	3c060601 	lui	a2,0x601
      ec:	3c070600 	lui	a3,0x600
      f0:	26080190 	addiu	t0,s0,400
      f4:	26090232 	addiu	t1,s0,562
      f8:	240a001b 	li	t2,27
      fc:	afaa0018 	sw	t2,24(sp)
     100:	afa90014 	sw	t1,20(sp)
     104:	afa80010 	sw	t0,16(sp)
     108:	24e71cdc 	addiu	a3,a3,7388
     10c:	24c6c530 	addiu	a2,a2,-15056
     110:	0c000000 	jal	0 <func_80B22CF0>
     114:	02202825 	move	a1,s1
     118:	3c050600 	lui	a1,0x600
     11c:	24a51cdc 	addiu	a1,a1,7388
     120:	0c000000 	jal	0 <func_80B22CF0>
     124:	02202025 	move	a0,s1
     128:	3c050000 	lui	a1,0x0
     12c:	ae0002e4 	sw	zero,740(s0)
     130:	24a50000 	addiu	a1,a1,0
     134:	0c000000 	jal	0 <func_80B22CF0>
     138:	02002025 	move	a0,s0
     13c:	240b0002 	li	t3,2
     140:	10000006 	b	15c <EnTr_Init+0x154>
     144:	a60b02d8 	sh	t3,728(s0)
     148:	3c050000 	lui	a1,0x0
     14c:	24a50000 	addiu	a1,a1,0
     150:	24840000 	addiu	a0,a0,0
     154:	0c000000 	jal	0 <func_80B22CF0>
     158:	24060115 	li	a2,277
     15c:	8fbf002c 	lw	ra,44(sp)
     160:	8fb00024 	lw	s0,36(sp)
     164:	8fb10028 	lw	s1,40(sp)
     168:	03e00008 	jr	ra
     16c:	27bd0030 	addiu	sp,sp,48

00000170 <EnTr_Destroy>:
     170:	afa40000 	sw	a0,0(sp)
     174:	03e00008 	jr	ra
     178:	afa50004 	sw	a1,4(sp)

0000017c <func_80B22E6C>:
     17c:	27bdffd8 	addiu	sp,sp,-40
     180:	afbf0024 	sw	ra,36(sp)
     184:	afb00020 	sw	s0,32(sp)
     188:	afa5002c 	sw	a1,44(sp)
     18c:	948302d6 	lhu	v1,726(a0)
     190:	2401000b 	li	at,11
     194:	00808025 	move	s0,a0
     198:	14610014 	bne	v1,at,1ec <func_80B22E6C+0x70>
     19c:	00601025 	move	v0,v1
     1a0:	848e001c 	lh	t6,28(a0)
     1a4:	3c070000 	lui	a3,0x0
     1a8:	24e70000 	addiu	a3,a3,0
     1ac:	15c00004 	bnez	t6,1c0 <func_80B22E6C+0x44>
     1b0:	3c0f0000 	lui	t7,0x0
     1b4:	8def1360 	lw	t7,4960(t7)
     1b8:	24010006 	li	at,6
     1bc:	15e1000b 	bne	t7,at,1ec <func_80B22E6C+0x70>
     1c0:	3c180000 	lui	t8,0x0
     1c4:	27180000 	addiu	t8,t8,0
     1c8:	3c050000 	lui	a1,0x0
     1cc:	24a50000 	addiu	a1,a1,0
     1d0:	afb80014 	sw	t8,20(sp)
     1d4:	240439b3 	li	a0,14771
     1d8:	24060004 	li	a2,4
     1dc:	0c000000 	jal	0 <func_80B22CF0>
     1e0:	afa70010 	sw	a3,16(sp)
     1e4:	960302d6 	lhu	v1,726(s0)
     1e8:	00601025 	move	v0,v1
     1ec:	18400004 	blez	v0,200 <func_80B22E6C+0x84>
     1f0:	02002025 	move	a0,s0
     1f4:	2479ffff 	addiu	t9,v1,-1
     1f8:	10000005 	b	210 <func_80B22E6C+0x94>
     1fc:	a61902d6 	sh	t9,726(s0)
     200:	8e08011c 	lw	t0,284(s0)
     204:	11000002 	beqz	t0,210 <func_80B22E6C+0x94>
     208:	00000000 	nop
     20c:	ae00011c 	sw	zero,284(s0)
     210:	0c000000 	jal	0 <func_80B22CF0>
     214:	2405317b 	li	a1,12667
     218:	8fbf0024 	lw	ra,36(sp)
     21c:	8fb00020 	lw	s0,32(sp)
     220:	27bd0028 	addiu	sp,sp,40
     224:	03e00008 	jr	ra
     228:	00000000 	nop

0000022c <func_80B22F1C>:
     22c:	afa40000 	sw	a0,0(sp)
     230:	03e00008 	jr	ra
     234:	afa50004 	sw	a1,4(sp)

00000238 <func_80B22F28>:
     238:	27bdffc0 	addiu	sp,sp,-64
     23c:	afbf003c 	sw	ra,60(sp)
     240:	afb10038 	sw	s1,56(sp)
     244:	afb00034 	sw	s0,52(sp)
     248:	90ae1d6c 	lbu	t6,7532(a1)
     24c:	00808025 	move	s0,a0
     250:	00a08825 	move	s1,a1
     254:	51c00060 	beqzl	t6,3d8 <func_80B22F28+0x1a0>
     258:	8fbf003c 	lw	ra,60(sp)
     25c:	848602d8 	lh	a2,728(a0)
     260:	00067880 	sll	t7,a2,0x2
     264:	00afc021 	addu	t8,a1,t7
     268:	8f021d8c 	lw	v0,7564(t8)
     26c:	5040005a 	beqzl	v0,3d8 <func_80B22F28+0x1a0>
     270:	8fbf003c 	lw	ra,60(sp)
     274:	94430000 	lhu	v1,0(v0)
     278:	24010004 	li	at,4
     27c:	02002025 	move	a0,s0
     280:	10610006 	beq	v1,at,29c <func_80B22F28+0x64>
     284:	3c053c23 	lui	a1,0x3c23
     288:	24010006 	li	at,6
     28c:	10610010 	beq	v1,at,2d0 <func_80B22F28+0x98>
     290:	02002025 	move	a0,s0
     294:	10000046 	b	3b0 <func_80B22F28+0x178>
     298:	00000000 	nop
     29c:	0c000000 	jal	0 <func_80B22CF0>
     2a0:	34a5d70a 	ori	a1,a1,0xd70a
     2a4:	3c050000 	lui	a1,0x0
     2a8:	24a50000 	addiu	a1,a1,0
     2ac:	0c000000 	jal	0 <func_80B22CF0>
     2b0:	02002025 	move	a0,s0
     2b4:	24190018 	li	t9,24
     2b8:	a61902d6 	sh	t9,726(s0)
     2bc:	02002025 	move	a0,s0
     2c0:	0c000000 	jal	0 <func_80B22CF0>
     2c4:	24053877 	li	a1,14455
     2c8:	10000040 	b	3cc <func_80B22F28+0x194>
     2cc:	02002025 	move	a0,s0
     2d0:	8608001c 	lh	t0,28(s0)
     2d4:	3c040000 	lui	a0,0x0
     2d8:	00084880 	sll	t1,t0,0x2
     2dc:	00892021 	addu	a0,a0,t1
     2e0:	0c000000 	jal	0 <func_80B22CF0>
     2e4:	8c840000 	lw	a0,0(a0)
     2e8:	44822000 	mtc1	v0,$f4
     2ec:	860a001c 	lh	t2,28(s0)
     2f0:	3c01c0a0 	lui	at,0xc0a0
     2f4:	468021a0 	cvt.s.w	$f6,$f4
     2f8:	44814000 	mtc1	at,$f8
     2fc:	3c050000 	lui	a1,0x0
     300:	000a5880 	sll	t3,t2,0x2
     304:	00ab2821 	addu	a1,a1,t3
     308:	240c0002 	li	t4,2
     30c:	afac0014 	sw	t4,20(sp)
     310:	8ca50000 	lw	a1,0(a1)
     314:	e7a60010 	swc1	$f6,16(sp)
     318:	2604014c 	addiu	a0,s0,332
     31c:	3c063f80 	lui	a2,0x3f80
     320:	24070000 	li	a3,0
     324:	0c000000 	jal	0 <func_80B22CF0>
     328:	e7a80018 	swc1	$f8,24(sp)
     32c:	3c050000 	lui	a1,0x0
     330:	24a50000 	addiu	a1,a1,0
     334:	0c000000 	jal	0 <func_80B22CF0>
     338:	02002025 	move	a0,s0
     33c:	8602001c 	lh	v0,28(s0)
     340:	3c0e0000 	lui	t6,0x0
     344:	c60a0024 	lwc1	$f10,36(s0)
     348:	00026880 	sll	t5,v0,0x2
     34c:	01cd7021 	addu	t6,t6,t5
     350:	8dce0000 	lw	t6,0(t6)
     354:	240f0027 	li	t7,39
     358:	a60f02d6 	sh	t7,726(s0)
     35c:	ae0e02e4 	sw	t6,740(s0)
     360:	e7aa0010 	swc1	$f10,16(sp)
     364:	c6100028 	lwc1	$f16,40(s0)
     368:	24580009 	addiu	t8,v0,9
     36c:	26241c24 	addiu	a0,s1,7204
     370:	e7b00014 	swc1	$f16,20(sp)
     374:	c612002c 	lwc1	$f18,44(s0)
     378:	afb80028 	sw	t8,40(sp)
     37c:	afa00024 	sw	zero,36(sp)
     380:	afa00020 	sw	zero,32(sp)
     384:	afa0001c 	sw	zero,28(sp)
     388:	02002825 	move	a1,s0
     38c:	02203025 	move	a2,s1
     390:	240700f5 	li	a3,245
     394:	0c000000 	jal	0 <func_80B22CF0>
     398:	e7b20018 	swc1	$f18,24(sp)
     39c:	02002025 	move	a0,s0
     3a0:	0c000000 	jal	0 <func_80B22CF0>
     3a4:	240538a5 	li	a1,14501
     3a8:	10000008 	b	3cc <func_80B22F28+0x194>
     3ac:	02002025 	move	a0,s0
     3b0:	0c000000 	jal	0 <func_80B22CF0>
     3b4:	02202825 	move	a1,s1
     3b8:	02002025 	move	a0,s0
     3bc:	02202825 	move	a1,s1
     3c0:	0c000000 	jal	0 <func_80B22CF0>
     3c4:	860602d8 	lh	a2,728(s0)
     3c8:	02002025 	move	a0,s0
     3cc:	0c000000 	jal	0 <func_80B22CF0>
     3d0:	2405317b 	li	a1,12667
     3d4:	8fbf003c 	lw	ra,60(sp)
     3d8:	8fb00034 	lw	s0,52(sp)
     3dc:	8fb10038 	lw	s1,56(sp)
     3e0:	03e00008 	jr	ra
     3e4:	27bd0040 	addiu	sp,sp,64

000003e8 <func_80B230D8>:
     3e8:	27bdffc0 	addiu	sp,sp,-64
     3ec:	afbf0024 	sw	ra,36(sp)
     3f0:	afb10020 	sw	s1,32(sp)
     3f4:	afb0001c 	sw	s0,28(sp)
     3f8:	8c980024 	lw	t8,36(a0)
     3fc:	27ae0034 	addiu	t6,sp,52
     400:	00808025 	move	s0,a0
     404:	add80000 	sw	t8,0(t6)
     408:	8c8f0028 	lw	t7,40(a0)
     40c:	00a08825 	move	s1,a1
     410:	adcf0004 	sw	t7,4(t6)
     414:	8c98002c 	lw	t8,44(a0)
     418:	add80008 	sw	t8,8(t6)
     41c:	90b91d6c 	lbu	t9,7532(a1)
     420:	5320004c 	beqzl	t9,554 <func_80B230D8+0x16c>
     424:	8fbf0024 	lw	ra,36(sp)
     428:	848602d8 	lh	a2,728(a0)
     42c:	00064080 	sll	t0,a2,0x2
     430:	00a84821 	addu	t1,a1,t0
     434:	8d221d8c 	lw	v0,7564(t1)
     438:	50400046 	beqzl	v0,554 <func_80B230D8+0x16c>
     43c:	8fbf0024 	lw	ra,36(sp)
     440:	944a0000 	lhu	t2,0(v0)
     444:	24010008 	li	at,8
     448:	55410012 	bnel	t2,at,494 <func_80B230D8+0xac>
     44c:	02002025 	move	a0,s0
     450:	0c000000 	jal	0 <func_80B22CF0>
     454:	00000000 	nop
     458:	c60c0064 	lwc1	$f12,100(s0)
     45c:	0c000000 	jal	0 <func_80B22CF0>
     460:	c60e005c 	lwc1	$f14,92(s0)
     464:	a6020032 	sh	v0,50(s0)
     468:	86050032 	lh	a1,50(s0)
     46c:	240b0100 	li	t3,256
     470:	afab0010 	sw	t3,16(sp)
     474:	260400b6 	addiu	a0,s0,182
     478:	2406000a 	li	a2,10
     47c:	0c000000 	jal	0 <func_80B22CF0>
     480:	24070400 	li	a3,1024
     484:	860c00b6 	lh	t4,182(s0)
     488:	1000002a 	b	534 <func_80B230D8+0x14c>
     48c:	a60c0032 	sh	t4,50(s0)
     490:	02002025 	move	a0,s0
     494:	0c000000 	jal	0 <func_80B22CF0>
     498:	02202825 	move	a1,s1
     49c:	0c000000 	jal	0 <func_80B22CF0>
     4a0:	860402d6 	lh	a0,726(s0)
     4a4:	3c014316 	lui	at,0x4316
     4a8:	44813000 	mtc1	at,$f6
     4ac:	3c01c2c8 	lui	at,0xc2c8
     4b0:	c6040024 	lwc1	$f4,36(s0)
     4b4:	46060202 	mul.s	$f8,$f0,$f6
     4b8:	44819000 	mtc1	at,$f18
     4bc:	c6100028 	lwc1	$f16,40(s0)
     4c0:	860402d6 	lh	a0,726(s0)
     4c4:	46128180 	add.s	$f6,$f16,$f18
     4c8:	46082280 	add.s	$f10,$f4,$f8
     4cc:	e6060028 	swc1	$f6,40(s0)
     4d0:	0c000000 	jal	0 <func_80B22CF0>
     4d4:	e60a0024 	swc1	$f10,36(s0)
     4d8:	3c014316 	lui	at,0x4316
     4dc:	44814000 	mtc1	at,$f8
     4e0:	c604002c 	lwc1	$f4,44(s0)
     4e4:	960e02d6 	lhu	t6,726(s0)
     4e8:	46080282 	mul.s	$f10,$f0,$f8
     4ec:	c6120024 	lwc1	$f18,36(s0)
     4f0:	25cf4000 	addiu	t7,t6,16384
     4f4:	25d80400 	addiu	t8,t6,1024
     4f8:	a60f00b6 	sh	t7,182(s0)
     4fc:	a61802d6 	sh	t8,726(s0)
     500:	460a2400 	add.s	$f16,$f4,$f10
     504:	c6040028 	lwc1	$f4,40(s0)
     508:	e610002c 	swc1	$f16,44(s0)
     50c:	c7a60034 	lwc1	$f6,52(sp)
     510:	46069201 	sub.s	$f8,$f18,$f6
     514:	c612002c 	lwc1	$f18,44(s0)
     518:	e608005c 	swc1	$f8,92(s0)
     51c:	c7aa0038 	lwc1	$f10,56(sp)
     520:	460a2401 	sub.s	$f16,$f4,$f10
     524:	e6100060 	swc1	$f16,96(s0)
     528:	c7a6003c 	lwc1	$f6,60(sp)
     52c:	46069201 	sub.s	$f8,$f18,$f6
     530:	e6080064 	swc1	$f8,100(s0)
     534:	96391d74 	lhu	t9,7540(s1)
     538:	02002025 	move	a0,s0
     53c:	2b21029e 	slti	at,t9,670
     540:	50200004 	beqzl	at,554 <func_80B230D8+0x16c>
     544:	8fbf0024 	lw	ra,36(sp)
     548:	0c000000 	jal	0 <func_80B22CF0>
     54c:	2405317b 	li	a1,12667
     550:	8fbf0024 	lw	ra,36(sp)
     554:	8fb0001c 	lw	s0,28(sp)
     558:	8fb10020 	lw	s1,32(sp)
     55c:	03e00008 	jr	ra
     560:	27bd0040 	addiu	sp,sp,64

00000564 <func_80B23254>:
     564:	27bdff78 	addiu	sp,sp,-136
     568:	afbf002c 	sw	ra,44(sp)
     56c:	afb00028 	sw	s0,40(sp)
     570:	afa40088 	sw	a0,136(sp)
     574:	afa5008c 	sw	a1,140(sp)
     578:	afa60090 	sw	a2,144(sp)
     57c:	afa70094 	sw	a3,148(sp)
     580:	84ae07a0 	lh	t6,1952(a1)
     584:	27a40044 	addiu	a0,sp,68
     588:	00a03825 	move	a3,a1
     58c:	000e7880 	sll	t7,t6,0x2
     590:	00afc021 	addu	t8,a1,t7
     594:	8f190790 	lw	t9,1936(t8)
     598:	8f29005c 	lw	t1,92(t9)
     59c:	ac890000 	sw	t1,0(a0)
     5a0:	8f280060 	lw	t0,96(t9)
     5a4:	ac880004 	sw	t0,4(a0)
     5a8:	8f290064 	lw	t1,100(t9)
     5ac:	ac890008 	sw	t1,8(a0)
     5b0:	8fa50088 	lw	a1,136(sp)
     5b4:	afa7008c 	sw	a3,140(sp)
     5b8:	24a50024 	addiu	a1,a1,36
     5bc:	0c000000 	jal	0 <func_80B22CF0>
     5c0:	afa50038 	sw	a1,56(sp)
     5c4:	00028400 	sll	s0,v0,0x10
     5c8:	00108403 	sra	s0,s0,0x10
     5cc:	27a40044 	addiu	a0,sp,68
     5d0:	0c000000 	jal	0 <func_80B22CF0>
     5d4:	8fa50038 	lw	a1,56(sp)
     5d8:	44800000 	mtc1	zero,$f0
     5dc:	00025023 	negu	t2,v0
     5e0:	00102400 	sll	a0,s0,0x10
     5e4:	a7aa0040 	sh	t2,64(sp)
     5e8:	00042403 	sra	a0,a0,0x10
     5ec:	e7a0006c 	swc1	$f0,108(sp)
     5f0:	0c000000 	jal	0 <func_80B22CF0>
     5f4:	e7a00064 	swc1	$f0,100(sp)
     5f8:	e7a0003c 	swc1	$f0,60(sp)
     5fc:	0c000000 	jal	0 <func_80B22CF0>
     600:	87a40040 	lh	a0,64(sp)
     604:	c7a40094 	lwc1	$f4,148(sp)
     608:	c7a6003c 	lwc1	$f6,60(sp)
     60c:	87a40040 	lh	a0,64(sp)
     610:	46062202 	mul.s	$f8,$f4,$f6
     614:	00000000 	nop
     618:	46080282 	mul.s	$f10,$f0,$f8
     61c:	0c000000 	jal	0 <func_80B22CF0>
     620:	e7aa0070 	swc1	$f10,112(sp)
     624:	c7b00094 	lwc1	$f16,148(sp)
     628:	00102400 	sll	a0,s0,0x10
     62c:	00042403 	sra	a0,a0,0x10
     630:	46100482 	mul.s	$f18,$f0,$f16
     634:	0c000000 	jal	0 <func_80B22CF0>
     638:	e7b20074 	swc1	$f18,116(sp)
     63c:	e7a0003c 	swc1	$f0,60(sp)
     640:	0c000000 	jal	0 <func_80B22CF0>
     644:	87a40040 	lh	a0,64(sp)
     648:	c7a40094 	lwc1	$f4,148(sp)
     64c:	c7a6003c 	lwc1	$f6,60(sp)
     650:	3c014120 	lui	at,0x4120
     654:	44811000 	mtc1	at,$f2
     658:	46062202 	mul.s	$f8,$f4,$f6
     65c:	3c013f00 	lui	at,0x3f00
     660:	44818000 	mtc1	at,$f16
     664:	8fab0088 	lw	t3,136(sp)
     668:	3c0f0000 	lui	t7,0x0
     66c:	e7b00068 	swc1	$f16,104(sp)
     670:	25ef0000 	addiu	t7,t7,0
     674:	46080282 	mul.s	$f10,$f0,$f8
     678:	8fa80038 	lw	t0,56(sp)
     67c:	27b90058 	addiu	t9,sp,88
     680:	00102400 	sll	a0,s0,0x10
     684:	00042403 	sra	a0,a0,0x10
     688:	e7aa0078 	swc1	$f10,120(sp)
     68c:	856d001c 	lh	t5,28(t3)
     690:	000d70c0 	sll	t6,t5,0x3
     694:	01cf1021 	addu	v0,t6,t7
     698:	24580004 	addiu	t8,v0,4
     69c:	afa20054 	sw	v0,84(sp)
     6a0:	afb80050 	sw	t8,80(sp)
     6a4:	8d0a0000 	lw	t2,0(t0)
     6a8:	af2a0000 	sw	t2,0(t9)
     6ac:	8d090004 	lw	t1,4(t0)
     6b0:	af290004 	sw	t1,4(t9)
     6b4:	8d0a0008 	lw	t2,8(t0)
     6b8:	af2a0008 	sw	t2,8(t9)
     6bc:	c7a40070 	lwc1	$f4,112(sp)
     6c0:	c7b20058 	lwc1	$f18,88(sp)
     6c4:	c7b00074 	lwc1	$f16,116(sp)
     6c8:	46022182 	mul.s	$f6,$f4,$f2
     6cc:	c7aa005c 	lwc1	$f10,92(sp)
     6d0:	46028102 	mul.s	$f4,$f16,$f2
     6d4:	46069201 	sub.s	$f8,$f18,$f6
     6d8:	c7a60060 	lwc1	$f6,96(sp)
     6dc:	46045481 	sub.s	$f18,$f10,$f4
     6e0:	e7a80058 	swc1	$f8,88(sp)
     6e4:	c7a80078 	lwc1	$f8,120(sp)
     6e8:	e7b2005c 	swc1	$f18,92(sp)
     6ec:	46024402 	mul.s	$f16,$f8,$f2
     6f0:	46103281 	sub.s	$f10,$f6,$f16
     6f4:	0c000000 	jal	0 <func_80B22CF0>
     6f8:	e7aa0060 	swc1	$f10,96(sp)
     6fc:	8fa20090 	lw	v0,144(sp)
     700:	3c0b0000 	lui	t3,0x0
     704:	256b0000 	addiu	t3,t3,0
     708:	00021080 	sll	v0,v0,0x2
     70c:	004b1821 	addu	v1,v0,t3
     710:	c4640000 	lwc1	$f4,0(v1)
     714:	c7a20098 	lwc1	$f2,152(sp)
     718:	3c010000 	lui	at,0x0
     71c:	00220821 	addu	at,at,v0
     720:	46022482 	mul.s	$f18,$f4,$f2
     724:	c42a0000 	lwc1	$f10,0(at)
     728:	c7a60058 	lwc1	$f6,88(sp)
     72c:	00102400 	sll	a0,s0,0x10
     730:	00042403 	sra	a0,a0,0x10
     734:	afa30038 	sw	v1,56(sp)
     738:	46120202 	mul.s	$f8,$f0,$f18
     73c:	c7b2005c 	lwc1	$f18,92(sp)
     740:	46025102 	mul.s	$f4,$f10,$f2
     744:	46064400 	add.s	$f16,$f8,$f6
     748:	46122200 	add.s	$f8,$f4,$f18
     74c:	e7b0007c 	swc1	$f16,124(sp)
     750:	0c000000 	jal	0 <func_80B22CF0>
     754:	e7a80080 	swc1	$f8,128(sp)
     758:	8fa30038 	lw	v1,56(sp)
     75c:	c7a20098 	lwc1	$f2,152(sp)
     760:	c7a60060 	lwc1	$f6,96(sp)
     764:	c4700000 	lwc1	$f16,0(v1)
     768:	3c014448 	lui	at,0x4448
     76c:	44814000 	mtc1	at,$f8
     770:	46028282 	mul.s	$f10,$f16,$f2
     774:	3c0142a0 	lui	at,0x42a0
     778:	8fac0054 	lw	t4,84(sp)
     77c:	8fad0050 	lw	t5,80(sp)
     780:	8fa4008c 	lw	a0,140(sp)
     784:	27a5007c 	addiu	a1,sp,124
     788:	27a60070 	addiu	a2,sp,112
     78c:	460a0102 	mul.s	$f4,$f0,$f10
     790:	27a70064 	addiu	a3,sp,100
     794:	afac0010 	sw	t4,16(sp)
     798:	46024402 	mul.s	$f16,$f8,$f2
     79c:	afad0014 	sw	t5,20(sp)
     7a0:	46043481 	sub.s	$f18,$f6,$f4
     7a4:	44813000 	mtc1	at,$f6
     7a8:	4600828d 	trunc.w.s	$f10,$f16
     7ac:	46023102 	mul.s	$f4,$f6,$f2
     7b0:	e7b20084 	swc1	$f18,132(sp)
     7b4:	440f5000 	mfc1	t7,$f10
     7b8:	00000000 	nop
     7bc:	afaf0018 	sw	t7,24(sp)
     7c0:	4600248d 	trunc.w.s	$f18,$f4
     7c4:	44199000 	mfc1	t9,$f18
     7c8:	0c000000 	jal	0 <func_80B22CF0>
     7cc:	afb9001c 	sw	t9,28(sp)
     7d0:	8fbf002c 	lw	ra,44(sp)
     7d4:	8fb00028 	lw	s0,40(sp)
     7d8:	27bd0088 	addiu	sp,sp,136
     7dc:	03e00008 	jr	ra
     7e0:	00000000 	nop

000007e4 <func_80B234D4>:
     7e4:	27bdffd0 	addiu	sp,sp,-48
     7e8:	afbf0024 	sw	ra,36(sp)
     7ec:	afb00020 	sw	s0,32(sp)
     7f0:	afa50034 	sw	a1,52(sp)
     7f4:	948202d6 	lhu	v0,726(a0)
     7f8:	00808025 	move	s0,a0
     7fc:	28410011 	slti	at,v0,17
     800:	1420000c 	bnez	at,834 <func_80B234D4+0x50>
     804:	00401825 	move	v1,v0
     808:	00027880 	sll	t7,v0,0x2
     80c:	01e27821 	addu	t7,t7,v0
     810:	000f78c0 	sll	t7,t7,0x3
     814:	848e00b6 	lh	t6,182(a0)
     818:	01e27821 	addu	t7,t7,v0
     81c:	000f7900 	sll	t7,t7,0x4
     820:	01e27823 	subu	t7,t7,v0
     824:	01cfc023 	subu	t8,t6,t7
     828:	27193d68 	addiu	t9,t8,15720
     82c:	1000004d 	b	964 <func_80B234D4+0x180>
     830:	a49900b6 	sh	t9,182(a0)
     834:	28610005 	slti	at,v1,5
     838:	14200015 	bnez	at,890 <func_80B234D4+0xac>
     83c:	3c010000 	lui	at,0x0
     840:	c4260000 	lwc1	$f6,0(at)
     844:	c6040050 	lwc1	$f4,80(s0)
     848:	02002025 	move	a0,s0
     84c:	46062202 	mul.s	$f8,$f4,$f6
     850:	44054000 	mfc1	a1,$f8
     854:	0c000000 	jal	0 <func_80B22CF0>
     858:	00000000 	nop
     85c:	960202d6 	lhu	v0,726(s0)
     860:	860800b6 	lh	t0,182(s0)
     864:	00024880 	sll	t1,v0,0x2
     868:	01224821 	addu	t1,t1,v0
     86c:	000948c0 	sll	t1,t1,0x3
     870:	01224821 	addu	t1,t1,v0
     874:	00094900 	sll	t1,t1,0x4
     878:	01224823 	subu	t1,t1,v0
     87c:	01095023 	subu	t2,t0,t1
     880:	254b3d68 	addiu	t3,t2,15720
     884:	a60b00b6 	sh	t3,182(s0)
     888:	10000036 	b	964 <func_80B234D4+0x180>
     88c:	00401825 	move	v1,v0
     890:	1860002e 	blez	v1,94c <func_80B234D4+0x168>
     894:	02002025 	move	a0,s0
     898:	24010007 	li	at,7
     89c:	00033040 	sll	a2,v1,0x1
     8a0:	00c1001a 	div	zero,a2,at
     8a4:	3c010000 	lui	at,0x0
     8a8:	c42a0000 	lwc1	$f10,0(at)
     8ac:	00003010 	mfhi	a2
     8b0:	afa6002c 	sw	a2,44(sp)
     8b4:	02002025 	move	a0,s0
     8b8:	8fa50034 	lw	a1,52(sp)
     8bc:	3c0740a0 	lui	a3,0x40a0
     8c0:	0c000000 	jal	0 <func_80B22CF0>
     8c4:	e7aa0010 	swc1	$f10,16(sp)
     8c8:	8fa6002c 	lw	a2,44(sp)
     8cc:	24010007 	li	at,7
     8d0:	02002025 	move	a0,s0
     8d4:	24c60001 	addiu	a2,a2,1
     8d8:	00c1001a 	div	zero,a2,at
     8dc:	3c010000 	lui	at,0x0
     8e0:	c4300000 	lwc1	$f16,0(at)
     8e4:	00003010 	mfhi	a2
     8e8:	8fa50034 	lw	a1,52(sp)
     8ec:	3c0740a0 	lui	a3,0x40a0
     8f0:	0c000000 	jal	0 <func_80B22CF0>
     8f4:	e7b00010 	swc1	$f16,16(sp)
     8f8:	3c010000 	lui	at,0x0
     8fc:	c4240000 	lwc1	$f4,0(at)
     900:	c6120050 	lwc1	$f18,80(s0)
     904:	02002025 	move	a0,s0
     908:	46049182 	mul.s	$f6,$f18,$f4
     90c:	44053000 	mfc1	a1,$f6
     910:	0c000000 	jal	0 <func_80B22CF0>
     914:	00000000 	nop
     918:	960202d6 	lhu	v0,726(s0)
     91c:	860c00b6 	lh	t4,182(s0)
     920:	00026880 	sll	t5,v0,0x2
     924:	01a26821 	addu	t5,t5,v0
     928:	000d68c0 	sll	t5,t5,0x3
     92c:	01a26821 	addu	t5,t5,v0
     930:	000d6900 	sll	t5,t5,0x4
     934:	01a26823 	subu	t5,t5,v0
     938:	018d7023 	subu	t6,t4,t5
     93c:	25cf3d68 	addiu	t7,t6,15720
     940:	a60f00b6 	sh	t7,182(s0)
     944:	10000007 	b	964 <func_80B234D4+0x180>
     948:	00401825 	move	v1,v0
     94c:	3c050000 	lui	a1,0x0
     950:	0c000000 	jal	0 <func_80B22CF0>
     954:	24a50000 	addiu	a1,a1,0
     958:	960202d6 	lhu	v0,726(s0)
     95c:	ae000134 	sw	zero,308(s0)
     960:	00401825 	move	v1,v0
     964:	24010004 	li	at,4
     968:	14610005 	bne	v1,at,980 <func_80B234D4+0x19c>
     96c:	02002025 	move	a0,s0
     970:	0c000000 	jal	0 <func_80B22CF0>
     974:	240538cd 	li	a1,14541
     978:	960202d6 	lhu	v0,726(s0)
     97c:	00401825 	move	v1,v0
     980:	18600002 	blez	v1,98c <func_80B234D4+0x1a8>
     984:	2458ffff 	addiu	t8,v0,-1
     988:	a61802d6 	sh	t8,726(s0)
     98c:	8fbf0024 	lw	ra,36(sp)
     990:	8fb00020 	lw	s0,32(sp)
     994:	27bd0030 	addiu	sp,sp,48
     998:	03e00008 	jr	ra
     99c:	00000000 	nop

000009a0 <func_80B23690>:
     9a0:	27bdffd0 	addiu	sp,sp,-48
     9a4:	afbf0024 	sw	ra,36(sp)
     9a8:	afb00020 	sw	s0,32(sp)
     9ac:	afa50034 	sw	a1,52(sp)
     9b0:	948202d6 	lhu	v0,726(a0)
     9b4:	00808025 	move	s0,a0
     9b8:	3c0740a0 	lui	a3,0x40a0
     9bc:	2841001f 	slti	at,v0,31
     9c0:	14200019 	bnez	at,a28 <func_80B23690+0x88>
     9c4:	00401825 	move	v1,v0
     9c8:	24010007 	li	at,7
     9cc:	00033040 	sll	a2,v1,0x1
     9d0:	00c1001a 	div	zero,a2,at
     9d4:	3c013f80 	lui	at,0x3f80
     9d8:	44812000 	mtc1	at,$f4
     9dc:	00003010 	mfhi	a2
     9e0:	afa6002c 	sw	a2,44(sp)
     9e4:	0c000000 	jal	0 <func_80B22CF0>
     9e8:	e7a40010 	swc1	$f4,16(sp)
     9ec:	8fa6002c 	lw	a2,44(sp)
     9f0:	24010007 	li	at,7
     9f4:	02002025 	move	a0,s0
     9f8:	24c60001 	addiu	a2,a2,1
     9fc:	00c1001a 	div	zero,a2,at
     a00:	3c013f80 	lui	at,0x3f80
     a04:	44813000 	mtc1	at,$f6
     a08:	00003010 	mfhi	a2
     a0c:	8fa50034 	lw	a1,52(sp)
     a10:	3c0740a0 	lui	a3,0x40a0
     a14:	0c000000 	jal	0 <func_80B22CF0>
     a18:	e7a60010 	swc1	$f6,16(sp)
     a1c:	960202d6 	lhu	v0,726(s0)
     a20:	10000038 	b	b04 <func_80B23690+0x164>
     a24:	00401825 	move	v1,v0
     a28:	2401001e 	li	at,30
     a2c:	14610010 	bne	v1,at,a70 <func_80B23690+0xd0>
     a30:	3c0e0000 	lui	t6,0x0
     a34:	0003c080 	sll	t8,v1,0x2
     a38:	0303c023 	subu	t8,t8,v1
     a3c:	0018c080 	sll	t8,t8,0x2
     a40:	0303c021 	addu	t8,t8,v1
     a44:	0018c080 	sll	t8,t8,0x2
     a48:	0303c021 	addu	t8,t8,v1
     a4c:	860f00b6 	lh	t7,182(s0)
     a50:	0018c080 	sll	t8,t8,0x2
     a54:	0303c023 	subu	t8,t8,v1
     a58:	0018c040 	sll	t8,t8,0x1
     a5c:	25ce0000 	addiu	t6,t6,0
     a60:	01f8c821 	addu	t9,t7,t8
     a64:	ae0e0134 	sw	t6,308(s0)
     a68:	10000026 	b	b04 <func_80B23690+0x164>
     a6c:	a61900b6 	sh	t9,182(s0)
     a70:	1860001b 	blez	v1,ae0 <func_80B23690+0x140>
     a74:	02002025 	move	a0,s0
     a78:	00034880 	sll	t1,v1,0x2
     a7c:	01234823 	subu	t1,t1,v1
     a80:	00094880 	sll	t1,t1,0x2
     a84:	01234821 	addu	t1,t1,v1
     a88:	00094880 	sll	t1,t1,0x2
     a8c:	01234821 	addu	t1,t1,v1
     a90:	860800b6 	lh	t0,182(s0)
     a94:	00094880 	sll	t1,t1,0x2
     a98:	01234823 	subu	t1,t1,v1
     a9c:	00094840 	sll	t1,t1,0x1
     aa0:	01095021 	addu	t2,t0,t1
     aa4:	a60a00b6 	sh	t2,182(s0)
     aa8:	3c010000 	lui	at,0x0
     aac:	c42a0000 	lwc1	$f10,0(at)
     ab0:	c6080050 	lwc1	$f8,80(s0)
     ab4:	3c010000 	lui	at,0x0
     ab8:	c4320000 	lwc1	$f18,0(at)
     abc:	460a4402 	mul.s	$f16,$f8,$f10
     ac0:	02002025 	move	a0,s0
     ac4:	46128100 	add.s	$f4,$f16,$f18
     ac8:	44052000 	mfc1	a1,$f4
     acc:	0c000000 	jal	0 <func_80B22CF0>
     ad0:	00000000 	nop
     ad4:	960202d6 	lhu	v0,726(s0)
     ad8:	1000000a 	b	b04 <func_80B23690+0x164>
     adc:	00401825 	move	v1,v0
     ae0:	3c050000 	lui	a1,0x0
     ae4:	0c000000 	jal	0 <func_80B22CF0>
     ae8:	24a50000 	addiu	a1,a1,0
     aec:	3c053c23 	lui	a1,0x3c23
     af0:	34a5d70a 	ori	a1,a1,0xd70a
     af4:	0c000000 	jal	0 <func_80B22CF0>
     af8:	02002025 	move	a0,s0
     afc:	960202d6 	lhu	v0,726(s0)
     b00:	00401825 	move	v1,v0
     b04:	18600003 	blez	v1,b14 <func_80B23690+0x174>
     b08:	02002025 	move	a0,s0
     b0c:	244bffff 	addiu	t3,v0,-1
     b10:	a60b02d6 	sh	t3,726(s0)
     b14:	0c000000 	jal	0 <func_80B22CF0>
     b18:	2405317b 	li	a1,12667
     b1c:	8fbf0024 	lw	ra,36(sp)
     b20:	8fb00020 	lw	s0,32(sp)
     b24:	27bd0030 	addiu	sp,sp,48
     b28:	03e00008 	jr	ra
     b2c:	00000000 	nop

00000b30 <func_80B23820>:
     b30:	27bdffe0 	addiu	sp,sp,-32
     b34:	afbf001c 	sw	ra,28(sp)
     b38:	afb00018 	sw	s0,24(sp)
     b3c:	90ae1d6c 	lbu	t6,7532(a1)
     b40:	00808025 	move	s0,a0
     b44:	00a03825 	move	a3,a1
     b48:	51c00025 	beqzl	t6,be0 <func_80B23820+0xb0>
     b4c:	8fbf001c 	lw	ra,28(sp)
     b50:	848f02d8 	lh	t7,728(a0)
     b54:	000fc080 	sll	t8,t7,0x2
     b58:	00b8c821 	addu	t9,a1,t8
     b5c:	8f221d8c 	lw	v0,7564(t9)
     b60:	5040001f 	beqzl	v0,be0 <func_80B23820+0xb0>
     b64:	8fbf001c 	lw	ra,28(sp)
     b68:	94430000 	lhu	v1,0(v0)
     b6c:	24010003 	li	at,3
     b70:	02002025 	move	a0,s0
     b74:	10610004 	beq	v1,at,b88 <func_80B23820+0x58>
     b78:	2405390d 	li	a1,14605
     b7c:	24010005 	li	at,5
     b80:	54610017 	bnel	v1,at,be0 <func_80B23820+0xb0>
     b84:	8fbf001c 	lw	ra,28(sp)
     b88:	0c000000 	jal	0 <func_80B22CF0>
     b8c:	afa70024 	sw	a3,36(sp)
     b90:	8fa50024 	lw	a1,36(sp)
     b94:	24080022 	li	t0,34
     b98:	a60802d6 	sh	t0,726(s0)
     b9c:	02002025 	move	a0,s0
     ba0:	0c000000 	jal	0 <func_80B22CF0>
     ba4:	860602d8 	lh	a2,728(s0)
     ba8:	3c050000 	lui	a1,0x0
     bac:	24a50000 	addiu	a1,a1,0
     bb0:	0c000000 	jal	0 <func_80B22CF0>
     bb4:	02002025 	move	a0,s0
     bb8:	3c050600 	lui	a1,0x600
     bbc:	24a549c8 	addiu	a1,a1,18888
     bc0:	0c000000 	jal	0 <func_80B22CF0>
     bc4:	2604014c 	addiu	a0,s0,332
     bc8:	3c053b44 	lui	a1,0x3b44
     bcc:	ae0002e4 	sw	zero,740(s0)
     bd0:	34a59ba6 	ori	a1,a1,0x9ba6
     bd4:	0c000000 	jal	0 <func_80B22CF0>
     bd8:	02002025 	move	a0,s0
     bdc:	8fbf001c 	lw	ra,28(sp)
     be0:	8fb00018 	lw	s0,24(sp)
     be4:	27bd0020 	addiu	sp,sp,32
     be8:	03e00008 	jr	ra
     bec:	00000000 	nop

00000bf0 <func_80B238E0>:
     bf0:	27bdffd0 	addiu	sp,sp,-48
     bf4:	afbf002c 	sw	ra,44(sp)
     bf8:	afb00028 	sw	s0,40(sp)
     bfc:	afa50034 	sw	a1,52(sp)
     c00:	848e001c 	lh	t6,28(a0)
     c04:	00808025 	move	s0,a0
     c08:	3c040000 	lui	a0,0x0
     c0c:	000e7880 	sll	t7,t6,0x2
     c10:	008f2021 	addu	a0,a0,t7
     c14:	0c000000 	jal	0 <func_80B22CF0>
     c18:	8c840000 	lw	a0,0(a0)
     c1c:	8fa30034 	lw	v1,52(sp)
     c20:	44822000 	mtc1	v0,$f4
     c24:	90781d6c 	lbu	t8,7532(v1)
     c28:	46802020 	cvt.s.w	$f0,$f4
     c2c:	5300001e 	beqzl	t8,ca8 <func_80B238E0+0xb8>
     c30:	8fbf002c 	lw	ra,44(sp)
     c34:	861902d8 	lh	t9,728(s0)
     c38:	00194080 	sll	t0,t9,0x2
     c3c:	00684821 	addu	t1,v1,t0
     c40:	8d221d8c 	lw	v0,7564(t1)
     c44:	50400018 	beqzl	v0,ca8 <func_80B238E0+0xb8>
     c48:	8fbf002c 	lw	ra,44(sp)
     c4c:	944a0000 	lhu	t2,0(v0)
     c50:	24010003 	li	at,3
     c54:	2604014c 	addiu	a0,s0,332
     c58:	15410012 	bne	t2,at,ca4 <func_80B238E0+0xb4>
     c5c:	3c050000 	lui	a1,0x0
     c60:	860b001c 	lh	t3,28(s0)
     c64:	3c01c120 	lui	at,0xc120
     c68:	44813000 	mtc1	at,$f6
     c6c:	000b6080 	sll	t4,t3,0x2
     c70:	00ac2821 	addu	a1,a1,t4
     c74:	8ca50000 	lw	a1,0(a1)
     c78:	afa00014 	sw	zero,20(sp)
     c7c:	e7a00010 	swc1	$f0,16(sp)
     c80:	3c063f80 	lui	a2,0x3f80
     c84:	24070000 	li	a3,0
     c88:	0c000000 	jal	0 <func_80B22CF0>
     c8c:	e7a60018 	swc1	$f6,24(sp)
     c90:	3c050000 	lui	a1,0x0
     c94:	ae0002e4 	sw	zero,740(s0)
     c98:	24a50000 	addiu	a1,a1,0
     c9c:	0c000000 	jal	0 <func_80B22CF0>
     ca0:	02002025 	move	a0,s0
     ca4:	8fbf002c 	lw	ra,44(sp)
     ca8:	8fb00028 	lw	s0,40(sp)
     cac:	27bd0030 	addiu	sp,sp,48
     cb0:	03e00008 	jr	ra
     cb4:	00000000 	nop

00000cb8 <func_80B239A8>:
     cb8:	27bdffd0 	addiu	sp,sp,-48
     cbc:	afbf002c 	sw	ra,44(sp)
     cc0:	afb00028 	sw	s0,40(sp)
     cc4:	afa50034 	sw	a1,52(sp)
     cc8:	848e001c 	lh	t6,28(a0)
     ccc:	00808025 	move	s0,a0
     cd0:	3c040000 	lui	a0,0x0
     cd4:	000e7880 	sll	t7,t6,0x2
     cd8:	008f2021 	addu	a0,a0,t7
     cdc:	0c000000 	jal	0 <func_80B22CF0>
     ce0:	8c840000 	lw	a0,0(a0)
     ce4:	8fa30034 	lw	v1,52(sp)
     ce8:	44822000 	mtc1	v0,$f4
     cec:	90781d6c 	lbu	t8,7532(v1)
     cf0:	46802020 	cvt.s.w	$f0,$f4
     cf4:	53000024 	beqzl	t8,d88 <func_80B239A8+0xd0>
     cf8:	8fbf002c 	lw	ra,44(sp)
     cfc:	861902d8 	lh	t9,728(s0)
     d00:	00194080 	sll	t0,t9,0x2
     d04:	00684821 	addu	t1,v1,t0
     d08:	8d221d8c 	lw	v0,7564(t1)
     d0c:	5040001e 	beqzl	v0,d88 <func_80B239A8+0xd0>
     d10:	8fbf002c 	lw	ra,44(sp)
     d14:	944a0000 	lhu	t2,0(v0)
     d18:	24010002 	li	at,2
     d1c:	2604014c 	addiu	a0,s0,332
     d20:	15410018 	bne	t2,at,d84 <func_80B239A8+0xcc>
     d24:	3c050000 	lui	a1,0x0
     d28:	860b001c 	lh	t3,28(s0)
     d2c:	3c01c080 	lui	at,0xc080
     d30:	44813000 	mtc1	at,$f6
     d34:	000b6080 	sll	t4,t3,0x2
     d38:	00ac2821 	addu	a1,a1,t4
     d3c:	240d0002 	li	t5,2
     d40:	afad0014 	sw	t5,20(sp)
     d44:	8ca50000 	lw	a1,0(a1)
     d48:	e7a00010 	swc1	$f0,16(sp)
     d4c:	3c063f80 	lui	a2,0x3f80
     d50:	24070000 	li	a3,0
     d54:	0c000000 	jal	0 <func_80B22CF0>
     d58:	e7a60018 	swc1	$f6,24(sp)
     d5c:	860e001c 	lh	t6,28(s0)
     d60:	3c180000 	lui	t8,0x0
     d64:	3c050000 	lui	a1,0x0
     d68:	000e7880 	sll	t7,t6,0x2
     d6c:	030fc021 	addu	t8,t8,t7
     d70:	8f180000 	lw	t8,0(t8)
     d74:	24a50000 	addiu	a1,a1,0
     d78:	02002025 	move	a0,s0
     d7c:	0c000000 	jal	0 <func_80B22CF0>
     d80:	ae1802e4 	sw	t8,740(s0)
     d84:	8fbf002c 	lw	ra,44(sp)
     d88:	8fb00028 	lw	s0,40(sp)
     d8c:	27bd0030 	addiu	sp,sp,48
     d90:	03e00008 	jr	ra
     d94:	00000000 	nop

00000d98 <func_80B23A88>:
     d98:	27bdffd8 	addiu	sp,sp,-40
     d9c:	afbf001c 	sw	ra,28(sp)
     da0:	afb00018 	sw	s0,24(sp)
     da4:	90ae1d6c 	lbu	t6,7532(a1)
     da8:	3c070001 	lui	a3,0x1
     dac:	00e53821 	addu	a3,a3,a1
     db0:	00808025 	move	s0,a0
     db4:	11c00040 	beqz	t6,eb8 <func_80B23A88+0x120>
     db8:	8ce71de4 	lw	a3,7652(a3)
     dbc:	848602d8 	lh	a2,728(a0)
     dc0:	00067880 	sll	t7,a2,0x2
     dc4:	00afc021 	addu	t8,a1,t7
     dc8:	8f031d8c 	lw	v1,7564(t8)
     dcc:	5060003b 	beqzl	v1,ebc <func_80B23A88+0x124>
     dd0:	8fbf001c 	lw	ra,28(sp)
     dd4:	94620000 	lhu	v0,0(v1)
     dd8:	24010001 	li	at,1
     ddc:	1041000a 	beq	v0,at,e08 <func_80B23A88+0x70>
     de0:	24010003 	li	at,3
     de4:	10410010 	beq	v0,at,e28 <func_80B23A88+0x90>
     de8:	24010004 	li	at,4
     dec:	1041001a 	beq	v0,at,e58 <func_80B23A88+0xc0>
     df0:	02002025 	move	a0,s0
     df4:	24010007 	li	at,7
     df8:	1041001c 	beq	v0,at,e6c <func_80B23A88+0xd4>
     dfc:	02002025 	move	a0,s0
     e00:	1000002e 	b	ebc <func_80B23A88+0x124>
     e04:	8fbf001c 	lw	ra,28(sp)
     e08:	0c000000 	jal	0 <func_80B22CF0>
     e0c:	02002025 	move	a0,s0
     e10:	3c050000 	lui	a1,0x0
     e14:	24a50000 	addiu	a1,a1,0
     e18:	0c000000 	jal	0 <func_80B22CF0>
     e1c:	02002025 	move	a0,s0
     e20:	10000026 	b	ebc <func_80B23A88+0x124>
     e24:	8fbf001c 	lw	ra,28(sp)
     e28:	0c000000 	jal	0 <func_80B22CF0>
     e2c:	02002025 	move	a0,s0
     e30:	3c050000 	lui	a1,0x0
     e34:	24a50000 	addiu	a1,a1,0
     e38:	0c000000 	jal	0 <func_80B22CF0>
     e3c:	02002025 	move	a0,s0
     e40:	3c050600 	lui	a1,0x600
     e44:	24a549c8 	addiu	a1,a1,18888
     e48:	0c000000 	jal	0 <func_80B22CF0>
     e4c:	2604014c 	addiu	a0,s0,332
     e50:	10000019 	b	eb8 <func_80B23A88+0x120>
     e54:	ae0002e4 	sw	zero,740(s0)
     e58:	3c050000 	lui	a1,0x0
     e5c:	0c000000 	jal	0 <func_80B22CF0>
     e60:	24a50000 	addiu	a1,a1,0
     e64:	10000014 	b	eb8 <func_80B23A88+0x120>
     e68:	ae000134 	sw	zero,308(s0)
     e6c:	3c050000 	lui	a1,0x0
     e70:	24a50000 	addiu	a1,a1,0
     e74:	0c000000 	jal	0 <func_80B22CF0>
     e78:	afa70024 	sw	a3,36(sp)
     e7c:	3c050600 	lui	a1,0x600
     e80:	24a549c8 	addiu	a1,a1,18888
     e84:	0c000000 	jal	0 <func_80B22CF0>
     e88:	2604014c 	addiu	a0,s0,332
     e8c:	8619001c 	lh	t9,28(s0)
     e90:	8fa70024 	lw	a3,36(sp)
     e94:	ae0002e4 	sw	zero,740(s0)
     e98:	13200006 	beqz	t9,eb4 <func_80B23A88+0x11c>
     e9c:	00076280 	sll	t4,a3,0xa
     ea0:	00074a80 	sll	t1,a3,0xa
     ea4:	34018000 	li	at,0x8000
     ea8:	01215021 	addu	t2,t1,at
     eac:	10000002 	b	eb8 <func_80B23A88+0x120>
     eb0:	a60a02d6 	sh	t2,726(s0)
     eb4:	a60c02d6 	sh	t4,726(s0)
     eb8:	8fbf001c 	lw	ra,28(sp)
     ebc:	8fb00018 	lw	s0,24(sp)
     ec0:	27bd0028 	addiu	sp,sp,40
     ec4:	03e00008 	jr	ra
     ec8:	00000000 	nop

00000ecc <EnTr_Update>:
     ecc:	44800000 	mtc1	zero,$f0
     ed0:	27bdffb8 	addiu	sp,sp,-72
     ed4:	afb00028 	sw	s0,40(sp)
     ed8:	00808025 	move	s0,a0
     edc:	afbf002c 	sw	ra,44(sp)
     ee0:	afa5004c 	sw	a1,76(sp)
     ee4:	00a02025 	move	a0,a1
     ee8:	240e0005 	li	t6,5
     eec:	44060000 	mfc1	a2,$f0
     ef0:	44070000 	mfc1	a3,$f0
     ef4:	afae0014 	sw	t6,20(sp)
     ef8:	02002825 	move	a1,s0
     efc:	0c000000 	jal	0 <func_80B22CF0>
     f00:	e7a00010 	swc1	$f0,16(sp)
     f04:	8e1902dc 	lw	t9,732(s0)
     f08:	02002025 	move	a0,s0
     f0c:	8fa5004c 	lw	a1,76(sp)
     f10:	0320f809 	jalr	t9
     f14:	00000000 	nop
     f18:	2604014c 	addiu	a0,s0,332
     f1c:	0c000000 	jal	0 <func_80B22CF0>
     f20:	afa40034 	sw	a0,52(sp)
     f24:	5040003b 	beqzl	v0,1014 <EnTr_Update+0x148>
     f28:	02002025 	move	a0,s0
     f2c:	8e0502e4 	lw	a1,740(s0)
     f30:	3c0f0600 	lui	t7,0x600
     f34:	25ef35cc 	addiu	t7,t7,13772
     f38:	50a00033 	beqzl	a1,1008 <EnTr_Update+0x13c>
     f3c:	44805000 	mtc1	zero,$f10
     f40:	11e50004 	beq	t7,a1,f54 <EnTr_Update+0x88>
     f44:	3c180600 	lui	t8,0x600
     f48:	271813cc 	addiu	t8,t8,5068
     f4c:	17050011 	bne	t8,a1,f94 <EnTr_Update+0xc8>
     f50:	3c090600 	lui	t1,0x600
     f54:	8608001c 	lh	t0,28(s0)
     f58:	240539b1 	li	a1,14769
     f5c:	02002025 	move	a0,s0
     f60:	11000005 	beqz	t0,f78 <EnTr_Update+0xac>
     f64:	00000000 	nop
     f68:	0c000000 	jal	0 <func_80B22CF0>
     f6c:	02002025 	move	a0,s0
     f70:	10000004 	b	f84 <EnTr_Update+0xb8>
     f74:	8fa40034 	lw	a0,52(sp)
     f78:	0c000000 	jal	0 <func_80B22CF0>
     f7c:	240539b0 	li	a1,14768
     f80:	8fa40034 	lw	a0,52(sp)
     f84:	0c000000 	jal	0 <func_80B22CF0>
     f88:	8e0502e4 	lw	a1,740(s0)
     f8c:	1000001b 	b	ffc <EnTr_Update+0x130>
     f90:	00000000 	nop
     f94:	252949c8 	addiu	t1,t1,18888
     f98:	15250016 	bne	t1,a1,ff4 <EnTr_Update+0x128>
     f9c:	02002025 	move	a0,s0
     fa0:	3c050000 	lui	a1,0x0
     fa4:	0c000000 	jal	0 <func_80B22CF0>
     fa8:	24a50000 	addiu	a1,a1,0
     fac:	3c040600 	lui	a0,0x600
     fb0:	0c000000 	jal	0 <func_80B22CF0>
     fb4:	248449c8 	addiu	a0,a0,18888
     fb8:	44822000 	mtc1	v0,$f4
     fbc:	3c01c0a0 	lui	at,0xc0a0
     fc0:	44814000 	mtc1	at,$f8
     fc4:	468021a0 	cvt.s.w	$f6,$f4
     fc8:	3c050600 	lui	a1,0x600
     fcc:	24a549c8 	addiu	a1,a1,18888
     fd0:	8fa40034 	lw	a0,52(sp)
     fd4:	3c063f80 	lui	a2,0x3f80
     fd8:	24070000 	li	a3,0
     fdc:	e7a60010 	swc1	$f6,16(sp)
     fe0:	afa00014 	sw	zero,20(sp)
     fe4:	0c000000 	jal	0 <func_80B22CF0>
     fe8:	e7a80018 	swc1	$f8,24(sp)
     fec:	10000003 	b	ffc <EnTr_Update+0x130>
     ff0:	00000000 	nop
     ff4:	0c000000 	jal	0 <func_80B22CF0>
     ff8:	8fa40034 	lw	a0,52(sp)
     ffc:	10000004 	b	1010 <EnTr_Update+0x144>
    1000:	ae0002e4 	sw	zero,740(s0)
    1004:	44805000 	mtc1	zero,$f10
    1008:	00000000 	nop
    100c:	e60a0164 	swc1	$f10,356(s0)
    1010:	02002025 	move	a0,s0
    1014:	0c000000 	jal	0 <func_80B22CF0>
    1018:	24050000 	li	a1,0
    101c:	860302e2 	lh	v1,738(s0)
    1020:	2404003c 	li	a0,60
    1024:	14600003 	bnez	v1,1034 <EnTr_Update+0x168>
    1028:	246affff 	addiu	t2,v1,-1
    102c:	10000004 	b	1040 <EnTr_Update+0x174>
    1030:	00001025 	move	v0,zero
    1034:	a60a02e2 	sh	t2,738(s0)
    1038:	860302e2 	lh	v1,738(s0)
    103c:	00601025 	move	v0,v1
    1040:	54400006 	bnezl	v0,105c <EnTr_Update+0x190>
    1044:	a60302e0 	sh	v1,736(s0)
    1048:	0c000000 	jal	0 <func_80B22CF0>
    104c:	2405003c 	li	a1,60
    1050:	a60202e2 	sh	v0,738(s0)
    1054:	860302e2 	lh	v1,738(s0)
    1058:	a60302e0 	sh	v1,736(s0)
    105c:	860b02e0 	lh	t3,736(s0)
    1060:	29610003 	slti	at,t3,3
    1064:	54200003 	bnezl	at,1074 <EnTr_Update+0x1a8>
    1068:	8fbf002c 	lw	ra,44(sp)
    106c:	a60002e0 	sh	zero,736(s0)
    1070:	8fbf002c 	lw	ra,44(sp)
    1074:	8fb00028 	lw	s0,40(sp)
    1078:	27bd0048 	addiu	sp,sp,72
    107c:	03e00008 	jr	ra
    1080:	00000000 	nop

00001084 <func_80B23D74>:
    1084:	27bdffc0 	addiu	sp,sp,-64
    1088:	3c0e0000 	lui	t6,0x0
    108c:	afbf0014 	sw	ra,20(sp)
    1090:	afa40040 	sw	a0,64(sp)
    1094:	afa60048 	sw	a2,72(sp)
    1098:	afa7004c 	sw	a3,76(sp)
    109c:	25ce0000 	addiu	t6,t6,0
    10a0:	8dd80000 	lw	t8,0(t6)
    10a4:	27a60034 	addiu	a2,sp,52
    10a8:	3c190000 	lui	t9,0x0
    10ac:	acd80000 	sw	t8,0(a2)
    10b0:	8dcf0004 	lw	t7,4(t6)
    10b4:	27390000 	addiu	t9,t9,0
    10b8:	27a70028 	addiu	a3,sp,40
    10bc:	accf0004 	sw	t7,4(a2)
    10c0:	8dd80008 	lw	t8,8(t6)
    10c4:	24010013 	li	at,19
    10c8:	acd80008 	sw	t8,8(a2)
    10cc:	8f290000 	lw	t1,0(t9)
    10d0:	ace90000 	sw	t1,0(a3)
    10d4:	8f280004 	lw	t0,4(t9)
    10d8:	ace80004 	sw	t0,4(a3)
    10dc:	8f290008 	lw	t1,8(t9)
    10e0:	ace90008 	sw	t1,8(a3)
    10e4:	8faa0054 	lw	t2,84(sp)
    10e8:	8d42011c 	lw	v0,284(t2)
    10ec:	5040002d 	beqzl	v0,11a4 <func_80B23D74+0x120>
    10f0:	8fbf0014 	lw	ra,20(sp)
    10f4:	14a1002a 	bne	a1,at,11a0 <func_80B23D74+0x11c>
    10f8:	00c02025 	move	a0,a2
    10fc:	00e02825 	move	a1,a3
    1100:	0c000000 	jal	0 <func_80B22CF0>
    1104:	afa20020 	sw	v0,32(sp)
    1108:	8fa20040 	lw	v0,64(sp)
    110c:	844b07a0 	lh	t3,1952(v0)
    1110:	000b6080 	sll	t4,t3,0x2
    1114:	004c6821 	addu	t5,v0,t4
    1118:	0c000000 	jal	0 <func_80B22CF0>
    111c:	8da40790 	lw	a0,1936(t5)
    1120:	00022400 	sll	a0,v0,0x10
    1124:	0c000000 	jal	0 <func_80B22CF0>
    1128:	00042403 	sra	a0,a0,0x10
    112c:	3c014120 	lui	at,0x4120
    1130:	44813000 	mtc1	at,$f6
    1134:	c7a40028 	lwc1	$f4,40(sp)
    1138:	8fa20040 	lw	v0,64(sp)
    113c:	46003202 	mul.s	$f8,$f6,$f0
    1140:	46082281 	sub.s	$f10,$f4,$f8
    1144:	e7aa0028 	swc1	$f10,40(sp)
    1148:	844e07a0 	lh	t6,1952(v0)
    114c:	000e7880 	sll	t7,t6,0x2
    1150:	004fc021 	addu	t8,v0,t7
    1154:	0c000000 	jal	0 <func_80B22CF0>
    1158:	8f040790 	lw	a0,1936(t8)
    115c:	00022400 	sll	a0,v0,0x10
    1160:	0c000000 	jal	0 <func_80B22CF0>
    1164:	00042403 	sra	a0,a0,0x10
    1168:	3c014120 	lui	at,0x4120
    116c:	44819000 	mtc1	at,$f18
    1170:	c7b00030 	lwc1	$f16,48(sp)
    1174:	27a80028 	addiu	t0,sp,40
    1178:	46009182 	mul.s	$f6,$f18,$f0
    117c:	8fb90020 	lw	t9,32(sp)
    1180:	46068101 	sub.s	$f4,$f16,$f6
    1184:	e7a40030 	swc1	$f4,48(sp)
    1188:	8d0a0000 	lw	t2,0(t0)
    118c:	af2a0024 	sw	t2,36(t9)
    1190:	8d090004 	lw	t1,4(t0)
    1194:	af290028 	sw	t1,40(t9)
    1198:	8d0a0008 	lw	t2,8(t0)
    119c:	af2a002c 	sw	t2,44(t9)
    11a0:	8fbf0014 	lw	ra,20(sp)
    11a4:	27bd0040 	addiu	sp,sp,64
    11a8:	00001025 	move	v0,zero
    11ac:	03e00008 	jr	ra
    11b0:	00000000 	nop

000011b4 <EnTr_Draw>:
    11b4:	27bdffa8 	addiu	sp,sp,-88
    11b8:	afbf002c 	sw	ra,44(sp)
    11bc:	afb10028 	sw	s1,40(sp)
    11c0:	afb00024 	sw	s0,36(sp)
    11c4:	90ae1d6c 	lbu	t6,7532(a1)
    11c8:	00808025 	move	s0,a0
    11cc:	00a08825 	move	s1,a1
    11d0:	11c0000b 	beqz	t6,1200 <EnTr_Draw+0x4c>
    11d4:	00000000 	nop
    11d8:	848f02d8 	lh	t7,728(a0)
    11dc:	3c090000 	lui	t1,0x0
    11e0:	3c060000 	lui	a2,0x0
    11e4:	000fc080 	sll	t8,t7,0x2
    11e8:	00b8c821 	addu	t9,a1,t8
    11ec:	8f281d8c 	lw	t0,7564(t9)
    11f0:	25290000 	addiu	t1,t1,0
    11f4:	24c60000 	addiu	a2,a2,0
    11f8:	15000003 	bnez	t0,1208 <EnTr_Draw+0x54>
    11fc:	27a4003c 	addiu	a0,sp,60
    1200:	10000035 	b	12d8 <EnTr_Draw+0x124>
    1204:	ae0000c0 	sw	zero,192(s0)
    1208:	ae0900c0 	sw	t1,192(s0)
    120c:	8e250000 	lw	a1,0(s1)
    1210:	24070348 	li	a3,840
    1214:	0c000000 	jal	0 <func_80B22CF0>
    1218:	afa5004c 	sw	a1,76(sp)
    121c:	0c000000 	jal	0 <func_80B22CF0>
    1220:	8e240000 	lw	a0,0(s1)
    1224:	8fa5004c 	lw	a1,76(sp)
    1228:	3c0bdb06 	lui	t3,0xdb06
    122c:	356b0020 	ori	t3,t3,0x20
    1230:	8ca302c0 	lw	v1,704(a1)
    1234:	3c040000 	lui	a0,0x0
    1238:	3c080000 	lui	t0,0x0
    123c:	246a0008 	addiu	t2,v1,8
    1240:	acaa02c0 	sw	t2,704(a1)
    1244:	ac6b0000 	sw	t3,0(v1)
    1248:	860c02e0 	lh	t4,736(s0)
    124c:	3c0100ff 	lui	at,0xff
    1250:	3421ffff 	ori	at,at,0xffff
    1254:	000c6880 	sll	t5,t4,0x2
    1258:	008d2021 	addu	a0,a0,t5
    125c:	8c840000 	lw	a0,0(a0)
    1260:	02202825 	move	a1,s1
    1264:	00003025 	move	a2,zero
    1268:	00047900 	sll	t7,a0,0x4
    126c:	000fc702 	srl	t8,t7,0x1c
    1270:	0018c880 	sll	t9,t8,0x2
    1274:	01194021 	addu	t0,t0,t9
    1278:	8d080000 	lw	t0,0(t0)
    127c:	00817024 	and	t6,a0,at
    1280:	3c018000 	lui	at,0x8000
    1284:	01c84821 	addu	t1,t6,t0
    1288:	01215021 	addu	t2,t1,at
    128c:	02002025 	move	a0,s0
    1290:	0c000000 	jal	0 <func_80B22CF0>
    1294:	ac6a0004 	sw	t2,4(v1)
    1298:	8e050150 	lw	a1,336(s0)
    129c:	8e06016c 	lw	a2,364(s0)
    12a0:	9207014e 	lbu	a3,334(s0)
    12a4:	3c0b0000 	lui	t3,0x0
    12a8:	256b0000 	addiu	t3,t3,0
    12ac:	afab0010 	sw	t3,16(sp)
    12b0:	afb00018 	sw	s0,24(sp)
    12b4:	afa00014 	sw	zero,20(sp)
    12b8:	0c000000 	jal	0 <func_80B22CF0>
    12bc:	02202025 	move	a0,s1
    12c0:	3c060000 	lui	a2,0x0
    12c4:	24c60000 	addiu	a2,a2,0
    12c8:	27a4003c 	addiu	a0,sp,60
    12cc:	8e250000 	lw	a1,0(s1)
    12d0:	0c000000 	jal	0 <func_80B22CF0>
    12d4:	24070356 	li	a3,854
    12d8:	8fbf002c 	lw	ra,44(sp)
    12dc:	8fb00024 	lw	s0,36(sp)
    12e0:	8fb10028 	lw	s1,40(sp)
    12e4:	03e00008 	jr	ra
    12e8:	27bd0058 	addiu	sp,sp,88

000012ec <func_80B23FDC>:
    12ec:	27bdffe8 	addiu	sp,sp,-24
    12f0:	00057880 	sll	t7,a1,0x2
    12f4:	afbf0014 	sw	ra,20(sp)
    12f8:	afa5001c 	sw	a1,28(sp)
    12fc:	008fc021 	addu	t8,a0,t7
    1300:	8f021d8c 	lw	v0,7564(t8)
    1304:	00803825 	move	a3,a0
    1308:	94e61d74 	lhu	a2,7540(a3)
    130c:	94440004 	lhu	a0,4(v0)
    1310:	0c000000 	jal	0 <func_80B22CF0>
    1314:	94450002 	lhu	a1,2(v0)
    1318:	3c013f80 	lui	at,0x3f80
    131c:	44816000 	mtc1	at,$f12
    1320:	46000086 	mov.s	$f2,$f0
    1324:	8fbf0014 	lw	ra,20(sp)
    1328:	4600603c 	c.lt.s	$f12,$f0
    132c:	00000000 	nop
    1330:	45020003 	bc1fl	1340 <func_80B23FDC+0x54>
    1334:	46001006 	mov.s	$f0,$f2
    1338:	46006086 	mov.s	$f2,$f12
    133c:	46001006 	mov.s	$f0,$f2
    1340:	03e00008 	jr	ra
    1344:	27bd0018 	addiu	sp,sp,24

00001348 <func_80B24038>:
    1348:	27bdffc0 	addiu	sp,sp,-64
    134c:	00067080 	sll	t6,a2,0x2
    1350:	afbf0024 	sw	ra,36(sp)
    1354:	afb00020 	sw	s0,32(sp)
    1358:	f7b40018 	sdc1	$f20,24(sp)
    135c:	00ae7821 	addu	t7,a1,t6
    1360:	8de21d8c 	lw	v0,7564(t7)
    1364:	00808025 	move	s0,a0
    1368:	00a02025 	move	a0,a1
    136c:	8c58000c 	lw	t8,12(v0)
    1370:	8c590010 	lw	t9,16(v0)
    1374:	8c480014 	lw	t0,20(v0)
    1378:	44982000 	mtc1	t8,$f4
    137c:	8c490018 	lw	t1,24(v0)
    1380:	8c4a001c 	lw	t2,28(v0)
    1384:	468020a0 	cvt.s.w	$f2,$f4
    1388:	44993000 	mtc1	t9,$f6
    138c:	44884000 	mtc1	t0,$f8
    1390:	44895000 	mtc1	t1,$f10
    1394:	448a2000 	mtc1	t2,$f4
    1398:	46803320 	cvt.s.w	$f12,$f6
    139c:	8c4b0020 	lw	t3,32(v0)
    13a0:	e7a20034 	swc1	$f2,52(sp)
    13a4:	00c02825 	move	a1,a2
    13a8:	448b3000 	mtc1	t3,$f6
    13ac:	468043a0 	cvt.s.w	$f14,$f8
    13b0:	e7ac0038 	swc1	$f12,56(sp)
    13b4:	46805420 	cvt.s.w	$f16,$f10
    13b8:	e7ae003c 	swc1	$f14,60(sp)
    13bc:	468024a0 	cvt.s.w	$f18,$f4
    13c0:	e7b00028 	swc1	$f16,40(sp)
    13c4:	46803520 	cvt.s.w	$f20,$f6
    13c8:	0c000000 	jal	0 <func_80B22CF0>
    13cc:	e7b2002c 	swc1	$f18,44(sp)
    13d0:	c7a20034 	lwc1	$f2,52(sp)
    13d4:	c7b00028 	lwc1	$f16,40(sp)
    13d8:	c7ac0038 	lwc1	$f12,56(sp)
    13dc:	c7b2002c 	lwc1	$f18,44(sp)
    13e0:	46028201 	sub.s	$f8,$f16,$f2
    13e4:	c7ae003c 	lwc1	$f14,60(sp)
    13e8:	3c010000 	lui	at,0x0
    13ec:	460c9101 	sub.s	$f4,$f18,$f12
    13f0:	46004282 	mul.s	$f10,$f8,$f0
    13f4:	2604005c 	addiu	a0,s0,92
    13f8:	460ea201 	sub.s	$f8,$f20,$f14
    13fc:	46002182 	mul.s	$f6,$f4,$f0
    1400:	c6040024 	lwc1	$f4,36(s0)
    1404:	3c063f80 	lui	a2,0x3f80
    1408:	46025080 	add.s	$f2,$f10,$f2
    140c:	46004282 	mul.s	$f10,$f8,$f0
    1410:	c4280000 	lwc1	$f8,0(at)
    1414:	460c3300 	add.s	$f12,$f6,$f12
    1418:	3c010000 	lui	at,0x0
    141c:	46041181 	sub.s	$f6,$f2,$f4
    1420:	460e5380 	add.s	$f14,$f10,$f14
    1424:	c60a0028 	lwc1	$f10,40(s0)
    1428:	46083402 	mul.s	$f16,$f6,$f8
    142c:	c4260000 	lwc1	$f6,0(at)
    1430:	460a6101 	sub.s	$f4,$f12,$f10
    1434:	c608002c 	lwc1	$f8,44(s0)
    1438:	3c010000 	lui	at,0x0
    143c:	46062482 	mul.s	$f18,$f4,$f6
    1440:	46087281 	sub.s	$f10,$f14,$f8
    1444:	c4240000 	lwc1	$f4,0(at)
    1448:	44807000 	mtc1	zero,$f14
    144c:	3c0141a0 	lui	at,0x41a0
    1450:	46045502 	mul.s	$f20,$f10,$f4
    1454:	00000000 	nop
    1458:	46108182 	mul.s	$f6,$f16,$f16
    145c:	00000000 	nop
    1460:	46129202 	mul.s	$f8,$f18,$f18
    1464:	46083280 	add.s	$f10,$f6,$f8
    1468:	4614a102 	mul.s	$f4,$f20,$f20
    146c:	46045000 	add.s	$f0,$f10,$f4
    1470:	46000004 	sqrt.s	$f0,$f0
    1474:	460e003c 	c.lt.s	$f0,$f14
    1478:	00000000 	nop
    147c:	45000003 	bc1f	148c <func_80B24038+0x144>
    1480:	00000000 	nop
    1484:	1000000b 	b	14b4 <func_80B24038+0x16c>
    1488:	46007306 	mov.s	$f12,$f14
    148c:	44816000 	mtc1	at,$f12
    1490:	00000000 	nop
    1494:	4600603c 	c.lt.s	$f12,$f0
    1498:	00000000 	nop
    149c:	45020004 	bc1fl	14b0 <func_80B24038+0x168>
    14a0:	46000086 	mov.s	$f2,$f0
    14a4:	10000002 	b	14b0 <func_80B24038+0x168>
    14a8:	46006086 	mov.s	$f2,$f12
    14ac:	46000086 	mov.s	$f2,$f0
    14b0:	46001306 	mov.s	$f12,$f2
    14b4:	460c0032 	c.eq.s	$f0,$f12
    14b8:	00000000 	nop
    14bc:	4503000d 	bc1tl	14f4 <func_80B24038+0x1ac>
    14c0:	44058000 	mfc1	a1,$f16
    14c4:	460e0032 	c.eq.s	$f0,$f14
    14c8:	00000000 	nop
    14cc:	45030009 	bc1tl	14f4 <func_80B24038+0x1ac>
    14d0:	44058000 	mfc1	a1,$f16
    14d4:	46006083 	div.s	$f2,$f12,$f0
    14d8:	46028402 	mul.s	$f16,$f16,$f2
    14dc:	00000000 	nop
    14e0:	46029482 	mul.s	$f18,$f18,$f2
    14e4:	00000000 	nop
    14e8:	4602a502 	mul.s	$f20,$f20,$f2
    14ec:	00000000 	nop
    14f0:	44058000 	mfc1	a1,$f16
    14f4:	0c000000 	jal	0 <func_80B22CF0>
    14f8:	e7b2002c 	swc1	$f18,44(sp)
    14fc:	c7b2002c 	lwc1	$f18,44(sp)
    1500:	26040060 	addiu	a0,s0,96
    1504:	3c063f80 	lui	a2,0x3f80
    1508:	44059000 	mfc1	a1,$f18
    150c:	0c000000 	jal	0 <func_80B22CF0>
    1510:	00000000 	nop
    1514:	4405a000 	mfc1	a1,$f20
    1518:	26040064 	addiu	a0,s0,100
    151c:	0c000000 	jal	0 <func_80B22CF0>
    1520:	3c063f80 	lui	a2,0x3f80
    1524:	0c000000 	jal	0 <func_80B22CF0>
    1528:	02002025 	move	a0,s0
    152c:	8fbf0024 	lw	ra,36(sp)
    1530:	d7b40018 	ldc1	$f20,24(sp)
    1534:	8fb00020 	lw	s0,32(sp)
    1538:	03e00008 	jr	ra
    153c:	27bd0040 	addiu	sp,sp,64

00001540 <func_80B24230>:
    1540:	00067080 	sll	t6,a2,0x2
    1544:	00ae7821 	addu	t7,a1,t6
    1548:	8df81d8c 	lw	t8,7564(t7)
    154c:	84870032 	lh	a3,50(a0)
    1550:	34018000 	li	at,0x8000
    1554:	87020008 	lh	v0,8(t8)
    1558:	3c190001 	lui	t9,0x1
    155c:	00e21823 	subu	v1,a3,v0
    1560:	04610004 	bgez	v1,1574 <func_80B24230+0x34>
    1564:	2402ffff 	li	v0,-1
    1568:	00031823 	negu	v1,v1
    156c:	10000001 	b	1574 <func_80B24230+0x34>
    1570:	24020001 	li	v0,1
    1574:	0061082a 	slt	at,v1,at
    1578:	54200004 	bnezl	at,158c <func_80B24230+0x4c>
    157c:	44832000 	mtc1	v1,$f4
    1580:	00021023 	negu	v0,v0
    1584:	03231823 	subu	v1,t9,v1
    1588:	44832000 	mtc1	v1,$f4
    158c:	3c010000 	lui	at,0x0
    1590:	c4280000 	lwc1	$f8,0(at)
    1594:	468021a0 	cvt.s.w	$f6,$f4
    1598:	46083282 	mul.s	$f10,$f6,$f8
    159c:	4600540d 	trunc.w.s	$f16,$f10
    15a0:	44038000 	mfc1	v1,$f16
    15a4:	00000000 	nop
    15a8:	00620019 	multu	v1,v0
    15ac:	00004812 	mflo	t1
    15b0:	00e95021 	addu	t2,a3,t1
    15b4:	a48a0032 	sh	t2,50(a0)
    15b8:	848b0032 	lh	t3,50(a0)
    15bc:	03e00008 	jr	ra
    15c0:	a48b00b6 	sh	t3,182(a0)

000015c4 <func_80B242B4>:
    15c4:	00067080 	sll	t6,a2,0x2
    15c8:	00ae1021 	addu	v0,a1,t6
    15cc:	8c4f1d8c 	lw	t7,7564(v0)
    15d0:	27bdffe8 	addiu	sp,sp,-24
    15d4:	27ab000c 	addiu	t3,sp,12
    15d8:	8df8000c 	lw	t8,12(t7)
    15dc:	44982000 	mtc1	t8,$f4
    15e0:	00000000 	nop
    15e4:	468021a0 	cvt.s.w	$f6,$f4
    15e8:	e7a6000c 	swc1	$f6,12(sp)
    15ec:	8c591d8c 	lw	t9,7564(v0)
    15f0:	8f280010 	lw	t0,16(t9)
    15f4:	44884000 	mtc1	t0,$f8
    15f8:	00000000 	nop
    15fc:	468042a0 	cvt.s.w	$f10,$f8
    1600:	e7aa0010 	swc1	$f10,16(sp)
    1604:	8c491d8c 	lw	t1,7564(v0)
    1608:	8d2a0014 	lw	t2,20(t1)
    160c:	448a8000 	mtc1	t2,$f16
    1610:	00000000 	nop
    1614:	468084a0 	cvt.s.w	$f18,$f16
    1618:	e7b20014 	swc1	$f18,20(sp)
    161c:	8d6d0000 	lw	t5,0(t3)
    1620:	ac8d0024 	sw	t5,36(a0)
    1624:	8d6c0004 	lw	t4,4(t3)
    1628:	ac8c0028 	sw	t4,40(a0)
    162c:	8d6d0008 	lw	t5,8(t3)
    1630:	ac8d002c 	sw	t5,44(a0)
    1634:	8c4e1d8c 	lw	t6,7564(v0)
    1638:	85c30008 	lh	v1,8(t6)
    163c:	27bd0018 	addiu	sp,sp,24
    1640:	a48300b6 	sh	v1,182(a0)
    1644:	03e00008 	jr	ra
    1648:	a4830032 	sh	v1,50(a0)
    164c:	00000000 	nop
