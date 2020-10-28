
build/src/overlays/actors/ovl_En_Sb/z_en_sb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSb_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnSb_Init>
      1c:	24a5006c 	addiu	a1,a1,108
      20:	3c0e0000 	lui	t6,0x0
      24:	25ce004c 	addiu	t6,t6,76
      28:	240f0002 	li	t7,2
      2c:	ae0e0098 	sw	t6,152(s0)
      30:	a20f00af 	sb	t7,175(s0)
      34:	3c060000 	lui	a2,0x0
      38:	3c070000 	lui	a3,0x0
      3c:	24e70000 	addiu	a3,a3,0
      40:	24c60000 	addiu	a2,a2,0
      44:	afa00018 	sw	zero,24(sp)
      48:	afa00014 	sw	zero,20(sp)
      4c:	afa00010 	sw	zero,16(sp)
      50:	8fa4003c 	lw	a0,60(sp)
      54:	0c000000 	jal	0 <EnSb_Init>
      58:	2605014c 	addiu	a1,s0,332
      5c:	26050194 	addiu	a1,s0,404
      60:	afa50030 	sw	a1,48(sp)
      64:	0c000000 	jal	0 <EnSb_Init>
      68:	8fa4003c 	lw	a0,60(sp)
      6c:	3c070000 	lui	a3,0x0
      70:	8fa50030 	lw	a1,48(sp)
      74:	24e70020 	addiu	a3,a3,32
      78:	8fa4003c 	lw	a0,60(sp)
      7c:	0c000000 	jal	0 <EnSb_Init>
      80:	02003025 	move	a2,s0
      84:	3c053bc4 	lui	a1,0x3bc4
      88:	a60001fc 	sh	zero,508(s0)
      8c:	a20000ae 	sb	zero,174(s0)
      90:	34a59ba6 	ori	a1,a1,0x9ba6
      94:	0c000000 	jal	0 <EnSb_Init>
      98:	02002025 	move	a0,s0
      9c:	44802000 	mtc1	zero,$f4
      a0:	a60000b6 	sh	zero,182(s0)
      a4:	3c010000 	lui	at,0x0
      a8:	e6040068 	swc1	$f4,104(s0)
      ac:	c426002c 	lwc1	$f6,44(at)
      b0:	3c01bf80 	lui	at,0xbf80
      b4:	44814000 	mtc1	at,$f8
      b8:	a60001f8 	sh	zero,504(s0)
      bc:	a2000204 	sb	zero,516(s0)
      c0:	02002025 	move	a0,s0
      c4:	e606006c 	swc1	$f6,108(s0)
      c8:	0c000000 	jal	0 <EnSb_Init>
      cc:	e6080060 	swc1	$f8,96(s0)
      d0:	8fbf002c 	lw	ra,44(sp)
      d4:	8fb00028 	lw	s0,40(sp)
      d8:	27bd0038 	addiu	sp,sp,56
      dc:	03e00008 	jr	ra
      e0:	00000000 	nop

000000e4 <EnSb_Destroy>:
      e4:	27bdffe8 	addiu	sp,sp,-24
      e8:	afbf0014 	sw	ra,20(sp)
      ec:	afa40018 	sw	a0,24(sp)
      f0:	afa5001c 	sw	a1,28(sp)
      f4:	0c000000 	jal	0 <EnSb_Init>
      f8:	2484014c 	addiu	a0,a0,332
      fc:	8fa50018 	lw	a1,24(sp)
     100:	8fa4001c 	lw	a0,28(sp)
     104:	0c000000 	jal	0 <EnSb_Init>
     108:	24a50194 	addiu	a1,a1,404
     10c:	8fbf0014 	lw	ra,20(sp)
     110:	27bd0018 	addiu	sp,sp,24
     114:	03e00008 	jr	ra
     118:	00000000 	nop

0000011c <EnSb_SpawnBubbles>:
     11c:	27bdffb8 	addiu	sp,sp,-72
     120:	afbf0044 	sw	ra,68(sp)
     124:	afb30040 	sw	s3,64(sp)
     128:	afb2003c 	sw	s2,60(sp)
     12c:	afb10038 	sw	s1,56(sp)
     130:	afb00034 	sw	s0,52(sp)
     134:	f7b80028 	sdc1	$f24,40(sp)
     138:	f7b60020 	sdc1	$f22,32(sp)
     13c:	f7b40018 	sdc1	$f20,24(sp)
     140:	c4a60084 	lwc1	$f6,132(a1)
     144:	44802000 	mtc1	zero,$f4
     148:	00809025 	move	s2,a0
     14c:	00008025 	move	s0,zero
     150:	4606203c 	c.lt.s	$f4,$f6
     154:	24b10024 	addiu	s1,a1,36
     158:	3c013e80 	lui	at,0x3e80
     15c:	45020012 	bc1fl	1a8 <EnSb_SpawnBubbles+0x8c>
     160:	8fbf0044 	lw	ra,68(sp)
     164:	4481c000 	mtc1	at,$f24
     168:	3c0141f0 	lui	at,0x41f0
     16c:	4481b000 	mtc1	at,$f22
     170:	3c014120 	lui	at,0x4120
     174:	4481a000 	mtc1	at,$f20
     178:	2413000a 	li	s3,10
     17c:	4406a000 	mfc1	a2,$f20
     180:	4407a000 	mfc1	a3,$f20
     184:	02402025 	move	a0,s2
     188:	02202825 	move	a1,s1
     18c:	e7b60010 	swc1	$f22,16(sp)
     190:	0c000000 	jal	0 <EnSb_Init>
     194:	e7b80014 	swc1	$f24,20(sp)
     198:	26100001 	addiu	s0,s0,1
     19c:	5613fff8 	bnel	s0,s3,180 <EnSb_SpawnBubbles+0x64>
     1a0:	4406a000 	mfc1	a2,$f20
     1a4:	8fbf0044 	lw	ra,68(sp)
     1a8:	d7b40018 	ldc1	$f20,24(sp)
     1ac:	d7b60020 	ldc1	$f22,32(sp)
     1b0:	d7b80028 	ldc1	$f24,40(sp)
     1b4:	8fb00034 	lw	s0,52(sp)
     1b8:	8fb10038 	lw	s1,56(sp)
     1bc:	8fb2003c 	lw	s2,60(sp)
     1c0:	8fb30040 	lw	s3,64(sp)
     1c4:	03e00008 	jr	ra
     1c8:	27bd0048 	addiu	sp,sp,72

000001cc <EnSb_SetupWaitClosed>:
     1cc:	27bdffd8 	addiu	sp,sp,-40
     1d0:	afa40028 	sw	a0,40(sp)
     1d4:	afbf0024 	sw	ra,36(sp)
     1d8:	3c040000 	lui	a0,0x0
     1dc:	0c000000 	jal	0 <EnSb_Init>
     1e0:	24840000 	addiu	a0,a0,0
     1e4:	44822000 	mtc1	v0,$f4
     1e8:	8fa40028 	lw	a0,40(sp)
     1ec:	44804000 	mtc1	zero,$f8
     1f0:	468021a0 	cvt.s.w	$f6,$f4
     1f4:	3c050000 	lui	a1,0x0
     1f8:	240e0002 	li	t6,2
     1fc:	afae0014 	sw	t6,20(sp)
     200:	24a50000 	addiu	a1,a1,0
     204:	3c063f80 	lui	a2,0x3f80
     208:	e7a60010 	swc1	$f6,16(sp)
     20c:	24070000 	li	a3,0
     210:	2484014c 	addiu	a0,a0,332
     214:	0c000000 	jal	0 <EnSb_Init>
     218:	e7a80018 	swc1	$f8,24(sp)
     21c:	8fa20028 	lw	v0,40(sp)
     220:	3c180000 	lui	t8,0x0
     224:	240f0001 	li	t7,1
     228:	27180000 	addiu	t8,t8,0
     22c:	a44f01fa 	sh	t7,506(v0)
     230:	ac580190 	sw	t8,400(v0)
     234:	8fbf0024 	lw	ra,36(sp)
     238:	27bd0028 	addiu	sp,sp,40
     23c:	03e00008 	jr	ra
     240:	00000000 	nop

