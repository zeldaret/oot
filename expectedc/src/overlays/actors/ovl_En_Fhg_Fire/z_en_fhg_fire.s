
build/src/overlays/actors/ovl_En_Fhg_Fire/z_en_fhg_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnFhgFire_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac85014c 	sw	a1,332(a0)

00000008 <EnFhgFire_Init>:
       8:	27bdffa8 	addiu	sp,sp,-88
       c:	44800000 	mtc1	zero,$f0
      10:	afbf002c 	sw	ra,44(sp)
      14:	afb00028 	sw	s0,40(sp)
      18:	afa5005c 	sw	a1,92(sp)
      1c:	8caf1c44 	lw	t7,7236(a1)
      20:	00808025 	move	s0,a0
      24:	248400b4 	addiu	a0,a0,180
      28:	44050000 	mfc1	a1,$f0
      2c:	44070000 	mfc1	a3,$f0
      30:	afa40038 	sw	a0,56(sp)
      34:	00003025 	move	a2,zero
      38:	0c000000 	jal	0 <EnFhgFire_SetupAction>
      3c:	afaf004c 	sw	t7,76(sp)
      40:	8602001c 	lh	v0,28(s0)
      44:	24010023 	li	at,35
      48:	8fa4005c 	lw	a0,92(sp)
      4c:	10410006 	beq	v0,at,68 <EnFhgFire_Init+0x60>
      50:	260501b0 	addiu	a1,s0,432
      54:	24010024 	li	at,36
      58:	10410003 	beq	v0,at,68 <EnFhgFire_Init+0x60>
      5c:	24010032 	li	at,50
      60:	5441000a 	bnel	v0,at,8c <EnFhgFire_Init+0x84>
      64:	3c014348 	lui	at,0x4348
      68:	0c000000 	jal	0 <EnFhgFire_SetupAction>
      6c:	afa50034 	sw	a1,52(sp)
      70:	3c070000 	lui	a3,0x0
      74:	8fa50034 	lw	a1,52(sp)
      78:	24e70000 	addiu	a3,a3,0
      7c:	8fa4005c 	lw	a0,92(sp)
      80:	0c000000 	jal	0 <EnFhgFire_SetupAction>
      84:	02003025 	move	a2,s0
      88:	3c014348 	lui	at,0x4348
      8c:	44812000 	mtc1	at,$f4
      90:	02002025 	move	a0,s0
      94:	24050000 	li	a1,0
      98:	0c000000 	jal	0 <EnFhgFire_SetupAction>
      9c:	e6040160 	swc1	$f4,352(s0)
      a0:	8602001c 	lh	v0,28(s0)
      a4:	24010001 	li	at,1
      a8:	02002025 	move	a0,s0
      ac:	14410008 	bne	v0,at,d0 <EnFhgFire_Init+0xc8>
      b0:	3c050000 	lui	a1,0x0
      b4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
      b8:	24a50000 	addiu	a1,a1,0
      bc:	02002025 	move	a0,s0
      c0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
      c4:	240538a2 	li	a1,14498
      c8:	1000000f 	b	108 <EnFhgFire_Init+0x100>
      cc:	8602001c 	lh	v0,28(s0)
      d0:	28410064 	slti	at,v0,100
      d4:	1420000c 	bnez	at,108 <EnFhgFire_Init+0x100>
      d8:	02002025 	move	a0,s0
      dc:	3c050000 	lui	a1,0x0
      e0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
      e4:	24a50000 	addiu	a1,a1,0
      e8:	8a080030 	lwl	t0,48(s0)
      ec:	8fb80038 	lw	t8,56(sp)
      f0:	9a080033 	lwr	t0,51(s0)
      f4:	ab080000 	swl	t0,0(t8)
      f8:	bb080003 	swr	t0,3(t8)
      fc:	96080034 	lhu	t0,52(s0)
     100:	a7080004 	sh	t0,4(t8)
     104:	8602001c 	lh	v0,28(s0)
     108:	24010023 	li	at,35
     10c:	1441000d 	bne	v0,at,144 <EnFhgFire_Init+0x13c>
     110:	02002025 	move	a0,s0
     114:	3c050000 	lui	a1,0x0
     118:	ae000134 	sw	zero,308(s0)
     11c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     120:	24a50000 	addiu	a1,a1,0
     124:	3c0141f0 	lui	at,0x41f0
     128:	44813000 	mtc1	at,$f6
     12c:	02002025 	move	a0,s0
     130:	240538a3 	li	a1,14499
     134:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     138:	e6060068 	swc1	$f6,104(s0)
     13c:	100000b7 	b	41c <EnFhgFire_Init+0x414>
     140:	8fbf002c 	lw	ra,44(sp)
     144:	24010024 	li	at,36
     148:	1441001e 	bne	v0,at,1c4 <EnFhgFire_Init+0x1bc>
     14c:	02002025 	move	a0,s0
     150:	3c050000 	lui	a1,0x0
     154:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     158:	24a50000 	addiu	a1,a1,0
     15c:	860c0030 	lh	t4,48(s0)
     160:	3c01437f 	lui	at,0x437f
     164:	44814000 	mtc1	at,$f8
     168:	448c5000 	mtc1	t4,$f10
     16c:	3c0142c8 	lui	at,0x42c8
     170:	44819000 	mtc1	at,$f18
     174:	46805020 	cvt.s.w	$f0,$f10
     178:	24090020 	li	t1,32
     17c:	240a0032 	li	t2,50
     180:	240b000a 	li	t3,10
     184:	a6090150 	sh	t1,336(s0)
     188:	a60a0152 	sh	t2,338(s0)
     18c:	46120103 	div.s	$f4,$f0,$f18
     190:	a60b01fe 	sh	t3,510(s0)
     194:	3c010000 	lui	at,0x0
     198:	e6080160 	swc1	$f8,352(s0)
     19c:	e604018c 	swc1	$f4,396(s0)
     1a0:	c4260184 	lwc1	$f6,388(at)
     1a4:	a60001f4 	sh	zero,500(s0)
     1a8:	46060202 	mul.s	$f8,$f0,$f6
     1ac:	4600428d 	trunc.w.s	$f10,$f8
     1b0:	44025000 	mfc1	v0,$f10
     1b4:	00000000 	nop
     1b8:	a60201f0 	sh	v0,496(s0)
     1bc:	10000096 	b	418 <EnFhgFire_Init+0x410>
     1c0:	a60201f2 	sh	v0,498(s0)
     1c4:	24010026 	li	at,38
     1c8:	1441000f 	bne	v0,at,208 <EnFhgFire_Init+0x200>
     1cc:	3c040000 	lui	a0,0x0
     1d0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     1d4:	24840000 	addiu	a0,a0,0
     1d8:	3c050000 	lui	a1,0x0
     1dc:	24a50000 	addiu	a1,a1,0
     1e0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     1e4:	02002025 	move	a0,s0
     1e8:	3c040000 	lui	a0,0x0
     1ec:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     1f0:	24840014 	addiu	a0,a0,20
     1f4:	860e0030 	lh	t6,48(s0)
     1f8:	860f0032 	lh	t7,50(s0)
     1fc:	a60e0150 	sh	t6,336(s0)
     200:	10000085 	b	418 <EnFhgFire_Init+0x410>
     204:	a60f0158 	sh	t7,344(s0)
     208:	24010027 	li	at,39
     20c:	10410006 	beq	v0,at,228 <EnFhgFire_Init+0x220>
     210:	02002025 	move	a0,s0
     214:	24010028 	li	at,40
     218:	10410003 	beq	v0,at,228 <EnFhgFire_Init+0x220>
     21c:	24010029 	li	at,41
     220:	5441001b 	bnel	v0,at,290 <EnFhgFire_Init+0x288>
     224:	24010032 	li	at,50
     228:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     22c:	3c0540e0 	lui	a1,0x40e0
     230:	3c050000 	lui	a1,0x0
     234:	24a50000 	addiu	a1,a1,0
     238:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     23c:	02002025 	move	a0,s0
     240:	8618001c 	lh	t8,28(s0)
     244:	24010029 	li	at,41
     248:	2408004c 	li	t0,76
     24c:	17010007 	bne	t8,at,26c <EnFhgFire_Init+0x264>
     250:	02002025 	move	a0,s0
     254:	3c013f80 	lui	at,0x3f80
     258:	44819000 	mtc1	at,$f18
     25c:	241901b8 	li	t9,440
     260:	a6190150 	sh	t9,336(s0)
     264:	1000006c 	b	418 <EnFhgFire_Init+0x410>
     268:	e6120058 	swc1	$f18,88(s0)
     26c:	a6080150 	sh	t0,336(s0)
     270:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     274:	2405283f 	li	a1,10303
     278:	02002025 	move	a0,s0
     27c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     280:	24052853 	li	a1,10323
     284:	10000065 	b	41c <EnFhgFire_Init+0x414>
     288:	8fbf002c 	lw	ra,44(sp)
     28c:	24010032 	li	at,50
     290:	14410061 	bne	v0,at,418 <EnFhgFire_Init+0x410>
     294:	02002025 	move	a0,s0
     298:	86090030 	lh	t1,48(s0)
     29c:	3c014040 	lui	at,0x4040
     2a0:	3c050000 	lui	a1,0x0
     2a4:	55200006 	bnezl	t1,2c0 <EnFhgFire_Init+0x2b8>
     2a8:	44813000 	mtc1	at,$f6
     2ac:	3c014100 	lui	at,0x4100
     2b0:	44812000 	mtc1	at,$f4
     2b4:	10000004 	b	2c8 <EnFhgFire_Init+0x2c0>
     2b8:	e6040068 	swc1	$f4,104(s0)
     2bc:	44813000 	mtc1	at,$f6
     2c0:	00000000 	nop
     2c4:	e6060068 	swc1	$f6,104(s0)
     2c8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     2cc:	24a50000 	addiu	a1,a1,0
     2d0:	8fa2004c 	lw	v0,76(sp)
     2d4:	240a0046 	li	t2,70
     2d8:	240b0002 	li	t3,2
     2dc:	a60a0150 	sh	t2,336(s0)
     2e0:	a60b0152 	sh	t3,338(s0)
     2e4:	3c0141f0 	lui	at,0x41f0
     2e8:	c60a0024 	lwc1	$f10,36(s0)
     2ec:	44812000 	mtc1	at,$f4
     2f0:	c4480024 	lwc1	$f8,36(v0)
     2f4:	c4520028 	lwc1	$f18,40(v0)
     2f8:	460a4301 	sub.s	$f12,$f8,$f10
     2fc:	c6080028 	lwc1	$f8,40(s0)
     300:	46049180 	add.s	$f6,$f18,$f4
     304:	46083281 	sub.s	$f10,$f6,$f8
     308:	e7aa0044 	swc1	$f10,68(sp)
     30c:	c604002c 	lwc1	$f4,44(s0)
     310:	c452002c 	lwc1	$f18,44(v0)
     314:	e7ac0048 	swc1	$f12,72(sp)
     318:	46049381 	sub.s	$f14,$f18,$f4
     31c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     320:	e7ae0040 	swc1	$f14,64(sp)
     324:	3c010000 	lui	at,0x0
     328:	c4260188 	lwc1	$f6,392(at)
     32c:	c7a20048 	lwc1	$f2,72(sp)
     330:	c7b00040 	lwc1	$f16,64(sp)
     334:	46060202 	mul.s	$f8,$f0,$f6
     338:	00000000 	nop
     33c:	46021482 	mul.s	$f18,$f2,$f2
     340:	00000000 	nop
     344:	46108102 	mul.s	$f4,$f16,$f16
     348:	4600428d 	trunc.w.s	$f10,$f8
     34c:	46049000 	add.s	$f0,$f18,$f4
     350:	440d5000 	mfc1	t5,$f10
     354:	00000000 	nop
     358:	a60d0032 	sh	t5,50(s0)
     35c:	46000384 	sqrt.s	$f14,$f0
     360:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     364:	c7ac0044 	lwc1	$f12,68(sp)
     368:	3c010000 	lui	at,0x0
     36c:	c426018c 	lwc1	$f6,396(at)
     370:	24180028 	li	t8,40
     374:	24190032 	li	t9,50
     378:	46060202 	mul.s	$f8,$f0,$f6
     37c:	2408ffe7 	li	t0,-25
     380:	a61801f0 	sh	t8,496(s0)
     384:	a61901f2 	sh	t9,498(s0)
     388:	a60801f4 	sh	t0,500(s0)
     38c:	260601a0 	addiu	a2,s0,416
     390:	4600428d 	trunc.w.s	$f10,$f8
     394:	440f5000 	mfc1	t7,$f10
     398:	00000000 	nop
     39c:	a60f0030 	sh	t7,48(s0)
     3a0:	8fa4005c 	lw	a0,92(sp)
     3a4:	afa60038 	sw	a2,56(sp)
     3a8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     3ac:	248507a8 	addiu	a1,a0,1960
     3b0:	c6120024 	lwc1	$f18,36(s0)
     3b4:	c6060028 	lwc1	$f6,40(s0)
     3b8:	c60a002c 	lwc1	$f10,44(s0)
     3bc:	4600910d 	trunc.w.s	$f4,$f18
     3c0:	ae02019c 	sw	v0,412(s0)
     3c4:	240d00ff 	li	t5,255
     3c8:	4600320d 	trunc.w.s	$f8,$f6
     3cc:	44052000 	mfc1	a1,$f4
     3d0:	240e00ff 	li	t6,255
     3d4:	4600548d 	trunc.w.s	$f18,$f10
     3d8:	44064000 	mfc1	a2,$f8
     3dc:	240f00ff 	li	t7,255
     3e0:	241800ff 	li	t8,255
     3e4:	44079000 	mfc1	a3,$f18
     3e8:	00052c00 	sll	a1,a1,0x10
     3ec:	00063400 	sll	a2,a2,0x10
     3f0:	00073c00 	sll	a3,a3,0x10
     3f4:	00073c03 	sra	a3,a3,0x10
     3f8:	00063403 	sra	a2,a2,0x10
     3fc:	00052c03 	sra	a1,a1,0x10
     400:	afb8001c 	sw	t8,28(sp)
     404:	afaf0018 	sw	t7,24(sp)
     408:	afae0014 	sw	t6,20(sp)
     40c:	afad0010 	sw	t5,16(sp)
     410:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     414:	8fa40038 	lw	a0,56(sp)
     418:	8fbf002c 	lw	ra,44(sp)
     41c:	8fb00028 	lw	s0,40(sp)
     420:	27bd0058 	addiu	sp,sp,88
     424:	03e00008 	jr	ra
     428:	00000000 	nop

0000042c <EnFhgFire_Destroy>:
     42c:	27bdffe8 	addiu	sp,sp,-24
     430:	afbf0014 	sw	ra,20(sp)
     434:	afa5001c 	sw	a1,28(sp)
     438:	8482001c 	lh	v0,28(a0)
     43c:	00803825 	move	a3,a0
     440:	24010023 	li	at,35
     444:	10410005 	beq	v0,at,45c <EnFhgFire_Destroy+0x30>
     448:	8fa4001c 	lw	a0,28(sp)
     44c:	24010024 	li	at,36
     450:	10410002 	beq	v0,at,45c <EnFhgFire_Destroy+0x30>
     454:	24010032 	li	at,50
     458:	14410005 	bne	v0,at,470 <EnFhgFire_Destroy+0x44>
     45c:	24e501b0 	addiu	a1,a3,432
     460:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     464:	afa70018 	sw	a3,24(sp)
     468:	8fa70018 	lw	a3,24(sp)
     46c:	84e2001c 	lh	v0,28(a3)
     470:	24010032 	li	at,50
     474:	14410004 	bne	v0,at,488 <EnFhgFire_Destroy+0x5c>
     478:	8fa4001c 	lw	a0,28(sp)
     47c:	248507a8 	addiu	a1,a0,1960
     480:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     484:	8ce6019c 	lw	a2,412(a3)
     488:	8fbf0014 	lw	ra,20(sp)
     48c:	27bd0018 	addiu	sp,sp,24
     490:	03e00008 	jr	ra
     494:	00000000 	nop

