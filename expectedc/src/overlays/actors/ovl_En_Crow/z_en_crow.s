
build/src/overlays/actors/ovl_En_Crow/z_en_crow.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnCrow_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnCrow_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	3c060600 	lui	a2,0x600
      24:	3c070600 	lui	a3,0x600
      28:	260e01ca 	addiu	t6,s0,458
      2c:	260f0200 	addiu	t7,s0,512
      30:	24180009 	li	t8,9
      34:	afb80018 	sw	t8,24(sp)
      38:	afaf0014 	sw	t7,20(sp)
      3c:	afae0010 	sw	t6,16(sp)
      40:	24e700f0 	addiu	a3,a3,240
      44:	24c610c0 	addiu	a2,a2,4288
      48:	8fa4003c 	lw	a0,60(sp)
      4c:	0c000000 	jal	0 <EnCrow_Init>
      50:	2605017c 	addiu	a1,s0,380
      54:	26050238 	addiu	a1,s0,568
      58:	afa50030 	sw	a1,48(sp)
      5c:	0c000000 	jal	0 <EnCrow_Init>
      60:	8fa4003c 	lw	a0,60(sp)
      64:	3c070000 	lui	a3,0x0
      68:	26190258 	addiu	t9,s0,600
      6c:	8fa50030 	lw	a1,48(sp)
      70:	afb90010 	sw	t9,16(sp)
      74:	24e70000 	addiu	a3,a3,0
      78:	8fa4003c 	lw	a0,60(sp)
      7c:	0c000000 	jal	0 <EnCrow_Init>
      80:	02003025 	move	a2,s0
      84:	3c080000 	lui	t0,0x0
      88:	8d080000 	lw	t0,0(t0)
      8c:	8e0a0254 	lw	t2,596(s0)
      90:	3c050000 	lui	a1,0x0
      94:	85090020 	lh	t1,32(t0)
      98:	3c060000 	lui	a2,0x0
      9c:	24c60000 	addiu	a2,a2,0
      a0:	24a50000 	addiu	a1,a1,0
      a4:	26040098 	addiu	a0,s0,152
      a8:	0c000000 	jal	0 <EnCrow_Init>
      ac:	a5490036 	sh	t1,54(t2)
      b0:	3c060000 	lui	a2,0x0
      b4:	24c60000 	addiu	a2,a2,0
      b8:	260400b4 	addiu	a0,s0,180
      bc:	3c0544fa 	lui	a1,0x44fa
      c0:	0c000000 	jal	0 <EnCrow_Init>
      c4:	3c0741a0 	lui	a3,0x41a0
      c8:	3c010000 	lui	at,0x0
      cc:	ac200000 	sw	zero,0(at)
      d0:	0c000000 	jal	0 <EnCrow_Init>
      d4:	02002025 	move	a0,s0
      d8:	8fbf002c 	lw	ra,44(sp)
      dc:	8fb00028 	lw	s0,40(sp)
      e0:	27bd0038 	addiu	sp,sp,56
      e4:	03e00008 	jr	ra
      e8:	00000000 	nop

000000ec <EnCrow_Destroy>:
      ec:	27bdffe8 	addiu	sp,sp,-24
      f0:	00803025 	move	a2,a0
      f4:	afbf0014 	sw	ra,20(sp)
      f8:	00a02025 	move	a0,a1
      fc:	0c000000 	jal	0 <EnCrow_Init>
     100:	24c50238 	addiu	a1,a2,568
     104:	8fbf0014 	lw	ra,20(sp)
     108:	27bd0018 	addiu	sp,sp,24
     10c:	03e00008 	jr	ra
     110:	00000000 	nop

00000114 <func_809E0354>:
     114:	908f0249 	lbu	t7,585(a0)
     118:	3c013f80 	lui	at,0x3f80
     11c:	44812000 	mtc1	at,$f4
     120:	3c190000 	lui	t9,0x0
     124:	240e0064 	li	t6,100
     128:	27390000 	addiu	t9,t9,0
     12c:	35f80001 	ori	t8,t7,0x1
     130:	a48e01c4 	sh	t6,452(a0)
     134:	a0980249 	sb	t8,585(a0)
     138:	ac9901c0 	sw	t9,448(a0)
     13c:	03e00008 	jr	ra
     140:	e4840198 	swc1	$f4,408(a0)

00000144 <func_809E0384>:
     144:	3c014080 	lui	at,0x4080
     148:	44812000 	mtc1	at,$f4
     14c:	3c014000 	lui	at,0x4000
     150:	44813000 	mtc1	at,$f6
     154:	3c0f0000 	lui	t7,0x0
     158:	240e012c 	li	t6,300
     15c:	25ef0000 	addiu	t7,t7,0
     160:	a48e01c4 	sh	t6,452(a0)
     164:	ac8f01c0 	sw	t7,448(a0)
     168:	e4840068 	swc1	$f4,104(a0)
     16c:	03e00008 	jr	ra
     170:	e4860198 	swc1	$f6,408(a0)