00000244 <EnSb_SetupOpen>:
     244:	27bdffd8 	addiu	sp,sp,-40
     248:	afa40028 	sw	a0,40(sp)
     24c:	afbf0024 	sw	ra,36(sp)
     250:	3c040000 	lui	a0,0x0
     254:	0c000000 	jal	0 <EnSb_Init>
     258:	24840000 	addiu	a0,a0,0
     25c:	44822000 	mtc1	v0,$f4
     260:	8fa40028 	lw	a0,40(sp)
     264:	44804000 	mtc1	zero,$f8
     268:	468021a0 	cvt.s.w	$f6,$f4
     26c:	3c050000 	lui	a1,0x0
     270:	240e0002 	li	t6,2
     274:	afae0014 	sw	t6,20(sp)
     278:	24a50000 	addiu	a1,a1,0
     27c:	3c063f80 	lui	a2,0x3f80
     280:	e7a60010 	swc1	$f6,16(sp)
     284:	24070000 	li	a3,0
     288:	2484014c 	addiu	a0,a0,332
     28c:	0c000000 	jal	0 <EnSb_Init>
     290:	e7a80018 	swc1	$f8,24(sp)
     294:	8fa40028 	lw	a0,40(sp)
     298:	3c0f0000 	lui	t7,0x0
     29c:	25ef0000 	addiu	t7,t7,0
     2a0:	24053849 	li	a1,14409
     2a4:	a48001fa 	sh	zero,506(a0)
     2a8:	0c000000 	jal	0 <EnSb_Init>
     2ac:	ac8f0190 	sw	t7,400(a0)
     2b0:	8fbf0024 	lw	ra,36(sp)
     2b4:	27bd0028 	addiu	sp,sp,40
     2b8:	03e00008 	jr	ra
     2bc:	00000000 	nop

000002c0 <EnSb_SetupWaitOpen>:
     2c0:	27bdffd8 	addiu	sp,sp,-40
     2c4:	afa40028 	sw	a0,40(sp)
     2c8:	afbf0024 	sw	ra,36(sp)
     2cc:	3c040000 	lui	a0,0x0
     2d0:	0c000000 	jal	0 <EnSb_Init>
     2d4:	24840000 	addiu	a0,a0,0
     2d8:	44822000 	mtc1	v0,$f4
     2dc:	8fa40028 	lw	a0,40(sp)
     2e0:	44804000 	mtc1	zero,$f8
     2e4:	468021a0 	cvt.s.w	$f6,$f4
     2e8:	3c050000 	lui	a1,0x0
     2ec:	24a50000 	addiu	a1,a1,0
     2f0:	3c063f80 	lui	a2,0x3f80
     2f4:	24070000 	li	a3,0
     2f8:	afa00014 	sw	zero,20(sp)
     2fc:	e7a60010 	swc1	$f6,16(sp)
     300:	2484014c 	addiu	a0,a0,332
     304:	0c000000 	jal	0 <EnSb_Init>
     308:	e7a80018 	swc1	$f8,24(sp)
     30c:	8fa20028 	lw	v0,40(sp)
     310:	3c0f0000 	lui	t7,0x0
     314:	240e0002 	li	t6,2
     318:	25ef0000 	addiu	t7,t7,0
     31c:	a44e01fa 	sh	t6,506(v0)
     320:	ac4f0190 	sw	t7,400(v0)
     324:	8fbf0024 	lw	ra,36(sp)
     328:	27bd0028 	addiu	sp,sp,40
     32c:	03e00008 	jr	ra
     330:	00000000 	nop

00000334 <EnSb_SetupLunge>:
     334:	27bdffd0 	addiu	sp,sp,-48
     338:	afb00028 	sw	s0,40(sp)
     33c:	00808025 	move	s0,a0
     340:	afbf002c 	sw	ra,44(sp)
     344:	3c040000 	lui	a0,0x0
     348:	0c000000 	jal	0 <EnSb_Init>
     34c:	24840000 	addiu	a0,a0,0
     350:	44806000 	mtc1	zero,$f12
     354:	c6060084 	lwc1	$f6,132(s0)
     358:	44822000 	mtc1	v0,$f4
     35c:	3c050000 	lui	a1,0x0
     360:	4606603c 	c.lt.s	$f12,$f6
     364:	44076000 	mfc1	a3,$f12
     368:	24a50000 	addiu	a1,a1,0
     36c:	2604014c 	addiu	a0,s0,332
     370:	45000005 	bc1f	388 <EnSb_SetupLunge+0x54>
     374:	468020a0 	cvt.s.w	$f2,$f4
     378:	3c013f80 	lui	at,0x3f80
     37c:	44810000 	mtc1	at,$f0
     380:	10000003 	b	390 <EnSb_SetupLunge+0x5c>
     384:	44804000 	mtc1	zero,$f8
     388:	46006006 	mov.s	$f0,$f12
     38c:	44804000 	mtc1	zero,$f8
     390:	44060000 	mfc1	a2,$f0
     394:	240e0002 	li	t6,2
     398:	afae0014 	sw	t6,20(sp)
     39c:	e7a20010 	swc1	$f2,16(sp)
     3a0:	0c000000 	jal	0 <EnSb_Init>
     3a4:	e7a80018 	swc1	$f8,24(sp)
     3a8:	3c180000 	lui	t8,0x0
     3ac:	240f0003 	li	t7,3
     3b0:	27180000 	addiu	t8,t8,0
     3b4:	a60f01fa 	sh	t7,506(s0)
     3b8:	ae180190 	sw	t8,400(s0)
     3bc:	02002025 	move	a0,s0
     3c0:	0c000000 	jal	0 <EnSb_Init>
     3c4:	24053849 	li	a1,14409
     3c8:	8fbf002c 	lw	ra,44(sp)
     3cc:	8fb00028 	lw	s0,40(sp)
     3d0:	27bd0030 	addiu	sp,sp,48
     3d4:	03e00008 	jr	ra
     3d8:	00000000 	nop

000003dc <EnSb_SetupBounce>:
     3dc:	27bdffd8 	addiu	sp,sp,-40
     3e0:	afa40028 	sw	a0,40(sp)
     3e4:	afbf0024 	sw	ra,36(sp)
     3e8:	3c040000 	lui	a0,0x0
     3ec:	0c000000 	jal	0 <EnSb_Init>
     3f0:	24840000 	addiu	a0,a0,0
     3f4:	44822000 	mtc1	v0,$f4
     3f8:	8fa40028 	lw	a0,40(sp)
     3fc:	44804000 	mtc1	zero,$f8
     400:	468021a0 	cvt.s.w	$f6,$f4
     404:	3c050000 	lui	a1,0x0
     408:	240e0002 	li	t6,2
     40c:	afae0014 	sw	t6,20(sp)
     410:	24a50000 	addiu	a1,a1,0
     414:	3c063f80 	lui	a2,0x3f80
     418:	e7a60010 	swc1	$f6,16(sp)
     41c:	24070000 	li	a3,0
     420:	2484014c 	addiu	a0,a0,332
     424:	0c000000 	jal	0 <EnSb_Init>
     428:	e7a80018 	swc1	$f8,24(sp)
     42c:	8fa20028 	lw	v0,40(sp)
     430:	3c180000 	lui	t8,0x0
     434:	240f0004 	li	t7,4
     438:	27180000 	addiu	t8,t8,0
     43c:	a44f01fa 	sh	t7,506(v0)
     440:	ac580190 	sw	t8,400(v0)
     444:	8fbf0024 	lw	ra,36(sp)
     448:	27bd0028 	addiu	sp,sp,40
     44c:	03e00008 	jr	ra
     450:	00000000 	nop