00000498 <func_80A0F6F8>:
     498:	27bdff70 	addiu	sp,sp,-144
     49c:	afb10044 	sw	s1,68(sp)
     4a0:	00808825 	move	s1,a0
     4a4:	afb40050 	sw	s4,80(sp)
     4a8:	00a0a025 	move	s4,a1
     4ac:	afbf0054 	sw	ra,84(sp)
     4b0:	00a02025 	move	a0,a1
     4b4:	afb3004c 	sw	s3,76(sp)
     4b8:	afb20048 	sw	s2,72(sp)
     4bc:	afb00040 	sw	s0,64(sp)
     4c0:	f7b40038 	sdc1	$f20,56(sp)
     4c4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     4c8:	00002825 	move	a1,zero
     4cc:	86230158 	lh	v1,344(s1)
     4d0:	00402025 	move	a0,v0
     4d4:	240e000a 	li	t6,10
     4d8:	10600008 	beqz	v1,4fc <func_80A0F6F8+0x64>
     4dc:	240f0007 	li	t7,7
     4e0:	2401000a 	li	at,10
     4e4:	10610008 	beq	v1,at,508 <func_80A0F6F8+0x70>
     4e8:	2401000b 	li	at,11
     4ec:	1061006f 	beq	v1,at,6ac <func_80A0F6F8+0x214>
     4f0:	00000000 	nop
     4f4:	100000c3 	b	804 <func_80A0F6F8+0x36c>
     4f8:	02202025 	move	a0,s1
     4fc:	a62e0158 	sh	t6,344(s1)
     500:	100000bf 	b	800 <func_80A0F6F8+0x368>
     504:	a62f0150 	sh	t7,336(s1)
     508:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     50c:	00000000 	nop
     510:	3c013f80 	lui	at,0x3f80
     514:	44810000 	mtc1	at,$f0
     518:	86390156 	lh	t9,342(s1)
     51c:	3c073e4c 	lui	a3,0x3e4c
     520:	44050000 	mfc1	a1,$f0
     524:	001943c0 	sll	t0,t9,0xf
     528:	01024821 	addu	t1,t0,v0
     52c:	44060000 	mfc1	a2,$f0
     530:	a62900b6 	sh	t1,182(s1)
     534:	34e7cccd 	ori	a3,a3,0xcccd
     538:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     53c:	2624016c 	addiu	a0,s1,364
     540:	862a0150 	lh	t2,336(s1)
     544:	240b000b 	li	t3,11
     548:	34018000 	li	at,0x8000
     54c:	154000ac 	bnez	t2,800 <func_80A0F6F8+0x368>
     550:	240e0025 	li	t6,37
     554:	862c00b8 	lh	t4,184(s1)
     558:	c6240028 	lwc1	$f4,40(s1)
     55c:	c62a0024 	lwc1	$f10,36(s1)
     560:	01816821 	addu	t5,t4,at
     564:	3c014348 	lui	at,0x4348
     568:	44813000 	mtc1	at,$f6
     56c:	a62b0158 	sh	t3,344(s1)
     570:	a62d00b8 	sh	t5,184(s1)
     574:	46062201 	sub.s	$f8,$f4,$f6
     578:	a62e0150 	sh	t6,336(s1)
     57c:	240f01f4 	li	t7,500
     580:	24180024 	li	t8,36
     584:	e6280028 	swc1	$f8,40(s1)
     588:	e7aa0010 	swc1	$f10,16(sp)
     58c:	c6300028 	lwc1	$f16,40(s1)
     590:	26841c24 	addiu	a0,s4,7204
     594:	02202825 	move	a1,s1
     598:	e7b00014 	swc1	$f16,20(sp)
     59c:	c632002c 	lwc1	$f18,44(s1)
     5a0:	afb80028 	sw	t8,40(sp)
     5a4:	afa00024 	sw	zero,36(sp)
     5a8:	afa00020 	sw	zero,32(sp)
     5ac:	afaf001c 	sw	t7,28(sp)
     5b0:	02803025 	move	a2,s4
     5b4:	2407006d 	li	a3,109
     5b8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     5bc:	e7b20018 	swc1	$f18,24(sp)
     5c0:	3c190000 	lui	t9,0x0
     5c4:	27390000 	addiu	t9,t9,0
     5c8:	8f290000 	lw	t1,0(t9)
     5cc:	27b30070 	addiu	s3,sp,112
     5d0:	3c0141f0 	lui	at,0x41f0
     5d4:	ae690000 	sw	t1,0(s3)
     5d8:	8f280004 	lw	t0,4(t9)
     5dc:	4481a000 	mtc1	at,$f20
     5e0:	00008025 	move	s0,zero
     5e4:	ae680004 	sw	t0,4(s3)
     5e8:	8f290008 	lw	t1,8(t9)
     5ec:	26320024 	addiu	s2,s1,36
     5f0:	ae690008 	sw	t1,8(s3)
     5f4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     5f8:	4600a306 	mov.s	$f12,$f20
     5fc:	3c0140a0 	lui	at,0x40a0
     600:	44816000 	mtc1	at,$f12
     604:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     608:	e7a0007c 	swc1	$f0,124(sp)
     60c:	3c014040 	lui	at,0x4040
     610:	44812000 	mtc1	at,$f4
     614:	4600a306 	mov.s	$f12,$f20
     618:	46040180 	add.s	$f6,$f0,$f4
     61c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     620:	e7a60080 	swc1	$f6,128(sp)
     624:	3c010000 	lui	at,0x0
     628:	c4280190 	lwc1	$f8,400(at)
     62c:	e7a00084 	swc1	$f0,132(sp)
     630:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     634:	e7a80074 	swc1	$f8,116(sp)
     638:	3c0142c8 	lui	at,0x42c8
     63c:	44815000 	mtc1	at,$f10
     640:	02802025 	move	a0,s4
     644:	02402825 	move	a1,s2
     648:	460a0402 	mul.s	$f16,$f0,$f10
     64c:	27a6007c 	addiu	a2,sp,124
     650:	02603825 	move	a3,s3
     654:	afa00014 	sw	zero,20(sp)
     658:	4600848d 	trunc.w.s	$f18,$f16
     65c:	440b9000 	mfc1	t3,$f18
     660:	00000000 	nop
     664:	000b6400 	sll	t4,t3,0x10
     668:	000c6c03 	sra	t5,t4,0x10
     66c:	25ae00f0 	addiu	t6,t5,240
     670:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     674:	afae0010 	sw	t6,16(sp)
     678:	26100001 	addiu	s0,s0,1
     67c:	00108400 	sll	s0,s0,0x10
     680:	00108403 	sra	s0,s0,0x10
     684:	2a010023 	slti	at,s0,35
     688:	1420ffda 	bnez	at,5f4 <func_80A0F6F8+0x15c>
     68c:	00000000 	nop
     690:	02202025 	move	a0,s1
     694:	02802825 	move	a1,s4
     698:	24060004 	li	a2,4
     69c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     6a0:	2407000a 	li	a3,10
     6a4:	10000057 	b	804 <func_80A0F6F8+0x36c>
     6a8:	02202025 	move	a0,s1
     6ac:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     6b0:	00000000 	nop
     6b4:	86380156 	lh	t8,342(s1)
     6b8:	3c013f80 	lui	at,0x3f80
     6bc:	44810000 	mtc1	at,$f0
     6c0:	0018cbc0 	sll	t9,t8,0xf
     6c4:	03224021 	addu	t0,t9,v0
     6c8:	3c073e4c 	lui	a3,0x3e4c
     6cc:	44060000 	mfc1	a2,$f0
     6d0:	a62800b6 	sh	t0,182(s1)
     6d4:	34e7cccd 	ori	a3,a3,0xcccd
     6d8:	2624016c 	addiu	a0,s1,364
     6dc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     6e0:	24050000 	li	a1,0
     6e4:	86220150 	lh	v0,336(s1)
     6e8:	2401001e 	li	at,30
     6ec:	14410040 	bne	v0,at,7f0 <func_80A0F6F8+0x358>
     6f0:	00000000 	nop
     6f4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     6f8:	00000000 	nop
     6fc:	3c013f00 	lui	at,0x3f00
     700:	44812000 	mtc1	at,$f4
     704:	00009025 	move	s2,zero
     708:	00008025 	move	s0,zero
     70c:	4604003c 	c.lt.s	$f0,$f4
     710:	26931c24 	addiu	s3,s4,7204
     714:	45000003 	bc1f	724 <func_80A0F6F8+0x28c>
     718:	00000000 	nop
     71c:	10000001 	b	724 <func_80A0F6F8+0x28c>
     720:	24121000 	li	s2,4096
     724:	c6260024 	lwc1	$f6,36(s1)
     728:	00104b40 	sll	t1,s0,0xd
     72c:	01325021 	addu	t2,t1,s2
     730:	e7a60010 	swc1	$f6,16(sp)
     734:	c6280028 	lwc1	$f8,40(s1)
     738:	240b4000 	li	t3,16384
     73c:	260c0064 	addiu	t4,s0,100
     740:	e7a80014 	swc1	$f8,20(sp)
     744:	c62a002c 	lwc1	$f10,44(s1)
     748:	afac0028 	sw	t4,40(sp)
     74c:	afab0024 	sw	t3,36(sp)
     750:	afaa0020 	sw	t2,32(sp)
     754:	afa0001c 	sw	zero,28(sp)
     758:	02602025 	move	a0,s3
     75c:	02202825 	move	a1,s1
     760:	02803025 	move	a2,s4
     764:	2407006d 	li	a3,109
     768:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     76c:	e7aa0018 	swc1	$f10,24(sp)
     770:	26100001 	addiu	s0,s0,1
     774:	00108400 	sll	s0,s0,0x10
     778:	00108403 	sra	s0,s0,0x10
     77c:	2a010008 	slti	at,s0,8
     780:	5420ffe9 	bnezl	at,728 <func_80A0F6F8+0x290>
     784:	c6260024 	lwc1	$f6,36(s1)
     788:	00008025 	move	s0,zero
     78c:	c6300024 	lwc1	$f16,36(s1)
     790:	00106b40 	sll	t5,s0,0xd
     794:	01b27021 	addu	t6,t5,s2
     798:	e7b00010 	swc1	$f16,16(sp)
     79c:	c6320028 	lwc1	$f18,40(s1)
     7a0:	240f0023 	li	t7,35
     7a4:	02602025 	move	a0,s3
     7a8:	e7b20014 	swc1	$f18,20(sp)
     7ac:	c624002c 	lwc1	$f4,44(s1)
     7b0:	afaf0028 	sw	t7,40(sp)
     7b4:	afa00024 	sw	zero,36(sp)
     7b8:	afae0020 	sw	t6,32(sp)
     7bc:	afa0001c 	sw	zero,28(sp)
     7c0:	02202825 	move	a1,s1
     7c4:	02803025 	move	a2,s4
     7c8:	2407006d 	li	a3,109
     7cc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     7d0:	e7a40018 	swc1	$f4,24(sp)
     7d4:	26100001 	addiu	s0,s0,1
     7d8:	00108400 	sll	s0,s0,0x10
     7dc:	00108403 	sra	s0,s0,0x10
     7e0:	2a010008 	slti	at,s0,8
     7e4:	5420ffea 	bnezl	at,790 <func_80A0F6F8+0x2f8>
     7e8:	c6300024 	lwc1	$f16,36(s1)
     7ec:	86220150 	lh	v0,336(s1)
     7f0:	54400004 	bnezl	v0,804 <func_80A0F6F8+0x36c>
     7f4:	02202025 	move	a0,s1
     7f8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     7fc:	02202025 	move	a0,s1
     800:	02202025 	move	a0,s1
     804:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     808:	8e25016c 	lw	a1,364(s1)
     80c:	8fbf0054 	lw	ra,84(sp)
     810:	d7b40038 	ldc1	$f20,56(sp)
     814:	8fb00040 	lw	s0,64(sp)
     818:	8fb10044 	lw	s1,68(sp)
     81c:	8fb20048 	lw	s2,72(sp)
     820:	8fb3004c 	lw	s3,76(sp)
     824:	8fb40050 	lw	s4,80(sp)
     828:	03e00008 	jr	ra
     82c:	27bd0090 	addiu	sp,sp,144

00000830 <func_80A0FA90>:
     830:	27bdffe0 	addiu	sp,sp,-32
     834:	afb00018 	sw	s0,24(sp)
     838:	00808025 	move	s0,a0
     83c:	afbf001c 	sw	ra,28(sp)
     840:	3c040000 	lui	a0,0x0
     844:	afa50024 	sw	a1,36(sp)
     848:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     84c:	24840028 	addiu	a0,a0,40
     850:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     854:	00000000 	nop
     858:	3c01457a 	lui	at,0x457a
     85c:	44812000 	mtc1	at,$f4
     860:	860e00b4 	lh	t6,180(s0)
     864:	86020158 	lh	v0,344(s0)
     868:	46040182 	mul.s	$f6,$f0,$f4
     86c:	24010001 	li	at,1
     870:	240b0001 	li	t3,1
     874:	4600320d 	trunc.w.s	$f8,$f6
     878:	44084000 	mfc1	t0,$f8
     87c:	00000000 	nop
     880:	01c84821 	addu	t1,t6,t0
     884:	252a4000 	addiu	t2,t1,16384
     888:	10400007 	beqz	v0,8a8 <func_80A0FA90+0x78>
     88c:	a60a00b4 	sh	t2,180(s0)
     890:	10410010 	beq	v0,at,8d4 <func_80A0FA90+0xa4>
     894:	24010002 	li	at,2
     898:	10410036 	beq	v0,at,974 <func_80A0FA90+0x144>
     89c:	2604016c 	addiu	a0,s0,364
     8a0:	1000003e 	b	99c <func_80A0FA90+0x16c>
     8a4:	c600016c 	lwc1	$f0,364(s0)
     8a8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     8ac:	a60b0158 	sh	t3,344(s0)
     8b0:	3c0140e0 	lui	at,0x40e0
     8b4:	44815000 	mtc1	at,$f10
     8b8:	00000000 	nop
     8bc:	460a0402 	mul.s	$f16,$f0,$f10
     8c0:	4600848d 	trunc.w.s	$f18,$f16
     8c4:	44189000 	mfc1	t8,$f18
     8c8:	00000000 	nop
     8cc:	27190007 	addiu	t9,t8,7
     8d0:	a6190150 	sh	t9,336(s0)
     8d4:	3c053fd9 	lui	a1,0x3fd9
     8d8:	3c073eae 	lui	a3,0x3eae
     8dc:	34e7147b 	ori	a3,a3,0x147b
     8e0:	34a5999a 	ori	a1,a1,0x999a
     8e4:	2604016c 	addiu	a0,s0,364
     8e8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     8ec:	3c063f80 	lui	a2,0x3f80
     8f0:	860e0150 	lh	t6,336(s0)
     8f4:	24080002 	li	t0,2
     8f8:	2409000a 	li	t1,10
     8fc:	15c0001b 	bnez	t6,96c <func_80A0FA90+0x13c>
     900:	00000000 	nop
     904:	a6080158 	sh	t0,344(s0)
     908:	a6090150 	sh	t1,336(s0)
     90c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     910:	860400b6 	lh	a0,182(s0)
     914:	3c01c348 	lui	at,0xc348
     918:	44812000 	mtc1	at,$f4
     91c:	c608016c 	lwc1	$f8,364(s0)
     920:	c610002c 	lwc1	$f16,44(s0)
     924:	46040182 	mul.s	$f6,$f0,$f4
     928:	860400b6 	lh	a0,182(s0)
     92c:	46083282 	mul.s	$f10,$f6,$f8
     930:	460a8480 	add.s	$f18,$f16,$f10
     934:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     938:	e612002c 	swc1	$f18,44(s0)
     93c:	3c014348 	lui	at,0x4348
     940:	44812000 	mtc1	at,$f4
     944:	c608016c 	lwc1	$f8,364(s0)
     948:	c60a0024 	lwc1	$f10,36(s0)
     94c:	46040182 	mul.s	$f6,$f0,$f4
     950:	860a00b6 	lh	t2,182(s0)
     954:	34018000 	li	at,0x8000
     958:	01415821 	addu	t3,t2,at
     95c:	a60b00b6 	sh	t3,182(s0)
     960:	46083402 	mul.s	$f16,$f6,$f8
     964:	46105480 	add.s	$f18,$f10,$f16
     968:	e6120024 	swc1	$f18,36(s0)
     96c:	1000000b 	b	99c <func_80A0FA90+0x16c>
     970:	c600016c 	lwc1	$f0,364(s0)
     974:	3c063eae 	lui	a2,0x3eae
     978:	34c6147b 	ori	a2,a2,0x147b
     97c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     980:	3c053f80 	lui	a1,0x3f80
     984:	860c0150 	lh	t4,336(s0)
     988:	55800004 	bnezl	t4,99c <func_80A0FA90+0x16c>
     98c:	c600016c 	lwc1	$f0,364(s0)
     990:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     994:	02002025 	move	a0,s0
     998:	c600016c 	lwc1	$f0,364(s0)
     99c:	44050000 	mfc1	a1,$f0
     9a0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     9a4:	02002025 	move	a0,s0
     9a8:	3c013f80 	lui	at,0x3f80
     9ac:	44810000 	mtc1	at,$f0
     9b0:	c6040050 	lwc1	$f4,80(s0)
     9b4:	3c040000 	lui	a0,0x0
     9b8:	4604003c 	c.lt.s	$f0,$f4
     9bc:	00000000 	nop
     9c0:	45000002 	bc1f	9cc <func_80A0FA90+0x19c>
     9c4:	00000000 	nop
     9c8:	e6000050 	swc1	$f0,80(s0)
     9cc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     9d0:	24840034 	addiu	a0,a0,52
     9d4:	8fbf001c 	lw	ra,28(sp)
     9d8:	8fb00018 	lw	s0,24(sp)
     9dc:	27bd0020 	addiu	sp,sp,32
     9e0:	03e00008 	jr	ra
     9e4:	00000000 	nop

