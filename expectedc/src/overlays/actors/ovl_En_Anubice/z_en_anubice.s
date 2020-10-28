
build/src/overlays/actors/ovl_En_Anubice/z_en_anubice.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809B1120>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa50024 	sw	a1,36(sp)
      10:	3c010000 	lui	at,0x0
      14:	c4260000 	lwc1	$f6,0(at)
      18:	c4840268 	lwc1	$f4,616(a0)
      1c:	8ca21c44 	lw	v0,7236(a1)
      20:	c4900274 	lwc1	$f16,628(a0)
      24:	46062200 	add.s	$f8,$f4,$f6
      28:	00808025 	move	s0,a0
      2c:	3c063dcc 	lui	a2,0x3dcc
      30:	34c6cccd 	ori	a2,a2,0xcccd
      34:	e4880268 	swc1	$f8,616(a0)
      38:	c44a0028 	lwc1	$f10,40(v0)
      3c:	24840028 	addiu	a0,a0,40
      40:	3c074120 	lui	a3,0x4120
      44:	46105480 	add.s	$f18,$f10,$f16
      48:	e4920248 	swc1	$f18,584(a0)
      4c:	0c000000 	jal	0 <func_809B1120>
      50:	8e050270 	lw	a1,624(s0)
      54:	3c063dcc 	lui	a2,0x3dcc
      58:	34c6cccd 	ori	a2,a2,0xcccd
      5c:	26040274 	addiu	a0,s0,628
      60:	3c054120 	lui	a1,0x4120
      64:	0c000000 	jal	0 <func_809B1120>
      68:	3c073f00 	lui	a3,0x3f00
      6c:	c6040268 	lwc1	$f4,616(s0)
      70:	4600218d 	trunc.w.s	$f6,$f4
      74:	44043000 	mfc1	a0,$f6
      78:	00000000 	nop
      7c:	00042400 	sll	a0,a0,0x10
      80:	0c000000 	jal	0 <func_809B1120>
      84:	00042403 	sra	a0,a0,0x10
      88:	e6000060 	swc1	$f0,96(s0)
      8c:	8fbf001c 	lw	ra,28(sp)
      90:	8fb00018 	lw	s0,24(sp)
      94:	27bd0020 	addiu	sp,sp,32
      98:	03e00008 	jr	ra
      9c:	00000000 	nop

000000a0 <func_809B11C0>:
      a0:	27bdffd8 	addiu	sp,sp,-40
      a4:	afbf0014 	sw	ra,20(sp)
      a8:	8ca21c44 	lw	v0,7236(a1)
      ac:	3c014120 	lui	at,0x4120
      b0:	c4860280 	lwc1	$f6,640(a0)
      b4:	44815000 	mtc1	at,$f10
      b8:	c4440024 	lwc1	$f4,36(v0)
      bc:	c4480028 	lwc1	$f8,40(v0)
      c0:	46062081 	sub.s	$f2,$f4,$f6
      c4:	c446002c 	lwc1	$f6,44(v0)
      c8:	c4840284 	lwc1	$f4,644(a0)
      cc:	460a4480 	add.s	$f18,$f8,$f10
      d0:	c4880288 	lwc1	$f8,648(a0)
      d4:	46021282 	mul.s	$f10,$f2,$f2
      d8:	e7a20020 	swc1	$f2,32(sp)
      dc:	46083401 	sub.s	$f16,$f6,$f8
      e0:	afa40028 	sw	a0,40(sp)
      e4:	46049301 	sub.s	$f12,$f18,$f4
      e8:	46108482 	mul.s	$f18,$f16,$f16
      ec:	e7b00018 	swc1	$f16,24(sp)
      f0:	46125000 	add.s	$f0,$f10,$f18
      f4:	0c000000 	jal	0 <func_809B1120>
      f8:	46000384 	sqrt.s	$f14,$f0
      fc:	3c010000 	lui	at,0x0
     100:	c4240000 	lwc1	$f4,0(at)
     104:	8fa40028 	lw	a0,40(sp)
     108:	46040182 	mul.s	$f6,$f0,$f4
     10c:	4600320d 	trunc.w.s	$f8,$f6
     110:	440f4000 	mfc1	t7,$f8
     114:	00000000 	nop
     118:	000fc400 	sll	t8,t7,0x10
     11c:	0018cc03 	sra	t9,t8,0x10
     120:	00194023 	negu	t0,t9
     124:	44885000 	mtc1	t0,$f10
     128:	00000000 	nop
     12c:	468054a0 	cvt.s.w	$f18,$f10
     130:	e492028c 	swc1	$f18,652(a0)
     134:	c7ae0018 	lwc1	$f14,24(sp)
     138:	0c000000 	jal	0 <func_809B1120>
     13c:	c7ac0020 	lwc1	$f12,32(sp)
     140:	3c010000 	lui	at,0x0
     144:	c4240000 	lwc1	$f4,0(at)
     148:	8fa40028 	lw	a0,40(sp)
     14c:	46040182 	mul.s	$f6,$f0,$f4
     150:	4600320d 	trunc.w.s	$f8,$f6
     154:	440a4000 	mfc1	t2,$f8
     158:	00000000 	nop
     15c:	000a5c00 	sll	t3,t2,0x10
     160:	000b6403 	sra	t4,t3,0x10
     164:	448c5000 	mtc1	t4,$f10
     168:	00000000 	nop
     16c:	468054a0 	cvt.s.w	$f18,$f10
     170:	e4920290 	swc1	$f18,656(a0)
     174:	8fbf0014 	lw	ra,20(sp)
     178:	27bd0028 	addiu	sp,sp,40
     17c:	03e00008 	jr	ra
     180:	00000000 	nop

00000184 <EnAnubice_Init>:
     184:	27bdffc8 	addiu	sp,sp,-56
     188:	afb00028 	sw	s0,40(sp)
     18c:	00808025 	move	s0,a0
     190:	afbf002c 	sw	ra,44(sp)
     194:	afa5003c 	sw	a1,60(sp)
     198:	3c060000 	lui	a2,0x0
     19c:	24c60000 	addiu	a2,a2,0
     1a0:	24050000 	li	a1,0
     1a4:	248400b4 	addiu	a0,a0,180
     1a8:	0c000000 	jal	0 <func_809B1120>
     1ac:	3c0741a0 	lui	a3,0x41a0
     1b0:	3c060600 	lui	a2,0x600
     1b4:	3c070600 	lui	a3,0x600
     1b8:	260e0190 	addiu	t6,s0,400
     1bc:	260f01f0 	addiu	t7,s0,496
     1c0:	24180010 	li	t8,16
     1c4:	afb80018 	sw	t8,24(sp)
     1c8:	afaf0014 	sw	t7,20(sp)
     1cc:	afae0010 	sw	t6,16(sp)
     1d0:	24e70f74 	addiu	a3,a3,3956
     1d4:	24c63990 	addiu	a2,a2,14736
     1d8:	8fa4003c 	lw	a0,60(sp)
     1dc:	0c000000 	jal	0 <func_809B1120>
     1e0:	2605014c 	addiu	a1,s0,332
     1e4:	3c040000 	lui	a0,0x0
     1e8:	0c000000 	jal	0 <func_809B1120>
     1ec:	24840000 	addiu	a0,a0,0
     1f0:	3c040000 	lui	a0,0x0
     1f4:	0c000000 	jal	0 <func_809B1120>
     1f8:	24840000 	addiu	a0,a0,0
     1fc:	2419003a 	li	t9,58
     200:	a2190117 	sb	t9,279(s0)
     204:	260502c8 	addiu	a1,s0,712
     208:	afa50030 	sw	a1,48(sp)
     20c:	0c000000 	jal	0 <func_809B1120>
     210:	8fa4003c 	lw	a0,60(sp)
     214:	3c070000 	lui	a3,0x0
     218:	8fa50030 	lw	a1,48(sp)
     21c:	24e70000 	addiu	a3,a3,0
     220:	8fa4003c 	lw	a0,60(sp)
     224:	0c000000 	jal	0 <func_809B1120>
     228:	02003025 	move	a2,s0
     22c:	3c053c75 	lui	a1,0x3c75
     230:	34a5c28f 	ori	a1,a1,0xc28f
     234:	0c000000 	jal	0 <func_809B1120>
     238:	02002025 	move	a0,s0
     23c:	3c080000 	lui	t0,0x0
     240:	25080000 	addiu	t0,t0,0
     244:	240900ff 	li	t1,255
     248:	ae080098 	sw	t0,152(s0)
     24c:	a20900ae 	sb	t1,174(s0)
     250:	3c010000 	lui	at,0x0
     254:	c4240000 	lwc1	$f4,0(at)
     258:	8e0d0024 	lw	t5,36(s0)
     25c:	8e0a0004 	lw	t2,4(s0)
     260:	44803000 	mtc1	zero,$f6
     264:	ae0d0298 	sw	t5,664(s0)
     268:	8e0d002c 	lw	t5,44(s0)
     26c:	8e0c0028 	lw	t4,40(s0)
     270:	2401fffe 	li	at,-2
     274:	3c0f0000 	lui	t7,0x0
     278:	240e0003 	li	t6,3
     27c:	25ef0000 	addiu	t7,t7,0
     280:	01415824 	and	t3,t2,at
     284:	ae0b0004 	sw	t3,4(s0)
     288:	a20e001f 	sb	t6,31(s0)
     28c:	ae0f0250 	sw	t7,592(s0)
     290:	e60400bc 	swc1	$f4,188(s0)
     294:	e606027c 	swc1	$f6,636(s0)
     298:	ae0d02a0 	sw	t5,672(s0)
     29c:	ae0c029c 	sw	t4,668(s0)
     2a0:	8fbf002c 	lw	ra,44(sp)
     2a4:	8fb00028 	lw	s0,40(sp)
     2a8:	27bd0038 	addiu	sp,sp,56
     2ac:	03e00008 	jr	ra
     2b0:	00000000 	nop