00000174 <func_809E03B4>:
     174:	27bdff68 	addiu	sp,sp,-152
     178:	afb10060 	sw	s1,96(sp)
     17c:	00808825 	move	s1,a0
     180:	afbf0074 	sw	ra,116(sp)
     184:	afb50070 	sw	s5,112(sp)
     188:	afb4006c 	sw	s4,108(sp)
     18c:	afb30068 	sw	s3,104(sp)
     190:	afb20064 	sw	s2,100(sp)
     194:	afb0005c 	sw	s0,92(sp)
     198:	f7bc0050 	sdc1	$f28,80(sp)
     19c:	f7ba0048 	sdc1	$f26,72(sp)
     1a0:	f7b80040 	sdc1	$f24,64(sp)
     1a4:	f7b60038 	sdc1	$f22,56(sp)
     1a8:	f7b40030 	sdc1	$f20,48(sp)
     1ac:	00a0a825 	move	s5,a1
     1b0:	0c000000 	jal	0 <EnCrow_Init>
     1b4:	84840030 	lh	a0,48(a0)
     1b8:	c6240068 	lwc1	$f4,104(s1)
     1bc:	44801000 	mtc1	zero,$f2
     1c0:	3c01c040 	lui	at,0xc040
     1c4:	46002182 	mul.s	$f6,$f4,$f0
     1c8:	44814000 	mtc1	at,$f8
     1cc:	e6220060 	swc1	$f2,96(s1)
     1d0:	3c050600 	lui	a1,0x600
     1d4:	3c063ecc 	lui	a2,0x3ecc
     1d8:	240e0001 	li	t6,1
     1dc:	44071000 	mfc1	a3,$f2
     1e0:	e6260068 	swc1	$f6,104(s1)
     1e4:	afae0014 	sw	t6,20(sp)
     1e8:	34c6cccd 	ori	a2,a2,0xcccd
     1ec:	24a500f0 	addiu	a1,a1,240
     1f0:	2624017c 	addiu	a0,s1,380
     1f4:	e7a20010 	swc1	$f2,16(sp)
     1f8:	0c000000 	jal	0 <EnCrow_Init>
     1fc:	e7a80018 	swc1	$f8,24(sp)
     200:	3c0142c8 	lui	at,0x42c8
     204:	44818000 	mtc1	at,$f16
     208:	c62a0050 	lwc1	$f10,80(s1)
     20c:	3c0141a0 	lui	at,0x41a0
     210:	44812000 	mtc1	at,$f4
     214:	46105602 	mul.s	$f24,$f10,$f16
     218:	c6320028 	lwc1	$f18,40(s1)
     21c:	962f0088 	lhu	t7,136(s1)
     220:	44800000 	mtc1	zero,$f0
     224:	02202025 	move	a0,s1
     228:	31f8fffe 	andi	t8,t7,0xfffe
     22c:	a6380088 	sh	t8,136(s1)
     230:	46182182 	mul.s	$f6,$f4,$f24
     234:	240538eb 	li	a1,14571
     238:	e62000bc 	swc1	$f0,188(s1)
     23c:	e620004c 	swc1	$f0,76(s1)
     240:	46069200 	add.s	$f8,$f18,$f6
     244:	0c000000 	jal	0 <EnCrow_Init>
     248:	e6280028 	swc1	$f8,40(s1)
     24c:	922200b1 	lbu	v0,177(s1)
     250:	24010003 	li	at,3
     254:	02202025 	move	a0,s1
     258:	14410048 	bne	v0,at,37c <func_809E03B4+0x208>
     25c:	00002825 	move	a1,zero
     260:	24190028 	li	t9,40
     264:	afb90010 	sw	t9,16(sp)
     268:	240600ff 	li	a2,255
     26c:	0c000000 	jal	0 <EnCrow_Init>
     270:	00003825 	move	a3,zero
     274:	3c010000 	lui	at,0x0
     278:	c43c0000 	lwc1	$f28,0(at)
     27c:	3c010000 	lui	at,0x0
     280:	c43a0000 	lwc1	$f26,0(at)
     284:	3c01c0e0 	lui	at,0xc0e0
     288:	4481b000 	mtc1	at,$f22
     28c:	3c0140e0 	lui	at,0x40e0
     290:	4481a000 	mtc1	at,$f20
     294:	00008025 	move	s0,zero
     298:	24130008 	li	s3,8
     29c:	27b20084 	addiu	s2,sp,132
     2a0:	32080001 	andi	t0,s0,0x1
     2a4:	51000004 	beqzl	t0,2b8 <func_809E03B4+0x144>
     2a8:	4600b006 	mov.s	$f0,$f22
     2ac:	10000002 	b	2b8 <func_809E03B4+0x144>
     2b0:	4600a006 	mov.s	$f0,$f20
     2b4:	4600b006 	mov.s	$f0,$f22
     2b8:	46180282 	mul.s	$f10,$f0,$f24
     2bc:	c6300024 	lwc1	$f16,36(s1)
     2c0:	32090002 	andi	t1,s0,0x2
     2c4:	46105100 	add.s	$f4,$f10,$f16
     2c8:	11200003 	beqz	t1,2d8 <func_809E03B4+0x164>
     2cc:	e7a40084 	swc1	$f4,132(sp)
     2d0:	10000002 	b	2dc <func_809E03B4+0x168>
     2d4:	4600a006 	mov.s	$f0,$f20
     2d8:	4600b006 	mov.s	$f0,$f22
     2dc:	46180482 	mul.s	$f18,$f0,$f24
     2e0:	c6260028 	lwc1	$f6,40(s1)
     2e4:	320a0004 	andi	t2,s0,0x4
     2e8:	46069200 	add.s	$f8,$f18,$f6
     2ec:	11400003 	beqz	t2,2fc <func_809E03B4+0x188>
     2f0:	e7a80088 	swc1	$f8,136(sp)
     2f4:	10000002 	b	300 <func_809E03B4+0x18c>
     2f8:	4600a006 	mov.s	$f0,$f20
     2fc:	4600b006 	mov.s	$f0,$f22
     300:	46180282 	mul.s	$f10,$f0,$f24
     304:	c630002c 	lwc1	$f16,44(s1)
     308:	46105100 	add.s	$f4,$f10,$f16
     30c:	0c000000 	jal	0 <EnCrow_Init>
     310:	e7a4008c 	swc1	$f4,140(sp)
     314:	461a0482 	mul.s	$f18,$f0,$f26
     318:	240b0096 	li	t3,150
     31c:	240c0096 	li	t4,150
     320:	240d00fa 	li	t5,250
     324:	240e00eb 	li	t6,235
     328:	240f00f5 	li	t7,245
     32c:	241800ff 	li	t8,255
     330:	461c9180 	add.s	$f6,$f18,$f28
     334:	afb80024 	sw	t8,36(sp)
     338:	afaf0020 	sw	t7,32(sp)
     33c:	afae001c 	sw	t6,28(sp)
     340:	46183202 	mul.s	$f8,$f6,$f24
     344:	afad0018 	sw	t5,24(sp)
     348:	afac0014 	sw	t4,20(sp)
     34c:	afab0010 	sw	t3,16(sp)
     350:	02a02025 	move	a0,s5
     354:	02202825 	move	a1,s1
     358:	02403025 	move	a2,s2
     35c:	e7a80028 	swc1	$f8,40(sp)
     360:	0c000000 	jal	0 <EnCrow_Init>
     364:	24070096 	li	a3,150
     368:	26100001 	addiu	s0,s0,1
     36c:	5613ffcd 	bnel	s0,s3,2a4 <func_809E03B4+0x130>
     370:	32080001 	andi	t0,s0,0x1
     374:	1000002b 	b	424 <func_809E03B4+0x2b0>
     378:	8e220004 	lw	v0,4(s1)
     37c:	24010002 	li	at,2
     380:	14410021 	bne	v0,at,408 <func_809E03B4+0x294>
     384:	02202025 	move	a0,s1
     388:	24190028 	li	t9,40
     38c:	afb90010 	sw	t9,16(sp)
     390:	02202025 	move	a0,s1
     394:	24054000 	li	a1,16384
     398:	240600ff 	li	a2,255
     39c:	0c000000 	jal	0 <EnCrow_Init>
     3a0:	00003825 	move	a3,zero
     3a4:	3c014248 	lui	at,0x4248
     3a8:	44815000 	mtc1	at,$f10
     3ac:	00008025 	move	s0,zero
     3b0:	26320024 	addiu	s2,s1,36
     3b4:	46185402 	mul.s	$f16,$f10,$f24
     3b8:	24140004 	li	s4,4
     3bc:	4600810d 	trunc.w.s	$f4,$f16
     3c0:	44132000 	mfc1	s3,$f4
     3c4:	00000000 	nop
     3c8:	00139c00 	sll	s3,s3,0x10
     3cc:	00139c03 	sra	s3,s3,0x10
     3d0:	00133c00 	sll	a3,s3,0x10
     3d4:	00073c03 	sra	a3,a3,0x10
     3d8:	02a02025 	move	a0,s5
     3dc:	02202825 	move	a1,s1
     3e0:	02403025 	move	a2,s2
     3e4:	afa00010 	sw	zero,16(sp)
     3e8:	afa00014 	sw	zero,20(sp)
     3ec:	0c000000 	jal	0 <EnCrow_Init>
     3f0:	afb00018 	sw	s0,24(sp)
     3f4:	26100001 	addiu	s0,s0,1
     3f8:	5614fff6 	bnel	s0,s4,3d4 <func_809E03B4+0x260>
     3fc:	00133c00 	sll	a3,s3,0x10
     400:	10000008 	b	424 <func_809E03B4+0x2b0>
     404:	8e220004 	lw	v0,4(s1)
     408:	24090028 	li	t1,40
     40c:	afa90010 	sw	t1,16(sp)
     410:	24054000 	li	a1,16384
     414:	240600ff 	li	a2,255
     418:	0c000000 	jal	0 <EnCrow_Init>
     41c:	00003825 	move	a3,zero
     420:	8e220004 	lw	v0,4(s1)
     424:	3c0e0000 	lui	t6,0x0
     428:	25ce0000 	addiu	t6,t6,0
     42c:	304a8000 	andi	t2,v0,0x8000
     430:	51400005 	beqzl	t2,448 <func_809E03B4+0x2d4>
     434:	922b0249 	lbu	t3,585(s1)
     438:	44809000 	mtc1	zero,$f18
     43c:	8e220004 	lw	v0,4(s1)
     440:	e6320068 	swc1	$f18,104(s1)
     444:	922b0249 	lbu	t3,585(s1)
     448:	344d0010 	ori	t5,v0,0x10
     44c:	ae2d0004 	sw	t5,4(s1)
     450:	316cfffe 	andi	t4,t3,0xfffe
     454:	a22c0249 	sb	t4,585(s1)
     458:	ae2e01c0 	sw	t6,448(s1)
     45c:	8fbf0074 	lw	ra,116(sp)
     460:	8fb50070 	lw	s5,112(sp)
     464:	8fb4006c 	lw	s4,108(sp)
     468:	8fb30068 	lw	s3,104(sp)
     46c:	8fb20064 	lw	s2,100(sp)
     470:	8fb10060 	lw	s1,96(sp)
     474:	8fb0005c 	lw	s0,92(sp)
     478:	d7bc0050 	ldc1	$f28,80(sp)
     47c:	d7ba0048 	ldc1	$f26,72(sp)
     480:	d7b80040 	ldc1	$f24,64(sp)
     484:	d7b60038 	ldc1	$f22,56(sp)
     488:	d7b40030 	ldc1	$f20,48(sp)
     48c:	03e00008 	jr	ra
     490:	27bd0098 	addiu	sp,sp,152

00000494 <func_809E06D4>:
     494:	3c0e0000 	lui	t6,0x0
     498:	25ce0000 	addiu	t6,t6,0
     49c:	a0800114 	sb	zero,276(a0)
     4a0:	03e00008 	jr	ra
     4a4:	ac8e01c0 	sw	t6,448(a0)

000004a8 <func_809E06E8>:
     4a8:	27bdffe0 	addiu	sp,sp,-32
     4ac:	afbf001c 	sw	ra,28(sp)
     4b0:	8498008a 	lh	t8,138(a0)
     4b4:	3c014060 	lui	at,0x4060
     4b8:	44812000 	mtc1	at,$f4
     4bc:	34018000 	li	at,0x8000
     4c0:	0301c821 	addu	t9,t8,at
     4c4:	3c014000 	lui	at,0x4000
     4c8:	44813000 	mtc1	at,$f6
     4cc:	240e0064 	li	t6,100
     4d0:	240ff000 	li	t7,-4096
     4d4:	a48e01c4 	sh	t6,452(a0)
     4d8:	a48f01c6 	sh	t7,454(a0)
     4dc:	a49901c8 	sh	t9,456(a0)
     4e0:	24080005 	li	t0,5
     4e4:	e4840068 	swc1	$f4,104(a0)
     4e8:	e4860198 	swc1	$f6,408(a0)
     4ec:	afa40020 	sw	a0,32(sp)
     4f0:	afa80010 	sw	t0,16(sp)
     4f4:	00002825 	move	a1,zero
     4f8:	240600ff 	li	a2,255
     4fc:	0c000000 	jal	0 <EnCrow_Init>
     500:	00003825 	move	a3,zero
     504:	8fa40020 	lw	a0,32(sp)
     508:	0c000000 	jal	0 <EnCrow_Init>
     50c:	2405389e 	li	a1,14494
     510:	8fa40020 	lw	a0,32(sp)
     514:	3c090000 	lui	t1,0x0
     518:	25290000 	addiu	t1,t1,0
     51c:	ac8901c0 	sw	t1,448(a0)
     520:	8fbf001c 	lw	ra,28(sp)
     524:	27bd0020 	addiu	sp,sp,32
     528:	03e00008 	jr	ra
     52c:	00000000 	nop