000009e8 <func_80A0FC48>:
     9e8:	27bdffc0 	addiu	sp,sp,-64
     9ec:	afbf0024 	sw	ra,36(sp)
     9f0:	afb10020 	sw	s1,32(sp)
     9f4:	afb0001c 	sw	s0,28(sp)
     9f8:	8cae1c44 	lw	t6,7236(a1)
     9fc:	00a08825 	move	s1,a1
     a00:	00808025 	move	s0,a0
     a04:	afae003c 	sw	t6,60(sp)
     a08:	908201c0 	lbu	v0,448(a0)
     a0c:	240538a8 	li	a1,14504
     a10:	304f0002 	andi	t7,v0,0x2
     a14:	11e00003 	beqz	t7,a24 <func_80A0FC48+0x3c>
     a18:	3058fffd 	andi	t8,v0,0xfffd
     a1c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     a20:	a09801c0 	sb	t8,448(a0)
     a24:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     a28:	00000000 	nop
     a2c:	3c013f00 	lui	at,0x3f00
     a30:	44812000 	mtc1	at,$f4
     a34:	00000000 	nop
     a38:	4604003c 	c.lt.s	$f0,$f4
     a3c:	00000000 	nop
     a40:	45000012 	bc1f	a8c <func_80A0FC48+0xa4>
     a44:	00000000 	nop
     a48:	8e080024 	lw	t0,36(s0)
     a4c:	27a60030 	addiu	a2,sp,48
     a50:	3c0141a0 	lui	at,0x41a0
     a54:	acc80000 	sw	t0,0(a2)
     a58:	8e190028 	lw	t9,40(s0)
     a5c:	44814000 	mtc1	at,$f8
     a60:	02202025 	move	a0,s1
     a64:	acd90004 	sw	t9,4(a2)
     a68:	8e08002c 	lw	t0,44(s0)
     a6c:	02002825 	move	a1,s0
     a70:	240700c8 	li	a3,200
     a74:	acc80008 	sw	t0,8(a2)
     a78:	c7a60034 	lwc1	$f6,52(sp)
     a7c:	afa00010 	sw	zero,16(sp)
     a80:	46083281 	sub.s	$f10,$f6,$f8
     a84:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     a88:	e7aa0034 	swc1	$f10,52(sp)
     a8c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     a90:	02002025 	move	a0,s0
     a94:	260601b0 	addiu	a2,s0,432
     a98:	00c02825 	move	a1,a2
     a9c:	afa6002c 	sw	a2,44(sp)
     aa0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     aa4:	02002025 	move	a0,s0
     aa8:	8fa9003c 	lw	t1,60(sp)
     aac:	3c010001 	lui	at,0x1
     ab0:	8fa6002c 	lw	a2,44(sp)
     ab4:	812a0a78 	lb	t2,2680(t1)
     ab8:	34211e60 	ori	at,at,0x1e60
     abc:	02202025 	move	a0,s1
     ac0:	55400004 	bnezl	t2,ad4 <func_80A0FC48+0xec>
     ac4:	3c014248 	lui	at,0x4248
     ac8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     acc:	02212821 	addu	a1,s1,at
     ad0:	3c014248 	lui	at,0x4248
     ad4:	44810000 	mtc1	at,$f0
     ad8:	3c0142c8 	lui	at,0x42c8
     adc:	44818000 	mtc1	at,$f16
     ae0:	240b0001 	li	t3,1
     ae4:	44060000 	mfc1	a2,$f0
     ae8:	44070000 	mfc1	a3,$f0
     aec:	afab0014 	sw	t3,20(sp)
     af0:	02202025 	move	a0,s1
     af4:	02002825 	move	a1,s0
     af8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     afc:	e7b00010 	swc1	$f16,16(sp)
     b00:	960c0088 	lhu	t4,136(s0)
     b04:	318d0008 	andi	t5,t4,0x8
     b08:	51a00004 	beqzl	t5,b1c <func_80A0FC48+0x134>
     b0c:	8fbf0024 	lw	ra,36(sp)
     b10:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     b14:	02002025 	move	a0,s0
     b18:	8fbf0024 	lw	ra,36(sp)
     b1c:	8fb0001c 	lw	s0,28(sp)
     b20:	8fb10020 	lw	s1,32(sp)
     b24:	03e00008 	jr	ra
     b28:	27bd0040 	addiu	sp,sp,64

00000b2c <func_80A0FD8C>:
     b2c:	27bdffd0 	addiu	sp,sp,-48
     b30:	afbf001c 	sw	ra,28(sp)
     b34:	afb10018 	sw	s1,24(sp)
     b38:	afb00014 	sw	s0,20(sp)
     b3c:	8cae1c44 	lw	t6,7236(a1)
     b40:	3c010001 	lui	at,0x1
     b44:	24080001 	li	t0,1
     b48:	00250821 	addu	at,at,a1
     b4c:	afae002c 	sw	t6,44(sp)
     b50:	a0280b05 	sb	t0,2821(at)
     b54:	848f00b6 	lh	t7,182(a0)
     b58:	84820152 	lh	v0,338(a0)
     b5c:	24010031 	li	at,49
     b60:	25f81000 	addiu	t8,t7,4096
     b64:	00808025 	move	s0,a0
     b68:	00a08825 	move	s1,a1
     b6c:	14410009 	bne	v0,at,b94 <func_80A0FD8C+0x68>
     b70:	a49800b6 	sh	t8,182(a0)
     b74:	3c010001 	lui	at,0x1
     b78:	00250821 	addu	at,at,a1
     b7c:	a0280ae3 	sb	t0,2787(at)
     b80:	3c010001 	lui	at,0x1
     b84:	00250821 	addu	at,at,a1
     b88:	241900ff 	li	t9,255
     b8c:	a4390afa 	sh	t9,2810(at)
     b90:	84820152 	lh	v0,338(a0)
     b94:	2401001f 	li	at,31
     b98:	14410008 	bne	v0,at,bbc <func_80A0FD8C+0x90>
     b9c:	24090014 	li	t1,20
     ba0:	3c010001 	lui	at,0x1
     ba4:	00310821 	addu	at,at,s1
     ba8:	a0200ae3 	sb	zero,2787(at)
     bac:	3c010001 	lui	at,0x1
     bb0:	00310821 	addu	at,at,s1
     bb4:	a4290afa 	sh	t1,2810(at)
     bb8:	86020152 	lh	v0,338(s0)
     bbc:	28410030 	slti	at,v0,48
     bc0:	1420000f 	bnez	at,c00 <func_80A0FD8C+0xd4>
     bc4:	240300ff 	li	v1,255
     bc8:	3c010001 	lui	at,0x1
     bcc:	02211021 	addu	v0,s1,at
     bd0:	a0430b08 	sb	v1,2824(v0)
     bd4:	a0430b07 	sb	v1,2823(v0)
     bd8:	a0430b06 	sb	v1,2822(v0)
     bdc:	860b0150 	lh	t3,336(s0)
     be0:	240d0046 	li	t5,70
     be4:	316c0001 	andi	t4,t3,0x1
     be8:	11800003 	beqz	t4,bf8 <func_80A0FD8C+0xcc>
     bec:	00000000 	nop
     bf0:	10000006 	b	c0c <func_80A0FD8C+0xe0>
     bf4:	a04d0b09 	sb	t5,2825(v0)
     bf8:	10000004 	b	c0c <func_80A0FD8C+0xe0>
     bfc:	a0400b09 	sb	zero,2825(v0)
     c00:	3c010001 	lui	at,0x1
     c04:	00310821 	addu	at,at,s1
     c08:	a0200b09 	sb	zero,2825(at)
     c0c:	860e0150 	lh	t6,336(s0)
     c10:	2604016c 	addiu	a0,s0,364
     c14:	3c063f00 	lui	a2,0x3f00
     c18:	29c10015 	slti	at,t6,21
     c1c:	1020000b 	beqz	at,c4c <func_80A0FD8C+0x120>
     c20:	3c074040 	lui	a3,0x4040
     c24:	26040160 	addiu	a0,s0,352
     c28:	3c053f80 	lui	a1,0x3f80
     c2c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     c30:	3c064234 	lui	a2,0x4234
     c34:	2604016c 	addiu	a0,s0,364
     c38:	3c053f80 	lui	a1,0x3f80
     c3c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     c40:	3c063f00 	lui	a2,0x3f00
     c44:	10000004 	b	c58 <func_80A0FD8C+0x12c>
     c48:	02002025 	move	a0,s0
     c4c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     c50:	8e05018c 	lw	a1,396(s0)
     c54:	02002025 	move	a0,s0
     c58:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     c5c:	8e05016c 	lw	a1,364(s0)
     c60:	3c014040 	lui	at,0x4040
     c64:	44812000 	mtc1	at,$f4
     c68:	c606018c 	lwc1	$f6,396(s0)
     c6c:	260601b0 	addiu	a2,s0,432
     c70:	00c02825 	move	a1,a2
     c74:	4606203c 	c.lt.s	$f4,$f6
     c78:	02002025 	move	a0,s0
     c7c:	4502000e 	bc1fl	cb8 <func_80A0FD8C+0x18c>
     c80:	86190150 	lh	t9,336(s0)
     c84:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     c88:	afa60024 	sw	a2,36(sp)
     c8c:	8faf002c 	lw	t7,44(sp)
     c90:	3c010001 	lui	at,0x1
     c94:	8fa60024 	lw	a2,36(sp)
     c98:	81f80a78 	lb	t8,2680(t7)
     c9c:	34211e60 	ori	at,at,0x1e60
     ca0:	02202025 	move	a0,s1
     ca4:	57000004 	bnezl	t8,cb8 <func_80A0FD8C+0x18c>
     ca8:	86190150 	lh	t9,336(s0)
     cac:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     cb0:	02212821 	addu	a1,s1,at
     cb4:	86190150 	lh	t9,336(s0)
     cb8:	57200007 	bnezl	t9,cd8 <func_80A0FD8C+0x1ac>
     cbc:	860201fe 	lh	v0,510(s0)
     cc0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     cc4:	02002025 	move	a0,s0
     cc8:	3c010001 	lui	at,0x1
     ccc:	00310821 	addu	at,at,s1
     cd0:	a0200b05 	sb	zero,2821(at)
     cd4:	860201fe 	lh	v0,510(s0)
     cd8:	26040200 	addiu	a0,s0,512
     cdc:	3c053f80 	lui	a1,0x3f80
     ce0:	1040000c 	beqz	v0,d14 <func_80A0FD8C+0x1e8>
     ce4:	2449ffff 	addiu	t1,v0,-1
     ce8:	240a0001 	li	t2,1
     cec:	3c063e99 	lui	a2,0x3e99
     cf0:	a60901fe 	sh	t1,510(s0)
     cf4:	a20a01fc 	sb	t2,508(s0)
     cf8:	34c6999a 	ori	a2,a2,0x999a
     cfc:	26040200 	addiu	a0,s0,512
     d00:	3c054220 	lui	a1,0x4220
     d04:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     d08:	3c074120 	lui	a3,0x4120
     d0c:	1000000b 	b	d3c <func_80A0FD8C+0x210>
     d10:	920b01fc 	lbu	t3,508(s0)
     d14:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     d18:	3c0640a0 	lui	a2,0x40a0
     d1c:	44804000 	mtc1	zero,$f8
     d20:	c60a0200 	lwc1	$f10,512(s0)
     d24:	460a4032 	c.eq.s	$f8,$f10
     d28:	00000000 	nop
     d2c:	45020003 	bc1fl	d3c <func_80A0FD8C+0x210>
     d30:	920b01fc 	lbu	t3,508(s0)
     d34:	a20001fc 	sb	zero,508(s0)
     d38:	920b01fc 	lbu	t3,508(s0)
     d3c:	3c010000 	lui	at,0x0
     d40:	3c0c0000 	lui	t4,0x0
     d44:	a02b0000 	sb	t3,0(at)
     d48:	8e0e0024 	lw	t6,36(s0)
     d4c:	258c0000 	addiu	t4,t4,0
     d50:	3c010000 	lui	at,0x0
     d54:	ad8e0000 	sw	t6,0(t4)
     d58:	8e0d0028 	lw	t5,40(s0)
     d5c:	ad8d0004 	sw	t5,4(t4)
     d60:	8e0e002c 	lw	t6,44(s0)
     d64:	ad8e0008 	sw	t6,8(t4)
     d68:	c6100200 	lwc1	$f16,512(s0)
     d6c:	8fbf001c 	lw	ra,28(sp)
     d70:	8fb00014 	lw	s0,20(sp)
     d74:	4600848d 	trunc.w.s	$f18,$f16
     d78:	8fb10018 	lw	s1,24(sp)
     d7c:	27bd0030 	addiu	sp,sp,48
     d80:	44189000 	mfc1	t8,$f18
     d84:	00000000 	nop
     d88:	a4380000 	sh	t8,0(at)
     d8c:	3c014120 	lui	at,0x4120
     d90:	44812000 	mtc1	at,$f4
     d94:	3c010000 	lui	at,0x0
     d98:	e4240000 	swc1	$f4,0(at)
     d9c:	3c010000 	lui	at,0x0
     da0:	03e00008 	jr	ra
     da4:	a4200000 	sh	zero,0(at)

