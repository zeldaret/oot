
build/src/overlays/actors/ovl_En_Dodojr/z_en_dodojr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDodojr_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb00028 	sw	s0,40(sp)
       8:	00808025 	move	s0,a0
       c:	afbf002c 	sw	ra,44(sp)
      10:	afa50044 	sw	a1,68(sp)
      14:	24050000 	li	a1,0
      18:	248400b4 	addiu	a0,a0,180
      1c:	00003025 	move	a2,zero
      20:	0c000000 	jal	0 <EnDodojr_Init>
      24:	3c074190 	lui	a3,0x4190
      28:	3c060600 	lui	a2,0x600
      2c:	3c070600 	lui	a3,0x600
      30:	260e020c 	addiu	t6,s0,524
      34:	260f0266 	addiu	t7,s0,614
      38:	2418000f 	li	t8,15
      3c:	afb80018 	sw	t8,24(sp)
      40:	afaf0014 	sw	t7,20(sp)
      44:	afae0010 	sw	t6,16(sp)
      48:	24e709d4 	addiu	a3,a3,2516
      4c:	24c620e0 	addiu	a2,a2,8416
      50:	8fa40044 	lw	a0,68(sp)
      54:	0c000000 	jal	0 <EnDodojr_Init>
      58:	2605014c 	addiu	a1,s0,332
      5c:	26050194 	addiu	a1,s0,404
      60:	afa50034 	sw	a1,52(sp)
      64:	0c000000 	jal	0 <EnDodojr_Init>
      68:	8fa40044 	lw	a0,68(sp)
      6c:	3c070000 	lui	a3,0x0
      70:	8fa50034 	lw	a1,52(sp)
      74:	24e70000 	addiu	a3,a3,0
      78:	8fa40044 	lw	a0,68(sp)
      7c:	0c000000 	jal	0 <EnDodojr_Init>
      80:	02003025 	move	a2,s0
      84:	0c000000 	jal	0 <EnDodojr_Init>
      88:	24040004 	li	a0,4
      8c:	3c060000 	lui	a2,0x0
      90:	24c60000 	addiu	a2,a2,0
      94:	26040098 	addiu	a0,s0,152
      98:	0c000000 	jal	0 <EnDodojr_Init>
      9c:	00402825 	move	a1,v0
      a0:	8e080004 	lw	t0,4(s0)
      a4:	2401fffe 	li	at,-2
      a8:	2419000e 	li	t9,14
      ac:	3c053ca3 	lui	a1,0x3ca3
      b0:	01014824 	and	t1,t0,at
      b4:	a2190117 	sb	t9,279(s0)
      b8:	ae090004 	sw	t1,4(s0)
      bc:	34a5d70a 	ori	a1,a1,0xd70a
      c0:	0c000000 	jal	0 <EnDodojr_Init>
      c4:	02002025 	move	a0,s0
      c8:	3c0a0000 	lui	t2,0x0
      cc:	254a0000 	addiu	t2,t2,0
      d0:	ae0a0190 	sw	t2,400(s0)
      d4:	8fbf002c 	lw	ra,44(sp)
      d8:	8fb00028 	lw	s0,40(sp)
      dc:	27bd0040 	addiu	sp,sp,64
      e0:	03e00008 	jr	ra
      e4:	00000000 	nop

000000e8 <EnDodojr_Destroy>:
      e8:	27bdffe8 	addiu	sp,sp,-24
      ec:	00803025 	move	a2,a0
      f0:	afbf0014 	sw	ra,20(sp)
      f4:	00a02025 	move	a0,a1
      f8:	0c000000 	jal	0 <EnDodojr_Init>
      fc:	24c50194 	addiu	a1,a2,404
     100:	8fbf0014 	lw	ra,20(sp)
     104:	27bd0018 	addiu	sp,sp,24
     108:	03e00008 	jr	ra
     10c:	00000000 	nop

00000110 <func_809F64D0>:
     110:	27bdffe0 	addiu	sp,sp,-32
     114:	afbf001c 	sw	ra,28(sp)
     118:	afa40020 	sw	a0,32(sp)
     11c:	0c000000 	jal	0 <EnDodojr_Init>
     120:	2405180e 	li	a1,6158
     124:	240e0008 	li	t6,8
     128:	afae0010 	sw	t6,16(sp)
     12c:	8fa40020 	lw	a0,32(sp)
     130:	24054000 	li	a1,16384
     134:	240600c8 	li	a2,200
     138:	0c000000 	jal	0 <EnDodojr_Init>
     13c:	00003825 	move	a3,zero
     140:	8fbf001c 	lw	ra,28(sp)
     144:	27bd0020 	addiu	sp,sp,32
     148:	03e00008 	jr	ra
     14c:	00000000 	nop

00000150 <func_809F6510>:
     150:	27bdff58 	addiu	sp,sp,-168
     154:	3c0e0000 	lui	t6,0x0
     158:	afbf006c 	sw	ra,108(sp)
     15c:	afbe0068 	sw	s8,104(sp)
     160:	afb70064 	sw	s7,100(sp)
     164:	afb60060 	sw	s6,96(sp)
     168:	afb5005c 	sw	s5,92(sp)
     16c:	afb40058 	sw	s4,88(sp)
     170:	afb30054 	sw	s3,84(sp)
     174:	afb20050 	sw	s2,80(sp)
     178:	afb1004c 	sw	s1,76(sp)
     17c:	afb00048 	sw	s0,72(sp)
     180:	f7b80040 	sdc1	$f24,64(sp)
     184:	f7b60038 	sdc1	$f22,56(sp)
     188:	f7b40030 	sdc1	$f20,48(sp)
     18c:	25ce0000 	addiu	t6,t6,0
     190:	8dd80000 	lw	t8,0(t6)
     194:	27b500a4 	addiu	s5,sp,164
     198:	3c190000 	lui	t9,0x0
     19c:	27390000 	addiu	t9,t9,0
     1a0:	aeb80000 	sw	t8,0(s5)
     1a4:	8f290000 	lw	t1,0(t9)
     1a8:	27b600a0 	addiu	s6,sp,160
     1ac:	3c0a0000 	lui	t2,0x0
     1b0:	254a0000 	addiu	t2,t2,0
     1b4:	aec90000 	sw	t1,0(s6)
     1b8:	8d4c0000 	lw	t4,0(t2)
     1bc:	27b70094 	addiu	s7,sp,148
     1c0:	3c0d0000 	lui	t5,0x0
     1c4:	aeec0000 	sw	t4,0(s7)
     1c8:	8d4b0004 	lw	t3,4(t2)
     1cc:	25ad0000 	addiu	t5,t5,0
     1d0:	27be0088 	addiu	s8,sp,136
     1d4:	aeeb0004 	sw	t3,4(s7)
     1d8:	8d4c0008 	lw	t4,8(t2)
     1dc:	00809025 	move	s2,a0
     1e0:	00a0a025 	move	s4,a1
     1e4:	aeec0008 	sw	t4,8(s7)
     1e8:	8daf0000 	lw	t7,0(t5)
     1ec:	afcf0000 	sw	t7,0(s8)
     1f0:	8dae0004 	lw	t6,4(t5)
     1f4:	afce0004 	sw	t6,4(s8)
     1f8:	8daf0008 	lw	t7,8(t5)
     1fc:	afcf0008 	sw	t7,8(s8)
     200:	0c000000 	jal	0 <EnDodojr_Init>
     204:	afa600b0 	sw	a2,176(sp)
     208:	3c013f00 	lui	at,0x3f00
     20c:	4481a000 	mtc1	at,$f20
     210:	3c014780 	lui	at,0x4780
     214:	44813000 	mtc1	at,$f6
     218:	46140101 	sub.s	$f4,$f0,$f20
     21c:	8fa600b0 	lw	a2,176(sp)
     220:	c65001f4 	lwc1	$f16,500(s2)
     224:	3c190001 	lui	t9,0x1
     228:	46062202 	mul.s	$f8,$f4,$f6
     22c:	00c08825 	move	s1,a2
     230:	e7b00080 	swc1	$f16,128(sp)
     234:	4600428d 	trunc.w.s	$f10,$f8
     238:	44105000 	mfc1	s0,$f10
     23c:	00000000 	nop
     240:	00108400 	sll	s0,s0,0x10
     244:	04c0003b 	bltz	a2,334 <func_809F6510+0x1e4>
     248:	00108403 	sra	s0,s0,0x10
     24c:	0326001a 	div	zero,t9,a2
     250:	14c00002 	bnez	a2,25c <func_809F6510+0x10c>
     254:	00000000 	nop
     258:	0007000d 	break	0x7
     25c:	2401ffff 	li	at,-1
     260:	14c10004 	bne	a2,at,274 <func_809F6510+0x124>
     264:	3c018000 	lui	at,0x8000
     268:	17210002 	bne	t9,at,274 <func_809F6510+0x124>
     26c:	00000000 	nop
     270:	0006000d 	break	0x6
     274:	3c0141b0 	lui	at,0x41b0
     278:	4481c000 	mtc1	at,$f24
     27c:	3c014080 	lui	at,0x4080
     280:	00009812 	mflo	s3
     284:	00139c00 	sll	s3,s3,0x10
     288:	4481b000 	mtc1	at,$f22
     28c:	00139c03 	sra	s3,s3,0x10
     290:	0c000000 	jal	0 <EnDodojr_Init>
     294:	00000000 	nop
     298:	46140481 	sub.s	$f18,$f0,$f20
     29c:	46169102 	mul.s	$f4,$f18,$f22
     2a0:	0c000000 	jal	0 <EnDodojr_Init>
     2a4:	e7a40088 	swc1	$f4,136(sp)
     2a8:	46140181 	sub.s	$f6,$f0,$f20
     2ac:	00102400 	sll	a0,s0,0x10
     2b0:	00042403 	sra	a0,a0,0x10
     2b4:	46163202 	mul.s	$f8,$f6,$f22
     2b8:	0c000000 	jal	0 <EnDodojr_Init>
     2bc:	e7a80090 	swc1	$f8,144(sp)
     2c0:	46180282 	mul.s	$f10,$f0,$f24
     2c4:	c65001f0 	lwc1	$f16,496(s2)
     2c8:	00102400 	sll	a0,s0,0x10
     2cc:	00042403 	sra	a0,a0,0x10
     2d0:	46105480 	add.s	$f18,$f10,$f16
     2d4:	0c000000 	jal	0 <EnDodojr_Init>
     2d8:	e7b2007c 	swc1	$f18,124(sp)
     2dc:	46180102 	mul.s	$f4,$f0,$f24
     2e0:	c64601f8 	lwc1	$f6,504(s2)
     2e4:	24080078 	li	t0,120
     2e8:	24090028 	li	t1,40
     2ec:	240a000a 	li	t2,10
     2f0:	afaa0020 	sw	t2,32(sp)
     2f4:	afa9001c 	sw	t1,28(sp)
     2f8:	46062200 	add.s	$f8,$f4,$f6
     2fc:	afa80018 	sw	t0,24(sp)
     300:	afb60014 	sw	s6,20(sp)
     304:	afb50010 	sw	s5,16(sp)
     308:	e7a80084 	swc1	$f8,132(sp)
     30c:	02802025 	move	a0,s4
     310:	27a5007c 	addiu	a1,sp,124
     314:	02e03025 	move	a2,s7
     318:	0c000000 	jal	0 <EnDodojr_Init>
     31c:	03c03825 	move	a3,s8
     320:	02138021 	addu	s0,s0,s3
     324:	00108400 	sll	s0,s0,0x10
     328:	2631ffff 	addiu	s1,s1,-1
     32c:	0621ffd8 	bgez	s1,290 <func_809F6510+0x140>
     330:	00108403 	sra	s0,s0,0x10
     334:	8fbf006c 	lw	ra,108(sp)
     338:	d7b40030 	ldc1	$f20,48(sp)
     33c:	d7b60038 	ldc1	$f22,56(sp)
     340:	d7b80040 	ldc1	$f24,64(sp)
     344:	8fb00048 	lw	s0,72(sp)
     348:	8fb1004c 	lw	s1,76(sp)
     34c:	8fb20050 	lw	s2,80(sp)
     350:	8fb30054 	lw	s3,84(sp)
     354:	8fb40058 	lw	s4,88(sp)
     358:	8fb5005c 	lw	s5,92(sp)
     35c:	8fb60060 	lw	s6,96(sp)
     360:	8fb70064 	lw	s7,100(sp)
     364:	8fbe0068 	lw	s8,104(sp)
     368:	03e00008 	jr	ra
     36c:	27bd00a8 	addiu	sp,sp,168