00000530 <func_809E0770>:
     530:	3c020000 	lui	v0,0x0
     534:	24420000 	addiu	v0,v0,0
     538:	8c4e0000 	lw	t6,0(v0)
     53c:	27bdffe8 	addiu	sp,sp,-24
     540:	2401000a 	li	at,10
     544:	afbf0014 	sw	ra,20(sp)
     548:	15c10015 	bne	t6,at,5a0 <func_809E0770+0x70>
     54c:	00803025 	move	a2,a0
     550:	240f0001 	li	t7,1
     554:	a48f001c 	sh	t7,28(a0)
     558:	ac400000 	sw	zero,0(v0)
     55c:	3c180000 	lui	t8,0x0
     560:	8f180000 	lw	t8,0(t8)
     564:	3c010000 	lui	at,0x0
     568:	c4280000 	lwc1	$f8,0(at)
     56c:	87190020 	lh	t9,32(t8)
     570:	3c0142c8 	lui	at,0x42c8
     574:	44818000 	mtc1	at,$f16
     578:	44992000 	mtc1	t9,$f4
     57c:	8c8a0254 	lw	t2,596(a0)
     580:	468021a0 	cvt.s.w	$f6,$f4
     584:	46083282 	mul.s	$f10,$f6,$f8
     588:	00000000 	nop
     58c:	46105482 	mul.s	$f18,$f10,$f16
     590:	4600910d 	trunc.w.s	$f4,$f18
     594:	44092000 	mfc1	t1,$f4
     598:	10000007 	b	5b8 <func_809E0770+0x88>
     59c:	a5490036 	sh	t1,54(t2)
     5a0:	a4c0001c 	sh	zero,28(a2)
     5a4:	3c0b0000 	lui	t3,0x0
     5a8:	8d6b0000 	lw	t3,0(t3)
     5ac:	8ccd0254 	lw	t5,596(a2)
     5b0:	856c0020 	lh	t4,32(t3)
     5b4:	a5ac0036 	sh	t4,54(t5)
     5b8:	3c050600 	lui	a1,0x600
     5bc:	24a500f0 	addiu	a1,a1,240
     5c0:	24c4017c 	addiu	a0,a2,380
     5c4:	0c000000 	jal	0 <EnCrow_Init>
     5c8:	afa60018 	sw	a2,24(sp)
     5cc:	8fa60018 	lw	a2,24(sp)
     5d0:	24c40024 	addiu	a0,a2,36
     5d4:	0c000000 	jal	0 <EnCrow_Init>
     5d8:	24c50008 	addiu	a1,a2,8
     5dc:	8fa60018 	lw	a2,24(sp)
     5e0:	3c0144fa 	lui	at,0x44fa
     5e4:	44813000 	mtc1	at,$f6
     5e8:	44814000 	mtc1	at,$f8
     5ec:	3c0f0000 	lui	t7,0x0
     5f0:	240e012c 	li	t6,300
     5f4:	25ef0000 	addiu	t7,t7,0
     5f8:	a4c000b4 	sh	zero,180(a2)
     5fc:	a4c000b8 	sh	zero,184(a2)
     600:	a4ce01c4 	sh	t6,452(a2)
     604:	acc00134 	sw	zero,308(a2)
     608:	accf01c0 	sw	t7,448(a2)
     60c:	e4c600bc 	swc1	$f6,188(a2)
     610:	e4c8004c 	swc1	$f8,76(a2)
     614:	8fbf0014 	lw	ra,20(sp)
     618:	27bd0018 	addiu	sp,sp,24
     61c:	03e00008 	jr	ra
     620:	00000000 	nop