00000da8 <func_80A10008>:
     da8:	27bdff80 	addiu	sp,sp,-128
     dac:	afb10038 	sw	s1,56(sp)
     db0:	00808825 	move	s1,a0
     db4:	afbf004c 	sw	ra,76(sp)
     db8:	afb50048 	sw	s5,72(sp)
     dbc:	3c040000 	lui	a0,0x0
     dc0:	00a0a825 	move	s5,a1
     dc4:	afb40044 	sw	s4,68(sp)
     dc8:	afb30040 	sw	s3,64(sp)
     dcc:	afb2003c 	sw	s2,60(sp)
     dd0:	afb00034 	sw	s0,52(sp)
     dd4:	f7b80028 	sdc1	$f24,40(sp)
     dd8:	f7b60020 	sdc1	$f22,32(sp)
     ddc:	f7b40018 	sdc1	$f20,24(sp)
     de0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     de4:	24840040 	addiu	a0,a0,64
     de8:	862e0156 	lh	t6,342(s1)
     dec:	8e300118 	lw	s0,280(s1)
     df0:	3c0540c0 	lui	a1,0x40c0
     df4:	31cf0001 	andi	t7,t6,0x1
     df8:	11e00005 	beqz	t7,e10 <func_80A10008+0x68>
     dfc:	02202025 	move	a0,s1
     e00:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     e04:	02202025 	move	a0,s1
     e08:	10000004 	b	e1c <func_80A10008+0x74>
     e0c:	8e190200 	lw	t9,512(s0)
     e10:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     e14:	3c0540a8 	lui	a1,0x40a8
     e18:	8e190200 	lw	t9,512(s0)
     e1c:	ae390024 	sw	t9,36(s1)
     e20:	8e180204 	lw	t8,516(s0)
     e24:	ae380028 	sw	t8,40(s1)
     e28:	8e190208 	lw	t9,520(s0)
     e2c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     e30:	ae39002c 	sw	t9,44(s1)
     e34:	3c010000 	lui	at,0x0
     e38:	c4240194 	lwc1	$f4,404(at)
     e3c:	862800b8 	lh	t0,184(s1)
     e40:	3c040000 	lui	a0,0x0
     e44:	46040182 	mul.s	$f6,$f0,$f4
     e48:	24840050 	addiu	a0,a0,80
     e4c:	4600320d 	trunc.w.s	$f8,$f6
     e50:	440c4000 	mfc1	t4,$f8
     e54:	00000000 	nop
     e58:	010c6821 	addu	t5,t0,t4
     e5c:	25ae4000 	addiu	t6,t5,16384
     e60:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     e64:	a62e00b8 	sh	t6,184(s1)
     e68:	862f0158 	lh	t7,344(s1)
     e6c:	3c180000 	lui	t8,0x0
     e70:	27180000 	addiu	t8,t8,0
     e74:	55e00042 	bnezl	t7,f80 <func_80A10008+0x1d8>
     e78:	86390150 	lh	t9,336(s1)
     e7c:	8f090000 	lw	t1,0(t8)
     e80:	27b20060 	addiu	s2,sp,96
     e84:	3c0a0000 	lui	t2,0x0
     e88:	ae490000 	sw	t1,0(s2)
     e8c:	8f190004 	lw	t9,4(t8)
     e90:	254a0000 	addiu	t2,t2,0
     e94:	27b30054 	addiu	s3,sp,84
     e98:	ae590004 	sw	t9,4(s2)
     e9c:	8f090008 	lw	t1,8(t8)
     ea0:	3c040000 	lui	a0,0x0
     ea4:	24840060 	addiu	a0,a0,96
     ea8:	ae490008 	sw	t1,8(s2)
     eac:	8d480000 	lw	t0,0(t2)
     eb0:	ae680000 	sw	t0,0(s3)
     eb4:	8d4b0004 	lw	t3,4(t2)
     eb8:	ae6b0004 	sw	t3,4(s3)
     ebc:	8d480008 	lw	t0,8(t2)
     ec0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     ec4:	ae680008 	sw	t0,8(s3)
     ec8:	3c0142a0 	lui	at,0x42a0
     ecc:	4481c000 	mtc1	at,$f24
     ed0:	3c010000 	lui	at,0x0
     ed4:	c4360198 	lwc1	$f22,408(at)
     ed8:	3c0141a0 	lui	at,0x41a0
     edc:	4481a000 	mtc1	at,$f20
     ee0:	00008025 	move	s0,zero
     ee4:	27b4006c 	addiu	s4,sp,108
     ee8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     eec:	4600a306 	mov.s	$f12,$f20
     ef0:	c62a0024 	lwc1	$f10,36(s1)
     ef4:	4600a306 	mov.s	$f12,$f20
     ef8:	460a0400 	add.s	$f16,$f0,$f10
     efc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     f00:	e7b0006c 	swc1	$f16,108(sp)
     f04:	c6320028 	lwc1	$f18,40(s1)
     f08:	4600a306 	mov.s	$f12,$f20
     f0c:	46120100 	add.s	$f4,$f0,$f18
     f10:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     f14:	e7a40070 	swc1	$f4,112(sp)
     f18:	c626002c 	lwc1	$f6,44(s1)
     f1c:	e7b60058 	swc1	$f22,88(sp)
     f20:	46060200 	add.s	$f8,$f0,$f6
     f24:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     f28:	e7a80074 	swc1	$f8,116(sp)
     f2c:	46180282 	mul.s	$f10,$f0,$f24
     f30:	02a02025 	move	a0,s5
     f34:	02802825 	move	a1,s4
     f38:	02403025 	move	a2,s2
     f3c:	02603825 	move	a3,s3
     f40:	afa00014 	sw	zero,20(sp)
     f44:	4600540d 	trunc.w.s	$f16,$f10
     f48:	440d8000 	mfc1	t5,$f16
     f4c:	00000000 	nop
     f50:	000d7400 	sll	t6,t5,0x10
     f54:	000e7c03 	sra	t7,t6,0x10
     f58:	25f80096 	addiu	t8,t7,150
     f5c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     f60:	afb80010 	sw	t8,16(sp)
     f64:	26100001 	addiu	s0,s0,1
     f68:	00108400 	sll	s0,s0,0x10
     f6c:	00108403 	sra	s0,s0,0x10
     f70:	2a010002 	slti	at,s0,2
     f74:	1420ffdc 	bnez	at,ee8 <func_80A10008+0x140>
     f78:	00000000 	nop
     f7c:	86390150 	lh	t9,336(s1)
     f80:	57200004 	bnezl	t9,f94 <func_80A10008+0x1ec>
     f84:	8fbf004c 	lw	ra,76(sp)
     f88:	0c000000 	jal	0 <EnFhgFire_SetupAction>
     f8c:	02202025 	move	a0,s1
     f90:	8fbf004c 	lw	ra,76(sp)
     f94:	d7b40018 	ldc1	$f20,24(sp)
     f98:	d7b60020 	ldc1	$f22,32(sp)
     f9c:	d7b80028 	ldc1	$f24,40(sp)
     fa0:	8fb00034 	lw	s0,52(sp)
     fa4:	8fb10038 	lw	s1,56(sp)
     fa8:	8fb2003c 	lw	s2,60(sp)
     fac:	8fb30040 	lw	s3,64(sp)
     fb0:	8fb40044 	lw	s4,68(sp)
     fb4:	8fb50048 	lw	s5,72(sp)
     fb8:	03e00008 	jr	ra
     fbc:	27bd0080 	addiu	sp,sp,128

