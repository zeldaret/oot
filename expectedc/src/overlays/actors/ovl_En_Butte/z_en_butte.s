
build/src/overlays/actors/ovl_En_Butte/z_en_butte.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnButte_SelectFlightParams>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	908e0256 	lbu	t6,598(a0)
       c:	00803025 	move	a2,a0
      10:	00a03825 	move	a3,a1
      14:	55c00012 	bnezl	t6,60 <EnButte_SelectFlightParams+0x60>
      18:	a0c00256 	sb	zero,598(a2)
      1c:	afa40018 	sw	a0,24(sp)
      20:	0c000000 	jal	0 <EnButte_SelectFlightParams>
      24:	afa5001c 	sw	a1,28(sp)
      28:	3c010000 	lui	at,0x0
      2c:	c4240058 	lwc1	$f4,88(at)
      30:	8fa60018 	lw	a2,24(sp)
      34:	8fa7001c 	lw	a3,28(sp)
      38:	4604003c 	c.lt.s	$f0,$f4
      3c:	240f0001 	li	t7,1
      40:	24180002 	li	t8,2
      44:	45000003 	bc1f	54 <EnButte_SelectFlightParams+0x54>
      48:	00000000 	nop
      4c:	10000004 	b	60 <EnButte_SelectFlightParams+0x60>
      50:	a0cf0256 	sb	t7,598(a2)
      54:	10000002 	b	60 <EnButte_SelectFlightParams+0x60>
      58:	a0d80256 	sb	t8,598(a2)
      5c:	a0c00256 	sb	zero,598(a2)
      60:	84e40000 	lh	a0,0(a3)
      64:	84e50002 	lh	a1,2(a3)
      68:	0c000000 	jal	0 <EnButte_SelectFlightParams>
      6c:	afa60018 	sw	a2,24(sp)
      70:	8fa60018 	lw	a2,24(sp)
      74:	a4c20254 	sh	v0,596(a2)
      78:	8fbf0014 	lw	ra,20(sp)
      7c:	27bd0018 	addiu	sp,sp,24
      80:	03e00008 	jr	ra
      84:	00000000 	nop

00000088 <EnButte_ResetTransformationEffect>:
      88:	44802000 	mtc1	zero,$f4
      8c:	3c010000 	lui	at,0x0
      90:	e42400cc 	swc1	$f4,204(at)
      94:	3c010000 	lui	at,0x0
      98:	03e00008 	jr	ra
      9c:	a42000d0 	sh	zero,208(at)

000000a0 <EnButte_UpdateTransformationEffect>:
      a0:	3c020000 	lui	v0,0x0
      a4:	244200cc 	addiu	v0,v0,204
      a8:	3c010000 	lui	at,0x0
      ac:	c426005c 	lwc1	$f6,92(at)
      b0:	c4440000 	lwc1	$f4,0(v0)
      b4:	3c030000 	lui	v1,0x0
      b8:	246300d0 	addiu	v1,v1,208
      bc:	846e0000 	lh	t6,0(v1)
      c0:	46062200 	add.s	$f8,$f4,$f6
      c4:	25cf0fa0 	addiu	t7,t6,4000
      c8:	a46f0000 	sh	t7,0(v1)
      cc:	03e00008 	jr	ra
      d0:	e4480000 	swc1	$f8,0(v0)

000000d4 <EnButte_DrawTransformationEffect>:
      d4:	27bdff98 	addiu	sp,sp,-104
      d8:	afbf001c 	sw	ra,28(sp)
      dc:	afb00018 	sw	s0,24(sp)
      e0:	afa40068 	sw	a0,104(sp)
      e4:	afa5006c 	sw	a1,108(sp)
      e8:	8ca50000 	lw	a1,0(a1)
      ec:	3c060000 	lui	a2,0x0
      f0:	24c60000 	addiu	a2,a2,0
      f4:	27a4003c 	addiu	a0,sp,60
      f8:	24070127 	li	a3,295
      fc:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     100:	00a08025 	move	s0,a1
     104:	8faf006c 	lw	t7,108(sp)
     108:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     10c:	8de40000 	lw	a0,0(t7)
     110:	3c040000 	lui	a0,0x0
     114:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     118:	848400d0 	lh	a0,208(a0)
     11c:	3c01437a 	lui	at,0x437a
     120:	44812000 	mtc1	at,$f4
     124:	00000000 	nop
     128:	46040182 	mul.s	$f6,$f0,$f4
     12c:	4600320d 	trunc.w.s	$f8,$f6
     130:	44024000 	mfc1	v0,$f8
     134:	00000000 	nop
     138:	04410003 	bgez	v0,148 <EnButte_DrawTransformationEffect+0x74>
     13c:	28410100 	slti	at,v0,256
     140:	10000006 	b	15c <EnButte_DrawTransformationEffect+0x88>
     144:	afa00058 	sw	zero,88(sp)
     148:	14200003 	bnez	at,158 <EnButte_DrawTransformationEffect+0x84>
     14c:	00401825 	move	v1,v0
     150:	10000001 	b	158 <EnButte_DrawTransformationEffect+0x84>
     154:	240300ff 	li	v1,255
     158:	afa30058 	sw	v1,88(sp)
     15c:	8fa2006c 	lw	v0,108(sp)
     160:	27a40050 	addiu	a0,sp,80
     164:	845907a0 	lh	t9,1952(v0)
     168:	00194080 	sll	t0,t9,0x2
     16c:	00484821 	addu	t1,v0,t0
     170:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     174:	8d250790 	lw	a1,1936(t1)
     178:	87aa0052 	lh	t2,82(sp)
     17c:	3c010000 	lui	at,0x0
     180:	c4320060 	lwc1	$f18,96(at)
     184:	448a5000 	mtc1	t2,$f10
     188:	00002825 	move	a1,zero
     18c:	46805420 	cvt.s.w	$f16,$f10
     190:	46128302 	mul.s	$f12,$f16,$f18
     194:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     198:	00000000 	nop
     19c:	87ab0050 	lh	t3,80(sp)
     1a0:	3c010000 	lui	at,0x0
     1a4:	c4280064 	lwc1	$f8,100(at)
     1a8:	448b2000 	mtc1	t3,$f4
     1ac:	24050001 	li	a1,1
     1b0:	468021a0 	cvt.s.w	$f6,$f4
     1b4:	46083302 	mul.s	$f12,$f6,$f8
     1b8:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     1bc:	00000000 	nop
     1c0:	87ac0054 	lh	t4,84(sp)
     1c4:	3c010000 	lui	at,0x0
     1c8:	c4320068 	lwc1	$f18,104(at)
     1cc:	448c5000 	mtc1	t4,$f10
     1d0:	24050001 	li	a1,1
     1d4:	46805420 	cvt.s.w	$f16,$f10
     1d8:	46128302 	mul.s	$f12,$f16,$f18
     1dc:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     1e0:	00000000 	nop
     1e4:	3c040000 	lui	a0,0x0
     1e8:	248400d4 	addiu	a0,a0,212
     1ec:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     1f0:	27a5005c 	addiu	a1,sp,92
     1f4:	8fa20068 	lw	v0,104(sp)
     1f8:	c7b20064 	lwc1	$f18,100(sp)
     1fc:	c7b0005c 	lwc1	$f16,92(sp)
     200:	c44a0040 	lwc1	$f10,64(v0)
     204:	c4480038 	lwc1	$f8,56(v0)
     208:	c446003c 	lwc1	$f6,60(v0)
     20c:	46125480 	add.s	$f18,$f10,$f18
     210:	c7aa0060 	lwc1	$f10,96(sp)
     214:	27a70050 	addiu	a3,sp,80
     218:	46104300 	add.s	$f12,$f8,$f16
     21c:	44069000 	mfc1	a2,$f18
     220:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     224:	460a3380 	add.s	$f14,$f6,$f10
     228:	3c010000 	lui	at,0x0
     22c:	c42c00cc 	lwc1	$f12,204(at)
     230:	24070001 	li	a3,1
     234:	44066000 	mfc1	a2,$f12
     238:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     23c:	46006386 	mov.s	$f14,$f12
     240:	8e0202d0 	lw	v0,720(s0)
     244:	3c0eda38 	lui	t6,0xda38
     248:	35ce0003 	ori	t6,t6,0x3
     24c:	244d0008 	addiu	t5,v0,8
     250:	ae0d02d0 	sw	t5,720(s0)
     254:	ac4e0000 	sw	t6,0(v0)
     258:	8faf006c 	lw	t7,108(sp)
     25c:	3c050000 	lui	a1,0x0
     260:	24a50010 	addiu	a1,a1,16
     264:	8de40000 	lw	a0,0(t7)
     268:	2406013d 	li	a2,317
     26c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     270:	afa20038 	sw	v0,56(sp)
     274:	8fa30038 	lw	v1,56(sp)
     278:	3c19fa00 	lui	t9,0xfa00
     27c:	37398080 	ori	t9,t9,0x8080
     280:	ac620004 	sw	v0,4(v1)
     284:	8e0202d0 	lw	v0,720(s0)
     288:	3c01c8c8 	lui	at,0xc8c8
     28c:	3421b400 	ori	at,at,0xb400
     290:	24580008 	addiu	t8,v0,8
     294:	ae1802d0 	sw	t8,720(s0)
     298:	ac590000 	sw	t9,0(v0)
     29c:	8fa80058 	lw	t0,88(sp)
     2a0:	3c0dc8c8 	lui	t5,0xc8c8
     2a4:	35add2ff 	ori	t5,t5,0xd2ff
     2a8:	310900ff 	andi	t1,t0,0xff
     2ac:	01215025 	or	t2,t1,at
     2b0:	ac4a0004 	sw	t2,4(v0)
     2b4:	8e0202d0 	lw	v0,720(s0)
     2b8:	3c0cfb00 	lui	t4,0xfb00
     2bc:	3c040000 	lui	a0,0x0
     2c0:	244b0008 	addiu	t3,v0,8
     2c4:	ae0b02d0 	sw	t3,720(s0)
     2c8:	ac4d0004 	sw	t5,4(v0)
     2cc:	ac4c0000 	sw	t4,0(v0)
     2d0:	8e0202d0 	lw	v0,720(s0)
     2d4:	24840000 	addiu	a0,a0,0
     2d8:	0004c100 	sll	t8,a0,0x4
     2dc:	0018cf02 	srl	t9,t8,0x1c
     2e0:	244e0008 	addiu	t6,v0,8
     2e4:	ae0e02d0 	sw	t6,720(s0)
     2e8:	00194080 	sll	t0,t9,0x2
     2ec:	3c090000 	lui	t1,0x0
     2f0:	3c0fde00 	lui	t7,0xde00
     2f4:	01284821 	addu	t1,t1,t0
     2f8:	3c0100ff 	lui	at,0xff
     2fc:	ac4f0000 	sw	t7,0(v0)
     300:	8d290000 	lw	t1,0(t1)
     304:	3421ffff 	ori	at,at,0xffff
     308:	00815024 	and	t2,a0,at
     30c:	3c018000 	lui	at,0x8000
     310:	012a5821 	addu	t3,t1,t2
     314:	01616021 	addu	t4,t3,at
     318:	ac4c0004 	sw	t4,4(v0)
     31c:	8fad006c 	lw	t5,108(sp)
     320:	3c060000 	lui	a2,0x0
     324:	24c60020 	addiu	a2,a2,32
     328:	27a4003c 	addiu	a0,sp,60
     32c:	24070146 	li	a3,326
     330:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     334:	8da50000 	lw	a1,0(t5)
     338:	8fbf001c 	lw	ra,28(sp)
     33c:	8fb00018 	lw	s0,24(sp)
     340:	27bd0068 	addiu	sp,sp,104
     344:	03e00008 	jr	ra
     348:	00000000 	nop