00000370 <func_809F6730>:
     370:	27bdffa0 	addiu	sp,sp,-96
     374:	3c0e0000 	lui	t6,0x0
     378:	3c0f0000 	lui	t7,0x0
     37c:	8dce0000 	lw	t6,0(t6)
     380:	8def0000 	lw	t7,0(t7)
     384:	3c190000 	lui	t9,0x0
     388:	afbf002c 	sw	ra,44(sp)
     38c:	afa40060 	sw	a0,96(sp)
     390:	afa50064 	sw	a1,100(sp)
     394:	afa60068 	sw	a2,104(sp)
     398:	27390000 	addiu	t9,t9,0
     39c:	afae005c 	sw	t6,92(sp)
     3a0:	afaf0058 	sw	t7,88(sp)
     3a4:	8f290000 	lw	t1,0(t9)
     3a8:	27b8004c 	addiu	t8,sp,76
     3ac:	8f280004 	lw	t0,4(t9)
     3b0:	af090000 	sw	t1,0(t8)
     3b4:	8f290008 	lw	t1,8(t9)
     3b8:	3c0b0000 	lui	t3,0x0
     3bc:	256b0000 	addiu	t3,t3,0
     3c0:	af080004 	sw	t0,4(t8)
     3c4:	af090008 	sw	t1,8(t8)
     3c8:	8d6d0000 	lw	t5,0(t3)
     3cc:	27aa0040 	addiu	t2,sp,64
     3d0:	8d6c0004 	lw	t4,4(t3)
     3d4:	ad4d0000 	sw	t5,0(t2)
     3d8:	8d6d0008 	lw	t5,8(t3)
     3dc:	ad4c0004 	sw	t4,4(t2)
     3e0:	0c000000 	jal	0 <EnDodojr_Init>
     3e4:	ad4d0008 	sw	t5,8(t2)
     3e8:	3c013f00 	lui	at,0x3f00
     3ec:	44812000 	mtc1	at,$f4
     3f0:	3c014780 	lui	at,0x4780
     3f4:	44814000 	mtc1	at,$f8
     3f8:	46040181 	sub.s	$f6,$f0,$f4
     3fc:	8fb80060 	lw	t8,96(sp)
     400:	46083282 	mul.s	$f10,$f6,$f8
     404:	4600540d 	trunc.w.s	$f16,$f10
     408:	440f8000 	mfc1	t7,$f16
     40c:	00000000 	nop
     410:	a7af0032 	sh	t7,50(sp)
     414:	c7120080 	lwc1	$f18,128(t8)
     418:	0c000000 	jal	0 <EnDodojr_Init>
     41c:	e7b20038 	swc1	$f18,56(sp)
     420:	3c013f00 	lui	at,0x3f00
     424:	44812000 	mtc1	at,$f4
     428:	3c014000 	lui	at,0x4000
     42c:	44814000 	mtc1	at,$f8
     430:	46040181 	sub.s	$f6,$f0,$f4
     434:	46083282 	mul.s	$f10,$f6,$f8
     438:	0c000000 	jal	0 <EnDodojr_Init>
     43c:	e7aa0040 	swc1	$f10,64(sp)
     440:	3c013f00 	lui	at,0x3f00
     444:	44818000 	mtc1	at,$f16
     448:	3c014000 	lui	at,0x4000
     44c:	44812000 	mtc1	at,$f4
     450:	46100481 	sub.s	$f18,$f0,$f16
     454:	87a40032 	lh	a0,50(sp)
     458:	46049182 	mul.s	$f6,$f18,$f4
     45c:	0c000000 	jal	0 <EnDodojr_Init>
     460:	e7a60048 	swc1	$f6,72(sp)
     464:	3c014130 	lui	at,0x4130
     468:	44814000 	mtc1	at,$f8
     46c:	8fb90068 	lw	t9,104(sp)
     470:	87a40032 	lh	a0,50(sp)
     474:	46080282 	mul.s	$f10,$f0,$f8
     478:	c7300000 	lwc1	$f16,0(t9)
     47c:	46105480 	add.s	$f18,$f10,$f16
     480:	0c000000 	jal	0 <EnDodojr_Init>
     484:	e7b20034 	swc1	$f18,52(sp)
     488:	3c014130 	lui	at,0x4130
     48c:	44812000 	mtc1	at,$f4
     490:	8fa80068 	lw	t0,104(sp)
     494:	27a9005c 	addiu	t1,sp,92
     498:	46040182 	mul.s	$f6,$f0,$f4
     49c:	c5080008 	lwc1	$f8,8(t0)
     4a0:	27aa0058 	addiu	t2,sp,88
     4a4:	240b0064 	li	t3,100
     4a8:	240c003c 	li	t4,60
     4ac:	240d0008 	li	t5,8
     4b0:	afad0020 	sw	t5,32(sp)
     4b4:	46083280 	add.s	$f10,$f6,$f8
     4b8:	afac001c 	sw	t4,28(sp)
     4bc:	afab0018 	sw	t3,24(sp)
     4c0:	afaa0014 	sw	t2,20(sp)
     4c4:	e7aa003c 	swc1	$f10,60(sp)
     4c8:	afa90010 	sw	t1,16(sp)
     4cc:	8fa40064 	lw	a0,100(sp)
     4d0:	27a50034 	addiu	a1,sp,52
     4d4:	27a6004c 	addiu	a2,sp,76
     4d8:	0c000000 	jal	0 <EnDodojr_Init>
     4dc:	27a70040 	addiu	a3,sp,64
     4e0:	8fbf002c 	lw	ra,44(sp)
     4e4:	27bd0060 	addiu	sp,sp,96
     4e8:	03e00008 	jr	ra
     4ec:	00000000 	nop

000004f0 <func_809F68B0>:
     4f0:	27bdffe8 	addiu	sp,sp,-24
     4f4:	afbf0014 	sw	ra,20(sp)
     4f8:	afa5001c 	sw	a1,28(sp)
     4fc:	c4840060 	lwc1	$f4,96(a0)
     500:	44803000 	mtc1	zero,$f6
     504:	00000000 	nop
     508:	4604303e 	c.le.s	$f6,$f4
     50c:	00000000 	nop
     510:	45020004 	bc1fl	524 <func_809F68B0+0x34>
     514:	848e01fc 	lh	t6,508(a0)
     518:	1000002a 	b	5c4 <func_809F68B0+0xd4>
     51c:	00001025 	move	v0,zero
     520:	848e01fc 	lh	t6,508(a0)
     524:	55c00004 	bnezl	t6,538 <func_809F68B0+0x48>
     528:	948f0088 	lhu	t7,136(a0)
     52c:	10000025 	b	5c4 <func_809F68B0+0xd4>
     530:	00001025 	move	v0,zero
     534:	948f0088 	lhu	t7,136(a0)
     538:	2405387b 	li	a1,14459
     53c:	31f80001 	andi	t8,t7,0x1
     540:	53000020 	beqzl	t8,5c4 <func_809F68B0+0xd4>
     544:	00001025 	move	v0,zero
     548:	0c000000 	jal	0 <EnDodojr_Init>
     54c:	afa40018 	sw	a0,24(sp)
     550:	8fa40018 	lw	a0,24(sp)
     554:	2406000a 	li	a2,10
     558:	8c880024 	lw	t0,36(a0)
     55c:	8c990028 	lw	t9,40(a0)
     560:	ac8801f0 	sw	t0,496(a0)
     564:	8c88002c 	lw	t0,44(a0)
     568:	ac9901f4 	sw	t9,500(a0)
     56c:	ac8801f8 	sw	t0,504(a0)
     570:	0c000000 	jal	0 <EnDodojr_Init>
     574:	8fa5001c 	lw	a1,28(sp)
     578:	8fa40018 	lw	a0,24(sp)
     57c:	24090004 	li	t1,4
     580:	3c014120 	lui	at,0x4120
     584:	848201fc 	lh	v0,508(a0)
     588:	44814000 	mtc1	at,$f8
     58c:	01225023 	subu	t2,t1,v0
     590:	448a5000 	mtc1	t2,$f10
     594:	244bffff 	addiu	t3,v0,-1
     598:	a48b01fc 	sh	t3,508(a0)
     59c:	46805420 	cvt.s.w	$f16,$f10
     5a0:	848c01fc 	lh	t4,508(a0)
     5a4:	46104483 	div.s	$f18,$f8,$f16
     5a8:	15800005 	bnez	t4,5c0 <func_809F68B0+0xd0>
     5ac:	e4920060 	swc1	$f18,96(a0)
     5b0:	44802000 	mtc1	zero,$f4
     5b4:	24020001 	li	v0,1
     5b8:	10000002 	b	5c4 <func_809F68B0+0xd4>
     5bc:	e4840060 	swc1	$f4,96(a0)
     5c0:	00001025 	move	v0,zero
     5c4:	8fbf0014 	lw	ra,20(sp)
     5c8:	27bd0018 	addiu	sp,sp,24
     5cc:	03e00008 	jr	ra
     5d0:	00000000 	nop

000005d4 <func_809F6994>:
     5d4:	27bdffd8 	addiu	sp,sp,-40
     5d8:	afa40028 	sw	a0,40(sp)
     5dc:	afbf0024 	sw	ra,36(sp)
     5e0:	3c040600 	lui	a0,0x600
     5e4:	0c000000 	jal	0 <EnDodojr_Init>
     5e8:	24840860 	addiu	a0,a0,2144
     5ec:	44822000 	mtc1	v0,$f4
     5f0:	3c01c120 	lui	at,0xc120
     5f4:	8fa30028 	lw	v1,40(sp)
     5f8:	468021a0 	cvt.s.w	$f6,$f4
     5fc:	44814000 	mtc1	at,$f8
     600:	3c050600 	lui	a1,0x600
     604:	3c063fe6 	lui	a2,0x3fe6
     608:	240e0001 	li	t6,1
     60c:	afae0014 	sw	t6,20(sp)
     610:	34c66666 	ori	a2,a2,0x6666
     614:	24a50860 	addiu	a1,a1,2144
     618:	e7a60010 	swc1	$f6,16(sp)
     61c:	24070000 	li	a3,0
     620:	2464014c 	addiu	a0,v1,332
     624:	0c000000 	jal	0 <EnDodojr_Init>
     628:	e7a80018 	swc1	$f8,24(sp)
     62c:	8fa30028 	lw	v1,40(sp)
     630:	44805000 	mtc1	zero,$f10
     634:	3c010000 	lui	at,0x0
     638:	e46a0060 	swc1	$f10,96(v1)
     63c:	c4300000 	lwc1	$f16,0(at)
     640:	3c010000 	lui	at,0x0
     644:	e4700068 	swc1	$f16,104(v1)
     648:	c4320000 	lwc1	$f18,0(at)
     64c:	e472006c 	swc1	$f18,108(v1)
     650:	8fbf0024 	lw	ra,36(sp)
     654:	27bd0028 	addiu	sp,sp,40
     658:	03e00008 	jr	ra
     65c:	00000000 	nop

00000660 <func_809F6A20>:
     660:	27bdffd0 	addiu	sp,sp,-48
     664:	afb00028 	sw	s0,40(sp)
     668:	00808025 	move	s0,a0
     66c:	afbf002c 	sw	ra,44(sp)
     670:	3c040600 	lui	a0,0x600
     674:	0c000000 	jal	0 <EnDodojr_Init>
     678:	248404a0 	addiu	a0,a0,1184
     67c:	44822000 	mtc1	v0,$f4
     680:	44800000 	mtc1	zero,$f0
     684:	3c01c120 	lui	at,0xc120
     688:	468021a0 	cvt.s.w	$f6,$f4
     68c:	44814000 	mtc1	at,$f8
     690:	3c050600 	lui	a1,0x600
     694:	240e0002 	li	t6,2
     698:	44070000 	mfc1	a3,$f0
     69c:	afae0014 	sw	t6,20(sp)
     6a0:	24a504a0 	addiu	a1,a1,1184
     6a4:	e7a60010 	swc1	$f6,16(sp)
     6a8:	2604014c 	addiu	a0,s0,332
     6ac:	3c063f80 	lui	a2,0x3f80
     6b0:	0c000000 	jal	0 <EnDodojr_Init>
     6b4:	e7a80018 	swc1	$f8,24(sp)
     6b8:	44800000 	mtc1	zero,$f0
     6bc:	860f01fc 	lh	t7,508(s0)
     6c0:	3c010000 	lui	at,0x0
     6c4:	e6000068 	swc1	$f0,104(s0)
     6c8:	e600005c 	swc1	$f0,92(s0)
     6cc:	e6000064 	swc1	$f0,100(s0)
     6d0:	c42a0000 	lwc1	$f10,0(at)
     6d4:	3c014120 	lui	at,0x4120
     6d8:	15e00005 	bnez	t7,6f0 <func_809F6A20+0x90>
     6dc:	e60a006c 	swc1	$f10,108(s0)
     6e0:	44818000 	mtc1	at,$f16
     6e4:	24180003 	li	t8,3
     6e8:	a61801fc 	sh	t8,508(s0)
     6ec:	e6100060 	swc1	$f16,96(s0)
     6f0:	8fbf002c 	lw	ra,44(sp)
     6f4:	8fb00028 	lw	s0,40(sp)
     6f8:	27bd0030 	addiu	sp,sp,48
     6fc:	03e00008 	jr	ra
     700:	00000000 	nop