00000fc0 <func_80A10220>:
     fc0:	27bdfef0 	addiu	sp,sp,-272
     fc4:	afbf0044 	sw	ra,68(sp)
     fc8:	afb10040 	sw	s1,64(sp)
     fcc:	afb0003c 	sw	s0,60(sp)
     fd0:	f7b40030 	sdc1	$f20,48(sp)
     fd4:	a3a000f3 	sb	zero,243(sp)
     fd8:	8482015c 	lh	v0,348(a0)
     fdc:	00808025 	move	s0,a0
     fe0:	00a08825 	move	s1,a1
     fe4:	1040000a 	beqz	v0,1010 <func_80A10220+0x50>
     fe8:	8ca31c44 	lw	v1,7236(a1)
     fec:	244effff 	addiu	t6,v0,-1
     ff0:	a48e015c 	sh	t6,348(a0)
     ff4:	848f015c 	lh	t7,348(a0)
     ff8:	55e0032a 	bnezl	t7,1ca4 <func_80A10220+0xce4>
     ffc:	8fbf0044 	lw	ra,68(sp)
    1000:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1004:	00000000 	nop
    1008:	10000326 	b	1ca4 <func_80A10220+0xce4>
    100c:	8fbf0044 	lw	ra,68(sp)
    1010:	8e020118 	lw	v0,280(s0)
    1014:	c6000024 	lwc1	$f0,36(s0)
    1018:	3c014220 	lui	at,0x4220
    101c:	c444020c 	lwc1	$f4,524(v0)
    1020:	02002025 	move	a0,s0
    1024:	46002181 	sub.s	$f6,$f4,$f0
    1028:	e7a600fc 	swc1	$f6,252(sp)
    102c:	c6020028 	lwc1	$f2,40(s0)
    1030:	c4480210 	lwc1	$f8,528(v0)
    1034:	46024281 	sub.s	$f10,$f8,$f2
    1038:	e7aa00f8 	swc1	$f10,248(sp)
    103c:	c60c002c 	lwc1	$f12,44(s0)
    1040:	c4440214 	lwc1	$f4,532(v0)
    1044:	460c2181 	sub.s	$f6,$f4,$f12
    1048:	e7a600f4 	swc1	$f6,244(sp)
    104c:	c4680024 	lwc1	$f8,36(v1)
    1050:	44813000 	mtc1	at,$f6
    1054:	46004281 	sub.s	$f10,$f8,$f0
    1058:	e7aa010c 	swc1	$f10,268(sp)
    105c:	c4640028 	lwc1	$f4,40(v1)
    1060:	46062200 	add.s	$f8,$f4,$f6
    1064:	46024281 	sub.s	$f10,$f8,$f2
    1068:	e7aa0108 	swc1	$f10,264(sp)
    106c:	c464002c 	lwc1	$f4,44(v1)
    1070:	afa300ec 	sw	v1,236(sp)
    1074:	afa200e4 	sw	v0,228(sp)
    1078:	460c2181 	sub.s	$f6,$f4,$f12
    107c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1080:	e7a60104 	swc1	$f6,260(sp)
    1084:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1088:	02002025 	move	a0,s0
    108c:	86180156 	lh	t8,342(s0)
    1090:	3c0540c0 	lui	a1,0x40c0
    1094:	02002025 	move	a0,s0
    1098:	33190001 	andi	t9,t8,0x1
    109c:	13200005 	beqz	t9,10b4 <func_80A10220+0xf4>
    10a0:	00000000 	nop
    10a4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    10a8:	02002025 	move	a0,s0
    10ac:	10000003 	b	10bc <func_80A10220+0xfc>
    10b0:	00000000 	nop
    10b4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    10b8:	3c0540a8 	lui	a1,0x40a8
    10bc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    10c0:	00000000 	nop
    10c4:	3c010000 	lui	at,0x0
    10c8:	c4280000 	lwc1	$f8,0(at)
    10cc:	860800b8 	lh	t0,184(s0)
    10d0:	3c180000 	lui	t8,0x0
    10d4:	46080282 	mul.s	$f10,$f0,$f8
    10d8:	27180000 	addiu	t8,t8,0
    10dc:	27af00c8 	addiu	t7,sp,200
    10e0:	3c0b0000 	lui	t3,0x0
    10e4:	256b0000 	addiu	t3,t3,0
    10e8:	27aa00bc 	addiu	t2,sp,188
    10ec:	3c0141a0 	lui	at,0x41a0
    10f0:	4600510d 	trunc.w.s	$f4,$f10
    10f4:	4481a000 	mtc1	at,$f20
    10f8:	00001025 	move	v0,zero
    10fc:	440c2000 	mfc1	t4,$f4
    1100:	00000000 	nop
    1104:	010c6821 	addu	t5,t0,t4
    1108:	25ae4000 	addiu	t6,t5,16384
    110c:	a60e00b8 	sh	t6,184(s0)
    1110:	8f090000 	lw	t1,0(t8)
    1114:	8f190004 	lw	t9,4(t8)
    1118:	ade90000 	sw	t1,0(t7)
    111c:	8f090008 	lw	t1,8(t8)
    1120:	adf90004 	sw	t9,4(t7)
    1124:	ade90008 	sw	t1,8(t7)
    1128:	8d6c0000 	lw	t4,0(t3)
    112c:	8d680004 	lw	t0,4(t3)
    1130:	ad4c0000 	sw	t4,0(t2)
    1134:	8d6c0008 	lw	t4,8(t3)
    1138:	ad480004 	sw	t0,4(t2)
    113c:	ad4c0008 	sw	t4,8(t2)
    1140:	860d0158 	lh	t5,344(s0)
    1144:	59a00003 	blezl	t5,1154 <func_80A10220+0x194>
    1148:	a7a000e0 	sh	zero,224(sp)
    114c:	24020001 	li	v0,1
    1150:	a7a000e0 	sh	zero,224(sp)
    1154:	a3a200e3 	sb	v0,227(sp)
    1158:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    115c:	4600a306 	mov.s	$f12,$f20
    1160:	c6060024 	lwc1	$f6,36(s0)
    1164:	4600a306 	mov.s	$f12,$f20
    1168:	46060200 	add.s	$f8,$f0,$f6
    116c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1170:	e7a800d4 	swc1	$f8,212(sp)
    1174:	c60a0028 	lwc1	$f10,40(s0)
    1178:	4600a306 	mov.s	$f12,$f20
    117c:	460a0100 	add.s	$f4,$f0,$f10
    1180:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1184:	e7a400d8 	swc1	$f4,216(sp)
    1188:	c606002c 	lwc1	$f6,44(s0)
    118c:	3c010000 	lui	at,0x0
    1190:	c42a0000 	lwc1	$f10,0(at)
    1194:	46060200 	add.s	$f8,$f0,$f6
    1198:	e7aa00c0 	swc1	$f10,192(sp)
    119c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    11a0:	e7a800dc 	swc1	$f8,220(sp)
    11a4:	3c0142a0 	lui	at,0x42a0
    11a8:	44812000 	mtc1	at,$f4
    11ac:	93aa00e3 	lbu	t2,227(sp)
    11b0:	02202025 	move	a0,s1
    11b4:	46040182 	mul.s	$f6,$f0,$f4
    11b8:	27a500d4 	addiu	a1,sp,212
    11bc:	27a600c8 	addiu	a2,sp,200
    11c0:	27a700bc 	addiu	a3,sp,188
    11c4:	afaa0014 	sw	t2,20(sp)
    11c8:	4600320d 	trunc.w.s	$f8,$f6
    11cc:	440f4000 	mfc1	t7,$f8
    11d0:	00000000 	nop
    11d4:	000fc400 	sll	t8,t7,0x10
    11d8:	0018cc03 	sra	t9,t8,0x10
    11dc:	27290096 	addiu	t1,t9,150
    11e0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    11e4:	afa90010 	sw	t1,16(sp)
    11e8:	87a200e0 	lh	v0,224(sp)
    11ec:	24420001 	addiu	v0,v0,1
    11f0:	00021400 	sll	v0,v0,0x10
    11f4:	00021403 	sra	v0,v0,0x10
    11f8:	28410003 	slti	at,v0,3
    11fc:	1420ffd6 	bnez	at,1158 <func_80A10220+0x198>
    1200:	a7a200e0 	sh	v0,224(sp)
    1204:	86050158 	lh	a1,344(s0)
    1208:	24010001 	li	at,1
    120c:	8fab00ec 	lw	t3,236(sp)
    1210:	10a00008 	beqz	a1,1234 <func_80A10220+0x274>
    1214:	00a01025 	move	v0,a1
    1218:	10410118 	beq	v0,at,167c <func_80A10220+0x6bc>
    121c:	8fac00e4 	lw	t4,228(sp)
    1220:	24010002 	li	at,2
    1224:	5041019d 	beql	v0,at,189c <func_80A10220+0x8dc>
    1228:	860e0150 	lh	t6,336(s0)
    122c:	100001ee 	b	19e8 <func_80A10220+0xa28>
    1230:	00000000 	nop
    1234:	8d68067c 	lw	t0,1660(t3)
    1238:	8fae00e4 	lw	t6,228(sp)
    123c:	310c0002 	andi	t4,t0,0x2
    1240:	51800021 	beqzl	t4,12c8 <func_80A10220+0x308>
    1244:	c7a2010c 	lwc1	$f2,268(sp)
    1248:	85cf008a 	lh	t7,138(t6)
    124c:	856d00b6 	lh	t5,182(t3)
    1250:	34018000 	li	at,0x8000
    1254:	01e14821 	addu	t1,t7,at
    1258:	01a91023 	subu	v0,t5,t1
    125c:	00021400 	sll	v0,v0,0x10
    1260:	00021403 	sra	v0,v0,0x10
    1264:	04400003 	bltz	v0,1274 <func_80A10220+0x2b4>
    1268:	00021823 	negu	v1,v0
    126c:	10000001 	b	1274 <func_80A10220+0x2b4>
    1270:	00401825 	move	v1,v0
    1274:	28612000 	slti	at,v1,8192
    1278:	10200012 	beqz	at,12c4 <func_80A10220+0x304>
    127c:	c7a2010c 	lwc1	$f2,268(sp)
    1280:	46021282 	mul.s	$f10,$f2,$f2
    1284:	c7ae0108 	lwc1	$f14,264(sp)
    1288:	c7ac0104 	lwc1	$f12,260(sp)
    128c:	3c0141c8 	lui	at,0x41c8
    1290:	460e7102 	mul.s	$f4,$f14,$f14
    1294:	240a0001 	li	t2,1
    1298:	460c6202 	mul.s	$f8,$f12,$f12
    129c:	46045180 	add.s	$f6,$f10,$f4
    12a0:	44815000 	mtc1	at,$f10
    12a4:	46083000 	add.s	$f0,$f6,$f8
    12a8:	46000004 	sqrt.s	$f0,$f0
    12ac:	460a003e 	c.le.s	$f0,$f10
    12b0:	00000000 	nop
    12b4:	45020004 	bc1fl	12c8 <func_80A10220+0x308>
    12b8:	c7a2010c 	lwc1	$f2,268(sp)
    12bc:	10000005 	b	12d4 <func_80A10220+0x314>
    12c0:	a3aa00f2 	sb	t2,242(sp)
    12c4:	c7a2010c 	lwc1	$f2,268(sp)
    12c8:	c7ac0104 	lwc1	$f12,260(sp)
    12cc:	c7ae0108 	lwc1	$f14,264(sp)
    12d0:	a3a000f2 	sb	zero,242(sp)
    12d4:	920801c1 	lbu	t0,449(s0)
    12d8:	93ab00f2 	lbu	t3,242(sp)
    12dc:	310c0002 	andi	t4,t0,0x2
    12e0:	55800004 	bnezl	t4,12f4 <func_80A10220+0x334>
    12e4:	8e0e01ec 	lw	t6,492(s0)
    12e8:	116000ba 	beqz	t3,15d4 <func_80A10220+0x614>
    12ec:	00000000 	nop
    12f0:	8e0e01ec 	lw	t6,492(s0)
    12f4:	3c180000 	lui	t8,0x0
    12f8:	27180000 	addiu	t8,t8,0
    12fc:	afae00b8 	sw	t6,184(sp)
    1300:	8f0d0000 	lw	t5,0(t8)
    1304:	27af009c 	addiu	t7,sp,156
    1308:	8f190004 	lw	t9,4(t8)
    130c:	aded0000 	sw	t5,0(t7)
    1310:	8f0d0008 	lw	t5,8(t8)
    1314:	adf90004 	sw	t9,4(t7)
    1318:	26090024 	addiu	t1,s0,36
    131c:	aded0008 	sw	t5,8(t7)
    1320:	afa90050 	sw	t1,80(sp)
    1324:	a7a000b6 	sh	zero,182(sp)
    1328:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    132c:	4600a306 	mov.s	$f12,$f20
    1330:	e7a000a8 	swc1	$f0,168(sp)
    1334:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1338:	4600a306 	mov.s	$f12,$f20
    133c:	e7a000ac 	swc1	$f0,172(sp)
    1340:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1344:	4600a306 	mov.s	$f12,$f20
    1348:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    134c:	e7a000b0 	swc1	$f0,176(sp)
    1350:	3c0141c8 	lui	at,0x41c8
    1354:	44812000 	mtc1	at,$f4
    1358:	02202025 	move	a0,s1
    135c:	8fa50050 	lw	a1,80(sp)
    1360:	46040182 	mul.s	$f6,$f0,$f4
    1364:	27a600a8 	addiu	a2,sp,168
    1368:	27a7009c 	addiu	a3,sp,156
    136c:	afa00014 	sw	zero,20(sp)
    1370:	4600320d 	trunc.w.s	$f8,$f6
    1374:	44084000 	mfc1	t0,$f8
    1378:	00000000 	nop
    137c:	00086400 	sll	t4,t0,0x10
    1380:	000c5c03 	sra	t3,t4,0x10
    1384:	256e0032 	addiu	t6,t3,50
    1388:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    138c:	afae0010 	sw	t6,16(sp)
    1390:	87a200b6 	lh	v0,182(sp)
    1394:	24420001 	addiu	v0,v0,1
    1398:	00021400 	sll	v0,v0,0x10
    139c:	00021403 	sra	v0,v0,0x10
    13a0:	2841001e 	slti	at,v0,30
    13a4:	1420ffe0 	bnez	at,1328 <func_80A10220+0x368>
    13a8:	a7a200b6 	sh	v0,182(sp)
    13ac:	93a200f2 	lbu	v0,242(sp)
    13b0:	8faf00b8 	lw	t7,184(sp)
    13b4:	8faa00e4 	lw	t2,228(sp)
    13b8:	54400019 	bnezl	v0,1420 <func_80A10220+0x460>
    13bc:	914801c9 	lbu	t0,457(t2)
    13c0:	8df80000 	lw	t8,0(t7)
    13c4:	3c070000 	lui	a3,0x0
    13c8:	24e70000 	addiu	a3,a3,0
    13cc:	0018cac0 	sll	t9,t8,0xb
    13d0:	07210012 	bgez	t9,141c <func_80A10220+0x45c>
    13d4:	240d0002 	li	t5,2
    13d8:	8fa500ec 	lw	a1,236(sp)
    13dc:	3c090000 	lui	t1,0x0
    13e0:	25290000 	addiu	t1,t1,0
    13e4:	a3ad00f3 	sb	t5,243(sp)
    13e8:	afa90014 	sw	t1,20(sp)
    13ec:	2404180c 	li	a0,6156
    13f0:	24060004 	li	a2,4
    13f4:	afa70010 	sw	a3,16(sp)
    13f8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    13fc:	24a500e4 	addiu	a1,a1,228
    1400:	c60c008c 	lwc1	$f12,140(s0)
    1404:	240500ff 	li	a1,255
    1408:	24060014 	li	a2,20
    140c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1410:	24070096 	li	a3,150
    1414:	1000006d 	b	15cc <func_80A10220+0x60c>
    1418:	00000000 	nop
    141c:	914801c9 	lbu	t0,457(t2)
    1420:	24010001 	li	at,1
    1424:	15010012 	bne	t0,at,1470 <func_80A10220+0x4b0>
    1428:	3c014600 	lui	at,0x4600
    142c:	44816000 	mtc1	at,$f12
    1430:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1434:	00000000 	nop
    1438:	4600028d 	trunc.w.s	$f10,$f0
    143c:	3c014600 	lui	at,0x4600
    1440:	44816000 	mtc1	at,$f12
    1444:	440b5000 	mfc1	t3,$f10
    1448:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    144c:	a7ab009a 	sh	t3,154(sp)
    1450:	4600010d 	trunc.w.s	$f4,$f0
    1454:	3c014170 	lui	at,0x4170
    1458:	44813000 	mtc1	at,$f6
    145c:	44032000 	mfc1	v1,$f4
    1460:	e6060068 	swc1	$f6,104(s0)
    1464:	00031c00 	sll	v1,v1,0x10
    1468:	10000025 	b	1500 <func_80A10220+0x540>
    146c:	00031c03 	sra	v1,v1,0x10
    1470:	a7a0009a 	sh	zero,154(sp)
    1474:	860f015a 	lh	t7,346(s0)
    1478:	00001825 	move	v1,zero
    147c:	25f80001 	addiu	t8,t7,1
    1480:	a618015a 	sh	t8,346(s0)
    1484:	8619015a 	lh	t9,346(s0)
    1488:	2b210004 	slti	at,t9,4
    148c:	1420000d 	bnez	at,14c4 <func_80A10220+0x504>
    1490:	00000000 	nop
    1494:	afa20050 	sw	v0,80(sp)
    1498:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    149c:	a7a00098 	sh	zero,152(sp)
    14a0:	3c013f00 	lui	at,0x3f00
    14a4:	44814000 	mtc1	at,$f8
    14a8:	8fa20050 	lw	v0,80(sp)
    14ac:	87a30098 	lh	v1,152(sp)
    14b0:	4608003c 	c.lt.s	$f0,$f8
    14b4:	240d0064 	li	t5,100
    14b8:	45000002 	bc1f	14c4 <func_80A10220+0x504>
    14bc:	00000000 	nop
    14c0:	a60d015a 	sh	t5,346(s0)
    14c4:	14400009 	bnez	v0,14ec <func_80A10220+0x52c>
    14c8:	8fa900ec 	lw	t1,236(sp)
    14cc:	812a0842 	lb	t2,2114(t1)
    14d0:	24080004 	li	t0,4
    14d4:	29410018 	slti	at,t2,24
    14d8:	54200005 	bnezl	at,14f0 <func_80A10220+0x530>
    14dc:	3c013f80 	lui	at,0x3f80
    14e0:	e6140068 	swc1	$f20,104(s0)
    14e4:	10000006 	b	1500 <func_80A10220+0x540>
    14e8:	a608015a 	sh	t0,346(s0)
    14ec:	3c013f80 	lui	at,0x3f80
    14f0:	44812000 	mtc1	at,$f4
    14f4:	c60a0068 	lwc1	$f10,104(s0)
    14f8:	46045180 	add.s	$f6,$f10,$f4
    14fc:	e6060068 	swc1	$f6,104(s0)
    1500:	c7ac00fc 	lwc1	$f12,252(sp)
    1504:	c7ae00f4 	lwc1	$f14,244(sp)
    1508:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    150c:	a7a30098 	sh	v1,152(sp)
    1510:	3c010000 	lui	at,0x0
    1514:	c4280000 	lwc1	$f8,0(at)
    1518:	87a30098 	lh	v1,152(sp)
    151c:	46080282 	mul.s	$f10,$f0,$f8
    1520:	4600510d 	trunc.w.s	$f4,$f10
    1524:	440f2000 	mfc1	t7,$f4
    1528:	00000000 	nop
    152c:	01e3c021 	addu	t8,t7,v1
    1530:	a6180032 	sh	t8,50(s0)
    1534:	c7a600fc 	lwc1	$f6,252(sp)
    1538:	c7aa00f4 	lwc1	$f10,244(sp)
    153c:	c7ac00f8 	lwc1	$f12,248(sp)
    1540:	46063202 	mul.s	$f8,$f6,$f6
    1544:	00000000 	nop
    1548:	460a5102 	mul.s	$f4,$f10,$f10
    154c:	46044000 	add.s	$f0,$f8,$f4
    1550:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1554:	46000384 	sqrt.s	$f14,$f0
    1558:	3c010000 	lui	at,0x0
    155c:	c4260000 	lwc1	$f6,0(at)
    1560:	87a8009a 	lh	t0,154(sp)
    1564:	240b0001 	li	t3,1
    1568:	46060282 	mul.s	$f10,$f0,$f6
    156c:	240e0002 	li	t6,2
    1570:	a60b0158 	sh	t3,344(s0)
    1574:	a60e0152 	sh	t6,338(s0)
    1578:	3c070000 	lui	a3,0x0
    157c:	3c0f0000 	lui	t7,0x0
    1580:	24e70000 	addiu	a3,a3,0
    1584:	4600520d 	trunc.w.s	$f8,$f10
    1588:	25ef0000 	addiu	t7,t7,0
    158c:	2404182a 	li	a0,6186
    1590:	24060004 	li	a2,4
    1594:	440a4000 	mfc1	t2,$f8
    1598:	00000000 	nop
    159c:	01486021 	addu	t4,t2,t0
    15a0:	a60c0030 	sh	t4,48(s0)
    15a4:	8fa500ec 	lw	a1,236(sp)
    15a8:	afaf0014 	sw	t7,20(sp)
    15ac:	afa70010 	sw	a3,16(sp)
    15b0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    15b4:	24a500e4 	addiu	a1,a1,228
    15b8:	c60c008c 	lwc1	$f12,140(s0)
    15bc:	240500b4 	li	a1,180
    15c0:	24060014 	li	a2,20
    15c4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    15c8:	24070064 	li	a3,100
    15cc:	10000106 	b	19e8 <func_80A10220+0xa28>
    15d0:	86050158 	lh	a1,344(s0)
    15d4:	46021102 	mul.s	$f4,$f2,$f2
    15d8:	3c0141c8 	lui	at,0x41c8
    15dc:	24180001 	li	t8,1
    15e0:	460e7182 	mul.s	$f6,$f14,$f14
    15e4:	02002025 	move	a0,s0
    15e8:	460c6202 	mul.s	$f8,$f12,$f12
    15ec:	46062280 	add.s	$f10,$f4,$f6
    15f0:	44812000 	mtc1	at,$f4
    15f4:	46085000 	add.s	$f0,$f10,$f8
    15f8:	46000004 	sqrt.s	$f0,$f0
    15fc:	4604003e 	c.le.s	$f0,$f4
    1600:	00000000 	nop
    1604:	450000f8 	bc1f	19e8 <func_80A10220+0xa28>
    1608:	00000000 	nop
    160c:	a3b800f3 	sb	t8,243(sp)
    1610:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1614:	240538a8 	li	a1,14504
    1618:	8fb900e4 	lw	t9,228(sp)
    161c:	932d01c9 	lbu	t5,457(t9)
    1620:	29a10002 	slti	at,t5,2
    1624:	54200009 	bnezl	at,164c <func_80A10220+0x68c>
    1628:	44803000 	mtc1	zero,$f6
    162c:	8609015a 	lh	t1,346(s0)
    1630:	02002025 	move	a0,s0
    1634:	29210002 	slti	at,t1,2
    1638:	54200004 	bnezl	at,164c <func_80A10220+0x68c>
    163c:	44803000 	mtc1	zero,$f6
    1640:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1644:	240538b0 	li	a1,14512
    1648:	44803000 	mtc1	zero,$f6
    164c:	86070032 	lh	a3,50(s0)
    1650:	240a0003 	li	t2,3
    1654:	24080010 	li	t0,16
    1658:	afa80018 	sw	t0,24(sp)
    165c:	afaa0014 	sw	t2,20(sp)
    1660:	02202025 	move	a0,s1
    1664:	02002825 	move	a1,s0
    1668:	3c064040 	lui	a2,0x4040
    166c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1670:	e7a60010 	swc1	$f6,16(sp)
    1674:	100000dc 	b	19e8 <func_80A10220+0xa28>
    1678:	86050158 	lh	a1,344(s0)
    167c:	918b01c9 	lbu	t3,457(t4)
    1680:	24010003 	li	at,3
    1684:	55610029 	bnel	t3,at,172c <func_80A10220+0x76c>
    1688:	8608015a 	lh	t0,346(s0)
    168c:	860e015a 	lh	t6,346(s0)
    1690:	c7ac00fc 	lwc1	$f12,252(sp)
    1694:	29c10064 	slti	at,t6,100
    1698:	50200024 	beqzl	at,172c <func_80A10220+0x76c>
    169c:	8608015a 	lh	t0,346(s0)
    16a0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    16a4:	c7ae00f4 	lwc1	$f14,244(sp)
    16a8:	3c010000 	lui	at,0x0
    16ac:	c42a0000 	lwc1	$f10,0(at)
    16b0:	c7a200fc 	lwc1	$f2,252(sp)
    16b4:	c7ac00f4 	lwc1	$f12,244(sp)
    16b8:	460a0202 	mul.s	$f8,$f0,$f10
    16bc:	3c014100 	lui	at,0x4100
    16c0:	24190002 	li	t9,2
    16c4:	46021182 	mul.s	$f6,$f2,$f2
    16c8:	00000000 	nop
    16cc:	460c6282 	mul.s	$f10,$f12,$f12
    16d0:	4600410d 	trunc.w.s	$f4,$f8
    16d4:	c6080068 	lwc1	$f8,104(s0)
    16d8:	460a3000 	add.s	$f0,$f6,$f10
    16dc:	44182000 	mfc1	t8,$f4
    16e0:	44812000 	mtc1	at,$f4
    16e4:	3c014316 	lui	at,0x4316
    16e8:	46000004 	sqrt.s	$f0,$f0
    16ec:	44815000 	mtc1	at,$f10
    16f0:	a6180032 	sh	t8,50(s0)
    16f4:	46044182 	mul.s	$f6,$f8,$f4
    16f8:	46065200 	add.s	$f8,$f10,$f6
    16fc:	4608003c 	c.lt.s	$f0,$f8
    1700:	00000000 	nop
    1704:	45000062 	bc1f	1890 <func_80A10220+0x8d0>
    1708:	00000000 	nop
    170c:	a6190158 	sh	t9,344(s0)
    1710:	8fa900e4 	lw	t1,228(sp)
    1714:	240d0001 	li	t5,1
    1718:	240a0008 	li	t2,8
    171c:	a12d01ca 	sb	t5,458(t1)
    1720:	1000005b 	b	1890 <func_80A10220+0x8d0>
    1724:	a60a0150 	sh	t2,336(s0)
    1728:	8608015a 	lh	t0,346(s0)
    172c:	c7ac00fc 	lwc1	$f12,252(sp)
    1730:	c7ae00f4 	lwc1	$f14,244(sp)
    1734:	29010064 	slti	at,t0,100
    1738:	54200028 	bnezl	at,17dc <func_80A10220+0x81c>
    173c:	c7a000fc 	lwc1	$f0,252(sp)
    1740:	460c6082 	mul.s	$f2,$f12,$f12
    1744:	c7b200f8 	lwc1	$f18,248(sp)
    1748:	3c0142c8 	lui	at,0x42c8
    174c:	460e7402 	mul.s	$f16,$f14,$f14
    1750:	44813000 	mtc1	at,$f6
    1754:	8fab00e4 	lw	t3,228(sp)
    1758:	46129102 	mul.s	$f4,$f18,$f18
    175c:	46041280 	add.s	$f10,$f2,$f4
    1760:	46105000 	add.s	$f0,$f10,$f16
    1764:	46000004 	sqrt.s	$f0,$f0
    1768:	4606003c 	c.lt.s	$f0,$f6
    176c:	00000000 	nop
    1770:	45000002 	bc1f	177c <func_80A10220+0x7bc>
    1774:	240c0001 	li	t4,1
    1778:	a16c01ca 	sb	t4,458(t3)
    177c:	e7a20050 	swc1	$f2,80(sp)
    1780:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1784:	e7b0004c 	swc1	$f16,76(sp)
    1788:	3c010000 	lui	at,0x0
    178c:	c4280000 	lwc1	$f8,0(at)
    1790:	c7a20050 	lwc1	$f2,80(sp)
    1794:	c7b0004c 	lwc1	$f16,76(sp)
    1798:	46080102 	mul.s	$f4,$f0,$f8
    179c:	46101000 	add.s	$f0,$f2,$f16
    17a0:	46000384 	sqrt.s	$f14,$f0
    17a4:	4600228d 	trunc.w.s	$f10,$f4
    17a8:	440f5000 	mfc1	t7,$f10
    17ac:	00000000 	nop
    17b0:	a60f0032 	sh	t7,50(s0)
    17b4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    17b8:	c7ac00f8 	lwc1	$f12,248(sp)
    17bc:	3c010000 	lui	at,0x0
    17c0:	c4260000 	lwc1	$f6,0(at)
    17c4:	46060202 	mul.s	$f8,$f0,$f6
    17c8:	4600410d 	trunc.w.s	$f4,$f8
    17cc:	44192000 	mfc1	t9,$f4
    17d0:	00000000 	nop
    17d4:	a6190030 	sh	t9,48(s0)
    17d8:	c7a000fc 	lwc1	$f0,252(sp)
    17dc:	3c0141f0 	lui	at,0x41f0
    17e0:	44811000 	mtc1	at,$f2
    17e4:	46000005 	abs.s	$f0,$f0
    17e8:	4602003c 	c.lt.s	$f0,$f2
    17ec:	c7a000f4 	lwc1	$f0,244(sp)
    17f0:	45000027 	bc1f	1890 <func_80A10220+0x8d0>
    17f4:	00000000 	nop
    17f8:	46000005 	abs.s	$f0,$f0
    17fc:	3c014234 	lui	at,0x4234
    1800:	4602003c 	c.lt.s	$f0,$f2
    1804:	c7a000f8 	lwc1	$f0,248(sp)
    1808:	45000021 	bc1f	1890 <func_80A10220+0x8d0>
    180c:	00000000 	nop
    1810:	44815000 	mtc1	at,$f10
    1814:	46000005 	abs.s	$f0,$f0
    1818:	3c070000 	lui	a3,0x0
    181c:	460a003c 	c.lt.s	$f0,$f10
    1820:	24e70000 	addiu	a3,a3,0
    1824:	240d0002 	li	t5,2
    1828:	240438a8 	li	a0,14504
    182c:	45000018 	bc1f	1890 <func_80A10220+0x8d0>
    1830:	24060004 	li	a2,4
    1834:	a3ad00f3 	sb	t5,243(sp)
    1838:	8609015a 	lh	t1,346(s0)
    183c:	8fa800e4 	lw	t0,228(sp)
    1840:	3c0c0000 	lui	t4,0x0
    1844:	252a0001 	addiu	t2,t1,1
    1848:	a10a01c7 	sb	t2,455(t0)
    184c:	8fa500e4 	lw	a1,228(sp)
    1850:	258c0000 	addiu	t4,t4,0
    1854:	afac0014 	sw	t4,20(sp)
    1858:	24a500e4 	addiu	a1,a1,228
    185c:	afa50050 	sw	a1,80(sp)
    1860:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1864:	afa70010 	sw	a3,16(sp)
    1868:	3c070000 	lui	a3,0x0
    186c:	3c0b0000 	lui	t3,0x0
    1870:	24e70000 	addiu	a3,a3,0
    1874:	256b0000 	addiu	t3,t3,0
    1878:	8fa50050 	lw	a1,80(sp)
    187c:	afab0014 	sw	t3,20(sp)
    1880:	afa70010 	sw	a3,16(sp)
    1884:	240438ae 	li	a0,14510
    1888:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    188c:	24060004 	li	a2,4
    1890:	10000055 	b	19e8 <func_80A10220+0xa28>
    1894:	86050158 	lh	a1,344(s0)
    1898:	860e0150 	lh	t6,336(s0)
    189c:	3c180000 	lui	t8,0x0
    18a0:	27180000 	addiu	t8,t8,0
    18a4:	15c00050 	bnez	t6,19e8 <func_80A10220+0xa28>
    18a8:	00000000 	nop
    18ac:	8f0d0000 	lw	t5,0(t8)
    18b0:	27af007c 	addiu	t7,sp,124
    18b4:	8f190004 	lw	t9,4(t8)
    18b8:	aded0000 	sw	t5,0(t7)
    18bc:	8f0d0008 	lw	t5,8(t8)
    18c0:	adf90004 	sw	t9,4(t7)
    18c4:	26090024 	addiu	t1,s0,36
    18c8:	aded0008 	sw	t5,8(t7)
    18cc:	afa90050 	sw	t1,80(sp)
    18d0:	a7a00096 	sh	zero,150(sp)
    18d4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    18d8:	4600a306 	mov.s	$f12,$f20
    18dc:	e7a00088 	swc1	$f0,136(sp)
    18e0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    18e4:	4600a306 	mov.s	$f12,$f20
    18e8:	e7a0008c 	swc1	$f0,140(sp)
    18ec:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    18f0:	4600a306 	mov.s	$f12,$f20
    18f4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    18f8:	e7a00090 	swc1	$f0,144(sp)
    18fc:	3c014220 	lui	at,0x4220
    1900:	44813000 	mtc1	at,$f6
    1904:	02202025 	move	a0,s1
    1908:	8fa50050 	lw	a1,80(sp)
    190c:	46060202 	mul.s	$f8,$f0,$f6
    1910:	27a60088 	addiu	a2,sp,136
    1914:	27a7007c 	addiu	a3,sp,124
    1918:	afa00014 	sw	zero,20(sp)
    191c:	4600410d 	trunc.w.s	$f4,$f8
    1920:	44082000 	mfc1	t0,$f4
    1924:	00000000 	nop
    1928:	00086400 	sll	t4,t0,0x10
    192c:	000c5c03 	sra	t3,t4,0x10
    1930:	256e0050 	addiu	t6,t3,80
    1934:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1938:	afae0010 	sw	t6,16(sp)
    193c:	87a20096 	lh	v0,150(sp)
    1940:	24420001 	addiu	v0,v0,1
    1944:	00021400 	sll	v0,v0,0x10
    1948:	00021403 	sra	v0,v0,0x10
    194c:	2841001e 	slti	at,v0,30
    1950:	1420ffe0 	bnez	at,18d4 <func_80A10220+0x914>
    1954:	a7a20096 	sh	v0,150(sp)
    1958:	c7ac010c 	lwc1	$f12,268(sp)
    195c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1960:	c7ae0104 	lwc1	$f14,260(sp)
    1964:	3c010000 	lui	at,0x0
    1968:	c42a0000 	lwc1	$f10,0(at)
    196c:	c7a2010c 	lwc1	$f2,268(sp)
    1970:	c7b00104 	lwc1	$f16,260(sp)
    1974:	460a0182 	mul.s	$f6,$f0,$f10
    1978:	00000000 	nop
    197c:	46021102 	mul.s	$f4,$f2,$f2
    1980:	00000000 	nop
    1984:	46108282 	mul.s	$f10,$f16,$f16
    1988:	4600320d 	trunc.w.s	$f8,$f6
    198c:	460a2000 	add.s	$f0,$f4,$f10
    1990:	44184000 	mfc1	t8,$f8
    1994:	00000000 	nop
    1998:	a6180032 	sh	t8,50(s0)
    199c:	46000384 	sqrt.s	$f14,$f0
    19a0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    19a4:	c7ac0108 	lwc1	$f12,264(sp)
    19a8:	3c010000 	lui	at,0x0
    19ac:	c4260000 	lwc1	$f6,0(at)
    19b0:	a6000158 	sh	zero,344(s0)
    19b4:	02002025 	move	a0,s0
    19b8:	46060202 	mul.s	$f8,$f0,$f6
    19bc:	2405182a 	li	a1,6186
    19c0:	4600410d 	trunc.w.s	$f4,$f8
    19c4:	440d2000 	mfc1	t5,$f4
    19c8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    19cc:	a60d0030 	sh	t5,48(s0)
    19d0:	3c014000 	lui	at,0x4000
    19d4:	44813000 	mtc1	at,$f6
    19d8:	c60a0068 	lwc1	$f10,104(s0)
    19dc:	86050158 	lh	a1,344(s0)
    19e0:	46065200 	add.s	$f8,$f10,$f6
    19e4:	e6080068 	swc1	$f8,104(s0)
    19e8:	3c040000 	lui	a0,0x0
    19ec:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    19f0:	24840000 	addiu	a0,a0,0
    19f4:	8fa900e4 	lw	t1,228(sp)
    19f8:	3c040000 	lui	a0,0x0
    19fc:	24840000 	addiu	a0,a0,0
    1a00:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1a04:	912501c9 	lbu	a1,457(t1)
    1a08:	860a0152 	lh	t2,338(s0)
    1a0c:	3c014248 	lui	at,0x4248
    1a10:	02202025 	move	a0,s1
    1a14:	1540007c 	bnez	t2,1c08 <func_80A10220+0xc48>
    1a18:	02002825 	move	a1,s0
    1a1c:	44810000 	mtc1	at,$f0
    1a20:	3c0142c8 	lui	at,0x42c8
    1a24:	44812000 	mtc1	at,$f4
    1a28:	24080007 	li	t0,7
    1a2c:	44060000 	mfc1	a2,$f0
    1a30:	44070000 	mfc1	a3,$f0
    1a34:	afa80014 	sw	t0,20(sp)
    1a38:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1a3c:	e7a40010 	swc1	$f4,16(sp)
    1a40:	960c0088 	lhu	t4,136(s0)
    1a44:	3c180000 	lui	t8,0x0
    1a48:	93ae00f3 	lbu	t6,243(sp)
    1a4c:	318b0019 	andi	t3,t4,0x19
    1a50:	15600003 	bnez	t3,1a60 <func_80A10220+0xaa0>
    1a54:	27180000 	addiu	t8,t8,0
    1a58:	11c0005b 	beqz	t6,1bc8 <func_80A10220+0xc08>
    1a5c:	02002025 	move	a0,s0
    1a60:	8f0d0000 	lw	t5,0(t8)
    1a64:	27af0060 	addiu	t7,sp,96
    1a68:	8f190004 	lw	t9,4(t8)
    1a6c:	aded0000 	sw	t5,0(t7)
    1a70:	8f0d0008 	lw	t5,8(t8)
    1a74:	26090024 	addiu	t1,s0,36
    1a78:	adf90004 	sw	t9,4(t7)
    1a7c:	aded0008 	sw	t5,8(t7)
    1a80:	afa90050 	sw	t1,80(sp)
    1a84:	860a0158 	lh	t2,344(s0)
    1a88:	00001025 	move	v0,zero
    1a8c:	59400003 	blezl	t2,1a9c <func_80A10220+0xadc>
    1a90:	a7a00078 	sh	zero,120(sp)
    1a94:	24020001 	li	v0,1
    1a98:	a7a00078 	sh	zero,120(sp)
    1a9c:	a3a2007b 	sb	v0,123(sp)
    1aa0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1aa4:	4600a306 	mov.s	$f12,$f20
    1aa8:	e7a0006c 	swc1	$f0,108(sp)
    1aac:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1ab0:	4600a306 	mov.s	$f12,$f20
    1ab4:	e7a00070 	swc1	$f0,112(sp)
    1ab8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1abc:	4600a306 	mov.s	$f12,$f20
    1ac0:	3c010000 	lui	at,0x0
    1ac4:	c42a0000 	lwc1	$f10,0(at)
    1ac8:	e7a00074 	swc1	$f0,116(sp)
    1acc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1ad0:	e7aa0064 	swc1	$f10,100(sp)
    1ad4:	3c014248 	lui	at,0x4248
    1ad8:	44813000 	mtc1	at,$f6
    1adc:	93b8007b 	lbu	t8,123(sp)
    1ae0:	02202025 	move	a0,s1
    1ae4:	46060202 	mul.s	$f8,$f0,$f6
    1ae8:	8fa50050 	lw	a1,80(sp)
    1aec:	27a6006c 	addiu	a2,sp,108
    1af0:	27a70060 	addiu	a3,sp,96
    1af4:	afb80014 	sw	t8,20(sp)
    1af8:	4600410d 	trunc.w.s	$f4,$f8
    1afc:	440c2000 	mfc1	t4,$f4
    1b00:	00000000 	nop
    1b04:	000c5c00 	sll	t3,t4,0x10
    1b08:	000b7403 	sra	t6,t3,0x10
    1b0c:	25cf0064 	addiu	t7,t6,100
    1b10:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1b14:	afaf0010 	sw	t7,16(sp)
    1b18:	87a20078 	lh	v0,120(sp)
    1b1c:	24420001 	addiu	v0,v0,1
    1b20:	00021400 	sll	v0,v0,0x10
    1b24:	00021403 	sra	v0,v0,0x10
    1b28:	2841001e 	slti	at,v0,30
    1b2c:	1420ffdc 	bnez	at,1aa0 <func_80A10220+0xae0>
    1b30:	a7a20078 	sh	v0,120(sp)
    1b34:	93a200f3 	lbu	v0,243(sp)
    1b38:	24010001 	li	at,1
    1b3c:	54410017 	bnel	v0,at,1b9c <func_80A10220+0xbdc>
    1b40:	8fa800e4 	lw	t0,228(sp)
    1b44:	c60a0024 	lwc1	$f10,36(s0)
    1b48:	8fb900ec 	lw	t9,236(sp)
    1b4c:	240d00c8 	li	t5,200
    1b50:	e7aa0010 	swc1	$f10,16(sp)
    1b54:	c7260028 	lwc1	$f6,40(t9)
    1b58:	24090024 	li	t1,36
    1b5c:	26241c24 	addiu	a0,s1,7204
    1b60:	46143200 	add.s	$f8,$f6,$f20
    1b64:	02002825 	move	a1,s0
    1b68:	02203025 	move	a2,s1
    1b6c:	2407006d 	li	a3,109
    1b70:	e7a80014 	swc1	$f8,20(sp)
    1b74:	c604002c 	lwc1	$f4,44(s0)
    1b78:	afa20050 	sw	v0,80(sp)
    1b7c:	afa90028 	sw	t1,40(sp)
    1b80:	afa00024 	sw	zero,36(sp)
    1b84:	afa00020 	sw	zero,32(sp)
    1b88:	afad001c 	sw	t5,28(sp)
    1b8c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1b90:	e7a40018 	swc1	$f4,24(sp)
    1b94:	8fa20050 	lw	v0,80(sp)
    1b98:	8fa800e4 	lw	t0,228(sp)
    1b9c:	240a0001 	li	t2,1
    1ba0:	240c001e 	li	t4,30
    1ba4:	a10a01c9 	sb	t2,457(t0)
    1ba8:	a60c015c 	sh	t4,348(s0)
    1bac:	1440003c 	bnez	v0,1ca0 <func_80A10220+0xce0>
    1bb0:	ae000134 	sw	zero,308(s0)
    1bb4:	02002025 	move	a0,s0
    1bb8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1bbc:	240538ad 	li	a1,14509
    1bc0:	10000038 	b	1ca4 <func_80A10220+0xce4>
    1bc4:	8fbf0044 	lw	ra,68(sp)
    1bc8:	260501b0 	addiu	a1,s0,432
    1bcc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1bd0:	afa50050 	sw	a1,80(sp)
    1bd4:	3c040000 	lui	a0,0x0
    1bd8:	24840000 	addiu	a0,a0,0
    1bdc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1be0:	920501c5 	lbu	a1,453(s0)
    1be4:	3c010001 	lui	at,0x1
    1be8:	34211e60 	ori	at,at,0x1e60
    1bec:	02212821 	addu	a1,s1,at
    1bf0:	02202025 	move	a0,s1
    1bf4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1bf8:	8fa60050 	lw	a2,80(sp)
    1bfc:	3c040000 	lui	a0,0x0
    1c00:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1c04:	24840000 	addiu	a0,a0,0
    1c08:	c60a0024 	lwc1	$f10,36(s0)
    1c0c:	c6080028 	lwc1	$f8,40(s0)
    1c10:	241800ff 	li	t8,255
    1c14:	4600518d 	trunc.w.s	$f6,$f10
    1c18:	c60a002c 	lwc1	$f10,44(s0)
    1c1c:	241900ff 	li	t9,255
    1c20:	4600410d 	trunc.w.s	$f4,$f8
    1c24:	44053000 	mfc1	a1,$f6
    1c28:	240d00ff 	li	t5,255
    1c2c:	4600518d 	trunc.w.s	$f6,$f10
    1c30:	44062000 	mfc1	a2,$f4
    1c34:	240900c8 	li	t1,200
    1c38:	00052c00 	sll	a1,a1,0x10
    1c3c:	44073000 	mfc1	a3,$f6
    1c40:	00063400 	sll	a2,a2,0x10
    1c44:	00063403 	sra	a2,a2,0x10
    1c48:	00073c00 	sll	a3,a3,0x10
    1c4c:	00073c03 	sra	a3,a3,0x10
    1c50:	00052c03 	sra	a1,a1,0x10
    1c54:	afa9001c 	sw	t1,28(sp)
    1c58:	afad0018 	sw	t5,24(sp)
    1c5c:	afb90014 	sw	t9,20(sp)
    1c60:	afb80010 	sw	t8,16(sp)
    1c64:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1c68:	260401a0 	addiu	a0,s0,416
    1c6c:	c6080068 	lwc1	$f8,104(s0)
    1c70:	02002025 	move	a0,s0
    1c74:	4608a03c 	c.lt.s	$f20,$f8
    1c78:	00000000 	nop
    1c7c:	45000002 	bc1f	1c88 <func_80A10220+0xcc8>
    1c80:	00000000 	nop
    1c84:	e6140068 	swc1	$f20,104(s0)
    1c88:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1c8c:	240530a7 	li	a1,12455
    1c90:	3c040000 	lui	a0,0x0
    1c94:	24840000 	addiu	a0,a0,0
    1c98:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1c9c:	86050156 	lh	a1,342(s0)
    1ca0:	8fbf0044 	lw	ra,68(sp)
    1ca4:	d7b40030 	ldc1	$f20,48(sp)
    1ca8:	8fb0003c 	lw	s0,60(sp)
    1cac:	8fb10040 	lw	s1,64(sp)
    1cb0:	03e00008 	jr	ra
    1cb4:	27bd0110 	addiu	sp,sp,272

