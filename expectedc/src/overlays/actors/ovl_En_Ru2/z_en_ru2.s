
build/src/overlays/actors/ovl_En_Ru2/z_en_ru2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AF2550>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	00803025 	move	a2,a0
       8:	afa50024 	sw	a1,36(sp)
       c:	00a02025 	move	a0,a1
      10:	afbf0014 	sw	ra,20(sp)
      14:	24c502c8 	addiu	a1,a2,712
      18:	afa50018 	sw	a1,24(sp)
      1c:	0c000000 	jal	0 <func_80AF2550>
      20:	afa60020 	sw	a2,32(sp)
      24:	3c070000 	lui	a3,0x0
      28:	8fa50018 	lw	a1,24(sp)
      2c:	8fa60020 	lw	a2,32(sp)
      30:	24e70000 	addiu	a3,a3,0
      34:	0c000000 	jal	0 <func_80AF2550>
      38:	8fa40024 	lw	a0,36(sp)
      3c:	8fbf0014 	lw	ra,20(sp)
      40:	27bd0020 	addiu	sp,sp,32
      44:	03e00008 	jr	ra
      48:	00000000 	nop

0000004c <func_80AF259C>:
      4c:	27bdffd0 	addiu	sp,sp,-48
      50:	afbf0014 	sw	ra,20(sp)
      54:	afa50034 	sw	a1,52(sp)
      58:	248602c8 	addiu	a2,a0,712
      5c:	00c02825 	move	a1,a2
      60:	0c000000 	jal	0 <func_80AF2550>
      64:	afa60018 	sw	a2,24(sp)
      68:	8fa40034 	lw	a0,52(sp)
      6c:	3c010001 	lui	at,0x1
      70:	34211e60 	ori	at,at,0x1e60
      74:	8fa60018 	lw	a2,24(sp)
      78:	0c000000 	jal	0 <func_80AF2550>
      7c:	00812821 	addu	a1,a0,at
      80:	8fbf0014 	lw	ra,20(sp)
      84:	27bd0030 	addiu	sp,sp,48
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <EnRu2_Destroy>:
      90:	27bdffe8 	addiu	sp,sp,-24
      94:	00803025 	move	a2,a0
      98:	afbf0014 	sw	ra,20(sp)
      9c:	00a02025 	move	a0,a1
      a0:	0c000000 	jal	0 <func_80AF2550>
      a4:	24c502c8 	addiu	a1,a2,712
      a8:	8fbf0014 	lw	ra,20(sp)
      ac:	27bd0018 	addiu	sp,sp,24
      b0:	03e00008 	jr	ra
      b4:	00000000 	nop

000000b8 <func_80AF2608>:
      b8:	27bdffc8 	addiu	sp,sp,-56
      bc:	afbf0014 	sw	ra,20(sp)
      c0:	848e02a6 	lh	t6,678(a0)
      c4:	00803025 	move	a2,a0
      c8:	24c302a6 	addiu	v1,a2,678
      cc:	15c00003 	bnez	t6,dc <func_80AF2608+0x24>
      d0:	00001025 	move	v0,zero
      d4:	10000005 	b	ec <func_80AF2608+0x34>
      d8:	248302a6 	addiu	v1,a0,678
      dc:	846f0000 	lh	t7,0(v1)
      e0:	25f8ffff 	addiu	t8,t7,-1
      e4:	a4780000 	sh	t8,0(v1)
      e8:	84620000 	lh	v0,0(v1)
      ec:	14400008 	bnez	v0,110 <func_80AF2608+0x58>
      f0:	2404003c 	li	a0,60
      f4:	2405003c 	li	a1,60
      f8:	afa3001c 	sw	v1,28(sp)
      fc:	0c000000 	jal	0 <func_80AF2550>
     100:	afa60038 	sw	a2,56(sp)
     104:	8fa3001c 	lw	v1,28(sp)
     108:	8fa60038 	lw	a2,56(sp)
     10c:	a4620000 	sh	v0,0(v1)
     110:	84790000 	lh	t9,0(v1)
     114:	24c202a4 	addiu	v0,a2,676
     118:	a4590000 	sh	t9,0(v0)
     11c:	84480000 	lh	t0,0(v0)
     120:	29010003 	slti	at,t0,3
     124:	54200003 	bnezl	at,134 <func_80AF2608+0x7c>
     128:	8fbf0014 	lw	ra,20(sp)
     12c:	a4400000 	sh	zero,0(v0)
     130:	8fbf0014 	lw	ra,20(sp)
     134:	27bd0038 	addiu	sp,sp,56
     138:	03e00008 	jr	ra
     13c:	00000000 	nop

00000140 <func_80AF2690>:
     140:	8483001c 	lh	v1,28(a0)
     144:	00031a03 	sra	v1,v1,0x8
     148:	03e00008 	jr	ra
     14c:	306200ff 	andi	v0,v1,0xff

00000150 <func_80AF26A0>:
     150:	8483001c 	lh	v1,28(a0)
     154:	03e00008 	jr	ra
     158:	306200ff 	andi	v0,v1,0xff

0000015c <func_80AF26AC>:
     15c:	44802000 	mtc1	zero,$f4
     160:	240e0007 	li	t6,7
     164:	ac8e02a8 	sw	t6,680(a0)
     168:	ac8002ac 	sw	zero,684(a0)
     16c:	ac8002b4 	sw	zero,692(a0)
     170:	ac8002b8 	sw	zero,696(a0)
     174:	a08000c8 	sb	zero,200(a0)
     178:	03e00008 	jr	ra
     17c:	e48402b0 	swc1	$f4,688(a0)

00000180 <func_80AF26D0>:
     180:	27bdffe8 	addiu	sp,sp,-24
     184:	afbf0014 	sw	ra,20(sp)
     188:	90ae1d6c 	lbu	t6,7532(a1)
     18c:	3c0f0000 	lui	t7,0x0
     190:	3c190000 	lui	t9,0x0
     194:	15c0000d 	bnez	t6,1cc <func_80AF26D0+0x4c>
     198:	00000000 	nop
     19c:	8def0038 	lw	t7,56(t7)
     1a0:	51e00011 	beqzl	t7,1e8 <func_80AF26D0+0x68>
     1a4:	8fbf0014 	lw	ra,20(sp)
     1a8:	8498001c 	lh	t8,28(a0)
     1ac:	24010002 	li	at,2
     1b0:	17010003 	bne	t8,at,1c0 <func_80AF26D0+0x40>
     1b4:	00000000 	nop
     1b8:	0c000000 	jal	0 <func_80AF2550>
     1bc:	00000000 	nop
     1c0:	3c010000 	lui	at,0x0
     1c4:	10000007 	b	1e4 <func_80AF26D0+0x64>
     1c8:	ac200038 	sw	zero,56(at)
     1cc:	8f390038 	lw	t9,56(t9)
     1d0:	24080001 	li	t0,1
     1d4:	3c010000 	lui	at,0x0
     1d8:	57200003 	bnezl	t9,1e8 <func_80AF26D0+0x68>
     1dc:	8fbf0014 	lw	ra,20(sp)
     1e0:	ac280038 	sw	t0,56(at)
     1e4:	8fbf0014 	lw	ra,20(sp)
     1e8:	27bd0018 	addiu	sp,sp,24
     1ec:	03e00008 	jr	ra
     1f0:	00000000 	nop

000001f4 <func_80AF2744>:
     1f4:	27bdffe0 	addiu	sp,sp,-32
     1f8:	3c0141f0 	lui	at,0x41f0
     1fc:	44810000 	mtc1	at,$f0
     200:	afa50024 	sw	a1,36(sp)
     204:	00802825 	move	a1,a0
     208:	afbf001c 	sw	ra,28(sp)
     20c:	afa40020 	sw	a0,32(sp)
     210:	240e0004 	li	t6,4
     214:	44070000 	mfc1	a3,$f0
     218:	afae0014 	sw	t6,20(sp)
     21c:	8fa40024 	lw	a0,36(sp)
     220:	3c064296 	lui	a2,0x4296
     224:	0c000000 	jal	0 <func_80AF2550>
     228:	e7a00010 	swc1	$f0,16(sp)
     22c:	8fbf001c 	lw	ra,28(sp)
     230:	27bd0020 	addiu	sp,sp,32
     234:	03e00008 	jr	ra
     238:	00000000 	nop

0000023c <EnRu2_FrameUpdateMatrix>:
     23c:	27bdffe8 	addiu	sp,sp,-24
     240:	afbf0014 	sw	ra,20(sp)
     244:	0c000000 	jal	0 <func_80AF2550>
     248:	2484014c 	addiu	a0,a0,332
     24c:	8fbf0014 	lw	ra,20(sp)
     250:	27bd0018 	addiu	sp,sp,24
     254:	03e00008 	jr	ra
     258:	00000000 	nop

0000025c <func_80AF27AC>:
     25c:	908e1d6c 	lbu	t6,7532(a0)
     260:	00057880 	sll	t7,a1,0x2
     264:	008fc021 	addu	t8,a0,t7
     268:	11c00003 	beqz	t6,278 <func_80AF27AC+0x1c>
     26c:	00001025 	move	v0,zero
     270:	03e00008 	jr	ra
     274:	8f021d8c 	lw	v0,7564(t8)
     278:	03e00008 	jr	ra
     27c:	00000000 	nop

00000280 <func_80AF27D0>:
     280:	27bdffe8 	addiu	sp,sp,-24
     284:	afa40018 	sw	a0,24(sp)
     288:	afbf0014 	sw	ra,20(sp)
     28c:	afa5001c 	sw	a1,28(sp)
     290:	00a02025 	move	a0,a1
     294:	afa60020 	sw	a2,32(sp)
     298:	0c000000 	jal	0 <func_80AF2550>
     29c:	00e02825 	move	a1,a3
     2a0:	10400007 	beqz	v0,2c0 <func_80AF27D0+0x40>
     2a4:	8fbf0014 	lw	ra,20(sp)
     2a8:	97ae0022 	lhu	t6,34(sp)
     2ac:	944f0000 	lhu	t7,0(v0)
     2b0:	55cf0004 	bnel	t6,t7,2c4 <func_80AF27D0+0x44>
     2b4:	00001025 	move	v0,zero
     2b8:	10000002 	b	2c4 <func_80AF27D0+0x44>
     2bc:	24020001 	li	v0,1
     2c0:	00001025 	move	v0,zero
     2c4:	03e00008 	jr	ra
     2c8:	27bd0018 	addiu	sp,sp,24

000002cc <func_80AF281C>:
     2cc:	27bdffe8 	addiu	sp,sp,-24
     2d0:	afa40018 	sw	a0,24(sp)
     2d4:	afbf0014 	sw	ra,20(sp)
     2d8:	afa5001c 	sw	a1,28(sp)
     2dc:	00a02025 	move	a0,a1
     2e0:	afa60020 	sw	a2,32(sp)
     2e4:	0c000000 	jal	0 <func_80AF2550>
     2e8:	00e02825 	move	a1,a3
     2ec:	10400007 	beqz	v0,30c <func_80AF281C+0x40>
     2f0:	8fbf0014 	lw	ra,20(sp)
     2f4:	97ae0022 	lhu	t6,34(sp)
     2f8:	944f0000 	lhu	t7,0(v0)
     2fc:	51cf0004 	beql	t6,t7,310 <func_80AF281C+0x44>
     300:	00001025 	move	v0,zero
     304:	10000002 	b	310 <func_80AF281C+0x44>
     308:	24020001 	li	v0,1
     30c:	00001025 	move	v0,zero
     310:	03e00008 	jr	ra
     314:	27bd0018 	addiu	sp,sp,24

00000318 <func_80AF2868>:
     318:	27bdffe8 	addiu	sp,sp,-24
     31c:	00803825 	move	a3,a0
     320:	afbf0014 	sw	ra,20(sp)
     324:	afa5001c 	sw	a1,28(sp)
     328:	00a02025 	move	a0,a1
     32c:	00c02825 	move	a1,a2
     330:	0c000000 	jal	0 <func_80AF2550>
     334:	afa70018 	sw	a3,24(sp)
     338:	10400013 	beqz	v0,388 <func_80AF2868+0x70>
     33c:	8fa70018 	lw	a3,24(sp)
     340:	8c4e000c 	lw	t6,12(v0)
     344:	448e2000 	mtc1	t6,$f4
     348:	00000000 	nop
     34c:	468021a0 	cvt.s.w	$f6,$f4
     350:	e4e60024 	swc1	$f6,36(a3)
     354:	8c4f0010 	lw	t7,16(v0)
     358:	448f4000 	mtc1	t7,$f8
     35c:	00000000 	nop
     360:	468042a0 	cvt.s.w	$f10,$f8
     364:	e4ea0028 	swc1	$f10,40(a3)
     368:	8c580014 	lw	t8,20(v0)
     36c:	44988000 	mtc1	t8,$f16
     370:	00000000 	nop
     374:	468084a0 	cvt.s.w	$f18,$f16
     378:	e4f2002c 	swc1	$f18,44(a3)
     37c:	84430008 	lh	v1,8(v0)
     380:	a4e300b6 	sh	v1,182(a3)
     384:	a4e30032 	sh	v1,50(a3)
     388:	8fbf0014 	lw	ra,20(sp)
     38c:	27bd0018 	addiu	sp,sp,24
     390:	03e00008 	jr	ra
     394:	00000000 	nop

