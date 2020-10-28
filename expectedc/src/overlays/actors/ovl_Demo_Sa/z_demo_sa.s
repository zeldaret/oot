
build/src/overlays/actors/ovl_Demo_Sa/z_demo_sa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoSa_Destroy>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	0c000000 	jal	0 <DemoSa_Destroy>
       c:	2484014c 	addiu	a0,a0,332
      10:	8fbf0014 	lw	ra,20(sp)
      14:	27bd0018 	addiu	sp,sp,24
      18:	03e00008 	jr	ra
      1c:	00000000 	nop

00000020 <func_8098E480>:
      20:	27bdffc8 	addiu	sp,sp,-56
      24:	afbf0014 	sw	ra,20(sp)
      28:	848e0192 	lh	t6,402(a0)
      2c:	00803025 	move	a2,a0
      30:	24c30192 	addiu	v1,a2,402
      34:	15c00003 	bnez	t6,44 <func_8098E480+0x24>
      38:	00001025 	move	v0,zero
      3c:	10000005 	b	54 <func_8098E480+0x34>
      40:	24830192 	addiu	v1,a0,402
      44:	846f0000 	lh	t7,0(v1)
      48:	25f8ffff 	addiu	t8,t7,-1
      4c:	a4780000 	sh	t8,0(v1)
      50:	84620000 	lh	v0,0(v1)
      54:	14400008 	bnez	v0,78 <func_8098E480+0x58>
      58:	2404003c 	li	a0,60
      5c:	2405003c 	li	a1,60
      60:	afa3001c 	sw	v1,28(sp)
      64:	0c000000 	jal	0 <DemoSa_Destroy>
      68:	afa60038 	sw	a2,56(sp)
      6c:	8fa3001c 	lw	v1,28(sp)
      70:	8fa60038 	lw	a2,56(sp)
      74:	a4620000 	sh	v0,0(v1)
      78:	84790000 	lh	t9,0(v1)
      7c:	24c20190 	addiu	v0,a2,400
      80:	a4590000 	sh	t9,0(v0)
      84:	84480000 	lh	t0,0(v0)
      88:	29010003 	slti	at,t0,3
      8c:	54200003 	bnezl	at,9c <func_8098E480+0x7c>
      90:	8fbf0014 	lw	ra,20(sp)
      94:	a4400000 	sh	zero,0(v0)
      98:	8fbf0014 	lw	ra,20(sp)
      9c:	27bd0038 	addiu	sp,sp,56
      a0:	03e00008 	jr	ra
      a4:	00000000 	nop

000000a8 <func_8098E508>:
      a8:	afa50004 	sw	a1,4(sp)
      ac:	00052c00 	sll	a1,a1,0x10
      b0:	00052c03 	sra	a1,a1,0x10
      b4:	03e00008 	jr	ra
      b8:	a4850190 	sh	a1,400(a0)

000000bc <func_8098E51C>:
      bc:	afa50004 	sw	a1,4(sp)
      c0:	00052c00 	sll	a1,a1,0x10
      c4:	00052c03 	sra	a1,a1,0x10
      c8:	03e00008 	jr	ra
      cc:	a4850194 	sh	a1,404(a0)

000000d0 <func_8098E530>:
      d0:	44802000 	mtc1	zero,$f4
      d4:	240e0007 	li	t6,7
      d8:	ac8e0198 	sw	t6,408(a0)
      dc:	ac80019c 	sw	zero,412(a0)
      e0:	ac8001a4 	sw	zero,420(a0)
      e4:	ac8001a8 	sw	zero,424(a0)
      e8:	a08000c8 	sb	zero,200(a0)
      ec:	03e00008 	jr	ra
      f0:	e48401a0 	swc1	$f4,416(a0)

000000f4 <func_8098E554>:
      f4:	27bdffe8 	addiu	sp,sp,-24
      f8:	afbf0014 	sw	ra,20(sp)
      fc:	90ae1d6c 	lbu	t6,7532(a1)
     100:	3c0f0000 	lui	t7,0x0
     104:	3c190000 	lui	t9,0x0
     108:	15c0000d 	bnez	t6,140 <func_8098E554+0x4c>
     10c:	00000000 	nop
     110:	8def0000 	lw	t7,0(t7)
     114:	51e00011 	beqzl	t7,15c <func_8098E554+0x68>
     118:	8fbf0014 	lw	ra,20(sp)
     11c:	8498001c 	lh	t8,28(a0)
     120:	24010002 	li	at,2
     124:	17010003 	bne	t8,at,134 <func_8098E554+0x40>
     128:	00000000 	nop
     12c:	0c000000 	jal	0 <DemoSa_Destroy>
     130:	00000000 	nop
     134:	3c010000 	lui	at,0x0
     138:	10000007 	b	158 <func_8098E554+0x64>
     13c:	ac200000 	sw	zero,0(at)
     140:	8f390000 	lw	t9,0(t9)
     144:	24080001 	li	t0,1
     148:	3c010000 	lui	at,0x0
     14c:	57200003 	bnezl	t9,15c <func_8098E554+0x68>
     150:	8fbf0014 	lw	ra,20(sp)
     154:	ac280000 	sw	t0,0(at)
     158:	8fbf0014 	lw	ra,20(sp)
     15c:	27bd0018 	addiu	sp,sp,24
     160:	03e00008 	jr	ra
     164:	00000000 	nop

00000168 <func_8098E5C8>:
     168:	27bdffe0 	addiu	sp,sp,-32
     16c:	3c0141f0 	lui	at,0x41f0
     170:	44810000 	mtc1	at,$f0
     174:	afa50024 	sw	a1,36(sp)
     178:	00802825 	move	a1,a0
     17c:	afbf001c 	sw	ra,28(sp)
     180:	afa40020 	sw	a0,32(sp)
     184:	240e0005 	li	t6,5
     188:	44070000 	mfc1	a3,$f0
     18c:	afae0014 	sw	t6,20(sp)
     190:	8fa40024 	lw	a0,36(sp)
     194:	3c064296 	lui	a2,0x4296
     198:	0c000000 	jal	0 <DemoSa_Destroy>
     19c:	e7a00010 	swc1	$f0,16(sp)
     1a0:	8fbf001c 	lw	ra,28(sp)
     1a4:	27bd0020 	addiu	sp,sp,32
     1a8:	03e00008 	jr	ra
     1ac:	00000000 	nop

000001b0 <DemoSa_FrameUpdateMatrix>:
     1b0:	27bdffe8 	addiu	sp,sp,-24
     1b4:	afbf0014 	sw	ra,20(sp)
     1b8:	0c000000 	jal	0 <DemoSa_Destroy>
     1bc:	2484014c 	addiu	a0,a0,332
     1c0:	8fbf0014 	lw	ra,20(sp)
     1c4:	27bd0018 	addiu	sp,sp,24
     1c8:	03e00008 	jr	ra
     1cc:	00000000 	nop

000001d0 <DemoSa_GetNpcAction>:
     1d0:	908e1d6c 	lbu	t6,7532(a0)
     1d4:	00057880 	sll	t7,a1,0x2
     1d8:	008fc021 	addu	t8,a0,t7
     1dc:	11c00003 	beqz	t6,1ec <DemoSa_GetNpcAction+0x1c>
     1e0:	00001025 	move	v0,zero
     1e4:	03e00008 	jr	ra
     1e8:	8f021d8c 	lw	v0,7564(t8)
     1ec:	03e00008 	jr	ra
     1f0:	00000000 	nop

000001f4 <func_8098E654>:
     1f4:	27bdffe8 	addiu	sp,sp,-24
     1f8:	afa40018 	sw	a0,24(sp)
     1fc:	afbf0014 	sw	ra,20(sp)
     200:	afa5001c 	sw	a1,28(sp)
     204:	00a02025 	move	a0,a1
     208:	afa60020 	sw	a2,32(sp)
     20c:	0c000000 	jal	0 <DemoSa_Destroy>
     210:	00e02825 	move	a1,a3
     214:	10400007 	beqz	v0,234 <func_8098E654+0x40>
     218:	8fbf0014 	lw	ra,20(sp)
     21c:	97ae0022 	lhu	t6,34(sp)
     220:	944f0000 	lhu	t7,0(v0)
     224:	55cf0004 	bnel	t6,t7,238 <func_8098E654+0x44>
     228:	00001025 	move	v0,zero
     22c:	10000002 	b	238 <func_8098E654+0x44>
     230:	24020001 	li	v0,1
     234:	00001025 	move	v0,zero
     238:	03e00008 	jr	ra
     23c:	27bd0018 	addiu	sp,sp,24

00000240 <func_8098E6A0>:
     240:	27bdffe8 	addiu	sp,sp,-24
     244:	afa40018 	sw	a0,24(sp)
     248:	afbf0014 	sw	ra,20(sp)
     24c:	afa5001c 	sw	a1,28(sp)
     250:	00a02025 	move	a0,a1
     254:	afa60020 	sw	a2,32(sp)
     258:	0c000000 	jal	0 <DemoSa_Destroy>
     25c:	00e02825 	move	a1,a3
     260:	10400007 	beqz	v0,280 <func_8098E6A0+0x40>
     264:	8fbf0014 	lw	ra,20(sp)
     268:	97ae0022 	lhu	t6,34(sp)
     26c:	944f0000 	lhu	t7,0(v0)
     270:	51cf0004 	beql	t6,t7,284 <func_8098E6A0+0x44>
     274:	00001025 	move	v0,zero
     278:	10000002 	b	284 <func_8098E6A0+0x44>
     27c:	24020001 	li	v0,1
     280:	00001025 	move	v0,zero
     284:	03e00008 	jr	ra
     288:	27bd0018 	addiu	sp,sp,24

0000028c <func_8098E6EC>:
     28c:	27bdffe8 	addiu	sp,sp,-24
     290:	00803825 	move	a3,a0
     294:	afbf0014 	sw	ra,20(sp)
     298:	afa5001c 	sw	a1,28(sp)
     29c:	00a02025 	move	a0,a1
     2a0:	00c02825 	move	a1,a2
     2a4:	0c000000 	jal	0 <DemoSa_Destroy>
     2a8:	afa70018 	sw	a3,24(sp)
     2ac:	10400013 	beqz	v0,2fc <func_8098E6EC+0x70>
     2b0:	8fa70018 	lw	a3,24(sp)
     2b4:	8c4e000c 	lw	t6,12(v0)
     2b8:	448e2000 	mtc1	t6,$f4
     2bc:	00000000 	nop
     2c0:	468021a0 	cvt.s.w	$f6,$f4
     2c4:	e4e60024 	swc1	$f6,36(a3)
     2c8:	8c4f0010 	lw	t7,16(v0)
     2cc:	448f4000 	mtc1	t7,$f8
     2d0:	00000000 	nop
     2d4:	468042a0 	cvt.s.w	$f10,$f8
     2d8:	e4ea0028 	swc1	$f10,40(a3)
     2dc:	8c580014 	lw	t8,20(v0)
     2e0:	44988000 	mtc1	t8,$f16
     2e4:	00000000 	nop
     2e8:	468084a0 	cvt.s.w	$f18,$f16
     2ec:	e4f2002c 	swc1	$f18,44(a3)
     2f0:	84430008 	lh	v1,8(v0)
     2f4:	a4e300b6 	sh	v1,182(a3)
     2f8:	a4e30032 	sh	v1,50(a3)
     2fc:	8fbf0014 	lw	ra,20(sp)
     300:	27bd0018 	addiu	sp,sp,24
     304:	03e00008 	jr	ra
     308:	00000000 	nop

0000030c <func_8098E76C>:
     30c:	27bdffd8 	addiu	sp,sp,-40
     310:	afbf0024 	sw	ra,36(sp)
     314:	afa40028 	sw	a0,40(sp)
     318:	afa5002c 	sw	a1,44(sp)
     31c:	afa60030 	sw	a2,48(sp)
     320:	afa70034 	sw	a3,52(sp)
     324:	0c000000 	jal	0 <DemoSa_Destroy>
     328:	00a02025 	move	a0,a1
     32c:	8fae0038 	lw	t6,56(sp)
     330:	8fa40028 	lw	a0,40(sp)
     334:	8fa5002c 	lw	a1,44(sp)
     338:	15c00007 	bnez	t6,358 <func_8098E76C+0x4c>
     33c:	2484014c 	addiu	a0,a0,332
     340:	44822000 	mtc1	v0,$f4
     344:	3c013f80 	lui	at,0x3f80
     348:	44800000 	mtc1	zero,$f0
     34c:	44816000 	mtc1	at,$f12
     350:	10000006 	b	36c <func_8098E76C+0x60>
     354:	468020a0 	cvt.s.w	$f2,$f4
     358:	44823000 	mtc1	v0,$f6
     35c:	3c01bf80 	lui	at,0xbf80
     360:	44801000 	mtc1	zero,$f2
     364:	44816000 	mtc1	at,$f12
     368:	46803020 	cvt.s.w	$f0,$f6
     36c:	93af0033 	lbu	t7,51(sp)
     370:	c7a80034 	lwc1	$f8,52(sp)
     374:	44066000 	mfc1	a2,$f12
     378:	44070000 	mfc1	a3,$f0
     37c:	e7a20010 	swc1	$f2,16(sp)
     380:	afaf0014 	sw	t7,20(sp)
     384:	0c000000 	jal	0 <DemoSa_Destroy>
     388:	e7a80018 	swc1	$f8,24(sp)
     38c:	8fbf0024 	lw	ra,36(sp)
     390:	27bd0028 	addiu	sp,sp,40
     394:	03e00008 	jr	ra
     398:	00000000 	nop

