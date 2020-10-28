
build/src/overlays/actors/ovl_En_Bubble/z_en_bubble.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809CBC00>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa5002c 	sw	a1,44(sp)
      10:	8c8e0004 	lw	t6,4(a0)
      14:	00808025 	move	s0,a0
      18:	3c053f80 	lui	a1,0x3f80
      1c:	35cf0001 	ori	t7,t6,0x1
      20:	0c000000 	jal	0 <func_809CBC00>
      24:	ac8f0004 	sw	t7,4(a0)
      28:	3c014180 	lui	at,0x4180
      2c:	44810000 	mtc1	at,$f0
      30:	c7a2002c 	lwc1	$f2,44(sp)
      34:	3c010000 	lui	at,0x0
      38:	e60000bc 	swc1	$f0,188(s0)
      3c:	e6000210 	swc1	$f0,528(s0)
      40:	c4240000 	lwc1	$f4,0(at)
      44:	e6020220 	swc1	$f2,544(s0)
      48:	e6020224 	swc1	$f2,548(s0)
      4c:	0c000000 	jal	0 <func_809CBC00>
      50:	e6040214 	swc1	$f4,532(s0)
      54:	0c000000 	jal	0 <func_809CBC00>
      58:	e7a00024 	swc1	$f0,36(sp)
      5c:	0c000000 	jal	0 <func_809CBC00>
      60:	e7a00020 	swc1	$f0,32(sp)
      64:	c7ac0024 	lwc1	$f12,36(sp)
      68:	c7ae0020 	lwc1	$f14,32(sp)
      6c:	3c013f80 	lui	at,0x3f80
      70:	460c6182 	mul.s	$f6,$f12,$f12
      74:	44818000 	mtc1	at,$f16
      78:	460e7202 	mul.s	$f8,$f14,$f14
      7c:	e6100218 	swc1	$f16,536(s0)
      80:	e610021c 	swc1	$f16,540(s0)
      84:	46000482 	mul.s	$f18,$f0,$f0
      88:	46083280 	add.s	$f10,$f6,$f8
      8c:	46125080 	add.s	$f2,$f10,$f18
      90:	46020203 	div.s	$f8,$f0,$f2
      94:	46026103 	div.s	$f4,$f12,$f2
      98:	e6080204 	swc1	$f8,516(s0)
      9c:	46027183 	div.s	$f6,$f14,$f2
      a0:	e60401fc 	swc1	$f4,508(s0)
      a4:	e6060200 	swc1	$f6,512(s0)
      a8:	8fbf001c 	lw	ra,28(sp)
      ac:	8fb00018 	lw	s0,24(sp)
      b0:	27bd0028 	addiu	sp,sp,40
      b4:	03e00008 	jr	ra
      b8:	00000000 	nop

000000bc <func_809CBCBC>:
      bc:	8c83016c 	lw	v1,364(a0)
      c0:	44802000 	mtc1	zero,$f4
      c4:	240e0008 	li	t6,8
      c8:	240f0004 	li	t7,4
      cc:	24180001 	li	t8,1
      d0:	ac6e0000 	sw	t6,0(v1)
      d4:	a0600004 	sb	zero,4(v1)
      d8:	a06f0005 	sb	t7,5(v1)
      dc:	a0780015 	sb	t8,21(v1)
      e0:	24020006 	li	v0,6
      e4:	03e00008 	jr	ra
      e8:	e4840060 	swc1	$f4,96(a0)

000000ec <func_809CBCEC>:
      ec:	27bdffe8 	addiu	sp,sp,-24
      f0:	afbf0014 	sw	ra,20(sp)
      f4:	0c000000 	jal	0 <func_809CBC00>
      f8:	3c05bf80 	lui	a1,0xbf80
      fc:	8fbf0014 	lw	ra,20(sp)
     100:	27bd0018 	addiu	sp,sp,24
     104:	2402000c 	li	v0,12
     108:	03e00008 	jr	ra
     10c:	00000000 	nop

00000110 <func_809CBD10>:
     110:	27bdffe0 	addiu	sp,sp,-32
     114:	afbf001c 	sw	ra,28(sp)
     118:	afa40020 	sw	a0,32(sp)
     11c:	8c8f016c 	lw	t7,364(a0)
     120:	00a03025 	move	a2,a1
     124:	3c190001 	lui	t9,0x1
     128:	91e50005 	lbu	a1,5(t7)
     12c:	afa60024 	sw	a2,36(sp)
     130:	0326c821 	addu	t9,t9,a2
     134:	8f391d58 	lw	t9,7512(t9)
     138:	00c02025 	move	a0,a2
     13c:	00052823 	negu	a1,a1
     140:	0320f809 	jalr	t9
     144:	00000000 	nop
     148:	3c0140c0 	lui	at,0x40c0
     14c:	44810000 	mtc1	at,$f0
     150:	8fa50020 	lw	a1,32(sp)
     154:	8fa40024 	lw	a0,36(sp)
     158:	44060000 	mfc1	a2,$f0
     15c:	84a7008a 	lh	a3,138(a1)
     160:	0c000000 	jal	0 <func_809CBC00>
     164:	e7a00010 	swc1	$f0,16(sp)
     168:	8fbf001c 	lw	ra,28(sp)
     16c:	27bd0020 	addiu	sp,sp,32
     170:	03e00008 	jr	ra
     174:	00000000 	nop

