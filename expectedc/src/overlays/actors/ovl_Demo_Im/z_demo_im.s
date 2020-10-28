
build/src/overlays/actors/ovl_Demo_Im/z_demo_im.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80984BE0>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0014 	sw	ra,20(sp)
       8:	848e025e 	lh	t6,606(a0)
       c:	00803025 	move	a2,a0
      10:	24c3025e 	addiu	v1,a2,606
      14:	15c00003 	bnez	t6,24 <func_80984BE0+0x24>
      18:	00001025 	move	v0,zero
      1c:	10000005 	b	34 <func_80984BE0+0x34>
      20:	2483025e 	addiu	v1,a0,606
      24:	846f0000 	lh	t7,0(v1)
      28:	25f8ffff 	addiu	t8,t7,-1
      2c:	a4780000 	sh	t8,0(v1)
      30:	84620000 	lh	v0,0(v1)
      34:	14400008 	bnez	v0,58 <func_80984BE0+0x58>
      38:	2404003c 	li	a0,60
      3c:	2405003c 	li	a1,60
      40:	afa3001c 	sw	v1,28(sp)
      44:	0c000000 	jal	0 <func_80984BE0>
      48:	afa60038 	sw	a2,56(sp)
      4c:	8fa3001c 	lw	v1,28(sp)
      50:	8fa60038 	lw	a2,56(sp)
      54:	a4620000 	sh	v0,0(v1)
      58:	84790000 	lh	t9,0(v1)
      5c:	24c2025c 	addiu	v0,a2,604
      60:	a4590000 	sh	t9,0(v0)
      64:	84480000 	lh	t0,0(v0)
      68:	29010003 	slti	at,t0,3
      6c:	54200003 	bnezl	at,7c <func_80984BE0+0x7c>
      70:	8fbf0014 	lw	ra,20(sp)
      74:	a4400000 	sh	zero,0(v0)
      78:	8fbf0014 	lw	ra,20(sp)
      7c:	27bd0038 	addiu	sp,sp,56
      80:	03e00008 	jr	ra
      84:	00000000 	nop

00000088 <func_80984C68>:
      88:	44802000 	mtc1	zero,$f4
      8c:	240e0007 	li	t6,7
      90:	ac8e0260 	sw	t6,608(a0)
      94:	ac800264 	sw	zero,612(a0)
      98:	ac80026c 	sw	zero,620(a0)
      9c:	ac800270 	sw	zero,624(a0)
      a0:	a08000c8 	sb	zero,200(a0)
      a4:	03e00008 	jr	ra
      a8:	e4840268 	swc1	$f4,616(a0)

000000ac <func_80984C8C>:
      ac:	27bdffe8 	addiu	sp,sp,-24
      b0:	afbf0014 	sw	ra,20(sp)
      b4:	90ae1d6c 	lbu	t6,7532(a1)
      b8:	3c0f0000 	lui	t7,0x0
      bc:	3c190000 	lui	t9,0x0
      c0:	15c0000d 	bnez	t6,f8 <func_80984C8C+0x4c>
      c4:	00000000 	nop
      c8:	8def0000 	lw	t7,0(t7)
      cc:	51e00011 	beqzl	t7,114 <func_80984C8C+0x68>
      d0:	8fbf0014 	lw	ra,20(sp)
      d4:	8498001c 	lh	t8,28(a0)
      d8:	24010002 	li	at,2
      dc:	17010003 	bne	t8,at,ec <func_80984C8C+0x40>
      e0:	00000000 	nop
      e4:	0c000000 	jal	0 <func_80984BE0>
      e8:	00000000 	nop
      ec:	3c010000 	lui	at,0x0
      f0:	10000007 	b	110 <func_80984C8C+0x64>
      f4:	ac200000 	sw	zero,0(at)
      f8:	8f390000 	lw	t9,0(t9)
      fc:	24080001 	li	t0,1
     100:	3c010000 	lui	at,0x0
     104:	57200003 	bnezl	t9,114 <func_80984C8C+0x68>
     108:	8fbf0014 	lw	ra,20(sp)
     10c:	ac280000 	sw	t0,0(at)
     110:	8fbf0014 	lw	ra,20(sp)
     114:	27bd0018 	addiu	sp,sp,24
     118:	03e00008 	jr	ra
     11c:	00000000 	nop

00000120 <func_80984D00>:
     120:	27bdffe0 	addiu	sp,sp,-32
     124:	00803025 	move	a2,a0
     128:	afa50024 	sw	a1,36(sp)
     12c:	00a02025 	move	a0,a1
     130:	afbf0014 	sw	ra,20(sp)
     134:	24c50284 	addiu	a1,a2,644
     138:	afa50018 	sw	a1,24(sp)
     13c:	0c000000 	jal	0 <func_80984BE0>
     140:	afa60020 	sw	a2,32(sp)
     144:	3c070000 	lui	a3,0x0
     148:	8fa50018 	lw	a1,24(sp)
     14c:	8fa60020 	lw	a2,32(sp)
     150:	24e70010 	addiu	a3,a3,16
     154:	0c000000 	jal	0 <func_80984BE0>
     158:	8fa40024 	lw	a0,36(sp)
     15c:	8fbf0014 	lw	ra,20(sp)
     160:	27bd0020 	addiu	sp,sp,32
     164:	03e00008 	jr	ra
     168:	00000000 	nop

0000016c <func_80984D4C>:
     16c:	27bdffe8 	addiu	sp,sp,-24
     170:	00803025 	move	a2,a0
     174:	afbf0014 	sw	ra,20(sp)
     178:	00a02025 	move	a0,a1
     17c:	0c000000 	jal	0 <func_80984BE0>
     180:	24c50284 	addiu	a1,a2,644
     184:	8fbf0014 	lw	ra,20(sp)
     188:	27bd0018 	addiu	sp,sp,24
     18c:	03e00008 	jr	ra
     190:	00000000 	nop

00000194 <func_80984D74>:
     194:	27bdffd0 	addiu	sp,sp,-48
     198:	afbf0014 	sw	ra,20(sp)
     19c:	afa50034 	sw	a1,52(sp)
     1a0:	24860284 	addiu	a2,a0,644
     1a4:	00c02825 	move	a1,a2
     1a8:	0c000000 	jal	0 <func_80984BE0>
     1ac:	afa60018 	sw	a2,24(sp)
     1b0:	8fa40034 	lw	a0,52(sp)
     1b4:	3c010001 	lui	at,0x1
     1b8:	34211e60 	ori	at,at,0x1e60
     1bc:	8fa60018 	lw	a2,24(sp)
     1c0:	0c000000 	jal	0 <func_80984BE0>
     1c4:	00812821 	addu	a1,a0,at
     1c8:	8fbf0014 	lw	ra,20(sp)
     1cc:	27bd0030 	addiu	sp,sp,48
     1d0:	03e00008 	jr	ra
     1d4:	00000000 	nop

000001d8 <func_80984DB8>:
     1d8:	27bdffc8 	addiu	sp,sp,-56
     1dc:	afa40038 	sw	a0,56(sp)
     1e0:	afbf001c 	sw	ra,28(sp)
     1e4:	248402dc 	addiu	a0,a0,732
     1e8:	240e0064 	li	t6,100
     1ec:	afae0010 	sw	t6,16(sp)
     1f0:	afa40024 	sw	a0,36(sp)
     1f4:	00002825 	move	a1,zero
     1f8:	24060014 	li	a2,20
     1fc:	0c000000 	jal	0 <func_80984BE0>
     200:	24071838 	li	a3,6200
     204:	8fa40024 	lw	a0,36(sp)
     208:	240f0064 	li	t7,100
     20c:	afaf0010 	sw	t7,16(sp)
     210:	00002825 	move	a1,zero
     214:	24060014 	li	a2,20
     218:	24071838 	li	a3,6200
     21c:	0c000000 	jal	0 <func_80984BE0>
     220:	24840002 	addiu	a0,a0,2
     224:	8fa40038 	lw	a0,56(sp)
     228:	24180064 	li	t8,100
     22c:	afb80010 	sw	t8,16(sp)
     230:	248402e2 	addiu	a0,a0,738
     234:	afa40024 	sw	a0,36(sp)
     238:	00002825 	move	a1,zero
     23c:	24060014 	li	a2,20
     240:	0c000000 	jal	0 <func_80984BE0>
     244:	24071838 	li	a3,6200
     248:	8fa40024 	lw	a0,36(sp)
     24c:	24190064 	li	t9,100
     250:	afb90010 	sw	t9,16(sp)
     254:	00002825 	move	a1,zero
     258:	24060014 	li	a2,20
     25c:	24071838 	li	a3,6200
     260:	0c000000 	jal	0 <func_80984BE0>
     264:	24840002 	addiu	a0,a0,2
     268:	8fbf001c 	lw	ra,28(sp)
     26c:	27bd0038 	addiu	sp,sp,56
     270:	03e00008 	jr	ra
     274:	00000000 	nop

00000278 <func_80984E58>:
     278:	27bdffe8 	addiu	sp,sp,-24
     27c:	afbf0014 	sw	ra,20(sp)
     280:	8ca21c44 	lw	v0,7236(a1)
     284:	3c080000 	lui	t0,0x0
     288:	25080000 	addiu	t0,t0,0
     28c:	8c4f0024 	lw	t7,36(v0)
     290:	3c014080 	lui	at,0x4080
     294:	44814000 	mtc1	at,$f8
     298:	ac8f02ec 	sw	t7,748(a0)
     29c:	8c4e0028 	lw	t6,40(v0)
     2a0:	848a00b6 	lh	t2,182(a0)
     2a4:	8489008a 	lh	t1,138(a0)
     2a8:	ac8e02f0 	sw	t6,752(a0)
     2ac:	8c4f002c 	lw	t7,44(v0)
     2b0:	012a1823 	subu	v1,t1,t2
     2b4:	00031c00 	sll	v1,v1,0x10
     2b8:	ac8f02f4 	sw	t7,756(a0)
     2bc:	8d180000 	lw	t8,0(t0)
     2c0:	00031c03 	sra	v1,v1,0x10
     2c4:	00031023 	negu	v0,v1
     2c8:	87191474 	lh	t9,5236(t8)
     2cc:	24070001 	li	a3,1
     2d0:	44992000 	mtc1	t9,$f4
     2d4:	00000000 	nop
     2d8:	468021a0 	cvt.s.w	$f6,$f4
     2dc:	46083280 	add.s	$f10,$f6,$f8
     2e0:	04600003 	bltz	v1,2f0 <func_80984E58+0x78>
     2e4:	e48a02e8 	swc1	$f10,744(a0)
     2e8:	10000001 	b	2f0 <func_80984E58+0x78>
     2ec:	00601025 	move	v0,v1
     2f0:	284118e3 	slti	at,v0,6371
     2f4:	10200003 	beqz	at,304 <func_80984E58+0x8c>
     2f8:	00000000 	nop
     2fc:	10000001 	b	304 <func_80984E58+0x8c>
     300:	24070002 	li	a3,2
     304:	8d0b0000 	lw	t3,0(t0)
     308:	248502d4 	addiu	a1,a0,724
     30c:	85661476 	lh	a2,5238(t3)
     310:	24c6000c 	addiu	a2,a2,12
     314:	00063400 	sll	a2,a2,0x10
     318:	0c000000 	jal	0 <func_80984BE0>
     31c:	00063403 	sra	a2,a2,0x10
     320:	8fbf0014 	lw	ra,20(sp)
     324:	27bd0018 	addiu	sp,sp,24
     328:	03e00008 	jr	ra
     32c:	00000000 	nop

00000330 <func_80984F10>:
     330:	27bdffe8 	addiu	sp,sp,-24
     334:	afbf0014 	sw	ra,20(sp)
     338:	afa5001c 	sw	a1,28(sp)
     33c:	8ca21c44 	lw	v0,7236(a1)
     340:	3c030000 	lui	v1,0x0
     344:	24630000 	addiu	v1,v1,0
     348:	8c580024 	lw	t8,36(v0)
     34c:	3c014140 	lui	at,0x4140
     350:	44814000 	mtc1	at,$f8
     354:	ac9802ec 	sw	t8,748(a0)
     358:	8c4f0028 	lw	t7,40(v0)
     35c:	248502d4 	addiu	a1,a0,724
     360:	24070002 	li	a3,2
     364:	ac8f02f0 	sw	t7,752(a0)
     368:	8c58002c 	lw	t8,44(v0)
     36c:	ac9802f4 	sw	t8,756(a0)
     370:	8c790000 	lw	t9,0(v1)
     374:	87281474 	lh	t0,5236(t9)
     378:	44882000 	mtc1	t0,$f4
     37c:	00000000 	nop
     380:	468021a0 	cvt.s.w	$f6,$f4
     384:	46083280 	add.s	$f10,$f6,$f8
     388:	e48a02e8 	swc1	$f10,744(a0)
     38c:	8c690000 	lw	t1,0(v1)
     390:	85261476 	lh	a2,5238(t1)
     394:	24c6000c 	addiu	a2,a2,12
     398:	00063400 	sll	a2,a2,0x10
     39c:	0c000000 	jal	0 <func_80984BE0>
     3a0:	00063403 	sra	a2,a2,0x10
     3a4:	8fbf0014 	lw	ra,20(sp)
     3a8:	27bd0018 	addiu	sp,sp,24
     3ac:	03e00008 	jr	ra
     3b0:	00000000 	nop

000003b4 <func_80984F94>:
     3b4:	27bdffe8 	addiu	sp,sp,-24
     3b8:	afbf0014 	sw	ra,20(sp)
     3bc:	afa5001c 	sw	a1,28(sp)
     3c0:	8ca21c44 	lw	v0,7236(a1)
     3c4:	3c030000 	lui	v1,0x0
     3c8:	24630000 	addiu	v1,v1,0
     3cc:	8c580024 	lw	t8,36(v0)
     3d0:	3c014080 	lui	at,0x4080
     3d4:	44814000 	mtc1	at,$f8
     3d8:	ac9802ec 	sw	t8,748(a0)
     3dc:	8c4f0028 	lw	t7,40(v0)
     3e0:	248502d4 	addiu	a1,a0,724
     3e4:	24070004 	li	a3,4
     3e8:	ac8f02f0 	sw	t7,752(a0)
     3ec:	8c58002c 	lw	t8,44(v0)
     3f0:	ac9802f4 	sw	t8,756(a0)
     3f4:	8c790000 	lw	t9,0(v1)
     3f8:	87281474 	lh	t0,5236(t9)
     3fc:	44882000 	mtc1	t0,$f4
     400:	00000000 	nop
     404:	468021a0 	cvt.s.w	$f6,$f4
     408:	46083280 	add.s	$f10,$f6,$f8
     40c:	e48a02e8 	swc1	$f10,744(a0)
     410:	8c690000 	lw	t1,0(v1)
     414:	85261476 	lh	a2,5238(t1)
     418:	24c6000c 	addiu	a2,a2,12
     41c:	00063400 	sll	a2,a2,0x10
     420:	0c000000 	jal	0 <func_80984BE0>
     424:	00063403 	sra	a2,a2,0x10
     428:	8fbf0014 	lw	ra,20(sp)
     42c:	27bd0018 	addiu	sp,sp,24
     430:	03e00008 	jr	ra
     434:	00000000 	nop

00000438 <func_80985018>:
     438:	27bdffe0 	addiu	sp,sp,-32
     43c:	3c0141f0 	lui	at,0x41f0
     440:	44810000 	mtc1	at,$f0
     444:	afa50024 	sw	a1,36(sp)
     448:	00802825 	move	a1,a0
     44c:	afbf001c 	sw	ra,28(sp)
     450:	afa40020 	sw	a0,32(sp)
     454:	240e0005 	li	t6,5
     458:	44070000 	mfc1	a3,$f0
     45c:	afae0014 	sw	t6,20(sp)
     460:	8fa40024 	lw	a0,36(sp)
     464:	3c064296 	lui	a2,0x4296
     468:	0c000000 	jal	0 <func_80984BE0>
     46c:	e7a00010 	swc1	$f0,16(sp)
     470:	8fbf001c 	lw	ra,28(sp)
     474:	27bd0020 	addiu	sp,sp,32
     478:	03e00008 	jr	ra
     47c:	00000000 	nop

00000480 <func_80985060>:
     480:	27bdffe8 	addiu	sp,sp,-24
     484:	afbf0014 	sw	ra,20(sp)
     488:	0c000000 	jal	0 <func_80984BE0>
     48c:	2484014c 	addiu	a0,a0,332
     490:	8fbf0014 	lw	ra,20(sp)
     494:	27bd0018 	addiu	sp,sp,24
     498:	03e00008 	jr	ra
     49c:	00000000 	nop

000004a0 <func_80985080>:
     4a0:	908e1d6c 	lbu	t6,7532(a0)
     4a4:	00001025 	move	v0,zero
     4a8:	15c00003 	bnez	t6,4b8 <func_80985080+0x18>
     4ac:	00000000 	nop
     4b0:	03e00008 	jr	ra
     4b4:	24020001 	li	v0,1
     4b8:	03e00008 	jr	ra
     4bc:	00000000 	nop

000004c0 <func_809850A0>:
     4c0:	27bdffd8 	addiu	sp,sp,-40
     4c4:	afbf0014 	sw	ra,20(sp)
     4c8:	afa40028 	sw	a0,40(sp)
     4cc:	afa5002c 	sw	a1,44(sp)
     4d0:	0c000000 	jal	0 <func_80984BE0>
     4d4:	afa0001c 	sw	zero,28(sp)
     4d8:	14400006 	bnez	v0,4f4 <func_809850A0+0x34>
     4dc:	8fa3001c 	lw	v1,28(sp)
     4e0:	8faf002c 	lw	t7,44(sp)
     4e4:	8fae0028 	lw	t6,40(sp)
     4e8:	000fc080 	sll	t8,t7,0x2
     4ec:	01d8c821 	addu	t9,t6,t8
     4f0:	8f231d8c 	lw	v1,7564(t9)
     4f4:	8fbf0014 	lw	ra,20(sp)
     4f8:	27bd0028 	addiu	sp,sp,40
     4fc:	00601025 	move	v0,v1
     500:	03e00008 	jr	ra
     504:	00000000 	nop

00000508 <func_809850E8>:
     508:	27bdffe8 	addiu	sp,sp,-24
     50c:	afa40018 	sw	a0,24(sp)
     510:	afbf0014 	sw	ra,20(sp)
     514:	afa5001c 	sw	a1,28(sp)
     518:	00a02025 	move	a0,a1
     51c:	afa60020 	sw	a2,32(sp)
     520:	0c000000 	jal	0 <func_80984BE0>
     524:	00e02825 	move	a1,a3
     528:	10400007 	beqz	v0,548 <func_809850E8+0x40>
     52c:	8fbf0014 	lw	ra,20(sp)
     530:	97ae0022 	lhu	t6,34(sp)
     534:	944f0000 	lhu	t7,0(v0)
     538:	55cf0004 	bnel	t6,t7,54c <func_809850E8+0x44>
     53c:	00001025 	move	v0,zero
     540:	10000002 	b	54c <func_809850E8+0x44>
     544:	24020001 	li	v0,1
     548:	00001025 	move	v0,zero
     54c:	03e00008 	jr	ra
     550:	27bd0018 	addiu	sp,sp,24

00000554 <func_80985134>:
     554:	27bdffe8 	addiu	sp,sp,-24
     558:	afa40018 	sw	a0,24(sp)
     55c:	afbf0014 	sw	ra,20(sp)
     560:	afa5001c 	sw	a1,28(sp)
     564:	00a02025 	move	a0,a1
     568:	afa60020 	sw	a2,32(sp)
     56c:	0c000000 	jal	0 <func_80984BE0>
     570:	00e02825 	move	a1,a3
     574:	10400007 	beqz	v0,594 <func_80985134+0x40>
     578:	8fbf0014 	lw	ra,20(sp)
     57c:	97ae0022 	lhu	t6,34(sp)
     580:	944f0000 	lhu	t7,0(v0)
     584:	51cf0004 	beql	t6,t7,598 <func_80985134+0x44>
     588:	00001025 	move	v0,zero
     58c:	10000002 	b	598 <func_80985134+0x44>
     590:	24020001 	li	v0,1
     594:	00001025 	move	v0,zero
     598:	03e00008 	jr	ra
     59c:	27bd0018 	addiu	sp,sp,24