00000454 <EnSb_SetupCooldown>:
     454:	27bdffd0 	addiu	sp,sp,-48
     458:	afb00028 	sw	s0,40(sp)
     45c:	00808025 	move	s0,a0
     460:	afbf002c 	sw	ra,44(sp)
     464:	3c040000 	lui	a0,0x0
     468:	afa50034 	sw	a1,52(sp)
     46c:	0c000000 	jal	0 <EnSb_Init>
     470:	24840000 	addiu	a0,a0,0
     474:	860e01fa 	lh	t6,506(s0)
     478:	44822000 	mtc1	v0,$f4
     47c:	24010001 	li	at,1
     480:	11c1000c 	beq	t6,at,4b4 <EnSb_SetupCooldown+0x60>
     484:	46802020 	cvt.s.w	$f0,$f4
     488:	44803000 	mtc1	zero,$f6
     48c:	3c050000 	lui	a1,0x0
     490:	240f0002 	li	t7,2
     494:	afaf0014 	sw	t7,20(sp)
     498:	24a50000 	addiu	a1,a1,0
     49c:	2604014c 	addiu	a0,s0,332
     4a0:	3c063f80 	lui	a2,0x3f80
     4a4:	24070000 	li	a3,0
     4a8:	e7a00010 	swc1	$f0,16(sp)
     4ac:	0c000000 	jal	0 <EnSb_Init>
     4b0:	e7a60018 	swc1	$f6,24(sp)
     4b4:	24180001 	li	t8,1
     4b8:	a61801fa 	sh	t8,506(s0)
     4bc:	8fb90034 	lw	t9,52(sp)
     4c0:	44800000 	mtc1	zero,$f0
     4c4:	2408003c 	li	t0,60
     4c8:	1320001b 	beqz	t9,538 <EnSb_SetupCooldown+0xe4>
     4cc:	3c090000 	lui	t1,0x0
     4d0:	c6080084 	lwc1	$f8,132(s0)
     4d4:	4608003c 	c.lt.s	$f0,$f8
     4d8:	00000000 	nop
     4dc:	4502000d 	bc1fl	514 <EnSb_SetupCooldown+0xc0>
     4e0:	c6060060 	lwc1	$f6,96(s0)
     4e4:	c6100060 	lwc1	$f16,96(s0)
     4e8:	3c01c0a0 	lui	at,0xc0a0
     4ec:	44815000 	mtc1	at,$f10
     4f0:	4600803c 	c.lt.s	$f16,$f0
     4f4:	3c010000 	lui	at,0x0
     4f8:	e60a0068 	swc1	$f10,104(s0)
     4fc:	4500000e 	bc1f	538 <EnSb_SetupCooldown+0xe4>
     500:	00000000 	nop
     504:	c4320030 	lwc1	$f18,48(at)
     508:	1000000b 	b	538 <EnSb_SetupCooldown+0xe4>
     50c:	e6120060 	swc1	$f18,96(s0)
     510:	c6060060 	lwc1	$f6,96(s0)
     514:	3c01c0c0 	lui	at,0xc0c0
     518:	44812000 	mtc1	at,$f4
     51c:	4600303c 	c.lt.s	$f6,$f0
     520:	3c010000 	lui	at,0x0
     524:	e6040068 	swc1	$f4,104(s0)
     528:	45000003 	bc1f	538 <EnSb_SetupCooldown+0xe4>
     52c:	00000000 	nop
     530:	c4280034 	lwc1	$f8,52(at)
     534:	e6080060 	swc1	$f8,96(s0)
     538:	25290000 	addiu	t1,t1,0
     53c:	a60801fe 	sh	t0,510(s0)
     540:	ae090190 	sw	t1,400(s0)
     544:	8fbf002c 	lw	ra,44(sp)
     548:	8fb00028 	lw	s0,40(sp)
     54c:	27bd0030 	addiu	sp,sp,48
     550:	03e00008 	jr	ra
     554:	00000000 	nop

00000558 <EnSb_WaitClosed>:
     558:	27bdffe0 	addiu	sp,sp,-32
     55c:	afbf001c 	sw	ra,28(sp)
     560:	afa40020 	sw	a0,32(sp)
     564:	afa50024 	sw	a1,36(sp)
     568:	00807025 	move	t6,a0
     56c:	85c5008a 	lh	a1,138(t6)
     570:	afa00010 	sw	zero,16(sp)
     574:	248400b6 	addiu	a0,a0,182
     578:	2406000a 	li	a2,10
     57c:	0c000000 	jal	0 <EnSb_Init>
     580:	240707d0 	li	a3,2000
     584:	8fa40020 	lw	a0,32(sp)
     588:	3c014320 	lui	at,0x4320
     58c:	44812000 	mtc1	at,$f4
     590:	c4800090 	lwc1	$f0,144(a0)
     594:	3c014220 	lui	at,0x4220
     598:	4604003e 	c.le.s	$f0,$f4
     59c:	00000000 	nop
     5a0:	4502000a 	bc1fl	5cc <EnSb_WaitClosed+0x74>
     5a4:	8fbf001c 	lw	ra,28(sp)
     5a8:	44813000 	mtc1	at,$f6
     5ac:	00000000 	nop
     5b0:	4600303c 	c.lt.s	$f6,$f0
     5b4:	00000000 	nop
     5b8:	45020004 	bc1fl	5cc <EnSb_WaitClosed+0x74>
     5bc:	8fbf001c 	lw	ra,28(sp)
     5c0:	0c000000 	jal	0 <EnSb_Init>
     5c4:	00000000 	nop
     5c8:	8fbf001c 	lw	ra,28(sp)
     5cc:	27bd0020 	addiu	sp,sp,32
     5d0:	03e00008 	jr	ra
     5d4:	00000000 	nop

000005d8 <EnSb_Open>:
     5d8:	27bdffd0 	addiu	sp,sp,-48
     5dc:	afbf0024 	sw	ra,36(sp)
     5e0:	afb00020 	sw	s0,32(sp)
     5e4:	afa50034 	sw	a1,52(sp)
     5e8:	c4840164 	lwc1	$f4,356(a0)
     5ec:	00808025 	move	s0,a0
     5f0:	3c040000 	lui	a0,0x0
     5f4:	24840000 	addiu	a0,a0,0
     5f8:	0c000000 	jal	0 <EnSb_Init>
     5fc:	e7a4002c 	swc1	$f4,44(sp)
     600:	44824000 	mtc1	v0,$f8
     604:	c7a6002c 	lwc1	$f6,44(sp)
     608:	240e000f 	li	t6,15
     60c:	468042a0 	cvt.s.w	$f10,$f8
     610:	260400b6 	addiu	a0,s0,182
     614:	2406000a 	li	a2,10
     618:	240707d0 	li	a3,2000
     61c:	4606503e 	c.le.s	$f10,$f6
     620:	00000000 	nop
     624:	45020007 	bc1fl	644 <EnSb_Open+0x6c>
     628:	8605008a 	lh	a1,138(s0)
     62c:	a60e01fe 	sh	t6,510(s0)
     630:	0c000000 	jal	0 <EnSb_Init>
     634:	02002025 	move	a0,s0
     638:	10000015 	b	690 <EnSb_Open+0xb8>
     63c:	8fbf0024 	lw	ra,36(sp)
     640:	8605008a 	lh	a1,138(s0)
     644:	0c000000 	jal	0 <EnSb_Init>
     648:	afa00010 	sw	zero,16(sp)
     64c:	3c014320 	lui	at,0x4320
     650:	44818000 	mtc1	at,$f16
     654:	c6000090 	lwc1	$f0,144(s0)
     658:	3c014220 	lui	at,0x4220
     65c:	4600803c 	c.lt.s	$f16,$f0
     660:	00000000 	nop
     664:	45010007 	bc1t	684 <EnSb_Open+0xac>
     668:	00000000 	nop
     66c:	44819000 	mtc1	at,$f18
     670:	00000000 	nop
     674:	4612003e 	c.le.s	$f0,$f18
     678:	00000000 	nop
     67c:	45020004 	bc1fl	690 <EnSb_Open+0xb8>
     680:	8fbf0024 	lw	ra,36(sp)
     684:	0c000000 	jal	0 <EnSb_Init>
     688:	02002025 	move	a0,s0
     68c:	8fbf0024 	lw	ra,36(sp)
     690:	8fb00020 	lw	s0,32(sp)
     694:	27bd0030 	addiu	sp,sp,48
     698:	03e00008 	jr	ra
     69c:	00000000 	nop