0000034c <EnButte_Init>:
     34c:	27bdffc0 	addiu	sp,sp,-64
     350:	afbf002c 	sw	ra,44(sp)
     354:	afb00028 	sw	s0,40(sp)
     358:	afa50044 	sw	a1,68(sp)
     35c:	848e001c 	lh	t6,28(a0)
     360:	2401ffff 	li	at,-1
     364:	00808025 	move	s0,a0
     368:	15c10002 	bne	t6,at,374 <EnButte_Init+0x28>
     36c:	3c050000 	lui	a1,0x0
     370:	a480001c 	sh	zero,28(a0)
     374:	02002025 	move	a0,s0
     378:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     37c:	24a500e0 	addiu	a1,a1,224
     380:	860f001c 	lh	t7,28(s0)
     384:	24010001 	li	at,1
     388:	260501ac 	addiu	a1,s0,428
     38c:	31f80001 	andi	t8,t7,0x1
     390:	17010005 	bne	t8,at,3a8 <EnButte_Init+0x5c>
     394:	3c060000 	lui	a2,0x0
     398:	3c014348 	lui	at,0x4348
     39c:	44812000 	mtc1	at,$f4
     3a0:	00000000 	nop
     3a4:	e60400f8 	swc1	$f4,248(s0)
     3a8:	3c070000 	lui	a3,0x0
     3ac:	261901f0 	addiu	t9,s0,496
     3b0:	26080220 	addiu	t0,s0,544
     3b4:	24090008 	li	t1,8
     3b8:	afa90018 	sw	t1,24(sp)
     3bc:	afa80014 	sw	t0,20(sp)
     3c0:	afb90010 	sw	t9,16(sp)
     3c4:	24e70000 	addiu	a3,a3,0
     3c8:	8fa40044 	lw	a0,68(sp)
     3cc:	24c60000 	addiu	a2,a2,0
     3d0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     3d4:	afa50038 	sw	a1,56(sp)
     3d8:	2605014c 	addiu	a1,s0,332
     3dc:	afa50034 	sw	a1,52(sp)
     3e0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     3e4:	8fa40044 	lw	a0,68(sp)
     3e8:	3c070000 	lui	a3,0x0
     3ec:	260a016c 	addiu	t2,s0,364
     3f0:	8fa50034 	lw	a1,52(sp)
     3f4:	afaa0010 	sw	t2,16(sp)
     3f8:	24e70024 	addiu	a3,a3,36
     3fc:	8fa40044 	lw	a0,68(sp)
     400:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     404:	02003025 	move	a2,s0
     408:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     40c:	a20000ae 	sb	zero,174(s0)
     410:	3c010000 	lui	at,0x0
     414:	c426006c 	lwc1	$f6,108(at)
     418:	46060202 	mul.s	$f8,$f0,$f6
     41c:	4600428d 	trunc.w.s	$f10,$f8
     420:	440c5000 	mfc1	t4,$f10
     424:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     428:	a60c025c 	sh	t4,604(s0)
     42c:	3c010000 	lui	at,0x0
     430:	c4300070 	lwc1	$f16,112(at)
     434:	46100482 	mul.s	$f18,$f0,$f16
     438:	4600910d 	trunc.w.s	$f4,$f18
     43c:	440e2000 	mfc1	t6,$f4
     440:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     444:	a60e025e 	sh	t6,606(s0)
     448:	3c010000 	lui	at,0x0
     44c:	c4260074 	lwc1	$f6,116(at)
     450:	44801000 	mtc1	zero,$f2
     454:	3c050000 	lui	a1,0x0
     458:	46060202 	mul.s	$f8,$f0,$f6
     45c:	24190001 	li	t9,1
     460:	44071000 	mfc1	a3,$f2
     464:	24a50000 	addiu	a1,a1,0
     468:	3c063f80 	lui	a2,0x3f80
     46c:	4600428d 	trunc.w.s	$f10,$f8
     470:	44185000 	mfc1	t8,$f10
     474:	00000000 	nop
     478:	a6180260 	sh	t8,608(s0)
     47c:	afb90014 	sw	t9,20(sp)
     480:	8fa40038 	lw	a0,56(sp)
     484:	e7a20018 	swc1	$f2,24(sp)
     488:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     48c:	e7a20010 	swc1	$f2,16(sp)
     490:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     494:	02002025 	move	a0,s0
     498:	860800b4 	lh	t0,180(s0)
     49c:	240a0001 	li	t2,1
     4a0:	3c040000 	lui	a0,0x0
     4a4:	2509dce0 	addiu	t1,t0,-8992
     4a8:	a60900b4 	sh	t1,180(s0)
     4ac:	a20a0258 	sb	t2,600(s0)
     4b0:	24840030 	addiu	a0,a0,48
     4b4:	02002825 	move	a1,s0
     4b8:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     4bc:	8606001c 	lh	a2,28(s0)
     4c0:	8fbf002c 	lw	ra,44(sp)
     4c4:	8fb00028 	lw	s0,40(sp)
     4c8:	27bd0040 	addiu	sp,sp,64
     4cc:	03e00008 	jr	ra
     4d0:	00000000 	nop