00000704 <func_809F6AC4>:
     704:	27bdffd8 	addiu	sp,sp,-40
     708:	afa40028 	sw	a0,40(sp)
     70c:	afbf0024 	sw	ra,36(sp)
     710:	3c040600 	lui	a0,0x600
     714:	0c000000 	jal	0 <EnDodojr_Init>
     718:	248405f0 	addiu	a0,a0,1520
     71c:	44822000 	mtc1	v0,$f4
     720:	44800000 	mtc1	zero,$f0
     724:	8fa40028 	lw	a0,40(sp)
     728:	468021a0 	cvt.s.w	$f6,$f4
     72c:	3c050600 	lui	a1,0x600
     730:	44070000 	mfc1	a3,$f0
     734:	24a505f0 	addiu	a1,a1,1520
     738:	3c063f80 	lui	a2,0x3f80
     73c:	afa00014 	sw	zero,20(sp)
     740:	e7a60010 	swc1	$f6,16(sp)
     744:	2484014c 	addiu	a0,a0,332
     748:	0c000000 	jal	0 <EnDodojr_Init>
     74c:	e7a00018 	swc1	$f0,24(sp)
     750:	8fa20028 	lw	v0,40(sp)
     754:	44804000 	mtc1	zero,$f8
     758:	3c010000 	lui	at,0x0
     75c:	e4480060 	swc1	$f8,96(v0)
     760:	c42a0000 	lwc1	$f10,0(at)
     764:	e44a006c 	swc1	$f10,108(v0)
     768:	8fbf0024 	lw	ra,36(sp)
     76c:	27bd0028 	addiu	sp,sp,40
     770:	03e00008 	jr	ra
     774:	00000000 	nop

00000778 <func_809F6B38>:
     778:	27bdffd8 	addiu	sp,sp,-40
     77c:	afa40028 	sw	a0,40(sp)
     780:	afbf0024 	sw	ra,36(sp)
     784:	3c040600 	lui	a0,0x600
     788:	0c000000 	jal	0 <EnDodojr_Init>
     78c:	24840724 	addiu	a0,a0,1828
     790:	44822000 	mtc1	v0,$f4
     794:	3c01c120 	lui	at,0xc120
     798:	8fa30028 	lw	v1,40(sp)
     79c:	468021a0 	cvt.s.w	$f6,$f4
     7a0:	44814000 	mtc1	at,$f8
     7a4:	3c050600 	lui	a1,0x600
     7a8:	24a50724 	addiu	a1,a1,1828
     7ac:	3c063f80 	lui	a2,0x3f80
     7b0:	24070000 	li	a3,0
     7b4:	e7a60010 	swc1	$f6,16(sp)
     7b8:	afa00014 	sw	zero,20(sp)
     7bc:	2464014c 	addiu	a0,v1,332
     7c0:	0c000000 	jal	0 <EnDodojr_Init>
     7c4:	e7a80018 	swc1	$f8,24(sp)
     7c8:	3c010000 	lui	at,0x0
     7cc:	8fa30028 	lw	v1,40(sp)
     7d0:	c42a0000 	lwc1	$f10,0(at)
     7d4:	3c014120 	lui	at,0x4120
     7d8:	44818000 	mtc1	at,$f16
     7dc:	240e0003 	li	t6,3
     7e0:	a46e01fc 	sh	t6,508(v1)
     7e4:	e46a006c 	swc1	$f10,108(v1)
     7e8:	e4700060 	swc1	$f16,96(v1)
     7ec:	8fbf0024 	lw	ra,36(sp)
     7f0:	27bd0028 	addiu	sp,sp,40
     7f4:	03e00008 	jr	ra
     7f8:	00000000 	nop

000007fc <func_809F6BBC>:
     7fc:	8c8e0004 	lw	t6,4(a0)
     800:	2401fffe 	li	at,-2
     804:	ac8000c0 	sw	zero,192(a0)
     808:	01c17824 	and	t7,t6,at
     80c:	ac8f0004 	sw	t7,4(a0)
     810:	24820024 	addiu	v0,a0,36
     814:	8c590000 	lw	t9,0(v0)
     818:	44802000 	mtc1	zero,$f4
     81c:	3c010000 	lui	at,0x0
     820:	ac990008 	sw	t9,8(a0)
     824:	8c580004 	lw	t8,4(v0)
     828:	2408001e 	li	t0,30
     82c:	ac98000c 	sw	t8,12(a0)
     830:	8c590008 	lw	t9,8(v0)
     834:	e4840068 	swc1	$f4,104(a0)
     838:	ac990010 	sw	t9,16(a0)
     83c:	c4260000 	lwc1	$f6,0(at)
     840:	a4880202 	sh	t0,514(a0)
     844:	e486006c 	swc1	$f6,108(a0)
     848:	8c4a0000 	lw	t2,0(v0)
     84c:	ac8a01f0 	sw	t2,496(a0)
     850:	8c490004 	lw	t1,4(v0)
     854:	ac8901f4 	sw	t1,500(a0)
     858:	8c4a0008 	lw	t2,8(v0)
     85c:	03e00008 	jr	ra
     860:	ac8a01f8 	sw	t2,504(a0)

00000864 <func_809F6C24>:
     864:	27bdffd0 	addiu	sp,sp,-48
     868:	3c014140 	lui	at,0x4140
     86c:	44812000 	mtc1	at,$f4
     870:	44803000 	mtc1	zero,$f6
     874:	afb00028 	sw	s0,40(sp)
     878:	00808025 	move	s0,a0
     87c:	afbf002c 	sw	ra,44(sp)
     880:	3c050600 	lui	a1,0x600
     884:	240e0002 	li	t6,2
     888:	afae0014 	sw	t6,20(sp)
     88c:	24a50724 	addiu	a1,a1,1828
     890:	2484014c 	addiu	a0,a0,332
     894:	3c063f80 	lui	a2,0x3f80
     898:	3c074100 	lui	a3,0x4100
     89c:	e7a40010 	swc1	$f4,16(sp)
     8a0:	0c000000 	jal	0 <EnDodojr_Init>
     8a4:	e7a60018 	swc1	$f6,24(sp)
     8a8:	02002025 	move	a0,s0
     8ac:	0c000000 	jal	0 <EnDodojr_Init>
     8b0:	24053826 	li	a1,14374
     8b4:	44800000 	mtc1	zero,$f0
     8b8:	3c010000 	lui	at,0x0
     8bc:	e6000068 	swc1	$f0,104(s0)
     8c0:	e600005c 	swc1	$f0,92(s0)
     8c4:	e6000064 	swc1	$f0,100(s0)
     8c8:	c4280000 	lwc1	$f8,0(at)
     8cc:	e608006c 	swc1	$f8,108(s0)
     8d0:	8fbf002c 	lw	ra,44(sp)
     8d4:	8fb00028 	lw	s0,40(sp)
     8d8:	27bd0030 	addiu	sp,sp,48
     8dc:	03e00008 	jr	ra
     8e0:	00000000 	nop

000008e4 <func_809F6CA4>:
     8e4:	3c0e0000 	lui	t6,0x0
     8e8:	25ce0000 	addiu	t6,t6,0
     8ec:	8dd80000 	lw	t8,0(t6)
     8f0:	27bdffd0 	addiu	sp,sp,-48
     8f4:	27a60020 	addiu	a2,sp,32
     8f8:	acd80000 	sw	t8,0(a2)
     8fc:	8dcf0004 	lw	t7,4(t6)
     900:	00001825 	move	v1,zero
     904:	accf0004 	sw	t7,4(a2)
     908:	8dd80008 	lw	t8,8(t6)
     90c:	acd80008 	sw	t8,8(a2)
     910:	8ca21c4c 	lw	v0,7244(a1)
     914:	ac8001e0 	sw	zero,480(a0)
     918:	24050010 	li	a1,16
     91c:	5040003a 	beqzl	v0,a08 <func_809F6CA4+0x124>
     920:	00601025 	move	v0,v1
     924:	8459001c 	lh	t9,28(v0)
     928:	17200007 	bnez	t9,948 <func_809F6CA4+0x64>
     92c:	00000000 	nop
     930:	8c480118 	lw	t0,280(v0)
     934:	15000004 	bnez	t0,948 <func_809F6CA4+0x64>
     938:	00000000 	nop
     93c:	8c490130 	lw	t1,304(v0)
     940:	55200004 	bnezl	t1,954 <func_809F6CA4+0x70>
     944:	844a0000 	lh	t2,0(v0)
     948:	1000002c 	b	9fc <func_809F6CA4+0x118>
     94c:	8c420124 	lw	v0,292(v0)
     950:	844a0000 	lh	t2,0(v0)
     954:	50aa0004 	beql	a1,t2,968 <func_809F6CA4+0x84>
     958:	c4440024 	lwc1	$f4,36(v0)
     95c:	10000027 	b	9fc <func_809F6CA4+0x118>
     960:	8c420124 	lw	v0,292(v0)
     964:	c4440024 	lwc1	$f4,36(v0)
     968:	c4860024 	lwc1	$f6,36(a0)
     96c:	c7a00020 	lwc1	$f0,32(sp)
     970:	c4480028 	lwc1	$f8,40(v0)
     974:	46062081 	sub.s	$f2,$f4,$f6
     978:	c48a0028 	lwc1	$f10,40(a0)
     97c:	c484002c 	lwc1	$f4,44(a0)
     980:	46000005 	abs.s	$f0,$f0
     984:	46001405 	abs.s	$f16,$f2
     988:	c452002c 	lwc1	$f18,44(v0)
     98c:	4610003e 	c.le.s	$f0,$f16
     990:	c7a00024 	lwc1	$f0,36(sp)
     994:	460a4301 	sub.s	$f12,$f8,$f10
     998:	4501000d 	bc1t	9d0 <func_809F6CA4+0xec>
     99c:	46049381 	sub.s	$f14,$f18,$f4
     9a0:	46006085 	abs.s	$f2,$f12
     9a4:	46000005 	abs.s	$f0,$f0
     9a8:	4602003e 	c.le.s	$f0,$f2
     9ac:	c7a00028 	lwc1	$f0,40(sp)
     9b0:	45010007 	bc1t	9d0 <func_809F6CA4+0xec>
     9b4:	00000000 	nop
     9b8:	46007085 	abs.s	$f2,$f14
     9bc:	46000005 	abs.s	$f0,$f0
     9c0:	4602003e 	c.le.s	$f0,$f2
     9c4:	00000000 	nop
     9c8:	45020004 	bc1fl	9dc <func_809F6CA4+0xf8>
     9cc:	ac8201e0 	sw	v0,480(a0)
     9d0:	1000000a 	b	9fc <func_809F6CA4+0x118>
     9d4:	8c420124 	lw	v0,292(v0)
     9d8:	ac8201e0 	sw	v0,480(a0)
     9dc:	8c4c0024 	lw	t4,36(v0)
     9e0:	24030001 	li	v1,1
     9e4:	accc0000 	sw	t4,0(a2)
     9e8:	8c4b0028 	lw	t3,40(v0)
     9ec:	accb0004 	sw	t3,4(a2)
     9f0:	8c4c002c 	lw	t4,44(v0)
     9f4:	accc0008 	sw	t4,8(a2)
     9f8:	8c420124 	lw	v0,292(v0)
     9fc:	5440ffca 	bnezl	v0,928 <func_809F6CA4+0x44>
     a00:	8459001c 	lh	t9,28(v0)
     a04:	00601025 	move	v0,v1
     a08:	03e00008 	jr	ra
     a0c:	27bd0030 	addiu	sp,sp,48

