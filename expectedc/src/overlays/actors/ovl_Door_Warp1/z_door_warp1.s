
build/src/overlays/actors/ovl_Door_Warp1/z_door_warp1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80998780>:
       0:	03e00008 	jr	ra
       4:	ac8501c0 	sw	a1,448(a0)

00000008 <DoorWarp1_Init>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	afb10028 	sw	s1,40(sp)
      10:	44802000 	mtc1	zero,$f4
      14:	00a08825 	move	s1,a1
      18:	afbf002c 	sw	ra,44(sp)
      1c:	afb00024 	sw	s0,36(sp)
      20:	3c050000 	lui	a1,0x0
      24:	00808025 	move	s0,a0
      28:	a48001b8 	sh	zero,440(a0)
      2c:	24a50000 	addiu	a1,a1,0
      30:	0c000000 	jal	0 <func_80998780>
      34:	e48401b4 	swc1	$f4,436(a0)
      38:	44800000 	mtc1	zero,$f0
      3c:	260400b4 	addiu	a0,s0,180
      40:	00003025 	move	a2,zero
      44:	44050000 	mfc1	a1,$f0
      48:	44070000 	mfc1	a3,$f0
      4c:	0c000000 	jal	0 <func_80998780>
      50:	00000000 	nop
      54:	8605001c 	lh	a1,28(s0)
      58:	24010002 	li	at,2
      5c:	10a1003e 	beq	a1,at,158 <DoorWarp1_Init+0x150>
      60:	2401fffe 	li	at,-2
      64:	10a1003c 	beq	a1,at,158 <DoorWarp1_Init+0x150>
      68:	24010004 	li	at,4
      6c:	10a1003a 	beq	a1,at,158 <DoorWarp1_Init+0x150>
      70:	24010006 	li	at,6
      74:	10a10038 	beq	a1,at,158 <DoorWarp1_Init+0x150>
      78:	260401c8 	addiu	a0,s0,456
      7c:	c6060024 	lwc1	$f6,36(s0)
      80:	c60a0028 	lwc1	$f10,40(s0)
      84:	c612002c 	lwc1	$f18,44(s0)
      88:	4600320d 	trunc.w.s	$f8,$f6
      8c:	afa40030 	sw	a0,48(sp)
      90:	afa0001c 	sw	zero,28(sp)
      94:	4600540d 	trunc.w.s	$f16,$f10
      98:	44054000 	mfc1	a1,$f8
      9c:	afa00018 	sw	zero,24(sp)
      a0:	4600910d 	trunc.w.s	$f4,$f18
      a4:	44068000 	mfc1	a2,$f16
      a8:	00052c00 	sll	a1,a1,0x10
      ac:	00052c03 	sra	a1,a1,0x10
      b0:	44072000 	mfc1	a3,$f4
      b4:	00063400 	sll	a2,a2,0x10
      b8:	00063403 	sra	a2,a2,0x10
      bc:	00073c00 	sll	a3,a3,0x10
      c0:	00073c03 	sra	a3,a3,0x10
      c4:	afa00014 	sw	zero,20(sp)
      c8:	0c000000 	jal	0 <func_80998780>
      cc:	afa00010 	sw	zero,16(sp)
      d0:	262507a8 	addiu	a1,s1,1960
      d4:	afa50034 	sw	a1,52(sp)
      d8:	02202025 	move	a0,s1
      dc:	0c000000 	jal	0 <func_80998780>
      e0:	8fa60030 	lw	a2,48(sp)
      e4:	c6060024 	lwc1	$f6,36(s0)
      e8:	c60a0028 	lwc1	$f10,40(s0)
      ec:	c612002c 	lwc1	$f18,44(s0)
      f0:	4600320d 	trunc.w.s	$f8,$f6
      f4:	ae0201c4 	sw	v0,452(s0)
      f8:	260401dc 	addiu	a0,s0,476
      fc:	4600540d 	trunc.w.s	$f16,$f10
     100:	44054000 	mfc1	a1,$f8
     104:	afa40030 	sw	a0,48(sp)
     108:	4600910d 	trunc.w.s	$f4,$f18
     10c:	44068000 	mfc1	a2,$f16
     110:	00052c00 	sll	a1,a1,0x10
     114:	00052c03 	sra	a1,a1,0x10
     118:	44072000 	mfc1	a3,$f4
     11c:	00063400 	sll	a2,a2,0x10
     120:	00063403 	sra	a2,a2,0x10
     124:	00073c00 	sll	a3,a3,0x10
     128:	00073c03 	sra	a3,a3,0x10
     12c:	afa0001c 	sw	zero,28(sp)
     130:	afa00018 	sw	zero,24(sp)
     134:	afa00014 	sw	zero,20(sp)
     138:	0c000000 	jal	0 <func_80998780>
     13c:	afa00010 	sw	zero,16(sp)
     140:	02202025 	move	a0,s1
     144:	8fa50034 	lw	a1,52(sp)
     148:	0c000000 	jal	0 <func_80998780>
     14c:	8fa60030 	lw	a2,48(sp)
     150:	ae0201d8 	sw	v0,472(s0)
     154:	8605001c 	lh	a1,28(s0)
     158:	3c040000 	lui	a0,0x0
     15c:	0c000000 	jal	0 <func_80998780>
     160:	24840000 	addiu	a0,a0,0
     164:	02002025 	move	a0,s0
     168:	0c000000 	jal	0 <func_80998780>
     16c:	02202825 	move	a1,s1
     170:	8fbf002c 	lw	ra,44(sp)
     174:	8fb00024 	lw	s0,36(sp)
     178:	8fb10028 	lw	s1,40(sp)
     17c:	03e00008 	jr	ra
     180:	27bd0040 	addiu	sp,sp,64

00000184 <DoorWarp1_Destroy>:
     184:	27bdffd8 	addiu	sp,sp,-40
     188:	afa40028 	sw	a0,40(sp)
     18c:	8fae0028 	lw	t6,40(sp)
     190:	afbf0014 	sw	ra,20(sp)
     194:	00a03825 	move	a3,a1
     198:	00a02025 	move	a0,a1
     19c:	24a507a8 	addiu	a1,a1,1960
     1a0:	8dc601c4 	lw	a2,452(t6)
     1a4:	afa7002c 	sw	a3,44(sp)
     1a8:	0c000000 	jal	0 <func_80998780>
     1ac:	afa50018 	sw	a1,24(sp)
     1b0:	8faf0028 	lw	t7,40(sp)
     1b4:	8fa50018 	lw	a1,24(sp)
     1b8:	8fa4002c 	lw	a0,44(sp)
     1bc:	0c000000 	jal	0 <func_80998780>
     1c0:	8de601d8 	lw	a2,472(t7)
     1c4:	8fa7002c 	lw	a3,44(sp)
     1c8:	00002025 	move	a0,zero
     1cc:	3c050001 	lui	a1,0x1
     1d0:	0004c040 	sll	t8,a0,0x1
     1d4:	00f8c821 	addu	t9,a3,t8
     1d8:	03251021 	addu	v0,t9,a1
     1dc:	a4400ab6 	sh	zero,2742(v0)
     1e0:	84430ab6 	lh	v1,2742(v0)
     1e4:	24840001 	addiu	a0,a0,1
     1e8:	308400ff 	andi	a0,a0,0xff
     1ec:	28810003 	slti	at,a0,3
     1f0:	a4430abc 	sh	v1,2748(v0)
     1f4:	1420fff6 	bnez	at,1d0 <DoorWarp1_Destroy+0x4c>
     1f8:	a4430ab0 	sh	v1,2736(v0)
     1fc:	8fbf0014 	lw	ra,20(sp)
     200:	27bd0028 	addiu	sp,sp,40
     204:	03e00008 	jr	ra
     208:	00000000 	nop

0000020c <func_8099898C>:
     20c:	27bdffc8 	addiu	sp,sp,-56
     210:	afbf002c 	sw	ra,44(sp)
     214:	afb00028 	sw	s0,40(sp)
     218:	afa5003c 	sw	a1,60(sp)
     21c:	8caf1c44 	lw	t7,7236(a1)
     220:	3c013f80 	lui	at,0x3f80
     224:	44816000 	mtc1	at,$f12
     228:	afaf0034 	sw	t7,52(sp)
     22c:	2418ff74 	li	t8,-140
     230:	2419ffb0 	li	t9,-80
     234:	24020064 	li	v0,100
     238:	a48001ac 	sh	zero,428(a0)
     23c:	a49801ae 	sh	t8,430(a0)
     240:	a49901b0 	sh	t9,432(a0)
     244:	3c010000 	lui	at,0x0
     248:	a4220000 	sh	v0,0(at)
     24c:	8488001c 	lh	t0,28(a0)
     250:	44800000 	mtc1	zero,$f0
     254:	00808025 	move	s0,a0
     258:	2509fffc 	addiu	t1,t0,-4
     25c:	2d210007 	sltiu	at,t1,7
     260:	e48c01bc 	swc1	$f12,444(a0)
     264:	e48001a0 	swc1	$f0,416(a0)
     268:	e48001a4 	swc1	$f0,420(a0)
     26c:	1020001b 	beqz	at,2dc <L80998A5C>
     270:	e48001a8 	swc1	$f0,424(a0)
     274:	00094880 	sll	t1,t1,0x2
     278:	3c010000 	lui	at,0x0
     27c:	00290821 	addu	at,at,t1
     280:	8c290000 	lw	t1,0(at)
     284:	01200008 	jr	t1
     288:	00000000 	nop

0000028c <L80998A0C>:
     28c:	3c010000 	lui	at,0x0
     290:	c4240000 	lwc1	$f4,0(at)
     294:	3c010000 	lui	at,0x0
     298:	e6040194 	swc1	$f4,404(s0)
     29c:	c4260000 	lwc1	$f6,0(at)
     2a0:	10000012 	b	2ec <L80998A5C+0x10>
     2a4:	e6060198 	swc1	$f6,408(s0)

000002a8 <L80998A28>:
     2a8:	e6000194 	swc1	$f0,404(s0)
     2ac:	1000000f 	b	2ec <L80998A5C+0x10>
     2b0:	e6000198 	swc1	$f0,408(s0)

000002b4 <L80998A34>:
     2b4:	3c010000 	lui	at,0x0
     2b8:	c4220000 	lwc1	$f2,0(at)
     2bc:	240a0078 	li	t2,120
     2c0:	240b00e6 	li	t3,230
     2c4:	a60201ac 	sh	v0,428(s0)
     2c8:	a60a01ae 	sh	t2,430(s0)
     2cc:	a60b01b0 	sh	t3,432(s0)
     2d0:	e6020194 	swc1	$f2,404(s0)
     2d4:	10000005 	b	2ec <L80998A5C+0x10>
     2d8:	e6020198 	swc1	$f2,408(s0)

000002dc <L80998A5C>:
     2dc:	3c010000 	lui	at,0x0
     2e0:	c4220000 	lwc1	$f2,0(at)
     2e4:	e6020194 	swc1	$f2,404(s0)
     2e8:	e6020198 	swc1	$f2,408(s0)
     2ec:	8603001c 	lh	v1,28(s0)
     2f0:	e600019c 	swc1	$f0,412(s0)
     2f4:	e60c00bc 	swc1	$f12,188(s0)
     2f8:	246cffff 	addiu	t4,v1,-1
     2fc:	2d81000a 	sltiu	at,t4,10
     300:	10200007 	beqz	at,320 <L80998AA0>
     304:	a6000192 	sh	zero,402(s0)
     308:	000c6080 	sll	t4,t4,0x2
     30c:	3c010000 	lui	at,0x0
     310:	002c0821 	addu	at,at,t4
     314:	8c2c0000 	lw	t4,0(at)
     318:	01800008 	jr	t4
     31c:	00000000 	nop

00000320 <L80998AA0>:
     320:	c6080024 	lwc1	$f8,36(s0)
     324:	c6100028 	lwc1	$f16,40(s0)
     328:	c604002c 	lwc1	$f4,44(s0)
     32c:	4600428d 	trunc.w.s	$f10,$f8
     330:	241800c8 	li	t8,200
     334:	241900ff 	li	t9,255
     338:	4600848d 	trunc.w.s	$f18,$f16
     33c:	44055000 	mfc1	a1,$f10
     340:	240800ff 	li	t0,255
     344:	4600218d 	trunc.w.s	$f6,$f4
     348:	44069000 	mfc1	a2,$f18
     34c:	240900ff 	li	t1,255
     350:	00052c00 	sll	a1,a1,0x10
     354:	44073000 	mfc1	a3,$f6
     358:	00063400 	sll	a2,a2,0x10
     35c:	00063403 	sra	a2,a2,0x10
     360:	00073c00 	sll	a3,a3,0x10
     364:	00073c03 	sra	a3,a3,0x10
     368:	00052c03 	sra	a1,a1,0x10
     36c:	afa9001c 	sw	t1,28(sp)
     370:	afa80018 	sw	t0,24(sp)
     374:	afb90014 	sw	t9,20(sp)
     378:	afb80010 	sw	t8,16(sp)
     37c:	0c000000 	jal	0 <func_80998780>
     380:	260401c8 	addiu	a0,s0,456
     384:	c6080024 	lwc1	$f8,36(s0)
     388:	c6100028 	lwc1	$f16,40(s0)
     38c:	c604002c 	lwc1	$f4,44(s0)
     390:	4600428d 	trunc.w.s	$f10,$f8
     394:	240d00c8 	li	t5,200
     398:	240e00ff 	li	t6,255
     39c:	4600848d 	trunc.w.s	$f18,$f16
     3a0:	44055000 	mfc1	a1,$f10
     3a4:	240f00ff 	li	t7,255
     3a8:	4600218d 	trunc.w.s	$f6,$f4
     3ac:	44069000 	mfc1	a2,$f18
     3b0:	241800ff 	li	t8,255
     3b4:	00052c00 	sll	a1,a1,0x10
     3b8:	44073000 	mfc1	a3,$f6
     3bc:	00063400 	sll	a2,a2,0x10
     3c0:	00063403 	sra	a2,a2,0x10
     3c4:	00073c00 	sll	a3,a3,0x10
     3c8:	00073c03 	sra	a3,a3,0x10
     3cc:	00052c03 	sra	a1,a1,0x10
     3d0:	afb8001c 	sw	t8,28(sp)
     3d4:	afaf0018 	sw	t7,24(sp)
     3d8:	afae0014 	sw	t6,20(sp)
     3dc:	afad0010 	sw	t5,16(sp)
     3e0:	0c000000 	jal	0 <func_80998780>
     3e4:	260401dc 	addiu	a0,s0,476
     3e8:	8603001c 	lh	v1,28(s0)

000003ec <L80998B6C>:
     3ec:	24010001 	li	at,1
     3f0:	10610008 	beq	v1,at,414 <L80998B6C+0x28>
     3f4:	02002025 	move	a0,s0
     3f8:	24010006 	li	at,6
     3fc:	1061000a 	beq	v1,at,428 <L80998B6C+0x3c>
     400:	24010007 	li	at,7
     404:	10610035 	beq	v1,at,4dc <L80998B6C+0xf0>
     408:	02002025 	move	a0,s0
     40c:	10000038 	b	4f0 <L80998B6C+0x104>
     410:	02002025 	move	a0,s0
     414:	3c050000 	lui	a1,0x0
     418:	0c000000 	jal	0 <func_80998780>
     41c:	24a50000 	addiu	a1,a1,0
     420:	10000037 	b	500 <L80998B6C+0x114>
     424:	8fbf002c 	lw	ra,44(sp)
     428:	3c030000 	lui	v1,0x0
     42c:	24630000 	addiu	v1,v1,0
     430:	8c620000 	lw	v0,0(v1)
     434:	24010608 	li	at,1544
     438:	8fa8003c 	lw	t0,60(sp)
     43c:	1041000d 	beq	v0,at,474 <L80998B6C+0x88>
     440:	24010564 	li	at,1380
     444:	1041000b 	beq	v0,at,474 <L80998B6C+0x88>
     448:	2401060c 	li	at,1548
     44c:	10410009 	beq	v0,at,474 <L80998B6C+0x88>
     450:	24010610 	li	at,1552
     454:	10410007 	beq	v0,at,474 <L80998B6C+0x88>
     458:	24010580 	li	at,1408
     45c:	50410006 	beql	v0,at,478 <L80998B6C+0x8c>
     460:	8d091c44 	lw	t1,7236(t0)
     464:	8c791360 	lw	t9,4960(v1)
     468:	2b210004 	slti	at,t9,4
     46c:	14200007 	bnez	at,48c <L80998B6C+0xa0>
     470:	00000000 	nop
     474:	8d091c44 	lw	t1,7236(t0)
     478:	24010200 	li	at,512
     47c:	852a001c 	lh	t2,28(t1)
     480:	314b0f00 	andi	t3,t2,0xf00
     484:	51610004 	beql	t3,at,498 <L80998B6C+0xac>
     488:	8fa40034 	lw	a0,52(sp)
     48c:	0c000000 	jal	0 <func_80998780>
     490:	02002025 	move	a0,s0
     494:	8fa40034 	lw	a0,52(sp)
     498:	0c000000 	jal	0 <func_80998780>
     49c:	02002825 	move	a1,s0
     4a0:	3c0142c8 	lui	at,0x42c8
     4a4:	44814000 	mtc1	at,$f8
     4a8:	00000000 	nop
     4ac:	4600403c 	c.lt.s	$f8,$f0
     4b0:	00000000 	nop
     4b4:	45000003 	bc1f	4c4 <L80998B6C+0xd8>
     4b8:	00000000 	nop
     4bc:	0c000000 	jal	0 <func_80998780>
     4c0:	02002025 	move	a0,s0
     4c4:	3c050000 	lui	a1,0x0
     4c8:	24a50000 	addiu	a1,a1,0
     4cc:	0c000000 	jal	0 <func_80998780>
     4d0:	02002025 	move	a0,s0
     4d4:	1000000a 	b	500 <L80998B6C+0x114>
     4d8:	8fbf002c 	lw	ra,44(sp)
     4dc:	3c050000 	lui	a1,0x0
     4e0:	0c000000 	jal	0 <func_80998780>
     4e4:	24a50000 	addiu	a1,a1,0
     4e8:	10000005 	b	500 <L80998B6C+0x114>
     4ec:	8fbf002c 	lw	ra,44(sp)
     4f0:	3c050000 	lui	a1,0x0
     4f4:	0c000000 	jal	0 <func_80998780>
     4f8:	24a50000 	addiu	a1,a1,0
     4fc:	8fbf002c 	lw	ra,44(sp)
     500:	8fb00028 	lw	s0,40(sp)
     504:	27bd0038 	addiu	sp,sp,56
     508:	03e00008 	jr	ra
     50c:	00000000 	nop

00000510 <func_80998C90>:
     510:	27bdffc8 	addiu	sp,sp,-56
     514:	afb00028 	sw	s0,40(sp)
     518:	00808025 	move	s0,a0
     51c:	afa5003c 	sw	a1,60(sp)
     520:	00a02025 	move	a0,a1
     524:	afbf002c 	sw	ra,44(sp)
     528:	2605014c 	addiu	a1,s0,332
     52c:	3c060600 	lui	a2,0x600
     530:	3c070600 	lui	a3,0x600
     534:	24e71374 	addiu	a3,a3,4980
     538:	24c62ca8 	addiu	a2,a2,11432
     53c:	afa50034 	sw	a1,52(sp)
     540:	afa00010 	sw	zero,16(sp)
     544:	afa00014 	sw	zero,20(sp)
     548:	0c000000 	jal	0 <func_80998780>
     54c:	afa00018 	sw	zero,24(sp)
     550:	3c013f80 	lui	at,0x3f80
     554:	44811000 	mtc1	at,$f2
     558:	3c014220 	lui	at,0x4220
     55c:	44812000 	mtc1	at,$f4
     560:	3c050600 	lui	a1,0x600
     564:	240e0002 	li	t6,2
     568:	240f0001 	li	t7,1
     56c:	44061000 	mfc1	a2,$f2
     570:	44071000 	mfc1	a3,$f2
     574:	afaf001c 	sw	t7,28(sp)
     578:	afae0014 	sw	t6,20(sp)
     57c:	24a51374 	addiu	a1,a1,4980
     580:	8fa40034 	lw	a0,52(sp)
     584:	e7a20010 	swc1	$f2,16(sp)
     588:	0c000000 	jal	0 <func_80998780>
     58c:	e7a40018 	swc1	$f4,24(sp)
     590:	3c013f80 	lui	at,0x3f80
     594:	44811000 	mtc1	at,$f2
     598:	3c010000 	lui	at,0x0
     59c:	c42c0000 	lwc1	$f12,0(at)
     5a0:	2418ff74 	li	t8,-140
     5a4:	2419ffb0 	li	t9,-80
     5a8:	a60001ac 	sh	zero,428(s0)
     5ac:	a61801ae 	sh	t8,430(s0)
     5b0:	a61901b0 	sh	t9,432(s0)
     5b4:	3c010000 	lui	at,0x0
     5b8:	240800a0 	li	t0,160
     5bc:	a4280000 	sh	t0,0(at)
     5c0:	3c01c3c8 	lui	at,0xc3c8
     5c4:	44813000 	mtc1	at,$f6
     5c8:	c604002c 	lwc1	$f4,44(s0)
     5cc:	c6100028 	lwc1	$f16,40(s0)
     5d0:	c6080024 	lwc1	$f8,36(s0)
     5d4:	44800000 	mtc1	zero,$f0
     5d8:	e60600bc 	swc1	$f6,188(s0)
     5dc:	4600218d 	trunc.w.s	$f6,$f4
     5e0:	a6000192 	sh	zero,402(s0)
     5e4:	e60201bc 	swc1	$f2,444(s0)
     5e8:	4600848d 	trunc.w.s	$f18,$f16
     5ec:	44073000 	mfc1	a3,$f6
     5f0:	e60c0194 	swc1	$f12,404(s0)
     5f4:	4600428d 	trunc.w.s	$f10,$f8
     5f8:	44069000 	mfc1	a2,$f18
     5fc:	e60c0198 	swc1	$f12,408(s0)
     600:	e60001a0 	swc1	$f0,416(s0)
     604:	44055000 	mfc1	a1,$f10
     608:	e60001a4 	swc1	$f0,420(s0)
     60c:	e60001a8 	swc1	$f0,424(s0)
     610:	e600019c 	swc1	$f0,412(s0)
     614:	240c00c8 	li	t4,200
     618:	240d00ff 	li	t5,255
     61c:	240e00ff 	li	t6,255
     620:	240f00ff 	li	t7,255
     624:	00073c00 	sll	a3,a3,0x10
     628:	00063400 	sll	a2,a2,0x10
     62c:	00052c00 	sll	a1,a1,0x10
     630:	00052c03 	sra	a1,a1,0x10
     634:	00063403 	sra	a2,a2,0x10
     638:	00073c03 	sra	a3,a3,0x10
     63c:	afaf001c 	sw	t7,28(sp)
     640:	afae0018 	sw	t6,24(sp)
     644:	afad0014 	sw	t5,20(sp)
     648:	afac0010 	sw	t4,16(sp)
     64c:	0c000000 	jal	0 <func_80998780>
     650:	260401c8 	addiu	a0,s0,456
     654:	c6080024 	lwc1	$f8,36(s0)
     658:	c6100028 	lwc1	$f16,40(s0)
     65c:	c604002c 	lwc1	$f4,44(s0)
     660:	4600428d 	trunc.w.s	$f10,$f8
     664:	240900c8 	li	t1,200
     668:	240a00ff 	li	t2,255
     66c:	4600848d 	trunc.w.s	$f18,$f16
     670:	44055000 	mfc1	a1,$f10
     674:	240b00ff 	li	t3,255
     678:	4600218d 	trunc.w.s	$f6,$f4
     67c:	44069000 	mfc1	a2,$f18
     680:	240c00ff 	li	t4,255
     684:	00052c00 	sll	a1,a1,0x10
     688:	44073000 	mfc1	a3,$f6
     68c:	00063400 	sll	a2,a2,0x10
     690:	00063403 	sra	a2,a2,0x10
     694:	00073c00 	sll	a3,a3,0x10
     698:	00073c03 	sra	a3,a3,0x10
     69c:	00052c03 	sra	a1,a1,0x10
     6a0:	afac001c 	sw	t4,28(sp)
     6a4:	afab0018 	sw	t3,24(sp)
     6a8:	afaa0014 	sw	t2,20(sp)
     6ac:	afa90010 	sw	t1,16(sp)
     6b0:	0c000000 	jal	0 <func_80998780>
     6b4:	260401dc 	addiu	a0,s0,476
     6b8:	3c050000 	lui	a1,0x0
     6bc:	24a50000 	addiu	a1,a1,0
     6c0:	0c000000 	jal	0 <func_80998780>
     6c4:	02002025 	move	a0,s0
     6c8:	8fbf002c 	lw	ra,44(sp)
     6cc:	8fb00028 	lw	s0,40(sp)
     6d0:	27bd0038 	addiu	sp,sp,56
     6d4:	03e00008 	jr	ra
     6d8:	00000000 	nop

000006dc <func_80998E5C>:
     6dc:	27bdffc0 	addiu	sp,sp,-64
     6e0:	afb00024 	sw	s0,36(sp)
     6e4:	00808025 	move	s0,a0
     6e8:	afb10028 	sw	s1,40(sp)
     6ec:	00a08825 	move	s1,a1
     6f0:	00a02025 	move	a0,a1
     6f4:	afbf002c 	sw	ra,44(sp)
     6f8:	2605014c 	addiu	a1,s0,332
     6fc:	3c060600 	lui	a2,0x600
     700:	3c070600 	lui	a3,0x600
     704:	24e71374 	addiu	a3,a3,4980
     708:	24c62ca8 	addiu	a2,a2,11432
     70c:	afa50034 	sw	a1,52(sp)
     710:	afa00010 	sw	zero,16(sp)
     714:	afa00014 	sw	zero,20(sp)
     718:	0c000000 	jal	0 <func_80998780>
     71c:	afa00018 	sw	zero,24(sp)
     720:	3c040600 	lui	a0,0x600
     724:	0c000000 	jal	0 <func_80998780>
     728:	24841374 	addiu	a0,a0,4980
     72c:	3c040600 	lui	a0,0x600
     730:	24841374 	addiu	a0,a0,4980
     734:	0c000000 	jal	0 <func_80998780>
     738:	a7a2003a 	sh	v0,58(sp)
     73c:	87ae003a 	lh	t6,58(sp)
     740:	44823000 	mtc1	v0,$f6
     744:	44800000 	mtc1	zero,$f0
     748:	448e2000 	mtc1	t6,$f4
     74c:	46803220 	cvt.s.w	$f8,$f6
     750:	3c050600 	lui	a1,0x600
     754:	240f0002 	li	t7,2
     758:	24180001 	li	t8,1
     75c:	afb8001c 	sw	t8,28(sp)
     760:	46802120 	cvt.s.w	$f4,$f4
     764:	afaf0014 	sw	t7,20(sp)
     768:	24a51374 	addiu	a1,a1,4980
     76c:	e7a80010 	swc1	$f8,16(sp)
     770:	8fa40034 	lw	a0,52(sp)
     774:	24060000 	li	a2,0
     778:	44072000 	mfc1	a3,$f4
     77c:	0c000000 	jal	0 <func_80998780>
     780:	e7a00018 	swc1	$f0,24(sp)
     784:	3c040600 	lui	a0,0x600
     788:	0c000000 	jal	0 <func_80998780>
     78c:	24841374 	addiu	a0,a0,4980
     790:	3c010000 	lui	at,0x0
     794:	c4220000 	lwc1	$f2,0(at)
     798:	44825000 	mtc1	v0,$f10
     79c:	44800000 	mtc1	zero,$f0
     7a0:	3c013f80 	lui	at,0x3f80
     7a4:	46805420 	cvt.s.w	$f16,$f10
     7a8:	44819000 	mtc1	at,$f18
     7ac:	3c014448 	lui	at,0x4448
     7b0:	44812000 	mtc1	at,$f4
     7b4:	2419000a 	li	t9,10
     7b8:	24080078 	li	t0,120
     7bc:	240900e6 	li	t1,230
     7c0:	e6100164 	swc1	$f16,356(s0)
     7c4:	a61901ac 	sh	t9,428(s0)
     7c8:	a60801ae 	sh	t0,430(s0)
     7cc:	a60901b0 	sh	t1,432(s0)
     7d0:	a6000192 	sh	zero,402(s0)
     7d4:	00002025 	move	a0,zero
     7d8:	2406ff01 	li	a2,-255
     7dc:	3c050001 	lui	a1,0x1
     7e0:	e6020194 	swc1	$f2,404(s0)
     7e4:	e6020198 	swc1	$f2,408(s0)
     7e8:	e60001a0 	swc1	$f0,416(s0)
     7ec:	e60001a4 	swc1	$f0,420(s0)
     7f0:	e60001a8 	swc1	$f0,424(s0)
     7f4:	e600019c 	swc1	$f0,412(s0)
     7f8:	e61201bc 	swc1	$f18,444(s0)
     7fc:	e60400bc 	swc1	$f4,188(s0)
     800:	00045040 	sll	t2,a0,0x1
     804:	022a5821 	addu	t3,s1,t2
     808:	01651021 	addu	v0,t3,a1
     80c:	24840001 	addiu	a0,a0,1
     810:	a4460ab6 	sh	a2,2742(v0)
     814:	84430ab6 	lh	v1,2742(v0)
     818:	00042400 	sll	a0,a0,0x10
     81c:	00042403 	sra	a0,a0,0x10
     820:	28810003 	slti	at,a0,3
     824:	a4430abc 	sh	v1,2748(v0)
     828:	1420fff5 	bnez	at,800 <func_80998E5C+0x124>
     82c:	a4430ab0 	sh	v1,2736(v0)
     830:	3c010001 	lui	at,0x1
     834:	00310821 	addu	at,at,s1
     838:	240cfe0c 	li	t4,-500
     83c:	a42c0ac2 	sh	t4,2754(at)
     840:	240d001e 	li	t5,30
     844:	240e0fa0 	li	t6,4000
     848:	3c050000 	lui	a1,0x0
     84c:	a60d0192 	sh	t5,402(s0)
     850:	a60e01b8 	sh	t6,440(s0)
     854:	24a50000 	addiu	a1,a1,0
     858:	0c000000 	jal	0 <func_80998780>
     85c:	02002025 	move	a0,s0
     860:	8fbf002c 	lw	ra,44(sp)
     864:	8fb00024 	lw	s0,36(sp)
     868:	8fb10028 	lw	s1,40(sp)
     86c:	03e00008 	jr	ra
     870:	27bd0040 	addiu	sp,sp,64

