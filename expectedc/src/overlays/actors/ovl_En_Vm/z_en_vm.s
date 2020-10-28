
build/src/overlays/actors/ovl_En_Vm/z_en_vm.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B2D460>:
       0:	03e00008 	jr	ra
       4:	ac850214 	sw	a1,532(a0)

00000008 <EnVm_Init>:
       8:	27bdffc8 	addiu	sp,sp,-56
       c:	afb00024 	sw	s0,36(sp)
      10:	00808025 	move	s0,a0
      14:	afb10028 	sw	s1,40(sp)
      18:	00a08825 	move	s1,a1
      1c:	afbf002c 	sw	ra,44(sp)
      20:	260e0190 	addiu	t6,s0,400
      24:	260f01d2 	addiu	t7,s0,466
      28:	00a02025 	move	a0,a1
      2c:	3c060600 	lui	a2,0x600
      30:	3c070600 	lui	a3,0x600
      34:	2418000b 	li	t8,11
      38:	afb80018 	sw	t8,24(sp)
      3c:	24e70068 	addiu	a3,a3,104
      40:	24c63f60 	addiu	a2,a2,16224
      44:	2605014c 	addiu	a1,s0,332
      48:	afaf0014 	sw	t7,20(sp)
      4c:	0c000000 	jal	0 <func_80B2D460>
      50:	afae0010 	sw	t6,16(sp)
      54:	44800000 	mtc1	zero,$f0
      58:	260400b4 	addiu	a0,s0,180
      5c:	00003025 	move	a2,zero
      60:	44050000 	mfc1	a1,$f0
      64:	44070000 	mfc1	a3,$f0
      68:	0c000000 	jal	0 <func_80B2D460>
      6c:	00000000 	nop
      70:	26050268 	addiu	a1,s0,616
      74:	afa50030 	sw	a1,48(sp)
      78:	0c000000 	jal	0 <func_80B2D460>
      7c:	02202025 	move	a0,s1
      80:	3c070000 	lui	a3,0x0
      84:	8fa50030 	lw	a1,48(sp)
      88:	24e70000 	addiu	a3,a3,0
      8c:	02202025 	move	a0,s1
      90:	0c000000 	jal	0 <func_80B2D460>
      94:	02003025 	move	a2,s0
      98:	260502b4 	addiu	a1,s0,692
      9c:	afa50030 	sw	a1,48(sp)
      a0:	0c000000 	jal	0 <func_80B2D460>
      a4:	02202025 	move	a0,s1
      a8:	3c070000 	lui	a3,0x0
      ac:	8fa50030 	lw	a1,48(sp)
      b0:	24e70000 	addiu	a3,a3,0
      b4:	02202025 	move	a0,s1
      b8:	0c000000 	jal	0 <func_80B2D460>
      bc:	02003025 	move	a2,s0
      c0:	26050334 	addiu	a1,s0,820
      c4:	afa50030 	sw	a1,48(sp)
      c8:	0c000000 	jal	0 <func_80B2D460>
      cc:	02202025 	move	a0,s1
      d0:	3c070000 	lui	a3,0x0
      d4:	8fa50030 	lw	a1,48(sp)
      d8:	24e70000 	addiu	a3,a3,0
      dc:	02202025 	move	a0,s1
      e0:	0c000000 	jal	0 <func_80B2D460>
      e4:	02003025 	move	a2,s0
      e8:	8619001c 	lh	t9,28(s0)
      ec:	3c014220 	lui	at,0x4220
      f0:	44814000 	mtc1	at,$f8
      f4:	00194203 	sra	t0,t9,0x8
      f8:	44882000 	mtc1	t0,$f4
      fc:	8609001c 	lh	t1,28(s0)
     100:	240b0039 	li	t3,57
     104:	468021a0 	cvt.s.w	$f6,$f4
     108:	312a00ff 	andi	t2,t1,0xff
     10c:	a60a001c 	sh	t2,28(s0)
     110:	860c001c 	lh	t4,28(s0)
     114:	3c053c23 	lui	a1,0x3c23
     118:	a20b0117 	sb	t3,279(s0)
     11c:	46083282 	mul.s	$f10,$f6,$f8
     120:	240d0002 	li	t5,2
     124:	240e0001 	li	t6,1
     128:	34a5d70a 	ori	a1,a1,0xd70a
     12c:	02002025 	move	a0,s0
     130:	15800008 	bnez	t4,154 <EnVm_Init+0x14c>
     134:	e60a0218 	swc1	$f10,536(s0)
     138:	3c053c65 	lui	a1,0x3c65
     13c:	a20d00af 	sb	t5,175(s0)
     140:	34a56042 	ori	a1,a1,0x6042
     144:	0c000000 	jal	0 <func_80B2D460>
     148:	02002025 	move	a0,s0
     14c:	10000003 	b	15c <EnVm_Init+0x154>
     150:	00000000 	nop
     154:	0c000000 	jal	0 <func_80B2D460>
     158:	a20e00af 	sb	t6,175(s0)
     15c:	0c000000 	jal	0 <func_80B2D460>
     160:	02002025 	move	a0,s0
     164:	8fbf002c 	lw	ra,44(sp)
     168:	8fb00024 	lw	s0,36(sp)
     16c:	8fb10028 	lw	s1,40(sp)
     170:	03e00008 	jr	ra
     174:	27bd0038 	addiu	sp,sp,56

00000178 <EnVm_Destroy>:
     178:	27bdffe8 	addiu	sp,sp,-24
     17c:	00803025 	move	a2,a0
     180:	afbf0014 	sw	ra,20(sp)
     184:	00a02025 	move	a0,a1
     188:	0c000000 	jal	0 <func_80B2D460>
     18c:	24c50268 	addiu	a1,a2,616
     190:	8fbf0014 	lw	ra,20(sp)
     194:	27bd0018 	addiu	sp,sp,24
     198:	03e00008 	jr	ra
     19c:	00000000 	nop

000001a0 <func_80B2D600>:
     1a0:	27bdffd0 	addiu	sp,sp,-48
     1a4:	afb00028 	sw	s0,40(sp)
     1a8:	00808025 	move	s0,a0
     1ac:	afbf002c 	sw	ra,44(sp)
     1b0:	3c040600 	lui	a0,0x600
     1b4:	0c000000 	jal	0 <func_80B2D460>
     1b8:	24840068 	addiu	a0,a0,104
     1bc:	44822000 	mtc1	v0,$f4
     1c0:	44803000 	mtc1	zero,$f6
     1c4:	3c050600 	lui	a1,0x600
     1c8:	46802020 	cvt.s.w	$f0,$f4
     1cc:	240e0002 	li	t6,2
     1d0:	afae0014 	sw	t6,20(sp)
     1d4:	24a50068 	addiu	a1,a1,104
     1d8:	2604014c 	addiu	a0,s0,332
     1dc:	3c063f80 	lui	a2,0x3f80
     1e0:	44070000 	mfc1	a3,$f0
     1e4:	e7a00010 	swc1	$f0,16(sp)
     1e8:	0c000000 	jal	0 <func_80B2D460>
     1ec:	e7a60018 	swc1	$f6,24(sp)
     1f0:	a6000260 	sh	zero,608(s0)
     1f4:	860f0260 	lh	t7,608(s0)
     1f8:	2418000a 	li	t8,10
     1fc:	3c050000 	lui	a1,0x0
     200:	ae00021c 	sw	zero,540(s0)
     204:	ae180220 	sw	t8,544(s0)
     208:	24a50000 	addiu	a1,a1,0
     20c:	02002025 	move	a0,s0
     210:	0c000000 	jal	0 <func_80B2D460>
     214:	a60f025e 	sh	t7,606(s0)
     218:	8fbf002c 	lw	ra,44(sp)
     21c:	8fb00028 	lw	s0,40(sp)
     220:	27bd0030 	addiu	sp,sp,48
     224:	03e00008 	jr	ra
     228:	00000000 	nop