000005a0 <func_80985180>:
     5a0:	27bdffe8 	addiu	sp,sp,-24
     5a4:	00803825 	move	a3,a0
     5a8:	afbf0014 	sw	ra,20(sp)
     5ac:	afa5001c 	sw	a1,28(sp)
     5b0:	00a02025 	move	a0,a1
     5b4:	00c02825 	move	a1,a2
     5b8:	0c000000 	jal	0 <func_80984BE0>
     5bc:	afa70018 	sw	a3,24(sp)
     5c0:	10400013 	beqz	v0,610 <func_80985180+0x70>
     5c4:	8fa70018 	lw	a3,24(sp)
     5c8:	8c4e000c 	lw	t6,12(v0)
     5cc:	448e2000 	mtc1	t6,$f4
     5d0:	00000000 	nop
     5d4:	468021a0 	cvt.s.w	$f6,$f4
     5d8:	e4e60024 	swc1	$f6,36(a3)
     5dc:	8c4f0010 	lw	t7,16(v0)
     5e0:	448f4000 	mtc1	t7,$f8
     5e4:	00000000 	nop
     5e8:	468042a0 	cvt.s.w	$f10,$f8
     5ec:	e4ea0028 	swc1	$f10,40(a3)
     5f0:	8c580014 	lw	t8,20(v0)
     5f4:	44988000 	mtc1	t8,$f16
     5f8:	00000000 	nop
     5fc:	468084a0 	cvt.s.w	$f18,$f16
     600:	e4f2002c 	swc1	$f18,44(a3)
     604:	84430008 	lh	v1,8(v0)
     608:	a4e300b6 	sh	v1,182(a3)
     60c:	a4e30032 	sh	v1,50(a3)
     610:	8fbf0014 	lw	ra,20(sp)
     614:	27bd0018 	addiu	sp,sp,24
     618:	03e00008 	jr	ra
     61c:	00000000 	nop

00000620 <func_80985200>:
     620:	27bdffe8 	addiu	sp,sp,-24
     624:	00803825 	move	a3,a0
     628:	afbf0014 	sw	ra,20(sp)
     62c:	afa5001c 	sw	a1,28(sp)
     630:	00a02025 	move	a0,a1
     634:	00c02825 	move	a1,a2
     638:	0c000000 	jal	0 <func_80984BE0>
     63c:	afa70018 	sw	a3,24(sp)
     640:	10400013 	beqz	v0,690 <func_80985200+0x70>
     644:	8fa70018 	lw	a3,24(sp)
     648:	8c4e000c 	lw	t6,12(v0)
     64c:	448e2000 	mtc1	t6,$f4
     650:	00000000 	nop
     654:	468021a0 	cvt.s.w	$f6,$f4
     658:	e4e60024 	swc1	$f6,36(a3)
     65c:	8c4f0010 	lw	t7,16(v0)
     660:	448f4000 	mtc1	t7,$f8
     664:	00000000 	nop
     668:	468042a0 	cvt.s.w	$f10,$f8
     66c:	e4ea0028 	swc1	$f10,40(a3)
     670:	8c580014 	lw	t8,20(v0)
     674:	44988000 	mtc1	t8,$f16
     678:	00000000 	nop
     67c:	468084a0 	cvt.s.w	$f18,$f16
     680:	e4f2002c 	swc1	$f18,44(a3)
     684:	84430008 	lh	v1,8(v0)
     688:	a4e300b6 	sh	v1,182(a3)
     68c:	a4e30032 	sh	v1,50(a3)
     690:	8fbf0014 	lw	ra,20(sp)
     694:	27bd0018 	addiu	sp,sp,24
     698:	03e00008 	jr	ra
     69c:	00000000 	nop

000006a0 <func_80985280>:
     6a0:	27bdffd8 	addiu	sp,sp,-40
     6a4:	afbf0024 	sw	ra,36(sp)
     6a8:	afa40028 	sw	a0,40(sp)
     6ac:	afa5002c 	sw	a1,44(sp)
     6b0:	afa60030 	sw	a2,48(sp)
     6b4:	afa70034 	sw	a3,52(sp)
     6b8:	0c000000 	jal	0 <func_80984BE0>
     6bc:	00a02025 	move	a0,a1
     6c0:	8fae0038 	lw	t6,56(sp)
     6c4:	8fa40028 	lw	a0,40(sp)
     6c8:	8fa5002c 	lw	a1,44(sp)
     6cc:	15c00007 	bnez	t6,6ec <func_80985280+0x4c>
     6d0:	2484014c 	addiu	a0,a0,332
     6d4:	44822000 	mtc1	v0,$f4
     6d8:	3c013f80 	lui	at,0x3f80
     6dc:	44800000 	mtc1	zero,$f0
     6e0:	44816000 	mtc1	at,$f12
     6e4:	10000006 	b	700 <func_80985280+0x60>
     6e8:	468020a0 	cvt.s.w	$f2,$f4
     6ec:	44823000 	mtc1	v0,$f6
     6f0:	3c01bf80 	lui	at,0xbf80
     6f4:	44801000 	mtc1	zero,$f2
     6f8:	44816000 	mtc1	at,$f12
     6fc:	46803020 	cvt.s.w	$f0,$f6
     700:	93af0033 	lbu	t7,51(sp)
     704:	c7a80034 	lwc1	$f8,52(sp)
     708:	44066000 	mfc1	a2,$f12
     70c:	44070000 	mfc1	a3,$f0
     710:	e7a20010 	swc1	$f2,16(sp)
     714:	afaf0014 	sw	t7,20(sp)
     718:	0c000000 	jal	0 <func_80984BE0>
     71c:	e7a80018 	swc1	$f8,24(sp)
     720:	8fbf0024 	lw	ra,36(sp)
     724:	27bd0028 	addiu	sp,sp,40
     728:	03e00008 	jr	ra
     72c:	00000000 	nop

00000730 <func_80985310>:
     730:	27bdffe0 	addiu	sp,sp,-32
     734:	afa50024 	sw	a1,36(sp)
     738:	afbf001c 	sw	ra,28(sp)
     73c:	3c050000 	lui	a1,0x0
     740:	afa40020 	sw	a0,32(sp)
     744:	24a50000 	addiu	a1,a1,0
     748:	afa00010 	sw	zero,16(sp)
     74c:	00003025 	move	a2,zero
     750:	0c000000 	jal	0 <func_80984BE0>
     754:	24070000 	li	a3,0
     758:	3c010000 	lui	at,0x0
     75c:	c42401c8 	lwc1	$f4,456(at)
     760:	8fae0020 	lw	t6,32(sp)
     764:	e5c400bc 	swc1	$f4,188(t6)
     768:	8fbf001c 	lw	ra,28(sp)
     76c:	27bd0020 	addiu	sp,sp,32
     770:	03e00008 	jr	ra
     774:	00000000 	nop

00000778 <func_80985358>:
     778:	27bdffc8 	addiu	sp,sp,-56
     77c:	afbf0034 	sw	ra,52(sp)
     780:	afa40038 	sw	a0,56(sp)
     784:	c4800024 	lwc1	$f0,36(a0)
     788:	c4820028 	lwc1	$f2,40(a0)
     78c:	c48c002c 	lwc1	$f12,44(a0)
     790:	00a03025 	move	a2,a1
     794:	00802825 	move	a1,a0
     798:	240e0002 	li	t6,2
     79c:	afae0028 	sw	t6,40(sp)
     7a0:	24c41c24 	addiu	a0,a2,7204
     7a4:	afa00024 	sw	zero,36(sp)
     7a8:	afa00020 	sw	zero,32(sp)
     7ac:	afa0001c 	sw	zero,28(sp)
     7b0:	2407005d 	li	a3,93
     7b4:	e7a00010 	swc1	$f0,16(sp)
     7b8:	e7a20014 	swc1	$f2,20(sp)
     7bc:	0c000000 	jal	0 <func_80984BE0>
     7c0:	e7ac0018 	swc1	$f12,24(sp)
     7c4:	8fbf0034 	lw	ra,52(sp)
     7c8:	27bd0038 	addiu	sp,sp,56
     7cc:	03e00008 	jr	ra
     7d0:	00000000 	nop

000007d4 <func_809853B4>:
     7d4:	27bdffc8 	addiu	sp,sp,-56
     7d8:	afbf0034 	sw	ra,52(sp)
     7dc:	afa40038 	sw	a0,56(sp)
     7e0:	00a03025 	move	a2,a1
     7e4:	8cc21c44 	lw	v0,7236(a2)
     7e8:	3c0142a0 	lui	at,0x42a0
     7ec:	44813000 	mtc1	at,$f6
     7f0:	c4440028 	lwc1	$f4,40(v0)
     7f4:	c4400024 	lwc1	$f0,36(v0)
     7f8:	c44c002c 	lwc1	$f12,44(v0)
     7fc:	46062080 	add.s	$f2,$f4,$f6
     800:	00802825 	move	a1,a0
     804:	240e000d 	li	t6,13
     808:	afae0028 	sw	t6,40(sp)
     80c:	24c41c24 	addiu	a0,a2,7204
     810:	e7a20014 	swc1	$f2,20(sp)
     814:	afa6003c 	sw	a2,60(sp)
     818:	afa00024 	sw	zero,36(sp)
     81c:	afa00020 	sw	zero,32(sp)
     820:	afa0001c 	sw	zero,28(sp)
     824:	2407008b 	li	a3,139
     828:	e7a00010 	swc1	$f0,16(sp)
     82c:	0c000000 	jal	0 <func_80984BE0>
     830:	e7ac0018 	swc1	$f12,24(sp)
     834:	8fa4003c 	lw	a0,60(sp)
     838:	0c000000 	jal	0 <func_80984BE0>
     83c:	2405006a 	li	a1,106
     840:	8fbf0034 	lw	ra,52(sp)
     844:	27bd0038 	addiu	sp,sp,56
     848:	03e00008 	jr	ra
     84c:	00000000 	nop

00000850 <func_80985430>:
     850:	afa50004 	sw	a1,4(sp)
     854:	3c010000 	lui	at,0x0
     858:	c42601cc 	lwc1	$f6,460(at)
     85c:	c48400bc 	lwc1	$f4,188(a0)
     860:	46062200 	add.s	$f8,$f4,$f6
     864:	03e00008 	jr	ra
     868:	e48800bc 	swc1	$f8,188(a0)

0000086c <func_8098544C>:
     86c:	3c020000 	lui	v0,0x0
     870:	24420000 	addiu	v0,v0,0
     874:	904e1415 	lbu	t6,5141(v0)
     878:	27bdffd8 	addiu	sp,sp,-40
     87c:	24010004 	li	at,4
     880:	afbf0014 	sw	ra,20(sp)
     884:	15c10019 	bne	t6,at,8ec <func_8098544C+0x80>
     888:	afa40028 	sw	a0,40(sp)
     88c:	8c4f1360 	lw	t7,4960(v0)
     890:	3c080000 	lui	t0,0x0
     894:	24180001 	li	t8,1
     898:	29e10004 	slti	at,t7,4
     89c:	10200013 	beqz	at,8ec <func_8098544C+0x80>
     8a0:	25080000 	addiu	t0,t0,0
     8a4:	8ca31c44 	lw	v1,7236(a1)
     8a8:	ac980260 	sw	t8,608(a0)
     8ac:	aca81d68 	sw	t0,7528(a1)
     8b0:	24090002 	li	t1,2
     8b4:	00a02025 	move	a0,a1
     8b8:	a0491414 	sb	t1,5140(v0)
     8bc:	2405006a 	li	a1,106
     8c0:	0c000000 	jal	0 <func_80984BE0>
     8c4:	afa3001c 	sw	v1,28(sp)
     8c8:	8faa0028 	lw	t2,40(sp)
     8cc:	34018000 	li	at,0x8000
     8d0:	8fa3001c 	lw	v1,28(sp)
     8d4:	85420032 	lh	v0,50(t2)
     8d8:	00411021 	addu	v0,v0,at
     8dc:	00021400 	sll	v0,v0,0x10
     8e0:	00021403 	sra	v0,v0,0x10
     8e4:	a46200b6 	sh	v0,182(v1)
     8e8:	a4620032 	sh	v0,50(v1)
     8ec:	8fbf0014 	lw	ra,20(sp)
     8f0:	27bd0028 	addiu	sp,sp,40
     8f4:	03e00008 	jr	ra
     8f8:	00000000 	nop

000008fc <func_809854DC>:
     8fc:	27bdffd8 	addiu	sp,sp,-40
     900:	afbf0024 	sw	ra,36(sp)
     904:	afa40028 	sw	a0,40(sp)
     908:	90ae1d6c 	lbu	t6,7532(a1)
     90c:	51c00020 	beqzl	t6,990 <func_809854DC+0x94>
     910:	8fbf0024 	lw	ra,36(sp)
     914:	8ca21da0 	lw	v0,7584(a1)
     918:	5040001d 	beqzl	v0,990 <func_809854DC+0x94>
     91c:	8fbf0024 	lw	ra,36(sp)
     920:	944f0000 	lhu	t7,0(v0)
     924:	24010002 	li	at,2
     928:	3c040000 	lui	a0,0x0
     92c:	15e10017 	bne	t7,at,98c <func_809854DC+0x90>
     930:	24840000 	addiu	a0,a0,0
     934:	0c000000 	jal	0 <func_80984BE0>
     938:	afa5002c 	sw	a1,44(sp)
     93c:	44822000 	mtc1	v0,$f4
     940:	44800000 	mtc1	zero,$f0
     944:	8fa40028 	lw	a0,40(sp)
     948:	468021a0 	cvt.s.w	$f6,$f4
     94c:	3c050000 	lui	a1,0x0
     950:	44070000 	mfc1	a3,$f0
     954:	24a50000 	addiu	a1,a1,0
     958:	3c063f80 	lui	a2,0x3f80
     95c:	afa00014 	sw	zero,20(sp)
     960:	e7a60010 	swc1	$f6,16(sp)
     964:	2484014c 	addiu	a0,a0,332
     968:	0c000000 	jal	0 <func_80984BE0>
     96c:	e7a00018 	swc1	$f0,24(sp)
     970:	8fa40028 	lw	a0,40(sp)
     974:	24180002 	li	t8,2
     978:	24190001 	li	t9,1
     97c:	ac980260 	sw	t8,608(a0)
     980:	ac990264 	sw	t9,612(a0)
     984:	0c000000 	jal	0 <func_80984BE0>
     988:	8fa5002c 	lw	a1,44(sp)
     98c:	8fbf0024 	lw	ra,36(sp)
     990:	27bd0028 	addiu	sp,sp,40
     994:	03e00008 	jr	ra
     998:	00000000 	nop

0000099c <func_8098557C>:
     99c:	44800000 	mtc1	zero,$f0
     9a0:	c48400bc 	lwc1	$f4,188(a0)
     9a4:	240e0003 	li	t6,3
     9a8:	4604003e 	c.le.s	$f0,$f4
     9ac:	00000000 	nop
     9b0:	45000003 	bc1f	9c0 <func_8098557C+0x24>
     9b4:	00000000 	nop
     9b8:	ac8e0260 	sw	t6,608(a0)
     9bc:	e48000bc 	swc1	$f0,188(a0)
     9c0:	03e00008 	jr	ra
     9c4:	00000000 	nop

000009c8 <func_809855A8>:
     9c8:	27bdffd8 	addiu	sp,sp,-40
     9cc:	afbf0024 	sw	ra,36(sp)
     9d0:	afa40028 	sw	a0,40(sp)
     9d4:	90ae1d6c 	lbu	t6,7532(a1)
     9d8:	51c0001e 	beqzl	t6,a54 <func_809855A8+0x8c>
     9dc:	8fbf0024 	lw	ra,36(sp)
     9e0:	8ca21da0 	lw	v0,7584(a1)
     9e4:	5040001b 	beqzl	v0,a54 <func_809855A8+0x8c>
     9e8:	8fbf0024 	lw	ra,36(sp)
     9ec:	944f0000 	lhu	t7,0(v0)
     9f0:	24010003 	li	at,3
     9f4:	3c040000 	lui	a0,0x0
     9f8:	55e10016 	bnel	t7,at,a54 <func_809855A8+0x8c>
     9fc:	8fbf0024 	lw	ra,36(sp)
     a00:	0c000000 	jal	0 <func_80984BE0>
     a04:	24840000 	addiu	a0,a0,0
     a08:	44822000 	mtc1	v0,$f4
     a0c:	3c014080 	lui	at,0x4080
     a10:	44814000 	mtc1	at,$f8
     a14:	468021a0 	cvt.s.w	$f6,$f4
     a18:	8fa40028 	lw	a0,40(sp)
     a1c:	3c050000 	lui	a1,0x0
     a20:	24180002 	li	t8,2
     a24:	afb80014 	sw	t8,20(sp)
     a28:	24a50000 	addiu	a1,a1,0
     a2c:	e7a60010 	swc1	$f6,16(sp)
     a30:	3c063f80 	lui	a2,0x3f80
     a34:	24070000 	li	a3,0
     a38:	e7a80018 	swc1	$f8,24(sp)
     a3c:	0c000000 	jal	0 <func_80984BE0>
     a40:	2484014c 	addiu	a0,a0,332
     a44:	8fa80028 	lw	t0,40(sp)
     a48:	24190004 	li	t9,4
     a4c:	ad190260 	sw	t9,608(t0)
     a50:	8fbf0024 	lw	ra,36(sp)
     a54:	27bd0028 	addiu	sp,sp,40
     a58:	03e00008 	jr	ra
     a5c:	00000000 	nop

00000a60 <func_80985640>:
     a60:	27bdffd8 	addiu	sp,sp,-40
     a64:	afbf0024 	sw	ra,36(sp)
     a68:	10a00014 	beqz	a1,abc <func_80985640+0x5c>
     a6c:	afa40028 	sw	a0,40(sp)
     a70:	3c040000 	lui	a0,0x0
     a74:	0c000000 	jal	0 <func_80984BE0>
     a78:	24840000 	addiu	a0,a0,0
     a7c:	44822000 	mtc1	v0,$f4
     a80:	44800000 	mtc1	zero,$f0
     a84:	8fa40028 	lw	a0,40(sp)
     a88:	468021a0 	cvt.s.w	$f6,$f4
     a8c:	3c050000 	lui	a1,0x0
     a90:	44070000 	mfc1	a3,$f0
     a94:	24a50000 	addiu	a1,a1,0
     a98:	3c063f80 	lui	a2,0x3f80
     a9c:	afa00014 	sw	zero,20(sp)
     aa0:	e7a60010 	swc1	$f6,16(sp)
     aa4:	2484014c 	addiu	a0,a0,332
     aa8:	0c000000 	jal	0 <func_80984BE0>
     aac:	e7a00018 	swc1	$f0,24(sp)
     ab0:	8faf0028 	lw	t7,40(sp)
     ab4:	240e0005 	li	t6,5
     ab8:	adee0260 	sw	t6,608(t7)
     abc:	8fbf0024 	lw	ra,36(sp)
     ac0:	27bd0028 	addiu	sp,sp,40
     ac4:	03e00008 	jr	ra
     ac8:	00000000 	nop

00000acc <func_809856AC>:
     acc:	27bdffe8 	addiu	sp,sp,-24
     ad0:	afbf0014 	sw	ra,20(sp)
     ad4:	90ae1d6c 	lbu	t6,7532(a1)
     ad8:	51c0000c 	beqzl	t6,b0c <func_809856AC+0x40>
     adc:	8fbf0014 	lw	ra,20(sp)
     ae0:	8ca21da4 	lw	v0,7588(a1)
     ae4:	50400009 	beqzl	v0,b0c <func_809856AC+0x40>
     ae8:	8fbf0014 	lw	ra,20(sp)
     aec:	944f0000 	lhu	t7,0(v0)
     af0:	24010002 	li	at,2
     af4:	24180006 	li	t8,6
     af8:	55e10004 	bnel	t7,at,b0c <func_809856AC+0x40>
     afc:	8fbf0014 	lw	ra,20(sp)
     b00:	0c000000 	jal	0 <func_80984BE0>
     b04:	ac980260 	sw	t8,608(a0)
     b08:	8fbf0014 	lw	ra,20(sp)
     b0c:	27bd0018 	addiu	sp,sp,24
     b10:	03e00008 	jr	ra
     b14:	00000000 	nop

00000b18 <func_809856F8>:
     b18:	27bdffe8 	addiu	sp,sp,-24
     b1c:	afbf0014 	sw	ra,20(sp)
     b20:	0c000000 	jal	0 <func_80984BE0>
     b24:	00000000 	nop
     b28:	8fbf0014 	lw	ra,20(sp)
     b2c:	27bd0018 	addiu	sp,sp,24
     b30:	03e00008 	jr	ra
     b34:	00000000 	nop

00000b38 <func_80985718>:
     b38:	27bdffe8 	addiu	sp,sp,-24
     b3c:	afbf0014 	sw	ra,20(sp)
     b40:	0c000000 	jal	0 <func_80984BE0>
     b44:	00000000 	nop
     b48:	8fbf0014 	lw	ra,20(sp)
     b4c:	27bd0018 	addiu	sp,sp,24
     b50:	03e00008 	jr	ra
     b54:	00000000 	nop