00000874 <func_80998FF4>:
     874:	27bdffc0 	addiu	sp,sp,-64
     878:	afb00028 	sw	s0,40(sp)
     87c:	00808025 	move	s0,a0
     880:	afa50044 	sw	a1,68(sp)
     884:	00a02025 	move	a0,a1
     888:	afbf002c 	sw	ra,44(sp)
     88c:	2605014c 	addiu	a1,s0,332
     890:	3c060600 	lui	a2,0x600
     894:	3c070600 	lui	a3,0x600
     898:	24e71374 	addiu	a3,a3,4980
     89c:	24c62ca8 	addiu	a2,a2,11432
     8a0:	afa50034 	sw	a1,52(sp)
     8a4:	afa00010 	sw	zero,16(sp)
     8a8:	afa00014 	sw	zero,20(sp)
     8ac:	0c000000 	jal	0 <func_80998780>
     8b0:	afa00018 	sw	zero,24(sp)
     8b4:	3c040600 	lui	a0,0x600
     8b8:	0c000000 	jal	0 <func_80998780>
     8bc:	24841374 	addiu	a0,a0,4980
     8c0:	3c040600 	lui	a0,0x600
     8c4:	24841374 	addiu	a0,a0,4980
     8c8:	0c000000 	jal	0 <func_80998780>
     8cc:	a7a2003c 	sh	v0,60(sp)
     8d0:	87ae003c 	lh	t6,60(sp)
     8d4:	44823000 	mtc1	v0,$f6
     8d8:	44800000 	mtc1	zero,$f0
     8dc:	448e2000 	mtc1	t6,$f4
     8e0:	46803220 	cvt.s.w	$f8,$f6
     8e4:	3c050600 	lui	a1,0x600
     8e8:	240f0002 	li	t7,2
     8ec:	24180001 	li	t8,1
     8f0:	afb8001c 	sw	t8,28(sp)
     8f4:	46802120 	cvt.s.w	$f4,$f4
     8f8:	afaf0014 	sw	t7,20(sp)
     8fc:	24a51374 	addiu	a1,a1,4980
     900:	e7a80010 	swc1	$f8,16(sp)
     904:	8fa40034 	lw	a0,52(sp)
     908:	24060000 	li	a2,0
     90c:	44072000 	mfc1	a3,$f4
     910:	0c000000 	jal	0 <func_80998780>
     914:	e7a00018 	swc1	$f0,24(sp)
     918:	3c040600 	lui	a0,0x600
     91c:	0c000000 	jal	0 <func_80998780>
     920:	24841374 	addiu	a0,a0,4980
     924:	3c013f80 	lui	at,0x3f80
     928:	44811000 	mtc1	at,$f2
     92c:	3c010000 	lui	at,0x0
     930:	c42c0000 	lwc1	$f12,0(at)
     934:	44825000 	mtc1	v0,$f10
     938:	44800000 	mtc1	zero,$f0
     93c:	3c013f80 	lui	at,0x3f80
     940:	46805420 	cvt.s.w	$f16,$f10
     944:	44819000 	mtc1	at,$f18
     948:	3c014448 	lui	at,0x4448
     94c:	44812000 	mtc1	at,$f4
     950:	24190078 	li	t9,120
     954:	240800e6 	li	t0,230
     958:	240900c8 	li	t1,200
     95c:	240a0fa0 	li	t2,4000
     960:	e6100164 	swc1	$f16,356(s0)
     964:	a61901ae 	sh	t9,430(s0)
     968:	a60801b0 	sh	t0,432(s0)
     96c:	a6090192 	sh	t1,402(s0)
     970:	a60a01b8 	sh	t2,440(s0)
     974:	3c0b0000 	lui	t3,0x0
     978:	e6020050 	swc1	$f2,80(s0)
     97c:	e6020054 	swc1	$f2,84(s0)
     980:	e6020058 	swc1	$f2,88(s0)
     984:	e60c0194 	swc1	$f12,404(s0)
     988:	e60c0198 	swc1	$f12,408(s0)
     98c:	e60001a0 	swc1	$f0,416(s0)
     990:	e60001a4 	swc1	$f0,420(s0)
     994:	e60001a8 	swc1	$f0,424(s0)
     998:	e600019c 	swc1	$f0,412(s0)
     99c:	e61201bc 	swc1	$f18,444(s0)
     9a0:	e60400bc 	swc1	$f4,188(s0)
     9a4:	8d6b0000 	lw	t3,0(t3)
     9a8:	24010053 	li	at,83
     9ac:	02002025 	move	a0,s0
     9b0:	1161000d 	beq	t3,at,9e8 <func_80998FF4+0x174>
     9b4:	3c010000 	lui	at,0x0
     9b8:	c4260000 	lwc1	$f6,0(at)
     9bc:	3c010000 	lui	at,0x0
     9c0:	e6060050 	swc1	$f6,80(s0)
     9c4:	c4280000 	lwc1	$f8,0(at)
     9c8:	3c010000 	lui	at,0x0
     9cc:	e6080054 	swc1	$f8,84(s0)
     9d0:	c42a0000 	lwc1	$f10,0(at)
     9d4:	3c01437f 	lui	at,0x437f
     9d8:	44818000 	mtc1	at,$f16
     9dc:	e60a0058 	swc1	$f10,88(s0)
     9e0:	10000003 	b	9f0 <func_80998FF4+0x17c>
     9e4:	e61001a8 	swc1	$f16,424(s0)
     9e8:	0c000000 	jal	0 <func_80998780>
     9ec:	24052899 	li	a1,10393
     9f0:	3c050000 	lui	a1,0x0
     9f4:	24a50000 	addiu	a1,a1,0
     9f8:	0c000000 	jal	0 <func_80998780>
     9fc:	02002025 	move	a0,s0
     a00:	8fbf002c 	lw	ra,44(sp)
     a04:	8fb00028 	lw	s0,40(sp)
     a08:	27bd0040 	addiu	sp,sp,64
     a0c:	03e00008 	jr	ra
     a10:	00000000 	nop

00000a14 <func_80999194>:
     a14:	8ca21c44 	lw	v0,7236(a1)
     a18:	44802000 	mtc1	zero,$f4
     a1c:	3c01425c 	lui	at,0x425c
     a20:	44815000 	mtc1	at,$f10
     a24:	e4440060 	swc1	$f4,96(v0)
     a28:	c4860024 	lwc1	$f6,36(a0)
     a2c:	e4460024 	swc1	$f6,36(v0)
     a30:	c4880028 	lwc1	$f8,40(a0)
     a34:	460a4400 	add.s	$f16,$f8,$f10
     a38:	e4500028 	swc1	$f16,40(v0)
     a3c:	c492002c 	lwc1	$f18,44(a0)
     a40:	03e00008 	jr	ra
     a44:	e452002c 	swc1	$f18,44(v0)

00000a48 <func_809991C8>:
     a48:	27bdffe8 	addiu	sp,sp,-24
     a4c:	afbf0014 	sw	ra,20(sp)
     a50:	afa5001c 	sw	a1,28(sp)
     a54:	94820192 	lhu	v0,402(a0)
     a58:	3c050000 	lui	a1,0x0
     a5c:	24a50000 	addiu	a1,a1,0
     a60:	10400003 	beqz	v0,a70 <func_809991C8+0x28>
     a64:	244effff 	addiu	t6,v0,-1
     a68:	10000004 	b	a7c <func_809991C8+0x34>
     a6c:	a48e0192 	sh	t6,402(a0)
     a70:	0c000000 	jal	0 <func_80998780>
     a74:	afa40018 	sw	a0,24(sp)
     a78:	8fa40018 	lw	a0,24(sp)
     a7c:	0c000000 	jal	0 <func_80998780>
     a80:	8fa5001c 	lw	a1,28(sp)
     a84:	8fbf0014 	lw	ra,20(sp)
     a88:	27bd0018 	addiu	sp,sp,24
     a8c:	03e00008 	jr	ra
     a90:	00000000 	nop

00000a94 <func_80999214>:
     a94:	27bdffd8 	addiu	sp,sp,-40
     a98:	3c010000 	lui	at,0x0
     a9c:	c4240000 	lwc1	$f4,0(at)
     aa0:	afb10020 	sw	s1,32(sp)
     aa4:	afb0001c 	sw	s0,28(sp)
     aa8:	00a08025 	move	s0,a1
     aac:	00808825 	move	s1,a0
     ab0:	afbf0024 	sw	ra,36(sp)
     ab4:	3c063e4c 	lui	a2,0x3e4c
     ab8:	34c6cccd 	ori	a2,a2,0xcccd
     abc:	248401a8 	addiu	a0,a0,424
     ac0:	3c05437f 	lui	a1,0x437f
     ac4:	3c0740a0 	lui	a3,0x40a0
     ac8:	0c000000 	jal	0 <func_80998780>
     acc:	e7a40010 	swc1	$f4,16(sp)
     ad0:	962e0192 	lhu	t6,402(s1)
     ad4:	240f0028 	li	t7,40
     ad8:	3c014220 	lui	at,0x4220
     adc:	01eec023 	subu	t8,t7,t6
     ae0:	44983000 	mtc1	t8,$f6
     ae4:	44815000 	mtc1	at,$f10
     ae8:	44801000 	mtc1	zero,$f2
     aec:	46803220 	cvt.s.w	$f8,$f6
     af0:	3c01c37f 	lui	at,0xc37f
     af4:	44818000 	mtc1	at,$f16
     af8:	460a4003 	div.s	$f0,$f8,$f10
     afc:	4602003c 	c.lt.s	$f0,$f2
     b00:	00000000 	nop
     b04:	45000002 	bc1f	b10 <func_80999214+0x7c>
     b08:	00000000 	nop
     b0c:	46001006 	mov.s	$f0,$f2
     b10:	46008482 	mul.s	$f18,$f16,$f0
     b14:	00001825 	move	v1,zero
     b18:	3c050001 	lui	a1,0x1
     b1c:	4600910d 	trunc.w.s	$f4,$f18
     b20:	44042000 	mfc1	a0,$f4
     b24:	00000000 	nop
     b28:	00034040 	sll	t0,v1,0x1
     b2c:	24630001 	addiu	v1,v1,1
     b30:	00031c00 	sll	v1,v1,0x10
     b34:	02084821 	addu	t1,s0,t0
     b38:	00031c03 	sra	v1,v1,0x10
     b3c:	01251021 	addu	v0,t1,a1
     b40:	28610003 	slti	at,v1,3
     b44:	a4440ab6 	sh	a0,2742(v0)
     b48:	a4440abc 	sh	a0,2748(v0)
     b4c:	1420fff6 	bnez	at,b28 <func_80999214+0x94>
     b50:	a4440ab0 	sh	a0,2736(v0)
     b54:	3c01c3fa 	lui	at,0xc3fa
     b58:	44813000 	mtc1	at,$f6
     b5c:	3c010001 	lui	at,0x1
     b60:	00300821 	addu	at,at,s0
     b64:	46003202 	mul.s	$f8,$f6,$f0
     b68:	4602003e 	c.le.s	$f0,$f2
     b6c:	02202025 	move	a0,s1
     b70:	3c050000 	lui	a1,0x0
     b74:	4600428d 	trunc.w.s	$f10,$f8
     b78:	440b5000 	mfc1	t3,$f10
     b7c:	00000000 	nop
     b80:	a42b0ac2 	sh	t3,2754(at)
     b84:	962c0192 	lhu	t4,402(s1)
     b88:	258d0001 	addiu	t5,t4,1
     b8c:	45000003 	bc1f	b9c <func_80999214+0x108>
     b90:	a62d0192 	sh	t5,402(s1)
     b94:	0c000000 	jal	0 <func_80998780>
     b98:	24a50000 	addiu	a1,a1,0
     b9c:	862f00b6 	lh	t7,182(s1)
     ba0:	02202025 	move	a0,s1
     ba4:	02002825 	move	a1,s0
     ba8:	25ee0320 	addiu	t6,t7,800
     bac:	0c000000 	jal	0 <func_80998780>
     bb0:	a62e00b6 	sh	t6,182(s1)
     bb4:	8fbf0024 	lw	ra,36(sp)
     bb8:	8fb0001c 	lw	s0,28(sp)
     bbc:	8fb10020 	lw	s1,32(sp)
     bc0:	03e00008 	jr	ra
     bc4:	27bd0028 	addiu	sp,sp,40

00000bc8 <func_80999348>:
     bc8:	27bdffd0 	addiu	sp,sp,-48
     bcc:	afbf0024 	sw	ra,36(sp)
     bd0:	afb00020 	sw	s0,32(sp)
     bd4:	8cae1c44 	lw	t6,7236(a1)
     bd8:	00808025 	move	s0,a0
     bdc:	0c000000 	jal	0 <func_80998780>
     be0:	afae002c 	sw	t6,44(sp)
     be4:	96020192 	lhu	v0,402(s0)
     be8:	260401a8 	addiu	a0,s0,424
     bec:	24050000 	li	a1,0
     bf0:	1440001e 	bnez	v0,c6c <func_80999348+0xa4>
     bf4:	2458ffff 	addiu	t8,v0,-1
     bf8:	3c013f80 	lui	at,0x3f80
     bfc:	44812000 	mtc1	at,$f4
     c00:	3c063dcc 	lui	a2,0x3dcc
     c04:	34c6cccd 	ori	a2,a2,0xcccd
     c08:	3c074080 	lui	a3,0x4080
     c0c:	0c000000 	jal	0 <func_80998780>
     c10:	e7a40010 	swc1	$f4,16(sp)
     c14:	3c014316 	lui	at,0x4316
     c18:	44813000 	mtc1	at,$f6
     c1c:	c60001a8 	lwc1	$f0,424(s0)
     c20:	44805000 	mtc1	zero,$f10
     c24:	3c010000 	lui	at,0x0
     c28:	4606003e 	c.le.s	$f0,$f6
     c2c:	8faf002c 	lw	t7,44(sp)
     c30:	02002025 	move	a0,s0
     c34:	3c050000 	lui	a1,0x0
     c38:	45020005 	bc1fl	c50 <func_80999348+0x88>
     c3c:	460a003e 	c.le.s	$f0,$f10
     c40:	c4280000 	lwc1	$f8,0(at)
     c44:	e5e8006c 	swc1	$f8,108(t7)
     c48:	c60001a8 	lwc1	$f0,424(s0)
     c4c:	460a003e 	c.le.s	$f0,$f10
     c50:	00000000 	nop
     c54:	45020007 	bc1fl	c74 <func_80999348+0xac>
     c58:	861900b6 	lh	t9,182(s0)
     c5c:	0c000000 	jal	0 <func_80998780>
     c60:	24a50000 	addiu	a1,a1,0
     c64:	10000003 	b	c74 <func_80999348+0xac>
     c68:	861900b6 	lh	t9,182(s0)
     c6c:	a6180192 	sh	t8,402(s0)
     c70:	861900b6 	lh	t9,182(s0)
     c74:	27280320 	addiu	t0,t9,800
     c78:	a60800b6 	sh	t0,182(s0)
     c7c:	8fbf0024 	lw	ra,36(sp)
     c80:	8fb00020 	lw	s0,32(sp)
     c84:	27bd0030 	addiu	sp,sp,48
     c88:	03e00008 	jr	ra
     c8c:	00000000 	nop

00000c90 <func_80999410>:
     c90:	afa40000 	sw	a0,0(sp)
     c94:	3c010000 	lui	at,0x0
     c98:	8ca21c44 	lw	v0,7236(a1)
     c9c:	c4240000 	lwc1	$f4,0(at)
     ca0:	03e00008 	jr	ra
     ca4:	e444006c 	swc1	$f4,108(v0)

00000ca8 <func_80999428>:
     ca8:	27bdffd8 	addiu	sp,sp,-40
     cac:	afbf0024 	sw	ra,36(sp)
     cb0:	afb00020 	sw	s0,32(sp)
     cb4:	afa5002c 	sw	a1,44(sp)
     cb8:	94820192 	lhu	v0,402(a0)
     cbc:	00808025 	move	s0,a0
     cc0:	3c053d4c 	lui	a1,0x3d4c
     cc4:	1040002b 	beqz	v0,d74 <func_80999428+0xcc>
     cc8:	244effff 	addiu	t6,v0,-1
     ccc:	a48e0192 	sh	t6,402(a0)
     cd0:	3c010000 	lui	at,0x0
     cd4:	c4240000 	lwc1	$f4,0(at)
     cd8:	3c063e4c 	lui	a2,0x3e4c
     cdc:	3c073d4c 	lui	a3,0x3d4c
     ce0:	34e7cccd 	ori	a3,a3,0xcccd
     ce4:	34c6cccd 	ori	a2,a2,0xcccd
     ce8:	24840050 	addiu	a0,a0,80
     cec:	34a563f1 	ori	a1,a1,0x63f1
     cf0:	0c000000 	jal	0 <func_80998780>
     cf4:	e7a40010 	swc1	$f4,16(sp)
     cf8:	3c010000 	lui	at,0x0
     cfc:	c4260000 	lwc1	$f6,0(at)
     d00:	3c053d9d 	lui	a1,0x3d9d
     d04:	3c063e4c 	lui	a2,0x3e4c
     d08:	3c073d4c 	lui	a3,0x3d4c
     d0c:	34e7cccd 	ori	a3,a3,0xcccd
     d10:	34c6cccd 	ori	a2,a2,0xcccd
     d14:	34a5b22d 	ori	a1,a1,0xb22d
     d18:	26040054 	addiu	a0,s0,84
     d1c:	0c000000 	jal	0 <func_80998780>
     d20:	e7a60010 	swc1	$f6,16(sp)
     d24:	3c010000 	lui	at,0x0
     d28:	c4280000 	lwc1	$f8,0(at)
     d2c:	3c053db8 	lui	a1,0x3db8
     d30:	3c063e4c 	lui	a2,0x3e4c
     d34:	3c073d4c 	lui	a3,0x3d4c
     d38:	34e7cccd 	ori	a3,a3,0xcccd
     d3c:	34c6cccd 	ori	a2,a2,0xcccd
     d40:	34a551ec 	ori	a1,a1,0x51ec
     d44:	26040058 	addiu	a0,s0,88
     d48:	0c000000 	jal	0 <func_80998780>
     d4c:	e7a80010 	swc1	$f8,16(sp)
     d50:	3c010000 	lui	at,0x0
     d54:	c42a0000 	lwc1	$f10,0(at)
     d58:	3c063e4c 	lui	a2,0x3e4c
     d5c:	34c6cccd 	ori	a2,a2,0xcccd
     d60:	260401a8 	addiu	a0,s0,424
     d64:	3c05437f 	lui	a1,0x437f
     d68:	3c0740a0 	lui	a3,0x40a0
     d6c:	0c000000 	jal	0 <func_80998780>
     d70:	e7aa0010 	swc1	$f10,16(sp)
     d74:	8fbf0024 	lw	ra,36(sp)
     d78:	8fb00020 	lw	s0,32(sp)
     d7c:	27bd0028 	addiu	sp,sp,40
     d80:	03e00008 	jr	ra
     d84:	00000000 	nop

00000d88 <func_80999508>:
     d88:	27bdffe8 	addiu	sp,sp,-24
     d8c:	afbf0014 	sw	ra,20(sp)
     d90:	848e001c 	lh	t6,28(a0)
     d94:	25cf0002 	addiu	t7,t6,2
     d98:	2de1000d 	sltiu	at,t7,13
     d9c:	10200014 	beqz	at,df0 <L80999568+0x8>
     da0:	000f7880 	sll	t7,t7,0x2
     da4:	3c010000 	lui	at,0x0
     da8:	002f0821 	addu	at,at,t7
     dac:	8c2f0000 	lw	t7,0(at)
     db0:	01e00008 	jr	t7
     db4:	00000000 	nop

00000db8 <L80999538>:
     db8:	0c000000 	jal	0 <func_80998780>
     dbc:	00000000 	nop
     dc0:	1000000c 	b	df4 <L80999568+0xc>
     dc4:	8fbf0014 	lw	ra,20(sp)

00000dc8 <L80999548>:
     dc8:	0c000000 	jal	0 <func_80998780>
     dcc:	00000000 	nop
     dd0:	10000008 	b	df4 <L80999568+0xc>
     dd4:	8fbf0014 	lw	ra,20(sp)

00000dd8 <L80999558>:
     dd8:	0c000000 	jal	0 <func_80998780>
     ddc:	00000000 	nop
     de0:	10000004 	b	df4 <L80999568+0xc>
     de4:	8fbf0014 	lw	ra,20(sp)

00000de8 <L80999568>:
     de8:	0c000000 	jal	0 <func_80998780>
     dec:	00000000 	nop
     df0:	8fbf0014 	lw	ra,20(sp)
     df4:	27bd0018 	addiu	sp,sp,24
     df8:	03e00008 	jr	ra
     dfc:	00000000 	nop

00000e00 <func_80999580>:
     e00:	27bdffe8 	addiu	sp,sp,-24
     e04:	afa40018 	sw	a0,24(sp)
     e08:	8fae0018 	lw	t6,24(sp)
     e0c:	afbf0014 	sw	ra,20(sp)
     e10:	00a02025 	move	a0,a1
     e14:	0c000000 	jal	0 <func_80998780>
     e18:	81c50003 	lb	a1,3(t6)
     e1c:	10400009 	beqz	v0,e44 <func_80999580+0x44>
     e20:	240f00c8 	li	t7,200
     e24:	8fb80018 	lw	t8,24(sp)
     e28:	24040021 	li	a0,33
     e2c:	0c000000 	jal	0 <func_80998780>
     e30:	a70f0192 	sh	t7,402(t8)
     e34:	3c050000 	lui	a1,0x0
     e38:	24a50000 	addiu	a1,a1,0
     e3c:	0c000000 	jal	0 <func_80998780>
     e40:	8fa40018 	lw	a0,24(sp)
     e44:	8fbf0014 	lw	ra,20(sp)
     e48:	27bd0018 	addiu	sp,sp,24
     e4c:	03e00008 	jr	ra
     e50:	00000000 	nop

00000e54 <func_809995D4>:
     e54:	27bdffd0 	addiu	sp,sp,-48
     e58:	afbf002c 	sw	ra,44(sp)
     e5c:	afb00028 	sw	s0,40(sp)
     e60:	afa50034 	sw	a1,52(sp)
     e64:	94820192 	lhu	v0,402(a0)
     e68:	00808025 	move	s0,a0
     e6c:	3c0142c8 	lui	at,0x42c8
     e70:	14400045 	bnez	v0,f88 <func_809995D4+0x134>
     e74:	241900c8 	li	t9,200
     e78:	c4840090 	lwc1	$f4,144(a0)
     e7c:	44813000 	mtc1	at,$f6
     e80:	3c01c2c4 	lui	at,0xc2c4
     e84:	240800ff 	li	t0,255
     e88:	4606203c 	c.lt.s	$f4,$f6
     e8c:	240900ff 	li	t1,255
     e90:	240a00ff 	li	t2,255
     e94:	4502000a 	bc1fl	ec0 <func_809995D4+0x6c>
     e98:	c6120024 	lwc1	$f18,36(s0)
     e9c:	44814000 	mtc1	at,$f8
     ea0:	3c010000 	lui	at,0x0
     ea4:	e4880024 	swc1	$f8,36(a0)
     ea8:	c42a0000 	lwc1	$f10,0(at)
     eac:	3c010000 	lui	at,0x0
     eb0:	e48a0028 	swc1	$f10,40(a0)
     eb4:	c4300000 	lwc1	$f16,0(at)
     eb8:	e490002c 	swc1	$f16,44(a0)
     ebc:	c6120024 	lwc1	$f18,36(s0)
     ec0:	c6060028 	lwc1	$f6,40(s0)
     ec4:	c60a002c 	lwc1	$f10,44(s0)
     ec8:	4600910d 	trunc.w.s	$f4,$f18
     ecc:	afaa001c 	sw	t2,28(sp)
     ed0:	afa90018 	sw	t1,24(sp)
     ed4:	4600320d 	trunc.w.s	$f8,$f6
     ed8:	44052000 	mfc1	a1,$f4
     edc:	afa80014 	sw	t0,20(sp)
     ee0:	4600540d 	trunc.w.s	$f16,$f10
     ee4:	44064000 	mfc1	a2,$f8
     ee8:	00052c00 	sll	a1,a1,0x10
     eec:	00052c03 	sra	a1,a1,0x10
     ef0:	44078000 	mfc1	a3,$f16
     ef4:	00063400 	sll	a2,a2,0x10
     ef8:	00063403 	sra	a2,a2,0x10
     efc:	00073c00 	sll	a3,a3,0x10
     f00:	00073c03 	sra	a3,a3,0x10
     f04:	afb90010 	sw	t9,16(sp)
     f08:	0c000000 	jal	0 <func_80998780>
     f0c:	260401c8 	addiu	a0,s0,456
     f10:	c6120024 	lwc1	$f18,36(s0)
     f14:	c6060028 	lwc1	$f6,40(s0)
     f18:	c60a002c 	lwc1	$f10,44(s0)
     f1c:	4600910d 	trunc.w.s	$f4,$f18
     f20:	240e00c8 	li	t6,200
     f24:	240f00ff 	li	t7,255
     f28:	4600320d 	trunc.w.s	$f8,$f6
     f2c:	44052000 	mfc1	a1,$f4
     f30:	241800ff 	li	t8,255
     f34:	4600540d 	trunc.w.s	$f16,$f10
     f38:	44064000 	mfc1	a2,$f8
     f3c:	241900ff 	li	t9,255
     f40:	00052c00 	sll	a1,a1,0x10
     f44:	44078000 	mfc1	a3,$f16
     f48:	00063400 	sll	a2,a2,0x10
     f4c:	00063403 	sra	a2,a2,0x10
     f50:	00073c00 	sll	a3,a3,0x10
     f54:	00073c03 	sra	a3,a3,0x10
     f58:	00052c03 	sra	a1,a1,0x10
     f5c:	afb9001c 	sw	t9,28(sp)
     f60:	afb80018 	sw	t8,24(sp)
     f64:	afaf0014 	sw	t7,20(sp)
     f68:	afae0010 	sw	t6,16(sp)
     f6c:	0c000000 	jal	0 <func_80998780>
     f70:	260401dc 	addiu	a0,s0,476
     f74:	3c050000 	lui	a1,0x0
     f78:	24a50000 	addiu	a1,a1,0
     f7c:	0c000000 	jal	0 <func_80998780>
     f80:	02002025 	move	a0,s0
     f84:	96020192 	lhu	v0,402(s0)
     f88:	2448ffff 	addiu	t0,v0,-1
     f8c:	a6080192 	sh	t0,402(s0)
     f90:	8fbf002c 	lw	ra,44(sp)
     f94:	8fb00028 	lw	s0,40(sp)
     f98:	27bd0030 	addiu	sp,sp,48
     f9c:	03e00008 	jr	ra
     fa0:	00000000 	nop