0000022c <func_80B2D68C>:
     22c:	27bdff90 	addiu	sp,sp,-112
     230:	afbf004c 	sw	ra,76(sp)
     234:	afb00048 	sw	s0,72(sp)
     238:	afa50074 	sw	a1,116(sp)
     23c:	8caf1c44 	lw	t7,7236(a1)
     240:	00808025 	move	s0,a0
     244:	00002825 	move	a1,zero
     248:	afaf006c 	sw	t7,108(sp)
     24c:	8482025e 	lh	v0,606(a0)
     250:	26040254 	addiu	a0,s0,596
     254:	2406000a 	li	a2,10
     258:	10400006 	beqz	v0,274 <func_80B2D68C+0x48>
     25c:	240705dc 	li	a3,1500
     260:	24010001 	li	at,1
     264:	10410070 	beq	v0,at,428 <func_80B2D68C+0x1fc>
     268:	2604025c 	addiu	a0,s0,604
     26c:	100000be 	b	568 <func_80B2D68C+0x33c>
     270:	8fbf004c 	lw	ra,76(sp)
     274:	afa00010 	sw	zero,16(sp)
     278:	0c000000 	jal	0 <func_80B2D460>
     27c:	afa40054 	sw	a0,84(sp)
     280:	8618008a 	lh	t8,138(s0)
     284:	8619025c 	lh	t9,604(s0)
     288:	860900b6 	lh	t1,182(s0)
     28c:	8fa5006c 	lw	a1,108(sp)
     290:	03194023 	subu	t0,t8,t9
     294:	01091823 	subu	v1,t0,t1
     298:	00031c00 	sll	v1,v1,0x10
     29c:	00031c03 	sra	v1,v1,0x10
     2a0:	a7a30066 	sh	v1,102(sp)
     2a4:	26040224 	addiu	a0,s0,548
     2a8:	0c000000 	jal	0 <func_80B2D460>
     2ac:	24a50024 	addiu	a1,a1,36
     2b0:	00022c00 	sll	a1,v0,0x10
     2b4:	28411b92 	slti	at,v0,7058
     2b8:	00052c03 	sra	a1,a1,0x10
     2bc:	14200002 	bnez	at,2c8 <func_80B2D68C+0x9c>
     2c0:	87a30066 	lh	v1,102(sp)
     2c4:	24051b91 	li	a1,7057
     2c8:	c6000218 	lwc1	$f0,536(s0)
     2cc:	c6020090 	lwc1	$f2,144(s0)
     2d0:	4600103e 	c.le.s	$f2,$f0
     2d4:	46020301 	sub.s	$f12,$f0,$f2
     2d8:	4502004d 	bc1fl	410 <func_80B2D68C+0x1e4>
     2dc:	8608025c 	lh	t0,604(s0)
     2e0:	04600003 	bltz	v1,2f0 <func_80B2D68C+0xc4>
     2e4:	00031023 	negu	v0,v1
     2e8:	10000001 	b	2f0 <func_80B2D68C+0xc4>
     2ec:	00601025 	move	v0,v1
     2f0:	28412711 	slti	at,v0,10001
     2f4:	10200045 	beqz	at,40c <func_80B2D68C+0x1e0>
     2f8:	28a10e38 	slti	at,a1,3640
     2fc:	14200043 	bnez	at,40c <func_80B2D68C+0x1e0>
     300:	3c0142a0 	lui	at,0x42a0
     304:	44812000 	mtc1	at,$f4
     308:	c6000094 	lwc1	$f0,148(s0)
     30c:	3c01c320 	lui	at,0xc320
     310:	4604003e 	c.le.s	$f0,$f4
     314:	00000000 	nop
     318:	4502003d 	bc1fl	410 <func_80B2D68C+0x1e4>
     31c:	8608025c 	lh	t0,604(s0)
     320:	44813000 	mtc1	at,$f6
     324:	8fa40054 	lw	a0,84(sp)
     328:	2406000a 	li	a2,10
     32c:	4600303e 	c.le.s	$f6,$f0
     330:	24070fa0 	li	a3,4000
     334:	45020036 	bc1fl	410 <func_80B2D68C+0x1e4>
     338:	8608025c 	lh	t0,604(s0)
     33c:	afa00010 	sw	zero,16(sp)
     340:	0c000000 	jal	0 <func_80B2D460>
     344:	e7ac0068 	swc1	$f12,104(sp)
     348:	3c014334 	lui	at,0x4334
     34c:	c7ac0068 	lwc1	$f12,104(sp)
     350:	44814000 	mtc1	at,$f8
     354:	24010003 	li	at,3
     358:	2604025c 	addiu	a0,s0,604
     35c:	46086282 	mul.s	$f10,$f12,$f8
     360:	24060001 	li	a2,1
     364:	4600540d 	trunc.w.s	$f16,$f10
     368:	44038000 	mfc1	v1,$f16
     36c:	00000000 	nop
     370:	00031c00 	sll	v1,v1,0x10
     374:	00031c03 	sra	v1,v1,0x10
     378:	04600003 	bltz	v1,388 <func_80B2D68C+0x15c>
     37c:	00031023 	negu	v0,v1
     380:	10000001 	b	388 <func_80B2D68C+0x15c>
     384:	00601025 	move	v0,v1
     388:	0041001a 	div	zero,v0,at
     38c:	860b008a 	lh	t3,138(s0)
     390:	860c00b6 	lh	t4,182(s0)
     394:	00003812 	mflo	a3
     398:	24e70fa0 	addiu	a3,a3,4000
     39c:	016c2823 	subu	a1,t3,t4
     3a0:	00052c00 	sll	a1,a1,0x10
     3a4:	00073c00 	sll	a3,a3,0x10
     3a8:	00073c03 	sra	a3,a3,0x10
     3ac:	00052c03 	sra	a1,a1,0x10
     3b0:	0c000000 	jal	0 <func_80B2D460>
     3b4:	afa00010 	sw	zero,16(sp)
     3b8:	28411555 	slti	at,v0,5461
     3bc:	10200016 	beqz	at,418 <func_80B2D68C+0x1ec>
     3c0:	00000000 	nop
     3c4:	8e0d0220 	lw	t5,544(s0)
     3c8:	3c014000 	lui	at,0x4000
     3cc:	02002025 	move	a0,s0
     3d0:	25aeffff 	addiu	t6,t5,-1
     3d4:	15c00010 	bnez	t6,418 <func_80B2D68C+0x1ec>
     3d8:	ae0e0220 	sw	t6,544(s0)
     3dc:	8618025e 	lh	t8,606(s0)
     3e0:	44800000 	mtc1	zero,$f0
     3e4:	44819000 	mtc1	at,$f18
     3e8:	27190001 	addiu	t9,t8,1
     3ec:	a619025e 	sh	t9,606(s0)
     3f0:	24053973 	li	a1,14707
     3f4:	e6000164 	swc1	$f0,356(s0)
     3f8:	e6000158 	swc1	$f0,344(s0)
     3fc:	0c000000 	jal	0 <func_80B2D460>
     400:	e6120168 	swc1	$f18,360(s0)
     404:	10000004 	b	418 <func_80B2D68C+0x1ec>
     408:	00000000 	nop
     40c:	8608025c 	lh	t0,604(s0)
     410:	2509fe0c 	addiu	t1,t0,-500
     414:	a609025c 	sh	t1,604(s0)
     418:	0c000000 	jal	0 <func_80B2D460>
     41c:	2604014c 	addiu	a0,s0,332
     420:	10000051 	b	568 <func_80B2D68C+0x33c>
     424:	8fbf004c 	lw	ra,76(sp)
     428:	860a008a 	lh	t2,138(s0)
     42c:	860b00b6 	lh	t3,182(s0)
     430:	afa00010 	sw	zero,16(sp)
     434:	24060001 	li	a2,1
     438:	014b2823 	subu	a1,t2,t3
     43c:	00052c00 	sll	a1,a1,0x10
     440:	00052c03 	sra	a1,a1,0x10
     444:	0c000000 	jal	0 <func_80B2D460>
     448:	24071f40 	li	a3,8000
     44c:	0c000000 	jal	0 <func_80B2D460>
     450:	2604014c 	addiu	a0,s0,332
     454:	50400007 	beqzl	v0,474 <func_80B2D68C+0x248>
     458:	860e0260 	lh	t6,608(s0)
     45c:	860c0260 	lh	t4,608(s0)
     460:	44800000 	mtc1	zero,$f0
     464:	258d0001 	addiu	t5,t4,1
     468:	a60d0260 	sh	t5,608(s0)
     46c:	e6000164 	swc1	$f0,356(s0)
     470:	860e0260 	lh	t6,608(s0)
     474:	24010002 	li	at,2
     478:	55c1003b 	bnel	t6,at,568 <func_80B2D68C+0x33c>
     47c:	8fbf004c 	lw	ra,76(sp)
     480:	860f008a 	lh	t7,138(s0)
     484:	26040224 	addiu	a0,s0,548
     488:	a60f0256 	sh	t7,598(s0)
     48c:	8fa5006c 	lw	a1,108(sp)
     490:	0c000000 	jal	0 <func_80B2D460>
     494:	24a50024 	addiu	a1,a1,36
     498:	a6020254 	sh	v0,596(s0)
     49c:	86030254 	lh	v1,596(s0)
     4a0:	3c060000 	lui	a2,0x0
     4a4:	24181b91 	li	t8,7057
     4a8:	28611b92 	slti	at,v1,7058
     4ac:	14200003 	bnez	at,4bc <func_80B2D68C+0x290>
     4b0:	24c60000 	addiu	a2,a2,0
     4b4:	a6180254 	sh	t8,596(s0)
     4b8:	86030254 	lh	v1,596(s0)
     4bc:	28610aaa 	slti	at,v1,2730
     4c0:	1020000d 	beqz	at,4f8 <func_80B2D68C+0x2cc>
     4c4:	26050230 	addiu	a1,s0,560
     4c8:	c600015c 	lwc1	$f0,348(s0)
     4cc:	a6000260 	sh	zero,608(s0)
     4d0:	3c013f80 	lui	at,0x3f80
     4d4:	86190260 	lh	t9,608(s0)
     4d8:	44812000 	mtc1	at,$f4
     4dc:	2408000a 	li	t0,10
     4e0:	ae080220 	sw	t0,544(s0)
     4e4:	e6000164 	swc1	$f0,356(s0)
     4e8:	e6000158 	swc1	$f0,344(s0)
     4ec:	a619025e 	sh	t9,606(s0)
     4f0:	1000001c 	b	564 <func_80B2D68C+0x338>
     4f4:	e6040168 	swc1	$f4,360(s0)
     4f8:	3c0140c0 	lui	at,0x40c0
     4fc:	44813000 	mtc1	at,$f6
     500:	24090096 	li	t1,150
     504:	240affe7 	li	t2,-25
     508:	e6060164 	swc1	$f6,356(s0)
     50c:	240b00ff 	li	t3,255
     510:	240c00ff 	li	t4,255
     514:	240d00ff 	li	t5,255
     518:	240e00ff 	li	t6,255
     51c:	240f0010 	li	t7,16
     520:	24180014 	li	t8,20
     524:	afb80038 	sw	t8,56(sp)
     528:	afaf0034 	sw	t7,52(sp)
     52c:	afae0030 	sw	t6,48(sp)
     530:	afad002c 	sw	t5,44(sp)
     534:	afac0028 	sw	t4,40(sp)
     538:	afab0020 	sw	t3,32(sp)
     53c:	afa00024 	sw	zero,36(sp)
     540:	afa0001c 	sw	zero,28(sp)
     544:	afa00018 	sw	zero,24(sp)
     548:	afaa0014 	sw	t2,20(sp)
     54c:	afa90010 	sw	t1,16(sp)
     550:	8fa40074 	lw	a0,116(sp)
     554:	0c000000 	jal	0 <func_80B2D460>
     558:	00c03825 	move	a3,a2
     55c:	0c000000 	jal	0 <func_80B2D460>
     560:	02002025 	move	a0,s0
     564:	8fbf004c 	lw	ra,76(sp)
     568:	8fb00048 	lw	s0,72(sp)
     56c:	27bd0070 	addiu	sp,sp,112
     570:	03e00008 	jr	ra
     574:	00000000 	nop