00000624 <func_809E0864>:
     624:	27bdffc0 	addiu	sp,sp,-64
     628:	afb00020 	sw	s0,32(sp)
     62c:	afbf0024 	sw	ra,36(sp)
     630:	afa50044 	sw	a1,68(sp)
     634:	8caf1c44 	lw	t7,7236(a1)
     638:	00808025 	move	s0,a0
     63c:	2484017c 	addiu	a0,a0,380
     640:	afa40028 	sw	a0,40(sp)
     644:	0c000000 	jal	0 <EnCrow_Init>
     648:	afaf003c 	sw	t7,60(sp)
     64c:	8fa40028 	lw	a0,40(sp)
     650:	0c000000 	jal	0 <EnCrow_Init>
     654:	24050000 	li	a1,0
     658:	0c000000 	jal	0 <EnCrow_Init>
     65c:	afa20038 	sw	v0,56(sp)
     660:	3c013fc0 	lui	at,0x3fc0
     664:	44812000 	mtc1	at,$f4
     668:	3c014040 	lui	at,0x4040
     66c:	44814000 	mtc1	at,$f8
     670:	46040182 	mul.s	$f6,$f0,$f4
     674:	96180088 	lhu	t8,136(s0)
     678:	02002025 	move	a0,s0
     67c:	26050008 	addiu	a1,s0,8
     680:	33190008 	andi	t9,t8,0x8
     684:	46083280 	add.s	$f10,$f6,$f8
     688:	13200004 	beqz	t9,69c <func_809E0864+0x78>
     68c:	e60a0068 	swc1	$f10,104(s0)
     690:	8608007e 	lh	t0,126(s0)
     694:	1000000d 	b	6cc <func_809E0864+0xa8>
     698:	a60801c8 	sh	t0,456(s0)
     69c:	0c000000 	jal	0 <EnCrow_Init>
     6a0:	afa50028 	sw	a1,40(sp)
     6a4:	3c014396 	lui	at,0x4396
     6a8:	44818000 	mtc1	at,$f16
     6ac:	8fa50028 	lw	a1,40(sp)
     6b0:	4600803c 	c.lt.s	$f16,$f0
     6b4:	00000000 	nop
     6b8:	45020005 	bc1fl	6d0 <func_809E0864+0xac>
     6bc:	860501c8 	lh	a1,456(s0)
     6c0:	0c000000 	jal	0 <EnCrow_Init>
     6c4:	02002025 	move	a0,s0
     6c8:	a60201c8 	sh	v0,456(s0)
     6cc:	860501c8 	lh	a1,456(s0)
     6d0:	24090010 	li	t1,16
     6d4:	afa90010 	sw	t1,16(sp)
     6d8:	260400b6 	addiu	a0,s0,182
     6dc:	24060005 	li	a2,5
     6e0:	0c000000 	jal	0 <EnCrow_Init>
     6e4:	24070300 	li	a3,768
     6e8:	14400035 	bnez	v0,7c0 <func_809E0864+0x19c>
     6ec:	8faa0038 	lw	t2,56(sp)
     6f0:	51400034 	beqzl	t2,7c4 <func_809E0864+0x1a0>
     6f4:	3c01c220 	lui	at,0xc220
     6f8:	0c000000 	jal	0 <EnCrow_Init>
     6fc:	00000000 	nop
     700:	3c010000 	lui	at,0x0
     704:	c4320000 	lwc1	$f18,0(at)
     708:	02002025 	move	a0,s0
     70c:	4612003c 	c.lt.s	$f0,$f18
     710:	00000000 	nop
     714:	4502002b 	bc1fl	7c4 <func_809E0864+0x1a0>
     718:	3c01c220 	lui	at,0xc220
     71c:	0c000000 	jal	0 <EnCrow_Init>
     720:	26050008 	addiu	a1,s0,8
     724:	860b00b6 	lh	t3,182(s0)
     728:	004b1823 	subu	v1,v0,t3
     72c:	00031c00 	sll	v1,v1,0x10
     730:	00031c03 	sra	v1,v1,0x10
     734:	18600010 	blez	v1,778 <func_809E0864+0x154>
     738:	00000000 	nop
     73c:	0c000000 	jal	0 <EnCrow_Init>
     740:	00000000 	nop
     744:	3c014580 	lui	at,0x4580
     748:	44811000 	mtc1	at,$f2
     74c:	860c01c8 	lh	t4,456(s0)
     750:	46001202 	mul.s	$f8,$f2,$f0
     754:	448c2000 	mtc1	t4,$f4
     758:	00000000 	nop
     75c:	468021a0 	cvt.s.w	$f6,$f4
     760:	46081280 	add.s	$f10,$f2,$f8
     764:	460a3400 	add.s	$f16,$f6,$f10
     768:	4600848d 	trunc.w.s	$f18,$f16
     76c:	440e9000 	mfc1	t6,$f18
     770:	10000010 	b	7b4 <func_809E0864+0x190>
     774:	a60e01c8 	sh	t6,456(s0)
     778:	0c000000 	jal	0 <EnCrow_Init>
     77c:	00000000 	nop
     780:	3c014580 	lui	at,0x4580
     784:	44811000 	mtc1	at,$f2
     788:	860f01c8 	lh	t7,456(s0)
     78c:	46001182 	mul.s	$f6,$f2,$f0
     790:	448f2000 	mtc1	t7,$f4
     794:	00000000 	nop
     798:	46802220 	cvt.s.w	$f8,$f4
     79c:	46061280 	add.s	$f10,$f2,$f6
     7a0:	460a4401 	sub.s	$f16,$f8,$f10
     7a4:	4600848d 	trunc.w.s	$f18,$f16
     7a8:	44199000 	mfc1	t9,$f18
     7ac:	00000000 	nop
     7b0:	a61901c8 	sh	t9,456(s0)
     7b4:	02002025 	move	a0,s0
     7b8:	0c000000 	jal	0 <EnCrow_Init>
     7bc:	240538b6 	li	a1,14518
     7c0:	3c01c220 	lui	at,0xc220
     7c4:	44812000 	mtc1	at,$f4
     7c8:	c6060084 	lwc1	$f6,132(s0)
     7cc:	3c014248 	lui	at,0x4248
     7d0:	2408f000 	li	t0,-4096
     7d4:	4606203c 	c.lt.s	$f4,$f6
     7d8:	00000000 	nop
     7dc:	45020004 	bc1fl	7f0 <func_809E0864+0x1cc>
     7e0:	44816000 	mtc1	at,$f12
     7e4:	10000025 	b	87c <func_809E0864+0x258>
     7e8:	a60801c6 	sh	t0,454(s0)
     7ec:	44816000 	mtc1	at,$f12
     7f0:	c602000c 	lwc1	$f2,12(s0)
     7f4:	c6000028 	lwc1	$f0,40(s0)
     7f8:	460c1201 	sub.s	$f8,$f2,$f12
     7fc:	4608003c 	c.lt.s	$f0,$f8
     800:	00000000 	nop
     804:	4502000e 	bc1fl	840 <func_809E0864+0x21c>
     808:	460c1180 	add.s	$f6,$f2,$f12
     80c:	0c000000 	jal	0 <EnCrow_Init>
     810:	00000000 	nop
     814:	3c014500 	lui	at,0x4500
     818:	44811000 	mtc1	at,$f2
     81c:	3c01c500 	lui	at,0xc500
     820:	44815000 	mtc1	at,$f10
     824:	46020402 	mul.s	$f16,$f0,$f2
     828:	46105481 	sub.s	$f18,$f10,$f16
     82c:	4600910d 	trunc.w.s	$f4,$f18
     830:	440a2000 	mfc1	t2,$f4
     834:	10000011 	b	87c <func_809E0864+0x258>
     838:	a60a01c6 	sh	t2,454(s0)
     83c:	460c1180 	add.s	$f6,$f2,$f12
     840:	4600303c 	c.lt.s	$f6,$f0
     844:	00000000 	nop
     848:	4502000d 	bc1fl	880 <func_809E0864+0x25c>
     84c:	260400b4 	addiu	a0,s0,180
     850:	0c000000 	jal	0 <EnCrow_Init>
     854:	00000000 	nop
     858:	3c014500 	lui	at,0x4500
     85c:	44811000 	mtc1	at,$f2
     860:	00000000 	nop
     864:	46020202 	mul.s	$f8,$f0,$f2
     868:	46024280 	add.s	$f10,$f8,$f2
     86c:	4600540d 	trunc.w.s	$f16,$f10
     870:	440c8000 	mfc1	t4,$f16
     874:	00000000 	nop
     878:	a60c01c6 	sh	t4,454(s0)
     87c:	260400b4 	addiu	a0,s0,180
     880:	860501c6 	lh	a1,454(s0)
     884:	240d0008 	li	t5,8
     888:	afad0010 	sw	t5,16(sp)
     88c:	afa40028 	sw	a0,40(sp)
     890:	2406000a 	li	a2,10
     894:	0c000000 	jal	0 <EnCrow_Init>
     898:	24070100 	li	a3,256
     89c:	1440003c 	bnez	v0,990 <func_809E0864+0x36c>
     8a0:	8fae0038 	lw	t6,56(sp)
     8a4:	51c0003b 	beqzl	t6,994 <func_809E0864+0x370>
     8a8:	960c0088 	lhu	t4,136(s0)
     8ac:	0c000000 	jal	0 <EnCrow_Init>
     8b0:	00000000 	nop
     8b4:	3c010000 	lui	at,0x0
     8b8:	c4320000 	lwc1	$f18,0(at)
     8bc:	4612003c 	c.lt.s	$f0,$f18
     8c0:	00000000 	nop
     8c4:	45020033 	bc1fl	994 <func_809E0864+0x370>
     8c8:	960c0088 	lhu	t4,136(s0)
     8cc:	c604000c 	lwc1	$f4,12(s0)
     8d0:	c6060028 	lwc1	$f6,40(s0)
     8d4:	4606203c 	c.lt.s	$f4,$f6
     8d8:	00000000 	nop
     8dc:	45000010 	bc1f	920 <func_809E0864+0x2fc>
     8e0:	00000000 	nop
     8e4:	0c000000 	jal	0 <EnCrow_Init>
     8e8:	00000000 	nop
     8ec:	3c014480 	lui	at,0x4480
     8f0:	44811000 	mtc1	at,$f2
     8f4:	860f01c6 	lh	t7,454(s0)
     8f8:	46001402 	mul.s	$f16,$f2,$f0
     8fc:	448f4000 	mtc1	t7,$f8
     900:	00000000 	nop
     904:	468042a0 	cvt.s.w	$f10,$f8
     908:	46028480 	add.s	$f18,$f16,$f2
     90c:	46125101 	sub.s	$f4,$f10,$f18
     910:	4600218d 	trunc.w.s	$f6,$f4
     914:	44193000 	mfc1	t9,$f6
     918:	10000010 	b	95c <func_809E0864+0x338>
     91c:	a61901c6 	sh	t9,454(s0)
     920:	0c000000 	jal	0 <EnCrow_Init>
     924:	00000000 	nop
     928:	3c014480 	lui	at,0x4480
     92c:	44811000 	mtc1	at,$f2
     930:	860801c6 	lh	t0,454(s0)
     934:	46001282 	mul.s	$f10,$f2,$f0
     938:	44884000 	mtc1	t0,$f8
     93c:	00000000 	nop
     940:	46804420 	cvt.s.w	$f16,$f8
     944:	46025480 	add.s	$f18,$f10,$f2
     948:	46128100 	add.s	$f4,$f16,$f18
     94c:	4600218d 	trunc.w.s	$f6,$f4
     950:	440a3000 	mfc1	t2,$f6
     954:	00000000 	nop
     958:	a60a01c6 	sh	t2,454(s0)
     95c:	860201c6 	lh	v0,454(s0)
     960:	240bf000 	li	t3,-4096
     964:	2841f000 	slti	at,v0,-4096
     968:	50200004 	beqzl	at,97c <func_809E0864+0x358>
     96c:	28411001 	slti	at,v0,4097
     970:	10000007 	b	990 <func_809E0864+0x36c>
     974:	a60b01c6 	sh	t3,454(s0)
     978:	28411001 	slti	at,v0,4097
     97c:	14200003 	bnez	at,98c <func_809E0864+0x368>
     980:	00401825 	move	v1,v0
     984:	10000001 	b	98c <func_809E0864+0x368>
     988:	24031000 	li	v1,4096
     98c:	a60301c6 	sh	v1,454(s0)
     990:	960c0088 	lhu	t4,136(s0)
     994:	8fa40028 	lw	a0,40(sp)
     998:	2405ff00 	li	a1,-256
     99c:	318d0001 	andi	t5,t4,0x1
     9a0:	51a00004 	beqzl	t5,9b4 <func_809E0864+0x390>
     9a4:	860201c4 	lh	v0,452(s0)
     9a8:	0c000000 	jal	0 <EnCrow_Init>
     9ac:	24060400 	li	a2,1024
     9b0:	860201c4 	lh	v0,452(s0)
     9b4:	3c014396 	lui	at,0x4396
     9b8:	10400003 	beqz	v0,9c8 <func_809E0864+0x3a4>
     9bc:	244effff 	addiu	t6,v0,-1
     9c0:	a60e01c4 	sh	t6,452(s0)
     9c4:	860201c4 	lh	v0,452(s0)
     9c8:	5440001c 	bnezl	v0,a3c <func_809E0864+0x418>
     9cc:	8fbf0024 	lw	ra,36(sp)
     9d0:	c6080090 	lwc1	$f8,144(s0)
     9d4:	44815000 	mtc1	at,$f10
     9d8:	8faf003c 	lw	t7,60(sp)
     9dc:	460a403c 	c.lt.s	$f8,$f10
     9e0:	00000000 	nop
     9e4:	45020015 	bc1fl	a3c <func_809E0864+0x418>
     9e8:	8fbf0024 	lw	ra,36(sp)
     9ec:	8df8067c 	lw	t8,1660(t7)
     9f0:	3c01c220 	lui	at,0xc220
     9f4:	0018ca00 	sll	t9,t8,0x8
     9f8:	07220010 	bltzl	t9,a3c <func_809E0864+0x418>
     9fc:	8fbf0024 	lw	ra,36(sp)
     a00:	c6100084 	lwc1	$f16,132(s0)
     a04:	44819000 	mtc1	at,$f18
     a08:	00000000 	nop
     a0c:	4612803c 	c.lt.s	$f16,$f18
     a10:	00000000 	nop
     a14:	45020009 	bc1fl	a3c <func_809E0864+0x418>
     a18:	8fbf0024 	lw	ra,36(sp)
     a1c:	0c000000 	jal	0 <EnCrow_Init>
     a20:	8fa40044 	lw	a0,68(sp)
     a24:	24010002 	li	at,2
     a28:	50410004 	beql	v0,at,a3c <func_809E0864+0x418>
     a2c:	8fbf0024 	lw	ra,36(sp)
     a30:	0c000000 	jal	0 <EnCrow_Init>
     a34:	02002025 	move	a0,s0
     a38:	8fbf0024 	lw	ra,36(sp)
     a3c:	8fb00020 	lw	s0,32(sp)
     a40:	27bd0040 	addiu	sp,sp,64
     a44:	03e00008 	jr	ra
     a48:	00000000 	nop

