
build/src/overlays/actors/ovl_En_Fish/z_en_fish.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A15280>:
       0:	c4840000 	lwc1	$f4,0(a0)
       4:	c4a60000 	lwc1	$f6,0(a1)
       8:	c4880008 	lwc1	$f8,8(a0)
       c:	c4aa0008 	lwc1	$f10,8(a1)
      10:	46062081 	sub.s	$f2,$f4,$f6
      14:	460a4301 	sub.s	$f12,$f8,$f10
      18:	46021402 	mul.s	$f16,$f2,$f2
      1c:	00000000 	nop
      20:	460c6482 	mul.s	$f18,$f12,$f12
      24:	03e00008 	jr	ra
      28:	46128000 	add.s	$f0,$f16,$f18

0000002c <func_80A152AC>:
      2c:	27bdffd8 	addiu	sp,sp,-40
      30:	afa40028 	sw	a0,40(sp)
      34:	afbf0024 	sw	ra,36(sp)
      38:	3c040402 	lui	a0,0x402
      3c:	0c000000 	jal	0 <func_80A15280>
      40:	2484909c 	addiu	a0,a0,-28516
      44:	44822000 	mtc1	v0,$f4
      48:	3c014000 	lui	at,0x4000
      4c:	44814000 	mtc1	at,$f8
      50:	468021a0 	cvt.s.w	$f6,$f4
      54:	8fa40028 	lw	a0,40(sp)
      58:	3c050402 	lui	a1,0x402
      5c:	240e0001 	li	t6,1
      60:	afae0014 	sw	t6,20(sp)
      64:	24a5909c 	addiu	a1,a1,-28516
      68:	e7a60010 	swc1	$f6,16(sp)
      6c:	3c063f80 	lui	a2,0x3f80
      70:	24070000 	li	a3,0
      74:	e7a80018 	swc1	$f8,24(sp)
      78:	0c000000 	jal	0 <func_80A15280>
      7c:	248401ac 	addiu	a0,a0,428
      80:	8fbf0024 	lw	ra,36(sp)
      84:	27bd0028 	addiu	sp,sp,40
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <func_80A15310>:
      90:	27bdffd8 	addiu	sp,sp,-40
      94:	afa40028 	sw	a0,40(sp)
      98:	afbf0024 	sw	ra,36(sp)
      9c:	3c040402 	lui	a0,0x402
      a0:	0c000000 	jal	0 <func_80A15280>
      a4:	248485fc 	addiu	a0,a0,-31236
      a8:	44822000 	mtc1	v0,$f4
      ac:	3c014000 	lui	at,0x4000
      b0:	44814000 	mtc1	at,$f8
      b4:	468021a0 	cvt.s.w	$f6,$f4
      b8:	8fa40028 	lw	a0,40(sp)
      bc:	3c050402 	lui	a1,0x402
      c0:	240e0001 	li	t6,1
      c4:	afae0014 	sw	t6,20(sp)
      c8:	24a585fc 	addiu	a1,a1,-31236
      cc:	e7a60010 	swc1	$f6,16(sp)
      d0:	3c063f80 	lui	a2,0x3f80
      d4:	24070000 	li	a3,0
      d8:	e7a80018 	swc1	$f8,24(sp)
      dc:	0c000000 	jal	0 <func_80A15280>
      e0:	248401ac 	addiu	a0,a0,428
      e4:	8fbf0024 	lw	ra,36(sp)
      e8:	27bd0028 	addiu	sp,sp,40
      ec:	03e00008 	jr	ra
      f0:	00000000 	nop

000000f4 <func_80A15374>:
      f4:	27bdffe8 	addiu	sp,sp,-24
      f8:	afbf0014 	sw	ra,20(sp)
      fc:	240e0190 	li	t6,400
     100:	a48e024a 	sh	t6,586(a0)
     104:	3c053a83 	lui	a1,0x3a83
     108:	34a5126f 	ori	a1,a1,0x126f
     10c:	0c000000 	jal	0 <func_80A15280>
     110:	afa40018 	sw	a0,24(sp)
     114:	8fa40018 	lw	a0,24(sp)
     118:	ac800134 	sw	zero,308(a0)
     11c:	8fbf0014 	lw	ra,20(sp)
     120:	27bd0018 	addiu	sp,sp,24
     124:	03e00008 	jr	ra
     128:	00000000 	nop

0000012c <func_80A153AC>:
     12c:	3c0e0000 	lui	t6,0x0
     130:	8dce0000 	lw	t6,0(t6)
     134:	27bdffe8 	addiu	sp,sp,-24
     138:	afbf0014 	sw	ra,20(sp)
     13c:	15c0001d 	bnez	t6,1b4 <func_80A153AC+0x88>
     140:	3c010000 	lui	at,0x0
     144:	3c053c23 	lui	a1,0x3c23
     148:	ac240000 	sw	a0,0(at)
     14c:	34a5d70a 	ori	a1,a1,0xd70a
     150:	0c000000 	jal	0 <func_80A15280>
     154:	afa40018 	sw	a0,24(sp)
     158:	8fa40018 	lw	a0,24(sp)
     15c:	3c014416 	lui	at,0x4416
     160:	44812000 	mtc1	at,$f4
     164:	3c014120 	lui	at,0x4120
     168:	44813000 	mtc1	at,$f6
     16c:	3c0f0000 	lui	t7,0x0
     170:	25ef0000 	addiu	t7,t7,0
     174:	24189bf0 	li	t8,-25616
     178:	24194000 	li	t9,16384
     17c:	44804000 	mtc1	zero,$f8
     180:	3c010000 	lui	at,0x0
     184:	ac8f0134 	sw	t7,308(a0)
     188:	a48000b4 	sh	zero,180(a0)
     18c:	a49800b6 	sh	t8,182(a0)
     190:	a49900b8 	sh	t9,184(a0)
     194:	e48400bc 	swc1	$f4,188(a0)
     198:	e4260000 	swc1	$f6,0(at)
     19c:	3c010000 	lui	at,0x0
     1a0:	e4280000 	swc1	$f8,0(at)
     1a4:	8c880004 	lw	t0,4(a0)
     1a8:	35090010 	ori	t1,t0,0x10
     1ac:	0c000000 	jal	0 <func_80A15280>
     1b0:	ac890004 	sw	t1,4(a0)
     1b4:	8fbf0014 	lw	ra,20(sp)
     1b8:	27bd0018 	addiu	sp,sp,24
     1bc:	03e00008 	jr	ra
     1c0:	00000000 	nop

000001c4 <func_80A15444>:
     1c4:	44800000 	mtc1	zero,$f0
     1c8:	3c010000 	lui	at,0x0
     1cc:	ac200000 	sw	zero,0(at)
     1d0:	3c010000 	lui	at,0x0
     1d4:	e4200000 	swc1	$f0,0(at)
     1d8:	3c010000 	lui	at,0x0
     1dc:	afa40000 	sw	a0,0(sp)
     1e0:	03e00008 	jr	ra
     1e4:	e4200000 	swc1	$f0,0(at)

000001e8 <EnFish_Init>:
     1e8:	27bdffc0 	addiu	sp,sp,-64
     1ec:	afbf002c 	sw	ra,44(sp)
     1f0:	afb00028 	sw	s0,40(sp)
     1f4:	afa50044 	sw	a1,68(sp)
     1f8:	848e001c 	lh	t6,28(a0)
     1fc:	3c050000 	lui	a1,0x0
     200:	00808025 	move	s0,a0
     204:	24a50000 	addiu	a1,a1,0
     208:	0c000000 	jal	0 <func_80A15280>
     20c:	a7ae003a 	sh	t6,58(sp)
     210:	3c060402 	lui	a2,0x402
     214:	3c070402 	lui	a3,0x402
     218:	260f01f0 	addiu	t7,s0,496
     21c:	2618021a 	addiu	t8,s0,538
     220:	24190007 	li	t9,7
     224:	afb90018 	sw	t9,24(sp)
     228:	afb80014 	sw	t8,20(sp)
     22c:	afaf0010 	sw	t7,16(sp)
     230:	24e7909c 	addiu	a3,a3,-28516
     234:	24c68fe0 	addiu	a2,a2,-28704
     238:	8fa40044 	lw	a0,68(sp)
     23c:	0c000000 	jal	0 <func_80A15280>
     240:	260501ac 	addiu	a1,s0,428
     244:	2605014c 	addiu	a1,s0,332
     248:	afa50034 	sw	a1,52(sp)
     24c:	0c000000 	jal	0 <func_80A15280>
     250:	8fa40044 	lw	a0,68(sp)
     254:	3c070000 	lui	a3,0x0
     258:	2608016c 	addiu	t0,s0,364
     25c:	8fa50034 	lw	a1,52(sp)
     260:	afa80010 	sw	t0,16(sp)
     264:	24e70000 	addiu	a3,a3,0
     268:	8fa40044 	lw	a0,68(sp)
     26c:	0c000000 	jal	0 <func_80A15280>
     270:	02003025 	move	a2,s0
     274:	24090032 	li	t1,50
     278:	0c000000 	jal	0 <func_80A15280>
     27c:	a20900ae 	sb	t1,174(s0)
     280:	3c010000 	lui	at,0x0
     284:	c4240000 	lwc1	$f4,0(at)
     288:	46040182 	mul.s	$f6,$f0,$f4
     28c:	4600320d 	trunc.w.s	$f8,$f6
     290:	440b4000 	mfc1	t3,$f8
     294:	0c000000 	jal	0 <func_80A15280>
     298:	a60b024c 	sh	t3,588(s0)
     29c:	3c010000 	lui	at,0x0
     2a0:	c42a0000 	lwc1	$f10,0(at)
     2a4:	87a2003a 	lh	v0,58(sp)
     2a8:	260400b4 	addiu	a0,s0,180
     2ac:	460a0402 	mul.s	$f16,$f0,$f10
     2b0:	24050000 	li	a1,0
     2b4:	3c060000 	lui	a2,0x0
     2b8:	24010001 	li	at,1
     2bc:	4600848d 	trunc.w.s	$f18,$f16
     2c0:	440d9000 	mfc1	t5,$f18
     2c4:	1440000b 	bnez	v0,2f4 <EnFish_Init+0x10c>
     2c8:	a60d024e 	sh	t5,590(s0)
     2cc:	8e0e0004 	lw	t6,4(s0)
     2d0:	24c60000 	addiu	a2,a2,0
     2d4:	3c074100 	lui	a3,0x4100
     2d8:	35cf0010 	ori	t7,t6,0x10
     2dc:	0c000000 	jal	0 <func_80A15280>
     2e0:	ae0f0004 	sw	t7,4(s0)
     2e4:	0c000000 	jal	0 <func_80A15280>
     2e8:	02002025 	move	a0,s0
     2ec:	1000000a 	b	318 <EnFish_Init+0x130>
     2f0:	8fbf002c 	lw	ra,44(sp)
     2f4:	14410005 	bne	v0,at,30c <EnFish_Init+0x124>
     2f8:	00000000 	nop
     2fc:	0c000000 	jal	0 <func_80A15280>
     300:	02002025 	move	a0,s0
     304:	10000004 	b	318 <EnFish_Init+0x130>
     308:	8fbf002c 	lw	ra,44(sp)
     30c:	0c000000 	jal	0 <func_80A15280>
     310:	02002025 	move	a0,s0
     314:	8fbf002c 	lw	ra,44(sp)
     318:	8fb00028 	lw	s0,40(sp)
     31c:	27bd0040 	addiu	sp,sp,64
     320:	03e00008 	jr	ra
     324:	00000000 	nop

00000328 <EnFish_Destroy>:
     328:	27bdffe8 	addiu	sp,sp,-24
     32c:	00803825 	move	a3,a0
     330:	afbf0014 	sw	ra,20(sp)
     334:	00a02025 	move	a0,a1
     338:	0c000000 	jal	0 <func_80A15280>
     33c:	24e5014c 	addiu	a1,a3,332
     340:	8fbf0014 	lw	ra,20(sp)
     344:	27bd0018 	addiu	sp,sp,24
     348:	03e00008 	jr	ra
     34c:	00000000 	nop

00000350 <func_80A155D0>:
     350:	27bdffe0 	addiu	sp,sp,-32
     354:	afbf0014 	sw	ra,20(sp)
     358:	00802825 	move	a1,a0
     35c:	8484024e 	lh	a0,590(a0)
     360:	0c000000 	jal	0 <func_80A15280>
     364:	afa50020 	sw	a1,32(sp)
     368:	8fa50020 	lw	a1,32(sp)
     36c:	e7a00018 	swc1	$f0,24(sp)
     370:	0c000000 	jal	0 <func_80A15280>
     374:	84a4024c 	lh	a0,588(a1)
     378:	3c01c348 	lui	at,0xc348
     37c:	44816000 	mtc1	at,$f12
     380:	3c0140a0 	lui	at,0x40a0
     384:	44813000 	mtc1	at,$f6
     388:	c7a40018 	lwc1	$f4,24(sp)
     38c:	3c014120 	lui	at,0x4120
     390:	44815000 	mtc1	at,$f10
     394:	46062202 	mul.s	$f8,$f4,$f6
     398:	8fa50020 	lw	a1,32(sp)
     39c:	3c014348 	lui	at,0x4348
     3a0:	460a0402 	mul.s	$f16,$f0,$f10
     3a4:	c4a400bc 	lwc1	$f4,188(a1)
     3a8:	46088480 	add.s	$f18,$f16,$f8
     3ac:	46122180 	add.s	$f6,$f4,$f18
     3b0:	e4a600bc 	swc1	$f6,188(a1)
     3b4:	c4a200bc 	lwc1	$f2,188(a1)
     3b8:	460c103c 	c.lt.s	$f2,$f12
     3bc:	00000000 	nop
     3c0:	45020004 	bc1fl	3d4 <func_80A155D0+0x84>
     3c4:	44816000 	mtc1	at,$f12
     3c8:	1000000b 	b	3f8 <func_80A155D0+0xa8>
     3cc:	e4ac00bc 	swc1	$f12,188(a1)
     3d0:	44816000 	mtc1	at,$f12
     3d4:	00000000 	nop
     3d8:	4602603c 	c.lt.s	$f12,$f2
     3dc:	00000000 	nop
     3e0:	45020004 	bc1fl	3f4 <func_80A155D0+0xa4>
     3e4:	46001006 	mov.s	$f0,$f2
     3e8:	10000002 	b	3f4 <func_80A155D0+0xa4>
     3ec:	46006006 	mov.s	$f0,$f12
     3f0:	46001006 	mov.s	$f0,$f2
     3f4:	e4a000bc 	swc1	$f0,188(a1)
     3f8:	8fbf0014 	lw	ra,20(sp)
     3fc:	27bd0020 	addiu	sp,sp,32
     400:	03e00008 	jr	ra
     404:	00000000 	nop