0000039c <func_8098E7FC>:
     39c:	27bdffd8 	addiu	sp,sp,-40
     3a0:	afa40028 	sw	a0,40(sp)
     3a4:	afa5002c 	sw	a1,44(sp)
     3a8:	00a02025 	move	a0,a1
     3ac:	8fa50028 	lw	a1,40(sp)
     3b0:	afbf0024 	sw	ra,36(sp)
     3b4:	3c060000 	lui	a2,0x0
     3b8:	3c070000 	lui	a3,0x0
     3bc:	24e70000 	addiu	a3,a3,0
     3c0:	24c60000 	addiu	a2,a2,0
     3c4:	afa00010 	sw	zero,16(sp)
     3c8:	afa00014 	sw	zero,20(sp)
     3cc:	afa00018 	sw	zero,24(sp)
     3d0:	0c000000 	jal	0 <DemoSa_Destroy>
     3d4:	24a5014c 	addiu	a1,a1,332
     3d8:	3c010000 	lui	at,0x0
     3dc:	8fa40028 	lw	a0,40(sp)
     3e0:	c4240154 	lwc1	$f4,340(at)
     3e4:	24050001 	li	a1,1
     3e8:	0c000000 	jal	0 <DemoSa_Destroy>
     3ec:	e48400bc 	swc1	$f4,188(a0)
     3f0:	8fa40028 	lw	a0,40(sp)
     3f4:	0c000000 	jal	0 <DemoSa_Destroy>
     3f8:	00002825 	move	a1,zero
     3fc:	8fbf0024 	lw	ra,36(sp)
     400:	27bd0028 	addiu	sp,sp,40
     404:	03e00008 	jr	ra
     408:	00000000 	nop

0000040c <func_8098E86C>:
     40c:	27bdffc8 	addiu	sp,sp,-56
     410:	afbf0034 	sw	ra,52(sp)
     414:	afa40038 	sw	a0,56(sp)
     418:	c4800024 	lwc1	$f0,36(a0)
     41c:	c4820028 	lwc1	$f2,40(a0)
     420:	c48c002c 	lwc1	$f12,44(a0)
     424:	00a03025 	move	a2,a1
     428:	00802825 	move	a1,a0
     42c:	240e0002 	li	t6,2
     430:	afae0028 	sw	t6,40(sp)
     434:	24c41c24 	addiu	a0,a2,7204
     438:	afa00024 	sw	zero,36(sp)
     43c:	afa00020 	sw	zero,32(sp)
     440:	afa0001c 	sw	zero,28(sp)
     444:	2407005d 	li	a3,93
     448:	e7a00010 	swc1	$f0,16(sp)
     44c:	e7a20014 	swc1	$f2,20(sp)
     450:	0c000000 	jal	0 <DemoSa_Destroy>
     454:	e7ac0018 	swc1	$f12,24(sp)
     458:	8fbf0034 	lw	ra,52(sp)
     45c:	27bd0038 	addiu	sp,sp,56
     460:	03e00008 	jr	ra
     464:	00000000 	nop

00000468 <func_8098E8C8>:
     468:	27bdffc8 	addiu	sp,sp,-56
     46c:	afbf0034 	sw	ra,52(sp)
     470:	afa40038 	sw	a0,56(sp)
     474:	00a03025 	move	a2,a1
     478:	8cc21c44 	lw	v0,7236(a2)
     47c:	3c0142a0 	lui	at,0x42a0
     480:	44813000 	mtc1	at,$f6
     484:	c4440028 	lwc1	$f4,40(v0)
     488:	c4400024 	lwc1	$f0,36(v0)
     48c:	c44c002c 	lwc1	$f12,44(v0)
     490:	46062080 	add.s	$f2,$f4,$f6
     494:	00802825 	move	a1,a0
     498:	240e000b 	li	t6,11
     49c:	afae0028 	sw	t6,40(sp)
     4a0:	24c41c24 	addiu	a0,a2,7204
     4a4:	e7a20014 	swc1	$f2,20(sp)
     4a8:	afa6003c 	sw	a2,60(sp)
     4ac:	afa00024 	sw	zero,36(sp)
     4b0:	afa00020 	sw	zero,32(sp)
     4b4:	afa0001c 	sw	zero,28(sp)
     4b8:	2407008b 	li	a3,139
     4bc:	e7a00010 	swc1	$f0,16(sp)
     4c0:	0c000000 	jal	0 <DemoSa_Destroy>
     4c4:	e7ac0018 	swc1	$f12,24(sp)
     4c8:	8fa4003c 	lw	a0,60(sp)
     4cc:	0c000000 	jal	0 <DemoSa_Destroy>
     4d0:	24050066 	li	a1,102
     4d4:	8fbf0034 	lw	ra,52(sp)
     4d8:	27bd0038 	addiu	sp,sp,56
     4dc:	03e00008 	jr	ra
     4e0:	00000000 	nop

000004e4 <func_8098E944>:
     4e4:	afa50004 	sw	a1,4(sp)
     4e8:	3c010000 	lui	at,0x0
     4ec:	c4260158 	lwc1	$f6,344(at)
     4f0:	c48400bc 	lwc1	$f4,188(a0)
     4f4:	46062200 	add.s	$f8,$f4,$f6
     4f8:	03e00008 	jr	ra
     4fc:	e48800bc 	swc1	$f8,188(a0)

00000500 <func_8098E960>:
     500:	3c020000 	lui	v0,0x0
     504:	24420000 	addiu	v0,v0,0
     508:	904e1415 	lbu	t6,5141(v0)
     50c:	27bdffd8 	addiu	sp,sp,-40
     510:	afbf0014 	sw	ra,20(sp)
     514:	15c00019 	bnez	t6,57c <func_8098E960+0x7c>
     518:	afa40028 	sw	a0,40(sp)
     51c:	8c4f1360 	lw	t7,4960(v0)
     520:	3c080000 	lui	t0,0x0
     524:	24180001 	li	t8,1
     528:	29e10004 	slti	at,t7,4
     52c:	10200013 	beqz	at,57c <func_8098E960+0x7c>
     530:	2508002c 	addiu	t0,t0,44
     534:	8ca31c44 	lw	v1,7236(a1)
     538:	ac980198 	sw	t8,408(a0)
     53c:	aca81d68 	sw	t0,7528(a1)
     540:	24090002 	li	t1,2
     544:	00a02025 	move	a0,a1
     548:	a0491414 	sb	t1,5140(v0)
     54c:	24050066 	li	a1,102
     550:	0c000000 	jal	0 <DemoSa_Destroy>
     554:	afa3001c 	sw	v1,28(sp)
     558:	8faa0028 	lw	t2,40(sp)
     55c:	34018000 	li	at,0x8000
     560:	8fa3001c 	lw	v1,28(sp)
     564:	85420032 	lh	v0,50(t2)
     568:	00411021 	addu	v0,v0,at
     56c:	00021400 	sll	v0,v0,0x10
     570:	00021403 	sra	v0,v0,0x10
     574:	a46200b6 	sh	v0,182(v1)
     578:	a4620032 	sh	v0,50(v1)
     57c:	8fbf0014 	lw	ra,20(sp)
     580:	27bd0028 	addiu	sp,sp,40
     584:	03e00008 	jr	ra
     588:	00000000 	nop

0000058c <func_8098E9EC>:
     58c:	27bdffe8 	addiu	sp,sp,-24
     590:	afbf0014 	sw	ra,20(sp)
     594:	90ae1d6c 	lbu	t6,7532(a1)
     598:	51c0000d 	beqzl	t6,5d0 <func_8098E9EC+0x44>
     59c:	8fbf0014 	lw	ra,20(sp)
     5a0:	8ca21d9c 	lw	v0,7580(a1)
     5a4:	5040000a 	beqzl	v0,5d0 <func_8098E9EC+0x44>
     5a8:	8fbf0014 	lw	ra,20(sp)
     5ac:	944f0000 	lhu	t7,0(v0)
     5b0:	24030002 	li	v1,2
     5b4:	24180001 	li	t8,1
     5b8:	546f0005 	bnel	v1,t7,5d0 <func_8098E9EC+0x44>
     5bc:	8fbf0014 	lw	ra,20(sp)
     5c0:	ac830198 	sw	v1,408(a0)
     5c4:	0c000000 	jal	0 <DemoSa_Destroy>
     5c8:	ac98019c 	sw	t8,412(a0)
     5cc:	8fbf0014 	lw	ra,20(sp)
     5d0:	27bd0018 	addiu	sp,sp,24
     5d4:	03e00008 	jr	ra
     5d8:	00000000 	nop

000005dc <func_8098EA3C>:
     5dc:	44800000 	mtc1	zero,$f0
     5e0:	c48400bc 	lwc1	$f4,188(a0)
     5e4:	240e0003 	li	t6,3
     5e8:	4604003e 	c.le.s	$f0,$f4
     5ec:	00000000 	nop
     5f0:	45000003 	bc1f	600 <func_8098EA3C+0x24>
     5f4:	00000000 	nop
     5f8:	ac8e0198 	sw	t6,408(a0)
     5fc:	e48000bc 	swc1	$f0,188(a0)
     600:	03e00008 	jr	ra
     604:	00000000 	nop

00000608 <func_8098EA68>:
     608:	27bdffd8 	addiu	sp,sp,-40
     60c:	afbf0024 	sw	ra,36(sp)
     610:	afa40028 	sw	a0,40(sp)
     614:	90ae1d6c 	lbu	t6,7532(a1)
     618:	51c0001e 	beqzl	t6,694 <func_8098EA68+0x8c>
     61c:	8fbf0024 	lw	ra,36(sp)
     620:	8ca21d9c 	lw	v0,7580(a1)
     624:	5040001b 	beqzl	v0,694 <func_8098EA68+0x8c>
     628:	8fbf0024 	lw	ra,36(sp)
     62c:	944f0000 	lhu	t7,0(v0)
     630:	24010003 	li	at,3
     634:	3c040000 	lui	a0,0x0
     638:	55e10016 	bnel	t7,at,694 <func_8098EA68+0x8c>
     63c:	8fbf0024 	lw	ra,36(sp)
     640:	0c000000 	jal	0 <DemoSa_Destroy>
     644:	24840000 	addiu	a0,a0,0
     648:	44822000 	mtc1	v0,$f4
     64c:	3c01c080 	lui	at,0xc080
     650:	44814000 	mtc1	at,$f8
     654:	468021a0 	cvt.s.w	$f6,$f4
     658:	8fa40028 	lw	a0,40(sp)
     65c:	3c050000 	lui	a1,0x0
     660:	24180002 	li	t8,2
     664:	afb80014 	sw	t8,20(sp)
     668:	24a50000 	addiu	a1,a1,0
     66c:	e7a60010 	swc1	$f6,16(sp)
     670:	3c063f80 	lui	a2,0x3f80
     674:	24070000 	li	a3,0
     678:	e7a80018 	swc1	$f8,24(sp)
     67c:	0c000000 	jal	0 <DemoSa_Destroy>
     680:	2484014c 	addiu	a0,a0,332
     684:	8fa80028 	lw	t0,40(sp)
     688:	24190004 	li	t9,4
     68c:	ad190198 	sw	t9,408(t0)
     690:	8fbf0024 	lw	ra,36(sp)
     694:	27bd0028 	addiu	sp,sp,40
     698:	03e00008 	jr	ra
     69c:	00000000 	nop

000006a0 <func_8098EB00>:
     6a0:	27bdffd8 	addiu	sp,sp,-40
     6a4:	afbf0024 	sw	ra,36(sp)
     6a8:	10a00014 	beqz	a1,6fc <func_8098EB00+0x5c>
     6ac:	afa40028 	sw	a0,40(sp)
     6b0:	3c040000 	lui	a0,0x0
     6b4:	0c000000 	jal	0 <DemoSa_Destroy>
     6b8:	24840000 	addiu	a0,a0,0
     6bc:	44822000 	mtc1	v0,$f4
     6c0:	44800000 	mtc1	zero,$f0
     6c4:	8fa40028 	lw	a0,40(sp)
     6c8:	468021a0 	cvt.s.w	$f6,$f4
     6cc:	3c050000 	lui	a1,0x0
     6d0:	44070000 	mfc1	a3,$f0
     6d4:	24a50000 	addiu	a1,a1,0
     6d8:	3c063f80 	lui	a2,0x3f80
     6dc:	afa00014 	sw	zero,20(sp)
     6e0:	e7a60010 	swc1	$f6,16(sp)
     6e4:	2484014c 	addiu	a0,a0,332
     6e8:	0c000000 	jal	0 <DemoSa_Destroy>
     6ec:	e7a00018 	swc1	$f0,24(sp)
     6f0:	8faf0028 	lw	t7,40(sp)
     6f4:	240e0005 	li	t6,5
     6f8:	adee0198 	sw	t6,408(t7)
     6fc:	8fbf0024 	lw	ra,36(sp)
     700:	27bd0028 	addiu	sp,sp,40
     704:	03e00008 	jr	ra
     708:	00000000 	nop

