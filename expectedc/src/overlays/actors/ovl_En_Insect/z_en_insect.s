
build/src/overlays/actors/ovl_En_Insect/z_en_insect.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A7BE20>:
       0:	848e001c 	lh	t6,28(a0)
       4:	3c190000 	lui	t9,0x0
       8:	31cf0003 	andi	t7,t6,0x3
       c:	000fc040 	sll	t8,t7,0x1
      10:	0338c821 	addu	t9,t9,t8
      14:	97390000 	lhu	t9,0(t9)
      18:	03e00008 	jr	ra
      1c:	a4990314 	sh	t9,788(a0)

00000020 <EnInsect_XZDistanceSquared>:
      20:	c4840000 	lwc1	$f4,0(a0)
      24:	c4a60000 	lwc1	$f6,0(a1)
      28:	c4880008 	lwc1	$f8,8(a0)
      2c:	c4aa0008 	lwc1	$f10,8(a1)
      30:	46062081 	sub.s	$f2,$f4,$f6
      34:	460a4301 	sub.s	$f12,$f8,$f10
      38:	46021402 	mul.s	$f16,$f2,$f2
      3c:	00000000 	nop
      40:	460c6482 	mul.s	$f18,$f12,$f12
      44:	03e00008 	jr	ra
      48:	46128000 	add.s	$f0,$f16,$f18

0000004c <func_80A7BE6C>:
      4c:	27bdffd0 	addiu	sp,sp,-48
      50:	afbf0014 	sw	ra,20(sp)
      54:	3c014200 	lui	at,0x4200
      58:	44813000 	mtc1	at,$f6
      5c:	c4840090 	lwc1	$f4,144(a0)
      60:	00803025 	move	a2,a0
      64:	8ca21c44 	lw	v0,7236(a1)
      68:	4606203c 	c.lt.s	$f4,$f6
      6c:	34018000 	li	at,0x8000
      70:	4502002d 	bc1fl	128 <func_80A7BE6C+0xdc>
      74:	00001025 	move	v0,zero
      78:	8484008a 	lh	a0,138(a0)
      7c:	afa60030 	sw	a2,48(sp)
      80:	afa20028 	sw	v0,40(sp)
      84:	00812021 	addu	a0,a0,at
      88:	00042400 	sll	a0,a0,0x10
      8c:	0c000000 	jal	0 <func_80A7BE20>
      90:	00042403 	sra	a0,a0,0x10
      94:	3c014180 	lui	at,0x4180
      98:	44814000 	mtc1	at,$f8
      9c:	8fa20028 	lw	v0,40(sp)
      a0:	8fae0030 	lw	t6,48(sp)
      a4:	46080282 	mul.s	$f10,$f0,$f8
      a8:	c4500024 	lwc1	$f16,36(v0)
      ac:	34018000 	li	at,0x8000
      b0:	46105480 	add.s	$f18,$f10,$f16
      b4:	e7b2001c 	swc1	$f18,28(sp)
      b8:	c4440028 	lwc1	$f4,40(v0)
      bc:	e7a40020 	swc1	$f4,32(sp)
      c0:	85c4008a 	lh	a0,138(t6)
      c4:	00812021 	addu	a0,a0,at
      c8:	00042400 	sll	a0,a0,0x10
      cc:	0c000000 	jal	0 <func_80A7BE20>
      d0:	00042403 	sra	a0,a0,0x10
      d4:	3c014180 	lui	at,0x4180
      d8:	44813000 	mtc1	at,$f6
      dc:	8fa20028 	lw	v0,40(sp)
      e0:	8fa50030 	lw	a1,48(sp)
      e4:	46060202 	mul.s	$f8,$f0,$f6
      e8:	c44a002c 	lwc1	$f10,44(v0)
      ec:	27a4001c 	addiu	a0,sp,28
      f0:	24a50024 	addiu	a1,a1,36
      f4:	460a4400 	add.s	$f16,$f8,$f10
      f8:	0c000000 	jal	0 <func_80A7BE20>
      fc:	e7b00024 	swc1	$f16,36(sp)
     100:	3c0143c8 	lui	at,0x43c8
     104:	44819000 	mtc1	at,$f18
     108:	00000000 	nop
     10c:	4612003e 	c.le.s	$f0,$f18
     110:	00000000 	nop
     114:	45020004 	bc1fl	128 <func_80A7BE6C+0xdc>
     118:	00001025 	move	v0,zero
     11c:	10000002 	b	128 <func_80A7BE6C+0xdc>
     120:	24020001 	li	v0,1
     124:	00001025 	move	v0,zero
     128:	8fbf0014 	lw	ra,20(sp)
     12c:	27bd0030 	addiu	sp,sp,48
     130:	03e00008 	jr	ra
     134:	00000000 	nop

00000138 <func_80A7BF58>:
     138:	44800000 	mtc1	zero,$f0
     13c:	27bdffd8 	addiu	sp,sp,-40
     140:	afbf0024 	sw	ra,36(sp)
     144:	afa40028 	sw	a0,40(sp)
     148:	3c050000 	lui	a1,0x0
     14c:	240e0001 	li	t6,1
     150:	44070000 	mfc1	a3,$f0
     154:	afae0014 	sw	t6,20(sp)
     158:	24a50000 	addiu	a1,a1,0
     15c:	248401ac 	addiu	a0,a0,428
     160:	3c063f80 	lui	a2,0x3f80
     164:	e7a00010 	swc1	$f0,16(sp)
     168:	0c000000 	jal	0 <func_80A7BE20>
     16c:	e7a00018 	swc1	$f0,24(sp)
     170:	8fbf0024 	lw	ra,36(sp)
     174:	27bd0028 	addiu	sp,sp,40
     178:	03e00008 	jr	ra
     17c:	00000000 	nop

00000180 <EnInsect_FoundNearbySoil>:
     180:	27bdffd0 	addiu	sp,sp,-48
     184:	afbf002c 	sw	ra,44(sp)
     188:	afb30028 	sw	s3,40(sp)
     18c:	afb20024 	sw	s2,36(sp)
     190:	afb10020 	sw	s1,32(sp)
     194:	afb0001c 	sw	s0,28(sp)
     198:	f7b40010 	sdc1	$f20,16(sp)
     19c:	8cb01c6c 	lw	s0,7276(a1)
     1a0:	3c0145c8 	lui	at,0x45c8
     1a4:	4481a000 	mtc1	at,$f20
     1a8:	00808825 	move	s1,a0
     1ac:	00009825 	move	s3,zero
     1b0:	12000018 	beqz	s0,214 <EnInsect_FoundNearbySoil+0x94>
     1b4:	ac800320 	sw	zero,800(a0)
     1b8:	241201cf 	li	s2,463
     1bc:	860e0000 	lh	t6,0(s0)
     1c0:	564e0012 	bnel	s2,t6,20c <EnInsect_FoundNearbySoil+0x8c>
     1c4:	8e100124 	lw	s0,292(s0)
     1c8:	c62c0024 	lwc1	$f12,36(s1)
     1cc:	c62e002c 	lwc1	$f14,44(s1)
     1d0:	8e060024 	lw	a2,36(s0)
     1d4:	0c000000 	jal	0 <func_80A7BE20>
     1d8:	8e07002c 	lw	a3,44(s0)
     1dc:	4614003c 	c.lt.s	$f0,$f20
     1e0:	00000000 	nop
     1e4:	45020009 	bc1fl	20c <EnInsect_FoundNearbySoil+0x8c>
     1e8:	8e100124 	lw	s0,292(s0)
     1ec:	822f0003 	lb	t7,3(s1)
     1f0:	82180003 	lb	t8,3(s0)
     1f4:	55f80005 	bnel	t7,t8,20c <EnInsect_FoundNearbySoil+0x8c>
     1f8:	8e100124 	lw	s0,292(s0)
     1fc:	24130001 	li	s3,1
     200:	46000506 	mov.s	$f20,$f0
     204:	ae300320 	sw	s0,800(s1)
     208:	8e100124 	lw	s0,292(s0)
     20c:	5600ffec 	bnezl	s0,1c0 <EnInsect_FoundNearbySoil+0x40>
     210:	860e0000 	lh	t6,0(s0)
     214:	8fbf002c 	lw	ra,44(sp)
     218:	02601025 	move	v0,s3
     21c:	8fb30028 	lw	s3,40(sp)
     220:	d7b40010 	ldc1	$f20,16(sp)
     224:	8fb0001c 	lw	s0,28(sp)
     228:	8fb10020 	lw	s1,32(sp)
     22c:	8fb20024 	lw	s2,36(sp)
     230:	03e00008 	jr	ra
     234:	27bd0030 	addiu	sp,sp,48

00000238 <func_80A7C058>:
     238:	27bdffe8 	addiu	sp,sp,-24
     23c:	afbf0014 	sw	ra,20(sp)
     240:	8482031e 	lh	v0,798(a0)
     244:	240539f0 	li	a1,14832
     248:	18400003 	blez	v0,258 <func_80A7C058+0x20>
     24c:	244effff 	addiu	t6,v0,-1
     250:	1000001a 	b	2bc <func_80A7C058+0x84>
     254:	a48e031e 	sh	t6,798(a0)
     258:	0c000000 	jal	0 <func_80A7BE20>
     25c:	afa40018 	sw	a0,24(sp)
     260:	8fa40018 	lw	a0,24(sp)
     264:	3c010000 	lui	at,0x0
     268:	c42c008c 	lwc1	$f12,140(at)
     26c:	c48001c8 	lwc1	$f0,456(a0)
     270:	3c014040 	lui	at,0x4040
     274:	44812000 	mtc1	at,$f4
     278:	460c003c 	c.lt.s	$f0,$f12
     27c:	24080002 	li	t0,2
     280:	45020004 	bc1fl	294 <func_80A7C058+0x5c>
     284:	46000086 	mov.s	$f2,$f0
     288:	10000002 	b	294 <func_80A7C058+0x5c>
     28c:	46006086 	mov.s	$f2,$f12
     290:	46000086 	mov.s	$f2,$f0
     294:	46022183 	div.s	$f6,$f4,$f2
     298:	4600320d 	trunc.w.s	$f8,$f6
     29c:	44184000 	mfc1	t8,$f8
     2a0:	00000000 	nop
     2a4:	a498031e 	sh	t8,798(a0)
     2a8:	8499031e 	lh	t9,798(a0)
     2ac:	2b210002 	slti	at,t9,2
     2b0:	50200003 	beqzl	at,2c0 <func_80A7C058+0x88>
     2b4:	8fbf0014 	lw	ra,20(sp)
     2b8:	a488031e 	sh	t0,798(a0)
     2bc:	8fbf0014 	lw	ra,20(sp)
     2c0:	27bd0018 	addiu	sp,sp,24
     2c4:	03e00008 	jr	ra
     2c8:	00000000 	nop

000002cc <EnInsect_Init>:
     2cc:	27bdffb8 	addiu	sp,sp,-72
     2d0:	afb3003c 	sw	s3,60(sp)
     2d4:	00a09825 	move	s3,a1
     2d8:	afbf0044 	sw	ra,68(sp)
     2dc:	afb10034 	sw	s1,52(sp)
     2e0:	3c050000 	lui	a1,0x0
     2e4:	00808825 	move	s1,a0
     2e8:	afb40040 	sw	s4,64(sp)
     2ec:	afb20038 	sw	s2,56(sp)
     2f0:	afb00030 	sw	s0,48(sp)
     2f4:	0c000000 	jal	0 <func_80A7BE20>
     2f8:	24a50068 	addiu	a1,a1,104
     2fc:	0c000000 	jal	0 <func_80A7BE20>
     300:	02202025 	move	a0,s1
     304:	8632001c 	lh	s2,28(s1)
     308:	3c060000 	lui	a2,0x0
     30c:	3c070000 	lui	a3,0x0
     310:	32520003 	andi	s2,s2,0x3
     314:	00129400 	sll	s2,s2,0x10
     318:	262e01f0 	addiu	t6,s1,496
     31c:	262f0280 	addiu	t7,s1,640
     320:	24180018 	li	t8,24
     324:	00129403 	sra	s2,s2,0x10
     328:	afb80018 	sw	t8,24(sp)
     32c:	afaf0014 	sw	t7,20(sp)
     330:	afae0010 	sw	t6,16(sp)
     334:	24e70000 	addiu	a3,a3,0
     338:	24c60000 	addiu	a2,a2,0
     33c:	02602025 	move	a0,s3
     340:	0c000000 	jal	0 <func_80A7BE20>
     344:	262501ac 	addiu	a1,s1,428
     348:	2630014c 	addiu	s0,s1,332
     34c:	02002825 	move	a1,s0
     350:	0c000000 	jal	0 <func_80A7BE20>
     354:	02602025 	move	a0,s3
     358:	3c070000 	lui	a3,0x0
     35c:	2639016c 	addiu	t9,s1,364
     360:	afb90010 	sw	t9,16(sp)
     364:	24e70050 	addiu	a3,a3,80
     368:	02602025 	move	a0,s3
     36c:	02002825 	move	a1,s0
     370:	0c000000 	jal	0 <func_80A7BE20>
     374:	02203025 	move	a2,s1
     378:	96230314 	lhu	v1,788(s1)
     37c:	2408001e 	li	t0,30
     380:	a22800ae 	sb	t0,174(s1)
     384:	30690001 	andi	t1,v1,0x1
     388:	11200007 	beqz	t1,3a8 <EnInsect_Init+0xdc>
     38c:	3c010000 	lui	at,0x0
     390:	c4240090 	lwc1	$f4,144(at)
     394:	3c01c000 	lui	at,0xc000
     398:	44813000 	mtc1	at,$f6
     39c:	96230314 	lhu	v1,788(s1)
     3a0:	e624006c 	swc1	$f4,108(s1)
     3a4:	e6260070 	swc1	$f6,112(s1)
     3a8:	306a0004 	andi	t2,v1,0x4
     3ac:	11400007 	beqz	t2,3cc <EnInsect_Init+0x100>
     3b0:	240400c8 	li	a0,200
     3b4:	0c000000 	jal	0 <func_80A7BE20>
     3b8:	24050028 	li	a1,40
     3bc:	8e2b0004 	lw	t3,4(s1)
     3c0:	a622031c 	sh	v0,796(s1)
     3c4:	356c0010 	ori	t4,t3,0x10
     3c8:	ae2c0004 	sw	t4,4(s1)
     3cc:	24140002 	li	s4,2
     3d0:	12540002 	beq	s2,s4,3dc <EnInsect_Init+0x110>
     3d4:	24010003 	li	at,3
     3d8:	1641002e 	bne	s2,at,494 <EnInsect_Init+0x1c8>
     3dc:	02202025 	move	a0,s1
     3e0:	0c000000 	jal	0 <func_80A7BE20>
     3e4:	02602825 	move	a1,s3
     3e8:	10400007 	beqz	v0,408 <EnInsect_Init+0x13c>
     3ec:	00000000 	nop
     3f0:	962d0314 	lhu	t5,788(s1)
     3f4:	44804000 	mtc1	zero,$f8
     3f8:	3c010000 	lui	at,0x0
     3fc:	35ae0010 	ori	t6,t5,0x10
     400:	a62e0314 	sh	t6,788(s1)
     404:	e4280000 	swc1	$f8,0(at)
     408:	1654001a 	bne	s2,s4,474 <EnInsect_Init+0x1a8>
     40c:	00000000 	nop
     410:	a6200034 	sh	zero,52(s1)
     414:	862f0034 	lh	t7,52(s1)
     418:	00008025 	move	s0,zero
     41c:	26721c24 	addiu	s2,s3,7204
     420:	a62f00b8 	sh	t7,184(s1)
     424:	c62a0028 	lwc1	$f10,40(s1)
     428:	8e270024 	lw	a3,36(s1)
     42c:	24090003 	li	t1,3
     430:	e7aa0010 	swc1	$f10,16(sp)
     434:	c630002c 	lwc1	$f16,44(s1)
     438:	02402025 	move	a0,s2
     43c:	02602825 	move	a1,s3
     440:	e7b00014 	swc1	$f16,20(sp)
     444:	863800b4 	lh	t8,180(s1)
     448:	24060020 	li	a2,32
     44c:	afb80018 	sw	t8,24(sp)
     450:	863900b6 	lh	t9,182(s1)
     454:	afb9001c 	sw	t9,28(sp)
     458:	862800b8 	lh	t0,184(s1)
     45c:	afa90024 	sw	t1,36(sp)
     460:	0c000000 	jal	0 <func_80A7BE20>
     464:	afa80020 	sw	t0,32(sp)
     468:	26100001 	addiu	s0,s0,1
     46c:	5614ffee 	bnel	s0,s4,428 <EnInsect_Init+0x15c>
     470:	c62a0028 	lwc1	$f10,40(s1)
     474:	0c000000 	jal	0 <func_80A7BE20>
     478:	02202025 	move	a0,s1
     47c:	3c020000 	lui	v0,0x0
     480:	24420000 	addiu	v0,v0,0
     484:	844a0000 	lh	t2,0(v0)
     488:	254b0001 	addiu	t3,t2,1
     48c:	10000019 	b	4f4 <EnInsect_Init+0x228>
     490:	a44b0000 	sh	t3,0(v0)
     494:	0c000000 	jal	0 <func_80A7BE20>
     498:	00000000 	nop
     49c:	3c010000 	lui	at,0x0
     4a0:	c4320094 	lwc1	$f18,148(at)
     4a4:	4612003c 	c.lt.s	$f0,$f18
     4a8:	00000000 	nop
     4ac:	45000005 	bc1f	4c4 <EnInsect_Init+0x1f8>
     4b0:	00000000 	nop
     4b4:	0c000000 	jal	0 <func_80A7BE20>
     4b8:	02202025 	move	a0,s1
     4bc:	1000000e 	b	4f8 <EnInsect_Init+0x22c>
     4c0:	8fbf0044 	lw	ra,68(sp)
     4c4:	3c010000 	lui	at,0x0
     4c8:	c4240098 	lwc1	$f4,152(at)
     4cc:	4604003c 	c.lt.s	$f0,$f4
     4d0:	00000000 	nop
     4d4:	45000005 	bc1f	4ec <EnInsect_Init+0x220>
     4d8:	00000000 	nop
     4dc:	0c000000 	jal	0 <func_80A7BE20>
     4e0:	02202025 	move	a0,s1
     4e4:	10000004 	b	4f8 <EnInsect_Init+0x22c>
     4e8:	8fbf0044 	lw	ra,68(sp)
     4ec:	0c000000 	jal	0 <func_80A7BE20>
     4f0:	02202025 	move	a0,s1
     4f4:	8fbf0044 	lw	ra,68(sp)
     4f8:	8fb00030 	lw	s0,48(sp)
     4fc:	8fb10034 	lw	s1,52(sp)
     500:	8fb20038 	lw	s2,56(sp)
     504:	8fb3003c 	lw	s3,60(sp)
     508:	8fb40040 	lw	s4,64(sp)
     50c:	03e00008 	jr	ra
     510:	27bd0048 	addiu	sp,sp,72

