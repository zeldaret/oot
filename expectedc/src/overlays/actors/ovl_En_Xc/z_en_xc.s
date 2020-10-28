
build/src/overlays/actors/ovl_En_Xc/z_en_xc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B3C1E0>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	00803025 	move	a2,a0
       8:	afa50024 	sw	a1,36(sp)
       c:	00a02025 	move	a0,a1
      10:	afbf0014 	sw	ra,20(sp)
      14:	24c502c0 	addiu	a1,a2,704
      18:	afa50018 	sw	a1,24(sp)
      1c:	0c000000 	jal	0 <func_80B3C1E0>
      20:	afa60020 	sw	a2,32(sp)
      24:	3c070000 	lui	a3,0x0
      28:	8fa50018 	lw	a1,24(sp)
      2c:	8fa60020 	lw	a2,32(sp)
      30:	24e70000 	addiu	a3,a3,0
      34:	0c000000 	jal	0 <func_80B3C1E0>
      38:	8fa40024 	lw	a0,36(sp)
      3c:	8fbf0014 	lw	ra,20(sp)
      40:	27bd0020 	addiu	sp,sp,32
      44:	03e00008 	jr	ra
      48:	00000000 	nop

0000004c <func_80B3C22C>:
      4c:	27bdffd0 	addiu	sp,sp,-48
      50:	afbf0014 	sw	ra,20(sp)
      54:	afa50034 	sw	a1,52(sp)
      58:	248602c0 	addiu	a2,a0,704
      5c:	00c02825 	move	a1,a2
      60:	0c000000 	jal	0 <func_80B3C1E0>
      64:	afa60018 	sw	a2,24(sp)
      68:	8fa40034 	lw	a0,52(sp)
      6c:	3c010001 	lui	at,0x1
      70:	34211e60 	ori	at,at,0x1e60
      74:	8fa60018 	lw	a2,24(sp)
      78:	0c000000 	jal	0 <func_80B3C1E0>
      7c:	00812821 	addu	a1,a0,at
      80:	8fbf0014 	lw	ra,20(sp)
      84:	27bd0030 	addiu	sp,sp,48
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <EnXc_Destroy>:
      90:	27bdffe8 	addiu	sp,sp,-24
      94:	00803025 	move	a2,a0
      98:	afbf0014 	sw	ra,20(sp)
      9c:	00a02025 	move	a0,a1
      a0:	0c000000 	jal	0 <func_80B3C1E0>
      a4:	24c502c0 	addiu	a1,a2,704
      a8:	8fbf0014 	lw	ra,20(sp)
      ac:	27bd0018 	addiu	sp,sp,24
      b0:	03e00008 	jr	ra
      b4:	00000000 	nop

000000b8 <func_80B3C298>:
      b8:	27bdffe8 	addiu	sp,sp,-24
      bc:	afbf0014 	sw	ra,20(sp)
      c0:	afa5001c 	sw	a1,28(sp)
      c4:	8ca21c44 	lw	v0,7236(a1)
      c8:	3c030000 	lui	v1,0x0
      cc:	24630000 	addiu	v1,v1,0
      d0:	8c580024 	lw	t8,36(v0)
      d4:	3c014040 	lui	at,0x4040
      d8:	44814000 	mtc1	at,$f8
      dc:	ac98032c 	sw	t8,812(a0)
      e0:	8c4f0028 	lw	t7,40(v0)
      e4:	24850314 	addiu	a1,a0,788
      e8:	24070002 	li	a3,2
      ec:	ac8f0330 	sw	t7,816(a0)
      f0:	8c58002c 	lw	t8,44(v0)
      f4:	ac980334 	sw	t8,820(a0)
      f8:	8c790000 	lw	t9,0(v1)
      fc:	87281474 	lh	t0,5236(t9)
     100:	44882000 	mtc1	t0,$f4
     104:	00000000 	nop
     108:	468021a0 	cvt.s.w	$f6,$f4
     10c:	46083281 	sub.s	$f10,$f6,$f8
     110:	e48a0328 	swc1	$f10,808(a0)
     114:	8c690000 	lw	t1,0(v1)
     118:	85261476 	lh	a2,5238(t1)
     11c:	24c6000c 	addiu	a2,a2,12
     120:	00063400 	sll	a2,a2,0x10
     124:	0c000000 	jal	0 <func_80B3C1E0>
     128:	00063403 	sra	a2,a2,0x10
     12c:	8fbf0014 	lw	ra,20(sp)
     130:	27bd0018 	addiu	sp,sp,24
     134:	03e00008 	jr	ra
     138:	00000000 	nop

0000013c <func_80B3C31C>:
     13c:	27bdffc8 	addiu	sp,sp,-56
     140:	afbf0014 	sw	ra,20(sp)
     144:	848e025e 	lh	t6,606(a0)
     148:	00803025 	move	a2,a0
     14c:	24c3025e 	addiu	v1,a2,606
     150:	15c00003 	bnez	t6,160 <func_80B3C31C+0x24>
     154:	00001025 	move	v0,zero
     158:	10000005 	b	170 <func_80B3C31C+0x34>
     15c:	2483025e 	addiu	v1,a0,606
     160:	846f0000 	lh	t7,0(v1)
     164:	25f8ffff 	addiu	t8,t7,-1
     168:	a4780000 	sh	t8,0(v1)
     16c:	84620000 	lh	v0,0(v1)
     170:	14400008 	bnez	v0,194 <func_80B3C31C+0x58>
     174:	2404003c 	li	a0,60
     178:	2405003c 	li	a1,60
     17c:	afa3001c 	sw	v1,28(sp)
     180:	0c000000 	jal	0 <func_80B3C1E0>
     184:	afa60038 	sw	a2,56(sp)
     188:	8fa3001c 	lw	v1,28(sp)
     18c:	8fa60038 	lw	a2,56(sp)
     190:	a4620000 	sh	v0,0(v1)
     194:	84790000 	lh	t9,0(v1)
     198:	24c2025c 	addiu	v0,a2,604
     19c:	a4590000 	sh	t9,0(v0)
     1a0:	84480000 	lh	t0,0(v0)
     1a4:	29010003 	slti	at,t0,3
     1a8:	54200003 	bnezl	at,1b8 <func_80B3C31C+0x7c>
     1ac:	8fbf0014 	lw	ra,20(sp)
     1b0:	a4400000 	sh	zero,0(v0)
     1b4:	8fbf0014 	lw	ra,20(sp)
     1b8:	27bd0038 	addiu	sp,sp,56
     1bc:	03e00008 	jr	ra
     1c0:	00000000 	nop

000001c4 <func_80B3C3A4>:
     1c4:	27bdffb0 	addiu	sp,sp,-80
     1c8:	afbf002c 	sw	ra,44(sp)
     1cc:	afa40050 	sw	a0,80(sp)
     1d0:	afa50054 	sw	a1,84(sp)
     1d4:	848400b6 	lh	a0,182(a0)
     1d8:	0c000000 	jal	0 <func_80B3C1E0>
     1dc:	a7a40046 	sh	a0,70(sp)
     1e0:	3c0141f0 	lui	at,0x41f0
     1e4:	44812000 	mtc1	at,$f4
     1e8:	8fa20050 	lw	v0,80(sp)
     1ec:	3c014040 	lui	at,0x4040
     1f0:	46040182 	mul.s	$f6,$f0,$f4
     1f4:	c4480024 	lwc1	$f8,36(v0)
     1f8:	44819000 	mtc1	at,$f18
     1fc:	24420024 	addiu	v0,v0,36
     200:	87a40046 	lh	a0,70(sp)
     204:	46083280 	add.s	$f10,$f6,$f8
     208:	e7aa0040 	swc1	$f10,64(sp)
     20c:	c4500004 	lwc1	$f16,4(v0)
     210:	afa20034 	sw	v0,52(sp)
     214:	46128100 	add.s	$f4,$f16,$f18
     218:	0c000000 	jal	0 <func_80B3C1E0>
     21c:	e7a4003c 	swc1	$f4,60(sp)
     220:	3c0141f0 	lui	at,0x41f0
     224:	44813000 	mtc1	at,$f6
     228:	8fa20034 	lw	v0,52(sp)
     22c:	c7b0003c 	lwc1	$f16,60(sp)
     230:	46060202 	mul.s	$f8,$f0,$f6
     234:	c44a0008 	lwc1	$f10,8(v0)
     238:	8fb80050 	lw	t8,80(sp)
     23c:	240f0fa0 	li	t7,4000
     240:	afaf0018 	sw	t7,24(sp)
     244:	e7b00010 	swc1	$f16,16(sp)
     248:	8fa50054 	lw	a1,84(sp)
     24c:	460a4080 	add.s	$f2,$f8,$f10
     250:	2408fff6 	li	t0,-10
     254:	24060016 	li	a2,22
     258:	8fa70040 	lw	a3,64(sp)
     25c:	e7a20014 	swc1	$f2,20(sp)
     260:	871900b6 	lh	t9,182(t8)
     264:	afa80024 	sw	t0,36(sp)
     268:	afa00020 	sw	zero,32(sp)
     26c:	24a41c24 	addiu	a0,a1,7204
     270:	0c000000 	jal	0 <func_80B3C1E0>
     274:	afb9001c 	sw	t9,28(sp)
     278:	8fbf002c 	lw	ra,44(sp)
     27c:	27bd0050 	addiu	sp,sp,80
     280:	03e00008 	jr	ra
     284:	00000000 	nop

00000288 <func_80B3C468>:
     288:	27bdffe0 	addiu	sp,sp,-32
     28c:	3c0141f0 	lui	at,0x41f0
     290:	44810000 	mtc1	at,$f0
     294:	afa50024 	sw	a1,36(sp)
     298:	00802825 	move	a1,a0
     29c:	afbf001c 	sw	ra,28(sp)
     2a0:	afa40020 	sw	a0,32(sp)
     2a4:	240e0004 	li	t6,4
     2a8:	44070000 	mfc1	a3,$f0
     2ac:	afae0014 	sw	t6,20(sp)
     2b0:	8fa40024 	lw	a0,36(sp)
     2b4:	3c064296 	lui	a2,0x4296
     2b8:	0c000000 	jal	0 <func_80B3C1E0>
     2bc:	e7a00010 	swc1	$f0,16(sp)
     2c0:	8fbf001c 	lw	ra,28(sp)
     2c4:	27bd0020 	addiu	sp,sp,32
     2c8:	03e00008 	jr	ra
     2cc:	00000000 	nop

000002d0 <func_80B3C4B0>:
     2d0:	27bdffe8 	addiu	sp,sp,-24
     2d4:	afbf0014 	sw	ra,20(sp)
     2d8:	0c000000 	jal	0 <func_80B3C1E0>
     2dc:	2484014c 	addiu	a0,a0,332
     2e0:	8fbf0014 	lw	ra,20(sp)
     2e4:	27bd0018 	addiu	sp,sp,24
     2e8:	03e00008 	jr	ra
     2ec:	00000000 	nop

000002f0 <func_80B3C4D0>:
     2f0:	908e1d6c 	lbu	t6,7532(a0)
     2f4:	00057880 	sll	t7,a1,0x2
     2f8:	00001825 	move	v1,zero
     2fc:	11c00002 	beqz	t6,308 <func_80B3C4D0+0x18>
     300:	008fc021 	addu	t8,a0,t7
     304:	8f031d8c 	lw	v1,7564(t8)
     308:	03e00008 	jr	ra
     30c:	00601025 	move	v0,v1

00000310 <func_80B3C4F0>:
     310:	27bdffe8 	addiu	sp,sp,-24
     314:	afa40018 	sw	a0,24(sp)
     318:	afbf0014 	sw	ra,20(sp)
     31c:	afa5001c 	sw	a1,28(sp)
     320:	00a02025 	move	a0,a1
     324:	afa60020 	sw	a2,32(sp)
     328:	0c000000 	jal	0 <func_80B3C1E0>
     32c:	00e02825 	move	a1,a3
     330:	10400007 	beqz	v0,350 <func_80B3C4F0+0x40>
     334:	8fbf0014 	lw	ra,20(sp)
     338:	97ae0022 	lhu	t6,34(sp)
     33c:	944f0000 	lhu	t7,0(v0)
     340:	55cf0004 	bnel	t6,t7,354 <func_80B3C4F0+0x44>
     344:	00001025 	move	v0,zero
     348:	10000002 	b	354 <func_80B3C4F0+0x44>
     34c:	24020001 	li	v0,1
     350:	00001025 	move	v0,zero
     354:	03e00008 	jr	ra
     358:	27bd0018 	addiu	sp,sp,24

0000035c <func_80B3C53C>:
     35c:	27bdffe8 	addiu	sp,sp,-24
     360:	afa40018 	sw	a0,24(sp)
     364:	afbf0014 	sw	ra,20(sp)
     368:	afa5001c 	sw	a1,28(sp)
     36c:	00a02025 	move	a0,a1
     370:	afa60020 	sw	a2,32(sp)
     374:	0c000000 	jal	0 <func_80B3C1E0>
     378:	00e02825 	move	a1,a3
     37c:	10400007 	beqz	v0,39c <func_80B3C53C+0x40>
     380:	8fbf0014 	lw	ra,20(sp)
     384:	97ae0022 	lhu	t6,34(sp)
     388:	944f0000 	lhu	t7,0(v0)
     38c:	51cf0004 	beql	t6,t7,3a0 <func_80B3C53C+0x44>
     390:	00001025 	move	v0,zero
     394:	10000002 	b	3a0 <func_80B3C53C+0x44>
     398:	24020001 	li	v0,1
     39c:	00001025 	move	v0,zero
     3a0:	03e00008 	jr	ra
     3a4:	27bd0018 	addiu	sp,sp,24

000003a8 <func_80B3C588>:
     3a8:	27bdffe8 	addiu	sp,sp,-24
     3ac:	00803825 	move	a3,a0
     3b0:	afbf0014 	sw	ra,20(sp)
     3b4:	afa5001c 	sw	a1,28(sp)
     3b8:	00a02025 	move	a0,a1
     3bc:	00c02825 	move	a1,a2
     3c0:	0c000000 	jal	0 <func_80B3C1E0>
     3c4:	afa70018 	sw	a3,24(sp)
     3c8:	10400019 	beqz	v0,430 <func_80B3C588+0x88>
     3cc:	8fa70018 	lw	a3,24(sp)
     3d0:	8c4e000c 	lw	t6,12(v0)
     3d4:	448e2000 	mtc1	t6,$f4
     3d8:	00000000 	nop
     3dc:	468021a0 	cvt.s.w	$f6,$f4
     3e0:	e4e60024 	swc1	$f6,36(a3)
     3e4:	8c4f0010 	lw	t7,16(v0)
     3e8:	448f4000 	mtc1	t7,$f8
     3ec:	00000000 	nop
     3f0:	468042a0 	cvt.s.w	$f10,$f8
     3f4:	e4ea0028 	swc1	$f10,40(a3)
     3f8:	8c580014 	lw	t8,20(v0)
     3fc:	44988000 	mtc1	t8,$f16
     400:	00000000 	nop
     404:	468084a0 	cvt.s.w	$f18,$f16
     408:	e4f2002c 	swc1	$f18,44(a3)
     40c:	84430006 	lh	v1,6(v0)
     410:	a4e300b4 	sh	v1,180(a3)
     414:	a4e30030 	sh	v1,48(a3)
     418:	84430008 	lh	v1,8(v0)
     41c:	a4e300b6 	sh	v1,182(a3)
     420:	a4e30032 	sh	v1,50(a3)
     424:	8443000a 	lh	v1,10(v0)
     428:	a4e300b8 	sh	v1,184(a3)
     42c:	a4e30034 	sh	v1,52(a3)
     430:	8fbf0014 	lw	ra,20(sp)
     434:	27bd0018 	addiu	sp,sp,24
     438:	03e00008 	jr	ra
     43c:	00000000 	nop

00000440 <func_80B3C620>:
     440:	27bdffc0 	addiu	sp,sp,-64
     444:	afa40040 	sw	a0,64(sp)
     448:	afbf001c 	sw	ra,28(sp)
     44c:	afa50044 	sw	a1,68(sp)
     450:	00a02025 	move	a0,a1
     454:	0c000000 	jal	0 <func_80B3C1E0>
     458:	00c02825 	move	a1,a2
     45c:	1040002c 	beqz	v0,510 <func_80B3C620+0xd0>
     460:	8fae0044 	lw	t6,68(sp)
     464:	94440004 	lhu	a0,4(v0)
     468:	94450002 	lhu	a1,2(v0)
     46c:	95c61d74 	lhu	a2,7540(t6)
     470:	afa2003c 	sw	v0,60(sp)
     474:	afa00010 	sw	zero,16(sp)
     478:	0c000000 	jal	0 <func_80B3C1E0>
     47c:	00003825 	move	a3,zero
     480:	8fa3003c 	lw	v1,60(sp)
     484:	8fa20040 	lw	v0,64(sp)
     488:	8c780010 	lw	t8,16(v1)
     48c:	8c6f000c 	lw	t7,12(v1)
     490:	8c680018 	lw	t0,24(v1)
     494:	8c790014 	lw	t9,20(v1)
     498:	44983000 	mtc1	t8,$f6
     49c:	8c6a0020 	lw	t2,32(v1)
     4a0:	448f2000 	mtc1	t7,$f4
     4a4:	8c69001c 	lw	t1,28(v1)
     4a8:	44885000 	mtc1	t0,$f10
     4ac:	46803320 	cvt.s.w	$f12,$f6
     4b0:	44994000 	mtc1	t9,$f8
     4b4:	448a3000 	mtc1	t2,$f6
     4b8:	24420024 	addiu	v0,v0,36
     4bc:	468020a0 	cvt.s.w	$f2,$f4
     4c0:	44892000 	mtc1	t1,$f4
     4c4:	46805420 	cvt.s.w	$f16,$f10
     4c8:	468043a0 	cvt.s.w	$f14,$f8
     4cc:	46803220 	cvt.s.w	$f8,$f6
     4d0:	468024a0 	cvt.s.w	$f18,$f4
     4d4:	e7a80020 	swc1	$f8,32(sp)
     4d8:	46028281 	sub.s	$f10,$f16,$f2
     4dc:	460c9201 	sub.s	$f8,$f18,$f12
     4e0:	46005102 	mul.s	$f4,$f10,$f0
     4e4:	00000000 	nop
     4e8:	46004282 	mul.s	$f10,$f8,$f0
     4ec:	46022180 	add.s	$f6,$f4,$f2
     4f0:	460c5100 	add.s	$f4,$f10,$f12
     4f4:	e4460000 	swc1	$f6,0(v0)
     4f8:	e4440004 	swc1	$f4,4(v0)
     4fc:	c7a60020 	lwc1	$f6,32(sp)
     500:	460e3201 	sub.s	$f8,$f6,$f14
     504:	46004282 	mul.s	$f10,$f8,$f0
     508:	460e5100 	add.s	$f4,$f10,$f14
     50c:	e4440008 	swc1	$f4,8(v0)
     510:	8fbf001c 	lw	ra,28(sp)
     514:	27bd0040 	addiu	sp,sp,64
     518:	03e00008 	jr	ra
     51c:	00000000 	nop

00000520 <func_80B3C700>:
     520:	00057100 	sll	t6,a1,0x4
     524:	000e7f02 	srl	t7,t6,0x1c
     528:	000fc080 	sll	t8,t7,0x2
     52c:	3c190000 	lui	t9,0x0
     530:	0338c821 	addu	t9,t9,t8
     534:	3c0100ff 	lui	at,0xff
     538:	8f390000 	lw	t9,0(t9)
     53c:	3421ffff 	ori	at,at,0xffff
     540:	27bdffc8 	addiu	sp,sp,-56
     544:	00a14024 	and	t0,a1,at
     548:	afa40038 	sw	a0,56(sp)
     54c:	3c018000 	lui	at,0x8000
     550:	03282021 	addu	a0,t9,t0
     554:	afbf0024 	sw	ra,36(sp)
     558:	00812021 	addu	a0,a0,at
     55c:	afa60040 	sw	a2,64(sp)
     560:	afa70044 	sw	a3,68(sp)
     564:	0c000000 	jal	0 <func_80B3C1E0>
     568:	afa4002c 	sw	a0,44(sp)
     56c:	8fa90048 	lw	t1,72(sp)
     570:	8fa40038 	lw	a0,56(sp)
     574:	8fa5002c 	lw	a1,44(sp)
     578:	15200007 	bnez	t1,598 <func_80B3C700+0x78>
     57c:	2484014c 	addiu	a0,a0,332
     580:	44822000 	mtc1	v0,$f4
     584:	3c013f80 	lui	at,0x3f80
     588:	44800000 	mtc1	zero,$f0
     58c:	44816000 	mtc1	at,$f12
     590:	10000006 	b	5ac <func_80B3C700+0x8c>
     594:	468020a0 	cvt.s.w	$f2,$f4
     598:	44823000 	mtc1	v0,$f6
     59c:	3c01bf80 	lui	at,0xbf80
     5a0:	44801000 	mtc1	zero,$f2
     5a4:	44816000 	mtc1	at,$f12
     5a8:	46803020 	cvt.s.w	$f0,$f6
     5ac:	93aa0043 	lbu	t2,67(sp)
     5b0:	c7a80044 	lwc1	$f8,68(sp)
     5b4:	44066000 	mfc1	a2,$f12
     5b8:	44070000 	mfc1	a3,$f0
     5bc:	e7a20010 	swc1	$f2,16(sp)
     5c0:	afaa0014 	sw	t2,20(sp)
     5c4:	0c000000 	jal	0 <func_80B3C1E0>
     5c8:	e7a80018 	swc1	$f8,24(sp)
     5cc:	8fbf0024 	lw	ra,36(sp)
     5d0:	27bd0038 	addiu	sp,sp,56
     5d4:	03e00008 	jr	ra
     5d8:	00000000 	nop

000005dc <func_80B3C7BC>:
     5dc:	8c8e0260 	lw	t6,608(a0)
     5e0:	10ae0002 	beq	a1,t6,5ec <func_80B3C7BC+0x10>
     5e4:	00000000 	nop
     5e8:	ac860260 	sw	a2,608(a0)
     5ec:	03e00008 	jr	ra
     5f0:	00000000 	nop

000005f4 <func_80B3C7D4>:
     5f4:	8c820260 	lw	v0,608(a0)
     5f8:	2401000b 	li	at,11
     5fc:	10a20006 	beq	a1,v0,618 <func_80B3C7D4+0x24>
     600:	00000000 	nop
     604:	54410004 	bnel	v0,at,618 <func_80B3C7D4+0x24>
     608:	ac870260 	sw	a3,608(a0)
     60c:	03e00008 	jr	ra
     610:	ac860260 	sw	a2,608(a0)
     614:	ac870260 	sw	a3,608(a0)
     618:	03e00008 	jr	ra
     61c:	00000000 	nop

00000620 <func_80B3C800>:
     620:	908e1d6c 	lbu	t6,7532(a0)
     624:	00001025 	move	v0,zero
     628:	15c00003 	bnez	t6,638 <func_80B3C800+0x18>
     62c:	00000000 	nop
     630:	03e00008 	jr	ra
     634:	24020001 	li	v0,1
     638:	03e00008 	jr	ra
     63c:	00000000 	nop

00000640 <func_80B3C820>:
     640:	27bdffd8 	addiu	sp,sp,-40
     644:	afa40028 	sw	a0,40(sp)
     648:	afbf0024 	sw	ra,36(sp)
     64c:	3c040600 	lui	a0,0x600
     650:	0c000000 	jal	0 <func_80B3C1E0>
     654:	24844828 	addiu	a0,a0,18472
     658:	44822000 	mtc1	v0,$f4
     65c:	44800000 	mtc1	zero,$f0
     660:	8fa40028 	lw	a0,40(sp)
     664:	468021a0 	cvt.s.w	$f6,$f4
     668:	3c050600 	lui	a1,0x600
     66c:	44070000 	mfc1	a3,$f0
     670:	24a54828 	addiu	a1,a1,18472
     674:	3c063f80 	lui	a2,0x3f80
     678:	afa00014 	sw	zero,20(sp)
     67c:	e7a60010 	swc1	$f6,16(sp)
     680:	2484014c 	addiu	a0,a0,332
     684:	0c000000 	jal	0 <func_80B3C1E0>
     688:	e7a00018 	swc1	$f0,24(sp)
     68c:	8faf0028 	lw	t7,40(sp)
     690:	240e0035 	li	t6,53
     694:	adee0260 	sw	t6,608(t7)
     698:	8fbf0024 	lw	ra,36(sp)
     69c:	27bd0028 	addiu	sp,sp,40
     6a0:	03e00008 	jr	ra
     6a4:	00000000 	nop

000006a8 <func_80B3C888>:
     6a8:	27bdffe8 	addiu	sp,sp,-24
     6ac:	afbf0014 	sw	ra,20(sp)
     6b0:	afa40018 	sw	a0,24(sp)
     6b4:	0c000000 	jal	0 <func_80B3C1E0>
     6b8:	00a02025 	move	a0,a1
     6bc:	10400007 	beqz	v0,6dc <func_80B3C888+0x34>
     6c0:	8fa40018 	lw	a0,24(sp)
     6c4:	848e001c 	lh	t6,28(a0)
     6c8:	24010004 	li	at,4
     6cc:	55c10004 	bnel	t6,at,6e0 <func_80B3C888+0x38>
     6d0:	8fbf0014 	lw	ra,20(sp)
     6d4:	0c000000 	jal	0 <func_80B3C1E0>
     6d8:	00000000 	nop
     6dc:	8fbf0014 	lw	ra,20(sp)
     6e0:	27bd0018 	addiu	sp,sp,24
     6e4:	03e00008 	jr	ra
     6e8:	00000000 	nop

000006ec <func_80B3C8CC>:
     6ec:	27bdffe8 	addiu	sp,sp,-24
     6f0:	afbf0014 	sw	ra,20(sp)
     6f4:	afa40018 	sw	a0,24(sp)
     6f8:	afa5001c 	sw	a1,28(sp)
     6fc:	8c8f016c 	lw	t7,364(a0)
     700:	8499018c 	lh	t9,396(a0)
     704:	2486014c 	addiu	a2,a0,332
     708:	85f80002 	lh	t8,2(t7)
     70c:	0319082a 	slt	at,t8,t9
     710:	54200009 	bnezl	at,738 <func_80B3C8CC+0x4c>
     714:	8fbf0014 	lw	ra,20(sp)
     718:	90c80035 	lbu	t0,53(a2)
     71c:	3c073f80 	lui	a3,0x3f80
     720:	35090003 	ori	t1,t0,0x3
     724:	a0c90035 	sb	t1,53(a2)
     728:	8fa50018 	lw	a1,24(sp)
     72c:	0c000000 	jal	0 <func_80B3C1E0>
     730:	8fa4001c 	lw	a0,28(sp)
     734:	8fbf0014 	lw	ra,20(sp)
     738:	27bd0018 	addiu	sp,sp,24
     73c:	03e00008 	jr	ra
     740:	00000000 	nop

00000744 <func_80B3C924>:
     744:	27bdffe8 	addiu	sp,sp,-24
     748:	afbf0014 	sw	ra,20(sp)
     74c:	afa40018 	sw	a0,24(sp)
     750:	afa5001c 	sw	a1,28(sp)
     754:	908e0181 	lbu	t6,385(a0)
     758:	00802825 	move	a1,a0
     75c:	24a6014c 	addiu	a2,a1,332
     760:	35cf0003 	ori	t7,t6,0x3
     764:	a08f0181 	sb	t7,385(a0)
     768:	8fa4001c 	lw	a0,28(sp)
     76c:	0c000000 	jal	0 <func_80B3C1E0>
     770:	3c073f80 	lui	a3,0x3f80
     774:	8fbf0014 	lw	ra,20(sp)
     778:	27bd0018 	addiu	sp,sp,24
     77c:	03e00008 	jr	ra
     780:	00000000 	nop

00000784 <func_80B3C964>:
     784:	27bdffe8 	addiu	sp,sp,-24
     788:	afbf0014 	sw	ra,20(sp)
     78c:	afa40018 	sw	a0,24(sp)
     790:	afa5001c 	sw	a1,28(sp)
     794:	8c8e016c 	lw	t6,364(a0)
     798:	8c99016c 	lw	t9,364(a0)
     79c:	908a0181 	lbu	t2,385(a0)
     7a0:	89d80000 	lwl	t8,0(t6)
     7a4:	99d80003 	lwr	t8,3(t6)
     7a8:	354b0003 	ori	t3,t2,0x3
     7ac:	00802825 	move	a1,a0
     7b0:	a898018a 	swl	t8,394(a0)
     7b4:	b898018d 	swr	t8,397(a0)
     7b8:	95d80004 	lhu	t8,4(t6)
     7bc:	24a6014c 	addiu	a2,a1,332
     7c0:	3c073f80 	lui	a3,0x3f80
     7c4:	a498018e 	sh	t8,398(a0)
     7c8:	8b290000 	lwl	t1,0(t9)
     7cc:	9b290003 	lwr	t1,3(t9)
     7d0:	a8890184 	swl	t1,388(a0)
     7d4:	b8890187 	swr	t1,391(a0)
     7d8:	97290004 	lhu	t1,4(t9)
     7dc:	a08b0181 	sb	t3,385(a0)
     7e0:	a4890188 	sh	t1,392(a0)
     7e4:	0c000000 	jal	0 <func_80B3C1E0>
     7e8:	8fa4001c 	lw	a0,28(sp)
     7ec:	8fbf0014 	lw	ra,20(sp)
     7f0:	27bd0018 	addiu	sp,sp,24
     7f4:	03e00008 	jr	ra
     7f8:	00000000 	nop

000007fc <func_80B3C9DC>:
     7fc:	908e0181 	lbu	t6,385(a0)
     800:	31cffffc 	andi	t7,t6,0xfffc
     804:	03e00008 	jr	ra
     808:	a08f0181 	sb	t7,385(a0)

0000080c <func_80B3C9EC>:
     80c:	27bdffe0 	addiu	sp,sp,-32
     810:	afbf001c 	sw	ra,28(sp)
     814:	3c050601 	lui	a1,0x601
     818:	24a53aa4 	addiu	a1,a1,15012
     81c:	afa00010 	sw	zero,16(sp)
     820:	afa40020 	sw	a0,32(sp)
     824:	00003025 	move	a2,zero
     828:	0c000000 	jal	0 <func_80B3C1E0>
     82c:	24070000 	li	a3,0
     830:	8fa40020 	lw	a0,32(sp)
     834:	24020001 	li	v0,1
     838:	240e004f 	li	t6,79
     83c:	ac8e0260 	sw	t6,608(a0)
     840:	ac820264 	sw	v0,612(a0)
     844:	ac82030c 	sw	v0,780(a0)
     848:	8fbf001c 	lw	ra,28(sp)
     84c:	27bd0020 	addiu	sp,sp,32
     850:	03e00008 	jr	ra
     854:	00000000 	nop

00000858 <func_80B3CA38>:
     858:	3c020000 	lui	v0,0x0
     85c:	24420000 	addiu	v0,v0,0
     860:	944e0ede 	lhu	t6,3806(v0)
     864:	27bdffe8 	addiu	sp,sp,-24
     868:	afbf0014 	sw	ra,20(sp)
     86c:	31cf0001 	andi	t7,t6,0x1
     870:	15e00006 	bnez	t7,88c <func_80B3CA38+0x34>
     874:	afa5001c 	sw	a1,28(sp)
     878:	8c580004 	lw	t8,4(v0)
     87c:	17000003 	bnez	t8,88c <func_80B3CA38+0x34>
     880:	00000000 	nop
     884:	10000003 	b	894 <func_80B3CA38+0x3c>
     888:	ac800260 	sw	zero,608(a0)
     88c:	0c000000 	jal	0 <func_80B3C1E0>
     890:	00000000 	nop
     894:	8fbf0014 	lw	ra,20(sp)
     898:	27bd0018 	addiu	sp,sp,24
     89c:	03e00008 	jr	ra
     8a0:	00000000 	nop

000008a4 <func_80B3CA84>:
     8a4:	27bdffe8 	addiu	sp,sp,-24
     8a8:	afbf0014 	sw	ra,20(sp)
     8ac:	848e001c 	lh	t6,28(a0)
     8b0:	24010006 	li	at,6
     8b4:	24020001 	li	v0,1
     8b8:	15c1002b 	bne	t6,at,968 <func_80B3CA84+0xc4>
     8bc:	00000000 	nop
     8c0:	8ca21c44 	lw	v0,7236(a1)
     8c4:	3c010000 	lui	at,0x0
     8c8:	c4240000 	lwc1	$f4,0(at)
     8cc:	c440002c 	lwc1	$f0,44(v0)
     8d0:	00a02025 	move	a0,a1
     8d4:	4604003c 	c.lt.s	$f0,$f4
     8d8:	00000000 	nop
     8dc:	45000020 	bc1f	960 <func_80B3CA84+0xbc>
     8e0:	00000000 	nop
     8e4:	0c000000 	jal	0 <func_80B3C1E0>
     8e8:	afa5001c 	sw	a1,28(sp)
     8ec:	1440001c 	bnez	v0,960 <func_80B3CA84+0xbc>
     8f0:	8fa6001c 	lw	a2,28(sp)
     8f4:	3c020200 	lui	v0,0x200
     8f8:	24423f80 	addiu	v0,v0,16256
     8fc:	00027900 	sll	t7,v0,0x4
     900:	000fc702 	srl	t8,t7,0x1c
     904:	0018c880 	sll	t9,t8,0x2
     908:	3c080000 	lui	t0,0x0
     90c:	01194021 	addu	t0,t0,t9
     910:	3c0100ff 	lui	at,0xff
     914:	8d080000 	lw	t0,0(t0)
     918:	3421ffff 	ori	at,at,0xffff
     91c:	00414824 	and	t1,v0,at
     920:	3c018000 	lui	at,0x8000
     924:	01095021 	addu	t2,t0,t1
     928:	3c030000 	lui	v1,0x0
     92c:	01415821 	addu	t3,t2,at
     930:	24630000 	addiu	v1,v1,0
     934:	accb1d68 	sw	t3,7528(a2)
     938:	946d0ede 	lhu	t5,3806(v1)
     93c:	240c0001 	li	t4,1
     940:	a06c1414 	sb	t4,5140(v1)
     944:	35ae0001 	ori	t6,t5,0x1
     948:	a46e0ede 	sh	t6,3806(v1)
     94c:	00c02025 	move	a0,a2
     950:	0c000000 	jal	0 <func_80B3C1E0>
     954:	2405005a 	li	a1,90
     958:	10000003 	b	968 <func_80B3CA84+0xc4>
     95c:	24020001 	li	v0,1
     960:	10000001 	b	968 <func_80B3CA84+0xc4>
     964:	00001025 	move	v0,zero
     968:	8fbf0014 	lw	ra,20(sp)
     96c:	27bd0018 	addiu	sp,sp,24
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <func_80B3CB58>:
     978:	3c020000 	lui	v0,0x0
     97c:	24420000 	addiu	v0,v0,0
     980:	944e0ede 	lhu	t6,3806(v0)
     984:	27bdffe8 	addiu	sp,sp,-24
     988:	afbf0014 	sw	ra,20(sp)
     98c:	31cf0002 	andi	t7,t6,0x2
     990:	15e00006 	bnez	t7,9ac <func_80B3CB58+0x34>
     994:	afa5001c 	sw	a1,28(sp)
     998:	8c580004 	lw	t8,4(v0)
     99c:	17000003 	bnez	t8,9ac <func_80B3CB58+0x34>
     9a0:	00000000 	nop
     9a4:	10000003 	b	9b4 <func_80B3CB58+0x3c>
     9a8:	ac800260 	sw	zero,608(a0)
     9ac:	0c000000 	jal	0 <func_80B3C1E0>
     9b0:	00000000 	nop
     9b4:	8fbf0014 	lw	ra,20(sp)
     9b8:	27bd0018 	addiu	sp,sp,24
     9bc:	03e00008 	jr	ra
     9c0:	00000000 	nop

000009c4 <func_80B3CBA4>:
     9c4:	27bdffe8 	addiu	sp,sp,-24
     9c8:	afbf0014 	sw	ra,20(sp)
     9cc:	848e001c 	lh	t6,28(a0)
     9d0:	24010007 	li	at,7
     9d4:	24020001 	li	v0,1
     9d8:	15c1004d 	bne	t6,at,b10 <func_80B3CBA4+0x14c>
     9dc:	00000000 	nop
     9e0:	8ca31c44 	lw	v1,7236(a1)
     9e4:	3c01c444 	lui	at,0xc444
     9e8:	44812000 	mtc1	at,$f4
     9ec:	c4660024 	lwc1	$f6,36(v1)
     9f0:	3c01c412 	lui	at,0xc412
     9f4:	24620024 	addiu	v0,v1,36
     9f8:	4606203c 	c.lt.s	$f4,$f6
     9fc:	00000000 	nop
     a00:	45000041 	bc1f	b08 <func_80B3CBA4+0x144>
     a04:	00000000 	nop
     a08:	c4480000 	lwc1	$f8,0(v0)
     a0c:	44815000 	mtc1	at,$f10
     a10:	3c010000 	lui	at,0x0
     a14:	460a403c 	c.lt.s	$f8,$f10
     a18:	00000000 	nop
     a1c:	4500003a 	bc1f	b08 <func_80B3CBA4+0x144>
     a20:	00000000 	nop
     a24:	c4400004 	lwc1	$f0,4(v0)
     a28:	c4300000 	lwc1	$f16,0(at)
     a2c:	3c010000 	lui	at,0x0
     a30:	4600803c 	c.lt.s	$f16,$f0
     a34:	00000000 	nop
     a38:	45000033 	bc1f	b08 <func_80B3CBA4+0x144>
     a3c:	00000000 	nop
     a40:	c4320000 	lwc1	$f18,0(at)
     a44:	3c01c3df 	lui	at,0xc3df
     a48:	4612003c 	c.lt.s	$f0,$f18
     a4c:	00000000 	nop
     a50:	4500002d 	bc1f	b08 <func_80B3CBA4+0x144>
     a54:	00000000 	nop
     a58:	c4400008 	lwc1	$f0,8(v0)
     a5c:	44812000 	mtc1	at,$f4
     a60:	3c01c376 	lui	at,0xc376
     a64:	4600203c 	c.lt.s	$f4,$f0
     a68:	00000000 	nop
     a6c:	45000026 	bc1f	b08 <func_80B3CBA4+0x144>
     a70:	00000000 	nop
     a74:	44813000 	mtc1	at,$f6
     a78:	00a02025 	move	a0,a1
     a7c:	4606003c 	c.lt.s	$f0,$f6
     a80:	00000000 	nop
     a84:	45000020 	bc1f	b08 <func_80B3CBA4+0x144>
     a88:	00000000 	nop
     a8c:	0c000000 	jal	0 <func_80B3C1E0>
     a90:	afa5001c 	sw	a1,28(sp)
     a94:	1440001c 	bnez	v0,b08 <func_80B3CBA4+0x144>
     a98:	8fa6001c 	lw	a2,28(sp)
     a9c:	3c020200 	lui	v0,0x200
     aa0:	244245d0 	addiu	v0,v0,17872
     aa4:	00027900 	sll	t7,v0,0x4
     aa8:	000fc702 	srl	t8,t7,0x1c
     aac:	0018c880 	sll	t9,t8,0x2
     ab0:	3c080000 	lui	t0,0x0
     ab4:	01194021 	addu	t0,t0,t9
     ab8:	3c0100ff 	lui	at,0xff
     abc:	8d080000 	lw	t0,0(t0)
     ac0:	3421ffff 	ori	at,at,0xffff
     ac4:	00414824 	and	t1,v0,at
     ac8:	3c018000 	lui	at,0x8000
     acc:	01095021 	addu	t2,t0,t1
     ad0:	3c030000 	lui	v1,0x0
     ad4:	01415821 	addu	t3,t2,at
     ad8:	24630000 	addiu	v1,v1,0
     adc:	accb1d68 	sw	t3,7528(a2)
     ae0:	946d0ede 	lhu	t5,3806(v1)
     ae4:	240c0001 	li	t4,1
     ae8:	a06c1414 	sb	t4,5140(v1)
     aec:	35ae0002 	ori	t6,t5,0x2
     af0:	a46e0ede 	sh	t6,3806(v1)
     af4:	00c02025 	move	a0,a2
     af8:	0c000000 	jal	0 <func_80B3C1E0>
     afc:	2405005b 	li	a1,91
     b00:	10000003 	b	b10 <func_80B3CBA4+0x14c>
     b04:	24020001 	li	v0,1
     b08:	10000001 	b	b10 <func_80B3CBA4+0x14c>
     b0c:	00001025 	move	v0,zero
     b10:	8fbf0014 	lw	ra,20(sp)
     b14:	27bd0018 	addiu	sp,sp,24
     b18:	03e00008 	jr	ra
     b1c:	00000000 	nop

00000b20 <func_80B3CD00>:
     b20:	3c020000 	lui	v0,0x0
     b24:	3c0e0000 	lui	t6,0x0
     b28:	3c0f0000 	lui	t7,0x0
     b2c:	91ef0003 	lbu	t7,3(t7)
     b30:	8dce0004 	lw	t6,4(t6)
     b34:	24420000 	addiu	v0,v0,0
     b38:	9459009c 	lhu	t9,156(v0)
     b3c:	27bdffe8 	addiu	sp,sp,-24
     b40:	01eec004 	sllv	t8,t6,t7
     b44:	afa5001c 	sw	a1,28(sp)
     b48:	03194024 	and	t0,t8,t9
     b4c:	00802825 	move	a1,a0
     b50:	afbf0014 	sw	ra,20(sp)
     b54:	1500000f 	bnez	t0,b94 <func_80B3CD00+0x74>
     b58:	afa40018 	sw	a0,24(sp)
     b5c:	94490ede 	lhu	t1,3806(v0)
     b60:	312a0004 	andi	t2,t1,0x4
     b64:	1540000b 	bnez	t2,b94 <func_80B3CD00+0x74>
     b68:	00000000 	nop
     b6c:	8c4b0004 	lw	t3,4(v0)
     b70:	240c001d 	li	t4,29
     b74:	15600007 	bnez	t3,b94 <func_80B3CD00+0x74>
     b78:	00000000 	nop
     b7c:	ac8c0260 	sw	t4,608(a0)
     b80:	3c040000 	lui	a0,0x0
     b84:	0c000000 	jal	0 <func_80B3C1E0>
     b88:	24840000 	addiu	a0,a0,0
     b8c:	10000007 	b	bac <func_80B3CD00+0x8c>
     b90:	8fbf0014 	lw	ra,20(sp)
     b94:	0c000000 	jal	0 <func_80B3C1E0>
     b98:	00a02025 	move	a0,a1
     b9c:	3c040000 	lui	a0,0x0
     ba0:	0c000000 	jal	0 <func_80B3C1E0>
     ba4:	24840000 	addiu	a0,a0,0
     ba8:	8fbf0014 	lw	ra,20(sp)
     bac:	27bd0018 	addiu	sp,sp,24
     bb0:	03e00008 	jr	ra
     bb4:	00000000 	nop

00000bb8 <func_80B3CD98>:
     bb8:	27bdffe8 	addiu	sp,sp,-24
     bbc:	afbf0014 	sw	ra,20(sp)
     bc0:	848e001c 	lh	t6,28(a0)
     bc4:	24010008 	li	at,8
     bc8:	3c030000 	lui	v1,0x0
     bcc:	15c1002e 	bne	t6,at,c88 <func_80B3CD98+0xd0>
     bd0:	24020001 	li	v0,1
     bd4:	3c0f0000 	lui	t7,0x0
     bd8:	3c180000 	lui	t8,0x0
     bdc:	93180003 	lbu	t8,3(t8)
     be0:	8def0004 	lw	t7,4(t7)
     be4:	24630000 	addiu	v1,v1,0
     be8:	9468009c 	lhu	t0,156(v1)
     bec:	8ca21c44 	lw	v0,7236(a1)
     bf0:	030fc804 	sllv	t9,t7,t8
     bf4:	03284824 	and	t1,t9,t0
     bf8:	1120001e 	beqz	t1,c74 <func_80B3CD98+0xbc>
     bfc:	8c44067c 	lw	a0,1660(v0)
     c00:	946a0ede 	lhu	t2,3806(v1)
     c04:	00046080 	sll	t4,a0,0x2
     c08:	314b0004 	andi	t3,t2,0x4
     c0c:	15600019 	bnez	t3,c74 <func_80B3CD98+0xbc>
     c10:	00000000 	nop
     c14:	05800017 	bltz	t4,c74 <func_80B3CD98+0xbc>
     c18:	00a02025 	move	a0,a1
     c1c:	0c000000 	jal	0 <func_80B3C1E0>
     c20:	afa5001c 	sw	a1,28(sp)
     c24:	14400013 	bnez	v0,c74 <func_80B3CD98+0xbc>
     c28:	8fa4001c 	lw	a0,28(sp)
     c2c:	3c050200 	lui	a1,0x200
     c30:	0c000000 	jal	0 <func_80B3C1E0>
     c34:	24a50330 	addiu	a1,a1,816
     c38:	3c030000 	lui	v1,0x0
     c3c:	24630000 	addiu	v1,v1,0
     c40:	946e0ede 	lhu	t6,3806(v1)
     c44:	240d0001 	li	t5,1
     c48:	a06d1414 	sb	t5,5140(v1)
     c4c:	35cf0004 	ori	t7,t6,0x4
     c50:	a46f0ede 	sh	t7,3806(v1)
     c54:	8fa4001c 	lw	a0,28(sp)
     c58:	0c000000 	jal	0 <func_80B3C1E0>
     c5c:	2405005c 	li	a1,92
     c60:	3c040000 	lui	a0,0x0
     c64:	0c000000 	jal	0 <func_80B3C1E0>
     c68:	24840000 	addiu	a0,a0,0
     c6c:	10000006 	b	c88 <func_80B3CD98+0xd0>
     c70:	24020001 	li	v0,1
     c74:	3c040000 	lui	a0,0x0
     c78:	0c000000 	jal	0 <func_80B3C1E0>
     c7c:	24840000 	addiu	a0,a0,0
     c80:	10000001 	b	c88 <func_80B3CD98+0xd0>
     c84:	00001025 	move	v0,zero
     c88:	8fbf0014 	lw	ra,20(sp)
     c8c:	27bd0018 	addiu	sp,sp,24
     c90:	03e00008 	jr	ra
     c94:	00000000 	nop

00000c98 <func_80B3CE78>:
     c98:	afa40000 	sw	a0,0(sp)
     c9c:	03e00008 	jr	ra
     ca0:	afa50004 	sw	a1,4(sp)

00000ca4 <func_80B3CE84>:
     ca4:	27bdffc8 	addiu	sp,sp,-56
     ca8:	afb00018 	sw	s0,24(sp)
     cac:	00808025 	move	s0,a0
     cb0:	afbf001c 	sw	ra,28(sp)
     cb4:	afa5003c 	sw	a1,60(sp)
     cb8:	2484014c 	addiu	a0,a0,332
     cbc:	afa40020 	sw	a0,32(sp)
     cc0:	0c000000 	jal	0 <func_80B3C1E0>
     cc4:	3c054130 	lui	a1,0x4130
     cc8:	14400005 	bnez	v0,ce0 <func_80B3CE84+0x3c>
     ccc:	8fa40020 	lw	a0,32(sp)
     cd0:	0c000000 	jal	0 <func_80B3C1E0>
     cd4:	3c0541b8 	lui	a1,0x41b8
     cd8:	5040000e 	beqzl	v0,d14 <func_80B3CE84+0x70>
     cdc:	8fbf001c 	lw	ra,28(sp)
     ce0:	960e0088 	lhu	t6,136(s0)
     ce4:	8fa4003c 	lw	a0,60(sp)
     ce8:	31cf0001 	andi	t7,t6,0x1
     cec:	11e00008 	beqz	t7,d10 <func_80B3CE84+0x6c>
     cf0:	248407c0 	addiu	a0,a0,1984
     cf4:	8e050078 	lw	a1,120(s0)
     cf8:	0c000000 	jal	0 <func_80B3C1E0>
     cfc:	9206007d 	lbu	a2,125(s0)
     d00:	24430800 	addiu	v1,v0,2048
     d04:	3065ffff 	andi	a1,v1,0xffff
     d08:	0c000000 	jal	0 <func_80B3C1E0>
     d0c:	260400e4 	addiu	a0,s0,228
     d10:	8fbf001c 	lw	ra,28(sp)
     d14:	8fb00018 	lw	s0,24(sp)
     d18:	27bd0038 	addiu	sp,sp,56
     d1c:	03e00008 	jr	ra
     d20:	00000000 	nop

00000d24 <func_80B3CF04>:
     d24:	27bdffc8 	addiu	sp,sp,-56
     d28:	afb00018 	sw	s0,24(sp)
     d2c:	00808025 	move	s0,a0
     d30:	afbf001c 	sw	ra,28(sp)
     d34:	afa5003c 	sw	a1,60(sp)
     d38:	2484014c 	addiu	a0,a0,332
     d3c:	afa40020 	sw	a0,32(sp)
     d40:	0c000000 	jal	0 <func_80B3C1E0>
     d44:	3c0540e0 	lui	a1,0x40e0
     d48:	5040000e 	beqzl	v0,d84 <func_80B3CF04+0x60>
     d4c:	8fa40020 	lw	a0,32(sp)
     d50:	960e0088 	lhu	t6,136(s0)
     d54:	8fa4003c 	lw	a0,60(sp)
     d58:	31cf0001 	andi	t7,t6,0x1
     d5c:	11e00008 	beqz	t7,d80 <func_80B3CF04+0x5c>
     d60:	248407c0 	addiu	a0,a0,1984
     d64:	8e050078 	lw	a1,120(s0)
     d68:	0c000000 	jal	0 <func_80B3C1E0>
     d6c:	9206007d 	lbu	a2,125(s0)
     d70:	24430800 	addiu	v1,v0,2048
     d74:	3065ffff 	andi	a1,v1,0xffff
     d78:	0c000000 	jal	0 <func_80B3C1E0>
     d7c:	260400e4 	addiu	a0,s0,228
     d80:	8fa40020 	lw	a0,32(sp)
     d84:	0c000000 	jal	0 <func_80B3C1E0>
     d88:	3c0541a0 	lui	a1,0x41a0
     d8c:	10400003 	beqz	v0,d9c <func_80B3CF04+0x78>
     d90:	260400e4 	addiu	a0,s0,228
     d94:	0c000000 	jal	0 <func_80B3C1E0>
     d98:	24056874 	li	a1,26740
     d9c:	8fbf001c 	lw	ra,28(sp)
     da0:	8fb00018 	lw	s0,24(sp)
     da4:	27bd0038 	addiu	sp,sp,56
     da8:	03e00008 	jr	ra
     dac:	00000000 	nop

00000db0 <func_80B3CF90>:
     db0:	3c0e0000 	lui	t6,0x0
     db4:	8dce1360 	lw	t6,4960(t6)
     db8:	27bdffe8 	addiu	sp,sp,-24
     dbc:	afbf0014 	sw	ra,20(sp)
     dc0:	afa40018 	sw	a0,24(sp)
     dc4:	24010004 	li	at,4
     dc8:	00a03825 	move	a3,a1
     dcc:	15c10004 	bne	t6,at,de0 <func_80B3CF90+0x30>
     dd0:	84a200a4 	lh	v0,164(a1)
     dd4:	2401005c 	li	at,92
     dd8:	50410013 	beql	v0,at,e28 <func_80B3CF90+0x78>
     ddc:	8fbf0014 	lw	ra,20(sp)
     de0:	8fa40018 	lw	a0,24(sp)
     de4:	3c054130 	lui	a1,0x4130
     de8:	afa7001c 	sw	a3,28(sp)
     dec:	0c000000 	jal	0 <func_80B3C1E0>
     df0:	2484014c 	addiu	a0,a0,332
     df4:	1040000b 	beqz	v0,e24 <func_80B3CF90+0x74>
     df8:	8fa7001c 	lw	a3,28(sp)
     dfc:	8fa20018 	lw	v0,24(sp)
     e00:	24e407c0 	addiu	a0,a3,1984
     e04:	8c450078 	lw	a1,120(v0)
     e08:	0c000000 	jal	0 <func_80B3C1E0>
     e0c:	9046007d 	lbu	a2,125(v0)
     e10:	8fa40018 	lw	a0,24(sp)
     e14:	24430800 	addiu	v1,v0,2048
     e18:	3065ffff 	andi	a1,v1,0xffff
     e1c:	0c000000 	jal	0 <func_80B3C1E0>
     e20:	248400e4 	addiu	a0,a0,228
     e24:	8fbf0014 	lw	ra,20(sp)
     e28:	27bd0018 	addiu	sp,sp,24
     e2c:	03e00008 	jr	ra
     e30:	00000000 	nop

00000e34 <func_80B3D014>:
     e34:	3c0e0000 	lui	t6,0x0
     e38:	8dce1360 	lw	t6,4960(t6)
     e3c:	27bdffb0 	addiu	sp,sp,-80
     e40:	24010004 	li	at,4
     e44:	afbf0014 	sw	ra,20(sp)
     e48:	afa40050 	sw	a0,80(sp)
     e4c:	15c10036 	bne	t6,at,f28 <func_80B3D014+0xf4>
     e50:	afa50054 	sw	a1,84(sp)
     e54:	84a200a4 	lh	v0,164(a1)
     e58:	2401005c 	li	at,92
     e5c:	54410033 	bnel	v0,at,f2c <func_80B3D014+0xf8>
     e60:	8fbf0014 	lw	ra,20(sp)
     e64:	94a31d74 	lhu	v1,7540(a1)
     e68:	24010077 	li	at,119
     e6c:	3c180000 	lui	t8,0x0
     e70:	14610016 	bne	v1,at,ecc <func_80B3D014+0x98>
     e74:	27180000 	addiu	t8,t8,0
     e78:	8f080000 	lw	t0,0(t8)
     e7c:	27a50030 	addiu	a1,sp,48
     e80:	3c010001 	lui	at,0x1
     e84:	aca80000 	sw	t0,0(a1)
     e88:	8f190004 	lw	t9,4(t8)
     e8c:	34211d60 	ori	at,at,0x1d60
     e90:	3c060000 	lui	a2,0x0
     e94:	acb90004 	sw	t9,4(a1)
     e98:	8f080008 	lw	t0,8(t8)
     e9c:	24c60000 	addiu	a2,a2,0
     ea0:	27a7003c 	addiu	a3,sp,60
     ea4:	aca80008 	sw	t0,8(a1)
     ea8:	8fa40054 	lw	a0,84(sp)
     eac:	0c000000 	jal	0 <func_80B3C1E0>
     eb0:	00812021 	addu	a0,a0,at
     eb4:	3c040000 	lui	a0,0x0
     eb8:	24840000 	addiu	a0,a0,0
     ebc:	0c000000 	jal	0 <func_80B3C1E0>
     ec0:	240528a1 	li	a1,10401
     ec4:	10000019 	b	f2c <func_80B3D014+0xf8>
     ec8:	8fbf0014 	lw	ra,20(sp)
     ecc:	240100a4 	li	at,164
     ed0:	14610015 	bne	v1,at,f28 <func_80B3D014+0xf4>
     ed4:	3c090000 	lui	t1,0x0
     ed8:	25290000 	addiu	t1,t1,0
     edc:	8d2b0000 	lw	t3,0(t1)
     ee0:	27a50024 	addiu	a1,sp,36
     ee4:	3c010001 	lui	at,0x1
     ee8:	acab0000 	sw	t3,0(a1)
     eec:	8d2a0004 	lw	t2,4(t1)
     ef0:	34211d60 	ori	at,at,0x1d60
     ef4:	3c060000 	lui	a2,0x0
     ef8:	acaa0004 	sw	t2,4(a1)
     efc:	8d2b0008 	lw	t3,8(t1)
     f00:	24c60000 	addiu	a2,a2,0
     f04:	27a7003c 	addiu	a3,sp,60
     f08:	acab0008 	sw	t3,8(a1)
     f0c:	8fa40054 	lw	a0,84(sp)
     f10:	0c000000 	jal	0 <func_80B3C1E0>
     f14:	00812021 	addu	a0,a0,at
     f18:	3c040000 	lui	a0,0x0
     f1c:	24840000 	addiu	a0,a0,0
     f20:	0c000000 	jal	0 <func_80B3C1E0>
     f24:	24050802 	li	a1,2050
     f28:	8fbf0014 	lw	ra,20(sp)
     f2c:	27bd0050 	addiu	sp,sp,80
     f30:	03e00008 	jr	ra
     f34:	00000000 	nop

00000f38 <func_80B3D118>:
     f38:	3c0e0000 	lui	t6,0x0
     f3c:	8dce1360 	lw	t6,4960(t6)
     f40:	27bdffe8 	addiu	sp,sp,-24
     f44:	24010004 	li	at,4
     f48:	15c10005 	bne	t6,at,f60 <func_80B3D118+0x28>
     f4c:	afbf0014 	sw	ra,20(sp)
     f50:	848200a4 	lh	v0,164(a0)
     f54:	2401005c 	li	at,92
     f58:	50410004 	beql	v0,at,f6c <func_80B3D118+0x34>
     f5c:	8fbf0014 	lw	ra,20(sp)
     f60:	0c000000 	jal	0 <func_80B3C1E0>
     f64:	2404083d 	li	a0,2109
     f68:	8fbf0014 	lw	ra,20(sp)
     f6c:	27bd0018 	addiu	sp,sp,24
     f70:	03e00008 	jr	ra
     f74:	00000000 	nop

00000f78 <func_80B3D158>:
     f78:	3c0e0000 	lui	t6,0x0
     f7c:	8dce1360 	lw	t6,4960(t6)
     f80:	27bdffc8 	addiu	sp,sp,-56
     f84:	24010004 	li	at,4
     f88:	afbf0014 	sw	ra,20(sp)
     f8c:	15c10046 	bne	t6,at,10a8 <func_80B3D158+0x130>
     f90:	00803025 	move	a2,a0
     f94:	848200a4 	lh	v0,164(a0)
     f98:	2401005c 	li	at,92
     f9c:	54410043 	bnel	v0,at,10ac <func_80B3D158+0x134>
     fa0:	8fbf0014 	lw	ra,20(sp)
     fa4:	94821d74 	lhu	v0,7540(a0)
     fa8:	28410078 	slti	at,v0,120
     fac:	1420003e 	bnez	at,10a8 <func_80B3D158+0x130>
     fb0:	284100a4 	slti	at,v0,164
     fb4:	1020003c 	beqz	at,10a8 <func_80B3D158+0x130>
     fb8:	3c0f0000 	lui	t7,0x0
     fbc:	8def0000 	lw	t7,0(t7)
     fc0:	3c040000 	lui	a0,0x0
     fc4:	24840000 	addiu	a0,a0,0
     fc8:	11e0002b 	beqz	t7,1078 <func_80B3D158+0x100>
     fcc:	24c500e0 	addiu	a1,a2,224
     fd0:	0c000000 	jal	0 <func_80B3C1E0>
     fd4:	afa60038 	sw	a2,56(sp)
     fd8:	3c010000 	lui	at,0x0
     fdc:	c42e0000 	lwc1	$f14,0(at)
     fe0:	3c010000 	lui	at,0x0
     fe4:	c4240000 	lwc1	$f4,0(at)
     fe8:	3c040000 	lui	a0,0x0
     fec:	24840000 	addiu	a0,a0,0
     ff0:	46040083 	div.s	$f2,$f0,$f4
     ff4:	3c010000 	lui	at,0x0
     ff8:	4602703c 	c.lt.s	$f14,$f2
     ffc:	46001306 	mov.s	$f12,$f2
    1000:	45020003 	bc1fl	1010 <func_80B3D158+0x98>
    1004:	460071a1 	cvt.d.s	$f6,$f14
    1008:	46001386 	mov.s	$f14,$f2
    100c:	460071a1 	cvt.d.s	$f6,$f14
    1010:	e7ac001c 	swc1	$f12,28(sp)
    1014:	44073000 	mfc1	a3,$f6
    1018:	44063800 	mfc1	a2,$f7
    101c:	0c000000 	jal	0 <func_80B3C1E0>
    1020:	e42e0000 	swc1	$f14,0(at)
    1024:	3c014000 	lui	at,0x4000
    1028:	44810000 	mtc1	at,$f0
    102c:	c7ac001c 	lwc1	$f12,28(sp)
    1030:	3c010000 	lui	at,0x0
    1034:	460c003c 	c.lt.s	$f0,$f12
    1038:	00000000 	nop
    103c:	45000002 	bc1f	1048 <func_80B3D158+0xd0>
    1040:	00000000 	nop
    1044:	46000306 	mov.s	$f12,$f0
    1048:	c4280000 	lwc1	$f8,0(at)
    104c:	3c010000 	lui	at,0x0
    1050:	c4300000 	lwc1	$f16,0(at)
    1054:	460c4282 	mul.s	$f10,$f8,$f12
    1058:	3c040000 	lui	a0,0x0
    105c:	24840000 	addiu	a0,a0,0
    1060:	240520bd 	li	a1,8381
    1064:	46105480 	add.s	$f18,$f10,$f16
    1068:	44069000 	mfc1	a2,$f18
    106c:	0c000000 	jal	0 <func_80B3C1E0>
    1070:	00000000 	nop
    1074:	8fa60038 	lw	a2,56(sp)
    1078:	24c200e0 	addiu	v0,a2,224
    107c:	c4440000 	lwc1	$f4,0(v0)
    1080:	3c010000 	lui	at,0x0
    1084:	24180001 	li	t8,1
    1088:	e4240000 	swc1	$f4,0(at)
    108c:	c4460004 	lwc1	$f6,4(v0)
    1090:	e4260000 	swc1	$f6,0(at)
    1094:	c4480008 	lwc1	$f8,8(v0)
    1098:	3c010000 	lui	at,0x0
    109c:	e4280000 	swc1	$f8,0(at)
    10a0:	3c010000 	lui	at,0x0
    10a4:	ac380000 	sw	t8,0(at)
    10a8:	8fbf0014 	lw	ra,20(sp)
    10ac:	27bd0038 	addiu	sp,sp,56
    10b0:	03e00008 	jr	ra
    10b4:	00000000 	nop

000010b8 <func_80B3D298>:
    10b8:	3c0e0000 	lui	t6,0x0
    10bc:	8dce0000 	lw	t6,0(t6)
    10c0:	27bdffd0 	addiu	sp,sp,-48
    10c4:	afbf002c 	sw	ra,44(sp)
    10c8:	afa40030 	sw	a0,48(sp)
    10cc:	15c0001e 	bnez	t6,1148 <func_80B3D298+0x90>
    10d0:	afa50034 	sw	a1,52(sp)
    10d4:	00a02025 	move	a0,a1
    10d8:	0c000000 	jal	0 <func_80B3C1E0>
    10dc:	00002825 	move	a1,zero
    10e0:	8c4f000c 	lw	t7,12(v0)
    10e4:	8c580010 	lw	t8,16(v0)
    10e8:	8c590014 	lw	t9,20(v0)
    10ec:	448f2000 	mtc1	t7,$f4
    10f0:	44983000 	mtc1	t8,$f6
    10f4:	44994000 	mtc1	t9,$f8
    10f8:	46802020 	cvt.s.w	$f0,$f4
    10fc:	8fa50034 	lw	a1,52(sp)
    1100:	24080005 	li	t0,5
    1104:	afa80024 	sw	t0,36(sp)
    1108:	afa00020 	sw	zero,32(sp)
    110c:	468030a0 	cvt.s.w	$f2,$f6
    1110:	44070000 	mfc1	a3,$f0
    1114:	afa0001c 	sw	zero,28(sp)
    1118:	afa00018 	sw	zero,24(sp)
    111c:	24060008 	li	a2,8
    1120:	46804320 	cvt.s.w	$f12,$f8
    1124:	e7a20010 	swc1	$f2,16(sp)
    1128:	24a41c24 	addiu	a0,a1,7204
    112c:	0c000000 	jal	0 <func_80B3C1E0>
    1130:	e7ac0014 	swc1	$f12,20(sp)
    1134:	8fa90030 	lw	t1,48(sp)
    1138:	240a0001 	li	t2,1
    113c:	3c010000 	lui	at,0x0
    1140:	ad220310 	sw	v0,784(t1)
    1144:	ac2a0000 	sw	t2,0(at)
    1148:	8fbf002c 	lw	ra,44(sp)
    114c:	27bd0030 	addiu	sp,sp,48
    1150:	03e00008 	jr	ra
    1154:	00000000 	nop

00001158 <func_80B3D338>:
    1158:	27bdffe8 	addiu	sp,sp,-24
    115c:	afa40018 	sw	a0,24(sp)
    1160:	afbf0014 	sw	ra,20(sp)
    1164:	00a02025 	move	a0,a1
    1168:	0c000000 	jal	0 <func_80B3C1E0>
    116c:	00002825 	move	a1,zero
    1170:	8fa50018 	lw	a1,24(sp)
    1174:	8ca40310 	lw	a0,784(a1)
    1178:	50800012 	beqzl	a0,11c4 <func_80B3D338+0x6c>
    117c:	8fbf0014 	lw	ra,20(sp)
    1180:	8c4e000c 	lw	t6,12(v0)
    1184:	24830024 	addiu	v1,a0,36
    1188:	448e2000 	mtc1	t6,$f4
    118c:	00000000 	nop
    1190:	468021a0 	cvt.s.w	$f6,$f4
    1194:	e4660000 	swc1	$f6,0(v1)
    1198:	8c4f0010 	lw	t7,16(v0)
    119c:	448f4000 	mtc1	t7,$f8
    11a0:	00000000 	nop
    11a4:	468042a0 	cvt.s.w	$f10,$f8
    11a8:	e46a0004 	swc1	$f10,4(v1)
    11ac:	8c580014 	lw	t8,20(v0)
    11b0:	44988000 	mtc1	t8,$f16
    11b4:	00000000 	nop
    11b8:	468084a0 	cvt.s.w	$f18,$f16
    11bc:	e4720008 	swc1	$f18,8(v1)
    11c0:	8fbf0014 	lw	ra,20(sp)
    11c4:	27bd0018 	addiu	sp,sp,24
    11c8:	03e00008 	jr	ra
    11cc:	00000000 	nop

000011d0 <func_80B3D3B0>:
    11d0:	27bdffe8 	addiu	sp,sp,-24
    11d4:	afbf0014 	sw	ra,20(sp)
    11d8:	8c860310 	lw	a2,784(a0)
    11dc:	00802825 	move	a1,a0
    11e0:	10c00005 	beqz	a2,11f8 <func_80B3D3B0+0x28>
    11e4:	00c02025 	move	a0,a2
    11e8:	0c000000 	jal	0 <func_80B3C1E0>
    11ec:	afa50018 	sw	a1,24(sp)
    11f0:	8fa50018 	lw	a1,24(sp)
    11f4:	aca00310 	sw	zero,784(a1)
    11f8:	0c000000 	jal	0 <func_80B3C1E0>
    11fc:	00a02025 	move	a0,a1
    1200:	8fbf0014 	lw	ra,20(sp)
    1204:	27bd0018 	addiu	sp,sp,24
    1208:	03e00008 	jr	ra
    120c:	00000000 	nop

00001210 <func_80B3D3F0>:
    1210:	27bdffd8 	addiu	sp,sp,-40
    1214:	afbf0014 	sw	ra,20(sp)
    1218:	afa40028 	sw	a0,40(sp)
    121c:	84a200a4 	lh	v0,164(a1)
    1220:	24010061 	li	at,97
    1224:	00a03025 	move	a2,a1
    1228:	1441001c 	bne	v0,at,129c <func_80B3D3F0+0x8c>
    122c:	00a02025 	move	a0,a1
    1230:	00002825 	move	a1,zero
    1234:	0c000000 	jal	0 <func_80B3C1E0>
    1238:	afa6002c 	sw	a2,44(sp)
    123c:	10400017 	beqz	v0,129c <func_80B3D3F0+0x8c>
    1240:	3c0e0000 	lui	t6,0x0
    1244:	94430000 	lhu	v1,0(v0)
    1248:	8dce0000 	lw	t6,0(t6)
    124c:	24010001 	li	at,1
    1250:	51c30010 	beql	t6,v1,1294 <func_80B3D3F0+0x84>
    1254:	8fa40028 	lw	a0,40(sp)
    1258:	10610005 	beq	v1,at,1270 <func_80B3D3F0+0x60>
    125c:	8fa40028 	lw	a0,40(sp)
    1260:	8fa5002c 	lw	a1,44(sp)
    1264:	0c000000 	jal	0 <func_80B3C1E0>
    1268:	afa30018 	sw	v1,24(sp)
    126c:	8fa30018 	lw	v1,24(sp)
    1270:	24010001 	li	at,1
    1274:	14610004 	bne	v1,at,1288 <func_80B3D3F0+0x78>
    1278:	8fa40028 	lw	a0,40(sp)
    127c:	0c000000 	jal	0 <func_80B3C1E0>
    1280:	afa30018 	sw	v1,24(sp)
    1284:	8fa30018 	lw	v1,24(sp)
    1288:	3c010000 	lui	at,0x0
    128c:	ac230000 	sw	v1,0(at)
    1290:	8fa40028 	lw	a0,40(sp)
    1294:	0c000000 	jal	0 <func_80B3C1E0>
    1298:	8fa5002c 	lw	a1,44(sp)
    129c:	8fbf0014 	lw	ra,20(sp)
    12a0:	27bd0028 	addiu	sp,sp,40
    12a4:	03e00008 	jr	ra
    12a8:	00000000 	nop

000012ac <func_80B3D48C>:
    12ac:	8ca21d88 	lw	v0,7560(a1)
    12b0:	50400008 	beqzl	v0,12d4 <func_80B3D48C+0x28>
    12b4:	8ca21c44 	lw	v0,7236(a1)
    12b8:	94430008 	lhu	v1,8(v0)
    12bc:	34018000 	li	at,0x8000
    12c0:	00611821 	addu	v1,v1,at
    12c4:	00031c00 	sll	v1,v1,0x10
    12c8:	10000007 	b	12e8 <func_80B3D48C+0x3c>
    12cc:	00031c03 	sra	v1,v1,0x10
    12d0:	8ca21c44 	lw	v0,7236(a1)
    12d4:	34018000 	li	at,0x8000
    12d8:	84430032 	lh	v1,50(v0)
    12dc:	00611821 	addu	v1,v1,at
    12e0:	00031c00 	sll	v1,v1,0x10
    12e4:	00031c03 	sra	v1,v1,0x10
    12e8:	a4830032 	sh	v1,50(a0)
    12ec:	848e0032 	lh	t6,50(a0)
    12f0:	03e00008 	jr	ra
    12f4:	a48e00b6 	sh	t6,182(a0)

000012f8 <func_80B3D4D8>:
    12f8:	27bdffe0 	addiu	sp,sp,-32
    12fc:	3c060601 	lui	a2,0x601
    1300:	afbf0014 	sw	ra,20(sp)
    1304:	24c677f8 	addiu	a2,a2,30712
    1308:	0c000000 	jal	0 <func_80B3C1E0>
    130c:	afa6001c 	sw	a2,28(sp)
    1310:	10400019 	beqz	v0,1378 <func_80B3D4D8+0x80>
    1314:	8fa6001c 	lw	a2,28(sp)
    1318:	94430000 	lhu	v1,0(v0)
    131c:	2401000b 	li	at,11
    1320:	54610005 	bnel	v1,at,1338 <func_80B3D4D8+0x40>
    1324:	2401000c 	li	at,12
    1328:	3c060600 	lui	a2,0x600
    132c:	10000012 	b	1378 <func_80B3D4D8+0x80>
    1330:	24c635c8 	addiu	a2,a2,13768
    1334:	2401000c 	li	at,12
    1338:	54610005 	bnel	v1,at,1350 <func_80B3D4D8+0x58>
    133c:	2401000d 	li	at,13
    1340:	3c060600 	lui	a2,0x600
    1344:	1000000c 	b	1378 <func_80B3D4D8+0x80>
    1348:	24c6289c 	addiu	a2,a2,10396
    134c:	2401000d 	li	at,13
    1350:	54610005 	bnel	v1,at,1368 <func_80B3D4D8+0x70>
    1354:	24010017 	li	at,23
    1358:	3c060600 	lui	a2,0x600
    135c:	10000006 	b	1378 <func_80B3D4D8+0x80>
    1360:	24c64570 	addiu	a2,a2,17776
    1364:	24010017 	li	at,23
    1368:	54610004 	bnel	v1,at,137c <func_80B3D4D8+0x84>
    136c:	8fbf0014 	lw	ra,20(sp)
    1370:	3c060600 	lui	a2,0x600
    1374:	24c60b6c 	addiu	a2,a2,2924
    1378:	8fbf0014 	lw	ra,20(sp)
    137c:	27bd0020 	addiu	sp,sp,32
    1380:	00c01025 	move	v0,a2
    1384:	03e00008 	jr	ra
    1388:	00000000 	nop

0000138c <func_80B3D56C>:
    138c:	27bdffe8 	addiu	sp,sp,-24
    1390:	afbf0014 	sw	ra,20(sp)
    1394:	3c014110 	lui	at,0x4110
    1398:	44811000 	mtc1	at,$f2
    139c:	c4800268 	lwc1	$f0,616(a0)
    13a0:	3c014040 	lui	at,0x4040
    13a4:	4602003c 	c.lt.s	$f0,$f2
    13a8:	00000000 	nop
    13ac:	45020005 	bc1fl	13c4 <func_80B3D56C+0x38>
    13b0:	44816000 	mtc1	at,$f12
    13b4:	44802000 	mtc1	zero,$f4
    13b8:	10000024 	b	144c <func_80B3D56C+0xc0>
    13bc:	e4840068 	swc1	$f4,104(a0)
    13c0:	44816000 	mtc1	at,$f12
    13c4:	3c0e0000 	lui	t6,0x0
    13c8:	3c180000 	lui	t8,0x0
    13cc:	460c003c 	c.lt.s	$f0,$f12
    13d0:	00000000 	nop
    13d4:	45000011 	bc1f	141c <func_80B3D56C+0x90>
    13d8:	00000000 	nop
    13dc:	8dce0000 	lw	t6,0(t6)
    13e0:	3c010000 	lui	at,0x0
    13e4:	c42a0000 	lwc1	$f10,0(at)
    13e8:	85cf1458 	lh	t7,5208(t6)
    13ec:	3c010000 	lui	at,0x0
    13f0:	c4320000 	lwc1	$f18,0(at)
    13f4:	448f3000 	mtc1	t7,$f6
    13f8:	00000000 	nop
    13fc:	46803220 	cvt.s.w	$f8,$f6
    1400:	460a4402 	mul.s	$f16,$f8,$f10
    1404:	46020201 	sub.s	$f8,$f0,$f2
    1408:	46128100 	add.s	$f4,$f16,$f18
    140c:	460c2183 	div.s	$f6,$f4,$f12
    1410:	46083282 	mul.s	$f10,$f6,$f8
    1414:	1000000d 	b	144c <func_80B3D56C+0xc0>
    1418:	e48a0068 	swc1	$f10,104(a0)
    141c:	8f180000 	lw	t8,0(t8)
    1420:	3c010000 	lui	at,0x0
    1424:	c4240000 	lwc1	$f4,0(at)
    1428:	87191458 	lh	t9,5208(t8)
    142c:	3c010000 	lui	at,0x0
    1430:	c4280000 	lwc1	$f8,0(at)
    1434:	44998000 	mtc1	t9,$f16
    1438:	00000000 	nop
    143c:	468084a0 	cvt.s.w	$f18,$f16
    1440:	46049182 	mul.s	$f6,$f18,$f4
    1444:	46083280 	add.s	$f10,$f6,$f8
    1448:	e48a0068 	swc1	$f10,104(a0)
    144c:	0c000000 	jal	0 <func_80B3C1E0>
    1450:	00000000 	nop
    1454:	8fbf0014 	lw	ra,20(sp)
    1458:	27bd0018 	addiu	sp,sp,24
    145c:	03e00008 	jr	ra
    1460:	00000000 	nop

00001464 <func_80B3D644>:
    1464:	27bdffe8 	addiu	sp,sp,-24
    1468:	afbf0014 	sw	ra,20(sp)
    146c:	0c000000 	jal	0 <func_80B3C1E0>
    1470:	00000000 	nop
    1474:	8fbf0014 	lw	ra,20(sp)
    1478:	27bd0018 	addiu	sp,sp,24
    147c:	03e00008 	jr	ra
    1480:	00000000 	nop

00001484 <func_80B3D664>:
    1484:	27bdffe8 	addiu	sp,sp,-24
    1488:	afbf0014 	sw	ra,20(sp)
    148c:	3c014040 	lui	at,0x4040
    1490:	44811000 	mtc1	at,$f2
    1494:	c4800268 	lwc1	$f0,616(a0)
    1498:	3c0e0000 	lui	t6,0x0
    149c:	4602003c 	c.lt.s	$f0,$f2
    14a0:	00000000 	nop
    14a4:	45020012 	bc1fl	14f0 <func_80B3D664+0x6c>
    14a8:	44805000 	mtc1	zero,$f10
    14ac:	8dce0000 	lw	t6,0(t6)
    14b0:	3c010000 	lui	at,0x0
    14b4:	c4280000 	lwc1	$f8,0(at)
    14b8:	85cf1458 	lh	t7,5208(t6)
    14bc:	3c010000 	lui	at,0x0
    14c0:	c4300000 	lwc1	$f16,0(at)
    14c4:	448f2000 	mtc1	t7,$f4
    14c8:	00000000 	nop
    14cc:	468021a0 	cvt.s.w	$f6,$f4
    14d0:	46083282 	mul.s	$f10,$f6,$f8
    14d4:	46001181 	sub.s	$f6,$f2,$f0
    14d8:	46105480 	add.s	$f18,$f10,$f16
    14dc:	46029103 	div.s	$f4,$f18,$f2
    14e0:	46062202 	mul.s	$f8,$f4,$f6
    14e4:	10000004 	b	14f8 <func_80B3D664+0x74>
    14e8:	e4880068 	swc1	$f8,104(a0)
    14ec:	44805000 	mtc1	zero,$f10
    14f0:	00000000 	nop
    14f4:	e48a0068 	swc1	$f10,104(a0)
    14f8:	0c000000 	jal	0 <func_80B3C1E0>
    14fc:	00000000 	nop
    1500:	8fbf0014 	lw	ra,20(sp)
    1504:	27bd0018 	addiu	sp,sp,24
    1508:	03e00008 	jr	ra
    150c:	00000000 	nop

00001510 <func_80B3D6F0>:
    1510:	27bdffe8 	addiu	sp,sp,-24
    1514:	afbf0014 	sw	ra,20(sp)
    1518:	0c000000 	jal	0 <func_80B3C1E0>
    151c:	00000000 	nop
    1520:	8fbf0014 	lw	ra,20(sp)
    1524:	27bd0018 	addiu	sp,sp,24
    1528:	03e00008 	jr	ra
    152c:	00000000 	nop

00001530 <func_80B3D710>:
    1530:	27bdffe8 	addiu	sp,sp,-24
    1534:	afbf0014 	sw	ra,20(sp)
    1538:	0c000000 	jal	0 <func_80B3C1E0>
    153c:	00000000 	nop
    1540:	8fbf0014 	lw	ra,20(sp)
    1544:	27bd0018 	addiu	sp,sp,24
    1548:	03e00008 	jr	ra
    154c:	00000000 	nop

00001550 <func_80B3D730>:
    1550:	27bdffe8 	addiu	sp,sp,-24
    1554:	afbf0014 	sw	ra,20(sp)
    1558:	0c000000 	jal	0 <func_80B3C1E0>
    155c:	00000000 	nop
    1560:	8fbf0014 	lw	ra,20(sp)
    1564:	27bd0018 	addiu	sp,sp,24
    1568:	03e00008 	jr	ra
    156c:	00000000 	nop

00001570 <func_80B3D750>:
    1570:	27bdffe8 	addiu	sp,sp,-24
    1574:	afbf0014 	sw	ra,20(sp)
    1578:	afa40018 	sw	a0,24(sp)
    157c:	0c000000 	jal	0 <func_80B3C1E0>
    1580:	afa5001c 	sw	a1,28(sp)
    1584:	10400007 	beqz	v0,15a4 <func_80B3D750+0x34>
    1588:	8fa40018 	lw	a0,24(sp)
    158c:	0c000000 	jal	0 <func_80B3C1E0>
    1590:	8fa5001c 	lw	a1,28(sp)
    1594:	10400003 	beqz	v0,15a4 <func_80B3D750+0x34>
    1598:	8faf0018 	lw	t7,24(sp)
    159c:	240e0001 	li	t6,1
    15a0:	adee0260 	sw	t6,608(t7)
    15a4:	8fbf0014 	lw	ra,20(sp)
    15a8:	27bd0018 	addiu	sp,sp,24
    15ac:	03e00008 	jr	ra
    15b0:	00000000 	nop

000015b4 <func_80B3D794>:
    15b4:	27bdffb0 	addiu	sp,sp,-80
    15b8:	afbf002c 	sw	ra,44(sp)
    15bc:	afb10028 	sw	s1,40(sp)
    15c0:	afb00024 	sw	s0,36(sp)
    15c4:	90ae1d6c 	lbu	t6,7532(a1)
    15c8:	00808025 	move	s0,a0
    15cc:	00a08825 	move	s1,a1
    15d0:	51c00038 	beqzl	t6,16b4 <func_80B3D794+0x100>
    15d4:	8fbf002c 	lw	ra,44(sp)
    15d8:	8ca61d9c 	lw	a2,7580(a1)
    15dc:	50c00035 	beqzl	a2,16b4 <func_80B3D794+0x100>
    15e0:	8fbf002c 	lw	ra,44(sp)
    15e4:	94cf0000 	lhu	t7,0(a2)
    15e8:	24010002 	li	at,2
    15ec:	3c040602 	lui	a0,0x602
    15f0:	15e1002f 	bne	t7,at,16b0 <func_80B3D794+0xfc>
    15f4:	2484c0e8 	addiu	a0,a0,-16152
    15f8:	0c000000 	jal	0 <func_80B3C1E0>
    15fc:	afa60044 	sw	a2,68(sp)
    1600:	44822000 	mtc1	v0,$f4
    1604:	8fa60044 	lw	a2,68(sp)
    1608:	24180002 	li	t8,2
    160c:	468021a0 	cvt.s.w	$f6,$f4
    1610:	24190001 	li	t9,1
    1614:	26030024 	addiu	v1,s0,36
    1618:	02002025 	move	a0,s0
    161c:	02202825 	move	a1,s1
    1620:	e7a60034 	swc1	$f6,52(sp)
    1624:	ae180260 	sw	t8,608(s0)
    1628:	ae190264 	sw	t9,612(s0)
    162c:	8cc8000c 	lw	t0,12(a2)
    1630:	44884000 	mtc1	t0,$f8
    1634:	00000000 	nop
    1638:	468042a0 	cvt.s.w	$f10,$f8
    163c:	e46a0000 	swc1	$f10,0(v1)
    1640:	8cc90010 	lw	t1,16(a2)
    1644:	44898000 	mtc1	t1,$f16
    1648:	00000000 	nop
    164c:	468084a0 	cvt.s.w	$f18,$f16
    1650:	e4720004 	swc1	$f18,4(v1)
    1654:	8cca0014 	lw	t2,20(a2)
    1658:	448a2000 	mtc1	t2,$f4
    165c:	00000000 	nop
    1660:	468021a0 	cvt.s.w	$f6,$f4
    1664:	0c000000 	jal	0 <func_80B3C1E0>
    1668:	e4660008 	swc1	$f6,8(v1)
    166c:	02002025 	move	a0,s0
    1670:	0c000000 	jal	0 <func_80B3C1E0>
    1674:	02202825 	move	a1,s1
    1678:	44800000 	mtc1	zero,$f0
    167c:	c7a80034 	lwc1	$f8,52(sp)
    1680:	3c050602 	lui	a1,0x602
    1684:	240b0002 	li	t3,2
    1688:	44070000 	mfc1	a3,$f0
    168c:	afab0014 	sw	t3,20(sp)
    1690:	24a5c0e8 	addiu	a1,a1,-16152
    1694:	2604014c 	addiu	a0,s0,332
    1698:	3c063f80 	lui	a2,0x3f80
    169c:	e7a80010 	swc1	$f8,16(sp)
    16a0:	0c000000 	jal	0 <func_80B3C1E0>
    16a4:	e7a00018 	swc1	$f0,24(sp)
    16a8:	0c000000 	jal	0 <func_80B3C1E0>
    16ac:	02202025 	move	a0,s1
    16b0:	8fbf002c 	lw	ra,44(sp)
    16b4:	8fb00024 	lw	s0,36(sp)
    16b8:	8fb10028 	lw	s1,40(sp)
    16bc:	03e00008 	jr	ra
    16c0:	27bd0050 	addiu	sp,sp,80

000016c4 <func_80B3D8A4>:
    16c4:	27bdffd0 	addiu	sp,sp,-48
    16c8:	afb00028 	sw	s0,40(sp)
    16cc:	00808025 	move	s0,a0
    16d0:	10c00030 	beqz	a2,1794 <func_80B3D8A4+0xd0>
    16d4:	afbf002c 	sw	ra,44(sp)
    16d8:	3c040601 	lui	a0,0x601
    16dc:	0c000000 	jal	0 <func_80B3C1E0>
    16e0:	24842fd0 	addiu	a0,a0,12240
    16e4:	44822000 	mtc1	v0,$f4
    16e8:	3c01c100 	lui	at,0xc100
    16ec:	44814000 	mtc1	at,$f8
    16f0:	468021a0 	cvt.s.w	$f6,$f4
    16f4:	3c050601 	lui	a1,0x601
    16f8:	24a52fd0 	addiu	a1,a1,12240
    16fc:	2604014c 	addiu	a0,s0,332
    1700:	3c063f80 	lui	a2,0x3f80
    1704:	24070000 	li	a3,0
    1708:	e7a60010 	swc1	$f6,16(sp)
    170c:	afa00014 	sw	zero,20(sp)
    1710:	0c000000 	jal	0 <func_80B3C1E0>
    1714:	e7a80018 	swc1	$f8,24(sp)
    1718:	44805000 	mtc1	zero,$f10
    171c:	240e0003 	li	t6,3
    1720:	ae0e0260 	sw	t6,608(s0)
    1724:	02002025 	move	a0,s0
    1728:	0c000000 	jal	0 <func_80B3C1E0>
    172c:	e60a0268 	swc1	$f10,616(s0)
    1730:	3c020000 	lui	v0,0x0
    1734:	24420000 	addiu	v0,v0,0
    1738:	8c4f0000 	lw	t7,0(v0)
    173c:	3c010000 	lui	at,0x0
    1740:	c4200000 	lwc1	$f0,0(at)
    1744:	85f81456 	lh	t8,5206(t7)
    1748:	3c014150 	lui	at,0x4150
    174c:	44811000 	mtc1	at,$f2
    1750:	44988000 	mtc1	t8,$f16
    1754:	00000000 	nop
    1758:	468084a0 	cvt.s.w	$f18,$f16
    175c:	46009102 	mul.s	$f4,$f18,$f0
    1760:	46022180 	add.s	$f6,$f4,$f2
    1764:	46003207 	neg.s	$f8,$f6
    1768:	e608006c 	swc1	$f8,108(s0)
    176c:	8c590000 	lw	t9,0(v0)
    1770:	87281456 	lh	t0,5206(t9)
    1774:	44885000 	mtc1	t0,$f10
    1778:	00000000 	nop
    177c:	46805420 	cvt.s.w	$f16,$f10
    1780:	46008482 	mul.s	$f18,$f16,$f0
    1784:	46029100 	add.s	$f4,$f18,$f2
    1788:	46002187 	neg.s	$f6,$f4
    178c:	10000003 	b	179c <func_80B3D8A4+0xd8>
    1790:	e6060070 	swc1	$f6,112(s0)
    1794:	0c000000 	jal	0 <func_80B3C1E0>
    1798:	02002025 	move	a0,s0
    179c:	8fbf002c 	lw	ra,44(sp)
    17a0:	8fb00028 	lw	s0,40(sp)
    17a4:	27bd0030 	addiu	sp,sp,48
    17a8:	03e00008 	jr	ra
    17ac:	00000000 	nop

000017b0 <func_80B3D990>:
    17b0:	3c013f80 	lui	at,0x3f80
    17b4:	44813000 	mtc1	at,$f6
    17b8:	c4840268 	lwc1	$f4,616(a0)
    17bc:	3c014140 	lui	at,0x4140
    17c0:	44818000 	mtc1	at,$f16
    17c4:	46062200 	add.s	$f8,$f4,$f6
    17c8:	3c0e0000 	lui	t6,0x0
    17cc:	e4880268 	swc1	$f8,616(a0)
    17d0:	c48a0268 	lwc1	$f10,616(a0)
    17d4:	460a803e 	c.le.s	$f16,$f10
    17d8:	00000000 	nop
    17dc:	4500000e 	bc1f	1818 <func_80B3D990+0x68>
    17e0:	00000000 	nop
    17e4:	8dce0000 	lw	t6,0(t6)
    17e8:	3c010000 	lui	at,0x0
    17ec:	c4260000 	lwc1	$f6,0(at)
    17f0:	85cf1458 	lh	t7,5208(t6)
    17f4:	3c010000 	lui	at,0x0
    17f8:	c42a0000 	lwc1	$f10,0(at)
    17fc:	448f9000 	mtc1	t7,$f18
    1800:	24180004 	li	t8,4
    1804:	ac980260 	sw	t8,608(a0)
    1808:	46809120 	cvt.s.w	$f4,$f18
    180c:	46062202 	mul.s	$f8,$f4,$f6
    1810:	460a4400 	add.s	$f16,$f8,$f10
    1814:	e4900068 	swc1	$f16,104(a0)
    1818:	03e00008 	jr	ra
    181c:	00000000 	nop

00001820 <func_80B3DA00>:
    1820:	3c0f0000 	lui	t7,0x0
    1824:	8def0000 	lw	t7,0(t7)
    1828:	27bdffd8 	addiu	sp,sp,-40
    182c:	afbf0024 	sw	ra,36(sp)
    1830:	afa40028 	sw	a0,40(sp)
    1834:	85f8145a 	lh	t8,5210(t7)
    1838:	3c0142be 	lui	at,0x42be
    183c:	44814000 	mtc1	at,$f8
    1840:	44982000 	mtc1	t8,$f4
    1844:	c4800090 	lwc1	$f0,144(a0)
    1848:	3c040600 	lui	a0,0x600
    184c:	468021a0 	cvt.s.w	$f6,$f4
    1850:	46083280 	add.s	$f10,$f6,$f8
    1854:	460a003e 	c.le.s	$f0,$f10
    1858:	00000000 	nop
    185c:	45020017 	bc1fl	18bc <func_80B3DA00+0x9c>
    1860:	8fbf0024 	lw	ra,36(sp)
    1864:	0c000000 	jal	0 <func_80B3C1E0>
    1868:	24844828 	addiu	a0,a0,18472
    186c:	44828000 	mtc1	v0,$f16
    1870:	3c01c140 	lui	at,0xc140
    1874:	44812000 	mtc1	at,$f4
    1878:	468084a0 	cvt.s.w	$f18,$f16
    187c:	8fa40028 	lw	a0,40(sp)
    1880:	3c050600 	lui	a1,0x600
    1884:	24a54828 	addiu	a1,a1,18472
    1888:	3c063f80 	lui	a2,0x3f80
    188c:	24070000 	li	a3,0
    1890:	e7b20010 	swc1	$f18,16(sp)
    1894:	afa00014 	sw	zero,20(sp)
    1898:	e7a40018 	swc1	$f4,24(sp)
    189c:	0c000000 	jal	0 <func_80B3C1E0>
    18a0:	2484014c 	addiu	a0,a0,332
    18a4:	8fa20028 	lw	v0,40(sp)
    18a8:	44803000 	mtc1	zero,$f6
    18ac:	24190005 	li	t9,5
    18b0:	ac590260 	sw	t9,608(v0)
    18b4:	e4460268 	swc1	$f6,616(v0)
    18b8:	8fbf0024 	lw	ra,36(sp)
    18bc:	27bd0028 	addiu	sp,sp,40
    18c0:	03e00008 	jr	ra
    18c4:	00000000 	nop

000018c8 <func_80B3DAA8>:
    18c8:	3c013f80 	lui	at,0x3f80
    18cc:	44813000 	mtc1	at,$f6
    18d0:	c4840268 	lwc1	$f4,616(a0)
    18d4:	3c014140 	lui	at,0x4140
    18d8:	44818000 	mtc1	at,$f16
    18dc:	46062200 	add.s	$f8,$f4,$f6
    18e0:	e4880268 	swc1	$f8,616(a0)
    18e4:	c48a0268 	lwc1	$f10,616(a0)
    18e8:	460a803e 	c.le.s	$f16,$f10
    18ec:	00000000 	nop
    18f0:	45000005 	bc1f	1908 <func_80B3DAA8+0x40>
    18f4:	00000000 	nop
    18f8:	44809000 	mtc1	zero,$f18
    18fc:	240e0006 	li	t6,6
    1900:	ac8e0260 	sw	t6,608(a0)
    1904:	e4920068 	swc1	$f18,104(a0)
    1908:	03e00008 	jr	ra
    190c:	00000000 	nop

00001910 <func_80B3DAF0>:
    1910:	27bdffd8 	addiu	sp,sp,-40
    1914:	afa40028 	sw	a0,40(sp)
    1918:	afbf0024 	sw	ra,36(sp)
    191c:	00a02025 	move	a0,a1
    1920:	0c000000 	jal	0 <func_80B3C1E0>
    1924:	24050004 	li	a1,4
    1928:	50400025 	beqzl	v0,19c0 <func_80B3DAF0+0xb0>
    192c:	8fbf0024 	lw	ra,36(sp)
    1930:	94440000 	lhu	a0,0(v0)
    1934:	24010003 	li	at,3
    1938:	10810008 	beq	a0,at,195c <func_80B3DAF0+0x4c>
    193c:	2401000b 	li	at,11
    1940:	10810006 	beq	a0,at,195c <func_80B3DAF0+0x4c>
    1944:	2401000c 	li	at,12
    1948:	10810004 	beq	a0,at,195c <func_80B3DAF0+0x4c>
    194c:	2401000d 	li	at,13
    1950:	10810002 	beq	a0,at,195c <func_80B3DAF0+0x4c>
    1954:	24010017 	li	at,23
    1958:	14810018 	bne	a0,at,19bc <func_80B3DAF0+0xac>
    195c:	3c040602 	lui	a0,0x602
    1960:	0c000000 	jal	0 <func_80B3C1E0>
    1964:	2484b19c 	addiu	a0,a0,-20068
    1968:	44822000 	mtc1	v0,$f4
    196c:	3c01c080 	lui	at,0xc080
    1970:	44814000 	mtc1	at,$f8
    1974:	468021a0 	cvt.s.w	$f6,$f4
    1978:	8fa40028 	lw	a0,40(sp)
    197c:	3c050602 	lui	a1,0x602
    1980:	240e0002 	li	t6,2
    1984:	afae0014 	sw	t6,20(sp)
    1988:	24a5b19c 	addiu	a1,a1,-20068
    198c:	e7a60010 	swc1	$f6,16(sp)
    1990:	3c063f80 	lui	a2,0x3f80
    1994:	24070000 	li	a3,0
    1998:	e7a80018 	swc1	$f8,24(sp)
    199c:	0c000000 	jal	0 <func_80B3C1E0>
    19a0:	2484014c 	addiu	a0,a0,332
    19a4:	8fb80028 	lw	t8,40(sp)
    19a8:	240f0007 	li	t7,7
    19ac:	24190002 	li	t9,2
    19b0:	af0f0260 	sw	t7,608(t8)
    19b4:	8fa80028 	lw	t0,40(sp)
    19b8:	ad190264 	sw	t9,612(t0)
    19bc:	8fbf0024 	lw	ra,36(sp)
    19c0:	27bd0028 	addiu	sp,sp,40
    19c4:	03e00008 	jr	ra
    19c8:	00000000 	nop

000019cc <func_80B3DBAC>:
    19cc:	27bdffd8 	addiu	sp,sp,-40
    19d0:	afbf0024 	sw	ra,36(sp)
    19d4:	10a00017 	beqz	a1,1a34 <func_80B3DBAC+0x68>
    19d8:	afa40028 	sw	a0,40(sp)
    19dc:	3c040601 	lui	a0,0x601
    19e0:	0c000000 	jal	0 <func_80B3C1E0>
    19e4:	24847c54 	addiu	a0,a0,31828
    19e8:	44822000 	mtc1	v0,$f4
    19ec:	44800000 	mtc1	zero,$f0
    19f0:	8fa40028 	lw	a0,40(sp)
    19f4:	468021a0 	cvt.s.w	$f6,$f4
    19f8:	3c050601 	lui	a1,0x601
    19fc:	240e0002 	li	t6,2
    1a00:	44070000 	mfc1	a3,$f0
    1a04:	afae0014 	sw	t6,20(sp)
    1a08:	24a57c54 	addiu	a1,a1,31828
    1a0c:	e7a60010 	swc1	$f6,16(sp)
    1a10:	3c063f80 	lui	a2,0x3f80
    1a14:	2484014c 	addiu	a0,a0,332
    1a18:	0c000000 	jal	0 <func_80B3C1E0>
    1a1c:	e7a00018 	swc1	$f0,24(sp)
    1a20:	8fa20028 	lw	v0,40(sp)
    1a24:	240f0008 	li	t7,8
    1a28:	24180003 	li	t8,3
    1a2c:	ac4f0260 	sw	t7,608(v0)
    1a30:	ac580264 	sw	t8,612(v0)
    1a34:	8fbf0024 	lw	ra,36(sp)
    1a38:	27bd0028 	addiu	sp,sp,40
    1a3c:	03e00008 	jr	ra
    1a40:	00000000 	nop

00001a44 <func_80B3DC24>:
    1a44:	27bdffc8 	addiu	sp,sp,-56
    1a48:	afbf0024 	sw	ra,36(sp)
    1a4c:	10c0001a 	beqz	a2,1ab8 <func_80B3DC24+0x74>
    1a50:	afa40038 	sw	a0,56(sp)
    1a54:	00a02025 	move	a0,a1
    1a58:	0c000000 	jal	0 <func_80B3C1E0>
    1a5c:	24050004 	li	a1,4
    1a60:	afa2002c 	sw	v0,44(sp)
    1a64:	0c000000 	jal	0 <func_80B3C1E0>
    1a68:	00402025 	move	a0,v0
    1a6c:	44822000 	mtc1	v0,$f4
    1a70:	3c01c100 	lui	at,0xc100
    1a74:	44814000 	mtc1	at,$f8
    1a78:	468021a0 	cvt.s.w	$f6,$f4
    1a7c:	8fa40038 	lw	a0,56(sp)
    1a80:	8fa5002c 	lw	a1,44(sp)
    1a84:	3c063f80 	lui	a2,0x3f80
    1a88:	24070000 	li	a3,0
    1a8c:	afa00014 	sw	zero,20(sp)
    1a90:	e7a60010 	swc1	$f6,16(sp)
    1a94:	e7a80018 	swc1	$f8,24(sp)
    1a98:	0c000000 	jal	0 <func_80B3C1E0>
    1a9c:	2484014c 	addiu	a0,a0,332
    1aa0:	8faf0038 	lw	t7,56(sp)
    1aa4:	240e0009 	li	t6,9
    1aa8:	24180003 	li	t8,3
    1aac:	adee0260 	sw	t6,608(t7)
    1ab0:	8fb90038 	lw	t9,56(sp)
    1ab4:	af380264 	sw	t8,612(t9)
    1ab8:	8fbf0024 	lw	ra,36(sp)
    1abc:	27bd0038 	addiu	sp,sp,56
    1ac0:	03e00008 	jr	ra
    1ac4:	00000000 	nop

00001ac8 <func_80B3DCA8>:
    1ac8:	27bdffd8 	addiu	sp,sp,-40
    1acc:	afbf0024 	sw	ra,36(sp)
    1ad0:	afa40028 	sw	a0,40(sp)
    1ad4:	90ae1d6c 	lbu	t6,7532(a1)
    1ad8:	51c0001d 	beqzl	t6,1b50 <func_80B3DCA8+0x88>
    1adc:	8fbf0024 	lw	ra,36(sp)
    1ae0:	8ca21d9c 	lw	v0,7580(a1)
    1ae4:	5040001a 	beqzl	v0,1b50 <func_80B3DCA8+0x88>
    1ae8:	8fbf0024 	lw	ra,36(sp)
    1aec:	944f0000 	lhu	t7,0(v0)
    1af0:	24010008 	li	at,8
    1af4:	3c040601 	lui	a0,0x601
    1af8:	55e10015 	bnel	t7,at,1b50 <func_80B3DCA8+0x88>
    1afc:	8fbf0024 	lw	ra,36(sp)
    1b00:	0c000000 	jal	0 <func_80B3C1E0>
    1b04:	24847c54 	addiu	a0,a0,31828
    1b08:	44822000 	mtc1	v0,$f4
    1b0c:	3c01c100 	lui	at,0xc100
    1b10:	44813000 	mtc1	at,$f6
    1b14:	46802020 	cvt.s.w	$f0,$f4
    1b18:	8fa40028 	lw	a0,40(sp)
    1b1c:	3c050601 	lui	a1,0x601
    1b20:	24a57c54 	addiu	a1,a1,31828
    1b24:	24060000 	li	a2,0
    1b28:	afa00014 	sw	zero,20(sp)
    1b2c:	44070000 	mfc1	a3,$f0
    1b30:	e7a00010 	swc1	$f0,16(sp)
    1b34:	e7a60018 	swc1	$f6,24(sp)
    1b38:	0c000000 	jal	0 <func_80B3C1E0>
    1b3c:	2484014c 	addiu	a0,a0,332
    1b40:	8fb90028 	lw	t9,40(sp)
    1b44:	2418000a 	li	t8,10
    1b48:	af380260 	sw	t8,608(t9)
    1b4c:	8fbf0024 	lw	ra,36(sp)
    1b50:	27bd0028 	addiu	sp,sp,40
    1b54:	03e00008 	jr	ra
    1b58:	00000000 	nop

00001b5c <func_80B3DD3C>:
    1b5c:	27bdffd0 	addiu	sp,sp,-48
    1b60:	afbf002c 	sw	ra,44(sp)
    1b64:	afb00028 	sw	s0,40(sp)
    1b68:	00808025 	move	s0,a0
    1b6c:	afa50034 	sw	a1,52(sp)
    1b70:	24060005 	li	a2,5
    1b74:	0c000000 	jal	0 <func_80B3C1E0>
    1b78:	24070004 	li	a3,4
    1b7c:	1040001a 	beqz	v0,1be8 <func_80B3DD3C+0x8c>
    1b80:	02002025 	move	a0,s0
    1b84:	c6000164 	lwc1	$f0,356(s0)
    1b88:	c602015c 	lwc1	$f2,348(s0)
    1b8c:	3c040601 	lui	a0,0x601
    1b90:	4600103e 	c.le.s	$f2,$f0
    1b94:	00000000 	nop
    1b98:	4502001d 	bc1fl	1c10 <func_80B3DD3C+0xb4>
    1b9c:	8fbf002c 	lw	ra,44(sp)
    1ba0:	0c000000 	jal	0 <func_80B3C1E0>
    1ba4:	24847c54 	addiu	a0,a0,31828
    1ba8:	44822000 	mtc1	v0,$f4
    1bac:	44800000 	mtc1	zero,$f0
    1bb0:	3c050601 	lui	a1,0x601
    1bb4:	46802120 	cvt.s.w	$f4,$f4
    1bb8:	240e0002 	li	t6,2
    1bbc:	afae0014 	sw	t6,20(sp)
    1bc0:	24a57c54 	addiu	a1,a1,31828
    1bc4:	2604014c 	addiu	a0,s0,332
    1bc8:	3c06bf80 	lui	a2,0xbf80
    1bcc:	44072000 	mfc1	a3,$f4
    1bd0:	e7a00010 	swc1	$f0,16(sp)
    1bd4:	0c000000 	jal	0 <func_80B3C1E0>
    1bd8:	e7a00018 	swc1	$f0,24(sp)
    1bdc:	240f000b 	li	t7,11
    1be0:	1000000a 	b	1c0c <func_80B3DD3C+0xb0>
    1be4:	ae0f0260 	sw	t7,608(s0)
    1be8:	8fa50034 	lw	a1,52(sp)
    1bec:	24060008 	li	a2,8
    1bf0:	0c000000 	jal	0 <func_80B3C1E0>
    1bf4:	24070004 	li	a3,4
    1bf8:	10400004 	beqz	v0,1c0c <func_80B3DD3C+0xb0>
    1bfc:	02002025 	move	a0,s0
    1c00:	8fa50034 	lw	a1,52(sp)
    1c04:	0c000000 	jal	0 <func_80B3C1E0>
    1c08:	24060001 	li	a2,1
    1c0c:	8fbf002c 	lw	ra,44(sp)
    1c10:	8fb00028 	lw	s0,40(sp)
    1c14:	27bd0030 	addiu	sp,sp,48
    1c18:	03e00008 	jr	ra
    1c1c:	00000000 	nop

00001c20 <func_80B3DE00>:
    1c20:	27bdffd8 	addiu	sp,sp,-40
    1c24:	afbf0024 	sw	ra,36(sp)
    1c28:	10a00017 	beqz	a1,1c88 <func_80B3DE00+0x68>
    1c2c:	afa40028 	sw	a0,40(sp)
    1c30:	3c040602 	lui	a0,0x602
    1c34:	0c000000 	jal	0 <func_80B3C1E0>
    1c38:	2484b19c 	addiu	a0,a0,-20068
    1c3c:	44822000 	mtc1	v0,$f4
    1c40:	44800000 	mtc1	zero,$f0
    1c44:	8fa40028 	lw	a0,40(sp)
    1c48:	46802120 	cvt.s.w	$f4,$f4
    1c4c:	3c050602 	lui	a1,0x602
    1c50:	240e0002 	li	t6,2
    1c54:	afae0014 	sw	t6,20(sp)
    1c58:	24a5b19c 	addiu	a1,a1,-20068
    1c5c:	3c06bf80 	lui	a2,0xbf80
    1c60:	44072000 	mfc1	a3,$f4
    1c64:	2484014c 	addiu	a0,a0,332
    1c68:	e7a00010 	swc1	$f0,16(sp)
    1c6c:	0c000000 	jal	0 <func_80B3C1E0>
    1c70:	e7a00018 	swc1	$f0,24(sp)
    1c74:	8fa20028 	lw	v0,40(sp)
    1c78:	240f000c 	li	t7,12
    1c7c:	24180002 	li	t8,2
    1c80:	ac4f0260 	sw	t7,608(v0)
    1c84:	ac580264 	sw	t8,612(v0)
    1c88:	8fbf0024 	lw	ra,36(sp)
    1c8c:	27bd0028 	addiu	sp,sp,40
    1c90:	03e00008 	jr	ra
    1c94:	00000000 	nop

00001c98 <func_80B3DE78>:
    1c98:	27bdffd8 	addiu	sp,sp,-40
    1c9c:	afbf0024 	sw	ra,36(sp)
    1ca0:	10a00018 	beqz	a1,1d04 <func_80B3DE78+0x6c>
    1ca4:	afa40028 	sw	a0,40(sp)
    1ca8:	3c040600 	lui	a0,0x600
    1cac:	0c000000 	jal	0 <func_80B3C1E0>
    1cb0:	24844828 	addiu	a0,a0,18472
    1cb4:	44822000 	mtc1	v0,$f4
    1cb8:	44800000 	mtc1	zero,$f0
    1cbc:	8fa30028 	lw	v1,40(sp)
    1cc0:	468021a0 	cvt.s.w	$f6,$f4
    1cc4:	3c050600 	lui	a1,0x600
    1cc8:	44070000 	mfc1	a3,$f0
    1ccc:	24a54828 	addiu	a1,a1,18472
    1cd0:	3c063f80 	lui	a2,0x3f80
    1cd4:	afa00014 	sw	zero,20(sp)
    1cd8:	e7a60010 	swc1	$f6,16(sp)
    1cdc:	2464014c 	addiu	a0,v1,332
    1ce0:	0c000000 	jal	0 <func_80B3C1E0>
    1ce4:	e7a00018 	swc1	$f0,24(sp)
    1ce8:	8fa30028 	lw	v1,40(sp)
    1cec:	44804000 	mtc1	zero,$f8
    1cf0:	240e000d 	li	t6,13
    1cf4:	240f0001 	li	t7,1
    1cf8:	ac6e0260 	sw	t6,608(v1)
    1cfc:	ac6f0264 	sw	t7,612(v1)
    1d00:	e4680268 	swc1	$f8,616(v1)
    1d04:	8fbf0024 	lw	ra,36(sp)
    1d08:	27bd0028 	addiu	sp,sp,40
    1d0c:	03e00008 	jr	ra
    1d10:	00000000 	nop

00001d14 <func_80B3DEF4>:
    1d14:	27bdffd0 	addiu	sp,sp,-48
    1d18:	afbf002c 	sw	ra,44(sp)
    1d1c:	afb00028 	sw	s0,40(sp)
    1d20:	90ae1d6c 	lbu	t6,7532(a1)
    1d24:	00808025 	move	s0,a0
    1d28:	51c00022 	beqzl	t6,1db4 <func_80B3DEF4+0xa0>
    1d2c:	8fbf002c 	lw	ra,44(sp)
    1d30:	8ca21d9c 	lw	v0,7580(a1)
    1d34:	5040001f 	beqzl	v0,1db4 <func_80B3DEF4+0xa0>
    1d38:	8fbf002c 	lw	ra,44(sp)
    1d3c:	944f0000 	lhu	t7,0(v0)
    1d40:	24010004 	li	at,4
    1d44:	3c040601 	lui	a0,0x601
    1d48:	55e1001a 	bnel	t7,at,1db4 <func_80B3DEF4+0xa0>
    1d4c:	8fbf002c 	lw	ra,44(sp)
    1d50:	0c000000 	jal	0 <func_80B3C1E0>
    1d54:	24842fd0 	addiu	a0,a0,12240
    1d58:	44822000 	mtc1	v0,$f4
    1d5c:	3c01c140 	lui	at,0xc140
    1d60:	44814000 	mtc1	at,$f8
    1d64:	46802120 	cvt.s.w	$f4,$f4
    1d68:	44803000 	mtc1	zero,$f6
    1d6c:	3c050601 	lui	a1,0x601
    1d70:	24a52fd0 	addiu	a1,a1,12240
    1d74:	2604014c 	addiu	a0,s0,332
    1d78:	3c06bf80 	lui	a2,0xbf80
    1d7c:	44072000 	mfc1	a3,$f4
    1d80:	afa00014 	sw	zero,20(sp)
    1d84:	e7a80018 	swc1	$f8,24(sp)
    1d88:	0c000000 	jal	0 <func_80B3C1E0>
    1d8c:	e7a60010 	swc1	$f6,16(sp)
    1d90:	86190032 	lh	t9,50(s0)
    1d94:	44805000 	mtc1	zero,$f10
    1d98:	34018000 	li	at,0x8000
    1d9c:	2418000e 	li	t8,14
    1da0:	03214021 	addu	t0,t9,at
    1da4:	ae180260 	sw	t8,608(s0)
    1da8:	a6080032 	sh	t0,50(s0)
    1dac:	e60a0268 	swc1	$f10,616(s0)
    1db0:	8fbf002c 	lw	ra,44(sp)
    1db4:	8fb00028 	lw	s0,40(sp)
    1db8:	27bd0030 	addiu	sp,sp,48
    1dbc:	03e00008 	jr	ra
    1dc0:	00000000 	nop

00001dc4 <func_80B3DFA4>:
    1dc4:	3c013f80 	lui	at,0x3f80
    1dc8:	44813000 	mtc1	at,$f6
    1dcc:	c4840268 	lwc1	$f4,616(a0)
    1dd0:	3c014140 	lui	at,0x4140
    1dd4:	44818000 	mtc1	at,$f16
    1dd8:	46062200 	add.s	$f8,$f4,$f6
    1ddc:	3c0e0000 	lui	t6,0x0
    1de0:	e4880268 	swc1	$f8,616(a0)
    1de4:	c48a0268 	lwc1	$f10,616(a0)
    1de8:	460a803e 	c.le.s	$f16,$f10
    1dec:	00000000 	nop
    1df0:	4500000e 	bc1f	1e2c <func_80B3DFA4+0x68>
    1df4:	00000000 	nop
    1df8:	8dce0000 	lw	t6,0(t6)
    1dfc:	3c010000 	lui	at,0x0
    1e00:	c4260000 	lwc1	$f6,0(at)
    1e04:	85cf1458 	lh	t7,5208(t6)
    1e08:	3c010000 	lui	at,0x0
    1e0c:	c42a0000 	lwc1	$f10,0(at)
    1e10:	448f9000 	mtc1	t7,$f18
    1e14:	2418000f 	li	t8,15
    1e18:	ac980260 	sw	t8,608(a0)
    1e1c:	46809120 	cvt.s.w	$f4,$f18
    1e20:	46062202 	mul.s	$f8,$f4,$f6
    1e24:	460a4400 	add.s	$f16,$f8,$f10
    1e28:	e4900068 	swc1	$f16,104(a0)
    1e2c:	03e00008 	jr	ra
    1e30:	00000000 	nop

00001e34 <func_80B3E014>:
    1e34:	3c0f0000 	lui	t7,0x0
    1e38:	8def0000 	lw	t7,0(t7)
    1e3c:	27bdffd8 	addiu	sp,sp,-40
    1e40:	afbf0024 	sw	ra,36(sp)
    1e44:	afa40028 	sw	a0,40(sp)
    1e48:	85f8145e 	lh	t8,5214(t7)
    1e4c:	3c01430c 	lui	at,0x430c
    1e50:	44814000 	mtc1	at,$f8
    1e54:	44982000 	mtc1	t8,$f4
    1e58:	c4800090 	lwc1	$f0,144(a0)
    1e5c:	3c040600 	lui	a0,0x600
    1e60:	468021a0 	cvt.s.w	$f6,$f4
    1e64:	46083280 	add.s	$f10,$f6,$f8
    1e68:	4600503e 	c.le.s	$f10,$f0
    1e6c:	00000000 	nop
    1e70:	45020017 	bc1fl	1ed0 <func_80B3E014+0x9c>
    1e74:	8fbf0024 	lw	ra,36(sp)
    1e78:	0c000000 	jal	0 <func_80B3C1E0>
    1e7c:	24844828 	addiu	a0,a0,18472
    1e80:	44828000 	mtc1	v0,$f16
    1e84:	3c01c140 	lui	at,0xc140
    1e88:	44812000 	mtc1	at,$f4
    1e8c:	468084a0 	cvt.s.w	$f18,$f16
    1e90:	8fa40028 	lw	a0,40(sp)
    1e94:	3c050600 	lui	a1,0x600
    1e98:	24a54828 	addiu	a1,a1,18472
    1e9c:	3c063f80 	lui	a2,0x3f80
    1ea0:	24070000 	li	a3,0
    1ea4:	e7b20010 	swc1	$f18,16(sp)
    1ea8:	afa00014 	sw	zero,20(sp)
    1eac:	e7a40018 	swc1	$f4,24(sp)
    1eb0:	0c000000 	jal	0 <func_80B3C1E0>
    1eb4:	2484014c 	addiu	a0,a0,332
    1eb8:	8fa20028 	lw	v0,40(sp)
    1ebc:	44803000 	mtc1	zero,$f6
    1ec0:	24190010 	li	t9,16
    1ec4:	ac590260 	sw	t9,608(v0)
    1ec8:	e4460268 	swc1	$f6,616(v0)
    1ecc:	8fbf0024 	lw	ra,36(sp)
    1ed0:	27bd0028 	addiu	sp,sp,40
    1ed4:	03e00008 	jr	ra
    1ed8:	00000000 	nop

00001edc <func_80B3E0BC>:
    1edc:	27bdffd0 	addiu	sp,sp,-48
    1ee0:	afbf002c 	sw	ra,44(sp)
    1ee4:	afb00028 	sw	s0,40(sp)
    1ee8:	3c013f80 	lui	at,0x3f80
    1eec:	44813000 	mtc1	at,$f6
    1ef0:	c4840268 	lwc1	$f4,616(a0)
    1ef4:	3c014140 	lui	at,0x4140
    1ef8:	44818000 	mtc1	at,$f16
    1efc:	46062200 	add.s	$f8,$f4,$f6
    1f00:	00808025 	move	s0,a0
    1f04:	e4880268 	swc1	$f8,616(a0)
    1f08:	c48a0268 	lwc1	$f10,616(a0)
    1f0c:	3c040602 	lui	a0,0x602
    1f10:	460a803e 	c.le.s	$f16,$f10
    1f14:	00000000 	nop
    1f18:	45020016 	bc1fl	1f74 <func_80B3E0BC+0x98>
    1f1c:	8fbf002c 	lw	ra,44(sp)
    1f20:	0c000000 	jal	0 <func_80B3C1E0>
    1f24:	24849598 	addiu	a0,a0,-27240
    1f28:	44829000 	mtc1	v0,$f18
    1f2c:	44800000 	mtc1	zero,$f0
    1f30:	3c050602 	lui	a1,0x602
    1f34:	46809120 	cvt.s.w	$f4,$f18
    1f38:	240e0002 	li	t6,2
    1f3c:	44070000 	mfc1	a3,$f0
    1f40:	afae0014 	sw	t6,20(sp)
    1f44:	24a59598 	addiu	a1,a1,-27240
    1f48:	2604014c 	addiu	a0,s0,332
    1f4c:	e7a40010 	swc1	$f4,16(sp)
    1f50:	3c063f80 	lui	a2,0x3f80
    1f54:	0c000000 	jal	0 <func_80B3C1E0>
    1f58:	e7a00018 	swc1	$f0,24(sp)
    1f5c:	44800000 	mtc1	zero,$f0
    1f60:	240f0011 	li	t7,17
    1f64:	ae0f0260 	sw	t7,608(s0)
    1f68:	e6000268 	swc1	$f0,616(s0)
    1f6c:	e6000068 	swc1	$f0,104(s0)
    1f70:	8fbf002c 	lw	ra,44(sp)
    1f74:	8fb00028 	lw	s0,40(sp)
    1f78:	27bd0030 	addiu	sp,sp,48
    1f7c:	03e00008 	jr	ra
    1f80:	00000000 	nop

00001f84 <func_80B3E164>:
    1f84:	27bdffe8 	addiu	sp,sp,-24
    1f88:	afbf0014 	sw	ra,20(sp)
    1f8c:	3c013f80 	lui	at,0x3f80
    1f90:	44813000 	mtc1	at,$f6
    1f94:	c4840268 	lwc1	$f4,616(a0)
    1f98:	3c0141f0 	lui	at,0x41f0
    1f9c:	44818000 	mtc1	at,$f16
    1fa0:	46062200 	add.s	$f8,$f4,$f6
    1fa4:	240e0012 	li	t6,18
    1fa8:	e4880268 	swc1	$f8,616(a0)
    1fac:	c48a0268 	lwc1	$f10,616(a0)
    1fb0:	460a803e 	c.le.s	$f16,$f10
    1fb4:	00000000 	nop
    1fb8:	45020004 	bc1fl	1fcc <func_80B3E164+0x48>
    1fbc:	8fbf0014 	lw	ra,20(sp)
    1fc0:	0c000000 	jal	0 <func_80B3C1E0>
    1fc4:	ac8e0260 	sw	t6,608(a0)
    1fc8:	8fbf0014 	lw	ra,20(sp)
    1fcc:	27bd0018 	addiu	sp,sp,24
    1fd0:	03e00008 	jr	ra
    1fd4:	00000000 	nop

00001fd8 <func_80B3E1B8>:
    1fd8:	27bdffe8 	addiu	sp,sp,-24
    1fdc:	afbf0014 	sw	ra,20(sp)
    1fe0:	90ae1d6c 	lbu	t6,7532(a1)
    1fe4:	51c00014 	beqzl	t6,2038 <func_80B3E1B8+0x60>
    1fe8:	8fbf0014 	lw	ra,20(sp)
    1fec:	8ca21d9c 	lw	v0,7580(a1)
    1ff0:	50400011 	beqzl	v0,2038 <func_80B3E1B8+0x60>
    1ff4:	8fbf0014 	lw	ra,20(sp)
    1ff8:	944f0000 	lhu	t7,0(v0)
    1ffc:	24010009 	li	at,9
    2000:	55e1000d 	bnel	t7,at,2038 <func_80B3E1B8+0x60>
    2004:	8fbf0014 	lw	ra,20(sp)
    2008:	84a200a4 	lh	v0,164(a1)
    200c:	24010061 	li	at,97
    2010:	24180013 	li	t8,19
    2014:	14410005 	bne	v0,at,202c <func_80B3E1B8+0x54>
    2018:	00000000 	nop
    201c:	ac980260 	sw	t8,608(a0)
    2020:	ac800264 	sw	zero,612(a0)
    2024:	10000003 	b	2034 <func_80B3E1B8+0x5c>
    2028:	a08000c8 	sb	zero,200(a0)
    202c:	0c000000 	jal	0 <func_80B3C1E0>
    2030:	00000000 	nop
    2034:	8fbf0014 	lw	ra,20(sp)
    2038:	27bd0018 	addiu	sp,sp,24
    203c:	03e00008 	jr	ra
    2040:	00000000 	nop

00002044 <func_80B3E224>:
    2044:	27bdffe8 	addiu	sp,sp,-24
    2048:	afbf0014 	sw	ra,20(sp)
    204c:	afa40018 	sw	a0,24(sp)
    2050:	0c000000 	jal	0 <func_80B3C1E0>
    2054:	afa5001c 	sw	a1,28(sp)
    2058:	0c000000 	jal	0 <func_80B3C1E0>
    205c:	8fa4001c 	lw	a0,28(sp)
    2060:	8fa40018 	lw	a0,24(sp)
    2064:	0c000000 	jal	0 <func_80B3C1E0>
    2068:	8fa5001c 	lw	a1,28(sp)
    206c:	8fbf0014 	lw	ra,20(sp)
    2070:	27bd0018 	addiu	sp,sp,24
    2074:	03e00008 	jr	ra
    2078:	00000000 	nop

0000207c <func_80B3E25C>:
    207c:	27bdffe8 	addiu	sp,sp,-24
    2080:	afbf0014 	sw	ra,20(sp)
    2084:	afa40018 	sw	a0,24(sp)
    2088:	0c000000 	jal	0 <func_80B3C1E0>
    208c:	afa5001c 	sw	a1,28(sp)
    2090:	0c000000 	jal	0 <func_80B3C1E0>
    2094:	8fa4001c 	lw	a0,28(sp)
    2098:	8fa40018 	lw	a0,24(sp)
    209c:	0c000000 	jal	0 <func_80B3C1E0>
    20a0:	8fa5001c 	lw	a1,28(sp)
    20a4:	8fbf0014 	lw	ra,20(sp)
    20a8:	27bd0018 	addiu	sp,sp,24
    20ac:	03e00008 	jr	ra
    20b0:	00000000 	nop

000020b4 <func_80B3E294>:
    20b4:	27bdffd8 	addiu	sp,sp,-40
    20b8:	afbf001c 	sw	ra,28(sp)
    20bc:	afb10018 	sw	s1,24(sp)
    20c0:	afb00014 	sw	s0,20(sp)
    20c4:	00808025 	move	s0,a0
    20c8:	0c000000 	jal	0 <func_80B3C1E0>
    20cc:	00a08825 	move	s1,a1
    20d0:	afa20024 	sw	v0,36(sp)
    20d4:	02002025 	move	a0,s0
    20d8:	0c000000 	jal	0 <func_80B3C1E0>
    20dc:	02202825 	move	a1,s1
    20e0:	0c000000 	jal	0 <func_80B3C1E0>
    20e4:	02002025 	move	a0,s0
    20e8:	02002025 	move	a0,s0
    20ec:	0c000000 	jal	0 <func_80B3C1E0>
    20f0:	02202825 	move	a1,s1
    20f4:	02002025 	move	a0,s0
    20f8:	0c000000 	jal	0 <func_80B3C1E0>
    20fc:	02202825 	move	a1,s1
    2100:	0c000000 	jal	0 <func_80B3C1E0>
    2104:	02202025 	move	a0,s1
    2108:	02002025 	move	a0,s0
    210c:	02202825 	move	a1,s1
    2110:	0c000000 	jal	0 <func_80B3C1E0>
    2114:	8fa60024 	lw	a2,36(sp)
    2118:	8fbf001c 	lw	ra,28(sp)
    211c:	8fb00014 	lw	s0,20(sp)
    2120:	8fb10018 	lw	s1,24(sp)
    2124:	03e00008 	jr	ra
    2128:	27bd0028 	addiu	sp,sp,40

0000212c <func_80B3E30C>:
    212c:	27bdffe0 	addiu	sp,sp,-32
    2130:	afbf001c 	sw	ra,28(sp)
    2134:	afb00018 	sw	s0,24(sp)
    2138:	00808025 	move	s0,a0
    213c:	0c000000 	jal	0 <func_80B3C1E0>
    2140:	afa50024 	sw	a1,36(sp)
    2144:	0c000000 	jal	0 <func_80B3C1E0>
    2148:	02002025 	move	a0,s0
    214c:	02002025 	move	a0,s0
    2150:	0c000000 	jal	0 <func_80B3C1E0>
    2154:	8fa50024 	lw	a1,36(sp)
    2158:	0c000000 	jal	0 <func_80B3C1E0>
    215c:	02002025 	move	a0,s0
    2160:	02002025 	move	a0,s0
    2164:	0c000000 	jal	0 <func_80B3C1E0>
    2168:	8fa50024 	lw	a1,36(sp)
    216c:	0c000000 	jal	0 <func_80B3C1E0>
    2170:	02002025 	move	a0,s0
    2174:	8fbf001c 	lw	ra,28(sp)
    2178:	8fb00018 	lw	s0,24(sp)
    217c:	27bd0020 	addiu	sp,sp,32
    2180:	03e00008 	jr	ra
    2184:	00000000 	nop

00002188 <func_80B3E368>:
    2188:	27bdffe0 	addiu	sp,sp,-32
    218c:	afbf001c 	sw	ra,28(sp)
    2190:	afb00018 	sw	s0,24(sp)
    2194:	00808025 	move	s0,a0
    2198:	0c000000 	jal	0 <func_80B3C1E0>
    219c:	afa50024 	sw	a1,36(sp)
    21a0:	0c000000 	jal	0 <func_80B3C1E0>
    21a4:	02002025 	move	a0,s0
    21a8:	02002025 	move	a0,s0
    21ac:	0c000000 	jal	0 <func_80B3C1E0>
    21b0:	8fa50024 	lw	a1,36(sp)
    21b4:	0c000000 	jal	0 <func_80B3C1E0>
    21b8:	02002025 	move	a0,s0
    21bc:	02002025 	move	a0,s0
    21c0:	0c000000 	jal	0 <func_80B3C1E0>
    21c4:	8fa50024 	lw	a1,36(sp)
    21c8:	0c000000 	jal	0 <func_80B3C1E0>
    21cc:	02002025 	move	a0,s0
    21d0:	8fbf001c 	lw	ra,28(sp)
    21d4:	8fb00018 	lw	s0,24(sp)
    21d8:	27bd0020 	addiu	sp,sp,32
    21dc:	03e00008 	jr	ra
    21e0:	00000000 	nop

000021e4 <func_80B3E3C4>:
    21e4:	27bdffe0 	addiu	sp,sp,-32
    21e8:	afbf001c 	sw	ra,28(sp)
    21ec:	afb00018 	sw	s0,24(sp)
    21f0:	00808025 	move	s0,a0
    21f4:	0c000000 	jal	0 <func_80B3C1E0>
    21f8:	afa50024 	sw	a1,36(sp)
    21fc:	0c000000 	jal	0 <func_80B3C1E0>
    2200:	02002025 	move	a0,s0
    2204:	02002025 	move	a0,s0
    2208:	0c000000 	jal	0 <func_80B3C1E0>
    220c:	8fa50024 	lw	a1,36(sp)
    2210:	0c000000 	jal	0 <func_80B3C1E0>
    2214:	02002025 	move	a0,s0
    2218:	02002025 	move	a0,s0
    221c:	0c000000 	jal	0 <func_80B3C1E0>
    2220:	8fa50024 	lw	a1,36(sp)
    2224:	0c000000 	jal	0 <func_80B3C1E0>
    2228:	02002025 	move	a0,s0
    222c:	8fbf001c 	lw	ra,28(sp)
    2230:	8fb00018 	lw	s0,24(sp)
    2234:	27bd0020 	addiu	sp,sp,32
    2238:	03e00008 	jr	ra
    223c:	00000000 	nop

00002240 <func_80B3E420>:
    2240:	27bdffe8 	addiu	sp,sp,-24
    2244:	afbf0014 	sw	ra,20(sp)
    2248:	afa40018 	sw	a0,24(sp)
    224c:	0c000000 	jal	0 <func_80B3C1E0>
    2250:	afa5001c 	sw	a1,28(sp)
    2254:	8fa40018 	lw	a0,24(sp)
    2258:	0c000000 	jal	0 <func_80B3C1E0>
    225c:	8fa5001c 	lw	a1,28(sp)
    2260:	0c000000 	jal	0 <func_80B3C1E0>
    2264:	8fa40018 	lw	a0,24(sp)
    2268:	8fa40018 	lw	a0,24(sp)
    226c:	0c000000 	jal	0 <func_80B3C1E0>
    2270:	8fa5001c 	lw	a1,28(sp)
    2274:	8fbf0014 	lw	ra,20(sp)
    2278:	27bd0018 	addiu	sp,sp,24
    227c:	03e00008 	jr	ra
    2280:	00000000 	nop

00002284 <func_80B3E464>:
    2284:	27bdffe0 	addiu	sp,sp,-32
    2288:	afbf0014 	sw	ra,20(sp)
    228c:	afa40020 	sw	a0,32(sp)
    2290:	0c000000 	jal	0 <func_80B3C1E0>
    2294:	afa50024 	sw	a1,36(sp)
    2298:	afa2001c 	sw	v0,28(sp)
    229c:	8fa40020 	lw	a0,32(sp)
    22a0:	0c000000 	jal	0 <func_80B3C1E0>
    22a4:	8fa50024 	lw	a1,36(sp)
    22a8:	0c000000 	jal	0 <func_80B3C1E0>
    22ac:	8fa40020 	lw	a0,32(sp)
    22b0:	8fa40020 	lw	a0,32(sp)
    22b4:	0c000000 	jal	0 <func_80B3C1E0>
    22b8:	8fa5001c 	lw	a1,28(sp)
    22bc:	8fbf0014 	lw	ra,20(sp)
    22c0:	27bd0020 	addiu	sp,sp,32
    22c4:	03e00008 	jr	ra
    22c8:	00000000 	nop

000022cc <func_80B3E4AC>:
    22cc:	27bdffe0 	addiu	sp,sp,-32
    22d0:	afbf0014 	sw	ra,20(sp)
    22d4:	afa40020 	sw	a0,32(sp)
    22d8:	0c000000 	jal	0 <func_80B3C1E0>
    22dc:	afa50024 	sw	a1,36(sp)
    22e0:	afa2001c 	sw	v0,28(sp)
    22e4:	8fa40020 	lw	a0,32(sp)
    22e8:	0c000000 	jal	0 <func_80B3C1E0>
    22ec:	8fa50024 	lw	a1,36(sp)
    22f0:	0c000000 	jal	0 <func_80B3C1E0>
    22f4:	8fa40020 	lw	a0,32(sp)
    22f8:	8fa40020 	lw	a0,32(sp)
    22fc:	8fa50024 	lw	a1,36(sp)
    2300:	0c000000 	jal	0 <func_80B3C1E0>
    2304:	8fa6001c 	lw	a2,28(sp)
    2308:	8fbf0014 	lw	ra,20(sp)
    230c:	27bd0020 	addiu	sp,sp,32
    2310:	03e00008 	jr	ra
    2314:	00000000 	nop

00002318 <func_80B3E4F8>:
    2318:	27bdffe8 	addiu	sp,sp,-24
    231c:	afbf0014 	sw	ra,20(sp)
    2320:	afa40018 	sw	a0,24(sp)
    2324:	0c000000 	jal	0 <func_80B3C1E0>
    2328:	afa5001c 	sw	a1,28(sp)
    232c:	8fa40018 	lw	a0,24(sp)
    2330:	0c000000 	jal	0 <func_80B3C1E0>
    2334:	8fa5001c 	lw	a1,28(sp)
    2338:	0c000000 	jal	0 <func_80B3C1E0>
    233c:	8fa40018 	lw	a0,24(sp)
    2340:	8fa40018 	lw	a0,24(sp)
    2344:	0c000000 	jal	0 <func_80B3C1E0>
    2348:	8fa5001c 	lw	a1,28(sp)
    234c:	8fbf0014 	lw	ra,20(sp)
    2350:	27bd0018 	addiu	sp,sp,24
    2354:	03e00008 	jr	ra
    2358:	00000000 	nop

0000235c <func_80B3E53C>:
    235c:	27bdffe8 	addiu	sp,sp,-24
    2360:	afbf0014 	sw	ra,20(sp)
    2364:	afa40018 	sw	a0,24(sp)
    2368:	0c000000 	jal	0 <func_80B3C1E0>
    236c:	afa5001c 	sw	a1,28(sp)
    2370:	8fa40018 	lw	a0,24(sp)
    2374:	0c000000 	jal	0 <func_80B3C1E0>
    2378:	8fa5001c 	lw	a1,28(sp)
    237c:	0c000000 	jal	0 <func_80B3C1E0>
    2380:	8fa40018 	lw	a0,24(sp)
    2384:	8fa40018 	lw	a0,24(sp)
    2388:	0c000000 	jal	0 <func_80B3C1E0>
    238c:	8fa5001c 	lw	a1,28(sp)
    2390:	8fbf0014 	lw	ra,20(sp)
    2394:	27bd0018 	addiu	sp,sp,24
    2398:	03e00008 	jr	ra
    239c:	00000000 	nop

000023a0 <func_80B3E580>:
    23a0:	27bdffe0 	addiu	sp,sp,-32
    23a4:	afbf0014 	sw	ra,20(sp)
    23a8:	afa40020 	sw	a0,32(sp)
    23ac:	0c000000 	jal	0 <func_80B3C1E0>
    23b0:	afa50024 	sw	a1,36(sp)
    23b4:	afa2001c 	sw	v0,28(sp)
    23b8:	8fa40020 	lw	a0,32(sp)
    23bc:	0c000000 	jal	0 <func_80B3C1E0>
    23c0:	8fa50024 	lw	a1,36(sp)
    23c4:	0c000000 	jal	0 <func_80B3C1E0>
    23c8:	8fa40020 	lw	a0,32(sp)
    23cc:	8fa40020 	lw	a0,32(sp)
    23d0:	0c000000 	jal	0 <func_80B3C1E0>
    23d4:	8fa5001c 	lw	a1,28(sp)
    23d8:	8fbf0014 	lw	ra,20(sp)
    23dc:	27bd0020 	addiu	sp,sp,32
    23e0:	03e00008 	jr	ra
    23e4:	00000000 	nop

000023e8 <func_80B3E5C8>:
    23e8:	27bdffe0 	addiu	sp,sp,-32
    23ec:	afbf0014 	sw	ra,20(sp)
    23f0:	afa40020 	sw	a0,32(sp)
    23f4:	0c000000 	jal	0 <func_80B3C1E0>
    23f8:	afa50024 	sw	a1,36(sp)
    23fc:	afa2001c 	sw	v0,28(sp)
    2400:	8fa40020 	lw	a0,32(sp)
    2404:	0c000000 	jal	0 <func_80B3C1E0>
    2408:	8fa50024 	lw	a1,36(sp)
    240c:	0c000000 	jal	0 <func_80B3C1E0>
    2410:	8fa40020 	lw	a0,32(sp)
    2414:	8fa40020 	lw	a0,32(sp)
    2418:	0c000000 	jal	0 <func_80B3C1E0>
    241c:	8fa5001c 	lw	a1,28(sp)
    2420:	8fbf0014 	lw	ra,20(sp)
    2424:	27bd0020 	addiu	sp,sp,32
    2428:	03e00008 	jr	ra
    242c:	00000000 	nop

00002430 <func_80B3E610>:
    2430:	27bdffe0 	addiu	sp,sp,-32
    2434:	afbf001c 	sw	ra,28(sp)
    2438:	afb00018 	sw	s0,24(sp)
    243c:	00808025 	move	s0,a0
    2440:	0c000000 	jal	0 <func_80B3C1E0>
    2444:	afa50024 	sw	a1,36(sp)
    2448:	02002025 	move	a0,s0
    244c:	0c000000 	jal	0 <func_80B3C1E0>
    2450:	8fa50024 	lw	a1,36(sp)
    2454:	0c000000 	jal	0 <func_80B3C1E0>
    2458:	02002025 	move	a0,s0
    245c:	02002025 	move	a0,s0
    2460:	0c000000 	jal	0 <func_80B3C1E0>
    2464:	8fa50024 	lw	a1,36(sp)
    2468:	02002025 	move	a0,s0
    246c:	0c000000 	jal	0 <func_80B3C1E0>
    2470:	8fa50024 	lw	a1,36(sp)
    2474:	8fbf001c 	lw	ra,28(sp)
    2478:	8fb00018 	lw	s0,24(sp)
    247c:	27bd0020 	addiu	sp,sp,32
    2480:	03e00008 	jr	ra
    2484:	00000000 	nop

00002488 <func_80B3E668>:
    2488:	27bdffe0 	addiu	sp,sp,-32
    248c:	afbf001c 	sw	ra,28(sp)
    2490:	afb00018 	sw	s0,24(sp)
    2494:	00808025 	move	s0,a0
    2498:	0c000000 	jal	0 <func_80B3C1E0>
    249c:	afa50024 	sw	a1,36(sp)
    24a0:	0c000000 	jal	0 <func_80B3C1E0>
    24a4:	02002025 	move	a0,s0
    24a8:	02002025 	move	a0,s0
    24ac:	0c000000 	jal	0 <func_80B3C1E0>
    24b0:	8fa50024 	lw	a1,36(sp)
    24b4:	0c000000 	jal	0 <func_80B3C1E0>
    24b8:	02002025 	move	a0,s0
    24bc:	02002025 	move	a0,s0
    24c0:	0c000000 	jal	0 <func_80B3C1E0>
    24c4:	8fa50024 	lw	a1,36(sp)
    24c8:	02002025 	move	a0,s0
    24cc:	0c000000 	jal	0 <func_80B3C1E0>
    24d0:	8fa50024 	lw	a1,36(sp)
    24d4:	0c000000 	jal	0 <func_80B3C1E0>
    24d8:	02002025 	move	a0,s0
    24dc:	8fbf001c 	lw	ra,28(sp)
    24e0:	8fb00018 	lw	s0,24(sp)
    24e4:	27bd0020 	addiu	sp,sp,32
    24e8:	03e00008 	jr	ra
    24ec:	00000000 	nop

000024f0 <func_80B3E6D0>:
    24f0:	27bdffe0 	addiu	sp,sp,-32
    24f4:	afbf001c 	sw	ra,28(sp)
    24f8:	afb00018 	sw	s0,24(sp)
    24fc:	00808025 	move	s0,a0
    2500:	0c000000 	jal	0 <func_80B3C1E0>
    2504:	afa50024 	sw	a1,36(sp)
    2508:	0c000000 	jal	0 <func_80B3C1E0>
    250c:	02002025 	move	a0,s0
    2510:	02002025 	move	a0,s0
    2514:	0c000000 	jal	0 <func_80B3C1E0>
    2518:	8fa50024 	lw	a1,36(sp)
    251c:	0c000000 	jal	0 <func_80B3C1E0>
    2520:	02002025 	move	a0,s0
    2524:	02002025 	move	a0,s0
    2528:	0c000000 	jal	0 <func_80B3C1E0>
    252c:	8fa50024 	lw	a1,36(sp)
    2530:	02002025 	move	a0,s0
    2534:	0c000000 	jal	0 <func_80B3C1E0>
    2538:	8fa50024 	lw	a1,36(sp)
    253c:	0c000000 	jal	0 <func_80B3C1E0>
    2540:	02002025 	move	a0,s0
    2544:	8fbf001c 	lw	ra,28(sp)
    2548:	8fb00018 	lw	s0,24(sp)
    254c:	27bd0020 	addiu	sp,sp,32
    2550:	03e00008 	jr	ra
    2554:	00000000 	nop

00002558 <func_80B3E738>:
    2558:	27bdffe0 	addiu	sp,sp,-32
    255c:	afbf001c 	sw	ra,28(sp)
    2560:	afb00018 	sw	s0,24(sp)
    2564:	00808025 	move	s0,a0
    2568:	0c000000 	jal	0 <func_80B3C1E0>
    256c:	afa50024 	sw	a1,36(sp)
    2570:	0c000000 	jal	0 <func_80B3C1E0>
    2574:	02002025 	move	a0,s0
    2578:	02002025 	move	a0,s0
    257c:	0c000000 	jal	0 <func_80B3C1E0>
    2580:	8fa50024 	lw	a1,36(sp)
    2584:	0c000000 	jal	0 <func_80B3C1E0>
    2588:	02002025 	move	a0,s0
    258c:	02002025 	move	a0,s0
    2590:	0c000000 	jal	0 <func_80B3C1E0>
    2594:	8fa50024 	lw	a1,36(sp)
    2598:	02002025 	move	a0,s0
    259c:	0c000000 	jal	0 <func_80B3C1E0>
    25a0:	8fa50024 	lw	a1,36(sp)
    25a4:	0c000000 	jal	0 <func_80B3C1E0>
    25a8:	02002025 	move	a0,s0
    25ac:	8fbf001c 	lw	ra,28(sp)
    25b0:	8fb00018 	lw	s0,24(sp)
    25b4:	27bd0020 	addiu	sp,sp,32
    25b8:	03e00008 	jr	ra
    25bc:	00000000 	nop

000025c0 <func_80B3E7A0>:
    25c0:	27bdffe0 	addiu	sp,sp,-32
    25c4:	afbf001c 	sw	ra,28(sp)
    25c8:	afb00018 	sw	s0,24(sp)
    25cc:	00808025 	move	s0,a0
    25d0:	0c000000 	jal	0 <func_80B3C1E0>
    25d4:	afa50024 	sw	a1,36(sp)
    25d8:	02002025 	move	a0,s0
    25dc:	0c000000 	jal	0 <func_80B3C1E0>
    25e0:	8fa50024 	lw	a1,36(sp)
    25e4:	0c000000 	jal	0 <func_80B3C1E0>
    25e8:	02002025 	move	a0,s0
    25ec:	02002025 	move	a0,s0
    25f0:	0c000000 	jal	0 <func_80B3C1E0>
    25f4:	8fa50024 	lw	a1,36(sp)
    25f8:	02002025 	move	a0,s0
    25fc:	0c000000 	jal	0 <func_80B3C1E0>
    2600:	8fa50024 	lw	a1,36(sp)
    2604:	02002025 	move	a0,s0
    2608:	0c000000 	jal	0 <func_80B3C1E0>
    260c:	8fa50024 	lw	a1,36(sp)
    2610:	8fbf001c 	lw	ra,28(sp)
    2614:	8fb00018 	lw	s0,24(sp)
    2618:	27bd0020 	addiu	sp,sp,32
    261c:	03e00008 	jr	ra
    2620:	00000000 	nop

00002624 <func_80B3E804>:
    2624:	27bdffe0 	addiu	sp,sp,-32
    2628:	afbf001c 	sw	ra,28(sp)
    262c:	afb00018 	sw	s0,24(sp)
    2630:	00808025 	move	s0,a0
    2634:	0c000000 	jal	0 <func_80B3C1E0>
    2638:	afa50024 	sw	a1,36(sp)
    263c:	02002025 	move	a0,s0
    2640:	0c000000 	jal	0 <func_80B3C1E0>
    2644:	8fa50024 	lw	a1,36(sp)
    2648:	0c000000 	jal	0 <func_80B3C1E0>
    264c:	02002025 	move	a0,s0
    2650:	02002025 	move	a0,s0
    2654:	0c000000 	jal	0 <func_80B3C1E0>
    2658:	8fa50024 	lw	a1,36(sp)
    265c:	02002025 	move	a0,s0
    2660:	0c000000 	jal	0 <func_80B3C1E0>
    2664:	8fa50024 	lw	a1,36(sp)
    2668:	8fbf001c 	lw	ra,28(sp)
    266c:	8fb00018 	lw	s0,24(sp)
    2670:	27bd0020 	addiu	sp,sp,32
    2674:	03e00008 	jr	ra
    2678:	00000000 	nop

0000267c <func_80B3E85C>:
    267c:	27bdffe8 	addiu	sp,sp,-24
    2680:	afbf0014 	sw	ra,20(sp)
    2684:	0c000000 	jal	0 <func_80B3C1E0>
    2688:	00000000 	nop
    268c:	8fbf0014 	lw	ra,20(sp)
    2690:	27bd0018 	addiu	sp,sp,24
    2694:	03e00008 	jr	ra
    2698:	00000000 	nop

0000269c <func_80B3E87C>:
    269c:	3c014208 	lui	at,0x4208
    26a0:	c4a00164 	lwc1	$f0,356(a1)
    26a4:	44812000 	mtc1	at,$f4
    26a8:	3c0e0601 	lui	t6,0x601
    26ac:	25ce1150 	addiu	t6,t6,4432
    26b0:	4600203e 	c.le.s	$f4,$f0
    26b4:	00000000 	nop
    26b8:	45000002 	bc1f	26c4 <func_80B3E87C+0x28>
    26bc:	00000000 	nop
    26c0:	ac8e0000 	sw	t6,0(a0)
    26c4:	03e00008 	jr	ra
    26c8:	00000000 	nop

000026cc <func_80B3E8AC>:
    26cc:	27bdffe8 	addiu	sp,sp,-24
    26d0:	afa40018 	sw	a0,24(sp)
    26d4:	2401000c 	li	at,12
    26d8:	00c02025 	move	a0,a2
    26dc:	afbf0014 	sw	ra,20(sp)
    26e0:	14a10003 	bne	a1,at,26f0 <func_80B3E8AC+0x24>
    26e4:	afa70024 	sw	a3,36(sp)
    26e8:	0c000000 	jal	0 <func_80B3C1E0>
    26ec:	8fa5002c 	lw	a1,44(sp)
    26f0:	8fbf0014 	lw	ra,20(sp)
    26f4:	27bd0018 	addiu	sp,sp,24
    26f8:	00001025 	move	v0,zero
    26fc:	03e00008 	jr	ra
    2700:	00000000 	nop

00002704 <func_80B3E8E4>:
    2704:	2401000c 	li	at,12
    2708:	afa40000 	sw	a0,0(sp)
    270c:	14a10004 	bne	a1,at,2720 <func_80B3E8E4+0x1c>
    2710:	afa7000c 	sw	a3,12(sp)
    2714:	3c0e0601 	lui	t6,0x601
    2718:	25ce1150 	addiu	t6,t6,4432
    271c:	acce0000 	sw	t6,0(a2)
    2720:	03e00008 	jr	ra
    2724:	00001025 	move	v0,zero

00002728 <func_80B3E908>:
    2728:	27bdff80 	addiu	sp,sp,-128
    272c:	afbf002c 	sw	ra,44(sp)
    2730:	afb00028 	sw	s0,40(sp)
    2734:	afa40080 	sw	a0,128(sp)
    2738:	afa50084 	sw	a1,132(sp)
    273c:	8482025c 	lh	v0,604(a0)
    2740:	3c080000 	lui	t0,0x0
    2744:	8cb00000 	lw	s0,0(a1)
    2748:	00027880 	sll	t7,v0,0x2
    274c:	010f4021 	addu	t0,t0,t7
    2750:	8d080000 	lw	t0,0(t0)
    2754:	3c060000 	lui	a2,0x0
    2758:	24c60000 	addiu	a2,a2,0
    275c:	27a40050 	addiu	a0,sp,80
    2760:	240705a4 	li	a3,1444
    2764:	02002825 	move	a1,s0
    2768:	0c000000 	jal	0 <func_80B3C1E0>
    276c:	afa80070 	sw	t0,112(sp)
    2770:	8fa80070 	lw	t0,112(sp)
    2774:	8e0202c0 	lw	v0,704(s0)
    2778:	3c09db06 	lui	t1,0xdb06
    277c:	00085100 	sll	t2,t0,0x4
    2780:	000a5f02 	srl	t3,t2,0x1c
    2784:	3c0d0000 	lui	t5,0x0
    2788:	24590008 	addiu	t9,v0,8
    278c:	ae1902c0 	sw	t9,704(s0)
    2790:	25ad0000 	addiu	t5,t5,0
    2794:	000b6080 	sll	t4,t3,0x2
    2798:	35290020 	ori	t1,t1,0x20
    279c:	018d2021 	addu	a0,t4,t5
    27a0:	ac490000 	sw	t1,0(v0)
    27a4:	8c8e0000 	lw	t6,0(a0)
    27a8:	3c0100ff 	lui	at,0xff
    27ac:	3421ffff 	ori	at,at,0xffff
    27b0:	01012824 	and	a1,t0,at
    27b4:	3c068000 	lui	a2,0x8000
    27b8:	01c57821 	addu	t7,t6,a1
    27bc:	01e6c021 	addu	t8,t7,a2
    27c0:	ac580004 	sw	t8,4(v0)
    27c4:	8e0202c0 	lw	v0,704(s0)
    27c8:	3c09db06 	lui	t1,0xdb06
    27cc:	35290024 	ori	t1,t1,0x24
    27d0:	24590008 	addiu	t9,v0,8
    27d4:	ae1902c0 	sw	t9,704(s0)
    27d8:	ac490000 	sw	t1,0(v0)
    27dc:	8c8a0000 	lw	t2,0(a0)
    27e0:	3c0fffff 	lui	t7,0xffff
    27e4:	35ef1400 	ori	t7,t7,0x1400
    27e8:	01455821 	addu	t3,t2,a1
    27ec:	01666021 	addu	t4,t3,a2
    27f0:	ac4c0004 	sw	t4,4(v0)
    27f4:	8e0202c0 	lw	v0,704(s0)
    27f8:	3c0efa00 	lui	t6,0xfa00
    27fc:	3c093c00 	lui	t1,0x3c00
    2800:	244d0008 	addiu	t5,v0,8
    2804:	ae0d02c0 	sw	t5,704(s0)
    2808:	ac4f0004 	sw	t7,4(v0)
    280c:	ac4e0000 	sw	t6,0(v0)
    2810:	8e0202c0 	lw	v0,704(s0)
    2814:	3c19fb00 	lui	t9,0xfb00
    2818:	02002025 	move	a0,s0
    281c:	24580008 	addiu	t8,v0,8
    2820:	ae1802c0 	sw	t8,704(s0)
    2824:	ac490004 	sw	t1,4(v0)
    2828:	0c000000 	jal	0 <func_80B3C1E0>
    282c:	ac590000 	sw	t9,0(v0)
    2830:	8fa40080 	lw	a0,128(sp)
    2834:	8fa50084 	lw	a1,132(sp)
    2838:	0c000000 	jal	0 <func_80B3C1E0>
    283c:	00003025 	move	a2,zero
    2840:	8faa0080 	lw	t2,128(sp)
    2844:	3c0b0000 	lui	t3,0x0
    2848:	256b0000 	addiu	t3,t3,0
    284c:	2542014c 	addiu	v0,t2,332
    2850:	8c450004 	lw	a1,4(v0)
    2854:	8c460020 	lw	a2,32(v0)
    2858:	90470002 	lbu	a3,2(v0)
    285c:	afa00014 	sw	zero,20(sp)
    2860:	afab0010 	sw	t3,16(sp)
    2864:	8fa40084 	lw	a0,132(sp)
    2868:	0c000000 	jal	0 <func_80B3C1E0>
    286c:	afaa0018 	sw	t2,24(sp)
    2870:	3c060000 	lui	a2,0x0
    2874:	24c60000 	addiu	a2,a2,0
    2878:	27a40050 	addiu	a0,sp,80
    287c:	02002825 	move	a1,s0
    2880:	0c000000 	jal	0 <func_80B3C1E0>
    2884:	240705d9 	li	a3,1497
    2888:	8fbf002c 	lw	ra,44(sp)
    288c:	8fb00028 	lw	s0,40(sp)
    2890:	27bd0080 	addiu	sp,sp,128
    2894:	03e00008 	jr	ra
    2898:	00000000 	nop

0000289c <func_80B3EA7C>:
    289c:	27bdff80 	addiu	sp,sp,-128
    28a0:	afbf002c 	sw	ra,44(sp)
    28a4:	afb00028 	sw	s0,40(sp)
    28a8:	afa40080 	sw	a0,128(sp)
    28ac:	afa50084 	sw	a1,132(sp)
    28b0:	8482025c 	lh	v0,604(a0)
    28b4:	3c080000 	lui	t0,0x0
    28b8:	8cb00000 	lw	s0,0(a1)
    28bc:	00027880 	sll	t7,v0,0x2
    28c0:	010f4021 	addu	t0,t0,t7
    28c4:	8d080000 	lw	t0,0(t0)
    28c8:	3c060000 	lui	a2,0x0
    28cc:	24c60000 	addiu	a2,a2,0
    28d0:	27a40050 	addiu	a0,sp,80
    28d4:	240705e7 	li	a3,1511
    28d8:	02002825 	move	a1,s0
    28dc:	0c000000 	jal	0 <func_80B3C1E0>
    28e0:	afa80070 	sw	t0,112(sp)
    28e4:	8fa80070 	lw	t0,112(sp)
    28e8:	8e0202c0 	lw	v0,704(s0)
    28ec:	3c09db06 	lui	t1,0xdb06
    28f0:	00085100 	sll	t2,t0,0x4
    28f4:	000a5f02 	srl	t3,t2,0x1c
    28f8:	3c0d0000 	lui	t5,0x0
    28fc:	24590008 	addiu	t9,v0,8
    2900:	ae1902c0 	sw	t9,704(s0)
    2904:	25ad0000 	addiu	t5,t5,0
    2908:	000b6080 	sll	t4,t3,0x2
    290c:	35290020 	ori	t1,t1,0x20
    2910:	018d2021 	addu	a0,t4,t5
    2914:	ac490000 	sw	t1,0(v0)
    2918:	8c8e0000 	lw	t6,0(a0)
    291c:	3c0100ff 	lui	at,0xff
    2920:	3421ffff 	ori	at,at,0xffff
    2924:	01012824 	and	a1,t0,at
    2928:	3c068000 	lui	a2,0x8000
    292c:	01c57821 	addu	t7,t6,a1
    2930:	01e6c021 	addu	t8,t7,a2
    2934:	ac580004 	sw	t8,4(v0)
    2938:	8e0202c0 	lw	v0,704(s0)
    293c:	3c09db06 	lui	t1,0xdb06
    2940:	35290024 	ori	t1,t1,0x24
    2944:	24590008 	addiu	t9,v0,8
    2948:	ae1902c0 	sw	t9,704(s0)
    294c:	ac490000 	sw	t1,0(v0)
    2950:	8c8a0000 	lw	t2,0(a0)
    2954:	3c0fffff 	lui	t7,0xffff
    2958:	35ef1400 	ori	t7,t7,0x1400
    295c:	01455821 	addu	t3,t2,a1
    2960:	01666021 	addu	t4,t3,a2
    2964:	ac4c0004 	sw	t4,4(v0)
    2968:	8e0202c0 	lw	v0,704(s0)
    296c:	3c0efa00 	lui	t6,0xfa00
    2970:	3c093c00 	lui	t1,0x3c00
    2974:	244d0008 	addiu	t5,v0,8
    2978:	ae0d02c0 	sw	t5,704(s0)
    297c:	ac4f0004 	sw	t7,4(v0)
    2980:	ac4e0000 	sw	t6,0(v0)
    2984:	8e0202c0 	lw	v0,704(s0)
    2988:	3c19fb00 	lui	t9,0xfb00
    298c:	02002025 	move	a0,s0
    2990:	24580008 	addiu	t8,v0,8
    2994:	ae1802c0 	sw	t8,704(s0)
    2998:	ac490004 	sw	t1,4(v0)
    299c:	0c000000 	jal	0 <func_80B3C1E0>
    29a0:	ac590000 	sw	t9,0(v0)
    29a4:	8fa40080 	lw	a0,128(sp)
    29a8:	8fa50084 	lw	a1,132(sp)
    29ac:	0c000000 	jal	0 <func_80B3C1E0>
    29b0:	00003025 	move	a2,zero
    29b4:	8faa0080 	lw	t2,128(sp)
    29b8:	3c0b0000 	lui	t3,0x0
    29bc:	256b0000 	addiu	t3,t3,0
    29c0:	2542014c 	addiu	v0,t2,332
    29c4:	8c450004 	lw	a1,4(v0)
    29c8:	8c460020 	lw	a2,32(v0)
    29cc:	90470002 	lbu	a3,2(v0)
    29d0:	afa00014 	sw	zero,20(sp)
    29d4:	afab0010 	sw	t3,16(sp)
    29d8:	8fa40084 	lw	a0,132(sp)
    29dc:	0c000000 	jal	0 <func_80B3C1E0>
    29e0:	afaa0018 	sw	t2,24(sp)
    29e4:	3c060000 	lui	a2,0x0
    29e8:	24c60000 	addiu	a2,a2,0
    29ec:	27a40050 	addiu	a0,sp,80
    29f0:	02002825 	move	a1,s0
    29f4:	0c000000 	jal	0 <func_80B3C1E0>
    29f8:	2407061c 	li	a3,1564
    29fc:	8fbf002c 	lw	ra,44(sp)
    2a00:	8fb00028 	lw	s0,40(sp)
    2a04:	27bd0080 	addiu	sp,sp,128
    2a08:	03e00008 	jr	ra
    2a0c:	00000000 	nop

00002a10 <func_80B3EBF0>:
    2a10:	afa50004 	sw	a1,4(sp)
    2a14:	240e0014 	li	t6,20
    2a18:	03e00008 	jr	ra
    2a1c:	ac8e0260 	sw	t6,608(a0)

00002a20 <func_80B3EC00>:
    2a20:	240e0015 	li	t6,21
    2a24:	03e00008 	jr	ra
    2a28:	ac8e0260 	sw	t6,608(a0)

00002a2c <func_80B3EC0C>:
    2a2c:	90ae1d6c 	lbu	t6,7532(a1)
    2a30:	11c0001d 	beqz	t6,2aa8 <func_80B3EC0C+0x7c>
    2a34:	00000000 	nop
    2a38:	8ca21d9c 	lw	v0,7580(a1)
    2a3c:	1040001a 	beqz	v0,2aa8 <func_80B3EC0C+0x7c>
    2a40:	00000000 	nop
    2a44:	944f0000 	lhu	t7,0(v0)
    2a48:	24050001 	li	a1,1
    2a4c:	10af0016 	beq	a1,t7,2aa8 <func_80B3EC0C+0x7c>
    2a50:	00000000 	nop
    2a54:	8c58000c 	lw	t8,12(v0)
    2a58:	24090016 	li	t1,22
    2a5c:	44982000 	mtc1	t8,$f4
    2a60:	00000000 	nop
    2a64:	468021a0 	cvt.s.w	$f6,$f4
    2a68:	e4860024 	swc1	$f6,36(a0)
    2a6c:	8c590010 	lw	t9,16(v0)
    2a70:	44994000 	mtc1	t9,$f8
    2a74:	00000000 	nop
    2a78:	468042a0 	cvt.s.w	$f10,$f8
    2a7c:	e48a0028 	swc1	$f10,40(a0)
    2a80:	8c480014 	lw	t0,20(v0)
    2a84:	44888000 	mtc1	t0,$f16
    2a88:	00000000 	nop
    2a8c:	468084a0 	cvt.s.w	$f18,$f16
    2a90:	e492002c 	swc1	$f18,44(a0)
    2a94:	84430008 	lh	v1,8(v0)
    2a98:	ac890260 	sw	t1,608(a0)
    2a9c:	ac850264 	sw	a1,612(a0)
    2aa0:	a48300b6 	sh	v1,182(a0)
    2aa4:	a4830032 	sh	v1,50(a0)
    2aa8:	03e00008 	jr	ra
    2aac:	00000000 	nop

00002ab0 <func_80B3EC90>:
    2ab0:	27bdffe8 	addiu	sp,sp,-24
    2ab4:	afbf0014 	sw	ra,20(sp)
    2ab8:	90ae1d6c 	lbu	t6,7532(a1)
    2abc:	51c0000b 	beqzl	t6,2aec <func_80B3EC90+0x3c>
    2ac0:	8fbf0014 	lw	ra,20(sp)
    2ac4:	8ca21d9c 	lw	v0,7580(a1)
    2ac8:	50400008 	beqzl	v0,2aec <func_80B3EC90+0x3c>
    2acc:	8fbf0014 	lw	ra,20(sp)
    2ad0:	944f0000 	lhu	t7,0(v0)
    2ad4:	24010006 	li	at,6
    2ad8:	51e10004 	beql	t7,at,2aec <func_80B3EC90+0x3c>
    2adc:	8fbf0014 	lw	ra,20(sp)
    2ae0:	0c000000 	jal	0 <func_80B3C1E0>
    2ae4:	00000000 	nop
    2ae8:	8fbf0014 	lw	ra,20(sp)
    2aec:	27bd0018 	addiu	sp,sp,24
    2af0:	03e00008 	jr	ra
    2af4:	00000000 	nop

00002af8 <func_80B3ECD8>:
    2af8:	3c013f80 	lui	at,0x3f80
    2afc:	44813000 	mtc1	at,$f6
    2b00:	c4840268 	lwc1	$f4,616(a0)
    2b04:	3c014140 	lui	at,0x4140
    2b08:	44818000 	mtc1	at,$f16
    2b0c:	46062200 	add.s	$f8,$f4,$f6
    2b10:	3c0e0000 	lui	t6,0x0
    2b14:	e4880268 	swc1	$f8,616(a0)
    2b18:	c48a0268 	lwc1	$f10,616(a0)
    2b1c:	460a803e 	c.le.s	$f16,$f10
    2b20:	00000000 	nop
    2b24:	4500000e 	bc1f	2b60 <func_80B3ECD8+0x68>
    2b28:	00000000 	nop
    2b2c:	8dce0000 	lw	t6,0(t6)
    2b30:	3c010000 	lui	at,0x0
    2b34:	c4260000 	lwc1	$f6,0(at)
    2b38:	85cf1458 	lh	t7,5208(t6)
    2b3c:	3c010000 	lui	at,0x0
    2b40:	c42a0000 	lwc1	$f10,0(at)
    2b44:	448f9000 	mtc1	t7,$f18
    2b48:	24180018 	li	t8,24
    2b4c:	ac980260 	sw	t8,608(a0)
    2b50:	46809120 	cvt.s.w	$f4,$f18
    2b54:	46062202 	mul.s	$f8,$f4,$f6
    2b58:	460a4400 	add.s	$f16,$f8,$f10
    2b5c:	e4900068 	swc1	$f16,104(a0)
    2b60:	03e00008 	jr	ra
    2b64:	00000000 	nop

00002b68 <func_80B3ED48>:
    2b68:	27bdffe8 	addiu	sp,sp,-24
    2b6c:	afbf0014 	sw	ra,20(sp)
    2b70:	0c000000 	jal	0 <func_80B3C1E0>
    2b74:	afa5001c 	sw	a1,28(sp)
    2b78:	8fbf0014 	lw	ra,20(sp)
    2b7c:	27bd0018 	addiu	sp,sp,24
    2b80:	03e00008 	jr	ra
    2b84:	00000000 	nop

00002b88 <func_80B3ED68>:
    2b88:	27bdffe8 	addiu	sp,sp,-24
    2b8c:	afbf0014 	sw	ra,20(sp)
    2b90:	0c000000 	jal	0 <func_80B3C1E0>
    2b94:	00000000 	nop
    2b98:	8fbf0014 	lw	ra,20(sp)
    2b9c:	27bd0018 	addiu	sp,sp,24
    2ba0:	03e00008 	jr	ra
    2ba4:	00000000 	nop

00002ba8 <func_80B3ED88>:
    2ba8:	27bdffe8 	addiu	sp,sp,-24
    2bac:	afbf0014 	sw	ra,20(sp)
    2bb0:	afa40018 	sw	a0,24(sp)
    2bb4:	0c000000 	jal	0 <func_80B3C1E0>
    2bb8:	afa5001c 	sw	a1,28(sp)
    2bbc:	8fa40018 	lw	a0,24(sp)
    2bc0:	0c000000 	jal	0 <func_80B3C1E0>
    2bc4:	8fa5001c 	lw	a1,28(sp)
    2bc8:	0c000000 	jal	0 <func_80B3C1E0>
    2bcc:	8fa40018 	lw	a0,24(sp)
    2bd0:	8fa40018 	lw	a0,24(sp)
    2bd4:	0c000000 	jal	0 <func_80B3C1E0>
    2bd8:	8fa5001c 	lw	a1,28(sp)
    2bdc:	8fbf0014 	lw	ra,20(sp)
    2be0:	27bd0018 	addiu	sp,sp,24
    2be4:	03e00008 	jr	ra
    2be8:	00000000 	nop

00002bec <func_80B3EDCC>:
    2bec:	27bdffe0 	addiu	sp,sp,-32
    2bf0:	afbf001c 	sw	ra,28(sp)
    2bf4:	afb00018 	sw	s0,24(sp)
    2bf8:	00808025 	move	s0,a0
    2bfc:	0c000000 	jal	0 <func_80B3C1E0>
    2c00:	afa50024 	sw	a1,36(sp)
    2c04:	0c000000 	jal	0 <func_80B3C1E0>
    2c08:	02002025 	move	a0,s0
    2c0c:	02002025 	move	a0,s0
    2c10:	0c000000 	jal	0 <func_80B3C1E0>
    2c14:	8fa50024 	lw	a1,36(sp)
    2c18:	0c000000 	jal	0 <func_80B3C1E0>
    2c1c:	02002025 	move	a0,s0
    2c20:	02002025 	move	a0,s0
    2c24:	0c000000 	jal	0 <func_80B3C1E0>
    2c28:	8fa50024 	lw	a1,36(sp)
    2c2c:	0c000000 	jal	0 <func_80B3C1E0>
    2c30:	02002025 	move	a0,s0
    2c34:	8fbf001c 	lw	ra,28(sp)
    2c38:	8fb00018 	lw	s0,24(sp)
    2c3c:	27bd0020 	addiu	sp,sp,32
    2c40:	03e00008 	jr	ra
    2c44:	00000000 	nop

00002c48 <func_80B3EE28>:
    2c48:	afa40000 	sw	a0,0(sp)
    2c4c:	03e00008 	jr	ra
    2c50:	afa50004 	sw	a1,4(sp)

00002c54 <func_80B3EE34>:
    2c54:	afa40000 	sw	a0,0(sp)
    2c58:	03e00008 	jr	ra
    2c5c:	afa50004 	sw	a1,4(sp)

00002c60 <func_80B3EE40>:
    2c60:	afa40000 	sw	a0,0(sp)
    2c64:	03e00008 	jr	ra
    2c68:	afa50004 	sw	a1,4(sp)

00002c6c <func_80B3EE4C>:
    2c6c:	afa40000 	sw	a0,0(sp)
    2c70:	03e00008 	jr	ra
    2c74:	afa50004 	sw	a1,4(sp)

00002c78 <func_80B3EE58>:
    2c78:	afa40000 	sw	a0,0(sp)
    2c7c:	03e00008 	jr	ra
    2c80:	afa50004 	sw	a1,4(sp)

00002c84 <func_80B3EE64>:
    2c84:	afa50004 	sw	a1,4(sp)
    2c88:	240e001d 	li	t6,29
    2c8c:	03e00008 	jr	ra
    2c90:	ac8e0260 	sw	t6,608(a0)

00002c94 <func_80B3EE74>:
    2c94:	27bdffe8 	addiu	sp,sp,-24
    2c98:	afbf0014 	sw	ra,20(sp)
    2c9c:	0c000000 	jal	0 <func_80B3C1E0>
    2ca0:	afa40018 	sw	a0,24(sp)
    2ca4:	10400003 	beqz	v0,2cb4 <func_80B3EE74+0x20>
    2ca8:	8faf0018 	lw	t7,24(sp)
    2cac:	240e001e 	li	t6,30
    2cb0:	adee0260 	sw	t6,608(t7)
    2cb4:	8fbf0014 	lw	ra,20(sp)
    2cb8:	27bd0018 	addiu	sp,sp,24
    2cbc:	03e00008 	jr	ra
    2cc0:	00000000 	nop

00002cc4 <func_80B3EEA4>:
    2cc4:	27bdffe8 	addiu	sp,sp,-24
    2cc8:	afbf0014 	sw	ra,20(sp)
    2ccc:	2405001e 	li	a1,30
    2cd0:	0c000000 	jal	0 <func_80B3C1E0>
    2cd4:	2406001f 	li	a2,31
    2cd8:	8fbf0014 	lw	ra,20(sp)
    2cdc:	27bd0018 	addiu	sp,sp,24
    2ce0:	03e00008 	jr	ra
    2ce4:	00000000 	nop

00002ce8 <func_80B3EEC8>:
    2ce8:	27bdffe8 	addiu	sp,sp,-24
    2cec:	afbf0014 	sw	ra,20(sp)
    2cf0:	2405001f 	li	a1,31
    2cf4:	0c000000 	jal	0 <func_80B3C1E0>
    2cf8:	24060020 	li	a2,32
    2cfc:	8fbf0014 	lw	ra,20(sp)
    2d00:	27bd0018 	addiu	sp,sp,24
    2d04:	03e00008 	jr	ra
    2d08:	00000000 	nop

00002d0c <func_80B3EEEC>:
    2d0c:	27bdffe8 	addiu	sp,sp,-24
    2d10:	afbf0014 	sw	ra,20(sp)
    2d14:	24050020 	li	a1,32
    2d18:	0c000000 	jal	0 <func_80B3C1E0>
    2d1c:	24060021 	li	a2,33
    2d20:	8fbf0014 	lw	ra,20(sp)
    2d24:	27bd0018 	addiu	sp,sp,24
    2d28:	03e00008 	jr	ra
    2d2c:	00000000 	nop

00002d30 <func_80B3EF10>:
    2d30:	27bdffe8 	addiu	sp,sp,-24
    2d34:	afbf0014 	sw	ra,20(sp)
    2d38:	24050021 	li	a1,33
    2d3c:	0c000000 	jal	0 <func_80B3C1E0>
    2d40:	24060022 	li	a2,34
    2d44:	8fbf0014 	lw	ra,20(sp)
    2d48:	27bd0018 	addiu	sp,sp,24
    2d4c:	03e00008 	jr	ra
    2d50:	00000000 	nop

00002d54 <func_80B3EF34>:
    2d54:	27bdffe8 	addiu	sp,sp,-24
    2d58:	afbf0014 	sw	ra,20(sp)
    2d5c:	24050022 	li	a1,34
    2d60:	0c000000 	jal	0 <func_80B3C1E0>
    2d64:	24060023 	li	a2,35
    2d68:	8fbf0014 	lw	ra,20(sp)
    2d6c:	27bd0018 	addiu	sp,sp,24
    2d70:	03e00008 	jr	ra
    2d74:	00000000 	nop

00002d78 <func_80B3EF58>:
    2d78:	27bdffe8 	addiu	sp,sp,-24
    2d7c:	afbf0014 	sw	ra,20(sp)
    2d80:	24050023 	li	a1,35
    2d84:	24060024 	li	a2,36
    2d88:	0c000000 	jal	0 <func_80B3C1E0>
    2d8c:	24070022 	li	a3,34
    2d90:	8fbf0014 	lw	ra,20(sp)
    2d94:	27bd0018 	addiu	sp,sp,24
    2d98:	03e00008 	jr	ra
    2d9c:	00000000 	nop

00002da0 <func_80B3EF80>:
    2da0:	27bdffe8 	addiu	sp,sp,-24
    2da4:	afbf0014 	sw	ra,20(sp)
    2da8:	24050024 	li	a1,36
    2dac:	0c000000 	jal	0 <func_80B3C1E0>
    2db0:	24060025 	li	a2,37
    2db4:	8fbf0014 	lw	ra,20(sp)
    2db8:	27bd0018 	addiu	sp,sp,24
    2dbc:	03e00008 	jr	ra
    2dc0:	00000000 	nop

00002dc4 <func_80B3EFA4>:
    2dc4:	27bdffe8 	addiu	sp,sp,-24
    2dc8:	afbf0014 	sw	ra,20(sp)
    2dcc:	24050025 	li	a1,37
    2dd0:	0c000000 	jal	0 <func_80B3C1E0>
    2dd4:	24060026 	li	a2,38
    2dd8:	8fbf0014 	lw	ra,20(sp)
    2ddc:	27bd0018 	addiu	sp,sp,24
    2de0:	03e00008 	jr	ra
    2de4:	00000000 	nop

00002de8 <func_80B3EFC8>:
    2de8:	27bdffe8 	addiu	sp,sp,-24
    2dec:	afbf0014 	sw	ra,20(sp)
    2df0:	24050026 	li	a1,38
    2df4:	0c000000 	jal	0 <func_80B3C1E0>
    2df8:	24060027 	li	a2,39
    2dfc:	8fbf0014 	lw	ra,20(sp)
    2e00:	27bd0018 	addiu	sp,sp,24
    2e04:	03e00008 	jr	ra
    2e08:	00000000 	nop

00002e0c <func_80B3EFEC>:
    2e0c:	27bdffe8 	addiu	sp,sp,-24
    2e10:	afbf0014 	sw	ra,20(sp)
    2e14:	24050027 	li	a1,39
    2e18:	0c000000 	jal	0 <func_80B3C1E0>
    2e1c:	24060028 	li	a2,40
    2e20:	8fbf0014 	lw	ra,20(sp)
    2e24:	27bd0018 	addiu	sp,sp,24
    2e28:	03e00008 	jr	ra
    2e2c:	00000000 	nop

00002e30 <func_80B3F010>:
    2e30:	3c0f0000 	lui	t7,0x0
    2e34:	8def0000 	lw	t7,0(t7)
    2e38:	27bdffd8 	addiu	sp,sp,-40
    2e3c:	afbf0024 	sw	ra,36(sp)
    2e40:	afa40028 	sw	a0,40(sp)
    2e44:	85f8145e 	lh	t8,5214(t7)
    2e48:	3c01430c 	lui	at,0x430c
    2e4c:	44814000 	mtc1	at,$f8
    2e50:	44982000 	mtc1	t8,$f4
    2e54:	c4800090 	lwc1	$f0,144(a0)
    2e58:	3c040600 	lui	a0,0x600
    2e5c:	468021a0 	cvt.s.w	$f6,$f4
    2e60:	46083280 	add.s	$f10,$f6,$f8
    2e64:	4600503e 	c.le.s	$f10,$f0
    2e68:	00000000 	nop
    2e6c:	45020017 	bc1fl	2ecc <func_80B3F010+0x9c>
    2e70:	8fbf0024 	lw	ra,36(sp)
    2e74:	0c000000 	jal	0 <func_80B3C1E0>
    2e78:	24844828 	addiu	a0,a0,18472
    2e7c:	44828000 	mtc1	v0,$f16
    2e80:	3c01c140 	lui	at,0xc140
    2e84:	44812000 	mtc1	at,$f4
    2e88:	468084a0 	cvt.s.w	$f18,$f16
    2e8c:	8fa40028 	lw	a0,40(sp)
    2e90:	3c050600 	lui	a1,0x600
    2e94:	24a54828 	addiu	a1,a1,18472
    2e98:	3c063f80 	lui	a2,0x3f80
    2e9c:	24070000 	li	a3,0
    2ea0:	e7b20010 	swc1	$f18,16(sp)
    2ea4:	afa00014 	sw	zero,20(sp)
    2ea8:	e7a40018 	swc1	$f4,24(sp)
    2eac:	0c000000 	jal	0 <func_80B3C1E0>
    2eb0:	2484014c 	addiu	a0,a0,332
    2eb4:	8fa20028 	lw	v0,40(sp)
    2eb8:	44803000 	mtc1	zero,$f6
    2ebc:	24190029 	li	t9,41
    2ec0:	ac590260 	sw	t9,608(v0)
    2ec4:	e4460268 	swc1	$f6,616(v0)
    2ec8:	8fbf0024 	lw	ra,36(sp)
    2ecc:	27bd0028 	addiu	sp,sp,40
    2ed0:	03e00008 	jr	ra
    2ed4:	00000000 	nop

00002ed8 <func_80B3F0B8>:
    2ed8:	27bdffe8 	addiu	sp,sp,-24
    2edc:	afbf0014 	sw	ra,20(sp)
    2ee0:	24050029 	li	a1,41
    2ee4:	0c000000 	jal	0 <func_80B3C1E0>
    2ee8:	2406002a 	li	a2,42
    2eec:	8fbf0014 	lw	ra,20(sp)
    2ef0:	27bd0018 	addiu	sp,sp,24
    2ef4:	03e00008 	jr	ra
    2ef8:	00000000 	nop

00002efc <func_80B3F0DC>:
    2efc:	27bdffe8 	addiu	sp,sp,-24
    2f00:	afbf0014 	sw	ra,20(sp)
    2f04:	2405002a 	li	a1,42
    2f08:	0c000000 	jal	0 <func_80B3C1E0>
    2f0c:	2406002b 	li	a2,43
    2f10:	8fbf0014 	lw	ra,20(sp)
    2f14:	27bd0018 	addiu	sp,sp,24
    2f18:	03e00008 	jr	ra
    2f1c:	00000000 	nop

00002f20 <func_80B3F100>:
    2f20:	27bdffe8 	addiu	sp,sp,-24
    2f24:	afbf0014 	sw	ra,20(sp)
    2f28:	2405002b 	li	a1,43
    2f2c:	0c000000 	jal	0 <func_80B3C1E0>
    2f30:	2406002c 	li	a2,44
    2f34:	8fbf0014 	lw	ra,20(sp)
    2f38:	27bd0018 	addiu	sp,sp,24
    2f3c:	03e00008 	jr	ra
    2f40:	00000000 	nop

00002f44 <func_80B3F124>:
    2f44:	27bdffe8 	addiu	sp,sp,-24
    2f48:	afbf0014 	sw	ra,20(sp)
    2f4c:	0c000000 	jal	0 <func_80B3C1E0>
    2f50:	00000000 	nop
    2f54:	8fbf0014 	lw	ra,20(sp)
    2f58:	27bd0018 	addiu	sp,sp,24
    2f5c:	03e00008 	jr	ra
    2f60:	00000000 	nop

00002f64 <func_80B3F144>:
    2f64:	27bdffe8 	addiu	sp,sp,-24
    2f68:	afbf0014 	sw	ra,20(sp)
    2f6c:	0c000000 	jal	0 <func_80B3C1E0>
    2f70:	afa40018 	sw	a0,24(sp)
    2f74:	0c000000 	jal	0 <func_80B3C1E0>
    2f78:	8fa40018 	lw	a0,24(sp)
    2f7c:	8fbf0014 	lw	ra,20(sp)
    2f80:	27bd0018 	addiu	sp,sp,24
    2f84:	03e00008 	jr	ra
    2f88:	00000000 	nop

00002f8c <func_80B3F16C>:
    2f8c:	27bdffe8 	addiu	sp,sp,-24
    2f90:	afbf0014 	sw	ra,20(sp)
    2f94:	afa40018 	sw	a0,24(sp)
    2f98:	0c000000 	jal	0 <func_80B3C1E0>
    2f9c:	afa5001c 	sw	a1,28(sp)
    2fa0:	8fa40018 	lw	a0,24(sp)
    2fa4:	8fa5001c 	lw	a1,28(sp)
    2fa8:	0c000000 	jal	0 <func_80B3C1E0>
    2fac:	24060004 	li	a2,4
    2fb0:	0c000000 	jal	0 <func_80B3C1E0>
    2fb4:	8fa40018 	lw	a0,24(sp)
    2fb8:	8fbf0014 	lw	ra,20(sp)
    2fbc:	27bd0018 	addiu	sp,sp,24
    2fc0:	03e00008 	jr	ra
    2fc4:	00000000 	nop

00002fc8 <func_80B3F1A8>:
    2fc8:	27bdffe8 	addiu	sp,sp,-24
    2fcc:	afbf0014 	sw	ra,20(sp)
    2fd0:	0c000000 	jal	0 <func_80B3C1E0>
    2fd4:	afa40018 	sw	a0,24(sp)
    2fd8:	0c000000 	jal	0 <func_80B3C1E0>
    2fdc:	8fa40018 	lw	a0,24(sp)
    2fe0:	8fbf0014 	lw	ra,20(sp)
    2fe4:	27bd0018 	addiu	sp,sp,24
    2fe8:	03e00008 	jr	ra
    2fec:	00000000 	nop

00002ff0 <func_80B3F1D0>:
    2ff0:	27bdffe8 	addiu	sp,sp,-24
    2ff4:	afbf0014 	sw	ra,20(sp)
    2ff8:	0c000000 	jal	0 <func_80B3C1E0>
    2ffc:	afa40018 	sw	a0,24(sp)
    3000:	0c000000 	jal	0 <func_80B3C1E0>
    3004:	8fa40018 	lw	a0,24(sp)
    3008:	8fbf0014 	lw	ra,20(sp)
    300c:	27bd0018 	addiu	sp,sp,24
    3010:	03e00008 	jr	ra
    3014:	00000000 	nop

00003018 <func_80B3F1F8>:
    3018:	27bdffe8 	addiu	sp,sp,-24
    301c:	afbf0014 	sw	ra,20(sp)
    3020:	0c000000 	jal	0 <func_80B3C1E0>
    3024:	afa40018 	sw	a0,24(sp)
    3028:	0c000000 	jal	0 <func_80B3C1E0>
    302c:	8fa40018 	lw	a0,24(sp)
    3030:	8fbf0014 	lw	ra,20(sp)
    3034:	27bd0018 	addiu	sp,sp,24
    3038:	03e00008 	jr	ra
    303c:	00000000 	nop

00003040 <func_80B3F220>:
    3040:	27bdffe8 	addiu	sp,sp,-24
    3044:	afbf0014 	sw	ra,20(sp)
    3048:	0c000000 	jal	0 <func_80B3C1E0>
    304c:	afa40018 	sw	a0,24(sp)
    3050:	0c000000 	jal	0 <func_80B3C1E0>
    3054:	8fa40018 	lw	a0,24(sp)
    3058:	8fbf0014 	lw	ra,20(sp)
    305c:	27bd0018 	addiu	sp,sp,24
    3060:	03e00008 	jr	ra
    3064:	00000000 	nop

00003068 <func_80B3F248>:
    3068:	27bdffe8 	addiu	sp,sp,-24
    306c:	afbf0014 	sw	ra,20(sp)
    3070:	0c000000 	jal	0 <func_80B3C1E0>
    3074:	afa40018 	sw	a0,24(sp)
    3078:	0c000000 	jal	0 <func_80B3C1E0>
    307c:	8fa40018 	lw	a0,24(sp)
    3080:	8fbf0014 	lw	ra,20(sp)
    3084:	27bd0018 	addiu	sp,sp,24
    3088:	03e00008 	jr	ra
    308c:	00000000 	nop

00003090 <func_80B3F270>:
    3090:	27bdffe8 	addiu	sp,sp,-24
    3094:	afbf0014 	sw	ra,20(sp)
    3098:	0c000000 	jal	0 <func_80B3C1E0>
    309c:	afa40018 	sw	a0,24(sp)
    30a0:	0c000000 	jal	0 <func_80B3C1E0>
    30a4:	8fa40018 	lw	a0,24(sp)
    30a8:	8fbf0014 	lw	ra,20(sp)
    30ac:	27bd0018 	addiu	sp,sp,24
    30b0:	03e00008 	jr	ra
    30b4:	00000000 	nop

000030b8 <func_80B3F298>:
    30b8:	27bdffe8 	addiu	sp,sp,-24
    30bc:	afbf0014 	sw	ra,20(sp)
    30c0:	0c000000 	jal	0 <func_80B3C1E0>
    30c4:	afa40018 	sw	a0,24(sp)
    30c8:	0c000000 	jal	0 <func_80B3C1E0>
    30cc:	8fa40018 	lw	a0,24(sp)
    30d0:	8fbf0014 	lw	ra,20(sp)
    30d4:	27bd0018 	addiu	sp,sp,24
    30d8:	03e00008 	jr	ra
    30dc:	00000000 	nop

000030e0 <func_80B3F2C0>:
    30e0:	27bdffe8 	addiu	sp,sp,-24
    30e4:	afbf0014 	sw	ra,20(sp)
    30e8:	0c000000 	jal	0 <func_80B3C1E0>
    30ec:	afa40018 	sw	a0,24(sp)
    30f0:	0c000000 	jal	0 <func_80B3C1E0>
    30f4:	8fa40018 	lw	a0,24(sp)
    30f8:	8fbf0014 	lw	ra,20(sp)
    30fc:	27bd0018 	addiu	sp,sp,24
    3100:	03e00008 	jr	ra
    3104:	00000000 	nop

00003108 <func_80B3F2E8>:
    3108:	27bdffe0 	addiu	sp,sp,-32
    310c:	afbf001c 	sw	ra,28(sp)
    3110:	afb00018 	sw	s0,24(sp)
    3114:	00808025 	move	s0,a0
    3118:	0c000000 	jal	0 <func_80B3C1E0>
    311c:	afa50024 	sw	a1,36(sp)
    3120:	0c000000 	jal	0 <func_80B3C1E0>
    3124:	02002025 	move	a0,s0
    3128:	02002025 	move	a0,s0
    312c:	0c000000 	jal	0 <func_80B3C1E0>
    3130:	8fa50024 	lw	a1,36(sp)
    3134:	0c000000 	jal	0 <func_80B3C1E0>
    3138:	02002025 	move	a0,s0
    313c:	02002025 	move	a0,s0
    3140:	0c000000 	jal	0 <func_80B3C1E0>
    3144:	8fa50024 	lw	a1,36(sp)
    3148:	0c000000 	jal	0 <func_80B3C1E0>
    314c:	02002025 	move	a0,s0
    3150:	8fbf001c 	lw	ra,28(sp)
    3154:	8fb00018 	lw	s0,24(sp)
    3158:	27bd0020 	addiu	sp,sp,32
    315c:	03e00008 	jr	ra
    3160:	00000000 	nop

00003164 <func_80B3F344>:
    3164:	27bdffe8 	addiu	sp,sp,-24
    3168:	afbf0014 	sw	ra,20(sp)
    316c:	0c000000 	jal	0 <func_80B3C1E0>
    3170:	afa40018 	sw	a0,24(sp)
    3174:	0c000000 	jal	0 <func_80B3C1E0>
    3178:	8fa40018 	lw	a0,24(sp)
    317c:	8fbf0014 	lw	ra,20(sp)
    3180:	27bd0018 	addiu	sp,sp,24
    3184:	03e00008 	jr	ra
    3188:	00000000 	nop

0000318c <func_80B3F36C>:
    318c:	27bdffe8 	addiu	sp,sp,-24
    3190:	afbf0014 	sw	ra,20(sp)
    3194:	0c000000 	jal	0 <func_80B3C1E0>
    3198:	afa40018 	sw	a0,24(sp)
    319c:	0c000000 	jal	0 <func_80B3C1E0>
    31a0:	8fa40018 	lw	a0,24(sp)
    31a4:	8fbf0014 	lw	ra,20(sp)
    31a8:	27bd0018 	addiu	sp,sp,24
    31ac:	03e00008 	jr	ra
    31b0:	00000000 	nop

000031b4 <func_80B3F394>:
    31b4:	27bdffe8 	addiu	sp,sp,-24
    31b8:	afbf0014 	sw	ra,20(sp)
    31bc:	0c000000 	jal	0 <func_80B3C1E0>
    31c0:	afa40018 	sw	a0,24(sp)
    31c4:	0c000000 	jal	0 <func_80B3C1E0>
    31c8:	8fa40018 	lw	a0,24(sp)
    31cc:	8fbf0014 	lw	ra,20(sp)
    31d0:	27bd0018 	addiu	sp,sp,24
    31d4:	03e00008 	jr	ra
    31d8:	00000000 	nop

000031dc <func_80B3F3BC>:
    31dc:	afa40000 	sw	a0,0(sp)
    31e0:	03e00008 	jr	ra
    31e4:	afa50004 	sw	a1,4(sp)

000031e8 <func_80B3F3C8>:
    31e8:	afa50004 	sw	a1,4(sp)
    31ec:	240e002d 	li	t6,45
    31f0:	03e00008 	jr	ra
    31f4:	ac8e0260 	sw	t6,608(a0)

000031f8 <func_80B3F3D8>:
    31f8:	27bdffe8 	addiu	sp,sp,-24
    31fc:	afbf0014 	sw	ra,20(sp)
    3200:	0c000000 	jal	0 <func_80B3C1E0>
    3204:	2404083d 	li	a0,2109
    3208:	8fbf0014 	lw	ra,20(sp)
    320c:	27bd0018 	addiu	sp,sp,24
    3210:	03e00008 	jr	ra
    3214:	00000000 	nop

00003218 <func_80B3F3F8>:
    3218:	27bdffe0 	addiu	sp,sp,-32
    321c:	afa50024 	sw	a1,36(sp)
    3220:	00802825 	move	a1,a0
    3224:	afa40020 	sw	a0,32(sp)
    3228:	8fa40024 	lw	a0,36(sp)
    322c:	3c010001 	lui	at,0x1
    3230:	afbf0014 	sw	ra,20(sp)
    3234:	34211d60 	ori	at,at,0x1d60
    3238:	3c060000 	lui	a2,0x0
    323c:	24c60000 	addiu	a2,a2,0
    3240:	27a70018 	addiu	a3,sp,24
    3244:	0c000000 	jal	0 <func_80B3C1E0>
    3248:	00812021 	addu	a0,a0,at
    324c:	3c040000 	lui	a0,0x0
    3250:	24840000 	addiu	a0,a0,0
    3254:	0c000000 	jal	0 <func_80B3C1E0>
    3258:	24052889 	li	a1,10377
    325c:	8fbf0014 	lw	ra,20(sp)
    3260:	27bd0020 	addiu	sp,sp,32
    3264:	03e00008 	jr	ra
    3268:	00000000 	nop

0000326c <func_80B3F44C>:
    326c:	27bdffc8 	addiu	sp,sp,-56
    3270:	afbf0024 	sw	ra,36(sp)
    3274:	afb00020 	sw	s0,32(sp)
    3278:	00808025 	move	s0,a0
    327c:	0c000000 	jal	0 <func_80B3C1E0>
    3280:	00002825 	move	a1,zero
    3284:	5040002f 	beqzl	v0,3344 <func_80B3F44C+0xd8>
    3288:	8fbf0024 	lw	ra,36(sp)
    328c:	8c4e000c 	lw	t6,12(v0)
    3290:	02002025 	move	a0,s0
    3294:	27a50028 	addiu	a1,sp,40
    3298:	448e2000 	mtc1	t6,$f4
    329c:	24060064 	li	a2,100
    32a0:	240701f4 	li	a3,500
    32a4:	468021a0 	cvt.s.w	$f6,$f4
    32a8:	e7a60028 	swc1	$f6,40(sp)
    32ac:	8c4f0010 	lw	t7,16(v0)
    32b0:	448f4000 	mtc1	t7,$f8
    32b4:	00000000 	nop
    32b8:	468042a0 	cvt.s.w	$f10,$f8
    32bc:	e7aa002c 	swc1	$f10,44(sp)
    32c0:	8c580014 	lw	t8,20(v0)
    32c4:	afa00010 	sw	zero,16(sp)
    32c8:	44988000 	mtc1	t8,$f16
    32cc:	00000000 	nop
    32d0:	468084a0 	cvt.s.w	$f18,$f16
    32d4:	0c000000 	jal	0 <func_80B3C1E0>
    32d8:	e7b20030 	swc1	$f18,48(sp)
    32dc:	2419000a 	li	t9,10
    32e0:	afb90010 	sw	t9,16(sp)
    32e4:	02002025 	move	a0,s0
    32e8:	27a50028 	addiu	a1,sp,40
    32ec:	24060064 	li	a2,100
    32f0:	0c000000 	jal	0 <func_80B3C1E0>
    32f4:	240701f4 	li	a3,500
    32f8:	24080014 	li	t0,20
    32fc:	afa80010 	sw	t0,16(sp)
    3300:	02002025 	move	a0,s0
    3304:	27a50028 	addiu	a1,sp,40
    3308:	24060064 	li	a2,100
    330c:	0c000000 	jal	0 <func_80B3C1E0>
    3310:	240701f4 	li	a3,500
    3314:	24090001 	li	t1,1
    3318:	afa90010 	sw	t1,16(sp)
    331c:	02002025 	move	a0,s0
    3320:	27a50028 	addiu	a1,sp,40
    3324:	00003025 	move	a2,zero
    3328:	00003825 	move	a3,zero
    332c:	0c000000 	jal	0 <func_80B3C1E0>
    3330:	afa00014 	sw	zero,20(sp)
    3334:	27a40028 	addiu	a0,sp,40
    3338:	0c000000 	jal	0 <func_80B3C1E0>
    333c:	02002825 	move	a1,s0
    3340:	8fbf0024 	lw	ra,36(sp)
    3344:	8fb00020 	lw	s0,32(sp)
    3348:	27bd0038 	addiu	sp,sp,56
    334c:	03e00008 	jr	ra
    3350:	00000000 	nop

00003354 <func_80B3F534>:
    3354:	27bdffd0 	addiu	sp,sp,-48
    3358:	afbf002c 	sw	ra,44(sp)
    335c:	94821d74 	lhu	v0,7540(a0)
    3360:	00802825 	move	a1,a0
    3364:	24010136 	li	at,310
    3368:	14410010 	bne	v0,at,33ac <func_80B3F534+0x58>
    336c:	24841c24 	addiu	a0,a0,7204
    3370:	3c010000 	lui	at,0x0
    3374:	c4240000 	lwc1	$f4,0(at)
    3378:	3c010000 	lui	at,0x0
    337c:	c4260000 	lwc1	$f6,0(at)
    3380:	3c07c482 	lui	a3,0xc482
    3384:	240e0006 	li	t6,6
    3388:	afae0024 	sw	t6,36(sp)
    338c:	34e78000 	ori	a3,a3,0x8000
    3390:	2406005d 	li	a2,93
    3394:	afa00018 	sw	zero,24(sp)
    3398:	afa0001c 	sw	zero,28(sp)
    339c:	afa00020 	sw	zero,32(sp)
    33a0:	e7a40010 	swc1	$f4,16(sp)
    33a4:	0c000000 	jal	0 <func_80B3C1E0>
    33a8:	e7a60014 	swc1	$f6,20(sp)
    33ac:	8fbf002c 	lw	ra,44(sp)
    33b0:	27bd0030 	addiu	sp,sp,48
    33b4:	03e00008 	jr	ra
    33b8:	00000000 	nop

000033bc <func_80B3F59C>:
    33bc:	27bdffe0 	addiu	sp,sp,-32
    33c0:	afa40020 	sw	a0,32(sp)
    33c4:	afbf0014 	sw	ra,20(sp)
    33c8:	afa50024 	sw	a1,36(sp)
    33cc:	00a02025 	move	a0,a1
    33d0:	0c000000 	jal	0 <func_80B3C1E0>
    33d4:	00002825 	move	a1,zero
    33d8:	10400015 	beqz	v0,3430 <func_80B3F59C+0x74>
    33dc:	3c0e0000 	lui	t6,0x0
    33e0:	94430000 	lhu	v1,0(v0)
    33e4:	8dce0000 	lw	t6,0(t6)
    33e8:	24010002 	li	at,2
    33ec:	506e0011 	beql	v1,t6,3434 <func_80B3F59C+0x78>
    33f0:	8fbf0014 	lw	ra,20(sp)
    33f4:	10610005 	beq	v1,at,340c <func_80B3F59C+0x50>
    33f8:	24010003 	li	at,3
    33fc:	10610007 	beq	v1,at,341c <func_80B3F59C+0x60>
    3400:	8fa40024 	lw	a0,36(sp)
    3404:	10000008 	b	3428 <func_80B3F59C+0x6c>
    3408:	00000000 	nop
    340c:	0c000000 	jal	0 <func_80B3C1E0>
    3410:	afa30018 	sw	v1,24(sp)
    3414:	10000004 	b	3428 <func_80B3F59C+0x6c>
    3418:	8fa30018 	lw	v1,24(sp)
    341c:	0c000000 	jal	0 <func_80B3C1E0>
    3420:	afa30018 	sw	v1,24(sp)
    3424:	8fa30018 	lw	v1,24(sp)
    3428:	3c010000 	lui	at,0x0
    342c:	ac230000 	sw	v1,0(at)
    3430:	8fbf0014 	lw	ra,20(sp)
    3434:	27bd0020 	addiu	sp,sp,32
    3438:	03e00008 	jr	ra
    343c:	00000000 	nop

00003440 <func_80B3F620>:
    3440:	27bdffe8 	addiu	sp,sp,-24
    3444:	afbf0014 	sw	ra,20(sp)
    3448:	2405002d 	li	a1,45
    344c:	0c000000 	jal	0 <func_80B3C1E0>
    3450:	2406002e 	li	a2,46
    3454:	8fbf0014 	lw	ra,20(sp)
    3458:	27bd0018 	addiu	sp,sp,24
    345c:	03e00008 	jr	ra
    3460:	00000000 	nop

00003464 <func_80B3F644>:
    3464:	27bdffe8 	addiu	sp,sp,-24
    3468:	afbf0014 	sw	ra,20(sp)
    346c:	2405002e 	li	a1,46
    3470:	0c000000 	jal	0 <func_80B3C1E0>
    3474:	2406002f 	li	a2,47
    3478:	8fbf0014 	lw	ra,20(sp)
    347c:	27bd0018 	addiu	sp,sp,24
    3480:	03e00008 	jr	ra
    3484:	00000000 	nop

00003488 <func_80B3F668>:
    3488:	27bdffe0 	addiu	sp,sp,-32
    348c:	afbf001c 	sw	ra,28(sp)
    3490:	afa40020 	sw	a0,32(sp)
    3494:	24060004 	li	a2,4
    3498:	0c000000 	jal	0 <func_80B3C1E0>
    349c:	24070004 	li	a3,4
    34a0:	10400012 	beqz	v0,34ec <func_80B3F668+0x64>
    34a4:	8fa40020 	lw	a0,32(sp)
    34a8:	3c050601 	lui	a1,0x601
    34ac:	240e0001 	li	t6,1
    34b0:	afae0010 	sw	t6,16(sp)
    34b4:	24a52fd0 	addiu	a1,a1,12240
    34b8:	00003025 	move	a2,zero
    34bc:	3c07c140 	lui	a3,0xc140
    34c0:	0c000000 	jal	0 <func_80B3C1E0>
    34c4:	afa40020 	sw	a0,32(sp)
    34c8:	8fa40020 	lw	a0,32(sp)
    34cc:	44802000 	mtc1	zero,$f4
    34d0:	34018000 	li	at,0x8000
    34d4:	84980032 	lh	t8,50(a0)
    34d8:	240f0030 	li	t7,48
    34dc:	ac8f0260 	sw	t7,608(a0)
    34e0:	0301c821 	addu	t9,t8,at
    34e4:	a4990032 	sh	t9,50(a0)
    34e8:	e4840268 	swc1	$f4,616(a0)
    34ec:	8fbf001c 	lw	ra,28(sp)
    34f0:	27bd0020 	addiu	sp,sp,32
    34f4:	03e00008 	jr	ra
    34f8:	00000000 	nop

000034fc <func_80B3F6DC>:
    34fc:	27bdffe8 	addiu	sp,sp,-24
    3500:	afbf0014 	sw	ra,20(sp)
    3504:	24050030 	li	a1,48
    3508:	0c000000 	jal	0 <func_80B3C1E0>
    350c:	24060031 	li	a2,49
    3510:	8fbf0014 	lw	ra,20(sp)
    3514:	27bd0018 	addiu	sp,sp,24
    3518:	03e00008 	jr	ra
    351c:	00000000 	nop

00003520 <func_80B3F700>:
    3520:	27bdffe0 	addiu	sp,sp,-32
    3524:	afbf001c 	sw	ra,28(sp)
    3528:	afa40020 	sw	a0,32(sp)
    352c:	24060010 	li	a2,16
    3530:	0c000000 	jal	0 <func_80B3C1E0>
    3534:	24070004 	li	a3,4
    3538:	1040000a 	beqz	v0,3564 <func_80B3F700+0x44>
    353c:	8fa40020 	lw	a0,32(sp)
    3540:	3c050602 	lui	a1,0x602
    3544:	24a59c30 	addiu	a1,a1,-25552
    3548:	00003025 	move	a2,zero
    354c:	24070000 	li	a3,0
    3550:	0c000000 	jal	0 <func_80B3C1E0>
    3554:	afa00010 	sw	zero,16(sp)
    3558:	8faf0020 	lw	t7,32(sp)
    355c:	240e0032 	li	t6,50
    3560:	adee0260 	sw	t6,608(t7)
    3564:	8fbf001c 	lw	ra,28(sp)
    3568:	27bd0020 	addiu	sp,sp,32
    356c:	03e00008 	jr	ra
    3570:	00000000 	nop

00003574 <func_80B3F754>:
    3574:	27bdffe0 	addiu	sp,sp,-32
    3578:	afbf001c 	sw	ra,28(sp)
    357c:	afa40020 	sw	a0,32(sp)
    3580:	afa50024 	sw	a1,36(sp)
    3584:	24060016 	li	a2,22
    3588:	0c000000 	jal	0 <func_80B3C1E0>
    358c:	24070004 	li	a3,4
    3590:	1040000e 	beqz	v0,35cc <func_80B3F754+0x58>
    3594:	8fa40020 	lw	a0,32(sp)
    3598:	3c050602 	lui	a1,0x602
    359c:	24a5a048 	addiu	a1,a1,-24504
    35a0:	00003025 	move	a2,zero
    35a4:	24070000 	li	a3,0
    35a8:	0c000000 	jal	0 <func_80B3C1E0>
    35ac:	afa00010 	sw	zero,16(sp)
    35b0:	8faf0020 	lw	t7,32(sp)
    35b4:	240e0033 	li	t6,51
    35b8:	24060004 	li	a2,4
    35bc:	adee0260 	sw	t6,608(t7)
    35c0:	8fa50024 	lw	a1,36(sp)
    35c4:	0c000000 	jal	0 <func_80B3C1E0>
    35c8:	8fa40020 	lw	a0,32(sp)
    35cc:	8fbf001c 	lw	ra,28(sp)
    35d0:	27bd0020 	addiu	sp,sp,32
    35d4:	03e00008 	jr	ra
    35d8:	00000000 	nop

000035dc <func_80B3F7BC>:
    35dc:	27bdffe8 	addiu	sp,sp,-24
    35e0:	afbf0014 	sw	ra,20(sp)
    35e4:	afa40018 	sw	a0,24(sp)
    35e8:	24060009 	li	a2,9
    35ec:	0c000000 	jal	0 <func_80B3C1E0>
    35f0:	24070004 	li	a3,4
    35f4:	10400004 	beqz	v0,3608 <func_80B3F7BC+0x2c>
    35f8:	8fa40018 	lw	a0,24(sp)
    35fc:	240e0034 	li	t6,52
    3600:	ac8e0260 	sw	t6,608(a0)
    3604:	ac800264 	sw	zero,612(a0)
    3608:	8fbf0014 	lw	ra,20(sp)
    360c:	27bd0018 	addiu	sp,sp,24
    3610:	03e00008 	jr	ra
    3614:	00000000 	nop

00003618 <func_80B3F7F8>:
    3618:	27bdffe8 	addiu	sp,sp,-24
    361c:	afbf0014 	sw	ra,20(sp)
    3620:	0c000000 	jal	0 <func_80B3C1E0>
    3624:	afa40018 	sw	a0,24(sp)
    3628:	0c000000 	jal	0 <func_80B3C1E0>
    362c:	8fa40018 	lw	a0,24(sp)
    3630:	8fbf0014 	lw	ra,20(sp)
    3634:	27bd0018 	addiu	sp,sp,24
    3638:	03e00008 	jr	ra
    363c:	00000000 	nop

00003640 <func_80B3F820>:
    3640:	27bdffe8 	addiu	sp,sp,-24
    3644:	afbf0014 	sw	ra,20(sp)
    3648:	0c000000 	jal	0 <func_80B3C1E0>
    364c:	afa40018 	sw	a0,24(sp)
    3650:	0c000000 	jal	0 <func_80B3C1E0>
    3654:	8fa40018 	lw	a0,24(sp)
    3658:	8fbf0014 	lw	ra,20(sp)
    365c:	27bd0018 	addiu	sp,sp,24
    3660:	03e00008 	jr	ra
    3664:	00000000 	nop

00003668 <func_80B3F848>:
    3668:	27bdffe8 	addiu	sp,sp,-24
    366c:	afbf0014 	sw	ra,20(sp)
    3670:	afa40018 	sw	a0,24(sp)
    3674:	afa5001c 	sw	a1,28(sp)
    3678:	0c000000 	jal	0 <func_80B3C1E0>
    367c:	00a02025 	move	a0,a1
    3680:	0c000000 	jal	0 <func_80B3C1E0>
    3684:	8fa40018 	lw	a0,24(sp)
    3688:	8fa40018 	lw	a0,24(sp)
    368c:	0c000000 	jal	0 <func_80B3C1E0>
    3690:	8fa5001c 	lw	a1,28(sp)
    3694:	8fa40018 	lw	a0,24(sp)
    3698:	8fa5001c 	lw	a1,28(sp)
    369c:	0c000000 	jal	0 <func_80B3C1E0>
    36a0:	24060004 	li	a2,4
    36a4:	8fa40018 	lw	a0,24(sp)
    36a8:	0c000000 	jal	0 <func_80B3C1E0>
    36ac:	8fa5001c 	lw	a1,28(sp)
    36b0:	8fbf0014 	lw	ra,20(sp)
    36b4:	27bd0018 	addiu	sp,sp,24
    36b8:	03e00008 	jr	ra
    36bc:	00000000 	nop

000036c0 <func_80B3F8A0>:
    36c0:	27bdffe8 	addiu	sp,sp,-24
    36c4:	afbf0014 	sw	ra,20(sp)
    36c8:	0c000000 	jal	0 <func_80B3C1E0>
    36cc:	afa40018 	sw	a0,24(sp)
    36d0:	0c000000 	jal	0 <func_80B3C1E0>
    36d4:	8fa40018 	lw	a0,24(sp)
    36d8:	8fbf0014 	lw	ra,20(sp)
    36dc:	27bd0018 	addiu	sp,sp,24
    36e0:	03e00008 	jr	ra
    36e4:	00000000 	nop

000036e8 <func_80B3F8C8>:
    36e8:	27bdffe0 	addiu	sp,sp,-32
    36ec:	afbf001c 	sw	ra,28(sp)
    36f0:	afb00018 	sw	s0,24(sp)
    36f4:	00808025 	move	s0,a0
    36f8:	0c000000 	jal	0 <func_80B3C1E0>
    36fc:	afa50024 	sw	a1,36(sp)
    3700:	0c000000 	jal	0 <func_80B3C1E0>
    3704:	02002025 	move	a0,s0
    3708:	02002025 	move	a0,s0
    370c:	0c000000 	jal	0 <func_80B3C1E0>
    3710:	8fa50024 	lw	a1,36(sp)
    3714:	0c000000 	jal	0 <func_80B3C1E0>
    3718:	02002025 	move	a0,s0
    371c:	02002025 	move	a0,s0
    3720:	0c000000 	jal	0 <func_80B3C1E0>
    3724:	8fa50024 	lw	a1,36(sp)
    3728:	02002025 	move	a0,s0
    372c:	0c000000 	jal	0 <func_80B3C1E0>
    3730:	8fa50024 	lw	a1,36(sp)
    3734:	8fbf001c 	lw	ra,28(sp)
    3738:	8fb00018 	lw	s0,24(sp)
    373c:	27bd0020 	addiu	sp,sp,32
    3740:	03e00008 	jr	ra
    3744:	00000000 	nop

00003748 <func_80B3F928>:
    3748:	27bdffe0 	addiu	sp,sp,-32
    374c:	afbf001c 	sw	ra,28(sp)
    3750:	afb00018 	sw	s0,24(sp)
    3754:	00808025 	move	s0,a0
    3758:	0c000000 	jal	0 <func_80B3C1E0>
    375c:	afa50024 	sw	a1,36(sp)
    3760:	02002025 	move	a0,s0
    3764:	0c000000 	jal	0 <func_80B3C1E0>
    3768:	8fa50024 	lw	a1,36(sp)
    376c:	02002025 	move	a0,s0
    3770:	0c000000 	jal	0 <func_80B3C1E0>
    3774:	8fa50024 	lw	a1,36(sp)
    3778:	02002025 	move	a0,s0
    377c:	8fa50024 	lw	a1,36(sp)
    3780:	0c000000 	jal	0 <func_80B3C1E0>
    3784:	24060004 	li	a2,4
    3788:	02002025 	move	a0,s0
    378c:	0c000000 	jal	0 <func_80B3C1E0>
    3790:	8fa50024 	lw	a1,36(sp)
    3794:	8fbf001c 	lw	ra,28(sp)
    3798:	8fb00018 	lw	s0,24(sp)
    379c:	27bd0020 	addiu	sp,sp,32
    37a0:	03e00008 	jr	ra
    37a4:	00000000 	nop

000037a8 <func_80B3F988>:
    37a8:	27bdffe0 	addiu	sp,sp,-32
    37ac:	afbf001c 	sw	ra,28(sp)
    37b0:	afb00018 	sw	s0,24(sp)
    37b4:	00808025 	move	s0,a0
    37b8:	0c000000 	jal	0 <func_80B3C1E0>
    37bc:	afa50024 	sw	a1,36(sp)
    37c0:	02002025 	move	a0,s0
    37c4:	0c000000 	jal	0 <func_80B3C1E0>
    37c8:	8fa50024 	lw	a1,36(sp)
    37cc:	02002025 	move	a0,s0
    37d0:	0c000000 	jal	0 <func_80B3C1E0>
    37d4:	8fa50024 	lw	a1,36(sp)
    37d8:	02002025 	move	a0,s0
    37dc:	8fa50024 	lw	a1,36(sp)
    37e0:	0c000000 	jal	0 <func_80B3C1E0>
    37e4:	24060004 	li	a2,4
    37e8:	02002025 	move	a0,s0
    37ec:	0c000000 	jal	0 <func_80B3C1E0>
    37f0:	8fa50024 	lw	a1,36(sp)
    37f4:	8fbf001c 	lw	ra,28(sp)
    37f8:	8fb00018 	lw	s0,24(sp)
    37fc:	27bd0020 	addiu	sp,sp,32
    3800:	03e00008 	jr	ra
    3804:	00000000 	nop

00003808 <func_80B3F9E8>:
    3808:	27bdffe8 	addiu	sp,sp,-24
    380c:	afbf0014 	sw	ra,20(sp)
    3810:	0c000000 	jal	0 <func_80B3C1E0>
    3814:	00000000 	nop
    3818:	8fbf0014 	lw	ra,20(sp)
    381c:	27bd0018 	addiu	sp,sp,24
    3820:	03e00008 	jr	ra
    3824:	00000000 	nop

00003828 <func_80B3FA08>:
    3828:	afa50004 	sw	a1,4(sp)
    382c:	240e0035 	li	t6,53
    3830:	ac8e0260 	sw	t6,608(a0)
    3834:	3c0f0000 	lui	t7,0x0
    3838:	8def0000 	lw	t7,0(t7)
    383c:	85f81484 	lh	t8,5252(t7)
    3840:	271953fc 	addiu	t9,t8,21500
    3844:	03e00008 	jr	ra
    3848:	a49902a4 	sh	t9,676(a0)

0000384c <func_80B3FA2C>:
    384c:	27bdffe8 	addiu	sp,sp,-24
    3850:	afbf0014 	sw	ra,20(sp)
    3854:	0c000000 	jal	0 <func_80B3C1E0>
    3858:	24040001 	li	a0,1
    385c:	8fbf0014 	lw	ra,20(sp)
    3860:	27bd0018 	addiu	sp,sp,24
    3864:	03e00008 	jr	ra
    3868:	00000000 	nop

0000386c <func_80B3FA4C>:
    386c:	27bdffb8 	addiu	sp,sp,-72
    3870:	afbf0014 	sw	ra,20(sp)
    3874:	afa40048 	sw	a0,72(sp)
    3878:	afa5004c 	sw	a1,76(sp)
    387c:	8c8f02a8 	lw	t7,680(a0)
    3880:	3c180000 	lui	t8,0x0
    3884:	27180000 	addiu	t8,t8,0
    3888:	51e0001a 	beqzl	t7,38f4 <func_80B3FA4C+0x88>
    388c:	8fbf0014 	lw	ra,20(sp)
    3890:	8f080000 	lw	t0,0(t8)
    3894:	27a4001c 	addiu	a0,sp,28
    3898:	27a50034 	addiu	a1,sp,52
    389c:	ac880000 	sw	t0,0(a0)
    38a0:	8f190004 	lw	t9,4(t8)
    38a4:	ac990004 	sw	t9,4(a0)
    38a8:	8f080008 	lw	t0,8(t8)
    38ac:	0c000000 	jal	0 <func_80B3C1E0>
    38b0:	ac880008 	sw	t0,8(a0)
    38b4:	8fa4004c 	lw	a0,76(sp)
    38b8:	3c010001 	lui	at,0x1
    38bc:	34211d60 	ori	at,at,0x1d60
    38c0:	27a50034 	addiu	a1,sp,52
    38c4:	27a60028 	addiu	a2,sp,40
    38c8:	27a70018 	addiu	a3,sp,24
    38cc:	0c000000 	jal	0 <func_80B3C1E0>
    38d0:	00812021 	addu	a0,a0,at
    38d4:	8fa4004c 	lw	a0,76(sp)
    38d8:	27a50028 	addiu	a1,sp,40
    38dc:	24060050 	li	a2,80
    38e0:	0c000000 	jal	0 <func_80B3C1E0>
    38e4:	240728c1 	li	a3,10433
    38e8:	8fa90048 	lw	t1,72(sp)
    38ec:	ad2002a8 	sw	zero,680(t1)
    38f0:	8fbf0014 	lw	ra,20(sp)
    38f4:	27bd0048 	addiu	sp,sp,72
    38f8:	03e00008 	jr	ra
    38fc:	00000000 	nop

00003900 <func_80B3FAE0>:
    3900:	27bdffe8 	addiu	sp,sp,-24
    3904:	afbf0014 	sw	ra,20(sp)
    3908:	afa40018 	sw	a0,24(sp)
    390c:	2484014c 	addiu	a0,a0,332
    3910:	0c000000 	jal	0 <func_80B3C1E0>
    3914:	3c054218 	lui	a1,0x4218
    3918:	10400006 	beqz	v0,3934 <func_80B3FAE0+0x34>
    391c:	8fa40018 	lw	a0,24(sp)
    3920:	248400e4 	addiu	a0,a0,228
    3924:	0c000000 	jal	0 <func_80B3C1E0>
    3928:	24056874 	li	a1,26740
    392c:	0c000000 	jal	0 <func_80B3C1E0>
    3930:	00000000 	nop
    3934:	8fbf0014 	lw	ra,20(sp)
    3938:	27bd0018 	addiu	sp,sp,24
    393c:	03e00008 	jr	ra
    3940:	00000000 	nop

00003944 <func_80B3FB24>:
    3944:	27bdffa0 	addiu	sp,sp,-96
    3948:	afbf002c 	sw	ra,44(sp)
    394c:	afb00028 	sw	s0,40(sp)
    3950:	00808025 	move	s0,a0
    3954:	f7b60020 	sdc1	$f22,32(sp)
    3958:	f7b40018 	sdc1	$f20,24(sp)
    395c:	afa50064 	sw	a1,100(sp)
    3960:	24060015 	li	a2,21
    3964:	0c000000 	jal	0 <func_80B3C1E0>
    3968:	24070004 	li	a3,4
    396c:	10400009 	beqz	v0,3994 <func_80B3FB24+0x50>
    3970:	02002025 	move	a0,s0
    3974:	8e0e02ac 	lw	t6,684(s0)
    3978:	24030001 	li	v1,1
    397c:	ae030274 	sw	v1,628(s0)
    3980:	55c0000c 	bnezl	t6,39b4 <func_80B3FB24+0x70>
    3984:	8e020274 	lw	v0,628(s0)
    3988:	ae0302ac 	sw	v1,684(s0)
    398c:	10000008 	b	39b0 <func_80B3FB24+0x6c>
    3990:	ae0302a8 	sw	v1,680(s0)
    3994:	8fa50064 	lw	a1,100(sp)
    3998:	24060013 	li	a2,19
    399c:	0c000000 	jal	0 <func_80B3C1E0>
    39a0:	24070004 	li	a3,4
    39a4:	10400002 	beqz	v0,39b0 <func_80B3FB24+0x6c>
    39a8:	240f0002 	li	t7,2
    39ac:	ae0f0274 	sw	t7,628(s0)
    39b0:	8e020274 	lw	v0,628(s0)
    39b4:	24030001 	li	v1,1
    39b8:	504000d7 	beqzl	v0,3d18 <func_80B3FB24+0x3d4>
    39bc:	8fbf002c 	lw	ra,44(sp)
    39c0:	14620051 	bne	v1,v0,3b08 <func_80B3FB24+0x1c4>
    39c4:	3c050000 	lui	a1,0x0
    39c8:	24a50000 	addiu	a1,a1,0
    39cc:	8cb80000 	lw	t8,0(a1)
    39d0:	3c014220 	lui	at,0x4220
    39d4:	4481a000 	mtc1	at,$f20
    39d8:	87191486 	lh	t9,5254(t8)
    39dc:	26040268 	addiu	a0,s0,616
    39e0:	c4920000 	lwc1	$f18,0(a0)
    39e4:	44992000 	mtc1	t9,$f4
    39e8:	26020278 	addiu	v0,s0,632
    39ec:	240e00aa 	li	t6,170
    39f0:	468021a0 	cvt.s.w	$f6,$f4
    39f4:	240f00ff 	li	t7,255
    39f8:	241800c8 	li	t8,200
    39fc:	46143080 	add.s	$f2,$f6,$f20
    3a00:	4602903c 	c.lt.s	$f18,$f2
    3a04:	00000000 	nop
    3a08:	45020021 	bc1fl	3a90 <func_80B3FB24+0x14c>
    3a0c:	ac4e0008 	sw	t6,8(v0)
    3a10:	46029003 	div.s	$f0,$f18,$f2
    3a14:	3c01c2aa 	lui	at,0xc2aa
    3a18:	44814000 	mtc1	at,$f8
    3a1c:	3c01437f 	lui	at,0x437f
    3a20:	44812000 	mtc1	at,$f4
    3a24:	26020278 	addiu	v0,s0,632
    3a28:	46004282 	mul.s	$f10,$f8,$f0
    3a2c:	46045180 	add.s	$f6,$f10,$f4
    3a30:	44815000 	mtc1	at,$f10
    3a34:	3c0142c8 	lui	at,0x42c8
    3a38:	4600320d 	trunc.w.s	$f8,$f6
    3a3c:	46005102 	mul.s	$f4,$f10,$f0
    3a40:	44094000 	mfc1	t1,$f8
    3a44:	44814000 	mtc1	at,$f8
    3a48:	ac490008 	sw	t1,8(v0)
    3a4c:	46004282 	mul.s	$f10,$f8,$f0
    3a50:	4600218d 	trunc.w.s	$f6,$f4
    3a54:	44812000 	mtc1	at,$f4
    3a58:	3c013f80 	lui	at,0x3f80
    3a5c:	440b3000 	mfc1	t3,$f6
    3a60:	46045180 	add.s	$f6,$f10,$f4
    3a64:	ac4b000c 	sw	t3,12(v0)
    3a68:	44812000 	mtc1	at,$f4
    3a6c:	4600320d 	trunc.w.s	$f8,$f6
    3a70:	440d4000 	mfc1	t5,$f8
    3a74:	00000000 	nop
    3a78:	ae0d028c 	sw	t5,652(s0)
    3a7c:	c48a0000 	lwc1	$f10,0(a0)
    3a80:	46045180 	add.s	$f6,$f10,$f4
    3a84:	10000004 	b	3a98 <func_80B3FB24+0x154>
    3a88:	e4860000 	swc1	$f6,0(a0)
    3a8c:	ac4e0008 	sw	t6,8(v0)
    3a90:	ac4f000c 	sw	t7,12(v0)
    3a94:	ae18028c 	sw	t8,652(s0)
    3a98:	8cb90000 	lw	t9,0(a1)
    3a9c:	3c010000 	lui	at,0x0
    3aa0:	c4360000 	lwc1	$f22,0(at)
    3aa4:	8728147a 	lh	t0,5242(t9)
    3aa8:	26030298 	addiu	v1,s0,664
    3aac:	44884000 	mtc1	t0,$f8
    3ab0:	00000000 	nop
    3ab4:	468042a0 	cvt.s.w	$f10,$f8
    3ab8:	46165102 	mul.s	$f4,$f10,$f22
    3abc:	46142180 	add.s	$f6,$f4,$f20
    3ac0:	e4660000 	swc1	$f6,0(v1)
    3ac4:	8ca90000 	lw	t1,0(a1)
    3ac8:	852a147c 	lh	t2,5244(t1)
    3acc:	448a4000 	mtc1	t2,$f8
    3ad0:	00000000 	nop
    3ad4:	468042a0 	cvt.s.w	$f10,$f8
    3ad8:	46165102 	mul.s	$f4,$f10,$f22
    3adc:	46142180 	add.s	$f6,$f4,$f20
    3ae0:	e4660004 	swc1	$f6,4(v1)
    3ae4:	8cab0000 	lw	t3,0(a1)
    3ae8:	856c147e 	lh	t4,5246(t3)
    3aec:	448c4000 	mtc1	t4,$f8
    3af0:	00000000 	nop
    3af4:	468042a0 	cvt.s.w	$f10,$f8
    3af8:	46165102 	mul.s	$f4,$f10,$f22
    3afc:	46142180 	add.s	$f6,$f4,$f20
    3b00:	10000084 	b	3d14 <func_80B3FB24+0x3d0>
    3b04:	e4660008 	swc1	$f6,8(v1)
    3b08:	24010002 	li	at,2
    3b0c:	14410081 	bne	v0,at,3d14 <func_80B3FB24+0x3d0>
    3b10:	3c050000 	lui	a1,0x0
    3b14:	24a50000 	addiu	a1,a1,0
    3b18:	8ca20000 	lw	v0,0(a1)
    3b1c:	3c014220 	lui	at,0x4220
    3b20:	4481a000 	mtc1	at,$f20
    3b24:	844d148a 	lh	t5,5258(v0)
    3b28:	844e1486 	lh	t6,5254(v0)
    3b2c:	3c0142b4 	lui	at,0x42b4
    3b30:	448d4000 	mtc1	t5,$f8
    3b34:	448e3000 	mtc1	t6,$f6
    3b38:	44812000 	mtc1	at,$f4
    3b3c:	468042a0 	cvt.s.w	$f10,$f8
    3b40:	26040268 	addiu	a0,s0,616
    3b44:	c4920000 	lwc1	$f18,0(a0)
    3b48:	46803220 	cvt.s.w	$f8,$f6
    3b4c:	46045300 	add.s	$f12,$f10,$f4
    3b50:	46144080 	add.s	$f2,$f8,$f20
    3b54:	e7ac0034 	swc1	$f12,52(sp)
    3b58:	46026000 	add.s	$f0,$f12,$f2
    3b5c:	4600903c 	c.lt.s	$f18,$f0
    3b60:	00000000 	nop
    3b64:	4502003e 	bc1fl	3c60 <func_80B3FB24+0x31c>
    3b68:	844b1488 	lh	t3,5256(v0)
    3b6c:	844f147a 	lh	t7,5242(v0)
    3b70:	46029281 	sub.s	$f10,$f18,$f2
    3b74:	c7a40034 	lwc1	$f4,52(sp)
    3b78:	448f3000 	mtc1	t7,$f6
    3b7c:	84581488 	lh	t8,5256(v0)
    3b80:	46045003 	div.s	$f0,$f10,$f4
    3b84:	3c010000 	lui	at,0x0
    3b88:	c4360000 	lwc1	$f22,0(at)
    3b8c:	44982000 	mtc1	t8,$f4
    3b90:	46803220 	cvt.s.w	$f8,$f6
    3b94:	3c014248 	lui	at,0x4248
    3b98:	26030298 	addiu	v1,s0,664
    3b9c:	468021a0 	cvt.s.w	$f6,$f4
    3ba0:	46164282 	mul.s	$f10,$f8,$f22
    3ba4:	44814000 	mtc1	at,$f8
    3ba8:	46145300 	add.s	$f12,$f10,$f20
    3bac:	46083280 	add.s	$f10,$f6,$f8
    3bb0:	460a6102 	mul.s	$f4,$f12,$f10
    3bb4:	00000000 	nop
    3bb8:	46002182 	mul.s	$f6,$f4,$f0
    3bbc:	460c3200 	add.s	$f8,$f6,$f12
    3bc0:	e4680000 	swc1	$f8,0(v1)
    3bc4:	8ca20000 	lw	v0,0(a1)
    3bc8:	8459147c 	lh	t9,5244(v0)
    3bcc:	84481488 	lh	t0,5256(v0)
    3bd0:	44995000 	mtc1	t9,$f10
    3bd4:	44884000 	mtc1	t0,$f8
    3bd8:	46805120 	cvt.s.w	$f4,$f10
    3bdc:	468042a0 	cvt.s.w	$f10,$f8
    3be0:	46162182 	mul.s	$f6,$f4,$f22
    3be4:	44812000 	mtc1	at,$f4
    3be8:	46143380 	add.s	$f14,$f6,$f20
    3bec:	46045180 	add.s	$f6,$f10,$f4
    3bf0:	46067202 	mul.s	$f8,$f14,$f6
    3bf4:	00000000 	nop
    3bf8:	46004282 	mul.s	$f10,$f8,$f0
    3bfc:	460e5100 	add.s	$f4,$f10,$f14
    3c00:	e4640004 	swc1	$f4,4(v1)
    3c04:	8ca20000 	lw	v0,0(a1)
    3c08:	8449147e 	lh	t1,5246(v0)
    3c0c:	844a1488 	lh	t2,5256(v0)
    3c10:	44893000 	mtc1	t1,$f6
    3c14:	448a2000 	mtc1	t2,$f4
    3c18:	46803220 	cvt.s.w	$f8,$f6
    3c1c:	468021a0 	cvt.s.w	$f6,$f4
    3c20:	46164282 	mul.s	$f10,$f8,$f22
    3c24:	44814000 	mtc1	at,$f8
    3c28:	3c013f80 	lui	at,0x3f80
    3c2c:	46145400 	add.s	$f16,$f10,$f20
    3c30:	46083280 	add.s	$f10,$f6,$f8
    3c34:	460a8102 	mul.s	$f4,$f16,$f10
    3c38:	00000000 	nop
    3c3c:	46002182 	mul.s	$f6,$f4,$f0
    3c40:	44812000 	mtc1	at,$f4
    3c44:	46103200 	add.s	$f8,$f6,$f16
    3c48:	e4680008 	swc1	$f8,8(v1)
    3c4c:	c48a0000 	lwc1	$f10,0(a0)
    3c50:	46045180 	add.s	$f6,$f10,$f4
    3c54:	10000029 	b	3cfc <func_80B3FB24+0x3b8>
    3c58:	e4860000 	swc1	$f6,0(a0)
    3c5c:	844b1488 	lh	t3,5256(v0)
    3c60:	844c147a 	lh	t4,5242(v0)
    3c64:	3c014248 	lui	at,0x4248
    3c68:	448b4000 	mtc1	t3,$f8
    3c6c:	448c3000 	mtc1	t4,$f6
    3c70:	44810000 	mtc1	at,$f0
    3c74:	468042a0 	cvt.s.w	$f10,$f8
    3c78:	3c010000 	lui	at,0x0
    3c7c:	c4360000 	lwc1	$f22,0(at)
    3c80:	26030298 	addiu	v1,s0,664
    3c84:	46803220 	cvt.s.w	$f8,$f6
    3c88:	46005100 	add.s	$f4,$f10,$f0
    3c8c:	46164282 	mul.s	$f10,$f8,$f22
    3c90:	46145180 	add.s	$f6,$f10,$f20
    3c94:	46062202 	mul.s	$f8,$f4,$f6
    3c98:	e4680000 	swc1	$f8,0(v1)
    3c9c:	8ca20000 	lw	v0,0(a1)
    3ca0:	844d1488 	lh	t5,5256(v0)
    3ca4:	844e147c 	lh	t6,5244(v0)
    3ca8:	448d5000 	mtc1	t5,$f10
    3cac:	448e4000 	mtc1	t6,$f8
    3cb0:	46805120 	cvt.s.w	$f4,$f10
    3cb4:	468042a0 	cvt.s.w	$f10,$f8
    3cb8:	46002180 	add.s	$f6,$f4,$f0
    3cbc:	46165102 	mul.s	$f4,$f10,$f22
    3cc0:	46142200 	add.s	$f8,$f4,$f20
    3cc4:	46083282 	mul.s	$f10,$f6,$f8
    3cc8:	e46a0004 	swc1	$f10,4(v1)
    3ccc:	8ca20000 	lw	v0,0(a1)
    3cd0:	844f1488 	lh	t7,5256(v0)
    3cd4:	8458147e 	lh	t8,5246(v0)
    3cd8:	448f2000 	mtc1	t7,$f4
    3cdc:	44985000 	mtc1	t8,$f10
    3ce0:	468021a0 	cvt.s.w	$f6,$f4
    3ce4:	46805120 	cvt.s.w	$f4,$f10
    3ce8:	46003200 	add.s	$f8,$f6,$f0
    3cec:	46162182 	mul.s	$f6,$f4,$f22
    3cf0:	46143280 	add.s	$f10,$f6,$f20
    3cf4:	460a4102 	mul.s	$f4,$f8,$f10
    3cf8:	e4640008 	swc1	$f4,8(v1)
    3cfc:	8ca80000 	lw	t0,0(a1)
    3d00:	861902a4 	lh	t9,676(s0)
    3d04:	8509148c 	lh	t1,5260(t0)
    3d08:	252c2ee0 	addiu	t4,t1,12000
    3d0c:	032c6821 	addu	t5,t9,t4
    3d10:	a60d02a4 	sh	t5,676(s0)
    3d14:	8fbf002c 	lw	ra,44(sp)
    3d18:	d7b40018 	ldc1	$f20,24(sp)
    3d1c:	d7b60020 	ldc1	$f22,32(sp)
    3d20:	8fb00028 	lw	s0,40(sp)
    3d24:	03e00008 	jr	ra
    3d28:	27bd0060 	addiu	sp,sp,96

00003d2c <func_80B3FF0C>:
    3d2c:	27bdffe8 	addiu	sp,sp,-24
    3d30:	afbf0014 	sw	ra,20(sp)
    3d34:	afa40018 	sw	a0,24(sp)
    3d38:	afa5001c 	sw	a1,28(sp)
    3d3c:	24060001 	li	a2,1
    3d40:	0c000000 	jal	0 <func_80B3C1E0>
    3d44:	24070004 	li	a3,4
    3d48:	8fa40018 	lw	a0,24(sp)
    3d4c:	1040001d 	beqz	v0,3dc4 <func_80B3FF0C+0x98>
    3d50:	8fa5001c 	lw	a1,28(sp)
    3d54:	90ae1d6c 	lbu	t6,7532(a1)
    3d58:	24080036 	li	t0,54
    3d5c:	24090001 	li	t1,1
    3d60:	51c00017 	beqzl	t6,3dc0 <func_80B3FF0C+0x94>
    3d64:	ac880260 	sw	t0,608(a0)
    3d68:	8ca21d9c 	lw	v0,7580(a1)
    3d6c:	50400014 	beqzl	v0,3dc0 <func_80B3FF0C+0x94>
    3d70:	ac880260 	sw	t0,608(a0)
    3d74:	8c4f000c 	lw	t7,12(v0)
    3d78:	448f2000 	mtc1	t7,$f4
    3d7c:	00000000 	nop
    3d80:	468021a0 	cvt.s.w	$f6,$f4
    3d84:	e4860024 	swc1	$f6,36(a0)
    3d88:	8c580010 	lw	t8,16(v0)
    3d8c:	44984000 	mtc1	t8,$f8
    3d90:	00000000 	nop
    3d94:	468042a0 	cvt.s.w	$f10,$f8
    3d98:	e48a0028 	swc1	$f10,40(a0)
    3d9c:	8c590014 	lw	t9,20(v0)
    3da0:	44998000 	mtc1	t9,$f16
    3da4:	00000000 	nop
    3da8:	468084a0 	cvt.s.w	$f18,$f16
    3dac:	e492002c 	swc1	$f18,44(a0)
    3db0:	84430008 	lh	v1,8(v0)
    3db4:	a48300b6 	sh	v1,182(a0)
    3db8:	a4830032 	sh	v1,50(a0)
    3dbc:	ac880260 	sw	t0,608(a0)
    3dc0:	ac890264 	sw	t1,612(a0)
    3dc4:	8fbf0014 	lw	ra,20(sp)
    3dc8:	27bd0018 	addiu	sp,sp,24
    3dcc:	03e00008 	jr	ra
    3dd0:	00000000 	nop

00003dd4 <func_80B3FFB4>:
    3dd4:	27bdffd8 	addiu	sp,sp,-40
    3dd8:	afbf0024 	sw	ra,36(sp)
    3ddc:	afa40028 	sw	a0,40(sp)
    3de0:	2406000a 	li	a2,10
    3de4:	0c000000 	jal	0 <func_80B3C1E0>
    3de8:	24070004 	li	a3,4
    3dec:	10400018 	beqz	v0,3e50 <func_80B3FFB4+0x7c>
    3df0:	3c040600 	lui	a0,0x600
    3df4:	0c000000 	jal	0 <func_80B3C1E0>
    3df8:	24841a08 	addiu	a0,a0,6664
    3dfc:	44822000 	mtc1	v0,$f4
    3e00:	3c01c100 	lui	at,0xc100
    3e04:	44814000 	mtc1	at,$f8
    3e08:	468021a0 	cvt.s.w	$f6,$f4
    3e0c:	8fa40028 	lw	a0,40(sp)
    3e10:	3c050600 	lui	a1,0x600
    3e14:	240e0002 	li	t6,2
    3e18:	afae0014 	sw	t6,20(sp)
    3e1c:	24a51a08 	addiu	a1,a1,6664
    3e20:	e7a60010 	swc1	$f6,16(sp)
    3e24:	3c063f80 	lui	a2,0x3f80
    3e28:	24070000 	li	a3,0
    3e2c:	e7a80018 	swc1	$f8,24(sp)
    3e30:	0c000000 	jal	0 <func_80B3C1E0>
    3e34:	2484014c 	addiu	a0,a0,332
    3e38:	8fb80028 	lw	t8,40(sp)
    3e3c:	240f0037 	li	t7,55
    3e40:	24190004 	li	t9,4
    3e44:	af0f0260 	sw	t7,608(t8)
    3e48:	8fa80028 	lw	t0,40(sp)
    3e4c:	ad190264 	sw	t9,612(t0)
    3e50:	8fbf0024 	lw	ra,36(sp)
    3e54:	27bd0028 	addiu	sp,sp,40
    3e58:	03e00008 	jr	ra
    3e5c:	00000000 	nop

00003e60 <func_80B40040>:
    3e60:	27bdffd8 	addiu	sp,sp,-40
    3e64:	afbf0024 	sw	ra,36(sp)
    3e68:	10a00014 	beqz	a1,3ebc <func_80B40040+0x5c>
    3e6c:	afa40028 	sw	a0,40(sp)
    3e70:	3c040600 	lui	a0,0x600
    3e74:	0c000000 	jal	0 <func_80B3C1E0>
    3e78:	24841d14 	addiu	a0,a0,7444
    3e7c:	44822000 	mtc1	v0,$f4
    3e80:	44800000 	mtc1	zero,$f0
    3e84:	8fa40028 	lw	a0,40(sp)
    3e88:	468021a0 	cvt.s.w	$f6,$f4
    3e8c:	3c050600 	lui	a1,0x600
    3e90:	44070000 	mfc1	a3,$f0
    3e94:	24a51d14 	addiu	a1,a1,7444
    3e98:	3c063f80 	lui	a2,0x3f80
    3e9c:	afa00014 	sw	zero,20(sp)
    3ea0:	e7a60010 	swc1	$f6,16(sp)
    3ea4:	2484014c 	addiu	a0,a0,332
    3ea8:	0c000000 	jal	0 <func_80B3C1E0>
    3eac:	e7a00018 	swc1	$f0,24(sp)
    3eb0:	8faf0028 	lw	t7,40(sp)
    3eb4:	240e0038 	li	t6,56
    3eb8:	adee0260 	sw	t6,608(t7)
    3ebc:	8fbf0024 	lw	ra,36(sp)
    3ec0:	27bd0028 	addiu	sp,sp,40
    3ec4:	03e00008 	jr	ra
    3ec8:	00000000 	nop

00003ecc <func_80B400AC>:
    3ecc:	27bdffe8 	addiu	sp,sp,-24
    3ed0:	afbf0014 	sw	ra,20(sp)
    3ed4:	afa40018 	sw	a0,24(sp)
    3ed8:	24060009 	li	a2,9
    3edc:	0c000000 	jal	0 <func_80B3C1E0>
    3ee0:	24070004 	li	a3,4
    3ee4:	50400004 	beqzl	v0,3ef8 <func_80B400AC+0x2c>
    3ee8:	8fbf0014 	lw	ra,20(sp)
    3eec:	0c000000 	jal	0 <func_80B3C1E0>
    3ef0:	8fa40018 	lw	a0,24(sp)
    3ef4:	8fbf0014 	lw	ra,20(sp)
    3ef8:	27bd0018 	addiu	sp,sp,24
    3efc:	03e00008 	jr	ra
    3f00:	00000000 	nop

00003f04 <func_80B400E4>:
    3f04:	27bdffe8 	addiu	sp,sp,-24
    3f08:	afbf0014 	sw	ra,20(sp)
    3f0c:	0c000000 	jal	0 <func_80B3C1E0>
    3f10:	00000000 	nop
    3f14:	8fbf0014 	lw	ra,20(sp)
    3f18:	27bd0018 	addiu	sp,sp,24
    3f1c:	03e00008 	jr	ra
    3f20:	00000000 	nop

00003f24 <func_80B40104>:
    3f24:	27bdffe0 	addiu	sp,sp,-32
    3f28:	afbf001c 	sw	ra,28(sp)
    3f2c:	afb00018 	sw	s0,24(sp)
    3f30:	00808025 	move	s0,a0
    3f34:	0c000000 	jal	0 <func_80B3C1E0>
    3f38:	afa50024 	sw	a1,36(sp)
    3f3c:	02002025 	move	a0,s0
    3f40:	0c000000 	jal	0 <func_80B3C1E0>
    3f44:	8fa50024 	lw	a1,36(sp)
    3f48:	0c000000 	jal	0 <func_80B3C1E0>
    3f4c:	02002025 	move	a0,s0
    3f50:	02002025 	move	a0,s0
    3f54:	0c000000 	jal	0 <func_80B3C1E0>
    3f58:	8fa50024 	lw	a1,36(sp)
    3f5c:	02002025 	move	a0,s0
    3f60:	0c000000 	jal	0 <func_80B3C1E0>
    3f64:	8fa50024 	lw	a1,36(sp)
    3f68:	8fbf001c 	lw	ra,28(sp)
    3f6c:	8fb00018 	lw	s0,24(sp)
    3f70:	27bd0020 	addiu	sp,sp,32
    3f74:	03e00008 	jr	ra
    3f78:	00000000 	nop

00003f7c <func_80B4015C>:
    3f7c:	27bdffd8 	addiu	sp,sp,-40
    3f80:	afbf001c 	sw	ra,28(sp)
    3f84:	afb00018 	sw	s0,24(sp)
    3f88:	00808025 	move	s0,a0
    3f8c:	0c000000 	jal	0 <func_80B3C1E0>
    3f90:	afa5002c 	sw	a1,44(sp)
    3f94:	afa20024 	sw	v0,36(sp)
    3f98:	02002025 	move	a0,s0
    3f9c:	0c000000 	jal	0 <func_80B3C1E0>
    3fa0:	8fa5002c 	lw	a1,44(sp)
    3fa4:	0c000000 	jal	0 <func_80B3C1E0>
    3fa8:	02002025 	move	a0,s0
    3fac:	02002025 	move	a0,s0
    3fb0:	0c000000 	jal	0 <func_80B3C1E0>
    3fb4:	8fa5002c 	lw	a1,44(sp)
    3fb8:	0c000000 	jal	0 <func_80B3C1E0>
    3fbc:	02002025 	move	a0,s0
    3fc0:	02002025 	move	a0,s0
    3fc4:	0c000000 	jal	0 <func_80B3C1E0>
    3fc8:	8fa50024 	lw	a1,36(sp)
    3fcc:	02002025 	move	a0,s0
    3fd0:	0c000000 	jal	0 <func_80B3C1E0>
    3fd4:	8fa5002c 	lw	a1,44(sp)
    3fd8:	8fbf001c 	lw	ra,28(sp)
    3fdc:	8fb00018 	lw	s0,24(sp)
    3fe0:	27bd0028 	addiu	sp,sp,40
    3fe4:	03e00008 	jr	ra
    3fe8:	00000000 	nop

00003fec <func_80B401CC>:
    3fec:	27bdffe0 	addiu	sp,sp,-32
    3ff0:	afbf001c 	sw	ra,28(sp)
    3ff4:	afb00018 	sw	s0,24(sp)
    3ff8:	00808025 	move	s0,a0
    3ffc:	0c000000 	jal	0 <func_80B3C1E0>
    4000:	afa50024 	sw	a1,36(sp)
    4004:	02002025 	move	a0,s0
    4008:	0c000000 	jal	0 <func_80B3C1E0>
    400c:	8fa50024 	lw	a1,36(sp)
    4010:	0c000000 	jal	0 <func_80B3C1E0>
    4014:	02002025 	move	a0,s0
    4018:	02002025 	move	a0,s0
    401c:	0c000000 	jal	0 <func_80B3C1E0>
    4020:	8fa50024 	lw	a1,36(sp)
    4024:	02002025 	move	a0,s0
    4028:	0c000000 	jal	0 <func_80B3C1E0>
    402c:	8fa50024 	lw	a1,36(sp)
    4030:	8fbf001c 	lw	ra,28(sp)
    4034:	8fb00018 	lw	s0,24(sp)
    4038:	27bd0020 	addiu	sp,sp,32
    403c:	03e00008 	jr	ra
    4040:	00000000 	nop

00004044 <func_80B40224>:
    4044:	2401000f 	li	at,15
    4048:	afa40000 	sw	a0,0(sp)
    404c:	14a10004 	bne	a1,at,4060 <func_80B40224+0x1c>
    4050:	afa7000c 	sw	a3,12(sp)
    4054:	3c0e0601 	lui	t6,0x601
    4058:	25ce1620 	addiu	t6,t6,5664
    405c:	acce0000 	sw	t6,0(a2)
    4060:	03e00008 	jr	ra
    4064:	00001025 	move	v0,zero

00004068 <func_80B40248>:
    4068:	27bdffd0 	addiu	sp,sp,-48
    406c:	afa60038 	sw	a2,56(sp)
    4070:	2401000f 	li	at,15
    4074:	00803025 	move	a2,a0
    4078:	afbf0014 	sw	ra,20(sp)
    407c:	afa40030 	sw	a0,48(sp)
    4080:	14a10014 	bne	a1,at,40d4 <func_80B40248+0x6c>
    4084:	afa7003c 	sw	a3,60(sp)
    4088:	3c0f0000 	lui	t7,0x0
    408c:	25ef0000 	addiu	t7,t7,0
    4090:	8df90000 	lw	t9,0(t7)
    4094:	27ae0018 	addiu	t6,sp,24
    4098:	8df80004 	lw	t8,4(t7)
    409c:	add90000 	sw	t9,0(t6)
    40a0:	8df90008 	lw	t9,8(t7)
    40a4:	add80004 	sw	t8,4(t6)
    40a8:	00c02825 	move	a1,a2
    40ac:	add90008 	sw	t9,8(t6)
    40b0:	0c000000 	jal	0 <func_80B3C1E0>
    40b4:	8fa40040 	lw	a0,64(sp)
    40b8:	8fa50040 	lw	a1,64(sp)
    40bc:	27a40018 	addiu	a0,sp,24
    40c0:	0c000000 	jal	0 <func_80B3C1E0>
    40c4:	24a502b0 	addiu	a1,a1,688
    40c8:	8fa90040 	lw	t1,64(sp)
    40cc:	24080001 	li	t0,1
    40d0:	ad2802bc 	sw	t0,700(t1)
    40d4:	8fbf0014 	lw	ra,20(sp)
    40d8:	27bd0030 	addiu	sp,sp,48
    40dc:	03e00008 	jr	ra
    40e0:	00000000 	nop

000040e4 <func_80B402C4>:
    40e4:	27bdff68 	addiu	sp,sp,-152
    40e8:	afbf002c 	sw	ra,44(sp)
    40ec:	afb10028 	sw	s1,40(sp)
    40f0:	afb00024 	sw	s0,36(sp)
    40f4:	afa5009c 	sw	a1,156(sp)
    40f8:	8482025c 	lh	v0,604(a0)
    40fc:	3c0f0000 	lui	t7,0x0
    4100:	00808825 	move	s1,a0
    4104:	00027080 	sll	t6,v0,0x2
    4108:	01ee7821 	addu	t7,t7,t6
    410c:	8def0000 	lw	t7,0(t7)
    4110:	3c060000 	lui	a2,0x0
    4114:	24c60000 	addiu	a2,a2,0
    4118:	afaf0088 	sw	t7,136(sp)
    411c:	8cb00000 	lw	s0,0(a1)
    4120:	27a40068 	addiu	a0,sp,104
    4124:	24070235 	li	a3,565
    4128:	0c000000 	jal	0 <func_80B3C1E0>
    412c:	02002825 	move	a1,s0
    4130:	8e3902bc 	lw	t9,700(s1)
    4134:	02002025 	move	a0,s0
    4138:	53200060 	beqzl	t9,42bc <func_80B402C4+0x1d8>
    413c:	02202025 	move	a0,s1
    4140:	0c000000 	jal	0 <func_80B3C1E0>
    4144:	24050040 	li	a1,64
    4148:	0c000000 	jal	0 <func_80B3C1E0>
    414c:	afa20064 	sw	v0,100(sp)
    4150:	3c020000 	lui	v0,0x0
    4154:	8c420000 	lw	v0,0(v0)
    4158:	3c0142c8 	lui	at,0x42c8
    415c:	44814000 	mtc1	at,$f8
    4160:	84481474 	lh	t0,5236(v0)
    4164:	844a1478 	lh	t2,5240(v0)
    4168:	84491476 	lh	t1,5238(v0)
    416c:	44882000 	mtc1	t0,$f4
    4170:	3c010000 	lui	at,0x0
    4174:	c4320000 	lwc1	$f18,0(at)
    4178:	468021a0 	cvt.s.w	$f6,$f4
    417c:	448a2000 	mtc1	t2,$f4
    4180:	44895000 	mtc1	t1,$f10
    4184:	3c010000 	lui	at,0x0
    4188:	24070001 	li	a3,1
    418c:	46805420 	cvt.s.w	$f16,$f10
    4190:	46083300 	add.s	$f12,$f6,$f8
    4194:	c4280000 	lwc1	$f8,0(at)
    4198:	468021a0 	cvt.s.w	$f6,$f4
    419c:	46128380 	add.s	$f14,$f16,$f18
    41a0:	46083280 	add.s	$f10,$f6,$f8
    41a4:	44065000 	mfc1	a2,$f10
    41a8:	0c000000 	jal	0 <func_80B3C1E0>
    41ac:	00000000 	nop
    41b0:	3c020000 	lui	v0,0x0
    41b4:	8c420000 	lw	v0,0(v0)
    41b8:	862602a4 	lh	a2,676(s1)
    41bc:	24070001 	li	a3,1
    41c0:	84441480 	lh	a0,5248(v0)
    41c4:	0c000000 	jal	0 <func_80B3C1E0>
    41c8:	84451482 	lh	a1,5250(v0)
    41cc:	26220298 	addiu	v0,s1,664
    41d0:	c44c0000 	lwc1	$f12,0(v0)
    41d4:	c44e0004 	lwc1	$f14,4(v0)
    41d8:	8c460008 	lw	a2,8(v0)
    41dc:	0c000000 	jal	0 <func_80B3C1E0>
    41e0:	24070001 	li	a3,1
    41e4:	3c050000 	lui	a1,0x0
    41e8:	24a50000 	addiu	a1,a1,0
    41ec:	8fa40064 	lw	a0,100(sp)
    41f0:	0c000000 	jal	0 <func_80B3C1E0>
    41f4:	2406025a 	li	a2,602
    41f8:	0c000000 	jal	0 <func_80B3C1E0>
    41fc:	00000000 	nop
    4200:	0c000000 	jal	0 <func_80B3C1E0>
    4204:	02002025 	move	a0,s0
    4208:	8e0202d0 	lw	v0,720(s0)
    420c:	3c0cfa00 	lui	t4,0xfa00
    4210:	358c0080 	ori	t4,t4,0x80
    4214:	244b0008 	addiu	t3,v0,8
    4218:	ae0b02d0 	sw	t3,720(s0)
    421c:	26240278 	addiu	a0,s1,632
    4220:	ac4c0000 	sw	t4,0(v0)
    4224:	8c980008 	lw	t8,8(a0)
    4228:	8c8d000c 	lw	t5,12(a0)
    422c:	3c01ffff 	lui	at,0xffff
    4230:	331900ff 	andi	t9,t8,0xff
    4234:	31ae00ff 	andi	t6,t5,0xff
    4238:	01c17825 	or	t7,t6,at
    423c:	00194200 	sll	t0,t9,0x8
    4240:	01e84825 	or	t1,t7,t0
    4244:	ac490004 	sw	t1,4(v0)
    4248:	8e0202d0 	lw	v0,720(s0)
    424c:	3c0bfb00 	lui	t3,0xfb00
    4250:	3c01ff00 	lui	at,0xff00
    4254:	244a0008 	addiu	t2,v0,8
    4258:	ae0a02d0 	sw	t2,720(s0)
    425c:	ac4b0000 	sw	t3,0(v0)
    4260:	8e2c028c 	lw	t4,652(s1)
    4264:	3c08da38 	lui	t0,0xda38
    4268:	35080003 	ori	t0,t0,0x3
    426c:	318d00ff 	andi	t5,t4,0xff
    4270:	000d7400 	sll	t6,t5,0x10
    4274:	01c1c025 	or	t8,t6,at
    4278:	37190080 	ori	t9,t8,0x80
    427c:	ac590004 	sw	t9,4(v0)
    4280:	8e0202d0 	lw	v0,720(s0)
    4284:	3c0c0601 	lui	t4,0x601
    4288:	258c2970 	addiu	t4,t4,10608
    428c:	244f0008 	addiu	t7,v0,8
    4290:	ae0f02d0 	sw	t7,720(s0)
    4294:	ac480000 	sw	t0,0(v0)
    4298:	8fa90064 	lw	t1,100(sp)
    429c:	3c0bde00 	lui	t3,0xde00
    42a0:	ac490004 	sw	t1,4(v0)
    42a4:	8e0202d0 	lw	v0,720(s0)
    42a8:	244a0008 	addiu	t2,v0,8
    42ac:	ae0a02d0 	sw	t2,720(s0)
    42b0:	ac4c0004 	sw	t4,4(v0)
    42b4:	ac4b0000 	sw	t3,0(v0)
    42b8:	02202025 	move	a0,s1
    42bc:	8fa5009c 	lw	a1,156(sp)
    42c0:	0c000000 	jal	0 <func_80B3C1E0>
    42c4:	00003025 	move	a2,zero
    42c8:	8fad009c 	lw	t5,156(sp)
    42cc:	0c000000 	jal	0 <func_80B3C1E0>
    42d0:	8da40000 	lw	a0,0(t5)
    42d4:	8fa70088 	lw	a3,136(sp)
    42d8:	8e0302c0 	lw	v1,704(s0)
    42dc:	3c18db06 	lui	t8,0xdb06
    42e0:	0007c900 	sll	t9,a3,0x4
    42e4:	00197f02 	srl	t7,t9,0x1c
    42e8:	3c090000 	lui	t1,0x0
    42ec:	246e0008 	addiu	t6,v1,8
    42f0:	ae0e02c0 	sw	t6,704(s0)
    42f4:	25290000 	addiu	t1,t1,0
    42f8:	000f4080 	sll	t0,t7,0x2
    42fc:	37180020 	ori	t8,t8,0x20
    4300:	01092021 	addu	a0,t0,t1
    4304:	ac780000 	sw	t8,0(v1)
    4308:	8c8a0000 	lw	t2,0(a0)
    430c:	3c0100ff 	lui	at,0xff
    4310:	3421ffff 	ori	at,at,0xffff
    4314:	00e12824 	and	a1,a3,at
    4318:	3c068000 	lui	a2,0x8000
    431c:	01455821 	addu	t3,t2,a1
    4320:	01666021 	addu	t4,t3,a2
    4324:	ac6c0004 	sw	t4,4(v1)
    4328:	8e0302c0 	lw	v1,704(s0)
    432c:	3c0edb06 	lui	t6,0xdb06
    4330:	35ce0024 	ori	t6,t6,0x24
    4334:	246d0008 	addiu	t5,v1,8
    4338:	ae0d02c0 	sw	t5,704(s0)
    433c:	ac6e0000 	sw	t6,0(v1)
    4340:	8c980000 	lw	t8,0(a0)
    4344:	2622014c 	addiu	v0,s1,332
    4348:	3c090000 	lui	t1,0x0
    434c:	0305c821 	addu	t9,t8,a1
    4350:	03267821 	addu	t7,t9,a2
    4354:	ac6f0004 	sw	t7,4(v1)
    4358:	90470002 	lbu	a3,2(v0)
    435c:	8c460020 	lw	a2,32(v0)
    4360:	8c450004 	lw	a1,4(v0)
    4364:	3c080000 	lui	t0,0x0
    4368:	25080000 	addiu	t0,t0,0
    436c:	25290000 	addiu	t1,t1,0
    4370:	afa90014 	sw	t1,20(sp)
    4374:	afa80010 	sw	t0,16(sp)
    4378:	afb10018 	sw	s1,24(sp)
    437c:	0c000000 	jal	0 <func_80B3C1E0>
    4380:	8fa4009c 	lw	a0,156(sp)
    4384:	3c060000 	lui	a2,0x0
    4388:	24c60000 	addiu	a2,a2,0
    438c:	27a40068 	addiu	a0,sp,104
    4390:	02002825 	move	a1,s0
    4394:	0c000000 	jal	0 <func_80B3C1E0>
    4398:	2407029c 	li	a3,668
    439c:	8fbf002c 	lw	ra,44(sp)
    43a0:	8fb00024 	lw	s0,36(sp)
    43a4:	8fb10028 	lw	s1,40(sp)
    43a8:	03e00008 	jr	ra
    43ac:	27bd0098 	addiu	sp,sp,152

000043b0 <func_80B40590>:
    43b0:	afa50004 	sw	a1,4(sp)
    43b4:	240e0039 	li	t6,57
    43b8:	240f0005 	li	t7,5
    43bc:	ac8e0260 	sw	t6,608(a0)
    43c0:	03e00008 	jr	ra
    43c4:	ac8f0264 	sw	t7,612(a0)

000043c8 <func_80B405A8>:
    43c8:	27bdffe0 	addiu	sp,sp,-32
    43cc:	afb10018 	sw	s1,24(sp)
    43d0:	afb00014 	sw	s0,20(sp)
    43d4:	00808825 	move	s1,a0
    43d8:	afbf001c 	sw	ra,28(sp)
    43dc:	2490014c 	addiu	s0,a0,332
    43e0:	02002025 	move	a0,s0
    43e4:	0c000000 	jal	0 <func_80B3C1E0>
    43e8:	3c054110 	lui	a1,0x4110
    43ec:	1040000a 	beqz	v0,4418 <func_80B405A8+0x50>
    43f0:	02002025 	move	a0,s0
    43f4:	263000e4 	addiu	s0,s1,228
    43f8:	02002025 	move	a0,s0
    43fc:	0c000000 	jal	0 <func_80B3C1E0>
    4400:	24050858 	li	a1,2136
    4404:	02002025 	move	a0,s0
    4408:	0c000000 	jal	0 <func_80B3C1E0>
    440c:	24056872 	li	a1,26738
    4410:	1000001a 	b	447c <func_80B405A8+0xb4>
    4414:	8fbf001c 	lw	ra,28(sp)
    4418:	0c000000 	jal	0 <func_80B3C1E0>
    441c:	3c0541d0 	lui	a1,0x41d0
    4420:	10400006 	beqz	v0,443c <func_80B405A8+0x74>
    4424:	02002025 	move	a0,s0
    4428:	262400e4 	addiu	a0,s1,228
    442c:	0c000000 	jal	0 <func_80B3C1E0>
    4430:	24050858 	li	a1,2136
    4434:	10000011 	b	447c <func_80B405A8+0xb4>
    4438:	8fbf001c 	lw	ra,28(sp)
    443c:	0c000000 	jal	0 <func_80B3C1E0>
    4440:	3c0541e0 	lui	a1,0x41e0
    4444:	10400006 	beqz	v0,4460 <func_80B405A8+0x98>
    4448:	02002025 	move	a0,s0
    444c:	262400e4 	addiu	a0,s1,228
    4450:	0c000000 	jal	0 <func_80B3C1E0>
    4454:	24050808 	li	a1,2056
    4458:	10000008 	b	447c <func_80B405A8+0xb4>
    445c:	8fbf001c 	lw	ra,28(sp)
    4460:	0c000000 	jal	0 <func_80B3C1E0>
    4464:	3c054208 	lui	a1,0x4208
    4468:	10400003 	beqz	v0,4478 <func_80B405A8+0xb0>
    446c:	262400e4 	addiu	a0,s1,228
    4470:	0c000000 	jal	0 <func_80B3C1E0>
    4474:	24050808 	li	a1,2056
    4478:	8fbf001c 	lw	ra,28(sp)
    447c:	8fb00014 	lw	s0,20(sp)
    4480:	8fb10018 	lw	s1,24(sp)
    4484:	03e00008 	jr	ra
    4488:	27bd0020 	addiu	sp,sp,32

0000448c <func_80B4066C>:
    448c:	27bdffe8 	addiu	sp,sp,-24
    4490:	afbf0014 	sw	ra,20(sp)
    4494:	afa40018 	sw	a0,24(sp)
    4498:	94ae1d74 	lhu	t6,7540(a1)
    449c:	240105af 	li	at,1455
    44a0:	55c10004 	bnel	t6,at,44b4 <func_80B4066C+0x28>
    44a4:	8fbf0014 	lw	ra,20(sp)
    44a8:	0c000000 	jal	0 <func_80B3C1E0>
    44ac:	24040007 	li	a0,7
    44b0:	8fbf0014 	lw	ra,20(sp)
    44b4:	27bd0018 	addiu	sp,sp,24
    44b8:	03e00008 	jr	ra
    44bc:	00000000 	nop

000044c0 <func_80B406A0>:
    44c0:	27bdffe8 	addiu	sp,sp,-24
    44c4:	afbf0014 	sw	ra,20(sp)
    44c8:	94ae1d74 	lhu	t6,7540(a1)
    44cc:	00803025 	move	a2,a0
    44d0:	24010365 	li	at,869
    44d4:	15c10005 	bne	t6,at,44ec <func_80B406A0+0x2c>
    44d8:	248400e4 	addiu	a0,a0,228
    44dc:	0c000000 	jal	0 <func_80B3C1E0>
    44e0:	24056870 	li	a1,26736
    44e4:	10000009 	b	450c <func_80B406A0+0x4c>
    44e8:	8fbf0014 	lw	ra,20(sp)
    44ec:	94af1d74 	lhu	t7,7540(a1)
    44f0:	240103ab 	li	at,939
    44f4:	24c400e4 	addiu	a0,a2,228
    44f8:	55e10004 	bnel	t7,at,450c <func_80B406A0+0x4c>
    44fc:	8fbf0014 	lw	ra,20(sp)
    4500:	0c000000 	jal	0 <func_80B3C1E0>
    4504:	24056871 	li	a1,26737
    4508:	8fbf0014 	lw	ra,20(sp)
    450c:	27bd0018 	addiu	sp,sp,24
    4510:	03e00008 	jr	ra
    4514:	00000000 	nop

00004518 <func_80B406F8>:
    4518:	240e0039 	li	t6,57
    451c:	ac8e0260 	sw	t6,608(a0)
    4520:	ac800264 	sw	zero,612(a0)
    4524:	03e00008 	jr	ra
    4528:	a08000c8 	sb	zero,200(a0)

0000452c <func_80B4070C>:
    452c:	27bdffc0 	addiu	sp,sp,-64
    4530:	afb00028 	sw	s0,40(sp)
    4534:	00808025 	move	s0,a0
    4538:	afbf002c 	sw	ra,44(sp)
    453c:	3c040600 	lui	a0,0x600
    4540:	afa50044 	sw	a1,68(sp)
    4544:	0c000000 	jal	0 <func_80B3C1E0>
    4548:	24844828 	addiu	a0,a0,18472
    454c:	44822000 	mtc1	v0,$f4
    4550:	02002025 	move	a0,s0
    4554:	468021a0 	cvt.s.w	$f6,$f4
    4558:	0c000000 	jal	0 <func_80B3C1E0>
    455c:	e7a60030 	swc1	$f6,48(sp)
    4560:	02002025 	move	a0,s0
    4564:	8fa50044 	lw	a1,68(sp)
    4568:	0c000000 	jal	0 <func_80B3C1E0>
    456c:	24060004 	li	a2,4
    4570:	44800000 	mtc1	zero,$f0
    4574:	c7a80030 	lwc1	$f8,48(sp)
    4578:	3c050600 	lui	a1,0x600
    457c:	44070000 	mfc1	a3,$f0
    4580:	24a54828 	addiu	a1,a1,18472
    4584:	2604014c 	addiu	a0,s0,332
    4588:	3c063f80 	lui	a2,0x3f80
    458c:	afa00014 	sw	zero,20(sp)
    4590:	e7a80010 	swc1	$f8,16(sp)
    4594:	0c000000 	jal	0 <func_80B3C1E0>
    4598:	e7a00018 	swc1	$f0,24(sp)
    459c:	240e003a 	li	t6,58
    45a0:	240f0005 	li	t7,5
    45a4:	241800ff 	li	t8,255
    45a8:	ae0e0260 	sw	t6,608(s0)
    45ac:	ae0f0264 	sw	t7,612(s0)
    45b0:	a21800c8 	sb	t8,200(s0)
    45b4:	8fbf002c 	lw	ra,44(sp)
    45b8:	8fb00028 	lw	s0,40(sp)
    45bc:	27bd0040 	addiu	sp,sp,64
    45c0:	03e00008 	jr	ra
    45c4:	00000000 	nop

000045c8 <func_80B407A8>:
    45c8:	27bdffd8 	addiu	sp,sp,-40
    45cc:	afa40028 	sw	a0,40(sp)
    45d0:	afbf0024 	sw	ra,36(sp)
    45d4:	3c040602 	lui	a0,0x602
    45d8:	0c000000 	jal	0 <func_80B3C1E0>
    45dc:	24848b00 	addiu	a0,a0,-29952
    45e0:	44822000 	mtc1	v0,$f4
    45e4:	3c01c100 	lui	at,0xc100
    45e8:	44814000 	mtc1	at,$f8
    45ec:	468021a0 	cvt.s.w	$f6,$f4
    45f0:	8fa40028 	lw	a0,40(sp)
    45f4:	3c050602 	lui	a1,0x602
    45f8:	240e0002 	li	t6,2
    45fc:	afae0014 	sw	t6,20(sp)
    4600:	24a58b00 	addiu	a1,a1,-29952
    4604:	e7a60010 	swc1	$f6,16(sp)
    4608:	3c063f80 	lui	a2,0x3f80
    460c:	24070000 	li	a3,0
    4610:	e7a80018 	swc1	$f8,24(sp)
    4614:	0c000000 	jal	0 <func_80B3C1E0>
    4618:	2484014c 	addiu	a0,a0,332
    461c:	8fa20028 	lw	v0,40(sp)
    4620:	240f003b 	li	t7,59
    4624:	24180001 	li	t8,1
    4628:	ac4f0260 	sw	t7,608(v0)
    462c:	ac580264 	sw	t8,612(v0)
    4630:	8fbf0024 	lw	ra,36(sp)
    4634:	27bd0028 	addiu	sp,sp,40
    4638:	03e00008 	jr	ra
    463c:	00000000 	nop

00004640 <func_80B40820>:
    4640:	27bdffb8 	addiu	sp,sp,-72
    4644:	afb00028 	sw	s0,40(sp)
    4648:	00808025 	move	s0,a0
    464c:	afbf002c 	sw	ra,44(sp)
    4650:	3c040600 	lui	a0,0x600
    4654:	afa5004c 	sw	a1,76(sp)
    4658:	0c000000 	jal	0 <func_80B3C1E0>
    465c:	24844828 	addiu	a0,a0,18472
    4660:	44822000 	mtc1	v0,$f4
    4664:	44800000 	mtc1	zero,$f0
    4668:	2604014c 	addiu	a0,s0,332
    466c:	468021a0 	cvt.s.w	$f6,$f4
    4670:	3c050600 	lui	a1,0x600
    4674:	44070000 	mfc1	a3,$f0
    4678:	24a54828 	addiu	a1,a1,18472
    467c:	afa40034 	sw	a0,52(sp)
    4680:	3c063f80 	lui	a2,0x3f80
    4684:	e7a60010 	swc1	$f6,16(sp)
    4688:	afa00014 	sw	zero,20(sp)
    468c:	0c000000 	jal	0 <func_80B3C1E0>
    4690:	e7a00018 	swc1	$f0,24(sp)
    4694:	02002025 	move	a0,s0
    4698:	8fa5004c 	lw	a1,76(sp)
    469c:	0c000000 	jal	0 <func_80B3C1E0>
    46a0:	24060004 	li	a2,4
    46a4:	02002025 	move	a0,s0
    46a8:	0c000000 	jal	0 <func_80B3C1E0>
    46ac:	8fa5004c 	lw	a1,76(sp)
    46b0:	3c040601 	lui	a0,0x601
    46b4:	0c000000 	jal	0 <func_80B3C1E0>
    46b8:	248469e8 	addiu	a0,a0,27112
    46bc:	44824000 	mtc1	v0,$f8
    46c0:	44800000 	mtc1	zero,$f0
    46c4:	3c050601 	lui	a1,0x601
    46c8:	468042a0 	cvt.s.w	$f10,$f8
    46cc:	240e0002 	li	t6,2
    46d0:	44070000 	mfc1	a3,$f0
    46d4:	afae0014 	sw	t6,20(sp)
    46d8:	24a569e8 	addiu	a1,a1,27112
    46dc:	8fa40034 	lw	a0,52(sp)
    46e0:	e7aa0010 	swc1	$f10,16(sp)
    46e4:	3c063f80 	lui	a2,0x3f80
    46e8:	0c000000 	jal	0 <func_80B3C1E0>
    46ec:	e7a00018 	swc1	$f0,24(sp)
    46f0:	240f003c 	li	t7,60
    46f4:	24180001 	li	t8,1
    46f8:	241900ff 	li	t9,255
    46fc:	ae0f0260 	sw	t7,608(s0)
    4700:	ae180264 	sw	t8,612(s0)
    4704:	a21900c8 	sb	t9,200(s0)
    4708:	8fbf002c 	lw	ra,44(sp)
    470c:	8fb00028 	lw	s0,40(sp)
    4710:	27bd0048 	addiu	sp,sp,72
    4714:	03e00008 	jr	ra
    4718:	00000000 	nop

0000471c <func_80B408FC>:
    471c:	27bdffb8 	addiu	sp,sp,-72
    4720:	afb00028 	sw	s0,40(sp)
    4724:	00808025 	move	s0,a0
    4728:	afbf002c 	sw	ra,44(sp)
    472c:	3c040600 	lui	a0,0x600
    4730:	afa5004c 	sw	a1,76(sp)
    4734:	0c000000 	jal	0 <func_80B3C1E0>
    4738:	24844828 	addiu	a0,a0,18472
    473c:	44822000 	mtc1	v0,$f4
    4740:	44800000 	mtc1	zero,$f0
    4744:	2604014c 	addiu	a0,s0,332
    4748:	468021a0 	cvt.s.w	$f6,$f4
    474c:	3c050600 	lui	a1,0x600
    4750:	44070000 	mfc1	a3,$f0
    4754:	24a54828 	addiu	a1,a1,18472
    4758:	afa40034 	sw	a0,52(sp)
    475c:	3c063f80 	lui	a2,0x3f80
    4760:	e7a60010 	swc1	$f6,16(sp)
    4764:	afa00014 	sw	zero,20(sp)
    4768:	0c000000 	jal	0 <func_80B3C1E0>
    476c:	e7a00018 	swc1	$f0,24(sp)
    4770:	02002025 	move	a0,s0
    4774:	8fa5004c 	lw	a1,76(sp)
    4778:	0c000000 	jal	0 <func_80B3C1E0>
    477c:	24060004 	li	a2,4
    4780:	02002025 	move	a0,s0
    4784:	0c000000 	jal	0 <func_80B3C1E0>
    4788:	8fa5004c 	lw	a1,76(sp)
    478c:	3c040601 	lui	a0,0x601
    4790:	0c000000 	jal	0 <func_80B3C1E0>
    4794:	248449e4 	addiu	a0,a0,18916
    4798:	44824000 	mtc1	v0,$f8
    479c:	44800000 	mtc1	zero,$f0
    47a0:	3c050601 	lui	a1,0x601
    47a4:	468042a0 	cvt.s.w	$f10,$f8
    47a8:	240e0002 	li	t6,2
    47ac:	44070000 	mfc1	a3,$f0
    47b0:	afae0014 	sw	t6,20(sp)
    47b4:	24a549e4 	addiu	a1,a1,18916
    47b8:	8fa40034 	lw	a0,52(sp)
    47bc:	e7aa0010 	swc1	$f10,16(sp)
    47c0:	3c063f80 	lui	a2,0x3f80
    47c4:	0c000000 	jal	0 <func_80B3C1E0>
    47c8:	e7a00018 	swc1	$f0,24(sp)
    47cc:	240f003d 	li	t7,61
    47d0:	24180001 	li	t8,1
    47d4:	241900ff 	li	t9,255
    47d8:	ae0f0260 	sw	t7,608(s0)
    47dc:	ae180264 	sw	t8,612(s0)
    47e0:	a21900c8 	sb	t9,200(s0)
    47e4:	8fbf002c 	lw	ra,44(sp)
    47e8:	8fb00028 	lw	s0,40(sp)
    47ec:	27bd0048 	addiu	sp,sp,72
    47f0:	03e00008 	jr	ra
    47f4:	00000000 	nop

000047f8 <func_80B409D8>:
    47f8:	27bdffc0 	addiu	sp,sp,-64
    47fc:	afb00028 	sw	s0,40(sp)
    4800:	00808025 	move	s0,a0
    4804:	afbf002c 	sw	ra,44(sp)
    4808:	3c040602 	lui	a0,0x602
    480c:	afa50044 	sw	a1,68(sp)
    4810:	0c000000 	jal	0 <func_80B3C1E0>
    4814:	24849f78 	addiu	a0,a0,-24712
    4818:	44822000 	mtc1	v0,$f4
    481c:	02002025 	move	a0,s0
    4820:	468021a0 	cvt.s.w	$f6,$f4
    4824:	0c000000 	jal	0 <func_80B3C1E0>
    4828:	e7a60030 	swc1	$f6,48(sp)
    482c:	02002025 	move	a0,s0
    4830:	8fa50044 	lw	a1,68(sp)
    4834:	0c000000 	jal	0 <func_80B3C1E0>
    4838:	24060004 	li	a2,4
    483c:	44800000 	mtc1	zero,$f0
    4840:	c7a80030 	lwc1	$f8,48(sp)
    4844:	3c050602 	lui	a1,0x602
    4848:	240e0002 	li	t6,2
    484c:	44070000 	mfc1	a3,$f0
    4850:	afae0014 	sw	t6,20(sp)
    4854:	24a59f78 	addiu	a1,a1,-24712
    4858:	2604014c 	addiu	a0,s0,332
    485c:	3c063f80 	lui	a2,0x3f80
    4860:	e7a80010 	swc1	$f8,16(sp)
    4864:	0c000000 	jal	0 <func_80B3C1E0>
    4868:	e7a00018 	swc1	$f0,24(sp)
    486c:	240f003e 	li	t7,62
    4870:	24180001 	li	t8,1
    4874:	241900ff 	li	t9,255
    4878:	ae0f0260 	sw	t7,608(s0)
    487c:	ae180264 	sw	t8,612(s0)
    4880:	a21900c8 	sb	t9,200(s0)
    4884:	8fbf002c 	lw	ra,44(sp)
    4888:	8fb00028 	lw	s0,40(sp)
    488c:	27bd0040 	addiu	sp,sp,64
    4890:	03e00008 	jr	ra
    4894:	00000000 	nop

00004898 <func_80B40A78>:
    4898:	27bdffc0 	addiu	sp,sp,-64
    489c:	afb00028 	sw	s0,40(sp)
    48a0:	00808025 	move	s0,a0
    48a4:	afbf002c 	sw	ra,44(sp)
    48a8:	3c040602 	lui	a0,0x602
    48ac:	afa50044 	sw	a1,68(sp)
    48b0:	0c000000 	jal	0 <func_80B3C1E0>
    48b4:	24849f78 	addiu	a0,a0,-24712
    48b8:	44822000 	mtc1	v0,$f4
    48bc:	02002025 	move	a0,s0
    48c0:	468021a0 	cvt.s.w	$f6,$f4
    48c4:	0c000000 	jal	0 <func_80B3C1E0>
    48c8:	e7a60030 	swc1	$f6,48(sp)
    48cc:	02002025 	move	a0,s0
    48d0:	8fa50044 	lw	a1,68(sp)
    48d4:	0c000000 	jal	0 <func_80B3C1E0>
    48d8:	24060004 	li	a2,4
    48dc:	44800000 	mtc1	zero,$f0
    48e0:	c7a80030 	lwc1	$f8,48(sp)
    48e4:	3c050602 	lui	a1,0x602
    48e8:	240e0002 	li	t6,2
    48ec:	44070000 	mfc1	a3,$f0
    48f0:	afae0014 	sw	t6,20(sp)
    48f4:	24a59f78 	addiu	a1,a1,-24712
    48f8:	2604014c 	addiu	a0,s0,332
    48fc:	3c063f80 	lui	a2,0x3f80
    4900:	e7a80010 	swc1	$f8,16(sp)
    4904:	0c000000 	jal	0 <func_80B3C1E0>
    4908:	e7a00018 	swc1	$f0,24(sp)
    490c:	240f003f 	li	t7,63
    4910:	24180001 	li	t8,1
    4914:	241900ff 	li	t9,255
    4918:	ae0f0260 	sw	t7,608(s0)
    491c:	ae180264 	sw	t8,612(s0)
    4920:	a21900c8 	sb	t9,200(s0)
    4924:	8fbf002c 	lw	ra,44(sp)
    4928:	8fb00028 	lw	s0,40(sp)
    492c:	27bd0040 	addiu	sp,sp,64
    4930:	03e00008 	jr	ra
    4934:	00000000 	nop

00004938 <func_80B40B18>:
    4938:	27bdffc0 	addiu	sp,sp,-64
    493c:	afb00028 	sw	s0,40(sp)
    4940:	00808025 	move	s0,a0
    4944:	afbf002c 	sw	ra,44(sp)
    4948:	3c040602 	lui	a0,0x602
    494c:	afa50044 	sw	a1,68(sp)
    4950:	0c000000 	jal	0 <func_80B3C1E0>
    4954:	24849c30 	addiu	a0,a0,-25552
    4958:	44822000 	mtc1	v0,$f4
    495c:	02002025 	move	a0,s0
    4960:	468021a0 	cvt.s.w	$f6,$f4
    4964:	0c000000 	jal	0 <func_80B3C1E0>
    4968:	e7a60030 	swc1	$f6,48(sp)
    496c:	02002025 	move	a0,s0
    4970:	8fa50044 	lw	a1,68(sp)
    4974:	0c000000 	jal	0 <func_80B3C1E0>
    4978:	24060004 	li	a2,4
    497c:	44800000 	mtc1	zero,$f0
    4980:	c7a80030 	lwc1	$f8,48(sp)
    4984:	3c050602 	lui	a1,0x602
    4988:	44070000 	mfc1	a3,$f0
    498c:	24a59c30 	addiu	a1,a1,-25552
    4990:	2604014c 	addiu	a0,s0,332
    4994:	3c063f80 	lui	a2,0x3f80
    4998:	afa00014 	sw	zero,20(sp)
    499c:	e7a80010 	swc1	$f8,16(sp)
    49a0:	0c000000 	jal	0 <func_80B3C1E0>
    49a4:	e7a00018 	swc1	$f0,24(sp)
    49a8:	240e0040 	li	t6,64
    49ac:	240f0001 	li	t7,1
    49b0:	241800ff 	li	t8,255
    49b4:	ae0e0260 	sw	t6,608(s0)
    49b8:	ae0f0264 	sw	t7,612(s0)
    49bc:	a21800c8 	sb	t8,200(s0)
    49c0:	8fbf002c 	lw	ra,44(sp)
    49c4:	8fb00028 	lw	s0,40(sp)
    49c8:	27bd0040 	addiu	sp,sp,64
    49cc:	03e00008 	jr	ra
    49d0:	00000000 	nop

000049d4 <func_80B40BB4>:
    49d4:	27bdffc0 	addiu	sp,sp,-64
    49d8:	afb00028 	sw	s0,40(sp)
    49dc:	00808025 	move	s0,a0
    49e0:	afbf002c 	sw	ra,44(sp)
    49e4:	3c040600 	lui	a0,0x600
    49e8:	afa50044 	sw	a1,68(sp)
    49ec:	0c000000 	jal	0 <func_80B3C1E0>
    49f0:	24844828 	addiu	a0,a0,18472
    49f4:	44822000 	mtc1	v0,$f4
    49f8:	02002025 	move	a0,s0
    49fc:	468021a0 	cvt.s.w	$f6,$f4
    4a00:	0c000000 	jal	0 <func_80B3C1E0>
    4a04:	e7a60030 	swc1	$f6,48(sp)
    4a08:	02002025 	move	a0,s0
    4a0c:	8fa50044 	lw	a1,68(sp)
    4a10:	0c000000 	jal	0 <func_80B3C1E0>
    4a14:	24060004 	li	a2,4
    4a18:	44800000 	mtc1	zero,$f0
    4a1c:	c7a80030 	lwc1	$f8,48(sp)
    4a20:	3c050600 	lui	a1,0x600
    4a24:	44070000 	mfc1	a3,$f0
    4a28:	24a54828 	addiu	a1,a1,18472
    4a2c:	2604014c 	addiu	a0,s0,332
    4a30:	3c063f80 	lui	a2,0x3f80
    4a34:	afa00014 	sw	zero,20(sp)
    4a38:	e7a80010 	swc1	$f8,16(sp)
    4a3c:	0c000000 	jal	0 <func_80B3C1E0>
    4a40:	e7a00018 	swc1	$f0,24(sp)
    4a44:	240e0041 	li	t6,65
    4a48:	240f0001 	li	t7,1
    4a4c:	241800ff 	li	t8,255
    4a50:	ae0e0260 	sw	t6,608(s0)
    4a54:	ae0f0264 	sw	t7,612(s0)
    4a58:	a21800c8 	sb	t8,200(s0)
    4a5c:	8fbf002c 	lw	ra,44(sp)
    4a60:	8fb00028 	lw	s0,40(sp)
    4a64:	27bd0040 	addiu	sp,sp,64
    4a68:	03e00008 	jr	ra
    4a6c:	00000000 	nop

00004a70 <func_80B40C50>:
    4a70:	27bdffe8 	addiu	sp,sp,-24
    4a74:	afbf0014 	sw	ra,20(sp)
    4a78:	24050041 	li	a1,65
    4a7c:	0c000000 	jal	0 <func_80B3C1E0>
    4a80:	24060042 	li	a2,66
    4a84:	8fbf0014 	lw	ra,20(sp)
    4a88:	27bd0018 	addiu	sp,sp,24
    4a8c:	03e00008 	jr	ra
    4a90:	00000000 	nop

00004a94 <func_80B40C74>:
    4a94:	27bdffe8 	addiu	sp,sp,-24
    4a98:	afbf0014 	sw	ra,20(sp)
    4a9c:	24050042 	li	a1,66
    4aa0:	0c000000 	jal	0 <func_80B3C1E0>
    4aa4:	24060043 	li	a2,67
    4aa8:	8fbf0014 	lw	ra,20(sp)
    4aac:	27bd0018 	addiu	sp,sp,24
    4ab0:	03e00008 	jr	ra
    4ab4:	00000000 	nop

00004ab8 <func_80B40C98>:
    4ab8:	27bdffe8 	addiu	sp,sp,-24
    4abc:	afbf0014 	sw	ra,20(sp)
    4ac0:	24050043 	li	a1,67
    4ac4:	0c000000 	jal	0 <func_80B3C1E0>
    4ac8:	24060044 	li	a2,68
    4acc:	8fbf0014 	lw	ra,20(sp)
    4ad0:	27bd0018 	addiu	sp,sp,24
    4ad4:	03e00008 	jr	ra
    4ad8:	00000000 	nop

00004adc <func_80B40CBC>:
    4adc:	27bdffe8 	addiu	sp,sp,-24
    4ae0:	afbf0014 	sw	ra,20(sp)
    4ae4:	24050044 	li	a1,68
    4ae8:	0c000000 	jal	0 <func_80B3C1E0>
    4aec:	24060045 	li	a2,69
    4af0:	8fbf0014 	lw	ra,20(sp)
    4af4:	27bd0018 	addiu	sp,sp,24
    4af8:	03e00008 	jr	ra
    4afc:	00000000 	nop

00004b00 <func_80B40CE0>:
    4b00:	27bdffe8 	addiu	sp,sp,-24
    4b04:	afbf0014 	sw	ra,20(sp)
    4b08:	24050045 	li	a1,69
    4b0c:	24060046 	li	a2,70
    4b10:	0c000000 	jal	0 <func_80B3C1E0>
    4b14:	24070044 	li	a3,68
    4b18:	8fbf0014 	lw	ra,20(sp)
    4b1c:	27bd0018 	addiu	sp,sp,24
    4b20:	03e00008 	jr	ra
    4b24:	00000000 	nop

00004b28 <func_80B40D08>:
    4b28:	27bdffe8 	addiu	sp,sp,-24
    4b2c:	afbf0014 	sw	ra,20(sp)
    4b30:	24050046 	li	a1,70
    4b34:	0c000000 	jal	0 <func_80B3C1E0>
    4b38:	24060047 	li	a2,71
    4b3c:	8fbf0014 	lw	ra,20(sp)
    4b40:	27bd0018 	addiu	sp,sp,24
    4b44:	03e00008 	jr	ra
    4b48:	00000000 	nop

00004b4c <func_80B40D2C>:
    4b4c:	27bdffe8 	addiu	sp,sp,-24
    4b50:	afbf0014 	sw	ra,20(sp)
    4b54:	24050047 	li	a1,71
    4b58:	0c000000 	jal	0 <func_80B3C1E0>
    4b5c:	24060048 	li	a2,72
    4b60:	8fbf0014 	lw	ra,20(sp)
    4b64:	27bd0018 	addiu	sp,sp,24
    4b68:	03e00008 	jr	ra
    4b6c:	00000000 	nop

00004b70 <func_80B40D50>:
    4b70:	27bdffe8 	addiu	sp,sp,-24
    4b74:	afbf0014 	sw	ra,20(sp)
    4b78:	24050048 	li	a1,72
    4b7c:	0c000000 	jal	0 <func_80B3C1E0>
    4b80:	24060049 	li	a2,73
    4b84:	8fbf0014 	lw	ra,20(sp)
    4b88:	27bd0018 	addiu	sp,sp,24
    4b8c:	03e00008 	jr	ra
    4b90:	00000000 	nop

00004b94 <func_80B40D74>:
    4b94:	27bdffe8 	addiu	sp,sp,-24
    4b98:	afbf0014 	sw	ra,20(sp)
    4b9c:	24050049 	li	a1,73
    4ba0:	0c000000 	jal	0 <func_80B3C1E0>
    4ba4:	2406004a 	li	a2,74
    4ba8:	8fbf0014 	lw	ra,20(sp)
    4bac:	27bd0018 	addiu	sp,sp,24
    4bb0:	03e00008 	jr	ra
    4bb4:	00000000 	nop

00004bb8 <func_80B40D98>:
    4bb8:	3c0f0000 	lui	t7,0x0
    4bbc:	8def0000 	lw	t7,0(t7)
    4bc0:	27bdffd8 	addiu	sp,sp,-40
    4bc4:	afbf0024 	sw	ra,36(sp)
    4bc8:	afa40028 	sw	a0,40(sp)
    4bcc:	85f8145e 	lh	t8,5214(t7)
    4bd0:	3c01430c 	lui	at,0x430c
    4bd4:	44814000 	mtc1	at,$f8
    4bd8:	44982000 	mtc1	t8,$f4
    4bdc:	c4800090 	lwc1	$f0,144(a0)
    4be0:	3c040600 	lui	a0,0x600
    4be4:	468021a0 	cvt.s.w	$f6,$f4
    4be8:	46083280 	add.s	$f10,$f6,$f8
    4bec:	4600503e 	c.le.s	$f10,$f0
    4bf0:	00000000 	nop
    4bf4:	45020017 	bc1fl	4c54 <func_80B40D98+0x9c>
    4bf8:	8fbf0024 	lw	ra,36(sp)
    4bfc:	0c000000 	jal	0 <func_80B3C1E0>
    4c00:	24844828 	addiu	a0,a0,18472
    4c04:	44828000 	mtc1	v0,$f16
    4c08:	3c01c140 	lui	at,0xc140
    4c0c:	44812000 	mtc1	at,$f4
    4c10:	468084a0 	cvt.s.w	$f18,$f16
    4c14:	8fa40028 	lw	a0,40(sp)
    4c18:	3c050600 	lui	a1,0x600
    4c1c:	24a54828 	addiu	a1,a1,18472
    4c20:	3c063f80 	lui	a2,0x3f80
    4c24:	24070000 	li	a3,0
    4c28:	e7b20010 	swc1	$f18,16(sp)
    4c2c:	afa00014 	sw	zero,20(sp)
    4c30:	e7a40018 	swc1	$f4,24(sp)
    4c34:	0c000000 	jal	0 <func_80B3C1E0>
    4c38:	2484014c 	addiu	a0,a0,332
    4c3c:	8fa20028 	lw	v0,40(sp)
    4c40:	44803000 	mtc1	zero,$f6
    4c44:	2419004b 	li	t9,75
    4c48:	ac590260 	sw	t9,608(v0)
    4c4c:	e4460268 	swc1	$f6,616(v0)
    4c50:	8fbf0024 	lw	ra,36(sp)
    4c54:	27bd0028 	addiu	sp,sp,40
    4c58:	03e00008 	jr	ra
    4c5c:	00000000 	nop

00004c60 <func_80B40E40>:
    4c60:	27bdffe8 	addiu	sp,sp,-24
    4c64:	afbf0014 	sw	ra,20(sp)
    4c68:	2405004b 	li	a1,75
    4c6c:	0c000000 	jal	0 <func_80B3C1E0>
    4c70:	2406004c 	li	a2,76
    4c74:	8fbf0014 	lw	ra,20(sp)
    4c78:	27bd0018 	addiu	sp,sp,24
    4c7c:	03e00008 	jr	ra
    4c80:	00000000 	nop

00004c84 <func_80B40E64>:
    4c84:	27bdffe8 	addiu	sp,sp,-24
    4c88:	afbf0014 	sw	ra,20(sp)
    4c8c:	2405004c 	li	a1,76
    4c90:	0c000000 	jal	0 <func_80B3C1E0>
    4c94:	2406004d 	li	a2,77
    4c98:	8fbf0014 	lw	ra,20(sp)
    4c9c:	27bd0018 	addiu	sp,sp,24
    4ca0:	03e00008 	jr	ra
    4ca4:	00000000 	nop

00004ca8 <func_80B40E88>:
    4ca8:	27bdffe8 	addiu	sp,sp,-24
    4cac:	afbf0014 	sw	ra,20(sp)
    4cb0:	2405004d 	li	a1,77
    4cb4:	0c000000 	jal	0 <func_80B3C1E0>
    4cb8:	2406004e 	li	a2,78
    4cbc:	8fbf0014 	lw	ra,20(sp)
    4cc0:	27bd0018 	addiu	sp,sp,24
    4cc4:	03e00008 	jr	ra
    4cc8:	00000000 	nop

00004ccc <func_80B40EAC>:
    4ccc:	27bdffd8 	addiu	sp,sp,-40
    4cd0:	afb00018 	sw	s0,24(sp)
    4cd4:	00808025 	move	s0,a0
    4cd8:	afbf001c 	sw	ra,28(sp)
    4cdc:	00a03025 	move	a2,a1
    4ce0:	00a02025 	move	a0,a1
    4ce4:	24050004 	li	a1,4
    4ce8:	0c000000 	jal	0 <func_80B3C1E0>
    4cec:	afa6002c 	sw	a2,44(sp)
    4cf0:	10400045 	beqz	v0,4e08 <L80B40FCC+0x1c>
    4cf4:	8fa6002c 	lw	a2,44(sp)
    4cf8:	944e0000 	lhu	t6,0(v0)
    4cfc:	afae0020 	sw	t6,32(sp)
    4d00:	8e03026c 	lw	v1,620(s0)
    4d04:	25d8ffff 	addiu	t8,t6,-1
    4d08:	2f010014 	sltiu	at,t8,20
    4d0c:	51c3003f 	beql	t6,v1,4e0c <L80B40FCC+0x20>
    4d10:	00001025 	move	v0,zero
    4d14:	10200035 	beqz	at,4dec <L80B40FCC>
    4d18:	0018c080 	sll	t8,t8,0x2
    4d1c:	3c010000 	lui	at,0x0
    4d20:	00380821 	addu	at,at,t8
    4d24:	8c380000 	lw	t8,0(at)
    4d28:	03000008 	jr	t8
    4d2c:	00000000 	nop

00004d30 <L80B40F10>:
    4d30:	0c000000 	jal	0 <func_80B3C1E0>
    4d34:	02002025 	move	a0,s0
    4d38:	10000030 	b	4dfc <L80B40FCC+0x10>
    4d3c:	8fb90020 	lw	t9,32(sp)

00004d40 <L80B40F20>:
    4d40:	02002025 	move	a0,s0
    4d44:	0c000000 	jal	0 <func_80B3C1E0>
    4d48:	00c02825 	move	a1,a2
    4d4c:	1000002b 	b	4dfc <L80B40FCC+0x10>
    4d50:	8fb90020 	lw	t9,32(sp)

00004d54 <L80B40F34>:
    4d54:	0c000000 	jal	0 <func_80B3C1E0>
    4d58:	02002025 	move	a0,s0
    4d5c:	10000027 	b	4dfc <L80B40FCC+0x10>
    4d60:	8fb90020 	lw	t9,32(sp)

00004d64 <L80B40F44>:
    4d64:	02002025 	move	a0,s0
    4d68:	0c000000 	jal	0 <func_80B3C1E0>
    4d6c:	00c02825 	move	a1,a2
    4d70:	10000022 	b	4dfc <L80B40FCC+0x10>
    4d74:	8fb90020 	lw	t9,32(sp)

00004d78 <L80B40F58>:
    4d78:	02002025 	move	a0,s0
    4d7c:	0c000000 	jal	0 <func_80B3C1E0>
    4d80:	00c02825 	move	a1,a2
    4d84:	1000001d 	b	4dfc <L80B40FCC+0x10>
    4d88:	8fb90020 	lw	t9,32(sp)

00004d8c <L80B40F6C>:
    4d8c:	02002025 	move	a0,s0
    4d90:	0c000000 	jal	0 <func_80B3C1E0>
    4d94:	00c02825 	move	a1,a2
    4d98:	10000018 	b	4dfc <L80B40FCC+0x10>
    4d9c:	8fb90020 	lw	t9,32(sp)

00004da0 <L80B40F80>:
    4da0:	02002025 	move	a0,s0
    4da4:	0c000000 	jal	0 <func_80B3C1E0>
    4da8:	00c02825 	move	a1,a2
    4dac:	10000013 	b	4dfc <L80B40FCC+0x10>
    4db0:	8fb90020 	lw	t9,32(sp)

00004db4 <L80B40F94>:
    4db4:	02002025 	move	a0,s0
    4db8:	0c000000 	jal	0 <func_80B3C1E0>
    4dbc:	00c02825 	move	a1,a2
    4dc0:	1000000e 	b	4dfc <L80B40FCC+0x10>
    4dc4:	8fb90020 	lw	t9,32(sp)

00004dc8 <L80B40FA8>:
    4dc8:	02002025 	move	a0,s0
    4dcc:	0c000000 	jal	0 <func_80B3C1E0>
    4dd0:	00c02825 	move	a1,a2
    4dd4:	10000009 	b	4dfc <L80B40FCC+0x10>
    4dd8:	8fb90020 	lw	t9,32(sp)

00004ddc <L80B40FBC>:
    4ddc:	0c000000 	jal	0 <func_80B3C1E0>
    4de0:	02002025 	move	a0,s0
    4de4:	10000005 	b	4dfc <L80B40FCC+0x10>
    4de8:	8fb90020 	lw	t9,32(sp)

00004dec <L80B40FCC>:
    4dec:	3c040000 	lui	a0,0x0
    4df0:	0c000000 	jal	0 <func_80B3C1E0>
    4df4:	24840000 	addiu	a0,a0,0
    4df8:	8fb90020 	lw	t9,32(sp)
    4dfc:	24020001 	li	v0,1
    4e00:	10000002 	b	4e0c <L80B40FCC+0x20>
    4e04:	ae19026c 	sw	t9,620(s0)
    4e08:	00001025 	move	v0,zero
    4e0c:	8fbf001c 	lw	ra,28(sp)
    4e10:	8fb00018 	lw	s0,24(sp)
    4e14:	27bd0028 	addiu	sp,sp,40
    4e18:	03e00008 	jr	ra
    4e1c:	00000000 	nop

00004e20 <func_80B41000>:
    4e20:	27bdffe8 	addiu	sp,sp,-24
    4e24:	afbf0014 	sw	ra,20(sp)
    4e28:	0c000000 	jal	0 <func_80B3C1E0>
    4e2c:	00000000 	nop
    4e30:	8fbf0014 	lw	ra,20(sp)
    4e34:	27bd0018 	addiu	sp,sp,24
    4e38:	03e00008 	jr	ra
    4e3c:	00000000 	nop

00004e40 <func_80B41020>:
    4e40:	27bdffe8 	addiu	sp,sp,-24
    4e44:	afbf0014 	sw	ra,20(sp)
    4e48:	afa40018 	sw	a0,24(sp)
    4e4c:	afa5001c 	sw	a1,28(sp)
    4e50:	0c000000 	jal	0 <func_80B3C1E0>
    4e54:	24060004 	li	a2,4
    4e58:	0c000000 	jal	0 <func_80B3C1E0>
    4e5c:	8fa40018 	lw	a0,24(sp)
    4e60:	8fa40018 	lw	a0,24(sp)
    4e64:	0c000000 	jal	0 <func_80B3C1E0>
    4e68:	8fa5001c 	lw	a1,28(sp)
    4e6c:	8fa40018 	lw	a0,24(sp)
    4e70:	0c000000 	jal	0 <func_80B3C1E0>
    4e74:	8fa5001c 	lw	a1,28(sp)
    4e78:	8fbf0014 	lw	ra,20(sp)
    4e7c:	27bd0018 	addiu	sp,sp,24
    4e80:	03e00008 	jr	ra
    4e84:	00000000 	nop

00004e88 <func_80B41068>:
    4e88:	27bdffe8 	addiu	sp,sp,-24
    4e8c:	afbf0014 	sw	ra,20(sp)
    4e90:	afa40018 	sw	a0,24(sp)
    4e94:	0c000000 	jal	0 <func_80B3C1E0>
    4e98:	afa5001c 	sw	a1,28(sp)
    4e9c:	8fa40018 	lw	a0,24(sp)
    4ea0:	0c000000 	jal	0 <func_80B3C1E0>
    4ea4:	8fa5001c 	lw	a1,28(sp)
    4ea8:	0c000000 	jal	0 <func_80B3C1E0>
    4eac:	8fa40018 	lw	a0,24(sp)
    4eb0:	8fa40018 	lw	a0,24(sp)
    4eb4:	0c000000 	jal	0 <func_80B3C1E0>
    4eb8:	8fa5001c 	lw	a1,28(sp)
    4ebc:	8fbf0014 	lw	ra,20(sp)
    4ec0:	27bd0018 	addiu	sp,sp,24
    4ec4:	03e00008 	jr	ra
    4ec8:	00000000 	nop

00004ecc <func_80B410AC>:
    4ecc:	27bdffe0 	addiu	sp,sp,-32
    4ed0:	afbf001c 	sw	ra,28(sp)
    4ed4:	afb00018 	sw	s0,24(sp)
    4ed8:	00808025 	move	s0,a0
    4edc:	0c000000 	jal	0 <func_80B3C1E0>
    4ee0:	afa50024 	sw	a1,36(sp)
    4ee4:	0c000000 	jal	0 <func_80B3C1E0>
    4ee8:	02002025 	move	a0,s0
    4eec:	0c000000 	jal	0 <func_80B3C1E0>
    4ef0:	02002025 	move	a0,s0
    4ef4:	02002025 	move	a0,s0
    4ef8:	0c000000 	jal	0 <func_80B3C1E0>
    4efc:	8fa50024 	lw	a1,36(sp)
    4f00:	14400006 	bnez	v0,4f1c <func_80B410AC+0x50>
    4f04:	02002025 	move	a0,s0
    4f08:	0c000000 	jal	0 <func_80B3C1E0>
    4f0c:	8fa50024 	lw	a1,36(sp)
    4f10:	02002025 	move	a0,s0
    4f14:	0c000000 	jal	0 <func_80B3C1E0>
    4f18:	8fa50024 	lw	a1,36(sp)
    4f1c:	8fbf001c 	lw	ra,28(sp)
    4f20:	8fb00018 	lw	s0,24(sp)
    4f24:	27bd0020 	addiu	sp,sp,32
    4f28:	03e00008 	jr	ra
    4f2c:	00000000 	nop

00004f30 <func_80B41110>:
    4f30:	27bdffe0 	addiu	sp,sp,-32
    4f34:	afbf001c 	sw	ra,28(sp)
    4f38:	afb00018 	sw	s0,24(sp)
    4f3c:	00808025 	move	s0,a0
    4f40:	0c000000 	jal	0 <func_80B3C1E0>
    4f44:	afa50024 	sw	a1,36(sp)
    4f48:	0c000000 	jal	0 <func_80B3C1E0>
    4f4c:	02002025 	move	a0,s0
    4f50:	0c000000 	jal	0 <func_80B3C1E0>
    4f54:	02002025 	move	a0,s0
    4f58:	02002025 	move	a0,s0
    4f5c:	0c000000 	jal	0 <func_80B3C1E0>
    4f60:	8fa50024 	lw	a1,36(sp)
    4f64:	14400006 	bnez	v0,4f80 <func_80B41110+0x50>
    4f68:	02002025 	move	a0,s0
    4f6c:	0c000000 	jal	0 <func_80B3C1E0>
    4f70:	8fa50024 	lw	a1,36(sp)
    4f74:	02002025 	move	a0,s0
    4f78:	0c000000 	jal	0 <func_80B3C1E0>
    4f7c:	8fa50024 	lw	a1,36(sp)
    4f80:	8fbf001c 	lw	ra,28(sp)
    4f84:	8fb00018 	lw	s0,24(sp)
    4f88:	27bd0020 	addiu	sp,sp,32
    4f8c:	03e00008 	jr	ra
    4f90:	00000000 	nop

00004f94 <func_80B41174>:
    4f94:	27bdffe8 	addiu	sp,sp,-24
    4f98:	afbf0014 	sw	ra,20(sp)
    4f9c:	afa40018 	sw	a0,24(sp)
    4fa0:	0c000000 	jal	0 <func_80B3C1E0>
    4fa4:	afa5001c 	sw	a1,28(sp)
    4fa8:	0c000000 	jal	0 <func_80B3C1E0>
    4fac:	8fa40018 	lw	a0,24(sp)
    4fb0:	8fa40018 	lw	a0,24(sp)
    4fb4:	0c000000 	jal	0 <func_80B3C1E0>
    4fb8:	8fa5001c 	lw	a1,28(sp)
    4fbc:	8fbf0014 	lw	ra,20(sp)
    4fc0:	27bd0018 	addiu	sp,sp,24
    4fc4:	03e00008 	jr	ra
    4fc8:	00000000 	nop

00004fcc <func_80B411AC>:
    4fcc:	27bdffe0 	addiu	sp,sp,-32
    4fd0:	afbf001c 	sw	ra,28(sp)
    4fd4:	afb00018 	sw	s0,24(sp)
    4fd8:	00808025 	move	s0,a0
    4fdc:	0c000000 	jal	0 <func_80B3C1E0>
    4fe0:	afa50024 	sw	a1,36(sp)
    4fe4:	02002025 	move	a0,s0
    4fe8:	0c000000 	jal	0 <func_80B3C1E0>
    4fec:	8fa50024 	lw	a1,36(sp)
    4ff0:	02002025 	move	a0,s0
    4ff4:	0c000000 	jal	0 <func_80B3C1E0>
    4ff8:	8fa50024 	lw	a1,36(sp)
    4ffc:	0c000000 	jal	0 <func_80B3C1E0>
    5000:	02002025 	move	a0,s0
    5004:	02002025 	move	a0,s0
    5008:	0c000000 	jal	0 <func_80B3C1E0>
    500c:	8fa50024 	lw	a1,36(sp)
    5010:	8fbf001c 	lw	ra,28(sp)
    5014:	8fb00018 	lw	s0,24(sp)
    5018:	27bd0020 	addiu	sp,sp,32
    501c:	03e00008 	jr	ra
    5020:	00000000 	nop

00005024 <func_80B41204>:
    5024:	27bdffe8 	addiu	sp,sp,-24
    5028:	afbf0014 	sw	ra,20(sp)
    502c:	afa40018 	sw	a0,24(sp)
    5030:	0c000000 	jal	0 <func_80B3C1E0>
    5034:	afa5001c 	sw	a1,28(sp)
    5038:	8fa40018 	lw	a0,24(sp)
    503c:	0c000000 	jal	0 <func_80B3C1E0>
    5040:	8fa5001c 	lw	a1,28(sp)
    5044:	0c000000 	jal	0 <func_80B3C1E0>
    5048:	8fa40018 	lw	a0,24(sp)
    504c:	8fa40018 	lw	a0,24(sp)
    5050:	0c000000 	jal	0 <func_80B3C1E0>
    5054:	8fa5001c 	lw	a1,28(sp)
    5058:	8fbf0014 	lw	ra,20(sp)
    505c:	27bd0018 	addiu	sp,sp,24
    5060:	03e00008 	jr	ra
    5064:	00000000 	nop

00005068 <func_80B41248>:
    5068:	27bdffe8 	addiu	sp,sp,-24
    506c:	afbf0014 	sw	ra,20(sp)
    5070:	afa40018 	sw	a0,24(sp)
    5074:	0c000000 	jal	0 <func_80B3C1E0>
    5078:	afa5001c 	sw	a1,28(sp)
    507c:	8fa40018 	lw	a0,24(sp)
    5080:	8fa5001c 	lw	a1,28(sp)
    5084:	0c000000 	jal	0 <func_80B3C1E0>
    5088:	24060004 	li	a2,4
    508c:	0c000000 	jal	0 <func_80B3C1E0>
    5090:	8fa40018 	lw	a0,24(sp)
    5094:	8fbf0014 	lw	ra,20(sp)
    5098:	27bd0018 	addiu	sp,sp,24
    509c:	03e00008 	jr	ra
    50a0:	00000000 	nop

000050a4 <func_80B41284>:
    50a4:	27bdffe8 	addiu	sp,sp,-24
    50a8:	afbf0014 	sw	ra,20(sp)
    50ac:	0c000000 	jal	0 <func_80B3C1E0>
    50b0:	afa40018 	sw	a0,24(sp)
    50b4:	0c000000 	jal	0 <func_80B3C1E0>
    50b8:	8fa40018 	lw	a0,24(sp)
    50bc:	8fbf0014 	lw	ra,20(sp)
    50c0:	27bd0018 	addiu	sp,sp,24
    50c4:	03e00008 	jr	ra
    50c8:	00000000 	nop

000050cc <func_80B412AC>:
    50cc:	27bdffe8 	addiu	sp,sp,-24
    50d0:	afbf0014 	sw	ra,20(sp)
    50d4:	0c000000 	jal	0 <func_80B3C1E0>
    50d8:	afa40018 	sw	a0,24(sp)
    50dc:	0c000000 	jal	0 <func_80B3C1E0>
    50e0:	8fa40018 	lw	a0,24(sp)
    50e4:	8fbf0014 	lw	ra,20(sp)
    50e8:	27bd0018 	addiu	sp,sp,24
    50ec:	03e00008 	jr	ra
    50f0:	00000000 	nop

000050f4 <func_80B412D4>:
    50f4:	27bdffe8 	addiu	sp,sp,-24
    50f8:	afbf0014 	sw	ra,20(sp)
    50fc:	0c000000 	jal	0 <func_80B3C1E0>
    5100:	afa40018 	sw	a0,24(sp)
    5104:	0c000000 	jal	0 <func_80B3C1E0>
    5108:	8fa40018 	lw	a0,24(sp)
    510c:	8fbf0014 	lw	ra,20(sp)
    5110:	27bd0018 	addiu	sp,sp,24
    5114:	03e00008 	jr	ra
    5118:	00000000 	nop

0000511c <func_80B412FC>:
    511c:	27bdffe8 	addiu	sp,sp,-24
    5120:	afbf0014 	sw	ra,20(sp)
    5124:	0c000000 	jal	0 <func_80B3C1E0>
    5128:	afa40018 	sw	a0,24(sp)
    512c:	0c000000 	jal	0 <func_80B3C1E0>
    5130:	8fa40018 	lw	a0,24(sp)
    5134:	8fbf0014 	lw	ra,20(sp)
    5138:	27bd0018 	addiu	sp,sp,24
    513c:	03e00008 	jr	ra
    5140:	00000000 	nop

00005144 <func_80B41324>:
    5144:	27bdffe8 	addiu	sp,sp,-24
    5148:	afbf0014 	sw	ra,20(sp)
    514c:	0c000000 	jal	0 <func_80B3C1E0>
    5150:	afa40018 	sw	a0,24(sp)
    5154:	0c000000 	jal	0 <func_80B3C1E0>
    5158:	8fa40018 	lw	a0,24(sp)
    515c:	8fbf0014 	lw	ra,20(sp)
    5160:	27bd0018 	addiu	sp,sp,24
    5164:	03e00008 	jr	ra
    5168:	00000000 	nop

0000516c <func_80B4134C>:
    516c:	27bdffe8 	addiu	sp,sp,-24
    5170:	afbf0014 	sw	ra,20(sp)
    5174:	0c000000 	jal	0 <func_80B3C1E0>
    5178:	afa40018 	sw	a0,24(sp)
    517c:	0c000000 	jal	0 <func_80B3C1E0>
    5180:	8fa40018 	lw	a0,24(sp)
    5184:	8fbf0014 	lw	ra,20(sp)
    5188:	27bd0018 	addiu	sp,sp,24
    518c:	03e00008 	jr	ra
    5190:	00000000 	nop

00005194 <func_80B41374>:
    5194:	27bdffe8 	addiu	sp,sp,-24
    5198:	afbf0014 	sw	ra,20(sp)
    519c:	0c000000 	jal	0 <func_80B3C1E0>
    51a0:	afa40018 	sw	a0,24(sp)
    51a4:	0c000000 	jal	0 <func_80B3C1E0>
    51a8:	8fa40018 	lw	a0,24(sp)
    51ac:	8fbf0014 	lw	ra,20(sp)
    51b0:	27bd0018 	addiu	sp,sp,24
    51b4:	03e00008 	jr	ra
    51b8:	00000000 	nop

000051bc <func_80B4139C>:
    51bc:	27bdffe8 	addiu	sp,sp,-24
    51c0:	afbf0014 	sw	ra,20(sp)
    51c4:	0c000000 	jal	0 <func_80B3C1E0>
    51c8:	afa40018 	sw	a0,24(sp)
    51cc:	0c000000 	jal	0 <func_80B3C1E0>
    51d0:	8fa40018 	lw	a0,24(sp)
    51d4:	8fbf0014 	lw	ra,20(sp)
    51d8:	27bd0018 	addiu	sp,sp,24
    51dc:	03e00008 	jr	ra
    51e0:	00000000 	nop

000051e4 <func_80B413C4>:
    51e4:	27bdffe0 	addiu	sp,sp,-32
    51e8:	afbf001c 	sw	ra,28(sp)
    51ec:	afb00018 	sw	s0,24(sp)
    51f0:	00808025 	move	s0,a0
    51f4:	0c000000 	jal	0 <func_80B3C1E0>
    51f8:	afa50024 	sw	a1,36(sp)
    51fc:	0c000000 	jal	0 <func_80B3C1E0>
    5200:	02002025 	move	a0,s0
    5204:	02002025 	move	a0,s0
    5208:	0c000000 	jal	0 <func_80B3C1E0>
    520c:	8fa50024 	lw	a1,36(sp)
    5210:	0c000000 	jal	0 <func_80B3C1E0>
    5214:	02002025 	move	a0,s0
    5218:	0c000000 	jal	0 <func_80B3C1E0>
    521c:	02002025 	move	a0,s0
    5220:	8fbf001c 	lw	ra,28(sp)
    5224:	8fb00018 	lw	s0,24(sp)
    5228:	27bd0020 	addiu	sp,sp,32
    522c:	03e00008 	jr	ra
    5230:	00000000 	nop

00005234 <func_80B41414>:
    5234:	27bdffe8 	addiu	sp,sp,-24
    5238:	afbf0014 	sw	ra,20(sp)
    523c:	0c000000 	jal	0 <func_80B3C1E0>
    5240:	afa40018 	sw	a0,24(sp)
    5244:	0c000000 	jal	0 <func_80B3C1E0>
    5248:	8fa40018 	lw	a0,24(sp)
    524c:	8fbf0014 	lw	ra,20(sp)
    5250:	27bd0018 	addiu	sp,sp,24
    5254:	03e00008 	jr	ra
    5258:	00000000 	nop

0000525c <func_80B4143C>:
    525c:	27bdffe8 	addiu	sp,sp,-24
    5260:	afbf0014 	sw	ra,20(sp)
    5264:	0c000000 	jal	0 <func_80B3C1E0>
    5268:	afa40018 	sw	a0,24(sp)
    526c:	0c000000 	jal	0 <func_80B3C1E0>
    5270:	8fa40018 	lw	a0,24(sp)
    5274:	8fbf0014 	lw	ra,20(sp)
    5278:	27bd0018 	addiu	sp,sp,24
    527c:	03e00008 	jr	ra
    5280:	00000000 	nop

00005284 <func_80B41464>:
    5284:	27bdffe8 	addiu	sp,sp,-24
    5288:	afbf0014 	sw	ra,20(sp)
    528c:	0c000000 	jal	0 <func_80B3C1E0>
    5290:	afa40018 	sw	a0,24(sp)
    5294:	0c000000 	jal	0 <func_80B3C1E0>
    5298:	8fa40018 	lw	a0,24(sp)
    529c:	8fbf0014 	lw	ra,20(sp)
    52a0:	27bd0018 	addiu	sp,sp,24
    52a4:	03e00008 	jr	ra
    52a8:	00000000 	nop

000052ac <func_80B4148C>:
    52ac:	27bdffe8 	addiu	sp,sp,-24
    52b0:	afbf0014 	sw	ra,20(sp)
    52b4:	0c000000 	jal	0 <func_80B3C1E0>
    52b8:	afa5001c 	sw	a1,28(sp)
    52bc:	8fbf0014 	lw	ra,20(sp)
    52c0:	27bd0018 	addiu	sp,sp,24
    52c4:	03e00008 	jr	ra
    52c8:	00000000 	nop

000052cc <func_80B414AC>:
    52cc:	27bdff98 	addiu	sp,sp,-104
    52d0:	afbf002c 	sw	ra,44(sp)
    52d4:	afb00028 	sw	s0,40(sp)
    52d8:	afa40068 	sw	a0,104(sp)
    52dc:	afa5006c 	sw	a1,108(sp)
    52e0:	8cb00000 	lw	s0,0(a1)
    52e4:	3c060000 	lui	a2,0x0
    52e8:	24c60000 	addiu	a2,a2,0
    52ec:	27a40048 	addiu	a0,sp,72
    52f0:	24070347 	li	a3,839
    52f4:	0c000000 	jal	0 <func_80B3C1E0>
    52f8:	02002825 	move	a1,s0
    52fc:	0c000000 	jal	0 <func_80B3C1E0>
    5300:	02002025 	move	a0,s0
    5304:	8e0402c0 	lw	a0,704(s0)
    5308:	3c030600 	lui	v1,0x600
    530c:	246358c0 	addiu	v1,v1,22720
    5310:	0003c900 	sll	t9,v1,0x4
    5314:	00194702 	srl	t0,t9,0x1c
    5318:	3c18db06 	lui	t8,0xdb06
    531c:	3c0a0000 	lui	t2,0x0
    5320:	248f0008 	addiu	t7,a0,8
    5324:	ae0f02c0 	sw	t7,704(s0)
    5328:	254a0000 	addiu	t2,t2,0
    532c:	37180020 	ori	t8,t8,0x20
    5330:	00084880 	sll	t1,t0,0x2
    5334:	012a2821 	addu	a1,t1,t2
    5338:	ac980000 	sw	t8,0(a0)
    533c:	8cab0000 	lw	t3,0(a1)
    5340:	3c0100ff 	lui	at,0xff
    5344:	3421ffff 	ori	at,at,0xffff
    5348:	00613024 	and	a2,v1,at
    534c:	3c078000 	lui	a3,0x8000
    5350:	01666021 	addu	t4,t3,a2
    5354:	01876821 	addu	t5,t4,a3
    5358:	ac8d0004 	sw	t5,4(a0)
    535c:	8e0402c0 	lw	a0,704(s0)
    5360:	3c0fdb06 	lui	t7,0xdb06
    5364:	35ef0024 	ori	t7,t7,0x24
    5368:	248e0008 	addiu	t6,a0,8
    536c:	ae0e02c0 	sw	t6,704(s0)
    5370:	ac8f0000 	sw	t7,0(a0)
    5374:	8cb80000 	lw	t8,0(a1)
    5378:	0306c821 	addu	t9,t8,a2
    537c:	03274021 	addu	t0,t9,a3
    5380:	ac880004 	sw	t0,4(a0)
    5384:	8fa20068 	lw	v0,104(sp)
    5388:	8fa4006c 	lw	a0,108(sp)
    538c:	9047014e 	lbu	a3,334(v0)
    5390:	8c46016c 	lw	a2,364(v0)
    5394:	8c450150 	lw	a1,336(v0)
    5398:	afa00018 	sw	zero,24(sp)
    539c:	afa00014 	sw	zero,20(sp)
    53a0:	afa00010 	sw	zero,16(sp)
    53a4:	0c000000 	jal	0 <func_80B3C1E0>
    53a8:	2442014c 	addiu	v0,v0,332
    53ac:	3c060000 	lui	a2,0x0
    53b0:	24c60000 	addiu	a2,a2,0
    53b4:	27a40048 	addiu	a0,sp,72
    53b8:	02002825 	move	a1,s0
    53bc:	0c000000 	jal	0 <func_80B3C1E0>
    53c0:	24070356 	li	a3,854
    53c4:	8fbf002c 	lw	ra,44(sp)
    53c8:	8fb00028 	lw	s0,40(sp)
    53cc:	27bd0068 	addiu	sp,sp,104
    53d0:	03e00008 	jr	ra
    53d4:	00000000 	nop

000053d8 <func_80B415B8>:
    53d8:	3c030000 	lui	v1,0x0
    53dc:	24630000 	addiu	v1,v1,0
    53e0:	8c6e0004 	lw	t6,4(v1)
    53e4:	27bdffe0 	addiu	sp,sp,-32
    53e8:	afb00018 	sw	s0,24(sp)
    53ec:	00808025 	move	s0,a0
    53f0:	afbf001c 	sw	ra,28(sp)
    53f4:	15c00049 	bnez	t6,551c <func_80B415B8+0x144>
    53f8:	00a03825 	move	a3,a1
    53fc:	94660eec 	lhu	a2,3820(v1)
    5400:	3c020200 	lui	v0,0x200
    5404:	244246f0 	addiu	v0,v0,18160
    5408:	30cf0020 	andi	t7,a2,0x20
    540c:	15e00014 	bnez	t7,5460 <func_80B415B8+0x88>
    5410:	34d80020 	ori	t8,a2,0x20
    5414:	0002c900 	sll	t9,v0,0x4
    5418:	00194702 	srl	t0,t9,0x1c
    541c:	00084880 	sll	t1,t0,0x2
    5420:	3c0a0000 	lui	t2,0x0
    5424:	a4780eec 	sh	t8,3820(v1)
    5428:	01495021 	addu	t2,t2,t1
    542c:	3c0100ff 	lui	at,0xff
    5430:	8d4a0000 	lw	t2,0(t2)
    5434:	3421ffff 	ori	at,at,0xffff
    5438:	00415824 	and	t3,v0,at
    543c:	3c018000 	lui	at,0x8000
    5440:	014b6021 	addu	t4,t2,t3
    5444:	01816821 	addu	t5,t4,at
    5448:	acad1d68 	sw	t5,7528(a1)
    544c:	240e0001 	li	t6,1
    5450:	0c000000 	jal	0 <func_80B3C1E0>
    5454:	a06e1414 	sb	t6,5140(v1)
    5458:	10000033 	b	5528 <func_80B415B8+0x150>
    545c:	8fbf001c 	lw	ra,28(sp)
    5460:	94620ede 	lhu	v0,3806(v1)
    5464:	30440020 	andi	a0,v0,0x20
    5468:	14800022 	bnez	a0,54f4 <func_80B415B8+0x11c>
    546c:	00000000 	nop
    5470:	946f0edc 	lhu	t7,3804(v1)
    5474:	34590020 	ori	t9,v0,0x20
    5478:	2405005f 	li	a1,95
    547c:	31f80100 	andi	t8,t7,0x100
    5480:	1300001c 	beqz	t8,54f4 <func_80B415B8+0x11c>
    5484:	00000000 	nop
    5488:	a4790ede 	sh	t9,3806(v1)
    548c:	00e02025 	move	a0,a3
    5490:	0c000000 	jal	0 <func_80B3C1E0>
    5494:	afa70024 	sw	a3,36(sp)
    5498:	3c020200 	lui	v0,0x200
    549c:	24426d20 	addiu	v0,v0,27936
    54a0:	00024100 	sll	t0,v0,0x4
    54a4:	00084f02 	srl	t1,t0,0x1c
    54a8:	00095080 	sll	t2,t1,0x2
    54ac:	3c0b0000 	lui	t3,0x0
    54b0:	016a5821 	addu	t3,t3,t2
    54b4:	3c0100ff 	lui	at,0xff
    54b8:	8d6b0000 	lw	t3,0(t3)
    54bc:	3421ffff 	ori	at,at,0xffff
    54c0:	00416024 	and	t4,v0,at
    54c4:	8fa70024 	lw	a3,36(sp)
    54c8:	3c018000 	lui	at,0x8000
    54cc:	016c6821 	addu	t5,t3,t4
    54d0:	3c030000 	lui	v1,0x0
    54d4:	01a17021 	addu	t6,t5,at
    54d8:	24630000 	addiu	v1,v1,0
    54dc:	240f0001 	li	t7,1
    54e0:	acee1d68 	sw	t6,7528(a3)
    54e4:	a06f1414 	sb	t7,5140(v1)
    54e8:	2418001e 	li	t8,30
    54ec:	1000000d 	b	5524 <func_80B415B8+0x14c>
    54f0:	ae180260 	sw	t8,608(s0)
    54f4:	14800005 	bnez	a0,550c <func_80B415B8+0x134>
    54f8:	00000000 	nop
    54fc:	0c000000 	jal	0 <func_80B3C1E0>
    5500:	02002025 	move	a0,s0
    5504:	10000008 	b	5528 <func_80B415B8+0x150>
    5508:	8fbf001c 	lw	ra,28(sp)
    550c:	0c000000 	jal	0 <func_80B3C1E0>
    5510:	02002025 	move	a0,s0
    5514:	10000004 	b	5528 <func_80B415B8+0x150>
    5518:	8fbf001c 	lw	ra,28(sp)
    551c:	0c000000 	jal	0 <func_80B3C1E0>
    5520:	02002025 	move	a0,s0
    5524:	8fbf001c 	lw	ra,28(sp)
    5528:	8fb00018 	lw	s0,24(sp)
    552c:	27bd0020 	addiu	sp,sp,32
    5530:	03e00008 	jr	ra
    5534:	00000000 	nop

00005538 <func_80B41718>:
    5538:	27bdffe8 	addiu	sp,sp,-24
    553c:	afbf0014 	sw	ra,20(sp)
    5540:	afa5001c 	sw	a1,28(sp)
    5544:	0c000000 	jal	0 <func_80B3C1E0>
    5548:	afa40018 	sw	a0,24(sp)
    554c:	10400004 	beqz	v0,5560 <func_80B41718+0x28>
    5550:	8fa40018 	lw	a0,24(sp)
    5554:	240e0050 	li	t6,80
    5558:	10000013 	b	55a8 <func_80B41718+0x70>
    555c:	ac8e0260 	sw	t6,608(a0)
    5560:	8c8f0004 	lw	t7,4(a0)
    5564:	3c190000 	lui	t9,0x0
    5568:	3c080000 	lui	t0,0x0
    556c:	35f80009 	ori	t8,t7,0x9
    5570:	ac980004 	sw	t8,4(a0)
    5574:	9339000a 	lbu	t9,10(t9)
    5578:	240100ff 	li	at,255
    557c:	24097010 	li	t1,28688
    5580:	01194021 	addu	t0,t0,t9
    5584:	91080074 	lbu	t0,116(t0)
    5588:	240a700f 	li	t2,28687
    558c:	51010004 	beql	t0,at,55a0 <func_80B41718+0x68>
    5590:	a48a010e 	sh	t2,270(a0)
    5594:	10000002 	b	55a0 <func_80B41718+0x68>
    5598:	a489010e 	sh	t1,270(a0)
    559c:	a48a010e 	sh	t2,270(a0)
    55a0:	0c000000 	jal	0 <func_80B3C1E0>
    55a4:	8fa5001c 	lw	a1,28(sp)
    55a8:	8fbf0014 	lw	ra,20(sp)
    55ac:	27bd0018 	addiu	sp,sp,24
    55b0:	03e00008 	jr	ra
    55b4:	00000000 	nop

000055b8 <func_80B41798>:
    55b8:	27bdffe8 	addiu	sp,sp,-24
    55bc:	afbf0014 	sw	ra,20(sp)
    55c0:	00803025 	move	a2,a0
    55c4:	afa60018 	sw	a2,24(sp)
    55c8:	0c000000 	jal	0 <func_80B3C1E0>
    55cc:	24a420d8 	addiu	a0,a1,8408
    55d0:	24010002 	li	at,2
    55d4:	14410007 	bne	v0,at,55f4 <func_80B41798+0x3c>
    55d8:	8fa60018 	lw	a2,24(sp)
    55dc:	8ccf0004 	lw	t7,4(a2)
    55e0:	2401fff6 	li	at,-10
    55e4:	240e004f 	li	t6,79
    55e8:	01e1c024 	and	t8,t7,at
    55ec:	acce0260 	sw	t6,608(a2)
    55f0:	acd80004 	sw	t8,4(a2)
    55f4:	8fbf0014 	lw	ra,20(sp)
    55f8:	27bd0018 	addiu	sp,sp,24
    55fc:	03e00008 	jr	ra
    5600:	00000000 	nop

00005604 <func_80B417E4>:
    5604:	27bdffe0 	addiu	sp,sp,-32
    5608:	afbf001c 	sw	ra,28(sp)
    560c:	afb00018 	sw	s0,24(sp)
    5610:	00808025 	move	s0,a0
    5614:	0c000000 	jal	0 <func_80B3C1E0>
    5618:	afa50024 	sw	a1,36(sp)
    561c:	02002025 	move	a0,s0
    5620:	0c000000 	jal	0 <func_80B3C1E0>
    5624:	8fa50024 	lw	a1,36(sp)
    5628:	02002025 	move	a0,s0
    562c:	0c000000 	jal	0 <func_80B3C1E0>
    5630:	8fa50024 	lw	a1,36(sp)
    5634:	0c000000 	jal	0 <func_80B3C1E0>
    5638:	02002025 	move	a0,s0
    563c:	0c000000 	jal	0 <func_80B3C1E0>
    5640:	02002025 	move	a0,s0
    5644:	02002025 	move	a0,s0
    5648:	0c000000 	jal	0 <func_80B3C1E0>
    564c:	8fa50024 	lw	a1,36(sp)
    5650:	8fbf001c 	lw	ra,28(sp)
    5654:	8fb00018 	lw	s0,24(sp)
    5658:	27bd0020 	addiu	sp,sp,32
    565c:	03e00008 	jr	ra
    5660:	00000000 	nop

00005664 <func_80B41844>:
    5664:	27bdffe0 	addiu	sp,sp,-32
    5668:	afbf001c 	sw	ra,28(sp)
    566c:	afb00018 	sw	s0,24(sp)
    5670:	00808025 	move	s0,a0
    5674:	0c000000 	jal	0 <func_80B3C1E0>
    5678:	afa50024 	sw	a1,36(sp)
    567c:	02002025 	move	a0,s0
    5680:	0c000000 	jal	0 <func_80B3C1E0>
    5684:	8fa50024 	lw	a1,36(sp)
    5688:	02002025 	move	a0,s0
    568c:	0c000000 	jal	0 <func_80B3C1E0>
    5690:	8fa50024 	lw	a1,36(sp)
    5694:	0c000000 	jal	0 <func_80B3C1E0>
    5698:	02002025 	move	a0,s0
    569c:	0c000000 	jal	0 <func_80B3C1E0>
    56a0:	02002025 	move	a0,s0
    56a4:	02002025 	move	a0,s0
    56a8:	0c000000 	jal	0 <func_80B3C1E0>
    56ac:	8fa50024 	lw	a1,36(sp)
    56b0:	8fbf001c 	lw	ra,28(sp)
    56b4:	8fb00018 	lw	s0,24(sp)
    56b8:	27bd0020 	addiu	sp,sp,32
    56bc:	03e00008 	jr	ra
    56c0:	00000000 	nop

000056c4 <EnXc_Update>:
    56c4:	27bdffe8 	addiu	sp,sp,-24
    56c8:	afbf0014 	sw	ra,20(sp)
    56cc:	8c820260 	lw	v0,608(a0)
    56d0:	04400008 	bltz	v0,56f4 <EnXc_Update+0x30>
    56d4:	28410051 	slti	at,v0,81
    56d8:	10200006 	beqz	at,56f4 <EnXc_Update+0x30>
    56dc:	00027080 	sll	t6,v0,0x2
    56e0:	3c030000 	lui	v1,0x0
    56e4:	006e1821 	addu	v1,v1,t6
    56e8:	8c630000 	lw	v1,0(v1)
    56ec:	14600006 	bnez	v1,5708 <EnXc_Update+0x44>
    56f0:	00000000 	nop
    56f4:	3c040000 	lui	a0,0x0
    56f8:	0c000000 	jal	0 <func_80B3C1E0>
    56fc:	24840000 	addiu	a0,a0,0
    5700:	10000004 	b	5714 <EnXc_Update+0x50>
    5704:	8fbf0014 	lw	ra,20(sp)
    5708:	0060f809 	jalr	v1
    570c:	00000000 	nop
    5710:	8fbf0014 	lw	ra,20(sp)
    5714:	27bd0018 	addiu	sp,sp,24
    5718:	03e00008 	jr	ra
    571c:	00000000 	nop

00005720 <EnXc_Init>:
    5720:	27bdffd0 	addiu	sp,sp,-48
    5724:	afb10028 	sw	s1,40(sp)
    5728:	afb00024 	sw	s0,36(sp)
    572c:	00808025 	move	s0,a0
    5730:	00a08825 	move	s1,a1
    5734:	afbf002c 	sw	ra,44(sp)
    5738:	3c060000 	lui	a2,0x0
    573c:	24c60000 	addiu	a2,a2,0
    5740:	24050000 	li	a1,0
    5744:	248400b4 	addiu	a0,a0,180
    5748:	0c000000 	jal	0 <func_80B3C1E0>
    574c:	3c0741f0 	lui	a3,0x41f0
    5750:	3c060601 	lui	a2,0x601
    5754:	3c070600 	lui	a3,0x600
    5758:	260e0190 	addiu	t6,s0,400
    575c:	260f01f6 	addiu	t7,s0,502
    5760:	24180011 	li	t8,17
    5764:	afb80018 	sw	t8,24(sp)
    5768:	afaf0014 	sw	t7,20(sp)
    576c:	afae0010 	sw	t6,16(sp)
    5770:	24e74828 	addiu	a3,a3,18472
    5774:	24c62af0 	addiu	a2,a2,10992
    5778:	02202025 	move	a0,s1
    577c:	0c000000 	jal	0 <func_80B3C1E0>
    5780:	2605014c 	addiu	a1,s0,332
    5784:	02002025 	move	a0,s0
    5788:	0c000000 	jal	0 <func_80B3C1E0>
    578c:	02202825 	move	a1,s1
    5790:	9619001c 	lhu	t9,28(s0)
    5794:	2f21000a 	sltiu	at,t9,10
    5798:	10200038 	beqz	at,587c <L80B41A48+0x14>
    579c:	0019c880 	sll	t9,t9,0x2
    57a0:	3c010000 	lui	at,0x0
    57a4:	00390821 	addu	at,at,t9
    57a8:	8c390000 	lw	t9,0(at)
    57ac:	03200008 	jr	t9
    57b0:	00000000 	nop

000057b4 <L80B41994>:
    57b4:	02002025 	move	a0,s0
    57b8:	0c000000 	jal	0 <func_80B3C1E0>
    57bc:	02202825 	move	a1,s1
    57c0:	10000035 	b	5898 <L80B41A48+0x30>
    57c4:	8fbf002c 	lw	ra,44(sp)

000057c8 <L80B419A8>:
    57c8:	02002025 	move	a0,s0
    57cc:	0c000000 	jal	0 <func_80B3C1E0>
    57d0:	02202825 	move	a1,s1
    57d4:	10000030 	b	5898 <L80B41A48+0x30>
    57d8:	8fbf002c 	lw	ra,44(sp)

000057dc <L80B419BC>:
    57dc:	02002025 	move	a0,s0
    57e0:	0c000000 	jal	0 <func_80B3C1E0>
    57e4:	02202825 	move	a1,s1
    57e8:	1000002b 	b	5898 <L80B41A48+0x30>
    57ec:	8fbf002c 	lw	ra,44(sp)

000057f0 <L80B419D0>:
    57f0:	02002025 	move	a0,s0
    57f4:	0c000000 	jal	0 <func_80B3C1E0>
    57f8:	02202825 	move	a1,s1
    57fc:	10000026 	b	5898 <L80B41A48+0x30>
    5800:	8fbf002c 	lw	ra,44(sp)

00005804 <L80B419E4>:
    5804:	02002025 	move	a0,s0
    5808:	0c000000 	jal	0 <func_80B3C1E0>
    580c:	02202825 	move	a1,s1
    5810:	10000021 	b	5898 <L80B41A48+0x30>
    5814:	8fbf002c 	lw	ra,44(sp)

00005818 <L80B419F8>:
    5818:	02002025 	move	a0,s0
    581c:	0c000000 	jal	0 <func_80B3C1E0>
    5820:	02202825 	move	a1,s1
    5824:	1000001c 	b	5898 <L80B41A48+0x30>
    5828:	8fbf002c 	lw	ra,44(sp)

0000582c <L80B41A0C>:
    582c:	02002025 	move	a0,s0
    5830:	0c000000 	jal	0 <func_80B3C1E0>
    5834:	02202825 	move	a1,s1
    5838:	10000017 	b	5898 <L80B41A48+0x30>
    583c:	8fbf002c 	lw	ra,44(sp)

00005840 <L80B41A20>:
    5840:	02002025 	move	a0,s0
    5844:	0c000000 	jal	0 <func_80B3C1E0>
    5848:	02202825 	move	a1,s1
    584c:	10000012 	b	5898 <L80B41A48+0x30>
    5850:	8fbf002c 	lw	ra,44(sp)

00005854 <L80B41A34>:
    5854:	02002025 	move	a0,s0
    5858:	0c000000 	jal	0 <func_80B3C1E0>
    585c:	02202825 	move	a1,s1
    5860:	1000000d 	b	5898 <L80B41A48+0x30>
    5864:	8fbf002c 	lw	ra,44(sp)

00005868 <L80B41A48>:
    5868:	02002025 	move	a0,s0
    586c:	0c000000 	jal	0 <func_80B3C1E0>
    5870:	02202825 	move	a1,s1
    5874:	10000008 	b	5898 <L80B41A48+0x30>
    5878:	8fbf002c 	lw	ra,44(sp)
    587c:	3c040000 	lui	a0,0x0
    5880:	0c000000 	jal	0 <func_80B3C1E0>
    5884:	24840000 	addiu	a0,a0,0
    5888:	02002025 	move	a0,s0
    588c:	0c000000 	jal	0 <func_80B3C1E0>
    5890:	02202825 	move	a1,s1
    5894:	8fbf002c 	lw	ra,44(sp)
    5898:	8fb00024 	lw	s0,36(sp)
    589c:	8fb10028 	lw	s1,40(sp)
    58a0:	03e00008 	jr	ra
    58a4:	27bd0030 	addiu	sp,sp,48

000058a8 <func_80B41A88>:
    58a8:	afa40000 	sw	a0,0(sp)
    58ac:	8fa40014 	lw	a0,20(sp)
    58b0:	afa60008 	sw	a2,8(sp)
    58b4:	afa7000c 	sw	a3,12(sp)
    58b8:	8c8e030c 	lw	t6,780(a0)
    58bc:	24010009 	li	at,9
    58c0:	11c00018 	beqz	t6,5924 <func_80B41A88+0x7c>
    58c4:	00000000 	nop
    58c8:	14a1000b 	bne	a1,at,58f8 <func_80B41A88+0x50>
    58cc:	8fa20010 	lw	v0,16(sp)
    58d0:	844f0000 	lh	t7,0(v0)
    58d4:	84980324 	lh	t8,804(a0)
    58d8:	84480002 	lh	t0,2(v0)
    58dc:	01f8c821 	addu	t9,t7,t8
    58e0:	a4590000 	sh	t9,0(v0)
    58e4:	84890322 	lh	t1,802(a0)
    58e8:	01095023 	subu	t2,t0,t1
    58ec:	a44a0002 	sh	t2,2(v0)
    58f0:	03e00008 	jr	ra
    58f4:	00001025 	move	v0,zero
    58f8:	24010010 	li	at,16
    58fc:	14a10009 	bne	a1,at,5924 <func_80B41A88+0x7c>
    5900:	8fa20010 	lw	v0,16(sp)
    5904:	844b0000 	lh	t3,0(v0)
    5908:	848c031e 	lh	t4,798(a0)
    590c:	844e0004 	lh	t6,4(v0)
    5910:	016c6821 	addu	t5,t3,t4
    5914:	a44d0000 	sh	t5,0(v0)
    5918:	848f031c 	lh	t7,796(a0)
    591c:	01cfc021 	addu	t8,t6,t7
    5920:	a4580004 	sh	t8,4(v0)
    5924:	03e00008 	jr	ra
    5928:	00001025 	move	v0,zero

0000592c <func_80B41B0C>:
    592c:	27bdffc8 	addiu	sp,sp,-56
    5930:	24010010 	li	at,16
    5934:	afbf0014 	sw	ra,20(sp)
    5938:	afa40038 	sw	a0,56(sp)
    593c:	afa60040 	sw	a2,64(sp)
    5940:	14a10019 	bne	a1,at,59a8 <func_80B41B0C+0x7c>
    5944:	afa70044 	sw	a3,68(sp)
    5948:	3c0e0000 	lui	t6,0x0
    594c:	25ce0000 	addiu	t6,t6,0
    5950:	8dd80000 	lw	t8,0(t6)
    5954:	27a40028 	addiu	a0,sp,40
    5958:	27a5001c 	addiu	a1,sp,28
    595c:	ac980000 	sw	t8,0(a0)
    5960:	8dcf0004 	lw	t7,4(t6)
    5964:	ac8f0004 	sw	t7,4(a0)
    5968:	8dd80008 	lw	t8,8(t6)
    596c:	0c000000 	jal	0 <func_80B3C1E0>
    5970:	ac980008 	sw	t8,8(a0)
    5974:	8fa20048 	lw	v0,72(sp)
    5978:	c7a4001c 	lwc1	$f4,28(sp)
    597c:	84590030 	lh	t9,48(v0)
    5980:	e4440038 	swc1	$f4,56(v0)
    5984:	c7a60020 	lwc1	$f6,32(sp)
    5988:	84480032 	lh	t0,50(v0)
    598c:	84490034 	lh	t1,52(v0)
    5990:	e446003c 	swc1	$f6,60(v0)
    5994:	c7a80024 	lwc1	$f8,36(sp)
    5998:	a4590044 	sh	t9,68(v0)
    599c:	a4480046 	sh	t0,70(v0)
    59a0:	a4490048 	sh	t1,72(v0)
    59a4:	e4480040 	swc1	$f8,64(v0)
    59a8:	8fbf0014 	lw	ra,20(sp)
    59ac:	27bd0038 	addiu	sp,sp,56
    59b0:	03e00008 	jr	ra
    59b4:	00000000 	nop

000059b8 <func_80B41B98>:
    59b8:	afa40000 	sw	a0,0(sp)
    59bc:	03e00008 	jr	ra
    59c0:	afa50004 	sw	a1,4(sp)

000059c4 <func_80B41BA4>:
    59c4:	27bdff88 	addiu	sp,sp,-120
    59c8:	afbf002c 	sw	ra,44(sp)
    59cc:	afb00028 	sw	s0,40(sp)
    59d0:	afa40078 	sw	a0,120(sp)
    59d4:	afa5007c 	sw	a1,124(sp)
    59d8:	8482025c 	lh	v0,604(a0)
    59dc:	3c180000 	lui	t8,0x0
    59e0:	3c060000 	lui	a2,0x0
    59e4:	00027880 	sll	t7,v0,0x2
    59e8:	030fc021 	addu	t8,t8,t7
    59ec:	8f180000 	lw	t8,0(t8)
    59f0:	24c60000 	addiu	a2,a2,0
    59f4:	27a40048 	addiu	a0,sp,72
    59f8:	afb80068 	sw	t8,104(sp)
    59fc:	8cb00000 	lw	s0,0(a1)
    5a00:	2407048c 	li	a3,1164
    5a04:	0c000000 	jal	0 <func_80B3C1E0>
    5a08:	02002825 	move	a1,s0
    5a0c:	8fa40078 	lw	a0,120(sp)
    5a10:	8fa5007c 	lw	a1,124(sp)
    5a14:	0c000000 	jal	0 <func_80B3C1E0>
    5a18:	00003025 	move	a2,zero
    5a1c:	0c000000 	jal	0 <func_80B3C1E0>
    5a20:	02002025 	move	a0,s0
    5a24:	8fa70068 	lw	a3,104(sp)
    5a28:	8e0302c0 	lw	v1,704(s0)
    5a2c:	3c09db06 	lui	t1,0xdb06
    5a30:	00075100 	sll	t2,a3,0x4
    5a34:	000a5f02 	srl	t3,t2,0x1c
    5a38:	3c0d0000 	lui	t5,0x0
    5a3c:	24680008 	addiu	t0,v1,8
    5a40:	ae0802c0 	sw	t0,704(s0)
    5a44:	25ad0000 	addiu	t5,t5,0
    5a48:	000b6080 	sll	t4,t3,0x2
    5a4c:	35290020 	ori	t1,t1,0x20
    5a50:	018d2021 	addu	a0,t4,t5
    5a54:	ac690000 	sw	t1,0(v1)
    5a58:	8c8e0000 	lw	t6,0(a0)
    5a5c:	3c0100ff 	lui	at,0xff
    5a60:	3421ffff 	ori	at,at,0xffff
    5a64:	00e12824 	and	a1,a3,at
    5a68:	3c068000 	lui	a2,0x8000
    5a6c:	01c57821 	addu	t7,t6,a1
    5a70:	01e6c021 	addu	t8,t7,a2
    5a74:	ac780004 	sw	t8,4(v1)
    5a78:	8e0302c0 	lw	v1,704(s0)
    5a7c:	3c08db06 	lui	t0,0xdb06
    5a80:	35080024 	ori	t0,t0,0x24
    5a84:	24790008 	addiu	t9,v1,8
    5a88:	ae1902c0 	sw	t9,704(s0)
    5a8c:	ac680000 	sw	t0,0(v1)
    5a90:	8c890000 	lw	t1,0(a0)
    5a94:	3c0d0000 	lui	t5,0x0
    5a98:	3c0c0000 	lui	t4,0x0
    5a9c:	01255021 	addu	t2,t1,a1
    5aa0:	01465821 	addu	t3,t2,a2
    5aa4:	ac6b0004 	sw	t3,4(v1)
    5aa8:	8fa30078 	lw	v1,120(sp)
    5aac:	258c0000 	addiu	t4,t4,0
    5ab0:	25ad0000 	addiu	t5,t5,0
    5ab4:	2462014c 	addiu	v0,v1,332
    5ab8:	8c450004 	lw	a1,4(v0)
    5abc:	8c460020 	lw	a2,32(v0)
    5ac0:	90470002 	lbu	a3,2(v0)
    5ac4:	afad0014 	sw	t5,20(sp)
    5ac8:	afac0010 	sw	t4,16(sp)
    5acc:	8fa4007c 	lw	a0,124(sp)
    5ad0:	0c000000 	jal	0 <func_80B3C1E0>
    5ad4:	afa30018 	sw	v1,24(sp)
    5ad8:	3c060000 	lui	a2,0x0
    5adc:	24c60000 	addiu	a2,a2,0
    5ae0:	27a40048 	addiu	a0,sp,72
    5ae4:	02002825 	move	a1,s0
    5ae8:	0c000000 	jal	0 <func_80B3C1E0>
    5aec:	240704b7 	li	a3,1207
    5af0:	8fbf002c 	lw	ra,44(sp)
    5af4:	8fb00028 	lw	s0,40(sp)
    5af8:	27bd0078 	addiu	sp,sp,120
    5afc:	03e00008 	jr	ra
    5b00:	00000000 	nop

00005b04 <EnXc_Draw>:
    5b04:	27bdffe8 	addiu	sp,sp,-24
    5b08:	afbf0014 	sw	ra,20(sp)
    5b0c:	8c820264 	lw	v0,612(a0)
    5b10:	04400008 	bltz	v0,5b34 <EnXc_Draw+0x30>
    5b14:	28410006 	slti	at,v0,6
    5b18:	10200006 	beqz	at,5b34 <EnXc_Draw+0x30>
    5b1c:	00027080 	sll	t6,v0,0x2
    5b20:	3c030000 	lui	v1,0x0
    5b24:	006e1821 	addu	v1,v1,t6
    5b28:	8c630000 	lw	v1,0(v1)
    5b2c:	14600006 	bnez	v1,5b48 <EnXc_Draw+0x44>
    5b30:	00000000 	nop
    5b34:	3c040000 	lui	a0,0x0
    5b38:	0c000000 	jal	0 <func_80B3C1E0>
    5b3c:	24840000 	addiu	a0,a0,0
    5b40:	10000004 	b	5b54 <EnXc_Draw+0x50>
    5b44:	8fbf0014 	lw	ra,20(sp)
    5b48:	0060f809 	jalr	v1
    5b4c:	00000000 	nop
    5b50:	8fbf0014 	lw	ra,20(sp)
    5b54:	27bd0018 	addiu	sp,sp,24
    5b58:	03e00008 	jr	ra
    5b5c:	00000000 	nop