000004d4 <EnButte_Destroy>:
     4d4:	27bdffe8 	addiu	sp,sp,-24
     4d8:	00803825 	move	a3,a0
     4dc:	afbf0014 	sw	ra,20(sp)
     4e0:	00a02025 	move	a0,a1
     4e4:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     4e8:	24e5014c 	addiu	a1,a3,332
     4ec:	8fbf0014 	lw	ra,20(sp)
     4f0:	27bd0018 	addiu	sp,sp,24
     4f4:	03e00008 	jr	ra
     4f8:	00000000 	nop

000004fc <func_809CD56C>:
     4fc:	27bdffe0 	addiu	sp,sp,-32
     500:	afbf0014 	sw	ra,20(sp)
     504:	00802825 	move	a1,a0
     508:	8484025e 	lh	a0,606(a0)
     50c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     510:	afa50020 	sw	a1,32(sp)
     514:	8fa50020 	lw	a1,32(sp)
     518:	e7a00018 	swc1	$f0,24(sp)
     51c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     520:	84a4025c 	lh	a0,604(a1)
     524:	8fa50020 	lw	a1,32(sp)
     528:	3c01c4fa 	lui	at,0xc4fa
     52c:	44816000 	mtc1	at,$f12
     530:	90a20256 	lbu	v0,598(a1)
     534:	3c010000 	lui	at,0x0
     538:	c7a40018 	lwc1	$f4,24(sp)
     53c:	00021080 	sll	v0,v0,0x2
     540:	00220821 	addu	at,at,v0
     544:	c42600fc 	lwc1	$f6,252(at)
     548:	3c010000 	lui	at,0x0
     54c:	00220821 	addu	at,at,v0
     550:	46062202 	mul.s	$f8,$f4,$f6
     554:	c42a00f0 	lwc1	$f10,240(at)
     558:	c4a400bc 	lwc1	$f4,188(a1)
     55c:	3c0144fa 	lui	at,0x44fa
     560:	460a0402 	mul.s	$f16,$f0,$f10
     564:	46088480 	add.s	$f18,$f16,$f8
     568:	46122180 	add.s	$f6,$f4,$f18
     56c:	e4a600bc 	swc1	$f6,188(a1)
     570:	c4a200bc 	lwc1	$f2,188(a1)
     574:	460c103c 	c.lt.s	$f2,$f12
     578:	00000000 	nop
     57c:	45020004 	bc1fl	590 <func_809CD56C+0x94>
     580:	44816000 	mtc1	at,$f12
     584:	1000000b 	b	5b4 <func_809CD56C+0xb8>
     588:	e4ac00bc 	swc1	$f12,188(a1)
     58c:	44816000 	mtc1	at,$f12
     590:	00000000 	nop
     594:	4602603c 	c.lt.s	$f12,$f2
     598:	00000000 	nop
     59c:	45020004 	bc1fl	5b0 <func_809CD56C+0xb4>
     5a0:	46001006 	mov.s	$f0,$f2
     5a4:	10000002 	b	5b0 <func_809CD56C+0xb4>
     5a8:	46006006 	mov.s	$f0,$f12
     5ac:	46001006 	mov.s	$f0,$f2
     5b0:	e4a000bc 	swc1	$f0,188(a1)
     5b4:	8fbf0014 	lw	ra,20(sp)
     5b8:	27bd0020 	addiu	sp,sp,32
     5bc:	03e00008 	jr	ra
     5c0:	00000000 	nop

000005c4 <func_809CD634>:
     5c4:	27bdffe0 	addiu	sp,sp,-32
     5c8:	afbf0014 	sw	ra,20(sp)
     5cc:	00802825 	move	a1,a0
     5d0:	8484025e 	lh	a0,606(a0)
     5d4:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     5d8:	afa50020 	sw	a1,32(sp)
     5dc:	8fa50020 	lw	a1,32(sp)
     5e0:	e7a00018 	swc1	$f0,24(sp)
     5e4:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     5e8:	84a4025c 	lh	a0,604(a1)
     5ec:	8fa50020 	lw	a1,32(sp)
     5f0:	3c01c3fa 	lui	at,0xc3fa
     5f4:	44816000 	mtc1	at,$f12
     5f8:	90a20256 	lbu	v0,598(a1)
     5fc:	3c010000 	lui	at,0x0
     600:	c7a40018 	lwc1	$f4,24(sp)
     604:	00021080 	sll	v0,v0,0x2
     608:	00220821 	addu	at,at,v0
     60c:	c4260114 	lwc1	$f6,276(at)
     610:	3c010000 	lui	at,0x0
     614:	00220821 	addu	at,at,v0
     618:	46062202 	mul.s	$f8,$f4,$f6
     61c:	c42a0108 	lwc1	$f10,264(at)
     620:	c4a400bc 	lwc1	$f4,188(a1)
     624:	3c0143fa 	lui	at,0x43fa
     628:	460a0402 	mul.s	$f16,$f0,$f10
     62c:	46088480 	add.s	$f18,$f16,$f8
     630:	46122180 	add.s	$f6,$f4,$f18
     634:	e4a600bc 	swc1	$f6,188(a1)
     638:	c4a200bc 	lwc1	$f2,188(a1)
     63c:	460c103c 	c.lt.s	$f2,$f12
     640:	00000000 	nop
     644:	45020004 	bc1fl	658 <func_809CD634+0x94>
     648:	44816000 	mtc1	at,$f12
     64c:	1000000b 	b	67c <func_809CD634+0xb8>
     650:	e4ac00bc 	swc1	$f12,188(a1)
     654:	44816000 	mtc1	at,$f12
     658:	00000000 	nop
     65c:	4602603c 	c.lt.s	$f12,$f2
     660:	00000000 	nop
     664:	45020004 	bc1fl	678 <func_809CD634+0xb4>
     668:	46001006 	mov.s	$f0,$f2
     66c:	10000002 	b	678 <func_809CD634+0xb4>
     670:	46006006 	mov.s	$f0,$f12
     674:	46001006 	mov.s	$f0,$f2
     678:	e4a000bc 	swc1	$f0,188(a1)
     67c:	8fbf0014 	lw	ra,20(sp)
     680:	27bd0020 	addiu	sp,sp,32
     684:	03e00008 	jr	ra
     688:	00000000 	nop

0000068c <EnButte_Turn>:
     68c:	27bdffe8 	addiu	sp,sp,-24
     690:	afbf0014 	sw	ra,20(sp)
     694:	84850032 	lh	a1,50(a0)
     698:	34018000 	li	at,0x8000
     69c:	848e00b6 	lh	t6,182(a0)
     6a0:	00a12821 	addu	a1,a1,at
     6a4:	00052c00 	sll	a1,a1,0x10
     6a8:	00052c03 	sra	a1,a1,0x10
     6ac:	00ae1023 	subu	v0,a1,t6
     6b0:	00021400 	sll	v0,v0,0x10
     6b4:	00021403 	sra	v0,v0,0x10
     6b8:	04400003 	bltz	v0,6c8 <EnButte_Turn+0x3c>
     6bc:	00803825 	move	a3,a0
     6c0:	10000002 	b	6cc <EnButte_Turn+0x40>
     6c4:	00401825 	move	v1,v0
     6c8:	00021823 	negu	v1,v0
     6cc:	000330c3 	sra	a2,v1,0x3
     6d0:	00063400 	sll	a2,a2,0x10
     6d4:	00063403 	sra	a2,a2,0x10
     6d8:	24e400b6 	addiu	a0,a3,182
     6dc:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     6e0:	afa70018 	sw	a3,24(sp)
     6e4:	8fa70018 	lw	a3,24(sp)
     6e8:	84ef0260 	lh	t7,608(a3)
     6ec:	448f2000 	mtc1	t7,$f4
     6f0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     6f4:	46802320 	cvt.s.w	$f12,$f4
     6f8:	3c014416 	lui	at,0x4416
     6fc:	44813000 	mtc1	at,$f6
     700:	8fa70018 	lw	a3,24(sp)
     704:	46060202 	mul.s	$f8,$f0,$f6
     708:	4600428d 	trunc.w.s	$f10,$f8
     70c:	44095000 	mfc1	t1,$f10
     710:	00000000 	nop
     714:	252adce0 	addiu	t2,t1,-8992
     718:	a4ea00b4 	sh	t2,180(a3)
     71c:	8fbf0014 	lw	ra,20(sp)
     720:	27bd0018 	addiu	sp,sp,24
     724:	03e00008 	jr	ra
     728:	00000000 	nop