00000514 <EnInsect_Destroy>:
     514:	27bdffe0 	addiu	sp,sp,-32
     518:	afbf0014 	sw	ra,20(sp)
     51c:	8482001c 	lh	v0,28(a0)
     520:	00803025 	move	a2,a0
     524:	00a02025 	move	a0,a1
     528:	30420003 	andi	v0,v0,0x3
     52c:	00021400 	sll	v0,v0,0x10
     530:	00021403 	sra	v0,v0,0x10
     534:	a7a2001e 	sh	v0,30(sp)
     538:	0c000000 	jal	0 <func_80A7BE20>
     53c:	24c5014c 	addiu	a1,a2,332
     540:	87a2001e 	lh	v0,30(sp)
     544:	24010002 	li	at,2
     548:	3c030000 	lui	v1,0x0
     54c:	10410004 	beq	v0,at,560 <EnInsect_Destroy+0x4c>
     550:	24630000 	addiu	v1,v1,0
     554:	24010003 	li	at,3
     558:	54410006 	bnel	v0,at,574 <EnInsect_Destroy+0x60>
     55c:	8fbf0014 	lw	ra,20(sp)
     560:	84620000 	lh	v0,0(v1)
     564:	18400002 	blez	v0,570 <EnInsect_Destroy+0x5c>
     568:	244effff 	addiu	t6,v0,-1
     56c:	a46e0000 	sh	t6,0(v1)
     570:	8fbf0014 	lw	ra,20(sp)
     574:	27bd0020 	addiu	sp,sp,32
     578:	03e00008 	jr	ra
     57c:	00000000 	nop

00000580 <func_80A7C3A0>:
     580:	27bdffe8 	addiu	sp,sp,-24
     584:	afbf0014 	sw	ra,20(sp)
     588:	00803025 	move	a2,a0
     58c:	afa60018 	sw	a2,24(sp)
     590:	24040005 	li	a0,5
     594:	0c000000 	jal	0 <func_80A7BE20>
     598:	24050023 	li	a1,35
     59c:	8fa40018 	lw	a0,24(sp)
     5a0:	0c000000 	jal	0 <func_80A7BE20>
     5a4:	a482031a 	sh	v0,794(a0)
     5a8:	8fa60018 	lw	a2,24(sp)
     5ac:	3c0e0000 	lui	t6,0x0
     5b0:	25ce0000 	addiu	t6,t6,0
     5b4:	94cf0314 	lhu	t7,788(a2)
     5b8:	acce0310 	sw	t6,784(a2)
     5bc:	35f80100 	ori	t8,t7,0x100
     5c0:	a4d80314 	sh	t8,788(a2)
     5c4:	8fbf0014 	lw	ra,20(sp)
     5c8:	27bd0018 	addiu	sp,sp,24
     5cc:	03e00008 	jr	ra
     5d0:	00000000 	nop

000005d4 <func_80A7C3F4>:
     5d4:	27bdffc8 	addiu	sp,sp,-56
     5d8:	afbf0024 	sw	ra,36(sp)
     5dc:	afb00020 	sw	s0,32(sp)
     5e0:	afa5003c 	sw	a1,60(sp)
     5e4:	44800000 	mtc1	zero,$f0
     5e8:	848e001c 	lh	t6,28(a0)
     5ec:	00808025 	move	s0,a0
     5f0:	3c063dcc 	lui	a2,0x3dcc
     5f4:	31cf0003 	andi	t7,t6,0x3
     5f8:	44050000 	mfc1	a1,$f0
     5fc:	a7af002e 	sh	t7,46(sp)
     600:	34c6cccd 	ori	a2,a2,0xcccd
     604:	24840068 	addiu	a0,a0,104
     608:	3c073f00 	lui	a3,0x3f00
     60c:	0c000000 	jal	0 <func_80A7BE20>
     610:	e7a00010 	swc1	$f0,16(sp)
     614:	0c000000 	jal	0 <func_80A7BE20>
     618:	00000000 	nop
     61c:	3c010000 	lui	at,0x0
     620:	c426009c 	lwc1	$f6,156(at)
     624:	c6040068 	lwc1	$f4,104(s0)
     628:	3c010000 	lui	at,0x0
     62c:	c42a00a0 	lwc1	$f10,160(at)
     630:	46062202 	mul.s	$f8,$f4,$f6
     634:	44806000 	mtc1	zero,$f12
     638:	3c010000 	lui	at,0x0
     63c:	460a0402 	mul.s	$f16,$f0,$f10
     640:	46088080 	add.s	$f2,$f16,$f8
     644:	460c103c 	c.lt.s	$f2,$f12
     648:	00000000 	nop
     64c:	45000003 	bc1f	65c <func_80A7C3F4+0x88>
     650:	00000000 	nop
     654:	1000000a 	b	680 <func_80A7C3F4+0xac>
     658:	e60c01c8 	swc1	$f12,456(s0)
     65c:	c42c00a4 	lwc1	$f12,164(at)
     660:	4602603c 	c.lt.s	$f12,$f2
     664:	00000000 	nop
     668:	45020004 	bc1fl	67c <func_80A7C3F4+0xa8>
     66c:	46001006 	mov.s	$f0,$f2
     670:	10000002 	b	67c <func_80A7C3F4+0xa8>
     674:	46006006 	mov.s	$f0,$f12
     678:	46001006 	mov.s	$f0,$f2
     67c:	e60001c8 	swc1	$f0,456(s0)
     680:	0c000000 	jal	0 <func_80A7BE20>
     684:	260401ac 	addiu	a0,s0,428
     688:	8619031a 	lh	t9,794(s0)
     68c:	86180032 	lh	t8,50(s0)
     690:	1f200003 	bgtz	t9,6a0 <func_80A7C3F4+0xcc>
     694:	a61800b6 	sh	t8,182(s0)
     698:	0c000000 	jal	0 <func_80A7BE20>
     69c:	02002025 	move	a0,s0
     6a0:	96020314 	lhu	v0,788(s0)
     6a4:	87a3002e 	lh	v1,46(sp)
     6a8:	24010002 	li	at,2
     6ac:	30480004 	andi	t0,v0,0x4
     6b0:	11000004 	beqz	t0,6c4 <func_80A7C3F4+0xf0>
     6b4:	00000000 	nop
     6b8:	8609031c 	lh	t1,796(s0)
     6bc:	19200011 	blez	t1,704 <func_80A7C3F4+0x130>
     6c0:	00000000 	nop
     6c4:	10610004 	beq	v1,at,6d8 <func_80A7C3F4+0x104>
     6c8:	304a0001 	andi	t2,v0,0x1
     6cc:	24010003 	li	at,3
     6d0:	54610011 	bnel	v1,at,718 <func_80A7C3F4+0x144>
     6d4:	304e0001 	andi	t6,v0,0x1
     6d8:	5140000f 	beqzl	t2,718 <func_80A7C3F4+0x144>
     6dc:	304e0001 	andi	t6,v0,0x1
     6e0:	960b0088 	lhu	t3,136(s0)
     6e4:	3c0d0000 	lui	t5,0x0
     6e8:	316c0001 	andi	t4,t3,0x1
     6ec:	5180000a 	beqzl	t4,718 <func_80A7C3F4+0x144>
     6f0:	304e0001 	andi	t6,v0,0x1
     6f4:	85ad0000 	lh	t5,0(t5)
     6f8:	29a10004 	slti	at,t5,4
     6fc:	54200006 	bnezl	at,718 <func_80A7C3F4+0x144>
     700:	304e0001 	andi	t6,v0,0x1
     704:	0c000000 	jal	0 <func_80A7BE20>
     708:	02002025 	move	a0,s0
     70c:	10000016 	b	768 <func_80A7C3F4+0x194>
     710:	8fbf0024 	lw	ra,36(sp)
     714:	304e0001 	andi	t6,v0,0x1
     718:	11c00009 	beqz	t6,740 <func_80A7C3F4+0x16c>
     71c:	3c014220 	lui	at,0x4220
     720:	960f0088 	lhu	t7,136(s0)
     724:	31f80040 	andi	t8,t7,0x40
     728:	53000006 	beqzl	t8,744 <func_80A7C3F4+0x170>
     72c:	c6120090 	lwc1	$f18,144(s0)
     730:	0c000000 	jal	0 <func_80A7BE20>
     734:	02002025 	move	a0,s0
     738:	1000000b 	b	768 <func_80A7C3F4+0x194>
     73c:	8fbf0024 	lw	ra,36(sp)
     740:	c6120090 	lwc1	$f18,144(s0)
     744:	44812000 	mtc1	at,$f4
     748:	00000000 	nop
     74c:	4604903c 	c.lt.s	$f18,$f4
     750:	00000000 	nop
     754:	45020004 	bc1fl	768 <func_80A7C3F4+0x194>
     758:	8fbf0024 	lw	ra,36(sp)
     75c:	0c000000 	jal	0 <func_80A7BE20>
     760:	02002025 	move	a0,s0
     764:	8fbf0024 	lw	ra,36(sp)
     768:	8fb00020 	lw	s0,32(sp)
     76c:	27bd0038 	addiu	sp,sp,56
     770:	03e00008 	jr	ra
     774:	00000000 	nop

00000778 <func_80A7C598>:
     778:	27bdffe8 	addiu	sp,sp,-24
     77c:	afbf0014 	sw	ra,20(sp)
     780:	00803025 	move	a2,a0
     784:	afa60018 	sw	a2,24(sp)
     788:	2404000a 	li	a0,10
     78c:	0c000000 	jal	0 <func_80A7BE20>
     790:	2405002d 	li	a1,45
     794:	8fa40018 	lw	a0,24(sp)
     798:	0c000000 	jal	0 <func_80A7BE20>
     79c:	a482031a 	sh	v0,794(a0)
     7a0:	8fa60018 	lw	a2,24(sp)
     7a4:	3c0e0000 	lui	t6,0x0
     7a8:	25ce0000 	addiu	t6,t6,0
     7ac:	94cf0314 	lhu	t7,788(a2)
     7b0:	acce0310 	sw	t6,784(a2)
     7b4:	35f80100 	ori	t8,t7,0x100
     7b8:	a4d80314 	sh	t8,788(a2)
     7bc:	8fbf0014 	lw	ra,20(sp)
     7c0:	27bd0018 	addiu	sp,sp,24
     7c4:	03e00008 	jr	ra
     7c8:	00000000 	nop

