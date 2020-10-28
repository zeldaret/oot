
build/src/overlays/actors/ovl_Demo_Du/z_demo_du.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoDu_Destroy>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	0c000000 	jal	0 <DemoDu_Destroy>
       c:	2484014c 	addiu	a0,a0,332
      10:	8fbf0014 	lw	ra,20(sp)
      14:	27bd0018 	addiu	sp,sp,24
      18:	03e00008 	jr	ra
      1c:	00000000 	nop

00000020 <func_80969AF0>:
      20:	27bdffc8 	addiu	sp,sp,-56
      24:	afbf0014 	sw	ra,20(sp)
      28:	848e0192 	lh	t6,402(a0)
      2c:	00803025 	move	a2,a0
      30:	24c30192 	addiu	v1,a2,402
      34:	15c00003 	bnez	t6,44 <func_80969AF0+0x24>
      38:	00001025 	move	v0,zero
      3c:	10000005 	b	54 <func_80969AF0+0x34>
      40:	24830192 	addiu	v1,a0,402
      44:	846f0000 	lh	t7,0(v1)
      48:	25f8ffff 	addiu	t8,t7,-1
      4c:	a4780000 	sh	t8,0(v1)
      50:	84620000 	lh	v0,0(v1)
      54:	14400008 	bnez	v0,78 <func_80969AF0+0x58>
      58:	2404003c 	li	a0,60
      5c:	2405003c 	li	a1,60
      60:	afa3001c 	sw	v1,28(sp)
      64:	0c000000 	jal	0 <DemoDu_Destroy>
      68:	afa60038 	sw	a2,56(sp)
      6c:	8fa3001c 	lw	v1,28(sp)
      70:	8fa60038 	lw	a2,56(sp)
      74:	a4620000 	sh	v0,0(v1)
      78:	84790000 	lh	t9,0(v1)
      7c:	24c20190 	addiu	v0,a2,400
      80:	a4590000 	sh	t9,0(v0)
      84:	84480000 	lh	t0,0(v0)
      88:	29010003 	slti	at,t0,3
      8c:	54200003 	bnezl	at,9c <func_80969AF0+0x7c>
      90:	8fbf0014 	lw	ra,20(sp)
      94:	a4400000 	sh	zero,0(v0)
      98:	8fbf0014 	lw	ra,20(sp)
      9c:	27bd0038 	addiu	sp,sp,56
      a0:	03e00008 	jr	ra
      a4:	00000000 	nop

000000a8 <func_80969B78>:
      a8:	afa50004 	sw	a1,4(sp)
      ac:	00052c00 	sll	a1,a1,0x10
      b0:	00052c03 	sra	a1,a1,0x10
      b4:	03e00008 	jr	ra
      b8:	a4850190 	sh	a1,400(a0)

000000bc <func_80969B8C>:
      bc:	afa50004 	sw	a1,4(sp)
      c0:	00052c00 	sll	a1,a1,0x10
      c4:	00052c03 	sra	a1,a1,0x10
      c8:	03e00008 	jr	ra
      cc:	a4850194 	sh	a1,404(a0)

000000d0 <func_80969BA0>:
      d0:	44802000 	mtc1	zero,$f4
      d4:	240e0015 	li	t6,21
      d8:	ac8e0198 	sw	t6,408(a0)
      dc:	ac80019c 	sw	zero,412(a0)
      e0:	ac8001a8 	sw	zero,424(a0)
      e4:	ac8001ac 	sw	zero,428(a0)
      e8:	a08000c8 	sb	zero,200(a0)
      ec:	03e00008 	jr	ra
      f0:	e48401a4 	swc1	$f4,420(a0)

000000f4 <func_80969BC4>:
      f4:	27bdffe8 	addiu	sp,sp,-24
      f8:	afbf0014 	sw	ra,20(sp)
      fc:	90ae1d6c 	lbu	t6,7532(a1)
     100:	3c0f0000 	lui	t7,0x0
     104:	3c190000 	lui	t9,0x0
     108:	15c0000d 	bnez	t6,140 <func_80969BC4+0x4c>
     10c:	00000000 	nop
     110:	8def0000 	lw	t7,0(t7)
     114:	51e00011 	beqzl	t7,15c <func_80969BC4+0x68>
     118:	8fbf0014 	lw	ra,20(sp)
     11c:	8498001c 	lh	t8,28(a0)
     120:	24010002 	li	at,2
     124:	17010003 	bne	t8,at,134 <func_80969BC4+0x40>
     128:	00000000 	nop
     12c:	0c000000 	jal	0 <DemoDu_Destroy>
     130:	00000000 	nop
     134:	3c010000 	lui	at,0x0
     138:	10000007 	b	158 <func_80969BC4+0x64>
     13c:	ac200000 	sw	zero,0(at)
     140:	8f390000 	lw	t9,0(t9)
     144:	24080001 	li	t0,1
     148:	3c010000 	lui	at,0x0
     14c:	57200003 	bnezl	t9,15c <func_80969BC4+0x68>
     150:	8fbf0014 	lw	ra,20(sp)
     154:	ac280000 	sw	t0,0(at)
     158:	8fbf0014 	lw	ra,20(sp)
     15c:	27bd0018 	addiu	sp,sp,24
     160:	03e00008 	jr	ra
     164:	00000000 	nop

00000168 <func_80969C38>:
     168:	27bdffe8 	addiu	sp,sp,-24
     16c:	afbf0014 	sw	ra,20(sp)
     170:	0c000000 	jal	0 <DemoDu_Destroy>
     174:	2484014c 	addiu	a0,a0,332
     178:	8fbf0014 	lw	ra,20(sp)
     17c:	27bd0018 	addiu	sp,sp,24
     180:	03e00008 	jr	ra
     184:	00000000 	nop

00000188 <func_80969C58>:
     188:	27bdffe0 	addiu	sp,sp,-32
     18c:	3c0141f0 	lui	at,0x41f0
     190:	44810000 	mtc1	at,$f0
     194:	afa50024 	sw	a1,36(sp)
     198:	00802825 	move	a1,a0
     19c:	afbf001c 	sw	ra,28(sp)
     1a0:	afa40020 	sw	a0,32(sp)
     1a4:	240e0005 	li	t6,5
     1a8:	44070000 	mfc1	a3,$f0
     1ac:	afae0014 	sw	t6,20(sp)
     1b0:	8fa40024 	lw	a0,36(sp)
     1b4:	3c064296 	lui	a2,0x4296
     1b8:	0c000000 	jal	0 <DemoDu_Destroy>
     1bc:	e7a00010 	swc1	$f0,16(sp)
     1c0:	8fbf001c 	lw	ra,28(sp)
     1c4:	27bd0020 	addiu	sp,sp,32
     1c8:	03e00008 	jr	ra
     1cc:	00000000 	nop

000001d0 <func_80969CA0>:
     1d0:	908e1d6c 	lbu	t6,7532(a0)
     1d4:	00057880 	sll	t7,a1,0x2
     1d8:	008fc021 	addu	t8,a0,t7
     1dc:	11c00003 	beqz	t6,1ec <func_80969CA0+0x1c>
     1e0:	00001025 	move	v0,zero
     1e4:	03e00008 	jr	ra
     1e8:	8f021d8c 	lw	v0,7564(t8)
     1ec:	03e00008 	jr	ra
     1f0:	00000000 	nop

000001f4 <func_80969CC4>:
     1f4:	27bdffe8 	addiu	sp,sp,-24
     1f8:	afa40018 	sw	a0,24(sp)
     1fc:	afbf0014 	sw	ra,20(sp)
     200:	afa5001c 	sw	a1,28(sp)
     204:	00a02025 	move	a0,a1
     208:	afa60020 	sw	a2,32(sp)
     20c:	0c000000 	jal	0 <DemoDu_Destroy>
     210:	00e02825 	move	a1,a3
     214:	10400007 	beqz	v0,234 <func_80969CC4+0x40>
     218:	8fbf0014 	lw	ra,20(sp)
     21c:	97ae0022 	lhu	t6,34(sp)
     220:	944f0000 	lhu	t7,0(v0)
     224:	55cf0004 	bnel	t6,t7,238 <func_80969CC4+0x44>
     228:	00001025 	move	v0,zero
     22c:	10000002 	b	238 <func_80969CC4+0x44>
     230:	24020001 	li	v0,1
     234:	00001025 	move	v0,zero
     238:	03e00008 	jr	ra
     23c:	27bd0018 	addiu	sp,sp,24

00000240 <func_80969D10>:
     240:	27bdffe8 	addiu	sp,sp,-24
     244:	afa40018 	sw	a0,24(sp)
     248:	afbf0014 	sw	ra,20(sp)
     24c:	afa5001c 	sw	a1,28(sp)
     250:	00a02025 	move	a0,a1
     254:	afa60020 	sw	a2,32(sp)
     258:	0c000000 	jal	0 <DemoDu_Destroy>
     25c:	00e02825 	move	a1,a3
     260:	10400007 	beqz	v0,280 <func_80969D10+0x40>
     264:	8fbf0014 	lw	ra,20(sp)
     268:	97ae0022 	lhu	t6,34(sp)
     26c:	944f0000 	lhu	t7,0(v0)
     270:	51cf0004 	beql	t6,t7,284 <func_80969D10+0x44>
     274:	00001025 	move	v0,zero
     278:	10000002 	b	284 <func_80969D10+0x44>
     27c:	24020001 	li	v0,1
     280:	00001025 	move	v0,zero
     284:	03e00008 	jr	ra
     288:	27bd0018 	addiu	sp,sp,24

0000028c <func_80969D5C>:
     28c:	27bdffe8 	addiu	sp,sp,-24
     290:	00803825 	move	a3,a0
     294:	afbf0014 	sw	ra,20(sp)
     298:	afa5001c 	sw	a1,28(sp)
     29c:	00a02025 	move	a0,a1
     2a0:	00c02825 	move	a1,a2
     2a4:	0c000000 	jal	0 <DemoDu_Destroy>
     2a8:	afa70018 	sw	a3,24(sp)
     2ac:	10400013 	beqz	v0,2fc <func_80969D5C+0x70>
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

0000030c <func_80969DDC>:
     30c:	27bdffd8 	addiu	sp,sp,-40
     310:	afbf0024 	sw	ra,36(sp)
     314:	afa40028 	sw	a0,40(sp)
     318:	afa5002c 	sw	a1,44(sp)
     31c:	afa60030 	sw	a2,48(sp)
     320:	afa70034 	sw	a3,52(sp)
     324:	0c000000 	jal	0 <DemoDu_Destroy>
     328:	00a02025 	move	a0,a1
     32c:	8fae0038 	lw	t6,56(sp)
     330:	8fa40028 	lw	a0,40(sp)
     334:	8fa5002c 	lw	a1,44(sp)
     338:	15c00007 	bnez	t6,358 <func_80969DDC+0x4c>
     33c:	2484014c 	addiu	a0,a0,332
     340:	44822000 	mtc1	v0,$f4
     344:	3c013f80 	lui	at,0x3f80
     348:	44800000 	mtc1	zero,$f0
     34c:	44816000 	mtc1	at,$f12
     350:	10000006 	b	36c <func_80969DDC+0x60>
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
     384:	0c000000 	jal	0 <DemoDu_Destroy>
     388:	e7a80018 	swc1	$f8,24(sp)
     38c:	8fbf0024 	lw	ra,36(sp)
     390:	27bd0028 	addiu	sp,sp,40
     394:	03e00008 	jr	ra
     398:	00000000 	nop

0000039c <func_80969E6C>:
     39c:	27bdffd8 	addiu	sp,sp,-40
     3a0:	afa40028 	sw	a0,40(sp)
     3a4:	afa5002c 	sw	a1,44(sp)
     3a8:	00a02025 	move	a0,a1
     3ac:	8fa50028 	lw	a1,40(sp)
     3b0:	afbf0024 	sw	ra,36(sp)
     3b4:	3c060601 	lui	a2,0x601
     3b8:	3c070600 	lui	a3,0x600
     3bc:	24e76eb0 	addiu	a3,a3,28336
     3c0:	24c61ca8 	addiu	a2,a2,7336
     3c4:	afa00010 	sw	zero,16(sp)
     3c8:	afa00014 	sw	zero,20(sp)
     3cc:	afa00018 	sw	zero,24(sp)
     3d0:	0c000000 	jal	0 <DemoDu_Destroy>
     3d4:	24a5014c 	addiu	a1,a1,332
     3d8:	3c010000 	lui	at,0x0
     3dc:	8fa40028 	lw	a0,40(sp)
     3e0:	c4240000 	lwc1	$f4,0(at)
     3e4:	24050001 	li	a1,1
     3e8:	0c000000 	jal	0 <DemoDu_Destroy>
     3ec:	e48400bc 	swc1	$f4,188(a0)
     3f0:	8fa40028 	lw	a0,40(sp)
     3f4:	0c000000 	jal	0 <DemoDu_Destroy>
     3f8:	24050003 	li	a1,3
     3fc:	8fbf0024 	lw	ra,36(sp)
     400:	27bd0028 	addiu	sp,sp,40
     404:	03e00008 	jr	ra
     408:	00000000 	nop

0000040c <func_80969EDC>:
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
     450:	0c000000 	jal	0 <DemoDu_Destroy>
     454:	e7ac0018 	swc1	$f12,24(sp)
     458:	8fbf0034 	lw	ra,52(sp)
     45c:	27bd0038 	addiu	sp,sp,56
     460:	03e00008 	jr	ra
     464:	00000000 	nop

00000468 <func_80969F38>:
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
     498:	240e0009 	li	t6,9
     49c:	afae0028 	sw	t6,40(sp)
     4a0:	24c41c24 	addiu	a0,a2,7204
     4a4:	e7a20014 	swc1	$f2,20(sp)
     4a8:	afa6003c 	sw	a2,60(sp)
     4ac:	afa00024 	sw	zero,36(sp)
     4b0:	afa00020 	sw	zero,32(sp)
     4b4:	afa0001c 	sw	zero,28(sp)
     4b8:	2407008b 	li	a3,139
     4bc:	e7a00010 	swc1	$f0,16(sp)
     4c0:	0c000000 	jal	0 <DemoDu_Destroy>
     4c4:	e7ac0018 	swc1	$f12,24(sp)
     4c8:	8fa4003c 	lw	a0,60(sp)
     4cc:	0c000000 	jal	0 <DemoDu_Destroy>
     4d0:	24050067 	li	a1,103
     4d4:	8fbf0034 	lw	ra,52(sp)
     4d8:	27bd0038 	addiu	sp,sp,56
     4dc:	03e00008 	jr	ra
     4e0:	00000000 	nop

000004e4 <func_80969FB4>:
     4e4:	afa50004 	sw	a1,4(sp)
     4e8:	3c010000 	lui	at,0x0
     4ec:	c4260000 	lwc1	$f6,0(at)
     4f0:	c48400bc 	lwc1	$f4,188(a0)
     4f4:	46062200 	add.s	$f8,$f4,$f6
     4f8:	03e00008 	jr	ra
     4fc:	e48800bc 	swc1	$f8,188(a0)

00000500 <func_80969FD0>:
     500:	3c020000 	lui	v0,0x0
     504:	24420000 	addiu	v0,v0,0
     508:	904e1415 	lbu	t6,5141(v0)
     50c:	27bdffd8 	addiu	sp,sp,-40
     510:	24070001 	li	a3,1
     514:	afbf0014 	sw	ra,20(sp)
     518:	14ee0018 	bne	a3,t6,57c <func_80969FD0+0x7c>
     51c:	afa40028 	sw	a0,40(sp)
     520:	8c4f1360 	lw	t7,4960(v0)
     524:	3c190000 	lui	t9,0x0
     528:	27390000 	addiu	t9,t9,0
     52c:	29e10004 	slti	at,t7,4
     530:	10200012 	beqz	at,57c <func_80969FD0+0x7c>
     534:	24080002 	li	t0,2
     538:	8ca31c44 	lw	v1,7236(a1)
     53c:	ac870198 	sw	a3,408(a0)
     540:	acb91d68 	sw	t9,7528(a1)
     544:	00a02025 	move	a0,a1
     548:	a0481414 	sb	t0,5140(v0)
     54c:	24050067 	li	a1,103
     550:	0c000000 	jal	0 <DemoDu_Destroy>
     554:	afa3001c 	sw	v1,28(sp)
     558:	8fa90028 	lw	t1,40(sp)
     55c:	34018000 	li	at,0x8000
     560:	8fa3001c 	lw	v1,28(sp)
     564:	85220032 	lh	v0,50(t1)
     568:	00411021 	addu	v0,v0,at
     56c:	00021400 	sll	v0,v0,0x10
     570:	00021403 	sra	v0,v0,0x10
     574:	a46200b6 	sh	v0,182(v1)
     578:	a4620032 	sh	v0,50(v1)
     57c:	8fbf0014 	lw	ra,20(sp)
     580:	27bd0028 	addiu	sp,sp,40
     584:	03e00008 	jr	ra
     588:	00000000 	nop

0000058c <func_8096A05C>:
     58c:	27bdffe8 	addiu	sp,sp,-24
     590:	afbf0014 	sw	ra,20(sp)
     594:	90ae1d6c 	lbu	t6,7532(a1)
     598:	51c0000d 	beqzl	t6,5d0 <func_8096A05C+0x44>
     59c:	8fbf0014 	lw	ra,20(sp)
     5a0:	8ca21d94 	lw	v0,7572(a1)
     5a4:	5040000a 	beqzl	v0,5d0 <func_8096A05C+0x44>
     5a8:	8fbf0014 	lw	ra,20(sp)
     5ac:	944f0000 	lhu	t7,0(v0)
     5b0:	24030001 	li	v1,1
     5b4:	24180002 	li	t8,2
     5b8:	506f0005 	beql	v1,t7,5d0 <func_8096A05C+0x44>
     5bc:	8fbf0014 	lw	ra,20(sp)
     5c0:	ac980198 	sw	t8,408(a0)
     5c4:	0c000000 	jal	0 <DemoDu_Destroy>
     5c8:	ac83019c 	sw	v1,412(a0)
     5cc:	8fbf0014 	lw	ra,20(sp)
     5d0:	27bd0018 	addiu	sp,sp,24
     5d4:	03e00008 	jr	ra
     5d8:	00000000 	nop