00000578 <func_80B2D9D8>:
     578:	3c014040 	lui	at,0x4040
     57c:	44810000 	mtc1	at,$f0
     580:	27bdffd0 	addiu	sp,sp,-48
     584:	3c0140e0 	lui	at,0x40e0
     588:	44812000 	mtc1	at,$f4
     58c:	44803000 	mtc1	zero,$f6
     590:	afb00028 	sw	s0,40(sp)
     594:	00808025 	move	s0,a0
     598:	afbf002c 	sw	ra,44(sp)
     59c:	3c050600 	lui	a1,0x600
     5a0:	240e0002 	li	t6,2
     5a4:	44060000 	mfc1	a2,$f0
     5a8:	44070000 	mfc1	a3,$f0
     5ac:	afae0014 	sw	t6,20(sp)
     5b0:	24a50068 	addiu	a1,a1,104
     5b4:	2484014c 	addiu	a0,a0,332
     5b8:	e7a40010 	swc1	$f4,16(sp)
     5bc:	0c000000 	jal	0 <func_80B2D460>
     5c0:	e7a60018 	swc1	$f6,24(sp)
     5c4:	240f0131 	li	t7,305
     5c8:	ae0f0220 	sw	t7,544(s0)
     5cc:	3c010000 	lui	at,0x0
     5d0:	c4280000 	lwc1	$f8,0(at)
     5d4:	921902c4 	lbu	t9,708(s0)
     5d8:	3c014220 	lui	at,0x4220
     5dc:	44815000 	mtc1	at,$f10
     5e0:	24180001 	li	t8,1
     5e4:	3c050000 	lui	a1,0x0
     5e8:	3328fffd 	andi	t0,t9,0xfffd
     5ec:	ae18021c 	sw	t8,540(s0)
     5f0:	a20802c4 	sb	t0,708(s0)
     5f4:	24a50000 	addiu	a1,a1,0
     5f8:	02002025 	move	a0,s0
     5fc:	e6080248 	swc1	$f8,584(s0)
     600:	0c000000 	jal	0 <func_80B2D460>
     604:	e60a0264 	swc1	$f10,612(s0)
     608:	8fbf002c 	lw	ra,44(sp)
     60c:	8fb00028 	lw	s0,40(sp)
     610:	27bd0030 	addiu	sp,sp,48
     614:	03e00008 	jr	ra
     618:	00000000 	nop

0000061c <func_80B2DA7C>:
     61c:	27bdffb0 	addiu	sp,sp,-80
     620:	afbf0024 	sw	ra,36(sp)
     624:	afb00020 	sw	s0,32(sp)
     628:	afa50054 	sw	a1,84(sp)
     62c:	8ca21c44 	lw	v0,7236(a1)
     630:	00808025 	move	s0,a0
     634:	24840224 	addiu	a0,a0,548
     638:	24450024 	addiu	a1,v0,36
     63c:	afa50030 	sw	a1,48(sp)
     640:	afa40034 	sw	a0,52(sp)
     644:	0c000000 	jal	0 <func_80B2D460>
     648:	afa2004c 	sw	v0,76(sp)
     64c:	00021c00 	sll	v1,v0,0x10
     650:	28411b92 	slti	at,v0,7058
     654:	14200002 	bnez	at,660 <func_80B2DA7C+0x44>
     658:	00031c03 	sra	v1,v1,0x10
     65c:	24031b91 	li	v1,7057
     660:	920202c4 	lbu	v0,708(s0)
     664:	3c010000 	lui	at,0x0
     668:	26040248 	addiu	a0,s0,584
     66c:	304f0002 	andi	t7,v0,0x2
     670:	11e0000c 	beqz	t7,6a4 <func_80B2DA7C+0x88>
     674:	3058fffd 	andi	t8,v0,0xfffd
     678:	a21802c4 	sb	t8,708(s0)
     67c:	ae000220 	sw	zero,544(s0)
     680:	c4240000 	lwc1	$f4,0(at)
     684:	c6060248 	lwc1	$f6,584(s0)
     688:	3c010000 	lui	at,0x0
     68c:	4606203c 	c.lt.s	$f4,$f6
     690:	00000000 	nop
     694:	45020004 	bc1fl	6a8 <func_80B2DA7C+0x8c>
     698:	86190254 	lh	t9,596(s0)
     69c:	c4280000 	lwc1	$f8,0(at)
     6a0:	e6080248 	swc1	$f8,584(s0)
     6a4:	86190254 	lh	t9,596(s0)
     6a8:	3c063f80 	lui	a2,0x3f80
     6ac:	2b210aaa 	slti	at,t9,2730
     6b0:	54200005 	bnezl	at,6c8 <func_80B2DA7C+0xac>
     6b4:	44801000 	mtc1	zero,$f2
     6b8:	8e020220 	lw	v0,544(s0)
     6bc:	14400014 	bnez	v0,710 <func_80B2DA7C+0xf4>
     6c0:	2448ffff 	addiu	t0,v0,-1
     6c4:	44801000 	mtc1	zero,$f2
     6c8:	3c073cf5 	lui	a3,0x3cf5
     6cc:	34e7c28f 	ori	a3,a3,0xc28f
     6d0:	44051000 	mfc1	a1,$f2
     6d4:	0c000000 	jal	0 <func_80B2D460>
     6d8:	e7a20010 	swc1	$f2,16(sp)
     6dc:	44801000 	mtc1	zero,$f2
     6e0:	c60a0248 	lwc1	$f10,584(s0)
     6e4:	a6000260 	sh	zero,608(s0)
     6e8:	02002025 	move	a0,s0
     6ec:	460a1032 	c.eq.s	$f2,$f10
     6f0:	00000000 	nop
     6f4:	45000051 	bc1f	83c <func_80B2DA7C+0x220>
     6f8:	00000000 	nop
     6fc:	e6020250 	swc1	$f2,592(s0)
     700:	0c000000 	jal	0 <func_80B2D460>
     704:	e602024c 	swc1	$f2,588(s0)
     708:	1000004c 	b	83c <func_80B2DA7C+0x220>
     70c:	00000000 	nop
     710:	2901012d 	slti	at,t0,301
     714:	1020004f 	beqz	at,854 <func_80B2DA7C+0x238>
     718:	ae080220 	sw	t0,544(s0)
     71c:	860a008a 	lh	t2,138(s0)
     720:	860b00b6 	lh	t3,182(s0)
     724:	a7a3004a 	sh	v1,74(sp)
     728:	afa00010 	sw	zero,16(sp)
     72c:	014b2823 	subu	a1,t2,t3
     730:	00052c00 	sll	a1,a1,0x10
     734:	00052c03 	sra	a1,a1,0x10
     738:	2604025c 	addiu	a0,s0,604
     73c:	2406000a 	li	a2,10
     740:	0c000000 	jal	0 <func_80B2D460>
     744:	24070dac 	li	a3,3500
     748:	8605008a 	lh	a1,138(s0)
     74c:	afa00010 	sw	zero,16(sp)
     750:	26040256 	addiu	a0,s0,598
     754:	2406000a 	li	a2,10
     758:	0c000000 	jal	0 <func_80B2D460>
     75c:	24070dac 	li	a3,3500
     760:	26040254 	addiu	a0,s0,596
     764:	87a5004a 	lh	a1,74(sp)
     768:	2406000a 	li	a2,10
     76c:	24070dac 	li	a3,3500
     770:	0c000000 	jal	0 <func_80B2D460>
     774:	afa00010 	sw	zero,16(sp)
     778:	8fac0030 	lw	t4,48(sp)
     77c:	27a50038 	addiu	a1,sp,56
     780:	3c01c6fa 	lui	at,0xc6fa
     784:	8d8e0000 	lw	t6,0(t4)
     788:	44818000 	mtc1	at,$f16
     78c:	acae0000 	sw	t6,0(a1)
     790:	8d8d0004 	lw	t5,4(t4)
     794:	acad0004 	sw	t5,4(a1)
     798:	8d8e0008 	lw	t6,8(t4)
     79c:	acae0008 	sw	t6,8(a1)
     7a0:	8faf004c 	lw	t7,76(sp)
     7a4:	c5e00080 	lwc1	$f0,128(t7)
     7a8:	4600803c 	c.lt.s	$f16,$f0
     7ac:	00000000 	nop
     7b0:	45000002 	bc1f	7bc <func_80B2DA7C+0x1a0>
     7b4:	00000000 	nop
     7b8:	e7a0003c 	swc1	$f0,60(sp)
     7bc:	0c000000 	jal	0 <func_80B2D460>
     7c0:	8fa40034 	lw	a0,52(sp)
     7c4:	44801000 	mtc1	zero,$f2
     7c8:	44050000 	mfc1	a1,$f0
     7cc:	8e070264 	lw	a3,612(s0)
     7d0:	26040250 	addiu	a0,s0,592
     7d4:	3c063f80 	lui	a2,0x3f80
     7d8:	0c000000 	jal	0 <func_80B2D460>
     7dc:	e7a20010 	swc1	$f2,16(sp)
     7e0:	44801000 	mtc1	zero,$f2
     7e4:	3c053dcc 	lui	a1,0x3dcc
     7e8:	3c073df5 	lui	a3,0x3df5
     7ec:	34e7c28f 	ori	a3,a3,0xc28f
     7f0:	34a5cccd 	ori	a1,a1,0xcccd
     7f4:	26040248 	addiu	a0,s0,584
     7f8:	3c063f80 	lui	a2,0x3f80
     7fc:	0c000000 	jal	0 <func_80B2D460>
     800:	e7a20010 	swc1	$f2,16(sp)
     804:	02002025 	move	a0,s0
     808:	0c000000 	jal	0 <func_80B2D460>
     80c:	24053171 	li	a1,12657
     810:	86180260 	lh	t8,608(s0)
     814:	8fa40054 	lw	a0,84(sp)
     818:	260602b4 	addiu	a2,s0,692
     81c:	2b010003 	slti	at,t8,3
     820:	14200004 	bnez	at,834 <func_80B2DA7C+0x218>
     824:	3c010001 	lui	at,0x1
     828:	34211e60 	ori	at,at,0x1e60
     82c:	0c000000 	jal	0 <func_80B2D460>
     830:	00812821 	addu	a1,a0,at
     834:	24190003 	li	t9,3
     838:	a6190260 	sh	t9,608(s0)
     83c:	0c000000 	jal	0 <func_80B2D460>
     840:	2604014c 	addiu	a0,s0,332
     844:	50400004 	beqzl	v0,858 <func_80B2DA7C+0x23c>
     848:	8fbf0024 	lw	ra,36(sp)
     84c:	c6120158 	lwc1	$f18,344(s0)
     850:	e6120164 	swc1	$f18,356(s0)
     854:	8fbf0024 	lw	ra,36(sp)
     858:	8fb00020 	lw	s0,32(sp)
     85c:	27bd0050 	addiu	sp,sp,80
     860:	03e00008 	jr	ra
     864:	00000000 	nop