000002b4 <EnAnubice_Destroy>:
     2b4:	27bdffe8 	addiu	sp,sp,-24
     2b8:	00803025 	move	a2,a0
     2bc:	afbf0014 	sw	ra,20(sp)
     2c0:	00a02025 	move	a0,a1
     2c4:	24c502c8 	addiu	a1,a2,712
     2c8:	0c000000 	jal	0 <func_809B1120>
     2cc:	afa60018 	sw	a2,24(sp)
     2d0:	8fa60018 	lw	a2,24(sp)
     2d4:	84ce001c 	lh	t6,28(a2)
     2d8:	51c00009 	beqzl	t6,300 <EnAnubice_Destroy+0x4c>
     2dc:	8fbf0014 	lw	ra,20(sp)
     2e0:	8cc30118 	lw	v1,280(a2)
     2e4:	50600006 	beqzl	v1,300 <EnAnubice_Destroy+0x4c>
     2e8:	8fbf0014 	lw	ra,20(sp)
     2ec:	8c6f0130 	lw	t7,304(v1)
     2f0:	51e00003 	beqzl	t7,300 <EnAnubice_Destroy+0x4c>
     2f4:	8fbf0014 	lw	ra,20(sp)
     2f8:	ac600150 	sw	zero,336(v1)
     2fc:	8fbf0014 	lw	ra,20(sp)
     300:	27bd0018 	addiu	sp,sp,24
     304:	03e00008 	jr	ra
     308:	00000000 	nop

0000030c <func_809B142C>:
     30c:	27bdffc8 	addiu	sp,sp,-56
     310:	afbf0034 	sw	ra,52(sp)
     314:	afb60030 	sw	s6,48(sp)
     318:	afb5002c 	sw	s5,44(sp)
     31c:	afb40028 	sw	s4,40(sp)
     320:	afb30024 	sw	s3,36(sp)
     324:	afb20020 	sw	s2,32(sp)
     328:	afb1001c 	sw	s1,28(sp)
     32c:	afb00018 	sw	s0,24(sp)
     330:	848e025e 	lh	t6,606(a0)
     334:	0080b025 	move	s6,a0
     338:	51c00029 	beqzl	t6,3e0 <func_809B142C+0xd4>
     33c:	8fbf0034 	lw	ra,52(sp)
     340:	848f0264 	lh	t7,612(a0)
     344:	55e00020 	bnezl	t7,3c8 <func_809B142C+0xbc>
     348:	8ec90004 	lw	t1,4(s6)
     34c:	8cb01c64 	lw	s0,7268(a1)
     350:	3c150000 	lui	s5,0x0
     354:	00009025 	move	s2,zero
     358:	12000018 	beqz	s0,3bc <func_809B142C+0xb0>
     35c:	26b50000 	addiu	s5,s5,0
     360:	3c140000 	lui	s4,0x0
     364:	26940000 	addiu	s4,s4,0
     368:	24130049 	li	s3,73
     36c:	86180000 	lh	t8,0(s0)
     370:	0012c880 	sll	t9,s2,0x2
     374:	02d98821 	addu	s1,s6,t9
     378:	12780003 	beq	s3,t8,388 <func_809B142C+0x7c>
     37c:	02802025 	move	a0,s4
     380:	1000000c 	b	3b4 <func_809B142C+0xa8>
     384:	8e100124 	lw	s0,292(s0)
     388:	ae3002b0 	sw	s0,688(s1)
     38c:	0c000000 	jal	0 <func_809B1120>
     390:	02402825 	move	a1,s2
     394:	02a02025 	move	a0,s5
     398:	0c000000 	jal	0 <func_809B1120>
     39c:	8e2502b0 	lw	a1,688(s1)
     3a0:	2a410004 	slti	at,s2,4
     3a4:	50200003 	beqzl	at,3b4 <func_809B142C+0xa8>
     3a8:	8e100124 	lw	s0,292(s0)
     3ac:	26520001 	addiu	s2,s2,1
     3b0:	8e100124 	lw	s0,292(s0)
     3b4:	5600ffee 	bnezl	s0,370 <func_809B142C+0x64>
     3b8:	86180000 	lh	t8,0(s0)
     3bc:	24080001 	li	t0,1
     3c0:	a6c80264 	sh	t0,612(s6)
     3c4:	8ec90004 	lw	t1,4(s6)
     3c8:	3c0b0000 	lui	t3,0x0
     3cc:	256b0000 	addiu	t3,t3,0
     3d0:	352a0001 	ori	t2,t1,0x1
     3d4:	aeca0004 	sw	t2,4(s6)
     3d8:	aecb0250 	sw	t3,592(s6)
     3dc:	8fbf0034 	lw	ra,52(sp)
     3e0:	8fb00018 	lw	s0,24(sp)
     3e4:	8fb1001c 	lw	s1,28(sp)
     3e8:	8fb20020 	lw	s2,32(sp)
     3ec:	8fb30024 	lw	s3,36(sp)
     3f0:	8fb40028 	lw	s4,40(sp)
     3f4:	8fb5002c 	lw	s5,44(sp)
     3f8:	8fb60030 	lw	s6,48(sp)
     3fc:	03e00008 	jr	ra
     400:	27bd0038 	addiu	sp,sp,56

00000404 <func_809B1524>:
     404:	27bdffd0 	addiu	sp,sp,-48
     408:	afb00028 	sw	s0,40(sp)
     40c:	00808025 	move	s0,a0
     410:	afbf002c 	sw	ra,44(sp)
     414:	3c040600 	lui	a0,0x600
     418:	afa50034 	sw	a1,52(sp)
     41c:	0c000000 	jal	0 <func_809B1120>
     420:	24840f74 	addiu	a0,a0,3956
     424:	44822000 	mtc1	v0,$f4
     428:	44800000 	mtc1	zero,$f0
     42c:	3c01c120 	lui	at,0xc120
     430:	468021a0 	cvt.s.w	$f6,$f4
     434:	44819000 	mtc1	at,$f18
     438:	3c050600 	lui	a1,0x600
     43c:	44070000 	mfc1	a3,$f0
     440:	24a50f74 	addiu	a1,a1,3956
     444:	2604014c 	addiu	a0,s0,332
     448:	4600320d 	trunc.w.s	$f8,$f6
     44c:	3c063f80 	lui	a2,0x3f80
     450:	afa00014 	sw	zero,20(sp)
     454:	e7b20018 	swc1	$f18,24(sp)
     458:	440f4000 	mfc1	t7,$f8
     45c:	00000000 	nop
     460:	000fc400 	sll	t8,t7,0x10
     464:	0018cc03 	sra	t9,t8,0x10
     468:	44995000 	mtc1	t9,$f10
     46c:	00000000 	nop
     470:	46805420 	cvt.s.w	$f16,$f10
     474:	0c000000 	jal	0 <func_809B1120>
     478:	e7b00010 	swc1	$f16,16(sp)
     47c:	44800000 	mtc1	zero,$f0
     480:	3c080000 	lui	t0,0x0
     484:	25080000 	addiu	t0,t0,0
     488:	ae080250 	sw	t0,592(s0)
     48c:	e600006c 	swc1	$f0,108(s0)
     490:	e6000064 	swc1	$f0,100(s0)
     494:	e600005c 	swc1	$f0,92(s0)
     498:	8fbf002c 	lw	ra,44(sp)
     49c:	8fb00028 	lw	s0,40(sp)
     4a0:	27bd0030 	addiu	sp,sp,48
     4a4:	03e00008 	jr	ra
     4a8:	00000000 	nop