0000072c <EnButte_SetupFlyAround>:
     72c:	27bdffe8 	addiu	sp,sp,-24
     730:	afbf0014 	sw	ra,20(sp)
     734:	908e0256 	lbu	t6,598(a0)
     738:	3c180000 	lui	t8,0x0
     73c:	27180054 	addiu	t8,t8,84
     740:	000e7880 	sll	t7,t6,0x2
     744:	01ee7821 	addu	t7,t7,t6
     748:	000f7880 	sll	t7,t7,0x2
     74c:	01f82821 	addu	a1,t7,t8
     750:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     754:	afa40018 	sw	a0,24(sp)
     758:	8fa40018 	lw	a0,24(sp)
     75c:	3c190000 	lui	t9,0x0
     760:	27390000 	addiu	t9,t9,0
     764:	ac990250 	sw	t9,592(a0)
     768:	8fbf0014 	lw	ra,20(sp)
     76c:	27bd0018 	addiu	sp,sp,24
     770:	03e00008 	jr	ra
     774:	00000000 	nop

00000778 <EnButte_FlyAround>:
     778:	27bdffb0 	addiu	sp,sp,-80
     77c:	afbf0024 	sw	ra,36(sp)
     780:	afb00020 	sw	s0,32(sp)
     784:	908e0256 	lbu	t6,598(a0)
     788:	3c180000 	lui	t8,0x0
     78c:	27180054 	addiu	t8,t8,84
     790:	000e7880 	sll	t7,t6,0x2
     794:	01ee7821 	addu	t7,t7,t6
     798:	000f7880 	sll	t7,t7,0x2
     79c:	01f8c821 	addu	t9,t7,t8
     7a0:	afb9004c 	sw	t9,76(sp)
     7a4:	8ca81c44 	lw	t0,7236(a1)
     7a8:	00808025 	move	s0,a0
     7ac:	afa80044 	sw	t0,68(sp)
     7b0:	8c870010 	lw	a3,16(a0)
     7b4:	8c860008 	lw	a2,8(a0)
     7b8:	c48e002c 	lwc1	$f14,44(a0)
     7bc:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     7c0:	c48c0024 	lwc1	$f12,36(a0)
     7c4:	e7a00040 	swc1	$f0,64(sp)
     7c8:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     7cc:	02002025 	move	a0,s0
     7d0:	8fa2004c 	lw	v0,76(sp)
     7d4:	44802000 	mtc1	zero,$f4
     7d8:	26040068 	addiu	a0,s0,104
     7dc:	8c450004 	lw	a1,4(v0)
     7e0:	8c460008 	lw	a2,8(v0)
     7e4:	8c47000c 	lw	a3,12(v0)
     7e8:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     7ec:	e7a40010 	swc1	$f4,16(sp)
     7f0:	92090257 	lbu	t1,599(s0)
     7f4:	24070001 	li	a3,1
     7f8:	44803000 	mtc1	zero,$f6
     7fc:	14e90005 	bne	a3,t1,814 <EnButte_FlyAround+0x9c>
     800:	3c010000 	lui	at,0x0
     804:	3c010000 	lui	at,0x0
     808:	c4200078 	lwc1	$f0,120(at)
     80c:	10000003 	b	81c <EnButte_FlyAround+0xa4>
     810:	240603e8 	li	a2,1000
     814:	c420007c 	lwc1	$f0,124(at)
     818:	24060258 	li	a2,600
     81c:	e7a60038 	swc1	$f6,56(sp)
     820:	920a0256 	lbu	t2,598(s0)
     824:	c608000c 	lwc1	$f8,12(s0)
     828:	11400018 	beqz	t2,88c <EnButte_FlyAround+0x114>
     82c:	e6080264 	swc1	$f8,612(s0)
     830:	c7aa0040 	lwc1	$f10,64(sp)
     834:	26040024 	addiu	a0,s0,36
     838:	460a003c 	c.lt.s	$f0,$f10
     83c:	00000000 	nop
     840:	45010005 	bc1t	858 <EnButte_FlyAround+0xe0>
     844:	00000000 	nop
     848:	860b0254 	lh	t3,596(s0)
     84c:	29610004 	slti	at,t3,4
     850:	5020000f 	beqzl	at,890 <EnButte_FlyAround+0x118>
     854:	92030257 	lbu	v1,599(s0)
     858:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     85c:	26050008 	addiu	a1,s0,8
     860:	8fac004c 	lw	t4,76(sp)
     864:	00022c00 	sll	a1,v0,0x10
     868:	00052c03 	sra	a1,a1,0x10
     86c:	26040032 	addiu	a0,s0,50
     870:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     874:	85860010 	lh	a2,16(t4)
     878:	14400041 	bnez	v0,980 <EnButte_FlyAround+0x208>
     87c:	3c013f00 	lui	at,0x3f00
     880:	44819000 	mtc1	at,$f18
     884:	1000003e 	b	980 <EnButte_FlyAround+0x208>
     888:	e7b20038 	swc1	$f18,56(sp)
     88c:	92030257 	lbu	v1,599(s0)
     890:	14600013 	bnez	v1,8e0 <EnButte_FlyAround+0x168>
     894:	00000000 	nop
     898:	8e02011c 	lw	v0,284(s0)
     89c:	10400010 	beqz	v0,8e0 <EnButte_FlyAround+0x168>
     8a0:	00000000 	nop
     8a4:	1202000e 	beq	s0,v0,8e0 <EnButte_FlyAround+0x168>
     8a8:	26040024 	addiu	a0,s0,36
     8ac:	24450024 	addiu	a1,v0,36
     8b0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     8b4:	a7a60032 	sh	a2,50(sp)
     8b8:	00022c00 	sll	a1,v0,0x10
     8bc:	87a60032 	lh	a2,50(sp)
     8c0:	00052c03 	sra	a1,a1,0x10
     8c4:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     8c8:	26040032 	addiu	a0,s0,50
     8cc:	1440002c 	bnez	v0,980 <EnButte_FlyAround+0x208>
     8d0:	3c010000 	lui	at,0x0
     8d4:	c4240080 	lwc1	$f4,128(at)
     8d8:	10000029 	b	980 <EnButte_FlyAround+0x208>
     8dc:	e7a40038 	swc1	$f4,56(sp)
     8e0:	54e3001b 	bnel	a3,v1,950 <EnButte_FlyAround+0x1d8>
     8e4:	8608025c 	lh	t0,604(s0)
     8e8:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     8ec:	a7a60032 	sh	a2,50(sp)
     8f0:	3c013f00 	lui	at,0x3f00
     8f4:	44813000 	mtc1	at,$f6
     8f8:	3c0146c0 	lui	at,0x46c0
     8fc:	44815000 	mtc1	at,$f10
     900:	46060201 	sub.s	$f8,$f0,$f6
     904:	8619008a 	lh	t9,138(s0)
     908:	34018000 	li	at,0x8000
     90c:	87a60032 	lh	a2,50(sp)
     910:	460a4482 	mul.s	$f18,$f8,$f10
     914:	26040032 	addiu	a0,s0,50
     918:	4600910d 	trunc.w.s	$f4,$f18
     91c:	44182000 	mfc1	t8,$f4
     920:	00000000 	nop
     924:	03192821 	addu	a1,t8,t9
     928:	00a12821 	addu	a1,a1,at
     92c:	00052c00 	sll	a1,a1,0x10
     930:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     934:	00052c03 	sra	a1,a1,0x10
     938:	14400011 	bnez	v0,980 <EnButte_FlyAround+0x208>
     93c:	3c010000 	lui	at,0x0
     940:	c4260084 	lwc1	$f6,132(at)
     944:	1000000e 	b	980 <EnButte_FlyAround+0x208>
     948:	e7a60038 	swc1	$f6,56(sp)
     94c:	8608025c 	lh	t0,604(s0)
     950:	44884000 	mtc1	t0,$f8
     954:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     958:	46804320 	cvt.s.w	$f12,$f8
     95c:	3c0142c8 	lui	at,0x42c8
     960:	44815000 	mtc1	at,$f10
     964:	86090032 	lh	t1,50(s0)
     968:	460a0482 	mul.s	$f18,$f0,$f10
     96c:	4600910d 	trunc.w.s	$f4,$f18
     970:	440d2000 	mfc1	t5,$f4
     974:	00000000 	nop
     978:	012d7021 	addu	t6,t1,t5
     97c:	a60e0032 	sh	t6,50(s0)
     980:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     984:	02002025 	move	a0,s0
     988:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     98c:	86040260 	lh	a0,608(s0)
     990:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     994:	e7a00028 	swc1	$f0,40(sp)
     998:	8604025e 	lh	a0,606(s0)
     99c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     9a0:	e7a0002c 	swc1	$f0,44(sp)
     9a4:	3c013f80 	lui	at,0x3f80
     9a8:	44817000 	mtc1	at,$f14
     9ac:	3c010000 	lui	at,0x0
     9b0:	c4300088 	lwc1	$f16,136(at)
     9b4:	3c013f00 	lui	at,0x3f00
     9b8:	44814000 	mtc1	at,$f8
     9bc:	c6060068 	lwc1	$f6,104(s0)
     9c0:	c7a2002c 	lwc1	$f2,44(sp)
     9c4:	3c010000 	lui	at,0x0
     9c8:	46083282 	mul.s	$f10,$f6,$f8
     9cc:	c7a60028 	lwc1	$f6,40(sp)
     9d0:	46101482 	mul.s	$f18,$f2,$f16
     9d4:	46067201 	sub.s	$f8,$f14,$f6
     9d8:	46125100 	add.s	$f4,$f10,$f18
     9dc:	c42a008c 	lwc1	$f10,140(at)
     9e0:	3c010000 	lui	at,0x0
     9e4:	460a4482 	mul.s	$f18,$f8,$f10
     9e8:	46007201 	sub.s	$f8,$f14,$f0
     9ec:	c42a0090 	lwc1	$f10,144(at)
     9f0:	3c013fc0 	lui	at,0x3fc0
     9f4:	46122180 	add.s	$f6,$f4,$f18
     9f8:	460a4102 	mul.s	$f4,$f8,$f10
     9fc:	c7a80038 	lwc1	$f8,56(sp)
     a00:	46062480 	add.s	$f18,$f4,$f6
     a04:	46089300 	add.s	$f12,$f18,$f8
     a08:	4610603c 	c.lt.s	$f12,$f16
     a0c:	00000000 	nop
     a10:	45020004 	bc1fl	a24 <EnButte_FlyAround+0x2ac>
     a14:	44810000 	mtc1	at,$f0
     a18:	1000000b 	b	a48 <EnButte_FlyAround+0x2d0>
     a1c:	e61001c8 	swc1	$f16,456(s0)
     a20:	44810000 	mtc1	at,$f0
     a24:	00000000 	nop
     a28:	460c003c 	c.lt.s	$f0,$f12
     a2c:	00000000 	nop
     a30:	45020004 	bc1fl	a44 <EnButte_FlyAround+0x2cc>
     a34:	46006086 	mov.s	$f2,$f12
     a38:	10000002 	b	a44 <EnButte_FlyAround+0x2cc>
     a3c:	46000086 	mov.s	$f2,$f0
     a40:	46006086 	mov.s	$f2,$f12
     a44:	e60201c8 	swc1	$f2,456(s0)
     a48:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     a4c:	260401ac 	addiu	a0,s0,428
     a50:	860f0254 	lh	t7,596(s0)
     a54:	02002025 	move	a0,s0
     a58:	5de0000a 	bgtzl	t7,a84 <EnButte_FlyAround+0x30c>
     a5c:	860a001c 	lh	t2,28(s0)
     a60:	92180256 	lbu	t8,598(s0)
     a64:	3c080000 	lui	t0,0x0
     a68:	25080054 	addiu	t0,t0,84
     a6c:	0018c880 	sll	t9,t8,0x2
     a70:	0338c821 	addu	t9,t9,t8
     a74:	0019c880 	sll	t9,t9,0x2
     a78:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     a7c:	03282821 	addu	a1,t9,t0
     a80:	860a001c 	lh	t2,28(s0)
     a84:	24010001 	li	at,1
     a88:	8fa20044 	lw	v0,68(sp)
     a8c:	314b0001 	andi	t3,t2,0x1
     a90:	55610021 	bnel	t3,at,b18 <EnButte_FlyAround+0x3a0>
     a94:	c6120090 	lwc1	$f18,144(s0)
     a98:	804c0151 	lb	t4,337(v0)
     a9c:	24010006 	li	at,6
     aa0:	5581001d 	bnel	t4,at,b18 <EnButte_FlyAround+0x3a0>
     aa4:	c6120090 	lwc1	$f18,144(s0)
     aa8:	8609025a 	lh	t1,602(s0)
     aac:	5d20001a 	bgtzl	t1,b18 <EnButte_FlyAround+0x3a0>
     ab0:	c6120090 	lwc1	$f18,144(s0)
     ab4:	c44c0024 	lwc1	$f12,36(v0)
     ab8:	c44e002c 	lwc1	$f14,44(v0)
     abc:	8e060008 	lw	a2,8(s0)
     ac0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     ac4:	8e070010 	lw	a3,16(s0)
     ac8:	3c014661 	lui	at,0x4661
     acc:	44815000 	mtc1	at,$f10
     ad0:	3c014270 	lui	at,0x4270
     ad4:	460a003c 	c.lt.s	$f0,$f10
     ad8:	00000000 	nop
     adc:	45010008 	bc1t	b00 <EnButte_FlyAround+0x388>
     ae0:	00000000 	nop
     ae4:	c6040090 	lwc1	$f4,144(s0)
     ae8:	44813000 	mtc1	at,$f6
     aec:	00000000 	nop
     af0:	4606203c 	c.lt.s	$f4,$f6
     af4:	00000000 	nop
     af8:	45020007 	bc1fl	b18 <EnButte_FlyAround+0x3a0>
     afc:	c6120090 	lwc1	$f18,144(s0)
     b00:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     b04:	02002025 	move	a0,s0
     b08:	240d0002 	li	t5,2
     b0c:	1000000e 	b	b48 <EnButte_FlyAround+0x3d0>
     b10:	a20d0257 	sb	t5,599(s0)
     b14:	c6120090 	lwc1	$f18,144(s0)
     b18:	3c01405e 	lui	at,0x405e
     b1c:	44815800 	mtc1	at,$f11
     b20:	44805000 	mtc1	zero,$f10
     b24:	46009221 	cvt.d.s	$f8,$f18
     b28:	240e0001 	li	t6,1
     b2c:	462a403c 	c.lt.d	$f8,$f10
     b30:	00000000 	nop
     b34:	45020004 	bc1fl	b48 <EnButte_FlyAround+0x3d0>
     b38:	a2000257 	sb	zero,599(s0)
     b3c:	10000002 	b	b48 <EnButte_FlyAround+0x3d0>
     b40:	a20e0257 	sb	t6,599(s0)
     b44:	a2000257 	sb	zero,599(s0)
     b48:	8fbf0024 	lw	ra,36(sp)
     b4c:	8fb00020 	lw	s0,32(sp)
     b50:	27bd0050 	addiu	sp,sp,80
     b54:	03e00008 	jr	ra
     b58:	00000000 	nop