00000a10 <func_809F6DD0>:
     a10:	27bdffe8 	addiu	sp,sp,-24
     a14:	afbf0014 	sw	ra,20(sp)
     a18:	8c8201e0 	lw	v0,480(a0)
     a1c:	00803025 	move	a2,a0
     a20:	54400004 	bnezl	v0,a34 <func_809F6DD0+0x24>
     a24:	8c4e0118 	lw	t6,280(v0)
     a28:	10000016 	b	a84 <func_809F6DD0+0x74>
     a2c:	00001025 	move	v0,zero
     a30:	8c4e0118 	lw	t6,280(v0)
     a34:	24c40024 	addiu	a0,a2,36
     a38:	24450024 	addiu	a1,v0,36
     a3c:	11c00003 	beqz	t6,a4c <func_809F6DD0+0x3c>
     a40:	00000000 	nop
     a44:	1000000f 	b	a84 <func_809F6DD0+0x74>
     a48:	00001025 	move	v0,zero
     a4c:	0c000000 	jal	0 <EnDodojr_Init>
     a50:	afa60018 	sw	a2,24(sp)
     a54:	3c0141f0 	lui	at,0x41f0
     a58:	44812000 	mtc1	at,$f4
     a5c:	8fa60018 	lw	a2,24(sp)
     a60:	4600203c 	c.lt.s	$f4,$f0
     a64:	00000000 	nop
     a68:	45020004 	bc1fl	a7c <func_809F6DD0+0x6c>
     a6c:	8ccf01e0 	lw	t7,480(a2)
     a70:	10000004 	b	a84 <func_809F6DD0+0x74>
     a74:	00001025 	move	v0,zero
     a78:	8ccf01e0 	lw	t7,480(a2)
     a7c:	24020001 	li	v0,1
     a80:	ade60118 	sw	a2,280(t7)
     a84:	8fbf0014 	lw	ra,20(sp)
     a88:	27bd0018 	addiu	sp,sp,24
     a8c:	03e00008 	jr	ra
     a90:	00000000 	nop

00000a94 <func_809F6E54>:
     a94:	27bdff80 	addiu	sp,sp,-128
     a98:	3c0f0000 	lui	t7,0x0
     a9c:	afb00020 	sw	s0,32(sp)
     aa0:	25ef0000 	addiu	t7,t7,0
     aa4:	00808025 	move	s0,a0
     aa8:	afbf0024 	sw	ra,36(sp)
     aac:	afa50084 	sw	a1,132(sp)
     ab0:	25e80030 	addiu	t0,t7,48
     ab4:	27ae0050 	addiu	t6,sp,80
     ab8:	8df90000 	lw	t9,0(t7)
     abc:	25ef000c 	addiu	t7,t7,12
     ac0:	25ce000c 	addiu	t6,t6,12
     ac4:	add9fff4 	sw	t9,-12(t6)
     ac8:	8df8fff8 	lw	t8,-8(t7)
     acc:	add8fff8 	sw	t8,-8(t6)
     ad0:	8df9fffc 	lw	t9,-4(t7)
     ad4:	15e8fff8 	bne	t7,t0,ab8 <func_809F6E54+0x24>
     ad8:	add9fffc 	sw	t9,-4(t6)
     adc:	8e0301e0 	lw	v1,480(s0)
     ae0:	8fa90084 	lw	t1,132(sp)
     ae4:	02002025 	move	a0,s0
     ae8:	10600009 	beqz	v1,b10 <func_809F6E54+0x7c>
     aec:	8d261c44 	lw	a2,7236(t1)
     af0:	8c6a0130 	lw	t2,304(v1)
     af4:	51400007 	beqzl	t2,b14 <func_809F6E54+0x80>
     af8:	8fa50084 	lw	a1,132(sp)
     afc:	10600009 	beqz	v1,b24 <func_809F6E54+0x90>
     b00:	00000000 	nop
     b04:	8c6b0118 	lw	t3,280(v1)
     b08:	11600006 	beqz	t3,b24 <func_809F6E54+0x90>
     b0c:	00000000 	nop
     b10:	8fa50084 	lw	a1,132(sp)
     b14:	0c000000 	jal	0 <EnDodojr_Init>
     b18:	afa60048 	sw	a2,72(sp)
     b1c:	8fa60048 	lw	a2,72(sp)
     b20:	8e0301e0 	lw	v1,480(s0)
     b24:	10600009 	beqz	v1,b4c <func_809F6E54+0xb8>
     b28:	26040024 	addiu	a0,s0,36
     b2c:	8c680024 	lw	t0,36(v1)
     b30:	27ac003c 	addiu	t4,sp,60
     b34:	ad880000 	sw	t0,0(t4)
     b38:	8c6d0028 	lw	t5,40(v1)
     b3c:	ad8d0004 	sw	t5,4(t4)
     b40:	8c68002c 	lw	t0,44(v1)
     b44:	10000008 	b	b68 <func_809F6E54+0xd4>
     b48:	ad880008 	sw	t0,8(t4)
     b4c:	8cd80024 	lw	t8,36(a2)
     b50:	27af003c 	addiu	t7,sp,60
     b54:	adf80000 	sw	t8,0(t7)
     b58:	8cce0028 	lw	t6,40(a2)
     b5c:	adee0004 	sw	t6,4(t7)
     b60:	8cd8002c 	lw	t8,44(a2)
     b64:	adf80008 	sw	t8,8(t7)
     b68:	27a5003c 	addiu	a1,sp,60
     b6c:	0c000000 	jal	0 <EnDodojr_Init>
     b70:	afa4002c 	sw	a0,44(sp)
     b74:	3c0142a0 	lui	at,0x42a0
     b78:	44812000 	mtc1	at,$f4
     b7c:	2401001e 	li	at,30
     b80:	27ad0050 	addiu	t5,sp,80
     b84:	4600203c 	c.lt.s	$f4,$f0
     b88:	00000000 	nop
     b8c:	45020036 	bc1fl	c68 <func_809F6E54+0x1d4>
     b90:	8fa4002c 	lw	a0,44(sp)
     b94:	8fb90084 	lw	t9,132(sp)
     b98:	c6060008 	lwc1	$f6,8(s0)
     b9c:	c608000c 	lwc1	$f8,12(s0)
     ba0:	8f29009c 	lw	t1,156(t9)
     ba4:	c6100010 	lwc1	$f16,16(s0)
     ba8:	46083280 	add.s	$f10,$f6,$f8
     bac:	0121001b 	divu	zero,t1,at
     bb0:	00005012 	mflo	t2
     bb4:	448a2000 	mtc1	t2,$f4
     bb8:	46105480 	add.s	$f18,$f10,$f16
     bbc:	05410005 	bgez	t2,bd4 <func_809F6E54+0x140>
     bc0:	468021a0 	cvt.s.w	$f6,$f4
     bc4:	3c014f80 	lui	at,0x4f80
     bc8:	44814000 	mtc1	at,$f8
     bcc:	00000000 	nop
     bd0:	46083180 	add.s	$f6,$f6,$f8
     bd4:	46069280 	add.s	$f10,$f18,$f6
     bd8:	2401000c 	li	at,12
     bdc:	4600540d 	trunc.w.s	$f16,$f10
     be0:	44028000 	mfc1	v0,$f16
     be4:	00000000 	nop
     be8:	00021400 	sll	v0,v0,0x10
     bec:	00021403 	sra	v0,v0,0x10
     bf0:	0041001a 	div	zero,v0,at
     bf4:	00001010 	mfhi	v0
     bf8:	00021400 	sll	v0,v0,0x10
     bfc:	00021403 	sra	v0,v0,0x10
     c00:	04430005 	bgezl	v0,c18 <func_809F6E54+0x184>
     c04:	00026080 	sll	t4,v0,0x2
     c08:	00021023 	negu	v0,v0
     c0c:	00021400 	sll	v0,v0,0x10
     c10:	00021403 	sra	v0,v0,0x10
     c14:	00026080 	sll	t4,v0,0x2
     c18:	018d1821 	addu	v1,t4,t5
     c1c:	c46c0000 	lwc1	$f12,0(v1)
     c20:	0c000000 	jal	0 <EnDodojr_Init>
     c24:	afa30028 	sw	v1,40(sp)
     c28:	3c0142a0 	lui	at,0x42a0
     c2c:	44814000 	mtc1	at,$f8
     c30:	c7a4003c 	lwc1	$f4,60(sp)
     c34:	8fa30028 	lw	v1,40(sp)
     c38:	46004482 	mul.s	$f18,$f8,$f0
     c3c:	46122180 	add.s	$f6,$f4,$f18
     c40:	e7a6003c 	swc1	$f6,60(sp)
     c44:	0c000000 	jal	0 <EnDodojr_Init>
     c48:	c46c0000 	lwc1	$f12,0(v1)
     c4c:	3c0142a0 	lui	at,0x42a0
     c50:	44818000 	mtc1	at,$f16
     c54:	c7aa0044 	lwc1	$f10,68(sp)
     c58:	46008202 	mul.s	$f8,$f16,$f0
     c5c:	46085100 	add.s	$f4,$f10,$f8
     c60:	e7a40044 	swc1	$f4,68(sp)
     c64:	8fa4002c 	lw	a0,44(sp)
     c68:	0c000000 	jal	0 <EnDodojr_Init>
     c6c:	27a5003c 	addiu	a1,sp,60
     c70:	00022c00 	sll	a1,v0,0x10
     c74:	24080001 	li	t0,1
     c78:	afa80010 	sw	t0,16(sp)
     c7c:	00052c03 	sra	a1,a1,0x10
     c80:	26040032 	addiu	a0,s0,50
     c84:	2406000a 	li	a2,10
     c88:	0c000000 	jal	0 <EnDodojr_Init>
     c8c:	240703e8 	li	a3,1000
     c90:	860f0032 	lh	t7,50(s0)
     c94:	a60f00b6 	sh	t7,182(s0)
     c98:	8fbf0024 	lw	ra,36(sp)
     c9c:	8fb00020 	lw	s0,32(sp)
     ca0:	27bd0080 	addiu	sp,sp,128
     ca4:	03e00008 	jr	ra
     ca8:	00000000 	nop

00000cac <func_809F706C>:
     cac:	3c014220 	lui	at,0x4220
     cb0:	44812000 	mtc1	at,$f4
     cb4:	c4860090 	lwc1	$f6,144(a0)
     cb8:	24020001 	li	v0,1
     cbc:	4606203c 	c.lt.s	$f4,$f6
     cc0:	00000000 	nop
     cc4:	45000003 	bc1f	cd4 <func_809F706C+0x28>
     cc8:	00000000 	nop
     ccc:	03e00008 	jr	ra
     cd0:	00001025 	move	v0,zero
     cd4:	03e00008 	jr	ra
     cd8:	00000000 	nop

00000cdc <func_809F709C>:
     cdc:	27bdffe8 	addiu	sp,sp,-24
     ce0:	afbf0014 	sw	ra,20(sp)
     ce4:	afa40018 	sw	a0,24(sp)
     ce8:	0c000000 	jal	0 <EnDodojr_Init>
     cec:	24053821 	li	a1,14369
     cf0:	8fa40018 	lw	a0,24(sp)
     cf4:	2401fffe 	li	at,-2
     cf8:	8c8e0004 	lw	t6,4(a0)
     cfc:	01c17824 	and	t7,t6,at
     d00:	0c000000 	jal	0 <EnDodojr_Init>
     d04:	ac8f0004 	sw	t7,4(a0)
     d08:	8fa40018 	lw	a0,24(sp)
     d0c:	3c180000 	lui	t8,0x0
     d10:	27180000 	addiu	t8,t8,0
     d14:	ac980190 	sw	t8,400(a0)
     d18:	8fbf0014 	lw	ra,20(sp)
     d1c:	27bd0018 	addiu	sp,sp,24
     d20:	03e00008 	jr	ra
     d24:	00000000 	nop

