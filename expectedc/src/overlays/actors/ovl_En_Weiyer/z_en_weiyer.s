
build/src/overlays/actors/ovl_En_Weiyer/z_en_weiyer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnWeiyer_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnWeiyer_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	3c060000 	lui	a2,0x0
      24:	24c60000 	addiu	a2,a2,0
      28:	260400b4 	addiu	a0,s0,180
      2c:	3c05447a 	lui	a1,0x447a
      30:	0c000000 	jal	0 <EnWeiyer_Init>
      34:	3c074282 	lui	a3,0x4282
      38:	3c060600 	lui	a2,0x600
      3c:	3c070600 	lui	a3,0x600
      40:	260e0198 	addiu	t6,s0,408
      44:	260f020a 	addiu	t7,s0,522
      48:	24180013 	li	t8,19
      4c:	afb80018 	sw	t8,24(sp)
      50:	afaf0014 	sw	t7,20(sp)
      54:	afae0010 	sw	t6,16(sp)
      58:	24e712ac 	addiu	a3,a3,4780
      5c:	24c63410 	addiu	a2,a2,13328
      60:	8fa4003c 	lw	a0,60(sp)
      64:	0c000000 	jal	0 <EnWeiyer_Init>
      68:	2605014c 	addiu	a1,s0,332
      6c:	26050284 	addiu	a1,s0,644
      70:	afa50030 	sw	a1,48(sp)
      74:	0c000000 	jal	0 <EnWeiyer_Init>
      78:	8fa4003c 	lw	a0,60(sp)
      7c:	3c070000 	lui	a3,0x0
      80:	8fa50030 	lw	a1,48(sp)
      84:	24e70000 	addiu	a3,a3,0
      88:	8fa4003c 	lw	a0,60(sp)
      8c:	0c000000 	jal	0 <EnWeiyer_Init>
      90:	02003025 	move	a2,s0
      94:	3c050000 	lui	a1,0x0
      98:	3c060000 	lui	a2,0x0
      9c:	24c60000 	addiu	a2,a2,0
      a0:	24a50000 	addiu	a1,a1,0
      a4:	0c000000 	jal	0 <EnWeiyer_Init>
      a8:	26040098 	addiu	a0,s0,152
      ac:	3c190000 	lui	t9,0x0
      b0:	27390000 	addiu	t9,t9,0
      b4:	ae190190 	sw	t9,400(s0)
      b8:	8fbf002c 	lw	ra,44(sp)
      bc:	8fb00028 	lw	s0,40(sp)
      c0:	27bd0038 	addiu	sp,sp,56
      c4:	03e00008 	jr	ra
      c8:	00000000 	nop

000000cc <EnWeiyer_Destroy>:
      cc:	27bdffe8 	addiu	sp,sp,-24
      d0:	00803025 	move	a2,a0
      d4:	afbf0014 	sw	ra,20(sp)
      d8:	00a02025 	move	a0,a1
      dc:	0c000000 	jal	0 <EnWeiyer_Init>
      e0:	24c50284 	addiu	a1,a2,644
      e4:	8fbf0014 	lw	ra,20(sp)
      e8:	27bd0018 	addiu	sp,sp,24
      ec:	03e00008 	jr	ra
      f0:	00000000 	nop

000000f4 <func_80B32384>:
      f4:	27bdffe8 	addiu	sp,sp,-24
      f8:	afbf0014 	sw	ra,20(sp)
      fc:	848e00b6 	lh	t6,182(a0)
     100:	3c010000 	lui	at,0x0
     104:	a48e0196 	sh	t6,406(a0)
     108:	afa40018 	sw	a0,24(sp)
     10c:	0c000000 	jal	0 <EnWeiyer_Init>
     110:	c42c0000 	lwc1	$f12,0(at)
     114:	3c014040 	lui	at,0x4040
     118:	44812000 	mtc1	at,$f4
     11c:	8fa70018 	lw	a3,24(sp)
     120:	3c050600 	lui	a1,0x600
     124:	46040182 	mul.s	$f6,$f0,$f4
     128:	c4e80028 	lwc1	$f8,40(a3)
     12c:	24a50fc0 	addiu	a1,a1,4032
     130:	3c06c0a0 	lui	a2,0xc0a0
     134:	24e4014c 	addiu	a0,a3,332
     138:	46083280 	add.s	$f10,$f6,$f8
     13c:	0c000000 	jal	0 <EnWeiyer_Init>
     140:	e4ea027c 	swc1	$f10,636(a3)
     144:	8fa70018 	lw	a3,24(sp)
     148:	3c014020 	lui	at,0x4020
     14c:	44811000 	mtc1	at,$f2
     150:	c4e00068 	lwc1	$f0,104(a3)
     154:	240f001e 	li	t7,30
     158:	3c080000 	lui	t0,0x0
     15c:	4600103c 	c.lt.s	$f2,$f0
     160:	25080000 	addiu	t0,t0,0
     164:	a4ef0194 	sh	t7,404(a3)
     168:	45020004 	bc1fl	17c <func_80B32384+0x88>
     16c:	e4e00068 	swc1	$f0,104(a3)
     170:	10000002 	b	17c <func_80B32384+0x88>
     174:	e4e20068 	swc1	$f2,104(a3)
     178:	e4e00068 	swc1	$f0,104(a3)
     17c:	90f80294 	lbu	t8,660(a3)
     180:	c4f00080 	lwc1	$f16,128(a3)
     184:	ace80190 	sw	t0,400(a3)
     188:	3319fffe 	andi	t9,t8,0xfffe
     18c:	a0f90294 	sb	t9,660(a3)
     190:	e4f00280 	swc1	$f16,640(a3)
     194:	8fbf0014 	lw	ra,20(sp)
     198:	27bd0018 	addiu	sp,sp,24
     19c:	03e00008 	jr	ra
     1a0:	00000000 	nop

000001a4 <func_80B32434>:
     1a4:	27bdffe8 	addiu	sp,sp,-24
     1a8:	afbf0014 	sw	ra,20(sp)
     1ac:	00803825 	move	a3,a0
     1b0:	3c050600 	lui	a1,0x600
     1b4:	24a50fc0 	addiu	a1,a1,4032
     1b8:	afa70018 	sw	a3,24(sp)
     1bc:	2484014c 	addiu	a0,a0,332
     1c0:	0c000000 	jal	0 <EnWeiyer_Init>
     1c4:	3c06c0a0 	lui	a2,0xc0a0
     1c8:	8fa70018 	lw	a3,24(sp)
     1cc:	3c0140a0 	lui	at,0x40a0
     1d0:	44812000 	mtc1	at,$f4
     1d4:	90ee0294 	lbu	t6,660(a3)
     1d8:	3c180000 	lui	t8,0x0
     1dc:	27180000 	addiu	t8,t8,0
     1e0:	35cf0001 	ori	t7,t6,0x1
     1e4:	a0ef0294 	sb	t7,660(a3)
     1e8:	a4e00194 	sh	zero,404(a3)
     1ec:	acf80190 	sw	t8,400(a3)
     1f0:	e4e40068 	swc1	$f4,104(a3)
     1f4:	8fbf0014 	lw	ra,20(sp)
     1f8:	27bd0018 	addiu	sp,sp,24
     1fc:	03e00008 	jr	ra
     200:	00000000 	nop

00000204 <func_80B32494>:
     204:	44800000 	mtc1	zero,$f0
     208:	27bdffd0 	addiu	sp,sp,-48
     20c:	3c01c100 	lui	at,0xc100
     210:	44812000 	mtc1	at,$f4
     214:	afb00028 	sw	s0,40(sp)
     218:	00808025 	move	s0,a0
     21c:	afbf002c 	sw	ra,44(sp)
     220:	3c050600 	lui	a1,0x600
     224:	44070000 	mfc1	a3,$f0
     228:	24a50288 	addiu	a1,a1,648
     22c:	2484014c 	addiu	a0,a0,332
     230:	afa00014 	sw	zero,20(sp)
     234:	3c064000 	lui	a2,0x4000
     238:	e7a00010 	swc1	$f0,16(sp)
     23c:	0c000000 	jal	0 <EnWeiyer_Init>
     240:	e7a40018 	swc1	$f4,24(sp)
     244:	920f0294 	lbu	t7,660(s0)
     248:	3c190000 	lui	t9,0x0
     24c:	240e0028 	li	t6,40
     250:	27390000 	addiu	t9,t9,0
     254:	35f80001 	ori	t8,t7,0x1
     258:	a60e0194 	sh	t6,404(s0)
     25c:	a2180294 	sb	t8,660(s0)
     260:	ae190190 	sw	t9,400(s0)
     264:	8fbf002c 	lw	ra,44(sp)
     268:	8fb00028 	lw	s0,40(sp)
     26c:	27bd0030 	addiu	sp,sp,48
     270:	03e00008 	jr	ra
     274:	00000000 	nop

00000278 <func_80B32508>:
     278:	908f0294 	lbu	t7,660(a0)
     27c:	3c014040 	lui	at,0x4040
     280:	44812000 	mtc1	at,$f4
     284:	3c190000 	lui	t9,0x0
     288:	240e00c8 	li	t6,200
     28c:	27390000 	addiu	t9,t9,0
     290:	35f80001 	ori	t8,t7,0x1
     294:	a48e0194 	sh	t6,404(a0)
     298:	a0980294 	sb	t8,660(a0)
     29c:	ac990190 	sw	t9,400(a0)
     2a0:	03e00008 	jr	ra
     2a4:	e4840168 	swc1	$f4,360(a0)

000002a8 <func_80B32538>:
     2a8:	3c014080 	lui	at,0x4080
     2ac:	44811000 	mtc1	at,$f2
     2b0:	c4800068 	lwc1	$f0,104(a0)
     2b4:	848f008a 	lh	t7,138(a0)
     2b8:	c4840028 	lwc1	$f4,40(a0)
     2bc:	4600103c 	c.lt.s	$f2,$f0
     2c0:	34018000 	li	at,0x8000
     2c4:	240e00c8 	li	t6,200
     2c8:	01e1c021 	addu	t8,t7,at
     2cc:	a48e0194 	sh	t6,404(a0)
     2d0:	a4980196 	sh	t8,406(a0)
     2d4:	45000003 	bc1f	2e4 <func_80B32538+0x3c>
     2d8:	e484027c 	swc1	$f4,636(a0)
     2dc:	10000002 	b	2e8 <func_80B32538+0x40>
     2e0:	e4820068 	swc1	$f2,104(a0)
     2e4:	e4800068 	swc1	$f0,104(a0)
     2e8:	90990294 	lbu	t9,660(a0)
     2ec:	3c013f80 	lui	at,0x3f80
     2f0:	44813000 	mtc1	at,$f6
     2f4:	3c090000 	lui	t1,0x0
     2f8:	25290000 	addiu	t1,t1,0
     2fc:	3328fffe 	andi	t0,t9,0xfffe
     300:	a0880294 	sb	t0,660(a0)
     304:	ac890190 	sw	t1,400(a0)
     308:	03e00008 	jr	ra
     30c:	e4860168 	swc1	$f6,360(a0)