00000868 <func_80B2DCC8>:
     868:	27bdffd0 	addiu	sp,sp,-48
     86c:	afb00028 	sw	s0,40(sp)
     870:	00808025 	move	s0,a0
     874:	afbf002c 	sw	ra,44(sp)
     878:	3c040600 	lui	a0,0x600
     87c:	0c000000 	jal	0 <func_80B2D460>
     880:	24840068 	addiu	a0,a0,104
     884:	44822000 	mtc1	v0,$f4
     888:	44800000 	mtc1	zero,$f0
     88c:	3c050600 	lui	a1,0x600
     890:	46802120 	cvt.s.w	$f4,$f4
     894:	240e0002 	li	t6,2
     898:	afae0014 	sw	t6,20(sp)
     89c:	24a50068 	addiu	a1,a1,104
     8a0:	2604014c 	addiu	a0,s0,332
     8a4:	3c06bf80 	lui	a2,0xbf80
     8a8:	44072000 	mfc1	a3,$f4
     8ac:	e7a00010 	swc1	$f0,16(sp)
     8b0:	0c000000 	jal	0 <func_80B2D460>
     8b4:	e7a00018 	swc1	$f0,24(sp)
     8b8:	44800000 	mtc1	zero,$f0
     8bc:	a6000260 	sh	zero,608(s0)
     8c0:	86180260 	lh	t8,608(s0)
     8c4:	240f00b4 	li	t7,180
     8c8:	24190002 	li	t9,2
     8cc:	ae0f0220 	sw	t7,544(s0)
     8d0:	ae19021c 	sw	t9,540(s0)
     8d4:	02002025 	move	a0,s0
     8d8:	2405389e 	li	a1,14494
     8dc:	e6000250 	swc1	$f0,592(s0)
     8e0:	e600024c 	swc1	$f0,588(s0)
     8e4:	0c000000 	jal	0 <func_80B2D460>
     8e8:	a618025e 	sh	t8,606(s0)
     8ec:	3c050000 	lui	a1,0x0
     8f0:	24a50000 	addiu	a1,a1,0
     8f4:	0c000000 	jal	0 <func_80B2D460>
     8f8:	02002025 	move	a0,s0
     8fc:	8fbf002c 	lw	ra,44(sp)
     900:	8fb00028 	lw	s0,40(sp)
     904:	27bd0030 	addiu	sp,sp,48
     908:	03e00008 	jr	ra
     90c:	00000000 	nop

00000910 <func_80B2DD70>:
     910:	27bdffc8 	addiu	sp,sp,-56
     914:	afbf002c 	sw	ra,44(sp)
     918:	afb00028 	sw	s0,40(sp)
     91c:	afa5003c 	sw	a1,60(sp)
     920:	8c8e0220 	lw	t6,544(a0)
     924:	00808025 	move	s0,a0
     928:	00002825 	move	a1,zero
     92c:	15c0002d 	bnez	t6,9e4 <func_80B2DD70+0xd4>
     930:	2406000a 	li	a2,10
     934:	2484014c 	addiu	a0,a0,332
     938:	0c000000 	jal	0 <func_80B2D460>
     93c:	afa40030 	sw	a0,48(sp)
     940:	50400032 	beqzl	v0,a0c <func_80B2DD70+0xfc>
     944:	8fbf002c 	lw	ra,44(sp)
     948:	860f025e 	lh	t7,606(s0)
     94c:	24010003 	li	at,3
     950:	25f80001 	addiu	t8,t7,1
     954:	a618025e 	sh	t8,606(s0)
     958:	8602025e 	lh	v0,606(s0)
     95c:	54410006 	bnel	v0,at,978 <func_80B2DD70+0x68>
     960:	24010001 	li	at,1
     964:	0c000000 	jal	0 <func_80B2D460>
     968:	02002025 	move	a0,s0
     96c:	10000027 	b	a0c <func_80B2DD70+0xfc>
     970:	8fbf002c 	lw	ra,44(sp)
     974:	24010001 	li	at,1
     978:	14410013 	bne	v0,at,9c8 <func_80B2DD70+0xb8>
     97c:	2408000a 	li	t0,10
     980:	3c100600 	lui	s0,0x600
     984:	26100068 	addiu	s0,s0,104
     988:	0c000000 	jal	0 <func_80B2D460>
     98c:	02002025 	move	a0,s0
     990:	44822000 	mtc1	v0,$f4
     994:	44800000 	mtc1	zero,$f0
     998:	24190002 	li	t9,2
     99c:	468021a0 	cvt.s.w	$f6,$f4
     9a0:	44070000 	mfc1	a3,$f0
     9a4:	afb90014 	sw	t9,20(sp)
     9a8:	8fa40030 	lw	a0,48(sp)
     9ac:	02002825 	move	a1,s0
     9b0:	3c063f80 	lui	a2,0x3f80
     9b4:	e7a60010 	swc1	$f6,16(sp)
     9b8:	0c000000 	jal	0 <func_80B2D460>
     9bc:	e7a00018 	swc1	$f0,24(sp)
     9c0:	10000012 	b	a0c <func_80B2DD70+0xfc>
     9c4:	8fbf002c 	lw	ra,44(sp)
     9c8:	3c014000 	lui	at,0x4000
     9cc:	44800000 	mtc1	zero,$f0
     9d0:	44814000 	mtc1	at,$f8
     9d4:	ae080220 	sw	t0,544(s0)
     9d8:	e6000164 	swc1	$f0,356(s0)
     9dc:	1000000a 	b	a08 <func_80B2DD70+0xf8>
     9e0:	e6080168 	swc1	$f8,360(s0)
     9e4:	26040254 	addiu	a0,s0,596
     9e8:	240705dc 	li	a3,1500
     9ec:	0c000000 	jal	0 <func_80B2D460>
     9f0:	afa00010 	sw	zero,16(sp)
     9f4:	8e090220 	lw	t1,544(s0)
     9f8:	2604014c 	addiu	a0,s0,332
     9fc:	252affff 	addiu	t2,t1,-1
     a00:	0c000000 	jal	0 <func_80B2D460>
     a04:	ae0a0220 	sw	t2,544(s0)
     a08:	8fbf002c 	lw	ra,44(sp)
     a0c:	8fb00028 	lw	s0,40(sp)
     a10:	27bd0038 	addiu	sp,sp,56
     a14:	03e00008 	jr	ra
     a18:	00000000 	nop

00000a1c <func_80B2DE7C>:
     a1c:	27bdffd0 	addiu	sp,sp,-48
     a20:	afb00028 	sw	s0,40(sp)
     a24:	00808025 	move	s0,a0
     a28:	afbf002c 	sw	ra,44(sp)
     a2c:	3c040600 	lui	a0,0x600
     a30:	0c000000 	jal	0 <func_80B2D460>
     a34:	24840068 	addiu	a0,a0,104
     a38:	44822000 	mtc1	v0,$f4
     a3c:	44800000 	mtc1	zero,$f0
     a40:	3c050600 	lui	a1,0x600
     a44:	46802120 	cvt.s.w	$f4,$f4
     a48:	240e0002 	li	t6,2
     a4c:	afae0014 	sw	t6,20(sp)
     a50:	24a50068 	addiu	a1,a1,104
     a54:	2604014c 	addiu	a0,s0,332
     a58:	3c06bf80 	lui	a2,0xbf80
     a5c:	44072000 	mfc1	a3,$f4
     a60:	e7a00010 	swc1	$f0,16(sp)
     a64:	0c000000 	jal	0 <func_80B2D460>
     a68:	e7a00018 	swc1	$f0,24(sp)
     a6c:	44800000 	mtc1	zero,$f0
     a70:	a6000260 	sh	zero,608(s0)
     a74:	86180260 	lh	t8,608(s0)
     a78:	240f0021 	li	t7,33
     a7c:	24190003 	li	t9,3
     a80:	ae0f0220 	sw	t7,544(s0)
     a84:	ae19021c 	sw	t9,540(s0)
     a88:	3c010000 	lui	at,0x0
     a8c:	e6000250 	swc1	$f0,592(s0)
     a90:	e600024c 	swc1	$f0,588(s0)
     a94:	a618025e 	sh	t8,606(s0)
     a98:	c4260000 	lwc1	$f6,0(at)
     a9c:	3c010000 	lui	at,0x0
     aa0:	c60a0054 	lwc1	$f10,84(s0)
     aa4:	e60600bc 	swc1	$f6,188(s0)
     aa8:	c4280000 	lwc1	$f8,0(at)
     aac:	c6120028 	lwc1	$f18,40(s0)
     ab0:	3c014100 	lui	at,0x4100
     ab4:	460a4402 	mul.s	$f16,$f8,$f10
     ab8:	44813000 	mtc1	at,$f6
     abc:	3c01bf00 	lui	at,0xbf00
     ac0:	44814000 	mtc1	at,$f8
     ac4:	e6060060 	swc1	$f6,96(s0)
     ac8:	e608006c 	swc1	$f8,108(s0)
     acc:	46109100 	add.s	$f4,$f18,$f16
     ad0:	0c000000 	jal	0 <func_80B2D460>
     ad4:	e6040028 	swc1	$f4,40(s0)
     ad8:	3c013f80 	lui	at,0x3f80
     adc:	44815000 	mtc1	at,$f10
     ae0:	3c010000 	lui	at,0x0
     ae4:	460a0480 	add.s	$f18,$f0,$f10
     ae8:	e6120068 	swc1	$f18,104(s0)
     aec:	0c000000 	jal	0 <func_80B2D460>
     af0:	c42c0000 	lwc1	$f12,0(at)
     af4:	4600040d 	trunc.w.s	$f16,$f0
     af8:	3c050000 	lui	a1,0x0
     afc:	24a50000 	addiu	a1,a1,0
     b00:	02002025 	move	a0,s0
     b04:	44098000 	mfc1	t1,$f16
     b08:	0c000000 	jal	0 <func_80B2D460>
     b0c:	a6090032 	sh	t1,50(s0)
     b10:	8fbf002c 	lw	ra,44(sp)
     b14:	8fb00028 	lw	s0,40(sp)
     b18:	27bd0030 	addiu	sp,sp,48
     b1c:	03e00008 	jr	ra
     b20:	00000000 	nop