000005dc <func_8096A0AC>:
     5dc:	44800000 	mtc1	zero,$f0
     5e0:	c48400bc 	lwc1	$f4,188(a0)
     5e4:	240e0003 	li	t6,3
     5e8:	4604003e 	c.le.s	$f0,$f4
     5ec:	00000000 	nop
     5f0:	45000003 	bc1f	600 <func_8096A0AC+0x24>
     5f4:	00000000 	nop
     5f8:	ac8e0198 	sw	t6,408(a0)
     5fc:	e48000bc 	swc1	$f0,188(a0)
     600:	03e00008 	jr	ra
     604:	00000000 	nop

00000608 <func_8096A0D8>:
     608:	27bdffd8 	addiu	sp,sp,-40
     60c:	afbf0024 	sw	ra,36(sp)
     610:	afa40028 	sw	a0,40(sp)
     614:	90ae1d6c 	lbu	t6,7532(a1)
     618:	51c0001d 	beqzl	t6,690 <func_8096A0D8+0x88>
     61c:	8fbf0024 	lw	ra,36(sp)
     620:	8ca21d94 	lw	v0,7572(a1)
     624:	5040001a 	beqzl	v0,690 <func_8096A0D8+0x88>
     628:	8fbf0024 	lw	ra,36(sp)
     62c:	944f0000 	lhu	t7,0(v0)
     630:	24010002 	li	at,2
     634:	3c040600 	lui	a0,0x600
     638:	51e10015 	beql	t7,at,690 <func_8096A0D8+0x88>
     63c:	8fbf0024 	lw	ra,36(sp)
     640:	0c000000 	jal	0 <DemoDu_Destroy>
     644:	24840800 	addiu	a0,a0,2048
     648:	44822000 	mtc1	v0,$f4
     64c:	44800000 	mtc1	zero,$f0
     650:	8fa40028 	lw	a0,40(sp)
     654:	468021a0 	cvt.s.w	$f6,$f4
     658:	3c050600 	lui	a1,0x600
     65c:	24180002 	li	t8,2
     660:	44070000 	mfc1	a3,$f0
     664:	afb80014 	sw	t8,20(sp)
     668:	24a50800 	addiu	a1,a1,2048
     66c:	e7a60010 	swc1	$f6,16(sp)
     670:	3c063f80 	lui	a2,0x3f80
     674:	2484014c 	addiu	a0,a0,332
     678:	0c000000 	jal	0 <DemoDu_Destroy>
     67c:	e7a00018 	swc1	$f0,24(sp)
     680:	8fa80028 	lw	t0,40(sp)
     684:	24190004 	li	t9,4
     688:	ad190198 	sw	t9,408(t0)
     68c:	8fbf0024 	lw	ra,36(sp)
     690:	27bd0028 	addiu	sp,sp,40
     694:	03e00008 	jr	ra
     698:	00000000 	nop

0000069c <func_8096A16C>:
     69c:	27bdffd8 	addiu	sp,sp,-40
     6a0:	afbf0024 	sw	ra,36(sp)
     6a4:	10a00014 	beqz	a1,6f8 <func_8096A16C+0x5c>
     6a8:	afa40028 	sw	a0,40(sp)
     6ac:	3c040600 	lui	a0,0x600
     6b0:	0c000000 	jal	0 <DemoDu_Destroy>
     6b4:	24840d00 	addiu	a0,a0,3328
     6b8:	44822000 	mtc1	v0,$f4
     6bc:	44800000 	mtc1	zero,$f0
     6c0:	8fa40028 	lw	a0,40(sp)
     6c4:	468021a0 	cvt.s.w	$f6,$f4
     6c8:	3c050600 	lui	a1,0x600
     6cc:	44070000 	mfc1	a3,$f0
     6d0:	24a50d00 	addiu	a1,a1,3328
     6d4:	3c063f80 	lui	a2,0x3f80
     6d8:	afa00014 	sw	zero,20(sp)
     6dc:	e7a60010 	swc1	$f6,16(sp)
     6e0:	2484014c 	addiu	a0,a0,332
     6e4:	0c000000 	jal	0 <DemoDu_Destroy>
     6e8:	e7a00018 	swc1	$f0,24(sp)
     6ec:	8faf0028 	lw	t7,40(sp)
     6f0:	240e0005 	li	t6,5
     6f4:	adee0198 	sw	t6,408(t7)
     6f8:	8fbf0024 	lw	ra,36(sp)
     6fc:	27bd0028 	addiu	sp,sp,40
     700:	03e00008 	jr	ra
     704:	00000000 	nop

00000708 <func_8096A1D8>:
     708:	27bdffe8 	addiu	sp,sp,-24
     70c:	afbf0014 	sw	ra,20(sp)
     710:	90ae1d6c 	lbu	t6,7532(a1)
     714:	51c0000c 	beqzl	t6,748 <func_8096A1D8+0x40>
     718:	8fbf0014 	lw	ra,20(sp)
     71c:	8ca21da4 	lw	v0,7588(a1)
     720:	50400009 	beqzl	v0,748 <func_8096A1D8+0x40>
     724:	8fbf0014 	lw	ra,20(sp)
     728:	944f0000 	lhu	t7,0(v0)
     72c:	24010002 	li	at,2
     730:	24180006 	li	t8,6
     734:	55e10004 	bnel	t7,at,748 <func_8096A1D8+0x40>
     738:	8fbf0014 	lw	ra,20(sp)
     73c:	0c000000 	jal	0 <DemoDu_Destroy>
     740:	ac980198 	sw	t8,408(a0)
     744:	8fbf0014 	lw	ra,20(sp)
     748:	27bd0018 	addiu	sp,sp,24
     74c:	03e00008 	jr	ra
     750:	00000000 	nop

00000754 <func_8096A224>:
     754:	27bdffe8 	addiu	sp,sp,-24
     758:	afbf0014 	sw	ra,20(sp)
     75c:	0c000000 	jal	0 <DemoDu_Destroy>
     760:	00000000 	nop
     764:	8fbf0014 	lw	ra,20(sp)
     768:	27bd0018 	addiu	sp,sp,24
     76c:	03e00008 	jr	ra
     770:	00000000 	nop

00000774 <func_8096A244>:
     774:	27bdffe8 	addiu	sp,sp,-24
     778:	afbf0014 	sw	ra,20(sp)
     77c:	0c000000 	jal	0 <DemoDu_Destroy>
     780:	00000000 	nop
     784:	8fbf0014 	lw	ra,20(sp)
     788:	27bd0018 	addiu	sp,sp,24
     78c:	03e00008 	jr	ra
     790:	00000000 	nop

00000794 <func_8096A264>:
     794:	27bdffe8 	addiu	sp,sp,-24
     798:	afbf0014 	sw	ra,20(sp)
     79c:	0c000000 	jal	0 <DemoDu_Destroy>
     7a0:	afa40018 	sw	a0,24(sp)
     7a4:	0c000000 	jal	0 <DemoDu_Destroy>
     7a8:	8fa40018 	lw	a0,24(sp)
     7ac:	0c000000 	jal	0 <DemoDu_Destroy>
     7b0:	8fa40018 	lw	a0,24(sp)
     7b4:	8fbf0014 	lw	ra,20(sp)
     7b8:	27bd0018 	addiu	sp,sp,24
     7bc:	03e00008 	jr	ra
     7c0:	00000000 	nop

000007c4 <func_8096A294>:
     7c4:	27bdffe8 	addiu	sp,sp,-24
     7c8:	afbf0014 	sw	ra,20(sp)
     7cc:	afa40018 	sw	a0,24(sp)
     7d0:	0c000000 	jal	0 <DemoDu_Destroy>
     7d4:	afa5001c 	sw	a1,28(sp)
     7d8:	0c000000 	jal	0 <DemoDu_Destroy>
     7dc:	8fa40018 	lw	a0,24(sp)
     7e0:	8fa40018 	lw	a0,24(sp)
     7e4:	0c000000 	jal	0 <DemoDu_Destroy>
     7e8:	8fa5001c 	lw	a1,28(sp)
     7ec:	8fbf0014 	lw	ra,20(sp)
     7f0:	27bd0018 	addiu	sp,sp,24
     7f4:	03e00008 	jr	ra
     7f8:	00000000 	nop

000007fc <func_8096A2CC>:
     7fc:	27bdffe8 	addiu	sp,sp,-24
     800:	afbf0014 	sw	ra,20(sp)
     804:	0c000000 	jal	0 <DemoDu_Destroy>
     808:	afa40018 	sw	a0,24(sp)
     80c:	0c000000 	jal	0 <DemoDu_Destroy>
     810:	8fa40018 	lw	a0,24(sp)
     814:	8fa40018 	lw	a0,24(sp)
     818:	0c000000 	jal	0 <DemoDu_Destroy>
     81c:	00402825 	move	a1,v0
     820:	8fbf0014 	lw	ra,20(sp)
     824:	27bd0018 	addiu	sp,sp,24
     828:	03e00008 	jr	ra
     82c:	00000000 	nop

00000830 <func_8096A300>:
     830:	27bdffe8 	addiu	sp,sp,-24
     834:	afbf0014 	sw	ra,20(sp)
     838:	afa40018 	sw	a0,24(sp)
     83c:	0c000000 	jal	0 <DemoDu_Destroy>
     840:	afa5001c 	sw	a1,28(sp)
     844:	0c000000 	jal	0 <DemoDu_Destroy>
     848:	8fa40018 	lw	a0,24(sp)
     84c:	8fa40018 	lw	a0,24(sp)
     850:	0c000000 	jal	0 <DemoDu_Destroy>
     854:	8fa5001c 	lw	a1,28(sp)
     858:	8fbf0014 	lw	ra,20(sp)
     85c:	27bd0018 	addiu	sp,sp,24
     860:	03e00008 	jr	ra
     864:	00000000 	nop

00000868 <func_8096A338>:
     868:	27bdffe8 	addiu	sp,sp,-24
     86c:	afbf0014 	sw	ra,20(sp)
     870:	0c000000 	jal	0 <DemoDu_Destroy>
     874:	afa40018 	sw	a0,24(sp)
     878:	0c000000 	jal	0 <DemoDu_Destroy>
     87c:	8fa40018 	lw	a0,24(sp)
     880:	8fbf0014 	lw	ra,20(sp)
     884:	27bd0018 	addiu	sp,sp,24
     888:	03e00008 	jr	ra
     88c:	00000000 	nop

00000890 <func_8096A360>:
     890:	27bdffd8 	addiu	sp,sp,-40
     894:	afa40028 	sw	a0,40(sp)
     898:	afa5002c 	sw	a1,44(sp)
     89c:	00a02025 	move	a0,a1
     8a0:	8fa50028 	lw	a1,40(sp)
     8a4:	afbf0024 	sw	ra,36(sp)
     8a8:	3c060601 	lui	a2,0x601
     8ac:	24c61ca8 	addiu	a2,a2,7336
     8b0:	afa00010 	sw	zero,16(sp)
     8b4:	afa00014 	sw	zero,20(sp)
     8b8:	afa00018 	sw	zero,24(sp)
     8bc:	00003825 	move	a3,zero
     8c0:	0c000000 	jal	0 <DemoDu_Destroy>
     8c4:	24a5014c 	addiu	a1,a1,332
     8c8:	8faf0028 	lw	t7,40(sp)
     8cc:	240e0007 	li	t6,7
     8d0:	adee0198 	sw	t6,408(t7)
     8d4:	8fbf0024 	lw	ra,36(sp)
     8d8:	27bd0028 	addiu	sp,sp,40
     8dc:	03e00008 	jr	ra
     8e0:	00000000 	nop

000008e4 <func_8096A3B4>:
     8e4:	27bdffe8 	addiu	sp,sp,-24
     8e8:	afbf0014 	sw	ra,20(sp)
     8ec:	248400e4 	addiu	a0,a0,228
     8f0:	0c000000 	jal	0 <DemoDu_Destroy>
     8f4:	24053879 	li	a1,14457
     8f8:	8fbf0014 	lw	ra,20(sp)
     8fc:	27bd0018 	addiu	sp,sp,24
     900:	03e00008 	jr	ra
     904:	00000000 	nop

00000908 <func_8096A3D8>:
     908:	27bdffe8 	addiu	sp,sp,-24
     90c:	afbf0014 	sw	ra,20(sp)
     910:	948e1d74 	lhu	t6,7540(a0)
     914:	240100a0 	li	at,160
     918:	55c10004 	bnel	t6,at,92c <func_8096A3D8+0x24>
     91c:	8fbf0014 	lw	ra,20(sp)
     920:	0c000000 	jal	0 <DemoDu_Destroy>
     924:	240428a0 	li	a0,10400
     928:	8fbf0014 	lw	ra,20(sp)
     92c:	27bd0018 	addiu	sp,sp,24
     930:	03e00008 	jr	ra
     934:	00000000 	nop

00000938 <func_8096A408>:
     938:	27bdffd0 	addiu	sp,sp,-48
     93c:	afbf001c 	sw	ra,28(sp)
     940:	8c821c44 	lw	v0,7236(a0)
     944:	24053925 	li	a1,14629
     948:	244400e4 	addiu	a0,v0,228
     94c:	0c000000 	jal	0 <DemoDu_Destroy>
     950:	afa40024 	sw	a0,36(sp)
     954:	3c070000 	lui	a3,0x0
     958:	3c0e0000 	lui	t6,0x0
     95c:	24e70000 	addiu	a3,a3,0
     960:	25ce0000 	addiu	t6,t6,0
     964:	afae0014 	sw	t6,20(sp)
     968:	afa70010 	sw	a3,16(sp)
     96c:	24046825 	li	a0,26661
     970:	8fa50024 	lw	a1,36(sp)
     974:	0c000000 	jal	0 <DemoDu_Destroy>
     978:	24060004 	li	a2,4
     97c:	8fbf001c 	lw	ra,28(sp)
     980:	27bd0030 	addiu	sp,sp,48
     984:	03e00008 	jr	ra
     988:	00000000 	nop

0000098c <func_8096A45C>:
     98c:	27bdffe8 	addiu	sp,sp,-24
     990:	afbf0014 	sw	ra,20(sp)
     994:	248400e4 	addiu	a0,a0,228
     998:	0c000000 	jal	0 <DemoDu_Destroy>
     99c:	24053124 	li	a1,12580
     9a0:	8fbf0014 	lw	ra,20(sp)
     9a4:	27bd0018 	addiu	sp,sp,24
     9a8:	03e00008 	jr	ra
     9ac:	00000000 	nop

000009b0 <func_8096A480>:
     9b0:	27bdffe0 	addiu	sp,sp,-32
     9b4:	afbf001c 	sw	ra,28(sp)
     9b8:	afa40020 	sw	a0,32(sp)
     9bc:	948f1d74 	lhu	t7,7540(a0)
     9c0:	24010578 	li	at,1400
     9c4:	3c070000 	lui	a3,0x0
     9c8:	15e1000a 	bne	t7,at,9f4 <func_8096A480+0x44>
     9cc:	24e70000 	addiu	a3,a3,0
     9d0:	8c821c44 	lw	v0,7236(a0)
     9d4:	3c180000 	lui	t8,0x0
     9d8:	27180000 	addiu	t8,t8,0
     9dc:	afb80014 	sw	t8,20(sp)
     9e0:	afa70010 	sw	a3,16(sp)
     9e4:	24046828 	li	a0,26664
     9e8:	24060004 	li	a2,4
     9ec:	0c000000 	jal	0 <DemoDu_Destroy>
     9f0:	244500e4 	addiu	a1,v0,228
     9f4:	8fbf001c 	lw	ra,28(sp)
     9f8:	27bd0020 	addiu	sp,sp,32
     9fc:	03e00008 	jr	ra
     a00:	00000000 	nop

00000a04 <func_8096A4D4>:
     a04:	27bdffe0 	addiu	sp,sp,-32
     a08:	afbf001c 	sw	ra,28(sp)
     a0c:	afa40020 	sw	a0,32(sp)
     a10:	948f1d74 	lhu	t7,7540(a0)
     a14:	240100ae 	li	at,174
     a18:	3c070000 	lui	a3,0x0
     a1c:	15e1000a 	bne	t7,at,a48 <func_8096A4D4+0x44>
     a20:	24e70000 	addiu	a3,a3,0
     a24:	8c821c44 	lw	v0,7236(a0)
     a28:	3c180000 	lui	t8,0x0
     a2c:	27180000 	addiu	t8,t8,0
     a30:	afb80014 	sw	t8,20(sp)
     a34:	afa70010 	sw	a3,16(sp)
     a38:	24046836 	li	a0,26678
     a3c:	24060004 	li	a2,4
     a40:	0c000000 	jal	0 <DemoDu_Destroy>
     a44:	244500e4 	addiu	a1,v0,228
     a48:	8fbf001c 	lw	ra,28(sp)
     a4c:	27bd0020 	addiu	sp,sp,32
     a50:	03e00008 	jr	ra
     a54:	00000000 	nop