00000178 <func_809CBD78>:
     178:	27bdff60 	addiu	sp,sp,-160
     17c:	3c0e0000 	lui	t6,0x0
     180:	afbf0064 	sw	ra,100(sp)
     184:	afbe0060 	sw	s8,96(sp)
     188:	afb7005c 	sw	s7,92(sp)
     18c:	afb60058 	sw	s6,88(sp)
     190:	afb50054 	sw	s5,84(sp)
     194:	afb40050 	sw	s4,80(sp)
     198:	afb3004c 	sw	s3,76(sp)
     19c:	afb20048 	sw	s2,72(sp)
     1a0:	afb10044 	sw	s1,68(sp)
     1a4:	afb00040 	sw	s0,64(sp)
     1a8:	f7b60038 	sdc1	$f22,56(sp)
     1ac:	f7b40030 	sdc1	$f20,48(sp)
     1b0:	25ce0000 	addiu	t6,t6,0
     1b4:	8dd80000 	lw	t8,0(t6)
     1b8:	3c010000 	lui	at,0x0
     1bc:	c4340000 	lwc1	$f20,0(at)
     1c0:	27be0090 	addiu	s8,sp,144
     1c4:	afd80000 	sw	t8,0(s8)
     1c8:	8dcf0004 	lw	t7,4(t6)
     1cc:	3c01447a 	lui	at,0x447a
     1d0:	4481b000 	mtc1	at,$f22
     1d4:	afcf0004 	sw	t7,4(s8)
     1d8:	8dd80008 	lw	t8,8(t6)
     1dc:	44802000 	mtc1	zero,$f4
     1e0:	0080b025 	move	s6,a0
     1e4:	00a0b825 	move	s7,a1
     1e8:	4406a000 	mfc1	a2,$f20
     1ec:	4407b000 	mfc1	a3,$f22
     1f0:	afd80008 	sw	t8,8(s8)
     1f4:	3c054080 	lui	a1,0x4080
     1f8:	24840220 	addiu	a0,a0,544
     1fc:	0c000000 	jal	0 <func_809CBC00>
     200:	e7a40010 	swc1	$f4,16(sp)
     204:	44803000 	mtc1	zero,$f6
     208:	4406a000 	mfc1	a2,$f20
     20c:	4407b000 	mfc1	a3,$f22
     210:	26c40224 	addiu	a0,s6,548
     214:	3c054080 	lui	a1,0x4080
     218:	0c000000 	jal	0 <func_809CBC00>
     21c:	e7a60010 	swc1	$f6,16(sp)
     220:	44804000 	mtc1	zero,$f8
     224:	4406a000 	mfc1	a2,$f20
     228:	4407b000 	mfc1	a3,$f22
     22c:	26c40210 	addiu	a0,s6,528
     230:	3c054258 	lui	a1,0x4258
     234:	0c000000 	jal	0 <func_809CBC00>
     238:	e7a80010 	swc1	$f8,16(sp)
     23c:	44805000 	mtc1	zero,$f10
     240:	3c053e4c 	lui	a1,0x3e4c
     244:	4406a000 	mfc1	a2,$f20
     248:	4407b000 	mfc1	a3,$f22
     24c:	34a5cccd 	ori	a1,a1,0xcccd
     250:	26c40214 	addiu	a0,s6,532
     254:	0c000000 	jal	0 <func_809CBC00>
     258:	e7aa0010 	swc1	$f10,16(sp)
     25c:	3c013f80 	lui	at,0x3f80
     260:	44819000 	mtc1	at,$f18
     264:	c6d00224 	lwc1	$f16,548(s6)
     268:	3c014180 	lui	at,0x4180
     26c:	44813000 	mtc1	at,$f6
     270:	46128100 	add.s	$f4,$f16,$f18
     274:	86c2020a 	lh	v0,522(s6)
     278:	3c013f00 	lui	at,0x3f00
     27c:	00008025 	move	s0,zero
     280:	46062202 	mul.s	$f8,$f4,$f6
     284:	24150014 	li	s5,20
     288:	2459ffff 	addiu	t9,v0,-1
     28c:	14400003 	bnez	v0,29c <func_809CBD78+0x124>
     290:	e6c800bc 	swc1	$f8,188(s6)
     294:	10000003 	b	2a4 <func_809CBD78+0x12c>
     298:	00001825 	move	v1,zero
     29c:	a6d9020a 	sh	t9,522(s6)
     2a0:	86c3020a 	lh	v1,522(s6)
     2a4:	50600004 	beqzl	v1,2b8 <func_809CBD78+0x140>
     2a8:	c6ca0024 	lwc1	$f10,36(s6)
     2ac:	1000003b 	b	39c <func_809CBD78+0x224>
     2b0:	2402ffff 	li	v0,-1
     2b4:	c6ca0024 	lwc1	$f10,36(s6)
     2b8:	4481b000 	mtc1	at,$f22
     2bc:	3c0140e0 	lui	at,0x40e0
     2c0:	e7aa0078 	swc1	$f10,120(sp)
     2c4:	c6d200bc 	lwc1	$f18,188(s6)
     2c8:	c6d00028 	lwc1	$f16,40(s6)
     2cc:	3c140000 	lui	s4,0x0
     2d0:	3c130000 	lui	s3,0x0
     2d4:	46128100 	add.s	$f4,$f16,$f18
     2d8:	4481a000 	mtc1	at,$f20
     2dc:	26730000 	addiu	s3,s3,0
     2e0:	26940000 	addiu	s4,s4,0
     2e4:	e7a4007c 	swc1	$f4,124(sp)
     2e8:	c6c6002c 	lwc1	$f6,44(s6)
     2ec:	27b20084 	addiu	s2,sp,132
     2f0:	27b10078 	addiu	s1,sp,120
     2f4:	e7a60080 	swc1	$f6,128(sp)
     2f8:	0c000000 	jal	0 <func_809CBC00>
     2fc:	00000000 	nop
     300:	46160201 	sub.s	$f8,$f0,$f22
     304:	46144282 	mul.s	$f10,$f8,$f20
     308:	0c000000 	jal	0 <func_809CBC00>
     30c:	e7aa0084 	swc1	$f10,132(sp)
     310:	46140402 	mul.s	$f16,$f0,$f20
     314:	0c000000 	jal	0 <func_809CBC00>
     318:	e7b00088 	swc1	$f16,136(sp)
     31c:	46160481 	sub.s	$f18,$f0,$f22
     320:	24040064 	li	a0,100
     324:	24050032 	li	a1,50
     328:	46149102 	mul.s	$f4,$f18,$f20
     32c:	0c000000 	jal	0 <func_809CBC00>
     330:	e7a4008c 	swc1	$f4,140(sp)
     334:	24080019 	li	t0,25
     338:	afa8001c 	sw	t0,28(sp)
     33c:	02e02025 	move	a0,s7
     340:	02202825 	move	a1,s1
     344:	02403025 	move	a2,s2
     348:	03c03825 	move	a3,s8
     34c:	afb30010 	sw	s3,16(sp)
     350:	afb40014 	sw	s4,20(sp)
     354:	afa20018 	sw	v0,24(sp)
     358:	0c000000 	jal	0 <func_809CBC00>
     35c:	afa00020 	sw	zero,32(sp)
     360:	26100001 	addiu	s0,s0,1
     364:	1615ffe4 	bne	s0,s5,2f8 <func_809CBD78+0x180>
     368:	00000000 	nop
     36c:	02e02025 	move	a0,s7
     370:	00002825 	move	a1,zero
     374:	26c60024 	addiu	a2,s6,36
     378:	0c000000 	jal	0 <func_809CBC00>
     37c:	24070050 	li	a3,80
     380:	8ec90004 	lw	t1,4(s6)
     384:	2401fffe 	li	at,-2
     388:	2404005a 	li	a0,90
     38c:	01215024 	and	t2,t1,at
     390:	aeca0004 	sw	t2,4(s6)
     394:	0c000000 	jal	0 <func_809CBC00>
     398:	2405003c 	li	a1,60
     39c:	8fbf0064 	lw	ra,100(sp)
     3a0:	d7b40030 	ldc1	$f20,48(sp)
     3a4:	d7b60038 	ldc1	$f22,56(sp)
     3a8:	8fb00040 	lw	s0,64(sp)
     3ac:	8fb10044 	lw	s1,68(sp)
     3b0:	8fb20048 	lw	s2,72(sp)
     3b4:	8fb3004c 	lw	s3,76(sp)
     3b8:	8fb40050 	lw	s4,80(sp)
     3bc:	8fb50054 	lw	s5,84(sp)
     3c0:	8fb60058 	lw	s6,88(sp)
     3c4:	8fb7005c 	lw	s7,92(sp)
     3c8:	8fbe0060 	lw	s8,96(sp)
     3cc:	03e00008 	jr	ra
     3d0:	27bd00a0 	addiu	sp,sp,160

000003d4 <func_809CBFD4>:
     3d4:	27bdffe8 	addiu	sp,sp,-24
     3d8:	afbf0014 	sw	ra,20(sp)
     3dc:	8482020a 	lh	v0,522(a0)
     3e0:	14400003 	bnez	v0,3f0 <func_809CBFD4+0x1c>
     3e4:	244effff 	addiu	t6,v0,-1
     3e8:	10000003 	b	3f8 <func_809CBFD4+0x24>
     3ec:	00001825 	move	v1,zero
     3f0:	a48e020a 	sh	t6,522(a0)
     3f4:	8483020a 	lh	v1,522(a0)
     3f8:	10600003 	beqz	v1,408 <func_809CBFD4+0x34>
     3fc:	00000000 	nop
     400:	10000003 	b	410 <func_809CBFD4+0x3c>
     404:	2402ffff 	li	v0,-1
     408:	0c000000 	jal	0 <func_809CBC00>
     40c:	00000000 	nop
     410:	8fbf0014 	lw	ra,20(sp)
     414:	27bd0018 	addiu	sp,sp,24
     418:	03e00008 	jr	ra
     41c:	00000000 	nop

00000420 <func_809CC020>:
     420:	3c010000 	lui	at,0x0
     424:	c4200000 	lwc1	$f0,0(at)
     428:	c4840220 	lwc1	$f4,544(a0)
     42c:	c4880224 	lwc1	$f8,548(a0)
     430:	8482020a 	lh	v0,522(a0)
     434:	46002180 	add.s	$f6,$f4,$f0
     438:	244effff 	addiu	t6,v0,-1
     43c:	46004280 	add.s	$f10,$f8,$f0
     440:	e4860220 	swc1	$f6,544(a0)
     444:	14400003 	bnez	v0,454 <func_809CC020+0x34>
     448:	e48a0224 	swc1	$f10,548(a0)
     44c:	10000003 	b	45c <func_809CC020+0x3c>
     450:	00001825 	move	v1,zero
     454:	a48e020a 	sh	t6,522(a0)
     458:	8483020a 	lh	v1,522(a0)
     45c:	10600003 	beqz	v1,46c <func_809CC020+0x4c>
     460:	24020001 	li	v0,1
     464:	03e00008 	jr	ra
     468:	00001025 	move	v0,zero
     46c:	03e00008 	jr	ra
     470:	00000000 	nop

