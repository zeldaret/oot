
build/src/overlays/actors/ovl_En_Clear_Tag/z_en_clear_tag.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809D35B0>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afb00018 	sw	s0,24(sp)
       8:	3c100001 	lui	s0,0x1
       c:	afbf001c 	sw	ra,28(sp)
      10:	02048021 	addu	s0,s0,a0
      14:	8e101e10 	lw	s0,7696(s0)
      18:	00001025 	move	v0,zero
      1c:	920e0000 	lbu	t6,0(s0)
      20:	24420001 	addiu	v0,v0,1
      24:	00021400 	sll	v0,v0,0x10
      28:	15c0002b 	bnez	t6,d8 <func_809D35B0+0xd8>
      2c:	00021403 	sra	v0,v0,0x10
      30:	240f0001 	li	t7,1
      34:	a20f0000 	sb	t7,0(s0)
      38:	8cb90000 	lw	t9,0(a1)
      3c:	3c010000 	lui	at,0x0
      40:	ae190004 	sw	t9,4(s0)
      44:	8cb80004 	lw	t8,4(a1)
      48:	ae180008 	sw	t8,8(s0)
      4c:	8cb90008 	lw	t9,8(a1)
      50:	ae19000c 	sw	t9,12(s0)
      54:	8cc90000 	lw	t1,0(a2)
      58:	ae090010 	sw	t1,16(s0)
      5c:	8cc80004 	lw	t0,4(a2)
      60:	ae080014 	sw	t0,20(s0)
      64:	8cc90008 	lw	t1,8(a2)
      68:	ae090018 	sw	t1,24(s0)
      6c:	8ceb0000 	lw	t3,0(a3)
      70:	ae0b001c 	sw	t3,28(s0)
      74:	8cea0004 	lw	t2,4(a3)
      78:	ae0a0020 	sw	t2,32(s0)
      7c:	8ceb0008 	lw	t3,8(a3)
      80:	ae0b0024 	sw	t3,36(s0)
      84:	c7a40030 	lwc1	$f4,48(sp)
      88:	e604004c 	swc1	$f4,76(s0)
      8c:	0c000000 	jal	0 <func_809D35B0>
      90:	c42c0000 	lwc1	$f12,0(at)
      94:	e6000054 	swc1	$f0,84(s0)
      98:	3c010000 	lui	at,0x0
      9c:	0c000000 	jal	0 <func_809D35B0>
      a0:	c42c0000 	lwc1	$f12,0(at)
      a4:	a6000048 	sh	zero,72(s0)
      a8:	860c0048 	lh	t4,72(s0)
      ac:	e6000058 	swc1	$f0,88(s0)
      b0:	3c014120 	lui	at,0x4120
      b4:	a60c004a 	sh	t4,74(s0)
      b8:	c7a60034 	lwc1	$f6,52(sp)
      bc:	44816000 	mtc1	at,$f12
      c0:	0c000000 	jal	0 <func_809D35B0>
      c4:	e606005c 	swc1	$f6,92(s0)
      c8:	4600020d 	trunc.w.s	$f8,$f0
      cc:	44184000 	mfc1	t8,$f8
      d0:	10000004 	b	e4 <func_809D35B0+0xe4>
      d4:	a2180001 	sb	t8,1(s0)
      d8:	28410064 	slti	at,v0,100
      dc:	1420ffcf 	bnez	at,1c <func_809D35B0+0x1c>
      e0:	2610006c 	addiu	s0,s0,108
      e4:	8fbf001c 	lw	ra,28(sp)
      e8:	8fb00018 	lw	s0,24(sp)
      ec:	27bd0020 	addiu	sp,sp,32
      f0:	03e00008 	jr	ra
      f4:	00000000 	nop

000000f8 <func_809D36A8>:
      f8:	27bdffe0 	addiu	sp,sp,-32
      fc:	3c020001 	lui	v0,0x1
     100:	afbf0014 	sw	ra,20(sp)
     104:	afa50024 	sw	a1,36(sp)
     108:	afa60028 	sw	a2,40(sp)
     10c:	00441021 	addu	v0,v0,a0
     110:	8c421e10 	lw	v0,7696(v0)
     114:	00001825 	move	v1,zero
     118:	904e0000 	lbu	t6,0(v0)
     11c:	15c00028 	bnez	t6,1c0 <func_809D36A8+0xc8>
     120:	3c0142c8 	lui	at,0x42c8
     124:	44816000 	mtc1	at,$f12
     128:	0c000000 	jal	0 <func_809D35B0>
     12c:	afa20018 	sw	v0,24(sp)
     130:	4600010d 	trunc.w.s	$f4,$f0
     134:	8fa20018 	lw	v0,24(sp)
     138:	24090002 	li	t1,2
     13c:	3c030000 	lui	v1,0x0
     140:	44082000 	mfc1	t0,$f4
     144:	a0490000 	sb	t1,0(v0)
     148:	24630000 	addiu	v1,v1,0
     14c:	a0480001 	sb	t0,1(v0)
     150:	8faa0024 	lw	t2,36(sp)
     154:	3c010000 	lui	at,0x0
     158:	8d4c0000 	lw	t4,0(t2)
     15c:	ac4c0004 	sw	t4,4(v0)
     160:	8d4b0004 	lw	t3,4(t2)
     164:	ac4b0008 	sw	t3,8(v0)
     168:	8d4c0008 	lw	t4,8(t2)
     16c:	ac4c000c 	sw	t4,12(v0)
     170:	8c6e0000 	lw	t6,0(v1)
     174:	ac4e0010 	sw	t6,16(v0)
     178:	8c6d0004 	lw	t5,4(v1)
     17c:	ac4d0014 	sw	t5,20(v0)
     180:	8c6e0008 	lw	t6,8(v1)
     184:	ac4e0018 	sw	t6,24(v0)
     188:	8c780000 	lw	t8,0(v1)
     18c:	ac58001c 	sw	t8,28(v0)
     190:	8c6f0004 	lw	t7,4(v1)
     194:	ac4f0020 	sw	t7,32(v0)
     198:	8c780008 	lw	t8,8(v1)
     19c:	ac580024 	sw	t8,36(v0)
     1a0:	c4260000 	lwc1	$f6,0(at)
     1a4:	3c014348 	lui	at,0x4348
     1a8:	44815000 	mtc1	at,$f10
     1ac:	e4460020 	swc1	$f6,32(v0)
     1b0:	c7a80028 	lwc1	$f8,40(sp)
     1b4:	e44a0034 	swc1	$f10,52(v0)
     1b8:	10000007 	b	1d8 <func_809D36A8+0xe0>
     1bc:	e448004c 	swc1	$f8,76(v0)
     1c0:	24630001 	addiu	v1,v1,1
     1c4:	00031c00 	sll	v1,v1,0x10
     1c8:	00031c03 	sra	v1,v1,0x10
     1cc:	28610064 	slti	at,v1,100
     1d0:	1420ffd1 	bnez	at,118 <func_809D36A8+0x20>
     1d4:	2442006c 	addiu	v0,v0,108
     1d8:	8fbf0014 	lw	ra,20(sp)
     1dc:	27bd0020 	addiu	sp,sp,32
     1e0:	03e00008 	jr	ra
     1e4:	00000000 	nop

000001e8 <func_809D3798>:
     1e8:	27bdffe0 	addiu	sp,sp,-32
     1ec:	3c020001 	lui	v0,0x1
     1f0:	afbf0014 	sw	ra,20(sp)
     1f4:	afa50024 	sw	a1,36(sp)
     1f8:	00441021 	addu	v0,v0,a0
     1fc:	44867000 	mtc1	a2,$f14
     200:	8c421e10 	lw	v0,7696(v0)
     204:	00001825 	move	v1,zero
     208:	904e0000 	lbu	t6,0(v0)
     20c:	15c00035 	bnez	t6,2e4 <func_809D3798+0xfc>
     210:	3c0142c8 	lui	at,0x42c8
     214:	44816000 	mtc1	at,$f12
     218:	afa20018 	sw	v0,24(sp)
     21c:	0c000000 	jal	0 <func_809D35B0>
     220:	e7ae0028 	swc1	$f14,40(sp)
     224:	4600010d 	trunc.w.s	$f4,$f0
     228:	8fa20018 	lw	v0,24(sp)
     22c:	c7ae0028 	lwc1	$f14,40(sp)
     230:	24090003 	li	t1,3
     234:	44082000 	mfc1	t0,$f4
     238:	a0490000 	sb	t1,0(v0)
     23c:	3c030000 	lui	v1,0x0
     240:	a0480001 	sb	t0,1(v0)
     244:	8faa0024 	lw	t2,36(sp)
     248:	24630000 	addiu	v1,v1,0
     24c:	3c01437f 	lui	at,0x437f
     250:	8d4c0000 	lw	t4,0(t2)
     254:	44811000 	mtc1	at,$f2
     258:	3c014348 	lui	at,0x4348
     25c:	ac4c0004 	sw	t4,4(v0)
     260:	8d4b0004 	lw	t3,4(t2)
     264:	44814000 	mtc1	at,$f8
     268:	3c0141a0 	lui	at,0x41a0
     26c:	ac4b0008 	sw	t3,8(v0)
     270:	8d4c0008 	lw	t4,8(t2)
     274:	44815000 	mtc1	at,$f10
     278:	460e7180 	add.s	$f6,$f14,$f14
     27c:	ac4c000c 	sw	t4,12(v0)
     280:	8c6e0000 	lw	t6,0(v1)
     284:	3c014357 	lui	at,0x4357
     288:	44808000 	mtc1	zero,$f16
     28c:	ac4e0010 	sw	t6,16(v0)
     290:	8c6d0004 	lw	t5,4(v1)
     294:	44819000 	mtc1	at,$f18
     298:	ac4d0014 	sw	t5,20(v0)
     29c:	8c6e0008 	lw	t6,8(v1)
     2a0:	ac4e0018 	sw	t6,24(v0)
     2a4:	8c780000 	lw	t8,0(v1)
     2a8:	ac58001c 	sw	t8,28(v0)
     2ac:	8c6f0004 	lw	t7,4(v1)
     2b0:	ac4f0020 	sw	t7,32(v0)
     2b4:	8c780008 	lw	t8,8(v1)
     2b8:	e4460050 	swc1	$f6,80(v0)
     2bc:	e44e004c 	swc1	$f14,76(v0)
     2c0:	e4420034 	swc1	$f2,52(v0)
     2c4:	e4420038 	swc1	$f2,56(v0)
     2c8:	e4420040 	swc1	$f2,64(v0)
     2cc:	e4480028 	swc1	$f8,40(v0)
     2d0:	e44a002c 	swc1	$f10,44(v0)
     2d4:	e4500030 	swc1	$f16,48(v0)
     2d8:	e452003c 	swc1	$f18,60(v0)
     2dc:	10000007 	b	2fc <func_809D3798+0x114>
     2e0:	ac580024 	sw	t8,36(v0)
     2e4:	24630001 	addiu	v1,v1,1
     2e8:	00031c00 	sll	v1,v1,0x10
     2ec:	00031c03 	sra	v1,v1,0x10
     2f0:	28610064 	slti	at,v1,100
     2f4:	1420ffc4 	bnez	at,208 <func_809D3798+0x20>
     2f8:	2442006c 	addiu	v0,v0,108
     2fc:	8fbf0014 	lw	ra,20(sp)
     300:	27bd0020 	addiu	sp,sp,32
     304:	03e00008 	jr	ra
     308:	00000000 	nop

0000030c <func_809D38BC>:
     30c:	3c020001 	lui	v0,0x1
     310:	00441021 	addu	v0,v0,a0
     314:	44866000 	mtc1	a2,$f12
     318:	44877000 	mtc1	a3,$f14
     31c:	8c421e10 	lw	v0,7696(v0)
     320:	00001825 	move	v1,zero
     324:	904e0000 	lbu	t6,0(v0)
     328:	15c00026 	bnez	t6,3c4 <func_809D38BC+0xb8>
     32c:	240f0004 	li	t7,4
     330:	a04f0000 	sb	t7,0(v0)
     334:	8cb90000 	lw	t9,0(a1)
     338:	3c030000 	lui	v1,0x0
     33c:	24630000 	addiu	v1,v1,0
     340:	ac590004 	sw	t9,4(v0)
     344:	8cb80004 	lw	t8,4(a1)
     348:	460c6180 	add.s	$f6,$f12,$f12
     34c:	44802000 	mtc1	zero,$f4
     350:	ac580008 	sw	t8,8(v0)
     354:	8cb90008 	lw	t9,8(a1)
     358:	3c014334 	lui	at,0x4334
     35c:	44814000 	mtc1	at,$f8
     360:	ac59000c 	sw	t9,12(v0)
     364:	8c690000 	lw	t1,0(v1)
     368:	ac490010 	sw	t1,16(v0)
     36c:	8c680004 	lw	t0,4(v1)
     370:	ac480014 	sw	t0,20(v0)
     374:	8c690008 	lw	t1,8(v1)
     378:	ac490018 	sw	t1,24(v0)
     37c:	8c6b0000 	lw	t3,0(v1)
     380:	ac4b001c 	sw	t3,28(v0)
     384:	8c6a0004 	lw	t2,4(v1)
     388:	ac4a0020 	sw	t2,32(v0)
     38c:	8c6b0008 	lw	t3,8(v1)
     390:	e4460050 	swc1	$f6,80(v0)
     394:	e44e005c 	swc1	$f14,92(v0)
     398:	e444004c 	swc1	$f4,76(v0)
     39c:	ac4b0024 	sw	t3,36(v0)
     3a0:	8fac0010 	lw	t4,16(sp)
     3a4:	8d8e0000 	lw	t6,0(t4)
     3a8:	ac4e0060 	sw	t6,96(v0)
     3ac:	8d8d0004 	lw	t5,4(t4)
     3b0:	ac4d0064 	sw	t5,100(v0)
     3b4:	8d8e0008 	lw	t6,8(t4)
     3b8:	e4480034 	swc1	$f8,52(v0)
     3bc:	03e00008 	jr	ra
     3c0:	ac4e0068 	sw	t6,104(v0)
     3c4:	24630001 	addiu	v1,v1,1
     3c8:	00031c00 	sll	v1,v1,0x10
     3cc:	00031c03 	sra	v1,v1,0x10
     3d0:	28610064 	slti	at,v1,100
     3d4:	1420ffd3 	bnez	at,324 <func_809D38BC+0x18>
     3d8:	2442006c 	addiu	v0,v0,108
     3dc:	03e00008 	jr	ra
     3e0:	00000000 	nop

000003e4 <EnClearTag_Destroy>:
     3e4:	27bdffe8 	addiu	sp,sp,-24
     3e8:	00803025 	move	a2,a0
     3ec:	afbf0014 	sw	ra,20(sp)
     3f0:	00a02025 	move	a0,a1
     3f4:	0c000000 	jal	0 <func_809D35B0>
     3f8:	24c50194 	addiu	a1,a2,404
     3fc:	8fbf0014 	lw	ra,20(sp)
     400:	27bd0018 	addiu	sp,sp,24
     404:	03e00008 	jr	ra
     408:	00000000 	nop

0000040c <EnClearTag_Init>:
     40c:	27bdffd0 	addiu	sp,sp,-48
     410:	afb10018 	sw	s1,24(sp)
     414:	00808825 	move	s1,a0
     418:	afa50034 	sw	a1,52(sp)
     41c:	00a02025 	move	a0,a1
     420:	afbf001c 	sw	ra,28(sp)
     424:	26250194 	addiu	a1,s1,404
     428:	afb00014 	sw	s0,20(sp)
     42c:	0c000000 	jal	0 <func_809D35B0>
     430:	afa50020 	sw	a1,32(sp)
     434:	862e001c 	lh	t6,28(s1)
     438:	24100064 	li	s0,100
     43c:	240b0005 	li	t3,5
     440:	160e002c 	bne	s0,t6,4f4 <EnClearTag_Init+0xe8>
     444:	02203025 	move	a2,s1
     448:	3c01420c 	lui	at,0x420c
     44c:	44812000 	mtc1	at,$f4
     450:	240f0064 	li	t7,100
     454:	24180046 	li	t8,70
     458:	a22f014e 	sb	t7,334(s1)
     45c:	a6380150 	sh	t8,336(s1)
     460:	02202025 	move	a0,s1
     464:	0c000000 	jal	0 <func_809D35B0>
     468:	e6240068 	swc1	$f4,104(s1)
     46c:	00008025 	move	s0,zero
     470:	0c000000 	jal	0 <func_809D35B0>
     474:	02202025 	move	a0,s1
     478:	26100001 	addiu	s0,s0,1
     47c:	00108400 	sll	s0,s0,0x10
     480:	00108403 	sra	s0,s0,0x10
     484:	1a00fffa 	blez	s0,470 <EnClearTag_Init+0x64>
     488:	00000000 	nop
     48c:	3c010000 	lui	at,0x0
     490:	c4200000 	lwc1	$f0,0(at)
     494:	3c014000 	lui	at,0x4000
     498:	44813000 	mtc1	at,$f6
     49c:	863900b4 	lh	t9,180(s1)
     4a0:	3c01428c 	lui	at,0x428c
     4a4:	44814000 	mtc1	at,$f8
     4a8:	00194023 	negu	t0,t9
     4ac:	a62800b4 	sh	t0,180(s1)
     4b0:	02202025 	move	a0,s1
     4b4:	e6200050 	swc1	$f0,80(s1)
     4b8:	e6200054 	swc1	$f0,84(s1)
     4bc:	e6260058 	swc1	$f6,88(s1)
     4c0:	0c000000 	jal	0 <func_809D35B0>
     4c4:	e6280068 	swc1	$f8,104(s1)
     4c8:	3c070000 	lui	a3,0x0
     4cc:	24e70000 	addiu	a3,a3,0
     4d0:	8fa40034 	lw	a0,52(sp)
     4d4:	8fa50020 	lw	a1,32(sp)
     4d8:	0c000000 	jal	0 <func_809D35B0>
     4dc:	02203025 	move	a2,s1
     4e0:	02202025 	move	a0,s1
     4e4:	0c000000 	jal	0 <func_809D35B0>
     4e8:	2405182a 	li	a1,6186
     4ec:	10000034 	b	5c0 <EnClearTag_Init+0x1b4>
     4f0:	8fbf001c 	lw	ra,28(sp)
     4f4:	8e290004 	lw	t1,4(s1)
     4f8:	a22b001f 	sb	t3,31(s1)
     4fc:	3c070000 	lui	a3,0x0
     500:	352a0001 	ori	t2,t1,0x1
     504:	ae2a0004 	sw	t2,4(s1)
     508:	8fa50020 	lw	a1,32(sp)
     50c:	8fa40034 	lw	a0,52(sp)
     510:	0c000000 	jal	0 <func_809D35B0>
     514:	24e70000 	addiu	a3,a3,0
     518:	862d001c 	lh	t5,28(s1)
     51c:	240c0003 	li	t4,3
     520:	a22c00af 	sb	t4,175(s1)
     524:	15a0000e 	bnez	t5,560 <EnClearTag_Init+0x154>
     528:	3c030000 	lui	v1,0x0
     52c:	24050001 	li	a1,1
     530:	240e0046 	li	t6,70
     534:	240f00fa 	li	t7,250
     538:	24180002 	li	t8,2
     53c:	24194000 	li	t9,16384
     540:	24080014 	li	t0,20
     544:	a62e0150 	sh	t6,336(s1)
     548:	a62f0152 	sh	t7,338(s1)
     54c:	a238014e 	sb	t8,334(s1)
     550:	a6390030 	sh	t9,48(s1)
     554:	a22501e0 	sb	a1,480(s1)
     558:	a63001fc 	sh	s0,508(s1)
     55c:	a6280154 	sh	t0,340(s1)
     560:	24630000 	addiu	v1,v1,0
     564:	90690000 	lbu	t1,0(v1)
     568:	3c040000 	lui	a0,0x0
     56c:	24050001 	li	a1,1
     570:	15200012 	bnez	t1,5bc <EnClearTag_Init+0x1b0>
     574:	24840000 	addiu	a0,a0,0
     578:	8faa0034 	lw	t2,52(sp)
     57c:	a0650000 	sb	a1,0(v1)
     580:	3c010001 	lui	at,0x1
     584:	002a0821 	addu	at,at,t2
     588:	ac241e10 	sw	a0,7696(at)
     58c:	2403006c 	li	v1,108
     590:	00001025 	move	v0,zero
     594:	00430019 	multu	v0,v1
     598:	24420001 	addiu	v0,v0,1
     59c:	00021400 	sll	v0,v0,0x10
     5a0:	00021403 	sra	v0,v0,0x10
     5a4:	28410064 	slti	at,v0,100
     5a8:	00005812 	mflo	t3
     5ac:	008b6021 	addu	t4,a0,t3
     5b0:	1420fff8 	bnez	at,594 <EnClearTag_Init+0x188>
     5b4:	a1800000 	sb	zero,0(t4)
     5b8:	a225014d 	sb	a1,333(s1)
     5bc:	8fbf001c 	lw	ra,28(sp)
     5c0:	8fb00014 	lw	s0,20(sp)
     5c4:	8fb10018 	lw	s1,24(sp)
     5c8:	03e00008 	jr	ra
     5cc:	27bd0030 	addiu	sp,sp,48