000004ac <func_809B15CC>:
     4ac:	27bdffd0 	addiu	sp,sp,-48
     4b0:	afbf0024 	sw	ra,36(sp)
     4b4:	afb00020 	sw	s0,32(sp)
     4b8:	8cae1c44 	lw	t6,7236(a1)
     4bc:	00808025 	move	s0,a0
     4c0:	2484014c 	addiu	a0,a0,332
     4c4:	0c000000 	jal	0 <func_809B1120>
     4c8:	afae002c 	sw	t6,44(sp)
     4cc:	260400bc 	addiu	a0,s0,188
     4d0:	3c053f00 	lui	a1,0x3f00
     4d4:	0c000000 	jal	0 <func_809B1120>
     4d8:	3c064396 	lui	a2,0x4396
     4dc:	2604027c 	addiu	a0,s0,636
     4e0:	3c05428c 	lui	a1,0x428c
     4e4:	3c063f00 	lui	a2,0x3f00
     4e8:	0c000000 	jal	0 <func_809B1120>
     4ec:	3c0740a0 	lui	a3,0x40a0
     4f0:	860f0262 	lh	t7,610(s0)
     4f4:	260400b6 	addiu	a0,s0,182
     4f8:	24060005 	li	a2,5
     4fc:	15e00004 	bnez	t7,510 <func_809B15CC+0x64>
     500:	24070bb8 	li	a3,3000
     504:	8605008a 	lh	a1,138(s0)
     508:	0c000000 	jal	0 <func_809B1120>
     50c:	afa00010 	sw	zero,16(sp)
     510:	3c01c000 	lui	at,0xc000
     514:	44812000 	mtc1	at,$f4
     518:	c60600bc 	lwc1	$f6,188(s0)
     51c:	4606203c 	c.lt.s	$f4,$f6
     520:	00000000 	nop
     524:	45020015 	bc1fl	57c <func_809B15CC+0xd0>
     528:	8fbf0024 	lw	ra,36(sp)
     52c:	44800000 	mtc1	zero,$f0
     530:	3c080000 	lui	t0,0x0
     534:	25080000 	addiu	t0,t0,0
     538:	e60000bc 	swc1	$f0,188(s0)
     53c:	8fb8002c 	lw	t8,44(sp)
     540:	83190843 	lb	t9,2115(t8)
     544:	53200004 	beqzl	t9,558 <func_809B15CC+0xac>
     548:	86090260 	lh	t1,608(s0)
     54c:	1000000a 	b	578 <func_809B15CC+0xcc>
     550:	ae080250 	sw	t0,592(s0)
     554:	86090260 	lh	t1,608(s0)
     558:	3c0a0000 	lui	t2,0x0
     55c:	3c01bf80 	lui	at,0xbf80
     560:	11200005 	beqz	t1,578 <func_809B15CC+0xcc>
     564:	254a0000 	addiu	t2,t2,0
     568:	44814000 	mtc1	at,$f8
     56c:	e6000060 	swc1	$f0,96(s0)
     570:	ae0a0250 	sw	t2,592(s0)
     574:	e608006c 	swc1	$f8,108(s0)
     578:	8fbf0024 	lw	ra,36(sp)
     57c:	8fb00020 	lw	s0,32(sp)
     580:	27bd0030 	addiu	sp,sp,48
     584:	03e00008 	jr	ra
     588:	00000000 	nop

0000058c <func_809B16AC>:
     58c:	27bdffb0 	addiu	sp,sp,-80
     590:	afb00020 	sw	s0,32(sp)
     594:	00808025 	move	s0,a0
     598:	afbf0024 	sw	ra,36(sp)
     59c:	afa50054 	sw	a1,84(sp)
     5a0:	0c000000 	jal	0 <func_809B1120>
     5a4:	2484014c 	addiu	a0,a0,332
     5a8:	3c05c584 	lui	a1,0xc584
     5ac:	34a53000 	ori	a1,a1,0x3000
     5b0:	260400bc 	addiu	a0,s0,188
     5b4:	3c063f00 	lui	a2,0x3f00
     5b8:	0c000000 	jal	0 <func_809B1120>
     5bc:	3c074396 	lui	a3,0x4396
     5c0:	2604027c 	addiu	a0,s0,636
     5c4:	3c053f00 	lui	a1,0x3f00
     5c8:	0c000000 	jal	0 <func_809B1120>
     5cc:	3c0640a0 	lui	a2,0x40a0
     5d0:	860e0262 	lh	t6,610(s0)
     5d4:	260400b6 	addiu	a0,s0,182
     5d8:	24060005 	li	a2,5
     5dc:	15c00004 	bnez	t6,5f0 <func_809B16AC+0x64>
     5e0:	24070bb8 	li	a3,3000
     5e4:	8605008a 	lh	a1,138(s0)
     5e8:	0c000000 	jal	0 <func_809B1120>
     5ec:	afa00010 	sw	zero,16(sp)
     5f0:	c60e0024 	lwc1	$f14,36(s0)
     5f4:	c6040298 	lwc1	$f4,664(s0)
     5f8:	3c014040 	lui	at,0x4040
     5fc:	44811000 	mtc1	at,$f2
     600:	460e2401 	sub.s	$f16,$f4,$f14
     604:	3c010000 	lui	at,0x0
     608:	46008005 	abs.s	$f0,$f16
     60c:	4600103c 	c.lt.s	$f2,$f0
     610:	00000000 	nop
     614:	4502001d 	bc1fl	68c <func_809B16AC+0x100>
     618:	c60800bc 	lwc1	$f8,188(s0)
     61c:	c612002c 	lwc1	$f18,44(s0)
     620:	c60602a0 	lwc1	$f6,672(s0)
     624:	46123201 	sub.s	$f8,$f6,$f18
     628:	e7a8002c 	swc1	$f8,44(sp)
     62c:	c7aa002c 	lwc1	$f10,44(sp)
     630:	46005005 	abs.s	$f0,$f10
     634:	4600103c 	c.lt.s	$f2,$f0
     638:	00000000 	nop
     63c:	45020013 	bc1fl	68c <func_809B16AC+0x100>
     640:	c60800bc 	lwc1	$f8,188(s0)
     644:	46108102 	mul.s	$f4,$f16,$f16
     648:	46005306 	mov.s	$f12,$f10
     64c:	3c014100 	lui	at,0x4100
     650:	460a5182 	mul.s	$f6,$f10,$f10
     654:	44815000 	mtc1	at,$f10
     658:	46062000 	add.s	$f0,$f4,$f6
     65c:	46000004 	sqrt.s	$f0,$f0
     660:	46008203 	div.s	$f8,$f16,$f0
     664:	460a4102 	mul.s	$f4,$f8,$f10
     668:	46006203 	div.s	$f8,$f12,$f0
     66c:	44815000 	mtc1	at,$f10
     670:	46047180 	add.s	$f6,$f14,$f4
     674:	e6060024 	swc1	$f6,36(s0)
     678:	460a4102 	mul.s	$f4,$f8,$f10
     67c:	46049180 	add.s	$f6,$f18,$f4
     680:	10000011 	b	6c8 <func_809B16AC+0x13c>
     684:	e606002c 	swc1	$f6,44(s0)
     688:	c60800bc 	lwc1	$f8,188(s0)
     68c:	c42a0000 	lwc1	$f10,0(at)
     690:	3c180000 	lui	t8,0x0
     694:	3c010000 	lui	at,0x0
     698:	460a403c 	c.lt.s	$f8,$f10
     69c:	27180000 	addiu	t8,t8,0
     6a0:	4502000a 	bc1fl	6cc <func_809B16AC+0x140>
     6a4:	8fbf0024 	lw	ra,36(sp)
     6a8:	c4240000 	lwc1	$f4,0(at)
     6ac:	a6000260 	sh	zero,608(s0)
     6b0:	860f0260 	lh	t7,608(s0)
     6b4:	44803000 	mtc1	zero,$f6
     6b8:	ae180250 	sw	t8,592(s0)
     6bc:	e60400bc 	swc1	$f4,188(s0)
     6c0:	a60f025e 	sh	t7,606(s0)
     6c4:	e606006c 	swc1	$f6,108(s0)
     6c8:	8fbf0024 	lw	ra,36(sp)
     6cc:	8fb00020 	lw	s0,32(sp)
     6d0:	27bd0050 	addiu	sp,sp,80
     6d4:	03e00008 	jr	ra
     6d8:	00000000 	nop

