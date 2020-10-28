
build/src/overlays/actors/ovl_Bg_Haka_Zou/z_bg_haka_zou.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaZou_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf001c 	sw	ra,28(sp)
       c:	afb00018 	sw	s0,24(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <BgHakaZou_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	8619001c 	lh	t9,28(s0)
      24:	860e001c 	lh	t6,28(s0)
      28:	24010003 	li	at,3
      2c:	332800ff 	andi	t0,t9,0xff
      30:	a608001c 	sh	t0,28(s0)
      34:	8609001c 	lh	t1,28(s0)
      38:	000ec203 	sra	t8,t6,0x8
      3c:	a2180169 	sb	t8,361(s0)
      40:	15210052 	bne	t1,at,18c <BgHakaZou_Init+0x18c>
      44:	8fa4003c 	lw	a0,60(sp)
      48:	0c000000 	jal	0 <BgHakaZou_Init>
      4c:	00000000 	nop
      50:	3c010000 	lui	at,0x0
      54:	c4240000 	lwc1	$f4,0(at)
      58:	3c010000 	lui	at,0x0
      5c:	c4280000 	lwc1	$f8,0(at)
      60:	46040182 	mul.s	$f6,$f0,$f4
      64:	02002025 	move	a0,s0
      68:	46083280 	add.s	$f10,$f6,$f8
      6c:	44055000 	mfc1	a1,$f10
      70:	0c000000 	jal	0 <BgHakaZou_Init>
      74:	00000000 	nop
      78:	0c000000 	jal	0 <BgHakaZou_Init>
      7c:	00000000 	nop
      80:	0c000000 	jal	0 <BgHakaZou_Init>
      84:	e6000068 	swc1	$f0,104(s0)
      88:	3c013f00 	lui	at,0x3f00
      8c:	44818000 	mtc1	at,$f16
      90:	3c014580 	lui	at,0x4580
      94:	44816000 	mtc1	at,$f12
      98:	4610003c 	c.lt.s	$f0,$f16
      9c:	24030001 	li	v1,1
      a0:	45000003 	bc1f	b0 <BgHakaZou_Init+0xb0>
      a4:	00000000 	nop
      a8:	10000001 	b	b0 <BgHakaZou_Init+0xb0>
      ac:	2403ffff 	li	v1,-1
      b0:	0c000000 	jal	0 <BgHakaZou_Init>
      b4:	afa30028 	sw	v1,40(sp)
      b8:	8fa30028 	lw	v1,40(sp)
      bc:	860a00b6 	lh	t2,182(s0)
      c0:	240e0014 	li	t6,20
      c4:	a60e016a 	sh	t6,362(s0)
      c8:	01430019 	multu	t2,v1
      cc:	24040100 	li	a0,256
      d0:	24050300 	li	a1,768
      d4:	00005812 	mflo	t3
      d8:	448b9000 	mtc1	t3,$f18
      dc:	00000000 	nop
      e0:	46809120 	cvt.s.w	$f4,$f18
      e4:	46040180 	add.s	$f6,$f0,$f4
      e8:	4600320d 	trunc.w.s	$f8,$f6
      ec:	440d4000 	mfc1	t5,$f8
      f0:	0c000000 	jal	0 <BgHakaZou_Init>
      f4:	a60d0032 	sh	t5,50(s0)
      f8:	0c000000 	jal	0 <BgHakaZou_Init>
      fc:	a7a20026 	sh	v0,38(sp)
     100:	3c013f00 	lui	at,0x3f00
     104:	44815000 	mtc1	at,$f10
     108:	87af0026 	lh	t7,38(sp)
     10c:	24030001 	li	v1,1
     110:	460a003c 	c.lt.s	$f0,$f10
     114:	00000000 	nop
     118:	45000003 	bc1f	128 <BgHakaZou_Init+0x128>
     11c:	00000000 	nop
     120:	10000001 	b	128 <BgHakaZou_Init+0x128>
     124:	2403ffff 	li	v1,-1
     128:	006f0019 	multu	v1,t7
     12c:	24040400 	li	a0,1024
     130:	24050800 	li	a1,2048
     134:	0000c012 	mflo	t8
     138:	a6180030 	sh	t8,48(s0)
     13c:	0c000000 	jal	0 <BgHakaZou_Init>
     140:	00000000 	nop
     144:	0c000000 	jal	0 <BgHakaZou_Init>
     148:	a7a20026 	sh	v0,38(sp)
     14c:	3c013f00 	lui	at,0x3f00
     150:	44818000 	mtc1	at,$f16
     154:	87b90026 	lh	t9,38(sp)
     158:	24030001 	li	v1,1
     15c:	4610003c 	c.lt.s	$f0,$f16
     160:	00000000 	nop
     164:	45000003 	bc1f	174 <BgHakaZou_Init+0x174>
     168:	00000000 	nop
     16c:	10000001 	b	174 <BgHakaZou_Init+0x174>
     170:	2403ffff 	li	v1,-1
     174:	00790019 	multu	v1,t9
     178:	8602001c 	lh	v0,28(s0)
     17c:	00004012 	mflo	t0
     180:	a6080034 	sh	t0,52(s0)
     184:	1000001c 	b	1f8 <BgHakaZou_Init+0x1f8>
     188:	24010002 	li	at,2
     18c:	2605016c 	addiu	a1,s0,364
     190:	0c000000 	jal	0 <BgHakaZou_Init>
     194:	afa50020 	sw	a1,32(sp)
     198:	3c070000 	lui	a3,0x0
     19c:	24e70000 	addiu	a3,a3,0
     1a0:	8fa4003c 	lw	a0,60(sp)
     1a4:	8fa50020 	lw	a1,32(sp)
     1a8:	0c000000 	jal	0 <BgHakaZou_Init>
     1ac:	02003025 	move	a2,s0
     1b0:	02002025 	move	a0,s0
     1b4:	0c000000 	jal	0 <BgHakaZou_Init>
     1b8:	8fa50020 	lw	a1,32(sp)
     1bc:	02002025 	move	a0,s0
     1c0:	0c000000 	jal	0 <BgHakaZou_Init>
     1c4:	00002825 	move	a1,zero
     1c8:	8602001c 	lh	v0,28(s0)
     1cc:	3c010000 	lui	at,0x0
     1d0:	54400009 	bnezl	v0,1f8 <BgHakaZou_Init+0x1f8>
     1d4:	24010002 	li	at,2
     1d8:	c4200000 	lwc1	$f0,0(at)
     1dc:	3c0144fa 	lui	at,0x44fa
     1e0:	44819000 	mtc1	at,$f18
     1e4:	8602001c 	lh	v0,28(s0)
     1e8:	e60000f8 	swc1	$f0,248(s0)
     1ec:	e60000fc 	swc1	$f0,252(s0)
     1f0:	e61200f4 	swc1	$f18,244(s0)
     1f4:	24010002 	li	at,2
     1f8:	14410009 	bne	v0,at,220 <BgHakaZou_Init+0x220>
     1fc:	8fa4003c 	lw	a0,60(sp)
     200:	8fa4003c 	lw	a0,60(sp)
     204:	3c010001 	lui	at,0x1
     208:	342117a4 	ori	at,at,0x17a4
     20c:	2405008d 	li	a1,141
     210:	0c000000 	jal	0 <BgHakaZou_Init>
     214:	00812021 	addu	a0,a0,at
     218:	10000007 	b	238 <BgHakaZou_Init+0x238>
     21c:	a2020168 	sb	v0,360(s0)
     220:	3c010001 	lui	at,0x1
     224:	342117a4 	ori	at,at,0x17a4
     228:	00812021 	addu	a0,a0,at
     22c:	0c000000 	jal	0 <BgHakaZou_Init>
     230:	24050069 	li	a1,105
     234:	a2020168 	sb	v0,360(s0)
     238:	82090168 	lb	t1,360(s0)
     23c:	05230006 	bgezl	t1,258 <BgHakaZou_Init+0x258>
     240:	860a001c 	lh	t2,28(s0)
     244:	0c000000 	jal	0 <BgHakaZou_Init>
     248:	02002025 	move	a0,s0
     24c:	1000001d 	b	2c4 <BgHakaZou_Init+0x2c4>
     250:	00000000 	nop
     254:	860a001c 	lh	t2,28(s0)
     258:	24010003 	li	at,3
     25c:	8fa4003c 	lw	a0,60(sp)
     260:	11410018 	beq	t2,at,2c4 <BgHakaZou_Init+0x2c4>
     264:	00000000 	nop
     268:	0c000000 	jal	0 <BgHakaZou_Init>
     26c:	92050169 	lbu	a1,361(s0)
     270:	10400014 	beqz	v0,2c4 <BgHakaZou_Init+0x2c4>
     274:	00000000 	nop
     278:	860b001c 	lh	t3,28(s0)
     27c:	3c0142a0 	lui	at,0x42a0
     280:	51600006 	beqzl	t3,29c <BgHakaZou_Init+0x29c>
     284:	44813000 	mtc1	at,$f6
     288:	0c000000 	jal	0 <BgHakaZou_Init>
     28c:	02002025 	move	a0,s0
     290:	1000000c 	b	2c4 <BgHakaZou_Init+0x2c4>
     294:	00000000 	nop
     298:	44813000 	mtc1	at,$f6
     29c:	3c014258 	lui	at,0x4258
     2a0:	c604002c 	lwc1	$f4,44(s0)
     2a4:	44818000 	mtc1	at,$f16
     2a8:	c60a0028 	lwc1	$f10,40(s0)
     2ac:	46062201 	sub.s	$f8,$f4,$f6
     2b0:	240cc000 	li	t4,-16384
     2b4:	a60c00b4 	sh	t4,180(s0)
     2b8:	46105481 	sub.s	$f18,$f10,$f16
     2bc:	e608002c 	swc1	$f8,44(s0)
     2c0:	e6120028 	swc1	$f18,40(s0)
     2c4:	3c0d0000 	lui	t5,0x0
     2c8:	25ad0000 	addiu	t5,t5,0
     2cc:	ae0d0164 	sw	t5,356(s0)
     2d0:	8fbf001c 	lw	ra,28(sp)
     2d4:	8fb00018 	lw	s0,24(sp)
     2d8:	27bd0038 	addiu	sp,sp,56
     2dc:	03e00008 	jr	ra
     2e0:	00000000 	nop

000002e4 <BgHakaZou_Destroy>:
     2e4:	27bdffe8 	addiu	sp,sp,-24
     2e8:	afbf0014 	sw	ra,20(sp)
     2ec:	afa5001c 	sw	a1,28(sp)
     2f0:	848e001c 	lh	t6,28(a0)
     2f4:	00803825 	move	a3,a0
     2f8:	24010003 	li	at,3
     2fc:	11c10009 	beq	t6,at,324 <BgHakaZou_Destroy+0x40>
     300:	00a02025 	move	a0,a1
     304:	8ce6014c 	lw	a2,332(a3)
     308:	afa70018 	sw	a3,24(sp)
     30c:	0c000000 	jal	0 <BgHakaZou_Init>
     310:	24a50810 	addiu	a1,a1,2064
     314:	8fa70018 	lw	a3,24(sp)
     318:	8fa4001c 	lw	a0,28(sp)
     31c:	0c000000 	jal	0 <BgHakaZou_Init>
     320:	24e5016c 	addiu	a1,a3,364
     324:	8fbf0014 	lw	ra,20(sp)
     328:	27bd0018 	addiu	sp,sp,24
     32c:	03e00008 	jr	ra
     330:	00000000 	nop

00000334 <func_808828F4>:
     334:	27bdff70 	addiu	sp,sp,-144
     338:	3c013f80 	lui	at,0x3f80
     33c:	44813000 	mtc1	at,$f6
     340:	3c014000 	lui	at,0x4000
     344:	44814000 	mtc1	at,$f8
     348:	f7bc0040 	sdc1	$f28,64(sp)
     34c:	3c01447a 	lui	at,0x447a
     350:	4481e000 	mtc1	at,$f28
     354:	f7ba0038 	sdc1	$f26,56(sp)
     358:	3c014348 	lui	at,0x4348
     35c:	4481d000 	mtc1	at,$f26
     360:	f7b80030 	sdc1	$f24,48(sp)
     364:	3c014270 	lui	at,0x4270
     368:	4481c000 	mtc1	at,$f24
     36c:	f7b60028 	sdc1	$f22,40(sp)
     370:	3c0142e0 	lui	at,0x42e0
     374:	44802000 	mtc1	zero,$f4
     378:	4481b000 	mtc1	at,$f22
     37c:	afb40058 	sw	s4,88(sp)
     380:	f7b40020 	sdc1	$f20,32(sp)
     384:	3c014120 	lui	at,0x4120
     388:	afb60060 	sw	s6,96(sp)
     38c:	afb5005c 	sw	s5,92(sp)
     390:	afb30054 	sw	s3,84(sp)
     394:	afb20050 	sw	s2,80(sp)
     398:	afb1004c 	sw	s1,76(sp)
     39c:	afb00048 	sw	s0,72(sp)
     3a0:	3c140000 	lui	s4,0x0
     3a4:	4481a000 	mtc1	at,$f20
     3a8:	00808825 	move	s1,a0
     3ac:	00a0b025 	move	s6,a1
     3b0:	afbf0064 	sw	ra,100(sp)
     3b4:	26940000 	addiu	s4,s4,0
     3b8:	00008025 	move	s0,zero
     3bc:	27b20084 	addiu	s2,sp,132
     3c0:	27b30078 	addiu	s3,sp,120
     3c4:	24150002 	li	s5,2
     3c8:	e7a6007c 	swc1	$f6,124(sp)
     3cc:	e7a80080 	swc1	$f8,128(sp)
     3d0:	e7a40078 	swc1	$f4,120(sp)
     3d4:	16000008 	bnez	s0,3f8 <func_808828F4+0xc4>
     3d8:	00000000 	nop
     3dc:	0c000000 	jal	0 <BgHakaZou_Init>
     3e0:	4600a306 	mov.s	$f12,$f20
     3e4:	46160400 	add.s	$f16,$f0,$f22
     3e8:	c62a0024 	lwc1	$f10,36(s1)
     3ec:	46105481 	sub.s	$f18,$f10,$f16
     3f0:	10000006 	b	40c <func_808828F4+0xd8>
     3f4:	e7b20084 	swc1	$f18,132(sp)
     3f8:	0c000000 	jal	0 <BgHakaZou_Init>
     3fc:	4600a306 	mov.s	$f12,$f20
     400:	c6240024 	lwc1	$f4,36(s1)
     404:	46040180 	add.s	$f6,$f0,$f4
     408:	e7a60084 	swc1	$f6,132(sp)
     40c:	0c000000 	jal	0 <BgHakaZou_Init>
     410:	00000000 	nop
     414:	4600c282 	mul.s	$f10,$f24,$f0
     418:	c6280028 	lwc1	$f8,40(s1)
     41c:	4600b102 	mul.s	$f4,$f22,$f0
     420:	460a4400 	add.s	$f16,$f8,$f10
     424:	e7b00088 	swc1	$f16,136(sp)
     428:	c632002c 	lwc1	$f18,44(s1)
     42c:	46049180 	add.s	$f6,$f18,$f4
     430:	0c000000 	jal	0 <BgHakaZou_Init>
     434:	e7a6008c 	swc1	$f6,140(sp)
     438:	461a0202 	mul.s	$f8,$f0,$f26
     43c:	24180064 	li	t8,100
     440:	afb80014 	sw	t8,20(sp)
     444:	02c02025 	move	a0,s6
     448:	02402825 	move	a1,s2
     44c:	02603025 	move	a2,s3
     450:	02803825 	move	a3,s4
     454:	461c4280 	add.s	$f10,$f8,$f28
     458:	4600540d 	trunc.w.s	$f16,$f10
     45c:	440f8000 	mfc1	t7,$f16
     460:	0c000000 	jal	0 <BgHakaZou_Init>
     464:	afaf0010 	sw	t7,16(sp)
     468:	26100001 	addiu	s0,s0,1
     46c:	1615ffd9 	bne	s0,s5,3d4 <func_808828F4+0xa0>
     470:	00000000 	nop
     474:	8fbf0064 	lw	ra,100(sp)
     478:	d7b40020 	ldc1	$f20,32(sp)
     47c:	d7b60028 	ldc1	$f22,40(sp)
     480:	d7b80030 	ldc1	$f24,48(sp)
     484:	d7ba0038 	ldc1	$f26,56(sp)
     488:	d7bc0040 	ldc1	$f28,64(sp)
     48c:	8fb00048 	lw	s0,72(sp)
     490:	8fb1004c 	lw	s1,76(sp)
     494:	8fb20050 	lw	s2,80(sp)
     498:	8fb30054 	lw	s3,84(sp)
     49c:	8fb40058 	lw	s4,88(sp)
     4a0:	8fb5005c 	lw	s5,92(sp)
     4a4:	8fb60060 	lw	s6,96(sp)
     4a8:	03e00008 	jr	ra
     4ac:	27bd0090 	addiu	sp,sp,144

000004b0 <func_80882A70>:
     4b0:	27bdffd8 	addiu	sp,sp,-40
     4b4:	afb00018 	sw	s0,24(sp)
     4b8:	3c010001 	lui	at,0x1
     4bc:	00808025 	move	s0,a0
     4c0:	342117a4 	ori	at,at,0x17a4
     4c4:	afbf001c 	sw	ra,28(sp)
     4c8:	afa5002c 	sw	a1,44(sp)
     4cc:	00a12021 	addu	a0,a1,at
     4d0:	0c000000 	jal	0 <BgHakaZou_Init>
     4d4:	82050168 	lb	a1,360(s0)
     4d8:	1040004b 	beqz	v0,608 <func_80882A70+0x158>
     4dc:	3c0f0000 	lui	t7,0x0
     4e0:	8618001c 	lh	t8,28(s0)
     4e4:	820e0168 	lb	t6,360(s0)
     4e8:	25ef0000 	addiu	t7,t7,0
     4ec:	24010003 	li	at,3
     4f0:	ae0f0134 	sw	t7,308(s0)
     4f4:	17010005 	bne	t8,at,50c <func_80882A70+0x5c>
     4f8:	a20e001e 	sb	t6,30(s0)
     4fc:	3c190000 	lui	t9,0x0
     500:	27390000 	addiu	t9,t9,0
     504:	10000040 	b	608 <func_80882A70+0x158>
     508:	ae190164 	sw	t9,356(s0)
     50c:	8fa4002c 	lw	a0,44(sp)
     510:	0c000000 	jal	0 <BgHakaZou_Init>
     514:	02002825 	move	a1,s0
     518:	afa00024 	sw	zero,36(sp)
     51c:	8602001c 	lh	v0,28(s0)
     520:	3c040600 	lui	a0,0x600
     524:	24846f70 	addiu	a0,a0,28528
     528:	14400013 	bnez	v0,578 <func_80882A70+0xc8>
     52c:	24010001 	li	at,1
     530:	0c000000 	jal	0 <BgHakaZou_Init>
     534:	27a50024 	addiu	a1,sp,36
     538:	860b01b2 	lh	t3,434(s0)
     53c:	860d01b6 	lh	t5,438(s0)
     540:	24080050 	li	t0,80
     544:	24090064 	li	t1,100
     548:	240affe2 	li	t2,-30
     54c:	256cffc8 	addiu	t4,t3,-56
     550:	25ae0038 	addiu	t6,t5,56
     554:	a60801ac 	sh	t0,428(s0)
     558:	a60901ae 	sh	t1,430(s0)
     55c:	a60a01b0 	sh	t2,432(s0)
     560:	a60c01b2 	sh	t4,434(s0)
     564:	a60e01b6 	sh	t6,438(s0)
     568:	3c010000 	lui	at,0x0
     56c:	c4240000 	lwc1	$f4,0(at)
     570:	10000011 	b	5b8 <func_80882A70+0x108>
     574:	e60400f8 	swc1	$f4,248(s0)
     578:	14410008 	bne	v0,at,59c <func_80882A70+0xec>
     57c:	3c040600 	lui	a0,0x600
     580:	3c040600 	lui	a0,0x600
     584:	24845e30 	addiu	a0,a0,24112
     588:	0c000000 	jal	0 <BgHakaZou_Init>
     58c:	27a50024 	addiu	a1,sp,36
     590:	240fffce 	li	t7,-50
     594:	10000008 	b	5b8 <func_80882A70+0x108>
     598:	a60f01b0 	sh	t7,432(s0)
     59c:	24840c2c 	addiu	a0,a0,3116
     5a0:	0c000000 	jal	0 <BgHakaZou_Init>
     5a4:	27a50024 	addiu	a1,sp,36
     5a8:	24180037 	li	t8,55
     5ac:	24190014 	li	t9,20
     5b0:	a61801ac 	sh	t8,428(s0)
     5b4:	a61901ae 	sh	t9,430(s0)
     5b8:	8fa4002c 	lw	a0,44(sp)
     5bc:	02003025 	move	a2,s0
     5c0:	8fa70024 	lw	a3,36(sp)
     5c4:	0c000000 	jal	0 <BgHakaZou_Init>
     5c8:	24850810 	addiu	a1,a0,2064
     5cc:	8608001c 	lh	t0,28(s0)
     5d0:	ae02014c 	sw	v0,332(s0)
     5d4:	8fa4002c 	lw	a0,44(sp)
     5d8:	15000008 	bnez	t0,5fc <func_80882A70+0x14c>
     5dc:	00000000 	nop
     5e0:	0c000000 	jal	0 <BgHakaZou_Init>
     5e4:	92050169 	lbu	a1,361(s0)
     5e8:	10400004 	beqz	v0,5fc <func_80882A70+0x14c>
     5ec:	3c090000 	lui	t1,0x0
     5f0:	25290000 	addiu	t1,t1,0
     5f4:	10000004 	b	608 <func_80882A70+0x158>
     5f8:	ae090164 	sw	t1,356(s0)
     5fc:	3c0a0000 	lui	t2,0x0
     600:	254a0000 	addiu	t2,t2,0
     604:	ae0a0164 	sw	t2,356(s0)
     608:	8fbf001c 	lw	ra,28(sp)
     60c:	8fb00018 	lw	s0,24(sp)
     610:	27bd0028 	addiu	sp,sp,40
     614:	03e00008 	jr	ra
     618:	00000000 	nop

0000061c <func_80882BDC>:
     61c:	27bdffe8 	addiu	sp,sp,-24
     620:	afbf0014 	sw	ra,20(sp)
     624:	afa5001c 	sw	a1,28(sp)
     628:	8482016a 	lh	v0,362(a0)
     62c:	3c01c100 	lui	at,0xc100
     630:	10400002 	beqz	v0,63c <func_80882BDC+0x20>
     634:	244effff 	addiu	t6,v0,-1
     638:	a48e016a 	sh	t6,362(a0)
     63c:	848f00b4 	lh	t7,180(a0)
     640:	84980030 	lh	t8,48(a0)
     644:	848800b8 	lh	t0,184(a0)
     648:	84890034 	lh	t1,52(a0)
     64c:	948b0088 	lhu	t3,136(a0)
     650:	01f8c821 	addu	t9,t7,t8
     654:	01095021 	addu	t2,t0,t1
     658:	316c0002 	andi	t4,t3,0x2
     65c:	a49900b4 	sh	t9,180(a0)
     660:	1180001f 	beqz	t4,6e0 <func_80882BDC+0xc4>
     664:	a48a00b8 	sh	t2,184(a0)
     668:	c4800060 	lwc1	$f0,96(a0)
     66c:	44812000 	mtc1	at,$f4
     670:	3c014120 	lui	at,0x4120
     674:	4604003c 	c.lt.s	$f0,$f4
     678:	00000000 	nop
     67c:	45000015 	bc1f	6d4 <func_80882BDC+0xb8>
     680:	00000000 	nop
     684:	44811000 	mtc1	at,$f2
     688:	3c010000 	lui	at,0x0
     68c:	c4260000 	lwc1	$f6,0(at)
     690:	46060202 	mul.s	$f8,$f0,$f6
     694:	e4880060 	swc1	$f8,96(a0)
     698:	c4800060 	lwc1	$f0,96(a0)
     69c:	4600103c 	c.lt.s	$f2,$f0
     6a0:	00000000 	nop
     6a4:	45020004 	bc1fl	6b8 <func_80882BDC+0x9c>
     6a8:	e4800060 	swc1	$f0,96(a0)
     6ac:	10000002 	b	6b8 <func_80882BDC+0x9c>
     6b0:	e4820060 	swc1	$f2,96(a0)
     6b4:	e4800060 	swc1	$f0,96(a0)
     6b8:	948d0088 	lhu	t5,136(a0)
     6bc:	3c014000 	lui	at,0x4000
     6c0:	44815000 	mtc1	at,$f10
     6c4:	31aefffc 	andi	t6,t5,0xfffc
     6c8:	a48e0088 	sh	t6,136(a0)
     6cc:	10000004 	b	6e0 <func_80882BDC+0xc4>
     6d0:	e48a0068 	swc1	$f10,104(a0)
     6d4:	0c000000 	jal	0 <BgHakaZou_Init>
     6d8:	afa40018 	sw	a0,24(sp)
     6dc:	8fa40018 	lw	a0,24(sp)
     6e0:	848f016a 	lh	t7,362(a0)
     6e4:	55e00004 	bnezl	t7,6f8 <func_80882BDC+0xdc>
     6e8:	8fbf0014 	lw	ra,20(sp)
     6ec:	0c000000 	jal	0 <BgHakaZou_Init>
     6f0:	00000000 	nop
     6f4:	8fbf0014 	lw	ra,20(sp)
     6f8:	27bd0018 	addiu	sp,sp,24
     6fc:	03e00008 	jr	ra
     700:	00000000 	nop

00000704 <func_80882CC4>:
     704:	27bdff60 	addiu	sp,sp,-160
     708:	afb1004c 	sw	s1,76(sp)
     70c:	00808825 	move	s1,a0
     710:	afbf006c 	sw	ra,108(sp)
     714:	afbe0068 	sw	s8,104(sp)
     718:	afb70064 	sw	s7,100(sp)
     71c:	afb60060 	sw	s6,96(sp)
     720:	afb5005c 	sw	s5,92(sp)
     724:	afb40058 	sw	s4,88(sp)
     728:	afb30054 	sw	s3,84(sp)
     72c:	afb20050 	sw	s2,80(sp)
     730:	afb00048 	sw	s0,72(sp)
     734:	f7b80040 	sdc1	$f24,64(sp)
     738:	f7b60038 	sdc1	$f22,56(sp)
     73c:	f7b40030 	sdc1	$f20,48(sp)
     740:	848400b6 	lh	a0,182(a0)
     744:	00a09025 	move	s2,a1
     748:	2484c000 	addiu	a0,a0,-16384
     74c:	00042400 	sll	a0,a0,0x10
     750:	0c000000 	jal	0 <BgHakaZou_Init>
     754:	00042403 	sra	a0,a0,0x10
     758:	862400b6 	lh	a0,182(s1)
     75c:	3c014220 	lui	at,0x4220
     760:	4481a000 	mtc1	at,$f20
     764:	2484c000 	addiu	a0,a0,-16384
     768:	00042400 	sll	a0,a0,0x10
     76c:	46140582 	mul.s	$f22,$f0,$f20
     770:	0c000000 	jal	0 <BgHakaZou_Init>
     774:	00042403 	sra	a0,a0,0x10
     778:	3c130000 	lui	s3,0x0
     77c:	46140602 	mul.s	$f24,$f0,$f20
     780:	26730000 	addiu	s3,s3,0
     784:	2417ffc9 	li	s7,-55
     788:	26541c24 	addiu	s4,s2,7204
     78c:	241e006e 	li	s8,110
     790:	24160003 	li	s6,3
     794:	27b5008c 	addiu	s5,sp,140
     798:	44972000 	mtc1	s7,$f4
     79c:	00008025 	move	s0,zero
     7a0:	46802520 	cvt.s.w	$f20,$f4
     7a4:	260effff 	addiu	t6,s0,-1
     7a8:	448e3000 	mtc1	t6,$f6
     7ac:	c6280024 	lwc1	$f8,36(s1)
     7b0:	02802025 	move	a0,s4
     7b4:	46803020 	cvt.s.w	$f0,$f6
     7b8:	02402825 	move	a1,s2
     7bc:	240600be 	li	a2,190
     7c0:	46160282 	mul.s	$f10,$f0,$f22
     7c4:	460a4400 	add.s	$f16,$f8,$f10
     7c8:	46180102 	mul.s	$f4,$f0,$f24
     7cc:	e7b0008c 	swc1	$f16,140(sp)
     7d0:	c632002c 	lwc1	$f18,44(s1)
     7d4:	8fa7008c 	lw	a3,140(sp)
     7d8:	46049180 	add.s	$f6,$f18,$f4
     7dc:	e7a60094 	swc1	$f6,148(sp)
     7e0:	c6280028 	lwc1	$f8,40(s1)
     7e4:	c7b20094 	lwc1	$f18,148(sp)
     7e8:	afa00018 	sw	zero,24(sp)
     7ec:	46144280 	add.s	$f10,$f8,$f20
     7f0:	e7b20014 	swc1	$f18,20(sp)
     7f4:	e7aa0090 	swc1	$f10,144(sp)
     7f8:	c7b00090 	lwc1	$f16,144(sp)
     7fc:	e7b00010 	swc1	$f16,16(sp)
     800:	862f00b6 	lh	t7,182(s1)
     804:	afa00020 	sw	zero,32(sp)
     808:	afaf001c 	sw	t7,28(sp)
     80c:	8638001c 	lh	t8,28(s1)
     810:	27190002 	addiu	t9,t8,2
     814:	0c000000 	jal	0 <BgHakaZou_Init>
     818:	afb90024 	sw	t9,36(sp)
     81c:	240803e8 	li	t0,1000
     820:	24090032 	li	t1,50
     824:	afa90014 	sw	t1,20(sp)
     828:	afa80010 	sw	t0,16(sp)
     82c:	02402025 	move	a0,s2
     830:	02a02825 	move	a1,s5
     834:	02603025 	move	a2,s3
     838:	0c000000 	jal	0 <BgHakaZou_Init>
     83c:	02603825 	move	a3,s3
     840:	26100001 	addiu	s0,s0,1
     844:	5616ffd8 	bnel	s0,s6,7a8 <func_80882CC4+0xa4>
     848:	260effff 	addiu	t6,s0,-1
     84c:	26f70037 	addiu	s7,s7,55
     850:	56feffd2 	bnel	s7,s8,79c <func_80882CC4+0x98>
     854:	44972000 	mtc1	s7,$f4
     858:	8fbf006c 	lw	ra,108(sp)
     85c:	d7b40030 	ldc1	$f20,48(sp)
     860:	d7b60038 	ldc1	$f22,56(sp)
     864:	d7b80040 	ldc1	$f24,64(sp)
     868:	8fb00048 	lw	s0,72(sp)
     86c:	8fb1004c 	lw	s1,76(sp)
     870:	8fb20050 	lw	s2,80(sp)
     874:	8fb30054 	lw	s3,84(sp)
     878:	8fb40058 	lw	s4,88(sp)
     87c:	8fb5005c 	lw	s5,92(sp)
     880:	8fb60060 	lw	s6,96(sp)
     884:	8fb70064 	lw	s7,100(sp)
     888:	8fbe0068 	lw	s8,104(sp)
     88c:	03e00008 	jr	ra
     890:	27bd00a0 	addiu	sp,sp,160

00000894 <func_80882E54>:
     894:	27bdff80 	addiu	sp,sp,-128
     898:	afbf005c 	sw	ra,92(sp)
     89c:	afbe0058 	sw	s8,88(sp)
     8a0:	afb70054 	sw	s7,84(sp)
     8a4:	afb60050 	sw	s6,80(sp)
     8a8:	afb5004c 	sw	s5,76(sp)
     8ac:	afb40048 	sw	s4,72(sp)
     8b0:	afb30044 	sw	s3,68(sp)
     8b4:	afb20040 	sw	s2,64(sp)
     8b8:	afb1003c 	sw	s1,60(sp)
     8bc:	afb00038 	sw	s0,56(sp)
     8c0:	f7b40030 	sdc1	$f20,48(sp)
     8c4:	848e01b2 	lh	t6,434(a0)
     8c8:	3c014120 	lui	at,0x4120
     8cc:	4481a000 	mtc1	at,$f20
     8d0:	448e2000 	mtc1	t6,$f4
     8d4:	00808825 	move	s1,a0
     8d8:	3c160600 	lui	s6,0x600
     8dc:	468021a0 	cvt.s.w	$f6,$f4
     8e0:	26d60a10 	addiu	s6,s6,2576
     8e4:	00a09025 	move	s2,a1
     8e8:	27b30074 	addiu	s3,sp,116
     8ec:	2419000a 	li	t9,10
     8f0:	2408000a 	li	t0,10
     8f4:	e7a60074 	swc1	$f6,116(sp)
     8f8:	848f01b4 	lh	t7,436(a0)
     8fc:	24090004 	li	t1,4
     900:	240a008d 	li	t2,141
     904:	448f4000 	mtc1	t7,$f8
     908:	240b0028 	li	t3,40
     90c:	4406a000 	mfc1	a2,$f20
     910:	468042a0 	cvt.s.w	$f10,$f8
     914:	00003825 	move	a3,zero
     918:	e7aa0078 	swc1	$f10,120(sp)
     91c:	849801b6 	lh	t8,438(a0)
     920:	00a02025 	move	a0,a1
     924:	02602825 	move	a1,s3
     928:	44988000 	mtc1	t8,$f16
     92c:	afb60024 	sw	s6,36(sp)
     930:	afab0020 	sw	t3,32(sp)
     934:	468084a0 	cvt.s.w	$f18,$f16
     938:	afaa001c 	sw	t2,28(sp)
     93c:	afa90018 	sw	t1,24(sp)
     940:	afa80014 	sw	t0,20(sp)
     944:	afb90010 	sw	t9,16(sp)
     948:	0c000000 	jal	0 <BgHakaZou_Init>
     94c:	e7b2007c 	swc1	$f18,124(sp)
     950:	3c140000 	lui	s4,0x0
     954:	26940000 	addiu	s4,s4,0
     958:	2415ffe7 	li	s5,-25
     95c:	241e004b 	li	s8,75
     960:	2417004b 	li	s7,75
     964:	2410ffe7 	li	s0,-25
     968:	862c01b2 	lh	t4,434(s1)
     96c:	4406a000 	mfc1	a2,$f20
     970:	2418000a 	li	t8,10
     974:	01906821 	addu	t5,t4,s0
     978:	448d2000 	mtc1	t5,$f4
     97c:	2419000a 	li	t9,10
     980:	24080004 	li	t0,4
     984:	468021a0 	cvt.s.w	$f6,$f4
     988:	2409008d 	li	t1,141
     98c:	240a0028 	li	t2,40
     990:	02402025 	move	a0,s2
     994:	02602825 	move	a1,s3
     998:	00003825 	move	a3,zero
     99c:	e7a60074 	swc1	$f6,116(sp)
     9a0:	862e01b6 	lh	t6,438(s1)
     9a4:	afb60024 	sw	s6,36(sp)
     9a8:	afaa0020 	sw	t2,32(sp)
     9ac:	01d57821 	addu	t7,t6,s5
     9b0:	448f4000 	mtc1	t7,$f8
     9b4:	afa9001c 	sw	t1,28(sp)
     9b8:	afa80018 	sw	t0,24(sp)
     9bc:	468042a0 	cvt.s.w	$f10,$f8
     9c0:	afb90014 	sw	t9,20(sp)
     9c4:	afb80010 	sw	t8,16(sp)
     9c8:	0c000000 	jal	0 <BgHakaZou_Init>
     9cc:	e7aa007c 	swc1	$f10,124(sp)
     9d0:	240b03e8 	li	t3,1000
     9d4:	240c0032 	li	t4,50
     9d8:	afac0014 	sw	t4,20(sp)
     9dc:	afab0010 	sw	t3,16(sp)
     9e0:	02402025 	move	a0,s2
     9e4:	02602825 	move	a1,s3
     9e8:	02803025 	move	a2,s4
     9ec:	0c000000 	jal	0 <BgHakaZou_Init>
     9f0:	02803825 	move	a3,s4
     9f4:	26100032 	addiu	s0,s0,50
     9f8:	5617ffdc 	bnel	s0,s7,96c <func_80882E54+0xd8>
     9fc:	862c01b2 	lh	t4,434(s1)
     a00:	26b50032 	addiu	s5,s5,50
     a04:	56beffd8 	bnel	s5,s8,968 <func_80882E54+0xd4>
     a08:	2410ffe7 	li	s0,-25
     a0c:	8fbf005c 	lw	ra,92(sp)
     a10:	d7b40030 	ldc1	$f20,48(sp)
     a14:	8fb00038 	lw	s0,56(sp)
     a18:	8fb1003c 	lw	s1,60(sp)
     a1c:	8fb20040 	lw	s2,64(sp)
     a20:	8fb30044 	lw	s3,68(sp)
     a24:	8fb40048 	lw	s4,72(sp)
     a28:	8fb5004c 	lw	s5,76(sp)
     a2c:	8fb60050 	lw	s6,80(sp)
     a30:	8fb70054 	lw	s7,84(sp)
     a34:	8fbe0058 	lw	s8,88(sp)
     a38:	03e00008 	jr	ra
     a3c:	27bd0080 	addiu	sp,sp,128

00000a40 <func_80883000>:
     a40:	27bdffd8 	addiu	sp,sp,-40
     a44:	afbf0024 	sw	ra,36(sp)
     a48:	afb10020 	sw	s1,32(sp)
     a4c:	afb0001c 	sw	s0,28(sp)
     a50:	908e017d 	lbu	t6,381(a0)
     a54:	00808025 	move	s0,a0
     a58:	00a08825 	move	s1,a1
     a5c:	31cf0002 	andi	t7,t6,0x2
     a60:	11e0002e 	beqz	t7,b1c <func_80883000+0xdc>
     a64:	02202025 	move	a0,s1
     a68:	00a02025 	move	a0,a1
     a6c:	0c000000 	jal	0 <BgHakaZou_Init>
     a70:	92050169 	lbu	a1,361(s0)
     a74:	8602001c 	lh	v0,28(s0)
     a78:	24180014 	li	t8,20
     a7c:	3c190000 	lui	t9,0x0
     a80:	1440000c 	bnez	v0,ab4 <func_80883000+0x74>
     a84:	24010002 	li	at,2
     a88:	27390000 	addiu	t9,t9,0
     a8c:	a618016a 	sh	t8,362(s0)
     a90:	ae190164 	sw	t9,356(s0)
     a94:	afa00010 	sw	zero,16(sp)
     a98:	02202025 	move	a0,s1
     a9c:	24050d48 	li	a1,3400
     aa0:	240603e7 	li	a2,999
     aa4:	0c000000 	jal	0 <BgHakaZou_Init>
     aa8:	02003825 	move	a3,s0
     aac:	10000021 	b	b34 <func_80883000+0xf4>
     ab0:	8fbf0024 	lw	ra,36(sp)
     ab4:	1441000e 	bne	v0,at,af0 <func_80883000+0xb0>
     ab8:	02002025 	move	a0,s0
     abc:	02002025 	move	a0,s0
     ac0:	0c000000 	jal	0 <BgHakaZou_Init>
     ac4:	02202825 	move	a1,s1
     ac8:	24080001 	li	t0,1
     acc:	ae000134 	sw	zero,308(s0)
     ad0:	a608016a 	sh	t0,362(s0)
     ad4:	02002025 	move	a0,s0
     ad8:	0c000000 	jal	0 <BgHakaZou_Init>
     adc:	24052802 	li	a1,10242
     ae0:	3c090000 	lui	t1,0x0
     ae4:	25290000 	addiu	t1,t1,0
     ae8:	10000011 	b	b30 <func_80883000+0xf0>
     aec:	ae090164 	sw	t1,356(s0)
     af0:	0c000000 	jal	0 <BgHakaZou_Init>
     af4:	02202825 	move	a1,s1
     af8:	240a0001 	li	t2,1
     afc:	a60a016a 	sh	t2,362(s0)
     b00:	02002025 	move	a0,s0
     b04:	0c000000 	jal	0 <BgHakaZou_Init>
     b08:	24052810 	li	a1,10256
     b0c:	3c0b0000 	lui	t3,0x0
     b10:	256b0000 	addiu	t3,t3,0
     b14:	10000006 	b	b30 <func_80883000+0xf0>
     b18:	ae0b0164 	sw	t3,356(s0)
     b1c:	3c010001 	lui	at,0x1
     b20:	34211e60 	ori	at,at,0x1e60
     b24:	02212821 	addu	a1,s1,at
     b28:	0c000000 	jal	0 <BgHakaZou_Init>
     b2c:	2606016c 	addiu	a2,s0,364
     b30:	8fbf0024 	lw	ra,36(sp)
     b34:	8fb0001c 	lw	s0,28(sp)
     b38:	8fb10020 	lw	s1,32(sp)
     b3c:	03e00008 	jr	ra
     b40:	27bd0028 	addiu	sp,sp,40

00000b44 <func_80883104>:
     b44:	27bdffe8 	addiu	sp,sp,-24
     b48:	afbf0014 	sw	ra,20(sp)
     b4c:	afa5001c 	sw	a1,28(sp)
     b50:	8482016a 	lh	v0,362(a0)
     b54:	10400003 	beqz	v0,b64 <func_80883104+0x20>
     b58:	244effff 	addiu	t6,v0,-1
     b5c:	a48e016a 	sh	t6,362(a0)
     b60:	8482016a 	lh	v0,362(a0)
     b64:	54400004 	bnezl	v0,b78 <func_80883104+0x34>
     b68:	8fbf0014 	lw	ra,20(sp)
     b6c:	0c000000 	jal	0 <BgHakaZou_Init>
     b70:	00000000 	nop
     b74:	8fbf0014 	lw	ra,20(sp)
     b78:	27bd0018 	addiu	sp,sp,24
     b7c:	03e00008 	jr	ra
     b80:	00000000 	nop

00000b84 <func_80883144>:
     b84:	27bdffc8 	addiu	sp,sp,-56
     b88:	afbf0024 	sw	ra,36(sp)
     b8c:	afb00020 	sw	s0,32(sp)
     b90:	afa5003c 	sw	a1,60(sp)
     b94:	8482016a 	lh	v0,362(a0)
     b98:	00808025 	move	s0,a0
     b9c:	3c014348 	lui	at,0x4348
     ba0:	10400003 	beqz	v0,bb0 <func_80883144+0x2c>
     ba4:	244effff 	addiu	t6,v0,-1
     ba8:	a48e016a 	sh	t6,362(a0)
     bac:	8482016a 	lh	v0,362(a0)
     bb0:	04410004 	bgez	v0,bc4 <func_80883144+0x40>
     bb4:	304f0003 	andi	t7,v0,0x3
     bb8:	11e00002 	beqz	t7,bc4 <func_80883144+0x40>
     bbc:	00000000 	nop
     bc0:	25effffc 	addiu	t7,t7,-4
     bc4:	15e00028 	bnez	t7,c68 <func_80883144+0xe4>
     bc8:	00000000 	nop
     bcc:	44816000 	mtc1	at,$f12
     bd0:	0c000000 	jal	0 <BgHakaZou_Init>
     bd4:	00000000 	nop
     bd8:	3c014260 	lui	at,0x4260
     bdc:	44813000 	mtc1	at,$f6
     be0:	c6040024 	lwc1	$f4,36(s0)
     be4:	46062201 	sub.s	$f8,$f4,$f6
     be8:	46080280 	add.s	$f10,$f0,$f8
     bec:	0c000000 	jal	0 <BgHakaZou_Init>
     bf0:	e7aa002c 	swc1	$f10,44(sp)
     bf4:	3c0142a0 	lui	at,0x42a0
     bf8:	44818000 	mtc1	at,$f16
     bfc:	c6040028 	lwc1	$f4,40(s0)
     c00:	3c014348 	lui	at,0x4348
     c04:	46100482 	mul.s	$f18,$f0,$f16
     c08:	44816000 	mtc1	at,$f12
     c0c:	46049180 	add.s	$f6,$f18,$f4
     c10:	0c000000 	jal	0 <BgHakaZou_Init>
     c14:	e7a60030 	swc1	$f6,48(sp)
     c18:	3c014260 	lui	at,0x4260
     c1c:	44815000 	mtc1	at,$f10
     c20:	c608002c 	lwc1	$f8,44(s0)
     c24:	3c060000 	lui	a2,0x0
     c28:	24c60000 	addiu	a2,a2,0
     c2c:	460a4400 	add.s	$f16,$f8,$f10
     c30:	24180096 	li	t8,150
     c34:	24190046 	li	t9,70
     c38:	afb90014 	sw	t9,20(sp)
     c3c:	46100480 	add.s	$f18,$f0,$f16
     c40:	afb80010 	sw	t8,16(sp)
     c44:	00c03825 	move	a3,a2
     c48:	8fa4003c 	lw	a0,60(sp)
     c4c:	e7b20034 	swc1	$f18,52(sp)
     c50:	0c000000 	jal	0 <BgHakaZou_Init>
     c54:	27a5002c 	addiu	a1,sp,44
     c58:	02002025 	move	a0,s0
     c5c:	0c000000 	jal	0 <BgHakaZou_Init>
     c60:	2405180e 	li	a1,6158
     c64:	8602016a 	lh	v0,362(s0)
     c68:	14400005 	bnez	v0,c80 <func_80883144+0xfc>
     c6c:	24080014 	li	t0,20
     c70:	3c090000 	lui	t1,0x0
     c74:	25290000 	addiu	t1,t1,0
     c78:	a608016a 	sh	t0,362(s0)
     c7c:	ae090164 	sw	t1,356(s0)
     c80:	8fbf0024 	lw	ra,36(sp)
     c84:	8fb00020 	lw	s0,32(sp)
     c88:	27bd0038 	addiu	sp,sp,56
     c8c:	03e00008 	jr	ra
     c90:	00000000 	nop

00000c94 <func_80883254>:
     c94:	27bdffd8 	addiu	sp,sp,-40
     c98:	afbf001c 	sw	ra,28(sp)
     c9c:	afb00018 	sw	s0,24(sp)
     ca0:	00808025 	move	s0,a0
     ca4:	0c000000 	jal	0 <BgHakaZou_Init>
     ca8:	afa5002c 	sw	a1,44(sp)
     cac:	3c013f00 	lui	at,0x3f00
     cb0:	44816000 	mtc1	at,$f12
     cb4:	3c0142a0 	lui	at,0x42a0
     cb8:	44814000 	mtc1	at,$f8
     cbc:	460c0102 	mul.s	$f4,$f0,$f12
     cc0:	2604002c 	addiu	a0,s0,44
     cc4:	460c2080 	add.s	$f2,$f4,$f12
     cc8:	e7a20024 	swc1	$f2,36(sp)
     ccc:	c6060010 	lwc1	$f6,16(s0)
     cd0:	46021400 	add.s	$f16,$f2,$f2
     cd4:	46083281 	sub.s	$f10,$f6,$f8
     cd8:	44068000 	mfc1	a2,$f16
     cdc:	44055000 	mfc1	a1,$f10
     ce0:	0c000000 	jal	0 <BgHakaZou_Init>
     ce4:	00000000 	nop
     ce8:	3c014220 	lui	at,0x4220
     cec:	44812000 	mtc1	at,$f4
     cf0:	c612000c 	lwc1	$f18,12(s0)
     cf4:	26040028 	addiu	a0,s0,40
     cf8:	8fa60024 	lw	a2,36(sp)
     cfc:	46049181 	sub.s	$f6,$f18,$f4
     d00:	44053000 	mfc1	a1,$f6
     d04:	0c000000 	jal	0 <BgHakaZou_Init>
     d08:	00000000 	nop
     d0c:	1040000f 	beqz	v0,d4c <func_80883254+0xb8>
     d10:	02002025 	move	a0,s0
     d14:	8602016a 	lh	v0,362(s0)
     d18:	240f003c 	li	t7,60
     d1c:	24180008 	li	t8,8
     d20:	10400003 	beqz	v0,d30 <func_80883254+0x9c>
     d24:	244effff 	addiu	t6,v0,-1
     d28:	a60e016a 	sh	t6,362(s0)
     d2c:	8602016a 	lh	v0,362(s0)
     d30:	14400008 	bnez	v0,d54 <func_80883254+0xc0>
     d34:	3c190000 	lui	t9,0x0
     d38:	27390000 	addiu	t9,t9,0
     d3c:	a60f016a 	sh	t7,362(s0)
     d40:	a6180030 	sh	t8,48(s0)
     d44:	10000003 	b	d54 <func_80883254+0xc0>
     d48:	ae190164 	sw	t9,356(s0)
     d4c:	0c000000 	jal	0 <BgHakaZou_Init>
     d50:	8fa5002c 	lw	a1,44(sp)
     d54:	8fbf001c 	lw	ra,28(sp)
     d58:	8fb00018 	lw	s0,24(sp)
     d5c:	27bd0028 	addiu	sp,sp,40
     d60:	03e00008 	jr	ra
     d64:	00000000 	nop

00000d68 <func_80883328>:
     d68:	27bdff78 	addiu	sp,sp,-136
     d6c:	afbf0064 	sw	ra,100(sp)
     d70:	afb70060 	sw	s7,96(sp)
     d74:	afb6005c 	sw	s6,92(sp)
     d78:	afb50058 	sw	s5,88(sp)
     d7c:	afb40054 	sw	s4,84(sp)
     d80:	afb30050 	sw	s3,80(sp)
     d84:	afb2004c 	sw	s2,76(sp)
     d88:	afb10048 	sw	s1,72(sp)
     d8c:	afb00044 	sw	s0,68(sp)
     d90:	f7bc0038 	sdc1	$f28,56(sp)
     d94:	f7ba0030 	sdc1	$f26,48(sp)
     d98:	f7b80028 	sdc1	$f24,40(sp)
     d9c:	f7b60020 	sdc1	$f22,32(sp)
     da0:	f7b40018 	sdc1	$f20,24(sp)
     da4:	848e0030 	lh	t6,48(a0)
     da8:	3c013e00 	lui	at,0x3e00
     dac:	44813000 	mtc1	at,$f6
     db0:	448e2000 	mtc1	t6,$f4
     db4:	00a0a825 	move	s5,a1
     db8:	0080b825 	move	s7,a0
     dbc:	46802020 	cvt.s.w	$f0,$f4
     dc0:	248400b4 	addiu	a0,a0,180
     dc4:	2405c000 	li	a1,-16384
     dc8:	46060202 	mul.s	$f8,$f0,$f6
     dcc:	46080280 	add.s	$f10,$f0,$f8
     dd0:	4600540d 	trunc.w.s	$f16,$f10
     dd4:	44188000 	mfc1	t8,$f16
     dd8:	00000000 	nop
     ddc:	a498ff7c 	sh	t8,-132(a0)
     de0:	0c000000 	jal	0 <BgHakaZou_Init>
     de4:	86e60030 	lh	a2,48(s7)
     de8:	1040003b 	beqz	v0,ed8 <func_80883328+0x170>
     dec:	0000b025 	move	s6,zero
     df0:	3c0142e0 	lui	at,0x42e0
     df4:	4481e000 	mtc1	at,$f28
     df8:	c6f20024 	lwc1	$f18,36(s7)
     dfc:	3c014248 	lui	at,0x4248
     e00:	4481d000 	mtc1	at,$f26
     e04:	3c01447a 	lui	at,0x447a
     e08:	4481c000 	mtc1	at,$f24
     e0c:	e7b2007c 	swc1	$f18,124(sp)
     e10:	c6e40028 	lwc1	$f4,40(s7)
     e14:	3c014348 	lui	at,0x4348
     e18:	4481b000 	mtc1	at,$f22
     e1c:	3c010000 	lui	at,0x0
     e20:	3c110000 	lui	s1,0x0
     e24:	26310000 	addiu	s1,s1,0
     e28:	c4340000 	lwc1	$f20,0(at)
     e2c:	24140004 	li	s4,4
     e30:	27b3007c 	addiu	s3,sp,124
     e34:	24120002 	li	s2,2
     e38:	e7a40080 	swc1	$f4,128(sp)
     e3c:	c6e6002c 	lwc1	$f6,44(s7)
     e40:	00008025 	move	s0,zero
     e44:	e7a60084 	swc1	$f6,132(sp)
     e48:	16120003 	bne	s0,s2,e58 <func_80883328+0xf0>
     e4c:	c7a80084 	lwc1	$f8,132(sp)
     e50:	10000002 	b	e5c <func_80883328+0xf4>
     e54:	4600a006 	mov.s	$f0,$f20
     e58:	4600d006 	mov.s	$f0,$f26
     e5c:	46004281 	sub.s	$f10,$f8,$f0
     e60:	0c000000 	jal	0 <BgHakaZou_Init>
     e64:	e7aa0084 	swc1	$f10,132(sp)
     e68:	46160402 	mul.s	$f16,$f0,$f22
     e6c:	240900c8 	li	t1,200
     e70:	afa90014 	sw	t1,20(sp)
     e74:	02a02025 	move	a0,s5
     e78:	02602825 	move	a1,s3
     e7c:	02203025 	move	a2,s1
     e80:	02203825 	move	a3,s1
     e84:	46188480 	add.s	$f18,$f16,$f24
     e88:	4600910d 	trunc.w.s	$f4,$f18
     e8c:	44082000 	mfc1	t0,$f4
     e90:	0c000000 	jal	0 <BgHakaZou_Init>
     e94:	afa80010 	sw	t0,16(sp)
     e98:	26100001 	addiu	s0,s0,1
     e9c:	1614ffea 	bne	s0,s4,e48 <func_80883328+0xe0>
     ea0:	00000000 	nop
     ea4:	c7a6007c 	lwc1	$f6,124(sp)
     ea8:	26d60001 	addiu	s6,s6,1
     eac:	461c3201 	sub.s	$f8,$f6,$f28
     eb0:	16d2ffe2 	bne	s6,s2,e3c <func_80883328+0xd4>
     eb4:	e7a8007c 	swc1	$f8,124(sp)
     eb8:	02e02025 	move	a0,s7
     ebc:	0c000000 	jal	0 <BgHakaZou_Init>
     ec0:	2405281d 	li	a1,10269
     ec4:	3c0b0000 	lui	t3,0x0
     ec8:	240a0019 	li	t2,25
     ecc:	256b0000 	addiu	t3,t3,0
     ed0:	a6ea016a 	sh	t2,362(s7)
     ed4:	aeeb0164 	sw	t3,356(s7)
     ed8:	8fbf0064 	lw	ra,100(sp)
     edc:	d7b40018 	ldc1	$f20,24(sp)
     ee0:	d7b60020 	ldc1	$f22,32(sp)
     ee4:	d7b80028 	ldc1	$f24,40(sp)
     ee8:	d7ba0030 	ldc1	$f26,48(sp)
     eec:	d7bc0038 	ldc1	$f28,56(sp)
     ef0:	8fb00044 	lw	s0,68(sp)
     ef4:	8fb10048 	lw	s1,72(sp)
     ef8:	8fb2004c 	lw	s2,76(sp)
     efc:	8fb30050 	lw	s3,80(sp)
     f00:	8fb40054 	lw	s4,84(sp)
     f04:	8fb50058 	lw	s5,88(sp)
     f08:	8fb6005c 	lw	s6,92(sp)
     f0c:	8fb70060 	lw	s7,96(sp)
     f10:	03e00008 	jr	ra
     f14:	27bd0088 	addiu	sp,sp,136

00000f18 <func_808834D8>:
     f18:	afa50004 	sw	a1,4(sp)
     f1c:	8482016a 	lh	v0,362(a0)
     f20:	3c01c170 	lui	at,0xc170
     f24:	3c190000 	lui	t9,0x0
     f28:	10400003 	beqz	v0,f38 <func_808834D8+0x20>
     f2c:	244effff 	addiu	t6,v0,-1
     f30:	a48e016a 	sh	t6,362(a0)
     f34:	8482016a 	lh	v0,362(a0)
     f38:	04410004 	bgez	v0,f4c <func_808834D8+0x34>
     f3c:	304f0001 	andi	t7,v0,0x1
     f40:	11e00002 	beqz	t7,f4c <func_808834D8+0x34>
     f44:	00000000 	nop
     f48:	25effffe 	addiu	t7,t7,-2
     f4c:	11e00005 	beqz	t7,f64 <func_808834D8+0x4c>
     f50:	305800fe 	andi	t8,v0,0xfe
     f54:	3c014170 	lui	at,0x4170
     f58:	44810000 	mtc1	at,$f0
     f5c:	10000004 	b	f70 <func_808834D8+0x58>
     f60:	44982000 	mtc1	t8,$f4
     f64:	44810000 	mtc1	at,$f0
     f68:	00000000 	nop
     f6c:	44982000 	mtc1	t8,$f4
     f70:	3c010000 	lui	at,0x0
     f74:	c4280000 	lwc1	$f8,0(at)
     f78:	468021a0 	cvt.s.w	$f6,$f4
     f7c:	c4920028 	lwc1	$f18,40(a0)
     f80:	27390000 	addiu	t9,t9,0
     f84:	46083282 	mul.s	$f10,$f6,$f8
     f88:	00000000 	nop
     f8c:	46005402 	mul.s	$f16,$f10,$f0
     f90:	46109100 	add.s	$f4,$f18,$f16
     f94:	14400002 	bnez	v0,fa0 <func_808834D8+0x88>
     f98:	e4840028 	swc1	$f4,40(a0)
     f9c:	ac990164 	sw	t9,356(a0)
     fa0:	03e00008 	jr	ra
     fa4:	00000000 	nop

00000fa8 <func_80883568>:
     fa8:	afa40000 	sw	a0,0(sp)
     fac:	03e00008 	jr	ra
     fb0:	afa50004 	sw	a1,4(sp)

00000fb4 <BgHakaZou_Update>:
     fb4:	27bdffe8 	addiu	sp,sp,-24
     fb8:	afbf0014 	sw	ra,20(sp)
     fbc:	afa40018 	sw	a0,24(sp)
     fc0:	8c990164 	lw	t9,356(a0)
     fc4:	0320f809 	jalr	t9
     fc8:	00000000 	nop
     fcc:	8fa40018 	lw	a0,24(sp)
     fd0:	24010003 	li	at,3
     fd4:	848e001c 	lh	t6,28(a0)
     fd8:	55c10004 	bnel	t6,at,fec <BgHakaZou_Update+0x38>
     fdc:	8fbf0014 	lw	ra,20(sp)
     fe0:	0c000000 	jal	0 <BgHakaZou_Init>
     fe4:	00000000 	nop
     fe8:	8fbf0014 	lw	ra,20(sp)
     fec:	27bd0018 	addiu	sp,sp,24
     ff0:	03e00008 	jr	ra
     ff4:	00000000 	nop

00000ff8 <func_808835B8>:
     ff8:	27bdffe8 	addiu	sp,sp,-24
     ffc:	afbf0014 	sw	ra,20(sp)
    1000:	00803825 	move	a3,a0
    1004:	84ee001c 	lh	t6,28(a3)
    1008:	00a02025 	move	a0,a1
    100c:	3c050000 	lui	a1,0x0
    1010:	000e7880 	sll	t7,t6,0x2
    1014:	00af2821 	addu	a1,a1,t7
    1018:	0c000000 	jal	0 <BgHakaZou_Init>
    101c:	8ca50000 	lw	a1,0(a1)
    1020:	8fbf0014 	lw	ra,20(sp)
    1024:	27bd0018 	addiu	sp,sp,24
    1028:	03e00008 	jr	ra
    102c:	00000000 	nop