00000310 <func_80B325A0>:
     310:	44800000 	mtc1	zero,$f0
     314:	27bdffd0 	addiu	sp,sp,-48
     318:	3c01c040 	lui	at,0xc040
     31c:	44812000 	mtc1	at,$f4
     320:	afb00028 	sw	s0,40(sp)
     324:	00808025 	move	s0,a0
     328:	afbf002c 	sw	ra,44(sp)
     32c:	3c050600 	lui	a1,0x600
     330:	44070000 	mfc1	a3,$f0
     334:	24a50fc0 	addiu	a1,a1,4032
     338:	2484014c 	addiu	a0,a0,332
     33c:	afa00014 	sw	zero,20(sp)
     340:	3c064000 	lui	a2,0x4000
     344:	e7a00010 	swc1	$f0,16(sp)
     348:	0c000000 	jal	0 <EnWeiyer_Init>
     34c:	e7a40018 	swc1	$f4,24(sp)
     350:	44800000 	mtc1	zero,$f0
     354:	920f0294 	lbu	t7,660(s0)
     358:	92190295 	lbu	t9,661(s0)
     35c:	3c014040 	lui	at,0x4040
     360:	44813000 	mtc1	at,$f6
     364:	240e0028 	li	t6,40
     368:	31f8fffe 	andi	t8,t7,0xfffe
     36c:	3328fffe 	andi	t0,t9,0xfffe
     370:	a60e0194 	sh	t6,404(s0)
     374:	a2180294 	sb	t8,660(s0)
     378:	a2080295 	sb	t0,661(s0)
     37c:	24090028 	li	t1,40
     380:	e600006c 	swc1	$f0,108(s0)
     384:	e6000060 	swc1	$f0,96(s0)
     388:	e6060068 	swc1	$f6,104(s0)
     38c:	afa90010 	sw	t1,16(sp)
     390:	02002025 	move	a0,s0
     394:	24054000 	li	a1,16384
     398:	240600c8 	li	a2,200
     39c:	0c000000 	jal	0 <EnWeiyer_Init>
     3a0:	00003825 	move	a3,zero
     3a4:	3c0a0000 	lui	t2,0x0
     3a8:	854a0000 	lh	t2,0(t2)
     3ac:	3c0b0000 	lui	t3,0x0
     3b0:	256b0000 	addiu	t3,t3,0
     3b4:	ae0b0190 	sw	t3,400(s0)
     3b8:	a60a02c6 	sh	t2,710(s0)
     3bc:	8fbf002c 	lw	ra,44(sp)
     3c0:	8fb00028 	lw	s0,40(sp)
     3c4:	27bd0030 	addiu	sp,sp,48
     3c8:	03e00008 	jr	ra
     3cc:	00000000 	nop

000003d0 <func_80B32660>:
     3d0:	44800000 	mtc1	zero,$f0
     3d4:	27bdffd0 	addiu	sp,sp,-48
     3d8:	3c01c100 	lui	at,0xc100
     3dc:	44812000 	mtc1	at,$f4
     3e0:	afb00028 	sw	s0,40(sp)
     3e4:	00808025 	move	s0,a0
     3e8:	afbf002c 	sw	ra,44(sp)
     3ec:	3c050600 	lui	a1,0x600
     3f0:	44070000 	mfc1	a3,$f0
     3f4:	24a50288 	addiu	a1,a1,648
     3f8:	2484014c 	addiu	a0,a0,332
     3fc:	afa00014 	sw	zero,20(sp)
     400:	3c064000 	lui	a2,0x4000
     404:	e7a00010 	swc1	$f0,16(sp)
     408:	0c000000 	jal	0 <EnWeiyer_Init>
     40c:	e7a40018 	swc1	$f4,24(sp)
     410:	44800000 	mtc1	zero,$f0
     414:	3c01bf80 	lui	at,0xbf80
     418:	44813000 	mtc1	at,$f6
     41c:	240e0050 	li	t6,80
     420:	a60e0194 	sh	t6,404(s0)
     424:	3c0f0000 	lui	t7,0x0
     428:	e6000068 	swc1	$f0,104(s0)
     42c:	e6000060 	swc1	$f0,96(s0)
     430:	e606006c 	swc1	$f6,108(s0)
     434:	85ef0000 	lh	t7,0(t7)
     438:	24190050 	li	t9,80
     43c:	02002025 	move	a0,s0
     440:	25f8000f 	addiu	t8,t7,15
     444:	a61802c6 	sh	t8,710(s0)
     448:	afb90010 	sw	t9,16(sp)
     44c:	00002825 	move	a1,zero
     450:	240600c8 	li	a2,200
     454:	0c000000 	jal	0 <EnWeiyer_Init>
     458:	00003825 	move	a3,zero
     45c:	92080294 	lbu	t0,660(s0)
     460:	02002025 	move	a0,s0
     464:	2405389e 	li	a1,14494
     468:	3109fffe 	andi	t1,t0,0xfffe
     46c:	0c000000 	jal	0 <EnWeiyer_Init>
     470:	a2090294 	sb	t1,660(s0)
     474:	3c0a0000 	lui	t2,0x0
     478:	254a0000 	addiu	t2,t2,0
     47c:	ae0a0190 	sw	t2,400(s0)
     480:	8fbf002c 	lw	ra,44(sp)
     484:	8fb00028 	lw	s0,40(sp)
     488:	27bd0030 	addiu	sp,sp,48
     48c:	03e00008 	jr	ra
     490:	00000000 	nop

00000494 <func_80B32724>:
     494:	27bdffd8 	addiu	sp,sp,-40
     498:	afb00020 	sw	s0,32(sp)
     49c:	00808025 	move	s0,a0
     4a0:	afbf0024 	sw	ra,36(sp)
     4a4:	3c050600 	lui	a1,0x600
     4a8:	24a50fc0 	addiu	a1,a1,4032
     4ac:	2484014c 	addiu	a0,a0,332
     4b0:	0c000000 	jal	0 <EnWeiyer_Init>
     4b4:	3c06c0a0 	lui	a2,0xc0a0
     4b8:	240e0014 	li	t6,20
     4bc:	a60e0194 	sh	t6,404(s0)
     4c0:	240f0028 	li	t7,40
     4c4:	afaf0010 	sw	t7,16(sp)
     4c8:	02002025 	move	a0,s0
     4cc:	24054000 	li	a1,16384
     4d0:	240600c8 	li	a2,200
     4d4:	0c000000 	jal	0 <EnWeiyer_Init>
     4d8:	00003825 	move	a3,zero
     4dc:	92180294 	lbu	t8,660(s0)
     4e0:	92080295 	lbu	t0,661(s0)
     4e4:	3c014040 	lui	at,0x4040
     4e8:	44812000 	mtc1	at,$f4
     4ec:	3c0a0000 	lui	t2,0x0
     4f0:	254a0000 	addiu	t2,t2,0
     4f4:	3319fffe 	andi	t9,t8,0xfffe
     4f8:	3109fffe 	andi	t1,t0,0xfffe
     4fc:	a2190294 	sb	t9,660(s0)
     500:	a2090295 	sb	t1,661(s0)
     504:	ae0a0190 	sw	t2,400(s0)
     508:	e6040068 	swc1	$f4,104(s0)
     50c:	8fbf0024 	lw	ra,36(sp)
     510:	8fb00020 	lw	s0,32(sp)
     514:	27bd0028 	addiu	sp,sp,40
     518:	03e00008 	jr	ra
     51c:	00000000 	nop

00000520 <func_80B327B0>:
     520:	948e0112 	lhu	t6,274(a0)
     524:	44800000 	mtc1	zero,$f0
     528:	3c180000 	lui	t8,0x0
     52c:	27180000 	addiu	t8,t8,0
     530:	35cf2000 	ori	t7,t6,0x2000
     534:	a48f0112 	sh	t7,274(a0)
     538:	ac980190 	sw	t8,400(a0)
     53c:	e4800068 	swc1	$f0,104(a0)
     540:	03e00008 	jr	ra
     544:	e4800060 	swc1	$f0,96(a0)

00000548 <func_80B327D8>:
     548:	3c0140a0 	lui	at,0x40a0
     54c:	44812000 	mtc1	at,$f4
     550:	3c180000 	lui	t8,0x0
     554:	240ee000 	li	t6,-8192
     558:	240fffff 	li	t7,-1
     55c:	27180000 	addiu	t8,t8,0
     560:	a48e00b4 	sh	t6,180(a0)
     564:	a48f0194 	sh	t7,404(a0)
     568:	ac980190 	sw	t8,400(a0)
     56c:	03e00008 	jr	ra
     570:	e4840068 	swc1	$f4,104(a0)

00000574 <func_80B32804>:
     574:	27bdffc8 	addiu	sp,sp,-56
     578:	afbf0024 	sw	ra,36(sp)
     57c:	afb00020 	sw	s0,32(sp)
     580:	afa5003c 	sw	a1,60(sp)
     584:	3c013f00 	lui	at,0x3f00
     588:	44813000 	mtc1	at,$f6
     58c:	c4840028 	lwc1	$f4,40(a0)
     590:	00808025 	move	s0,a0
     594:	260e0024 	addiu	t6,s0,36
     598:	46062200 	add.s	$f8,$f4,$f6
     59c:	26050078 	addiu	a1,s0,120
     5a0:	02003825 	move	a3,s0
     5a4:	27a60030 	addiu	a2,sp,48
     5a8:	e4880028 	swc1	$f8,40(a0)
     5ac:	8fa4003c 	lw	a0,60(sp)
     5b0:	afae0010 	sw	t6,16(sp)
     5b4:	248407c0 	addiu	a0,a0,1984
     5b8:	0c000000 	jal	0 <EnWeiyer_Init>
     5bc:	afa4002c 	sw	a0,44(sp)
     5c0:	e6000080 	swc1	$f0,128(s0)
     5c4:	8e060024 	lw	a2,36(s0)
     5c8:	8e07002c 	lw	a3,44(s0)
     5cc:	260f000c 	addiu	t7,s0,12
     5d0:	27b80034 	addiu	t8,sp,52
     5d4:	afb80014 	sw	t8,20(sp)
     5d8:	afaf0010 	sw	t7,16(sp)
     5dc:	8fa5002c 	lw	a1,44(sp)
     5e0:	0c000000 	jal	0 <EnWeiyer_Init>
     5e4:	8fa4003c 	lw	a0,60(sp)
     5e8:	10400009 	beqz	v0,610 <func_80B32804+0x9c>
     5ec:	3c0140a0 	lui	at,0x40a0
     5f0:	c60a000c 	lwc1	$f10,12(s0)
     5f4:	44818000 	mtc1	at,$f16
     5f8:	c6000080 	lwc1	$f0,128(s0)
     5fc:	46105081 	sub.s	$f2,$f10,$f16
     600:	4600103e 	c.le.s	$f2,$f0
     604:	00000000 	nop
     608:	45020006 	bc1fl	624 <func_80B32804+0xb0>
     60c:	e602000c 	swc1	$f2,12(s0)
     610:	0c000000 	jal	0 <EnWeiyer_Init>
     614:	02002025 	move	a0,s0
     618:	1000000b 	b	648 <func_80B32804+0xd4>
     61c:	8fbf0024 	lw	ra,36(sp)
     620:	e602000c 	swc1	$f2,12(s0)
     624:	c612000c 	lwc1	$f18,12(s0)
     628:	3c013f00 	lui	at,0x3f00
     62c:	44813000 	mtc1	at,$f6
     630:	46009100 	add.s	$f4,$f18,$f0
     634:	02002025 	move	a0,s0
     638:	46062202 	mul.s	$f8,$f4,$f6
     63c:	0c000000 	jal	0 <EnWeiyer_Init>
     640:	e6080028 	swc1	$f8,40(s0)
     644:	8fbf0024 	lw	ra,36(sp)
     648:	8fb00020 	lw	s0,32(sp)
     64c:	27bd0038 	addiu	sp,sp,56
     650:	03e00008 	jr	ra
     654:	00000000 	nop

