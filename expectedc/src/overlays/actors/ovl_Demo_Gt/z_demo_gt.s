
build/src/overlays/actors/ovl_Demo_Gt/z_demo_gt.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoGt_Destroy>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa5001c 	sw	a1,28(sp)
       c:	8482001c 	lh	v0,28(a0)
      10:	00803825 	move	a3,a0
      14:	24010001 	li	at,1
      18:	10410003 	beq	v0,at,28 <DemoGt_Destroy+0x28>
      1c:	8fa4001c 	lw	a0,28(sp)
      20:	24010002 	li	at,2
      24:	14410003 	bne	v0,at,34 <DemoGt_Destroy+0x34>
      28:	24850810 	addiu	a1,a0,2064
      2c:	0c000000 	jal	0 <DemoGt_Destroy>
      30:	8ce6014c 	lw	a2,332(a3)
      34:	8fbf0014 	lw	ra,20(sp)
      38:	27bd0018 	addiu	sp,sp,24
      3c:	03e00008 	jr	ra
      40:	00000000 	nop

00000044 <func_8097D6B4>:
      44:	27bdffe8 	addiu	sp,sp,-24
      48:	afbf0014 	sw	ra,20(sp)
      4c:	0c000000 	jal	0 <DemoGt_Destroy>
      50:	24042098 	li	a0,8344
      54:	8fbf0014 	lw	ra,20(sp)
      58:	27bd0018 	addiu	sp,sp,24
      5c:	03e00008 	jr	ra
      60:	00000000 	nop

00000064 <func_8097D6D4>:
      64:	27bdffe8 	addiu	sp,sp,-24
      68:	afbf0014 	sw	ra,20(sp)
      6c:	2406003c 	li	a2,60
      70:	0c000000 	jal	0 <DemoGt_Destroy>
      74:	2407180e 	li	a3,6158
      78:	8fbf0014 	lw	ra,20(sp)
      7c:	27bd0018 	addiu	sp,sp,24
      80:	03e00008 	jr	ra
      84:	00000000 	nop

00000088 <func_8097D6F8>:
      88:	27bdffe8 	addiu	sp,sp,-24
      8c:	afbf0014 	sw	ra,20(sp)
      90:	2406003c 	li	a2,60
      94:	0c000000 	jal	0 <DemoGt_Destroy>
      98:	240728c2 	li	a3,10434
      9c:	8fbf0014 	lw	ra,20(sp)
      a0:	27bd0018 	addiu	sp,sp,24
      a4:	03e00008 	jr	ra
      a8:	00000000 	nop

000000ac <func_8097D71C>:
      ac:	27bdffe8 	addiu	sp,sp,-24
      b0:	afbf0014 	sw	ra,20(sp)
      b4:	44806000 	mtc1	zero,$f12
      b8:	afa40018 	sw	a0,24(sp)
      bc:	24050032 	li	a1,50
      c0:	2406000a 	li	a2,10
      c4:	0c000000 	jal	0 <DemoGt_Destroy>
      c8:	24070005 	li	a3,5
      cc:	8fbf0014 	lw	ra,20(sp)
      d0:	27bd0018 	addiu	sp,sp,24
      d4:	03e00008 	jr	ra
      d8:	00000000 	nop

000000dc <func_8097D74C>:
      dc:	27bdffd0 	addiu	sp,sp,-48
      e0:	afbf002c 	sw	ra,44(sp)
      e4:	afa40030 	sw	a0,48(sp)
      e8:	afa50034 	sw	a1,52(sp)
      ec:	afa60038 	sw	a2,56(sp)
      f0:	0c000000 	jal	0 <DemoGt_Destroy>
      f4:	afa7003c 	sw	a3,60(sp)
      f8:	3c010000 	lui	at,0x0
      fc:	c4240000 	lwc1	$f4,0(at)
     100:	c7a20040 	lwc1	$f2,64(sp)
     104:	87a80046 	lh	t0,70(sp)
     108:	87a9004a 	lh	t1,74(sp)
     10c:	46041182 	mul.s	$f6,$f2,$f4
     110:	3c0e0000 	lui	t6,0x0
     114:	3c0f0000 	lui	t7,0x0
     118:	25ef0000 	addiu	t7,t7,0
     11c:	25ce0000 	addiu	t6,t6,0
     120:	afae0010 	sw	t6,16(sp)
     124:	afaf0014 	sw	t7,20(sp)
     128:	46060202 	mul.s	$f8,$f0,$f6
     12c:	8fa40030 	lw	a0,48(sp)
     130:	8fa50034 	lw	a1,52(sp)
     134:	8fa60038 	lw	a2,56(sp)
     138:	8fa7003c 	lw	a3,60(sp)
     13c:	afa8001c 	sw	t0,28(sp)
     140:	afa90020 	sw	t1,32(sp)
     144:	46024280 	add.s	$f10,$f8,$f2
     148:	4600540d 	trunc.w.s	$f16,$f10
     14c:	44198000 	mfc1	t9,$f16
     150:	0c000000 	jal	0 <DemoGt_Destroy>
     154:	afb90018 	sw	t9,24(sp)
     158:	8fbf002c 	lw	ra,44(sp)
     15c:	27bd0030 	addiu	sp,sp,48
     160:	03e00008 	jr	ra
     164:	00000000 	nop

00000168 <func_8097D7D8>:
     168:	27bdffa8 	addiu	sp,sp,-88
     16c:	44876000 	mtc1	a3,$f12
     170:	afbf0024 	sw	ra,36(sp)
     174:	afa5005c 	sw	a1,92(sp)
     178:	afa40058 	sw	a0,88(sp)
     17c:	afa60060 	sw	a2,96(sp)
     180:	0c000000 	jal	0 <DemoGt_Destroy>
     184:	e7ac0064 	swc1	$f12,100(sp)
     188:	8fa40058 	lw	a0,88(sp)
     18c:	8fa60060 	lw	a2,96(sp)
     190:	14400054 	bnez	v0,2e4 <func_8097D7D8+0x17c>
     194:	c7ac0064 	lwc1	$f12,100(sp)
     198:	3c020001 	lui	v0,0x1
     19c:	00441021 	addu	v0,v0,a0
     1a0:	8c421de4 	lw	v0,7652(v0)
     1a4:	8fae0068 	lw	t6,104(sp)
     1a8:	3c190000 	lui	t9,0x0
     1ac:	8faf006c 	lw	t7,108(sp)
     1b0:	004e001a 	div	zero,v0,t6
     1b4:	00001810 	mfhi	v1
     1b8:	27390000 	addiu	t9,t9,0
     1bc:	15c00002 	bnez	t6,1c8 <func_8097D7D8+0x60>
     1c0:	00000000 	nop
     1c4:	0007000d 	break	0x7
     1c8:	2401ffff 	li	at,-1
     1cc:	15c10004 	bne	t6,at,1e0 <func_8097D7D8+0x78>
     1d0:	3c018000 	lui	at,0x8000
     1d4:	14410002 	bne	v0,at,1e0 <func_8097D7D8+0x78>
     1d8:	00000000 	nop
     1dc:	0006000d 	break	0x6
     1e0:	00031023 	negu	v0,v1
     1e4:	04600003 	bltz	v1,1f4 <func_8097D7D8+0x8c>
     1e8:	27b8003c 	addiu	t8,sp,60
     1ec:	10000001 	b	1f4 <func_8097D7D8+0x8c>
     1f0:	00601025 	move	v0,v1
     1f4:	544f003c 	bnel	v0,t7,2e8 <func_8097D7D8+0x180>
     1f8:	8fbf0024 	lw	ra,36(sp)
     1fc:	8f290000 	lw	t1,0(t9)
     200:	8f280004 	lw	t0,4(t9)
     204:	3c0a0000 	lui	t2,0x0
     208:	af090000 	sw	t1,0(t8)
     20c:	8f290008 	lw	t1,8(t9)
     210:	254a0000 	addiu	t2,t2,0
     214:	af080004 	sw	t0,4(t8)
     218:	af090008 	sw	t1,8(t8)
     21c:	8d4c0000 	lw	t4,0(t2)
     220:	27a70030 	addiu	a3,sp,48
     224:	3c014396 	lui	at,0x4396
     228:	acec0000 	sw	t4,0(a3)
     22c:	8d4b0004 	lw	t3,4(t2)
     230:	aceb0004 	sw	t3,4(a3)
     234:	8d4c0008 	lw	t4,8(t2)
     238:	acec0008 	sw	t4,8(a3)
     23c:	c7a4003c 	lwc1	$f4,60(sp)
     240:	c7a80040 	lwc1	$f8,64(sp)
     244:	c7b00044 	lwc1	$f16,68(sp)
     248:	460c2182 	mul.s	$f6,$f4,$f12
     24c:	87af0072 	lh	t7,114(sp)
     250:	8fa5005c 	lw	a1,92(sp)
     254:	460c4282 	mul.s	$f10,$f8,$f12
     258:	00000000 	nop
     25c:	460c8482 	mul.s	$f18,$f16,$f12
     260:	e7a6003c 	swc1	$f6,60(sp)
     264:	e7aa0040 	swc1	$f10,64(sp)
     268:	e7b20044 	swc1	$f18,68(sp)
     26c:	c4c40000 	lwc1	$f4,0(a2)
     270:	46043200 	add.s	$f8,$f6,$f4
     274:	e7a8003c 	swc1	$f8,60(sp)
     278:	c4d00004 	lwc1	$f16,4(a2)
     27c:	46105180 	add.s	$f6,$f10,$f16
     280:	c7aa0030 	lwc1	$f10,48(sp)
     284:	e7a60040 	swc1	$f6,64(sp)
     288:	c4c40008 	lwc1	$f4,8(a2)
     28c:	460c5402 	mul.s	$f16,$f10,$f12
     290:	c7a60034 	lwc1	$f6,52(sp)
     294:	46049200 	add.s	$f8,$f18,$f4
     298:	c7a40038 	lwc1	$f4,56(sp)
     29c:	460c3482 	mul.s	$f18,$f6,$f12
     2a0:	44815000 	mtc1	at,$f10
     2a4:	e7a80044 	swc1	$f8,68(sp)
     2a8:	460c2202 	mul.s	$f8,$f4,$f12
     2ac:	e7b00030 	swc1	$f16,48(sp)
     2b0:	3c014170 	lui	at,0x4170
     2b4:	460c5402 	mul.s	$f16,$f10,$f12
     2b8:	44813000 	mtc1	at,$f6
     2bc:	e7b20034 	swc1	$f18,52(sp)
     2c0:	27a6003c 	addiu	a2,sp,60
     2c4:	460c3482 	mul.s	$f18,$f6,$f12
     2c8:	e7a80038 	swc1	$f8,56(sp)
     2cc:	afaf0018 	sw	t7,24(sp)
     2d0:	e7b00010 	swc1	$f16,16(sp)
     2d4:	4600910d 	trunc.w.s	$f4,$f18
     2d8:	440e2000 	mfc1	t6,$f4
     2dc:	0c000000 	jal	0 <DemoGt_Destroy>
     2e0:	afae0014 	sw	t6,20(sp)
     2e4:	8fbf0024 	lw	ra,36(sp)
     2e8:	27bd0058 	addiu	sp,sp,88
     2ec:	03e00008 	jr	ra
     2f0:	00000000 	nop

000002f4 <func_8097D964>:
     2f4:	27bdffd0 	addiu	sp,sp,-48
     2f8:	afa50034 	sw	a1,52(sp)
     2fc:	8fae0034 	lw	t6,52(sp)
     300:	afbf002c 	sw	ra,44(sp)
     304:	afa40030 	sw	a0,48(sp)
     308:	afa60038 	sw	a2,56(sp)
     30c:	c5c40004 	lwc1	$f4,4(t6)
     310:	8dc70000 	lw	a3,0(t6)
     314:	87af003a 	lh	t7,58(sp)
     318:	e7a40010 	swc1	$f4,16(sp)
     31c:	c5c60008 	lwc1	$f6,8(t6)
     320:	00802825 	move	a1,a0
     324:	24841c24 	addiu	a0,a0,7204
     328:	afa00020 	sw	zero,32(sp)
     32c:	afa0001c 	sw	zero,28(sp)
     330:	afa00018 	sw	zero,24(sp)
     334:	240600e5 	li	a2,229
     338:	afaf0024 	sw	t7,36(sp)
     33c:	0c000000 	jal	0 <DemoGt_Destroy>
     340:	e7a60014 	swc1	$f6,20(sp)
     344:	8fbf002c 	lw	ra,44(sp)
     348:	27bd0030 	addiu	sp,sp,48
     34c:	03e00008 	jr	ra
     350:	00000000 	nop

00000354 <func_8097D9C4>:
     354:	27bdffc0 	addiu	sp,sp,-64
     358:	3c0e0000 	lui	t6,0x0
     35c:	afbf001c 	sw	ra,28(sp)
     360:	afa40040 	sw	a0,64(sp)
     364:	afa50044 	sw	a1,68(sp)
     368:	25ce0000 	addiu	t6,t6,0
     36c:	8dd80000 	lw	t8,0(t6)
     370:	44866000 	mtc1	a2,$f12
     374:	27a60030 	addiu	a2,sp,48
     378:	acd80000 	sw	t8,0(a2)
     37c:	8dcf0004 	lw	t7,4(t6)
     380:	3c0142c8 	lui	at,0x42c8
     384:	44812000 	mtc1	at,$f4
     388:	accf0004 	sw	t7,4(a2)
     38c:	8dd80008 	lw	t8,8(t6)
     390:	3c014170 	lui	at,0x4170
     394:	460c2182 	mul.s	$f6,$f4,$f12
     398:	44815000 	mtc1	at,$f10
     39c:	3c190000 	lui	t9,0x0
     3a0:	27390000 	addiu	t9,t9,0
     3a4:	acd80008 	sw	t8,8(a2)
     3a8:	8f290000 	lw	t1,0(t9)
     3ac:	460c5402 	mul.s	$f16,$f10,$f12
     3b0:	27a70024 	addiu	a3,sp,36
     3b4:	ace90000 	sw	t1,0(a3)
     3b8:	8f280004 	lw	t0,4(t9)
     3bc:	ace80004 	sw	t0,4(a3)
     3c0:	4600848d 	trunc.w.s	$f18,$f16
     3c4:	8f290008 	lw	t1,8(t9)
     3c8:	4600320d 	trunc.w.s	$f8,$f6
     3cc:	ace90008 	sw	t1,8(a3)
     3d0:	440d9000 	mfc1	t5,$f18
     3d4:	8fa50044 	lw	a1,68(sp)
     3d8:	440b4000 	mfc1	t3,$f8
     3dc:	8fa40040 	lw	a0,64(sp)
     3e0:	afad0014 	sw	t5,20(sp)
     3e4:	0c000000 	jal	0 <DemoGt_Destroy>
     3e8:	afab0010 	sw	t3,16(sp)
     3ec:	8fa40040 	lw	a0,64(sp)
     3f0:	0c000000 	jal	0 <DemoGt_Destroy>
     3f4:	8fa50044 	lw	a1,68(sp)
     3f8:	8fbf001c 	lw	ra,28(sp)
     3fc:	27bd0040 	addiu	sp,sp,64
     400:	03e00008 	jr	ra
     404:	00000000 	nop

00000408 <func_8097DA78>:
     408:	27bdffe0 	addiu	sp,sp,-32
     40c:	3c0142c8 	lui	at,0x42c8
     410:	c7ac0030 	lwc1	$f12,48(sp)
     414:	44812000 	mtc1	at,$f4
     418:	3c0141c8 	lui	at,0x41c8
     41c:	44815000 	mtc1	at,$f10
     420:	460c2182 	mul.s	$f6,$f4,$f12
     424:	afbf001c 	sw	ra,28(sp)
     428:	460c5402 	mul.s	$f16,$f10,$f12
     42c:	4600320d 	trunc.w.s	$f8,$f6
     430:	4600848d 	trunc.w.s	$f18,$f16
     434:	440f4000 	mfc1	t7,$f8
     438:	44199000 	mfc1	t9,$f18
     43c:	afaf0010 	sw	t7,16(sp)
     440:	0c000000 	jal	0 <DemoGt_Destroy>
     444:	afb90014 	sw	t9,20(sp)
     448:	8fbf001c 	lw	ra,28(sp)
     44c:	27bd0020 	addiu	sp,sp,32
     450:	03e00008 	jr	ra
     454:	00000000 	nop

00000458 <func_8097DAC8>:
     458:	27bdff30 	addiu	sp,sp,-208
     45c:	44802000 	mtc1	zero,$f4
     460:	f7be0070 	sdc1	$f30,112(sp)
     464:	3c0141a0 	lui	at,0x41a0
     468:	4481f000 	mtc1	at,$f30
     46c:	4600218d 	trunc.w.s	$f6,$f4
     470:	f7bc0068 	sdc1	$f28,104(sp)
     474:	3c014000 	lui	at,0x4000
     478:	4481e000 	mtc1	at,$f28
     47c:	f7ba0060 	sdc1	$f26,96(sp)
     480:	3c014296 	lui	at,0x4296
     484:	afb40088 	sw	s4,136(sp)
     488:	4481d000 	mtc1	at,$f26
     48c:	44143000 	mfc1	s4,$f6
     490:	f7b80058 	sdc1	$f24,88(sp)
     494:	3c014238 	lui	at,0x4238
     498:	afbe0098 	sw	s8,152(sp)
     49c:	4481c000 	mtc1	at,$f24
     4a0:	afb70094 	sw	s7,148(sp)
     4a4:	afb60090 	sw	s6,144(sp)
     4a8:	afb5008c 	sw	s5,140(sp)
     4ac:	afb30084 	sw	s3,132(sp)
     4b0:	afb20080 	sw	s2,128(sp)
     4b4:	afb1007c 	sw	s1,124(sp)
     4b8:	f7b60050 	sdc1	$f22,80(sp)
     4bc:	3c010000 	lui	at,0x0
     4c0:	3c1e0600 	lui	s8,0x600
     4c4:	00c09025 	move	s2,a2
     4c8:	00a0a825 	move	s5,a1
     4cc:	afbf009c 	sw	ra,156(sp)
     4d0:	afb00078 	sw	s0,120(sp)
     4d4:	f7b40048 	sdc1	$f20,72(sp)
     4d8:	afa400d0 	sw	a0,208(sp)
     4dc:	00008825 	move	s1,zero
     4e0:	27de0ea0 	addiu	s8,s8,3744
     4e4:	c4360000 	lwc1	$f22,0(at)
     4e8:	00009825 	move	s3,zero
     4ec:	27b600c4 	addiu	s6,sp,196
     4f0:	27b700b8 	addiu	s7,sp,184
     4f4:	2694001e 	addiu	s4,s4,30
     4f8:	00112400 	sll	a0,s1,0x10
     4fc:	0c000000 	jal	0 <DemoGt_Destroy>
     500:	00042403 	sra	a0,a0,0x10
     504:	46180202 	mul.s	$f8,$f0,$f24
     508:	0c000000 	jal	0 <DemoGt_Destroy>
     50c:	e7a800c4 	swc1	$f8,196(sp)
     510:	461a0282 	mul.s	$f10,$f0,$f26
     514:	00112400 	sll	a0,s1,0x10
     518:	00042403 	sra	a0,a0,0x10
     51c:	461c5400 	add.s	$f16,$f10,$f28
     520:	0c000000 	jal	0 <DemoGt_Destroy>
     524:	e7b000c8 	swc1	$f16,200(sp)
     528:	46180482 	mul.s	$f18,$f0,$f24
     52c:	c7a400c4 	lwc1	$f4,196(sp)
     530:	46162182 	mul.s	$f6,$f4,$f22
     534:	e7b200cc 	swc1	$f18,204(sp)
     538:	461e3200 	add.s	$f8,$f6,$f30
     53c:	0c000000 	jal	0 <DemoGt_Destroy>
     540:	e7a800b8 	swc1	$f8,184(sp)
     544:	3c014180 	lui	at,0x4180
     548:	44815000 	mtc1	at,$f10
     54c:	c7b200cc 	lwc1	$f18,204(sp)
     550:	c7a600c4 	lwc1	$f6,196(sp)
     554:	460a0402 	mul.s	$f16,$f0,$f10
     558:	00000000 	nop
     55c:	46169102 	mul.s	$f4,$f18,$f22
     560:	e7b000bc 	swc1	$f16,188(sp)
     564:	c7b000c8 	lwc1	$f16,200(sp)
     568:	e7a400c0 	swc1	$f4,192(sp)
     56c:	c6480000 	lwc1	$f8,0(s2)
     570:	46083280 	add.s	$f10,$f6,$f8
     574:	e7aa00c4 	swc1	$f10,196(sp)
     578:	c6440004 	lwc1	$f4,4(s2)
     57c:	46048180 	add.s	$f6,$f16,$f4
     580:	e7a600c8 	swc1	$f6,200(sp)
     584:	c6480008 	lwc1	$f8,8(s2)
     588:	46089280 	add.s	$f10,$f18,$f8
     58c:	0c000000 	jal	0 <DemoGt_Destroy>
     590:	e7aa00cc 	swc1	$f10,204(sp)
     594:	4616003c 	c.lt.s	$f0,$f22
     598:	3c010000 	lui	at,0x0
     59c:	45000003 	bc1f	5ac <func_8097DAC8+0x154>
     5a0:	00000000 	nop
     5a4:	10000009 	b	5cc <func_8097DAC8+0x174>
     5a8:	24100060 	li	s0,96
     5ac:	c4300000 	lwc1	$f16,0(at)
     5b0:	24100020 	li	s0,32
     5b4:	4610003c 	c.lt.s	$f0,$f16
     5b8:	00000000 	nop
     5bc:	45000003 	bc1f	5cc <func_8097DAC8+0x174>
     5c0:	00000000 	nop
     5c4:	10000001 	b	5cc <func_8097DAC8+0x174>
     5c8:	24100040 	li	s0,64
     5cc:	0c000000 	jal	0 <DemoGt_Destroy>
     5d0:	00000000 	nop
     5d4:	0c000000 	jal	0 <DemoGt_Destroy>
     5d8:	46000506 	mov.s	$f20,$f0
     5dc:	3c014120 	lui	at,0x4120
     5e0:	44812000 	mtc1	at,$f4
     5e4:	3c0141f0 	lui	at,0x41f0
     5e8:	44819000 	mtc1	at,$f18
     5ec:	4604a182 	mul.s	$f6,$f20,$f4
     5f0:	240fff09 	li	t7,-247
     5f4:	24180003 	li	t8,3
     5f8:	24090002 	li	t1,2
     5fc:	240a012c 	li	t2,300
     600:	240bffff 	li	t3,-1
     604:	240c0186 	li	t4,390
     608:	46123200 	add.s	$f8,$f6,$f18
     60c:	afac0038 	sw	t4,56(sp)
     610:	afab0034 	sw	t3,52(sp)
     614:	afaa002c 	sw	t2,44(sp)
     618:	4600428d 	trunc.w.s	$f10,$f8
     61c:	afa90028 	sw	t1,40(sp)
     620:	afb80018 	sw	t8,24(sp)
     624:	afaf0010 	sw	t7,16(sp)
     628:	44085000 	mfc1	t0,$f10
     62c:	02a02025 	move	a0,s5
     630:	02c02825 	move	a1,s6
     634:	02e03025 	move	a2,s7
     638:	02403825 	move	a3,s2
     63c:	afb00014 	sw	s0,20(sp)
     640:	afa0001c 	sw	zero,28(sp)
     644:	afa00020 	sw	zero,32(sp)
     648:	afb40030 	sw	s4,48(sp)
     64c:	afbe003c 	sw	s8,60(sp)
     650:	0c000000 	jal	0 <DemoGt_Destroy>
     654:	afa80024 	sw	t0,36(sp)
     658:	26311555 	addiu	s1,s1,5461
     65c:	26730001 	addiu	s3,s3,1
     660:	2401000c 	li	at,12
     664:	00118c00 	sll	s1,s1,0x10
     668:	1661ffa3 	bne	s3,at,4f8 <func_8097DAC8+0xa0>
     66c:	00118c03 	sra	s1,s1,0x10
     670:	8fbf009c 	lw	ra,156(sp)
     674:	d7b40048 	ldc1	$f20,72(sp)
     678:	d7b60050 	ldc1	$f22,80(sp)
     67c:	d7b80058 	ldc1	$f24,88(sp)
     680:	d7ba0060 	ldc1	$f26,96(sp)
     684:	d7bc0068 	ldc1	$f28,104(sp)
     688:	d7be0070 	ldc1	$f30,112(sp)
     68c:	8fb00078 	lw	s0,120(sp)
     690:	8fb1007c 	lw	s1,124(sp)
     694:	8fb20080 	lw	s2,128(sp)
     698:	8fb30084 	lw	s3,132(sp)
     69c:	8fb40088 	lw	s4,136(sp)
     6a0:	8fb5008c 	lw	s5,140(sp)
     6a4:	8fb60090 	lw	s6,144(sp)
     6a8:	8fb70094 	lw	s7,148(sp)
     6ac:	8fbe0098 	lw	s8,152(sp)
     6b0:	03e00008 	jr	ra
     6b4:	27bd00d0 	addiu	sp,sp,208

000006b8 <func_8097DD28>:
     6b8:	27bdff30 	addiu	sp,sp,-208
     6bc:	44802000 	mtc1	zero,$f4
     6c0:	f7bc0068 	sdc1	$f28,104(sp)
     6c4:	3c014000 	lui	at,0x4000
     6c8:	4600218d 	trunc.w.s	$f6,$f4
     6cc:	4481e000 	mtc1	at,$f28
     6d0:	f7ba0060 	sdc1	$f26,96(sp)
     6d4:	3c014296 	lui	at,0x4296
     6d8:	4481d000 	mtc1	at,$f26
     6dc:	afb40088 	sw	s4,136(sp)
     6e0:	f7b80058 	sdc1	$f24,88(sp)
     6e4:	3c010000 	lui	at,0x0
     6e8:	44143000 	mfc1	s4,$f6
     6ec:	c4380000 	lwc1	$f24,0(at)
     6f0:	afbe0098 	sw	s8,152(sp)
     6f4:	f7be0070 	sdc1	$f30,112(sp)
     6f8:	f7b60050 	sdc1	$f22,80(sp)
     6fc:	3c0141f0 	lui	at,0x41f0
     700:	afb70094 	sw	s7,148(sp)
     704:	afb60090 	sw	s6,144(sp)
     708:	afb5008c 	sw	s5,140(sp)
     70c:	afb30084 	sw	s3,132(sp)
     710:	afb20080 	sw	s2,128(sp)
     714:	afb1007c 	sw	s1,124(sp)
     718:	3c1e0600 	lui	s8,0x600
     71c:	4481b000 	mtc1	at,$f22
     720:	4480f000 	mtc1	zero,$f30
     724:	00c09025 	move	s2,a2
     728:	00a0a825 	move	s5,a1
     72c:	afbf009c 	sw	ra,156(sp)
     730:	afb00078 	sw	s0,120(sp)
     734:	f7b40048 	sdc1	$f20,72(sp)
     738:	afa400d0 	sw	a0,208(sp)
     73c:	00008825 	move	s1,zero
     740:	27de0ea0 	addiu	s8,s8,3744
     744:	00009825 	move	s3,zero
     748:	27b600c4 	addiu	s6,sp,196
     74c:	27b700b8 	addiu	s7,sp,184
     750:	2694001e 	addiu	s4,s4,30
     754:	00112400 	sll	a0,s1,0x10
     758:	0c000000 	jal	0 <DemoGt_Destroy>
     75c:	00042403 	sra	a0,a0,0x10
     760:	46160202 	mul.s	$f8,$f0,$f22
     764:	0c000000 	jal	0 <DemoGt_Destroy>
     768:	e7a800c4 	swc1	$f8,196(sp)
     76c:	461a0282 	mul.s	$f10,$f0,$f26
     770:	00112400 	sll	a0,s1,0x10
     774:	00042403 	sra	a0,a0,0x10
     778:	461c5400 	add.s	$f16,$f10,$f28
     77c:	0c000000 	jal	0 <DemoGt_Destroy>
     780:	e7b000c8 	swc1	$f16,200(sp)
     784:	46160482 	mul.s	$f18,$f0,$f22
     788:	e7be00b8 	swc1	$f30,184(sp)
     78c:	0c000000 	jal	0 <DemoGt_Destroy>
     790:	e7b200cc 	swc1	$f18,204(sp)
     794:	3c01c080 	lui	at,0xc080
     798:	44812000 	mtc1	at,$f4
     79c:	c7a800cc 	lwc1	$f8,204(sp)
     7a0:	c7b000c4 	lwc1	$f16,196(sp)
     7a4:	46040182 	mul.s	$f6,$f0,$f4
     7a8:	00000000 	nop
     7ac:	46184282 	mul.s	$f10,$f8,$f24
     7b0:	e7a600bc 	swc1	$f6,188(sp)
     7b4:	c7a600c8 	lwc1	$f6,200(sp)
     7b8:	e7aa00c0 	swc1	$f10,192(sp)
     7bc:	c6520000 	lwc1	$f18,0(s2)
     7c0:	46128100 	add.s	$f4,$f16,$f18
     7c4:	e7a400c4 	swc1	$f4,196(sp)
     7c8:	c64a0004 	lwc1	$f10,4(s2)
     7cc:	460a3400 	add.s	$f16,$f6,$f10
     7d0:	e7b000c8 	swc1	$f16,200(sp)
     7d4:	c6520008 	lwc1	$f18,8(s2)
     7d8:	46124100 	add.s	$f4,$f8,$f18
     7dc:	0c000000 	jal	0 <DemoGt_Destroy>
     7e0:	e7a400cc 	swc1	$f4,204(sp)
     7e4:	4618003c 	c.lt.s	$f0,$f24
     7e8:	3c010000 	lui	at,0x0
     7ec:	45000003 	bc1f	7fc <func_8097DD28+0x144>
     7f0:	00000000 	nop
     7f4:	10000009 	b	81c <func_8097DD28+0x164>
     7f8:	24100060 	li	s0,96
     7fc:	c4260000 	lwc1	$f6,0(at)
     800:	24100020 	li	s0,32
     804:	4606003c 	c.lt.s	$f0,$f6
     808:	00000000 	nop
     80c:	45000003 	bc1f	81c <func_8097DD28+0x164>
     810:	00000000 	nop
     814:	10000001 	b	81c <func_8097DD28+0x164>
     818:	24100040 	li	s0,64
     81c:	0c000000 	jal	0 <DemoGt_Destroy>
     820:	00000000 	nop
     824:	0c000000 	jal	0 <DemoGt_Destroy>
     828:	46000506 	mov.s	$f20,$f0
     82c:	3c014120 	lui	at,0x4120
     830:	44815000 	mtc1	at,$f10
     834:	240fff09 	li	t7,-247
     838:	24180003 	li	t8,3
     83c:	460aa402 	mul.s	$f16,$f20,$f10
     840:	24090002 	li	t1,2
     844:	240a012c 	li	t2,300
     848:	240bffff 	li	t3,-1
     84c:	240c0186 	li	t4,390
     850:	afac0038 	sw	t4,56(sp)
     854:	afab0034 	sw	t3,52(sp)
     858:	46168200 	add.s	$f8,$f16,$f22
     85c:	afaa002c 	sw	t2,44(sp)
     860:	afa90028 	sw	t1,40(sp)
     864:	afb80018 	sw	t8,24(sp)
     868:	4600448d 	trunc.w.s	$f18,$f8
     86c:	afaf0010 	sw	t7,16(sp)
     870:	02a02025 	move	a0,s5
     874:	02c02825 	move	a1,s6
     878:	44089000 	mfc1	t0,$f18
     87c:	02e03025 	move	a2,s7
     880:	02403825 	move	a3,s2
     884:	afb00014 	sw	s0,20(sp)
     888:	afa0001c 	sw	zero,28(sp)
     88c:	afa00020 	sw	zero,32(sp)
     890:	afb40030 	sw	s4,48(sp)
     894:	afbe003c 	sw	s8,60(sp)
     898:	0c000000 	jal	0 <DemoGt_Destroy>
     89c:	afa80024 	sw	t0,36(sp)
     8a0:	26312000 	addiu	s1,s1,8192
     8a4:	26730001 	addiu	s3,s3,1
     8a8:	24010008 	li	at,8
     8ac:	00118c00 	sll	s1,s1,0x10
     8b0:	1661ffa8 	bne	s3,at,754 <func_8097DD28+0x9c>
     8b4:	00118c03 	sra	s1,s1,0x10
     8b8:	8fbf009c 	lw	ra,156(sp)
     8bc:	d7b40048 	ldc1	$f20,72(sp)
     8c0:	d7b60050 	ldc1	$f22,80(sp)
     8c4:	d7b80058 	ldc1	$f24,88(sp)
     8c8:	d7ba0060 	ldc1	$f26,96(sp)
     8cc:	d7bc0068 	ldc1	$f28,104(sp)
     8d0:	d7be0070 	ldc1	$f30,112(sp)
     8d4:	8fb00078 	lw	s0,120(sp)
     8d8:	8fb1007c 	lw	s1,124(sp)
     8dc:	8fb20080 	lw	s2,128(sp)
     8e0:	8fb30084 	lw	s3,132(sp)
     8e4:	8fb40088 	lw	s4,136(sp)
     8e8:	8fb5008c 	lw	s5,140(sp)
     8ec:	8fb60090 	lw	s6,144(sp)
     8f0:	8fb70094 	lw	s7,148(sp)
     8f4:	8fbe0098 	lw	s8,152(sp)
     8f8:	03e00008 	jr	ra
     8fc:	27bd00d0 	addiu	sp,sp,208