000007cc <func_80A7C5EC>:
     7cc:	27bdffc0 	addiu	sp,sp,-64
     7d0:	afbf0024 	sw	ra,36(sp)
     7d4:	afb00020 	sw	s0,32(sp)
     7d8:	afa50044 	sw	a1,68(sp)
     7dc:	848e001c 	lh	t6,28(a0)
     7e0:	44802000 	mtc1	zero,$f4
     7e4:	00808025 	move	s0,a0
     7e8:	3c063dcc 	lui	a2,0x3dcc
     7ec:	31cf0003 	andi	t7,t6,0x3
     7f0:	a7af0034 	sh	t7,52(sp)
     7f4:	34c6cccd 	ori	a2,a2,0xcccd
     7f8:	24840068 	addiu	a0,a0,104
     7fc:	3c053fc0 	lui	a1,0x3fc0
     800:	3c073f00 	lui	a3,0x3f00
     804:	0c000000 	jal	0 <func_80A7BE20>
     808:	e7a40010 	swc1	$f4,16(sp)
     80c:	26040024 	addiu	a0,s0,36
     810:	26050008 	addiu	a1,s0,8
     814:	afa50028 	sw	a1,40(sp)
     818:	0c000000 	jal	0 <func_80A7BE20>
     81c:	afa4002c 	sw	a0,44(sp)
     820:	3c0144c8 	lui	at,0x44c8
     824:	44813000 	mtc1	at,$f6
     828:	8fa4002c 	lw	a0,44(sp)
     82c:	8fa50028 	lw	a1,40(sp)
     830:	4600303c 	c.lt.s	$f6,$f0
     834:	00000000 	nop
     838:	45010005 	bc1t	850 <func_80A7C5EC+0x84>
     83c:	00000000 	nop
     840:	8618031a 	lh	t8,794(s0)
     844:	2b010004 	slti	at,t8,4
     848:	5020000b 	beqzl	at,878 <func_80A7C5EC+0xac>
     84c:	8e02011c 	lw	v0,284(s0)
     850:	0c000000 	jal	0 <func_80A7BE20>
     854:	00000000 	nop
     858:	00022c00 	sll	a1,v0,0x10
     85c:	00052c03 	sra	a1,a1,0x10
     860:	26040032 	addiu	a0,s0,50
     864:	0c000000 	jal	0 <func_80A7BE20>
     868:	240607d0 	li	a2,2000
     86c:	1000000e 	b	8a8 <func_80A7C5EC+0xdc>
     870:	86190032 	lh	t9,50(s0)
     874:	8e02011c 	lw	v0,284(s0)
     878:	5040000b 	beqzl	v0,8a8 <func_80A7C5EC+0xdc>
     87c:	86190032 	lh	t9,50(s0)
     880:	52020009 	beql	s0,v0,8a8 <func_80A7C5EC+0xdc>
     884:	86190032 	lh	t9,50(s0)
     888:	0c000000 	jal	0 <func_80A7BE20>
     88c:	24450024 	addiu	a1,v0,36
     890:	00022c00 	sll	a1,v0,0x10
     894:	00052c03 	sra	a1,a1,0x10
     898:	26040032 	addiu	a0,s0,50
     89c:	0c000000 	jal	0 <func_80A7BE20>
     8a0:	240607d0 	li	a2,2000
     8a4:	86190032 	lh	t9,50(s0)
     8a8:	3c010000 	lui	at,0x0
     8ac:	c4220000 	lwc1	$f2,0(at)
     8b0:	3c010000 	lui	at,0x0
     8b4:	a61900b6 	sh	t9,182(s0)
     8b8:	c42a0000 	lwc1	$f10,0(at)
     8bc:	c6080068 	lwc1	$f8,104(s0)
     8c0:	3c010000 	lui	at,0x0
     8c4:	460a4002 	mul.s	$f0,$f8,$f10
     8c8:	4602003c 	c.lt.s	$f0,$f2
     8cc:	00000000 	nop
     8d0:	45000003 	bc1f	8e0 <func_80A7C5EC+0x114>
     8d4:	00000000 	nop
     8d8:	1000000a 	b	904 <func_80A7C5EC+0x138>
     8dc:	e60201c8 	swc1	$f2,456(s0)
     8e0:	c42c0000 	lwc1	$f12,0(at)
     8e4:	4600603c 	c.lt.s	$f12,$f0
     8e8:	00000000 	nop
     8ec:	45020004 	bc1fl	900 <func_80A7C5EC+0x134>
     8f0:	46000086 	mov.s	$f2,$f0
     8f4:	10000002 	b	900 <func_80A7C5EC+0x134>
     8f8:	46006086 	mov.s	$f2,$f12
     8fc:	46000086 	mov.s	$f2,$f0
     900:	e60201c8 	swc1	$f2,456(s0)
     904:	0c000000 	jal	0 <func_80A7BE20>
     908:	260401ac 	addiu	a0,s0,428
     90c:	8608031a 	lh	t0,794(s0)
     910:	5d000004 	bgtzl	t0,924 <func_80A7C5EC+0x158>
     914:	96020314 	lhu	v0,788(s0)
     918:	0c000000 	jal	0 <func_80A7BE20>
     91c:	02002025 	move	a0,s0
     920:	96020314 	lhu	v0,788(s0)
     924:	87a30034 	lh	v1,52(sp)
     928:	24010002 	li	at,2
     92c:	30490004 	andi	t1,v0,0x4
     930:	11200004 	beqz	t1,944 <func_80A7C5EC+0x178>
     934:	00000000 	nop
     938:	860a031c 	lh	t2,796(s0)
     93c:	19400011 	blez	t2,984 <func_80A7C5EC+0x1b8>
     940:	00000000 	nop
     944:	10610004 	beq	v1,at,958 <func_80A7C5EC+0x18c>
     948:	304b0001 	andi	t3,v0,0x1
     94c:	24010003 	li	at,3
     950:	54610011 	bnel	v1,at,998 <func_80A7C5EC+0x1cc>
     954:	304f0001 	andi	t7,v0,0x1
     958:	5160000f 	beqzl	t3,998 <func_80A7C5EC+0x1cc>
     95c:	304f0001 	andi	t7,v0,0x1
     960:	960c0088 	lhu	t4,136(s0)
     964:	3c0e0000 	lui	t6,0x0
     968:	318d0001 	andi	t5,t4,0x1
     96c:	51a0000a 	beqzl	t5,998 <func_80A7C5EC+0x1cc>
     970:	304f0001 	andi	t7,v0,0x1
     974:	85ce0000 	lh	t6,0(t6)
     978:	29c10004 	slti	at,t6,4
     97c:	54200006 	bnezl	at,998 <func_80A7C5EC+0x1cc>
     980:	304f0001 	andi	t7,v0,0x1
     984:	0c000000 	jal	0 <func_80A7BE20>
     988:	02002025 	move	a0,s0
     98c:	10000016 	b	9e8 <func_80A7C5EC+0x21c>
     990:	8fbf0024 	lw	ra,36(sp)
     994:	304f0001 	andi	t7,v0,0x1
     998:	11e00009 	beqz	t7,9c0 <func_80A7C5EC+0x1f4>
     99c:	3c014220 	lui	at,0x4220
     9a0:	96180088 	lhu	t8,136(s0)
     9a4:	33190040 	andi	t9,t8,0x40
     9a8:	53200006 	beqzl	t9,9c4 <func_80A7C5EC+0x1f8>
     9ac:	c6100090 	lwc1	$f16,144(s0)
     9b0:	0c000000 	jal	0 <func_80A7BE20>
     9b4:	02002025 	move	a0,s0
     9b8:	1000000b 	b	9e8 <func_80A7C5EC+0x21c>
     9bc:	8fbf0024 	lw	ra,36(sp)
     9c0:	c6100090 	lwc1	$f16,144(s0)
     9c4:	44819000 	mtc1	at,$f18
     9c8:	00000000 	nop
     9cc:	4612803c 	c.lt.s	$f16,$f18
     9d0:	00000000 	nop
     9d4:	45020004 	bc1fl	9e8 <func_80A7C5EC+0x21c>
     9d8:	8fbf0024 	lw	ra,36(sp)
     9dc:	0c000000 	jal	0 <func_80A7BE20>
     9e0:	02002025 	move	a0,s0
     9e4:	8fbf0024 	lw	ra,36(sp)
     9e8:	8fb00020 	lw	s0,32(sp)
     9ec:	27bd0040 	addiu	sp,sp,64
     9f0:	03e00008 	jr	ra
     9f4:	00000000 	nop

000009f8 <func_80A7C818>:
     9f8:	27bdffe8 	addiu	sp,sp,-24
     9fc:	afbf0014 	sw	ra,20(sp)
     a00:	00803025 	move	a2,a0
     a04:	afa60018 	sw	a2,24(sp)
     a08:	2404000a 	li	a0,10
     a0c:	0c000000 	jal	0 <func_80A7BE20>
     a10:	24050028 	li	a1,40
     a14:	8fa40018 	lw	a0,24(sp)
     a18:	0c000000 	jal	0 <func_80A7BE20>
     a1c:	a482031a 	sh	v0,794(a0)
     a20:	8fa60018 	lw	a2,24(sp)
     a24:	3c0e0000 	lui	t6,0x0
     a28:	25ce0000 	addiu	t6,t6,0
     a2c:	94cf0314 	lhu	t7,788(a2)
     a30:	acce0310 	sw	t6,784(a2)
     a34:	35f80100 	ori	t8,t7,0x100
     a38:	a4d80314 	sh	t8,788(a2)
     a3c:	8fbf0014 	lw	ra,20(sp)
     a40:	27bd0018 	addiu	sp,sp,24
     a44:	03e00008 	jr	ra
     a48:	00000000 	nop

00000a4c <func_80A7C86C>:
     a4c:	27bdffb8 	addiu	sp,sp,-72
     a50:	afbf0024 	sw	ra,36(sp)
     a54:	afb00020 	sw	s0,32(sp)
     a58:	afa5004c 	sw	a1,76(sp)
     a5c:	3c014220 	lui	at,0x4220
     a60:	44813000 	mtc1	at,$f6
     a64:	c4840090 	lwc1	$f4,144(a0)
     a68:	00808025 	move	s0,a0
     a6c:	3c053fe6 	lui	a1,0x3fe6
     a70:	4606203c 	c.lt.s	$f4,$f6
     a74:	00007025 	move	t6,zero
     a78:	34a56666 	ori	a1,a1,0x6666
     a7c:	26040068 	addiu	a0,s0,104
     a80:	45000002 	bc1f	a8c <func_80A7C86C+0x40>
     a84:	3c063dcc 	lui	a2,0x3dcc
     a88:	240e0001 	li	t6,1
     a8c:	44804000 	mtc1	zero,$f8
     a90:	a7ae0038 	sh	t6,56(sp)
     a94:	34c6cccd 	ori	a2,a2,0xcccd
     a98:	3c073f00 	lui	a3,0x3f00
     a9c:	0c000000 	jal	0 <func_80A7BE20>
     aa0:	e7a80010 	swc1	$f8,16(sp)
     aa4:	26040024 	addiu	a0,s0,36
     aa8:	26050008 	addiu	a1,s0,8
     aac:	afa5002c 	sw	a1,44(sp)
     ab0:	0c000000 	jal	0 <func_80A7BE20>
     ab4:	afa40030 	sw	a0,48(sp)
     ab8:	3c0146c8 	lui	at,0x46c8
     abc:	44815000 	mtc1	at,$f10
     ac0:	8fa40030 	lw	a0,48(sp)
     ac4:	8fa5002c 	lw	a1,44(sp)
     ac8:	4600503c 	c.lt.s	$f10,$f0
     acc:	00000000 	nop
     ad0:	45010006 	bc1t	aec <func_80A7C86C+0xa0>
     ad4:	00000000 	nop
     ad8:	860f031a 	lh	t7,794(s0)
     adc:	87b80038 	lh	t8,56(sp)
     ae0:	29e10004 	slti	at,t7,4
     ae4:	1020000a 	beqz	at,b10 <func_80A7C86C+0xc4>
     ae8:	00000000 	nop
     aec:	0c000000 	jal	0 <func_80A7BE20>
     af0:	00000000 	nop
     af4:	00022c00 	sll	a1,v0,0x10
     af8:	00052c03 	sra	a1,a1,0x10
     afc:	26040032 	addiu	a0,s0,50
     b00:	0c000000 	jal	0 <func_80A7BE20>
     b04:	240607d0 	li	a2,2000
     b08:	1000001c 	b	b7c <func_80A7C86C+0x130>
     b0c:	860a0032 	lh	t2,50(s0)
     b10:	13000019 	beqz	t8,b78 <func_80A7C86C+0x12c>
     b14:	8fa3004c 	lw	v1,76(sp)
     b18:	8605008a 	lh	a1,138(s0)
     b1c:	8462009e 	lh	v0,158(v1)
     b20:	34018000 	li	at,0x8000
     b24:	00a12821 	addu	a1,a1,at
     b28:	00052c00 	sll	a1,a1,0x10
     b2c:	30590010 	andi	t9,v0,0x10
     b30:	13200008 	beqz	t9,b54 <func_80A7C86C+0x108>
     b34:	00052c03 	sra	a1,a1,0x10
     b38:	30480020 	andi	t0,v0,0x20
     b3c:	5100000c 	beqzl	t0,b70 <func_80A7C86C+0x124>
     b40:	26040032 	addiu	a0,s0,50
     b44:	24a52000 	addiu	a1,a1,8192
     b48:	00052c00 	sll	a1,a1,0x10
     b4c:	10000007 	b	b6c <func_80A7C86C+0x120>
     b50:	00052c03 	sra	a1,a1,0x10
     b54:	30490020 	andi	t1,v0,0x20
     b58:	51200005 	beqzl	t1,b70 <func_80A7C86C+0x124>
     b5c:	26040032 	addiu	a0,s0,50
     b60:	24a5e000 	addiu	a1,a1,-8192
     b64:	00052c00 	sll	a1,a1,0x10
     b68:	00052c03 	sra	a1,a1,0x10
     b6c:	26040032 	addiu	a0,s0,50
     b70:	0c000000 	jal	0 <func_80A7BE20>
     b74:	240607d0 	li	a2,2000
     b78:	860a0032 	lh	t2,50(s0)
     b7c:	3c010000 	lui	at,0x0
     b80:	c4220000 	lwc1	$f2,0(at)
     b84:	3c010000 	lui	at,0x0
     b88:	a60a00b6 	sh	t2,182(s0)
     b8c:	c4320000 	lwc1	$f18,0(at)
     b90:	c6100068 	lwc1	$f16,104(s0)
     b94:	3c010000 	lui	at,0x0
     b98:	46128002 	mul.s	$f0,$f16,$f18
     b9c:	4602003c 	c.lt.s	$f0,$f2
     ba0:	00000000 	nop
     ba4:	45000003 	bc1f	bb4 <func_80A7C86C+0x168>
     ba8:	00000000 	nop
     bac:	1000000a 	b	bd8 <func_80A7C86C+0x18c>
     bb0:	e60201c8 	swc1	$f2,456(s0)
     bb4:	c42c0000 	lwc1	$f12,0(at)
     bb8:	4600603c 	c.lt.s	$f12,$f0
     bbc:	00000000 	nop
     bc0:	45020004 	bc1fl	bd4 <func_80A7C86C+0x188>
     bc4:	46000086 	mov.s	$f2,$f0
     bc8:	10000002 	b	bd4 <func_80A7C86C+0x188>
     bcc:	46006086 	mov.s	$f2,$f12
     bd0:	46000086 	mov.s	$f2,$f0
     bd4:	e60201c8 	swc1	$f2,456(s0)
     bd8:	0c000000 	jal	0 <func_80A7BE20>
     bdc:	260401ac 	addiu	a0,s0,428
     be0:	860b031a 	lh	t3,794(s0)
     be4:	87ac0038 	lh	t4,56(sp)
     be8:	19600003 	blez	t3,bf8 <func_80A7C86C+0x1ac>
     bec:	00000000 	nop
     bf0:	55800006 	bnezl	t4,c0c <func_80A7C86C+0x1c0>
     bf4:	960d0314 	lhu	t5,788(s0)
     bf8:	0c000000 	jal	0 <func_80A7BE20>
     bfc:	02002025 	move	a0,s0
     c00:	1000000c 	b	c34 <func_80A7C86C+0x1e8>
     c04:	8fbf0024 	lw	ra,36(sp)
     c08:	960d0314 	lhu	t5,788(s0)
     c0c:	31ae0001 	andi	t6,t5,0x1
     c10:	51c00008 	beqzl	t6,c34 <func_80A7C86C+0x1e8>
     c14:	8fbf0024 	lw	ra,36(sp)
     c18:	960f0088 	lhu	t7,136(s0)
     c1c:	31f80040 	andi	t8,t7,0x40
     c20:	53000004 	beqzl	t8,c34 <func_80A7C86C+0x1e8>
     c24:	8fbf0024 	lw	ra,36(sp)
     c28:	0c000000 	jal	0 <func_80A7BE20>
     c2c:	02002025 	move	a0,s0
     c30:	8fbf0024 	lw	ra,36(sp)
     c34:	8fb00020 	lw	s0,32(sp)
     c38:	27bd0048 	addiu	sp,sp,72
     c3c:	03e00008 	jr	ra
     c40:	00000000 	nop