00000a58 <func_8096A528>:
     a58:	27bdffe0 	addiu	sp,sp,-32
     a5c:	afbf001c 	sw	ra,28(sp)
     a60:	afb00018 	sw	s0,24(sp)
     a64:	94ae1d74 	lhu	t6,7540(a1)
     a68:	00808025 	move	s0,a0
     a6c:	29c10104 	slti	at,t6,260
     a70:	50200009 	beqzl	at,a98 <func_8096A528+0x40>
     a74:	94a21d74 	lhu	v0,7540(a1)
     a78:	0c000000 	jal	0 <DemoDu_Destroy>
     a7c:	00000000 	nop
     a80:	02002025 	move	a0,s0
     a84:	0c000000 	jal	0 <DemoDu_Destroy>
     a88:	00002825 	move	a1,zero
     a8c:	10000030 	b	b50 <func_8096A528+0xf8>
     a90:	8fbf001c 	lw	ra,28(sp)
     a94:	94a21d74 	lhu	v0,7540(a1)
     a98:	2841014f 	slti	at,v0,335
     a9c:	50200009 	beqzl	at,ac4 <func_8096A528+0x6c>
     aa0:	2841016d 	slti	at,v0,365
     aa4:	0c000000 	jal	0 <DemoDu_Destroy>
     aa8:	02002025 	move	a0,s0
     aac:	02002025 	move	a0,s0
     ab0:	0c000000 	jal	0 <DemoDu_Destroy>
     ab4:	24050003 	li	a1,3
     ab8:	10000025 	b	b50 <func_8096A528+0xf8>
     abc:	8fbf001c 	lw	ra,28(sp)
     ac0:	2841016d 	slti	at,v0,365
     ac4:	10200008 	beqz	at,ae8 <func_8096A528+0x90>
     ac8:	02002025 	move	a0,s0
     acc:	0c000000 	jal	0 <DemoDu_Destroy>
     ad0:	24050003 	li	a1,3
     ad4:	02002025 	move	a0,s0
     ad8:	0c000000 	jal	0 <DemoDu_Destroy>
     adc:	24050001 	li	a1,1
     ae0:	1000001b 	b	b50 <func_8096A528+0xf8>
     ae4:	8fbf001c 	lw	ra,28(sp)
     ae8:	2841018b 	slti	at,v0,395
     aec:	10200008 	beqz	at,b10 <func_8096A528+0xb8>
     af0:	02002025 	move	a0,s0
     af4:	0c000000 	jal	0 <DemoDu_Destroy>
     af8:	00002825 	move	a1,zero
     afc:	02002025 	move	a0,s0
     b00:	0c000000 	jal	0 <DemoDu_Destroy>
     b04:	24050003 	li	a1,3
     b08:	10000011 	b	b50 <func_8096A528+0xf8>
     b0c:	8fbf001c 	lw	ra,28(sp)
     b10:	2841019a 	slti	at,v0,410
     b14:	10200008 	beqz	at,b38 <func_8096A528+0xe0>
     b18:	00000000 	nop
     b1c:	0c000000 	jal	0 <DemoDu_Destroy>
     b20:	02002025 	move	a0,s0
     b24:	02002025 	move	a0,s0
     b28:	0c000000 	jal	0 <DemoDu_Destroy>
     b2c:	00002825 	move	a1,zero
     b30:	10000007 	b	b50 <func_8096A528+0xf8>
     b34:	8fbf001c 	lw	ra,28(sp)
     b38:	0c000000 	jal	0 <DemoDu_Destroy>
     b3c:	02002025 	move	a0,s0
     b40:	02002025 	move	a0,s0
     b44:	0c000000 	jal	0 <DemoDu_Destroy>
     b48:	24050003 	li	a1,3
     b4c:	8fbf001c 	lw	ra,28(sp)
     b50:	8fb00018 	lw	s0,24(sp)
     b54:	27bd0020 	addiu	sp,sp,32
     b58:	03e00008 	jr	ra
     b5c:	00000000 	nop

00000b60 <func_8096A630>:
     b60:	27bdffc8 	addiu	sp,sp,-56
     b64:	afbf0024 	sw	ra,36(sp)
     b68:	afa40038 	sw	a0,56(sp)
     b6c:	afa5003c 	sw	a1,60(sp)
     b70:	8c980024 	lw	t8,36(a0)
     b74:	27a50028 	addiu	a1,sp,40
     b78:	3c020000 	lui	v0,0x0
     b7c:	acb80000 	sw	t8,0(a1)
     b80:	8c8f0028 	lw	t7,40(a0)
     b84:	3c0142c8 	lui	at,0x42c8
     b88:	acaf0004 	sw	t7,4(a1)
     b8c:	8c98002c 	lw	t8,44(a0)
     b90:	acb80008 	sw	t8,8(a1)
     b94:	8c420000 	lw	v0,0(v0)
     b98:	c7a4002c 	lwc1	$f4,44(sp)
     b9c:	8fa4003c 	lw	a0,60(sp)
     ba0:	8459145e 	lh	t9,5214(v0)
     ba4:	44993000 	mtc1	t9,$f6
     ba8:	00000000 	nop
     bac:	46803220 	cvt.s.w	$f8,$f6
     bb0:	44813000 	mtc1	at,$f6
     bb4:	46082280 	add.s	$f10,$f4,$f8
     bb8:	e7aa002c 	swc1	$f10,44(sp)
     bbc:	84481456 	lh	t0,5206(v0)
     bc0:	8449145a 	lh	t1,5210(v0)
     bc4:	84471458 	lh	a3,5208(v0)
     bc8:	44888000 	mtc1	t0,$f16
     bcc:	252a012c 	addiu	t2,t1,300
     bd0:	afaa0010 	sw	t2,16(sp)
     bd4:	468084a0 	cvt.s.w	$f18,$f16
     bd8:	844b145c 	lh	t3,5212(v0)
     bdc:	afa00018 	sw	zero,24(sp)
     be0:	24e7000a 	addiu	a3,a3,10
     be4:	afab0014 	sw	t3,20(sp)
     be8:	46069100 	add.s	$f4,$f18,$f6
     bec:	44062000 	mfc1	a2,$f4
     bf0:	0c000000 	jal	0 <DemoDu_Destroy>
     bf4:	00000000 	nop
     bf8:	0c000000 	jal	0 <DemoDu_Destroy>
     bfc:	8fa40038 	lw	a0,56(sp)
     c00:	8fbf0024 	lw	ra,36(sp)
     c04:	27bd0038 	addiu	sp,sp,56
     c08:	03e00008 	jr	ra
     c0c:	00000000 	nop

00000c10 <func_8096A6E0>:
     c10:	27bdff30 	addiu	sp,sp,-208
     c14:	f7bc0048 	sdc1	$f28,72(sp)
     c18:	3c0141f8 	lui	at,0x41f8
     c1c:	4481e000 	mtc1	at,$f28
     c20:	afa500d4 	sw	a1,212(sp)
     c24:	afbf0074 	sw	ra,116(sp)
     c28:	2484014c 	addiu	a0,a0,332
     c2c:	4405e000 	mfc1	a1,$f28
     c30:	afbe0070 	sw	s8,112(sp)
     c34:	afb7006c 	sw	s7,108(sp)
     c38:	afb60068 	sw	s6,104(sp)
     c3c:	afb50064 	sw	s5,100(sp)
     c40:	afb40060 	sw	s4,96(sp)
     c44:	afb3005c 	sw	s3,92(sp)
     c48:	afb20058 	sw	s2,88(sp)
     c4c:	afb10054 	sw	s1,84(sp)
     c50:	afb00050 	sw	s0,80(sp)
     c54:	f7ba0040 	sdc1	$f26,64(sp)
     c58:	f7b80038 	sdc1	$f24,56(sp)
     c5c:	f7b60030 	sdc1	$f22,48(sp)
     c60:	f7b40028 	sdc1	$f20,40(sp)
     c64:	0c000000 	jal	0 <DemoDu_Destroy>
     c68:	afa40080 	sw	a0,128(sp)
     c6c:	14400004 	bnez	v0,c80 <func_8096A6E0+0x70>
     c70:	8fa40080 	lw	a0,128(sp)
     c74:	0c000000 	jal	0 <DemoDu_Destroy>
     c78:	3c054224 	lui	a1,0x4224
     c7c:	10400077 	beqz	v0,e5c <func_8096A6E0+0x24c>
     c80:	3c0f0000 	lui	t7,0x0
     c84:	8fae00d4 	lw	t6,212(sp)
     c88:	25ef0000 	addiu	t7,t7,0
     c8c:	8df90000 	lw	t9,0(t7)
     c90:	8dc21c44 	lw	v0,7236(t6)
     c94:	27b400b0 	addiu	s4,sp,176
     c98:	ae990000 	sw	t9,0(s4)
     c9c:	8df80004 	lw	t8,4(t7)
     ca0:	3c080000 	lui	t0,0x0
     ca4:	25080000 	addiu	t0,t0,0
     ca8:	ae980004 	sw	t8,4(s4)
     cac:	8df90008 	lw	t9,8(t7)
     cb0:	27b500a4 	addiu	s5,sp,164
     cb4:	3c014348 	lui	at,0x4348
     cb8:	ae990008 	sw	t9,8(s4)
     cbc:	8d0a0000 	lw	t2,0(t0)
     cc0:	4481d000 	mtc1	at,$f26
     cc4:	3c014220 	lui	at,0x4220
     cc8:	aeaa0000 	sw	t2,0(s5)
     ccc:	8d090004 	lw	t1,4(t0)
     cd0:	4481c000 	mtc1	at,$f24
     cd4:	3c014120 	lui	at,0x4120
     cd8:	aea90004 	sw	t1,4(s5)
     cdc:	8d0a0008 	lw	t2,8(t0)
     ce0:	4481b000 	mtc1	at,$f22
     ce4:	3c0141a0 	lui	at,0x41a0
     ce8:	3c100000 	lui	s0,0x0
     cec:	3c170000 	lui	s7,0x0
     cf0:	3c160000 	lui	s6,0x0
     cf4:	4481a000 	mtc1	at,$f20
     cf8:	26d60000 	addiu	s6,s6,0
     cfc:	26f70000 	addiu	s7,s7,0
     d00:	26100000 	addiu	s0,s0,0
     d04:	27be0088 	addiu	s8,sp,136
     d08:	27b30098 	addiu	s3,sp,152
     d0c:	27b2009c 	addiu	s2,sp,156
     d10:	2451098c 	addiu	s1,v0,2444
     d14:	aeaa0008 	sw	t2,8(s5)
     d18:	8ecc0000 	lw	t4,0(s6)
     d1c:	8eee0000 	lw	t6,0(s7)
     d20:	4405e000 	mfc1	a1,$f28
     d24:	ae4c0000 	sw	t4,0(s2)
     d28:	ae6e0000 	sw	t6,0(s3)
     d2c:	0c000000 	jal	0 <DemoDu_Destroy>
     d30:	8fa40080 	lw	a0,128(sp)
     d34:	5040000f 	beqzl	v0,d74 <func_8096A6E0+0x164>
     d38:	c60a0000 	lwc1	$f10,0(s0)
     d3c:	c604003c 	lwc1	$f4,60(s0)
     d40:	c6260000 	lwc1	$f6,0(s1)
     d44:	c60a0040 	lwc1	$f10,64(s0)
     d48:	46062200 	add.s	$f8,$f4,$f6
     d4c:	c6040044 	lwc1	$f4,68(s0)
     d50:	e7a80088 	swc1	$f8,136(sp)
     d54:	c6300004 	lwc1	$f16,4(s1)
     d58:	46105480 	add.s	$f18,$f10,$f16
     d5c:	e7b2008c 	swc1	$f18,140(sp)
     d60:	c6260008 	lwc1	$f6,8(s1)
     d64:	46062200 	add.s	$f8,$f4,$f6
     d68:	1000000d 	b	da0 <func_8096A6E0+0x190>
     d6c:	e7a80090 	swc1	$f8,144(sp)
     d70:	c60a0000 	lwc1	$f10,0(s0)
     d74:	c6300000 	lwc1	$f16,0(s1)
     d78:	c6040004 	lwc1	$f4,4(s0)
     d7c:	46105480 	add.s	$f18,$f10,$f16
     d80:	c60a0008 	lwc1	$f10,8(s0)
     d84:	e7b20088 	swc1	$f18,136(sp)
     d88:	c6260004 	lwc1	$f6,4(s1)
     d8c:	46062200 	add.s	$f8,$f4,$f6
     d90:	e7a8008c 	swc1	$f8,140(sp)
     d94:	c6300008 	lwc1	$f16,8(s1)
     d98:	46105480 	add.s	$f18,$f10,$f16
     d9c:	e7b20090 	swc1	$f18,144(sp)
     da0:	0c000000 	jal	0 <DemoDu_Destroy>
     da4:	00000000 	nop
     da8:	46140102 	mul.s	$f4,$f0,$f20
     dac:	93b8009c 	lbu	t8,156(sp)
     db0:	93a8009d 	lbu	t0,157(sp)
     db4:	93aa009e 	lbu	t2,158(sp)
     db8:	93ac0098 	lbu	t4,152(sp)
     dbc:	93ae0099 	lbu	t6,153(sp)
     dc0:	46162181 	sub.s	$f6,$f4,$f22
     dc4:	4600320d 	trunc.w.s	$f8,$f6
     dc8:	44024000 	mfc1	v0,$f8
     dcc:	00000000 	nop
     dd0:	0302c821 	addu	t9,t8,v0
     dd4:	93b8009a 	lbu	t8,154(sp)
     dd8:	a3b9009c 	sb	t9,156(sp)
     ddc:	01024821 	addu	t1,t0,v0
     de0:	01425821 	addu	t3,t2,v0
     de4:	01826821 	addu	t5,t4,v0
     de8:	01c27821 	addu	t7,t6,v0
     dec:	0302c821 	addu	t9,t8,v0
     df0:	a3a9009d 	sb	t1,157(sp)
     df4:	a3ab009e 	sb	t3,158(sp)
     df8:	a3ad0098 	sb	t5,152(sp)
     dfc:	a3af0099 	sb	t7,153(sp)
     e00:	0c000000 	jal	0 <DemoDu_Destroy>
     e04:	a3b9009a 	sb	t9,154(sp)
     e08:	46180282 	mul.s	$f10,$f0,$f24
     e0c:	8fa400d4 	lw	a0,212(sp)
     e10:	03c02825 	move	a1,s8
     e14:	02803025 	move	a2,s4
     e18:	02a03825 	move	a3,s5
     e1c:	afb20010 	sw	s2,16(sp)
     e20:	afb30014 	sw	s3,20(sp)
     e24:	461a5400 	add.s	$f16,$f10,$f26
     e28:	afa0001c 	sw	zero,28(sp)
     e2c:	4600848d 	trunc.w.s	$f18,$f16
     e30:	44099000 	mfc1	t1,$f18
     e34:	0c000000 	jal	0 <DemoDu_Destroy>
     e38:	afa90018 	sw	t1,24(sp)
     e3c:	3c0a0000 	lui	t2,0x0
     e40:	254a0000 	addiu	t2,t2,0
     e44:	2610fff4 	addiu	s0,s0,-12
     e48:	020a082b 	sltu	at,s0,t2
     e4c:	5020ffb3 	beqzl	at,d1c <func_8096A6E0+0x10c>
     e50:	8ecc0000 	lw	t4,0(s6)
     e54:	0c000000 	jal	0 <DemoDu_Destroy>
     e58:	8fa400d4 	lw	a0,212(sp)
     e5c:	8fbf0074 	lw	ra,116(sp)
     e60:	d7b40028 	ldc1	$f20,40(sp)
     e64:	d7b60030 	ldc1	$f22,48(sp)
     e68:	d7b80038 	ldc1	$f24,56(sp)
     e6c:	d7ba0040 	ldc1	$f26,64(sp)
     e70:	d7bc0048 	ldc1	$f28,72(sp)
     e74:	8fb00050 	lw	s0,80(sp)
     e78:	8fb10054 	lw	s1,84(sp)
     e7c:	8fb20058 	lw	s2,88(sp)
     e80:	8fb3005c 	lw	s3,92(sp)
     e84:	8fb40060 	lw	s4,96(sp)
     e88:	8fb50064 	lw	s5,100(sp)
     e8c:	8fb60068 	lw	s6,104(sp)
     e90:	8fb7006c 	lw	s7,108(sp)
     e94:	8fbe0070 	lw	s8,112(sp)
     e98:	03e00008 	jr	ra
     e9c:	27bd00d0 	addiu	sp,sp,208

00000ea0 <func_8096A970>:
     ea0:	27bdffc8 	addiu	sp,sp,-56
     ea4:	afbf0014 	sw	ra,20(sp)
     ea8:	afa40038 	sw	a0,56(sp)
     eac:	90ae1d6c 	lbu	t6,7532(a1)
     eb0:	24a31d64 	addiu	v1,a1,7524
     eb4:	51c0002e 	beqzl	t6,f70 <func_8096A970+0xd0>
     eb8:	8fbf0014 	lw	ra,20(sp)
     ebc:	8c620030 	lw	v0,48(v1)
     ec0:	5040002b 	beqzl	v0,f70 <func_8096A970+0xd0>
     ec4:	8fbf0014 	lw	ra,20(sp)
     ec8:	94440004 	lhu	a0,4(v0)
     ecc:	94450002 	lhu	a1,2(v0)
     ed0:	94660010 	lhu	a2,16(v1)
     ed4:	0c000000 	jal	0 <DemoDu_Destroy>
     ed8:	afa2002c 	sw	v0,44(sp)
     edc:	8fa2002c 	lw	v0,44(sp)
     ee0:	8fa30038 	lw	v1,56(sp)
     ee4:	8c580010 	lw	t8,16(v0)
     ee8:	8c4f000c 	lw	t7,12(v0)
     eec:	8c480018 	lw	t0,24(v0)
     ef0:	8c590014 	lw	t9,20(v0)
     ef4:	44983000 	mtc1	t8,$f6
     ef8:	8c4a0020 	lw	t2,32(v0)
     efc:	448f2000 	mtc1	t7,$f4
     f00:	8c49001c 	lw	t1,28(v0)
     f04:	44885000 	mtc1	t0,$f10
     f08:	46803320 	cvt.s.w	$f12,$f6
     f0c:	44994000 	mtc1	t9,$f8
     f10:	448a3000 	mtc1	t2,$f6
     f14:	24630024 	addiu	v1,v1,36
     f18:	468020a0 	cvt.s.w	$f2,$f4
     f1c:	44892000 	mtc1	t1,$f4
     f20:	46805420 	cvt.s.w	$f16,$f10
     f24:	468043a0 	cvt.s.w	$f14,$f8
     f28:	46803220 	cvt.s.w	$f8,$f6
     f2c:	468024a0 	cvt.s.w	$f18,$f4
     f30:	e7a8001c 	swc1	$f8,28(sp)
     f34:	46028281 	sub.s	$f10,$f16,$f2
     f38:	460c9201 	sub.s	$f8,$f18,$f12
     f3c:	46005102 	mul.s	$f4,$f10,$f0
     f40:	00000000 	nop
     f44:	46004282 	mul.s	$f10,$f8,$f0
     f48:	46022180 	add.s	$f6,$f4,$f2
     f4c:	460c5100 	add.s	$f4,$f10,$f12
     f50:	e4660000 	swc1	$f6,0(v1)
     f54:	e4640004 	swc1	$f4,4(v1)
     f58:	c7a6001c 	lwc1	$f6,28(sp)
     f5c:	460e3201 	sub.s	$f8,$f6,$f14
     f60:	46004282 	mul.s	$f10,$f8,$f0
     f64:	460e5100 	add.s	$f4,$f10,$f14
     f68:	e4640008 	swc1	$f4,8(v1)
     f6c:	8fbf0014 	lw	ra,20(sp)
     f70:	27bd0038 	addiu	sp,sp,56
     f74:	03e00008 	jr	ra
     f78:	00000000 	nop