000005d0 <func_809D3B80>:
     5d0:	27bdffe0 	addiu	sp,sp,-32
     5d4:	afbf0014 	sw	ra,20(sp)
     5d8:	afa40020 	sw	a0,32(sp)
     5dc:	8c820078 	lw	v0,120(a0)
     5e0:	50400026 	beqzl	v0,67c <func_809D3B80+0xac>
     5e4:	8fbf0014 	lw	ra,20(sp)
     5e8:	844f0008 	lh	t7,8(v0)
     5ec:	3c010000 	lui	at,0x0
     5f0:	c4220000 	lwc1	$f2,0(at)
     5f4:	448f2000 	mtc1	t7,$f4
     5f8:	3c013f80 	lui	at,0x3f80
     5fc:	44817000 	mtc1	at,$f14
     600:	468021a0 	cvt.s.w	$f6,$f4
     604:	46023202 	mul.s	$f8,$f6,$f2
     608:	e7a8001c 	swc1	$f8,28(sp)
     60c:	8458000a 	lh	t8,10(v0)
     610:	8459000c 	lh	t9,12(v0)
     614:	44985000 	mtc1	t8,$f10
     618:	44992000 	mtc1	t9,$f4
     61c:	468054a0 	cvt.s.w	$f18,$f10
     620:	468021a0 	cvt.s.w	$f6,$f4
     624:	46029402 	mul.s	$f16,$f18,$f2
     628:	00000000 	nop
     62c:	46023002 	mul.s	$f0,$f6,$f2
     630:	e7b00018 	swc1	$f16,24(sp)
     634:	46000207 	neg.s	$f8,$f0
     638:	46104302 	mul.s	$f12,$f8,$f16
     63c:	0c000000 	jal	0 <func_809D35B0>
     640:	00000000 	nop
     644:	8fa80020 	lw	t0,32(sp)
     648:	46000287 	neg.s	$f10,$f0
     64c:	c7b00018 	lwc1	$f16,24(sp)
     650:	e50a0188 	swc1	$f10,392(t0)
     654:	c7b2001c 	lwc1	$f18,28(sp)
     658:	3c013f80 	lui	at,0x3f80
     65c:	44817000 	mtc1	at,$f14
     660:	46009107 	neg.s	$f4,$f18
     664:	46102302 	mul.s	$f12,$f4,$f16
     668:	0c000000 	jal	0 <func_809D35B0>
     66c:	00000000 	nop
     670:	8fa90020 	lw	t1,32(sp)
     674:	e5200190 	swc1	$f0,400(t1)
     678:	8fbf0014 	lw	ra,20(sp)
     67c:	27bd0020 	addiu	sp,sp,32
     680:	03e00008 	jr	ra
     684:	00000000 	nop