0000070c <func_8098EB6C>:
     70c:	27bdffe8 	addiu	sp,sp,-24
     710:	afbf0014 	sw	ra,20(sp)
     714:	90ae1d6c 	lbu	t6,7532(a1)
     718:	51c0000c 	beqzl	t6,74c <func_8098EB6C+0x40>
     71c:	8fbf0014 	lw	ra,20(sp)
     720:	8ca21da4 	lw	v0,7588(a1)
     724:	50400009 	beqzl	v0,74c <func_8098EB6C+0x40>
     728:	8fbf0014 	lw	ra,20(sp)
     72c:	944f0000 	lhu	t7,0(v0)
     730:	24010002 	li	at,2
     734:	24180006 	li	t8,6
     738:	55e10004 	bnel	t7,at,74c <func_8098EB6C+0x40>
     73c:	8fbf0014 	lw	ra,20(sp)
     740:	0c000000 	jal	0 <DemoSa_Destroy>
     744:	ac980198 	sw	t8,408(a0)
     748:	8fbf0014 	lw	ra,20(sp)
     74c:	27bd0018 	addiu	sp,sp,24
     750:	03e00008 	jr	ra
     754:	00000000 	nop

00000758 <func_8098EBB8>:
     758:	27bdffe8 	addiu	sp,sp,-24
     75c:	afbf0014 	sw	ra,20(sp)
     760:	0c000000 	jal	0 <DemoSa_Destroy>
     764:	00000000 	nop
     768:	8fbf0014 	lw	ra,20(sp)
     76c:	27bd0018 	addiu	sp,sp,24
     770:	03e00008 	jr	ra
     774:	00000000 	nop

00000778 <func_8098EBD8>:
     778:	27bdffe8 	addiu	sp,sp,-24
     77c:	afbf0014 	sw	ra,20(sp)
     780:	0c000000 	jal	0 <DemoSa_Destroy>
     784:	00000000 	nop
     788:	8fbf0014 	lw	ra,20(sp)
     78c:	27bd0018 	addiu	sp,sp,24
     790:	03e00008 	jr	ra
     794:	00000000 	nop

00000798 <func_8098EBF8>:
     798:	27bdffe8 	addiu	sp,sp,-24
     79c:	afbf0014 	sw	ra,20(sp)
     7a0:	0c000000 	jal	0 <DemoSa_Destroy>
     7a4:	afa40018 	sw	a0,24(sp)
     7a8:	0c000000 	jal	0 <DemoSa_Destroy>
     7ac:	8fa40018 	lw	a0,24(sp)
     7b0:	0c000000 	jal	0 <DemoSa_Destroy>
     7b4:	8fa40018 	lw	a0,24(sp)
     7b8:	8fbf0014 	lw	ra,20(sp)
     7bc:	27bd0018 	addiu	sp,sp,24
     7c0:	03e00008 	jr	ra
     7c4:	00000000 	nop

000007c8 <func_8098EC28>:
     7c8:	27bdffe8 	addiu	sp,sp,-24
     7cc:	afbf0014 	sw	ra,20(sp)
     7d0:	afa40018 	sw	a0,24(sp)
     7d4:	0c000000 	jal	0 <DemoSa_Destroy>
     7d8:	afa5001c 	sw	a1,28(sp)
     7dc:	0c000000 	jal	0 <DemoSa_Destroy>
     7e0:	8fa40018 	lw	a0,24(sp)
     7e4:	8fa40018 	lw	a0,24(sp)
     7e8:	0c000000 	jal	0 <DemoSa_Destroy>
     7ec:	8fa5001c 	lw	a1,28(sp)
     7f0:	8fbf0014 	lw	ra,20(sp)
     7f4:	27bd0018 	addiu	sp,sp,24
     7f8:	03e00008 	jr	ra
     7fc:	00000000 	nop

00000800 <func_8098EC60>:
     800:	27bdffe8 	addiu	sp,sp,-24
     804:	afbf0014 	sw	ra,20(sp)
     808:	0c000000 	jal	0 <DemoSa_Destroy>
     80c:	afa40018 	sw	a0,24(sp)
     810:	0c000000 	jal	0 <DemoSa_Destroy>
     814:	8fa40018 	lw	a0,24(sp)
     818:	8fa40018 	lw	a0,24(sp)
     81c:	0c000000 	jal	0 <DemoSa_Destroy>
     820:	00402825 	move	a1,v0
     824:	8fbf0014 	lw	ra,20(sp)
     828:	27bd0018 	addiu	sp,sp,24
     82c:	03e00008 	jr	ra
     830:	00000000 	nop

00000834 <func_8098EC94>:
     834:	27bdffe8 	addiu	sp,sp,-24
     838:	afbf0014 	sw	ra,20(sp)
     83c:	afa40018 	sw	a0,24(sp)
     840:	0c000000 	jal	0 <DemoSa_Destroy>
     844:	afa5001c 	sw	a1,28(sp)
     848:	0c000000 	jal	0 <DemoSa_Destroy>
     84c:	8fa40018 	lw	a0,24(sp)
     850:	8fa40018 	lw	a0,24(sp)
     854:	0c000000 	jal	0 <DemoSa_Destroy>
     858:	8fa5001c 	lw	a1,28(sp)
     85c:	8fbf0014 	lw	ra,20(sp)
     860:	27bd0018 	addiu	sp,sp,24
     864:	03e00008 	jr	ra
     868:	00000000 	nop

0000086c <func_8098ECCC>:
     86c:	27bdffe8 	addiu	sp,sp,-24
     870:	afbf0014 	sw	ra,20(sp)
     874:	0c000000 	jal	0 <DemoSa_Destroy>
     878:	afa40018 	sw	a0,24(sp)
     87c:	0c000000 	jal	0 <DemoSa_Destroy>
     880:	8fa40018 	lw	a0,24(sp)
     884:	8fbf0014 	lw	ra,20(sp)
     888:	27bd0018 	addiu	sp,sp,24
     88c:	03e00008 	jr	ra
     890:	00000000 	nop

00000894 <func_8098ECF4>:
     894:	27bdffb8 	addiu	sp,sp,-72
     898:	afb00028 	sw	s0,40(sp)
     89c:	00808025 	move	s0,a0
     8a0:	afbf002c 	sw	ra,44(sp)
     8a4:	3c040000 	lui	a0,0x0
     8a8:	afa5004c 	sw	a1,76(sp)
     8ac:	0c000000 	jal	0 <DemoSa_Destroy>
     8b0:	24840000 	addiu	a0,a0,0
     8b4:	44822000 	mtc1	v0,$f4
     8b8:	2605014c 	addiu	a1,s0,332
     8bc:	3c060000 	lui	a2,0x0
     8c0:	468021a0 	cvt.s.w	$f6,$f4
     8c4:	24c60000 	addiu	a2,a2,0
     8c8:	afa50034 	sw	a1,52(sp)
     8cc:	8fa4004c 	lw	a0,76(sp)
     8d0:	00003825 	move	a3,zero
     8d4:	afa00010 	sw	zero,16(sp)
     8d8:	e7a60038 	swc1	$f6,56(sp)
     8dc:	afa00014 	sw	zero,20(sp)
     8e0:	0c000000 	jal	0 <DemoSa_Destroy>
     8e4:	afa00018 	sw	zero,24(sp)
     8e8:	44800000 	mtc1	zero,$f0
     8ec:	c7a80038 	lwc1	$f8,56(sp)
     8f0:	3c050000 	lui	a1,0x0
     8f4:	240e0002 	li	t6,2
     8f8:	44070000 	mfc1	a3,$f0
     8fc:	afae0014 	sw	t6,20(sp)
     900:	24a50000 	addiu	a1,a1,0
     904:	8fa40034 	lw	a0,52(sp)
     908:	3c063f80 	lui	a2,0x3f80
     90c:	e7a80010 	swc1	$f8,16(sp)
     910:	0c000000 	jal	0 <DemoSa_Destroy>
     914:	e7a00018 	swc1	$f0,24(sp)
     918:	240f0007 	li	t7,7
     91c:	ae0f0198 	sw	t7,408(s0)
     920:	a20000c8 	sb	zero,200(s0)
     924:	02002025 	move	a0,s0
     928:	0c000000 	jal	0 <DemoSa_Destroy>
     92c:	24050002 	li	a1,2
     930:	02002025 	move	a0,s0
     934:	0c000000 	jal	0 <DemoSa_Destroy>
     938:	24050002 	li	a1,2
     93c:	8fbf002c 	lw	ra,44(sp)
     940:	8fb00028 	lw	s0,40(sp)
     944:	27bd0048 	addiu	sp,sp,72
     948:	03e00008 	jr	ra
     94c:	00000000 	nop

00000950 <func_8098EDB0>:
     950:	27bdffe8 	addiu	sp,sp,-24
     954:	afbf0014 	sw	ra,20(sp)
     958:	908e014d 	lbu	t6,333(a0)
     95c:	24010002 	li	at,2
     960:	c4800164 	lwc1	$f0,356(a0)
     964:	15c1000c 	bne	t6,at,998 <func_8098EDB0+0x48>
     968:	3c014200 	lui	at,0x4200
     96c:	44812000 	mtc1	at,$f4
     970:	24050001 	li	a1,1
     974:	4600203e 	c.le.s	$f4,$f0
     978:	00000000 	nop
     97c:	45020007 	bc1fl	99c <func_8098EDB0+0x4c>
     980:	8fbf0014 	lw	ra,20(sp)
     984:	0c000000 	jal	0 <DemoSa_Destroy>
     988:	afa40018 	sw	a0,24(sp)
     98c:	8fa40018 	lw	a0,24(sp)
     990:	0c000000 	jal	0 <DemoSa_Destroy>
     994:	00002825 	move	a1,zero
     998:	8fbf0014 	lw	ra,20(sp)
     99c:	27bd0018 	addiu	sp,sp,24
     9a0:	03e00008 	jr	ra
     9a4:	00000000 	nop

000009a8 <func_8098EE08>:
     9a8:	27bdffe8 	addiu	sp,sp,-24
     9ac:	afbf0014 	sw	ra,20(sp)
     9b0:	0c000000 	jal	0 <DemoSa_Destroy>
     9b4:	24044834 	li	a0,18484
     9b8:	8fbf0014 	lw	ra,20(sp)
     9bc:	27bd0018 	addiu	sp,sp,24
     9c0:	03e00008 	jr	ra
     9c4:	00000000 	nop

000009c8 <func_8098EE28>:
     9c8:	27bdffc8 	addiu	sp,sp,-56
     9cc:	00a03025 	move	a2,a1
     9d0:	00802825 	move	a1,a0
     9d4:	afbf0034 	sw	ra,52(sp)
     9d8:	afa40038 	sw	a0,56(sp)
     9dc:	c4a40024 	lwc1	$f4,36(a1)
     9e0:	3c0e0000 	lui	t6,0x0
     9e4:	8dce0000 	lw	t6,0(t6)
     9e8:	e7a40010 	swc1	$f4,16(sp)
     9ec:	3c0141c8 	lui	at,0x41c8
     9f0:	85cf1482 	lh	t7,5250(t6)
     9f4:	44815000 	mtc1	at,$f10
     9f8:	c4b20028 	lwc1	$f18,40(a1)
     9fc:	448f3000 	mtc1	t7,$f6
     a00:	24180004 	li	t8,4
     a04:	24c41c24 	addiu	a0,a2,7204
     a08:	46803220 	cvt.s.w	$f8,$f6
     a0c:	240700f5 	li	a3,245
     a10:	460a4400 	add.s	$f16,$f8,$f10
     a14:	46128100 	add.s	$f4,$f16,$f18
     a18:	e7a40014 	swc1	$f4,20(sp)
     a1c:	c4a6002c 	lwc1	$f6,44(a1)
     a20:	afb80028 	sw	t8,40(sp)
     a24:	afa00024 	sw	zero,36(sp)
     a28:	afa00020 	sw	zero,32(sp)
     a2c:	afa0001c 	sw	zero,28(sp)
     a30:	0c000000 	jal	0 <DemoSa_Destroy>
     a34:	e7a60018 	swc1	$f6,24(sp)
     a38:	8fbf0034 	lw	ra,52(sp)
     a3c:	27bd0038 	addiu	sp,sp,56
     a40:	03e00008 	jr	ra
     a44:	00000000 	nop

00000a48 <func_8098EEA8>:
     a48:	27bdffe8 	addiu	sp,sp,-24
     a4c:	afbf0014 	sw	ra,20(sp)
     a50:	afa40018 	sw	a0,24(sp)
     a54:	24060004 	li	a2,4
     a58:	0c000000 	jal	0 <DemoSa_Destroy>
     a5c:	24070004 	li	a3,4
     a60:	1040000a 	beqz	v0,a8c <func_8098EEA8+0x44>
     a64:	8fa40018 	lw	a0,24(sp)
     a68:	44802000 	mtc1	zero,$f4
     a6c:	240e0008 	li	t6,8
     a70:	240f0002 	li	t7,2
     a74:	ac8e0198 	sw	t6,408(a0)
     a78:	ac8f019c 	sw	t7,412(a0)
     a7c:	ac8001a4 	sw	zero,420(a0)
     a80:	a08000c8 	sb	zero,200(a0)
     a84:	0c000000 	jal	0 <DemoSa_Destroy>
     a88:	e48401a0 	swc1	$f4,416(a0)
     a8c:	8fbf0014 	lw	ra,20(sp)
     a90:	27bd0018 	addiu	sp,sp,24
     a94:	03e00008 	jr	ra
     a98:	00000000 	nop