00000f7c <func_8096AA4C>:
     f7c:	afa50004 	sw	a1,4(sp)
     f80:	240e0008 	li	t6,8
     f84:	03e00008 	jr	ra
     f88:	ac8e0198 	sw	t6,408(a0)

00000f8c <func_8096AA5C>:
     f8c:	27bdffd8 	addiu	sp,sp,-40
     f90:	afbf0024 	sw	ra,36(sp)
     f94:	afa40028 	sw	a0,40(sp)
     f98:	90ae1d6c 	lbu	t6,7532(a1)
     f9c:	51c00021 	beqzl	t6,1024 <func_8096AA5C+0x98>
     fa0:	8fbf0024 	lw	ra,36(sp)
     fa4:	8ca21d94 	lw	v0,7572(a1)
     fa8:	5040001e 	beqzl	v0,1024 <func_8096AA5C+0x98>
     fac:	8fbf0024 	lw	ra,36(sp)
     fb0:	944f0000 	lhu	t7,0(v0)
     fb4:	24010001 	li	at,1
     fb8:	3c040600 	lui	a0,0x600
     fbc:	11e10018 	beq	t7,at,1020 <func_8096AA5C+0x94>
     fc0:	2484288c 	addiu	a0,a0,10380
     fc4:	0c000000 	jal	0 <DemoDu_Destroy>
     fc8:	afa5002c 	sw	a1,44(sp)
     fcc:	44822000 	mtc1	v0,$f4
     fd0:	44800000 	mtc1	zero,$f0
     fd4:	8fa40028 	lw	a0,40(sp)
     fd8:	468021a0 	cvt.s.w	$f6,$f4
     fdc:	3c050600 	lui	a1,0x600
     fe0:	24180002 	li	t8,2
     fe4:	44070000 	mfc1	a3,$f0
     fe8:	afb80014 	sw	t8,20(sp)
     fec:	24a5288c 	addiu	a1,a1,10380
     ff0:	e7a60010 	swc1	$f6,16(sp)
     ff4:	3c063f80 	lui	a2,0x3f80
     ff8:	2484014c 	addiu	a0,a0,332
     ffc:	0c000000 	jal	0 <DemoDu_Destroy>
    1000:	e7a00018 	swc1	$f0,24(sp)
    1004:	8fa40028 	lw	a0,40(sp)
    1008:	24190009 	li	t9,9
    100c:	24080001 	li	t0,1
    1010:	ac990198 	sw	t9,408(a0)
    1014:	ac88019c 	sw	t0,412(a0)
    1018:	0c000000 	jal	0 <DemoDu_Destroy>
    101c:	8fa5002c 	lw	a1,44(sp)
    1020:	8fbf0024 	lw	ra,36(sp)
    1024:	27bd0028 	addiu	sp,sp,40
    1028:	03e00008 	jr	ra
    102c:	00000000 	nop

00001030 <func_8096AB00>:
    1030:	27bdffe8 	addiu	sp,sp,-24
    1034:	afbf0014 	sw	ra,20(sp)
    1038:	90ae1d6c 	lbu	t6,7532(a1)
    103c:	24a21d64 	addiu	v0,a1,7524
    1040:	51c0000d 	beqzl	t6,1078 <func_8096AB00+0x48>
    1044:	8fbf0014 	lw	ra,20(sp)
    1048:	8c430030 	lw	v1,48(v0)
    104c:	5060000a 	beqzl	v1,1078 <func_8096AB00+0x48>
    1050:	8fbf0014 	lw	ra,20(sp)
    1054:	944f0010 	lhu	t7,16(v0)
    1058:	94780004 	lhu	t8,4(v1)
    105c:	2419000a 	li	t9,10
    1060:	01f8082a 	slt	at,t7,t8
    1064:	54200004 	bnezl	at,1078 <func_8096AB00+0x48>
    1068:	8fbf0014 	lw	ra,20(sp)
    106c:	0c000000 	jal	0 <DemoDu_Destroy>
    1070:	ac990198 	sw	t9,408(a0)
    1074:	8fbf0014 	lw	ra,20(sp)
    1078:	27bd0018 	addiu	sp,sp,24
    107c:	03e00008 	jr	ra
    1080:	00000000 	nop

00001084 <func_8096AB54>:
    1084:	90ae1d6c 	lbu	t6,7532(a1)
    1088:	11c0000a 	beqz	t6,10b4 <func_8096AB54+0x30>
    108c:	00000000 	nop
    1090:	8ca21d94 	lw	v0,7572(a1)
    1094:	10400007 	beqz	v0,10b4 <func_8096AB54+0x30>
    1098:	00000000 	nop
    109c:	944f0000 	lhu	t7,0(v0)
    10a0:	24010002 	li	at,2
    10a4:	2418000b 	li	t8,11
    10a8:	11e10002 	beq	t7,at,10b4 <func_8096AB54+0x30>
    10ac:	00000000 	nop
    10b0:	ac980198 	sw	t8,408(a0)
    10b4:	03e00008 	jr	ra
    10b8:	00000000 	nop

000010bc <func_8096AB8C>:
    10bc:	27bdffd8 	addiu	sp,sp,-40
    10c0:	afbf0024 	sw	ra,36(sp)
    10c4:	10a00014 	beqz	a1,1118 <func_8096AB8C+0x5c>
    10c8:	afa40028 	sw	a0,40(sp)
    10cc:	3c040600 	lui	a0,0x600
    10d0:	0c000000 	jal	0 <DemoDu_Destroy>
    10d4:	24846eb0 	addiu	a0,a0,28336
    10d8:	44822000 	mtc1	v0,$f4
    10dc:	44800000 	mtc1	zero,$f0
    10e0:	8fa40028 	lw	a0,40(sp)
    10e4:	468021a0 	cvt.s.w	$f6,$f4
    10e8:	3c050600 	lui	a1,0x600
    10ec:	44070000 	mfc1	a3,$f0
    10f0:	24a56eb0 	addiu	a1,a1,28336
    10f4:	3c063f80 	lui	a2,0x3f80
    10f8:	afa00014 	sw	zero,20(sp)
    10fc:	e7a60010 	swc1	$f6,16(sp)
    1100:	2484014c 	addiu	a0,a0,332
    1104:	0c000000 	jal	0 <DemoDu_Destroy>
    1108:	e7a00018 	swc1	$f0,24(sp)
    110c:	8faf0028 	lw	t7,40(sp)
    1110:	240e000c 	li	t6,12
    1114:	adee0198 	sw	t6,408(t7)
    1118:	8fbf0024 	lw	ra,36(sp)
    111c:	27bd0028 	addiu	sp,sp,40
    1120:	03e00008 	jr	ra
    1124:	00000000 	nop

00001128 <func_8096ABF8>:
    1128:	27bdffd8 	addiu	sp,sp,-40
    112c:	afbf0024 	sw	ra,36(sp)
    1130:	afa40028 	sw	a0,40(sp)
    1134:	90ae1d6c 	lbu	t6,7532(a1)
    1138:	51c0001e 	beqzl	t6,11b4 <func_8096ABF8+0x8c>
    113c:	8fbf0024 	lw	ra,36(sp)
    1140:	8ca21d94 	lw	v0,7572(a1)
    1144:	5040001b 	beqzl	v0,11b4 <func_8096ABF8+0x8c>
    1148:	8fbf0024 	lw	ra,36(sp)
    114c:	944f0000 	lhu	t7,0(v0)
    1150:	24010003 	li	at,3
    1154:	3c040600 	lui	a0,0x600
    1158:	51e10016 	beql	t7,at,11b4 <func_8096ABF8+0x8c>
    115c:	8fbf0024 	lw	ra,36(sp)
    1160:	0c000000 	jal	0 <DemoDu_Destroy>
    1164:	24842374 	addiu	a0,a0,9076
    1168:	44822000 	mtc1	v0,$f4
    116c:	3c01c080 	lui	at,0xc080
    1170:	44814000 	mtc1	at,$f8
    1174:	468021a0 	cvt.s.w	$f6,$f4
    1178:	8fa40028 	lw	a0,40(sp)
    117c:	3c050600 	lui	a1,0x600
    1180:	24180002 	li	t8,2
    1184:	afb80014 	sw	t8,20(sp)
    1188:	24a52374 	addiu	a1,a1,9076
    118c:	e7a60010 	swc1	$f6,16(sp)
    1190:	3c063f80 	lui	a2,0x3f80
    1194:	24070000 	li	a3,0
    1198:	e7a80018 	swc1	$f8,24(sp)
    119c:	0c000000 	jal	0 <DemoDu_Destroy>
    11a0:	2484014c 	addiu	a0,a0,332
    11a4:	8fa80028 	lw	t0,40(sp)
    11a8:	2419000d 	li	t9,13
    11ac:	ad190198 	sw	t9,408(t0)
    11b0:	8fbf0024 	lw	ra,36(sp)
    11b4:	27bd0028 	addiu	sp,sp,40
    11b8:	03e00008 	jr	ra
    11bc:	00000000 	nop

000011c0 <func_8096AC90>:
    11c0:	27bdffd8 	addiu	sp,sp,-40
    11c4:	afbf0024 	sw	ra,36(sp)
    11c8:	10a00014 	beqz	a1,121c <func_8096AC90+0x5c>
    11cc:	afa40028 	sw	a0,40(sp)
    11d0:	3c040600 	lui	a0,0x600
    11d4:	0c000000 	jal	0 <DemoDu_Destroy>
    11d8:	24846eb0 	addiu	a0,a0,28336
    11dc:	44822000 	mtc1	v0,$f4
    11e0:	44800000 	mtc1	zero,$f0
    11e4:	8fa40028 	lw	a0,40(sp)
    11e8:	468021a0 	cvt.s.w	$f6,$f4
    11ec:	3c050600 	lui	a1,0x600
    11f0:	44070000 	mfc1	a3,$f0
    11f4:	24a56eb0 	addiu	a1,a1,28336
    11f8:	3c063f80 	lui	a2,0x3f80
    11fc:	afa00014 	sw	zero,20(sp)
    1200:	e7a60010 	swc1	$f6,16(sp)
    1204:	2484014c 	addiu	a0,a0,332
    1208:	0c000000 	jal	0 <DemoDu_Destroy>
    120c:	e7a00018 	swc1	$f0,24(sp)
    1210:	8faf0028 	lw	t7,40(sp)
    1214:	240e000e 	li	t6,14
    1218:	adee0198 	sw	t6,408(t7)
    121c:	8fbf0024 	lw	ra,36(sp)
    1220:	27bd0028 	addiu	sp,sp,40
    1224:	03e00008 	jr	ra
    1228:	00000000 	nop

0000122c <func_8096ACFC>:
    122c:	27bdffd8 	addiu	sp,sp,-40
    1230:	afbf0024 	sw	ra,36(sp)
    1234:	afa40028 	sw	a0,40(sp)
    1238:	90ae1d6c 	lbu	t6,7532(a1)
    123c:	51c0001d 	beqzl	t6,12b4 <func_8096ACFC+0x88>
    1240:	8fbf0024 	lw	ra,36(sp)
    1244:	8ca21d94 	lw	v0,7572(a1)
    1248:	5040001a 	beqzl	v0,12b4 <func_8096ACFC+0x88>
    124c:	8fbf0024 	lw	ra,36(sp)
    1250:	944f0000 	lhu	t7,0(v0)
    1254:	24010004 	li	at,4
    1258:	3c040600 	lui	a0,0x600
    125c:	51e10015 	beql	t7,at,12b4 <func_8096ACFC+0x88>
    1260:	8fbf0024 	lw	ra,36(sp)
    1264:	0c000000 	jal	0 <DemoDu_Destroy>
    1268:	24841d70 	addiu	a0,a0,7536
    126c:	44822000 	mtc1	v0,$f4
    1270:	44800000 	mtc1	zero,$f0
    1274:	8fa40028 	lw	a0,40(sp)
    1278:	468021a0 	cvt.s.w	$f6,$f4
    127c:	3c050600 	lui	a1,0x600
    1280:	24180002 	li	t8,2
    1284:	44070000 	mfc1	a3,$f0
    1288:	afb80014 	sw	t8,20(sp)
    128c:	24a51d70 	addiu	a1,a1,7536
    1290:	e7a60010 	swc1	$f6,16(sp)
    1294:	3c063f80 	lui	a2,0x3f80
    1298:	2484014c 	addiu	a0,a0,332
    129c:	0c000000 	jal	0 <DemoDu_Destroy>
    12a0:	e7a00018 	swc1	$f0,24(sp)
    12a4:	8fa80028 	lw	t0,40(sp)
    12a8:	2419000f 	li	t9,15
    12ac:	ad190198 	sw	t9,408(t0)
    12b0:	8fbf0024 	lw	ra,36(sp)
    12b4:	27bd0028 	addiu	sp,sp,40
    12b8:	03e00008 	jr	ra
    12bc:	00000000 	nop

000012c0 <func_8096AD90>:
    12c0:	27bdffd8 	addiu	sp,sp,-40
    12c4:	afbf0024 	sw	ra,36(sp)
    12c8:	10a00015 	beqz	a1,1320 <func_8096AD90+0x60>
    12cc:	afa40028 	sw	a0,40(sp)
    12d0:	3c040600 	lui	a0,0x600
    12d4:	0c000000 	jal	0 <DemoDu_Destroy>
    12d8:	24842374 	addiu	a0,a0,9076
    12dc:	44822000 	mtc1	v0,$f4
    12e0:	44800000 	mtc1	zero,$f0
    12e4:	8fa40028 	lw	a0,40(sp)
    12e8:	468021a0 	cvt.s.w	$f6,$f4
    12ec:	3c050600 	lui	a1,0x600
    12f0:	240e0002 	li	t6,2
    12f4:	44070000 	mfc1	a3,$f0
    12f8:	afae0014 	sw	t6,20(sp)
    12fc:	24a52374 	addiu	a1,a1,9076
    1300:	e7a60010 	swc1	$f6,16(sp)
    1304:	3c063f80 	lui	a2,0x3f80
    1308:	2484014c 	addiu	a0,a0,332
    130c:	0c000000 	jal	0 <DemoDu_Destroy>
    1310:	e7a00018 	swc1	$f0,24(sp)
    1314:	8fb80028 	lw	t8,40(sp)
    1318:	240f0010 	li	t7,16
    131c:	af0f0198 	sw	t7,408(t8)
    1320:	8fbf0024 	lw	ra,36(sp)
    1324:	27bd0028 	addiu	sp,sp,40
    1328:	03e00008 	jr	ra
    132c:	00000000 	nop

00001330 <func_8096AE00>:
    1330:	27bdffd8 	addiu	sp,sp,-40
    1334:	afbf0024 	sw	ra,36(sp)
    1338:	10a00014 	beqz	a1,138c <func_8096AE00+0x5c>
    133c:	afa40028 	sw	a0,40(sp)
    1340:	3c040600 	lui	a0,0x600
    1344:	0c000000 	jal	0 <DemoDu_Destroy>
    1348:	24846eb0 	addiu	a0,a0,28336
    134c:	44822000 	mtc1	v0,$f4
    1350:	44800000 	mtc1	zero,$f0
    1354:	8fa40028 	lw	a0,40(sp)
    1358:	468021a0 	cvt.s.w	$f6,$f4
    135c:	3c050600 	lui	a1,0x600
    1360:	44070000 	mfc1	a3,$f0
    1364:	24a56eb0 	addiu	a1,a1,28336
    1368:	3c063f80 	lui	a2,0x3f80
    136c:	afa00014 	sw	zero,20(sp)
    1370:	e7a60010 	swc1	$f6,16(sp)
    1374:	2484014c 	addiu	a0,a0,332
    1378:	0c000000 	jal	0 <DemoDu_Destroy>
    137c:	e7a00018 	swc1	$f0,24(sp)
    1380:	8faf0028 	lw	t7,40(sp)
    1384:	240e0011 	li	t6,17
    1388:	adee0198 	sw	t6,408(t7)
    138c:	8fbf0024 	lw	ra,36(sp)
    1390:	27bd0028 	addiu	sp,sp,40
    1394:	03e00008 	jr	ra
    1398:	00000000 	nop

0000139c <func_8096AE6C>:
    139c:	27bdffd8 	addiu	sp,sp,-40
    13a0:	afbf0024 	sw	ra,36(sp)
    13a4:	afa40028 	sw	a0,40(sp)
    13a8:	90ae1d6c 	lbu	t6,7532(a1)
    13ac:	51c0001d 	beqzl	t6,1424 <func_8096AE6C+0x88>
    13b0:	8fbf0024 	lw	ra,36(sp)
    13b4:	8ca21d94 	lw	v0,7572(a1)
    13b8:	5040001a 	beqzl	v0,1424 <func_8096AE6C+0x88>
    13bc:	8fbf0024 	lw	ra,36(sp)
    13c0:	944f0000 	lhu	t7,0(v0)
    13c4:	24010005 	li	at,5
    13c8:	3c040600 	lui	a0,0x600
    13cc:	51e10015 	beql	t7,at,1424 <func_8096AE6C+0x88>
    13d0:	8fbf0024 	lw	ra,36(sp)
    13d4:	0c000000 	jal	0 <DemoDu_Destroy>
    13d8:	24840800 	addiu	a0,a0,2048
    13dc:	44822000 	mtc1	v0,$f4
    13e0:	44800000 	mtc1	zero,$f0
    13e4:	8fa40028 	lw	a0,40(sp)
    13e8:	468021a0 	cvt.s.w	$f6,$f4
    13ec:	3c050600 	lui	a1,0x600
    13f0:	24180002 	li	t8,2
    13f4:	44070000 	mfc1	a3,$f0
    13f8:	afb80014 	sw	t8,20(sp)
    13fc:	24a50800 	addiu	a1,a1,2048
    1400:	e7a60010 	swc1	$f6,16(sp)
    1404:	3c063f80 	lui	a2,0x3f80
    1408:	2484014c 	addiu	a0,a0,332
    140c:	0c000000 	jal	0 <DemoDu_Destroy>
    1410:	e7a00018 	swc1	$f0,24(sp)
    1414:	8fa80028 	lw	t0,40(sp)
    1418:	24190012 	li	t9,18
    141c:	ad190198 	sw	t9,408(t0)
    1420:	8fbf0024 	lw	ra,36(sp)
    1424:	27bd0028 	addiu	sp,sp,40
    1428:	03e00008 	jr	ra
    142c:	00000000 	nop