00000474 <func_809CC074>:
     474:	27bdffe8 	addiu	sp,sp,-24
     478:	afbf0014 	sw	ra,20(sp)
     47c:	0c000000 	jal	0 <func_809CBC00>
     480:	afa60020 	sw	a2,32(sp)
     484:	8fa60020 	lw	a2,32(sp)
     488:	44808000 	mtc1	zero,$f16
     48c:	c4c20000 	lwc1	$f2,0(a2)
     490:	c4cc0004 	lwc1	$f12,4(a2)
     494:	c4ce0008 	lwc1	$f14,8(a2)
     498:	46021102 	mul.s	$f4,$f2,$f2
     49c:	00000000 	nop
     4a0:	460c6182 	mul.s	$f6,$f12,$f12
     4a4:	46062200 	add.s	$f8,$f4,$f6
     4a8:	460e7282 	mul.s	$f10,$f14,$f14
     4ac:	460a4000 	add.s	$f0,$f8,$f10
     4b0:	46000004 	sqrt.s	$f0,$f0
     4b4:	46100032 	c.eq.s	$f0,$f16
     4b8:	00000000 	nop
     4bc:	45010008 	bc1t	4e0 <func_809CC074+0x6c>
     4c0:	00000000 	nop
     4c4:	46001483 	div.s	$f18,$f2,$f0
     4c8:	46006103 	div.s	$f4,$f12,$f0
     4cc:	e4d20000 	swc1	$f18,0(a2)
     4d0:	46007183 	div.s	$f6,$f14,$f0
     4d4:	e4c40004 	swc1	$f4,4(a2)
     4d8:	10000004 	b	4ec <func_809CC074+0x78>
     4dc:	e4c60008 	swc1	$f6,8(a2)
     4e0:	e4d00008 	swc1	$f16,8(a2)
     4e4:	e4d00004 	swc1	$f16,4(a2)
     4e8:	e4d00000 	swc1	$f16,0(a2)
     4ec:	8fbf0014 	lw	ra,20(sp)
     4f0:	27bd0018 	addiu	sp,sp,24
     4f4:	03e00008 	jr	ra
     4f8:	00000000 	nop

000004fc <func_809CC0FC>:
     4fc:	c4820000 	lwc1	$f2,0(a0)
     500:	c48c0004 	lwc1	$f12,4(a0)
     504:	c48e0008 	lwc1	$f14,8(a0)
     508:	46021102 	mul.s	$f4,$f2,$f2
     50c:	44809000 	mtc1	zero,$f18
     510:	460c6182 	mul.s	$f6,$f12,$f12
     514:	46062200 	add.s	$f8,$f4,$f6
     518:	460e7282 	mul.s	$f10,$f14,$f14
     51c:	460a4100 	add.s	$f4,$f8,$f10
     520:	46002021 	cvt.d.s	$f0,$f4
     524:	46200004 	sqrt.d	$f0,$f0
     528:	46200420 	cvt.s.d	$f16,$f0
     52c:	46109032 	c.eq.s	$f18,$f16
     530:	00000000 	nop
     534:	45030009 	bc1tl	55c <func_809CC0FC+0x60>
     538:	e4920008 	swc1	$f18,8(a0)
     53c:	46101183 	div.s	$f6,$f2,$f16
     540:	46106203 	div.s	$f8,$f12,$f16
     544:	e4860000 	swc1	$f6,0(a0)
     548:	46107283 	div.s	$f10,$f14,$f16
     54c:	e4880004 	swc1	$f8,4(a0)
     550:	03e00008 	jr	ra
     554:	e48a0008 	swc1	$f10,8(a0)
     558:	e4920008 	swc1	$f18,8(a0)
     55c:	e4920004 	swc1	$f18,4(a0)
     560:	e4920000 	swc1	$f18,0(a0)
     564:	03e00008 	jr	ra
     568:	00000000 	nop