00000b58 <func_80985738>:
     b58:	27bdffe8 	addiu	sp,sp,-24
     b5c:	afbf0014 	sw	ra,20(sp)
     b60:	0c000000 	jal	0 <func_80984BE0>
     b64:	afa40018 	sw	a0,24(sp)
     b68:	0c000000 	jal	0 <func_80984BE0>
     b6c:	8fa40018 	lw	a0,24(sp)
     b70:	0c000000 	jal	0 <func_80984BE0>
     b74:	8fa40018 	lw	a0,24(sp)
     b78:	0c000000 	jal	0 <func_80984BE0>
     b7c:	8fa40018 	lw	a0,24(sp)
     b80:	8fbf0014 	lw	ra,20(sp)
     b84:	27bd0018 	addiu	sp,sp,24
     b88:	03e00008 	jr	ra
     b8c:	00000000 	nop

00000b90 <func_80985770>:
     b90:	27bdffe8 	addiu	sp,sp,-24
     b94:	afbf0014 	sw	ra,20(sp)
     b98:	afa40018 	sw	a0,24(sp)
     b9c:	0c000000 	jal	0 <func_80984BE0>
     ba0:	afa5001c 	sw	a1,28(sp)
     ba4:	0c000000 	jal	0 <func_80984BE0>
     ba8:	8fa40018 	lw	a0,24(sp)
     bac:	0c000000 	jal	0 <func_80984BE0>
     bb0:	8fa40018 	lw	a0,24(sp)
     bb4:	8fa40018 	lw	a0,24(sp)
     bb8:	0c000000 	jal	0 <func_80984BE0>
     bbc:	8fa5001c 	lw	a1,28(sp)
     bc0:	8fbf0014 	lw	ra,20(sp)
     bc4:	27bd0018 	addiu	sp,sp,24
     bc8:	03e00008 	jr	ra
     bcc:	00000000 	nop

00000bd0 <func_809857B0>:
     bd0:	27bdffe0 	addiu	sp,sp,-32
     bd4:	afbf0014 	sw	ra,20(sp)
     bd8:	0c000000 	jal	0 <func_80984BE0>
     bdc:	afa40020 	sw	a0,32(sp)
     be0:	0c000000 	jal	0 <func_80984BE0>
     be4:	8fa40020 	lw	a0,32(sp)
     be8:	afa2001c 	sw	v0,28(sp)
     bec:	0c000000 	jal	0 <func_80984BE0>
     bf0:	8fa40020 	lw	a0,32(sp)
     bf4:	8fa40020 	lw	a0,32(sp)
     bf8:	0c000000 	jal	0 <func_80984BE0>
     bfc:	8fa5001c 	lw	a1,28(sp)
     c00:	8fbf0014 	lw	ra,20(sp)
     c04:	27bd0020 	addiu	sp,sp,32
     c08:	03e00008 	jr	ra
     c0c:	00000000 	nop

00000c10 <func_809857F0>:
     c10:	27bdffe8 	addiu	sp,sp,-24
     c14:	afbf0014 	sw	ra,20(sp)
     c18:	afa40018 	sw	a0,24(sp)
     c1c:	0c000000 	jal	0 <func_80984BE0>
     c20:	afa5001c 	sw	a1,28(sp)
     c24:	0c000000 	jal	0 <func_80984BE0>
     c28:	8fa40018 	lw	a0,24(sp)
     c2c:	0c000000 	jal	0 <func_80984BE0>
     c30:	8fa40018 	lw	a0,24(sp)
     c34:	8fa40018 	lw	a0,24(sp)
     c38:	0c000000 	jal	0 <func_80984BE0>
     c3c:	8fa5001c 	lw	a1,28(sp)
     c40:	8fbf0014 	lw	ra,20(sp)
     c44:	27bd0018 	addiu	sp,sp,24
     c48:	03e00008 	jr	ra
     c4c:	00000000 	nop

00000c50 <func_80985830>:
     c50:	27bdffe8 	addiu	sp,sp,-24
     c54:	afbf0014 	sw	ra,20(sp)
     c58:	0c000000 	jal	0 <func_80984BE0>
     c5c:	afa40018 	sw	a0,24(sp)
     c60:	0c000000 	jal	0 <func_80984BE0>
     c64:	8fa40018 	lw	a0,24(sp)
     c68:	0c000000 	jal	0 <func_80984BE0>
     c6c:	8fa40018 	lw	a0,24(sp)
     c70:	8fbf0014 	lw	ra,20(sp)
     c74:	27bd0018 	addiu	sp,sp,24
     c78:	03e00008 	jr	ra
     c7c:	00000000 	nop

00000c80 <func_80985860>:
     c80:	27bdffe0 	addiu	sp,sp,-32
     c84:	afa50024 	sw	a1,36(sp)
     c88:	afbf001c 	sw	ra,28(sp)
     c8c:	3c050000 	lui	a1,0x0
     c90:	24a50000 	addiu	a1,a1,0
     c94:	afa00010 	sw	zero,16(sp)
     c98:	afa40020 	sw	a0,32(sp)
     c9c:	00003025 	move	a2,zero
     ca0:	0c000000 	jal	0 <func_80984BE0>
     ca4:	24070000 	li	a3,0
     ca8:	8fa40020 	lw	a0,32(sp)
     cac:	240e0007 	li	t6,7
     cb0:	ac8e0260 	sw	t6,608(a0)
     cb4:	a08000c8 	sb	zero,200(a0)
     cb8:	8fbf001c 	lw	ra,28(sp)
     cbc:	27bd0020 	addiu	sp,sp,32
     cc0:	03e00008 	jr	ra
     cc4:	00000000 	nop

00000cc8 <func_809858A8>:
     cc8:	27bdffe8 	addiu	sp,sp,-24
     ccc:	afbf0014 	sw	ra,20(sp)
     cd0:	0c000000 	jal	0 <func_80984BE0>
     cd4:	24044834 	li	a0,18484
     cd8:	8fbf0014 	lw	ra,20(sp)
     cdc:	27bd0018 	addiu	sp,sp,24
     ce0:	03e00008 	jr	ra
     ce4:	00000000 	nop

00000ce8 <func_809858C8>:
     ce8:	27bdffc8 	addiu	sp,sp,-56
     cec:	00a03025 	move	a2,a1
     cf0:	00802825 	move	a1,a0
     cf4:	afbf0034 	sw	ra,52(sp)
     cf8:	afa40038 	sw	a0,56(sp)
     cfc:	c4a40024 	lwc1	$f4,36(a1)
     d00:	3c0e0000 	lui	t6,0x0
     d04:	8dce0000 	lw	t6,0(t6)
     d08:	e7a40010 	swc1	$f4,16(sp)
     d0c:	3c0141c0 	lui	at,0x41c0
     d10:	85cf1476 	lh	t7,5238(t6)
     d14:	44815000 	mtc1	at,$f10
     d18:	c4b20028 	lwc1	$f18,40(a1)
     d1c:	448f3000 	mtc1	t7,$f6
     d20:	24180006 	li	t8,6
     d24:	24c41c24 	addiu	a0,a2,7204
     d28:	46803220 	cvt.s.w	$f8,$f6
     d2c:	240700f5 	li	a3,245
     d30:	460a4400 	add.s	$f16,$f8,$f10
     d34:	46128100 	add.s	$f4,$f16,$f18
     d38:	e7a40014 	swc1	$f4,20(sp)
     d3c:	c4a6002c 	lwc1	$f6,44(a1)
     d40:	afb80028 	sw	t8,40(sp)
     d44:	afa00024 	sw	zero,36(sp)
     d48:	afa00020 	sw	zero,32(sp)
     d4c:	afa0001c 	sw	zero,28(sp)
     d50:	0c000000 	jal	0 <func_80984BE0>
     d54:	e7a60018 	swc1	$f6,24(sp)
     d58:	8fbf0034 	lw	ra,52(sp)
     d5c:	27bd0038 	addiu	sp,sp,56
     d60:	03e00008 	jr	ra
     d64:	00000000 	nop

00000d68 <func_80985948>:
     d68:	27bdffd0 	addiu	sp,sp,-48
     d6c:	afbf002c 	sw	ra,44(sp)
     d70:	afb00028 	sw	s0,40(sp)
     d74:	00808025 	move	s0,a0
     d78:	24060004 	li	a2,4
     d7c:	0c000000 	jal	0 <func_80984BE0>
     d80:	24070005 	li	a3,5
     d84:	10400019 	beqz	v0,dec <func_80985948+0x84>
     d88:	3c040000 	lui	a0,0x0
     d8c:	0c000000 	jal	0 <func_80984BE0>
     d90:	24840000 	addiu	a0,a0,0
     d94:	44822000 	mtc1	v0,$f4
     d98:	44800000 	mtc1	zero,$f0
     d9c:	3c050000 	lui	a1,0x0
     da0:	468021a0 	cvt.s.w	$f6,$f4
     da4:	240e0002 	li	t6,2
     da8:	44070000 	mfc1	a3,$f0
     dac:	afae0014 	sw	t6,20(sp)
     db0:	24a50000 	addiu	a1,a1,0
     db4:	2604014c 	addiu	a0,s0,332
     db8:	e7a60010 	swc1	$f6,16(sp)
     dbc:	3c063f80 	lui	a2,0x3f80
     dc0:	0c000000 	jal	0 <func_80984BE0>
     dc4:	e7a00018 	swc1	$f0,24(sp)
     dc8:	44804000 	mtc1	zero,$f8
     dcc:	240f0008 	li	t7,8
     dd0:	24180002 	li	t8,2
     dd4:	ae0f0260 	sw	t7,608(s0)
     dd8:	ae180264 	sw	t8,612(s0)
     ddc:	ae00026c 	sw	zero,620(s0)
     de0:	a20000c8 	sb	zero,200(s0)
     de4:	0c000000 	jal	0 <func_80984BE0>
     de8:	e6080268 	swc1	$f8,616(s0)
     dec:	8fbf002c 	lw	ra,44(sp)
     df0:	8fb00028 	lw	s0,40(sp)
     df4:	27bd0030 	addiu	sp,sp,48
     df8:	03e00008 	jr	ra
     dfc:	00000000 	nop

00000e00 <func_809859E0>:
     e00:	27bdffe8 	addiu	sp,sp,-24
     e04:	afbf0014 	sw	ra,20(sp)
     e08:	afa40018 	sw	a0,24(sp)
     e0c:	24060004 	li	a2,4
     e10:	0c000000 	jal	0 <func_80984BE0>
     e14:	24070005 	li	a3,5
     e18:	10400025 	beqz	v0,eb0 <func_809859E0+0xb0>
     e1c:	8fa40018 	lw	a0,24(sp)
     e20:	3c014120 	lui	at,0x4120
     e24:	44811000 	mtc1	at,$f2
     e28:	3c013f80 	lui	at,0x3f80
     e2c:	24820268 	addiu	v0,a0,616
     e30:	c4440000 	lwc1	$f4,0(v0)
     e34:	44813000 	mtc1	at,$f6
     e38:	3c050000 	lui	a1,0x0
     e3c:	24a50000 	addiu	a1,a1,0
     e40:	46062200 	add.s	$f8,$f4,$f6
     e44:	24180009 	li	t8,9
     e48:	24190001 	li	t9,1
     e4c:	e4480000 	swc1	$f8,0(v0)
     e50:	8cae0000 	lw	t6,0(a1)
     e54:	c4400000 	lwc1	$f0,0(v0)
     e58:	85cf145e 	lh	t7,5214(t6)
     e5c:	448f5000 	mtc1	t7,$f10
     e60:	00000000 	nop
     e64:	46805420 	cvt.s.w	$f16,$f10
     e68:	46028480 	add.s	$f18,$f16,$f2
     e6c:	4600903e 	c.le.s	$f18,$f0
     e70:	00000000 	nop
     e74:	45000020 	bc1f	ef8 <func_809859E0+0xf8>
     e78:	00000000 	nop
     e7c:	ac980260 	sw	t8,608(a0)
     e80:	ac990264 	sw	t9,612(a0)
     e84:	8ca80000 	lw	t0,0(a1)
     e88:	240300ff 	li	v1,255
     e8c:	8509145e 	lh	t1,5214(t0)
     e90:	44892000 	mtc1	t1,$f4
     e94:	00000000 	nop
     e98:	468021a0 	cvt.s.w	$f6,$f4
     e9c:	46023200 	add.s	$f8,$f6,$f2
     ea0:	e4480000 	swc1	$f8,0(v0)
     ea4:	ac83026c 	sw	v1,620(a0)
     ea8:	10000026 	b	f44 <func_809859E0+0x144>
     eac:	a08300c8 	sb	v1,200(a0)
     eb0:	24820268 	addiu	v0,a0,616
     eb4:	3c013f80 	lui	at,0x3f80
     eb8:	44818000 	mtc1	at,$f16
     ebc:	c44a0000 	lwc1	$f10,0(v0)
     ec0:	44801000 	mtc1	zero,$f2
     ec4:	46105481 	sub.s	$f18,$f10,$f16
     ec8:	e4520000 	swc1	$f18,0(v0)
     ecc:	c4400000 	lwc1	$f0,0(v0)
     ed0:	4602003e 	c.le.s	$f0,$f2
     ed4:	00000000 	nop
     ed8:	45000007 	bc1f	ef8 <func_809859E0+0xf8>
     edc:	240a0007 	li	t2,7
     ee0:	ac8a0260 	sw	t2,608(a0)
     ee4:	ac800264 	sw	zero,612(a0)
     ee8:	e4420000 	swc1	$f2,0(v0)
     eec:	ac80026c 	sw	zero,620(a0)
     ef0:	10000014 	b	f44 <func_809859E0+0x144>
     ef4:	a08000c8 	sb	zero,200(a0)
     ef8:	3c050000 	lui	a1,0x0
     efc:	24a50000 	addiu	a1,a1,0
     f00:	8cab0000 	lw	t3,0(a1)
     f04:	3c014120 	lui	at,0x4120
     f08:	44811000 	mtc1	at,$f2
     f0c:	856c145e 	lh	t4,5214(t3)
     f10:	3c01437f 	lui	at,0x437f
     f14:	44818000 	mtc1	at,$f16
     f18:	448c2000 	mtc1	t4,$f4
     f1c:	00000000 	nop
     f20:	468021a0 	cvt.s.w	$f6,$f4
     f24:	46023200 	add.s	$f8,$f6,$f2
     f28:	46080283 	div.s	$f10,$f0,$f8
     f2c:	46105482 	mul.s	$f18,$f10,$f16
     f30:	4600910d 	trunc.w.s	$f4,$f18
     f34:	44022000 	mfc1	v0,$f4
     f38:	00000000 	nop
     f3c:	ac82026c 	sw	v0,620(a0)
     f40:	a08200c8 	sb	v0,200(a0)
     f44:	8fbf0014 	lw	ra,20(sp)
     f48:	27bd0018 	addiu	sp,sp,24
     f4c:	03e00008 	jr	ra
     f50:	00000000 	nop

00000f54 <func_80985B34>:
     f54:	27bdffd0 	addiu	sp,sp,-48
     f58:	afbf002c 	sw	ra,44(sp)
     f5c:	afb00028 	sw	s0,40(sp)
     f60:	00808025 	move	s0,a0
     f64:	afa50034 	sw	a1,52(sp)
     f68:	24060004 	li	a2,4
     f6c:	0c000000 	jal	0 <func_80984BE0>
     f70:	24070005 	li	a3,5
     f74:	10400029 	beqz	v0,101c <func_80985B34+0xc8>
     f78:	3c040000 	lui	a0,0x0
     f7c:	0c000000 	jal	0 <func_80984BE0>
     f80:	24840000 	addiu	a0,a0,0
     f84:	44822000 	mtc1	v0,$f4
     f88:	3c01c100 	lui	at,0xc100
     f8c:	44814000 	mtc1	at,$f8
     f90:	468021a0 	cvt.s.w	$f6,$f4
     f94:	3c050000 	lui	a1,0x0
     f98:	240e0002 	li	t6,2
     f9c:	afae0014 	sw	t6,20(sp)
     fa0:	24a50000 	addiu	a1,a1,0
     fa4:	2604014c 	addiu	a0,s0,332
     fa8:	e7a60010 	swc1	$f6,16(sp)
     fac:	3c063f80 	lui	a2,0x3f80
     fb0:	24070000 	li	a3,0
     fb4:	0c000000 	jal	0 <func_80984BE0>
     fb8:	e7a80018 	swc1	$f8,24(sp)
     fbc:	240f0008 	li	t7,8
     fc0:	24180002 	li	t8,2
     fc4:	ae0f0260 	sw	t7,608(s0)
     fc8:	ae180264 	sw	t8,612(s0)
     fcc:	3c190000 	lui	t9,0x0
     fd0:	8f390000 	lw	t9,0(t9)
     fd4:	3c014120 	lui	at,0x4120
     fd8:	44819000 	mtc1	at,$f18
     fdc:	8728145e 	lh	t0,5214(t9)
     fe0:	8e0a0270 	lw	t2,624(s0)
     fe4:	240900ff 	li	t1,255
     fe8:	44885000 	mtc1	t0,$f10
     fec:	ae09026c 	sw	t1,620(s0)
     ff0:	02002025 	move	a0,s0
     ff4:	46805420 	cvt.s.w	$f16,$f10
     ff8:	46128100 	add.s	$f4,$f16,$f18
     ffc:	15400005 	bnez	t2,1014 <func_80985B34+0xc0>
    1000:	e6040268 	swc1	$f4,616(s0)
    1004:	0c000000 	jal	0 <func_80984BE0>
    1008:	8fa50034 	lw	a1,52(sp)
    100c:	240b0001 	li	t3,1
    1010:	ae0b0270 	sw	t3,624(s0)
    1014:	240c00ff 	li	t4,255
    1018:	a20c00c8 	sb	t4,200(s0)
    101c:	8fbf002c 	lw	ra,44(sp)
    1020:	8fb00028 	lw	s0,40(sp)
    1024:	27bd0030 	addiu	sp,sp,48
    1028:	03e00008 	jr	ra
    102c:	00000000 	nop

00001030 <func_80985C10>:
    1030:	27bdffe8 	addiu	sp,sp,-24
    1034:	afbf0014 	sw	ra,20(sp)
    1038:	afa40018 	sw	a0,24(sp)
    103c:	0c000000 	jal	0 <func_80984BE0>
    1040:	afa5001c 	sw	a1,28(sp)
    1044:	8fa40018 	lw	a0,24(sp)
    1048:	0c000000 	jal	0 <func_80984BE0>
    104c:	8fa5001c 	lw	a1,28(sp)
    1050:	8fbf0014 	lw	ra,20(sp)
    1054:	27bd0018 	addiu	sp,sp,24
    1058:	03e00008 	jr	ra
    105c:	00000000 	nop

00001060 <func_80985C40>:
    1060:	27bdffe0 	addiu	sp,sp,-32
    1064:	afbf001c 	sw	ra,28(sp)
    1068:	afb00018 	sw	s0,24(sp)
    106c:	00808025 	move	s0,a0
    1070:	0c000000 	jal	0 <func_80984BE0>
    1074:	afa50024 	sw	a1,36(sp)
    1078:	0c000000 	jal	0 <func_80984BE0>
    107c:	02002025 	move	a0,s0
    1080:	0c000000 	jal	0 <func_80984BE0>
    1084:	02002025 	move	a0,s0
    1088:	02002025 	move	a0,s0
    108c:	0c000000 	jal	0 <func_80984BE0>
    1090:	8fa50024 	lw	a1,36(sp)
    1094:	02002025 	move	a0,s0
    1098:	0c000000 	jal	0 <func_80984BE0>
    109c:	8fa50024 	lw	a1,36(sp)
    10a0:	8fbf001c 	lw	ra,28(sp)
    10a4:	8fb00018 	lw	s0,24(sp)
    10a8:	27bd0020 	addiu	sp,sp,32
    10ac:	03e00008 	jr	ra
    10b0:	00000000 	nop

000010b4 <func_80985C94>:
    10b4:	27bdffe0 	addiu	sp,sp,-32
    10b8:	afbf001c 	sw	ra,28(sp)
    10bc:	afb00018 	sw	s0,24(sp)
    10c0:	00808025 	move	s0,a0
    10c4:	0c000000 	jal	0 <func_80984BE0>
    10c8:	afa50024 	sw	a1,36(sp)
    10cc:	0c000000 	jal	0 <func_80984BE0>
    10d0:	02002025 	move	a0,s0
    10d4:	0c000000 	jal	0 <func_80984BE0>
    10d8:	02002025 	move	a0,s0
    10dc:	02002025 	move	a0,s0
    10e0:	0c000000 	jal	0 <func_80984BE0>
    10e4:	8fa50024 	lw	a1,36(sp)
    10e8:	02002025 	move	a0,s0
    10ec:	0c000000 	jal	0 <func_80984BE0>
    10f0:	8fa50024 	lw	a1,36(sp)
    10f4:	8fbf001c 	lw	ra,28(sp)
    10f8:	8fb00018 	lw	s0,24(sp)
    10fc:	27bd0020 	addiu	sp,sp,32
    1100:	03e00008 	jr	ra
    1104:	00000000 	nop