00000fa4 <func_80999724>:
     fa4:	27bdffd8 	addiu	sp,sp,-40
     fa8:	afbf0024 	sw	ra,36(sp)
     fac:	afb00020 	sw	s0,32(sp)
     fb0:	afa5002c 	sw	a1,44(sp)
     fb4:	00808025 	move	s0,a0
     fb8:	0c000000 	jal	0 <func_80998780>
     fbc:	24052025 	li	a1,8229
     fc0:	3c010000 	lui	at,0x0
     fc4:	c4240000 	lwc1	$f4,0(at)
     fc8:	3c063ecc 	lui	a2,0x3ecc
     fcc:	34c6cccd 	ori	a2,a2,0xcccd
     fd0:	260401a0 	addiu	a0,s0,416
     fd4:	3c05437f 	lui	a1,0x437f
     fd8:	3c074120 	lui	a3,0x4120
     fdc:	0c000000 	jal	0 <func_80998780>
     fe0:	e7a40010 	swc1	$f4,16(sp)
     fe4:	3c010000 	lui	at,0x0
     fe8:	c4260000 	lwc1	$f6,0(at)
     fec:	3c063ecc 	lui	a2,0x3ecc
     ff0:	34c6cccd 	ori	a2,a2,0xcccd
     ff4:	260401a4 	addiu	a0,s0,420
     ff8:	3c05437f 	lui	a1,0x437f
     ffc:	3c074120 	lui	a3,0x4120
    1000:	0c000000 	jal	0 <func_80998780>
    1004:	e7a60010 	swc1	$f6,16(sp)
    1008:	8602001c 	lh	v0,28(s0)
    100c:	24030004 	li	v1,4
    1010:	24010008 	li	at,8
    1014:	50620030 	beql	v1,v0,10d8 <func_80999724+0x134>
    1018:	860201ae 	lh	v0,430(s0)
    101c:	1041002d 	beq	v0,at,10d4 <func_80999724+0x130>
    1020:	24010009 	li	at,9
    1024:	1041002b 	beq	v0,at,10d4 <func_80999724+0x130>
    1028:	2401000a 	li	at,10
    102c:	5041002a 	beql	v0,at,10d8 <func_80999724+0x134>
    1030:	860201ae 	lh	v0,430(s0)
    1034:	860201ac 	lh	v0,428(s0)
    1038:	28410064 	slti	at,v0,100
    103c:	10200002 	beqz	at,1048 <func_80999724+0xa4>
    1040:	244e0002 	addiu	t6,v0,2
    1044:	a60e01ac 	sh	t6,428(s0)
    1048:	860201ae 	lh	v0,430(s0)
    104c:	28410078 	slti	at,v0,120
    1050:	10200002 	beqz	at,105c <func_80999724+0xb8>
    1054:	244f0004 	addiu	t7,v0,4
    1058:	a60f01ae 	sh	t7,430(s0)
    105c:	860201b0 	lh	v0,432(s0)
    1060:	284100e6 	slti	at,v0,230
    1064:	10200003 	beqz	at,1074 <func_80999724+0xd0>
    1068:	24580004 	addiu	t8,v0,4
    106c:	10000028 	b	1110 <func_80999724+0x16c>
    1070:	a61801b0 	sh	t8,432(s0)
    1074:	8602001c 	lh	v0,28(s0)
    1078:	24010005 	li	at,5
    107c:	02002025 	move	a0,s0
    1080:	14410005 	bne	v0,at,1098 <func_80999724+0xf4>
    1084:	3c050000 	lui	a1,0x0
    1088:	0c000000 	jal	0 <func_80998780>
    108c:	24a50000 	addiu	a1,a1,0
    1090:	10000020 	b	1114 <func_80999724+0x170>
    1094:	8fbf0024 	lw	ra,36(sp)
    1098:	24010002 	li	at,2
    109c:	10410008 	beq	v0,at,10c0 <func_80999724+0x11c>
    10a0:	02002025 	move	a0,s0
    10a4:	10620006 	beq	v1,v0,10c0 <func_80999724+0x11c>
    10a8:	3c050000 	lui	a1,0x0
    10ac:	02002025 	move	a0,s0
    10b0:	0c000000 	jal	0 <func_80998780>
    10b4:	24a50000 	addiu	a1,a1,0
    10b8:	10000016 	b	1114 <func_80999724+0x170>
    10bc:	8fbf0024 	lw	ra,36(sp)
    10c0:	3c050000 	lui	a1,0x0
    10c4:	0c000000 	jal	0 <func_80998780>
    10c8:	24a50000 	addiu	a1,a1,0
    10cc:	10000011 	b	1114 <func_80999724+0x170>
    10d0:	8fbf0024 	lw	ra,36(sp)
    10d4:	860201ae 	lh	v0,430(s0)
    10d8:	02002025 	move	a0,s0
    10dc:	3c050000 	lui	a1,0x0
    10e0:	2841ffce 	slti	at,v0,-50
    10e4:	10200002 	beqz	at,10f0 <func_80999724+0x14c>
    10e8:	24590004 	addiu	t9,v0,4
    10ec:	a61901ae 	sh	t9,430(s0)
    10f0:	860201b0 	lh	v0,432(s0)
    10f4:	28410046 	slti	at,v0,70
    10f8:	10200003 	beqz	at,1108 <func_80999724+0x164>
    10fc:	24480004 	addiu	t0,v0,4
    1100:	10000003 	b	1110 <func_80999724+0x16c>
    1104:	a60801b0 	sh	t0,432(s0)
    1108:	0c000000 	jal	0 <func_80998780>
    110c:	24a50000 	addiu	a1,a1,0
    1110:	8fbf0024 	lw	ra,36(sp)
    1114:	8fb00020 	lw	s0,32(sp)
    1118:	27bd0028 	addiu	sp,sp,40
    111c:	03e00008 	jr	ra
    1120:	00000000 	nop

00001124 <func_809998A4>:
    1124:	27bdffe0 	addiu	sp,sp,-32
    1128:	afbf001c 	sw	ra,28(sp)
    112c:	afa40020 	sw	a0,32(sp)
    1130:	afa50024 	sw	a1,36(sp)
    1134:	c48601a0 	lwc1	$f6,416(a0)
    1138:	44802000 	mtc1	zero,$f4
    113c:	00000000 	nop
    1140:	46062032 	c.eq.s	$f4,$f6
    1144:	00000000 	nop
    1148:	45010003 	bc1t	1158 <func_809998A4+0x34>
    114c:	00000000 	nop
    1150:	0c000000 	jal	0 <func_80998780>
    1154:	24052025 	li	a1,8229
    1158:	3c010000 	lui	at,0x0
    115c:	c4280000 	lwc1	$f8,0(at)
    1160:	8fa40020 	lw	a0,32(sp)
    1164:	3c063dcc 	lui	a2,0x3dcc
    1168:	34c6cccd 	ori	a2,a2,0xcccd
    116c:	24050000 	li	a1,0
    1170:	3c074000 	lui	a3,0x4000
    1174:	e7a80010 	swc1	$f8,16(sp)
    1178:	0c000000 	jal	0 <func_80998780>
    117c:	248401a0 	addiu	a0,a0,416
    1180:	3c010000 	lui	at,0x0
    1184:	c42a0000 	lwc1	$f10,0(at)
    1188:	8fa40020 	lw	a0,32(sp)
    118c:	3c063dcc 	lui	a2,0x3dcc
    1190:	34c6cccd 	ori	a2,a2,0xcccd
    1194:	24050000 	li	a1,0
    1198:	3c074000 	lui	a3,0x4000
    119c:	e7aa0010 	swc1	$f10,16(sp)
    11a0:	0c000000 	jal	0 <func_80998780>
    11a4:	248401a4 	addiu	a0,a0,420
    11a8:	8fbf001c 	lw	ra,28(sp)
    11ac:	27bd0020 	addiu	sp,sp,32
    11b0:	03e00008 	jr	ra
    11b4:	00000000 	nop

000011b8 <func_80999938>:
    11b8:	c4800090 	lwc1	$f0,144(a0)
    11bc:	3c014270 	lui	at,0x4270
    11c0:	44812000 	mtc1	at,$f4
    11c4:	46000005 	abs.s	$f0,$f0
    11c8:	8ca21c44 	lw	v0,7236(a1)
    11cc:	4604003c 	c.lt.s	$f0,$f4
    11d0:	00001825 	move	v1,zero
    11d4:	3c0141a0 	lui	at,0x41a0
    11d8:	4500000f 	bc1f	1218 <func_80999938+0x60>
    11dc:	00000000 	nop
    11e0:	44816000 	mtc1	at,$f12
    11e4:	c4400028 	lwc1	$f0,40(v0)
    11e8:	c4820028 	lwc1	$f2,40(a0)
    11ec:	460c0181 	sub.s	$f6,$f0,$f12
    11f0:	4602303c 	c.lt.s	$f6,$f2
    11f4:	00000000 	nop
    11f8:	45000007 	bc1f	1218 <func_80999938+0x60>
    11fc:	00000000 	nop
    1200:	460c0200 	add.s	$f8,$f0,$f12
    1204:	4608103c 	c.lt.s	$f2,$f8
    1208:	00000000 	nop
    120c:	45000002 	bc1f	1218 <func_80999938+0x60>
    1210:	00000000 	nop
    1214:	24030001 	li	v1,1
    1218:	03e00008 	jr	ra
    121c:	00601025 	move	v0,v1

00001220 <func_809999A0>:
    1220:	27bdffd0 	addiu	sp,sp,-48
    1224:	afbf0024 	sw	ra,36(sp)
    1228:	afb00020 	sw	s0,32(sp)
    122c:	afa50034 	sw	a1,52(sp)
    1230:	00808025 	move	s0,a0
    1234:	0c000000 	jal	0 <func_80998780>
    1238:	24052025 	li	a1,8229
    123c:	02002025 	move	a0,s0
    1240:	0c000000 	jal	0 <func_80998780>
    1244:	8fa50034 	lw	a1,52(sp)
    1248:	10400022 	beqz	v0,12d4 <func_809999A0+0xb4>
    124c:	3c070000 	lui	a3,0x0
    1250:	8fae0034 	lw	t6,52(sp)
    1254:	3c0f0000 	lui	t7,0x0
    1258:	24e70000 	addiu	a3,a3,0
    125c:	8dc21c44 	lw	v0,7236(t6)
    1260:	25ef0000 	addiu	t7,t7,0
    1264:	afaf0014 	sw	t7,20(sp)
    1268:	afa70010 	sw	a3,16(sp)
    126c:	24042826 	li	a0,10278
    1270:	24060004 	li	a2,4
    1274:	244500e4 	addiu	a1,v0,228
    1278:	0c000000 	jal	0 <func_80998780>
    127c:	afa2002c 	sw	v0,44(sp)
    1280:	8fa40034 	lw	a0,52(sp)
    1284:	240525e7 	li	a1,9703
    1288:	240603e7 	li	a2,999
    128c:	02003825 	move	a3,s0
    1290:	0c000000 	jal	0 <func_80998780>
    1294:	afa00010 	sw	zero,16(sp)
    1298:	8fa40034 	lw	a0,52(sp)
    129c:	02002825 	move	a1,s0
    12a0:	0c000000 	jal	0 <func_80998780>
    12a4:	2406000a 	li	a2,10
    12a8:	8fa3002c 	lw	v1,44(sp)
    12ac:	c6040024 	lwc1	$f4,36(s0)
    12b0:	24180001 	li	t8,1
    12b4:	3c050000 	lui	a1,0x0
    12b8:	e4640450 	swc1	$f4,1104(v1)
    12bc:	c606002c 	lwc1	$f6,44(s0)
    12c0:	24a50000 	addiu	a1,a1,0
    12c4:	02002025 	move	a0,s0
    12c8:	e4660458 	swc1	$f6,1112(v1)
    12cc:	0c000000 	jal	0 <func_80998780>
    12d0:	a61801b2 	sh	t8,434(s0)
    12d4:	8fbf0024 	lw	ra,36(sp)
    12d8:	8fb00020 	lw	s0,32(sp)
    12dc:	27bd0030 	addiu	sp,sp,48
    12e0:	03e00008 	jr	ra
    12e4:	00000000 	nop

000012e8 <func_80999A68>:
    12e8:	27bdffc8 	addiu	sp,sp,-56
    12ec:	afbf0034 	sw	ra,52(sp)
    12f0:	afb20030 	sw	s2,48(sp)
    12f4:	afb1002c 	sw	s1,44(sp)
    12f8:	afb00028 	sw	s0,40(sp)
    12fc:	848201b2 	lh	v0,434(a0)
    1300:	00a08025 	move	s0,a1
    1304:	00808825 	move	s1,a0
    1308:	28410065 	slti	at,v0,101
    130c:	1420000f 	bnez	at,134c <func_80999A68+0x64>
    1310:	8cb21c44 	lw	s2,7236(a1)
    1314:	3c014120 	lui	at,0x4120
    1318:	44813000 	mtc1	at,$f6
    131c:	c6440060 	lwc1	$f4,96(s2)
    1320:	3c010000 	lui	at,0x0
    1324:	4606203c 	c.lt.s	$f4,$f6
    1328:	00000000 	nop
    132c:	45020005 	bc1fl	1344 <func_80999A68+0x5c>
    1330:	44805000 	mtc1	zero,$f10
    1334:	c4280000 	lwc1	$f8,0(at)
    1338:	10000006 	b	1354 <func_80999A68+0x6c>
    133c:	e648006c 	swc1	$f8,108(s2)
    1340:	44805000 	mtc1	zero,$f10
    1344:	10000003 	b	1354 <func_80999A68+0x6c>
    1348:	e64a006c 	swc1	$f10,108(s2)
    134c:	244e0001 	addiu	t6,v0,1
    1350:	a62e01b2 	sh	t6,434(s1)
    1354:	3c010000 	lui	at,0x0
    1358:	c4300000 	lwc1	$f16,0(at)
    135c:	3c063e4c 	lui	a2,0x3e4c
    1360:	34c6cccd 	ori	a2,a2,0xcccd
    1364:	262401a0 	addiu	a0,s1,416
    1368:	24050000 	li	a1,0
    136c:	3c0740c0 	lui	a3,0x40c0
    1370:	0c000000 	jal	0 <func_80998780>
    1374:	e7b00010 	swc1	$f16,16(sp)
    1378:	962f0192 	lhu	t7,402(s1)
    137c:	3c190000 	lui	t9,0x0
    1380:	3c090000 	lui	t1,0x0
    1384:	25f80001 	addiu	t8,t7,1
    1388:	a6380192 	sh	t8,402(s1)
    138c:	87390000 	lh	t9,0(t9)
    1390:	3308ffff 	andi	t0,t8,0xffff
    1394:	0328082a 	slt	at,t9,t0
    1398:	50200059 	beqzl	at,1500 <func_80999A68+0x218>
    139c:	3c063c23 	lui	a2,0x3c23
    13a0:	95291412 	lhu	t1,5138(t1)
    13a4:	3401ffef 	li	at,0xffef
    13a8:	3c040000 	lui	a0,0x0
    13ac:	15210053 	bne	t1,at,14fc <func_80999A68+0x214>
    13b0:	24840000 	addiu	a0,a0,0
    13b4:	3c050001 	lui	a1,0x1
    13b8:	00b02821 	addu	a1,a1,s0
    13bc:	80a51e15 	lb	a1,7701(a1)
    13c0:	0c000000 	jal	0 <func_80998780>
    13c4:	24060014 	li	a2,20
    13c8:	860200a4 	lh	v0,164(s0)
    13cc:	24010012 	li	at,18
    13d0:	54410019 	bnel	v0,at,1438 <func_80999A68+0x150>
    13d4:	24010011 	li	at,17
    13d8:	0c000000 	jal	0 <func_80998780>
    13dc:	24040025 	li	a0,37
    13e0:	1440000e 	bnez	v0,141c <func_80999A68+0x134>
    13e4:	240c047a 	li	t4,1146
    13e8:	0c000000 	jal	0 <func_80998780>
    13ec:	24040025 	li	a0,37
    13f0:	02002025 	move	a0,s0
    13f4:	0c000000 	jal	0 <func_80998780>
    13f8:	2405006d 	li	a1,109
    13fc:	3c010001 	lui	at,0x1
    1400:	00300821 	addu	at,at,s0
    1404:	240a013d 	li	t2,317
    1408:	a42a1e1a 	sh	t2,7706(at)
    140c:	3c010000 	lui	at,0x0
    1410:	340bfff1 	li	t3,0xfff1
    1414:	1000002b 	b	14c4 <func_80999A68+0x1dc>
    1418:	a42b1412 	sh	t3,5138(at)
    141c:	3c010001 	lui	at,0x1
    1420:	00300821 	addu	at,at,s0
    1424:	a42c1e1a 	sh	t4,7706(at)
    1428:	3c010000 	lui	at,0x0
    142c:	10000025 	b	14c4 <func_80999A68+0x1dc>
    1430:	a4201412 	sh	zero,5138(at)
    1434:	24010011 	li	at,17
    1438:	5441001b 	bnel	v0,at,14a8 <func_80999A68+0x1c0>
    143c:	24010013 	li	at,19
    1440:	0c000000 	jal	0 <func_80998780>
    1444:	24040007 	li	a0,7
    1448:	14400010 	bnez	v0,148c <func_80999A68+0x1a4>
    144c:	240f0457 	li	t7,1111
    1450:	0c000000 	jal	0 <func_80998780>
    1454:	24040007 	li	a0,7
    1458:	0c000000 	jal	0 <func_80998780>
    145c:	24040009 	li	a0,9
    1460:	02002025 	move	a0,s0
    1464:	0c000000 	jal	0 <func_80998780>
    1468:	2405006c 	li	a1,108
    146c:	3c010001 	lui	at,0x1
    1470:	00300821 	addu	at,at,s0
    1474:	240d00ee 	li	t5,238
    1478:	a42d1e1a 	sh	t5,7706(at)
    147c:	3c010000 	lui	at,0x0
    1480:	340efff1 	li	t6,0xfff1
    1484:	1000000f 	b	14c4 <func_80999A68+0x1dc>
    1488:	a42e1412 	sh	t6,5138(at)
    148c:	3c010001 	lui	at,0x1
    1490:	00300821 	addu	at,at,s0
    1494:	a42f1e1a 	sh	t7,7706(at)
    1498:	3c010000 	lui	at,0x0
    149c:	10000009 	b	14c4 <func_80999A68+0x1dc>
    14a0:	a4201412 	sh	zero,5138(at)
    14a4:	24010013 	li	at,19
    14a8:	14410006 	bne	v0,at,14c4 <func_80999A68+0x1dc>
    14ac:	2418010e 	li	t8,270
    14b0:	3c010001 	lui	at,0x1
    14b4:	00300821 	addu	at,at,s0
    14b8:	a4381e1a 	sh	t8,7706(at)
    14bc:	3c010000 	lui	at,0x0
    14c0:	a4201412 	sh	zero,5138(at)
    14c4:	3c040000 	lui	a0,0x0
    14c8:	0c000000 	jal	0 <func_80998780>
    14cc:	24840000 	addiu	a0,a0,0
    14d0:	3c010001 	lui	at,0x1
    14d4:	00300821 	addu	at,at,s0
    14d8:	24190014 	li	t9,20
    14dc:	a0391e15 	sb	t9,7701(at)
    14e0:	3c010001 	lui	at,0x1
    14e4:	00300821 	addu	at,at,s0
    14e8:	24080007 	li	t0,7
    14ec:	a0281e5e 	sb	t0,7774(at)
    14f0:	3c010000 	lui	at,0x0
    14f4:	24090003 	li	t1,3
    14f8:	a029141d 	sb	t1,5149(at)
    14fc:	3c063c23 	lui	a2,0x3c23
    1500:	34c6d70a 	ori	a2,a2,0xd70a
    1504:	26240194 	addiu	a0,s1,404
    1508:	0c000000 	jal	0 <func_80998780>
    150c:	3c054000 	lui	a1,0x4000
    1510:	3c063ca3 	lui	a2,0x3ca3
    1514:	34c6d70a 	ori	a2,a2,0xd70a
    1518:	26240198 	addiu	a0,s1,408
    151c:	0c000000 	jal	0 <func_80998780>
    1520:	3c054120 	lui	a1,0x4120
    1524:	c6520024 	lwc1	$f18,36(s2)
    1528:	3c014120 	lui	at,0x4120
    152c:	44810000 	mtc1	at,$f0
    1530:	4600910d 	trunc.w.s	$f4,$f18
    1534:	c6520028 	lwc1	$f18,40(s2)
    1538:	240f00eb 	li	t7,235
    153c:	262401c8 	addiu	a0,s1,456
    1540:	440b2000 	mfc1	t3,$f4
    1544:	4600910d 	trunc.w.s	$f4,$f18
    1548:	c652002c 	lwc1	$f18,44(s2)
    154c:	000b6400 	sll	t4,t3,0x10
    1550:	000c6c03 	sra	t5,t4,0x10
    1554:	448d3000 	mtc1	t5,$f6
    1558:	44182000 	mfc1	t8,$f4
    155c:	4600910d 	trunc.w.s	$f4,$f18
    1560:	afaf0010 	sw	t7,16(sp)
    1564:	0018cc00 	sll	t9,t8,0x10
    1568:	46803220 	cvt.s.w	$f8,$f6
    156c:	00194403 	sra	t0,t9,0x10
    1570:	44883000 	mtc1	t0,$f6
    1574:	440b2000 	mfc1	t3,$f4
    1578:	240800ff 	li	t0,255
    157c:	241900ff 	li	t9,255
    1580:	46004280 	add.s	$f10,$f8,$f0
    1584:	000b6400 	sll	t4,t3,0x10
    1588:	000c6c03 	sra	t5,t4,0x10
    158c:	46803220 	cvt.s.w	$f8,$f6
    1590:	448d3000 	mtc1	t5,$f6
    1594:	241800ff 	li	t8,255
    1598:	afb80014 	sw	t8,20(sp)
    159c:	afb90018 	sw	t9,24(sp)
    15a0:	4600540d 	trunc.w.s	$f16,$f10
    15a4:	afa8001c 	sw	t0,28(sp)
    15a8:	46004280 	add.s	$f10,$f8,$f0
    15ac:	44058000 	mfc1	a1,$f16
    15b0:	46803220 	cvt.s.w	$f8,$f6
    15b4:	00052c00 	sll	a1,a1,0x10
    15b8:	00052c03 	sra	a1,a1,0x10
    15bc:	4600540d 	trunc.w.s	$f16,$f10
    15c0:	46004280 	add.s	$f10,$f8,$f0
    15c4:	44068000 	mfc1	a2,$f16
    15c8:	4600540d 	trunc.w.s	$f16,$f10
    15cc:	00063400 	sll	a2,a2,0x10
    15d0:	00063403 	sra	a2,a2,0x10
    15d4:	44078000 	mfc1	a3,$f16
    15d8:	00000000 	nop
    15dc:	00073c00 	sll	a3,a3,0x10
    15e0:	0c000000 	jal	0 <func_80998780>
    15e4:	00073c03 	sra	a3,a3,0x10
    15e8:	c6520024 	lwc1	$f18,36(s2)
    15ec:	3c014120 	lui	at,0x4120
    15f0:	44810000 	mtc1	at,$f0
    15f4:	4600910d 	trunc.w.s	$f4,$f18
    15f8:	c6520028 	lwc1	$f18,40(s2)
    15fc:	240e00eb 	li	t6,235
    1600:	262401dc 	addiu	a0,s1,476
    1604:	440a2000 	mfc1	t2,$f4
    1608:	4600910d 	trunc.w.s	$f4,$f18
    160c:	c652002c 	lwc1	$f18,44(s2)
    1610:	000a5c00 	sll	t3,t2,0x10
    1614:	000b6403 	sra	t4,t3,0x10
    1618:	448c3000 	mtc1	t4,$f6
    161c:	440f2000 	mfc1	t7,$f4
    1620:	4600910d 	trunc.w.s	$f4,$f18
    1624:	afae0010 	sw	t6,16(sp)
    1628:	000fc400 	sll	t8,t7,0x10
    162c:	46803220 	cvt.s.w	$f8,$f6
    1630:	0018cc03 	sra	t9,t8,0x10
    1634:	44993000 	mtc1	t9,$f6
    1638:	440a2000 	mfc1	t2,$f4
    163c:	241900ff 	li	t9,255
    1640:	241800ff 	li	t8,255
    1644:	46004281 	sub.s	$f10,$f8,$f0
    1648:	000a5c00 	sll	t3,t2,0x10
    164c:	000b6403 	sra	t4,t3,0x10
    1650:	46803220 	cvt.s.w	$f8,$f6
    1654:	448c3000 	mtc1	t4,$f6
    1658:	240f00ff 	li	t7,255
    165c:	afaf0014 	sw	t7,20(sp)
    1660:	afb80018 	sw	t8,24(sp)
    1664:	4600540d 	trunc.w.s	$f16,$f10
    1668:	afb9001c 	sw	t9,28(sp)
    166c:	46004281 	sub.s	$f10,$f8,$f0
    1670:	44058000 	mfc1	a1,$f16
    1674:	46803220 	cvt.s.w	$f8,$f6
    1678:	00052c00 	sll	a1,a1,0x10
    167c:	00052c03 	sra	a1,a1,0x10
    1680:	4600540d 	trunc.w.s	$f16,$f10
    1684:	46004281 	sub.s	$f10,$f8,$f0
    1688:	44068000 	mfc1	a2,$f16
    168c:	4600540d 	trunc.w.s	$f16,$f10
    1690:	00063400 	sll	a2,a2,0x10
    1694:	00063403 	sra	a2,a2,0x10
    1698:	44078000 	mfc1	a3,$f16
    169c:	00000000 	nop
    16a0:	00073c00 	sll	a3,a3,0x10
    16a4:	0c000000 	jal	0 <func_80998780>
    16a8:	00073c03 	sra	a3,a3,0x10
    16ac:	3c010000 	lui	at,0x0
    16b0:	c4320000 	lwc1	$f18,0(at)
    16b4:	262400bc 	addiu	a0,s1,188
    16b8:	24050000 	li	a1,0
    16bc:	3c063f00 	lui	a2,0x3f00
    16c0:	3c074000 	lui	a3,0x4000
    16c4:	0c000000 	jal	0 <func_80998780>
    16c8:	e7b20010 	swc1	$f18,16(sp)
    16cc:	8fbf0034 	lw	ra,52(sp)
    16d0:	8fb00028 	lw	s0,40(sp)
    16d4:	8fb1002c 	lw	s1,44(sp)
    16d8:	8fb20030 	lw	s2,48(sp)
    16dc:	03e00008 	jr	ra
    16e0:	27bd0038 	addiu	sp,sp,56

000016e4 <func_80999E64>:
    16e4:	27bdffe0 	addiu	sp,sp,-32
    16e8:	afbf001c 	sw	ra,28(sp)
    16ec:	afb00018 	sw	s0,24(sp)
    16f0:	afa50024 	sw	a1,36(sp)
    16f4:	00808025 	move	s0,a0
    16f8:	0c000000 	jal	0 <func_80998780>
    16fc:	24052025 	li	a1,8229
    1700:	8e0e01ec 	lw	t6,492(s0)
    1704:	02002025 	move	a0,s0
    1708:	51c00011 	beqzl	t6,1750 <func_80999E64+0x6c>
    170c:	8fbf001c 	lw	ra,28(sp)
    1710:	0c000000 	jal	0 <func_80998780>
    1714:	8fa50024 	lw	a1,36(sp)
    1718:	1040000c 	beqz	v0,174c <func_80999E64+0x68>
    171c:	240f0002 	li	t7,2
    1720:	ae0f01ec 	sw	t7,492(s0)
    1724:	8fa40024 	lw	a0,36(sp)
    1728:	02002825 	move	a1,s0
    172c:	0c000000 	jal	0 <func_80998780>
    1730:	2406000a 	li	a2,10
    1734:	24180001 	li	t8,1
    1738:	3c050000 	lui	a1,0x0
    173c:	a61801b2 	sh	t8,434(s0)
    1740:	24a50000 	addiu	a1,a1,0
    1744:	0c000000 	jal	0 <func_80998780>
    1748:	02002025 	move	a0,s0
    174c:	8fbf001c 	lw	ra,28(sp)
    1750:	8fb00018 	lw	s0,24(sp)
    1754:	27bd0020 	addiu	sp,sp,32
    1758:	03e00008 	jr	ra
    175c:	00000000 	nop