00000900 <func_8097DF70>:
     900:	27bdff30 	addiu	sp,sp,-208
     904:	f7be0070 	sdc1	$f30,112(sp)
     908:	3c014000 	lui	at,0x4000
     90c:	4481f000 	mtc1	at,$f30
     910:	f7bc0068 	sdc1	$f28,104(sp)
     914:	3c0140a0 	lui	at,0x40a0
     918:	4481e000 	mtc1	at,$f28
     91c:	f7ba0060 	sdc1	$f26,96(sp)
     920:	3c010000 	lui	at,0x0
     924:	c43a0000 	lwc1	$f26,0(at)
     928:	f7b80058 	sdc1	$f24,88(sp)
     92c:	3c014180 	lui	at,0x4180
     930:	4481c000 	mtc1	at,$f24
     934:	afb70094 	sw	s7,148(sp)
     938:	f7b60050 	sdc1	$f22,80(sp)
     93c:	3c0141f0 	lui	at,0x41f0
     940:	afbe0098 	sw	s8,152(sp)
     944:	afb60090 	sw	s6,144(sp)
     948:	afb5008c 	sw	s5,140(sp)
     94c:	afb40088 	sw	s4,136(sp)
     950:	afb30084 	sw	s3,132(sp)
     954:	afb20080 	sw	s2,128(sp)
     958:	afb1007c 	sw	s1,124(sp)
     95c:	3c170600 	lui	s7,0x600
     960:	4481b000 	mtc1	at,$f22
     964:	00c09025 	move	s2,a2
     968:	00a0a025 	move	s4,a1
     96c:	afbf009c 	sw	ra,156(sp)
     970:	afb00078 	sw	s0,120(sp)
     974:	f7b40048 	sdc1	$f20,72(sp)
     978:	afa400d0 	sw	a0,208(sp)
     97c:	00008825 	move	s1,zero
     980:	26f70ea0 	addiu	s7,s7,3744
     984:	00009825 	move	s3,zero
     988:	27b500c4 	addiu	s5,sp,196
     98c:	27b600b8 	addiu	s6,sp,184
     990:	241e000c 	li	s8,12
     994:	00112400 	sll	a0,s1,0x10
     998:	0c000000 	jal	0 <DemoGt_Destroy>
     99c:	00042403 	sra	a0,a0,0x10
     9a0:	46180102 	mul.s	$f4,$f0,$f24
     9a4:	0c000000 	jal	0 <DemoGt_Destroy>
     9a8:	e7a400c4 	swc1	$f4,196(sp)
     9ac:	461c0182 	mul.s	$f6,$f0,$f28
     9b0:	00112400 	sll	a0,s1,0x10
     9b4:	00042403 	sra	a0,a0,0x10
     9b8:	461e3200 	add.s	$f8,$f6,$f30
     9bc:	0c000000 	jal	0 <DemoGt_Destroy>
     9c0:	e7a800c8 	swc1	$f8,200(sp)
     9c4:	46180282 	mul.s	$f10,$f0,$f24
     9c8:	c7b000c4 	lwc1	$f16,196(sp)
     9cc:	461a8482 	mul.s	$f18,$f16,$f26
     9d0:	e7aa00cc 	swc1	$f10,204(sp)
     9d4:	0c000000 	jal	0 <DemoGt_Destroy>
     9d8:	e7b200b8 	swc1	$f18,184(sp)
     9dc:	3c014210 	lui	at,0x4210
     9e0:	44812000 	mtc1	at,$f4
     9e4:	c7b000cc 	lwc1	$f16,204(sp)
     9e8:	3c0140c0 	lui	at,0x40c0
     9ec:	46040182 	mul.s	$f6,$f0,$f4
     9f0:	44814000 	mtc1	at,$f8
     9f4:	c7a400c4 	lwc1	$f4,196(sp)
     9f8:	461a8482 	mul.s	$f18,$f16,$f26
     9fc:	46083280 	add.s	$f10,$f6,$f8
     a00:	e7b200c0 	swc1	$f18,192(sp)
     a04:	e7aa00bc 	swc1	$f10,188(sp)
     a08:	c6460000 	lwc1	$f6,0(s2)
     a0c:	c7aa00c8 	lwc1	$f10,200(sp)
     a10:	46062200 	add.s	$f8,$f4,$f6
     a14:	e7a800c4 	swc1	$f8,196(sp)
     a18:	c6520004 	lwc1	$f18,4(s2)
     a1c:	46125100 	add.s	$f4,$f10,$f18
     a20:	e7a400c8 	swc1	$f4,200(sp)
     a24:	c6460008 	lwc1	$f6,8(s2)
     a28:	46068200 	add.s	$f8,$f16,$f6
     a2c:	0c000000 	jal	0 <DemoGt_Destroy>
     a30:	e7a800cc 	swc1	$f8,204(sp)
     a34:	3c010000 	lui	at,0x0
     a38:	c42a0000 	lwc1	$f10,0(at)
     a3c:	3c010000 	lui	at,0x0
     a40:	460a003c 	c.lt.s	$f0,$f10
     a44:	00000000 	nop
     a48:	45000003 	bc1f	a58 <func_8097DF70+0x158>
     a4c:	00000000 	nop
     a50:	10000009 	b	a78 <func_8097DF70+0x178>
     a54:	24100061 	li	s0,97
     a58:	c4320000 	lwc1	$f18,0(at)
     a5c:	24100021 	li	s0,33
     a60:	4612003c 	c.lt.s	$f0,$f18
     a64:	00000000 	nop
     a68:	45000003 	bc1f	a78 <func_8097DF70+0x178>
     a6c:	00000000 	nop
     a70:	10000001 	b	a78 <func_8097DF70+0x178>
     a74:	24100041 	li	s0,65
     a78:	0c000000 	jal	0 <DemoGt_Destroy>
     a7c:	00000000 	nop
     a80:	0c000000 	jal	0 <DemoGt_Destroy>
     a84:	46000506 	mov.s	$f20,$f0
     a88:	4616a102 	mul.s	$f4,$f20,$f22
     a8c:	240eff38 	li	t6,-200
     a90:	240f000a 	li	t7,10
     a94:	46160202 	mul.s	$f8,$f0,$f22
     a98:	afaf0018 	sw	t7,24(sp)
     a9c:	afae0010 	sw	t6,16(sp)
     aa0:	240effff 	li	t6,-1
     aa4:	240f0186 	li	t7,390
     aa8:	46162400 	add.s	$f16,$f4,$f22
     aac:	2418000a 	li	t8,10
     ab0:	24090002 	li	t1,2
     ab4:	4600428d 	trunc.w.s	$f10,$f8
     ab8:	240a012c 	li	t2,300
     abc:	afaa002c 	sw	t2,44(sp)
     ac0:	4600818d 	trunc.w.s	$f6,$f16
     ac4:	440c5000 	mfc1	t4,$f10
     ac8:	afa90028 	sw	t1,40(sp)
     acc:	afb8001c 	sw	t8,28(sp)
     ad0:	44083000 	mfc1	t0,$f6
     ad4:	258d001e 	addiu	t5,t4,30
     ad8:	afad0030 	sw	t5,48(sp)
     adc:	afaf0038 	sw	t7,56(sp)
     ae0:	afae0034 	sw	t6,52(sp)
     ae4:	02802025 	move	a0,s4
     ae8:	02a02825 	move	a1,s5
     aec:	02c03025 	move	a2,s6
     af0:	02403825 	move	a3,s2
     af4:	afb00014 	sw	s0,20(sp)
     af8:	afa00020 	sw	zero,32(sp)
     afc:	afb7003c 	sw	s7,60(sp)
     b00:	0c000000 	jal	0 <DemoGt_Destroy>
     b04:	afa80024 	sw	t0,36(sp)
     b08:	26311555 	addiu	s1,s1,5461
     b0c:	26730001 	addiu	s3,s3,1
     b10:	00118c00 	sll	s1,s1,0x10
     b14:	167eff9f 	bne	s3,s8,994 <func_8097DF70+0x94>
     b18:	00118c03 	sra	s1,s1,0x10
     b1c:	8fbf009c 	lw	ra,156(sp)
     b20:	d7b40048 	ldc1	$f20,72(sp)
     b24:	d7b60050 	ldc1	$f22,80(sp)
     b28:	d7b80058 	ldc1	$f24,88(sp)
     b2c:	d7ba0060 	ldc1	$f26,96(sp)
     b30:	d7bc0068 	ldc1	$f28,104(sp)
     b34:	d7be0070 	ldc1	$f30,112(sp)
     b38:	8fb00078 	lw	s0,120(sp)
     b3c:	8fb1007c 	lw	s1,124(sp)
     b40:	8fb20080 	lw	s2,128(sp)
     b44:	8fb30084 	lw	s3,132(sp)
     b48:	8fb40088 	lw	s4,136(sp)
     b4c:	8fb5008c 	lw	s5,140(sp)
     b50:	8fb60090 	lw	s6,144(sp)
     b54:	8fb70094 	lw	s7,148(sp)
     b58:	8fbe0098 	lw	s8,152(sp)
     b5c:	03e00008 	jr	ra
     b60:	27bd00d0 	addiu	sp,sp,208

00000b64 <func_8097E1D4>:
     b64:	27bdff30 	addiu	sp,sp,-208
     b68:	44802000 	mtc1	zero,$f4
     b6c:	f7be0070 	sdc1	$f30,112(sp)
     b70:	3c0141e0 	lui	at,0x41e0
     b74:	4481f000 	mtc1	at,$f30
     b78:	f7bc0068 	sdc1	$f28,104(sp)
     b7c:	3c014296 	lui	at,0x4296
     b80:	4600218d 	trunc.w.s	$f6,$f4
     b84:	4481e000 	mtc1	at,$f28
     b88:	f7ba0060 	sdc1	$f26,96(sp)
     b8c:	3c014120 	lui	at,0x4120
     b90:	4481d000 	mtc1	at,$f26
     b94:	afb5008c 	sw	s5,140(sp)
     b98:	f7b80058 	sdc1	$f24,88(sp)
     b9c:	3c014040 	lui	at,0x4040
     ba0:	44153000 	mfc1	s5,$f6
     ba4:	4481c000 	mtc1	at,$f24
     ba8:	afb40088 	sw	s4,136(sp)
     bac:	f7b60050 	sdc1	$f22,80(sp)
     bb0:	3c014238 	lui	at,0x4238
     bb4:	0006a400 	sll	s4,a2,0x10
     bb8:	afbe0098 	sw	s8,152(sp)
     bbc:	afb70094 	sw	s7,148(sp)
     bc0:	afb60090 	sw	s6,144(sp)
     bc4:	afb30084 	sw	s3,132(sp)
     bc8:	afb20080 	sw	s2,128(sp)
     bcc:	afb1007c 	sw	s1,124(sp)
     bd0:	4481b000 	mtc1	at,$f22
     bd4:	00a09025 	move	s2,a1
     bd8:	0080b025 	move	s6,a0
     bdc:	0014a403 	sra	s4,s4,0x10
     be0:	afbf009c 	sw	ra,156(sp)
     be4:	afb00078 	sw	s0,120(sp)
     be8:	f7b40048 	sdc1	$f20,72(sp)
     bec:	afa600d8 	sw	a2,216(sp)
     bf0:	00008825 	move	s1,zero
     bf4:	00009825 	move	s3,zero
     bf8:	27b700c4 	addiu	s7,sp,196
     bfc:	27be00b8 	addiu	s8,sp,184
     c00:	26b5001e 	addiu	s5,s5,30
     c04:	00112400 	sll	a0,s1,0x10
     c08:	0c000000 	jal	0 <DemoGt_Destroy>
     c0c:	00042403 	sra	a0,a0,0x10
     c10:	46160202 	mul.s	$f8,$f0,$f22
     c14:	0c000000 	jal	0 <DemoGt_Destroy>
     c18:	e7a800c4 	swc1	$f8,196(sp)
     c1c:	461c0282 	mul.s	$f10,$f0,$f28
     c20:	00112400 	sll	a0,s1,0x10
     c24:	00042403 	sra	a0,a0,0x10
     c28:	461e5401 	sub.s	$f16,$f10,$f30
     c2c:	0c000000 	jal	0 <DemoGt_Destroy>
     c30:	e7b000c8 	swc1	$f16,200(sp)
     c34:	46160482 	mul.s	$f18,$f0,$f22
     c38:	00142400 	sll	a0,s4,0x10
     c3c:	00042403 	sra	a0,a0,0x10
     c40:	0c000000 	jal	0 <DemoGt_Destroy>
     c44:	e7b200cc 	swc1	$f18,204(sp)
     c48:	46180102 	mul.s	$f4,$f0,$f24
     c4c:	0c000000 	jal	0 <DemoGt_Destroy>
     c50:	e7a400b8 	swc1	$f4,184(sp)
     c54:	3c01c080 	lui	at,0xc080
     c58:	44813000 	mtc1	at,$f6
     c5c:	00142400 	sll	a0,s4,0x10
     c60:	00042403 	sra	a0,a0,0x10
     c64:	46060202 	mul.s	$f8,$f0,$f6
     c68:	461a4280 	add.s	$f10,$f8,$f26
     c6c:	0c000000 	jal	0 <DemoGt_Destroy>
     c70:	e7aa00bc 	swc1	$f10,188(sp)
     c74:	46180402 	mul.s	$f16,$f0,$f24
     c78:	c7b200c4 	lwc1	$f18,196(sp)
     c7c:	c7a800c8 	lwc1	$f8,200(sp)
     c80:	e7b000c0 	swc1	$f16,192(sp)
     c84:	c6440000 	lwc1	$f4,0(s2)
     c88:	46049180 	add.s	$f6,$f18,$f4
     c8c:	c7b200cc 	lwc1	$f18,204(sp)
     c90:	e7a600c4 	swc1	$f6,196(sp)
     c94:	c64a0004 	lwc1	$f10,4(s2)
     c98:	460a4400 	add.s	$f16,$f8,$f10
     c9c:	e7b000c8 	swc1	$f16,200(sp)
     ca0:	c6440008 	lwc1	$f4,8(s2)
     ca4:	46049180 	add.s	$f6,$f18,$f4
     ca8:	0c000000 	jal	0 <DemoGt_Destroy>
     cac:	e7a600cc 	swc1	$f6,204(sp)
     cb0:	3c010000 	lui	at,0x0
     cb4:	c4280000 	lwc1	$f8,0(at)
     cb8:	3c010000 	lui	at,0x0
     cbc:	4608003c 	c.lt.s	$f0,$f8
     cc0:	00000000 	nop
     cc4:	45000003 	bc1f	cd4 <func_8097E1D4+0x170>
     cc8:	00000000 	nop
     ccc:	10000009 	b	cf4 <func_8097E1D4+0x190>
     cd0:	24100061 	li	s0,97
     cd4:	c42a0000 	lwc1	$f10,0(at)
     cd8:	24100021 	li	s0,33
     cdc:	460a003c 	c.lt.s	$f0,$f10
     ce0:	00000000 	nop
     ce4:	45000003 	bc1f	cf4 <func_8097E1D4+0x190>
     ce8:	00000000 	nop
     cec:	10000001 	b	cf4 <func_8097E1D4+0x190>
     cf0:	24100041 	li	s0,65
     cf4:	0c000000 	jal	0 <DemoGt_Destroy>
     cf8:	00000000 	nop
     cfc:	0c000000 	jal	0 <DemoGt_Destroy>
     d00:	46000506 	mov.s	$f20,$f0
     d04:	461aa402 	mul.s	$f16,$f20,$f26
     d08:	3c0141f0 	lui	at,0x41f0
     d0c:	44819000 	mtc1	at,$f18
     d10:	3c0d0600 	lui	t5,0x600
     d14:	25ad0ea0 	addiu	t5,t5,3744
     d18:	240fff09 	li	t7,-247
     d1c:	24180003 	li	t8,3
     d20:	46128100 	add.s	$f4,$f16,$f18
     d24:	24090002 	li	t1,2
     d28:	240a012c 	li	t2,300
     d2c:	240bffff 	li	t3,-1
     d30:	4600218d 	trunc.w.s	$f6,$f4
     d34:	240c0186 	li	t4,390
     d38:	afac0038 	sw	t4,56(sp)
     d3c:	afab0034 	sw	t3,52(sp)
     d40:	44083000 	mfc1	t0,$f6
     d44:	afaa002c 	sw	t2,44(sp)
     d48:	afa90028 	sw	t1,40(sp)
     d4c:	afb80018 	sw	t8,24(sp)
     d50:	afaf0010 	sw	t7,16(sp)
     d54:	afad003c 	sw	t5,60(sp)
     d58:	02c02025 	move	a0,s6
     d5c:	02e02825 	move	a1,s7
     d60:	03c03025 	move	a2,s8
     d64:	02403825 	move	a3,s2
     d68:	afb00014 	sw	s0,20(sp)
     d6c:	afa0001c 	sw	zero,28(sp)
     d70:	afa00020 	sw	zero,32(sp)
     d74:	afb50030 	sw	s5,48(sp)
     d78:	0c000000 	jal	0 <DemoGt_Destroy>
     d7c:	afa80024 	sw	t0,36(sp)
     d80:	3c010001 	lui	at,0x1
     d84:	02218821 	addu	s1,s1,at
     d88:	24010001 	li	at,1
     d8c:	26730001 	addiu	s3,s3,1
     d90:	00118c00 	sll	s1,s1,0x10
     d94:	1661ff9b 	bne	s3,at,c04 <func_8097E1D4+0xa0>
     d98:	00118c03 	sra	s1,s1,0x10
     d9c:	8fbf009c 	lw	ra,156(sp)
     da0:	d7b40048 	ldc1	$f20,72(sp)
     da4:	d7b60050 	ldc1	$f22,80(sp)
     da8:	d7b80058 	ldc1	$f24,88(sp)
     dac:	d7ba0060 	ldc1	$f26,96(sp)
     db0:	d7bc0068 	ldc1	$f28,104(sp)
     db4:	d7be0070 	ldc1	$f30,112(sp)
     db8:	8fb00078 	lw	s0,120(sp)
     dbc:	8fb1007c 	lw	s1,124(sp)
     dc0:	8fb20080 	lw	s2,128(sp)
     dc4:	8fb30084 	lw	s3,132(sp)
     dc8:	8fb40088 	lw	s4,136(sp)
     dcc:	8fb5008c 	lw	s5,140(sp)
     dd0:	8fb60090 	lw	s6,144(sp)
     dd4:	8fb70094 	lw	s7,148(sp)
     dd8:	8fbe0098 	lw	s8,152(sp)
     ddc:	03e00008 	jr	ra
     de0:	27bd00d0 	addiu	sp,sp,208

00000de4 <func_8097E454>:
     de4:	27bdff58 	addiu	sp,sp,-168
     de8:	afbf0064 	sw	ra,100(sp)
     dec:	afb40050 	sw	s4,80(sp)
     df0:	afb3004c 	sw	s3,76(sp)
     df4:	00a09825 	move	s3,a1
     df8:	0080a025 	move	s4,a0
     dfc:	afbe0060 	sw	s8,96(sp)
     e00:	afb7005c 	sw	s7,92(sp)
     e04:	afb60058 	sw	s6,88(sp)
     e08:	afb50054 	sw	s5,84(sp)
     e0c:	afb20048 	sw	s2,72(sp)
     e10:	afb10044 	sw	s1,68(sp)
     e14:	afb00040 	sw	s0,64(sp)
     e18:	f7b80038 	sdc1	$f24,56(sp)
     e1c:	f7b60030 	sdc1	$f22,48(sp)
     e20:	f7b40028 	sdc1	$f20,40(sp)
     e24:	afa600b0 	sw	a2,176(sp)
     e28:	0c000000 	jal	0 <DemoGt_Destroy>
     e2c:	afa700b4 	sw	a3,180(sp)
     e30:	1440006f 	bnez	v0,ff0 <func_8097E454+0x20c>
     e34:	8fa500c4 	lw	a1,196(sp)
     e38:	18a0006d 	blez	a1,ff0 <func_8097E454+0x20c>
     e3c:	8fbe00c0 	lw	s8,192(sp)
     e40:	1bc0006b 	blez	s8,ff0 <func_8097E454+0x20c>
     e44:	3c020001 	lui	v0,0x1
     e48:	00541021 	addu	v0,v0,s4
     e4c:	8c421de4 	lw	v0,7652(v0)
     e50:	c7a000bc 	lwc1	$f0,188(sp)
     e54:	3c0f0001 	lui	t7,0x1
     e58:	04400003 	bltz	v0,e68 <func_8097E454+0x84>
     e5c:	00021823 	negu	v1,v0
     e60:	10000001 	b	e68 <func_8097E454+0x84>
     e64:	00401825 	move	v1,v0
     e68:	0065001a 	div	zero,v1,a1
     e6c:	00001010 	mfhi	v0
     e70:	00027400 	sll	t6,v0,0x10
     e74:	14a00002 	bnez	a1,e80 <func_8097E454+0x9c>
     e78:	00000000 	nop
     e7c:	0007000d 	break	0x7
     e80:	2401ffff 	li	at,-1
     e84:	14a10004 	bne	a1,at,e98 <func_8097E454+0xb4>
     e88:	3c018000 	lui	at,0x8000
     e8c:	14610002 	bne	v1,at,e98 <func_8097E454+0xb4>
     e90:	00000000 	nop
     e94:	0006000d 	break	0x6
     e98:	01de001a 	div	zero,t6,s8
     e9c:	17c00002 	bnez	s8,ea8 <func_8097E454+0xc4>
     ea0:	00000000 	nop
     ea4:	0007000d 	break	0x7
     ea8:	2401ffff 	li	at,-1
     eac:	17c10004 	bne	s8,at,ec0 <func_8097E454+0xdc>
     eb0:	3c018000 	lui	at,0x8000
     eb4:	15c10002 	bne	t6,at,ec0 <func_8097E454+0xdc>
     eb8:	00000000 	nop
     ebc:	0006000d 	break	0x6
     ec0:	00008012 	mflo	s0
     ec4:	00108400 	sll	s0,s0,0x10
     ec8:	005e082a 	slt	at,v0,s8
     ecc:	00108403 	sra	s0,s0,0x10
     ed0:	10200047 	beqz	at,ff0 <func_8097E454+0x20c>
     ed4:	00408825 	move	s1,v0
     ed8:	01fe001a 	div	zero,t7,s8
     edc:	3c014396 	lui	at,0x4396
     ee0:	44812000 	mtc1	at,$f4
     ee4:	0000a812 	mflo	s5
     ee8:	0015ac00 	sll	s5,s5,0x10
     eec:	46002582 	mul.s	$f22,$f4,$f0
     ef0:	17c00002 	bnez	s8,efc <func_8097E454+0x118>
     ef4:	00000000 	nop
     ef8:	0007000d 	break	0x7
     efc:	2401ffff 	li	at,-1
     f00:	17c10004 	bne	s8,at,f14 <func_8097E454+0x130>
     f04:	3c018000 	lui	at,0x8000
     f08:	15e10002 	bne	t7,at,f14 <func_8097E454+0x130>
     f0c:	00000000 	nop
     f10:	0006000d 	break	0x6
     f14:	3c014170 	lui	at,0x4170
     f18:	44813000 	mtc1	at,$f6
     f1c:	3c010000 	lui	at,0x0
     f20:	c4380000 	lwc1	$f24,0(at)
     f24:	46003202 	mul.s	$f8,$f6,$f0
     f28:	0015ac03 	sra	s5,s5,0x10
     f2c:	c7b400b8 	lwc1	$f20,184(sp)
     f30:	87b700ca 	lh	s7,202(sp)
     f34:	27b2007c 	addiu	s2,sp,124
     f38:	4600428d 	trunc.w.s	$f10,$f8
     f3c:	44165000 	mfc1	s6,$f10
     f40:	00000000 	nop
     f44:	0016b400 	sll	s6,s6,0x10
     f48:	0016b403 	sra	s6,s6,0x10
     f4c:	00102400 	sll	a0,s0,0x10
     f50:	0c000000 	jal	0 <DemoGt_Destroy>
     f54:	00042403 	sra	a0,a0,0x10
     f58:	46140402 	mul.s	$f16,$f0,$f20
     f5c:	c6720000 	lwc1	$f18,0(s3)
     f60:	00102400 	sll	a0,s0,0x10
     f64:	00042403 	sra	a0,a0,0x10
     f68:	46128100 	add.s	$f4,$f16,$f18
     f6c:	e7a4007c 	swc1	$f4,124(sp)
     f70:	c6660004 	lwc1	$f6,4(s3)
     f74:	0c000000 	jal	0 <DemoGt_Destroy>
     f78:	e7a60080 	swc1	$f6,128(sp)
     f7c:	46140202 	mul.s	$f8,$f0,$f20
     f80:	c66a0008 	lwc1	$f10,8(s3)
     f84:	afb70018 	sw	s7,24(sp)
     f88:	afb60014 	sw	s6,20(sp)
     f8c:	e7b60010 	swc1	$f22,16(sp)
     f90:	02802025 	move	a0,s4
     f94:	02402825 	move	a1,s2
     f98:	460a4400 	add.s	$f16,$f8,$f10
     f9c:	8fa600b0 	lw	a2,176(sp)
     fa0:	8fa700b4 	lw	a3,180(sp)
     fa4:	0c000000 	jal	0 <DemoGt_Destroy>
     fa8:	e7b00084 	swc1	$f16,132(sp)
     fac:	0c000000 	jal	0 <DemoGt_Destroy>
     fb0:	00000000 	nop
     fb4:	4618003e 	c.le.s	$f0,$f24
     fb8:	02802025 	move	a0,s4
     fbc:	02402825 	move	a1,s2
     fc0:	00103400 	sll	a2,s0,0x10
     fc4:	45020004 	bc1fl	fd8 <func_8097E454+0x1f4>
     fc8:	8fb900c4 	lw	t9,196(sp)
     fcc:	0c000000 	jal	0 <DemoGt_Destroy>
     fd0:	00063403 	sra	a2,a2,0x10
     fd4:	8fb900c4 	lw	t9,196(sp)
     fd8:	02158021 	addu	s0,s0,s5
     fdc:	00108400 	sll	s0,s0,0x10
     fe0:	02398821 	addu	s1,s1,t9
     fe4:	023e082a 	slt	at,s1,s8
     fe8:	1420ffd8 	bnez	at,f4c <func_8097E454+0x168>
     fec:	00108403 	sra	s0,s0,0x10
     ff0:	8fbf0064 	lw	ra,100(sp)
     ff4:	d7b40028 	ldc1	$f20,40(sp)
     ff8:	d7b60030 	ldc1	$f22,48(sp)
     ffc:	d7b80038 	ldc1	$f24,56(sp)
    1000:	8fb00040 	lw	s0,64(sp)
    1004:	8fb10044 	lw	s1,68(sp)
    1008:	8fb20048 	lw	s2,72(sp)
    100c:	8fb3004c 	lw	s3,76(sp)
    1010:	8fb40050 	lw	s4,80(sp)
    1014:	8fb50054 	lw	s5,84(sp)
    1018:	8fb60058 	lw	s6,88(sp)
    101c:	8fb7005c 	lw	s7,92(sp)
    1020:	8fbe0060 	lw	s8,96(sp)
    1024:	03e00008 	jr	ra
    1028:	27bd00a8 	addiu	sp,sp,168

0000102c <func_8097E69C>:
    102c:	908e1d6c 	lbu	t6,7532(a0)
    1030:	00001025 	move	v0,zero
    1034:	15c00003 	bnez	t6,1044 <func_8097E69C+0x18>
    1038:	00000000 	nop
    103c:	03e00008 	jr	ra
    1040:	24020001 	li	v0,1
    1044:	03e00008 	jr	ra
    1048:	00000000 	nop

0000104c <func_8097E6BC>:
    104c:	27bdffd8 	addiu	sp,sp,-40
    1050:	afbf0014 	sw	ra,20(sp)
    1054:	afa40028 	sw	a0,40(sp)
    1058:	afa5002c 	sw	a1,44(sp)
    105c:	0c000000 	jal	0 <DemoGt_Destroy>
    1060:	afa0001c 	sw	zero,28(sp)
    1064:	14400006 	bnez	v0,1080 <func_8097E6BC+0x34>
    1068:	8fa3001c 	lw	v1,28(sp)
    106c:	8faf002c 	lw	t7,44(sp)
    1070:	8fae0028 	lw	t6,40(sp)
    1074:	000fc080 	sll	t8,t7,0x2
    1078:	01d8c821 	addu	t9,t6,t8
    107c:	8f231d8c 	lw	v1,7564(t9)
    1080:	8fbf0014 	lw	ra,20(sp)
    1084:	27bd0028 	addiu	sp,sp,40
    1088:	00601025 	move	v0,v1
    108c:	03e00008 	jr	ra
    1090:	00000000 	nop

00001094 <func_8097E704>:
    1094:	27bdffe8 	addiu	sp,sp,-24
    1098:	afbf0014 	sw	ra,20(sp)
    109c:	afa5001c 	sw	a1,28(sp)
    10a0:	0c000000 	jal	0 <DemoGt_Destroy>
    10a4:	00c02825 	move	a1,a2
    10a8:	10400007 	beqz	v0,10c8 <func_8097E704+0x34>
    10ac:	8fbf0014 	lw	ra,20(sp)
    10b0:	97ae001e 	lhu	t6,30(sp)
    10b4:	944f0000 	lhu	t7,0(v0)
    10b8:	55cf0004 	bnel	t6,t7,10cc <func_8097E704+0x38>
    10bc:	00001025 	move	v0,zero
    10c0:	10000002 	b	10cc <func_8097E704+0x38>
    10c4:	24020001 	li	v0,1
    10c8:	00001025 	move	v0,zero
    10cc:	03e00008 	jr	ra
    10d0:	27bd0018 	addiu	sp,sp,24

000010d4 <func_8097E744>:
    10d4:	27bdffc0 	addiu	sp,sp,-64
    10d8:	afa40040 	sw	a0,64(sp)
    10dc:	afbf001c 	sw	ra,28(sp)
    10e0:	afa50044 	sw	a1,68(sp)
    10e4:	00a02025 	move	a0,a1
    10e8:	0c000000 	jal	0 <DemoGt_Destroy>
    10ec:	00c02825 	move	a1,a2
    10f0:	1040002c 	beqz	v0,11a4 <func_8097E744+0xd0>
    10f4:	8fae0044 	lw	t6,68(sp)
    10f8:	94440004 	lhu	a0,4(v0)
    10fc:	94450002 	lhu	a1,2(v0)
    1100:	95c61d74 	lhu	a2,7540(t6)
    1104:	afa2003c 	sw	v0,60(sp)
    1108:	afa00010 	sw	zero,16(sp)
    110c:	0c000000 	jal	0 <DemoGt_Destroy>
    1110:	24070008 	li	a3,8
    1114:	8fa3003c 	lw	v1,60(sp)
    1118:	8fa20040 	lw	v0,64(sp)
    111c:	8c780010 	lw	t8,16(v1)
    1120:	8c6f000c 	lw	t7,12(v1)
    1124:	8c680018 	lw	t0,24(v1)
    1128:	8c790014 	lw	t9,20(v1)
    112c:	44983000 	mtc1	t8,$f6
    1130:	8c6a0020 	lw	t2,32(v1)
    1134:	448f2000 	mtc1	t7,$f4
    1138:	8c69001c 	lw	t1,28(v1)
    113c:	44885000 	mtc1	t0,$f10
    1140:	46803320 	cvt.s.w	$f12,$f6
    1144:	44994000 	mtc1	t9,$f8
    1148:	448a3000 	mtc1	t2,$f6
    114c:	24420024 	addiu	v0,v0,36
    1150:	468020a0 	cvt.s.w	$f2,$f4
    1154:	44892000 	mtc1	t1,$f4
    1158:	46805420 	cvt.s.w	$f16,$f10
    115c:	468043a0 	cvt.s.w	$f14,$f8
    1160:	46803220 	cvt.s.w	$f8,$f6
    1164:	468024a0 	cvt.s.w	$f18,$f4
    1168:	e7a80020 	swc1	$f8,32(sp)
    116c:	46028281 	sub.s	$f10,$f16,$f2
    1170:	460c9201 	sub.s	$f8,$f18,$f12
    1174:	46005102 	mul.s	$f4,$f10,$f0
    1178:	00000000 	nop
    117c:	46004282 	mul.s	$f10,$f8,$f0
    1180:	46022180 	add.s	$f6,$f4,$f2
    1184:	460c5100 	add.s	$f4,$f10,$f12
    1188:	e4460000 	swc1	$f6,0(v0)
    118c:	e4440004 	swc1	$f4,4(v0)
    1190:	c7a60020 	lwc1	$f6,32(sp)
    1194:	460e3201 	sub.s	$f8,$f6,$f14
    1198:	46004282 	mul.s	$f10,$f8,$f0
    119c:	460e5100 	add.s	$f4,$f10,$f14
    11a0:	e4440008 	swc1	$f4,8(v0)
    11a4:	8fbf001c 	lw	ra,28(sp)
    11a8:	27bd0040 	addiu	sp,sp,64
    11ac:	03e00008 	jr	ra
    11b0:	00000000 	nop