000006a0 <EnSb_WaitOpen>:
     6a0:	27bdffd0 	addiu	sp,sp,-48
     6a4:	afbf0024 	sw	ra,36(sp)
     6a8:	afb00020 	sw	s0,32(sp)
     6ac:	afa50034 	sw	a1,52(sp)
     6b0:	848e01fe 	lh	t6,510(a0)
     6b4:	00808025 	move	s0,a0
     6b8:	248400b6 	addiu	a0,a0,182
     6bc:	a7ae002e 	sh	t6,46(sp)
     6c0:	8605008a 	lh	a1,138(s0)
     6c4:	afa00010 	sw	zero,16(sp)
     6c8:	2406000a 	li	a2,10
     6cc:	0c000000 	jal	0 <EnSb_Init>
     6d0:	240707d0 	li	a3,2000
     6d4:	3c014320 	lui	at,0x4320
     6d8:	44812000 	mtc1	at,$f4
     6dc:	c6000090 	lwc1	$f0,144(s0)
     6e0:	3c014220 	lui	at,0x4220
     6e4:	4600203c 	c.lt.s	$f4,$f0
     6e8:	00000000 	nop
     6ec:	45010007 	bc1t	70c <EnSb_WaitOpen+0x6c>
     6f0:	00000000 	nop
     6f4:	44813000 	mtc1	at,$f6
     6f8:	00000000 	nop
     6fc:	4606003e 	c.le.s	$f0,$f6
     700:	00000000 	nop
     704:	45020004 	bc1fl	718 <EnSb_WaitOpen+0x78>
     708:	87a2002e 	lh	v0,46(sp)
     70c:	0c000000 	jal	0 <EnSb_Init>
     710:	02002025 	move	a0,s0
     714:	87a2002e 	lh	v0,46(sp)
     718:	3c190000 	lui	t9,0x0
     71c:	27390000 	addiu	t9,t9,0
     720:	10400003 	beqz	v0,730 <EnSb_WaitOpen+0x90>
     724:	244fffff 	addiu	t7,v0,-1
     728:	10000005 	b	740 <EnSb_WaitOpen+0xa0>
     72c:	a60f01fe 	sh	t7,510(s0)
     730:	8618008a 	lh	t8,138(s0)
     734:	a60001fe 	sh	zero,510(s0)
     738:	ae190190 	sw	t9,400(s0)
     73c:	a6180200 	sh	t8,512(s0)
     740:	8fbf0024 	lw	ra,36(sp)
     744:	8fb00020 	lw	s0,32(sp)
     748:	27bd0030 	addiu	sp,sp,48
     74c:	03e00008 	jr	ra
     750:	00000000 	nop

00000754 <EnSb_TurnAround>:
     754:	27bdffd0 	addiu	sp,sp,-48
     758:	afbf0024 	sw	ra,36(sp)
     75c:	afb00020 	sw	s0,32(sp)
     760:	afa50034 	sw	a1,52(sp)
     764:	84850200 	lh	a1,512(a0)
     768:	34018000 	li	at,0x8000
     76c:	00808025 	move	s0,a0
     770:	00a12821 	addu	a1,a1,at
     774:	00052c00 	sll	a1,a1,0x10
     778:	00052c03 	sra	a1,a1,0x10
     77c:	240e000a 	li	t6,10
     780:	afae0010 	sw	t6,16(sp)
     784:	a7a5002e 	sh	a1,46(sp)
     788:	248400b6 	addiu	a0,a0,182
     78c:	24060001 	li	a2,1
     790:	0c000000 	jal	0 <EnSb_Init>
     794:	24071f40 	li	a3,8000
     798:	87a5002e 	lh	a1,46(sp)
     79c:	860f00b6 	lh	t7,182(s0)
     7a0:	54af0026 	bnel	a1,t7,83c <EnSb_TurnAround+0xe8>
     7a4:	8fbf0024 	lw	ra,36(sp)
     7a8:	44802000 	mtc1	zero,$f4
     7ac:	c6060084 	lwc1	$f6,132(s0)
     7b0:	86180200 	lh	t8,512(s0)
     7b4:	3c014000 	lui	at,0x4000
     7b8:	4606203c 	c.lt.s	$f4,$f6
     7bc:	02002825 	move	a1,s0
     7c0:	a6180032 	sh	t8,50(s0)
     7c4:	4502000c 	bc1fl	7f8 <EnSb_TurnAround+0xa4>
     7c8:	44819000 	mtc1	at,$f18
     7cc:	3c014040 	lui	at,0x4040
     7d0:	44814000 	mtc1	at,$f8
     7d4:	3c0140a0 	lui	at,0x40a0
     7d8:	44815000 	mtc1	at,$f10
     7dc:	3c010000 	lui	at,0x0
     7e0:	e6080060 	swc1	$f8,96(s0)
     7e4:	e60a0068 	swc1	$f10,104(s0)
     7e8:	c4300038 	lwc1	$f16,56(at)
     7ec:	10000009 	b	814 <EnSb_TurnAround+0xc0>
     7f0:	e610006c 	swc1	$f16,108(s0)
     7f4:	44819000 	mtc1	at,$f18
     7f8:	3c0140c0 	lui	at,0x40c0
     7fc:	44812000 	mtc1	at,$f4
     800:	3c01c000 	lui	at,0xc000
     804:	44813000 	mtc1	at,$f6
     808:	e6120060 	swc1	$f18,96(s0)
     80c:	e6040068 	swc1	$f4,104(s0)
     810:	e606006c 	swc1	$f6,108(s0)
     814:	0c000000 	jal	0 <EnSb_Init>
     818:	8fa40034 	lw	a0,52(sp)
     81c:	24190003 	li	t9,3
     820:	a6190202 	sh	t9,514(s0)
     824:	0c000000 	jal	0 <EnSb_Init>
     828:	02002025 	move	a0,s0
     82c:	3c040000 	lui	a0,0x0
     830:	0c000000 	jal	0 <EnSb_Init>
     834:	24840000 	addiu	a0,a0,0
     838:	8fbf0024 	lw	ra,36(sp)
     83c:	8fb00020 	lw	s0,32(sp)
     840:	27bd0030 	addiu	sp,sp,48
     844:	03e00008 	jr	ra
     848:	00000000 	nop

0000084c <EnSb_Lunge>:
     84c:	27bdffe8 	addiu	sp,sp,-24
     850:	afbf0014 	sw	ra,20(sp)
     854:	afa5001c 	sw	a1,28(sp)
     858:	00803825 	move	a3,a0
     85c:	3c063e4c 	lui	a2,0x3e4c
     860:	34c6cccd 	ori	a2,a2,0xcccd
     864:	afa70018 	sw	a3,24(sp)
     868:	24840068 	addiu	a0,a0,104
     86c:	0c000000 	jal	0 <EnSb_Init>
     870:	24050000 	li	a1,0
     874:	8fa70018 	lw	a3,24(sp)
     878:	3c010000 	lui	at,0x0
     87c:	c424003c 	lwc1	$f4,60(at)
     880:	c4e60060 	lwc1	$f6,96(a3)
     884:	4604303e 	c.le.s	$f6,$f4
     888:	00000000 	nop
     88c:	45030006 	bc1tl	8a8 <EnSb_Lunge+0x5c>
     890:	44804000 	mtc1	zero,$f8
     894:	94ee0088 	lhu	t6,136(a3)
     898:	31cf0002 	andi	t7,t6,0x2
     89c:	51e00012 	beqzl	t7,8e8 <EnSb_Lunge+0x9c>
     8a0:	8fbf0014 	lw	ra,20(sp)
     8a4:	44804000 	mtc1	zero,$f8
     8a8:	c4ea0084 	lwc1	$f10,132(a3)
     8ac:	00e02025 	move	a0,a3
     8b0:	2405387b 	li	a1,14459
     8b4:	460a403c 	c.lt.s	$f8,$f10
     8b8:	00000000 	nop
     8bc:	45030005 	bc1tl	8d4 <EnSb_Lunge+0x88>
     8c0:	94f80088 	lhu	t8,136(a3)
     8c4:	0c000000 	jal	0 <EnSb_Init>
     8c8:	afa70018 	sw	a3,24(sp)
     8cc:	8fa70018 	lw	a3,24(sp)
     8d0:	94f80088 	lhu	t8,136(a3)
     8d4:	00e02025 	move	a0,a3
     8d8:	3319fffd 	andi	t9,t8,0xfffd
     8dc:	0c000000 	jal	0 <EnSb_Init>
     8e0:	a4f90088 	sh	t9,136(a3)
     8e4:	8fbf0014 	lw	ra,20(sp)
     8e8:	27bd0018 	addiu	sp,sp,24
     8ec:	03e00008 	jr	ra
     8f0:	00000000 	nop