00000c44 <func_80A7CA64>:
     c44:	27bdffe8 	addiu	sp,sp,-24
     c48:	afbf0014 	sw	ra,20(sp)
     c4c:	240e00c8 	li	t6,200
     c50:	a48e031a 	sh	t6,794(a0)
     c54:	3c053a83 	lui	a1,0x3a83
     c58:	34a5126f 	ori	a1,a1,0x126f
     c5c:	0c000000 	jal	0 <func_80A7BE20>
     c60:	afa40018 	sw	a0,24(sp)
     c64:	8fa40018 	lw	a0,24(sp)
     c68:	44802000 	mtc1	zero,$f4
     c6c:	ac800134 	sw	zero,308(a0)
     c70:	0c000000 	jal	0 <func_80A7BE20>
     c74:	e4840068 	swc1	$f4,104(a0)
     c78:	8fa40018 	lw	a0,24(sp)
     c7c:	3c010000 	lui	at,0x0
     c80:	c42600c0 	lwc1	$f6,192(at)
     c84:	94980314 	lhu	t8,788(a0)
     c88:	3c0f0000 	lui	t7,0x0
     c8c:	25ef0000 	addiu	t7,t7,0
     c90:	3319feff 	andi	t9,t8,0xfeff
     c94:	ac8f0310 	sw	t7,784(a0)
     c98:	a4990314 	sh	t9,788(a0)
     c9c:	e48601c8 	swc1	$f6,456(a0)
     ca0:	8fbf0014 	lw	ra,20(sp)
     ca4:	27bd0018 	addiu	sp,sp,24
     ca8:	03e00008 	jr	ra
     cac:	00000000 	nop

00000cb0 <func_80A7CAD0>:
     cb0:	27bdffe8 	addiu	sp,sp,-24
     cb4:	afbf0014 	sw	ra,20(sp)
     cb8:	afa5001c 	sw	a1,28(sp)
     cbc:	8482031a 	lh	v0,794(a0)
     cc0:	24010014 	li	at,20
     cc4:	00803025 	move	a2,a0
     cc8:	14410009 	bne	v0,at,cf0 <func_80A7CAD0+0x40>
     ccc:	00000000 	nop
     cd0:	948e0314 	lhu	t6,788(a0)
     cd4:	3c180000 	lui	t8,0x0
     cd8:	27180000 	addiu	t8,t8,0
     cdc:	31cf0004 	andi	t7,t6,0x4
     ce0:	15e00003 	bnez	t7,cf0 <func_80A7CAD0+0x40>
     ce4:	00000000 	nop
     ce8:	1000002b 	b	d98 <func_80A7CAD0+0xe8>
     cec:	ac980134 	sw	t8,308(a0)
     cf0:	14400014 	bnez	v0,d44 <func_80A7CAD0+0x94>
     cf4:	28410014 	slti	at,v0,20
     cf8:	94d90314 	lhu	t9,788(a2)
     cfc:	3c010000 	lui	at,0x0
     d00:	33280004 	andi	t0,t9,0x4
     d04:	11000005 	beqz	t0,d1c <func_80A7CAD0+0x6c>
     d08:	00000000 	nop
     d0c:	0c000000 	jal	0 <func_80A7BE20>
     d10:	00c02025 	move	a0,a2
     d14:	10000021 	b	d9c <func_80A7CAD0+0xec>
     d18:	8fbf0014 	lw	ra,20(sp)
     d1c:	c42c00c4 	lwc1	$f12,196(at)
     d20:	00c02025 	move	a0,a2
     d24:	afa60018 	sw	a2,24(sp)
     d28:	44056000 	mfc1	a1,$f12
     d2c:	0c000000 	jal	0 <func_80A7BE20>
     d30:	00000000 	nop
     d34:	0c000000 	jal	0 <func_80A7BE20>
     d38:	8fa40018 	lw	a0,24(sp)
     d3c:	10000017 	b	d9c <func_80A7CAD0+0xec>
     d40:	8fbf0014 	lw	ra,20(sp)
     d44:	10200014 	beqz	at,d98 <func_80A7CAD0+0xe8>
     d48:	00c02025 	move	a0,a2
     d4c:	3c010000 	lui	at,0x0
     d50:	c42c00c8 	lwc1	$f12,200(at)
     d54:	3c010000 	lui	at,0x0
     d58:	c42600cc 	lwc1	$f6,204(at)
     d5c:	c4c40050 	lwc1	$f4,80(a2)
     d60:	46062000 	add.s	$f0,$f4,$f6
     d64:	4600603c 	c.lt.s	$f12,$f0
     d68:	00000000 	nop
     d6c:	45020004 	bc1fl	d80 <func_80A7CAD0+0xd0>
     d70:	46000086 	mov.s	$f2,$f0
     d74:	10000002 	b	d80 <func_80A7CAD0+0xd0>
     d78:	46006086 	mov.s	$f2,$f12
     d7c:	46000086 	mov.s	$f2,$f0
     d80:	44051000 	mfc1	a1,$f2
     d84:	0c000000 	jal	0 <func_80A7BE20>
     d88:	afa60018 	sw	a2,24(sp)
     d8c:	8fa60018 	lw	a2,24(sp)
     d90:	0c000000 	jal	0 <func_80A7BE20>
     d94:	24c401ac 	addiu	a0,a2,428
     d98:	8fbf0014 	lw	ra,20(sp)
     d9c:	27bd0018 	addiu	sp,sp,24
     da0:	03e00008 	jr	ra
     da4:	00000000 	nop

00000da8 <func_80A7CBC8>:
     da8:	27bdffe0 	addiu	sp,sp,-32
     dac:	afbf001c 	sw	ra,28(sp)
     db0:	afb00018 	sw	s0,24(sp)
     db4:	240e003c 	li	t6,60
     db8:	00808025 	move	s0,a0
     dbc:	0c000000 	jal	0 <func_80A7BE20>
     dc0:	a48e031a 	sh	t6,794(a0)
     dc4:	3c010000 	lui	at,0x0
     dc8:	c42400d0 	lwc1	$f4,208(at)
     dcc:	02002025 	move	a0,s0
     dd0:	240539e9 	li	a1,14825
     dd4:	0c000000 	jal	0 <func_80A7BE20>
     dd8:	e60401c8 	swc1	$f4,456(s0)
     ddc:	26040008 	addiu	a0,s0,8
     de0:	0c000000 	jal	0 <func_80A7BE20>
     de4:	26050024 	addiu	a1,s0,36
     de8:	96180314 	lhu	t8,788(s0)
     dec:	3c0f0000 	lui	t7,0x0
     df0:	25ef0000 	addiu	t7,t7,0
     df4:	3308feff 	andi	t0,t8,0xfeff
     df8:	a6080314 	sh	t0,788(s0)
     dfc:	35090008 	ori	t1,t0,0x8
     e00:	ae0f0310 	sw	t7,784(s0)
     e04:	a6090314 	sh	t1,788(s0)
     e08:	8fbf001c 	lw	ra,28(sp)
     e0c:	8fb00018 	lw	s0,24(sp)
     e10:	27bd0020 	addiu	sp,sp,32
     e14:	03e00008 	jr	ra
     e18:	00000000 	nop

00000e1c <func_80A7CC3C>:
     e1c:	44800000 	mtc1	zero,$f0
     e20:	27bdffb8 	addiu	sp,sp,-72
     e24:	afb00020 	sw	s0,32(sp)
     e28:	afa5004c 	sw	a1,76(sp)
     e2c:	00808025 	move	s0,a0
     e30:	afbf0024 	sw	ra,36(sp)
     e34:	3c063dcc 	lui	a2,0x3dcc
     e38:	44050000 	mfc1	a1,$f0
     e3c:	34c6cccd 	ori	a2,a2,0xcccd
     e40:	24840068 	addiu	a0,a0,104
     e44:	3c073f00 	lui	a3,0x3f00
     e48:	0c000000 	jal	0 <func_80A7BE20>
     e4c:	e7a00010 	swc1	$f0,16(sp)
     e50:	260400b4 	addiu	a0,s0,180
     e54:	24052aaa 	li	a1,10922
     e58:	0c000000 	jal	0 <func_80A7BE20>
     e5c:	24060160 	li	a2,352
     e60:	3c010000 	lui	at,0x0
     e64:	c42c00d4 	lwc1	$f12,212(at)
     e68:	3c010000 	lui	at,0x0
     e6c:	c42600d8 	lwc1	$f6,216(at)
     e70:	c6040050 	lwc1	$f4,80(s0)
     e74:	46062001 	sub.s	$f0,$f4,$f6
     e78:	460c003c 	c.lt.s	$f0,$f12
     e7c:	00000000 	nop
     e80:	45020004 	bc1fl	e94 <func_80A7CC3C+0x78>
     e84:	46000086 	mov.s	$f2,$f0
     e88:	10000002 	b	e94 <func_80A7CC3C+0x78>
     e8c:	46006086 	mov.s	$f2,$f12
     e90:	46000086 	mov.s	$f2,$f0
     e94:	44051000 	mfc1	a1,$f2
     e98:	0c000000 	jal	0 <func_80A7BE20>
     e9c:	02002025 	move	a0,s0
     ea0:	3c010000 	lui	at,0x0
     ea4:	c42a00dc 	lwc1	$f10,220(at)
     ea8:	c60800bc 	lwc1	$f8,188(s0)
     eac:	460a4401 	sub.s	$f16,$f8,$f10
     eb0:	0c000000 	jal	0 <func_80A7BE20>
     eb4:	e61000bc 	swc1	$f16,188(s0)
     eb8:	c6120008 	lwc1	$f18,8(s0)
     ebc:	3c013f00 	lui	at,0x3f00
     ec0:	44813000 	mtc1	at,$f6
     ec4:	46120100 	add.s	$f4,$f0,$f18
     ec8:	46062201 	sub.s	$f8,$f4,$f6
     ecc:	0c000000 	jal	0 <func_80A7BE20>
     ed0:	e6080024 	swc1	$f8,36(s0)
     ed4:	c60a0010 	lwc1	$f10,16(s0)
     ed8:	3c013f00 	lui	at,0x3f00
     edc:	44819000 	mtc1	at,$f18
     ee0:	460a0400 	add.s	$f16,$f0,$f10
     ee4:	260401ac 	addiu	a0,s0,428
     ee8:	46128101 	sub.s	$f4,$f16,$f18
     eec:	0c000000 	jal	0 <func_80A7BE20>
     ef0:	e604002c 	swc1	$f4,44(s0)
     ef4:	860e031a 	lh	t6,794(s0)
     ef8:	29c10015 	slti	at,t6,21
     efc:	54200034 	bnezl	at,fd0 <func_80A7CC3C+0x1b4>
     f00:	8609031a 	lh	t1,794(s0)
     f04:	0c000000 	jal	0 <func_80A7BE20>
     f08:	00000000 	nop
     f0c:	3c010000 	lui	at,0x0
     f10:	c42600e0 	lwc1	$f6,224(at)
     f14:	4606003c 	c.lt.s	$f0,$f6
     f18:	00000000 	nop
     f1c:	4502002c 	bc1fl	fd0 <func_80A7CC3C+0x1b4>
     f20:	8609031a 	lh	t1,794(s0)
     f24:	0c000000 	jal	0 <func_80A7BE20>
     f28:	860400b6 	lh	a0,182(s0)
     f2c:	3c010000 	lui	at,0x0
     f30:	c42800e4 	lwc1	$f8,228(at)
     f34:	46080282 	mul.s	$f10,$f0,$f8
     f38:	e7aa0034 	swc1	$f10,52(sp)
     f3c:	0c000000 	jal	0 <func_80A7BE20>
     f40:	860400b4 	lh	a0,180(s0)
     f44:	3c010000 	lui	at,0x0
     f48:	c43000e8 	lwc1	$f16,232(at)
     f4c:	46100482 	mul.s	$f18,$f0,$f16
     f50:	e7b20038 	swc1	$f18,56(sp)
     f54:	0c000000 	jal	0 <func_80A7BE20>
     f58:	860400b6 	lh	a0,182(s0)
     f5c:	3c010000 	lui	at,0x0
     f60:	c42400ec 	lwc1	$f4,236(at)
     f64:	46040182 	mul.s	$f6,$f0,$f4
     f68:	0c000000 	jal	0 <func_80A7BE20>
     f6c:	e7a6003c 	swc1	$f6,60(sp)
     f70:	0c000000 	jal	0 <func_80A7BE20>
     f74:	e7a0002c 	swc1	$f0,44(sp)
     f78:	3c0140a0 	lui	at,0x40a0
     f7c:	44811000 	mtc1	at,$f2
     f80:	c7a8002c 	lwc1	$f8,44(sp)
     f84:	3c014100 	lui	at,0x4100
     f88:	44816000 	mtc1	at,$f12
     f8c:	46024282 	mul.s	$f10,$f8,$f2
     f90:	3c070000 	lui	a3,0x0
     f94:	24e70078 	addiu	a3,a3,120
     f98:	46020102 	mul.s	$f4,$f0,$f2
     f9c:	8fa4004c 	lw	a0,76(sp)
     fa0:	26050024 	addiu	a1,s0,36
     fa4:	27a60034 	addiu	a2,sp,52
     fa8:	460c5400 	add.s	$f16,$f10,$f12
     fac:	460c2180 	add.s	$f6,$f4,$f12
     fb0:	4600848d 	trunc.w.s	$f18,$f16
     fb4:	4600320d 	trunc.w.s	$f8,$f6
     fb8:	44189000 	mfc1	t8,$f18
     fbc:	44084000 	mfc1	t0,$f8
     fc0:	afb80010 	sw	t8,16(sp)
     fc4:	0c000000 	jal	0 <func_80A7BE20>
     fc8:	afa80014 	sw	t0,20(sp)
     fcc:	8609031a 	lh	t1,794(s0)
     fd0:	5d200017 	bgtzl	t1,1030 <func_80A7CC3C+0x214>
     fd4:	8fbf0024 	lw	ra,36(sp)
     fd8:	960a0314 	lhu	t2,788(s0)
     fdc:	314b0010 	andi	t3,t2,0x10
     fe0:	11600010 	beqz	t3,1024 <func_80A7CC3C+0x208>
     fe4:	00000000 	nop
     fe8:	8e020320 	lw	v0,800(s0)
     fec:	1040000d 	beqz	v0,1024 <func_80A7CC3C+0x208>
     ff0:	24440024 	addiu	a0,v0,36
     ff4:	0c000000 	jal	0 <func_80A7BE20>
     ff8:	26050024 	addiu	a1,s0,36
     ffc:	3c014280 	lui	at,0x4280
    1000:	44815000 	mtc1	at,$f10
    1004:	00000000 	nop
    1008:	460a003c 	c.lt.s	$f0,$f10
    100c:	00000000 	nop
    1010:	45000004 	bc1f	1024 <func_80A7CC3C+0x208>
    1014:	00000000 	nop
    1018:	8e0d0320 	lw	t5,800(s0)
    101c:	240c0001 	li	t4,1
    1020:	a5ac0152 	sh	t4,338(t5)
    1024:	0c000000 	jal	0 <func_80A7BE20>
    1028:	02002025 	move	a0,s0
    102c:	8fbf0024 	lw	ra,36(sp)
    1030:	8fb00020 	lw	s0,32(sp)
    1034:	27bd0048 	addiu	sp,sp,72
    1038:	03e00008 	jr	ra
    103c:	00000000 	nop

00001040 <func_80A7CE60>:
    1040:	27bdffe8 	addiu	sp,sp,-24
    1044:	afbf0014 	sw	ra,20(sp)
    1048:	00803025 	move	a2,a0
    104c:	afa60018 	sw	a2,24(sp)
    1050:	24040078 	li	a0,120
    1054:	0c000000 	jal	0 <func_80A7BE20>
    1058:	24050032 	li	a1,50
    105c:	8fa40018 	lw	a0,24(sp)
    1060:	0c000000 	jal	0 <func_80A7BE20>
    1064:	a482031a 	sh	v0,794(a0)
    1068:	8fa60018 	lw	a2,24(sp)
    106c:	3c0f0000 	lui	t7,0x0
    1070:	25ef0000 	addiu	t7,t7,0
    1074:	94d80314 	lhu	t8,788(a2)
    1078:	a4c00318 	sh	zero,792(a2)
    107c:	84ce0318 	lh	t6,792(a2)
    1080:	3319feff 	andi	t9,t8,0xfeff
    1084:	accf0310 	sw	t7,784(a2)
    1088:	a4d90314 	sh	t9,788(a2)
    108c:	a4ce0316 	sh	t6,790(a2)
    1090:	8fbf0014 	lw	ra,20(sp)
    1094:	27bd0018 	addiu	sp,sp,24
    1098:	03e00008 	jr	ra
    109c:	00000000 	nop