000011b4 <func_8097E824>:
    11b4:	27bdffb8 	addiu	sp,sp,-72
    11b8:	24010001 	li	at,1
    11bc:	afbf0014 	sw	ra,20(sp)
    11c0:	14a10023 	bne	a1,at,1250 <func_8097E824+0x9c>
    11c4:	afa40048 	sw	a0,72(sp)
    11c8:	3c020000 	lui	v0,0x0
    11cc:	8c420000 	lw	v0,0(v0)
    11d0:	3c010000 	lui	at,0x0
    11d4:	c4200000 	lwc1	$f0,0(at)
    11d8:	84591474 	lh	t9,5236(v0)
    11dc:	84481476 	lh	t0,5238(v0)
    11e0:	84491478 	lh	t1,5240(v0)
    11e4:	44992000 	mtc1	t9,$f4
    11e8:	44884000 	mtc1	t0,$f8
    11ec:	844e147a 	lh	t6,5242(v0)
    11f0:	468021a0 	cvt.s.w	$f6,$f4
    11f4:	44892000 	mtc1	t1,$f4
    11f8:	844f147c 	lh	t7,5244(v0)
    11fc:	8458147e 	lh	t8,5246(v0)
    1200:	34038000 	li	v1,0x8000
    1204:	468042a0 	cvt.s.w	$f10,$f8
    1208:	46003082 	mul.s	$f2,$f6,$f0
    120c:	3c013f00 	lui	at,0x3f00
    1210:	44819000 	mtc1	at,$f18
    1214:	01c32821 	addu	a1,t6,v1
    1218:	01e33021 	addu	a2,t7,v1
    121c:	46005402 	mul.s	$f16,$f10,$f0
    1220:	03033821 	addu	a3,t8,v1
    1224:	00052c00 	sll	a1,a1,0x10
    1228:	00063400 	sll	a2,a2,0x10
    122c:	00073c00 	sll	a3,a3,0x10
    1230:	00052c03 	sra	a1,a1,0x10
    1234:	468021a0 	cvt.s.w	$f6,$f4
    1238:	00063403 	sra	a2,a2,0x10
    123c:	00073c03 	sra	a3,a3,0x10
    1240:	46128300 	add.s	$f12,$f16,$f18
    1244:	46003382 	mul.s	$f14,$f6,$f0
    1248:	100000fb 	b	1638 <func_8097E824+0x484>
    124c:	8fa20048 	lw	v0,72(sp)
    1250:	24010002 	li	at,2
    1254:	14a10022 	bne	a1,at,12e0 <func_8097E824+0x12c>
    1258:	3c020000 	lui	v0,0x0
    125c:	8c420000 	lw	v0,0(v0)
    1260:	3c010000 	lui	at,0x0
    1264:	c4200000 	lwc1	$f0,0(at)
    1268:	844d1480 	lh	t5,5248(v0)
    126c:	844e1482 	lh	t6,5250(v0)
    1270:	844f1484 	lh	t7,5252(v0)
    1274:	448d4000 	mtc1	t5,$f8
    1278:	448e8000 	mtc1	t6,$f16
    127c:	844a1486 	lh	t2,5254(v0)
    1280:	468042a0 	cvt.s.w	$f10,$f8
    1284:	448f4000 	mtc1	t7,$f8
    1288:	844b1488 	lh	t3,5256(v0)
    128c:	844c148a 	lh	t4,5258(v0)
    1290:	34038000 	li	v1,0x8000
    1294:	468084a0 	cvt.s.w	$f18,$f16
    1298:	46005082 	mul.s	$f2,$f10,$f0
    129c:	3c013f00 	lui	at,0x3f00
    12a0:	44813000 	mtc1	at,$f6
    12a4:	01432821 	addu	a1,t2,v1
    12a8:	01633021 	addu	a2,t3,v1
    12ac:	46009102 	mul.s	$f4,$f18,$f0
    12b0:	01833821 	addu	a3,t4,v1
    12b4:	00052c00 	sll	a1,a1,0x10
    12b8:	00063400 	sll	a2,a2,0x10
    12bc:	00073c00 	sll	a3,a3,0x10
    12c0:	00052c03 	sra	a1,a1,0x10
    12c4:	468042a0 	cvt.s.w	$f10,$f8
    12c8:	00063403 	sra	a2,a2,0x10
    12cc:	00073c03 	sra	a3,a3,0x10
    12d0:	46062300 	add.s	$f12,$f4,$f6
    12d4:	46005382 	mul.s	$f14,$f10,$f0
    12d8:	100000d7 	b	1638 <func_8097E824+0x484>
    12dc:	8fa20048 	lw	v0,72(sp)
    12e0:	24010003 	li	at,3
    12e4:	14a10022 	bne	a1,at,1370 <func_8097E824+0x1bc>
    12e8:	3c020000 	lui	v0,0x0
    12ec:	8c420000 	lw	v0,0(v0)
    12f0:	3c010000 	lui	at,0x0
    12f4:	c4200000 	lwc1	$f0,0(at)
    12f8:	8449148c 	lh	t1,5260(v0)
    12fc:	844a148e 	lh	t2,5262(v0)
    1300:	844b1490 	lh	t3,5264(v0)
    1304:	44898000 	mtc1	t1,$f16
    1308:	448a2000 	mtc1	t2,$f4
    130c:	84581492 	lh	t8,5266(v0)
    1310:	468084a0 	cvt.s.w	$f18,$f16
    1314:	448b8000 	mtc1	t3,$f16
    1318:	84591494 	lh	t9,5268(v0)
    131c:	84481496 	lh	t0,5270(v0)
    1320:	34038000 	li	v1,0x8000
    1324:	468021a0 	cvt.s.w	$f6,$f4
    1328:	46009082 	mul.s	$f2,$f18,$f0
    132c:	3c013f00 	lui	at,0x3f00
    1330:	44815000 	mtc1	at,$f10
    1334:	03032821 	addu	a1,t8,v1
    1338:	03233021 	addu	a2,t9,v1
    133c:	46003202 	mul.s	$f8,$f6,$f0
    1340:	01033821 	addu	a3,t0,v1
    1344:	00052c00 	sll	a1,a1,0x10
    1348:	00063400 	sll	a2,a2,0x10
    134c:	00073c00 	sll	a3,a3,0x10
    1350:	00052c03 	sra	a1,a1,0x10
    1354:	468084a0 	cvt.s.w	$f18,$f16
    1358:	00063403 	sra	a2,a2,0x10
    135c:	00073c03 	sra	a3,a3,0x10
    1360:	460a4300 	add.s	$f12,$f8,$f10
    1364:	46009382 	mul.s	$f14,$f18,$f0
    1368:	100000b3 	b	1638 <func_8097E824+0x484>
    136c:	8fa20048 	lw	v0,72(sp)
    1370:	24010004 	li	at,4
    1374:	14a10022 	bne	a1,at,1400 <func_8097E824+0x24c>
    1378:	3c020000 	lui	v0,0x0
    137c:	8c420000 	lw	v0,0(v0)
    1380:	3c010000 	lui	at,0x0
    1384:	c4200000 	lwc1	$f0,0(at)
    1388:	844f1498 	lh	t7,5272(v0)
    138c:	8458149a 	lh	t8,5274(v0)
    1390:	8459149c 	lh	t9,5276(v0)
    1394:	448f2000 	mtc1	t7,$f4
    1398:	44984000 	mtc1	t8,$f8
    139c:	844c149e 	lh	t4,5278(v0)
    13a0:	468021a0 	cvt.s.w	$f6,$f4
    13a4:	44992000 	mtc1	t9,$f4
    13a8:	844d14a0 	lh	t5,5280(v0)
    13ac:	844e14a2 	lh	t6,5282(v0)
    13b0:	34038000 	li	v1,0x8000
    13b4:	468042a0 	cvt.s.w	$f10,$f8
    13b8:	46003082 	mul.s	$f2,$f6,$f0
    13bc:	3c013f00 	lui	at,0x3f00
    13c0:	44819000 	mtc1	at,$f18
    13c4:	01832821 	addu	a1,t4,v1
    13c8:	01a33021 	addu	a2,t5,v1
    13cc:	46005402 	mul.s	$f16,$f10,$f0
    13d0:	01c33821 	addu	a3,t6,v1
    13d4:	00052c00 	sll	a1,a1,0x10
    13d8:	00063400 	sll	a2,a2,0x10
    13dc:	00073c00 	sll	a3,a3,0x10
    13e0:	00052c03 	sra	a1,a1,0x10
    13e4:	468021a0 	cvt.s.w	$f6,$f4
    13e8:	00063403 	sra	a2,a2,0x10
    13ec:	00073c03 	sra	a3,a3,0x10
    13f0:	46128300 	add.s	$f12,$f16,$f18
    13f4:	46003382 	mul.s	$f14,$f6,$f0
    13f8:	1000008f 	b	1638 <func_8097E824+0x484>
    13fc:	8fa20048 	lw	v0,72(sp)
    1400:	24010005 	li	at,5
    1404:	14a10022 	bne	a1,at,1490 <func_8097E824+0x2dc>
    1408:	3c020000 	lui	v0,0x0
    140c:	8c420000 	lw	v0,0(v0)
    1410:	3c010000 	lui	at,0x0
    1414:	c4200000 	lwc1	$f0,0(at)
    1418:	844b14a4 	lh	t3,5284(v0)
    141c:	844c14a6 	lh	t4,5286(v0)
    1420:	844d14a8 	lh	t5,5288(v0)
    1424:	448b4000 	mtc1	t3,$f8
    1428:	448c8000 	mtc1	t4,$f16
    142c:	844814aa 	lh	t0,5290(v0)
    1430:	468042a0 	cvt.s.w	$f10,$f8
    1434:	448d4000 	mtc1	t5,$f8
    1438:	844914ac 	lh	t1,5292(v0)
    143c:	844a14ae 	lh	t2,5294(v0)
    1440:	34038000 	li	v1,0x8000
    1444:	468084a0 	cvt.s.w	$f18,$f16
    1448:	46005082 	mul.s	$f2,$f10,$f0
    144c:	3c013f00 	lui	at,0x3f00
    1450:	44813000 	mtc1	at,$f6
    1454:	01032821 	addu	a1,t0,v1
    1458:	01233021 	addu	a2,t1,v1
    145c:	46009102 	mul.s	$f4,$f18,$f0
    1460:	01433821 	addu	a3,t2,v1
    1464:	00052c00 	sll	a1,a1,0x10
    1468:	00063400 	sll	a2,a2,0x10
    146c:	00073c00 	sll	a3,a3,0x10
    1470:	00052c03 	sra	a1,a1,0x10
    1474:	468042a0 	cvt.s.w	$f10,$f8
    1478:	00063403 	sra	a2,a2,0x10
    147c:	00073c03 	sra	a3,a3,0x10
    1480:	46062300 	add.s	$f12,$f4,$f6
    1484:	46005382 	mul.s	$f14,$f10,$f0
    1488:	1000006b 	b	1638 <func_8097E824+0x484>
    148c:	8fa20048 	lw	v0,72(sp)
    1490:	24010006 	li	at,6
    1494:	14a10022 	bne	a1,at,1520 <func_8097E824+0x36c>
    1498:	3c020000 	lui	v0,0x0
    149c:	8c420000 	lw	v0,0(v0)
    14a0:	3c010000 	lui	at,0x0
    14a4:	c4200000 	lwc1	$f0,0(at)
    14a8:	845914b0 	lh	t9,5296(v0)
    14ac:	844814b2 	lh	t0,5298(v0)
    14b0:	844914b4 	lh	t1,5300(v0)
    14b4:	44998000 	mtc1	t9,$f16
    14b8:	44882000 	mtc1	t0,$f4
    14bc:	844e14b6 	lh	t6,5302(v0)
    14c0:	468084a0 	cvt.s.w	$f18,$f16
    14c4:	44898000 	mtc1	t1,$f16
    14c8:	844f14b8 	lh	t7,5304(v0)
    14cc:	845814ba 	lh	t8,5306(v0)
    14d0:	34038000 	li	v1,0x8000
    14d4:	468021a0 	cvt.s.w	$f6,$f4
    14d8:	46009082 	mul.s	$f2,$f18,$f0
    14dc:	3c013f00 	lui	at,0x3f00
    14e0:	44815000 	mtc1	at,$f10
    14e4:	01c32821 	addu	a1,t6,v1
    14e8:	01e33021 	addu	a2,t7,v1
    14ec:	46003202 	mul.s	$f8,$f6,$f0
    14f0:	03033821 	addu	a3,t8,v1
    14f4:	00052c00 	sll	a1,a1,0x10
    14f8:	00063400 	sll	a2,a2,0x10
    14fc:	00073c00 	sll	a3,a3,0x10
    1500:	00052c03 	sra	a1,a1,0x10
    1504:	468084a0 	cvt.s.w	$f18,$f16
    1508:	00063403 	sra	a2,a2,0x10
    150c:	00073c03 	sra	a3,a3,0x10
    1510:	460a4300 	add.s	$f12,$f8,$f10
    1514:	46009382 	mul.s	$f14,$f18,$f0
    1518:	10000047 	b	1638 <func_8097E824+0x484>
    151c:	8fa20048 	lw	v0,72(sp)
    1520:	24010007 	li	at,7
    1524:	14a10023 	bne	a1,at,15b4 <func_8097E824+0x400>
    1528:	3c020000 	lui	v0,0x0
    152c:	3c020000 	lui	v0,0x0
    1530:	8c420000 	lw	v0,0(v0)
    1534:	3c010000 	lui	at,0x0
    1538:	c4200000 	lwc1	$f0,0(at)
    153c:	844d14f8 	lh	t5,5368(v0)
    1540:	844e14fa 	lh	t6,5370(v0)
    1544:	844f14fc 	lh	t7,5372(v0)
    1548:	448d2000 	mtc1	t5,$f4
    154c:	448e4000 	mtc1	t6,$f8
    1550:	844a14fe 	lh	t2,5374(v0)
    1554:	468021a0 	cvt.s.w	$f6,$f4
    1558:	448f2000 	mtc1	t7,$f4
    155c:	844b1500 	lh	t3,5376(v0)
    1560:	844c1502 	lh	t4,5378(v0)
    1564:	34038000 	li	v1,0x8000
    1568:	468042a0 	cvt.s.w	$f10,$f8
    156c:	46003082 	mul.s	$f2,$f6,$f0
    1570:	3c013f00 	lui	at,0x3f00
    1574:	44819000 	mtc1	at,$f18
    1578:	01432821 	addu	a1,t2,v1
    157c:	01633021 	addu	a2,t3,v1
    1580:	46005402 	mul.s	$f16,$f10,$f0
    1584:	01833821 	addu	a3,t4,v1
    1588:	00052c00 	sll	a1,a1,0x10
    158c:	00063400 	sll	a2,a2,0x10
    1590:	00073c00 	sll	a3,a3,0x10
    1594:	00052c03 	sra	a1,a1,0x10
    1598:	468021a0 	cvt.s.w	$f6,$f4
    159c:	00063403 	sra	a2,a2,0x10
    15a0:	00073c03 	sra	a3,a3,0x10
    15a4:	46128300 	add.s	$f12,$f16,$f18
    15a8:	46003382 	mul.s	$f14,$f6,$f0
    15ac:	10000022 	b	1638 <func_8097E824+0x484>
    15b0:	8fa20048 	lw	v0,72(sp)
    15b4:	8c420000 	lw	v0,0(v0)
    15b8:	3c010000 	lui	at,0x0
    15bc:	c4200000 	lwc1	$f0,0(at)
    15c0:	84491504 	lh	t1,5380(v0)
    15c4:	844a1506 	lh	t2,5382(v0)
    15c8:	844b1508 	lh	t3,5384(v0)
    15cc:	44894000 	mtc1	t1,$f8
    15d0:	448a8000 	mtc1	t2,$f16
    15d4:	8458150a 	lh	t8,5386(v0)
    15d8:	468042a0 	cvt.s.w	$f10,$f8
    15dc:	448b4000 	mtc1	t3,$f8
    15e0:	8459150c 	lh	t9,5388(v0)
    15e4:	8448150e 	lh	t0,5390(v0)
    15e8:	34038000 	li	v1,0x8000
    15ec:	468084a0 	cvt.s.w	$f18,$f16
    15f0:	46005082 	mul.s	$f2,$f10,$f0
    15f4:	3c013f00 	lui	at,0x3f00
    15f8:	44813000 	mtc1	at,$f6
    15fc:	03032821 	addu	a1,t8,v1
    1600:	03233021 	addu	a2,t9,v1
    1604:	46009102 	mul.s	$f4,$f18,$f0
    1608:	01033821 	addu	a3,t0,v1
    160c:	00052c00 	sll	a1,a1,0x10
    1610:	00063400 	sll	a2,a2,0x10
    1614:	00073c00 	sll	a3,a3,0x10
    1618:	00052c03 	sra	a1,a1,0x10
    161c:	468042a0 	cvt.s.w	$f10,$f8
    1620:	00063403 	sra	a2,a2,0x10
    1624:	00073c03 	sra	a3,a3,0x10
    1628:	46062300 	add.s	$f12,$f4,$f6
    162c:	46005382 	mul.s	$f14,$f10,$f0
    1630:	00000000 	nop
    1634:	8fa20048 	lw	v0,72(sp)
    1638:	844c016c 	lh	t4,364(v0)
    163c:	844e016e 	lh	t6,366(v0)
    1640:	84580170 	lh	t8,368(v0)
    1644:	01856821 	addu	t5,t4,a1
    1648:	a44d016c 	sh	t5,364(v0)
    164c:	01c67821 	addu	t7,t6,a2
    1650:	0307c821 	addu	t9,t8,a3
    1654:	a44f016e 	sh	t7,366(v0)
    1658:	a4590170 	sh	t9,368(v0)
    165c:	8444016c 	lh	a0,364(v0)
    1660:	2442016c 	addiu	v0,v0,364
    1664:	afa20018 	sw	v0,24(sp)
    1668:	e7ae0024 	swc1	$f14,36(sp)
    166c:	e7ac0020 	swc1	$f12,32(sp)
    1670:	0c000000 	jal	0 <DemoGt_Destroy>
    1674:	e7a2001c 	swc1	$f2,28(sp)
    1678:	c7a2001c 	lwc1	$f2,28(sp)
    167c:	8fa20018 	lw	v0,24(sp)
    1680:	46020402 	mul.s	$f16,$f0,$f2
    1684:	e7b00028 	swc1	$f16,40(sp)
    1688:	0c000000 	jal	0 <DemoGt_Destroy>
    168c:	84440002 	lh	a0,2(v0)
    1690:	c7ac0020 	lwc1	$f12,32(sp)
    1694:	8fa20018 	lw	v0,24(sp)
    1698:	460c0482 	mul.s	$f18,$f0,$f12
    169c:	e7b2002c 	swc1	$f18,44(sp)
    16a0:	0c000000 	jal	0 <DemoGt_Destroy>
    16a4:	84440004 	lh	a0,4(v0)
    16a8:	8fa20048 	lw	v0,72(sp)
    16ac:	c7a60028 	lwc1	$f6,40(sp)
    16b0:	c7ae0024 	lwc1	$f14,36(sp)
    16b4:	c4440024 	lwc1	$f4,36(v0)
    16b8:	c44a0028 	lwc1	$f10,40(v0)
    16bc:	24420024 	addiu	v0,v0,36
    16c0:	46062200 	add.s	$f8,$f4,$f6
    16c4:	460e0182 	mul.s	$f6,$f0,$f14
    16c8:	c4440008 	lwc1	$f4,8(v0)
    16cc:	e4480000 	swc1	$f8,0(v0)
    16d0:	c7b0002c 	lwc1	$f16,44(sp)
    16d4:	46062200 	add.s	$f8,$f4,$f6
    16d8:	46105480 	add.s	$f18,$f10,$f16
    16dc:	e4480008 	swc1	$f8,8(v0)
    16e0:	e4520004 	swc1	$f18,4(v0)
    16e4:	8fbf0014 	lw	ra,20(sp)
    16e8:	27bd0048 	addiu	sp,sp,72
    16ec:	03e00008 	jr	ra
    16f0:	00000000 	nop

000016f4 <func_8097ED64>:
    16f4:	27bdffe8 	addiu	sp,sp,-24
    16f8:	afbf0014 	sw	ra,20(sp)
    16fc:	afa40018 	sw	a0,24(sp)
    1700:	0c000000 	jal	0 <DemoGt_Destroy>
    1704:	afa60020 	sw	a2,32(sp)
    1708:	8fa40018 	lw	a0,24(sp)
    170c:	0c000000 	jal	0 <DemoGt_Destroy>
    1710:	8fa50020 	lw	a1,32(sp)
    1714:	8fbf0014 	lw	ra,20(sp)
    1718:	27bd0018 	addiu	sp,sp,24
    171c:	03e00008 	jr	ra
    1720:	00000000 	nop

00001724 <func_8097ED94>:
    1724:	3c0e0000 	lui	t6,0x0
    1728:	8dce0000 	lw	t6,0(t6)
    172c:	3c180000 	lui	t8,0x0
    1730:	85cf1458 	lh	t7,5208(t6)
    1734:	11e00003 	beqz	t7,1744 <func_8097ED94+0x20>
    1738:	00000000 	nop
    173c:	03e00008 	jr	ra
    1740:	24020001 	li	v0,1
    1744:	8f181360 	lw	t8,4960(t8)
    1748:	24020001 	li	v0,1
    174c:	2b010004 	slti	at,t8,4
    1750:	10200003 	beqz	at,1760 <func_8097ED94+0x3c>
    1754:	00000000 	nop
    1758:	03e00008 	jr	ra
    175c:	00001025 	move	v0,zero
    1760:	03e00008 	jr	ra
    1764:	00000000 	nop

00001768 <func_8097EDD8>:
    1768:	27bdffd8 	addiu	sp,sp,-40
    176c:	afbf0014 	sw	ra,20(sp)
    1770:	afa40028 	sw	a0,40(sp)
    1774:	afa5002c 	sw	a1,44(sp)
    1778:	10c00012 	beqz	a2,17c4 <func_8097EDD8+0x5c>
    177c:	afa60030 	sw	a2,48(sp)
    1780:	3c050000 	lui	a1,0x0
    1784:	0c000000 	jal	0 <DemoGt_Destroy>
    1788:	24a50000 	addiu	a1,a1,0
    178c:	8fa40028 	lw	a0,40(sp)
    1790:	0c000000 	jal	0 <DemoGt_Destroy>
    1794:	00002825 	move	a1,zero
    1798:	afa00018 	sw	zero,24(sp)
    179c:	8fa40030 	lw	a0,48(sp)
    17a0:	0c000000 	jal	0 <DemoGt_Destroy>
    17a4:	27a50018 	addiu	a1,sp,24
    17a8:	8fa4002c 	lw	a0,44(sp)
    17ac:	8fa60028 	lw	a2,40(sp)
    17b0:	8fa70018 	lw	a3,24(sp)
    17b4:	0c000000 	jal	0 <DemoGt_Destroy>
    17b8:	24850810 	addiu	a1,a0,2064
    17bc:	8faf0028 	lw	t7,40(sp)
    17c0:	ade2014c 	sw	v0,332(t7)
    17c4:	8fbf0014 	lw	ra,20(sp)
    17c8:	27bd0028 	addiu	sp,sp,40
    17cc:	03e00008 	jr	ra
    17d0:	00000000 	nop

000017d4 <func_8097EE44>:
    17d4:	27bdffe8 	addiu	sp,sp,-24
    17d8:	afbf0014 	sw	ra,20(sp)
    17dc:	afa5001c 	sw	a1,28(sp)
    17e0:	afa60020 	sw	a2,32(sp)
    17e4:	afa70024 	sw	a3,36(sp)
    17e8:	0c000000 	jal	0 <DemoGt_Destroy>
    17ec:	afa40018 	sw	a0,24(sp)
    17f0:	1040000a 	beqz	v0,181c <func_8097EE44+0x48>
    17f4:	8fa40018 	lw	a0,24(sp)
    17f8:	8fae0020 	lw	t6,32(sp)
    17fc:	ac8e0164 	sw	t6,356(a0)
    1800:	8faf0024 	lw	t7,36(sp)
    1804:	ac8f0168 	sw	t7,360(a0)
    1808:	8fa60028 	lw	a2,40(sp)
    180c:	0c000000 	jal	0 <DemoGt_Destroy>
    1810:	8fa5001c 	lw	a1,28(sp)
    1814:	10000004 	b	1828 <func_8097EE44+0x54>
    1818:	24020001 	li	v0,1
    181c:	0c000000 	jal	0 <DemoGt_Destroy>
    1820:	00000000 	nop
    1824:	00001025 	move	v0,zero
    1828:	8fbf0014 	lw	ra,20(sp)
    182c:	27bd0018 	addiu	sp,sp,24
    1830:	03e00008 	jr	ra
    1834:	00000000 	nop

00001838 <func_8097EEA8>:
    1838:	27bdffe0 	addiu	sp,sp,-32
    183c:	afbf001c 	sw	ra,28(sp)
    1840:	3c014120 	lui	at,0x4120
    1844:	44810000 	mtc1	at,$f0
    1848:	c4840050 	lwc1	$f4,80(a0)
    184c:	c4880054 	lwc1	$f8,84(a0)
    1850:	c4900058 	lwc1	$f16,88(a0)
    1854:	46002182 	mul.s	$f6,$f4,$f0
    1858:	00003025 	move	a2,zero
    185c:	24070001 	li	a3,1
    1860:	46004282 	mul.s	$f10,$f8,$f0
    1864:	00000000 	nop
    1868:	46008482 	mul.s	$f18,$f16,$f0
    186c:	e4860050 	swc1	$f6,80(a0)
    1870:	e48a0054 	swc1	$f10,84(a0)
    1874:	e4920058 	swc1	$f18,88(a0)
    1878:	0c000000 	jal	0 <DemoGt_Destroy>
    187c:	afa00010 	sw	zero,16(sp)
    1880:	8fbf001c 	lw	ra,28(sp)
    1884:	27bd0020 	addiu	sp,sp,32
    1888:	03e00008 	jr	ra
    188c:	00000000 	nop

00001890 <func_8097EF00>:
    1890:	27bdffe8 	addiu	sp,sp,-24
    1894:	afbf0014 	sw	ra,20(sp)
    1898:	afa40018 	sw	a0,24(sp)
    189c:	94a21d74 	lhu	v0,7540(a1)
    18a0:	2401020f 	li	at,527
    18a4:	54410004 	bnel	v0,at,18b8 <func_8097EF00+0x28>
    18a8:	8fbf0014 	lw	ra,20(sp)
    18ac:	0c000000 	jal	0 <DemoGt_Destroy>
    18b0:	2404000d 	li	a0,13
    18b4:	8fbf0014 	lw	ra,20(sp)
    18b8:	27bd0018 	addiu	sp,sp,24
    18bc:	03e00008 	jr	ra
    18c0:	00000000 	nop

000018c4 <func_8097EF34>:
    18c4:	afa40000 	sw	a0,0(sp)
    18c8:	03e00008 	jr	ra
    18cc:	afa50004 	sw	a1,4(sp)

000018d0 <func_8097EF40>:
    18d0:	27bdff98 	addiu	sp,sp,-104
    18d4:	3c0f0000 	lui	t7,0x0
    18d8:	afbf0024 	sw	ra,36(sp)
    18dc:	afa40068 	sw	a0,104(sp)
    18e0:	afa5006c 	sw	a1,108(sp)
    18e4:	25ef0000 	addiu	t7,t7,0
    18e8:	8df90000 	lw	t9,0(t7)
    18ec:	27a60040 	addiu	a2,sp,64
    18f0:	94a21d74 	lhu	v0,7540(a1)
    18f4:	acd90000 	sw	t9,0(a2)
    18f8:	8df80004 	lw	t8,4(t7)
    18fc:	3c080000 	lui	t0,0x0
    1900:	25080000 	addiu	t0,t0,0
    1904:	acd80004 	sw	t8,4(a2)
    1908:	8df90008 	lw	t9,8(t7)
    190c:	27a70034 	addiu	a3,sp,52
    1910:	3c0b0000 	lui	t3,0x0
    1914:	acd90008 	sw	t9,8(a2)
    1918:	8d0a0000 	lw	t2,0(t0)
    191c:	24010014 	li	at,20
    1920:	27a5004c 	addiu	a1,sp,76
    1924:	acea0000 	sw	t2,0(a3)
    1928:	8d090004 	lw	t1,4(t0)
    192c:	ace90004 	sw	t1,4(a3)
    1930:	8d0a0008 	lw	t2,8(t0)
    1934:	acea0008 	sw	t2,8(a3)
    1938:	8d6b0000 	lw	t3,0(t3)
    193c:	856c1456 	lh	t4,5206(t3)
    1940:	11810003 	beq	t4,at,1950 <func_8097EF40+0x80>
    1944:	240100dc 	li	at,220
    1948:	54410039 	bnel	v0,at,1a30 <func_8097EF40+0x160>
    194c:	8fbf0024 	lw	ra,36(sp)
    1950:	8fa20068 	lw	v0,104(sp)
    1954:	3c014380 	lui	at,0x4380
    1958:	44813000 	mtc1	at,$f6
    195c:	c4440024 	lwc1	$f4,36(v0)
    1960:	3c010000 	lui	at,0x0
    1964:	c4300000 	lwc1	$f16,0(at)
    1968:	46062200 	add.s	$f8,$f4,$f6
    196c:	3c0142a4 	lui	at,0x42a4
    1970:	44813000 	mtc1	at,$f6
    1974:	3c010000 	lui	at,0x0
    1978:	e7a8004c 	swc1	$f8,76(sp)
    197c:	c44a0028 	lwc1	$f10,40(v0)
    1980:	240d000f 	li	t5,15
    1984:	240e001e 	li	t6,30
    1988:	46105480 	add.s	$f18,$f10,$f16
    198c:	c42a0000 	lwc1	$f10,0(at)
    1990:	24420024 	addiu	v0,v0,36
    1994:	8fa4006c 	lw	a0,108(sp)
    1998:	e7b20050 	swc1	$f18,80(sp)
    199c:	c4440008 	lwc1	$f4,8(v0)
    19a0:	afa20028 	sw	v0,40(sp)
    19a4:	afae0018 	sw	t6,24(sp)
    19a8:	46062200 	add.s	$f8,$f4,$f6
    19ac:	afad0014 	sw	t5,20(sp)
    19b0:	e7aa0010 	swc1	$f10,16(sp)
    19b4:	0c000000 	jal	0 <DemoGt_Destroy>
    19b8:	e7a80054 	swc1	$f8,84(sp)
    19bc:	8fa20028 	lw	v0,40(sp)
    19c0:	3c014380 	lui	at,0x4380
    19c4:	44819000 	mtc1	at,$f18
    19c8:	c4500000 	lwc1	$f16,0(v0)
    19cc:	3c010000 	lui	at,0x0
    19d0:	c4280000 	lwc1	$f8,0(at)
    19d4:	46128100 	add.s	$f4,$f16,$f18
    19d8:	3c014270 	lui	at,0x4270
    19dc:	44819000 	mtc1	at,$f18
    19e0:	3c010000 	lui	at,0x0
    19e4:	e7a4004c 	swc1	$f4,76(sp)
    19e8:	c4460004 	lwc1	$f6,4(v0)
    19ec:	240f000f 	li	t7,15
    19f0:	2418001e 	li	t8,30
    19f4:	46083280 	add.s	$f10,$f6,$f8
    19f8:	c4260000 	lwc1	$f6,0(at)
    19fc:	8fa4006c 	lw	a0,108(sp)
    1a00:	27a5004c 	addiu	a1,sp,76
    1a04:	e7aa0050 	swc1	$f10,80(sp)
    1a08:	c4500008 	lwc1	$f16,8(v0)
    1a0c:	afb80018 	sw	t8,24(sp)
    1a10:	afaf0014 	sw	t7,20(sp)
    1a14:	46128101 	sub.s	$f4,$f16,$f18
    1a18:	27a60040 	addiu	a2,sp,64
    1a1c:	27a70034 	addiu	a3,sp,52
    1a20:	e7a60010 	swc1	$f6,16(sp)
    1a24:	0c000000 	jal	0 <DemoGt_Destroy>
    1a28:	e7a40054 	swc1	$f4,84(sp)
    1a2c:	8fbf0024 	lw	ra,36(sp)
    1a30:	27bd0068 	addiu	sp,sp,104
    1a34:	03e00008 	jr	ra
    1a38:	00000000 	nop

00001a3c <func_8097F0AC>:
    1a3c:	27bdffb0 	addiu	sp,sp,-80
    1a40:	afbf0014 	sw	ra,20(sp)
    1a44:	afa50054 	sw	a1,84(sp)
    1a48:	94a31d74 	lhu	v1,7540(a1)
    1a4c:	2401008c 	li	at,140
    1a50:	00803825 	move	a3,a0
    1a54:	10610005 	beq	v1,at,1a6c <func_8097F0AC+0x30>
    1a58:	3c0f0000 	lui	t7,0x0
    1a5c:	8def0000 	lw	t7,0(t7)
    1a60:	24010013 	li	at,19
    1a64:	85f81456 	lh	t8,5206(t7)
    1a68:	17010017 	bne	t8,at,1ac8 <func_8097F0AC+0x8c>
    1a6c:	3c014382 	lui	at,0x4382
    1a70:	44813000 	mtc1	at,$f6
    1a74:	c4e40024 	lwc1	$f4,36(a3)
    1a78:	3c0143aa 	lui	at,0x43aa
    1a7c:	44818000 	mtc1	at,$f16
    1a80:	46062200 	add.s	$f8,$f4,$f6
    1a84:	3c014234 	lui	at,0x4234
    1a88:	44813000 	mtc1	at,$f6
    1a8c:	8fa40054 	lw	a0,84(sp)
    1a90:	e7a80038 	swc1	$f8,56(sp)
    1a94:	c4ea0028 	lwc1	$f10,40(a3)
    1a98:	27a50038 	addiu	a1,sp,56
    1a9c:	3c064000 	lui	a2,0x4000
    1aa0:	46105480 	add.s	$f18,$f10,$f16
    1aa4:	e7b2003c 	swc1	$f18,60(sp)
    1aa8:	c4e4002c 	lwc1	$f4,44(a3)
    1aac:	afa70050 	sw	a3,80(sp)
    1ab0:	afa30018 	sw	v1,24(sp)
    1ab4:	46062200 	add.s	$f8,$f4,$f6
    1ab8:	0c000000 	jal	0 <DemoGt_Destroy>
    1abc:	e7a80040 	swc1	$f8,64(sp)
    1ac0:	8fa30018 	lw	v1,24(sp)
    1ac4:	8fa70050 	lw	a3,80(sp)
    1ac8:	240100b0 	li	at,176
    1acc:	14610013 	bne	v1,at,1b1c <func_8097F0AC+0xe0>
    1ad0:	3c014382 	lui	at,0x4382
    1ad4:	44818000 	mtc1	at,$f16
    1ad8:	c4ea0024 	lwc1	$f10,36(a3)
    1adc:	3c014452 	lui	at,0x4452
    1ae0:	44813000 	mtc1	at,$f6
    1ae4:	46105480 	add.s	$f18,$f10,$f16
    1ae8:	3c014234 	lui	at,0x4234
    1aec:	44818000 	mtc1	at,$f16
    1af0:	8fa40054 	lw	a0,84(sp)
    1af4:	e7b20024 	swc1	$f18,36(sp)
    1af8:	c4e40028 	lwc1	$f4,40(a3)
    1afc:	27a50024 	addiu	a1,sp,36
    1b00:	3c064000 	lui	a2,0x4000
    1b04:	46062200 	add.s	$f8,$f4,$f6
    1b08:	e7a80028 	swc1	$f8,40(sp)
    1b0c:	c4ea002c 	lwc1	$f10,44(a3)
    1b10:	46105480 	add.s	$f18,$f10,$f16
    1b14:	0c000000 	jal	0 <DemoGt_Destroy>
    1b18:	e7b2002c 	swc1	$f18,44(sp)
    1b1c:	8fbf0014 	lw	ra,20(sp)
    1b20:	27bd0050 	addiu	sp,sp,80
    1b24:	03e00008 	jr	ra
    1b28:	00000000 	nop

00001b2c <func_8097F19C>:
    1b2c:	27bdffe8 	addiu	sp,sp,-24
    1b30:	afbf0014 	sw	ra,20(sp)
    1b34:	afa40018 	sw	a0,24(sp)
    1b38:	0c000000 	jal	0 <DemoGt_Destroy>
    1b3c:	afa5001c 	sw	a1,28(sp)
    1b40:	8fa40018 	lw	a0,24(sp)
    1b44:	0c000000 	jal	0 <DemoGt_Destroy>
    1b48:	8fa5001c 	lw	a1,28(sp)
    1b4c:	8fa40018 	lw	a0,24(sp)
    1b50:	0c000000 	jal	0 <DemoGt_Destroy>
    1b54:	8fa5001c 	lw	a1,28(sp)
    1b58:	8fbf0014 	lw	ra,20(sp)
    1b5c:	27bd0018 	addiu	sp,sp,24
    1b60:	03e00008 	jr	ra
    1b64:	00000000 	nop

00001b68 <func_8097F1D8>:
    1b68:	3c060000 	lui	a2,0x0
    1b6c:	24c60000 	addiu	a2,a2,0
    1b70:	8cc30000 	lw	v1,0(a2)
    1b74:	84820172 	lh	v0,370(a0)
    1b78:	3c014120 	lui	at,0x4120
    1b7c:	846e14e4 	lh	t6,5348(v1)
    1b80:	846f14d4 	lh	t7,5332(v1)
    1b84:	44822000 	mtc1	v0,$f4
    1b88:	448e3000 	mtc1	t6,$f6
    1b8c:	448f9000 	mtc1	t7,$f18
    1b90:	46802020 	cvt.s.w	$f0,$f4
    1b94:	44815000 	mtc1	at,$f10
    1b98:	3c010000 	lui	at,0x0
    1b9c:	46803220 	cvt.s.w	$f8,$f6
    1ba0:	c4260000 	lwc1	$f6,0(at)
    1ba4:	3c010000 	lui	at,0x0
    1ba8:	46809120 	cvt.s.w	$f4,$f18
    1bac:	460a4400 	add.s	$f16,$f8,$f10
    1bb0:	46062202 	mul.s	$f8,$f4,$f6
    1bb4:	c42a0000 	lwc1	$f10,0(at)
    1bb8:	460a4480 	add.s	$f18,$f8,$f10
    1bbc:	46120102 	mul.s	$f4,$f0,$f18
    1bc0:	46048180 	add.s	$f6,$f16,$f4
    1bc4:	4600320d 	trunc.w.s	$f8,$f6
    1bc8:	44194000 	mfc1	t9,$f8
    1bcc:	00000000 	nop
    1bd0:	a4990174 	sh	t9,372(a0)
    1bd4:	84880174 	lh	t0,372(a0)
    1bd8:	00484821 	addu	t1,v0,t0
    1bdc:	a4890172 	sh	t1,370(a0)
    1be0:	8cca0000 	lw	t2,0(a2)
    1be4:	848d0172 	lh	t5,370(a0)
    1be8:	854514e6 	lh	a1,5350(t2)
    1bec:	24a50250 	addiu	a1,a1,592
    1bf0:	00055c00 	sll	t3,a1,0x10
    1bf4:	000b6403 	sra	t4,t3,0x10
    1bf8:	018d082a 	slt	at,t4,t5
    1bfc:	10200002 	beqz	at,1c08 <func_8097F1D8+0xa0>
    1c00:	00000000 	nop
    1c04:	a4850172 	sh	a1,370(a0)
    1c08:	03e00008 	jr	ra
    1c0c:	00000000 	nop

00001c10 <func_8097F280>:
    1c10:	27bdffd8 	addiu	sp,sp,-40
    1c14:	afbf0024 	sw	ra,36(sp)
    1c18:	afb00020 	sw	s0,32(sp)
    1c1c:	94a61d74 	lhu	a2,7540(a1)
    1c20:	00808025 	move	s0,a0
    1c24:	24050064 	li	a1,100
    1c28:	28c100a0 	slti	at,a2,160
    1c2c:	10200014 	beqz	at,1c80 <func_8097F280+0x70>
    1c30:	00c01025 	move	v0,a2
    1c34:	24820178 	addiu	v0,a0,376
    1c38:	240600ff 	li	a2,255
    1c3c:	240e00c8 	li	t6,200
    1c40:	ac450000 	sw	a1,0(v0)
    1c44:	ac460004 	sw	a2,4(v0)
    1c48:	ac4e0008 	sw	t6,8(v0)
    1c4c:	24830188 	addiu	v1,a0,392
    1c50:	240f0078 	li	t7,120
    1c54:	ac660000 	sw	a2,0(v1)
    1c58:	ac6f0004 	sw	t7,4(v1)
    1c5c:	ac650008 	sw	a1,8(v1)
    1c60:	8c980198 	lw	t8,408(a0)
    1c64:	8c88019c 	lw	t0,412(a0)
    1c68:	24840198 	addiu	a0,a0,408
    1c6c:	27190001 	addiu	t9,t8,1
    1c70:	2509ffff 	addiu	t1,t0,-1
    1c74:	ac990000 	sw	t9,0(a0)
    1c78:	1000003b 	b	1d68 <func_8097F280+0x158>
    1c7c:	ac890004 	sw	t1,4(a0)
    1c80:	284100aa 	slti	at,v0,170
    1c84:	10200030 	beqz	at,1d48 <func_8097F280+0x138>
    1c88:	24050064 	li	a1,100
    1c8c:	240400aa 	li	a0,170
    1c90:	240500a0 	li	a1,160
    1c94:	00003825 	move	a3,zero
    1c98:	0c000000 	jal	0 <DemoGt_Destroy>
    1c9c:	afa00010 	sw	zero,16(sp)
    1ca0:	3c01c27c 	lui	at,0xc27c
    1ca4:	44812000 	mtc1	at,$f4
    1ca8:	3c014323 	lui	at,0x4323
    1cac:	44814000 	mtc1	at,$f8
    1cb0:	46040182 	mul.s	$f6,$f0,$f4
    1cb4:	3c01c31b 	lui	at,0xc31b
    1cb8:	44819000 	mtc1	at,$f18
    1cbc:	3c01437f 	lui	at,0x437f
    1cc0:	26020178 	addiu	v0,s0,376
    1cc4:	46120102 	mul.s	$f4,$f0,$f18
    1cc8:	26030188 	addiu	v1,s0,392
    1ccc:	46083280 	add.s	$f10,$f6,$f8
    1cd0:	44813000 	mtc1	at,$f6
    1cd4:	3c01c2c8 	lui	at,0xc2c8
    1cd8:	24050064 	li	a1,100
    1cdc:	4600540d 	trunc.w.s	$f16,$f10
    1ce0:	46062200 	add.s	$f8,$f4,$f6
    1ce4:	440b8000 	mfc1	t3,$f16
    1ce8:	44818000 	mtc1	at,$f16
    1cec:	3c014348 	lui	at,0x4348
    1cf0:	4600428d 	trunc.w.s	$f10,$f8
    1cf4:	44812000 	mtc1	at,$f4
    1cf8:	46100482 	mul.s	$f18,$f0,$f16
    1cfc:	3c01c1a0 	lui	at,0xc1a0
    1d00:	44045000 	mfc1	a0,$f10
    1d04:	44815000 	mtc1	at,$f10
    1d08:	3c0142f0 	lui	at,0x42f0
    1d0c:	ac4b0000 	sw	t3,0(v0)
    1d10:	460a0402 	mul.s	$f16,$f0,$f10
    1d14:	46049180 	add.s	$f6,$f18,$f4
    1d18:	44819000 	mtc1	at,$f18
    1d1c:	ac440004 	sw	a0,4(v0)
    1d20:	4600320d 	trunc.w.s	$f8,$f6
    1d24:	46128100 	add.s	$f4,$f16,$f18
    1d28:	440e4000 	mfc1	t6,$f8
    1d2c:	4600218d 	trunc.w.s	$f6,$f4
    1d30:	ac4e0008 	sw	t6,8(v0)
    1d34:	ac650008 	sw	a1,8(v1)
    1d38:	ac640000 	sw	a0,0(v1)
    1d3c:	44183000 	mfc1	t8,$f6
    1d40:	10000009 	b	1d68 <func_8097F280+0x158>
    1d44:	ac780004 	sw	t8,4(v1)
    1d48:	26020178 	addiu	v0,s0,376
    1d4c:	ac450000 	sw	a1,0(v0)
    1d50:	ac450004 	sw	a1,4(v0)
    1d54:	ac450008 	sw	a1,8(v0)
    1d58:	26030188 	addiu	v1,s0,392
    1d5c:	ac650000 	sw	a1,0(v1)
    1d60:	ac650004 	sw	a1,4(v1)
    1d64:	ac650008 	sw	a1,8(v1)
    1d68:	8fbf0024 	lw	ra,36(sp)
    1d6c:	8fb00020 	lw	s0,32(sp)
    1d70:	27bd0028 	addiu	sp,sp,40
    1d74:	03e00008 	jr	ra
    1d78:	00000000 	nop

00001d7c <func_8097F3EC>:
    1d7c:	27bdffe8 	addiu	sp,sp,-24
    1d80:	afa40018 	sw	a0,24(sp)
    1d84:	afbf0014 	sw	ra,20(sp)
    1d88:	00a02025 	move	a0,a1
    1d8c:	24050002 	li	a1,2
    1d90:	0c000000 	jal	0 <DemoGt_Destroy>
    1d94:	24060001 	li	a2,1
    1d98:	10400003 	beqz	v0,1da8 <func_8097F3EC+0x2c>
    1d9c:	8faf0018 	lw	t7,24(sp)
    1da0:	240e0008 	li	t6,8
    1da4:	adee0164 	sw	t6,356(t7)
    1da8:	8fbf0014 	lw	ra,20(sp)
    1dac:	27bd0018 	addiu	sp,sp,24
    1db0:	03e00008 	jr	ra
    1db4:	00000000 	nop