00001760 <func_80999EE0>:
    1760:	27bdffc0 	addiu	sp,sp,-64
    1764:	afbf001c 	sw	ra,28(sp)
    1768:	afb10018 	sw	s1,24(sp)
    176c:	afb00014 	sw	s0,20(sp)
    1770:	8cae1c44 	lw	t6,7236(a1)
    1774:	00808825 	move	s1,a0
    1778:	00a08025 	move	s0,a1
    177c:	afae0024 	sw	t6,36(sp)
    1780:	8c8f01ec 	lw	t7,492(a0)
    1784:	24010003 	li	at,3
    1788:	00a02025 	move	a0,a1
    178c:	15e10030 	bne	t7,at,1850 <func_80999EE0+0xf0>
    1790:	00002825 	move	a1,zero
    1794:	0c000000 	jal	0 <func_80998780>
    1798:	24060001 	li	a2,1
    179c:	0c000000 	jal	0 <func_80998780>
    17a0:	02002025 	move	a0,s0
    17a4:	3c030000 	lui	v1,0x0
    17a8:	24630000 	addiu	v1,v1,0
    17ac:	a4620000 	sh	v0,0(v1)
    17b0:	84650000 	lh	a1,0(v1)
    17b4:	02002025 	move	a0,s0
    17b8:	0c000000 	jal	0 <func_80998780>
    17bc:	24060007 	li	a2,7
    17c0:	3c014244 	lui	at,0x4244
    17c4:	c6240024 	lwc1	$f4,36(s1)
    17c8:	44813000 	mtc1	at,$f6
    17cc:	8fa30024 	lw	v1,36(sp)
    17d0:	e7a40034 	swc1	$f4,52(sp)
    17d4:	e7a60038 	swc1	$f6,56(sp)
    17d8:	c628002c 	lwc1	$f8,44(s1)
    17dc:	3c01422c 	lui	at,0x422c
    17e0:	44818000 	mtc1	at,$f16
    17e4:	e7a8003c 	swc1	$f8,60(sp)
    17e8:	c46a0024 	lwc1	$f10,36(v1)
    17ec:	e7b0002c 	swc1	$f16,44(sp)
    17f0:	3c050000 	lui	a1,0x0
    17f4:	e7aa0028 	swc1	$f10,40(sp)
    17f8:	c472002c 	lwc1	$f18,44(v1)
    17fc:	84a50000 	lh	a1,0(a1)
    1800:	02002025 	move	a0,s0
    1804:	27a60034 	addiu	a2,sp,52
    1808:	27a70028 	addiu	a3,sp,40
    180c:	0c000000 	jal	0 <func_80998780>
    1810:	e7b20030 	swc1	$f18,48(sp)
    1814:	3c050000 	lui	a1,0x0
    1818:	84a50000 	lh	a1,0(a1)
    181c:	02002025 	move	a0,s0
    1820:	0c000000 	jal	0 <func_80998780>
    1824:	3c0642b4 	lui	a2,0x42b4
    1828:	24180004 	li	t8,4
    182c:	ae3801ec 	sw	t8,492(s1)
    1830:	02002025 	move	a0,s0
    1834:	24054022 	li	a1,16418
    1838:	0c000000 	jal	0 <func_80998780>
    183c:	00003025 	move	a2,zero
    1840:	3c050000 	lui	a1,0x0
    1844:	24a50000 	addiu	a1,a1,0
    1848:	0c000000 	jal	0 <func_80998780>
    184c:	02202025 	move	a0,s1
    1850:	8fbf001c 	lw	ra,28(sp)
    1854:	8fb00014 	lw	s0,20(sp)
    1858:	8fb10018 	lw	s1,24(sp)
    185c:	03e00008 	jr	ra
    1860:	27bd0040 	addiu	sp,sp,64

00001864 <func_80999FE4>:
    1864:	27bdffe0 	addiu	sp,sp,-32
    1868:	afbf001c 	sw	ra,28(sp)
    186c:	afa40020 	sw	a0,32(sp)
    1870:	afa50024 	sw	a1,36(sp)
    1874:	0c000000 	jal	0 <func_80998780>
    1878:	24a420d8 	addiu	a0,a1,8408
    187c:	14400022 	bnez	v0,1908 <func_80999FE4+0xa4>
    1880:	3c070000 	lui	a3,0x0
    1884:	8fa50020 	lw	a1,32(sp)
    1888:	3c0e0000 	lui	t6,0x0
    188c:	24e70000 	addiu	a3,a3,0
    1890:	25ce0000 	addiu	t6,t6,0
    1894:	afae0014 	sw	t6,20(sp)
    1898:	afa70010 	sw	a3,16(sp)
    189c:	24042826 	li	a0,10278
    18a0:	24060004 	li	a2,4
    18a4:	0c000000 	jal	0 <func_80998780>
    18a8:	24a500e4 	addiu	a1,a1,228
    18ac:	8fa40024 	lw	a0,36(sp)
    18b0:	240525e9 	li	a1,9705
    18b4:	240603e7 	li	a2,999
    18b8:	8fa70020 	lw	a3,32(sp)
    18bc:	0c000000 	jal	0 <func_80998780>
    18c0:	afa00010 	sw	zero,16(sp)
    18c4:	3c060000 	lui	a2,0x0
    18c8:	84c60000 	lh	a2,0(a2)
    18cc:	8fa40024 	lw	a0,36(sp)
    18d0:	0c000000 	jal	0 <func_80998780>
    18d4:	2405ffff 	li	a1,-1
    18d8:	3c050000 	lui	a1,0x0
    18dc:	84a50000 	lh	a1,0(a1)
    18e0:	8fa40024 	lw	a0,36(sp)
    18e4:	0c000000 	jal	0 <func_80998780>
    18e8:	24060001 	li	a2,1
    18ec:	8fb80020 	lw	t8,32(sp)
    18f0:	240f0005 	li	t7,5
    18f4:	3c050000 	lui	a1,0x0
    18f8:	af0f01ec 	sw	t7,492(t8)
    18fc:	8fa40020 	lw	a0,32(sp)
    1900:	0c000000 	jal	0 <func_80998780>
    1904:	24a50000 	addiu	a1,a1,0
    1908:	8fbf001c 	lw	ra,28(sp)
    190c:	27bd0020 	addiu	sp,sp,32
    1910:	03e00008 	jr	ra
    1914:	00000000 	nop

00001918 <func_8099A098>:
    1918:	27bdffc8 	addiu	sp,sp,-56
    191c:	afbf0034 	sw	ra,52(sp)
    1920:	afb20030 	sw	s2,48(sp)
    1924:	afb1002c 	sw	s1,44(sp)
    1928:	afb00028 	sw	s0,40(sp)
    192c:	848201b2 	lh	v0,434(a0)
    1930:	00808025 	move	s0,a0
    1934:	00a09025 	move	s2,a1
    1938:	2841003d 	slti	at,v0,61
    193c:	1420000f 	bnez	at,197c <func_8099A098+0x64>
    1940:	8cb11c44 	lw	s1,7236(a1)
    1944:	3c014120 	lui	at,0x4120
    1948:	44813000 	mtc1	at,$f6
    194c:	c6240060 	lwc1	$f4,96(s1)
    1950:	3c010000 	lui	at,0x0
    1954:	4606203c 	c.lt.s	$f4,$f6
    1958:	00000000 	nop
    195c:	45020005 	bc1fl	1974 <func_8099A098+0x5c>
    1960:	44805000 	mtc1	zero,$f10
    1964:	c4280000 	lwc1	$f8,0(at)
    1968:	10000006 	b	1984 <func_8099A098+0x6c>
    196c:	e628006c 	swc1	$f8,108(s1)
    1970:	44805000 	mtc1	zero,$f10
    1974:	10000003 	b	1984 <func_8099A098+0x6c>
    1978:	e62a006c 	swc1	$f10,108(s1)
    197c:	244e0001 	addiu	t6,v0,1
    1980:	a60e01b2 	sh	t6,434(s0)
    1984:	3c010000 	lui	at,0x0
    1988:	c4300000 	lwc1	$f16,0(at)
    198c:	3c063e4c 	lui	a2,0x3e4c
    1990:	34c6cccd 	ori	a2,a2,0xcccd
    1994:	260401a0 	addiu	a0,s0,416
    1998:	24050000 	li	a1,0
    199c:	3c0740c0 	lui	a3,0x40c0
    19a0:	0c000000 	jal	0 <func_80998780>
    19a4:	e7b00010 	swc1	$f16,16(sp)
    19a8:	960f0192 	lhu	t7,402(s0)
    19ac:	3c190000 	lui	t9,0x0
    19b0:	3c020000 	lui	v0,0x0
    19b4:	25f80001 	addiu	t8,t7,1
    19b8:	a6180192 	sh	t8,402(s0)
    19bc:	87390000 	lh	t9,0(t9)
    19c0:	3308ffff 	andi	t0,t8,0xffff
    19c4:	24420000 	addiu	v0,v0,0
    19c8:	0328082a 	slt	at,t9,t0
    19cc:	5020001c 	beqzl	at,1a40 <func_8099A098+0x128>
    19d0:	3c063c23 	lui	a2,0x3c23
    19d4:	94491412 	lhu	t1,5138(v0)
    19d8:	3401ffef 	li	at,0xffef
    19dc:	55210018 	bnel	t1,at,1a40 <func_8099A098+0x128>
    19e0:	3c063c23 	lui	a2,0x3c23
    19e4:	944a0eda 	lhu	t2,3802(v0)
    19e8:	02402025 	move	a0,s2
    19ec:	2405006e 	li	a1,110
    19f0:	354b0080 	ori	t3,t2,0x80
    19f4:	0c000000 	jal	0 <func_80998780>
    19f8:	a44b0eda 	sh	t3,3802(v0)
    19fc:	3c010001 	lui	at,0x1
    1a00:	00320821 	addu	at,at,s2
    1a04:	240c010e 	li	t4,270
    1a08:	3c020000 	lui	v0,0x0
    1a0c:	a42c1e1a 	sh	t4,7706(at)
    1a10:	24420000 	addiu	v0,v0,0
    1a14:	340dfff0 	li	t5,0xfff0
    1a18:	3c010001 	lui	at,0x1
    1a1c:	a44d1412 	sh	t5,5138(v0)
    1a20:	00320821 	addu	at,at,s2
    1a24:	240e0014 	li	t6,20
    1a28:	a02e1e15 	sb	t6,7701(at)
    1a2c:	3c010001 	lui	at,0x1
    1a30:	00320821 	addu	at,at,s2
    1a34:	240f0007 	li	t7,7
    1a38:	a02f1e5e 	sb	t7,7774(at)
    1a3c:	3c063c23 	lui	a2,0x3c23
    1a40:	34c6d70a 	ori	a2,a2,0xd70a
    1a44:	26040194 	addiu	a0,s0,404
    1a48:	0c000000 	jal	0 <func_80998780>
    1a4c:	3c054000 	lui	a1,0x4000
    1a50:	3c063ca3 	lui	a2,0x3ca3
    1a54:	34c6d70a 	ori	a2,a2,0xd70a
    1a58:	26040198 	addiu	a0,s0,408
    1a5c:	0c000000 	jal	0 <func_80998780>
    1a60:	3c054120 	lui	a1,0x4120
    1a64:	c6320024 	lwc1	$f18,36(s1)
    1a68:	3c014120 	lui	at,0x4120
    1a6c:	44810000 	mtc1	at,$f0
    1a70:	4600910d 	trunc.w.s	$f4,$f18
    1a74:	c6320028 	lwc1	$f18,40(s1)
    1a78:	240b00eb 	li	t3,235
    1a7c:	260401c8 	addiu	a0,s0,456
    1a80:	44192000 	mfc1	t9,$f4
    1a84:	4600910d 	trunc.w.s	$f4,$f18
    1a88:	c632002c 	lwc1	$f18,44(s1)
    1a8c:	00194400 	sll	t0,t9,0x10
    1a90:	00084c03 	sra	t1,t0,0x10
    1a94:	44893000 	mtc1	t1,$f6
    1a98:	440c2000 	mfc1	t4,$f4
    1a9c:	4600910d 	trunc.w.s	$f4,$f18
    1aa0:	afab0010 	sw	t3,16(sp)
    1aa4:	000c6c00 	sll	t5,t4,0x10
    1aa8:	46803220 	cvt.s.w	$f8,$f6
    1aac:	000d7403 	sra	t6,t5,0x10
    1ab0:	448e3000 	mtc1	t6,$f6
    1ab4:	44192000 	mfc1	t9,$f4
    1ab8:	240e00ff 	li	t6,255
    1abc:	240d00ff 	li	t5,255
    1ac0:	46004280 	add.s	$f10,$f8,$f0
    1ac4:	00194400 	sll	t0,t9,0x10
    1ac8:	00084c03 	sra	t1,t0,0x10
    1acc:	46803220 	cvt.s.w	$f8,$f6
    1ad0:	44893000 	mtc1	t1,$f6
    1ad4:	240c00ff 	li	t4,255
    1ad8:	afac0014 	sw	t4,20(sp)
    1adc:	afad0018 	sw	t5,24(sp)
    1ae0:	4600540d 	trunc.w.s	$f16,$f10
    1ae4:	afae001c 	sw	t6,28(sp)
    1ae8:	46004280 	add.s	$f10,$f8,$f0
    1aec:	44058000 	mfc1	a1,$f16
    1af0:	46803220 	cvt.s.w	$f8,$f6
    1af4:	00052c00 	sll	a1,a1,0x10
    1af8:	00052c03 	sra	a1,a1,0x10
    1afc:	4600540d 	trunc.w.s	$f16,$f10
    1b00:	46004280 	add.s	$f10,$f8,$f0
    1b04:	44068000 	mfc1	a2,$f16
    1b08:	4600540d 	trunc.w.s	$f16,$f10
    1b0c:	00063400 	sll	a2,a2,0x10
    1b10:	00063403 	sra	a2,a2,0x10
    1b14:	44078000 	mfc1	a3,$f16
    1b18:	00000000 	nop
    1b1c:	00073c00 	sll	a3,a3,0x10
    1b20:	0c000000 	jal	0 <func_80998780>
    1b24:	00073c03 	sra	a3,a3,0x10
    1b28:	c6320024 	lwc1	$f18,36(s1)
    1b2c:	3c014120 	lui	at,0x4120
    1b30:	44810000 	mtc1	at,$f0
    1b34:	4600910d 	trunc.w.s	$f4,$f18
    1b38:	c6320028 	lwc1	$f18,40(s1)
    1b3c:	240a00eb 	li	t2,235
    1b40:	260401dc 	addiu	a0,s0,476
    1b44:	44182000 	mfc1	t8,$f4
    1b48:	4600910d 	trunc.w.s	$f4,$f18
    1b4c:	c632002c 	lwc1	$f18,44(s1)
    1b50:	0018cc00 	sll	t9,t8,0x10
    1b54:	00194403 	sra	t0,t9,0x10
    1b58:	44883000 	mtc1	t0,$f6
    1b5c:	440b2000 	mfc1	t3,$f4
    1b60:	4600910d 	trunc.w.s	$f4,$f18
    1b64:	afaa0010 	sw	t2,16(sp)
    1b68:	000b6400 	sll	t4,t3,0x10
    1b6c:	46803220 	cvt.s.w	$f8,$f6
    1b70:	000c6c03 	sra	t5,t4,0x10
    1b74:	448d3000 	mtc1	t5,$f6
    1b78:	44182000 	mfc1	t8,$f4
    1b7c:	240d00ff 	li	t5,255
    1b80:	240c00ff 	li	t4,255
    1b84:	46004281 	sub.s	$f10,$f8,$f0
    1b88:	0018cc00 	sll	t9,t8,0x10
    1b8c:	00194403 	sra	t0,t9,0x10
    1b90:	46803220 	cvt.s.w	$f8,$f6
    1b94:	44883000 	mtc1	t0,$f6
    1b98:	240b00ff 	li	t3,255
    1b9c:	afab0014 	sw	t3,20(sp)
    1ba0:	afac0018 	sw	t4,24(sp)
    1ba4:	4600540d 	trunc.w.s	$f16,$f10
    1ba8:	afad001c 	sw	t5,28(sp)
    1bac:	46004281 	sub.s	$f10,$f8,$f0
    1bb0:	44058000 	mfc1	a1,$f16
    1bb4:	46803220 	cvt.s.w	$f8,$f6
    1bb8:	00052c00 	sll	a1,a1,0x10
    1bbc:	00052c03 	sra	a1,a1,0x10
    1bc0:	4600540d 	trunc.w.s	$f16,$f10
    1bc4:	46004281 	sub.s	$f10,$f8,$f0
    1bc8:	44068000 	mfc1	a2,$f16
    1bcc:	4600540d 	trunc.w.s	$f16,$f10
    1bd0:	00063400 	sll	a2,a2,0x10
    1bd4:	00063403 	sra	a2,a2,0x10
    1bd8:	44078000 	mfc1	a3,$f16
    1bdc:	00000000 	nop
    1be0:	00073c00 	sll	a3,a3,0x10
    1be4:	0c000000 	jal	0 <func_80998780>
    1be8:	00073c03 	sra	a3,a3,0x10
    1bec:	3c010000 	lui	at,0x0
    1bf0:	c4320000 	lwc1	$f18,0(at)
    1bf4:	260400bc 	addiu	a0,s0,188
    1bf8:	24050000 	li	a1,0
    1bfc:	3c063f00 	lui	a2,0x3f00
    1c00:	3c074000 	lui	a3,0x4000
    1c04:	0c000000 	jal	0 <func_80998780>
    1c08:	e7b20010 	swc1	$f18,16(sp)
    1c0c:	8fbf0034 	lw	ra,52(sp)
    1c10:	8fb00028 	lw	s0,40(sp)
    1c14:	8fb1002c 	lw	s1,44(sp)
    1c18:	8fb20030 	lw	s2,48(sp)
    1c1c:	03e00008 	jr	ra
    1c20:	27bd0038 	addiu	sp,sp,56

00001c24 <func_8099A3A4>:
    1c24:	27bdffd8 	addiu	sp,sp,-40
    1c28:	afbf0024 	sw	ra,36(sp)
    1c2c:	afb00020 	sw	s0,32(sp)
    1c30:	afa5002c 	sw	a1,44(sp)
    1c34:	00808025 	move	s0,a0
    1c38:	0c000000 	jal	0 <func_80998780>
    1c3c:	24052025 	li	a1,8229
    1c40:	3c010000 	lui	at,0x0
    1c44:	c4240000 	lwc1	$f4,0(at)
    1c48:	3c063e4c 	lui	a2,0x3e4c
    1c4c:	34c6cccd 	ori	a2,a2,0xcccd
    1c50:	260401a0 	addiu	a0,s0,416
    1c54:	3c05437f 	lui	a1,0x437f
    1c58:	3c074000 	lui	a3,0x4000
    1c5c:	0c000000 	jal	0 <func_80998780>
    1c60:	e7a40010 	swc1	$f4,16(sp)
    1c64:	3c010000 	lui	at,0x0
    1c68:	c4260000 	lwc1	$f6,0(at)
    1c6c:	3c063e4c 	lui	a2,0x3e4c
    1c70:	34c6cccd 	ori	a2,a2,0xcccd
    1c74:	260401a4 	addiu	a0,s0,420
    1c78:	3c05437f 	lui	a1,0x437f
    1c7c:	3c074000 	lui	a3,0x4000
    1c80:	0c000000 	jal	0 <func_80998780>
    1c84:	e7a60010 	swc1	$f6,16(sp)
    1c88:	860201ac 	lh	v0,428(s0)
    1c8c:	02002025 	move	a0,s0
    1c90:	3c050000 	lui	a1,0x0
    1c94:	2841000a 	slti	at,v0,10
    1c98:	10200002 	beqz	at,1ca4 <func_8099A3A4+0x80>
    1c9c:	244e0002 	addiu	t6,v0,2
    1ca0:	a60e01ac 	sh	t6,428(s0)
    1ca4:	860201ae 	lh	v0,430(s0)
    1ca8:	28410078 	slti	at,v0,120
    1cac:	10200002 	beqz	at,1cb8 <func_8099A3A4+0x94>
    1cb0:	244f0004 	addiu	t7,v0,4
    1cb4:	a60f01ae 	sh	t7,430(s0)
    1cb8:	860201b0 	lh	v0,432(s0)
    1cbc:	284100e6 	slti	at,v0,230
    1cc0:	10200003 	beqz	at,1cd0 <func_8099A3A4+0xac>
    1cc4:	24580004 	addiu	t8,v0,4
    1cc8:	10000003 	b	1cd8 <func_8099A3A4+0xb4>
    1ccc:	a61801b0 	sh	t8,432(s0)
    1cd0:	0c000000 	jal	0 <func_80998780>
    1cd4:	24a50000 	addiu	a1,a1,0
    1cd8:	8fbf0024 	lw	ra,36(sp)
    1cdc:	8fb00020 	lw	s0,32(sp)
    1ce0:	27bd0028 	addiu	sp,sp,40
    1ce4:	03e00008 	jr	ra
    1ce8:	00000000 	nop

00001cec <func_8099A46C>:
    1cec:	27bdffd0 	addiu	sp,sp,-48
    1cf0:	afbf0024 	sw	ra,36(sp)
    1cf4:	afb00020 	sw	s0,32(sp)
    1cf8:	afa50034 	sw	a1,52(sp)
    1cfc:	00808025 	move	s0,a0
    1d00:	0c000000 	jal	0 <func_80998780>
    1d04:	24052025 	li	a1,8229
    1d08:	02002025 	move	a0,s0
    1d0c:	0c000000 	jal	0 <func_80998780>
    1d10:	8fa50034 	lw	a1,52(sp)
    1d14:	10400017 	beqz	v0,1d74 <func_8099A46C+0x88>
    1d18:	8fa40034 	lw	a0,52(sp)
    1d1c:	8c8e1c44 	lw	t6,7236(a0)
    1d20:	afa00010 	sw	zero,16(sp)
    1d24:	240525e8 	li	a1,9704
    1d28:	240603e7 	li	a2,999
    1d2c:	02003825 	move	a3,s0
    1d30:	0c000000 	jal	0 <func_80998780>
    1d34:	afae002c 	sw	t6,44(sp)
    1d38:	8fa40034 	lw	a0,52(sp)
    1d3c:	02002825 	move	a1,s0
    1d40:	0c000000 	jal	0 <func_80998780>
    1d44:	2406000a 	li	a2,10
    1d48:	8fa3002c 	lw	v1,44(sp)
    1d4c:	c6040024 	lwc1	$f4,36(s0)
    1d50:	240f0014 	li	t7,20
    1d54:	3c050000 	lui	a1,0x0
    1d58:	e4640450 	swc1	$f4,1104(v1)
    1d5c:	c606002c 	lwc1	$f6,44(s0)
    1d60:	24a50000 	addiu	a1,a1,0
    1d64:	02002025 	move	a0,s0
    1d68:	e4660458 	swc1	$f6,1112(v1)
    1d6c:	0c000000 	jal	0 <func_80998780>
    1d70:	a60f01b2 	sh	t7,434(s0)
    1d74:	8fbf0024 	lw	ra,36(sp)
    1d78:	8fb00020 	lw	s0,32(sp)
    1d7c:	27bd0030 	addiu	sp,sp,48
    1d80:	03e00008 	jr	ra
    1d84:	00000000 	nop

00001d88 <func_8099A508>:
    1d88:	27bdffc8 	addiu	sp,sp,-56
    1d8c:	afbf002c 	sw	ra,44(sp)
    1d90:	afb00028 	sw	s0,40(sp)
    1d94:	848201b2 	lh	v0,434(a0)
    1d98:	00808025 	move	s0,a0
    1d9c:	8ca31c44 	lw	v1,7236(a1)
    1da0:	10400004 	beqz	v0,1db4 <func_8099A508+0x2c>
    1da4:	3c070000 	lui	a3,0x0
    1da8:	244effff 	addiu	t6,v0,-1
    1dac:	1000002a 	b	1e58 <func_8099A508+0xd0>
    1db0:	a48e01b2 	sh	t6,434(a0)
    1db4:	3c0f0000 	lui	t7,0x0
    1db8:	24e70000 	addiu	a3,a3,0
    1dbc:	25ef0000 	addiu	t7,t7,0
    1dc0:	afaf0014 	sw	t7,20(sp)
    1dc4:	afa70010 	sw	a3,16(sp)
    1dc8:	24042826 	li	a0,10278
    1dcc:	246500e4 	addiu	a1,v1,228
    1dd0:	0c000000 	jal	0 <func_80998780>
    1dd4:	24060004 	li	a2,4
    1dd8:	3c040600 	lui	a0,0x600
    1ddc:	0c000000 	jal	0 <func_80998780>
    1de0:	24841374 	addiu	a0,a0,4980
    1de4:	3c040600 	lui	a0,0x600
    1de8:	24841374 	addiu	a0,a0,4980
    1dec:	0c000000 	jal	0 <func_80998780>
    1df0:	a7a20030 	sh	v0,48(sp)
    1df4:	87b80030 	lh	t8,48(sp)
    1df8:	44823000 	mtc1	v0,$f6
    1dfc:	3c014220 	lui	at,0x4220
    1e00:	44982000 	mtc1	t8,$f4
    1e04:	46803220 	cvt.s.w	$f8,$f6
    1e08:	44815000 	mtc1	at,$f10
    1e0c:	3c050600 	lui	a1,0x600
    1e10:	24190002 	li	t9,2
    1e14:	24080001 	li	t0,1
    1e18:	46802120 	cvt.s.w	$f4,$f4
    1e1c:	afa8001c 	sw	t0,28(sp)
    1e20:	afb90014 	sw	t9,20(sp)
    1e24:	24a51374 	addiu	a1,a1,4980
    1e28:	e7a80010 	swc1	$f8,16(sp)
    1e2c:	2604014c 	addiu	a0,s0,332
    1e30:	44072000 	mfc1	a3,$f4
    1e34:	3c063f80 	lui	a2,0x3f80
    1e38:	0c000000 	jal	0 <func_80998780>
    1e3c:	e7aa0018 	swc1	$f10,24(sp)
    1e40:	24090032 	li	t1,50
    1e44:	3c050000 	lui	a1,0x0
    1e48:	a60901b2 	sh	t1,434(s0)
    1e4c:	24a50000 	addiu	a1,a1,0
    1e50:	0c000000 	jal	0 <func_80998780>
    1e54:	02002025 	move	a0,s0
    1e58:	8fbf002c 	lw	ra,44(sp)
    1e5c:	8fb00028 	lw	s0,40(sp)
    1e60:	27bd0038 	addiu	sp,sp,56
    1e64:	03e00008 	jr	ra
    1e68:	00000000 	nop