00000b24 <func_80B2DF84>:
     b24:	27bdffc8 	addiu	sp,sp,-56
     b28:	afbf0034 	sw	ra,52(sp)
     b2c:	afb00030 	sw	s0,48(sp)
     b30:	afa5003c 	sw	a1,60(sp)
     b34:	848e0254 	lh	t6,596(a0)
     b38:	8498025c 	lh	t8,604(a0)
     b3c:	00808025 	move	s0,a0
     b40:	25cf05dc 	addiu	t7,t6,1500
     b44:	271909c4 	addiu	t9,t8,2500
     b48:	a48f0254 	sh	t7,596(a0)
     b4c:	0c000000 	jal	0 <func_80B2D460>
     b50:	a499025c 	sh	t9,604(a0)
     b54:	8e080220 	lw	t0,544(s0)
     b58:	24060010 	li	a2,16
     b5c:	240b06ff 	li	t3,1791
     b60:	2509ffff 	addiu	t1,t0,-1
     b64:	15200016 	bnez	t1,bc0 <func_80B2DF84+0x9c>
     b68:	ae090220 	sw	t1,544(s0)
     b6c:	c6040028 	lwc1	$f4,40(s0)
     b70:	8e070024 	lw	a3,36(s0)
     b74:	8fa5003c 	lw	a1,60(sp)
     b78:	e7a40010 	swc1	$f4,16(sp)
     b7c:	c606002c 	lwc1	$f6,44(s0)
     b80:	afa00024 	sw	zero,36(sp)
     b84:	afab0020 	sw	t3,32(sp)
     b88:	afa0001c 	sw	zero,28(sp)
     b8c:	afa00018 	sw	zero,24(sp)
     b90:	24a41c24 	addiu	a0,a1,7204
     b94:	0c000000 	jal	0 <func_80B2D460>
     b98:	e7a60014 	swc1	$f6,20(sp)
     b9c:	10400002 	beqz	v0,ba8 <func_80B2DF84+0x84>
     ba0:	02002825 	move	a1,s0
     ba4:	a44001f8 	sh	zero,504(v0)
     ba8:	8fa4003c 	lw	a0,60(sp)
     bac:	26060024 	addiu	a2,s0,36
     bb0:	0c000000 	jal	0 <func_80B2D460>
     bb4:	240700a0 	li	a3,160
     bb8:	0c000000 	jal	0 <func_80B2D460>
     bbc:	02002025 	move	a0,s0
     bc0:	8fbf0034 	lw	ra,52(sp)
     bc4:	8fb00030 	lw	s0,48(sp)
     bc8:	27bd0038 	addiu	sp,sp,56
     bcc:	03e00008 	jr	ra
     bd0:	00000000 	nop

00000bd4 <func_80B2E034>:
     bd4:	27bdffc8 	addiu	sp,sp,-56
     bd8:	afb00030 	sw	s0,48(sp)
     bdc:	00808025 	move	s0,a0
     be0:	afbf0034 	sw	ra,52(sp)
     be4:	afa5003c 	sw	a1,60(sp)
     be8:	00a02025 	move	a0,a1
     bec:	0c000000 	jal	0 <func_80B2D460>
     bf0:	26050268 	addiu	a1,s0,616
     bf4:	5040000b 	beqzl	v0,c24 <func_80B2E034+0x50>
     bf8:	92020345 	lbu	v0,837(s0)
     bfc:	920e00af 	lbu	t6,175(s0)
     c00:	3c040000 	lui	a0,0x0
     c04:	24840000 	addiu	a0,a0,0
     c08:	25cfffff 	addiu	t7,t6,-1
     c0c:	a20f00af 	sb	t7,175(s0)
     c10:	0c000000 	jal	0 <func_80B2D460>
     c14:	31e500ff 	andi	a1,t7,0xff
     c18:	1000000c 	b	c4c <func_80B2E034+0x78>
     c1c:	920900af 	lbu	t1,175(s0)
     c20:	92020345 	lbu	v0,837(s0)
     c24:	30580002 	andi	t8,v0,0x2
     c28:	5300002b 	beqzl	t8,cd8 <func_80B2E034+0x104>
     c2c:	8fbf0034 	lw	ra,52(sp)
     c30:	8e19021c 	lw	t9,540(s0)
     c34:	24010002 	li	at,2
     c38:	3048fffd 	andi	t0,v0,0xfffd
     c3c:	53210026 	beql	t9,at,cd8 <func_80B2E034+0x104>
     c40:	8fbf0034 	lw	ra,52(sp)
     c44:	a2080345 	sb	t0,837(s0)
     c48:	920900af 	lbu	t1,175(s0)
     c4c:	02002025 	move	a0,s0
     c50:	24054000 	li	a1,16384
     c54:	1120000a 	beqz	t1,c80 <func_80B2E034+0xac>
     c58:	3c0141a0 	lui	at,0x41a0
     c5c:	240a0008 	li	t2,8
     c60:	afaa0010 	sw	t2,16(sp)
     c64:	240600ff 	li	a2,255
     c68:	0c000000 	jal	0 <func_80B2D460>
     c6c:	00003825 	move	a3,zero
     c70:	0c000000 	jal	0 <func_80B2D460>
     c74:	02002025 	move	a0,s0
     c78:	10000017 	b	cd8 <func_80B2E034+0x104>
     c7c:	8fbf0034 	lw	ra,52(sp)
     c80:	c6040028 	lwc1	$f4,40(s0)
     c84:	44813000 	mtc1	at,$f6
     c88:	8e070024 	lw	a3,36(s0)
     c8c:	8fa5003c 	lw	a1,60(sp)
     c90:	46062200 	add.s	$f8,$f4,$f6
     c94:	240b0601 	li	t3,1537
     c98:	24060010 	li	a2,16
     c9c:	24a41c24 	addiu	a0,a1,7204
     ca0:	e7a80010 	swc1	$f8,16(sp)
     ca4:	c60a002c 	lwc1	$f10,44(s0)
     ca8:	afa00024 	sw	zero,36(sp)
     cac:	afab0020 	sw	t3,32(sp)
     cb0:	afa0001c 	sw	zero,28(sp)
     cb4:	afa00018 	sw	zero,24(sp)
     cb8:	0c000000 	jal	0 <func_80B2D460>
     cbc:	e7aa0014 	swc1	$f10,20(sp)
     cc0:	10400002 	beqz	v0,ccc <func_80B2E034+0xf8>
     cc4:	00000000 	nop
     cc8:	a44001f8 	sh	zero,504(v0)
     ccc:	0c000000 	jal	0 <func_80B2D460>
     cd0:	02002025 	move	a0,s0
     cd4:	8fbf0034 	lw	ra,52(sp)
     cd8:	8fb00030 	lw	s0,48(sp)
     cdc:	27bd0038 	addiu	sp,sp,56
     ce0:	03e00008 	jr	ra
     ce4:	00000000 	nop