00000658 <func_80B328E8>:
     658:	27bdffc8 	addiu	sp,sp,-56
     65c:	afb00018 	sw	s0,24(sp)
     660:	00808025 	move	s0,a0
     664:	afbf001c 	sw	ra,28(sp)
     668:	2484014c 	addiu	a0,a0,332
     66c:	afa5003c 	sw	a1,60(sp)
     670:	0c000000 	jal	0 <EnWeiyer_Init>
     674:	afa40020 	sw	a0,32(sp)
     678:	260400b4 	addiu	a0,s0,180
     67c:	00002825 	move	a1,zero
     680:	0c000000 	jal	0 <EnWeiyer_Init>
     684:	24060800 	li	a2,2048
     688:	8fa40020 	lw	a0,32(sp)
     68c:	0c000000 	jal	0 <EnWeiyer_Init>
     690:	24050000 	li	a1,0
     694:	afa20034 	sw	v0,52(sp)
     698:	c6040164 	lwc1	$f4,356(s0)
     69c:	2604027c 	addiu	a0,s0,636
     6a0:	3c063f00 	lui	a2,0x3f00
     6a4:	e7a40030 	swc1	$f4,48(sp)
     6a8:	0c000000 	jal	0 <EnWeiyer_Init>
     6ac:	8e050280 	lw	a1,640(s0)
     6b0:	3c0140a0 	lui	at,0x40a0
     6b4:	44814000 	mtc1	at,$f8
     6b8:	c7a60030 	lwc1	$f6,48(sp)
     6bc:	3c010000 	lui	at,0x0
     6c0:	c4300000 	lwc1	$f16,0(at)
     6c4:	46083281 	sub.s	$f10,$f6,$f8
     6c8:	46105302 	mul.s	$f12,$f10,$f16
     6cc:	0c000000 	jal	0 <EnWeiyer_Init>
     6d0:	00000000 	nop
     6d4:	3c014040 	lui	at,0x4040
     6d8:	44812000 	mtc1	at,$f4
     6dc:	c612027c 	lwc1	$f18,636(s0)
     6e0:	3c014234 	lui	at,0x4234
     6e4:	46040182 	mul.s	$f6,$f0,$f4
     6e8:	44815000 	mtc1	at,$f10
     6ec:	3c053fa6 	lui	a1,0x3fa6
     6f0:	34a56666 	ori	a1,a1,0x6666
     6f4:	26040068 	addiu	a0,s0,104
     6f8:	3c063cf5 	lui	a2,0x3cf5
     6fc:	46069201 	sub.s	$f8,$f18,$f6
     700:	e6080028 	swc1	$f8,40(s0)
     704:	c7b00030 	lwc1	$f16,48(sp)
     708:	460a803e 	c.le.s	$f16,$f10
     70c:	00000000 	nop
     710:	45000008 	bc1f	734 <func_80B328E8+0xdc>
     714:	00000000 	nop
     718:	3c063cf5 	lui	a2,0x3cf5
     71c:	34c6c28f 	ori	a2,a2,0xc28f
     720:	26040068 	addiu	a0,s0,104
     724:	0c000000 	jal	0 <EnWeiyer_Init>
     728:	3c053f80 	lui	a1,0x3f80
     72c:	10000004 	b	740 <func_80B328E8+0xe8>
     730:	960e0088 	lhu	t6,136(s0)
     734:	0c000000 	jal	0 <EnWeiyer_Init>
     738:	34c6c28f 	ori	a2,a2,0xc28f
     73c:	960e0088 	lhu	t6,136(s0)
     740:	260400b6 	addiu	a0,s0,182
     744:	240600b6 	li	a2,182
     748:	31cf0008 	andi	t7,t6,0x8
     74c:	11e00005 	beqz	t7,764 <func_80B328E8+0x10c>
     750:	00000000 	nop
     754:	8618007e 	lh	t8,126(s0)
     758:	2419001e 	li	t9,30
     75c:	a6190194 	sh	t9,404(s0)
     760:	a6180196 	sh	t8,406(s0)
     764:	0c000000 	jal	0 <EnWeiyer_Init>
     768:	86050196 	lh	a1,406(s0)
     76c:	50400029 	beqzl	v0,814 <func_80B328E8+0x1bc>
     770:	c602000c 	lwc1	$f2,12(s0)
     774:	86020194 	lh	v0,404(s0)
     778:	24042000 	li	a0,8192
     77c:	10400003 	beqz	v0,78c <func_80B328E8+0x134>
     780:	2448ffff 	addiu	t0,v0,-1
     784:	a6080194 	sh	t0,404(s0)
     788:	86020194 	lh	v0,404(s0)
     78c:	54400021 	bnezl	v0,814 <func_80B328E8+0x1bc>
     790:	c602000c 	lwc1	$f2,12(s0)
     794:	0c000000 	jal	0 <EnWeiyer_Init>
     798:	24052000 	li	a1,8192
     79c:	0c000000 	jal	0 <EnWeiyer_Init>
     7a0:	a7a20026 	sh	v0,38(sp)
     7a4:	3c013f00 	lui	at,0x3f00
     7a8:	44812000 	mtc1	at,$f4
     7ac:	87a90026 	lh	t1,38(sp)
     7b0:	24020001 	li	v0,1
     7b4:	4604003c 	c.lt.s	$f0,$f4
     7b8:	00000000 	nop
     7bc:	45000003 	bc1f	7cc <func_80B328E8+0x174>
     7c0:	00000000 	nop
     7c4:	10000001 	b	7cc <func_80B328E8+0x174>
     7c8:	2402ffff 	li	v0,-1
     7cc:	00490019 	multu	v0,t1
     7d0:	860b00b6 	lh	t3,182(s0)
     7d4:	240d001e 	li	t5,30
     7d8:	a60d0194 	sh	t5,404(s0)
     7dc:	00005012 	mflo	t2
     7e0:	014b6021 	addu	t4,t2,t3
     7e4:	0c000000 	jal	0 <EnWeiyer_Init>
     7e8:	a60c0196 	sh	t4,406(s0)
     7ec:	3c010000 	lui	at,0x0
     7f0:	c4320000 	lwc1	$f18,0(at)
     7f4:	02002025 	move	a0,s0
     7f8:	4612003c 	c.lt.s	$f0,$f18
     7fc:	00000000 	nop
     800:	45020004 	bc1fl	814 <func_80B328E8+0x1bc>
     804:	c602000c 	lwc1	$f2,12(s0)
     808:	0c000000 	jal	0 <EnWeiyer_Init>
     80c:	240539a3 	li	a1,14755
     810:	c602000c 	lwc1	$f2,12(s0)
     814:	c6060028 	lwc1	$f6,40(s0)
     818:	8fae003c 	lw	t6,60(sp)
     81c:	4606103c 	c.lt.s	$f2,$f6
     820:	00000000 	nop
     824:	45020018 	bc1fl	888 <func_80B328E8+0x230>
     828:	8dcf1c44 	lw	t7,7236(t6)
     82c:	c6080080 	lwc1	$f8,128(s0)
     830:	4608103c 	c.lt.s	$f2,$f8
     834:	00000000 	nop
     838:	45000005 	bc1f	850 <func_80B328E8+0x1f8>
     83c:	00000000 	nop
     840:	0c000000 	jal	0 <EnWeiyer_Init>
     844:	02002025 	move	a0,s0
     848:	10000050 	b	98c <func_80B328E8+0x334>
     84c:	8fbf001c 	lw	ra,28(sp)
     850:	0c000000 	jal	0 <EnWeiyer_Init>
     854:	e6020028 	swc1	$f2,40(s0)
     858:	c6020080 	lwc1	$f2,128(s0)
     85c:	c60a000c 	lwc1	$f10,12(s0)
     860:	3c013f00 	lui	at,0x3f00
     864:	44812000 	mtc1	at,$f4
     868:	46025401 	sub.s	$f16,$f10,$f2
     86c:	46048482 	mul.s	$f18,$f16,$f4
     870:	00000000 	nop
     874:	46120182 	mul.s	$f6,$f0,$f18
     878:	46023200 	add.s	$f8,$f6,$f2
     87c:	10000042 	b	988 <func_80B328E8+0x330>
     880:	e6080280 	swc1	$f8,640(s0)
     884:	8dcf1c44 	lw	t7,7236(t6)
     888:	8fa80034 	lw	t0,52(sp)
     88c:	afaf002c 	sw	t7,44(sp)
     890:	96180088 	lhu	t8,136(s0)
     894:	33190001 	andi	t9,t8,0x1
     898:	1320000e 	beqz	t9,8d4 <func_80B328E8+0x27c>
     89c:	00000000 	nop
     8a0:	0c000000 	jal	0 <EnWeiyer_Init>
     8a4:	00000000 	nop
     8a8:	c602000c 	lwc1	$f2,12(s0)
     8ac:	c60a0080 	lwc1	$f10,128(s0)
     8b0:	3c013f00 	lui	at,0x3f00
     8b4:	44812000 	mtc1	at,$f4
     8b8:	460a1401 	sub.s	$f16,$f2,$f10
     8bc:	46048482 	mul.s	$f18,$f16,$f4
     8c0:	00000000 	nop
     8c4:	46120182 	mul.s	$f6,$f0,$f18
     8c8:	46061201 	sub.s	$f8,$f2,$f6
     8cc:	10000013 	b	91c <func_80B328E8+0x2c4>
     8d0:	e6080280 	swc1	$f8,640(s0)
     8d4:	51000012 	beqzl	t0,920 <func_80B328E8+0x2c8>
     8d8:	3c0143c8 	lui	at,0x43c8
     8dc:	0c000000 	jal	0 <EnWeiyer_Init>
     8e0:	00000000 	nop
     8e4:	3c010000 	lui	at,0x0
     8e8:	c42a0000 	lwc1	$f10,0(at)
     8ec:	460a003c 	c.lt.s	$f0,$f10
     8f0:	00000000 	nop
     8f4:	4502000a 	bc1fl	920 <func_80B328E8+0x2c8>
     8f8:	3c0143c8 	lui	at,0x43c8
     8fc:	0c000000 	jal	0 <EnWeiyer_Init>
     900:	00000000 	nop
     904:	c6020080 	lwc1	$f2,128(s0)
     908:	c610000c 	lwc1	$f16,12(s0)
     90c:	46028101 	sub.s	$f4,$f16,$f2
     910:	46040482 	mul.s	$f18,$f0,$f4
     914:	46029180 	add.s	$f6,$f18,$f2
     918:	e6060280 	swc1	$f6,640(s0)
     91c:	3c0143c8 	lui	at,0x43c8
     920:	44815000 	mtc1	at,$f10
     924:	c6080090 	lwc1	$f8,144(s0)
     928:	460a403c 	c.lt.s	$f8,$f10
     92c:	00000000 	nop
     930:	45020016 	bc1fl	98c <func_80B328E8+0x334>
     934:	8fbf001c 	lw	ra,28(sp)
     938:	c6000094 	lwc1	$f0,148(s0)
     93c:	3c01437a 	lui	at,0x437a
     940:	44818000 	mtc1	at,$f16
     944:	46000005 	abs.s	$f0,$f0
     948:	3c0141a0 	lui	at,0x41a0
     94c:	4610003c 	c.lt.s	$f0,$f16
     950:	00000000 	nop
     954:	4502000d 	bc1fl	98c <func_80B328E8+0x334>
     958:	8fbf001c 	lw	ra,28(sp)
     95c:	c612000c 	lwc1	$f18,12(s0)
     960:	44813000 	mtc1	at,$f6
     964:	8fa9002c 	lw	t1,44(sp)
     968:	46069200 	add.s	$f8,$f18,$f6
     96c:	c5240028 	lwc1	$f4,40(t1)
     970:	4608203c 	c.lt.s	$f4,$f8
     974:	00000000 	nop
     978:	45020004 	bc1fl	98c <func_80B328E8+0x334>
     97c:	8fbf001c 	lw	ra,28(sp)
     980:	0c000000 	jal	0 <EnWeiyer_Init>
     984:	02002025 	move	a0,s0
     988:	8fbf001c 	lw	ra,28(sp)
     98c:	8fb00018 	lw	s0,24(sp)
     990:	27bd0038 	addiu	sp,sp,56
     994:	03e00008 	jr	ra
     998:	00000000 	nop

