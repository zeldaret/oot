
build/src/overlays/actors/ovl_En_Floormas/z_en_floormas.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnFloormas_Init>:
       0:	27bdffb0 	addiu	sp,sp,-80
       4:	afb10030 	sw	s1,48(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf0034 	sw	ra,52(sp)
      10:	afb0002c 	sw	s0,44(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnFloormas_Init>
      20:	24a50074 	addiu	a1,a1,116
      24:	3c060000 	lui	a2,0x0
      28:	24c60000 	addiu	a2,a2,0
      2c:	260400b4 	addiu	a0,s0,180
      30:	24050000 	li	a1,0
      34:	0c000000 	jal	0 <EnFloormas_Init>
      38:	3c074248 	lui	a3,0x4248
      3c:	3c060000 	lui	a2,0x0
      40:	3c070000 	lui	a3,0x0
      44:	260e019c 	addiu	t6,s0,412
      48:	260f0232 	addiu	t7,s0,562
      4c:	24180019 	li	t8,25
      50:	afb80018 	sw	t8,24(sp)
      54:	afaf0014 	sw	t7,20(sp)
      58:	afae0010 	sw	t6,16(sp)
      5c:	24e70000 	addiu	a3,a3,0
      60:	24c60000 	addiu	a2,a2,0
      64:	02202025 	move	a0,s1
      68:	0c000000 	jal	0 <EnFloormas_Init>
      6c:	2605014c 	addiu	a1,s0,332
      70:	260502c8 	addiu	a1,s0,712
      74:	afa5003c 	sw	a1,60(sp)
      78:	0c000000 	jal	0 <EnFloormas_Init>
      7c:	02202025 	move	a0,s1
      80:	3c070000 	lui	a3,0x0
      84:	8fa5003c 	lw	a1,60(sp)
      88:	24e70020 	addiu	a3,a3,32
      8c:	02202025 	move	a0,s1
      90:	0c000000 	jal	0 <EnFloormas_Init>
      94:	02003025 	move	a2,s0
      98:	3c050000 	lui	a1,0x0
      9c:	3c060000 	lui	a2,0x0
      a0:	24c6004c 	addiu	a2,a2,76
      a4:	24a50054 	addiu	a1,a1,84
      a8:	0c000000 	jal	0 <EnFloormas_Init>
      ac:	26040098 	addiu	a0,s0,152
      b0:	8602001c 	lh	v0,28(s0)
      b4:	2419f9c0 	li	t9,-1600
      b8:	a6190198 	sh	t9,408(s0)
      bc:	30438000 	andi	v1,v0,0x8000
      c0:	30497fff 	andi	t1,v0,0x7fff
      c4:	10600007 	beqz	v1,e4 <EnFloormas_Init+0xe4>
      c8:	a609001c 	sh	t1,28(s0)
      cc:	8e0a0004 	lw	t2,4(s0)
      d0:	3c0c0000 	lui	t4,0x0
      d4:	258c0000 	addiu	t4,t4,0
      d8:	354b0080 	ori	t3,t2,0x80
      dc:	ae0b0004 	sw	t3,4(s0)
      e0:	ae0c0134 	sw	t4,308(s0)
      e4:	860d001c 	lh	t5,28(s0)
      e8:	24010010 	li	at,16
      ec:	26241c24 	addiu	a0,s1,7204
      f0:	15a1000a 	bne	t5,at,11c <EnFloormas_Init+0x11c>
      f4:	02202825 	move	a1,s1
      f8:	8e0e0004 	lw	t6,4(s0)
      fc:	2401fffe 	li	at,-2
     100:	3c180000 	lui	t8,0x0
     104:	27180000 	addiu	t8,t8,0
     108:	01c17824 	and	t7,t6,at
     10c:	ae000134 	sw	zero,308(s0)
     110:	ae0f0004 	sw	t7,4(s0)
     114:	10000039 	b	1fc <EnFloormas_Init+0x1fc>
     118:	ae180190 	sw	t8,400(s0)
     11c:	c6040028 	lwc1	$f4,40(s0)
     120:	8e070024 	lw	a3,36(s0)
     124:	24680010 	addiu	t0,v1,16
     128:	e7a40010 	swc1	$f4,16(sp)
     12c:	c606002c 	lwc1	$f6,44(s0)
     130:	00084400 	sll	t0,t0,0x10
     134:	00084403 	sra	t0,t0,0x10
     138:	afa80024 	sw	t0,36(sp)
     13c:	afa8003c 	sw	t0,60(sp)
     140:	afa40038 	sw	a0,56(sp)
     144:	afa00020 	sw	zero,32(sp)
     148:	afa0001c 	sw	zero,28(sp)
     14c:	afa00018 	sw	zero,24(sp)
     150:	2406008e 	li	a2,142
     154:	0c000000 	jal	0 <EnFloormas_Init>
     158:	e7a60014 	swc1	$f6,20(sp)
     15c:	8fa40038 	lw	a0,56(sp)
     160:	8fa8003c 	lw	t0,60(sp)
     164:	14400005 	bnez	v0,17c <EnFloormas_Init+0x17c>
     168:	ae020118 	sw	v0,280(s0)
     16c:	0c000000 	jal	0 <EnFloormas_Init>
     170:	02002025 	move	a0,s0
     174:	10000022 	b	200 <EnFloormas_Init+0x200>
     178:	8fbf0034 	lw	ra,52(sp)
     17c:	c6080028 	lwc1	$f8,40(s0)
     180:	8e070024 	lw	a3,36(s0)
     184:	02202825 	move	a1,s1
     188:	e7a80010 	swc1	$f8,16(sp)
     18c:	c60a002c 	lwc1	$f10,44(s0)
     190:	afa80024 	sw	t0,36(sp)
     194:	afa00020 	sw	zero,32(sp)
     198:	afa0001c 	sw	zero,28(sp)
     19c:	afa00018 	sw	zero,24(sp)
     1a0:	2406008e 	li	a2,142
     1a4:	0c000000 	jal	0 <EnFloormas_Init>
     1a8:	e7aa0014 	swc1	$f10,20(sp)
     1ac:	14400007 	bnez	v0,1cc <EnFloormas_Init+0x1cc>
     1b0:	ae02011c 	sw	v0,284(s0)
     1b4:	0c000000 	jal	0 <EnFloormas_Init>
     1b8:	8e040118 	lw	a0,280(s0)
     1bc:	0c000000 	jal	0 <EnFloormas_Init>
     1c0:	02002025 	move	a0,s0
     1c4:	1000000e 	b	200 <EnFloormas_Init+0x200>
     1c8:	8fbf0034 	lw	ra,52(sp)
     1cc:	8e190118 	lw	t9,280(s0)
     1d0:	02002025 	move	a0,s0
     1d4:	af30011c 	sw	s0,284(t9)
     1d8:	8e09011c 	lw	t1,284(s0)
     1dc:	8e0a0118 	lw	t2,280(s0)
     1e0:	ad490118 	sw	t1,280(t2)
     1e4:	8e0b011c 	lw	t3,284(s0)
     1e8:	ad700118 	sw	s0,280(t3)
     1ec:	8e0d011c 	lw	t5,284(s0)
     1f0:	8e0c0118 	lw	t4,280(s0)
     1f4:	0c000000 	jal	0 <EnFloormas_Init>
     1f8:	adac011c 	sw	t4,284(t5)
     1fc:	8fbf0034 	lw	ra,52(sp)
     200:	8fb0002c 	lw	s0,44(sp)
     204:	8fb10030 	lw	s1,48(sp)
     208:	03e00008 	jr	ra
     20c:	27bd0050 	addiu	sp,sp,80

00000210 <EnFloormas_Destroy>:
     210:	27bdffe8 	addiu	sp,sp,-24
     214:	00803025 	move	a2,a0
     218:	afbf0014 	sw	ra,20(sp)
     21c:	00a02025 	move	a0,a1
     220:	0c000000 	jal	0 <EnFloormas_Init>
     224:	24c502c8 	addiu	a1,a2,712
     228:	8fbf0014 	lw	ra,20(sp)
     22c:	27bd0018 	addiu	sp,sp,24
     230:	03e00008 	jr	ra
     234:	00000000 	nop

00000238 <EnFloormas_MakeInvulnerable>:
     238:	908f02d9 	lbu	t7,729(a0)
     23c:	240e000c 	li	t6,12
     240:	24190028 	li	t9,40
     244:	35f80004 	ori	t8,t7,0x4
     248:	a08e02dc 	sb	t6,732(a0)
     24c:	a09802d9 	sb	t8,729(a0)
     250:	03e00008 	jr	ra
     254:	a4990196 	sh	t9,406(a0)

00000258 <EnFloormas_MakeVulnerable>:
     258:	908e02d9 	lbu	t6,729(a0)
     25c:	a08002dc 	sb	zero,732(a0)
     260:	a4800196 	sh	zero,406(a0)
     264:	31cffffb 	andi	t7,t6,0xfffb
     268:	03e00008 	jr	ra
     26c:	a08f02d9 	sb	t7,729(a0)

00000270 <EnFloormas_SetupBigDecideAction>:
     270:	27bdffe8 	addiu	sp,sp,-24
     274:	afbf0014 	sw	ra,20(sp)
     278:	00803025 	move	a2,a0
     27c:	3c050000 	lui	a1,0x0
     280:	24a50000 	addiu	a1,a1,0
     284:	afa60018 	sw	a2,24(sp)
     288:	0c000000 	jal	0 <EnFloormas_Init>
     28c:	2484014c 	addiu	a0,a0,332
     290:	8fa60018 	lw	a2,24(sp)
     294:	44802000 	mtc1	zero,$f4
     298:	3c0e0000 	lui	t6,0x0
     29c:	25ce0000 	addiu	t6,t6,0
     2a0:	acce0190 	sw	t6,400(a2)
     2a4:	e4c40068 	swc1	$f4,104(a2)
     2a8:	8fbf0014 	lw	ra,20(sp)
     2ac:	27bd0018 	addiu	sp,sp,24
     2b0:	03e00008 	jr	ra
     2b4:	00000000 	nop

000002b8 <EnFloormas_SetupStand>:
     2b8:	27bdffe8 	addiu	sp,sp,-24
     2bc:	afbf0014 	sw	ra,20(sp)
     2c0:	afa40018 	sw	a0,24(sp)
     2c4:	3c050000 	lui	a1,0x0
     2c8:	24a50000 	addiu	a1,a1,0
     2cc:	2484014c 	addiu	a0,a0,332
     2d0:	0c000000 	jal	0 <EnFloormas_Init>
     2d4:	3c06c040 	lui	a2,0xc040
     2d8:	8faf0018 	lw	t7,24(sp)
     2dc:	3c0e0000 	lui	t6,0x0
     2e0:	25ce0000 	addiu	t6,t6,0
     2e4:	adee0190 	sw	t6,400(t7)
     2e8:	8fbf0014 	lw	ra,20(sp)
     2ec:	27bd0018 	addiu	sp,sp,24
     2f0:	03e00008 	jr	ra
     2f4:	00000000 	nop

000002f8 <EnFloormas_SetupBigWalk>:
     2f8:	27bdffe8 	addiu	sp,sp,-24
     2fc:	afbf0014 	sw	ra,20(sp)
     300:	8c8f0190 	lw	t7,400(a0)
     304:	3c0e0000 	lui	t6,0x0
     308:	25ce0000 	addiu	t6,t6,0
     30c:	11cf0009 	beq	t6,t7,334 <EnFloormas_SetupBigWalk+0x3c>
     310:	00803825 	move	a3,a0
     314:	3c050000 	lui	a1,0x0
     318:	24a50000 	addiu	a1,a1,0
     31c:	2484014c 	addiu	a0,a0,332
     320:	3c063fc0 	lui	a2,0x3fc0
     324:	0c000000 	jal	0 <EnFloormas_Init>
     328:	afa70018 	sw	a3,24(sp)
     32c:	10000005 	b	344 <EnFloormas_SetupBigWalk+0x4c>
     330:	8fa70018 	lw	a3,24(sp)
     334:	3c013fc0 	lui	at,0x3fc0
     338:	44812000 	mtc1	at,$f4
     33c:	00000000 	nop
     340:	e4e40168 	swc1	$f4,360(a3)
     344:	24040002 	li	a0,2
     348:	24050004 	li	a1,4
     34c:	0c000000 	jal	0 <EnFloormas_Init>
     350:	afa70018 	sw	a3,24(sp)
     354:	8fa70018 	lw	a3,24(sp)
     358:	3c013fc0 	lui	at,0x3fc0
     35c:	44813000 	mtc1	at,$f6
     360:	3c180000 	lui	t8,0x0
     364:	27180000 	addiu	t8,t8,0
     368:	a4e20194 	sh	v0,404(a3)
     36c:	acf80190 	sw	t8,400(a3)
     370:	e4e60068 	swc1	$f6,104(a3)
     374:	8fbf0014 	lw	ra,20(sp)
     378:	27bd0018 	addiu	sp,sp,24
     37c:	03e00008 	jr	ra
     380:	00000000 	nop

00000384 <EnFloormas_SetupBigStopWalk>:
     384:	27bdffe8 	addiu	sp,sp,-24
     388:	afbf0014 	sw	ra,20(sp)
     38c:	00803025 	move	a2,a0
     390:	3c050000 	lui	a1,0x0
     394:	24a50000 	addiu	a1,a1,0
     398:	afa60018 	sw	a2,24(sp)
     39c:	0c000000 	jal	0 <EnFloormas_Init>
     3a0:	2484014c 	addiu	a0,a0,332
     3a4:	8fa60018 	lw	a2,24(sp)
     3a8:	44802000 	mtc1	zero,$f4
     3ac:	3c0e0000 	lui	t6,0x0
     3b0:	25ce0000 	addiu	t6,t6,0
     3b4:	acce0190 	sw	t6,400(a2)
     3b8:	e4c40068 	swc1	$f4,104(a2)
     3bc:	8fbf0014 	lw	ra,20(sp)
     3c0:	27bd0018 	addiu	sp,sp,24
     3c4:	03e00008 	jr	ra
     3c8:	00000000 	nop

000003cc <EnFloormas_SetupRun>:
     3cc:	3c0140a0 	lui	at,0x40a0
     3d0:	44812000 	mtc1	at,$f4
     3d4:	3c014040 	lui	at,0x4040
     3d8:	44813000 	mtc1	at,$f6
     3dc:	3c0e0000 	lui	t6,0x0
     3e0:	25ce0000 	addiu	t6,t6,0
     3e4:	a4800194 	sh	zero,404(a0)
     3e8:	ac8e0190 	sw	t6,400(a0)
     3ec:	e4840068 	swc1	$f4,104(a0)
     3f0:	03e00008 	jr	ra
     3f4:	e4860168 	swc1	$f6,360(a0)

000003f8 <EnFloormas_SetupTurn>:
     3f8:	27bdffc8 	addiu	sp,sp,-56
     3fc:	afbf002c 	sw	ra,44(sp)
     400:	afb00028 	sw	s0,40(sp)
     404:	848f00b6 	lh	t7,182(a0)
     408:	848e0196 	lh	t6,406(a0)
     40c:	44802000 	mtc1	zero,$f4
     410:	00808025 	move	s0,a0
     414:	01cf1823 	subu	v1,t6,t7
     418:	00031c00 	sll	v1,v1,0x10
     41c:	00031c03 	sra	v1,v1,0x10
     420:	18600009 	blez	v1,448 <EnFloormas_SetupTurn+0x50>
     424:	e4840068 	swc1	$f4,104(a0)
     428:	3c050000 	lui	a1,0x0
     42c:	24a50000 	addiu	a1,a1,0
     430:	2484014c 	addiu	a0,a0,332
     434:	3c06c040 	lui	a2,0xc040
     438:	0c000000 	jal	0 <EnFloormas_Init>
     43c:	a7a30036 	sh	v1,54(sp)
     440:	10000015 	b	498 <EnFloormas_SetupTurn+0xa0>
     444:	87a30036 	lh	v1,54(sp)
     448:	3c040000 	lui	a0,0x0
     44c:	24840000 	addiu	a0,a0,0
     450:	0c000000 	jal	0 <EnFloormas_Init>
     454:	a7a30036 	sh	v1,54(sp)
     458:	44823000 	mtc1	v0,$f6
     45c:	3c01c040 	lui	at,0xc040
     460:	44815000 	mtc1	at,$f10
     464:	468031a0 	cvt.s.w	$f6,$f6
     468:	44804000 	mtc1	zero,$f8
     46c:	3c050000 	lui	a1,0x0
     470:	24180002 	li	t8,2
     474:	afb80014 	sw	t8,20(sp)
     478:	24a50000 	addiu	a1,a1,0
     47c:	44073000 	mfc1	a3,$f6
     480:	2604014c 	addiu	a0,s0,332
     484:	3c06bf80 	lui	a2,0xbf80
     488:	e7aa0018 	swc1	$f10,24(sp)
     48c:	0c000000 	jal	0 <EnFloormas_Init>
     490:	e7a80010 	swc1	$f8,16(sp)
     494:	87a30036 	lh	v1,54(sp)
     498:	3c010000 	lui	at,0x0
     49c:	c4300064 	lwc1	$f16,100(at)
     4a0:	c6120050 	lwc1	$f18,80(s0)
     4a4:	3c0b0000 	lui	t3,0x0
     4a8:	256b0000 	addiu	t3,t3,0
     4ac:	4612803c 	c.lt.s	$f16,$f18
     4b0:	00000000 	nop
     4b4:	4502000b 	bc1fl	4e4 <EnFloormas_SetupTurn+0xec>
     4b8:	c6000168 	lwc1	$f0,360(s0)
     4bc:	44832000 	mtc1	v1,$f4
     4c0:	3c010000 	lui	at,0x0
     4c4:	c4280068 	lwc1	$f8,104(at)
     4c8:	468021a0 	cvt.s.w	$f6,$f4
     4cc:	46083282 	mul.s	$f10,$f6,$f8
     4d0:	4600540d 	trunc.w.s	$f16,$f10
     4d4:	44088000 	mfc1	t0,$f16
     4d8:	1000000d 	b	510 <EnFloormas_SetupTurn+0x118>
     4dc:	a6080196 	sh	t0,406(s0)
     4e0:	c6000168 	lwc1	$f0,360(s0)
     4e4:	44832000 	mtc1	v1,$f4
     4e8:	3c010000 	lui	at,0x0
     4ec:	46000480 	add.s	$f18,$f0,$f0
     4f0:	468021a0 	cvt.s.w	$f6,$f4
     4f4:	e6120168 	swc1	$f18,360(s0)
     4f8:	c428006c 	lwc1	$f8,108(at)
     4fc:	46083282 	mul.s	$f10,$f6,$f8
     500:	4600540d 	trunc.w.s	$f16,$f10
     504:	440a8000 	mfc1	t2,$f16
     508:	00000000 	nop
     50c:	a60a0196 	sh	t2,406(s0)
     510:	ae0b0190 	sw	t3,400(s0)
     514:	8fbf002c 	lw	ra,44(sp)
     518:	8fb00028 	lw	s0,40(sp)
     51c:	27bd0038 	addiu	sp,sp,56
     520:	03e00008 	jr	ra
     524:	00000000 	nop

00000528 <EnFloormas_SetupHover>:
     528:	27bdffc8 	addiu	sp,sp,-56
     52c:	afb00030 	sw	s0,48(sp)
     530:	00808025 	move	s0,a0
     534:	afbf0034 	sw	ra,52(sp)
     538:	3c040000 	lui	a0,0x0
     53c:	afa5003c 	sw	a1,60(sp)
     540:	0c000000 	jal	0 <EnFloormas_Init>
     544:	24840000 	addiu	a0,a0,0
     548:	44822000 	mtc1	v0,$f4
     54c:	3c01c040 	lui	at,0xc040
     550:	44814000 	mtc1	at,$f8
     554:	468021a0 	cvt.s.w	$f6,$f4
     558:	3c050000 	lui	a1,0x0
     55c:	240e0002 	li	t6,2
     560:	afae0014 	sw	t6,20(sp)
     564:	24a50000 	addiu	a1,a1,0
     568:	2604014c 	addiu	a0,s0,332
     56c:	e7a60010 	swc1	$f6,16(sp)
     570:	3c064040 	lui	a2,0x4040
     574:	24070000 	li	a3,0
     578:	0c000000 	jal	0 <EnFloormas_Init>
     57c:	e7a80018 	swc1	$f8,24(sp)
     580:	44800000 	mtc1	zero,$f0
     584:	02002025 	move	a0,s0
     588:	e6000068 	swc1	$f0,104(s0)
     58c:	0c000000 	jal	0 <EnFloormas_Init>
     590:	e600006c 	swc1	$f0,108(s0)
     594:	3c0141a0 	lui	at,0x41a0
     598:	44815000 	mtc1	at,$f10
     59c:	240f0006 	li	t7,6
     5a0:	2418012c 	li	t8,300
     5a4:	24190064 	li	t9,100
     5a8:	24080001 	li	t0,1
     5ac:	afa80020 	sw	t0,32(sp)
     5b0:	afb9001c 	sw	t9,28(sp)
     5b4:	afb80018 	sw	t8,24(sp)
     5b8:	afaf0010 	sw	t7,16(sp)
     5bc:	8fa4003c 	lw	a0,60(sp)
     5c0:	02002825 	move	a1,s0
     5c4:	26060024 	addiu	a2,s0,36
     5c8:	3c074170 	lui	a3,0x4170
     5cc:	0c000000 	jal	0 <EnFloormas_Init>
     5d0:	e7aa0014 	swc1	$f10,20(sp)
     5d4:	02002025 	move	a0,s0
     5d8:	0c000000 	jal	0 <EnFloormas_Init>
     5dc:	24053930 	li	a1,14640
     5e0:	3c090000 	lui	t1,0x0
     5e4:	25290000 	addiu	t1,t1,0
     5e8:	ae090190 	sw	t1,400(s0)
     5ec:	8fbf0034 	lw	ra,52(sp)
     5f0:	8fb00030 	lw	s0,48(sp)
     5f4:	27bd0038 	addiu	sp,sp,56
     5f8:	03e00008 	jr	ra
     5fc:	00000000 	nop

00000600 <EnFloormas_SetupCharge>:
     600:	240e0019 	li	t6,25
     604:	a48e0194 	sh	t6,404(a0)
     608:	3c010000 	lui	at,0x0
     60c:	c4240070 	lwc1	$f4,112(at)
     610:	3c013f00 	lui	at,0x3f00
     614:	44813000 	mtc1	at,$f6
     618:	3c0f0000 	lui	t7,0x0
     61c:	25ef0000 	addiu	t7,t7,0
     620:	ac8f0190 	sw	t7,400(a0)
     624:	e484006c 	swc1	$f4,108(a0)
     628:	03e00008 	jr	ra
     62c:	e4860068 	swc1	$f6,104(a0)

00000630 <EnFloormas_SetupLand>:
     630:	3c014228 	lui	at,0x4228
     634:	44812000 	mtc1	at,$f4
     638:	27bdffd0 	addiu	sp,sp,-48
     63c:	3c0140a0 	lui	at,0x40a0
     640:	44813000 	mtc1	at,$f6
     644:	afb00028 	sw	s0,40(sp)
     648:	00808025 	move	s0,a0
     64c:	afbf002c 	sw	ra,44(sp)
     650:	3c050000 	lui	a1,0x0
     654:	240e0002 	li	t6,2
     658:	afae0014 	sw	t6,20(sp)
     65c:	24a50000 	addiu	a1,a1,0
     660:	2484014c 	addiu	a0,a0,332
     664:	3c063f80 	lui	a2,0x3f80
     668:	3c074224 	lui	a3,0x4224
     66c:	e7a40010 	swc1	$f4,16(sp)
     670:	0c000000 	jal	0 <EnFloormas_Init>
     674:	e7a60018 	swc1	$f6,24(sp)
     678:	c6080068 	lwc1	$f8,104(s0)
     67c:	44805000 	mtc1	zero,$f10
     680:	3c01bf80 	lui	at,0xbf80
     684:	44818000 	mtc1	at,$f16
     688:	460a403c 	c.lt.s	$f8,$f10
     68c:	3c090000 	lui	t1,0x0
     690:	2419001e 	li	t9,30
     694:	25290000 	addiu	t1,t1,0
     698:	45010006 	bc1t	6b4 <EnFloormas_SetupLand+0x84>
     69c:	00000000 	nop
     6a0:	8e180190 	lw	t8,400(s0)
     6a4:	3c0f0000 	lui	t7,0x0
     6a8:	25ef0000 	addiu	t7,t7,0
     6ac:	11f80003 	beq	t7,t8,6bc <EnFloormas_SetupLand+0x8c>
     6b0:	2408002d 	li	t0,45
     6b4:	10000002 	b	6c0 <EnFloormas_SetupLand+0x90>
     6b8:	a6190194 	sh	t9,404(s0)
     6bc:	a6080194 	sh	t0,404(s0)
     6c0:	e610006c 	swc1	$f16,108(s0)
     6c4:	ae090190 	sw	t1,400(s0)
     6c8:	8fbf002c 	lw	ra,44(sp)
     6cc:	8fb00028 	lw	s0,40(sp)
     6d0:	27bd0030 	addiu	sp,sp,48
     6d4:	03e00008 	jr	ra
     6d8:	00000000 	nop

000006dc <EnFloormas_SetupSplit>:
     6dc:	27bdffd0 	addiu	sp,sp,-48
     6e0:	afbf002c 	sw	ra,44(sp)
     6e4:	afb00028 	sw	s0,40(sp)
     6e8:	3c053b83 	lui	a1,0x3b83
     6ec:	00808025 	move	s0,a0
     6f0:	0c000000 	jal	0 <EnFloormas_Init>
     6f4:	34a5126f 	ori	a1,a1,0x126f
     6f8:	8e0e0004 	lw	t6,4(s0)
     6fc:	24010080 	li	at,128
     700:	3c090000 	lui	t1,0x0
     704:	35cf0010 	ori	t7,t6,0x10
     708:	31f90080 	andi	t9,t7,0x80
     70c:	17210005 	bne	t9,at,724 <EnFloormas_SetupSplit+0x48>
     710:	ae0f0004 	sw	t7,4(s0)
     714:	3c080000 	lui	t0,0x0
     718:	25080000 	addiu	t0,t0,0
     71c:	10000003 	b	72c <EnFloormas_SetupSplit+0x50>
     720:	ae080134 	sw	t0,308(s0)
     724:	25290000 	addiu	t1,t1,0
     728:	ae090134 	sw	t1,308(s0)
     72c:	8e020118 	lw	v0,280(s0)
     730:	240e0010 	li	t6,16
     734:	3c040000 	lui	a0,0x0
     738:	844a00b6 	lh	t2,182(v0)
     73c:	24840000 	addiu	a0,a0,0
     740:	254b5555 	addiu	t3,t2,21845
     744:	a60b00b6 	sh	t3,182(s0)
     748:	8c4d0024 	lw	t5,36(v0)
     74c:	ae0d0024 	sw	t5,36(s0)
     750:	8c4c0028 	lw	t4,40(v0)
     754:	ae0c0028 	sw	t4,40(s0)
     758:	8c4d002c 	lw	t5,44(v0)
     75c:	a60e001c 	sh	t6,28(s0)
     760:	0c000000 	jal	0 <EnFloormas_Init>
     764:	ae0d002c 	sw	t5,44(s0)
     768:	44822000 	mtc1	v0,$f4
     76c:	44804000 	mtc1	zero,$f8
     770:	3c050000 	lui	a1,0x0
     774:	468021a0 	cvt.s.w	$f6,$f4
     778:	240f0002 	li	t7,2
     77c:	afaf0014 	sw	t7,20(sp)
     780:	24a50000 	addiu	a1,a1,0
     784:	2604014c 	addiu	a0,s0,332
     788:	3c063f80 	lui	a2,0x3f80
     78c:	e7a60010 	swc1	$f6,16(sp)
     790:	3c074224 	lui	a3,0x4224
     794:	0c000000 	jal	0 <EnFloormas_Init>
     798:	e7a80018 	swc1	$f8,24(sp)
     79c:	3c020000 	lui	v0,0x0
     7a0:	24420020 	addiu	v0,v0,32
     7a4:	84580020 	lh	t8,32(v0)
     7a8:	3c010000 	lui	at,0x0
     7ac:	c4200074 	lwc1	$f0,116(at)
     7b0:	44985000 	mtc1	t8,$f10
     7b4:	3c014080 	lui	at,0x4080
     7b8:	920c02f6 	lbu	t4,758(s0)
     7bc:	46805420 	cvt.s.w	$f16,$f10
     7c0:	3c0e0000 	lui	t6,0x0
     7c4:	318dfffb 	andi	t5,t4,0xfffb
     7c8:	3c180000 	lui	t8,0x0
     7cc:	27180000 	addiu	t8,t8,0
     7d0:	46008482 	mul.s	$f18,$f16,$f0
     7d4:	4600910d 	trunc.w.s	$f4,$f18
     7d8:	44819000 	mtc1	at,$f18
     7dc:	3c0140e0 	lui	at,0x40e0
     7e0:	44082000 	mfc1	t0,$f4
     7e4:	44812000 	mtc1	at,$f4
     7e8:	a6080308 	sh	t0,776(s0)
     7ec:	84490022 	lh	t1,34(v0)
     7f0:	a20d02f6 	sb	t5,758(s0)
     7f4:	e6120068 	swc1	$f18,104(s0)
     7f8:	44893000 	mtc1	t1,$f6
     7fc:	e6040060 	swc1	$f4,96(s0)
     800:	46803220 	cvt.s.w	$f8,$f6
     804:	46004282 	mul.s	$f10,$f8,$f0
     808:	4600540d 	trunc.w.s	$f16,$f10
     80c:	440b8000 	mfc1	t3,$f16
     810:	00000000 	nop
     814:	a60b030a 	sh	t3,778(s0)
     818:	91ce004c 	lbu	t6,76(t6)
     81c:	ae180190 	sw	t8,400(s0)
     820:	000e7843 	sra	t7,t6,0x1
     824:	a20f00af 	sb	t7,175(s0)
     828:	8fbf002c 	lw	ra,44(sp)
     82c:	8fb00028 	lw	s0,40(sp)
     830:	27bd0030 	addiu	sp,sp,48
     834:	03e00008 	jr	ra
     838:	00000000 	nop

0000083c <EnFloormas_SetupSmWalk>:
     83c:	27bdffe8 	addiu	sp,sp,-24
     840:	afbf0014 	sw	ra,20(sp)
     844:	00803825 	move	a3,a0
     848:	3c050000 	lui	a1,0x0
     84c:	24a50000 	addiu	a1,a1,0
     850:	afa70018 	sw	a3,24(sp)
     854:	2484014c 	addiu	a0,a0,332
     858:	0c000000 	jal	0 <EnFloormas_Init>
     85c:	3c064090 	lui	a2,0x4090
     860:	8fa70018 	lw	a3,24(sp)
     864:	3c0140a0 	lui	at,0x40a0
     868:	44812000 	mtc1	at,$f4
     86c:	3c0e0000 	lui	t6,0x0
     870:	25ce0000 	addiu	t6,t6,0
     874:	acee0190 	sw	t6,400(a3)
     878:	e4e40068 	swc1	$f4,104(a3)
     87c:	8fbf0014 	lw	ra,20(sp)
     880:	27bd0018 	addiu	sp,sp,24
     884:	03e00008 	jr	ra
     888:	00000000 	nop

0000088c <EnFloormas_SetupSmDecideAction>:
     88c:	27bdffe8 	addiu	sp,sp,-24
     890:	afbf0014 	sw	ra,20(sp)
     894:	8c8f0190 	lw	t7,400(a0)
     898:	3c0e0000 	lui	t6,0x0
     89c:	25ce0000 	addiu	t6,t6,0
     8a0:	11cf0008 	beq	t6,t7,8c4 <EnFloormas_SetupSmDecideAction+0x38>
     8a4:	00803825 	move	a3,a0
     8a8:	3c050000 	lui	a1,0x0
     8ac:	24a50000 	addiu	a1,a1,0
     8b0:	2484014c 	addiu	a0,a0,332
     8b4:	3c064090 	lui	a2,0x4090
     8b8:	0c000000 	jal	0 <EnFloormas_Init>
     8bc:	afa70018 	sw	a3,24(sp)
     8c0:	8fa70018 	lw	a3,24(sp)
     8c4:	3c0140a0 	lui	at,0x40a0
     8c8:	44812000 	mtc1	at,$f4
     8cc:	3c180000 	lui	t8,0x0
     8d0:	27180000 	addiu	t8,t8,0
     8d4:	acf80190 	sw	t8,400(a3)
     8d8:	e4e40068 	swc1	$f4,104(a3)
     8dc:	8fbf0014 	lw	ra,20(sp)
     8e0:	27bd0018 	addiu	sp,sp,24
     8e4:	03e00008 	jr	ra
     8e8:	00000000 	nop

000008ec <EnFloormas_SetupSmShrink>:
     8ec:	27bdffa0 	addiu	sp,sp,-96
     8f0:	44800000 	mtc1	zero,$f0
     8f4:	afbf004c 	sw	ra,76(sp)
     8f8:	afb00048 	sw	s0,72(sp)
     8fc:	afa50064 	sw	a1,100(sp)
     900:	c4840024 	lwc1	$f4,36(a0)
     904:	e4800068 	swc1	$f0,104(a0)
     908:	e4800060 	swc1	$f0,96(a0)
     90c:	3c014170 	lui	at,0x4170
     910:	e7a40054 	swc1	$f4,84(sp)
     914:	c4860028 	lwc1	$f6,40(a0)
     918:	44814000 	mtc1	at,$f8
     91c:	00808025 	move	s0,a0
     920:	3c060000 	lui	a2,0x0
     924:	46083280 	add.s	$f10,$f6,$f8
     928:	3c070000 	lui	a3,0x0
     92c:	240e0096 	li	t6,150
     930:	240ffff6 	li	t7,-10
     934:	e7aa0058 	swc1	$f10,88(sp)
     938:	c490002c 	lwc1	$f16,44(a0)
     93c:	241800ff 	li	t8,255
     940:	241900ff 	li	t9,255
     944:	240800ff 	li	t0,255
     948:	240900ff 	li	t1,255
     94c:	240a00ff 	li	t2,255
     950:	240b0001 	li	t3,1
     954:	240c0009 	li	t4,9
     958:	240d0001 	li	t5,1
     95c:	afad003c 	sw	t5,60(sp)
     960:	afac0038 	sw	t4,56(sp)
     964:	afab0034 	sw	t3,52(sp)
     968:	afaa0030 	sw	t2,48(sp)
     96c:	afa90024 	sw	t1,36(sp)
     970:	afa80020 	sw	t0,32(sp)
     974:	afb9001c 	sw	t9,28(sp)
     978:	afb80018 	sw	t8,24(sp)
     97c:	afa0002c 	sw	zero,44(sp)
     980:	afa00028 	sw	zero,40(sp)
     984:	afaf0014 	sw	t7,20(sp)
     988:	afae0010 	sw	t6,16(sp)
     98c:	8fa40064 	lw	a0,100(sp)
     990:	24e7008c 	addiu	a3,a3,140
     994:	24c60080 	addiu	a2,a2,128
     998:	27a50054 	addiu	a1,sp,84
     99c:	0c000000 	jal	0 <EnFloormas_Init>
     9a0:	e7b0005c 	swc1	$f16,92(sp)
     9a4:	3c0e0000 	lui	t6,0x0
     9a8:	25ce0000 	addiu	t6,t6,0
     9ac:	ae0e0190 	sw	t6,400(s0)
     9b0:	8fbf004c 	lw	ra,76(sp)
     9b4:	8fb00048 	lw	s0,72(sp)
     9b8:	27bd0060 	addiu	sp,sp,96
     9bc:	03e00008 	jr	ra
     9c0:	00000000 	nop

000009c4 <EnFloormas_SetupSlaveJumpAtMaster>:
     9c4:	44800000 	mtc1	zero,$f0
     9c8:	27bdffd8 	addiu	sp,sp,-40
     9cc:	3c014224 	lui	at,0x4224
     9d0:	44812000 	mtc1	at,$f4
     9d4:	afbf0024 	sw	ra,36(sp)
     9d8:	afa40028 	sw	a0,40(sp)
     9dc:	3c050000 	lui	a1,0x0
     9e0:	240e0002 	li	t6,2
     9e4:	44070000 	mfc1	a3,$f0
     9e8:	afae0014 	sw	t6,20(sp)
     9ec:	24a50000 	addiu	a1,a1,0
     9f0:	2484014c 	addiu	a0,a0,332
     9f4:	3c064000 	lui	a2,0x4000
     9f8:	e7a00018 	swc1	$f0,24(sp)
     9fc:	0c000000 	jal	0 <EnFloormas_Init>
     a00:	e7a40010 	swc1	$f4,16(sp)
     a04:	8fa20028 	lw	v0,40(sp)
     a08:	44803000 	mtc1	zero,$f6
     a0c:	3c0f0000 	lui	t7,0x0
     a10:	25ef0000 	addiu	t7,t7,0
     a14:	ac4f0190 	sw	t7,400(v0)
     a18:	e4460068 	swc1	$f6,104(v0)
     a1c:	8fbf0024 	lw	ra,36(sp)
     a20:	27bd0028 	addiu	sp,sp,40
     a24:	03e00008 	jr	ra
     a28:	00000000 	nop

00000a2c <EnFloormas_SetupJumpAtLink>:
     a2c:	44800000 	mtc1	zero,$f0
     a30:	27bdffd8 	addiu	sp,sp,-40
     a34:	3c014224 	lui	at,0x4224
     a38:	44812000 	mtc1	at,$f4
     a3c:	afbf0024 	sw	ra,36(sp)
     a40:	afa40028 	sw	a0,40(sp)
     a44:	3c050000 	lui	a1,0x0
     a48:	240e0002 	li	t6,2
     a4c:	44070000 	mfc1	a3,$f0
     a50:	afae0014 	sw	t6,20(sp)
     a54:	24a50000 	addiu	a1,a1,0
     a58:	2484014c 	addiu	a0,a0,332
     a5c:	3c064000 	lui	a2,0x4000
     a60:	e7a00018 	swc1	$f0,24(sp)
     a64:	0c000000 	jal	0 <EnFloormas_Init>
     a68:	e7a40010 	swc1	$f4,16(sp)
     a6c:	8fa20028 	lw	v0,40(sp)
     a70:	44803000 	mtc1	zero,$f6
     a74:	3c0f0000 	lui	t7,0x0
     a78:	25ef0000 	addiu	t7,t7,0
     a7c:	ac4f0190 	sw	t7,400(v0)
     a80:	e4460068 	swc1	$f6,104(v0)
     a84:	8fbf0024 	lw	ra,36(sp)
     a88:	27bd0028 	addiu	sp,sp,40
     a8c:	03e00008 	jr	ra
     a90:	00000000 	nop

00000a94 <EnFloormas_SetupGrabLink>:
     a94:	27bdffc0 	addiu	sp,sp,-64
     a98:	3c014234 	lui	at,0x4234
     a9c:	44812000 	mtc1	at,$f4
     aa0:	3c01c040 	lui	at,0xc040
     aa4:	44813000 	mtc1	at,$f6
     aa8:	afb00028 	sw	s0,40(sp)
     aac:	afa50044 	sw	a1,68(sp)
     ab0:	00808025 	move	s0,a0
     ab4:	afbf002c 	sw	ra,44(sp)
     ab8:	3c050000 	lui	a1,0x0
     abc:	240e0002 	li	t6,2
     ac0:	afae0014 	sw	t6,20(sp)
     ac4:	24a50000 	addiu	a1,a1,0
     ac8:	2484014c 	addiu	a0,a0,332
     acc:	3c063f80 	lui	a2,0x3f80
     ad0:	3c074210 	lui	a3,0x4210
     ad4:	e7a40010 	swc1	$f4,16(sp)
     ad8:	0c000000 	jal	0 <EnFloormas_Init>
     adc:	e7a60018 	swc1	$f6,24(sp)
     ae0:	8e0f0004 	lw	t7,4(s0)
     ae4:	44800000 	mtc1	zero,$f0
     ae8:	2401fffe 	li	at,-2
     aec:	01e1c024 	and	t8,t7,at
     af0:	ae180004 	sw	t8,4(s0)
     af4:	02002025 	move	a0,s0
     af8:	e6000068 	swc1	$f0,104(s0)
     afc:	0c000000 	jal	0 <EnFloormas_Init>
     b00:	e6000060 	swc1	$f0,96(s0)
     b04:	3c190000 	lui	t9,0x0
     b08:	8f390004 	lw	t9,4(t9)
     b0c:	8fa80044 	lw	t0,68(sp)
     b10:	5320001d 	beqzl	t9,b88 <EnFloormas_SetupGrabLink+0xf4>
     b14:	c6000094 	lwc1	$f0,148(s0)
     b18:	c6000094 	lwc1	$f0,148(s0)
     b1c:	3c0141a0 	lui	at,0x41a0
     b20:	44811000 	mtc1	at,$f2
     b24:	46000007 	neg.s	$f0,$f0
     b28:	3c0141f0 	lui	at,0x41f0
     b2c:	4602003c 	c.lt.s	$f0,$f2
     b30:	00000000 	nop
     b34:	45020007 	bc1fl	b54 <EnFloormas_SetupGrabLink+0xc0>
     b38:	44816000 	mtc1	at,$f12
     b3c:	46001006 	mov.s	$f0,$f2
     b40:	3c01c120 	lui	at,0xc120
     b44:	44811000 	mtc1	at,$f2
     b48:	10000027 	b	be8 <EnFloormas_SetupGrabLink+0x154>
     b4c:	c5080028 	lwc1	$f8,40(t0)
     b50:	44816000 	mtc1	at,$f12
     b54:	3c01c120 	lui	at,0xc120
     b58:	4600603c 	c.lt.s	$f12,$f0
     b5c:	00000000 	nop
     b60:	45020004 	bc1fl	b74 <EnFloormas_SetupGrabLink+0xe0>
     b64:	46000086 	mov.s	$f2,$f0
     b68:	10000002 	b	b74 <EnFloormas_SetupGrabLink+0xe0>
     b6c:	46006086 	mov.s	$f2,$f12
     b70:	46000086 	mov.s	$f2,$f0
     b74:	46001006 	mov.s	$f0,$f2
     b78:	44811000 	mtc1	at,$f2
     b7c:	1000001a 	b	be8 <EnFloormas_SetupGrabLink+0x154>
     b80:	c5080028 	lwc1	$f8,40(t0)
     b84:	c6000094 	lwc1	$f0,148(s0)
     b88:	3c0141c8 	lui	at,0x41c8
     b8c:	44811000 	mtc1	at,$f2
     b90:	46000007 	neg.s	$f0,$f0
     b94:	3c014234 	lui	at,0x4234
     b98:	4602003c 	c.lt.s	$f0,$f2
     b9c:	00000000 	nop
     ba0:	45020004 	bc1fl	bb4 <EnFloormas_SetupGrabLink+0x120>
     ba4:	44816000 	mtc1	at,$f12
     ba8:	1000000b 	b	bd8 <EnFloormas_SetupGrabLink+0x144>
     bac:	46001006 	mov.s	$f0,$f2
     bb0:	44816000 	mtc1	at,$f12
     bb4:	00000000 	nop
     bb8:	4600603c 	c.lt.s	$f12,$f0
     bbc:	00000000 	nop
     bc0:	45020004 	bc1fl	bd4 <EnFloormas_SetupGrabLink+0x140>
     bc4:	46000086 	mov.s	$f2,$f0
     bc8:	10000002 	b	bd4 <EnFloormas_SetupGrabLink+0x140>
     bcc:	46006086 	mov.s	$f2,$f12
     bd0:	46000086 	mov.s	$f2,$f0
     bd4:	46001006 	mov.s	$f0,$f2
     bd8:	3c01c28c 	lui	at,0xc28c
     bdc:	44811000 	mtc1	at,$f2
     be0:	00000000 	nop
     be4:	c5080028 	lwc1	$f8,40(t0)
     be8:	860400b6 	lh	a0,182(s0)
     bec:	46004280 	add.s	$f10,$f8,$f0
     bf0:	e60a0028 	swc1	$f10,40(s0)
     bf4:	0c000000 	jal	0 <EnFloormas_Init>
     bf8:	e7a20038 	swc1	$f2,56(sp)
     bfc:	3c010000 	lui	at,0x0
     c00:	c4300078 	lwc1	$f16,120(at)
     c04:	c7a20038 	lwc1	$f2,56(sp)
     c08:	8fa90044 	lw	t1,68(sp)
     c0c:	860400b6 	lh	a0,182(s0)
     c10:	46101302 	mul.s	$f12,$f2,$f16
     c14:	c5240024 	lwc1	$f4,36(t1)
     c18:	460c0482 	mul.s	$f18,$f0,$f12
     c1c:	46049180 	add.s	$f6,$f18,$f4
     c20:	e6060024 	swc1	$f6,36(s0)
     c24:	0c000000 	jal	0 <EnFloormas_Init>
     c28:	e7ac0030 	swc1	$f12,48(sp)
     c2c:	c7ac0030 	lwc1	$f12,48(sp)
     c30:	8faa0044 	lw	t2,68(sp)
     c34:	3c0c0000 	lui	t4,0x0
     c38:	460c0202 	mul.s	$f8,$f0,$f12
     c3c:	c54a002c 	lwc1	$f10,44(t2)
     c40:	240bb320 	li	t3,-19680
     c44:	258c0000 	addiu	t4,t4,0
     c48:	a60b00b4 	sh	t3,180(s0)
     c4c:	ae0c0190 	sw	t4,400(s0)
     c50:	460a4400 	add.s	$f16,$f8,$f10
     c54:	e610002c 	swc1	$f16,44(s0)
     c58:	8fbf002c 	lw	ra,44(sp)
     c5c:	8fb00028 	lw	s0,40(sp)
     c60:	27bd0040 	addiu	sp,sp,64
     c64:	03e00008 	jr	ra
     c68:	00000000 	nop

00000c6c <EnFloormas_SetupMerge>:
     c6c:	27bdffe8 	addiu	sp,sp,-24
     c70:	afbf0014 	sw	ra,20(sp)
     c74:	00803025 	move	a2,a0
     c78:	3c050000 	lui	a1,0x0
     c7c:	24a50000 	addiu	a1,a1,0
     c80:	afa60018 	sw	a2,24(sp)
     c84:	0c000000 	jal	0 <EnFloormas_Init>
     c88:	2484014c 	addiu	a0,a0,332
     c8c:	8fa40018 	lw	a0,24(sp)
     c90:	848e019a 	lh	t6,410(a0)
     c94:	a4800194 	sh	zero,404(a0)
     c98:	25cf05dc 	addiu	t7,t6,1500
     c9c:	0c000000 	jal	0 <EnFloormas_Init>
     ca0:	a48f019a 	sh	t7,410(a0)
     ca4:	8fa60018 	lw	a2,24(sp)
     ca8:	3c180000 	lui	t8,0x0
     cac:	27180000 	addiu	t8,t8,0
     cb0:	acd80190 	sw	t8,400(a2)
     cb4:	8fbf0014 	lw	ra,20(sp)
     cb8:	27bd0018 	addiu	sp,sp,24
     cbc:	03e00008 	jr	ra
     cc0:	00000000 	nop

00000cc4 <EnFloormas_SetupSmWait>:
     cc4:	27bdffe0 	addiu	sp,sp,-32
     cc8:	afbf0014 	sw	ra,20(sp)
     ccc:	8c860118 	lw	a2,280(a0)
     cd0:	3c020000 	lui	v0,0x0
     cd4:	24420000 	addiu	v0,v0,0
     cd8:	8cce0190 	lw	t6,400(a2)
     cdc:	00802825 	move	a1,a0
     ce0:	8c87011c 	lw	a3,284(a0)
     ce4:	144e000e 	bne	v0,t6,d20 <EnFloormas_SetupSmWait+0x5c>
     ce8:	2401ffee 	li	at,-18
     cec:	8cef0190 	lw	t7,400(a3)
     cf0:	00c02025 	move	a0,a2
     cf4:	544f000b 	bnel	v0,t7,d24 <EnFloormas_SetupSmWait+0x60>
     cf8:	8cb80004 	lw	t8,4(a1)
     cfc:	afa50020 	sw	a1,32(sp)
     d00:	0c000000 	jal	0 <EnFloormas_Init>
     d04:	afa70018 	sw	a3,24(sp)
     d08:	0c000000 	jal	0 <EnFloormas_Init>
     d0c:	8fa40018 	lw	a0,24(sp)
     d10:	0c000000 	jal	0 <EnFloormas_Init>
     d14:	8fa40020 	lw	a0,32(sp)
     d18:	10000007 	b	d38 <EnFloormas_SetupSmWait+0x74>
     d1c:	8fbf0014 	lw	ra,20(sp)
     d20:	8cb80004 	lw	t8,4(a1)
     d24:	aca00134 	sw	zero,308(a1)
     d28:	aca20190 	sw	v0,400(a1)
     d2c:	0301c824 	and	t9,t8,at
     d30:	acb90004 	sw	t9,4(a1)
     d34:	8fbf0014 	lw	ra,20(sp)
     d38:	27bd0020 	addiu	sp,sp,32
     d3c:	03e00008 	jr	ra
     d40:	00000000 	nop

00000d44 <EnFloormas_SetupTakeDamage>:
     d44:	27bdffd8 	addiu	sp,sp,-40
     d48:	afb00020 	sw	s0,32(sp)
     d4c:	00808025 	move	s0,a0
     d50:	afbf0024 	sw	ra,36(sp)
     d54:	3c050000 	lui	a1,0x0
     d58:	24a50000 	addiu	a1,a1,0
     d5c:	2484014c 	addiu	a0,a0,332
     d60:	0c000000 	jal	0 <EnFloormas_Init>
     d64:	3c06c040 	lui	a2,0xc040
     d68:	8e0e0304 	lw	t6,772(s0)
     d6c:	3c010001 	lui	at,0x1
     d70:	3421f824 	ori	at,at,0xf824
     d74:	8dcf0000 	lw	t7,0(t6)
     d78:	02002025 	move	a0,s0
     d7c:	01e1c024 	and	t8,t7,at
     d80:	13000005 	beqz	t8,d98 <EnFloormas_SetupTakeDamage+0x54>
     d84:	00000000 	nop
     d88:	8e1902d0 	lw	t9,720(s0)
     d8c:	87280032 	lh	t0,50(t9)
     d90:	10000006 	b	dac <EnFloormas_SetupTakeDamage+0x68>
     d94:	a6080032 	sh	t0,50(s0)
     d98:	0c000000 	jal	0 <EnFloormas_Init>
     d9c:	8e0502d0 	lw	a1,720(s0)
     da0:	34018000 	li	at,0x8000
     da4:	00414821 	addu	t1,v0,at
     da8:	a6090032 	sh	t1,50(s0)
     dac:	240a0014 	li	t2,20
     db0:	afaa0010 	sw	t2,16(sp)
     db4:	02002025 	move	a0,s0
     db8:	24054000 	li	a1,16384
     dbc:	240600ff 	li	a2,255
     dc0:	0c000000 	jal	0 <EnFloormas_Init>
     dc4:	00003825 	move	a3,zero
     dc8:	3c0140a0 	lui	at,0x40a0
     dcc:	44812000 	mtc1	at,$f4
     dd0:	3c0140b0 	lui	at,0x40b0
     dd4:	44813000 	mtc1	at,$f6
     dd8:	3c0b0000 	lui	t3,0x0
     ddc:	256b0000 	addiu	t3,t3,0
     de0:	ae0b0190 	sw	t3,400(s0)
     de4:	e6040068 	swc1	$f4,104(s0)
     de8:	e6060060 	swc1	$f6,96(s0)
     dec:	8fbf0024 	lw	ra,36(sp)
     df0:	8fb00020 	lw	s0,32(sp)
     df4:	27bd0028 	addiu	sp,sp,40
     df8:	03e00008 	jr	ra
     dfc:	00000000 	nop

00000e00 <EnFloormas_SetupRecover>:
     e00:	27bdffe8 	addiu	sp,sp,-24
     e04:	afbf0014 	sw	ra,20(sp)
     e08:	00803025 	move	a2,a0
     e0c:	3c050000 	lui	a1,0x0
     e10:	24a50000 	addiu	a1,a1,0
     e14:	afa60018 	sw	a2,24(sp)
     e18:	0c000000 	jal	0 <EnFloormas_Init>
     e1c:	2484014c 	addiu	a0,a0,332
     e20:	8fa60018 	lw	a2,24(sp)
     e24:	44800000 	mtc1	zero,$f0
     e28:	3c0f0000 	lui	t7,0x0
     e2c:	84ce00b6 	lh	t6,182(a2)
     e30:	25ef0000 	addiu	t7,t7,0
     e34:	accf0190 	sw	t7,400(a2)
     e38:	e4c00068 	swc1	$f0,104(a2)
     e3c:	e4c00060 	swc1	$f0,96(a2)
     e40:	a4ce0032 	sh	t6,50(a2)
     e44:	8fbf0014 	lw	ra,20(sp)
     e48:	27bd0018 	addiu	sp,sp,24
     e4c:	03e00008 	jr	ra
     e50:	00000000 	nop

00000e54 <EnFloormas_SetupFreeze>:
     e54:	3c0141a0 	lui	at,0x41a0
     e58:	44812000 	mtc1	at,$f4
     e5c:	27bdffd0 	addiu	sp,sp,-48
     e60:	3c01c040 	lui	at,0xc040
     e64:	44813000 	mtc1	at,$f6
     e68:	afb00028 	sw	s0,40(sp)
     e6c:	00808025 	move	s0,a0
     e70:	afbf002c 	sw	ra,44(sp)
     e74:	3c050000 	lui	a1,0x0
     e78:	240e0002 	li	t6,2
     e7c:	afae0014 	sw	t6,20(sp)
     e80:	24a50000 	addiu	a1,a1,0
     e84:	2484014c 	addiu	a0,a0,332
     e88:	3c063fc0 	lui	a2,0x3fc0
     e8c:	24070000 	li	a3,0
     e90:	e7a40010 	swc1	$f4,16(sp)
     e94:	0c000000 	jal	0 <EnFloormas_Init>
     e98:	e7a60018 	swc1	$f6,24(sp)
     e9c:	920f00b1 	lbu	t7,177(s0)
     ea0:	44804000 	mtc1	zero,$f8
     ea4:	24010004 	li	at,4
     ea8:	15e1000a 	bne	t7,at,ed4 <EnFloormas_SetupFreeze+0x80>
     eac:	e6080068 	swc1	$f8,104(s0)
     eb0:	24180050 	li	t8,80
     eb4:	afb80010 	sw	t8,16(sp)
     eb8:	02002025 	move	a0,s0
     ebc:	24058000 	li	a1,-32768
     ec0:	240600ff 	li	a2,255
     ec4:	0c000000 	jal	0 <EnFloormas_Init>
     ec8:	00003825 	move	a3,zero
     ecc:	10000017 	b	f2c <EnFloormas_SetupFreeze+0xd8>
     ed0:	00000000 	nop
     ed4:	24190050 	li	t9,80
     ed8:	afb90010 	sw	t9,16(sp)
     edc:	02002025 	move	a0,s0
     ee0:	00002825 	move	a1,zero
     ee4:	240600ff 	li	a2,255
     ee8:	0c000000 	jal	0 <EnFloormas_Init>
     eec:	00003825 	move	a3,zero
     ef0:	3c010000 	lui	at,0x0
     ef4:	c42a007c 	lwc1	$f10,124(at)
     ef8:	c6100050 	lwc1	$f16,80(s0)
     efc:	2405389e 	li	a1,14494
     f00:	02002025 	move	a0,s0
     f04:	4610503c 	c.lt.s	$f10,$f16
     f08:	00000000 	nop
     f0c:	45000005 	bc1f	f24 <EnFloormas_SetupFreeze+0xd0>
     f10:	00000000 	nop
     f14:	0c000000 	jal	0 <EnFloormas_Init>
     f18:	02002025 	move	a0,s0
     f1c:	10000003 	b	f2c <EnFloormas_SetupFreeze+0xd8>
     f20:	00000000 	nop
     f24:	0c000000 	jal	0 <EnFloormas_Init>
     f28:	2405389e 	li	a1,14494
     f2c:	3c090000 	lui	t1,0x0
     f30:	24080050 	li	t0,80
     f34:	25290000 	addiu	t1,t1,0
     f38:	a6080194 	sh	t0,404(s0)
     f3c:	ae090190 	sw	t1,400(s0)
     f40:	8fbf002c 	lw	ra,44(sp)
     f44:	8fb00028 	lw	s0,40(sp)
     f48:	27bd0030 	addiu	sp,sp,48
     f4c:	03e00008 	jr	ra
     f50:	00000000 	nop

00000f54 <EnFloormas_Die>:
     f54:	27bdffe0 	addiu	sp,sp,-32
     f58:	afbf001c 	sw	ra,28(sp)
     f5c:	afb00018 	sw	s0,24(sp)
     f60:	afa50024 	sw	a1,36(sp)
     f64:	3c010000 	lui	at,0x0
     f68:	c4240080 	lwc1	$f4,128(at)
     f6c:	c4860050 	lwc1	$f6,80(a0)
     f70:	00808025 	move	s0,a0
     f74:	02002825 	move	a1,s0
     f78:	4606203c 	c.lt.s	$f4,$f6
     f7c:	26060024 	addiu	a2,s0,36
     f80:	24070090 	li	a3,144
     f84:	45000010 	bc1f	fc8 <EnFloormas_Die+0x74>
     f88:	00000000 	nop
     f8c:	848e008a 	lh	t6,138(a0)
     f90:	34018000 	li	at,0x8000
     f94:	01c17821 	addu	t7,t6,at
     f98:	a48f00b6 	sh	t7,182(a0)
     f9c:	0c000000 	jal	0 <EnFloormas_Init>
     fa0:	8c84011c 	lw	a0,284(a0)
     fa4:	0c000000 	jal	0 <EnFloormas_Init>
     fa8:	8e040118 	lw	a0,280(s0)
     fac:	0c000000 	jal	0 <EnFloormas_Init>
     fb0:	02002025 	move	a0,s0
     fb4:	02002025 	move	a0,s0
     fb8:	0c000000 	jal	0 <EnFloormas_Init>
     fbc:	24053935 	li	a1,14645
     fc0:	10000007 	b	fe0 <EnFloormas_Die+0x8c>
     fc4:	8fbf001c 	lw	ra,28(sp)
     fc8:	0c000000 	jal	0 <EnFloormas_Init>
     fcc:	8fa40024 	lw	a0,36(sp)
     fd0:	02002025 	move	a0,s0
     fd4:	0c000000 	jal	0 <EnFloormas_Init>
     fd8:	8fa50024 	lw	a1,36(sp)
     fdc:	8fbf001c 	lw	ra,28(sp)
     fe0:	8fb00018 	lw	s0,24(sp)
     fe4:	27bd0020 	addiu	sp,sp,32
     fe8:	03e00008 	jr	ra
     fec:	00000000 	nop

00000ff0 <EnFloormas_BigDecideAction>:
     ff0:	27bdffe0 	addiu	sp,sp,-32
     ff4:	afb00018 	sw	s0,24(sp)
     ff8:	00808025 	move	s0,a0
     ffc:	afbf001c 	sw	ra,28(sp)
    1000:	afa50024 	sw	a1,36(sp)
    1004:	0c000000 	jal	0 <EnFloormas_Init>
    1008:	2484014c 	addiu	a0,a0,332
    100c:	10400024 	beqz	v0,10a0 <EnFloormas_BigDecideAction+0xb0>
    1010:	3c0143c8 	lui	at,0x43c8
    1014:	c6040090 	lwc1	$f4,144(s0)
    1018:	44813000 	mtc1	at,$f6
    101c:	02002025 	move	a0,s0
    1020:	4606203c 	c.lt.s	$f4,$f6
    1024:	00000000 	nop
    1028:	4502000c 	bc1fl	105c <EnFloormas_BigDecideAction+0x6c>
    102c:	3c01438c 	lui	at,0x438c
    1030:	0c000000 	jal	0 <EnFloormas_Init>
    1034:	24054000 	li	a1,16384
    1038:	54400008 	bnezl	v0,105c <EnFloormas_BigDecideAction+0x6c>
    103c:	3c01438c 	lui	at,0x438c
    1040:	860e008a 	lh	t6,138(s0)
    1044:	02002025 	move	a0,s0
    1048:	0c000000 	jal	0 <EnFloormas_Init>
    104c:	a60e0196 	sh	t6,406(s0)
    1050:	10000014 	b	10a4 <EnFloormas_BigDecideAction+0xb4>
    1054:	8fbf001c 	lw	ra,28(sp)
    1058:	3c01438c 	lui	at,0x438c
    105c:	44815000 	mtc1	at,$f10
    1060:	c6080090 	lwc1	$f8,144(s0)
    1064:	02002025 	move	a0,s0
    1068:	460a403c 	c.lt.s	$f8,$f10
    106c:	00000000 	nop
    1070:	45000009 	bc1f	1098 <EnFloormas_BigDecideAction+0xa8>
    1074:	00000000 	nop
    1078:	0c000000 	jal	0 <EnFloormas_Init>
    107c:	24052000 	li	a1,8192
    1080:	10400005 	beqz	v0,1098 <EnFloormas_BigDecideAction+0xa8>
    1084:	02002025 	move	a0,s0
    1088:	0c000000 	jal	0 <EnFloormas_Init>
    108c:	8fa50024 	lw	a1,36(sp)
    1090:	10000004 	b	10a4 <EnFloormas_BigDecideAction+0xb4>
    1094:	8fbf001c 	lw	ra,28(sp)
    1098:	0c000000 	jal	0 <EnFloormas_Init>
    109c:	02002025 	move	a0,s0
    10a0:	8fbf001c 	lw	ra,28(sp)
    10a4:	8fb00018 	lw	s0,24(sp)
    10a8:	27bd0020 	addiu	sp,sp,32
    10ac:	03e00008 	jr	ra
    10b0:	00000000 	nop

000010b4 <EnFloormas_Stand>:
    10b4:	27bdffe8 	addiu	sp,sp,-24
    10b8:	afa5001c 	sw	a1,28(sp)
    10bc:	00802825 	move	a1,a0
    10c0:	afbf0014 	sw	ra,20(sp)
    10c4:	afa40018 	sw	a0,24(sp)
    10c8:	afa50018 	sw	a1,24(sp)
    10cc:	0c000000 	jal	0 <EnFloormas_Init>
    10d0:	2484014c 	addiu	a0,a0,332
    10d4:	10400016 	beqz	v0,1130 <EnFloormas_Stand+0x7c>
    10d8:	8fa50018 	lw	a1,24(sp)
    10dc:	3c010000 	lui	at,0x0
    10e0:	c4240084 	lwc1	$f4,132(at)
    10e4:	c4a60050 	lwc1	$f6,80(a1)
    10e8:	4606203c 	c.lt.s	$f4,$f6
    10ec:	00000000 	nop
    10f0:	45020006 	bc1fl	110c <EnFloormas_Stand+0x58>
    10f4:	84ae001c 	lh	t6,28(a1)
    10f8:	0c000000 	jal	0 <EnFloormas_Init>
    10fc:	00a02025 	move	a0,a1
    1100:	1000000c 	b	1134 <EnFloormas_Stand+0x80>
    1104:	8fbf0014 	lw	ra,20(sp)
    1108:	84ae001c 	lh	t6,28(a1)
    110c:	24010020 	li	at,32
    1110:	15c10005 	bne	t6,at,1128 <EnFloormas_Stand+0x74>
    1114:	00000000 	nop
    1118:	0c000000 	jal	0 <EnFloormas_Init>
    111c:	00a02025 	move	a0,a1
    1120:	10000004 	b	1134 <EnFloormas_Stand+0x80>
    1124:	8fbf0014 	lw	ra,20(sp)
    1128:	0c000000 	jal	0 <EnFloormas_Init>
    112c:	00a02025 	move	a0,a1
    1130:	8fbf0014 	lw	ra,20(sp)
    1134:	27bd0018 	addiu	sp,sp,24
    1138:	03e00008 	jr	ra
    113c:	00000000 	nop

00001140 <EnFloormas_BigWalk>:
    1140:	27bdffd8 	addiu	sp,sp,-40
    1144:	afb00018 	sw	s0,24(sp)
    1148:	00808025 	move	s0,a0
    114c:	afbf001c 	sw	ra,28(sp)
    1150:	2484014c 	addiu	a0,a0,332
    1154:	afa5002c 	sw	a1,44(sp)
    1158:	0c000000 	jal	0 <EnFloormas_Init>
    115c:	afa40020 	sw	a0,32(sp)
    1160:	8fa40020 	lw	a0,32(sp)
    1164:	0c000000 	jal	0 <EnFloormas_Init>
    1168:	24050000 	li	a1,0
    116c:	10400005 	beqz	v0,1184 <EnFloormas_BigWalk+0x44>
    1170:	3c054140 	lui	a1,0x4140
    1174:	86030194 	lh	v1,404(s0)
    1178:	10600002 	beqz	v1,1184 <EnFloormas_BigWalk+0x44>
    117c:	246effff 	addiu	t6,v1,-1
    1180:	a60e0194 	sh	t6,404(s0)
    1184:	5440000d 	bnezl	v0,11bc <EnFloormas_BigWalk+0x7c>
    1188:	02002025 	move	a0,s0
    118c:	0c000000 	jal	0 <EnFloormas_Init>
    1190:	8fa40020 	lw	a0,32(sp)
    1194:	14400008 	bnez	v0,11b8 <EnFloormas_BigWalk+0x78>
    1198:	8fa40020 	lw	a0,32(sp)
    119c:	0c000000 	jal	0 <EnFloormas_Init>
    11a0:	3c0541c0 	lui	a1,0x41c0
    11a4:	14400004 	bnez	v0,11b8 <EnFloormas_BigWalk+0x78>
    11a8:	8fa40020 	lw	a0,32(sp)
    11ac:	0c000000 	jal	0 <EnFloormas_Init>
    11b0:	3c054210 	lui	a1,0x4210
    11b4:	10400003 	beqz	v0,11c4 <EnFloormas_BigWalk+0x84>
    11b8:	02002025 	move	a0,s0
    11bc:	0c000000 	jal	0 <EnFloormas_Init>
    11c0:	24053894 	li	a1,14484
    11c4:	3c0143a0 	lui	at,0x43a0
    11c8:	44813000 	mtc1	at,$f6
    11cc:	c6040090 	lwc1	$f4,144(s0)
    11d0:	02002025 	move	a0,s0
    11d4:	4606203c 	c.lt.s	$f4,$f6
    11d8:	00000000 	nop
    11dc:	4502000a 	bc1fl	1208 <EnFloormas_BigWalk+0xc8>
    11e0:	960f0088 	lhu	t7,136(s0)
    11e4:	0c000000 	jal	0 <EnFloormas_Init>
    11e8:	24054000 	li	a1,16384
    11ec:	50400006 	beqzl	v0,1208 <EnFloormas_BigWalk+0xc8>
    11f0:	960f0088 	lhu	t7,136(s0)
    11f4:	0c000000 	jal	0 <EnFloormas_Init>
    11f8:	02002025 	move	a0,s0
    11fc:	10000023 	b	128c <EnFloormas_BigWalk+0x14c>
    1200:	8fbf001c 	lw	ra,28(sp)
    1204:	960f0088 	lhu	t7,136(s0)
    1208:	3c0143c8 	lui	at,0x43c8
    120c:	31f80008 	andi	t8,t7,0x8
    1210:	53000008 	beqzl	t8,1234 <EnFloormas_BigWalk+0xf4>
    1214:	c6080090 	lwc1	$f8,144(s0)
    1218:	8619007e 	lh	t9,126(s0)
    121c:	02002025 	move	a0,s0
    1220:	0c000000 	jal	0 <EnFloormas_Init>
    1224:	a6190196 	sh	t9,406(s0)
    1228:	10000018 	b	128c <EnFloormas_BigWalk+0x14c>
    122c:	8fbf001c 	lw	ra,28(sp)
    1230:	c6080090 	lwc1	$f8,144(s0)
    1234:	44815000 	mtc1	at,$f10
    1238:	02002025 	move	a0,s0
    123c:	460a403c 	c.lt.s	$f8,$f10
    1240:	00000000 	nop
    1244:	4502000c 	bc1fl	1278 <EnFloormas_BigWalk+0x138>
    1248:	86090194 	lh	t1,404(s0)
    124c:	0c000000 	jal	0 <EnFloormas_Init>
    1250:	24054000 	li	a1,16384
    1254:	54400008 	bnezl	v0,1278 <EnFloormas_BigWalk+0x138>
    1258:	86090194 	lh	t1,404(s0)
    125c:	8608008a 	lh	t0,138(s0)
    1260:	02002025 	move	a0,s0
    1264:	0c000000 	jal	0 <EnFloormas_Init>
    1268:	a6080196 	sh	t0,406(s0)
    126c:	10000007 	b	128c <EnFloormas_BigWalk+0x14c>
    1270:	8fbf001c 	lw	ra,28(sp)
    1274:	86090194 	lh	t1,404(s0)
    1278:	55200004 	bnezl	t1,128c <EnFloormas_BigWalk+0x14c>
    127c:	8fbf001c 	lw	ra,28(sp)
    1280:	0c000000 	jal	0 <EnFloormas_Init>
    1284:	02002025 	move	a0,s0
    1288:	8fbf001c 	lw	ra,28(sp)
    128c:	8fb00018 	lw	s0,24(sp)
    1290:	27bd0028 	addiu	sp,sp,40
    1294:	03e00008 	jr	ra
    1298:	00000000 	nop

0000129c <EnFloormas_BigStopWalk>:
    129c:	27bdffe8 	addiu	sp,sp,-24
    12a0:	afbf0014 	sw	ra,20(sp)
    12a4:	afa40018 	sw	a0,24(sp)
    12a8:	afa5001c 	sw	a1,28(sp)
    12ac:	0c000000 	jal	0 <EnFloormas_Init>
    12b0:	2484014c 	addiu	a0,a0,332
    12b4:	50400004 	beqzl	v0,12c8 <EnFloormas_BigStopWalk+0x2c>
    12b8:	8fbf0014 	lw	ra,20(sp)
    12bc:	0c000000 	jal	0 <EnFloormas_Init>
    12c0:	8fa40018 	lw	a0,24(sp)
    12c4:	8fbf0014 	lw	ra,20(sp)
    12c8:	27bd0018 	addiu	sp,sp,24
    12cc:	03e00008 	jr	ra
    12d0:	00000000 	nop

000012d4 <EnFloormas_Run>:
    12d4:	27bdffd8 	addiu	sp,sp,-40
    12d8:	afb00018 	sw	s0,24(sp)
    12dc:	00808025 	move	s0,a0
    12e0:	afbf001c 	sw	ra,28(sp)
    12e4:	2484014c 	addiu	a0,a0,332
    12e8:	afa5002c 	sw	a1,44(sp)
    12ec:	0c000000 	jal	0 <EnFloormas_Init>
    12f0:	afa40024 	sw	a0,36(sp)
    12f4:	8fa40024 	lw	a0,36(sp)
    12f8:	0c000000 	jal	0 <EnFloormas_Init>
    12fc:	24050000 	li	a1,0
    1300:	1440000c 	bnez	v0,1334 <EnFloormas_Run+0x60>
    1304:	8fa40024 	lw	a0,36(sp)
    1308:	0c000000 	jal	0 <EnFloormas_Init>
    130c:	3c054140 	lui	a1,0x4140
    1310:	14400008 	bnez	v0,1334 <EnFloormas_Run+0x60>
    1314:	8fa40024 	lw	a0,36(sp)
    1318:	0c000000 	jal	0 <EnFloormas_Init>
    131c:	3c0541c0 	lui	a1,0x41c0
    1320:	14400004 	bnez	v0,1334 <EnFloormas_Run+0x60>
    1324:	8fa40024 	lw	a0,36(sp)
    1328:	0c000000 	jal	0 <EnFloormas_Init>
    132c:	3c054210 	lui	a1,0x4210
    1330:	10400003 	beqz	v0,1340 <EnFloormas_Run+0x6c>
    1334:	02002025 	move	a0,s0
    1338:	0c000000 	jal	0 <EnFloormas_Init>
    133c:	24053894 	li	a1,14484
    1340:	260400b6 	addiu	a0,s0,182
    1344:	8605008a 	lh	a1,138(s0)
    1348:	24060003 	li	a2,3
    134c:	0c000000 	jal	0 <EnFloormas_Init>
    1350:	2407071c 	li	a3,1820
    1354:	3c01438c 	lui	at,0x438c
    1358:	44813000 	mtc1	at,$f6
    135c:	c6040090 	lwc1	$f4,144(s0)
    1360:	02002025 	move	a0,s0
    1364:	4606203c 	c.lt.s	$f4,$f6
    1368:	00000000 	nop
    136c:	4502000f 	bc1fl	13ac <EnFloormas_Run+0xd8>
    1370:	3c0143c8 	lui	at,0x43c8
    1374:	0c000000 	jal	0 <EnFloormas_Init>
    1378:	24052000 	li	a1,8192
    137c:	5040000b 	beqzl	v0,13ac <EnFloormas_Run+0xd8>
    1380:	3c0143c8 	lui	at,0x43c8
    1384:	960e0088 	lhu	t6,136(s0)
    1388:	02002025 	move	a0,s0
    138c:	31cf0008 	andi	t7,t6,0x8
    1390:	55e00006 	bnezl	t7,13ac <EnFloormas_Run+0xd8>
    1394:	3c0143c8 	lui	at,0x43c8
    1398:	0c000000 	jal	0 <EnFloormas_Init>
    139c:	8fa5002c 	lw	a1,44(sp)
    13a0:	1000000b 	b	13d0 <EnFloormas_Run+0xfc>
    13a4:	8fbf001c 	lw	ra,28(sp)
    13a8:	3c0143c8 	lui	at,0x43c8
    13ac:	44814000 	mtc1	at,$f8
    13b0:	c60a0090 	lwc1	$f10,144(s0)
    13b4:	460a403c 	c.lt.s	$f8,$f10
    13b8:	00000000 	nop
    13bc:	45020004 	bc1fl	13d0 <EnFloormas_Run+0xfc>
    13c0:	8fbf001c 	lw	ra,28(sp)
    13c4:	0c000000 	jal	0 <EnFloormas_Init>
    13c8:	02002025 	move	a0,s0
    13cc:	8fbf001c 	lw	ra,28(sp)
    13d0:	8fb00018 	lw	s0,24(sp)
    13d4:	27bd0028 	addiu	sp,sp,40
    13d8:	03e00008 	jr	ra
    13dc:	00000000 	nop

000013e0 <EnFloormas_Turn>:
    13e0:	27bdffc8 	addiu	sp,sp,-56
    13e4:	afb00018 	sw	s0,24(sp)
    13e8:	00808025 	move	s0,a0
    13ec:	afbf001c 	sw	ra,28(sp)
    13f0:	2484014c 	addiu	a0,a0,332
    13f4:	afa5003c 	sw	a1,60(sp)
    13f8:	0c000000 	jal	0 <EnFloormas_Init>
    13fc:	afa40024 	sw	a0,36(sp)
    1400:	50400004 	beqzl	v0,1414 <EnFloormas_Turn+0x34>
    1404:	c6000168 	lwc1	$f0,360(s0)
    1408:	0c000000 	jal	0 <EnFloormas_Init>
    140c:	02002025 	move	a0,s0
    1410:	c6000168 	lwc1	$f0,360(s0)
    1414:	44802000 	mtc1	zero,$f4
    1418:	8fa40024 	lw	a0,36(sp)
    141c:	4600203c 	c.lt.s	$f4,$f0
    1420:	00000000 	nop
    1424:	45020007 	bc1fl	1444 <EnFloormas_Turn+0x64>
    1428:	44803000 	mtc1	zero,$f6
    142c:	0c000000 	jal	0 <EnFloormas_Init>
    1430:	3c0541a8 	lui	a1,0x41a8
    1434:	1440000b 	bnez	v0,1464 <EnFloormas_Turn+0x84>
    1438:	00000000 	nop
    143c:	c6000168 	lwc1	$f0,360(s0)
    1440:	44803000 	mtc1	zero,$f6
    1444:	8fa40024 	lw	a0,36(sp)
    1448:	4606003c 	c.lt.s	$f0,$f6
    144c:	00000000 	nop
    1450:	45020014 	bc1fl	14a4 <EnFloormas_Turn+0xc4>
    1454:	3c0140e0 	lui	at,0x40e0
    1458:	0c000000 	jal	0 <EnFloormas_Init>
    145c:	3c0540c0 	lui	a1,0x40c0
    1460:	1040000f 	beqz	v0,14a0 <EnFloormas_Turn+0xc0>
    1464:	3c010000 	lui	at,0x0
    1468:	c4280088 	lwc1	$f8,136(at)
    146c:	c60a0050 	lwc1	$f10,80(s0)
    1470:	24053894 	li	a1,14484
    1474:	02002025 	move	a0,s0
    1478:	460a403c 	c.lt.s	$f8,$f10
    147c:	00000000 	nop
    1480:	45000005 	bc1f	1498 <EnFloormas_Turn+0xb8>
    1484:	00000000 	nop
    1488:	0c000000 	jal	0 <EnFloormas_Init>
    148c:	02002025 	move	a0,s0
    1490:	10000004 	b	14a4 <EnFloormas_Turn+0xc4>
    1494:	3c0140e0 	lui	at,0x40e0
    1498:	0c000000 	jal	0 <EnFloormas_Init>
    149c:	24053931 	li	a1,14641
    14a0:	3c0140e0 	lui	at,0x40e0
    14a4:	c6000164 	lwc1	$f0,356(s0)
    14a8:	44818000 	mtc1	at,$f16
    14ac:	3c0141b0 	lui	at,0x41b0
    14b0:	4600803e 	c.le.s	$f16,$f0
    14b4:	00000000 	nop
    14b8:	45020036 	bc1fl	1594 <EnFloormas_Turn+0x1b4>
    14bc:	8fbf001c 	lw	ra,28(sp)
    14c0:	44819000 	mtc1	at,$f18
    14c4:	00000000 	nop
    14c8:	4612003c 	c.lt.s	$f0,$f18
    14cc:	00000000 	nop
    14d0:	45020030 	bc1fl	1594 <EnFloormas_Turn+0x1b4>
    14d4:	8fbf001c 	lw	ra,28(sp)
    14d8:	860400b6 	lh	a0,182(s0)
    14dc:	24844268 	addiu	a0,a0,17000
    14e0:	00042400 	sll	a0,a0,0x10
    14e4:	0c000000 	jal	0 <EnFloormas_Init>
    14e8:	00042403 	sra	a0,a0,0x10
    14ec:	e7a00030 	swc1	$f0,48(sp)
    14f0:	860400b6 	lh	a0,182(s0)
    14f4:	24844268 	addiu	a0,a0,17000
    14f8:	00042400 	sll	a0,a0,0x10
    14fc:	0c000000 	jal	0 <EnFloormas_Init>
    1500:	00042403 	sra	a0,a0,0x10
    1504:	e7a0002c 	swc1	$f0,44(sp)
    1508:	860e00b6 	lh	t6,182(s0)
    150c:	860f0196 	lh	t7,406(s0)
    1510:	01cfc021 	addu	t8,t6,t7
    1514:	a61800b6 	sh	t8,182(s0)
    1518:	860400b6 	lh	a0,182(s0)
    151c:	24844268 	addiu	a0,a0,17000
    1520:	00042400 	sll	a0,a0,0x10
    1524:	0c000000 	jal	0 <EnFloormas_Init>
    1528:	00042403 	sra	a0,a0,0x10
    152c:	3c010000 	lui	at,0x0
    1530:	c426008c 	lwc1	$f6,140(at)
    1534:	c6040050 	lwc1	$f4,80(s0)
    1538:	c7aa0030 	lwc1	$f10,48(sp)
    153c:	860400b6 	lh	a0,182(s0)
    1540:	46062202 	mul.s	$f8,$f4,$f6
    1544:	460a0401 	sub.s	$f16,$f0,$f10
    1548:	c6040024 	lwc1	$f4,36(s0)
    154c:	24844268 	addiu	a0,a0,17000
    1550:	00042400 	sll	a0,a0,0x10
    1554:	00042403 	sra	a0,a0,0x10
    1558:	46104482 	mul.s	$f18,$f8,$f16
    155c:	46122181 	sub.s	$f6,$f4,$f18
    1560:	0c000000 	jal	0 <EnFloormas_Init>
    1564:	e6060024 	swc1	$f6,36(s0)
    1568:	3c010000 	lui	at,0x0
    156c:	c4280090 	lwc1	$f8,144(at)
    1570:	c60a0050 	lwc1	$f10,80(s0)
    1574:	c7a4002c 	lwc1	$f4,44(sp)
    1578:	46085402 	mul.s	$f16,$f10,$f8
    157c:	46040481 	sub.s	$f18,$f0,$f4
    1580:	c60a002c 	lwc1	$f10,44(s0)
    1584:	46128182 	mul.s	$f6,$f16,$f18
    1588:	46065201 	sub.s	$f8,$f10,$f6
    158c:	e608002c 	swc1	$f8,44(s0)
    1590:	8fbf001c 	lw	ra,28(sp)
    1594:	8fb00018 	lw	s0,24(sp)
    1598:	27bd0038 	addiu	sp,sp,56
    159c:	03e00008 	jr	ra
    15a0:	00000000 	nop

000015a4 <EnFloormas_Hover>:
    15a4:	27bdffe0 	addiu	sp,sp,-32
    15a8:	afb00018 	sw	s0,24(sp)
    15ac:	00808025 	move	s0,a0
    15b0:	afbf001c 	sw	ra,28(sp)
    15b4:	afa50024 	sw	a1,36(sp)
    15b8:	0c000000 	jal	0 <EnFloormas_Init>
    15bc:	2484014c 	addiu	a0,a0,332
    15c0:	50400004 	beqzl	v0,15d4 <EnFloormas_Hover+0x30>
    15c4:	3c014120 	lui	at,0x4120
    15c8:	0c000000 	jal	0 <EnFloormas_Init>
    15cc:	02002025 	move	a0,s0
    15d0:	3c014120 	lui	at,0x4120
    15d4:	44813000 	mtc1	at,$f6
    15d8:	c6040028 	lwc1	$f4,40(s0)
    15dc:	860e00b4 	lh	t6,180(s0)
    15e0:	260400b6 	addiu	a0,s0,182
    15e4:	46062200 	add.s	$f8,$f4,$f6
    15e8:	25cf0140 	addiu	t7,t6,320
    15ec:	a60f00b4 	sh	t7,180(s0)
    15f0:	8605008a 	lh	a1,138(s0)
    15f4:	e6080028 	swc1	$f8,40(s0)
    15f8:	24060003 	li	a2,3
    15fc:	0c000000 	jal	0 <EnFloormas_Init>
    1600:	24070aaa 	li	a3,2730
    1604:	26040198 	addiu	a0,s0,408
    1608:	240504b0 	li	a1,1200
    160c:	0c000000 	jal	0 <EnFloormas_Init>
    1610:	24060064 	li	a2,100
    1614:	8fbf001c 	lw	ra,28(sp)
    1618:	8fb00018 	lw	s0,24(sp)
    161c:	27bd0020 	addiu	sp,sp,32
    1620:	03e00008 	jr	ra
    1624:	00000000 	nop

00001628 <EnFloormas_Slide>:
    1628:	27bdffc0 	addiu	sp,sp,-64
    162c:	afbf0024 	sw	ra,36(sp)
    1630:	afb00020 	sw	s0,32(sp)
    1634:	afa50044 	sw	a1,68(sp)
    1638:	c4840024 	lwc1	$f4,36(a0)
    163c:	3c014000 	lui	at,0x4000
    1640:	44815000 	mtc1	at,$f10
    1644:	e7a40034 	swc1	$f4,52(sp)
    1648:	c486002c 	lwc1	$f6,44(a0)
    164c:	00808025 	move	s0,a0
    1650:	e7a6003c 	swc1	$f6,60(sp)
    1654:	c4880080 	lwc1	$f8,128(a0)
    1658:	e7aa002c 	swc1	$f10,44(sp)
    165c:	e7a80038 	swc1	$f8,56(sp)
    1660:	848400b6 	lh	a0,182(a0)
    1664:	24846000 	addiu	a0,a0,24576
    1668:	00042400 	sll	a0,a0,0x10
    166c:	0c000000 	jal	0 <EnFloormas_Init>
    1670:	00042403 	sra	a0,a0,0x10
    1674:	3c0140e0 	lui	at,0x40e0
    1678:	44818000 	mtc1	at,$f16
    167c:	00000000 	nop
    1680:	46100482 	mul.s	$f18,$f0,$f16
    1684:	e7b20028 	swc1	$f18,40(sp)
    1688:	860400b6 	lh	a0,182(s0)
    168c:	24846000 	addiu	a0,a0,24576
    1690:	00042400 	sll	a0,a0,0x10
    1694:	0c000000 	jal	0 <EnFloormas_Init>
    1698:	00042403 	sra	a0,a0,0x10
    169c:	3c0140e0 	lui	at,0x40e0
    16a0:	44812000 	mtc1	at,$f4
    16a4:	3c070000 	lui	a3,0x0
    16a8:	240e01c2 	li	t6,450
    16ac:	46040182 	mul.s	$f6,$f0,$f4
    16b0:	240f0064 	li	t7,100
    16b4:	afaf0014 	sw	t7,20(sp)
    16b8:	afae0010 	sw	t6,16(sp)
    16bc:	24e70098 	addiu	a3,a3,152
    16c0:	8fa40044 	lw	a0,68(sp)
    16c4:	27a50034 	addiu	a1,sp,52
    16c8:	e7a60030 	swc1	$f6,48(sp)
    16cc:	0c000000 	jal	0 <EnFloormas_Init>
    16d0:	27a60028 	addiu	a2,sp,40
    16d4:	860400b6 	lh	a0,182(s0)
    16d8:	2484a000 	addiu	a0,a0,-24576
    16dc:	00042400 	sll	a0,a0,0x10
    16e0:	0c000000 	jal	0 <EnFloormas_Init>
    16e4:	00042403 	sra	a0,a0,0x10
    16e8:	3c0140e0 	lui	at,0x40e0
    16ec:	44814000 	mtc1	at,$f8
    16f0:	00000000 	nop
    16f4:	46080282 	mul.s	$f10,$f0,$f8
    16f8:	e7aa0028 	swc1	$f10,40(sp)
    16fc:	860400b6 	lh	a0,182(s0)
    1700:	2484a000 	addiu	a0,a0,-24576
    1704:	00042400 	sll	a0,a0,0x10
    1708:	0c000000 	jal	0 <EnFloormas_Init>
    170c:	00042403 	sra	a0,a0,0x10
    1710:	3c0140e0 	lui	at,0x40e0
    1714:	44818000 	mtc1	at,$f16
    1718:	3c070000 	lui	a3,0x0
    171c:	241801c2 	li	t8,450
    1720:	46100482 	mul.s	$f18,$f0,$f16
    1724:	24190064 	li	t9,100
    1728:	afb90014 	sw	t9,20(sp)
    172c:	afb80010 	sw	t8,16(sp)
    1730:	24e70098 	addiu	a3,a3,152
    1734:	8fa40044 	lw	a0,68(sp)
    1738:	27a50034 	addiu	a1,sp,52
    173c:	e7b20030 	swc1	$f18,48(sp)
    1740:	0c000000 	jal	0 <EnFloormas_Init>
    1744:	27a60028 	addiu	a2,sp,40
    1748:	02002025 	move	a0,s0
    174c:	0c000000 	jal	0 <EnFloormas_Init>
    1750:	24053034 	li	a1,12340
    1754:	8fbf0024 	lw	ra,36(sp)
    1758:	8fb00020 	lw	s0,32(sp)
    175c:	27bd0040 	addiu	sp,sp,64
    1760:	03e00008 	jr	ra
    1764:	00000000 	nop

00001768 <EnFloormas_Charge>:
    1768:	27bdffe0 	addiu	sp,sp,-32
    176c:	afbf001c 	sw	ra,28(sp)
    1770:	afb00018 	sw	s0,24(sp)
    1774:	afa50024 	sw	a1,36(sp)
    1778:	84820194 	lh	v0,404(a0)
    177c:	00808025 	move	s0,a0
    1780:	10400002 	beqz	v0,178c <EnFloormas_Charge+0x24>
    1784:	244effff 	addiu	t6,v0,-1
    1788:	a48e0194 	sh	t6,404(a0)
    178c:	c6000068 	lwc1	$f0,104(s0)
    1790:	3c010000 	lui	at,0x0
    1794:	c4260094 	lwc1	$f6,148(at)
    1798:	46000102 	mul.s	$f4,$f0,$f0
    179c:	26040068 	addiu	a0,s0,104
    17a0:	3c054170 	lui	a1,0x4170
    17a4:	46062202 	mul.s	$f8,$f4,$f6
    17a8:	44064000 	mfc1	a2,$f8
    17ac:	0c000000 	jal	0 <EnFloormas_Init>
    17b0:	00000000 	nop
    17b4:	260400b4 	addiu	a0,s0,180
    17b8:	2405e980 	li	a1,-5760
    17bc:	0c000000 	jal	0 <EnFloormas_Init>
    17c0:	24060140 	li	a2,320
    17c4:	c6020080 	lwc1	$f2,128(s0)
    17c8:	c60a0028 	lwc1	$f10,40(s0)
    17cc:	3c014120 	lui	at,0x4120
    17d0:	44817000 	mtc1	at,$f14
    17d4:	46025001 	sub.s	$f0,$f10,$f2
    17d8:	3c014140 	lui	at,0x4140
    17dc:	44819000 	mtc1	at,$f18
    17e0:	02002025 	move	a0,s0
    17e4:	460e003c 	c.lt.s	$f0,$f14
    17e8:	00000000 	nop
    17ec:	45020007 	bc1fl	180c <EnFloormas_Charge+0xa4>
    17f0:	4612003c 	c.lt.s	$f0,$f18
    17f4:	460e1400 	add.s	$f16,$f2,$f14
    17f8:	44806000 	mtc1	zero,$f12
    17fc:	e6100028 	swc1	$f16,40(s0)
    1800:	e60c006c 	swc1	$f12,108(s0)
    1804:	e60c0060 	swc1	$f12,96(s0)
    1808:	4612003c 	c.lt.s	$f0,$f18
    180c:	00000000 	nop
    1810:	45020004 	bc1fl	1824 <EnFloormas_Charge+0xbc>
    1814:	960f0088 	lhu	t7,136(s0)
    1818:	0c000000 	jal	0 <EnFloormas_Init>
    181c:	8fa50024 	lw	a1,36(sp)
    1820:	960f0088 	lhu	t7,136(s0)
    1824:	31f80008 	andi	t8,t7,0x8
    1828:	17000004 	bnez	t8,183c <EnFloormas_Charge+0xd4>
    182c:	00000000 	nop
    1830:	86190194 	lh	t9,404(s0)
    1834:	57200004 	bnezl	t9,1848 <EnFloormas_Charge+0xe0>
    1838:	8fbf001c 	lw	ra,28(sp)
    183c:	0c000000 	jal	0 <EnFloormas_Init>
    1840:	02002025 	move	a0,s0
    1844:	8fbf001c 	lw	ra,28(sp)
    1848:	8fb00018 	lw	s0,24(sp)
    184c:	27bd0020 	addiu	sp,sp,32
    1850:	03e00008 	jr	ra
    1854:	00000000 	nop

00001858 <EnFloormas_Land>:
    1858:	27bdffd8 	addiu	sp,sp,-40
    185c:	afbf001c 	sw	ra,28(sp)
    1860:	afb00018 	sw	s0,24(sp)
    1864:	afa5002c 	sw	a1,44(sp)
    1868:	94820088 	lhu	v0,136(a0)
    186c:	00808025 	move	s0,a0
    1870:	304e0001 	andi	t6,v0,0x1
    1874:	304f0002 	andi	t7,v0,0x2
    1878:	11e0001d 	beqz	t7,18f0 <EnFloormas_Land+0x98>
    187c:	afae0024 	sw	t6,36(sp)
    1880:	8498001c 	lh	t8,28(a0)
    1884:	24010040 	li	at,64
    1888:	53010004 	beql	t8,at,189c <EnFloormas_Land+0x44>
    188c:	3c01c080 	lui	at,0xc080
    1890:	0c000000 	jal	0 <EnFloormas_Init>
    1894:	00000000 	nop
    1898:	3c01c080 	lui	at,0xc080
    189c:	44813000 	mtc1	at,$f6
    18a0:	c6040060 	lwc1	$f4,96(s0)
    18a4:	3c010000 	lui	at,0x0
    18a8:	4606203c 	c.lt.s	$f4,$f6
    18ac:	00000000 	nop
    18b0:	45020010 	bc1fl	18f4 <EnFloormas_Land+0x9c>
    18b4:	96190088 	lhu	t9,136(s0)
    18b8:	c4280098 	lwc1	$f8,152(at)
    18bc:	c60a0050 	lwc1	$f10,80(s0)
    18c0:	24053893 	li	a1,14483
    18c4:	02002025 	move	a0,s0
    18c8:	460a403c 	c.lt.s	$f8,$f10
    18cc:	00000000 	nop
    18d0:	45000005 	bc1f	18e8 <EnFloormas_Land+0x90>
    18d4:	00000000 	nop
    18d8:	0c000000 	jal	0 <EnFloormas_Init>
    18dc:	02002025 	move	a0,s0
    18e0:	10000004 	b	18f4 <EnFloormas_Land+0x9c>
    18e4:	96190088 	lhu	t9,136(s0)
    18e8:	0c000000 	jal	0 <EnFloormas_Init>
    18ec:	24053937 	li	a1,14647
    18f0:	96190088 	lhu	t9,136(s0)
    18f4:	26040068 	addiu	a0,s0,104
    18f8:	24050000 	li	a1,0
    18fc:	33280008 	andi	t0,t9,0x8
    1900:	51000005 	beqzl	t0,1918 <EnFloormas_Land+0xc0>
    1904:	8fa90024 	lw	t1,36(sp)
    1908:	44808000 	mtc1	zero,$f16
    190c:	00000000 	nop
    1910:	e6100068 	swc1	$f16,104(s0)
    1914:	8fa90024 	lw	t1,36(sp)
    1918:	51200004 	beqzl	t1,192c <EnFloormas_Land+0xd4>
    191c:	44809000 	mtc1	zero,$f18
    1920:	0c000000 	jal	0 <EnFloormas_Init>
    1924:	3c064000 	lui	a2,0x4000
    1928:	44809000 	mtc1	zero,$f18
    192c:	c6040068 	lwc1	$f4,104(s0)
    1930:	4604903c 	c.lt.s	$f18,$f4
    1934:	00000000 	nop
    1938:	4500000d 	bc1f	1970 <EnFloormas_Land+0x118>
    193c:	00000000 	nop
    1940:	c6060028 	lwc1	$f6,40(s0)
    1944:	c6080080 	lwc1	$f8,128(s0)
    1948:	3c014140 	lui	at,0x4140
    194c:	44818000 	mtc1	at,$f16
    1950:	46083281 	sub.s	$f10,$f6,$f8
    1954:	02002025 	move	a0,s0
    1958:	4610503c 	c.lt.s	$f10,$f16
    195c:	00000000 	nop
    1960:	45000003 	bc1f	1970 <EnFloormas_Land+0x118>
    1964:	00000000 	nop
    1968:	0c000000 	jal	0 <EnFloormas_Init>
    196c:	8fa5002c 	lw	a1,44(sp)
    1970:	0c000000 	jal	0 <EnFloormas_Init>
    1974:	2604014c 	addiu	a0,s0,332
    1978:	50400025 	beqzl	v0,1a10 <EnFloormas_Land+0x1b8>
    197c:	260400b4 	addiu	a0,s0,180
    1980:	86020194 	lh	v0,404(s0)
    1984:	10400003 	beqz	v0,1994 <EnFloormas_Land+0x13c>
    1988:	244affff 	addiu	t2,v0,-1
    198c:	a60a0194 	sh	t2,404(s0)
    1990:	86020194 	lh	v0,404(s0)
    1994:	1440001d 	bnez	v0,1a0c <EnFloormas_Land+0x1b4>
    1998:	8fab0024 	lw	t3,36(sp)
    199c:	1160001b 	beqz	t3,1a0c <EnFloormas_Land+0x1b4>
    19a0:	3c014234 	lui	at,0x4234
    19a4:	c612015c 	lwc1	$f18,348(s0)
    19a8:	44812000 	mtc1	at,$f4
    19ac:	3c040000 	lui	a0,0x0
    19b0:	4604903c 	c.lt.s	$f18,$f4
    19b4:	00000000 	nop
    19b8:	45020009 	bc1fl	19e0 <EnFloormas_Land+0x188>
    19bc:	860c001c 	lh	t4,28(s0)
    19c0:	0c000000 	jal	0 <EnFloormas_Init>
    19c4:	24840000 	addiu	a0,a0,0
    19c8:	44823000 	mtc1	v0,$f6
    19cc:	00000000 	nop
    19d0:	46803220 	cvt.s.w	$f8,$f6
    19d4:	1000000d 	b	1a0c <EnFloormas_Land+0x1b4>
    19d8:	e608015c 	swc1	$f8,348(s0)
    19dc:	860c001c 	lh	t4,28(s0)
    19e0:	24010040 	li	at,64
    19e4:	15810005 	bne	t4,at,19fc <EnFloormas_Land+0x1a4>
    19e8:	00000000 	nop
    19ec:	0c000000 	jal	0 <EnFloormas_Init>
    19f0:	02002025 	move	a0,s0
    19f4:	10000006 	b	1a10 <EnFloormas_Land+0x1b8>
    19f8:	260400b4 	addiu	a0,s0,180
    19fc:	0c000000 	jal	0 <EnFloormas_Init>
    1a00:	02002025 	move	a0,s0
    1a04:	240d0032 	li	t5,50
    1a08:	a60d019a 	sh	t5,410(s0)
    1a0c:	260400b4 	addiu	a0,s0,180
    1a10:	00002825 	move	a1,zero
    1a14:	0c000000 	jal	0 <EnFloormas_Init>
    1a18:	24060140 	li	a2,320
    1a1c:	26040198 	addiu	a0,s0,408
    1a20:	2405f9c0 	li	a1,-1600
    1a24:	0c000000 	jal	0 <EnFloormas_Init>
    1a28:	24060064 	li	a2,100
    1a2c:	8fbf001c 	lw	ra,28(sp)
    1a30:	8fb00018 	lw	s0,24(sp)
    1a34:	27bd0028 	addiu	sp,sp,40
    1a38:	03e00008 	jr	ra
    1a3c:	00000000 	nop

00001a40 <EnFloormas_Split>:
    1a40:	27bdffe0 	addiu	sp,sp,-32
    1a44:	afbf001c 	sw	ra,28(sp)
    1a48:	afb00018 	sw	s0,24(sp)
    1a4c:	afa50024 	sw	a1,36(sp)
    1a50:	94830088 	lhu	v1,136(a0)
    1a54:	00808025 	move	s0,a0
    1a58:	306e0001 	andi	t6,v1,0x1
    1a5c:	51c00011 	beqzl	t6,1aa4 <EnFloormas_Split+0x64>
    1a60:	30680002 	andi	t0,v1,0x2
    1a64:	0c000000 	jal	0 <EnFloormas_Init>
    1a68:	2484014c 	addiu	a0,a0,332
    1a6c:	10400007 	beqz	v0,1a8c <EnFloormas_Split+0x4c>
    1a70:	24190032 	li	t9,50
    1a74:	8e0f0004 	lw	t7,4(s0)
    1a78:	a619019a 	sh	t9,410(s0)
    1a7c:	02002025 	move	a0,s0
    1a80:	35f80001 	ori	t8,t7,0x1
    1a84:	0c000000 	jal	0 <EnFloormas_Init>
    1a88:	ae180004 	sw	t8,4(s0)
    1a8c:	26040068 	addiu	a0,s0,104
    1a90:	24050000 	li	a1,0
    1a94:	0c000000 	jal	0 <EnFloormas_Init>
    1a98:	3c063f80 	lui	a2,0x3f80
    1a9c:	96030088 	lhu	v1,136(s0)
    1aa0:	30680002 	andi	t0,v1,0x2
    1aa4:	11000003 	beqz	t0,1ab4 <EnFloormas_Split+0x74>
    1aa8:	02002025 	move	a0,s0
    1aac:	0c000000 	jal	0 <EnFloormas_Init>
    1ab0:	24053937 	li	a1,14647
    1ab4:	8fbf001c 	lw	ra,28(sp)
    1ab8:	8fb00018 	lw	s0,24(sp)
    1abc:	27bd0020 	addiu	sp,sp,32
    1ac0:	03e00008 	jr	ra
    1ac4:	00000000 	nop

00001ac8 <EnFloormas_SmWalk>:
    1ac8:	27bdffd8 	addiu	sp,sp,-40
    1acc:	afb00018 	sw	s0,24(sp)
    1ad0:	00808025 	move	s0,a0
    1ad4:	afbf001c 	sw	ra,28(sp)
    1ad8:	2484014c 	addiu	a0,a0,332
    1adc:	afa5002c 	sw	a1,44(sp)
    1ae0:	0c000000 	jal	0 <EnFloormas_Init>
    1ae4:	afa40024 	sw	a0,36(sp)
    1ae8:	8603019a 	lh	v1,410(s0)
    1aec:	24050000 	li	a1,0
    1af0:	10600002 	beqz	v1,1afc <EnFloormas_SmWalk+0x34>
    1af4:	246effff 	addiu	t6,v1,-1
    1af8:	a60e019a 	sh	t6,410(s0)
    1afc:	0c000000 	jal	0 <EnFloormas_Init>
    1b00:	8fa40024 	lw	a0,36(sp)
    1b04:	14400004 	bnez	v0,1b18 <EnFloormas_SmWalk+0x50>
    1b08:	8fa40024 	lw	a0,36(sp)
    1b0c:	0c000000 	jal	0 <EnFloormas_Init>
    1b10:	3c054190 	lui	a1,0x4190
    1b14:	10400003 	beqz	v0,1b24 <EnFloormas_SmWalk+0x5c>
    1b18:	02002025 	move	a0,s0
    1b1c:	0c000000 	jal	0 <EnFloormas_Init>
    1b20:	24053931 	li	a1,14641
    1b24:	860f019a 	lh	t7,410(s0)
    1b28:	55e00006 	bnezl	t7,1b44 <EnFloormas_SmWalk+0x7c>
    1b2c:	96180088 	lhu	t8,136(s0)
    1b30:	0c000000 	jal	0 <EnFloormas_Init>
    1b34:	02002025 	move	a0,s0
    1b38:	1000001b 	b	1ba8 <EnFloormas_SmWalk+0xe0>
    1b3c:	8fbf001c 	lw	ra,28(sp)
    1b40:	96180088 	lhu	t8,136(s0)
    1b44:	3c0142f0 	lui	at,0x42f0
    1b48:	33190008 	andi	t9,t8,0x8
    1b4c:	53200008 	beqzl	t9,1b70 <EnFloormas_SmWalk+0xa8>
    1b50:	c6040090 	lwc1	$f4,144(s0)
    1b54:	8608007e 	lh	t0,126(s0)
    1b58:	02002025 	move	a0,s0
    1b5c:	0c000000 	jal	0 <EnFloormas_Init>
    1b60:	a6080196 	sh	t0,406(s0)
    1b64:	10000010 	b	1ba8 <EnFloormas_SmWalk+0xe0>
    1b68:	8fbf001c 	lw	ra,28(sp)
    1b6c:	c6040090 	lwc1	$f4,144(s0)
    1b70:	44813000 	mtc1	at,$f6
    1b74:	260400b6 	addiu	a0,s0,182
    1b78:	4606203c 	c.lt.s	$f4,$f6
    1b7c:	00000000 	nop
    1b80:	45020009 	bc1fl	1ba8 <EnFloormas_SmWalk+0xe0>
    1b84:	8fbf001c 	lw	ra,28(sp)
    1b88:	8605008a 	lh	a1,138(s0)
    1b8c:	34018000 	li	at,0x8000
    1b90:	2406038e 	li	a2,910
    1b94:	00a12821 	addu	a1,a1,at
    1b98:	00052c00 	sll	a1,a1,0x10
    1b9c:	0c000000 	jal	0 <EnFloormas_Init>
    1ba0:	00052c03 	sra	a1,a1,0x10
    1ba4:	8fbf001c 	lw	ra,28(sp)
    1ba8:	8fb00018 	lw	s0,24(sp)
    1bac:	27bd0028 	addiu	sp,sp,40
    1bb0:	03e00008 	jr	ra
    1bb4:	00000000 	nop

00001bb8 <EnFloormas_SmDecideAction>:
    1bb8:	27bdffd0 	addiu	sp,sp,-48
    1bbc:	afb00018 	sw	s0,24(sp)
    1bc0:	00808025 	move	s0,a0
    1bc4:	afbf001c 	sw	ra,28(sp)
    1bc8:	2484014c 	addiu	a0,a0,332
    1bcc:	afa50034 	sw	a1,52(sp)
    1bd0:	0c000000 	jal	0 <EnFloormas_Init>
    1bd4:	afa40020 	sw	a0,32(sp)
    1bd8:	8fa40020 	lw	a0,32(sp)
    1bdc:	0c000000 	jal	0 <EnFloormas_Init>
    1be0:	24050000 	li	a1,0
    1be4:	14400004 	bnez	v0,1bf8 <EnFloormas_SmDecideAction+0x40>
    1be8:	8fa40020 	lw	a0,32(sp)
    1bec:	0c000000 	jal	0 <EnFloormas_Init>
    1bf0:	3c054190 	lui	a1,0x4190
    1bf4:	10400003 	beqz	v0,1c04 <EnFloormas_SmDecideAction+0x4c>
    1bf8:	02002025 	move	a0,s0
    1bfc:	0c000000 	jal	0 <EnFloormas_Init>
    1c00:	24053931 	li	a1,14641
    1c04:	96020088 	lhu	v0,136(s0)
    1c08:	30420008 	andi	v0,v0,0x8
    1c0c:	50400008 	beqzl	v0,1c30 <EnFloormas_SmDecideAction+0x78>
    1c10:	860f001c 	lh	t7,28(s0)
    1c14:	860e007e 	lh	t6,126(s0)
    1c18:	02002025 	move	a0,s0
    1c1c:	0c000000 	jal	0 <EnFloormas_Init>
    1c20:	a60e0196 	sh	t6,406(s0)
    1c24:	1000003a 	b	1d10 <EnFloormas_SmDecideAction+0x158>
    1c28:	8fbf001c 	lw	ra,28(sp)
    1c2c:	860f001c 	lh	t7,28(s0)
    1c30:	24010020 	li	at,32
    1c34:	260400b6 	addiu	a0,s0,182
    1c38:	15e10028 	bne	t7,at,1cdc <EnFloormas_SmDecideAction+0x124>
    1c3c:	24060003 	li	a2,3
    1c40:	8e020118 	lw	v0,280(s0)
    1c44:	24030040 	li	v1,64
    1c48:	02002025 	move	a0,s0
    1c4c:	8458001c 	lh	t8,28(v0)
    1c50:	54780004 	bnel	v1,t8,1c64 <EnFloormas_SmDecideAction+0xac>
    1c54:	8e02011c 	lw	v0,284(s0)
    1c58:	1000000a 	b	1c84 <EnFloormas_SmDecideAction+0xcc>
    1c5c:	00403825 	move	a3,v0
    1c60:	8e02011c 	lw	v0,284(s0)
    1c64:	24080010 	li	t0,16
    1c68:	8459001c 	lh	t9,28(v0)
    1c6c:	14790003 	bne	v1,t9,1c7c <EnFloormas_SmDecideAction+0xc4>
    1c70:	00000000 	nop
    1c74:	10000003 	b	1c84 <EnFloormas_SmDecideAction+0xcc>
    1c78:	00403825 	move	a3,v0
    1c7c:	10000023 	b	1d0c <EnFloormas_SmDecideAction+0x154>
    1c80:	a608001c 	sh	t0,28(s0)
    1c84:	00e02825 	move	a1,a3
    1c88:	0c000000 	jal	0 <EnFloormas_Init>
    1c8c:	afa7002c 	sw	a3,44(sp)
    1c90:	00022c00 	sll	a1,v0,0x10
    1c94:	00052c03 	sra	a1,a1,0x10
    1c98:	260400b6 	addiu	a0,s0,182
    1c9c:	0c000000 	jal	0 <EnFloormas_Init>
    1ca0:	2406038e 	li	a2,910
    1ca4:	8fa5002c 	lw	a1,44(sp)
    1ca8:	0c000000 	jal	0 <EnFloormas_Init>
    1cac:	02002025 	move	a0,s0
    1cb0:	3c0142a0 	lui	at,0x42a0
    1cb4:	44812000 	mtc1	at,$f4
    1cb8:	00000000 	nop
    1cbc:	4604003c 	c.lt.s	$f0,$f4
    1cc0:	00000000 	nop
    1cc4:	45020012 	bc1fl	1d10 <EnFloormas_SmDecideAction+0x158>
    1cc8:	8fbf001c 	lw	ra,28(sp)
    1ccc:	0c000000 	jal	0 <EnFloormas_Init>
    1cd0:	02002025 	move	a0,s0
    1cd4:	1000000e 	b	1d10 <EnFloormas_SmDecideAction+0x158>
    1cd8:	8fbf001c 	lw	ra,28(sp)
    1cdc:	8605008a 	lh	a1,138(s0)
    1ce0:	0c000000 	jal	0 <EnFloormas_Init>
    1ce4:	2407071c 	li	a3,1820
    1ce8:	3c0142a0 	lui	at,0x42a0
    1cec:	44814000 	mtc1	at,$f8
    1cf0:	c6060090 	lwc1	$f6,144(s0)
    1cf4:	4608303c 	c.lt.s	$f6,$f8
    1cf8:	00000000 	nop
    1cfc:	45020004 	bc1fl	1d10 <EnFloormas_SmDecideAction+0x158>
    1d00:	8fbf001c 	lw	ra,28(sp)
    1d04:	0c000000 	jal	0 <EnFloormas_Init>
    1d08:	02002025 	move	a0,s0
    1d0c:	8fbf001c 	lw	ra,28(sp)
    1d10:	8fb00018 	lw	s0,24(sp)
    1d14:	27bd0030 	addiu	sp,sp,48
    1d18:	03e00008 	jr	ra
    1d1c:	00000000 	nop

00001d20 <EnFloormas_SmShrink>:
    1d20:	27bdffe8 	addiu	sp,sp,-24
    1d24:	afbf0014 	sw	ra,20(sp)
    1d28:	afa5001c 	sw	a1,28(sp)
    1d2c:	00803825 	move	a3,a0
    1d30:	3c063ac4 	lui	a2,0x3ac4
    1d34:	34c69ba6 	ori	a2,a2,0x9ba6
    1d38:	afa70018 	sw	a3,24(sp)
    1d3c:	24840050 	addiu	a0,a0,80
    1d40:	0c000000 	jal	0 <EnFloormas_Init>
    1d44:	24050000 	li	a1,0
    1d48:	10400005 	beqz	v0,1d60 <EnFloormas_SmShrink+0x40>
    1d4c:	8fa70018 	lw	a3,24(sp)
    1d50:	00e02025 	move	a0,a3
    1d54:	0c000000 	jal	0 <EnFloormas_Init>
    1d58:	afa70018 	sw	a3,24(sp)
    1d5c:	8fa70018 	lw	a3,24(sp)
    1d60:	c4e00050 	lwc1	$f0,80(a3)
    1d64:	e4e00058 	swc1	$f0,88(a3)
    1d68:	e4e00054 	swc1	$f0,84(a3)
    1d6c:	8fbf0014 	lw	ra,20(sp)
    1d70:	27bd0018 	addiu	sp,sp,24
    1d74:	03e00008 	jr	ra
    1d78:	00000000 	nop

00001d7c <EnFloormas_JumpAtLink>:
    1d7c:	27bdffd8 	addiu	sp,sp,-40
    1d80:	afb00018 	sw	s0,24(sp)
    1d84:	afbf001c 	sw	ra,28(sp)
    1d88:	afa5002c 	sw	a1,44(sp)
    1d8c:	8caf1c44 	lw	t7,7236(a1)
    1d90:	00808025 	move	s0,a0
    1d94:	2484014c 	addiu	a0,a0,332
    1d98:	afa40020 	sw	a0,32(sp)
    1d9c:	0c000000 	jal	0 <EnFloormas_Init>
    1da0:	afaf0024 	sw	t7,36(sp)
    1da4:	3c0141a0 	lui	at,0x41a0
    1da8:	44810000 	mtc1	at,$f0
    1dac:	c6040164 	lwc1	$f4,356(s0)
    1db0:	8fa40020 	lw	a0,32(sp)
    1db4:	24060002 	li	a2,2
    1db8:	4600203c 	c.lt.s	$f4,$f0
    1dbc:	24070e38 	li	a3,3640
    1dc0:	45020007 	bc1fl	1de0 <EnFloormas_JumpAtLink+0x64>
    1dc4:	44050000 	mfc1	a1,$f0
    1dc8:	260400b6 	addiu	a0,s0,182
    1dcc:	0c000000 	jal	0 <EnFloormas_Init>
    1dd0:	8605008a 	lh	a1,138(s0)
    1dd4:	10000033 	b	1ea4 <EnFloormas_JumpAtLink+0x128>
    1dd8:	8fbf001c 	lw	ra,28(sp)
    1ddc:	44050000 	mfc1	a1,$f0
    1de0:	0c000000 	jal	0 <EnFloormas_Init>
    1de4:	00000000 	nop
    1de8:	10400007 	beqz	v0,1e08 <EnFloormas_JumpAtLink+0x8c>
    1dec:	3c0140a0 	lui	at,0x40a0
    1df0:	44813000 	mtc1	at,$f6
    1df4:	3c0140e0 	lui	at,0x40e0
    1df8:	44814000 	mtc1	at,$f8
    1dfc:	e6060068 	swc1	$f6,104(s0)
    1e00:	10000027 	b	1ea0 <EnFloormas_JumpAtLink+0x124>
    1e04:	e6080060 	swc1	$f8,96(s0)
    1e08:	96180088 	lhu	t8,136(s0)
    1e0c:	24080032 	li	t0,50
    1e10:	02002025 	move	a0,s0
    1e14:	33190002 	andi	t9,t8,0x2
    1e18:	1320000a 	beqz	t9,1e44 <EnFloormas_JumpAtLink+0xc8>
    1e1c:	3c01c120 	lui	at,0xc120
    1e20:	44805000 	mtc1	zero,$f10
    1e24:	a6080194 	sh	t0,404(s0)
    1e28:	24053937 	li	a1,14647
    1e2c:	0c000000 	jal	0 <EnFloormas_Init>
    1e30:	e60a0068 	swc1	$f10,104(s0)
    1e34:	0c000000 	jal	0 <EnFloormas_Init>
    1e38:	02002025 	move	a0,s0
    1e3c:	10000019 	b	1ea4 <EnFloormas_JumpAtLink+0x128>
    1e40:	8fbf001c 	lw	ra,28(sp)
    1e44:	c6100094 	lwc1	$f16,148(s0)
    1e48:	44819000 	mtc1	at,$f18
    1e4c:	00000000 	nop
    1e50:	4612803c 	c.lt.s	$f16,$f18
    1e54:	00000000 	nop
    1e58:	45020012 	bc1fl	1ea4 <EnFloormas_JumpAtLink+0x128>
    1e5c:	8fbf001c 	lw	ra,28(sp)
    1e60:	920902da 	lbu	t1,730(s0)
    1e64:	8fa50024 	lw	a1,36(sp)
    1e68:	312a0002 	andi	t2,t1,0x2
    1e6c:	5140000d 	beqzl	t2,1ea4 <EnFloormas_JumpAtLink+0x128>
    1e70:	8fbf001c 	lw	ra,28(sp)
    1e74:	8e0b02d4 	lw	t3,724(s0)
    1e78:	8fa4002c 	lw	a0,44(sp)
    1e7c:	3c190001 	lui	t9,0x1
    1e80:	14ab0007 	bne	a1,t3,1ea0 <EnFloormas_JumpAtLink+0x124>
    1e84:	0324c821 	addu	t9,t9,a0
    1e88:	8f391d4c 	lw	t9,7500(t9)
    1e8c:	0320f809 	jalr	t9
    1e90:	00000000 	nop
    1e94:	02002025 	move	a0,s0
    1e98:	0c000000 	jal	0 <EnFloormas_Init>
    1e9c:	8fa50024 	lw	a1,36(sp)
    1ea0:	8fbf001c 	lw	ra,28(sp)
    1ea4:	8fb00018 	lw	s0,24(sp)
    1ea8:	27bd0028 	addiu	sp,sp,40
    1eac:	03e00008 	jr	ra
    1eb0:	00000000 	nop

00001eb4 <EnFloormas_GrabLink>:
    1eb4:	27bdffc8 	addiu	sp,sp,-56
    1eb8:	afbf0014 	sw	ra,20(sp)
    1ebc:	afa5003c 	sw	a1,60(sp)
    1ec0:	8ca71c44 	lw	a3,7236(a1)
    1ec4:	00803025 	move	a2,a0
    1ec8:	afa60038 	sw	a2,56(sp)
    1ecc:	2484014c 	addiu	a0,a0,332
    1ed0:	0c000000 	jal	0 <EnFloormas_Init>
    1ed4:	afa70034 	sw	a3,52(sp)
    1ed8:	8fa60038 	lw	a2,56(sp)
    1edc:	1040001a 	beqz	v0,1f48 <EnFloormas_GrabLink+0x94>
    1ee0:	8fa70034 	lw	a3,52(sp)
    1ee4:	44802000 	mtc1	zero,$f4
    1ee8:	c4c60168 	lwc1	$f6,360(a2)
    1eec:	3c014234 	lui	at,0x4234
    1ef0:	4606203c 	c.lt.s	$f4,$f6
    1ef4:	00000000 	nop
    1ef8:	4502000c 	bc1fl	1f2c <EnFloormas_GrabLink+0x78>
    1efc:	44816000 	mtc1	at,$f12
    1f00:	3c014234 	lui	at,0x4234
    1f04:	44816000 	mtc1	at,$f12
    1f08:	3c01bf80 	lui	at,0xbf80
    1f0c:	44814000 	mtc1	at,$f8
    1f10:	3c014210 	lui	at,0x4210
    1f14:	44815000 	mtc1	at,$f10
    1f18:	e4cc0158 	swc1	$f12,344(a2)
    1f1c:	e4c80168 	swc1	$f8,360(a2)
    1f20:	10000009 	b	1f48 <EnFloormas_GrabLink+0x94>
    1f24:	e4ca015c 	swc1	$f10,348(a2)
    1f28:	44816000 	mtc1	at,$f12
    1f2c:	3c013f80 	lui	at,0x3f80
    1f30:	44818000 	mtc1	at,$f16
    1f34:	3c014210 	lui	at,0x4210
    1f38:	44819000 	mtc1	at,$f18
    1f3c:	e4cc015c 	swc1	$f12,348(a2)
    1f40:	e4d00168 	swc1	$f16,360(a2)
    1f44:	e4d20158 	swc1	$f18,344(a2)
    1f48:	3c0f0000 	lui	t7,0x0
    1f4c:	8def0004 	lw	t7,4(t7)
    1f50:	3c014234 	lui	at,0x4234
    1f54:	44816000 	mtc1	at,$f12
    1f58:	51e0001d 	beqzl	t7,1fd0 <EnFloormas_GrabLink+0x11c>
    1f5c:	c4c00094 	lwc1	$f0,148(a2)
    1f60:	c4c00094 	lwc1	$f0,148(a2)
    1f64:	3c0141a0 	lui	at,0x41a0
    1f68:	44811000 	mtc1	at,$f2
    1f6c:	46000007 	neg.s	$f0,$f0
    1f70:	3c0141f0 	lui	at,0x41f0
    1f74:	4602003c 	c.lt.s	$f0,$f2
    1f78:	00000000 	nop
    1f7c:	45020007 	bc1fl	1f9c <EnFloormas_GrabLink+0xe8>
    1f80:	44816000 	mtc1	at,$f12
    1f84:	46001006 	mov.s	$f0,$f2
    1f88:	3c01c120 	lui	at,0xc120
    1f8c:	44811000 	mtc1	at,$f2
    1f90:	10000024 	b	2024 <EnFloormas_GrabLink+0x170>
    1f94:	c4e40028 	lwc1	$f4,40(a3)
    1f98:	44816000 	mtc1	at,$f12
    1f9c:	3c01c120 	lui	at,0xc120
    1fa0:	4600603c 	c.lt.s	$f12,$f0
    1fa4:	00000000 	nop
    1fa8:	45020004 	bc1fl	1fbc <EnFloormas_GrabLink+0x108>
    1fac:	46000086 	mov.s	$f2,$f0
    1fb0:	10000002 	b	1fbc <EnFloormas_GrabLink+0x108>
    1fb4:	46006086 	mov.s	$f2,$f12
    1fb8:	46000086 	mov.s	$f2,$f0
    1fbc:	46001006 	mov.s	$f0,$f2
    1fc0:	44811000 	mtc1	at,$f2
    1fc4:	10000017 	b	2024 <EnFloormas_GrabLink+0x170>
    1fc8:	c4e40028 	lwc1	$f4,40(a3)
    1fcc:	c4c00094 	lwc1	$f0,148(a2)
    1fd0:	3c0141c8 	lui	at,0x41c8
    1fd4:	44811000 	mtc1	at,$f2
    1fd8:	46000007 	neg.s	$f0,$f0
    1fdc:	3c01c1f0 	lui	at,0xc1f0
    1fe0:	4602003c 	c.lt.s	$f0,$f2
    1fe4:	00000000 	nop
    1fe8:	45020004 	bc1fl	1ffc <EnFloormas_GrabLink+0x148>
    1fec:	4600603c 	c.lt.s	$f12,$f0
    1ff0:	10000009 	b	2018 <EnFloormas_GrabLink+0x164>
    1ff4:	46001006 	mov.s	$f0,$f2
    1ff8:	4600603c 	c.lt.s	$f12,$f0
    1ffc:	00000000 	nop
    2000:	45020004 	bc1fl	2014 <EnFloormas_GrabLink+0x160>
    2004:	46000086 	mov.s	$f2,$f0
    2008:	10000002 	b	2014 <EnFloormas_GrabLink+0x160>
    200c:	46006086 	mov.s	$f2,$f12
    2010:	46000086 	mov.s	$f2,$f0
    2014:	46001006 	mov.s	$f0,$f2
    2018:	44811000 	mtc1	at,$f2
    201c:	00000000 	nop
    2020:	c4e40028 	lwc1	$f4,40(a3)
    2024:	84c400b6 	lh	a0,182(a2)
    2028:	46002180 	add.s	$f6,$f4,$f0
    202c:	e4c60028 	swc1	$f6,40(a2)
    2030:	e7a20024 	swc1	$f2,36(sp)
    2034:	afa70034 	sw	a3,52(sp)
    2038:	0c000000 	jal	0 <EnFloormas_Init>
    203c:	afa60038 	sw	a2,56(sp)
    2040:	3c010000 	lui	at,0x0
    2044:	c428009c 	lwc1	$f8,156(at)
    2048:	c7a20024 	lwc1	$f2,36(sp)
    204c:	8fa70034 	lw	a3,52(sp)
    2050:	8fa60038 	lw	a2,56(sp)
    2054:	46081302 	mul.s	$f12,$f2,$f8
    2058:	c4f00024 	lwc1	$f16,36(a3)
    205c:	84c400b6 	lh	a0,182(a2)
    2060:	460c0282 	mul.s	$f10,$f0,$f12
    2064:	46105480 	add.s	$f18,$f10,$f16
    2068:	e4d20024 	swc1	$f18,36(a2)
    206c:	0c000000 	jal	0 <EnFloormas_Init>
    2070:	e7ac001c 	swc1	$f12,28(sp)
    2074:	c7ac001c 	lwc1	$f12,28(sp)
    2078:	8fa70034 	lw	a3,52(sp)
    207c:	8fa60038 	lw	a2,56(sp)
    2080:	460c0102 	mul.s	$f4,$f0,$f12
    2084:	c4e6002c 	lwc1	$f6,44(a3)
    2088:	3c0140c0 	lui	at,0x40c0
    208c:	46062200 	add.s	$f8,$f4,$f6
    2090:	e4c8002c 	swc1	$f8,44(a2)
    2094:	8cf80680 	lw	t8,1664(a3)
    2098:	33190080 	andi	t9,t8,0x80
    209c:	53200005 	beqzl	t9,20b4 <EnFloormas_GrabLink+0x200>
    20a0:	8cc40118 	lw	a0,280(a2)
    20a4:	80e80a78 	lb	t0,2680(a3)
    20a8:	05030024 	bgezl	t0,213c <EnFloormas_GrabLink+0x288>
    20ac:	84ce0196 	lh	t6,406(a2)
    20b0:	8cc40118 	lw	a0,280(a2)
    20b4:	3c020000 	lui	v0,0x0
    20b8:	24420000 	addiu	v0,v0,0
    20bc:	8c830190 	lw	v1,400(a0)
    20c0:	44815000 	mtc1	at,$f10
    20c4:	8cc5011c 	lw	a1,284(a2)
    20c8:	10430005 	beq	v0,v1,20e0 <EnFloormas_GrabLink+0x22c>
    20cc:	3c01c040 	lui	at,0xc040
    20d0:	3c090000 	lui	t1,0x0
    20d4:	25290000 	addiu	t1,t1,0
    20d8:	5523000c 	bnel	t1,v1,210c <EnFloormas_GrabLink+0x258>
    20dc:	8ccc0004 	lw	t4,4(a2)
    20e0:	8ca30190 	lw	v1,400(a1)
    20e4:	3c0a0000 	lui	t2,0x0
    20e8:	254a0000 	addiu	t2,t2,0
    20ec:	10430002 	beq	v0,v1,20f8 <EnFloormas_GrabLink+0x244>
    20f0:	240b0040 	li	t3,64
    20f4:	15430004 	bne	t2,v1,2108 <EnFloormas_GrabLink+0x254>
    20f8:	24020020 	li	v0,32
    20fc:	a482001c 	sh	v0,28(a0)
    2100:	a4a2001c 	sh	v0,28(a1)
    2104:	a4cb001c 	sh	t3,28(a2)
    2108:	8ccc0004 	lw	t4,4(a2)
    210c:	44818000 	mtc1	at,$f16
    2110:	a4c000b4 	sh	zero,180(a2)
    2114:	358d0001 	ori	t5,t4,0x1
    2118:	e4ca0060 	swc1	$f10,96(a2)
    211c:	accd0004 	sw	t5,4(a2)
    2120:	e4d00068 	swc1	$f16,104(a2)
    2124:	afa60038 	sw	a2,56(sp)
    2128:	0c000000 	jal	0 <EnFloormas_Init>
    212c:	00c02025 	move	a0,a2
    2130:	1000001f 	b	21b0 <EnFloormas_GrabLink+0x2fc>
    2134:	8fa60038 	lw	a2,56(sp)
    2138:	84ce0196 	lh	t6,406(a2)
    213c:	24010014 	li	at,20
    2140:	3c180000 	lui	t8,0x0
    2144:	01c1001a 	div	zero,t6,at
    2148:	00007810 	mfhi	t7
    214c:	55e00019 	bnezl	t7,21b4 <EnFloormas_GrabLink+0x300>
    2150:	00c02025 	move	a0,a2
    2154:	8f180004 	lw	t8,4(t8)
    2158:	00e02025 	move	a0,a3
    215c:	24056805 	li	a1,26629
    2160:	13000007 	beqz	t8,2180 <EnFloormas_GrabLink+0x2cc>
    2164:	00000000 	nop
    2168:	00e02025 	move	a0,a3
    216c:	24056825 	li	a1,26661
    2170:	0c000000 	jal	0 <EnFloormas_Init>
    2174:	afa60038 	sw	a2,56(sp)
    2178:	10000004 	b	218c <EnFloormas_GrabLink+0x2d8>
    217c:	8fa60038 	lw	a2,56(sp)
    2180:	0c000000 	jal	0 <EnFloormas_Init>
    2184:	afa60038 	sw	a2,56(sp)
    2188:	8fa60038 	lw	a2,56(sp)
    218c:	8fa4003c 	lw	a0,60(sp)
    2190:	3c190001 	lui	t9,0x1
    2194:	afa60038 	sw	a2,56(sp)
    2198:	0324c821 	addu	t9,t9,a0
    219c:	8f391d58 	lw	t9,7512(t9)
    21a0:	2405fff8 	li	a1,-8
    21a4:	0320f809 	jalr	t9
    21a8:	00000000 	nop
    21ac:	8fa60038 	lw	a2,56(sp)
    21b0:	00c02025 	move	a0,a2
    21b4:	0c000000 	jal	0 <EnFloormas_Init>
    21b8:	24053136 	li	a1,12598
    21bc:	8fbf0014 	lw	ra,20(sp)
    21c0:	27bd0038 	addiu	sp,sp,56
    21c4:	03e00008 	jr	ra
    21c8:	00000000 	nop

000021cc <EnFloormas_SmSlaveJumpAtMaster>:
    21cc:	27bdffd0 	addiu	sp,sp,-48
    21d0:	afb00014 	sw	s0,20(sp)
    21d4:	00808025 	move	s0,a0
    21d8:	afbf001c 	sw	ra,28(sp)
    21dc:	2484014c 	addiu	a0,a0,332
    21e0:	afb10018 	sw	s1,24(sp)
    21e4:	afa50034 	sw	a1,52(sp)
    21e8:	0c000000 	jal	0 <EnFloormas_Init>
    21ec:	afa40024 	sw	a0,36(sp)
    21f0:	8e030118 	lw	v1,280(s0)
    21f4:	24050040 	li	a1,64
    21f8:	8fa40024 	lw	a0,36(sp)
    21fc:	846e001c 	lh	t6,28(v1)
    2200:	54ae0004 	bnel	a1,t6,2214 <EnFloormas_SmSlaveJumpAtMaster+0x48>
    2204:	8e02011c 	lw	v0,284(s0)
    2208:	10000011 	b	2250 <EnFloormas_SmSlaveJumpAtMaster+0x84>
    220c:	00608825 	move	s1,v1
    2210:	8e02011c 	lw	v0,284(s0)
    2214:	844f001c 	lh	t7,28(v0)
    2218:	54af0004 	bnel	a1,t7,222c <EnFloormas_SmSlaveJumpAtMaster+0x60>
    221c:	96180088 	lhu	t8,136(s0)
    2220:	1000000b 	b	2250 <EnFloormas_SmSlaveJumpAtMaster+0x84>
    2224:	00408825 	move	s1,v0
    2228:	96180088 	lhu	t8,136(s0)
    222c:	24080010 	li	t0,16
    2230:	02002025 	move	a0,s0
    2234:	33190002 	andi	t9,t8,0x2
    2238:	53200064 	beqzl	t9,23cc <EnFloormas_SmSlaveJumpAtMaster+0x200>
    223c:	8fbf001c 	lw	ra,28(sp)
    2240:	0c000000 	jal	0 <EnFloormas_Init>
    2244:	a608001c 	sh	t0,28(s0)
    2248:	10000060 	b	23cc <EnFloormas_SmSlaveJumpAtMaster+0x200>
    224c:	8fbf001c 	lw	ra,28(sp)
    2250:	0c000000 	jal	0 <EnFloormas_Init>
    2254:	3c0541a0 	lui	a1,0x41a0
    2258:	10400008 	beqz	v0,227c <EnFloormas_SmSlaveJumpAtMaster+0xb0>
    225c:	3c0141a0 	lui	at,0x41a0
    2260:	3c0140a0 	lui	at,0x40a0
    2264:	44811000 	mtc1	at,$f2
    2268:	3c0140e0 	lui	at,0x40e0
    226c:	44812000 	mtc1	at,$f4
    2270:	e6020068 	swc1	$f2,104(s0)
    2274:	1000003e 	b	2370 <EnFloormas_SmSlaveJumpAtMaster+0x1a4>
    2278:	e6040060 	swc1	$f4,96(s0)
    227c:	c6060164 	lwc1	$f6,356(s0)
    2280:	44814000 	mtc1	at,$f8
    2284:	02002025 	move	a0,s0
    2288:	4608303c 	c.lt.s	$f6,$f8
    228c:	00000000 	nop
    2290:	4502000c 	bc1fl	22c4 <EnFloormas_SmSlaveJumpAtMaster+0xf8>
    2294:	c62a0028 	lwc1	$f10,40(s1)
    2298:	0c000000 	jal	0 <EnFloormas_Init>
    229c:	02202825 	move	a1,s1
    22a0:	00022c00 	sll	a1,v0,0x10
    22a4:	00052c03 	sra	a1,a1,0x10
    22a8:	260400b6 	addiu	a0,s0,182
    22ac:	24060002 	li	a2,2
    22b0:	0c000000 	jal	0 <EnFloormas_Init>
    22b4:	24070e38 	li	a3,3640
    22b8:	1000002e 	b	2374 <EnFloormas_SmSlaveJumpAtMaster+0x1a8>
    22bc:	c6040024 	lwc1	$f4,36(s0)
    22c0:	c62a0028 	lwc1	$f10,40(s1)
    22c4:	c6100028 	lwc1	$f16,40(s0)
    22c8:	3c01c120 	lui	at,0xc120
    22cc:	44812000 	mtc1	at,$f4
    22d0:	46105481 	sub.s	$f18,$f10,$f16
    22d4:	4604903c 	c.lt.s	$f18,$f4
    22d8:	00000000 	nop
    22dc:	4502001a 	bc1fl	2348 <EnFloormas_SmSlaveJumpAtMaster+0x17c>
    22e0:	960b0088 	lhu	t3,136(s0)
    22e4:	c6060024 	lwc1	$f6,36(s0)
    22e8:	c6280024 	lwc1	$f8,36(s1)
    22ec:	3c014120 	lui	at,0x4120
    22f0:	44811000 	mtc1	at,$f2
    22f4:	46083001 	sub.s	$f0,$f6,$f8
    22f8:	46000005 	abs.s	$f0,$f0
    22fc:	4602003c 	c.lt.s	$f0,$f2
    2300:	00000000 	nop
    2304:	45020010 	bc1fl	2348 <EnFloormas_SmSlaveJumpAtMaster+0x17c>
    2308:	960b0088 	lhu	t3,136(s0)
    230c:	c60a002c 	lwc1	$f10,44(s0)
    2310:	c630002c 	lwc1	$f16,44(s1)
    2314:	46105001 	sub.s	$f0,$f10,$f16
    2318:	46000005 	abs.s	$f0,$f0
    231c:	4602003c 	c.lt.s	$f0,$f2
    2320:	00000000 	nop
    2324:	45020008 	bc1fl	2348 <EnFloormas_SmSlaveJumpAtMaster+0x17c>
    2328:	960b0088 	lhu	t3,136(s0)
    232c:	0c000000 	jal	0 <EnFloormas_Init>
    2330:	02002025 	move	a0,s0
    2334:	920902da 	lbu	t1,730(s0)
    2338:	352a0001 	ori	t2,t1,0x1
    233c:	1000000c 	b	2370 <EnFloormas_SmSlaveJumpAtMaster+0x1a4>
    2340:	a20a02da 	sb	t2,730(s0)
    2344:	960b0088 	lhu	t3,136(s0)
    2348:	02002025 	move	a0,s0
    234c:	316c0002 	andi	t4,t3,0x2
    2350:	51800008 	beqzl	t4,2374 <EnFloormas_SmSlaveJumpAtMaster+0x1a8>
    2354:	c6040024 	lwc1	$f4,36(s0)
    2358:	44809000 	mtc1	zero,$f18
    235c:	24053937 	li	a1,14647
    2360:	0c000000 	jal	0 <EnFloormas_Init>
    2364:	e6120068 	swc1	$f18,104(s0)
    2368:	0c000000 	jal	0 <EnFloormas_Init>
    236c:	02002025 	move	a0,s0
    2370:	c6040024 	lwc1	$f4,36(s0)
    2374:	c6260024 	lwc1	$f6,36(s1)
    2378:	3c0140a0 	lui	at,0x40a0
    237c:	44811000 	mtc1	at,$f2
    2380:	46062001 	sub.s	$f0,$f4,$f6
    2384:	46000005 	abs.s	$f0,$f0
    2388:	4602003c 	c.lt.s	$f0,$f2
    238c:	00000000 	nop
    2390:	4502000e 	bc1fl	23cc <EnFloormas_SmSlaveJumpAtMaster+0x200>
    2394:	8fbf001c 	lw	ra,28(sp)
    2398:	c608002c 	lwc1	$f8,44(s0)
    239c:	c62a002c 	lwc1	$f10,44(s1)
    23a0:	26040068 	addiu	a0,s0,104
    23a4:	24050000 	li	a1,0
    23a8:	460a4001 	sub.s	$f0,$f8,$f10
    23ac:	46000005 	abs.s	$f0,$f0
    23b0:	4602003c 	c.lt.s	$f0,$f2
    23b4:	00000000 	nop
    23b8:	45020004 	bc1fl	23cc <EnFloormas_SmSlaveJumpAtMaster+0x200>
    23bc:	8fbf001c 	lw	ra,28(sp)
    23c0:	0c000000 	jal	0 <EnFloormas_Init>
    23c4:	3c064000 	lui	a2,0x4000
    23c8:	8fbf001c 	lw	ra,28(sp)
    23cc:	8fb00014 	lw	s0,20(sp)
    23d0:	8fb10018 	lw	s1,24(sp)
    23d4:	03e00008 	jr	ra
    23d8:	27bd0030 	addiu	sp,sp,48

000023dc <EnFloormas_Merge>:
    23dc:	27bdffc0 	addiu	sp,sp,-64
    23e0:	afbf001c 	sw	ra,28(sp)
    23e4:	afb00018 	sw	s0,24(sp)
    23e8:	afa50044 	sw	a1,68(sp)
    23ec:	8482019a 	lh	v0,410(a0)
    23f0:	00808025 	move	s0,a0
    23f4:	00003025 	move	a2,zero
    23f8:	10400003 	beqz	v0,2408 <EnFloormas_Merge+0x2c>
    23fc:	244effff 	addiu	t6,v0,-1
    2400:	a48e019a 	sh	t6,410(a0)
    2404:	8482019a 	lh	v0,410(a0)
    2408:	8e040118 	lw	a0,280(s0)
    240c:	14400016 	bnez	v0,2468 <EnFloormas_Merge+0x8c>
    2410:	8e07011c 	lw	a3,284(s0)
    2414:	8c8f0190 	lw	t7,400(a0)
    2418:	3c020000 	lui	v0,0x0
    241c:	24420000 	addiu	v0,v0,0
    2420:	104f0008 	beq	v0,t7,2444 <EnFloormas_Merge+0x68>
    2424:	8fa50044 	lw	a1,68(sp)
    2428:	afa20028 	sw	v0,40(sp)
    242c:	afa60034 	sw	a2,52(sp)
    2430:	0c000000 	jal	0 <EnFloormas_Init>
    2434:	afa70038 	sw	a3,56(sp)
    2438:	8fa20028 	lw	v0,40(sp)
    243c:	8fa60034 	lw	a2,52(sp)
    2440:	8fa70038 	lw	a3,56(sp)
    2444:	8cf80190 	lw	t8,400(a3)
    2448:	00e02025 	move	a0,a3
    244c:	8fa50044 	lw	a1,68(sp)
    2450:	50580017 	beql	v0,t8,24b0 <EnFloormas_Merge+0xd4>
    2454:	c6020050 	lwc1	$f2,80(s0)
    2458:	0c000000 	jal	0 <EnFloormas_Init>
    245c:	afa60034 	sw	a2,52(sp)
    2460:	10000012 	b	24ac <EnFloormas_Merge+0xd0>
    2464:	8fa60034 	lw	a2,52(sp)
    2468:	8c830190 	lw	v1,400(a0)
    246c:	3c020000 	lui	v0,0x0
    2470:	24420000 	addiu	v0,v0,0
    2474:	10430005 	beq	v0,v1,248c <EnFloormas_Merge+0xb0>
    2478:	3c190000 	lui	t9,0x0
    247c:	27390000 	addiu	t9,t9,0
    2480:	53230003 	beql	t9,v1,2490 <EnFloormas_Merge+0xb4>
    2484:	8ce30190 	lw	v1,400(a3)
    2488:	24060001 	li	a2,1
    248c:	8ce30190 	lw	v1,400(a3)
    2490:	3c080000 	lui	t0,0x0
    2494:	25080000 	addiu	t0,t0,0
    2498:	50430005 	beql	v0,v1,24b0 <EnFloormas_Merge+0xd4>
    249c:	c6020050 	lwc1	$f2,80(s0)
    24a0:	51030003 	beql	t0,v1,24b0 <EnFloormas_Merge+0xd4>
    24a4:	c6020050 	lwc1	$f2,80(s0)
    24a8:	24c60001 	addiu	a2,a2,1
    24ac:	c6020050 	lwc1	$f2,80(s0)
    24b0:	24010001 	li	at,1
    24b4:	14c1000b 	bne	a2,at,24e4 <EnFloormas_Merge+0x108>
    24b8:	46001306 	mov.s	$f12,$f2
    24bc:	3c053be5 	lui	a1,0x3be5
    24c0:	3c063a03 	lui	a2,0x3a03
    24c4:	34c6126f 	ori	a2,a2,0x126f
    24c8:	34a56042 	ori	a1,a1,0x6042
    24cc:	26040050 	addiu	a0,s0,80
    24d0:	0c000000 	jal	0 <EnFloormas_Init>
    24d4:	e7ac0030 	swc1	$f12,48(sp)
    24d8:	c7ac0030 	lwc1	$f12,48(sp)
    24dc:	1000000b 	b	250c <EnFloormas_Merge+0x130>
    24e0:	c6020050 	lwc1	$f2,80(s0)
    24e4:	14c00009 	bnez	a2,250c <EnFloormas_Merge+0x130>
    24e8:	26040050 	addiu	a0,s0,80
    24ec:	3c053c23 	lui	a1,0x3c23
    24f0:	3c063a03 	lui	a2,0x3a03
    24f4:	34c6126f 	ori	a2,a2,0x126f
    24f8:	34a5d70a 	ori	a1,a1,0xd70a
    24fc:	0c000000 	jal	0 <EnFloormas_Init>
    2500:	e7ac0030 	swc1	$f12,48(sp)
    2504:	c7ac0030 	lwc1	$f12,48(sp)
    2508:	c6020050 	lwc1	$f2,80(s0)
    250c:	e6020058 	swc1	$f2,88(s0)
    2510:	e6020054 	swc1	$f2,84(s0)
    2514:	3c010000 	lui	at,0x0
    2518:	c42400a0 	lwc1	$f4,160(at)
    251c:	3c010000 	lui	at,0x0
    2520:	46046032 	c.eq.s	$f12,$f4
    2524:	00000000 	nop
    2528:	45030007 	bc1tl	2548 <EnFloormas_Merge+0x16c>
    252c:	46026032 	c.eq.s	$f12,$f2
    2530:	c42600a4 	lwc1	$f6,164(at)
    2534:	46066032 	c.eq.s	$f12,$f6
    2538:	00000000 	nop
    253c:	45000008 	bc1f	2560 <EnFloormas_Merge+0x184>
    2540:	00000000 	nop
    2544:	46026032 	c.eq.s	$f12,$f2
    2548:	02002025 	move	a0,s0
    254c:	45010004 	bc1t	2560 <EnFloormas_Merge+0x184>
    2550:	00000000 	nop
    2554:	0c000000 	jal	0 <EnFloormas_Init>
    2558:	24053934 	li	a1,14644
    255c:	c6020050 	lwc1	$f2,80(s0)
    2560:	3c020000 	lui	v0,0x0
    2564:	24420020 	addiu	v0,v0,32
    2568:	84490020 	lh	t1,32(v0)
    256c:	3c0142c8 	lui	at,0x42c8
    2570:	44810000 	mtc1	at,$f0
    2574:	44894000 	mtc1	t1,$f8
    2578:	2604014c 	addiu	a0,s0,332
    257c:	468042a0 	cvt.s.w	$f10,$f8
    2580:	46005402 	mul.s	$f16,$f10,$f0
    2584:	00000000 	nop
    2588:	46028482 	mul.s	$f18,$f16,$f2
    258c:	4600910d 	trunc.w.s	$f4,$f18
    2590:	440b2000 	mfc1	t3,$f4
    2594:	00000000 	nop
    2598:	a60b0308 	sh	t3,776(s0)
    259c:	844c0022 	lh	t4,34(v0)
    25a0:	448c3000 	mtc1	t4,$f6
    25a4:	00000000 	nop
    25a8:	46803220 	cvt.s.w	$f8,$f6
    25ac:	46004282 	mul.s	$f10,$f8,$f0
    25b0:	00000000 	nop
    25b4:	46025402 	mul.s	$f16,$f10,$f2
    25b8:	4600848d 	trunc.w.s	$f18,$f16
    25bc:	440e9000 	mfc1	t6,$f18
    25c0:	00000000 	nop
    25c4:	a60e030a 	sh	t6,778(s0)
    25c8:	0c000000 	jal	0 <EnFloormas_Init>
    25cc:	afa40024 	sw	a0,36(sp)
    25d0:	10400026 	beqz	v0,266c <EnFloormas_Merge+0x290>
    25d4:	8fa40024 	lw	a0,36(sp)
    25d8:	3c010000 	lui	at,0x0
    25dc:	c42600a8 	lwc1	$f6,168(at)
    25e0:	c6040050 	lwc1	$f4,80(s0)
    25e4:	4604303e 	c.le.s	$f6,$f4
    25e8:	00000000 	nop
    25ec:	45020013 	bc1fl	263c <EnFloormas_Merge+0x260>
    25f0:	860a0194 	lh	t2,404(s0)
    25f4:	8e0f0004 	lw	t7,4(s0)
    25f8:	2401ffef 	li	at,-17
    25fc:	02002025 	move	a0,s0
    2600:	01e1c024 	and	t8,t7,at
    2604:	0c000000 	jal	0 <EnFloormas_Init>
    2608:	ae180004 	sw	t8,4(s0)
    260c:	921902f6 	lbu	t9,758(s0)
    2610:	a600001c 	sh	zero,28(s0)
    2614:	3c090000 	lui	t1,0x0
    2618:	37280004 	ori	t0,t9,0x4
    261c:	a20802f6 	sb	t0,758(s0)
    2620:	9129004c 	lbu	t1,76(t1)
    2624:	02002025 	move	a0,s0
    2628:	0c000000 	jal	0 <EnFloormas_Init>
    262c:	a20900af 	sb	t1,175(s0)
    2630:	1000000f 	b	2670 <EnFloormas_Merge+0x294>
    2634:	02002025 	move	a0,s0
    2638:	860a0194 	lh	t2,404(s0)
    263c:	3c050000 	lui	a1,0x0
    2640:	15400007 	bnez	t2,2660 <EnFloormas_Merge+0x284>
    2644:	00000000 	nop
    2648:	3c050000 	lui	a1,0x0
    264c:	0c000000 	jal	0 <EnFloormas_Init>
    2650:	24a50000 	addiu	a1,a1,0
    2654:	240b0001 	li	t3,1
    2658:	10000004 	b	266c <EnFloormas_Merge+0x290>
    265c:	a60b0194 	sh	t3,404(s0)
    2660:	0c000000 	jal	0 <EnFloormas_Init>
    2664:	24a50000 	addiu	a1,a1,0
    2668:	a6000194 	sh	zero,404(s0)
    266c:	02002025 	move	a0,s0
    2670:	0c000000 	jal	0 <EnFloormas_Init>
    2674:	24053133 	li	a1,12595
    2678:	8fbf001c 	lw	ra,28(sp)
    267c:	8fb00018 	lw	s0,24(sp)
    2680:	27bd0040 	addiu	sp,sp,64
    2684:	03e00008 	jr	ra
    2688:	00000000 	nop

0000268c <EnFloormas_SmWait>:
    268c:	afa40000 	sw	a0,0(sp)
    2690:	03e00008 	jr	ra
    2694:	afa50004 	sw	a1,4(sp)

00002698 <EnFloormas_TakeDamage>:
    2698:	27bdffd8 	addiu	sp,sp,-40
    269c:	afb00018 	sw	s0,24(sp)
    26a0:	00808025 	move	s0,a0
    26a4:	afbf001c 	sw	ra,28(sp)
    26a8:	2484014c 	addiu	a0,a0,332
    26ac:	afa5002c 	sw	a1,44(sp)
    26b0:	0c000000 	jal	0 <EnFloormas_Init>
    26b4:	afa40024 	sw	a0,36(sp)
    26b8:	5040000c 	beqzl	v0,26ec <EnFloormas_TakeDamage+0x54>
    26bc:	8fa40024 	lw	a0,36(sp)
    26c0:	920e00af 	lbu	t6,175(s0)
    26c4:	02002025 	move	a0,s0
    26c8:	15c00005 	bnez	t6,26e0 <EnFloormas_TakeDamage+0x48>
    26cc:	00000000 	nop
    26d0:	0c000000 	jal	0 <EnFloormas_Init>
    26d4:	8fa5002c 	lw	a1,44(sp)
    26d8:	10000004 	b	26ec <EnFloormas_TakeDamage+0x54>
    26dc:	8fa40024 	lw	a0,36(sp)
    26e0:	0c000000 	jal	0 <EnFloormas_Init>
    26e4:	02002025 	move	a0,s0
    26e8:	8fa40024 	lw	a0,36(sp)
    26ec:	0c000000 	jal	0 <EnFloormas_Init>
    26f0:	3c054150 	lui	a1,0x4150
    26f4:	1040000f 	beqz	v0,2734 <EnFloormas_TakeDamage+0x9c>
    26f8:	3c010000 	lui	at,0x0
    26fc:	c42400ac 	lwc1	$f4,172(at)
    2700:	c6060050 	lwc1	$f6,80(s0)
    2704:	2405387b 	li	a1,14459
    2708:	02002025 	move	a0,s0
    270c:	4606203c 	c.lt.s	$f4,$f6
    2710:	00000000 	nop
    2714:	45000005 	bc1f	272c <EnFloormas_TakeDamage+0x94>
    2718:	00000000 	nop
    271c:	0c000000 	jal	0 <EnFloormas_Init>
    2720:	02002025 	move	a0,s0
    2724:	10000004 	b	2738 <EnFloormas_TakeDamage+0xa0>
    2728:	3c063e4c 	lui	a2,0x3e4c
    272c:	0c000000 	jal	0 <EnFloormas_Init>
    2730:	2405387b 	li	a1,14459
    2734:	3c063e4c 	lui	a2,0x3e4c
    2738:	34c6cccd 	ori	a2,a2,0xcccd
    273c:	26040068 	addiu	a0,s0,104
    2740:	0c000000 	jal	0 <EnFloormas_Init>
    2744:	24050000 	li	a1,0
    2748:	8fbf001c 	lw	ra,28(sp)
    274c:	8fb00018 	lw	s0,24(sp)
    2750:	27bd0028 	addiu	sp,sp,40
    2754:	03e00008 	jr	ra
    2758:	00000000 	nop

0000275c <EnFloormas_Recover>:
    275c:	27bdffe8 	addiu	sp,sp,-24
    2760:	afbf0014 	sw	ra,20(sp)
    2764:	afa40018 	sw	a0,24(sp)
    2768:	afa5001c 	sw	a1,28(sp)
    276c:	0c000000 	jal	0 <EnFloormas_Init>
    2770:	2484014c 	addiu	a0,a0,332
    2774:	50400004 	beqzl	v0,2788 <EnFloormas_Recover+0x2c>
    2778:	8fbf0014 	lw	ra,20(sp)
    277c:	0c000000 	jal	0 <EnFloormas_Init>
    2780:	8fa40018 	lw	a0,24(sp)
    2784:	8fbf0014 	lw	ra,20(sp)
    2788:	27bd0018 	addiu	sp,sp,24
    278c:	03e00008 	jr	ra
    2790:	00000000 	nop

00002794 <EnFloormas_Freeze>:
    2794:	27bdffe8 	addiu	sp,sp,-24
    2798:	afbf0014 	sw	ra,20(sp)
    279c:	00803025 	move	a2,a0
    27a0:	afa5001c 	sw	a1,28(sp)
    27a4:	afa60018 	sw	a2,24(sp)
    27a8:	0c000000 	jal	0 <EnFloormas_Init>
    27ac:	2484014c 	addiu	a0,a0,332
    27b0:	8fa60018 	lw	a2,24(sp)
    27b4:	84c20194 	lh	v0,404(a2)
    27b8:	10400003 	beqz	v0,27c8 <EnFloormas_Freeze+0x34>
    27bc:	244effff 	addiu	t6,v0,-1
    27c0:	a4ce0194 	sh	t6,404(a2)
    27c4:	84c20194 	lh	v0,404(a2)
    27c8:	5440000c 	bnezl	v0,27fc <EnFloormas_Freeze+0x68>
    27cc:	8fbf0014 	lw	ra,20(sp)
    27d0:	90cf00af 	lbu	t7,175(a2)
    27d4:	00c02025 	move	a0,a2
    27d8:	15e00005 	bnez	t7,27f0 <EnFloormas_Freeze+0x5c>
    27dc:	00000000 	nop
    27e0:	0c000000 	jal	0 <EnFloormas_Init>
    27e4:	8fa5001c 	lw	a1,28(sp)
    27e8:	10000004 	b	27fc <EnFloormas_Freeze+0x68>
    27ec:	8fbf0014 	lw	ra,20(sp)
    27f0:	0c000000 	jal	0 <EnFloormas_Init>
    27f4:	00c02025 	move	a0,a2
    27f8:	8fbf0014 	lw	ra,20(sp)
    27fc:	27bd0018 	addiu	sp,sp,24
    2800:	03e00008 	jr	ra
    2804:	00000000 	nop

00002808 <EnFloormas_ColliderCheck>:
    2808:	27bdffd0 	addiu	sp,sp,-48
    280c:	afbf0024 	sw	ra,36(sp)
    2810:	afb00020 	sw	s0,32(sp)
    2814:	afa50034 	sw	a1,52(sp)
    2818:	908202d9 	lbu	v0,729(a0)
    281c:	00808025 	move	s0,a0
    2820:	260502e0 	addiu	a1,s0,736
    2824:	304e0002 	andi	t6,v0,0x2
    2828:	11c0005d 	beqz	t6,29a0 <EnFloormas_ColliderCheck+0x198>
    282c:	304ffffd 	andi	t7,v0,0xfffd
    2830:	a08f02d9 	sb	t7,729(a0)
    2834:	0c000000 	jal	0 <EnFloormas_Init>
    2838:	24060001 	li	a2,1
    283c:	921800b1 	lbu	t8,177(s0)
    2840:	57000005 	bnezl	t8,2858 <EnFloormas_ColliderCheck+0x50>
    2844:	920802dc 	lbu	t0,732(s0)
    2848:	921900b0 	lbu	t9,176(s0)
    284c:	53200055 	beqzl	t9,29a4 <EnFloormas_ColliderCheck+0x19c>
    2850:	8fbf0024 	lw	ra,36(sp)
    2854:	920802dc 	lbu	t0,732(s0)
    2858:	2401000c 	li	at,12
    285c:	02002025 	move	a0,s0
    2860:	1101004f 	beq	t0,at,29a0 <EnFloormas_ColliderCheck+0x198>
    2864:	3c010000 	lui	at,0x0
    2868:	c42600b0 	lwc1	$f6,176(at)
    286c:	c6040050 	lwc1	$f4,80(s0)
    2870:	00001825 	move	v1,zero
    2874:	4606203c 	c.lt.s	$f4,$f6
    2878:	00000000 	nop
    287c:	45000002 	bc1f	2888 <EnFloormas_ColliderCheck+0x80>
    2880:	00000000 	nop
    2884:	24030001 	li	v1,1
    2888:	10600009 	beqz	v1,28b0 <EnFloormas_ColliderCheck+0xa8>
    288c:	00000000 	nop
    2890:	8e090304 	lw	t1,772(s0)
    2894:	240c0002 	li	t4,2
    2898:	8d2a0000 	lw	t2,0(t1)
    289c:	314b0080 	andi	t3,t2,0x80
    28a0:	11600003 	beqz	t3,28b0 <EnFloormas_ColliderCheck+0xa8>
    28a4:	00000000 	nop
    28a8:	a20c00b0 	sb	t4,176(s0)
    28ac:	a20000b1 	sb	zero,177(s0)
    28b0:	0c000000 	jal	0 <EnFloormas_Init>
    28b4:	afa30028 	sw	v1,40(sp)
    28b8:	14400012 	bnez	v0,2904 <EnFloormas_ColliderCheck+0xfc>
    28bc:	8fa30028 	lw	v1,40(sp)
    28c0:	10600006 	beqz	v1,28dc <EnFloormas_ColliderCheck+0xd4>
    28c4:	02002025 	move	a0,s0
    28c8:	02002025 	move	a0,s0
    28cc:	0c000000 	jal	0 <EnFloormas_Init>
    28d0:	24053932 	li	a1,14642
    28d4:	10000004 	b	28e8 <EnFloormas_ColliderCheck+0xe0>
    28d8:	8fa40034 	lw	a0,52(sp)
    28dc:	0c000000 	jal	0 <EnFloormas_Init>
    28e0:	24053896 	li	a1,14486
    28e4:	8fa40034 	lw	a0,52(sp)
    28e8:	0c000000 	jal	0 <EnFloormas_Init>
    28ec:	02002825 	move	a1,s0
    28f0:	8e0d0004 	lw	t5,4(s0)
    28f4:	2401fffe 	li	at,-2
    28f8:	01a17024 	and	t6,t5,at
    28fc:	10000007 	b	291c <EnFloormas_ColliderCheck+0x114>
    2900:	ae0e0004 	sw	t6,4(s0)
    2904:	920f00b0 	lbu	t7,176(s0)
    2908:	02002025 	move	a0,s0
    290c:	51e00004 	beqzl	t7,2920 <EnFloormas_ColliderCheck+0x118>
    2910:	920200b1 	lbu	v0,177(s0)
    2914:	0c000000 	jal	0 <EnFloormas_Init>
    2918:	24053895 	li	a1,14485
    291c:	920200b1 	lbu	v0,177(s0)
    2920:	24010004 	li	at,4
    2924:	10410003 	beq	v0,at,2934 <EnFloormas_ColliderCheck+0x12c>
    2928:	24010001 	li	at,1
    292c:	5441000b 	bnel	v0,at,295c <EnFloormas_ColliderCheck+0x154>
    2930:	24010002 	li	at,2
    2934:	8e190190 	lw	t9,400(s0)
    2938:	3c180000 	lui	t8,0x0
    293c:	27180000 	addiu	t8,t8,0
    2940:	53190018 	beql	t8,t9,29a4 <EnFloormas_ColliderCheck+0x19c>
    2944:	8fbf0024 	lw	ra,36(sp)
    2948:	0c000000 	jal	0 <EnFloormas_Init>
    294c:	02002025 	move	a0,s0
    2950:	10000014 	b	29a4 <EnFloormas_ColliderCheck+0x19c>
    2954:	8fbf0024 	lw	ra,36(sp)
    2958:	24010002 	li	at,2
    295c:	1441000e 	bne	v0,at,2998 <EnFloormas_ColliderCheck+0x190>
    2960:	3c01457a 	lui	at,0x457a
    2964:	44815000 	mtc1	at,$f10
    2968:	c6080050 	lwc1	$f8,80(s0)
    296c:	8fa40034 	lw	a0,52(sp)
    2970:	02002825 	move	a1,s0
    2974:	460a4402 	mul.s	$f16,$f8,$f10
    2978:	26060024 	addiu	a2,s0,36
    297c:	4600848d 	trunc.w.s	$f18,$f16
    2980:	44079000 	mfc1	a3,$f18
    2984:	00000000 	nop
    2988:	00073c00 	sll	a3,a3,0x10
    298c:	00073c03 	sra	a3,a3,0x10
    2990:	0c000000 	jal	0 <EnFloormas_Init>
    2994:	afa70010 	sw	a3,16(sp)
    2998:	0c000000 	jal	0 <EnFloormas_Init>
    299c:	02002025 	move	a0,s0
    29a0:	8fbf0024 	lw	ra,36(sp)
    29a4:	8fb00020 	lw	s0,32(sp)
    29a8:	27bd0030 	addiu	sp,sp,48
    29ac:	03e00008 	jr	ra
    29b0:	00000000 	nop

000029b4 <EnFloormas_Update>:
    29b4:	27bdffc0 	addiu	sp,sp,-64
    29b8:	afbf0024 	sw	ra,36(sp)
    29bc:	afb00020 	sw	s0,32(sp)
    29c0:	afa50044 	sw	a1,68(sp)
    29c4:	8c8f0190 	lw	t7,400(a0)
    29c8:	3c0e0000 	lui	t6,0x0
    29cc:	25ce0000 	addiu	t6,t6,0
    29d0:	11cf008c 	beq	t6,t7,2c04 <EnFloormas_Update+0x250>
    29d4:	00808025 	move	s0,a0
    29d8:	908202d8 	lbu	v0,728(a0)
    29dc:	3c01c0a0 	lui	at,0xc0a0
    29e0:	30580002 	andi	t8,v0,0x2
    29e4:	53000017 	beqzl	t8,2a44 <EnFloormas_Update+0x90>
    29e8:	02002025 	move	a0,s0
    29ec:	44811000 	mtc1	at,$f2
    29f0:	3c01bf00 	lui	at,0xbf00
    29f4:	44813000 	mtc1	at,$f6
    29f8:	c4840068 	lwc1	$f4,104(a0)
    29fc:	3c0140a0 	lui	at,0x40a0
    2a00:	3059fffd 	andi	t9,v0,0xfffd
    2a04:	46062202 	mul.s	$f8,$f4,$f6
    2a08:	44815000 	mtc1	at,$f10
    2a0c:	a09902d8 	sb	t9,728(a0)
    2a10:	e4880068 	swc1	$f8,104(a0)
    2a14:	c4800068 	lwc1	$f0,104(a0)
    2a18:	4600103c 	c.lt.s	$f2,$f0
    2a1c:	00000000 	nop
    2a20:	45020004 	bc1fl	2a34 <EnFloormas_Update+0x80>
    2a24:	e6000068 	swc1	$f0,104(s0)
    2a28:	10000002 	b	2a34 <EnFloormas_Update+0x80>
    2a2c:	e4820068 	swc1	$f2,104(a0)
    2a30:	e6000068 	swc1	$f0,104(s0)
    2a34:	e60a0060 	swc1	$f10,96(s0)
    2a38:	0c000000 	jal	0 <EnFloormas_Init>
    2a3c:	02002025 	move	a0,s0
    2a40:	02002025 	move	a0,s0
    2a44:	0c000000 	jal	0 <EnFloormas_Init>
    2a48:	8fa50044 	lw	a1,68(sp)
    2a4c:	8e190190 	lw	t9,400(s0)
    2a50:	02002025 	move	a0,s0
    2a54:	8fa50044 	lw	a1,68(sp)
    2a58:	0320f809 	jalr	t9
    2a5c:	00000000 	nop
    2a60:	3c080000 	lui	t0,0x0
    2a64:	25080000 	addiu	t0,t0,0
    2a68:	afa80030 	sw	t0,48(sp)
    2a6c:	8e020190 	lw	v0,400(s0)
    2a70:	3c0a0000 	lui	t2,0x0
    2a74:	254a0000 	addiu	t2,t2,0
    2a78:	11020004 	beq	t0,v0,2a8c <EnFloormas_Update+0xd8>
    2a7c:	00000000 	nop
    2a80:	860900b6 	lh	t1,182(s0)
    2a84:	8e020190 	lw	v0,400(s0)
    2a88:	a6090032 	sh	t1,50(s0)
    2a8c:	11420003 	beq	t2,v0,2a9c <EnFloormas_Update+0xe8>
    2a90:	afaa002c 	sw	t2,44(sp)
    2a94:	0c000000 	jal	0 <EnFloormas_Init>
    2a98:	02002025 	move	a0,s0
    2a9c:	3c010000 	lui	at,0x0
    2aa0:	c43200b4 	lwc1	$f18,180(at)
    2aa4:	c6100050 	lwc1	$f16,80(s0)
    2aa8:	44803000 	mtc1	zero,$f6
    2aac:	240b001d 	li	t3,29
    2ab0:	46128102 	mul.s	$f4,$f16,$f18
    2ab4:	afab0014 	sw	t3,20(sp)
    2ab8:	8fa40044 	lw	a0,68(sp)
    2abc:	02002825 	move	a1,s0
    2ac0:	3c0641a0 	lui	a2,0x41a0
    2ac4:	e7a60010 	swc1	$f6,16(sp)
    2ac8:	44072000 	mfc1	a3,$f4
    2acc:	0c000000 	jal	0 <EnFloormas_Init>
    2ad0:	00000000 	nop
    2ad4:	260502c8 	addiu	a1,s0,712
    2ad8:	afa50028 	sw	a1,40(sp)
    2adc:	0c000000 	jal	0 <EnFloormas_Init>
    2ae0:	02002025 	move	a0,s0
    2ae4:	8e020190 	lw	v0,400(s0)
    2ae8:	3c0c0000 	lui	t4,0x0
    2aec:	258c0000 	addiu	t4,t4,0
    2af0:	5582000d 	bnel	t4,v0,2b28 <EnFloormas_Update+0x174>
    2af4:	8faf002c 	lw	t7,44(sp)
    2af8:	8e0d0004 	lw	t5,4(s0)
    2afc:	3c010100 	lui	at,0x100
    2b00:	8fa40044 	lw	a0,68(sp)
    2b04:	01a17025 	or	t6,t5,at
    2b08:	3c010001 	lui	at,0x1
    2b0c:	ae0e0004 	sw	t6,4(s0)
    2b10:	34211e60 	ori	at,at,0x1e60
    2b14:	8fa60028 	lw	a2,40(sp)
    2b18:	0c000000 	jal	0 <EnFloormas_Init>
    2b1c:	00812821 	addu	a1,a0,at
    2b20:	8e020190 	lw	v0,400(s0)
    2b24:	8faf002c 	lw	t7,44(sp)
    2b28:	3c180000 	lui	t8,0x0
    2b2c:	27180000 	addiu	t8,t8,0
    2b30:	11e2001f 	beq	t7,v0,2bb0 <EnFloormas_Update+0x1fc>
    2b34:	00000000 	nop
    2b38:	1302000c 	beq	t8,v0,2b6c <EnFloormas_Update+0x1b8>
    2b3c:	8fb90030 	lw	t9,48(sp)
    2b40:	1322000a 	beq	t9,v0,2b6c <EnFloormas_Update+0x1b8>
    2b44:	00000000 	nop
    2b48:	96080110 	lhu	t0,272(s0)
    2b4c:	3c010001 	lui	at,0x1
    2b50:	34211e60 	ori	at,at,0x1e60
    2b54:	15000005 	bnez	t0,2b6c <EnFloormas_Update+0x1b8>
    2b58:	8fa40044 	lw	a0,68(sp)
    2b5c:	00812821 	addu	a1,a0,at
    2b60:	0c000000 	jal	0 <EnFloormas_Init>
    2b64:	8fa60028 	lw	a2,40(sp)
    2b68:	8e020190 	lw	v0,400(s0)
    2b6c:	3c0a0000 	lui	t2,0x0
    2b70:	254a0000 	addiu	t2,t2,0
    2b74:	15420008 	bne	t2,v0,2b98 <EnFloormas_Update+0x1e4>
    2b78:	3c0141a0 	lui	at,0x41a0
    2b7c:	c6080164 	lwc1	$f8,356(s0)
    2b80:	44815000 	mtc1	at,$f10
    2b84:	00000000 	nop
    2b88:	460a403c 	c.lt.s	$f8,$f10
    2b8c:	00000000 	nop
    2b90:	45000007 	bc1f	2bb0 <EnFloormas_Update+0x1fc>
    2b94:	00000000 	nop
    2b98:	8fa40044 	lw	a0,68(sp)
    2b9c:	3c010001 	lui	at,0x1
    2ba0:	34211e60 	ori	at,at,0x1e60
    2ba4:	8fa60028 	lw	a2,40(sp)
    2ba8:	0c000000 	jal	0 <EnFloormas_Init>
    2bac:	00812821 	addu	a1,a0,at
    2bb0:	3c010000 	lui	at,0x0
    2bb4:	c43200b8 	lwc1	$f18,184(at)
    2bb8:	c6100050 	lwc1	$f16,80(s0)
    2bbc:	02002025 	move	a0,s0
    2bc0:	46128102 	mul.s	$f4,$f16,$f18
    2bc4:	44052000 	mfc1	a1,$f4
    2bc8:	0c000000 	jal	0 <EnFloormas_Init>
    2bcc:	00000000 	nop
    2bd0:	920c02dc 	lbu	t4,732(s0)
    2bd4:	2401000c 	li	at,12
    2bd8:	5581000b 	bnel	t4,at,2c08 <EnFloormas_Update+0x254>
    2bdc:	8fbf0024 	lw	ra,36(sp)
    2be0:	86020196 	lh	v0,406(s0)
    2be4:	240e0028 	li	t6,40
    2be8:	10400003 	beqz	v0,2bf8 <EnFloormas_Update+0x244>
    2bec:	244dffff 	addiu	t5,v0,-1
    2bf0:	a60d0196 	sh	t5,406(s0)
    2bf4:	86020196 	lh	v0,406(s0)
    2bf8:	54400003 	bnezl	v0,2c08 <EnFloormas_Update+0x254>
    2bfc:	8fbf0024 	lw	ra,36(sp)
    2c00:	a60e0196 	sh	t6,406(s0)
    2c04:	8fbf0024 	lw	ra,36(sp)
    2c08:	8fb00020 	lw	s0,32(sp)
    2c0c:	27bd0040 	addiu	sp,sp,64
    2c10:	03e00008 	jr	ra
    2c14:	00000000 	nop

00002c18 <EnFloormas_OverrideLimbDraw>:
    2c18:	24010001 	li	at,1
    2c1c:	afa40000 	sw	a0,0(sp)
    2c20:	14a10009 	bne	a1,at,2c48 <EnFloormas_OverrideLimbDraw+0x30>
    2c24:	afa60008 	sw	a2,8(sp)
    2c28:	8fae0014 	lw	t6,20(sp)
    2c2c:	c4e40008 	lwc1	$f4,8(a3)
    2c30:	85cf0198 	lh	t7,408(t6)
    2c34:	448f3000 	mtc1	t7,$f6
    2c38:	00000000 	nop
    2c3c:	46803220 	cvt.s.w	$f8,$f6
    2c40:	46082280 	add.s	$f10,$f4,$f8
    2c44:	e4ea0008 	swc1	$f10,8(a3)
    2c48:	03e00008 	jr	ra
    2c4c:	00001025 	move	v0,zero

00002c50 <EnFloormas_PostLimbDraw>:
    2c50:	27bdffe0 	addiu	sp,sp,-32
    2c54:	24010002 	li	at,2
    2c58:	afbf0014 	sw	ra,20(sp)
    2c5c:	afa40020 	sw	a0,32(sp)
    2c60:	afa60028 	sw	a2,40(sp)
    2c64:	14a10033 	bne	a1,at,2d34 <EnFloormas_PostLimbDraw+0xe4>
    2c68:	afa7002c 	sw	a3,44(sp)
    2c6c:	0c000000 	jal	0 <EnFloormas_Init>
    2c70:	00000000 	nop
    2c74:	3c0144c8 	lui	at,0x44c8
    2c78:	44816000 	mtc1	at,$f12
    2c7c:	3c01c42f 	lui	at,0xc42f
    2c80:	44817000 	mtc1	at,$f14
    2c84:	3c06c4d4 	lui	a2,0xc4d4
    2c88:	34c68000 	ori	a2,a2,0x8000
    2c8c:	0c000000 	jal	0 <EnFloormas_Init>
    2c90:	24070001 	li	a3,1
    2c94:	3c010000 	lui	at,0x0
    2c98:	c42c00bc 	lwc1	$f12,188(at)
    2c9c:	0c000000 	jal	0 <EnFloormas_Init>
    2ca0:	24050001 	li	a1,1
    2ca4:	3c010000 	lui	at,0x0
    2ca8:	c42c00c0 	lwc1	$f12,192(at)
    2cac:	0c000000 	jal	0 <EnFloormas_Init>
    2cb0:	24050001 	li	a1,1
    2cb4:	3c014000 	lui	at,0x4000
    2cb8:	44816000 	mtc1	at,$f12
    2cbc:	24070001 	li	a3,1
    2cc0:	44066000 	mfc1	a2,$f12
    2cc4:	0c000000 	jal	0 <EnFloormas_Init>
    2cc8:	46006386 	mov.s	$f14,$f12
    2ccc:	8fa70034 	lw	a3,52(sp)
    2cd0:	3c0fda38 	lui	t7,0xda38
    2cd4:	35ef0003 	ori	t7,t7,0x3
    2cd8:	8ce20000 	lw	v0,0(a3)
    2cdc:	3c050000 	lui	a1,0x0
    2ce0:	24a50000 	addiu	a1,a1,0
    2ce4:	244e0008 	addiu	t6,v0,8
    2ce8:	acee0000 	sw	t6,0(a3)
    2cec:	ac4f0000 	sw	t7,0(v0)
    2cf0:	8fb80020 	lw	t8,32(sp)
    2cf4:	240608fb 	li	a2,2299
    2cf8:	8f040000 	lw	a0,0(t8)
    2cfc:	0c000000 	jal	0 <EnFloormas_Init>
    2d00:	afa2001c 	sw	v0,28(sp)
    2d04:	8fa3001c 	lw	v1,28(sp)
    2d08:	8fa70034 	lw	a3,52(sp)
    2d0c:	3c090000 	lui	t1,0x0
    2d10:	ac620004 	sw	v0,4(v1)
    2d14:	8ce20000 	lw	v0,0(a3)
    2d18:	25290000 	addiu	t1,t1,0
    2d1c:	3c08de00 	lui	t0,0xde00
    2d20:	24590008 	addiu	t9,v0,8
    2d24:	acf90000 	sw	t9,0(a3)
    2d28:	ac490004 	sw	t1,4(v0)
    2d2c:	0c000000 	jal	0 <EnFloormas_Init>
    2d30:	ac480000 	sw	t0,0(v0)
    2d34:	8fbf0014 	lw	ra,20(sp)
    2d38:	27bd0020 	addiu	sp,sp,32
    2d3c:	03e00008 	jr	ra
    2d40:	00000000 	nop

00002d44 <EnFloormas_Draw>:
    2d44:	27bdffb0 	addiu	sp,sp,-80
    2d48:	afb10028 	sw	s1,40(sp)
    2d4c:	00a08825 	move	s1,a1
    2d50:	afbf002c 	sw	ra,44(sp)
    2d54:	afb00024 	sw	s0,36(sp)
    2d58:	8ca50000 	lw	a1,0(a1)
    2d5c:	00808025 	move	s0,a0
    2d60:	3c060000 	lui	a2,0x0
    2d64:	24c60014 	addiu	a2,a2,20
    2d68:	27a40038 	addiu	a0,sp,56
    2d6c:	2407090e 	li	a3,2318
    2d70:	0c000000 	jal	0 <EnFloormas_Init>
    2d74:	afa50048 	sw	a1,72(sp)
    2d78:	0c000000 	jal	0 <EnFloormas_Init>
    2d7c:	8e240000 	lw	a0,0(s1)
    2d80:	920e02dc 	lbu	t6,732(s0)
    2d84:	2401000c 	li	at,12
    2d88:	02202025 	move	a0,s1
    2d8c:	15c1000a 	bne	t6,at,2db8 <EnFloormas_Draw+0x74>
    2d90:	3c050000 	lui	a1,0x0
    2d94:	86060196 	lh	a2,406(s0)
    2d98:	24010028 	li	at,40
    2d9c:	24a500a4 	addiu	a1,a1,164
    2da0:	00c1001a 	div	zero,a2,at
    2da4:	00003010 	mfhi	a2
    2da8:	00063400 	sll	a2,a2,0x10
    2dac:	00063403 	sra	a2,a2,0x10
    2db0:	0c000000 	jal	0 <EnFloormas_Init>
    2db4:	24070028 	li	a3,40
    2db8:	8e050150 	lw	a1,336(s0)
    2dbc:	8e06016c 	lw	a2,364(s0)
    2dc0:	9207014e 	lbu	a3,334(s0)
    2dc4:	8fb90048 	lw	t9,72(sp)
    2dc8:	3c0f0000 	lui	t7,0x0
    2dcc:	3c180000 	lui	t8,0x0
    2dd0:	27180000 	addiu	t8,t8,0
    2dd4:	25ef0000 	addiu	t7,t7,0
    2dd8:	afaf0010 	sw	t7,16(sp)
    2ddc:	afb80014 	sw	t8,20(sp)
    2de0:	afb00018 	sw	s0,24(sp)
    2de4:	8f2802c0 	lw	t0,704(t9)
    2de8:	02202025 	move	a0,s1
    2dec:	0c000000 	jal	0 <EnFloormas_Init>
    2df0:	afa8001c 	sw	t0,28(sp)
    2df4:	8fa90048 	lw	t1,72(sp)
    2df8:	2401000c 	li	at,12
    2dfc:	ad2202c0 	sw	v0,704(t1)
    2e00:	920a02dc 	lbu	t2,732(s0)
    2e04:	15410003 	bne	t2,at,2e14 <EnFloormas_Draw+0xd0>
    2e08:	00000000 	nop
    2e0c:	0c000000 	jal	0 <EnFloormas_Init>
    2e10:	02202025 	move	a0,s1
    2e14:	3c060000 	lui	a2,0x0
    2e18:	24c60028 	addiu	a2,a2,40
    2e1c:	27a40038 	addiu	a0,sp,56
    2e20:	8e250000 	lw	a1,0(s1)
    2e24:	0c000000 	jal	0 <EnFloormas_Init>
    2e28:	24070924 	li	a3,2340
    2e2c:	8fbf002c 	lw	ra,44(sp)
    2e30:	8fb00024 	lw	s0,36(sp)
    2e34:	8fb10028 	lw	s1,40(sp)
    2e38:	03e00008 	jr	ra
    2e3c:	27bd0050 	addiu	sp,sp,80

00002e40 <EnFloormas_DrawHighlighted>:
    2e40:	27bdffb0 	addiu	sp,sp,-80
    2e44:	afb10028 	sw	s1,40(sp)
    2e48:	00a08825 	move	s1,a1
    2e4c:	afbf002c 	sw	ra,44(sp)
    2e50:	afb00024 	sw	s0,36(sp)
    2e54:	8ca50000 	lw	a1,0(a1)
    2e58:	00808025 	move	s0,a0
    2e5c:	3c060000 	lui	a2,0x0
    2e60:	24c6003c 	addiu	a2,a2,60
    2e64:	27a40038 	addiu	a0,sp,56
    2e68:	24070930 	li	a3,2352
    2e6c:	0c000000 	jal	0 <EnFloormas_Init>
    2e70:	afa50048 	sw	a1,72(sp)
    2e74:	0c000000 	jal	0 <EnFloormas_Init>
    2e78:	8e240000 	lw	a0,0(s1)
    2e7c:	920e02dc 	lbu	t6,732(s0)
    2e80:	2401000c 	li	at,12
    2e84:	02202025 	move	a0,s1
    2e88:	15c1000a 	bne	t6,at,2eb4 <EnFloormas_DrawHighlighted+0x74>
    2e8c:	3c050000 	lui	a1,0x0
    2e90:	86060196 	lh	a2,406(s0)
    2e94:	24010028 	li	at,40
    2e98:	24a500a4 	addiu	a1,a1,164
    2e9c:	00c1001a 	div	zero,a2,at
    2ea0:	00003010 	mfhi	a2
    2ea4:	00063400 	sll	a2,a2,0x10
    2ea8:	00063403 	sra	a2,a2,0x10
    2eac:	0c000000 	jal	0 <EnFloormas_Init>
    2eb0:	24070028 	li	a3,40
    2eb4:	8e050150 	lw	a1,336(s0)
    2eb8:	8e06016c 	lw	a2,364(s0)
    2ebc:	9207014e 	lbu	a3,334(s0)
    2ec0:	8fb90048 	lw	t9,72(sp)
    2ec4:	3c0f0000 	lui	t7,0x0
    2ec8:	3c180000 	lui	t8,0x0
    2ecc:	27180000 	addiu	t8,t8,0
    2ed0:	25ef0000 	addiu	t7,t7,0
    2ed4:	afaf0010 	sw	t7,16(sp)
    2ed8:	afb80014 	sw	t8,20(sp)
    2edc:	afb00018 	sw	s0,24(sp)
    2ee0:	8f2802d0 	lw	t0,720(t9)
    2ee4:	02202025 	move	a0,s1
    2ee8:	0c000000 	jal	0 <EnFloormas_Init>
    2eec:	afa8001c 	sw	t0,28(sp)
    2ef0:	8fa90048 	lw	t1,72(sp)
    2ef4:	2401000c 	li	at,12
    2ef8:	ad2202d0 	sw	v0,720(t1)
    2efc:	920a02dc 	lbu	t2,732(s0)
    2f00:	15410003 	bne	t2,at,2f10 <EnFloormas_DrawHighlighted+0xd0>
    2f04:	00000000 	nop
    2f08:	0c000000 	jal	0 <EnFloormas_Init>
    2f0c:	02202025 	move	a0,s1
    2f10:	3c060000 	lui	a2,0x0
    2f14:	24c60050 	addiu	a2,a2,80
    2f18:	27a40038 	addiu	a0,sp,56
    2f1c:	8e250000 	lw	a1,0(s1)
    2f20:	0c000000 	jal	0 <EnFloormas_Init>
    2f24:	24070946 	li	a3,2374
    2f28:	8fbf002c 	lw	ra,44(sp)
    2f2c:	8fb00024 	lw	s0,36(sp)
    2f30:	8fb10028 	lw	s1,40(sp)
    2f34:	03e00008 	jr	ra
    2f38:	27bd0050 	addiu	sp,sp,80
    2f3c:	00000000 	nop