0000056c <func_809CC16C>:
     56c:	27bdff68 	addiu	sp,sp,-152
     570:	afbf003c 	sw	ra,60(sp)
     574:	afb00038 	sw	s0,56(sp)
     578:	f7b40030 	sdc1	$f20,48(sp)
     57c:	afa5009c 	sw	a1,156(sp)
     580:	8c8e016c 	lw	t6,364(a0)
     584:	00808025 	move	s0,a0
     588:	91cf0056 	lbu	t7,86(t6)
     58c:	31f80002 	andi	t8,t7,0x2
     590:	1300001b 	beqz	t8,600 <func_809CC16C+0x94>
     594:	00000000 	nop
     598:	8c820158 	lw	v0,344(a0)
     59c:	24840244 	addiu	a0,a0,580
     5a0:	8c48005c 	lw	t0,92(v0)
     5a4:	ac880000 	sw	t0,0(a0)
     5a8:	8c590060 	lw	t9,96(v0)
     5ac:	ac990004 	sw	t9,4(a0)
     5b0:	8c480064 	lw	t0,100(v0)
     5b4:	0c000000 	jal	0 <func_809CBC00>
     5b8:	ac880008 	sw	t0,8(a0)
     5bc:	3c014040 	lui	at,0x4040
     5c0:	44811000 	mtc1	at,$f2
     5c4:	c6060244 	lwc1	$f6,580(s0)
     5c8:	c6040250 	lwc1	$f4,592(s0)
     5cc:	c6120248 	lwc1	$f18,584(s0)
     5d0:	46023202 	mul.s	$f8,$f6,$f2
     5d4:	c6100254 	lwc1	$f16,596(s0)
     5d8:	46029182 	mul.s	$f6,$f18,$f2
     5dc:	46082280 	add.s	$f10,$f4,$f8
     5e0:	c6080258 	lwc1	$f8,600(s0)
     5e4:	46068100 	add.s	$f4,$f16,$f6
     5e8:	e60a0250 	swc1	$f10,592(s0)
     5ec:	c60a024c 	lwc1	$f10,588(s0)
     5f0:	e6040254 	swc1	$f4,596(s0)
     5f4:	46025482 	mul.s	$f18,$f10,$f2
     5f8:	46124400 	add.s	$f16,$f8,$f18
     5fc:	e6100258 	swc1	$f16,600(s0)
     600:	3c010000 	lui	at,0x0
     604:	c4240000 	lwc1	$f4,0(at)
     608:	c606025c 	lwc1	$f6,604(s0)
     60c:	c6000070 	lwc1	$f0,112(s0)
     610:	46043281 	sub.s	$f10,$f6,$f4
     614:	e60a025c 	swc1	$f10,604(s0)
     618:	c608025c 	lwc1	$f8,604(s0)
     61c:	4600403c 	c.lt.s	$f8,$f0
     620:	00000000 	nop
     624:	45020003 	bc1fl	634 <func_809CC16C+0xc8>
     628:	c6120238 	lwc1	$f18,568(s0)
     62c:	e600025c 	swc1	$f0,604(s0)
     630:	c6120238 	lwc1	$f18,568(s0)
     634:	c6100250 	lwc1	$f16,592(s0)
     638:	27a40054 	addiu	a0,sp,84
     63c:	46109180 	add.s	$f6,$f18,$f16
     640:	e7a60054 	swc1	$f6,84(sp)
     644:	c60a0254 	lwc1	$f10,596(s0)
     648:	c604023c 	lwc1	$f4,572(s0)
     64c:	c612025c 	lwc1	$f18,604(s0)
     650:	460a2200 	add.s	$f8,$f4,$f10
     654:	46124400 	add.s	$f16,$f8,$f18
     658:	e7b00058 	swc1	$f16,88(sp)
     65c:	c6040258 	lwc1	$f4,600(s0)
     660:	c6060240 	lwc1	$f6,576(s0)
     664:	46043280 	add.s	$f10,$f6,$f4
     668:	0c000000 	jal	0 <func_809CBC00>
     66c:	e7aa005c 	swc1	$f10,92(sp)
     670:	c6080024 	lwc1	$f8,36(s0)
     674:	27a50078 	addiu	a1,sp,120
     678:	27a6006c 	addiu	a2,sp,108
     67c:	e7a80078 	swc1	$f8,120(sp)
     680:	c61000bc 	lwc1	$f16,188(s0)
     684:	c6120028 	lwc1	$f18,40(s0)
     688:	3c0141c0 	lui	at,0x41c0
     68c:	44810000 	mtc1	at,$f0
     690:	46109180 	add.s	$f6,$f18,$f16
     694:	27ab0094 	addiu	t3,sp,148
     698:	240c0001 	li	t4,1
     69c:	240d0001 	li	t5,1
     6a0:	e7a6007c 	swc1	$f6,124(sp)
     6a4:	c604002c 	lwc1	$f4,44(s0)
     6a8:	240e0001 	li	t6,1
     6ac:	27af004c 	addiu	t7,sp,76
     6b0:	e7a40080 	swc1	$f4,128(sp)
     6b4:	8caa0000 	lw	t2,0(a1)
     6b8:	8ca90004 	lw	t1,4(a1)
     6bc:	27a70084 	addiu	a3,sp,132
     6c0:	acca0000 	sw	t2,0(a2)
     6c4:	8caa0008 	lw	t2,8(a1)
     6c8:	acc90004 	sw	t1,4(a2)
     6cc:	acca0008 	sw	t2,8(a2)
     6d0:	c7a80054 	lwc1	$f8,84(sp)
     6d4:	c7aa006c 	lwc1	$f10,108(sp)
     6d8:	c7a40058 	lwc1	$f4,88(sp)
     6dc:	46004482 	mul.s	$f18,$f8,$f0
     6e0:	c7a60070 	lwc1	$f6,112(sp)
     6e4:	8fa4009c 	lw	a0,156(sp)
     6e8:	46002202 	mul.s	$f8,$f4,$f0
     6ec:	afaf0024 	sw	t7,36(sp)
     6f0:	afa00020 	sw	zero,32(sp)
     6f4:	afae001c 	sw	t6,28(sp)
     6f8:	afad0018 	sw	t5,24(sp)
     6fc:	46125400 	add.s	$f16,$f10,$f18
     700:	c7b20074 	lwc1	$f18,116(sp)
     704:	afac0014 	sw	t4,20(sp)
     708:	46083280 	add.s	$f10,$f6,$f8
     70c:	e7b0006c 	swc1	$f16,108(sp)
     710:	c7b0005c 	lwc1	$f16,92(sp)
     714:	afab0010 	sw	t3,16(sp)
     718:	e7aa0070 	swc1	$f10,112(sp)
     71c:	46008102 	mul.s	$f4,$f16,$f0
     720:	248407c0 	addiu	a0,a0,1984
     724:	46049180 	add.s	$f6,$f18,$f4
     728:	0c000000 	jal	0 <func_809CBC00>
     72c:	e7a60074 	swc1	$f6,116(sp)
     730:	10400052 	beqz	v0,87c <func_809CC16C+0x310>
     734:	8fb80094 	lw	t8,148(sp)
     738:	87190008 	lh	t9,8(t8)
     73c:	3c010000 	lui	at,0x0
     740:	c4200000 	lwc1	$f0,0(at)
     744:	44994000 	mtc1	t9,$f8
     748:	27a40054 	addiu	a0,sp,84
     74c:	00803025 	move	a2,a0
     750:	468042a0 	cvt.s.w	$f10,$f8
     754:	27a50060 	addiu	a1,sp,96
     758:	46005402 	mul.s	$f16,$f10,$f0
     75c:	e7b00060 	swc1	$f16,96(sp)
     760:	8708000a 	lh	t0,10(t8)
     764:	44889000 	mtc1	t0,$f18
     768:	00000000 	nop
     76c:	46809120 	cvt.s.w	$f4,$f18
     770:	46002182 	mul.s	$f6,$f4,$f0
     774:	e7a60064 	swc1	$f6,100(sp)
     778:	8709000c 	lh	t1,12(t8)
     77c:	44894000 	mtc1	t1,$f8
     780:	00000000 	nop
     784:	468042a0 	cvt.s.w	$f10,$f8
     788:	46005402 	mul.s	$f16,$f10,$f0
     78c:	0c000000 	jal	0 <func_809CBC00>
     790:	e7b00068 	swc1	$f16,104(sp)
     794:	27aa0054 	addiu	t2,sp,84
     798:	8d4c0000 	lw	t4,0(t2)
     79c:	92020228 	lbu	v0,552(s0)
     7a0:	ae0c022c 	sw	t4,556(s0)
     7a4:	8d4b0004 	lw	t3,4(t2)
     7a8:	24420001 	addiu	v0,v0,1
     7ac:	ae0b0230 	sw	t3,560(s0)
     7b0:	8d4c0008 	lw	t4,8(t2)
     7b4:	a2020228 	sb	v0,552(s0)
     7b8:	ae0c0234 	sw	t4,564(s0)
     7bc:	0c000000 	jal	0 <func_809CBC00>
     7c0:	a3a2004b 	sb	v0,75(sp)
     7c4:	3c014120 	lui	at,0x4120
     7c8:	44819000 	mtc1	at,$f18
     7cc:	93a2004b 	lbu	v0,75(sp)
     7d0:	46120102 	mul.s	$f4,$f0,$f18
     7d4:	4600218d 	trunc.w.s	$f6,$f4
     7d8:	440e3000 	mfc1	t6,$f6
     7dc:	00000000 	nop
     7e0:	000e7c00 	sll	t7,t6,0x10
     7e4:	000fcc03 	sra	t9,t7,0x10
     7e8:	0322082a 	slt	at,t9,v0
     7ec:	50200003 	beqzl	at,7fc <func_809CC16C+0x290>
     7f0:	92080228 	lbu	t0,552(s0)
     7f4:	a2000228 	sb	zero,552(s0)
     7f8:	92080228 	lbu	t0,552(s0)
     7fc:	3c014040 	lui	at,0x4040
     800:	55000005 	bnezl	t0,818 <func_809CC16C+0x2ac>
     804:	44810000 	mtc1	at,$f0
     808:	3c010000 	lui	at,0x0
     80c:	10000003 	b	81c <func_809CC16C+0x2b0>
     810:	c4200000 	lwc1	$f0,0(at)
     814:	44810000 	mtc1	at,$f0
     818:	00000000 	nop
     81c:	c608022c 	lwc1	$f8,556(s0)
     820:	c6100230 	lwc1	$f16,560(s0)
     824:	c6040234 	lwc1	$f4,564(s0)
     828:	46004282 	mul.s	$f10,$f8,$f0
     82c:	4480a000 	mtc1	zero,$f20
     830:	02002025 	move	a0,s0
     834:	46008482 	mul.s	$f18,$f16,$f0
     838:	24053948 	li	a1,14664
     83c:	e6140258 	swc1	$f20,600(s0)
     840:	46002182 	mul.s	$f6,$f4,$f0
     844:	e60a0238 	swc1	$f10,568(s0)
     848:	e6140254 	swc1	$f20,596(s0)
     84c:	e6140250 	swc1	$f20,592(s0)
     850:	e612023c 	swc1	$f18,572(s0)
     854:	e614025c 	swc1	$f20,604(s0)
     858:	0c000000 	jal	0 <func_809CBC00>
     85c:	e6060240 	swc1	$f6,576(s0)
     860:	3c014300 	lui	at,0x4300
     864:	44814000 	mtc1	at,$f8
     868:	3c010000 	lui	at,0x0
     86c:	e6080210 	swc1	$f8,528(s0)
     870:	c42a0000 	lwc1	$f10,0(at)
     874:	1000004b 	b	9a4 <func_809CC16C+0x438>
     878:	e60a0214 	swc1	$f10,532(s0)
     87c:	96180088 	lhu	t8,136(s0)
     880:	c7b00058 	lwc1	$f16,88(sp)
     884:	33090020 	andi	t1,t8,0x20
     888:	51200047 	beqzl	t1,9a8 <func_809CC16C+0x43c>
     88c:	c6120238 	lwc1	$f18,568(s0)
     890:	4480a000 	mtc1	zero,$f20
     894:	27a40054 	addiu	a0,sp,84
     898:	3c013f80 	lui	at,0x3f80
     89c:	4614803c 	c.lt.s	$f16,$f20
     8a0:	00803025 	move	a2,a0
     8a4:	27a50060 	addiu	a1,sp,96
     8a8:	4502003f 	bc1fl	9a8 <func_809CC16C+0x43c>
     8ac:	c6120238 	lwc1	$f18,568(s0)
     8b0:	44819000 	mtc1	at,$f18
     8b4:	e7b40068 	swc1	$f20,104(sp)
     8b8:	e7b40060 	swc1	$f20,96(sp)
     8bc:	0c000000 	jal	0 <func_809CBC00>
     8c0:	e7b20064 	swc1	$f18,100(sp)
     8c4:	27aa0054 	addiu	t2,sp,84
     8c8:	8d4c0000 	lw	t4,0(t2)
     8cc:	92020228 	lbu	v0,552(s0)
     8d0:	ae0c022c 	sw	t4,556(s0)
     8d4:	8d4b0004 	lw	t3,4(t2)
     8d8:	24420001 	addiu	v0,v0,1
     8dc:	ae0b0230 	sw	t3,560(s0)
     8e0:	8d4c0008 	lw	t4,8(t2)
     8e4:	a2020228 	sb	v0,552(s0)
     8e8:	ae0c0234 	sw	t4,564(s0)
     8ec:	0c000000 	jal	0 <func_809CBC00>
     8f0:	a3a2004b 	sb	v0,75(sp)
     8f4:	3c014120 	lui	at,0x4120
     8f8:	44812000 	mtc1	at,$f4
     8fc:	93a2004b 	lbu	v0,75(sp)
     900:	46040182 	mul.s	$f6,$f0,$f4
     904:	4600320d 	trunc.w.s	$f8,$f6
     908:	440e4000 	mfc1	t6,$f8
     90c:	00000000 	nop
     910:	000e7c00 	sll	t7,t6,0x10
     914:	000fcc03 	sra	t9,t7,0x10
     918:	0322082a 	slt	at,t9,v0
     91c:	50200003 	beqzl	at,92c <func_809CC16C+0x3c0>
     920:	92080228 	lbu	t0,552(s0)
     924:	a2000228 	sb	zero,552(s0)
     928:	92080228 	lbu	t0,552(s0)
     92c:	3c014040 	lui	at,0x4040
     930:	55000005 	bnezl	t0,948 <func_809CC16C+0x3dc>
     934:	44810000 	mtc1	at,$f0
     938:	3c010000 	lui	at,0x0
     93c:	10000003 	b	94c <func_809CC16C+0x3e0>
     940:	c4200000 	lwc1	$f0,0(at)
     944:	44810000 	mtc1	at,$f0
     948:	00000000 	nop
     94c:	c60a022c 	lwc1	$f10,556(s0)
     950:	c6120230 	lwc1	$f18,560(s0)
     954:	c6060234 	lwc1	$f6,564(s0)
     958:	46005402 	mul.s	$f16,$f10,$f0
     95c:	e6140258 	swc1	$f20,600(s0)
     960:	e6140254 	swc1	$f20,596(s0)
     964:	46009102 	mul.s	$f4,$f18,$f0
     968:	e6140250 	swc1	$f20,592(s0)
     96c:	e614025c 	swc1	$f20,604(s0)
     970:	46003202 	mul.s	$f8,$f6,$f0
     974:	e6100238 	swc1	$f16,568(s0)
     978:	02002025 	move	a0,s0
     97c:	24053948 	li	a1,14664
     980:	e604023c 	swc1	$f4,572(s0)
     984:	0c000000 	jal	0 <func_809CBC00>
     988:	e6080240 	swc1	$f8,576(s0)
     98c:	3c014300 	lui	at,0x4300
     990:	44815000 	mtc1	at,$f10
     994:	3c010000 	lui	at,0x0
     998:	e60a0210 	swc1	$f10,528(s0)
     99c:	c4300000 	lwc1	$f16,0(at)
     9a0:	e6100214 	swc1	$f16,532(s0)
     9a4:	c6120238 	lwc1	$f18,568(s0)
     9a8:	c6040250 	lwc1	$f4,592(s0)
     9ac:	c608023c 	lwc1	$f8,572(s0)
     9b0:	c60a0254 	lwc1	$f10,596(s0)
     9b4:	46049180 	add.s	$f6,$f18,$f4
     9b8:	c612025c 	lwc1	$f18,604(s0)
     9bc:	4480a000 	mtc1	zero,$f20
     9c0:	460a4400 	add.s	$f16,$f8,$f10
     9c4:	e606005c 	swc1	$f6,92(s0)
     9c8:	c6060240 	lwc1	$f6,576(s0)
     9cc:	c6080258 	lwc1	$f8,600(s0)
     9d0:	46128100 	add.s	$f4,$f16,$f18
     9d4:	3c063e99 	lui	a2,0x3e99
     9d8:	3c073dcc 	lui	a3,0x3dcc
     9dc:	46083280 	add.s	$f10,$f6,$f8
     9e0:	4405a000 	mfc1	a1,$f20
     9e4:	e6040060 	swc1	$f4,96(s0)
     9e8:	34e7cccd 	ori	a3,a3,0xcccd
     9ec:	e60a0064 	swc1	$f10,100(s0)
     9f0:	34c6999a 	ori	a2,a2,0x999a
     9f4:	0c000000 	jal	0 <func_809CBC00>
     9f8:	26040250 	addiu	a0,s0,592
     9fc:	4405a000 	mfc1	a1,$f20
     a00:	3c063e99 	lui	a2,0x3e99
     a04:	3c073dcc 	lui	a3,0x3dcc
     a08:	34e7cccd 	ori	a3,a3,0xcccd
     a0c:	34c6999a 	ori	a2,a2,0x999a
     a10:	0c000000 	jal	0 <func_809CBC00>
     a14:	26040254 	addiu	a0,s0,596
     a18:	4405a000 	mfc1	a1,$f20
     a1c:	3c063e99 	lui	a2,0x3e99
     a20:	3c073dcc 	lui	a3,0x3dcc
     a24:	34e7cccd 	ori	a3,a3,0xcccd
     a28:	34c6999a 	ori	a2,a2,0x999a
     a2c:	0c000000 	jal	0 <func_809CBC00>
     a30:	26040258 	addiu	a0,s0,600
     a34:	8fbf003c 	lw	ra,60(sp)
     a38:	d7b40030 	ldc1	$f20,48(sp)
     a3c:	8fb00038 	lw	s0,56(sp)
     a40:	03e00008 	jr	ra
     a44:	27bd0098 	addiu	sp,sp,152