00000408 <func_80A15688>:
     408:	27bdffd0 	addiu	sp,sp,-48
     40c:	afbf0014 	sw	ra,20(sp)
     410:	3c014200 	lui	at,0x4200
     414:	44813000 	mtc1	at,$f6
     418:	c4840090 	lwc1	$f4,144(a0)
     41c:	00803025 	move	a2,a0
     420:	8ca21c44 	lw	v0,7236(a1)
     424:	4606203c 	c.lt.s	$f4,$f6
     428:	34018000 	li	at,0x8000
     42c:	4502002d 	bc1fl	4e4 <func_80A15688+0xdc>
     430:	00001025 	move	v0,zero
     434:	8484008a 	lh	a0,138(a0)
     438:	afa60030 	sw	a2,48(sp)
     43c:	afa20028 	sw	v0,40(sp)
     440:	00812021 	addu	a0,a0,at
     444:	00042400 	sll	a0,a0,0x10
     448:	0c000000 	jal	0 <func_80A15280>
     44c:	00042403 	sra	a0,a0,0x10
     450:	3c014180 	lui	at,0x4180
     454:	44814000 	mtc1	at,$f8
     458:	8fa20028 	lw	v0,40(sp)
     45c:	8fae0030 	lw	t6,48(sp)
     460:	46080282 	mul.s	$f10,$f0,$f8
     464:	c4500024 	lwc1	$f16,36(v0)
     468:	34018000 	li	at,0x8000
     46c:	46105480 	add.s	$f18,$f10,$f16
     470:	e7b2001c 	swc1	$f18,28(sp)
     474:	c4440028 	lwc1	$f4,40(v0)
     478:	e7a40020 	swc1	$f4,32(sp)
     47c:	85c4008a 	lh	a0,138(t6)
     480:	00812021 	addu	a0,a0,at
     484:	00042400 	sll	a0,a0,0x10
     488:	0c000000 	jal	0 <func_80A15280>
     48c:	00042403 	sra	a0,a0,0x10
     490:	3c014180 	lui	at,0x4180
     494:	44813000 	mtc1	at,$f6
     498:	8fa20028 	lw	v0,40(sp)
     49c:	8fa50030 	lw	a1,48(sp)
     4a0:	46060202 	mul.s	$f8,$f0,$f6
     4a4:	c44a002c 	lwc1	$f10,44(v0)
     4a8:	27a4001c 	addiu	a0,sp,28
     4ac:	24a50024 	addiu	a1,a1,36
     4b0:	460a4400 	add.s	$f16,$f8,$f10
     4b4:	0c000000 	jal	0 <func_80A15280>
     4b8:	e7b00024 	swc1	$f16,36(sp)
     4bc:	3c0143c8 	lui	at,0x43c8
     4c0:	44819000 	mtc1	at,$f18
     4c4:	00000000 	nop
     4c8:	4612003e 	c.le.s	$f0,$f18
     4cc:	00000000 	nop
     4d0:	45020004 	bc1fl	4e4 <func_80A15688+0xdc>
     4d4:	00001025 	move	v0,zero
     4d8:	10000002 	b	4e4 <func_80A15688+0xdc>
     4dc:	24020001 	li	v0,1
     4e0:	00001025 	move	v0,zero
     4e4:	8fbf0014 	lw	ra,20(sp)
     4e8:	27bd0030 	addiu	sp,sp,48
     4ec:	03e00008 	jr	ra
     4f0:	00000000 	nop

000004f4 <func_80A15774>:
     4f4:	afa50004 	sw	a1,4(sp)
     4f8:	3c014270 	lui	at,0x4270
     4fc:	44813000 	mtc1	at,$f6
     500:	c4840090 	lwc1	$f4,144(a0)
     504:	00001025 	move	v0,zero
     508:	4606203c 	c.lt.s	$f4,$f6
     50c:	00000000 	nop
     510:	45000002 	bc1f	51c <func_80A15774+0x28>
     514:	00000000 	nop
     518:	24020001 	li	v0,1
     51c:	03e00008 	jr	ra
     520:	00000000 	nop

00000524 <func_80A157A4>:
     524:	44800000 	mtc1	zero,$f0
     528:	27bdffe8 	addiu	sp,sp,-24
     52c:	afbf0014 	sw	ra,20(sp)
     530:	00803025 	move	a2,a0
     534:	e480006c 	swc1	$f0,108(a0)
     538:	e4800070 	swc1	$f0,112(a0)
     53c:	afa60018 	sw	a2,24(sp)
     540:	24040005 	li	a0,5
     544:	0c000000 	jal	0 <func_80A15280>
     548:	24050023 	li	a1,35
     54c:	8fa40018 	lw	a0,24(sp)
     550:	a4820248 	sh	v0,584(a0)
     554:	0c000000 	jal	0 <func_80A15280>
     558:	ac800250 	sw	zero,592(a0)
     55c:	8fa60018 	lw	a2,24(sp)
     560:	3c0e0000 	lui	t6,0x0
     564:	25ce0000 	addiu	t6,t6,0
     568:	acce0244 	sw	t6,580(a2)
     56c:	8fbf0014 	lw	ra,20(sp)
     570:	27bd0018 	addiu	sp,sp,24
     574:	03e00008 	jr	ra
     578:	00000000 	nop

0000057c <func_80A157FC>:
     57c:	27bdffd8 	addiu	sp,sp,-40
     580:	afbf0024 	sw	ra,36(sp)
     584:	afb00020 	sw	s0,32(sp)
     588:	00808025 	move	s0,a0
     58c:	0c000000 	jal	0 <func_80A15280>
     590:	afa5002c 	sw	a1,44(sp)
     594:	44800000 	mtc1	zero,$f0
     598:	3c063d4c 	lui	a2,0x3d4c
     59c:	3c073e99 	lui	a3,0x3e99
     5a0:	44050000 	mfc1	a1,$f0
     5a4:	34e7999a 	ori	a3,a3,0x999a
     5a8:	34c6cccd 	ori	a2,a2,0xcccd
     5ac:	26040068 	addiu	a0,s0,104
     5b0:	0c000000 	jal	0 <func_80A15280>
     5b4:	e7a00010 	swc1	$f0,16(sp)
     5b8:	3c014000 	lui	at,0x4000
     5bc:	44811000 	mtc1	at,$f2
     5c0:	3c010000 	lui	at,0x0
     5c4:	c4260000 	lwc1	$f6,0(at)
     5c8:	c6040068 	lwc1	$f4,104(s0)
     5cc:	3c010000 	lui	at,0x0
     5d0:	c42a0000 	lwc1	$f10,0(at)
     5d4:	46062202 	mul.s	$f8,$f4,$f6
     5d8:	460a4000 	add.s	$f0,$f8,$f10
     5dc:	4600103c 	c.lt.s	$f2,$f0
     5e0:	00000000 	nop
     5e4:	45020004 	bc1fl	5f8 <func_80A157FC+0x7c>
     5e8:	e60001c8 	swc1	$f0,456(s0)
     5ec:	10000002 	b	5f8 <func_80A157FC+0x7c>
     5f0:	e60201c8 	swc1	$f2,456(s0)
     5f4:	e60001c8 	swc1	$f0,456(s0)
     5f8:	0c000000 	jal	0 <func_80A15280>
     5fc:	260401ac 	addiu	a0,s0,428
     600:	860f0248 	lh	t7,584(s0)
     604:	860e0032 	lh	t6,50(s0)
     608:	1de00005 	bgtz	t7,620 <func_80A157FC+0xa4>
     60c:	a60e00b6 	sh	t6,182(s0)
     610:	0c000000 	jal	0 <func_80A15280>
     614:	02002025 	move	a0,s0
     618:	10000010 	b	65c <func_80A157FC+0xe0>
     61c:	8fbf0024 	lw	ra,36(sp)
     620:	8e18011c 	lw	t8,284(s0)
     624:	02002025 	move	a0,s0
     628:	16180005 	bne	s0,t8,640 <func_80A157FC+0xc4>
     62c:	00000000 	nop
     630:	0c000000 	jal	0 <func_80A15280>
     634:	02002025 	move	a0,s0
     638:	10000008 	b	65c <func_80A157FC+0xe0>
     63c:	8fbf0024 	lw	ra,36(sp)
     640:	0c000000 	jal	0 <func_80A15280>
     644:	8fa5002c 	lw	a1,44(sp)
     648:	50400004 	beqzl	v0,65c <func_80A157FC+0xe0>
     64c:	8fbf0024 	lw	ra,36(sp)
     650:	0c000000 	jal	0 <func_80A15280>
     654:	02002025 	move	a0,s0
     658:	8fbf0024 	lw	ra,36(sp)
     65c:	8fb00020 	lw	s0,32(sp)
     660:	27bd0028 	addiu	sp,sp,40
     664:	03e00008 	jr	ra
     668:	00000000 	nop

0000066c <func_80A158EC>:
     66c:	44800000 	mtc1	zero,$f0
     670:	27bdffe8 	addiu	sp,sp,-24
     674:	afbf0014 	sw	ra,20(sp)
     678:	00803025 	move	a2,a0
     67c:	e480006c 	swc1	$f0,108(a0)
     680:	e4800070 	swc1	$f0,112(a0)
     684:	afa60018 	sw	a2,24(sp)
     688:	2404000f 	li	a0,15
     68c:	0c000000 	jal	0 <func_80A15280>
     690:	2405002d 	li	a1,45
     694:	8fa40018 	lw	a0,24(sp)
     698:	a4820248 	sh	v0,584(a0)
     69c:	0c000000 	jal	0 <func_80A15280>
     6a0:	ac800250 	sw	zero,592(a0)
     6a4:	8fa60018 	lw	a2,24(sp)
     6a8:	3c0e0000 	lui	t6,0x0
     6ac:	25ce0000 	addiu	t6,t6,0
     6b0:	acce0244 	sw	t6,580(a2)
     6b4:	8fbf0014 	lw	ra,20(sp)
     6b8:	27bd0018 	addiu	sp,sp,24
     6bc:	03e00008 	jr	ra
     6c0:	00000000 	nop

000006c4 <func_80A15944>:
     6c4:	27bdffc8 	addiu	sp,sp,-56
     6c8:	afbf0024 	sw	ra,36(sp)
     6cc:	afb00020 	sw	s0,32(sp)
     6d0:	00808025 	move	s0,a0
     6d4:	0c000000 	jal	0 <func_80A15280>
     6d8:	afa5003c 	sw	a1,60(sp)
     6dc:	44802000 	mtc1	zero,$f4
     6e0:	3c053fe6 	lui	a1,0x3fe6
     6e4:	3c063da3 	lui	a2,0x3da3
     6e8:	3c073ecc 	lui	a3,0x3ecc
     6ec:	34e7cccd 	ori	a3,a3,0xcccd
     6f0:	34c6d70a 	ori	a2,a2,0xd70a
     6f4:	34a56666 	ori	a1,a1,0x6666
     6f8:	26040068 	addiu	a0,s0,104
     6fc:	0c000000 	jal	0 <func_80A15280>
     700:	e7a40010 	swc1	$f4,16(sp)
     704:	26040024 	addiu	a0,s0,36
     708:	26050008 	addiu	a1,s0,8
     70c:	afa50028 	sw	a1,40(sp)
     710:	0c000000 	jal	0 <func_80A15280>
     714:	afa4002c 	sw	a0,44(sp)
     718:	3c0145c8 	lui	at,0x45c8
     71c:	44813000 	mtc1	at,$f6
     720:	8fa4002c 	lw	a0,44(sp)
     724:	8fa50028 	lw	a1,40(sp)
     728:	4600303c 	c.lt.s	$f6,$f0
     72c:	00000000 	nop
     730:	45010005 	bc1t	748 <func_80A15944+0x84>
     734:	00000000 	nop
     738:	860e0248 	lh	t6,584(s0)
     73c:	29c10004 	slti	at,t6,4
     740:	5020000b 	beqzl	at,770 <func_80A15944+0xac>
     744:	8e02011c 	lw	v0,284(s0)
     748:	0c000000 	jal	0 <func_80A15280>
     74c:	00000000 	nop
     750:	00022c00 	sll	a1,v0,0x10
     754:	00052c03 	sra	a1,a1,0x10
     758:	26040032 	addiu	a0,s0,50
     75c:	0c000000 	jal	0 <func_80A15280>
     760:	24060bb8 	li	a2,3000
     764:	1000000e 	b	7a0 <func_80A15944+0xdc>
     768:	3c014080 	lui	at,0x4080
     76c:	8e02011c 	lw	v0,284(s0)
     770:	5040000b 	beqzl	v0,7a0 <func_80A15944+0xdc>
     774:	3c014080 	lui	at,0x4080
     778:	52020009 	beql	s0,v0,7a0 <func_80A15944+0xdc>
     77c:	3c014080 	lui	at,0x4080
     780:	0c000000 	jal	0 <func_80A15280>
     784:	24450024 	addiu	a1,v0,36
     788:	00022c00 	sll	a1,v0,0x10
     78c:	00052c03 	sra	a1,a1,0x10
     790:	26040032 	addiu	a0,s0,50
     794:	0c000000 	jal	0 <func_80A15280>
     798:	24060bb8 	li	a2,3000
     79c:	3c014080 	lui	at,0x4080
     7a0:	44811000 	mtc1	at,$f2
     7a4:	3c013fc0 	lui	at,0x3fc0
     7a8:	44815000 	mtc1	at,$f10
     7ac:	c6080068 	lwc1	$f8,104(s0)
     7b0:	860f0032 	lh	t7,50(s0)
     7b4:	3c010000 	lui	at,0x0
     7b8:	460a4402 	mul.s	$f16,$f8,$f10
     7bc:	a60f00b6 	sh	t7,182(s0)
     7c0:	c4320000 	lwc1	$f18,0(at)
     7c4:	46128000 	add.s	$f0,$f16,$f18
     7c8:	4600103c 	c.lt.s	$f2,$f0
     7cc:	00000000 	nop
     7d0:	45020004 	bc1fl	7e4 <func_80A15944+0x120>
     7d4:	e60001c8 	swc1	$f0,456(s0)
     7d8:	10000002 	b	7e4 <func_80A15944+0x120>
     7dc:	e60201c8 	swc1	$f2,456(s0)
     7e0:	e60001c8 	swc1	$f0,456(s0)
     7e4:	0c000000 	jal	0 <func_80A15280>
     7e8:	260401ac 	addiu	a0,s0,428
     7ec:	86180248 	lh	t8,584(s0)
     7f0:	5f000006 	bgtzl	t8,80c <func_80A15944+0x148>
     7f4:	8e19011c 	lw	t9,284(s0)
     7f8:	0c000000 	jal	0 <func_80A15280>
     7fc:	02002025 	move	a0,s0
     800:	10000010 	b	844 <func_80A15944+0x180>
     804:	8fbf0024 	lw	ra,36(sp)
     808:	8e19011c 	lw	t9,284(s0)
     80c:	02002025 	move	a0,s0
     810:	16190005 	bne	s0,t9,828 <func_80A15944+0x164>
     814:	00000000 	nop
     818:	0c000000 	jal	0 <func_80A15280>
     81c:	02002025 	move	a0,s0
     820:	10000008 	b	844 <func_80A15944+0x180>
     824:	8fbf0024 	lw	ra,36(sp)
     828:	0c000000 	jal	0 <func_80A15280>
     82c:	8fa5003c 	lw	a1,60(sp)
     830:	50400004 	beqzl	v0,844 <func_80A15944+0x180>
     834:	8fbf0024 	lw	ra,36(sp)
     838:	0c000000 	jal	0 <func_80A15280>
     83c:	02002025 	move	a0,s0
     840:	8fbf0024 	lw	ra,36(sp)
     844:	8fb00020 	lw	s0,32(sp)
     848:	27bd0038 	addiu	sp,sp,56
     84c:	03e00008 	jr	ra
     850:	00000000 	nop