00001db8 <func_8097F428>:
    1db8:	27bdffe0 	addiu	sp,sp,-32
    1dbc:	afbf001c 	sw	ra,28(sp)
    1dc0:	afb10018 	sw	s1,24(sp)
    1dc4:	afb00014 	sw	s0,20(sp)
    1dc8:	00808025 	move	s0,a0
    1dcc:	0c000000 	jal	0 <DemoGt_Destroy>
    1dd0:	00a08825 	move	s1,a1
    1dd4:	02002025 	move	a0,s0
    1dd8:	0c000000 	jal	0 <DemoGt_Destroy>
    1ddc:	24050001 	li	a1,1
    1de0:	02002025 	move	a0,s0
    1de4:	0c000000 	jal	0 <DemoGt_Destroy>
    1de8:	02202825 	move	a1,s1
    1dec:	02002025 	move	a0,s0
    1df0:	0c000000 	jal	0 <DemoGt_Destroy>
    1df4:	02202825 	move	a1,s1
    1df8:	0c000000 	jal	0 <DemoGt_Destroy>
    1dfc:	00000000 	nop
    1e00:	0c000000 	jal	0 <DemoGt_Destroy>
    1e04:	02202025 	move	a0,s1
    1e08:	02002025 	move	a0,s0
    1e0c:	0c000000 	jal	0 <DemoGt_Destroy>
    1e10:	02202825 	move	a1,s1
    1e14:	8fbf001c 	lw	ra,28(sp)
    1e18:	8fb00014 	lw	s0,20(sp)
    1e1c:	8fb10018 	lw	s1,24(sp)
    1e20:	03e00008 	jr	ra
    1e24:	27bd0020 	addiu	sp,sp,32

00001e28 <func_8097F498>:
    1e28:	27bdffe0 	addiu	sp,sp,-32
    1e2c:	afbf001c 	sw	ra,28(sp)
    1e30:	afb10018 	sw	s1,24(sp)
    1e34:	afb00014 	sw	s0,20(sp)
    1e38:	00808025 	move	s0,a0
    1e3c:	0c000000 	jal	0 <DemoGt_Destroy>
    1e40:	00a08825 	move	s1,a1
    1e44:	0c000000 	jal	0 <DemoGt_Destroy>
    1e48:	02002025 	move	a0,s0
    1e4c:	02002025 	move	a0,s0
    1e50:	02202825 	move	a1,s1
    1e54:	0c000000 	jal	0 <DemoGt_Destroy>
    1e58:	24060001 	li	a2,1
    1e5c:	02002025 	move	a0,s0
    1e60:	0c000000 	jal	0 <DemoGt_Destroy>
    1e64:	02202825 	move	a1,s1
    1e68:	0c000000 	jal	0 <DemoGt_Destroy>
    1e6c:	00000000 	nop
    1e70:	0c000000 	jal	0 <DemoGt_Destroy>
    1e74:	02202025 	move	a0,s1
    1e78:	02002025 	move	a0,s0
    1e7c:	0c000000 	jal	0 <DemoGt_Destroy>
    1e80:	02202825 	move	a1,s1
    1e84:	8fbf001c 	lw	ra,28(sp)
    1e88:	8fb00014 	lw	s0,20(sp)
    1e8c:	8fb10018 	lw	s1,24(sp)
    1e90:	03e00008 	jr	ra
    1e94:	27bd0020 	addiu	sp,sp,32

00001e98 <func_8097F508>:
    1e98:	27bdff28 	addiu	sp,sp,-216
    1e9c:	3c0e0001 	lui	t6,0x1
    1ea0:	afbf004c 	sw	ra,76(sp)
    1ea4:	afb00048 	sw	s0,72(sp)
    1ea8:	afa400d8 	sw	a0,216(sp)
    1eac:	01c57021 	addu	t6,t6,a1
    1eb0:	8dce1de4 	lw	t6,7652(t6)
    1eb4:	8cb00000 	lw	s0,0(a1)
    1eb8:	3c010000 	lui	at,0x0
    1ebc:	afae00cc 	sw	t6,204(sp)
    1ec0:	84870172 	lh	a3,370(a0)
    1ec4:	c4280000 	lwc1	$f8,0(at)
    1ec8:	3c020000 	lui	v0,0x0
    1ecc:	44872000 	mtc1	a3,$f4
    1ed0:	8c420000 	lw	v0,0(v0)
    1ed4:	24050040 	li	a1,64
    1ed8:	468021a0 	cvt.s.w	$f6,$f4
    1edc:	02002025 	move	a0,s0
    1ee0:	46083002 	mul.s	$f0,$f6,$f8
    1ee4:	46000005 	abs.s	$f0,$f0
    1ee8:	e7a000c0 	swc1	$f0,192(sp)
    1eec:	845814e2 	lh	t8,5346(v0)
    1ef0:	44985000 	mtc1	t8,$f10
    1ef4:	00000000 	nop
    1ef8:	46805420 	cvt.s.w	$f16,$f10
    1efc:	e7b000bc 	swc1	$f16,188(sp)
    1f00:	844b14e0 	lh	t3,5344(v0)
    1f04:	a7a700c6 	sh	a3,198(sp)
    1f08:	256c4000 	addiu	t4,t3,16384
    1f0c:	a7ac00b8 	sh	t4,184(sp)
    1f10:	0c000000 	jal	0 <DemoGt_Destroy>
    1f14:	a7ab00ba 	sh	t3,186(sp)
    1f18:	afa200b4 	sw	v0,180(sp)
    1f1c:	0c000000 	jal	0 <DemoGt_Destroy>
    1f20:	87a400c6 	lh	a0,198(sp)
    1f24:	3c013f80 	lui	at,0x3f80
    1f28:	44819000 	mtc1	at,$f18
    1f2c:	3c060000 	lui	a2,0x0
    1f30:	24c60000 	addiu	a2,a2,0
    1f34:	46009101 	sub.s	$f4,$f18,$f0
    1f38:	27a40078 	addiu	a0,sp,120
    1f3c:	02002825 	move	a1,s0
    1f40:	240701ca 	li	a3,458
    1f44:	0c000000 	jal	0 <DemoGt_Destroy>
    1f48:	e7a40098 	swc1	$f4,152(sp)
    1f4c:	0c000000 	jal	0 <DemoGt_Destroy>
    1f50:	87a400b8 	lh	a0,184(sp)
    1f54:	44803000 	mtc1	zero,$f6
    1f58:	e7a000a8 	swc1	$f0,168(sp)
    1f5c:	87a400b8 	lh	a0,184(sp)
    1f60:	0c000000 	jal	0 <DemoGt_Destroy>
    1f64:	e7a600ac 	swc1	$f6,172(sp)
    1f68:	e7a000b0 	swc1	$f0,176(sp)
    1f6c:	0c000000 	jal	0 <DemoGt_Destroy>
    1f70:	87a400ba 	lh	a0,186(sp)
    1f74:	c7a800bc 	lwc1	$f8,188(sp)
    1f78:	c7b00098 	lwc1	$f16,152(sp)
    1f7c:	87a400c6 	lh	a0,198(sp)
    1f80:	46080282 	mul.s	$f10,$f0,$f8
    1f84:	00000000 	nop
    1f88:	46105482 	mul.s	$f18,$f10,$f16
    1f8c:	0c000000 	jal	0 <DemoGt_Destroy>
    1f90:	e7b2009c 	swc1	$f18,156(sp)
    1f94:	c7a400bc 	lwc1	$f4,188(sp)
    1f98:	87a400ba 	lh	a0,186(sp)
    1f9c:	46040182 	mul.s	$f6,$f0,$f4
    1fa0:	0c000000 	jal	0 <DemoGt_Destroy>
    1fa4:	e7a600a0 	swc1	$f6,160(sp)
    1fa8:	c7a800bc 	lwc1	$f8,188(sp)
    1fac:	c7b00098 	lwc1	$f16,152(sp)
    1fb0:	46080282 	mul.s	$f10,$f0,$f8
    1fb4:	00000000 	nop
    1fb8:	46105482 	mul.s	$f18,$f10,$f16
    1fbc:	0c000000 	jal	0 <DemoGt_Destroy>
    1fc0:	e7b200a4 	swc1	$f18,164(sp)
    1fc4:	c7ac00c0 	lwc1	$f12,192(sp)
    1fc8:	27a500a8 	addiu	a1,sp,168
    1fcc:	0c000000 	jal	0 <DemoGt_Destroy>
    1fd0:	24060001 	li	a2,1
    1fd4:	c7ac009c 	lwc1	$f12,156(sp)
    1fd8:	c7ae00a0 	lwc1	$f14,160(sp)
    1fdc:	8fa600a4 	lw	a2,164(sp)
    1fe0:	0c000000 	jal	0 <DemoGt_Destroy>
    1fe4:	24070001 	li	a3,1
    1fe8:	3c050000 	lui	a1,0x0
    1fec:	24a50000 	addiu	a1,a1,0
    1ff0:	8fa400b4 	lw	a0,180(sp)
    1ff4:	0c000000 	jal	0 <DemoGt_Destroy>
    1ff8:	240601da 	li	a2,474
    1ffc:	0c000000 	jal	0 <DemoGt_Destroy>
    2000:	00000000 	nop
    2004:	0c000000 	jal	0 <DemoGt_Destroy>
    2008:	02002025 	move	a0,s0
    200c:	8e0202c0 	lw	v0,704(s0)
    2010:	8faa00d8 	lw	t2,216(sp)
    2014:	3c0edb06 	lui	t6,0xdb06
    2018:	244d0008 	addiu	t5,v0,8
    201c:	ae0d02c0 	sw	t5,704(s0)
    2020:	35ce0020 	ori	t6,t6,0x20
    2024:	ac4e0000 	sw	t6,0(v0)
    2028:	25480198 	addiu	t0,t2,408
    202c:	8d070000 	lw	a3,0(t0)
    2030:	240f0020 	li	t7,32
    2034:	24180040 	li	t8,64
    2038:	24190001 	li	t9,1
    203c:	afb90018 	sw	t9,24(sp)
    2040:	afb80014 	sw	t8,20(sp)
    2044:	afaf0010 	sw	t7,16(sp)
    2048:	afa0001c 	sw	zero,28(sp)
    204c:	8d0b0004 	lw	t3,4(t0)
    2050:	240d0040 	li	t5,64
    2054:	240c0020 	li	t4,32
    2058:	afac0024 	sw	t4,36(sp)
    205c:	afad0028 	sw	t5,40(sp)
    2060:	25430178 	addiu	v1,t2,376
    2064:	afab0020 	sw	t3,32(sp)
    2068:	8c6e0000 	lw	t6,0(v1)
    206c:	24190080 	li	t9,128
    2070:	02002025 	move	a0,s0
    2074:	afae002c 	sw	t6,44(sp)
    2078:	8c6f0004 	lw	t7,4(v1)
    207c:	00002825 	move	a1,zero
    2080:	00003025 	move	a2,zero
    2084:	afaf0030 	sw	t7,48(sp)
    2088:	8c780008 	lw	t8,8(v1)
    208c:	afa80054 	sw	t0,84(sp)
    2090:	afb90038 	sw	t9,56(sp)
    2094:	afa20074 	sw	v0,116(sp)
    2098:	0c000000 	jal	0 <DemoGt_Destroy>
    209c:	afb80034 	sw	t8,52(sp)
    20a0:	8fa90074 	lw	t1,116(sp)
    20a4:	8fa80054 	lw	t0,84(sp)
    20a8:	3c0cdb06 	lui	t4,0xdb06
    20ac:	ad220004 	sw	v0,4(t1)
    20b0:	8e0202c0 	lw	v0,704(s0)
    20b4:	358c0028 	ori	t4,t4,0x28
    20b8:	240d0020 	li	t5,32
    20bc:	244b0008 	addiu	t3,v0,8
    20c0:	ae0b02c0 	sw	t3,704(s0)
    20c4:	ac4c0000 	sw	t4,0(v0)
    20c8:	8d070000 	lw	a3,0(t0)
    20cc:	240e0040 	li	t6,64
    20d0:	240f0001 	li	t7,1
    20d4:	afaf0018 	sw	t7,24(sp)
    20d8:	afae0014 	sw	t6,20(sp)
    20dc:	afa0001c 	sw	zero,28(sp)
    20e0:	afad0010 	sw	t5,16(sp)
    20e4:	8d180004 	lw	t8,4(t0)
    20e8:	8fa300d8 	lw	v1,216(sp)
    20ec:	240b0040 	li	t3,64
    20f0:	24190020 	li	t9,32
    20f4:	afb90024 	sw	t9,36(sp)
    20f8:	afab0028 	sw	t3,40(sp)
    20fc:	afb80020 	sw	t8,32(sp)
    2100:	8c6c0188 	lw	t4,392(v1)
    2104:	240f0080 	li	t7,128
    2108:	02002025 	move	a0,s0
    210c:	afac002c 	sw	t4,44(sp)
    2110:	8c6d018c 	lw	t5,396(v1)
    2114:	00002825 	move	a1,zero
    2118:	00003025 	move	a2,zero
    211c:	afad0030 	sw	t5,48(sp)
    2120:	8c6e0190 	lw	t6,400(v1)
    2124:	afaf0038 	sw	t7,56(sp)
    2128:	afa20070 	sw	v0,112(sp)
    212c:	24630188 	addiu	v1,v1,392
    2130:	0c000000 	jal	0 <DemoGt_Destroy>
    2134:	afae0034 	sw	t6,52(sp)
    2138:	8fa90070 	lw	t1,112(sp)
    213c:	3c19da38 	lui	t9,0xda38
    2140:	37390003 	ori	t9,t9,0x3
    2144:	ad220004 	sw	v0,4(t1)
    2148:	8e0202c0 	lw	v0,704(s0)
    214c:	3c0e0600 	lui	t6,0x600
    2150:	25ce2910 	addiu	t6,t6,10512
    2154:	24580008 	addiu	t8,v0,8
    2158:	ae1802c0 	sw	t8,704(s0)
    215c:	ac590000 	sw	t9,0(v0)
    2160:	8fab00b4 	lw	t3,180(sp)
    2164:	3c0dde00 	lui	t5,0xde00
    2168:	02002025 	move	a0,s0
    216c:	ac4b0004 	sw	t3,4(v0)
    2170:	8e0202c0 	lw	v0,704(s0)
    2174:	244c0008 	addiu	t4,v0,8
    2178:	ae0c02c0 	sw	t4,704(s0)
    217c:	ac4e0004 	sw	t6,4(v0)
    2180:	0c000000 	jal	0 <DemoGt_Destroy>
    2184:	ac4d0000 	sw	t5,0(v0)
    2188:	8e0202d0 	lw	v0,720(s0)
    218c:	3c198080 	lui	t9,0x8080
    2190:	37398080 	ori	t9,t9,0x8080
    2194:	244f0008 	addiu	t7,v0,8
    2198:	ae0f02d0 	sw	t7,720(s0)
    219c:	3c18fb00 	lui	t8,0xfb00
    21a0:	ac580000 	sw	t8,0(v0)
    21a4:	ac590004 	sw	t9,4(v0)
    21a8:	8e0202d0 	lw	v0,720(s0)
    21ac:	8fa800cc 	lw	t0,204(sp)
    21b0:	3c0cdb06 	lui	t4,0xdb06
    21b4:	244b0008 	addiu	t3,v0,8
    21b8:	ae0b02d0 	sw	t3,720(s0)
    21bc:	358c0024 	ori	t4,t4,0x24
    21c0:	ac4c0000 	sw	t4,0(v0)
    21c4:	0008c100 	sll	t8,t0,0x4
    21c8:	0308c023 	subu	t8,t8,t0
    21cc:	00083880 	sll	a3,t0,0x2
    21d0:	0018c040 	sll	t8,t8,0x1
    21d4:	240b0200 	li	t3,512
    21d8:	24190010 	li	t9,16
    21dc:	240f0001 	li	t7,1
    21e0:	240d0010 	li	t5,16
    21e4:	240e0200 	li	t6,512
    21e8:	00e83821 	addu	a3,a3,t0
    21ec:	00073880 	sll	a3,a3,0x2
    21f0:	afae0014 	sw	t6,20(sp)
    21f4:	afad0010 	sw	t5,16(sp)
    21f8:	afaf0018 	sw	t7,24(sp)
    21fc:	afb90024 	sw	t9,36(sp)
    2200:	afab0028 	sw	t3,40(sp)
    2204:	afb80020 	sw	t8,32(sp)
    2208:	afa0001c 	sw	zero,28(sp)
    220c:	02002025 	move	a0,s0
    2210:	00002825 	move	a1,zero
    2214:	00003025 	move	a2,zero
    2218:	0c000000 	jal	0 <DemoGt_Destroy>
    221c:	afa20060 	sw	v0,96(sp)
    2220:	8fa30060 	lw	v1,96(sp)
    2224:	3c0dda38 	lui	t5,0xda38
    2228:	35ad0003 	ori	t5,t5,0x3
    222c:	ac620004 	sw	v0,4(v1)
    2230:	8e0202d0 	lw	v0,720(s0)
    2234:	3c190600 	lui	t9,0x600
    2238:	273941a0 	addiu	t9,t9,16800
    223c:	244c0008 	addiu	t4,v0,8
    2240:	ae0c02d0 	sw	t4,720(s0)
    2244:	ac4d0000 	sw	t5,0(v0)
    2248:	8fae00b4 	lw	t6,180(sp)
    224c:	3c18de00 	lui	t8,0xde00
    2250:	3c060000 	lui	a2,0x0
    2254:	ac4e0004 	sw	t6,4(v0)
    2258:	8e0202d0 	lw	v0,720(s0)
    225c:	24c60000 	addiu	a2,a2,0
    2260:	27a40078 	addiu	a0,sp,120
    2264:	244f0008 	addiu	t7,v0,8
    2268:	ae0f02d0 	sw	t7,720(s0)
    226c:	02002825 	move	a1,s0
    2270:	2407022d 	li	a3,557
    2274:	ac590004 	sw	t9,4(v0)
    2278:	0c000000 	jal	0 <DemoGt_Destroy>
    227c:	ac580000 	sw	t8,0(v0)
    2280:	8fbf004c 	lw	ra,76(sp)
    2284:	8fb00048 	lw	s0,72(sp)
    2288:	27bd00d8 	addiu	sp,sp,216
    228c:	03e00008 	jr	ra
    2290:	00000000 	nop

00002294 <func_8097F904>:
    2294:	27bdffe0 	addiu	sp,sp,-32
    2298:	afbf001c 	sw	ra,28(sp)
    229c:	3c014120 	lui	at,0x4120
    22a0:	44810000 	mtc1	at,$f0
    22a4:	c4840050 	lwc1	$f4,80(a0)
    22a8:	c4880054 	lwc1	$f8,84(a0)
    22ac:	c4900058 	lwc1	$f16,88(a0)
    22b0:	46002182 	mul.s	$f6,$f4,$f0
    22b4:	3c0e0600 	lui	t6,0x600
    22b8:	25ce5cb8 	addiu	t6,t6,23736
    22bc:	46004282 	mul.s	$f10,$f8,$f0
    22c0:	24060001 	li	a2,1
    22c4:	24070002 	li	a3,2
    22c8:	46008482 	mul.s	$f18,$f16,$f0
    22cc:	e4860050 	swc1	$f6,80(a0)
    22d0:	e48a0054 	swc1	$f10,84(a0)
    22d4:	e4920058 	swc1	$f18,88(a0)
    22d8:	0c000000 	jal	0 <DemoGt_Destroy>
    22dc:	afae0010 	sw	t6,16(sp)
    22e0:	8fbf001c 	lw	ra,28(sp)
    22e4:	27bd0020 	addiu	sp,sp,32
    22e8:	03e00008 	jr	ra
    22ec:	00000000 	nop

000022f0 <func_8097F960>:
    22f0:	afa40000 	sw	a0,0(sp)
    22f4:	03e00008 	jr	ra
    22f8:	afa50004 	sw	a1,4(sp)

000022fc <func_8097F96C>:
    22fc:	27bdffc0 	addiu	sp,sp,-64
    2300:	afbf0014 	sw	ra,20(sp)
    2304:	94a21d74 	lhu	v0,7540(a1)
    2308:	00a03825 	move	a3,a1
    230c:	3c0e0000 	lui	t6,0x0
    2310:	28410424 	slti	at,v0,1060
    2314:	14200003 	bnez	at,2324 <func_8097F96C+0x28>
    2318:	28410426 	slti	at,v0,1062
    231c:	54200007 	bnezl	at,233c <func_8097F96C+0x40>
    2320:	c4840024 	lwc1	$f4,36(a0)
    2324:	8dce0000 	lw	t6,0(t6)
    2328:	24010011 	li	at,17
    232c:	85cf1456 	lh	t7,5206(t6)
    2330:	55e1001b 	bnel	t7,at,23a0 <func_8097F96C+0xa4>
    2334:	8fbf0014 	lw	ra,20(sp)
    2338:	c4840024 	lwc1	$f4,36(a0)
    233c:	3c014419 	lui	at,0x4419
    2340:	44814000 	mtc1	at,$f8
    2344:	e7a40024 	swc1	$f4,36(sp)
    2348:	c4860028 	lwc1	$f6,40(a0)
    234c:	3c030000 	lui	v1,0x0
    2350:	8c630000 	lw	v1,0(v1)
    2354:	46083280 	add.s	$f10,$f6,$f8
    2358:	27a50024 	addiu	a1,sp,36
    235c:	c7b20024 	lwc1	$f18,36(sp)
    2360:	e7aa0028 	swc1	$f10,40(sp)
    2364:	c490002c 	lwc1	$f16,44(a0)
    2368:	00e02025 	move	a0,a3
    236c:	14600006 	bnez	v1,2388 <func_8097F96C+0x8c>
    2370:	e7b0002c 	swc1	$f16,44(sp)
    2374:	0c000000 	jal	0 <DemoGt_Destroy>
    2378:	24060002 	li	a2,2
    237c:	3c010000 	lui	at,0x0
    2380:	10000006 	b	239c <func_8097F96C+0xa0>
    2384:	ac220000 	sw	v0,0(at)
    2388:	e4720024 	swc1	$f18,36(v1)
    238c:	c7a40028 	lwc1	$f4,40(sp)
    2390:	e4640028 	swc1	$f4,40(v1)
    2394:	c7a6002c 	lwc1	$f6,44(sp)
    2398:	e466002c 	swc1	$f6,44(v1)
    239c:	8fbf0014 	lw	ra,20(sp)
    23a0:	27bd0040 	addiu	sp,sp,64
    23a4:	03e00008 	jr	ra
    23a8:	00000000 	nop

000023ac <func_8097FA1C>:
    23ac:	27bdff98 	addiu	sp,sp,-104
    23b0:	3c0f0000 	lui	t7,0x0
    23b4:	afbf0024 	sw	ra,36(sp)
    23b8:	afa40068 	sw	a0,104(sp)
    23bc:	afa5006c 	sw	a1,108(sp)
    23c0:	25ef0000 	addiu	t7,t7,0
    23c4:	8df90000 	lw	t9,0(t7)
    23c8:	94a21d74 	lhu	v0,7540(a1)
    23cc:	27a6003c 	addiu	a2,sp,60
    23d0:	acd90000 	sw	t9,0(a2)
    23d4:	8df80004 	lw	t8,4(t7)
    23d8:	284101f7 	slti	at,v0,503
    23dc:	3c080000 	lui	t0,0x0
    23e0:	acd80004 	sw	t8,4(a2)
    23e4:	8df90008 	lw	t9,8(t7)
    23e8:	14200004 	bnez	at,23fc <func_8097FA1C+0x50>
    23ec:	acd90008 	sw	t9,8(a2)
    23f0:	28410245 	slti	at,v0,581
    23f4:	54200007 	bnezl	at,2414 <func_8097FA1C+0x68>
    23f8:	8fa20068 	lw	v0,104(sp)
    23fc:	8d080000 	lw	t0,0(t0)
    2400:	24010005 	li	at,5
    2404:	85091456 	lh	t1,5206(t0)
    2408:	5521001d 	bnel	t1,at,2480 <func_8097FA1C+0xd4>
    240c:	8fbf0024 	lw	ra,36(sp)
    2410:	8fa20068 	lw	v0,104(sp)
    2414:	3c014396 	lui	at,0x4396
    2418:	44813000 	mtc1	at,$f6
    241c:	c4440024 	lwc1	$f4,36(v0)
    2420:	3c0143b4 	lui	at,0x43b4
    2424:	44818000 	mtc1	at,$f16
    2428:	46062200 	add.s	$f8,$f4,$f6
    242c:	3c010000 	lui	at,0x0
    2430:	c4260000 	lwc1	$f6,0(at)
    2434:	240a0006 	li	t2,6
    2438:	e7a80050 	swc1	$f8,80(sp)
    243c:	c44a0028 	lwc1	$f10,40(v0)
    2440:	240b0001 	li	t3,1
    2444:	240c0023 	li	t4,35
    2448:	46105480 	add.s	$f18,$f10,$f16
    244c:	8fa4006c 	lw	a0,108(sp)
    2450:	27a50050 	addiu	a1,sp,80
    2454:	3c0740c0 	lui	a3,0x40c0
    2458:	e7b20054 	swc1	$f18,84(sp)
    245c:	c444002c 	lwc1	$f4,44(v0)
    2460:	afac0018 	sw	t4,24(sp)
    2464:	afab0014 	sw	t3,20(sp)
    2468:	46062201 	sub.s	$f8,$f4,$f6
    246c:	afaa0010 	sw	t2,16(sp)
    2470:	24420024 	addiu	v0,v0,36
    2474:	0c000000 	jal	0 <DemoGt_Destroy>
    2478:	e7a80058 	swc1	$f8,88(sp)
    247c:	8fbf0024 	lw	ra,36(sp)
    2480:	27bd0068 	addiu	sp,sp,104
    2484:	03e00008 	jr	ra
    2488:	00000000 	nop

0000248c <func_8097FAFC>:
    248c:	27bdffb0 	addiu	sp,sp,-80
    2490:	afbf002c 	sw	ra,44(sp)
    2494:	afa50054 	sw	a1,84(sp)
    2498:	94a21d74 	lhu	v0,7540(a1)
    249c:	3c0f0000 	lui	t7,0x0
    24a0:	28410247 	slti	at,v0,583
    24a4:	14200004 	bnez	at,24b8 <func_8097FAFC+0x2c>
    24a8:	00401825 	move	v1,v0
    24ac:	284102ab 	slti	at,v0,683
    24b0:	54200007 	bnezl	at,24d0 <func_8097FAFC+0x44>
    24b4:	8c880024 	lw	t0,36(a0)
    24b8:	8def0000 	lw	t7,0(t7)
    24bc:	24010006 	li	at,6
    24c0:	85f81456 	lh	t8,5206(t7)
    24c4:	57010036 	bnel	t8,at,25a0 <func_8097FAFC+0x114>
    24c8:	8fbf002c 	lw	ra,44(sp)
    24cc:	8c880024 	lw	t0,36(a0)
    24d0:	27a50038 	addiu	a1,sp,56
    24d4:	3c01442a 	lui	at,0x442a
    24d8:	aca80000 	sw	t0,0(a1)
    24dc:	8c990028 	lw	t9,40(a0)
    24e0:	44813000 	mtc1	at,$f6
    24e4:	240102aa 	li	at,682
    24e8:	acb90004 	sw	t9,4(a1)
    24ec:	8c88002c 	lw	t0,44(a0)
    24f0:	3c060000 	lui	a2,0x0
    24f4:	3c070000 	lui	a3,0x0
    24f8:	aca80008 	sw	t0,8(a1)
    24fc:	c7a4003c 	lwc1	$f4,60(sp)
    2500:	24e70000 	addiu	a3,a3,0
    2504:	24c60000 	addiu	a2,a2,0
    2508:	46062200 	add.s	$f8,$f4,$f6
    250c:	3c090000 	lui	t1,0x0
    2510:	3c0a0000 	lui	t2,0x0
    2514:	14610009 	bne	v1,at,253c <func_8097FAFC+0xb0>
    2518:	e7a8003c 	swc1	$f8,60(sp)
    251c:	3c010000 	lui	at,0x0
    2520:	c42a0000 	lwc1	$f10,0(at)
    2524:	3c01c348 	lui	at,0xc348
    2528:	44818000 	mtc1	at,$f16
    252c:	3c010000 	lui	at,0x0
    2530:	46105480 	add.s	$f18,$f10,$f16
    2534:	1000000a 	b	2560 <func_8097FAFC+0xd4>
    2538:	e4320000 	swc1	$f18,0(at)
    253c:	240102a9 	li	at,681
    2540:	14610007 	bne	v1,at,2560 <func_8097FAFC+0xd4>
    2544:	3c010000 	lui	at,0x0
    2548:	c4240000 	lwc1	$f4,0(at)
    254c:	3c01c348 	lui	at,0xc348
    2550:	44813000 	mtc1	at,$f6
    2554:	3c010000 	lui	at,0x0
    2558:	46062200 	add.s	$f8,$f4,$f6
    255c:	e4280000 	swc1	$f8,0(at)
    2560:	3c010000 	lui	at,0x0
    2564:	c42a0000 	lwc1	$f10,0(at)
    2568:	3c010000 	lui	at,0x0
    256c:	3c0b0000 	lui	t3,0x0
    2570:	856b0000 	lh	t3,0(t3)
    2574:	c4300000 	lwc1	$f16,0(at)
    2578:	8d290000 	lw	t1,0(t1)
    257c:	8d4a0000 	lw	t2,0(t2)
    2580:	8fa40054 	lw	a0,84(sp)
    2584:	e7aa0010 	swc1	$f10,16(sp)
    2588:	afab0020 	sw	t3,32(sp)
    258c:	e7b00014 	swc1	$f16,20(sp)
    2590:	afa90018 	sw	t1,24(sp)
    2594:	0c000000 	jal	0 <DemoGt_Destroy>
    2598:	afaa001c 	sw	t2,28(sp)
    259c:	8fbf002c 	lw	ra,44(sp)
    25a0:	27bd0050 	addiu	sp,sp,80
    25a4:	03e00008 	jr	ra
    25a8:	00000000 	nop

000025ac <func_8097FC1C>:
    25ac:	27bdff98 	addiu	sp,sp,-104
    25b0:	3c0f0000 	lui	t7,0x0
    25b4:	afbf0024 	sw	ra,36(sp)
    25b8:	afa40068 	sw	a0,104(sp)
    25bc:	afa5006c 	sw	a1,108(sp)
    25c0:	25ef0000 	addiu	t7,t7,0
    25c4:	8df90000 	lw	t9,0(t7)
    25c8:	94a21d74 	lhu	v0,7540(a1)
    25cc:	27a6003c 	addiu	a2,sp,60
    25d0:	acd90000 	sw	t9,0(a2)
    25d4:	8df80004 	lw	t8,4(t7)
    25d8:	284102ab 	slti	at,v0,683
    25dc:	3c080000 	lui	t0,0x0
    25e0:	acd80004 	sw	t8,4(a2)
    25e4:	8df90008 	lw	t9,8(t7)
    25e8:	10200006 	beqz	at,2604 <func_8097FC1C+0x58>
    25ec:	acd90008 	sw	t9,8(a2)
    25f0:	8d080000 	lw	t0,0(t0)
    25f4:	24010007 	li	at,7
    25f8:	85091456 	lh	t1,5206(t0)
    25fc:	5521001a 	bnel	t1,at,2668 <func_8097FC1C+0xbc>
    2600:	8fbf0024 	lw	ra,36(sp)
    2604:	8fa20068 	lw	v0,104(sp)
    2608:	3c014382 	lui	at,0x4382
    260c:	44810000 	mtc1	at,$f0
    2610:	c4440024 	lwc1	$f4,36(v0)
    2614:	3c0143b4 	lui	at,0x43b4
    2618:	44815000 	mtc1	at,$f10
    261c:	46002180 	add.s	$f6,$f4,$f0
    2620:	240a0006 	li	t2,6
    2624:	240b0023 	li	t3,35
    2628:	8fa4006c 	lw	a0,108(sp)
    262c:	e7a60050 	swc1	$f6,80(sp)
    2630:	c4480028 	lwc1	$f8,40(v0)
    2634:	27a50050 	addiu	a1,sp,80
    2638:	3c0740c0 	lui	a3,0x40c0
    263c:	460a4400 	add.s	$f16,$f8,$f10
    2640:	24420024 	addiu	v0,v0,36
    2644:	e7b00054 	swc1	$f16,84(sp)
    2648:	c4520008 	lwc1	$f18,8(v0)
    264c:	afab0018 	sw	t3,24(sp)
    2650:	afa00014 	sw	zero,20(sp)
    2654:	46009100 	add.s	$f4,$f18,$f0
    2658:	afaa0010 	sw	t2,16(sp)
    265c:	0c000000 	jal	0 <DemoGt_Destroy>
    2660:	e7a40058 	swc1	$f4,88(sp)
    2664:	8fbf0024 	lw	ra,36(sp)
    2668:	27bd0068 	addiu	sp,sp,104
    266c:	03e00008 	jr	ra
    2670:	00000000 	nop

00002674 <func_8097FCE4>:
    2674:	27bdffc8 	addiu	sp,sp,-56
    2678:	afbf0014 	sw	ra,20(sp)
    267c:	afa5003c 	sw	a1,60(sp)
    2680:	94a21d74 	lhu	v0,7540(a1)
    2684:	240101f7 	li	at,503
    2688:	00803825 	move	a3,a0
    268c:	10410005 	beq	v0,at,26a4 <func_8097FCE4+0x30>
    2690:	3c0f0000 	lui	t7,0x0
    2694:	8def0000 	lw	t7,0(t7)
    2698:	24010004 	li	at,4
    269c:	85f81456 	lh	t8,5206(t7)
    26a0:	17010013 	bne	t8,at,26f0 <func_8097FCE4+0x7c>
    26a4:	3c014396 	lui	at,0x4396
    26a8:	44813000 	mtc1	at,$f6
    26ac:	c4e40024 	lwc1	$f4,36(a3)
    26b0:	3c01440c 	lui	at,0x440c
    26b4:	44818000 	mtc1	at,$f16
    26b8:	46062200 	add.s	$f8,$f4,$f6
    26bc:	3c010000 	lui	at,0x0
    26c0:	c4260000 	lwc1	$f6,0(at)
    26c4:	8fa4003c 	lw	a0,60(sp)
    26c8:	e7a80020 	swc1	$f8,32(sp)
    26cc:	c4ea0028 	lwc1	$f10,40(a3)
    26d0:	27a50020 	addiu	a1,sp,32
    26d4:	3c064000 	lui	a2,0x4000
    26d8:	46105480 	add.s	$f18,$f10,$f16
    26dc:	e7b20024 	swc1	$f18,36(sp)
    26e0:	c4e4002c 	lwc1	$f4,44(a3)
    26e4:	46062201 	sub.s	$f8,$f4,$f6
    26e8:	0c000000 	jal	0 <DemoGt_Destroy>
    26ec:	e7a80028 	swc1	$f8,40(sp)
    26f0:	8fbf0014 	lw	ra,20(sp)
    26f4:	27bd0038 	addiu	sp,sp,56
    26f8:	03e00008 	jr	ra
    26fc:	00000000 	nop

00002700 <func_8097FD70>:
    2700:	27bdffe0 	addiu	sp,sp,-32
    2704:	afbf001c 	sw	ra,28(sp)
    2708:	afb10018 	sw	s1,24(sp)
    270c:	afb00014 	sw	s0,20(sp)
    2710:	00808025 	move	s0,a0
    2714:	0c000000 	jal	0 <DemoGt_Destroy>
    2718:	00a08825 	move	s1,a1
    271c:	02002025 	move	a0,s0
    2720:	0c000000 	jal	0 <DemoGt_Destroy>
    2724:	02202825 	move	a1,s1
    2728:	02002025 	move	a0,s0
    272c:	0c000000 	jal	0 <DemoGt_Destroy>
    2730:	02202825 	move	a1,s1
    2734:	02002025 	move	a0,s0
    2738:	0c000000 	jal	0 <DemoGt_Destroy>
    273c:	02202825 	move	a1,s1
    2740:	02002025 	move	a0,s0
    2744:	0c000000 	jal	0 <DemoGt_Destroy>
    2748:	02202825 	move	a1,s1
    274c:	02002025 	move	a0,s0
    2750:	0c000000 	jal	0 <DemoGt_Destroy>
    2754:	02202825 	move	a1,s1
    2758:	8fbf001c 	lw	ra,28(sp)
    275c:	8fb00014 	lw	s0,20(sp)
    2760:	8fb10018 	lw	s1,24(sp)
    2764:	03e00008 	jr	ra
    2768:	27bd0020 	addiu	sp,sp,32

0000276c <func_8097FDDC>:
    276c:	27bdffe0 	addiu	sp,sp,-32
    2770:	afbf001c 	sw	ra,28(sp)
    2774:	afa40020 	sw	a0,32(sp)
    2778:	94a61d74 	lhu	a2,7540(a1)
    277c:	28c10262 	slti	at,a2,610
    2780:	10200011 	beqz	at,27c8 <func_8097FDDC+0x5c>
    2784:	00c01025 	move	v0,a2
    2788:	8fa20020 	lw	v0,32(sp)
    278c:	240400c1 	li	a0,193
    2790:	240e00a3 	li	t6,163
    2794:	ac4e0178 	sw	t6,376(v0)
    2798:	ac44017c 	sw	a0,380(v0)
    279c:	ac440180 	sw	a0,384(v0)
    27a0:	8fa30020 	lw	v1,32(sp)
    27a4:	24420178 	addiu	v0,v0,376
    27a8:	8c6f0198 	lw	t7,408(v1)
    27ac:	8c79019c 	lw	t9,412(v1)
    27b0:	24630198 	addiu	v1,v1,408
    27b4:	25f80001 	addiu	t8,t7,1
    27b8:	2728ffff 	addiu	t0,t9,-1
    27bc:	ac780000 	sw	t8,0(v1)
    27c0:	10000025 	b	2858 <func_8097FDDC+0xec>
    27c4:	ac680004 	sw	t0,4(v1)
    27c8:	2841026c 	slti	at,v0,620
    27cc:	1020001d 	beqz	at,2844 <func_8097FDDC+0xd8>
    27d0:	8fa20020 	lw	v0,32(sp)
    27d4:	2404026c 	li	a0,620
    27d8:	24050262 	li	a1,610
    27dc:	00003825 	move	a3,zero
    27e0:	0c000000 	jal	0 <DemoGt_Destroy>
    27e4:	afa00010 	sw	zero,16(sp)
    27e8:	3c01c150 	lui	at,0xc150
    27ec:	44812000 	mtc1	at,$f4
    27f0:	3c014323 	lui	at,0x4323
    27f4:	44814000 	mtc1	at,$f8
    27f8:	46040182 	mul.s	$f6,$f0,$f4
    27fc:	3c01c22c 	lui	at,0xc22c
    2800:	44819000 	mtc1	at,$f18
    2804:	3c014341 	lui	at,0x4341
    2808:	8fa20020 	lw	v0,32(sp)
    280c:	46120102 	mul.s	$f4,$f0,$f18
    2810:	46083280 	add.s	$f10,$f6,$f8
    2814:	44813000 	mtc1	at,$f6
    2818:	24420178 	addiu	v0,v0,376
    281c:	4600540d 	trunc.w.s	$f16,$f10
    2820:	46062200 	add.s	$f8,$f4,$f6
    2824:	440a8000 	mfc1	t2,$f16
    2828:	4600428d 	trunc.w.s	$f10,$f8
    282c:	ac4a0000 	sw	t2,0(v0)
    2830:	44035000 	mfc1	v1,$f10
    2834:	00000000 	nop
    2838:	ac430004 	sw	v1,4(v0)
    283c:	10000006 	b	2858 <func_8097FDDC+0xec>
    2840:	ac430008 	sw	v1,8(v0)
    2844:	24030096 	li	v1,150
    2848:	ac430178 	sw	v1,376(v0)
    284c:	24420178 	addiu	v0,v0,376
    2850:	ac430004 	sw	v1,4(v0)
    2854:	ac430008 	sw	v1,8(v0)
    2858:	8fbf001c 	lw	ra,28(sp)
    285c:	27bd0020 	addiu	sp,sp,32
    2860:	03e00008 	jr	ra
    2864:	00000000 	nop