00001cb8 <func_80A10F18>:
    1cb8:	27bdffd8 	addiu	sp,sp,-40
    1cbc:	afbf001c 	sw	ra,28(sp)
    1cc0:	afb00018 	sw	s0,24(sp)
    1cc4:	afa5002c 	sw	a1,44(sp)
    1cc8:	8c8e0118 	lw	t6,280(a0)
    1ccc:	3c0141c8 	lui	at,0x41c8
    1cd0:	44813000 	mtc1	at,$f6
    1cd4:	afae0024 	sw	t6,36(sp)
    1cd8:	c4800184 	lwc1	$f0,388(a0)
    1cdc:	3c014220 	lui	at,0x4220
    1ce0:	44819000 	mtc1	at,$f18
    1ce4:	46003202 	mul.s	$f8,$f6,$f0
    1ce8:	c4840174 	lwc1	$f4,372(a0)
    1cec:	c4900178 	lwc1	$f16,376(a0)
    1cf0:	46009182 	mul.s	$f6,$f18,$f0
    1cf4:	3c0140a0 	lui	at,0x40a0
    1cf8:	848f001c 	lh	t7,28(a0)
    1cfc:	00808025 	move	s0,a0
    1d00:	46082280 	add.s	$f10,$f4,$f8
    1d04:	c488017c 	lwc1	$f8,380(a0)
    1d08:	46068101 	sub.s	$f4,$f16,$f6
    1d0c:	e48a0174 	swc1	$f10,372(a0)
    1d10:	44815000 	mtc1	at,$f10
    1d14:	3c0141f0 	lui	at,0x41f0
    1d18:	e4840178 	swc1	$f4,376(a0)
    1d1c:	46005482 	mul.s	$f18,$f10,$f0
    1d20:	44812000 	mtc1	at,$f4
    1d24:	c4860180 	lwc1	$f6,384(a0)
    1d28:	24010029 	li	at,41
    1d2c:	46002282 	mul.s	$f10,$f4,$f0
    1d30:	46124400 	add.s	$f16,$f8,$f18
    1d34:	460a3201 	sub.s	$f8,$f6,$f10
    1d38:	e490017c 	swc1	$f16,380(a0)
    1d3c:	15e10013 	bne	t7,at,1d8c <func_80A10F18+0xd4>
    1d40:	e4880180 	swc1	$f8,384(a0)
    1d44:	84820150 	lh	v0,336(a0)
    1d48:	28410047 	slti	at,v0,71
    1d4c:	54200008 	bnezl	at,1d70 <func_80A10F18+0xb8>
    1d50:	24010046 	li	at,70
    1d54:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1d58:	24052040 	li	a1,8256
    1d5c:	02002025 	move	a0,s0
    1d60:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1d64:	24052054 	li	a1,8276
    1d68:	86020150 	lh	v0,336(s0)
    1d6c:	24010046 	li	at,70
    1d70:	14410006 	bne	v0,at,1d8c <func_80A10F18+0xd4>
    1d74:	02002025 	move	a0,s0
    1d78:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1d7c:	2405283f 	li	a1,10303
    1d80:	02002025 	move	a0,s0
    1d84:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1d88:	24052853 	li	a1,10323
    1d8c:	86020150 	lh	v0,336(s0)
    1d90:	26040184 	addiu	a0,s0,388
    1d94:	3c073d23 	lui	a3,0x3d23
    1d98:	28410033 	slti	at,v0,51
    1d9c:	54200017 	bnezl	at,1dfc <func_80A10F18+0x144>
    1da0:	2841001a 	slti	at,v0,26
    1da4:	8618001c 	lh	t8,28(s0)
    1da8:	3c013f80 	lui	at,0x3f80
    1dac:	44811000 	mtc1	at,$f2
    1db0:	2b010028 	slti	at,t8,40
    1db4:	14200004 	bnez	at,1dc8 <func_80A10F18+0x110>
    1db8:	46001006 	mov.s	$f0,$f2
    1dbc:	3c01bf80 	lui	at,0xbf80
    1dc0:	44810000 	mtc1	at,$f0
    1dc4:	00000000 	nop
    1dc8:	44050000 	mfc1	a1,$f0
    1dcc:	44061000 	mfc1	a2,$f2
    1dd0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1dd4:	34e7d70a 	ori	a3,a3,0xd70a
    1dd8:	3c074123 	lui	a3,0x4123
    1ddc:	34e73333 	ori	a3,a3,0x3333
    1de0:	26040188 	addiu	a0,s0,392
    1de4:	3c05437f 	lui	a1,0x437f
    1de8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1dec:	3c063f80 	lui	a2,0x3f80
    1df0:	1000000d 	b	1e28 <func_80A10F18+0x170>
    1df4:	00000000 	nop
    1df8:	2841001a 	slti	at,v0,26
    1dfc:	1020000a 	beqz	at,1e28 <func_80A10F18+0x170>
    1e00:	26040184 	addiu	a0,s0,388
    1e04:	3c063d23 	lui	a2,0x3d23
    1e08:	34c6d70a 	ori	a2,a2,0xd70a
    1e0c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1e10:	3c053f80 	lui	a1,0x3f80
    1e14:	3c064123 	lui	a2,0x4123
    1e18:	34c63333 	ori	a2,a2,0x3333
    1e1c:	26040188 	addiu	a0,s0,392
    1e20:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1e24:	3c053f80 	lui	a1,0x3f80
    1e28:	3c040000 	lui	a0,0x0
    1e2c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1e30:	248400d0 	addiu	a0,a0,208
    1e34:	86190150 	lh	t9,336(s0)
    1e38:	13200009 	beqz	t9,1e60 <func_80A10F18+0x1a8>
    1e3c:	00000000 	nop
    1e40:	8608001c 	lh	t0,28(s0)
    1e44:	24010027 	li	at,39
    1e48:	8fa90024 	lw	t1,36(sp)
    1e4c:	15010006 	bne	t0,at,1e68 <func_80A10F18+0x1b0>
    1e50:	00000000 	nop
    1e54:	912a014f 	lbu	t2,335(t1)
    1e58:	11400003 	beqz	t2,1e68 <func_80A10F18+0x1b0>
    1e5c:	00000000 	nop
    1e60:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1e64:	02002025 	move	a0,s0
    1e68:	3c040000 	lui	a0,0x0
    1e6c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1e70:	248400d8 	addiu	a0,a0,216
    1e74:	8fbf001c 	lw	ra,28(sp)
    1e78:	8fb00018 	lw	s0,24(sp)
    1e7c:	27bd0028 	addiu	sp,sp,40
    1e80:	03e00008 	jr	ra
    1e84:	00000000 	nop