00001108 <func_80985CE8>:
    1108:	27bdff88 	addiu	sp,sp,-120
    110c:	afbf002c 	sw	ra,44(sp)
    1110:	afb00028 	sw	s0,40(sp)
    1114:	afa40078 	sw	a0,120(sp)
    1118:	afa5007c 	sw	a1,124(sp)
    111c:	8482025c 	lh	v0,604(a0)
    1120:	3c180000 	lui	t8,0x0
    1124:	3c060000 	lui	a2,0x0
    1128:	00027880 	sll	t7,v0,0x2
    112c:	030fc021 	addu	t8,t8,t7
    1130:	8f180000 	lw	t8,0(t8)
    1134:	24c60000 	addiu	a2,a2,0
    1138:	27a40050 	addiu	a0,sp,80
    113c:	afb80068 	sw	t8,104(sp)
    1140:	8ca50000 	lw	a1,0(a1)
    1144:	24070119 	li	a3,281
    1148:	0c000000 	jal	0 <func_80984BE0>
    114c:	00a08025 	move	s0,a1
    1150:	8fa9007c 	lw	t1,124(sp)
    1154:	0c000000 	jal	0 <func_80984BE0>
    1158:	8d240000 	lw	a0,0(t1)
    115c:	8fa70068 	lw	a3,104(sp)
    1160:	8e0202d0 	lw	v0,720(s0)
    1164:	3c0bdb06 	lui	t3,0xdb06
    1168:	00076100 	sll	t4,a3,0x4
    116c:	000c6f02 	srl	t5,t4,0x1c
    1170:	3c0f0000 	lui	t7,0x0
    1174:	244a0008 	addiu	t2,v0,8
    1178:	ae0a02d0 	sw	t2,720(s0)
    117c:	25ef0000 	addiu	t7,t7,0
    1180:	000d7080 	sll	t6,t5,0x2
    1184:	356b0020 	ori	t3,t3,0x20
    1188:	01cf2021 	addu	a0,t6,t7
    118c:	ac4b0000 	sw	t3,0(v0)
    1190:	8c980000 	lw	t8,0(a0)
    1194:	3c0100ff 	lui	at,0xff
    1198:	3421ffff 	ori	at,at,0xffff
    119c:	00e12824 	and	a1,a3,at
    11a0:	3c068000 	lui	a2,0x8000
    11a4:	0305c821 	addu	t9,t8,a1
    11a8:	03264821 	addu	t1,t9,a2
    11ac:	ac490004 	sw	t1,4(v0)
    11b0:	8e0202d0 	lw	v0,720(s0)
    11b4:	3c0bdb06 	lui	t3,0xdb06
    11b8:	356b0024 	ori	t3,t3,0x24
    11bc:	244a0008 	addiu	t2,v0,8
    11c0:	ae0a02d0 	sw	t2,720(s0)
    11c4:	ac4b0000 	sw	t3,0(v0)
    11c8:	8c8c0000 	lw	t4,0(a0)
    11cc:	3c18fb00 	lui	t8,0xfb00
    11d0:	3c0bdb06 	lui	t3,0xdb06
    11d4:	01856821 	addu	t5,t4,a1
    11d8:	01a67021 	addu	t6,t5,a2
    11dc:	ac4e0004 	sw	t6,4(v0)
    11e0:	8e0202d0 	lw	v0,720(s0)
    11e4:	8fa80078 	lw	t0,120(sp)
    11e8:	3c0c0000 	lui	t4,0x0
    11ec:	244f0008 	addiu	t7,v0,8
    11f0:	ae0f02d0 	sw	t7,720(s0)
    11f4:	ac580000 	sw	t8,0(v0)
    11f8:	8d19026c 	lw	t9,620(t0)
    11fc:	258c0000 	addiu	t4,t4,0
    1200:	356b0030 	ori	t3,t3,0x30
    1204:	332900ff 	andi	t1,t9,0xff
    1208:	ac490004 	sw	t1,4(v0)
    120c:	8e0202d0 	lw	v0,720(s0)
    1210:	244a0008 	addiu	t2,v0,8
    1214:	ae0a02d0 	sw	t2,720(s0)
    1218:	ac4c0004 	sw	t4,4(v0)
    121c:	ac4b0000 	sw	t3,0(v0)
    1220:	2502014c 	addiu	v0,t0,332
    1224:	8c450004 	lw	a1,4(v0)
    1228:	8c460020 	lw	a2,32(v0)
    122c:	90470002 	lbu	a3,2(v0)
    1230:	afa00018 	sw	zero,24(sp)
    1234:	afa00014 	sw	zero,20(sp)
    1238:	afa00010 	sw	zero,16(sp)
    123c:	8e0d02d0 	lw	t5,720(s0)
    1240:	8fa4007c 	lw	a0,124(sp)
    1244:	0c000000 	jal	0 <func_80984BE0>
    1248:	afad001c 	sw	t5,28(sp)
    124c:	ae0202d0 	sw	v0,720(s0)
    1250:	8fae007c 	lw	t6,124(sp)
    1254:	3c060000 	lui	a2,0x0
    1258:	24c60024 	addiu	a2,a2,36
    125c:	27a40050 	addiu	a0,sp,80
    1260:	24070134 	li	a3,308
    1264:	0c000000 	jal	0 <func_80984BE0>
    1268:	8dc50000 	lw	a1,0(t6)
    126c:	8fbf002c 	lw	ra,44(sp)
    1270:	8fb00028 	lw	s0,40(sp)
    1274:	27bd0078 	addiu	sp,sp,120
    1278:	03e00008 	jr	ra
    127c:	00000000 	nop

00001280 <func_80985E60>:
    1280:	27bdffe0 	addiu	sp,sp,-32
    1284:	afa50024 	sw	a1,36(sp)
    1288:	afbf001c 	sw	ra,28(sp)
    128c:	3c050000 	lui	a1,0x0
    1290:	24a50000 	addiu	a1,a1,0
    1294:	afa00010 	sw	zero,16(sp)
    1298:	afa40020 	sw	a0,32(sp)
    129c:	00003025 	move	a2,zero
    12a0:	0c000000 	jal	0 <func_80984BE0>
    12a4:	24070000 	li	a3,0
    12a8:	8fa40020 	lw	a0,32(sp)
    12ac:	240e000a 	li	t6,10
    12b0:	240f0001 	li	t7,1
    12b4:	ac8e0260 	sw	t6,608(a0)
    12b8:	ac8f0280 	sw	t7,640(a0)
    12bc:	8fbf001c 	lw	ra,28(sp)
    12c0:	27bd0020 	addiu	sp,sp,32
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_80985EAC>:
    12cc:	27bdffe8 	addiu	sp,sp,-24
    12d0:	afbf0014 	sw	ra,20(sp)
    12d4:	94a21d74 	lhu	v0,7540(a1)
    12d8:	28410050 	slti	at,v0,80
    12dc:	14200007 	bnez	at,12fc <func_80985EAC+0x30>
    12e0:	284100f3 	slti	at,v0,243
    12e4:	10200005 	beqz	at,12fc <func_80985EAC+0x30>
    12e8:	00000000 	nop
    12ec:	0c000000 	jal	0 <func_80984BE0>
    12f0:	00000000 	nop
    12f4:	10000004 	b	1308 <func_80985EAC+0x3c>
    12f8:	8fbf0014 	lw	ra,20(sp)
    12fc:	0c000000 	jal	0 <func_80984BE0>
    1300:	00000000 	nop
    1304:	8fbf0014 	lw	ra,20(sp)
    1308:	27bd0018 	addiu	sp,sp,24
    130c:	03e00008 	jr	ra
    1310:	00000000 	nop

00001314 <func_80985EF4>:
    1314:	27bdffe8 	addiu	sp,sp,-24
    1318:	afa40018 	sw	a0,24(sp)
    131c:	afbf0014 	sw	ra,20(sp)
    1320:	3c040000 	lui	a0,0x0
    1324:	0c000000 	jal	0 <func_80984BE0>
    1328:	24840000 	addiu	a0,a0,0
    132c:	44822000 	mtc1	v0,$f4
    1330:	3c013f80 	lui	at,0x3f80
    1334:	44814000 	mtc1	at,$f8
    1338:	468021a0 	cvt.s.w	$f6,$f4
    133c:	8fa40018 	lw	a0,24(sp)
    1340:	2484014c 	addiu	a0,a0,332
    1344:	46083281 	sub.s	$f10,$f6,$f8
    1348:	44055000 	mfc1	a1,$f10
    134c:	0c000000 	jal	0 <func_80984BE0>
    1350:	00000000 	nop
    1354:	54400004 	bnezl	v0,1368 <func_80985EF4+0x54>
    1358:	8fbf0014 	lw	ra,20(sp)
    135c:	0c000000 	jal	0 <func_80984BE0>
    1360:	8fa40018 	lw	a0,24(sp)
    1364:	8fbf0014 	lw	ra,20(sp)
    1368:	27bd0018 	addiu	sp,sp,24
    136c:	03e00008 	jr	ra
    1370:	00000000 	nop

00001374 <func_80985F54>:
    1374:	240e000a 	li	t6,10
    1378:	ac8e0260 	sw	t6,608(a0)
    137c:	03e00008 	jr	ra
    1380:	ac800264 	sw	zero,612(a0)

00001384 <func_80985F64>:
    1384:	27bdffd8 	addiu	sp,sp,-40
    1388:	afa40028 	sw	a0,40(sp)
    138c:	afbf0024 	sw	ra,36(sp)
    1390:	3c040000 	lui	a0,0x0
    1394:	afa5002c 	sw	a1,44(sp)
    1398:	0c000000 	jal	0 <func_80984BE0>
    139c:	24840000 	addiu	a0,a0,0
    13a0:	44822000 	mtc1	v0,$f4
    13a4:	44800000 	mtc1	zero,$f0
    13a8:	8fa40028 	lw	a0,40(sp)
    13ac:	468021a0 	cvt.s.w	$f6,$f4
    13b0:	3c050000 	lui	a1,0x0
    13b4:	44070000 	mfc1	a3,$f0
    13b8:	24a50000 	addiu	a1,a1,0
    13bc:	3c063f80 	lui	a2,0x3f80
    13c0:	afa00014 	sw	zero,20(sp)
    13c4:	e7a60010 	swc1	$f6,16(sp)
    13c8:	2484014c 	addiu	a0,a0,332
    13cc:	0c000000 	jal	0 <func_80984BE0>
    13d0:	e7a00018 	swc1	$f0,24(sp)
    13d4:	8fa40028 	lw	a0,40(sp)
    13d8:	8fa5002c 	lw	a1,44(sp)
    13dc:	0c000000 	jal	0 <func_80984BE0>
    13e0:	24060005 	li	a2,5
    13e4:	8fa20028 	lw	v0,40(sp)
    13e8:	240e000b 	li	t6,11
    13ec:	240f0001 	li	t7,1
    13f0:	ac4e0260 	sw	t6,608(v0)
    13f4:	ac4f0264 	sw	t7,612(v0)
    13f8:	8fbf0024 	lw	ra,36(sp)
    13fc:	27bd0028 	addiu	sp,sp,40
    1400:	03e00008 	jr	ra
    1404:	00000000 	nop

00001408 <func_80985FE8>:
    1408:	27bdffd8 	addiu	sp,sp,-40
    140c:	afbf0024 	sw	ra,36(sp)
    1410:	10a00012 	beqz	a1,145c <func_80985FE8+0x54>
    1414:	afa40028 	sw	a0,40(sp)
    1418:	3c040000 	lui	a0,0x0
    141c:	0c000000 	jal	0 <func_80984BE0>
    1420:	24840000 	addiu	a0,a0,0
    1424:	44822000 	mtc1	v0,$f4
    1428:	3c01c100 	lui	at,0xc100
    142c:	44814000 	mtc1	at,$f8
    1430:	468021a0 	cvt.s.w	$f6,$f4
    1434:	8fa40028 	lw	a0,40(sp)
    1438:	3c050000 	lui	a1,0x0
    143c:	24a50000 	addiu	a1,a1,0
    1440:	3c063f80 	lui	a2,0x3f80
    1444:	24070000 	li	a3,0
    1448:	e7a60010 	swc1	$f6,16(sp)
    144c:	afa00014 	sw	zero,20(sp)
    1450:	e7a80018 	swc1	$f8,24(sp)
    1454:	0c000000 	jal	0 <func_80984BE0>
    1458:	2484014c 	addiu	a0,a0,332
    145c:	8fbf0024 	lw	ra,36(sp)
    1460:	27bd0028 	addiu	sp,sp,40
    1464:	03e00008 	jr	ra
    1468:	00000000 	nop

0000146c <func_8098604C>:
    146c:	27bdffd8 	addiu	sp,sp,-40
    1470:	afa40028 	sw	a0,40(sp)
    1474:	afbf0024 	sw	ra,36(sp)
    1478:	3c040000 	lui	a0,0x0
    147c:	0c000000 	jal	0 <func_80984BE0>
    1480:	24840000 	addiu	a0,a0,0
    1484:	44822000 	mtc1	v0,$f4
    1488:	3c01c100 	lui	at,0xc100
    148c:	8fa30028 	lw	v1,40(sp)
    1490:	468021a0 	cvt.s.w	$f6,$f4
    1494:	44814000 	mtc1	at,$f8
    1498:	3c050000 	lui	a1,0x0
    149c:	240e0002 	li	t6,2
    14a0:	afae0014 	sw	t6,20(sp)
    14a4:	24a50000 	addiu	a1,a1,0
    14a8:	e7a60010 	swc1	$f6,16(sp)
    14ac:	3c063f80 	lui	a2,0x3f80
    14b0:	24070000 	li	a3,0
    14b4:	2464014c 	addiu	a0,v1,332
    14b8:	0c000000 	jal	0 <func_80984BE0>
    14bc:	e7a80018 	swc1	$f8,24(sp)
    14c0:	8fa30028 	lw	v1,40(sp)
    14c4:	24020001 	li	v0,1
    14c8:	240f000c 	li	t7,12
    14cc:	ac6f0260 	sw	t7,608(v1)
    14d0:	ac620264 	sw	v0,612(v1)
    14d4:	ac6202d0 	sw	v0,720(v1)
    14d8:	8fbf0024 	lw	ra,36(sp)
    14dc:	27bd0028 	addiu	sp,sp,40
    14e0:	03e00008 	jr	ra
    14e4:	00000000 	nop

000014e8 <func_809860C8>:
    14e8:	240e000d 	li	t6,13
    14ec:	240f0001 	li	t7,1
    14f0:	ac8e0260 	sw	t6,608(a0)
    14f4:	03e00008 	jr	ra
    14f8:	ac8f0264 	sw	t7,612(a0)

000014fc <func_809860DC>:
    14fc:	27bdffd8 	addiu	sp,sp,-40
    1500:	afbf0024 	sw	ra,36(sp)
    1504:	10a00014 	beqz	a1,1558 <func_809860DC+0x5c>
    1508:	afa40028 	sw	a0,40(sp)
    150c:	3c040000 	lui	a0,0x0
    1510:	0c000000 	jal	0 <func_80984BE0>
    1514:	24840000 	addiu	a0,a0,0
    1518:	44822000 	mtc1	v0,$f4
    151c:	3c01c100 	lui	at,0xc100
    1520:	44814000 	mtc1	at,$f8
    1524:	468021a0 	cvt.s.w	$f6,$f4
    1528:	8fa40028 	lw	a0,40(sp)
    152c:	3c050000 	lui	a1,0x0
    1530:	24a50000 	addiu	a1,a1,0
    1534:	3c063f80 	lui	a2,0x3f80
    1538:	24070000 	li	a3,0
    153c:	e7a60010 	swc1	$f6,16(sp)
    1540:	afa00014 	sw	zero,20(sp)
    1544:	e7a80018 	swc1	$f8,24(sp)
    1548:	0c000000 	jal	0 <func_80984BE0>
    154c:	2484014c 	addiu	a0,a0,332
    1550:	8fae0028 	lw	t6,40(sp)
    1554:	adc002d0 	sw	zero,720(t6)
    1558:	8fbf0024 	lw	ra,36(sp)
    155c:	27bd0028 	addiu	sp,sp,40
    1560:	03e00008 	jr	ra
    1564:	00000000 	nop

00001568 <func_80986148>:
    1568:	27bdffd8 	addiu	sp,sp,-40
    156c:	afa40028 	sw	a0,40(sp)
    1570:	afbf0024 	sw	ra,36(sp)
    1574:	3c040000 	lui	a0,0x0
    1578:	0c000000 	jal	0 <func_80984BE0>
    157c:	24840000 	addiu	a0,a0,0
    1580:	44822000 	mtc1	v0,$f4
    1584:	3c01c100 	lui	at,0xc100
    1588:	44814000 	mtc1	at,$f8
    158c:	46802120 	cvt.s.w	$f4,$f4
    1590:	8fa40028 	lw	a0,40(sp)
    1594:	44803000 	mtc1	zero,$f6
    1598:	3c050000 	lui	a1,0x0
    159c:	240e0002 	li	t6,2
    15a0:	afae0014 	sw	t6,20(sp)
    15a4:	44072000 	mfc1	a3,$f4
    15a8:	24a50000 	addiu	a1,a1,0
    15ac:	3c06bf80 	lui	a2,0xbf80
    15b0:	e7a80018 	swc1	$f8,24(sp)
    15b4:	2484014c 	addiu	a0,a0,332
    15b8:	0c000000 	jal	0 <func_80984BE0>
    15bc:	e7a60010 	swc1	$f6,16(sp)
    15c0:	8fa20028 	lw	v0,40(sp)
    15c4:	240f000e 	li	t7,14
    15c8:	24180001 	li	t8,1
    15cc:	ac4f0260 	sw	t7,608(v0)
    15d0:	ac580264 	sw	t8,612(v0)
    15d4:	8fbf0024 	lw	ra,36(sp)
    15d8:	27bd0028 	addiu	sp,sp,40
    15dc:	03e00008 	jr	ra
    15e0:	00000000 	nop

000015e4 <func_809861C4>:
    15e4:	27bdffc8 	addiu	sp,sp,-56
    15e8:	afb00028 	sw	s0,40(sp)
    15ec:	00808025 	move	s0,a0
    15f0:	afbf002c 	sw	ra,44(sp)
    15f4:	00a02025 	move	a0,a1
    15f8:	0c000000 	jal	0 <func_80984BE0>
    15fc:	24050005 	li	a1,5
    1600:	5040002a 	beqzl	v0,16ac <func_809861C4+0xc8>
    1604:	8fbf002c 	lw	ra,44(sp)
    1608:	94480000 	lhu	t0,0(v0)
    160c:	8e030274 	lw	v1,628(s0)
    1610:	24010007 	li	at,7
    1614:	51030025 	beql	t0,v1,16ac <func_809861C4+0xc8>
    1618:	8fbf002c 	lw	ra,44(sp)
    161c:	11010009 	beq	t0,at,1644 <func_809861C4+0x60>
    1620:	3c040000 	lui	a0,0x0
    1624:	24010009 	li	at,9
    1628:	1501001a 	bne	t0,at,1694 <func_809861C4+0xb0>
    162c:	3c040000 	lui	a0,0x0
    1630:	02002025 	move	a0,s0
    1634:	0c000000 	jal	0 <func_80984BE0>
    1638:	afa80030 	sw	t0,48(sp)
    163c:	10000019 	b	16a4 <func_809861C4+0xc0>
    1640:	8fa80030 	lw	t0,48(sp)
    1644:	24840000 	addiu	a0,a0,0
    1648:	0c000000 	jal	0 <func_80984BE0>
    164c:	afa80030 	sw	t0,48(sp)
    1650:	44822000 	mtc1	v0,$f4
    1654:	3c01c100 	lui	at,0xc100
    1658:	44814000 	mtc1	at,$f8
    165c:	468021a0 	cvt.s.w	$f6,$f4
    1660:	3c050000 	lui	a1,0x0
    1664:	24a50000 	addiu	a1,a1,0
    1668:	2604014c 	addiu	a0,s0,332
    166c:	3c063f80 	lui	a2,0x3f80
    1670:	24070000 	li	a3,0
    1674:	e7a60010 	swc1	$f6,16(sp)
    1678:	afa00014 	sw	zero,20(sp)
    167c:	0c000000 	jal	0 <func_80984BE0>
    1680:	e7a80018 	swc1	$f8,24(sp)
    1684:	8fa80030 	lw	t0,48(sp)
    1688:	240e000c 	li	t6,12
    168c:	10000005 	b	16a4 <func_809861C4+0xc0>
    1690:	ae0e0260 	sw	t6,608(s0)
    1694:	24840048 	addiu	a0,a0,72
    1698:	0c000000 	jal	0 <func_80984BE0>
    169c:	afa80030 	sw	t0,48(sp)
    16a0:	8fa80030 	lw	t0,48(sp)
    16a4:	ae080274 	sw	t0,628(s0)
    16a8:	8fbf002c 	lw	ra,44(sp)
    16ac:	8fb00028 	lw	s0,40(sp)
    16b0:	27bd0038 	addiu	sp,sp,56
    16b4:	03e00008 	jr	ra
    16b8:	00000000 	nop