00000854 <func_80A15AD4>:
     854:	44800000 	mtc1	zero,$f0
     858:	27bdffe8 	addiu	sp,sp,-24
     85c:	afbf0014 	sw	ra,20(sp)
     860:	00803025 	move	a2,a0
     864:	e480006c 	swc1	$f0,108(a0)
     868:	e4800070 	swc1	$f0,112(a0)
     86c:	afa60018 	sw	a2,24(sp)
     870:	2404000a 	li	a0,10
     874:	0c000000 	jal	0 <func_80A15280>
     878:	24050028 	li	a1,40
     87c:	8fa40018 	lw	a0,24(sp)
     880:	a4820248 	sh	v0,584(a0)
     884:	0c000000 	jal	0 <func_80A15280>
     888:	ac800250 	sw	zero,592(a0)
     88c:	8fa60018 	lw	a2,24(sp)
     890:	3c0e0000 	lui	t6,0x0
     894:	25ce0000 	addiu	t6,t6,0
     898:	acce0244 	sw	t6,580(a2)
     89c:	8fbf0014 	lw	ra,20(sp)
     8a0:	27bd0018 	addiu	sp,sp,24
     8a4:	03e00008 	jr	ra
     8a8:	00000000 	nop

000008ac <func_80A15B2C>:
     8ac:	27bdffc0 	addiu	sp,sp,-64
     8b0:	afbf0024 	sw	ra,36(sp)
     8b4:	afb00020 	sw	s0,32(sp)
     8b8:	00808025 	move	s0,a0
     8bc:	0c000000 	jal	0 <func_80A15280>
     8c0:	afa50044 	sw	a1,68(sp)
     8c4:	02002025 	move	a0,s0
     8c8:	0c000000 	jal	0 <func_80A15280>
     8cc:	8fa50044 	lw	a1,68(sp)
     8d0:	44802000 	mtc1	zero,$f4
     8d4:	3c054086 	lui	a1,0x4086
     8d8:	3c063da3 	lui	a2,0x3da3
     8dc:	3c073fb3 	lui	a3,0x3fb3
     8e0:	a7a20034 	sh	v0,52(sp)
     8e4:	34e73333 	ori	a3,a3,0x3333
     8e8:	34c6d70a 	ori	a2,a2,0xd70a
     8ec:	34a56666 	ori	a1,a1,0x6666
     8f0:	26040068 	addiu	a0,s0,104
     8f4:	0c000000 	jal	0 <func_80A15280>
     8f8:	e7a40010 	swc1	$f4,16(sp)
     8fc:	26040024 	addiu	a0,s0,36
     900:	26050008 	addiu	a1,s0,8
     904:	afa5002c 	sw	a1,44(sp)
     908:	0c000000 	jal	0 <func_80A15280>
     90c:	afa40030 	sw	a0,48(sp)
     910:	3c0146c8 	lui	at,0x46c8
     914:	44813000 	mtc1	at,$f6
     918:	8fa40030 	lw	a0,48(sp)
     91c:	8fa5002c 	lw	a1,44(sp)
     920:	4600303c 	c.lt.s	$f6,$f0
     924:	00000000 	nop
     928:	4502000b 	bc1fl	958 <func_80A15B2C+0xac>
     92c:	8e02011c 	lw	v0,284(s0)
     930:	0c000000 	jal	0 <func_80A15280>
     934:	00000000 	nop
     938:	00022c00 	sll	a1,v0,0x10
     93c:	00052c03 	sra	a1,a1,0x10
     940:	26040032 	addiu	a0,s0,50
     944:	0c000000 	jal	0 <func_80A15280>
     948:	24060bb8 	li	a2,3000
     94c:	1000002b 	b	9fc <func_80A15B2C+0x150>
     950:	3c014080 	lui	at,0x4080
     954:	8e02011c 	lw	v0,284(s0)
     958:	87ae0034 	lh	t6,52(sp)
     95c:	1040000c 	beqz	v0,990 <func_80A15B2C+0xe4>
     960:	00000000 	nop
     964:	1202000a 	beq	s0,v0,990 <func_80A15B2C+0xe4>
     968:	00000000 	nop
     96c:	0c000000 	jal	0 <func_80A15280>
     970:	24450024 	addiu	a1,v0,36
     974:	00022c00 	sll	a1,v0,0x10
     978:	00052c03 	sra	a1,a1,0x10
     97c:	26040032 	addiu	a0,s0,50
     980:	0c000000 	jal	0 <func_80A15280>
     984:	240607d0 	li	a2,2000
     988:	1000001c 	b	9fc <func_80A15B2C+0x150>
     98c:	3c014080 	lui	at,0x4080
     990:	11c00019 	beqz	t6,9f8 <func_80A15B2C+0x14c>
     994:	8fa30044 	lw	v1,68(sp)
     998:	8605008a 	lh	a1,138(s0)
     99c:	8462009e 	lh	v0,158(v1)
     9a0:	34018000 	li	at,0x8000
     9a4:	00a12821 	addu	a1,a1,at
     9a8:	00052c00 	sll	a1,a1,0x10
     9ac:	304f0010 	andi	t7,v0,0x10
     9b0:	11e00008 	beqz	t7,9d4 <func_80A15B2C+0x128>
     9b4:	00052c03 	sra	a1,a1,0x10
     9b8:	30580020 	andi	t8,v0,0x20
     9bc:	5300000c 	beqzl	t8,9f0 <func_80A15B2C+0x144>
     9c0:	26040032 	addiu	a0,s0,50
     9c4:	24a52000 	addiu	a1,a1,8192
     9c8:	00052c00 	sll	a1,a1,0x10
     9cc:	10000007 	b	9ec <func_80A15B2C+0x140>
     9d0:	00052c03 	sra	a1,a1,0x10
     9d4:	30590020 	andi	t9,v0,0x20
     9d8:	53200005 	beqzl	t9,9f0 <func_80A15B2C+0x144>
     9dc:	26040032 	addiu	a0,s0,50
     9e0:	24a5e000 	addiu	a1,a1,-8192
     9e4:	00052c00 	sll	a1,a1,0x10
     9e8:	00052c03 	sra	a1,a1,0x10
     9ec:	26040032 	addiu	a0,s0,50
     9f0:	0c000000 	jal	0 <func_80A15280>
     9f4:	240607d0 	li	a2,2000
     9f8:	3c014080 	lui	at,0x4080
     9fc:	44811000 	mtc1	at,$f2
     a00:	3c013fc0 	lui	at,0x3fc0
     a04:	44815000 	mtc1	at,$f10
     a08:	c6080068 	lwc1	$f8,104(s0)
     a0c:	86080032 	lh	t0,50(s0)
     a10:	3c010000 	lui	at,0x0
     a14:	460a4402 	mul.s	$f16,$f8,$f10
     a18:	a60800b6 	sh	t0,182(s0)
     a1c:	c4320000 	lwc1	$f18,0(at)
     a20:	46128000 	add.s	$f0,$f16,$f18
     a24:	4600103c 	c.lt.s	$f2,$f0
     a28:	00000000 	nop
     a2c:	45020004 	bc1fl	a40 <func_80A15B2C+0x194>
     a30:	e60001c8 	swc1	$f0,456(s0)
     a34:	10000002 	b	a40 <func_80A15B2C+0x194>
     a38:	e60201c8 	swc1	$f2,456(s0)
     a3c:	e60001c8 	swc1	$f0,456(s0)
     a40:	0c000000 	jal	0 <func_80A15280>
     a44:	260401ac 	addiu	a0,s0,428
     a48:	86090248 	lh	t1,584(s0)
     a4c:	87aa0034 	lh	t2,52(sp)
     a50:	19200003 	blez	t1,a60 <func_80A15B2C+0x1b4>
     a54:	00000000 	nop
     a58:	55400006 	bnezl	t2,a74 <func_80A15B2C+0x1c8>
     a5c:	8e0b011c 	lw	t3,284(s0)
     a60:	0c000000 	jal	0 <func_80A15280>
     a64:	02002025 	move	a0,s0
     a68:	10000007 	b	a88 <func_80A15B2C+0x1dc>
     a6c:	8fbf0024 	lw	ra,36(sp)
     a70:	8e0b011c 	lw	t3,284(s0)
     a74:	560b0004 	bnel	s0,t3,a88 <func_80A15B2C+0x1dc>
     a78:	8fbf0024 	lw	ra,36(sp)
     a7c:	0c000000 	jal	0 <func_80A15280>
     a80:	02002025 	move	a0,s0
     a84:	8fbf0024 	lw	ra,36(sp)
     a88:	8fb00020 	lw	s0,32(sp)
     a8c:	27bd0040 	addiu	sp,sp,64
     a90:	03e00008 	jr	ra
     a94:	00000000 	nop

00000a98 <func_80A15D18>:
     a98:	44800000 	mtc1	zero,$f0
     a9c:	27bdffe8 	addiu	sp,sp,-24
     aa0:	afbf0014 	sw	ra,20(sp)
     aa4:	e480006c 	swc1	$f0,108(a0)
     aa8:	e4800070 	swc1	$f0,112(a0)
     aac:	0c000000 	jal	0 <func_80A15280>
     ab0:	afa40018 	sw	a0,24(sp)
     ab4:	2404000a 	li	a0,10
     ab8:	0c000000 	jal	0 <func_80A15280>
     abc:	24050028 	li	a1,40
     ac0:	8fa60018 	lw	a2,24(sp)
     ac4:	3c0e0000 	lui	t6,0x0
     ac8:	25ce0000 	addiu	t6,t6,0
     acc:	a4c20248 	sh	v0,584(a2)
     ad0:	acc00250 	sw	zero,592(a2)
     ad4:	acce0244 	sw	t6,580(a2)
     ad8:	8fbf0014 	lw	ra,20(sp)
     adc:	27bd0018 	addiu	sp,sp,24
     ae0:	03e00008 	jr	ra
     ae4:	00000000 	nop