00000ce8 <EnVm_Update>:
     ce8:	27bdffc0 	addiu	sp,sp,-64
     cec:	afbf002c 	sw	ra,44(sp)
     cf0:	afb10028 	sw	s1,40(sp)
     cf4:	afb00024 	sw	s0,36(sp)
     cf8:	908e00af 	lbu	t6,175(a0)
     cfc:	00808025 	move	s0,a0
     d00:	00a08825 	move	s1,a1
     d04:	51c00004 	beqzl	t6,d18 <EnVm_Update+0x30>
     d08:	860f0260 	lh	t7,608(s0)
     d0c:	0c000000 	jal	0 <func_80B2D460>
     d10:	00000000 	nop
     d14:	860f0260 	lh	t7,608(s0)
     d18:	24010004 	li	at,4
     d1c:	02202025 	move	a0,s1
     d20:	15e10017 	bne	t7,at,d80 <EnVm_Update+0x98>
     d24:	2605023c 	addiu	a1,s0,572
     d28:	241800ff 	li	t8,255
     d2c:	24190014 	li	t9,20
     d30:	afb90014 	sw	t9,20(sp)
     d34:	afb80010 	sw	t8,16(sp)
     d38:	24060014 	li	a2,20
     d3c:	2407ffff 	li	a3,-1
     d40:	0c000000 	jal	0 <func_80B2D460>
     d44:	afa50034 	sw	a1,52(sp)
     d48:	24080078 	li	t0,120
     d4c:	24090014 	li	t1,20
     d50:	240a0001 	li	t2,1
     d54:	8fa50034 	lw	a1,52(sp)
     d58:	afaa0018 	sw	t2,24(sp)
     d5c:	afa90014 	sw	t1,20(sp)
     d60:	afa80010 	sw	t0,16(sp)
     d64:	02202025 	move	a0,s1
     d68:	3c0640c0 	lui	a2,0x40c0
     d6c:	0c000000 	jal	0 <func_80B2D460>
     d70:	24070001 	li	a3,1
     d74:	02002025 	move	a0,s0
     d78:	0c000000 	jal	0 <func_80B2D460>
     d7c:	24053172 	li	a1,12658
     d80:	8e190214 	lw	t9,532(s0)
     d84:	02002025 	move	a0,s0
     d88:	02202825 	move	a1,s1
     d8c:	0320f809 	jalr	t9
     d90:	00000000 	nop
     d94:	860b025a 	lh	t3,602(s0)
     d98:	920d00af 	lbu	t5,175(s0)
     d9c:	256c000c 	addiu	t4,t3,12
     da0:	11a00008 	beqz	t5,dc4 <EnVm_Update+0xdc>
     da4:	a60c025a 	sh	t4,602(s0)
     da8:	8e0e021c 	lw	t6,540(s0)
     dac:	24010002 	li	at,2
     db0:	02002025 	move	a0,s0
     db4:	51c10004 	beql	t6,at,dc8 <EnVm_Update+0xe0>
     db8:	26050268 	addiu	a1,s0,616
     dbc:	0c000000 	jal	0 <func_80B2D460>
     dc0:	24053170 	li	a1,12656
     dc4:	26050268 	addiu	a1,s0,616
     dc8:	afa50030 	sw	a1,48(sp)
     dcc:	0c000000 	jal	0 <func_80B2D460>
     dd0:	02002025 	move	a0,s0
     dd4:	3c010001 	lui	at,0x1
     dd8:	34211e60 	ori	at,at,0x1e60
     ddc:	02212821 	addu	a1,s1,at
     de0:	afa50034 	sw	a1,52(sp)
     de4:	02202025 	move	a0,s1
     de8:	0c000000 	jal	0 <func_80B2D460>
     dec:	8fa60030 	lw	a2,48(sp)
     df0:	920f0114 	lbu	t7,276(s0)
     df4:	55e00009 	bnezl	t7,e1c <EnVm_Update+0x134>
     df8:	02202025 	move	a0,s1
     dfc:	921800af 	lbu	t8,175(s0)
     e00:	02202025 	move	a0,s1
     e04:	8fa50034 	lw	a1,52(sp)
     e08:	53000004 	beqzl	t8,e1c <EnVm_Update+0x134>
     e0c:	02202025 	move	a0,s1
     e10:	0c000000 	jal	0 <func_80B2D460>
     e14:	8fa60030 	lw	a2,48(sp)
     e18:	02202025 	move	a0,s1
     e1c:	8fa50034 	lw	a1,52(sp)
     e20:	0c000000 	jal	0 <func_80B2D460>
     e24:	26060334 	addiu	a2,s0,820
     e28:	8e090024 	lw	t1,36(s0)
     e2c:	8e080028 	lw	t0,40(s0)
     e30:	3c010000 	lui	at,0x0
     e34:	ae090038 	sw	t1,56(s0)
     e38:	8e09002c 	lw	t1,44(s0)
     e3c:	ae08003c 	sw	t0,60(s0)
     e40:	c60600bc 	lwc1	$f6,188(s0)
     e44:	ae090040 	sw	t1,64(s0)
     e48:	c4240000 	lwc1	$f4,0(at)
     e4c:	c60a0054 	lwc1	$f10,84(s0)
     e50:	c612003c 	lwc1	$f18,60(s0)
     e54:	46062200 	add.s	$f8,$f4,$f6
     e58:	460a4402 	mul.s	$f16,$f8,$f10
     e5c:	46109100 	add.s	$f4,$f18,$f16
     e60:	e604003c 	swc1	$f4,60(s0)
     e64:	8fbf002c 	lw	ra,44(sp)
     e68:	8fb10028 	lw	s1,40(sp)
     e6c:	8fb00024 	lw	s0,36(sp)
     e70:	03e00008 	jr	ra
     e74:	27bd0040 	addiu	sp,sp,64

00000e78 <func_80B2E2D8>:
     e78:	24010002 	li	at,2
     e7c:	afa40000 	sw	a0,0(sp)
     e80:	14a1000d 	bne	a1,at,eb8 <func_80B2E2D8+0x40>
     e84:	afa7000c 	sw	a3,12(sp)
     e88:	8fa20014 	lw	v0,20(sp)
     e8c:	8fa30010 	lw	v1,16(sp)
     e90:	844f0254 	lh	t7,596(v0)
     e94:	846e0000 	lh	t6,0(v1)
     e98:	84790002 	lh	t9,2(v1)
     e9c:	01cfc021 	addu	t8,t6,t7
     ea0:	a4780000 	sh	t8,0(v1)
     ea4:	8448025c 	lh	t0,604(v0)
     ea8:	00001025 	move	v0,zero
     eac:	03284821 	addu	t1,t9,t0
     eb0:	03e00008 	jr	ra
     eb4:	a4690002 	sh	t1,2(v1)
     eb8:	2401000a 	li	at,10
     ebc:	14a10006 	bne	a1,at,ed8 <func_80B2E2D8+0x60>
     ec0:	8fa20014 	lw	v0,20(sp)
     ec4:	8c4a021c 	lw	t2,540(v0)
     ec8:	24010003 	li	at,3
     ecc:	15410002 	bne	t2,at,ed8 <func_80B2E2D8+0x60>
     ed0:	00000000 	nop
     ed4:	acc00000 	sw	zero,0(a2)
     ed8:	03e00008 	jr	ra
     edc:	00001025 	move	v0,zero