0000099c <func_80B32C2C>:
     99c:	27bdffd8 	addiu	sp,sp,-40
     9a0:	afb00020 	sw	s0,32(sp)
     9a4:	00808025 	move	s0,a0
     9a8:	afbf0024 	sw	ra,36(sp)
     9ac:	afa5002c 	sw	a1,44(sp)
     9b0:	0c000000 	jal	0 <EnWeiyer_Init>
     9b4:	2484014c 	addiu	a0,a0,332
     9b8:	860e0194 	lh	t6,404(s0)
     9bc:	24060800 	li	a2,2048
     9c0:	260400b4 	addiu	a0,s0,180
     9c4:	15c00011 	bnez	t6,a0c <func_80B32C2C+0x70>
     9c8:	24051800 	li	a1,6144
     9cc:	260400b4 	addiu	a0,s0,180
     9d0:	0c000000 	jal	0 <EnWeiyer_Init>
     9d4:	2405c000 	li	a1,-16384
     9d8:	10400008 	beqz	v0,9fc <func_80B32C2C+0x60>
     9dc:	34018000 	li	at,0x8000
     9e0:	860f00b6 	lh	t7,182(s0)
     9e4:	24190001 	li	t9,1
     9e8:	a60000b8 	sh	zero,184(s0)
     9ec:	01e1c021 	addu	t8,t7,at
     9f0:	a61800b6 	sh	t8,182(s0)
     9f4:	10000025 	b	a8c <func_80B32C2C+0xf0>
     9f8:	a6190194 	sh	t9,404(s0)
     9fc:	860800b4 	lh	t0,180(s0)
     a00:	00084840 	sll	t1,t0,0x1
     a04:	10000021 	b	a8c <func_80B32C2C+0xf0>
     a08:	a60900b8 	sh	t1,184(s0)
     a0c:	0c000000 	jal	0 <EnWeiyer_Init>
     a10:	24060800 	li	a2,2048
     a14:	c6040028 	lwc1	$f4,40(s0)
     a18:	c606000c 	lwc1	$f6,12(s0)
     a1c:	4606203c 	c.lt.s	$f4,$f6
     a20:	00000000 	nop
     a24:	45020014 	bc1fl	a78 <func_80B32C2C+0xdc>
     a28:	960d0088 	lhu	t5,136(s0)
     a2c:	860a00b4 	lh	t2,180(s0)
     a30:	8fa4002c 	lw	a0,44(sp)
     a34:	26050024 	addiu	a1,s0,36
     a38:	1940000a 	blez	t2,a64 <func_80B32C2C+0xc8>
     a3c:	00003025 	move	a2,zero
     a40:	240b0001 	li	t3,1
     a44:	240c0190 	li	t4,400
     a48:	afac0014 	sw	t4,20(sp)
     a4c:	afab0010 	sw	t3,16(sp)
     a50:	0c000000 	jal	0 <EnWeiyer_Init>
     a54:	00003825 	move	a3,zero
     a58:	02002025 	move	a0,s0
     a5c:	0c000000 	jal	0 <EnWeiyer_Init>
     a60:	240538c4 	li	a1,14532
     a64:	0c000000 	jal	0 <EnWeiyer_Init>
     a68:	02002025 	move	a0,s0
     a6c:	10000008 	b	a90 <func_80B32C2C+0xf4>
     a70:	8fbf0024 	lw	ra,36(sp)
     a74:	960d0088 	lhu	t5,136(s0)
     a78:	31ae0001 	andi	t6,t5,0x1
     a7c:	51c00004 	beqzl	t6,a90 <func_80B32C2C+0xf4>
     a80:	8fbf0024 	lw	ra,36(sp)
     a84:	0c000000 	jal	0 <EnWeiyer_Init>
     a88:	02002025 	move	a0,s0
     a8c:	8fbf0024 	lw	ra,36(sp)
     a90:	8fb00020 	lw	s0,32(sp)
     a94:	27bd0028 	addiu	sp,sp,40
     a98:	03e00008 	jr	ra
     a9c:	00000000 	nop

00000aa0 <func_80B32D30>:
     aa0:	27bdffd8 	addiu	sp,sp,-40
     aa4:	afb00018 	sw	s0,24(sp)
     aa8:	00808025 	move	s0,a0
     aac:	afbf001c 	sw	ra,28(sp)
     ab0:	2484014c 	addiu	a0,a0,332
     ab4:	afa5002c 	sw	a1,44(sp)
     ab8:	0c000000 	jal	0 <EnWeiyer_Init>
     abc:	afa40024 	sw	a0,36(sp)
     ac0:	8fa40024 	lw	a0,36(sp)
     ac4:	0c000000 	jal	0 <EnWeiyer_Init>
     ac8:	24050000 	li	a1,0
     acc:	10400003 	beqz	v0,adc <func_80B32D30+0x3c>
     ad0:	02002025 	move	a0,s0
     ad4:	0c000000 	jal	0 <EnWeiyer_Init>
     ad8:	2405394e 	li	a1,14670
     adc:	260400b4 	addiu	a0,s0,180
     ae0:	00002825 	move	a1,zero
     ae4:	0c000000 	jal	0 <EnWeiyer_Init>
     ae8:	24060800 	li	a2,2048
     aec:	26040068 	addiu	a0,s0,104
     af0:	24050000 	li	a1,0
     af4:	0c000000 	jal	0 <EnWeiyer_Init>
     af8:	3c063f80 	lui	a2,0x3f80
     afc:	86030194 	lh	v1,404(s0)
     b00:	10600003 	beqz	v1,b10 <func_80B32D30+0x70>
     b04:	246effff 	addiu	t6,v1,-1
     b08:	a60e0194 	sh	t6,404(s0)
     b0c:	86030194 	lh	v1,404(s0)
     b10:	54600006 	bnezl	v1,b2c <func_80B32D30+0x8c>
     b14:	c6040028 	lwc1	$f4,40(s0)
     b18:	0c000000 	jal	0 <EnWeiyer_Init>
     b1c:	02002025 	move	a0,s0
     b20:	1000000a 	b	b4c <func_80B32D30+0xac>
     b24:	8fbf001c 	lw	ra,28(sp)
     b28:	c6040028 	lwc1	$f4,40(s0)
     b2c:	c606000c 	lwc1	$f6,12(s0)
     b30:	4606203c 	c.lt.s	$f4,$f6
     b34:	00000000 	nop
     b38:	45020004 	bc1fl	b4c <func_80B32D30+0xac>
     b3c:	8fbf001c 	lw	ra,28(sp)
     b40:	0c000000 	jal	0 <EnWeiyer_Init>
     b44:	02002025 	move	a0,s0
     b48:	8fbf001c 	lw	ra,28(sp)
     b4c:	8fb00018 	lw	s0,24(sp)
     b50:	27bd0028 	addiu	sp,sp,40
     b54:	03e00008 	jr	ra
     b58:	00000000 	nop

00000b5c <func_80B32DEC>:
     b5c:	27bdffd8 	addiu	sp,sp,-40
     b60:	afbf0014 	sw	ra,20(sp)
     b64:	8ca21c44 	lw	v0,7236(a1)
     b68:	3c0141a0 	lui	at,0x41a0
     b6c:	44814000 	mtc1	at,$f8
     b70:	c4440024 	lwc1	$f4,36(v0)
     b74:	27a50018 	addiu	a1,sp,24
     b78:	e7a40018 	swc1	$f4,24(sp)
     b7c:	c4460028 	lwc1	$f6,40(v0)
     b80:	46083280 	add.s	$f10,$f6,$f8
     b84:	e7aa001c 	swc1	$f10,28(sp)
     b88:	c450002c 	lwc1	$f16,44(v0)
     b8c:	0c000000 	jal	0 <EnWeiyer_Init>
     b90:	e7b00020 	swc1	$f16,32(sp)
     b94:	8fbf0014 	lw	ra,20(sp)
     b98:	27bd0028 	addiu	sp,sp,40
     b9c:	03e00008 	jr	ra
     ba0:	00000000 	nop