00000398 <func_80AF28E8>:
     398:	27bdffd8 	addiu	sp,sp,-40
     39c:	afbf0024 	sw	ra,36(sp)
     3a0:	afa40028 	sw	a0,40(sp)
     3a4:	afa5002c 	sw	a1,44(sp)
     3a8:	afa60030 	sw	a2,48(sp)
     3ac:	afa70034 	sw	a3,52(sp)
     3b0:	0c000000 	jal	0 <func_80AF2550>
     3b4:	00a02025 	move	a0,a1
     3b8:	8fae0038 	lw	t6,56(sp)
     3bc:	8fa40028 	lw	a0,40(sp)
     3c0:	8fa5002c 	lw	a1,44(sp)
     3c4:	15c00007 	bnez	t6,3e4 <func_80AF28E8+0x4c>
     3c8:	2484014c 	addiu	a0,a0,332
     3cc:	44822000 	mtc1	v0,$f4
     3d0:	3c013f80 	lui	at,0x3f80
     3d4:	44800000 	mtc1	zero,$f0
     3d8:	44816000 	mtc1	at,$f12
     3dc:	10000006 	b	3f8 <func_80AF28E8+0x60>
     3e0:	468020a0 	cvt.s.w	$f2,$f4
     3e4:	44823000 	mtc1	v0,$f6
     3e8:	3c01bf80 	lui	at,0xbf80
     3ec:	44801000 	mtc1	zero,$f2
     3f0:	44816000 	mtc1	at,$f12
     3f4:	46803020 	cvt.s.w	$f0,$f6
     3f8:	93af0033 	lbu	t7,51(sp)
     3fc:	c7a80034 	lwc1	$f8,52(sp)
     400:	44066000 	mfc1	a2,$f12
     404:	44070000 	mfc1	a3,$f0
     408:	e7a20010 	swc1	$f2,16(sp)
     40c:	afaf0014 	sw	t7,20(sp)
     410:	0c000000 	jal	0 <func_80AF2550>
     414:	e7a80018 	swc1	$f8,24(sp)
     418:	8fbf0024 	lw	ra,36(sp)
     41c:	27bd0028 	addiu	sp,sp,40
     420:	03e00008 	jr	ra
     424:	00000000 	nop

00000428 <func_80AF2978>:
     428:	afa50004 	sw	a1,4(sp)
     42c:	3c010000 	lui	at,0x0
     430:	c426013c 	lwc1	$f6,316(at)
     434:	c48400bc 	lwc1	$f4,188(a0)
     438:	46062200 	add.s	$f8,$f4,$f6
     43c:	03e00008 	jr	ra
     440:	e48800bc 	swc1	$f8,188(a0)

00000444 <func_80AF2994>:
     444:	27bdffe0 	addiu	sp,sp,-32
     448:	afa50024 	sw	a1,36(sp)
     44c:	afbf001c 	sw	ra,28(sp)
     450:	3c050000 	lui	a1,0x0
     454:	afa40020 	sw	a0,32(sp)
     458:	24a50000 	addiu	a1,a1,0
     45c:	afa00010 	sw	zero,16(sp)
     460:	00003025 	move	a2,zero
     464:	0c000000 	jal	0 <func_80AF2550>
     468:	24070000 	li	a3,0
     46c:	3c010000 	lui	at,0x0
     470:	c4240140 	lwc1	$f4,320(at)
     474:	8fae0020 	lw	t6,32(sp)
     478:	e5c400bc 	swc1	$f4,188(t6)
     47c:	8fbf001c 	lw	ra,28(sp)
     480:	27bd0020 	addiu	sp,sp,32
     484:	03e00008 	jr	ra
     488:	00000000 	nop

0000048c <func_80AF29DC>:
     48c:	27bdffc8 	addiu	sp,sp,-56
     490:	afbf0034 	sw	ra,52(sp)
     494:	afa40038 	sw	a0,56(sp)
     498:	c4800024 	lwc1	$f0,36(a0)
     49c:	c4820028 	lwc1	$f2,40(a0)
     4a0:	c48c002c 	lwc1	$f12,44(a0)
     4a4:	00a03025 	move	a2,a1
     4a8:	00802825 	move	a1,a0
     4ac:	240e0002 	li	t6,2
     4b0:	afae0028 	sw	t6,40(sp)
     4b4:	24c41c24 	addiu	a0,a2,7204
     4b8:	afa00024 	sw	zero,36(sp)
     4bc:	afa00020 	sw	zero,32(sp)
     4c0:	afa0001c 	sw	zero,28(sp)
     4c4:	2407005d 	li	a3,93
     4c8:	e7a00010 	swc1	$f0,16(sp)
     4cc:	e7a20014 	swc1	$f2,20(sp)
     4d0:	0c000000 	jal	0 <func_80AF2550>
     4d4:	e7ac0018 	swc1	$f12,24(sp)
     4d8:	8fbf0034 	lw	ra,52(sp)
     4dc:	27bd0038 	addiu	sp,sp,56
     4e0:	03e00008 	jr	ra
     4e4:	00000000 	nop

000004e8 <func_80AF2A38>:
     4e8:	27bdffc8 	addiu	sp,sp,-56
     4ec:	afbf0034 	sw	ra,52(sp)
     4f0:	afa40038 	sw	a0,56(sp)
     4f4:	00a03025 	move	a2,a1
     4f8:	8cc21c44 	lw	v0,7236(a2)
     4fc:	3c014248 	lui	at,0x4248
     500:	44813000 	mtc1	at,$f6
     504:	c4440028 	lwc1	$f4,40(v0)
     508:	c4400024 	lwc1	$f0,36(v0)
     50c:	c44c002c 	lwc1	$f12,44(v0)
     510:	46062080 	add.s	$f2,$f4,$f6
     514:	00802825 	move	a1,a0
     518:	240e000a 	li	t6,10
     51c:	afae0028 	sw	t6,40(sp)
     520:	24c41c24 	addiu	a0,a2,7204
     524:	e7a20014 	swc1	$f2,20(sp)
     528:	afa6003c 	sw	a2,60(sp)
     52c:	afa00024 	sw	zero,36(sp)
     530:	afa00020 	sw	zero,32(sp)
     534:	afa0001c 	sw	zero,28(sp)
     538:	2407008b 	li	a3,139
     53c:	e7a00010 	swc1	$f0,16(sp)
     540:	0c000000 	jal	0 <func_80AF2550>
     544:	e7ac0018 	swc1	$f12,24(sp)
     548:	8fa4003c 	lw	a0,60(sp)
     54c:	0c000000 	jal	0 <func_80AF2550>
     550:	24050068 	li	a1,104
     554:	8fbf0034 	lw	ra,52(sp)
     558:	27bd0038 	addiu	sp,sp,56
     55c:	03e00008 	jr	ra
     560:	00000000 	nop

00000564 <func_80AF2AB4>:
     564:	3c020000 	lui	v0,0x0
     568:	24420000 	addiu	v0,v0,0
     56c:	904e1415 	lbu	t6,5141(v0)
     570:	27bdffd8 	addiu	sp,sp,-40
     574:	24010002 	li	at,2
     578:	afbf0014 	sw	ra,20(sp)
     57c:	15c10019 	bne	t6,at,5e4 <func_80AF2AB4+0x80>
     580:	afa40028 	sw	a0,40(sp)
     584:	8c4f1360 	lw	t7,4960(v0)
     588:	3c080000 	lui	t0,0x0
     58c:	24180001 	li	t8,1
     590:	29e10004 	slti	at,t7,4
     594:	10200013 	beqz	at,5e4 <func_80AF2AB4+0x80>
     598:	2508003c 	addiu	t0,t0,60
     59c:	8ca31c44 	lw	v1,7236(a1)
     5a0:	ac9802a8 	sw	t8,680(a0)
     5a4:	aca81d68 	sw	t0,7528(a1)
     5a8:	24090002 	li	t1,2
     5ac:	00a02025 	move	a0,a1
     5b0:	a0491414 	sb	t1,5140(v0)
     5b4:	24050068 	li	a1,104
     5b8:	0c000000 	jal	0 <func_80AF2550>
     5bc:	afa3001c 	sw	v1,28(sp)
     5c0:	8faa0028 	lw	t2,40(sp)
     5c4:	34018000 	li	at,0x8000
     5c8:	8fa3001c 	lw	v1,28(sp)
     5cc:	85420032 	lh	v0,50(t2)
     5d0:	00411021 	addu	v0,v0,at
     5d4:	00021400 	sll	v0,v0,0x10
     5d8:	00021403 	sra	v0,v0,0x10
     5dc:	a46200b6 	sh	v0,182(v1)
     5e0:	a4620032 	sh	v0,50(v1)
     5e4:	8fbf0014 	lw	ra,20(sp)
     5e8:	27bd0028 	addiu	sp,sp,40
     5ec:	03e00008 	jr	ra
     5f0:	00000000 	nop

000005f4 <func_80AF2B44>:
     5f4:	27bdffe8 	addiu	sp,sp,-24
     5f8:	afbf0014 	sw	ra,20(sp)
     5fc:	90ae1d6c 	lbu	t6,7532(a1)
     600:	51c0000d 	beqzl	t6,638 <func_80AF2B44+0x44>
     604:	8fbf0014 	lw	ra,20(sp)
     608:	8ca21d98 	lw	v0,7576(a1)
     60c:	5040000a 	beqzl	v0,638 <func_80AF2B44+0x44>
     610:	8fbf0014 	lw	ra,20(sp)
     614:	944f0000 	lhu	t7,0(v0)
     618:	24030002 	li	v1,2
     61c:	24180001 	li	t8,1
     620:	546f0005 	bnel	v1,t7,638 <func_80AF2B44+0x44>
     624:	8fbf0014 	lw	ra,20(sp)
     628:	ac8302a8 	sw	v1,680(a0)
     62c:	0c000000 	jal	0 <func_80AF2550>
     630:	ac9802ac 	sw	t8,684(a0)
     634:	8fbf0014 	lw	ra,20(sp)
     638:	27bd0018 	addiu	sp,sp,24
     63c:	03e00008 	jr	ra
     640:	00000000 	nop

00000644 <func_80AF2B94>:
     644:	44800000 	mtc1	zero,$f0
     648:	c48400bc 	lwc1	$f4,188(a0)
     64c:	240e0003 	li	t6,3
     650:	4604003e 	c.le.s	$f0,$f4
     654:	00000000 	nop
     658:	45000003 	bc1f	668 <func_80AF2B94+0x24>
     65c:	00000000 	nop
     660:	ac8e02a8 	sw	t6,680(a0)
     664:	e48000bc 	swc1	$f0,188(a0)
     668:	03e00008 	jr	ra
     66c:	00000000 	nop

00000670 <func_80AF2BC0>:
     670:	27bdffd8 	addiu	sp,sp,-40
     674:	afbf0024 	sw	ra,36(sp)
     678:	afa40028 	sw	a0,40(sp)
     67c:	90ae1d6c 	lbu	t6,7532(a1)
     680:	51c0001d 	beqzl	t6,6f8 <func_80AF2BC0+0x88>
     684:	8fbf0024 	lw	ra,36(sp)
     688:	8ca21d98 	lw	v0,7576(a1)
     68c:	5040001a 	beqzl	v0,6f8 <func_80AF2BC0+0x88>
     690:	8fbf0024 	lw	ra,36(sp)
     694:	944f0000 	lhu	t7,0(v0)
     698:	24010003 	li	at,3
     69c:	3c040000 	lui	a0,0x0
     6a0:	55e10015 	bnel	t7,at,6f8 <func_80AF2BC0+0x88>
     6a4:	8fbf0024 	lw	ra,36(sp)
     6a8:	0c000000 	jal	0 <func_80AF2550>
     6ac:	24840000 	addiu	a0,a0,0
     6b0:	44822000 	mtc1	v0,$f4
     6b4:	44800000 	mtc1	zero,$f0
     6b8:	8fa40028 	lw	a0,40(sp)
     6bc:	468021a0 	cvt.s.w	$f6,$f4
     6c0:	3c050000 	lui	a1,0x0
     6c4:	24180002 	li	t8,2
     6c8:	44070000 	mfc1	a3,$f0
     6cc:	afb80014 	sw	t8,20(sp)
     6d0:	24a50000 	addiu	a1,a1,0
     6d4:	e7a60010 	swc1	$f6,16(sp)
     6d8:	3c063f80 	lui	a2,0x3f80
     6dc:	2484014c 	addiu	a0,a0,332
     6e0:	0c000000 	jal	0 <func_80AF2550>
     6e4:	e7a00018 	swc1	$f0,24(sp)
     6e8:	8fa80028 	lw	t0,40(sp)
     6ec:	24190004 	li	t9,4
     6f0:	ad1902a8 	sw	t9,680(t0)
     6f4:	8fbf0024 	lw	ra,36(sp)
     6f8:	27bd0028 	addiu	sp,sp,40
     6fc:	03e00008 	jr	ra
     700:	00000000 	nop