000016bc <func_8098629C>:
    16bc:	27bdffe8 	addiu	sp,sp,-24
    16c0:	afbf0014 	sw	ra,20(sp)
    16c4:	00803025 	move	a2,a0
    16c8:	afa60018 	sw	a2,24(sp)
    16cc:	0c000000 	jal	0 <func_80984BE0>
    16d0:	00a02025 	move	a0,a1
    16d4:	10400006 	beqz	v0,16f0 <func_8098629C+0x34>
    16d8:	8fa60018 	lw	a2,24(sp)
    16dc:	24020001 	li	v0,1
    16e0:	240e0015 	li	t6,21
    16e4:	acce0260 	sw	t6,608(a2)
    16e8:	acc20264 	sw	v0,612(a2)
    16ec:	acc20280 	sw	v0,640(a2)
    16f0:	8fbf0014 	lw	ra,20(sp)
    16f4:	27bd0018 	addiu	sp,sp,24
    16f8:	03e00008 	jr	ra
    16fc:	00000000 	nop

00001700 <func_809862E0>:
    1700:	27bdffd8 	addiu	sp,sp,-40
    1704:	afb00018 	sw	s0,24(sp)
    1708:	00808025 	move	s0,a0
    170c:	afbf001c 	sw	ra,28(sp)
    1710:	afa5002c 	sw	a1,44(sp)
    1714:	00a02025 	move	a0,a1
    1718:	0c000000 	jal	0 <func_80984BE0>
    171c:	24050005 	li	a1,5
    1720:	5040002a 	beqzl	v0,17cc <func_809862E0+0xcc>
    1724:	8fbf001c 	lw	ra,28(sp)
    1728:	944e0000 	lhu	t6,0(v0)
    172c:	afae0020 	sw	t6,32(sp)
    1730:	8e030274 	lw	v1,628(s0)
    1734:	25d8ffff 	addiu	t8,t6,-1
    1738:	2f010009 	sltiu	at,t8,9
    173c:	51c30023 	beql	t6,v1,17cc <func_809862E0+0xcc>
    1740:	8fbf001c 	lw	ra,28(sp)
    1744:	1020001b 	beqz	at,17b4 <func_809862E0+0xb4>
    1748:	0018c080 	sll	t8,t8,0x2
    174c:	3c010000 	lui	at,0x0
    1750:	00380821 	addu	at,at,t8
    1754:	8c3801d0 	lw	t8,464(at)
    1758:	03000008 	jr	t8
    175c:	00000000 	nop
    1760:	0c000000 	jal	0 <func_80984BE0>
    1764:	02002025 	move	a0,s0
    1768:	10000016 	b	17c4 <func_809862E0+0xc4>
    176c:	8fb90020 	lw	t9,32(sp)
    1770:	02002025 	move	a0,s0
    1774:	0c000000 	jal	0 <func_80984BE0>
    1778:	8fa5002c 	lw	a1,44(sp)
    177c:	10000011 	b	17c4 <func_809862E0+0xc4>
    1780:	8fb90020 	lw	t9,32(sp)
    1784:	0c000000 	jal	0 <func_80984BE0>
    1788:	02002025 	move	a0,s0
    178c:	1000000d 	b	17c4 <func_809862E0+0xc4>
    1790:	8fb90020 	lw	t9,32(sp)
    1794:	0c000000 	jal	0 <func_80984BE0>
    1798:	02002025 	move	a0,s0
    179c:	10000009 	b	17c4 <func_809862E0+0xc4>
    17a0:	8fb90020 	lw	t9,32(sp)
    17a4:	0c000000 	jal	0 <func_80984BE0>
    17a8:	02002025 	move	a0,s0
    17ac:	10000005 	b	17c4 <func_809862E0+0xc4>
    17b0:	8fb90020 	lw	t9,32(sp)
    17b4:	3c040000 	lui	a0,0x0
    17b8:	0c000000 	jal	0 <func_80984BE0>
    17bc:	24840084 	addiu	a0,a0,132
    17c0:	8fb90020 	lw	t9,32(sp)
    17c4:	ae190274 	sw	t9,628(s0)
    17c8:	8fbf001c 	lw	ra,28(sp)
    17cc:	8fb00018 	lw	s0,24(sp)
    17d0:	27bd0028 	addiu	sp,sp,40
    17d4:	03e00008 	jr	ra
    17d8:	00000000 	nop

000017dc <func_809863BC>:
    17dc:	27bdffe8 	addiu	sp,sp,-24
    17e0:	afbf0014 	sw	ra,20(sp)
    17e4:	0c000000 	jal	0 <func_80984BE0>
    17e8:	00000000 	nop
    17ec:	8fbf0014 	lw	ra,20(sp)
    17f0:	27bd0018 	addiu	sp,sp,24
    17f4:	03e00008 	jr	ra
    17f8:	00000000 	nop

000017fc <func_809863DC>:
    17fc:	27bdffe0 	addiu	sp,sp,-32
    1800:	afbf001c 	sw	ra,28(sp)
    1804:	afb00018 	sw	s0,24(sp)
    1808:	00808025 	move	s0,a0
    180c:	0c000000 	jal	0 <func_80984BE0>
    1810:	afa50024 	sw	a1,36(sp)
    1814:	0c000000 	jal	0 <func_80984BE0>
    1818:	02002025 	move	a0,s0
    181c:	02002025 	move	a0,s0
    1820:	0c000000 	jal	0 <func_80984BE0>
    1824:	8fa50024 	lw	a1,36(sp)
    1828:	0c000000 	jal	0 <func_80984BE0>
    182c:	02002025 	move	a0,s0
    1830:	02002025 	move	a0,s0
    1834:	0c000000 	jal	0 <func_80984BE0>
    1838:	8fa50024 	lw	a1,36(sp)
    183c:	8fbf001c 	lw	ra,28(sp)
    1840:	8fb00018 	lw	s0,24(sp)
    1844:	27bd0020 	addiu	sp,sp,32
    1848:	03e00008 	jr	ra
    184c:	00000000 	nop

00001850 <func_80986430>:
    1850:	27bdffd8 	addiu	sp,sp,-40
    1854:	afbf001c 	sw	ra,28(sp)
    1858:	afb00018 	sw	s0,24(sp)
    185c:	00808025 	move	s0,a0
    1860:	0c000000 	jal	0 <func_80984BE0>
    1864:	afa5002c 	sw	a1,44(sp)
    1868:	0c000000 	jal	0 <func_80984BE0>
    186c:	02002025 	move	a0,s0
    1870:	afa20024 	sw	v0,36(sp)
    1874:	02002025 	move	a0,s0
    1878:	0c000000 	jal	0 <func_80984BE0>
    187c:	8fa5002c 	lw	a1,44(sp)
    1880:	0c000000 	jal	0 <func_80984BE0>
    1884:	02002025 	move	a0,s0
    1888:	02002025 	move	a0,s0
    188c:	0c000000 	jal	0 <func_80984BE0>
    1890:	8fa50024 	lw	a1,36(sp)
    1894:	02002025 	move	a0,s0
    1898:	0c000000 	jal	0 <func_80984BE0>
    189c:	8fa5002c 	lw	a1,44(sp)
    18a0:	8fbf001c 	lw	ra,28(sp)
    18a4:	8fb00018 	lw	s0,24(sp)
    18a8:	27bd0028 	addiu	sp,sp,40
    18ac:	03e00008 	jr	ra
    18b0:	00000000 	nop

000018b4 <func_80986494>:
    18b4:	27bdffe8 	addiu	sp,sp,-24
    18b8:	afbf0014 	sw	ra,20(sp)
    18bc:	afa40018 	sw	a0,24(sp)
    18c0:	0c000000 	jal	0 <func_80984BE0>
    18c4:	afa5001c 	sw	a1,28(sp)
    18c8:	0c000000 	jal	0 <func_80984BE0>
    18cc:	8fa40018 	lw	a0,24(sp)
    18d0:	0c000000 	jal	0 <func_80984BE0>
    18d4:	8fa40018 	lw	a0,24(sp)
    18d8:	8fa40018 	lw	a0,24(sp)
    18dc:	0c000000 	jal	0 <func_80984BE0>
    18e0:	8fa5001c 	lw	a1,28(sp)
    18e4:	8fbf0014 	lw	ra,20(sp)
    18e8:	27bd0018 	addiu	sp,sp,24
    18ec:	03e00008 	jr	ra
    18f0:	00000000 	nop

000018f4 <func_809864D4>:
    18f4:	27bdffd8 	addiu	sp,sp,-40
    18f8:	afbf001c 	sw	ra,28(sp)
    18fc:	afb00018 	sw	s0,24(sp)
    1900:	00808025 	move	s0,a0
    1904:	0c000000 	jal	0 <func_80984BE0>
    1908:	afa5002c 	sw	a1,44(sp)
    190c:	0c000000 	jal	0 <func_80984BE0>
    1910:	02002025 	move	a0,s0
    1914:	afa20024 	sw	v0,36(sp)
    1918:	0c000000 	jal	0 <func_80984BE0>
    191c:	02002025 	move	a0,s0
    1920:	02002025 	move	a0,s0
    1924:	0c000000 	jal	0 <func_80984BE0>
    1928:	8fa50024 	lw	a1,36(sp)
    192c:	02002025 	move	a0,s0
    1930:	0c000000 	jal	0 <func_80984BE0>
    1934:	8fa5002c 	lw	a1,44(sp)
    1938:	8fbf001c 	lw	ra,28(sp)
    193c:	8fb00018 	lw	s0,24(sp)
    1940:	27bd0028 	addiu	sp,sp,40
    1944:	03e00008 	jr	ra
    1948:	00000000 	nop

0000194c <func_8098652C>:
    194c:	27bdffe0 	addiu	sp,sp,-32
    1950:	afa50024 	sw	a1,36(sp)
    1954:	afbf001c 	sw	ra,28(sp)
    1958:	3c050000 	lui	a1,0x0
    195c:	afa40020 	sw	a0,32(sp)
    1960:	24a50000 	addiu	a1,a1,0
    1964:	afa00010 	sw	zero,16(sp)
    1968:	00003025 	move	a2,zero
    196c:	0c000000 	jal	0 <func_80984BE0>
    1970:	24070000 	li	a3,0
    1974:	8faf0020 	lw	t7,32(sp)
    1978:	240e000f 	li	t6,15
    197c:	adee0260 	sw	t6,608(t7)
    1980:	8fbf001c 	lw	ra,28(sp)
    1984:	27bd0020 	addiu	sp,sp,32
    1988:	03e00008 	jr	ra
    198c:	00000000 	nop

00001990 <func_80986570>:
    1990:	27bdffd8 	addiu	sp,sp,-40
    1994:	afb00020 	sw	s0,32(sp)
    1998:	00808025 	move	s0,a0
    199c:	afbf0024 	sw	ra,36(sp)
    19a0:	afa5002c 	sw	a1,44(sp)
    19a4:	3c0540e0 	lui	a1,0x40e0
    19a8:	0c000000 	jal	0 <func_80984BE0>
    19ac:	2484014c 	addiu	a0,a0,332
    19b0:	50400015 	beqzl	v0,1a08 <func_80986570+0x78>
    19b4:	8fbf0024 	lw	ra,36(sp)
    19b8:	960e0088 	lhu	t6,136(s0)
    19bc:	8fa4002c 	lw	a0,44(sp)
    19c0:	31cf0001 	andi	t7,t6,0x1
    19c4:	11e0000f 	beqz	t7,1a04 <func_80986570+0x74>
    19c8:	248407c0 	addiu	a0,a0,1984
    19cc:	8e050078 	lw	a1,120(s0)
    19d0:	0c000000 	jal	0 <func_80984BE0>
    19d4:	9206007d 	lbu	a2,125(s0)
    19d8:	3c070000 	lui	a3,0x0
    19dc:	3c180000 	lui	t8,0x0
    19e0:	24e70000 	addiu	a3,a3,0
    19e4:	24430800 	addiu	v1,v0,2048
    19e8:	27180000 	addiu	t8,t8,0
    19ec:	afb80014 	sw	t8,20(sp)
    19f0:	3064ffff 	andi	a0,v1,0xffff
    19f4:	afa70010 	sw	a3,16(sp)
    19f8:	260500e4 	addiu	a1,s0,228
    19fc:	0c000000 	jal	0 <func_80984BE0>
    1a00:	24060004 	li	a2,4
    1a04:	8fbf0024 	lw	ra,36(sp)
    1a08:	8fb00020 	lw	s0,32(sp)
    1a0c:	27bd0028 	addiu	sp,sp,40
    1a10:	03e00008 	jr	ra
    1a14:	00000000 	nop

00001a18 <func_809865F8>:
    1a18:	27bdffa0 	addiu	sp,sp,-96
    1a1c:	afb00030 	sw	s0,48(sp)
    1a20:	00808025 	move	s0,a0
    1a24:	afbf0034 	sw	ra,52(sp)
    1a28:	10c00038 	beqz	a2,1b0c <func_809865F8+0xf4>
    1a2c:	afa50064 	sw	a1,100(sp)
    1a30:	c4840278 	lwc1	$f4,632(a0)
    1a34:	44803000 	mtc1	zero,$f6
    1a38:	26020278 	addiu	v0,s0,632
    1a3c:	3c013f80 	lui	at,0x3f80
    1a40:	4604303e 	c.le.s	$f6,$f4
    1a44:	00000000 	nop
    1a48:	4502002c 	bc1fl	1afc <func_809865F8+0xe4>
    1a4c:	c4520000 	lwc1	$f18,0(v0)
    1a50:	8c8e027c 	lw	t6,636(a0)
    1a54:	55c0002e 	bnezl	t6,1b10 <func_809865F8+0xf8>
    1a58:	8fbf0034 	lw	ra,52(sp)
    1a5c:	848400b6 	lh	a0,182(a0)
    1a60:	0c000000 	jal	0 <func_80984BE0>
    1a64:	a7a4004e 	sh	a0,78(sp)
    1a68:	3c0141f0 	lui	at,0x41f0
    1a6c:	44814000 	mtc1	at,$f8
    1a70:	26020024 	addiu	v0,s0,36
    1a74:	c4500000 	lwc1	$f16,0(v0)
    1a78:	46080282 	mul.s	$f10,$f0,$f8
    1a7c:	87a4004e 	lh	a0,78(sp)
    1a80:	46105480 	add.s	$f18,$f10,$f16
    1a84:	e7b20048 	swc1	$f18,72(sp)
    1a88:	c4440004 	lwc1	$f4,4(v0)
    1a8c:	afa2003c 	sw	v0,60(sp)
    1a90:	0c000000 	jal	0 <func_80984BE0>
    1a94:	e7a40044 	swc1	$f4,68(sp)
    1a98:	3c0141f0 	lui	at,0x41f0
    1a9c:	44813000 	mtc1	at,$f6
    1aa0:	8fa2003c 	lw	v0,60(sp)
    1aa4:	c7b00044 	lwc1	$f16,68(sp)
    1aa8:	46060202 	mul.s	$f8,$f0,$f6
    1aac:	c44a0008 	lwc1	$f10,8(v0)
    1ab0:	240f0fa0 	li	t7,4000
    1ab4:	afaf0018 	sw	t7,24(sp)
    1ab8:	e7b00010 	swc1	$f16,16(sp)
    1abc:	8fa50064 	lw	a1,100(sp)
    1ac0:	2419fff6 	li	t9,-10
    1ac4:	460a4080 	add.s	$f2,$f8,$f10
    1ac8:	24060016 	li	a2,22
    1acc:	8fa70048 	lw	a3,72(sp)
    1ad0:	24a41c24 	addiu	a0,a1,7204
    1ad4:	e7a20014 	swc1	$f2,20(sp)
    1ad8:	861800b6 	lh	t8,182(s0)
    1adc:	afb90024 	sw	t9,36(sp)
    1ae0:	afa00020 	sw	zero,32(sp)
    1ae4:	0c000000 	jal	0 <func_80984BE0>
    1ae8:	afb8001c 	sw	t8,28(sp)
    1aec:	24080001 	li	t0,1
    1af0:	10000006 	b	1b0c <func_809865F8+0xf4>
    1af4:	ae08027c 	sw	t0,636(s0)
    1af8:	c4520000 	lwc1	$f18,0(v0)
    1afc:	44812000 	mtc1	at,$f4
    1b00:	00000000 	nop
    1b04:	46049180 	add.s	$f6,$f18,$f4
    1b08:	e4460000 	swc1	$f6,0(v0)
    1b0c:	8fbf0034 	lw	ra,52(sp)
    1b10:	8fb00030 	lw	s0,48(sp)
    1b14:	27bd0060 	addiu	sp,sp,96
    1b18:	03e00008 	jr	ra
    1b1c:	00000000 	nop

00001b20 <func_80986700>:
    1b20:	240e000f 	li	t6,15
    1b24:	ac8e0260 	sw	t6,608(a0)
    1b28:	03e00008 	jr	ra
    1b2c:	ac800264 	sw	zero,612(a0)

00001b30 <func_80986710>:
    1b30:	27bdffd8 	addiu	sp,sp,-40
    1b34:	afa40028 	sw	a0,40(sp)
    1b38:	afbf0024 	sw	ra,36(sp)
    1b3c:	3c040000 	lui	a0,0x0
    1b40:	afa5002c 	sw	a1,44(sp)
    1b44:	0c000000 	jal	0 <func_80984BE0>
    1b48:	24840000 	addiu	a0,a0,0
    1b4c:	44822000 	mtc1	v0,$f4
    1b50:	44800000 	mtc1	zero,$f0
    1b54:	8fa40028 	lw	a0,40(sp)
    1b58:	468021a0 	cvt.s.w	$f6,$f4
    1b5c:	3c050000 	lui	a1,0x0
    1b60:	44070000 	mfc1	a3,$f0
    1b64:	24a50000 	addiu	a1,a1,0
    1b68:	3c063f80 	lui	a2,0x3f80
    1b6c:	afa00014 	sw	zero,20(sp)
    1b70:	e7a60010 	swc1	$f6,16(sp)
    1b74:	2484014c 	addiu	a0,a0,332
    1b78:	0c000000 	jal	0 <func_80984BE0>
    1b7c:	e7a00018 	swc1	$f0,24(sp)
    1b80:	8fa40028 	lw	a0,40(sp)
    1b84:	8fa5002c 	lw	a1,44(sp)
    1b88:	0c000000 	jal	0 <func_80984BE0>
    1b8c:	24060005 	li	a2,5
    1b90:	8fa20028 	lw	v0,40(sp)
    1b94:	240e0010 	li	t6,16
    1b98:	240f0001 	li	t7,1
    1b9c:	ac4e0260 	sw	t6,608(v0)
    1ba0:	ac4f0264 	sw	t7,612(v0)
    1ba4:	8fbf0024 	lw	ra,36(sp)
    1ba8:	27bd0028 	addiu	sp,sp,40
    1bac:	03e00008 	jr	ra
    1bb0:	00000000 	nop