00000688 <EnClearTag_Update>:
     688:	27bdff38 	addiu	sp,sp,-200
     68c:	afbf0034 	sw	ra,52(sp)
     690:	afb10030 	sw	s1,48(sp)
     694:	afb0002c 	sw	s0,44(sp)
     698:	afa500cc 	sw	a1,204(sp)
     69c:	a3a000c7 	sb	zero,199(sp)
     6a0:	8caf1c44 	lw	t7,7236(a1)
     6a4:	24010002 	li	at,2
     6a8:	00808825 	move	s1,a0
     6ac:	afaf00b4 	sw	t7,180(sp)
     6b0:	9098017c 	lbu	t8,380(a0)
     6b4:	9088014d 	lbu	t0,333(a0)
     6b8:	00008025 	move	s0,zero
     6bc:	27190001 	addiu	t9,t8,1
     6c0:	110102de 	beq	t0,at,123c <EnClearTag_Update+0xbb4>
     6c4:	a099017c 	sb	t9,380(a0)
     6c8:	00104840 	sll	t1,s0,0x1
     6cc:	02291021 	addu	v0,s1,t1
     6d0:	84430150 	lh	v1,336(v0)
     6d4:	26100001 	addiu	s0,s0,1
     6d8:	00108400 	sll	s0,s0,0x10
     6dc:	10600003 	beqz	v1,6ec <EnClearTag_Update+0x64>
     6e0:	00108403 	sra	s0,s0,0x10
     6e4:	246affff 	addiu	t2,v1,-1
     6e8:	a44a0150 	sh	t2,336(v0)
     6ec:	2a010003 	slti	at,s0,3
     6f0:	5420fff6 	bnezl	at,6cc <EnClearTag_Update+0x44>
     6f4:	00104840 	sll	t1,s0,0x1
     6f8:	862201fc 	lh	v0,508(s1)
     6fc:	24010001 	li	at,1
     700:	10400002 	beqz	v0,70c <EnClearTag_Update+0x84>
     704:	244bffff 	addiu	t3,v0,-1
     708:	a62b01fc 	sh	t3,508(s1)
     70c:	9223014e 	lbu	v1,334(s1)
     710:	5060000c 	beqzl	v1,744 <EnClearTag_Update+0xbc>
     714:	922201a5 	lbu	v0,421(s1)
     718:	10610009 	beq	v1,at,740 <EnClearTag_Update+0xb8>
     71c:	24010002 	li	at,2
     720:	10610007 	beq	v1,at,740 <EnClearTag_Update+0xb8>
     724:	2401000a 	li	at,10
     728:	106101b4 	beq	v1,at,dfc <EnClearTag_Update+0x774>
     72c:	24010064 	li	at,100
     730:	1061020a 	beq	v1,at,f5c <EnClearTag_Update+0x8d4>
     734:	00000000 	nop
     738:	1000023e 	b	1034 <EnClearTag_Update+0x9ac>
     73c:	28610064 	slti	at,v1,100
     740:	922201a5 	lbu	v0,421(s1)
     744:	240e0014 	li	t6,20
     748:	02202025 	move	a0,s1
     74c:	304c0002 	andi	t4,v0,0x2
     750:	11800024 	beqz	t4,7e4 <EnClearTag_Update+0x15c>
     754:	304dfffd 	andi	t5,v0,0xfffd
     758:	a22d01a5 	sb	t5,421(s1)
     75c:	a62e0184 	sh	t6,388(s1)
     760:	240f0005 	li	t7,5
     764:	afaf0010 	sw	t7,16(sp)
     768:	24054000 	li	a1,16384
     76c:	240600ff 	li	a2,255
     770:	0c000000 	jal	0 <func_809D35B0>
     774:	00003825 	move	a3,zero
     778:	3c014170 	lui	at,0x4170
     77c:	44816000 	mtc1	at,$f12
     780:	0c000000 	jal	0 <func_809D35B0>
     784:	00000000 	nop
     788:	3c014170 	lui	at,0x4170
     78c:	44816000 	mtc1	at,$f12
     790:	0c000000 	jal	0 <func_809D35B0>
     794:	e6200170 	swc1	$f0,368(s1)
     798:	3c014170 	lui	at,0x4170
     79c:	44816000 	mtc1	at,$f12
     7a0:	0c000000 	jal	0 <func_809D35B0>
     7a4:	e6200174 	swc1	$f0,372(s1)
     7a8:	e6200178 	swc1	$f0,376(s1)
     7ac:	02202025 	move	a0,s1
     7b0:	0c000000 	jal	0 <func_809D35B0>
     7b4:	240538ad 	li	a1,14509
     7b8:	923800af 	lbu	t8,175(s1)
     7bc:	2409000a 	li	t1,10
     7c0:	2719ffff 	addiu	t9,t8,-1
     7c4:	a23900af 	sb	t9,175(s1)
     7c8:	822800af 	lb	t0,175(s1)
     7cc:	5d000006 	bgtzl	t0,7e8 <EnClearTag_Update+0x160>
     7d0:	3c053e4c 	lui	a1,0x3e4c
     7d4:	44802000 	mtc1	zero,$f4
     7d8:	a229014e 	sb	t1,334(s1)
     7dc:	10000187 	b	dfc <EnClearTag_Update+0x774>
     7e0:	e6240060 	swc1	$f4,96(s1)
     7e4:	3c053e4c 	lui	a1,0x3e4c
     7e8:	34a5cccd 	ori	a1,a1,0xcccd
     7ec:	0c000000 	jal	0 <func_809D35B0>
     7f0:	02202025 	move	a0,s1
     7f4:	862a0150 	lh	t2,336(s1)
     7f8:	3c0140e0 	lui	at,0x40e0
     7fc:	44813000 	mtc1	at,$f6
     800:	8fb000b4 	lw	s0,180(sp)
     804:	15400051 	bnez	t2,94c <EnClearTag_Update+0x2c4>
     808:	e6260068 	swc1	$f6,104(s1)
     80c:	862b0152 	lh	t3,338(s1)
     810:	240c0001 	li	t4,1
     814:	240d012c 	li	t5,300
     818:	15600004 	bnez	t3,82c <EnClearTag_Update+0x1a4>
     81c:	3c014248 	lui	at,0x4248
     820:	a22c014e 	sb	t4,334(s1)
     824:	10000043 	b	934 <EnClearTag_Update+0x2ac>
     828:	a62d0150 	sh	t5,336(s1)
     82c:	44816000 	mtc1	at,$f12
     830:	0c000000 	jal	0 <func_809D35B0>
     834:	a220014e 	sb	zero,334(s1)
     838:	4600020d 	trunc.w.s	$f8,$f0
     83c:	8629001c 	lh	t1,28(s1)
     840:	24010001 	li	at,1
     844:	44194000 	mfc1	t9,$f8
     848:	00000000 	nop
     84c:	27280014 	addiu	t0,t9,20
     850:	15210028 	bne	t1,at,8f4 <EnClearTag_Update+0x26c>
     854:	a6280150 	sh	t0,336(s1)
     858:	0c000000 	jal	0 <func_809D35B0>
     85c:	860400b6 	lh	a0,182(s0)
     860:	3c0143c8 	lui	at,0x43c8
     864:	44815000 	mtc1	at,$f10
     868:	00000000 	nop
     86c:	460a0482 	mul.s	$f18,$f0,$f10
     870:	e7b20094 	swc1	$f18,148(sp)
     874:	0c000000 	jal	0 <func_809D35B0>
     878:	860400b6 	lh	a0,182(s0)
     87c:	3c0143c8 	lui	at,0x43c8
     880:	44812000 	mtc1	at,$f4
     884:	3c01442f 	lui	at,0x442f
     888:	44816000 	mtc1	at,$f12
     88c:	46040182 	mul.s	$f6,$f0,$f4
     890:	0c000000 	jal	0 <func_809D35B0>
     894:	e7a60090 	swc1	$f6,144(sp)
     898:	c6080024 	lwc1	$f8,36(s0)
     89c:	c7aa0094 	lwc1	$f10,148(sp)
     8a0:	3c014348 	lui	at,0x4348
     8a4:	44816000 	mtc1	at,$f12
     8a8:	460a4480 	add.s	$f18,$f8,$f10
     8ac:	46120100 	add.s	$f4,$f0,$f18
     8b0:	0c000000 	jal	0 <func_809D35B0>
     8b4:	e6240158 	swc1	$f4,344(s1)
     8b8:	c6060028 	lwc1	$f6,40(s0)
     8bc:	3c014316 	lui	at,0x4316
     8c0:	44815000 	mtc1	at,$f10
     8c4:	46060200 	add.s	$f8,$f0,$f6
     8c8:	3c01442f 	lui	at,0x442f
     8cc:	44816000 	mtc1	at,$f12
     8d0:	460a4480 	add.s	$f18,$f8,$f10
     8d4:	0c000000 	jal	0 <func_809D35B0>
     8d8:	e632015c 	swc1	$f18,348(s1)
     8dc:	c604002c 	lwc1	$f4,44(s0)
     8e0:	c7a60090 	lwc1	$f6,144(sp)
     8e4:	46062200 	add.s	$f8,$f4,$f6
     8e8:	46080280 	add.s	$f10,$f0,$f8
     8ec:	10000011 	b	934 <EnClearTag_Update+0x2ac>
     8f0:	e62a0160 	swc1	$f10,352(s1)
     8f4:	3c01442f 	lui	at,0x442f
     8f8:	44816000 	mtc1	at,$f12
     8fc:	0c000000 	jal	0 <func_809D35B0>
     900:	00000000 	nop
     904:	3c014348 	lui	at,0x4348
     908:	44816000 	mtc1	at,$f12
     90c:	0c000000 	jal	0 <func_809D35B0>
     910:	e6200158 	swc1	$f0,344(s1)
     914:	3c014316 	lui	at,0x4316
     918:	44819000 	mtc1	at,$f18
     91c:	3c01442f 	lui	at,0x442f
     920:	44816000 	mtc1	at,$f12
     924:	46120100 	add.s	$f4,$f0,$f18
     928:	0c000000 	jal	0 <func_809D35B0>
     92c:	e624015c 	swc1	$f4,348(s1)
     930:	e6200160 	swc1	$f0,352(s1)
     934:	44803000 	mtc1	zero,$f6
     938:	44804000 	mtc1	zero,$f8
     93c:	44805000 	mtc1	zero,$f10
     940:	e626016c 	swc1	$f6,364(s1)
     944:	e6280168 	swc1	$f8,360(s1)
     948:	e62a0164 	swc1	$f10,356(s1)
     94c:	240a000a 	li	t2,10
     950:	240b0800 	li	t3,2048
     954:	a7aa00c0 	sh	t2,192(sp)
     958:	a7ab00c2 	sh	t3,194(sp)
     95c:	9223014e 	lbu	v1,334(s1)
     960:	3c0142c8 	lui	at,0x42c8
     964:	44816000 	mtc1	at,$f12
     968:	24010001 	li	at,1
     96c:	54610013 	bnel	v1,at,9bc <EnClearTag_Update+0x334>
     970:	24010002 	li	at,2
     974:	c6120024 	lwc1	$f18,36(s0)
     978:	3c014220 	lui	at,0x4220
     97c:	44813000 	mtc1	at,$f6
     980:	e6320158 	swc1	$f18,344(s1)
     984:	c6040028 	lwc1	$f4,40(s0)
     988:	240c0007 	li	t4,7
     98c:	240d1000 	li	t5,4096
     990:	46062200 	add.s	$f8,$f4,$f6
     994:	3c014316 	lui	at,0x4316
     998:	44816000 	mtc1	at,$f12
     99c:	e628015c 	swc1	$f8,348(s1)
     9a0:	c60a002c 	lwc1	$f10,44(s0)
     9a4:	e62a0160 	swc1	$f10,352(s1)
     9a8:	a7ac00c0 	sh	t4,192(sp)
     9ac:	a7ad00c2 	sh	t5,194(sp)
     9b0:	10000019 	b	a18 <EnClearTag_Update+0x390>
     9b4:	9223014e 	lbu	v1,334(s1)
     9b8:	24010002 	li	at,2
     9bc:	14610016 	bne	v1,at,a18 <EnClearTag_Update+0x390>
     9c0:	3c010000 	lui	at,0x0
     9c4:	c4220000 	lwc1	$f2,0(at)
     9c8:	3c013f00 	lui	at,0x3f00
     9cc:	44812000 	mtc1	at,$f4
     9d0:	c6320180 	lwc1	$f18,384(s1)
     9d4:	3c014396 	lui	at,0x4396
     9d8:	44805000 	mtc1	zero,$f10
     9dc:	46049180 	add.s	$f6,$f18,$f4
     9e0:	44819000 	mtc1	at,$f18
     9e4:	44802000 	mtc1	zero,$f4
     9e8:	e6260180 	swc1	$f6,384(s1)
     9ec:	c6200180 	lwc1	$f0,384(s1)
     9f0:	4600103c 	c.lt.s	$f2,$f0
     9f4:	00000000 	nop
     9f8:	45020004 	bc1fl	a0c <EnClearTag_Update+0x384>
     9fc:	e62a0158 	swc1	$f10,344(s1)
     a00:	46020201 	sub.s	$f8,$f0,$f2
     a04:	e6280180 	swc1	$f8,384(s1)
     a08:	e62a0158 	swc1	$f10,344(s1)
     a0c:	e632015c 	swc1	$f18,348(s1)
     a10:	e6240160 	swc1	$f4,352(s1)
     a14:	9223014e 	lbu	v1,334(s1)
     a18:	24010002 	li	at,2
     a1c:	10610008 	beq	v1,at,a40 <EnClearTag_Update+0x3b8>
     a20:	3c053dcc 	lui	a1,0x3dcc
     a24:	3c063e4c 	lui	a2,0x3e4c
     a28:	34c6cccd 	ori	a2,a2,0xcccd
     a2c:	34a5cccd 	ori	a1,a1,0xcccd
     a30:	26240180 	addiu	a0,s1,384
     a34:	0c000000 	jal	0 <func_809D35B0>
     a38:	e7ac00a0 	swc1	$f12,160(sp)
     a3c:	c7ac00a0 	lwc1	$f12,160(sp)
     a40:	c6260158 	lwc1	$f6,344(s1)
     a44:	c6280024 	lwc1	$f8,36(s1)
     a48:	46083281 	sub.s	$f10,$f6,$f8
     a4c:	e7aa00b0 	swc1	$f10,176(sp)
     a50:	c6240028 	lwc1	$f4,40(s1)
     a54:	c632015c 	lwc1	$f18,348(s1)
     a58:	46049181 	sub.s	$f6,$f18,$f4
     a5c:	c7b200b0 	lwc1	$f18,176(sp)
     a60:	e7a600ac 	swc1	$f6,172(sp)
     a64:	c62a002c 	lwc1	$f10,44(s1)
     a68:	c6280160 	lwc1	$f8,352(s1)
     a6c:	46129082 	mul.s	$f2,$f18,$f18
     a70:	c7a400ac 	lwc1	$f4,172(sp)
     a74:	460a4381 	sub.s	$f14,$f8,$f10
     a78:	460e7402 	mul.s	$f16,$f14,$f14
     a7c:	00000000 	nop
     a80:	46042182 	mul.s	$f6,$f4,$f4
     a84:	46061200 	add.s	$f8,$f2,$f6
     a88:	46104000 	add.s	$f0,$f8,$f16
     a8c:	46000004 	sqrt.s	$f0,$f0
     a90:	460c003c 	c.lt.s	$f0,$f12
     a94:	00000000 	nop
     a98:	45000014 	bc1f	aec <EnClearTag_Update+0x464>
     a9c:	00000000 	nop
     aa0:	922e014e 	lbu	t6,334(s1)
     aa4:	24010001 	li	at,1
     aa8:	a6200150 	sh	zero,336(s1)
     aac:	15c1000e 	bne	t6,at,ae8 <EnClearTag_Update+0x460>
     ab0:	3c0142c8 	lui	at,0x42c8
     ab4:	44816000 	mtc1	at,$f12
     ab8:	e7a2003c 	swc1	$f2,60(sp)
     abc:	e7ae00a8 	swc1	$f14,168(sp)
     ac0:	0c000000 	jal	0 <func_809D35B0>
     ac4:	e7b00038 	swc1	$f16,56(sp)
     ac8:	4600028d 	trunc.w.s	$f10,$f0
     acc:	c7a2003c 	lwc1	$f2,60(sp)
     ad0:	c7ae00a8 	lwc1	$f14,168(sp)
     ad4:	c7b00038 	lwc1	$f16,56(sp)
     ad8:	44085000 	mfc1	t0,$f10
     adc:	00000000 	nop
     ae0:	25090064 	addiu	t1,t0,100
     ae4:	a6290152 	sh	t1,338(s1)
     ae8:	a220014e 	sb	zero,334(s1)
     aec:	c7ac00b0 	lwc1	$f12,176(sp)
     af0:	e7a2003c 	swc1	$f2,60(sp)
     af4:	0c000000 	jal	0 <func_809D35B0>
     af8:	e7b00038 	swc1	$f16,56(sp)
     afc:	3c010000 	lui	at,0x0
     b00:	c4320000 	lwc1	$f18,0(at)
     b04:	c7a2003c 	lwc1	$f2,60(sp)
     b08:	c7b00038 	lwc1	$f16,56(sp)
     b0c:	46120102 	mul.s	$f4,$f0,$f18
     b10:	c7ac00ac 	lwc1	$f12,172(sp)
     b14:	46101000 	add.s	$f0,$f2,$f16
     b18:	46000384 	sqrt.s	$f14,$f0
     b1c:	4600218d 	trunc.w.s	$f6,$f4
     b20:	44103000 	mfc1	s0,$f6
     b24:	00000000 	nop
     b28:	00108400 	sll	s0,s0,0x10
     b2c:	0c000000 	jal	0 <func_809D35B0>
     b30:	00108403 	sra	s0,s0,0x10
     b34:	3c010000 	lui	at,0x0
     b38:	c4280000 	lwc1	$f8,0(at)
     b3c:	3c0141a0 	lui	at,0x41a0
     b40:	46080282 	mul.s	$f10,$f0,$f8
     b44:	4600548d 	trunc.w.s	$f18,$f10
     b48:	44029000 	mfc1	v0,$f18
     b4c:	00000000 	nop
     b50:	00026400 	sll	t4,v0,0x10
     b54:	000c6c03 	sra	t5,t4,0x10
     b58:	00022c00 	sll	a1,v0,0x10
     b5c:	05a1000a 	bgez	t5,b88 <EnClearTag_Update+0x500>
     b60:	00052c03 	sra	a1,a1,0x10
     b64:	c6260080 	lwc1	$f6,128(s1)
     b68:	44814000 	mtc1	at,$f8
     b6c:	c6240028 	lwc1	$f4,40(s1)
     b70:	46083280 	add.s	$f10,$f6,$f8
     b74:	460a203c 	c.lt.s	$f4,$f10
     b78:	00000000 	nop
     b7c:	45020003 	bc1fl	b8c <EnClearTag_Update+0x504>
     b80:	c6320164 	lwc1	$f18,356(s1)
     b84:	00002825 	move	a1,zero
     b88:	c6320164 	lwc1	$f18,356(s1)
     b8c:	26240030 	addiu	a0,s1,48
     b90:	afa4003c 	sw	a0,60(sp)
     b94:	4600918d 	trunc.w.s	$f6,$f18
     b98:	87a600c0 	lh	a2,192(sp)
     b9c:	44073000 	mfc1	a3,$f6
     ba0:	00000000 	nop
     ba4:	00073c00 	sll	a3,a3,0x10
     ba8:	0c000000 	jal	0 <func_809D35B0>
     bac:	00073c03 	sra	a3,a3,0x10
     bb0:	c6280168 	lwc1	$f8,360(s1)
     bb4:	00102c00 	sll	a1,s0,0x10
     bb8:	00052c03 	sra	a1,a1,0x10
     bbc:	4600410d 	trunc.w.s	$f4,$f8
     bc0:	afa00010 	sw	zero,16(sp)
     bc4:	26240032 	addiu	a0,s1,50
     bc8:	87a600c0 	lh	a2,192(sp)
     bcc:	44072000 	mfc1	a3,$f4
     bd0:	00000000 	nop
     bd4:	00073c00 	sll	a3,a3,0x10
     bd8:	0c000000 	jal	0 <func_809D35B0>
     bdc:	00073c03 	sra	a3,a3,0x10
     be0:	87b800c2 	lh	t8,194(sp)
     be4:	00028400 	sll	s0,v0,0x10
     be8:	00108403 	sra	s0,s0,0x10
     bec:	44985000 	mtc1	t8,$f10
     bf0:	26240164 	addiu	a0,s1,356
     bf4:	3c063f80 	lui	a2,0x3f80
     bf8:	468052a0 	cvt.s.w	$f10,$f10
     bfc:	3c074380 	lui	a3,0x4380
     c00:	44055000 	mfc1	a1,$f10
     c04:	0c000000 	jal	0 <func_809D35B0>
     c08:	00000000 	nop
     c0c:	c6320164 	lwc1	$f18,356(s1)
     c10:	00101023 	negu	v0,s0
     c14:	06000003 	bltz	s0,c24 <EnClearTag_Update+0x59c>
     c18:	e6320168 	swc1	$f18,360(s1)
     c1c:	10000001 	b	c24 <EnClearTag_Update+0x59c>
     c20:	02001025 	move	v0,s0
     c24:	28411000 	slti	at,v0,4096
     c28:	10200024 	beqz	at,cbc <EnClearTag_Update+0x634>
     c2c:	00000000 	nop
     c30:	c626016c 	lwc1	$f6,364(s1)
     c34:	26240034 	addiu	a0,s1,52
     c38:	00002825 	move	a1,zero
     c3c:	4600320d 	trunc.w.s	$f8,$f6
     c40:	2406000f 	li	a2,15
     c44:	44074000 	mfc1	a3,$f8
     c48:	00000000 	nop
     c4c:	00073c00 	sll	a3,a3,0x10
     c50:	0c000000 	jal	0 <func_809D35B0>
     c54:	00073c03 	sra	a3,a3,0x10
     c58:	2624016c 	addiu	a0,s1,364
     c5c:	3c0544a0 	lui	a1,0x44a0
     c60:	3c063f80 	lui	a2,0x3f80
     c64:	0c000000 	jal	0 <func_809D35B0>
     c68:	3c074380 	lui	a3,0x4380
     c6c:	9228017c 	lbu	t0,380(s1)
     c70:	31090003 	andi	t1,t0,0x3
     c74:	55200027 	bnezl	t1,d14 <EnClearTag_Update+0x68c>
     c78:	8fad003c 	lw	t5,60(sp)
     c7c:	0c000000 	jal	0 <func_809D35B0>
     c80:	00000000 	nop
     c84:	3c013f40 	lui	at,0x3f40
     c88:	44812000 	mtc1	at,$f4
     c8c:	00000000 	nop
     c90:	4604003c 	c.lt.s	$f0,$f4
     c94:	00000000 	nop
     c98:	4502001e 	bc1fl	d14 <EnClearTag_Update+0x68c>
     c9c:	8fad003c 	lw	t5,60(sp)
     ca0:	922a014e 	lbu	t2,334(s1)
     ca4:	24010001 	li	at,1
     ca8:	240b0001 	li	t3,1
     cac:	55410019 	bnel	t2,at,d14 <EnClearTag_Update+0x68c>
     cb0:	8fad003c 	lw	t5,60(sp)
     cb4:	10000016 	b	d10 <EnClearTag_Update+0x688>
     cb8:	a22b017d 	sb	t3,381(s1)
     cbc:	5a000004 	blezl	s0,cd0 <EnClearTag_Update+0x648>
     cc0:	24102500 	li	s0,9472
     cc4:	10000002 	b	cd0 <EnClearTag_Update+0x648>
     cc8:	2410db00 	li	s0,-9472
     ccc:	24102500 	li	s0,9472
     cd0:	c62a016c 	lwc1	$f10,364(s1)
     cd4:	00102c00 	sll	a1,s0,0x10
     cd8:	00052c03 	sra	a1,a1,0x10
     cdc:	4600548d 	trunc.w.s	$f18,$f10
     ce0:	26240034 	addiu	a0,s1,52
     ce4:	87a600c0 	lh	a2,192(sp)
     ce8:	44079000 	mfc1	a3,$f18
     cec:	00000000 	nop
     cf0:	00073c00 	sll	a3,a3,0x10
     cf4:	0c000000 	jal	0 <func_809D35B0>
     cf8:	00073c03 	sra	a3,a3,0x10
     cfc:	2624016c 	addiu	a0,s1,364
     d00:	3c054580 	lui	a1,0x4580
     d04:	3c063f80 	lui	a2,0x3f80
     d08:	0c000000 	jal	0 <func_809D35B0>
     d0c:	3c074400 	lui	a3,0x4400
     d10:	8fad003c 	lw	t5,60(sp)
     d14:	02202025 	move	a0,s1
     d18:	89af0000 	lwl	t7,0(t5)
     d1c:	99af0003 	lwr	t7,3(t5)
     d20:	aa2f00b4 	swl	t7,180(s1)
     d24:	ba2f00b7 	swr	t7,183(s1)
     d28:	863800b4 	lh	t8,180(s1)
     d2c:	95af0004 	lhu	t7,4(t5)
     d30:	0018c823 	negu	t9,t8
     d34:	a63900b4 	sh	t9,180(s1)
     d38:	0c000000 	jal	0 <func_809D35B0>
     d3c:	a62f00b8 	sh	t7,184(s1)
     d40:	c626005c 	lwc1	$f6,92(s1)
     d44:	c6280170 	lwc1	$f8,368(s1)
     d48:	c62a0060 	lwc1	$f10,96(s1)
     d4c:	c6320174 	lwc1	$f18,372(s1)
     d50:	46083100 	add.s	$f4,$f6,$f8
     d54:	c6280064 	lwc1	$f8,100(s1)
     d58:	3c013f80 	lui	at,0x3f80
     d5c:	44810000 	mtc1	at,$f0
     d60:	e624005c 	swc1	$f4,92(s1)
     d64:	c6240178 	lwc1	$f4,376(s1)
     d68:	46125180 	add.s	$f6,$f10,$f18
     d6c:	44050000 	mfc1	a1,$f0
     d70:	44060000 	mfc1	a2,$f0
     d74:	46044280 	add.s	$f10,$f8,$f4
     d78:	e6260060 	swc1	$f6,96(s1)
     d7c:	26240170 	addiu	a0,s1,368
     d80:	0c000000 	jal	0 <func_809D35B0>
     d84:	e62a0064 	swc1	$f10,100(s1)
     d88:	26240174 	addiu	a0,s1,372
     d8c:	3c053f80 	lui	a1,0x3f80
     d90:	0c000000 	jal	0 <func_809D35B0>
     d94:	3c063f80 	lui	a2,0x3f80
     d98:	26240178 	addiu	a0,s1,376
     d9c:	3c053f80 	lui	a1,0x3f80
     da0:	0c000000 	jal	0 <func_809D35B0>
     da4:	3c063f80 	lui	a2,0x3f80
     da8:	9228017d 	lbu	t0,381(s1)
     dac:	51000014 	beqzl	t0,e00 <EnClearTag_Update+0x778>
     db0:	86220184 	lh	v0,388(s1)
     db4:	c6320028 	lwc1	$f18,40(s1)
     db8:	a220017d 	sb	zero,381(s1)
     dbc:	8e270024 	lw	a3,36(s1)
     dc0:	e7b20010 	swc1	$f18,16(sp)
     dc4:	c626002c 	lwc1	$f6,44(s1)
     dc8:	8fa500cc 	lw	a1,204(sp)
     dcc:	240d0064 	li	t5,100
     dd0:	e7a60014 	swc1	$f6,20(sp)
     dd4:	862a0030 	lh	t2,48(s1)
     dd8:	2406013b 	li	a2,315
     ddc:	24a41c24 	addiu	a0,a1,7204
     de0:	afaa0018 	sw	t2,24(sp)
     de4:	862b0032 	lh	t3,50(s1)
     de8:	afab001c 	sw	t3,28(sp)
     dec:	862c0034 	lh	t4,52(s1)
     df0:	afad0024 	sw	t5,36(sp)
     df4:	0c000000 	jal	0 <func_809D35B0>
     df8:	afac0020 	sw	t4,32(sp)
     dfc:	86220184 	lh	v0,388(s1)
     e00:	10400002 	beqz	v0,e0c <EnClearTag_Update+0x784>
     e04:	244effff 	addiu	t6,v0,-1
     e08:	a62e0184 	sh	t6,388(s1)
     e0c:	0c000000 	jal	0 <func_809D35B0>
     e10:	02202025 	move	a0,s1
     e14:	02202025 	move	a0,s1
     e18:	0c000000 	jal	0 <func_809D35B0>
     e1c:	24050000 	li	a1,0
     e20:	240f0014 	li	t7,20
     e24:	2418000f 	li	t8,15
     e28:	2419fffb 	li	t9,-5
     e2c:	26300194 	addiu	s0,s1,404
     e30:	a62f01d4 	sh	t7,468(s1)
     e34:	a63801d6 	sh	t8,470(s1)
     e38:	a63901d8 	sh	t9,472(s1)
     e3c:	02002825 	move	a1,s0
     e40:	0c000000 	jal	0 <func_809D35B0>
     e44:	02202025 	move	a0,s1
     e48:	8fa400cc 	lw	a0,204(sp)
     e4c:	3c010001 	lui	at,0x1
     e50:	34211e60 	ori	at,at,0x1e60
     e54:	00812821 	addu	a1,a0,at
     e58:	afa5003c 	sw	a1,60(sp)
     e5c:	0c000000 	jal	0 <func_809D35B0>
     e60:	02003025 	move	a2,s0
     e64:	8fa5003c 	lw	a1,60(sp)
     e68:	8fa400cc 	lw	a0,204(sp)
     e6c:	0c000000 	jal	0 <func_809D35B0>
     e70:	02003025 	move	a2,s0
     e74:	86290154 	lh	t1,340(s1)
     e78:	8fa400cc 	lw	a0,204(sp)
     e7c:	02202825 	move	a1,s1
     e80:	1520000a 	bnez	t1,eac <EnClearTag_Update+0x824>
     e84:	3c064248 	lui	a2,0x4248
     e88:	3c0142c8 	lui	at,0x42c8
     e8c:	44814000 	mtc1	at,$f8
     e90:	240a0005 	li	t2,5
     e94:	afaa0014 	sw	t2,20(sp)
     e98:	3c0741f0 	lui	a3,0x41f0
     e9c:	0c000000 	jal	0 <func_809D35B0>
     ea0:	e7a80010 	swc1	$f8,16(sp)
     ea4:	0c000000 	jal	0 <func_809D35B0>
     ea8:	02202025 	move	a0,s1
     eac:	922b014e 	lbu	t3,334(s1)
     eb0:	2401000a 	li	at,10
     eb4:	8fa400cc 	lw	a0,204(sp)
     eb8:	15610026 	bne	t3,at,f54 <EnClearTag_Update+0x8cc>
     ebc:	26250024 	addiu	a1,s1,36
     ec0:	0c000000 	jal	0 <func_809D35B0>
     ec4:	3c063f80 	lui	a2,0x3f80
     ec8:	3c013f00 	lui	at,0x3f00
     ecc:	44815000 	mtc1	at,$f10
     ed0:	c6240180 	lwc1	$f4,384(s1)
     ed4:	3c010000 	lui	at,0x0
     ed8:	c6260060 	lwc1	$f6,96(s1)
     edc:	460a2481 	sub.s	$f18,$f4,$f10
     ee0:	862c00b4 	lh	t4,180(s1)
     ee4:	02202025 	move	a0,s1
     ee8:	2405304f 	li	a1,12367
     eec:	e6320180 	swc1	$f18,384(s1)
     ef0:	c4280000 	lwc1	$f8,0(at)
     ef4:	258d0010 	addiu	t5,t4,16
     ef8:	a62d00b4 	sh	t5,180(s1)
     efc:	46083101 	sub.s	$f4,$f6,$f8
     f00:	0c000000 	jal	0 <func_809D35B0>
     f04:	e6240060 	swc1	$f4,96(s1)
     f08:	962e0088 	lhu	t6,136(s1)
     f0c:	31cf0009 	andi	t7,t6,0x9
     f10:	11e00010 	beqz	t7,f54 <EnClearTag_Update+0x8cc>
     f14:	00000000 	nop
     f18:	9239014d 	lbu	t9,333(s1)
     f1c:	24180001 	li	t8,1
     f20:	a238014c 	sb	t8,332(s1)
     f24:	13200009 	beqz	t9,f4c <EnClearTag_Update+0x8c4>
     f28:	24080002 	li	t0,2
     f2c:	8e2a0004 	lw	t2,4(s1)
     f30:	2401fffe 	li	at,-2
     f34:	24090046 	li	t1,70
     f38:	01415824 	and	t3,t2,at
     f3c:	a228014d 	sb	t0,333(s1)
     f40:	a6290186 	sh	t1,390(s1)
     f44:	10000003 	b	f54 <EnClearTag_Update+0x8cc>
     f48:	ae2b0004 	sw	t3,4(s1)
     f4c:	0c000000 	jal	0 <func_809D35B0>
     f50:	02202025 	move	a0,s1
     f54:	10000036 	b	1030 <EnClearTag_Update+0x9a8>
     f58:	9223014e 	lbu	v1,334(s1)
     f5c:	0c000000 	jal	0 <func_809D35B0>
     f60:	02202025 	move	a0,s1
     f64:	922c01a4 	lbu	t4,420(s1)
     f68:	240f0017 	li	t7,23
     f6c:	24180019 	li	t8,25
     f70:	318d0002 	andi	t5,t4,0x2
     f74:	11a00003 	beqz	t5,f84 <EnClearTag_Update+0x8fc>
     f78:	2419fff6 	li	t9,-10
     f7c:	240e0001 	li	t6,1
     f80:	a3ae00c7 	sb	t6,199(sp)
     f84:	26300194 	addiu	s0,s1,404
     f88:	a62f01d4 	sh	t7,468(s1)
     f8c:	a63801d6 	sh	t8,470(s1)
     f90:	a63901d8 	sh	t9,472(s1)
     f94:	02002825 	move	a1,s0
     f98:	0c000000 	jal	0 <func_809D35B0>
     f9c:	02202025 	move	a0,s1
     fa0:	8fa400cc 	lw	a0,204(sp)
     fa4:	3c010001 	lui	at,0x1
     fa8:	34211e60 	ori	at,at,0x1e60
     fac:	02003025 	move	a2,s0
     fb0:	0c000000 	jal	0 <func_809D35B0>
     fb4:	00812821 	addu	a1,a0,at
     fb8:	3c0142c8 	lui	at,0x42c8
     fbc:	44815000 	mtc1	at,$f10
     fc0:	24090005 	li	t1,5
     fc4:	afa90014 	sw	t1,20(sp)
     fc8:	8fa400cc 	lw	a0,204(sp)
     fcc:	02202825 	move	a1,s1
     fd0:	3c064248 	lui	a2,0x4248
     fd4:	3c0742a0 	lui	a3,0x42a0
     fd8:	0c000000 	jal	0 <func_809D35B0>
     fdc:	e7aa0010 	swc1	$f10,16(sp)
     fe0:	962a0088 	lhu	t2,136(s1)
     fe4:	93ac00c7 	lbu	t4,199(sp)
     fe8:	314b0009 	andi	t3,t2,0x9
     fec:	15600006 	bnez	t3,1008 <EnClearTag_Update+0x980>
     ff0:	00000000 	nop
     ff4:	15800004 	bnez	t4,1008 <EnClearTag_Update+0x980>
     ff8:	00000000 	nop
     ffc:	862d0150 	lh	t5,336(s1)
    1000:	55a0000b 	bnezl	t5,1030 <EnClearTag_Update+0x9a8>
    1004:	9223014e 	lbu	v1,334(s1)
    1008:	0c000000 	jal	0 <func_809D35B0>
    100c:	02202025 	move	a0,s1
    1010:	862e0150 	lh	t6,336(s1)
    1014:	8fa400cc 	lw	a0,204(sp)
    1018:	26250024 	addiu	a1,s1,36
    101c:	11c00003 	beqz	t6,102c <EnClearTag_Update+0x9a4>
    1020:	24060014 	li	a2,20
    1024:	0c000000 	jal	0 <func_809D35B0>
    1028:	240738ad 	li	a3,14509
    102c:	9223014e 	lbu	v1,334(s1)
    1030:	28610064 	slti	at,v1,100
    1034:	10200081 	beqz	at,123c <EnClearTag_Update+0xbb4>
    1038:	3c040000 	lui	a0,0x0
    103c:	24840000 	addiu	a0,a0,0
    1040:	0c000000 	jal	0 <func_809D35B0>
    1044:	922501e0 	lbu	a1,480(s1)
    1048:	3c040000 	lui	a0,0x0
    104c:	24840000 	addiu	a0,a0,0
    1050:	0c000000 	jal	0 <func_809D35B0>
    1054:	862501e2 	lh	a1,482(s1)
    1058:	922301e0 	lbu	v1,480(s1)
    105c:	24010001 	li	at,1
    1060:	50600077 	beqzl	v1,1240 <EnClearTag_Update+0xbb8>
    1064:	922f014c 	lbu	t7,332(s1)
    1068:	10610006 	beq	v1,at,1084 <EnClearTag_Update+0x9fc>
    106c:	240f0002 	li	t7,2
    1070:	24010002 	li	at,2
    1074:	50610013 	beql	v1,at,10c4 <EnClearTag_Update+0xa3c>
    1078:	9230017c 	lbu	s0,380(s1)
    107c:	10000035 	b	1154 <EnClearTag_Update+0xacc>
    1080:	862c01e2 	lh	t4,482(s1)
    1084:	a22f01e0 	sb	t7,480(s1)
    1088:	8fa400cc 	lw	a0,204(sp)
    108c:	0c000000 	jal	0 <func_809D35B0>
    1090:	24851d64 	addiu	a1,a0,7524
    1094:	0c000000 	jal	0 <func_809D35B0>
    1098:	8fa400cc 	lw	a0,204(sp)
    109c:	a62201e2 	sh	v0,482(s1)
    10a0:	8fa400cc 	lw	a0,204(sp)
    10a4:	00002825 	move	a1,zero
    10a8:	0c000000 	jal	0 <func_809D35B0>
    10ac:	24060001 	li	a2,1
    10b0:	8fa400cc 	lw	a0,204(sp)
    10b4:	862501e2 	lh	a1,482(s1)
    10b8:	0c000000 	jal	0 <func_809D35B0>
    10bc:	24060007 	li	a2,7
    10c0:	9230017c 	lbu	s0,380(s1)
    10c4:	26390024 	addiu	t9,s1,36
    10c8:	afb9003c 	sw	t9,60(sp)
    10cc:	001081c0 	sll	s0,s0,0x7
    10d0:	00108400 	sll	s0,s0,0x10
    10d4:	00108403 	sra	s0,s0,0x10
    10d8:	00102400 	sll	a0,s0,0x10
    10dc:	0c000000 	jal	0 <func_809D35B0>
    10e0:	00042403 	sra	a0,a0,0x10
    10e4:	3c014348 	lui	at,0x4348
    10e8:	44819000 	mtc1	at,$f18
    10ec:	00102400 	sll	a0,s0,0x10
    10f0:	00042403 	sra	a0,a0,0x10
    10f4:	46120182 	mul.s	$f6,$f0,$f18
    10f8:	0c000000 	jal	0 <func_809D35B0>
    10fc:	e7a6008c 	swc1	$f6,140(sp)
    1100:	c6280024 	lwc1	$f8,36(s1)
    1104:	c7a4008c 	lwc1	$f4,140(sp)
    1108:	3c014348 	lui	at,0x4348
    110c:	44819000 	mtc1	at,$f18
    1110:	46044280 	add.s	$f10,$f8,$f4
    1114:	44814000 	mtc1	at,$f8
    1118:	e7b2007c 	swc1	$f18,124(sp)
    111c:	8fa9003c 	lw	t1,60(sp)
    1120:	46080102 	mul.s	$f4,$f0,$f8
    1124:	e7aa0078 	swc1	$f10,120(sp)
    1128:	c626002c 	lwc1	$f6,44(s1)
    112c:	27a8006c 	addiu	t0,sp,108
    1130:	46043280 	add.s	$f10,$f6,$f4
    1134:	e7aa0080 	swc1	$f10,128(sp)
    1138:	8d2b0000 	lw	t3,0(t1)
    113c:	ad0b0000 	sw	t3,0(t0)
    1140:	8d2a0004 	lw	t2,4(t1)
    1144:	ad0a0004 	sw	t2,4(t0)
    1148:	8d2b0008 	lw	t3,8(t1)
    114c:	ad0b0008 	sw	t3,8(t0)
    1150:	862c01e2 	lh	t4,482(s1)
    1154:	262401e4 	addiu	a0,s1,484
    1158:	8fa50078 	lw	a1,120(sp)
    115c:	11800029 	beqz	t4,1204 <EnClearTag_Update+0xb7c>
    1160:	3c063dcc 	lui	a2,0x3dcc
    1164:	34c6cccd 	ori	a2,a2,0xcccd
    1168:	3c0743fa 	lui	a3,0x43fa
    116c:	0c000000 	jal	0 <func_809D35B0>
    1170:	afa40038 	sw	a0,56(sp)
    1174:	3c063dcc 	lui	a2,0x3dcc
    1178:	34c6cccd 	ori	a2,a2,0xcccd
    117c:	262401e8 	addiu	a0,s1,488
    1180:	8fa5007c 	lw	a1,124(sp)
    1184:	0c000000 	jal	0 <func_809D35B0>
    1188:	3c0743fa 	lui	a3,0x43fa
    118c:	3c063dcc 	lui	a2,0x3dcc
    1190:	34c6cccd 	ori	a2,a2,0xcccd
    1194:	262401ec 	addiu	a0,s1,492
    1198:	8fa50080 	lw	a1,128(sp)
    119c:	0c000000 	jal	0 <func_809D35B0>
    11a0:	3c0743fa 	lui	a3,0x43fa
    11a4:	263001f0 	addiu	s0,s1,496
    11a8:	3c063e4c 	lui	a2,0x3e4c
    11ac:	34c6cccd 	ori	a2,a2,0xcccd
    11b0:	02002025 	move	a0,s0
    11b4:	8fa5006c 	lw	a1,108(sp)
    11b8:	0c000000 	jal	0 <func_809D35B0>
    11bc:	3c0743fa 	lui	a3,0x43fa
    11c0:	3c063e4c 	lui	a2,0x3e4c
    11c4:	34c6cccd 	ori	a2,a2,0xcccd
    11c8:	262401f4 	addiu	a0,s1,500
    11cc:	8fa50070 	lw	a1,112(sp)
    11d0:	0c000000 	jal	0 <func_809D35B0>
    11d4:	3c0743fa 	lui	a3,0x43fa
    11d8:	3c063e4c 	lui	a2,0x3e4c
    11dc:	34c6cccd 	ori	a2,a2,0xcccd
    11e0:	262401f8 	addiu	a0,s1,504
    11e4:	8fa50074 	lw	a1,116(sp)
    11e8:	0c000000 	jal	0 <func_809D35B0>
    11ec:	3c0743fa 	lui	a3,0x43fa
    11f0:	8fa400cc 	lw	a0,204(sp)
    11f4:	862501e2 	lh	a1,482(s1)
    11f8:	02003025 	move	a2,s0
    11fc:	0c000000 	jal	0 <func_809D35B0>
    1200:	8fa70038 	lw	a3,56(sp)
    1204:	862d01fc 	lh	t5,508(s1)
    1208:	24010001 	li	at,1
    120c:	8fa400cc 	lw	a0,204(sp)
    1210:	15a1000a 	bne	t5,at,123c <EnClearTag_Update+0xbb4>
    1214:	00003025 	move	a2,zero
    1218:	862501e2 	lh	a1,482(s1)
    121c:	0c000000 	jal	0 <func_809D35B0>
    1220:	24901d64 	addiu	s0,a0,7524
    1224:	8fa400cc 	lw	a0,204(sp)
    1228:	a62001e2 	sh	zero,482(s1)
    122c:	862e01e2 	lh	t6,482(s1)
    1230:	02002825 	move	a1,s0
    1234:	0c000000 	jal	0 <func_809D35B0>
    1238:	a22e01e0 	sb	t6,480(s1)
    123c:	922f014c 	lbu	t7,332(s1)
    1240:	26250024 	addiu	a1,s1,36
    1244:	24060028 	li	a2,40
    1248:	11e00069 	beqz	t7,13f0 <EnClearTag_Update+0xd68>
    124c:	2407180e 	li	a3,6158
    1250:	a220014c 	sb	zero,332(s1)
    1254:	0c000000 	jal	0 <func_809D35B0>
    1258:	8fa400cc 	lw	a0,204(sp)
    125c:	c6320024 	lwc1	$f18,36(s1)
    1260:	3c014220 	lui	at,0x4220
    1264:	44813000 	mtc1	at,$f6
    1268:	e7b20060 	swc1	$f18,96(sp)
    126c:	c6280028 	lwc1	$f8,40(s1)
    1270:	3c0141f0 	lui	at,0x41f0
    1274:	44815000 	mtc1	at,$f10
    1278:	46064100 	add.s	$f4,$f8,$f6
    127c:	26380188 	addiu	t8,s1,392
    1280:	8fa400cc 	lw	a0,204(sp)
    1284:	27a50060 	addiu	a1,sp,96
    1288:	460a2481 	sub.s	$f18,$f4,$f10
    128c:	3c0640c0 	lui	a2,0x40c0
    1290:	e7b20064 	swc1	$f18,100(sp)
    1294:	c628002c 	lwc1	$f8,44(s1)
    1298:	e7a80068 	swc1	$f8,104(sp)
    129c:	8e270080 	lw	a3,128(s1)
    12a0:	0c000000 	jal	0 <func_809D35B0>
    12a4:	afb80010 	sw	t8,16(sp)
    12a8:	3c0141f0 	lui	at,0x41f0
    12ac:	44812000 	mtc1	at,$f4
    12b0:	c6260028 	lwc1	$f6,40(s1)
    12b4:	3c014248 	lui	at,0x4248
    12b8:	44819000 	mtc1	at,$f18
    12bc:	46043280 	add.s	$f10,$f6,$f4
    12c0:	8fa400cc 	lw	a0,204(sp)
    12c4:	27a50060 	addiu	a1,sp,96
    12c8:	3c064040 	lui	a2,0x4040
    12cc:	46125201 	sub.s	$f8,$f10,$f18
    12d0:	0c000000 	jal	0 <func_809D35B0>
    12d4:	e7a80064 	swc1	$f8,100(sp)
    12d8:	c6260028 	lwc1	$f6,40(s1)
    12dc:	00008025 	move	s0,zero
    12e0:	e7a60064 	swc1	$f6,100(sp)
    12e4:	44902000 	mtc1	s0,$f4
    12e8:	3c010000 	lui	at,0x0
    12ec:	c42a0000 	lwc1	$f10,0(at)
    12f0:	46802020 	cvt.s.w	$f0,$f4
    12f4:	460a0302 	mul.s	$f12,$f0,$f10
    12f8:	e7a0003c 	swc1	$f0,60(sp)
    12fc:	0c000000 	jal	0 <func_809D35B0>
    1300:	e7ac0038 	swc1	$f12,56(sp)
    1304:	c7b2003c 	lwc1	$f18,60(sp)
    1308:	3c010000 	lui	at,0x0
    130c:	c4260000 	lwc1	$f6,0(at)
    1310:	46120202 	mul.s	$f8,$f0,$f18
    1314:	c7ac0038 	lwc1	$f12,56(sp)
    1318:	46064102 	mul.s	$f4,$f8,$f6
    131c:	0c000000 	jal	0 <func_809D35B0>
    1320:	e7a40054 	swc1	$f4,84(sp)
    1324:	c7aa003c 	lwc1	$f10,60(sp)
    1328:	3c010000 	lui	at,0x0
    132c:	c4280000 	lwc1	$f8,0(at)
    1330:	460a0482 	mul.s	$f18,$f0,$f10
    1334:	3c0140c0 	lui	at,0x40c0
    1338:	44816000 	mtc1	at,$f12
    133c:	46089182 	mul.s	$f6,$f18,$f8
    1340:	0c000000 	jal	0 <func_809D35B0>
    1344:	e7a6005c 	swc1	$f6,92(sp)
    1348:	3c0140a0 	lui	at,0x40a0
    134c:	44812000 	mtc1	at,$f4
    1350:	3c013f00 	lui	at,0x3f00
    1354:	44816000 	mtc1	at,$f12
    1358:	46040280 	add.s	$f10,$f0,$f4
    135c:	0c000000 	jal	0 <func_809D35B0>
    1360:	e7aa0058 	swc1	$f10,88(sp)
    1364:	c7b20054 	lwc1	$f18,84(sp)
    1368:	3c013f00 	lui	at,0x3f00
    136c:	44816000 	mtc1	at,$f12
    1370:	46009200 	add.s	$f8,$f18,$f0
    1374:	0c000000 	jal	0 <func_809D35B0>
    1378:	e7a80054 	swc1	$f8,84(sp)
    137c:	c7a6005c 	lwc1	$f6,92(sp)
    1380:	3c01bf80 	lui	at,0xbf80
    1384:	44801000 	mtc1	zero,$f2
    1388:	46003100 	add.s	$f4,$f6,$f0
    138c:	44815000 	mtc1	at,$f10
    1390:	3c010000 	lui	at,0x0
    1394:	c42c0000 	lwc1	$f12,0(at)
    1398:	e7a4005c 	swc1	$f4,92(sp)
    139c:	e7a20048 	swc1	$f2,72(sp)
    13a0:	e7a20050 	swc1	$f2,80(sp)
    13a4:	0c000000 	jal	0 <func_809D35B0>
    13a8:	e7aa004c 	swc1	$f10,76(sp)
    13ac:	3c010000 	lui	at,0x0
    13b0:	c4320000 	lwc1	$f18,0(at)
    13b4:	8fa400cc 	lw	a0,204(sp)
    13b8:	27a50060 	addiu	a1,sp,96
    13bc:	46120200 	add.s	$f8,$f0,$f18
    13c0:	27a60054 	addiu	a2,sp,84
    13c4:	27a70048 	addiu	a3,sp,72
    13c8:	e7a80010 	swc1	$f8,16(sp)
    13cc:	c6260080 	lwc1	$f6,128(s1)
    13d0:	0c000000 	jal	0 <func_809D35B0>
    13d4:	e7a60014 	swc1	$f6,20(sp)
    13d8:	26100001 	addiu	s0,s0,1
    13dc:	00108400 	sll	s0,s0,0x10
    13e0:	00108403 	sra	s0,s0,0x10
    13e4:	2a01000f 	slti	at,s0,15
    13e8:	5420ffbf 	bnezl	at,12e8 <EnClearTag_Update+0xc60>
    13ec:	44902000 	mtc1	s0,$f4
    13f0:	9222014d 	lbu	v0,333(s1)
    13f4:	24010002 	li	at,2
    13f8:	50400011 	beqzl	v0,1440 <EnClearTag_Update+0xdb8>
    13fc:	8fbf0034 	lw	ra,52(sp)
    1400:	1441000c 	bne	v0,at,1434 <EnClearTag_Update+0xdac>
    1404:	00000000 	nop
    1408:	86230186 	lh	v1,390(s1)
    140c:	14600003 	bnez	v1,141c <EnClearTag_Update+0xd94>
    1410:	2479ffff 	addiu	t9,v1,-1
    1414:	10000003 	b	1424 <EnClearTag_Update+0xd9c>
    1418:	00001025 	move	v0,zero
    141c:	a6390186 	sh	t9,390(s1)
    1420:	86220186 	lh	v0,390(s1)
    1424:	14400003 	bnez	v0,1434 <EnClearTag_Update+0xdac>
    1428:	00000000 	nop
    142c:	0c000000 	jal	0 <func_809D35B0>
    1430:	02202025 	move	a0,s1
    1434:	0c000000 	jal	0 <func_809D35B0>
    1438:	8fa400cc 	lw	a0,204(sp)
    143c:	8fbf0034 	lw	ra,52(sp)
    1440:	8fb0002c 	lw	s0,44(sp)
    1444:	8fb10030 	lw	s1,48(sp)
    1448:	03e00008 	jr	ra
    144c:	27bd00c8 	addiu	sp,sp,200