00000b5c <EnButte_SetupFollowLink>:
     b5c:	27bdffe8 	addiu	sp,sp,-24
     b60:	afbf0014 	sw	ra,20(sp)
     b64:	908e0256 	lbu	t6,598(a0)
     b68:	3c180000 	lui	t8,0x0
     b6c:	27180090 	addiu	t8,t8,144
     b70:	000e7880 	sll	t7,t6,0x2
     b74:	01ee7821 	addu	t7,t7,t6
     b78:	000f7880 	sll	t7,t7,0x2
     b7c:	01f82821 	addu	a1,t7,t8
     b80:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     b84:	afa40018 	sw	a0,24(sp)
     b88:	8fa40018 	lw	a0,24(sp)
     b8c:	3c190000 	lui	t9,0x0
     b90:	27390000 	addiu	t9,t9,0
     b94:	ac990250 	sw	t9,592(a0)
     b98:	8fbf0014 	lw	ra,20(sp)
     b9c:	27bd0018 	addiu	sp,sp,24
     ba0:	03e00008 	jr	ra
     ba4:	00000000 	nop

00000ba8 <EnButte_FollowLink>:
     ba8:	27bdffa0 	addiu	sp,sp,-96
     bac:	afbf0024 	sw	ra,36(sp)
     bb0:	afb10020 	sw	s1,32(sp)
     bb4:	afb0001c 	sw	s0,28(sp)
     bb8:	afa50064 	sw	a1,100(sp)
     bbc:	908e0256 	lbu	t6,598(a0)
     bc0:	3c180000 	lui	t8,0x0
     bc4:	27180090 	addiu	t8,t8,144
     bc8:	000e7880 	sll	t7,t6,0x2
     bcc:	01ee7821 	addu	t7,t7,t6
     bd0:	000f7880 	sll	t7,t7,0x2
     bd4:	01f81021 	addu	v0,t7,t8
     bd8:	8cb11c44 	lw	s1,7236(a1)
     bdc:	00808025 	move	s0,a0
     be0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     be4:	afa2005c 	sw	v0,92(sp)
     be8:	8fa2005c 	lw	v0,92(sp)
     bec:	44802000 	mtc1	zero,$f4
     bf0:	26040068 	addiu	a0,s0,104
     bf4:	8c450004 	lw	a1,4(v0)
     bf8:	8c460008 	lw	a2,8(v0)
     bfc:	8c47000c 	lw	a3,12(v0)
     c00:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     c04:	e7a40010 	swc1	$f4,16(sp)
     c08:	44803000 	mtc1	zero,$f6
     c0c:	00000000 	nop
     c10:	e7a60040 	swc1	$f6,64(sp)
     c14:	92080256 	lbu	t0,598(s0)
     c18:	51000045 	beqzl	t0,d30 <EnButte_FollowLink+0x188>
     c1c:	3c0141f0 	lui	at,0x41f0
     c20:	86090254 	lh	t1,596(s0)
     c24:	2921000c 	slti	at,t1,12
     c28:	50200041 	beqzl	at,d30 <EnButte_FollowLink+0x188>
     c2c:	3c0141f0 	lui	at,0x41f0
     c30:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     c34:	862400b6 	lh	a0,182(s1)
     c38:	3c014120 	lui	at,0x4120
     c3c:	44814000 	mtc1	at,$f8
     c40:	c63208b8 	lwc1	$f18,2232(s1)
     c44:	46080282 	mul.s	$f10,$f0,$f8
     c48:	46125100 	add.s	$f4,$f10,$f18
     c4c:	e7a40048 	swc1	$f4,72(sp)
     c50:	c62608bc 	lwc1	$f6,2236(s1)
     c54:	e7a6004c 	swc1	$f6,76(sp)
     c58:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     c5c:	862400b6 	lh	a0,182(s1)
     c60:	3c014120 	lui	at,0x4120
     c64:	44814000 	mtc1	at,$f8
     c68:	c63208c0 	lwc1	$f18,2240(s1)
     c6c:	26040024 	addiu	a0,s0,36
     c70:	46080282 	mul.s	$f10,$f0,$f8
     c74:	27a50048 	addiu	a1,sp,72
     c78:	46125100 	add.s	$f4,$f10,$f18
     c7c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     c80:	e7a40050 	swc1	$f4,80(sp)
     c84:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     c88:	a7a20038 	sh	v0,56(sp)
     c8c:	3c0a0000 	lui	t2,0x0
     c90:	8d4a0120 	lw	t2,288(t2)
     c94:	87af0038 	lh	t7,56(sp)
     c98:	26040032 	addiu	a0,s0,50
     c9c:	448a3000 	mtc1	t2,$f6
     ca0:	240607d0 	li	a2,2000
     ca4:	46803220 	cvt.s.w	$f8,$f6
     ca8:	46080282 	mul.s	$f10,$f0,$f8
     cac:	4600548d 	trunc.w.s	$f18,$f10
     cb0:	440e9000 	mfc1	t6,$f18
     cb4:	00000000 	nop
     cb8:	01cf2821 	addu	a1,t6,t7
     cbc:	00052c00 	sll	a1,a1,0x10
     cc0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     cc4:	00052c03 	sra	a1,a1,0x10
     cc8:	10400016 	beqz	v0,d24 <EnButte_FollowLink+0x17c>
     ccc:	3c010000 	lui	at,0x0
     cd0:	8fb80064 	lw	t8,100(sp)
     cd4:	3c190001 	lui	t9,0x1
     cd8:	0338c821 	addu	t9,t9,t8
     cdc:	8f391de4 	lw	t9,7652(t9)
     ce0:	33280001 	andi	t0,t9,0x1
     ce4:	51000012 	beqzl	t0,d30 <EnButte_FollowLink+0x188>
     ce8:	3c0141f0 	lui	at,0x41f0
     cec:	8609025c 	lh	t1,604(s0)
     cf0:	44892000 	mtc1	t1,$f4
     cf4:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     cf8:	46802320 	cvt.s.w	$f12,$f4
     cfc:	3c014270 	lui	at,0x4270
     d00:	44813000 	mtc1	at,$f6
     d04:	860a0032 	lh	t2,50(s0)
     d08:	46060202 	mul.s	$f8,$f0,$f6
     d0c:	4600428d 	trunc.w.s	$f10,$f8
     d10:	440e5000 	mfc1	t6,$f10
     d14:	00000000 	nop
     d18:	014e7821 	addu	t7,t2,t6
     d1c:	10000003 	b	d2c <EnButte_FollowLink+0x184>
     d20:	a60f0032 	sh	t7,50(s0)
     d24:	c4320094 	lwc1	$f18,148(at)
     d28:	e7b20040 	swc1	$f18,64(sp)
     d2c:	3c0141f0 	lui	at,0x41f0
     d30:	44813000 	mtc1	at,$f6
     d34:	c6240028 	lwc1	$f4,40(s1)
     d38:	c62008bc 	lwc1	$f0,2236(s1)
     d3c:	46062080 	add.s	$f2,$f4,$f6
     d40:	4602003c 	c.lt.s	$f0,$f2
     d44:	00000000 	nop
     d48:	45020004 	bc1fl	d5c <EnButte_FollowLink+0x1b4>
     d4c:	e6000264 	swc1	$f0,612(s0)
     d50:	10000002 	b	d5c <EnButte_FollowLink+0x1b4>
     d54:	e6020264 	swc1	$f2,612(s0)
     d58:	e6000264 	swc1	$f0,612(s0)
     d5c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     d60:	02002025 	move	a0,s0
     d64:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     d68:	86040260 	lh	a0,608(s0)
     d6c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     d70:	e7a00030 	swc1	$f0,48(sp)
     d74:	8604025e 	lh	a0,606(s0)
     d78:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     d7c:	e7a00034 	swc1	$f0,52(sp)
     d80:	3c013f80 	lui	at,0x3f80
     d84:	44817000 	mtc1	at,$f14
     d88:	3c010000 	lui	at,0x0
     d8c:	c4300098 	lwc1	$f16,152(at)
     d90:	3c013f00 	lui	at,0x3f00
     d94:	44815000 	mtc1	at,$f10
     d98:	c6080068 	lwc1	$f8,104(s0)
     d9c:	c7a20034 	lwc1	$f2,52(sp)
     da0:	3c010000 	lui	at,0x0
     da4:	460a4482 	mul.s	$f18,$f8,$f10
     da8:	c7a80030 	lwc1	$f8,48(sp)
     dac:	46101102 	mul.s	$f4,$f2,$f16
     db0:	46087281 	sub.s	$f10,$f14,$f8
     db4:	46049180 	add.s	$f6,$f18,$f4
     db8:	c432009c 	lwc1	$f18,156(at)
     dbc:	3c010000 	lui	at,0x0
     dc0:	46125102 	mul.s	$f4,$f10,$f18
     dc4:	46007281 	sub.s	$f10,$f14,$f0
     dc8:	c43200a0 	lwc1	$f18,160(at)
     dcc:	3c013fc0 	lui	at,0x3fc0
     dd0:	46043200 	add.s	$f8,$f6,$f4
     dd4:	46125182 	mul.s	$f6,$f10,$f18
     dd8:	c7aa0040 	lwc1	$f10,64(sp)
     ddc:	46083100 	add.s	$f4,$f6,$f8
     de0:	460a2300 	add.s	$f12,$f4,$f10
     de4:	4610603c 	c.lt.s	$f12,$f16
     de8:	00000000 	nop
     dec:	45020004 	bc1fl	e00 <EnButte_FollowLink+0x258>
     df0:	44810000 	mtc1	at,$f0
     df4:	1000000b 	b	e24 <EnButte_FollowLink+0x27c>
     df8:	e61001c8 	swc1	$f16,456(s0)
     dfc:	44810000 	mtc1	at,$f0
     e00:	00000000 	nop
     e04:	460c003c 	c.lt.s	$f0,$f12
     e08:	00000000 	nop
     e0c:	45020004 	bc1fl	e20 <EnButte_FollowLink+0x278>
     e10:	46006086 	mov.s	$f2,$f12
     e14:	10000002 	b	e20 <EnButte_FollowLink+0x278>
     e18:	46000086 	mov.s	$f2,$f0
     e1c:	46006086 	mov.s	$f2,$f12
     e20:	e60201c8 	swc1	$f2,456(s0)
     e24:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     e28:	260401ac 	addiu	a0,s0,428
     e2c:	86180254 	lh	t8,596(s0)
     e30:	02002025 	move	a0,s0
     e34:	5f00000f 	bgtzl	t8,e74 <EnButte_FollowLink+0x2cc>
     e38:	c60c0024 	lwc1	$f12,36(s0)
     e3c:	92190256 	lbu	t9,598(s0)
     e40:	3c090000 	lui	t1,0x0
     e44:	25290090 	addiu	t1,t1,144
     e48:	00194080 	sll	t0,t9,0x2
     e4c:	01194021 	addu	t0,t0,t9
     e50:	00084080 	sll	t0,t0,0x2
     e54:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     e58:	01092821 	addu	a1,t0,t1
     e5c:	3c0b0000 	lui	t3,0x0
     e60:	8d6b0120 	lw	t3,288(t3)
     e64:	3c010000 	lui	at,0x0
     e68:	000b6023 	negu	t4,t3
     e6c:	ac2c0120 	sw	t4,288(at)
     e70:	c60c0024 	lwc1	$f12,36(s0)
     e74:	c60e002c 	lwc1	$f14,44(s0)
     e78:	8e060008 	lw	a2,8(s0)
     e7c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     e80:	8e070010 	lw	a3,16(s0)
     e84:	822d0151 	lb	t5,337(s1)
     e88:	24010006 	li	at,6
     e8c:	46000086 	mov.s	$f2,$f0
     e90:	15a10013 	bne	t5,at,ee0 <EnButte_FollowLink+0x338>
     e94:	00000000 	nop
     e98:	c6200068 	lwc1	$f0,104(s1)
     e9c:	3c010000 	lui	at,0x0
     ea0:	c43200a4 	lwc1	$f18,164(at)
     ea4:	46000005 	abs.s	$f0,$f0
     ea8:	4612003c 	c.lt.s	$f0,$f18
     eac:	00000000 	nop
     eb0:	4500000b 	bc1f	ee0 <EnButte_FollowLink+0x338>
     eb4:	00000000 	nop
     eb8:	860a025a 	lh	t2,602(s0)
     ebc:	3c0147c8 	lui	at,0x47c8
     ec0:	1d400007 	bgtz	t2,ee0 <EnButte_FollowLink+0x338>
     ec4:	00000000 	nop
     ec8:	44813000 	mtc1	at,$f6
     ecc:	3c014761 	lui	at,0x4761
     ed0:	4606103c 	c.lt.s	$f2,$f6
     ed4:	00000000 	nop
     ed8:	45030006 	bc1tl	ef4 <EnButte_FollowLink+0x34c>
     edc:	44814000 	mtc1	at,$f8
     ee0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     ee4:	02002025 	move	a0,s0
     ee8:	10000016 	b	f44 <EnButte_FollowLink+0x39c>
     eec:	8fbf0024 	lw	ra,36(sp)
     ef0:	44814000 	mtc1	at,$f8
     ef4:	00000000 	nop
     ef8:	4602403c 	c.lt.s	$f8,$f2
     efc:	00000000 	nop
     f00:	45020010 	bc1fl	f44 <EnButte_FollowLink+0x39c>
     f04:	8fbf0024 	lw	ra,36(sp)
     f08:	c62c08b8 	lwc1	$f12,2232(s1)
     f0c:	c62e08c0 	lwc1	$f14,2240(s1)
     f10:	8e060024 	lw	a2,36(s0)
     f14:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     f18:	8e07002c 	lw	a3,44(s0)
     f1c:	3c014561 	lui	at,0x4561
     f20:	44812000 	mtc1	at,$f4
     f24:	00000000 	nop
     f28:	4604003c 	c.lt.s	$f0,$f4
     f2c:	00000000 	nop
     f30:	45020004 	bc1fl	f44 <EnButte_FollowLink+0x39c>
     f34:	8fbf0024 	lw	ra,36(sp)
     f38:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     f3c:	02002025 	move	a0,s0
     f40:	8fbf0024 	lw	ra,36(sp)
     f44:	8fb0001c 	lw	s0,28(sp)
     f48:	8fb10020 	lw	s1,32(sp)
     f4c:	03e00008 	jr	ra
     f50:	27bd0060 	addiu	sp,sp,96