00000ba4 <func_80B32E34>:
     ba4:	27bdffd0 	addiu	sp,sp,-48
     ba8:	afbf0024 	sw	ra,36(sp)
     bac:	afb00020 	sw	s0,32(sp)
     bb0:	afa50034 	sw	a1,52(sp)
     bb4:	8caf1c44 	lw	t7,7236(a1)
     bb8:	00808025 	move	s0,a0
     bbc:	2484014c 	addiu	a0,a0,332
     bc0:	0c000000 	jal	0 <EnWeiyer_Init>
     bc4:	afaf002c 	sw	t7,44(sp)
     bc8:	86030194 	lh	v1,404(s0)
     bcc:	3c0141a0 	lui	at,0x41a0
     bd0:	10600003 	beqz	v1,be0 <func_80B32E34+0x3c>
     bd4:	2478ffff 	addiu	t8,v1,-1
     bd8:	a6180194 	sh	t8,404(s0)
     bdc:	86030194 	lh	v1,404(s0)
     be0:	1060000f 	beqz	v1,c20 <func_80B32E34+0x7c>
     be4:	00000000 	nop
     be8:	c606000c 	lwc1	$f6,12(s0)
     bec:	44814000 	mtc1	at,$f8
     bf0:	8fb9002c 	lw	t9,44(sp)
     bf4:	46083280 	add.s	$f10,$f6,$f8
     bf8:	c7240028 	lwc1	$f4,40(t9)
     bfc:	4604503e 	c.le.s	$f10,$f4
     c00:	00000000 	nop
     c04:	45010006 	bc1t	c20 <func_80B32E34+0x7c>
     c08:	00000000 	nop
     c0c:	92080294 	lbu	t0,660(s0)
     c10:	02002025 	move	a0,s0
     c14:	31090002 	andi	t1,t0,0x2
     c18:	11200005 	beqz	t1,c30 <func_80B32E34+0x8c>
     c1c:	00000000 	nop
     c20:	0c000000 	jal	0 <EnWeiyer_Init>
     c24:	02002025 	move	a0,s0
     c28:	10000053 	b	d78 <func_80B32E34+0x1d4>
     c2c:	8fbf0024 	lw	ra,36(sp)
     c30:	0c000000 	jal	0 <EnWeiyer_Init>
     c34:	24052800 	li	a1,10240
     c38:	10400008 	beqz	v0,c5c <func_80B32E34+0xb8>
     c3c:	26040068 	addiu	a0,s0,104
     c40:	3c063e4c 	lui	a2,0x3e4c
     c44:	34c6cccd 	ori	a2,a2,0xcccd
     c48:	26040068 	addiu	a0,s0,104
     c4c:	0c000000 	jal	0 <EnWeiyer_Init>
     c50:	3c054080 	lui	a1,0x4080
     c54:	10000007 	b	c74 <func_80B32E34+0xd0>
     c58:	c600000c 	lwc1	$f0,12(s0)
     c5c:	3c053fa6 	lui	a1,0x3fa6
     c60:	3c063e4c 	lui	a2,0x3e4c
     c64:	34c6cccd 	ori	a2,a2,0xcccd
     c68:	0c000000 	jal	0 <EnWeiyer_Init>
     c6c:	34a56666 	ori	a1,a1,0x6666
     c70:	c600000c 	lwc1	$f0,12(s0)
     c74:	c6100028 	lwc1	$f16,40(s0)
     c78:	02002025 	move	a0,s0
     c7c:	4610003c 	c.lt.s	$f0,$f16
     c80:	00000000 	nop
     c84:	45000014 	bc1f	cd8 <func_80B32E34+0x134>
     c88:	00000000 	nop
     c8c:	c6120080 	lwc1	$f18,128(s0)
     c90:	260400b4 	addiu	a0,s0,180
     c94:	24051000 	li	a1,4096
     c98:	4612003c 	c.lt.s	$f0,$f18
     c9c:	24060002 	li	a2,2
     ca0:	24070100 	li	a3,256
     ca4:	240a0040 	li	t2,64
     ca8:	45020007 	bc1fl	cc8 <func_80B32E34+0x124>
     cac:	e6000028 	swc1	$f0,40(s0)
     cb0:	a60000b4 	sh	zero,180(s0)
     cb4:	0c000000 	jal	0 <EnWeiyer_Init>
     cb8:	02002025 	move	a0,s0
     cbc:	1000002e 	b	d78 <func_80B32E34+0x1d4>
     cc0:	8fbf0024 	lw	ra,36(sp)
     cc4:	e6000028 	swc1	$f0,40(s0)
     cc8:	0c000000 	jal	0 <EnWeiyer_Init>
     ccc:	afaa0010 	sw	t2,16(sp)
     cd0:	1000000c 	b	d04 <func_80B32E34+0x160>
     cd4:	8605008a 	lh	a1,138(s0)
     cd8:	0c000000 	jal	0 <EnWeiyer_Init>
     cdc:	8fa50034 	lw	a1,52(sp)
     ce0:	00022c00 	sll	a1,v0,0x10
     ce4:	240b0040 	li	t3,64
     ce8:	afab0010 	sw	t3,16(sp)
     cec:	00052c03 	sra	a1,a1,0x10
     cf0:	260400b4 	addiu	a0,s0,180
     cf4:	24060002 	li	a2,2
     cf8:	0c000000 	jal	0 <EnWeiyer_Init>
     cfc:	24070100 	li	a3,256
     d00:	8605008a 	lh	a1,138(s0)
     d04:	240c0080 	li	t4,128
     d08:	afac0010 	sw	t4,16(sp)
     d0c:	260400b6 	addiu	a0,s0,182
     d10:	24060002 	li	a2,2
     d14:	0c000000 	jal	0 <EnWeiyer_Init>
     d18:	24070200 	li	a3,512
     d1c:	8fad002c 	lw	t5,44(sp)
     d20:	3c014248 	lui	at,0x4248
     d24:	44814000 	mtc1	at,$f8
     d28:	c5a60084 	lwc1	$f6,132(t5)
     d2c:	3c0141a0 	lui	at,0x41a0
     d30:	4608303c 	c.lt.s	$f6,$f8
     d34:	00000000 	nop
     d38:	4502000f 	bc1fl	d78 <func_80B32E34+0x1d4>
     d3c:	8fbf0024 	lw	ra,36(sp)
     d40:	c6040084 	lwc1	$f4,132(s0)
     d44:	44815000 	mtc1	at,$f10
     d48:	02002025 	move	a0,s0
     d4c:	460a203c 	c.lt.s	$f4,$f10
     d50:	00000000 	nop
     d54:	45020008 	bc1fl	d78 <func_80B32E34+0x1d4>
     d58:	8fbf0024 	lw	ra,36(sp)
     d5c:	0c000000 	jal	0 <EnWeiyer_Init>
     d60:	24052000 	li	a1,8192
     d64:	50400004 	beqzl	v0,d78 <func_80B32E34+0x1d4>
     d68:	8fbf0024 	lw	ra,36(sp)
     d6c:	0c000000 	jal	0 <EnWeiyer_Init>
     d70:	02002025 	move	a0,s0
     d74:	8fbf0024 	lw	ra,36(sp)
     d78:	8fb00020 	lw	s0,32(sp)
     d7c:	27bd0030 	addiu	sp,sp,48
     d80:	03e00008 	jr	ra
     d84:	00000000 	nop

00000d88 <func_80B33018>:
     d88:	27bdffd0 	addiu	sp,sp,-48
     d8c:	afb00020 	sw	s0,32(sp)
     d90:	00808025 	move	s0,a0
     d94:	afbf0024 	sw	ra,36(sp)
     d98:	afa50034 	sw	a1,52(sp)
     d9c:	0c000000 	jal	0 <EnWeiyer_Init>
     da0:	2484014c 	addiu	a0,a0,332
     da4:	260400b4 	addiu	a0,s0,180
     da8:	00002825 	move	a1,zero
     dac:	0c000000 	jal	0 <EnWeiyer_Init>
     db0:	24060800 	li	a2,2048
     db4:	c6040164 	lwc1	$f4,356(s0)
     db8:	3c013e80 	lui	at,0x3e80
     dbc:	44815000 	mtc1	at,$f10
     dc0:	e7a4002c 	swc1	$f4,44(sp)
     dc4:	c606000c 	lwc1	$f6,12(s0)
     dc8:	c6000080 	lwc1	$f0,128(s0)
     dcc:	2604027c 	addiu	a0,s0,636
     dd0:	3c063f80 	lui	a2,0x3f80
     dd4:	46003201 	sub.s	$f8,$f6,$f0
     dd8:	460a4402 	mul.s	$f16,$f8,$f10
     ddc:	46008480 	add.s	$f18,$f16,$f0
     de0:	44059000 	mfc1	a1,$f18
     de4:	0c000000 	jal	0 <EnWeiyer_Init>
     de8:	00000000 	nop
     dec:	3c0140a0 	lui	at,0x40a0
     df0:	44813000 	mtc1	at,$f6
     df4:	c7a4002c 	lwc1	$f4,44(sp)
     df8:	3c010000 	lui	at,0x0
     dfc:	c42a0000 	lwc1	$f10,0(at)
     e00:	46062201 	sub.s	$f8,$f4,$f6
     e04:	460a4302 	mul.s	$f12,$f8,$f10
     e08:	0c000000 	jal	0 <EnWeiyer_Init>
     e0c:	00000000 	nop
     e10:	3c014040 	lui	at,0x4040
     e14:	44819000 	mtc1	at,$f18
     e18:	c610027c 	lwc1	$f16,636(s0)
     e1c:	3c014234 	lui	at,0x4234
     e20:	46120102 	mul.s	$f4,$f0,$f18
     e24:	44814000 	mtc1	at,$f8
     e28:	3c053fa6 	lui	a1,0x3fa6
     e2c:	34a56666 	ori	a1,a1,0x6666
     e30:	26040068 	addiu	a0,s0,104
     e34:	3c063cf5 	lui	a2,0x3cf5
     e38:	46048181 	sub.s	$f6,$f16,$f4
     e3c:	e6060028 	swc1	$f6,40(s0)
     e40:	c7aa002c 	lwc1	$f10,44(sp)
     e44:	4608503e 	c.le.s	$f10,$f8
     e48:	00000000 	nop
     e4c:	45000008 	bc1f	e70 <func_80B33018+0xe8>
     e50:	00000000 	nop
     e54:	3c063cf5 	lui	a2,0x3cf5
     e58:	34c6c28f 	ori	a2,a2,0xc28f
     e5c:	26040068 	addiu	a0,s0,104
     e60:	0c000000 	jal	0 <EnWeiyer_Init>
     e64:	3c053f80 	lui	a1,0x3f80
     e68:	10000004 	b	e7c <func_80B33018+0xf4>
     e6c:	86020194 	lh	v0,404(s0)
     e70:	0c000000 	jal	0 <EnWeiyer_Init>
     e74:	34c6c28f 	ori	a2,a2,0xc28f
     e78:	86020194 	lh	v0,404(s0)
     e7c:	260400b6 	addiu	a0,s0,182
     e80:	24060002 	li	a2,2
     e84:	10400003 	beqz	v0,e94 <func_80B33018+0x10c>
     e88:	24070200 	li	a3,512
     e8c:	244effff 	addiu	t6,v0,-1
     e90:	a60e0194 	sh	t6,404(s0)
     e94:	960f0088 	lhu	t7,136(s0)
     e98:	24080080 	li	t0,128
     e9c:	31f80008 	andi	t8,t7,0x8
     ea0:	53000004 	beqzl	t8,eb4 <func_80B33018+0x12c>
     ea4:	86050196 	lh	a1,406(s0)
     ea8:	8619007e 	lh	t9,126(s0)
     eac:	a6190196 	sh	t9,406(s0)
     eb0:	86050196 	lh	a1,406(s0)
     eb4:	0c000000 	jal	0 <EnWeiyer_Init>
     eb8:	afa80010 	sw	t0,16(sp)
     ebc:	54400006 	bnezl	v0,ed8 <func_80B33018+0x150>
     ec0:	c600000c 	lwc1	$f0,12(s0)
     ec4:	8609008a 	lh	t1,138(s0)
     ec8:	34018000 	li	at,0x8000
     ecc:	01215021 	addu	t2,t1,at
     ed0:	a60a0196 	sh	t2,406(s0)
     ed4:	c600000c 	lwc1	$f0,12(s0)
     ed8:	c6120028 	lwc1	$f18,40(s0)
     edc:	4612003c 	c.lt.s	$f0,$f18
     ee0:	00000000 	nop
     ee4:	4502000c 	bc1fl	f18 <func_80B33018+0x190>
     ee8:	860b0194 	lh	t3,404(s0)
     eec:	c6100080 	lwc1	$f16,128(s0)
     ef0:	4610003c 	c.lt.s	$f0,$f16
     ef4:	00000000 	nop
     ef8:	45020006 	bc1fl	f14 <func_80B33018+0x18c>
     efc:	e6000028 	swc1	$f0,40(s0)
     f00:	0c000000 	jal	0 <EnWeiyer_Init>
     f04:	02002025 	move	a0,s0
     f08:	10000003 	b	f18 <func_80B33018+0x190>
     f0c:	860b0194 	lh	t3,404(s0)
     f10:	e6000028 	swc1	$f0,40(s0)
     f14:	860b0194 	lh	t3,404(s0)
     f18:	55600004 	bnezl	t3,f2c <func_80B33018+0x1a4>
     f1c:	8fbf0024 	lw	ra,36(sp)
     f20:	0c000000 	jal	0 <EnWeiyer_Init>
     f24:	02002025 	move	a0,s0
     f28:	8fbf0024 	lw	ra,36(sp)
     f2c:	8fb00020 	lw	s0,32(sp)
     f30:	27bd0030 	addiu	sp,sp,48
     f34:	03e00008 	jr	ra
     f38:	00000000 	nop