000008f4 <EnSb_Bounce>:
     8f4:	27bdffd0 	addiu	sp,sp,-48
     8f8:	afbf001c 	sw	ra,28(sp)
     8fc:	afb00018 	sw	s0,24(sp)
     900:	afa50034 	sw	a1,52(sp)
     904:	c4840164 	lwc1	$f4,356(a0)
     908:	00808025 	move	s0,a0
     90c:	3c040000 	lui	a0,0x0
     910:	24840000 	addiu	a0,a0,0
     914:	0c000000 	jal	0 <EnSb_Init>
     918:	e7a40028 	swc1	$f4,40(sp)
     91c:	44823000 	mtc1	v0,$f6
     920:	3c063e4c 	lui	a2,0x3e4c
     924:	34c6cccd 	ori	a2,a2,0xcccd
     928:	46803220 	cvt.s.w	$f8,$f6
     92c:	26040068 	addiu	a0,s0,104
     930:	24050000 	li	a1,0
     934:	0c000000 	jal	0 <EnSb_Init>
     938:	e7a80024 	swc1	$f8,36(sp)
     93c:	c7aa0028 	lwc1	$f10,40(sp)
     940:	c7b00024 	lwc1	$f16,36(sp)
     944:	44800000 	mtc1	zero,$f0
     948:	46105032 	c.eq.s	$f10,$f16
     94c:	00000000 	nop
     950:	45020034 	bc1fl	a24 <EnSb_Bounce+0x130>
     954:	8fbf001c 	lw	ra,28(sp)
     958:	86020202 	lh	v0,514(s0)
     95c:	02002825 	move	a1,s0
     960:	50400023 	beqzl	v0,9f0 <EnSb_Bounce+0xfc>
     964:	96020088 	lhu	v0,136(s0)
     968:	c6120084 	lwc1	$f18,132(s0)
     96c:	244effff 	addiu	t6,v0,-1
     970:	240f0001 	li	t7,1
     974:	4612003c 	c.lt.s	$f0,$f18
     978:	a60e0202 	sh	t6,514(s0)
     97c:	a60f01fe 	sh	t7,510(s0)
     980:	3c014000 	lui	at,0x4000
     984:	4502000c 	bc1fl	9b8 <EnSb_Bounce+0xc4>
     988:	44815000 	mtc1	at,$f10
     98c:	3c014040 	lui	at,0x4040
     990:	44812000 	mtc1	at,$f4
     994:	3c0140a0 	lui	at,0x40a0
     998:	44813000 	mtc1	at,$f6
     99c:	3c010000 	lui	at,0x0
     9a0:	e6040060 	swc1	$f4,96(s0)
     9a4:	e6060068 	swc1	$f6,104(s0)
     9a8:	c4280040 	lwc1	$f8,64(at)
     9ac:	10000009 	b	9d4 <EnSb_Bounce+0xe0>
     9b0:	e608006c 	swc1	$f8,108(s0)
     9b4:	44815000 	mtc1	at,$f10
     9b8:	3c0140c0 	lui	at,0x40c0
     9bc:	44818000 	mtc1	at,$f16
     9c0:	3c01c000 	lui	at,0xc000
     9c4:	44819000 	mtc1	at,$f18
     9c8:	e60a0060 	swc1	$f10,96(s0)
     9cc:	e6100068 	swc1	$f16,104(s0)
     9d0:	e612006c 	swc1	$f18,108(s0)
     9d4:	0c000000 	jal	0 <EnSb_Init>
     9d8:	8fa40034 	lw	a0,52(sp)
     9dc:	0c000000 	jal	0 <EnSb_Init>
     9e0:	02002025 	move	a0,s0
     9e4:	1000000f 	b	a24 <EnSb_Bounce+0x130>
     9e8:	8fbf001c 	lw	ra,28(sp)
     9ec:	96020088 	lhu	v0,136(s0)
     9f0:	24080001 	li	t0,1
     9f4:	02002025 	move	a0,s0
     9f8:	30580001 	andi	t8,v0,0x1
     9fc:	13000008 	beqz	t8,a20 <EnSb_Bounce+0x12c>
     a00:	3059fffd 	andi	t9,v0,0xfffd
     a04:	a6190088 	sh	t9,136(s0)
     a08:	e6000068 	swc1	$f0,104(s0)
     a0c:	0c000000 	jal	0 <EnSb_Init>
     a10:	a60801fe 	sh	t0,510(s0)
     a14:	3c040000 	lui	a0,0x0
     a18:	0c000000 	jal	0 <EnSb_Init>
     a1c:	24840014 	addiu	a0,a0,20
     a20:	8fbf001c 	lw	ra,28(sp)
     a24:	8fb00018 	lw	s0,24(sp)
     a28:	27bd0030 	addiu	sp,sp,48
     a2c:	03e00008 	jr	ra
     a30:	00000000 	nop

00000a34 <EnSb_Cooldown>:
     a34:	afa50004 	sw	a1,4(sp)
     a38:	848201fe 	lh	v0,510(a0)
     a3c:	5040000c 	beqzl	v0,a70 <EnSb_Cooldown+0x3c>
     a40:	94830088 	lhu	v1,136(a0)
     a44:	94830088 	lhu	v1,136(a0)
     a48:	244effff 	addiu	t6,v0,-1
     a4c:	a48e01fe 	sh	t6,510(a0)
     a50:	306f0001 	andi	t7,v1,0x1
     a54:	11e0000f 	beqz	t7,a94 <EnSb_Cooldown+0x60>
     a58:	3078fffe 	andi	t8,v1,0xfffe
     a5c:	44802000 	mtc1	zero,$f4
     a60:	a4980088 	sh	t8,136(a0)
     a64:	03e00008 	jr	ra
     a68:	e4840068 	swc1	$f4,104(a0)
     a6c:	94830088 	lhu	v1,136(a0)
     a70:	3c090000 	lui	t1,0x0
     a74:	25290000 	addiu	t1,t1,0
     a78:	30790001 	andi	t9,v1,0x1
     a7c:	13200005 	beqz	t9,a94 <EnSb_Cooldown+0x60>
     a80:	3068fffe 	andi	t0,v1,0xfffe
     a84:	44803000 	mtc1	zero,$f6
     a88:	a4880088 	sh	t0,136(a0)
     a8c:	ac890190 	sw	t1,400(a0)
     a90:	e4860068 	swc1	$f6,104(a0)
     a94:	03e00008 	jr	ra
     a98:	00000000 	nop