00001450 <EnClearTag_Draw>:
    1450:	27bdff60 	addiu	sp,sp,-160
    1454:	afbf001c 	sw	ra,28(sp)
    1458:	afb10018 	sw	s1,24(sp)
    145c:	afb00014 	sw	s0,20(sp)
    1460:	afa500a4 	sw	a1,164(sp)
    1464:	8ca50000 	lw	a1,0(a1)
    1468:	00808825 	move	s1,a0
    146c:	3c060000 	lui	a2,0x0
    1470:	24c60000 	addiu	a2,a2,0
    1474:	27a40084 	addiu	a0,sp,132
    1478:	240703d7 	li	a3,983
    147c:	0c000000 	jal	0 <func_809D35B0>
    1480:	00a08025 	move	s0,a1
    1484:	9224014d 	lbu	a0,333(s1)
    1488:	24010002 	li	at,2
    148c:	8faf00a4 	lw	t7,164(sp)
    1490:	10810160 	beq	a0,at,1a14 <EnClearTag_Draw+0x5c4>
    1494:	00000000 	nop
    1498:	0c000000 	jal	0 <func_809D35B0>
    149c:	8de40000 	lw	a0,0(t7)
    14a0:	9238014e 	lbu	t8,334(s1)
    14a4:	8fac00a4 	lw	t4,164(sp)
    14a8:	2b010064 	slti	at,t8,100
    14ac:	14200047 	bnez	at,15cc <EnClearTag_Draw+0x17c>
    14b0:	00000000 	nop
    14b4:	8e0202d0 	lw	v0,720(s0)
    14b8:	44807000 	mtc1	zero,$f14
    14bc:	3c0a00ff 	lui	t2,0xff
    14c0:	3c0141c8 	lui	at,0x41c8
    14c4:	24590008 	addiu	t9,v0,8
    14c8:	ae1902d0 	sw	t9,720(s0)
    14cc:	354a00ff 	ori	t2,t2,0xff
    14d0:	3c09fa00 	lui	t1,0xfa00
    14d4:	44816000 	mtc1	at,$f12
    14d8:	44067000 	mfc1	a2,$f14
    14dc:	24070001 	li	a3,1
    14e0:	ac490000 	sw	t1,0(v0)
    14e4:	0c000000 	jal	0 <func_809D35B0>
    14e8:	ac4a0004 	sw	t2,4(v0)
    14ec:	8e0202d0 	lw	v0,720(s0)
    14f0:	3c0cda38 	lui	t4,0xda38
    14f4:	358c0003 	ori	t4,t4,0x3
    14f8:	244b0008 	addiu	t3,v0,8
    14fc:	ae0b02d0 	sw	t3,720(s0)
    1500:	ac4c0000 	sw	t4,0(v0)
    1504:	8fad00a4 	lw	t5,164(sp)
    1508:	3c050000 	lui	a1,0x0
    150c:	24a50000 	addiu	a1,a1,0
    1510:	8da40000 	lw	a0,0(t5)
    1514:	240603ec 	li	a2,1004
    1518:	0c000000 	jal	0 <func_809D35B0>
    151c:	afa2007c 	sw	v0,124(sp)
    1520:	8fa3007c 	lw	v1,124(sp)
    1524:	44807000 	mtc1	zero,$f14
    1528:	3c080000 	lui	t0,0x0
    152c:	ac620004 	sw	v0,4(v1)
    1530:	8e0202d0 	lw	v0,720(s0)
    1534:	25080000 	addiu	t0,t0,0
    1538:	3c0fde00 	lui	t7,0xde00
    153c:	244e0008 	addiu	t6,v0,8
    1540:	ae0e02d0 	sw	t6,720(s0)
    1544:	3c01c248 	lui	at,0xc248
    1548:	44816000 	mtc1	at,$f12
    154c:	44067000 	mfc1	a2,$f14
    1550:	ac480004 	sw	t0,4(v0)
    1554:	ac4f0000 	sw	t7,0(v0)
    1558:	afa80028 	sw	t0,40(sp)
    155c:	0c000000 	jal	0 <func_809D35B0>
    1560:	24070001 	li	a3,1
    1564:	8e0202d0 	lw	v0,720(s0)
    1568:	8fa80028 	lw	t0,40(sp)
    156c:	3c19da38 	lui	t9,0xda38
    1570:	24580008 	addiu	t8,v0,8
    1574:	ae1802d0 	sw	t8,720(s0)
    1578:	37390003 	ori	t9,t9,0x3
    157c:	ac590000 	sw	t9,0(v0)
    1580:	8fa900a4 	lw	t1,164(sp)
    1584:	3c050000 	lui	a1,0x0
    1588:	24a50000 	addiu	a1,a1,0
    158c:	8d240000 	lw	a0,0(t1)
    1590:	240603f3 	li	a2,1011
    1594:	afa20074 	sw	v0,116(sp)
    1598:	0c000000 	jal	0 <func_809D35B0>
    159c:	afa80028 	sw	t0,40(sp)
    15a0:	8fa30074 	lw	v1,116(sp)
    15a4:	8fa80028 	lw	t0,40(sp)
    15a8:	3c0bde00 	lui	t3,0xde00
    15ac:	ac620004 	sw	v0,4(v1)
    15b0:	8e0202d0 	lw	v0,720(s0)
    15b4:	244a0008 	addiu	t2,v0,8
    15b8:	ae0a02d0 	sw	t2,720(s0)
    15bc:	ac480004 	sw	t0,4(v0)
    15c0:	ac4b0000 	sw	t3,0(v0)
    15c4:	10000113 	b	1a14 <EnClearTag_Draw+0x5c4>
    15c8:	9224014d 	lbu	a0,333(s1)
    15cc:	0c000000 	jal	0 <func_809D35B0>
    15d0:	8d840000 	lw	a0,0(t4)
    15d4:	8e0202c0 	lw	v0,704(s0)
    15d8:	3c0efa00 	lui	t6,0xfa00
    15dc:	240fffff 	li	t7,-1
    15e0:	244d0008 	addiu	t5,v0,8
    15e4:	ae0d02c0 	sw	t5,704(s0)
    15e8:	ac4f0004 	sw	t7,4(v0)
    15ec:	ac4e0000 	sw	t6,0(v0)
    15f0:	86220184 	lh	v0,388(s1)
    15f4:	50400026 	beqzl	v0,1690 <EnClearTag_Draw+0x240>
    15f8:	c62c0180 	lwc1	$f12,384(s1)
    15fc:	44822000 	mtc1	v0,$f4
    1600:	3c010000 	lui	at,0x0
    1604:	c4280000 	lwc1	$f8,0(at)
    1608:	468021a0 	cvt.s.w	$f6,$f4
    160c:	46083282 	mul.s	$f10,$f6,$f8
    1610:	e7aa0060 	swc1	$f10,96(sp)
    1614:	9224017c 	lbu	a0,380(s1)
    1618:	00800821 	move	at,a0
    161c:	00042080 	sll	a0,a0,0x2
    1620:	00812023 	subu	a0,a0,at
    1624:	00042300 	sll	a0,a0,0xc
    1628:	00042400 	sll	a0,a0,0x10
    162c:	0c000000 	jal	0 <func_809D35B0>
    1630:	00042403 	sra	a0,a0,0x10
    1634:	c7b00060 	lwc1	$f16,96(sp)
    1638:	46100482 	mul.s	$f18,$f0,$f16
    163c:	e7b20068 	swc1	$f18,104(sp)
    1640:	9224017c 	lbu	a0,380(s1)
    1644:	00800821 	move	at,a0
    1648:	000420c0 	sll	a0,a0,0x3
    164c:	00812023 	subu	a0,a0,at
    1650:	000420c0 	sll	a0,a0,0x3
    1654:	00812023 	subu	a0,a0,at
    1658:	00042200 	sll	a0,a0,0x8
    165c:	00042400 	sll	a0,a0,0x10
    1660:	0c000000 	jal	0 <func_809D35B0>
    1664:	00042403 	sra	a0,a0,0x10
    1668:	c7a40060 	lwc1	$f4,96(sp)
    166c:	c7ac0068 	lwc1	$f12,104(sp)
    1670:	24050001 	li	a1,1
    1674:	46040182 	mul.s	$f6,$f0,$f4
    1678:	0c000000 	jal	0 <func_809D35B0>
    167c:	e7a60064 	swc1	$f6,100(sp)
    1680:	c7ac0064 	lwc1	$f12,100(sp)
    1684:	0c000000 	jal	0 <func_809D35B0>
    1688:	24050001 	li	a1,1
    168c:	c62c0180 	lwc1	$f12,384(s1)
    1690:	0c000000 	jal	0 <func_809D35B0>
    1694:	24050001 	li	a1,1
    1698:	8e0202c0 	lw	v0,704(s0)
    169c:	3c19da38 	lui	t9,0xda38
    16a0:	37390003 	ori	t9,t9,0x3
    16a4:	24580008 	addiu	t8,v0,8
    16a8:	ae1802c0 	sw	t8,704(s0)
    16ac:	ac590000 	sw	t9,0(v0)
    16b0:	8fa900a4 	lw	t1,164(sp)
    16b4:	3c050000 	lui	a1,0x0
    16b8:	24a50000 	addiu	a1,a1,0
    16bc:	8d240000 	lw	a0,0(t1)
    16c0:	24060406 	li	a2,1030
    16c4:	0c000000 	jal	0 <func_809D35B0>
    16c8:	afa2005c 	sw	v0,92(sp)
    16cc:	8fa3005c 	lw	v1,92(sp)
    16d0:	44806000 	mtc1	zero,$f12
    16d4:	3c0c0000 	lui	t4,0x0
    16d8:	ac620004 	sw	v0,4(v1)
    16dc:	8e0202c0 	lw	v0,704(s0)
    16e0:	258c0000 	addiu	t4,t4,0
    16e4:	3c0bde00 	lui	t3,0xde00
    16e8:	244a0008 	addiu	t2,v0,8
    16ec:	ae0a02c0 	sw	t2,704(s0)
    16f0:	3c06c270 	lui	a2,0xc270
    16f4:	24070001 	li	a3,1
    16f8:	46006386 	mov.s	$f14,$f12
    16fc:	ac4c0004 	sw	t4,4(v0)
    1700:	0c000000 	jal	0 <func_809D35B0>
    1704:	ac4b0000 	sw	t3,0(v0)
    1708:	8fa400a4 	lw	a0,164(sp)
    170c:	3c010001 	lui	at,0x1
    1710:	34211da0 	ori	at,at,0x1da0
    1714:	0c000000 	jal	0 <func_809D35B0>
    1718:	00812021 	addu	a0,a0,at
    171c:	3c014020 	lui	at,0x4020
    1720:	44816000 	mtc1	at,$f12
    1724:	3c010000 	lui	at,0x0
    1728:	c42e0000 	lwc1	$f14,0(at)
    172c:	24060000 	li	a2,0
    1730:	0c000000 	jal	0 <func_809D35B0>
    1734:	24070001 	li	a3,1
    1738:	922d017c 	lbu	t5,380(s1)
    173c:	31ae0001 	andi	t6,t5,0x1
    1740:	11c00006 	beqz	t6,175c <EnClearTag_Draw+0x30c>
    1744:	3c010000 	lui	at,0x0
    1748:	c42c0000 	lwc1	$f12,0(at)
    174c:	24070001 	li	a3,1
    1750:	44066000 	mfc1	a2,$f12
    1754:	0c000000 	jal	0 <func_809D35B0>
    1758:	46006386 	mov.s	$f14,$f12
    175c:	8e0202d0 	lw	v0,720(s0)
    1760:	3c18fa00 	lui	t8,0xfa00
    1764:	2419c89b 	li	t9,-14181
    1768:	244f0008 	addiu	t7,v0,8
    176c:	ae0f02d0 	sw	t7,720(s0)
    1770:	ac580000 	sw	t8,0(v0)
    1774:	ac590004 	sw	t9,4(v0)
    1778:	8e0202d0 	lw	v0,720(s0)
    177c:	3c0ae700 	lui	t2,0xe700
    1780:	3c0cfb00 	lui	t4,0xfb00
    1784:	24490008 	addiu	t1,v0,8
    1788:	ae0902d0 	sw	t1,720(s0)
    178c:	ac4a0000 	sw	t2,0(v0)
    1790:	ac400004 	sw	zero,4(v0)
    1794:	8e0202d0 	lw	v0,720(s0)
    1798:	3c0dff32 	lui	t5,0xff32
    179c:	3c0fda38 	lui	t7,0xda38
    17a0:	244b0008 	addiu	t3,v0,8
    17a4:	ae0b02d0 	sw	t3,720(s0)
    17a8:	ac4c0000 	sw	t4,0(v0)
    17ac:	ac4d0004 	sw	t5,4(v0)
    17b0:	8e0202d0 	lw	v0,720(s0)
    17b4:	35ef0003 	ori	t7,t7,0x3
    17b8:	3c050000 	lui	a1,0x0
    17bc:	244e0008 	addiu	t6,v0,8
    17c0:	ae0e02d0 	sw	t6,720(s0)
    17c4:	ac4f0000 	sw	t7,0(v0)
    17c8:	8fb800a4 	lw	t8,164(sp)
    17cc:	24a50000 	addiu	a1,a1,0
    17d0:	2406042b 	li	a2,1067
    17d4:	8f040000 	lw	a0,0(t8)
    17d8:	0c000000 	jal	0 <func_809D35B0>
    17dc:	afa20048 	sw	v0,72(sp)
    17e0:	8fa30048 	lw	v1,72(sp)
    17e4:	3c0a0000 	lui	t2,0x0
    17e8:	254a0000 	addiu	t2,t2,0
    17ec:	ac620004 	sw	v0,4(v1)
    17f0:	8e0202d0 	lw	v0,720(s0)
    17f4:	3c09de00 	lui	t1,0xde00
    17f8:	3c0cfa00 	lui	t4,0xfa00
    17fc:	24590008 	addiu	t9,v0,8
    1800:	ae1902d0 	sw	t9,720(s0)
    1804:	ac4a0004 	sw	t2,4(v0)
    1808:	ac490000 	sw	t1,0(v0)
    180c:	8e0202d0 	lw	v0,720(s0)
    1810:	240d0082 	li	t5,130
    1814:	00003825 	move	a3,zero
    1818:	244b0008 	addiu	t3,v0,8
    181c:	ae0b02d0 	sw	t3,720(s0)
    1820:	ac4d0004 	sw	t5,4(v0)
    1824:	ac4c0000 	sw	t4,0(v0)
    1828:	8e26002c 	lw	a2,44(s1)
    182c:	c62e0080 	lwc1	$f14,128(s1)
    1830:	0c000000 	jal	0 <func_809D35B0>
    1834:	c62c0024 	lwc1	$f12,36(s1)
    1838:	c62c0188 	lwc1	$f12,392(s1)
    183c:	0c000000 	jal	0 <func_809D35B0>
    1840:	24050001 	li	a1,1
    1844:	c62c0190 	lwc1	$f12,400(s1)
    1848:	0c000000 	jal	0 <func_809D35B0>
    184c:	24050001 	li	a1,1
    1850:	3c010000 	lui	at,0x0
    1854:	c4200000 	lwc1	$f0,0(at)
    1858:	c62a0058 	lwc1	$f10,88(s1)
    185c:	c6280050 	lwc1	$f8,80(s1)
    1860:	44807000 	mtc1	zero,$f14
    1864:	46005400 	add.s	$f16,$f10,$f0
    1868:	24070001 	li	a3,1
    186c:	46004300 	add.s	$f12,$f8,$f0
    1870:	44068000 	mfc1	a2,$f16
    1874:	0c000000 	jal	0 <func_809D35B0>
    1878:	00000000 	nop
    187c:	862e00b6 	lh	t6,182(s1)
    1880:	3c014700 	lui	at,0x4700
    1884:	44813000 	mtc1	at,$f6
    1888:	448e9000 	mtc1	t6,$f18
    188c:	3c010000 	lui	at,0x0
    1890:	c42a0000 	lwc1	$f10,0(at)
    1894:	46809120 	cvt.s.w	$f4,$f18
    1898:	24050001 	li	a1,1
    189c:	46062203 	div.s	$f8,$f4,$f6
    18a0:	460a4302 	mul.s	$f12,$f8,$f10
    18a4:	0c000000 	jal	0 <func_809D35B0>
    18a8:	00000000 	nop
    18ac:	862f00b4 	lh	t7,180(s1)
    18b0:	3c014700 	lui	at,0x4700
    18b4:	44812000 	mtc1	at,$f4
    18b8:	448f8000 	mtc1	t7,$f16
    18bc:	3c010000 	lui	at,0x0
    18c0:	c4280000 	lwc1	$f8,0(at)
    18c4:	468084a0 	cvt.s.w	$f18,$f16
    18c8:	24050001 	li	a1,1
    18cc:	46049183 	div.s	$f6,$f18,$f4
    18d0:	46083302 	mul.s	$f12,$f6,$f8
    18d4:	0c000000 	jal	0 <func_809D35B0>
    18d8:	00000000 	nop
    18dc:	863800b8 	lh	t8,184(s1)
    18e0:	3c014700 	lui	at,0x4700
    18e4:	44819000 	mtc1	at,$f18
    18e8:	44985000 	mtc1	t8,$f10
    18ec:	3c010000 	lui	at,0x0
    18f0:	c4260000 	lwc1	$f6,0(at)
    18f4:	46805420 	cvt.s.w	$f16,$f10
    18f8:	24050001 	li	a1,1
    18fc:	46128103 	div.s	$f4,$f16,$f18
    1900:	46062302 	mul.s	$f12,$f4,$f6
    1904:	0c000000 	jal	0 <func_809D35B0>
    1908:	00000000 	nop
    190c:	86220184 	lh	v0,388(s1)
    1910:	50400026 	beqzl	v0,19ac <EnClearTag_Draw+0x55c>
    1914:	c62c0180 	lwc1	$f12,384(s1)
    1918:	44824000 	mtc1	v0,$f8
    191c:	3c010000 	lui	at,0x0
    1920:	c4300000 	lwc1	$f16,0(at)
    1924:	468042a0 	cvt.s.w	$f10,$f8
    1928:	46105482 	mul.s	$f18,$f10,$f16
    192c:	e7b20034 	swc1	$f18,52(sp)
    1930:	9224017c 	lbu	a0,380(s1)
    1934:	00800821 	move	at,a0
    1938:	00042080 	sll	a0,a0,0x2
    193c:	00812023 	subu	a0,a0,at
    1940:	00042300 	sll	a0,a0,0xc
    1944:	00042400 	sll	a0,a0,0x10
    1948:	0c000000 	jal	0 <func_809D35B0>
    194c:	00042403 	sra	a0,a0,0x10
    1950:	c7a40034 	lwc1	$f4,52(sp)
    1954:	46040182 	mul.s	$f6,$f0,$f4
    1958:	e7a6003c 	swc1	$f6,60(sp)
    195c:	9224017c 	lbu	a0,380(s1)
    1960:	00800821 	move	at,a0
    1964:	000420c0 	sll	a0,a0,0x3
    1968:	00812023 	subu	a0,a0,at
    196c:	000420c0 	sll	a0,a0,0x3
    1970:	00812023 	subu	a0,a0,at
    1974:	00042200 	sll	a0,a0,0x8
    1978:	00042400 	sll	a0,a0,0x10
    197c:	0c000000 	jal	0 <func_809D35B0>
    1980:	00042403 	sra	a0,a0,0x10
    1984:	c7a80034 	lwc1	$f8,52(sp)
    1988:	c7ac003c 	lwc1	$f12,60(sp)
    198c:	24050001 	li	a1,1
    1990:	46080282 	mul.s	$f10,$f0,$f8
    1994:	0c000000 	jal	0 <func_809D35B0>
    1998:	e7aa0038 	swc1	$f10,56(sp)
    199c:	c7ac0038 	lwc1	$f12,56(sp)
    19a0:	0c000000 	jal	0 <func_809D35B0>
    19a4:	24050001 	li	a1,1
    19a8:	c62c0180 	lwc1	$f12,384(s1)
    19ac:	0c000000 	jal	0 <func_809D35B0>
    19b0:	24050001 	li	a1,1
    19b4:	8e0202d0 	lw	v0,720(s0)
    19b8:	3c09da38 	lui	t1,0xda38
    19bc:	35290003 	ori	t1,t1,0x3
    19c0:	24590008 	addiu	t9,v0,8
    19c4:	ae1902d0 	sw	t9,720(s0)
    19c8:	ac490000 	sw	t1,0(v0)
    19cc:	8faa00a4 	lw	t2,164(sp)
    19d0:	3c050000 	lui	a1,0x0
    19d4:	24a50000 	addiu	a1,a1,0
    19d8:	8d440000 	lw	a0,0(t2)
    19dc:	24060450 	li	a2,1104
    19e0:	0c000000 	jal	0 <func_809D35B0>
    19e4:	afa20030 	sw	v0,48(sp)
    19e8:	8fa30030 	lw	v1,48(sp)
    19ec:	3c0d0000 	lui	t5,0x0
    19f0:	25ad0000 	addiu	t5,t5,0
    19f4:	ac620004 	sw	v0,4(v1)
    19f8:	8e0202d0 	lw	v0,720(s0)
    19fc:	3c0cde00 	lui	t4,0xde00
    1a00:	244b0008 	addiu	t3,v0,8
    1a04:	ae0b02d0 	sw	t3,720(s0)
    1a08:	ac4d0004 	sw	t5,4(v0)
    1a0c:	ac4c0000 	sw	t4,0(v0)
    1a10:	9224014d 	lbu	a0,333(s1)
    1a14:	50800004 	beqzl	a0,1a28 <EnClearTag_Draw+0x5d8>
    1a18:	8fae00a4 	lw	t6,164(sp)
    1a1c:	0c000000 	jal	0 <func_809D35B0>
    1a20:	8fa400a4 	lw	a0,164(sp)
    1a24:	8fae00a4 	lw	t6,164(sp)
    1a28:	3c060000 	lui	a2,0x0
    1a2c:	24c60000 	addiu	a2,a2,0
    1a30:	27a40084 	addiu	a0,sp,132
    1a34:	2407045f 	li	a3,1119
    1a38:	0c000000 	jal	0 <func_809D35B0>
    1a3c:	8dc50000 	lw	a1,0(t6)
    1a40:	8fbf001c 	lw	ra,28(sp)
    1a44:	8fb00014 	lw	s0,20(sp)
    1a48:	8fb10018 	lw	s1,24(sp)
    1a4c:	03e00008 	jr	ra
    1a50:	27bd00a0 	addiu	sp,sp,160