00000a9c <func_8098EEFC>:
     a9c:	27bdffe8 	addiu	sp,sp,-24
     aa0:	afbf0014 	sw	ra,20(sp)
     aa4:	afa40018 	sw	a0,24(sp)
     aa8:	24060004 	li	a2,4
     aac:	0c000000 	jal	0 <DemoSa_Destroy>
     ab0:	24070004 	li	a3,4
     ab4:	10400025 	beqz	v0,b4c <func_8098EEFC+0xb0>
     ab8:	8fa40018 	lw	a0,24(sp)
     abc:	3c014120 	lui	at,0x4120
     ac0:	44811000 	mtc1	at,$f2
     ac4:	3c013f80 	lui	at,0x3f80
     ac8:	248201a0 	addiu	v0,a0,416
     acc:	c4440000 	lwc1	$f4,0(v0)
     ad0:	44813000 	mtc1	at,$f6
     ad4:	3c050000 	lui	a1,0x0
     ad8:	24a50000 	addiu	a1,a1,0
     adc:	46062200 	add.s	$f8,$f4,$f6
     ae0:	24180009 	li	t8,9
     ae4:	24190001 	li	t9,1
     ae8:	e4480000 	swc1	$f8,0(v0)
     aec:	8cae0000 	lw	t6,0(a1)
     af0:	c4400000 	lwc1	$f0,0(v0)
     af4:	85cf145e 	lh	t7,5214(t6)
     af8:	448f5000 	mtc1	t7,$f10
     afc:	00000000 	nop
     b00:	46805420 	cvt.s.w	$f16,$f10
     b04:	46028480 	add.s	$f18,$f16,$f2
     b08:	4600903e 	c.le.s	$f18,$f0
     b0c:	00000000 	nop
     b10:	45000020 	bc1f	b94 <func_8098EEFC+0xf8>
     b14:	00000000 	nop
     b18:	ac980198 	sw	t8,408(a0)
     b1c:	ac99019c 	sw	t9,412(a0)
     b20:	8ca80000 	lw	t0,0(a1)
     b24:	240300ff 	li	v1,255
     b28:	8509145e 	lh	t1,5214(t0)
     b2c:	44892000 	mtc1	t1,$f4
     b30:	00000000 	nop
     b34:	468021a0 	cvt.s.w	$f6,$f4
     b38:	46023200 	add.s	$f8,$f6,$f2
     b3c:	e4480000 	swc1	$f8,0(v0)
     b40:	ac8301a4 	sw	v1,420(a0)
     b44:	10000026 	b	be0 <func_8098EEFC+0x144>
     b48:	a08300c8 	sb	v1,200(a0)
     b4c:	248201a0 	addiu	v0,a0,416
     b50:	3c013f80 	lui	at,0x3f80
     b54:	44818000 	mtc1	at,$f16
     b58:	c44a0000 	lwc1	$f10,0(v0)
     b5c:	44801000 	mtc1	zero,$f2
     b60:	46105481 	sub.s	$f18,$f10,$f16
     b64:	e4520000 	swc1	$f18,0(v0)
     b68:	c4400000 	lwc1	$f0,0(v0)
     b6c:	4602003e 	c.le.s	$f0,$f2
     b70:	00000000 	nop
     b74:	45000007 	bc1f	b94 <func_8098EEFC+0xf8>
     b78:	240a0007 	li	t2,7
     b7c:	ac8a0198 	sw	t2,408(a0)
     b80:	ac80019c 	sw	zero,412(a0)
     b84:	e4420000 	swc1	$f2,0(v0)
     b88:	ac8001a4 	sw	zero,420(a0)
     b8c:	10000014 	b	be0 <func_8098EEFC+0x144>
     b90:	a08000c8 	sb	zero,200(a0)
     b94:	3c050000 	lui	a1,0x0
     b98:	24a50000 	addiu	a1,a1,0
     b9c:	8cab0000 	lw	t3,0(a1)
     ba0:	3c014120 	lui	at,0x4120
     ba4:	44811000 	mtc1	at,$f2
     ba8:	856c145e 	lh	t4,5214(t3)
     bac:	3c01437f 	lui	at,0x437f
     bb0:	44818000 	mtc1	at,$f16
     bb4:	448c2000 	mtc1	t4,$f4
     bb8:	00000000 	nop
     bbc:	468021a0 	cvt.s.w	$f6,$f4
     bc0:	46023200 	add.s	$f8,$f6,$f2
     bc4:	46080283 	div.s	$f10,$f0,$f8
     bc8:	46105482 	mul.s	$f18,$f10,$f16
     bcc:	4600910d 	trunc.w.s	$f4,$f18
     bd0:	44022000 	mfc1	v0,$f4
     bd4:	00000000 	nop
     bd8:	ac8201a4 	sw	v0,420(a0)
     bdc:	a08200c8 	sb	v0,200(a0)
     be0:	8fbf0014 	lw	ra,20(sp)
     be4:	27bd0018 	addiu	sp,sp,24
     be8:	03e00008 	jr	ra
     bec:	00000000 	nop

00000bf0 <func_8098F050>:
     bf0:	27bdffe8 	addiu	sp,sp,-24
     bf4:	afbf0014 	sw	ra,20(sp)
     bf8:	afa5001c 	sw	a1,28(sp)
     bfc:	afa40018 	sw	a0,24(sp)
     c00:	24060004 	li	a2,4
     c04:	0c000000 	jal	0 <DemoSa_Destroy>
     c08:	24070004 	li	a3,4
     c0c:	1040001a 	beqz	v0,c78 <func_8098F050+0x88>
     c10:	8fa40018 	lw	a0,24(sp)
     c14:	240e0008 	li	t6,8
     c18:	240f0002 	li	t7,2
     c1c:	ac8e0198 	sw	t6,408(a0)
     c20:	ac8f019c 	sw	t7,412(a0)
     c24:	3c180000 	lui	t8,0x0
     c28:	8f180000 	lw	t8,0(t8)
     c2c:	3c014120 	lui	at,0x4120
     c30:	44814000 	mtc1	at,$f8
     c34:	8719145e 	lh	t9,5214(t8)
     c38:	8c8901a8 	lw	t1,424(a0)
     c3c:	240800ff 	li	t0,255
     c40:	44992000 	mtc1	t9,$f4
     c44:	ac8801a4 	sw	t0,420(a0)
     c48:	468021a0 	cvt.s.w	$f6,$f4
     c4c:	46083280 	add.s	$f10,$f6,$f8
     c50:	15200007 	bnez	t1,c70 <func_8098F050+0x80>
     c54:	e48a01a0 	swc1	$f10,416(a0)
     c58:	8fa5001c 	lw	a1,28(sp)
     c5c:	0c000000 	jal	0 <DemoSa_Destroy>
     c60:	afa40018 	sw	a0,24(sp)
     c64:	8fa40018 	lw	a0,24(sp)
     c68:	240a0001 	li	t2,1
     c6c:	ac8a01a8 	sw	t2,424(a0)
     c70:	240b00ff 	li	t3,255
     c74:	a08b00c8 	sb	t3,200(a0)
     c78:	8fbf0014 	lw	ra,20(sp)
     c7c:	27bd0018 	addiu	sp,sp,24
     c80:	03e00008 	jr	ra
     c84:	00000000 	nop

00000c88 <func_8098F0E8>:
     c88:	27bdffe8 	addiu	sp,sp,-24
     c8c:	afbf0014 	sw	ra,20(sp)
     c90:	afa40018 	sw	a0,24(sp)
     c94:	0c000000 	jal	0 <DemoSa_Destroy>
     c98:	afa5001c 	sw	a1,28(sp)
     c9c:	8fa40018 	lw	a0,24(sp)
     ca0:	0c000000 	jal	0 <DemoSa_Destroy>
     ca4:	8fa5001c 	lw	a1,28(sp)
     ca8:	8fbf0014 	lw	ra,20(sp)
     cac:	27bd0018 	addiu	sp,sp,24
     cb0:	03e00008 	jr	ra
     cb4:	00000000 	nop

00000cb8 <func_8098F118>:
     cb8:	27bdffe0 	addiu	sp,sp,-32
     cbc:	afbf001c 	sw	ra,28(sp)
     cc0:	afb00018 	sw	s0,24(sp)
     cc4:	00808025 	move	s0,a0
     cc8:	0c000000 	jal	0 <DemoSa_Destroy>
     ccc:	afa50024 	sw	a1,36(sp)
     cd0:	0c000000 	jal	0 <DemoSa_Destroy>
     cd4:	02002025 	move	a0,s0
     cd8:	0c000000 	jal	0 <DemoSa_Destroy>
     cdc:	02002025 	move	a0,s0
     ce0:	02002025 	move	a0,s0
     ce4:	0c000000 	jal	0 <DemoSa_Destroy>
     ce8:	8fa50024 	lw	a1,36(sp)
     cec:	02002025 	move	a0,s0
     cf0:	0c000000 	jal	0 <DemoSa_Destroy>
     cf4:	8fa50024 	lw	a1,36(sp)
     cf8:	8fbf001c 	lw	ra,28(sp)
     cfc:	8fb00018 	lw	s0,24(sp)
     d00:	27bd0020 	addiu	sp,sp,32
     d04:	03e00008 	jr	ra
     d08:	00000000 	nop

00000d0c <func_8098F16C>:
     d0c:	27bdffe0 	addiu	sp,sp,-32
     d10:	afbf001c 	sw	ra,28(sp)
     d14:	afb00018 	sw	s0,24(sp)
     d18:	00808025 	move	s0,a0
     d1c:	0c000000 	jal	0 <DemoSa_Destroy>
     d20:	afa50024 	sw	a1,36(sp)
     d24:	0c000000 	jal	0 <DemoSa_Destroy>
     d28:	02002025 	move	a0,s0
     d2c:	0c000000 	jal	0 <DemoSa_Destroy>
     d30:	02002025 	move	a0,s0
     d34:	02002025 	move	a0,s0
     d38:	0c000000 	jal	0 <DemoSa_Destroy>
     d3c:	8fa50024 	lw	a1,36(sp)
     d40:	02002025 	move	a0,s0
     d44:	0c000000 	jal	0 <DemoSa_Destroy>
     d48:	8fa50024 	lw	a1,36(sp)
     d4c:	8fbf001c 	lw	ra,28(sp)
     d50:	8fb00018 	lw	s0,24(sp)
     d54:	27bd0020 	addiu	sp,sp,32
     d58:	03e00008 	jr	ra
     d5c:	00000000 	nop

00000d60 <func_8098F1C0>:
     d60:	27bdff78 	addiu	sp,sp,-136
     d64:	afbf002c 	sw	ra,44(sp)
     d68:	afb00028 	sw	s0,40(sp)
     d6c:	afa40088 	sw	a0,136(sp)
     d70:	afa5008c 	sw	a1,140(sp)
     d74:	84820190 	lh	v0,400(a0)
     d78:	3c180000 	lui	t8,0x0
     d7c:	3c0a0000 	lui	t2,0x0
     d80:	00027880 	sll	t7,v0,0x2
     d84:	030fc021 	addu	t8,t8,t7
     d88:	8f180000 	lw	t8,0(t8)
     d8c:	3c060000 	lui	a2,0x0
     d90:	24c60000 	addiu	a2,a2,0
     d94:	afb80078 	sw	t8,120(sp)
     d98:	84830194 	lh	v1,404(a0)
     d9c:	27a40054 	addiu	a0,sp,84
     da0:	24070128 	li	a3,296
     da4:	0003c880 	sll	t9,v1,0x2
     da8:	01595021 	addu	t2,t2,t9
     dac:	8d4a0000 	lw	t2,0(t2)
     db0:	afaa006c 	sw	t2,108(sp)
     db4:	8ca50000 	lw	a1,0(a1)
     db8:	0c000000 	jal	0 <DemoSa_Destroy>
     dbc:	00a08025 	move	s0,a1
     dc0:	8fac008c 	lw	t4,140(sp)
     dc4:	0c000000 	jal	0 <DemoSa_Destroy>
     dc8:	8d840000 	lw	a0,0(t4)
     dcc:	8fa90078 	lw	t1,120(sp)
     dd0:	8e0202d0 	lw	v0,720(s0)
     dd4:	3c070000 	lui	a3,0x0
     dd8:	0009c100 	sll	t8,t1,0x4
     ddc:	00187702 	srl	t6,t8,0x1c
     de0:	3c0fdb06 	lui	t7,0xdb06
     de4:	244d0008 	addiu	t5,v0,8
     de8:	ae0d02d0 	sw	t5,720(s0)
     dec:	35ef0020 	ori	t7,t7,0x20
     df0:	000ec880 	sll	t9,t6,0x2
     df4:	24e70000 	addiu	a3,a3,0
     df8:	00f92021 	addu	a0,a3,t9
     dfc:	ac4f0000 	sw	t7,0(v0)
     e00:	8c8a0000 	lw	t2,0(a0)
     e04:	3c0800ff 	lui	t0,0xff
     e08:	3508ffff 	ori	t0,t0,0xffff
     e0c:	01282824 	and	a1,t1,t0
     e10:	3c068000 	lui	a2,0x8000
     e14:	01455821 	addu	t3,t2,a1
     e18:	01666021 	addu	t4,t3,a2
     e1c:	ac4c0004 	sw	t4,4(v0)
     e20:	8e0202d0 	lw	v0,720(s0)
     e24:	3c0fdb06 	lui	t7,0xdb06
     e28:	35ef0024 	ori	t7,t7,0x24
     e2c:	244d0008 	addiu	t5,v0,8
     e30:	ae0d02d0 	sw	t5,720(s0)
     e34:	ac4f0000 	sw	t7,0(v0)
     e38:	8c980000 	lw	t8,0(a0)
     e3c:	3c0bdb06 	lui	t3,0xdb06
     e40:	356b0028 	ori	t3,t3,0x28
     e44:	03057021 	addu	t6,t8,a1
     e48:	01c6c821 	addu	t9,t6,a2
     e4c:	ac590004 	sw	t9,4(v0)
     e50:	8fa4006c 	lw	a0,108(sp)
     e54:	8e0202d0 	lw	v0,720(s0)
     e58:	00046100 	sll	t4,a0,0x4
     e5c:	000c6f02 	srl	t5,t4,0x1c
     e60:	244a0008 	addiu	t2,v0,8
     e64:	ae0a02d0 	sw	t2,720(s0)
     e68:	000d7880 	sll	t7,t5,0x2
     e6c:	00efc021 	addu	t8,a3,t7
     e70:	ac4b0000 	sw	t3,0(v0)
     e74:	8f0e0000 	lw	t6,0(t8)
     e78:	0088c824 	and	t9,a0,t0
     e7c:	3c0dfb00 	lui	t5,0xfb00
     e80:	01d95021 	addu	t2,t6,t9
     e84:	01465821 	addu	t3,t2,a2
     e88:	ac4b0004 	sw	t3,4(v0)
     e8c:	8e0202d0 	lw	v0,720(s0)
     e90:	8fa80088 	lw	t0,136(sp)
     e94:	3c0a0000 	lui	t2,0x0
     e98:	244c0008 	addiu	t4,v0,8
     e9c:	ae0c02d0 	sw	t4,720(s0)
     ea0:	ac4d0000 	sw	t5,0(v0)
     ea4:	8d0f01a4 	lw	t7,420(t0)
     ea8:	3c19db06 	lui	t9,0xdb06
     eac:	37390030 	ori	t9,t9,0x30
     eb0:	31f800ff 	andi	t8,t7,0xff
     eb4:	ac580004 	sw	t8,4(v0)
     eb8:	8e0202d0 	lw	v0,720(s0)
     ebc:	254a0000 	addiu	t2,t2,0
     ec0:	244e0008 	addiu	t6,v0,8
     ec4:	ae0e02d0 	sw	t6,720(s0)
     ec8:	ac4a0004 	sw	t2,4(v0)
     ecc:	ac590000 	sw	t9,0(v0)
     ed0:	2502014c 	addiu	v0,t0,332
     ed4:	8c450004 	lw	a1,4(v0)
     ed8:	8c460020 	lw	a2,32(v0)
     edc:	90470002 	lbu	a3,2(v0)
     ee0:	afa00018 	sw	zero,24(sp)
     ee4:	afa00014 	sw	zero,20(sp)
     ee8:	afa00010 	sw	zero,16(sp)
     eec:	8e0b02d0 	lw	t3,720(s0)
     ef0:	8fa4008c 	lw	a0,140(sp)
     ef4:	0c000000 	jal	0 <DemoSa_Destroy>
     ef8:	afab001c 	sw	t3,28(sp)
     efc:	ae0202d0 	sw	v0,720(s0)
     f00:	8fac008c 	lw	t4,140(sp)
     f04:	3c060000 	lui	a2,0x0
     f08:	24c60024 	addiu	a2,a2,36
     f0c:	27a40054 	addiu	a0,sp,84
     f10:	24070145 	li	a3,325
     f14:	0c000000 	jal	0 <DemoSa_Destroy>
     f18:	8d850000 	lw	a1,0(t4)
     f1c:	8fbf002c 	lw	ra,44(sp)
     f20:	8fb00028 	lw	s0,40(sp)
     f24:	27bd0088 	addiu	sp,sp,136
     f28:	03e00008 	jr	ra
     f2c:	00000000 	nop