00000d28 <func_809F70E8>:
     d28:	27bdffd0 	addiu	sp,sp,-48
     d2c:	afbf0024 	sw	ra,36(sp)
     d30:	afb00020 	sw	s0,32(sp)
     d34:	8c820190 	lw	v0,400(a0)
     d38:	3c0e0000 	lui	t6,0x0
     d3c:	25ce0000 	addiu	t6,t6,0
     d40:	00808025 	move	s0,a0
     d44:	11c20014 	beq	t6,v0,d98 <func_809F70E8+0x70>
     d48:	00a03025 	move	a2,a1
     d4c:	3c0f0000 	lui	t7,0x0
     d50:	25ef0000 	addiu	t7,t7,0
     d54:	11e20010 	beq	t7,v0,d98 <func_809F70E8+0x70>
     d58:	3c180000 	lui	t8,0x0
     d5c:	27180000 	addiu	t8,t8,0
     d60:	1302000d 	beq	t8,v0,d98 <func_809F70E8+0x70>
     d64:	3c190000 	lui	t9,0x0
     d68:	27390000 	addiu	t9,t9,0
     d6c:	1322000a 	beq	t9,v0,d98 <func_809F70E8+0x70>
     d70:	3c080000 	lui	t0,0x0
     d74:	25080000 	addiu	t0,t0,0
     d78:	11020007 	beq	t0,v0,d98 <func_809F70E8+0x70>
     d7c:	3c090000 	lui	t1,0x0
     d80:	25290000 	addiu	t1,t1,0
     d84:	11220004 	beq	t1,v0,d98 <func_809F70E8+0x70>
     d88:	3c0a0000 	lui	t2,0x0
     d8c:	254a0000 	addiu	t2,t2,0
     d90:	55420004 	bnel	t2,v0,da4 <func_809F70E8+0x7c>
     d94:	90cb1c26 	lbu	t3,7206(a2)
     d98:	1000004d 	b	ed0 <func_809F70E8+0x1a8>
     d9c:	00001025 	move	v0,zero
     da0:	90cb1c26 	lbu	t3,7206(a2)
     da4:	3c0c0000 	lui	t4,0x0
     da8:	258c0000 	addiu	t4,t4,0
     dac:	5160000d 	beqzl	t3,de4 <func_809F70E8+0xbc>
     db0:	920301a5 	lbu	v1,421(s0)
     db4:	11820008 	beq	t4,v0,dd8 <func_809F70E8+0xb0>
     db8:	3c0d0000 	lui	t5,0x0
     dbc:	25ad0000 	addiu	t5,t5,0
     dc0:	15a20003 	bne	t5,v0,dd0 <func_809F70E8+0xa8>
     dc4:	3c0e0000 	lui	t6,0x0
     dc8:	25ce0000 	addiu	t6,t6,0
     dcc:	ae0e00c0 	sw	t6,192(s0)
     dd0:	0c000000 	jal	0 <EnDodojr_Init>
     dd4:	02002025 	move	a0,s0
     dd8:	1000003d 	b	ed0 <func_809F70E8+0x1a8>
     ddc:	00001025 	move	v0,zero
     de0:	920301a5 	lbu	v1,421(s0)
     de4:	3c190000 	lui	t9,0x0
     de8:	27390000 	addiu	t9,t9,0
     dec:	306f0002 	andi	t7,v1,0x2
     df0:	15e00003 	bnez	t7,e00 <func_809F70E8+0xd8>
     df4:	3078fffd 	andi	t8,v1,0xfffd
     df8:	10000035 	b	ed0 <func_809F70E8+0x1a8>
     dfc:	00001025 	move	v0,zero
     e00:	13220004 	beq	t9,v0,e14 <func_809F70E8+0xec>
     e04:	a21801a5 	sb	t8,421(s0)
     e08:	3c080000 	lui	t0,0x0
     e0c:	25080000 	addiu	t0,t0,0
     e10:	15020003 	bne	t0,v0,e20 <func_809F70E8+0xf8>
     e14:	3c090000 	lui	t1,0x0
     e18:	25290000 	addiu	t1,t1,0
     e1c:	ae0900c0 	sw	t1,192(s0)
     e20:	920200b1 	lbu	v0,177(s0)
     e24:	24010001 	li	at,1
     e28:	1440000e 	bnez	v0,e64 <func_809F70E8+0x13c>
     e2c:	00000000 	nop
     e30:	920a00b0 	lbu	t2,176(s0)
     e34:	00c02025 	move	a0,a2
     e38:	1140000a 	beqz	t2,e64 <func_809F70E8+0x13c>
     e3c:	00000000 	nop
     e40:	0c000000 	jal	0 <EnDodojr_Init>
     e44:	02002825 	move	a1,s0
     e48:	3c0c0000 	lui	t4,0x0
     e4c:	240b0002 	li	t3,2
     e50:	258c0000 	addiu	t4,t4,0
     e54:	a60b0200 	sh	t3,512(s0)
     e58:	ae0c0190 	sw	t4,400(s0)
     e5c:	1000001c 	b	ed0 <func_809F70E8+0x1a8>
     e60:	24020001 	li	v0,1
     e64:	5441001a 	bnel	v0,at,ed0 <func_809F70E8+0x1a8>
     e68:	00001025 	move	v0,zero
     e6c:	8e020190 	lw	v0,400(s0)
     e70:	3c0d0000 	lui	t5,0x0
     e74:	25ad0000 	addiu	t5,t5,0
     e78:	11a20014 	beq	t5,v0,ecc <func_809F70E8+0x1a4>
     e7c:	3c030000 	lui	v1,0x0
     e80:	24630000 	addiu	v1,v1,0
     e84:	10620011 	beq	v1,v0,ecc <func_809F70E8+0x1a4>
     e88:	02002025 	move	a0,s0
     e8c:	2405389e 	li	a1,14494
     e90:	0c000000 	jal	0 <EnDodojr_Init>
     e94:	afa30028 	sw	v1,40(sp)
     e98:	240e0078 	li	t6,120
     e9c:	a60e01fe 	sh	t6,510(s0)
     ea0:	240f0078 	li	t7,120
     ea4:	afaf0010 	sw	t7,16(sp)
     ea8:	02002025 	move	a0,s0
     eac:	00002825 	move	a1,zero
     eb0:	240600c8 	li	a2,200
     eb4:	0c000000 	jal	0 <EnDodojr_Init>
     eb8:	00003825 	move	a3,zero
     ebc:	0c000000 	jal	0 <EnDodojr_Init>
     ec0:	02002025 	move	a0,s0
     ec4:	8fb80028 	lw	t8,40(sp)
     ec8:	ae180190 	sw	t8,400(s0)
     ecc:	00001025 	move	v0,zero
     ed0:	8fbf0024 	lw	ra,36(sp)
     ed4:	8fb00020 	lw	s0,32(sp)
     ed8:	27bd0030 	addiu	sp,sp,48
     edc:	03e00008 	jr	ra
     ee0:	00000000 	nop

00000ee4 <func_809F72A4>:
     ee4:	27bdffd8 	addiu	sp,sp,-40
     ee8:	afa5002c 	sw	a1,44(sp)
     eec:	afbf0014 	sw	ra,20(sp)
     ef0:	24850194 	addiu	a1,a0,404
     ef4:	afa50024 	sw	a1,36(sp)
     ef8:	0c000000 	jal	0 <EnDodojr_Init>
     efc:	afa40028 	sw	a0,40(sp)
     f00:	8fa70028 	lw	a3,40(sp)
     f04:	3c0e0000 	lui	t6,0x0
     f08:	25ce0000 	addiu	t6,t6,0
     f0c:	8ce20190 	lw	v0,400(a3)
     f10:	3c0f0000 	lui	t7,0x0
     f14:	25ef0000 	addiu	t7,t7,0
     f18:	51c20031 	beql	t6,v0,fe0 <func_809F72A4+0xfc>
     f1c:	8fbf0014 	lw	ra,20(sp)
     f20:	11e2002e 	beq	t7,v0,fdc <func_809F72A4+0xf8>
     f24:	3c030000 	lui	v1,0x0
     f28:	24630000 	addiu	v1,v1,0
     f2c:	10620007 	beq	v1,v0,f4c <func_809F72A4+0x68>
     f30:	3c180000 	lui	t8,0x0
     f34:	27180000 	addiu	t8,t8,0
     f38:	13020004 	beq	t8,v0,f4c <func_809F72A4+0x68>
     f3c:	3c190000 	lui	t9,0x0
     f40:	27390000 	addiu	t9,t9,0
     f44:	5722000d 	bnel	t9,v0,f7c <func_809F72A4+0x98>
     f48:	8fa4002c 	lw	a0,44(sp)
     f4c:	8fa4002c 	lw	a0,44(sp)
     f50:	3c010001 	lui	at,0x1
     f54:	34211e60 	ori	at,at,0x1e60
     f58:	8fa60024 	lw	a2,36(sp)
     f5c:	afa3001c 	sw	v1,28(sp)
     f60:	afa70028 	sw	a3,40(sp)
     f64:	0c000000 	jal	0 <EnDodojr_Init>
     f68:	00812821 	addu	a1,a0,at
     f6c:	8fa70028 	lw	a3,40(sp)
     f70:	8fa3001c 	lw	v1,28(sp)
     f74:	8ce20190 	lw	v0,400(a3)
     f78:	8fa4002c 	lw	a0,44(sp)
     f7c:	3c010001 	lui	at,0x1
     f80:	34211e60 	ori	at,at,0x1e60
     f84:	1062000e 	beq	v1,v0,fc0 <func_809F72A4+0xdc>
     f88:	00812821 	addu	a1,a0,at
     f8c:	3c080000 	lui	t0,0x0
     f90:	25080000 	addiu	t0,t0,0
     f94:	1102000a 	beq	t0,v0,fc0 <func_809F72A4+0xdc>
     f98:	3c090000 	lui	t1,0x0
     f9c:	25290000 	addiu	t1,t1,0
     fa0:	11220007 	beq	t1,v0,fc0 <func_809F72A4+0xdc>
     fa4:	3c0a0000 	lui	t2,0x0
     fa8:	254a0000 	addiu	t2,t2,0
     fac:	11420004 	beq	t2,v0,fc0 <func_809F72A4+0xdc>
     fb0:	3c0b0000 	lui	t3,0x0
     fb4:	256b0000 	addiu	t3,t3,0
     fb8:	15620006 	bne	t3,v0,fd4 <func_809F72A4+0xf0>
     fbc:	00000000 	nop
     fc0:	8fa60024 	lw	a2,36(sp)
     fc4:	0c000000 	jal	0 <EnDodojr_Init>
     fc8:	afa50018 	sw	a1,24(sp)
     fcc:	8fa50018 	lw	a1,24(sp)
     fd0:	8fa4002c 	lw	a0,44(sp)
     fd4:	0c000000 	jal	0 <EnDodojr_Init>
     fd8:	8fa60024 	lw	a2,36(sp)
     fdc:	8fbf0014 	lw	ra,20(sp)
     fe0:	27bd0028 	addiu	sp,sp,40
     fe4:	03e00008 	jr	ra
     fe8:	00000000 	nop

00000fec <func_809F73AC>:
     fec:	27bdffd0 	addiu	sp,sp,-48
     ff0:	afb00028 	sw	s0,40(sp)
     ff4:	00808025 	move	s0,a0
     ff8:	afbf002c 	sw	ra,44(sp)
     ffc:	3c040600 	lui	a0,0x600
    1000:	afa50034 	sw	a1,52(sp)
    1004:	0c000000 	jal	0 <EnDodojr_Init>
    1008:	24840860 	addiu	a0,a0,2144
    100c:	3c0143a0 	lui	at,0x43a0
    1010:	44814000 	mtc1	at,$f8
    1014:	c6060090 	lwc1	$f6,144(s0)
    1018:	44822000 	mtc1	v0,$f4
    101c:	8fae0034 	lw	t6,52(sp)
    1020:	4606403e 	c.le.s	$f8,$f6
    1024:	468020a0 	cvt.s.w	$f2,$f4
    1028:	8dc31c44 	lw	v1,7236(t6)
    102c:	45030031 	bc1tl	10f4 <func_809F73AC+0x108>
    1030:	8fbf002c 	lw	ra,44(sp)
    1034:	c60a0028 	lwc1	$f10,40(s0)
    1038:	c4700028 	lwc1	$f16,40(v1)
    103c:	3c014220 	lui	at,0x4220
    1040:	44819000 	mtc1	at,$f18
    1044:	46105001 	sub.s	$f0,$f10,$f16
    1048:	3c050600 	lui	a1,0x600
    104c:	3c063fe6 	lui	a2,0x3fe6
    1050:	34c66666 	ori	a2,a2,0x6666
    1054:	4600903e 	c.le.s	$f18,$f0
    1058:	24a50860 	addiu	a1,a1,2144
    105c:	2604014c 	addiu	a0,s0,332
    1060:	24070000 	li	a3,0
    1064:	45010022 	bc1t	10f0 <func_809F73AC+0x104>
    1068:	240f0001 	li	t7,1
    106c:	3c01c120 	lui	at,0xc120
    1070:	44812000 	mtc1	at,$f4
    1074:	e7a20010 	swc1	$f2,16(sp)
    1078:	afaf0014 	sw	t7,20(sp)
    107c:	0c000000 	jal	0 <EnDodojr_Init>
    1080:	e7a40018 	swc1	$f4,24(sp)
    1084:	02002025 	move	a0,s0
    1088:	0c000000 	jal	0 <EnDodojr_Init>
    108c:	24053824 	li	a1,14372
    1090:	3c014270 	lui	at,0x4270
    1094:	44814000 	mtc1	at,$f8
    1098:	c6060028 	lwc1	$f6,40(s0)
    109c:	86080030 	lh	t0,48(s0)
    10a0:	8e0c0024 	lw	t4,36(s0)
    10a4:	46083281 	sub.s	$f10,$f6,$f8
    10a8:	2509c000 	addiu	t1,t0,-16384
    10ac:	8e180004 	lw	t8,4(s0)
    10b0:	a6090030 	sh	t1,48(s0)
    10b4:	e60a0028 	swc1	$f10,40(s0)
    10b8:	8e0b0028 	lw	t3,40(s0)
    10bc:	ae0c01f0 	sw	t4,496(s0)
    10c0:	860a0030 	lh	t2,48(s0)
    10c4:	8e0c002c 	lw	t4,44(s0)
    10c8:	c6100080 	lwc1	$f16,128(s0)
    10cc:	3c0d0000 	lui	t5,0x0
    10d0:	25ad0000 	addiu	t5,t5,0
    10d4:	37190001 	ori	t9,t8,0x1
    10d8:	ae0b01f4 	sw	t3,500(s0)
    10dc:	ae190004 	sw	t9,4(s0)
    10e0:	ae0d0190 	sw	t5,400(s0)
    10e4:	a60a00b4 	sh	t2,180(s0)
    10e8:	ae0c01f8 	sw	t4,504(s0)
    10ec:	e61001f4 	swc1	$f16,500(s0)
    10f0:	8fbf002c 	lw	ra,44(sp)
    10f4:	8fb00028 	lw	s0,40(sp)
    10f8:	27bd0030 	addiu	sp,sp,48
    10fc:	03e00008 	jr	ra
    1100:	00000000 	nop