00000f3c <func_80B331CC>:
     f3c:	27bdffe0 	addiu	sp,sp,-32
     f40:	afb00018 	sw	s0,24(sp)
     f44:	00808025 	move	s0,a0
     f48:	afbf001c 	sw	ra,28(sp)
     f4c:	afa50024 	sw	a1,36(sp)
     f50:	0c000000 	jal	0 <EnWeiyer_Init>
     f54:	2484014c 	addiu	a0,a0,332
     f58:	86020194 	lh	v0,404(s0)
     f5c:	26040032 	addiu	a0,s0,50
     f60:	2406038e 	li	a2,910
     f64:	10400002 	beqz	v0,f70 <func_80B331CC+0x34>
     f68:	244effff 	addiu	t6,v0,-1
     f6c:	a60e0194 	sh	t6,404(s0)
     f70:	960f0088 	lhu	t7,136(s0)
     f74:	31f80008 	andi	t8,t7,0x8
     f78:	53000005 	beqzl	t8,f90 <func_80B331CC+0x54>
     f7c:	8608008a 	lh	t0,138(s0)
     f80:	8619007e 	lh	t9,126(s0)
     f84:	10000005 	b	f9c <func_80B331CC+0x60>
     f88:	a6190196 	sh	t9,406(s0)
     f8c:	8608008a 	lh	t0,138(s0)
     f90:	34018000 	li	at,0x8000
     f94:	01014821 	addu	t1,t0,at
     f98:	a6090196 	sh	t1,406(s0)
     f9c:	0c000000 	jal	0 <EnWeiyer_Init>
     fa0:	86050196 	lh	a1,406(s0)
     fa4:	260400b4 	addiu	a0,s0,180
     fa8:	00002825 	move	a1,zero
     fac:	0c000000 	jal	0 <EnWeiyer_Init>
     fb0:	24060200 	li	a2,512
     fb4:	860a0194 	lh	t2,404(s0)
     fb8:	3c010000 	lui	at,0x0
     fbc:	c4280000 	lwc1	$f8,0(at)
     fc0:	448a2000 	mtc1	t2,$f4
     fc4:	00000000 	nop
     fc8:	468021a0 	cvt.s.w	$f6,$f4
     fcc:	46083302 	mul.s	$f12,$f6,$f8
     fd0:	0c000000 	jal	0 <EnWeiyer_Init>
     fd4:	00000000 	nop
     fd8:	3c0145a0 	lui	at,0x45a0
     fdc:	44815000 	mtc1	at,$f10
     fe0:	860d0194 	lh	t5,404(s0)
     fe4:	460a0402 	mul.s	$f16,$f0,$f10
     fe8:	4600848d 	trunc.w.s	$f18,$f16
     fec:	440c9000 	mfc1	t4,$f18
     ff0:	15a00007 	bnez	t5,1010 <func_80B331CC+0xd4>
     ff4:	a60c00b8 	sh	t4,184(s0)
     ff8:	920e0295 	lbu	t6,661(s0)
     ffc:	a60000b8 	sh	zero,184(s0)
    1000:	02002025 	move	a0,s0
    1004:	35cf0001 	ori	t7,t6,0x1
    1008:	0c000000 	jal	0 <EnWeiyer_Init>
    100c:	a20f0295 	sb	t7,661(s0)
    1010:	8fbf001c 	lw	ra,28(sp)
    1014:	8fb00018 	lw	s0,24(sp)
    1018:	27bd0020 	addiu	sp,sp,32
    101c:	03e00008 	jr	ra
    1020:	00000000 	nop

00001024 <func_80B332B4>:
    1024:	27bdffe8 	addiu	sp,sp,-24
    1028:	afbf0014 	sw	ra,20(sp)
    102c:	00803825 	move	a3,a0
    1030:	afa5001c 	sw	a1,28(sp)
    1034:	afa70018 	sw	a3,24(sp)
    1038:	0c000000 	jal	0 <EnWeiyer_Init>
    103c:	2484014c 	addiu	a0,a0,332
    1040:	8fa70018 	lw	a3,24(sp)
    1044:	2405c000 	li	a1,-16384
    1048:	24060400 	li	a2,1024
    104c:	0c000000 	jal	0 <EnWeiyer_Init>
    1050:	24e400b4 	addiu	a0,a3,180
    1054:	8fa70018 	lw	a3,24(sp)
    1058:	84ee00b8 	lh	t6,184(a3)
    105c:	84e20194 	lh	v0,404(a3)
    1060:	25cf1000 	addiu	t7,t6,4096
    1064:	10400004 	beqz	v0,1078 <func_80B332B4+0x54>
    1068:	a4ef00b8 	sh	t7,184(a3)
    106c:	2458ffff 	addiu	t8,v0,-1
    1070:	a4f80194 	sh	t8,404(a3)
    1074:	84e20194 	lh	v0,404(a3)
    1078:	10400005 	beqz	v0,1090 <func_80B332B4+0x6c>
    107c:	00000000 	nop
    1080:	94f90088 	lhu	t9,136(a3)
    1084:	33280010 	andi	t0,t9,0x10
    1088:	51000004 	beqzl	t0,109c <func_80B332B4+0x78>
    108c:	8fbf0014 	lw	ra,20(sp)
    1090:	0c000000 	jal	0 <EnWeiyer_Init>
    1094:	00e02025 	move	a0,a3
    1098:	8fbf0014 	lw	ra,20(sp)
    109c:	27bd0018 	addiu	sp,sp,24
    10a0:	03e00008 	jr	ra
    10a4:	00000000 	nop

000010a8 <func_80B33338>:
    10a8:	27bdffe0 	addiu	sp,sp,-32
    10ac:	afbf001c 	sw	ra,28(sp)
    10b0:	afb00018 	sw	s0,24(sp)
    10b4:	afa50024 	sw	a1,36(sp)
    10b8:	908200c8 	lbu	v0,200(a0)
    10bc:	3c014000 	lui	at,0x4000
    10c0:	44813000 	mtc1	at,$f6
    10c4:	2442fffb 	addiu	v0,v0,-5
    10c8:	00021400 	sll	v0,v0,0x10
    10cc:	00021403 	sra	v0,v0,0x10
    10d0:	04410003 	bgez	v0,10e0 <func_80B33338+0x38>
    10d4:	00808025 	move	s0,a0
    10d8:	10000002 	b	10e4 <func_80B33338+0x3c>
    10dc:	a08000c8 	sb	zero,200(a0)
    10e0:	a20200c8 	sb	v0,200(s0)
    10e4:	c6040028 	lwc1	$f4,40(s0)
    10e8:	920e00c8 	lbu	t6,200(s0)
    10ec:	02002825 	move	a1,s0
    10f0:	46062201 	sub.s	$f8,$f4,$f6
    10f4:	26060024 	addiu	a2,s0,36
    10f8:	240700e0 	li	a3,224
    10fc:	15c00005 	bnez	t6,1114 <func_80B33338+0x6c>
    1100:	e6080028 	swc1	$f8,40(s0)
    1104:	0c000000 	jal	0 <EnWeiyer_Init>
    1108:	8fa40024 	lw	a0,36(sp)
    110c:	0c000000 	jal	0 <EnWeiyer_Init>
    1110:	02002025 	move	a0,s0
    1114:	8fbf001c 	lw	ra,28(sp)
    1118:	8fb00018 	lw	s0,24(sp)
    111c:	27bd0020 	addiu	sp,sp,32
    1120:	03e00008 	jr	ra
    1124:	00000000 	nop

00001128 <func_80B333B8>:
    1128:	27bdffd8 	addiu	sp,sp,-40
    112c:	afbf001c 	sw	ra,28(sp)
    1130:	afb00018 	sw	s0,24(sp)
    1134:	afa5002c 	sw	a1,44(sp)
    1138:	84820194 	lh	v0,404(a0)
    113c:	00808025 	move	s0,a0
    1140:	00002825 	move	a1,zero
    1144:	10400003 	beqz	v0,1154 <func_80B333B8+0x2c>
    1148:	24060200 	li	a2,512
    114c:	244effff 	addiu	t6,v0,-1
    1150:	a48e0194 	sh	t6,404(a0)
    1154:	0c000000 	jal	0 <EnWeiyer_Init>
    1158:	260400b4 	addiu	a0,s0,180
    115c:	260400b8 	addiu	a0,s0,184
    1160:	00002825 	move	a1,zero
    1164:	0c000000 	jal	0 <EnWeiyer_Init>
    1168:	24060200 	li	a2,512
    116c:	2604014c 	addiu	a0,s0,332
    1170:	0c000000 	jal	0 <EnWeiyer_Init>
    1174:	afa40024 	sw	a0,36(sp)
    1178:	c604000c 	lwc1	$f4,12(s0)
    117c:	c6060080 	lwc1	$f6,128(s0)
    1180:	8fa40024 	lw	a0,36(sp)
    1184:	4606203c 	c.lt.s	$f4,$f6
    1188:	00000000 	nop
    118c:	4502000f 	bc1fl	11cc <func_80B333B8+0xa4>
    1190:	86190194 	lh	t9,404(s0)
    1194:	0c000000 	jal	0 <EnWeiyer_Init>
    1198:	24050000 	li	a1,0
    119c:	10400003 	beqz	v0,11ac <func_80B333B8+0x84>
    11a0:	02002025 	move	a0,s0
    11a4:	0c000000 	jal	0 <EnWeiyer_Init>
    11a8:	2405394e 	li	a1,14670
    11ac:	960f0088 	lhu	t7,136(s0)
    11b0:	02002025 	move	a0,s0
    11b4:	31f80002 	andi	t8,t7,0x2
    11b8:	53000004 	beqzl	t8,11cc <func_80B333B8+0xa4>
    11bc:	86190194 	lh	t9,404(s0)
    11c0:	0c000000 	jal	0 <EnWeiyer_Init>
    11c4:	2405387b 	li	a1,14459
    11c8:	86190194 	lh	t9,404(s0)
    11cc:	5720000b 	bnezl	t9,11fc <func_80B333B8+0xd4>
    11d0:	8fbf001c 	lw	ra,28(sp)
    11d4:	44804000 	mtc1	zero,$f8
    11d8:	44805000 	mtc1	zero,$f10
    11dc:	3c080000 	lui	t0,0x0
    11e0:	e608006c 	swc1	$f8,108(s0)
    11e4:	e60a0060 	swc1	$f10,96(s0)
    11e8:	85080000 	lh	t0,0(t0)
    11ec:	02002025 	move	a0,s0
    11f0:	0c000000 	jal	0 <EnWeiyer_Init>
    11f4:	a60802c6 	sh	t0,710(s0)
    11f8:	8fbf001c 	lw	ra,28(sp)
    11fc:	8fb00018 	lw	s0,24(sp)
    1200:	27bd0028 	addiu	sp,sp,40
    1204:	03e00008 	jr	ra
    1208:	00000000 	nop