00001bb4 <func_80986794>:
    1bb4:	27bdffd8 	addiu	sp,sp,-40
    1bb8:	afa40028 	sw	a0,40(sp)
    1bbc:	afbf0024 	sw	ra,36(sp)
    1bc0:	3c040000 	lui	a0,0x0
    1bc4:	0c000000 	jal	0 <func_80984BE0>
    1bc8:	24840000 	addiu	a0,a0,0
    1bcc:	44822000 	mtc1	v0,$f4
    1bd0:	3c01c100 	lui	at,0xc100
    1bd4:	44814000 	mtc1	at,$f8
    1bd8:	468021a0 	cvt.s.w	$f6,$f4
    1bdc:	8fa40028 	lw	a0,40(sp)
    1be0:	3c050000 	lui	a1,0x0
    1be4:	240e0002 	li	t6,2
    1be8:	afae0014 	sw	t6,20(sp)
    1bec:	24a50000 	addiu	a1,a1,0
    1bf0:	e7a60010 	swc1	$f6,16(sp)
    1bf4:	3c063f80 	lui	a2,0x3f80
    1bf8:	24070000 	li	a3,0
    1bfc:	e7a80018 	swc1	$f8,24(sp)
    1c00:	0c000000 	jal	0 <func_80984BE0>
    1c04:	2484014c 	addiu	a0,a0,332
    1c08:	8fa20028 	lw	v0,40(sp)
    1c0c:	240f0011 	li	t7,17
    1c10:	24180001 	li	t8,1
    1c14:	ac4f0260 	sw	t7,608(v0)
    1c18:	ac580264 	sw	t8,612(v0)
    1c1c:	8fbf0024 	lw	ra,36(sp)
    1c20:	27bd0028 	addiu	sp,sp,40
    1c24:	03e00008 	jr	ra
    1c28:	00000000 	nop

00001c2c <func_8098680C>:
    1c2c:	27bdffd8 	addiu	sp,sp,-40
    1c30:	afb00018 	sw	s0,24(sp)
    1c34:	00808025 	move	s0,a0
    1c38:	afbf001c 	sw	ra,28(sp)
    1c3c:	afa5002c 	sw	a1,44(sp)
    1c40:	00a02025 	move	a0,a1
    1c44:	0c000000 	jal	0 <func_80984BE0>
    1c48:	24050005 	li	a1,5
    1c4c:	5040002a 	beqzl	v0,1cf8 <func_8098680C+0xcc>
    1c50:	8fbf001c 	lw	ra,28(sp)
    1c54:	94460000 	lhu	a2,0(v0)
    1c58:	8e030274 	lw	v1,628(s0)
    1c5c:	24010001 	li	at,1
    1c60:	50c30025 	beql	a2,v1,1cf8 <func_8098680C+0xcc>
    1c64:	8fbf001c 	lw	ra,28(sp)
    1c68:	10c1000c 	beq	a2,at,1c9c <func_8098680C+0x70>
    1c6c:	02002025 	move	a0,s0
    1c70:	24010002 	li	at,2
    1c74:	10c1000d 	beq	a2,at,1cac <func_8098680C+0x80>
    1c78:	02002025 	move	a0,s0
    1c7c:	2401000a 	li	at,10
    1c80:	10c1000f 	beq	a2,at,1cc0 <func_8098680C+0x94>
    1c84:	02002025 	move	a0,s0
    1c88:	2401000b 	li	at,11
    1c8c:	10c10010 	beq	a2,at,1cd0 <func_8098680C+0xa4>
    1c90:	02002025 	move	a0,s0
    1c94:	10000012 	b	1ce0 <func_8098680C+0xb4>
    1c98:	3c040000 	lui	a0,0x0
    1c9c:	0c000000 	jal	0 <func_80984BE0>
    1ca0:	afa60020 	sw	a2,32(sp)
    1ca4:	10000012 	b	1cf0 <func_8098680C+0xc4>
    1ca8:	8fa60020 	lw	a2,32(sp)
    1cac:	8fa5002c 	lw	a1,44(sp)
    1cb0:	0c000000 	jal	0 <func_80984BE0>
    1cb4:	afa60020 	sw	a2,32(sp)
    1cb8:	1000000d 	b	1cf0 <func_8098680C+0xc4>
    1cbc:	8fa60020 	lw	a2,32(sp)
    1cc0:	0c000000 	jal	0 <func_80984BE0>
    1cc4:	afa60020 	sw	a2,32(sp)
    1cc8:	10000009 	b	1cf0 <func_8098680C+0xc4>
    1ccc:	8fa60020 	lw	a2,32(sp)
    1cd0:	0c000000 	jal	0 <func_80984BE0>
    1cd4:	afa60020 	sw	a2,32(sp)
    1cd8:	10000005 	b	1cf0 <func_8098680C+0xc4>
    1cdc:	8fa60020 	lw	a2,32(sp)
    1ce0:	248400c0 	addiu	a0,a0,192
    1ce4:	0c000000 	jal	0 <func_80984BE0>
    1ce8:	afa60020 	sw	a2,32(sp)
    1cec:	8fa60020 	lw	a2,32(sp)
    1cf0:	ae060274 	sw	a2,628(s0)
    1cf4:	8fbf001c 	lw	ra,28(sp)
    1cf8:	8fb00018 	lw	s0,24(sp)
    1cfc:	27bd0028 	addiu	sp,sp,40
    1d00:	03e00008 	jr	ra
    1d04:	00000000 	nop

00001d08 <func_809868E8>:
    1d08:	27bdffe8 	addiu	sp,sp,-24
    1d0c:	afbf0014 	sw	ra,20(sp)
    1d10:	0c000000 	jal	0 <func_80984BE0>
    1d14:	00000000 	nop
    1d18:	8fbf0014 	lw	ra,20(sp)
    1d1c:	27bd0018 	addiu	sp,sp,24
    1d20:	03e00008 	jr	ra
    1d24:	00000000 	nop

00001d28 <func_80986908>:
    1d28:	27bdffe8 	addiu	sp,sp,-24
    1d2c:	afbf0014 	sw	ra,20(sp)
    1d30:	afa40018 	sw	a0,24(sp)
    1d34:	0c000000 	jal	0 <func_80984BE0>
    1d38:	afa5001c 	sw	a1,28(sp)
    1d3c:	0c000000 	jal	0 <func_80984BE0>
    1d40:	8fa40018 	lw	a0,24(sp)
    1d44:	0c000000 	jal	0 <func_80984BE0>
    1d48:	8fa40018 	lw	a0,24(sp)
    1d4c:	8fa40018 	lw	a0,24(sp)
    1d50:	0c000000 	jal	0 <func_80984BE0>
    1d54:	8fa5001c 	lw	a1,28(sp)
    1d58:	8fbf0014 	lw	ra,20(sp)
    1d5c:	27bd0018 	addiu	sp,sp,24
    1d60:	03e00008 	jr	ra
    1d64:	00000000 	nop

00001d68 <func_80986948>:
    1d68:	27bdffd8 	addiu	sp,sp,-40
    1d6c:	afbf001c 	sw	ra,28(sp)
    1d70:	afb00018 	sw	s0,24(sp)
    1d74:	00808025 	move	s0,a0
    1d78:	0c000000 	jal	0 <func_80984BE0>
    1d7c:	afa5002c 	sw	a1,44(sp)
    1d80:	0c000000 	jal	0 <func_80984BE0>
    1d84:	02002025 	move	a0,s0
    1d88:	afa20024 	sw	v0,36(sp)
    1d8c:	02002025 	move	a0,s0
    1d90:	0c000000 	jal	0 <func_80984BE0>
    1d94:	8fa5002c 	lw	a1,44(sp)
    1d98:	0c000000 	jal	0 <func_80984BE0>
    1d9c:	02002025 	move	a0,s0
    1da0:	02002025 	move	a0,s0
    1da4:	8fa5002c 	lw	a1,44(sp)
    1da8:	0c000000 	jal	0 <func_80984BE0>
    1dac:	8fa60024 	lw	a2,36(sp)
    1db0:	02002025 	move	a0,s0
    1db4:	0c000000 	jal	0 <func_80984BE0>
    1db8:	8fa5002c 	lw	a1,44(sp)
    1dbc:	8fbf001c 	lw	ra,28(sp)
    1dc0:	8fb00018 	lw	s0,24(sp)
    1dc4:	27bd0028 	addiu	sp,sp,40
    1dc8:	03e00008 	jr	ra
    1dcc:	00000000 	nop

00001dd0 <func_809869B0>:
    1dd0:	27bdffe0 	addiu	sp,sp,-32
    1dd4:	afa50024 	sw	a1,36(sp)
    1dd8:	afbf001c 	sw	ra,28(sp)
    1ddc:	3c050000 	lui	a1,0x0
    1de0:	24a50000 	addiu	a1,a1,0
    1de4:	afa00010 	sw	zero,16(sp)
    1de8:	afa40020 	sw	a0,32(sp)
    1dec:	00003025 	move	a2,zero
    1df0:	0c000000 	jal	0 <func_80984BE0>
    1df4:	24070000 	li	a3,0
    1df8:	8fa40020 	lw	a0,32(sp)
    1dfc:	240e0012 	li	t6,18
    1e00:	ac8e0260 	sw	t6,608(a0)
    1e04:	a08000c8 	sb	zero,200(a0)
    1e08:	8fbf001c 	lw	ra,28(sp)
    1e0c:	27bd0020 	addiu	sp,sp,32
    1e10:	03e00008 	jr	ra
    1e14:	00000000 	nop

00001e18 <func_809869F8>:
    1e18:	3c0e0000 	lui	t6,0x0
    1e1c:	8dce0000 	lw	t6,0(t6)
    1e20:	3c0141f0 	lui	at,0x41f0
    1e24:	44814000 	mtc1	at,$f8
    1e28:	85cf1474 	lh	t7,5236(t6)
    1e2c:	c4820024 	lwc1	$f2,36(a0)
    1e30:	8ca21c44 	lw	v0,7236(a1)
    1e34:	448f2000 	mtc1	t7,$f4
    1e38:	c4400024 	lwc1	$f0,36(v0)
    1e3c:	468021a0 	cvt.s.w	$f6,$f4
    1e40:	00001025 	move	v0,zero
    1e44:	46083280 	add.s	$f10,$f6,$f8
    1e48:	460a1401 	sub.s	$f16,$f2,$f10
    1e4c:	4610003c 	c.lt.s	$f0,$f16
    1e50:	00000000 	nop
    1e54:	45000007 	bc1f	1e74 <func_809869F8+0x5c>
    1e58:	00000000 	nop
    1e5c:	8c980004 	lw	t8,4(a0)
    1e60:	33190040 	andi	t9,t8,0x40
    1e64:	17200003 	bnez	t9,1e74 <func_809869F8+0x5c>
    1e68:	00000000 	nop
    1e6c:	03e00008 	jr	ra
    1e70:	24020001 	li	v0,1
    1e74:	03e00008 	jr	ra
    1e78:	00000000 	nop

00001e7c <func_80986A5C>:
    1e7c:	3c0e0000 	lui	t6,0x0
    1e80:	8dce0000 	lw	t6,0(t6)
    1e84:	27bdffe8 	addiu	sp,sp,-24
    1e88:	afbf0014 	sw	ra,20(sp)
    1e8c:	85cf1476 	lh	t7,5238(t6)
    1e90:	3c014302 	lui	at,0x4302
    1e94:	44814000 	mtc1	at,$f8
    1e98:	448f2000 	mtc1	t7,$f4
    1e9c:	c4820024 	lwc1	$f2,36(a0)
    1ea0:	8ca21c44 	lw	v0,7236(a1)
    1ea4:	468021a0 	cvt.s.w	$f6,$f4
    1ea8:	c4400024 	lwc1	$f0,36(v0)
    1eac:	46083280 	add.s	$f10,$f6,$f8
    1eb0:	460a1401 	sub.s	$f16,$f2,$f10
    1eb4:	4600803c 	c.lt.s	$f16,$f0
    1eb8:	00000000 	nop
    1ebc:	45020008 	bc1fl	1ee0 <func_80986A5C+0x64>
    1ec0:	00001025 	move	v0,zero
    1ec4:	0c000000 	jal	0 <func_80984BE0>
    1ec8:	00a02025 	move	a0,a1
    1ecc:	54400004 	bnezl	v0,1ee0 <func_80986A5C+0x64>
    1ed0:	00001025 	move	v0,zero
    1ed4:	10000002 	b	1ee0 <func_80986A5C+0x64>
    1ed8:	24020001 	li	v0,1
    1edc:	00001025 	move	v0,zero
    1ee0:	8fbf0014 	lw	ra,20(sp)
    1ee4:	27bd0018 	addiu	sp,sp,24
    1ee8:	03e00008 	jr	ra
    1eec:	00000000 	nop

00001ef0 <func_80986AD0>:
    1ef0:	27bdffe8 	addiu	sp,sp,-24
    1ef4:	afbf0014 	sw	ra,20(sp)
    1ef8:	afa5001c 	sw	a1,28(sp)
    1efc:	8c8e0004 	lw	t6,4(a0)
    1f00:	35cf0009 	ori	t7,t6,0x9
    1f04:	ac8f0004 	sw	t7,4(a0)
    1f08:	afa40018 	sw	a0,24(sp)
    1f0c:	0c000000 	jal	0 <func_80984BE0>
    1f10:	8fa5001c 	lw	a1,28(sp)
    1f14:	14400007 	bnez	v0,1f34 <func_80986AD0+0x44>
    1f18:	8fa40018 	lw	a0,24(sp)
    1f1c:	2418708e 	li	t8,28814
    1f20:	a498010e 	sh	t8,270(a0)
    1f24:	0c000000 	jal	0 <func_80984BE0>
    1f28:	8fa5001c 	lw	a1,28(sp)
    1f2c:	10000003 	b	1f3c <func_80986AD0+0x4c>
    1f30:	00001025 	move	v0,zero
    1f34:	10000001 	b	1f3c <func_80986AD0+0x4c>
    1f38:	24020001 	li	v0,1
    1f3c:	8fbf0014 	lw	ra,20(sp)
    1f40:	27bd0018 	addiu	sp,sp,24
    1f44:	03e00008 	jr	ra
    1f48:	00000000 	nop

00001f4c <func_80986B2C>:
    1f4c:	27bdffe8 	addiu	sp,sp,-24
    1f50:	afbf0014 	sw	ra,20(sp)
    1f54:	00803825 	move	a3,a0
    1f58:	afa70018 	sw	a3,24(sp)
    1f5c:	0c000000 	jal	0 <func_80984BE0>
    1f60:	248420d8 	addiu	a0,a0,8408
    1f64:	24010002 	li	at,2
    1f68:	14410011 	bne	v0,at,1fb0 <func_80986B2C+0x64>
    1f6c:	8fa70018 	lw	a3,24(sp)
    1f70:	3c010001 	lui	at,0x1
    1f74:	8ce51c44 	lw	a1,7236(a3)
    1f78:	00270821 	addu	at,at,a3
    1f7c:	240e00cd 	li	t6,205
    1f80:	a42e1e1a 	sh	t6,7706(at)
    1f84:	3c010001 	lui	at,0x1
    1f88:	00270821 	addu	at,at,a3
    1f8c:	240f0026 	li	t7,38
    1f90:	a02f1e5e 	sb	t7,7774(at)
    1f94:	3c010001 	lui	at,0x1
    1f98:	00270821 	addu	at,at,a3
    1f9c:	24180014 	li	t8,20
    1fa0:	a0381e15 	sb	t8,7701(at)
    1fa4:	00e02025 	move	a0,a3
    1fa8:	0c000000 	jal	0 <func_80984BE0>
    1fac:	24060008 	li	a2,8
    1fb0:	8fbf0014 	lw	ra,20(sp)
    1fb4:	27bd0018 	addiu	sp,sp,24
    1fb8:	03e00008 	jr	ra
    1fbc:	00000000 	nop

00001fc0 <func_80986BA0>:
    1fc0:	27bdffe8 	addiu	sp,sp,-24
    1fc4:	afbf0014 	sw	ra,20(sp)
    1fc8:	0c000000 	jal	0 <func_80984BE0>
    1fcc:	afa40018 	sw	a0,24(sp)
    1fd0:	10400008 	beqz	v0,1ff4 <func_80986BA0+0x34>
    1fd4:	8fa40018 	lw	a0,24(sp)
    1fd8:	24020001 	li	v0,1
    1fdc:	240e0015 	li	t6,21
    1fe0:	240f00ff 	li	t7,255
    1fe4:	ac8e0260 	sw	t6,608(a0)
    1fe8:	ac820264 	sw	v0,612(a0)
    1fec:	ac820280 	sw	v0,640(a0)
    1ff0:	a08f00c8 	sb	t7,200(a0)
    1ff4:	8fbf0014 	lw	ra,20(sp)
    1ff8:	27bd0018 	addiu	sp,sp,24
    1ffc:	03e00008 	jr	ra
    2000:	00000000 	nop

00002004 <func_80986BE4>:
    2004:	10a00002 	beqz	a1,2010 <func_80986BE4+0xc>
    2008:	240e0016 	li	t6,22
    200c:	ac8e0260 	sw	t6,608(a0)
    2010:	03e00008 	jr	ra
    2014:	00000000 	nop

00002018 <func_80986BF8>:
    2018:	3c0e0000 	lui	t6,0x0
    201c:	95ce0edc 	lhu	t6,3804(t6)
    2020:	afa50004 	sw	a1,4(sp)
    2024:	24020001 	li	v0,1
    2028:	31cf0001 	andi	t7,t6,0x1
    202c:	11e00006 	beqz	t7,2048 <func_80986BF8+0x30>
    2030:	24180018 	li	t8,24
    2034:	241900ff 	li	t9,255
    2038:	ac980260 	sw	t8,608(a0)
    203c:	ac820264 	sw	v0,612(a0)
    2040:	ac820280 	sw	v0,640(a0)
    2044:	a09900c8 	sb	t9,200(a0)
    2048:	03e00008 	jr	ra
    204c:	00000000 	nop

00002050 <func_80986C30>:
    2050:	27bdffe8 	addiu	sp,sp,-24
    2054:	afbf0014 	sw	ra,20(sp)
    2058:	afa40018 	sw	a0,24(sp)
    205c:	0c000000 	jal	0 <func_80984BE0>
    2060:	afa5001c 	sw	a1,28(sp)
    2064:	1040001c 	beqz	v0,20d8 <func_80986C30+0x88>
    2068:	8fa6001c 	lw	a2,28(sp)
    206c:	3c020000 	lui	v0,0x0
    2070:	24420000 	addiu	v0,v0,0
    2074:	00027100 	sll	t6,v0,0x4
    2078:	000e7f02 	srl	t7,t6,0x1c
    207c:	000fc080 	sll	t8,t7,0x2
    2080:	3c190000 	lui	t9,0x0
    2084:	0338c821 	addu	t9,t9,t8
    2088:	3c0100ff 	lui	at,0xff
    208c:	8f390000 	lw	t9,0(t9)
    2090:	3421ffff 	ori	at,at,0xffff
    2094:	00414024 	and	t0,v0,at
    2098:	3c018000 	lui	at,0x8000
    209c:	03284821 	addu	t1,t9,t0
    20a0:	3c030000 	lui	v1,0x0
    20a4:	01215021 	addu	t2,t1,at
    20a8:	24630000 	addiu	v1,v1,0
    20ac:	acca1d68 	sw	t2,7528(a2)
    20b0:	946c0ede 	lhu	t4,3806(v1)
    20b4:	240b0001 	li	t3,1
    20b8:	a06b1414 	sb	t3,5140(v1)
    20bc:	358d0200 	ori	t5,t4,0x200
    20c0:	a46d0ede 	sh	t5,3806(v1)
    20c4:	00c02025 	move	a0,a2
    20c8:	0c000000 	jal	0 <func_80984BE0>
    20cc:	24050060 	li	a1,96
    20d0:	0c000000 	jal	0 <func_80984BE0>
    20d4:	8fa40018 	lw	a0,24(sp)
    20d8:	8fbf0014 	lw	ra,20(sp)
    20dc:	27bd0018 	addiu	sp,sp,24
    20e0:	03e00008 	jr	ra
    20e4:	00000000 	nop

000020e8 <func_80986CC8>:
    20e8:	3c0e0000 	lui	t6,0x0
    20ec:	95ce0edc 	lhu	t6,3804(t6)
    20f0:	24020001 	li	v0,1
    20f4:	2418001a 	li	t8,26
    20f8:	31cf0001 	andi	t7,t6,0x1
    20fc:	11e00005 	beqz	t7,2114 <func_80986CC8+0x2c>
    2100:	241900ff 	li	t9,255
    2104:	ac980260 	sw	t8,608(a0)
    2108:	ac820264 	sw	v0,612(a0)
    210c:	ac820280 	sw	v0,640(a0)
    2110:	a09900c8 	sb	t9,200(a0)
    2114:	03e00008 	jr	ra
    2118:	00000000 	nop