00001104 <func_809F74C4>:
    1104:	27bdffd0 	addiu	sp,sp,-48
    1108:	afb00020 	sw	s0,32(sp)
    110c:	00808025 	move	s0,a0
    1110:	afbf0024 	sw	ra,36(sp)
    1114:	afa50034 	sw	a1,52(sp)
    1118:	240e0064 	li	t6,100
    111c:	afae0010 	sw	t6,16(sp)
    1120:	00002825 	move	a1,zero
    1124:	248400b4 	addiu	a0,a0,180
    1128:	24060004 	li	a2,4
    112c:	0c000000 	jal	0 <EnDodojr_Init>
    1130:	240703e8 	li	a3,1000
    1134:	860f00b4 	lh	t7,180(s0)
    1138:	3c014680 	lui	at,0x4680
    113c:	44813000 	mtc1	at,$f6
    1140:	448f2000 	mtc1	t7,$f4
    1144:	3c014270 	lui	at,0x4270
    1148:	44815000 	mtc1	at,$f10
    114c:	46802020 	cvt.s.w	$f0,$f4
    1150:	c608000c 	lwc1	$f8,12(s0)
    1154:	02002025 	move	a0,s0
    1158:	24060003 	li	a2,3
    115c:	46060003 	div.s	$f0,$f0,$f6
    1160:	46005402 	mul.s	$f16,$f10,$f0
    1164:	46104480 	add.s	$f18,$f8,$f16
    1168:	e6120028 	swc1	$f18,40(s0)
    116c:	e7a0002c 	swc1	$f0,44(sp)
    1170:	0c000000 	jal	0 <EnDodojr_Init>
    1174:	8fa50034 	lw	a1,52(sp)
    1178:	c7a0002c 	lwc1	$f0,44(sp)
    117c:	44802000 	mtc1	zero,$f4
    1180:	3c180000 	lui	t8,0x0
    1184:	27180000 	addiu	t8,t8,0
    1188:	46040032 	c.eq.s	$f0,$f4
    118c:	3c010000 	lui	at,0x0
    1190:	4502000a 	bc1fl	11bc <func_809F74C4+0xb8>
    1194:	8fbf0024 	lw	ra,36(sp)
    1198:	861900b4 	lh	t9,180(s0)
    119c:	ae1800c0 	sw	t8,192(s0)
    11a0:	3c080000 	lui	t0,0x0
    11a4:	a6190030 	sh	t9,48(s0)
    11a8:	c4260000 	lwc1	$f6,0(at)
    11ac:	25080000 	addiu	t0,t0,0
    11b0:	ae080190 	sw	t0,400(s0)
    11b4:	e6060068 	swc1	$f6,104(s0)
    11b8:	8fbf0024 	lw	ra,36(sp)
    11bc:	8fb00020 	lw	s0,32(sp)
    11c0:	27bd0030 	addiu	sp,sp,48
    11c4:	03e00008 	jr	ra
    11c8:	00000000 	nop

000011cc <func_809F758C>:
    11cc:	27bdffe0 	addiu	sp,sp,-32
    11d0:	afbf001c 	sw	ra,28(sp)
    11d4:	afb00018 	sw	s0,24(sp)
    11d8:	00808025 	move	s0,a0
    11dc:	0c000000 	jal	0 <EnDodojr_Init>
    11e0:	afa50024 	sw	a1,36(sp)
    11e4:	02002025 	move	a0,s0
    11e8:	8fa50024 	lw	a1,36(sp)
    11ec:	0c000000 	jal	0 <EnDodojr_Init>
    11f0:	26060024 	addiu	a2,s0,36
    11f4:	86020204 	lh	v0,516(s0)
    11f8:	02002025 	move	a0,s0
    11fc:	14400003 	bnez	v0,120c <func_809F758C+0x40>
    1200:	244effff 	addiu	t6,v0,-1
    1204:	10000003 	b	1214 <func_809F758C+0x48>
    1208:	00001825 	move	v1,zero
    120c:	a60e0204 	sh	t6,516(s0)
    1210:	86030204 	lh	v1,516(s0)
    1214:	14600005 	bnez	v1,122c <func_809F758C+0x60>
    1218:	00000000 	nop
    121c:	0c000000 	jal	0 <EnDodojr_Init>
    1220:	24053822 	li	a1,14370
    1224:	240f0005 	li	t7,5
    1228:	a60f0204 	sh	t7,516(s0)
    122c:	0c000000 	jal	0 <EnDodojr_Init>
    1230:	02002025 	move	a0,s0
    1234:	10400007 	beqz	v0,1254 <func_809F758C+0x88>
    1238:	02002025 	move	a0,s0
    123c:	0c000000 	jal	0 <EnDodojr_Init>
    1240:	02002025 	move	a0,s0
    1244:	3c180000 	lui	t8,0x0
    1248:	27180000 	addiu	t8,t8,0
    124c:	1000001a 	b	12b8 <func_809F758C+0xec>
    1250:	ae180190 	sw	t8,400(s0)
    1254:	0c000000 	jal	0 <EnDodojr_Init>
    1258:	8fa50024 	lw	a1,36(sp)
    125c:	0c000000 	jal	0 <EnDodojr_Init>
    1260:	02002025 	move	a0,s0
    1264:	10400008 	beqz	v0,1288 <func_809F758C+0xbc>
    1268:	02002025 	move	a0,s0
    126c:	0c000000 	jal	0 <EnDodojr_Init>
    1270:	24053820 	li	a1,14368
    1274:	0c000000 	jal	0 <EnDodojr_Init>
    1278:	02002025 	move	a0,s0
    127c:	3c190000 	lui	t9,0x0
    1280:	27390000 	addiu	t9,t9,0
    1284:	ae190190 	sw	t9,400(s0)
    1288:	96080088 	lhu	t0,136(s0)
    128c:	02002025 	move	a0,s0
    1290:	31090008 	andi	t1,t0,0x8
    1294:	51200009 	beqzl	t1,12bc <func_809F758C+0xf0>
    1298:	8fbf001c 	lw	ra,28(sp)
    129c:	0c000000 	jal	0 <EnDodojr_Init>
    12a0:	24053823 	li	a1,14371
    12a4:	0c000000 	jal	0 <EnDodojr_Init>
    12a8:	02002025 	move	a0,s0
    12ac:	3c0a0000 	lui	t2,0x0
    12b0:	254a0000 	addiu	t2,t2,0
    12b4:	ae0a0190 	sw	t2,400(s0)
    12b8:	8fbf001c 	lw	ra,28(sp)
    12bc:	8fb00018 	lw	s0,24(sp)
    12c0:	27bd0020 	addiu	sp,sp,32
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_809F768C>:
    12cc:	27bdffe8 	addiu	sp,sp,-24
    12d0:	afbf0014 	sw	ra,20(sp)
    12d4:	afa5001c 	sw	a1,28(sp)
    12d8:	c4840164 	lwc1	$f4,356(a0)
    12dc:	00803025 	move	a2,a0
    12e0:	24053850 	li	a1,14416
    12e4:	4600218d 	trunc.w.s	$f6,$f4
    12e8:	440f3000 	mfc1	t7,$f6
    12ec:	00000000 	nop
    12f0:	000fc400 	sll	t8,t7,0x10
    12f4:	0018cc03 	sra	t9,t8,0x10
    12f8:	2728fff8 	addiu	t0,t9,-8
    12fc:	29010004 	slti	at,t0,4
    1300:	5020000e 	beqzl	at,133c <func_809F768C+0x70>
    1304:	00c02025 	move	a0,a2
    1308:	8c8201e0 	lw	v0,480(a0)
    130c:	844901f8 	lh	t1,504(v0)
    1310:	252a0001 	addiu	t2,t1,1
    1314:	a44a01f8 	sh	t2,504(v0)
    1318:	8c8d01e4 	lw	t5,484(a0)
    131c:	8c8b01e0 	lw	t3,480(a0)
    1320:	ad6d0024 	sw	t5,36(t3)
    1324:	8c8c01e8 	lw	t4,488(a0)
    1328:	ad6c0028 	sw	t4,40(t3)
    132c:	8c8d01ec 	lw	t5,492(a0)
    1330:	1000000e 	b	136c <func_809F768C+0xa0>
    1334:	ad6d002c 	sw	t5,44(t3)
    1338:	00c02025 	move	a0,a2
    133c:	0c000000 	jal	0 <EnDodojr_Init>
    1340:	afa60018 	sw	a2,24(sp)
    1344:	8fa60018 	lw	a2,24(sp)
    1348:	0c000000 	jal	0 <EnDodojr_Init>
    134c:	8cc401e0 	lw	a0,480(a2)
    1350:	8fa60018 	lw	a2,24(sp)
    1354:	3c0f0000 	lui	t7,0x0
    1358:	240e0018 	li	t6,24
    135c:	25ef0000 	addiu	t7,t7,0
    1360:	a4ce0202 	sh	t6,514(a2)
    1364:	a4c001fc 	sh	zero,508(a2)
    1368:	accf0190 	sw	t7,400(a2)
    136c:	8fbf0014 	lw	ra,20(sp)
    1370:	27bd0018 	addiu	sp,sp,24
    1374:	03e00008 	jr	ra
    1378:	00000000 	nop

0000137c <func_809F773C>:
    137c:	27bdffe8 	addiu	sp,sp,-24
    1380:	afbf0014 	sw	ra,20(sp)
    1384:	afa5001c 	sw	a1,28(sp)
    1388:	84820202 	lh	v0,514(a0)
    138c:	14400003 	bnez	v0,139c <func_809F773C+0x20>
    1390:	244effff 	addiu	t6,v0,-1
    1394:	10000003 	b	13a4 <func_809F773C+0x28>
    1398:	00001825 	move	v1,zero
    139c:	a48e0202 	sh	t6,514(a0)
    13a0:	84830202 	lh	v1,514(a0)
    13a4:	5460000e 	bnezl	v1,13e0 <func_809F773C+0x64>
    13a8:	8fbf0014 	lw	ra,20(sp)
    13ac:	0c000000 	jal	0 <EnDodojr_Init>
    13b0:	afa40018 	sw	a0,24(sp)
    13b4:	8fa40018 	lw	a0,24(sp)
    13b8:	2401fffe 	li	at,-2
    13bc:	8c8f0004 	lw	t7,4(a0)
    13c0:	01e1c024 	and	t8,t7,at
    13c4:	0c000000 	jal	0 <EnDodojr_Init>
    13c8:	ac980004 	sw	t8,4(a0)
    13cc:	8fa40018 	lw	a0,24(sp)
    13d0:	3c190000 	lui	t9,0x0
    13d4:	27390000 	addiu	t9,t9,0
    13d8:	ac990190 	sw	t9,400(a0)
    13dc:	8fbf0014 	lw	ra,20(sp)
    13e0:	27bd0018 	addiu	sp,sp,24
    13e4:	03e00008 	jr	ra
    13e8:	00000000 	nop