00002868 <func_8097FED8>:
    2868:	27bdffe8 	addiu	sp,sp,-24
    286c:	afa40018 	sw	a0,24(sp)
    2870:	afbf0014 	sw	ra,20(sp)
    2874:	00a02025 	move	a0,a1
    2878:	24050002 	li	a1,2
    287c:	0c000000 	jal	0 <DemoGt_Destroy>
    2880:	24060002 	li	a2,2
    2884:	10400003 	beqz	v0,2894 <func_8097FED8+0x2c>
    2888:	8faf0018 	lw	t7,24(sp)
    288c:	240e0009 	li	t6,9
    2890:	adee0164 	sw	t6,356(t7)
    2894:	8fbf0014 	lw	ra,20(sp)
    2898:	27bd0018 	addiu	sp,sp,24
    289c:	03e00008 	jr	ra
    28a0:	00000000 	nop

000028a4 <func_8097FF14>:
    28a4:	27bdffe8 	addiu	sp,sp,-24
    28a8:	afbf0014 	sw	ra,20(sp)
    28ac:	afa40018 	sw	a0,24(sp)
    28b0:	0c000000 	jal	0 <DemoGt_Destroy>
    28b4:	afa5001c 	sw	a1,28(sp)
    28b8:	8fa40018 	lw	a0,24(sp)
    28bc:	0c000000 	jal	0 <DemoGt_Destroy>
    28c0:	24050002 	li	a1,2
    28c4:	8fa40018 	lw	a0,24(sp)
    28c8:	0c000000 	jal	0 <DemoGt_Destroy>
    28cc:	8fa5001c 	lw	a1,28(sp)
    28d0:	8fa40018 	lw	a0,24(sp)
    28d4:	0c000000 	jal	0 <DemoGt_Destroy>
    28d8:	8fa5001c 	lw	a1,28(sp)
    28dc:	8fbf0014 	lw	ra,20(sp)
    28e0:	27bd0018 	addiu	sp,sp,24
    28e4:	03e00008 	jr	ra
    28e8:	00000000 	nop

000028ec <func_8097FF5C>:
    28ec:	27bdffe8 	addiu	sp,sp,-24
    28f0:	afbf0014 	sw	ra,20(sp)
    28f4:	afa40018 	sw	a0,24(sp)
    28f8:	0c000000 	jal	0 <DemoGt_Destroy>
    28fc:	afa5001c 	sw	a1,28(sp)
    2900:	8fa40018 	lw	a0,24(sp)
    2904:	8fa5001c 	lw	a1,28(sp)
    2908:	0c000000 	jal	0 <DemoGt_Destroy>
    290c:	24060002 	li	a2,2
    2910:	8fa40018 	lw	a0,24(sp)
    2914:	0c000000 	jal	0 <DemoGt_Destroy>
    2918:	8fa5001c 	lw	a1,28(sp)
    291c:	8fbf0014 	lw	ra,20(sp)
    2920:	27bd0018 	addiu	sp,sp,24
    2924:	03e00008 	jr	ra
    2928:	00000000 	nop

0000292c <func_8097FF9C>:
    292c:	27bdff78 	addiu	sp,sp,-136
    2930:	afbf004c 	sw	ra,76(sp)
    2934:	afb00048 	sw	s0,72(sp)
    2938:	afa40088 	sw	a0,136(sp)
    293c:	afa5008c 	sw	a1,140(sp)
    2940:	8cb00000 	lw	s0,0(a1)
    2944:	3c060000 	lui	a2,0x0
    2948:	24c60000 	addiu	a2,a2,0
    294c:	27a40064 	addiu	a0,sp,100
    2950:	240701d6 	li	a3,470
    2954:	0c000000 	jal	0 <DemoGt_Destroy>
    2958:	02002825 	move	a1,s0
    295c:	0c000000 	jal	0 <DemoGt_Destroy>
    2960:	02002025 	move	a0,s0
    2964:	8e0202c0 	lw	v0,704(s0)
    2968:	8faa0088 	lw	t2,136(sp)
    296c:	3c18db06 	lui	t8,0xdb06
    2970:	244f0008 	addiu	t7,v0,8
    2974:	ae0f02c0 	sw	t7,704(s0)
    2978:	37180020 	ori	t8,t8,0x20
    297c:	ac580000 	sw	t8,0(v0)
    2980:	25480198 	addiu	t0,t2,408
    2984:	8d070000 	lw	a3,0(t0)
    2988:	24190020 	li	t9,32
    298c:	240b0040 	li	t3,64
    2990:	240c0001 	li	t4,1
    2994:	afac0018 	sw	t4,24(sp)
    2998:	afab0014 	sw	t3,20(sp)
    299c:	afb90010 	sw	t9,16(sp)
    29a0:	afa0001c 	sw	zero,28(sp)
    29a4:	8d0d0004 	lw	t5,4(t0)
    29a8:	240f0040 	li	t7,64
    29ac:	240e0020 	li	t6,32
    29b0:	afae0024 	sw	t6,36(sp)
    29b4:	afaf0028 	sw	t7,40(sp)
    29b8:	25430178 	addiu	v1,t2,376
    29bc:	afad0020 	sw	t5,32(sp)
    29c0:	8c780000 	lw	t8,0(v1)
    29c4:	240c0080 	li	t4,128
    29c8:	02002025 	move	a0,s0
    29cc:	afb8002c 	sw	t8,44(sp)
    29d0:	8c790004 	lw	t9,4(v1)
    29d4:	00002825 	move	a1,zero
    29d8:	00003025 	move	a2,zero
    29dc:	afb90030 	sw	t9,48(sp)
    29e0:	8c6b0008 	lw	t3,8(v1)
    29e4:	afac0038 	sw	t4,56(sp)
    29e8:	afa20060 	sw	v0,96(sp)
    29ec:	0c000000 	jal	0 <DemoGt_Destroy>
    29f0:	afab0034 	sw	t3,52(sp)
    29f4:	8fa90060 	lw	t1,96(sp)
    29f8:	3c0eda38 	lui	t6,0xda38
    29fc:	35ce0002 	ori	t6,t6,0x2
    2a00:	ad220004 	sw	v0,4(t1)
    2a04:	8e0202c0 	lw	v0,704(s0)
    2a08:	3c050000 	lui	a1,0x0
    2a0c:	24a50000 	addiu	a1,a1,0
    2a10:	244d0008 	addiu	t5,v0,8
    2a14:	ae0d02c0 	sw	t5,704(s0)
    2a18:	ac4e0000 	sw	t6,0(v0)
    2a1c:	02002025 	move	a0,s0
    2a20:	240601e5 	li	a2,485
    2a24:	0c000000 	jal	0 <DemoGt_Destroy>
    2a28:	afa2005c 	sw	v0,92(sp)
    2a2c:	8fa3005c 	lw	v1,92(sp)
    2a30:	3c190600 	lui	t9,0x600
    2a34:	27394f90 	addiu	t9,t9,20368
    2a38:	ac620004 	sw	v0,4(v1)
    2a3c:	8e0202c0 	lw	v0,704(s0)
    2a40:	3c18de00 	lui	t8,0xde00
    2a44:	3c0cd838 	lui	t4,0xd838
    2a48:	244f0008 	addiu	t7,v0,8
    2a4c:	ae0f02c0 	sw	t7,704(s0)
    2a50:	ac590004 	sw	t9,4(v0)
    2a54:	ac580000 	sw	t8,0(v0)
    2a58:	8e0202c0 	lw	v0,704(s0)
    2a5c:	358c0002 	ori	t4,t4,0x2
    2a60:	240d0040 	li	t5,64
    2a64:	244b0008 	addiu	t3,v0,8
    2a68:	ae0b02c0 	sw	t3,704(s0)
    2a6c:	3c060000 	lui	a2,0x0
    2a70:	24c60000 	addiu	a2,a2,0
    2a74:	27a40064 	addiu	a0,sp,100
    2a78:	02002825 	move	a1,s0
    2a7c:	240701e9 	li	a3,489
    2a80:	ac4d0004 	sw	t5,4(v0)
    2a84:	0c000000 	jal	0 <DemoGt_Destroy>
    2a88:	ac4c0000 	sw	t4,0(v0)
    2a8c:	8fbf004c 	lw	ra,76(sp)
    2a90:	8fb00048 	lw	s0,72(sp)
    2a94:	27bd0088 	addiu	sp,sp,136
    2a98:	03e00008 	jr	ra
    2a9c:	00000000 	nop

00002aa0 <func_80980110>:
    2aa0:	27bdffe0 	addiu	sp,sp,-32
    2aa4:	afbf001c 	sw	ra,28(sp)
    2aa8:	3c014120 	lui	at,0x4120
    2aac:	44810000 	mtc1	at,$f0
    2ab0:	c4840050 	lwc1	$f4,80(a0)
    2ab4:	c4880054 	lwc1	$f8,84(a0)
    2ab8:	c4900058 	lwc1	$f16,88(a0)
    2abc:	46002182 	mul.s	$f6,$f4,$f0
    2ac0:	3c0e0601 	lui	t6,0x601
    2ac4:	25ce91e4 	addiu	t6,t6,-28188
    2ac8:	46004282 	mul.s	$f10,$f8,$f0
    2acc:	24060002 	li	a2,2
    2ad0:	24070003 	li	a3,3
    2ad4:	46008482 	mul.s	$f18,$f16,$f0
    2ad8:	e4860050 	swc1	$f6,80(a0)
    2adc:	e48a0054 	swc1	$f10,84(a0)
    2ae0:	e4920058 	swc1	$f18,88(a0)
    2ae4:	0c000000 	jal	0 <DemoGt_Destroy>
    2ae8:	afae0010 	sw	t6,16(sp)
    2aec:	8fbf001c 	lw	ra,28(sp)
    2af0:	27bd0020 	addiu	sp,sp,32
    2af4:	03e00008 	jr	ra
    2af8:	00000000 	nop

00002afc <func_8098016C>:
    2afc:	afa40000 	sw	a0,0(sp)
    2b00:	03e00008 	jr	ra
    2b04:	afa50004 	sw	a1,4(sp)

00002b08 <func_80980178>:
    2b08:	afa40000 	sw	a0,0(sp)
    2b0c:	03e00008 	jr	ra
    2b10:	afa50004 	sw	a1,4(sp)

00002b14 <func_80980184>:
    2b14:	27bdffc0 	addiu	sp,sp,-64
    2b18:	afbf0014 	sw	ra,20(sp)
    2b1c:	94a21d74 	lhu	v0,7540(a1)
    2b20:	28410404 	slti	at,v0,1028
    2b24:	1420001c 	bnez	at,2b98 <func_80980184+0x84>
    2b28:	28410407 	slti	at,v0,1031
    2b2c:	5020001b 	beqzl	at,2b9c <func_80980184+0x88>
    2b30:	8fbf0014 	lw	ra,20(sp)
    2b34:	c4840024 	lwc1	$f4,36(a0)
    2b38:	3c014377 	lui	at,0x4377
    2b3c:	44814000 	mtc1	at,$f8
    2b40:	e7a40024 	swc1	$f4,36(sp)
    2b44:	c4860028 	lwc1	$f6,40(a0)
    2b48:	3c030000 	lui	v1,0x0
    2b4c:	8c630000 	lw	v1,0(v1)
    2b50:	46083280 	add.s	$f10,$f6,$f8
    2b54:	24060003 	li	a2,3
    2b58:	c7b20024 	lwc1	$f18,36(sp)
    2b5c:	e7aa0028 	swc1	$f10,40(sp)
    2b60:	c490002c 	lwc1	$f16,44(a0)
    2b64:	00a02025 	move	a0,a1
    2b68:	14600006 	bnez	v1,2b84 <func_80980184+0x70>
    2b6c:	e7b0002c 	swc1	$f16,44(sp)
    2b70:	0c000000 	jal	0 <DemoGt_Destroy>
    2b74:	27a50024 	addiu	a1,sp,36
    2b78:	3c010000 	lui	at,0x0
    2b7c:	10000006 	b	2b98 <func_80980184+0x84>
    2b80:	ac220000 	sw	v0,0(at)
    2b84:	e4720024 	swc1	$f18,36(v1)
    2b88:	c7a40028 	lwc1	$f4,40(sp)
    2b8c:	e4640028 	swc1	$f4,40(v1)
    2b90:	c7a6002c 	lwc1	$f6,44(sp)
    2b94:	e466002c 	swc1	$f6,44(v1)
    2b98:	8fbf0014 	lw	ra,20(sp)
    2b9c:	27bd0040 	addiu	sp,sp,64
    2ba0:	03e00008 	jr	ra
    2ba4:	00000000 	nop

00002ba8 <func_80980218>:
    2ba8:	27bdffc0 	addiu	sp,sp,-64
    2bac:	afbf0014 	sw	ra,20(sp)
    2bb0:	94a21d74 	lhu	v0,7540(a1)
    2bb4:	284103e6 	slti	at,v0,998
    2bb8:	1420001c 	bnez	at,2c2c <func_80980218+0x84>
    2bbc:	284103e9 	slti	at,v0,1001
    2bc0:	5020001b 	beqzl	at,2c30 <func_80980218+0x88>
    2bc4:	8fbf0014 	lw	ra,20(sp)
    2bc8:	c4840008 	lwc1	$f4,8(a0)
    2bcc:	3c014218 	lui	at,0x4218
    2bd0:	44814000 	mtc1	at,$f8
    2bd4:	e7a40024 	swc1	$f4,36(sp)
    2bd8:	c486000c 	lwc1	$f6,12(a0)
    2bdc:	3c030000 	lui	v1,0x0
    2be0:	8c630000 	lw	v1,0(v1)
    2be4:	46083280 	add.s	$f10,$f6,$f8
    2be8:	24060004 	li	a2,4
    2bec:	c7b20024 	lwc1	$f18,36(sp)
    2bf0:	e7aa0028 	swc1	$f10,40(sp)
    2bf4:	c4900010 	lwc1	$f16,16(a0)
    2bf8:	00a02025 	move	a0,a1
    2bfc:	14600006 	bnez	v1,2c18 <func_80980218+0x70>
    2c00:	e7b0002c 	swc1	$f16,44(sp)
    2c04:	0c000000 	jal	0 <DemoGt_Destroy>
    2c08:	27a50024 	addiu	a1,sp,36
    2c0c:	3c010000 	lui	at,0x0
    2c10:	10000006 	b	2c2c <func_80980218+0x84>
    2c14:	ac220000 	sw	v0,0(at)
    2c18:	e4720024 	swc1	$f18,36(v1)
    2c1c:	c7a40028 	lwc1	$f4,40(sp)
    2c20:	e4640028 	swc1	$f4,40(v1)
    2c24:	c7a6002c 	lwc1	$f6,44(sp)
    2c28:	e466002c 	swc1	$f6,44(v1)
    2c2c:	8fbf0014 	lw	ra,20(sp)
    2c30:	27bd0040 	addiu	sp,sp,64
    2c34:	03e00008 	jr	ra
    2c38:	00000000 	nop

00002c3c <func_809802AC>:
    2c3c:	27bdff98 	addiu	sp,sp,-104
    2c40:	3c0f0000 	lui	t7,0x0
    2c44:	afbf0024 	sw	ra,36(sp)
    2c48:	afa40068 	sw	a0,104(sp)
    2c4c:	afa5006c 	sw	a1,108(sp)
    2c50:	25ef0000 	addiu	t7,t7,0
    2c54:	8df90000 	lw	t9,0(t7)
    2c58:	94a21d74 	lhu	v0,7540(a1)
    2c5c:	27a6003c 	addiu	a2,sp,60
    2c60:	acd90000 	sw	t9,0(a2)
    2c64:	8df80004 	lw	t8,4(t7)
    2c68:	2841006e 	slti	at,v0,110
    2c6c:	acd80004 	sw	t8,4(a2)
    2c70:	8df90008 	lw	t9,8(t7)
    2c74:	1420001d 	bnez	at,2cec <func_809802AC+0xb0>
    2c78:	acd90008 	sw	t9,8(a2)
    2c7c:	2841008c 	slti	at,v0,140
    2c80:	1020001a 	beqz	at,2cec <func_809802AC+0xb0>
    2c84:	8fa20068 	lw	v0,104(sp)
    2c88:	3c0142c8 	lui	at,0x42c8
    2c8c:	44813000 	mtc1	at,$f6
    2c90:	c4440024 	lwc1	$f4,36(v0)
    2c94:	3c010000 	lui	at,0x0
    2c98:	c4300000 	lwc1	$f16,0(at)
    2c9c:	46062201 	sub.s	$f8,$f4,$f6
    2ca0:	3c010000 	lui	at,0x0
    2ca4:	c4260000 	lwc1	$f6,0(at)
    2ca8:	24080003 	li	t0,3
    2cac:	e7a80050 	swc1	$f8,80(sp)
    2cb0:	c44a0028 	lwc1	$f10,40(v0)
    2cb4:	24090014 	li	t1,20
    2cb8:	24420024 	addiu	v0,v0,36
    2cbc:	46105480 	add.s	$f18,$f10,$f16
    2cc0:	8fa4006c 	lw	a0,108(sp)
    2cc4:	27a50050 	addiu	a1,sp,80
    2cc8:	3c074080 	lui	a3,0x4080
    2ccc:	e7b20054 	swc1	$f18,84(sp)
    2cd0:	c4440008 	lwc1	$f4,8(v0)
    2cd4:	afa90018 	sw	t1,24(sp)
    2cd8:	afa00014 	sw	zero,20(sp)
    2cdc:	46062201 	sub.s	$f8,$f4,$f6
    2ce0:	afa80010 	sw	t0,16(sp)
    2ce4:	0c000000 	jal	0 <DemoGt_Destroy>
    2ce8:	e7a80058 	swc1	$f8,88(sp)
    2cec:	8fbf0024 	lw	ra,36(sp)
    2cf0:	27bd0068 	addiu	sp,sp,104
    2cf4:	03e00008 	jr	ra
    2cf8:	00000000 	nop

00002cfc <func_8098036C>:
    2cfc:	27bdff98 	addiu	sp,sp,-104
    2d00:	3c0f0000 	lui	t7,0x0
    2d04:	afbf0024 	sw	ra,36(sp)
    2d08:	afa40068 	sw	a0,104(sp)
    2d0c:	afa5006c 	sw	a1,108(sp)
    2d10:	25ef0000 	addiu	t7,t7,0
    2d14:	8df90000 	lw	t9,0(t7)
    2d18:	94a21d74 	lhu	v0,7540(a1)
    2d1c:	27a6003c 	addiu	a2,sp,60
    2d20:	acd90000 	sw	t9,0(a2)
    2d24:	8df80004 	lw	t8,4(t7)
    2d28:	2841011d 	slti	at,v0,285
    2d2c:	acd80004 	sw	t8,4(a2)
    2d30:	8df90008 	lw	t9,8(t7)
    2d34:	1420001e 	bnez	at,2db0 <func_8098036C+0xb4>
    2d38:	acd90008 	sw	t9,8(a2)
    2d3c:	284101a5 	slti	at,v0,421
    2d40:	1020001b 	beqz	at,2db0 <func_8098036C+0xb4>
    2d44:	8fa20068 	lw	v0,104(sp)
    2d48:	3c01443e 	lui	at,0x443e
    2d4c:	44813000 	mtc1	at,$f6
    2d50:	c4440024 	lwc1	$f4,36(v0)
    2d54:	3c014220 	lui	at,0x4220
    2d58:	44818000 	mtc1	at,$f16
    2d5c:	46062200 	add.s	$f8,$f4,$f6
    2d60:	3c014370 	lui	at,0x4370
    2d64:	44813000 	mtc1	at,$f6
    2d68:	24080006 	li	t0,6
    2d6c:	e7a80050 	swc1	$f8,80(sp)
    2d70:	c44a0028 	lwc1	$f10,40(v0)
    2d74:	24090001 	li	t1,1
    2d78:	240a0023 	li	t2,35
    2d7c:	46105481 	sub.s	$f18,$f10,$f16
    2d80:	24420024 	addiu	v0,v0,36
    2d84:	8fa4006c 	lw	a0,108(sp)
    2d88:	27a50050 	addiu	a1,sp,80
    2d8c:	e7b20054 	swc1	$f18,84(sp)
    2d90:	c4440008 	lwc1	$f4,8(v0)
    2d94:	afaa0018 	sw	t2,24(sp)
    2d98:	afa90014 	sw	t1,20(sp)
    2d9c:	46062201 	sub.s	$f8,$f4,$f6
    2da0:	afa80010 	sw	t0,16(sp)
    2da4:	3c0740c0 	lui	a3,0x40c0
    2da8:	0c000000 	jal	0 <DemoGt_Destroy>
    2dac:	e7a80058 	swc1	$f8,88(sp)
    2db0:	8fbf0024 	lw	ra,36(sp)
    2db4:	27bd0068 	addiu	sp,sp,104
    2db8:	03e00008 	jr	ra
    2dbc:	00000000 	nop

00002dc0 <func_80980430>:
    2dc0:	27bdff98 	addiu	sp,sp,-104
    2dc4:	3c0f0000 	lui	t7,0x0
    2dc8:	afbf0024 	sw	ra,36(sp)
    2dcc:	afa40068 	sw	a0,104(sp)
    2dd0:	afa5006c 	sw	a1,108(sp)
    2dd4:	25ef0000 	addiu	t7,t7,0
    2dd8:	8df90000 	lw	t9,0(t7)
    2ddc:	94a21d74 	lhu	v0,7540(a1)
    2de0:	27a6003c 	addiu	a2,sp,60
    2de4:	acd90000 	sw	t9,0(a2)
    2de8:	8df80004 	lw	t8,4(t7)
    2dec:	284102c6 	slti	at,v0,710
    2df0:	3c080000 	lui	t0,0x0
    2df4:	acd80004 	sw	t8,4(a2)
    2df8:	8df90008 	lw	t9,8(t7)
    2dfc:	10200006 	beqz	at,2e18 <func_80980430+0x58>
    2e00:	acd90008 	sw	t9,8(a2)
    2e04:	8d080000 	lw	t0,0(t0)
    2e08:	24010008 	li	at,8
    2e0c:	85091456 	lh	t1,5206(t0)
    2e10:	5521001d 	bnel	t1,at,2e88 <func_80980430+0xc8>
    2e14:	8fbf0024 	lw	ra,36(sp)
    2e18:	8fa20068 	lw	v0,104(sp)
    2e1c:	3c01443e 	lui	at,0x443e
    2e20:	44813000 	mtc1	at,$f6
    2e24:	c4440024 	lwc1	$f4,36(v0)
    2e28:	3c014220 	lui	at,0x4220
    2e2c:	44818000 	mtc1	at,$f16
    2e30:	46062200 	add.s	$f8,$f4,$f6
    2e34:	3c014370 	lui	at,0x4370
    2e38:	44813000 	mtc1	at,$f6
    2e3c:	240a0006 	li	t2,6
    2e40:	e7a80050 	swc1	$f8,80(sp)
    2e44:	c44a0028 	lwc1	$f10,40(v0)
    2e48:	240b0001 	li	t3,1
    2e4c:	240c0023 	li	t4,35
    2e50:	46105481 	sub.s	$f18,$f10,$f16
    2e54:	8fa4006c 	lw	a0,108(sp)
    2e58:	27a50050 	addiu	a1,sp,80
    2e5c:	3c0740c0 	lui	a3,0x40c0
    2e60:	e7b20054 	swc1	$f18,84(sp)
    2e64:	c444002c 	lwc1	$f4,44(v0)
    2e68:	afac0018 	sw	t4,24(sp)
    2e6c:	afab0014 	sw	t3,20(sp)
    2e70:	46062201 	sub.s	$f8,$f4,$f6
    2e74:	afaa0010 	sw	t2,16(sp)
    2e78:	24420024 	addiu	v0,v0,36
    2e7c:	0c000000 	jal	0 <DemoGt_Destroy>
    2e80:	e7a80058 	swc1	$f8,88(sp)
    2e84:	8fbf0024 	lw	ra,36(sp)
    2e88:	27bd0068 	addiu	sp,sp,104
    2e8c:	03e00008 	jr	ra
    2e90:	00000000 	nop

00002e94 <func_80980504>:
    2e94:	27bdff98 	addiu	sp,sp,-104
    2e98:	3c0f0000 	lui	t7,0x0
    2e9c:	afbf0024 	sw	ra,36(sp)
    2ea0:	afa40068 	sw	a0,104(sp)
    2ea4:	afa5006c 	sw	a1,108(sp)
    2ea8:	25ef0000 	addiu	t7,t7,0
    2eac:	8df90000 	lw	t9,0(t7)
    2eb0:	94a21d74 	lhu	v0,7540(a1)
    2eb4:	27a6003c 	addiu	a2,sp,60
    2eb8:	acd90000 	sw	t9,0(a2)
    2ebc:	8df80004 	lw	t8,4(t7)
    2ec0:	284102c1 	slti	at,v0,705
    2ec4:	3c080000 	lui	t0,0x0
    2ec8:	acd80004 	sw	t8,4(a2)
    2ecc:	8df90008 	lw	t9,8(t7)
    2ed0:	10200006 	beqz	at,2eec <func_80980504+0x58>
    2ed4:	acd90008 	sw	t9,8(a2)
    2ed8:	8d080000 	lw	t0,0(t0)
    2edc:	24010009 	li	at,9
    2ee0:	85091456 	lh	t1,5206(t0)
    2ee4:	5521001d 	bnel	t1,at,2f5c <func_80980504+0xc8>
    2ee8:	8fbf0024 	lw	ra,36(sp)
    2eec:	8fa20068 	lw	v0,104(sp)
    2ef0:	3c010000 	lui	at,0x0
    2ef4:	c4260000 	lwc1	$f6,0(at)
    2ef8:	c4440024 	lwc1	$f4,36(v0)
    2efc:	3c014270 	lui	at,0x4270
    2f00:	44818000 	mtc1	at,$f16
    2f04:	46062200 	add.s	$f8,$f4,$f6
    2f08:	3c0143c3 	lui	at,0x43c3
    2f0c:	44813000 	mtc1	at,$f6
    2f10:	240a0006 	li	t2,6
    2f14:	e7a80050 	swc1	$f8,80(sp)
    2f18:	c44a0028 	lwc1	$f10,40(v0)
    2f1c:	240b0002 	li	t3,2
    2f20:	240c0023 	li	t4,35
    2f24:	46105480 	add.s	$f18,$f10,$f16
    2f28:	8fa4006c 	lw	a0,108(sp)
    2f2c:	27a50050 	addiu	a1,sp,80
    2f30:	3c0740c0 	lui	a3,0x40c0
    2f34:	e7b20054 	swc1	$f18,84(sp)
    2f38:	c444002c 	lwc1	$f4,44(v0)
    2f3c:	afac0018 	sw	t4,24(sp)
    2f40:	afab0014 	sw	t3,20(sp)
    2f44:	46062200 	add.s	$f8,$f4,$f6
    2f48:	afaa0010 	sw	t2,16(sp)
    2f4c:	24420024 	addiu	v0,v0,36
    2f50:	0c000000 	jal	0 <DemoGt_Destroy>
    2f54:	e7a80058 	swc1	$f8,88(sp)
    2f58:	8fbf0024 	lw	ra,36(sp)
    2f5c:	27bd0068 	addiu	sp,sp,104
    2f60:	03e00008 	jr	ra
    2f64:	00000000 	nop

00002f68 <func_809805D8>:
    2f68:	27bdff98 	addiu	sp,sp,-104
    2f6c:	3c0f0000 	lui	t7,0x0
    2f70:	afbf0024 	sw	ra,36(sp)
    2f74:	afa40068 	sw	a0,104(sp)
    2f78:	afa5006c 	sw	a1,108(sp)
    2f7c:	25ef0000 	addiu	t7,t7,0
    2f80:	8df90000 	lw	t9,0(t7)
    2f84:	94a21d74 	lhu	v0,7540(a1)
    2f88:	27a6003c 	addiu	a2,sp,60
    2f8c:	acd90000 	sw	t9,0(a2)
    2f90:	8df80004 	lw	t8,4(t7)
    2f94:	284102e4 	slti	at,v0,740
    2f98:	3c080000 	lui	t0,0x0
    2f9c:	acd80004 	sw	t8,4(a2)
    2fa0:	8df90008 	lw	t9,8(t7)
    2fa4:	14200004 	bnez	at,2fb8 <func_809805D8+0x50>
    2fa8:	acd90008 	sw	t9,8(a2)
    2fac:	2841030d 	slti	at,v0,781
    2fb0:	54200007 	bnezl	at,2fd0 <func_809805D8+0x68>
    2fb4:	8fa20068 	lw	v0,104(sp)
    2fb8:	8d080000 	lw	t0,0(t0)
    2fbc:	2401000b 	li	at,11
    2fc0:	85091456 	lh	t1,5206(t0)
    2fc4:	5521001d 	bnel	t1,at,303c <func_809805D8+0xd4>
    2fc8:	8fbf0024 	lw	ra,36(sp)
    2fcc:	8fa20068 	lw	v0,104(sp)
    2fd0:	3c010000 	lui	at,0x0
    2fd4:	c4260000 	lwc1	$f6,0(at)
    2fd8:	c4440008 	lwc1	$f4,8(v0)
    2fdc:	3c0142dc 	lui	at,0x42dc
    2fe0:	44818000 	mtc1	at,$f16
    2fe4:	46062200 	add.s	$f8,$f4,$f6
    2fe8:	3c014248 	lui	at,0x4248
    2fec:	44813000 	mtc1	at,$f6
    2ff0:	240a0006 	li	t2,6
    2ff4:	e7a80050 	swc1	$f8,80(sp)
    2ff8:	c44a000c 	lwc1	$f10,12(v0)
    2ffc:	240b0004 	li	t3,4
    3000:	240c0023 	li	t4,35
    3004:	46105481 	sub.s	$f18,$f10,$f16
    3008:	8fa4006c 	lw	a0,108(sp)
    300c:	27a50050 	addiu	a1,sp,80
    3010:	3c0740c0 	lui	a3,0x40c0
    3014:	e7b20054 	swc1	$f18,84(sp)
    3018:	c4440010 	lwc1	$f4,16(v0)
    301c:	afac0018 	sw	t4,24(sp)
    3020:	afab0014 	sw	t3,20(sp)
    3024:	46062200 	add.s	$f8,$f4,$f6
    3028:	afaa0010 	sw	t2,16(sp)
    302c:	24420008 	addiu	v0,v0,8
    3030:	0c000000 	jal	0 <DemoGt_Destroy>
    3034:	e7a80058 	swc1	$f8,88(sp)
    3038:	8fbf0024 	lw	ra,36(sp)
    303c:	27bd0068 	addiu	sp,sp,104
    3040:	03e00008 	jr	ra
    3044:	00000000 	nop

00003048 <func_809806B8>:
    3048:	27bdff98 	addiu	sp,sp,-104
    304c:	3c0f0000 	lui	t7,0x0
    3050:	afbf0024 	sw	ra,36(sp)
    3054:	afa40068 	sw	a0,104(sp)
    3058:	afa5006c 	sw	a1,108(sp)
    305c:	25ef0000 	addiu	t7,t7,0
    3060:	8df90000 	lw	t9,0(t7)
    3064:	94a21d74 	lhu	v0,7540(a1)
    3068:	27a6003c 	addiu	a2,sp,60
    306c:	acd90000 	sw	t9,0(a2)
    3070:	8df80004 	lw	t8,4(t7)
    3074:	284103c5 	slti	at,v0,965
    3078:	3c080000 	lui	t0,0x0
    307c:	acd80004 	sw	t8,4(a2)
    3080:	8df90008 	lw	t9,8(t7)
    3084:	10200006 	beqz	at,30a0 <func_809806B8+0x58>
    3088:	acd90008 	sw	t9,8(a2)
    308c:	8d080000 	lw	t0,0(t0)
    3090:	2401000c 	li	at,12
    3094:	85091456 	lh	t1,5206(t0)
    3098:	5521001d 	bnel	t1,at,3110 <func_809806B8+0xc8>
    309c:	8fbf0024 	lw	ra,36(sp)
    30a0:	8fa20068 	lw	v0,104(sp)
    30a4:	3c0143e6 	lui	at,0x43e6
    30a8:	44813000 	mtc1	at,$f6
    30ac:	c4440024 	lwc1	$f4,36(v0)
    30b0:	3c014270 	lui	at,0x4270
    30b4:	44818000 	mtc1	at,$f16
    30b8:	46062200 	add.s	$f8,$f4,$f6
    30bc:	3c01443e 	lui	at,0x443e
    30c0:	44813000 	mtc1	at,$f6
    30c4:	240a0006 	li	t2,6
    30c8:	e7a80050 	swc1	$f8,80(sp)
    30cc:	c44a0028 	lwc1	$f10,40(v0)
    30d0:	240b0003 	li	t3,3
    30d4:	240c0023 	li	t4,35
    30d8:	46105480 	add.s	$f18,$f10,$f16
    30dc:	8fa4006c 	lw	a0,108(sp)
    30e0:	27a50050 	addiu	a1,sp,80
    30e4:	3c0740c0 	lui	a3,0x40c0
    30e8:	e7b20054 	swc1	$f18,84(sp)
    30ec:	c444002c 	lwc1	$f4,44(v0)
    30f0:	afac0018 	sw	t4,24(sp)
    30f4:	afab0014 	sw	t3,20(sp)
    30f8:	46062200 	add.s	$f8,$f4,$f6
    30fc:	afaa0010 	sw	t2,16(sp)
    3100:	24420024 	addiu	v0,v0,36
    3104:	0c000000 	jal	0 <DemoGt_Destroy>
    3108:	e7a80058 	swc1	$f8,88(sp)
    310c:	8fbf0024 	lw	ra,36(sp)
    3110:	27bd0068 	addiu	sp,sp,104
    3114:	03e00008 	jr	ra
    3118:	00000000 	nop

0000311c <func_8098078C>:
    311c:	27bdff98 	addiu	sp,sp,-104
    3120:	3c0f0000 	lui	t7,0x0
    3124:	afbf0024 	sw	ra,36(sp)
    3128:	afa40068 	sw	a0,104(sp)
    312c:	afa5006c 	sw	a1,108(sp)
    3130:	25ef0000 	addiu	t7,t7,0
    3134:	8df90000 	lw	t9,0(t7)
    3138:	94a21d74 	lhu	v0,7540(a1)
    313c:	27a6003c 	addiu	a2,sp,60
    3140:	acd90000 	sw	t9,0(a2)
    3144:	8df80004 	lw	t8,4(t7)
    3148:	284103ac 	slti	at,v0,940
    314c:	3c080000 	lui	t0,0x0
    3150:	acd80004 	sw	t8,4(a2)
    3154:	8df90008 	lw	t9,8(t7)
    3158:	10200006 	beqz	at,3174 <func_8098078C+0x58>
    315c:	acd90008 	sw	t9,8(a2)
    3160:	8d080000 	lw	t0,0(t0)
    3164:	2401000e 	li	at,14
    3168:	85091456 	lh	t1,5206(t0)
    316c:	5521001c 	bnel	t1,at,31e0 <func_8098078C+0xc4>
    3170:	8fbf0024 	lw	ra,36(sp)
    3174:	8fa20068 	lw	v0,104(sp)
    3178:	3c0143b4 	lui	at,0x43b4
    317c:	44813000 	mtc1	at,$f6
    3180:	c4440024 	lwc1	$f4,36(v0)
    3184:	3c01428c 	lui	at,0x428c
    3188:	44818000 	mtc1	at,$f16
    318c:	46062200 	add.s	$f8,$f4,$f6
    3190:	3c014420 	lui	at,0x4420
    3194:	44813000 	mtc1	at,$f6
    3198:	240a0006 	li	t2,6
    319c:	e7a80050 	swc1	$f8,80(sp)
    31a0:	c44a0028 	lwc1	$f10,40(v0)
    31a4:	240b0023 	li	t3,35
    31a8:	8fa4006c 	lw	a0,108(sp)
    31ac:	46105480 	add.s	$f18,$f10,$f16
    31b0:	27a50050 	addiu	a1,sp,80
    31b4:	3c0740c0 	lui	a3,0x40c0
    31b8:	24420024 	addiu	v0,v0,36
    31bc:	e7b20054 	swc1	$f18,84(sp)
    31c0:	c4440008 	lwc1	$f4,8(v0)
    31c4:	afab0018 	sw	t3,24(sp)
    31c8:	afa00014 	sw	zero,20(sp)
    31cc:	46062201 	sub.s	$f8,$f4,$f6
    31d0:	afaa0010 	sw	t2,16(sp)
    31d4:	0c000000 	jal	0 <DemoGt_Destroy>
    31d8:	e7a80058 	swc1	$f8,88(sp)
    31dc:	8fbf0024 	lw	ra,36(sp)
    31e0:	27bd0068 	addiu	sp,sp,104
    31e4:	03e00008 	jr	ra
    31e8:	00000000 	nop