00000ae8 <func_80A15D68>:
     ae8:	27bdffb0 	addiu	sp,sp,-80
     aec:	afbf0024 	sw	ra,36(sp)
     af0:	afb00020 	sw	s0,32(sp)
     af4:	afa50054 	sw	a1,84(sp)
     af8:	8caf1c44 	lw	t7,7236(a1)
     afc:	00808025 	move	s0,a0
     b00:	0c000000 	jal	0 <func_80A15280>
     b04:	afaf0048 	sw	t7,72(sp)
     b08:	44802000 	mtc1	zero,$f4
     b0c:	3c053fe6 	lui	a1,0x3fe6
     b10:	3c063dcc 	lui	a2,0x3dcc
     b14:	34c6cccd 	ori	a2,a2,0xcccd
     b18:	34a56666 	ori	a1,a1,0x6666
     b1c:	26040068 	addiu	a0,s0,104
     b20:	3c073f00 	lui	a3,0x3f00
     b24:	0c000000 	jal	0 <func_80A15280>
     b28:	e7a40010 	swc1	$f4,16(sp)
     b2c:	26040024 	addiu	a0,s0,36
     b30:	26050008 	addiu	a1,s0,8
     b34:	afa5002c 	sw	a1,44(sp)
     b38:	0c000000 	jal	0 <func_80A15280>
     b3c:	afa40030 	sw	a0,48(sp)
     b40:	3c0145c8 	lui	at,0x45c8
     b44:	44813000 	mtc1	at,$f6
     b48:	8fa5002c 	lw	a1,44(sp)
     b4c:	8fb80054 	lw	t8,84(sp)
     b50:	4600303c 	c.lt.s	$f6,$f0
     b54:	00000000 	nop
     b58:	4502000b 	bc1fl	b88 <func_80A15D68+0xa0>
     b5c:	8719009e 	lh	t9,158(t8)
     b60:	0c000000 	jal	0 <func_80A15280>
     b64:	8fa40030 	lw	a0,48(sp)
     b68:	00022c00 	sll	a1,v0,0x10
     b6c:	00052c03 	sra	a1,a1,0x10
     b70:	26040032 	addiu	a0,s0,50
     b74:	0c000000 	jal	0 <func_80A15280>
     b78:	24060bb8 	li	a2,3000
     b7c:	1000002c 	b	c30 <func_80A15D68+0x148>
     b80:	3c014080 	lui	at,0x4080
     b84:	8719009e 	lh	t9,158(t8)
     b88:	33280040 	andi	t0,t9,0x40
     b8c:	51000008 	beqzl	t0,bb0 <func_80A15D68+0xc8>
     b90:	8604008a 	lh	a0,138(s0)
     b94:	8604008a 	lh	a0,138(s0)
     b98:	34019000 	li	at,0x9000
     b9c:	00812021 	addu	a0,a0,at
     ba0:	00042400 	sll	a0,a0,0x10
     ba4:	10000005 	b	bbc <func_80A15D68+0xd4>
     ba8:	00042403 	sra	a0,a0,0x10
     bac:	8604008a 	lh	a0,138(s0)
     bb0:	24847000 	addiu	a0,a0,28672
     bb4:	00042400 	sll	a0,a0,0x10
     bb8:	00042403 	sra	a0,a0,0x10
     bbc:	0c000000 	jal	0 <func_80A15280>
     bc0:	a7a40034 	sh	a0,52(sp)
     bc4:	3c0141a0 	lui	at,0x41a0
     bc8:	44814000 	mtc1	at,$f8
     bcc:	8fa20048 	lw	v0,72(sp)
     bd0:	87a40034 	lh	a0,52(sp)
     bd4:	46080282 	mul.s	$f10,$f0,$f8
     bd8:	c4500024 	lwc1	$f16,36(v0)
     bdc:	46105480 	add.s	$f18,$f10,$f16
     be0:	e7b20038 	swc1	$f18,56(sp)
     be4:	c4440028 	lwc1	$f4,40(v0)
     be8:	0c000000 	jal	0 <func_80A15280>
     bec:	e7a4003c 	swc1	$f4,60(sp)
     bf0:	3c0141a0 	lui	at,0x41a0
     bf4:	44813000 	mtc1	at,$f6
     bf8:	8fa90048 	lw	t1,72(sp)
     bfc:	8fa40030 	lw	a0,48(sp)
     c00:	46060202 	mul.s	$f8,$f0,$f6
     c04:	c52a002c 	lwc1	$f10,44(t1)
     c08:	27a50038 	addiu	a1,sp,56
     c0c:	460a4400 	add.s	$f16,$f8,$f10
     c10:	0c000000 	jal	0 <func_80A15280>
     c14:	e7b00040 	swc1	$f16,64(sp)
     c18:	00022c00 	sll	a1,v0,0x10
     c1c:	00052c03 	sra	a1,a1,0x10
     c20:	26040032 	addiu	a0,s0,50
     c24:	0c000000 	jal	0 <func_80A15280>
     c28:	24060bb8 	li	a2,3000
     c2c:	3c014080 	lui	at,0x4080
     c30:	44811000 	mtc1	at,$f2
     c34:	3c013fc0 	lui	at,0x3fc0
     c38:	44812000 	mtc1	at,$f4
     c3c:	c6120068 	lwc1	$f18,104(s0)
     c40:	860a0032 	lh	t2,50(s0)
     c44:	3c010000 	lui	at,0x0
     c48:	46049182 	mul.s	$f6,$f18,$f4
     c4c:	a60a00b6 	sh	t2,182(s0)
     c50:	c4280000 	lwc1	$f8,0(at)
     c54:	46083000 	add.s	$f0,$f6,$f8
     c58:	4600103c 	c.lt.s	$f2,$f0
     c5c:	00000000 	nop
     c60:	45020004 	bc1fl	c74 <func_80A15D68+0x18c>
     c64:	e60001c8 	swc1	$f0,456(s0)
     c68:	10000002 	b	c74 <func_80A15D68+0x18c>
     c6c:	e60201c8 	swc1	$f2,456(s0)
     c70:	e60001c8 	swc1	$f0,456(s0)
     c74:	0c000000 	jal	0 <func_80A15280>
     c78:	260401ac 	addiu	a0,s0,428
     c7c:	860b0248 	lh	t3,584(s0)
     c80:	5d600004 	bgtzl	t3,c94 <func_80A15D68+0x1ac>
     c84:	8fbf0024 	lw	ra,36(sp)
     c88:	0c000000 	jal	0 <func_80A15280>
     c8c:	02002025 	move	a0,s0
     c90:	8fbf0024 	lw	ra,36(sp)
     c94:	8fb00020 	lw	s0,32(sp)
     c98:	27bd0050 	addiu	sp,sp,80
     c9c:	03e00008 	jr	ra
     ca0:	00000000 	nop

00000ca4 <func_80A15F24>:
     ca4:	3c01bf80 	lui	at,0xbf80
     ca8:	44812000 	mtc1	at,$f4
     cac:	27bdffe8 	addiu	sp,sp,-24
     cb0:	3c01c120 	lui	at,0xc120
     cb4:	44813000 	mtc1	at,$f6
     cb8:	44804000 	mtc1	zero,$f8
     cbc:	afbf0014 	sw	ra,20(sp)
     cc0:	e484006c 	swc1	$f4,108(a0)
     cc4:	e4860070 	swc1	$f6,112(a0)
     cc8:	e48800bc 	swc1	$f8,188(a0)
     ccc:	0c000000 	jal	0 <func_80A15280>
     cd0:	afa40018 	sw	a0,24(sp)
     cd4:	8fa40018 	lw	a0,24(sp)
     cd8:	3c0f0000 	lui	t7,0x0
     cdc:	240e0005 	li	t6,5
     ce0:	25ef0000 	addiu	t7,t7,0
     ce4:	2418012c 	li	t8,300
     ce8:	ac8e0250 	sw	t6,592(a0)
     cec:	ac8f0244 	sw	t7,580(a0)
     cf0:	a4980248 	sh	t8,584(a0)
     cf4:	8fbf0014 	lw	ra,20(sp)
     cf8:	27bd0018 	addiu	sp,sp,24
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_80A15F84>:
     d04:	3c010000 	lui	at,0x0
     d08:	c4220000 	lwc1	$f2,0(at)
     d0c:	44800000 	mtc1	zero,$f0
     d10:	27bdffd8 	addiu	sp,sp,-40
     d14:	afb00020 	sw	s0,32(sp)
     d18:	afa5002c 	sw	a1,44(sp)
     d1c:	00808025 	move	s0,a0
     d20:	afbf0024 	sw	ra,36(sp)
     d24:	44061000 	mfc1	a2,$f2
     d28:	44071000 	mfc1	a3,$f2
     d2c:	44050000 	mfc1	a1,$f0
     d30:	24840068 	addiu	a0,a0,104
     d34:	0c000000 	jal	0 <func_80A15280>
     d38:	e7a00010 	swc1	$f0,16(sp)
     d3c:	26040030 	addiu	a0,s0,48
     d40:	24054000 	li	a1,16384
     d44:	0c000000 	jal	0 <func_80A15280>
     d48:	24060064 	li	a2,100
     d4c:	26040034 	addiu	a0,s0,52
     d50:	2405c000 	li	a1,-16384
     d54:	0c000000 	jal	0 <func_80A15280>
     d58:	24060064 	li	a2,100
     d5c:	860e0030 	lh	t6,48(s0)
     d60:	860f0032 	lh	t7,50(s0)
     d64:	86180034 	lh	t8,52(s0)
     d68:	260401ac 	addiu	a0,s0,428
     d6c:	a60e00b4 	sh	t6,180(s0)
     d70:	a60f00b6 	sh	t7,182(s0)
     d74:	0c000000 	jal	0 <func_80A15280>
     d78:	a61800b8 	sh	t8,184(s0)
     d7c:	96020088 	lhu	v0,136(s0)
     d80:	24080190 	li	t0,400
     d84:	02002025 	move	a0,s0
     d88:	30590001 	andi	t9,v0,0x1
     d8c:	13200005 	beqz	t9,da4 <func_80A15F84+0xa0>
     d90:	30490020 	andi	t1,v0,0x20
     d94:	0c000000 	jal	0 <func_80A15280>
     d98:	a6080248 	sh	t0,584(s0)
     d9c:	10000023 	b	e2c <func_80A15F84+0x128>
     da0:	8fbf0024 	lw	ra,36(sp)
     da4:	51200006 	beqzl	t1,dc0 <func_80A15F84+0xbc>
     da8:	860a0248 	lh	t2,584(s0)
     dac:	0c000000 	jal	0 <func_80A15280>
     db0:	02002025 	move	a0,s0
     db4:	1000001d 	b	e2c <func_80A15F84+0x128>
     db8:	8fbf0024 	lw	ra,36(sp)
     dbc:	860a0248 	lh	t2,584(s0)
     dc0:	5d40001a 	bgtzl	t2,e2c <func_80A15F84+0x128>
     dc4:	8fbf0024 	lw	ra,36(sp)
     dc8:	860b001c 	lh	t3,28(s0)
     dcc:	3c010000 	lui	at,0x0
     dd0:	55600016 	bnezl	t3,e2c <func_80A15F84+0x128>
     dd4:	8fbf0024 	lw	ra,36(sp)
     dd8:	c6040080 	lwc1	$f4,128(s0)
     ddc:	c4260000 	lwc1	$f6,0(at)
     de0:	3c040000 	lui	a0,0x0
     de4:	4606203c 	c.lt.s	$f4,$f6
     de8:	00000000 	nop
     dec:	4502000f 	bc1fl	e2c <func_80A15F84+0x128>
     df0:	8fbf0024 	lw	ra,36(sp)
     df4:	0c000000 	jal	0 <func_80A15280>
     df8:	24840000 	addiu	a0,a0,0
     dfc:	3c040000 	lui	a0,0x0
     e00:	3c050000 	lui	a1,0x0
     e04:	24a50000 	addiu	a1,a1,0
     e08:	24840000 	addiu	a0,a0,0
     e0c:	0c000000 	jal	0 <func_80A15280>
     e10:	24060336 	li	a2,822
     e14:	3c040000 	lui	a0,0x0
     e18:	0c000000 	jal	0 <func_80A15280>
     e1c:	24840000 	addiu	a0,a0,0
     e20:	0c000000 	jal	0 <func_80A15280>
     e24:	02002025 	move	a0,s0
     e28:	8fbf0024 	lw	ra,36(sp)
     e2c:	8fb00020 	lw	s0,32(sp)
     e30:	27bd0028 	addiu	sp,sp,40
     e34:	03e00008 	jr	ra
     e38:	00000000 	nop

00000e3c <func_80A160BC>:
     e3c:	3c01bf80 	lui	at,0xbf80
     e40:	44812000 	mtc1	at,$f4
     e44:	27bdffd0 	addiu	sp,sp,-48
     e48:	3c01c120 	lui	at,0xc120
     e4c:	44813000 	mtc1	at,$f6
     e50:	afbf001c 	sw	ra,28(sp)
     e54:	afb00018 	sw	s0,24(sp)
     e58:	00808025 	move	s0,a0
     e5c:	e484006c 	swc1	$f4,108(a0)
     e60:	0c000000 	jal	0 <func_80A15280>
     e64:	e4860070 	swc1	$f6,112(a0)
     e68:	3c010000 	lui	at,0x0
     e6c:	c4280000 	lwc1	$f8,0(at)
     e70:	3c010000 	lui	at,0x0
     e74:	4608003c 	c.lt.s	$f0,$f8
     e78:	00000000 	nop
     e7c:	4500000c 	bc1f	eb0 <func_80A160BC+0x74>
     e80:	00000000 	nop
     e84:	0c000000 	jal	0 <func_80A15280>
     e88:	00000000 	nop
     e8c:	3c014040 	lui	at,0x4040
     e90:	44815000 	mtc1	at,$f10
     e94:	3c014020 	lui	at,0x4020
     e98:	44819000 	mtc1	at,$f18
     e9c:	460a0402 	mul.s	$f16,$f0,$f10
     ea0:	24020001 	li	v0,1
     ea4:	46128100 	add.s	$f4,$f16,$f18
     ea8:	1000001d 	b	f20 <func_80A160BC+0xe4>
     eac:	e6040060 	swc1	$f4,96(s0)
     eb0:	c4260000 	lwc1	$f6,0(at)
     eb4:	4606003c 	c.lt.s	$f0,$f6
     eb8:	00000000 	nop
     ebc:	4502000d 	bc1fl	ef4 <func_80A160BC+0xb8>
     ec0:	44802000 	mtc1	zero,$f4
     ec4:	0c000000 	jal	0 <func_80A15280>
     ec8:	00000000 	nop
     ecc:	3c010000 	lui	at,0x0
     ed0:	c4280000 	lwc1	$f8,0(at)
     ed4:	3c010000 	lui	at,0x0
     ed8:	c4300000 	lwc1	$f16,0(at)
     edc:	46080282 	mul.s	$f10,$f0,$f8
     ee0:	24020001 	li	v0,1
     ee4:	46105480 	add.s	$f18,$f10,$f16
     ee8:	1000000d 	b	f20 <func_80A160BC+0xe4>
     eec:	e6120060 	swc1	$f18,96(s0)
     ef0:	44802000 	mtc1	zero,$f4
     ef4:	0c000000 	jal	0 <func_80A15280>
     ef8:	e6040060 	swc1	$f4,96(s0)
     efc:	3c010000 	lui	at,0x0
     f00:	c4260000 	lwc1	$f6,0(at)
     f04:	00001025 	move	v0,zero
     f08:	4606003c 	c.lt.s	$f0,$f6
     f0c:	00000000 	nop
     f10:	45000003 	bc1f	f20 <func_80A160BC+0xe4>
     f14:	00000000 	nop
     f18:	10000001 	b	f20 <func_80A160BC+0xe4>
     f1c:	24020001 	li	v0,1
     f20:	3c014396 	lui	at,0x4396
     f24:	44814000 	mtc1	at,$f8
     f28:	02002025 	move	a0,s0
     f2c:	e60800bc 	swc1	$f8,188(s0)
     f30:	0c000000 	jal	0 <func_80A15280>
     f34:	afa20024 	sw	v0,36(sp)
     f38:	8fa20024 	lw	v0,36(sp)
     f3c:	3c0e0000 	lui	t6,0x0
     f40:	25ce0000 	addiu	t6,t6,0
     f44:	240f0005 	li	t7,5
     f48:	ae0e0244 	sw	t6,580(s0)
     f4c:	10400007 	beqz	v0,f6c <func_80A160BC+0x130>
     f50:	ae0f0250 	sw	t7,592(s0)
     f54:	8e180134 	lw	t8,308(s0)
     f58:	02002025 	move	a0,s0
     f5c:	53000004 	beqzl	t8,f70 <func_80A160BC+0x134>
     f60:	8fbf001c 	lw	ra,28(sp)
     f64:	0c000000 	jal	0 <func_80A15280>
     f68:	24052869 	li	a1,10345
     f6c:	8fbf001c 	lw	ra,28(sp)
     f70:	8fb00018 	lw	s0,24(sp)
     f74:	27bd0030 	addiu	sp,sp,48
     f78:	03e00008 	jr	ra
     f7c:	00000000 	nop