00000a4c <func_809E0C8C>:
     a4c:	27bdffc0 	addiu	sp,sp,-64
     a50:	afbf001c 	sw	ra,28(sp)
     a54:	afb00018 	sw	s0,24(sp)
     a58:	afa50044 	sw	a1,68(sp)
     a5c:	8caf1c44 	lw	t7,7236(a1)
     a60:	00808025 	move	s0,a0
     a64:	2484017c 	addiu	a0,a0,380
     a68:	0c000000 	jal	0 <EnCrow_Init>
     a6c:	afaf003c 	sw	t7,60(sp)
     a70:	860301c4 	lh	v1,452(s0)
     a74:	02002025 	move	a0,s0
     a78:	10600002 	beqz	v1,a84 <func_809E0C8C+0x38>
     a7c:	2478ffff 	addiu	t8,v1,-1
     a80:	a61801c4 	sh	t8,452(s0)
     a84:	0c000000 	jal	0 <EnCrow_Init>
     a88:	24052800 	li	a1,10240
     a8c:	10400019 	beqz	v0,af4 <func_809E0C8C+0xa8>
     a90:	afa20038 	sw	v0,56(sp)
     a94:	8fa2003c 	lw	v0,60(sp)
     a98:	3c0141a0 	lui	at,0x41a0
     a9c:	44814000 	mtc1	at,$f8
     aa0:	c4440024 	lwc1	$f4,36(v0)
     aa4:	02002025 	move	a0,s0
     aa8:	27a5002c 	addiu	a1,sp,44
     aac:	e7a4002c 	swc1	$f4,44(sp)
     ab0:	c4460028 	lwc1	$f6,40(v0)
     ab4:	46083280 	add.s	$f10,$f6,$f8
     ab8:	e7aa0030 	swc1	$f10,48(sp)
     abc:	c450002c 	lwc1	$f16,44(v0)
     ac0:	0c000000 	jal	0 <EnCrow_Init>
     ac4:	e7b00034 	swc1	$f16,52(sp)
     ac8:	00022c00 	sll	a1,v0,0x10
     acc:	28413001 	slti	at,v0,12289
     ad0:	14200002 	bnez	at,adc <func_809E0C8C+0x90>
     ad4:	00052c03 	sra	a1,a1,0x10
     ad8:	24053000 	li	a1,12288
     adc:	260400b4 	addiu	a0,s0,180
     ae0:	24060002 	li	a2,2
     ae4:	0c000000 	jal	0 <EnCrow_Init>
     ae8:	24070400 	li	a3,1024
     aec:	10000007 	b	b0c <func_809E0C8C+0xc0>
     af0:	8fb90038 	lw	t9,56(sp)
     af4:	260400b4 	addiu	a0,s0,180
     af8:	2405f000 	li	a1,-4096
     afc:	24060002 	li	a2,2
     b00:	0c000000 	jal	0 <EnCrow_Init>
     b04:	24070100 	li	a3,256
     b08:	8fb90038 	lw	t9,56(sp)
     b0c:	3c0142a0 	lui	at,0x42a0
     b10:	260400b6 	addiu	a0,s0,182
     b14:	17200007 	bnez	t9,b34 <func_809E0C8C+0xe8>
     b18:	24060004 	li	a2,4
     b1c:	44819000 	mtc1	at,$f18
     b20:	c6040090 	lwc1	$f4,144(s0)
     b24:	4604903c 	c.lt.s	$f18,$f4
     b28:	00000000 	nop
     b2c:	45020005 	bc1fl	b44 <func_809E0C8C+0xf8>
     b30:	860801c4 	lh	t0,452(s0)
     b34:	8605008a 	lh	a1,138(s0)
     b38:	0c000000 	jal	0 <EnCrow_Init>
     b3c:	24070c00 	li	a3,3072
     b40:	860801c4 	lh	t0,452(s0)
     b44:	5100001b 	beqzl	t0,bb4 <func_809E0C8C+0x168>
     b48:	92020248 	lbu	v0,584(s0)
     b4c:	0c000000 	jal	0 <EnCrow_Init>
     b50:	8fa40044 	lw	a0,68(sp)
     b54:	24010002 	li	at,2
     b58:	50410016 	beql	v0,at,bb4 <func_809E0C8C+0x168>
     b5c:	92020248 	lbu	v0,584(s0)
     b60:	92090248 	lbu	t1,584(s0)
     b64:	312a0002 	andi	t2,t1,0x2
     b68:	55400012 	bnezl	t2,bb4 <func_809E0C8C+0x168>
     b6c:	92020248 	lbu	v0,584(s0)
     b70:	960b0088 	lhu	t3,136(s0)
     b74:	8fad003c 	lw	t5,60(sp)
     b78:	316c0009 	andi	t4,t3,0x9
     b7c:	5580000d 	bnezl	t4,bb4 <func_809E0C8C+0x168>
     b80:	92020248 	lbu	v0,584(s0)
     b84:	8dae067c 	lw	t6,1660(t5)
     b88:	3c01c220 	lui	at,0xc220
     b8c:	000e7a00 	sll	t7,t6,0x8
     b90:	05e20008 	bltzl	t7,bb4 <func_809E0C8C+0x168>
     b94:	92020248 	lbu	v0,584(s0)
     b98:	44813000 	mtc1	at,$f6
     b9c:	c6080084 	lwc1	$f8,132(s0)
     ba0:	4608303c 	c.lt.s	$f6,$f8
     ba4:	00000000 	nop
     ba8:	4502000c 	bc1fl	bdc <func_809E0C8C+0x190>
     bac:	8fbf001c 	lw	ra,28(sp)
     bb0:	92020248 	lbu	v0,584(s0)
     bb4:	02002025 	move	a0,s0
     bb8:	240538b7 	li	a1,14519
     bbc:	30580002 	andi	t8,v0,0x2
     bc0:	13000003 	beqz	t8,bd0 <func_809E0C8C+0x184>
     bc4:	3059fffd 	andi	t9,v0,0xfffd
     bc8:	0c000000 	jal	0 <EnCrow_Init>
     bcc:	a2190248 	sb	t9,584(s0)
     bd0:	0c000000 	jal	0 <EnCrow_Init>
     bd4:	02002025 	move	a0,s0
     bd8:	8fbf001c 	lw	ra,28(sp)
     bdc:	8fb00018 	lw	s0,24(sp)
     be0:	27bd0040 	addiu	sp,sp,64
     be4:	03e00008 	jr	ra
     be8:	00000000 	nop

00000bec <func_809E0E2C>:
     bec:	27bdffb0 	addiu	sp,sp,-80
     bf0:	afb00048 	sw	s0,72(sp)
     bf4:	00808025 	move	s0,a0
     bf8:	afbf004c 	sw	ra,76(sp)
     bfc:	afa50054 	sw	a1,84(sp)
     c00:	24050000 	li	a1,0
     c04:	24840068 	addiu	a0,a0,104
     c08:	0c000000 	jal	0 <EnCrow_Init>
     c0c:	3c063f00 	lui	a2,0x3f00
     c10:	8e0f0004 	lw	t7,4(s0)
     c14:	240e0028 	li	t6,40
     c18:	a20e0114 	sb	t6,276(s0)
     c1c:	31f88000 	andi	t8,t7,0x8000
     c20:	57000038 	bnezl	t8,d04 <func_809E0E2C+0x118>
     c24:	8fbf004c 	lw	ra,76(sp)
     c28:	96190112 	lhu	t9,274(s0)
     c2c:	260400b4 	addiu	a0,s0,180
     c30:	24054000 	li	a1,16384
     c34:	33284000 	andi	t0,t9,0x4000
     c38:	51000007 	beqzl	t0,c58 <func_809E0E2C+0x6c>
     c3c:	960b0088 	lhu	t3,136(s0)
     c40:	0c000000 	jal	0 <EnCrow_Init>
     c44:	24060200 	li	a2,512
     c48:	860900b8 	lh	t1,184(s0)
     c4c:	252a1780 	addiu	t2,t1,6016
     c50:	a60a00b8 	sh	t2,184(s0)
     c54:	960b0088 	lhu	t3,136(s0)
     c58:	3c060000 	lui	a2,0x0
     c5c:	24c60000 	addiu	a2,a2,0
     c60:	316c0001 	andi	t4,t3,0x1
     c64:	15800006 	bnez	t4,c80 <func_809E0E2C+0x94>
     c68:	3c01c6fa 	lui	at,0xc6fa
     c6c:	44812000 	mtc1	at,$f4
     c70:	c6060080 	lwc1	$f6,128(s0)
     c74:	46062032 	c.eq.s	$f4,$f6
     c78:	00000000 	nop
     c7c:	45000020 	bc1f	d00 <func_809E0E2C+0x114>
     c80:	3c010000 	lui	at,0x0
     c84:	c42a0000 	lwc1	$f10,0(at)
     c88:	c6080050 	lwc1	$f8,80(s0)
     c8c:	240f00ff 	li	t7,255
     c90:	241800ff 	li	t8,255
     c94:	460a4402 	mul.s	$f16,$f8,$f10
     c98:	241900ff 	li	t9,255
     c9c:	240800ff 	li	t0,255
     ca0:	240900ff 	li	t1,255
     ca4:	240a0001 	li	t2,1
     ca8:	240b0009 	li	t3,9
     cac:	240c0001 	li	t4,1
     cb0:	4600848d 	trunc.w.s	$f18,$f16
     cb4:	afac003c 	sw	t4,60(sp)
     cb8:	afab0038 	sw	t3,56(sp)
     cbc:	afaa0034 	sw	t2,52(sp)
     cc0:	440e9000 	mfc1	t6,$f18
     cc4:	afa90028 	sw	t1,40(sp)
     cc8:	afa80024 	sw	t0,36(sp)
     ccc:	afb90020 	sw	t9,32(sp)
     cd0:	afb8001c 	sw	t8,28(sp)
     cd4:	afaf0018 	sw	t7,24(sp)
     cd8:	afa00030 	sw	zero,48(sp)
     cdc:	afa0002c 	sw	zero,44(sp)
     ce0:	afa00014 	sw	zero,20(sp)
     ce4:	8fa40054 	lw	a0,84(sp)
     ce8:	26050024 	addiu	a1,s0,36
     cec:	00c03825 	move	a3,a2
     cf0:	0c000000 	jal	0 <EnCrow_Init>
     cf4:	afae0010 	sw	t6,16(sp)
     cf8:	0c000000 	jal	0 <EnCrow_Init>
     cfc:	02002025 	move	a0,s0
     d00:	8fbf004c 	lw	ra,76(sp)
     d04:	8fb00048 	lw	s0,72(sp)
     d08:	27bd0050 	addiu	sp,sp,80
     d0c:	03e00008 	jr	ra
     d10:	00000000 	nop