000006dc <func_809B17FC>:
     6dc:	27bdffd0 	addiu	sp,sp,-48
     6e0:	afb00028 	sw	s0,40(sp)
     6e4:	00808025 	move	s0,a0
     6e8:	afbf002c 	sw	ra,44(sp)
     6ec:	3c040600 	lui	a0,0x600
     6f0:	afa50034 	sw	a1,52(sp)
     6f4:	0c000000 	jal	0 <func_809B1120>
     6f8:	2484078c 	addiu	a0,a0,1932
     6fc:	44822000 	mtc1	v0,$f4
     700:	3c01c120 	lui	at,0xc120
     704:	44813000 	mtc1	at,$f6
     708:	46802020 	cvt.s.w	$f0,$f4
     70c:	3c050600 	lui	a1,0x600
     710:	240e0002 	li	t6,2
     714:	24a5078c 	addiu	a1,a1,1932
     718:	2604014c 	addiu	a0,s0,332
     71c:	3c063f80 	lui	a2,0x3f80
     720:	e600026c 	swc1	$f0,620(s0)
     724:	afae0014 	sw	t6,20(sp)
     728:	e7a00010 	swc1	$f0,16(sp)
     72c:	24070000 	li	a3,0
     730:	0c000000 	jal	0 <func_809B1120>
     734:	e7a60018 	swc1	$f6,24(sp)
     738:	44800000 	mtc1	zero,$f0
     73c:	3c0f0000 	lui	t7,0x0
     740:	25ef0000 	addiu	t7,t7,0
     744:	ae0f0250 	sw	t7,592(s0)
     748:	e6000064 	swc1	$f0,100(s0)
     74c:	e600005c 	swc1	$f0,92(s0)
     750:	8fbf002c 	lw	ra,44(sp)
     754:	8fb00028 	lw	s0,40(sp)
     758:	27bd0030 	addiu	sp,sp,48
     75c:	03e00008 	jr	ra
     760:	00000000 	nop

00000764 <func_809B1884>:
     764:	27bdffc0 	addiu	sp,sp,-64
     768:	afbf0034 	sw	ra,52(sp)
     76c:	afb00030 	sw	s0,48(sp)
     770:	afa50044 	sw	a1,68(sp)
     774:	c4840164 	lwc1	$f4,356(a0)
     778:	00808025 	move	s0,a0
     77c:	2484014c 	addiu	a0,a0,332
     780:	0c000000 	jal	0 <func_809B1120>
     784:	e7a4003c 	swc1	$f4,60(sp)
     788:	860e0262 	lh	t6,610(s0)
     78c:	260400b6 	addiu	a0,s0,182
     790:	24060005 	li	a2,5
     794:	15c00004 	bnez	t6,7a8 <func_809B1884+0x44>
     798:	24070bb8 	li	a3,3000
     79c:	8605008a 	lh	a1,138(s0)
     7a0:	0c000000 	jal	0 <func_809B1120>
     7a4:	afa00010 	sw	zero,16(sp)
     7a8:	02002025 	move	a0,s0
     7ac:	0c000000 	jal	0 <func_809B1120>
     7b0:	8fa50044 	lw	a1,68(sp)
     7b4:	3c014140 	lui	at,0x4140
     7b8:	44814000 	mtc1	at,$f8
     7bc:	c7a6003c 	lwc1	$f6,60(sp)
     7c0:	3c014170 	lui	at,0x4170
     7c4:	46083032 	c.eq.s	$f6,$f8
     7c8:	00000000 	nop
     7cc:	45020018 	bc1fl	830 <func_809B1884+0xcc>
     7d0:	c7b2003c 	lwc1	$f18,60(sp)
     7d4:	c60a0284 	lwc1	$f10,644(s0)
     7d8:	44818000 	mtc1	at,$f16
     7dc:	8e070280 	lw	a3,640(s0)
     7e0:	8fa50044 	lw	a1,68(sp)
     7e4:	46105480 	add.s	$f18,$f10,$f16
     7e8:	240600e1 	li	a2,225
     7ec:	24a41c24 	addiu	a0,a1,7204
     7f0:	e7b20010 	swc1	$f18,16(sp)
     7f4:	c6040288 	lwc1	$f4,648(s0)
     7f8:	e7a40014 	swc1	$f4,20(sp)
     7fc:	c606028c 	lwc1	$f6,652(s0)
     800:	4600320d 	trunc.w.s	$f8,$f6
     804:	44194000 	mfc1	t9,$f8
     808:	00000000 	nop
     80c:	afb90018 	sw	t9,24(sp)
     810:	c60a0290 	lwc1	$f10,656(s0)
     814:	afa00024 	sw	zero,36(sp)
     818:	afa00020 	sw	zero,32(sp)
     81c:	4600540d 	trunc.w.s	$f16,$f10
     820:	44098000 	mfc1	t1,$f16
     824:	0c000000 	jal	0 <func_809B1120>
     828:	afa9001c 	sw	t1,28(sp)
     82c:	c7b2003c 	lwc1	$f18,60(sp)
     830:	c604026c 	lwc1	$f4,620(s0)
     834:	3c0a0000 	lui	t2,0x0
     838:	254a0000 	addiu	t2,t2,0
     83c:	4612203e 	c.le.s	$f4,$f18
     840:	00000000 	nop
     844:	45020003 	bc1fl	854 <func_809B1884+0xf0>
     848:	8fbf0034 	lw	ra,52(sp)
     84c:	ae0a0250 	sw	t2,592(s0)
     850:	8fbf0034 	lw	ra,52(sp)
     854:	8fb00030 	lw	s0,48(sp)
     858:	27bd0040 	addiu	sp,sp,64
     85c:	03e00008 	jr	ra
     860:	00000000 	nop

00000864 <func_809B1984>:
     864:	27bdffd0 	addiu	sp,sp,-48
     868:	afb00028 	sw	s0,40(sp)
     86c:	00808025 	move	s0,a0
     870:	afbf002c 	sw	ra,44(sp)
     874:	3c040600 	lui	a0,0x600
     878:	afa50034 	sw	a1,52(sp)
     87c:	0c000000 	jal	0 <func_809B1120>
     880:	24840348 	addiu	a0,a0,840
     884:	44822000 	mtc1	v0,$f4
     888:	3c01c1a0 	lui	at,0xc1a0
     88c:	44813000 	mtc1	at,$f6
     890:	46802020 	cvt.s.w	$f0,$f4
     894:	3c050600 	lui	a1,0x600
     898:	240e0002 	li	t6,2
     89c:	24a50348 	addiu	a1,a1,840
     8a0:	2604014c 	addiu	a0,s0,332
     8a4:	3c063f80 	lui	a2,0x3f80
     8a8:	e600026c 	swc1	$f0,620(s0)
     8ac:	afae0014 	sw	t6,20(sp)
     8b0:	e7a00010 	swc1	$f0,16(sp)
     8b4:	24070000 	li	a3,0
     8b8:	0c000000 	jal	0 <func_809B1120>
     8bc:	e7a60018 	swc1	$f6,24(sp)
     8c0:	44800000 	mtc1	zero,$f0
     8c4:	3c01bf80 	lui	at,0xbf80
     8c8:	44814000 	mtc1	at,$f8
     8cc:	240f0014 	li	t7,20
     8d0:	a6000256 	sh	zero,598(s0)
     8d4:	a6000258 	sh	zero,600(s0)
     8d8:	a60f025a 	sh	t7,602(s0)
     8dc:	e6000064 	swc1	$f0,100(s0)
     8e0:	e600005c 	swc1	$f0,92(s0)
     8e4:	e608006c 	swc1	$f8,108(s0)
     8e8:	8fa40034 	lw	a0,52(sp)
     8ec:	26050280 	addiu	a1,s0,640
     8f0:	3c06428c 	lui	a2,0x428c
     8f4:	0c000000 	jal	0 <func_809B1120>
     8f8:	248407c0 	addiu	a0,a0,1984
     8fc:	10400006 	beqz	v0,918 <func_809B1984+0xb4>
     900:	3c090000 	lui	t1,0x0
     904:	861900b4 	lh	t9,180(s0)
     908:	24180001 	li	t8,1
     90c:	a6180256 	sh	t8,598(s0)
     910:	27288100 	addiu	t0,t9,-32512
     914:	a6080258 	sh	t0,600(s0)
     918:	25290000 	addiu	t1,t1,0
     91c:	ae090250 	sw	t1,592(s0)
     920:	8fbf002c 	lw	ra,44(sp)
     924:	8fb00028 	lw	s0,40(sp)
     928:	27bd0030 	addiu	sp,sp,48
     92c:	03e00008 	jr	ra
     930:	00000000 	nop