000031ec <func_8098085C>:
    31ec:	27bdffc0 	addiu	sp,sp,-64
    31f0:	afbf0014 	sw	ra,20(sp)
    31f4:	afa40040 	sw	a0,64(sp)
    31f8:	94a31d74 	lhu	v1,7540(a1)
    31fc:	2401003a 	li	at,58
    3200:	00a03825 	move	a3,a1
    3204:	10610006 	beq	v1,at,3220 <func_8098085C+0x34>
    3208:	3c0e0000 	lui	t6,0x0
    320c:	8dce0000 	lw	t6,0(t6)
    3210:	24010001 	li	at,1
    3214:	85cf1456 	lh	t7,5206(t6)
    3218:	55e10019 	bnel	t7,at,3280 <func_8098085C+0x94>
    321c:	24010050 	li	at,80
    3220:	8fa20040 	lw	v0,64(sp)
    3224:	3c014461 	lui	at,0x4461
    3228:	44813000 	mtc1	at,$f6
    322c:	c4440024 	lwc1	$f4,36(v0)
    3230:	3c014248 	lui	at,0x4248
    3234:	44818000 	mtc1	at,$f16
    3238:	46062200 	add.s	$f8,$f4,$f6
    323c:	3c0142ba 	lui	at,0x42ba
    3240:	44813000 	mtc1	at,$f6
    3244:	00e02025 	move	a0,a3
    3248:	e7a80028 	swc1	$f8,40(sp)
    324c:	c44a0028 	lwc1	$f10,40(v0)
    3250:	27a50028 	addiu	a1,sp,40
    3254:	3c064000 	lui	a2,0x4000
    3258:	46105481 	sub.s	$f18,$f10,$f16
    325c:	24420024 	addiu	v0,v0,36
    3260:	e7b2002c 	swc1	$f18,44(sp)
    3264:	c4440008 	lwc1	$f4,8(v0)
    3268:	46062200 	add.s	$f8,$f4,$f6
    326c:	0c000000 	jal	0 <DemoGt_Destroy>
    3270:	e7a80030 	swc1	$f8,48(sp)
    3274:	10000033 	b	3344 <func_8098085C+0x158>
    3278:	8fbf0014 	lw	ra,20(sp)
    327c:	24010050 	li	at,80
    3280:	14610018 	bne	v1,at,32e4 <func_8098085C+0xf8>
    3284:	8fa20040 	lw	v0,64(sp)
    3288:	3c010000 	lui	at,0x0
    328c:	c4300000 	lwc1	$f16,0(at)
    3290:	c44a0024 	lwc1	$f10,36(v0)
    3294:	3c014348 	lui	at,0x4348
    3298:	44813000 	mtc1	at,$f6
    329c:	46105480 	add.s	$f18,$f10,$f16
    32a0:	3c014214 	lui	at,0x4214
    32a4:	44818000 	mtc1	at,$f16
    32a8:	3c063f66 	lui	a2,0x3f66
    32ac:	e7b20028 	swc1	$f18,40(sp)
    32b0:	c4440028 	lwc1	$f4,40(v0)
    32b4:	24420024 	addiu	v0,v0,36
    32b8:	34c66666 	ori	a2,a2,0x6666
    32bc:	46062200 	add.s	$f8,$f4,$f6
    32c0:	00e02025 	move	a0,a3
    32c4:	27a50028 	addiu	a1,sp,40
    32c8:	e7a8002c 	swc1	$f8,44(sp)
    32cc:	c44a0008 	lwc1	$f10,8(v0)
    32d0:	46105481 	sub.s	$f18,$f10,$f16
    32d4:	0c000000 	jal	0 <DemoGt_Destroy>
    32d8:	e7b20030 	swc1	$f18,48(sp)
    32dc:	10000019 	b	3344 <func_8098085C+0x158>
    32e0:	8fbf0014 	lw	ra,20(sp)
    32e4:	2401005a 	li	at,90
    32e8:	14610015 	bne	v1,at,3340 <func_8098085C+0x154>
    32ec:	8fa20040 	lw	v0,64(sp)
    32f0:	3c01435c 	lui	at,0x435c
    32f4:	44813000 	mtc1	at,$f6
    32f8:	c4440024 	lwc1	$f4,36(v0)
    32fc:	3c010000 	lui	at,0x0
    3300:	c4300000 	lwc1	$f16,0(at)
    3304:	46062201 	sub.s	$f8,$f4,$f6
    3308:	3c010000 	lui	at,0x0
    330c:	c4260000 	lwc1	$f6,0(at)
    3310:	24420024 	addiu	v0,v0,36
    3314:	e7a80028 	swc1	$f8,40(sp)
    3318:	c44a0004 	lwc1	$f10,4(v0)
    331c:	00e02025 	move	a0,a3
    3320:	27a50028 	addiu	a1,sp,40
    3324:	46105480 	add.s	$f18,$f10,$f16
    3328:	3c064000 	lui	a2,0x4000
    332c:	e7b2002c 	swc1	$f18,44(sp)
    3330:	c4440008 	lwc1	$f4,8(v0)
    3334:	46062201 	sub.s	$f8,$f4,$f6
    3338:	0c000000 	jal	0 <DemoGt_Destroy>
    333c:	e7a80030 	swc1	$f8,48(sp)
    3340:	8fbf0014 	lw	ra,20(sp)
    3344:	27bd0040 	addiu	sp,sp,64
    3348:	03e00008 	jr	ra
    334c:	00000000 	nop

00003350 <func_809809C0>:
    3350:	27bdff90 	addiu	sp,sp,-112
    3354:	afbf001c 	sw	ra,28(sp)
    3358:	afa50074 	sw	a1,116(sp)
    335c:	94a21d74 	lhu	v0,7540(a1)
    3360:	3c060001 	lui	a2,0x1
    3364:	00c53021 	addu	a2,a2,a1
    3368:	284101d6 	slti	at,v0,470
    336c:	14200003 	bnez	at,337c <func_809809C0+0x2c>
    3370:	8cc61de4 	lw	a2,7652(a2)
    3374:	284101e1 	slti	at,v0,481
    3378:	14200005 	bnez	at,3390 <func_809809C0+0x40>
    337c:	3c0f0000 	lui	t7,0x0
    3380:	8def0000 	lw	t7,0(t7)
    3384:	24010003 	li	at,3
    3388:	85f81456 	lh	t8,5206(t7)
    338c:	17010031 	bne	t8,at,3454 <func_809809C0+0x104>
    3390:	3c080000 	lui	t0,0x0
    3394:	25080000 	addiu	t0,t0,0
    3398:	8d0a0000 	lw	t2,0(t0)
    339c:	27b90040 	addiu	t9,sp,64
    33a0:	8d090004 	lw	t1,4(t0)
    33a4:	af2a0000 	sw	t2,0(t9)
    33a8:	8d0a0008 	lw	t2,8(t0)
    33ac:	3c0b0000 	lui	t3,0x0
    33b0:	256b0000 	addiu	t3,t3,0
    33b4:	af290004 	sw	t1,4(t9)
    33b8:	af2a0008 	sw	t2,8(t9)
    33bc:	8d6d0000 	lw	t5,0(t3)
    33c0:	27a70034 	addiu	a3,sp,52
    33c4:	3c010000 	lui	at,0x0
    33c8:	aced0000 	sw	t5,0(a3)
    33cc:	8d6c0004 	lw	t4,4(t3)
    33d0:	27a50054 	addiu	a1,sp,84
    33d4:	acec0004 	sw	t4,4(a3)
    33d8:	8d6d0008 	lw	t5,8(t3)
    33dc:	aced0008 	sw	t5,8(a3)
    33e0:	c4260000 	lwc1	$f6,0(at)
    33e4:	c4840024 	lwc1	$f4,36(a0)
    33e8:	3c014270 	lui	at,0x4270
    33ec:	44818000 	mtc1	at,$f16
    33f0:	46062200 	add.s	$f8,$f4,$f6
    33f4:	3c0141b8 	lui	at,0x41b8
    33f8:	44813000 	mtc1	at,$f6
    33fc:	2401000c 	li	at,12
    3400:	00c1001a 	div	zero,a2,at
    3404:	e7a80054 	swc1	$f8,84(sp)
    3408:	c48a0028 	lwc1	$f10,40(a0)
    340c:	00001010 	mfhi	v0
    3410:	00021823 	negu	v1,v0
    3414:	46105480 	add.s	$f18,$f10,$f16
    3418:	3c014000 	lui	at,0x4000
    341c:	e7b20058 	swc1	$f18,88(sp)
    3420:	c484002c 	lwc1	$f4,44(a0)
    3424:	8fa40074 	lw	a0,116(sp)
    3428:	46062200 	add.s	$f8,$f4,$f6
    342c:	04400003 	bltz	v0,343c <func_809809C0+0xec>
    3430:	e7a8005c 	swc1	$f8,92(sp)
    3434:	10000001 	b	343c <func_809809C0+0xec>
    3438:	00401825 	move	v1,v0
    343c:	54600006 	bnezl	v1,3458 <func_809809C0+0x108>
    3440:	8fbf001c 	lw	ra,28(sp)
    3444:	44815000 	mtc1	at,$f10
    3448:	27a60040 	addiu	a2,sp,64
    344c:	0c000000 	jal	0 <DemoGt_Destroy>
    3450:	e7aa0010 	swc1	$f10,16(sp)
    3454:	8fbf001c 	lw	ra,28(sp)
    3458:	27bd0070 	addiu	sp,sp,112
    345c:	03e00008 	jr	ra
    3460:	00000000 	nop

00003464 <func_80980AD4>:
    3464:	27bdffc8 	addiu	sp,sp,-56
    3468:	afbf0014 	sw	ra,20(sp)
    346c:	94a21d74 	lhu	v0,7540(a1)
    3470:	240101dd 	li	at,477
    3474:	00a03825 	move	a3,a1
    3478:	10410005 	beq	v0,at,3490 <func_80980AD4+0x2c>
    347c:	3c0e0000 	lui	t6,0x0
    3480:	8dce0000 	lw	t6,0(t6)
    3484:	24010001 	li	at,1
    3488:	85cf1458 	lh	t7,5208(t6)
    348c:	15e10016 	bne	t7,at,34e8 <func_80980AD4+0x84>
    3490:	3c010000 	lui	at,0x0
    3494:	c4260000 	lwc1	$f6,0(at)
    3498:	c4840024 	lwc1	$f4,36(a0)
    349c:	3c014270 	lui	at,0x4270
    34a0:	44818000 	mtc1	at,$f16
    34a4:	46062200 	add.s	$f8,$f4,$f6
    34a8:	3c0141b8 	lui	at,0x41b8
    34ac:	44813000 	mtc1	at,$f6
    34b0:	00e02825 	move	a1,a3
    34b4:	e7a8001c 	swc1	$f8,28(sp)
    34b8:	c48a0028 	lwc1	$f10,40(a0)
    34bc:	27a6001c 	addiu	a2,sp,28
    34c0:	46105480 	add.s	$f18,$f10,$f16
    34c4:	e7b20020 	swc1	$f18,32(sp)
    34c8:	c484002c 	lwc1	$f4,44(a0)
    34cc:	afa7003c 	sw	a3,60(sp)
    34d0:	46062200 	add.s	$f8,$f4,$f6
    34d4:	0c000000 	jal	0 <DemoGt_Destroy>
    34d8:	e7a80024 	swc1	$f8,36(sp)
    34dc:	8fa4003c 	lw	a0,60(sp)
    34e0:	0c000000 	jal	0 <DemoGt_Destroy>
    34e4:	27a5001c 	addiu	a1,sp,28
    34e8:	8fbf0014 	lw	ra,20(sp)
    34ec:	27bd0038 	addiu	sp,sp,56
    34f0:	03e00008 	jr	ra
    34f4:	00000000 	nop

000034f8 <func_80980B68>:
    34f8:	27bdffc8 	addiu	sp,sp,-56
    34fc:	afbf0014 	sw	ra,20(sp)
    3500:	94a21d74 	lhu	v0,7540(a1)
    3504:	2401013d 	li	at,317
    3508:	00a03825 	move	a3,a1
    350c:	10410005 	beq	v0,at,3524 <func_80980B68+0x2c>
    3510:	3c0e0000 	lui	t6,0x0
    3514:	8dce0000 	lw	t6,0(t6)
    3518:	24010001 	li	at,1
    351c:	85cf145a 	lh	t7,5210(t6)
    3520:	15e10016 	bne	t7,at,357c <func_80980B68+0x84>
    3524:	3c014475 	lui	at,0x4475
    3528:	44813000 	mtc1	at,$f6
    352c:	c4840024 	lwc1	$f4,36(a0)
    3530:	3c0143cd 	lui	at,0x43cd
    3534:	44818000 	mtc1	at,$f16
    3538:	46062200 	add.s	$f8,$f4,$f6
    353c:	3c014331 	lui	at,0x4331
    3540:	44813000 	mtc1	at,$f6
    3544:	00e02825 	move	a1,a3
    3548:	e7a8001c 	swc1	$f8,28(sp)
    354c:	c48a0028 	lwc1	$f10,40(a0)
    3550:	27a6001c 	addiu	a2,sp,28
    3554:	46105480 	add.s	$f18,$f10,$f16
    3558:	e7b20020 	swc1	$f18,32(sp)
    355c:	c484002c 	lwc1	$f4,44(a0)
    3560:	afa7003c 	sw	a3,60(sp)
    3564:	46062201 	sub.s	$f8,$f4,$f6
    3568:	0c000000 	jal	0 <DemoGt_Destroy>
    356c:	e7a80024 	swc1	$f8,36(sp)
    3570:	8fa4003c 	lw	a0,60(sp)
    3574:	0c000000 	jal	0 <DemoGt_Destroy>
    3578:	27a5001c 	addiu	a1,sp,28
    357c:	8fbf0014 	lw	ra,20(sp)
    3580:	27bd0038 	addiu	sp,sp,56
    3584:	03e00008 	jr	ra
    3588:	00000000 	nop

0000358c <func_80980BFC>:
    358c:	27bdffc8 	addiu	sp,sp,-56
    3590:	afbf0014 	sw	ra,20(sp)
    3594:	94a21d74 	lhu	v0,7540(a1)
    3598:	240102e4 	li	at,740
    359c:	00a03825 	move	a3,a1
    35a0:	10410005 	beq	v0,at,35b8 <func_80980BFC+0x2c>
    35a4:	3c0e0000 	lui	t6,0x0
    35a8:	8dce0000 	lw	t6,0(t6)
    35ac:	24010001 	li	at,1
    35b0:	85cf145c 	lh	t7,5212(t6)
    35b4:	15e10016 	bne	t7,at,3610 <func_80980BFC+0x84>
    35b8:	3c010000 	lui	at,0x0
    35bc:	c4260000 	lwc1	$f6,0(at)
    35c0:	c4840024 	lwc1	$f4,36(a0)
    35c4:	3c014270 	lui	at,0x4270
    35c8:	44818000 	mtc1	at,$f16
    35cc:	46062200 	add.s	$f8,$f4,$f6
    35d0:	3c0141b8 	lui	at,0x41b8
    35d4:	44813000 	mtc1	at,$f6
    35d8:	00e02825 	move	a1,a3
    35dc:	e7a8001c 	swc1	$f8,28(sp)
    35e0:	c48a0028 	lwc1	$f10,40(a0)
    35e4:	27a6001c 	addiu	a2,sp,28
    35e8:	46105480 	add.s	$f18,$f10,$f16
    35ec:	e7b20020 	swc1	$f18,32(sp)
    35f0:	c484002c 	lwc1	$f4,44(a0)
    35f4:	afa7003c 	sw	a3,60(sp)
    35f8:	46062200 	add.s	$f8,$f4,$f6
    35fc:	0c000000 	jal	0 <DemoGt_Destroy>
    3600:	e7a80024 	swc1	$f8,36(sp)
    3604:	8fa4003c 	lw	a0,60(sp)
    3608:	0c000000 	jal	0 <DemoGt_Destroy>
    360c:	27a5001c 	addiu	a1,sp,28
    3610:	8fbf0014 	lw	ra,20(sp)
    3614:	27bd0038 	addiu	sp,sp,56
    3618:	03e00008 	jr	ra
    361c:	00000000 	nop

00003620 <func_80980C90>:
    3620:	27bdffe0 	addiu	sp,sp,-32
    3624:	afbf001c 	sw	ra,28(sp)
    3628:	afb10018 	sw	s1,24(sp)
    362c:	afb00014 	sw	s0,20(sp)
    3630:	00808025 	move	s0,a0
    3634:	0c000000 	jal	0 <DemoGt_Destroy>
    3638:	00a08825 	move	s1,a1
    363c:	02002025 	move	a0,s0
    3640:	0c000000 	jal	0 <DemoGt_Destroy>
    3644:	02202825 	move	a1,s1
    3648:	02002025 	move	a0,s0
    364c:	0c000000 	jal	0 <DemoGt_Destroy>
    3650:	02202825 	move	a1,s1
    3654:	02002025 	move	a0,s0
    3658:	0c000000 	jal	0 <DemoGt_Destroy>
    365c:	02202825 	move	a1,s1
    3660:	02002025 	move	a0,s0
    3664:	0c000000 	jal	0 <DemoGt_Destroy>
    3668:	02202825 	move	a1,s1
    366c:	02002025 	move	a0,s0
    3670:	0c000000 	jal	0 <DemoGt_Destroy>
    3674:	02202825 	move	a1,s1
    3678:	02002025 	move	a0,s0
    367c:	0c000000 	jal	0 <DemoGt_Destroy>
    3680:	02202825 	move	a1,s1
    3684:	02002025 	move	a0,s0
    3688:	0c000000 	jal	0 <DemoGt_Destroy>
    368c:	02202825 	move	a1,s1
    3690:	02002025 	move	a0,s0
    3694:	0c000000 	jal	0 <DemoGt_Destroy>
    3698:	02202825 	move	a1,s1
    369c:	02002025 	move	a0,s0
    36a0:	0c000000 	jal	0 <DemoGt_Destroy>
    36a4:	02202825 	move	a1,s1
    36a8:	02002025 	move	a0,s0
    36ac:	0c000000 	jal	0 <DemoGt_Destroy>
    36b0:	02202825 	move	a1,s1
    36b4:	02002025 	move	a0,s0
    36b8:	0c000000 	jal	0 <DemoGt_Destroy>
    36bc:	02202825 	move	a1,s1
    36c0:	02002025 	move	a0,s0
    36c4:	0c000000 	jal	0 <DemoGt_Destroy>
    36c8:	02202825 	move	a1,s1
    36cc:	02002025 	move	a0,s0
    36d0:	0c000000 	jal	0 <DemoGt_Destroy>
    36d4:	02202825 	move	a1,s1
    36d8:	02002025 	move	a0,s0
    36dc:	0c000000 	jal	0 <DemoGt_Destroy>
    36e0:	02202825 	move	a1,s1
    36e4:	02002025 	move	a0,s0
    36e8:	0c000000 	jal	0 <DemoGt_Destroy>
    36ec:	02202825 	move	a1,s1
    36f0:	8fbf001c 	lw	ra,28(sp)
    36f4:	8fb00014 	lw	s0,20(sp)
    36f8:	8fb10018 	lw	s1,24(sp)
    36fc:	03e00008 	jr	ra
    3700:	27bd0020 	addiu	sp,sp,32

00003704 <func_80980D74>:
    3704:	27bdffe8 	addiu	sp,sp,-24
    3708:	afa40018 	sw	a0,24(sp)
    370c:	afbf0014 	sw	ra,20(sp)
    3710:	00a02025 	move	a0,a1
    3714:	24050002 	li	a1,2
    3718:	0c000000 	jal	0 <DemoGt_Destroy>
    371c:	24060003 	li	a2,3
    3720:	10400003 	beqz	v0,3730 <func_80980D74+0x2c>
    3724:	8faf0018 	lw	t7,24(sp)
    3728:	240e000a 	li	t6,10
    372c:	adee0164 	sw	t6,356(t7)
    3730:	8fbf0014 	lw	ra,20(sp)
    3734:	27bd0018 	addiu	sp,sp,24
    3738:	03e00008 	jr	ra
    373c:	00000000 	nop

00003740 <func_80980DB0>:
    3740:	27bdffe8 	addiu	sp,sp,-24
    3744:	afbf0014 	sw	ra,20(sp)
    3748:	afa5001c 	sw	a1,28(sp)
    374c:	afa40018 	sw	a0,24(sp)
    3750:	0c000000 	jal	0 <DemoGt_Destroy>
    3754:	24050003 	li	a1,3
    3758:	8fa40018 	lw	a0,24(sp)
    375c:	0c000000 	jal	0 <DemoGt_Destroy>
    3760:	8fa5001c 	lw	a1,28(sp)
    3764:	8fa40018 	lw	a0,24(sp)
    3768:	0c000000 	jal	0 <DemoGt_Destroy>
    376c:	8fa5001c 	lw	a1,28(sp)
    3770:	8fbf0014 	lw	ra,20(sp)
    3774:	27bd0018 	addiu	sp,sp,24
    3778:	03e00008 	jr	ra
    377c:	00000000 	nop

00003780 <func_80980DF0>:
    3780:	27bdffe8 	addiu	sp,sp,-24
    3784:	afbf0014 	sw	ra,20(sp)
    3788:	afa40018 	sw	a0,24(sp)
    378c:	afa5001c 	sw	a1,28(sp)
    3790:	0c000000 	jal	0 <DemoGt_Destroy>
    3794:	24060003 	li	a2,3
    3798:	8fa40018 	lw	a0,24(sp)
    379c:	0c000000 	jal	0 <DemoGt_Destroy>
    37a0:	8fa5001c 	lw	a1,28(sp)
    37a4:	8fbf0014 	lw	ra,20(sp)
    37a8:	27bd0018 	addiu	sp,sp,24
    37ac:	03e00008 	jr	ra
    37b0:	00000000 	nop

000037b4 <func_80980E24>:
    37b4:	27bdffb8 	addiu	sp,sp,-72
    37b8:	afbf001c 	sw	ra,28(sp)
    37bc:	afb00018 	sw	s0,24(sp)
    37c0:	afa40048 	sw	a0,72(sp)
    37c4:	afa5004c 	sw	a1,76(sp)
    37c8:	8cb00000 	lw	s0,0(a1)
    37cc:	3c060000 	lui	a2,0x0
    37d0:	24c60000 	addiu	a2,a2,0
    37d4:	27a40030 	addiu	a0,sp,48
    37d8:	24070402 	li	a3,1026
    37dc:	0c000000 	jal	0 <DemoGt_Destroy>
    37e0:	02002825 	move	a1,s0
    37e4:	0c000000 	jal	0 <DemoGt_Destroy>
    37e8:	02002025 	move	a0,s0
    37ec:	8e0202c0 	lw	v0,704(s0)
    37f0:	3c18da38 	lui	t8,0xda38
    37f4:	37180002 	ori	t8,t8,0x2
    37f8:	244f0008 	addiu	t7,v0,8
    37fc:	ae0f02c0 	sw	t7,704(s0)
    3800:	3c050000 	lui	a1,0x0
    3804:	ac580000 	sw	t8,0(v0)
    3808:	24a50000 	addiu	a1,a1,0
    380c:	02002025 	move	a0,s0
    3810:	24060404 	li	a2,1028
    3814:	0c000000 	jal	0 <DemoGt_Destroy>
    3818:	afa2002c 	sw	v0,44(sp)
    381c:	8fa3002c 	lw	v1,44(sp)
    3820:	3c090600 	lui	t1,0x600
    3824:	25297630 	addiu	t1,t1,30256
    3828:	ac620004 	sw	v0,4(v1)
    382c:	8e0202c0 	lw	v0,704(s0)
    3830:	3c08de00 	lui	t0,0xde00
    3834:	3c0bd838 	lui	t3,0xd838
    3838:	24590008 	addiu	t9,v0,8
    383c:	ae1902c0 	sw	t9,704(s0)
    3840:	ac490004 	sw	t1,4(v0)
    3844:	ac480000 	sw	t0,0(v0)
    3848:	8e0202c0 	lw	v0,704(s0)
    384c:	356b0002 	ori	t3,t3,0x2
    3850:	240c0040 	li	t4,64
    3854:	244a0008 	addiu	t2,v0,8
    3858:	ae0a02c0 	sw	t2,704(s0)
    385c:	3c060000 	lui	a2,0x0
    3860:	24c60000 	addiu	a2,a2,0
    3864:	27a40030 	addiu	a0,sp,48
    3868:	02002825 	move	a1,s0
    386c:	24070408 	li	a3,1032
    3870:	ac4c0004 	sw	t4,4(v0)
    3874:	0c000000 	jal	0 <DemoGt_Destroy>
    3878:	ac4b0000 	sw	t3,0(v0)
    387c:	8fbf001c 	lw	ra,28(sp)
    3880:	8fb00018 	lw	s0,24(sp)
    3884:	27bd0048 	addiu	sp,sp,72
    3888:	03e00008 	jr	ra
    388c:	00000000 	nop

00003890 <func_80980F00>:
    3890:	27bdffe0 	addiu	sp,sp,-32
    3894:	afbf001c 	sw	ra,28(sp)
    3898:	3c014120 	lui	at,0x4120
    389c:	44810000 	mtc1	at,$f0
    38a0:	c4840050 	lwc1	$f4,80(a0)
    38a4:	c4880054 	lwc1	$f8,84(a0)
    38a8:	c4900058 	lwc1	$f16,88(a0)
    38ac:	46002182 	mul.s	$f6,$f4,$f0
    38b0:	24060003 	li	a2,3
    38b4:	24070004 	li	a3,4
    38b8:	46004282 	mul.s	$f10,$f8,$f0
    38bc:	00000000 	nop
    38c0:	46008482 	mul.s	$f18,$f16,$f0
    38c4:	e4860050 	swc1	$f6,80(a0)
    38c8:	e48a0054 	swc1	$f10,84(a0)
    38cc:	e4920058 	swc1	$f18,88(a0)
    38d0:	0c000000 	jal	0 <DemoGt_Destroy>
    38d4:	afa00010 	sw	zero,16(sp)
    38d8:	8fbf001c 	lw	ra,28(sp)
    38dc:	27bd0020 	addiu	sp,sp,32
    38e0:	03e00008 	jr	ra
    38e4:	00000000 	nop

000038e8 <func_80980F58>:
    38e8:	27bdffe8 	addiu	sp,sp,-24
    38ec:	afbf0014 	sw	ra,20(sp)
    38f0:	94a21d74 	lhu	v0,7540(a1)
    38f4:	240100f4 	li	at,244
    38f8:	248400e4 	addiu	a0,a0,228
    38fc:	54410004 	bnel	v0,at,3910 <func_80980F58+0x28>
    3900:	8fbf0014 	lw	ra,20(sp)
    3904:	0c000000 	jal	0 <DemoGt_Destroy>
    3908:	240520de 	li	a1,8414
    390c:	8fbf0014 	lw	ra,20(sp)
    3910:	27bd0018 	addiu	sp,sp,24
    3914:	03e00008 	jr	ra
    3918:	00000000 	nop

0000391c <func_80980F8C>:
    391c:	27bdff90 	addiu	sp,sp,-112
    3920:	afbf0024 	sw	ra,36(sp)
    3924:	afa40070 	sw	a0,112(sp)
    3928:	afa50074 	sw	a1,116(sp)
    392c:	94a21d74 	lhu	v0,7540(a1)
    3930:	28410104 	slti	at,v0,260
    3934:	14200021 	bnez	at,39bc <func_80980F8C+0xa0>
    3938:	28410121 	slti	at,v0,289
    393c:	1020001f 	beqz	at,39bc <func_80980F8C+0xa0>
    3940:	27af003c 	addiu	t7,sp,60
    3944:	3c180000 	lui	t8,0x0
    3948:	27180000 	addiu	t8,t8,0
    394c:	8f080000 	lw	t0,0(t8)
    3950:	8f190004 	lw	t9,4(t8)
    3954:	3c014420 	lui	at,0x4420
    3958:	ade80000 	sw	t0,0(t7)
    395c:	8f080008 	lw	t0,8(t8)
    3960:	44812000 	mtc1	at,$f4
    3964:	3c010000 	lui	at,0x0
    3968:	adf90004 	sw	t9,4(t7)
    396c:	ade80008 	sw	t0,8(t7)
    3970:	c4260000 	lwc1	$f6,0(at)
    3974:	3c01c32a 	lui	at,0xc32a
    3978:	44814000 	mtc1	at,$f8
    397c:	27a40058 	addiu	a0,sp,88
    3980:	27a5004c 	addiu	a1,sp,76
    3984:	e7a40058 	swc1	$f4,88(sp)
    3988:	e7a6005c 	swc1	$f6,92(sp)
    398c:	0c000000 	jal	0 <DemoGt_Destroy>
    3990:	e7a80060 	swc1	$f8,96(sp)
    3994:	24090005 	li	t1,5
    3998:	240a001e 	li	t2,30
    399c:	afaa0018 	sw	t2,24(sp)
    39a0:	afa90010 	sw	t1,16(sp)
    39a4:	8fa40074 	lw	a0,116(sp)
    39a8:	27a5004c 	addiu	a1,sp,76
    39ac:	27a6003c 	addiu	a2,sp,60
    39b0:	3c074040 	lui	a3,0x4040
    39b4:	0c000000 	jal	0 <DemoGt_Destroy>
    39b8:	afa00014 	sw	zero,20(sp)
    39bc:	8fbf0024 	lw	ra,36(sp)
    39c0:	27bd0070 	addiu	sp,sp,112
    39c4:	03e00008 	jr	ra
    39c8:	00000000 	nop

000039cc <func_8098103C>:
    39cc:	27bdffe8 	addiu	sp,sp,-24
    39d0:	afa40018 	sw	a0,24(sp)
    39d4:	afbf0014 	sw	ra,20(sp)
    39d8:	afa5001c 	sw	a1,28(sp)
    39dc:	00a02025 	move	a0,a1
    39e0:	24050002 	li	a1,2
    39e4:	0c000000 	jal	0 <DemoGt_Destroy>
    39e8:	24060004 	li	a2,4
    39ec:	10400005 	beqz	v0,3a04 <func_8098103C+0x38>
    39f0:	8fa4001c 	lw	a0,28(sp)
    39f4:	8faf0018 	lw	t7,24(sp)
    39f8:	240e000b 	li	t6,11
    39fc:	10000008 	b	3a20 <func_8098103C+0x54>
    3a00:	adee0164 	sw	t6,356(t7)
    3a04:	24050003 	li	a1,3
    3a08:	0c000000 	jal	0 <DemoGt_Destroy>
    3a0c:	24060004 	li	a2,4
    3a10:	10400003 	beqz	v0,3a20 <func_8098103C+0x54>
    3a14:	8fb90018 	lw	t9,24(sp)
    3a18:	24180010 	li	t8,16
    3a1c:	af380164 	sw	t8,356(t9)
    3a20:	8fbf0014 	lw	ra,20(sp)
    3a24:	27bd0018 	addiu	sp,sp,24
    3a28:	03e00008 	jr	ra
    3a2c:	00000000 	nop

00003a30 <func_809810A0>:
    3a30:	27bdffe8 	addiu	sp,sp,-24
    3a34:	afbf0014 	sw	ra,20(sp)
    3a38:	afa5001c 	sw	a1,28(sp)
    3a3c:	afa40018 	sw	a0,24(sp)
    3a40:	0c000000 	jal	0 <DemoGt_Destroy>
    3a44:	24050004 	li	a1,4
    3a48:	8fa40018 	lw	a0,24(sp)
    3a4c:	0c000000 	jal	0 <DemoGt_Destroy>
    3a50:	8fa5001c 	lw	a1,28(sp)
    3a54:	8fa40018 	lw	a0,24(sp)
    3a58:	0c000000 	jal	0 <DemoGt_Destroy>
    3a5c:	8fa5001c 	lw	a1,28(sp)
    3a60:	8fbf0014 	lw	ra,20(sp)
    3a64:	27bd0018 	addiu	sp,sp,24
    3a68:	03e00008 	jr	ra
    3a6c:	00000000 	nop

00003a70 <func_809810E0>:
    3a70:	27bdffe8 	addiu	sp,sp,-24
    3a74:	afbf0014 	sw	ra,20(sp)
    3a78:	afa40018 	sw	a0,24(sp)
    3a7c:	afa5001c 	sw	a1,28(sp)
    3a80:	0c000000 	jal	0 <DemoGt_Destroy>
    3a84:	24060004 	li	a2,4
    3a88:	8fa40018 	lw	a0,24(sp)
    3a8c:	0c000000 	jal	0 <DemoGt_Destroy>
    3a90:	8fa5001c 	lw	a1,28(sp)
    3a94:	8fbf0014 	lw	ra,20(sp)
    3a98:	27bd0018 	addiu	sp,sp,24
    3a9c:	03e00008 	jr	ra
    3aa0:	00000000 	nop

00003aa4 <func_80981114>:
    3aa4:	3c030000 	lui	v1,0x0
    3aa8:	8c630000 	lw	v1,0(v1)
    3aac:	afa50004 	sw	a1,4(sp)
    3ab0:	84820172 	lh	v0,370(a0)
    3ab4:	846e14d6 	lh	t6,5334(v1)
    3ab8:	846f14d4 	lh	t7,5332(v1)
    3abc:	44822000 	mtc1	v0,$f4
    3ac0:	448e3000 	mtc1	t6,$f6
    3ac4:	448f9000 	mtc1	t7,$f18
    3ac8:	46802020 	cvt.s.w	$f0,$f4
    3acc:	3c0142c4 	lui	at,0x42c4
    3ad0:	44815000 	mtc1	at,$f10
    3ad4:	3c010000 	lui	at,0x0
    3ad8:	240b4000 	li	t3,16384
    3adc:	46803220 	cvt.s.w	$f8,$f6
    3ae0:	c4260000 	lwc1	$f6,0(at)
    3ae4:	3c010000 	lui	at,0x0
    3ae8:	46809120 	cvt.s.w	$f4,$f18
    3aec:	460a4400 	add.s	$f16,$f8,$f10
    3af0:	46062202 	mul.s	$f8,$f4,$f6
    3af4:	c42a0000 	lwc1	$f10,0(at)
    3af8:	460a4480 	add.s	$f18,$f8,$f10
    3afc:	46120102 	mul.s	$f4,$f0,$f18
    3b00:	46048180 	add.s	$f6,$f16,$f4
    3b04:	4600320d 	trunc.w.s	$f8,$f6
    3b08:	44194000 	mfc1	t9,$f8
    3b0c:	00000000 	nop
    3b10:	a4990174 	sh	t9,372(a0)
    3b14:	84880174 	lh	t0,372(a0)
    3b18:	00484821 	addu	t1,v0,t0
    3b1c:	a4890172 	sh	t1,370(a0)
    3b20:	848a0172 	lh	t2,370(a0)
    3b24:	29414001 	slti	at,t2,16385
    3b28:	14200002 	bnez	at,3b34 <func_80981114+0x90>
    3b2c:	00000000 	nop
    3b30:	a48b0172 	sh	t3,370(a0)
    3b34:	03e00008 	jr	ra
    3b38:	00000000 	nop