0000120c <func_80B3349C>:
    120c:	27bdffd0 	addiu	sp,sp,-48
    1210:	afbf0024 	sw	ra,36(sp)
    1214:	afb00020 	sw	s0,32(sp)
    1218:	afa50034 	sw	a1,52(sp)
    121c:	8caf1c44 	lw	t7,7236(a1)
    1220:	00808025 	move	s0,a0
    1224:	2484014c 	addiu	a0,a0,332
    1228:	0c000000 	jal	0 <EnWeiyer_Init>
    122c:	afaf002c 	sw	t7,44(sp)
    1230:	3c0141a0 	lui	at,0x41a0
    1234:	44813000 	mtc1	at,$f6
    1238:	c604000c 	lwc1	$f4,12(s0)
    123c:	8fb8002c 	lw	t8,44(sp)
    1240:	00002025 	move	a0,zero
    1244:	46062200 	add.s	$f8,$f4,$f6
    1248:	c70a0028 	lwc1	$f10,40(t8)
    124c:	460a403e 	c.le.s	$f8,$f10
    1250:	00000000 	nop
    1254:	45020003 	bc1fl	1264 <func_80B3349C+0x58>
    1258:	86030194 	lh	v1,404(s0)
    125c:	24040001 	li	a0,1
    1260:	86030194 	lh	v1,404(s0)
    1264:	2401ffff 	li	at,-1
    1268:	1461001f 	bne	v1,at,12e8 <func_80B3349C+0xdc>
    126c:	00000000 	nop
    1270:	14800005 	bnez	a0,1288 <func_80B3349C+0x7c>
    1274:	00000000 	nop
    1278:	92190294 	lbu	t9,660(s0)
    127c:	33280002 	andi	t0,t9,0x2
    1280:	51000006 	beqzl	t0,129c <func_80B3349C+0x90>
    1284:	c6100084 	lwc1	$f16,132(s0)
    1288:	0c000000 	jal	0 <EnWeiyer_Init>
    128c:	02002025 	move	a0,s0
    1290:	10000056 	b	13ec <func_80B3349C+0x1e0>
    1294:	8fbf0024 	lw	ra,36(sp)
    1298:	c6100084 	lwc1	$f16,132(s0)
    129c:	44809000 	mtc1	zero,$f18
    12a0:	2409000a 	li	t1,10
    12a4:	26050024 	addiu	a1,s0,36
    12a8:	4612803c 	c.lt.s	$f16,$f18
    12ac:	00003025 	move	a2,zero
    12b0:	00003825 	move	a3,zero
    12b4:	240a0001 	li	t2,1
    12b8:	4500004b 	bc1f	13e8 <func_80B3349C+0x1dc>
    12bc:	240b0190 	li	t3,400
    12c0:	a6090194 	sh	t1,404(s0)
    12c4:	afab0014 	sw	t3,20(sp)
    12c8:	afaa0010 	sw	t2,16(sp)
    12cc:	0c000000 	jal	0 <EnWeiyer_Init>
    12d0:	8fa40034 	lw	a0,52(sp)
    12d4:	02002025 	move	a0,s0
    12d8:	0c000000 	jal	0 <EnWeiyer_Init>
    12dc:	240538c2 	li	a1,14530
    12e0:	10000042 	b	13ec <func_80B3349C+0x1e0>
    12e4:	8fbf0024 	lw	ra,36(sp)
    12e8:	54800006 	bnezl	a0,1304 <func_80B3349C+0xf8>
    12ec:	a6000194 	sh	zero,404(s0)
    12f0:	920c0294 	lbu	t4,660(s0)
    12f4:	318d0002 	andi	t5,t4,0x2
    12f8:	11a00004 	beqz	t5,130c <func_80B3349C+0x100>
    12fc:	00000000 	nop
    1300:	a6000194 	sh	zero,404(s0)
    1304:	10000005 	b	131c <func_80B3349C+0x110>
    1308:	86030194 	lh	v1,404(s0)
    130c:	10600003 	beqz	v1,131c <func_80B3349C+0x110>
    1310:	246effff 	addiu	t6,v1,-1
    1314:	a60e0194 	sh	t6,404(s0)
    1318:	86030194 	lh	v1,404(s0)
    131c:	14600003 	bnez	v1,132c <func_80B3349C+0x120>
    1320:	02002025 	move	a0,s0
    1324:	10000007 	b	1344 <func_80B3349C+0x138>
    1328:	24051800 	li	a1,6144
    132c:	0c000000 	jal	0 <EnWeiyer_Init>
    1330:	8fa50034 	lw	a1,52(sp)
    1334:	00022c00 	sll	a1,v0,0x10
    1338:	04410002 	bgez	v0,1344 <func_80B3349C+0x138>
    133c:	00052c03 	sra	a1,a1,0x10
    1340:	00002825 	move	a1,zero
    1344:	860f00b4 	lh	t7,180(s0)
    1348:	260400b4 	addiu	a0,s0,180
    134c:	01e5082a 	slt	at,t7,a1
    1350:	50200004 	beqzl	at,1364 <func_80B3349C+0x158>
    1354:	96020088 	lhu	v0,136(s0)
    1358:	0c000000 	jal	0 <EnWeiyer_Init>
    135c:	24060400 	li	a2,1024
    1360:	96020088 	lhu	v0,136(s0)
    1364:	30580001 	andi	t8,v0,0x1
    1368:	13000005 	beqz	t8,1380 <func_80B3349C+0x174>
    136c:	30590020 	andi	t9,v0,0x20
    1370:	0c000000 	jal	0 <EnWeiyer_Init>
    1374:	02002025 	move	a0,s0
    1378:	1000001c 	b	13ec <func_80B3349C+0x1e0>
    137c:	8fbf0024 	lw	ra,36(sp)
    1380:	13200013 	beqz	t9,13d0 <func_80B3349C+0x1c4>
    1384:	260400b6 	addiu	a0,s0,182
    1388:	860800b4 	lh	t0,180(s0)
    138c:	26050024 	addiu	a1,s0,36
    1390:	00003025 	move	a2,zero
    1394:	1900000e 	blez	t0,13d0 <func_80B3349C+0x1c4>
    1398:	00003825 	move	a3,zero
    139c:	24090001 	li	t1,1
    13a0:	240a0190 	li	t2,400
    13a4:	afaa0014 	sw	t2,20(sp)
    13a8:	afa90010 	sw	t1,16(sp)
    13ac:	0c000000 	jal	0 <EnWeiyer_Init>
    13b0:	8fa40034 	lw	a0,52(sp)
    13b4:	02002025 	move	a0,s0
    13b8:	0c000000 	jal	0 <EnWeiyer_Init>
    13bc:	240538c4 	li	a1,14532
    13c0:	0c000000 	jal	0 <EnWeiyer_Init>
    13c4:	02002025 	move	a0,s0
    13c8:	10000008 	b	13ec <func_80B3349C+0x1e0>
    13cc:	8fbf0024 	lw	ra,36(sp)
    13d0:	8605008a 	lh	a1,138(s0)
    13d4:	240b0080 	li	t3,128
    13d8:	afab0010 	sw	t3,16(sp)
    13dc:	24060008 	li	a2,8
    13e0:	0c000000 	jal	0 <EnWeiyer_Init>
    13e4:	24070100 	li	a3,256
    13e8:	8fbf0024 	lw	ra,36(sp)
    13ec:	8fb00020 	lw	s0,32(sp)
    13f0:	27bd0030 	addiu	sp,sp,48
    13f4:	03e00008 	jr	ra
    13f8:	00000000 	nop

000013fc <func_80B3368C>:
    13fc:	27bdffe0 	addiu	sp,sp,-32
    1400:	afbf001c 	sw	ra,28(sp)
    1404:	afb00018 	sw	s0,24(sp)
    1408:	afa50024 	sw	a1,36(sp)
    140c:	90820295 	lbu	v0,661(a0)
    1410:	00808025 	move	s0,a0
    1414:	2605029c 	addiu	a1,s0,668
    1418:	304e0002 	andi	t6,v0,0x2
    141c:	11c00029 	beqz	t6,14c4 <func_80B3368C+0xc8>
    1420:	304ffffd 	andi	t7,v0,0xfffd
    1424:	a08f0295 	sb	t7,661(a0)
    1428:	0c000000 	jal	0 <EnWeiyer_Init>
    142c:	24060001 	li	a2,1
    1430:	920200b1 	lbu	v0,177(s0)
    1434:	24010001 	li	at,1
    1438:	14400004 	bnez	v0,144c <func_80B3368C+0x50>
    143c:	00000000 	nop
    1440:	921800b0 	lbu	t8,176(s0)
    1444:	53000020 	beqzl	t8,14c8 <func_80B3368C+0xcc>
    1448:	8fbf001c 	lw	ra,28(sp)
    144c:	1441000a 	bne	v0,at,1478 <func_80B3368C+0x7c>
    1450:	00000000 	nop
    1454:	8e080190 	lw	t0,400(s0)
    1458:	3c190000 	lui	t9,0x0
    145c:	27390000 	addiu	t9,t9,0
    1460:	53280019 	beql	t9,t0,14c8 <func_80B3368C+0xcc>
    1464:	8fbf001c 	lw	ra,28(sp)
    1468:	0c000000 	jal	0 <EnWeiyer_Init>
    146c:	02002025 	move	a0,s0
    1470:	10000015 	b	14c8 <func_80B3368C+0xcc>
    1474:	8fbf001c 	lw	ra,28(sp)
    1478:	0c000000 	jal	0 <EnWeiyer_Init>
    147c:	02002025 	move	a0,s0
    1480:	1440000e 	bnez	v0,14bc <func_80B3368C+0xc0>
    1484:	8fa40024 	lw	a0,36(sp)
    1488:	0c000000 	jal	0 <EnWeiyer_Init>
    148c:	02002825 	move	a1,s0
    1490:	02002025 	move	a0,s0
    1494:	0c000000 	jal	0 <EnWeiyer_Init>
    1498:	2405394d 	li	a1,14669
    149c:	8e090004 	lw	t1,4(s0)
    14a0:	2401fffe 	li	at,-2
    14a4:	02002025 	move	a0,s0
    14a8:	01215024 	and	t2,t1,at
    14ac:	0c000000 	jal	0 <EnWeiyer_Init>
    14b0:	ae0a0004 	sw	t2,4(s0)
    14b4:	10000004 	b	14c8 <func_80B3368C+0xcc>
    14b8:	8fbf001c 	lw	ra,28(sp)
    14bc:	0c000000 	jal	0 <EnWeiyer_Init>
    14c0:	02002025 	move	a0,s0
    14c4:	8fbf001c 	lw	ra,28(sp)
    14c8:	8fb00018 	lw	s0,24(sp)
    14cc:	27bd0020 	addiu	sp,sp,32
    14d0:	03e00008 	jr	ra
    14d4:	00000000 	nop