00000f30 <func_8098F390>:
     f30:	27bdffd8 	addiu	sp,sp,-40
     f34:	afa40028 	sw	a0,40(sp)
     f38:	afa5002c 	sw	a1,44(sp)
     f3c:	00a02025 	move	a0,a1
     f40:	8fa50028 	lw	a1,40(sp)
     f44:	afbf0024 	sw	ra,36(sp)
     f48:	3c060000 	lui	a2,0x0
     f4c:	3c070000 	lui	a3,0x0
     f50:	24e70000 	addiu	a3,a3,0
     f54:	24c60000 	addiu	a2,a2,0
     f58:	afa00010 	sw	zero,16(sp)
     f5c:	afa00014 	sw	zero,20(sp)
     f60:	afa00018 	sw	zero,24(sp)
     f64:	0c000000 	jal	0 <DemoSa_Destroy>
     f68:	24a5014c 	addiu	a1,a1,332
     f6c:	8fa20028 	lw	v0,40(sp)
     f70:	240e000a 	li	t6,10
     f74:	240f0001 	li	t7,1
     f78:	ac4e0198 	sw	t6,408(v0)
     f7c:	ac4f019c 	sw	t7,412(v0)
     f80:	8fbf0024 	lw	ra,36(sp)
     f84:	27bd0028 	addiu	sp,sp,40
     f88:	03e00008 	jr	ra
     f8c:	00000000 	nop

00000f90 <func_8098F3F0>:
     f90:	27bdffe8 	addiu	sp,sp,-24
     f94:	afbf0014 	sw	ra,20(sp)
     f98:	0c000000 	jal	0 <DemoSa_Destroy>
     f9c:	afa40018 	sw	a0,24(sp)
     fa0:	0c000000 	jal	0 <DemoSa_Destroy>
     fa4:	8fa40018 	lw	a0,24(sp)
     fa8:	0c000000 	jal	0 <DemoSa_Destroy>
     fac:	8fa40018 	lw	a0,24(sp)
     fb0:	8fbf0014 	lw	ra,20(sp)
     fb4:	27bd0018 	addiu	sp,sp,24
     fb8:	03e00008 	jr	ra
     fbc:	00000000 	nop

00000fc0 <func_8098F420>:
     fc0:	27bdffd8 	addiu	sp,sp,-40
     fc4:	afa40028 	sw	a0,40(sp)
     fc8:	afa5002c 	sw	a1,44(sp)
     fcc:	00a02025 	move	a0,a1
     fd0:	8fa50028 	lw	a1,40(sp)
     fd4:	afbf0024 	sw	ra,36(sp)
     fd8:	3c060000 	lui	a2,0x0
     fdc:	3c070000 	lui	a3,0x0
     fe0:	24e70000 	addiu	a3,a3,0
     fe4:	24c60000 	addiu	a2,a2,0
     fe8:	afa00010 	sw	zero,16(sp)
     fec:	afa00014 	sw	zero,20(sp)
     ff0:	afa00018 	sw	zero,24(sp)
     ff4:	0c000000 	jal	0 <DemoSa_Destroy>
     ff8:	24a5014c 	addiu	a1,a1,332
     ffc:	8fa20028 	lw	v0,40(sp)
    1000:	240e000b 	li	t6,11
    1004:	ac4e0198 	sw	t6,408(v0)
    1008:	ac40019c 	sw	zero,412(v0)
    100c:	a04000c8 	sb	zero,200(v0)
    1010:	8fbf0024 	lw	ra,36(sp)
    1014:	27bd0028 	addiu	sp,sp,40
    1018:	03e00008 	jr	ra
    101c:	00000000 	nop

00001020 <func_8098F480>:
    1020:	3c013f80 	lui	at,0x3f80
    1024:	44813000 	mtc1	at,$f6
    1028:	c48401a0 	lwc1	$f4,416(a0)
    102c:	3c0e0000 	lui	t6,0x0
    1030:	3c014120 	lui	at,0x4120
    1034:	46062200 	add.s	$f8,$f4,$f6
    1038:	44819000 	mtc1	at,$f18
    103c:	240200ff 	li	v0,255
    1040:	e48801a0 	swc1	$f8,416(a0)
    1044:	8dce0000 	lw	t6,0(t6)
    1048:	c48401a0 	lwc1	$f4,416(a0)
    104c:	85cf1476 	lh	t7,5238(t6)
    1050:	448f5000 	mtc1	t7,$f10
    1054:	00000000 	nop
    1058:	46805420 	cvt.s.w	$f16,$f10
    105c:	46128000 	add.s	$f0,$f16,$f18
    1060:	4604003e 	c.le.s	$f0,$f4
    1064:	00000000 	nop
    1068:	45020005 	bc1fl	1080 <func_8098F480+0x60>
    106c:	c48601a0 	lwc1	$f6,416(a0)
    1070:	ac8201a4 	sw	v0,420(a0)
    1074:	03e00008 	jr	ra
    1078:	a08200c8 	sb	v0,200(a0)
    107c:	c48601a0 	lwc1	$f6,416(a0)
    1080:	3c01437f 	lui	at,0x437f
    1084:	44815000 	mtc1	at,$f10
    1088:	46003203 	div.s	$f8,$f6,$f0
    108c:	460a4402 	mul.s	$f16,$f8,$f10
    1090:	4600848d 	trunc.w.s	$f18,$f16
    1094:	44029000 	mfc1	v0,$f18
    1098:	00000000 	nop
    109c:	ac8201a4 	sw	v0,420(a0)
    10a0:	a08200c8 	sb	v0,200(a0)
    10a4:	03e00008 	jr	ra
    10a8:	00000000 	nop

000010ac <func_8098F50C>:
    10ac:	27bdffe8 	addiu	sp,sp,-24
    10b0:	afbf0014 	sw	ra,20(sp)
    10b4:	afa40018 	sw	a0,24(sp)
    10b8:	0c000000 	jal	0 <DemoSa_Destroy>
    10bc:	24060004 	li	a2,4
    10c0:	8fa40018 	lw	a0,24(sp)
    10c4:	240e000c 	li	t6,12
    10c8:	240f0002 	li	t7,2
    10cc:	ac8e0198 	sw	t6,408(a0)
    10d0:	ac8f019c 	sw	t7,412(a0)
    10d4:	8fbf0014 	lw	ra,20(sp)
    10d8:	27bd0018 	addiu	sp,sp,24
    10dc:	03e00008 	jr	ra
    10e0:	00000000 	nop

000010e4 <func_8098F544>:
    10e4:	3c0e0000 	lui	t6,0x0
    10e8:	8dce0000 	lw	t6,0(t6)
    10ec:	3c014120 	lui	at,0x4120
    10f0:	44815000 	mtc1	at,$f10
    10f4:	85cf1476 	lh	t7,5238(t6)
    10f8:	c48401a0 	lwc1	$f4,416(a0)
    10fc:	2418000d 	li	t8,13
    1100:	448f3000 	mtc1	t7,$f6
    1104:	24190001 	li	t9,1
    1108:	46803220 	cvt.s.w	$f8,$f6
    110c:	460a4400 	add.s	$f16,$f8,$f10
    1110:	4604803e 	c.le.s	$f16,$f4
    1114:	00000000 	nop
    1118:	45000003 	bc1f	1128 <func_8098F544+0x44>
    111c:	00000000 	nop
    1120:	ac980198 	sw	t8,408(a0)
    1124:	ac99019c 	sw	t9,412(a0)
    1128:	03e00008 	jr	ra
    112c:	00000000 	nop

00001130 <func_8098F590>:
    1130:	27bdffe0 	addiu	sp,sp,-32
    1134:	afbf001c 	sw	ra,28(sp)
    1138:	3c050000 	lui	a1,0x0
    113c:	afa40020 	sw	a0,32(sp)
    1140:	24a50000 	addiu	a1,a1,0
    1144:	afa00010 	sw	zero,16(sp)
    1148:	24060002 	li	a2,2
    114c:	0c000000 	jal	0 <DemoSa_Destroy>
    1150:	3c07c100 	lui	a3,0xc100
    1154:	8faf0020 	lw	t7,32(sp)
    1158:	240e000e 	li	t6,14
    115c:	adee0198 	sw	t6,408(t7)
    1160:	8fbf001c 	lw	ra,28(sp)
    1164:	27bd0020 	addiu	sp,sp,32
    1168:	03e00008 	jr	ra
    116c:	00000000 	nop

00001170 <func_8098F5D0>:
    1170:	27bdffe0 	addiu	sp,sp,-32
    1174:	afbf001c 	sw	ra,28(sp)
    1178:	3c050000 	lui	a1,0x0
    117c:	afa40020 	sw	a0,32(sp)
    1180:	24a50000 	addiu	a1,a1,0
    1184:	afa00010 	sw	zero,16(sp)
    1188:	24060002 	li	a2,2
    118c:	0c000000 	jal	0 <DemoSa_Destroy>
    1190:	24070000 	li	a3,0
    1194:	8faf0020 	lw	t7,32(sp)
    1198:	240e000f 	li	t6,15
    119c:	adee0198 	sw	t6,408(t7)
    11a0:	8fbf001c 	lw	ra,28(sp)
    11a4:	27bd0020 	addiu	sp,sp,32
    11a8:	03e00008 	jr	ra
    11ac:	00000000 	nop

000011b0 <func_8098F610>:
    11b0:	27bdffe0 	addiu	sp,sp,-32
    11b4:	afbf001c 	sw	ra,28(sp)
    11b8:	10a0000a 	beqz	a1,11e4 <func_8098F610+0x34>
    11bc:	afa40020 	sw	a0,32(sp)
    11c0:	3c050000 	lui	a1,0x0
    11c4:	24a50000 	addiu	a1,a1,0
    11c8:	00003025 	move	a2,zero
    11cc:	24070000 	li	a3,0
    11d0:	0c000000 	jal	0 <DemoSa_Destroy>
    11d4:	afa00010 	sw	zero,16(sp)
    11d8:	8faf0020 	lw	t7,32(sp)
    11dc:	240e000d 	li	t6,13
    11e0:	adee0198 	sw	t6,408(t7)
    11e4:	8fbf001c 	lw	ra,28(sp)
    11e8:	27bd0020 	addiu	sp,sp,32
    11ec:	03e00008 	jr	ra
    11f0:	00000000 	nop