00000f80 <func_80A16200>:
     f80:	27bdffb8 	addiu	sp,sp,-72
     f84:	afbf0024 	sw	ra,36(sp)
     f88:	afb00020 	sw	s0,32(sp)
     f8c:	84a2009e 	lh	v0,158(a1)
     f90:	00808025 	move	s0,a0
     f94:	0c000000 	jal	0 <func_80A15280>
     f98:	a7a20042 	sh	v0,66(sp)
     f9c:	3c010000 	lui	at,0x0
     fa0:	c4220000 	lwc1	$f2,0(at)
     fa4:	3c010000 	lui	at,0x0
     fa8:	c4240000 	lwc1	$f4,0(at)
     fac:	44804000 	mtc1	zero,$f8
     fb0:	44061000 	mfc1	a2,$f2
     fb4:	46040182 	mul.s	$f6,$f0,$f4
     fb8:	44071000 	mfc1	a3,$f2
     fbc:	26040068 	addiu	a0,s0,104
     fc0:	e7a80010 	swc1	$f8,16(sp)
     fc4:	44053000 	mfc1	a1,$f6
     fc8:	0c000000 	jal	0 <func_80A15280>
     fcc:	00000000 	nop
     fd0:	87a20042 	lh	v0,66(sp)
     fd4:	3c010000 	lui	at,0x0
     fd8:	c4320000 	lwc1	$f18,0(at)
     fdc:	00027143 	sra	t6,v0,0x5
     fe0:	0002c083 	sra	t8,v0,0x2
     fe4:	33190001 	andi	t9,t8,0x1
     fe8:	31cf0002 	andi	t7,t6,0x2
     fec:	01f94825 	or	t1,t7,t9
     ff0:	000956c0 	sll	t2,t1,0x1b
     ff4:	000a5c03 	sra	t3,t2,0x10
     ff8:	448b5000 	mtc1	t3,$f10
     ffc:	30470004 	andi	a3,v0,0x4
    1000:	26040030 	addiu	a0,s0,48
    1004:	46805420 	cvt.s.w	$f16,$f10
    1008:	24060fa0 	li	a2,4000
    100c:	46128102 	mul.s	$f4,$f16,$f18
    1010:	4600218d 	trunc.w.s	$f6,$f4
    1014:	44033000 	mfc1	v1,$f6
    1018:	00000000 	nop
    101c:	00032c00 	sll	a1,v1,0x10
    1020:	10e00005 	beqz	a3,1038 <func_80A16200+0xb8>
    1024:	00052c03 	sra	a1,a1,0x10
    1028:	00602825 	move	a1,v1
    102c:	00052823 	negu	a1,a1
    1030:	00052c00 	sll	a1,a1,0x10
    1034:	00052c03 	sra	a1,a1,0x10
    1038:	afa40030 	sw	a0,48(sp)
    103c:	0c000000 	jal	0 <func_80A15280>
    1040:	afa7002c 	sw	a3,44(sp)
    1044:	26040034 	addiu	a0,s0,52
    1048:	24054000 	li	a1,16384
    104c:	0c000000 	jal	0 <func_80A15280>
    1050:	240603e8 	li	a2,1000
    1054:	0c000000 	jal	0 <func_80A15280>
    1058:	00000000 	nop
    105c:	e7a00034 	swc1	$f0,52(sp)
    1060:	0c000000 	jal	0 <func_80A15280>
    1064:	8604024e 	lh	a0,590(s0)
    1068:	e7a00038 	swc1	$f0,56(sp)
    106c:	0c000000 	jal	0 <func_80A15280>
    1070:	8604024c 	lh	a0,588(s0)
    1074:	3c01447a 	lui	at,0x447a
    1078:	44815000 	mtc1	at,$f10
    107c:	c7a80038 	lwc1	$f8,56(sp)
    1080:	3c0144fa 	lui	at,0x44fa
    1084:	44819000 	mtc1	at,$f18
    1088:	460a4402 	mul.s	$f16,$f8,$f10
    108c:	c7a80034 	lwc1	$f8,52(sp)
    1090:	86190032 	lh	t9,50(s0)
    1094:	46120102 	mul.s	$f4,$f0,$f18
    1098:	260401ac 	addiu	a0,s0,428
    109c:	46102180 	add.s	$f6,$f4,$f16
    10a0:	46083282 	mul.s	$f10,$f6,$f8
    10a4:	4600548d 	trunc.w.s	$f18,$f10
    10a8:	440f9000 	mfc1	t7,$f18
    10ac:	00000000 	nop
    10b0:	032f4021 	addu	t0,t9,t7
    10b4:	a6080032 	sh	t0,50(s0)
    10b8:	8fa90030 	lw	t1,48(sp)
    10bc:	892b0000 	lwl	t3,0(t1)
    10c0:	992b0003 	lwr	t3,3(t1)
    10c4:	aa0b00b4 	swl	t3,180(s0)
    10c8:	ba0b00b7 	swr	t3,183(s0)
    10cc:	952b0004 	lhu	t3,4(t1)
    10d0:	0c000000 	jal	0 <func_80A15280>
    10d4:	a60b00b8 	sh	t3,184(s0)
    10d8:	86020248 	lh	v0,584(s0)
    10dc:	1c400005 	bgtz	v0,10f4 <func_80A16200+0x174>
    10e0:	2841003d 	slti	at,v0,61
    10e4:	0c000000 	jal	0 <func_80A15280>
    10e8:	02002025 	move	a0,s0
    10ec:	10000017 	b	114c <func_80A16200+0x1cc>
    10f0:	8fbf0024 	lw	ra,36(sp)
    10f4:	10200008 	beqz	at,1118 <func_80A16200+0x198>
    10f8:	8fac002c 	lw	t4,44(sp)
    10fc:	11800004 	beqz	t4,1110 <func_80A16200+0x190>
    1100:	3c0d0000 	lui	t5,0x0
    1104:	25ad0000 	addiu	t5,t5,0
    1108:	1000000f 	b	1148 <func_80A16200+0x1c8>
    110c:	ae0d0134 	sw	t5,308(s0)
    1110:	1000000d 	b	1148 <func_80A16200+0x1c8>
    1114:	ae000134 	sw	zero,308(s0)
    1118:	96020088 	lhu	v0,136(s0)
    111c:	304e0020 	andi	t6,v0,0x20
    1120:	11c00005 	beqz	t6,1138 <func_80A16200+0x1b8>
    1124:	30580001 	andi	t8,v0,0x1
    1128:	0c000000 	jal	0 <func_80A15280>
    112c:	02002025 	move	a0,s0
    1130:	10000006 	b	114c <func_80A16200+0x1cc>
    1134:	8fbf0024 	lw	ra,36(sp)
    1138:	53000004 	beqzl	t8,114c <func_80A16200+0x1cc>
    113c:	8fbf0024 	lw	ra,36(sp)
    1140:	0c000000 	jal	0 <func_80A15280>
    1144:	02002025 	move	a0,s0
    1148:	8fbf0024 	lw	ra,36(sp)
    114c:	8fb00020 	lw	s0,32(sp)
    1150:	27bd0048 	addiu	sp,sp,72
    1154:	03e00008 	jr	ra
    1158:	00000000 	nop

0000115c <func_80A163DC>:
    115c:	27bdffe8 	addiu	sp,sp,-24
    1160:	afbf0014 	sw	ra,20(sp)
    1164:	8c8f0024 	lw	t7,36(a0)
    1168:	44800000 	mtc1	zero,$f0
    116c:	8c980004 	lw	t8,4(a0)
    1170:	ac8f0008 	sw	t7,8(a0)
    1174:	8c8f002c 	lw	t7,44(a0)
    1178:	8c8e0028 	lw	t6,40(a0)
    117c:	240800c8 	li	t0,200
    1180:	37190010 	ori	t9,t8,0x10
    1184:	ac990004 	sw	t9,4(a0)
    1188:	a4880248 	sh	t0,584(a0)
    118c:	e480006c 	swc1	$f0,108(a0)
    1190:	e4800070 	swc1	$f0,112(a0)
    1194:	e48000bc 	swc1	$f0,188(a0)
    1198:	ac8f0010 	sw	t7,16(a0)
    119c:	ac8e000c 	sw	t6,12(a0)
    11a0:	0c000000 	jal	0 <func_80A15280>
    11a4:	afa40018 	sw	a0,24(sp)
    11a8:	8fa40018 	lw	a0,24(sp)
    11ac:	3c090000 	lui	t1,0x0
    11b0:	25290000 	addiu	t1,t1,0
    11b4:	240a0005 	li	t2,5
    11b8:	ac890244 	sw	t1,580(a0)
    11bc:	ac8a0250 	sw	t2,592(a0)
    11c0:	8fbf0014 	lw	ra,20(sp)
    11c4:	27bd0018 	addiu	sp,sp,24
    11c8:	03e00008 	jr	ra
    11cc:	00000000 	nop

000011d0 <func_80A16450>:
    11d0:	27bdffd0 	addiu	sp,sp,-48
    11d4:	44802000 	mtc1	zero,$f4
    11d8:	afb00020 	sw	s0,32(sp)
    11dc:	afa50034 	sw	a1,52(sp)
    11e0:	00808025 	move	s0,a0
    11e4:	afbf0024 	sw	ra,36(sp)
    11e8:	3c054033 	lui	a1,0x4033
    11ec:	3c063dcc 	lui	a2,0x3dcc
    11f0:	3c073ecc 	lui	a3,0x3ecc
    11f4:	34e7cccd 	ori	a3,a3,0xcccd
    11f8:	34c6cccd 	ori	a2,a2,0xcccd
    11fc:	34a53333 	ori	a1,a1,0x3333
    1200:	24840068 	addiu	a0,a0,104
    1204:	0c000000 	jal	0 <func_80A15280>
    1208:	e7a40010 	swc1	$f4,16(sp)
    120c:	96020088 	lhu	v0,136(s0)
    1210:	26040024 	addiu	a0,s0,36
    1214:	304e0008 	andi	t6,v0,0x8
    1218:	15c00003 	bnez	t6,1228 <func_80A16450+0x58>
    121c:	304f0020 	andi	t7,v0,0x20
    1220:	55e0000a 	bnezl	t7,124c <func_80A16450+0x7c>
    1224:	26040030 	addiu	a0,s0,48
    1228:	0c000000 	jal	0 <func_80A15280>
    122c:	26050008 	addiu	a1,s0,8
    1230:	3c013f00 	lui	at,0x3f00
    1234:	44814000 	mtc1	at,$f8
    1238:	c6060068 	lwc1	$f6,104(s0)
    123c:	a6020016 	sh	v0,22(s0)
    1240:	46083282 	mul.s	$f10,$f6,$f8
    1244:	e60a0068 	swc1	$f10,104(s0)
    1248:	26040030 	addiu	a0,s0,48
    124c:	afa40028 	sw	a0,40(sp)
    1250:	00002825 	move	a1,zero
    1254:	0c000000 	jal	0 <func_80A15280>
    1258:	240605dc 	li	a2,1500
    125c:	26040032 	addiu	a0,s0,50
    1260:	86050016 	lh	a1,22(s0)
    1264:	0c000000 	jal	0 <func_80A15280>
    1268:	24060bb8 	li	a2,3000
    126c:	26040034 	addiu	a0,s0,52
    1270:	00002825 	move	a1,zero
    1274:	0c000000 	jal	0 <func_80A15280>
    1278:	240603e8 	li	a2,1000
    127c:	8fb80028 	lw	t8,40(sp)
    1280:	96090088 	lhu	t1,136(s0)
    1284:	3c014120 	lui	at,0x4120
    1288:	8b080000 	lwl	t0,0(t8)
    128c:	9b080003 	lwr	t0,3(t8)
    1290:	312a0001 	andi	t2,t1,0x1
    1294:	aa0800b4 	swl	t0,180(s0)
    1298:	ba0800b7 	swr	t0,183(s0)
    129c:	97080004 	lhu	t0,4(t8)
    12a0:	1140000c 	beqz	t2,12d4 <func_80A16450+0x104>
    12a4:	a60800b8 	sh	t0,184(s0)
    12a8:	3c014080 	lui	at,0x4080
    12ac:	44819000 	mtc1	at,$f18
    12b0:	c610000c 	lwc1	$f16,12(s0)
    12b4:	26040028 	addiu	a0,s0,40
    12b8:	3c064000 	lui	a2,0x4000
    12bc:	46128101 	sub.s	$f4,$f16,$f18
    12c0:	44052000 	mfc1	a1,$f4
    12c4:	0c000000 	jal	0 <func_80A15280>
    12c8:	00000000 	nop
    12cc:	1000000a 	b	12f8 <func_80A16450+0x128>
    12d0:	860b0248 	lh	t3,584(s0)
    12d4:	c606000c 	lwc1	$f6,12(s0)
    12d8:	44814000 	mtc1	at,$f8
    12dc:	26040028 	addiu	a0,s0,40
    12e0:	3c064000 	lui	a2,0x4000
    12e4:	46083281 	sub.s	$f10,$f6,$f8
    12e8:	44055000 	mfc1	a1,$f10
    12ec:	0c000000 	jal	0 <func_80A15280>
    12f0:	00000000 	nop
    12f4:	860b0248 	lh	t3,584(s0)
    12f8:	29610064 	slti	at,t3,100
    12fc:	10200008 	beqz	at,1320 <func_80A16450+0x150>
    1300:	3c010000 	lui	at,0x0
    1304:	c4320000 	lwc1	$f18,0(at)
    1308:	c6100050 	lwc1	$f16,80(s0)
    130c:	02002025 	move	a0,s0
    1310:	46128102 	mul.s	$f4,$f16,$f18
    1314:	44052000 	mfc1	a1,$f4
    1318:	0c000000 	jal	0 <func_80A15280>
    131c:	00000000 	nop
    1320:	3c013fc0 	lui	at,0x3fc0
    1324:	44814000 	mtc1	at,$f8
    1328:	c6060068 	lwc1	$f6,104(s0)
    132c:	3c013f80 	lui	at,0x3f80
    1330:	44818000 	mtc1	at,$f16
    1334:	46083282 	mul.s	$f10,$f6,$f8
    1338:	3c014080 	lui	at,0x4080
    133c:	44819000 	mtc1	at,$f18
    1340:	3c014080 	lui	at,0x4080
    1344:	46105000 	add.s	$f0,$f10,$f16
    1348:	4600903c 	c.lt.s	$f18,$f0
    134c:	00000000 	nop
    1350:	45020005 	bc1fl	1368 <func_80A16450+0x198>
    1354:	e60001c8 	swc1	$f0,456(s0)
    1358:	44812000 	mtc1	at,$f4
    135c:	10000002 	b	1368 <func_80A16450+0x198>
    1360:	e60401c8 	swc1	$f4,456(s0)
    1364:	e60001c8 	swc1	$f0,456(s0)
    1368:	0c000000 	jal	0 <func_80A15280>
    136c:	260401ac 	addiu	a0,s0,428
    1370:	860c0248 	lh	t4,584(s0)
    1374:	5d800004 	bgtzl	t4,1388 <func_80A16450+0x1b8>
    1378:	8fbf0024 	lw	ra,36(sp)
    137c:	0c000000 	jal	0 <func_80A15280>
    1380:	02002025 	move	a0,s0
    1384:	8fbf0024 	lw	ra,36(sp)
    1388:	8fb00020 	lw	s0,32(sp)
    138c:	27bd0030 	addiu	sp,sp,48
    1390:	03e00008 	jr	ra
    1394:	00000000 	nop