00000d14 <func_809E0F54>:
     d14:	27bdffe0 	addiu	sp,sp,-32
     d18:	afbf001c 	sw	ra,28(sp)
     d1c:	afb00018 	sw	s0,24(sp)
     d20:	afa50024 	sw	a1,36(sp)
     d24:	848e001c 	lh	t6,28(a0)
     d28:	00808025 	move	s0,a0
     d2c:	3c010000 	lui	at,0x0
     d30:	11c00004 	beqz	t6,d44 <func_809E0F54+0x30>
     d34:	26040050 	addiu	a0,s0,80
     d38:	3c010000 	lui	at,0x0
     d3c:	10000002 	b	d48 <func_809E0F54+0x34>
     d40:	c4200000 	lwc1	$f0,0(at)
     d44:	c4200000 	lwc1	$f0,0(at)
     d48:	44060000 	mfc1	a2,$f0
     d4c:	0c000000 	jal	0 <EnCrow_Init>
     d50:	24050000 	li	a1,0
     d54:	10400013 	beqz	v0,da4 <func_809E0F54+0x90>
     d58:	8fa40024 	lw	a0,36(sp)
     d5c:	860f001c 	lh	t7,28(s0)
     d60:	3c020000 	lui	v0,0x0
     d64:	24420000 	addiu	v0,v0,0
     d68:	15e0000a 	bnez	t7,d94 <func_809E0F54+0x80>
     d6c:	26050024 	addiu	a1,s0,36
     d70:	8c580000 	lw	t8,0(v0)
     d74:	02002825 	move	a1,s0
     d78:	26060024 	addiu	a2,s0,36
     d7c:	27190001 	addiu	t9,t8,1
     d80:	ac590000 	sw	t9,0(v0)
     d84:	0c000000 	jal	0 <EnCrow_Init>
     d88:	00003825 	move	a3,zero
     d8c:	10000003 	b	d9c <func_809E0F54+0x88>
     d90:	00000000 	nop
     d94:	0c000000 	jal	0 <EnCrow_Init>
     d98:	24060002 	li	a2,2
     d9c:	0c000000 	jal	0 <EnCrow_Init>
     da0:	02002025 	move	a0,s0
     da4:	c6000050 	lwc1	$f0,80(s0)
     da8:	e6000054 	swc1	$f0,84(s0)
     dac:	e6000058 	swc1	$f0,88(s0)
     db0:	8fbf001c 	lw	ra,28(sp)
     db4:	8fb00018 	lw	s0,24(sp)
     db8:	27bd0020 	addiu	sp,sp,32
     dbc:	03e00008 	jr	ra
     dc0:	00000000 	nop

00000dc4 <func_809E1004>:
     dc4:	27bdffe0 	addiu	sp,sp,-32
     dc8:	afb00018 	sw	s0,24(sp)
     dcc:	00808025 	move	s0,a0
     dd0:	afbf001c 	sw	ra,28(sp)
     dd4:	afa50024 	sw	a1,36(sp)
     dd8:	0c000000 	jal	0 <EnCrow_Init>
     ddc:	2484017c 	addiu	a0,a0,380
     de0:	960e0088 	lhu	t6,136(s0)
     de4:	260400b6 	addiu	a0,s0,182
     de8:	24060003 	li	a2,3
     dec:	31cf0008 	andi	t7,t6,0x8
     df0:	11e00004 	beqz	t7,e04 <func_809E1004+0x40>
     df4:	24070c00 	li	a3,3072
     df8:	8618007e 	lh	t8,126(s0)
     dfc:	10000005 	b	e14 <func_809E1004+0x50>
     e00:	a61801c8 	sh	t8,456(s0)
     e04:	8619008a 	lh	t9,138(s0)
     e08:	34018000 	li	at,0x8000
     e0c:	03214021 	addu	t0,t9,at
     e10:	a60801c8 	sh	t0,456(s0)
     e14:	0c000000 	jal	0 <EnCrow_Init>
     e18:	860501c8 	lh	a1,456(s0)
     e1c:	260400b4 	addiu	a0,s0,180
     e20:	860501c6 	lh	a1,454(s0)
     e24:	24060005 	li	a2,5
     e28:	0c000000 	jal	0 <EnCrow_Init>
     e2c:	24070100 	li	a3,256
     e30:	860201c4 	lh	v0,452(s0)
     e34:	10400003 	beqz	v0,e44 <func_809E1004+0x80>
     e38:	2449ffff 	addiu	t1,v0,-1
     e3c:	a60901c4 	sh	t1,452(s0)
     e40:	860201c4 	lh	v0,452(s0)
     e44:	54400004 	bnezl	v0,e58 <func_809E1004+0x94>
     e48:	8fbf001c 	lw	ra,28(sp)
     e4c:	0c000000 	jal	0 <EnCrow_Init>
     e50:	02002025 	move	a0,s0
     e54:	8fbf001c 	lw	ra,28(sp)
     e58:	8fb00018 	lw	s0,24(sp)
     e5c:	27bd0020 	addiu	sp,sp,32
     e60:	03e00008 	jr	ra
     e64:	00000000 	nop

00000e68 <func_809E10A8>:
     e68:	27bdffe0 	addiu	sp,sp,-32
     e6c:	afbf001c 	sw	ra,28(sp)
     e70:	afb00018 	sw	s0,24(sp)
     e74:	afa50024 	sw	a1,36(sp)
     e78:	848201c4 	lh	v0,452(a0)
     e7c:	00808025 	move	s0,a0
     e80:	10400003 	beqz	v0,e90 <func_809E10A8+0x28>
     e84:	244effff 	addiu	t6,v0,-1
     e88:	a48e01c4 	sh	t6,452(a0)
     e8c:	848201c4 	lh	v0,452(a0)
     e90:	54400024 	bnezl	v0,f24 <func_809E10A8+0xbc>
     e94:	8fbf001c 	lw	ra,28(sp)
     e98:	0c000000 	jal	0 <EnCrow_Init>
     e9c:	2604017c 	addiu	a0,s0,380
     ea0:	8618001c 	lh	t8,28(s0)
     ea4:	3c0f0000 	lui	t7,0x0
     ea8:	25ef0000 	addiu	t7,t7,0
     eac:	13000004 	beqz	t8,ec0 <func_809E10A8+0x58>
     eb0:	ae0f0134 	sw	t7,308(s0)
     eb4:	3c010000 	lui	at,0x0
     eb8:	10000003 	b	ec8 <func_809E10A8+0x60>
     ebc:	c4200000 	lwc1	$f0,0(at)
     ec0:	3c010000 	lui	at,0x0
     ec4:	c4200000 	lwc1	$f0,0(at)
     ec8:	3c010000 	lui	at,0x0
     ecc:	c4240000 	lwc1	$f4,0(at)
     ed0:	44050000 	mfc1	a1,$f0
     ed4:	26040050 	addiu	a0,s0,80
     ed8:	46040182 	mul.s	$f6,$f0,$f4
     edc:	44063000 	mfc1	a2,$f6
     ee0:	0c000000 	jal	0 <EnCrow_Init>
     ee4:	00000000 	nop
     ee8:	1040000a 	beqz	v0,f14 <func_809E10A8+0xac>
     eec:	2401ffef 	li	at,-17
     ef0:	8e190004 	lw	t9,4(s0)
     ef4:	240b0001 	li	t3,1
     ef8:	a20b00af 	sb	t3,175(s0)
     efc:	37280001 	ori	t0,t9,0x1
     f00:	ae080004 	sw	t0,4(s0)
     f04:	01015024 	and	t2,t0,at
     f08:	ae0a0004 	sw	t2,4(s0)
     f0c:	0c000000 	jal	0 <EnCrow_Init>
     f10:	02002025 	move	a0,s0
     f14:	c6000050 	lwc1	$f0,80(s0)
     f18:	e6000054 	swc1	$f0,84(s0)
     f1c:	e6000058 	swc1	$f0,88(s0)
     f20:	8fbf001c 	lw	ra,28(sp)
     f24:	8fb00018 	lw	s0,24(sp)
     f28:	27bd0020 	addiu	sp,sp,32
     f2c:	03e00008 	jr	ra
     f30:	00000000 	nop