00001e6c <func_8099A5EC>:
    1e6c:	27bdffc8 	addiu	sp,sp,-56
    1e70:	afbf002c 	sw	ra,44(sp)
    1e74:	afb10028 	sw	s1,40(sp)
    1e78:	afb00024 	sw	s0,36(sp)
    1e7c:	848201b2 	lh	v0,434(a0)
    1e80:	00a08025 	move	s0,a1
    1e84:	00808825 	move	s1,a0
    1e88:	10400004 	beqz	v0,1e9c <func_8099A5EC+0x30>
    1e8c:	8ca81c44 	lw	t0,7236(a1)
    1e90:	244effff 	addiu	t6,v0,-1
    1e94:	a48e01b2 	sh	t6,434(a0)
    1e98:	848201b2 	lh	v0,434(a0)
    1e9c:	2841001f 	slti	at,v0,31
    1ea0:	10200042 	beqz	at,1fac <func_8099A5EC+0x140>
    1ea4:	3c030000 	lui	v1,0x0
    1ea8:	24630000 	addiu	v1,v1,0
    1eac:	8c6f0004 	lw	t7,4(v1)
    1eb0:	25040024 	addiu	a0,t0,36
    1eb4:	3c063f00 	lui	a2,0x3f00
    1eb8:	15e00003 	bnez	t7,1ec8 <func_8099A5EC+0x5c>
    1ebc:	3c073dcc 	lui	a3,0x3dcc
    1ec0:	10000002 	b	1ecc <func_8099A5EC+0x60>
    1ec4:	24020023 	li	v0,35
    1ec8:	2402002d 	li	v0,45
    1ecc:	44822000 	mtc1	v0,$f4
    1ed0:	34e7cccd 	ori	a3,a3,0xcccd
    1ed4:	04410005 	bgez	v0,1eec <func_8099A5EC+0x80>
    1ed8:	468021a0 	cvt.s.w	$f6,$f4
    1edc:	3c014f80 	lui	at,0x4f80
    1ee0:	44814000 	mtc1	at,$f8
    1ee4:	00000000 	nop
    1ee8:	46083180 	add.s	$f6,$f6,$f8
    1eec:	c50a0028 	lwc1	$f10,40(t0)
    1ef0:	c6300028 	lwc1	$f16,40(s1)
    1ef4:	3c010000 	lui	at,0x0
    1ef8:	46105481 	sub.s	$f18,$f10,$f16
    1efc:	4606903e 	c.le.s	$f18,$f6
    1f00:	00000000 	nop
    1f04:	45020005 	bc1fl	1f1c <func_8099A5EC+0xb0>
    1f08:	44804000 	mtc1	zero,$f8
    1f0c:	c4240000 	lwc1	$f4,0(at)
    1f10:	10000005 	b	1f28 <func_8099A5EC+0xbc>
    1f14:	e504006c 	swc1	$f4,108(t0)
    1f18:	44804000 	mtc1	zero,$f8
    1f1c:	44805000 	mtc1	zero,$f10
    1f20:	e508006c 	swc1	$f8,108(t0)
    1f24:	e50a0060 	swc1	$f10,96(t0)
    1f28:	863801b2 	lh	t8,434(s1)
    1f2c:	1f00000e 	bgtz	t8,1f68 <func_8099A5EC+0xfc>
    1f30:	00000000 	nop
    1f34:	862201b8 	lh	v0,440(s1)
    1f38:	28410fa0 	slti	at,v0,4000
    1f3c:	10200003 	beqz	at,1f4c <func_8099A5EC+0xe0>
    1f40:	24590028 	addiu	t9,v0,40
    1f44:	a63901b8 	sh	t9,440(s1)
    1f48:	862201b8 	lh	v0,440(s1)
    1f4c:	85090032 	lh	t1,50(t0)
    1f50:	850b00b6 	lh	t3,182(t0)
    1f54:	01225023 	subu	t2,t1,v0
    1f58:	a50a0032 	sh	t2,50(t0)
    1f5c:	862c01b8 	lh	t4,440(s1)
    1f60:	016c6823 	subu	t5,t3,t4
    1f64:	a50d00b6 	sh	t5,182(t0)
    1f68:	3c010000 	lui	at,0x0
    1f6c:	c4300000 	lwc1	$f16,0(at)
    1f70:	8e250024 	lw	a1,36(s1)
    1f74:	afa80034 	sw	t0,52(sp)
    1f78:	0c000000 	jal	0 <func_80998780>
    1f7c:	e7b00010 	swc1	$f16,16(sp)
    1f80:	3c010000 	lui	at,0x0
    1f84:	8fa80034 	lw	t0,52(sp)
    1f88:	c4260000 	lwc1	$f6,0(at)
    1f8c:	8e25002c 	lw	a1,44(s1)
    1f90:	3c073dcc 	lui	a3,0x3dcc
    1f94:	34e7cccd 	ori	a3,a3,0xcccd
    1f98:	3c063f00 	lui	a2,0x3f00
    1f9c:	2504002c 	addiu	a0,t0,44
    1fa0:	0c000000 	jal	0 <func_80998780>
    1fa4:	e7a60010 	swc1	$f6,16(sp)
    1fa8:	8fa80034 	lw	t0,52(sp)
    1fac:	962e0192 	lhu	t6,402(s1)
    1fb0:	3c180000 	lui	t8,0x0
    1fb4:	3c030000 	lui	v1,0x0
    1fb8:	25cf0001 	addiu	t7,t6,1
    1fbc:	a62f0192 	sh	t7,402(s1)
    1fc0:	87180000 	lh	t8,0(t8)
    1fc4:	31e2ffff 	andi	v0,t7,0xffff
    1fc8:	24630000 	addiu	v1,v1,0
    1fcc:	0302082a 	slt	at,t8,v0
    1fd0:	502000c3 	beqzl	at,22e0 <func_8099A5EC+0x474>
    1fd4:	2841008d 	slti	at,v0,141
    1fd8:	94791412 	lhu	t9,5138(v1)
    1fdc:	3401ffef 	li	at,0xffef
    1fe0:	572100bf 	bnel	t9,at,22e0 <func_8099A5EC+0x474>
    1fe4:	2841008d 	slti	at,v0,141
    1fe8:	860200a4 	lh	v0,164(s0)
    1fec:	24010014 	li	at,20
    1ff0:	54410022 	bnel	v0,at,207c <func_8099A5EC+0x210>
    1ff4:	24010015 	li	at,21
    1ff8:	94620edc 	lhu	v0,3804(v1)
    1ffc:	02002025 	move	a0,s0
    2000:	24050066 	li	a1,102
    2004:	30490100 	andi	t1,v0,0x100
    2008:	1520000e 	bnez	t1,2044 <func_8099A5EC+0x1d8>
    200c:	344a0100 	ori	t2,v0,0x100
    2010:	a46a0edc 	sh	t2,3804(v1)
    2014:	0c000000 	jal	0 <func_80998780>
    2018:	afa80034 	sw	t0,52(sp)
    201c:	3c010001 	lui	at,0x1
    2020:	3c030000 	lui	v1,0x0
    2024:	8fa80034 	lw	t0,52(sp)
    2028:	00300821 	addu	at,at,s0
    202c:	240b006b 	li	t3,107
    2030:	24630000 	addiu	v1,v1,0
    2034:	a42b1e1a 	sh	t3,7706(at)
    2038:	a4601412 	sh	zero,5138(v1)
    203c:	1000009c 	b	22b0 <func_8099A5EC+0x444>
    2040:	a0601415 	sb	zero,5141(v1)
    2044:	8c6c0004 	lw	t4,4(v1)
    2048:	3c010001 	lui	at,0x1
    204c:	00300821 	addu	at,at,s0
    2050:	11800006 	beqz	t4,206c <func_8099A5EC+0x200>
    2054:	240e0608 	li	t6,1544
    2058:	3c010001 	lui	at,0x1
    205c:	00300821 	addu	at,at,s0
    2060:	240d0600 	li	t5,1536
    2064:	10000002 	b	2070 <func_8099A5EC+0x204>
    2068:	a42d1e1a 	sh	t5,7706(at)
    206c:	a42e1e1a 	sh	t6,7706(at)
    2070:	1000008f 	b	22b0 <func_8099A5EC+0x444>
    2074:	a4601412 	sh	zero,5138(v1)
    2078:	24010015 	li	at,21
    207c:	54410022 	bnel	v0,at,2108 <func_8099A5EC+0x29c>
    2080:	24010016 	li	at,22
    2084:	94620edc 	lhu	v0,3804(v1)
    2088:	02002025 	move	a0,s0
    208c:	24050067 	li	a1,103
    2090:	304f0200 	andi	t7,v0,0x200
    2094:	15e0000e 	bnez	t7,20d0 <func_8099A5EC+0x264>
    2098:	34580200 	ori	t8,v0,0x200
    209c:	a4780edc 	sh	t8,3804(v1)
    20a0:	0c000000 	jal	0 <func_80998780>
    20a4:	afa80034 	sw	t0,52(sp)
    20a8:	3c010001 	lui	at,0x1
    20ac:	3c030000 	lui	v1,0x0
    20b0:	8fa80034 	lw	t0,52(sp)
    20b4:	00300821 	addu	at,at,s0
    20b8:	241900db 	li	t9,219
    20bc:	24630000 	addiu	v1,v1,0
    20c0:	a4391e1a 	sh	t9,7706(at)
    20c4:	3409fff3 	li	t1,0xfff3
    20c8:	10000079 	b	22b0 <func_8099A5EC+0x444>
    20cc:	a4691412 	sh	t1,5138(v1)
    20d0:	8c6a0004 	lw	t2,4(v1)
    20d4:	3c010001 	lui	at,0x1
    20d8:	00300821 	addu	at,at,s0
    20dc:	11400006 	beqz	t2,20f8 <func_8099A5EC+0x28c>
    20e0:	240c0564 	li	t4,1380
    20e4:	3c010001 	lui	at,0x1
    20e8:	00300821 	addu	at,at,s0
    20ec:	240b04f6 	li	t3,1270
    20f0:	10000002 	b	20fc <func_8099A5EC+0x290>
    20f4:	a42b1e1a 	sh	t3,7706(at)
    20f8:	a42c1e1a 	sh	t4,7706(at)
    20fc:	1000006c 	b	22b0 <func_8099A5EC+0x444>
    2100:	a4601412 	sh	zero,5138(v1)
    2104:	24010016 	li	at,22
    2108:	54410023 	bnel	v0,at,2198 <func_8099A5EC+0x32c>
    210c:	24010017 	li	at,23
    2110:	94620edc 	lhu	v0,3804(v1)
    2114:	02002025 	move	a0,s0
    2118:	24050068 	li	a1,104
    211c:	304d0400 	andi	t5,v0,0x400
    2120:	15a0000f 	bnez	t5,2160 <func_8099A5EC+0x2f4>
    2124:	344e0400 	ori	t6,v0,0x400
    2128:	a46e0edc 	sh	t6,3804(v1)
    212c:	0c000000 	jal	0 <func_80998780>
    2130:	afa80034 	sw	t0,52(sp)
    2134:	3c010001 	lui	at,0x1
    2138:	3c030000 	lui	v1,0x0
    213c:	8fa80034 	lw	t0,52(sp)
    2140:	00300821 	addu	at,at,s0
    2144:	240f006b 	li	t7,107
    2148:	24630000 	addiu	v1,v1,0
    214c:	a42f1e1a 	sh	t7,7706(at)
    2150:	24180002 	li	t8,2
    2154:	a4601412 	sh	zero,5138(v1)
    2158:	10000055 	b	22b0 <func_8099A5EC+0x444>
    215c:	a0781415 	sb	t8,5141(v1)
    2160:	8c790004 	lw	t9,4(v1)
    2164:	3c010001 	lui	at,0x1
    2168:	00300821 	addu	at,at,s0
    216c:	13200006 	beqz	t9,2188 <func_8099A5EC+0x31c>
    2170:	240a060c 	li	t2,1548
    2174:	3c010001 	lui	at,0x1
    2178:	00300821 	addu	at,at,s0
    217c:	24090604 	li	t1,1540
    2180:	10000002 	b	218c <func_8099A5EC+0x320>
    2184:	a4291e1a 	sh	t1,7706(at)
    2188:	a42a1e1a 	sh	t2,7706(at)
    218c:	10000048 	b	22b0 <func_8099A5EC+0x444>
    2190:	a4601412 	sh	zero,5138(v1)
    2194:	24010017 	li	at,23
    2198:	14410022 	bne	v0,at,2224 <func_8099A5EC+0x3b8>
    219c:	3c0b0000 	lui	t3,0x0
    21a0:	8d6b000c 	lw	t3,12(t3)
    21a4:	8c6c00a4 	lw	t4,164(v1)
    21a8:	02002025 	move	a0,s0
    21ac:	24050069 	li	a1,105
    21b0:	016c6824 	and	t5,t3,t4
    21b4:	55a0000f 	bnezl	t5,21f4 <func_8099A5EC+0x388>
    21b8:	8c780004 	lw	t8,4(v1)
    21bc:	0c000000 	jal	0 <func_80998780>
    21c0:	afa80034 	sw	t0,52(sp)
    21c4:	3c010001 	lui	at,0x1
    21c8:	3c030000 	lui	v1,0x0
    21cc:	8fa80034 	lw	t0,52(sp)
    21d0:	00300821 	addu	at,at,s0
    21d4:	240e006b 	li	t6,107
    21d8:	24630000 	addiu	v1,v1,0
    21dc:	a42e1e1a 	sh	t6,7706(at)
    21e0:	240f0003 	li	t7,3
    21e4:	a4601412 	sh	zero,5138(v1)
    21e8:	10000031 	b	22b0 <func_8099A5EC+0x444>
    21ec:	a06f1415 	sb	t7,5141(v1)
    21f0:	8c780004 	lw	t8,4(v1)
    21f4:	3c010001 	lui	at,0x1
    21f8:	00300821 	addu	at,at,s0
    21fc:	13000006 	beqz	t8,2218 <func_8099A5EC+0x3ac>
    2200:	24090610 	li	t1,1552
    2204:	3c010001 	lui	at,0x1
    2208:	00300821 	addu	at,at,s0
    220c:	241901f1 	li	t9,497
    2210:	10000002 	b	221c <func_8099A5EC+0x3b0>
    2214:	a4391e1a 	sh	t9,7706(at)
    2218:	a4291e1a 	sh	t1,7706(at)
    221c:	10000024 	b	22b0 <func_8099A5EC+0x444>
    2220:	a4601412 	sh	zero,5138(v1)
    2224:	24010018 	li	at,24
    2228:	14410021 	bne	v0,at,22b0 <func_8099A5EC+0x444>
    222c:	3c0a0000 	lui	t2,0x0
    2230:	8d4a0010 	lw	t2,16(t2)
    2234:	8c6b00a4 	lw	t3,164(v1)
    2238:	02002025 	move	a0,s0
    223c:	2405006a 	li	a1,106
    2240:	014b6024 	and	t4,t2,t3
    2244:	5580000f 	bnezl	t4,2284 <func_8099A5EC+0x418>
    2248:	8c6f0004 	lw	t7,4(v1)
    224c:	0c000000 	jal	0 <func_80998780>
    2250:	afa80034 	sw	t0,52(sp)
    2254:	3c010001 	lui	at,0x1
    2258:	3c030000 	lui	v1,0x0
    225c:	8fa80034 	lw	t0,52(sp)
    2260:	00300821 	addu	at,at,s0
    2264:	240d006b 	li	t5,107
    2268:	24630000 	addiu	v1,v1,0
    226c:	a42d1e1a 	sh	t5,7706(at)
    2270:	240e0004 	li	t6,4
    2274:	a4601412 	sh	zero,5138(v1)
    2278:	1000000d 	b	22b0 <func_8099A5EC+0x444>
    227c:	a06e1415 	sb	t6,5141(v1)
    2280:	8c6f0004 	lw	t7,4(v1)
    2284:	3c010001 	lui	at,0x1
    2288:	00300821 	addu	at,at,s0
    228c:	11e00006 	beqz	t7,22a8 <func_8099A5EC+0x43c>
    2290:	24190580 	li	t9,1408
    2294:	3c010001 	lui	at,0x1
    2298:	00300821 	addu	at,at,s0
    229c:	24180568 	li	t8,1384
    22a0:	10000002 	b	22ac <func_8099A5EC+0x440>
    22a4:	a4381e1a 	sh	t8,7706(at)
    22a8:	a4391e1a 	sh	t9,7706(at)
    22ac:	a4601412 	sh	zero,5138(v1)
    22b0:	3c010001 	lui	at,0x1
    22b4:	00300821 	addu	at,at,s0
    22b8:	24090014 	li	t1,20
    22bc:	a0291e15 	sb	t1,7701(at)
    22c0:	3c010001 	lui	at,0x1
    22c4:	00300821 	addu	at,at,s0
    22c8:	240a0003 	li	t2,3
    22cc:	a02a1e5e 	sb	t2,7774(at)
    22d0:	240b0007 	li	t3,7
    22d4:	a06b141d 	sb	t3,5149(v1)
    22d8:	96220192 	lhu	v0,402(s1)
    22dc:	2841008d 	slti	at,v0,141
    22e0:	14200045 	bnez	at,23f8 <func_8099A5EC+0x58c>
    22e4:	3c013f80 	lui	at,0x3f80
    22e8:	44811000 	mtc1	at,$f2
    22ec:	3c010001 	lui	at,0x1
    22f0:	00300821 	addu	at,at,s0
    22f4:	240c0001 	li	t4,1
    22f8:	a02c0b05 	sb	t4,2821(at)
    22fc:	962d0192 	lhu	t5,402(s1)
    2300:	3c0141a0 	lui	at,0x41a0
    2304:	44814000 	mtc1	at,$f8
    2308:	25aeff74 	addiu	t6,t5,-140
    230c:	448e9000 	mtc1	t6,$f18
    2310:	3c010001 	lui	at,0x1
    2314:	02012821 	addu	a1,s0,at
    2318:	46809120 	cvt.s.w	$f4,$f18
    231c:	3c01437f 	lui	at,0x437f
    2320:	44815000 	mtc1	at,$f10
    2324:	3c014f00 	lui	at,0x4f00
    2328:	46082003 	div.s	$f0,$f4,$f8
    232c:	4600103c 	c.lt.s	$f2,$f0
    2330:	00000000 	nop
    2334:	45000002 	bc1f	2340 <func_8099A5EC+0x4d4>
    2338:	00000000 	nop
    233c:	46001006 	mov.s	$f0,$f2
    2340:	46005402 	mul.s	$f16,$f10,$f0
    2344:	24180001 	li	t8,1
    2348:	240200a0 	li	v0,160
    234c:	a0a20b06 	sb	v0,2822(a1)
    2350:	a0a20b07 	sb	v0,2823(a1)
    2354:	a0a20b08 	sb	v0,2824(a1)
    2358:	444ff800 	cfc1	t7,$31
    235c:	44d8f800 	ctc1	t8,$31
    2360:	00000000 	nop
    2364:	460081a4 	cvt.w.s	$f6,$f16
    2368:	4458f800 	cfc1	t8,$31
    236c:	00000000 	nop
    2370:	33180078 	andi	t8,t8,0x78
    2374:	53000013 	beqzl	t8,23c4 <func_8099A5EC+0x558>
    2378:	44183000 	mfc1	t8,$f6
    237c:	44813000 	mtc1	at,$f6
    2380:	24180001 	li	t8,1
    2384:	46068181 	sub.s	$f6,$f16,$f6
    2388:	44d8f800 	ctc1	t8,$31
    238c:	00000000 	nop
    2390:	460031a4 	cvt.w.s	$f6,$f6
    2394:	4458f800 	cfc1	t8,$31
    2398:	00000000 	nop
    239c:	33180078 	andi	t8,t8,0x78
    23a0:	17000005 	bnez	t8,23b8 <func_8099A5EC+0x54c>
    23a4:	00000000 	nop
    23a8:	44183000 	mfc1	t8,$f6
    23ac:	3c018000 	lui	at,0x8000
    23b0:	10000007 	b	23d0 <func_8099A5EC+0x564>
    23b4:	0301c025 	or	t8,t8,at
    23b8:	10000005 	b	23d0 <func_8099A5EC+0x564>
    23bc:	2418ffff 	li	t8,-1
    23c0:	44183000 	mfc1	t8,$f6
    23c4:	00000000 	nop
    23c8:	0700fffb 	bltz	t8,23b8 <func_8099A5EC+0x54c>
    23cc:	00000000 	nop
    23d0:	44cff800 	ctc1	t7,$31
    23d4:	a0b80b09 	sb	t8,2825(a1)
    23d8:	3c040000 	lui	a0,0x0
    23dc:	460004a1 	cvt.d.s	$f18,$f0
    23e0:	24840000 	addiu	a0,a0,0
    23e4:	44079000 	mfc1	a3,$f18
    23e8:	44069800 	mfc1	a2,$f19
    23ec:	0c000000 	jal	0 <func_80998780>
    23f0:	afa80034 	sw	t0,52(sp)
    23f4:	8fa80034 	lw	t0,52(sp)
    23f8:	c5040024 	lwc1	$f4,36(t0)
    23fc:	3c014120 	lui	at,0x4120
    2400:	44810000 	mtc1	at,$f0
    2404:	4600220d 	trunc.w.s	$f8,$f4
    2408:	c5040028 	lwc1	$f4,40(t0)
    240c:	241900ff 	li	t9,255
    2410:	262401c8 	addiu	a0,s1,456
    2414:	44094000 	mfc1	t1,$f8
    2418:	4600220d 	trunc.w.s	$f8,$f4
    241c:	c504002c 	lwc1	$f4,44(t0)
    2420:	00095400 	sll	t2,t1,0x10
    2424:	000a5c03 	sra	t3,t2,0x10
    2428:	448b5000 	mtc1	t3,$f10
    242c:	440e4000 	mfc1	t6,$f8
    2430:	4600220d 	trunc.w.s	$f8,$f4
    2434:	afa80034 	sw	t0,52(sp)
    2438:	000e7c00 	sll	t7,t6,0x10
    243c:	46805420 	cvt.s.w	$f16,$f10
    2440:	000fc403 	sra	t8,t7,0x10
    2444:	44985000 	mtc1	t8,$f10
    2448:	440a4000 	mfc1	t2,$f8
    244c:	241800ff 	li	t8,255
    2450:	240f00ff 	li	t7,255
    2454:	46008180 	add.s	$f6,$f16,$f0
    2458:	000a5c00 	sll	t3,t2,0x10
    245c:	000b6403 	sra	t4,t3,0x10
    2460:	46805420 	cvt.s.w	$f16,$f10
    2464:	448c5000 	mtc1	t4,$f10
    2468:	240e00eb 	li	t6,235
    246c:	afae0010 	sw	t6,16(sp)
    2470:	afaf0014 	sw	t7,20(sp)
    2474:	4600348d 	trunc.w.s	$f18,$f6
    2478:	afb80018 	sw	t8,24(sp)
    247c:	afb9001c 	sw	t9,28(sp)
    2480:	46008180 	add.s	$f6,$f16,$f0
    2484:	44059000 	mfc1	a1,$f18
    2488:	46805420 	cvt.s.w	$f16,$f10
    248c:	00052c00 	sll	a1,a1,0x10
    2490:	00052c03 	sra	a1,a1,0x10
    2494:	4600348d 	trunc.w.s	$f18,$f6
    2498:	46008180 	add.s	$f6,$f16,$f0
    249c:	44069000 	mfc1	a2,$f18
    24a0:	4600348d 	trunc.w.s	$f18,$f6
    24a4:	00063400 	sll	a2,a2,0x10
    24a8:	00063403 	sra	a2,a2,0x10
    24ac:	44079000 	mfc1	a3,$f18
    24b0:	00000000 	nop
    24b4:	00073c00 	sll	a3,a3,0x10
    24b8:	0c000000 	jal	0 <func_80998780>
    24bc:	00073c03 	sra	a3,a3,0x10
    24c0:	8fa80034 	lw	t0,52(sp)
    24c4:	3c014120 	lui	at,0x4120
    24c8:	44810000 	mtc1	at,$f0
    24cc:	c5040024 	lwc1	$f4,36(t0)
    24d0:	240900ff 	li	t1,255
    24d4:	262401dc 	addiu	a0,s1,476
    24d8:	4600220d 	trunc.w.s	$f8,$f4
    24dc:	c5040028 	lwc1	$f4,40(t0)
    24e0:	440a4000 	mfc1	t2,$f8
    24e4:	4600220d 	trunc.w.s	$f8,$f4
    24e8:	c504002c 	lwc1	$f4,44(t0)
    24ec:	000a5c00 	sll	t3,t2,0x10
    24f0:	000b6403 	sra	t4,t3,0x10
    24f4:	448c5000 	mtc1	t4,$f10
    24f8:	440f4000 	mfc1	t7,$f8
    24fc:	4600220d 	trunc.w.s	$f8,$f4
    2500:	afa9001c 	sw	t1,28(sp)
    2504:	000fc400 	sll	t8,t7,0x10
    2508:	46805420 	cvt.s.w	$f16,$f10
    250c:	0018cc03 	sra	t9,t8,0x10
    2510:	44995000 	mtc1	t9,$f10
    2514:	440b4000 	mfc1	t3,$f8
    2518:	241900ff 	li	t9,255
    251c:	241800ff 	li	t8,255
    2520:	46008181 	sub.s	$f6,$f16,$f0
    2524:	000b6400 	sll	t4,t3,0x10
    2528:	000c6c03 	sra	t5,t4,0x10
    252c:	46805420 	cvt.s.w	$f16,$f10
    2530:	448d5000 	mtc1	t5,$f10
    2534:	240f00eb 	li	t7,235
    2538:	afaf0010 	sw	t7,16(sp)
    253c:	afb80014 	sw	t8,20(sp)
    2540:	4600348d 	trunc.w.s	$f18,$f6
    2544:	afb90018 	sw	t9,24(sp)
    2548:	46008181 	sub.s	$f6,$f16,$f0
    254c:	44059000 	mfc1	a1,$f18
    2550:	46805420 	cvt.s.w	$f16,$f10
    2554:	00052c00 	sll	a1,a1,0x10
    2558:	00052c03 	sra	a1,a1,0x10
    255c:	4600348d 	trunc.w.s	$f18,$f6
    2560:	46008181 	sub.s	$f6,$f16,$f0
    2564:	44069000 	mfc1	a2,$f18
    2568:	4600348d 	trunc.w.s	$f18,$f6
    256c:	00063400 	sll	a2,a2,0x10
    2570:	00063403 	sra	a2,a2,0x10
    2574:	44079000 	mfc1	a3,$f18
    2578:	00000000 	nop
    257c:	00073c00 	sll	a3,a3,0x10
    2580:	0c000000 	jal	0 <func_80998780>
    2584:	00073c03 	sra	a3,a3,0x10
    2588:	3c010000 	lui	at,0x0
    258c:	c4240000 	lwc1	$f4,0(at)
    2590:	262400bc 	addiu	a0,s1,188
    2594:	3c054448 	lui	a1,0x4448
    2598:	3c063f00 	lui	a2,0x3f00
    259c:	3c074170 	lui	a3,0x4170
    25a0:	0c000000 	jal	0 <func_80998780>
    25a4:	e7a40010 	swc1	$f4,16(sp)
    25a8:	862a00b6 	lh	t2,182(s1)
    25ac:	3c010000 	lui	at,0x0
    25b0:	3c053f90 	lui	a1,0x3f90
    25b4:	254b0320 	addiu	t3,t2,800
    25b8:	a62b00b6 	sh	t3,182(s1)
    25bc:	c4280000 	lwc1	$f8,0(at)
    25c0:	3c063e4c 	lui	a2,0x3e4c
    25c4:	3c073dcc 	lui	a3,0x3dcc
    25c8:	34e7cccd 	ori	a3,a3,0xcccd
    25cc:	34c6cccd 	ori	a2,a2,0xcccd
    25d0:	34a5a3d7 	ori	a1,a1,0xa3d7
    25d4:	262401bc 	addiu	a0,s1,444
    25d8:	0c000000 	jal	0 <func_80998780>
    25dc:	e7a80010 	swc1	$f8,16(sp)
    25e0:	3c063b44 	lui	a2,0x3b44
    25e4:	34c69ba6 	ori	a2,a2,0x9ba6
    25e8:	26240194 	addiu	a0,s1,404
    25ec:	0c000000 	jal	0 <func_80998780>
    25f0:	3c054000 	lui	a1,0x4000
    25f4:	3c063bc4 	lui	a2,0x3bc4
    25f8:	34c69ba6 	ori	a2,a2,0x9ba6
    25fc:	26240198 	addiu	a0,s1,408
    2600:	0c000000 	jal	0 <func_80998780>
    2604:	3c054120 	lui	a1,0x4120
    2608:	3c010000 	lui	at,0x0
    260c:	c42a0000 	lwc1	$f10,0(at)
    2610:	3c063e4c 	lui	a2,0x3e4c
    2614:	34c6cccd 	ori	a2,a2,0xcccd
    2618:	262401a0 	addiu	a0,s1,416
    261c:	24050000 	li	a1,0
    2620:	3c074040 	lui	a3,0x4040
    2624:	0c000000 	jal	0 <func_80998780>
    2628:	e7aa0010 	swc1	$f10,16(sp)
    262c:	3c010000 	lui	at,0x0
    2630:	c4300000 	lwc1	$f16,0(at)
    2634:	3c063e4c 	lui	a2,0x3e4c
    2638:	34c6cccd 	ori	a2,a2,0xcccd
    263c:	262401a4 	addiu	a0,s1,420
    2640:	24050000 	li	a1,0
    2644:	3c074000 	lui	a3,0x4000
    2648:	0c000000 	jal	0 <func_80998780>
    264c:	e7b00010 	swc1	$f16,16(sp)
    2650:	3c010000 	lui	at,0x0
    2654:	c4260000 	lwc1	$f6,0(at)
    2658:	3c063dcc 	lui	a2,0x3dcc
    265c:	34c6cccd 	ori	a2,a2,0xcccd
    2660:	262401a8 	addiu	a0,s1,424
    2664:	3c05437f 	lui	a1,0x437f
    2668:	3c073f80 	lui	a3,0x3f80
    266c:	0c000000 	jal	0 <func_80998780>
    2670:	e7a60010 	swc1	$f6,16(sp)
    2674:	3c020000 	lui	v0,0x0
    2678:	84420000 	lh	v0,0(v0)
    267c:	962c0192 	lhu	t4,402(s1)
    2680:	3c013f80 	lui	at,0x3f80
    2684:	00427023 	subu	t6,v0,v0
    2688:	25cf0064 	addiu	t7,t6,100
    268c:	004c6823 	subu	t5,v0,t4
    2690:	448d9000 	mtc1	t5,$f18
    2694:	448f4000 	mtc1	t7,$f8
    2698:	44813000 	mtc1	at,$f6
    269c:	46809120 	cvt.s.w	$f4,$f18
    26a0:	44809000 	mtc1	zero,$f18
    26a4:	3c010001 	lui	at,0x1
    26a8:	02012821 	addu	a1,s0,at
    26ac:	3c01c37f 	lui	at,0xc37f
    26b0:	468042a0 	cvt.s.w	$f10,$f8
    26b4:	460a2403 	div.s	$f16,$f4,$f10
    26b8:	46103001 	sub.s	$f0,$f6,$f16
    26bc:	4600903c 	c.lt.s	$f18,$f0
    26c0:	00000000 	nop
    26c4:	45020023 	bc1fl	2754 <func_8099A5EC+0x8e8>
    26c8:	8fbf002c 	lw	ra,44(sp)
    26cc:	44814000 	mtc1	at,$f8
    26d0:	00001825 	move	v1,zero
    26d4:	3c060001 	lui	a2,0x1
    26d8:	46004102 	mul.s	$f4,$f8,$f0
    26dc:	4600228d 	trunc.w.s	$f10,$f4
    26e0:	44045000 	mfc1	a0,$f10
    26e4:	00000000 	nop
    26e8:	0003c840 	sll	t9,v1,0x1
    26ec:	24630001 	addiu	v1,v1,1
    26f0:	00031c00 	sll	v1,v1,0x10
    26f4:	02194821 	addu	t1,s0,t9
    26f8:	00031c03 	sra	v1,v1,0x10
    26fc:	01261021 	addu	v0,t1,a2
    2700:	28610003 	slti	at,v1,3
    2704:	a4440ab6 	sh	a0,2742(v0)
    2708:	a4440abc 	sh	a0,2748(v0)
    270c:	1420fff6 	bnez	at,26e8 <func_8099A5EC+0x87c>
    2710:	a4440ab0 	sh	a0,2736(v0)
    2714:	3c01c3fa 	lui	at,0xc3fa
    2718:	44813000 	mtc1	at,$f6
    271c:	3c010001 	lui	at,0x1
    2720:	00300821 	addu	at,at,s0
    2724:	46003402 	mul.s	$f16,$f6,$f0
    2728:	4600848d 	trunc.w.s	$f18,$f16
    272c:	440b9000 	mfc1	t3,$f18
    2730:	00000000 	nop
    2734:	a42b0ac2 	sh	t3,2754(at)
    2738:	84ac0ac2 	lh	t4,2754(a1)
    273c:	2981fed4 	slti	at,t4,-300
    2740:	10200003 	beqz	at,2750 <func_8099A5EC+0x8e4>
    2744:	3c010001 	lui	at,0x1
    2748:	00300821 	addu	at,at,s0
    274c:	ac201cc8 	sw	zero,7368(at)
    2750:	8fbf002c 	lw	ra,44(sp)
    2754:	8fb00024 	lw	s0,36(sp)
    2758:	8fb10028 	lw	s1,40(sp)
    275c:	03e00008 	jr	ra
    2760:	27bd0038 	addiu	sp,sp,56