000011f4 <func_8098F654>:
    11f4:	27bdffd8 	addiu	sp,sp,-40
    11f8:	afb00018 	sw	s0,24(sp)
    11fc:	00808025 	move	s0,a0
    1200:	afbf001c 	sw	ra,28(sp)
    1204:	afa5002c 	sw	a1,44(sp)
    1208:	00a02025 	move	a0,a1
    120c:	0c000000 	jal	0 <DemoSa_Destroy>
    1210:	24050004 	li	a1,4
    1214:	50400023 	beqzl	v0,12a4 <func_8098F654+0xb0>
    1218:	8fbf001c 	lw	ra,28(sp)
    121c:	94460000 	lhu	a2,0(v0)
    1220:	8e0301ac 	lw	v1,428(s0)
    1224:	24010007 	li	at,7
    1228:	50c3001e 	beql	a2,v1,12a4 <func_8098F654+0xb0>
    122c:	8fbf001c 	lw	ra,28(sp)
    1230:	10c10009 	beq	a2,at,1258 <func_8098F654+0x64>
    1234:	02002025 	move	a0,s0
    1238:	24010008 	li	at,8
    123c:	10c1000b 	beq	a2,at,126c <func_8098F654+0x78>
    1240:	02002025 	move	a0,s0
    1244:	24010009 	li	at,9
    1248:	10c1000c 	beq	a2,at,127c <func_8098F654+0x88>
    124c:	02002025 	move	a0,s0
    1250:	1000000e 	b	128c <func_8098F654+0x98>
    1254:	3c040000 	lui	a0,0x0
    1258:	8fa5002c 	lw	a1,44(sp)
    125c:	0c000000 	jal	0 <DemoSa_Destroy>
    1260:	afa60020 	sw	a2,32(sp)
    1264:	1000000d 	b	129c <func_8098F654+0xa8>
    1268:	8fa60020 	lw	a2,32(sp)
    126c:	0c000000 	jal	0 <DemoSa_Destroy>
    1270:	afa60020 	sw	a2,32(sp)
    1274:	10000009 	b	129c <func_8098F654+0xa8>
    1278:	8fa60020 	lw	a2,32(sp)
    127c:	0c000000 	jal	0 <DemoSa_Destroy>
    1280:	afa60020 	sw	a2,32(sp)
    1284:	10000005 	b	129c <func_8098F654+0xa8>
    1288:	8fa60020 	lw	a2,32(sp)
    128c:	24840048 	addiu	a0,a0,72
    1290:	0c000000 	jal	0 <DemoSa_Destroy>
    1294:	afa60020 	sw	a2,32(sp)
    1298:	8fa60020 	lw	a2,32(sp)
    129c:	ae0601ac 	sw	a2,428(s0)
    12a0:	8fbf001c 	lw	ra,28(sp)
    12a4:	8fb00018 	lw	s0,24(sp)
    12a8:	27bd0028 	addiu	sp,sp,40
    12ac:	03e00008 	jr	ra
    12b0:	00000000 	nop

000012b4 <func_8098F714>:
    12b4:	27bdffe8 	addiu	sp,sp,-24
    12b8:	afbf0014 	sw	ra,20(sp)
    12bc:	0c000000 	jal	0 <DemoSa_Destroy>
    12c0:	00000000 	nop
    12c4:	8fbf0014 	lw	ra,20(sp)
    12c8:	27bd0018 	addiu	sp,sp,24
    12cc:	03e00008 	jr	ra
    12d0:	00000000 	nop

000012d4 <func_8098F734>:
    12d4:	27bdffe0 	addiu	sp,sp,-32
    12d8:	afbf001c 	sw	ra,28(sp)
    12dc:	afb00018 	sw	s0,24(sp)
    12e0:	0c000000 	jal	0 <DemoSa_Destroy>
    12e4:	00808025 	move	s0,a0
    12e8:	0c000000 	jal	0 <DemoSa_Destroy>
    12ec:	02002025 	move	a0,s0
    12f0:	0c000000 	jal	0 <DemoSa_Destroy>
    12f4:	02002025 	move	a0,s0
    12f8:	0c000000 	jal	0 <DemoSa_Destroy>
    12fc:	02002025 	move	a0,s0
    1300:	0c000000 	jal	0 <DemoSa_Destroy>
    1304:	02002025 	move	a0,s0
    1308:	8fbf001c 	lw	ra,28(sp)
    130c:	8fb00018 	lw	s0,24(sp)
    1310:	27bd0020 	addiu	sp,sp,32
    1314:	03e00008 	jr	ra
    1318:	00000000 	nop

0000131c <func_8098F77C>:
    131c:	27bdffe8 	addiu	sp,sp,-24
    1320:	afbf0014 	sw	ra,20(sp)
    1324:	afa40018 	sw	a0,24(sp)
    1328:	0c000000 	jal	0 <DemoSa_Destroy>
    132c:	afa5001c 	sw	a1,28(sp)
    1330:	0c000000 	jal	0 <DemoSa_Destroy>
    1334:	8fa40018 	lw	a0,24(sp)
    1338:	0c000000 	jal	0 <DemoSa_Destroy>
    133c:	8fa40018 	lw	a0,24(sp)
    1340:	8fa40018 	lw	a0,24(sp)
    1344:	0c000000 	jal	0 <DemoSa_Destroy>
    1348:	8fa5001c 	lw	a1,28(sp)
    134c:	8fbf0014 	lw	ra,20(sp)
    1350:	27bd0018 	addiu	sp,sp,24
    1354:	03e00008 	jr	ra
    1358:	00000000 	nop

0000135c <func_8098F7BC>:
    135c:	27bdffe8 	addiu	sp,sp,-24
    1360:	afbf0014 	sw	ra,20(sp)
    1364:	afa40018 	sw	a0,24(sp)
    1368:	0c000000 	jal	0 <DemoSa_Destroy>
    136c:	afa5001c 	sw	a1,28(sp)
    1370:	0c000000 	jal	0 <DemoSa_Destroy>
    1374:	8fa40018 	lw	a0,24(sp)
    1378:	0c000000 	jal	0 <DemoSa_Destroy>
    137c:	8fa40018 	lw	a0,24(sp)
    1380:	8fa40018 	lw	a0,24(sp)
    1384:	0c000000 	jal	0 <DemoSa_Destroy>
    1388:	8fa5001c 	lw	a1,28(sp)
    138c:	8fbf0014 	lw	ra,20(sp)
    1390:	27bd0018 	addiu	sp,sp,24
    1394:	03e00008 	jr	ra
    1398:	00000000 	nop

0000139c <func_8098F7FC>:
    139c:	27bdffe0 	addiu	sp,sp,-32
    13a0:	afbf0014 	sw	ra,20(sp)
    13a4:	0c000000 	jal	0 <DemoSa_Destroy>
    13a8:	afa40020 	sw	a0,32(sp)
    13ac:	0c000000 	jal	0 <DemoSa_Destroy>
    13b0:	8fa40020 	lw	a0,32(sp)
    13b4:	afa2001c 	sw	v0,28(sp)
    13b8:	0c000000 	jal	0 <DemoSa_Destroy>
    13bc:	8fa40020 	lw	a0,32(sp)
    13c0:	8fa40020 	lw	a0,32(sp)
    13c4:	0c000000 	jal	0 <DemoSa_Destroy>
    13c8:	8fa5001c 	lw	a1,28(sp)
    13cc:	8fbf0014 	lw	ra,20(sp)
    13d0:	27bd0020 	addiu	sp,sp,32
    13d4:	03e00008 	jr	ra
    13d8:	00000000 	nop

000013dc <func_8098F83C>:
    13dc:	27bdffc0 	addiu	sp,sp,-64
    13e0:	afb00038 	sw	s0,56(sp)
    13e4:	00808025 	move	s0,a0
    13e8:	afbf003c 	sw	ra,60(sp)
    13ec:	afa50044 	sw	a1,68(sp)
    13f0:	00a02025 	move	a0,a1
    13f4:	3c060000 	lui	a2,0x0
    13f8:	3c070000 	lui	a3,0x0
    13fc:	24e70000 	addiu	a3,a3,0
    1400:	24c60000 	addiu	a2,a2,0
    1404:	2605014c 	addiu	a1,s0,332
    1408:	afa00010 	sw	zero,16(sp)
    140c:	afa00014 	sw	zero,20(sp)
    1410:	0c000000 	jal	0 <DemoSa_Destroy>
    1414:	afa00018 	sw	zero,24(sp)
    1418:	26020024 	addiu	v0,s0,36
    141c:	c4440000 	lwc1	$f4,0(v0)
    1420:	8fa60044 	lw	a2,68(sp)
    1424:	240e0003 	li	t6,3
    1428:	e7a40010 	swc1	$f4,16(sp)
    142c:	c4460004 	lwc1	$f6,4(v0)
    1430:	02002825 	move	a1,s0
    1434:	24070018 	li	a3,24
    1438:	e7a60014 	swc1	$f6,20(sp)
    143c:	c4480008 	lwc1	$f8,8(v0)
    1440:	afae0028 	sw	t6,40(sp)
    1444:	afa00024 	sw	zero,36(sp)
    1448:	afa00020 	sw	zero,32(sp)
    144c:	afa0001c 	sw	zero,28(sp)
    1450:	24c41c24 	addiu	a0,a2,7204
    1454:	0c000000 	jal	0 <DemoSa_Destroy>
    1458:	e7a80018 	swc1	$f8,24(sp)
    145c:	240f0010 	li	t7,16
    1460:	ae0f0198 	sw	t7,408(s0)
    1464:	ae00019c 	sw	zero,412(s0)
    1468:	a20000c8 	sb	zero,200(s0)
    146c:	02002025 	move	a0,s0
    1470:	0c000000 	jal	0 <DemoSa_Destroy>
    1474:	24050004 	li	a1,4
    1478:	02002025 	move	a0,s0
    147c:	0c000000 	jal	0 <DemoSa_Destroy>
    1480:	24050002 	li	a1,2
    1484:	8fbf003c 	lw	ra,60(sp)
    1488:	8fb00038 	lw	s0,56(sp)
    148c:	27bd0040 	addiu	sp,sp,64
    1490:	03e00008 	jr	ra
    1494:	00000000 	nop

00001498 <func_8098F8F8>:
    1498:	3c013f80 	lui	at,0x3f80
    149c:	44813000 	mtc1	at,$f6
    14a0:	c48401a0 	lwc1	$f4,416(a0)
    14a4:	3c0e0000 	lui	t6,0x0
    14a8:	3c014120 	lui	at,0x4120
    14ac:	46062200 	add.s	$f8,$f4,$f6
    14b0:	44819000 	mtc1	at,$f18
    14b4:	240200ff 	li	v0,255
    14b8:	e48801a0 	swc1	$f8,416(a0)
    14bc:	8dce0000 	lw	t6,0(t6)
    14c0:	c48401a0 	lwc1	$f4,416(a0)
    14c4:	85cf1476 	lh	t7,5238(t6)
    14c8:	448f5000 	mtc1	t7,$f10
    14cc:	00000000 	nop
    14d0:	46805420 	cvt.s.w	$f16,$f10
    14d4:	46128000 	add.s	$f0,$f16,$f18
    14d8:	4604003e 	c.le.s	$f0,$f4
    14dc:	00000000 	nop
    14e0:	45020005 	bc1fl	14f8 <func_8098F8F8+0x60>
    14e4:	c48601a0 	lwc1	$f6,416(a0)
    14e8:	ac8201a4 	sw	v0,420(a0)
    14ec:	03e00008 	jr	ra
    14f0:	a08200c8 	sb	v0,200(a0)
    14f4:	c48601a0 	lwc1	$f6,416(a0)
    14f8:	3c01437f 	lui	at,0x437f
    14fc:	44815000 	mtc1	at,$f10
    1500:	46003203 	div.s	$f8,$f6,$f0
    1504:	460a4402 	mul.s	$f16,$f8,$f10
    1508:	4600848d 	trunc.w.s	$f18,$f16
    150c:	44029000 	mfc1	v0,$f18
    1510:	00000000 	nop
    1514:	ac8201a4 	sw	v0,420(a0)
    1518:	a08200c8 	sb	v0,200(a0)
    151c:	03e00008 	jr	ra
    1520:	00000000 	nop

00001524 <func_8098F984>:
    1524:	240e0010 	li	t6,16
    1528:	ac8e0198 	sw	t6,408(a0)
    152c:	ac80019c 	sw	zero,412(a0)
    1530:	03e00008 	jr	ra
    1534:	a08000c8 	sb	zero,200(a0)

00001538 <func_8098F998>:
    1538:	27bdffe0 	addiu	sp,sp,-32
    153c:	afbf001c 	sw	ra,28(sp)
    1540:	8c8e01ac 	lw	t6,428(a0)
    1544:	24010004 	li	at,4
    1548:	00003025 	move	a2,zero
    154c:	15c1000c 	bne	t6,at,1580 <func_8098F998+0x48>
    1550:	24070000 	li	a3,0
    1554:	24060001 	li	a2,1
    1558:	0c000000 	jal	0 <DemoSa_Destroy>
    155c:	afa40020 	sw	a0,32(sp)
    1560:	8fa40020 	lw	a0,32(sp)
    1564:	240f0011 	li	t7,17
    1568:	24180002 	li	t8,2
    156c:	ac8f0198 	sw	t7,408(a0)
    1570:	ac98019c 	sw	t8,412(a0)
    1574:	ac8001b0 	sw	zero,432(a0)
    1578:	1000000e 	b	15b4 <func_8098F998+0x7c>
    157c:	a08000c8 	sb	zero,200(a0)
    1580:	3c050000 	lui	a1,0x0
    1584:	24a50000 	addiu	a1,a1,0
    1588:	afa00010 	sw	zero,16(sp)
    158c:	0c000000 	jal	0 <DemoSa_Destroy>
    1590:	afa40020 	sw	a0,32(sp)
    1594:	8fa40020 	lw	a0,32(sp)
    1598:	24190012 	li	t9,18
    159c:	24080001 	li	t0,1
    15a0:	240900ff 	li	t1,255
    15a4:	ac990198 	sw	t9,408(a0)
    15a8:	ac88019c 	sw	t0,412(a0)
    15ac:	ac8001b0 	sw	zero,432(a0)
    15b0:	a08900c8 	sb	t1,200(a0)
    15b4:	0c000000 	jal	0 <DemoSa_Destroy>
    15b8:	24050004 	li	a1,4
    15bc:	8fbf001c 	lw	ra,28(sp)
    15c0:	27bd0020 	addiu	sp,sp,32
    15c4:	03e00008 	jr	ra
    15c8:	00000000 	nop

