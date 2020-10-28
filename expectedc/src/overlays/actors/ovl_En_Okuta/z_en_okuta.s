
build/src/overlays/actors/ovl_En_Okuta/z_en_okuta.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnOkuta_Init>:
       0:	27bdffb8 	addiu	sp,sp,-72
       4:	afb10028 	sw	s1,40(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb00024 	sw	s0,36(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnOkuta_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	8619001c 	lh	t9,28(s0)
      28:	860e001c 	lh	t6,28(s0)
      2c:	260400b4 	addiu	a0,s0,180
      30:	332800ff 	andi	t0,t9,0xff
      34:	a608001c 	sh	t0,28(s0)
      38:	8609001c 	lh	t1,28(s0)
      3c:	000e7a03 	sra	t7,t6,0x8
      40:	31f800ff 	andi	t8,t7,0xff
      44:	15200047 	bnez	t1,164 <EnOkuta_Init+0x164>
      48:	a6180196 	sh	t8,406(s0)
      4c:	3c060600 	lui	a2,0x600
      50:	3c070600 	lui	a3,0x600
      54:	260a0198 	addiu	t2,s0,408
      58:	260b027c 	addiu	t3,s0,636
      5c:	240c0026 	li	t4,38
      60:	afac0018 	sw	t4,24(sp)
      64:	afab0014 	sw	t3,20(sp)
      68:	afaa0010 	sw	t2,16(sp)
      6c:	24e73c64 	addiu	a3,a3,15460
      70:	24c63660 	addiu	a2,a2,13920
      74:	02202025 	move	a0,s1
      78:	0c000000 	jal	0 <EnOkuta_Init>
      7c:	2605014c 	addiu	a1,s0,332
      80:	26050370 	addiu	a1,s0,880
      84:	afa50030 	sw	a1,48(sp)
      88:	0c000000 	jal	0 <EnOkuta_Init>
      8c:	02202025 	move	a0,s1
      90:	3c070000 	lui	a3,0x0
      94:	8fa50030 	lw	a1,48(sp)
      98:	24e70000 	addiu	a3,a3,0
      9c:	02202025 	move	a0,s1
      a0:	0c000000 	jal	0 <EnOkuta_Init>
      a4:	02003025 	move	a2,s0
      a8:	3c050000 	lui	a1,0x0
      ac:	3c060000 	lui	a2,0x0
      b0:	24c60000 	addiu	a2,a2,0
      b4:	24a50000 	addiu	a1,a1,0
      b8:	0c000000 	jal	0 <EnOkuta_Init>
      bc:	26040098 	addiu	a0,s0,152
      c0:	86020196 	lh	v0,406(s0)
      c4:	240100ff 	li	at,255
      c8:	262407c0 	addiu	a0,s1,1984
      cc:	10410002 	beq	v0,at,d8 <EnOkuta_Init+0xd8>
      d0:	26050078 	addiu	a1,s0,120
      d4:	14400002 	bnez	v0,e0 <EnOkuta_Init+0xe0>
      d8:	240d0001 	li	t5,1
      dc:	a60d0196 	sh	t5,406(s0)
      e0:	260e0024 	addiu	t6,s0,36
      e4:	afae0010 	sw	t6,16(sp)
      e8:	27a60034 	addiu	a2,sp,52
      ec:	02003825 	move	a3,s0
      f0:	0c000000 	jal	0 <EnOkuta_Init>
      f4:	afa40030 	sw	a0,48(sp)
      f8:	e6000080 	swc1	$f0,128(s0)
      fc:	8e060024 	lw	a2,36(s0)
     100:	8e07002c 	lw	a3,44(s0)
     104:	27af0038 	addiu	t7,sp,56
     108:	27b8003c 	addiu	t8,sp,60
     10c:	afb80014 	sw	t8,20(sp)
     110:	afaf0010 	sw	t7,16(sp)
     114:	8fa50030 	lw	a1,48(sp)
     118:	0c000000 	jal	0 <EnOkuta_Init>
     11c:	02202025 	move	a0,s1
     120:	10400007 	beqz	v0,140 <EnOkuta_Init+0x140>
     124:	c7a60038 	lwc1	$f6,56(sp)
     128:	c6040080 	lwc1	$f4,128(s0)
     12c:	c7a80038 	lwc1	$f8,56(sp)
     130:	4604303e 	c.le.s	$f6,$f4
     134:	00000000 	nop
     138:	45020006 	bc1fl	154 <EnOkuta_Init+0x154>
     13c:	e608000c 	swc1	$f8,12(s0)
     140:	0c000000 	jal	0 <EnOkuta_Init>
     144:	02002025 	move	a0,s0
     148:	10000002 	b	154 <EnOkuta_Init+0x154>
     14c:	00000000 	nop
     150:	e608000c 	swc1	$f8,12(s0)
     154:	0c000000 	jal	0 <EnOkuta_Init>
     158:	02002025 	move	a0,s0
     15c:	10000026 	b	1f8 <EnOkuta_Init+0x1f8>
     160:	8fbf002c 	lw	ra,44(sp)
     164:	3c054489 	lui	a1,0x4489
     168:	3c060000 	lui	a2,0x0
     16c:	24c60000 	addiu	a2,a2,0
     170:	34a58000 	ori	a1,a1,0x8000
     174:	0c000000 	jal	0 <EnOkuta_Init>
     178:	3c074190 	lui	a3,0x4190
     17c:	8e190004 	lw	t9,4(s0)
     180:	2401fffe 	li	at,-2
     184:	26050370 	addiu	a1,s0,880
     188:	03214024 	and	t0,t9,at
     18c:	ae080004 	sw	t0,4(s0)
     190:	350a0010 	ori	t2,t0,0x10
     194:	ae0a0004 	sw	t2,4(s0)
     198:	afa50030 	sw	a1,48(sp)
     19c:	0c000000 	jal	0 <EnOkuta_Init>
     1a0:	02202025 	move	a0,s1
     1a4:	3c070000 	lui	a3,0x0
     1a8:	8fa50030 	lw	a1,48(sp)
     1ac:	24e70000 	addiu	a3,a3,0
     1b0:	02202025 	move	a0,s1
     1b4:	0c000000 	jal	0 <EnOkuta_Init>
     1b8:	02003025 	move	a2,s0
     1bc:	02202025 	move	a0,s1
     1c0:	26251c24 	addiu	a1,s1,7204
     1c4:	02003025 	move	a2,s0
     1c8:	0c000000 	jal	0 <EnOkuta_Init>
     1cc:	24070006 	li	a3,6
     1d0:	3c014120 	lui	at,0x4120
     1d4:	44815000 	mtc1	at,$f10
     1d8:	3c0c0000 	lui	t4,0x0
     1dc:	240b001e 	li	t3,30
     1e0:	258c0000 	addiu	t4,t4,0
     1e4:	a60b0194 	sh	t3,404(s0)
     1e8:	a60000b6 	sh	zero,182(s0)
     1ec:	ae0c0190 	sw	t4,400(s0)
     1f0:	e60a0068 	swc1	$f10,104(s0)
     1f4:	8fbf002c 	lw	ra,44(sp)
     1f8:	8fb00024 	lw	s0,36(sp)
     1fc:	8fb10028 	lw	s1,40(sp)
     200:	03e00008 	jr	ra
     204:	27bd0048 	addiu	sp,sp,72

00000208 <EnOkuta_Destroy>:
     208:	27bdffe8 	addiu	sp,sp,-24
     20c:	00803025 	move	a2,a0
     210:	afbf0014 	sw	ra,20(sp)
     214:	00a02025 	move	a0,a1
     218:	0c000000 	jal	0 <EnOkuta_Init>
     21c:	24c50370 	addiu	a1,a2,880
     220:	8fbf0014 	lw	ra,20(sp)
     224:	27bd0018 	addiu	sp,sp,24
     228:	03e00008 	jr	ra
     22c:	00000000 	nop

00000230 <func_80AC0890>:
     230:	27bdffb0 	addiu	sp,sp,-80
     234:	f7ba0030 	sdc1	$f26,48(sp)
     238:	3c013e80 	lui	at,0x3e80
     23c:	4481d000 	mtc1	at,$f26
     240:	f7b80028 	sdc1	$f24,40(sp)
     244:	3c0141f0 	lui	at,0x41f0
     248:	4481c000 	mtc1	at,$f24
     24c:	f7b60020 	sdc1	$f22,32(sp)
     250:	3c014120 	lui	at,0x4120
     254:	4481b000 	mtc1	at,$f22
     258:	f7b40018 	sdc1	$f20,24(sp)
     25c:	3c01c120 	lui	at,0xc120
     260:	afb30048 	sw	s3,72(sp)
     264:	afb20044 	sw	s2,68(sp)
     268:	afb10040 	sw	s1,64(sp)
     26c:	afb0003c 	sw	s0,60(sp)
     270:	4481a000 	mtc1	at,$f20
     274:	00a09025 	move	s2,a1
     278:	afbf004c 	sw	ra,76(sp)
     27c:	00008025 	move	s0,zero
     280:	24910024 	addiu	s1,a0,36
     284:	2413000a 	li	s3,10
     288:	4406a000 	mfc1	a2,$f20
     28c:	4407b000 	mfc1	a3,$f22
     290:	02402025 	move	a0,s2
     294:	02202825 	move	a1,s1
     298:	e7b80010 	swc1	$f24,16(sp)
     29c:	0c000000 	jal	0 <EnOkuta_Init>
     2a0:	e7ba0014 	swc1	$f26,20(sp)
     2a4:	26100001 	addiu	s0,s0,1
     2a8:	5613fff8 	bnel	s0,s3,28c <func_80AC0890+0x5c>
     2ac:	4406a000 	mfc1	a2,$f20
     2b0:	8fbf004c 	lw	ra,76(sp)
     2b4:	d7b40018 	ldc1	$f20,24(sp)
     2b8:	d7b60020 	ldc1	$f22,32(sp)
     2bc:	d7b80028 	ldc1	$f24,40(sp)
     2c0:	d7ba0030 	ldc1	$f26,48(sp)
     2c4:	8fb0003c 	lw	s0,60(sp)
     2c8:	8fb10040 	lw	s1,64(sp)
     2cc:	8fb20044 	lw	s2,68(sp)
     2d0:	8fb30048 	lw	s3,72(sp)
     2d4:	03e00008 	jr	ra
     2d8:	27bd0050 	addiu	sp,sp,80

000002dc <func_80AC093C>:
     2dc:	27bdffd8 	addiu	sp,sp,-40
     2e0:	afa5002c 	sw	a1,44(sp)
     2e4:	00802825 	move	a1,a0
     2e8:	afa40028 	sw	a0,40(sp)
     2ec:	afa60030 	sw	a2,48(sp)
     2f0:	87b90032 	lh	t9,50(sp)
     2f4:	afa70034 	sw	a3,52(sp)
     2f8:	00e02025 	move	a0,a3
     2fc:	3c0e0000 	lui	t6,0x0
     300:	3c0f0000 	lui	t7,0x0
     304:	afbf0024 	sw	ra,36(sp)
     308:	25ef0000 	addiu	t7,t7,0
     30c:	25ce0000 	addiu	t6,t6,0
     310:	3c070000 	lui	a3,0x0
     314:	24180190 	li	t8,400
     318:	8fa6002c 	lw	a2,44(sp)
     31c:	afb80018 	sw	t8,24(sp)
     320:	24e70000 	addiu	a3,a3,0
     324:	afae0010 	sw	t6,16(sp)
     328:	afaf0014 	sw	t7,20(sp)
     32c:	0c000000 	jal	0 <EnOkuta_Init>
     330:	afb9001c 	sw	t9,28(sp)
     334:	8fbf0024 	lw	ra,36(sp)
     338:	27bd0028 	addiu	sp,sp,40
     33c:	03e00008 	jr	ra
     340:	00000000 	nop

00000344 <func_80AC09A4>:
     344:	27bdffe0 	addiu	sp,sp,-32
     348:	afa40020 	sw	a0,32(sp)
     34c:	afa50024 	sw	a1,36(sp)
     350:	00a02025 	move	a0,a1
     354:	8fa50020 	lw	a1,32(sp)
     358:	afbf001c 	sw	ra,28(sp)
     35c:	240e0514 	li	t6,1300
     360:	afae0014 	sw	t6,20(sp)
     364:	afa00010 	sw	zero,16(sp)
     368:	00003025 	move	a2,zero
     36c:	00003825 	move	a3,zero
     370:	0c000000 	jal	0 <EnOkuta_Init>
     374:	24a50008 	addiu	a1,a1,8
     378:	8fbf001c 	lw	ra,28(sp)
     37c:	27bd0020 	addiu	sp,sp,32
     380:	03e00008 	jr	ra
     384:	00000000 	nop

00000388 <func_80AC09E8>:
     388:	27bdffd0 	addiu	sp,sp,-48
     38c:	afbf001c 	sw	ra,28(sp)
     390:	afa50034 	sw	a1,52(sp)
     394:	c4840024 	lwc1	$f4,36(a0)
     398:	3c0f0001 	lui	t7,0x1
     39c:	01e57821 	addu	t7,t7,a1
     3a0:	e7a40024 	swc1	$f4,36(sp)
     3a4:	c486000c 	lwc1	$f6,12(a0)
     3a8:	24010007 	li	at,7
     3ac:	e7a60028 	swc1	$f6,40(sp)
     3b0:	c488002c 	lwc1	$f8,44(a0)
     3b4:	e7a8002c 	swc1	$f8,44(sp)
     3b8:	8def1de4 	lw	t7,7652(t7)
     3bc:	01e1001b 	divu	zero,t7,at
     3c0:	0000c010 	mfhi	t8
     3c4:	57000015 	bnezl	t8,41c <func_80AC09E8+0x94>
     3c8:	8fbf001c 	lw	ra,28(sp)
     3cc:	8c880190 	lw	t0,400(a0)
     3d0:	3c190000 	lui	t9,0x0
     3d4:	27390000 	addiu	t9,t9,0
     3d8:	1728000a 	bne	t9,t0,404 <func_80AC09E8+0x7c>
     3dc:	27a50024 	addiu	a1,sp,36
     3e0:	c48a0028 	lwc1	$f10,40(a0)
     3e4:	c490000c 	lwc1	$f16,12(a0)
     3e8:	3c014248 	lui	at,0x4248
     3ec:	44812000 	mtc1	at,$f4
     3f0:	46105481 	sub.s	$f18,$f10,$f16
     3f4:	4604903c 	c.lt.s	$f18,$f4
     3f8:	00000000 	nop
     3fc:	45020007 	bc1fl	41c <func_80AC09E8+0x94>
     400:	8fbf001c 	lw	ra,28(sp)
     404:	8fa40034 	lw	a0,52(sp)
     408:	240600fa 	li	a2,250
     40c:	2407028a 	li	a3,650
     410:	0c000000 	jal	0 <EnOkuta_Init>
     414:	afa00010 	sw	zero,16(sp)
     418:	8fbf001c 	lw	ra,28(sp)
     41c:	27bd0030 	addiu	sp,sp,48
     420:	03e00008 	jr	ra
     424:	00000000 	nop

00000428 <func_80AC0A88>:
     428:	8c8e0004 	lw	t6,4(a0)
     42c:	c484000c 	lwc1	$f4,12(a0)
     430:	2401fffe 	li	at,-2
     434:	3c180000 	lui	t8,0x0
     438:	27180000 	addiu	t8,t8,0
     43c:	01c17824 	and	t7,t6,at
     440:	ac800134 	sw	zero,308(a0)
     444:	ac8f0004 	sw	t7,4(a0)
     448:	ac980190 	sw	t8,400(a0)
     44c:	03e00008 	jr	ra
     450:	e4840028 	swc1	$f4,40(a0)

00000454 <func_80AC0AB4>:
     454:	27bdffe8 	addiu	sp,sp,-24
     458:	afa5001c 	sw	a1,28(sp)
     45c:	afbf0014 	sw	ra,20(sp)
     460:	8c980004 	lw	t8,4(a0)
     464:	848f008a 	lh	t7,138(a0)
     468:	3c0e0000 	lui	t6,0x0
     46c:	25ce0000 	addiu	t6,t6,0
     470:	37190001 	ori	t9,t8,0x1
     474:	00803025 	move	a2,a0
     478:	ac8e0134 	sw	t6,308(a0)
     47c:	ac990004 	sw	t9,4(a0)
     480:	3c050600 	lui	a1,0x600
     484:	a48f00b6 	sh	t7,182(a0)
     488:	afa60018 	sw	a2,24(sp)
     48c:	24a53c64 	addiu	a1,a1,15460
     490:	0c000000 	jal	0 <EnOkuta_Init>
     494:	2484014c 	addiu	a0,a0,332
     498:	8fa40018 	lw	a0,24(sp)
     49c:	0c000000 	jal	0 <EnOkuta_Init>
     4a0:	8fa5001c 	lw	a1,28(sp)
     4a4:	8fa60018 	lw	a2,24(sp)
     4a8:	3c080000 	lui	t0,0x0
     4ac:	25080000 	addiu	t0,t0,0
     4b0:	acc80190 	sw	t0,400(a2)
     4b4:	8fbf0014 	lw	ra,20(sp)
     4b8:	27bd0018 	addiu	sp,sp,24
     4bc:	03e00008 	jr	ra
     4c0:	00000000 	nop

000004c4 <func_80AC0B24>:
     4c4:	27bdffe8 	addiu	sp,sp,-24
     4c8:	afbf0014 	sw	ra,20(sp)
     4cc:	afa40018 	sw	a0,24(sp)
     4d0:	3c050600 	lui	a1,0x600
     4d4:	24a50ac0 	addiu	a1,a1,2752
     4d8:	0c000000 	jal	0 <EnOkuta_Init>
     4dc:	2484014c 	addiu	a0,a0,332
     4e0:	8faf0018 	lw	t7,24(sp)
     4e4:	3c0e0000 	lui	t6,0x0
     4e8:	25ce0000 	addiu	t6,t6,0
     4ec:	adee0190 	sw	t6,400(t7)
     4f0:	8fbf0014 	lw	ra,20(sp)
     4f4:	27bd0018 	addiu	sp,sp,24
     4f8:	03e00008 	jr	ra
     4fc:	00000000 	nop

00000500 <func_80AC0B60>:
     500:	27bdffe8 	addiu	sp,sp,-24
     504:	afbf0014 	sw	ra,20(sp)
     508:	00803025 	move	a2,a0
     50c:	3c050600 	lui	a1,0x600
     510:	24a50ddc 	addiu	a1,a1,3548
     514:	afa60018 	sw	a2,24(sp)
     518:	0c000000 	jal	0 <EnOkuta_Init>
     51c:	2484014c 	addiu	a0,a0,332
     520:	8fa60018 	lw	a2,24(sp)
     524:	3c0e0000 	lui	t6,0x0
     528:	25ce0000 	addiu	t6,t6,0
     52c:	8ccf0190 	lw	t7,400(a2)
     530:	3c190000 	lui	t9,0x0
     534:	24180002 	li	t8,2
     538:	15cf0003 	bne	t6,t7,548 <func_80AC0B60+0x48>
     53c:	27390000 	addiu	t9,t9,0
     540:	10000002 	b	54c <func_80AC0B60+0x4c>
     544:	a4d80194 	sh	t8,404(a2)
     548:	a4c00194 	sh	zero,404(a2)
     54c:	acd90190 	sw	t9,400(a2)
     550:	8fbf0014 	lw	ra,20(sp)
     554:	27bd0018 	addiu	sp,sp,24
     558:	03e00008 	jr	ra
     55c:	00000000 	nop

00000560 <func_80AC0BC0>:
     560:	27bdffd8 	addiu	sp,sp,-40
     564:	afb00018 	sw	s0,24(sp)
     568:	afa5002c 	sw	a1,44(sp)
     56c:	00808025 	move	s0,a0
     570:	afbf001c 	sw	ra,28(sp)
     574:	3c050600 	lui	a1,0x600
     578:	24a50344 	addiu	a1,a1,836
     57c:	0c000000 	jal	0 <EnOkuta_Init>
     580:	2484014c 	addiu	a0,a0,332
     584:	8e0e0190 	lw	t6,400(s0)
     588:	3c020000 	lui	v0,0x0
     58c:	24420000 	addiu	v0,v0,0
     590:	104e0003 	beq	v0,t6,5a0 <func_80AC0BC0+0x40>
     594:	3c014120 	lui	at,0x4120
     598:	860f0196 	lh	t7,406(s0)
     59c:	a60f0194 	sh	t7,404(s0)
     5a0:	44811000 	mtc1	at,$f2
     5a4:	3c0141a0 	lui	at,0x41a0
     5a8:	44813000 	mtc1	at,$f6
     5ac:	c6040094 	lwc1	$f4,148(s0)
     5b0:	3c014248 	lui	at,0x4248
     5b4:	44815000 	mtc1	at,$f10
     5b8:	46062000 	add.s	$f0,$f4,$f6
     5bc:	02002025 	move	a0,s0
     5c0:	4602003c 	c.lt.s	$f0,$f2
     5c4:	e6000360 	swc1	$f0,864(s0)
     5c8:	45020004 	bc1fl	5dc <func_80AC0BC0+0x7c>
     5cc:	c6080360 	lwc1	$f8,864(s0)
     5d0:	10000003 	b	5e0 <func_80AC0BC0+0x80>
     5d4:	e6020360 	swc1	$f2,864(s0)
     5d8:	c6080360 	lwc1	$f8,864(s0)
     5dc:	e6080360 	swc1	$f8,864(s0)
     5e0:	c6000360 	lwc1	$f0,864(s0)
     5e4:	8fa5002c 	lw	a1,44(sp)
     5e8:	4600503c 	c.lt.s	$f10,$f0
     5ec:	00000000 	nop
     5f0:	45020006 	bc1fl	60c <func_80AC0BC0+0xac>
     5f4:	3c014248 	lui	at,0x4248
     5f8:	0c000000 	jal	0 <EnOkuta_Init>
     5fc:	afa20024 	sw	v0,36(sp)
     600:	8fa20024 	lw	v0,36(sp)
     604:	c6000360 	lwc1	$f0,864(s0)
     608:	3c014248 	lui	at,0x4248
     60c:	44818000 	mtc1	at,$f16
     610:	02002025 	move	a0,s0
     614:	240538c2 	li	a1,14530
     618:	4600803c 	c.lt.s	$f16,$f0
     61c:	00000000 	nop
     620:	45020005 	bc1fl	638 <func_80AC0BC0+0xd8>
     624:	ae020190 	sw	v0,400(s0)
     628:	0c000000 	jal	0 <EnOkuta_Init>
     62c:	afa20024 	sw	v0,36(sp)
     630:	8fa20024 	lw	v0,36(sp)
     634:	ae020190 	sw	v0,400(s0)
     638:	8fbf001c 	lw	ra,28(sp)
     63c:	8fb00018 	lw	s0,24(sp)
     640:	27bd0028 	addiu	sp,sp,40
     644:	03e00008 	jr	ra
     648:	00000000 	nop

0000064c <func_80AC0CAC>:
     64c:	27bdffd8 	addiu	sp,sp,-40
     650:	afb00020 	sw	s0,32(sp)
     654:	00808025 	move	s0,a0
     658:	afbf0024 	sw	ra,36(sp)
     65c:	3c050600 	lui	a1,0x600
     660:	24a53910 	addiu	a1,a1,14608
     664:	2484014c 	addiu	a0,a0,332
     668:	0c000000 	jal	0 <EnOkuta_Init>
     66c:	3c06c0a0 	lui	a2,0xc0a0
     670:	240e000b 	li	t6,11
     674:	afae0010 	sw	t6,16(sp)
     678:	02002025 	move	a0,s0
     67c:	24054000 	li	a1,16384
     680:	240600ff 	li	a2,255
     684:	0c000000 	jal	0 <EnOkuta_Init>
     688:	00003825 	move	a3,zero
     68c:	920f0381 	lbu	t7,897(s0)
     690:	3c053c23 	lui	a1,0x3c23
     694:	34a5d70a 	ori	a1,a1,0xd70a
     698:	31f8fffd 	andi	t8,t7,0xfffd
     69c:	a2180381 	sb	t8,897(s0)
     6a0:	0c000000 	jal	0 <EnOkuta_Init>
     6a4:	02002025 	move	a0,s0
     6a8:	02002025 	move	a0,s0
     6ac:	0c000000 	jal	0 <EnOkuta_Init>
     6b0:	240538c6 	li	a1,14534
     6b4:	3c190000 	lui	t9,0x0
     6b8:	27390000 	addiu	t9,t9,0
     6bc:	ae190190 	sw	t9,400(s0)
     6c0:	8fbf0024 	lw	ra,36(sp)
     6c4:	8fb00020 	lw	s0,32(sp)
     6c8:	27bd0028 	addiu	sp,sp,40
     6cc:	03e00008 	jr	ra
     6d0:	00000000 	nop

000006d4 <func_80AC0D34>:
     6d4:	27bdffe8 	addiu	sp,sp,-24
     6d8:	afbf0014 	sw	ra,20(sp)
     6dc:	00803825 	move	a3,a0
     6e0:	3c050600 	lui	a1,0x600
     6e4:	24a508fc 	addiu	a1,a1,2300
     6e8:	afa70018 	sw	a3,24(sp)
     6ec:	2484014c 	addiu	a0,a0,332
     6f0:	0c000000 	jal	0 <EnOkuta_Init>
     6f4:	3c06c040 	lui	a2,0xc040
     6f8:	8fa70018 	lw	a3,24(sp)
     6fc:	3c0e0000 	lui	t6,0x0
     700:	25ce0000 	addiu	t6,t6,0
     704:	a4e00194 	sh	zero,404(a3)
     708:	acee0190 	sw	t6,400(a3)
     70c:	8fbf0014 	lw	ra,20(sp)
     710:	27bd0018 	addiu	sp,sp,24
     714:	03e00008 	jr	ra
     718:	00000000 	nop

0000071c <func_80AC0D7C>:
     71c:	27bdffe0 	addiu	sp,sp,-32
     720:	afbf001c 	sw	ra,28(sp)
     724:	240e0050 	li	t6,80
     728:	a48e0194 	sh	t6,404(a0)
     72c:	240f0050 	li	t7,80
     730:	afaf0010 	sw	t7,16(sp)
     734:	afa40020 	sw	a0,32(sp)
     738:	00002825 	move	a1,zero
     73c:	240600ff 	li	a2,255
     740:	0c000000 	jal	0 <EnOkuta_Init>
     744:	00003825 	move	a3,zero
     748:	8fa40020 	lw	a0,32(sp)
     74c:	3c180000 	lui	t8,0x0
     750:	27180000 	addiu	t8,t8,0
     754:	ac980190 	sw	t8,400(a0)
     758:	8fbf001c 	lw	ra,28(sp)
     75c:	27bd0020 	addiu	sp,sp,32
     760:	03e00008 	jr	ra
     764:	00000000 	nop

00000768 <func_80AC0DC8>:
     768:	27bdffa8 	addiu	sp,sp,-88
     76c:	afb00030 	sw	s0,48(sp)
     770:	00808025 	move	s0,a0
     774:	afbf0034 	sw	ra,52(sp)
     778:	afa5005c 	sw	a1,92(sp)
     77c:	0c000000 	jal	0 <EnOkuta_Init>
     780:	848400b6 	lh	a0,182(a0)
     784:	e7a0003c 	swc1	$f0,60(sp)
     788:	0c000000 	jal	0 <EnOkuta_Init>
     78c:	860400b6 	lh	a0,182(s0)
     790:	3c0141c8 	lui	at,0x41c8
     794:	44816000 	mtc1	at,$f12
     798:	c7a6003c 	lwc1	$f6,60(sp)
     79c:	c6040024 	lwc1	$f4,36(s0)
     7a0:	3c0140c0 	lui	at,0x40c0
     7a4:	46066202 	mul.s	$f8,$f12,$f6
     7a8:	44819000 	mtc1	at,$f18
     7ac:	8fa5005c 	lw	a1,92(sp)
     7b0:	24190010 	li	t9,16
     7b4:	2406000e 	li	a2,14
     7b8:	24a41c24 	addiu	a0,a1,7204
     7bc:	46082280 	add.s	$f10,$f4,$f8
     7c0:	46006202 	mul.s	$f8,$f12,$f0
     7c4:	e7aa004c 	swc1	$f10,76(sp)
     7c8:	c6100028 	lwc1	$f16,40(s0)
     7cc:	8fa7004c 	lw	a3,76(sp)
     7d0:	46128181 	sub.s	$f6,$f16,$f18
     7d4:	e7a60050 	swc1	$f6,80(sp)
     7d8:	c604002c 	lwc1	$f4,44(s0)
     7dc:	c7b00050 	lwc1	$f16,80(sp)
     7e0:	46082280 	add.s	$f10,$f4,$f8
     7e4:	e7b00010 	swc1	$f16,16(sp)
     7e8:	e7aa0054 	swc1	$f10,84(sp)
     7ec:	c7b20054 	lwc1	$f18,84(sp)
     7f0:	e7b20014 	swc1	$f18,20(sp)
     7f4:	860e00b4 	lh	t6,180(s0)
     7f8:	afae0018 	sw	t6,24(sp)
     7fc:	860f00b6 	lh	t7,182(s0)
     800:	afaf001c 	sw	t7,28(sp)
     804:	861800b8 	lh	t8,184(s0)
     808:	e7a00038 	swc1	$f0,56(sp)
     80c:	afb90024 	sw	t9,36(sp)
     810:	0c000000 	jal	0 <EnOkuta_Init>
     814:	afb80020 	sw	t8,32(sp)
     818:	c7a20038 	lwc1	$f2,56(sp)
     81c:	1040001a 	beqz	v0,888 <func_80AC0DC8+0x120>
     820:	c7ae003c 	lwc1	$f14,60(sp)
     824:	3c014220 	lui	at,0x4220
     828:	44810000 	mtc1	at,$f0
     82c:	c6060024 	lwc1	$f6,36(s0)
     830:	3c013fc0 	lui	at,0x3fc0
     834:	460e0102 	mul.s	$f4,$f0,$f14
     838:	44816000 	mtc1	at,$f12
     83c:	27a4004c 	addiu	a0,sp,76
     840:	46020402 	mul.s	$f16,$f0,$f2
     844:	27a50040 	addiu	a1,sp,64
     848:	24060014 	li	a2,20
     84c:	8fa7005c 	lw	a3,92(sp)
     850:	46043200 	add.s	$f8,$f6,$f4
     854:	460e6102 	mul.s	$f4,$f12,$f14
     858:	e7a8004c 	swc1	$f8,76(sp)
     85c:	c60a002c 	lwc1	$f10,44(s0)
     860:	44804000 	mtc1	zero,$f8
     864:	46105480 	add.s	$f18,$f10,$f16
     868:	46026282 	mul.s	$f10,$f12,$f2
     86c:	e7b20054 	swc1	$f18,84(sp)
     870:	c6060028 	lwc1	$f6,40(s0)
     874:	e7a40040 	swc1	$f4,64(sp)
     878:	e7a80044 	swc1	$f8,68(sp)
     87c:	e7aa0048 	swc1	$f10,72(sp)
     880:	0c000000 	jal	0 <EnOkuta_Init>
     884:	e7a60050 	swc1	$f6,80(sp)
     888:	02002025 	move	a0,s0
     88c:	0c000000 	jal	0 <EnOkuta_Init>
     890:	2405387e 	li	a1,14462
     894:	8fbf0034 	lw	ra,52(sp)
     898:	8fb00030 	lw	s0,48(sp)
     89c:	27bd0058 	addiu	sp,sp,88
     8a0:	03e00008 	jr	ra
     8a4:	00000000 	nop

000008a8 <func_80AC0F08>:
     8a8:	27bdffe8 	addiu	sp,sp,-24
     8ac:	afbf0014 	sw	ra,20(sp)
     8b0:	3c0143f0 	lui	at,0x43f0
     8b4:	44813000 	mtc1	at,$f6
     8b8:	c4800090 	lwc1	$f0,144(a0)
     8bc:	c484000c 	lwc1	$f4,12(a0)
     8c0:	3c014348 	lui	at,0x4348
     8c4:	4606003c 	c.lt.s	$f0,$f6
     8c8:	e4840028 	swc1	$f4,40(a0)
     8cc:	4502000a 	bc1fl	8f8 <func_80AC0F08+0x50>
     8d0:	8fbf0014 	lw	ra,20(sp)
     8d4:	44814000 	mtc1	at,$f8
     8d8:	00000000 	nop
     8dc:	4600403c 	c.lt.s	$f8,$f0
     8e0:	00000000 	nop
     8e4:	45020004 	bc1fl	8f8 <func_80AC0F08+0x50>
     8e8:	8fbf0014 	lw	ra,20(sp)
     8ec:	0c000000 	jal	0 <EnOkuta_Init>
     8f0:	00000000 	nop
     8f4:	8fbf0014 	lw	ra,20(sp)
     8f8:	27bd0018 	addiu	sp,sp,24
     8fc:	03e00008 	jr	ra
     900:	00000000 	nop

00000904 <func_80AC0F64>:
     904:	27bdffd8 	addiu	sp,sp,-40
     908:	afb00018 	sw	s0,24(sp)
     90c:	00808025 	move	s0,a0
     910:	afbf001c 	sw	ra,28(sp)
     914:	2484014c 	addiu	a0,a0,332
     918:	afa5002c 	sw	a1,44(sp)
     91c:	0c000000 	jal	0 <EnOkuta_Init>
     920:	afa40020 	sw	a0,32(sp)
     924:	10400010 	beqz	v0,968 <func_80AC0F64+0x64>
     928:	3c014080 	lui	at,0x4080
     92c:	3c014320 	lui	at,0x4320
     930:	44813000 	mtc1	at,$f6
     934:	c6040090 	lwc1	$f4,144(s0)
     938:	4606203c 	c.lt.s	$f4,$f6
     93c:	00000000 	nop
     940:	45000005 	bc1f	958 <func_80AC0F64+0x54>
     944:	00000000 	nop
     948:	0c000000 	jal	0 <EnOkuta_Init>
     94c:	02002025 	move	a0,s0
     950:	10000020 	b	9d4 <func_80AC0F64+0xd0>
     954:	8fa40020 	lw	a0,32(sp)
     958:	0c000000 	jal	0 <EnOkuta_Init>
     95c:	02002025 	move	a0,s0
     960:	1000001c 	b	9d4 <func_80AC0F64+0xd0>
     964:	8fa40020 	lw	a0,32(sp)
     968:	c6000164 	lwc1	$f0,356(s0)
     96c:	44814000 	mtc1	at,$f8
     970:	3c013e80 	lui	at,0x3e80
     974:	8fa40020 	lw	a0,32(sp)
     978:	4608003e 	c.le.s	$f0,$f8
     97c:	00000000 	nop
     980:	4500000c 	bc1f	9b4 <func_80AC0F64+0xb0>
     984:	00000000 	nop
     988:	44815000 	mtc1	at,$f10
     98c:	3c010000 	lui	at,0x0
     990:	c4320000 	lwc1	$f18,0(at)
     994:	460a0402 	mul.s	$f16,$f0,$f10
     998:	02002025 	move	a0,s0
     99c:	46128102 	mul.s	$f4,$f16,$f18
     9a0:	44052000 	mfc1	a1,$f4
     9a4:	0c000000 	jal	0 <EnOkuta_Init>
     9a8:	00000000 	nop
     9ac:	10000009 	b	9d4 <func_80AC0F64+0xd0>
     9b0:	8fa40020 	lw	a0,32(sp)
     9b4:	0c000000 	jal	0 <EnOkuta_Init>
     9b8:	3c0540a0 	lui	a1,0x40a0
     9bc:	10400004 	beqz	v0,9d0 <func_80AC0F64+0xcc>
     9c0:	02002025 	move	a0,s0
     9c4:	3c053c23 	lui	a1,0x3c23
     9c8:	0c000000 	jal	0 <EnOkuta_Init>
     9cc:	34a5d70a 	ori	a1,a1,0xd70a
     9d0:	8fa40020 	lw	a0,32(sp)
     9d4:	0c000000 	jal	0 <EnOkuta_Init>
     9d8:	3c054000 	lui	a1,0x4000
     9dc:	10400003 	beqz	v0,9ec <func_80AC0F64+0xe8>
     9e0:	02002025 	move	a0,s0
     9e4:	0c000000 	jal	0 <EnOkuta_Init>
     9e8:	240538c2 	li	a1,14530
     9ec:	8fa40020 	lw	a0,32(sp)
     9f0:	0c000000 	jal	0 <EnOkuta_Init>
     9f4:	3c054140 	lui	a1,0x4140
     9f8:	10400003 	beqz	v0,a08 <func_80AC0F64+0x104>
     9fc:	02002025 	move	a0,s0
     a00:	0c000000 	jal	0 <EnOkuta_Init>
     a04:	240538c3 	li	a1,14531
     a08:	8fa40020 	lw	a0,32(sp)
     a0c:	0c000000 	jal	0 <EnOkuta_Init>
     a10:	3c054040 	lui	a1,0x4040
     a14:	14400004 	bnez	v0,a28 <func_80AC0F64+0x124>
     a18:	8fa40020 	lw	a0,32(sp)
     a1c:	0c000000 	jal	0 <EnOkuta_Init>
     a20:	3c054170 	lui	a1,0x4170
     a24:	10400003 	beqz	v0,a34 <func_80AC0F64+0x130>
     a28:	02002025 	move	a0,s0
     a2c:	0c000000 	jal	0 <EnOkuta_Init>
     a30:	8fa5002c 	lw	a1,44(sp)
     a34:	8fbf001c 	lw	ra,28(sp)
     a38:	8fb00018 	lw	s0,24(sp)
     a3c:	27bd0028 	addiu	sp,sp,40
     a40:	03e00008 	jr	ra
     a44:	00000000 	nop

00000a48 <func_80AC10A8>:
     a48:	27bdffd8 	addiu	sp,sp,-40
     a4c:	afb00018 	sw	s0,24(sp)
     a50:	00808025 	move	s0,a0
     a54:	afbf001c 	sw	ra,28(sp)
     a58:	afa5002c 	sw	a1,44(sp)
     a5c:	8e05000c 	lw	a1,12(s0)
     a60:	24840028 	addiu	a0,a0,40
     a64:	3c063f00 	lui	a2,0x3f00
     a68:	0c000000 	jal	0 <EnOkuta_Init>
     a6c:	3c0741f0 	lui	a3,0x41f0
     a70:	2604014c 	addiu	a0,s0,332
     a74:	0c000000 	jal	0 <EnOkuta_Init>
     a78:	afa40020 	sw	a0,32(sp)
     a7c:	1040000b 	beqz	v0,aac <func_80AC10A8+0x64>
     a80:	3c014080 	lui	at,0x4080
     a84:	02002025 	move	a0,s0
     a88:	0c000000 	jal	0 <EnOkuta_Init>
     a8c:	240538c5 	li	a1,14533
     a90:	02002025 	move	a0,s0
     a94:	0c000000 	jal	0 <EnOkuta_Init>
     a98:	8fa5002c 	lw	a1,44(sp)
     a9c:	0c000000 	jal	0 <EnOkuta_Init>
     aa0:	02002025 	move	a0,s0
     aa4:	10000016 	b	b00 <func_80AC10A8+0xb8>
     aa8:	8fa40020 	lw	a0,32(sp)
     aac:	c6000164 	lwc1	$f0,356(s0)
     ab0:	44812000 	mtc1	at,$f4
     ab4:	3c0140c0 	lui	at,0x40c0
     ab8:	4600203e 	c.le.s	$f4,$f0
     abc:	00000000 	nop
     ac0:	4502000f 	bc1fl	b00 <func_80AC10A8+0xb8>
     ac4:	8fa40020 	lw	a0,32(sp)
     ac8:	44813000 	mtc1	at,$f6
     acc:	3c013f00 	lui	at,0x3f00
     ad0:	44815000 	mtc1	at,$f10
     ad4:	46003201 	sub.s	$f8,$f6,$f0
     ad8:	3c010000 	lui	at,0x0
     adc:	c4320000 	lwc1	$f18,0(at)
     ae0:	02002025 	move	a0,s0
     ae4:	460a4402 	mul.s	$f16,$f8,$f10
     ae8:	00000000 	nop
     aec:	46128102 	mul.s	$f4,$f16,$f18
     af0:	44052000 	mfc1	a1,$f4
     af4:	0c000000 	jal	0 <EnOkuta_Init>
     af8:	00000000 	nop
     afc:	8fa40020 	lw	a0,32(sp)
     b00:	0c000000 	jal	0 <EnOkuta_Init>
     b04:	3c054000 	lui	a1,0x4000
     b08:	10400003 	beqz	v0,b18 <func_80AC10A8+0xd0>
     b0c:	02002025 	move	a0,s0
     b10:	0c000000 	jal	0 <EnOkuta_Init>
     b14:	240538c4 	li	a1,14532
     b18:	8fa40020 	lw	a0,32(sp)
     b1c:	0c000000 	jal	0 <EnOkuta_Init>
     b20:	3c054080 	lui	a1,0x4080
     b24:	10400003 	beqz	v0,b34 <func_80AC10A8+0xec>
     b28:	02002025 	move	a0,s0
     b2c:	0c000000 	jal	0 <EnOkuta_Init>
     b30:	8fa5002c 	lw	a1,44(sp)
     b34:	8fbf001c 	lw	ra,28(sp)
     b38:	8fb00018 	lw	s0,24(sp)
     b3c:	27bd0028 	addiu	sp,sp,40
     b40:	03e00008 	jr	ra
     b44:	00000000 	nop

00000b48 <func_80AC11A8>:
     b48:	27bdffc8 	addiu	sp,sp,-56
     b4c:	afbf0024 	sw	ra,36(sp)
     b50:	afb00020 	sw	s0,32(sp)
     b54:	afa5003c 	sw	a1,60(sp)
     b58:	c484000c 	lwc1	$f4,12(a0)
     b5c:	00808025 	move	s0,a0
     b60:	2484014c 	addiu	a0,a0,332
     b64:	e484fedc 	swc1	$f4,-292(a0)
     b68:	0c000000 	jal	0 <EnOkuta_Init>
     b6c:	afa4002c 	sw	a0,44(sp)
     b70:	8fa4002c 	lw	a0,44(sp)
     b74:	0c000000 	jal	0 <EnOkuta_Init>
     b78:	24050000 	li	a1,0
     b7c:	10400005 	beqz	v0,b94 <func_80AC11A8+0x4c>
     b80:	3c053f00 	lui	a1,0x3f00
     b84:	86020194 	lh	v0,404(s0)
     b88:	10400002 	beqz	v0,b94 <func_80AC11A8+0x4c>
     b8c:	244effff 	addiu	t6,v0,-1
     b90:	a60e0194 	sh	t6,404(s0)
     b94:	0c000000 	jal	0 <EnOkuta_Init>
     b98:	8fa4002c 	lw	a0,44(sp)
     b9c:	10400003 	beqz	v0,bac <func_80AC11A8+0x64>
     ba0:	02002025 	move	a0,s0
     ba4:	0c000000 	jal	0 <EnOkuta_Init>
     ba8:	240538c1 	li	a1,14529
     bac:	3c014320 	lui	at,0x4320
     bb0:	44813000 	mtc1	at,$f6
     bb4:	c6000090 	lwc1	$f0,144(s0)
     bb8:	3c01440c 	lui	at,0x440c
     bbc:	4606003c 	c.lt.s	$f0,$f6
     bc0:	00000000 	nop
     bc4:	45010009 	bc1t	bec <func_80AC11A8+0xa4>
     bc8:	00000000 	nop
     bcc:	44814000 	mtc1	at,$f8
     bd0:	260400b6 	addiu	a0,s0,182
     bd4:	24060003 	li	a2,3
     bd8:	4600403c 	c.lt.s	$f8,$f0
     bdc:	2407071c 	li	a3,1820
     be0:	240f038e 	li	t7,910
     be4:	45020006 	bc1fl	c00 <func_80AC11A8+0xb8>
     be8:	8605008a 	lh	a1,138(s0)
     bec:	0c000000 	jal	0 <EnOkuta_Init>
     bf0:	02002025 	move	a0,s0
     bf4:	1000001c 	b	c68 <func_80AC11A8+0x120>
     bf8:	8fbf0024 	lw	ra,36(sp)
     bfc:	8605008a 	lh	a1,138(s0)
     c00:	0c000000 	jal	0 <EnOkuta_Init>
     c04:	afaf0010 	sw	t7,16(sp)
     c08:	04400004 	bltz	v0,c1c <func_80AC11A8+0xd4>
     c0c:	00021c00 	sll	v1,v0,0x10
     c10:	00021c00 	sll	v1,v0,0x10
     c14:	10000003 	b	c24 <func_80AC11A8+0xdc>
     c18:	00031c03 	sra	v1,v1,0x10
     c1c:	00031c03 	sra	v1,v1,0x10
     c20:	00031823 	negu	v1,v1
     c24:	2861038e 	slti	at,v1,910
     c28:	5020000f 	beqzl	at,c68 <func_80AC11A8+0x120>
     c2c:	8fbf0024 	lw	ra,36(sp)
     c30:	86180194 	lh	t8,404(s0)
     c34:	3c014348 	lui	at,0x4348
     c38:	5700000b 	bnezl	t8,c68 <func_80AC11A8+0x120>
     c3c:	8fbf0024 	lw	ra,36(sp)
     c40:	c60a0094 	lwc1	$f10,148(s0)
     c44:	44818000 	mtc1	at,$f16
     c48:	02002025 	move	a0,s0
     c4c:	4610503c 	c.lt.s	$f10,$f16
     c50:	00000000 	nop
     c54:	45020004 	bc1fl	c68 <func_80AC11A8+0x120>
     c58:	8fbf0024 	lw	ra,36(sp)
     c5c:	0c000000 	jal	0 <EnOkuta_Init>
     c60:	8fa5003c 	lw	a1,60(sp)
     c64:	8fbf0024 	lw	ra,36(sp)
     c68:	8fb00020 	lw	s0,32(sp)
     c6c:	27bd0038 	addiu	sp,sp,56
     c70:	03e00008 	jr	ra
     c74:	00000000 	nop

00000c78 <func_80AC12D8>:
     c78:	27bdffd8 	addiu	sp,sp,-40
     c7c:	afb00018 	sw	s0,24(sp)
     c80:	00808025 	move	s0,a0
     c84:	afbf001c 	sw	ra,28(sp)
     c88:	afa5002c 	sw	a1,44(sp)
     c8c:	8605008a 	lh	a1,138(s0)
     c90:	248400b6 	addiu	a0,a0,182
     c94:	24060003 	li	a2,3
     c98:	0c000000 	jal	0 <EnOkuta_Init>
     c9c:	2407071c 	li	a3,1820
     ca0:	2604014c 	addiu	a0,s0,332
     ca4:	0c000000 	jal	0 <EnOkuta_Init>
     ca8:	afa40020 	sw	a0,32(sp)
     cac:	10400011 	beqz	v0,cf4 <func_80AC12D8+0x7c>
     cb0:	3c014150 	lui	at,0x4150
     cb4:	86020194 	lh	v0,404(s0)
     cb8:	02002025 	move	a0,s0
     cbc:	10400003 	beqz	v0,ccc <func_80AC12D8+0x54>
     cc0:	244effff 	addiu	t6,v0,-1
     cc4:	a60e0194 	sh	t6,404(s0)
     cc8:	86020194 	lh	v0,404(s0)
     ccc:	14400005 	bnez	v0,ce4 <func_80AC12D8+0x6c>
     cd0:	00000000 	nop
     cd4:	0c000000 	jal	0 <EnOkuta_Init>
     cd8:	02002025 	move	a0,s0
     cdc:	10000039 	b	dc4 <func_80AC12D8+0x14c>
     ce0:	3c014320 	lui	at,0x4320
     ce4:	0c000000 	jal	0 <EnOkuta_Init>
     ce8:	8fa5002c 	lw	a1,44(sp)
     cec:	10000035 	b	dc4 <func_80AC12D8+0x14c>
     cf0:	3c014320 	lui	at,0x4320
     cf4:	c6000164 	lwc1	$f0,356(s0)
     cf8:	44812000 	mtc1	at,$f4
     cfc:	3c010000 	lui	at,0x0
     d00:	4604003c 	c.lt.s	$f0,$f4
     d04:	00000000 	nop
     d08:	4502000b 	bc1fl	d38 <func_80AC12D8+0xc0>
     d0c:	8fa40020 	lw	a0,32(sp)
     d10:	c4260000 	lwc1	$f6,0(at)
     d14:	46003302 	mul.s	$f12,$f6,$f0
     d18:	0c000000 	jal	0 <EnOkuta_Init>
     d1c:	00000000 	nop
     d20:	c6080360 	lwc1	$f8,864(s0)
     d24:	c610000c 	lwc1	$f16,12(s0)
     d28:	46080282 	mul.s	$f10,$f0,$f8
     d2c:	46105480 	add.s	$f18,$f10,$f16
     d30:	e6120028 	swc1	$f18,40(s0)
     d34:	8fa40020 	lw	a0,32(sp)
     d38:	0c000000 	jal	0 <EnOkuta_Init>
     d3c:	3c0540c0 	lui	a1,0x40c0
     d40:	10400003 	beqz	v0,d50 <func_80AC12D8+0xd8>
     d44:	02002025 	move	a0,s0
     d48:	0c000000 	jal	0 <EnOkuta_Init>
     d4c:	8fa5002c 	lw	a1,44(sp)
     d50:	3c014248 	lui	at,0x4248
     d54:	44812000 	mtc1	at,$f4
     d58:	c6060360 	lwc1	$f6,864(s0)
     d5c:	8fa40020 	lw	a0,32(sp)
     d60:	4606203c 	c.lt.s	$f4,$f6
     d64:	00000000 	nop
     d68:	45020008 	bc1fl	d8c <func_80AC12D8+0x114>
     d6c:	3c014248 	lui	at,0x4248
     d70:	0c000000 	jal	0 <EnOkuta_Init>
     d74:	3c054150 	lui	a1,0x4150
     d78:	10400003 	beqz	v0,d88 <func_80AC12D8+0x110>
     d7c:	02002025 	move	a0,s0
     d80:	0c000000 	jal	0 <EnOkuta_Init>
     d84:	8fa5002c 	lw	a1,44(sp)
     d88:	3c014248 	lui	at,0x4248
     d8c:	44814000 	mtc1	at,$f8
     d90:	c60a0360 	lwc1	$f10,864(s0)
     d94:	8fa40020 	lw	a0,32(sp)
     d98:	460a403c 	c.lt.s	$f8,$f10
     d9c:	00000000 	nop
     da0:	45020008 	bc1fl	dc4 <func_80AC12D8+0x14c>
     da4:	3c014320 	lui	at,0x4320
     da8:	0c000000 	jal	0 <EnOkuta_Init>
     dac:	3c054150 	lui	a1,0x4150
     db0:	10400003 	beqz	v0,dc0 <func_80AC12D8+0x148>
     db4:	02002025 	move	a0,s0
     db8:	0c000000 	jal	0 <EnOkuta_Init>
     dbc:	240538c3 	li	a1,14531
     dc0:	3c014320 	lui	at,0x4320
     dc4:	44819000 	mtc1	at,$f18
     dc8:	c6100090 	lwc1	$f16,144(s0)
     dcc:	4612803c 	c.lt.s	$f16,$f18
     dd0:	00000000 	nop
     dd4:	45020004 	bc1fl	de8 <func_80AC12D8+0x170>
     dd8:	8fbf001c 	lw	ra,28(sp)
     ddc:	0c000000 	jal	0 <EnOkuta_Init>
     de0:	02002025 	move	a0,s0
     de4:	8fbf001c 	lw	ra,28(sp)
     de8:	8fb00018 	lw	s0,24(sp)
     dec:	27bd0028 	addiu	sp,sp,40
     df0:	03e00008 	jr	ra
     df4:	00000000 	nop

00000df8 <func_80AC1458>:
     df8:	27bdffe8 	addiu	sp,sp,-24
     dfc:	afbf0014 	sw	ra,20(sp)
     e00:	afa40018 	sw	a0,24(sp)
     e04:	afa5001c 	sw	a1,28(sp)
     e08:	0c000000 	jal	0 <EnOkuta_Init>
     e0c:	2484014c 	addiu	a0,a0,332
     e10:	50400004 	beqzl	v0,e24 <func_80AC1458+0x2c>
     e14:	8fae0018 	lw	t6,24(sp)
     e18:	0c000000 	jal	0 <EnOkuta_Init>
     e1c:	8fa40018 	lw	a0,24(sp)
     e20:	8fae0018 	lw	t6,24(sp)
     e24:	3c063f00 	lui	a2,0x3f00
     e28:	3c0740a0 	lui	a3,0x40a0
     e2c:	25c40028 	addiu	a0,t6,40
     e30:	0c000000 	jal	0 <EnOkuta_Init>
     e34:	8dc5000c 	lw	a1,12(t6)
     e38:	8fbf0014 	lw	ra,20(sp)
     e3c:	27bd0018 	addiu	sp,sp,24
     e40:	03e00008 	jr	ra
     e44:	00000000 	nop

00000e48 <func_80AC14A8>:
     e48:	27bdff78 	addiu	sp,sp,-136
     e4c:	afb50054 	sw	s5,84(sp)
     e50:	afb00040 	sw	s0,64(sp)
     e54:	0080a825 	move	s5,a0
     e58:	afbf005c 	sw	ra,92(sp)
     e5c:	afb60058 	sw	s6,88(sp)
     e60:	2490014c 	addiu	s0,a0,332
     e64:	00a0b025 	move	s6,a1
     e68:	afb40050 	sw	s4,80(sp)
     e6c:	afb3004c 	sw	s3,76(sp)
     e70:	afb20048 	sw	s2,72(sp)
     e74:	afb10044 	sw	s1,68(sp)
     e78:	f7b60038 	sdc1	$f22,56(sp)
     e7c:	f7b40030 	sdc1	$f20,48(sp)
     e80:	0c000000 	jal	0 <EnOkuta_Init>
     e84:	02002025 	move	a0,s0
     e88:	10400004 	beqz	v0,e9c <func_80AC14A8+0x54>
     e8c:	3c013f00 	lui	at,0x3f00
     e90:	86ae0194 	lh	t6,404(s5)
     e94:	25cf0001 	addiu	t7,t6,1
     e98:	a6af0194 	sh	t7,404(s5)
     e9c:	4481b000 	mtc1	at,$f22
     ea0:	26a40028 	addiu	a0,s5,40
     ea4:	8ea5000c 	lw	a1,12(s5)
     ea8:	4406b000 	mfc1	a2,$f22
     eac:	0c000000 	jal	0 <EnOkuta_Init>
     eb0:	3c0740a0 	lui	a3,0x40a0
     eb4:	86b80194 	lh	t8,404(s5)
     eb8:	24010005 	li	at,5
     ebc:	27a40070 	addiu	a0,sp,112
     ec0:	17010016 	bne	t8,at,f1c <func_80AC14A8+0xd4>
     ec4:	27a5007c 	addiu	a1,sp,124
     ec8:	c6a40024 	lwc1	$f4,36(s5)
     ecc:	3c014220 	lui	at,0x4220
     ed0:	44814000 	mtc1	at,$f8
     ed4:	e7a40070 	swc1	$f4,112(sp)
     ed8:	c6a60028 	lwc1	$f6,40(s5)
     edc:	4480a000 	mtc1	zero,$f20
     ee0:	3c01bf00 	lui	at,0xbf00
     ee4:	46083280 	add.s	$f10,$f6,$f8
     ee8:	44819000 	mtc1	at,$f18
     eec:	2406ffec 	li	a2,-20
     ef0:	02c03825 	move	a3,s6
     ef4:	e7aa0074 	swc1	$f10,116(sp)
     ef8:	c6b0002c 	lwc1	$f16,44(s5)
     efc:	e7b4007c 	swc1	$f20,124(sp)
     f00:	e7b40084 	swc1	$f20,132(sp)
     f04:	e7b20080 	swc1	$f18,128(sp)
     f08:	0c000000 	jal	0 <EnOkuta_Init>
     f0c:	e7b00078 	swc1	$f16,120(sp)
     f10:	02a02025 	move	a0,s5
     f14:	0c000000 	jal	0 <EnOkuta_Init>
     f18:	240538c7 	li	a1,14535
     f1c:	4480a000 	mtc1	zero,$f20
     f20:	02002025 	move	a0,s0
     f24:	0c000000 	jal	0 <EnOkuta_Init>
     f28:	3c054170 	lui	a1,0x4170
     f2c:	10400006 	beqz	v0,f48 <func_80AC14A8+0x100>
     f30:	02a02025 	move	a0,s5
     f34:	0c000000 	jal	0 <EnOkuta_Init>
     f38:	02c02825 	move	a1,s6
     f3c:	02a02025 	move	a0,s5
     f40:	0c000000 	jal	0 <EnOkuta_Init>
     f44:	240538c3 	li	a1,14531
     f48:	86a20194 	lh	v0,404(s5)
     f4c:	28410003 	slti	at,v0,3
     f50:	50200013 	beqzl	at,fa0 <func_80AC14A8+0x158>
     f54:	28410006 	slti	at,v0,6
     f58:	44822000 	mtc1	v0,$f4
     f5c:	3c013e80 	lui	at,0x3e80
     f60:	44814000 	mtc1	at,$f8
     f64:	468021a0 	cvt.s.w	$f6,$f4
     f68:	3c013f80 	lui	at,0x3f80
     f6c:	44818000 	mtc1	at,$f16
     f70:	3c010000 	lui	at,0x0
     f74:	c4240000 	lwc1	$f4,0(at)
     f78:	02a02025 	move	a0,s5
     f7c:	46083282 	mul.s	$f10,$f6,$f8
     f80:	46105480 	add.s	$f18,$f10,$f16
     f84:	46049182 	mul.s	$f6,$f18,$f4
     f88:	44053000 	mfc1	a1,$f6
     f8c:	0c000000 	jal	0 <EnOkuta_Init>
     f90:	00000000 	nop
     f94:	10000066 	b	1130 <func_80AC14A8+0x2e8>
     f98:	8fbf005c 	lw	ra,92(sp)
     f9c:	28410006 	slti	at,v0,6
     fa0:	10200012 	beqz	at,fec <func_80AC14A8+0x1a4>
     fa4:	2459fffe 	addiu	t9,v0,-2
     fa8:	44994000 	mtc1	t9,$f8
     fac:	3c010000 	lui	at,0x0
     fb0:	c4300000 	lwc1	$f16,0(at)
     fb4:	468042a0 	cvt.s.w	$f10,$f8
     fb8:	3c013fc0 	lui	at,0x3fc0
     fbc:	44812000 	mtc1	at,$f4
     fc0:	3c010000 	lui	at,0x0
     fc4:	c4280000 	lwc1	$f8,0(at)
     fc8:	02a02025 	move	a0,s5
     fcc:	46105482 	mul.s	$f18,$f10,$f16
     fd0:	46122181 	sub.s	$f6,$f4,$f18
     fd4:	46083282 	mul.s	$f10,$f6,$f8
     fd8:	44055000 	mfc1	a1,$f10
     fdc:	0c000000 	jal	0 <EnOkuta_Init>
     fe0:	00000000 	nop
     fe4:	10000052 	b	1130 <func_80AC14A8+0x2e8>
     fe8:	8fbf005c 	lw	ra,92(sp)
     fec:	2841000b 	slti	at,v0,11
     ff0:	10200013 	beqz	at,1040 <func_80AC14A8+0x1f8>
     ff4:	26a40050 	addiu	a0,s5,80
     ff8:	2448fffb 	addiu	t0,v0,-5
     ffc:	44888000 	mtc1	t0,$f16
    1000:	3c010000 	lui	at,0x0
    1004:	c4320000 	lwc1	$f18,0(at)
    1008:	46808120 	cvt.s.w	$f4,$f16
    100c:	3c010000 	lui	at,0x0
    1010:	c4280000 	lwc1	$f8,0(at)
    1014:	3c010000 	lui	at,0x0
    1018:	c4300000 	lwc1	$f16,0(at)
    101c:	02a02025 	move	a0,s5
    1020:	46122182 	mul.s	$f6,$f4,$f18
    1024:	46083280 	add.s	$f10,$f6,$f8
    1028:	46105102 	mul.s	$f4,$f10,$f16
    102c:	44052000 	mfc1	a1,$f4
    1030:	0c000000 	jal	0 <EnOkuta_Init>
    1034:	00000000 	nop
    1038:	1000003d 	b	1130 <func_80AC14A8+0x2e8>
    103c:	8fbf005c 	lw	ra,92(sp)
    1040:	4405a000 	mfc1	a1,$f20
    1044:	3c063a03 	lui	a2,0x3a03
    1048:	0c000000 	jal	0 <EnOkuta_Init>
    104c:	34c6126f 	ori	a2,a2,0x126f
    1050:	10400033 	beqz	v0,1120 <func_80AC14A8+0x2d8>
    1054:	02c02025 	move	a0,s6
    1058:	26b10024 	addiu	s1,s5,36
    105c:	02202825 	move	a1,s1
    1060:	2406001e 	li	a2,30
    1064:	0c000000 	jal	0 <EnOkuta_Init>
    1068:	240738c5 	li	a3,14533
    106c:	02c02025 	move	a0,s6
    1070:	02a02825 	move	a1,s5
    1074:	02203025 	move	a2,s1
    1078:	0c000000 	jal	0 <EnOkuta_Init>
    107c:	24070070 	li	a3,112
    1080:	3c0140e0 	lui	at,0x40e0
    1084:	3c130000 	lui	s3,0x0
    1088:	3c120000 	lui	s2,0x0
    108c:	4481a000 	mtc1	at,$f20
    1090:	26520000 	addiu	s2,s2,0
    1094:	26730000 	addiu	s3,s3,0
    1098:	00008025 	move	s0,zero
    109c:	24140014 	li	s4,20
    10a0:	0c000000 	jal	0 <EnOkuta_Init>
    10a4:	00000000 	nop
    10a8:	46160481 	sub.s	$f18,$f0,$f22
    10ac:	46149182 	mul.s	$f6,$f18,$f20
    10b0:	0c000000 	jal	0 <EnOkuta_Init>
    10b4:	e7a6007c 	swc1	$f6,124(sp)
    10b8:	46140202 	mul.s	$f8,$f0,$f20
    10bc:	0c000000 	jal	0 <EnOkuta_Init>
    10c0:	e7a80080 	swc1	$f8,128(sp)
    10c4:	46160281 	sub.s	$f10,$f0,$f22
    10c8:	24040064 	li	a0,100
    10cc:	24050032 	li	a1,50
    10d0:	46145402 	mul.s	$f16,$f10,$f20
    10d4:	0c000000 	jal	0 <EnOkuta_Init>
    10d8:	e7b00084 	swc1	$f16,132(sp)
    10dc:	3c070000 	lui	a3,0x0
    10e0:	24090019 	li	t1,25
    10e4:	afa9001c 	sw	t1,28(sp)
    10e8:	24e70000 	addiu	a3,a3,0
    10ec:	02c02025 	move	a0,s6
    10f0:	02202825 	move	a1,s1
    10f4:	27a6007c 	addiu	a2,sp,124
    10f8:	afb20010 	sw	s2,16(sp)
    10fc:	afb30014 	sw	s3,20(sp)
    1100:	afa20018 	sw	v0,24(sp)
    1104:	0c000000 	jal	0 <EnOkuta_Init>
    1108:	afa00020 	sw	zero,32(sp)
    110c:	26100001 	addiu	s0,s0,1
    1110:	1614ffe3 	bne	s0,s4,10a0 <func_80AC14A8+0x258>
    1114:	00000000 	nop
    1118:	0c000000 	jal	0 <EnOkuta_Init>
    111c:	02a02025 	move	a0,s5
    1120:	c6a00050 	lwc1	$f0,80(s5)
    1124:	e6a00058 	swc1	$f0,88(s5)
    1128:	e6a00054 	swc1	$f0,84(s5)
    112c:	8fbf005c 	lw	ra,92(sp)
    1130:	d7b40030 	ldc1	$f20,48(sp)
    1134:	d7b60038 	ldc1	$f22,56(sp)
    1138:	8fb00040 	lw	s0,64(sp)
    113c:	8fb10044 	lw	s1,68(sp)
    1140:	8fb20048 	lw	s2,72(sp)
    1144:	8fb3004c 	lw	s3,76(sp)
    1148:	8fb40050 	lw	s4,80(sp)
    114c:	8fb50054 	lw	s5,84(sp)
    1150:	8fb60058 	lw	s6,88(sp)
    1154:	03e00008 	jr	ra
    1158:	27bd0088 	addiu	sp,sp,136

0000115c <func_80AC17BC>:
    115c:	27bdffa8 	addiu	sp,sp,-88
    1160:	afbf003c 	sw	ra,60(sp)
    1164:	afb00038 	sw	s0,56(sp)
    1168:	afa5005c 	sw	a1,92(sp)
    116c:	84820194 	lh	v0,404(a0)
    1170:	00808025 	move	s0,a0
    1174:	10400003 	beqz	v0,1184 <func_80AC17BC+0x28>
    1178:	244effff 	addiu	t6,v0,-1
    117c:	a48e0194 	sh	t6,404(a0)
    1180:	84820194 	lh	v0,404(a0)
    1184:	54400005 	bnezl	v0,119c <func_80AC17BC+0x40>
    1188:	28410040 	slti	at,v0,64
    118c:	0c000000 	jal	0 <EnOkuta_Init>
    1190:	02002025 	move	a0,s0
    1194:	86020194 	lh	v0,404(s0)
    1198:	28410040 	slti	at,v0,64
    119c:	14200044 	bnez	at,12b0 <func_80AC17BC+0x154>
    11a0:	304f0001 	andi	t7,v0,0x1
    11a4:	11e00042 	beqz	t7,12b0 <func_80AC17BC+0x154>
    11a8:	2443ffc0 	addiu	v1,v0,-64
    11ac:	00031843 	sra	v1,v1,0x1
    11b0:	00031c00 	sll	v1,v1,0x10
    11b4:	00031c03 	sra	v1,v1,0x10
    11b8:	24180008 	li	t8,8
    11bc:	0303c823 	subu	t9,t8,v1
    11c0:	44998000 	mtc1	t9,$f16
    11c4:	3c014200 	lui	at,0x4200
    11c8:	44813000 	mtc1	at,$f6
    11cc:	468084a0 	cvt.s.w	$f18,$f16
    11d0:	c6040028 	lwc1	$f4,40(s0)
    11d4:	3c014100 	lui	at,0x4100
    11d8:	44815000 	mtc1	at,$f10
    11dc:	30680002 	andi	t0,v1,0x2
    11e0:	46062201 	sub.s	$f8,$f4,$f6
    11e4:	46125102 	mul.s	$f4,$f10,$f18
    11e8:	3c01c120 	lui	at,0xc120
    11ec:	46044180 	add.s	$f6,$f8,$f4
    11f0:	11000005 	beqz	t0,1208 <func_80AC17BC+0xac>
    11f4:	e7a60050 	swc1	$f6,80(sp)
    11f8:	3c014120 	lui	at,0x4120
    11fc:	44810000 	mtc1	at,$f0
    1200:	10000004 	b	1214 <func_80AC17BC+0xb8>
    1204:	c6100024 	lwc1	$f16,36(s0)
    1208:	44810000 	mtc1	at,$f0
    120c:	00000000 	nop
    1210:	c6100024 	lwc1	$f16,36(s0)
    1214:	30690001 	andi	t1,v1,0x1
    1218:	3c01c120 	lui	at,0xc120
    121c:	46100280 	add.s	$f10,$f0,$f16
    1220:	11200005 	beqz	t1,1238 <func_80AC17BC+0xdc>
    1224:	e7aa004c 	swc1	$f10,76(sp)
    1228:	3c014120 	lui	at,0x4120
    122c:	44810000 	mtc1	at,$f0
    1230:	10000004 	b	1244 <func_80AC17BC+0xe8>
    1234:	c612002c 	lwc1	$f18,44(s0)
    1238:	44810000 	mtc1	at,$f0
    123c:	00000000 	nop
    1240:	c612002c 	lwc1	$f18,44(s0)
    1244:	46120200 	add.s	$f8,$f0,$f18
    1248:	0c000000 	jal	0 <EnOkuta_Init>
    124c:	e7a80054 	swc1	$f8,84(sp)
    1250:	3c010000 	lui	at,0x0
    1254:	c4240000 	lwc1	$f4,0(at)
    1258:	3c010000 	lui	at,0x0
    125c:	c4300000 	lwc1	$f16,0(at)
    1260:	46040182 	mul.s	$f6,$f0,$f4
    1264:	240a0096 	li	t2,150
    1268:	240b0096 	li	t3,150
    126c:	240c00fa 	li	t4,250
    1270:	240d00eb 	li	t5,235
    1274:	240e00f5 	li	t6,245
    1278:	240f00ff 	li	t7,255
    127c:	46103280 	add.s	$f10,$f6,$f16
    1280:	afaf0024 	sw	t7,36(sp)
    1284:	afae0020 	sw	t6,32(sp)
    1288:	afad001c 	sw	t5,28(sp)
    128c:	e7aa0028 	swc1	$f10,40(sp)
    1290:	afac0018 	sw	t4,24(sp)
    1294:	afab0014 	sw	t3,20(sp)
    1298:	afaa0010 	sw	t2,16(sp)
    129c:	8fa4005c 	lw	a0,92(sp)
    12a0:	02002825 	move	a1,s0
    12a4:	27a6004c 	addiu	a2,sp,76
    12a8:	0c000000 	jal	0 <EnOkuta_Init>
    12ac:	24070096 	li	a3,150
    12b0:	26040028 	addiu	a0,s0,40
    12b4:	8e05000c 	lw	a1,12(s0)
    12b8:	3c063f00 	lui	a2,0x3f00
    12bc:	0c000000 	jal	0 <EnOkuta_Init>
    12c0:	3c0740a0 	lui	a3,0x40a0
    12c4:	8fbf003c 	lw	ra,60(sp)
    12c8:	8fb00038 	lw	s0,56(sp)
    12cc:	27bd0058 	addiu	sp,sp,88
    12d0:	03e00008 	jr	ra
    12d4:	00000000 	nop

000012d8 <func_80AC1938>:
    12d8:	27bdffa8 	addiu	sp,sp,-88
    12dc:	afbf0034 	sw	ra,52(sp)
    12e0:	afb00030 	sw	s0,48(sp)
    12e4:	afa5005c 	sw	a1,92(sp)
    12e8:	848f0194 	lh	t7,404(a0)
    12ec:	8ca31c44 	lw	v1,7236(a1)
    12f0:	00808025 	move	s0,a0
    12f4:	25f8ffff 	addiu	t8,t7,-1
    12f8:	a4980194 	sh	t8,404(a0)
    12fc:	84990194 	lh	t9,404(a0)
    1300:	3c01bf80 	lui	at,0xbf80
    1304:	57200005 	bnezl	t9,131c <func_80AC1938+0x44>
    1308:	86080018 	lh	t0,24(s0)
    130c:	44812000 	mtc1	at,$f4
    1310:	00000000 	nop
    1314:	e484006c 	swc1	$f4,108(a0)
    1318:	86080018 	lh	t0,24(s0)
    131c:	96020088 	lhu	v0,136(s0)
    1320:	3c013f80 	lui	at,0x3f80
    1324:	25091554 	addiu	t1,t0,5460
    1328:	304a0020 	andi	t2,v0,0x20
    132c:	11400014 	beqz	t2,1380 <func_80AC1938+0xa8>
    1330:	a6090018 	sh	t1,24(s0)
    1334:	44811000 	mtc1	at,$f2
    1338:	3c01bf80 	lui	at,0xbf80
    133c:	44813000 	mtc1	at,$f6
    1340:	3c010000 	lui	at,0x0
    1344:	c6080068 	lwc1	$f8,104(s0)
    1348:	e606006c 	swc1	$f6,108(s0)
    134c:	c42a0000 	lwc1	$f10,0(at)
    1350:	460a4401 	sub.s	$f16,$f8,$f10
    1354:	e6100068 	swc1	$f16,104(s0)
    1358:	c6000068 	lwc1	$f0,104(s0)
    135c:	4602003c 	c.lt.s	$f0,$f2
    1360:	00000000 	nop
    1364:	45020005 	bc1fl	137c <func_80AC1938+0xa4>
    1368:	e6000068 	swc1	$f0,104(s0)
    136c:	e6020068 	swc1	$f2,104(s0)
    1370:	10000003 	b	1380 <func_80AC1938+0xa8>
    1374:	96020088 	lhu	v0,136(s0)
    1378:	e6000068 	swc1	$f0,104(s0)
    137c:	96020088 	lhu	v0,136(s0)
    1380:	304b0008 	andi	t3,v0,0x8
    1384:	15600016 	bnez	t3,13e0 <func_80AC1938+0x108>
    1388:	304c0001 	andi	t4,v0,0x1
    138c:	55800015 	bnezl	t4,13e4 <func_80AC1938+0x10c>
    1390:	8062014e 	lb	v0,334(v1)
    1394:	920d0380 	lbu	t5,896(s0)
    1398:	31ae0002 	andi	t6,t5,0x2
    139c:	55c00011 	bnezl	t6,13e4 <func_80AC1938+0x10c>
    13a0:	8062014e 	lb	v0,334(v1)
    13a4:	920f0381 	lbu	t7,897(s0)
    13a8:	31f80002 	andi	t8,t7,0x2
    13ac:	5700000d 	bnezl	t8,13e4 <func_80AC1938+0x10c>
    13b0:	8062014e 	lb	v0,334(v1)
    13b4:	92190382 	lbu	t9,898(s0)
    13b8:	3c01c6fa 	lui	at,0xc6fa
    13bc:	33280002 	andi	t0,t9,0x2
    13c0:	55000008 	bnezl	t0,13e4 <func_80AC1938+0x10c>
    13c4:	8062014e 	lb	v0,334(v1)
    13c8:	44819000 	mtc1	at,$f18
    13cc:	c6040080 	lwc1	$f4,128(s0)
    13d0:	46049032 	c.eq.s	$f18,$f4
    13d4:	00000000 	nop
    13d8:	45020047 	bc1fl	14f8 <func_80AC1938+0x220>
    13dc:	86180194 	lh	t8,404(s0)
    13e0:	8062014e 	lb	v0,334(v1)
    13e4:	24010001 	li	at,1
    13e8:	10410006 	beq	v0,at,1404 <func_80AC1938+0x12c>
    13ec:	24010002 	li	at,2
    13f0:	1441001c 	bne	v0,at,1464 <func_80AC1938+0x18c>
    13f4:	3c090000 	lui	t1,0x0
    13f8:	8d290004 	lw	t1,4(t1)
    13fc:	5520001a 	bnezl	t1,1468 <func_80AC1938+0x190>
    1400:	c6060024 	lwc1	$f6,36(s0)
    1404:	92020380 	lbu	v0,896(s0)
    1408:	304a0002 	andi	t2,v0,0x2
    140c:	11400015 	beqz	t2,1464 <func_80AC1938+0x18c>
    1410:	304b0010 	andi	t3,v0,0x10
    1414:	11600013 	beqz	t3,1464 <func_80AC1938+0x18c>
    1418:	304c0004 	andi	t4,v0,0x4
    141c:	11800011 	beqz	t4,1464 <func_80AC1938+0x18c>
    1420:	304effe9 	andi	t6,v0,0xffe9
    1424:	a20e0380 	sb	t6,896(s0)
    1428:	35cf0008 	ori	t7,t6,0x8
    142c:	24180002 	li	t8,2
    1430:	a20f0380 	sb	t7,896(s0)
    1434:	ae180388 	sw	t8,904(s0)
    1438:	24640a20 	addiu	a0,v1,2592
    143c:	27a50040 	addiu	a1,sp,64
    1440:	0c000000 	jal	0 <EnOkuta_Init>
    1444:	00003025 	move	a2,zero
    1448:	87b90042 	lh	t9,66(sp)
    144c:	34018000 	li	at,0x8000
    1450:	2409001e 	li	t1,30
    1454:	03214021 	addu	t0,t9,at
    1458:	a6080032 	sh	t0,50(s0)
    145c:	1000002b 	b	150c <func_80AC1938+0x234>
    1460:	a6090194 	sh	t1,404(s0)
    1464:	c6060024 	lwc1	$f6,36(s0)
    1468:	3c014130 	lui	at,0x4130
    146c:	44815000 	mtc1	at,$f10
    1470:	e7a6004c 	swc1	$f6,76(sp)
    1474:	c6080028 	lwc1	$f8,40(s0)
    1478:	3c0f0600 	lui	t7,0x600
    147c:	25ef3380 	addiu	t7,t7,13184
    1480:	460a4400 	add.s	$f16,$f8,$f10
    1484:	240a0001 	li	t2,1
    1488:	240b0002 	li	t3,2
    148c:	240c000f 	li	t4,15
    1490:	e7b00050 	swc1	$f16,80(sp)
    1494:	c612002c 	lwc1	$f18,44(s0)
    1498:	240d0007 	li	t5,7
    149c:	240e000a 	li	t6,10
    14a0:	afae0020 	sw	t6,32(sp)
    14a4:	afad001c 	sw	t5,28(sp)
    14a8:	afaf0024 	sw	t7,36(sp)
    14ac:	afac0018 	sw	t4,24(sp)
    14b0:	afab0014 	sw	t3,20(sp)
    14b4:	afaa0010 	sw	t2,16(sp)
    14b8:	8fa4005c 	lw	a0,92(sp)
    14bc:	27a5004c 	addiu	a1,sp,76
    14c0:	3c0640c0 	lui	a2,0x40c0
    14c4:	00003825 	move	a3,zero
    14c8:	0c000000 	jal	0 <EnOkuta_Init>
    14cc:	e7b20054 	swc1	$f18,84(sp)
    14d0:	8fa4005c 	lw	a0,92(sp)
    14d4:	26050024 	addiu	a1,s0,36
    14d8:	24060014 	li	a2,20
    14dc:	0c000000 	jal	0 <EnOkuta_Init>
    14e0:	240738c0 	li	a3,14528
    14e4:	0c000000 	jal	0 <EnOkuta_Init>
    14e8:	02002025 	move	a0,s0
    14ec:	10000008 	b	1510 <func_80AC1938+0x238>
    14f0:	8fbf0034 	lw	ra,52(sp)
    14f4:	86180194 	lh	t8,404(s0)
    14f8:	2401fed4 	li	at,-300
    14fc:	57010004 	bnel	t8,at,1510 <func_80AC1938+0x238>
    1500:	8fbf0034 	lw	ra,52(sp)
    1504:	0c000000 	jal	0 <EnOkuta_Init>
    1508:	02002025 	move	a0,s0
    150c:	8fbf0034 	lw	ra,52(sp)
    1510:	8fb00030 	lw	s0,48(sp)
    1514:	27bd0058 	addiu	sp,sp,88
    1518:	03e00008 	jr	ra
    151c:	00000000 	nop

00001520 <func_80AC1B80>:
    1520:	27bdffe8 	addiu	sp,sp,-24
    1524:	afbf0014 	sw	ra,20(sp)
    1528:	8c820190 	lw	v0,400(a0)
    152c:	3c0e0000 	lui	t6,0x0
    1530:	25ce0000 	addiu	t6,t6,0
    1534:	15c2004e 	bne	t6,v0,1670 <func_80AC1B80+0x150>
    1538:	c48e0164 	lwc1	$f14,356(a0)
    153c:	3c014100 	lui	at,0x4100
    1540:	44812000 	mtc1	at,$f4
    1544:	3c014120 	lui	at,0x4120
    1548:	4604703c 	c.lt.s	$f14,$f4
    154c:	00000000 	nop
    1550:	45020009 	bc1fl	1578 <func_80AC1B80+0x58>
    1554:	44813000 	mtc1	at,$f6
    1558:	3c013f80 	lui	at,0x3f80
    155c:	44818000 	mtc1	at,$f16
    1560:	00000000 	nop
    1564:	e490036c 	swc1	$f16,876(a0)
    1568:	e4900368 	swc1	$f16,872(a0)
    156c:	100000d2 	b	18b8 <func_80AC1B80+0x398>
    1570:	e4900364 	swc1	$f16,868(a0)
    1574:	44813000 	mtc1	at,$f6
    1578:	3c014160 	lui	at,0x4160
    157c:	4606703c 	c.lt.s	$f14,$f6
    1580:	00000000 	nop
    1584:	4502000f 	bc1fl	15c4 <func_80AC1B80+0xa4>
    1588:	44814000 	mtc1	at,$f8
    158c:	3c013f80 	lui	at,0x3f80
    1590:	44818000 	mtc1	at,$f16
    1594:	3c0140e0 	lui	at,0x40e0
    1598:	44814000 	mtc1	at,$f8
    159c:	3c010000 	lui	at,0x0
    15a0:	e490036c 	swc1	$f16,876(a0)
    15a4:	46087281 	sub.s	$f10,$f14,$f8
    15a8:	e4900364 	swc1	$f16,868(a0)
    15ac:	c4320000 	lwc1	$f18,0(at)
    15b0:	46125102 	mul.s	$f4,$f10,$f18
    15b4:	46102180 	add.s	$f6,$f4,$f16
    15b8:	100000bf 	b	18b8 <func_80AC1B80+0x398>
    15bc:	e4860368 	swc1	$f6,872(a0)
    15c0:	44814000 	mtc1	at,$f8
    15c4:	3c010000 	lui	at,0x0
    15c8:	4608703c 	c.lt.s	$f14,$f8
    15cc:	00000000 	nop
    15d0:	45000015 	bc1f	1628 <func_80AC1B80+0x108>
    15d4:	00000000 	nop
    15d8:	3c013f80 	lui	at,0x3f80
    15dc:	44818000 	mtc1	at,$f16
    15e0:	3c014110 	lui	at,0x4110
    15e4:	44815000 	mtc1	at,$f10
    15e8:	3c010000 	lui	at,0x0
    15ec:	c4320000 	lwc1	$f18,0(at)
    15f0:	460a7001 	sub.s	$f0,$f14,$f10
    15f4:	3c010000 	lui	at,0x0
    15f8:	46120102 	mul.s	$f4,$f0,$f18
    15fc:	46102080 	add.s	$f2,$f4,$f16
    1600:	e482036c 	swc1	$f2,876(a0)
    1604:	e4820364 	swc1	$f2,868(a0)
    1608:	c4260000 	lwc1	$f6,0(at)
    160c:	3c013e80 	lui	at,0x3e80
    1610:	44814000 	mtc1	at,$f8
    1614:	00000000 	nop
    1618:	46080282 	mul.s	$f10,$f0,$f8
    161c:	460a3481 	sub.s	$f18,$f6,$f10
    1620:	100000a5 	b	18b8 <func_80AC1B80+0x398>
    1624:	e4920368 	swc1	$f18,872(a0)
    1628:	c42c0000 	lwc1	$f12,0(at)
    162c:	3c014150 	lui	at,0x4150
    1630:	44812000 	mtc1	at,$f4
    1634:	3c010000 	lui	at,0x0
    1638:	c4280000 	lwc1	$f8,0(at)
    163c:	46047001 	sub.s	$f0,$f14,$f4
    1640:	3c010000 	lui	at,0x0
    1644:	c4260000 	lwc1	$f6,0(at)
    1648:	3c010000 	lui	at,0x0
    164c:	46060282 	mul.s	$f10,$f0,$f6
    1650:	460a4081 	sub.s	$f2,$f8,$f10
    1654:	e482036c 	swc1	$f2,876(a0)
    1658:	e4820364 	swc1	$f2,868(a0)
    165c:	c4320000 	lwc1	$f18,0(at)
    1660:	46120102 	mul.s	$f4,$f0,$f18
    1664:	460c2180 	add.s	$f6,$f4,$f12
    1668:	10000093 	b	18b8 <func_80AC1B80+0x398>
    166c:	e4860368 	swc1	$f6,872(a0)
    1670:	3c0f0000 	lui	t7,0x0
    1674:	25ef0000 	addiu	t7,t7,0
    1678:	15e20027 	bne	t7,v0,1718 <func_80AC1B80+0x1f8>
    167c:	3c180000 	lui	t8,0x0
    1680:	3c014040 	lui	at,0x4040
    1684:	44810000 	mtc1	at,$f0
    1688:	3c014080 	lui	at,0x4080
    168c:	4600703c 	c.lt.s	$f14,$f0
    1690:	00000000 	nop
    1694:	45020006 	bc1fl	16b0 <func_80AC1B80+0x190>
    1698:	44814000 	mtc1	at,$f8
    169c:	3c013f80 	lui	at,0x3f80
    16a0:	44818000 	mtc1	at,$f16
    16a4:	10000019 	b	170c <func_80AC1B80+0x1ec>
    16a8:	e4900368 	swc1	$f16,872(a0)
    16ac:	44814000 	mtc1	at,$f8
    16b0:	3c010000 	lui	at,0x0
    16b4:	4608703c 	c.lt.s	$f14,$f8
    16b8:	00000000 	nop
    16bc:	4502000b 	bc1fl	16ec <func_80AC1B80+0x1cc>
    16c0:	46007181 	sub.s	$f6,$f14,$f0
    16c4:	3c013f80 	lui	at,0x3f80
    16c8:	44818000 	mtc1	at,$f16
    16cc:	3c014000 	lui	at,0x4000
    16d0:	44815000 	mtc1	at,$f10
    16d4:	00000000 	nop
    16d8:	460a7481 	sub.s	$f18,$f14,$f10
    16dc:	46109100 	add.s	$f4,$f18,$f16
    16e0:	1000000a 	b	170c <func_80AC1B80+0x1ec>
    16e4:	e4840368 	swc1	$f4,872(a0)
    16e8:	46007181 	sub.s	$f6,$f14,$f0
    16ec:	c4280000 	lwc1	$f8,0(at)
    16f0:	3c014000 	lui	at,0x4000
    16f4:	44819000 	mtc1	at,$f18
    16f8:	46083282 	mul.s	$f10,$f6,$f8
    16fc:	3c013f80 	lui	at,0x3f80
    1700:	44818000 	mtc1	at,$f16
    1704:	460a9101 	sub.s	$f4,$f18,$f10
    1708:	e4840368 	swc1	$f4,872(a0)
    170c:	e490036c 	swc1	$f16,876(a0)
    1710:	10000069 	b	18b8 <func_80AC1B80+0x398>
    1714:	e4900364 	swc1	$f16,868(a0)
    1718:	27180000 	addiu	t8,t8,0
    171c:	1702004b 	bne	t8,v0,184c <func_80AC1B80+0x32c>
    1720:	3c190000 	lui	t9,0x0
    1724:	3c0140a0 	lui	at,0x40a0
    1728:	44813000 	mtc1	at,$f6
    172c:	3c0140e0 	lui	at,0x40e0
    1730:	4606703c 	c.lt.s	$f14,$f6
    1734:	00000000 	nop
    1738:	4502000d 	bc1fl	1770 <func_80AC1B80+0x250>
    173c:	44815000 	mtc1	at,$f10
    1740:	3c013f80 	lui	at,0x3f80
    1744:	44818000 	mtc1	at,$f16
    1748:	3c013e00 	lui	at,0x3e00
    174c:	44814000 	mtc1	at,$f8
    1750:	00000000 	nop
    1754:	46087482 	mul.s	$f18,$f14,$f8
    1758:	46109000 	add.s	$f0,$f18,$f16
    175c:	e480036c 	swc1	$f0,876(a0)
    1760:	e4800368 	swc1	$f0,872(a0)
    1764:	10000054 	b	18b8 <func_80AC1B80+0x398>
    1768:	e4800364 	swc1	$f0,868(a0)
    176c:	44815000 	mtc1	at,$f10
    1770:	3c014188 	lui	at,0x4188
    1774:	460a703c 	c.lt.s	$f14,$f10
    1778:	00000000 	nop
    177c:	4502000f 	bc1fl	17bc <func_80AC1B80+0x29c>
    1780:	44812000 	mtc1	at,$f4
    1784:	3c014080 	lui	at,0x4080
    1788:	44812000 	mtc1	at,$f4
    178c:	3c010000 	lui	at,0x0
    1790:	c4280000 	lwc1	$f8,0(at)
    1794:	46047181 	sub.s	$f6,$f14,$f4
    1798:	3c013fc0 	lui	at,0x3fc0
    179c:	44815000 	mtc1	at,$f10
    17a0:	46083482 	mul.s	$f18,$f6,$f8
    17a4:	46125001 	sub.s	$f0,$f10,$f18
    17a8:	e480036c 	swc1	$f0,876(a0)
    17ac:	e4800368 	swc1	$f0,872(a0)
    17b0:	10000041 	b	18b8 <func_80AC1B80+0x398>
    17b4:	e4800364 	swc1	$f0,868(a0)
    17b8:	44812000 	mtc1	at,$f4
    17bc:	3c010000 	lui	at,0x0
    17c0:	4604703c 	c.lt.s	$f14,$f4
    17c4:	00000000 	nop
    17c8:	4500000e 	bc1f	1804 <func_80AC1B80+0x2e4>
    17cc:	00000000 	nop
    17d0:	3c010000 	lui	at,0x0
    17d4:	c42c0000 	lwc1	$f12,0(at)
    17d8:	3c0140c0 	lui	at,0x40c0
    17dc:	44813000 	mtc1	at,$f6
    17e0:	3c010000 	lui	at,0x0
    17e4:	c42a0000 	lwc1	$f10,0(at)
    17e8:	46067201 	sub.s	$f8,$f14,$f6
    17ec:	e48c0368 	swc1	$f12,872(a0)
    17f0:	460a4482 	mul.s	$f18,$f8,$f10
    17f4:	460c9000 	add.s	$f0,$f18,$f12
    17f8:	e480036c 	swc1	$f0,876(a0)
    17fc:	1000002e 	b	18b8 <func_80AC1B80+0x398>
    1800:	e4800364 	swc1	$f0,868(a0)
    1804:	c42c0000 	lwc1	$f12,0(at)
    1808:	3c014180 	lui	at,0x4180
    180c:	44812000 	mtc1	at,$f4
    1810:	3c010000 	lui	at,0x0
    1814:	c4260000 	lwc1	$f6,0(at)
    1818:	46047001 	sub.s	$f0,$f14,$f4
    181c:	3c010000 	lui	at,0x0
    1820:	c4280000 	lwc1	$f8,0(at)
    1824:	3c010000 	lui	at,0x0
    1828:	46080282 	mul.s	$f10,$f0,$f8
    182c:	460a3081 	sub.s	$f2,$f6,$f10
    1830:	e482036c 	swc1	$f2,876(a0)
    1834:	e4820364 	swc1	$f2,868(a0)
    1838:	c4320000 	lwc1	$f18,0(at)
    183c:	46120102 	mul.s	$f4,$f0,$f18
    1840:	460c2200 	add.s	$f8,$f4,$f12
    1844:	1000001c 	b	18b8 <func_80AC1B80+0x398>
    1848:	e4880368 	swc1	$f8,872(a0)
    184c:	27390000 	addiu	t9,t9,0
    1850:	17220014 	bne	t9,v0,18a4 <func_80AC1B80+0x384>
    1854:	3c013f80 	lui	at,0x3f80
    1858:	3c013f80 	lui	at,0x3f80
    185c:	44818000 	mtc1	at,$f16
    1860:	3c010000 	lui	at,0x0
    1864:	e490036c 	swc1	$f16,876(a0)
    1868:	e4900364 	swc1	$f16,868(a0)
    186c:	c4260000 	lwc1	$f6,0(at)
    1870:	afa40018 	sw	a0,24(sp)
    1874:	460e3302 	mul.s	$f12,$f6,$f14
    1878:	0c000000 	jal	0 <EnOkuta_Init>
    187c:	00000000 	nop
    1880:	3c013f80 	lui	at,0x3f80
    1884:	44818000 	mtc1	at,$f16
    1888:	3c010000 	lui	at,0x0
    188c:	c42a0000 	lwc1	$f10,0(at)
    1890:	8fa40018 	lw	a0,24(sp)
    1894:	460a0482 	mul.s	$f18,$f0,$f10
    1898:	46109100 	add.s	$f4,$f18,$f16
    189c:	10000006 	b	18b8 <func_80AC1B80+0x398>
    18a0:	e4840368 	swc1	$f4,872(a0)
    18a4:	44818000 	mtc1	at,$f16
    18a8:	00000000 	nop
    18ac:	e490036c 	swc1	$f16,876(a0)
    18b0:	e4900368 	swc1	$f16,872(a0)
    18b4:	e4900364 	swc1	$f16,868(a0)
    18b8:	8fbf0014 	lw	ra,20(sp)
    18bc:	27bd0018 	addiu	sp,sp,24
    18c0:	03e00008 	jr	ra
    18c4:	00000000 	nop

000018c8 <func_80AC1F28>:
    18c8:	27bdffe8 	addiu	sp,sp,-24
    18cc:	afbf0014 	sw	ra,20(sp)
    18d0:	afa5001c 	sw	a1,28(sp)
    18d4:	90820381 	lbu	v0,897(a0)
    18d8:	00803825 	move	a3,a0
    18dc:	24e50388 	addiu	a1,a3,904
    18e0:	304e0002 	andi	t6,v0,0x2
    18e4:	11c0001f 	beqz	t6,1964 <func_80AC1F28+0x9c>
    18e8:	304ffffd 	andi	t7,v0,0xfffd
    18ec:	a08f0381 	sb	t7,897(a0)
    18f0:	afa70018 	sw	a3,24(sp)
    18f4:	0c000000 	jal	0 <EnOkuta_Init>
    18f8:	24060001 	li	a2,1
    18fc:	8fa70018 	lw	a3,24(sp)
    1900:	8fa4001c 	lw	a0,28(sp)
    1904:	90f800b1 	lbu	t8,177(a3)
    1908:	00e02825 	move	a1,a3
    190c:	17000004 	bnez	t8,1920 <func_80AC1F28+0x58>
    1910:	00000000 	nop
    1914:	90f900b0 	lbu	t9,176(a3)
    1918:	53200013 	beqzl	t9,1968 <func_80AC1F28+0xa0>
    191c:	8fbf0014 	lw	ra,20(sp)
    1920:	0c000000 	jal	0 <EnOkuta_Init>
    1924:	afa70018 	sw	a3,24(sp)
    1928:	8fa70018 	lw	a3,24(sp)
    192c:	2401fffe 	li	at,-2
    1930:	8ce80004 	lw	t0,4(a3)
    1934:	90ea00b1 	lbu	t2,177(a3)
    1938:	a0e000af 	sb	zero,175(a3)
    193c:	01014824 	and	t1,t0,at
    1940:	24010003 	li	at,3
    1944:	15410005 	bne	t2,at,195c <func_80AC1F28+0x94>
    1948:	ace90004 	sw	t1,4(a3)
    194c:	0c000000 	jal	0 <EnOkuta_Init>
    1950:	00e02025 	move	a0,a3
    1954:	10000004 	b	1968 <func_80AC1F28+0xa0>
    1958:	8fbf0014 	lw	ra,20(sp)
    195c:	0c000000 	jal	0 <EnOkuta_Init>
    1960:	00e02025 	move	a0,a3
    1964:	8fbf0014 	lw	ra,20(sp)
    1968:	27bd0018 	addiu	sp,sp,24
    196c:	03e00008 	jr	ra
    1970:	00000000 	nop

00001974 <EnOkuta_Update>:
    1974:	27bdffa8 	addiu	sp,sp,-88
    1978:	afbf0024 	sw	ra,36(sp)
    197c:	afb10020 	sw	s1,32(sp)
    1980:	afb0001c 	sw	s0,28(sp)
    1984:	8ca21c44 	lw	v0,7236(a1)
    1988:	3c013000 	lui	at,0x3000
    198c:	342100c0 	ori	at,at,0xc0
    1990:	8c4e067c 	lw	t6,1660(v0)
    1994:	00808025 	move	s0,a0
    1998:	00a08825 	move	s1,a1
    199c:	01c17824 	and	t7,t6,at
    19a0:	55e000cf 	bnezl	t7,1ce0 <EnOkuta_Update+0x36c>
    19a4:	8fbf0024 	lw	ra,36(sp)
    19a8:	8498001c 	lh	t8,28(a0)
    19ac:	5700001d 	bnezl	t8,1a24 <EnOkuta_Update+0xb0>
    19b0:	8e190190 	lw	t9,400(s0)
    19b4:	0c000000 	jal	0 <EnOkuta_Init>
    19b8:	00000000 	nop
    19bc:	8e060024 	lw	a2,36(s0)
    19c0:	8e07002c 	lw	a3,44(s0)
    19c4:	27b90044 	addiu	t9,sp,68
    19c8:	27a80048 	addiu	t0,sp,72
    19cc:	afa80014 	sw	t0,20(sp)
    19d0:	afb90010 	sw	t9,16(sp)
    19d4:	02202025 	move	a0,s1
    19d8:	0c000000 	jal	0 <EnOkuta_Init>
    19dc:	262507c0 	addiu	a1,s1,1984
    19e0:	10400007 	beqz	v0,1a00 <EnOkuta_Update+0x8c>
    19e4:	c7a40044 	lwc1	$f4,68(sp)
    19e8:	c6060080 	lwc1	$f6,128(s0)
    19ec:	c7a80044 	lwc1	$f8,68(sp)
    19f0:	4606203c 	c.lt.s	$f4,$f6
    19f4:	00000000 	nop
    19f8:	45020009 	bc1fl	1a20 <EnOkuta_Update+0xac>
    19fc:	e608000c 	swc1	$f8,12(s0)
    1a00:	920900af 	lbu	t1,175(s0)
    1a04:	51200007 	beqzl	t1,1a24 <EnOkuta_Update+0xb0>
    1a08:	8e190190 	lw	t9,400(s0)
    1a0c:	0c000000 	jal	0 <EnOkuta_Init>
    1a10:	02002025 	move	a0,s0
    1a14:	100000b2 	b	1ce0 <EnOkuta_Update+0x36c>
    1a18:	8fbf0024 	lw	ra,36(sp)
    1a1c:	e608000c 	swc1	$f8,12(s0)
    1a20:	8e190190 	lw	t9,400(s0)
    1a24:	02002025 	move	a0,s0
    1a28:	02202825 	move	a1,s1
    1a2c:	0320f809 	jalr	t9
    1a30:	00000000 	nop
    1a34:	860a001c 	lh	t2,28(s0)
    1a38:	02002025 	move	a0,s0
    1a3c:	15400017 	bnez	t2,1a9c <EnOkuta_Update+0x128>
    1a40:	00000000 	nop
    1a44:	0c000000 	jal	0 <EnOkuta_Init>
    1a48:	02002025 	move	a0,s0
    1a4c:	3c0b0000 	lui	t3,0x0
    1a50:	856b0000 	lh	t3,0(t3)
    1a54:	860c03b4 	lh	t4,948(s0)
    1a58:	c6120368 	lwc1	$f18,872(s0)
    1a5c:	448b5000 	mtc1	t3,$f10
    1a60:	448c3000 	mtc1	t4,$f6
    1a64:	3c0142c8 	lui	at,0x42c8
    1a68:	46805420 	cvt.s.w	$f16,$f10
    1a6c:	46803220 	cvt.s.w	$f8,$f6
    1a70:	46128102 	mul.s	$f4,$f16,$f18
    1a74:	c6100054 	lwc1	$f16,84(s0)
    1a78:	44813000 	mtc1	at,$f6
    1a7c:	46082281 	sub.s	$f10,$f4,$f8
    1a80:	46105482 	mul.s	$f18,$f10,$f16
    1a84:	00000000 	nop
    1a88:	46069102 	mul.s	$f4,$f18,$f6
    1a8c:	4600220d 	trunc.w.s	$f8,$f4
    1a90:	440e4000 	mfc1	t6,$f8
    1a94:	10000037 	b	1b74 <EnOkuta_Update+0x200>
    1a98:	a60e03b2 	sh	t6,946(s0)
    1a9c:	0c000000 	jal	0 <EnOkuta_Init>
    1aa0:	afa00034 	sw	zero,52(sp)
    1aa4:	26050024 	addiu	a1,s0,36
    1aa8:	afa50030 	sw	a1,48(sp)
    1aac:	0c000000 	jal	0 <EnOkuta_Init>
    1ab0:	27a40038 	addiu	a0,sp,56
    1ab4:	3c0141f0 	lui	at,0x41f0
    1ab8:	44815000 	mtc1	at,$f10
    1abc:	240f0005 	li	t7,5
    1ac0:	afaf0014 	sw	t7,20(sp)
    1ac4:	02202025 	move	a0,s1
    1ac8:	02002825 	move	a1,s0
    1acc:	3c064120 	lui	a2,0x4120
    1ad0:	3c074170 	lui	a3,0x4170
    1ad4:	0c000000 	jal	0 <EnOkuta_Init>
    1ad8:	e7aa0010 	swc1	$f10,16(sp)
    1adc:	96180088 	lhu	t8,136(s0)
    1ae0:	262407c0 	addiu	a0,s1,1984
    1ae4:	33080008 	andi	t0,t8,0x8
    1ae8:	5100000b 	beqzl	t0,1b18 <EnOkuta_Update+0x1a4>
    1aec:	960b0088 	lhu	t3,136(s0)
    1af0:	8e050074 	lw	a1,116(s0)
    1af4:	0c000000 	jal	0 <EnOkuta_Init>
    1af8:	9206007c 	lbu	a2,124(s0)
    1afc:	10400005 	beqz	v0,1b14 <EnOkuta_Update+0x1a0>
    1b00:	24090001 	li	t1,1
    1b04:	afa90034 	sw	t1,52(sp)
    1b08:	96190088 	lhu	t9,136(s0)
    1b0c:	332afff7 	andi	t2,t9,0xfff7
    1b10:	a60a0088 	sh	t2,136(s0)
    1b14:	960b0088 	lhu	t3,136(s0)
    1b18:	262407c0 	addiu	a0,s1,1984
    1b1c:	316c0001 	andi	t4,t3,0x1
    1b20:	5180000b 	beqzl	t4,1b50 <EnOkuta_Update+0x1dc>
    1b24:	8fb80034 	lw	t8,52(sp)
    1b28:	8e050078 	lw	a1,120(s0)
    1b2c:	0c000000 	jal	0 <EnOkuta_Init>
    1b30:	9206007d 	lbu	a2,125(s0)
    1b34:	10400005 	beqz	v0,1b4c <EnOkuta_Update+0x1d8>
    1b38:	240d0001 	li	t5,1
    1b3c:	afad0034 	sw	t5,52(sp)
    1b40:	960e0088 	lhu	t6,136(s0)
    1b44:	31cffffe 	andi	t7,t6,0xfffe
    1b48:	a60f0088 	sh	t7,136(s0)
    1b4c:	8fb80034 	lw	t8,52(sp)
    1b50:	53000009 	beqzl	t8,1b78 <EnOkuta_Update+0x204>
    1b54:	26050370 	addiu	a1,s0,880
    1b58:	96080088 	lhu	t0,136(s0)
    1b5c:	8fa40030 	lw	a0,48(sp)
    1b60:	31090009 	andi	t1,t0,0x9
    1b64:	55200004 	bnezl	t1,1b78 <EnOkuta_Update+0x204>
    1b68:	26050370 	addiu	a1,s0,880
    1b6c:	0c000000 	jal	0 <EnOkuta_Init>
    1b70:	27a50038 	addiu	a1,sp,56
    1b74:	26050370 	addiu	a1,s0,880
    1b78:	afa5002c 	sw	a1,44(sp)
    1b7c:	0c000000 	jal	0 <EnOkuta_Init>
    1b80:	02002025 	move	a0,s0
    1b84:	8e020190 	lw	v0,400(s0)
    1b88:	3c190000 	lui	t9,0x0
    1b8c:	27390000 	addiu	t9,t9,0
    1b90:	13220004 	beq	t9,v0,1ba4 <EnOkuta_Update+0x230>
    1b94:	3c0a0000 	lui	t2,0x0
    1b98:	254a0000 	addiu	t2,t2,0
    1b9c:	5542001e 	bnel	t2,v0,1c18 <EnOkuta_Update+0x2a4>
    1ba0:	8609001c 	lh	t1,28(s0)
    1ba4:	8e0b016c 	lw	t3,364(s0)
    1ba8:	c6060054 	lwc1	$f6,84(s0)
    1bac:	c6080028 	lwc1	$f8,40(s0)
    1bb0:	856c0002 	lh	t4,2(t3)
    1bb4:	3c0f0000 	lui	t7,0x0
    1bb8:	3c0142c8 	lui	at,0x42c8
    1bbc:	448c8000 	mtc1	t4,$f16
    1bc0:	00000000 	nop
    1bc4:	468084a0 	cvt.s.w	$f18,$f16
    1bc8:	46069102 	mul.s	$f4,$f18,$f6
    1bcc:	46044280 	add.s	$f10,$f8,$f4
    1bd0:	c6080050 	lwc1	$f8,80(s0)
    1bd4:	4600540d 	trunc.w.s	$f16,$f10
    1bd8:	44815000 	mtc1	at,$f10
    1bdc:	440e8000 	mfc1	t6,$f16
    1be0:	00000000 	nop
    1be4:	a60e03b8 	sh	t6,952(s0)
    1be8:	85ef0000 	lh	t7,0(t7)
    1bec:	448f9000 	mtc1	t7,$f18
    1bf0:	00000000 	nop
    1bf4:	468091a0 	cvt.s.w	$f6,$f18
    1bf8:	46083102 	mul.s	$f4,$f6,$f8
    1bfc:	00000000 	nop
    1c00:	460a2402 	mul.s	$f16,$f4,$f10
    1c04:	4600848d 	trunc.w.s	$f18,$f16
    1c08:	44089000 	mfc1	t0,$f18
    1c0c:	00000000 	nop
    1c10:	a60803b0 	sh	t0,944(s0)
    1c14:	8609001c 	lh	t1,28(s0)
    1c18:	24010010 	li	at,16
    1c1c:	5521000c 	bnel	t1,at,1c50 <EnOkuta_Update+0x2dc>
    1c20:	8e020190 	lw	v0,400(s0)
    1c24:	8e190004 	lw	t9,4(s0)
    1c28:	3c010100 	lui	at,0x100
    1c2c:	02202025 	move	a0,s1
    1c30:	03215025 	or	t2,t9,at
    1c34:	3c010001 	lui	at,0x1
    1c38:	ae0a0004 	sw	t2,4(s0)
    1c3c:	34211e60 	ori	at,at,0x1e60
    1c40:	02212821 	addu	a1,s1,at
    1c44:	0c000000 	jal	0 <EnOkuta_Init>
    1c48:	8fa6002c 	lw	a2,44(sp)
    1c4c:	8e020190 	lw	v0,400(s0)
    1c50:	3c0b0000 	lui	t3,0x0
    1c54:	256b0000 	addiu	t3,t3,0
    1c58:	11620014 	beq	t3,v0,1cac <EnOkuta_Update+0x338>
    1c5c:	3c010001 	lui	at,0x1
    1c60:	3c0c0000 	lui	t4,0x0
    1c64:	258c0000 	addiu	t4,t4,0
    1c68:	34211e60 	ori	at,at,0x1e60
    1c6c:	1182000c 	beq	t4,v0,1ca0 <EnOkuta_Update+0x32c>
    1c70:	02212821 	addu	a1,s1,at
    1c74:	3c0d0000 	lui	t5,0x0
    1c78:	25ad0000 	addiu	t5,t5,0
    1c7c:	11a20008 	beq	t5,v0,1ca0 <EnOkuta_Update+0x32c>
    1c80:	3c0e0000 	lui	t6,0x0
    1c84:	25ce0000 	addiu	t6,t6,0
    1c88:	11c20005 	beq	t6,v0,1ca0 <EnOkuta_Update+0x32c>
    1c8c:	02202025 	move	a0,s1
    1c90:	8fa6002c 	lw	a2,44(sp)
    1c94:	0c000000 	jal	0 <EnOkuta_Init>
    1c98:	afa50030 	sw	a1,48(sp)
    1c9c:	8fa50030 	lw	a1,48(sp)
    1ca0:	02202025 	move	a0,s1
    1ca4:	0c000000 	jal	0 <EnOkuta_Init>
    1ca8:	8fa6002c 	lw	a2,44(sp)
    1cac:	02002025 	move	a0,s0
    1cb0:	0c000000 	jal	0 <EnOkuta_Init>
    1cb4:	3c054170 	lui	a1,0x4170
    1cb8:	860f001c 	lh	t7,28(s0)
    1cbc:	55e00008 	bnezl	t7,1ce0 <EnOkuta_Update+0x36c>
    1cc0:	8fbf0024 	lw	ra,36(sp)
    1cc4:	8e180134 	lw	t8,308(s0)
    1cc8:	02002025 	move	a0,s0
    1ccc:	53000004 	beqzl	t8,1ce0 <EnOkuta_Update+0x36c>
    1cd0:	8fbf0024 	lw	ra,36(sp)
    1cd4:	0c000000 	jal	0 <EnOkuta_Init>
    1cd8:	02202825 	move	a1,s1
    1cdc:	8fbf0024 	lw	ra,36(sp)
    1ce0:	8fb0001c 	lw	s0,28(sp)
    1ce4:	8fb10020 	lw	s1,32(sp)
    1ce8:	03e00008 	jr	ra
    1cec:	27bd0058 	addiu	sp,sp,88

00001cf0 <func_80AC2350>:
    1cf0:	27bdffe8 	addiu	sp,sp,-24
    1cf4:	afbf0014 	sw	ra,20(sp)
    1cf8:	8c820190 	lw	v0,400(a0)
    1cfc:	3c0e0000 	lui	t6,0x0
    1d00:	44857000 	mtc1	a1,$f14
    1d04:	25ce0000 	addiu	t6,t6,0
    1d08:	15c20014 	bne	t6,v0,1d5c <func_80AC2350+0x6c>
    1d0c:	3c0f0000 	lui	t7,0x0
    1d10:	3c013f80 	lui	at,0x3f80
    1d14:	44818000 	mtc1	at,$f16
    1d18:	3c010000 	lui	at,0x0
    1d1c:	e4d00008 	swc1	$f16,8(a2)
    1d20:	e4d00000 	swc1	$f16,0(a2)
    1d24:	c4240000 	lwc1	$f4,0(at)
    1d28:	afa60020 	sw	a2,32(sp)
    1d2c:	460e2302 	mul.s	$f12,$f4,$f14
    1d30:	0c000000 	jal	0 <EnOkuta_Init>
    1d34:	00000000 	nop
    1d38:	3c013f80 	lui	at,0x3f80
    1d3c:	44818000 	mtc1	at,$f16
    1d40:	3c010000 	lui	at,0x0
    1d44:	c4260000 	lwc1	$f6,0(at)
    1d48:	8fa60020 	lw	a2,32(sp)
    1d4c:	46060202 	mul.s	$f8,$f0,$f6
    1d50:	46104280 	add.s	$f10,$f8,$f16
    1d54:	10000083 	b	1f64 <func_80AC2350+0x274>
    1d58:	e4ca0004 	swc1	$f10,4(a2)
    1d5c:	25ef0000 	addiu	t7,t7,0
    1d60:	15e20036 	bne	t7,v0,1e3c <func_80AC2350+0x14c>
    1d64:	3c180000 	lui	t8,0x0
    1d68:	3c0140a0 	lui	at,0x40a0
    1d6c:	44819000 	mtc1	at,$f18
    1d70:	3c0140e0 	lui	at,0x40e0
    1d74:	4612703c 	c.lt.s	$f14,$f18
    1d78:	00000000 	nop
    1d7c:	4502000c 	bc1fl	1db0 <func_80AC2350+0xc0>
    1d80:	44814000 	mtc1	at,$f8
    1d84:	3c013f80 	lui	at,0x3f80
    1d88:	44818000 	mtc1	at,$f16
    1d8c:	3c013e80 	lui	at,0x3e80
    1d90:	44812000 	mtc1	at,$f4
    1d94:	e4d00000 	swc1	$f16,0(a2)
    1d98:	46047182 	mul.s	$f6,$f14,$f4
    1d9c:	46103000 	add.s	$f0,$f6,$f16
    1da0:	e4c00008 	swc1	$f0,8(a2)
    1da4:	1000006f 	b	1f64 <func_80AC2350+0x274>
    1da8:	e4c00004 	swc1	$f0,4(a2)
    1dac:	44814000 	mtc1	at,$f8
    1db0:	3c013f80 	lui	at,0x3f80
    1db4:	4608703c 	c.lt.s	$f14,$f8
    1db8:	00000000 	nop
    1dbc:	45020012 	bc1fl	1e08 <func_80AC2350+0x118>
    1dc0:	44818000 	mtc1	at,$f16
    1dc4:	3c013f80 	lui	at,0x3f80
    1dc8:	44818000 	mtc1	at,$f16
    1dcc:	3c014080 	lui	at,0x4080
    1dd0:	44815000 	mtc1	at,$f10
    1dd4:	3c013f00 	lui	at,0x3f00
    1dd8:	44812000 	mtc1	at,$f4
    1ddc:	460a7481 	sub.s	$f18,$f14,$f10
    1de0:	3c014000 	lui	at,0x4000
    1de4:	44814000 	mtc1	at,$f8
    1de8:	46049002 	mul.s	$f0,$f18,$f4
    1dec:	46004081 	sub.s	$f2,$f8,$f0
    1df0:	46100180 	add.s	$f6,$f0,$f16
    1df4:	e4c20008 	swc1	$f2,8(a2)
    1df8:	e4c20004 	swc1	$f2,4(a2)
    1dfc:	10000059 	b	1f64 <func_80AC2350+0x274>
    1e00:	e4c60000 	swc1	$f6,0(a2)
    1e04:	44818000 	mtc1	at,$f16
    1e08:	3c0140c0 	lui	at,0x40c0
    1e0c:	44815000 	mtc1	at,$f10
    1e10:	3c010000 	lui	at,0x0
    1e14:	c4240000 	lwc1	$f4,0(at)
    1e18:	460a7481 	sub.s	$f18,$f14,$f10
    1e1c:	3c014000 	lui	at,0x4000
    1e20:	44814000 	mtc1	at,$f8
    1e24:	e4d00004 	swc1	$f16,4(a2)
    1e28:	46049182 	mul.s	$f6,$f18,$f4
    1e2c:	e4d00008 	swc1	$f16,8(a2)
    1e30:	46064281 	sub.s	$f10,$f8,$f6
    1e34:	1000004b 	b	1f64 <func_80AC2350+0x274>
    1e38:	e4ca0000 	swc1	$f10,0(a2)
    1e3c:	27180000 	addiu	t8,t8,0
    1e40:	17020046 	bne	t8,v0,1f5c <func_80AC2350+0x26c>
    1e44:	3c01420c 	lui	at,0x420c
    1e48:	44819000 	mtc1	at,$f18
    1e4c:	3c0141c8 	lui	at,0x41c8
    1e50:	460e903e 	c.le.s	$f18,$f14
    1e54:	00000000 	nop
    1e58:	45010007 	bc1t	1e78 <func_80AC2350+0x188>
    1e5c:	00000000 	nop
    1e60:	44812000 	mtc1	at,$f4
    1e64:	3c0141d8 	lui	at,0x41d8
    1e68:	4604703c 	c.lt.s	$f14,$f4
    1e6c:	00000000 	nop
    1e70:	45020004 	bc1fl	1e84 <func_80AC2350+0x194>
    1e74:	44814000 	mtc1	at,$f8
    1e78:	1000003b 	b	1f68 <func_80AC2350+0x278>
    1e7c:	00001025 	move	v0,zero
    1e80:	44814000 	mtc1	at,$f8
    1e84:	3c0141f0 	lui	at,0x41f0
    1e88:	4608703c 	c.lt.s	$f14,$f8
    1e8c:	00000000 	nop
    1e90:	4502000f 	bc1fl	1ed0 <func_80AC2350+0x1e0>
    1e94:	44814000 	mtc1	at,$f8
    1e98:	3c013f80 	lui	at,0x3f80
    1e9c:	44818000 	mtc1	at,$f16
    1ea0:	3c0141c0 	lui	at,0x41c0
    1ea4:	44813000 	mtc1	at,$f6
    1ea8:	3c013f00 	lui	at,0x3f00
    1eac:	44819000 	mtc1	at,$f18
    1eb0:	46067281 	sub.s	$f10,$f14,$f6
    1eb4:	e4d00000 	swc1	$f16,0(a2)
    1eb8:	46125102 	mul.s	$f4,$f10,$f18
    1ebc:	46102000 	add.s	$f0,$f4,$f16
    1ec0:	e4c00008 	swc1	$f0,8(a2)
    1ec4:	10000027 	b	1f64 <func_80AC2350+0x274>
    1ec8:	e4c00004 	swc1	$f0,4(a2)
    1ecc:	44814000 	mtc1	at,$f8
    1ed0:	3c013f80 	lui	at,0x3f80
    1ed4:	4608703c 	c.lt.s	$f14,$f8
    1ed8:	00000000 	nop
    1edc:	45020012 	bc1fl	1f28 <func_80AC2350+0x238>
    1ee0:	44818000 	mtc1	at,$f16
    1ee4:	3c013f80 	lui	at,0x3f80
    1ee8:	44818000 	mtc1	at,$f16
    1eec:	3c0141d0 	lui	at,0x41d0
    1ef0:	44813000 	mtc1	at,$f6
    1ef4:	3c010000 	lui	at,0x0
    1ef8:	c4320000 	lwc1	$f18,0(at)
    1efc:	46067281 	sub.s	$f10,$f14,$f6
    1f00:	3c014000 	lui	at,0x4000
    1f04:	44814000 	mtc1	at,$f8
    1f08:	46125002 	mul.s	$f0,$f10,$f18
    1f0c:	46004081 	sub.s	$f2,$f8,$f0
    1f10:	46100100 	add.s	$f4,$f0,$f16
    1f14:	e4c20008 	swc1	$f2,8(a2)
    1f18:	e4c20004 	swc1	$f2,4(a2)
    1f1c:	10000011 	b	1f64 <func_80AC2350+0x274>
    1f20:	e4c40000 	swc1	$f4,0(a2)
    1f24:	44818000 	mtc1	at,$f16
    1f28:	3c0141e8 	lui	at,0x41e8
    1f2c:	44813000 	mtc1	at,$f6
    1f30:	3c010000 	lui	at,0x0
    1f34:	c4320000 	lwc1	$f18,0(at)
    1f38:	46067281 	sub.s	$f10,$f14,$f6
    1f3c:	3c014000 	lui	at,0x4000
    1f40:	44814000 	mtc1	at,$f8
    1f44:	e4d00004 	swc1	$f16,4(a2)
    1f48:	46125102 	mul.s	$f4,$f10,$f18
    1f4c:	e4d00008 	swc1	$f16,8(a2)
    1f50:	46044181 	sub.s	$f6,$f8,$f4
    1f54:	10000003 	b	1f64 <func_80AC2350+0x274>
    1f58:	e4c60000 	swc1	$f6,0(a2)
    1f5c:	10000002 	b	1f68 <func_80AC2350+0x278>
    1f60:	00001025 	move	v0,zero
    1f64:	24020001 	li	v0,1
    1f68:	8fbf0014 	lw	ra,20(sp)
    1f6c:	27bd0018 	addiu	sp,sp,24
    1f70:	03e00008 	jr	ra
    1f74:	00000000 	nop

00001f78 <func_80AC25D8>:
    1f78:	27bdffd0 	addiu	sp,sp,-48
    1f7c:	afa40030 	sw	a0,48(sp)
    1f80:	8fa40044 	lw	a0,68(sp)
    1f84:	afbf0014 	sw	ra,20(sp)
    1f88:	afa60038 	sw	a2,56(sp)
    1f8c:	afa7003c 	sw	a3,60(sp)
    1f90:	8c8f0190 	lw	t7,400(a0)
    1f94:	3c0e0000 	lui	t6,0x0
    1f98:	25ce0000 	addiu	t6,t6,0
    1f9c:	00001825 	move	v1,zero
    1fa0:	15cf0006 	bne	t6,t7,1fbc <func_80AC25D8+0x44>
    1fa4:	c4800164 	lwc1	$f0,356(a0)
    1fa8:	84980194 	lh	t8,404(a0)
    1fac:	44982000 	mtc1	t8,$f4
    1fb0:	00000000 	nop
    1fb4:	468021a0 	cvt.s.w	$f6,$f4
    1fb8:	46060000 	add.s	$f0,$f0,$f6
    1fbc:	24010005 	li	at,5
    1fc0:	14a1001a 	bne	a1,at,202c <func_80AC25D8+0xb4>
    1fc4:	3c013f80 	lui	at,0x3f80
    1fc8:	44810000 	mtc1	at,$f0
    1fcc:	c4880364 	lwc1	$f8,868(a0)
    1fd0:	46080032 	c.eq.s	$f0,$f8
    1fd4:	00000000 	nop
    1fd8:	4502000c 	bc1fl	200c <func_80AC25D8+0x94>
    1fdc:	8c890364 	lw	t1,868(a0)
    1fe0:	c48a0368 	lwc1	$f10,872(a0)
    1fe4:	460a0032 	c.eq.s	$f0,$f10
    1fe8:	00000000 	nop
    1fec:	45020007 	bc1fl	200c <func_80AC25D8+0x94>
    1ff0:	8c890364 	lw	t1,868(a0)
    1ff4:	c490036c 	lwc1	$f16,876(a0)
    1ff8:	46100032 	c.eq.s	$f0,$f16
    1ffc:	00000000 	nop
    2000:	45010011 	bc1t	2048 <func_80AC25D8+0xd0>
    2004:	00000000 	nop
    2008:	8c890364 	lw	t1,868(a0)
    200c:	27b9001c 	addiu	t9,sp,28
    2010:	24030001 	li	v1,1
    2014:	af290000 	sw	t1,0(t9)
    2018:	8c880368 	lw	t0,872(a0)
    201c:	af280004 	sw	t0,4(t9)
    2020:	8c89036c 	lw	t1,876(a0)
    2024:	10000008 	b	2048 <func_80AC25D8+0xd0>
    2028:	af290008 	sw	t1,8(t9)
    202c:	24010008 	li	at,8
    2030:	14a10005 	bne	a1,at,2048 <func_80AC25D8+0xd0>
    2034:	00000000 	nop
    2038:	44050000 	mfc1	a1,$f0
    203c:	0c000000 	jal	0 <EnOkuta_Init>
    2040:	27a6001c 	addiu	a2,sp,28
    2044:	00401825 	move	v1,v0
    2048:	10600005 	beqz	v1,2060 <func_80AC25D8+0xe8>
    204c:	c7ac001c 	lwc1	$f12,28(sp)
    2050:	c7ae0020 	lwc1	$f14,32(sp)
    2054:	8fa60024 	lw	a2,36(sp)
    2058:	0c000000 	jal	0 <EnOkuta_Init>
    205c:	24070001 	li	a3,1
    2060:	8fbf0014 	lw	ra,20(sp)
    2064:	27bd0030 	addiu	sp,sp,48
    2068:	00001025 	move	v0,zero
    206c:	03e00008 	jr	ra
    2070:	00000000 	nop

00002074 <EnOkuta_Draw>:
    2074:	27bdffa8 	addiu	sp,sp,-88
    2078:	afb00020 	sw	s0,32(sp)
    207c:	00808025 	move	s0,a0
    2080:	afbf002c 	sw	ra,44(sp)
    2084:	afb20028 	sw	s2,40(sp)
    2088:	afb10024 	sw	s1,36(sp)
    208c:	00a09025 	move	s2,a1
    2090:	0c000000 	jal	0 <EnOkuta_Init>
    2094:	8ca40000 	lw	a0,0(a1)
    2098:	860e001c 	lh	t6,28(s0)
    209c:	3c060000 	lui	a2,0x0
    20a0:	24c60000 	addiu	a2,a2,0
    20a4:	15c0000b 	bnez	t6,20d4 <EnOkuta_Draw+0x60>
    20a8:	27a4003c 	addiu	a0,sp,60
    20ac:	8e050150 	lw	a1,336(s0)
    20b0:	8e06016c 	lw	a2,364(s0)
    20b4:	3c070000 	lui	a3,0x0
    20b8:	24e70000 	addiu	a3,a3,0
    20bc:	afb00014 	sw	s0,20(sp)
    20c0:	afa00010 	sw	zero,16(sp)
    20c4:	0c000000 	jal	0 <EnOkuta_Init>
    20c8:	02402025 	move	a0,s2
    20cc:	1000002f 	b	218c <EnOkuta_Draw+0x118>
    20d0:	8fbf002c 	lw	ra,44(sp)
    20d4:	8e450000 	lw	a1,0(s2)
    20d8:	24070675 	li	a3,1653
    20dc:	0c000000 	jal	0 <EnOkuta_Init>
    20e0:	00a08825 	move	s1,a1
    20e4:	3c010001 	lui	at,0x1
    20e8:	34211da0 	ori	at,at,0x1da0
    20ec:	02412021 	addu	a0,s2,at
    20f0:	0c000000 	jal	0 <EnOkuta_Init>
    20f4:	24050001 	li	a1,1
    20f8:	860f0018 	lh	t7,24(s0)
    20fc:	3c010000 	lui	at,0x0
    2100:	c4280000 	lwc1	$f8,0(at)
    2104:	448f2000 	mtc1	t7,$f4
    2108:	24050001 	li	a1,1
    210c:	468021a0 	cvt.s.w	$f6,$f4
    2110:	46083302 	mul.s	$f12,$f6,$f8
    2114:	0c000000 	jal	0 <EnOkuta_Init>
    2118:	00000000 	nop
    211c:	8e2202c0 	lw	v0,704(s1)
    2120:	3c19da38 	lui	t9,0xda38
    2124:	37390003 	ori	t9,t9,0x3
    2128:	24580008 	addiu	t8,v0,8
    212c:	ae3802c0 	sw	t8,704(s1)
    2130:	3c050000 	lui	a1,0x0
    2134:	ac590000 	sw	t9,0(v0)
    2138:	8e440000 	lw	a0,0(s2)
    213c:	24a50000 	addiu	a1,a1,0
    2140:	24060679 	li	a2,1657
    2144:	0c000000 	jal	0 <EnOkuta_Init>
    2148:	00408025 	move	s0,v0
    214c:	ae020004 	sw	v0,4(s0)
    2150:	8e2202c0 	lw	v0,704(s1)
    2154:	3c0a0600 	lui	t2,0x600
    2158:	254a3380 	addiu	t2,t2,13184
    215c:	24480008 	addiu	t0,v0,8
    2160:	ae2802c0 	sw	t0,704(s1)
    2164:	3c09de00 	lui	t1,0xde00
    2168:	3c060000 	lui	a2,0x0
    216c:	ac490000 	sw	t1,0(v0)
    2170:	ac4a0004 	sw	t2,4(v0)
    2174:	8e450000 	lw	a1,0(s2)
    2178:	24c60000 	addiu	a2,a2,0
    217c:	27a4003c 	addiu	a0,sp,60
    2180:	0c000000 	jal	0 <EnOkuta_Init>
    2184:	2407067e 	li	a3,1662
    2188:	8fbf002c 	lw	ra,44(sp)
    218c:	8fb00020 	lw	s0,32(sp)
    2190:	8fb10024 	lw	s1,36(sp)
    2194:	8fb20028 	lw	s2,40(sp)
    2198:	03e00008 	jr	ra
    219c:	27bd0058 	addiu	sp,sp,88