00000704 <func_80AF2C54>:
     704:	10a00002 	beqz	a1,710 <func_80AF2C54+0xc>
     708:	240e0005 	li	t6,5
     70c:	ac8e02a8 	sw	t6,680(a0)
     710:	03e00008 	jr	ra
     714:	00000000 	nop

00000718 <func_80AF2C68>:
     718:	27bdffe8 	addiu	sp,sp,-24
     71c:	afbf0014 	sw	ra,20(sp)
     720:	90ae1d6c 	lbu	t6,7532(a1)
     724:	51c0000c 	beqzl	t6,758 <func_80AF2C68+0x40>
     728:	8fbf0014 	lw	ra,20(sp)
     72c:	8ca21da4 	lw	v0,7588(a1)
     730:	50400009 	beqzl	v0,758 <func_80AF2C68+0x40>
     734:	8fbf0014 	lw	ra,20(sp)
     738:	944f0000 	lhu	t7,0(v0)
     73c:	24010002 	li	at,2
     740:	24180006 	li	t8,6
     744:	55e10004 	bnel	t7,at,758 <func_80AF2C68+0x40>
     748:	8fbf0014 	lw	ra,20(sp)
     74c:	0c000000 	jal	0 <func_80AF2550>
     750:	ac9802a8 	sw	t8,680(a0)
     754:	8fbf0014 	lw	ra,20(sp)
     758:	27bd0018 	addiu	sp,sp,24
     75c:	03e00008 	jr	ra
     760:	00000000 	nop

00000764 <func_80AF2CB4>:
     764:	27bdffe8 	addiu	sp,sp,-24
     768:	afbf0014 	sw	ra,20(sp)
     76c:	0c000000 	jal	0 <func_80AF2550>
     770:	00000000 	nop
     774:	8fbf0014 	lw	ra,20(sp)
     778:	27bd0018 	addiu	sp,sp,24
     77c:	03e00008 	jr	ra
     780:	00000000 	nop

00000784 <func_80AF2CD4>:
     784:	27bdffe8 	addiu	sp,sp,-24
     788:	afbf0014 	sw	ra,20(sp)
     78c:	0c000000 	jal	0 <func_80AF2550>
     790:	00000000 	nop
     794:	8fbf0014 	lw	ra,20(sp)
     798:	27bd0018 	addiu	sp,sp,24
     79c:	03e00008 	jr	ra
     7a0:	00000000 	nop

000007a4 <func_80AF2CF4>:
     7a4:	27bdffe8 	addiu	sp,sp,-24
     7a8:	afbf0014 	sw	ra,20(sp)
     7ac:	0c000000 	jal	0 <func_80AF2550>
     7b0:	afa40018 	sw	a0,24(sp)
     7b4:	0c000000 	jal	0 <func_80AF2550>
     7b8:	8fa40018 	lw	a0,24(sp)
     7bc:	0c000000 	jal	0 <func_80AF2550>
     7c0:	8fa40018 	lw	a0,24(sp)
     7c4:	0c000000 	jal	0 <func_80AF2550>
     7c8:	8fa40018 	lw	a0,24(sp)
     7cc:	8fbf0014 	lw	ra,20(sp)
     7d0:	27bd0018 	addiu	sp,sp,24
     7d4:	03e00008 	jr	ra
     7d8:	00000000 	nop

000007dc <func_80AF2D2C>:
     7dc:	27bdffe8 	addiu	sp,sp,-24
     7e0:	afbf0014 	sw	ra,20(sp)
     7e4:	afa40018 	sw	a0,24(sp)
     7e8:	0c000000 	jal	0 <func_80AF2550>
     7ec:	afa5001c 	sw	a1,28(sp)
     7f0:	0c000000 	jal	0 <func_80AF2550>
     7f4:	8fa40018 	lw	a0,24(sp)
     7f8:	0c000000 	jal	0 <func_80AF2550>
     7fc:	8fa40018 	lw	a0,24(sp)
     800:	8fa40018 	lw	a0,24(sp)
     804:	0c000000 	jal	0 <func_80AF2550>
     808:	8fa5001c 	lw	a1,28(sp)
     80c:	8fbf0014 	lw	ra,20(sp)
     810:	27bd0018 	addiu	sp,sp,24
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <func_80AF2D6C>:
     81c:	27bdffe0 	addiu	sp,sp,-32
     820:	afbf0014 	sw	ra,20(sp)
     824:	0c000000 	jal	0 <func_80AF2550>
     828:	afa40020 	sw	a0,32(sp)
     82c:	0c000000 	jal	0 <func_80AF2550>
     830:	8fa40020 	lw	a0,32(sp)
     834:	afa2001c 	sw	v0,28(sp)
     838:	0c000000 	jal	0 <func_80AF2550>
     83c:	8fa40020 	lw	a0,32(sp)
     840:	8fa40020 	lw	a0,32(sp)
     844:	0c000000 	jal	0 <func_80AF2550>
     848:	8fa5001c 	lw	a1,28(sp)
     84c:	8fbf0014 	lw	ra,20(sp)
     850:	27bd0020 	addiu	sp,sp,32
     854:	03e00008 	jr	ra
     858:	00000000 	nop

0000085c <func_80AF2DAC>:
     85c:	27bdffe8 	addiu	sp,sp,-24
     860:	afbf0014 	sw	ra,20(sp)
     864:	afa40018 	sw	a0,24(sp)
     868:	0c000000 	jal	0 <func_80AF2550>
     86c:	afa5001c 	sw	a1,28(sp)
     870:	0c000000 	jal	0 <func_80AF2550>
     874:	8fa40018 	lw	a0,24(sp)
     878:	0c000000 	jal	0 <func_80AF2550>
     87c:	8fa40018 	lw	a0,24(sp)
     880:	8fa40018 	lw	a0,24(sp)
     884:	0c000000 	jal	0 <func_80AF2550>
     888:	8fa5001c 	lw	a1,28(sp)
     88c:	8fbf0014 	lw	ra,20(sp)
     890:	27bd0018 	addiu	sp,sp,24
     894:	03e00008 	jr	ra
     898:	00000000 	nop

0000089c <func_80AF2DEC>:
     89c:	27bdffe8 	addiu	sp,sp,-24
     8a0:	afbf0014 	sw	ra,20(sp)
     8a4:	0c000000 	jal	0 <func_80AF2550>
     8a8:	afa40018 	sw	a0,24(sp)
     8ac:	0c000000 	jal	0 <func_80AF2550>
     8b0:	8fa40018 	lw	a0,24(sp)
     8b4:	0c000000 	jal	0 <func_80AF2550>
     8b8:	8fa40018 	lw	a0,24(sp)
     8bc:	8fbf0014 	lw	ra,20(sp)
     8c0:	27bd0018 	addiu	sp,sp,24
     8c4:	03e00008 	jr	ra
     8c8:	00000000 	nop

000008cc <func_80AF2E1C>:
     8cc:	27bdffe0 	addiu	sp,sp,-32
     8d0:	afa50024 	sw	a1,36(sp)
     8d4:	afbf001c 	sw	ra,28(sp)
     8d8:	3c050000 	lui	a1,0x0
     8dc:	24a50000 	addiu	a1,a1,0
     8e0:	afa00010 	sw	zero,16(sp)
     8e4:	afa40020 	sw	a0,32(sp)
     8e8:	24060002 	li	a2,2
     8ec:	0c000000 	jal	0 <func_80AF2550>
     8f0:	24070000 	li	a3,0
     8f4:	8fa40020 	lw	a0,32(sp)
     8f8:	240e0007 	li	t6,7
     8fc:	ac8e02a8 	sw	t6,680(a0)
     900:	a08000c8 	sb	zero,200(a0)
     904:	8fbf001c 	lw	ra,28(sp)
     908:	27bd0020 	addiu	sp,sp,32
     90c:	03e00008 	jr	ra
     910:	00000000 	nop

00000914 <func_80AF2E64>:
     914:	27bdffe8 	addiu	sp,sp,-24
     918:	afbf0014 	sw	ra,20(sp)
     91c:	0c000000 	jal	0 <func_80AF2550>
     920:	24044834 	li	a0,18484
     924:	8fbf0014 	lw	ra,20(sp)
     928:	27bd0018 	addiu	sp,sp,24
     92c:	03e00008 	jr	ra
     930:	00000000 	nop

00000934 <func_80AF2E84>:
     934:	27bdffc8 	addiu	sp,sp,-56
     938:	00a03025 	move	a2,a1
     93c:	00802825 	move	a1,a0
     940:	afbf0034 	sw	ra,52(sp)
     944:	afa40038 	sw	a0,56(sp)
     948:	c4a40024 	lwc1	$f4,36(a1)
     94c:	3c0e0000 	lui	t6,0x0
     950:	8dce0000 	lw	t6,0(t6)
     954:	e7a40010 	swc1	$f4,16(sp)
     958:	3c0141c0 	lui	at,0x41c0
     95c:	85cf147a 	lh	t7,5242(t6)
     960:	44815000 	mtc1	at,$f10
     964:	c4b20028 	lwc1	$f18,40(a1)
     968:	448f3000 	mtc1	t7,$f6
     96c:	24180008 	li	t8,8
     970:	24c41c24 	addiu	a0,a2,7204
     974:	46803220 	cvt.s.w	$f8,$f6
     978:	240700f5 	li	a3,245
     97c:	460a4400 	add.s	$f16,$f8,$f10
     980:	46128100 	add.s	$f4,$f16,$f18
     984:	e7a40014 	swc1	$f4,20(sp)
     988:	c4a6002c 	lwc1	$f6,44(a1)
     98c:	afb80028 	sw	t8,40(sp)
     990:	afa00024 	sw	zero,36(sp)
     994:	afa00020 	sw	zero,32(sp)
     998:	afa0001c 	sw	zero,28(sp)
     99c:	0c000000 	jal	0 <func_80AF2550>
     9a0:	e7a60018 	swc1	$f6,24(sp)
     9a4:	8fbf0034 	lw	ra,52(sp)
     9a8:	27bd0038 	addiu	sp,sp,56
     9ac:	03e00008 	jr	ra
     9b0:	00000000 	nop

000009b4 <func_80AF2F04>:
     9b4:	27bdffe8 	addiu	sp,sp,-24
     9b8:	afbf0014 	sw	ra,20(sp)
     9bc:	afa40018 	sw	a0,24(sp)
     9c0:	24060004 	li	a2,4
     9c4:	0c000000 	jal	0 <func_80AF2550>
     9c8:	24070003 	li	a3,3
     9cc:	1040000a 	beqz	v0,9f8 <func_80AF2F04+0x44>
     9d0:	8fa40018 	lw	a0,24(sp)
     9d4:	44802000 	mtc1	zero,$f4
     9d8:	240e0008 	li	t6,8
     9dc:	240f0002 	li	t7,2
     9e0:	ac8e02a8 	sw	t6,680(a0)
     9e4:	ac8f02ac 	sw	t7,684(a0)
     9e8:	ac8002b4 	sw	zero,692(a0)
     9ec:	a08000c8 	sb	zero,200(a0)
     9f0:	0c000000 	jal	0 <func_80AF2550>
     9f4:	e48402b0 	swc1	$f4,688(a0)
     9f8:	8fbf0014 	lw	ra,20(sp)
     9fc:	27bd0018 	addiu	sp,sp,24
     a00:	03e00008 	jr	ra
     a04:	00000000 	nop