00000934 <func_809B1A54>:
     934:	27bdffa0 	addiu	sp,sp,-96
     938:	3c0f0000 	lui	t7,0x0
     93c:	afbf002c 	sw	ra,44(sp)
     940:	afb00028 	sw	s0,40(sp)
     944:	afa50064 	sw	a1,100(sp)
     948:	25ef0000 	addiu	t7,t7,0
     94c:	8df90000 	lw	t9,0(t7)
     950:	27ae004c 	addiu	t6,sp,76
     954:	8df80004 	lw	t8,4(t7)
     958:	add90000 	sw	t9,0(t6)
     95c:	8df90008 	lw	t9,8(t7)
     960:	3c090000 	lui	t1,0x0
     964:	25290000 	addiu	t1,t1,0
     968:	add80004 	sw	t8,4(t6)
     96c:	add90008 	sw	t9,8(t6)
     970:	8d2b0000 	lw	t3,0(t1)
     974:	27a80040 	addiu	t0,sp,64
     978:	8d2a0004 	lw	t2,4(t1)
     97c:	ad0b0000 	sw	t3,0(t0)
     980:	8d2b0008 	lw	t3,8(t1)
     984:	00808025 	move	s0,a0
     988:	2484014c 	addiu	a0,a0,332
     98c:	ad0a0004 	sw	t2,4(t0)
     990:	0c000000 	jal	0 <func_809B1120>
     994:	ad0b0008 	sw	t3,8(t0)
     998:	3c053ecc 	lui	a1,0x3ecc
     99c:	34a5cccd 	ori	a1,a1,0xcccd
     9a0:	260400c4 	addiu	a0,s0,196
     9a4:	0c000000 	jal	0 <func_809B1120>
     9a8:	3c063e80 	lui	a2,0x3e80
     9ac:	860c0256 	lh	t4,598(s0)
     9b0:	11800015 	beqz	t4,a08 <func_809B1A54+0xd4>
     9b4:	00000000 	nop
     9b8:	86050258 	lh	a1,600(s0)
     9bc:	afa00010 	sw	zero,16(sp)
     9c0:	260400b6 	addiu	a0,s0,182
     9c4:	24060001 	li	a2,1
     9c8:	0c000000 	jal	0 <func_809B1120>
     9cc:	24072710 	li	a3,10000
     9d0:	860d00b6 	lh	t5,182(s0)
     9d4:	860e0258 	lh	t6,600(s0)
     9d8:	3c0142c8 	lui	at,0x42c8
     9dc:	44813000 	mtc1	at,$f6
     9e0:	01ae7823 	subu	t7,t5,t6
     9e4:	448f2000 	mtc1	t7,$f4
     9e8:	00000000 	nop
     9ec:	46802020 	cvt.s.w	$f0,$f4
     9f0:	46000005 	abs.s	$f0,$f0
     9f4:	4606003c 	c.lt.s	$f0,$f6
     9f8:	00000000 	nop
     9fc:	45000002 	bc1f	a08 <func_809B1A54+0xd4>
     a00:	00000000 	nop
     a04:	a6000256 	sh	zero,598(s0)
     a08:	3c010000 	lui	at,0x0
     a0c:	c42c0000 	lwc1	$f12,0(at)
     a10:	3c010000 	lui	at,0x0
     a14:	c60e0164 	lwc1	$f14,356(s0)
     a18:	c4280000 	lwc1	$f8,0(at)
     a1c:	860200b6 	lh	v0,182(s0)
     a20:	46087082 	mul.s	$f2,$f14,$f8
     a24:	44825000 	mtc1	v0,$f10
     a28:	460c103c 	c.lt.s	$f2,$f12
     a2c:	00000000 	nop
     a30:	45020003 	bc1fl	a40 <func_809B1A54+0x10c>
     a34:	46805420 	cvt.s.w	$f16,$f10
     a38:	46006086 	mov.s	$f2,$f12
     a3c:	46805420 	cvt.s.w	$f16,$f10
     a40:	3c014700 	lui	at,0x4700
     a44:	44819000 	mtc1	at,$f18
     a48:	3c010000 	lui	at,0x0
     a4c:	c4260000 	lwc1	$f6,0(at)
     a50:	00002825 	move	a1,zero
     a54:	46128103 	div.s	$f4,$f16,$f18
     a58:	e7a20058 	swc1	$f2,88(sp)
     a5c:	e7ae005c 	swc1	$f14,92(sp)
     a60:	46062302 	mul.s	$f12,$f4,$f6
     a64:	0c000000 	jal	0 <func_809B1120>
     a68:	00000000 	nop
     a6c:	3c014700 	lui	at,0x4700
     a70:	c7a20058 	lwc1	$f2,88(sp)
     a74:	44814000 	mtc1	at,$f8
     a78:	3c010000 	lui	at,0x0
     a7c:	c4300000 	lwc1	$f16,0(at)
     a80:	46081283 	div.s	$f10,$f2,$f8
     a84:	24050001 	li	a1,1
     a88:	46105302 	mul.s	$f12,$f10,$f16
     a8c:	0c000000 	jal	0 <func_809B1120>
     a90:	00000000 	nop
     a94:	3c014120 	lui	at,0x4120
     a98:	44816000 	mtc1	at,$f12
     a9c:	0c000000 	jal	0 <func_809B1120>
     aa0:	00000000 	nop
     aa4:	3c0141f0 	lui	at,0x41f0
     aa8:	44819000 	mtc1	at,$f18
     aac:	27a4004c 	addiu	a0,sp,76
     ab0:	27a50040 	addiu	a1,sp,64
     ab4:	46120100 	add.s	$f4,$f0,$f18
     ab8:	0c000000 	jal	0 <func_809B1120>
     abc:	e7a40050 	swc1	$f4,80(sp)
     ac0:	3c014220 	lui	at,0x4220
     ac4:	44816000 	mtc1	at,$f12
     ac8:	0c000000 	jal	0 <func_809B1120>
     acc:	00000000 	nop
     ad0:	c6080024 	lwc1	$f8,36(s0)
     ad4:	c7a60040 	lwc1	$f6,64(sp)
     ad8:	3c014220 	lui	at,0x4220
     adc:	46004280 	add.s	$f10,$f8,$f0
     ae0:	44816000 	mtc1	at,$f12
     ae4:	460a3400 	add.s	$f16,$f6,$f10
     ae8:	0c000000 	jal	0 <func_809B1120>
     aec:	e7b00040 	swc1	$f16,64(sp)
     af0:	c6040028 	lwc1	$f4,40(s0)
     af4:	c7b20044 	lwc1	$f18,68(sp)
     af8:	3c0141f0 	lui	at,0x41f0
     afc:	46002200 	add.s	$f8,$f4,$f0
     b00:	44816000 	mtc1	at,$f12
     b04:	46089180 	add.s	$f6,$f18,$f8
     b08:	0c000000 	jal	0 <func_809B1120>
     b0c:	e7a60044 	swc1	$f6,68(sp)
     b10:	c610002c 	lwc1	$f16,44(s0)
     b14:	c7aa0048 	lwc1	$f10,72(sp)
     b18:	24180008 	li	t8,8
     b1c:	46008100 	add.s	$f4,$f16,$f0
     b20:	afb80010 	sw	t8,16(sp)
     b24:	02002025 	move	a0,s0
     b28:	24054000 	li	a1,16384
     b2c:	46045480 	add.s	$f18,$f10,$f4
     b30:	24060080 	li	a2,128
     b34:	00003825 	move	a3,zero
     b38:	0c000000 	jal	0 <func_809B1120>
     b3c:	e7b20048 	swc1	$f18,72(sp)
     b40:	2419ffff 	li	t9,-1
     b44:	afb90018 	sw	t9,24(sp)
     b48:	8fa40064 	lw	a0,100(sp)
     b4c:	02002825 	move	a1,s0
     b50:	27a60040 	addiu	a2,sp,64
     b54:	24070064 	li	a3,100
     b58:	afa00010 	sw	zero,16(sp)
     b5c:	0c000000 	jal	0 <func_809B1120>
     b60:	afa00014 	sw	zero,20(sp)
     b64:	c7a8005c 	lwc1	$f8,92(sp)
     b68:	c606026c 	lwc1	$f6,620(s0)
     b6c:	4608303e 	c.le.s	$f6,$f8
     b70:	00000000 	nop
     b74:	45020018 	bc1fl	bd8 <func_809B1A54+0x2a4>
     b78:	8fbf002c 	lw	ra,44(sp)
     b7c:	96080088 	lhu	t0,136(s0)
     b80:	3c05c584 	lui	a1,0xc584
     b84:	34a53000 	ori	a1,a1,0x3000
     b88:	31090001 	andi	t1,t0,0x1
     b8c:	11200011 	beqz	t1,bd4 <func_809B1A54+0x2a0>
     b90:	260400bc 	addiu	a0,s0,188
     b94:	3c063f00 	lui	a2,0x3f00
     b98:	0c000000 	jal	0 <func_809B1120>
     b9c:	3c074396 	lui	a3,0x4396
     ba0:	3c01c4fa 	lui	at,0xc4fa
     ba4:	44815000 	mtc1	at,$f10
     ba8:	c61000bc 	lwc1	$f16,188(s0)
     bac:	8fa40064 	lw	a0,100(sp)
     bb0:	02002825 	move	a1,s0
     bb4:	460a803c 	c.lt.s	$f16,$f10
     bb8:	26060024 	addiu	a2,s0,36
     bbc:	45020006 	bc1fl	bd8 <func_809B1A54+0x2a4>
     bc0:	8fbf002c 	lw	ra,44(sp)
     bc4:	0c000000 	jal	0 <func_809B1120>
     bc8:	240700c0 	li	a3,192
     bcc:	0c000000 	jal	0 <func_809B1120>
     bd0:	02002025 	move	a0,s0
     bd4:	8fbf002c 	lw	ra,44(sp)
     bd8:	8fb00028 	lw	s0,40(sp)
     bdc:	27bd0060 	addiu	sp,sp,96
     be0:	03e00008 	jr	ra
     be4:	00000000 	nop