000013ec <func_809F77AC>:
    13ec:	27bdffe0 	addiu	sp,sp,-32
    13f0:	afbf001c 	sw	ra,28(sp)
    13f4:	afb00018 	sw	s0,24(sp)
    13f8:	afa50024 	sw	a1,36(sp)
    13fc:	908e0114 	lbu	t6,276(a0)
    1400:	00808025 	move	s0,a0
    1404:	3c014f80 	lui	at,0x4f80
    1408:	448e2000 	mtc1	t6,$f4
    140c:	05c10004 	bgez	t6,1420 <func_809F77AC+0x34>
    1410:	468021a0 	cvt.s.w	$f6,$f4
    1414:	44814000 	mtc1	at,$f8
    1418:	00000000 	nop
    141c:	46083180 	add.s	$f6,$f6,$f8
    1420:	3c014100 	lui	at,0x4100
    1424:	44815000 	mtc1	at,$f10
    1428:	3c010000 	lui	at,0x0
    142c:	c4320000 	lwc1	$f18,0(at)
    1430:	460a3403 	div.s	$f16,$f6,$f10
    1434:	02002025 	move	a0,s0
    1438:	46109102 	mul.s	$f4,$f18,$f16
    143c:	0c000000 	jal	0 <EnDodojr_Init>
    1440:	e6040208 	swc1	$f4,520(s0)
    1444:	02002025 	move	a0,s0
    1448:	0c000000 	jal	0 <EnDodojr_Init>
    144c:	8fa50024 	lw	a1,36(sp)
    1450:	10400009 	beqz	v0,1478 <func_809F77AC+0x8c>
    1454:	240f003c 	li	t7,60
    1458:	a60f0202 	sh	t7,514(s0)
    145c:	0c000000 	jal	0 <EnDodojr_Init>
    1460:	02002025 	move	a0,s0
    1464:	3c190000 	lui	t9,0x0
    1468:	24180007 	li	t8,7
    146c:	27390000 	addiu	t9,t9,0
    1470:	a61801fc 	sh	t8,508(s0)
    1474:	ae190190 	sw	t9,400(s0)
    1478:	8fbf001c 	lw	ra,28(sp)
    147c:	8fb00018 	lw	s0,24(sp)
    1480:	27bd0020 	addiu	sp,sp,32
    1484:	03e00008 	jr	ra
    1488:	00000000 	nop

0000148c <func_809F784C>:
    148c:	27bdffe8 	addiu	sp,sp,-24
    1490:	afbf0014 	sw	ra,20(sp)
    1494:	0c000000 	jal	0 <EnDodojr_Init>
    1498:	00000000 	nop
    149c:	8fbf0014 	lw	ra,20(sp)
    14a0:	27bd0018 	addiu	sp,sp,24
    14a4:	03e00008 	jr	ra
    14a8:	00000000 	nop

000014ac <func_809F786C>:
    14ac:	27bdffd8 	addiu	sp,sp,-40
    14b0:	afbf0024 	sw	ra,36(sp)
    14b4:	afb00020 	sw	s0,32(sp)
    14b8:	00808025 	move	s0,a0
    14bc:	0c000000 	jal	0 <EnDodojr_Init>
    14c0:	afa5002c 	sw	a1,44(sp)
    14c4:	02002025 	move	a0,s0
    14c8:	0c000000 	jal	0 <EnDodojr_Init>
    14cc:	8fa5002c 	lw	a1,44(sp)
    14d0:	50400007 	beqzl	v0,14f0 <func_809F786C+0x44>
    14d4:	240f000a 	li	t7,10
    14d8:	0c000000 	jal	0 <EnDodojr_Init>
    14dc:	02002025 	move	a0,s0
    14e0:	3c0e0000 	lui	t6,0x0
    14e4:	25ce0000 	addiu	t6,t6,0
    14e8:	ae0e0190 	sw	t6,400(s0)
    14ec:	240f000a 	li	t7,10
    14f0:	afaf0010 	sw	t7,16(sp)
    14f4:	260400b6 	addiu	a0,s0,182
    14f8:	00002825 	move	a1,zero
    14fc:	24060004 	li	a2,4
    1500:	0c000000 	jal	0 <EnDodojr_Init>
    1504:	240703e8 	li	a3,1000
    1508:	861800b4 	lh	t8,180(s0)
    150c:	861901fe 	lh	t9,510(s0)
    1510:	a6180030 	sh	t8,48(s0)
    1514:	a2190114 	sb	t9,276(s0)
    1518:	8fbf0024 	lw	ra,36(sp)
    151c:	8fb00020 	lw	s0,32(sp)
    1520:	27bd0028 	addiu	sp,sp,40
    1524:	03e00008 	jr	ra
    1528:	00000000 	nop

0000152c <func_809F78EC>:
    152c:	27bdffe8 	addiu	sp,sp,-24
    1530:	afbf0014 	sw	ra,20(sp)
    1534:	afa5001c 	sw	a1,28(sp)
    1538:	848201fe 	lh	v0,510(a0)
    153c:	14400003 	bnez	v0,154c <func_809F78EC+0x20>
    1540:	244effff 	addiu	t6,v0,-1
    1544:	10000004 	b	1558 <func_809F78EC+0x2c>
    1548:	00001825 	move	v1,zero
    154c:	a48e01fe 	sh	t6,510(a0)
    1550:	848201fe 	lh	v0,510(a0)
    1554:	00401825 	move	v1,v0
    1558:	10600016 	beqz	v1,15b4 <func_809F78EC+0x88>
    155c:	2841001e 	slti	at,v0,30
    1560:	1020001a 	beqz	at,15cc <func_809F78EC+0xa0>
    1564:	304f0001 	andi	t7,v0,0x1
    1568:	11e0000a 	beqz	t7,1594 <func_809F78EC+0x68>
    156c:	3c013fc0 	lui	at,0x3fc0
    1570:	3c013fc0 	lui	at,0x3fc0
    1574:	44810000 	mtc1	at,$f0
    1578:	c4840024 	lwc1	$f4,36(a0)
    157c:	c488002c 	lwc1	$f8,44(a0)
    1580:	46002180 	add.s	$f6,$f4,$f0
    1584:	46004280 	add.s	$f10,$f8,$f0
    1588:	e4860024 	swc1	$f6,36(a0)
    158c:	1000000f 	b	15cc <func_809F78EC+0xa0>
    1590:	e48a002c 	swc1	$f10,44(a0)
    1594:	44810000 	mtc1	at,$f0
    1598:	c4900024 	lwc1	$f16,36(a0)
    159c:	c484002c 	lwc1	$f4,44(a0)
    15a0:	46008481 	sub.s	$f18,$f16,$f0
    15a4:	46002181 	sub.s	$f6,$f4,$f0
    15a8:	e4920024 	swc1	$f18,36(a0)
    15ac:	10000007 	b	15cc <func_809F78EC+0xa0>
    15b0:	e486002c 	swc1	$f6,44(a0)
    15b4:	0c000000 	jal	0 <EnDodojr_Init>
    15b8:	afa40018 	sw	a0,24(sp)
    15bc:	8fa40018 	lw	a0,24(sp)
    15c0:	3c180000 	lui	t8,0x0
    15c4:	27180000 	addiu	t8,t8,0
    15c8:	ac980190 	sw	t8,400(a0)
    15cc:	8fbf0014 	lw	ra,20(sp)
    15d0:	27bd0018 	addiu	sp,sp,24
    15d4:	03e00008 	jr	ra
    15d8:	00000000 	nop

000015dc <func_809F799C>:
    15dc:	27bdffe0 	addiu	sp,sp,-32
    15e0:	afbf001c 	sw	ra,28(sp)
    15e4:	afb00018 	sw	s0,24(sp)
    15e8:	afa50024 	sw	a1,36(sp)
    15ec:	8c8e0004 	lw	t6,4(a0)
    15f0:	3c010100 	lui	at,0x100
    15f4:	00808025 	move	s0,a0
    15f8:	01c17825 	or	t7,t6,at
    15fc:	0c000000 	jal	0 <EnDodojr_Init>
    1600:	ac8f0004 	sw	t7,4(a0)
    1604:	02002025 	move	a0,s0
    1608:	0c000000 	jal	0 <EnDodojr_Init>
    160c:	8fa50024 	lw	a1,36(sp)
    1610:	50400007 	beqzl	v0,1630 <func_809F799C+0x54>
    1614:	8fbf001c 	lw	ra,28(sp)
    1618:	0c000000 	jal	0 <EnDodojr_Init>
    161c:	02002025 	move	a0,s0
    1620:	3c180000 	lui	t8,0x0
    1624:	27180000 	addiu	t8,t8,0
    1628:	ae180190 	sw	t8,400(s0)
    162c:	8fbf001c 	lw	ra,28(sp)
    1630:	8fb00018 	lw	s0,24(sp)
    1634:	27bd0020 	addiu	sp,sp,32
    1638:	03e00008 	jr	ra
    163c:	00000000 	nop

00001640 <func_809F7A00>:
    1640:	27bdffd8 	addiu	sp,sp,-40
    1644:	afb00020 	sw	s0,32(sp)
    1648:	00808025 	move	s0,a0
    164c:	afbf0024 	sw	ra,36(sp)
    1650:	afa5002c 	sw	a1,44(sp)
    1654:	240e0064 	li	t6,100
    1658:	afae0010 	sw	t6,16(sp)
    165c:	24054000 	li	a1,16384
    1660:	248400b4 	addiu	a0,a0,180
    1664:	24060004 	li	a2,4
    1668:	0c000000 	jal	0 <EnDodojr_Init>
    166c:	240703e8 	li	a3,1000
    1670:	86020202 	lh	v0,514(s0)
    1674:	2418001e 	li	t8,30
    1678:	14400003 	bnez	v0,1688 <func_809F7A00+0x48>
    167c:	244fffff 	addiu	t7,v0,-1
    1680:	10000004 	b	1694 <func_809F7A00+0x54>
    1684:	00001825 	move	v1,zero
    1688:	a60f0202 	sh	t7,514(s0)
    168c:	86020202 	lh	v0,514(s0)
    1690:	00401825 	move	v1,v0
    1694:	1060000d 	beqz	v1,16cc <func_809F7A00+0x8c>
    1698:	0302c823 	subu	t9,t8,v0
    169c:	44992000 	mtc1	t9,$f4
    16a0:	3c0141f0 	lui	at,0x41f0
    16a4:	44814000 	mtc1	at,$f8
    16a8:	468021a0 	cvt.s.w	$f6,$f4
    16ac:	3c014270 	lui	at,0x4270
    16b0:	44818000 	mtc1	at,$f16
    16b4:	c60a000c 	lwc1	$f10,12(s0)
    16b8:	46083003 	div.s	$f0,$f6,$f8
    16bc:	46008482 	mul.s	$f18,$f16,$f0
    16c0:	46125101 	sub.s	$f4,$f10,$f18
    16c4:	10000003 	b	16d4 <func_809F7A00+0x94>
    16c8:	e6040028 	swc1	$f4,40(s0)
    16cc:	0c000000 	jal	0 <EnDodojr_Init>
    16d0:	02002025 	move	a0,s0
    16d4:	02002025 	move	a0,s0
    16d8:	8fa5002c 	lw	a1,44(sp)
    16dc:	0c000000 	jal	0 <EnDodojr_Init>
    16e0:	24060003 	li	a2,3
    16e4:	8fbf0024 	lw	ra,36(sp)
    16e8:	8fb00020 	lw	s0,32(sp)
    16ec:	27bd0028 	addiu	sp,sp,40
    16f0:	03e00008 	jr	ra
    16f4:	00000000 	nop

000016f8 <func_809F7AB8>:
    16f8:	27bdffd8 	addiu	sp,sp,-40
    16fc:	afbf0024 	sw	ra,36(sp)
    1700:	afb00020 	sw	s0,32(sp)
    1704:	00808025 	move	s0,a0
    1708:	0c000000 	jal	0 <EnDodojr_Init>
    170c:	afa5002c 	sw	a1,44(sp)
    1710:	240e000a 	li	t6,10
    1714:	afae0010 	sw	t6,16(sp)
    1718:	260400b6 	addiu	a0,s0,182
    171c:	00002825 	move	a1,zero
    1720:	24060004 	li	a2,4
    1724:	0c000000 	jal	0 <EnDodojr_Init>
    1728:	240703e8 	li	a3,1000
    172c:	860f00b4 	lh	t7,180(s0)
    1730:	02002025 	move	a0,s0
    1734:	a60f0030 	sh	t7,48(s0)
    1738:	0c000000 	jal	0 <EnDodojr_Init>
    173c:	8fa5002c 	lw	a1,44(sp)
    1740:	10400009 	beqz	v0,1768 <func_809F7AB8+0x70>
    1744:	2418003c 	li	t8,60
    1748:	a6180202 	sh	t8,514(s0)
    174c:	0c000000 	jal	0 <EnDodojr_Init>
    1750:	02002025 	move	a0,s0
    1754:	3c080000 	lui	t0,0x0
    1758:	24190007 	li	t9,7
    175c:	25080000 	addiu	t0,t0,0
    1760:	a61901fc 	sh	t9,508(s0)
    1764:	ae080190 	sw	t0,400(s0)
    1768:	8fbf0024 	lw	ra,36(sp)
    176c:	8fb00020 	lw	s0,32(sp)
    1770:	27bd0028 	addiu	sp,sp,40
    1774:	03e00008 	jr	ra
    1778:	00000000 	nop