00001a54 <func_809D5004>:
    1a54:	27bdff80 	addiu	sp,sp,-128
    1a58:	f7bc0038 	sdc1	$f28,56(sp)
    1a5c:	3c014040 	lui	at,0x4040
    1a60:	4481e000 	mtc1	at,$f28
    1a64:	f7ba0030 	sdc1	$f26,48(sp)
    1a68:	3c0141cc 	lui	at,0x41cc
    1a6c:	4481d000 	mtc1	at,$f26
    1a70:	f7b80028 	sdc1	$f24,40(sp)
    1a74:	3c01c0a0 	lui	at,0xc0a0
    1a78:	afb00040 	sw	s0,64(sp)
    1a7c:	4481c000 	mtc1	at,$f24
    1a80:	afb40050 	sw	s4,80(sp)
    1a84:	afb3004c 	sw	s3,76(sp)
    1a88:	afb20048 	sw	s2,72(sp)
    1a8c:	afb10044 	sw	s1,68(sp)
    1a90:	f7b60020 	sdc1	$f22,32(sp)
    1a94:	f7b40018 	sdc1	$f20,24(sp)
    1a98:	3c100001 	lui	s0,0x1
    1a9c:	3c013f80 	lui	at,0x3f80
    1aa0:	afbf0054 	sw	ra,84(sp)
    1aa4:	02048021 	addu	s0,s0,a0
    1aa8:	4481b000 	mtc1	at,$f22
    1aac:	4480a000 	mtc1	zero,$f20
    1ab0:	0080a025 	move	s4,a0
    1ab4:	8e101e10 	lw	s0,7696(s0)
    1ab8:	00008825 	move	s1,zero
    1abc:	24120001 	li	s2,1
    1ac0:	27b30068 	addiu	s3,sp,104
    1ac4:	920e0000 	lbu	t6,0(s0)
    1ac8:	51c000c2 	beqzl	t6,1dd4 <func_809D5004+0x380>
    1acc:	26310001 	addiu	s1,s1,1
    1ad0:	c6120010 	lwc1	$f18,16(s0)
    1ad4:	c60e0004 	lwc1	$f14,4(s0)
    1ad8:	c6100008 	lwc1	$f16,8(s0)
    1adc:	c60c0014 	lwc1	$f12,20(s0)
    1ae0:	46127380 	add.s	$f14,$f14,$f18
    1ae4:	920f0001 	lbu	t7,1(s0)
    1ae8:	c60a0018 	lwc1	$f10,24(s0)
    1aec:	460c8200 	add.s	$f8,$f16,$f12
    1af0:	c606000c 	lwc1	$f6,12(s0)
    1af4:	c604001c 	lwc1	$f4,28(s0)
    1af8:	c6020020 	lwc1	$f2,32(s0)
    1afc:	460a3180 	add.s	$f6,$f6,$f10
    1b00:	c6000024 	lwc1	$f0,36(s0)
    1b04:	92020000 	lbu	v0,0(s0)
    1b08:	46049100 	add.s	$f4,$f18,$f4
    1b0c:	25f80001 	addiu	t8,t7,1
    1b10:	e60e0004 	swc1	$f14,4(s0)
    1b14:	46026080 	add.s	$f2,$f12,$f2
    1b18:	a2180001 	sb	t8,1(s0)
    1b1c:	e6080008 	swc1	$f8,8(s0)
    1b20:	46005000 	add.s	$f0,$f10,$f0
    1b24:	e606000c 	swc1	$f6,12(s0)
    1b28:	e6040010 	swc1	$f4,16(s0)
    1b2c:	e6020014 	swc1	$f2,20(s0)
    1b30:	16420058 	bne	s2,v0,1c94 <func_809D5004+0x240>
    1b34:	e6000018 	swc1	$f0,24(s0)
    1b38:	c6000014 	lwc1	$f0,20(s0)
    1b3c:	4618003c 	c.lt.s	$f0,$f24
    1b40:	00000000 	nop
    1b44:	45020004 	bc1fl	1b58 <func_809D5004+0x104>
    1b48:	4614003c 	c.lt.s	$f0,$f20
    1b4c:	e6180014 	swc1	$f24,20(s0)
    1b50:	c6000014 	lwc1	$f0,20(s0)
    1b54:	4614003c 	c.lt.s	$f0,$f20
    1b58:	00000000 	nop
    1b5c:	4502002c 	bc1fl	1c10 <func_809D5004+0x1bc>
    1b60:	c60a0020 	lwc1	$f10,32(s0)
    1b64:	8e080004 	lw	t0,4(s0)
    1b68:	3c0140a0 	lui	at,0x40a0
    1b6c:	44814000 	mtc1	at,$f8
    1b70:	ae680000 	sw	t0,0(s3)
    1b74:	8e190008 	lw	t9,8(s0)
    1b78:	268407c0 	addiu	a0,s4,1984
    1b7c:	02602825 	move	a1,s3
    1b80:	ae790004 	sw	t9,4(s3)
    1b84:	8e08000c 	lw	t0,12(s0)
    1b88:	3c064130 	lui	a2,0x4130
    1b8c:	ae680008 	sw	t0,8(s3)
    1b90:	c7a6006c 	lwc1	$f6,108(sp)
    1b94:	e7b00074 	swc1	$f16,116(sp)
    1b98:	46083280 	add.s	$f10,$f6,$f8
    1b9c:	0c000000 	jal	0 <func_809D35B0>
    1ba0:	e7aa006c 	swc1	$f10,108(sp)
    1ba4:	10400019 	beqz	v0,1c0c <func_809D5004+0x1b8>
    1ba8:	c7b00074 	lwc1	$f16,116(sp)
    1bac:	86020048 	lh	v0,72(s0)
    1bb0:	e6100008 	swc1	$f16,8(s0)
    1bb4:	3c01bf00 	lui	at,0xbf00
    1bb8:	5c400011 	bgtzl	v0,1c00 <func_809D5004+0x1ac>
    1bbc:	e6140014 	swc1	$f20,20(s0)
    1bc0:	c6120014 	lwc1	$f18,20(s0)
    1bc4:	44812000 	mtc1	at,$f4
    1bc8:	3c0141a0 	lui	at,0x41a0
    1bcc:	24490001 	addiu	t1,v0,1
    1bd0:	46049182 	mul.s	$f6,$f18,$f4
    1bd4:	44816000 	mtc1	at,$f12
    1bd8:	a6090048 	sh	t1,72(s0)
    1bdc:	0c000000 	jal	0 <func_809D35B0>
    1be0:	e6060014 	swc1	$f6,20(s0)
    1be4:	4600020d 	trunc.w.s	$f8,$f0
    1be8:	440d4000 	mfc1	t5,$f8
    1bec:	00000000 	nop
    1bf0:	25ae0019 	addiu	t6,t5,25
    1bf4:	10000005 	b	1c0c <func_809D5004+0x1b8>
    1bf8:	a60e004a 	sh	t6,74(s0)
    1bfc:	e6140014 	swc1	$f20,20(s0)
    1c00:	e6140020 	swc1	$f20,32(s0)
    1c04:	e6140018 	swc1	$f20,24(s0)
    1c08:	e6140010 	swc1	$f20,16(s0)
    1c0c:	c60a0020 	lwc1	$f10,32(s0)
    1c10:	3c013f00 	lui	at,0x3f00
    1c14:	460aa032 	c.eq.s	$f20,$f10
    1c18:	00000000 	nop
    1c1c:	4503000b 	bc1tl	1c4c <func_809D5004+0x1f8>
    1c20:	860f004a 	lh	t7,74(s0)
    1c24:	c6120054 	lwc1	$f18,84(s0)
    1c28:	44812000 	mtc1	at,$f4
    1c2c:	3c010000 	lui	at,0x0
    1c30:	c6080058 	lwc1	$f8,88(s0)
    1c34:	46049180 	add.s	$f6,$f18,$f4
    1c38:	e6060054 	swc1	$f6,84(s0)
    1c3c:	c42a0000 	lwc1	$f10,0(at)
    1c40:	460a4480 	add.s	$f18,$f8,$f10
    1c44:	e6120058 	swc1	$f18,88(s0)
    1c48:	860f004a 	lh	t7,74(s0)
    1c4c:	564f0003 	bnel	s2,t7,1c5c <func_809D5004+0x208>
    1c50:	92180001 	lbu	t8,1(s0)
    1c54:	a2000000 	sb	zero,0(s0)
    1c58:	92180001 	lbu	t8,1(s0)
    1c5c:	2b010003 	slti	at,t8,3
    1c60:	14200057 	bnez	at,1dc0 <func_809D5004+0x36c>
    1c64:	3c014100 	lui	at,0x4100
    1c68:	44813000 	mtc1	at,$f6
    1c6c:	c604004c 	lwc1	$f4,76(s0)
    1c70:	a2000001 	sb	zero,1(s0)
    1c74:	02802025 	move	a0,s4
    1c78:	46062202 	mul.s	$f8,$f4,$f6
    1c7c:	26050004 	addiu	a1,s0,4
    1c80:	44064000 	mfc1	a2,$f8
    1c84:	0c000000 	jal	0 <func_809D35B0>
    1c88:	00000000 	nop
    1c8c:	1000004d 	b	1dc4 <func_809D5004+0x370>
    1c90:	8602004a 	lh	v0,74(s0)
    1c94:	24010002 	li	at,2
    1c98:	1441000b 	bne	v0,at,1cc8 <func_809D5004+0x274>
    1c9c:	26040034 	addiu	a0,s0,52
    1ca0:	4405b000 	mfc1	a1,$f22
    1ca4:	0c000000 	jal	0 <func_809D35B0>
    1ca8:	3c064170 	lui	a2,0x4170
    1cac:	c60a0034 	lwc1	$f10,52(s0)
    1cb0:	4614503e 	c.le.s	$f10,$f20
    1cb4:	00000000 	nop
    1cb8:	45020042 	bc1fl	1dc4 <func_809D5004+0x370>
    1cbc:	8602004a 	lh	v0,74(s0)
    1cc0:	1000003f 	b	1dc0 <func_809D5004+0x36c>
    1cc4:	a2000000 	sb	zero,0(s0)
    1cc8:	24010003 	li	at,3
    1ccc:	1441002b 	bne	v0,at,1d7c <func_809D5004+0x328>
    1cd0:	26040028 	addiu	a0,s0,40
    1cd4:	4405b000 	mfc1	a1,$f22
    1cd8:	0c000000 	jal	0 <func_809D35B0>
    1cdc:	3c0641a0 	lui	a2,0x41a0
    1ce0:	4405b000 	mfc1	a1,$f22
    1ce4:	2604002c 	addiu	a0,s0,44
    1ce8:	0c000000 	jal	0 <func_809D35B0>
    1cec:	3c064000 	lui	a2,0x4000
    1cf0:	4405b000 	mfc1	a1,$f22
    1cf4:	4406d000 	mfc1	a2,$f26
    1cf8:	0c000000 	jal	0 <func_809D35B0>
    1cfc:	26040038 	addiu	a0,s0,56
    1d00:	4405b000 	mfc1	a1,$f22
    1d04:	2604003c 	addiu	a0,s0,60
    1d08:	0c000000 	jal	0 <func_809D35B0>
    1d0c:	3c0641ac 	lui	a2,0x41ac
    1d10:	4405b000 	mfc1	a1,$f22
    1d14:	4406d000 	mfc1	a2,$f26
    1d18:	0c000000 	jal	0 <func_809D35B0>
    1d1c:	26040040 	addiu	a0,s0,64
    1d20:	3c063d4c 	lui	a2,0x3d4c
    1d24:	3c073dcc 	lui	a3,0x3dcc
    1d28:	34e7cccd 	ori	a3,a3,0xcccd
    1d2c:	34c6cccd 	ori	a2,a2,0xcccd
    1d30:	2604004c 	addiu	a0,s0,76
    1d34:	0c000000 	jal	0 <func_809D35B0>
    1d38:	8e050050 	lw	a1,80(s0)
    1d3c:	c6120028 	lwc1	$f18,40(s0)
    1d40:	4612a032 	c.eq.s	$f20,$f18
    1d44:	00000000 	nop
    1d48:	4502001e 	bc1fl	1dc4 <func_809D5004+0x370>
    1d4c:	8602004a 	lh	v0,74(s0)
    1d50:	4405b000 	mfc1	a1,$f22
    1d54:	4406e000 	mfc1	a2,$f28
    1d58:	0c000000 	jal	0 <func_809D35B0>
    1d5c:	26040034 	addiu	a0,s0,52
    1d60:	c6040034 	lwc1	$f4,52(s0)
    1d64:	4614203e 	c.le.s	$f4,$f20
    1d68:	00000000 	nop
    1d6c:	45020015 	bc1fl	1dc4 <func_809D5004+0x370>
    1d70:	8602004a 	lh	v0,74(s0)
    1d74:	10000012 	b	1dc0 <func_809D5004+0x36c>
    1d78:	a2000000 	sb	zero,0(s0)
    1d7c:	24010004 	li	at,4
    1d80:	1441000f 	bne	v0,at,1dc0 <func_809D5004+0x36c>
    1d84:	2604004c 	addiu	a0,s0,76
    1d88:	4406b000 	mfc1	a2,$f22
    1d8c:	4407e000 	mfc1	a3,$f28
    1d90:	0c000000 	jal	0 <func_809D35B0>
    1d94:	8e050050 	lw	a1,80(s0)
    1d98:	4405b000 	mfc1	a1,$f22
    1d9c:	26040034 	addiu	a0,s0,52
    1da0:	0c000000 	jal	0 <func_809D35B0>
    1da4:	3c064120 	lui	a2,0x4120
    1da8:	c6060034 	lwc1	$f6,52(s0)
    1dac:	4614303e 	c.le.s	$f6,$f20
    1db0:	00000000 	nop
    1db4:	45020003 	bc1fl	1dc4 <func_809D5004+0x370>
    1db8:	8602004a 	lh	v0,74(s0)
    1dbc:	a2000000 	sb	zero,0(s0)
    1dc0:	8602004a 	lh	v0,74(s0)
    1dc4:	10400002 	beqz	v0,1dd0 <func_809D5004+0x37c>
    1dc8:	2459ffff 	addiu	t9,v0,-1
    1dcc:	a619004a 	sh	t9,74(s0)
    1dd0:	26310001 	addiu	s1,s1,1
    1dd4:	00118c00 	sll	s1,s1,0x10
    1dd8:	00118c03 	sra	s1,s1,0x10
    1ddc:	2a210064 	slti	at,s1,100
    1de0:	1420ff38 	bnez	at,1ac4 <func_809D5004+0x70>
    1de4:	2610006c 	addiu	s0,s0,108
    1de8:	8fbf0054 	lw	ra,84(sp)
    1dec:	d7b40018 	ldc1	$f20,24(sp)
    1df0:	d7b60020 	ldc1	$f22,32(sp)
    1df4:	d7b80028 	ldc1	$f24,40(sp)
    1df8:	d7ba0030 	ldc1	$f26,48(sp)
    1dfc:	d7bc0038 	ldc1	$f28,56(sp)
    1e00:	8fb00040 	lw	s0,64(sp)
    1e04:	8fb10044 	lw	s1,68(sp)
    1e08:	8fb20048 	lw	s2,72(sp)
    1e0c:	8fb3004c 	lw	s3,76(sp)
    1e10:	8fb40050 	lw	s4,80(sp)
    1e14:	03e00008 	jr	ra
    1e18:	27bd0080 	addiu	sp,sp,128