00000a08 <func_80AF2F58>:
     a08:	27bdffe8 	addiu	sp,sp,-24
     a0c:	afbf0014 	sw	ra,20(sp)
     a10:	afa40018 	sw	a0,24(sp)
     a14:	24060004 	li	a2,4
     a18:	0c000000 	jal	0 <func_80AF2550>
     a1c:	24070003 	li	a3,3
     a20:	10400025 	beqz	v0,ab8 <func_80AF2F58+0xb0>
     a24:	8fa40018 	lw	a0,24(sp)
     a28:	3c014120 	lui	at,0x4120
     a2c:	44811000 	mtc1	at,$f2
     a30:	3c013f80 	lui	at,0x3f80
     a34:	248202b0 	addiu	v0,a0,688
     a38:	c4440000 	lwc1	$f4,0(v0)
     a3c:	44813000 	mtc1	at,$f6
     a40:	3c050000 	lui	a1,0x0
     a44:	24a50000 	addiu	a1,a1,0
     a48:	46062200 	add.s	$f8,$f4,$f6
     a4c:	24180009 	li	t8,9
     a50:	24190001 	li	t9,1
     a54:	e4480000 	swc1	$f8,0(v0)
     a58:	8cae0000 	lw	t6,0(a1)
     a5c:	c4400000 	lwc1	$f0,0(v0)
     a60:	85cf145e 	lh	t7,5214(t6)
     a64:	448f5000 	mtc1	t7,$f10
     a68:	00000000 	nop
     a6c:	46805420 	cvt.s.w	$f16,$f10
     a70:	46028480 	add.s	$f18,$f16,$f2
     a74:	4600903e 	c.le.s	$f18,$f0
     a78:	00000000 	nop
     a7c:	45000020 	bc1f	b00 <func_80AF2F58+0xf8>
     a80:	00000000 	nop
     a84:	ac9802a8 	sw	t8,680(a0)
     a88:	ac9902ac 	sw	t9,684(a0)
     a8c:	8ca80000 	lw	t0,0(a1)
     a90:	240300ff 	li	v1,255
     a94:	8509145e 	lh	t1,5214(t0)
     a98:	44892000 	mtc1	t1,$f4
     a9c:	00000000 	nop
     aa0:	468021a0 	cvt.s.w	$f6,$f4
     aa4:	46023200 	add.s	$f8,$f6,$f2
     aa8:	e4480000 	swc1	$f8,0(v0)
     aac:	ac8302b4 	sw	v1,692(a0)
     ab0:	10000026 	b	b4c <func_80AF2F58+0x144>
     ab4:	a08300c8 	sb	v1,200(a0)
     ab8:	248202b0 	addiu	v0,a0,688
     abc:	3c013f80 	lui	at,0x3f80
     ac0:	44818000 	mtc1	at,$f16
     ac4:	c44a0000 	lwc1	$f10,0(v0)
     ac8:	44801000 	mtc1	zero,$f2
     acc:	46105481 	sub.s	$f18,$f10,$f16
     ad0:	e4520000 	swc1	$f18,0(v0)
     ad4:	c4400000 	lwc1	$f0,0(v0)
     ad8:	4602003e 	c.le.s	$f0,$f2
     adc:	00000000 	nop
     ae0:	45000007 	bc1f	b00 <func_80AF2F58+0xf8>
     ae4:	240a0007 	li	t2,7
     ae8:	ac8a02a8 	sw	t2,680(a0)
     aec:	ac8002ac 	sw	zero,684(a0)
     af0:	e4420000 	swc1	$f2,0(v0)
     af4:	ac8002b4 	sw	zero,692(a0)
     af8:	10000014 	b	b4c <func_80AF2F58+0x144>
     afc:	a08000c8 	sb	zero,200(a0)
     b00:	3c050000 	lui	a1,0x0
     b04:	24a50000 	addiu	a1,a1,0
     b08:	8cab0000 	lw	t3,0(a1)
     b0c:	3c014120 	lui	at,0x4120
     b10:	44811000 	mtc1	at,$f2
     b14:	856c145e 	lh	t4,5214(t3)
     b18:	3c01437f 	lui	at,0x437f
     b1c:	44818000 	mtc1	at,$f16
     b20:	448c2000 	mtc1	t4,$f4
     b24:	00000000 	nop
     b28:	468021a0 	cvt.s.w	$f6,$f4
     b2c:	46023200 	add.s	$f8,$f6,$f2
     b30:	46080283 	div.s	$f10,$f0,$f8
     b34:	46105482 	mul.s	$f18,$f10,$f16
     b38:	4600910d 	trunc.w.s	$f4,$f18
     b3c:	44022000 	mfc1	v0,$f4
     b40:	00000000 	nop
     b44:	ac8202b4 	sw	v0,692(a0)
     b48:	a08200c8 	sb	v0,200(a0)
     b4c:	8fbf0014 	lw	ra,20(sp)
     b50:	27bd0018 	addiu	sp,sp,24
     b54:	03e00008 	jr	ra
     b58:	00000000 	nop

00000b5c <func_80AF30AC>:
     b5c:	27bdffe8 	addiu	sp,sp,-24
     b60:	afbf0014 	sw	ra,20(sp)
     b64:	afa5001c 	sw	a1,28(sp)
     b68:	afa40018 	sw	a0,24(sp)
     b6c:	24060004 	li	a2,4
     b70:	0c000000 	jal	0 <func_80AF2550>
     b74:	24070003 	li	a3,3
     b78:	1040001a 	beqz	v0,be4 <func_80AF30AC+0x88>
     b7c:	8fa40018 	lw	a0,24(sp)
     b80:	240e0008 	li	t6,8
     b84:	240f0002 	li	t7,2
     b88:	ac8e02a8 	sw	t6,680(a0)
     b8c:	ac8f02ac 	sw	t7,684(a0)
     b90:	3c180000 	lui	t8,0x0
     b94:	8f180000 	lw	t8,0(t8)
     b98:	3c014120 	lui	at,0x4120
     b9c:	44814000 	mtc1	at,$f8
     ba0:	8719145e 	lh	t9,5214(t8)
     ba4:	8c8902b8 	lw	t1,696(a0)
     ba8:	240800ff 	li	t0,255
     bac:	44992000 	mtc1	t9,$f4
     bb0:	ac8802b4 	sw	t0,692(a0)
     bb4:	468021a0 	cvt.s.w	$f6,$f4
     bb8:	46083280 	add.s	$f10,$f6,$f8
     bbc:	15200007 	bnez	t1,bdc <func_80AF30AC+0x80>
     bc0:	e48a02b0 	swc1	$f10,688(a0)
     bc4:	8fa5001c 	lw	a1,28(sp)
     bc8:	0c000000 	jal	0 <func_80AF2550>
     bcc:	afa40018 	sw	a0,24(sp)
     bd0:	8fa40018 	lw	a0,24(sp)
     bd4:	240a0001 	li	t2,1
     bd8:	ac8a02b8 	sw	t2,696(a0)
     bdc:	240b00ff 	li	t3,255
     be0:	a08b00c8 	sb	t3,200(a0)
     be4:	8fbf0014 	lw	ra,20(sp)
     be8:	27bd0018 	addiu	sp,sp,24
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <func_80AF3144>:
     bf4:	27bdffe8 	addiu	sp,sp,-24
     bf8:	afbf0014 	sw	ra,20(sp)
     bfc:	afa40018 	sw	a0,24(sp)
     c00:	0c000000 	jal	0 <func_80AF2550>
     c04:	afa5001c 	sw	a1,28(sp)
     c08:	8fa40018 	lw	a0,24(sp)
     c0c:	0c000000 	jal	0 <func_80AF2550>
     c10:	8fa5001c 	lw	a1,28(sp)
     c14:	8fbf0014 	lw	ra,20(sp)
     c18:	27bd0018 	addiu	sp,sp,24
     c1c:	03e00008 	jr	ra
     c20:	00000000 	nop

00000c24 <func_80AF3174>:
     c24:	27bdffe0 	addiu	sp,sp,-32
     c28:	afbf001c 	sw	ra,28(sp)
     c2c:	afb00018 	sw	s0,24(sp)
     c30:	00808025 	move	s0,a0
     c34:	0c000000 	jal	0 <func_80AF2550>
     c38:	afa50024 	sw	a1,36(sp)
     c3c:	0c000000 	jal	0 <func_80AF2550>
     c40:	02002025 	move	a0,s0
     c44:	0c000000 	jal	0 <func_80AF2550>
     c48:	02002025 	move	a0,s0
     c4c:	02002025 	move	a0,s0
     c50:	0c000000 	jal	0 <func_80AF2550>
     c54:	8fa50024 	lw	a1,36(sp)
     c58:	02002025 	move	a0,s0
     c5c:	0c000000 	jal	0 <func_80AF2550>
     c60:	8fa50024 	lw	a1,36(sp)
     c64:	8fbf001c 	lw	ra,28(sp)
     c68:	8fb00018 	lw	s0,24(sp)
     c6c:	27bd0020 	addiu	sp,sp,32
     c70:	03e00008 	jr	ra
     c74:	00000000 	nop

00000c78 <func_80AF31C8>:
     c78:	27bdffe0 	addiu	sp,sp,-32
     c7c:	afbf001c 	sw	ra,28(sp)
     c80:	afb00018 	sw	s0,24(sp)
     c84:	00808025 	move	s0,a0
     c88:	0c000000 	jal	0 <func_80AF2550>
     c8c:	afa50024 	sw	a1,36(sp)
     c90:	0c000000 	jal	0 <func_80AF2550>
     c94:	02002025 	move	a0,s0
     c98:	0c000000 	jal	0 <func_80AF2550>
     c9c:	02002025 	move	a0,s0
     ca0:	02002025 	move	a0,s0
     ca4:	0c000000 	jal	0 <func_80AF2550>
     ca8:	8fa50024 	lw	a1,36(sp)
     cac:	02002025 	move	a0,s0
     cb0:	0c000000 	jal	0 <func_80AF2550>
     cb4:	8fa50024 	lw	a1,36(sp)
     cb8:	8fbf001c 	lw	ra,28(sp)
     cbc:	8fb00018 	lw	s0,24(sp)
     cc0:	27bd0020 	addiu	sp,sp,32
     cc4:	03e00008 	jr	ra
     cc8:	00000000 	nop

00000ccc <func_80AF321C>:
     ccc:	27bdff88 	addiu	sp,sp,-120
     cd0:	afbf002c 	sw	ra,44(sp)
     cd4:	afb00028 	sw	s0,40(sp)
     cd8:	afa40078 	sw	a0,120(sp)
     cdc:	afa5007c 	sw	a1,124(sp)
     ce0:	848202a4 	lh	v0,676(a0)
     ce4:	3c180000 	lui	t8,0x0
     ce8:	3c060000 	lui	a2,0x0
     cec:	00027880 	sll	t7,v0,0x2
     cf0:	030fc021 	addu	t8,t8,t7
     cf4:	8f18002c 	lw	t8,44(t8)
     cf8:	24c60000 	addiu	a2,a2,0
     cfc:	27a40050 	addiu	a0,sp,80
     d00:	afb80068 	sw	t8,104(sp)
     d04:	8ca50000 	lw	a1,0(a1)
     d08:	24070108 	li	a3,264
     d0c:	0c000000 	jal	0 <func_80AF2550>
     d10:	00a08025 	move	s0,a1
     d14:	8fa9007c 	lw	t1,124(sp)
     d18:	0c000000 	jal	0 <func_80AF2550>
     d1c:	8d240000 	lw	a0,0(t1)
     d20:	8fa70068 	lw	a3,104(sp)
     d24:	8e0202d0 	lw	v0,720(s0)
     d28:	3c0bdb06 	lui	t3,0xdb06
     d2c:	00076100 	sll	t4,a3,0x4
     d30:	000c6f02 	srl	t5,t4,0x1c
     d34:	3c0f0000 	lui	t7,0x0
     d38:	244a0008 	addiu	t2,v0,8
     d3c:	ae0a02d0 	sw	t2,720(s0)
     d40:	25ef0000 	addiu	t7,t7,0
     d44:	000d7080 	sll	t6,t5,0x2
     d48:	356b0020 	ori	t3,t3,0x20
     d4c:	01cf2021 	addu	a0,t6,t7
     d50:	ac4b0000 	sw	t3,0(v0)
     d54:	8c980000 	lw	t8,0(a0)
     d58:	3c0100ff 	lui	at,0xff
     d5c:	3421ffff 	ori	at,at,0xffff
     d60:	00e12824 	and	a1,a3,at
     d64:	3c068000 	lui	a2,0x8000
     d68:	0305c821 	addu	t9,t8,a1
     d6c:	03264821 	addu	t1,t9,a2
     d70:	ac490004 	sw	t1,4(v0)
     d74:	8e0202d0 	lw	v0,720(s0)
     d78:	3c0bdb06 	lui	t3,0xdb06
     d7c:	356b0024 	ori	t3,t3,0x24
     d80:	244a0008 	addiu	t2,v0,8
     d84:	ae0a02d0 	sw	t2,720(s0)
     d88:	ac4b0000 	sw	t3,0(v0)
     d8c:	8c8c0000 	lw	t4,0(a0)
     d90:	3c18fb00 	lui	t8,0xfb00
     d94:	3c0bdb06 	lui	t3,0xdb06
     d98:	01856821 	addu	t5,t4,a1
     d9c:	01a67021 	addu	t6,t5,a2
     da0:	ac4e0004 	sw	t6,4(v0)
     da4:	8e0202d0 	lw	v0,720(s0)
     da8:	8fa80078 	lw	t0,120(sp)
     dac:	3c0c0000 	lui	t4,0x0
     db0:	244f0008 	addiu	t7,v0,8
     db4:	ae0f02d0 	sw	t7,720(s0)
     db8:	ac580000 	sw	t8,0(v0)
     dbc:	8d1902b4 	lw	t9,692(t0)
     dc0:	258c0000 	addiu	t4,t4,0
     dc4:	356b0030 	ori	t3,t3,0x30
     dc8:	332900ff 	andi	t1,t9,0xff
     dcc:	ac490004 	sw	t1,4(v0)
     dd0:	8e0202d0 	lw	v0,720(s0)
     dd4:	244a0008 	addiu	t2,v0,8
     dd8:	ae0a02d0 	sw	t2,720(s0)
     ddc:	ac4c0004 	sw	t4,4(v0)
     de0:	ac4b0000 	sw	t3,0(v0)
     de4:	2502014c 	addiu	v0,t0,332
     de8:	8c450004 	lw	a1,4(v0)
     dec:	8c460020 	lw	a2,32(v0)
     df0:	90470002 	lbu	a3,2(v0)
     df4:	afa00018 	sw	zero,24(sp)
     df8:	afa00014 	sw	zero,20(sp)
     dfc:	afa00010 	sw	zero,16(sp)
     e00:	8e0d02d0 	lw	t5,720(s0)
     e04:	8fa4007c 	lw	a0,124(sp)
     e08:	0c000000 	jal	0 <func_80AF2550>
     e0c:	afad001c 	sw	t5,28(sp)
     e10:	ae0202d0 	sw	v0,720(s0)
     e14:	8fae007c 	lw	t6,124(sp)
     e18:	3c060000 	lui	a2,0x0
     e1c:	24c60024 	addiu	a2,a2,36
     e20:	27a40050 	addiu	a0,sp,80
     e24:	24070123 	li	a3,291
     e28:	0c000000 	jal	0 <func_80AF2550>
     e2c:	8dc50000 	lw	a1,0(t6)
     e30:	8fbf002c 	lw	ra,44(sp)
     e34:	8fb00028 	lw	s0,40(sp)
     e38:	27bd0078 	addiu	sp,sp,120
     e3c:	03e00008 	jr	ra
     e40:	00000000 	nop