00000a48 <func_809CC648>:
     a48:	90820161 	lbu	v0,353(a0)
     a4c:	304e0002 	andi	t6,v0,0x2
     a50:	000e782b 	sltu	t7,zero,t6
     a54:	55e00004 	bnezl	t7,a68 <func_809CC648+0x20>
     a58:	8c99016c 	lw	t9,364(a0)
     a5c:	03e00008 	jr	ra
     a60:	00001025 	move	v0,zero
     a64:	8c99016c 	lw	t9,364(a0)
     a68:	3058fffd 	andi	t8,v0,0xfffd
     a6c:	a0980161 	sb	t8,353(a0)
     a70:	93280056 	lbu	t0,86(t9)
     a74:	240a0008 	li	t2,8
     a78:	24020001 	li	v0,1
     a7c:	31090002 	andi	t1,t0,0x2
     a80:	51200016 	beqzl	t1,adc <func_809CC648+0x94>
     a84:	a48a0208 	sh	t2,520(a0)
     a88:	8c830158 	lw	v1,344(a0)
     a8c:	3c014120 	lui	at,0x4120
     a90:	44810000 	mtc1	at,$f0
     a94:	c464005c 	lwc1	$f4,92(v1)
     a98:	3c014300 	lui	at,0x4300
     a9c:	00001025 	move	v0,zero
     aa0:	46002183 	div.s	$f6,$f4,$f0
     aa4:	44812000 	mtc1	at,$f4
     aa8:	3c010000 	lui	at,0x0
     aac:	e48601f0 	swc1	$f6,496(a0)
     ab0:	c4680060 	lwc1	$f8,96(v1)
     ab4:	46004283 	div.s	$f10,$f8,$f0
     ab8:	e48a01f4 	swc1	$f10,500(a0)
     abc:	c4700064 	lwc1	$f16,100(v1)
     ac0:	e4840210 	swc1	$f4,528(a0)
     ac4:	46008483 	div.s	$f18,$f16,$f0
     ac8:	e49201f8 	swc1	$f18,504(a0)
     acc:	c4260000 	lwc1	$f6,0(at)
     ad0:	03e00008 	jr	ra
     ad4:	e4860214 	swc1	$f6,532(a0)
     ad8:	a48a0208 	sh	t2,520(a0)
     adc:	03e00008 	jr	ra
     ae0:	00000000 	nop

00000ae4 <func_809CC6E4>:
     ae4:	27bdffe8 	addiu	sp,sp,-24
     ae8:	afbf0014 	sw	ra,20(sp)
     aec:	84820208 	lh	v0,520(a0)
     af0:	14400003 	bnez	v0,b00 <func_809CC6E4+0x1c>
     af4:	244effff 	addiu	t6,v0,-1
     af8:	10000003 	b	b08 <func_809CC6E4+0x24>
     afc:	00001825 	move	v1,zero
     b00:	a48e0208 	sh	t6,520(a0)
     b04:	84830208 	lh	v1,520(a0)
     b08:	14600006 	bnez	v1,b24 <func_809CC6E4+0x40>
     b0c:	00000000 	nop
     b10:	8c98014c 	lw	t8,332(a0)
     b14:	3c0f0000 	lui	t7,0x0
     b18:	25ef0000 	addiu	t7,t7,0
     b1c:	55f80004 	bnel	t7,t8,b30 <func_809CC6E4+0x4c>
     b20:	90820163 	lbu	v0,355(a0)
     b24:	1000000f 	b	b64 <func_809CC6E4+0x80>
     b28:	00001025 	move	v0,zero
     b2c:	90820163 	lbu	v0,355(a0)
     b30:	30590001 	andi	t9,v0,0x1
     b34:	13200009 	beqz	t9,b5c <func_809CC6E4+0x78>
     b38:	3048fffe 	andi	t0,v0,0xfffe
     b3c:	a0880163 	sb	t0,355(a0)
     b40:	0c000000 	jal	0 <func_809CBC00>
     b44:	afa40018 	sw	a0,24(sp)
     b48:	8fa40018 	lw	a0,24(sp)
     b4c:	24090008 	li	t1,8
     b50:	24020001 	li	v0,1
     b54:	10000003 	b	b64 <func_809CC6E4+0x80>
     b58:	a4890208 	sh	t1,520(a0)
     b5c:	0c000000 	jal	0 <func_809CBC00>
     b60:	00000000 	nop
     b64:	8fbf0014 	lw	ra,20(sp)
     b68:	27bd0018 	addiu	sp,sp,24
     b6c:	03e00008 	jr	ra
     b70:	00000000 	nop