00001430 <func_8096AF00>:
    1430:	27bdffd8 	addiu	sp,sp,-40
    1434:	afbf0024 	sw	ra,36(sp)
    1438:	10a00014 	beqz	a1,148c <func_8096AF00+0x5c>
    143c:	afa40028 	sw	a0,40(sp)
    1440:	3c040600 	lui	a0,0x600
    1444:	0c000000 	jal	0 <DemoDu_Destroy>
    1448:	24840d00 	addiu	a0,a0,3328
    144c:	44822000 	mtc1	v0,$f4
    1450:	44800000 	mtc1	zero,$f0
    1454:	8fa40028 	lw	a0,40(sp)
    1458:	468021a0 	cvt.s.w	$f6,$f4
    145c:	3c050600 	lui	a1,0x600
    1460:	44070000 	mfc1	a3,$f0
    1464:	24a50d00 	addiu	a1,a1,3328
    1468:	3c063f80 	lui	a2,0x3f80
    146c:	afa00014 	sw	zero,20(sp)
    1470:	e7a60010 	swc1	$f6,16(sp)
    1474:	2484014c 	addiu	a0,a0,332
    1478:	0c000000 	jal	0 <DemoDu_Destroy>
    147c:	e7a00018 	swc1	$f0,24(sp)
    1480:	8faf0028 	lw	t7,40(sp)
    1484:	240e0013 	li	t6,19
    1488:	adee0198 	sw	t6,408(t7)
    148c:	8fbf0024 	lw	ra,36(sp)
    1490:	27bd0028 	addiu	sp,sp,40
    1494:	03e00008 	jr	ra
    1498:	00000000 	nop

0000149c <func_8096AF6C>:
    149c:	27bdffd8 	addiu	sp,sp,-40
    14a0:	afbf0024 	sw	ra,36(sp)
    14a4:	afa40028 	sw	a0,40(sp)
    14a8:	90ae1d6c 	lbu	t6,7532(a1)
    14ac:	51c0001c 	beqzl	t6,1520 <func_8096AF6C+0x84>
    14b0:	8fbf0024 	lw	ra,36(sp)
    14b4:	8ca21d94 	lw	v0,7572(a1)
    14b8:	50400019 	beqzl	v0,1520 <func_8096AF6C+0x84>
    14bc:	8fbf0024 	lw	ra,36(sp)
    14c0:	944f0000 	lhu	t7,0(v0)
    14c4:	24010006 	li	at,6
    14c8:	3c040600 	lui	a0,0x600
    14cc:	51e10014 	beql	t7,at,1520 <func_8096AF6C+0x84>
    14d0:	8fbf0024 	lw	ra,36(sp)
    14d4:	0c000000 	jal	0 <DemoDu_Destroy>
    14d8:	24846eb0 	addiu	a0,a0,28336
    14dc:	44822000 	mtc1	v0,$f4
    14e0:	44800000 	mtc1	zero,$f0
    14e4:	8fa40028 	lw	a0,40(sp)
    14e8:	468021a0 	cvt.s.w	$f6,$f4
    14ec:	3c050600 	lui	a1,0x600
    14f0:	44070000 	mfc1	a3,$f0
    14f4:	24a56eb0 	addiu	a1,a1,28336
    14f8:	3c063f80 	lui	a2,0x3f80
    14fc:	afa00014 	sw	zero,20(sp)
    1500:	e7a60010 	swc1	$f6,16(sp)
    1504:	2484014c 	addiu	a0,a0,332
    1508:	0c000000 	jal	0 <DemoDu_Destroy>
    150c:	e7a00018 	swc1	$f0,24(sp)
    1510:	8fb90028 	lw	t9,40(sp)
    1514:	24180014 	li	t8,20
    1518:	af380198 	sw	t8,408(t9)
    151c:	8fbf0024 	lw	ra,36(sp)
    1520:	27bd0028 	addiu	sp,sp,40
    1524:	03e00008 	jr	ra
    1528:	00000000 	nop

0000152c <func_8096AFFC>:
    152c:	27bdffe8 	addiu	sp,sp,-24
    1530:	afbf0014 	sw	ra,20(sp)
    1534:	afa40018 	sw	a0,24(sp)
    1538:	afa5001c 	sw	a1,28(sp)
    153c:	0c000000 	jal	0 <DemoDu_Destroy>
    1540:	00a02025 	move	a0,a1
    1544:	8fa40018 	lw	a0,24(sp)
    1548:	0c000000 	jal	0 <DemoDu_Destroy>
    154c:	8fa5001c 	lw	a1,28(sp)
    1550:	8fbf0014 	lw	ra,20(sp)
    1554:	27bd0018 	addiu	sp,sp,24
    1558:	03e00008 	jr	ra
    155c:	00000000 	nop

00001560 <func_8096B030>:
    1560:	27bdffe8 	addiu	sp,sp,-24
    1564:	afbf0014 	sw	ra,20(sp)
    1568:	afa40018 	sw	a0,24(sp)
    156c:	afa5001c 	sw	a1,28(sp)
    1570:	0c000000 	jal	0 <DemoDu_Destroy>
    1574:	00a02025 	move	a0,a1
    1578:	0c000000 	jal	0 <DemoDu_Destroy>
    157c:	8fa4001c 	lw	a0,28(sp)
    1580:	8fa40018 	lw	a0,24(sp)
    1584:	0c000000 	jal	0 <DemoDu_Destroy>
    1588:	8fa5001c 	lw	a1,28(sp)
    158c:	8fbf0014 	lw	ra,20(sp)
    1590:	27bd0018 	addiu	sp,sp,24
    1594:	03e00008 	jr	ra
    1598:	00000000 	nop

0000159c <func_8096B06C>:
    159c:	27bdffe0 	addiu	sp,sp,-32
    15a0:	afbf001c 	sw	ra,28(sp)
    15a4:	afb00018 	sw	s0,24(sp)
    15a8:	00a08025 	move	s0,a1
    15ac:	0c000000 	jal	0 <DemoDu_Destroy>
    15b0:	afa40020 	sw	a0,32(sp)
    15b4:	8fa40020 	lw	a0,32(sp)
    15b8:	0c000000 	jal	0 <DemoDu_Destroy>
    15bc:	02002825 	move	a1,s0
    15c0:	0c000000 	jal	0 <DemoDu_Destroy>
    15c4:	02002025 	move	a0,s0
    15c8:	0c000000 	jal	0 <DemoDu_Destroy>
    15cc:	02002025 	move	a0,s0
    15d0:	8fa40020 	lw	a0,32(sp)
    15d4:	0c000000 	jal	0 <DemoDu_Destroy>
    15d8:	02002825 	move	a1,s0
    15dc:	8fbf001c 	lw	ra,28(sp)
    15e0:	8fb00018 	lw	s0,24(sp)
    15e4:	27bd0020 	addiu	sp,sp,32
    15e8:	03e00008 	jr	ra
    15ec:	00000000 	nop

000015f0 <func_8096B0C0>:
    15f0:	27bdffe8 	addiu	sp,sp,-24
    15f4:	afbf0014 	sw	ra,20(sp)
    15f8:	afa40018 	sw	a0,24(sp)
    15fc:	0c000000 	jal	0 <DemoDu_Destroy>
    1600:	afa5001c 	sw	a1,28(sp)
    1604:	0c000000 	jal	0 <DemoDu_Destroy>
    1608:	8fa4001c 	lw	a0,28(sp)
    160c:	8fa40018 	lw	a0,24(sp)
    1610:	0c000000 	jal	0 <DemoDu_Destroy>
    1614:	8fa5001c 	lw	a1,28(sp)
    1618:	8fbf0014 	lw	ra,20(sp)
    161c:	27bd0018 	addiu	sp,sp,24
    1620:	03e00008 	jr	ra
    1624:	00000000 	nop

00001628 <func_8096B0F8>:
    1628:	27bdffe0 	addiu	sp,sp,-32
    162c:	afbf0014 	sw	ra,20(sp)
    1630:	afa40020 	sw	a0,32(sp)
    1634:	0c000000 	jal	0 <DemoDu_Destroy>
    1638:	afa50024 	sw	a1,36(sp)
    163c:	0c000000 	jal	0 <DemoDu_Destroy>
    1640:	8fa40020 	lw	a0,32(sp)
    1644:	afa2001c 	sw	v0,28(sp)
    1648:	8fa40020 	lw	a0,32(sp)
    164c:	0c000000 	jal	0 <DemoDu_Destroy>
    1650:	8fa50024 	lw	a1,36(sp)
    1654:	8fa40020 	lw	a0,32(sp)
    1658:	0c000000 	jal	0 <DemoDu_Destroy>
    165c:	8fa5001c 	lw	a1,28(sp)
    1660:	8fbf0014 	lw	ra,20(sp)
    1664:	27bd0020 	addiu	sp,sp,32
    1668:	03e00008 	jr	ra
    166c:	00000000 	nop

00001670 <func_8096B140>:
    1670:	27bdffe8 	addiu	sp,sp,-24
    1674:	afbf0014 	sw	ra,20(sp)
    1678:	afa40018 	sw	a0,24(sp)
    167c:	0c000000 	jal	0 <DemoDu_Destroy>
    1680:	afa5001c 	sw	a1,28(sp)
    1684:	0c000000 	jal	0 <DemoDu_Destroy>
    1688:	8fa40018 	lw	a0,24(sp)
    168c:	8fa40018 	lw	a0,24(sp)
    1690:	0c000000 	jal	0 <DemoDu_Destroy>
    1694:	8fa5001c 	lw	a1,28(sp)
    1698:	8fa40018 	lw	a0,24(sp)
    169c:	0c000000 	jal	0 <DemoDu_Destroy>
    16a0:	8fa5001c 	lw	a1,28(sp)
    16a4:	8fbf0014 	lw	ra,20(sp)
    16a8:	27bd0018 	addiu	sp,sp,24
    16ac:	03e00008 	jr	ra
    16b0:	00000000 	nop

000016b4 <func_8096B184>:
    16b4:	27bdffd8 	addiu	sp,sp,-40
    16b8:	afbf001c 	sw	ra,28(sp)
    16bc:	afb00018 	sw	s0,24(sp)
    16c0:	00808025 	move	s0,a0
    16c4:	0c000000 	jal	0 <DemoDu_Destroy>
    16c8:	afa5002c 	sw	a1,44(sp)
    16cc:	0c000000 	jal	0 <DemoDu_Destroy>
    16d0:	02002025 	move	a0,s0
    16d4:	afa20024 	sw	v0,36(sp)
    16d8:	0c000000 	jal	0 <DemoDu_Destroy>
    16dc:	02002025 	move	a0,s0
    16e0:	02002025 	move	a0,s0
    16e4:	0c000000 	jal	0 <DemoDu_Destroy>
    16e8:	8fa5002c 	lw	a1,44(sp)
    16ec:	02002025 	move	a0,s0
    16f0:	0c000000 	jal	0 <DemoDu_Destroy>
    16f4:	8fa50024 	lw	a1,36(sp)
    16f8:	8fbf001c 	lw	ra,28(sp)
    16fc:	8fb00018 	lw	s0,24(sp)
    1700:	27bd0028 	addiu	sp,sp,40
    1704:	03e00008 	jr	ra
    1708:	00000000 	nop

0000170c <func_8096B1DC>:
    170c:	27bdffe8 	addiu	sp,sp,-24
    1710:	afbf0014 	sw	ra,20(sp)
    1714:	afa40018 	sw	a0,24(sp)
    1718:	0c000000 	jal	0 <DemoDu_Destroy>
    171c:	afa5001c 	sw	a1,28(sp)
    1720:	0c000000 	jal	0 <DemoDu_Destroy>
    1724:	8fa40018 	lw	a0,24(sp)
    1728:	8fa40018 	lw	a0,24(sp)
    172c:	0c000000 	jal	0 <DemoDu_Destroy>
    1730:	8fa5001c 	lw	a1,28(sp)
    1734:	8fa40018 	lw	a0,24(sp)
    1738:	0c000000 	jal	0 <DemoDu_Destroy>
    173c:	8fa5001c 	lw	a1,28(sp)
    1740:	8fbf0014 	lw	ra,20(sp)
    1744:	27bd0018 	addiu	sp,sp,24
    1748:	03e00008 	jr	ra
    174c:	00000000 	nop

00001750 <func_8096B220>:
    1750:	27bdffd8 	addiu	sp,sp,-40
    1754:	afbf001c 	sw	ra,28(sp)
    1758:	afb00018 	sw	s0,24(sp)
    175c:	00808025 	move	s0,a0
    1760:	0c000000 	jal	0 <DemoDu_Destroy>
    1764:	afa5002c 	sw	a1,44(sp)
    1768:	0c000000 	jal	0 <DemoDu_Destroy>
    176c:	02002025 	move	a0,s0
    1770:	afa20024 	sw	v0,36(sp)
    1774:	02002025 	move	a0,s0
    1778:	0c000000 	jal	0 <DemoDu_Destroy>
    177c:	8fa5002c 	lw	a1,44(sp)
    1780:	02002025 	move	a0,s0
    1784:	0c000000 	jal	0 <DemoDu_Destroy>
    1788:	8fa5002c 	lw	a1,44(sp)
    178c:	02002025 	move	a0,s0
    1790:	0c000000 	jal	0 <DemoDu_Destroy>
    1794:	8fa50024 	lw	a1,36(sp)
    1798:	8fbf001c 	lw	ra,28(sp)
    179c:	8fb00018 	lw	s0,24(sp)
    17a0:	27bd0028 	addiu	sp,sp,40
    17a4:	03e00008 	jr	ra
    17a8:	00000000 	nop

000017ac <func_8096B27C>:
    17ac:	27bdffd8 	addiu	sp,sp,-40
    17b0:	afbf001c 	sw	ra,28(sp)
    17b4:	afb00018 	sw	s0,24(sp)
    17b8:	00808025 	move	s0,a0
    17bc:	0c000000 	jal	0 <DemoDu_Destroy>
    17c0:	afa5002c 	sw	a1,44(sp)
    17c4:	0c000000 	jal	0 <DemoDu_Destroy>
    17c8:	02002025 	move	a0,s0
    17cc:	afa20024 	sw	v0,36(sp)
    17d0:	0c000000 	jal	0 <DemoDu_Destroy>
    17d4:	02002025 	move	a0,s0
    17d8:	02002025 	move	a0,s0
    17dc:	0c000000 	jal	0 <DemoDu_Destroy>
    17e0:	8fa5002c 	lw	a1,44(sp)
    17e4:	02002025 	move	a0,s0
    17e8:	0c000000 	jal	0 <DemoDu_Destroy>
    17ec:	8fa50024 	lw	a1,36(sp)
    17f0:	8fbf001c 	lw	ra,28(sp)
    17f4:	8fb00018 	lw	s0,24(sp)
    17f8:	27bd0028 	addiu	sp,sp,40
    17fc:	03e00008 	jr	ra
    1800:	00000000 	nop

00001804 <func_8096B2D4>:
    1804:	27bdffe8 	addiu	sp,sp,-24
    1808:	afbf0014 	sw	ra,20(sp)
    180c:	afa40018 	sw	a0,24(sp)
    1810:	0c000000 	jal	0 <DemoDu_Destroy>
    1814:	afa5001c 	sw	a1,28(sp)
    1818:	0c000000 	jal	0 <DemoDu_Destroy>
    181c:	8fa40018 	lw	a0,24(sp)
    1820:	8fa40018 	lw	a0,24(sp)
    1824:	0c000000 	jal	0 <DemoDu_Destroy>
    1828:	8fa5001c 	lw	a1,28(sp)
    182c:	8fa40018 	lw	a0,24(sp)
    1830:	0c000000 	jal	0 <DemoDu_Destroy>
    1834:	8fa5001c 	lw	a1,28(sp)
    1838:	8fbf0014 	lw	ra,20(sp)
    183c:	27bd0018 	addiu	sp,sp,24
    1840:	03e00008 	jr	ra
    1844:	00000000 	nop

00001848 <func_8096B318>:
    1848:	27bdffe0 	addiu	sp,sp,-32
    184c:	afbf0014 	sw	ra,20(sp)
    1850:	afa40020 	sw	a0,32(sp)
    1854:	0c000000 	jal	0 <DemoDu_Destroy>
    1858:	afa50024 	sw	a1,36(sp)
    185c:	0c000000 	jal	0 <DemoDu_Destroy>
    1860:	8fa40020 	lw	a0,32(sp)
    1864:	afa2001c 	sw	v0,28(sp)
    1868:	8fa40020 	lw	a0,32(sp)
    186c:	0c000000 	jal	0 <DemoDu_Destroy>
    1870:	8fa50024 	lw	a1,36(sp)
    1874:	8fa40020 	lw	a0,32(sp)
    1878:	0c000000 	jal	0 <DemoDu_Destroy>
    187c:	8fa5001c 	lw	a1,28(sp)
    1880:	8fbf0014 	lw	ra,20(sp)
    1884:	27bd0020 	addiu	sp,sp,32
    1888:	03e00008 	jr	ra
    188c:	00000000 	nop