00000a9c <EnSb_IsVulnerable>:
     a9c:	948e01fa 	lhu	t6,506(a0)
     aa0:	2dc10005 	sltiu	at,t6,5
     aa4:	1020004c 	beqz	at,bd8 <EnSb_IsVulnerable+0x13c>
     aa8:	000e7080 	sll	t6,t6,0x2
     aac:	3c010000 	lui	at,0x0
     ab0:	002e0821 	addu	at,at,t6
     ab4:	8c2e0044 	lw	t6,68(at)
     ab8:	01c00008 	jr	t6
     abc:	00000000 	nop
     ac0:	3c014000 	lui	at,0x4000
     ac4:	44812000 	mtc1	at,$f4
     ac8:	c4800164 	lwc1	$f0,356(a0)
     acc:	3c0140a0 	lui	at,0x40a0
     ad0:	4600203e 	c.le.s	$f4,$f0
     ad4:	00000000 	nop
     ad8:	45020040 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     adc:	00001025 	move	v0,zero
     ae0:	44813000 	mtc1	at,$f6
     ae4:	00000000 	nop
     ae8:	4606003e 	c.le.s	$f0,$f6
     aec:	00000000 	nop
     af0:	4502003a 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     af4:	00001025 	move	v0,zero
     af8:	03e00008 	jr	ra
     afc:	24020001 	li	v0,1
     b00:	c4800164 	lwc1	$f0,356(a0)
     b04:	44804000 	mtc1	zero,$f8
     b08:	3c013f80 	lui	at,0x3f80
     b0c:	4600403e 	c.le.s	$f8,$f0
     b10:	00000000 	nop
     b14:	45020031 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     b18:	00001025 	move	v0,zero
     b1c:	44815000 	mtc1	at,$f10
     b20:	00000000 	nop
     b24:	460a003e 	c.le.s	$f0,$f10
     b28:	00000000 	nop
     b2c:	4502002b 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     b30:	00001025 	move	v0,zero
     b34:	03e00008 	jr	ra
     b38:	24020001 	li	v0,1
     b3c:	c4800164 	lwc1	$f0,356(a0)
     b40:	44808000 	mtc1	zero,$f16
     b44:	3c014198 	lui	at,0x4198
     b48:	4600803e 	c.le.s	$f16,$f0
     b4c:	00000000 	nop
     b50:	45020022 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     b54:	00001025 	move	v0,zero
     b58:	44819000 	mtc1	at,$f18
     b5c:	00000000 	nop
     b60:	4612003e 	c.le.s	$f0,$f18
     b64:	00000000 	nop
     b68:	4502001c 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     b6c:	00001025 	move	v0,zero
     b70:	03e00008 	jr	ra
     b74:	24020001 	li	v0,1
     b78:	44802000 	mtc1	zero,$f4
     b7c:	c4860164 	lwc1	$f6,356(a0)
     b80:	46062032 	c.eq.s	$f4,$f6
     b84:	00000000 	nop
     b88:	45020014 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     b8c:	00001025 	move	v0,zero
     b90:	03e00008 	jr	ra
     b94:	24020001 	li	v0,1
     b98:	3c014040 	lui	at,0x4040
     b9c:	44814000 	mtc1	at,$f8
     ba0:	c4800164 	lwc1	$f0,356(a0)
     ba4:	3c0140a0 	lui	at,0x40a0
     ba8:	4600403e 	c.le.s	$f8,$f0
     bac:	00000000 	nop
     bb0:	4502000a 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     bb4:	00001025 	move	v0,zero
     bb8:	44815000 	mtc1	at,$f10
     bbc:	00000000 	nop
     bc0:	460a003e 	c.le.s	$f0,$f10
     bc4:	00000000 	nop
     bc8:	45020004 	bc1fl	bdc <EnSb_IsVulnerable+0x140>
     bcc:	00001025 	move	v0,zero
     bd0:	03e00008 	jr	ra
     bd4:	24020001 	li	v0,1
     bd8:	00001025 	move	v0,zero
     bdc:	03e00008 	jr	ra
     be0:	00000000 	nop

00000be4 <EnSb_UpdateDamage>:
     be4:	27bdffb8 	addiu	sp,sp,-72
     be8:	afbf0024 	sw	ra,36(sp)
     bec:	afb00020 	sw	s0,32(sp)
     bf0:	afa5004c 	sw	a1,76(sp)
     bf4:	908e01a4 	lbu	t6,420(a0)
     bf8:	00808025 	move	s0,a0
     bfc:	31cf0002 	andi	t7,t6,0x2
     c00:	51e00006 	beqzl	t7,c1c <EnSb_UpdateDamage+0x38>
     c04:	920201a5 	lbu	v0,421(s0)
     c08:	0c000000 	jal	0 <EnSb_Init>
     c0c:	24050001 	li	a1,1
     c10:	100000a5 	b	ea8 <EnSb_UpdateDamage+0x2c4>
     c14:	24020001 	li	v0,1
     c18:	920201a5 	lbu	v0,421(s0)
     c1c:	30580002 	andi	t8,v0,0x2
     c20:	530000a1 	beqzl	t8,ea8 <EnSb_UpdateDamage+0x2c4>
     c24:	00001025 	move	v0,zero
     c28:	a3a0002f 	sb	zero,47(sp)
     c2c:	920800b1 	lbu	t0,177(s0)
     c30:	3059fffd 	andi	t9,v0,0xfffd
     c34:	00001825 	move	v1,zero
     c38:	2509ffff 	addiu	t1,t0,-1
     c3c:	2d21000f 	sltiu	at,t1,15
     c40:	10200070 	beqz	at,e04 <EnSb_UpdateDamage+0x220>
     c44:	a21901a5 	sb	t9,421(s0)
     c48:	00094880 	sll	t1,t1,0x2
     c4c:	3c010000 	lui	at,0x0
     c50:	00290821 	addu	at,at,t1
     c54:	8c290058 	lw	t1,88(at)
     c58:	01200008 	jr	t1
     c5c:	00000000 	nop
     c60:	240a0001 	li	t2,1
     c64:	a3aa002f 	sb	t2,47(sp)
     c68:	02002025 	move	a0,s0
     c6c:	0c000000 	jal	0 <EnSb_Init>
     c70:	afa30030 	sw	v1,48(sp)
     c74:	10400063 	beqz	v0,e04 <EnSb_UpdateDamage+0x220>
     c78:	8fa30030 	lw	v1,48(sp)
     c7c:	860b01bc 	lh	t3,444(s0)
     c80:	c6080028 	lwc1	$f8,40(s0)
     c84:	3c0141f0 	lui	at,0x41f0
     c88:	448b2000 	mtc1	t3,$f4
     c8c:	44815000 	mtc1	at,$f10
     c90:	860c008a 	lh	t4,138(s0)
     c94:	468021a0 	cvt.s.w	$f6,$f4
     c98:	860d00b6 	lh	t5,182(s0)
     c9c:	3c014120 	lui	at,0x4120
     ca0:	018d1023 	subu	v0,t4,t5
     ca4:	00021400 	sll	v0,v0,0x10
     ca8:	46083001 	sub.s	$f0,$f6,$f8
     cac:	00021403 	sra	v0,v0,0x10
     cb0:	460a003c 	c.lt.s	$f0,$f10
     cb4:	00000000 	nop
     cb8:	45020053 	bc1fl	e08 <EnSb_UpdateDamage+0x224>
     cbc:	920b00af 	lbu	t3,175(s0)
     cc0:	44818000 	mtc1	at,$f16
     cc4:	2841e001 	slti	at,v0,-8191
     cc8:	4600803c 	c.lt.s	$f16,$f0
     ccc:	00000000 	nop
     cd0:	4502004d 	bc1fl	e08 <EnSb_UpdateDamage+0x224>
     cd4:	920b00af 	lbu	t3,175(s0)
     cd8:	1420004a 	bnez	at,e04 <EnSb_UpdateDamage+0x220>
     cdc:	28412000 	slti	at,v0,8192
     ce0:	50200049 	beqzl	at,e08 <EnSb_UpdateDamage+0x224>
     ce4:	920b00af 	lbu	t3,175(s0)
     ce8:	0c000000 	jal	0 <EnSb_Init>
     cec:	02002025 	move	a0,s0
     cf0:	240e0050 	li	t6,80
     cf4:	afae0010 	sw	t6,16(sp)
     cf8:	02002025 	move	a0,s0
     cfc:	24054000 	li	a1,16384
     d00:	240600ff 	li	a2,255
     d04:	0c000000 	jal	0 <EnSb_Init>
     d08:	24072000 	li	a3,8192
     d0c:	1000003d 	b	e04 <EnSb_UpdateDamage+0x220>
     d10:	24030001 	li	v1,1
     d14:	240f0004 	li	t7,4
     d18:	a60f01f8 	sh	t7,504(s0)
     d1c:	0c000000 	jal	0 <EnSb_Init>
     d20:	02002025 	move	a0,s0
     d24:	24180050 	li	t8,80
     d28:	afb80010 	sw	t8,16(sp)
     d2c:	02002025 	move	a0,s0
     d30:	24054000 	li	a1,16384
     d34:	240600ff 	li	a2,255
     d38:	0c000000 	jal	0 <EnSb_Init>
     d3c:	24072000 	li	a3,8192
     d40:	10000030 	b	e04 <EnSb_UpdateDamage+0x220>
     d44:	24030001 	li	v1,1
     d48:	02002025 	move	a0,s0
     d4c:	0c000000 	jal	0 <EnSb_Init>
     d50:	afa30030 	sw	v1,48(sp)
     d54:	1040002b 	beqz	v0,e04 <EnSb_UpdateDamage+0x220>
     d58:	8fa30030 	lw	v1,48(sp)
     d5c:	861901bc 	lh	t9,444(s0)
     d60:	c6060028 	lwc1	$f6,40(s0)
     d64:	3c0141f0 	lui	at,0x41f0
     d68:	44999000 	mtc1	t9,$f18
     d6c:	44814000 	mtc1	at,$f8
     d70:	8608008a 	lh	t0,138(s0)
     d74:	46809120 	cvt.s.w	$f4,$f18
     d78:	860900b6 	lh	t1,182(s0)
     d7c:	3c014120 	lui	at,0x4120
     d80:	01091023 	subu	v0,t0,t1
     d84:	00021400 	sll	v0,v0,0x10
     d88:	46062001 	sub.s	$f0,$f4,$f6
     d8c:	00021403 	sra	v0,v0,0x10
     d90:	4608003c 	c.lt.s	$f0,$f8
     d94:	00000000 	nop
     d98:	4502001b 	bc1fl	e08 <EnSb_UpdateDamage+0x224>
     d9c:	920b00af 	lbu	t3,175(s0)
     da0:	44815000 	mtc1	at,$f10
     da4:	2841e001 	slti	at,v0,-8191
     da8:	4600503c 	c.lt.s	$f10,$f0
     dac:	00000000 	nop
     db0:	45020015 	bc1fl	e08 <EnSb_UpdateDamage+0x224>
     db4:	920b00af 	lbu	t3,175(s0)
     db8:	14200012 	bnez	at,e04 <EnSb_UpdateDamage+0x220>
     dbc:	28412000 	slti	at,v0,8192
     dc0:	50200011 	beqzl	at,e08 <EnSb_UpdateDamage+0x224>
     dc4:	920b00af 	lbu	t3,175(s0)
     dc8:	0c000000 	jal	0 <EnSb_Init>
     dcc:	02002025 	move	a0,s0
     dd0:	240a0050 	li	t2,80
     dd4:	afaa0010 	sw	t2,16(sp)
     dd8:	02002025 	move	a0,s0
     ddc:	24054000 	li	a1,16384
     de0:	240600ff 	li	a2,255
     de4:	0c000000 	jal	0 <EnSb_Init>
     de8:	24072000 	li	a3,8192
     dec:	24030001 	li	v1,1
     df0:	afa30030 	sw	v1,48(sp)
     df4:	02002025 	move	a0,s0
     df8:	0c000000 	jal	0 <EnSb_Init>
     dfc:	00002825 	move	a1,zero
     e00:	8fa30030 	lw	v1,48(sp)
     e04:	920b00af 	lbu	t3,175(s0)
     e08:	93ac002f 	lbu	t4,47(sp)
     e0c:	260401e0 	addiu	a0,s0,480
     e10:	15600010 	bnez	t3,e54 <EnSb_UpdateDamage+0x270>
     e14:	24050008 	li	a1,8
     e18:	a20c0204 	sb	t4,516(s0)
     e1c:	0c000000 	jal	0 <EnSb_Init>
     e20:	8fa6004c 	lw	a2,76(sp)
     e24:	240d0001 	li	t5,1
     e28:	a60d01fc 	sh	t5,508(s0)
     e2c:	8fa4004c 	lw	a0,76(sp)
     e30:	0c000000 	jal	0 <EnSb_Init>
     e34:	02002825 	move	a1,s0
     e38:	8fa4004c 	lw	a0,76(sp)
     e3c:	26050024 	addiu	a1,s0,36
     e40:	24060028 	li	a2,40
     e44:	0c000000 	jal	0 <EnSb_Init>
     e48:	2407384a 	li	a3,14410
     e4c:	10000016 	b	ea8 <EnSb_UpdateDamage+0x2c4>
     e50:	24020001 	li	v0,1
     e54:	54600014 	bnezl	v1,ea8 <EnSb_UpdateDamage+0x2c4>
     e58:	00001025 	move	v0,zero
     e5c:	860e01ba 	lh	t6,442(s0)
     e60:	8fa4004c 	lw	a0,76(sp)
     e64:	27a5003c 	addiu	a1,sp,60
     e68:	448e8000 	mtc1	t6,$f16
     e6c:	00000000 	nop
     e70:	468084a0 	cvt.s.w	$f18,$f16
     e74:	e7b2003c 	swc1	$f18,60(sp)
     e78:	860f01bc 	lh	t7,444(s0)
     e7c:	448f2000 	mtc1	t7,$f4
     e80:	00000000 	nop
     e84:	468021a0 	cvt.s.w	$f6,$f4
     e88:	e7a60040 	swc1	$f6,64(sp)
     e8c:	861801be 	lh	t8,446(s0)
     e90:	44984000 	mtc1	t8,$f8
     e94:	00000000 	nop
     e98:	468042a0 	cvt.s.w	$f10,$f8
     e9c:	0c000000 	jal	0 <EnSb_Init>
     ea0:	e7aa0044 	swc1	$f10,68(sp)
     ea4:	00001025 	move	v0,zero
     ea8:	8fbf0024 	lw	ra,36(sp)
     eac:	8fb00020 	lw	s0,32(sp)
     eb0:	27bd0048 	addiu	sp,sp,72
     eb4:	03e00008 	jr	ra
     eb8:	00000000 	nop