00000b74 <func_809CC774>:
     b74:	27bdffc8 	addiu	sp,sp,-56
     b78:	afbf0014 	sw	ra,20(sp)
     b7c:	8c82016c 	lw	v0,364(a0)
     b80:	00803025 	move	a2,a0
     b84:	27a40028 	addiu	a0,sp,40
     b88:	844e0028 	lh	t6,40(v0)
     b8c:	24420028 	addiu	v0,v0,40
     b90:	27a5001c 	addiu	a1,sp,28
     b94:	448e2000 	mtc1	t6,$f4
     b98:	00000000 	nop
     b9c:	468021a0 	cvt.s.w	$f6,$f4
     ba0:	e7a60028 	swc1	$f6,40(sp)
     ba4:	844f0002 	lh	t7,2(v0)
     ba8:	448f4000 	mtc1	t7,$f8
     bac:	00000000 	nop
     bb0:	468042a0 	cvt.s.w	$f10,$f8
     bb4:	e7aa002c 	swc1	$f10,44(sp)
     bb8:	84580004 	lh	t8,4(v0)
     bbc:	afa60038 	sw	a2,56(sp)
     bc0:	afa20034 	sw	v0,52(sp)
     bc4:	44988000 	mtc1	t8,$f16
     bc8:	00000000 	nop
     bcc:	468084a0 	cvt.s.w	$f18,$f16
     bd0:	0c000000 	jal	0 <func_809CBC00>
     bd4:	e7b20030 	swc1	$f18,48(sp)
     bd8:	c7a4001c 	lwc1	$f4,28(sp)
     bdc:	8fa20034 	lw	v0,52(sp)
     be0:	8fa60038 	lw	a2,56(sp)
     be4:	4600218d 	trunc.w.s	$f6,$f4
     be8:	844d0006 	lh	t5,6(v0)
     bec:	3c013f80 	lui	at,0x3f80
     bf0:	44812000 	mtc1	at,$f4
     bf4:	44083000 	mfc1	t0,$f6
     bf8:	00000000 	nop
     bfc:	a4480008 	sh	t0,8(v0)
     c00:	c7a80020 	lwc1	$f8,32(sp)
     c04:	8c480000 	lw	t0,0(v0)
     c08:	4600428d 	trunc.w.s	$f10,$f8
     c0c:	440a5000 	mfc1	t2,$f10
     c10:	448d5000 	mtc1	t5,$f10
     c14:	a44a000a 	sh	t2,10(v0)
     c18:	c7b00024 	lwc1	$f16,36(sp)
     c1c:	4600848d 	trunc.w.s	$f18,$f16
     c20:	46805420 	cvt.s.w	$f16,$f10
     c24:	440c9000 	mfc1	t4,$f18
     c28:	00000000 	nop
     c2c:	a44c000c 	sh	t4,12(v0)
     c30:	c4c60220 	lwc1	$f6,544(a2)
     c34:	46062200 	add.s	$f8,$f4,$f6
     c38:	46088482 	mul.s	$f18,$f16,$f8
     c3c:	4600910d 	trunc.w.s	$f4,$f18
     c40:	440f2000 	mfc1	t7,$f4
     c44:	00000000 	nop
     c48:	a44f000e 	sh	t7,14(v0)
     c4c:	8cd8016c 	lw	t8,364(a2)
     c50:	af080068 	sw	t0,104(t8)
     c54:	8c590004 	lw	t9,4(v0)
     c58:	af19006c 	sw	t9,108(t8)
     c5c:	8c480008 	lw	t0,8(v0)
     c60:	af080070 	sw	t0,112(t8)
     c64:	8c59000c 	lw	t9,12(v0)
     c68:	af190074 	sw	t9,116(t8)
     c6c:	8c480010 	lw	t0,16(v0)
     c70:	af080078 	sw	t0,120(t8)
     c74:	8c590014 	lw	t9,20(v0)
     c78:	af19007c 	sw	t9,124(t8)
     c7c:	8fbf0014 	lw	ra,20(sp)
     c80:	27bd0038 	addiu	sp,sp,56
     c84:	03e00008 	jr	ra
     c88:	00000000 	nop

00000c8c <EnBubble_Init>:
     c8c:	27bdffc8 	addiu	sp,sp,-56
     c90:	afb00020 	sw	s0,32(sp)
     c94:	00808025 	move	s0,a0
     c98:	afbf0024 	sw	ra,36(sp)
     c9c:	afa5003c 	sw	a1,60(sp)
     ca0:	3c060000 	lui	a2,0x0
     ca4:	3c073e4c 	lui	a3,0x3e4c
     ca8:	34e7cccd 	ori	a3,a3,0xcccd
     cac:	24c60000 	addiu	a2,a2,0
     cb0:	3c054180 	lui	a1,0x4180
     cb4:	0c000000 	jal	0 <func_809CBC00>
     cb8:	248400b4 	addiu	a0,a0,180
     cbc:	26050150 	addiu	a1,s0,336
     cc0:	afa50028 	sw	a1,40(sp)
     cc4:	0c000000 	jal	0 <func_809CBC00>
     cc8:	8fa4003c 	lw	a0,60(sp)
     ccc:	3c070000 	lui	a3,0x0
     cd0:	260e0170 	addiu	t6,s0,368
     cd4:	8fa50028 	lw	a1,40(sp)
     cd8:	afae0010 	sw	t6,16(sp)
     cdc:	24e70000 	addiu	a3,a3,0
     ce0:	8fa4003c 	lw	a0,60(sp)
     ce4:	0c000000 	jal	0 <func_809CBC00>
     ce8:	02003025 	move	a2,s0
     cec:	0c000000 	jal	0 <func_809CBC00>
     cf0:	24040009 	li	a0,9
     cf4:	3c060000 	lui	a2,0x0
     cf8:	24c60000 	addiu	a2,a2,0
     cfc:	26040098 	addiu	a0,s0,152
     d00:	0c000000 	jal	0 <func_809CBC00>
     d04:	00402825 	move	a1,v0
     d08:	240f0016 	li	t7,22
     d0c:	0c000000 	jal	0 <func_809CBC00>
     d10:	a20f0117 	sb	t7,279(s0)
     d14:	0c000000 	jal	0 <func_809CBC00>
     d18:	e600022c 	swc1	$f0,556(s0)
     d1c:	0c000000 	jal	0 <func_809CBC00>
     d20:	e6000230 	swc1	$f0,560(s0)
     d24:	e6000234 	swc1	$f0,564(s0)
     d28:	0c000000 	jal	0 <func_809CBC00>
     d2c:	2604022c 	addiu	a0,s0,556
     d30:	3c014040 	lui	at,0x4040
     d34:	44810000 	mtc1	at,$f0
     d38:	c604022c 	lwc1	$f4,556(s0)
     d3c:	c6080230 	lwc1	$f8,560(s0)
     d40:	c6100234 	lwc1	$f16,564(s0)
     d44:	46002182 	mul.s	$f6,$f4,$f0
     d48:	02002025 	move	a0,s0
     d4c:	24050000 	li	a1,0
     d50:	46004282 	mul.s	$f10,$f8,$f0
     d54:	00000000 	nop
     d58:	46008482 	mul.s	$f18,$f16,$f0
     d5c:	e6060238 	swc1	$f6,568(s0)
     d60:	e60a023c 	swc1	$f10,572(s0)
     d64:	0c000000 	jal	0 <func_809CBC00>
     d68:	e6120240 	swc1	$f18,576(s0)
     d6c:	3c180000 	lui	t8,0x0
     d70:	27180000 	addiu	t8,t8,0
     d74:	ae18014c 	sw	t8,332(s0)
     d78:	8fbf0024 	lw	ra,36(sp)
     d7c:	8fb00020 	lw	s0,32(sp)
     d80:	27bd0038 	addiu	sp,sp,56
     d84:	03e00008 	jr	ra
     d88:	00000000 	nop