000010a0 <func_80A7CEC0>:
    10a0:	27bdffa8 	addiu	sp,sp,-88
    10a4:	afbf0024 	sw	ra,36(sp)
    10a8:	afb00020 	sw	s0,32(sp)
    10ac:	afa5005c 	sw	a1,92(sp)
    10b0:	848e001c 	lh	t6,28(a0)
    10b4:	3c063ca3 	lui	a2,0x3ca3
    10b8:	00808025 	move	s0,a0
    10bc:	31cf0003 	andi	t7,t6,0x3
    10c0:	a7af004e 	sh	t7,78(sp)
    10c4:	8498031a 	lh	t8,794(a0)
    10c8:	34c6d70a 	ori	a2,a2,0xd70a
    10cc:	24050000 	li	a1,0
    10d0:	2b010051 	slti	at,t8,81
    10d4:	14200009 	bnez	at,10fc <func_80A7CEC0+0x5c>
    10d8:	00000000 	nop
    10dc:	3c053f19 	lui	a1,0x3f19
    10e0:	3c063da3 	lui	a2,0x3da3
    10e4:	34c6d70a 	ori	a2,a2,0xd70a
    10e8:	34a5999a 	ori	a1,a1,0x999a
    10ec:	0c000000 	jal	0 <func_80A7BE20>
    10f0:	24840068 	addiu	a0,a0,104
    10f4:	10000004 	b	1108 <func_80A7CEC0+0x68>
    10f8:	8619031a 	lh	t9,794(s0)
    10fc:	0c000000 	jal	0 <func_80A7BE20>
    1100:	26040068 	addiu	a0,s0,104
    1104:	8619031a 	lh	t9,794(s0)
    1108:	c6060028 	lwc1	$f6,40(s0)
    110c:	c6080084 	lwc1	$f8,132(s0)
    1110:	44998000 	mtc1	t9,$f16
    1114:	3c010000 	lui	at,0x0
    1118:	46083280 	add.s	$f10,$f6,$f8
    111c:	c42200f0 	lwc1	$f2,240(at)
    1120:	44802000 	mtc1	zero,$f4
    1124:	468084a0 	cvt.s.w	$f18,$f16
    1128:	e60a0028 	swc1	$f10,40(s0)
    112c:	3c010000 	lui	at,0x0
    1130:	e6040060 	swc1	$f4,96(s0)
    1134:	c42400f4 	lwc1	$f4,244(at)
    1138:	3c010000 	lui	at,0x0
    113c:	46049002 	mul.s	$f0,$f18,$f4
    1140:	4602003c 	c.lt.s	$f0,$f2
    1144:	00000000 	nop
    1148:	45000003 	bc1f	1158 <func_80A7CEC0+0xb8>
    114c:	00000000 	nop
    1150:	1000000a 	b	117c <func_80A7CEC0+0xdc>
    1154:	e60201c8 	swc1	$f2,456(s0)
    1158:	c42c00f8 	lwc1	$f12,248(at)
    115c:	4600603c 	c.lt.s	$f12,$f0
    1160:	00000000 	nop
    1164:	45020004 	bc1fl	1178 <func_80A7CEC0+0xd8>
    1168:	46000086 	mov.s	$f2,$f0
    116c:	10000002 	b	1178 <func_80A7CEC0+0xd8>
    1170:	46006086 	mov.s	$f2,$f12
    1174:	46000086 	mov.s	$f2,$f0
    1178:	e60201c8 	swc1	$f2,456(s0)
    117c:	0c000000 	jal	0 <func_80A7BE20>
    1180:	260401ac 	addiu	a0,s0,428
    1184:	8608031a 	lh	t0,794(s0)
    1188:	2404ffce 	li	a0,-50
    118c:	29010051 	slti	at,t0,81
    1190:	5420000d 	bnezl	at,11c8 <func_80A7CEC0+0x128>
    1194:	3c014348 	lui	at,0x4348
    1198:	0c000000 	jal	0 <func_80A7BE20>
    119c:	24050064 	li	a1,100
    11a0:	86090316 	lh	t1,790(s0)
    11a4:	2404fed4 	li	a0,-300
    11a8:	24050258 	li	a1,600
    11ac:	01225021 	addu	t2,t1,v0
    11b0:	0c000000 	jal	0 <func_80A7BE20>
    11b4:	a60a0316 	sh	t2,790(s0)
    11b8:	860b0318 	lh	t3,792(s0)
    11bc:	01626021 	addu	t4,t3,v0
    11c0:	a60c0318 	sh	t4,792(s0)
    11c4:	3c014348 	lui	at,0x4348
    11c8:	44814000 	mtc1	at,$f8
    11cc:	c60601c8 	lwc1	$f6,456(s0)
    11d0:	86040316 	lh	a0,790(s0)
    11d4:	00002825 	move	a1,zero
    11d8:	46083282 	mul.s	$f10,$f6,$f8
    11dc:	4600540d 	trunc.w.s	$f16,$f10
    11e0:	44038000 	mfc1	v1,$f16
    11e4:	00000000 	nop
    11e8:	00031c00 	sll	v1,v1,0x10
    11ec:	00031c03 	sra	v1,v1,0x10
    11f0:	00031023 	negu	v0,v1
    11f4:	0082082a 	slt	at,a0,v0
    11f8:	50200004 	beqzl	at,120c <func_80A7CEC0+0x16c>
    11fc:	0064082a 	slt	at,v1,a0
    1200:	10000007 	b	1220 <func_80A7CEC0+0x180>
    1204:	a6020316 	sh	v0,790(s0)
    1208:	0064082a 	slt	at,v1,a0
    120c:	10200003 	beqz	at,121c <func_80A7CEC0+0x17c>
    1210:	00801025 	move	v0,a0
    1214:	10000001 	b	121c <func_80A7CEC0+0x17c>
    1218:	00601025 	move	v0,v1
    121c:	a6020316 	sh	v0,790(s0)
    1220:	3c01447a 	lui	at,0x447a
    1224:	44812000 	mtc1	at,$f4
    1228:	c61201c8 	lwc1	$f18,456(s0)
    122c:	860e0032 	lh	t6,50(s0)
    1230:	860f0316 	lh	t7,790(s0)
    1234:	46049182 	mul.s	$f6,$f18,$f4
    1238:	86040318 	lh	a0,792(s0)
    123c:	01cfc021 	addu	t8,t6,t7
    1240:	a6180032 	sh	t8,50(s0)
    1244:	4600320d 	trunc.w.s	$f8,$f6
    1248:	44034000 	mfc1	v1,$f8
    124c:	00000000 	nop
    1250:	00031c00 	sll	v1,v1,0x10
    1254:	00031c03 	sra	v1,v1,0x10
    1258:	00031023 	negu	v0,v1
    125c:	0082082a 	slt	at,a0,v0
    1260:	50200004 	beqzl	at,1274 <func_80A7CEC0+0x1d4>
    1264:	0064082a 	slt	at,v1,a0
    1268:	10000007 	b	1288 <func_80A7CEC0+0x1e8>
    126c:	a6020318 	sh	v0,792(s0)
    1270:	0064082a 	slt	at,v1,a0
    1274:	10200003 	beqz	at,1284 <func_80A7CEC0+0x1e4>
    1278:	00801025 	move	v0,a0
    127c:	10000001 	b	1284 <func_80A7CEC0+0x1e4>
    1280:	00601025 	move	v0,v1
    1284:	a6020318 	sh	v0,792(s0)
    1288:	860800b6 	lh	t0,182(s0)
    128c:	86090318 	lh	t1,792(s0)
    1290:	26040030 	addiu	a0,s0,48
    1294:	24060bb8 	li	a2,3000
    1298:	01095021 	addu	t2,t0,t1
    129c:	0c000000 	jal	0 <func_80A7BE20>
    12a0:	a60a00b6 	sh	t2,182(s0)
    12a4:	860b0030 	lh	t3,48(s0)
    12a8:	0c000000 	jal	0 <func_80A7BE20>
    12ac:	a60b00b4 	sh	t3,180(s0)
    12b0:	3c010000 	lui	at,0x0
    12b4:	c42a00fc 	lwc1	$f10,252(at)
    12b8:	460a003c 	c.lt.s	$f0,$f10
    12bc:	00000000 	nop
    12c0:	45020018 	bc1fl	1324 <func_80A7CEC0+0x284>
    12c4:	860e031a 	lh	t6,794(s0)
    12c8:	c6100024 	lwc1	$f16,36(s0)
    12cc:	240c0004 	li	t4,4
    12d0:	8fa4005c 	lw	a0,92(sp)
    12d4:	e7b00040 	swc1	$f16,64(sp)
    12d8:	c6040084 	lwc1	$f4,132(s0)
    12dc:	c6120028 	lwc1	$f18,40(s0)
    12e0:	27a50040 	addiu	a1,sp,64
    12e4:	24060014 	li	a2,20
    12e8:	46049180 	add.s	$f6,$f18,$f4
    12ec:	24070064 	li	a3,100
    12f0:	e7a60044 	swc1	$f6,68(sp)
    12f4:	c608002c 	lwc1	$f8,44(s0)
    12f8:	afac0010 	sw	t4,16(sp)
    12fc:	0c000000 	jal	0 <func_80A7BE20>
    1300:	e7a80048 	swc1	$f8,72(sp)
    1304:	240d0008 	li	t5,8
    1308:	afad0010 	sw	t5,16(sp)
    130c:	8fa4005c 	lw	a0,92(sp)
    1310:	27a50040 	addiu	a1,sp,64
    1314:	24060028 	li	a2,40
    1318:	0c000000 	jal	0 <func_80A7BE20>
    131c:	240700c8 	li	a3,200
    1320:	860e031a 	lh	t6,794(s0)
    1324:	19c00015 	blez	t6,137c <func_80A7CEC0+0x2dc>
    1328:	00000000 	nop
    132c:	96020314 	lhu	v0,788(s0)
    1330:	87b9004e 	lh	t9,78(sp)
    1334:	24010002 	li	at,2
    1338:	304f0004 	andi	t7,v0,0x4
    133c:	11e00004 	beqz	t7,1350 <func_80A7CEC0+0x2b0>
    1340:	00000000 	nop
    1344:	8618031c 	lh	t8,796(s0)
    1348:	1b00000c 	blez	t8,137c <func_80A7CEC0+0x2dc>
    134c:	00000000 	nop
    1350:	13210004 	beq	t9,at,1364 <func_80A7CEC0+0x2c4>
    1354:	30480001 	andi	t0,v0,0x1
    1358:	24010003 	li	at,3
    135c:	5721000c 	bnel	t9,at,1390 <func_80A7CEC0+0x2f0>
    1360:	960a0088 	lhu	t2,136(s0)
    1364:	11000009 	beqz	t0,138c <func_80A7CEC0+0x2ec>
    1368:	3c090000 	lui	t1,0x0
    136c:	85290000 	lh	t1,0(t1)
    1370:	29210004 	slti	at,t1,4
    1374:	54200006 	bnezl	at,1390 <func_80A7CEC0+0x2f0>
    1378:	960a0088 	lhu	t2,136(s0)
    137c:	0c000000 	jal	0 <func_80A7BE20>
    1380:	02002025 	move	a0,s0
    1384:	1000000f 	b	13c4 <func_80A7CEC0+0x324>
    1388:	8fbf0024 	lw	ra,36(sp)
    138c:	960a0088 	lhu	t2,136(s0)
    1390:	304c0010 	andi	t4,v0,0x10
    1394:	314b0040 	andi	t3,t2,0x40
    1398:	5560000a 	bnezl	t3,13c4 <func_80A7CEC0+0x324>
    139c:	8fbf0024 	lw	ra,36(sp)
    13a0:	11800005 	beqz	t4,13b8 <func_80A7CEC0+0x318>
    13a4:	00000000 	nop
    13a8:	0c000000 	jal	0 <func_80A7BE20>
    13ac:	02002025 	move	a0,s0
    13b0:	10000004 	b	13c4 <func_80A7CEC0+0x324>
    13b4:	8fbf0024 	lw	ra,36(sp)
    13b8:	0c000000 	jal	0 <func_80A7BE20>
    13bc:	02002025 	move	a0,s0
    13c0:	8fbf0024 	lw	ra,36(sp)
    13c4:	8fb00020 	lw	s0,32(sp)
    13c8:	27bd0058 	addiu	sp,sp,88
    13cc:	03e00008 	jr	ra
    13d0:	00000000 	nop

000013d4 <func_80A7D1F4>:
    13d4:	27bdffe8 	addiu	sp,sp,-24
    13d8:	afbf0014 	sw	ra,20(sp)
    13dc:	240e0064 	li	t6,100
    13e0:	a48e031a 	sh	t6,794(a0)
    13e4:	0c000000 	jal	0 <func_80A7BE20>
    13e8:	afa40018 	sw	a0,24(sp)
    13ec:	8fa40018 	lw	a0,24(sp)
    13f0:	44800000 	mtc1	zero,$f0
    13f4:	3c010000 	lui	at,0x0
    13f8:	948f0314 	lhu	t7,788(a0)
    13fc:	e4800060 	swc1	$f0,96(a0)
    1400:	e4800068 	swc1	$f0,104(a0)
    1404:	c4240100 	lwc1	$f4,256(at)
    1408:	3c010000 	lui	at,0x0
    140c:	31e8fffc 	andi	t0,t7,0xfffc
    1410:	e4840070 	swc1	$f4,112(a0)
    1414:	c4260104 	lwc1	$f6,260(at)
    1418:	310afeff 	andi	t2,t0,0xfeff
    141c:	3c190000 	lui	t9,0x0
    1420:	a4880314 	sh	t0,788(a0)
    1424:	27390000 	addiu	t9,t9,0
    1428:	354b0008 	ori	t3,t2,0x8
    142c:	a48a0314 	sh	t2,788(a0)
    1430:	ac990310 	sw	t9,784(a0)
    1434:	a48b0314 	sh	t3,788(a0)
    1438:	e486006c 	swc1	$f6,108(a0)
    143c:	8fbf0014 	lw	ra,20(sp)
    1440:	27bd0018 	addiu	sp,sp,24
    1444:	03e00008 	jr	ra
    1448:	00000000 	nop