00001398 <func_80A16618>:
    1398:	44800000 	mtc1	zero,$f0
    139c:	27bdffe8 	addiu	sp,sp,-24
    13a0:	afbf0014 	sw	ra,20(sp)
    13a4:	00803025 	move	a2,a0
    13a8:	e480006c 	swc1	$f0,108(a0)
    13ac:	e4800070 	swc1	$f0,112(a0)
    13b0:	afa60018 	sw	a2,24(sp)
    13b4:	24040005 	li	a0,5
    13b8:	0c000000 	jal	0 <func_80A15280>
    13bc:	24050023 	li	a1,35
    13c0:	8fa40018 	lw	a0,24(sp)
    13c4:	a4820248 	sh	v0,584(a0)
    13c8:	0c000000 	jal	0 <func_80A15280>
    13cc:	ac800250 	sw	zero,592(a0)
    13d0:	8fa60018 	lw	a2,24(sp)
    13d4:	3c0e0000 	lui	t6,0x0
    13d8:	25ce0000 	addiu	t6,t6,0
    13dc:	acce0244 	sw	t6,580(a2)
    13e0:	8fbf0014 	lw	ra,20(sp)
    13e4:	27bd0018 	addiu	sp,sp,24
    13e8:	03e00008 	jr	ra
    13ec:	00000000 	nop

000013f0 <func_80A16670>:
    13f0:	27bdffa8 	addiu	sp,sp,-88
    13f4:	3c0e0001 	lui	t6,0x1
    13f8:	afbf0024 	sw	ra,36(sp)
    13fc:	afb00020 	sw	s0,32(sp)
    1400:	01c57021 	addu	t6,t6,a1
    1404:	8dce1de4 	lw	t6,7652(t6)
    1408:	3c014270 	lui	at,0x4270
    140c:	44813000 	mtc1	at,$f6
    1410:	afae0050 	sw	t6,80(sp)
    1414:	c4840090 	lwc1	$f4,144(a0)
    1418:	00808025 	move	s0,a0
    141c:	4606203c 	c.lt.s	$f4,$f6
    1420:	00000000 	nop
    1424:	4502000c 	bc1fl	1458 <func_80A16670+0x68>
    1428:	86180248 	lh	t8,584(s0)
    142c:	848f0248 	lh	t7,584(a0)
    1430:	3c020000 	lui	v0,0x0
    1434:	29e1000c 	slti	at,t7,12
    1438:	10200004 	beqz	at,144c <func_80A16670+0x5c>
    143c:	00000000 	nop
    1440:	3c020000 	lui	v0,0x0
    1444:	1000000c 	b	1478 <func_80A16670+0x88>
    1448:	24420000 	addiu	v0,v0,0
    144c:	1000000a 	b	1478 <func_80A16670+0x88>
    1450:	24420000 	addiu	v0,v0,0
    1454:	86180248 	lh	t8,584(s0)
    1458:	3c020000 	lui	v0,0x0
    145c:	24420000 	addiu	v0,v0,0
    1460:	2b010004 	slti	at,t8,4
    1464:	10200004 	beqz	at,1478 <func_80A16670+0x88>
    1468:	00000000 	nop
    146c:	3c020000 	lui	v0,0x0
    1470:	10000001 	b	1478 <func_80A16670+0x88>
    1474:	24420000 	addiu	v0,v0,0
    1478:	02002025 	move	a0,s0
    147c:	0c000000 	jal	0 <func_80A15280>
    1480:	afa2004c 	sw	v0,76(sp)
    1484:	8fa2004c 	lw	v0,76(sp)
    1488:	44804000 	mtc1	zero,$f8
    148c:	26040068 	addiu	a0,s0,104
    1490:	8c450000 	lw	a1,0(v0)
    1494:	8c460004 	lw	a2,4(v0)
    1498:	8c470008 	lw	a3,8(v0)
    149c:	0c000000 	jal	0 <func_80A15280>
    14a0:	e7a80010 	swc1	$f8,16(sp)
    14a4:	44805000 	mtc1	zero,$f10
    14a8:	26040024 	addiu	a0,s0,36
    14ac:	26050008 	addiu	a1,s0,8
    14b0:	afa50028 	sw	a1,40(sp)
    14b4:	afa4002c 	sw	a0,44(sp)
    14b8:	0c000000 	jal	0 <func_80A15280>
    14bc:	e7aa0044 	swc1	$f10,68(sp)
    14c0:	3c014361 	lui	at,0x4361
    14c4:	44818000 	mtc1	at,$f16
    14c8:	8fa4002c 	lw	a0,44(sp)
    14cc:	8fa50028 	lw	a1,40(sp)
    14d0:	4600803c 	c.lt.s	$f16,$f0
    14d4:	00000000 	nop
    14d8:	4502000e 	bc1fl	1514 <func_80A16670+0x124>
    14dc:	86190248 	lh	t9,584(s0)
    14e0:	0c000000 	jal	0 <func_80A15280>
    14e4:	00000000 	nop
    14e8:	00022c00 	sll	a1,v0,0x10
    14ec:	00052c03 	sra	a1,a1,0x10
    14f0:	26040032 	addiu	a0,s0,50
    14f4:	0c000000 	jal	0 <func_80A15280>
    14f8:	240600c8 	li	a2,200
    14fc:	14400013 	bnez	v0,154c <func_80A16670+0x15c>
    1500:	3c013f00 	lui	at,0x3f00
    1504:	44819000 	mtc1	at,$f18
    1508:	10000010 	b	154c <func_80A16670+0x15c>
    150c:	e7b20044 	swc1	$f18,68(sp)
    1510:	86190248 	lh	t9,584(s0)
    1514:	8fa50050 	lw	a1,80(sp)
    1518:	24060064 	li	a2,100
    151c:	2b210004 	slti	at,t9,4
    1520:	1020000a 	beqz	at,154c <func_80A16670+0x15c>
    1524:	000529c0 	sll	a1,a1,0x7
    1528:	00052c00 	sll	a1,a1,0x10
    152c:	00052c03 	sra	a1,a1,0x10
    1530:	0c000000 	jal	0 <func_80A15280>
    1534:	26040032 	addiu	a0,s0,50
    1538:	14400004 	bnez	v0,154c <func_80A16670+0x15c>
    153c:	3c013f00 	lui	at,0x3f00
    1540:	44812000 	mtc1	at,$f4
    1544:	00000000 	nop
    1548:	e7a40044 	swc1	$f4,68(sp)
    154c:	86080032 	lh	t0,50(s0)
    1550:	3c010000 	lui	at,0x0
    1554:	c6060068 	lwc1	$f6,104(s0)
    1558:	a60800b6 	sh	t0,182(s0)
    155c:	c4280000 	lwc1	$f8,0(at)
    1560:	3c010000 	lui	at,0x0
    1564:	c4300000 	lwc1	$f16,0(at)
    1568:	46083282 	mul.s	$f10,$f6,$f8
    156c:	c7a40044 	lwc1	$f4,68(sp)
    1570:	3c013fc0 	lui	at,0x3fc0
    1574:	44813000 	mtc1	at,$f6
    1578:	3c013fe0 	lui	at,0x3fe0
    157c:	46105480 	add.s	$f18,$f10,$f16
    1580:	46049080 	add.s	$f2,$f18,$f4
    1584:	4606103c 	c.lt.s	$f2,$f6
    1588:	00000000 	nop
    158c:	45020009 	bc1fl	15b4 <func_80A16670+0x1c4>
    1590:	44816800 	mtc1	at,$f13
    1594:	3c013ff8 	lui	at,0x3ff8
    1598:	44814800 	mtc1	at,$f9
    159c:	44804000 	mtc1	zero,$f8
    15a0:	00000000 	nop
    15a4:	462042a0 	cvt.s.d	$f10,$f8
    15a8:	1000000d 	b	15e0 <func_80A16670+0x1f0>
    15ac:	e60a01c8 	swc1	$f10,456(s0)
    15b0:	44816800 	mtc1	at,$f13
    15b4:	44806000 	mtc1	zero,$f12
    15b8:	46001021 	cvt.d.s	$f0,$f2
    15bc:	4620603c 	c.lt.d	$f12,$f0
    15c0:	00000000 	nop
    15c4:	45020004 	bc1fl	15d8 <func_80A16670+0x1e8>
    15c8:	46200086 	mov.d	$f2,$f0
    15cc:	10000002 	b	15d8 <func_80A16670+0x1e8>
    15d0:	46206086 	mov.d	$f2,$f12
    15d4:	46200086 	mov.d	$f2,$f0
    15d8:	46201420 	cvt.s.d	$f16,$f2
    15dc:	e61001c8 	swc1	$f16,456(s0)
    15e0:	0c000000 	jal	0 <func_80A15280>
    15e4:	260401ac 	addiu	a0,s0,428
    15e8:	86090248 	lh	t1,584(s0)
    15ec:	24040005 	li	a0,5
    15f0:	5d200005 	bgtzl	t1,1608 <func_80A16670+0x218>
    15f4:	8fbf0024 	lw	ra,36(sp)
    15f8:	0c000000 	jal	0 <func_80A15280>
    15fc:	24050050 	li	a1,80
    1600:	a6020248 	sh	v0,584(s0)
    1604:	8fbf0024 	lw	ra,36(sp)
    1608:	8fb00020 	lw	s0,32(sp)
    160c:	27bd0058 	addiu	sp,sp,88
    1610:	03e00008 	jr	ra
    1614:	00000000 	nop