00003b3c <func_809811AC>:
    3b3c:	27bdff78 	addiu	sp,sp,-136
    3b40:	afbf001c 	sw	ra,28(sp)
    3b44:	afb00018 	sw	s0,24(sp)
    3b48:	afa40088 	sw	a0,136(sp)
    3b4c:	94a21d74 	lhu	v0,7540(a1)
    3b50:	00a03825 	move	a3,a1
    3b54:	2841012d 	slti	at,v0,301
    3b58:	5020007c 	beqzl	at,3d4c <func_809811AC+0x210>
    3b5c:	8fbf001c 	lw	ra,28(sp)
    3b60:	84860172 	lh	a2,370(a0)
    3b64:	3c010000 	lui	at,0x0
    3b68:	c4280000 	lwc1	$f8,0(at)
    3b6c:	44862000 	mtc1	a2,$f4
    3b70:	3c020000 	lui	v0,0x0
    3b74:	8c420000 	lw	v0,0(v0)
    3b78:	468021a0 	cvt.s.w	$f6,$f4
    3b7c:	46083002 	mul.s	$f0,$f6,$f8
    3b80:	46000005 	abs.s	$f0,$f0
    3b84:	e7a00070 	swc1	$f0,112(sp)
    3b88:	844f14ce 	lh	t7,5326(v0)
    3b8c:	448f5000 	mtc1	t7,$f10
    3b90:	00000000 	nop
    3b94:	46805420 	cvt.s.w	$f16,$f10
    3b98:	e7b0006c 	swc1	$f16,108(sp)
    3b9c:	845914c8 	lh	t9,5320(v0)
    3ba0:	27284000 	addiu	t0,t9,16384
    3ba4:	a7a80068 	sh	t0,104(sp)
    3ba8:	a7b9006a 	sh	t9,106(sp)
    3bac:	8cb00000 	lw	s0,0(a1)
    3bb0:	afa7008c 	sw	a3,140(sp)
    3bb4:	24050040 	li	a1,64
    3bb8:	a7a60076 	sh	a2,118(sp)
    3bbc:	0c000000 	jal	0 <DemoGt_Destroy>
    3bc0:	02002025 	move	a0,s0
    3bc4:	afa20060 	sw	v0,96(sp)
    3bc8:	0c000000 	jal	0 <DemoGt_Destroy>
    3bcc:	87a40076 	lh	a0,118(sp)
    3bd0:	3c013f80 	lui	at,0x3f80
    3bd4:	44819000 	mtc1	at,$f18
    3bd8:	3c060000 	lui	a2,0x0
    3bdc:	24c60000 	addiu	a2,a2,0
    3be0:	46009101 	sub.s	$f4,$f18,$f0
    3be4:	27a40030 	addiu	a0,sp,48
    3be8:	02002825 	move	a1,s0
    3bec:	240700d9 	li	a3,217
    3bf0:	0c000000 	jal	0 <DemoGt_Destroy>
    3bf4:	e7a40044 	swc1	$f4,68(sp)
    3bf8:	0c000000 	jal	0 <DemoGt_Destroy>
    3bfc:	87a40068 	lh	a0,104(sp)
    3c00:	44803000 	mtc1	zero,$f6
    3c04:	e7a00054 	swc1	$f0,84(sp)
    3c08:	87a40068 	lh	a0,104(sp)
    3c0c:	0c000000 	jal	0 <DemoGt_Destroy>
    3c10:	e7a60058 	swc1	$f6,88(sp)
    3c14:	e7a0005c 	swc1	$f0,92(sp)
    3c18:	0c000000 	jal	0 <DemoGt_Destroy>
    3c1c:	87a4006a 	lh	a0,106(sp)
    3c20:	c7a8006c 	lwc1	$f8,108(sp)
    3c24:	c7b00044 	lwc1	$f16,68(sp)
    3c28:	87a40076 	lh	a0,118(sp)
    3c2c:	46080282 	mul.s	$f10,$f0,$f8
    3c30:	00000000 	nop
    3c34:	46105482 	mul.s	$f18,$f10,$f16
    3c38:	0c000000 	jal	0 <DemoGt_Destroy>
    3c3c:	e7b20048 	swc1	$f18,72(sp)
    3c40:	c7a4006c 	lwc1	$f4,108(sp)
    3c44:	87a4006a 	lh	a0,106(sp)
    3c48:	46040182 	mul.s	$f6,$f0,$f4
    3c4c:	0c000000 	jal	0 <DemoGt_Destroy>
    3c50:	e7a6004c 	swc1	$f6,76(sp)
    3c54:	c7a8006c 	lwc1	$f8,108(sp)
    3c58:	c7b00044 	lwc1	$f16,68(sp)
    3c5c:	46080282 	mul.s	$f10,$f0,$f8
    3c60:	00000000 	nop
    3c64:	46105482 	mul.s	$f18,$f10,$f16
    3c68:	0c000000 	jal	0 <DemoGt_Destroy>
    3c6c:	e7b20050 	swc1	$f18,80(sp)
    3c70:	c7ac0070 	lwc1	$f12,112(sp)
    3c74:	27a50054 	addiu	a1,sp,84
    3c78:	0c000000 	jal	0 <DemoGt_Destroy>
    3c7c:	24060001 	li	a2,1
    3c80:	c7ac0048 	lwc1	$f12,72(sp)
    3c84:	c7ae004c 	lwc1	$f14,76(sp)
    3c88:	8fa60050 	lw	a2,80(sp)
    3c8c:	0c000000 	jal	0 <DemoGt_Destroy>
    3c90:	24070001 	li	a3,1
    3c94:	3c050000 	lui	a1,0x0
    3c98:	24a50000 	addiu	a1,a1,0
    3c9c:	8fa40060 	lw	a0,96(sp)
    3ca0:	0c000000 	jal	0 <DemoGt_Destroy>
    3ca4:	240600e8 	li	a2,232
    3ca8:	0c000000 	jal	0 <DemoGt_Destroy>
    3cac:	8fa4008c 	lw	a0,140(sp)
    3cb0:	14400003 	bnez	v0,3cc0 <func_809811AC+0x184>
    3cb4:	8fa40088 	lw	a0,136(sp)
    3cb8:	0c000000 	jal	0 <DemoGt_Destroy>
    3cbc:	8fa5008c 	lw	a1,140(sp)
    3cc0:	0c000000 	jal	0 <DemoGt_Destroy>
    3cc4:	00000000 	nop
    3cc8:	0c000000 	jal	0 <DemoGt_Destroy>
    3ccc:	02002025 	move	a0,s0
    3cd0:	8e0202c0 	lw	v0,704(s0)
    3cd4:	3c0ada38 	lui	t2,0xda38
    3cd8:	354a0002 	ori	t2,t2,0x2
    3cdc:	24490008 	addiu	t1,v0,8
    3ce0:	ae0902c0 	sw	t1,704(s0)
    3ce4:	ac4a0000 	sw	t2,0(v0)
    3ce8:	8fab0060 	lw	t3,96(sp)
    3cec:	3c0e0601 	lui	t6,0x601
    3cf0:	25ce9610 	addiu	t6,t6,-27120
    3cf4:	ac4b0004 	sw	t3,4(v0)
    3cf8:	8e0202c0 	lw	v0,704(s0)
    3cfc:	3c0dde00 	lui	t5,0xde00
    3d00:	3c18d838 	lui	t8,0xd838
    3d04:	244c0008 	addiu	t4,v0,8
    3d08:	ae0c02c0 	sw	t4,704(s0)
    3d0c:	ac4e0004 	sw	t6,4(v0)
    3d10:	ac4d0000 	sw	t5,0(v0)
    3d14:	8e0202c0 	lw	v0,704(s0)
    3d18:	37180002 	ori	t8,t8,0x2
    3d1c:	24190040 	li	t9,64
    3d20:	244f0008 	addiu	t7,v0,8
    3d24:	ae0f02c0 	sw	t7,704(s0)
    3d28:	3c060000 	lui	a2,0x0
    3d2c:	24c60000 	addiu	a2,a2,0
    3d30:	27a40030 	addiu	a0,sp,48
    3d34:	02002825 	move	a1,s0
    3d38:	240700f6 	li	a3,246
    3d3c:	ac590004 	sw	t9,4(v0)
    3d40:	0c000000 	jal	0 <DemoGt_Destroy>
    3d44:	ac580000 	sw	t8,0(v0)
    3d48:	8fbf001c 	lw	ra,28(sp)
    3d4c:	8fb00018 	lw	s0,24(sp)
    3d50:	27bd0088 	addiu	sp,sp,136
    3d54:	03e00008 	jr	ra
    3d58:	00000000 	nop

00003d5c <func_809813CC>:
    3d5c:	27bdffe0 	addiu	sp,sp,-32
    3d60:	afbf001c 	sw	ra,28(sp)
    3d64:	3c014120 	lui	at,0x4120
    3d68:	44810000 	mtc1	at,$f0
    3d6c:	c4840050 	lwc1	$f4,80(a0)
    3d70:	c4880054 	lwc1	$f8,84(a0)
    3d74:	c4900058 	lwc1	$f16,88(a0)
    3d78:	46002182 	mul.s	$f6,$f4,$f0
    3d7c:	24060004 	li	a2,4
    3d80:	24070005 	li	a3,5
    3d84:	46004282 	mul.s	$f10,$f8,$f0
    3d88:	00000000 	nop
    3d8c:	46008482 	mul.s	$f18,$f16,$f0
    3d90:	e4860050 	swc1	$f6,80(a0)
    3d94:	e48a0054 	swc1	$f10,84(a0)
    3d98:	e4920058 	swc1	$f18,88(a0)
    3d9c:	0c000000 	jal	0 <DemoGt_Destroy>
    3da0:	afa00010 	sw	zero,16(sp)
    3da4:	8fbf001c 	lw	ra,28(sp)
    3da8:	27bd0020 	addiu	sp,sp,32
    3dac:	03e00008 	jr	ra
    3db0:	00000000 	nop

00003db4 <func_80981424>:
    3db4:	27bdffe8 	addiu	sp,sp,-24
    3db8:	afbf0014 	sw	ra,20(sp)
    3dbc:	94a21d74 	lhu	v0,7540(a1)
    3dc0:	24010315 	li	at,789
    3dc4:	248400e4 	addiu	a0,a0,228
    3dc8:	54410004 	bnel	v0,at,3ddc <func_80981424+0x28>
    3dcc:	8fbf0014 	lw	ra,20(sp)
    3dd0:	0c000000 	jal	0 <DemoGt_Destroy>
    3dd4:	240520de 	li	a1,8414
    3dd8:	8fbf0014 	lw	ra,20(sp)
    3ddc:	27bd0018 	addiu	sp,sp,24
    3de0:	03e00008 	jr	ra
    3de4:	00000000 	nop

00003de8 <func_80981458>:
    3de8:	27bdff90 	addiu	sp,sp,-112
    3dec:	afbf0024 	sw	ra,36(sp)
    3df0:	afa40070 	sw	a0,112(sp)
    3df4:	afa50074 	sw	a1,116(sp)
    3df8:	94a21d74 	lhu	v0,7540(a1)
    3dfc:	3c0f0000 	lui	t7,0x0
    3e00:	28410358 	slti	at,v0,856
    3e04:	14200003 	bnez	at,3e14 <func_80981458+0x2c>
    3e08:	2841037b 	slti	at,v0,891
    3e0c:	14200005 	bnez	at,3e24 <func_80981458+0x3c>
    3e10:	00000000 	nop
    3e14:	8def0000 	lw	t7,0(t7)
    3e18:	2401000d 	li	at,13
    3e1c:	85f81456 	lh	t8,5206(t7)
    3e20:	17010020 	bne	t8,at,3ea4 <func_80981458+0xbc>
    3e24:	3c080000 	lui	t0,0x0
    3e28:	25080000 	addiu	t0,t0,0
    3e2c:	8d0a0000 	lw	t2,0(t0)
    3e30:	27b9003c 	addiu	t9,sp,60
    3e34:	8d090004 	lw	t1,4(t0)
    3e38:	af2a0000 	sw	t2,0(t9)
    3e3c:	8d0a0008 	lw	t2,8(t0)
    3e40:	3c010000 	lui	at,0x0
    3e44:	af290004 	sw	t1,4(t9)
    3e48:	af2a0008 	sw	t2,8(t9)
    3e4c:	c4260000 	lwc1	$f6,0(at)
    3e50:	3c010000 	lui	at,0x0
    3e54:	44802000 	mtc1	zero,$f4
    3e58:	c4280000 	lwc1	$f8,0(at)
    3e5c:	27a40058 	addiu	a0,sp,88
    3e60:	27a5004c 	addiu	a1,sp,76
    3e64:	e7a6005c 	swc1	$f6,92(sp)
    3e68:	e7a40058 	swc1	$f4,88(sp)
    3e6c:	0c000000 	jal	0 <DemoGt_Destroy>
    3e70:	e7a80060 	swc1	$f8,96(sp)
    3e74:	3c0740e3 	lui	a3,0x40e3
    3e78:	240b0005 	li	t3,5
    3e7c:	240c0001 	li	t4,1
    3e80:	240d001e 	li	t5,30
    3e84:	afad0018 	sw	t5,24(sp)
    3e88:	afac0014 	sw	t4,20(sp)
    3e8c:	afab0010 	sw	t3,16(sp)
    3e90:	34e73333 	ori	a3,a3,0x3333
    3e94:	8fa40074 	lw	a0,116(sp)
    3e98:	27a5004c 	addiu	a1,sp,76
    3e9c:	0c000000 	jal	0 <DemoGt_Destroy>
    3ea0:	27a6003c 	addiu	a2,sp,60
    3ea4:	8fbf0024 	lw	ra,36(sp)
    3ea8:	27bd0070 	addiu	sp,sp,112
    3eac:	03e00008 	jr	ra
    3eb0:	00000000 	nop

00003eb4 <func_80981524>:
    3eb4:	27bdffe8 	addiu	sp,sp,-24
    3eb8:	afa40018 	sw	a0,24(sp)
    3ebc:	afbf0014 	sw	ra,20(sp)
    3ec0:	afa5001c 	sw	a1,28(sp)
    3ec4:	00a02025 	move	a0,a1
    3ec8:	24050002 	li	a1,2
    3ecc:	0c000000 	jal	0 <DemoGt_Destroy>
    3ed0:	24060005 	li	a2,5
    3ed4:	10400005 	beqz	v0,3eec <func_80981524+0x38>
    3ed8:	8fa4001c 	lw	a0,28(sp)
    3edc:	8faf0018 	lw	t7,24(sp)
    3ee0:	240e000c 	li	t6,12
    3ee4:	10000008 	b	3f08 <func_80981524+0x54>
    3ee8:	adee0164 	sw	t6,356(t7)
    3eec:	24050003 	li	a1,3
    3ef0:	0c000000 	jal	0 <DemoGt_Destroy>
    3ef4:	24060005 	li	a2,5
    3ef8:	10400003 	beqz	v0,3f08 <func_80981524+0x54>
    3efc:	8fb90018 	lw	t9,24(sp)
    3f00:	24180011 	li	t8,17
    3f04:	af380164 	sw	t8,356(t9)
    3f08:	8fbf0014 	lw	ra,20(sp)
    3f0c:	27bd0018 	addiu	sp,sp,24
    3f10:	03e00008 	jr	ra
    3f14:	00000000 	nop

00003f18 <func_80981588>:
    3f18:	27bdffe8 	addiu	sp,sp,-24
    3f1c:	afbf0014 	sw	ra,20(sp)
    3f20:	afa5001c 	sw	a1,28(sp)
    3f24:	afa40018 	sw	a0,24(sp)
    3f28:	0c000000 	jal	0 <DemoGt_Destroy>
    3f2c:	24050005 	li	a1,5
    3f30:	8fa40018 	lw	a0,24(sp)
    3f34:	0c000000 	jal	0 <DemoGt_Destroy>
    3f38:	8fa5001c 	lw	a1,28(sp)
    3f3c:	8fa40018 	lw	a0,24(sp)
    3f40:	0c000000 	jal	0 <DemoGt_Destroy>
    3f44:	8fa5001c 	lw	a1,28(sp)
    3f48:	8fbf0014 	lw	ra,20(sp)
    3f4c:	27bd0018 	addiu	sp,sp,24
    3f50:	03e00008 	jr	ra
    3f54:	00000000 	nop

00003f58 <func_809815C8>:
    3f58:	27bdffe8 	addiu	sp,sp,-24
    3f5c:	afbf0014 	sw	ra,20(sp)
    3f60:	afa40018 	sw	a0,24(sp)
    3f64:	afa5001c 	sw	a1,28(sp)
    3f68:	0c000000 	jal	0 <DemoGt_Destroy>
    3f6c:	24060005 	li	a2,5
    3f70:	8fa40018 	lw	a0,24(sp)
    3f74:	0c000000 	jal	0 <DemoGt_Destroy>
    3f78:	8fa5001c 	lw	a1,28(sp)
    3f7c:	8fbf0014 	lw	ra,20(sp)
    3f80:	27bd0018 	addiu	sp,sp,24
    3f84:	03e00008 	jr	ra
    3f88:	00000000 	nop

00003f8c <func_809815FC>:
    3f8c:	3c030000 	lui	v1,0x0
    3f90:	8c630000 	lw	v1,0(v1)
    3f94:	afa50004 	sw	a1,4(sp)
    3f98:	84820172 	lh	v0,370(a0)
    3f9c:	846e14da 	lh	t6,5338(v1)
    3fa0:	846f14d8 	lh	t7,5336(v1)
    3fa4:	44822000 	mtc1	v0,$f4
    3fa8:	448e3000 	mtc1	t6,$f6
    3fac:	448f9000 	mtc1	t7,$f18
    3fb0:	46802020 	cvt.s.w	$f0,$f4
    3fb4:	3c014248 	lui	at,0x4248
    3fb8:	44815000 	mtc1	at,$f10
    3fbc:	3c010000 	lui	at,0x0
    3fc0:	240b4000 	li	t3,16384
    3fc4:	46803220 	cvt.s.w	$f8,$f6
    3fc8:	c4260000 	lwc1	$f6,0(at)
    3fcc:	3c010000 	lui	at,0x0
    3fd0:	46809120 	cvt.s.w	$f4,$f18
    3fd4:	460a4400 	add.s	$f16,$f8,$f10
    3fd8:	46062202 	mul.s	$f8,$f4,$f6
    3fdc:	c42a0000 	lwc1	$f10,0(at)
    3fe0:	460a4480 	add.s	$f18,$f8,$f10
    3fe4:	46120102 	mul.s	$f4,$f0,$f18
    3fe8:	46048180 	add.s	$f6,$f16,$f4
    3fec:	4600320d 	trunc.w.s	$f8,$f6
    3ff0:	44194000 	mfc1	t9,$f8
    3ff4:	00000000 	nop
    3ff8:	a4990174 	sh	t9,372(a0)
    3ffc:	84880174 	lh	t0,372(a0)
    4000:	00484821 	addu	t1,v0,t0
    4004:	a4890172 	sh	t1,370(a0)
    4008:	848a0172 	lh	t2,370(a0)
    400c:	29414001 	slti	at,t2,16385
    4010:	14200002 	bnez	at,401c <func_809815FC+0x90>
    4014:	00000000 	nop
    4018:	a48b0172 	sh	t3,370(a0)
    401c:	03e00008 	jr	ra
    4020:	00000000 	nop

00004024 <func_80981694>:
    4024:	27bdff80 	addiu	sp,sp,-128
    4028:	afbf001c 	sw	ra,28(sp)
    402c:	afb00018 	sw	s0,24(sp)
    4030:	afa40080 	sw	a0,128(sp)
    4034:	afa50084 	sw	a1,132(sp)
    4038:	84860172 	lh	a2,370(a0)
    403c:	3c010000 	lui	at,0x0
    4040:	c4280000 	lwc1	$f8,0(at)
    4044:	44862000 	mtc1	a2,$f4
    4048:	3c020000 	lui	v0,0x0
    404c:	8c420000 	lw	v0,0(v0)
    4050:	468021a0 	cvt.s.w	$f6,$f4
    4054:	46083002 	mul.s	$f0,$f6,$f8
    4058:	46000005 	abs.s	$f0,$f0
    405c:	e7a00070 	swc1	$f0,112(sp)
    4060:	844f14d0 	lh	t7,5328(v0)
    4064:	448f5000 	mtc1	t7,$f10
    4068:	00000000 	nop
    406c:	46805420 	cvt.s.w	$f16,$f10
    4070:	e7b0006c 	swc1	$f16,108(sp)
    4074:	844314ca 	lh	v1,5322(v0)
    4078:	2479c000 	addiu	t9,v1,-16384
    407c:	27284000 	addiu	t0,t9,16384
    4080:	a7b9006a 	sh	t9,106(sp)
    4084:	a7a80068 	sh	t0,104(sp)
    4088:	8cb00000 	lw	s0,0(a1)
    408c:	24050040 	li	a1,64
    4090:	a7a60076 	sh	a2,118(sp)
    4094:	0c000000 	jal	0 <DemoGt_Destroy>
    4098:	02002025 	move	a0,s0
    409c:	afa20060 	sw	v0,96(sp)
    40a0:	0c000000 	jal	0 <DemoGt_Destroy>
    40a4:	87a40076 	lh	a0,118(sp)
    40a8:	3c013f80 	lui	at,0x3f80
    40ac:	44819000 	mtc1	at,$f18
    40b0:	3c060000 	lui	a2,0x0
    40b4:	24c60000 	addiu	a2,a2,0
    40b8:	46009101 	sub.s	$f4,$f18,$f0
    40bc:	27a40030 	addiu	a0,sp,48
    40c0:	02002825 	move	a1,s0
    40c4:	240700d4 	li	a3,212
    40c8:	0c000000 	jal	0 <DemoGt_Destroy>
    40cc:	e7a40044 	swc1	$f4,68(sp)
    40d0:	0c000000 	jal	0 <DemoGt_Destroy>
    40d4:	87a40068 	lh	a0,104(sp)
    40d8:	44803000 	mtc1	zero,$f6
    40dc:	e7a00054 	swc1	$f0,84(sp)
    40e0:	87a40068 	lh	a0,104(sp)
    40e4:	0c000000 	jal	0 <DemoGt_Destroy>
    40e8:	e7a60058 	swc1	$f6,88(sp)
    40ec:	e7a0005c 	swc1	$f0,92(sp)
    40f0:	0c000000 	jal	0 <DemoGt_Destroy>
    40f4:	87a4006a 	lh	a0,106(sp)
    40f8:	c7a8006c 	lwc1	$f8,108(sp)
    40fc:	c7b00044 	lwc1	$f16,68(sp)
    4100:	87a40076 	lh	a0,118(sp)
    4104:	46080282 	mul.s	$f10,$f0,$f8
    4108:	00000000 	nop
    410c:	46105482 	mul.s	$f18,$f10,$f16
    4110:	0c000000 	jal	0 <DemoGt_Destroy>
    4114:	e7b20048 	swc1	$f18,72(sp)
    4118:	c7a4006c 	lwc1	$f4,108(sp)
    411c:	87a4006a 	lh	a0,106(sp)
    4120:	46040182 	mul.s	$f6,$f0,$f4
    4124:	0c000000 	jal	0 <DemoGt_Destroy>
    4128:	e7a6004c 	swc1	$f6,76(sp)
    412c:	c7a8006c 	lwc1	$f8,108(sp)
    4130:	c7b00044 	lwc1	$f16,68(sp)
    4134:	46080282 	mul.s	$f10,$f0,$f8
    4138:	00000000 	nop
    413c:	46105482 	mul.s	$f18,$f10,$f16
    4140:	0c000000 	jal	0 <DemoGt_Destroy>
    4144:	e7b20050 	swc1	$f18,80(sp)
    4148:	c7ac0070 	lwc1	$f12,112(sp)
    414c:	27a50054 	addiu	a1,sp,84
    4150:	0c000000 	jal	0 <DemoGt_Destroy>
    4154:	24060001 	li	a2,1
    4158:	c7ac0048 	lwc1	$f12,72(sp)
    415c:	c7ae004c 	lwc1	$f14,76(sp)
    4160:	8fa60050 	lw	a2,80(sp)
    4164:	0c000000 	jal	0 <DemoGt_Destroy>
    4168:	24070001 	li	a3,1
    416c:	3c050000 	lui	a1,0x0
    4170:	24a50000 	addiu	a1,a1,0
    4174:	8fa40060 	lw	a0,96(sp)
    4178:	0c000000 	jal	0 <DemoGt_Destroy>
    417c:	240600e3 	li	a2,227
    4180:	0c000000 	jal	0 <DemoGt_Destroy>
    4184:	8fa40084 	lw	a0,132(sp)
    4188:	14400003 	bnez	v0,4198 <func_80981694+0x174>
    418c:	8fa40080 	lw	a0,128(sp)
    4190:	0c000000 	jal	0 <DemoGt_Destroy>
    4194:	8fa50084 	lw	a1,132(sp)
    4198:	0c000000 	jal	0 <DemoGt_Destroy>
    419c:	00000000 	nop
    41a0:	0c000000 	jal	0 <DemoGt_Destroy>
    41a4:	02002025 	move	a0,s0
    41a8:	8e0202c0 	lw	v0,704(s0)
    41ac:	3c0bda38 	lui	t3,0xda38
    41b0:	356b0002 	ori	t3,t3,0x2
    41b4:	244a0008 	addiu	t2,v0,8
    41b8:	ae0a02c0 	sw	t2,704(s0)
    41bc:	ac4b0000 	sw	t3,0(v0)
    41c0:	8fac0060 	lw	t4,96(sp)
    41c4:	3c0f0601 	lui	t7,0x601
    41c8:	25ef9610 	addiu	t7,t7,-27120
    41cc:	ac4c0004 	sw	t4,4(v0)
    41d0:	8e0202c0 	lw	v0,704(s0)
    41d4:	3c0ede00 	lui	t6,0xde00
    41d8:	3c19d838 	lui	t9,0xd838
    41dc:	244d0008 	addiu	t5,v0,8
    41e0:	ae0d02c0 	sw	t5,704(s0)
    41e4:	ac4f0004 	sw	t7,4(v0)
    41e8:	ac4e0000 	sw	t6,0(v0)
    41ec:	8e0202c0 	lw	v0,704(s0)
    41f0:	37390002 	ori	t9,t9,0x2
    41f4:	24080040 	li	t0,64
    41f8:	24580008 	addiu	t8,v0,8
    41fc:	ae1802c0 	sw	t8,704(s0)
    4200:	3c060000 	lui	a2,0x0
    4204:	24c60000 	addiu	a2,a2,0
    4208:	27a40030 	addiu	a0,sp,48
    420c:	02002825 	move	a1,s0
    4210:	240700f1 	li	a3,241
    4214:	ac480004 	sw	t0,4(v0)
    4218:	0c000000 	jal	0 <DemoGt_Destroy>
    421c:	ac590000 	sw	t9,0(v0)
    4220:	8fbf001c 	lw	ra,28(sp)
    4224:	8fb00018 	lw	s0,24(sp)
    4228:	27bd0080 	addiu	sp,sp,128
    422c:	03e00008 	jr	ra
    4230:	00000000 	nop

00004234 <func_809818A4>:
    4234:	27bdffe0 	addiu	sp,sp,-32
    4238:	afbf001c 	sw	ra,28(sp)
    423c:	3c014120 	lui	at,0x4120
    4240:	44810000 	mtc1	at,$f0
    4244:	c4840050 	lwc1	$f4,80(a0)
    4248:	c4880054 	lwc1	$f8,84(a0)
    424c:	c4900058 	lwc1	$f16,88(a0)
    4250:	46002182 	mul.s	$f6,$f4,$f0
    4254:	24060005 	li	a2,5
    4258:	24070006 	li	a3,6
    425c:	46004282 	mul.s	$f10,$f8,$f0
    4260:	00000000 	nop
    4264:	46008482 	mul.s	$f18,$f16,$f0
    4268:	e4860050 	swc1	$f6,80(a0)
    426c:	e48a0054 	swc1	$f10,84(a0)
    4270:	e4920058 	swc1	$f18,88(a0)
    4274:	0c000000 	jal	0 <DemoGt_Destroy>
    4278:	afa00010 	sw	zero,16(sp)
    427c:	8fbf001c 	lw	ra,28(sp)
    4280:	27bd0020 	addiu	sp,sp,32
    4284:	03e00008 	jr	ra
    4288:	00000000 	nop

0000428c <func_809818FC>:
    428c:	27bdffe8 	addiu	sp,sp,-24
    4290:	afbf0014 	sw	ra,20(sp)
    4294:	94a21d74 	lhu	v0,7540(a1)
    4298:	2401034d 	li	at,845
    429c:	248400e4 	addiu	a0,a0,228
    42a0:	54410004 	bnel	v0,at,42b4 <func_809818FC+0x28>
    42a4:	8fbf0014 	lw	ra,20(sp)
    42a8:	0c000000 	jal	0 <DemoGt_Destroy>
    42ac:	240520de 	li	a1,8414
    42b0:	8fbf0014 	lw	ra,20(sp)
    42b4:	27bd0018 	addiu	sp,sp,24
    42b8:	03e00008 	jr	ra
    42bc:	00000000 	nop

000042c0 <func_80981930>:
    42c0:	27bdffe8 	addiu	sp,sp,-24
    42c4:	afa40018 	sw	a0,24(sp)
    42c8:	afbf0014 	sw	ra,20(sp)
    42cc:	afa5001c 	sw	a1,28(sp)
    42d0:	00a02025 	move	a0,a1
    42d4:	24050002 	li	a1,2
    42d8:	0c000000 	jal	0 <DemoGt_Destroy>
    42dc:	24060006 	li	a2,6
    42e0:	10400005 	beqz	v0,42f8 <func_80981930+0x38>
    42e4:	8fa4001c 	lw	a0,28(sp)
    42e8:	8faf0018 	lw	t7,24(sp)
    42ec:	240e000d 	li	t6,13
    42f0:	10000008 	b	4314 <func_80981930+0x54>
    42f4:	adee0164 	sw	t6,356(t7)
    42f8:	24050003 	li	a1,3
    42fc:	0c000000 	jal	0 <DemoGt_Destroy>
    4300:	24060006 	li	a2,6
    4304:	10400003 	beqz	v0,4314 <func_80981930+0x54>
    4308:	8fb90018 	lw	t9,24(sp)
    430c:	24180012 	li	t8,18
    4310:	af380164 	sw	t8,356(t9)
    4314:	8fbf0014 	lw	ra,20(sp)
    4318:	27bd0018 	addiu	sp,sp,24
    431c:	03e00008 	jr	ra
    4320:	00000000 	nop

00004324 <func_80981994>:
    4324:	27bdffe8 	addiu	sp,sp,-24
    4328:	afbf0014 	sw	ra,20(sp)
    432c:	afa5001c 	sw	a1,28(sp)
    4330:	afa40018 	sw	a0,24(sp)
    4334:	0c000000 	jal	0 <DemoGt_Destroy>
    4338:	24050006 	li	a1,6
    433c:	8fa40018 	lw	a0,24(sp)
    4340:	0c000000 	jal	0 <DemoGt_Destroy>
    4344:	8fa5001c 	lw	a1,28(sp)
    4348:	8fa40018 	lw	a0,24(sp)
    434c:	0c000000 	jal	0 <DemoGt_Destroy>
    4350:	8fa5001c 	lw	a1,28(sp)
    4354:	8fbf0014 	lw	ra,20(sp)
    4358:	27bd0018 	addiu	sp,sp,24
    435c:	03e00008 	jr	ra
    4360:	00000000 	nop

00004364 <func_809819D4>:
    4364:	27bdffe8 	addiu	sp,sp,-24
    4368:	afbf0014 	sw	ra,20(sp)
    436c:	afa40018 	sw	a0,24(sp)
    4370:	afa5001c 	sw	a1,28(sp)
    4374:	0c000000 	jal	0 <DemoGt_Destroy>
    4378:	24060006 	li	a2,6
    437c:	8fa40018 	lw	a0,24(sp)
    4380:	0c000000 	jal	0 <DemoGt_Destroy>
    4384:	8fa5001c 	lw	a1,28(sp)
    4388:	8fbf0014 	lw	ra,20(sp)
    438c:	27bd0018 	addiu	sp,sp,24
    4390:	03e00008 	jr	ra
    4394:	00000000 	nop

00004398 <func_80981A08>:
    4398:	3c030000 	lui	v1,0x0
    439c:	8c630000 	lw	v1,0(v1)
    43a0:	afa50004 	sw	a1,4(sp)
    43a4:	84820172 	lh	v0,370(a0)
    43a8:	846e14de 	lh	t6,5342(v1)
    43ac:	846f14dc 	lh	t7,5340(v1)
    43b0:	44822000 	mtc1	v0,$f4
    43b4:	448e3000 	mtc1	t6,$f6
    43b8:	448f9000 	mtc1	t7,$f18
    43bc:	46802020 	cvt.s.w	$f0,$f4
    43c0:	3c014248 	lui	at,0x4248
    43c4:	44815000 	mtc1	at,$f10
    43c8:	3c010000 	lui	at,0x0
    43cc:	240b4000 	li	t3,16384
    43d0:	46803220 	cvt.s.w	$f8,$f6
    43d4:	c4260000 	lwc1	$f6,0(at)
    43d8:	3c010000 	lui	at,0x0
    43dc:	46809120 	cvt.s.w	$f4,$f18
    43e0:	460a4400 	add.s	$f16,$f8,$f10
    43e4:	46062202 	mul.s	$f8,$f4,$f6
    43e8:	c42a0000 	lwc1	$f10,0(at)
    43ec:	460a4480 	add.s	$f18,$f8,$f10
    43f0:	46120102 	mul.s	$f4,$f0,$f18
    43f4:	46048180 	add.s	$f6,$f16,$f4
    43f8:	4600320d 	trunc.w.s	$f8,$f6
    43fc:	44194000 	mfc1	t9,$f8
    4400:	00000000 	nop
    4404:	a4990174 	sh	t9,372(a0)
    4408:	84880174 	lh	t0,372(a0)
    440c:	00484821 	addu	t1,v0,t0
    4410:	a4890172 	sh	t1,370(a0)
    4414:	848a0172 	lh	t2,370(a0)
    4418:	29414001 	slti	at,t2,16385
    441c:	14200002 	bnez	at,4428 <func_80981A08+0x90>
    4420:	00000000 	nop
    4424:	a48b0172 	sh	t3,370(a0)
    4428:	03e00008 	jr	ra
    442c:	00000000 	nop

00004430 <func_80981AA0>:
    4430:	27bdff80 	addiu	sp,sp,-128
    4434:	afbf001c 	sw	ra,28(sp)
    4438:	afb00018 	sw	s0,24(sp)
    443c:	afa50084 	sw	a1,132(sp)
    4440:	84870172 	lh	a3,370(a0)
    4444:	3c010000 	lui	at,0x0
    4448:	c4280000 	lwc1	$f8,0(at)
    444c:	44872000 	mtc1	a3,$f4
    4450:	3c020000 	lui	v0,0x0
    4454:	8c420000 	lw	v0,0(v0)
    4458:	468021a0 	cvt.s.w	$f6,$f4
    445c:	46083002 	mul.s	$f0,$f6,$f8
    4460:	46000005 	abs.s	$f0,$f0
    4464:	e7a00074 	swc1	$f0,116(sp)
    4468:	844e14d2 	lh	t6,5330(v0)
    446c:	448e5000 	mtc1	t6,$f10
    4470:	00000000 	nop
    4474:	46805420 	cvt.s.w	$f16,$f10
    4478:	e7b00070 	swc1	$f16,112(sp)
    447c:	844314cc 	lh	v1,5324(v0)
    4480:	24784000 	addiu	t8,v1,16384
    4484:	27194000 	addiu	t9,t8,16384
    4488:	a7b8006e 	sh	t8,110(sp)
    448c:	a7b9006c 	sh	t9,108(sp)
    4490:	8cb00000 	lw	s0,0(a1)
    4494:	24050040 	li	a1,64
    4498:	a7a7007a 	sh	a3,122(sp)
    449c:	0c000000 	jal	0 <DemoGt_Destroy>
    44a0:	02002025 	move	a0,s0
    44a4:	afa20064 	sw	v0,100(sp)
    44a8:	0c000000 	jal	0 <DemoGt_Destroy>
    44ac:	87a4007a 	lh	a0,122(sp)
    44b0:	3c013f80 	lui	at,0x3f80
    44b4:	44819000 	mtc1	at,$f18
    44b8:	3c060000 	lui	a2,0x0
    44bc:	24c60000 	addiu	a2,a2,0
    44c0:	46009101 	sub.s	$f4,$f18,$f0
    44c4:	27a40034 	addiu	a0,sp,52
    44c8:	02002825 	move	a1,s0
    44cc:	24070114 	li	a3,276
    44d0:	0c000000 	jal	0 <DemoGt_Destroy>
    44d4:	e7a40048 	swc1	$f4,72(sp)
    44d8:	0c000000 	jal	0 <DemoGt_Destroy>
    44dc:	87a4006c 	lh	a0,108(sp)
    44e0:	44803000 	mtc1	zero,$f6
    44e4:	e7a00058 	swc1	$f0,88(sp)
    44e8:	87a4006c 	lh	a0,108(sp)
    44ec:	0c000000 	jal	0 <DemoGt_Destroy>
    44f0:	e7a6005c 	swc1	$f6,92(sp)
    44f4:	e7a00060 	swc1	$f0,96(sp)
    44f8:	0c000000 	jal	0 <DemoGt_Destroy>
    44fc:	87a4006e 	lh	a0,110(sp)
    4500:	c7a80070 	lwc1	$f8,112(sp)
    4504:	c7b00048 	lwc1	$f16,72(sp)
    4508:	87a4007a 	lh	a0,122(sp)
    450c:	46080282 	mul.s	$f10,$f0,$f8
    4510:	00000000 	nop
    4514:	46105482 	mul.s	$f18,$f10,$f16
    4518:	0c000000 	jal	0 <DemoGt_Destroy>
    451c:	e7b2004c 	swc1	$f18,76(sp)
    4520:	c7a40070 	lwc1	$f4,112(sp)
    4524:	87a4006e 	lh	a0,110(sp)
    4528:	46040182 	mul.s	$f6,$f0,$f4
    452c:	0c000000 	jal	0 <DemoGt_Destroy>
    4530:	e7a60050 	swc1	$f6,80(sp)
    4534:	c7a80070 	lwc1	$f8,112(sp)
    4538:	c7b00048 	lwc1	$f16,72(sp)
    453c:	46080282 	mul.s	$f10,$f0,$f8
    4540:	00000000 	nop
    4544:	46105482 	mul.s	$f18,$f10,$f16
    4548:	0c000000 	jal	0 <DemoGt_Destroy>
    454c:	e7b20054 	swc1	$f18,84(sp)
    4550:	c7ac0074 	lwc1	$f12,116(sp)
    4554:	27a50058 	addiu	a1,sp,88
    4558:	0c000000 	jal	0 <DemoGt_Destroy>
    455c:	24060001 	li	a2,1
    4560:	c7ac004c 	lwc1	$f12,76(sp)
    4564:	c7ae0050 	lwc1	$f14,80(sp)
    4568:	8fa60054 	lw	a2,84(sp)
    456c:	0c000000 	jal	0 <DemoGt_Destroy>
    4570:	24070001 	li	a3,1
    4574:	3c050000 	lui	a1,0x0
    4578:	24a50000 	addiu	a1,a1,0
    457c:	8fa40064 	lw	a0,100(sp)
    4580:	0c000000 	jal	0 <DemoGt_Destroy>
    4584:	24060123 	li	a2,291
    4588:	0c000000 	jal	0 <DemoGt_Destroy>
    458c:	00000000 	nop
    4590:	0c000000 	jal	0 <DemoGt_Destroy>
    4594:	02002025 	move	a0,s0
    4598:	8e0202c0 	lw	v0,704(s0)
    459c:	3c0ada38 	lui	t2,0xda38
    45a0:	354a0002 	ori	t2,t2,0x2
    45a4:	24490008 	addiu	t1,v0,8
    45a8:	ae0902c0 	sw	t1,704(s0)
    45ac:	ac4a0000 	sw	t2,0(v0)
    45b0:	8fab0064 	lw	t3,100(sp)
    45b4:	3c0e0601 	lui	t6,0x601
    45b8:	25ce9610 	addiu	t6,t6,-27120
    45bc:	ac4b0004 	sw	t3,4(v0)
    45c0:	8e0202c0 	lw	v0,704(s0)
    45c4:	3c0dde00 	lui	t5,0xde00
    45c8:	3c18d838 	lui	t8,0xd838
    45cc:	244c0008 	addiu	t4,v0,8
    45d0:	ae0c02c0 	sw	t4,704(s0)
    45d4:	ac4e0004 	sw	t6,4(v0)
    45d8:	ac4d0000 	sw	t5,0(v0)
    45dc:	8e0202c0 	lw	v0,704(s0)
    45e0:	37180002 	ori	t8,t8,0x2
    45e4:	24190040 	li	t9,64
    45e8:	244f0008 	addiu	t7,v0,8
    45ec:	ae0f02c0 	sw	t7,704(s0)
    45f0:	3c060000 	lui	a2,0x0
    45f4:	24c60000 	addiu	a2,a2,0
    45f8:	27a40034 	addiu	a0,sp,52
    45fc:	02002825 	move	a1,s0
    4600:	24070133 	li	a3,307
    4604:	ac590004 	sw	t9,4(v0)
    4608:	0c000000 	jal	0 <DemoGt_Destroy>
    460c:	ac580000 	sw	t8,0(v0)
    4610:	8fbf001c 	lw	ra,28(sp)
    4614:	8fb00018 	lw	s0,24(sp)
    4618:	27bd0080 	addiu	sp,sp,128
    461c:	03e00008 	jr	ra
    4620:	00000000 	nop