0000144c <func_80A7D26C>:
    144c:	27bdffd8 	addiu	sp,sp,-40
    1450:	afbf0024 	sw	ra,36(sp)
    1454:	afb00020 	sw	s0,32(sp)
    1458:	afa5002c 	sw	a1,44(sp)
    145c:	848e00b4 	lh	t6,180(a0)
    1460:	849800b6 	lh	t8,182(a0)
    1464:	3c010000 	lui	at,0x0
    1468:	c42c0108 	lwc1	$f12,264(at)
    146c:	25cffe0c 	addiu	t7,t6,-500
    1470:	271900c8 	addiu	t9,t8,200
    1474:	a48f00b4 	sh	t7,180(a0)
    1478:	a49900b6 	sh	t9,182(a0)
    147c:	3c010000 	lui	at,0x0
    1480:	c426010c 	lwc1	$f6,268(at)
    1484:	c4840050 	lwc1	$f4,80(a0)
    1488:	00808025 	move	s0,a0
    148c:	46062001 	sub.s	$f0,$f4,$f6
    1490:	460c003c 	c.lt.s	$f0,$f12
    1494:	00000000 	nop
    1498:	45020004 	bc1fl	14ac <func_80A7D26C+0x60>
    149c:	46000086 	mov.s	$f2,$f0
    14a0:	10000002 	b	14ac <func_80A7D26C+0x60>
    14a4:	46006086 	mov.s	$f2,$f12
    14a8:	46000086 	mov.s	$f2,$f0
    14ac:	44051000 	mfc1	a1,$f2
    14b0:	0c000000 	jal	0 <func_80A7BE20>
    14b4:	02002025 	move	a0,s0
    14b8:	3c0140a0 	lui	at,0x40a0
    14bc:	44814000 	mtc1	at,$f8
    14c0:	c6000084 	lwc1	$f0,132(s0)
    14c4:	3c0141f0 	lui	at,0x41f0
    14c8:	4600403c 	c.lt.s	$f8,$f0
    14cc:	00000000 	nop
    14d0:	45020021 	bc1fl	1558 <func_80A7D26C+0x10c>
    14d4:	8608031a 	lh	t0,794(s0)
    14d8:	44815000 	mtc1	at,$f10
    14dc:	00000000 	nop
    14e0:	460a003c 	c.lt.s	$f0,$f10
    14e4:	00000000 	nop
    14e8:	4502001b 	bc1fl	1558 <func_80A7D26C+0x10c>
    14ec:	8608031a 	lh	t0,794(s0)
    14f0:	0c000000 	jal	0 <func_80A7BE20>
    14f4:	00000000 	nop
    14f8:	3c010000 	lui	at,0x0
    14fc:	c4300110 	lwc1	$f16,272(at)
    1500:	4610003c 	c.lt.s	$f0,$f16
    1504:	00000000 	nop
    1508:	45020013 	bc1fl	1558 <func_80A7D26C+0x10c>
    150c:	8608031a 	lh	t0,794(s0)
    1510:	0c000000 	jal	0 <func_80A7BE20>
    1514:	00000000 	nop
    1518:	3c0140a0 	lui	at,0x40a0
    151c:	44811000 	mtc1	at,$f2
    1520:	3c010000 	lui	at,0x0
    1524:	c4320114 	lwc1	$f18,276(at)
    1528:	3c010000 	lui	at,0x0
    152c:	c4260118 	lwc1	$f6,280(at)
    1530:	46120102 	mul.s	$f4,$f0,$f18
    1534:	44071000 	mfc1	a3,$f2
    1538:	8fa4002c 	lw	a0,44(sp)
    153c:	26050024 	addiu	a1,s0,36
    1540:	3c06c0a0 	lui	a2,0xc0a0
    1544:	e7a20010 	swc1	$f2,16(sp)
    1548:	46062200 	add.s	$f8,$f4,$f6
    154c:	0c000000 	jal	0 <func_80A7BE20>
    1550:	e7a80014 	swc1	$f8,20(sp)
    1554:	8608031a 	lh	t0,794(s0)
    1558:	5d000004 	bgtzl	t0,156c <func_80A7D26C+0x120>
    155c:	8fbf0024 	lw	ra,36(sp)
    1560:	0c000000 	jal	0 <func_80A7BE20>
    1564:	02002025 	move	a0,s0
    1568:	8fbf0024 	lw	ra,36(sp)
    156c:	8fb00020 	lw	s0,32(sp)
    1570:	27bd0028 	addiu	sp,sp,40
    1574:	03e00008 	jr	ra
    1578:	00000000 	nop

0000157c <func_80A7D39C>:
    157c:	27bdffe0 	addiu	sp,sp,-32
    1580:	afbf001c 	sw	ra,28(sp)
    1584:	afb00018 	sw	s0,24(sp)
    1588:	0c000000 	jal	0 <func_80A7BE20>
    158c:	00808025 	move	s0,a0
    1590:	3c013fc0 	lui	at,0x3fc0
    1594:	44812000 	mtc1	at,$f4
    1598:	240e0064 	li	t6,100
    159c:	a60e031a 	sh	t6,794(s0)
    15a0:	0c000000 	jal	0 <func_80A7BE20>
    15a4:	e6040324 	swc1	$f4,804(s0)
    15a8:	3c010000 	lui	at,0x0
    15ac:	c426011c 	lwc1	$f6,284(at)
    15b0:	46060202 	mul.s	$f8,$f0,$f6
    15b4:	4600428d 	trunc.w.s	$f10,$f8
    15b8:	44185000 	mfc1	t8,$f10
    15bc:	0c000000 	jal	0 <func_80A7BE20>
    15c0:	a6180328 	sh	t8,808(s0)
    15c4:	3c013f00 	lui	at,0x3f00
    15c8:	44818000 	mtc1	at,$f16
    15cc:	3c010000 	lui	at,0x0
    15d0:	c4240120 	lwc1	$f4,288(at)
    15d4:	46100481 	sub.s	$f18,$f0,$f16
    15d8:	46049182 	mul.s	$f6,$f18,$f4
    15dc:	4600320d 	trunc.w.s	$f8,$f6
    15e0:	44084000 	mfc1	t0,$f8
    15e4:	0c000000 	jal	0 <func_80A7BE20>
    15e8:	a6080316 	sh	t0,790(s0)
    15ec:	3c010000 	lui	at,0x0
    15f0:	c42a0124 	lwc1	$f10,292(at)
    15f4:	3c053b44 	lui	a1,0x3b44
    15f8:	34a59ba6 	ori	a1,a1,0x9ba6
    15fc:	460a0402 	mul.s	$f16,$f0,$f10
    1600:	02002025 	move	a0,s0
    1604:	4600848d 	trunc.w.s	$f18,$f16
    1608:	440a9000 	mfc1	t2,$f18
    160c:	0c000000 	jal	0 <func_80A7BE20>
    1610:	a60a0032 	sh	t2,50(s0)
    1614:	960c0314 	lhu	t4,788(s0)
    1618:	3c0b0000 	lui	t3,0x0
    161c:	256b0000 	addiu	t3,t3,0
    1620:	358d0100 	ori	t5,t4,0x100
    1624:	ae0b0310 	sw	t3,784(s0)
    1628:	a60d0314 	sh	t5,788(s0)
    162c:	8fbf001c 	lw	ra,28(sp)
    1630:	8fb00018 	lw	s0,24(sp)
    1634:	27bd0020 	addiu	sp,sp,32
    1638:	03e00008 	jr	ra
    163c:	00000000 	nop