00001890 <func_8096B360>:
    1890:	27bdffe8 	addiu	sp,sp,-24
    1894:	afbf0014 	sw	ra,20(sp)
    1898:	afa40018 	sw	a0,24(sp)
    189c:	0c000000 	jal	0 <DemoDu_Destroy>
    18a0:	afa5001c 	sw	a1,28(sp)
    18a4:	0c000000 	jal	0 <DemoDu_Destroy>
    18a8:	8fa40018 	lw	a0,24(sp)
    18ac:	8fa40018 	lw	a0,24(sp)
    18b0:	0c000000 	jal	0 <DemoDu_Destroy>
    18b4:	8fa5001c 	lw	a1,28(sp)
    18b8:	8fa40018 	lw	a0,24(sp)
    18bc:	0c000000 	jal	0 <DemoDu_Destroy>
    18c0:	8fa5001c 	lw	a1,28(sp)
    18c4:	8fbf0014 	lw	ra,20(sp)
    18c8:	27bd0018 	addiu	sp,sp,24
    18cc:	03e00008 	jr	ra
    18d0:	00000000 	nop

000018d4 <func_8096B3A4>:
    18d4:	27bdffe8 	addiu	sp,sp,-24
    18d8:	afbf0014 	sw	ra,20(sp)
    18dc:	afa40018 	sw	a0,24(sp)
    18e0:	0c000000 	jal	0 <DemoDu_Destroy>
    18e4:	afa5001c 	sw	a1,28(sp)
    18e8:	0c000000 	jal	0 <DemoDu_Destroy>
    18ec:	8fa40018 	lw	a0,24(sp)
    18f0:	8fa40018 	lw	a0,24(sp)
    18f4:	0c000000 	jal	0 <DemoDu_Destroy>
    18f8:	8fa5001c 	lw	a1,28(sp)
    18fc:	0c000000 	jal	0 <DemoDu_Destroy>
    1900:	8fa4001c 	lw	a0,28(sp)
    1904:	8fbf0014 	lw	ra,20(sp)
    1908:	27bd0018 	addiu	sp,sp,24
    190c:	03e00008 	jr	ra
    1910:	00000000 	nop

00001914 <func_8096B3E4>:
    1914:	27bdffc0 	addiu	sp,sp,-64
    1918:	afa40040 	sw	a0,64(sp)
    191c:	afbf0024 	sw	ra,36(sp)
    1920:	3c040601 	lui	a0,0x601
    1924:	afa50044 	sw	a1,68(sp)
    1928:	0c000000 	jal	0 <DemoDu_Destroy>
    192c:	24842014 	addiu	a0,a0,8212
    1930:	44822000 	mtc1	v0,$f4
    1934:	8fa50040 	lw	a1,64(sp)
    1938:	3c060601 	lui	a2,0x601
    193c:	468021a0 	cvt.s.w	$f6,$f4
    1940:	24a5014c 	addiu	a1,a1,332
    1944:	afa5002c 	sw	a1,44(sp)
    1948:	24c61ca8 	addiu	a2,a2,7336
    194c:	8fa40044 	lw	a0,68(sp)
    1950:	00003825 	move	a3,zero
    1954:	e7a60030 	swc1	$f6,48(sp)
    1958:	afa00010 	sw	zero,16(sp)
    195c:	afa00014 	sw	zero,20(sp)
    1960:	0c000000 	jal	0 <DemoDu_Destroy>
    1964:	afa00018 	sw	zero,24(sp)
    1968:	44800000 	mtc1	zero,$f0
    196c:	c7a80030 	lwc1	$f8,48(sp)
    1970:	3c050601 	lui	a1,0x601
    1974:	240e0002 	li	t6,2
    1978:	44070000 	mfc1	a3,$f0
    197c:	afae0014 	sw	t6,20(sp)
    1980:	24a52014 	addiu	a1,a1,8212
    1984:	8fa4002c 	lw	a0,44(sp)
    1988:	3c063f80 	lui	a2,0x3f80
    198c:	e7a80010 	swc1	$f8,16(sp)
    1990:	0c000000 	jal	0 <DemoDu_Destroy>
    1994:	e7a00018 	swc1	$f0,24(sp)
    1998:	8fa20040 	lw	v0,64(sp)
    199c:	240f0015 	li	t7,21
    19a0:	ac4f0198 	sw	t7,408(v0)
    19a4:	a04000c8 	sb	zero,200(v0)
    19a8:	8fbf0024 	lw	ra,36(sp)
    19ac:	27bd0040 	addiu	sp,sp,64
    19b0:	03e00008 	jr	ra
    19b4:	00000000 	nop

000019b8 <func_8096B488>:
    19b8:	27bdffe8 	addiu	sp,sp,-24
    19bc:	afbf0014 	sw	ra,20(sp)
    19c0:	0c000000 	jal	0 <DemoDu_Destroy>
    19c4:	24044834 	li	a0,18484
    19c8:	8fbf0014 	lw	ra,20(sp)
    19cc:	27bd0018 	addiu	sp,sp,24
    19d0:	03e00008 	jr	ra
    19d4:	00000000 	nop

000019d8 <func_8096B4A8>:
    19d8:	27bdffc8 	addiu	sp,sp,-56
    19dc:	00a03025 	move	a2,a1
    19e0:	00802825 	move	a1,a0
    19e4:	afbf0034 	sw	ra,52(sp)
    19e8:	afa40038 	sw	a0,56(sp)
    19ec:	c4a40024 	lwc1	$f4,36(a1)
    19f0:	3c0e0000 	lui	t6,0x0
    19f4:	8dce0000 	lw	t6,0(t6)
    19f8:	e7a40010 	swc1	$f4,16(sp)
    19fc:	3c0141b0 	lui	at,0x41b0
    1a00:	85cf1474 	lh	t7,5236(t6)
    1a04:	44815000 	mtc1	at,$f10
    1a08:	c4b20028 	lwc1	$f18,40(a1)
    1a0c:	448f3000 	mtc1	t7,$f6
    1a10:	24180003 	li	t8,3
    1a14:	24c41c24 	addiu	a0,a2,7204
    1a18:	46803220 	cvt.s.w	$f8,$f6
    1a1c:	240700f5 	li	a3,245
    1a20:	460a4400 	add.s	$f16,$f8,$f10
    1a24:	46128100 	add.s	$f4,$f16,$f18
    1a28:	e7a40014 	swc1	$f4,20(sp)
    1a2c:	c4a6002c 	lwc1	$f6,44(a1)
    1a30:	afb80028 	sw	t8,40(sp)
    1a34:	afa00024 	sw	zero,36(sp)
    1a38:	afa00020 	sw	zero,32(sp)
    1a3c:	afa0001c 	sw	zero,28(sp)
    1a40:	0c000000 	jal	0 <DemoDu_Destroy>
    1a44:	e7a60018 	swc1	$f6,24(sp)
    1a48:	8fbf0034 	lw	ra,52(sp)
    1a4c:	27bd0038 	addiu	sp,sp,56
    1a50:	03e00008 	jr	ra
    1a54:	00000000 	nop

00001a58 <func_8096B528>:
    1a58:	27bdffe8 	addiu	sp,sp,-24
    1a5c:	afbf0014 	sw	ra,20(sp)
    1a60:	afa40018 	sw	a0,24(sp)
    1a64:	24060004 	li	a2,4
    1a68:	0c000000 	jal	0 <DemoDu_Destroy>
    1a6c:	24070002 	li	a3,2
    1a70:	1040000a 	beqz	v0,1a9c <func_8096B528+0x44>
    1a74:	8fa40018 	lw	a0,24(sp)
    1a78:	44802000 	mtc1	zero,$f4
    1a7c:	240e0016 	li	t6,22
    1a80:	240f0002 	li	t7,2
    1a84:	ac8e0198 	sw	t6,408(a0)
    1a88:	ac8f019c 	sw	t7,412(a0)
    1a8c:	ac8001a8 	sw	zero,424(a0)
    1a90:	a08000c8 	sb	zero,200(a0)
    1a94:	0c000000 	jal	0 <DemoDu_Destroy>
    1a98:	e48401a4 	swc1	$f4,420(a0)
    1a9c:	8fbf0014 	lw	ra,20(sp)
    1aa0:	27bd0018 	addiu	sp,sp,24
    1aa4:	03e00008 	jr	ra
    1aa8:	00000000 	nop

00001aac <func_8096B57C>:
    1aac:	27bdffe8 	addiu	sp,sp,-24
    1ab0:	afbf0014 	sw	ra,20(sp)
    1ab4:	afa40018 	sw	a0,24(sp)
    1ab8:	24060004 	li	a2,4
    1abc:	0c000000 	jal	0 <DemoDu_Destroy>
    1ac0:	24070002 	li	a3,2
    1ac4:	10400025 	beqz	v0,1b5c <func_8096B57C+0xb0>
    1ac8:	8fa40018 	lw	a0,24(sp)
    1acc:	3c014120 	lui	at,0x4120
    1ad0:	44811000 	mtc1	at,$f2
    1ad4:	3c013f80 	lui	at,0x3f80
    1ad8:	248201a4 	addiu	v0,a0,420
    1adc:	c4440000 	lwc1	$f4,0(v0)
    1ae0:	44813000 	mtc1	at,$f6
    1ae4:	3c050000 	lui	a1,0x0
    1ae8:	24a50000 	addiu	a1,a1,0
    1aec:	46062200 	add.s	$f8,$f4,$f6
    1af0:	24180017 	li	t8,23
    1af4:	24190001 	li	t9,1
    1af8:	e4480000 	swc1	$f8,0(v0)
    1afc:	8cae0000 	lw	t6,0(a1)
    1b00:	c4400000 	lwc1	$f0,0(v0)
    1b04:	85cf145e 	lh	t7,5214(t6)
    1b08:	448f5000 	mtc1	t7,$f10
    1b0c:	00000000 	nop
    1b10:	46805420 	cvt.s.w	$f16,$f10
    1b14:	46028480 	add.s	$f18,$f16,$f2
    1b18:	4600903e 	c.le.s	$f18,$f0
    1b1c:	00000000 	nop
    1b20:	45000020 	bc1f	1ba4 <func_8096B57C+0xf8>
    1b24:	00000000 	nop
    1b28:	ac980198 	sw	t8,408(a0)
    1b2c:	ac99019c 	sw	t9,412(a0)
    1b30:	8ca80000 	lw	t0,0(a1)
    1b34:	240300ff 	li	v1,255
    1b38:	8509145e 	lh	t1,5214(t0)
    1b3c:	44892000 	mtc1	t1,$f4
    1b40:	00000000 	nop
    1b44:	468021a0 	cvt.s.w	$f6,$f4
    1b48:	46023200 	add.s	$f8,$f6,$f2
    1b4c:	e4480000 	swc1	$f8,0(v0)
    1b50:	ac8301a8 	sw	v1,424(a0)
    1b54:	10000026 	b	1bf0 <func_8096B57C+0x144>
    1b58:	a08300c8 	sb	v1,200(a0)
    1b5c:	248201a4 	addiu	v0,a0,420
    1b60:	3c013f80 	lui	at,0x3f80
    1b64:	44818000 	mtc1	at,$f16
    1b68:	c44a0000 	lwc1	$f10,0(v0)
    1b6c:	44801000 	mtc1	zero,$f2
    1b70:	46105481 	sub.s	$f18,$f10,$f16
    1b74:	e4520000 	swc1	$f18,0(v0)
    1b78:	c4400000 	lwc1	$f0,0(v0)
    1b7c:	4602003e 	c.le.s	$f0,$f2
    1b80:	00000000 	nop
    1b84:	45000007 	bc1f	1ba4 <func_8096B57C+0xf8>
    1b88:	240a0015 	li	t2,21
    1b8c:	ac8a0198 	sw	t2,408(a0)
    1b90:	ac80019c 	sw	zero,412(a0)
    1b94:	e4420000 	swc1	$f2,0(v0)
    1b98:	ac8001a8 	sw	zero,424(a0)
    1b9c:	10000014 	b	1bf0 <func_8096B57C+0x144>
    1ba0:	a08000c8 	sb	zero,200(a0)
    1ba4:	3c050000 	lui	a1,0x0
    1ba8:	24a50000 	addiu	a1,a1,0
    1bac:	8cab0000 	lw	t3,0(a1)
    1bb0:	3c014120 	lui	at,0x4120
    1bb4:	44811000 	mtc1	at,$f2
    1bb8:	856c145e 	lh	t4,5214(t3)
    1bbc:	3c01437f 	lui	at,0x437f
    1bc0:	44818000 	mtc1	at,$f16
    1bc4:	448c2000 	mtc1	t4,$f4
    1bc8:	00000000 	nop
    1bcc:	468021a0 	cvt.s.w	$f6,$f4
    1bd0:	46023200 	add.s	$f8,$f6,$f2
    1bd4:	46080283 	div.s	$f10,$f0,$f8
    1bd8:	46105482 	mul.s	$f18,$f10,$f16
    1bdc:	4600910d 	trunc.w.s	$f4,$f18
    1be0:	44022000 	mfc1	v0,$f4
    1be4:	00000000 	nop
    1be8:	ac8201a8 	sw	v0,424(a0)
    1bec:	a08200c8 	sb	v0,200(a0)
    1bf0:	8fbf0014 	lw	ra,20(sp)
    1bf4:	27bd0018 	addiu	sp,sp,24
    1bf8:	03e00008 	jr	ra
    1bfc:	00000000 	nop

00001c00 <func_8096B6D0>:
    1c00:	27bdffe8 	addiu	sp,sp,-24
    1c04:	afbf0014 	sw	ra,20(sp)
    1c08:	afa5001c 	sw	a1,28(sp)
    1c0c:	afa40018 	sw	a0,24(sp)
    1c10:	24060004 	li	a2,4
    1c14:	0c000000 	jal	0 <DemoDu_Destroy>
    1c18:	24070002 	li	a3,2
    1c1c:	1040001a 	beqz	v0,1c88 <func_8096B6D0+0x88>
    1c20:	8fa40018 	lw	a0,24(sp)
    1c24:	240e0016 	li	t6,22
    1c28:	240f0002 	li	t7,2
    1c2c:	ac8e0198 	sw	t6,408(a0)
    1c30:	ac8f019c 	sw	t7,412(a0)
    1c34:	3c180000 	lui	t8,0x0
    1c38:	8f180000 	lw	t8,0(t8)
    1c3c:	3c014120 	lui	at,0x4120
    1c40:	44814000 	mtc1	at,$f8
    1c44:	8719145e 	lh	t9,5214(t8)
    1c48:	8c8901ac 	lw	t1,428(a0)
    1c4c:	240800ff 	li	t0,255
    1c50:	44992000 	mtc1	t9,$f4
    1c54:	ac8801a8 	sw	t0,424(a0)
    1c58:	468021a0 	cvt.s.w	$f6,$f4
    1c5c:	46083280 	add.s	$f10,$f6,$f8
    1c60:	15200007 	bnez	t1,1c80 <func_8096B6D0+0x80>
    1c64:	e48a01a4 	swc1	$f10,420(a0)
    1c68:	8fa5001c 	lw	a1,28(sp)
    1c6c:	0c000000 	jal	0 <DemoDu_Destroy>
    1c70:	afa40018 	sw	a0,24(sp)
    1c74:	8fa40018 	lw	a0,24(sp)
    1c78:	240a0001 	li	t2,1
    1c7c:	ac8a01ac 	sw	t2,428(a0)
    1c80:	240b00ff 	li	t3,255
    1c84:	a08b00c8 	sb	t3,200(a0)
    1c88:	8fbf0014 	lw	ra,20(sp)
    1c8c:	27bd0018 	addiu	sp,sp,24
    1c90:	03e00008 	jr	ra
    1c94:	00000000 	nop

00001c98 <func_8096B768>:
    1c98:	27bdffe8 	addiu	sp,sp,-24
    1c9c:	afbf0014 	sw	ra,20(sp)
    1ca0:	afa40018 	sw	a0,24(sp)
    1ca4:	0c000000 	jal	0 <DemoDu_Destroy>
    1ca8:	afa5001c 	sw	a1,28(sp)
    1cac:	8fa40018 	lw	a0,24(sp)
    1cb0:	0c000000 	jal	0 <DemoDu_Destroy>
    1cb4:	8fa5001c 	lw	a1,28(sp)
    1cb8:	8fbf0014 	lw	ra,20(sp)
    1cbc:	27bd0018 	addiu	sp,sp,24
    1cc0:	03e00008 	jr	ra
    1cc4:	00000000 	nop

00001cc8 <func_8096B798>:
    1cc8:	27bdffe0 	addiu	sp,sp,-32
    1ccc:	afbf001c 	sw	ra,28(sp)
    1cd0:	afb00018 	sw	s0,24(sp)
    1cd4:	00808025 	move	s0,a0
    1cd8:	0c000000 	jal	0 <DemoDu_Destroy>
    1cdc:	afa50024 	sw	a1,36(sp)
    1ce0:	0c000000 	jal	0 <DemoDu_Destroy>
    1ce4:	02002025 	move	a0,s0
    1ce8:	0c000000 	jal	0 <DemoDu_Destroy>
    1cec:	02002025 	move	a0,s0
    1cf0:	02002025 	move	a0,s0
    1cf4:	0c000000 	jal	0 <DemoDu_Destroy>
    1cf8:	8fa50024 	lw	a1,36(sp)
    1cfc:	02002025 	move	a0,s0
    1d00:	0c000000 	jal	0 <DemoDu_Destroy>
    1d04:	8fa50024 	lw	a1,36(sp)
    1d08:	8fbf001c 	lw	ra,28(sp)
    1d0c:	8fb00018 	lw	s0,24(sp)
    1d10:	27bd0020 	addiu	sp,sp,32
    1d14:	03e00008 	jr	ra
    1d18:	00000000 	nop

00001d1c <func_8096B7EC>:
    1d1c:	27bdffe0 	addiu	sp,sp,-32
    1d20:	afbf001c 	sw	ra,28(sp)
    1d24:	afb00018 	sw	s0,24(sp)
    1d28:	00808025 	move	s0,a0
    1d2c:	0c000000 	jal	0 <DemoDu_Destroy>
    1d30:	afa50024 	sw	a1,36(sp)
    1d34:	0c000000 	jal	0 <DemoDu_Destroy>
    1d38:	02002025 	move	a0,s0
    1d3c:	0c000000 	jal	0 <DemoDu_Destroy>
    1d40:	02002025 	move	a0,s0
    1d44:	02002025 	move	a0,s0
    1d48:	0c000000 	jal	0 <DemoDu_Destroy>
    1d4c:	8fa50024 	lw	a1,36(sp)
    1d50:	02002025 	move	a0,s0
    1d54:	0c000000 	jal	0 <DemoDu_Destroy>
    1d58:	8fa50024 	lw	a1,36(sp)
    1d5c:	8fbf001c 	lw	ra,28(sp)
    1d60:	8fb00018 	lw	s0,24(sp)
    1d64:	27bd0020 	addiu	sp,sp,32
    1d68:	03e00008 	jr	ra
    1d6c:	00000000 	nop