00000ebc <EnSb_Update>:
     ebc:	27bdffc8 	addiu	sp,sp,-56
     ec0:	afbf0024 	sw	ra,36(sp)
     ec4:	afb10020 	sw	s1,32(sp)
     ec8:	afb0001c 	sw	s0,28(sp)
     ecc:	848e01fc 	lh	t6,508(a0)
     ed0:	00a08825 	move	s1,a1
     ed4:	00808025 	move	s0,a0
     ed8:	11c00023 	beqz	t6,f68 <EnSb_Update+0xac>
     edc:	3c0541a0 	lui	a1,0x41a0
     ee0:	44802000 	mtc1	zero,$f4
     ee4:	c4860084 	lwc1	$f6,132(a0)
     ee8:	240f0004 	li	t7,4
     eec:	24180001 	li	t8,1
     ef0:	4606203c 	c.lt.s	$f4,$f6
     ef4:	260501e0 	addiu	a1,s0,480
     ef8:	02203025 	move	a2,s1
     efc:	45020004 	bc1fl	f10 <EnSb_Update+0x54>
     f00:	a618001c 	sh	t8,28(s0)
     f04:	10000002 	b	f10 <EnSb_Update+0x54>
     f08:	a48f001c 	sh	t7,28(a0)
     f0c:	a618001c 	sh	t8,28(s0)
     f10:	02002025 	move	a0,s0
     f14:	0c000000 	jal	0 <EnSb_Init>
     f18:	8607001c 	lh	a3,28(s0)
     f1c:	50400042 	beqzl	v0,1028 <EnSb_Update+0x16c>
     f20:	8fbf0024 	lw	ra,36(sp)
     f24:	92190204 	lbu	t9,516(s0)
     f28:	26060024 	addiu	a2,s0,36
     f2c:	02202025 	move	a0,s1
     f30:	17200007 	bnez	t9,f50 <EnSb_Update+0x94>
     f34:	26050024 	addiu	a1,s0,36
     f38:	02202025 	move	a0,s1
     f3c:	02002825 	move	a1,s0
     f40:	0c000000 	jal	0 <EnSb_Init>
     f44:	24070080 	li	a3,128
     f48:	10000003 	b	f58 <EnSb_Update+0x9c>
     f4c:	00000000 	nop
     f50:	0c000000 	jal	0 <EnSb_Init>
     f54:	24060008 	li	a2,8
     f58:	0c000000 	jal	0 <EnSb_Init>
     f5c:	02002025 	move	a0,s0
     f60:	10000031 	b	1028 <EnSb_Update+0x16c>
     f64:	8fbf0024 	lw	ra,36(sp)
     f68:	0c000000 	jal	0 <EnSb_Init>
     f6c:	02002025 	move	a0,s0
     f70:	3c053bc4 	lui	a1,0x3bc4
     f74:	34a59ba6 	ori	a1,a1,0x9ba6
     f78:	0c000000 	jal	0 <EnSb_Init>
     f7c:	02002025 	move	a0,s0
     f80:	0c000000 	jal	0 <EnSb_Init>
     f84:	02002025 	move	a0,s0
     f88:	8e190190 	lw	t9,400(s0)
     f8c:	02002025 	move	a0,s0
     f90:	02202825 	move	a1,s1
     f94:	0320f809 	jalr	t9
     f98:	00000000 	nop
     f9c:	3c0141a0 	lui	at,0x41a0
     fa0:	44810000 	mtc1	at,$f0
     fa4:	24080005 	li	t0,5
     fa8:	afa80014 	sw	t0,20(sp)
     fac:	44060000 	mfc1	a2,$f0
     fb0:	44070000 	mfc1	a3,$f0
     fb4:	02202025 	move	a0,s1
     fb8:	02002825 	move	a1,s0
     fbc:	0c000000 	jal	0 <EnSb_Init>
     fc0:	e7a00010 	swc1	$f0,16(sp)
     fc4:	02002025 	move	a0,s0
     fc8:	0c000000 	jal	0 <EnSb_Init>
     fcc:	02202825 	move	a1,s1
     fd0:	26050194 	addiu	a1,s0,404
     fd4:	afa50028 	sw	a1,40(sp)
     fd8:	0c000000 	jal	0 <EnSb_Init>
     fdc:	02002025 	move	a0,s0
     fe0:	3c010001 	lui	at,0x1
     fe4:	34211e60 	ori	at,at,0x1e60
     fe8:	02212821 	addu	a1,s1,at
     fec:	afa5002c 	sw	a1,44(sp)
     ff0:	02202025 	move	a0,s1
     ff4:	0c000000 	jal	0 <EnSb_Init>
     ff8:	8fa60028 	lw	a2,40(sp)
     ffc:	02202025 	move	a0,s1
    1000:	8fa5002c 	lw	a1,44(sp)
    1004:	0c000000 	jal	0 <EnSb_Init>
    1008:	8fa60028 	lw	a2,40(sp)
    100c:	02202025 	move	a0,s1
    1010:	8fa5002c 	lw	a1,44(sp)
    1014:	0c000000 	jal	0 <EnSb_Init>
    1018:	8fa60028 	lw	a2,40(sp)
    101c:	0c000000 	jal	0 <EnSb_Init>
    1020:	2604014c 	addiu	a0,s0,332
    1024:	8fbf0024 	lw	ra,36(sp)
    1028:	8fb0001c 	lw	s0,28(sp)
    102c:	8fb10020 	lw	s1,32(sp)
    1030:	03e00008 	jr	ra
    1034:	27bd0038 	addiu	sp,sp,56