000015cc <func_8098FA2C>:
    15cc:	3c0e0000 	lui	t6,0x0
    15d0:	8dce0000 	lw	t6,0(t6)
    15d4:	3c014120 	lui	at,0x4120
    15d8:	44815000 	mtc1	at,$f10
    15dc:	85cf1476 	lh	t7,5238(t6)
    15e0:	c48401a0 	lwc1	$f4,416(a0)
    15e4:	24180012 	li	t8,18
    15e8:	448f3000 	mtc1	t7,$f6
    15ec:	24190001 	li	t9,1
    15f0:	240800ff 	li	t0,255
    15f4:	46803220 	cvt.s.w	$f8,$f6
    15f8:	460a4400 	add.s	$f16,$f8,$f10
    15fc:	4604803e 	c.le.s	$f16,$f4
    1600:	00000000 	nop
    1604:	45000005 	bc1f	161c <func_8098FA2C+0x50>
    1608:	00000000 	nop
    160c:	ac980198 	sw	t8,408(a0)
    1610:	ac99019c 	sw	t9,412(a0)
    1614:	ac8001b0 	sw	zero,432(a0)
    1618:	a08800c8 	sb	t0,200(a0)
    161c:	03e00008 	jr	ra
    1620:	00000000 	nop

00001624 <func_8098FA84>:
    1624:	27bdffe0 	addiu	sp,sp,-32
    1628:	afbf001c 	sw	ra,28(sp)
    162c:	3c050000 	lui	a1,0x0
    1630:	24a50000 	addiu	a1,a1,0
    1634:	afa00010 	sw	zero,16(sp)
    1638:	afa40020 	sw	a0,32(sp)
    163c:	00003025 	move	a2,zero
    1640:	0c000000 	jal	0 <DemoSa_Destroy>
    1644:	24070000 	li	a3,0
    1648:	8fa40020 	lw	a0,32(sp)
    164c:	24020001 	li	v0,1
    1650:	240e0013 	li	t6,19
    1654:	240f00ff 	li	t7,255
    1658:	24050002 	li	a1,2
    165c:	ac8e0198 	sw	t6,408(a0)
    1660:	ac82019c 	sw	v0,412(a0)
    1664:	ac8201b0 	sw	v0,432(a0)
    1668:	0c000000 	jal	0 <DemoSa_Destroy>
    166c:	a08f00c8 	sb	t7,200(a0)
    1670:	8fbf001c 	lw	ra,28(sp)
    1674:	27bd0020 	addiu	sp,sp,32
    1678:	03e00008 	jr	ra
    167c:	00000000 	nop

00001680 <func_8098FAE0>:
    1680:	27bdffe0 	addiu	sp,sp,-32
    1684:	afbf001c 	sw	ra,28(sp)
    1688:	3c050000 	lui	a1,0x0
    168c:	24a50000 	addiu	a1,a1,0
    1690:	afa00010 	sw	zero,16(sp)
    1694:	afa40020 	sw	a0,32(sp)
    1698:	24060002 	li	a2,2
    169c:	0c000000 	jal	0 <DemoSa_Destroy>
    16a0:	3c07c100 	lui	a3,0xc100
    16a4:	8fa40020 	lw	a0,32(sp)
    16a8:	24020001 	li	v0,1
    16ac:	240e0014 	li	t6,20
    16b0:	240f00ff 	li	t7,255
    16b4:	ac8e0198 	sw	t6,408(a0)
    16b8:	ac82019c 	sw	v0,412(a0)
    16bc:	ac8201b0 	sw	v0,432(a0)
    16c0:	a08f00c8 	sb	t7,200(a0)
    16c4:	8fbf001c 	lw	ra,28(sp)
    16c8:	27bd0020 	addiu	sp,sp,32
    16cc:	03e00008 	jr	ra
    16d0:	00000000 	nop

000016d4 <func_8098FB34>:
    16d4:	27bdffe0 	addiu	sp,sp,-32
    16d8:	10a00007 	beqz	a1,16f8 <func_8098FB34+0x24>
    16dc:	afbf001c 	sw	ra,28(sp)
    16e0:	3c050000 	lui	a1,0x0
    16e4:	24a50000 	addiu	a1,a1,0
    16e8:	00003025 	move	a2,zero
    16ec:	24070000 	li	a3,0
    16f0:	0c000000 	jal	0 <DemoSa_Destroy>
    16f4:	afa00010 	sw	zero,16(sp)
    16f8:	8fbf001c 	lw	ra,28(sp)
    16fc:	27bd0020 	addiu	sp,sp,32
    1700:	03e00008 	jr	ra
    1704:	00000000 	nop

00001708 <func_8098FB68>:
    1708:	27bdffd8 	addiu	sp,sp,-40
    170c:	afb00018 	sw	s0,24(sp)
    1710:	00808025 	move	s0,a0
    1714:	afbf001c 	sw	ra,28(sp)
    1718:	afa5002c 	sw	a1,44(sp)
    171c:	00a02025 	move	a0,a1
    1720:	0c000000 	jal	0 <DemoSa_Destroy>
    1724:	24050001 	li	a1,1
    1728:	5040002a 	beqzl	v0,17d4 <func_8098FB68+0xcc>
    172c:	8fbf001c 	lw	ra,28(sp)
    1730:	94460000 	lhu	a2,0(v0)
    1734:	8e0301ac 	lw	v1,428(s0)
    1738:	24010004 	li	at,4
    173c:	50c30025 	beql	a2,v1,17d4 <func_8098FB68+0xcc>
    1740:	8fbf001c 	lw	ra,28(sp)
    1744:	10c1000c 	beq	a2,at,1778 <func_8098FB68+0x70>
    1748:	02002025 	move	a0,s0
    174c:	2401000c 	li	at,12
    1750:	10c1000d 	beq	a2,at,1788 <func_8098FB68+0x80>
    1754:	02002025 	move	a0,s0
    1758:	2401000d 	li	at,13
    175c:	10c1000f 	beq	a2,at,179c <func_8098FB68+0x94>
    1760:	02002025 	move	a0,s0
    1764:	2401000e 	li	at,14
    1768:	10c10010 	beq	a2,at,17ac <func_8098FB68+0xa4>
    176c:	02002025 	move	a0,s0
    1770:	10000012 	b	17bc <func_8098FB68+0xb4>
    1774:	3c040000 	lui	a0,0x0
    1778:	0c000000 	jal	0 <DemoSa_Destroy>
    177c:	afa60020 	sw	a2,32(sp)
    1780:	10000012 	b	17cc <func_8098FB68+0xc4>
    1784:	8fa60020 	lw	a2,32(sp)
    1788:	8fa5002c 	lw	a1,44(sp)
    178c:	0c000000 	jal	0 <DemoSa_Destroy>
    1790:	afa60020 	sw	a2,32(sp)
    1794:	1000000d 	b	17cc <func_8098FB68+0xc4>
    1798:	8fa60020 	lw	a2,32(sp)
    179c:	0c000000 	jal	0 <DemoSa_Destroy>
    17a0:	afa60020 	sw	a2,32(sp)
    17a4:	10000009 	b	17cc <func_8098FB68+0xc4>
    17a8:	8fa60020 	lw	a2,32(sp)
    17ac:	0c000000 	jal	0 <DemoSa_Destroy>
    17b0:	afa60020 	sw	a2,32(sp)
    17b4:	10000005 	b	17cc <func_8098FB68+0xc4>
    17b8:	8fa60020 	lw	a2,32(sp)
    17bc:	24840084 	addiu	a0,a0,132
    17c0:	0c000000 	jal	0 <DemoSa_Destroy>
    17c4:	afa60020 	sw	a2,32(sp)
    17c8:	8fa60020 	lw	a2,32(sp)
    17cc:	ae0601ac 	sw	a2,428(s0)
    17d0:	8fbf001c 	lw	ra,28(sp)
    17d4:	8fb00018 	lw	s0,24(sp)
    17d8:	27bd0028 	addiu	sp,sp,40
    17dc:	03e00008 	jr	ra
    17e0:	00000000 	nop

000017e4 <func_8098FC44>:
    17e4:	27bdffe8 	addiu	sp,sp,-24
    17e8:	afbf0014 	sw	ra,20(sp)
    17ec:	0c000000 	jal	0 <DemoSa_Destroy>
    17f0:	00000000 	nop
    17f4:	8fbf0014 	lw	ra,20(sp)
    17f8:	27bd0018 	addiu	sp,sp,24
    17fc:	03e00008 	jr	ra
    1800:	00000000 	nop

00001804 <func_8098FC64>:
    1804:	27bdffe8 	addiu	sp,sp,-24
    1808:	afbf0014 	sw	ra,20(sp)
    180c:	0c000000 	jal	0 <DemoSa_Destroy>
    1810:	afa40018 	sw	a0,24(sp)
    1814:	0c000000 	jal	0 <DemoSa_Destroy>
    1818:	8fa40018 	lw	a0,24(sp)
    181c:	0c000000 	jal	0 <DemoSa_Destroy>
    1820:	8fa40018 	lw	a0,24(sp)
    1824:	0c000000 	jal	0 <DemoSa_Destroy>
    1828:	8fa40018 	lw	a0,24(sp)
    182c:	8fbf0014 	lw	ra,20(sp)
    1830:	27bd0018 	addiu	sp,sp,24
    1834:	03e00008 	jr	ra
    1838:	00000000 	nop

0000183c <func_8098FC9C>:
    183c:	27bdffe8 	addiu	sp,sp,-24
    1840:	afbf0014 	sw	ra,20(sp)
    1844:	afa40018 	sw	a0,24(sp)
    1848:	0c000000 	jal	0 <DemoSa_Destroy>
    184c:	afa5001c 	sw	a1,28(sp)
    1850:	0c000000 	jal	0 <DemoSa_Destroy>
    1854:	8fa40018 	lw	a0,24(sp)
    1858:	8fa40018 	lw	a0,24(sp)
    185c:	0c000000 	jal	0 <DemoSa_Destroy>
    1860:	8fa5001c 	lw	a1,28(sp)
    1864:	8fbf0014 	lw	ra,20(sp)
    1868:	27bd0018 	addiu	sp,sp,24
    186c:	03e00008 	jr	ra
    1870:	00000000 	nop

00001874 <func_8098FCD4>:
    1874:	27bdffe8 	addiu	sp,sp,-24
    1878:	afbf0014 	sw	ra,20(sp)
    187c:	afa40018 	sw	a0,24(sp)
    1880:	0c000000 	jal	0 <DemoSa_Destroy>
    1884:	afa5001c 	sw	a1,28(sp)
    1888:	0c000000 	jal	0 <DemoSa_Destroy>
    188c:	8fa40018 	lw	a0,24(sp)
    1890:	8fa40018 	lw	a0,24(sp)
    1894:	0c000000 	jal	0 <DemoSa_Destroy>
    1898:	8fa5001c 	lw	a1,28(sp)
    189c:	8fbf0014 	lw	ra,20(sp)
    18a0:	27bd0018 	addiu	sp,sp,24
    18a4:	03e00008 	jr	ra
    18a8:	00000000 	nop

000018ac <func_8098FD0C>:
    18ac:	27bdffe8 	addiu	sp,sp,-24
    18b0:	afbf0014 	sw	ra,20(sp)
    18b4:	afa40018 	sw	a0,24(sp)
    18b8:	0c000000 	jal	0 <DemoSa_Destroy>
    18bc:	afa5001c 	sw	a1,28(sp)
    18c0:	0c000000 	jal	0 <DemoSa_Destroy>
    18c4:	8fa40018 	lw	a0,24(sp)
    18c8:	8fa40018 	lw	a0,24(sp)
    18cc:	0c000000 	jal	0 <DemoSa_Destroy>
    18d0:	00402825 	move	a1,v0
    18d4:	8fa40018 	lw	a0,24(sp)
    18d8:	0c000000 	jal	0 <DemoSa_Destroy>
    18dc:	8fa5001c 	lw	a1,28(sp)
    18e0:	8fbf0014 	lw	ra,20(sp)
    18e4:	27bd0018 	addiu	sp,sp,24
    18e8:	03e00008 	jr	ra
    18ec:	00000000 	nop