00000e44 <func_80AF3394>:
     e44:	27bdffe0 	addiu	sp,sp,-32
     e48:	afa50024 	sw	a1,36(sp)
     e4c:	afbf001c 	sw	ra,28(sp)
     e50:	3c050000 	lui	a1,0x0
     e54:	24a50000 	addiu	a1,a1,0
     e58:	afa00010 	sw	zero,16(sp)
     e5c:	afa40020 	sw	a0,32(sp)
     e60:	00003025 	move	a2,zero
     e64:	0c000000 	jal	0 <func_80AF2550>
     e68:	24070000 	li	a3,0
     e6c:	8fa40020 	lw	a0,32(sp)
     e70:	240e000a 	li	t6,10
     e74:	ac8e02a8 	sw	t6,680(a0)
     e78:	ac8002ac 	sw	zero,684(a0)
     e7c:	a08000c8 	sb	zero,200(a0)
     e80:	8fbf001c 	lw	ra,28(sp)
     e84:	27bd0020 	addiu	sp,sp,32
     e88:	03e00008 	jr	ra
     e8c:	00000000 	nop

00000e90 <func_80AF33E0>:
     e90:	3c013f80 	lui	at,0x3f80
     e94:	44813000 	mtc1	at,$f6
     e98:	c48402b0 	lwc1	$f4,688(a0)
     e9c:	3c0e0000 	lui	t6,0x0
     ea0:	3c014120 	lui	at,0x4120
     ea4:	46062200 	add.s	$f8,$f4,$f6
     ea8:	44819000 	mtc1	at,$f18
     eac:	240200ff 	li	v0,255
     eb0:	e48802b0 	swc1	$f8,688(a0)
     eb4:	8dce0000 	lw	t6,0(t6)
     eb8:	c48402b0 	lwc1	$f4,688(a0)
     ebc:	85cf1476 	lh	t7,5238(t6)
     ec0:	448f5000 	mtc1	t7,$f10
     ec4:	00000000 	nop
     ec8:	46805420 	cvt.s.w	$f16,$f10
     ecc:	46128000 	add.s	$f0,$f16,$f18
     ed0:	4604003e 	c.le.s	$f0,$f4
     ed4:	00000000 	nop
     ed8:	45020005 	bc1fl	ef0 <func_80AF33E0+0x60>
     edc:	c48602b0 	lwc1	$f6,688(a0)
     ee0:	ac8202b4 	sw	v0,692(a0)
     ee4:	03e00008 	jr	ra
     ee8:	a08200c8 	sb	v0,200(a0)
     eec:	c48602b0 	lwc1	$f6,688(a0)
     ef0:	3c01437f 	lui	at,0x437f
     ef4:	44815000 	mtc1	at,$f10
     ef8:	46003203 	div.s	$f8,$f6,$f0
     efc:	460a4402 	mul.s	$f16,$f8,$f10
     f00:	4600848d 	trunc.w.s	$f18,$f16
     f04:	44029000 	mfc1	v0,$f18
     f08:	00000000 	nop
     f0c:	ac8202b4 	sw	v0,692(a0)
     f10:	a08200c8 	sb	v0,200(a0)
     f14:	03e00008 	jr	ra
     f18:	00000000 	nop

00000f1c <func_80AF346C>:
     f1c:	27bdffe8 	addiu	sp,sp,-24
     f20:	afbf0014 	sw	ra,20(sp)
     f24:	afa40018 	sw	a0,24(sp)
     f28:	0c000000 	jal	0 <func_80AF2550>
     f2c:	24060003 	li	a2,3
     f30:	8fa40018 	lw	a0,24(sp)
     f34:	240e000b 	li	t6,11
     f38:	240f0002 	li	t7,2
     f3c:	ac8e02a8 	sw	t6,680(a0)
     f40:	ac8f02ac 	sw	t7,684(a0)
     f44:	8fbf0014 	lw	ra,20(sp)
     f48:	27bd0018 	addiu	sp,sp,24
     f4c:	03e00008 	jr	ra
     f50:	00000000 	nop

00000f54 <func_80AF34A4>:
     f54:	3c0e0000 	lui	t6,0x0
     f58:	8dce0000 	lw	t6,0(t6)
     f5c:	3c014120 	lui	at,0x4120
     f60:	44815000 	mtc1	at,$f10
     f64:	85cf1476 	lh	t7,5238(t6)
     f68:	c48402b0 	lwc1	$f4,688(a0)
     f6c:	2418000c 	li	t8,12
     f70:	448f3000 	mtc1	t7,$f6
     f74:	24190001 	li	t9,1
     f78:	46803220 	cvt.s.w	$f8,$f6
     f7c:	460a4400 	add.s	$f16,$f8,$f10
     f80:	4604803e 	c.le.s	$f16,$f4
     f84:	00000000 	nop
     f88:	45000003 	bc1f	f98 <func_80AF34A4+0x44>
     f8c:	00000000 	nop
     f90:	ac9802a8 	sw	t8,680(a0)
     f94:	ac9902ac 	sw	t9,684(a0)
     f98:	03e00008 	jr	ra
     f9c:	00000000 	nop

00000fa0 <func_80AF34F0>:
     fa0:	27bdffe0 	addiu	sp,sp,-32
     fa4:	afbf001c 	sw	ra,28(sp)
     fa8:	3c050000 	lui	a1,0x0
     fac:	afa40020 	sw	a0,32(sp)
     fb0:	24a50000 	addiu	a1,a1,0
     fb4:	afa00010 	sw	zero,16(sp)
     fb8:	24060002 	li	a2,2
     fbc:	0c000000 	jal	0 <func_80AF2550>
     fc0:	24070000 	li	a3,0
     fc4:	8faf0020 	lw	t7,32(sp)
     fc8:	240e000d 	li	t6,13
     fcc:	adee02a8 	sw	t6,680(t7)
     fd0:	8fbf001c 	lw	ra,28(sp)
     fd4:	27bd0020 	addiu	sp,sp,32
     fd8:	03e00008 	jr	ra
     fdc:	00000000 	nop

00000fe0 <func_80AF3530>:
     fe0:	27bdffe0 	addiu	sp,sp,-32
     fe4:	10a00007 	beqz	a1,1004 <func_80AF3530+0x24>
     fe8:	afbf001c 	sw	ra,28(sp)
     fec:	3c050000 	lui	a1,0x0
     ff0:	24a50000 	addiu	a1,a1,0
     ff4:	00003025 	move	a2,zero
     ff8:	24070000 	li	a3,0
     ffc:	0c000000 	jal	0 <func_80AF2550>
    1000:	afa00010 	sw	zero,16(sp)
    1004:	8fbf001c 	lw	ra,28(sp)
    1008:	27bd0020 	addiu	sp,sp,32
    100c:	03e00008 	jr	ra
    1010:	00000000 	nop

00001014 <func_80AF3564>:
    1014:	27bdffe0 	addiu	sp,sp,-32
    1018:	afa40020 	sw	a0,32(sp)
    101c:	afbf0014 	sw	ra,20(sp)
    1020:	afa50024 	sw	a1,36(sp)
    1024:	00a02025 	move	a0,a1
    1028:	0c000000 	jal	0 <func_80AF2550>
    102c:	24050003 	li	a1,3
    1030:	1040001c 	beqz	v0,10a4 <func_80AF3564+0x90>
    1034:	8fa70020 	lw	a3,32(sp)
    1038:	94460000 	lhu	a2,0(v0)
    103c:	8ce302bc 	lw	v1,700(a3)
    1040:	24010007 	li	at,7
    1044:	50c30018 	beql	a2,v1,10a8 <func_80AF3564+0x94>
    1048:	8fbf0014 	lw	ra,20(sp)
    104c:	10c10006 	beq	a2,at,1068 <func_80AF3564+0x54>
    1050:	00e02025 	move	a0,a3
    1054:	24010008 	li	at,8
    1058:	10c10008 	beq	a2,at,107c <func_80AF3564+0x68>
    105c:	00e02025 	move	a0,a3
    1060:	1000000a 	b	108c <func_80AF3564+0x78>
    1064:	3c040000 	lui	a0,0x0
    1068:	8fa50024 	lw	a1,36(sp)
    106c:	0c000000 	jal	0 <func_80AF2550>
    1070:	afa60018 	sw	a2,24(sp)
    1074:	10000009 	b	109c <func_80AF3564+0x88>
    1078:	8fa60018 	lw	a2,24(sp)
    107c:	0c000000 	jal	0 <func_80AF2550>
    1080:	afa60018 	sw	a2,24(sp)
    1084:	10000005 	b	109c <func_80AF3564+0x88>
    1088:	8fa60018 	lw	a2,24(sp)
    108c:	24840048 	addiu	a0,a0,72
    1090:	0c000000 	jal	0 <func_80AF2550>
    1094:	afa60018 	sw	a2,24(sp)
    1098:	8fa60018 	lw	a2,24(sp)
    109c:	8fae0020 	lw	t6,32(sp)
    10a0:	adc602bc 	sw	a2,700(t6)
    10a4:	8fbf0014 	lw	ra,20(sp)
    10a8:	27bd0020 	addiu	sp,sp,32
    10ac:	03e00008 	jr	ra
    10b0:	00000000 	nop

000010b4 <func_80AF3604>:
    10b4:	27bdffe8 	addiu	sp,sp,-24
    10b8:	afbf0014 	sw	ra,20(sp)
    10bc:	0c000000 	jal	0 <func_80AF2550>
    10c0:	00000000 	nop
    10c4:	8fbf0014 	lw	ra,20(sp)
    10c8:	27bd0018 	addiu	sp,sp,24
    10cc:	03e00008 	jr	ra
    10d0:	00000000 	nop

000010d4 <func_80AF3624>:
    10d4:	27bdffe0 	addiu	sp,sp,-32
    10d8:	afbf001c 	sw	ra,28(sp)
    10dc:	afb00018 	sw	s0,24(sp)
    10e0:	0c000000 	jal	0 <func_80AF2550>
    10e4:	00808025 	move	s0,a0
    10e8:	0c000000 	jal	0 <func_80AF2550>
    10ec:	02002025 	move	a0,s0
    10f0:	0c000000 	jal	0 <func_80AF2550>
    10f4:	02002025 	move	a0,s0
    10f8:	0c000000 	jal	0 <func_80AF2550>
    10fc:	02002025 	move	a0,s0
    1100:	0c000000 	jal	0 <func_80AF2550>
    1104:	02002025 	move	a0,s0
    1108:	8fbf001c 	lw	ra,28(sp)
    110c:	8fb00018 	lw	s0,24(sp)
    1110:	27bd0020 	addiu	sp,sp,32
    1114:	03e00008 	jr	ra
    1118:	00000000 	nop

0000111c <func_80AF366C>:
    111c:	27bdffe8 	addiu	sp,sp,-24
    1120:	afbf0014 	sw	ra,20(sp)
    1124:	afa40018 	sw	a0,24(sp)
    1128:	0c000000 	jal	0 <func_80AF2550>
    112c:	afa5001c 	sw	a1,28(sp)
    1130:	0c000000 	jal	0 <func_80AF2550>
    1134:	8fa40018 	lw	a0,24(sp)
    1138:	0c000000 	jal	0 <func_80AF2550>
    113c:	8fa40018 	lw	a0,24(sp)
    1140:	8fa40018 	lw	a0,24(sp)
    1144:	0c000000 	jal	0 <func_80AF2550>
    1148:	8fa5001c 	lw	a1,28(sp)
    114c:	8fbf0014 	lw	ra,20(sp)
    1150:	27bd0018 	addiu	sp,sp,24
    1154:	03e00008 	jr	ra
    1158:	00000000 	nop