0000211c <func_80986CFC>:
    211c:	27bdffe8 	addiu	sp,sp,-24
    2120:	afbf0014 	sw	ra,20(sp)
    2124:	0c000000 	jal	0 <func_80984BE0>
    2128:	afa40018 	sw	a0,24(sp)
    212c:	10400008 	beqz	v0,2150 <func_80986CFC+0x34>
    2130:	3c020000 	lui	v0,0x0
    2134:	24420000 	addiu	v0,v0,0
    2138:	944e0edc 	lhu	t6,3804(v0)
    213c:	8fb90018 	lw	t9,24(sp)
    2140:	24180013 	li	t8,19
    2144:	35cf1000 	ori	t7,t6,0x1000
    2148:	a44f0edc 	sh	t7,3804(v0)
    214c:	af380260 	sw	t8,608(t9)
    2150:	8fbf0014 	lw	ra,20(sp)
    2154:	27bd0018 	addiu	sp,sp,24
    2158:	03e00008 	jr	ra
    215c:	00000000 	nop

00002160 <func_80986D40>:
    2160:	3c020000 	lui	v0,0x0
    2164:	24420000 	addiu	v0,v0,0
    2168:	8c4e1360 	lw	t6,4960(v0)
    216c:	27bdffe8 	addiu	sp,sp,-24
    2170:	24010006 	li	at,6
    2174:	afbf0014 	sw	ra,20(sp)
    2178:	15c10006 	bne	t6,at,2194 <func_80986D40+0x34>
    217c:	afa5001c 	sw	a1,28(sp)
    2180:	240f0013 	li	t7,19
    2184:	24180001 	li	t8,1
    2188:	ac8f0260 	sw	t7,608(a0)
    218c:	10000012 	b	21d8 <func_80986D40+0x78>
    2190:	ac980264 	sw	t8,612(a0)
    2194:	94590ee4 	lhu	t9,3812(v0)
    2198:	33280001 	andi	t0,t9,0x1
    219c:	51000006 	beqzl	t0,21b8 <func_80986D40+0x58>
    21a0:	94490ede 	lhu	t1,3806(v0)
    21a4:	0c000000 	jal	0 <func_80984BE0>
    21a8:	00000000 	nop
    21ac:	1000000b 	b	21dc <func_80986D40+0x7c>
    21b0:	8fbf0014 	lw	ra,20(sp)
    21b4:	94490ede 	lhu	t1,3806(v0)
    21b8:	240b0017 	li	t3,23
    21bc:	240c0014 	li	t4,20
    21c0:	312a0200 	andi	t2,t1,0x200
    21c4:	55400004 	bnezl	t2,21d8 <func_80986D40+0x78>
    21c8:	ac8c0260 	sw	t4,608(a0)
    21cc:	10000002 	b	21d8 <func_80986D40+0x78>
    21d0:	ac8b0260 	sw	t3,608(a0)
    21d4:	ac8c0260 	sw	t4,608(a0)
    21d8:	8fbf0014 	lw	ra,20(sp)
    21dc:	27bd0018 	addiu	sp,sp,24
    21e0:	03e00008 	jr	ra
    21e4:	00000000 	nop

000021e8 <func_80986DC8>:
    21e8:	27bdffe0 	addiu	sp,sp,-32
    21ec:	afbf001c 	sw	ra,28(sp)
    21f0:	afb00018 	sw	s0,24(sp)
    21f4:	00808025 	move	s0,a0
    21f8:	0c000000 	jal	0 <func_80984BE0>
    21fc:	afa50024 	sw	a1,36(sp)
    2200:	0c000000 	jal	0 <func_80984BE0>
    2204:	02002025 	move	a0,s0
    2208:	0c000000 	jal	0 <func_80984BE0>
    220c:	02002025 	move	a0,s0
    2210:	02002025 	move	a0,s0
    2214:	0c000000 	jal	0 <func_80984BE0>
    2218:	8fa50024 	lw	a1,36(sp)
    221c:	8e0e0004 	lw	t6,4(s0)
    2220:	2401fff6 	li	at,-10
    2224:	01c17824 	and	t7,t6,at
    2228:	ae0f0004 	sw	t7,4(s0)
    222c:	8fbf001c 	lw	ra,28(sp)
    2230:	8fb00018 	lw	s0,24(sp)
    2234:	27bd0020 	addiu	sp,sp,32
    2238:	03e00008 	jr	ra
    223c:	00000000 	nop

00002240 <func_80986E20>:
    2240:	27bdffe8 	addiu	sp,sp,-24
    2244:	afbf0014 	sw	ra,20(sp)
    2248:	0c000000 	jal	0 <func_80984BE0>
    224c:	00000000 	nop
    2250:	8fbf0014 	lw	ra,20(sp)
    2254:	27bd0018 	addiu	sp,sp,24
    2258:	03e00008 	jr	ra
    225c:	00000000 	nop

00002260 <func_80986E40>:
    2260:	27bdffe0 	addiu	sp,sp,-32
    2264:	afbf001c 	sw	ra,28(sp)
    2268:	afb00018 	sw	s0,24(sp)
    226c:	00808025 	move	s0,a0
    2270:	0c000000 	jal	0 <func_80984BE0>
    2274:	afa50024 	sw	a1,36(sp)
    2278:	0c000000 	jal	0 <func_80984BE0>
    227c:	02002025 	move	a0,s0
    2280:	0c000000 	jal	0 <func_80984BE0>
    2284:	02002025 	move	a0,s0
    2288:	02002025 	move	a0,s0
    228c:	0c000000 	jal	0 <func_80984BE0>
    2290:	8fa50024 	lw	a1,36(sp)
    2294:	02002025 	move	a0,s0
    2298:	0c000000 	jal	0 <func_80984BE0>
    229c:	8fa50024 	lw	a1,36(sp)
    22a0:	02002025 	move	a0,s0
    22a4:	0c000000 	jal	0 <func_80984BE0>
    22a8:	8fa50024 	lw	a1,36(sp)
    22ac:	02002025 	move	a0,s0
    22b0:	0c000000 	jal	0 <func_80984BE0>
    22b4:	00402825 	move	a1,v0
    22b8:	8fbf001c 	lw	ra,28(sp)
    22bc:	8fb00018 	lw	s0,24(sp)
    22c0:	27bd0020 	addiu	sp,sp,32
    22c4:	03e00008 	jr	ra
    22c8:	00000000 	nop

000022cc <func_80986EAC>:
    22cc:	27bdffe0 	addiu	sp,sp,-32
    22d0:	afbf001c 	sw	ra,28(sp)
    22d4:	afb00018 	sw	s0,24(sp)
    22d8:	00808025 	move	s0,a0
    22dc:	0c000000 	jal	0 <func_80984BE0>
    22e0:	afa50024 	sw	a1,36(sp)
    22e4:	0c000000 	jal	0 <func_80984BE0>
    22e8:	02002025 	move	a0,s0
    22ec:	0c000000 	jal	0 <func_80984BE0>
    22f0:	02002025 	move	a0,s0
    22f4:	02002025 	move	a0,s0
    22f8:	0c000000 	jal	0 <func_80984BE0>
    22fc:	8fa50024 	lw	a1,36(sp)
    2300:	02002025 	move	a0,s0
    2304:	0c000000 	jal	0 <func_80984BE0>
    2308:	8fa50024 	lw	a1,36(sp)
    230c:	0c000000 	jal	0 <func_80984BE0>
    2310:	8fa40024 	lw	a0,36(sp)
    2314:	8fbf001c 	lw	ra,28(sp)
    2318:	8fb00018 	lw	s0,24(sp)
    231c:	27bd0020 	addiu	sp,sp,32
    2320:	03e00008 	jr	ra
    2324:	00000000 	nop

00002328 <func_80986F08>:
    2328:	27bdffe8 	addiu	sp,sp,-24
    232c:	afbf0014 	sw	ra,20(sp)
    2330:	0c000000 	jal	0 <func_80984BE0>
    2334:	00000000 	nop
    2338:	8fbf0014 	lw	ra,20(sp)
    233c:	27bd0018 	addiu	sp,sp,24
    2340:	03e00008 	jr	ra
    2344:	00000000 	nop

00002348 <func_80986F28>:
    2348:	27bdffe0 	addiu	sp,sp,-32
    234c:	afbf001c 	sw	ra,28(sp)
    2350:	afb00018 	sw	s0,24(sp)
    2354:	00808025 	move	s0,a0
    2358:	0c000000 	jal	0 <func_80984BE0>
    235c:	afa50024 	sw	a1,36(sp)
    2360:	0c000000 	jal	0 <func_80984BE0>
    2364:	02002025 	move	a0,s0
    2368:	0c000000 	jal	0 <func_80984BE0>
    236c:	02002025 	move	a0,s0
    2370:	02002025 	move	a0,s0
    2374:	0c000000 	jal	0 <func_80984BE0>
    2378:	8fa50024 	lw	a1,36(sp)
    237c:	02002025 	move	a0,s0
    2380:	0c000000 	jal	0 <func_80984BE0>
    2384:	8fa50024 	lw	a1,36(sp)
    2388:	02002025 	move	a0,s0
    238c:	0c000000 	jal	0 <func_80984BE0>
    2390:	8fa50024 	lw	a1,36(sp)
    2394:	8fbf001c 	lw	ra,28(sp)
    2398:	8fb00018 	lw	s0,24(sp)
    239c:	27bd0020 	addiu	sp,sp,32
    23a0:	03e00008 	jr	ra
    23a4:	00000000 	nop

000023a8 <func_80986F88>:
    23a8:	27bdffe8 	addiu	sp,sp,-24
    23ac:	afbf0014 	sw	ra,20(sp)
    23b0:	0c000000 	jal	0 <func_80984BE0>
    23b4:	afa5001c 	sw	a1,28(sp)
    23b8:	8fbf0014 	lw	ra,20(sp)
    23bc:	27bd0018 	addiu	sp,sp,24
    23c0:	03e00008 	jr	ra
    23c4:	00000000 	nop

000023c8 <func_80986FA8>:
    23c8:	27bdffe0 	addiu	sp,sp,-32
    23cc:	afbf001c 	sw	ra,28(sp)
    23d0:	afb00018 	sw	s0,24(sp)
    23d4:	00808025 	move	s0,a0
    23d8:	0c000000 	jal	0 <func_80984BE0>
    23dc:	afa50024 	sw	a1,36(sp)
    23e0:	0c000000 	jal	0 <func_80984BE0>
    23e4:	02002025 	move	a0,s0
    23e8:	0c000000 	jal	0 <func_80984BE0>
    23ec:	02002025 	move	a0,s0
    23f0:	02002025 	move	a0,s0
    23f4:	0c000000 	jal	0 <func_80984BE0>
    23f8:	8fa50024 	lw	a1,36(sp)
    23fc:	8e0e0004 	lw	t6,4(s0)
    2400:	2401fff6 	li	at,-10
    2404:	02002025 	move	a0,s0
    2408:	01c17824 	and	t7,t6,at
    240c:	ae0f0004 	sw	t7,4(s0)
    2410:	0c000000 	jal	0 <func_80984BE0>
    2414:	8fa50024 	lw	a1,36(sp)
    2418:	02002025 	move	a0,s0
    241c:	0c000000 	jal	0 <func_80984BE0>
    2420:	8fa50024 	lw	a1,36(sp)
    2424:	8fbf001c 	lw	ra,28(sp)
    2428:	8fb00018 	lw	s0,24(sp)
    242c:	27bd0020 	addiu	sp,sp,32
    2430:	03e00008 	jr	ra
    2434:	00000000 	nop

00002438 <func_80987018>:
    2438:	27bdffe0 	addiu	sp,sp,-32
    243c:	afa50024 	sw	a1,36(sp)
    2440:	afbf001c 	sw	ra,28(sp)
    2444:	3c050000 	lui	a1,0x0
    2448:	24a50000 	addiu	a1,a1,0
    244c:	afa00010 	sw	zero,16(sp)
    2450:	afa40020 	sw	a0,32(sp)
    2454:	00003025 	move	a2,zero
    2458:	0c000000 	jal	0 <func_80984BE0>
    245c:	24070000 	li	a3,0
    2460:	8fa40020 	lw	a0,32(sp)
    2464:	240e001b 	li	t6,27
    2468:	ac8e0260 	sw	t6,608(a0)
    246c:	ac800264 	sw	zero,612(a0)
    2470:	a08000c8 	sb	zero,200(a0)
    2474:	8fbf001c 	lw	ra,28(sp)
    2478:	27bd0020 	addiu	sp,sp,32
    247c:	03e00008 	jr	ra
    2480:	00000000 	nop

00002484 <func_80987064>:
    2484:	3c013f80 	lui	at,0x3f80
    2488:	44813000 	mtc1	at,$f6
    248c:	c4840268 	lwc1	$f4,616(a0)
    2490:	3c0e0000 	lui	t6,0x0
    2494:	3c014120 	lui	at,0x4120
    2498:	46062200 	add.s	$f8,$f4,$f6
    249c:	44819000 	mtc1	at,$f18
    24a0:	240200ff 	li	v0,255
    24a4:	e4880268 	swc1	$f8,616(a0)
    24a8:	8dce0000 	lw	t6,0(t6)
    24ac:	c4840268 	lwc1	$f4,616(a0)
    24b0:	85cf1476 	lh	t7,5238(t6)
    24b4:	448f5000 	mtc1	t7,$f10
    24b8:	00000000 	nop
    24bc:	46805420 	cvt.s.w	$f16,$f10
    24c0:	46128000 	add.s	$f0,$f16,$f18
    24c4:	4604003e 	c.le.s	$f0,$f4
    24c8:	00000000 	nop
    24cc:	45020005 	bc1fl	24e4 <func_80987064+0x60>
    24d0:	c4860268 	lwc1	$f6,616(a0)
    24d4:	ac82026c 	sw	v0,620(a0)
    24d8:	03e00008 	jr	ra
    24dc:	a08200c8 	sb	v0,200(a0)
    24e0:	c4860268 	lwc1	$f6,616(a0)
    24e4:	3c01437f 	lui	at,0x437f
    24e8:	44815000 	mtc1	at,$f10
    24ec:	46003203 	div.s	$f8,$f6,$f0
    24f0:	460a4402 	mul.s	$f16,$f8,$f10
    24f4:	4600848d 	trunc.w.s	$f18,$f16
    24f8:	44029000 	mfc1	v0,$f18
    24fc:	00000000 	nop
    2500:	ac82026c 	sw	v0,620(a0)
    2504:	a08200c8 	sb	v0,200(a0)
    2508:	03e00008 	jr	ra
    250c:	00000000 	nop

00002510 <func_809870F0>:
    2510:	27bdffe8 	addiu	sp,sp,-24
    2514:	afbf0014 	sw	ra,20(sp)
    2518:	afa40018 	sw	a0,24(sp)
    251c:	0c000000 	jal	0 <func_80984BE0>
    2520:	24060005 	li	a2,5
    2524:	8fa40018 	lw	a0,24(sp)
    2528:	240e001c 	li	t6,28
    252c:	240f0002 	li	t7,2
    2530:	ac8e0260 	sw	t6,608(a0)
    2534:	ac8f0264 	sw	t7,612(a0)
    2538:	8fbf0014 	lw	ra,20(sp)
    253c:	27bd0018 	addiu	sp,sp,24
    2540:	03e00008 	jr	ra
    2544:	00000000 	nop

00002548 <func_80987128>:
    2548:	3c0e0000 	lui	t6,0x0
    254c:	8dce0000 	lw	t6,0(t6)
    2550:	3c014120 	lui	at,0x4120
    2554:	44815000 	mtc1	at,$f10
    2558:	85cf1476 	lh	t7,5238(t6)
    255c:	c4840268 	lwc1	$f4,616(a0)
    2560:	2418001d 	li	t8,29
    2564:	448f3000 	mtc1	t7,$f6
    2568:	24190001 	li	t9,1
    256c:	46803220 	cvt.s.w	$f8,$f6
    2570:	460a4400 	add.s	$f16,$f8,$f10
    2574:	4604803e 	c.le.s	$f16,$f4
    2578:	00000000 	nop
    257c:	45000003 	bc1f	258c <func_80987128+0x44>
    2580:	00000000 	nop
    2584:	ac980260 	sw	t8,608(a0)
    2588:	ac990264 	sw	t9,612(a0)
    258c:	03e00008 	jr	ra
    2590:	00000000 	nop

00002594 <func_80987174>:
    2594:	27bdffe0 	addiu	sp,sp,-32
    2598:	afbf001c 	sw	ra,28(sp)
    259c:	3c050000 	lui	a1,0x0
    25a0:	afa40020 	sw	a0,32(sp)
    25a4:	24a50000 	addiu	a1,a1,0
    25a8:	afa00010 	sw	zero,16(sp)
    25ac:	24060002 	li	a2,2
    25b0:	0c000000 	jal	0 <func_80984BE0>
    25b4:	3c07c100 	lui	a3,0xc100
    25b8:	8faf0020 	lw	t7,32(sp)
    25bc:	240e001e 	li	t6,30
    25c0:	adee0260 	sw	t6,608(t7)
    25c4:	8fbf001c 	lw	ra,28(sp)
    25c8:	27bd0020 	addiu	sp,sp,32
    25cc:	03e00008 	jr	ra
    25d0:	00000000 	nop

000025d4 <func_809871B4>:
    25d4:	27bdffe0 	addiu	sp,sp,-32
    25d8:	10a00007 	beqz	a1,25f8 <func_809871B4+0x24>
    25dc:	afbf001c 	sw	ra,28(sp)
    25e0:	3c050000 	lui	a1,0x0
    25e4:	24a50000 	addiu	a1,a1,0
    25e8:	00003025 	move	a2,zero
    25ec:	24070000 	li	a3,0
    25f0:	0c000000 	jal	0 <func_80984BE0>
    25f4:	afa00010 	sw	zero,16(sp)
    25f8:	8fbf001c 	lw	ra,28(sp)
    25fc:	27bd0020 	addiu	sp,sp,32
    2600:	03e00008 	jr	ra
    2604:	00000000 	nop

00002608 <func_809871E8>:
    2608:	27bdffe0 	addiu	sp,sp,-32
    260c:	afa40020 	sw	a0,32(sp)
    2610:	afbf0014 	sw	ra,20(sp)
    2614:	afa50024 	sw	a1,36(sp)
    2618:	00a02025 	move	a0,a1
    261c:	0c000000 	jal	0 <func_80984BE0>
    2620:	24050005 	li	a1,5
    2624:	1040001c 	beqz	v0,2698 <func_809871E8+0x90>
    2628:	8fa70020 	lw	a3,32(sp)
    262c:	94460000 	lhu	a2,0(v0)
    2630:	8ce30274 	lw	v1,628(a3)
    2634:	2401000c 	li	at,12
    2638:	50c30018 	beql	a2,v1,269c <func_809871E8+0x94>
    263c:	8fbf0014 	lw	ra,20(sp)
    2640:	10c10006 	beq	a2,at,265c <func_809871E8+0x54>
    2644:	00e02025 	move	a0,a3
    2648:	2401000d 	li	at,13
    264c:	10c10008 	beq	a2,at,2670 <func_809871E8+0x68>
    2650:	00e02025 	move	a0,a3
    2654:	1000000a 	b	2680 <func_809871E8+0x78>
    2658:	3c040000 	lui	a0,0x0
    265c:	8fa50024 	lw	a1,36(sp)
    2660:	0c000000 	jal	0 <func_80984BE0>
    2664:	afa60018 	sw	a2,24(sp)
    2668:	10000009 	b	2690 <func_809871E8+0x88>
    266c:	8fa60018 	lw	a2,24(sp)
    2670:	0c000000 	jal	0 <func_80984BE0>
    2674:	afa60018 	sw	a2,24(sp)
    2678:	10000005 	b	2690 <func_809871E8+0x88>
    267c:	8fa60018 	lw	a2,24(sp)
    2680:	248400f8 	addiu	a0,a0,248
    2684:	0c000000 	jal	0 <func_80984BE0>
    2688:	afa60018 	sw	a2,24(sp)
    268c:	8fa60018 	lw	a2,24(sp)
    2690:	8fae0020 	lw	t6,32(sp)
    2694:	adc60274 	sw	a2,628(t6)
    2698:	8fbf0014 	lw	ra,20(sp)
    269c:	27bd0020 	addiu	sp,sp,32
    26a0:	03e00008 	jr	ra
    26a4:	00000000 	nop

000026a8 <func_80987288>:
    26a8:	27bdffe8 	addiu	sp,sp,-24
    26ac:	afbf0014 	sw	ra,20(sp)
    26b0:	0c000000 	jal	0 <func_80984BE0>
    26b4:	00000000 	nop
    26b8:	8fbf0014 	lw	ra,20(sp)
    26bc:	27bd0018 	addiu	sp,sp,24
    26c0:	03e00008 	jr	ra
    26c4:	00000000 	nop