00000f54 <EnButte_SetupTransformIntoFairy>:
     f54:	27bdffe8 	addiu	sp,sp,-24
     f58:	afbf0014 	sw	ra,20(sp)
     f5c:	8c8f0004 	lw	t7,4(a0)
     f60:	3c013f80 	lui	at,0x3f80
     f64:	44812000 	mtc1	at,$f4
     f68:	240e0009 	li	t6,9
     f6c:	35f80010 	ori	t8,t7,0x10
     f70:	a48e0254 	sh	t6,596(a0)
     f74:	ac980004 	sw	t8,4(a0)
     f78:	e48401c8 	swc1	$f4,456(a0)
     f7c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     f80:	afa40018 	sw	a0,24(sp)
     f84:	8fa40018 	lw	a0,24(sp)
     f88:	3c190000 	lui	t9,0x0
     f8c:	27390000 	addiu	t9,t9,0
     f90:	ac990250 	sw	t9,592(a0)
     f94:	8fbf0014 	lw	ra,20(sp)
     f98:	27bd0018 	addiu	sp,sp,24
     f9c:	03e00008 	jr	ra
     fa0:	00000000 	nop

00000fa4 <EnButte_TransformIntoFairy>:
     fa4:	27bdffc8 	addiu	sp,sp,-56
     fa8:	afb00030 	sw	s0,48(sp)
     fac:	00808025 	move	s0,a0
     fb0:	afbf0034 	sw	ra,52(sp)
     fb4:	afa5003c 	sw	a1,60(sp)
     fb8:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     fbc:	248401ac 	addiu	a0,a0,428
     fc0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     fc4:	00000000 	nop
     fc8:	86020254 	lh	v0,596(s0)
     fcc:	24010005 	li	at,5
     fd0:	8fa4003c 	lw	a0,60(sp)
     fd4:	14410006 	bne	v0,at,ff0 <EnButte_TransformIntoFairy+0x4c>
     fd8:	26050024 	addiu	a1,s0,36
     fdc:	2406003c 	li	a2,60
     fe0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
     fe4:	240728e7 	li	a3,10471
     fe8:	10000019 	b	1050 <EnButte_TransformIntoFairy+0xac>
     fec:	8fbf0034 	lw	ra,52(sp)
     ff0:	24010004 	li	at,4
     ff4:	14410011 	bne	v0,at,103c <EnButte_TransformIntoFairy+0x98>
     ff8:	8fa5003c 	lw	a1,60(sp)
     ffc:	c604003c 	lwc1	$f4,60(s0)
    1000:	8e070038 	lw	a3,56(s0)
    1004:	240f0002 	li	t7,2
    1008:	e7a40010 	swc1	$f4,16(sp)
    100c:	c6060040 	lwc1	$f6,64(s0)
    1010:	afa00018 	sw	zero,24(sp)
    1014:	24a41c24 	addiu	a0,a1,7204
    1018:	e7a60014 	swc1	$f6,20(sp)
    101c:	860e00b6 	lh	t6,182(s0)
    1020:	afaf0024 	sw	t7,36(sp)
    1024:	afa00020 	sw	zero,32(sp)
    1028:	24060018 	li	a2,24
    102c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1030:	afae001c 	sw	t6,28(sp)
    1034:	10000005 	b	104c <EnButte_TransformIntoFairy+0xa8>
    1038:	a2000258 	sb	zero,600(s0)
    103c:	5c400004 	bgtzl	v0,1050 <EnButte_TransformIntoFairy+0xac>
    1040:	8fbf0034 	lw	ra,52(sp)
    1044:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1048:	02002025 	move	a0,s0
    104c:	8fbf0034 	lw	ra,52(sp)
    1050:	8fb00030 	lw	s0,48(sp)
    1054:	27bd0038 	addiu	sp,sp,56
    1058:	03e00008 	jr	ra
    105c:	00000000 	nop