00001640 <func_80A7D460>:
    1640:	27bdffa8 	addiu	sp,sp,-88
    1644:	afbf0024 	sw	ra,36(sp)
    1648:	afb00020 	sw	s0,32(sp)
    164c:	afa5005c 	sw	a1,92(sp)
    1650:	afa00050 	sw	zero,80(sp)
    1654:	848e001c 	lh	t6,28(a0)
    1658:	00808025 	move	s0,a0
    165c:	31cf0003 	andi	t7,t6,0x3
    1660:	a7af003a 	sh	t7,58(sp)
    1664:	8c820320 	lw	v0,800(a0)
    1668:	10400005 	beqz	v0,1680 <func_80A7D460+0x40>
    166c:	24840024 	addiu	a0,a0,36
    1670:	0c000000 	jal	0 <func_80A7BE20>
    1674:	24450024 	addiu	a1,v0,36
    1678:	10000015 	b	16d0 <func_80A7D460+0x90>
    167c:	e7a00040 	swc1	$f0,64(sp)
    1680:	96180314 	lhu	t8,788(s0)
    1684:	3c040000 	lui	a0,0x0
    1688:	33190010 	andi	t9,t8,0x10
    168c:	5320000d 	beqzl	t9,16c4 <func_80A7D460+0x84>
    1690:	3c014220 	lui	at,0x4220
    1694:	0c000000 	jal	0 <func_80A7BE20>
    1698:	24840000 	addiu	a0,a0,0
    169c:	3c040000 	lui	a0,0x0
    16a0:	3c050000 	lui	a1,0x0
    16a4:	24a50030 	addiu	a1,a1,48
    16a8:	2484000c 	addiu	a0,a0,12
    16ac:	0c000000 	jal	0 <func_80A7BE20>
    16b0:	24060416 	li	a2,1046
    16b4:	3c040000 	lui	a0,0x0
    16b8:	0c000000 	jal	0 <func_80A7BE20>
    16bc:	24840040 	addiu	a0,a0,64
    16c0:	3c014220 	lui	at,0x4220
    16c4:	44812000 	mtc1	at,$f4
    16c8:	00000000 	nop
    16cc:	e7a40040 	swc1	$f4,64(sp)
    16d0:	3c013f80 	lui	at,0x3f80
    16d4:	44816000 	mtc1	at,$f12
    16d8:	3c020000 	lui	v0,0x0
    16dc:	24420000 	addiu	v0,v0,0
    16e0:	3c010000 	lui	at,0x0
    16e4:	c4280128 	lwc1	$f8,296(at)
    16e8:	c4460000 	lwc1	$f6,0(v0)
    16ec:	3c010000 	lui	at,0x0
    16f0:	46083280 	add.s	$f10,$f6,$f8
    16f4:	e44a0000 	swc1	$f10,0(v0)
    16f8:	c4400000 	lwc1	$f0,0(v0)
    16fc:	4600603c 	c.lt.s	$f12,$f0
    1700:	00000000 	nop
    1704:	45000003 	bc1f	1714 <func_80A7D460+0xd4>
    1708:	00000000 	nop
    170c:	e44c0000 	swc1	$f12,0(v0)
    1710:	c4400000 	lwc1	$f0,0(v0)
    1714:	c430012c 	lwc1	$f16,300(at)
    1718:	4600803c 	c.lt.s	$f16,$f0
    171c:	00000000 	nop
    1720:	45020005 	bc1fl	1738 <func_80A7D460+0xf8>
    1724:	3c014461 	lui	at,0x4461
    1728:	44801000 	mtc1	zero,$f2
    172c:	10000019 	b	1794 <func_80A7D460+0x154>
    1730:	8e080320 	lw	t0,800(s0)
    1734:	3c014461 	lui	at,0x4461
    1738:	44819000 	mtc1	at,$f18
    173c:	c7a40040 	lwc1	$f4,64(sp)
    1740:	3c014120 	lui	at,0x4120
    1744:	4604903c 	c.lt.s	$f18,$f4
    1748:	00000000 	nop
    174c:	4502000c 	bc1fl	1780 <func_80A7D460+0x140>
    1750:	46006101 	sub.s	$f4,$f12,$f0
    1754:	3c010000 	lui	at,0x0
    1758:	c4260130 	lwc1	$f6,304(at)
    175c:	3c0142c8 	lui	at,0x42c8
    1760:	44815000 	mtc1	at,$f10
    1764:	46003201 	sub.s	$f8,$f6,$f0
    1768:	3c0141a0 	lui	at,0x41a0
    176c:	44819000 	mtc1	at,$f18
    1770:	460a4402 	mul.s	$f16,$f8,$f10
    1774:	10000006 	b	1790 <func_80A7D460+0x150>
    1778:	46128080 	add.s	$f2,$f16,$f18
    177c:	46006101 	sub.s	$f4,$f12,$f0
    1780:	44813000 	mtc1	at,$f6
    1784:	00000000 	nop
    1788:	46062082 	mul.s	$f2,$f4,$f6
    178c:	00000000 	nop
    1790:	8e080320 	lw	t0,800(s0)
    1794:	11000022 	beqz	t0,1820 <func_80A7D460+0x1e0>
    1798:	00000000 	nop
    179c:	0c000000 	jal	0 <func_80A7BE20>
    17a0:	e7a2003c 	swc1	$f2,60(sp)
    17a4:	3c010000 	lui	at,0x0
    17a8:	c4280134 	lwc1	$f8,308(at)
    17ac:	c7a2003c 	lwc1	$f2,60(sp)
    17b0:	4608003c 	c.lt.s	$f0,$f8
    17b4:	00000000 	nop
    17b8:	45000019 	bc1f	1820 <func_80A7D460+0x1e0>
    17bc:	00000000 	nop
    17c0:	0c000000 	jal	0 <func_80A7BE20>
    17c4:	e7a2003c 	swc1	$f2,60(sp)
    17c8:	3c013f00 	lui	at,0x3f00
    17cc:	44815000 	mtc1	at,$f10
    17d0:	c7a2003c 	lwc1	$f2,60(sp)
    17d4:	8e090320 	lw	t1,800(s0)
    17d8:	460a0401 	sub.s	$f16,$f0,$f10
    17dc:	8e0a0320 	lw	t2,800(s0)
    17e0:	c5240024 	lwc1	$f4,36(t1)
    17e4:	46028482 	mul.s	$f18,$f16,$f2
    17e8:	46049180 	add.s	$f6,$f18,$f4
    17ec:	e6060008 	swc1	$f6,8(s0)
    17f0:	c5480028 	lwc1	$f8,40(t2)
    17f4:	0c000000 	jal	0 <func_80A7BE20>
    17f8:	e608000c 	swc1	$f8,12(s0)
    17fc:	3c013f00 	lui	at,0x3f00
    1800:	44815000 	mtc1	at,$f10
    1804:	c7a2003c 	lwc1	$f2,60(sp)
    1808:	8e0b0320 	lw	t3,800(s0)
    180c:	460a0401 	sub.s	$f16,$f0,$f10
    1810:	c564002c 	lwc1	$f4,44(t3)
    1814:	46028482 	mul.s	$f18,$f16,$f2
    1818:	46049180 	add.s	$f6,$f18,$f4
    181c:	e6060010 	swc1	$f6,16(s0)
    1820:	3c020000 	lui	v0,0x0
    1824:	24420000 	addiu	v0,v0,0
    1828:	3c010000 	lui	at,0x0
    182c:	c4280138 	lwc1	$f8,312(at)
    1830:	c44a0000 	lwc1	$f10,0(v0)
    1834:	460a403c 	c.lt.s	$f8,$f10
    1838:	00000000 	nop
    183c:	4500000b 	bc1f	186c <func_80A7D460+0x22c>
    1840:	26040024 	addiu	a0,s0,36
    1844:	0c000000 	jal	0 <func_80A7BE20>
    1848:	26050008 	addiu	a1,s0,8
    184c:	0c000000 	jal	0 <func_80A7BE20>
    1850:	a6020328 	sh	v0,808(s0)
    1854:	3c010000 	lui	at,0x0
    1858:	c422013c 	lwc1	$f2,316(at)
    185c:	46020402 	mul.s	$f16,$f0,$f2
    1860:	46028480 	add.s	$f18,$f16,$f2
    1864:	10000048 	b	1988 <func_80A7D460+0x348>
    1868:	e6120324 	swc1	$f18,804(s0)
    186c:	0c000000 	jal	0 <func_80A7BE20>
    1870:	00000000 	nop
    1874:	3c013f80 	lui	at,0x3f80
    1878:	44816000 	mtc1	at,$f12
    187c:	3c010000 	lui	at,0x0
    1880:	c4240140 	lwc1	$f4,320(at)
    1884:	260c0024 	addiu	t4,s0,36
    1888:	4604003c 	c.lt.s	$f0,$f4
    188c:	00000000 	nop
    1890:	4500003d 	bc1f	1988 <func_80A7D460+0x348>
    1894:	00000000 	nop
    1898:	afac002c 	sw	t4,44(sp)
    189c:	c6060324 	lwc1	$f6,804(s0)
    18a0:	3c010000 	lui	at,0x0
    18a4:	4606603c 	c.lt.s	$f12,$f6
    18a8:	00000000 	nop
    18ac:	45000004 	bc1f	18c0 <func_80A7D460+0x280>
    18b0:	00000000 	nop
    18b4:	c4280144 	lwc1	$f8,324(at)
    18b8:	1000000a 	b	18e4 <func_80A7D460+0x2a4>
    18bc:	e6080324 	swc1	$f8,804(s0)
    18c0:	0c000000 	jal	0 <func_80A7BE20>
    18c4:	00000000 	nop
    18c8:	3c013f80 	lui	at,0x3f80
    18cc:	44816000 	mtc1	at,$f12
    18d0:	3c010000 	lui	at,0x0
    18d4:	c42a0148 	lwc1	$f10,328(at)
    18d8:	460a0402 	mul.s	$f16,$f0,$f10
    18dc:	460c8480 	add.s	$f18,$f16,$f12
    18e0:	e6120324 	swc1	$f18,804(s0)
    18e4:	3c010000 	lui	at,0x0
    18e8:	c424014c 	lwc1	$f4,332(at)
    18ec:	3c010000 	lui	at,0x0
    18f0:	c4260000 	lwc1	$f6,0(at)
    18f4:	44804000 	mtc1	zero,$f8
    18f8:	46062081 	sub.s	$f2,$f4,$f6
    18fc:	4608103c 	c.lt.s	$f2,$f8
    1900:	00000000 	nop
    1904:	45020005 	bc1fl	191c <func_80A7D460+0x2dc>
    1908:	4602603c 	c.lt.s	$f12,$f2
    190c:	44801000 	mtc1	zero,$f2
    1910:	10000009 	b	1938 <func_80A7D460+0x2f8>
    1914:	00000000 	nop
    1918:	4602603c 	c.lt.s	$f12,$f2
    191c:	00000000 	nop
    1920:	45020004 	bc1fl	1934 <func_80A7D460+0x2f4>
    1924:	46001006 	mov.s	$f0,$f2
    1928:	10000002 	b	1934 <func_80A7D460+0x2f4>
    192c:	46006006 	mov.s	$f0,$f12
    1930:	46001006 	mov.s	$f0,$f2
    1934:	46000086 	mov.s	$f2,$f0
    1938:	0c000000 	jal	0 <func_80A7BE20>
    193c:	e7a20034 	swc1	$f2,52(sp)
    1940:	3c013f00 	lui	at,0x3f00
    1944:	44815000 	mtc1	at,$f10
    1948:	3c010000 	lui	at,0x0
    194c:	c4320150 	lwc1	$f18,336(at)
    1950:	460a0401 	sub.s	$f16,$f0,$f10
    1954:	c7a20034 	lwc1	$f2,52(sp)
    1958:	8fa4002c 	lw	a0,44(sp)
    195c:	26050008 	addiu	a1,s0,8
    1960:	46128102 	mul.s	$f4,$f16,$f18
    1964:	00000000 	nop
    1968:	46022182 	mul.s	$f6,$f4,$f2
    196c:	4600320d 	trunc.w.s	$f8,$f6
    1970:	440e4000 	mfc1	t6,$f8
    1974:	0c000000 	jal	0 <func_80A7BE20>
    1978:	a7ae0038 	sh	t6,56(sp)
    197c:	87af0038 	lh	t7,56(sp)
    1980:	004fc021 	addu	t8,v0,t7
    1984:	a6180328 	sh	t8,808(s0)
    1988:	3c010000 	lui	at,0x0
    198c:	c42c0154 	lwc1	$f12,340(at)
    1990:	3c010000 	lui	at,0x0
    1994:	c4300158 	lwc1	$f16,344(at)
    1998:	c60a0050 	lwc1	$f10,80(s0)
    199c:	46105080 	add.s	$f2,$f10,$f16
    19a0:	4602603c 	c.lt.s	$f12,$f2
    19a4:	00000000 	nop
    19a8:	45020004 	bc1fl	19bc <func_80A7D460+0x37c>
    19ac:	46001006 	mov.s	$f0,$f2
    19b0:	10000002 	b	19bc <func_80A7D460+0x37c>
    19b4:	46006006 	mov.s	$f0,$f12
    19b8:	46001006 	mov.s	$f0,$f2
    19bc:	44050000 	mfc1	a1,$f0
    19c0:	0c000000 	jal	0 <func_80A7BE20>
    19c4:	02002025 	move	a0,s0
    19c8:	96190088 	lhu	t9,136(s0)
    19cc:	26040068 	addiu	a0,s0,104
    19d0:	24050000 	li	a1,0
    19d4:	33280001 	andi	t0,t9,0x1
    19d8:	11000017 	beqz	t0,1a38 <func_80A7D460+0x3f8>
    19dc:	3c063dcc 	lui	a2,0x3dcc
    19e0:	44809000 	mtc1	zero,$f18
    19e4:	8e050324 	lw	a1,804(s0)
    19e8:	3c063dcc 	lui	a2,0x3dcc
    19ec:	34c6cccd 	ori	a2,a2,0xcccd
    19f0:	26040068 	addiu	a0,s0,104
    19f4:	3c073f00 	lui	a3,0x3f00
    19f8:	0c000000 	jal	0 <func_80A7BE20>
    19fc:	e7b20010 	swc1	$f18,16(sp)
    1a00:	26040032 	addiu	a0,s0,50
    1a04:	86050328 	lh	a1,808(s0)
    1a08:	0c000000 	jal	0 <func_80A7BE20>
    1a0c:	240607d0 	li	a2,2000
    1a10:	26040030 	addiu	a0,s0,48
    1a14:	00002825 	move	a1,zero
    1a18:	0c000000 	jal	0 <func_80A7BE20>
    1a1c:	240607d0 	li	a2,2000
    1a20:	afa20050 	sw	v0,80(sp)
    1a24:	86090032 	lh	t1,50(s0)
    1a28:	860a0030 	lh	t2,48(s0)
    1a2c:	a60900b6 	sh	t1,182(s0)
    1a30:	10000021 	b	1ab8 <func_80A7D460+0x478>
    1a34:	a60a00b4 	sh	t2,180(s0)
    1a38:	44802000 	mtc1	zero,$f4
    1a3c:	34c6cccd 	ori	a2,a2,0xcccd
    1a40:	3c073f00 	lui	a3,0x3f00
    1a44:	0c000000 	jal	0 <func_80A7BE20>
    1a48:	e7a40010 	swc1	$f4,16(sp)
    1a4c:	0c000000 	jal	0 <func_80A7BE20>
    1a50:	00000000 	nop
    1a54:	3c013f00 	lui	at,0x3f00
    1a58:	44813000 	mtc1	at,$f6
    1a5c:	3c010000 	lui	at,0x0
    1a60:	c42a015c 	lwc1	$f10,348(at)
    1a64:	46060201 	sub.s	$f8,$f0,$f6
    1a68:	c6120068 	lwc1	$f18,104(s0)
    1a6c:	460a4402 	mul.s	$f16,$f8,$f10
    1a70:	46109100 	add.s	$f4,$f18,$f16
    1a74:	0c000000 	jal	0 <func_80A7BE20>
    1a78:	e6040068 	swc1	$f4,104(s0)
    1a7c:	3c010000 	lui	at,0x0
    1a80:	c4280160 	lwc1	$f8,352(at)
    1a84:	860b0032 	lh	t3,50(s0)
    1a88:	860c0316 	lh	t4,790(s0)
    1a8c:	46080282 	mul.s	$f10,$f0,$f8
    1a90:	c6060060 	lwc1	$f6,96(s0)
    1a94:	016c6821 	addu	t5,t3,t4
    1a98:	860f00b4 	lh	t7,180(s0)
    1a9c:	a60d0032 	sh	t5,50(s0)
    1aa0:	860e0032 	lh	t6,50(s0)
    1aa4:	25f8f830 	addiu	t8,t7,-2000
    1aa8:	460a3480 	add.s	$f18,$f6,$f10
    1aac:	a61800b4 	sh	t8,180(s0)
    1ab0:	a60e00b6 	sh	t6,182(s0)
    1ab4:	e6120060 	swc1	$f18,96(s0)
    1ab8:	0c000000 	jal	0 <func_80A7BE20>
    1abc:	00000000 	nop
    1ac0:	3c010000 	lui	at,0x0
    1ac4:	c4240164 	lwc1	$f4,356(at)
    1ac8:	c6100068 	lwc1	$f16,104(s0)
    1acc:	3c013f00 	lui	at,0x3f00
    1ad0:	44813000 	mtc1	at,$f6
    1ad4:	46048202 	mul.s	$f8,$f16,$f4
    1ad8:	44806000 	mtc1	zero,$f12
    1adc:	3c010000 	lui	at,0x0
    1ae0:	46060282 	mul.s	$f10,$f0,$f6
    1ae4:	46085080 	add.s	$f2,$f10,$f8
    1ae8:	460c103c 	c.lt.s	$f2,$f12
    1aec:	00000000 	nop
    1af0:	45000003 	bc1f	1b00 <func_80A7D460+0x4c0>
    1af4:	00000000 	nop
    1af8:	1000000a 	b	1b24 <func_80A7D460+0x4e4>
    1afc:	e60c01c8 	swc1	$f12,456(s0)
    1b00:	c42c0168 	lwc1	$f12,360(at)
    1b04:	4602603c 	c.lt.s	$f12,$f2
    1b08:	00000000 	nop
    1b0c:	45020004 	bc1fl	1b20 <func_80A7D460+0x4e0>
    1b10:	46001006 	mov.s	$f0,$f2
    1b14:	10000002 	b	1b20 <func_80A7D460+0x4e0>
    1b18:	46006006 	mov.s	$f0,$f12
    1b1c:	46001006 	mov.s	$f0,$f2
    1b20:	e60001c8 	swc1	$f0,456(s0)
    1b24:	0c000000 	jal	0 <func_80A7BE20>
    1b28:	260401ac 	addiu	a0,s0,428
    1b2c:	96060314 	lhu	a2,788(s0)
    1b30:	30d90040 	andi	t9,a2,0x40
    1b34:	1720000e 	bnez	t9,1b70 <func_80A7D460+0x530>
    1b38:	30c80001 	andi	t0,a2,0x1
    1b3c:	5100000d 	beqzl	t0,1b74 <func_80A7D460+0x534>
    1b40:	87ad003a 	lh	t5,58(sp)
    1b44:	96090088 	lhu	t1,136(s0)
    1b48:	02002025 	move	a0,s0
    1b4c:	312a0001 	andi	t2,t1,0x1
    1b50:	51400008 	beqzl	t2,1b74 <func_80A7D460+0x534>
    1b54:	87ad003a 	lh	t5,58(sp)
    1b58:	0c000000 	jal	0 <func_80A7BE20>
    1b5c:	240539a0 	li	a1,14752
    1b60:	960b0314 	lhu	t3,788(s0)
    1b64:	356c0040 	ori	t4,t3,0x40
    1b68:	a60c0314 	sh	t4,788(s0)
    1b6c:	3186ffff 	andi	a2,t4,0xffff
    1b70:	87ad003a 	lh	t5,58(sp)
    1b74:	24070002 	li	a3,2
    1b78:	30ce0010 	andi	t6,a2,0x10
    1b7c:	55a7002e 	bnel	t5,a3,1c38 <func_80A7D460+0x5f8>
    1b80:	30c20001 	andi	v0,a2,0x1
    1b84:	11c0002b 	beqz	t6,1c34 <func_80A7D460+0x5f4>
    1b88:	30cf0080 	andi	t7,a2,0x80
    1b8c:	55e0002a 	bnezl	t7,1c38 <func_80A7D460+0x5f8>
    1b90:	30c20001 	andi	v0,a2,0x1
    1b94:	9202032a 	lbu	v0,810(s0)
    1b98:	2841000f 	slti	at,v0,15
    1b9c:	14200023 	bnez	at,1c2c <func_80A7D460+0x5ec>
    1ba0:	24580001 	addiu	t8,v0,1
    1ba4:	8e020320 	lw	v0,800(s0)
    1ba8:	3c080000 	lui	t0,0x0
    1bac:	5040001c 	beqzl	v0,1c20 <func_80A7D460+0x5e0>
    1bb0:	34cf0080 	ori	t7,a2,0x80
    1bb4:	8443001c 	lh	v1,28(v0)
    1bb8:	3c090000 	lui	t1,0x0
    1bbc:	3c0b0000 	lui	t3,0x0
    1bc0:	00032203 	sra	a0,v1,0x8
    1bc4:	3084001f 	andi	a0,a0,0x1f
    1bc8:	2484ffff 	addiu	a0,a0,-1
    1bcc:	30850003 	andi	a1,a0,0x3
    1bd0:	0004c083 	sra	t8,a0,0x2
    1bd4:	0018c880 	sll	t9,t8,0x2
    1bd8:	00052880 	sll	a1,a1,0x2
    1bdc:	01254821 	addu	t1,t1,a1
    1be0:	01194021 	addu	t0,t0,t9
    1be4:	8d080e9c 	lw	t0,3740(t0)
    1be8:	8d290000 	lw	t1,0(t1)
    1bec:	01655821 	addu	t3,t3,a1
    1bf0:	8d6b0000 	lw	t3,0(t3)
    1bf4:	01095024 	and	t2,t0,t1
    1bf8:	306d00ff 	andi	t5,v1,0xff
    1bfc:	016a6006 	srlv	t4,t2,t3
    1c00:	018d7024 	and	t6,t4,t5
    1c04:	55c00006 	bnezl	t6,1c20 <func_80A7D460+0x5e0>
    1c08:	34cf0080 	ori	t7,a2,0x80
    1c0c:	0c000000 	jal	0 <func_80A7BE20>
    1c10:	24044807 	li	a0,18439
    1c14:	24070002 	li	a3,2
    1c18:	96060314 	lhu	a2,788(s0)
    1c1c:	34cf0080 	ori	t7,a2,0x80
    1c20:	a60f0314 	sh	t7,788(s0)
    1c24:	10000003 	b	1c34 <func_80A7D460+0x5f4>
    1c28:	31e6ffff 	andi	a2,t7,0xffff
    1c2c:	a218032a 	sb	t8,810(s0)
    1c30:	96060314 	lhu	a2,788(s0)
    1c34:	30c20001 	andi	v0,a2,0x1
    1c38:	10400009 	beqz	v0,1c60 <func_80A7D460+0x620>
    1c3c:	30c90010 	andi	t1,a2,0x10
    1c40:	96190088 	lhu	t9,136(s0)
    1c44:	33280040 	andi	t0,t9,0x40
    1c48:	11000005 	beqz	t0,1c60 <func_80A7D460+0x620>
    1c4c:	00000000 	nop
    1c50:	0c000000 	jal	0 <func_80A7BE20>
    1c54:	02002025 	move	a0,s0
    1c58:	1000005d 	b	1dd0 <func_80A7D460+0x790>
    1c5c:	8fbf0024 	lw	ra,36(sp)
    1c60:	11200033 	beqz	t1,1d30 <func_80A7D460+0x6f0>
    1c64:	8fa80050 	lw	t0,80(sp)
    1c68:	3c014110 	lui	at,0x4110
    1c6c:	44818000 	mtc1	at,$f16
    1c70:	c7b20040 	lwc1	$f18,64(sp)
    1c74:	4610903c 	c.lt.s	$f18,$f16
    1c78:	00000000 	nop
    1c7c:	45020006 	bc1fl	1c98 <func_80A7D460+0x658>
    1c80:	860a031a 	lh	t2,794(s0)
    1c84:	0c000000 	jal	0 <func_80A7BE20>
    1c88:	02002025 	move	a0,s0
    1c8c:	10000050 	b	1dd0 <func_80A7D460+0x790>
    1c90:	8fbf0024 	lw	ra,36(sp)
    1c94:	860a031a 	lh	t2,794(s0)
    1c98:	19400014 	blez	t2,1cec <func_80A7D460+0x6ac>
    1c9c:	00000000 	nop
    1ca0:	8603031c 	lh	v1,796(s0)
    1ca4:	18600011 	blez	v1,1cec <func_80A7D460+0x6ac>
    1ca8:	00000000 	nop
    1cac:	10400013 	beqz	v0,1cfc <func_80A7D460+0x6bc>
    1cb0:	c7a40040 	lwc1	$f4,64(sp)
    1cb4:	960b0088 	lhu	t3,136(s0)
    1cb8:	3c0d0000 	lui	t5,0x0
    1cbc:	316c0001 	andi	t4,t3,0x1
    1cc0:	5180000f 	beqzl	t4,1d00 <func_80A7D460+0x6c0>
    1cc4:	3c014461 	lui	at,0x4461
    1cc8:	85ad0000 	lh	t5,0(t5)
    1ccc:	87ae003a 	lh	t6,58(sp)
    1cd0:	29a10004 	slti	at,t5,4
    1cd4:	5420000a 	bnezl	at,1d00 <func_80A7D460+0x6c0>
    1cd8:	3c014461 	lui	at,0x4461
    1cdc:	11c70003 	beq	t6,a3,1cec <func_80A7D460+0x6ac>
    1ce0:	24010003 	li	at,3
    1ce4:	55c10006 	bnel	t6,at,1d00 <func_80A7D460+0x6c0>
    1ce8:	3c014461 	lui	at,0x4461
    1cec:	0c000000 	jal	0 <func_80A7BE20>
    1cf0:	02002025 	move	a0,s0
    1cf4:	10000036 	b	1dd0 <func_80A7D460+0x790>
    1cf8:	8fbf0024 	lw	ra,36(sp)
    1cfc:	3c014461 	lui	at,0x4461
    1d00:	44813000 	mtc1	at,$f6
    1d04:	246f0001 	addiu	t7,v1,1
    1d08:	34d80020 	ori	t8,a2,0x20
    1d0c:	4606203c 	c.lt.s	$f4,$f6
    1d10:	24190064 	li	t9,100
    1d14:	45000004 	bc1f	1d28 <func_80A7D460+0x6e8>
    1d18:	00000000 	nop
    1d1c:	a60f031c 	sh	t7,796(s0)
    1d20:	1000002a 	b	1dcc <func_80A7D460+0x78c>
    1d24:	a6180314 	sh	t8,788(s0)
    1d28:	10000028 	b	1dcc <func_80A7D460+0x78c>
    1d2c:	a619031a 	sh	t9,794(s0)
    1d30:	11000005 	beqz	t0,1d48 <func_80A7D460+0x708>
    1d34:	87a9003a 	lh	t1,58(sp)
    1d38:	0c000000 	jal	0 <func_80A7BE20>
    1d3c:	02002025 	move	a0,s0
    1d40:	10000023 	b	1dd0 <func_80A7D460+0x790>
    1d44:	8fbf0024 	lw	ra,36(sp)
    1d48:	11270003 	beq	t1,a3,1d58 <func_80A7D460+0x718>
    1d4c:	24010003 	li	at,3
    1d50:	5521001f 	bnel	t1,at,1dd0 <func_80A7D460+0x790>
    1d54:	8fbf0024 	lw	ra,36(sp)
    1d58:	5040001d 	beqzl	v0,1dd0 <func_80A7D460+0x790>
    1d5c:	8fbf0024 	lw	ra,36(sp)
    1d60:	860a031c 	lh	t2,796(s0)
    1d64:	5d40001a 	bgtzl	t2,1dd0 <func_80A7D460+0x790>
    1d68:	8fbf0024 	lw	ra,36(sp)
    1d6c:	860b031a 	lh	t3,794(s0)
    1d70:	3c010000 	lui	at,0x0
    1d74:	5d600016 	bgtzl	t3,1dd0 <func_80A7D460+0x790>
    1d78:	8fbf0024 	lw	ra,36(sp)
    1d7c:	c60a0080 	lwc1	$f10,128(s0)
    1d80:	c428016c 	lwc1	$f8,364(at)
    1d84:	3c040000 	lui	a0,0x0
    1d88:	4608503c 	c.lt.s	$f10,$f8
    1d8c:	00000000 	nop
    1d90:	4502000f 	bc1fl	1dd0 <func_80A7D460+0x790>
    1d94:	8fbf0024 	lw	ra,36(sp)
    1d98:	0c000000 	jal	0 <func_80A7BE20>
    1d9c:	24840044 	addiu	a0,a0,68
    1da0:	3c040000 	lui	a0,0x0
    1da4:	3c050000 	lui	a1,0x0
    1da8:	24a50078 	addiu	a1,a1,120
    1dac:	24840050 	addiu	a0,a0,80
    1db0:	0c000000 	jal	0 <func_80A7BE20>
    1db4:	240604ad 	li	a2,1197
    1db8:	3c040000 	lui	a0,0x0
    1dbc:	0c000000 	jal	0 <func_80A7BE20>
    1dc0:	24840088 	addiu	a0,a0,136
    1dc4:	0c000000 	jal	0 <func_80A7BE20>
    1dc8:	02002025 	move	a0,s0
    1dcc:	8fbf0024 	lw	ra,36(sp)
    1dd0:	8fb00020 	lw	s0,32(sp)
    1dd4:	27bd0058 	addiu	sp,sp,88
    1dd8:	03e00008 	jr	ra
    1ddc:	00000000 	nop