00000be8 <EnAnubice_Update>:
     be8:	27bdffa0 	addiu	sp,sp,-96
     bec:	3c0e0000 	lui	t6,0x0
     bf0:	25ce0000 	addiu	t6,t6,0
     bf4:	afbf0024 	sw	ra,36(sp)
     bf8:	afb00020 	sw	s0,32(sp)
     bfc:	afa50064 	sw	a1,100(sp)
     c00:	afae0034 	sw	t6,52(sp)
     c04:	8c820250 	lw	v0,592(a0)
     c08:	3c0f0000 	lui	t7,0x0
     c0c:	00808025 	move	s0,a0
     c10:	11c2009b 	beq	t6,v0,e80 <EnAnubice_Update+0x298>
     c14:	25ef0000 	addiu	t7,t7,0
     c18:	51e2009a 	beql	t7,v0,e84 <EnAnubice_Update+0x29c>
     c1c:	860e0254 	lh	t6,596(s0)
     c20:	44802000 	mtc1	zero,$f4
     c24:	c48600bc 	lwc1	$f6,188(a0)
     c28:	46062032 	c.eq.s	$f4,$f6
     c2c:	00000000 	nop
     c30:	45020094 	bc1fl	e84 <EnAnubice_Update+0x29c>
     c34:	860e0254 	lh	t6,596(s0)
     c38:	0c000000 	jal	0 <func_809B1120>
     c3c:	00000000 	nop
     c40:	3c014270 	lui	at,0x4270
     c44:	44811000 	mtc1	at,$f2
     c48:	00002025 	move	a0,zero
     c4c:	02002825 	move	a1,s0
     c50:	24060014 	li	a2,20
     c54:	8ca302b0 	lw	v1,688(a1)
     c58:	24840004 	addiu	a0,a0,4
     c5c:	10600026 	beqz	v1,cf8 <EnAnubice_Update+0x110>
     c60:	00000000 	nop
     c64:	c4680024 	lwc1	$f8,36(v1)
     c68:	c60a0024 	lwc1	$f10,36(s0)
     c6c:	460a4001 	sub.s	$f0,$f8,$f10
     c70:	46000005 	abs.s	$f0,$f0
     c74:	4602003c 	c.lt.s	$f0,$f2
     c78:	00000000 	nop
     c7c:	4500001e 	bc1f	cf8 <EnAnubice_Update+0x110>
     c80:	00000000 	nop
     c84:	c470002c 	lwc1	$f16,44(v1)
     c88:	c612002c 	lwc1	$f18,44(s0)
     c8c:	46128001 	sub.s	$f0,$f16,$f18
     c90:	46000005 	abs.s	$f0,$f0
     c94:	4602003c 	c.lt.s	$f0,$f2
     c98:	00000000 	nop
     c9c:	45000016 	bc1f	cf8 <EnAnubice_Update+0x110>
     ca0:	00000000 	nop
     ca4:	84780154 	lh	t8,340(v1)
     ca8:	13000013 	beqz	t8,cf8 <EnAnubice_Update+0x110>
     cac:	00000000 	nop
     cb0:	8fa40064 	lw	a0,100(sp)
     cb4:	02003025 	move	a2,s0
     cb8:	24070006 	li	a3,6
     cbc:	0c000000 	jal	0 <func_809B1120>
     cc0:	24851c24 	addiu	a1,a0,7204
     cc4:	8e190004 	lw	t9,4(s0)
     cc8:	2401fffe 	li	at,-2
     ccc:	02002825 	move	a1,s0
     cd0:	03214024 	and	t0,t9,at
     cd4:	ae080004 	sw	t0,4(s0)
     cd8:	0c000000 	jal	0 <func_809B1120>
     cdc:	8fa40064 	lw	a0,100(sp)
     ce0:	02002025 	move	a0,s0
     ce4:	0c000000 	jal	0 <func_809B1120>
     ce8:	2405399f 	li	a1,14751
     cec:	8fa90034 	lw	t1,52(sp)
     cf0:	100000b7 	b	fd0 <EnAnubice_Update+0x3e8>
     cf4:	ae090250 	sw	t1,592(s0)
     cf8:	1486ffd6 	bne	a0,a2,c54 <EnAnubice_Update+0x6c>
     cfc:	24a50004 	addiu	a1,a1,4
     d00:	920202d9 	lbu	v0,729(s0)
     d04:	304a0002 	andi	t2,v0,0x2
     d08:	51400044 	beqzl	t2,e1c <EnAnubice_Update+0x234>
     d0c:	860a0262 	lh	t2,610(s0)
     d10:	920c00b1 	lbu	t4,177(s0)
     d14:	304bfffd 	andi	t3,v0,0xfffd
     d18:	24010002 	li	at,2
     d1c:	15810013 	bne	t4,at,d6c <EnAnubice_Update+0x184>
     d20:	a20b02d9 	sb	t3,729(s0)
     d24:	8fa40064 	lw	a0,100(sp)
     d28:	02003025 	move	a2,s0
     d2c:	24070006 	li	a3,6
     d30:	0c000000 	jal	0 <func_809B1120>
     d34:	24851c24 	addiu	a1,a0,7204
     d38:	8e0d0004 	lw	t5,4(s0)
     d3c:	2401fffe 	li	at,-2
     d40:	02002825 	move	a1,s0
     d44:	01a17024 	and	t6,t5,at
     d48:	ae0e0004 	sw	t6,4(s0)
     d4c:	0c000000 	jal	0 <func_809B1120>
     d50:	8fa40064 	lw	a0,100(sp)
     d54:	02002025 	move	a0,s0
     d58:	0c000000 	jal	0 <func_809B1120>
     d5c:	2405399f 	li	a1,14751
     d60:	8faf0034 	lw	t7,52(sp)
     d64:	1000009a 	b	fd0 <EnAnubice_Update+0x3e8>
     d68:	ae0f0250 	sw	t7,592(s0)
     d6c:	86180262 	lh	t8,610(s0)
     d70:	2419000a 	li	t9,10
     d74:	24080001 	li	t0,1
     d78:	17000027 	bnez	t8,e18 <EnAnubice_Update+0x230>
     d7c:	3c01c120 	lui	at,0xc120
     d80:	44800000 	mtc1	zero,$f0
     d84:	a619025c 	sh	t9,604(s0)
     d88:	a6080262 	sh	t0,610(s0)
     d8c:	44812000 	mtc1	at,$f4
     d90:	e7a00048 	swc1	$f0,72(sp)
     d94:	e7a0004c 	swc1	$f0,76(sp)
     d98:	e7a0003c 	swc1	$f0,60(sp)
     d9c:	e7a00040 	swc1	$f0,64(sp)
     da0:	e7a00044 	swc1	$f0,68(sp)
     da4:	e7a40050 	swc1	$f4,80(sp)
     da8:	860900b6 	lh	t1,182(s0)
     dac:	3c014700 	lui	at,0x4700
     db0:	44815000 	mtc1	at,$f10
     db4:	44893000 	mtc1	t1,$f6
     db8:	3c010000 	lui	at,0x0
     dbc:	c4320000 	lwc1	$f18,0(at)
     dc0:	46803220 	cvt.s.w	$f8,$f6
     dc4:	00002825 	move	a1,zero
     dc8:	460a4403 	div.s	$f16,$f8,$f10
     dcc:	46128302 	mul.s	$f12,$f16,$f18
     dd0:	0c000000 	jal	0 <func_809B1120>
     dd4:	00000000 	nop
     dd8:	27a40048 	addiu	a0,sp,72
     ddc:	0c000000 	jal	0 <func_809B1120>
     de0:	27a5003c 	addiu	a1,sp,60
     de4:	c7a4003c 	lwc1	$f4,60(sp)
     de8:	02002025 	move	a0,s0
     dec:	2405393b 	li	a1,14651
     df0:	e604005c 	swc1	$f4,92(s0)
     df4:	c7a60044 	lwc1	$f6,68(sp)
     df8:	e6060064 	swc1	$f6,100(s0)
     dfc:	c7a8003c 	lwc1	$f8,60(sp)
     e00:	46004287 	neg.s	$f10,$f8
     e04:	e60a02a4 	swc1	$f10,676(s0)
     e08:	c7b00044 	lwc1	$f16,68(sp)
     e0c:	46008487 	neg.s	$f18,$f16
     e10:	0c000000 	jal	0 <func_809B1120>
     e14:	e61202ac 	swc1	$f18,684(s0)
     e18:	860a0262 	lh	t2,610(s0)
     e1c:	3c063e99 	lui	a2,0x3e99
     e20:	34c6999a 	ori	a2,a2,0x999a
     e24:	11400016 	beqz	t2,e80 <EnAnubice_Update+0x298>
     e28:	2604005c 	addiu	a0,s0,92
     e2c:	860b00b6 	lh	t3,182(s0)
     e30:	8e0502a4 	lw	a1,676(s0)
     e34:	3c073f80 	lui	a3,0x3f80
     e38:	256c1964 	addiu	t4,t3,6500
     e3c:	0c000000 	jal	0 <func_809B1120>
     e40:	a60c00b6 	sh	t4,182(s0)
     e44:	3c063e99 	lui	a2,0x3e99
     e48:	34c6999a 	ori	a2,a2,0x999a
     e4c:	26040064 	addiu	a0,s0,100
     e50:	8e0502ac 	lw	a1,684(s0)
     e54:	0c000000 	jal	0 <func_809B1120>
     e58:	3c073f80 	lui	a3,0x3f80
     e5c:	860d025c 	lh	t5,604(s0)
     e60:	44800000 	mtc1	zero,$f0
     e64:	55a00007 	bnezl	t5,e84 <EnAnubice_Update+0x29c>
     e68:	860e0254 	lh	t6,596(s0)
     e6c:	e6000064 	swc1	$f0,100(s0)
     e70:	e600005c 	swc1	$f0,92(s0)
     e74:	e60002ac 	swc1	$f0,684(s0)
     e78:	e60002a4 	swc1	$f0,676(s0)
     e7c:	a6000262 	sh	zero,610(s0)
     e80:	860e0254 	lh	t6,596(s0)
     e84:	8602025c 	lh	v0,604(s0)
     e88:	25cf0001 	addiu	t7,t6,1
     e8c:	10400003 	beqz	v0,e9c <EnAnubice_Update+0x2b4>
     e90:	a60f0254 	sh	t7,596(s0)
     e94:	2458ffff 	addiu	t8,v0,-1
     e98:	a618025c 	sh	t8,604(s0)
     e9c:	8602025a 	lh	v0,602(s0)
     ea0:	10400002 	beqz	v0,eac <EnAnubice_Update+0x2c4>
     ea4:	2459ffff 	addiu	t9,v0,-1
     ea8:	a619025a 	sh	t9,602(s0)
     eac:	8e190250 	lw	t9,592(s0)
     eb0:	02002025 	move	a0,s0
     eb4:	8fa50064 	lw	a1,100(sp)
     eb8:	0320f809 	jalr	t9
     ebc:	00000000 	nop
     ec0:	c6040060 	lwc1	$f4,96(s0)
     ec4:	c606006c 	lwc1	$f6,108(s0)
     ec8:	02002025 	move	a0,s0
     ecc:	46062200 	add.s	$f8,$f4,$f6
     ed0:	0c000000 	jal	0 <func_809B1120>
     ed4:	e6080060 	swc1	$f8,96(s0)
     ed8:	86080260 	lh	t0,608(s0)
     edc:	3c0140a0 	lui	at,0x40a0
     ee0:	8fa40064 	lw	a0,100(sp)
     ee4:	1500000f 	bnez	t0,f24 <EnAnubice_Update+0x33c>
     ee8:	02002825 	move	a1,s0
     eec:	3c0140a0 	lui	at,0x40a0
     ef0:	44810000 	mtc1	at,$f0
     ef4:	3c014120 	lui	at,0x4120
     ef8:	44815000 	mtc1	at,$f10
     efc:	2409001d 	li	t1,29
     f00:	44060000 	mfc1	a2,$f0
     f04:	44070000 	mfc1	a3,$f0
     f08:	afa90014 	sw	t1,20(sp)
     f0c:	8fa40064 	lw	a0,100(sp)
     f10:	02002825 	move	a1,s0
     f14:	0c000000 	jal	0 <func_809B1120>
     f18:	e7aa0010 	swc1	$f10,16(sp)
     f1c:	1000000b 	b	f4c <EnAnubice_Update+0x364>
     f20:	8e020250 	lw	v0,592(s0)
     f24:	44810000 	mtc1	at,$f0
     f28:	3c014120 	lui	at,0x4120
     f2c:	44818000 	mtc1	at,$f16
     f30:	240a001c 	li	t2,28
     f34:	44060000 	mfc1	a2,$f0
     f38:	44070000 	mfc1	a3,$f0
     f3c:	afaa0014 	sw	t2,20(sp)
     f40:	0c000000 	jal	0 <func_809B1120>
     f44:	e7b00010 	swc1	$f16,16(sp)
     f48:	8e020250 	lw	v0,592(s0)
     f4c:	8fab0034 	lw	t3,52(sp)
     f50:	3c0c0000 	lui	t4,0x0
     f54:	258c0000 	addiu	t4,t4,0
     f58:	5162001e 	beql	t3,v0,fd4 <EnAnubice_Update+0x3ec>
     f5c:	8fbf0024 	lw	ra,36(sp)
     f60:	1182001b 	beq	t4,v0,fd0 <EnAnubice_Update+0x3e8>
     f64:	02002025 	move	a0,s0
     f68:	0c000000 	jal	0 <func_809B1120>
     f6c:	8e05027c 	lw	a1,636(s0)
     f70:	260502c8 	addiu	a1,s0,712
     f74:	afa50030 	sw	a1,48(sp)
     f78:	0c000000 	jal	0 <func_809B1120>
     f7c:	02002025 	move	a0,s0
     f80:	8fa40064 	lw	a0,100(sp)
     f84:	3c010001 	lui	at,0x1
     f88:	34211e60 	ori	at,at,0x1e60
     f8c:	00812821 	addu	a1,a0,at
     f90:	afa50034 	sw	a1,52(sp)
     f94:	0c000000 	jal	0 <func_809B1120>
     f98:	8fa60030 	lw	a2,48(sp)
     f9c:	860d0262 	lh	t5,610(s0)
     fa0:	8fa50034 	lw	a1,52(sp)
     fa4:	55a0000b 	bnezl	t5,fd4 <EnAnubice_Update+0x3ec>
     fa8:	8fbf0024 	lw	ra,36(sp)
     fac:	44809000 	mtc1	zero,$f18
     fb0:	c60400bc 	lwc1	$f4,188(s0)
     fb4:	8fa40064 	lw	a0,100(sp)
     fb8:	46049032 	c.eq.s	$f18,$f4
     fbc:	00000000 	nop
     fc0:	45020004 	bc1fl	fd4 <EnAnubice_Update+0x3ec>
     fc4:	8fbf0024 	lw	ra,36(sp)
     fc8:	0c000000 	jal	0 <func_809B1120>
     fcc:	8fa60030 	lw	a2,48(sp)
     fd0:	8fbf0024 	lw	ra,36(sp)
     fd4:	8fb00020 	lw	s0,32(sp)
     fd8:	27bd0060 	addiu	sp,sp,96
     fdc:	03e00008 	jr	ra
     fe0:	00000000 	nop