00001060 <EnButte_SetupWaitToDie>:
    1060:	3c0f0000 	lui	t7,0x0
    1064:	240e0040 	li	t6,64
    1068:	25ef0000 	addiu	t7,t7,0
    106c:	a48e0254 	sh	t6,596(a0)
    1070:	ac8f0250 	sw	t7,592(a0)
    1074:	03e00008 	jr	ra
    1078:	ac800134 	sw	zero,308(a0)

0000107c <EnButte_WaitToDie>:
    107c:	27bdffe8 	addiu	sp,sp,-24
    1080:	afbf0014 	sw	ra,20(sp)
    1084:	afa5001c 	sw	a1,28(sp)
    1088:	848e0254 	lh	t6,596(a0)
    108c:	5dc00004 	bgtzl	t6,10a0 <EnButte_WaitToDie+0x24>
    1090:	8fbf0014 	lw	ra,20(sp)
    1094:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1098:	00000000 	nop
    109c:	8fbf0014 	lw	ra,20(sp)
    10a0:	27bd0018 	addiu	sp,sp,24
    10a4:	03e00008 	jr	ra
    10a8:	00000000 	nop

000010ac <EnButte_Update>:
    10ac:	27bdffe0 	addiu	sp,sp,-32
    10b0:	afbf001c 	sw	ra,28(sp)
    10b4:	afb00018 	sw	s0,24(sp)
    10b8:	8c82011c 	lw	v0,284(a0)
    10bc:	00808025 	move	s0,a0
    10c0:	24010001 	li	at,1
    10c4:	50400008 	beqzl	v0,10e8 <EnButte_Update+0x3c>
    10c8:	86020254 	lh	v0,596(s0)
    10cc:	8c4e0130 	lw	t6,304(v0)
    10d0:	55c00005 	bnezl	t6,10e8 <EnButte_Update+0x3c>
    10d4:	86020254 	lh	v0,596(s0)
    10d8:	50820003 	beql	a0,v0,10e8 <EnButte_Update+0x3c>
    10dc:	86020254 	lh	v0,596(s0)
    10e0:	ac80011c 	sw	zero,284(a0)
    10e4:	86020254 	lh	v0,596(s0)
    10e8:	18400002 	blez	v0,10f4 <EnButte_Update+0x48>
    10ec:	244fffff 	addiu	t7,v0,-1
    10f0:	a60f0254 	sh	t7,596(s0)
    10f4:	8618025c 	lh	t8,604(s0)
    10f8:	8608025e 	lh	t0,606(s0)
    10fc:	860a0260 	lh	t2,608(s0)
    1100:	860c001c 	lh	t4,28(s0)
    1104:	27190222 	addiu	t9,t8,546
    1108:	25091000 	addiu	t1,t0,4096
    110c:	254b0600 	addiu	t3,t2,1536
    1110:	318d0001 	andi	t5,t4,0x1
    1114:	a619025c 	sh	t9,604(s0)
    1118:	a609025e 	sh	t1,606(s0)
    111c:	15a1000c 	bne	t5,at,1150 <EnButte_Update+0xa4>
    1120:	a60b0260 	sh	t3,608(s0)
    1124:	8cae1c44 	lw	t6,7236(a1)
    1128:	24190050 	li	t9,80
    112c:	81cf0843 	lb	t7,2115(t6)
    1130:	55e00007 	bnezl	t7,1150 <EnButte_Update+0xa4>
    1134:	a619025a 	sh	t9,602(s0)
    1138:	8602025a 	lh	v0,602(s0)
    113c:	18400004 	blez	v0,1150 <EnButte_Update+0xa4>
    1140:	2458ffff 	addiu	t8,v0,-1
    1144:	10000002 	b	1150 <EnButte_Update+0xa4>
    1148:	a618025a 	sh	t8,602(s0)
    114c:	a619025a 	sh	t9,602(s0)
    1150:	afa50024 	sw	a1,36(sp)
    1154:	8e190250 	lw	t9,592(s0)
    1158:	02002025 	move	a0,s0
    115c:	0320f809 	jalr	t9
    1160:	00000000 	nop
    1164:	8e080130 	lw	t0,304(s0)
    1168:	5100001c 	beqzl	t0,11dc <EnButte_Update+0x130>
    116c:	8fbf001c 	lw	ra,28(sp)
    1170:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1174:	02002025 	move	a0,s0
    1178:	3c063f19 	lui	a2,0x3f19
    117c:	34c6999a 	ori	a2,a2,0x999a
    1180:	26040028 	addiu	a0,s0,40
    1184:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1188:	8e050264 	lw	a1,612(s0)
    118c:	3c010000 	lui	at,0x0
    1190:	c42600a8 	lwc1	$f6,168(at)
    1194:	c604008c 	lwc1	$f4,140(s0)
    1198:	8fa40024 	lw	a0,36(sp)
    119c:	3c010001 	lui	at,0x1
    11a0:	4606203c 	c.lt.s	$f4,$f6
    11a4:	34211e60 	ori	at,at,0x1e60
    11a8:	00812821 	addu	a1,a0,at
    11ac:	45020004 	bc1fl	11c0 <EnButte_Update+0x114>
    11b0:	c60800bc 	lwc1	$f8,188(s0)
    11b4:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    11b8:	2606014c 	addiu	a2,s0,332
    11bc:	c60800bc 	lwc1	$f8,188(s0)
    11c0:	c60a0054 	lwc1	$f10,84(s0)
    11c4:	02002025 	move	a0,s0
    11c8:	460a4402 	mul.s	$f16,$f8,$f10
    11cc:	44058000 	mfc1	a1,$f16
    11d0:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    11d4:	00000000 	nop
    11d8:	8fbf001c 	lw	ra,28(sp)
    11dc:	8fb00018 	lw	s0,24(sp)
    11e0:	27bd0020 	addiu	sp,sp,32
    11e4:	03e00008 	jr	ra
    11e8:	00000000 	nop