00000ee0 <func_80B2E340>:
     ee0:	27bdff70 	addiu	sp,sp,-144
     ee4:	3c0f0000 	lui	t7,0x0
     ee8:	afbf0034 	sw	ra,52(sp)
     eec:	afb00030 	sw	s0,48(sp)
     ef0:	afa40090 	sw	a0,144(sp)
     ef4:	afa60098 	sw	a2,152(sp)
     ef8:	afa7009c 	sw	a3,156(sp)
     efc:	25ef0000 	addiu	t7,t7,0
     f00:	8df90000 	lw	t9,0(t7)
     f04:	27ae0080 	addiu	t6,sp,128
     f08:	8df80004 	lw	t8,4(t7)
     f0c:	add90000 	sw	t9,0(t6)
     f10:	8df90008 	lw	t9,8(t7)
     f14:	3c090000 	lui	t1,0x0
     f18:	25290000 	addiu	t1,t1,0
     f1c:	add80004 	sw	t8,4(t6)
     f20:	add90008 	sw	t9,8(t6)
     f24:	8d2b0000 	lw	t3,0(t1)
     f28:	27a80074 	addiu	t0,sp,116
     f2c:	8d2a0004 	lw	t2,4(t1)
     f30:	ad0b0000 	sw	t3,0(t0)
     f34:	8d2b0008 	lw	t3,8(t1)
     f38:	3c0d0000 	lui	t5,0x0
     f3c:	25ad0000 	addiu	t5,t5,0
     f40:	ad0a0004 	sw	t2,4(t0)
     f44:	ad0b0008 	sw	t3,8(t0)
     f48:	8daf0000 	lw	t7,0(t5)
     f4c:	27ac0068 	addiu	t4,sp,104
     f50:	8dae0004 	lw	t6,4(t5)
     f54:	ad8f0000 	sw	t7,0(t4)
     f58:	8daf0008 	lw	t7,8(t5)
     f5c:	24010002 	li	at,2
     f60:	ad8e0004 	sw	t6,4(t4)
     f64:	14a1008f 	bne	a1,at,11a4 <func_80B2E340+0x2c4>
     f68:	ad8f0008 	sw	t7,8(t4)
     f6c:	8fb000a0 	lw	s0,160(sp)
     f70:	3c040000 	lui	a0,0x0
     f74:	24840000 	addiu	a0,a0,0
     f78:	26050224 	addiu	a1,s0,548
     f7c:	0c000000 	jal	0 <func_80B2D460>
     f80:	afa50048 	sw	a1,72(sp)
     f84:	3c040000 	lui	a0,0x0
     f88:	24840000 	addiu	a0,a0,0
     f8c:	0c000000 	jal	0 <func_80B2D460>
     f90:	26050230 	addiu	a1,s0,560
     f94:	86180260 	lh	t8,608(s0)
     f98:	2b010003 	slti	at,t8,3
     f9c:	14200065 	bnez	at,1134 <func_80B2E340+0x254>
     fa0:	3c0143fa 	lui	at,0x43fa
     fa4:	44813000 	mtc1	at,$f6
     fa8:	afa00054 	sw	zero,84(sp)
     fac:	3c010000 	lui	at,0x0
     fb0:	c4300000 	lwc1	$f16,0(at)
     fb4:	c60a0054 	lwc1	$f10,84(s0)
     fb8:	c6040250 	lwc1	$f4,592(s0)
     fbc:	2605023c 	addiu	a1,s0,572
     fc0:	46105482 	mul.s	$f18,$f10,$f16
     fc4:	46062200 	add.s	$f8,$f4,$f6
     fc8:	afa50044 	sw	a1,68(sp)
     fcc:	27a40080 	addiu	a0,sp,128
     fd0:	46124102 	mul.s	$f4,$f8,$f18
     fd4:	0c000000 	jal	0 <func_80B2D460>
     fd8:	e7a40088 	swc1	$f4,136(sp)
     fdc:	8fa40090 	lw	a0,144(sp)
     fe0:	27b90054 	addiu	t9,sp,84
     fe4:	24080001 	li	t0,1
     fe8:	24090001 	li	t1,1
     fec:	240a0001 	li	t2,1
     ff0:	27ab0050 	addiu	t3,sp,80
     ff4:	afab0024 	sw	t3,36(sp)
     ff8:	afaa0020 	sw	t2,32(sp)
     ffc:	afa90018 	sw	t1,24(sp)
    1000:	afa80014 	sw	t0,20(sp)
    1004:	afb90010 	sw	t9,16(sp)
    1008:	8fa50048 	lw	a1,72(sp)
    100c:	8fa60044 	lw	a2,68(sp)
    1010:	27a70058 	addiu	a3,sp,88
    1014:	afa0001c 	sw	zero,28(sp)
    1018:	0c000000 	jal	0 <func_80B2D460>
    101c:	248407c0 	addiu	a0,a0,1984
    1020:	24010001 	li	at,1
    1024:	14410011 	bne	v0,at,106c <func_80B2E340+0x18c>
    1028:	8fa40048 	lw	a0,72(sp)
    102c:	0c000000 	jal	0 <func_80B2D460>
    1030:	27a50058 	addiu	a1,sp,88
    1034:	3c0140a0 	lui	at,0x40a0
    1038:	44813000 	mtc1	at,$f6
    103c:	240c0004 	li	t4,4
    1040:	a60c0260 	sh	t4,608(s0)
    1044:	46060281 	sub.s	$f10,$f0,$f6
    1048:	27ae0058 	addiu	t6,sp,88
    104c:	e60a0250 	swc1	$f10,592(s0)
    1050:	8dd80000 	lw	t8,0(t6)
    1054:	8fad0044 	lw	t5,68(sp)
    1058:	adb80000 	sw	t8,0(t5)
    105c:	8dcf0004 	lw	t7,4(t6)
    1060:	adaf0004 	sw	t7,4(t5)
    1064:	8dd80008 	lw	t8,8(t6)
    1068:	adb80008 	sw	t8,8(t5)
    106c:	44808000 	mtc1	zero,$f16
    1070:	c6080250 	lwc1	$f8,592(s0)
    1074:	3c0142c8 	lui	at,0x42c8
    1078:	8fa40048 	lw	a0,72(sp)
    107c:	46088032 	c.eq.s	$f16,$f8
    1080:	8fa50044 	lw	a1,68(sp)
    1084:	4501002b 	bc1t	1134 <func_80B2E340+0x254>
    1088:	00000000 	nop
    108c:	44811000 	mtc1	at,$f2
    1090:	3c010000 	lui	at,0x0
    1094:	c4320000 	lwc1	$f18,0(at)
    1098:	c6040054 	lwc1	$f4,84(s0)
    109c:	3c01428c 	lui	at,0x428c
    10a0:	4604903c 	c.lt.s	$f18,$f4
    10a4:	00000000 	nop
    10a8:	45000003 	bc1f	10b8 <func_80B2E340+0x1d8>
    10ac:	00000000 	nop
    10b0:	44811000 	mtc1	at,$f2
    10b4:	00000000 	nop
    10b8:	0c000000 	jal	0 <func_80B2D460>
    10bc:	e7a2004c 	swc1	$f2,76(sp)
    10c0:	c7a2004c 	lwc1	$f2,76(sp)
    10c4:	3c040000 	lui	a0,0x0
    10c8:	26050318 	addiu	a1,s0,792
    10cc:	46020302 	mul.s	$f12,$f0,$f2
    10d0:	afa5003c 	sw	a1,60(sp)
    10d4:	24840000 	addiu	a0,a0,0
    10d8:	e7ac007c 	swc1	$f12,124(sp)
    10dc:	0c000000 	jal	0 <func_80B2D460>
    10e0:	e7ac0070 	swc1	$f12,112(sp)
    10e4:	3c040000 	lui	a0,0x0
    10e8:	2605030c 	addiu	a1,s0,780
    10ec:	afa50040 	sw	a1,64(sp)
    10f0:	0c000000 	jal	0 <func_80B2D460>
    10f4:	24840000 	addiu	a0,a0,0
    10f8:	26050300 	addiu	a1,s0,768
    10fc:	afa50044 	sw	a1,68(sp)
    1100:	0c000000 	jal	0 <func_80B2D460>
    1104:	27a40074 	addiu	a0,sp,116
    1108:	260502f4 	addiu	a1,s0,756
    110c:	afa50048 	sw	a1,72(sp)
    1110:	0c000000 	jal	0 <func_80B2D460>
    1114:	27a40068 	addiu	a0,sp,104
    1118:	8fb9003c 	lw	t9,60(sp)
    111c:	8fa50048 	lw	a1,72(sp)
    1120:	260402b4 	addiu	a0,s0,692
    1124:	8fa60044 	lw	a2,68(sp)
    1128:	8fa70040 	lw	a3,64(sp)
    112c:	0c000000 	jal	0 <func_80B2D460>
    1130:	afb90010 	sw	t9,16(sp)
    1134:	3c040000 	lui	a0,0x0
    1138:	26050380 	addiu	a1,s0,896
    113c:	afa50044 	sw	a1,68(sp)
    1140:	0c000000 	jal	0 <func_80B2D460>
    1144:	24840000 	addiu	a0,a0,0
    1148:	3c040000 	lui	a0,0x0
    114c:	26050374 	addiu	a1,s0,884
    1150:	afa50048 	sw	a1,72(sp)
    1154:	0c000000 	jal	0 <func_80B2D460>
    1158:	24840000 	addiu	a0,a0,0
    115c:	3c040000 	lui	a0,0x0
    1160:	26050398 	addiu	a1,s0,920
    1164:	afa5003c 	sw	a1,60(sp)
    1168:	0c000000 	jal	0 <func_80B2D460>
    116c:	24840000 	addiu	a0,a0,0
    1170:	3c040000 	lui	a0,0x0
    1174:	2607038c 	addiu	a3,s0,908
    1178:	00e02825 	move	a1,a3
    117c:	afa70040 	sw	a3,64(sp)
    1180:	0c000000 	jal	0 <func_80B2D460>
    1184:	24840000 	addiu	a0,a0,0
    1188:	8fa8003c 	lw	t0,60(sp)
    118c:	8fa70040 	lw	a3,64(sp)
    1190:	26040334 	addiu	a0,s0,820
    1194:	8fa50048 	lw	a1,72(sp)
    1198:	8fa60044 	lw	a2,68(sp)
    119c:	0c000000 	jal	0 <func_80B2D460>
    11a0:	afa80010 	sw	t0,16(sp)
    11a4:	8fbf0034 	lw	ra,52(sp)
    11a8:	8fb00030 	lw	s0,48(sp)
    11ac:	27bd0090 	addiu	sp,sp,144
    11b0:	03e00008 	jr	ra
    11b4:	00000000 	nop