00000f34 <func_809E1174>:
     f34:	27bdffe0 	addiu	sp,sp,-32
     f38:	afbf001c 	sw	ra,28(sp)
     f3c:	afb00018 	sw	s0,24(sp)
     f40:	afa50024 	sw	a1,36(sp)
     f44:	90820249 	lbu	v0,585(a0)
     f48:	00808025 	move	s0,a0
     f4c:	24060001 	li	a2,1
     f50:	304e0002 	andi	t6,v0,0x2
     f54:	11c0001d 	beqz	t6,fcc <func_809E1174+0x98>
     f58:	304ffffd 	andi	t7,v0,0xfffd
     f5c:	a08f0249 	sb	t7,585(a0)
     f60:	0c000000 	jal	0 <EnCrow_Init>
     f64:	8e050254 	lw	a1,596(s0)
     f68:	920200b1 	lbu	v0,177(s0)
     f6c:	24010001 	li	at,1
     f70:	14400004 	bnez	v0,f84 <func_809E1174+0x50>
     f74:	00000000 	nop
     f78:	921800b0 	lbu	t8,176(s0)
     f7c:	53000014 	beqzl	t8,fd0 <func_809E1174+0x9c>
     f80:	8fbf001c 	lw	ra,28(sp)
     f84:	14410005 	bne	v0,at,f9c <func_809E1174+0x68>
     f88:	00000000 	nop
     f8c:	0c000000 	jal	0 <EnCrow_Init>
     f90:	02002025 	move	a0,s0
     f94:	1000000e 	b	fd0 <func_809E1174+0x9c>
     f98:	8fbf001c 	lw	ra,28(sp)
     f9c:	0c000000 	jal	0 <EnCrow_Init>
     fa0:	02002025 	move	a0,s0
     fa4:	8e190004 	lw	t9,4(s0)
     fa8:	2401fffe 	li	at,-2
     fac:	02002825 	move	a1,s0
     fb0:	03214024 	and	t0,t9,at
     fb4:	ae080004 	sw	t0,4(s0)
     fb8:	0c000000 	jal	0 <EnCrow_Init>
     fbc:	8fa40024 	lw	a0,36(sp)
     fc0:	02002025 	move	a0,s0
     fc4:	0c000000 	jal	0 <EnCrow_Init>
     fc8:	8fa50024 	lw	a1,36(sp)
     fcc:	8fbf001c 	lw	ra,28(sp)
     fd0:	8fb00018 	lw	s0,24(sp)
     fd4:	27bd0020 	addiu	sp,sp,32
     fd8:	03e00008 	jr	ra
     fdc:	00000000 	nop

00000fe0 <EnCrow_Update>:
     fe0:	27bdffc0 	addiu	sp,sp,-64
     fe4:	afbf0024 	sw	ra,36(sp)
     fe8:	afb10020 	sw	s1,32(sp)
     fec:	afb0001c 	sw	s0,28(sp)
     ff0:	00808025 	move	s0,a0
     ff4:	0c000000 	jal	0 <EnCrow_Init>
     ff8:	00a08825 	move	s1,a1
     ffc:	8e1901c0 	lw	t9,448(s0)
    1000:	02002025 	move	a0,s0
    1004:	02202825 	move	a1,s1
    1008:	0320f809 	jalr	t9
    100c:	00000000 	nop
    1010:	860f00b4 	lh	t7,180(s0)
    1014:	860e00b6 	lh	t6,182(s0)
    1018:	3c080000 	lui	t0,0x0
    101c:	000fc023 	negu	t8,t7
    1020:	c6040050 	lwc1	$f4,80(s0)
    1024:	3c0142c8 	lui	at,0x42c8
    1028:	a6180030 	sh	t8,48(s0)
    102c:	25080000 	addiu	t0,t0,0
    1030:	a60e0032 	sh	t6,50(s0)
    1034:	44813000 	mtc1	at,$f6
    1038:	afa8002c 	sw	t0,44(sp)
    103c:	8e0901c0 	lw	t1,448(s0)
    1040:	46062002 	mul.s	$f0,$f4,$f6
    1044:	51090027 	beql	t0,t1,10e4 <EnCrow_Update+0x104>
    1048:	44809000 	mtc1	zero,$f18
    104c:	920a00af 	lbu	t2,175(s0)
    1050:	3c0141a0 	lui	at,0x41a0
    1054:	02002025 	move	a0,s0
    1058:	5140000a 	beqzl	t2,1084 <EnCrow_Update+0xa4>
    105c:	44808000 	mtc1	zero,$f16
    1060:	44814000 	mtc1	at,$f8
    1064:	02002025 	move	a0,s0
    1068:	e7a00030 	swc1	$f0,48(sp)
    106c:	46004282 	mul.s	$f10,$f8,$f0
    1070:	0c000000 	jal	0 <EnCrow_Init>
    1074:	e7aa0034 	swc1	$f10,52(sp)
    1078:	10000006 	b	1094 <EnCrow_Update+0xb4>
    107c:	c7a00030 	lwc1	$f0,48(sp)
    1080:	44808000 	mtc1	zero,$f16
    1084:	e7a00030 	swc1	$f0,48(sp)
    1088:	0c000000 	jal	0 <EnCrow_Init>
    108c:	e7b00034 	swc1	$f16,52(sp)
    1090:	c7a00030 	lwc1	$f0,48(sp)
    1094:	3c014140 	lui	at,0x4140
    1098:	44819000 	mtc1	at,$f18
    109c:	3c0141c8 	lui	at,0x41c8
    10a0:	44813000 	mtc1	at,$f6
    10a4:	46009102 	mul.s	$f4,$f18,$f0
    10a8:	3c014248 	lui	at,0x4248
    10ac:	44815000 	mtc1	at,$f10
    10b0:	46003202 	mul.s	$f8,$f6,$f0
    10b4:	240b0007 	li	t3,7
    10b8:	afab0014 	sw	t3,20(sp)
    10bc:	46005402 	mul.s	$f16,$f10,$f0
    10c0:	44062000 	mfc1	a2,$f4
    10c4:	02202025 	move	a0,s1
    10c8:	02002825 	move	a1,s0
    10cc:	44074000 	mfc1	a3,$f8
    10d0:	0c000000 	jal	0 <EnCrow_Init>
    10d4:	e7b00010 	swc1	$f16,16(sp)
    10d8:	10000005 	b	10f0 <EnCrow_Update+0x110>
    10dc:	c6040024 	lwc1	$f4,36(s0)
    10e0:	44809000 	mtc1	zero,$f18
    10e4:	00000000 	nop
    10e8:	e7b20034 	swc1	$f18,52(sp)
    10ec:	c6040024 	lwc1	$f4,36(s0)
    10f0:	8e190254 	lw	t9,596(s0)
    10f4:	3c0b0000 	lui	t3,0x0
    10f8:	4600218d 	trunc.w.s	$f6,$f4
    10fc:	3c010001 	lui	at,0x1
    1100:	256b0000 	addiu	t3,t3,0
    1104:	34211e60 	ori	at,at,0x1e60
    1108:	440d3000 	mfc1	t5,$f6
    110c:	02212821 	addu	a1,s1,at
    1110:	02202025 	move	a0,s1
    1114:	a72d0030 	sh	t5,48(t9)
    1118:	c7aa0034 	lwc1	$f10,52(sp)
    111c:	c6080028 	lwc1	$f8,40(s0)
    1120:	8e180254 	lw	t8,596(s0)
    1124:	460a4400 	add.s	$f16,$f8,$f10
    1128:	4600848d 	trunc.w.s	$f18,$f16
    112c:	440f9000 	mfc1	t7,$f18
    1130:	00000000 	nop
    1134:	a70f0032 	sh	t7,50(t8)
    1138:	c604002c 	lwc1	$f4,44(s0)
    113c:	8e0a0254 	lw	t2,596(s0)
    1140:	4600218d 	trunc.w.s	$f6,$f4
    1144:	44093000 	mfc1	t1,$f6
    1148:	00000000 	nop
    114c:	a5490034 	sh	t1,52(t2)
    1150:	8e0c01c0 	lw	t4,448(s0)
    1154:	556c0004 	bnel	t3,t4,1168 <EnCrow_Update+0x188>
    1158:	920d0249 	lbu	t5,585(s0)
    115c:	0c000000 	jal	0 <EnCrow_Init>
    1160:	26060238 	addiu	a2,s0,568
    1164:	920d0249 	lbu	t5,585(s0)
    1168:	3c010001 	lui	at,0x1
    116c:	34211e60 	ori	at,at,0x1e60
    1170:	31b90001 	andi	t9,t5,0x1
    1174:	13200004 	beqz	t9,1188 <EnCrow_Update+0x1a8>
    1178:	02202025 	move	a0,s1
    117c:	02212821 	addu	a1,s1,at
    1180:	0c000000 	jal	0 <EnCrow_Init>
    1184:	26060238 	addiu	a2,s0,568
    1188:	8fae002c 	lw	t6,44(sp)
    118c:	8e0f01c0 	lw	t7,448(s0)
    1190:	3c010001 	lui	at,0x1
    1194:	34211e60 	ori	at,at,0x1e60
    1198:	11cf0004 	beq	t6,t7,11ac <EnCrow_Update+0x1cc>
    119c:	02202025 	move	a0,s1
    11a0:	02212821 	addu	a1,s1,at
    11a4:	0c000000 	jal	0 <EnCrow_Init>
    11a8:	26060238 	addiu	a2,s0,568
    11ac:	02002025 	move	a0,s0
    11b0:	0c000000 	jal	0 <EnCrow_Init>
    11b4:	8fa50034 	lw	a1,52(sp)
    11b8:	921800af 	lbu	t8,175(s0)
    11bc:	2604017c 	addiu	a0,s0,380
    11c0:	53000008 	beqzl	t8,11e4 <EnCrow_Update+0x204>
    11c4:	8fbf0024 	lw	ra,36(sp)
    11c8:	0c000000 	jal	0 <EnCrow_Init>
    11cc:	3c054040 	lui	a1,0x4040
    11d0:	10400003 	beqz	v0,11e0 <EnCrow_Update+0x200>
    11d4:	02002025 	move	a0,s0
    11d8:	0c000000 	jal	0 <EnCrow_Init>
    11dc:	24053897 	li	a1,14487
    11e0:	8fbf0024 	lw	ra,36(sp)
    11e4:	8fb0001c 	lw	s0,28(sp)
    11e8:	8fb10020 	lw	s1,32(sp)
    11ec:	03e00008 	jr	ra
    11f0:	27bd0040 	addiu	sp,sp,64