0000115c <func_80AF36AC>:
    115c:	27bdffe0 	addiu	sp,sp,-32
    1160:	afbf0014 	sw	ra,20(sp)
    1164:	0c000000 	jal	0 <func_80AF2550>
    1168:	afa40020 	sw	a0,32(sp)
    116c:	0c000000 	jal	0 <func_80AF2550>
    1170:	8fa40020 	lw	a0,32(sp)
    1174:	afa2001c 	sw	v0,28(sp)
    1178:	0c000000 	jal	0 <func_80AF2550>
    117c:	8fa40020 	lw	a0,32(sp)
    1180:	8fa40020 	lw	a0,32(sp)
    1184:	0c000000 	jal	0 <func_80AF2550>
    1188:	8fa5001c 	lw	a1,28(sp)
    118c:	8fbf0014 	lw	ra,20(sp)
    1190:	27bd0020 	addiu	sp,sp,32
    1194:	03e00008 	jr	ra
    1198:	00000000 	nop

0000119c <func_80AF36EC>:
    119c:	27bdffe8 	addiu	sp,sp,-24
    11a0:	afbf0014 	sw	ra,20(sp)
    11a4:	0c000000 	jal	0 <func_80AF2550>
    11a8:	afa5001c 	sw	a1,28(sp)
    11ac:	8fa4001c 	lw	a0,28(sp)
    11b0:	0c000000 	jal	0 <func_80AF2550>
    11b4:	00402825 	move	a1,v0
    11b8:	8fbf0014 	lw	ra,20(sp)
    11bc:	27bd0018 	addiu	sp,sp,24
    11c0:	03e00008 	jr	ra
    11c4:	00000000 	nop

000011c8 <func_80AF3718>:
    11c8:	27bdffe8 	addiu	sp,sp,-24
    11cc:	afbf0014 	sw	ra,20(sp)
    11d0:	0c000000 	jal	0 <func_80AF2550>
    11d4:	afa5001c 	sw	a1,28(sp)
    11d8:	8fa4001c 	lw	a0,28(sp)
    11dc:	0c000000 	jal	0 <func_80AF2550>
    11e0:	00402825 	move	a1,v0
    11e4:	8fbf0014 	lw	ra,20(sp)
    11e8:	27bd0018 	addiu	sp,sp,24
    11ec:	03e00008 	jr	ra
    11f0:	00000000 	nop

000011f4 <func_80AF3744>:
    11f4:	27bdffe0 	addiu	sp,sp,-32
    11f8:	afbf001c 	sw	ra,28(sp)
    11fc:	0c000000 	jal	0 <func_80AF2550>
    1200:	afa40020 	sw	a0,32(sp)
    1204:	10400005 	beqz	v0,121c <func_80AF3744+0x28>
    1208:	8fa40020 	lw	a0,32(sp)
    120c:	0c000000 	jal	0 <func_80AF2550>
    1210:	00000000 	nop
    1214:	1000000e 	b	1250 <func_80AF3744+0x5c>
    1218:	8fbf001c 	lw	ra,28(sp)
    121c:	3c050000 	lui	a1,0x0
    1220:	24a50000 	addiu	a1,a1,0
    1224:	00003025 	move	a2,zero
    1228:	24070000 	li	a3,0
    122c:	afa00010 	sw	zero,16(sp)
    1230:	0c000000 	jal	0 <func_80AF2550>
    1234:	afa40020 	sw	a0,32(sp)
    1238:	8fa40020 	lw	a0,32(sp)
    123c:	240e000e 	li	t6,14
    1240:	240f0001 	li	t7,1
    1244:	ac8e02a8 	sw	t6,680(a0)
    1248:	ac8f02ac 	sw	t7,684(a0)
    124c:	8fbf001c 	lw	ra,28(sp)
    1250:	27bd0020 	addiu	sp,sp,32
    1254:	03e00008 	jr	ra
    1258:	00000000 	nop

0000125c <func_80AF37AC>:
    125c:	27bdffe8 	addiu	sp,sp,-24
    1260:	afbf0014 	sw	ra,20(sp)
    1264:	0c000000 	jal	0 <func_80AF2550>
    1268:	24040051 	li	a0,81
    126c:	8fbf0014 	lw	ra,20(sp)
    1270:	27bd0018 	addiu	sp,sp,24
    1274:	03e00008 	jr	ra
    1278:	00000000 	nop

0000127c <func_80AF37CC>:
    127c:	27bdffd8 	addiu	sp,sp,-40
    1280:	afbf0024 	sw	ra,36(sp)
    1284:	afb00020 	sw	s0,32(sp)
    1288:	948e02c0 	lhu	t6,704(a0)
    128c:	3c180000 	lui	t8,0x0
    1290:	00808025 	move	s0,a0
    1294:	25cf0001 	addiu	t7,t6,1
    1298:	a48f02c0 	sh	t7,704(a0)
    129c:	8f180000 	lw	t8,0(t8)
    12a0:	960602c0 	lhu	a2,704(s0)
    12a4:	00002825 	move	a1,zero
    12a8:	87041458 	lh	a0,5208(t8)
    12ac:	afa00010 	sw	zero,16(sp)
    12b0:	24070008 	li	a3,8
    12b4:	24840096 	addiu	a0,a0,150
    12b8:	0c000000 	jal	0 <func_80AF2550>
    12bc:	3084ffff 	andi	a0,a0,0xffff
    12c0:	3c014396 	lui	at,0x4396
    12c4:	44813000 	mtc1	at,$f6
    12c8:	c604000c 	lwc1	$f4,12(s0)
    12cc:	46003202 	mul.s	$f8,$f6,$f0
    12d0:	46082280 	add.s	$f10,$f4,$f8
    12d4:	e60a0028 	swc1	$f10,40(s0)
    12d8:	8fbf0024 	lw	ra,36(sp)
    12dc:	8fb00020 	lw	s0,32(sp)
    12e0:	27bd0028 	addiu	sp,sp,40
    12e4:	03e00008 	jr	ra
    12e8:	00000000 	nop

000012ec <func_80AF383C>:
    12ec:	8ca21c44 	lw	v0,7236(a1)
    12f0:	c4800024 	lwc1	$f0,36(a0)
    12f4:	3c01c34a 	lui	at,0xc34a
    12f8:	c4420024 	lwc1	$f2,36(v0)
    12fc:	44813000 	mtc1	at,$f6
    1300:	00001025 	move	v0,zero
    1304:	46001101 	sub.s	$f4,$f2,$f0
    1308:	4604303e 	c.le.s	$f6,$f4
    130c:	00000000 	nop
    1310:	45000003 	bc1f	1320 <func_80AF383C+0x34>
    1314:	00000000 	nop
    1318:	03e00008 	jr	ra
    131c:	24020001 	li	v0,1
    1320:	03e00008 	jr	ra
    1324:	00000000 	nop

00001328 <func_80AF3878>:
    1328:	27bdffe0 	addiu	sp,sp,-32
    132c:	afbf001c 	sw	ra,28(sp)
    1330:	afa40020 	sw	a0,32(sp)
    1334:	0c000000 	jal	0 <func_80AF2550>
    1338:	afa50024 	sw	a1,36(sp)
    133c:	5040000d 	beqzl	v0,1374 <func_80AF3878+0x4c>
    1340:	8fbf001c 	lw	ra,28(sp)
    1344:	0c000000 	jal	0 <func_80AF2550>
    1348:	8fa40024 	lw	a0,36(sp)
    134c:	14400008 	bnez	v0,1370 <func_80AF3878+0x48>
    1350:	8fa70020 	lw	a3,32(sp)
    1354:	240e0010 	li	t6,16
    1358:	acee02a8 	sw	t6,680(a3)
    135c:	afa00010 	sw	zero,16(sp)
    1360:	8fa40024 	lw	a0,36(sp)
    1364:	24050c3a 	li	a1,3130
    1368:	0c000000 	jal	0 <func_80AF2550>
    136c:	2406ff9d 	li	a2,-99
    1370:	8fbf001c 	lw	ra,28(sp)
    1374:	27bd0020 	addiu	sp,sp,32
    1378:	03e00008 	jr	ra
    137c:	00000000 	nop

00001380 <func_80AF38D0>:
    1380:	27bdffe0 	addiu	sp,sp,-32
    1384:	afbf001c 	sw	ra,28(sp)
    1388:	afa50024 	sw	a1,36(sp)
    138c:	240e0010 	li	t6,16
    1390:	00803825 	move	a3,a0
    1394:	ac8e02a8 	sw	t6,680(a0)
    1398:	afa00010 	sw	zero,16(sp)
    139c:	8fa40024 	lw	a0,36(sp)
    13a0:	24050c3a 	li	a1,3130
    13a4:	0c000000 	jal	0 <func_80AF2550>
    13a8:	2406ff9d 	li	a2,-99
    13ac:	8fbf001c 	lw	ra,28(sp)
    13b0:	27bd0020 	addiu	sp,sp,32
    13b4:	03e00008 	jr	ra
    13b8:	00000000 	nop

000013bc <func_80AF390C>:
    13bc:	27bdffe8 	addiu	sp,sp,-24
    13c0:	afbf0014 	sw	ra,20(sp)
    13c4:	afa5001c 	sw	a1,28(sp)
    13c8:	3c013f80 	lui	at,0x3f80
    13cc:	44813000 	mtc1	at,$f6
    13d0:	c48402c4 	lwc1	$f4,708(a0)
    13d4:	3c020000 	lui	v0,0x0
    13d8:	3c014220 	lui	at,0x4220
    13dc:	46062200 	add.s	$f8,$f4,$f6
    13e0:	44812000 	mtc1	at,$f4
    13e4:	00803825 	move	a3,a0
    13e8:	e48802c4 	swc1	$f8,708(a0)
    13ec:	8c420000 	lw	v0,0(v0)
    13f0:	c48a02c4 	lwc1	$f10,708(a0)
    13f4:	844e1460 	lh	t6,5216(v0)
    13f8:	448e8000 	mtc1	t6,$f16
    13fc:	00000000 	nop
    1400:	468084a0 	cvt.s.w	$f18,$f16
    1404:	46049180 	add.s	$f6,$f18,$f4
    1408:	46065032 	c.eq.s	$f10,$f6
    140c:	00000000 	nop
    1410:	45020006 	bc1fl	142c <func_80AF390C+0x70>
    1414:	844f145c 	lh	t7,5212(v0)
    1418:	0c000000 	jal	0 <func_80AF2550>
    141c:	00000000 	nop
    1420:	10000017 	b	1480 <func_80AF390C+0xc4>
    1424:	8fbf0014 	lw	ra,20(sp)
    1428:	844f145c 	lh	t7,5212(v0)
    142c:	3c014248 	lui	at,0x4248
    1430:	44819000 	mtc1	at,$f18
    1434:	448f4000 	mtc1	t7,$f8
    1438:	c4ea02c4 	lwc1	$f10,708(a3)
    143c:	2418403e 	li	t8,16446
    1440:	46804420 	cvt.s.w	$f16,$f8
    1444:	3305ffff 	andi	a1,t8,0xffff
    1448:	00003025 	move	a2,zero
    144c:	46128100 	add.s	$f4,$f16,$f18
    1450:	460a203c 	c.lt.s	$f4,$f10
    1454:	00000000 	nop
    1458:	45020009 	bc1fl	1480 <func_80AF390C+0xc4>
    145c:	8fbf0014 	lw	ra,20(sp)
    1460:	a4f8010e 	sh	t8,270(a3)
    1464:	afa70018 	sw	a3,24(sp)
    1468:	0c000000 	jal	0 <func_80AF2550>
    146c:	8fa4001c 	lw	a0,28(sp)
    1470:	8fa70018 	lw	a3,24(sp)
    1474:	24190011 	li	t9,17
    1478:	acf902a8 	sw	t9,680(a3)
    147c:	8fbf0014 	lw	ra,20(sp)
    1480:	27bd0018 	addiu	sp,sp,24
    1484:	03e00008 	jr	ra
    1488:	00000000 	nop