00002764 <func_8099AEE4>:
    2764:	27bdffe8 	addiu	sp,sp,-24
    2768:	afbf0014 	sw	ra,20(sp)
    276c:	afa5001c 	sw	a1,28(sp)
    2770:	948e0192 	lhu	t6,402(a0)
    2774:	3c013f80 	lui	at,0x3f80
    2778:	44811000 	mtc1	at,$f2
    277c:	3c0140a0 	lui	at,0x40a0
    2780:	44812000 	mtc1	at,$f4
    2784:	25cf0001 	addiu	t7,t6,1
    2788:	31e2ffff 	andi	v0,t7,0xffff
    278c:	28410014 	slti	at,v0,20
    2790:	a48f0192 	sh	t7,402(a0)
    2794:	00401825 	move	v1,v0
    2798:	46001006 	mov.s	$f0,$f2
    279c:	1020000c 	beqz	at,27d0 <func_8099AEE4+0x6c>
    27a0:	e4840194 	swc1	$f4,404(a0)
    27a4:	44823000 	mtc1	v0,$f6
    27a8:	3c014f80 	lui	at,0x4f80
    27ac:	04410004 	bgez	v0,27c0 <func_8099AEE4+0x5c>
    27b0:	46803220 	cvt.s.w	$f8,$f6
    27b4:	44815000 	mtc1	at,$f10
    27b8:	00000000 	nop
    27bc:	460a4200 	add.s	$f8,$f8,$f10
    27c0:	3c0141a0 	lui	at,0x41a0
    27c4:	44818000 	mtc1	at,$f16
    27c8:	10000012 	b	2814 <func_8099AEE4+0xb0>
    27cc:	46104003 	div.s	$f0,$f8,$f16
    27d0:	2861003c 	slti	at,v1,60
    27d4:	54200010 	bnezl	at,2818 <func_8099AEE4+0xb4>
    27d8:	3c01437f 	lui	at,0x437f
    27dc:	44829000 	mtc1	v0,$f18
    27e0:	3c014f80 	lui	at,0x4f80
    27e4:	04410004 	bgez	v0,27f8 <func_8099AEE4+0x94>
    27e8:	46809120 	cvt.s.w	$f4,$f18
    27ec:	44813000 	mtc1	at,$f6
    27f0:	00000000 	nop
    27f4:	46062100 	add.s	$f4,$f4,$f6
    27f8:	3c014270 	lui	at,0x4270
    27fc:	44815000 	mtc1	at,$f10
    2800:	3c0141a0 	lui	at,0x41a0
    2804:	44818000 	mtc1	at,$f16
    2808:	460a2201 	sub.s	$f8,$f4,$f10
    280c:	46104483 	div.s	$f18,$f8,$f16
    2810:	46121001 	sub.s	$f0,$f2,$f18
    2814:	3c01437f 	lui	at,0x437f
    2818:	44813000 	mtc1	at,$f6
    281c:	44801000 	mtc1	zero,$f2
    2820:	44825000 	mtc1	v0,$f10
    2824:	46003102 	mul.s	$f4,$f6,$f0
    2828:	3c050000 	lui	a1,0x0
    282c:	3c014f80 	lui	at,0x4f80
    2830:	24a50000 	addiu	a1,a1,0
    2834:	e48201a0 	swc1	$f2,416(a0)
    2838:	46805220 	cvt.s.w	$f8,$f10
    283c:	04410004 	bgez	v0,2850 <func_8099AEE4+0xec>
    2840:	e48401a4 	swc1	$f4,420(a0)
    2844:	44818000 	mtc1	at,$f16
    2848:	00000000 	nop
    284c:	46104200 	add.s	$f8,$f8,$f16
    2850:	3c0142a0 	lui	at,0x42a0
    2854:	44819000 	mtc1	at,$f18
    2858:	00000000 	nop
    285c:	4608903e 	c.le.s	$f18,$f8
    2860:	00000000 	nop
    2864:	45000005 	bc1f	287c <func_8099AEE4+0x118>
    2868:	00000000 	nop
    286c:	e48201a4 	swc1	$f2,420(a0)
    2870:	0c000000 	jal	0 <func_80998780>
    2874:	afa40018 	sw	a0,24(sp)
    2878:	8fa40018 	lw	a0,24(sp)
    287c:	0c000000 	jal	0 <func_80998780>
    2880:	24052025 	li	a1,8229
    2884:	8fbf0014 	lw	ra,20(sp)
    2888:	27bd0018 	addiu	sp,sp,24
    288c:	03e00008 	jr	ra
    2890:	00000000 	nop

00002894 <func_8099B014>:
    2894:	afa40000 	sw	a0,0(sp)
    2898:	03e00008 	jr	ra
    289c:	afa50004 	sw	a1,4(sp)

000028a0 <func_8099B020>:
    28a0:	27bdffd8 	addiu	sp,sp,-40
    28a4:	3c010000 	lui	at,0x0
    28a8:	c4240000 	lwc1	$f4,0(at)
    28ac:	afb00020 	sw	s0,32(sp)
    28b0:	00808025 	move	s0,a0
    28b4:	afbf0024 	sw	ra,36(sp)
    28b8:	afa5002c 	sw	a1,44(sp)
    28bc:	3c063e4c 	lui	a2,0x3e4c
    28c0:	34c6cccd 	ori	a2,a2,0xcccd
    28c4:	3c054300 	lui	a1,0x4300
    28c8:	248401a0 	addiu	a0,a0,416
    28cc:	3c074000 	lui	a3,0x4000
    28d0:	0c000000 	jal	0 <func_80998780>
    28d4:	e7a40010 	swc1	$f4,16(sp)
    28d8:	3c010000 	lui	at,0x0
    28dc:	c4260000 	lwc1	$f6,0(at)
    28e0:	3c063e4c 	lui	a2,0x3e4c
    28e4:	34c6cccd 	ori	a2,a2,0xcccd
    28e8:	260401a4 	addiu	a0,s0,420
    28ec:	3c054300 	lui	a1,0x4300
    28f0:	3c074000 	lui	a3,0x4000
    28f4:	0c000000 	jal	0 <func_80998780>
    28f8:	e7a60010 	swc1	$f6,16(sp)
    28fc:	3c014300 	lui	at,0x4300
    2900:	44815000 	mtc1	at,$f10
    2904:	c60801a0 	lwc1	$f8,416(s0)
    2908:	26040194 	addiu	a0,s0,404
    290c:	3c054000 	lui	a1,0x4000
    2910:	4608503e 	c.le.s	$f10,$f8
    2914:	3c063c23 	lui	a2,0x3c23
    2918:	45020009 	bc1fl	2940 <func_8099B020+0xa0>
    291c:	02002025 	move	a0,s0
    2920:	0c000000 	jal	0 <func_80998780>
    2924:	34c6d70a 	ori	a2,a2,0xd70a
    2928:	3c063ca3 	lui	a2,0x3ca3
    292c:	34c6d70a 	ori	a2,a2,0xd70a
    2930:	26040198 	addiu	a0,s0,408
    2934:	0c000000 	jal	0 <func_80998780>
    2938:	3c054120 	lui	a1,0x4120
    293c:	02002025 	move	a0,s0
    2940:	0c000000 	jal	0 <func_80998780>
    2944:	24052025 	li	a1,8229
    2948:	8fbf0024 	lw	ra,36(sp)
    294c:	8fb00020 	lw	s0,32(sp)
    2950:	27bd0028 	addiu	sp,sp,40
    2954:	03e00008 	jr	ra
    2958:	00000000 	nop

0000295c <DoorWarp1_Update>:
    295c:	27bdffe8 	addiu	sp,sp,-24
    2960:	afbf0014 	sw	ra,20(sp)
    2964:	afa40018 	sw	a0,24(sp)
    2968:	8c9901c0 	lw	t9,448(a0)
    296c:	0320f809 	jalr	t9
    2970:	00000000 	nop
    2974:	8fa40018 	lw	a0,24(sp)
    2978:	24010003 	li	at,3
    297c:	848e001c 	lh	t6,28(a0)
    2980:	51c1000c 	beql	t6,at,29b4 <DoorWarp1_Update+0x58>
    2984:	8fbf0014 	lw	ra,20(sp)
    2988:	848f01ac 	lh	t7,428(a0)
    298c:	3c0142c8 	lui	at,0x42c8
    2990:	44814000 	mtc1	at,$f8
    2994:	448f2000 	mtc1	t7,$f4
    2998:	00000000 	nop
    299c:	468021a0 	cvt.s.w	$f6,$f4
    29a0:	46083283 	div.s	$f10,$f6,$f8
    29a4:	44055000 	mfc1	a1,$f10
    29a8:	0c000000 	jal	0 <func_80998780>
    29ac:	00000000 	nop
    29b0:	8fbf0014 	lw	ra,20(sp)
    29b4:	27bd0018 	addiu	sp,sp,24
    29b8:	03e00008 	jr	ra
    29bc:	00000000 	nop

000029c0 <func_8099B140>:
    29c0:	27bdffa8 	addiu	sp,sp,-88
    29c4:	afbf002c 	sw	ra,44(sp)
    29c8:	afb10028 	sw	s1,40(sp)
    29cc:	afb00024 	sw	s0,36(sp)
    29d0:	afa5005c 	sw	a1,92(sp)
    29d4:	8ca50000 	lw	a1,0(a1)
    29d8:	00808825 	move	s1,a0
    29dc:	3c060000 	lui	a2,0x0
    29e0:	24c60000 	addiu	a2,a2,0
    29e4:	27a40040 	addiu	a0,sp,64
    29e8:	2407081e 	li	a3,2078
    29ec:	0c000000 	jal	0 <func_80998780>
    29f0:	00a08025 	move	s0,a1
    29f4:	8faf005c 	lw	t7,92(sp)
    29f8:	0c000000 	jal	0 <func_80998780>
    29fc:	8de40000 	lw	a0,0(t7)
    2a00:	8e0202d0 	lw	v0,720(s0)
    2a04:	3c19fa00 	lui	t9,0xfa00
    2a08:	3739ffff 	ori	t9,t9,0xffff
    2a0c:	24580008 	addiu	t8,v0,8
    2a10:	ae1802d0 	sw	t8,720(s0)
    2a14:	4448f800 	cfc1	t0,$31
    2a18:	24090001 	li	t1,1
    2a1c:	ac590000 	sw	t9,0(v0)
    2a20:	44c9f800 	ctc1	t1,$31
    2a24:	c62401a8 	lwc1	$f4,424(s1)
    2a28:	3c014f00 	lui	at,0x4f00
    2a2c:	3c0efb00 	lui	t6,0xfb00
    2a30:	460021a4 	cvt.w.s	$f6,$f4
    2a34:	00003825 	move	a3,zero
    2a38:	4449f800 	cfc1	t1,$31
    2a3c:	00000000 	nop
    2a40:	31290078 	andi	t1,t1,0x78
    2a44:	51200013 	beqzl	t1,2a94 <func_8099B140+0xd4>
    2a48:	44093000 	mfc1	t1,$f6
    2a4c:	44813000 	mtc1	at,$f6
    2a50:	24090001 	li	t1,1
    2a54:	46062181 	sub.s	$f6,$f4,$f6
    2a58:	44c9f800 	ctc1	t1,$31
    2a5c:	00000000 	nop
    2a60:	460031a4 	cvt.w.s	$f6,$f6
    2a64:	4449f800 	cfc1	t1,$31
    2a68:	00000000 	nop
    2a6c:	31290078 	andi	t1,t1,0x78
    2a70:	15200005 	bnez	t1,2a88 <func_8099B140+0xc8>
    2a74:	00000000 	nop
    2a78:	44093000 	mfc1	t1,$f6
    2a7c:	3c018000 	lui	at,0x8000
    2a80:	10000007 	b	2aa0 <func_8099B140+0xe0>
    2a84:	01214825 	or	t1,t1,at
    2a88:	10000005 	b	2aa0 <func_8099B140+0xe0>
    2a8c:	2409ffff 	li	t1,-1
    2a90:	44093000 	mfc1	t1,$f6
    2a94:	00000000 	nop
    2a98:	0520fffb 	bltz	t1,2a88 <func_8099B140+0xc8>
    2a9c:	00000000 	nop
    2aa0:	3c01c8ff 	lui	at,0xc8ff
    2aa4:	3421ff00 	ori	at,at,0xff00
    2aa8:	312b00ff 	andi	t3,t1,0xff
    2aac:	01616025 	or	t4,t3,at
    2ab0:	ac4c0004 	sw	t4,4(v0)
    2ab4:	8e0202d0 	lw	v0,720(s0)
    2ab8:	44c8f800 	ctc1	t0,$31
    2abc:	24180001 	li	t8,1
    2ac0:	244d0008 	addiu	t5,v0,8
    2ac4:	ae0d02d0 	sw	t5,720(s0)
    2ac8:	ac4e0000 	sw	t6,0(v0)
    2acc:	444ff800 	cfc1	t7,$31
    2ad0:	44d8f800 	ctc1	t8,$31
    2ad4:	c62801a8 	lwc1	$f8,424(s1)
    2ad8:	3c014f00 	lui	at,0x4f00
    2adc:	460042a4 	cvt.w.s	$f10,$f8
    2ae0:	4458f800 	cfc1	t8,$31
    2ae4:	00000000 	nop
    2ae8:	33180078 	andi	t8,t8,0x78
    2aec:	53000013 	beqzl	t8,2b3c <func_8099B140+0x17c>
    2af0:	44185000 	mfc1	t8,$f10
    2af4:	44815000 	mtc1	at,$f10
    2af8:	24180001 	li	t8,1
    2afc:	460a4281 	sub.s	$f10,$f8,$f10
    2b00:	44d8f800 	ctc1	t8,$31
    2b04:	00000000 	nop
    2b08:	460052a4 	cvt.w.s	$f10,$f10
    2b0c:	4458f800 	cfc1	t8,$31
    2b10:	00000000 	nop
    2b14:	33180078 	andi	t8,t8,0x78
    2b18:	17000005 	bnez	t8,2b30 <func_8099B140+0x170>
    2b1c:	00000000 	nop
    2b20:	44185000 	mfc1	t8,$f10
    2b24:	3c018000 	lui	at,0x8000
    2b28:	10000007 	b	2b48 <func_8099B140+0x188>
    2b2c:	0301c025 	or	t8,t8,at
    2b30:	10000005 	b	2b48 <func_8099B140+0x188>
    2b34:	2418ffff 	li	t8,-1
    2b38:	44185000 	mfc1	t8,$f10
    2b3c:	00000000 	nop
    2b40:	0700fffb 	bltz	t8,2b30 <func_8099B140+0x170>
    2b44:	00000000 	nop
    2b48:	3c010064 	lui	at,0x64
    2b4c:	3421ff00 	ori	at,at,0xff00
    2b50:	330800ff 	andi	t0,t8,0xff
    2b54:	01014825 	or	t1,t0,at
    2b58:	ac490004 	sw	t1,4(v0)
    2b5c:	8e26016c 	lw	a2,364(s1)
    2b60:	8e250150 	lw	a1,336(s1)
    2b64:	afb10014 	sw	s1,20(sp)
    2b68:	afa00010 	sw	zero,16(sp)
    2b6c:	8e0a02d0 	lw	t2,720(s0)
    2b70:	44cff800 	ctc1	t7,$31
    2b74:	8fa4005c 	lw	a0,92(sp)
    2b78:	0c000000 	jal	0 <func_80998780>
    2b7c:	afaa0018 	sw	t2,24(sp)
    2b80:	ae0202d0 	sw	v0,720(s0)
    2b84:	8fab005c 	lw	t3,92(sp)
    2b88:	3c060000 	lui	a2,0x0
    2b8c:	24c60000 	addiu	a2,a2,0
    2b90:	27a40040 	addiu	a0,sp,64
    2b94:	24070832 	li	a3,2098
    2b98:	0c000000 	jal	0 <func_80998780>
    2b9c:	8d650000 	lw	a1,0(t3)
    2ba0:	0c000000 	jal	0 <func_80998780>
    2ba4:	2624014c 	addiu	a0,s1,332
    2ba8:	8fbf002c 	lw	ra,44(sp)
    2bac:	8fb00024 	lw	s0,36(sp)
    2bb0:	8fb10028 	lw	s1,40(sp)
    2bb4:	03e00008 	jr	ra
    2bb8:	27bd0058 	addiu	sp,sp,88

00002bbc <func_8099B33C>:
    2bbc:	27bdff90 	addiu	sp,sp,-112
    2bc0:	afbf0034 	sw	ra,52(sp)
    2bc4:	afb20030 	sw	s2,48(sp)
    2bc8:	afb1002c 	sw	s1,44(sp)
    2bcc:	afb00028 	sw	s0,40(sp)
    2bd0:	8cae009c 	lw	t6,156(a1)
    2bd4:	241000c8 	li	s0,200
    2bd8:	00809025 	move	s2,a0
    2bdc:	01d00019 	multu	t6,s0
    2be0:	00a08825 	move	s1,a1
    2be4:	00002012 	mflo	a0
    2be8:	00042400 	sll	a0,a0,0x10
    2bec:	0c000000 	jal	0 <func_80998780>
    2bf0:	00042403 	sra	a0,a0,0x10
    2bf4:	3c0142f0 	lui	at,0x42f0
    2bf8:	44812000 	mtc1	at,$f4
    2bfc:	3c0142a0 	lui	at,0x42a0
    2c00:	44815000 	mtc1	at,$f10
    2c04:	46040182 	mul.s	$f6,$f0,$f4
    2c08:	46003207 	neg.s	$f8,$f6
    2c0c:	460a4402 	mul.s	$f16,$f8,$f10
    2c10:	e7b0005c 	swc1	$f16,92(sp)
    2c14:	8e2f009c 	lw	t7,156(s1)
    2c18:	01f00019 	multu	t7,s0
    2c1c:	00002012 	mflo	a0
    2c20:	00042400 	sll	a0,a0,0x10
    2c24:	0c000000 	jal	0 <func_80998780>
    2c28:	00042403 	sra	a0,a0,0x10
    2c2c:	3c0142f0 	lui	at,0x42f0
    2c30:	44819000 	mtc1	at,$f18
    2c34:	3c0142a0 	lui	at,0x42a0
    2c38:	44813000 	mtc1	at,$f6
    2c3c:	46120102 	mul.s	$f4,$f0,$f18
    2c40:	00000000 	nop
    2c44:	46062202 	mul.s	$f8,$f4,$f6
    2c48:	e7a80060 	swc1	$f8,96(sp)
    2c4c:	8e38009c 	lw	t8,156(s1)
    2c50:	03100019 	multu	t8,s0
    2c54:	00002012 	mflo	a0
    2c58:	00042400 	sll	a0,a0,0x10
    2c5c:	0c000000 	jal	0 <func_80998780>
    2c60:	00042403 	sra	a0,a0,0x10
    2c64:	3c0142f0 	lui	at,0x42f0
    2c68:	44815000 	mtc1	at,$f10
    2c6c:	3c0142a0 	lui	at,0x42a0
    2c70:	44819000 	mtc1	at,$f18
    2c74:	460a0402 	mul.s	$f16,$f0,$f10
    2c78:	3c060000 	lui	a2,0x0
    2c7c:	24c60000 	addiu	a2,a2,0
    2c80:	27a40048 	addiu	a0,sp,72
    2c84:	2407084a 	li	a3,2122
    2c88:	46128102 	mul.s	$f4,$f16,$f18
    2c8c:	e7a40064 	swc1	$f4,100(sp)
    2c90:	8e250000 	lw	a1,0(s1)
    2c94:	0c000000 	jal	0 <func_80998780>
    2c98:	00a08025 	move	s0,a1
    2c9c:	0c000000 	jal	0 <func_80998780>
    2ca0:	8e240000 	lw	a0,0(s1)
    2ca4:	27a5005c 	addiu	a1,sp,92
    2ca8:	00a03025 	move	a2,a1
    2cac:	26440024 	addiu	a0,s2,36
    2cb0:	0c000000 	jal	0 <func_80998780>
    2cb4:	8e270000 	lw	a3,0(s1)
    2cb8:	8e0202d0 	lw	v0,720(s0)
    2cbc:	3c08fa00 	lui	t0,0xfa00
    2cc0:	4449f800 	cfc1	t1,$31
    2cc4:	24590008 	addiu	t9,v0,8
    2cc8:	ae1902d0 	sw	t9,720(s0)
    2ccc:	240a0001 	li	t2,1
    2cd0:	ac480000 	sw	t0,0(v0)
    2cd4:	44caf800 	ctc1	t2,$31
    2cd8:	c64601a8 	lwc1	$f6,424(s2)
    2cdc:	3c014f00 	lui	at,0x4f00
    2ce0:	3c0ffb00 	lui	t7,0xfb00
    2ce4:	46003224 	cvt.w.s	$f8,$f6
    2ce8:	02202025 	move	a0,s1
    2cec:	00003825 	move	a3,zero
    2cf0:	444af800 	cfc1	t2,$31
    2cf4:	00000000 	nop
    2cf8:	314a0078 	andi	t2,t2,0x78
    2cfc:	51400013 	beqzl	t2,2d4c <func_8099B33C+0x190>
    2d00:	440a4000 	mfc1	t2,$f8
    2d04:	44814000 	mtc1	at,$f8
    2d08:	240a0001 	li	t2,1
    2d0c:	46083201 	sub.s	$f8,$f6,$f8
    2d10:	44caf800 	ctc1	t2,$31
    2d14:	00000000 	nop
    2d18:	46004224 	cvt.w.s	$f8,$f8
    2d1c:	444af800 	cfc1	t2,$31
    2d20:	00000000 	nop
    2d24:	314a0078 	andi	t2,t2,0x78
    2d28:	15400005 	bnez	t2,2d40 <func_8099B33C+0x184>
    2d2c:	00000000 	nop
    2d30:	440a4000 	mfc1	t2,$f8
    2d34:	3c018000 	lui	at,0x8000
    2d38:	10000007 	b	2d58 <func_8099B33C+0x19c>
    2d3c:	01415025 	or	t2,t2,at
    2d40:	10000005 	b	2d58 <func_8099B33C+0x19c>
    2d44:	240affff 	li	t2,-1
    2d48:	440a4000 	mfc1	t2,$f8
    2d4c:	00000000 	nop
    2d50:	0540fffb 	bltz	t2,2d40 <func_8099B33C+0x184>
    2d54:	00000000 	nop
    2d58:	314c00ff 	andi	t4,t2,0xff
    2d5c:	2401ff00 	li	at,-256
    2d60:	01816825 	or	t5,t4,at
    2d64:	ac4d0004 	sw	t5,4(v0)
    2d68:	8e0202d0 	lw	v0,720(s0)
    2d6c:	44c9f800 	ctc1	t1,$31
    2d70:	24190001 	li	t9,1
    2d74:	244e0008 	addiu	t6,v0,8
    2d78:	ae0e02d0 	sw	t6,720(s0)
    2d7c:	ac4f0000 	sw	t7,0(v0)
    2d80:	4458f800 	cfc1	t8,$31
    2d84:	44d9f800 	ctc1	t9,$31
    2d88:	c64a01a8 	lwc1	$f10,424(s2)
    2d8c:	3c014f00 	lui	at,0x4f00
    2d90:	46005424 	cvt.w.s	$f16,$f10
    2d94:	4459f800 	cfc1	t9,$31
    2d98:	00000000 	nop
    2d9c:	33390078 	andi	t9,t9,0x78
    2da0:	53200013 	beqzl	t9,2df0 <func_8099B33C+0x234>
    2da4:	44198000 	mfc1	t9,$f16
    2da8:	44818000 	mtc1	at,$f16
    2dac:	24190001 	li	t9,1
    2db0:	46105401 	sub.s	$f16,$f10,$f16
    2db4:	44d9f800 	ctc1	t9,$31
    2db8:	00000000 	nop
    2dbc:	46008424 	cvt.w.s	$f16,$f16
    2dc0:	4459f800 	cfc1	t9,$31
    2dc4:	00000000 	nop
    2dc8:	33390078 	andi	t9,t9,0x78
    2dcc:	17200005 	bnez	t9,2de4 <func_8099B33C+0x228>
    2dd0:	00000000 	nop
    2dd4:	44198000 	mfc1	t9,$f16
    2dd8:	3c018000 	lui	at,0x8000
    2ddc:	10000007 	b	2dfc <func_8099B33C+0x240>
    2de0:	0321c825 	or	t9,t9,at
    2de4:	10000005 	b	2dfc <func_8099B33C+0x240>
    2de8:	2419ffff 	li	t9,-1
    2dec:	44198000 	mfc1	t9,$f16
    2df0:	00000000 	nop
    2df4:	0720fffb 	bltz	t9,2de4 <func_8099B33C+0x228>
    2df8:	00000000 	nop
    2dfc:	3c019600 	lui	at,0x9600
    2e00:	34216400 	ori	at,at,0x6400
    2e04:	332900ff 	andi	t1,t9,0xff
    2e08:	01215025 	or	t2,t1,at
    2e0c:	ac4a0004 	sw	t2,4(v0)
    2e10:	8e46016c 	lw	a2,364(s2)
    2e14:	8e450150 	lw	a1,336(s2)
    2e18:	afb20014 	sw	s2,20(sp)
    2e1c:	afa00010 	sw	zero,16(sp)
    2e20:	8e0b02d0 	lw	t3,720(s0)
    2e24:	44d8f800 	ctc1	t8,$31
    2e28:	0c000000 	jal	0 <func_80998780>
    2e2c:	afab0018 	sw	t3,24(sp)
    2e30:	ae0202d0 	sw	v0,720(s0)
    2e34:	3c060000 	lui	a2,0x0
    2e38:	24c60000 	addiu	a2,a2,0
    2e3c:	8e250000 	lw	a1,0(s1)
    2e40:	27a40048 	addiu	a0,sp,72
    2e44:	0c000000 	jal	0 <func_80998780>
    2e48:	24070868 	li	a3,2152
    2e4c:	0c000000 	jal	0 <func_80998780>
    2e50:	2644014c 	addiu	a0,s2,332
    2e54:	8fbf0034 	lw	ra,52(sp)
    2e58:	8fb00028 	lw	s0,40(sp)
    2e5c:	8fb1002c 	lw	s1,44(sp)
    2e60:	8fb20030 	lw	s2,48(sp)
    2e64:	03e00008 	jr	ra
    2e68:	27bd0070 	addiu	sp,sp,112