00001e88 <EnFhgFire_Update>:
    1e88:	27bdffe8 	addiu	sp,sp,-24
    1e8c:	afbf0014 	sw	ra,20(sp)
    1e90:	848e0156 	lh	t6,342(a0)
    1e94:	84820150 	lh	v0,336(a0)
    1e98:	25cf0001 	addiu	t7,t6,1
    1e9c:	10400003 	beqz	v0,1eac <EnFhgFire_Update+0x24>
    1ea0:	a48f0156 	sh	t7,342(a0)
    1ea4:	2458ffff 	addiu	t8,v0,-1
    1ea8:	a4980150 	sh	t8,336(a0)
    1eac:	84820152 	lh	v0,338(a0)
    1eb0:	10400002 	beqz	v0,1ebc <EnFhgFire_Update+0x34>
    1eb4:	2459ffff 	addiu	t9,v0,-1
    1eb8:	a4990152 	sh	t9,338(a0)
    1ebc:	8c99014c 	lw	t9,332(a0)
    1ec0:	0320f809 	jalr	t9
    1ec4:	00000000 	nop
    1ec8:	8fbf0014 	lw	ra,20(sp)
    1ecc:	27bd0018 	addiu	sp,sp,24
    1ed0:	03e00008 	jr	ra
    1ed4:	00000000 	nop