000026c8 <func_809872A8>:
    26c8:	27bdffe0 	addiu	sp,sp,-32
    26cc:	afbf001c 	sw	ra,28(sp)
    26d0:	afb00018 	sw	s0,24(sp)
    26d4:	0c000000 	jal	0 <func_80984BE0>
    26d8:	00808025 	move	s0,a0
    26dc:	0c000000 	jal	0 <func_80984BE0>
    26e0:	02002025 	move	a0,s0
    26e4:	0c000000 	jal	0 <func_80984BE0>
    26e8:	02002025 	move	a0,s0
    26ec:	0c000000 	jal	0 <func_80984BE0>
    26f0:	02002025 	move	a0,s0
    26f4:	0c000000 	jal	0 <func_80984BE0>
    26f8:	02002025 	move	a0,s0
    26fc:	8fbf001c 	lw	ra,28(sp)
    2700:	8fb00018 	lw	s0,24(sp)
    2704:	27bd0020 	addiu	sp,sp,32
    2708:	03e00008 	jr	ra
    270c:	00000000 	nop

00002710 <func_809872F0>:
    2710:	27bdffe8 	addiu	sp,sp,-24
    2714:	afbf0014 	sw	ra,20(sp)
    2718:	afa40018 	sw	a0,24(sp)
    271c:	0c000000 	jal	0 <func_80984BE0>
    2720:	afa5001c 	sw	a1,28(sp)
    2724:	0c000000 	jal	0 <func_80984BE0>
    2728:	8fa40018 	lw	a0,24(sp)
    272c:	0c000000 	jal	0 <func_80984BE0>
    2730:	8fa40018 	lw	a0,24(sp)
    2734:	8fa40018 	lw	a0,24(sp)
    2738:	0c000000 	jal	0 <func_80984BE0>
    273c:	8fa5001c 	lw	a1,28(sp)
    2740:	8fbf0014 	lw	ra,20(sp)
    2744:	27bd0018 	addiu	sp,sp,24
    2748:	03e00008 	jr	ra
    274c:	00000000 	nop

00002750 <func_80987330>:
    2750:	27bdffe0 	addiu	sp,sp,-32
    2754:	afbf0014 	sw	ra,20(sp)
    2758:	0c000000 	jal	0 <func_80984BE0>
    275c:	afa40020 	sw	a0,32(sp)
    2760:	0c000000 	jal	0 <func_80984BE0>
    2764:	8fa40020 	lw	a0,32(sp)
    2768:	afa2001c 	sw	v0,28(sp)
    276c:	0c000000 	jal	0 <func_80984BE0>
    2770:	8fa40020 	lw	a0,32(sp)
    2774:	8fa40020 	lw	a0,32(sp)
    2778:	0c000000 	jal	0 <func_80984BE0>
    277c:	8fa5001c 	lw	a1,28(sp)
    2780:	8fbf0014 	lw	ra,20(sp)
    2784:	27bd0020 	addiu	sp,sp,32
    2788:	03e00008 	jr	ra
    278c:	00000000 	nop

00002790 <DemoIm_Update>:
    2790:	27bdffe8 	addiu	sp,sp,-24
    2794:	afbf0014 	sw	ra,20(sp)
    2798:	8c820260 	lw	v0,608(a0)
    279c:	04400008 	bltz	v0,27c0 <DemoIm_Update+0x30>
    27a0:	2841001f 	slti	at,v0,31
    27a4:	10200006 	beqz	at,27c0 <DemoIm_Update+0x30>
    27a8:	00027080 	sll	t6,v0,0x2
    27ac:	3c030000 	lui	v1,0x0
    27b0:	006e1821 	addu	v1,v1,t6
    27b4:	8c630f2c 	lw	v1,3884(v1)
    27b8:	14600006 	bnez	v1,27d4 <DemoIm_Update+0x44>
    27bc:	00000000 	nop
    27c0:	3c040000 	lui	a0,0x0
    27c4:	0c000000 	jal	0 <func_80984BE0>
    27c8:	24840134 	addiu	a0,a0,308
    27cc:	10000004 	b	27e0 <DemoIm_Update+0x50>
    27d0:	8fbf0014 	lw	ra,20(sp)
    27d4:	0060f809 	jalr	v1
    27d8:	00000000 	nop
    27dc:	8fbf0014 	lw	ra,20(sp)
    27e0:	27bd0018 	addiu	sp,sp,24
    27e4:	03e00008 	jr	ra
    27e8:	00000000 	nop

000027ec <DemoIm_Init>:
    27ec:	27bdffd0 	addiu	sp,sp,-48
    27f0:	afb10028 	sw	s1,40(sp)
    27f4:	afb00024 	sw	s0,36(sp)
    27f8:	00808025 	move	s0,a0
    27fc:	00a08825 	move	s1,a1
    2800:	afbf002c 	sw	ra,44(sp)
    2804:	3c060000 	lui	a2,0x0
    2808:	24c60000 	addiu	a2,a2,0
    280c:	24050000 	li	a1,0
    2810:	248400b4 	addiu	a0,a0,180
    2814:	0c000000 	jal	0 <func_80984BE0>
    2818:	3c0741f0 	lui	a3,0x41f0
    281c:	02002025 	move	a0,s0
    2820:	0c000000 	jal	0 <func_80984BE0>
    2824:	02202825 	move	a1,s1
    2828:	3c060000 	lui	a2,0x0
    282c:	260e0190 	addiu	t6,s0,400
    2830:	260f01f6 	addiu	t7,s0,502
    2834:	24180011 	li	t8,17
    2838:	afb80018 	sw	t8,24(sp)
    283c:	afaf0014 	sw	t7,20(sp)
    2840:	afae0010 	sw	t6,16(sp)
    2844:	24c60000 	addiu	a2,a2,0
    2848:	02202025 	move	a0,s1
    284c:	2605014c 	addiu	a1,s0,332
    2850:	0c000000 	jal	0 <func_80984BE0>
    2854:	00003825 	move	a3,zero
    2858:	8e190004 	lw	t9,4(s0)
    285c:	8609001c 	lh	t1,28(s0)
    2860:	2401fffe 	li	at,-2
    2864:	03214024 	and	t0,t9,at
    2868:	252afffe 	addiu	t2,t1,-2
    286c:	2d410005 	sltiu	at,t2,5
    2870:	10200020 	beqz	at,28f4 <DemoIm_Init+0x108>
    2874:	ae080004 	sw	t0,4(s0)
    2878:	000a5080 	sll	t2,t2,0x2
    287c:	3c010000 	lui	at,0x0
    2880:	002a0821 	addu	at,at,t2
    2884:	8c2a01f4 	lw	t2,500(at)
    2888:	01400008 	jr	t2
    288c:	00000000 	nop
    2890:	02002025 	move	a0,s0
    2894:	0c000000 	jal	0 <func_80984BE0>
    2898:	02202825 	move	a1,s1
    289c:	10000019 	b	2904 <DemoIm_Init+0x118>
    28a0:	8fbf002c 	lw	ra,44(sp)
    28a4:	02002025 	move	a0,s0
    28a8:	0c000000 	jal	0 <func_80984BE0>
    28ac:	02202825 	move	a1,s1
    28b0:	10000014 	b	2904 <DemoIm_Init+0x118>
    28b4:	8fbf002c 	lw	ra,44(sp)
    28b8:	02002025 	move	a0,s0
    28bc:	0c000000 	jal	0 <func_80984BE0>
    28c0:	02202825 	move	a1,s1
    28c4:	1000000f 	b	2904 <DemoIm_Init+0x118>
    28c8:	8fbf002c 	lw	ra,44(sp)
    28cc:	02002025 	move	a0,s0
    28d0:	0c000000 	jal	0 <func_80984BE0>
    28d4:	02202825 	move	a1,s1
    28d8:	1000000a 	b	2904 <DemoIm_Init+0x118>
    28dc:	8fbf002c 	lw	ra,44(sp)
    28e0:	02002025 	move	a0,s0
    28e4:	0c000000 	jal	0 <func_80984BE0>
    28e8:	02202825 	move	a1,s1
    28ec:	10000005 	b	2904 <DemoIm_Init+0x118>
    28f0:	8fbf002c 	lw	ra,44(sp)
    28f4:	02002025 	move	a0,s0
    28f8:	0c000000 	jal	0 <func_80984BE0>
    28fc:	02202825 	move	a1,s1
    2900:	8fbf002c 	lw	ra,44(sp)
    2904:	8fb00024 	lw	s0,36(sp)
    2908:	8fb10028 	lw	s1,40(sp)
    290c:	03e00008 	jr	ra
    2910:	27bd0030 	addiu	sp,sp,48

00002914 <DemoIm_Destroy>:
    2914:	27bdffe8 	addiu	sp,sp,-24
    2918:	afbf0014 	sw	ra,20(sp)
    291c:	0c000000 	jal	0 <func_80984BE0>
    2920:	00000000 	nop
    2924:	8fbf0014 	lw	ra,20(sp)
    2928:	27bd0018 	addiu	sp,sp,24
    292c:	03e00008 	jr	ra
    2930:	00000000 	nop

00002934 <func_80987514>:
    2934:	afa40000 	sw	a0,0(sp)
    2938:	8fa40014 	lw	a0,20(sp)
    293c:	afa7000c 	sw	a3,12(sp)
    2940:	24010009 	li	at,9
    2944:	8c8e0280 	lw	t6,640(a0)
    2948:	51c0001c 	beqzl	t6,29bc <func_80987514+0x88>
    294c:	8c9902d0 	lw	t9,720(a0)
    2950:	10a10006 	beq	a1,at,296c <func_80987514+0x38>
    2954:	8fa20010 	lw	v0,16(sp)
    2958:	24010010 	li	at,16
    295c:	10a1000d 	beq	a1,at,2994 <func_80987514+0x60>
    2960:	8fa20010 	lw	v0,16(sp)
    2964:	10000015 	b	29bc <func_80987514+0x88>
    2968:	8c9902d0 	lw	t9,720(a0)
    296c:	248302e2 	addiu	v1,a0,738
    2970:	84780002 	lh	t8,2(v1)
    2974:	844f0000 	lh	t7,0(v0)
    2978:	84480002 	lh	t0,2(v0)
    297c:	01f8c821 	addu	t9,t7,t8
    2980:	a4590000 	sh	t9,0(v0)
    2984:	84690000 	lh	t1,0(v1)
    2988:	01095023 	subu	t2,t0,t1
    298c:	1000000a 	b	29b8 <func_80987514+0x84>
    2990:	a44a0002 	sh	t2,2(v0)
    2994:	248302dc 	addiu	v1,a0,732
    2998:	846c0002 	lh	t4,2(v1)
    299c:	844b0000 	lh	t3,0(v0)
    29a0:	844e0004 	lh	t6,4(v0)
    29a4:	016c6821 	addu	t5,t3,t4
    29a8:	a44d0000 	sh	t5,0(v0)
    29ac:	846f0000 	lh	t7,0(v1)
    29b0:	01cfc021 	addu	t8,t6,t7
    29b4:	a4580004 	sh	t8,4(v0)
    29b8:	8c9902d0 	lw	t9,720(a0)
    29bc:	2401000f 	li	at,15
    29c0:	13200005 	beqz	t9,29d8 <func_80987514+0xa4>
    29c4:	00000000 	nop
    29c8:	14a10003 	bne	a1,at,29d8 <func_80987514+0xa4>
    29cc:	3c080000 	lui	t0,0x0
    29d0:	25080000 	addiu	t0,t0,0
    29d4:	acc80000 	sw	t0,0(a2)
    29d8:	03e00008 	jr	ra
    29dc:	00001025 	move	v0,zero

000029e0 <func_809875C0>:
    29e0:	27bdffc8 	addiu	sp,sp,-56
    29e4:	24010010 	li	at,16
    29e8:	afbf0014 	sw	ra,20(sp)
    29ec:	afa40038 	sw	a0,56(sp)
    29f0:	afa60040 	sw	a2,64(sp)
    29f4:	14a10019 	bne	a1,at,2a5c <func_809875C0+0x7c>
    29f8:	afa70044 	sw	a3,68(sp)
    29fc:	3c0e0000 	lui	t6,0x0
    2a00:	25ce0000 	addiu	t6,t6,0
    2a04:	8dd80000 	lw	t8,0(t6)
    2a08:	27a40028 	addiu	a0,sp,40
    2a0c:	27a5001c 	addiu	a1,sp,28
    2a10:	ac980000 	sw	t8,0(a0)
    2a14:	8dcf0004 	lw	t7,4(t6)
    2a18:	ac8f0004 	sw	t7,4(a0)
    2a1c:	8dd80008 	lw	t8,8(t6)
    2a20:	0c000000 	jal	0 <func_80984BE0>
    2a24:	ac980008 	sw	t8,8(a0)
    2a28:	8fa20048 	lw	v0,72(sp)
    2a2c:	c7a4001c 	lwc1	$f4,28(sp)
    2a30:	84590030 	lh	t9,48(v0)
    2a34:	e4440038 	swc1	$f4,56(v0)
    2a38:	c7a60020 	lwc1	$f6,32(sp)
    2a3c:	84480032 	lh	t0,50(v0)
    2a40:	84490034 	lh	t1,52(v0)
    2a44:	e446003c 	swc1	$f6,60(v0)
    2a48:	c7a80024 	lwc1	$f8,36(sp)
    2a4c:	a4590044 	sh	t9,68(v0)
    2a50:	a4480046 	sh	t0,70(v0)
    2a54:	a4490048 	sh	t1,72(v0)
    2a58:	e4480040 	swc1	$f8,64(v0)
    2a5c:	8fbf0014 	lw	ra,20(sp)
    2a60:	27bd0038 	addiu	sp,sp,56
    2a64:	03e00008 	jr	ra
    2a68:	00000000 	nop

00002a6c <func_8098764C>:
    2a6c:	afa40000 	sw	a0,0(sp)
    2a70:	03e00008 	jr	ra
    2a74:	afa50004 	sw	a1,4(sp)

00002a78 <func_80987658>:
    2a78:	27bdff90 	addiu	sp,sp,-112
    2a7c:	afbf0024 	sw	ra,36(sp)
    2a80:	afa40070 	sw	a0,112(sp)
    2a84:	afa50074 	sw	a1,116(sp)
    2a88:	8482025c 	lh	v0,604(a0)
    2a8c:	3c180000 	lui	t8,0x0
    2a90:	3c060000 	lui	a2,0x0
    2a94:	00027880 	sll	t7,v0,0x2
    2a98:	030fc021 	addu	t8,t8,t7
    2a9c:	8f180000 	lw	t8,0(t8)
    2aa0:	24c60170 	addiu	a2,a2,368
    2aa4:	27a40048 	addiu	a0,sp,72
    2aa8:	afb80060 	sw	t8,96(sp)
    2aac:	8ca50000 	lw	a1,0(a1)
    2ab0:	24070388 	li	a3,904
    2ab4:	0c000000 	jal	0 <func_80984BE0>
    2ab8:	afa50058 	sw	a1,88(sp)
    2abc:	8fa90074 	lw	t1,116(sp)
    2ac0:	0c000000 	jal	0 <func_80984BE0>
    2ac4:	8d240000 	lw	a0,0(t1)
    2ac8:	8fa80058 	lw	t0,88(sp)
    2acc:	8fa70060 	lw	a3,96(sp)
    2ad0:	3c0bdb06 	lui	t3,0xdb06
    2ad4:	8d0202c0 	lw	v0,704(t0)
    2ad8:	00076100 	sll	t4,a3,0x4
    2adc:	000c6f02 	srl	t5,t4,0x1c
    2ae0:	3c0f0000 	lui	t7,0x0
    2ae4:	244a0008 	addiu	t2,v0,8
    2ae8:	25ef0000 	addiu	t7,t7,0
    2aec:	000d7080 	sll	t6,t5,0x2
    2af0:	356b0020 	ori	t3,t3,0x20
    2af4:	ad0a02c0 	sw	t2,704(t0)
    2af8:	01cf2021 	addu	a0,t6,t7
    2afc:	ac4b0000 	sw	t3,0(v0)
    2b00:	8c980000 	lw	t8,0(a0)
    2b04:	3c0100ff 	lui	at,0xff
    2b08:	3421ffff 	ori	at,at,0xffff
    2b0c:	00e12824 	and	a1,a3,at
    2b10:	3c068000 	lui	a2,0x8000
    2b14:	0305c821 	addu	t9,t8,a1
    2b18:	03264821 	addu	t1,t9,a2
    2b1c:	ac490004 	sw	t1,4(v0)
    2b20:	8d0202c0 	lw	v0,704(t0)
    2b24:	3c0bdb06 	lui	t3,0xdb06
    2b28:	356b0024 	ori	t3,t3,0x24
    2b2c:	244a0008 	addiu	t2,v0,8
    2b30:	ad0a02c0 	sw	t2,704(t0)
    2b34:	ac4b0000 	sw	t3,0(v0)
    2b38:	8c8c0000 	lw	t4,0(a0)
    2b3c:	241900ff 	li	t9,255
    2b40:	3c18fb00 	lui	t8,0xfb00
    2b44:	01856821 	addu	t5,t4,a1
    2b48:	01a67021 	addu	t6,t5,a2
    2b4c:	ac4e0004 	sw	t6,4(v0)
    2b50:	8d0202c0 	lw	v0,704(t0)
    2b54:	3c0b0000 	lui	t3,0x0
    2b58:	3c0adb06 	lui	t2,0xdb06
    2b5c:	244f0008 	addiu	t7,v0,8
    2b60:	ad0f02c0 	sw	t7,704(t0)
    2b64:	ac590004 	sw	t9,4(v0)
    2b68:	ac580000 	sw	t8,0(v0)
    2b6c:	8d0202c0 	lw	v0,704(t0)
    2b70:	354a0030 	ori	t2,t2,0x30
    2b74:	256b0010 	addiu	t3,t3,16
    2b78:	24490008 	addiu	t1,v0,8
    2b7c:	ad0902c0 	sw	t1,704(t0)
    2b80:	ac4b0004 	sw	t3,4(v0)
    2b84:	ac4a0000 	sw	t2,0(v0)
    2b88:	8fa30070 	lw	v1,112(sp)
    2b8c:	3c0d0000 	lui	t5,0x0
    2b90:	3c0c0000 	lui	t4,0x0
    2b94:	2462014c 	addiu	v0,v1,332
    2b98:	8c450004 	lw	a1,4(v0)
    2b9c:	8c460020 	lw	a2,32(v0)
    2ba0:	90470002 	lbu	a3,2(v0)
    2ba4:	258c0000 	addiu	t4,t4,0
    2ba8:	25ad0000 	addiu	t5,t5,0
    2bac:	afad0014 	sw	t5,20(sp)
    2bb0:	afac0010 	sw	t4,16(sp)
    2bb4:	8fa40074 	lw	a0,116(sp)
    2bb8:	0c000000 	jal	0 <func_80984BE0>
    2bbc:	afa30018 	sw	v1,24(sp)
    2bc0:	8fae0074 	lw	t6,116(sp)
    2bc4:	3c060000 	lui	a2,0x0
    2bc8:	24c60180 	addiu	a2,a2,384
    2bcc:	27a40048 	addiu	a0,sp,72
    2bd0:	2407039d 	li	a3,925
    2bd4:	0c000000 	jal	0 <func_80984BE0>
    2bd8:	8dc50000 	lw	a1,0(t6)
    2bdc:	8fbf0024 	lw	ra,36(sp)
    2be0:	27bd0070 	addiu	sp,sp,112
    2be4:	03e00008 	jr	ra
    2be8:	00000000 	nop

00002bec <DemoIm_Draw>:
    2bec:	27bdffe8 	addiu	sp,sp,-24
    2bf0:	afbf0014 	sw	ra,20(sp)
    2bf4:	8c820264 	lw	v0,612(a0)
    2bf8:	04400008 	bltz	v0,2c1c <DemoIm_Draw+0x30>
    2bfc:	28410003 	slti	at,v0,3
    2c00:	10200006 	beqz	at,2c1c <DemoIm_Draw+0x30>
    2c04:	00027080 	sll	t6,v0,0x2
    2c08:	3c030000 	lui	v1,0x0
    2c0c:	006e1821 	addu	v1,v1,t6
    2c10:	8c630fb4 	lw	v1,4020(v1)
    2c14:	14600006 	bnez	v1,2c30 <DemoIm_Draw+0x44>
    2c18:	00000000 	nop
    2c1c:	3c040000 	lui	a0,0x0
    2c20:	0c000000 	jal	0 <func_80984BE0>
    2c24:	24840190 	addiu	a0,a0,400
    2c28:	10000004 	b	2c3c <DemoIm_Draw+0x50>
    2c2c:	8fbf0014 	lw	ra,20(sp)
    2c30:	0060f809 	jalr	v1
    2c34:	00000000 	nop
    2c38:	8fbf0014 	lw	ra,20(sp)
    2c3c:	27bd0018 	addiu	sp,sp,24
    2c40:	03e00008 	jr	ra
    2c44:	00000000 	nop
	...