000011ec <EnButte_Draw>:
    11ec:	27bdffd8 	addiu	sp,sp,-40
    11f0:	afbf0024 	sw	ra,36(sp)
    11f4:	afb00020 	sw	s0,32(sp)
    11f8:	afa5002c 	sw	a1,44(sp)
    11fc:	908e0258 	lbu	t6,600(a0)
    1200:	00808025 	move	s0,a0
    1204:	51c0000e 	beqzl	t6,1240 <EnButte_Draw+0x54>
    1208:	8618001c 	lh	t8,28(s0)
    120c:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1210:	8ca40000 	lw	a0,0(a1)
    1214:	8e0501b0 	lw	a1,432(s0)
    1218:	8e0601cc 	lw	a2,460(s0)
    121c:	afa00014 	sw	zero,20(sp)
    1220:	afa00010 	sw	zero,16(sp)
    1224:	8fa4002c 	lw	a0,44(sp)
    1228:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    122c:	00003825 	move	a3,zero
    1230:	00002025 	move	a0,zero
    1234:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1238:	2605014c 	addiu	a1,s0,332
    123c:	8618001c 	lh	t8,28(s0)
    1240:	24010001 	li	at,1
    1244:	33190001 	andi	t9,t8,0x1
    1248:	57210009 	bnel	t9,at,1270 <EnButte_Draw+0x84>
    124c:	8fbf0024 	lw	ra,36(sp)
    1250:	8e090250 	lw	t1,592(s0)
    1254:	3c080000 	lui	t0,0x0
    1258:	25080000 	addiu	t0,t0,0
    125c:	15090003 	bne	t0,t1,126c <EnButte_Draw+0x80>
    1260:	02002025 	move	a0,s0
    1264:	0c000000 	jal	0 <EnButte_SelectFlightParams>
    1268:	8fa5002c 	lw	a1,44(sp)
    126c:	8fbf0024 	lw	ra,36(sp)
    1270:	8fb00020 	lw	s0,32(sp)
    1274:	27bd0028 	addiu	sp,sp,40
    1278:	03e00008 	jr	ra
    127c:	00000000 	nop