00001618 <func_80A16898>:
    1618:	27bdffd8 	addiu	sp,sp,-40
    161c:	afb00018 	sw	s0,24(sp)
    1620:	00808025 	move	s0,a0
    1624:	afbf001c 	sw	ra,28(sp)
    1628:	afa5002c 	sw	a1,44(sp)
    162c:	0c000000 	jal	0 <func_80A15280>
    1630:	8484024c 	lh	a0,588(a0)
    1634:	e7a00024 	swc1	$f0,36(sp)
    1638:	0c000000 	jal	0 <func_80A15280>
    163c:	8604024e 	lh	a0,590(s0)
    1640:	3c020000 	lui	v0,0x0
    1644:	3c030000 	lui	v1,0x0
    1648:	24630000 	addiu	v1,v1,0
    164c:	24420000 	addiu	v0,v0,0
    1650:	c4440000 	lwc1	$f4,0(v0)
    1654:	c4620000 	lwc1	$f2,0(v1)
    1658:	3c013f80 	lui	at,0x3f80
    165c:	44816000 	mtc1	at,$f12
    1660:	46022180 	add.s	$f6,$f4,$f2
    1664:	e7a00020 	swc1	$f0,32(sp)
    1668:	3c010000 	lui	at,0x0
    166c:	e4460000 	swc1	$f6,0(v0)
    1670:	c4480000 	lwc1	$f8,0(v0)
    1674:	460c403e 	c.le.s	$f8,$f12
    1678:	00000000 	nop
    167c:	4500001e 	bc1f	16f8 <func_80A16898+0xe0>
    1680:	00000000 	nop
    1684:	0c000000 	jal	0 <func_80A15280>
    1688:	e44c0000 	swc1	$f12,0(v0)
    168c:	3c010000 	lui	at,0x0
    1690:	c42a0000 	lwc1	$f10,0(at)
    1694:	3c030000 	lui	v1,0x0
    1698:	24630000 	addiu	v1,v1,0
    169c:	460a003c 	c.lt.s	$f0,$f10
    16a0:	00000000 	nop
    16a4:	45020012 	bc1fl	16f0 <func_80A16898+0xd8>
    16a8:	44804000 	mtc1	zero,$f8
    16ac:	0c000000 	jal	0 <func_80A15280>
    16b0:	00000000 	nop
    16b4:	3c014040 	lui	at,0x4040
    16b8:	44818000 	mtc1	at,$f16
    16bc:	3c014000 	lui	at,0x4000
    16c0:	44812000 	mtc1	at,$f4
    16c4:	46100482 	mul.s	$f18,$f0,$f16
    16c8:	3c030000 	lui	v1,0x0
    16cc:	24630000 	addiu	v1,v1,0
    16d0:	02002025 	move	a0,s0
    16d4:	24052869 	li	a1,10345
    16d8:	46049180 	add.s	$f6,$f18,$f4
    16dc:	0c000000 	jal	0 <func_80A15280>
    16e0:	e4660000 	swc1	$f6,0(v1)
    16e4:	10000008 	b	1708 <func_80A16898+0xf0>
    16e8:	c7b20024 	lwc1	$f18,36(sp)
    16ec:	44804000 	mtc1	zero,$f8
    16f0:	10000004 	b	1704 <func_80A16898+0xec>
    16f4:	e4680000 	swc1	$f8,0(v1)
    16f8:	c42a0000 	lwc1	$f10,0(at)
    16fc:	460a1401 	sub.s	$f16,$f2,$f10
    1700:	e4700000 	swc1	$f16,0(v1)
    1704:	c7b20024 	lwc1	$f18,36(sp)
    1708:	c7a40020 	lwc1	$f4,32(sp)
    170c:	3c013f00 	lui	at,0x3f00
    1710:	44814000 	mtc1	at,$f8
    1714:	46049180 	add.s	$f6,$f18,$f4
    1718:	3c014000 	lui	at,0x4000
    171c:	44818000 	mtc1	at,$f16
    1720:	260401ac 	addiu	a0,s0,428
    1724:	46083282 	mul.s	$f10,$f6,$f8
    1728:	46105480 	add.s	$f18,$f10,$f16
    172c:	0c000000 	jal	0 <func_80A15280>
    1730:	e61201c8 	swc1	$f18,456(s0)
    1734:	8fbf001c 	lw	ra,28(sp)
    1738:	8fb00018 	lw	s0,24(sp)
    173c:	27bd0028 	addiu	sp,sp,40
    1740:	03e00008 	jr	ra
    1744:	00000000 	nop

00001748 <func_80A169C8>:
    1748:	27bdffd0 	addiu	sp,sp,-48
    174c:	afb00018 	sw	s0,24(sp)
    1750:	00808025 	move	s0,a0
    1754:	afbf001c 	sw	ra,28(sp)
    1758:	afa50034 	sw	a1,52(sp)
    175c:	0c000000 	jal	0 <func_80A15280>
    1760:	8484024c 	lh	a0,588(a0)
    1764:	e7a00028 	swc1	$f0,40(sp)
    1768:	0c000000 	jal	0 <func_80A15280>
    176c:	8604024e 	lh	a0,590(s0)
    1770:	e7a00024 	swc1	$f0,36(sp)
    1774:	860e00b4 	lh	t6,180(s0)
    1778:	861800b8 	lh	t8,184(s0)
    177c:	3c040000 	lui	a0,0x0
    1780:	25cffe0c 	addiu	t7,t6,-500
    1784:	27190064 	addiu	t9,t8,100
    1788:	a60f00b4 	sh	t7,180(s0)
    178c:	a61900b8 	sh	t9,184(s0)
    1790:	24840000 	addiu	a0,a0,0
    1794:	24050000 	li	a1,0
    1798:	0c000000 	jal	0 <func_80A15280>
    179c:	3c063f80 	lui	a2,0x3f80
    17a0:	c7a40028 	lwc1	$f4,40(sp)
    17a4:	c7a60024 	lwc1	$f6,36(sp)
    17a8:	3c013f00 	lui	at,0x3f00
    17ac:	44815000 	mtc1	at,$f10
    17b0:	46062200 	add.s	$f8,$f4,$f6
    17b4:	3c014000 	lui	at,0x4000
    17b8:	44819000 	mtc1	at,$f18
    17bc:	260401ac 	addiu	a0,s0,428
    17c0:	460a4402 	mul.s	$f16,$f8,$f10
    17c4:	46128100 	add.s	$f4,$f16,$f18
    17c8:	0c000000 	jal	0 <func_80A15280>
    17cc:	e60401c8 	swc1	$f4,456(s0)
    17d0:	8fbf001c 	lw	ra,28(sp)
    17d4:	8fb00018 	lw	s0,24(sp)
    17d8:	27bd0030 	addiu	sp,sp,48
    17dc:	03e00008 	jr	ra
    17e0:	00000000 	nop

000017e4 <func_80A16A64>:
    17e4:	27bdffa8 	addiu	sp,sp,-88
    17e8:	afbf0024 	sw	ra,36(sp)
    17ec:	afb00020 	sw	s0,32(sp)
    17f0:	afa5005c 	sw	a1,92(sp)
    17f4:	8ca21d90 	lw	v0,7568(a1)
    17f8:	00808025 	move	s0,a0
    17fc:	3c040000 	lui	a0,0x0
    1800:	1440000c 	bnez	v0,1834 <func_80A16A64+0x50>
    1804:	24840000 	addiu	a0,a0,0
    1808:	3c050000 	lui	a1,0x0
    180c:	24a50000 	addiu	a1,a1,0
    1810:	24060491 	li	a2,1169
    1814:	0c000000 	jal	0 <func_80A15280>
    1818:	8607001c 	lh	a3,28(s0)
    181c:	0c000000 	jal	0 <func_80A15280>
    1820:	02002025 	move	a0,s0
    1824:	0c000000 	jal	0 <func_80A15280>
    1828:	02002025 	move	a0,s0
    182c:	1000006a 	b	19d8 <func_80A16A64+0x1f4>
    1830:	8fbf0024 	lw	ra,36(sp)
    1834:	860f024c 	lh	t7,588(s0)
    1838:	8619024e 	lh	t9,590(s0)
    183c:	24010001 	li	at,1
    1840:	25f80111 	addiu	t8,t7,273
    1844:	27280500 	addiu	t0,t9,1280
    1848:	a618024c 	sh	t8,588(s0)
    184c:	a608024e 	sh	t0,590(s0)
    1850:	94430000 	lhu	v1,0(v0)
    1854:	8fa5005c 	lw	a1,92(sp)
    1858:	02002025 	move	a0,s0
    185c:	10610008 	beq	v1,at,1880 <func_80A16A64+0x9c>
    1860:	24010002 	li	at,2
    1864:	1061000a 	beq	v1,at,1890 <func_80A16A64+0xac>
    1868:	02002025 	move	a0,s0
    186c:	24010003 	li	at,3
    1870:	1061000c 	beq	v1,at,18a4 <func_80A16A64+0xc0>
    1874:	3c040000 	lui	a0,0x0
    1878:	10000012 	b	18c4 <func_80A16A64+0xe0>
    187c:	3c040000 	lui	a0,0x0
    1880:	0c000000 	jal	0 <func_80A15280>
    1884:	afa2004c 	sw	v0,76(sp)
    1888:	10000016 	b	18e4 <func_80A16A64+0x100>
    188c:	8fa2004c 	lw	v0,76(sp)
    1890:	8fa5005c 	lw	a1,92(sp)
    1894:	0c000000 	jal	0 <func_80A15280>
    1898:	afa2004c 	sw	v0,76(sp)
    189c:	10000011 	b	18e4 <func_80A16A64+0x100>
    18a0:	8fa2004c 	lw	v0,76(sp)
    18a4:	0c000000 	jal	0 <func_80A15280>
    18a8:	24840000 	addiu	a0,a0,0
    18ac:	0c000000 	jal	0 <func_80A15280>
    18b0:	02002025 	move	a0,s0
    18b4:	0c000000 	jal	0 <func_80A15280>
    18b8:	02002025 	move	a0,s0
    18bc:	10000046 	b	19d8 <func_80A16A64+0x1f4>
    18c0:	8fbf0024 	lw	ra,36(sp)
    18c4:	3c050000 	lui	a1,0x0
    18c8:	8607001c 	lh	a3,28(s0)
    18cc:	afa2004c 	sw	v0,76(sp)
    18d0:	24a50000 	addiu	a1,a1,0
    18d4:	24840000 	addiu	a0,a0,0
    18d8:	0c000000 	jal	0 <func_80A15280>
    18dc:	240604b0 	li	a2,1200
    18e0:	8fa2004c 	lw	v0,76(sp)
    18e4:	8c4c0018 	lw	t4,24(v0)
    18e8:	8c49000c 	lw	t1,12(v0)
    18ec:	8c4a0010 	lw	t2,16(v0)
    18f0:	448c5000 	mtc1	t4,$f10
    18f4:	8c4b0014 	lw	t3,20(v0)
    18f8:	44892000 	mtc1	t1,$f4
    18fc:	46805420 	cvt.s.w	$f16,$f10
    1900:	448a3000 	mtc1	t2,$f6
    1904:	448b4000 	mtc1	t3,$f8
    1908:	8faf005c 	lw	t7,92(sp)
    190c:	468020a0 	cvt.s.w	$f2,$f4
    1910:	e7b00034 	swc1	$f16,52(sp)
    1914:	8c4d001c 	lw	t5,28(v0)
    1918:	448d9000 	mtc1	t5,$f18
    191c:	46803320 	cvt.s.w	$f12,$f6
    1920:	46809120 	cvt.s.w	$f4,$f18
    1924:	468043a0 	cvt.s.w	$f14,$f8
    1928:	e7a40038 	swc1	$f4,56(sp)
    192c:	8c4e0020 	lw	t6,32(v0)
    1930:	448e3000 	mtc1	t6,$f6
    1934:	00000000 	nop
    1938:	46803220 	cvt.s.w	$f8,$f6
    193c:	e7a8003c 	swc1	$f8,60(sp)
    1940:	94450002 	lhu	a1,2(v0)
    1944:	94440004 	lhu	a0,4(v0)
    1948:	95e61d74 	lhu	a2,7540(t7)
    194c:	e7ae0048 	swc1	$f14,72(sp)
    1950:	e7ac0044 	swc1	$f12,68(sp)
    1954:	0c000000 	jal	0 <func_80A15280>
    1958:	e7a20040 	swc1	$f2,64(sp)
    195c:	c7a20040 	lwc1	$f2,64(sp)
    1960:	c7aa0034 	lwc1	$f10,52(sp)
    1964:	c7ac0044 	lwc1	$f12,68(sp)
    1968:	c7ae0048 	lwc1	$f14,72(sp)
    196c:	46025401 	sub.s	$f16,$f10,$f2
    1970:	3c010000 	lui	at,0x0
    1974:	26180024 	addiu	t8,s0,36
    1978:	26050078 	addiu	a1,s0,120
    197c:	46008482 	mul.s	$f18,$f16,$f0
    1980:	27a6002c 	addiu	a2,sp,44
    1984:	02003825 	move	a3,s0
    1988:	46029100 	add.s	$f4,$f18,$f2
    198c:	e6040024 	swc1	$f4,36(s0)
    1990:	c7a60038 	lwc1	$f6,56(sp)
    1994:	c4320000 	lwc1	$f18,0(at)
    1998:	460c3201 	sub.s	$f8,$f6,$f12
    199c:	46004282 	mul.s	$f10,$f8,$f0
    19a0:	460c5400 	add.s	$f16,$f10,$f12
    19a4:	46128100 	add.s	$f4,$f16,$f18
    19a8:	e6040028 	swc1	$f4,40(s0)
    19ac:	c7a6003c 	lwc1	$f6,60(sp)
    19b0:	460e3201 	sub.s	$f8,$f6,$f14
    19b4:	46004282 	mul.s	$f10,$f8,$f0
    19b8:	460e5400 	add.s	$f16,$f10,$f14
    19bc:	e610002c 	swc1	$f16,44(s0)
    19c0:	8fa4005c 	lw	a0,92(sp)
    19c4:	afb80010 	sw	t8,16(sp)
    19c8:	0c000000 	jal	0 <func_80A15280>
    19cc:	248407c0 	addiu	a0,a0,1984
    19d0:	e6000080 	swc1	$f0,128(s0)
    19d4:	8fbf0024 	lw	ra,36(sp)
    19d8:	8fb00020 	lw	s0,32(sp)
    19dc:	27bd0058 	addiu	sp,sp,88
    19e0:	03e00008 	jr	ra
    19e4:	00000000 	nop