000014d8 <EnWeiyer_Update>:
    14d8:	27bdffc8 	addiu	sp,sp,-56
    14dc:	afbf0024 	sw	ra,36(sp)
    14e0:	afb10020 	sw	s1,32(sp)
    14e4:	afb0001c 	sw	s0,28(sp)
    14e8:	c4860028 	lwc1	$f6,40(a0)
    14ec:	c4840084 	lwc1	$f4,132(a0)
    14f0:	3c0140a0 	lui	at,0x40a0
    14f4:	44815000 	mtc1	at,$f10
    14f8:	46062200 	add.s	$f8,$f4,$f6
    14fc:	00808025 	move	s0,a0
    1500:	00a08825 	move	s1,a1
    1504:	460a4401 	sub.s	$f16,$f8,$f10
    1508:	0c000000 	jal	0 <EnWeiyer_Init>
    150c:	e490000c 	swc1	$f16,12(a0)
    1510:	8e190190 	lw	t9,400(s0)
    1514:	02002025 	move	a0,s0
    1518:	02202825 	move	a1,s1
    151c:	0320f809 	jalr	t9
    1520:	00000000 	nop
    1524:	860f00b4 	lh	t7,180(s0)
    1528:	860e00b6 	lh	t6,182(s0)
    152c:	000fc023 	negu	t8,t7
    1530:	a6180030 	sh	t8,48(s0)
    1534:	86080030 	lh	t0,48(s0)
    1538:	a60e0032 	sh	t6,50(s0)
    153c:	11000006 	beqz	t0,1558 <EnWeiyer_Update+0x80>
    1540:	00000000 	nop
    1544:	8e0a0190 	lw	t2,400(s0)
    1548:	3c090000 	lui	t1,0x0
    154c:	25290000 	addiu	t1,t1,0
    1550:	152a0005 	bne	t1,t2,1568 <EnWeiyer_Update+0x90>
    1554:	00000000 	nop
    1558:	0c000000 	jal	0 <EnWeiyer_Init>
    155c:	02002025 	move	a0,s0
    1560:	10000004 	b	1574 <EnWeiyer_Update+0x9c>
    1564:	3c014234 	lui	at,0x4234
    1568:	0c000000 	jal	0 <EnWeiyer_Init>
    156c:	02002025 	move	a0,s0
    1570:	3c014234 	lui	at,0x4234
    1574:	44819000 	mtc1	at,$f18
    1578:	240b0007 	li	t3,7
    157c:	afab0014 	sw	t3,20(sp)
    1580:	02202025 	move	a0,s1
    1584:	02002825 	move	a1,s0
    1588:	3c064120 	lui	a2,0x4120
    158c:	3c0741f0 	lui	a3,0x41f0
    1590:	0c000000 	jal	0 <EnWeiyer_Init>
    1594:	e7b20010 	swc1	$f18,16(sp)
    1598:	02002025 	move	a0,s0
    159c:	0c000000 	jal	0 <EnWeiyer_Init>
    15a0:	24050000 	li	a1,0
    15a4:	92020294 	lbu	v0,660(s0)
    15a8:	02002025 	move	a0,s0
    15ac:	240539a2 	li	a1,14754
    15b0:	304c0002 	andi	t4,v0,0x2
    15b4:	11800003 	beqz	t4,15c4 <EnWeiyer_Update+0xec>
    15b8:	304dfffc 	andi	t5,v0,0xfffc
    15bc:	0c000000 	jal	0 <EnWeiyer_Init>
    15c0:	a20d0294 	sb	t5,660(s0)
    15c4:	26050284 	addiu	a1,s0,644
    15c8:	afa50028 	sw	a1,40(sp)
    15cc:	0c000000 	jal	0 <EnWeiyer_Init>
    15d0:	02002025 	move	a0,s0
    15d4:	92190294 	lbu	t9,660(s0)
    15d8:	3c010001 	lui	at,0x1
    15dc:	34211e60 	ori	at,at,0x1e60
    15e0:	332e0001 	andi	t6,t9,0x1
    15e4:	11c00004 	beqz	t6,15f8 <EnWeiyer_Update+0x120>
    15e8:	02202025 	move	a0,s1
    15ec:	02212821 	addu	a1,s1,at
    15f0:	0c000000 	jal	0 <EnWeiyer_Init>
    15f4:	8fa60028 	lw	a2,40(sp)
    15f8:	920f0295 	lbu	t7,661(s0)
    15fc:	3c010001 	lui	at,0x1
    1600:	34211e60 	ori	at,at,0x1e60
    1604:	31f80001 	andi	t8,t7,0x1
    1608:	13000006 	beqz	t8,1624 <EnWeiyer_Update+0x14c>
    160c:	02212821 	addu	a1,s1,at
    1610:	02202025 	move	a0,s1
    1614:	8fa60028 	lw	a2,40(sp)
    1618:	0c000000 	jal	0 <EnWeiyer_Init>
    161c:	afa5002c 	sw	a1,44(sp)
    1620:	8fa5002c 	lw	a1,44(sp)
    1624:	02202025 	move	a0,s1
    1628:	0c000000 	jal	0 <EnWeiyer_Init>
    162c:	8fa60028 	lw	a2,40(sp)
    1630:	8fbf0024 	lw	ra,36(sp)
    1634:	8fb0001c 	lw	s0,28(sp)
    1638:	8fb10020 	lw	s1,32(sp)
    163c:	03e00008 	jr	ra
    1640:	27bd0038 	addiu	sp,sp,56

00001644 <func_80B338D4>:
    1644:	24010001 	li	at,1
    1648:	afa40000 	sw	a0,0(sp)
    164c:	14a10006 	bne	a1,at,1668 <func_80B338D4+0x24>
    1650:	afa60008 	sw	a2,8(sp)
    1654:	3c0144fa 	lui	at,0x44fa
    1658:	44813000 	mtc1	at,$f6
    165c:	c4e40008 	lwc1	$f4,8(a3)
    1660:	46062200 	add.s	$f8,$f4,$f6
    1664:	e4e80008 	swc1	$f8,8(a3)
    1668:	03e00008 	jr	ra
    166c:	00001025 	move	v0,zero

00001670 <EnWeiyer_Draw>:
    1670:	27bdff98 	addiu	sp,sp,-104
    1674:	afb20030 	sw	s2,48(sp)
    1678:	00a09025 	move	s2,a1
    167c:	afbf0034 	sw	ra,52(sp)
    1680:	afb1002c 	sw	s1,44(sp)
    1684:	afb00028 	sw	s0,40(sp)
    1688:	8ca50000 	lw	a1,0(a1)
    168c:	00808825 	move	s1,a0
    1690:	3c060000 	lui	a2,0x0
    1694:	24c60000 	addiu	a2,a2,0
    1698:	27a40050 	addiu	a0,sp,80
    169c:	240704a9 	li	a3,1193
    16a0:	0c000000 	jal	0 <EnWeiyer_Init>
    16a4:	00a08025 	move	s0,a1
    16a8:	8e2f0190 	lw	t7,400(s1)
    16ac:	3c0e0000 	lui	t6,0x0
    16b0:	25ce0000 	addiu	t6,t6,0
    16b4:	11cf001f 	beq	t6,t7,1734 <EnWeiyer_Draw+0xc4>
    16b8:	00000000 	nop
    16bc:	0c000000 	jal	0 <EnWeiyer_Init>
    16c0:	8e440000 	lw	a0,0(s2)
    16c4:	8e0302c0 	lw	v1,704(s0)
    16c8:	3c19db06 	lui	t9,0xdb06
    16cc:	3c080000 	lui	t0,0x0
    16d0:	24780008 	addiu	t8,v1,8
    16d4:	ae1802c0 	sw	t8,704(s0)
    16d8:	25080010 	addiu	t0,t0,16
    16dc:	37390020 	ori	t9,t9,0x20
    16e0:	ac790000 	sw	t9,0(v1)
    16e4:	ac680004 	sw	t0,4(v1)
    16e8:	8e0302c0 	lw	v1,704(s0)
    16ec:	3c0afb00 	lui	t2,0xfb00
    16f0:	240bffff 	li	t3,-1
    16f4:	24690008 	addiu	t1,v1,8
    16f8:	ae0902c0 	sw	t1,704(s0)
    16fc:	ac6b0004 	sw	t3,4(v1)
    1700:	ac6a0000 	sw	t2,0(v1)
    1704:	8e26016c 	lw	a2,364(s1)
    1708:	8e250150 	lw	a1,336(s1)
    170c:	afb10014 	sw	s1,20(sp)
    1710:	afa00010 	sw	zero,16(sp)
    1714:	8e0c02c0 	lw	t4,704(s0)
    1718:	3c070000 	lui	a3,0x0
    171c:	24e70000 	addiu	a3,a3,0
    1720:	02402025 	move	a0,s2
    1724:	0c000000 	jal	0 <EnWeiyer_Init>
    1728:	afac0018 	sw	t4,24(sp)
    172c:	10000020 	b	17b0 <EnWeiyer_Draw+0x140>
    1730:	ae0202c0 	sw	v0,704(s0)
    1734:	0c000000 	jal	0 <EnWeiyer_Init>
    1738:	8e440000 	lw	a0,0(s2)
    173c:	8e0302d0 	lw	v1,720(s0)
    1740:	3c0edb06 	lui	t6,0xdb06
    1744:	3c0f0000 	lui	t7,0x0
    1748:	246d0008 	addiu	t5,v1,8
    174c:	ae0d02d0 	sw	t5,720(s0)
    1750:	25ef0000 	addiu	t7,t7,0
    1754:	35ce0020 	ori	t6,t6,0x20
    1758:	ac6e0000 	sw	t6,0(v1)
    175c:	ac6f0004 	sw	t7,4(v1)
    1760:	8e0302d0 	lw	v1,720(s0)
    1764:	3c19fb00 	lui	t9,0xfb00
    1768:	2401ff00 	li	at,-256
    176c:	24780008 	addiu	t8,v1,8
    1770:	ae1802d0 	sw	t8,720(s0)
    1774:	ac790000 	sw	t9,0(v1)
    1778:	922900c8 	lbu	t1,200(s1)
    177c:	3c070000 	lui	a3,0x0
    1780:	24e70000 	addiu	a3,a3,0
    1784:	01215025 	or	t2,t1,at
    1788:	ac6a0004 	sw	t2,4(v1)
    178c:	8e26016c 	lw	a2,364(s1)
    1790:	8e250150 	lw	a1,336(s1)
    1794:	afb10014 	sw	s1,20(sp)
    1798:	afa00010 	sw	zero,16(sp)
    179c:	8e0b02d0 	lw	t3,720(s0)
    17a0:	02402025 	move	a0,s2
    17a4:	0c000000 	jal	0 <EnWeiyer_Init>
    17a8:	afab0018 	sw	t3,24(sp)
    17ac:	ae0202d0 	sw	v0,720(s0)
    17b0:	3c060000 	lui	a2,0x0
    17b4:	24c60000 	addiu	a2,a2,0
    17b8:	27a40050 	addiu	a0,sp,80
    17bc:	8e450000 	lw	a1,0(s2)
    17c0:	0c000000 	jal	0 <EnWeiyer_Init>
    17c4:	240704d8 	li	a3,1240
    17c8:	8fbf0034 	lw	ra,52(sp)
    17cc:	8fb00028 	lw	s0,40(sp)
    17d0:	8fb1002c 	lw	s1,44(sp)
    17d4:	8fb20030 	lw	s2,48(sp)
    17d8:	03e00008 	jr	ra
    17dc:	27bd0068 	addiu	sp,sp,104