00001038 <EnSb_PostLimbDraw>:
    1038:	27bdffd8 	addiu	sp,sp,-40
    103c:	afa40028 	sw	a0,40(sp)
    1040:	afa60030 	sw	a2,48(sp)
    1044:	8faf0030 	lw	t7,48(sp)
    1048:	8fa40038 	lw	a0,56(sp)
    104c:	afbf0024 	sw	ra,36(sp)
    1050:	afa70034 	sw	a3,52(sp)
    1054:	240e0008 	li	t6,8
    1058:	2418ffff 	li	t8,-1
    105c:	afb80018 	sw	t8,24(sp)
    1060:	afae0010 	sw	t6,16(sp)
    1064:	24070006 	li	a3,6
    1068:	00003025 	move	a2,zero
    106c:	afaf0014 	sw	t7,20(sp)
    1070:	0c000000 	jal	0 <EnSb_Init>
    1074:	248401e0 	addiu	a0,a0,480
    1078:	8fbf0024 	lw	ra,36(sp)
    107c:	27bd0028 	addiu	sp,sp,40
    1080:	03e00008 	jr	ra
    1084:	00000000 	nop

00001088 <EnSb_Draw>:
    1088:	27bdffb0 	addiu	sp,sp,-80
    108c:	afbf002c 	sw	ra,44(sp)
    1090:	afb00028 	sw	s0,40(sp)
    1094:	00808025 	move	s0,a0
    1098:	afa50054 	sw	a1,84(sp)
    109c:	0c000000 	jal	0 <EnSb_Init>
    10a0:	24060001 	li	a2,1
    10a4:	8e050150 	lw	a1,336(s0)
    10a8:	8e06016c 	lw	a2,364(s0)
    10ac:	9207014e 	lbu	a3,334(s0)
    10b0:	3c0e0000 	lui	t6,0x0
    10b4:	25ce0000 	addiu	t6,t6,0
    10b8:	afae0014 	sw	t6,20(sp)
    10bc:	afb00018 	sw	s0,24(sp)
    10c0:	afa00010 	sw	zero,16(sp)
    10c4:	0c000000 	jal	0 <EnSb_Init>
    10c8:	8fa40054 	lw	a0,84(sp)
    10cc:	860301f8 	lh	v1,504(s0)
    10d0:	10600035 	beqz	v1,11a8 <EnSb_Draw+0x120>
    10d4:	2462ffff 	addiu	v0,v1,-1
    10d8:	920f0114 	lbu	t7,276(s0)
    10dc:	00021400 	sll	v0,v0,0x10
    10e0:	00021403 	sra	v0,v0,0x10
    10e4:	30590001 	andi	t9,v0,0x1
    10e8:	25f80001 	addiu	t8,t7,1
    10ec:	1720002e 	bnez	t9,11a8 <EnSb_Draw+0x120>
    10f0:	a2180114 	sb	t8,276(s0)
    10f4:	3c0140a0 	lui	at,0x40a0
    10f8:	44816000 	mtc1	at,$f12
    10fc:	0c000000 	jal	0 <EnSb_Init>
    1100:	a7a2003a 	sh	v0,58(sp)
    1104:	87a2003a 	lh	v0,58(sp)
    1108:	3c0a0000 	lui	t2,0x0
    110c:	254a0078 	addiu	t2,t2,120
    1110:	30480003 	andi	t0,v0,0x3
    1114:	00084880 	sll	t1,t0,0x2
    1118:	01284823 	subu	t1,t1,t0
    111c:	00094880 	sll	t1,t1,0x2
    1120:	012a1821 	addu	v1,t1,t2
    1124:	c4660000 	lwc1	$f6,0(v1)
    1128:	c6040024 	lwc1	$f4,36(s0)
    112c:	3c0140a0 	lui	at,0x40a0
    1130:	44816000 	mtc1	at,$f12
    1134:	46062200 	add.s	$f8,$f4,$f6
    1138:	afa30034 	sw	v1,52(sp)
    113c:	46080280 	add.s	$f10,$f0,$f8
    1140:	0c000000 	jal	0 <EnSb_Init>
    1144:	e7aa0040 	swc1	$f10,64(sp)
    1148:	8fab0034 	lw	t3,52(sp)
    114c:	c6100028 	lwc1	$f16,40(s0)
    1150:	3c0140a0 	lui	at,0x40a0
    1154:	c5720004 	lwc1	$f18,4(t3)
    1158:	44816000 	mtc1	at,$f12
    115c:	46128100 	add.s	$f4,$f16,$f18
    1160:	46040180 	add.s	$f6,$f0,$f4
    1164:	0c000000 	jal	0 <EnSb_Init>
    1168:	e7a60044 	swc1	$f6,68(sp)
    116c:	8fac0034 	lw	t4,52(sp)
    1170:	c608002c 	lwc1	$f8,44(s0)
    1174:	240dffff 	li	t5,-1
    1178:	c58a0008 	lwc1	$f10,8(t4)
    117c:	afad0018 	sw	t5,24(sp)
    1180:	afa00014 	sw	zero,20(sp)
    1184:	460a4400 	add.s	$f16,$f8,$f10
    1188:	afa00010 	sw	zero,16(sp)
    118c:	8fa40054 	lw	a0,84(sp)
    1190:	02002825 	move	a1,s0
    1194:	46100480 	add.s	$f18,$f0,$f16
    1198:	27a60040 	addiu	a2,sp,64
    119c:	24070064 	li	a3,100
    11a0:	0c000000 	jal	0 <EnSb_Init>
    11a4:	e7b20048 	swc1	$f18,72(sp)
    11a8:	8fbf002c 	lw	ra,44(sp)
    11ac:	8fb00028 	lw	s0,40(sp)
    11b0:	27bd0050 	addiu	sp,sp,80
    11b4:	03e00008 	jr	ra
    11b8:	00000000 	nop
    11bc:	00000000 	nop