00000fe4 <func_809B2104>:
     fe4:	2401000d 	li	at,13
     fe8:	afa40000 	sw	a0,0(sp)
     fec:	afa60008 	sw	a2,8(sp)
     ff0:	14a1000d 	bne	a1,at,1028 <func_809B2104+0x44>
     ff4:	afa7000c 	sw	a3,12(sp)
     ff8:	8fa20010 	lw	v0,16(sp)
     ffc:	8faf0014 	lw	t7,20(sp)
    1000:	844e0004 	lh	t6,4(v0)
    1004:	c5e80278 	lwc1	$f8,632(t7)
    1008:	448e2000 	mtc1	t6,$f4
    100c:	00000000 	nop
    1010:	468021a0 	cvt.s.w	$f6,$f4
    1014:	46083280 	add.s	$f10,$f6,$f8
    1018:	4600540d 	trunc.w.s	$f16,$f10
    101c:	44198000 	mfc1	t9,$f16
    1020:	00000000 	nop
    1024:	a4590004 	sh	t9,4(v0)
    1028:	03e00008 	jr	ra
    102c:	00001025 	move	v0,zero

00001030 <func_809B2150>:
    1030:	27bdffb8 	addiu	sp,sp,-72
    1034:	3c0f0000 	lui	t7,0x0
    1038:	afbf0014 	sw	ra,20(sp)
    103c:	afa40048 	sw	a0,72(sp)
    1040:	afa60050 	sw	a2,80(sp)
    1044:	afa70054 	sw	a3,84(sp)
    1048:	25ef0000 	addiu	t7,t7,0
    104c:	8df90000 	lw	t9,0(t7)
    1050:	27ae0038 	addiu	t6,sp,56
    1054:	8df80004 	lw	t8,4(t7)
    1058:	add90000 	sw	t9,0(t6)
    105c:	8df90008 	lw	t9,8(t7)
    1060:	2401000d 	li	at,13
    1064:	add80004 	sw	t8,4(t6)
    1068:	14a1002e 	bne	a1,at,1124 <func_809B2150+0xf4>
    106c:	add90008 	sw	t9,8(t6)
    1070:	8fa90048 	lw	t1,72(sp)
    1074:	3c060000 	lui	a2,0x0
    1078:	24c60000 	addiu	a2,a2,0
    107c:	8d250000 	lw	a1,0(t1)
    1080:	27a40024 	addiu	a0,sp,36
    1084:	24070355 	li	a3,853
    1088:	0c000000 	jal	0 <func_809B1120>
    108c:	afa50034 	sw	a1,52(sp)
    1090:	8fa80034 	lw	t0,52(sp)
    1094:	3c0bda38 	lui	t3,0xda38
    1098:	356b0003 	ori	t3,t3,0x3
    109c:	8d0202d0 	lw	v0,720(t0)
    10a0:	3c050000 	lui	a1,0x0
    10a4:	24a50000 	addiu	a1,a1,0
    10a8:	244a0008 	addiu	t2,v0,8
    10ac:	ad0a02d0 	sw	t2,720(t0)
    10b0:	ac4b0000 	sw	t3,0(v0)
    10b4:	8fac0048 	lw	t4,72(sp)
    10b8:	24060358 	li	a2,856
    10bc:	8d840000 	lw	a0,0(t4)
    10c0:	afa80034 	sw	t0,52(sp)
    10c4:	0c000000 	jal	0 <func_809B1120>
    10c8:	afa20020 	sw	v0,32(sp)
    10cc:	8fa30020 	lw	v1,32(sp)
    10d0:	8fa80034 	lw	t0,52(sp)
    10d4:	3c0f0600 	lui	t7,0x600
    10d8:	ac620004 	sw	v0,4(v1)
    10dc:	8d0202d0 	lw	v0,720(t0)
    10e0:	25ef3468 	addiu	t7,t7,13416
    10e4:	3c0ede00 	lui	t6,0xde00
    10e8:	244d0008 	addiu	t5,v0,8
    10ec:	ad0d02d0 	sw	t5,720(t0)
    10f0:	ac4f0004 	sw	t7,4(v0)
    10f4:	ac4e0000 	sw	t6,0(v0)
    10f8:	8fa50058 	lw	a1,88(sp)
    10fc:	27a40038 	addiu	a0,sp,56
    1100:	0c000000 	jal	0 <func_809B1120>
    1104:	24a50280 	addiu	a1,a1,640
    1108:	8fb80048 	lw	t8,72(sp)
    110c:	3c060000 	lui	a2,0x0
    1110:	24c60000 	addiu	a2,a2,0
    1114:	27a40024 	addiu	a0,sp,36
    1118:	24070364 	li	a3,868
    111c:	0c000000 	jal	0 <func_809B1120>
    1120:	8f050000 	lw	a1,0(t8)
    1124:	8fbf0014 	lw	ra,20(sp)
    1128:	27bd0048 	addiu	sp,sp,72
    112c:	03e00008 	jr	ra
    1130:	00000000 	nop

00001134 <EnAnubice_Draw>:
    1134:	27bdffe0 	addiu	sp,sp,-32
    1138:	afbf001c 	sw	ra,28(sp)
    113c:	afa40020 	sw	a0,32(sp)
    1140:	afa50024 	sw	a1,36(sp)
    1144:	0c000000 	jal	0 <func_809B1120>
    1148:	8ca40000 	lw	a0,0(a1)
    114c:	8fa20020 	lw	v0,32(sp)
    1150:	3c0f0000 	lui	t7,0x0
    1154:	25ef0000 	addiu	t7,t7,0
    1158:	3c070000 	lui	a3,0x0
    115c:	8c450150 	lw	a1,336(v0)
    1160:	8c46016c 	lw	a2,364(v0)
    1164:	afaf0010 	sw	t7,16(sp)
    1168:	24e70000 	addiu	a3,a3,0
    116c:	8fa40024 	lw	a0,36(sp)
    1170:	0c000000 	jal	0 <func_809B1120>
    1174:	afa20014 	sw	v0,20(sp)
    1178:	8fbf001c 	lw	ra,28(sp)
    117c:	27bd0020 	addiu	sp,sp,32
    1180:	03e00008 	jr	ra
    1184:	00000000 	nop
	...