0000148c <func_80AF39DC>:
    148c:	27bdffc0 	addiu	sp,sp,-64
    1490:	afb10018 	sw	s1,24(sp)
    1494:	00808825 	move	s1,a0
    1498:	afbf001c 	sw	ra,28(sp)
    149c:	afb00014 	sw	s0,20(sp)
    14a0:	24a420d8 	addiu	a0,a1,8408
    14a4:	00a08025 	move	s0,a1
    14a8:	0c000000 	jal	0 <func_80AF2550>
    14ac:	afa40024 	sw	a0,36(sp)
    14b0:	24030003 	li	v1,3
    14b4:	14620023 	bne	v1,v0,1544 <func_80AF39DC+0xb8>
    14b8:	a3a20033 	sb	v0,51(sp)
    14bc:	922e02c3 	lbu	t6,707(s1)
    14c0:	3c040000 	lui	a0,0x0
    14c4:	506e0020 	beql	v1,t6,1548 <func_80AF39DC+0xbc>
    14c8:	93ac0033 	lbu	t4,51(sp)
    14cc:	0c000000 	jal	0 <func_80AF2550>
    14d0:	24840084 	addiu	a0,a0,132
    14d4:	922f02c2 	lbu	t7,706(s1)
    14d8:	24010006 	li	at,6
    14dc:	24030003 	li	v1,3
    14e0:	25f80001 	addiu	t8,t7,1
    14e4:	331900ff 	andi	t9,t8,0xff
    14e8:	0321001a 	div	zero,t9,at
    14ec:	00004010 	mfhi	t0
    14f0:	a23802c2 	sb	t8,706(s1)
    14f4:	14680013 	bne	v1,t0,1544 <func_80AF39DC+0xb8>
    14f8:	3c040000 	lui	a0,0x0
    14fc:	8e031c44 	lw	v1,7236(s0)
    1500:	24840098 	addiu	a0,a0,152
    1504:	0c000000 	jal	0 <func_80AF2550>
    1508:	afa3002c 	sw	v1,44(sp)
    150c:	860907a0 	lh	t1,1952(s0)
    1510:	00095080 	sll	t2,t1,0x2
    1514:	020a5821 	addu	t3,s0,t2
    1518:	0c000000 	jal	0 <func_80AF2550>
    151c:	8d640790 	lw	a0,1936(t3)
    1520:	3c01444d 	lui	at,0x444d
    1524:	8fa3002c 	lw	v1,44(sp)
    1528:	44812000 	mtc1	at,$f4
    152c:	3c014334 	lui	at,0x4334
    1530:	44803000 	mtc1	zero,$f6
    1534:	44814000 	mtc1	at,$f8
    1538:	e4640024 	swc1	$f4,36(v1)
    153c:	e4660028 	swc1	$f6,40(v1)
    1540:	e468002c 	swc1	$f8,44(v1)
    1544:	93ac0033 	lbu	t4,51(sp)
    1548:	a22c02c3 	sb	t4,707(s1)
    154c:	0c000000 	jal	0 <func_80AF2550>
    1550:	8fa40024 	lw	a0,36(sp)
    1554:	24010002 	li	at,2
    1558:	14410007 	bne	v0,at,1578 <func_80AF39DC+0xec>
    155c:	240d0012 	li	t5,18
    1560:	ae2d02a8 	sw	t5,680(s1)
    1564:	860e07a0 	lh	t6,1952(s0)
    1568:	000e7880 	sll	t7,t6,0x2
    156c:	020fc021 	addu	t8,s0,t7
    1570:	0c000000 	jal	0 <func_80AF2550>
    1574:	8f040790 	lw	a0,1936(t8)
    1578:	8fbf001c 	lw	ra,28(sp)
    157c:	8fb00014 	lw	s0,20(sp)
    1580:	8fb10018 	lw	s1,24(sp)
    1584:	03e00008 	jr	ra
    1588:	27bd0040 	addiu	sp,sp,64

0000158c <func_80AF3ADC>:
    158c:	27bdffe0 	addiu	sp,sp,-32
    1590:	afbf001c 	sw	ra,28(sp)
    1594:	afa50024 	sw	a1,36(sp)
    1598:	3c013f80 	lui	at,0x3f80
    159c:	44813000 	mtc1	at,$f6
    15a0:	c48402c4 	lwc1	$f4,708(a0)
    15a4:	3c0e0000 	lui	t6,0x0
    15a8:	3c0142c8 	lui	at,0x42c8
    15ac:	46062200 	add.s	$f8,$f4,$f6
    15b0:	44819000 	mtc1	at,$f18
    15b4:	3c050000 	lui	a1,0x0
    15b8:	24a50000 	addiu	a1,a1,0
    15bc:	e48802c4 	swc1	$f8,708(a0)
    15c0:	8dce0000 	lw	t6,0(t6)
    15c4:	c48602c4 	lwc1	$f6,708(a0)
    15c8:	00003025 	move	a2,zero
    15cc:	85cf145e 	lh	t7,5214(t6)
    15d0:	3c07c140 	lui	a3,0xc140
    15d4:	448f5000 	mtc1	t7,$f10
    15d8:	00000000 	nop
    15dc:	46805420 	cvt.s.w	$f16,$f10
    15e0:	46128100 	add.s	$f4,$f16,$f18
    15e4:	4606203c 	c.lt.s	$f4,$f6
    15e8:	00000000 	nop
    15ec:	4502000a 	bc1fl	1618 <func_80AF3ADC+0x8c>
    15f0:	8fbf001c 	lw	ra,28(sp)
    15f4:	afa00010 	sw	zero,16(sp)
    15f8:	0c000000 	jal	0 <func_80AF2550>
    15fc:	afa40020 	sw	a0,32(sp)
    1600:	8fa40020 	lw	a0,32(sp)
    1604:	24180013 	li	t8,19
    1608:	ac9802a8 	sw	t8,680(a0)
    160c:	0c000000 	jal	0 <func_80AF2550>
    1610:	8fa50024 	lw	a1,36(sp)
    1614:	8fbf001c 	lw	ra,28(sp)
    1618:	27bd0020 	addiu	sp,sp,32
    161c:	03e00008 	jr	ra
    1620:	00000000 	nop

00001624 <func_80AF3B74>:
    1624:	3c020000 	lui	v0,0x0
    1628:	8c420000 	lw	v0,0(v0)
    162c:	27bdffe8 	addiu	sp,sp,-24
    1630:	afbf0014 	sw	ra,20(sp)
    1634:	afa5001c 	sw	a1,28(sp)
    1638:	8459145a 	lh	t9,5210(v0)
    163c:	844e1458 	lh	t6,5208(v0)
    1640:	948c02c0 	lhu	t4,704(a0)
    1644:	27290028 	addiu	t1,t9,40
    1648:	25d80096 	addiu	t8,t6,150
    164c:	03095021 	addu	t2,t8,t1
    1650:	314bffff 	andi	t3,t2,0xffff
    1654:	016c082a 	slt	at,t3,t4
    1658:	50200004 	beqzl	at,166c <func_80AF3B74+0x48>
    165c:	8fbf0014 	lw	ra,20(sp)
    1660:	0c000000 	jal	0 <func_80AF2550>
    1664:	00000000 	nop
    1668:	8fbf0014 	lw	ra,20(sp)
    166c:	27bd0018 	addiu	sp,sp,24
    1670:	03e00008 	jr	ra
    1674:	00000000 	nop

00001678 <func_80AF3BC8>:
    1678:	27bdffe8 	addiu	sp,sp,-24
    167c:	afbf0014 	sw	ra,20(sp)
    1680:	afa40018 	sw	a0,24(sp)
    1684:	0c000000 	jal	0 <func_80AF2550>
    1688:	afa5001c 	sw	a1,28(sp)
    168c:	8fa40018 	lw	a0,24(sp)
    1690:	0c000000 	jal	0 <func_80AF2550>
    1694:	3c054248 	lui	a1,0x4248
    1698:	8fa40018 	lw	a0,24(sp)
    169c:	0c000000 	jal	0 <func_80AF2550>
    16a0:	8fa5001c 	lw	a1,28(sp)
    16a4:	8fbf0014 	lw	ra,20(sp)
    16a8:	27bd0018 	addiu	sp,sp,24
    16ac:	03e00008 	jr	ra
    16b0:	00000000 	nop

000016b4 <func_80AF3C04>:
    16b4:	27bdffe0 	addiu	sp,sp,-32
    16b8:	afbf001c 	sw	ra,28(sp)
    16bc:	afb00018 	sw	s0,24(sp)
    16c0:	00808025 	move	s0,a0
    16c4:	0c000000 	jal	0 <func_80AF2550>
    16c8:	afa50024 	sw	a1,36(sp)
    16cc:	02002025 	move	a0,s0
    16d0:	0c000000 	jal	0 <func_80AF2550>
    16d4:	8fa50024 	lw	a1,36(sp)
    16d8:	0c000000 	jal	0 <func_80AF2550>
    16dc:	02002025 	move	a0,s0
    16e0:	0c000000 	jal	0 <func_80AF2550>
    16e4:	02002025 	move	a0,s0
    16e8:	02002025 	move	a0,s0
    16ec:	0c000000 	jal	0 <func_80AF2550>
    16f0:	3c054248 	lui	a1,0x4248
    16f4:	02002025 	move	a0,s0
    16f8:	0c000000 	jal	0 <func_80AF2550>
    16fc:	8fa50024 	lw	a1,36(sp)
    1700:	8fbf001c 	lw	ra,28(sp)
    1704:	8fb00018 	lw	s0,24(sp)
    1708:	27bd0020 	addiu	sp,sp,32
    170c:	03e00008 	jr	ra
    1710:	00000000 	nop

00001714 <func_80AF3C64>:
    1714:	27bdffe0 	addiu	sp,sp,-32
    1718:	afbf001c 	sw	ra,28(sp)
    171c:	afb00018 	sw	s0,24(sp)
    1720:	00808025 	move	s0,a0
    1724:	0c000000 	jal	0 <func_80AF2550>
    1728:	afa50024 	sw	a1,36(sp)
    172c:	0c000000 	jal	0 <func_80AF2550>
    1730:	02002025 	move	a0,s0
    1734:	0c000000 	jal	0 <func_80AF2550>
    1738:	02002025 	move	a0,s0
    173c:	02002025 	move	a0,s0
    1740:	0c000000 	jal	0 <func_80AF2550>
    1744:	3c054248 	lui	a1,0x4248
    1748:	02002025 	move	a0,s0
    174c:	0c000000 	jal	0 <func_80AF2550>
    1750:	8fa50024 	lw	a1,36(sp)
    1754:	8fbf001c 	lw	ra,28(sp)
    1758:	8fb00018 	lw	s0,24(sp)
    175c:	27bd0020 	addiu	sp,sp,32
    1760:	03e00008 	jr	ra
    1764:	00000000 	nop

00001768 <func_80AF3CB8>:
    1768:	27bdffe0 	addiu	sp,sp,-32
    176c:	afbf001c 	sw	ra,28(sp)
    1770:	afb00018 	sw	s0,24(sp)
    1774:	00808025 	move	s0,a0
    1778:	0c000000 	jal	0 <func_80AF2550>
    177c:	afa50024 	sw	a1,36(sp)
    1780:	0c000000 	jal	0 <func_80AF2550>
    1784:	02002025 	move	a0,s0
    1788:	0c000000 	jal	0 <func_80AF2550>
    178c:	02002025 	move	a0,s0
    1790:	02002025 	move	a0,s0
    1794:	0c000000 	jal	0 <func_80AF2550>
    1798:	3c054248 	lui	a1,0x4248
    179c:	02002025 	move	a0,s0
    17a0:	0c000000 	jal	0 <func_80AF2550>
    17a4:	8fa50024 	lw	a1,36(sp)
    17a8:	8fbf001c 	lw	ra,28(sp)
    17ac:	8fb00018 	lw	s0,24(sp)
    17b0:	27bd0020 	addiu	sp,sp,32
    17b4:	03e00008 	jr	ra
    17b8:	00000000 	nop

000017bc <func_80AF3D0C>:
    17bc:	27bdffe0 	addiu	sp,sp,-32
    17c0:	afbf001c 	sw	ra,28(sp)
    17c4:	afb00018 	sw	s0,24(sp)
    17c8:	00808025 	move	s0,a0
    17cc:	0c000000 	jal	0 <func_80AF2550>
    17d0:	afa50024 	sw	a1,36(sp)
    17d4:	0c000000 	jal	0 <func_80AF2550>
    17d8:	02002025 	move	a0,s0
    17dc:	0c000000 	jal	0 <func_80AF2550>
    17e0:	02002025 	move	a0,s0
    17e4:	02002025 	move	a0,s0
    17e8:	0c000000 	jal	0 <func_80AF2550>
    17ec:	3c054248 	lui	a1,0x4248
    17f0:	02002025 	move	a0,s0
    17f4:	0c000000 	jal	0 <func_80AF2550>
    17f8:	8fa50024 	lw	a1,36(sp)
    17fc:	8fbf001c 	lw	ra,28(sp)
    1800:	8fb00018 	lw	s0,24(sp)
    1804:	27bd0020 	addiu	sp,sp,32
    1808:	03e00008 	jr	ra
    180c:	00000000 	nop