00001e1c <func_809D53CC>:
    1e1c:	27bdfef0 	addiu	sp,sp,-272
    1e20:	afb1004c 	sw	s1,76(sp)
    1e24:	afbf006c 	sw	ra,108(sp)
    1e28:	afbe0068 	sw	s8,104(sp)
    1e2c:	afb70064 	sw	s7,100(sp)
    1e30:	afb60060 	sw	s6,96(sp)
    1e34:	afb5005c 	sw	s5,92(sp)
    1e38:	afb40058 	sw	s4,88(sp)
    1e3c:	afb30054 	sw	s3,84(sp)
    1e40:	afb20050 	sw	s2,80(sp)
    1e44:	afb00048 	sw	s0,72(sp)
    1e48:	f7b60040 	sdc1	$f22,64(sp)
    1e4c:	f7b40038 	sdc1	$f20,56(sp)
    1e50:	3c110001 	lui	s1,0x1
    1e54:	02248821 	addu	s1,s1,a0
    1e58:	8c900000 	lw	s0,0(a0)
    1e5c:	8e311e10 	lw	s1,7696(s1)
    1e60:	0080b825 	move	s7,a0
    1e64:	3c060000 	lui	a2,0x0
    1e68:	00009825 	move	s3,zero
    1e6c:	24c60000 	addiu	a2,a2,0
    1e70:	27a400e8 	addiu	a0,sp,232
    1e74:	24070508 	li	a3,1288
    1e78:	02002825 	move	a1,s0
    1e7c:	0c000000 	jal	0 <func_809D35B0>
    1e80:	afb100fc 	sw	s1,252(sp)
    1e84:	0c000000 	jal	0 <func_809D35B0>
    1e88:	8ee40000 	lw	a0,0(s7)
    1e8c:	0c000000 	jal	0 <func_809D35B0>
    1e90:	8ee40000 	lw	a0,0(s7)
    1e94:	3c1eda38 	lui	s8,0xda38
    1e98:	37de0003 	ori	s8,s8,0x3
    1e9c:	00009025 	move	s2,zero
    1ea0:	3c16de00 	lui	s6,0xde00
    1ea4:	24150001 	li	s5,1
    1ea8:	922e0000 	lbu	t6,0(s1)
    1eac:	3c140000 	lui	s4,0x0
    1eb0:	00003825 	move	a3,zero
    1eb4:	56ae002e 	bnel	s5,t6,1f70 <func_809D53CC+0x154>
    1eb8:	26520001 	addiu	s2,s2,1
    1ebc:	1660000a 	bnez	s3,1ee8 <func_809D53CC+0xcc>
    1ec0:	26940000 	addiu	s4,s4,0
    1ec4:	8e0202c0 	lw	v0,704(s0)
    1ec8:	3c040000 	lui	a0,0x0
    1ecc:	26730001 	addiu	s3,s3,1
    1ed0:	244f0008 	addiu	t7,v0,8
    1ed4:	ae0f02c0 	sw	t7,704(s0)
    1ed8:	24840000 	addiu	a0,a0,0
    1edc:	327300ff 	andi	s3,s3,0xff
    1ee0:	ac440004 	sw	a0,4(v0)
    1ee4:	ac560000 	sw	s6,0(v0)
    1ee8:	c62c0004 	lwc1	$f12,4(s1)
    1eec:	c62e0008 	lwc1	$f14,8(s1)
    1ef0:	0c000000 	jal	0 <func_809D35B0>
    1ef4:	8e26000c 	lw	a2,12(s1)
    1ef8:	c634004c 	lwc1	$f20,76(s1)
    1efc:	24070001 	li	a3,1
    1f00:	4406a000 	mfc1	a2,$f20
    1f04:	4600a306 	mov.s	$f12,$f20
    1f08:	0c000000 	jal	0 <func_809D35B0>
    1f0c:	4600a386 	mov.s	$f14,$f20
    1f10:	c62c0054 	lwc1	$f12,84(s1)
    1f14:	0c000000 	jal	0 <func_809D35B0>
    1f18:	24050001 	li	a1,1
    1f1c:	c62c0058 	lwc1	$f12,88(s1)
    1f20:	0c000000 	jal	0 <func_809D35B0>
    1f24:	24050001 	li	a1,1
    1f28:	8e0202c0 	lw	v0,704(s0)
    1f2c:	3c050000 	lui	a1,0x0
    1f30:	24a50000 	addiu	a1,a1,0
    1f34:	24580008 	addiu	t8,v0,8
    1f38:	ae1802c0 	sw	t8,704(s0)
    1f3c:	ac5e0000 	sw	s8,0(v0)
    1f40:	02002025 	move	a0,s0
    1f44:	2406051b 	li	a2,1307
    1f48:	0c000000 	jal	0 <func_809D35B0>
    1f4c:	afa200e0 	sw	v0,224(sp)
    1f50:	8fa300e0 	lw	v1,224(sp)
    1f54:	ac620004 	sw	v0,4(v1)
    1f58:	8e0202c0 	lw	v0,704(s0)
    1f5c:	24590008 	addiu	t9,v0,8
    1f60:	ae1902c0 	sw	t9,704(s0)
    1f64:	ac540004 	sw	s4,4(v0)
    1f68:	ac560000 	sw	s6,0(v0)
    1f6c:	26520001 	addiu	s2,s2,1
    1f70:	00129400 	sll	s2,s2,0x10
    1f74:	00129403 	sra	s2,s2,0x10
    1f78:	2a410064 	slti	at,s2,100
    1f7c:	1420ffca 	bnez	at,1ea8 <func_809D53CC+0x8c>
    1f80:	2631006c 	addiu	s1,s1,108
    1f84:	3c013f80 	lui	at,0x3f80
    1f88:	3c150000 	lui	s5,0x0
    1f8c:	4481b000 	mtc1	at,$f22
    1f90:	00009825 	move	s3,zero
    1f94:	8fb100fc 	lw	s1,252(sp)
    1f98:	26b50000 	addiu	s5,s5,0
    1f9c:	00009025 	move	s2,zero
    1fa0:	92280000 	lbu	t0,0(s1)
    1fa4:	24010004 	li	at,4
    1fa8:	3c140000 	lui	s4,0x0
    1fac:	55010042 	bnel	t0,at,20b8 <func_809D53CC+0x29c>
    1fb0:	26520001 	addiu	s2,s2,1
    1fb4:	16600010 	bnez	s3,1ff8 <func_809D53CC+0x1dc>
    1fb8:	26940000 	addiu	s4,s4,0
    1fbc:	8e0202d0 	lw	v0,720(s0)
    1fc0:	3c0ae700 	lui	t2,0xe700
    1fc4:	3c0cfb00 	lui	t4,0xfb00
    1fc8:	24490008 	addiu	t1,v0,8
    1fcc:	ae0902d0 	sw	t1,720(s0)
    1fd0:	ac400004 	sw	zero,4(v0)
    1fd4:	ac4a0000 	sw	t2,0(v0)
    1fd8:	8e0202d0 	lw	v0,720(s0)
    1fdc:	240dc800 	li	t5,-14336
    1fe0:	26730001 	addiu	s3,s3,1
    1fe4:	244b0008 	addiu	t3,v0,8
    1fe8:	ae0b02d0 	sw	t3,720(s0)
    1fec:	327300ff 	andi	s3,s3,0xff
    1ff0:	ac4d0004 	sw	t5,4(v0)
    1ff4:	ac4c0000 	sw	t4,0(v0)
    1ff8:	8e0202d0 	lw	v0,720(s0)
    1ffc:	3c0ffa00 	lui	t7,0xfa00
    2000:	2401c800 	li	at,-14336
    2004:	244e0008 	addiu	t6,v0,8
    2008:	ae0e02d0 	sw	t6,720(s0)
    200c:	ac4f0000 	sw	t7,0(v0)
    2010:	c6240034 	lwc1	$f4,52(s1)
    2014:	00003825 	move	a3,zero
    2018:	4600218d 	trunc.w.s	$f6,$f4
    201c:	44093000 	mfc1	t1,$f6
    2020:	00000000 	nop
    2024:	312a00ff 	andi	t2,t1,0xff
    2028:	01415825 	or	t3,t2,at
    202c:	ac4b0004 	sw	t3,4(v0)
    2030:	8e26000c 	lw	a2,12(s1)
    2034:	c62e005c 	lwc1	$f14,92(s1)
    2038:	0c000000 	jal	0 <func_809D35B0>
    203c:	c62c0004 	lwc1	$f12,4(s1)
    2040:	c62c0060 	lwc1	$f12,96(s1)
    2044:	0c000000 	jal	0 <func_809D35B0>
    2048:	24050001 	li	a1,1
    204c:	c62c0068 	lwc1	$f12,104(s1)
    2050:	0c000000 	jal	0 <func_809D35B0>
    2054:	24050001 	li	a1,1
    2058:	c634004c 	lwc1	$f20,76(s1)
    205c:	4600b386 	mov.s	$f14,$f22
    2060:	24070001 	li	a3,1
    2064:	4614a300 	add.s	$f12,$f20,$f20
    2068:	44066000 	mfc1	a2,$f12
    206c:	0c000000 	jal	0 <func_809D35B0>
    2070:	00000000 	nop
    2074:	8e0202d0 	lw	v0,720(s0)
    2078:	02002025 	move	a0,s0
    207c:	02a02825 	move	a1,s5
    2080:	244c0008 	addiu	t4,v0,8
    2084:	ae0c02d0 	sw	t4,720(s0)
    2088:	ac5e0000 	sw	s8,0(v0)
    208c:	2406053e 	li	a2,1342
    2090:	0c000000 	jal	0 <func_809D35B0>
    2094:	afa200cc 	sw	v0,204(sp)
    2098:	8fa300cc 	lw	v1,204(sp)
    209c:	ac620004 	sw	v0,4(v1)
    20a0:	8e0202d0 	lw	v0,720(s0)
    20a4:	244d0008 	addiu	t5,v0,8
    20a8:	ae0d02d0 	sw	t5,720(s0)
    20ac:	ac540004 	sw	s4,4(v0)
    20b0:	ac560000 	sw	s6,0(v0)
    20b4:	26520001 	addiu	s2,s2,1
    20b8:	00129400 	sll	s2,s2,0x10
    20bc:	00129403 	sra	s2,s2,0x10
    20c0:	2a410064 	slti	at,s2,100
    20c4:	1420ffb6 	bnez	at,1fa0 <func_809D53CC+0x184>
    20c8:	2631006c 	addiu	s1,s1,108
    20cc:	00009825 	move	s3,zero
    20d0:	8fb100fc 	lw	s1,252(sp)
    20d4:	00009025 	move	s2,zero
    20d8:	922e0000 	lbu	t6,0(s1)
    20dc:	24010003 	li	at,3
    20e0:	3c150000 	lui	s5,0x0
    20e4:	15c10087 	bne	t6,at,2304 <func_809D53CC+0x4e8>
    20e8:	26b50000 	addiu	s5,s5,0
    20ec:	3c010001 	lui	at,0x1
    20f0:	34211da0 	ori	at,at,0x1da0
    20f4:	1660000a 	bnez	s3,2120 <func_809D53CC+0x304>
    20f8:	02e1a021 	addu	s4,s7,at
    20fc:	8e0202d0 	lw	v0,720(s0)
    2100:	3c040000 	lui	a0,0x0
    2104:	24840000 	addiu	a0,a0,0
    2108:	244f0008 	addiu	t7,v0,8
    210c:	ae0f02d0 	sw	t7,720(s0)
    2110:	26730001 	addiu	s3,s3,1
    2114:	327300ff 	andi	s3,s3,0xff
    2118:	ac440004 	sw	a0,4(v0)
    211c:	ac560000 	sw	s6,0(v0)
    2120:	8e0202d0 	lw	v0,720(s0)
    2124:	3c19e700 	lui	t9,0xe700
    2128:	3c09fb00 	lui	t1,0xfb00
    212c:	24580008 	addiu	t8,v0,8
    2130:	ae1802d0 	sw	t8,720(s0)
    2134:	ac590000 	sw	t9,0(v0)
    2138:	ac400004 	sw	zero,4(v0)
    213c:	8e0202d0 	lw	v0,720(s0)
    2140:	3c0dfa00 	lui	t5,0xfa00
    2144:	00002825 	move	a1,zero
    2148:	24480008 	addiu	t0,v0,8
    214c:	ae0802d0 	sw	t0,720(s0)
    2150:	ac490000 	sw	t1,0(v0)
    2154:	c630003c 	lwc1	$f16,60(s1)
    2158:	c6240040 	lwc1	$f4,64(s1)
    215c:	c6280038 	lwc1	$f8,56(s1)
    2160:	4600848d 	trunc.w.s	$f18,$f16
    2164:	00003025 	move	a2,zero
    2168:	4600218d 	trunc.w.s	$f6,$f4
    216c:	44099000 	mfc1	t1,$f18
    2170:	4600428d 	trunc.w.s	$f10,$f8
    2174:	44193000 	mfc1	t9,$f6
    2178:	312a00ff 	andi	t2,t1,0xff
    217c:	000a5c00 	sll	t3,t2,0x10
    2180:	440e5000 	mfc1	t6,$f10
    2184:	332800ff 	andi	t0,t9,0xff
    2188:	00084a00 	sll	t1,t0,0x8
    218c:	000e7e00 	sll	t7,t6,0x18
    2190:	01eb6025 	or	t4,t7,t3
    2194:	01895025 	or	t2,t4,t1
    2198:	354f0080 	ori	t7,t2,0x80
    219c:	ac4f0004 	sw	t7,4(v0)
    21a0:	8e0202d0 	lw	v0,720(s0)
    21a4:	24080020 	li	t0,32
    21a8:	244b0008 	addiu	t3,v0,8
    21ac:	ae0b02d0 	sw	t3,720(s0)
    21b0:	ac4d0000 	sw	t5,0(v0)
    21b4:	c6280028 	lwc1	$f8,40(s1)
    21b8:	c630002c 	lwc1	$f16,44(s1)
    21bc:	c6240030 	lwc1	$f4,48(s1)
    21c0:	4600428d 	trunc.w.s	$f10,$f8
    21c4:	c6280034 	lwc1	$f8,52(s1)
    21c8:	4600848d 	trunc.w.s	$f18,$f16
    21cc:	440c5000 	mfc1	t4,$f10
    21d0:	4600218d 	trunc.w.s	$f6,$f4
    21d4:	440d9000 	mfc1	t5,$f18
    21d8:	000c4e00 	sll	t1,t4,0x18
    21dc:	4600428d 	trunc.w.s	$f10,$f8
    21e0:	440f3000 	mfc1	t7,$f6
    21e4:	31ae00ff 	andi	t6,t5,0xff
    21e8:	000ec400 	sll	t8,t6,0x10
    21ec:	440c5000 	mfc1	t4,$f10
    21f0:	31eb00ff 	andi	t3,t7,0xff
    21f4:	000b6a00 	sll	t5,t3,0x8
    21f8:	0138c825 	or	t9,t1,t8
    21fc:	032d7025 	or	t6,t9,t5
    2200:	318a00ff 	andi	t2,t4,0xff
    2204:	01ca7825 	or	t7,t6,t2
    2208:	ac4f0004 	sw	t7,4(v0)
    220c:	8e0202d0 	lw	v0,720(s0)
    2210:	3c19db06 	lui	t9,0xdb06
    2214:	37390020 	ori	t9,t9,0x20
    2218:	244b0008 	addiu	t3,v0,8
    221c:	ae0b02d0 	sw	t3,720(s0)
    2220:	ac590000 	sw	t9,0(v0)
    2224:	92270001 	lbu	a3,1(s1)
    2228:	8ee40000 	lw	a0,0(s7)
    222c:	240c0020 	li	t4,32
    2230:	00070823 	negu	at,a3
    2234:	00013880 	sll	a3,at,0x2
    2238:	240d0020 	li	t5,32
    223c:	24180001 	li	t8,1
    2240:	24090040 	li	t1,64
    2244:	afa90014 	sw	t1,20(sp)
    2248:	afb80018 	sw	t8,24(sp)
    224c:	afad0010 	sw	t5,16(sp)
    2250:	00e13821 	addu	a3,a3,at
    2254:	afac0028 	sw	t4,40(sp)
    2258:	afa80024 	sw	t0,36(sp)
    225c:	afa00020 	sw	zero,32(sp)
    2260:	afa0001c 	sw	zero,28(sp)
    2264:	0c000000 	jal	0 <func_809D35B0>
    2268:	afa200b4 	sw	v0,180(sp)
    226c:	8fa300b4 	lw	v1,180(sp)
    2270:	00003825 	move	a3,zero
    2274:	ac620004 	sw	v0,4(v1)
    2278:	8e26000c 	lw	a2,12(s1)
    227c:	c62e0008 	lwc1	$f14,8(s1)
    2280:	0c000000 	jal	0 <func_809D35B0>
    2284:	c62c0004 	lwc1	$f12,4(s1)
    2288:	0c000000 	jal	0 <func_809D35B0>
    228c:	02802025 	move	a0,s4
    2290:	c634004c 	lwc1	$f20,76(s1)
    2294:	4406b000 	mfc1	a2,$f22
    2298:	24070001 	li	a3,1
    229c:	4600a306 	mov.s	$f12,$f20
    22a0:	0c000000 	jal	0 <func_809D35B0>
    22a4:	4600a386 	mov.s	$f14,$f20
    22a8:	44806000 	mtc1	zero,$f12
    22ac:	3c0141a0 	lui	at,0x41a0
    22b0:	44817000 	mtc1	at,$f14
    22b4:	44066000 	mfc1	a2,$f12
    22b8:	0c000000 	jal	0 <func_809D35B0>
    22bc:	24070001 	li	a3,1
    22c0:	8e0202d0 	lw	v0,720(s0)
    22c4:	3c050000 	lui	a1,0x0
    22c8:	24a50000 	addiu	a1,a1,0
    22cc:	244e0008 	addiu	t6,v0,8
    22d0:	ae0e02d0 	sw	t6,720(s0)
    22d4:	ac5e0000 	sw	s8,0(v0)
    22d8:	02002025 	move	a0,s0
    22dc:	24060570 	li	a2,1392
    22e0:	0c000000 	jal	0 <func_809D35B0>
    22e4:	afa200b0 	sw	v0,176(sp)
    22e8:	8fa300b0 	lw	v1,176(sp)
    22ec:	ac620004 	sw	v0,4(v1)
    22f0:	8e0202d0 	lw	v0,720(s0)
    22f4:	244a0008 	addiu	t2,v0,8
    22f8:	ae0a02d0 	sw	t2,720(s0)
    22fc:	ac550004 	sw	s5,4(v0)
    2300:	ac560000 	sw	s6,0(v0)
    2304:	26520001 	addiu	s2,s2,1
    2308:	00129400 	sll	s2,s2,0x10
    230c:	00129403 	sra	s2,s2,0x10
    2310:	2a410064 	slti	at,s2,100
    2314:	1420ff70 	bnez	at,20d8 <func_809D53CC+0x2bc>
    2318:	2631006c 	addiu	s1,s1,108
    231c:	00009825 	move	s3,zero
    2320:	8fb100fc 	lw	s1,252(sp)
    2324:	00009025 	move	s2,zero
    2328:	922f0000 	lbu	t7,0(s1)
    232c:	24010002 	li	at,2
    2330:	3c150000 	lui	s5,0x0
    2334:	15e1005e 	bne	t7,at,24b0 <func_809D53CC+0x694>
    2338:	26b50000 	addiu	s5,s5,0
    233c:	3c010001 	lui	at,0x1
    2340:	34211da0 	ori	at,at,0x1da0
    2344:	16600012 	bnez	s3,2390 <func_809D53CC+0x574>
    2348:	02e1a021 	addu	s4,s7,at
    234c:	8e0202d0 	lw	v0,720(s0)
    2350:	3c040000 	lui	a0,0x0
    2354:	24840000 	addiu	a0,a0,0
    2358:	244b0008 	addiu	t3,v0,8
    235c:	ae0b02d0 	sw	t3,720(s0)
    2360:	ac440004 	sw	a0,4(v0)
    2364:	ac560000 	sw	s6,0(v0)
    2368:	8e0202d0 	lw	v0,720(s0)
    236c:	3c09ffd7 	lui	t1,0xffd7
    2370:	3529ff80 	ori	t1,t1,0xff80
    2374:	24590008 	addiu	t9,v0,8
    2378:	ae1902d0 	sw	t9,720(s0)
    237c:	3c0dfb00 	lui	t5,0xfb00
    2380:	26730001 	addiu	s3,s3,1
    2384:	327300ff 	andi	s3,s3,0xff
    2388:	ac4d0000 	sw	t5,0(v0)
    238c:	ac490004 	sw	t1,4(v0)
    2390:	8e0202d0 	lw	v0,720(s0)
    2394:	3c08fa00 	lui	t0,0xfa00
    2398:	3c01c814 	lui	at,0xc814
    239c:	24580008 	addiu	t8,v0,8
    23a0:	ae1802d0 	sw	t8,720(s0)
    23a4:	ac480000 	sw	t0,0(v0)
    23a8:	c6300034 	lwc1	$f16,52(s1)
    23ac:	3c09db06 	lui	t1,0xdb06
    23b0:	35290020 	ori	t1,t1,0x20
    23b4:	4600848d 	trunc.w.s	$f18,$f16
    23b8:	24080040 	li	t0,64
    23bc:	24180020 	li	t8,32
    23c0:	240c0001 	li	t4,1
    23c4:	440f9000 	mfc1	t7,$f18
    23c8:	240e0020 	li	t6,32
    23cc:	240a0020 	li	t2,32
    23d0:	31eb00ff 	andi	t3,t7,0xff
    23d4:	0161c825 	or	t9,t3,at
    23d8:	ac590004 	sw	t9,4(v0)
    23dc:	8e0202d0 	lw	v0,720(s0)
    23e0:	00002825 	move	a1,zero
    23e4:	00003025 	move	a2,zero
    23e8:	244d0008 	addiu	t5,v0,8
    23ec:	ae0d02d0 	sw	t5,720(s0)
    23f0:	ac490000 	sw	t1,0(v0)
    23f4:	92270001 	lbu	a3,1(s1)
    23f8:	8ee40000 	lw	a0,0(s7)
    23fc:	afaa0028 	sw	t2,40(sp)
    2400:	00070823 	negu	at,a3
    2404:	00013900 	sll	a3,at,0x4
    2408:	00e13823 	subu	a3,a3,at
    240c:	30e700ff 	andi	a3,a3,0xff
    2410:	afae0024 	sw	t6,36(sp)
    2414:	afa00020 	sw	zero,32(sp)
    2418:	afa0001c 	sw	zero,28(sp)
    241c:	afac0018 	sw	t4,24(sp)
    2420:	afa80014 	sw	t0,20(sp)
    2424:	afb80010 	sw	t8,16(sp)
    2428:	0c000000 	jal	0 <func_809D35B0>
    242c:	afa2009c 	sw	v0,156(sp)
    2430:	8fa3009c 	lw	v1,156(sp)
    2434:	00003825 	move	a3,zero
    2438:	ac620004 	sw	v0,4(v1)
    243c:	8e26000c 	lw	a2,12(s1)
    2440:	c62e0008 	lwc1	$f14,8(s1)
    2444:	0c000000 	jal	0 <func_809D35B0>
    2448:	c62c0004 	lwc1	$f12,4(s1)
    244c:	0c000000 	jal	0 <func_809D35B0>
    2450:	02802025 	move	a0,s4
    2454:	c634004c 	lwc1	$f20,76(s1)
    2458:	4406b000 	mfc1	a2,$f22
    245c:	24070001 	li	a3,1
    2460:	4600a306 	mov.s	$f12,$f20
    2464:	0c000000 	jal	0 <func_809D35B0>
    2468:	4600a386 	mov.s	$f14,$f20
    246c:	8e0202d0 	lw	v0,720(s0)
    2470:	3c050000 	lui	a1,0x0
    2474:	24a50000 	addiu	a1,a1,0
    2478:	244f0008 	addiu	t7,v0,8
    247c:	ae0f02d0 	sw	t7,720(s0)
    2480:	ac5e0000 	sw	s8,0(v0)
    2484:	02002025 	move	a0,s0
    2488:	2406059f 	li	a2,1439
    248c:	0c000000 	jal	0 <func_809D35B0>
    2490:	afa20098 	sw	v0,152(sp)
    2494:	8fa30098 	lw	v1,152(sp)
    2498:	ac620004 	sw	v0,4(v1)
    249c:	8e0202d0 	lw	v0,720(s0)
    24a0:	244b0008 	addiu	t3,v0,8
    24a4:	ae0b02d0 	sw	t3,720(s0)
    24a8:	ac550004 	sw	s5,4(v0)
    24ac:	ac560000 	sw	s6,0(v0)
    24b0:	26520001 	addiu	s2,s2,1
    24b4:	00129400 	sll	s2,s2,0x10
    24b8:	00129403 	sra	s2,s2,0x10
    24bc:	2a410064 	slti	at,s2,100
    24c0:	1420ff99 	bnez	at,2328 <func_809D53CC+0x50c>
    24c4:	2631006c 	addiu	s1,s1,108
    24c8:	3c150000 	lui	s5,0x0
    24cc:	00009825 	move	s3,zero
    24d0:	8fb100fc 	lw	s1,252(sp)
    24d4:	26b50000 	addiu	s5,s5,0
    24d8:	00009025 	move	s2,zero
    24dc:	92390000 	lbu	t9,0(s1)
    24e0:	24010004 	li	at,4
    24e4:	3c0d0000 	lui	t5,0x0
    24e8:	17210040 	bne	t9,at,25ec <func_809D53CC+0x7d0>
    24ec:	25ad0000 	addiu	t5,t5,0
    24f0:	3c010001 	lui	at,0x1
    24f4:	34211da0 	ori	at,at,0x1da0
    24f8:	02e1a021 	addu	s4,s7,at
    24fc:	16600010 	bnez	s3,2540 <func_809D53CC+0x724>
    2500:	afad007c 	sw	t5,124(sp)
    2504:	8e0202d0 	lw	v0,720(s0)
    2508:	3c18e700 	lui	t8,0xe700
    250c:	3c0cfb00 	lui	t4,0xfb00
    2510:	24490008 	addiu	t1,v0,8
    2514:	ae0902d0 	sw	t1,720(s0)
    2518:	ac400004 	sw	zero,4(v0)
    251c:	ac580000 	sw	t8,0(v0)
    2520:	8e0202d0 	lw	v0,720(s0)
    2524:	240ec800 	li	t6,-14336
    2528:	26730001 	addiu	s3,s3,1
    252c:	24480008 	addiu	t0,v0,8
    2530:	ae0802d0 	sw	t0,720(s0)
    2534:	327300ff 	andi	s3,s3,0xff
    2538:	ac4e0004 	sw	t6,4(v0)
    253c:	ac4c0000 	sw	t4,0(v0)
    2540:	8e0202d0 	lw	v0,720(s0)
    2544:	3c0ffa00 	lui	t7,0xfa00
    2548:	2401c800 	li	at,-14336
    254c:	244a0008 	addiu	t2,v0,8
    2550:	ae0a02d0 	sw	t2,720(s0)
    2554:	ac4f0000 	sw	t7,0(v0)
    2558:	c6240034 	lwc1	$f4,52(s1)
    255c:	00003825 	move	a3,zero
    2560:	4600218d 	trunc.w.s	$f6,$f4
    2564:	44093000 	mfc1	t1,$f6
    2568:	00000000 	nop
    256c:	313800ff 	andi	t8,t1,0xff
    2570:	03014025 	or	t0,t8,at
    2574:	ac480004 	sw	t0,4(v0)
    2578:	8e26000c 	lw	a2,12(s1)
    257c:	c62e0008 	lwc1	$f14,8(s1)
    2580:	0c000000 	jal	0 <func_809D35B0>
    2584:	c62c0004 	lwc1	$f12,4(s1)
    2588:	0c000000 	jal	0 <func_809D35B0>
    258c:	02802025 	move	a0,s4
    2590:	c634004c 	lwc1	$f20,76(s1)
    2594:	4406b000 	mfc1	a2,$f22
    2598:	24070001 	li	a3,1
    259c:	4600a306 	mov.s	$f12,$f20
    25a0:	0c000000 	jal	0 <func_809D35B0>
    25a4:	4600a386 	mov.s	$f14,$f20
    25a8:	8e0202d0 	lw	v0,720(s0)
    25ac:	02002025 	move	a0,s0
    25b0:	02a02825 	move	a1,s5
    25b4:	244c0008 	addiu	t4,v0,8
    25b8:	ae0c02d0 	sw	t4,720(s0)
    25bc:	ac5e0000 	sw	s8,0(v0)
    25c0:	240605be 	li	a2,1470
    25c4:	0c000000 	jal	0 <func_809D35B0>
    25c8:	afa20084 	sw	v0,132(sp)
    25cc:	8fa30084 	lw	v1,132(sp)
    25d0:	ac620004 	sw	v0,4(v1)
    25d4:	8e0202d0 	lw	v0,720(s0)
    25d8:	244e0008 	addiu	t6,v0,8
    25dc:	ae0e02d0 	sw	t6,720(s0)
    25e0:	ac560000 	sw	s6,0(v0)
    25e4:	8faa007c 	lw	t2,124(sp)
    25e8:	ac4a0004 	sw	t2,4(v0)
    25ec:	26520001 	addiu	s2,s2,1
    25f0:	00129400 	sll	s2,s2,0x10
    25f4:	00129403 	sra	s2,s2,0x10
    25f8:	2a410064 	slti	at,s2,100
    25fc:	1420ffb7 	bnez	at,24dc <func_809D53CC+0x6c0>
    2600:	2631006c 	addiu	s1,s1,108
    2604:	3c060000 	lui	a2,0x0
    2608:	24c60000 	addiu	a2,a2,0
    260c:	27a400e8 	addiu	a0,sp,232
    2610:	02002825 	move	a1,s0
    2614:	0c000000 	jal	0 <func_809D35B0>
    2618:	240705c5 	li	a3,1477
    261c:	8fbf006c 	lw	ra,108(sp)
    2620:	d7b40038 	ldc1	$f20,56(sp)
    2624:	d7b60040 	ldc1	$f22,64(sp)
    2628:	8fb00048 	lw	s0,72(sp)
    262c:	8fb1004c 	lw	s1,76(sp)
    2630:	8fb20050 	lw	s2,80(sp)
    2634:	8fb30054 	lw	s3,84(sp)
    2638:	8fb40058 	lw	s4,88(sp)
    263c:	8fb5005c 	lw	s5,92(sp)
    2640:	8fb60060 	lw	s6,96(sp)
    2644:	8fb70064 	lw	s7,100(sp)
    2648:	8fbe0068 	lw	s8,104(sp)
    264c:	03e00008 	jr	ra
    2650:	27bd0110 	addiu	sp,sp,272
	...