00002e6c <func_8099B5EC>:
    2e6c:	27bdff08 	addiu	sp,sp,-248
    2e70:	afbf003c 	sw	ra,60(sp)
    2e74:	afb00038 	sw	s0,56(sp)
    2e78:	afa500fc 	sw	a1,252(sp)
    2e7c:	8caf009c 	lw	t7,156(a1)
    2e80:	3c013f80 	lui	at,0x3f80
    2e84:	44811000 	mtc1	at,$f2
    2e88:	000fc080 	sll	t8,t7,0x2
    2e8c:	030fc021 	addu	t8,t8,t7
    2e90:	0018c040 	sll	t8,t8,0x1
    2e94:	afb800ec 	sw	t8,236(sp)
    2e98:	c4800194 	lwc1	$f0,404(a0)
    2e9c:	00808025 	move	s0,a0
    2ea0:	27a400c8 	addiu	a0,sp,200
    2ea4:	4600103e 	c.le.s	$f2,$f0
    2ea8:	00000000 	nop
    2eac:	45020005 	bc1fl	2ec4 <func_8099B5EC+0x58>
    2eb0:	46001181 	sub.s	$f6,$f2,$f0
    2eb4:	44802000 	mtc1	zero,$f4
    2eb8:	10000003 	b	2ec8 <func_8099B5EC+0x5c>
    2ebc:	e7a400e8 	swc1	$f4,232(sp)
    2ec0:	46001181 	sub.s	$f6,$f2,$f0
    2ec4:	e7a600e8 	swc1	$f6,232(sp)
    2ec8:	c6000198 	lwc1	$f0,408(s0)
    2ecc:	4600103e 	c.le.s	$f2,$f0
    2ed0:	00000000 	nop
    2ed4:	45020005 	bc1fl	2eec <func_8099B5EC+0x80>
    2ed8:	46001281 	sub.s	$f10,$f2,$f0
    2edc:	44804000 	mtc1	zero,$f8
    2ee0:	10000003 	b	2ef0 <func_8099B5EC+0x84>
    2ee4:	e7a800e4 	swc1	$f8,228(sp)
    2ee8:	46001281 	sub.s	$f10,$f2,$f0
    2eec:	e7aa00e4 	swc1	$f10,228(sp)
    2ef0:	8fb900fc 	lw	t9,252(sp)
    2ef4:	3c060000 	lui	a2,0x0
    2ef8:	24c60000 	addiu	a2,a2,0
    2efc:	8f250000 	lw	a1,0(t9)
    2f00:	2407087d 	li	a3,2173
    2f04:	0c000000 	jal	0 <func_80998780>
    2f08:	afa500d8 	sw	a1,216(sp)
    2f0c:	3c014000 	lui	at,0x4000
    2f10:	44818000 	mtc1	at,$f16
    2f14:	c6120194 	lwc1	$f18,404(s0)
    2f18:	3c010000 	lui	at,0x0
    2f1c:	c4260000 	lwc1	$f6,0(at)
    2f20:	46128101 	sub.s	$f4,$f16,$f18
    2f24:	3c013f80 	lui	at,0x3f80
    2f28:	44815000 	mtc1	at,$f10
    2f2c:	8602001c 	lh	v0,28(s0)
    2f30:	46062203 	div.s	$f8,$f4,$f6
    2f34:	24010004 	li	at,4
    2f38:	8fa800d8 	lw	t0,216(sp)
    2f3c:	10410018 	beq	v0,at,2fa0 <func_8099B5EC+0x134>
    2f40:	46085001 	sub.s	$f0,$f10,$f8
    2f44:	24010006 	li	at,6
    2f48:	10410015 	beq	v0,at,2fa0 <func_8099B5EC+0x134>
    2f4c:	24010008 	li	at,8
    2f50:	10410013 	beq	v0,at,2fa0 <func_8099B5EC+0x134>
    2f54:	24010009 	li	at,9
    2f58:	10410011 	beq	v0,at,2fa0 <func_8099B5EC+0x134>
    2f5c:	2401000a 	li	at,10
    2f60:	1041000f 	beq	v0,at,2fa0 <func_8099B5EC+0x134>
    2f64:	3c014170 	lui	at,0x4170
    2f68:	44819000 	mtc1	at,$f18
    2f6c:	c610019c 	lwc1	$f16,412(s0)
    2f70:	8602001c 	lh	v0,28(s0)
    2f74:	46120102 	mul.s	$f4,$f0,$f18
    2f78:	4600218d 	trunc.w.s	$f6,$f4
    2f7c:	440a3000 	mfc1	t2,$f6
    2f80:	00000000 	nop
    2f84:	000a5c00 	sll	t3,t2,0x10
    2f88:	000b6403 	sra	t4,t3,0x10
    2f8c:	448c5000 	mtc1	t4,$f10
    2f90:	00000000 	nop
    2f94:	46805220 	cvt.s.w	$f8,$f10
    2f98:	46088480 	add.s	$f18,$f16,$f8
    2f9c:	e612019c 	swc1	$f18,412(s0)
    2fa0:	24010006 	li	at,6
    2fa4:	5441000e 	bnel	v0,at,2fe0 <func_8099B5EC+0x174>
    2fa8:	8fb900fc 	lw	t9,252(sp)
    2fac:	46000180 	add.s	$f6,$f0,$f0
    2fb0:	c604019c 	lwc1	$f4,412(s0)
    2fb4:	4600328d 	trunc.w.s	$f10,$f6
    2fb8:	440e5000 	mfc1	t6,$f10
    2fbc:	00000000 	nop
    2fc0:	000e7c00 	sll	t7,t6,0x10
    2fc4:	000fc403 	sra	t8,t7,0x10
    2fc8:	44988000 	mtc1	t8,$f16
    2fcc:	00000000 	nop
    2fd0:	46808220 	cvt.s.w	$f8,$f16
    2fd4:	46082481 	sub.s	$f18,$f4,$f8
    2fd8:	e612019c 	swc1	$f18,412(s0)
    2fdc:	8fb900fc 	lw	t9,252(sp)
    2fe0:	8f240000 	lw	a0,0(t9)
    2fe4:	e7a000dc 	swc1	$f0,220(sp)
    2fe8:	0c000000 	jal	0 <func_80998780>
    2fec:	afa800d8 	sw	t0,216(sp)
    2ff0:	8602001c 	lh	v0,28(s0)
    2ff4:	24010004 	li	at,4
    2ff8:	8fa800d8 	lw	t0,216(sp)
    2ffc:	1041000c 	beq	v0,at,3030 <func_8099B5EC+0x1c4>
    3000:	00003825 	move	a3,zero
    3004:	24010008 	li	at,8
    3008:	1041003d 	beq	v0,at,3100 <func_8099B5EC+0x294>
    300c:	3c0bfa00 	lui	t3,0xfa00
    3010:	24010009 	li	at,9
    3014:	1041006d 	beq	v0,at,31cc <func_8099B5EC+0x360>
    3018:	3c0cfa00 	lui	t4,0xfa00
    301c:	2401000a 	li	at,10
    3020:	1041009d 	beq	v0,at,3298 <func_8099B5EC+0x42c>
    3024:	3c0dfa00 	lui	t5,0xfa00
    3028:	100000ce 	b	3364 <func_8099B5EC+0x4f8>
    302c:	3c0efa00 	lui	t6,0xfa00
    3030:	8d0302d0 	lw	v1,720(t0)
    3034:	3c0afa00 	lui	t2,0xfa00
    3038:	354a0080 	ori	t2,t2,0x80
    303c:	24690008 	addiu	t1,v1,8
    3040:	ad0902d0 	sw	t1,720(t0)
    3044:	444bf800 	cfc1	t3,$31
    3048:	240c0001 	li	t4,1
    304c:	ac6a0000 	sw	t2,0(v1)
    3050:	44ccf800 	ctc1	t4,$31
    3054:	c60601a4 	lwc1	$f6,420(s0)
    3058:	3c014f00 	lui	at,0x4f00
    305c:	3c09c8ff 	lui	t1,0xc8ff
    3060:	460032a4 	cvt.w.s	$f10,$f6
    3064:	3c19fb00 	lui	t9,0xfb00
    3068:	444cf800 	cfc1	t4,$31
    306c:	00000000 	nop
    3070:	318c0078 	andi	t4,t4,0x78
    3074:	51800013 	beqzl	t4,30c4 <func_8099B5EC+0x258>
    3078:	440c5000 	mfc1	t4,$f10
    307c:	44815000 	mtc1	at,$f10
    3080:	240c0001 	li	t4,1
    3084:	460a3281 	sub.s	$f10,$f6,$f10
    3088:	44ccf800 	ctc1	t4,$31
    308c:	00000000 	nop
    3090:	460052a4 	cvt.w.s	$f10,$f10
    3094:	444cf800 	cfc1	t4,$31
    3098:	00000000 	nop
    309c:	318c0078 	andi	t4,t4,0x78
    30a0:	15800005 	bnez	t4,30b8 <func_8099B5EC+0x24c>
    30a4:	00000000 	nop
    30a8:	440c5000 	mfc1	t4,$f10
    30ac:	3c018000 	lui	at,0x8000
    30b0:	10000007 	b	30d0 <func_8099B5EC+0x264>
    30b4:	01816025 	or	t4,t4,at
    30b8:	10000005 	b	30d0 <func_8099B5EC+0x264>
    30bc:	240cffff 	li	t4,-1
    30c0:	440c5000 	mfc1	t4,$f10
    30c4:	00000000 	nop
    30c8:	0580fffb 	bltz	t4,30b8 <func_8099B5EC+0x24c>
    30cc:	00000000 	nop
    30d0:	318e00ff 	andi	t6,t4,0xff
    30d4:	2401ff00 	li	at,-256
    30d8:	01c17825 	or	t7,t6,at
    30dc:	ac6f0004 	sw	t7,4(v1)
    30e0:	8d0202d0 	lw	v0,720(t0)
    30e4:	44cbf800 	ctc1	t3,$31
    30e8:	352900ff 	ori	t1,t1,0xff
    30ec:	24580008 	addiu	t8,v0,8
    30f0:	ad1802d0 	sw	t8,720(t0)
    30f4:	ac490004 	sw	t1,4(v0)
    30f8:	100000f5 	b	34d0 <func_8099B5EC+0x664>
    30fc:	ac590000 	sw	t9,0(v0)
    3100:	8d0302d0 	lw	v1,720(t0)
    3104:	356b0080 	ori	t3,t3,0x80
    3108:	444cf800 	cfc1	t4,$31
    310c:	246a0008 	addiu	t2,v1,8
    3110:	ad0a02d0 	sw	t2,720(t0)
    3114:	240d0001 	li	t5,1
    3118:	ac6b0000 	sw	t3,0(v1)
    311c:	44cdf800 	ctc1	t5,$31
    3120:	c61001a4 	lwc1	$f16,420(s0)
    3124:	3c014f00 	lui	at,0x4f00
    3128:	3c0aff96 	lui	t2,0xff96
    312c:	46008124 	cvt.w.s	$f4,$f16
    3130:	3c09fb00 	lui	t1,0xfb00
    3134:	444df800 	cfc1	t5,$31
    3138:	00000000 	nop
    313c:	31ad0078 	andi	t5,t5,0x78
    3140:	51a00013 	beqzl	t5,3190 <func_8099B5EC+0x324>
    3144:	440d2000 	mfc1	t5,$f4
    3148:	44812000 	mtc1	at,$f4
    314c:	240d0001 	li	t5,1
    3150:	46048101 	sub.s	$f4,$f16,$f4
    3154:	44cdf800 	ctc1	t5,$31
    3158:	00000000 	nop
    315c:	46002124 	cvt.w.s	$f4,$f4
    3160:	444df800 	cfc1	t5,$31
    3164:	00000000 	nop
    3168:	31ad0078 	andi	t5,t5,0x78
    316c:	15a00005 	bnez	t5,3184 <func_8099B5EC+0x318>
    3170:	00000000 	nop
    3174:	440d2000 	mfc1	t5,$f4
    3178:	3c018000 	lui	at,0x8000
    317c:	10000007 	b	319c <func_8099B5EC+0x330>
    3180:	01a16825 	or	t5,t5,at
    3184:	10000005 	b	319c <func_8099B5EC+0x330>
    3188:	240dffff 	li	t5,-1
    318c:	440d2000 	mfc1	t5,$f4
    3190:	00000000 	nop
    3194:	05a0fffb 	bltz	t5,3184 <func_8099B5EC+0x318>
    3198:	00000000 	nop
    319c:	31af00ff 	andi	t7,t5,0xff
    31a0:	2401ff00 	li	at,-256
    31a4:	01e1c025 	or	t8,t7,at
    31a8:	ac780004 	sw	t8,4(v1)
    31ac:	8d0202d0 	lw	v0,720(t0)
    31b0:	44ccf800 	ctc1	t4,$31
    31b4:	354a00ff 	ori	t2,t2,0xff
    31b8:	24590008 	addiu	t9,v0,8
    31bc:	ad1902d0 	sw	t9,720(t0)
    31c0:	ac4a0004 	sw	t2,4(v0)
    31c4:	100000c2 	b	34d0 <func_8099B5EC+0x664>
    31c8:	ac490000 	sw	t1,0(v0)
    31cc:	8d0302d0 	lw	v1,720(t0)
    31d0:	358c0080 	ori	t4,t4,0x80
    31d4:	444df800 	cfc1	t5,$31
    31d8:	246b0008 	addiu	t3,v1,8
    31dc:	ad0b02d0 	sw	t3,720(t0)
    31e0:	240e0001 	li	t6,1
    31e4:	ac6c0000 	sw	t4,0(v1)
    31e8:	44cef800 	ctc1	t6,$31
    31ec:	c60801a4 	lwc1	$f8,420(s0)
    31f0:	3c014f00 	lui	at,0x4f00
    31f4:	3c0b00c8 	lui	t3,0xc8
    31f8:	460044a4 	cvt.w.s	$f18,$f8
    31fc:	3c0afb00 	lui	t2,0xfb00
    3200:	444ef800 	cfc1	t6,$31
    3204:	00000000 	nop
    3208:	31ce0078 	andi	t6,t6,0x78
    320c:	51c00013 	beqzl	t6,325c <func_8099B5EC+0x3f0>
    3210:	440e9000 	mfc1	t6,$f18
    3214:	44819000 	mtc1	at,$f18
    3218:	240e0001 	li	t6,1
    321c:	46124481 	sub.s	$f18,$f8,$f18
    3220:	44cef800 	ctc1	t6,$31
    3224:	00000000 	nop
    3228:	460094a4 	cvt.w.s	$f18,$f18
    322c:	444ef800 	cfc1	t6,$31
    3230:	00000000 	nop
    3234:	31ce0078 	andi	t6,t6,0x78
    3238:	15c00005 	bnez	t6,3250 <func_8099B5EC+0x3e4>
    323c:	00000000 	nop
    3240:	440e9000 	mfc1	t6,$f18
    3244:	3c018000 	lui	at,0x8000
    3248:	10000007 	b	3268 <func_8099B5EC+0x3fc>
    324c:	01c17025 	or	t6,t6,at
    3250:	10000005 	b	3268 <func_8099B5EC+0x3fc>
    3254:	240effff 	li	t6,-1
    3258:	440e9000 	mfc1	t6,$f18
    325c:	00000000 	nop
    3260:	05c0fffb 	bltz	t6,3250 <func_8099B5EC+0x3e4>
    3264:	00000000 	nop
    3268:	31d800ff 	andi	t8,t6,0xff
    326c:	2401ff00 	li	at,-256
    3270:	0301c825 	or	t9,t8,at
    3274:	ac790004 	sw	t9,4(v1)
    3278:	8d0202d0 	lw	v0,720(t0)
    327c:	44cdf800 	ctc1	t5,$31
    3280:	356b00ff 	ori	t3,t3,0xff
    3284:	24490008 	addiu	t1,v0,8
    3288:	ad0902d0 	sw	t1,720(t0)
    328c:	ac4b0004 	sw	t3,4(v0)
    3290:	1000008f 	b	34d0 <func_8099B5EC+0x664>
    3294:	ac4a0000 	sw	t2,0(v0)
    3298:	8d0302d0 	lw	v1,720(t0)
    329c:	35ad0080 	ori	t5,t5,0x80
    32a0:	444ef800 	cfc1	t6,$31
    32a4:	246c0008 	addiu	t4,v1,8
    32a8:	ad0c02d0 	sw	t4,720(t0)
    32ac:	240f0001 	li	t7,1
    32b0:	ac6d0000 	sw	t5,0(v1)
    32b4:	44cff800 	ctc1	t7,$31
    32b8:	c60601a4 	lwc1	$f6,420(s0)
    32bc:	3c014f00 	lui	at,0x4f00
    32c0:	3c0cff32 	lui	t4,0xff32
    32c4:	460032a4 	cvt.w.s	$f10,$f6
    32c8:	3c0bfb00 	lui	t3,0xfb00
    32cc:	444ff800 	cfc1	t7,$31
    32d0:	00000000 	nop
    32d4:	31ef0078 	andi	t7,t7,0x78
    32d8:	51e00013 	beqzl	t7,3328 <func_8099B5EC+0x4bc>
    32dc:	440f5000 	mfc1	t7,$f10
    32e0:	44815000 	mtc1	at,$f10
    32e4:	240f0001 	li	t7,1
    32e8:	460a3281 	sub.s	$f10,$f6,$f10
    32ec:	44cff800 	ctc1	t7,$31
    32f0:	00000000 	nop
    32f4:	460052a4 	cvt.w.s	$f10,$f10
    32f8:	444ff800 	cfc1	t7,$31
    32fc:	00000000 	nop
    3300:	31ef0078 	andi	t7,t7,0x78
    3304:	15e00005 	bnez	t7,331c <func_8099B5EC+0x4b0>
    3308:	00000000 	nop
    330c:	440f5000 	mfc1	t7,$f10
    3310:	3c018000 	lui	at,0x8000
    3314:	10000007 	b	3334 <func_8099B5EC+0x4c8>
    3318:	01e17825 	or	t7,t7,at
    331c:	10000005 	b	3334 <func_8099B5EC+0x4c8>
    3320:	240fffff 	li	t7,-1
    3324:	440f5000 	mfc1	t7,$f10
    3328:	00000000 	nop
    332c:	05e0fffb 	bltz	t7,331c <func_8099B5EC+0x4b0>
    3330:	00000000 	nop
    3334:	31f900ff 	andi	t9,t7,0xff
    3338:	2401ff00 	li	at,-256
    333c:	03214825 	or	t1,t9,at
    3340:	ac690004 	sw	t1,4(v1)
    3344:	8d0202d0 	lw	v0,720(t0)
    3348:	44cef800 	ctc1	t6,$31
    334c:	358c00ff 	ori	t4,t4,0xff
    3350:	244a0008 	addiu	t2,v0,8
    3354:	ad0a02d0 	sw	t2,720(t0)
    3358:	ac4c0004 	sw	t4,4(v0)
    335c:	1000005c 	b	34d0 <func_8099B5EC+0x664>
    3360:	ac4b0000 	sw	t3,0(v0)
    3364:	8d0302d0 	lw	v1,720(t0)
    3368:	35ce0080 	ori	t6,t6,0x80
    336c:	3c01437f 	lui	at,0x437f
    3370:	246d0008 	addiu	t5,v1,8
    3374:	ad0d02d0 	sw	t5,720(t0)
    3378:	ac6e0000 	sw	t6,0(v1)
    337c:	c7a400dc 	lwc1	$f4,220(sp)
    3380:	44818000 	mtc1	at,$f16
    3384:	24040001 	li	a0,1
    3388:	3c014f00 	lui	at,0x4f00
    338c:	46048202 	mul.s	$f8,$f16,$f4
    3390:	444ff800 	cfc1	t7,$31
    3394:	44c4f800 	ctc1	a0,$31
    3398:	00000000 	nop
    339c:	460044a4 	cvt.w.s	$f18,$f8
    33a0:	4444f800 	cfc1	a0,$31
    33a4:	00000000 	nop
    33a8:	30840078 	andi	a0,a0,0x78
    33ac:	50800013 	beqzl	a0,33fc <func_8099B5EC+0x590>
    33b0:	44049000 	mfc1	a0,$f18
    33b4:	44819000 	mtc1	at,$f18
    33b8:	24040001 	li	a0,1
    33bc:	46124481 	sub.s	$f18,$f8,$f18
    33c0:	44c4f800 	ctc1	a0,$31
    33c4:	00000000 	nop
    33c8:	460094a4 	cvt.w.s	$f18,$f18
    33cc:	4444f800 	cfc1	a0,$31
    33d0:	00000000 	nop
    33d4:	30840078 	andi	a0,a0,0x78
    33d8:	14800005 	bnez	a0,33f0 <func_8099B5EC+0x584>
    33dc:	00000000 	nop
    33e0:	44049000 	mfc1	a0,$f18
    33e4:	3c018000 	lui	at,0x8000
    33e8:	10000007 	b	3408 <func_8099B5EC+0x59c>
    33ec:	00812025 	or	a0,a0,at
    33f0:	10000005 	b	3408 <func_8099B5EC+0x59c>
    33f4:	2404ffff 	li	a0,-1
    33f8:	44049000 	mfc1	a0,$f18
    33fc:	00000000 	nop
    3400:	0480fffb 	bltz	a0,33f0 <func_8099B5EC+0x584>
    3404:	00000000 	nop
    3408:	44cff800 	ctc1	t7,$31
    340c:	240b0001 	li	t3,1
    3410:	c60601a4 	lwc1	$f6,420(s0)
    3414:	308400ff 	andi	a0,a0,0xff
    3418:	444af800 	cfc1	t2,$31
    341c:	44cbf800 	ctc1	t3,$31
    3420:	0004c600 	sll	t8,a0,0x18
    3424:	3c0100ff 	lui	at,0xff
    3428:	460032a4 	cvt.w.s	$f10,$f6
    342c:	0301c825 	or	t9,t8,at
    3430:	3729ff00 	ori	t1,t9,0xff00
    3434:	3c014f00 	lui	at,0x4f00
    3438:	444bf800 	cfc1	t3,$31
    343c:	3c18fb00 	lui	t8,0xfb00
    3440:	316b0078 	andi	t3,t3,0x78
    3444:	51600013 	beqzl	t3,3494 <func_8099B5EC+0x628>
    3448:	440b5000 	mfc1	t3,$f10
    344c:	44815000 	mtc1	at,$f10
    3450:	240b0001 	li	t3,1
    3454:	460a3281 	sub.s	$f10,$f6,$f10
    3458:	44cbf800 	ctc1	t3,$31
    345c:	00000000 	nop
    3460:	460052a4 	cvt.w.s	$f10,$f10
    3464:	444bf800 	cfc1	t3,$31
    3468:	00000000 	nop
    346c:	316b0078 	andi	t3,t3,0x78
    3470:	15600005 	bnez	t3,3488 <func_8099B5EC+0x61c>
    3474:	00000000 	nop
    3478:	440b5000 	mfc1	t3,$f10
    347c:	3c018000 	lui	at,0x8000
    3480:	10000007 	b	34a0 <func_8099B5EC+0x634>
    3484:	01615825 	or	t3,t3,at
    3488:	10000005 	b	34a0 <func_8099B5EC+0x634>
    348c:	240bffff 	li	t3,-1
    3490:	440b5000 	mfc1	t3,$f10
    3494:	00000000 	nop
    3498:	0560fffb 	bltz	t3,3488 <func_8099B5EC+0x61c>
    349c:	00000000 	nop
    34a0:	01606025 	move	t4,t3
    34a4:	318d00ff 	andi	t5,t4,0xff
    34a8:	012d7025 	or	t6,t1,t5
    34ac:	ac6e0004 	sw	t6,4(v1)
    34b0:	8d0202d0 	lw	v0,720(t0)
    34b4:	44caf800 	ctc1	t2,$31
    34b8:	00045400 	sll	t2,a0,0x10
    34bc:	244f0008 	addiu	t7,v0,8
    34c0:	ad0f02d0 	sw	t7,720(t0)
    34c4:	354bffff 	ori	t3,t2,0xffff
    34c8:	ac4b0004 	sw	t3,4(v0)
    34cc:	ac580000 	sw	t8,0(v0)
    34d0:	8d0202d0 	lw	v0,720(t0)
    34d4:	3c04e300 	lui	a0,0xe300
    34d8:	34841801 	ori	a0,a0,0x1801
    34dc:	244c0008 	addiu	t4,v0,8
    34e0:	ad0c02d0 	sw	t4,720(t0)
    34e4:	240900c0 	li	t1,192
    34e8:	ac490004 	sw	t1,4(v0)
    34ec:	ac440000 	sw	a0,0(v0)
    34f0:	8d0202d0 	lw	v0,720(t0)
    34f4:	240e0010 	li	t6,16
    34f8:	3c013f80 	lui	at,0x3f80
    34fc:	244d0008 	addiu	t5,v0,8
    3500:	ad0d02d0 	sw	t5,720(t0)
    3504:	ac4e0004 	sw	t6,4(v0)
    3508:	ac440000 	sw	a0,0(v0)
    350c:	c6100028 	lwc1	$f16,40(s0)
    3510:	44812000 	mtc1	at,$f4
    3514:	8e06002c 	lw	a2,44(s0)
    3518:	c60c0024 	lwc1	$f12,36(s0)
    351c:	afa800d8 	sw	t0,216(sp)
    3520:	0c000000 	jal	0 <func_80998780>
    3524:	46048380 	add.s	$f14,$f16,$f4
    3528:	8fa800d8 	lw	t0,216(sp)
    352c:	3c18db06 	lui	t8,0xdb06
    3530:	37180028 	ori	t8,t8,0x28
    3534:	8d0202d0 	lw	v0,720(t0)
    3538:	3c050000 	lui	a1,0x0
    353c:	24a50000 	addiu	a1,a1,0
    3540:	244f0008 	addiu	t7,v0,8
    3544:	ad0f02d0 	sw	t7,720(t0)
    3548:	ac580000 	sw	t8,0(v0)
    354c:	8fb900fc 	lw	t9,252(sp)
    3550:	240608c7 	li	a2,2247
    3554:	8f240000 	lw	a0,0(t9)
    3558:	afa800d8 	sw	t0,216(sp)
    355c:	0c000000 	jal	0 <func_80998780>
    3560:	afa20094 	sw	v0,148(sp)
    3564:	8fa30094 	lw	v1,148(sp)
    3568:	8fa800d8 	lw	t0,216(sp)
    356c:	ac620004 	sw	v0,4(v1)
    3570:	0c000000 	jal	0 <func_80998780>
    3574:	afa800d8 	sw	t0,216(sp)
    3578:	8fa800d8 	lw	t0,216(sp)
    357c:	3c0bdb06 	lui	t3,0xdb06
    3580:	356b0020 	ori	t3,t3,0x20
    3584:	8d0202d0 	lw	v0,720(t0)
    3588:	240d0100 	li	t5,256
    358c:	240e0100 	li	t6,256
    3590:	244a0008 	addiu	t2,v0,8
    3594:	ad0a02d0 	sw	t2,720(t0)
    3598:	ac4b0000 	sw	t3,0(v0)
    359c:	c600019c 	lwc1	$f0,412(s0)
    35a0:	8fac00fc 	lw	t4,252(sp)
    35a4:	8fa600ec 	lw	a2,236(sp)
    35a8:	46000200 	add.s	$f8,$f0,$f0
    35ac:	8d840000 	lw	a0,0(t4)
    35b0:	240f0001 	li	t7,1
    35b4:	24180100 	li	t8,256
    35b8:	4600448d 	trunc.w.s	$f18,$f8
    35bc:	24190100 	li	t9,256
    35c0:	30c600ff 	andi	a2,a2,0xff
    35c4:	afa6001c 	sw	a2,28(sp)
    35c8:	44079000 	mfc1	a3,$f18
    35cc:	afb90028 	sw	t9,40(sp)
    35d0:	afb80024 	sw	t8,36(sp)
    35d4:	00073c00 	sll	a3,a3,0x10
    35d8:	00073c03 	sra	a3,a3,0x10
    35dc:	30e701ff 	andi	a3,a3,0x1ff
    35e0:	00073823 	negu	a3,a3
    35e4:	afa70020 	sw	a3,32(sp)
    35e8:	afaf0018 	sw	t7,24(sp)
    35ec:	afae0014 	sw	t6,20(sp)
    35f0:	afad0010 	sw	t5,16(sp)
    35f4:	00002825 	move	a1,zero
    35f8:	afa800d8 	sw	t0,216(sp)
    35fc:	0c000000 	jal	0 <func_80998780>
    3600:	afa20090 	sw	v0,144(sp)
    3604:	8fa30090 	lw	v1,144(sp)
    3608:	8fa800d8 	lw	t0,216(sp)
    360c:	3c014366 	lui	at,0x4366
    3610:	ac620004 	sw	v0,4(v1)
    3614:	44806000 	mtc1	zero,$f12
    3618:	c6060194 	lwc1	$f6,404(s0)
    361c:	44815000 	mtc1	at,$f10
    3620:	44066000 	mfc1	a2,$f12
    3624:	24070001 	li	a3,1
    3628:	460a3382 	mul.s	$f14,$f6,$f10
    362c:	0c000000 	jal	0 <func_80998780>
    3630:	afa800d8 	sw	t0,216(sp)
    3634:	860a01ae 	lh	t2,430(s0)
    3638:	c7a800e8 	lwc1	$f8,232(sp)
    363c:	3c013f80 	lui	at,0x3f80
    3640:	448a8000 	mtc1	t2,$f16
    3644:	44817000 	mtc1	at,$f14
    3648:	3c0142c8 	lui	at,0x42c8
    364c:	46808120 	cvt.s.w	$f4,$f16
    3650:	44813000 	mtc1	at,$f6
    3654:	24070001 	li	a3,1
    3658:	46082482 	mul.s	$f18,$f4,$f8
    365c:	46069283 	div.s	$f10,$f18,$f6
    3660:	460e5300 	add.s	$f12,$f10,$f14
    3664:	44066000 	mfc1	a2,$f12
    3668:	0c000000 	jal	0 <func_80998780>
    366c:	00000000 	nop
    3670:	8fa800d8 	lw	t0,216(sp)
    3674:	3c0cdb06 	lui	t4,0xdb06
    3678:	358c0024 	ori	t4,t4,0x24
    367c:	8d0202d0 	lw	v0,720(t0)
    3680:	3c050000 	lui	a1,0x0
    3684:	24a50000 	addiu	a1,a1,0
    3688:	244b0008 	addiu	t3,v0,8
    368c:	ad0b02d0 	sw	t3,720(t0)
    3690:	ac4c0000 	sw	t4,0(v0)
    3694:	8fa900fc 	lw	t1,252(sp)
    3698:	240608db 	li	a2,2267
    369c:	8d240000 	lw	a0,0(t1)
    36a0:	afa800d8 	sw	t0,216(sp)
    36a4:	0c000000 	jal	0 <func_80998780>
    36a8:	afa2008c 	sw	v0,140(sp)
    36ac:	8fa3008c 	lw	v1,140(sp)
    36b0:	8fa800d8 	lw	t0,216(sp)
    36b4:	3c040600 	lui	a0,0x600
    36b8:	ac620004 	sw	v0,4(v1)
    36bc:	8d0202d0 	lw	v0,720(t0)
    36c0:	248401a0 	addiu	a0,a0,416
    36c4:	3c0ede00 	lui	t6,0xde00
    36c8:	244d0008 	addiu	t5,v0,8
    36cc:	ad0d02d0 	sw	t5,720(t0)
    36d0:	ac440004 	sw	a0,4(v0)
    36d4:	ac4e0000 	sw	t6,0(v0)
    36d8:	afa40040 	sw	a0,64(sp)
    36dc:	0c000000 	jal	0 <func_80998780>
    36e0:	afa800d8 	sw	t0,216(sp)
    36e4:	44808000 	mtc1	zero,$f16
    36e8:	c60401a0 	lwc1	$f4,416(s0)
    36ec:	8fa800d8 	lw	t0,216(sp)
    36f0:	4604803c 	c.lt.s	$f16,$f4
    36f4:	00000000 	nop
    36f8:	45020192 	bc1fl	3d44 <func_8099B5EC+0xed8>
    36fc:	8fac00fc 	lw	t4,252(sp)
    3700:	8602001c 	lh	v0,28(s0)
    3704:	24010004 	li	at,4
    3708:	3c19fa00 	lui	t9,0xfa00
    370c:	1041003b 	beq	v0,at,37fc <func_8099B5EC+0x990>
    3710:	37390080 	ori	t9,t9,0x80
    3714:	24010008 	li	at,8
    3718:	1041006a 	beq	v0,at,38c4 <func_8099B5EC+0xa58>
    371c:	3c0afa00 	lui	t2,0xfa00
    3720:	24010009 	li	at,9
    3724:	1041009a 	beq	v0,at,3990 <func_8099B5EC+0xb24>
    3728:	3c0bfa00 	lui	t3,0xfa00
    372c:	2401000a 	li	at,10
    3730:	104100ca 	beq	v0,at,3a5c <func_8099B5EC+0xbf0>
    3734:	3c0cfa00 	lui	t4,0xfa00
    3738:	3c01437f 	lui	at,0x437f
    373c:	44814000 	mtc1	at,$f8
    3740:	c7b200dc 	lwc1	$f18,220(sp)
    3744:	24040001 	li	a0,1
    3748:	3c09fa00 	lui	t1,0xfa00
    374c:	46124182 	mul.s	$f6,$f8,$f18
    3750:	3c014f00 	lui	at,0x4f00
    3754:	35290080 	ori	t1,t1,0x80
    3758:	240e0001 	li	t6,1
    375c:	444ff800 	cfc1	t7,$31
    3760:	44c4f800 	ctc1	a0,$31
    3764:	00000000 	nop
    3768:	460032a4 	cvt.w.s	$f10,$f6
    376c:	4444f800 	cfc1	a0,$31
    3770:	00000000 	nop
    3774:	30840078 	andi	a0,a0,0x78
    3778:	50800013 	beqzl	a0,37c8 <func_8099B5EC+0x95c>
    377c:	44045000 	mfc1	a0,$f10
    3780:	44815000 	mtc1	at,$f10
    3784:	24040001 	li	a0,1
    3788:	460a3281 	sub.s	$f10,$f6,$f10
    378c:	44c4f800 	ctc1	a0,$31
    3790:	00000000 	nop
    3794:	460052a4 	cvt.w.s	$f10,$f10
    3798:	4444f800 	cfc1	a0,$31
    379c:	00000000 	nop
    37a0:	30840078 	andi	a0,a0,0x78
    37a4:	14800005 	bnez	a0,37bc <func_8099B5EC+0x950>
    37a8:	00000000 	nop
    37ac:	44045000 	mfc1	a0,$f10
    37b0:	3c018000 	lui	at,0x8000
    37b4:	10000007 	b	37d4 <func_8099B5EC+0x968>
    37b8:	00812025 	or	a0,a0,at
    37bc:	10000005 	b	37d4 <func_8099B5EC+0x968>
    37c0:	2404ffff 	li	a0,-1
    37c4:	44045000 	mfc1	a0,$f10
    37c8:	00000000 	nop
    37cc:	0480fffb 	bltz	a0,37bc <func_8099B5EC+0x950>
    37d0:	00000000 	nop
    37d4:	308400ff 	andi	a0,a0,0xff
    37d8:	00042e00 	sll	a1,a0,0x18
    37dc:	00043400 	sll	a2,a0,0x10
    37e0:	3c0100ff 	lui	at,0xff
    37e4:	00a12825 	or	a1,a1,at
    37e8:	34c6ff00 	ori	a2,a2,0xff00
    37ec:	44cff800 	ctc1	t7,$31
    37f0:	34c600ff 	ori	a2,a2,0xff
    37f4:	100000cc 	b	3b28 <func_8099B5EC+0xcbc>
    37f8:	34a5ff00 	ori	a1,a1,0xff00
    37fc:	8d0302d0 	lw	v1,720(t0)
    3800:	444af800 	cfc1	t2,$31
    3804:	240b0001 	li	t3,1
    3808:	24780008 	addiu	t8,v1,8
    380c:	ad1802d0 	sw	t8,720(t0)
    3810:	ac790000 	sw	t9,0(v1)
    3814:	44cbf800 	ctc1	t3,$31
    3818:	c61001a4 	lwc1	$f16,420(s0)
    381c:	3c014f00 	lui	at,0x4f00
    3820:	3c18c8ff 	lui	t8,0xc8ff
    3824:	46008124 	cvt.w.s	$f4,$f16
    3828:	3c0ffb00 	lui	t7,0xfb00
    382c:	444bf800 	cfc1	t3,$31
    3830:	00000000 	nop
    3834:	316b0078 	andi	t3,t3,0x78
    3838:	51600013 	beqzl	t3,3888 <func_8099B5EC+0xa1c>
    383c:	440b2000 	mfc1	t3,$f4
    3840:	44812000 	mtc1	at,$f4
    3844:	240b0001 	li	t3,1
    3848:	46048101 	sub.s	$f4,$f16,$f4
    384c:	44cbf800 	ctc1	t3,$31
    3850:	00000000 	nop
    3854:	46002124 	cvt.w.s	$f4,$f4
    3858:	444bf800 	cfc1	t3,$31
    385c:	00000000 	nop
    3860:	316b0078 	andi	t3,t3,0x78
    3864:	15600005 	bnez	t3,387c <func_8099B5EC+0xa10>
    3868:	00000000 	nop
    386c:	440b2000 	mfc1	t3,$f4
    3870:	3c018000 	lui	at,0x8000
    3874:	10000007 	b	3894 <func_8099B5EC+0xa28>
    3878:	01615825 	or	t3,t3,at
    387c:	10000005 	b	3894 <func_8099B5EC+0xa28>
    3880:	240bffff 	li	t3,-1
    3884:	440b2000 	mfc1	t3,$f4
    3888:	00000000 	nop
    388c:	0560fffb 	bltz	t3,387c <func_8099B5EC+0xa10>
    3890:	00000000 	nop
    3894:	316900ff 	andi	t1,t3,0xff
    3898:	2401ff00 	li	at,-256
    389c:	01216825 	or	t5,t1,at
    38a0:	ac6d0004 	sw	t5,4(v1)
    38a4:	8d0202d0 	lw	v0,720(t0)
    38a8:	44caf800 	ctc1	t2,$31
    38ac:	371800ff 	ori	t8,t8,0xff
    38b0:	244e0008 	addiu	t6,v0,8
    38b4:	ad0e02d0 	sw	t6,720(t0)
    38b8:	ac580004 	sw	t8,4(v0)
    38bc:	100000c7 	b	3bdc <func_8099B5EC+0xd70>
    38c0:	ac4f0000 	sw	t7,0(v0)
    38c4:	8d0302d0 	lw	v1,720(t0)
    38c8:	354a0080 	ori	t2,t2,0x80
    38cc:	444bf800 	cfc1	t3,$31
    38d0:	24790008 	addiu	t9,v1,8
    38d4:	ad1902d0 	sw	t9,720(t0)
    38d8:	240c0001 	li	t4,1
    38dc:	ac6a0000 	sw	t2,0(v1)
    38e0:	44ccf800 	ctc1	t4,$31
    38e4:	c60801a4 	lwc1	$f8,420(s0)
    38e8:	3c014f00 	lui	at,0x4f00
    38ec:	3c19ff96 	lui	t9,0xff96
    38f0:	460044a4 	cvt.w.s	$f18,$f8
    38f4:	3c18fb00 	lui	t8,0xfb00
    38f8:	444cf800 	cfc1	t4,$31
    38fc:	00000000 	nop
    3900:	318c0078 	andi	t4,t4,0x78
    3904:	51800013 	beqzl	t4,3954 <func_8099B5EC+0xae8>
    3908:	440c9000 	mfc1	t4,$f18
    390c:	44819000 	mtc1	at,$f18
    3910:	240c0001 	li	t4,1
    3914:	46124481 	sub.s	$f18,$f8,$f18
    3918:	44ccf800 	ctc1	t4,$31
    391c:	00000000 	nop
    3920:	460094a4 	cvt.w.s	$f18,$f18
    3924:	444cf800 	cfc1	t4,$31
    3928:	00000000 	nop
    392c:	318c0078 	andi	t4,t4,0x78
    3930:	15800005 	bnez	t4,3948 <func_8099B5EC+0xadc>
    3934:	00000000 	nop
    3938:	440c9000 	mfc1	t4,$f18
    393c:	3c018000 	lui	at,0x8000
    3940:	10000007 	b	3960 <func_8099B5EC+0xaf4>
    3944:	01816025 	or	t4,t4,at
    3948:	10000005 	b	3960 <func_8099B5EC+0xaf4>
    394c:	240cffff 	li	t4,-1
    3950:	440c9000 	mfc1	t4,$f18
    3954:	00000000 	nop
    3958:	0580fffb 	bltz	t4,3948 <func_8099B5EC+0xadc>
    395c:	00000000 	nop
    3960:	318d00ff 	andi	t5,t4,0xff
    3964:	2401ff00 	li	at,-256
    3968:	01a17025 	or	t6,t5,at
    396c:	ac6e0004 	sw	t6,4(v1)
    3970:	8d0202d0 	lw	v0,720(t0)
    3974:	44cbf800 	ctc1	t3,$31
    3978:	373900ff 	ori	t9,t9,0xff
    397c:	244f0008 	addiu	t7,v0,8
    3980:	ad0f02d0 	sw	t7,720(t0)
    3984:	ac590004 	sw	t9,4(v0)
    3988:	10000094 	b	3bdc <func_8099B5EC+0xd70>
    398c:	ac580000 	sw	t8,0(v0)
    3990:	8d0302d0 	lw	v1,720(t0)
    3994:	356b0080 	ori	t3,t3,0x80
    3998:	444cf800 	cfc1	t4,$31
    399c:	246a0008 	addiu	t2,v1,8
    39a0:	ad0a02d0 	sw	t2,720(t0)
    39a4:	24090001 	li	t1,1
    39a8:	ac6b0000 	sw	t3,0(v1)
    39ac:	44c9f800 	ctc1	t1,$31
    39b0:	c60601a4 	lwc1	$f6,420(s0)
    39b4:	3c014f00 	lui	at,0x4f00
    39b8:	3c0a00c8 	lui	t2,0xc8
    39bc:	460032a4 	cvt.w.s	$f10,$f6
    39c0:	3c19fb00 	lui	t9,0xfb00
    39c4:	4449f800 	cfc1	t1,$31
    39c8:	00000000 	nop
    39cc:	31290078 	andi	t1,t1,0x78
    39d0:	51200013 	beqzl	t1,3a20 <func_8099B5EC+0xbb4>
    39d4:	44095000 	mfc1	t1,$f10
    39d8:	44815000 	mtc1	at,$f10
    39dc:	24090001 	li	t1,1
    39e0:	460a3281 	sub.s	$f10,$f6,$f10
    39e4:	44c9f800 	ctc1	t1,$31
    39e8:	00000000 	nop
    39ec:	460052a4 	cvt.w.s	$f10,$f10
    39f0:	4449f800 	cfc1	t1,$31
    39f4:	00000000 	nop
    39f8:	31290078 	andi	t1,t1,0x78
    39fc:	15200005 	bnez	t1,3a14 <func_8099B5EC+0xba8>
    3a00:	00000000 	nop
    3a04:	44095000 	mfc1	t1,$f10
    3a08:	3c018000 	lui	at,0x8000
    3a0c:	10000007 	b	3a2c <func_8099B5EC+0xbc0>
    3a10:	01214825 	or	t1,t1,at
    3a14:	10000005 	b	3a2c <func_8099B5EC+0xbc0>
    3a18:	2409ffff 	li	t1,-1
    3a1c:	44095000 	mfc1	t1,$f10
    3a20:	00000000 	nop
    3a24:	0520fffb 	bltz	t1,3a14 <func_8099B5EC+0xba8>
    3a28:	00000000 	nop
    3a2c:	312e00ff 	andi	t6,t1,0xff
    3a30:	2401ff00 	li	at,-256
    3a34:	01c17825 	or	t7,t6,at
    3a38:	ac6f0004 	sw	t7,4(v1)
    3a3c:	8d0202d0 	lw	v0,720(t0)
    3a40:	44ccf800 	ctc1	t4,$31
    3a44:	354a00ff 	ori	t2,t2,0xff
    3a48:	24580008 	addiu	t8,v0,8
    3a4c:	ad1802d0 	sw	t8,720(t0)
    3a50:	ac4a0004 	sw	t2,4(v0)
    3a54:	10000061 	b	3bdc <func_8099B5EC+0xd70>
    3a58:	ac590000 	sw	t9,0(v0)
    3a5c:	8d0302d0 	lw	v1,720(t0)
    3a60:	358c0080 	ori	t4,t4,0x80
    3a64:	4449f800 	cfc1	t1,$31
    3a68:	246b0008 	addiu	t3,v1,8
    3a6c:	ad0b02d0 	sw	t3,720(t0)
    3a70:	240d0001 	li	t5,1
    3a74:	ac6c0000 	sw	t4,0(v1)
    3a78:	44cdf800 	ctc1	t5,$31
    3a7c:	c61001a4 	lwc1	$f16,420(s0)
    3a80:	3c014f00 	lui	at,0x4f00
    3a84:	3c0bff32 	lui	t3,0xff32
    3a88:	46008124 	cvt.w.s	$f4,$f16
    3a8c:	3c0afb00 	lui	t2,0xfb00
    3a90:	444df800 	cfc1	t5,$31
    3a94:	00000000 	nop
    3a98:	31ad0078 	andi	t5,t5,0x78
    3a9c:	51a00013 	beqzl	t5,3aec <func_8099B5EC+0xc80>
    3aa0:	440d2000 	mfc1	t5,$f4
    3aa4:	44812000 	mtc1	at,$f4
    3aa8:	240d0001 	li	t5,1
    3aac:	46048101 	sub.s	$f4,$f16,$f4
    3ab0:	44cdf800 	ctc1	t5,$31
    3ab4:	00000000 	nop
    3ab8:	46002124 	cvt.w.s	$f4,$f4
    3abc:	444df800 	cfc1	t5,$31
    3ac0:	00000000 	nop
    3ac4:	31ad0078 	andi	t5,t5,0x78
    3ac8:	15a00005 	bnez	t5,3ae0 <func_8099B5EC+0xc74>
    3acc:	00000000 	nop
    3ad0:	440d2000 	mfc1	t5,$f4
    3ad4:	3c018000 	lui	at,0x8000
    3ad8:	10000007 	b	3af8 <func_8099B5EC+0xc8c>
    3adc:	01a16825 	or	t5,t5,at
    3ae0:	10000005 	b	3af8 <func_8099B5EC+0xc8c>
    3ae4:	240dffff 	li	t5,-1
    3ae8:	440d2000 	mfc1	t5,$f4
    3aec:	00000000 	nop
    3af0:	05a0fffb 	bltz	t5,3ae0 <func_8099B5EC+0xc74>
    3af4:	00000000 	nop
    3af8:	31af00ff 	andi	t7,t5,0xff
    3afc:	2401ff00 	li	at,-256
    3b00:	01e1c025 	or	t8,t7,at
    3b04:	ac780004 	sw	t8,4(v1)
    3b08:	8d0202d0 	lw	v0,720(t0)
    3b0c:	44c9f800 	ctc1	t1,$31
    3b10:	356b00ff 	ori	t3,t3,0xff
    3b14:	24590008 	addiu	t9,v0,8
    3b18:	ad1902d0 	sw	t9,720(t0)
    3b1c:	ac4b0004 	sw	t3,4(v0)
    3b20:	1000002e 	b	3bdc <func_8099B5EC+0xd70>
    3b24:	ac4a0000 	sw	t2,0(v0)
    3b28:	8d0302d0 	lw	v1,720(t0)
    3b2c:	444df800 	cfc1	t5,$31
    3b30:	44cef800 	ctc1	t6,$31
    3b34:	246c0008 	addiu	t4,v1,8
    3b38:	ad0c02d0 	sw	t4,720(t0)
    3b3c:	ac690000 	sw	t1,0(v1)
    3b40:	c60801a0 	lwc1	$f8,416(s0)
    3b44:	3c014f00 	lui	at,0x4f00
    3b48:	460044a4 	cvt.w.s	$f18,$f8
    3b4c:	444ef800 	cfc1	t6,$31
    3b50:	00000000 	nop
    3b54:	31ce0078 	andi	t6,t6,0x78
    3b58:	51c00013 	beqzl	t6,3ba8 <func_8099B5EC+0xd3c>
    3b5c:	440e9000 	mfc1	t6,$f18
    3b60:	44819000 	mtc1	at,$f18
    3b64:	240e0001 	li	t6,1
    3b68:	46124481 	sub.s	$f18,$f8,$f18
    3b6c:	44cef800 	ctc1	t6,$31
    3b70:	00000000 	nop
    3b74:	460094a4 	cvt.w.s	$f18,$f18
    3b78:	444ef800 	cfc1	t6,$31
    3b7c:	00000000 	nop
    3b80:	31ce0078 	andi	t6,t6,0x78
    3b84:	15c00005 	bnez	t6,3b9c <func_8099B5EC+0xd30>
    3b88:	00000000 	nop
    3b8c:	440e9000 	mfc1	t6,$f18
    3b90:	3c018000 	lui	at,0x8000
    3b94:	10000007 	b	3bb4 <func_8099B5EC+0xd48>
    3b98:	01c17025 	or	t6,t6,at
    3b9c:	10000005 	b	3bb4 <func_8099B5EC+0xd48>
    3ba0:	240effff 	li	t6,-1
    3ba4:	440e9000 	mfc1	t6,$f18
    3ba8:	00000000 	nop
    3bac:	05c0fffb 	bltz	t6,3b9c <func_8099B5EC+0xd30>
    3bb0:	00000000 	nop
    3bb4:	31d800ff 	andi	t8,t6,0xff
    3bb8:	00b8c825 	or	t9,a1,t8
    3bbc:	ac790004 	sw	t9,4(v1)
    3bc0:	8d0202d0 	lw	v0,720(t0)
    3bc4:	44cdf800 	ctc1	t5,$31
    3bc8:	3c0bfb00 	lui	t3,0xfb00
    3bcc:	244a0008 	addiu	t2,v0,8
    3bd0:	ad0a02d0 	sw	t2,720(t0)
    3bd4:	ac460004 	sw	a2,4(v0)
    3bd8:	ac4b0000 	sw	t3,0(v0)
    3bdc:	8fac00ec 	lw	t4,236(sp)
    3be0:	3c0edb06 	lui	t6,0xdb06
    3be4:	35ce0020 	ori	t6,t6,0x20
    3be8:	000c4840 	sll	t1,t4,0x1
    3bec:	afa900ec 	sw	t1,236(sp)
    3bf0:	8d0202d0 	lw	v0,720(t0)
    3bf4:	24090100 	li	t1,256
    3bf8:	240c0100 	li	t4,256
    3bfc:	244d0008 	addiu	t5,v0,8
    3c00:	ad0d02d0 	sw	t5,720(t0)
    3c04:	ac4e0000 	sw	t6,0(v0)
    3c08:	c606019c 	lwc1	$f6,412(s0)
    3c0c:	8faf00fc 	lw	t7,252(sp)
    3c10:	8fa600ec 	lw	a2,236(sp)
    3c14:	4600328d 	trunc.w.s	$f10,$f6
    3c18:	8de40000 	lw	a0,0(t7)
    3c1c:	24190100 	li	t9,256
    3c20:	240a0100 	li	t2,256
    3c24:	44075000 	mfc1	a3,$f10
    3c28:	240b0001 	li	t3,1
    3c2c:	30c600ff 	andi	a2,a2,0xff
    3c30:	00073c00 	sll	a3,a3,0x10
    3c34:	00073c03 	sra	a3,a3,0x10
    3c38:	30e701ff 	andi	a3,a3,0x1ff
    3c3c:	00073823 	negu	a3,a3
    3c40:	afa70020 	sw	a3,32(sp)
    3c44:	afa6001c 	sw	a2,28(sp)
    3c48:	afab0018 	sw	t3,24(sp)
    3c4c:	afaa0014 	sw	t2,20(sp)
    3c50:	afb90010 	sw	t9,16(sp)
    3c54:	afa800d8 	sw	t0,216(sp)
    3c58:	afa90028 	sw	t1,40(sp)
    3c5c:	afac0024 	sw	t4,36(sp)
    3c60:	00002825 	move	a1,zero
    3c64:	0c000000 	jal	0 <func_80998780>
    3c68:	afa2005c 	sw	v0,92(sp)
    3c6c:	8fa3005c 	lw	v1,92(sp)
    3c70:	8fa800d8 	lw	t0,216(sp)
    3c74:	3c014270 	lui	at,0x4270
    3c78:	ac620004 	sw	v0,4(v1)
    3c7c:	c6100198 	lwc1	$f16,408(s0)
    3c80:	44812000 	mtc1	at,$f4
    3c84:	44806000 	mtc1	zero,$f12
    3c88:	24060000 	li	a2,0
    3c8c:	46048382 	mul.s	$f14,$f16,$f4
    3c90:	24070001 	li	a3,1
    3c94:	0c000000 	jal	0 <func_80998780>
    3c98:	afa800d8 	sw	t0,216(sp)
    3c9c:	860d01b0 	lh	t5,432(s0)
    3ca0:	c7a600e4 	lwc1	$f6,228(sp)
    3ca4:	3c0142c8 	lui	at,0x42c8
    3ca8:	448d4000 	mtc1	t5,$f8
    3cac:	44818000 	mtc1	at,$f16
    3cb0:	3c013f80 	lui	at,0x3f80
    3cb4:	468044a0 	cvt.s.w	$f18,$f8
    3cb8:	44814000 	mtc1	at,$f8
    3cbc:	44817000 	mtc1	at,$f14
    3cc0:	24070001 	li	a3,1
    3cc4:	46069282 	mul.s	$f10,$f18,$f6
    3cc8:	46105103 	div.s	$f4,$f10,$f16
    3ccc:	46082300 	add.s	$f12,$f4,$f8
    3cd0:	44066000 	mfc1	a2,$f12
    3cd4:	0c000000 	jal	0 <func_80998780>
    3cd8:	00000000 	nop
    3cdc:	8fa800d8 	lw	t0,216(sp)
    3ce0:	3c0fdb06 	lui	t7,0xdb06
    3ce4:	35ef0024 	ori	t7,t7,0x24
    3ce8:	8d0202d0 	lw	v0,720(t0)
    3cec:	3c050000 	lui	a1,0x0
    3cf0:	24a50000 	addiu	a1,a1,0
    3cf4:	244e0008 	addiu	t6,v0,8
    3cf8:	ad0e02d0 	sw	t6,720(t0)
    3cfc:	ac4f0000 	sw	t7,0(v0)
    3d00:	8fb800fc 	lw	t8,252(sp)
    3d04:	24060920 	li	a2,2336
    3d08:	8f040000 	lw	a0,0(t8)
    3d0c:	afa800d8 	sw	t0,216(sp)
    3d10:	0c000000 	jal	0 <func_80998780>
    3d14:	afa20058 	sw	v0,88(sp)
    3d18:	8fa30058 	lw	v1,88(sp)
    3d1c:	8fa800d8 	lw	t0,216(sp)
    3d20:	3c0ade00 	lui	t2,0xde00
    3d24:	ac620004 	sw	v0,4(v1)
    3d28:	8d0202d0 	lw	v0,720(t0)
    3d2c:	24590008 	addiu	t9,v0,8
    3d30:	ad1902d0 	sw	t9,720(t0)
    3d34:	ac4a0000 	sw	t2,0(v0)
    3d38:	8fab0040 	lw	t3,64(sp)
    3d3c:	ac4b0004 	sw	t3,4(v0)
    3d40:	8fac00fc 	lw	t4,252(sp)
    3d44:	3c060000 	lui	a2,0x0
    3d48:	24c60000 	addiu	a2,a2,0
    3d4c:	27a400c8 	addiu	a0,sp,200
    3d50:	24070924 	li	a3,2340
    3d54:	0c000000 	jal	0 <func_80998780>
    3d58:	8d850000 	lw	a1,0(t4)
    3d5c:	8fbf003c 	lw	ra,60(sp)
    3d60:	8fb00038 	lw	s0,56(sp)
    3d64:	27bd00f8 	addiu	sp,sp,248
    3d68:	03e00008 	jr	ra
    3d6c:	00000000 	nop