00001d70 <func_8096B840>:
    1d70:	27bdff80 	addiu	sp,sp,-128
    1d74:	afbf002c 	sw	ra,44(sp)
    1d78:	afb00028 	sw	s0,40(sp)
    1d7c:	afa40080 	sw	a0,128(sp)
    1d80:	afa50084 	sw	a1,132(sp)
    1d84:	84820190 	lh	v0,400(a0)
    1d88:	3c180000 	lui	t8,0x0
    1d8c:	3c090000 	lui	t1,0x0
    1d90:	00027880 	sll	t7,v0,0x2
    1d94:	030fc021 	addu	t8,t8,t7
    1d98:	8f180000 	lw	t8,0(t8)
    1d9c:	3c060000 	lui	a2,0x0
    1da0:	24c60000 	addiu	a2,a2,0
    1da4:	afb80070 	sw	t8,112(sp)
    1da8:	84830194 	lh	v1,404(a0)
    1dac:	27a4004c 	addiu	a0,sp,76
    1db0:	24070113 	li	a3,275
    1db4:	0003c880 	sll	t9,v1,0x2
    1db8:	01394821 	addu	t1,t1,t9
    1dbc:	8d290000 	lw	t1,0(t1)
    1dc0:	afa90064 	sw	t1,100(sp)
    1dc4:	8ca50000 	lw	a1,0(a1)
    1dc8:	0c000000 	jal	0 <DemoDu_Destroy>
    1dcc:	00a08025 	move	s0,a1
    1dd0:	8fab0084 	lw	t3,132(sp)
    1dd4:	0c000000 	jal	0 <DemoDu_Destroy>
    1dd8:	8d640000 	lw	a0,0(t3)
    1ddc:	8fa40070 	lw	a0,112(sp)
    1de0:	8e0202d0 	lw	v0,720(s0)
    1de4:	3c050000 	lui	a1,0x0
    1de8:	00047900 	sll	t7,a0,0x4
    1dec:	000fc702 	srl	t8,t7,0x1c
    1df0:	3c0ddb06 	lui	t5,0xdb06
    1df4:	244c0008 	addiu	t4,v0,8
    1df8:	ae0c02d0 	sw	t4,720(s0)
    1dfc:	35ad0020 	ori	t5,t5,0x20
    1e00:	00187080 	sll	t6,t8,0x2
    1e04:	24a50000 	addiu	a1,a1,0
    1e08:	00aec821 	addu	t9,a1,t6
    1e0c:	ac4d0000 	sw	t5,0(v0)
    1e10:	8f290000 	lw	t1,0(t9)
    1e14:	3c0600ff 	lui	a2,0xff
    1e18:	34c6ffff 	ori	a2,a2,0xffff
    1e1c:	00865024 	and	t2,a0,a2
    1e20:	3c078000 	lui	a3,0x8000
    1e24:	012a5821 	addu	t3,t1,t2
    1e28:	01676021 	addu	t4,t3,a3
    1e2c:	ac4c0004 	sw	t4,4(v0)
    1e30:	8fa40064 	lw	a0,100(sp)
    1e34:	8e0202d0 	lw	v0,720(s0)
    1e38:	3c0fdb06 	lui	t7,0xdb06
    1e3c:	0004c100 	sll	t8,a0,0x4
    1e40:	00187702 	srl	t6,t8,0x1c
    1e44:	244d0008 	addiu	t5,v0,8
    1e48:	ae0d02d0 	sw	t5,720(s0)
    1e4c:	000ec880 	sll	t9,t6,0x2
    1e50:	35ef0024 	ori	t7,t7,0x24
    1e54:	00b94821 	addu	t1,a1,t9
    1e58:	ac4f0000 	sw	t7,0(v0)
    1e5c:	8d2a0000 	lw	t2,0(t1)
    1e60:	00865824 	and	t3,a0,a2
    1e64:	3c040600 	lui	a0,0x600
    1e68:	014b6021 	addu	t4,t2,t3
    1e6c:	01876821 	addu	t5,t4,a3
    1e70:	ac4d0004 	sw	t5,4(v0)
    1e74:	8e0202d0 	lw	v0,720(s0)
    1e78:	24847fc0 	addiu	a0,a0,32704
    1e7c:	00047100 	sll	t6,a0,0x4
    1e80:	000ecf02 	srl	t9,t6,0x1c
    1e84:	3c18db06 	lui	t8,0xdb06
    1e88:	244f0008 	addiu	t7,v0,8
    1e8c:	ae0f02d0 	sw	t7,720(s0)
    1e90:	37180028 	ori	t8,t8,0x28
    1e94:	00194880 	sll	t1,t9,0x2
    1e98:	00a95021 	addu	t2,a1,t1
    1e9c:	ac580000 	sw	t8,0(v0)
    1ea0:	8d4b0000 	lw	t3,0(t2)
    1ea4:	00866024 	and	t4,a0,a2
    1ea8:	3c0efb00 	lui	t6,0xfb00
    1eac:	016c6821 	addu	t5,t3,t4
    1eb0:	01a77821 	addu	t7,t5,a3
    1eb4:	ac4f0004 	sw	t7,4(v0)
    1eb8:	8e0202d0 	lw	v0,720(s0)
    1ebc:	8fa80080 	lw	t0,128(sp)
    1ec0:	3c0c0000 	lui	t4,0x0
    1ec4:	24580008 	addiu	t8,v0,8
    1ec8:	ae1802d0 	sw	t8,720(s0)
    1ecc:	ac4e0000 	sw	t6,0(v0)
    1ed0:	8d1901a8 	lw	t9,424(t0)
    1ed4:	3c0bdb06 	lui	t3,0xdb06
    1ed8:	356b0030 	ori	t3,t3,0x30
    1edc:	332900ff 	andi	t1,t9,0xff
    1ee0:	ac490004 	sw	t1,4(v0)
    1ee4:	8e0202d0 	lw	v0,720(s0)
    1ee8:	258c0000 	addiu	t4,t4,0
    1eec:	244a0008 	addiu	t2,v0,8
    1ef0:	ae0a02d0 	sw	t2,720(s0)
    1ef4:	ac4c0004 	sw	t4,4(v0)
    1ef8:	ac4b0000 	sw	t3,0(v0)
    1efc:	2502014c 	addiu	v0,t0,332
    1f00:	8c450004 	lw	a1,4(v0)
    1f04:	8c460020 	lw	a2,32(v0)
    1f08:	90470002 	lbu	a3,2(v0)
    1f0c:	afa00018 	sw	zero,24(sp)
    1f10:	afa00014 	sw	zero,20(sp)
    1f14:	afa00010 	sw	zero,16(sp)
    1f18:	8e0d02d0 	lw	t5,720(s0)
    1f1c:	8fa40084 	lw	a0,132(sp)
    1f20:	0c000000 	jal	0 <DemoDu_Destroy>
    1f24:	afad001c 	sw	t5,28(sp)
    1f28:	ae0202d0 	sw	v0,720(s0)
    1f2c:	8faf0084 	lw	t7,132(sp)
    1f30:	3c060000 	lui	a2,0x0
    1f34:	24c60000 	addiu	a2,a2,0
    1f38:	27a4004c 	addiu	a0,sp,76
    1f3c:	24070130 	li	a3,304
    1f40:	0c000000 	jal	0 <DemoDu_Destroy>
    1f44:	8de50000 	lw	a1,0(t7)
    1f48:	8fbf002c 	lw	ra,44(sp)
    1f4c:	8fb00028 	lw	s0,40(sp)
    1f50:	27bd0080 	addiu	sp,sp,128
    1f54:	03e00008 	jr	ra
    1f58:	00000000 	nop

00001f5c <func_8096BA2C>:
    1f5c:	27bdffd0 	addiu	sp,sp,-48
    1f60:	afb00028 	sw	s0,40(sp)
    1f64:	00808025 	move	s0,a0
    1f68:	afbf002c 	sw	ra,44(sp)
    1f6c:	afa50034 	sw	a1,52(sp)
    1f70:	00a02025 	move	a0,a1
    1f74:	3c060601 	lui	a2,0x601
    1f78:	3c070600 	lui	a3,0x600
    1f7c:	24e767cc 	addiu	a3,a3,26572
    1f80:	24c61ca8 	addiu	a2,a2,7336
    1f84:	2605014c 	addiu	a1,s0,332
    1f88:	afa00010 	sw	zero,16(sp)
    1f8c:	afa00014 	sw	zero,20(sp)
    1f90:	0c000000 	jal	0 <DemoDu_Destroy>
    1f94:	afa00018 	sw	zero,24(sp)
    1f98:	240e0018 	li	t6,24
    1f9c:	ae0e0198 	sw	t6,408(s0)
    1fa0:	ae00019c 	sw	zero,412(s0)
    1fa4:	a20000c8 	sb	zero,200(s0)
    1fa8:	02002025 	move	a0,s0
    1fac:	0c000000 	jal	0 <DemoDu_Destroy>
    1fb0:	24050003 	li	a1,3
    1fb4:	8fbf002c 	lw	ra,44(sp)
    1fb8:	8fb00028 	lw	s0,40(sp)
    1fbc:	27bd0030 	addiu	sp,sp,48
    1fc0:	03e00008 	jr	ra
    1fc4:	00000000 	nop

00001fc8 <func_8096BA98>:
    1fc8:	3c013f80 	lui	at,0x3f80
    1fcc:	44813000 	mtc1	at,$f6
    1fd0:	c48401a4 	lwc1	$f4,420(a0)
    1fd4:	3c0e0000 	lui	t6,0x0
    1fd8:	3c014120 	lui	at,0x4120
    1fdc:	46062200 	add.s	$f8,$f4,$f6
    1fe0:	44819000 	mtc1	at,$f18
    1fe4:	240200ff 	li	v0,255
    1fe8:	e48801a4 	swc1	$f8,420(a0)
    1fec:	8dce0000 	lw	t6,0(t6)
    1ff0:	c48401a4 	lwc1	$f4,420(a0)
    1ff4:	85cf1476 	lh	t7,5238(t6)
    1ff8:	448f5000 	mtc1	t7,$f10
    1ffc:	00000000 	nop
    2000:	46805420 	cvt.s.w	$f16,$f10
    2004:	46128000 	add.s	$f0,$f16,$f18
    2008:	4604003e 	c.le.s	$f0,$f4
    200c:	00000000 	nop
    2010:	45020005 	bc1fl	2028 <func_8096BA98+0x60>
    2014:	c48601a4 	lwc1	$f6,420(a0)
    2018:	ac8201a8 	sw	v0,424(a0)
    201c:	03e00008 	jr	ra
    2020:	a08200c8 	sb	v0,200(a0)
    2024:	c48601a4 	lwc1	$f6,420(a0)
    2028:	3c01437f 	lui	at,0x437f
    202c:	44815000 	mtc1	at,$f10
    2030:	46003203 	div.s	$f8,$f6,$f0
    2034:	460a4402 	mul.s	$f16,$f8,$f10
    2038:	4600848d 	trunc.w.s	$f18,$f16
    203c:	44029000 	mfc1	v0,$f18
    2040:	00000000 	nop
    2044:	ac8201a8 	sw	v0,424(a0)
    2048:	a08200c8 	sb	v0,200(a0)
    204c:	03e00008 	jr	ra
    2050:	00000000 	nop

00002054 <func_8096BB24>:
    2054:	27bdffe8 	addiu	sp,sp,-24
    2058:	afbf0014 	sw	ra,20(sp)
    205c:	afa40018 	sw	a0,24(sp)
    2060:	0c000000 	jal	0 <DemoDu_Destroy>
    2064:	24060002 	li	a2,2
    2068:	8fa40018 	lw	a0,24(sp)
    206c:	240e0019 	li	t6,25
    2070:	240f0002 	li	t7,2
    2074:	ac8e0198 	sw	t6,408(a0)
    2078:	ac8f019c 	sw	t7,412(a0)
    207c:	8fbf0014 	lw	ra,20(sp)
    2080:	27bd0018 	addiu	sp,sp,24
    2084:	03e00008 	jr	ra
    2088:	00000000 	nop

0000208c <func_8096BB5C>:
    208c:	3c0e0000 	lui	t6,0x0
    2090:	8dce0000 	lw	t6,0(t6)
    2094:	3c014120 	lui	at,0x4120
    2098:	44815000 	mtc1	at,$f10
    209c:	85cf1476 	lh	t7,5238(t6)
    20a0:	c48401a4 	lwc1	$f4,420(a0)
    20a4:	2418001a 	li	t8,26
    20a8:	448f3000 	mtc1	t7,$f6
    20ac:	24190001 	li	t9,1
    20b0:	46803220 	cvt.s.w	$f8,$f6
    20b4:	460a4400 	add.s	$f16,$f8,$f10
    20b8:	4604803e 	c.le.s	$f16,$f4
    20bc:	00000000 	nop
    20c0:	45000003 	bc1f	20d0 <func_8096BB5C+0x44>
    20c4:	00000000 	nop
    20c8:	ac980198 	sw	t8,408(a0)
    20cc:	ac99019c 	sw	t9,412(a0)
    20d0:	03e00008 	jr	ra
    20d4:	00000000 	nop

000020d8 <func_8096BBA8>:
    20d8:	27bdffe0 	addiu	sp,sp,-32
    20dc:	afbf001c 	sw	ra,28(sp)
    20e0:	3c050600 	lui	a1,0x600
    20e4:	afa40020 	sw	a0,32(sp)
    20e8:	24a55458 	addiu	a1,a1,21592
    20ec:	afa00010 	sw	zero,16(sp)
    20f0:	24060002 	li	a2,2
    20f4:	0c000000 	jal	0 <DemoDu_Destroy>
    20f8:	3c07c100 	lui	a3,0xc100
    20fc:	8faf0020 	lw	t7,32(sp)
    2100:	240e001b 	li	t6,27
    2104:	adee0198 	sw	t6,408(t7)
    2108:	8fbf001c 	lw	ra,28(sp)
    210c:	27bd0020 	addiu	sp,sp,32
    2110:	03e00008 	jr	ra
    2114:	00000000 	nop

00002118 <func_8096BBE8>:
    2118:	27bdffe0 	addiu	sp,sp,-32
    211c:	afbf001c 	sw	ra,28(sp)
    2120:	3c050600 	lui	a1,0x600
    2124:	afa40020 	sw	a0,32(sp)
    2128:	24a56104 	addiu	a1,a1,24836
    212c:	afa00010 	sw	zero,16(sp)
    2130:	24060002 	li	a2,2
    2134:	0c000000 	jal	0 <DemoDu_Destroy>
    2138:	24070000 	li	a3,0
    213c:	8faf0020 	lw	t7,32(sp)
    2140:	240e001c 	li	t6,28
    2144:	adee0198 	sw	t6,408(t7)
    2148:	8fbf001c 	lw	ra,28(sp)
    214c:	27bd0020 	addiu	sp,sp,32
    2150:	03e00008 	jr	ra
    2154:	00000000 	nop

00002158 <func_8096BC28>:
    2158:	27bdffe0 	addiu	sp,sp,-32
    215c:	afbf001c 	sw	ra,28(sp)
    2160:	10a0000a 	beqz	a1,218c <func_8096BC28+0x34>
    2164:	afa40020 	sw	a0,32(sp)
    2168:	3c050600 	lui	a1,0x600
    216c:	24a567cc 	addiu	a1,a1,26572
    2170:	00003025 	move	a2,zero
    2174:	24070000 	li	a3,0
    2178:	0c000000 	jal	0 <DemoDu_Destroy>
    217c:	afa00010 	sw	zero,16(sp)
    2180:	8faf0020 	lw	t7,32(sp)
    2184:	240e001a 	li	t6,26
    2188:	adee0198 	sw	t6,408(t7)
    218c:	8fbf001c 	lw	ra,28(sp)
    2190:	27bd0020 	addiu	sp,sp,32
    2194:	03e00008 	jr	ra
    2198:	00000000 	nop

0000219c <func_8096BC6C>:
    219c:	27bdffd8 	addiu	sp,sp,-40
    21a0:	afb00018 	sw	s0,24(sp)
    21a4:	00808025 	move	s0,a0
    21a8:	afbf001c 	sw	ra,28(sp)
    21ac:	afa5002c 	sw	a1,44(sp)
    21b0:	00a02025 	move	a0,a1
    21b4:	0c000000 	jal	0 <DemoDu_Destroy>
    21b8:	24050002 	li	a1,2
    21bc:	50400023 	beqzl	v0,224c <func_8096BC6C+0xb0>
    21c0:	8fbf001c 	lw	ra,28(sp)
    21c4:	94460000 	lhu	a2,0(v0)
    21c8:	8e0301b0 	lw	v1,432(s0)
    21cc:	24010009 	li	at,9
    21d0:	50c3001e 	beql	a2,v1,224c <func_8096BC6C+0xb0>
    21d4:	8fbf001c 	lw	ra,28(sp)
    21d8:	10c10009 	beq	a2,at,2200 <func_8096BC6C+0x64>
    21dc:	02002025 	move	a0,s0
    21e0:	2401000a 	li	at,10
    21e4:	10c1000b 	beq	a2,at,2214 <func_8096BC6C+0x78>
    21e8:	02002025 	move	a0,s0
    21ec:	2401000b 	li	at,11
    21f0:	10c1000c 	beq	a2,at,2224 <func_8096BC6C+0x88>
    21f4:	02002025 	move	a0,s0
    21f8:	1000000e 	b	2234 <func_8096BC6C+0x98>
    21fc:	3c040000 	lui	a0,0x0
    2200:	8fa5002c 	lw	a1,44(sp)
    2204:	0c000000 	jal	0 <DemoDu_Destroy>
    2208:	afa60020 	sw	a2,32(sp)
    220c:	1000000d 	b	2244 <func_8096BC6C+0xa8>
    2210:	8fa60020 	lw	a2,32(sp)
    2214:	0c000000 	jal	0 <DemoDu_Destroy>
    2218:	afa60020 	sw	a2,32(sp)
    221c:	10000009 	b	2244 <func_8096BC6C+0xa8>
    2220:	8fa60020 	lw	a2,32(sp)
    2224:	0c000000 	jal	0 <DemoDu_Destroy>
    2228:	afa60020 	sw	a2,32(sp)
    222c:	10000005 	b	2244 <func_8096BC6C+0xa8>
    2230:	8fa60020 	lw	a2,32(sp)
    2234:	24840000 	addiu	a0,a0,0
    2238:	0c000000 	jal	0 <DemoDu_Destroy>
    223c:	afa60020 	sw	a2,32(sp)
    2240:	8fa60020 	lw	a2,32(sp)
    2244:	ae0601b0 	sw	a2,432(s0)
    2248:	8fbf001c 	lw	ra,28(sp)
    224c:	8fb00018 	lw	s0,24(sp)
    2250:	27bd0028 	addiu	sp,sp,40
    2254:	03e00008 	jr	ra
    2258:	00000000 	nop