0000177c <func_809F7B3C>:
    177c:	27bdffc8 	addiu	sp,sp,-56
    1780:	afbf0034 	sw	ra,52(sp)
    1784:	afb00030 	sw	s0,48(sp)
    1788:	848201fc 	lh	v0,508(a0)
    178c:	00808025 	move	s0,a0
    1790:	24060010 	li	a2,16
    1794:	5040000d 	beqzl	v0,17cc <func_809F7B3C+0x50>
    1798:	c6040028 	lwc1	$f4,40(s0)
    179c:	908e0114 	lbu	t6,276(a0)
    17a0:	24054000 	li	a1,16384
    17a4:	240600c8 	li	a2,200
    17a8:	15c00019 	bnez	t6,1810 <func_809F7B3C+0x94>
    17ac:	00003825 	move	a3,zero
    17b0:	0c000000 	jal	0 <EnDodojr_Init>
    17b4:	afa20010 	sw	v0,16(sp)
    17b8:	860f01fc 	lh	t7,508(s0)
    17bc:	25f8ffff 	addiu	t8,t7,-1
    17c0:	10000013 	b	1810 <func_809F7B3C+0x94>
    17c4:	a61801fc 	sh	t8,508(s0)
    17c8:	c6040028 	lwc1	$f4,40(s0)
    17cc:	8e070024 	lw	a3,36(s0)
    17d0:	24a41c24 	addiu	a0,a1,7204
    17d4:	e7a40010 	swc1	$f4,16(sp)
    17d8:	c606002c 	lwc1	$f6,44(s0)
    17dc:	afa00024 	sw	zero,36(sp)
    17e0:	afa00020 	sw	zero,32(sp)
    17e4:	afa0001c 	sw	zero,28(sp)
    17e8:	afa00018 	sw	zero,24(sp)
    17ec:	0c000000 	jal	0 <EnDodojr_Init>
    17f0:	e7a60014 	swc1	$f6,20(sp)
    17f4:	10400002 	beqz	v0,1800 <func_809F7B3C+0x84>
    17f8:	24190008 	li	t9,8
    17fc:	a44001f8 	sh	zero,504(v0)
    1800:	3c080000 	lui	t0,0x0
    1804:	25080000 	addiu	t0,t0,0
    1808:	a6190202 	sh	t9,514(s0)
    180c:	ae080190 	sw	t0,400(s0)
    1810:	8fbf0034 	lw	ra,52(sp)
    1814:	8fb00030 	lw	s0,48(sp)
    1818:	27bd0038 	addiu	sp,sp,56
    181c:	03e00008 	jr	ra
    1820:	00000000 	nop

00001824 <func_809F7BE4>:
    1824:	27bdffe0 	addiu	sp,sp,-32
    1828:	afbf001c 	sw	ra,28(sp)
    182c:	afb00018 	sw	s0,24(sp)
    1830:	afa50024 	sw	a1,36(sp)
    1834:	84820202 	lh	v0,514(a0)
    1838:	00808025 	move	s0,a0
    183c:	00002825 	move	a1,zero
    1840:	14400003 	bnez	v0,1850 <func_809F7BE4+0x2c>
    1844:	244effff 	addiu	t6,v0,-1
    1848:	10000003 	b	1858 <func_809F7BE4+0x34>
    184c:	00001825 	move	v1,zero
    1850:	a60e0202 	sh	t6,514(s0)
    1854:	86030202 	lh	v1,514(s0)
    1858:	14600006 	bnez	v1,1874 <func_809F7BE4+0x50>
    185c:	8fa40024 	lw	a0,36(sp)
    1860:	26060024 	addiu	a2,s0,36
    1864:	0c000000 	jal	0 <EnDodojr_Init>
    1868:	24070040 	li	a3,64
    186c:	0c000000 	jal	0 <EnDodojr_Init>
    1870:	02002025 	move	a0,s0
    1874:	8fbf001c 	lw	ra,28(sp)
    1878:	8fb00018 	lw	s0,24(sp)
    187c:	27bd0020 	addiu	sp,sp,32
    1880:	03e00008 	jr	ra
    1884:	00000000 	nop

00001888 <func_809F7C48>:
    1888:	27bdffe8 	addiu	sp,sp,-24
    188c:	afbf0014 	sw	ra,20(sp)
    1890:	afa5001c 	sw	a1,28(sp)
    1894:	84820200 	lh	v0,512(a0)
    1898:	14400003 	bnez	v0,18a8 <func_809F7C48+0x20>
    189c:	244effff 	addiu	t6,v0,-1
    18a0:	10000003 	b	18b0 <func_809F7C48+0x28>
    18a4:	00001825 	move	v1,zero
    18a8:	a48e0200 	sh	t6,512(a0)
    18ac:	84830200 	lh	v1,512(a0)
    18b0:	54600004 	bnezl	v1,18c4 <func_809F7C48+0x3c>
    18b4:	8fbf0014 	lw	ra,20(sp)
    18b8:	0c000000 	jal	0 <EnDodojr_Init>
    18bc:	00000000 	nop
    18c0:	8fbf0014 	lw	ra,20(sp)
    18c4:	27bd0018 	addiu	sp,sp,24
    18c8:	03e00008 	jr	ra
    18cc:	00000000 	nop

000018d0 <EnDodojr_Update>:
    18d0:	27bdffd8 	addiu	sp,sp,-40
    18d4:	afb00020 	sw	s0,32(sp)
    18d8:	00808025 	move	s0,a0
    18dc:	afbf0024 	sw	ra,36(sp)
    18e0:	afa5002c 	sw	a1,44(sp)
    18e4:	0c000000 	jal	0 <EnDodojr_Init>
    18e8:	2484014c 	addiu	a0,a0,332
    18ec:	0c000000 	jal	0 <EnDodojr_Init>
    18f0:	02002025 	move	a0,s0
    18f4:	02002025 	move	a0,s0
    18f8:	0c000000 	jal	0 <EnDodojr_Init>
    18fc:	8fa5002c 	lw	a1,44(sp)
    1900:	8e020190 	lw	v0,400(s0)
    1904:	3c0e0000 	lui	t6,0x0
    1908:	25ce0000 	addiu	t6,t6,0
    190c:	51c20013 	beql	t6,v0,195c <EnDodojr_Update+0x8c>
    1910:	02002025 	move	a0,s0
    1914:	860f01d4 	lh	t7,468(s0)
    1918:	861801d6 	lh	t8,470(s0)
    191c:	44804000 	mtc1	zero,$f8
    1920:	448f2000 	mtc1	t7,$f4
    1924:	44983000 	mtc1	t8,$f6
    1928:	24190005 	li	t9,5
    192c:	46802120 	cvt.s.w	$f4,$f4
    1930:	afb90014 	sw	t9,20(sp)
    1934:	8fa4002c 	lw	a0,44(sp)
    1938:	02002825 	move	a1,s0
    193c:	e7a80010 	swc1	$f8,16(sp)
    1940:	468031a0 	cvt.s.w	$f6,$f6
    1944:	44062000 	mfc1	a2,$f4
    1948:	44073000 	mfc1	a3,$f6
    194c:	0c000000 	jal	0 <EnDodojr_Init>
    1950:	00000000 	nop
    1954:	8e020190 	lw	v0,400(s0)
    1958:	02002025 	move	a0,s0
    195c:	0040f809 	jalr	v0
    1960:	8fa5002c 	lw	a1,44(sp)
    1964:	02002025 	move	a0,s0
    1968:	0c000000 	jal	0 <EnDodojr_Init>
    196c:	3c054120 	lui	a1,0x4120
    1970:	02002025 	move	a0,s0
    1974:	0c000000 	jal	0 <EnDodojr_Init>
    1978:	8fa5002c 	lw	a1,44(sp)
    197c:	8fbf0024 	lw	ra,36(sp)
    1980:	8fb00020 	lw	s0,32(sp)
    1984:	27bd0028 	addiu	sp,sp,40
    1988:	03e00008 	jr	ra
    198c:	00000000 	nop

00001990 <func_809F7D50>:
    1990:	27bdffd0 	addiu	sp,sp,-48
    1994:	3c0f0000 	lui	t7,0x0
    1998:	afbf0014 	sw	ra,20(sp)
    199c:	afa40030 	sw	a0,48(sp)
    19a0:	afa60038 	sw	a2,56(sp)
    19a4:	afa7003c 	sw	a3,60(sp)
    19a8:	25ef0000 	addiu	t7,t7,0
    19ac:	8df90000 	lw	t9,0(t7)
    19b0:	27ae0020 	addiu	t6,sp,32
    19b4:	8df80004 	lw	t8,4(t7)
    19b8:	add90000 	sw	t9,0(t6)
    19bc:	8df90008 	lw	t9,8(t7)
    19c0:	24010001 	li	at,1
    19c4:	add80004 	sw	t8,4(t6)
    19c8:	14a10010 	bne	a1,at,1a0c <func_809F7D50+0x7c>
    19cc:	add90008 	sw	t9,8(t6)
    19d0:	8fa80044 	lw	t0,68(sp)
    19d4:	3c013f80 	lui	at,0x3f80
    19d8:	44811000 	mtc1	at,$f2
    19dc:	3c013f00 	lui	at,0x3f00
    19e0:	44812000 	mtc1	at,$f4
    19e4:	c5000208 	lwc1	$f0,520(t0)
    19e8:	afa50034 	sw	a1,52(sp)
    19ec:	24070001 	li	a3,1
    19f0:	46040182 	mul.s	$f6,$f0,$f4
    19f4:	46020380 	add.s	$f14,$f0,$f2
    19f8:	46023300 	add.s	$f12,$f6,$f2
    19fc:	44066000 	mfc1	a2,$f12
    1a00:	0c000000 	jal	0 <EnDodojr_Init>
    1a04:	00000000 	nop
    1a08:	8fa50034 	lw	a1,52(sp)
    1a0c:	24010004 	li	at,4
    1a10:	54a10006 	bnel	a1,at,1a2c <func_809F7D50+0x9c>
    1a14:	8fbf0014 	lw	ra,20(sp)
    1a18:	8fa50044 	lw	a1,68(sp)
    1a1c:	27a40020 	addiu	a0,sp,32
    1a20:	0c000000 	jal	0 <EnDodojr_Init>
    1a24:	24a501e4 	addiu	a1,a1,484
    1a28:	8fbf0014 	lw	ra,20(sp)
    1a2c:	27bd0030 	addiu	sp,sp,48
    1a30:	00001025 	move	v0,zero
    1a34:	03e00008 	jr	ra
    1a38:	00000000 	nop

00001a3c <func_809F7DFC>:
    1a3c:	afa40000 	sw	a0,0(sp)
    1a40:	afa50004 	sw	a1,4(sp)
    1a44:	afa60008 	sw	a2,8(sp)
    1a48:	03e00008 	jr	ra
    1a4c:	afa7000c 	sw	a3,12(sp)

00001a50 <EnDodojr_Draw>:
    1a50:	27bdffd8 	addiu	sp,sp,-40
    1a54:	afbf0024 	sw	ra,36(sp)
    1a58:	afb00020 	sw	s0,32(sp)
    1a5c:	afa5002c 	sw	a1,44(sp)
    1a60:	8c820190 	lw	v0,400(a0)
    1a64:	3c0e0000 	lui	t6,0x0
    1a68:	25ce0000 	addiu	t6,t6,0
    1a6c:	11c20011 	beq	t6,v0,1ab4 <EnDodojr_Draw+0x64>
    1a70:	00808025 	move	s0,a0
    1a74:	3c0f0000 	lui	t7,0x0
    1a78:	25ef0000 	addiu	t7,t7,0
    1a7c:	51e2000e 	beql	t7,v0,1ab8 <EnDodojr_Draw+0x68>
    1a80:	8fbf0024 	lw	ra,36(sp)
    1a84:	0c000000 	jal	0 <EnDodojr_Init>
    1a88:	8ca40000 	lw	a0,0(a1)
    1a8c:	3c190000 	lui	t9,0x0
    1a90:	27390000 	addiu	t9,t9,0
    1a94:	8e050150 	lw	a1,336(s0)
    1a98:	8e06016c 	lw	a2,364(s0)
    1a9c:	3c070000 	lui	a3,0x0
    1aa0:	24e70000 	addiu	a3,a3,0
    1aa4:	afb00014 	sw	s0,20(sp)
    1aa8:	afb90010 	sw	t9,16(sp)
    1aac:	0c000000 	jal	0 <EnDodojr_Init>
    1ab0:	8fa4002c 	lw	a0,44(sp)
    1ab4:	8fbf0024 	lw	ra,36(sp)
    1ab8:	8fb00020 	lw	s0,32(sp)
    1abc:	27bd0028 	addiu	sp,sp,40
    1ac0:	03e00008 	jr	ra
    1ac4:	00000000 	nop
	...