00004624 <func_80981C94>:
    4624:	27bdffe0 	addiu	sp,sp,-32
    4628:	afbf001c 	sw	ra,28(sp)
    462c:	3c014120 	lui	at,0x4120
    4630:	44810000 	mtc1	at,$f0
    4634:	c4840050 	lwc1	$f4,80(a0)
    4638:	c4880054 	lwc1	$f8,84(a0)
    463c:	c4900058 	lwc1	$f16,88(a0)
    4640:	46002182 	mul.s	$f6,$f4,$f0
    4644:	24060006 	li	a2,6
    4648:	24070007 	li	a3,7
    464c:	46004282 	mul.s	$f10,$f8,$f0
    4650:	00000000 	nop
    4654:	46008482 	mul.s	$f18,$f16,$f0
    4658:	e4860050 	swc1	$f6,80(a0)
    465c:	e48a0054 	swc1	$f10,84(a0)
    4660:	e4920058 	swc1	$f18,88(a0)
    4664:	0c000000 	jal	0 <DemoGt_Destroy>
    4668:	afa00010 	sw	zero,16(sp)
    466c:	8fbf001c 	lw	ra,28(sp)
    4670:	27bd0020 	addiu	sp,sp,32
    4674:	03e00008 	jr	ra
    4678:	00000000 	nop

0000467c <func_80981CEC>:
    467c:	27bdffe8 	addiu	sp,sp,-24
    4680:	afbf0014 	sw	ra,20(sp)
    4684:	94a21d74 	lhu	v0,7540(a1)
    4688:	240100b7 	li	at,183
    468c:	248400e4 	addiu	a0,a0,228
    4690:	54410004 	bnel	v0,at,46a4 <func_80981CEC+0x28>
    4694:	8fbf0014 	lw	ra,20(sp)
    4698:	0c000000 	jal	0 <DemoGt_Destroy>
    469c:	240520de 	li	a1,8414
    46a0:	8fbf0014 	lw	ra,20(sp)
    46a4:	27bd0018 	addiu	sp,sp,24
    46a8:	03e00008 	jr	ra
    46ac:	00000000 	nop

000046b0 <func_80981D20>:
    46b0:	3c060000 	lui	a2,0x0
    46b4:	24c60000 	addiu	a2,a2,0
    46b8:	8cc30000 	lw	v1,0(a2)
    46bc:	84820172 	lh	v0,370(a0)
    46c0:	3c0142c8 	lui	at,0x42c8
    46c4:	846e14ec 	lh	t6,5356(v1)
    46c8:	846f14d4 	lh	t7,5332(v1)
    46cc:	44822000 	mtc1	v0,$f4
    46d0:	448e3000 	mtc1	t6,$f6
    46d4:	448f9000 	mtc1	t7,$f18
    46d8:	46802020 	cvt.s.w	$f0,$f4
    46dc:	44815000 	mtc1	at,$f10
    46e0:	3c010000 	lui	at,0x0
    46e4:	46803220 	cvt.s.w	$f8,$f6
    46e8:	c4260000 	lwc1	$f6,0(at)
    46ec:	3c010000 	lui	at,0x0
    46f0:	46809120 	cvt.s.w	$f4,$f18
    46f4:	460a4400 	add.s	$f16,$f8,$f10
    46f8:	46062202 	mul.s	$f8,$f4,$f6
    46fc:	c42a0000 	lwc1	$f10,0(at)
    4700:	460a4480 	add.s	$f18,$f8,$f10
    4704:	46120102 	mul.s	$f4,$f0,$f18
    4708:	46048180 	add.s	$f6,$f16,$f4
    470c:	4600320d 	trunc.w.s	$f8,$f6
    4710:	44194000 	mfc1	t9,$f8
    4714:	00000000 	nop
    4718:	a4990174 	sh	t9,372(a0)
    471c:	84880174 	lh	t0,372(a0)
    4720:	00484821 	addu	t1,v0,t0
    4724:	a4890172 	sh	t1,370(a0)
    4728:	8cca0000 	lw	t2,0(a2)
    472c:	848d0172 	lh	t5,370(a0)
    4730:	854514f4 	lh	a1,5364(t2)
    4734:	24a54000 	addiu	a1,a1,16384
    4738:	00055c00 	sll	t3,a1,0x10
    473c:	000b6403 	sra	t4,t3,0x10
    4740:	018d082a 	slt	at,t4,t5
    4744:	10200002 	beqz	at,4750 <func_80981D20+0xa0>
    4748:	00000000 	nop
    474c:	a4850172 	sh	a1,370(a0)
    4750:	03e00008 	jr	ra
    4754:	00000000 	nop

00004758 <func_80981DC8>:
    4758:	27bdffe8 	addiu	sp,sp,-24
    475c:	afa40018 	sw	a0,24(sp)
    4760:	afbf0014 	sw	ra,20(sp)
    4764:	00a02025 	move	a0,a1
    4768:	24050002 	li	a1,2
    476c:	0c000000 	jal	0 <DemoGt_Destroy>
    4770:	24060007 	li	a2,7
    4774:	10400003 	beqz	v0,4784 <func_80981DC8+0x2c>
    4778:	8faf0018 	lw	t7,24(sp)
    477c:	240e000e 	li	t6,14
    4780:	adee0164 	sw	t6,356(t7)
    4784:	8fbf0014 	lw	ra,20(sp)
    4788:	27bd0018 	addiu	sp,sp,24
    478c:	03e00008 	jr	ra
    4790:	00000000 	nop

00004794 <func_80981E04>:
    4794:	27bdffe8 	addiu	sp,sp,-24
    4798:	afbf0014 	sw	ra,20(sp)
    479c:	afa5001c 	sw	a1,28(sp)
    47a0:	afa40018 	sw	a0,24(sp)
    47a4:	0c000000 	jal	0 <DemoGt_Destroy>
    47a8:	24050007 	li	a1,7
    47ac:	8fa40018 	lw	a0,24(sp)
    47b0:	0c000000 	jal	0 <DemoGt_Destroy>
    47b4:	8fa5001c 	lw	a1,28(sp)
    47b8:	8fa40018 	lw	a0,24(sp)
    47bc:	0c000000 	jal	0 <DemoGt_Destroy>
    47c0:	8fa5001c 	lw	a1,28(sp)
    47c4:	8fbf0014 	lw	ra,20(sp)
    47c8:	27bd0018 	addiu	sp,sp,24
    47cc:	03e00008 	jr	ra
    47d0:	00000000 	nop

000047d4 <func_80981E44>:
    47d4:	27bdffe8 	addiu	sp,sp,-24
    47d8:	afbf0014 	sw	ra,20(sp)
    47dc:	afa40018 	sw	a0,24(sp)
    47e0:	0c000000 	jal	0 <DemoGt_Destroy>
    47e4:	afa5001c 	sw	a1,28(sp)
    47e8:	8fa40018 	lw	a0,24(sp)
    47ec:	8fa5001c 	lw	a1,28(sp)
    47f0:	0c000000 	jal	0 <DemoGt_Destroy>
    47f4:	24060007 	li	a2,7
    47f8:	8fa40018 	lw	a0,24(sp)
    47fc:	0c000000 	jal	0 <DemoGt_Destroy>
    4800:	8fa5001c 	lw	a1,28(sp)
    4804:	8fbf0014 	lw	ra,20(sp)
    4808:	27bd0018 	addiu	sp,sp,24
    480c:	03e00008 	jr	ra
    4810:	00000000 	nop

00004814 <func_80981E84>:
    4814:	27bdff88 	addiu	sp,sp,-120
    4818:	afbf001c 	sw	ra,28(sp)
    481c:	afb00018 	sw	s0,24(sp)
    4820:	84880172 	lh	t0,370(a0)
    4824:	3c010000 	lui	at,0x0
    4828:	c4280000 	lwc1	$f8,0(at)
    482c:	44882000 	mtc1	t0,$f4
    4830:	3c020000 	lui	v0,0x0
    4834:	8c420000 	lw	v0,0(v0)
    4838:	468021a0 	cvt.s.w	$f6,$f4
    483c:	8cb00000 	lw	s0,0(a1)
    4840:	24050040 	li	a1,64
    4844:	02002025 	move	a0,s0
    4848:	46083002 	mul.s	$f0,$f6,$f8
    484c:	46000005 	abs.s	$f0,$f0
    4850:	e7a00068 	swc1	$f0,104(sp)
    4854:	844e14ea 	lh	t6,5354(v0)
    4858:	448e5000 	mtc1	t6,$f10
    485c:	00000000 	nop
    4860:	46805420 	cvt.s.w	$f16,$f10
    4864:	e7b00064 	swc1	$f16,100(sp)
    4868:	844314e8 	lh	v1,5352(v0)
    486c:	a7a8006e 	sh	t0,110(sp)
    4870:	24787fec 	addiu	t8,v1,32748
    4874:	27194000 	addiu	t9,t8,16384
    4878:	a7b80062 	sh	t8,98(sp)
    487c:	0c000000 	jal	0 <DemoGt_Destroy>
    4880:	a7b90060 	sh	t9,96(sp)
    4884:	afa2005c 	sw	v0,92(sp)
    4888:	0c000000 	jal	0 <DemoGt_Destroy>
    488c:	87a4006e 	lh	a0,110(sp)
    4890:	3c013f80 	lui	at,0x3f80
    4894:	44819000 	mtc1	at,$f18
    4898:	3c060000 	lui	a2,0x0
    489c:	24c60000 	addiu	a2,a2,0
    48a0:	46009101 	sub.s	$f4,$f18,$f0
    48a4:	27a4002c 	addiu	a0,sp,44
    48a8:	02002825 	move	a1,s0
    48ac:	24070088 	li	a3,136
    48b0:	0c000000 	jal	0 <DemoGt_Destroy>
    48b4:	e7a40040 	swc1	$f4,64(sp)
    48b8:	0c000000 	jal	0 <DemoGt_Destroy>
    48bc:	87a40060 	lh	a0,96(sp)
    48c0:	44803000 	mtc1	zero,$f6
    48c4:	e7a00050 	swc1	$f0,80(sp)
    48c8:	87a40060 	lh	a0,96(sp)
    48cc:	0c000000 	jal	0 <DemoGt_Destroy>
    48d0:	e7a60054 	swc1	$f6,84(sp)
    48d4:	e7a00058 	swc1	$f0,88(sp)
    48d8:	0c000000 	jal	0 <DemoGt_Destroy>
    48dc:	87a40062 	lh	a0,98(sp)
    48e0:	c7a80064 	lwc1	$f8,100(sp)
    48e4:	c7b00040 	lwc1	$f16,64(sp)
    48e8:	87a4006e 	lh	a0,110(sp)
    48ec:	46080282 	mul.s	$f10,$f0,$f8
    48f0:	00000000 	nop
    48f4:	46105482 	mul.s	$f18,$f10,$f16
    48f8:	0c000000 	jal	0 <DemoGt_Destroy>
    48fc:	e7b20044 	swc1	$f18,68(sp)
    4900:	c7a40064 	lwc1	$f4,100(sp)
    4904:	87a40062 	lh	a0,98(sp)
    4908:	46040182 	mul.s	$f6,$f0,$f4
    490c:	0c000000 	jal	0 <DemoGt_Destroy>
    4910:	e7a60048 	swc1	$f6,72(sp)
    4914:	c7a80064 	lwc1	$f8,100(sp)
    4918:	c7b00040 	lwc1	$f16,64(sp)
    491c:	46080282 	mul.s	$f10,$f0,$f8
    4920:	00000000 	nop
    4924:	46105482 	mul.s	$f18,$f10,$f16
    4928:	0c000000 	jal	0 <DemoGt_Destroy>
    492c:	e7b2004c 	swc1	$f18,76(sp)
    4930:	c7ac0068 	lwc1	$f12,104(sp)
    4934:	27a50050 	addiu	a1,sp,80
    4938:	0c000000 	jal	0 <DemoGt_Destroy>
    493c:	24060001 	li	a2,1
    4940:	c7ac0044 	lwc1	$f12,68(sp)
    4944:	c7ae0048 	lwc1	$f14,72(sp)
    4948:	8fa6004c 	lw	a2,76(sp)
    494c:	0c000000 	jal	0 <DemoGt_Destroy>
    4950:	24070001 	li	a3,1
    4954:	3c050000 	lui	a1,0x0
    4958:	24a50000 	addiu	a1,a1,0
    495c:	8fa4005c 	lw	a0,92(sp)
    4960:	0c000000 	jal	0 <DemoGt_Destroy>
    4964:	24060098 	li	a2,152
    4968:	0c000000 	jal	0 <DemoGt_Destroy>
    496c:	00000000 	nop
    4970:	0c000000 	jal	0 <DemoGt_Destroy>
    4974:	02002025 	move	a0,s0
    4978:	8e0302c0 	lw	v1,704(s0)
    497c:	3c0ada38 	lui	t2,0xda38
    4980:	354a0003 	ori	t2,t2,0x3
    4984:	24690008 	addiu	t1,v1,8
    4988:	ae0902c0 	sw	t1,704(s0)
    498c:	ac6a0000 	sw	t2,0(v1)
    4990:	8fab005c 	lw	t3,92(sp)
    4994:	3c0e0601 	lui	t6,0x601
    4998:	25ce9970 	addiu	t6,t6,-26256
    499c:	ac6b0004 	sw	t3,4(v1)
    49a0:	8e0302c0 	lw	v1,704(s0)
    49a4:	3c0dde00 	lui	t5,0xde00
    49a8:	3c060000 	lui	a2,0x0
    49ac:	246c0008 	addiu	t4,v1,8
    49b0:	ae0c02c0 	sw	t4,704(s0)
    49b4:	24c60000 	addiu	a2,a2,0
    49b8:	27a4002c 	addiu	a0,sp,44
    49bc:	02002825 	move	a1,s0
    49c0:	240700a0 	li	a3,160
    49c4:	ac6e0004 	sw	t6,4(v1)
    49c8:	0c000000 	jal	0 <DemoGt_Destroy>
    49cc:	ac6d0000 	sw	t5,0(v1)
    49d0:	8fbf001c 	lw	ra,28(sp)
    49d4:	8fb00018 	lw	s0,24(sp)
    49d8:	27bd0078 	addiu	sp,sp,120
    49dc:	03e00008 	jr	ra
    49e0:	00000000 	nop

000049e4 <func_80982054>:
    49e4:	27bdffe0 	addiu	sp,sp,-32
    49e8:	afbf001c 	sw	ra,28(sp)
    49ec:	3c014120 	lui	at,0x4120
    49f0:	44810000 	mtc1	at,$f0
    49f4:	c4840050 	lwc1	$f4,80(a0)
    49f8:	c4880054 	lwc1	$f8,84(a0)
    49fc:	c4900058 	lwc1	$f16,88(a0)
    4a00:	46002182 	mul.s	$f6,$f4,$f0
    4a04:	24060007 	li	a2,7
    4a08:	24070008 	li	a3,8
    4a0c:	46004282 	mul.s	$f10,$f8,$f0
    4a10:	00000000 	nop
    4a14:	46008482 	mul.s	$f18,$f16,$f0
    4a18:	e4860050 	swc1	$f6,80(a0)
    4a1c:	e48a0054 	swc1	$f10,84(a0)
    4a20:	e4920058 	swc1	$f18,88(a0)
    4a24:	0c000000 	jal	0 <DemoGt_Destroy>
    4a28:	afa00010 	sw	zero,16(sp)
    4a2c:	8fbf001c 	lw	ra,28(sp)
    4a30:	27bd0020 	addiu	sp,sp,32
    4a34:	03e00008 	jr	ra
    4a38:	00000000 	nop

00004a3c <func_809820AC>:
    4a3c:	27bdffe8 	addiu	sp,sp,-24
    4a40:	afbf0014 	sw	ra,20(sp)
    4a44:	94a21d74 	lhu	v0,7540(a1)
    4a48:	2401009a 	li	at,154
    4a4c:	248400e4 	addiu	a0,a0,228
    4a50:	54410004 	bnel	v0,at,4a64 <func_809820AC+0x28>
    4a54:	8fbf0014 	lw	ra,20(sp)
    4a58:	0c000000 	jal	0 <DemoGt_Destroy>
    4a5c:	240520de 	li	a1,8414
    4a60:	8fbf0014 	lw	ra,20(sp)
    4a64:	27bd0018 	addiu	sp,sp,24
    4a68:	03e00008 	jr	ra
    4a6c:	00000000 	nop

00004a70 <func_809820E0>:
    4a70:	3c060000 	lui	a2,0x0
    4a74:	24c60000 	addiu	a2,a2,0
    4a78:	8cc30000 	lw	v1,0(a2)
    4a7c:	84820172 	lh	v0,370(a0)
    4a80:	3c0142c8 	lui	at,0x42c8
    4a84:	846e14f2 	lh	t6,5362(v1)
    4a88:	846f14d4 	lh	t7,5332(v1)
    4a8c:	44822000 	mtc1	v0,$f4
    4a90:	448e3000 	mtc1	t6,$f6
    4a94:	448f9000 	mtc1	t7,$f18
    4a98:	46802020 	cvt.s.w	$f0,$f4
    4a9c:	44815000 	mtc1	at,$f10
    4aa0:	3c010000 	lui	at,0x0
    4aa4:	46803220 	cvt.s.w	$f8,$f6
    4aa8:	c4260000 	lwc1	$f6,0(at)
    4aac:	3c010000 	lui	at,0x0
    4ab0:	46809120 	cvt.s.w	$f4,$f18
    4ab4:	460a4400 	add.s	$f16,$f8,$f10
    4ab8:	46062202 	mul.s	$f8,$f4,$f6
    4abc:	c42a0000 	lwc1	$f10,0(at)
    4ac0:	460a4480 	add.s	$f18,$f8,$f10
    4ac4:	46120102 	mul.s	$f4,$f0,$f18
    4ac8:	46048180 	add.s	$f6,$f16,$f4
    4acc:	4600320d 	trunc.w.s	$f8,$f6
    4ad0:	44194000 	mfc1	t9,$f8
    4ad4:	00000000 	nop
    4ad8:	a4990174 	sh	t9,372(a0)
    4adc:	84880174 	lh	t0,372(a0)
    4ae0:	00484821 	addu	t1,v0,t0
    4ae4:	a4890172 	sh	t1,370(a0)
    4ae8:	8cca0000 	lw	t2,0(a2)
    4aec:	848d0172 	lh	t5,370(a0)
    4af0:	854514f6 	lh	a1,5366(t2)
    4af4:	24a54000 	addiu	a1,a1,16384
    4af8:	00055c00 	sll	t3,a1,0x10
    4afc:	000b6403 	sra	t4,t3,0x10
    4b00:	018d082a 	slt	at,t4,t5
    4b04:	10200002 	beqz	at,4b10 <func_809820E0+0xa0>
    4b08:	00000000 	nop
    4b0c:	a4850172 	sh	a1,370(a0)
    4b10:	03e00008 	jr	ra
    4b14:	00000000 	nop

00004b18 <func_80982188>:
    4b18:	27bdffe8 	addiu	sp,sp,-24
    4b1c:	afa40018 	sw	a0,24(sp)
    4b20:	afbf0014 	sw	ra,20(sp)
    4b24:	00a02025 	move	a0,a1
    4b28:	24050002 	li	a1,2
    4b2c:	0c000000 	jal	0 <DemoGt_Destroy>
    4b30:	24060009 	li	a2,9
    4b34:	10400003 	beqz	v0,4b44 <func_80982188+0x2c>
    4b38:	8faf0018 	lw	t7,24(sp)
    4b3c:	240e000f 	li	t6,15
    4b40:	adee0164 	sw	t6,356(t7)
    4b44:	8fbf0014 	lw	ra,20(sp)
    4b48:	27bd0018 	addiu	sp,sp,24
    4b4c:	03e00008 	jr	ra
    4b50:	00000000 	nop

00004b54 <func_809821C4>:
    4b54:	27bdffe8 	addiu	sp,sp,-24
    4b58:	afbf0014 	sw	ra,20(sp)
    4b5c:	afa5001c 	sw	a1,28(sp)
    4b60:	afa40018 	sw	a0,24(sp)
    4b64:	0c000000 	jal	0 <DemoGt_Destroy>
    4b68:	24050009 	li	a1,9
    4b6c:	8fa40018 	lw	a0,24(sp)
    4b70:	0c000000 	jal	0 <DemoGt_Destroy>
    4b74:	8fa5001c 	lw	a1,28(sp)
    4b78:	8fa40018 	lw	a0,24(sp)
    4b7c:	0c000000 	jal	0 <DemoGt_Destroy>
    4b80:	8fa5001c 	lw	a1,28(sp)
    4b84:	8fbf0014 	lw	ra,20(sp)
    4b88:	27bd0018 	addiu	sp,sp,24
    4b8c:	03e00008 	jr	ra
    4b90:	00000000 	nop

00004b94 <func_80982204>:
    4b94:	27bdffe8 	addiu	sp,sp,-24
    4b98:	afbf0014 	sw	ra,20(sp)
    4b9c:	afa40018 	sw	a0,24(sp)
    4ba0:	0c000000 	jal	0 <DemoGt_Destroy>
    4ba4:	afa5001c 	sw	a1,28(sp)
    4ba8:	8fa40018 	lw	a0,24(sp)
    4bac:	8fa5001c 	lw	a1,28(sp)
    4bb0:	0c000000 	jal	0 <DemoGt_Destroy>
    4bb4:	24060009 	li	a2,9
    4bb8:	8fa40018 	lw	a0,24(sp)
    4bbc:	0c000000 	jal	0 <DemoGt_Destroy>
    4bc0:	8fa5001c 	lw	a1,28(sp)
    4bc4:	8fbf0014 	lw	ra,20(sp)
    4bc8:	27bd0018 	addiu	sp,sp,24
    4bcc:	03e00008 	jr	ra
    4bd0:	00000000 	nop

00004bd4 <func_80982244>:
    4bd4:	27bdff88 	addiu	sp,sp,-120
    4bd8:	afbf001c 	sw	ra,28(sp)
    4bdc:	afb00018 	sw	s0,24(sp)
    4be0:	84880172 	lh	t0,370(a0)
    4be4:	3c010000 	lui	at,0x0
    4be8:	c4280000 	lwc1	$f8,0(at)
    4bec:	44882000 	mtc1	t0,$f4
    4bf0:	3c020000 	lui	v0,0x0
    4bf4:	8c420000 	lw	v0,0(v0)
    4bf8:	468021a0 	cvt.s.w	$f6,$f4
    4bfc:	8cb00000 	lw	s0,0(a1)
    4c00:	3401be80 	li	at,0xbe80
    4c04:	24050040 	li	a1,64
    4c08:	02002025 	move	a0,s0
    4c0c:	46083002 	mul.s	$f0,$f6,$f8
    4c10:	46000005 	abs.s	$f0,$f0
    4c14:	e7a00068 	swc1	$f0,104(sp)
    4c18:	844e14f0 	lh	t6,5360(v0)
    4c1c:	448e5000 	mtc1	t6,$f10
    4c20:	00000000 	nop
    4c24:	46805420 	cvt.s.w	$f16,$f10
    4c28:	e7b00064 	swc1	$f16,100(sp)
    4c2c:	844314ee 	lh	v1,5358(v0)
    4c30:	a7a8006e 	sh	t0,110(sp)
    4c34:	0061c021 	addu	t8,v1,at
    4c38:	27194000 	addiu	t9,t8,16384
    4c3c:	a7b80062 	sh	t8,98(sp)
    4c40:	0c000000 	jal	0 <DemoGt_Destroy>
    4c44:	a7b90060 	sh	t9,96(sp)
    4c48:	afa2005c 	sw	v0,92(sp)
    4c4c:	0c000000 	jal	0 <DemoGt_Destroy>
    4c50:	87a4006e 	lh	a0,110(sp)
    4c54:	3c013f80 	lui	at,0x3f80
    4c58:	44819000 	mtc1	at,$f18
    4c5c:	3c060000 	lui	a2,0x0
    4c60:	24c60000 	addiu	a2,a2,0
    4c64:	46009101 	sub.s	$f4,$f18,$f0
    4c68:	27a4002c 	addiu	a0,sp,44
    4c6c:	02002825 	move	a1,s0
    4c70:	24070089 	li	a3,137
    4c74:	0c000000 	jal	0 <DemoGt_Destroy>
    4c78:	e7a40040 	swc1	$f4,64(sp)
    4c7c:	0c000000 	jal	0 <DemoGt_Destroy>
    4c80:	87a40060 	lh	a0,96(sp)
    4c84:	44803000 	mtc1	zero,$f6
    4c88:	e7a00050 	swc1	$f0,80(sp)
    4c8c:	87a40060 	lh	a0,96(sp)
    4c90:	0c000000 	jal	0 <DemoGt_Destroy>
    4c94:	e7a60054 	swc1	$f6,84(sp)
    4c98:	e7a00058 	swc1	$f0,88(sp)
    4c9c:	0c000000 	jal	0 <DemoGt_Destroy>
    4ca0:	87a40062 	lh	a0,98(sp)
    4ca4:	c7a80064 	lwc1	$f8,100(sp)
    4ca8:	c7b00040 	lwc1	$f16,64(sp)
    4cac:	87a4006e 	lh	a0,110(sp)
    4cb0:	46080282 	mul.s	$f10,$f0,$f8
    4cb4:	00000000 	nop
    4cb8:	46105482 	mul.s	$f18,$f10,$f16
    4cbc:	0c000000 	jal	0 <DemoGt_Destroy>
    4cc0:	e7b20044 	swc1	$f18,68(sp)
    4cc4:	c7a40064 	lwc1	$f4,100(sp)
    4cc8:	87a40062 	lh	a0,98(sp)
    4ccc:	46040182 	mul.s	$f6,$f0,$f4
    4cd0:	0c000000 	jal	0 <DemoGt_Destroy>
    4cd4:	e7a60048 	swc1	$f6,72(sp)
    4cd8:	c7a80064 	lwc1	$f8,100(sp)
    4cdc:	c7b00040 	lwc1	$f16,64(sp)
    4ce0:	46080282 	mul.s	$f10,$f0,$f8
    4ce4:	00000000 	nop
    4ce8:	46105482 	mul.s	$f18,$f10,$f16
    4cec:	0c000000 	jal	0 <DemoGt_Destroy>
    4cf0:	e7b2004c 	swc1	$f18,76(sp)
    4cf4:	c7ac0068 	lwc1	$f12,104(sp)
    4cf8:	27a50050 	addiu	a1,sp,80
    4cfc:	0c000000 	jal	0 <DemoGt_Destroy>
    4d00:	24060001 	li	a2,1
    4d04:	c7ac0044 	lwc1	$f12,68(sp)
    4d08:	c7ae0048 	lwc1	$f14,72(sp)
    4d0c:	8fa6004c 	lw	a2,76(sp)
    4d10:	0c000000 	jal	0 <DemoGt_Destroy>
    4d14:	24070001 	li	a3,1
    4d18:	3c050000 	lui	a1,0x0
    4d1c:	24a50000 	addiu	a1,a1,0
    4d20:	8fa4005c 	lw	a0,92(sp)
    4d24:	0c000000 	jal	0 <DemoGt_Destroy>
    4d28:	24060099 	li	a2,153
    4d2c:	0c000000 	jal	0 <DemoGt_Destroy>
    4d30:	00000000 	nop
    4d34:	0c000000 	jal	0 <DemoGt_Destroy>
    4d38:	02002025 	move	a0,s0
    4d3c:	8e0302c0 	lw	v1,704(s0)
    4d40:	3c0ada38 	lui	t2,0xda38
    4d44:	354a0003 	ori	t2,t2,0x3
    4d48:	24690008 	addiu	t1,v1,8
    4d4c:	ae0902c0 	sw	t1,704(s0)
    4d50:	ac6a0000 	sw	t2,0(v1)
    4d54:	8fab005c 	lw	t3,92(sp)
    4d58:	3c0e0601 	lui	t6,0x601
    4d5c:	25ce9b80 	addiu	t6,t6,-25728
    4d60:	ac6b0004 	sw	t3,4(v1)
    4d64:	8e0302c0 	lw	v1,704(s0)
    4d68:	3c0dde00 	lui	t5,0xde00
    4d6c:	3c060000 	lui	a2,0x0
    4d70:	246c0008 	addiu	t4,v1,8
    4d74:	ae0c02c0 	sw	t4,704(s0)
    4d78:	24c60000 	addiu	a2,a2,0
    4d7c:	27a4002c 	addiu	a0,sp,44
    4d80:	02002825 	move	a1,s0
    4d84:	240700a3 	li	a3,163
    4d88:	ac6e0004 	sw	t6,4(v1)
    4d8c:	0c000000 	jal	0 <DemoGt_Destroy>
    4d90:	ac6d0000 	sw	t5,0(v1)
    4d94:	8fbf001c 	lw	ra,28(sp)
    4d98:	8fb00018 	lw	s0,24(sp)
    4d9c:	27bd0078 	addiu	sp,sp,120
    4da0:	03e00008 	jr	ra
    4da4:	00000000 	nop

00004da8 <DemoGt_Update>:
    4da8:	27bdffe8 	addiu	sp,sp,-24
    4dac:	afbf0014 	sw	ra,20(sp)
    4db0:	8c820164 	lw	v0,356(a0)
    4db4:	04400008 	bltz	v0,4dd8 <DemoGt_Update+0x30>
    4db8:	28410013 	slti	at,v0,19
    4dbc:	10200006 	beqz	at,4dd8 <DemoGt_Update+0x30>
    4dc0:	00027080 	sll	t6,v0,0x2
    4dc4:	3c030000 	lui	v1,0x0
    4dc8:	006e1821 	addu	v1,v1,t6
    4dcc:	8c630000 	lw	v1,0(v1)
    4dd0:	14600006 	bnez	v1,4dec <DemoGt_Update+0x44>
    4dd4:	00000000 	nop
    4dd8:	3c040000 	lui	a0,0x0
    4ddc:	0c000000 	jal	0 <DemoGt_Destroy>
    4de0:	24840000 	addiu	a0,a0,0
    4de4:	10000004 	b	4df8 <DemoGt_Update+0x50>
    4de8:	8fbf0014 	lw	ra,20(sp)
    4dec:	0060f809 	jalr	v1
    4df0:	00000000 	nop
    4df4:	8fbf0014 	lw	ra,20(sp)
    4df8:	27bd0018 	addiu	sp,sp,24
    4dfc:	03e00008 	jr	ra
    4e00:	00000000 	nop

00004e04 <DemoGt_Init>:
    4e04:	27bdffe8 	addiu	sp,sp,-24
    4e08:	afbf0014 	sw	ra,20(sp)
    4e0c:	948e001c 	lhu	t6,28(a0)
    4e10:	00803025 	move	a2,a0
    4e14:	2dc10019 	sltiu	at,t6,25
    4e18:	10200026 	beqz	at,4eb4 <L80982524>
    4e1c:	000e7080 	sll	t6,t6,0x2
    4e20:	3c010000 	lui	at,0x0
    4e24:	002e0821 	addu	at,at,t6
    4e28:	8c2e0000 	lw	t6,0(at)
    4e2c:	01c00008 	jr	t6
    4e30:	00000000 	nop

00004e34 <L809824A4>:
    4e34:	0c000000 	jal	0 <DemoGt_Destroy>
    4e38:	00c02025 	move	a0,a2
    4e3c:	10000024 	b	4ed0 <L80982524+0x1c>
    4e40:	8fbf0014 	lw	ra,20(sp)

00004e44 <L809824B4>:
    4e44:	0c000000 	jal	0 <DemoGt_Destroy>
    4e48:	00c02025 	move	a0,a2
    4e4c:	10000020 	b	4ed0 <L80982524+0x1c>
    4e50:	8fbf0014 	lw	ra,20(sp)

00004e54 <L809824C4>:
    4e54:	0c000000 	jal	0 <DemoGt_Destroy>
    4e58:	00c02025 	move	a0,a2
    4e5c:	1000001c 	b	4ed0 <L80982524+0x1c>
    4e60:	8fbf0014 	lw	ra,20(sp)

00004e64 <L809824D4>:
    4e64:	0c000000 	jal	0 <DemoGt_Destroy>
    4e68:	00c02025 	move	a0,a2
    4e6c:	10000018 	b	4ed0 <L80982524+0x1c>
    4e70:	8fbf0014 	lw	ra,20(sp)

00004e74 <L809824E4>:
    4e74:	0c000000 	jal	0 <DemoGt_Destroy>
    4e78:	00c02025 	move	a0,a2
    4e7c:	10000014 	b	4ed0 <L80982524+0x1c>
    4e80:	8fbf0014 	lw	ra,20(sp)

00004e84 <L809824F4>:
    4e84:	0c000000 	jal	0 <DemoGt_Destroy>
    4e88:	00c02025 	move	a0,a2
    4e8c:	10000010 	b	4ed0 <L80982524+0x1c>
    4e90:	8fbf0014 	lw	ra,20(sp)

00004e94 <L80982504>:
    4e94:	0c000000 	jal	0 <DemoGt_Destroy>
    4e98:	00c02025 	move	a0,a2
    4e9c:	1000000c 	b	4ed0 <L80982524+0x1c>
    4ea0:	8fbf0014 	lw	ra,20(sp)

00004ea4 <L80982514>:
    4ea4:	0c000000 	jal	0 <DemoGt_Destroy>
    4ea8:	00c02025 	move	a0,a2
    4eac:	10000008 	b	4ed0 <L80982524+0x1c>
    4eb0:	8fbf0014 	lw	ra,20(sp)

00004eb4 <L80982524>:
    4eb4:	3c040000 	lui	a0,0x0
    4eb8:	24840000 	addiu	a0,a0,0
    4ebc:	0c000000 	jal	0 <DemoGt_Destroy>
    4ec0:	afa60018 	sw	a2,24(sp)
    4ec4:	0c000000 	jal	0 <DemoGt_Destroy>
    4ec8:	8fa40018 	lw	a0,24(sp)
    4ecc:	8fbf0014 	lw	ra,20(sp)
    4ed0:	27bd0018 	addiu	sp,sp,24
    4ed4:	03e00008 	jr	ra
    4ed8:	00000000 	nop

00004edc <func_8098254C>:
    4edc:	afa40000 	sw	a0,0(sp)
    4ee0:	03e00008 	jr	ra
    4ee4:	afa50004 	sw	a1,4(sp)

00004ee8 <DemoGt_Draw>:
    4ee8:	27bdffe8 	addiu	sp,sp,-24
    4eec:	afbf0014 	sw	ra,20(sp)
    4ef0:	8c820168 	lw	v0,360(a0)
    4ef4:	04400008 	bltz	v0,4f18 <DemoGt_Draw+0x30>
    4ef8:	28410009 	slti	at,v0,9
    4efc:	10200006 	beqz	at,4f18 <DemoGt_Draw+0x30>
    4f00:	00027080 	sll	t6,v0,0x2
    4f04:	3c030000 	lui	v1,0x0
    4f08:	006e1821 	addu	v1,v1,t6
    4f0c:	8c630000 	lw	v1,0(v1)
    4f10:	14600006 	bnez	v1,4f2c <DemoGt_Draw+0x44>
    4f14:	00000000 	nop
    4f18:	3c040000 	lui	a0,0x0
    4f1c:	0c000000 	jal	0 <DemoGt_Destroy>
    4f20:	24840000 	addiu	a0,a0,0
    4f24:	10000004 	b	4f38 <DemoGt_Draw+0x50>
    4f28:	8fbf0014 	lw	ra,20(sp)
    4f2c:	0060f809 	jalr	v1
    4f30:	00000000 	nop
    4f34:	8fbf0014 	lw	ra,20(sp)
    4f38:	27bd0018 	addiu	sp,sp,24
    4f3c:	03e00008 	jr	ra
    4f40:	00000000 	nop
	...