000018f0 <DemoSa_Update>:
    18f0:	27bdffe8 	addiu	sp,sp,-24
    18f4:	afbf0014 	sw	ra,20(sp)
    18f8:	8c820198 	lw	v0,408(a0)
    18fc:	04400008 	bltz	v0,1920 <DemoSa_Update+0x30>
    1900:	28410015 	slti	at,v0,21
    1904:	10200006 	beqz	at,1920 <DemoSa_Update+0x30>
    1908:	00027080 	sll	t6,v0,0x2
    190c:	3c030000 	lui	v1,0x0
    1910:	006e1821 	addu	v1,v1,t6
    1914:	8c630c7c 	lw	v1,3196(v1)
    1918:	14600006 	bnez	v1,1934 <DemoSa_Update+0x44>
    191c:	00000000 	nop
    1920:	3c040000 	lui	a0,0x0
    1924:	0c000000 	jal	0 <DemoSa_Destroy>
    1928:	248400c0 	addiu	a0,a0,192
    192c:	10000004 	b	1940 <DemoSa_Update+0x50>
    1930:	8fbf0014 	lw	ra,20(sp)
    1934:	0060f809 	jalr	v1
    1938:	00000000 	nop
    193c:	8fbf0014 	lw	ra,20(sp)
    1940:	27bd0018 	addiu	sp,sp,24
    1944:	03e00008 	jr	ra
    1948:	00000000 	nop

0000194c <DemoSa_Init>:
    194c:	27bdffe0 	addiu	sp,sp,-32
    1950:	afb10018 	sw	s1,24(sp)
    1954:	afb00014 	sw	s0,20(sp)
    1958:	00808025 	move	s0,a0
    195c:	00a08825 	move	s1,a1
    1960:	afbf001c 	sw	ra,28(sp)
    1964:	3c060000 	lui	a2,0x0
    1968:	24c60000 	addiu	a2,a2,0
    196c:	24050000 	li	a1,0
    1970:	248400b4 	addiu	a0,a0,180
    1974:	0c000000 	jal	0 <DemoSa_Destroy>
    1978:	3c0741f0 	lui	a3,0x41f0
    197c:	8602001c 	lh	v0,28(s0)
    1980:	24010002 	li	at,2
    1984:	02002025 	move	a0,s0
    1988:	1041000b 	beq	v0,at,19b8 <DemoSa_Init+0x6c>
    198c:	24010003 	li	at,3
    1990:	1041000d 	beq	v0,at,19c8 <DemoSa_Init+0x7c>
    1994:	02002025 	move	a0,s0
    1998:	24010004 	li	at,4
    199c:	1041000e 	beq	v0,at,19d8 <DemoSa_Init+0x8c>
    19a0:	02002025 	move	a0,s0
    19a4:	24010005 	li	at,5
    19a8:	1041000f 	beq	v0,at,19e8 <DemoSa_Init+0x9c>
    19ac:	02002025 	move	a0,s0
    19b0:	10000011 	b	19f8 <DemoSa_Init+0xac>
    19b4:	02002025 	move	a0,s0
    19b8:	0c000000 	jal	0 <DemoSa_Destroy>
    19bc:	02202825 	move	a1,s1
    19c0:	10000010 	b	1a04 <DemoSa_Init+0xb8>
    19c4:	8fbf001c 	lw	ra,28(sp)
    19c8:	0c000000 	jal	0 <DemoSa_Destroy>
    19cc:	02202825 	move	a1,s1
    19d0:	1000000c 	b	1a04 <DemoSa_Init+0xb8>
    19d4:	8fbf001c 	lw	ra,28(sp)
    19d8:	0c000000 	jal	0 <DemoSa_Destroy>
    19dc:	02202825 	move	a1,s1
    19e0:	10000008 	b	1a04 <DemoSa_Init+0xb8>
    19e4:	8fbf001c 	lw	ra,28(sp)
    19e8:	0c000000 	jal	0 <DemoSa_Destroy>
    19ec:	02202825 	move	a1,s1
    19f0:	10000004 	b	1a04 <DemoSa_Init+0xb8>
    19f4:	8fbf001c 	lw	ra,28(sp)
    19f8:	0c000000 	jal	0 <DemoSa_Destroy>
    19fc:	02202825 	move	a1,s1
    1a00:	8fbf001c 	lw	ra,28(sp)
    1a04:	8fb00014 	lw	s0,20(sp)
    1a08:	8fb10018 	lw	s1,24(sp)
    1a0c:	03e00008 	jr	ra
    1a10:	27bd0020 	addiu	sp,sp,32

00001a14 <DemoSa_OverrideLimbDraw>:
    1a14:	2401000f 	li	at,15
    1a18:	afa40000 	sw	a0,0(sp)
    1a1c:	14a10008 	bne	a1,at,1a40 <DemoSa_OverrideLimbDraw+0x2c>
    1a20:	afa7000c 	sw	a3,12(sp)
    1a24:	8fae0014 	lw	t6,20(sp)
    1a28:	3c180000 	lui	t8,0x0
    1a2c:	27180000 	addiu	t8,t8,0
    1a30:	8dcf01b0 	lw	t7,432(t6)
    1a34:	11e00002 	beqz	t7,1a40 <DemoSa_OverrideLimbDraw+0x2c>
    1a38:	00000000 	nop
    1a3c:	acd80000 	sw	t8,0(a2)
    1a40:	03e00008 	jr	ra
    1a44:	00001025 	move	v0,zero

00001a48 <func_8098FEA8>:
    1a48:	afa40000 	sw	a0,0(sp)
    1a4c:	03e00008 	jr	ra
    1a50:	afa50004 	sw	a1,4(sp)

00001a54 <func_8098FEB4>:
    1a54:	27bdff80 	addiu	sp,sp,-128
    1a58:	afbf0024 	sw	ra,36(sp)
    1a5c:	afa40080 	sw	a0,128(sp)
    1a60:	afa50084 	sw	a1,132(sp)
    1a64:	84820190 	lh	v0,400(a0)
    1a68:	3c180000 	lui	t8,0x0
    1a6c:	3c0b0000 	lui	t3,0x0
    1a70:	00027880 	sll	t7,v0,0x2
    1a74:	030fc021 	addu	t8,t8,t7
    1a78:	8f180000 	lw	t8,0(t8)
    1a7c:	3c060000 	lui	a2,0x0
    1a80:	24c600fc 	addiu	a2,a2,252
    1a84:	afb80070 	sw	t8,112(sp)
    1a88:	84830194 	lh	v1,404(a0)
    1a8c:	27a4004c 	addiu	a0,sp,76
    1a90:	2407025a 	li	a3,602
    1a94:	0003c880 	sll	t9,v1,0x2
    1a98:	01795821 	addu	t3,t3,t9
    1a9c:	8d6b0000 	lw	t3,0(t3)
    1aa0:	afab0064 	sw	t3,100(sp)
    1aa4:	8ca50000 	lw	a1,0(a1)
    1aa8:	0c000000 	jal	0 <DemoSa_Destroy>
    1aac:	afa5005c 	sw	a1,92(sp)
    1ab0:	8fad0084 	lw	t5,132(sp)
    1ab4:	0c000000 	jal	0 <DemoSa_Destroy>
    1ab8:	8da40000 	lw	a0,0(t5)
    1abc:	8fa8005c 	lw	t0,92(sp)
    1ac0:	8faa0070 	lw	t2,112(sp)
    1ac4:	3c070000 	lui	a3,0x0
    1ac8:	8d0202c0 	lw	v0,704(t0)
    1acc:	000a7100 	sll	t6,t2,0x4
    1ad0:	000ecf02 	srl	t9,t6,0x1c
    1ad4:	3c18db06 	lui	t8,0xdb06
    1ad8:	244f0008 	addiu	t7,v0,8
    1adc:	37180020 	ori	t8,t8,0x20
    1ae0:	00195880 	sll	t3,t9,0x2
    1ae4:	24e70000 	addiu	a3,a3,0
    1ae8:	ad0f02c0 	sw	t7,704(t0)
    1aec:	00eb2021 	addu	a0,a3,t3
    1af0:	ac580000 	sw	t8,0(v0)
    1af4:	8c8c0000 	lw	t4,0(a0)
    1af8:	3c0900ff 	lui	t1,0xff
    1afc:	3529ffff 	ori	t1,t1,0xffff
    1b00:	01492824 	and	a1,t2,t1
    1b04:	3c068000 	lui	a2,0x8000
    1b08:	01856821 	addu	t5,t4,a1
    1b0c:	01a67821 	addu	t7,t5,a2
    1b10:	ac4f0004 	sw	t7,4(v0)
    1b14:	8d0202c0 	lw	v0,704(t0)
    1b18:	3c0edb06 	lui	t6,0xdb06
    1b1c:	35ce0024 	ori	t6,t6,0x24
    1b20:	24580008 	addiu	t8,v0,8
    1b24:	ad1802c0 	sw	t8,704(t0)
    1b28:	ac4e0000 	sw	t6,0(v0)
    1b2c:	8c990000 	lw	t9,0(a0)
    1b30:	3c0fdb06 	lui	t7,0xdb06
    1b34:	35ef0028 	ori	t7,t7,0x28
    1b38:	03255821 	addu	t3,t9,a1
    1b3c:	01666021 	addu	t4,t3,a2
    1b40:	ac4c0004 	sw	t4,4(v0)
    1b44:	8fa40064 	lw	a0,100(sp)
    1b48:	8d0202c0 	lw	v0,704(t0)
    1b4c:	0004c100 	sll	t8,a0,0x4
    1b50:	00187702 	srl	t6,t8,0x1c
    1b54:	244d0008 	addiu	t5,v0,8
    1b58:	000ec880 	sll	t9,t6,0x2
    1b5c:	ad0d02c0 	sw	t5,704(t0)
    1b60:	00f95821 	addu	t3,a3,t9
    1b64:	ac4f0000 	sw	t7,0(v0)
    1b68:	8d6c0000 	lw	t4,0(t3)
    1b6c:	00896824 	and	t5,a0,t1
    1b70:	240b00ff 	li	t3,255
    1b74:	018d7821 	addu	t7,t4,t5
    1b78:	01e6c021 	addu	t8,t7,a2
    1b7c:	ac580004 	sw	t8,4(v0)
    1b80:	8d0202c0 	lw	v0,704(t0)
    1b84:	3c19fb00 	lui	t9,0xfb00
    1b88:	3c0f0000 	lui	t7,0x0
    1b8c:	244e0008 	addiu	t6,v0,8
    1b90:	ad0e02c0 	sw	t6,704(t0)
    1b94:	ac4b0004 	sw	t3,4(v0)
    1b98:	ac590000 	sw	t9,0(v0)
    1b9c:	8d0202c0 	lw	v0,704(t0)
    1ba0:	3c0ddb06 	lui	t5,0xdb06
    1ba4:	35ad0030 	ori	t5,t5,0x30
    1ba8:	244c0008 	addiu	t4,v0,8
    1bac:	ad0c02c0 	sw	t4,704(t0)
    1bb0:	25ef0010 	addiu	t7,t7,16
    1bb4:	ac4f0004 	sw	t7,4(v0)
    1bb8:	ac4d0000 	sw	t5,0(v0)
    1bbc:	8fa30080 	lw	v1,128(sp)
    1bc0:	3c180000 	lui	t8,0x0
    1bc4:	27180000 	addiu	t8,t8,0
    1bc8:	2462014c 	addiu	v0,v1,332
    1bcc:	8c450004 	lw	a1,4(v0)
    1bd0:	8c460020 	lw	a2,32(v0)
    1bd4:	90470002 	lbu	a3,2(v0)
    1bd8:	afa00014 	sw	zero,20(sp)
    1bdc:	afb80010 	sw	t8,16(sp)
    1be0:	8fa40084 	lw	a0,132(sp)
    1be4:	0c000000 	jal	0 <DemoSa_Destroy>
    1be8:	afa30018 	sw	v1,24(sp)
    1bec:	8fae0084 	lw	t6,132(sp)
    1bf0:	3c060000 	lui	a2,0x0
    1bf4:	24c6010c 	addiu	a2,a2,268
    1bf8:	27a4004c 	addiu	a0,sp,76
    1bfc:	24070272 	li	a3,626
    1c00:	0c000000 	jal	0 <DemoSa_Destroy>
    1c04:	8dc50000 	lw	a1,0(t6)
    1c08:	8fbf0024 	lw	ra,36(sp)
    1c0c:	27bd0080 	addiu	sp,sp,128
    1c10:	03e00008 	jr	ra
    1c14:	00000000 	nop

00001c18 <DemoSa_Draw>:
    1c18:	27bdffe8 	addiu	sp,sp,-24
    1c1c:	afbf0014 	sw	ra,20(sp)
    1c20:	8c82019c 	lw	v0,412(a0)
    1c24:	04400008 	bltz	v0,1c48 <DemoSa_Draw+0x30>
    1c28:	28410003 	slti	at,v0,3
    1c2c:	10200006 	beqz	at,1c48 <DemoSa_Draw+0x30>
    1c30:	00027080 	sll	t6,v0,0x2
    1c34:	3c030000 	lui	v1,0x0
    1c38:	006e1821 	addu	v1,v1,t6
    1c3c:	8c630cd0 	lw	v1,3280(v1)
    1c40:	14600006 	bnez	v1,1c5c <DemoSa_Draw+0x44>
    1c44:	00000000 	nop
    1c48:	3c040000 	lui	a0,0x0
    1c4c:	0c000000 	jal	0 <DemoSa_Destroy>
    1c50:	2484011c 	addiu	a0,a0,284
    1c54:	10000004 	b	1c68 <DemoSa_Draw+0x50>
    1c58:	8fbf0014 	lw	ra,20(sp)
    1c5c:	0060f809 	jalr	v1
    1c60:	00000000 	nop
    1c64:	8fbf0014 	lw	ra,20(sp)
    1c68:	27bd0018 	addiu	sp,sp,24
    1c6c:	03e00008 	jr	ra
    1c70:	00000000 	nop
	...