000011f4 <func_809E1434>:
    11f4:	27bdffe8 	addiu	sp,sp,-24
    11f8:	afa40018 	sw	a0,24(sp)
    11fc:	8fa4002c 	lw	a0,44(sp)
    1200:	afbf0014 	sw	ra,20(sp)
    1204:	afa60020 	sw	a2,32(sp)
    1208:	afa70024 	sw	a3,36(sp)
    120c:	908e00af 	lbu	t6,175(a0)
    1210:	24010007 	li	at,7
    1214:	51c0002e 	beqzl	t6,12d0 <func_809E1434+0xdc>
    1218:	8fbf0014 	lw	ra,20(sp)
    121c:	14a10013 	bne	a1,at,126c <func_809E1434+0x78>
    1220:	3c010000 	lui	at,0x0
    1224:	c4260000 	lwc1	$f6,0(at)
    1228:	c4840194 	lwc1	$f4,404(a0)
    122c:	46062302 	mul.s	$f12,$f4,$f6
    1230:	0c000000 	jal	0 <EnCrow_Init>
    1234:	00000000 	nop
    1238:	8fa20028 	lw	v0,40(sp)
    123c:	3c014540 	lui	at,0x4540
    1240:	44818000 	mtc1	at,$f16
    1244:	844f0002 	lh	t7,2(v0)
    1248:	46008482 	mul.s	$f18,$f16,$f0
    124c:	448f4000 	mtc1	t7,$f8
    1250:	00000000 	nop
    1254:	468042a0 	cvt.s.w	$f10,$f8
    1258:	46125100 	add.s	$f4,$f10,$f18
    125c:	4600218d 	trunc.w.s	$f6,$f4
    1260:	44193000 	mfc1	t9,$f6
    1264:	10000019 	b	12cc <func_809E1434+0xd8>
    1268:	a4590002 	sh	t9,2(v0)
    126c:	24010008 	li	at,8
    1270:	14a10016 	bne	a1,at,12cc <func_809E1434+0xd8>
    1274:	3c014020 	lui	at,0x4020
    1278:	44818000 	mtc1	at,$f16
    127c:	c4880194 	lwc1	$f8,404(a0)
    1280:	3c010000 	lui	at,0x0
    1284:	c4320000 	lwc1	$f18,0(at)
    1288:	46104280 	add.s	$f10,$f8,$f16
    128c:	46125302 	mul.s	$f12,$f10,$f18
    1290:	0c000000 	jal	0 <EnCrow_Init>
    1294:	00000000 	nop
    1298:	8fa20028 	lw	v0,40(sp)
    129c:	3c0145a0 	lui	at,0x45a0
    12a0:	44814000 	mtc1	at,$f8
    12a4:	84480002 	lh	t0,2(v0)
    12a8:	46004402 	mul.s	$f16,$f8,$f0
    12ac:	44882000 	mtc1	t0,$f4
    12b0:	00000000 	nop
    12b4:	468021a0 	cvt.s.w	$f6,$f4
    12b8:	46103280 	add.s	$f10,$f6,$f16
    12bc:	4600548d 	trunc.w.s	$f18,$f10
    12c0:	440a9000 	mfc1	t2,$f18
    12c4:	00000000 	nop
    12c8:	a44a0002 	sh	t2,2(v0)
    12cc:	8fbf0014 	lw	ra,20(sp)
    12d0:	27bd0018 	addiu	sp,sp,24
    12d4:	00001025 	move	v0,zero
    12d8:	03e00008 	jr	ra
    12dc:	00000000 	nop

000012e0 <func_809E1520>:
    12e0:	27bdffd8 	addiu	sp,sp,-40
    12e4:	afa60030 	sw	a2,48(sp)
    12e8:	24010002 	li	at,2
    12ec:	00a03025 	move	a2,a1
    12f0:	afbf0014 	sw	ra,20(sp)
    12f4:	afa40028 	sw	a0,40(sp)
    12f8:	afa5002c 	sw	a1,44(sp)
    12fc:	14a1000d 	bne	a1,at,1334 <func_809E1520+0x54>
    1300:	afa70034 	sw	a3,52(sp)
    1304:	8fa50038 	lw	a1,56(sp)
    1308:	3c040000 	lui	a0,0x0
    130c:	24840000 	addiu	a0,a0,0
    1310:	0c000000 	jal	0 <EnCrow_Init>
    1314:	24a5014c 	addiu	a1,a1,332
    1318:	8fa20038 	lw	v0,56(sp)
    131c:	3c0141a0 	lui	at,0x41a0
    1320:	44813000 	mtc1	at,$f6
    1324:	c4440150 	lwc1	$f4,336(v0)
    1328:	46062201 	sub.s	$f8,$f4,$f6
    132c:	10000018 	b	1390 <func_809E1520+0xb0>
    1330:	e4480150 	swc1	$f8,336(v0)
    1334:	24010004 	li	at,4
    1338:	10c10005 	beq	a2,at,1350 <func_809E1520+0x70>
    133c:	3c040000 	lui	a0,0x0
    1340:	24010006 	li	at,6
    1344:	10c10002 	beq	a2,at,1350 <func_809E1520+0x70>
    1348:	24010008 	li	at,8
    134c:	14c10010 	bne	a2,at,1390 <func_809E1520+0xb0>
    1350:	00067843 	sra	t7,a2,0x1
    1354:	8fae0038 	lw	t6,56(sp)
    1358:	000fc080 	sll	t8,t7,0x2
    135c:	030fc023 	subu	t8,t8,t7
    1360:	0018c080 	sll	t8,t8,0x2
    1364:	01d82821 	addu	a1,t6,t8
    1368:	24a50140 	addiu	a1,a1,320
    136c:	afa5001c 	sw	a1,28(sp)
    1370:	0c000000 	jal	0 <EnCrow_Init>
    1374:	24840000 	addiu	a0,a0,0
    1378:	8fa5001c 	lw	a1,28(sp)
    137c:	3c0141a0 	lui	at,0x41a0
    1380:	44818000 	mtc1	at,$f16
    1384:	c4aa0004 	lwc1	$f10,4(a1)
    1388:	46105481 	sub.s	$f18,$f10,$f16
    138c:	e4b20004 	swc1	$f18,4(a1)
    1390:	8fbf0014 	lw	ra,20(sp)
    1394:	27bd0028 	addiu	sp,sp,40
    1398:	03e00008 	jr	ra
    139c:	00000000 	nop

000013a0 <EnCrow_Draw>:
    13a0:	27bdffd8 	addiu	sp,sp,-40
    13a4:	afbf0024 	sw	ra,36(sp)
    13a8:	afa40028 	sw	a0,40(sp)
    13ac:	afa5002c 	sw	a1,44(sp)
    13b0:	0c000000 	jal	0 <EnCrow_Init>
    13b4:	8ca40000 	lw	a0,0(a1)
    13b8:	8fa20028 	lw	v0,40(sp)
    13bc:	3c0f0000 	lui	t7,0x0
    13c0:	3c180000 	lui	t8,0x0
    13c4:	8c450180 	lw	a1,384(v0)
    13c8:	8c46019c 	lw	a2,412(v0)
    13cc:	9047017e 	lbu	a3,382(v0)
    13d0:	27180000 	addiu	t8,t8,0
    13d4:	25ef0000 	addiu	t7,t7,0
    13d8:	afaf0010 	sw	t7,16(sp)
    13dc:	afb80014 	sw	t8,20(sp)
    13e0:	8fa4002c 	lw	a0,44(sp)
    13e4:	0c000000 	jal	0 <EnCrow_Init>
    13e8:	afa20018 	sw	v0,24(sp)
    13ec:	8fbf0024 	lw	ra,36(sp)
    13f0:	27bd0028 	addiu	sp,sp,40
    13f4:	03e00008 	jr	ra
    13f8:	00000000 	nop
    13fc:	00000000 	nop