0000225c <func_8096BD2C>:
    225c:	27bdffe8 	addiu	sp,sp,-24
    2260:	afbf0014 	sw	ra,20(sp)
    2264:	0c000000 	jal	0 <DemoDu_Destroy>
    2268:	00000000 	nop
    226c:	8fbf0014 	lw	ra,20(sp)
    2270:	27bd0018 	addiu	sp,sp,24
    2274:	03e00008 	jr	ra
    2278:	00000000 	nop

0000227c <func_8096BD4C>:
    227c:	27bdffe0 	addiu	sp,sp,-32
    2280:	afbf001c 	sw	ra,28(sp)
    2284:	afb00018 	sw	s0,24(sp)
    2288:	0c000000 	jal	0 <DemoDu_Destroy>
    228c:	00808025 	move	s0,a0
    2290:	0c000000 	jal	0 <DemoDu_Destroy>
    2294:	02002025 	move	a0,s0
    2298:	0c000000 	jal	0 <DemoDu_Destroy>
    229c:	02002025 	move	a0,s0
    22a0:	0c000000 	jal	0 <DemoDu_Destroy>
    22a4:	02002025 	move	a0,s0
    22a8:	0c000000 	jal	0 <DemoDu_Destroy>
    22ac:	02002025 	move	a0,s0
    22b0:	8fbf001c 	lw	ra,28(sp)
    22b4:	8fb00018 	lw	s0,24(sp)
    22b8:	27bd0020 	addiu	sp,sp,32
    22bc:	03e00008 	jr	ra
    22c0:	00000000 	nop

000022c4 <func_8096BD94>:
    22c4:	27bdffe8 	addiu	sp,sp,-24
    22c8:	afbf0014 	sw	ra,20(sp)
    22cc:	afa40018 	sw	a0,24(sp)
    22d0:	0c000000 	jal	0 <DemoDu_Destroy>
    22d4:	afa5001c 	sw	a1,28(sp)
    22d8:	0c000000 	jal	0 <DemoDu_Destroy>
    22dc:	8fa40018 	lw	a0,24(sp)
    22e0:	0c000000 	jal	0 <DemoDu_Destroy>
    22e4:	8fa40018 	lw	a0,24(sp)
    22e8:	8fa40018 	lw	a0,24(sp)
    22ec:	0c000000 	jal	0 <DemoDu_Destroy>
    22f0:	8fa5001c 	lw	a1,28(sp)
    22f4:	8fbf0014 	lw	ra,20(sp)
    22f8:	27bd0018 	addiu	sp,sp,24
    22fc:	03e00008 	jr	ra
    2300:	00000000 	nop

00002304 <func_8096BDD4>:
    2304:	27bdffe8 	addiu	sp,sp,-24
    2308:	afbf0014 	sw	ra,20(sp)
    230c:	afa40018 	sw	a0,24(sp)
    2310:	0c000000 	jal	0 <DemoDu_Destroy>
    2314:	afa5001c 	sw	a1,28(sp)
    2318:	0c000000 	jal	0 <DemoDu_Destroy>
    231c:	8fa40018 	lw	a0,24(sp)
    2320:	0c000000 	jal	0 <DemoDu_Destroy>
    2324:	8fa40018 	lw	a0,24(sp)
    2328:	8fa40018 	lw	a0,24(sp)
    232c:	0c000000 	jal	0 <DemoDu_Destroy>
    2330:	8fa5001c 	lw	a1,28(sp)
    2334:	8fbf0014 	lw	ra,20(sp)
    2338:	27bd0018 	addiu	sp,sp,24
    233c:	03e00008 	jr	ra
    2340:	00000000 	nop

00002344 <func_8096BE14>:
    2344:	27bdffe0 	addiu	sp,sp,-32
    2348:	afbf0014 	sw	ra,20(sp)
    234c:	0c000000 	jal	0 <DemoDu_Destroy>
    2350:	afa40020 	sw	a0,32(sp)
    2354:	0c000000 	jal	0 <DemoDu_Destroy>
    2358:	8fa40020 	lw	a0,32(sp)
    235c:	afa2001c 	sw	v0,28(sp)
    2360:	0c000000 	jal	0 <DemoDu_Destroy>
    2364:	8fa40020 	lw	a0,32(sp)
    2368:	8fa40020 	lw	a0,32(sp)
    236c:	0c000000 	jal	0 <DemoDu_Destroy>
    2370:	8fa5001c 	lw	a1,28(sp)
    2374:	8fbf0014 	lw	ra,20(sp)
    2378:	27bd0020 	addiu	sp,sp,32
    237c:	03e00008 	jr	ra
    2380:	00000000 	nop

00002384 <DemoDu_Update>:
    2384:	27bdffe8 	addiu	sp,sp,-24
    2388:	afbf0014 	sw	ra,20(sp)
    238c:	8c820198 	lw	v0,408(a0)
    2390:	04400008 	bltz	v0,23b4 <DemoDu_Update+0x30>
    2394:	2841001d 	slti	at,v0,29
    2398:	10200006 	beqz	at,23b4 <DemoDu_Update+0x30>
    239c:	00027080 	sll	t6,v0,0x2
    23a0:	3c030000 	lui	v1,0x0
    23a4:	006e1821 	addu	v1,v1,t6
    23a8:	8c630000 	lw	v1,0(v1)
    23ac:	14600006 	bnez	v1,23c8 <DemoDu_Update+0x44>
    23b0:	00000000 	nop
    23b4:	3c040000 	lui	a0,0x0
    23b8:	0c000000 	jal	0 <DemoDu_Destroy>
    23bc:	24840000 	addiu	a0,a0,0
    23c0:	10000004 	b	23d4 <DemoDu_Update+0x50>
    23c4:	8fbf0014 	lw	ra,20(sp)
    23c8:	0060f809 	jalr	v1
    23cc:	00000000 	nop
    23d0:	8fbf0014 	lw	ra,20(sp)
    23d4:	27bd0018 	addiu	sp,sp,24
    23d8:	03e00008 	jr	ra
    23dc:	00000000 	nop

000023e0 <DemoDu_Init>:
    23e0:	27bdffe0 	addiu	sp,sp,-32
    23e4:	afb00018 	sw	s0,24(sp)
    23e8:	00808025 	move	s0,a0
    23ec:	afbf001c 	sw	ra,28(sp)
    23f0:	afa50024 	sw	a1,36(sp)
    23f4:	3c060000 	lui	a2,0x0
    23f8:	24c60000 	addiu	a2,a2,0
    23fc:	24050000 	li	a1,0
    2400:	248400b4 	addiu	a0,a0,180
    2404:	0c000000 	jal	0 <DemoDu_Destroy>
    2408:	3c0741f0 	lui	a3,0x41f0
    240c:	8602001c 	lh	v0,28(s0)
    2410:	24010001 	li	at,1
    2414:	8fa50024 	lw	a1,36(sp)
    2418:	10410007 	beq	v0,at,2438 <DemoDu_Init+0x58>
    241c:	24010002 	li	at,2
    2420:	10410009 	beq	v0,at,2448 <DemoDu_Init+0x68>
    2424:	24010003 	li	at,3
    2428:	1041000b 	beq	v0,at,2458 <DemoDu_Init+0x78>
    242c:	00000000 	nop
    2430:	1000000d 	b	2468 <DemoDu_Init+0x88>
    2434:	00000000 	nop
    2438:	0c000000 	jal	0 <DemoDu_Destroy>
    243c:	02002025 	move	a0,s0
    2440:	1000000c 	b	2474 <DemoDu_Init+0x94>
    2444:	8fbf001c 	lw	ra,28(sp)
    2448:	0c000000 	jal	0 <DemoDu_Destroy>
    244c:	02002025 	move	a0,s0
    2450:	10000008 	b	2474 <DemoDu_Init+0x94>
    2454:	8fbf001c 	lw	ra,28(sp)
    2458:	0c000000 	jal	0 <DemoDu_Destroy>
    245c:	02002025 	move	a0,s0
    2460:	10000004 	b	2474 <DemoDu_Init+0x94>
    2464:	8fbf001c 	lw	ra,28(sp)
    2468:	0c000000 	jal	0 <DemoDu_Destroy>
    246c:	02002025 	move	a0,s0
    2470:	8fbf001c 	lw	ra,28(sp)
    2474:	8fb00018 	lw	s0,24(sp)
    2478:	27bd0020 	addiu	sp,sp,32
    247c:	03e00008 	jr	ra
    2480:	00000000 	nop

00002484 <func_8096BF54>:
    2484:	afa40000 	sw	a0,0(sp)
    2488:	03e00008 	jr	ra
    248c:	afa50004 	sw	a1,4(sp)

00002490 <func_8096BF60>:
    2490:	27bdff88 	addiu	sp,sp,-120
    2494:	afbf0024 	sw	ra,36(sp)
    2498:	afa40078 	sw	a0,120(sp)
    249c:	afa5007c 	sw	a1,124(sp)
    24a0:	84820190 	lh	v0,400(a0)
    24a4:	3c180000 	lui	t8,0x0
    24a8:	3c090000 	lui	t1,0x0
    24ac:	00027880 	sll	t7,v0,0x2
    24b0:	030fc021 	addu	t8,t8,t7
    24b4:	8f180000 	lw	t8,0(t8)
    24b8:	3c060000 	lui	a2,0x0
    24bc:	24c60000 	addiu	a2,a2,0
    24c0:	afb80068 	sw	t8,104(sp)
    24c4:	84830194 	lh	v1,404(a0)
    24c8:	27a40044 	addiu	a0,sp,68
    24cc:	24070267 	li	a3,615
    24d0:	0003c880 	sll	t9,v1,0x2
    24d4:	01394821 	addu	t1,t1,t9
    24d8:	8d290000 	lw	t1,0(t1)
    24dc:	afa9005c 	sw	t1,92(sp)
    24e0:	8ca50000 	lw	a1,0(a1)
    24e4:	0c000000 	jal	0 <DemoDu_Destroy>
    24e8:	afa50054 	sw	a1,84(sp)
    24ec:	8fab007c 	lw	t3,124(sp)
    24f0:	0c000000 	jal	0 <DemoDu_Destroy>
    24f4:	8d640000 	lw	a0,0(t3)
    24f8:	8fa80054 	lw	t0,84(sp)
    24fc:	8fa40068 	lw	a0,104(sp)
    2500:	3c050000 	lui	a1,0x0
    2504:	8d0202c0 	lw	v0,704(t0)
    2508:	00047900 	sll	t7,a0,0x4
    250c:	000fc702 	srl	t8,t7,0x1c
    2510:	3c0ddb06 	lui	t5,0xdb06
    2514:	244c0008 	addiu	t4,v0,8
    2518:	35ad0020 	ori	t5,t5,0x20
    251c:	00187080 	sll	t6,t8,0x2
    2520:	24a50000 	addiu	a1,a1,0
    2524:	ad0c02c0 	sw	t4,704(t0)
    2528:	00aec821 	addu	t9,a1,t6
    252c:	ac4d0000 	sw	t5,0(v0)
    2530:	8f290000 	lw	t1,0(t9)
    2534:	3c0600ff 	lui	a2,0xff
    2538:	34c6ffff 	ori	a2,a2,0xffff
    253c:	00865024 	and	t2,a0,a2
    2540:	3c078000 	lui	a3,0x8000
    2544:	012a5821 	addu	t3,t1,t2
    2548:	01676021 	addu	t4,t3,a3
    254c:	ac4c0004 	sw	t4,4(v0)
    2550:	8fa4005c 	lw	a0,92(sp)
    2554:	8d0202c0 	lw	v0,704(t0)
    2558:	3c0fdb06 	lui	t7,0xdb06
    255c:	0004c100 	sll	t8,a0,0x4
    2560:	00187702 	srl	t6,t8,0x1c
    2564:	244d0008 	addiu	t5,v0,8
    2568:	000ec880 	sll	t9,t6,0x2
    256c:	35ef0024 	ori	t7,t7,0x24
    2570:	ad0d02c0 	sw	t5,704(t0)
    2574:	00b94821 	addu	t1,a1,t9
    2578:	ac4f0000 	sw	t7,0(v0)
    257c:	8d2a0000 	lw	t2,0(t1)
    2580:	00865824 	and	t3,a0,a2
    2584:	3c040600 	lui	a0,0x600
    2588:	014b6021 	addu	t4,t2,t3
    258c:	01876821 	addu	t5,t4,a3
    2590:	ac4d0004 	sw	t5,4(v0)
    2594:	8d0202c0 	lw	v0,704(t0)
    2598:	24847fc0 	addiu	a0,a0,32704
    259c:	00047100 	sll	t6,a0,0x4
    25a0:	000ecf02 	srl	t9,t6,0x1c
    25a4:	3c18db06 	lui	t8,0xdb06
    25a8:	244f0008 	addiu	t7,v0,8
    25ac:	37180028 	ori	t8,t8,0x28
    25b0:	00194880 	sll	t1,t9,0x2
    25b4:	ad0f02c0 	sw	t7,704(t0)
    25b8:	00a95021 	addu	t2,a1,t1
    25bc:	ac580000 	sw	t8,0(v0)
    25c0:	8d4b0000 	lw	t3,0(t2)
    25c4:	00866024 	and	t4,a0,a2
    25c8:	241900ff 	li	t9,255
    25cc:	016c6821 	addu	t5,t3,t4
    25d0:	01a77821 	addu	t7,t5,a3
    25d4:	ac4f0004 	sw	t7,4(v0)
    25d8:	8d0202c0 	lw	v0,704(t0)
    25dc:	3c0efb00 	lui	t6,0xfb00
    25e0:	3c0b0000 	lui	t3,0x0
    25e4:	24580008 	addiu	t8,v0,8
    25e8:	ad1802c0 	sw	t8,704(t0)
    25ec:	ac590004 	sw	t9,4(v0)
    25f0:	ac4e0000 	sw	t6,0(v0)
    25f4:	8d0202c0 	lw	v0,704(t0)
    25f8:	3c0adb06 	lui	t2,0xdb06
    25fc:	354a0030 	ori	t2,t2,0x30
    2600:	24490008 	addiu	t1,v0,8
    2604:	ad0902c0 	sw	t1,704(t0)
    2608:	256b0010 	addiu	t3,t3,16
    260c:	ac4b0004 	sw	t3,4(v0)
    2610:	ac4a0000 	sw	t2,0(v0)
    2614:	8fa30078 	lw	v1,120(sp)
    2618:	8fa4007c 	lw	a0,124(sp)
    261c:	2462014c 	addiu	v0,v1,332
    2620:	8c450004 	lw	a1,4(v0)
    2624:	8c460020 	lw	a2,32(v0)
    2628:	90470002 	lbu	a3,2(v0)
    262c:	afa00014 	sw	zero,20(sp)
    2630:	afa00010 	sw	zero,16(sp)
    2634:	0c000000 	jal	0 <DemoDu_Destroy>
    2638:	afa30018 	sw	v1,24(sp)
    263c:	8fac007c 	lw	t4,124(sp)
    2640:	3c060000 	lui	a2,0x0
    2644:	24c60000 	addiu	a2,a2,0
    2648:	27a40044 	addiu	a0,sp,68
    264c:	2407027e 	li	a3,638
    2650:	0c000000 	jal	0 <DemoDu_Destroy>
    2654:	8d850000 	lw	a1,0(t4)
    2658:	8fbf0024 	lw	ra,36(sp)
    265c:	27bd0078 	addiu	sp,sp,120
    2660:	03e00008 	jr	ra
    2664:	00000000 	nop

00002668 <DemoDu_Draw>:
    2668:	27bdffe8 	addiu	sp,sp,-24
    266c:	afbf0014 	sw	ra,20(sp)
    2670:	8c82019c 	lw	v0,412(a0)
    2674:	04400008 	bltz	v0,2698 <DemoDu_Draw+0x30>
    2678:	28410003 	slti	at,v0,3
    267c:	10200006 	beqz	at,2698 <DemoDu_Draw+0x30>
    2680:	00027080 	sll	t6,v0,0x2
    2684:	3c030000 	lui	v1,0x0
    2688:	006e1821 	addu	v1,v1,t6
    268c:	8c630000 	lw	v1,0(v1)
    2690:	14600006 	bnez	v1,26ac <DemoDu_Draw+0x44>
    2694:	00000000 	nop
    2698:	3c040000 	lui	a0,0x0
    269c:	0c000000 	jal	0 <DemoDu_Destroy>
    26a0:	24840000 	addiu	a0,a0,0
    26a4:	10000004 	b	26b8 <DemoDu_Draw+0x50>
    26a8:	8fbf0014 	lw	ra,20(sp)
    26ac:	0060f809 	jalr	v1
    26b0:	00000000 	nop
    26b4:	8fbf0014 	lw	ra,20(sp)
    26b8:	27bd0018 	addiu	sp,sp,24
    26bc:	03e00008 	jr	ra
    26c0:	00000000 	nop
	...