00001ed8 <EnFhgFire_Draw>:
    1ed8:	27bdff48 	addiu	sp,sp,-184
    1edc:	afbf003c 	sw	ra,60(sp)
    1ee0:	afb00038 	sw	s0,56(sp)
    1ee4:	afa400b8 	sw	a0,184(sp)
    1ee8:	afa500bc 	sw	a1,188(sp)
    1eec:	8ca50000 	lw	a1,0(a1)
    1ef0:	3c060000 	lui	a2,0x0
    1ef4:	24c600e0 	addiu	a2,a2,224
    1ef8:	27a4009c 	addiu	a0,sp,156
    1efc:	240706bb 	li	a3,1723
    1f00:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1f04:	00a08025 	move	s0,a1
    1f08:	8fa800b8 	lw	t0,184(sp)
    1f0c:	24010024 	li	at,36
    1f10:	8faf00bc 	lw	t7,188(sp)
    1f14:	8502001c 	lh	v0,28(t0)
    1f18:	54410043 	bnel	v0,at,2028 <EnFhgFire_Draw+0x150>
    1f1c:	24010026 	li	at,38
    1f20:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1f24:	8de40000 	lw	a0,0(t7)
    1f28:	8e0202d0 	lw	v0,720(s0)
    1f2c:	8fa800b8 	lw	t0,184(sp)
    1f30:	3c19fa00 	lui	t9,0xfa00
    1f34:	24580008 	addiu	t8,v0,8
    1f38:	ae1802d0 	sw	t8,720(s0)
    1f3c:	ac590000 	sw	t9,0(v0)
    1f40:	c5040160 	lwc1	$f4,352(t0)
    1f44:	2401ff00 	li	at,-256
    1f48:	3c19a5ff 	lui	t9,0xa5ff
    1f4c:	4600218d 	trunc.w.s	$f6,$f4
    1f50:	37394b00 	ori	t9,t9,0x4b00
    1f54:	3c18fb00 	lui	t8,0xfb00
    1f58:	3c0ae700 	lui	t2,0xe700
    1f5c:	440c3000 	mfc1	t4,$f6
    1f60:	3c050000 	lui	a1,0x0
    1f64:	24a500f4 	addiu	a1,a1,244
    1f68:	318d00ff 	andi	t5,t4,0xff
    1f6c:	01a17025 	or	t6,t5,at
    1f70:	ac4e0004 	sw	t6,4(v0)
    1f74:	8e0202d0 	lw	v0,720(s0)
    1f78:	3c0cda38 	lui	t4,0xda38
    1f7c:	358c0003 	ori	t4,t4,0x3
    1f80:	244f0008 	addiu	t7,v0,8
    1f84:	ae0f02d0 	sw	t7,720(s0)
    1f88:	ac580000 	sw	t8,0(v0)
    1f8c:	ac590004 	sw	t9,4(v0)
    1f90:	8e0202d0 	lw	v0,720(s0)
    1f94:	240606d1 	li	a2,1745
    1f98:	24490008 	addiu	t1,v0,8
    1f9c:	ae0902d0 	sw	t1,720(s0)
    1fa0:	ac4a0000 	sw	t2,0(v0)
    1fa4:	ac400004 	sw	zero,4(v0)
    1fa8:	8e0202d0 	lw	v0,720(s0)
    1fac:	244b0008 	addiu	t3,v0,8
    1fb0:	ae0b02d0 	sw	t3,720(s0)
    1fb4:	ac4c0000 	sw	t4,0(v0)
    1fb8:	8fad00bc 	lw	t5,188(sp)
    1fbc:	8da40000 	lw	a0,0(t5)
    1fc0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    1fc4:	afa2008c 	sw	v0,140(sp)
    1fc8:	8fa3008c 	lw	v1,140(sp)
    1fcc:	3c040000 	lui	a0,0x0
    1fd0:	24840000 	addiu	a0,a0,0
    1fd4:	ac620004 	sw	v0,4(v1)
    1fd8:	8e0202d0 	lw	v0,720(s0)
    1fdc:	0004c100 	sll	t8,a0,0x4
    1fe0:	0018cf02 	srl	t9,t8,0x1c
    1fe4:	244e0008 	addiu	t6,v0,8
    1fe8:	ae0e02d0 	sw	t6,720(s0)
    1fec:	00194880 	sll	t1,t9,0x2
    1ff0:	3c0fde00 	lui	t7,0xde00
    1ff4:	3c0a0000 	lui	t2,0x0
    1ff8:	01495021 	addu	t2,t2,t1
    1ffc:	3c0100ff 	lui	at,0xff
    2000:	ac4f0000 	sw	t7,0(v0)
    2004:	8d4a0000 	lw	t2,0(t2)
    2008:	3421ffff 	ori	at,at,0xffff
    200c:	00815824 	and	t3,a0,at
    2010:	3c018000 	lui	at,0x8000
    2014:	014b6021 	addu	t4,t2,t3
    2018:	01816821 	addu	t5,t4,at
    201c:	1000012e 	b	24d8 <EnFhgFire_Draw+0x600>
    2020:	ac4d0004 	sw	t5,4(v0)
    2024:	24010026 	li	at,38
    2028:	10410004 	beq	v0,at,203c <EnFhgFire_Draw+0x164>
    202c:	3c040000 	lui	a0,0x0
    2030:	24010032 	li	at,50
    2034:	54410058 	bnel	v0,at,2198 <EnFhgFire_Draw+0x2c0>
    2038:	24010027 	li	at,39
    203c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    2040:	24840108 	addiu	a0,a0,264
    2044:	8fa400bc 	lw	a0,188(sp)
    2048:	3c010001 	lui	at,0x1
    204c:	34211da0 	ori	at,at,0x1da0
    2050:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    2054:	00812021 	addu	a0,a0,at
    2058:	8fae00bc 	lw	t6,188(sp)
    205c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    2060:	8dc40000 	lw	a0,0(t6)
    2064:	8e0202d0 	lw	v0,720(s0)
    2068:	8fa800b8 	lw	t0,184(sp)
    206c:	3c18fa00 	lui	t8,0xfa00
    2070:	244f0008 	addiu	t7,v0,8
    2074:	ae0f02d0 	sw	t7,720(s0)
    2078:	ac580000 	sw	t8,0(v0)
    207c:	c5080160 	lwc1	$f8,352(t0)
    2080:	2401ff00 	li	at,-256
    2084:	3c18fb00 	lui	t8,0xfb00
    2088:	4600428d 	trunc.w.s	$f10,$f8
    208c:	3c0afb00 	lui	t2,0xfb00
    2090:	440b5000 	mfc1	t3,$f10
    2094:	00000000 	nop
    2098:	316c00ff 	andi	t4,t3,0xff
    209c:	01816825 	or	t5,t4,at
    20a0:	ac4d0004 	sw	t5,4(v0)
    20a4:	850e0158 	lh	t6,344(t0)
    20a8:	59c0000a 	blezl	t6,20d4 <EnFhgFire_Draw+0x1fc>
    20ac:	8e0202d0 	lw	v0,720(s0)
    20b0:	8e0202d0 	lw	v0,720(s0)
    20b4:	3c1900ff 	lui	t9,0xff
    20b8:	3739ff00 	ori	t9,t9,0xff00
    20bc:	244f0008 	addiu	t7,v0,8
    20c0:	ae0f02d0 	sw	t7,720(s0)
    20c4:	ac590004 	sw	t9,4(v0)
    20c8:	10000008 	b	20ec <EnFhgFire_Draw+0x214>
    20cc:	ac580000 	sw	t8,0(v0)
    20d0:	8e0202d0 	lw	v0,720(s0)
    20d4:	3c0ba5ff 	lui	t3,0xa5ff
    20d8:	356b4b00 	ori	t3,t3,0x4b00
    20dc:	24490008 	addiu	t1,v0,8
    20e0:	ae0902d0 	sw	t1,720(s0)
    20e4:	ac4b0004 	sw	t3,4(v0)
    20e8:	ac4a0000 	sw	t2,0(v0)
    20ec:	8e0202d0 	lw	v0,720(s0)
    20f0:	3c0de700 	lui	t5,0xe700
    20f4:	3c014700 	lui	at,0x4700
    20f8:	244c0008 	addiu	t4,v0,8
    20fc:	ae0c02d0 	sw	t4,720(s0)
    2100:	ac400004 	sw	zero,4(v0)
    2104:	ac4d0000 	sw	t5,0(v0)
    2108:	850e00b8 	lh	t6,184(t0)
    210c:	44812000 	mtc1	at,$f4
    2110:	3c010000 	lui	at,0x0
    2114:	448e8000 	mtc1	t6,$f16
    2118:	c42801c4 	lwc1	$f8,452(at)
    211c:	24050001 	li	a1,1
    2120:	468084a0 	cvt.s.w	$f18,$f16
    2124:	46049183 	div.s	$f6,$f18,$f4
    2128:	46083302 	mul.s	$f12,$f6,$f8
    212c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    2130:	00000000 	nop
    2134:	8e0202d0 	lw	v0,720(s0)
    2138:	3c18da38 	lui	t8,0xda38
    213c:	37180003 	ori	t8,t8,0x3
    2140:	244f0008 	addiu	t7,v0,8
    2144:	ae0f02d0 	sw	t7,720(s0)
    2148:	ac580000 	sw	t8,0(v0)
    214c:	8fb900bc 	lw	t9,188(sp)
    2150:	3c050000 	lui	a1,0x0
    2154:	24a5011c 	addiu	a1,a1,284
    2158:	8f240000 	lw	a0,0(t9)
    215c:	24060709 	li	a2,1801
    2160:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    2164:	afa20074 	sw	v0,116(sp)
    2168:	8fa30074 	lw	v1,116(sp)
    216c:	3c0b0000 	lui	t3,0x0
    2170:	256b0000 	addiu	t3,t3,0
    2174:	ac620004 	sw	v0,4(v1)
    2178:	8e0202d0 	lw	v0,720(s0)
    217c:	3c0ade00 	lui	t2,0xde00
    2180:	24490008 	addiu	t1,v0,8
    2184:	ae0902d0 	sw	t1,720(s0)
    2188:	ac4b0004 	sw	t3,4(v0)
    218c:	100000d2 	b	24d8 <EnFhgFire_Draw+0x600>
    2190:	ac4a0000 	sw	t2,0(v0)
    2194:	24010027 	li	at,39
    2198:	10410006 	beq	v0,at,21b4 <EnFhgFire_Draw+0x2dc>
    219c:	8fac00bc 	lw	t4,188(sp)
    21a0:	24010028 	li	at,40
    21a4:	10410003 	beq	v0,at,21b4 <EnFhgFire_Draw+0x2dc>
    21a8:	24010029 	li	at,41
    21ac:	1441008a 	bne	v0,at,23d8 <EnFhgFire_Draw+0x500>
    21b0:	3c040000 	lui	a0,0x0
    21b4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    21b8:	8d840000 	lw	a0,0(t4)
    21bc:	8e0302d0 	lw	v1,720(s0)
    21c0:	8fa800b8 	lw	t0,184(sp)
    21c4:	3c0efa00 	lui	t6,0xfa00
    21c8:	246d0008 	addiu	t5,v1,8
    21cc:	ae0d02d0 	sw	t5,720(s0)
    21d0:	444ff800 	cfc1	t7,$31
    21d4:	24180001 	li	t8,1
    21d8:	ac6e0000 	sw	t6,0(v1)
    21dc:	44d8f800 	ctc1	t8,$31
    21e0:	c50a0188 	lwc1	$f10,392(t0)
    21e4:	3c014f00 	lui	at,0x4f00
    21e8:	3c0bfb00 	lui	t3,0xfb00
    21ec:	46005424 	cvt.w.s	$f16,$f10
    21f0:	4458f800 	cfc1	t8,$31
    21f4:	00000000 	nop
    21f8:	33180078 	andi	t8,t8,0x78
    21fc:	53000013 	beqzl	t8,224c <EnFhgFire_Draw+0x374>
    2200:	44188000 	mfc1	t8,$f16
    2204:	44818000 	mtc1	at,$f16
    2208:	24180001 	li	t8,1
    220c:	46105401 	sub.s	$f16,$f10,$f16
    2210:	44d8f800 	ctc1	t8,$31
    2214:	00000000 	nop
    2218:	46008424 	cvt.w.s	$f16,$f16
    221c:	4458f800 	cfc1	t8,$31
    2220:	00000000 	nop
    2224:	33180078 	andi	t8,t8,0x78
    2228:	17000005 	bnez	t8,2240 <EnFhgFire_Draw+0x368>
    222c:	00000000 	nop
    2230:	44188000 	mfc1	t8,$f16
    2234:	3c018000 	lui	at,0x8000
    2238:	10000007 	b	2258 <EnFhgFire_Draw+0x380>
    223c:	0301c025 	or	t8,t8,at
    2240:	10000005 	b	2258 <EnFhgFire_Draw+0x380>
    2244:	2418ffff 	li	t8,-1
    2248:	44188000 	mfc1	t8,$f16
    224c:	00000000 	nop
    2250:	0700fffb 	bltz	t8,2240 <EnFhgFire_Draw+0x368>
    2254:	00000000 	nop
    2258:	0300c825 	move	t9,t8
    225c:	332900ff 	andi	t1,t9,0xff
    2260:	ac690004 	sw	t1,4(v1)
    2264:	8e0202d0 	lw	v0,720(s0)
    2268:	3c013f00 	lui	at,0x3f00
    226c:	44cff800 	ctc1	t7,$31
    2270:	244a0008 	addiu	t2,v0,8
    2274:	ae0a02d0 	sw	t2,720(s0)
    2278:	ac4b0000 	sw	t3,0(v0)
    227c:	c5120188 	lwc1	$f18,392(t0)
    2280:	44812000 	mtc1	at,$f4
    2284:	3c015a32 	lui	at,0x5a32
    2288:	34215f00 	ori	at,at,0x5f00
    228c:	46049182 	mul.s	$f6,$f18,$f4
    2290:	3c0ae700 	lui	t2,0xe700
    2294:	3c0cda38 	lui	t4,0xda38
    2298:	358c0003 	ori	t4,t4,0x3
    229c:	3c050000 	lui	a1,0x0
    22a0:	24a50130 	addiu	a1,a1,304
    22a4:	24060729 	li	a2,1833
    22a8:	4600320d 	trunc.w.s	$f8,$f6
    22ac:	440f4000 	mfc1	t7,$f8
    22b0:	00000000 	nop
    22b4:	31f800ff 	andi	t8,t7,0xff
    22b8:	0301c825 	or	t9,t8,at
    22bc:	ac590004 	sw	t9,4(v0)
    22c0:	8e0202d0 	lw	v0,720(s0)
    22c4:	24490008 	addiu	t1,v0,8
    22c8:	ae0902d0 	sw	t1,720(s0)
    22cc:	ac4a0000 	sw	t2,0(v0)
    22d0:	ac400004 	sw	zero,4(v0)
    22d4:	8e0202d0 	lw	v0,720(s0)
    22d8:	244b0008 	addiu	t3,v0,8
    22dc:	ae0b02d0 	sw	t3,720(s0)
    22e0:	ac4c0000 	sw	t4,0(v0)
    22e4:	8fad00bc 	lw	t5,188(sp)
    22e8:	8da40000 	lw	a0,0(t5)
    22ec:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    22f0:	afa20060 	sw	v0,96(sp)
    22f4:	8fa30060 	lw	v1,96(sp)
    22f8:	8fa800b8 	lw	t0,184(sp)
    22fc:	3c0fdb06 	lui	t7,0xdb06
    2300:	ac620004 	sw	v0,4(v1)
    2304:	8e0202d0 	lw	v0,720(s0)
    2308:	35ef0020 	ori	t7,t7,0x20
    230c:	240a0040 	li	t2,64
    2310:	244e0008 	addiu	t6,v0,8
    2314:	ae0e02d0 	sw	t6,720(s0)
    2318:	ac4f0000 	sw	t7,0(v0)
    231c:	8fb800bc 	lw	t8,188(sp)
    2320:	c5120178 	lwc1	$f18,376(t0)
    2324:	c50a0174 	lwc1	$f10,372(t0)
    2328:	8f040000 	lw	a0,0(t8)
    232c:	240b0040 	li	t3,64
    2330:	240c0001 	li	t4,1
    2334:	afac0018 	sw	t4,24(sp)
    2338:	afab0014 	sw	t3,20(sp)
    233c:	afaa0010 	sw	t2,16(sp)
    2340:	c506017c 	lwc1	$f6,380(t0)
    2344:	4600540d 	trunc.w.s	$f16,$f10
    2348:	240c0040 	li	t4,64
    234c:	240d0040 	li	t5,64
    2350:	4600320d 	trunc.w.s	$f8,$f6
    2354:	44068000 	mfc1	a2,$f16
    2358:	00002825 	move	a1,zero
    235c:	4600910d 	trunc.w.s	$f4,$f18
    2360:	440e4000 	mfc1	t6,$f8
    2364:	00063400 	sll	a2,a2,0x10
    2368:	00063403 	sra	a2,a2,0x10
    236c:	000e7c00 	sll	t7,t6,0x10
    2370:	000fc403 	sra	t8,t7,0x10
    2374:	afb8001c 	sw	t8,28(sp)
    2378:	c50a0180 	lwc1	$f10,384(t0)
    237c:	44072000 	mfc1	a3,$f4
    2380:	afad0028 	sw	t5,40(sp)
    2384:	4600540d 	trunc.w.s	$f16,$f10
    2388:	00073c00 	sll	a3,a3,0x10
    238c:	00073c03 	sra	a3,a3,0x10
    2390:	afac0024 	sw	t4,36(sp)
    2394:	44098000 	mfc1	t1,$f16
    2398:	afa2005c 	sw	v0,92(sp)
    239c:	00095400 	sll	t2,t1,0x10
    23a0:	000a5c03 	sra	t3,t2,0x10
    23a4:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    23a8:	afab0020 	sw	t3,32(sp)
    23ac:	8fa3005c 	lw	v1,92(sp)
    23b0:	3c180000 	lui	t8,0x0
    23b4:	27180000 	addiu	t8,t8,0
    23b8:	ac620004 	sw	v0,4(v1)
    23bc:	8e0202d0 	lw	v0,720(s0)
    23c0:	3c0fde00 	lui	t7,0xde00
    23c4:	244e0008 	addiu	t6,v0,8
    23c8:	ae0e02d0 	sw	t6,720(s0)
    23cc:	ac580004 	sw	t8,4(v0)
    23d0:	10000041 	b	24d8 <EnFhgFire_Draw+0x600>
    23d4:	ac4f0000 	sw	t7,0(v0)
    23d8:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    23dc:	24840144 	addiu	a0,a0,324
    23e0:	44806000 	mtc1	zero,$f12
    23e4:	3c01c2c8 	lui	at,0xc2c8
    23e8:	44817000 	mtc1	at,$f14
    23ec:	44066000 	mfc1	a2,$f12
    23f0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    23f4:	24070001 	li	a3,1
    23f8:	8fb900bc 	lw	t9,188(sp)
    23fc:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    2400:	8f240000 	lw	a0,0(t9)
    2404:	8e0202d0 	lw	v0,720(s0)
    2408:	8fa800b8 	lw	t0,184(sp)
    240c:	3c0afa00 	lui	t2,0xfa00
    2410:	24490008 	addiu	t1,v0,8
    2414:	ae0902d0 	sw	t1,720(s0)
    2418:	ac4a0000 	sw	t2,0(v0)
    241c:	c5120160 	lwc1	$f18,352(t0)
    2420:	2401ff00 	li	at,-256
    2424:	3c0a00ff 	lui	t2,0xff
    2428:	4600910d 	trunc.w.s	$f4,$f18
    242c:	354a1e00 	ori	t2,t2,0x1e00
    2430:	3c09fb00 	lui	t1,0xfb00
    2434:	3c0ce700 	lui	t4,0xe700
    2438:	440e2000 	mfc1	t6,$f4
    243c:	3c050000 	lui	a1,0x0
    2440:	24a50150 	addiu	a1,a1,336
    2444:	31cf00ff 	andi	t7,t6,0xff
    2448:	01e1c025 	or	t8,t7,at
    244c:	ac580004 	sw	t8,4(v0)
    2450:	8e0202d0 	lw	v0,720(s0)
    2454:	3c0eda38 	lui	t6,0xda38
    2458:	35ce0003 	ori	t6,t6,0x3
    245c:	24590008 	addiu	t9,v0,8
    2460:	ae1902d0 	sw	t9,720(s0)
    2464:	ac490000 	sw	t1,0(v0)
    2468:	ac4a0004 	sw	t2,4(v0)
    246c:	8e0202d0 	lw	v0,720(s0)
    2470:	24060764 	li	a2,1892
    2474:	244b0008 	addiu	t3,v0,8
    2478:	ae0b02d0 	sw	t3,720(s0)
    247c:	ac4c0000 	sw	t4,0(v0)
    2480:	ac400004 	sw	zero,4(v0)
    2484:	8e0202d0 	lw	v0,720(s0)
    2488:	244d0008 	addiu	t5,v0,8
    248c:	ae0d02d0 	sw	t5,720(s0)
    2490:	ac4e0000 	sw	t6,0(v0)
    2494:	8faf00bc 	lw	t7,188(sp)
    2498:	8de40000 	lw	a0,0(t7)
    249c:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    24a0:	afa20048 	sw	v0,72(sp)
    24a4:	8fa30048 	lw	v1,72(sp)
    24a8:	3c090000 	lui	t1,0x0
    24ac:	25290000 	addiu	t1,t1,0
    24b0:	ac620004 	sw	v0,4(v1)
    24b4:	8e0202d0 	lw	v0,720(s0)
    24b8:	3c19de00 	lui	t9,0xde00
    24bc:	3c040000 	lui	a0,0x0
    24c0:	24580008 	addiu	t8,v0,8
    24c4:	ae1802d0 	sw	t8,720(s0)
    24c8:	24840164 	addiu	a0,a0,356
    24cc:	ac490004 	sw	t1,4(v0)
    24d0:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    24d4:	ac590000 	sw	t9,0(v0)
    24d8:	8faa00bc 	lw	t2,188(sp)
    24dc:	3c060000 	lui	a2,0x0
    24e0:	24c60170 	addiu	a2,a2,368
    24e4:	27a4009c 	addiu	a0,sp,156
    24e8:	2407076c 	li	a3,1900
    24ec:	0c000000 	jal	0 <EnFhgFire_SetupAction>
    24f0:	8d450000 	lw	a1,0(t2)
    24f4:	8fbf003c 	lw	ra,60(sp)
    24f8:	8fb00038 	lw	s0,56(sp)
    24fc:	27bd00b8 	addiu	sp,sp,184
    2500:	03e00008 	jr	ra
    2504:	00000000 	nop
	...