00000d8c <EnBubble_Destroy>:
     d8c:	27bdffe8 	addiu	sp,sp,-24
     d90:	00803025 	move	a2,a0
     d94:	afbf0014 	sw	ra,20(sp)
     d98:	00a02025 	move	a0,a1
     d9c:	0c000000 	jal	0 <func_809CBC00>
     da0:	24c50150 	addiu	a1,a2,336
     da4:	8fbf0014 	lw	ra,20(sp)
     da8:	27bd0018 	addiu	sp,sp,24
     dac:	03e00008 	jr	ra
     db0:	00000000 	nop

00000db4 <func_809CC9B4>:
     db4:	27bdffd8 	addiu	sp,sp,-40
     db8:	afbf001c 	sw	ra,28(sp)
     dbc:	afb10018 	sw	s1,24(sp)
     dc0:	afb00014 	sw	s0,20(sp)
     dc4:	00808025 	move	s0,a0
     dc8:	0c000000 	jal	0 <func_809CBC00>
     dcc:	00a08825 	move	s1,a1
     dd0:	10400008 	beqz	v0,df4 <func_809CC9B4+0x40>
     dd4:	02002025 	move	a0,s0
     dd8:	0c000000 	jal	0 <func_809CBC00>
     ddc:	02002025 	move	a0,s0
     de0:	3c0e0000 	lui	t6,0x0
     de4:	25ce0000 	addiu	t6,t6,0
     de8:	a602020a 	sh	v0,522(s0)
     dec:	10000017 	b	e4c <func_809CC9B4+0x98>
     df0:	ae0e014c 	sw	t6,332(s0)
     df4:	0c000000 	jal	0 <func_809CBC00>
     df8:	02202825 	move	a1,s1
     dfc:	3c013f80 	lui	at,0x3f80
     e00:	44813000 	mtc1	at,$f6
     e04:	c6040224 	lwc1	$f4,548(s0)
     e08:	3c014180 	lui	at,0x4180
     e0c:	44815000 	mtc1	at,$f10
     e10:	46062200 	add.s	$f8,$f4,$f6
     e14:	3c010001 	lui	at,0x1
     e18:	34211e60 	ori	at,at,0x1e60
     e1c:	02212821 	addu	a1,s1,at
     e20:	460a4402 	mul.s	$f16,$f8,$f10
     e24:	26060150 	addiu	a2,s0,336
     e28:	02202025 	move	a0,s1
     e2c:	e61000bc 	swc1	$f16,188(s0)
     e30:	afa60020 	sw	a2,32(sp)
     e34:	0c000000 	jal	0 <func_809CBC00>
     e38:	afa50024 	sw	a1,36(sp)
     e3c:	8fa50024 	lw	a1,36(sp)
     e40:	8fa60020 	lw	a2,32(sp)
     e44:	0c000000 	jal	0 <func_809CBC00>
     e48:	02202025 	move	a0,s1
     e4c:	8fbf001c 	lw	ra,28(sp)
     e50:	8fb00014 	lw	s0,20(sp)
     e54:	8fb10018 	lw	s1,24(sp)
     e58:	03e00008 	jr	ra
     e5c:	27bd0028 	addiu	sp,sp,40

00000e60 <func_809CCA60>:
     e60:	27bdffe8 	addiu	sp,sp,-24
     e64:	afbf0014 	sw	ra,20(sp)
     e68:	afa40018 	sw	a0,24(sp)
     e6c:	0c000000 	jal	0 <func_809CBC00>
     e70:	afa5001c 	sw	a1,28(sp)
     e74:	04400008 	bltz	v0,e98 <func_809CCA60+0x38>
     e78:	8fa4001c 	lw	a0,28(sp)
     e7c:	8fa50018 	lw	a1,24(sp)
     e80:	2406003c 	li	a2,60
     e84:	24073949 	li	a3,14665
     e88:	0c000000 	jal	0 <func_809CBC00>
     e8c:	24a50024 	addiu	a1,a1,36
     e90:	0c000000 	jal	0 <func_809CBC00>
     e94:	8fa40018 	lw	a0,24(sp)
     e98:	8fbf0014 	lw	ra,20(sp)
     e9c:	27bd0018 	addiu	sp,sp,24
     ea0:	03e00008 	jr	ra
     ea4:	00000000 	nop

00000ea8 <func_809CCAA8>:
     ea8:	27bdffe8 	addiu	sp,sp,-24
     eac:	afbf0014 	sw	ra,20(sp)
     eb0:	afa5001c 	sw	a1,28(sp)
     eb4:	0c000000 	jal	0 <func_809CBC00>
     eb8:	afa40018 	sw	a0,24(sp)
     ebc:	04400008 	bltz	v0,ee0 <func_809CCAA8+0x38>
     ec0:	8fa40018 	lw	a0,24(sp)
     ec4:	3c0e0000 	lui	t6,0x0
     ec8:	3c0f0000 	lui	t7,0x0
     ecc:	25ce0000 	addiu	t6,t6,0
     ed0:	25ef0000 	addiu	t7,t7,0
     ed4:	ac8e00c0 	sw	t6,192(a0)
     ed8:	a482020a 	sh	v0,522(a0)
     edc:	ac8f014c 	sw	t7,332(a0)
     ee0:	8fbf0014 	lw	ra,20(sp)
     ee4:	27bd0018 	addiu	sp,sp,24
     ee8:	03e00008 	jr	ra
     eec:	00000000 	nop

00000ef0 <func_809CCAF0>:
     ef0:	27bdffe0 	addiu	sp,sp,-32
     ef4:	afbf0014 	sw	ra,20(sp)
     ef8:	afa50024 	sw	a1,36(sp)
     efc:	0c000000 	jal	0 <func_809CBC00>
     f00:	afa40020 	sw	a0,32(sp)
     f04:	10400004 	beqz	v0,f18 <func_809CCAF0+0x28>
     f08:	8fa70020 	lw	a3,32(sp)
     f0c:	3c0e0000 	lui	t6,0x0
     f10:	25ce0000 	addiu	t6,t6,0
     f14:	acee014c 	sw	t6,332(a3)
     f18:	8fa40024 	lw	a0,36(sp)
     f1c:	3c010001 	lui	at,0x1
     f20:	34211e60 	ori	at,at,0x1e60
     f24:	24e60150 	addiu	a2,a3,336
     f28:	00812821 	addu	a1,a0,at
     f2c:	afa5001c 	sw	a1,28(sp)
     f30:	0c000000 	jal	0 <func_809CBC00>
     f34:	afa60018 	sw	a2,24(sp)
     f38:	8fa5001c 	lw	a1,28(sp)
     f3c:	8fa60018 	lw	a2,24(sp)
     f40:	0c000000 	jal	0 <func_809CBC00>
     f44:	8fa40024 	lw	a0,36(sp)
     f48:	8fbf0014 	lw	ra,20(sp)
     f4c:	27bd0020 	addiu	sp,sp,32
     f50:	03e00008 	jr	ra
     f54:	00000000 	nop

00000f58 <EnBubble_Update>:
     f58:	27bdffd8 	addiu	sp,sp,-40
     f5c:	afbf0024 	sw	ra,36(sp)
     f60:	afb00020 	sw	s0,32(sp)
     f64:	00808025 	move	s0,a0
     f68:	0c000000 	jal	0 <func_809CBC00>
     f6c:	afa5002c 	sw	a1,44(sp)
     f70:	3c014180 	lui	at,0x4180
     f74:	44810000 	mtc1	at,$f0
     f78:	44802000 	mtc1	zero,$f4
     f7c:	240e0007 	li	t6,7
     f80:	44060000 	mfc1	a2,$f0
     f84:	44070000 	mfc1	a3,$f0
     f88:	afae0014 	sw	t6,20(sp)
     f8c:	8fa4002c 	lw	a0,44(sp)
     f90:	02002825 	move	a1,s0
     f94:	0c000000 	jal	0 <func_809CBC00>
     f98:	e7a40010 	swc1	$f4,16(sp)
     f9c:	8e19014c 	lw	t9,332(s0)
     fa0:	02002025 	move	a0,s0
     fa4:	8fa5002c 	lw	a1,44(sp)
     fa8:	0320f809 	jalr	t9
     fac:	00000000 	nop
     fb0:	02002025 	move	a0,s0
     fb4:	0c000000 	jal	0 <func_809CBC00>
     fb8:	8e0500bc 	lw	a1,188(s0)
     fbc:	8fbf0024 	lw	ra,36(sp)
     fc0:	8fb00020 	lw	s0,32(sp)
     fc4:	27bd0028 	addiu	sp,sp,40
     fc8:	03e00008 	jr	ra
     fcc:	00000000 	nop