00001810 <func_80AF3D60>:
    1810:	27bdffe0 	addiu	sp,sp,-32
    1814:	afbf001c 	sw	ra,28(sp)
    1818:	afb00018 	sw	s0,24(sp)
    181c:	00808025 	move	s0,a0
    1820:	0c000000 	jal	0 <func_80AF2550>
    1824:	afa50024 	sw	a1,36(sp)
    1828:	02002025 	move	a0,s0
    182c:	0c000000 	jal	0 <func_80AF2550>
    1830:	8fa50024 	lw	a1,36(sp)
    1834:	0c000000 	jal	0 <func_80AF2550>
    1838:	02002025 	move	a0,s0
    183c:	0c000000 	jal	0 <func_80AF2550>
    1840:	02002025 	move	a0,s0
    1844:	02002025 	move	a0,s0
    1848:	0c000000 	jal	0 <func_80AF2550>
    184c:	3c054248 	lui	a1,0x4248
    1850:	02002025 	move	a0,s0
    1854:	0c000000 	jal	0 <func_80AF2550>
    1858:	8fa50024 	lw	a1,36(sp)
    185c:	8fbf001c 	lw	ra,28(sp)
    1860:	8fb00018 	lw	s0,24(sp)
    1864:	27bd0020 	addiu	sp,sp,32
    1868:	03e00008 	jr	ra
    186c:	00000000 	nop

00001870 <EnRu2_Update>:
    1870:	27bdffe8 	addiu	sp,sp,-24
    1874:	afbf0014 	sw	ra,20(sp)
    1878:	8c8202a8 	lw	v0,680(a0)
    187c:	04400008 	bltz	v0,18a0 <EnRu2_Update+0x30>
    1880:	28410014 	slti	at,v0,20
    1884:	10200006 	beqz	at,18a0 <EnRu2_Update+0x30>
    1888:	00027080 	sll	t6,v0,0x2
    188c:	3c030000 	lui	v1,0x0
    1890:	006e1821 	addu	v1,v1,t6
    1894:	8c630fdc 	lw	v1,4060(v1)
    1898:	14600006 	bnez	v1,18b4 <EnRu2_Update+0x44>
    189c:	00000000 	nop
    18a0:	3c040000 	lui	a0,0x0
    18a4:	0c000000 	jal	0 <func_80AF2550>
    18a8:	248400a8 	addiu	a0,a0,168
    18ac:	10000004 	b	18c0 <EnRu2_Update+0x50>
    18b0:	8fbf0014 	lw	ra,20(sp)
    18b4:	0060f809 	jalr	v1
    18b8:	00000000 	nop
    18bc:	8fbf0014 	lw	ra,20(sp)
    18c0:	27bd0018 	addiu	sp,sp,24
    18c4:	03e00008 	jr	ra
    18c8:	00000000 	nop

000018cc <EnRu2_Init>:
    18cc:	27bdffd0 	addiu	sp,sp,-48
    18d0:	afb10028 	sw	s1,40(sp)
    18d4:	afb00024 	sw	s0,36(sp)
    18d8:	00808025 	move	s0,a0
    18dc:	00a08825 	move	s1,a1
    18e0:	afbf002c 	sw	ra,44(sp)
    18e4:	3c060000 	lui	a2,0x0
    18e8:	24c60000 	addiu	a2,a2,0
    18ec:	24050000 	li	a1,0
    18f0:	248400b4 	addiu	a0,a0,180
    18f4:	0c000000 	jal	0 <func_80AF2550>
    18f8:	3c0741f0 	lui	a3,0x41f0
    18fc:	02002025 	move	a0,s0
    1900:	0c000000 	jal	0 <func_80AF2550>
    1904:	02202825 	move	a1,s1
    1908:	3c060000 	lui	a2,0x0
    190c:	260e0190 	addiu	t6,s0,400
    1910:	260f021a 	addiu	t7,s0,538
    1914:	24180017 	li	t8,23
    1918:	afb80018 	sw	t8,24(sp)
    191c:	afaf0014 	sw	t7,20(sp)
    1920:	afae0010 	sw	t6,16(sp)
    1924:	24c60000 	addiu	a2,a2,0
    1928:	02202025 	move	a0,s1
    192c:	2605014c 	addiu	a1,s0,332
    1930:	0c000000 	jal	0 <func_80AF2550>
    1934:	00003825 	move	a3,zero
    1938:	0c000000 	jal	0 <func_80AF2550>
    193c:	02002025 	move	a0,s0
    1940:	24010002 	li	at,2
    1944:	10410009 	beq	v0,at,196c <EnRu2_Init+0xa0>
    1948:	02002025 	move	a0,s0
    194c:	24010003 	li	at,3
    1950:	1041000a 	beq	v0,at,197c <EnRu2_Init+0xb0>
    1954:	02002025 	move	a0,s0
    1958:	24010004 	li	at,4
    195c:	1041000b 	beq	v0,at,198c <EnRu2_Init+0xc0>
    1960:	02002025 	move	a0,s0
    1964:	1000000d 	b	199c <EnRu2_Init+0xd0>
    1968:	02002025 	move	a0,s0
    196c:	0c000000 	jal	0 <func_80AF2550>
    1970:	02202825 	move	a1,s1
    1974:	1000000c 	b	19a8 <EnRu2_Init+0xdc>
    1978:	24190003 	li	t9,3
    197c:	0c000000 	jal	0 <func_80AF2550>
    1980:	02202825 	move	a1,s1
    1984:	10000008 	b	19a8 <EnRu2_Init+0xdc>
    1988:	24190003 	li	t9,3
    198c:	0c000000 	jal	0 <func_80AF2550>
    1990:	02202825 	move	a1,s1
    1994:	10000004 	b	19a8 <EnRu2_Init+0xdc>
    1998:	24190003 	li	t9,3
    199c:	0c000000 	jal	0 <func_80AF2550>
    19a0:	02202825 	move	a1,s1
    19a4:	24190003 	li	t9,3
    19a8:	a20002c2 	sb	zero,706(s0)
    19ac:	a21902c3 	sb	t9,707(s0)
    19b0:	8fbf002c 	lw	ra,44(sp)
    19b4:	8fb10028 	lw	s1,40(sp)
    19b8:	8fb00024 	lw	s0,36(sp)
    19bc:	03e00008 	jr	ra
    19c0:	27bd0030 	addiu	sp,sp,48

000019c4 <func_80AF3F14>:
    19c4:	afa40000 	sw	a0,0(sp)
    19c8:	03e00008 	jr	ra
    19cc:	afa50004 	sw	a1,4(sp)

000019d0 <func_80AF3F20>:
    19d0:	27bdff90 	addiu	sp,sp,-112
    19d4:	afbf0024 	sw	ra,36(sp)
    19d8:	afa40070 	sw	a0,112(sp)
    19dc:	afa50074 	sw	a1,116(sp)
    19e0:	848202a4 	lh	v0,676(a0)
    19e4:	3c180000 	lui	t8,0x0
    19e8:	3c060000 	lui	a2,0x0
    19ec:	00027880 	sll	t7,v0,0x2
    19f0:	030fc021 	addu	t8,t8,t7
    19f4:	8f18002c 	lw	t8,44(t8)
    19f8:	24c600e4 	addiu	a2,a2,228
    19fc:	27a40048 	addiu	a0,sp,72
    1a00:	afb80060 	sw	t8,96(sp)
    1a04:	8ca50000 	lw	a1,0(a1)
    1a08:	24070282 	li	a3,642
    1a0c:	0c000000 	jal	0 <func_80AF2550>
    1a10:	afa50058 	sw	a1,88(sp)
    1a14:	8fa90074 	lw	t1,116(sp)
    1a18:	0c000000 	jal	0 <func_80AF2550>
    1a1c:	8d240000 	lw	a0,0(t1)
    1a20:	8fa80058 	lw	t0,88(sp)
    1a24:	8fa70060 	lw	a3,96(sp)
    1a28:	3c0bdb06 	lui	t3,0xdb06
    1a2c:	8d0202c0 	lw	v0,704(t0)
    1a30:	00076100 	sll	t4,a3,0x4
    1a34:	000c6f02 	srl	t5,t4,0x1c
    1a38:	3c0f0000 	lui	t7,0x0
    1a3c:	244a0008 	addiu	t2,v0,8
    1a40:	25ef0000 	addiu	t7,t7,0
    1a44:	000d7080 	sll	t6,t5,0x2
    1a48:	356b0020 	ori	t3,t3,0x20
    1a4c:	ad0a02c0 	sw	t2,704(t0)
    1a50:	01cf2021 	addu	a0,t6,t7
    1a54:	ac4b0000 	sw	t3,0(v0)
    1a58:	8c980000 	lw	t8,0(a0)
    1a5c:	3c0100ff 	lui	at,0xff
    1a60:	3421ffff 	ori	at,at,0xffff
    1a64:	00e12824 	and	a1,a3,at
    1a68:	3c068000 	lui	a2,0x8000
    1a6c:	0305c821 	addu	t9,t8,a1
    1a70:	03264821 	addu	t1,t9,a2
    1a74:	ac490004 	sw	t1,4(v0)
    1a78:	8d0202c0 	lw	v0,704(t0)
    1a7c:	3c0bdb06 	lui	t3,0xdb06
    1a80:	356b0024 	ori	t3,t3,0x24
    1a84:	244a0008 	addiu	t2,v0,8
    1a88:	ad0a02c0 	sw	t2,704(t0)
    1a8c:	ac4b0000 	sw	t3,0(v0)
    1a90:	8c8c0000 	lw	t4,0(a0)
    1a94:	241900ff 	li	t9,255
    1a98:	3c18fb00 	lui	t8,0xfb00
    1a9c:	01856821 	addu	t5,t4,a1
    1aa0:	01a67021 	addu	t6,t5,a2
    1aa4:	ac4e0004 	sw	t6,4(v0)
    1aa8:	8d0202c0 	lw	v0,704(t0)
    1aac:	3c0b0000 	lui	t3,0x0
    1ab0:	3c0adb06 	lui	t2,0xdb06
    1ab4:	244f0008 	addiu	t7,v0,8
    1ab8:	ad0f02c0 	sw	t7,704(t0)
    1abc:	ac590004 	sw	t9,4(v0)
    1ac0:	ac580000 	sw	t8,0(v0)
    1ac4:	8d0202c0 	lw	v0,704(t0)
    1ac8:	354a0030 	ori	t2,t2,0x30
    1acc:	256b0010 	addiu	t3,t3,16
    1ad0:	24490008 	addiu	t1,v0,8
    1ad4:	ad0902c0 	sw	t1,704(t0)
    1ad8:	ac4b0004 	sw	t3,4(v0)
    1adc:	ac4a0000 	sw	t2,0(v0)
    1ae0:	8fa30070 	lw	v1,112(sp)
    1ae4:	8fa40074 	lw	a0,116(sp)
    1ae8:	2462014c 	addiu	v0,v1,332
    1aec:	8c450004 	lw	a1,4(v0)
    1af0:	8c460020 	lw	a2,32(v0)
    1af4:	90470002 	lbu	a3,2(v0)
    1af8:	afa00014 	sw	zero,20(sp)
    1afc:	afa00010 	sw	zero,16(sp)
    1b00:	0c000000 	jal	0 <func_80AF2550>
    1b04:	afa30018 	sw	v1,24(sp)
    1b08:	8fac0074 	lw	t4,116(sp)
    1b0c:	3c060000 	lui	a2,0x0
    1b10:	24c600f4 	addiu	a2,a2,244
    1b14:	27a40048 	addiu	a0,sp,72
    1b18:	24070297 	li	a3,663
    1b1c:	0c000000 	jal	0 <func_80AF2550>
    1b20:	8d850000 	lw	a1,0(t4)
    1b24:	8fbf0024 	lw	ra,36(sp)
    1b28:	27bd0070 	addiu	sp,sp,112
    1b2c:	03e00008 	jr	ra
    1b30:	00000000 	nop

00001b34 <EnRu2_Draw>:
    1b34:	27bdffe8 	addiu	sp,sp,-24
    1b38:	afbf0014 	sw	ra,20(sp)
    1b3c:	8c8202ac 	lw	v0,684(a0)
    1b40:	04400008 	bltz	v0,1b64 <EnRu2_Draw+0x30>
    1b44:	28410003 	slti	at,v0,3
    1b48:	10200006 	beqz	at,1b64 <EnRu2_Draw+0x30>
    1b4c:	00027080 	sll	t6,v0,0x2
    1b50:	3c030000 	lui	v1,0x0
    1b54:	006e1821 	addu	v1,v1,t6
    1b58:	8c63102c 	lw	v1,4140(v1)
    1b5c:	14600006 	bnez	v1,1b78 <EnRu2_Draw+0x44>
    1b60:	00000000 	nop
    1b64:	3c040000 	lui	a0,0x0
    1b68:	0c000000 	jal	0 <func_80AF2550>
    1b6c:	24840104 	addiu	a0,a0,260
    1b70:	10000004 	b	1b84 <EnRu2_Draw+0x50>
    1b74:	8fbf0014 	lw	ra,20(sp)
    1b78:	0060f809 	jalr	v1
    1b7c:	00000000 	nop
    1b80:	8fbf0014 	lw	ra,20(sp)
    1b84:	27bd0018 	addiu	sp,sp,24
    1b88:	03e00008 	jr	ra
    1b8c:	00000000 	nop