00003d70 <DoorWarp1_Draw>:
    3d70:	27bdffe8 	addiu	sp,sp,-24
    3d74:	afbf0014 	sw	ra,20(sp)
    3d78:	848e001c 	lh	t6,28(a0)
    3d7c:	25cf0002 	addiu	t7,t6,2
    3d80:	2de1000d 	sltiu	at,t7,13
    3d84:	10200018 	beqz	at,3de8 <L8099C560+0x8>
    3d88:	000f7880 	sll	t7,t7,0x2
    3d8c:	3c010000 	lui	at,0x0
    3d90:	002f0821 	addu	at,at,t7
    3d94:	8c2f0000 	lw	t7,0(at)
    3d98:	01e00008 	jr	t7
    3d9c:	00000000 	nop

00003da0 <L8099C520>:
    3da0:	afa40018 	sw	a0,24(sp)
    3da4:	0c000000 	jal	0 <func_80998780>
    3da8:	afa5001c 	sw	a1,28(sp)
    3dac:	8fa40018 	lw	a0,24(sp)
    3db0:	0c000000 	jal	0 <func_80998780>
    3db4:	8fa5001c 	lw	a1,28(sp)
    3db8:	1000000c 	b	3dec <L8099C560+0xc>
    3dbc:	8fbf0014 	lw	ra,20(sp)

00003dc0 <L8099C540>:
    3dc0:	0c000000 	jal	0 <func_80998780>
    3dc4:	00000000 	nop
    3dc8:	10000008 	b	3dec <L8099C560+0xc>
    3dcc:	8fbf0014 	lw	ra,20(sp)

00003dd0 <L8099C550>:
    3dd0:	0c000000 	jal	0 <func_80998780>
    3dd4:	00000000 	nop
    3dd8:	10000004 	b	3dec <L8099C560+0xc>
    3ddc:	8fbf0014 	lw	ra,20(sp)

00003de0 <L8099C560>:
    3de0:	0c000000 	jal	0 <func_80998780>
    3de4:	00000000 	nop
    3de8:	8fbf0014 	lw	ra,20(sp)
    3dec:	27bd0018 	addiu	sp,sp,24
    3df0:	03e00008 	jr	ra
    3df4:	00000000 	nop
	...