000011b8 <EnVm_Draw>:
    11b8:	27bdff70 	addiu	sp,sp,-144
    11bc:	afb20028 	sw	s2,40(sp)
    11c0:	00a09025 	move	s2,a1
    11c4:	afbf002c 	sw	ra,44(sp)
    11c8:	afb10024 	sw	s1,36(sp)
    11cc:	afb00020 	sw	s0,32(sp)
    11d0:	8ca50000 	lw	a1,0(a1)
    11d4:	00808825 	move	s1,a0
    11d8:	3c060000 	lui	a2,0x0
    11dc:	24c60000 	addiu	a2,a2,0
    11e0:	27a40068 	addiu	a0,sp,104
    11e4:	240703f6 	li	a3,1014
    11e8:	0c000000 	jal	0 <func_80B2D460>
    11ec:	00a08025 	move	s0,a1
    11f0:	0c000000 	jal	0 <func_80B2D460>
    11f4:	8e440000 	lw	a0,0(s2)
    11f8:	0c000000 	jal	0 <func_80B2D460>
    11fc:	8e440000 	lw	a0,0(s2)
    1200:	3c0e0000 	lui	t6,0x0
    1204:	25ce0000 	addiu	t6,t6,0
    1208:	8e250150 	lw	a1,336(s1)
    120c:	8e26016c 	lw	a2,364(s1)
    1210:	3c070000 	lui	a3,0x0
    1214:	24e70000 	addiu	a3,a3,0
    1218:	afb10014 	sw	s1,20(sp)
    121c:	afae0010 	sw	t6,16(sp)
    1220:	0c000000 	jal	0 <func_80B2D460>
    1224:	02402025 	move	a0,s2
    1228:	8e380024 	lw	t8,36(s1)
    122c:	27a4007c 	addiu	a0,sp,124
    1230:	3c050000 	lui	a1,0x0
    1234:	ac980000 	sw	t8,0(a0)
    1238:	8e2f0028 	lw	t7,40(s1)
    123c:	24a50000 	addiu	a1,a1,0
    1240:	240600ff 	li	a2,255
    1244:	ac8f0004 	sw	t7,4(a0)
    1248:	8e38002c 	lw	t8,44(s1)
    124c:	02403825 	move	a3,s2
    1250:	0c000000 	jal	0 <func_80B2D460>
    1254:	ac980008 	sw	t8,8(a0)
    1258:	86390260 	lh	t9,608(s1)
    125c:	00003825 	move	a3,zero
    1260:	2b210003 	slti	at,t9,3
    1264:	14200088 	bnez	at,1488 <EnVm_Draw+0x2d0>
    1268:	3c014120 	lui	at,0x4120
    126c:	44813000 	mtc1	at,$f6
    1270:	c6240240 	lwc1	$f4,576(s1)
    1274:	c62c023c 	lwc1	$f12,572(s1)
    1278:	8e260244 	lw	a2,580(s1)
    127c:	0c000000 	jal	0 <func_80B2D460>
    1280:	46062380 	add.s	$f14,$f4,$f6
    1284:	3c010000 	lui	at,0x0
    1288:	c42c0000 	lwc1	$f12,0(at)
    128c:	24070001 	li	a3,1
    1290:	44066000 	mfc1	a2,$f12
    1294:	0c000000 	jal	0 <func_80B2D460>
    1298:	46006386 	mov.s	$f14,$f12
    129c:	8e0202d0 	lw	v0,720(s0)
    12a0:	3c0ada38 	lui	t2,0xda38
    12a4:	354a0003 	ori	t2,t2,0x3
    12a8:	24490008 	addiu	t1,v0,8
    12ac:	ae0902d0 	sw	t1,720(s0)
    12b0:	ac4a0000 	sw	t2,0(v0)
    12b4:	8e440000 	lw	a0,0(s2)
    12b8:	3c050000 	lui	a1,0x0
    12bc:	24a50000 	addiu	a1,a1,0
    12c0:	24060409 	li	a2,1033
    12c4:	0c000000 	jal	0 <func_80B2D460>
    12c8:	afa20064 	sw	v0,100(sp)
    12cc:	8fa30064 	lw	v1,100(sp)
    12d0:	3c0cfa00 	lui	t4,0xfa00
    12d4:	240dffa8 	li	t5,-88
    12d8:	ac620004 	sw	v0,4(v1)
    12dc:	8e0202d0 	lw	v0,720(s0)
    12e0:	244b0008 	addiu	t3,v0,8
    12e4:	ae0b02d0 	sw	t3,720(s0)
    12e8:	ac4d0004 	sw	t5,4(v0)
    12ec:	ac4c0000 	sw	t4,0(v0)
    12f0:	0c000000 	jal	0 <func_80B2D460>
    12f4:	8e440000 	lw	a0,0(s2)
    12f8:	8e0202d0 	lw	v0,720(s0)
    12fc:	3c0ffb00 	lui	t7,0xfb00
    1300:	3418ff00 	li	t8,0xff00
    1304:	244e0008 	addiu	t6,v0,8
    1308:	ae0e02d0 	sw	t6,720(s0)
    130c:	ac580004 	sw	t8,4(v0)
    1310:	ac4f0000 	sw	t7,0(v0)
    1314:	8e0202d0 	lw	v0,720(s0)
    1318:	3c09db06 	lui	t1,0xdb06
    131c:	35290020 	ori	t1,t1,0x20
    1320:	24590008 	addiu	t9,v0,8
    1324:	ae1902d0 	sw	t9,720(s0)
    1328:	3c010001 	lui	at,0x1
    132c:	02414021 	addu	t0,s2,at
    1330:	ac490000 	sw	t1,0(v0)
    1334:	8d0a1de4 	lw	t2,7652(t0)
    1338:	3c040000 	lui	a0,0x0
    133c:	3c190000 	lui	t9,0x0
    1340:	314b0007 	andi	t3,t2,0x7
    1344:	000b6080 	sll	t4,t3,0x2
    1348:	008c2021 	addu	a0,a0,t4
    134c:	8c840000 	lw	a0,0(a0)
    1350:	3c0100ff 	lui	at,0xff
    1354:	3421ffff 	ori	at,at,0xffff
    1358:	00047100 	sll	t6,a0,0x4
    135c:	000e7f02 	srl	t7,t6,0x1c
    1360:	000fc080 	sll	t8,t7,0x2
    1364:	0338c821 	addu	t9,t9,t8
    1368:	8f390000 	lw	t9,0(t9)
    136c:	00816824 	and	t5,a0,at
    1370:	3c018000 	lui	at,0x8000
    1374:	01b94821 	addu	t1,t5,t9
    1378:	01215021 	addu	t2,t1,at
    137c:	ac4a0004 	sw	t2,4(v0)
    1380:	8e0202d0 	lw	v0,720(s0)
    1384:	3c070403 	lui	a3,0x403
    1388:	24e71fe0 	addiu	a3,a3,8160
    138c:	244b0008 	addiu	t3,v0,8
    1390:	ae0b02d0 	sw	t3,720(s0)
    1394:	3c0cde00 	lui	t4,0xde00
    1398:	ac4c0000 	sw	t4,0(v0)
    139c:	ac470004 	sw	a3,4(v0)
    13a0:	3c010000 	lui	at,0x0
    13a4:	c42c0000 	lwc1	$f12,0(at)
    13a8:	afa80034 	sw	t0,52(sp)
    13ac:	afa70038 	sw	a3,56(sp)
    13b0:	0c000000 	jal	0 <func_80B2D460>
    13b4:	24050001 	li	a1,1
    13b8:	8e0202d0 	lw	v0,720(s0)
    13bc:	8fa70038 	lw	a3,56(sp)
    13c0:	8fa80034 	lw	t0,52(sp)
    13c4:	3c0fda38 	lui	t7,0xda38
    13c8:	244e0008 	addiu	t6,v0,8
    13cc:	ae0e02d0 	sw	t6,720(s0)
    13d0:	35ef0003 	ori	t7,t7,0x3
    13d4:	ac4f0000 	sw	t7,0(v0)
    13d8:	8e440000 	lw	a0,0(s2)
    13dc:	3c050000 	lui	a1,0x0
    13e0:	24a50000 	addiu	a1,a1,0
    13e4:	24060414 	li	a2,1044
    13e8:	afa20050 	sw	v0,80(sp)
    13ec:	afa70038 	sw	a3,56(sp)
    13f0:	0c000000 	jal	0 <func_80B2D460>
    13f4:	afa80034 	sw	t0,52(sp)
    13f8:	8fa30050 	lw	v1,80(sp)
    13fc:	8fa70038 	lw	a3,56(sp)
    1400:	8fa80034 	lw	t0,52(sp)
    1404:	ac620004 	sw	v0,4(v1)
    1408:	8e0202d0 	lw	v0,720(s0)
    140c:	3c0ddb06 	lui	t5,0xdb06
    1410:	35ad0020 	ori	t5,t5,0x20
    1414:	24580008 	addiu	t8,v0,8
    1418:	ae1802d0 	sw	t8,720(s0)
    141c:	ac4d0000 	sw	t5,0(v0)
    1420:	8d191de4 	lw	t9,7652(t0)
    1424:	3c040000 	lui	a0,0x0
    1428:	3c0d0000 	lui	t5,0x0
    142c:	27290004 	addiu	t1,t9,4
    1430:	312a0007 	andi	t2,t1,0x7
    1434:	000a5880 	sll	t3,t2,0x2
    1438:	008b2021 	addu	a0,a0,t3
    143c:	8c840000 	lw	a0,0(a0)
    1440:	3c0100ff 	lui	at,0xff
    1444:	3421ffff 	ori	at,at,0xffff
    1448:	00047100 	sll	t6,a0,0x4
    144c:	000e7f02 	srl	t7,t6,0x1c
    1450:	000fc080 	sll	t8,t7,0x2
    1454:	01b86821 	addu	t5,t5,t8
    1458:	8dad0000 	lw	t5,0(t5)
    145c:	00816024 	and	t4,a0,at
    1460:	3c018000 	lui	at,0x8000
    1464:	018dc821 	addu	t9,t4,t5
    1468:	03214821 	addu	t1,t9,at
    146c:	ac490004 	sw	t1,4(v0)
    1470:	8e0202d0 	lw	v0,720(s0)
    1474:	3c0bde00 	lui	t3,0xde00
    1478:	244a0008 	addiu	t2,v0,8
    147c:	ae0a02d0 	sw	t2,720(s0)
    1480:	ac470004 	sw	a3,4(v0)
    1484:	ac4b0000 	sw	t3,0(v0)
    1488:	8e0202c0 	lw	v0,704(s0)
    148c:	3c0fdb06 	lui	t7,0xdb06
    1490:	35ef0020 	ori	t7,t7,0x20
    1494:	244e0008 	addiu	t6,v0,8
    1498:	ae0e02c0 	sw	t6,704(s0)
    149c:	ac4f0000 	sw	t7,0(v0)
    14a0:	8626025a 	lh	a2,602(s1)
    14a4:	8e440000 	lw	a0,0(s2)
    14a8:	00002825 	move	a1,zero
    14ac:	0c000000 	jal	0 <func_80B2D460>
    14b0:	afa20044 	sw	v0,68(sp)
    14b4:	8fa30044 	lw	v1,68(sp)
    14b8:	00003825 	move	a3,zero
    14bc:	ac620004 	sw	v0,4(v1)
    14c0:	8e26022c 	lw	a2,556(s1)
    14c4:	c62e0228 	lwc1	$f14,552(s1)
    14c8:	0c000000 	jal	0 <func_80B2D460>
    14cc:	c62c0224 	lwc1	$f12,548(s1)
    14d0:	86240254 	lh	a0,596(s1)
    14d4:	86250256 	lh	a1,598(s1)
    14d8:	86260258 	lh	a2,600(s1)
    14dc:	0c000000 	jal	0 <func_80B2D460>
    14e0:	24070001 	li	a3,1
    14e4:	3c010000 	lui	at,0x0
    14e8:	c42a0000 	lwc1	$f10,0(at)
    14ec:	c6280248 	lwc1	$f8,584(s1)
    14f0:	3c010000 	lui	at,0x0
    14f4:	c4320000 	lwc1	$f18,0(at)
    14f8:	460a4302 	mul.s	$f12,$f8,$f10
    14fc:	c6300250 	lwc1	$f16,592(s1)
    1500:	24070001 	li	a3,1
    1504:	46128102 	mul.s	$f4,$f16,$f18
    1508:	46006386 	mov.s	$f14,$f12
    150c:	44062000 	mfc1	a2,$f4
    1510:	0c000000 	jal	0 <func_80B2D460>
    1514:	00000000 	nop
    1518:	8e0202c0 	lw	v0,704(s0)
    151c:	3c0cda38 	lui	t4,0xda38
    1520:	358c0003 	ori	t4,t4,0x3
    1524:	24580008 	addiu	t8,v0,8
    1528:	ae1802c0 	sw	t8,704(s0)
    152c:	3c050000 	lui	a1,0x0
    1530:	ac4c0000 	sw	t4,0(v0)
    1534:	8e440000 	lw	a0,0(s2)
    1538:	24a50000 	addiu	a1,a1,0
    153c:	24060427 	li	a2,1063
    1540:	0c000000 	jal	0 <func_80B2D460>
    1544:	00408825 	move	s1,v0
    1548:	ae220004 	sw	v0,4(s1)
    154c:	8e0202c0 	lw	v0,704(s0)
    1550:	3c090600 	lui	t1,0x600
    1554:	25292728 	addiu	t1,t1,10024
    1558:	244d0008 	addiu	t5,v0,8
    155c:	ae0d02c0 	sw	t5,704(s0)
    1560:	3c19de00 	lui	t9,0xde00
    1564:	3c060000 	lui	a2,0x0
    1568:	ac590000 	sw	t9,0(v0)
    156c:	ac490004 	sw	t1,4(v0)
    1570:	8e450000 	lw	a1,0(s2)
    1574:	24c60000 	addiu	a2,a2,0
    1578:	27a40068 	addiu	a0,sp,104
    157c:	0c000000 	jal	0 <func_80B2D460>
    1580:	2407042c 	li	a3,1068
    1584:	8fbf002c 	lw	ra,44(sp)
    1588:	8fb00020 	lw	s0,32(sp)
    158c:	8fb10024 	lw	s1,36(sp)
    1590:	8fb20028 	lw	s2,40(sp)
    1594:	03e00008 	jr	ra
    1598:	27bd0090 	addiu	sp,sp,144
    159c:	00000000 	nop