00000fd0 <EnBubble_Draw>:
     fd0:	27bdffa8 	addiu	sp,sp,-88
     fd4:	afb10020 	sw	s1,32(sp)
     fd8:	00a08825 	move	s1,a1
     fdc:	afbf0024 	sw	ra,36(sp)
     fe0:	afb0001c 	sw	s0,28(sp)
     fe4:	8ca50000 	lw	a1,0(a1)
     fe8:	00808025 	move	s0,a0
     fec:	3c060000 	lui	a2,0x0
     ff0:	24c60000 	addiu	a2,a2,0
     ff4:	27a4003c 	addiu	a0,sp,60
     ff8:	24070497 	li	a3,1175
     ffc:	0c000000 	jal	0 <func_809CBC00>
    1000:	afa5004c 	sw	a1,76(sp)
    1004:	3c0e0000 	lui	t6,0x0
    1008:	25ce0000 	addiu	t6,t6,0
    100c:	afae0030 	sw	t6,48(sp)
    1010:	8e0f014c 	lw	t7,332(s0)
    1014:	11cf0062 	beq	t6,t7,11a0 <EnBubble_Draw+0x1d0>
    1018:	00000000 	nop
    101c:	0c000000 	jal	0 <func_809CBC00>
    1020:	8e240000 	lw	a0,0(s1)
    1024:	44802000 	mtc1	zero,$f4
    1028:	3c063e4c 	lui	a2,0x3e4c
    102c:	34c6cccd 	ori	a2,a2,0xcccd
    1030:	26040210 	addiu	a0,s0,528
    1034:	3c054180 	lui	a1,0x4180
    1038:	3c07447a 	lui	a3,0x447a
    103c:	0c000000 	jal	0 <func_809CBC00>
    1040:	e7a40010 	swc1	$f4,16(sp)
    1044:	44803000 	mtc1	zero,$f6
    1048:	3c053da3 	lui	a1,0x3da3
    104c:	3c063e4c 	lui	a2,0x3e4c
    1050:	34c6cccd 	ori	a2,a2,0xcccd
    1054:	34a5d70a 	ori	a1,a1,0xd70a
    1058:	26040214 	addiu	a0,s0,532
    105c:	3c07447a 	lui	a3,0x447a
    1060:	0c000000 	jal	0 <func_809CBC00>
    1064:	e7a60010 	swc1	$f6,16(sp)
    1068:	3c010001 	lui	at,0x1
    106c:	34211da0 	ori	at,at,0x1da0
    1070:	0c000000 	jal	0 <func_809CBC00>
    1074:	02212021 	addu	a0,s1,at
    1078:	3c013f80 	lui	at,0x3f80
    107c:	44810000 	mtc1	at,$f0
    1080:	c6080220 	lwc1	$f8,544(s0)
    1084:	c60a0224 	lwc1	$f10,548(s0)
    1088:	44060000 	mfc1	a2,$f0
    108c:	24070001 	li	a3,1
    1090:	46004300 	add.s	$f12,$f8,$f0
    1094:	0c000000 	jal	0 <func_809CBC00>
    1098:	46005380 	add.s	$f14,$f10,$f0
    109c:	8e38009c 	lw	t8,156(s1)
    10a0:	3c014f80 	lui	at,0x4f80
    10a4:	44988000 	mtc1	t8,$f16
    10a8:	07010004 	bgez	t8,10bc <EnBubble_Draw+0xec>
    10ac:	468084a0 	cvt.s.w	$f18,$f16
    10b0:	44812000 	mtc1	at,$f4
    10b4:	00000000 	nop
    10b8:	46049480 	add.s	$f18,$f18,$f4
    10bc:	3c010000 	lui	at,0x0
    10c0:	c4260000 	lwc1	$f6,0(at)
    10c4:	c60a0210 	lwc1	$f10,528(s0)
    10c8:	24050001 	li	a1,1
    10cc:	46069202 	mul.s	$f8,$f18,$f6
    10d0:	00000000 	nop
    10d4:	460a4302 	mul.s	$f12,$f8,$f10
    10d8:	0c000000 	jal	0 <func_809CBC00>
    10dc:	00000000 	nop
    10e0:	3c013f80 	lui	at,0x3f80
    10e4:	44817000 	mtc1	at,$f14
    10e8:	c6100214 	lwc1	$f16,532(s0)
    10ec:	24070001 	li	a3,1
    10f0:	44067000 	mfc1	a2,$f14
    10f4:	0c000000 	jal	0 <func_809CBC00>
    10f8:	460e8300 	add.s	$f12,$f16,$f14
    10fc:	8e39009c 	lw	t9,156(s1)
    1100:	3c014f80 	lui	at,0x4f80
    1104:	44992000 	mtc1	t9,$f4
    1108:	07210004 	bgez	t9,111c <EnBubble_Draw+0x14c>
    110c:	468024a0 	cvt.s.w	$f18,$f4
    1110:	44813000 	mtc1	at,$f6
    1114:	00000000 	nop
    1118:	46069480 	add.s	$f18,$f18,$f6
    111c:	3c010000 	lui	at,0x0
    1120:	c42a0000 	lwc1	$f10,0(at)
    1124:	46009207 	neg.s	$f8,$f18
    1128:	c6040210 	lwc1	$f4,528(s0)
    112c:	460a4402 	mul.s	$f16,$f8,$f10
    1130:	24050001 	li	a1,1
    1134:	46048302 	mul.s	$f12,$f16,$f4
    1138:	0c000000 	jal	0 <func_809CBC00>
    113c:	00000000 	nop
    1140:	8fa7004c 	lw	a3,76(sp)
    1144:	3c09da38 	lui	t1,0xda38
    1148:	35290003 	ori	t1,t1,0x3
    114c:	8ce202d0 	lw	v0,720(a3)
    1150:	3c050000 	lui	a1,0x0
    1154:	24a50000 	addiu	a1,a1,0
    1158:	24480008 	addiu	t0,v0,8
    115c:	ace802d0 	sw	t0,720(a3)
    1160:	ac490000 	sw	t1,0(v0)
    1164:	8e240000 	lw	a0,0(s1)
    1168:	240604c4 	li	a2,1220
    116c:	0c000000 	jal	0 <func_809CBC00>
    1170:	afa20038 	sw	v0,56(sp)
    1174:	8fa30038 	lw	v1,56(sp)
    1178:	3c0d0600 	lui	t5,0x600
    117c:	25ad1000 	addiu	t5,t5,4096
    1180:	ac620004 	sw	v0,4(v1)
    1184:	8faa004c 	lw	t2,76(sp)
    1188:	3c0cde00 	lui	t4,0xde00
    118c:	8d4202d0 	lw	v0,720(t2)
    1190:	244b0008 	addiu	t3,v0,8
    1194:	ad4b02d0 	sw	t3,720(t2)
    1198:	ac4d0004 	sw	t5,4(v0)
    119c:	ac4c0000 	sw	t4,0(v0)
    11a0:	3c060000 	lui	a2,0x0
    11a4:	24c60000 	addiu	a2,a2,0
    11a8:	27a4003c 	addiu	a0,sp,60
    11ac:	8e250000 	lw	a1,0(s1)
    11b0:	0c000000 	jal	0 <func_809CBC00>
    11b4:	240704ca 	li	a3,1226
    11b8:	8fae0030 	lw	t6,48(sp)
    11bc:	8e0f014c 	lw	t7,332(s0)
    11c0:	3c013f80 	lui	at,0x3f80
    11c4:	51cf000b 	beql	t6,t7,11f4 <EnBubble_Draw+0x224>
    11c8:	8fbf0024 	lw	ra,36(sp)
    11cc:	c6060220 	lwc1	$f6,544(s0)
    11d0:	44819000 	mtc1	at,$f18
    11d4:	3c010000 	lui	at,0x0
    11d8:	c42a0000 	lwc1	$f10,0(at)
    11dc:	46123200 	add.s	$f8,$f6,$f18
    11e0:	02002025 	move	a0,s0
    11e4:	460a4402 	mul.s	$f16,$f8,$f10
    11e8:	0c000000 	jal	0 <func_809CBC00>
    11ec:	e61000c4 	swc1	$f16,196(s0)
    11f0:	8fbf0024 	lw	ra,36(sp)
    11f4:	8fb0001c 	lw	s0,28(sp)
    11f8:	8fb10020 	lw	s1,32(sp)
    11fc:	03e00008 	jr	ra
    1200:	27bd0058 	addiu	sp,sp,88
	...