00001de0 <EnInsect_Update>:
    1de0:	27bdffd8 	addiu	sp,sp,-40
    1de4:	afbf0024 	sw	ra,36(sp)
    1de8:	afb00020 	sw	s0,32(sp)
    1dec:	afa5002c 	sw	a1,44(sp)
    1df0:	8c82011c 	lw	v0,284(a0)
    1df4:	00808025 	move	s0,a0
    1df8:	50400008 	beqzl	v0,1e1c <EnInsect_Update+0x3c>
    1dfc:	8602031a 	lh	v0,794(s0)
    1e00:	8c4e0130 	lw	t6,304(v0)
    1e04:	55c00005 	bnezl	t6,1e1c <EnInsect_Update+0x3c>
    1e08:	8602031a 	lh	v0,794(s0)
    1e0c:	50820003 	beql	a0,v0,1e1c <EnInsect_Update+0x3c>
    1e10:	8602031a 	lh	v0,794(s0)
    1e14:	ac80011c 	sw	zero,284(a0)
    1e18:	8602031a 	lh	v0,794(s0)
    1e1c:	18400002 	blez	v0,1e28 <EnInsect_Update+0x48>
    1e20:	244fffff 	addiu	t7,v0,-1
    1e24:	a60f031a 	sh	t7,794(s0)
    1e28:	8602031c 	lh	v0,796(s0)
    1e2c:	18400002 	blez	v0,1e38 <EnInsect_Update+0x58>
    1e30:	2458ffff 	addiu	t8,v0,-1
    1e34:	a618031c 	sh	t8,796(s0)
    1e38:	8e190310 	lw	t9,784(s0)
    1e3c:	02002025 	move	a0,s0
    1e40:	8fa5002c 	lw	a1,44(sp)
    1e44:	0320f809 	jalr	t9
    1e48:	00000000 	nop
    1e4c:	8e080130 	lw	t0,304(s0)
    1e50:	51000071 	beqzl	t0,2018 <EnInsect_Update+0x238>
    1e54:	8fbf0024 	lw	ra,36(sp)
    1e58:	0c000000 	jal	0 <func_80A7BE20>
    1e5c:	02002025 	move	a0,s0
    1e60:	96030314 	lhu	v1,788(s0)
    1e64:	30690100 	andi	t1,v1,0x100
    1e68:	1120000e 	beqz	t1,1ea4 <EnInsect_Update+0xc4>
    1e6c:	306a0001 	andi	t2,v1,0x1
    1e70:	11400009 	beqz	t2,1e98 <EnInsect_Update+0xb8>
    1e74:	00000000 	nop
    1e78:	960b0088 	lhu	t3,136(s0)
    1e7c:	316c0001 	andi	t4,t3,0x1
    1e80:	51800009 	beqzl	t4,1ea8 <EnInsect_Update+0xc8>
    1e84:	306d0001 	andi	t5,v1,0x1
    1e88:	0c000000 	jal	0 <func_80A7BE20>
    1e8c:	02002025 	move	a0,s0
    1e90:	10000004 	b	1ea4 <EnInsect_Update+0xc4>
    1e94:	96030314 	lhu	v1,788(s0)
    1e98:	0c000000 	jal	0 <func_80A7BE20>
    1e9c:	02002025 	move	a0,s0
    1ea0:	96030314 	lhu	v1,788(s0)
    1ea4:	306d0001 	andi	t5,v1,0x1
    1ea8:	11a00002 	beqz	t5,1eb4 <EnInsect_Update+0xd4>
    1eac:	00001025 	move	v0,zero
    1eb0:	24020004 	li	v0,4
    1eb4:	306e0002 	andi	t6,v1,0x2
    1eb8:	11c00002 	beqz	t6,1ec4 <EnInsect_Update+0xe4>
    1ebc:	8fa4002c 	lw	a0,44(sp)
    1ec0:	34420001 	ori	v0,v0,0x1
    1ec4:	10400008 	beqz	v0,1ee8 <EnInsect_Update+0x108>
    1ec8:	02002825 	move	a1,s0
    1ecc:	44802000 	mtc1	zero,$f4
    1ed0:	34420040 	ori	v0,v0,0x40
    1ed4:	afa20014 	sw	v0,20(sp)
    1ed8:	3c064100 	lui	a2,0x4100
    1edc:	3c0740a0 	lui	a3,0x40a0
    1ee0:	0c000000 	jal	0 <func_80A7BE20>
    1ee4:	e7a40010 	swc1	$f4,16(sp)
    1ee8:	02002025 	move	a0,s0
    1eec:	0c000000 	jal	0 <func_80A7BE20>
    1ef0:	8fa5002c 	lw	a1,44(sp)
    1ef4:	10400011 	beqz	v0,1f3c <EnInsect_Update+0x15c>
    1ef8:	3c014248 	lui	at,0x4248
    1efc:	8602001c 	lh	v0,28(s0)
    1f00:	24010002 	li	at,2
    1f04:	ae000118 	sw	zero,280(s0)
    1f08:	30420003 	andi	v0,v0,0x3
    1f0c:	10410003 	beq	v0,at,1f1c <EnInsect_Update+0x13c>
    1f10:	24010003 	li	at,3
    1f14:	14410005 	bne	v0,at,1f2c <EnInsect_Update+0x14c>
    1f18:	00000000 	nop
    1f1c:	0c000000 	jal	0 <func_80A7BE20>
    1f20:	02002025 	move	a0,s0
    1f24:	10000039 	b	200c <EnInsect_Update+0x22c>
    1f28:	02002025 	move	a0,s0
    1f2c:	0c000000 	jal	0 <func_80A7BE20>
    1f30:	02002025 	move	a0,s0
    1f34:	10000035 	b	200c <EnInsect_Update+0x22c>
    1f38:	02002025 	move	a0,s0
    1f3c:	c6060090 	lwc1	$f6,144(s0)
    1f40:	44814000 	mtc1	at,$f8
    1f44:	00000000 	nop
    1f48:	4608303c 	c.lt.s	$f6,$f8
    1f4c:	00000000 	nop
    1f50:	4502002e 	bc1fl	200c <EnInsect_Update+0x22c>
    1f54:	02002025 	move	a0,s0
    1f58:	8e180310 	lw	t8,784(s0)
    1f5c:	3c0f0000 	lui	t7,0x0
    1f60:	25ef0000 	addiu	t7,t7,0
    1f64:	51f80029 	beql	t7,t8,200c <EnInsect_Update+0x22c>
    1f68:	02002025 	move	a0,s0
    1f6c:	96030314 	lhu	v1,788(s0)
    1f70:	30790020 	andi	t9,v1,0x20
    1f74:	5720000c 	bnezl	t9,1fa8 <EnInsect_Update+0x1c8>
    1f78:	30690008 	andi	t1,v1,0x8
    1f7c:	8608031c 	lh	t0,796(s0)
    1f80:	8fa4002c 	lw	a0,44(sp)
    1f84:	2606014c 	addiu	a2,s0,332
    1f88:	290100b4 	slti	at,t0,180
    1f8c:	10200005 	beqz	at,1fa4 <EnInsect_Update+0x1c4>
    1f90:	3c010001 	lui	at,0x1
    1f94:	34211e60 	ori	at,at,0x1e60
    1f98:	0c000000 	jal	0 <func_80A7BE20>
    1f9c:	00812821 	addu	a1,a0,at
    1fa0:	96030314 	lhu	v1,788(s0)
    1fa4:	30690008 	andi	t1,v1,0x8
    1fa8:	15200017 	bnez	t1,2008 <EnInsect_Update+0x228>
    1fac:	3c0a0000 	lui	t2,0x0
    1fb0:	854a0000 	lh	t2,0(t2)
    1fb4:	02002025 	move	a0,s0
    1fb8:	29410004 	slti	at,t2,4
    1fbc:	50200013 	beqzl	at,200c <EnInsect_Update+0x22c>
    1fc0:	02002025 	move	a0,s0
    1fc4:	0c000000 	jal	0 <func_80A7BE20>
    1fc8:	8fa5002c 	lw	a1,44(sp)
    1fcc:	1040000e 	beqz	v0,2008 <EnInsect_Update+0x228>
    1fd0:	02002025 	move	a0,s0
    1fd4:	3c0141f0 	lui	at,0x41f0
    1fd8:	44815000 	mtc1	at,$f10
    1fdc:	8fa5002c 	lw	a1,44(sp)
    1fe0:	2406007e 	li	a2,126
    1fe4:	3c074270 	lui	a3,0x4270
    1fe8:	0c000000 	jal	0 <func_80A7BE20>
    1fec:	e7aa0010 	swc1	$f10,16(sp)
    1ff0:	10400005 	beqz	v0,2008 <EnInsect_Update+0x228>
    1ff4:	3c020000 	lui	v0,0x0
    1ff8:	24420000 	addiu	v0,v0,0
    1ffc:	844b0000 	lh	t3,0(v0)
    2000:	256c0001 	addiu	t4,t3,1
    2004:	a44c0000 	sh	t4,0(v0)
    2008:	02002025 	move	a0,s0
    200c:	0c000000 	jal	0 <func_80A7BE20>
    2010:	24050000 	li	a1,0
    2014:	8fbf0024 	lw	ra,36(sp)
    2018:	8fb00020 	lw	s0,32(sp)
    201c:	27bd0028 	addiu	sp,sp,40
    2020:	03e00008 	jr	ra
    2024:	00000000 	nop

00002028 <EnInsect_Draw>:
    2028:	27bdffe0 	addiu	sp,sp,-32
    202c:	afbf001c 	sw	ra,28(sp)
    2030:	afa40020 	sw	a0,32(sp)
    2034:	afa50024 	sw	a1,36(sp)
    2038:	0c000000 	jal	0 <func_80A7BE20>
    203c:	8ca40000 	lw	a0,0(a1)
    2040:	8fa20020 	lw	v0,32(sp)
    2044:	8fa40024 	lw	a0,36(sp)
    2048:	00003825 	move	a3,zero
    204c:	8c4501b0 	lw	a1,432(v0)
    2050:	8c4601cc 	lw	a2,460(v0)
    2054:	afa00014 	sw	zero,20(sp)
    2058:	0c000000 	jal	0 <func_80A7BE20>
    205c:	afa00010 	sw	zero,16(sp)
    2060:	8fa50020 	lw	a1,32(sp)
    2064:	00002025 	move	a0,zero
    2068:	0c000000 	jal	0 <func_80A7BE20>
    206c:	24a5014c 	addiu	a1,a1,332
    2070:	8fbf001c 	lw	ra,28(sp)
    2074:	3c010000 	lui	at,0x0
    2078:	a4200000 	sh	zero,0(at)
    207c:	03e00008 	jr	ra
    2080:	27bd0020 	addiu	sp,sp,32
	...