000019e8 <func_80A16C68>:
    19e8:	27bdffd8 	addiu	sp,sp,-40
    19ec:	afbf0024 	sw	ra,36(sp)
    19f0:	afb00020 	sw	s0,32(sp)
    19f4:	afa5002c 	sw	a1,44(sp)
    19f8:	84820248 	lh	v0,584(a0)
    19fc:	00808025 	move	s0,a0
    1a00:	18400002 	blez	v0,1a0c <func_80A16C68+0x24>
    1a04:	244effff 	addiu	t6,v0,-1
    1a08:	a48e0248 	sh	t6,584(a0)
    1a0c:	860f024c 	lh	t7,588(s0)
    1a10:	8619024e 	lh	t9,590(s0)
    1a14:	8e02011c 	lw	v0,284(s0)
    1a18:	25f80111 	addiu	t8,t7,273
    1a1c:	27280500 	addiu	t0,t9,1280
    1a20:	a618024c 	sh	t8,588(s0)
    1a24:	10400007 	beqz	v0,1a44 <func_80A16C68+0x5c>
    1a28:	a608024e 	sh	t0,590(s0)
    1a2c:	8c490130 	lw	t1,304(v0)
    1a30:	55200005 	bnezl	t1,1a48 <func_80A16C68+0x60>
    1a34:	8e020244 	lw	v0,580(s0)
    1a38:	52020003 	beql	s0,v0,1a48 <func_80A16C68+0x60>
    1a3c:	8e020244 	lw	v0,580(s0)
    1a40:	ae00011c 	sw	zero,284(s0)
    1a44:	8e020244 	lw	v0,580(s0)
    1a48:	02002025 	move	a0,s0
    1a4c:	10400006 	beqz	v0,1a68 <func_80A16C68+0x80>
    1a50:	00000000 	nop
    1a54:	0040f809 	jalr	v0
    1a58:	8fa5002c 	lw	a1,44(sp)
    1a5c:	8e0a0130 	lw	t2,304(s0)
    1a60:	5140003e 	beqzl	t2,1b5c <func_80A16C68+0x174>
    1a64:	8fbf0024 	lw	ra,36(sp)
    1a68:	0c000000 	jal	0 <func_80A15280>
    1a6c:	02002025 	move	a0,s0
    1a70:	8e020250 	lw	v0,592(s0)
    1a74:	8fa4002c 	lw	a0,44(sp)
    1a78:	02002825 	move	a1,s0
    1a7c:	10400006 	beqz	v0,1a98 <func_80A16C68+0xb0>
    1a80:	3c06418c 	lui	a2,0x418c
    1a84:	44802000 	mtc1	zero,$f4
    1a88:	3c074080 	lui	a3,0x4080
    1a8c:	afa20014 	sw	v0,20(sp)
    1a90:	0c000000 	jal	0 <func_80A15280>
    1a94:	e7a40010 	swc1	$f4,16(sp)
    1a98:	3c01428c 	lui	at,0x428c
    1a9c:	44814000 	mtc1	at,$f8
    1aa0:	c6060090 	lwc1	$f6,144(s0)
    1aa4:	8fa4002c 	lw	a0,44(sp)
    1aa8:	3c010001 	lui	at,0x1
    1aac:	4608303c 	c.lt.s	$f6,$f8
    1ab0:	34211e60 	ori	at,at,0x1e60
    1ab4:	00812821 	addu	a1,a0,at
    1ab8:	45000003 	bc1f	1ac8 <func_80A16C68+0xe0>
    1abc:	00000000 	nop
    1ac0:	0c000000 	jal	0 <func_80A15280>
    1ac4:	2606014c 	addiu	a2,s0,332
    1ac8:	3c010000 	lui	at,0x0
    1acc:	c4300000 	lwc1	$f16,0(at)
    1ad0:	c60a00bc 	lwc1	$f10,188(s0)
    1ad4:	02002025 	move	a0,s0
    1ad8:	46105482 	mul.s	$f18,$f10,$f16
    1adc:	44059000 	mfc1	a1,$f18
    1ae0:	0c000000 	jal	0 <func_80A15280>
    1ae4:	00000000 	nop
    1ae8:	02002025 	move	a0,s0
    1aec:	0c000000 	jal	0 <func_80A15280>
    1af0:	8fa5002c 	lw	a1,44(sp)
    1af4:	1040000d 	beqz	v0,1b2c <func_80A16C68+0x144>
    1af8:	02002025 	move	a0,s0
    1afc:	860b001c 	lh	t3,28(s0)
    1b00:	ae000118 	sw	zero,280(s0)
    1b04:	15600005 	bnez	t3,1b1c <func_80A16C68+0x134>
    1b08:	00000000 	nop
    1b0c:	0c000000 	jal	0 <func_80A15280>
    1b10:	02002025 	move	a0,s0
    1b14:	10000011 	b	1b5c <func_80A16C68+0x174>
    1b18:	8fbf0024 	lw	ra,36(sp)
    1b1c:	0c000000 	jal	0 <func_80A15280>
    1b20:	02002025 	move	a0,s0
    1b24:	1000000d 	b	1b5c <func_80A16C68+0x174>
    1b28:	8fbf0024 	lw	ra,36(sp)
    1b2c:	0c000000 	jal	0 <func_80A15280>
    1b30:	8fa5002c 	lw	a1,44(sp)
    1b34:	10400008 	beqz	v0,1b58 <func_80A16C68+0x170>
    1b38:	02002025 	move	a0,s0
    1b3c:	3c0141a0 	lui	at,0x41a0
    1b40:	44812000 	mtc1	at,$f4
    1b44:	8fa5002c 	lw	a1,44(sp)
    1b48:	2406007e 	li	a2,126
    1b4c:	3c0742a0 	lui	a3,0x42a0
    1b50:	0c000000 	jal	0 <func_80A15280>
    1b54:	e7a40010 	swc1	$f4,16(sp)
    1b58:	8fbf0024 	lw	ra,36(sp)
    1b5c:	8fb00020 	lw	s0,32(sp)
    1b60:	27bd0028 	addiu	sp,sp,40
    1b64:	03e00008 	jr	ra
    1b68:	00000000 	nop

00001b6c <func_80A16DEC>:
    1b6c:	27bdffe8 	addiu	sp,sp,-24
    1b70:	afbf0014 	sw	ra,20(sp)
    1b74:	848e001c 	lh	t6,28(a0)
    1b78:	24010001 	li	at,1
    1b7c:	55c10006 	bnel	t6,at,1b98 <func_80A16DEC+0x2c>
    1b80:	8c82011c 	lw	v0,284(a0)
    1b84:	0c000000 	jal	0 <func_80A15280>
    1b88:	00000000 	nop
    1b8c:	10000039 	b	1c74 <func_80A16DEC+0x108>
    1b90:	8fbf0014 	lw	ra,20(sp)
    1b94:	8c82011c 	lw	v0,284(a0)
    1b98:	50400008 	beqzl	v0,1bbc <func_80A16DEC+0x50>
    1b9c:	8c820244 	lw	v0,580(a0)
    1ba0:	8c4f0130 	lw	t7,304(v0)
    1ba4:	55e00005 	bnezl	t7,1bbc <func_80A16DEC+0x50>
    1ba8:	8c820244 	lw	v0,580(a0)
    1bac:	50820003 	beql	a0,v0,1bbc <func_80A16DEC+0x50>
    1bb0:	8c820244 	lw	v0,580(a0)
    1bb4:	ac80011c 	sw	zero,284(a0)
    1bb8:	8c820244 	lw	v0,580(a0)
    1bbc:	10400007 	beqz	v0,1bdc <func_80A16DEC+0x70>
    1bc0:	00000000 	nop
    1bc4:	0040f809 	jalr	v0
    1bc8:	afa40018 	sw	a0,24(sp)
    1bcc:	8fa40018 	lw	a0,24(sp)
    1bd0:	8c980130 	lw	t8,304(a0)
    1bd4:	53000027 	beqzl	t8,1c74 <func_80A16DEC+0x108>
    1bd8:	8fbf0014 	lw	ra,20(sp)
    1bdc:	0c000000 	jal	0 <func_80A15280>
    1be0:	afa40018 	sw	a0,24(sp)
    1be4:	8fa40018 	lw	a0,24(sp)
    1be8:	24010014 	li	at,20
    1bec:	3c190000 	lui	t9,0x0
    1bf0:	8482024a 	lh	v0,586(a0)
    1bf4:	27390000 	addiu	t9,t9,0
    1bf8:	14410003 	bne	v0,at,1c08 <func_80A16DEC+0x9c>
    1bfc:	00000000 	nop
    1c00:	1000001b 	b	1c70 <func_80A16DEC+0x104>
    1c04:	ac990134 	sw	t9,308(a0)
    1c08:	14400008 	bnez	v0,1c2c <func_80A16DEC+0xc0>
    1c0c:	28410014 	slti	at,v0,20
    1c10:	3c010000 	lui	at,0x0
    1c14:	c42c0000 	lwc1	$f12,0(at)
    1c18:	44056000 	mfc1	a1,$f12
    1c1c:	0c000000 	jal	0 <func_80A15280>
    1c20:	00000000 	nop
    1c24:	10000013 	b	1c74 <func_80A16DEC+0x108>
    1c28:	8fbf0014 	lw	ra,20(sp)
    1c2c:	10200010 	beqz	at,1c70 <func_80A16DEC+0x104>
    1c30:	3c010000 	lui	at,0x0
    1c34:	c42c0000 	lwc1	$f12,0(at)
    1c38:	3c010000 	lui	at,0x0
    1c3c:	c4260000 	lwc1	$f6,0(at)
    1c40:	c4840050 	lwc1	$f4,80(a0)
    1c44:	46062000 	add.s	$f0,$f4,$f6
    1c48:	4600603c 	c.lt.s	$f12,$f0
    1c4c:	00000000 	nop
    1c50:	45020004 	bc1fl	1c64 <func_80A16DEC+0xf8>
    1c54:	46000086 	mov.s	$f2,$f0
    1c58:	10000002 	b	1c64 <func_80A16DEC+0xf8>
    1c5c:	46006086 	mov.s	$f2,$f12
    1c60:	46000086 	mov.s	$f2,$f0
    1c64:	44051000 	mfc1	a1,$f2
    1c68:	0c000000 	jal	0 <func_80A15280>
    1c6c:	00000000 	nop
    1c70:	8fbf0014 	lw	ra,20(sp)
    1c74:	27bd0018 	addiu	sp,sp,24
    1c78:	03e00008 	jr	ra
    1c7c:	00000000 	nop

00001c80 <EnFish_Update>:
    1c80:	3c020000 	lui	v0,0x0
    1c84:	8c420000 	lw	v0,0(v0)
    1c88:	27bdffe8 	addiu	sp,sp,-24
    1c8c:	afbf0014 	sw	ra,20(sp)
    1c90:	14400011 	bnez	v0,1cd8 <EnFish_Update+0x58>
    1c94:	00000000 	nop
    1c98:	848e001c 	lh	t6,28(a0)
    1c9c:	15c0000e 	bnez	t6,1cd8 <EnFish_Update+0x58>
    1ca0:	00000000 	nop
    1ca4:	90af1d6c 	lbu	t7,7532(a1)
    1ca8:	11e0000b 	beqz	t7,1cd8 <EnFish_Update+0x58>
    1cac:	00000000 	nop
    1cb0:	8cb81d90 	lw	t8,7568(a1)
    1cb4:	13000008 	beqz	t8,1cd8 <EnFish_Update+0x58>
    1cb8:	00000000 	nop
    1cbc:	afa40018 	sw	a0,24(sp)
    1cc0:	0c000000 	jal	0 <func_80A15280>
    1cc4:	afa5001c 	sw	a1,28(sp)
    1cc8:	3c020000 	lui	v0,0x0
    1ccc:	8c420000 	lw	v0,0(v0)
    1cd0:	8fa40018 	lw	a0,24(sp)
    1cd4:	8fa5001c 	lw	a1,28(sp)
    1cd8:	50400008 	beqzl	v0,1cfc <EnFish_Update+0x7c>
    1cdc:	8482024a 	lh	v0,586(a0)
    1ce0:	54820006 	bnel	a0,v0,1cfc <EnFish_Update+0x7c>
    1ce4:	8482024a 	lh	v0,586(a0)
    1ce8:	0c000000 	jal	0 <func_80A15280>
    1cec:	00000000 	nop
    1cf0:	1000000b 	b	1d20 <EnFish_Update+0xa0>
    1cf4:	8fbf0014 	lw	ra,20(sp)
    1cf8:	8482024a 	lh	v0,586(a0)
    1cfc:	18400005 	blez	v0,1d14 <EnFish_Update+0x94>
    1d00:	2459ffff 	addiu	t9,v0,-1
    1d04:	0c000000 	jal	0 <func_80A15280>
    1d08:	a499024a 	sh	t9,586(a0)
    1d0c:	10000004 	b	1d20 <EnFish_Update+0xa0>
    1d10:	8fbf0014 	lw	ra,20(sp)
    1d14:	0c000000 	jal	0 <func_80A15280>
    1d18:	00000000 	nop
    1d1c:	8fbf0014 	lw	ra,20(sp)
    1d20:	27bd0018 	addiu	sp,sp,24
    1d24:	03e00008 	jr	ra
    1d28:	00000000 	nop

00001d2c <EnFish_Draw>:
    1d2c:	27bdffd8 	addiu	sp,sp,-40
    1d30:	afbf0024 	sw	ra,36(sp)
    1d34:	afa40028 	sw	a0,40(sp)
    1d38:	afa5002c 	sw	a1,44(sp)
    1d3c:	0c000000 	jal	0 <func_80A15280>
    1d40:	8ca40000 	lw	a0,0(a1)
    1d44:	8fa20028 	lw	v0,40(sp)
    1d48:	8fa4002c 	lw	a0,44(sp)
    1d4c:	8c4501b0 	lw	a1,432(v0)
    1d50:	8c4601cc 	lw	a2,460(v0)
    1d54:	904701ae 	lbu	a3,430(v0)
    1d58:	afa00018 	sw	zero,24(sp)
    1d5c:	afa00014 	sw	zero,20(sp)
    1d60:	0c000000 	jal	0 <func_80A15280>
    1d64:	afa00010 	sw	zero,16(sp)
    1d68:	8fa20028 	lw	v0,40(sp)
    1d6c:	00002025 	move	a0,zero
    1d70:	0c000000 	jal	0 <func_80A15280>
    1d74:	2445014c 	addiu	a1,v0,332
    1d78:	8fbf0024 	lw	ra,36(sp)
    1d7c:	27bd0028 	addiu	sp,sp,40
    1d80:	03e00008 	jr	ra
    1d84:	00000000 	nop
	...
