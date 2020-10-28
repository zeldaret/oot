
build/src/overlays/actors/ovl_Boss_Fd/z_boss_fd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808CADC0>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	00001025 	move	v0,zero
       c:	908e0024 	lbu	t6,36(a0)
      10:	24420001 	addiu	v0,v0,1
      14:	00021400 	sll	v0,v0,0x10
      18:	15c00025 	bnez	t6,b0 <func_808CADC0+0xb0>
      1c:	00021403 	sra	v0,v0,0x10
      20:	240f0001 	li	t7,1
      24:	a08f0024 	sb	t7,36(a0)
      28:	8cb90000 	lw	t9,0(a1)
      2c:	3c01447a 	lui	at,0x447a
      30:	44813000 	mtc1	at,$f6
      34:	ac990000 	sw	t9,0(a0)
      38:	8cb80004 	lw	t8,4(a1)
      3c:	240c00ff 	li	t4,255
      40:	3c014120 	lui	at,0x4120
      44:	ac980004 	sw	t8,4(a0)
      48:	8cb90008 	lw	t9,8(a1)
      4c:	44816000 	mtc1	at,$f12
      50:	ac990008 	sw	t9,8(a0)
      54:	8cc90000 	lw	t1,0(a2)
      58:	ac89000c 	sw	t1,12(a0)
      5c:	8cc80004 	lw	t0,4(a2)
      60:	ac880010 	sw	t0,16(a0)
      64:	8cc90008 	lw	t1,8(a2)
      68:	ac890014 	sw	t1,20(a0)
      6c:	8ceb0000 	lw	t3,0(a3)
      70:	ac8b0018 	sw	t3,24(a0)
      74:	8cea0004 	lw	t2,4(a3)
      78:	ac8a001c 	sw	t2,28(a0)
      7c:	8ceb0008 	lw	t3,8(a3)
      80:	ac8b0020 	sw	t3,32(a0)
      84:	c7a40028 	lwc1	$f4,40(sp)
      88:	a48c002a 	sh	t4,42(a0)
      8c:	46062203 	div.s	$f8,$f4,$f6
      90:	e4880030 	swc1	$f8,48(a0)
      94:	0c000000 	jal	0 <func_808CADC0>
      98:	afa40018 	sw	a0,24(sp)
      9c:	4600028d 	trunc.w.s	$f10,$f0
      a0:	8fa40018 	lw	a0,24(sp)
      a4:	44185000 	mfc1	t8,$f10
      a8:	10000004 	b	bc <func_808CADC0+0xbc>
      ac:	a0980025 	sb	t8,37(a0)
      b0:	28410096 	slti	at,v0,150
      b4:	1420ffd5 	bnez	at,c <func_808CADC0+0xc>
      b8:	2484003c 	addiu	a0,a0,60
      bc:	8fbf0014 	lw	ra,20(sp)
      c0:	27bd0018 	addiu	sp,sp,24
      c4:	03e00008 	jr	ra
      c8:	00000000 	nop

000000cc <func_808CAE8C>:
      cc:	27bdffe8 	addiu	sp,sp,-24
      d0:	afbf0014 	sw	ra,20(sp)
      d4:	00001025 	move	v0,zero
      d8:	908e0024 	lbu	t6,36(a0)
      dc:	24420001 	addiu	v0,v0,1
      e0:	00021400 	sll	v0,v0,0x10
      e4:	15c00026 	bnez	t6,180 <func_808CAE8C+0xb4>
      e8:	00021403 	sra	v0,v0,0x10
      ec:	240f0002 	li	t7,2
      f0:	a08f0024 	sb	t7,36(a0)
      f4:	8cb90000 	lw	t9,0(a1)
      f8:	3c01447a 	lui	at,0x447a
      fc:	44813000 	mtc1	at,$f6
     100:	ac990000 	sw	t9,0(a0)
     104:	8cb80004 	lw	t8,4(a1)
     108:	3c0142c8 	lui	at,0x42c8
     10c:	44816000 	mtc1	at,$f12
     110:	ac980004 	sw	t8,4(a0)
     114:	8cb90008 	lw	t9,8(a1)
     118:	ac990008 	sw	t9,8(a0)
     11c:	8cc90000 	lw	t1,0(a2)
     120:	ac89000c 	sw	t1,12(a0)
     124:	8cc80004 	lw	t0,4(a2)
     128:	ac880010 	sw	t0,16(a0)
     12c:	8cc90008 	lw	t1,8(a2)
     130:	ac890014 	sw	t1,20(a0)
     134:	8ceb0000 	lw	t3,0(a3)
     138:	ac8b0018 	sw	t3,24(a0)
     13c:	8cea0004 	lw	t2,4(a3)
     140:	ac8a001c 	sw	t2,28(a0)
     144:	8ceb0008 	lw	t3,8(a3)
     148:	ac8b0020 	sw	t3,32(a0)
     14c:	c7a40028 	lwc1	$f4,40(sp)
     150:	46062203 	div.s	$f8,$f4,$f6
     154:	e4880030 	swc1	$f8,48(a0)
     158:	0c000000 	jal	0 <func_808CADC0>
     15c:	afa40018 	sw	a0,24(sp)
     160:	8fa40018 	lw	a0,24(sp)
     164:	3c0142c8 	lui	at,0x42c8
     168:	44816000 	mtc1	at,$f12
     16c:	0c000000 	jal	0 <func_808CADC0>
     170:	e4800034 	swc1	$f0,52(a0)
     174:	8fa40018 	lw	a0,24(sp)
     178:	10000004 	b	18c <func_808CAE8C+0xc0>
     17c:	e4800038 	swc1	$f0,56(a0)
     180:	28410096 	slti	at,v0,150
     184:	1420ffd4 	bnez	at,d8 <func_808CAE8C+0xc>
     188:	2484003c 	addiu	a0,a0,60
     18c:	8fbf0014 	lw	ra,20(sp)
     190:	27bd0018 	addiu	sp,sp,24
     194:	03e00008 	jr	ra
     198:	00000000 	nop

0000019c <func_808CAF5C>:
     19c:	00001025 	move	v0,zero
     1a0:	908e0024 	lbu	t6,36(a0)
     1a4:	24420001 	addiu	v0,v0,1
     1a8:	00021400 	sll	v0,v0,0x10
     1ac:	15c0001c 	bnez	t6,220 <func_808CAF5C+0x84>
     1b0:	00021403 	sra	v0,v0,0x10
     1b4:	240f0003 	li	t7,3
     1b8:	a08f0024 	sb	t7,36(a0)
     1bc:	8cb90000 	lw	t9,0(a1)
     1c0:	3c0143c8 	lui	at,0x43c8
     1c4:	44813000 	mtc1	at,$f6
     1c8:	ac990000 	sw	t9,0(a0)
     1cc:	8cb80004 	lw	t8,4(a1)
     1d0:	ac980004 	sw	t8,4(a0)
     1d4:	8cb90008 	lw	t9,8(a1)
     1d8:	ac990008 	sw	t9,8(a0)
     1dc:	8cc90000 	lw	t1,0(a2)
     1e0:	ac89000c 	sw	t1,12(a0)
     1e4:	8cc80004 	lw	t0,4(a2)
     1e8:	ac880010 	sw	t0,16(a0)
     1ec:	8cc90008 	lw	t1,8(a2)
     1f0:	ac890014 	sw	t1,20(a0)
     1f4:	8ceb0000 	lw	t3,0(a3)
     1f8:	ac8b0018 	sw	t3,24(a0)
     1fc:	8cea0004 	lw	t2,4(a3)
     200:	ac8a001c 	sw	t2,28(a0)
     204:	8ceb0008 	lw	t3,8(a3)
     208:	a480002c 	sh	zero,44(a0)
     20c:	ac8b0020 	sw	t3,32(a0)
     210:	c7a40010 	lwc1	$f4,16(sp)
     214:	46062203 	div.s	$f8,$f4,$f6
     218:	03e00008 	jr	ra
     21c:	e4880030 	swc1	$f8,48(a0)
     220:	28410096 	slti	at,v0,150
     224:	1420ffde 	bnez	at,1a0 <func_808CAF5C+0x4>
     228:	2484003c 	addiu	a0,a0,60
     22c:	03e00008 	jr	ra
     230:	00000000 	nop

00000234 <func_808CAFF4>:
     234:	27bdffe8 	addiu	sp,sp,-24
     238:	afbf0014 	sw	ra,20(sp)
     23c:	00001025 	move	v0,zero
     240:	908e0024 	lbu	t6,36(a0)
     244:	24420001 	addiu	v0,v0,1
     248:	00021400 	sll	v0,v0,0x10
     24c:	15c00035 	bnez	t6,324 <func_808CAFF4+0xf0>
     250:	00021403 	sra	v0,v0,0x10
     254:	240f0004 	li	t7,4
     258:	a08f0024 	sb	t7,36(a0)
     25c:	a0800025 	sb	zero,37(a0)
     260:	8cb90000 	lw	t9,0(a1)
     264:	3c014120 	lui	at,0x4120
     268:	44816000 	mtc1	at,$f12
     26c:	ac990000 	sw	t9,0(a0)
     270:	8cb80004 	lw	t8,4(a1)
     274:	c4840000 	lwc1	$f4,0(a0)
     278:	ac980004 	sw	t8,4(a0)
     27c:	8cb90008 	lw	t9,8(a1)
     280:	c48a0004 	lwc1	$f10,4(a0)
     284:	ac990008 	sw	t9,8(a0)
     288:	8cc90000 	lw	t1,0(a2)
     28c:	ac89000c 	sw	t1,12(a0)
     290:	8cc80004 	lw	t0,4(a2)
     294:	c486000c 	lwc1	$f6,12(a0)
     298:	ac880010 	sw	t0,16(a0)
     29c:	8cc90008 	lw	t1,8(a2)
     2a0:	46062201 	sub.s	$f8,$f4,$f6
     2a4:	c4900010 	lwc1	$f16,16(a0)
     2a8:	ac890014 	sw	t1,20(a0)
     2ac:	8ceb0000 	lw	t3,0(a3)
     2b0:	c4860014 	lwc1	$f6,20(a0)
     2b4:	c4840008 	lwc1	$f4,8(a0)
     2b8:	ac8b0018 	sw	t3,24(a0)
     2bc:	8cea0004 	lw	t2,4(a3)
     2c0:	46105481 	sub.s	$f18,$f10,$f16
     2c4:	44805000 	mtc1	zero,$f10
     2c8:	ac8a001c 	sw	t2,28(a0)
     2cc:	8ceb0008 	lw	t3,8(a3)
     2d0:	e4880000 	swc1	$f8,0(a0)
     2d4:	46062201 	sub.s	$f8,$f4,$f6
     2d8:	e4920004 	swc1	$f18,4(a0)
     2dc:	e48a0034 	swc1	$f10,52(a0)
     2e0:	ac8b0020 	sw	t3,32(a0)
     2e4:	e4880008 	swc1	$f8,8(a0)
     2e8:	87ac002e 	lh	t4,46(sp)
     2ec:	a48c002a 	sh	t4,42(a0)
     2f0:	0c000000 	jal	0 <func_808CADC0>
     2f4:	afa40018 	sw	a0,24(sp)
     2f8:	8fa40018 	lw	a0,24(sp)
     2fc:	3c0143c8 	lui	at,0x43c8
     300:	44819000 	mtc1	at,$f18
     304:	e4800038 	swc1	$f0,56(a0)
     308:	a480002c 	sh	zero,44(a0)
     30c:	c7b00028 	lwc1	$f16,40(sp)
     310:	46128103 	div.s	$f4,$f16,$f18
     314:	e4840030 	swc1	$f4,48(a0)
     318:	87ad0032 	lh	t5,50(sp)
     31c:	10000004 	b	330 <func_808CAFF4+0xfc>
     320:	a48d002e 	sh	t5,46(a0)
     324:	284100b4 	slti	at,v0,180
     328:	1420ffc5 	bnez	at,240 <func_808CAFF4+0xc>
     32c:	2484003c 	addiu	a0,a0,60
     330:	8fbf0014 	lw	ra,20(sp)
     334:	27bd0018 	addiu	sp,sp,24
     338:	03e00008 	jr	ra
     33c:	00000000 	nop

00000340 <func_808CB100>:
     340:	c4841408 	lwc1	$f4,5128(a0)
     344:	c4861450 	lwc1	$f6,5200(a0)
     348:	44856000 	mtc1	a1,$f12
     34c:	c48a140c 	lwc1	$f10,5132(a0)
     350:	46062001 	sub.s	$f0,$f4,$f6
     354:	c4901454 	lwc1	$f16,5204(a0)
     358:	c4861458 	lwc1	$f6,5208(a0)
     35c:	c4841410 	lwc1	$f4,5136(a0)
     360:	46000005 	abs.s	$f0,$f0
     364:	460c0202 	mul.s	$f8,$f0,$f12
     368:	46105001 	sub.s	$f0,$f10,$f16
     36c:	c4901468 	lwc1	$f16,5224(a0)
     370:	c48a1414 	lwc1	$f10,5140(a0)
     374:	46000005 	abs.s	$f0,$f0
     378:	e4881438 	swc1	$f8,5176(a0)
     37c:	460c0482 	mul.s	$f18,$f0,$f12
     380:	46062001 	sub.s	$f0,$f4,$f6
     384:	c486146c 	lwc1	$f6,5228(a0)
     388:	c4841418 	lwc1	$f4,5144(a0)
     38c:	46000005 	abs.s	$f0,$f0
     390:	e492143c 	swc1	$f18,5180(a0)
     394:	460c0202 	mul.s	$f8,$f0,$f12
     398:	46105001 	sub.s	$f0,$f10,$f16
     39c:	c4901470 	lwc1	$f16,5232(a0)
     3a0:	c48a141c 	lwc1	$f10,5148(a0)
     3a4:	46000005 	abs.s	$f0,$f0
     3a8:	e4881440 	swc1	$f8,5184(a0)
     3ac:	460c0482 	mul.s	$f18,$f0,$f12
     3b0:	46062001 	sub.s	$f0,$f4,$f6
     3b4:	46000005 	abs.s	$f0,$f0
     3b8:	e4921444 	swc1	$f18,5188(a0)
     3bc:	460c0202 	mul.s	$f8,$f0,$f12
     3c0:	46105001 	sub.s	$f0,$f10,$f16
     3c4:	46000005 	abs.s	$f0,$f0
     3c8:	e4881448 	swc1	$f8,5192(a0)
     3cc:	460c0482 	mul.s	$f18,$f0,$f12
     3d0:	03e00008 	jr	ra
     3d4:	e492144c 	swc1	$f18,5196(a0)

000003d8 <func_808CB198>:
     3d8:	27bdffd8 	addiu	sp,sp,-40
     3dc:	afbf001c 	sw	ra,28(sp)
     3e0:	afb00018 	sw	s0,24(sp)
     3e4:	afa5002c 	sw	a1,44(sp)
     3e8:	848e1404 	lh	t6,5124(a0)
     3ec:	00808025 	move	s0,a0
     3f0:	51c00050 	beqzl	t6,534 <func_808CB198+0x15c>
     3f4:	8fbf001c 	lw	ra,28(sp)
     3f8:	c6041438 	lwc1	$f4,5176(s0)
     3fc:	c6061480 	lwc1	$f6,5248(s0)
     400:	24841408 	addiu	a0,a0,5128
     404:	8e051450 	lw	a1,5200(s0)
     408:	46062202 	mul.s	$f8,$f4,$f6
     40c:	8e06145c 	lw	a2,5212(s0)
     410:	afa40024 	sw	a0,36(sp)
     414:	44074000 	mfc1	a3,$f8
     418:	0c000000 	jal	0 <func_808CADC0>
     41c:	00000000 	nop
     420:	c60a143c 	lwc1	$f10,5180(s0)
     424:	c6101480 	lwc1	$f16,5248(s0)
     428:	2604140c 	addiu	a0,s0,5132
     42c:	8e051454 	lw	a1,5204(s0)
     430:	46105482 	mul.s	$f18,$f10,$f16
     434:	8e061460 	lw	a2,5216(s0)
     438:	44079000 	mfc1	a3,$f18
     43c:	0c000000 	jal	0 <func_808CADC0>
     440:	00000000 	nop
     444:	c6041440 	lwc1	$f4,5184(s0)
     448:	c6061480 	lwc1	$f6,5248(s0)
     44c:	26041410 	addiu	a0,s0,5136
     450:	8e051458 	lw	a1,5208(s0)
     454:	46062202 	mul.s	$f8,$f4,$f6
     458:	8e061464 	lw	a2,5220(s0)
     45c:	44074000 	mfc1	a3,$f8
     460:	0c000000 	jal	0 <func_808CADC0>
     464:	00000000 	nop
     468:	c60a1444 	lwc1	$f10,5188(s0)
     46c:	c6101480 	lwc1	$f16,5248(s0)
     470:	26041414 	addiu	a0,s0,5140
     474:	8e051468 	lw	a1,5224(s0)
     478:	46105482 	mul.s	$f18,$f10,$f16
     47c:	8e061474 	lw	a2,5236(s0)
     480:	afa40020 	sw	a0,32(sp)
     484:	44079000 	mfc1	a3,$f18
     488:	0c000000 	jal	0 <func_808CADC0>
     48c:	00000000 	nop
     490:	c6041448 	lwc1	$f4,5192(s0)
     494:	c6061480 	lwc1	$f6,5248(s0)
     498:	26041418 	addiu	a0,s0,5144
     49c:	8e05146c 	lw	a1,5228(s0)
     4a0:	46062202 	mul.s	$f8,$f4,$f6
     4a4:	8e061478 	lw	a2,5240(s0)
     4a8:	44074000 	mfc1	a3,$f8
     4ac:	0c000000 	jal	0 <func_808CADC0>
     4b0:	00000000 	nop
     4b4:	c60a144c 	lwc1	$f10,5196(s0)
     4b8:	c6101480 	lwc1	$f16,5248(s0)
     4bc:	2604141c 	addiu	a0,s0,5148
     4c0:	8e051470 	lw	a1,5232(s0)
     4c4:	46105482 	mul.s	$f18,$f10,$f16
     4c8:	8e06147c 	lw	a2,5244(s0)
     4cc:	44079000 	mfc1	a3,$f18
     4d0:	0c000000 	jal	0 <func_808CADC0>
     4d4:	00000000 	nop
     4d8:	3c013f80 	lui	at,0x3f80
     4dc:	44810000 	mtc1	at,$f0
     4e0:	26041480 	addiu	a0,s0,5248
     4e4:	8e071484 	lw	a3,5252(s0)
     4e8:	44050000 	mfc1	a1,$f0
     4ec:	44060000 	mfc1	a2,$f0
     4f0:	0c000000 	jal	0 <func_808CADC0>
     4f4:	00000000 	nop
     4f8:	c6041418 	lwc1	$f4,5144(s0)
     4fc:	c6061488 	lwc1	$f6,5256(s0)
     500:	86051404 	lh	a1,5124(s0)
     504:	46062200 	add.s	$f8,$f4,$f6
     508:	e6081418 	swc1	$f8,5144(s0)
     50c:	8fa70024 	lw	a3,36(sp)
     510:	8fa60020 	lw	a2,32(sp)
     514:	0c000000 	jal	0 <func_808CADC0>
     518:	8fa4002c 	lw	a0,44(sp)
     51c:	3c063dcc 	lui	a2,0x3dcc
     520:	34c6cccd 	ori	a2,a2,0xcccd
     524:	26041488 	addiu	a0,s0,5256
     528:	0c000000 	jal	0 <func_808CADC0>
     52c:	3c053f80 	lui	a1,0x3f80
     530:	8fbf001c 	lw	ra,28(sp)
     534:	8fb00018 	lw	s0,24(sp)
     538:	27bd0028 	addiu	sp,sp,40
     53c:	03e00008 	jr	ra
     540:	00000000 	nop

00000544 <BossFd_Init>:
     544:	27bdffa8 	addiu	sp,sp,-88
     548:	afb00034 	sw	s0,52(sp)
     54c:	00808025 	move	s0,a0
     550:	afb10038 	sw	s1,56(sp)
     554:	00a08825 	move	s1,a1
     558:	afbf003c 	sw	ra,60(sp)
     55c:	00a02025 	move	a0,a1
     560:	0c000000 	jal	0 <func_808CADC0>
     564:	24050014 	li	a1,20
     568:	3c01442a 	lui	at,0x442a
     56c:	44812000 	mtc1	at,$f4
     570:	3c01c2c8 	lui	at,0xc2c8
     574:	44813000 	mtc1	at,$f6
     578:	44804000 	mtc1	zero,$f8
     57c:	26241c24 	addiu	a0,s1,7204
     580:	240e0064 	li	t6,100
     584:	afae0028 	sw	t6,40(sp)
     588:	afa40048 	sw	a0,72(sp)
     58c:	02002825 	move	a1,s0
     590:	02203025 	move	a2,s1
     594:	240700ac 	li	a3,172
     598:	afa0001c 	sw	zero,28(sp)
     59c:	afa00020 	sw	zero,32(sp)
     5a0:	afa00024 	sw	zero,36(sp)
     5a4:	e7a40010 	swc1	$f4,16(sp)
     5a8:	e7a60014 	swc1	$f6,20(sp)
     5ac:	0c000000 	jal	0 <func_808CADC0>
     5b0:	e7a80018 	swc1	$f8,24(sp)
     5b4:	3c050000 	lui	a1,0x0
     5b8:	24a50000 	addiu	a1,a1,0
     5bc:	0c000000 	jal	0 <func_808CADC0>
     5c0:	02002025 	move	a0,s0
     5c4:	44800000 	mtc1	zero,$f0
     5c8:	260400b4 	addiu	a0,s0,180
     5cc:	00003025 	move	a2,zero
     5d0:	44050000 	mfc1	a1,$f0
     5d4:	44070000 	mfc1	a3,$f0
     5d8:	0c000000 	jal	0 <func_808CADC0>
     5dc:	00000000 	nop
     5e0:	3c053d4c 	lui	a1,0x3d4c
     5e4:	34a5cccd 	ori	a1,a1,0xcccd
     5e8:	0c000000 	jal	0 <func_808CADC0>
     5ec:	02002025 	move	a0,s0
     5f0:	3c060601 	lui	a2,0x601
     5f4:	3c070601 	lui	a3,0x601
     5f8:	24e715e4 	addiu	a3,a3,5604
     5fc:	24c61660 	addiu	a2,a2,5728
     600:	02202025 	move	a0,s1
     604:	2605014c 	addiu	a1,s0,332
     608:	afa00010 	sw	zero,16(sp)
     60c:	afa00014 	sw	zero,20(sp)
     610:	0c000000 	jal	0 <func_808CADC0>
     614:	afa00018 	sw	zero,24(sp)
     618:	3c060601 	lui	a2,0x601
     61c:	3c070601 	lui	a3,0x601
     620:	24e71524 	addiu	a3,a3,5412
     624:	24c615a0 	addiu	a2,a2,5536
     628:	02202025 	move	a0,s1
     62c:	26050190 	addiu	a1,s0,400
     630:	afa00010 	sw	zero,16(sp)
     634:	afa00014 	sw	zero,20(sp)
     638:	0c000000 	jal	0 <func_808CADC0>
     63c:	afa00018 	sw	zero,24(sp)
     640:	3c060601 	lui	a2,0x601
     644:	3c070601 	lui	a3,0x601
     648:	24e71464 	addiu	a3,a3,5220
     64c:	24c614e0 	addiu	a2,a2,5344
     650:	02202025 	move	a0,s1
     654:	260501d4 	addiu	a1,s0,468
     658:	afa00010 	sw	zero,16(sp)
     65c:	afa00014 	sw	zero,20(sp)
     660:	0c000000 	jal	0 <func_808CADC0>
     664:	afa00018 	sw	zero,24(sp)
     668:	240f0001 	li	t7,1
     66c:	a60f1402 	sh	t7,5122(s0)
     670:	86181402 	lh	t8,5122(s0)
     674:	57000004 	bnezl	t8,688 <BossFd_Init+0x144>
     678:	44800000 	mtc1	zero,$f0
     67c:	0c000000 	jal	0 <func_808CADC0>
     680:	2404006b 	li	a0,107
     684:	44800000 	mtc1	zero,$f0
     688:	3c01c348 	lui	at,0xc348
     68c:	44815000 	mtc1	at,$f10
     690:	26051490 	addiu	a1,s0,5264
     694:	e600002c 	swc1	$f0,44(s0)
     698:	e6000024 	swc1	$f0,36(s0)
     69c:	e60a0028 	swc1	$f10,40(s0)
     6a0:	afa50044 	sw	a1,68(sp)
     6a4:	0c000000 	jal	0 <func_808CADC0>
     6a8:	02202025 	move	a0,s1
     6ac:	3c070000 	lui	a3,0x0
     6b0:	261914b0 	addiu	t9,s0,5296
     6b4:	8fa50044 	lw	a1,68(sp)
     6b8:	afb90010 	sw	t9,16(sp)
     6bc:	24e70000 	addiu	a3,a3,0
     6c0:	02202025 	move	a0,s1
     6c4:	0c000000 	jal	0 <func_808CADC0>
     6c8:	02003025 	move	a2,s0
     6cc:	00001825 	move	v1,zero
     6d0:	2404000c 	li	a0,12
     6d4:	00640019 	multu	v1,a0
     6d8:	c6100024 	lwc1	$f16,36(s0)
     6dc:	2861001e 	slti	at,v1,30
     6e0:	24630001 	addiu	v1,v1,1
     6e4:	00031c00 	sll	v1,v1,0x10
     6e8:	00031c03 	sra	v1,v1,0x10
     6ec:	00004012 	mflo	t0
     6f0:	02081021 	addu	v0,s0,t0
     6f4:	e450078c 	swc1	$f16,1932(v0)
     6f8:	c6120028 	lwc1	$f18,40(s0)
     6fc:	e4520790 	swc1	$f18,1936(v0)
     700:	c604002c 	lwc1	$f4,44(s0)
     704:	10200007 	beqz	at,724 <BossFd_Init+0x1e0>
     708:	e4440794 	swc1	$f4,1940(v0)
     70c:	c6060024 	lwc1	$f6,36(s0)
     710:	e4460e04 	swc1	$f6,3588(v0)
     714:	c6080028 	lwc1	$f8,40(s0)
     718:	e4480e08 	swc1	$f8,3592(v0)
     71c:	c60a002c 	lwc1	$f10,44(s0)
     720:	e44a0e0c 	swc1	$f10,3596(v0)
     724:	28610064 	slti	at,v1,100
     728:	1420ffea 	bnez	at,6d4 <BossFd_Init+0x190>
     72c:	00000000 	nop
     730:	860b1402 	lh	t3,5122(s0)
     734:	24090018 	li	t1,24
     738:	240a0012 	li	t2,18
     73c:	a20900af 	sb	t1,175(s0)
     740:	15600005 	bnez	t3,758 <BossFd_Init+0x214>
     744:	a60a021e 	sh	t2,542(s0)
     748:	3c0c0000 	lui	t4,0x0
     74c:	258c0000 	addiu	t4,t4,0
     750:	10000004 	b	764 <BossFd_Init+0x220>
     754:	ae0c0218 	sw	t4,536(s0)
     758:	02002025 	move	a0,s0
     75c:	0c000000 	jal	0 <func_808CADC0>
     760:	02202825 	move	a1,s1
     764:	3c050001 	lui	a1,0x1
     768:	00b12821 	addu	a1,a1,s1
     76c:	80a51cbc 	lb	a1,7356(a1)
     770:	0c000000 	jal	0 <func_808CADC0>
     774:	02202025 	move	a0,s1
     778:	50400026 	beqzl	v0,814 <BossFd_Init+0x2d0>
     77c:	c60a0024 	lwc1	$f10,36(s0)
     780:	0c000000 	jal	0 <func_808CADC0>
     784:	02002025 	move	a0,s0
     788:	3c0142c8 	lui	at,0x42c8
     78c:	44819000 	mtc1	at,$f18
     790:	44808000 	mtc1	zero,$f16
     794:	44802000 	mtc1	zero,$f4
     798:	240dffff 	li	t5,-1
     79c:	afad0028 	sw	t5,40(sp)
     7a0:	8fa40048 	lw	a0,72(sp)
     7a4:	02002825 	move	a1,s0
     7a8:	02203025 	move	a2,s1
     7ac:	2407005d 	li	a3,93
     7b0:	afa0001c 	sw	zero,28(sp)
     7b4:	afa00020 	sw	zero,32(sp)
     7b8:	afa00024 	sw	zero,36(sp)
     7bc:	e7b20014 	swc1	$f18,20(sp)
     7c0:	e7b00010 	swc1	$f16,16(sp)
     7c4:	0c000000 	jal	0 <func_808CADC0>
     7c8:	e7a40018 	swc1	$f4,24(sp)
     7cc:	3c0142c8 	lui	at,0x42c8
     7d0:	44813000 	mtc1	at,$f6
     7d4:	3c014348 	lui	at,0x4348
     7d8:	44814000 	mtc1	at,$f8
     7dc:	8fa40048 	lw	a0,72(sp)
     7e0:	02202825 	move	a1,s1
     7e4:	2406005f 	li	a2,95
     7e8:	24070000 	li	a3,0
     7ec:	afa00018 	sw	zero,24(sp)
     7f0:	afa0001c 	sw	zero,28(sp)
     7f4:	afa00020 	sw	zero,32(sp)
     7f8:	afa00024 	sw	zero,36(sp)
     7fc:	e7a60010 	swc1	$f6,16(sp)
     800:	0c000000 	jal	0 <func_808CADC0>
     804:	e7a80014 	swc1	$f8,20(sp)
     808:	10000012 	b	854 <BossFd_Init+0x310>
     80c:	8fbf003c 	lw	ra,60(sp)
     810:	c60a0024 	lwc1	$f10,36(s0)
     814:	8fa40048 	lw	a0,72(sp)
     818:	02002825 	move	a1,s0
     81c:	e7aa0010 	swc1	$f10,16(sp)
     820:	c6100028 	lwc1	$f16,40(s0)
     824:	02203025 	move	a2,s1
     828:	240700a2 	li	a3,162
     82c:	e7b00014 	swc1	$f16,20(sp)
     830:	c612002c 	lwc1	$f18,44(s0)
     834:	afa00024 	sw	zero,36(sp)
     838:	afa00020 	sw	zero,32(sp)
     83c:	afa0001c 	sw	zero,28(sp)
     840:	e7b20018 	swc1	$f18,24(sp)
     844:	860e1402 	lh	t6,5122(s0)
     848:	0c000000 	jal	0 <func_808CADC0>
     84c:	afae0028 	sw	t6,40(sp)
     850:	8fbf003c 	lw	ra,60(sp)
     854:	8fb00034 	lw	s0,52(sp)
     858:	8fb10038 	lw	s1,56(sp)
     85c:	03e00008 	jr	ra
     860:	27bd0058 	addiu	sp,sp,88

00000864 <BossFd_Destroy>:
     864:	27bdffe8 	addiu	sp,sp,-24
     868:	afbf0014 	sw	ra,20(sp)
     86c:	afa40018 	sw	a0,24(sp)
     870:	afa5001c 	sw	a1,28(sp)
     874:	0c000000 	jal	0 <func_808CADC0>
     878:	2484014c 	addiu	a0,a0,332
     87c:	8fa40018 	lw	a0,24(sp)
     880:	8fa5001c 	lw	a1,28(sp)
     884:	0c000000 	jal	0 <func_808CADC0>
     888:	24840190 	addiu	a0,a0,400
     88c:	8fa40018 	lw	a0,24(sp)
     890:	8fa5001c 	lw	a1,28(sp)
     894:	0c000000 	jal	0 <func_808CADC0>
     898:	248401d4 	addiu	a0,a0,468
     89c:	8fa50018 	lw	a1,24(sp)
     8a0:	8fa4001c 	lw	a0,28(sp)
     8a4:	0c000000 	jal	0 <func_808CADC0>
     8a8:	24a51490 	addiu	a1,a1,5264
     8ac:	8fbf0014 	lw	ra,20(sp)
     8b0:	27bd0018 	addiu	sp,sp,24
     8b4:	03e00008 	jr	ra
     8b8:	00000000 	nop

000008bc <func_808CB67C>:
     8bc:	848e008a 	lh	t6,138(a0)
     8c0:	848f0032 	lh	t7,50(a0)
     8c4:	01cf1023 	subu	v0,t6,t7
     8c8:	00021400 	sll	v0,v0,0x10
     8cc:	00021403 	sra	v0,v0,0x10
     8d0:	04400003 	bltz	v0,8e0 <func_808CB67C+0x24>
     8d4:	00021823 	negu	v1,v0
     8d8:	03e00008 	jr	ra
     8dc:	28422000 	slti	v0,v0,8192
     8e0:	03e00008 	jr	ra
     8e4:	28622000 	slti	v0,v1,8192

000008e8 <func_808CB6A8>:
     8e8:	27bdffe0 	addiu	sp,sp,-32
     8ec:	afb00018 	sw	s0,24(sp)
     8f0:	afa50024 	sw	a1,36(sp)
     8f4:	00808025 	move	s0,a0
     8f8:	afbf001c 	sw	ra,28(sp)
     8fc:	3c050601 	lui	a1,0x601
     900:	24a515e4 	addiu	a1,a1,5604
     904:	0c000000 	jal	0 <func_808CADC0>
     908:	2484014c 	addiu	a0,a0,332
     90c:	3c050601 	lui	a1,0x601
     910:	24a51524 	addiu	a1,a1,5412
     914:	0c000000 	jal	0 <func_808CADC0>
     918:	26040190 	addiu	a0,s0,400
     91c:	3c050601 	lui	a1,0x601
     920:	24a51464 	addiu	a1,a1,5220
     924:	0c000000 	jal	0 <func_808CADC0>
     928:	260401d4 	addiu	a0,s0,468
     92c:	3c01447a 	lui	at,0x447a
     930:	44812000 	mtc1	at,$f4
     934:	3c0e0000 	lui	t6,0x0
     938:	25ce0000 	addiu	t6,t6,0
     93c:	ae0e0218 	sw	t6,536(s0)
     940:	e60402ac 	swc1	$f4,684(s0)
     944:	8fbf001c 	lw	ra,28(sp)
     948:	8fb00018 	lw	s0,24(sp)
     94c:	27bd0020 	addiu	sp,sp,32
     950:	03e00008 	jr	ra
     954:	00000000 	nop

00000958 <func_808CB718>:
     958:	27bdfe30 	addiu	sp,sp,-464
     95c:	afb60078 	sw	s6,120(sp)
     960:	0080b025 	move	s6,a0
     964:	afbf007c 	sw	ra,124(sp)
     968:	afb50074 	sw	s5,116(sp)
     96c:	afb40070 	sw	s4,112(sp)
     970:	afb3006c 	sw	s3,108(sp)
     974:	afb20068 	sw	s2,104(sp)
     978:	afb10064 	sw	s1,100(sp)
     97c:	afb00060 	sw	s0,96(sp)
     980:	f7be0058 	sdc1	$f30,88(sp)
     984:	f7bc0050 	sdc1	$f28,80(sp)
     988:	f7ba0048 	sdc1	$f26,72(sp)
     98c:	f7b80040 	sdc1	$f24,64(sp)
     990:	f7b60038 	sdc1	$f22,56(sp)
     994:	f7b40030 	sdc1	$f20,48(sp)
     998:	afa501d4 	sw	a1,468(sp)
     99c:	a3a001cf 	sb	zero,463(sp)
     9a0:	8cb31c44 	lw	s3,7236(a1)
     9a4:	0c000000 	jal	0 <func_808CADC0>
     9a8:	2484014c 	addiu	a0,a0,332
     9ac:	0c000000 	jal	0 <func_808CADC0>
     9b0:	26c40190 	addiu	a0,s6,400
     9b4:	0c000000 	jal	0 <func_808CADC0>
     9b8:	26c401d4 	addiu	a0,s6,468
     9bc:	c6c402bc 	lwc1	$f4,700(s6)
     9c0:	c6c60024 	lwc1	$f6,36(s6)
     9c4:	c6c802c0 	lwc1	$f8,704(s6)
     9c8:	c6ca0028 	lwc1	$f10,40(s6)
     9cc:	46062501 	sub.s	$f20,$f4,$f6
     9d0:	3c014503 	lui	at,0x4503
     9d4:	460a4101 	sub.s	$f4,$f8,$f10
     9d8:	44815000 	mtc1	at,$f10
     9dc:	e7a401c0 	swc1	$f4,448(sp)
     9e0:	c6c8002c 	lwc1	$f8,44(s6)
     9e4:	c6c602c4 	lwc1	$f6,708(s6)
     9e8:	86cf0224 	lh	t7,548(s6)
     9ec:	c6c402b4 	lwc1	$f4,692(s6)
     9f0:	46083581 	sub.s	$f22,$f6,$f8
     9f4:	448f4000 	mtc1	t7,$f8
     9f8:	46045180 	add.s	$f6,$f10,$f4
     9fc:	468042a0 	cvt.s.w	$f10,$f8
     a00:	46065102 	mul.s	$f4,$f10,$f6
     a04:	4600220d 	trunc.w.s	$f8,$f4
     a08:	44044000 	mfc1	a0,$f8
     a0c:	00000000 	nop
     a10:	00042400 	sll	a0,a0,0x10
     a14:	0c000000 	jal	0 <func_808CADC0>
     a18:	00042403 	sra	a0,a0,0x10
     a1c:	c6ca02b0 	lwc1	$f10,688(s6)
     a20:	86d90224 	lh	t9,548(s6)
     a24:	3c014489 	lui	at,0x4489
     a28:	460a0182 	mul.s	$f6,$f0,$f10
     a2c:	44812000 	mtc1	at,$f4
     a30:	c6c802b4 	lwc1	$f8,692(s6)
     a34:	46082280 	add.s	$f10,$f4,$f8
     a38:	4606a500 	add.s	$f20,$f20,$f6
     a3c:	44993000 	mtc1	t9,$f6
     a40:	00000000 	nop
     a44:	46803120 	cvt.s.w	$f4,$f6
     a48:	460a2202 	mul.s	$f8,$f4,$f10
     a4c:	4600418d 	trunc.w.s	$f6,$f8
     a50:	44043000 	mfc1	a0,$f6
     a54:	00000000 	nop
     a58:	00042400 	sll	a0,a0,0x10
     a5c:	0c000000 	jal	0 <func_808CADC0>
     a60:	00042403 	sra	a0,a0,0x10
     a64:	c6ca02b0 	lwc1	$f10,688(s6)
     a68:	c7a401c0 	lwc1	$f4,448(sp)
     a6c:	3c010000 	lui	at,0x0
     a70:	460a0202 	mul.s	$f8,$f0,$f10
     a74:	c42a0000 	lwc1	$f10,0(at)
     a78:	46082180 	add.s	$f6,$f4,$f8
     a7c:	e7a601c0 	swc1	$f6,448(sp)
     a80:	86c90224 	lh	t1,548(s6)
     a84:	c6c402b4 	lwc1	$f4,692(s6)
     a88:	44893000 	mtc1	t1,$f6
     a8c:	46045200 	add.s	$f8,$f10,$f4
     a90:	468032a0 	cvt.s.w	$f10,$f6
     a94:	46085102 	mul.s	$f4,$f10,$f8
     a98:	4600218d 	trunc.w.s	$f6,$f4
     a9c:	44043000 	mfc1	a0,$f6
     aa0:	00000000 	nop
     aa4:	00042400 	sll	a0,a0,0x10
     aa8:	0c000000 	jal	0 <func_808CADC0>
     aac:	00042403 	sra	a0,a0,0x10
     ab0:	c6ca02b0 	lwc1	$f10,688(s6)
     ab4:	4600a306 	mov.s	$f12,$f20
     ab8:	460a0202 	mul.s	$f8,$f0,$f10
     abc:	4608b580 	add.s	$f22,$f22,$f8
     ac0:	0c000000 	jal	0 <func_808CADC0>
     ac4:	4600b386 	mov.s	$f14,$f22
     ac8:	3c010000 	lui	at,0x0
     acc:	c4380000 	lwc1	$f24,0(at)
     ad0:	c7ac01c0 	lwc1	$f12,448(sp)
     ad4:	46180102 	mul.s	$f4,$f0,$f24
     ad8:	00000000 	nop
     adc:	4614a082 	mul.s	$f2,$f20,$f20
     ae0:	00000000 	nop
     ae4:	4616b402 	mul.s	$f16,$f22,$f22
     ae8:	e7a20098 	swc1	$f2,152(sp)
     aec:	4600218d 	trunc.w.s	$f6,$f4
     af0:	e7b00094 	swc1	$f16,148(sp)
     af4:	46101480 	add.s	$f18,$f2,$f16
     af8:	440c3000 	mfc1	t4,$f6
     afc:	46009384 	sqrt.s	$f14,$f18
     b00:	000c6c00 	sll	t5,t4,0x10
     b04:	000d7403 	sra	t6,t5,0x10
     b08:	448e5000 	mtc1	t6,$f10
     b0c:	00000000 	nop
     b10:	46805220 	cvt.s.w	$f8,$f10
     b14:	e7ae0090 	swc1	$f14,144(sp)
     b18:	0c000000 	jal	0 <func_808CADC0>
     b1c:	e7a801b4 	swc1	$f8,436(sp)
     b20:	46180102 	mul.s	$f4,$f0,$f24
     b24:	3c040000 	lui	a0,0x0
     b28:	24840000 	addiu	a0,a0,0
     b2c:	4600218d 	trunc.w.s	$f6,$f4
     b30:	44183000 	mfc1	t8,$f6
     b34:	00000000 	nop
     b38:	0018cc00 	sll	t9,t8,0x10
     b3c:	00194403 	sra	t0,t9,0x10
     b40:	44885000 	mtc1	t0,$f10
     b44:	00000000 	nop
     b48:	46805220 	cvt.s.w	$f8,$f10
     b4c:	e7a801b0 	swc1	$f8,432(sp)
     b50:	0c000000 	jal	0 <func_808CADC0>
     b54:	86c50222 	lh	a1,546(s6)
     b58:	3c013f80 	lui	at,0x3f80
     b5c:	4481f000 	mtc1	at,$f30
     b60:	26d50280 	addiu	s5,s6,640
     b64:	3c053dcc 	lui	a1,0x3dcc
     b68:	3c073ca3 	lui	a3,0x3ca3
     b6c:	4406f000 	mfc1	a2,$f30
     b70:	34e7d70a 	ori	a3,a3,0xd70a
     b74:	34a5cccd 	ori	a1,a1,0xcccd
     b78:	0c000000 	jal	0 <func_808CADC0>
     b7c:	02a02025 	move	a0,s5
     b80:	86c91402 	lh	t1,5122(s6)
     b84:	51200321 	beqzl	t1,180c <L808CC140+0x48c>
     b88:	3c0140a0 	lui	at,0x40a0
     b8c:	8fa401d4 	lw	a0,468(sp)
     b90:	00002825 	move	a1,zero
     b94:	0c000000 	jal	0 <func_808CADC0>
     b98:	8c901c44 	lw	s0,7236(a0)
     b9c:	86ca1402 	lh	t2,5122(s6)
     ba0:	00408825 	move	s1,v0
     ba4:	254bffff 	addiu	t3,t2,-1
     ba8:	2d610006 	sltiu	at,t3,6
     bac:	10200307 	beqz	at,17cc <L808CC140+0x44c>
     bb0:	000b5880 	sll	t3,t3,0x2
     bb4:	3c010000 	lui	at,0x0
     bb8:	002b0821 	addu	at,at,t3
     bbc:	8c2b0000 	lw	t3,0(at)
     bc0:	01600008 	jr	t3
     bc4:	00000000 	nop

00000bc8 <L808CB988>:
     bc8:	3c01c2dc 	lui	at,0xc2dc
     bcc:	44802000 	mtc1	zero,$f4
     bd0:	44813000 	mtc1	at,$f6
     bd4:	44805000 	mtc1	zero,$f10
     bd8:	240c0003 	li	t4,3
     bdc:	a2cc0220 	sb	t4,544(s6)
     be0:	3c010000 	lui	at,0x0
     be4:	e6c402bc 	swc1	$f4,700(s6)
     be8:	e6c602c0 	swc1	$f6,704(s6)
     bec:	e6ca02c4 	swc1	$f10,708(s6)
     bf0:	c4280000 	lwc1	$f8,0(at)
     bf4:	240dffff 	li	t5,-1
     bf8:	a6cd0222 	sh	t5,546(s6)
     bfc:	e6c802ac 	swc1	$f8,684(s6)
     c00:	c600002c 	lwc1	$f0,44(s0)
     c04:	3c0142a0 	lui	at,0x42a0
     c08:	44812000 	mtc1	at,$f4
     c0c:	46000005 	abs.s	$f0,$f0
     c10:	3c0143aa 	lui	at,0x43aa
     c14:	4604003c 	c.lt.s	$f0,$f4
     c18:	00000000 	nop
     c1c:	450000bb 	bc1f	f0c <L808CB988+0x344>
     c20:	00000000 	nop
     c24:	c6060024 	lwc1	$f6,36(s0)
     c28:	44815000 	mtc1	at,$f10
     c2c:	3c014270 	lui	at,0x4270
     c30:	44814000 	mtc1	at,$f8
     c34:	460a3001 	sub.s	$f0,$f6,$f10
     c38:	8fa401d4 	lw	a0,468(sp)
     c3c:	240e0002 	li	t6,2
     c40:	46000005 	abs.s	$f0,$f0
     c44:	24851d64 	addiu	a1,a0,7524
     c48:	4608003c 	c.lt.s	$f0,$f8
     c4c:	00000000 	nop
     c50:	450000ae 	bc1f	f0c <L808CB988+0x344>
     c54:	00000000 	nop
     c58:	0c000000 	jal	0 <func_808CADC0>
     c5c:	a6ce1402 	sh	t6,5122(s6)
     c60:	8fa401d4 	lw	a0,468(sp)
     c64:	02c02825 	move	a1,s6
     c68:	0c000000 	jal	0 <func_808CADC0>
     c6c:	24060008 	li	a2,8
     c70:	0c000000 	jal	0 <func_808CADC0>
     c74:	8fa401d4 	lw	a0,468(sp)
     c78:	a6c21404 	sh	v0,5124(s6)
     c7c:	8fa401d4 	lw	a0,468(sp)
     c80:	00002825 	move	a1,zero
     c84:	0c000000 	jal	0 <func_808CADC0>
     c88:	24060001 	li	a2,1
     c8c:	8fa401d4 	lw	a0,468(sp)
     c90:	86c51404 	lh	a1,5124(s6)
     c94:	0c000000 	jal	0 <func_808CADC0>
     c98:	24060007 	li	a2,7
     c9c:	3c0143be 	lui	at,0x43be
     ca0:	44810000 	mtc1	at,$f0
     ca4:	3c014190 	lui	at,0x4190
     ca8:	44811000 	mtc1	at,$f2
     cac:	3c014248 	lui	at,0x4248
     cb0:	4481c000 	mtc1	at,$f24
     cb4:	3c0142c8 	lui	at,0x42c8
     cb8:	4481e000 	mtc1	at,$f28
     cbc:	3c01428c 	lui	at,0x428c
     cc0:	44812000 	mtc1	at,$f4
     cc4:	240fc000 	li	t7,-16384
     cc8:	44806000 	mtc1	zero,$f12
     ccc:	a60f0032 	sh	t7,50(s0)
     cd0:	46040181 	sub.s	$f6,$f0,$f4
     cd4:	86180032 	lh	t8,50(s0)
     cd8:	e6000024 	swc1	$f0,36(s0)
     cdc:	e61c0028 	swc1	$f28,40(s0)
     ce0:	e60c002c 	swc1	$f12,44(s0)
     ce4:	e60c0068 	swc1	$f12,104(s0)
     ce8:	a61800b6 	sh	t8,182(s0)
     cec:	e6c61408 	swc1	$f6,5128(s6)
     cf0:	3c014220 	lui	at,0x4220
     cf4:	44814000 	mtc1	at,$f8
     cf8:	c60a0028 	lwc1	$f10,40(s0)
     cfc:	3c01428c 	lui	at,0x428c
     d00:	4405f000 	mfc1	a1,$f30
     d04:	46085100 	add.s	$f4,$f10,$f8
     d08:	44815000 	mtc1	at,$f10
     d0c:	3c0141f0 	lui	at,0x41f0
     d10:	02c02025 	move	a0,s6
     d14:	e6c4140c 	swc1	$f4,5132(s6)
     d18:	c606002c 	lwc1	$f6,44(s0)
     d1c:	460a3200 	add.s	$f8,$f6,$f10
     d20:	44815000 	mtc1	at,$f10
     d24:	3c014220 	lui	at,0x4220
     d28:	e6c81410 	swc1	$f8,5136(s6)
     d2c:	c6040024 	lwc1	$f4,36(s0)
     d30:	e6c41414 	swc1	$f4,5140(s6)
     d34:	c6060028 	lwc1	$f6,40(s0)
     d38:	460a3200 	add.s	$f8,$f6,$f10
     d3c:	e6c81418 	swc1	$f8,5144(s6)
     d40:	c604002c 	lwc1	$f4,44(s0)
     d44:	e6c4141c 	swc1	$f4,5148(s6)
     d48:	c6060024 	lwc1	$f6,36(s0)
     d4c:	46183281 	sub.s	$f10,$f6,$f24
     d50:	44813000 	mtc1	at,$f6
     d54:	46025200 	add.s	$f8,$f10,$f2
     d58:	e6c81450 	swc1	$f8,5200(s6)
     d5c:	c6040028 	lwc1	$f4,40(s0)
     d60:	46062280 	add.s	$f10,$f4,$f6
     d64:	e6ca1454 	swc1	$f10,5204(s6)
     d68:	c608002c 	lwc1	$f8,44(s0)
     d6c:	46184100 	add.s	$f4,$f8,$f24
     d70:	46022181 	sub.s	$f6,$f4,$f2
     d74:	e6c61458 	swc1	$f6,5208(s6)
     d78:	c60a0024 	lwc1	$f10,36(s0)
     d7c:	e6ca1468 	swc1	$f10,5224(s6)
     d80:	c6080028 	lwc1	$f8,40(s0)
     d84:	46184100 	add.s	$f4,$f8,$f24
     d88:	e6c4146c 	swc1	$f4,5228(s6)
     d8c:	c606002c 	lwc1	$f6,44(s0)
     d90:	0c000000 	jal	0 <func_808CADC0>
     d94:	e6c61470 	swc1	$f6,5232(s6)
     d98:	3c010000 	lui	at,0x0
     d9c:	c4220000 	lwc1	$f2,0(at)
     da0:	44800000 	mtc1	zero,$f0
     da4:	3c140000 	lui	s4,0x0
     da8:	26940000 	addiu	s4,s4,0
     dac:	a6c00248 	sh	zero,584(s6)
     db0:	e6c2147c 	swc1	$f2,5244(s6)
     db4:	e6c21478 	swc1	$f2,5240(s6)
     db8:	e6c21474 	swc1	$f2,5236(s6)
     dbc:	e6c21464 	swc1	$f2,5220(s6)
     dc0:	e6c21460 	swc1	$f2,5216(s6)
     dc4:	e6c2145c 	swc1	$f2,5212(s6)
     dc8:	e6c01480 	swc1	$f0,5248(s6)
     dcc:	e6c01484 	swc1	$f0,5252(s6)
     dd0:	96990ee2 	lhu	t9,3810(s4)
     dd4:	3c014348 	lui	at,0x4348
     dd8:	24090006 	li	t1,6
     ddc:	33280008 	andi	t0,t9,0x8
     de0:	1100004a 	beqz	t0,f0c <L808CB988+0x344>
     de4:	00000000 	nop
     de8:	a6c91402 	sh	t1,5122(s6)
     dec:	4481b000 	mtc1	at,$f22
     df0:	c60a0024 	lwc1	$f10,36(s0)
     df4:	3c013f00 	lui	at,0x3f00
     df8:	4481d000 	mtc1	at,$f26
     dfc:	461c5200 	add.s	$f8,$f10,$f28
     e00:	3c014396 	lui	at,0x4396
     e04:	44812000 	mtc1	at,$f4
     e08:	3c014416 	lui	at,0x4416
     e0c:	44815000 	mtc1	at,$f10
     e10:	46044180 	add.s	$f6,$f8,$f4
     e14:	3c014316 	lui	at,0x4316
     e18:	4405d000 	mfc1	a1,$f26
     e1c:	02c02025 	move	a0,s6
     e20:	460a3201 	sub.s	$f8,$f6,$f10
     e24:	e6c81450 	swc1	$f8,5200(s6)
     e28:	c6040028 	lwc1	$f4,40(s0)
     e2c:	461c2180 	add.s	$f6,$f4,$f28
     e30:	46183281 	sub.s	$f10,$f6,$f24
     e34:	44813000 	mtc1	at,$f6
     e38:	3c0142f0 	lui	at,0x42f0
     e3c:	e6ca1454 	swc1	$f10,5204(s6)
     e40:	c608002c 	lwc1	$f8,44(s0)
     e44:	e6c01468 	swc1	$f0,5224(s6)
     e48:	e6c01470 	swc1	$f0,5232(s6)
     e4c:	46164100 	add.s	$f4,$f8,$f22
     e50:	44814000 	mtc1	at,$f8
     e54:	46062281 	sub.s	$f10,$f4,$f6
     e58:	e6c8146c 	swc1	$f8,5228(s6)
     e5c:	0c000000 	jal	0 <func_808CADC0>
     e60:	e6ca1458 	swc1	$f10,5208(s6)
     e64:	3c010000 	lui	at,0x0
     e68:	c4200000 	lwc1	$f0,0(at)
     e6c:	3c010000 	lui	at,0x0
     e70:	c4340000 	lwc1	$f20,0(at)
     e74:	240a0001 	li	t2,1
     e78:	314b00ff 	andi	t3,t2,0xff
     e7c:	000b6080 	sll	t4,t3,0x2
     e80:	018b6023 	subu	t4,t4,t3
     e84:	3c0d0000 	lui	t5,0x0
     e88:	25ad0000 	addiu	t5,t5,0
     e8c:	000c6080 	sll	t4,t4,0x2
     e90:	a6c00248 	sh	zero,584(s6)
     e94:	a2ca02d4 	sb	t2,724(s6)
     e98:	018d1021 	addu	v0,t4,t5
     e9c:	e6c0145c 	swc1	$f0,5212(s6)
     ea0:	e6c01460 	swc1	$f0,5216(s6)
     ea4:	e6c01464 	swc1	$f0,5220(s6)
     ea8:	e6c01474 	swc1	$f0,5236(s6)
     eac:	e6c01478 	swc1	$f0,5240(s6)
     eb0:	e6c0147c 	swc1	$f0,5244(s6)
     eb4:	e6d41484 	swc1	$f20,5252(s6)
     eb8:	c4440000 	lwc1	$f4,0(v0)
     ebc:	3c0140a0 	lui	at,0x40a0
     ec0:	240e0032 	li	t6,50
     ec4:	e6c402bc 	swc1	$f4,700(s6)
     ec8:	c4460004 	lwc1	$f6,4(v0)
     ecc:	44812000 	mtc1	at,$f4
     ed0:	240f0003 	li	t7,3
     ed4:	46163281 	sub.s	$f10,$f6,$f22
     ed8:	24184000 	li	t8,16384
     edc:	241900fa 	li	t9,250
     ee0:	240801d6 	li	t0,470
     ee4:	e6ca02c0 	swc1	$f10,704(s6)
     ee8:	c4480008 	lwc1	$f8,8(v0)
     eec:	a6ce0248 	sh	t6,584(s6)
     ef0:	a6cf0222 	sh	t7,546(s6)
     ef4:	a6d80030 	sh	t8,48(s6)
     ef8:	a6c00224 	sh	zero,548(s6)
     efc:	a6d9024e 	sh	t9,590(s6)
     f00:	a6c8024c 	sh	t0,588(s6)
     f04:	e6c402a4 	swc1	$f4,676(s6)
     f08:	e6c802c4 	swc1	$f8,708(s6)
     f0c:	10000230 	b	17d0 <L808CC140+0x450>
     f10:	3c014348 	lui	at,0x4348

00000f14 <L808CBCD4>:
     f14:	86c90248 	lh	t1,584(s6)
     f18:	3c010000 	lui	at,0x0
     f1c:	240a0064 	li	t2,100
     f20:	15200005 	bnez	t1,f38 <L808CBCF8>
     f24:	240b0003 	li	t3,3
     f28:	c4260000 	lwc1	$f6,0(at)
     f2c:	a6ca0248 	sh	t2,584(s6)
     f30:	a6cb1402 	sh	t3,5122(s6)
     f34:	e6c61484 	swc1	$f6,5252(s6)

00000f38 <L808CBCF8>:
     f38:	3c0143be 	lui	at,0x43be
     f3c:	44810000 	mtc1	at,$f0
     f40:	240cc000 	li	t4,-16384
     f44:	3c0142c8 	lui	at,0x42c8
     f48:	a60c0032 	sh	t4,50(s0)
     f4c:	4481e000 	mtc1	at,$f28
     f50:	44805000 	mtc1	zero,$f10
     f54:	44804000 	mtc1	zero,$f8
     f58:	860d0032 	lh	t5,50(s0)
     f5c:	e6000024 	swc1	$f0,36(s0)
     f60:	e61c0028 	swc1	$f28,40(s0)
     f64:	e60a002c 	swc1	$f10,44(s0)
     f68:	e6080068 	swc1	$f8,104(s0)
     f6c:	a60d00b6 	sh	t5,182(s0)
     f70:	86c30248 	lh	v1,584(s6)
     f74:	24010032 	li	at,50
     f78:	240e0001 	li	t6,1
     f7c:	14610003 	bne	v1,at,f8c <L808CBCF8+0x54>
     f80:	3c120000 	lui	s2,0x0
     f84:	a2ce0220 	sb	t6,544(s6)
     f88:	86c30248 	lh	v1,584(s6)
     f8c:	28610032 	slti	at,v1,50
     f90:	10200018 	beqz	at,ff4 <L808CBCF8+0xbc>
     f94:	26470000 	addiu	a3,s2,0
     f98:	3c0f0000 	lui	t7,0x0
     f9c:	25ef0000 	addiu	t7,t7,0
     fa0:	afaf0014 	sw	t7,20(sp)
     fa4:	2404304e 	li	a0,12366
     fa8:	26c500e4 	addiu	a1,s6,228
     fac:	24060004 	li	a2,4
     fb0:	0c000000 	jal	0 <func_808CADC0>
     fb4:	afa70010 	sw	a3,16(sp)
     fb8:	86c40224 	lh	a0,548(s6)
     fbc:	000423c0 	sll	a0,a0,0xf
     fc0:	00042400 	sll	a0,a0,0x10
     fc4:	0c000000 	jal	0 <func_808CADC0>
     fc8:	00042403 	sra	a0,a0,0x10
     fcc:	c6c4148c 	lwc1	$f4,5260(s6)
     fd0:	4406f000 	mfc1	a2,$f30
     fd4:	3c073c03 	lui	a3,0x3c03
     fd8:	46040182 	mul.s	$f6,$f0,$f4
     fdc:	34e7126e 	ori	a3,a3,0x126e
     fe0:	26c4148c 	addiu	a0,s6,5260
     fe4:	3c054000 	lui	a1,0x4000
     fe8:	0c000000 	jal	0 <func_808CADC0>
     fec:	e6c61488 	swc1	$f6,5256(s6)
     ff0:	86c30248 	lh	v1,584(s6)
     ff4:	24010028 	li	at,40
     ff8:	14610005 	bne	v1,at,1010 <L808CBCF8+0xd8>
     ffc:	8fa401d4 	lw	a0,468(sp)
    1000:	02c02825 	move	a1,s6
    1004:	0c000000 	jal	0 <func_808CADC0>
    1008:	24060013 	li	a2,19
    100c:	86c30248 	lh	v1,584(s6)
    1010:	146001ee 	bnez	v1,17cc <L808CC140+0x44c>
    1014:	24180004 	li	t8,4
    1018:	a6d81402 	sh	t8,5122(s6)
    101c:	3c014120 	lui	at,0x4120
    1020:	44814000 	mtc1	at,$f8
    1024:	c60a0028 	lwc1	$f10,40(s0)
    1028:	3c010000 	lui	at,0x0
    102c:	24190046 	li	t9,70
    1030:	46085100 	add.s	$f4,$f10,$f8
    1034:	44805000 	mtc1	zero,$f10
    1038:	e6c4146c 	swc1	$f4,5228(s6)
    103c:	c4260000 	lwc1	$f6,0(at)
    1040:	3c010000 	lui	at,0x0
    1044:	e6ca1480 	swc1	$f10,5248(s6)
    1048:	e6c61478 	swc1	$f6,5240(s6)
    104c:	c4280000 	lwc1	$f8,0(at)
    1050:	a6d90248 	sh	t9,584(s6)
    1054:	a6c00224 	sh	zero,548(s6)
    1058:	100001dc 	b	17cc <L808CC140+0x44c>
    105c:	e6c81484 	swc1	$f8,5252(s6)

00001060 <L808CBE20>:
    1060:	86c40224 	lh	a0,548(s6)
    1064:	000423c0 	sll	a0,a0,0xf
    1068:	00042400 	sll	a0,a0,0x10
    106c:	0c000000 	jal	0 <func_808CADC0>
    1070:	00042403 	sra	a0,a0,0x10
    1074:	c6c4148c 	lwc1	$f4,5260(s6)
    1078:	4406f000 	mfc1	a2,$f30
    107c:	3c073c03 	lui	a3,0x3c03
    1080:	46040182 	mul.s	$f6,$f0,$f4
    1084:	34e7126e 	ori	a3,a3,0x126e
    1088:	26c4148c 	addiu	a0,s6,5260
    108c:	3c054000 	lui	a1,0x4000
    1090:	0c000000 	jal	0 <func_808CADC0>
    1094:	e6c61488 	swc1	$f6,5256(s6)
    1098:	3c120000 	lui	s2,0x0
    109c:	3c080000 	lui	t0,0x0
    10a0:	26470000 	addiu	a3,s2,0
    10a4:	25080000 	addiu	t0,t0,0
    10a8:	afa80014 	sw	t0,20(sp)
    10ac:	afa70010 	sw	a3,16(sp)
    10b0:	2404304e 	li	a0,12366
    10b4:	26c500e4 	addiu	a1,s6,228
    10b8:	0c000000 	jal	0 <func_808CADC0>
    10bc:	24060004 	li	a2,4
    10c0:	86c90248 	lh	t1,584(s6)
    10c4:	3c014348 	lui	at,0x4348
    10c8:	240a0005 	li	t2,5
    10cc:	1520002b 	bnez	t1,117c <L808CBE20+0x11c>
    10d0:	00000000 	nop
    10d4:	4481b000 	mtc1	at,$f22
    10d8:	3c014248 	lui	at,0x4248
    10dc:	4481c000 	mtc1	at,$f24
    10e0:	3c0142c8 	lui	at,0x42c8
    10e4:	a6ca1402 	sh	t2,5122(s6)
    10e8:	4481e000 	mtc1	at,$f28
    10ec:	c60a0024 	lwc1	$f10,36(s0)
    10f0:	3c014396 	lui	at,0x4396
    10f4:	44812000 	mtc1	at,$f4
    10f8:	461c5200 	add.s	$f8,$f10,$f28
    10fc:	3c014316 	lui	at,0x4316
    1100:	3c053dcc 	lui	a1,0x3dcc
    1104:	34a5cccd 	ori	a1,a1,0xcccd
    1108:	46044180 	add.s	$f6,$f8,$f4
    110c:	02c02025 	move	a0,s6
    1110:	e6c61450 	swc1	$f6,5200(s6)
    1114:	c60a0028 	lwc1	$f10,40(s0)
    1118:	461c5200 	add.s	$f8,$f10,$f28
    111c:	e6c81454 	swc1	$f8,5204(s6)
    1120:	c604002c 	lwc1	$f4,44(s0)
    1124:	46162180 	add.s	$f6,$f4,$f22
    1128:	44812000 	mtc1	at,$f4
    112c:	e6c61458 	swc1	$f6,5208(s6)
    1130:	c60a0024 	lwc1	$f10,36(s0)
    1134:	e6ca1468 	swc1	$f10,5224(s6)
    1138:	c6080028 	lwc1	$f8,40(s0)
    113c:	46044181 	sub.s	$f6,$f8,$f4
    1140:	e6c6146c 	swc1	$f6,5228(s6)
    1144:	c60a002c 	lwc1	$f10,44(s0)
    1148:	46185201 	sub.s	$f8,$f10,$f24
    114c:	0c000000 	jal	0 <func_808CADC0>
    1150:	e6c81470 	swc1	$f8,5232(s6)
    1154:	44802000 	mtc1	zero,$f4
    1158:	44803000 	mtc1	zero,$f6
    115c:	240b00aa 	li	t3,170
    1160:	a6cb0248 	sh	t3,584(s6)
    1164:	e6c41480 	swc1	$f4,5248(s6)
    1168:	e6c61484 	swc1	$f6,5252(s6)
    116c:	8fa401d4 	lw	a0,468(sp)
    1170:	02c02825 	move	a1,s6
    1174:	0c000000 	jal	0 <func_808CADC0>
    1178:	24060014 	li	a2,20
    117c:	10000194 	b	17d0 <L808CC140+0x450>
    1180:	3c014348 	lui	at,0x4348

00001184 <L808CBF44>:
    1184:	86c40224 	lh	a0,548(s6)
    1188:	3c010000 	lui	at,0x0
    118c:	c4340000 	lwc1	$f20,0(at)
    1190:	000423c0 	sll	a0,a0,0xf
    1194:	00042400 	sll	a0,a0,0x10
    1198:	00042403 	sra	a0,a0,0x10
    119c:	0c000000 	jal	0 <func_808CADC0>
    11a0:	e6d41484 	swc1	$f20,5252(s6)
    11a4:	c6ca148c 	lwc1	$f10,5260(s6)
    11a8:	4406f000 	mfc1	a2,$f30
    11ac:	3c073c03 	lui	a3,0x3c03
    11b0:	460a0202 	mul.s	$f8,$f0,$f10
    11b4:	34e7126e 	ori	a3,a3,0x126e
    11b8:	26c4148c 	addiu	a0,s6,5260
    11bc:	3c054000 	lui	a1,0x4000
    11c0:	0c000000 	jal	0 <func_808CADC0>
    11c4:	e6c81488 	swc1	$f8,5256(s6)
    11c8:	3c120000 	lui	s2,0x0
    11cc:	3c0c0000 	lui	t4,0x0
    11d0:	26470000 	addiu	a3,s2,0
    11d4:	258c0000 	addiu	t4,t4,0
    11d8:	afac0014 	sw	t4,20(sp)
    11dc:	afa70010 	sw	a3,16(sp)
    11e0:	2404304e 	li	a0,12366
    11e4:	26c500e4 	addiu	a1,s6,228
    11e8:	0c000000 	jal	0 <func_808CADC0>
    11ec:	24060004 	li	a2,4
    11f0:	86c30248 	lh	v1,584(s6)
    11f4:	24010064 	li	at,100
    11f8:	240d0001 	li	t5,1
    11fc:	14610003 	bne	v1,at,120c <L808CBF44+0x88>
    1200:	240e0006 	li	t6,6
    1204:	a2cd02d6 	sb	t5,726(s6)
    1208:	86c30248 	lh	v1,584(s6)
    120c:	1460005a 	bnez	v1,1378 <L808CBF44+0x1f4>
    1210:	3c014348 	lui	at,0x4348
    1214:	4481b000 	mtc1	at,$f22
    1218:	3c014248 	lui	at,0x4248
    121c:	4481c000 	mtc1	at,$f24
    1220:	44802000 	mtc1	zero,$f4
    1224:	3c013f00 	lui	at,0x3f00
    1228:	4481d000 	mtc1	at,$f26
    122c:	3c0142c8 	lui	at,0x42c8
    1230:	a6ce1402 	sh	t6,5122(s6)
    1234:	e6c41480 	swc1	$f4,5248(s6)
    1238:	4481e000 	mtc1	at,$f28
    123c:	c6060024 	lwc1	$f6,36(s0)
    1240:	3c014396 	lui	at,0x4396
    1244:	44814000 	mtc1	at,$f8
    1248:	461c3280 	add.s	$f10,$f6,$f28
    124c:	3c014416 	lui	at,0x4416
    1250:	44813000 	mtc1	at,$f6
    1254:	3c014316 	lui	at,0x4316
    1258:	46085100 	add.s	$f4,$f10,$f8
    125c:	4405d000 	mfc1	a1,$f26
    1260:	02c02025 	move	a0,s6
    1264:	46062281 	sub.s	$f10,$f4,$f6
    1268:	e6ca1450 	swc1	$f10,5200(s6)
    126c:	c6080028 	lwc1	$f8,40(s0)
    1270:	461c4100 	add.s	$f4,$f8,$f28
    1274:	46182181 	sub.s	$f6,$f4,$f24
    1278:	44812000 	mtc1	at,$f4
    127c:	3c0142f0 	lui	at,0x42f0
    1280:	e6c61454 	swc1	$f6,5204(s6)
    1284:	c60a002c 	lwc1	$f10,44(s0)
    1288:	46165200 	add.s	$f8,$f10,$f22
    128c:	44805000 	mtc1	zero,$f10
    1290:	46044181 	sub.s	$f6,$f8,$f4
    1294:	44814000 	mtc1	at,$f8
    1298:	44802000 	mtc1	zero,$f4
    129c:	e6ca1468 	swc1	$f10,5224(s6)
    12a0:	e6c61458 	swc1	$f6,5208(s6)
    12a4:	e6c8146c 	swc1	$f8,5228(s6)
    12a8:	0c000000 	jal	0 <func_808CADC0>
    12ac:	e6c41470 	swc1	$f4,5232(s6)
    12b0:	3c010000 	lui	at,0x0
    12b4:	c4260000 	lwc1	$f6,0(at)
    12b8:	3c010000 	lui	at,0x0
    12bc:	240f0001 	li	t7,1
    12c0:	e6c6147c 	swc1	$f6,5244(s6)
    12c4:	c42a0000 	lwc1	$f10,0(at)
    12c8:	3c010000 	lui	at,0x0
    12cc:	31f800ff 	andi	t8,t7,0xff
    12d0:	e6ca1478 	swc1	$f10,5240(s6)
    12d4:	c4280000 	lwc1	$f8,0(at)
    12d8:	3c010000 	lui	at,0x0
    12dc:	0018c880 	sll	t9,t8,0x2
    12e0:	e6c81474 	swc1	$f8,5236(s6)
    12e4:	c4240000 	lwc1	$f4,0(at)
    12e8:	3c010000 	lui	at,0x0
    12ec:	0338c823 	subu	t9,t9,t8
    12f0:	e6c41464 	swc1	$f4,5220(s6)
    12f4:	c4260000 	lwc1	$f6,0(at)
    12f8:	3c010000 	lui	at,0x0
    12fc:	3c080000 	lui	t0,0x0
    1300:	e6c61460 	swc1	$f6,5216(s6)
    1304:	c42a0000 	lwc1	$f10,0(at)
    1308:	25080000 	addiu	t0,t0,0
    130c:	0019c880 	sll	t9,t9,0x2
    1310:	e6d41484 	swc1	$f20,5252(s6)
    1314:	a6c00248 	sh	zero,584(s6)
    1318:	a2cf02d4 	sb	t7,724(s6)
    131c:	03281021 	addu	v0,t9,t0
    1320:	e6ca145c 	swc1	$f10,5212(s6)
    1324:	c4480000 	lwc1	$f8,0(v0)
    1328:	3c0140a0 	lui	at,0x40a0
    132c:	24090032 	li	t1,50
    1330:	e6c802bc 	swc1	$f8,700(s6)
    1334:	c4440004 	lwc1	$f4,4(v0)
    1338:	44814000 	mtc1	at,$f8
    133c:	240a0003 	li	t2,3
    1340:	46162181 	sub.s	$f6,$f4,$f22
    1344:	240b4000 	li	t3,16384
    1348:	240c00fa 	li	t4,250
    134c:	240d01d6 	li	t5,470
    1350:	e6c602c0 	swc1	$f6,704(s6)
    1354:	c44a0008 	lwc1	$f10,8(v0)
    1358:	a6c90248 	sh	t1,584(s6)
    135c:	a6ca0222 	sh	t2,546(s6)
    1360:	a6cb0030 	sh	t3,48(s6)
    1364:	a6c00224 	sh	zero,548(s6)
    1368:	a6cc024e 	sh	t4,590(s6)
    136c:	a6cd024c 	sh	t5,588(s6)
    1370:	e6c802a4 	swc1	$f8,676(s6)
    1374:	e6ca02c4 	swc1	$f10,708(s6)
    1378:	10000115 	b	17d0 <L808CC140+0x450>
    137c:	3c014348 	lui	at,0x4348

00001380 <L808CC140>:
    1380:	c6c41444 	lwc1	$f4,5188(s6)
    1384:	3c040000 	lui	a0,0x0
    1388:	24840000 	addiu	a0,a0,0
    138c:	460021a1 	cvt.d.s	$f6,$f4
    1390:	44073000 	mfc1	a3,$f6
    1394:	44063800 	mfc1	a2,$f7
    1398:	0c000000 	jal	0 <func_808CADC0>
    139c:	00000000 	nop
    13a0:	c6ca1448 	lwc1	$f10,5192(s6)
    13a4:	3c040000 	lui	a0,0x0
    13a8:	24840000 	addiu	a0,a0,0
    13ac:	46005221 	cvt.d.s	$f8,$f10
    13b0:	44074000 	mfc1	a3,$f8
    13b4:	44064800 	mfc1	a2,$f9
    13b8:	0c000000 	jal	0 <func_808CADC0>
    13bc:	00000000 	nop
    13c0:	c6c4144c 	lwc1	$f4,5196(s6)
    13c4:	3c040000 	lui	a0,0x0
    13c8:	24840000 	addiu	a0,a0,0
    13cc:	460021a1 	cvt.d.s	$f6,$f4
    13d0:	44073000 	mfc1	a3,$f6
    13d4:	44063800 	mfc1	a2,$f7
    13d8:	0c000000 	jal	0 <func_808CADC0>
    13dc:	00000000 	nop
    13e0:	86c2024e 	lh	v0,590(s6)
    13e4:	3c140000 	lui	s4,0x0
    13e8:	26940000 	addiu	s4,s4,0
    13ec:	284100bf 	slti	at,v0,191
    13f0:	1420000f 	bnez	at,1430 <L808CC140+0xb0>
    13f4:	00000000 	nop
    13f8:	968e0ee2 	lhu	t6,3810(s4)
    13fc:	3c120000 	lui	s2,0x0
    1400:	26470000 	addiu	a3,s2,0
    1404:	31cf0008 	andi	t7,t6,0x8
    1408:	15e00009 	bnez	t7,1430 <L808CC140+0xb0>
    140c:	2404304e 	li	a0,12366
    1410:	3c180000 	lui	t8,0x0
    1414:	27180000 	addiu	t8,t8,0
    1418:	afb80014 	sw	t8,20(sp)
    141c:	26c500e4 	addiu	a1,s6,228
    1420:	24060004 	li	a2,4
    1424:	0c000000 	jal	0 <func_808CADC0>
    1428:	afa70010 	sw	a3,16(sp)
    142c:	86c2024e 	lh	v0,590(s6)
    1430:	3c140000 	lui	s4,0x0
    1434:	240100be 	li	at,190
    1438:	14410010 	bne	v0,at,147c <L808CC140+0xfc>
    143c:	26940000 	addiu	s4,s4,0
    1440:	3c010000 	lui	at,0x0
    1444:	c42a0000 	lwc1	$f10,0(at)
    1448:	3c010000 	lui	at,0x0
    144c:	24190002 	li	t9,2
    1450:	e6ca147c 	swc1	$f10,5244(s6)
    1454:	c4280000 	lwc1	$f8,0(at)
    1458:	3c010000 	lui	at,0x0
    145c:	02c02825 	move	a1,s6
    1460:	e6c81478 	swc1	$f8,5240(s6)
    1464:	c4240000 	lwc1	$f4,0(at)
    1468:	a2d902d6 	sb	t9,726(s6)
    146c:	24060001 	li	a2,1
    1470:	e6c41474 	swc1	$f4,5236(s6)
    1474:	0c000000 	jal	0 <func_808CADC0>
    1478:	8fa401d4 	lw	a0,468(sp)
    147c:	3c0142f0 	lui	at,0x42f0
    1480:	44813000 	mtc1	at,$f6
    1484:	c6ca0028 	lwc1	$f10,40(s6)
    1488:	3c01433e 	lui	at,0x433e
    148c:	26c4148c 	addiu	a0,s6,5260
    1490:	460a303c 	c.lt.s	$f6,$f10
    1494:	3c054000 	lui	a1,0x4000
    1498:	3c073c03 	lui	a3,0x3c03
    149c:	45020011 	bc1fl	14e4 <L808CC140+0x164>
    14a0:	4406f000 	mfc1	a2,$f30
    14a4:	8ec90024 	lw	t1,36(s6)
    14a8:	8ec80028 	lw	t0,40(s6)
    14ac:	44814000 	mtc1	at,$f8
    14b0:	aec91468 	sw	t1,5224(s6)
    14b4:	8ec9002c 	lw	t1,44(s6)
    14b8:	3c010000 	lui	at,0x0
    14bc:	aec8146c 	sw	t0,5228(s6)
    14c0:	e6c81444 	swc1	$f8,5188(s6)
    14c4:	aec91470 	sw	t1,5232(s6)
    14c8:	c4240000 	lwc1	$f4,0(at)
    14cc:	3c0141c8 	lui	at,0x41c8
    14d0:	44813000 	mtc1	at,$f6
    14d4:	e6c41448 	swc1	$f4,5192(s6)
    14d8:	1000000c 	b	150c <L808CC140+0x18c>
    14dc:	e6c6144c 	swc1	$f6,5196(s6)
    14e0:	4406f000 	mfc1	a2,$f30
    14e4:	0c000000 	jal	0 <func_808CADC0>
    14e8:	34e7126e 	ori	a3,a3,0x126e
    14ec:	86c40224 	lh	a0,548(s6)
    14f0:	000423c0 	sll	a0,a0,0xf
    14f4:	00042400 	sll	a0,a0,0x10
    14f8:	0c000000 	jal	0 <func_808CADC0>
    14fc:	00042403 	sra	a0,a0,0x10
    1500:	c6ca148c 	lwc1	$f10,5260(s6)
    1504:	460a0202 	mul.s	$f8,$f0,$f10
    1508:	e6c81488 	swc1	$f8,5256(s6)
    150c:	86c2024e 	lh	v0,590(s6)
    1510:	240100a0 	li	at,160
    1514:	54410005 	bnel	v0,at,152c <L808CC140+0x1ac>
    1518:	24010082 	li	at,130
    151c:	0c000000 	jal	0 <func_808CADC0>
    1520:	2404006b 	li	a0,107
    1524:	86c2024e 	lh	v0,590(s6)
    1528:	24010082 	li	at,130
    152c:	5441001e 	bnel	v0,at,15a8 <L808CC140+0x228>
    1530:	28410065 	slti	at,v0,101
    1534:	968a0ee2 	lhu	t2,3810(s4)
    1538:	8fa401d4 	lw	a0,468(sp)
    153c:	3c180000 	lui	t8,0x0
    1540:	314b0008 	andi	t3,t2,0x8
    1544:	15600017 	bnez	t3,15a4 <L808CC140+0x224>
    1548:	24851d4c 	addiu	a1,a0,7500
    154c:	3c020601 	lui	v0,0x601
    1550:	2442d700 	addiu	v0,v0,-10496
    1554:	00026900 	sll	t5,v0,0x4
    1558:	000d7702 	srl	t6,t5,0x1c
    155c:	000e7880 	sll	t7,t6,0x2
    1560:	030fc021 	addu	t8,t8,t7
    1564:	3c0100ff 	lui	at,0xff
    1568:	8f180000 	lw	t8,0(t8)
    156c:	3421ffff 	ori	at,at,0xffff
    1570:	0041c824 	and	t9,v0,at
    1574:	3c018000 	lui	at,0x8000
    1578:	240800b4 	li	t0,180
    157c:	24090080 	li	t1,128
    1580:	240a0028 	li	t2,40
    1584:	03193021 	addu	a2,t8,t9
    1588:	00c13021 	addu	a2,a2,at
    158c:	afaa0018 	sw	t2,24(sp)
    1590:	afa90014 	sw	t1,20(sp)
    1594:	afa80010 	sw	t0,16(sp)
    1598:	0c000000 	jal	0 <func_808CADC0>
    159c:	240700a0 	li	a3,160
    15a0:	86c2024e 	lh	v0,590(s6)
    15a4:	28410065 	slti	at,v0,101
    15a8:	10200013 	beqz	at,15f8 <L808CC140+0x278>
    15ac:	3c040000 	lui	a0,0x0
    15b0:	3c014248 	lui	at,0x4248
    15b4:	4481c000 	mtc1	at,$f24
    15b8:	3c014000 	lui	at,0x4000
    15bc:	44812000 	mtc1	at,$f4
    15c0:	44813000 	mtc1	at,$f6
    15c4:	44815000 	mtc1	at,$f10
    15c8:	e6c41440 	swc1	$f4,5184(s6)
    15cc:	e6c6143c 	swc1	$f6,5180(s6)
    15d0:	e6ca1438 	swc1	$f10,5176(s6)
    15d4:	c6080024 	lwc1	$f8,36(s0)
    15d8:	46184100 	add.s	$f4,$f8,$f24
    15dc:	e6c41450 	swc1	$f4,5200(s6)
    15e0:	c6060028 	lwc1	$f6,40(s0)
    15e4:	46183280 	add.s	$f10,$f6,$f24
    15e8:	e6ca1454 	swc1	$f10,5204(s6)
    15ec:	c608002c 	lwc1	$f8,44(s0)
    15f0:	46184100 	add.s	$f4,$f8,$f24
    15f4:	e6c41458 	swc1	$f4,5208(s6)
    15f8:	86cb0222 	lh	t3,546(s6)
    15fc:	3c014248 	lui	at,0x4248
    1600:	4481c000 	mtc1	at,$f24
    1604:	24010001 	li	at,1
    1608:	1561003d 	bne	t3,at,1700 <L808CC140+0x380>
    160c:	24840000 	addiu	a0,a0,0
    1610:	86c21400 	lh	v0,5120(s6)
    1614:	24010001 	li	at,1
    1618:	240c0064 	li	t4,100
    161c:	10400009 	beqz	v0,1644 <L808CC140+0x2c4>
    1620:	240d0001 	li	t5,1
    1624:	10410009 	beq	v0,at,164c <L808CC140+0x2cc>
    1628:	24010002 	li	at,2
    162c:	1041000f 	beq	v0,at,166c <L808CC140+0x2ec>
    1630:	24010003 	li	at,3
    1634:	10410032 	beq	v0,at,1700 <L808CC140+0x380>
    1638:	00000000 	nop
    163c:	10000030 	b	1700 <L808CC140+0x380>
    1640:	00000000 	nop
    1644:	a6cc0252 	sh	t4,594(s6)
    1648:	a6cd1400 	sh	t5,5120(s6)
    164c:	86ce0252 	lh	t6,594(s6)
    1650:	240f0002 	li	t7,2
    1654:	2418004b 	li	t8,75
    1658:	15c00029 	bnez	t6,1700 <L808CC140+0x380>
    165c:	00000000 	nop
    1660:	a6cf1400 	sh	t7,5120(s6)
    1664:	10000026 	b	1700 <L808CC140+0x380>
    1668:	a6d80252 	sh	t8,594(s6)
    166c:	8ec81408 	lw	t0,5128(s6)
    1670:	86c30252 	lh	v1,594(s6)
    1674:	8ed9140c 	lw	t9,5132(s6)
    1678:	aec802bc 	sw	t0,700(s6)
    167c:	8ec81410 	lw	t0,5136(s6)
    1680:	aed902c0 	sw	t9,704(s6)
    1684:	14600018 	bnez	v1,16e8 <L808CC140+0x368>
    1688:	aec802c4 	sw	t0,708(s6)
    168c:	24090007 	li	t1,7
    1690:	312a00ff 	andi	t2,t1,0xff
    1694:	000a5880 	sll	t3,t2,0x2
    1698:	016a5823 	subu	t3,t3,t2
    169c:	3c0c0000 	lui	t4,0x0
    16a0:	258c0000 	addiu	t4,t4,0
    16a4:	000b5880 	sll	t3,t3,0x2
    16a8:	a6c00248 	sh	zero,584(s6)
    16ac:	a2c902d4 	sb	t1,724(s6)
    16b0:	016c1021 	addu	v0,t3,t4
    16b4:	c4460000 	lwc1	$f6,0(v0)
    16b8:	3c014348 	lui	at,0x4348
    16bc:	4481b000 	mtc1	at,$f22
    16c0:	e6c602bc 	swc1	$f6,700(s6)
    16c4:	c44a0004 	lwc1	$f10,4(v0)
    16c8:	240d0003 	li	t5,3
    16cc:	86c30252 	lh	v1,594(s6)
    16d0:	46165200 	add.s	$f8,$f10,$f22
    16d4:	46184100 	add.s	$f4,$f8,$f24
    16d8:	e6c402c0 	swc1	$f4,704(s6)
    16dc:	c4460008 	lwc1	$f6,8(v0)
    16e0:	a6cd1400 	sh	t5,5120(s6)
    16e4:	e6c602c4 	swc1	$f6,708(s6)
    16e8:	2401001e 	li	at,30
    16ec:	14610004 	bne	v1,at,1700 <L808CC140+0x380>
    16f0:	240e0028 	li	t6,40
    16f4:	240f0014 	li	t7,20
    16f8:	a6ce022e 	sh	t6,558(s6)
    16fc:	a6cf021c 	sh	t7,540(s6)
    1700:	0c000000 	jal	0 <func_808CADC0>
    1704:	86c5024c 	lh	a1,588(s6)
    1708:	3c040000 	lui	a0,0x0
    170c:	24840000 	addiu	a0,a0,0
    1710:	0c000000 	jal	0 <func_808CADC0>
    1714:	86c50252 	lh	a1,594(s6)
    1718:	86d8024c 	lh	t8,588(s6)
    171c:	26c21408 	addiu	v0,s6,5128
    1720:	5700002b 	bnezl	t8,17d0 <L808CC140+0x450>
    1724:	3c014348 	lui	at,0x4348
    1728:	8c480000 	lw	t0,0(v0)
    172c:	00003025 	move	a2,zero
    1730:	ae28005c 	sw	t0,92(s1)
    1734:	8c590004 	lw	t9,4(v0)
    1738:	ae390060 	sw	t9,96(s1)
    173c:	8c480008 	lw	t0,8(v0)
    1740:	ae280064 	sw	t0,100(s1)
    1744:	8c4a0000 	lw	t2,0(v0)
    1748:	ae2a0074 	sw	t2,116(s1)
    174c:	8c490004 	lw	t1,4(v0)
    1750:	ae290078 	sw	t1,120(s1)
    1754:	8c4a0008 	lw	t2,8(v0)
    1758:	ae2a007c 	sw	t2,124(s1)
    175c:	8ecc1414 	lw	t4,5140(s6)
    1760:	ae2c0050 	sw	t4,80(s1)
    1764:	8ecb1418 	lw	t3,5144(s6)
    1768:	ae2b0054 	sw	t3,84(s1)
    176c:	8ecc141c 	lw	t4,5148(s6)
    1770:	ae2c0058 	sw	t4,88(s1)
    1774:	86c51404 	lh	a1,5124(s6)
    1778:	0c000000 	jal	0 <func_808CADC0>
    177c:	8fa401d4 	lw	a0,468(sp)
    1780:	a6c01404 	sh	zero,5124(s6)
    1784:	86c21404 	lh	v0,5124(s6)
    1788:	a6c21400 	sh	v0,5120(s6)
    178c:	a6c21402 	sh	v0,5122(s6)
    1790:	8fa401d4 	lw	a0,468(sp)
    1794:	0c000000 	jal	0 <func_808CADC0>
    1798:	24851d64 	addiu	a1,a0,7524
    179c:	8fa401d4 	lw	a0,468(sp)
    17a0:	02c02825 	move	a1,s6
    17a4:	0c000000 	jal	0 <func_808CADC0>
    17a8:	24060007 	li	a2,7
    17ac:	3c0e0000 	lui	t6,0x0
    17b0:	25ce0000 	addiu	t6,t6,0
    17b4:	240f0064 	li	t7,100
    17b8:	aece0218 	sw	t6,536(s6)
    17bc:	a2cf02d8 	sb	t7,728(s6)
    17c0:	96980ee2 	lhu	t8,3810(s4)
    17c4:	37190008 	ori	t9,t8,0x8
    17c8:	a6990ee2 	sh	t9,3810(s4)
    17cc:	3c014348 	lui	at,0x4348
    17d0:	4481b000 	mtc1	at,$f22
    17d4:	3c014248 	lui	at,0x4248
    17d8:	4481c000 	mtc1	at,$f24
    17dc:	3c013f00 	lui	at,0x3f00
    17e0:	4481d000 	mtc1	at,$f26
    17e4:	3c0142c8 	lui	at,0x42c8
    17e8:	4481e000 	mtc1	at,$f28
    17ec:	3c120000 	lui	s2,0x0
    17f0:	26520000 	addiu	s2,s2,0
    17f4:	02c02025 	move	a0,s6
    17f8:	0c000000 	jal	0 <func_808CADC0>
    17fc:	8fa501d4 	lw	a1,468(sp)
    1800:	1000000f 	b	1840 <L808CC140+0x4c0>
    1804:	86c20222 	lh	v0,546(s6)
    1808:	3c0140a0 	lui	at,0x40a0
    180c:	44815000 	mtc1	at,$f10
    1810:	3c0142c8 	lui	at,0x42c8
    1814:	4481e000 	mtc1	at,$f28
    1818:	3c013f00 	lui	at,0x3f00
    181c:	4481d000 	mtc1	at,$f26
    1820:	3c014248 	lui	at,0x4248
    1824:	4481c000 	mtc1	at,$f24
    1828:	3c014348 	lui	at,0x4348
    182c:	3c120000 	lui	s2,0x0
    1830:	4481b000 	mtc1	at,$f22
    1834:	26520000 	addiu	s2,s2,0
    1838:	e6ca02a4 	swc1	$f10,676(s6)
    183c:	86c20222 	lh	v0,546(s6)
    1840:	28410034 	slti	at,v0,52
    1844:	14200010 	bnez	at,1888 <L808CC140+0x508>
    1848:	28410065 	slti	at,v0,101
    184c:	14200009 	bnez	at,1874 <L808CC140+0x4f4>
    1850:	2448ff38 	addiu	t0,v0,-200
    1854:	2d010006 	sltiu	at,t0,6
    1858:	102003df 	beqz	at,27d8 <L808CD598>
    185c:	00084080 	sll	t0,t0,0x2
    1860:	3c010000 	lui	at,0x0
    1864:	00280821 	addu	at,at,t0
    1868:	8c280000 	lw	t0,0(at)
    186c:	01000008 	jr	t0
    1870:	00000000 	nop
    1874:	24010064 	li	at,100
    1878:	5041016b 	beql	v0,at,1e28 <L808CC944+0x2a4>
    187c:	86ce0224 	lh	t6,548(s6)
    1880:	100003d6 	b	27dc <L808CD598+0x4>
    1884:	86d90244 	lh	t9,580(s6)
    1888:	28410033 	slti	at,v0,51
    188c:	14200006 	bnez	at,18a8 <L808CC140+0x528>
    1890:	24490001 	addiu	t1,v0,1
    1894:	24010033 	li	at,51
    1898:	1041010d 	beq	v0,at,1cd0 <L808CC944+0x14c>
    189c:	3c090000 	lui	t1,0x0
    18a0:	100003ce 	b	27dc <L808CD598+0x4>
    18a4:	86d90244 	lh	t9,580(s6)
    18a8:	28410004 	slti	at,v0,4
    18ac:	14200005 	bnez	at,18c4 <L808CC140+0x544>
    18b0:	24010032 	li	at,50
    18b4:	504100ed 	beql	v0,at,1c6c <L808CC944+0xe8>
    18b8:	3c01442f 	lui	at,0x442f
    18bc:	100003c7 	b	27dc <L808CD598+0x4>
    18c0:	86d90244 	lh	t9,580(s6)
    18c4:	2d210005 	sltiu	at,t1,5
    18c8:	102003c3 	beqz	at,27d8 <L808CD598>
    18cc:	00094880 	sll	t1,t1,0x2
    18d0:	3c010000 	lui	at,0x0
    18d4:	00290821 	addu	at,at,t1
    18d8:	8c290000 	lw	t1,0(at)
    18dc:	01200008 	jr	t1
    18e0:	00000000 	nop

000018e4 <L808CC6A4>:
    18e4:	240a0001 	li	t2,1
    18e8:	a3aa01cf 	sb	t2,463(sp)
    18ec:	86cb0248 	lh	t3,584(s6)
    18f0:	556003ba 	bnezl	t3,27dc <L808CD598+0x4>
    18f4:	86d90244 	lh	t9,580(s6)
    18f8:	92cc00af 	lbu	t4,175(s6)
    18fc:	240d00c8 	li	t5,200
    1900:	240e0064 	li	t6,100
    1904:	55800006 	bnezl	t4,1920 <L808CC6A4+0x3c>
    1908:	86cf1402 	lh	t7,5122(s6)
    190c:	a6cd0222 	sh	t5,546(s6)
    1910:	a6c00248 	sh	zero,584(s6)
    1914:	100003b0 	b	27d8 <L808CD598>
    1918:	a6ce024a 	sh	t6,586(s6)
    191c:	86cf1402 	lh	t7,5122(s6)
    1920:	24180006 	li	t8,6
    1924:	3c010000 	lui	at,0x0
    1928:	11e00003 	beqz	t7,1938 <L808CC6A4+0x54>
    192c:	00000000 	nop
    1930:	10000029 	b	19d8 <L808CC6A4+0xf4>
    1934:	a2d802d4 	sb	t8,724(s6)
    1938:	c4340000 	lwc1	$f20,0(at)
    193c:	0c000000 	jal	0 <func_808CADC0>
    1940:	4600a306 	mov.s	$f12,$f20
    1944:	4459f800 	cfc1	t9,$31
    1948:	24020001 	li	v0,1
    194c:	44c2f800 	ctc1	v0,$31
    1950:	3c014f00 	lui	at,0x4f00
    1954:	46000224 	cvt.w.s	$f8,$f0
    1958:	4442f800 	cfc1	v0,$31
    195c:	00000000 	nop
    1960:	30420078 	andi	v0,v0,0x78
    1964:	50400013 	beqzl	v0,19b4 <L808CC6A4+0xd0>
    1968:	44024000 	mfc1	v0,$f8
    196c:	44814000 	mtc1	at,$f8
    1970:	24020001 	li	v0,1
    1974:	46080201 	sub.s	$f8,$f0,$f8
    1978:	44c2f800 	ctc1	v0,$31
    197c:	00000000 	nop
    1980:	46004224 	cvt.w.s	$f8,$f8
    1984:	4442f800 	cfc1	v0,$31
    1988:	00000000 	nop
    198c:	30420078 	andi	v0,v0,0x78
    1990:	14400005 	bnez	v0,19a8 <L808CC6A4+0xc4>
    1994:	00000000 	nop
    1998:	44024000 	mfc1	v0,$f8
    199c:	3c018000 	lui	at,0x8000
    19a0:	10000007 	b	19c0 <L808CC6A4+0xdc>
    19a4:	00411025 	or	v0,v0,at
    19a8:	10000005 	b	19c0 <L808CC6A4+0xdc>
    19ac:	2402ffff 	li	v0,-1
    19b0:	44024000 	mfc1	v0,$f8
    19b4:	00000000 	nop
    19b8:	0440fffb 	bltz	v0,19a8 <L808CC6A4+0xc4>
    19bc:	00000000 	nop
    19c0:	92c802d4 	lbu	t0,724(s6)
    19c4:	44d9f800 	ctc1	t9,$31
    19c8:	304200ff 	andi	v0,v0,0xff
    19cc:	1102ffdb 	beq	t0,v0,193c <L808CC6A4+0x58>
    19d0:	00000000 	nop
    19d4:	a2c202d4 	sb	v0,724(s6)
    19d8:	92c902d4 	lbu	t1,724(s6)
    19dc:	3c0b0000 	lui	t3,0x0
    19e0:	256b0000 	addiu	t3,t3,0
    19e4:	00095080 	sll	t2,t1,0x2
    19e8:	01495023 	subu	t2,t2,t1
    19ec:	000a5080 	sll	t2,t2,0x2
    19f0:	014b1021 	addu	v0,t2,t3
    19f4:	c4440000 	lwc1	$f4,0(v0)
    19f8:	86cc1402 	lh	t4,5122(s6)
    19fc:	3c01447a 	lui	at,0x447a
    1a00:	e6c402bc 	swc1	$f4,700(s6)
    1a04:	c4460004 	lwc1	$f6,4(v0)
    1a08:	240d2742 	li	t5,10050
    1a0c:	240e0014 	li	t6,20
    1a10:	46163280 	add.s	$f10,$f6,$f22
    1a14:	44803000 	mtc1	zero,$f6
    1a18:	46185200 	add.s	$f8,$f10,$f24
    1a1c:	44815000 	mtc1	at,$f10
    1a20:	e6c802c0 	swc1	$f8,704(s6)
    1a24:	c4440008 	lwc1	$f4,8(v0)
    1a28:	e6c602a8 	swc1	$f6,680(s6)
    1a2c:	e6ca02ac 	swc1	$f10,684(s6)
    1a30:	11800003 	beqz	t4,1a40 <L808CC6A4+0x15c>
    1a34:	e6c402c4 	swc1	$f4,708(s6)
    1a38:	10000002 	b	1a44 <L808CC6A4+0x160>
    1a3c:	a6cd0248 	sh	t5,584(s6)
    1a40:	a6ce0248 	sh	t6,584(s6)
    1a44:	86d80232 	lh	t8,562(s6)
    1a48:	240f0001 	li	t7,1
    1a4c:	e6dc02b0 	swc1	$f28,688(s6)
    1a50:	13000361 	beqz	t8,27d8 <L808CD598>
    1a54:	a6cf0222 	sh	t7,546(s6)
    1a58:	86d90246 	lh	t9,582(s6)
    1a5c:	a6c00232 	sh	zero,562(s6)
    1a60:	240b0064 	li	t3,100
    1a64:	27280001 	addiu	t0,t9,1
    1a68:	a6c80246 	sh	t0,582(s6)
    1a6c:	86c90246 	lh	t1,582(s6)
    1a70:	240c012c 	li	t4,300
    1a74:	3c014461 	lui	at,0x4461
    1a78:	312a0001 	andi	t2,t1,0x1
    1a7c:	1140000c 	beqz	t2,1ab0 <L808CC6A4+0x1cc>
    1a80:	240e0032 	li	t6,50
    1a84:	44814000 	mtc1	at,$f8
    1a88:	3c014396 	lui	at,0x4396
    1a8c:	a6c00236 	sh	zero,566(s6)
    1a90:	44812000 	mtc1	at,$f4
    1a94:	86cd0236 	lh	t5,566(s6)
    1a98:	a6cb0222 	sh	t3,546(s6)
    1a9c:	a6cc0248 	sh	t4,584(s6)
    1aa0:	e6c802ac 	swc1	$f8,684(s6)
    1aa4:	e6c40278 	swc1	$f4,632(s6)
    1aa8:	1000034b 	b	27d8 <L808CD598>
    1aac:	a6cd0234 	sh	t5,564(s6)
    1ab0:	10000349 	b	27d8 <L808CD598>
    1ab4:	a6ce0222 	sh	t6,546(s6)

00001ab8 <L808CC878>:
    1ab8:	86cf0248 	lh	t7,584(s6)
    1abc:	c7a601c0 	lwc1	$f6,448(sp)
    1ac0:	55e00346 	bnezl	t7,27dc <L808CD598+0x4>
    1ac4:	86d90244 	lh	t9,580(s6)
    1ac8:	46063282 	mul.s	$f10,$f6,$f6
    1acc:	c7a80098 	lwc1	$f8,152(sp)
    1ad0:	c7a60094 	lwc1	$f6,148(sp)
    1ad4:	24180002 	li	t8,2
    1ad8:	460a4100 	add.s	$f4,$f8,$f10
    1adc:	46062000 	add.s	$f0,$f4,$f6
    1ae0:	46000004 	sqrt.s	$f0,$f0
    1ae4:	461c003c 	c.lt.s	$f0,$f28
    1ae8:	00000000 	nop
    1aec:	4502033b 	bc1fl	27dc <L808CD598+0x4>
    1af0:	86d90244 	lh	t9,580(s6)
    1af4:	92d902d4 	lbu	t9,724(s6)
    1af8:	3c010000 	lui	at,0x0
    1afc:	a6d80222 	sh	t8,546(s6)
    1b00:	00194080 	sll	t0,t9,0x2
    1b04:	01194023 	subu	t0,t0,t9
    1b08:	00084080 	sll	t0,t0,0x2
    1b0c:	00280821 	addu	at,at,t0
    1b10:	c4280000 	lwc1	$f8,0(at)
    1b14:	3c01428c 	lui	at,0x428c
    1b18:	44815000 	mtc1	at,$f10
    1b1c:	3c010000 	lui	at,0x0
    1b20:	24090096 	li	t1,150
    1b24:	460a4101 	sub.s	$f4,$f8,$f10
    1b28:	44804000 	mtc1	zero,$f8
    1b2c:	c6ca02bc 	lwc1	$f10,700(s6)
    1b30:	240a0028 	li	t2,40
    1b34:	e6c402c0 	swc1	$f4,704(s6)
    1b38:	c4260000 	lwc1	$f6,0(at)
    1b3c:	c6c402c4 	lwc1	$f4,708(s6)
    1b40:	a6c90248 	sh	t1,584(s6)
    1b44:	a6ca022e 	sh	t2,558(s6)
    1b48:	e6c802b0 	swc1	$f8,688(s6)
    1b4c:	e6ca02c8 	swc1	$f10,712(s6)
    1b50:	e6c602ac 	swc1	$f6,684(s6)
    1b54:	10000320 	b	27d8 <L808CD598>
    1b58:	e6c402d0 	swc1	$f4,720(s6)

00001b5c <L808CC91C>:
    1b5c:	240b0001 	li	t3,1
    1b60:	a3ab01cf 	sb	t3,463(sp)
    1b64:	86cc0248 	lh	t4,584(s6)
    1b68:	3c0d0000 	lui	t5,0x0
    1b6c:	25ad0000 	addiu	t5,t5,0
    1b70:	15800319 	bnez	t4,27d8 <L808CD598>
    1b74:	240e0064 	li	t6,100
    1b78:	aecd0218 	sw	t5,536(s6)
    1b7c:	10000316 	b	27d8 <L808CD598>
    1b80:	a2ce02d8 	sb	t6,728(s6)

00001b84 <L808CC944>:
    1b84:	86cf0248 	lh	t7,584(s6)
    1b88:	c7a201c0 	lwc1	$f2,448(sp)
    1b8c:	55e00313 	bnezl	t7,27dc <L808CD598+0x4>
    1b90:	86d90244 	lh	t9,580(s6)
    1b94:	46021202 	mul.s	$f8,$f2,$f2
    1b98:	c7a60098 	lwc1	$f6,152(sp)
    1b9c:	c7a40094 	lwc1	$f4,148(sp)
    1ba0:	24084000 	li	t0,16384
    1ba4:	3c010000 	lui	at,0x0
    1ba8:	240b0050 	li	t3,80
    1bac:	24050001 	li	a1,1
    1bb0:	46083280 	add.s	$f10,$f6,$f8
    1bb4:	24060050 	li	a2,80
    1bb8:	24075000 	li	a3,20480
    1bbc:	46045000 	add.s	$f0,$f10,$f4
    1bc0:	46000004 	sqrt.s	$f0,$f0
    1bc4:	461c003c 	c.lt.s	$f0,$f28
    1bc8:	00000000 	nop
    1bcc:	45020303 	bc1fl	27dc <L808CD598+0x4>
    1bd0:	86d90244 	lh	t9,580(s6)
    1bd4:	8ed902bc 	lw	t9,700(s6)
    1bd8:	92c902d4 	lbu	t1,724(s6)
    1bdc:	8ed802c0 	lw	t8,704(s6)
    1be0:	aed90024 	sw	t9,36(s6)
    1be4:	8ed902c4 	lw	t9,708(s6)
    1be8:	00095080 	sll	t2,t1,0x2
    1bec:	01495023 	subu	t2,t2,t1
    1bf0:	000a5080 	sll	t2,t2,0x2
    1bf4:	a6c00222 	sh	zero,546(s6)
    1bf8:	a6c80030 	sh	t0,48(s6)
    1bfc:	002a0821 	addu	at,at,t2
    1c00:	aed80028 	sw	t8,40(s6)
    1c04:	aed9002c 	sw	t9,44(s6)
    1c08:	c4260000 	lwc1	$f6,0(at)
    1c0c:	3c01447a 	lui	at,0x447a
    1c10:	44815000 	mtc1	at,$f10
    1c14:	46163200 	add.s	$f8,$f6,$f22
    1c18:	44802000 	mtc1	zero,$f4
    1c1c:	c6c602bc 	lwc1	$f6,700(s6)
    1c20:	a6cb0250 	sh	t3,592(s6)
    1c24:	e6c802c0 	swc1	$f8,704(s6)
    1c28:	c6c802c4 	lwc1	$f8,708(s6)
    1c2c:	e6ca02ac 	swc1	$f10,684(s6)
    1c30:	e6c402b0 	swc1	$f4,688(s6)
    1c34:	e6c602c8 	swc1	$f6,712(s6)
    1c38:	e6c802d0 	swc1	$f8,720(s6)
    1c3c:	0c000000 	jal	0 <func_808CADC0>
    1c40:	8fa401d4 	lw	a0,468(sp)
    1c44:	86cc1402 	lh	t4,5122(s6)
    1c48:	240d0032 	li	t5,50
    1c4c:	240e0032 	li	t6,50
    1c50:	11800003 	beqz	t4,1c60 <L808CC944+0xdc>
    1c54:	00000000 	nop
    1c58:	100002df 	b	27d8 <L808CD598>
    1c5c:	a6cd0248 	sh	t5,584(s6)
    1c60:	100002dd 	b	27d8 <L808CD598>
    1c64:	a6ce0248 	sh	t6,584(s6)
    1c68:	3c01442f 	lui	at,0x442f
    1c6c:	44810000 	mtc1	at,$f0
    1c70:	3c014100 	lui	at,0x4100
    1c74:	44815000 	mtc1	at,$f10
    1c78:	3c01c396 	lui	at,0xc396
    1c7c:	44802000 	mtc1	zero,$f4
    1c80:	e6ca02a4 	swc1	$f10,676(s6)
    1c84:	c6ca0028 	lwc1	$f10,40(s6)
    1c88:	44813000 	mtc1	at,$f6
    1c8c:	e6d602b0 	swc1	$f22,688(s6)
    1c90:	460a003c 	c.lt.s	$f0,$f10
    1c94:	3c010000 	lui	at,0x0
    1c98:	e6c002c0 	swc1	$f0,704(s6)
    1c9c:	e6c402bc 	swc1	$f4,700(s6)
    1ca0:	e6c602c4 	swc1	$f6,708(s6)
    1ca4:	c4280000 	lwc1	$f8,0(at)
    1ca8:	240f0033 	li	t7,51
    1cac:	450002ca 	bc1f	27d8 <L808CD598>
    1cb0:	e6c802ac 	swc1	$f8,684(s6)
    1cb4:	24180019 	li	t8,25
    1cb8:	24190096 	li	t9,150
    1cbc:	a6cf0222 	sh	t7,546(s6)
    1cc0:	a6d80248 	sh	t8,584(s6)
    1cc4:	a6d9024c 	sh	t9,588(s6)
    1cc8:	100002c3 	b	27d8 <L808CD598>
    1ccc:	a6c0023c 	sh	zero,572(s6)
    1cd0:	3c014100 	lui	at,0x4100
    1cd4:	44812000 	mtc1	at,$f4
    1cd8:	86c3023c 	lh	v1,572(s6)
    1cdc:	e6d602b0 	swc1	$f22,688(s6)
    1ce0:	3c010000 	lui	at,0x0
    1ce4:	e6c402a4 	swc1	$f4,676(s6)
    1ce8:	c4260000 	lwc1	$f6,0(at)
    1cec:	00034080 	sll	t0,v1,0x2
    1cf0:	01034023 	subu	t0,t0,v1
    1cf4:	00084080 	sll	t0,t0,0x2
    1cf8:	25290000 	addiu	t1,t1,0
    1cfc:	01091021 	addu	v0,t0,t1
    1d00:	e6c602ac 	swc1	$f6,684(s6)
    1d04:	c4480000 	lwc1	$f8,0(v0)
    1d08:	3c014461 	lui	at,0x4461
    1d0c:	44812000 	mtc1	at,$f4
    1d10:	e6c802bc 	swc1	$f8,700(s6)
    1d14:	c44a0004 	lwc1	$f10,4(v0)
    1d18:	86ca0248 	lh	t2,584(s6)
    1d1c:	4406c000 	mfc1	a2,$f24
    1d20:	46045180 	add.s	$f6,$f10,$f4
    1d24:	4407c000 	mfc1	a3,$f24
    1d28:	02c02825 	move	a1,s6
    1d2c:	240e0002 	li	t6,2
    1d30:	e6c602c0 	swc1	$f6,704(s6)
    1d34:	c4480008 	lwc1	$f8,8(v0)
    1d38:	246c0001 	addiu	t4,v1,1
    1d3c:	15400009 	bnez	t2,1d64 <L808CC944+0x1e0>
    1d40:	e6c802c4 	swc1	$f8,708(s6)
    1d44:	a6cc023c 	sh	t4,572(s6)
    1d48:	86cd023c 	lh	t5,572(s6)
    1d4c:	240b0019 	li	t3,25
    1d50:	a6cb0248 	sh	t3,584(s6)
    1d54:	29a10006 	slti	at,t5,6
    1d58:	54200003 	bnezl	at,1d68 <L808CC944+0x1e4>
    1d5c:	8fa401d4 	lw	a0,468(sp)
    1d60:	a6c0023c 	sh	zero,572(s6)
    1d64:	8fa401d4 	lw	a0,468(sp)
    1d68:	e7bc0010 	swc1	$f28,16(sp)
    1d6c:	0c000000 	jal	0 <func_808CADC0>
    1d70:	afae0014 	sw	t6,20(sp)
    1d74:	86cf024a 	lh	t7,586(s6)
    1d78:	26c4027c 	addiu	a0,s6,636
    1d7c:	3c06447a 	lui	a2,0x447a
    1d80:	55e0001e 	bnezl	t7,1dfc <L808CC944+0x278>
    1d84:	c6c4027c 	lwc1	$f4,636(s6)
    1d88:	3c040000 	lui	a0,0x0
    1d8c:	0c000000 	jal	0 <func_808CADC0>
    1d90:	24840000 	addiu	a0,a0,0
    1d94:	96d80088 	lhu	t8,136(s6)
    1d98:	3c010000 	lui	at,0x0
    1d9c:	2408000a 	li	t0,10
    1da0:	33190010 	andi	t9,t8,0x10
    1da4:	13200018 	beqz	t9,1e08 <L808CC944+0x284>
    1da8:	24042802 	li	a0,10242
    1dac:	c42a0000 	lwc1	$f10,0(at)
    1db0:	3c090000 	lui	t1,0x0
    1db4:	a6c8024a 	sh	t0,586(s6)
    1db8:	25290000 	addiu	t1,t1,0
    1dbc:	e6ca027c 	swc1	$f10,636(s6)
    1dc0:	afa90014 	sw	t1,20(sp)
    1dc4:	afb20010 	sw	s2,16(sp)
    1dc8:	26c500e4 	addiu	a1,s6,228
    1dcc:	24060004 	li	a2,4
    1dd0:	0c000000 	jal	0 <func_808CADC0>
    1dd4:	02403825 	move	a3,s2
    1dd8:	8fa401d4 	lw	a0,468(sp)
    1ddc:	24050003 	li	a1,3
    1de0:	2406000a 	li	a2,10
    1de4:	0c000000 	jal	0 <func_808CADC0>
    1de8:	24077530 	li	a3,30000
    1dec:	240a012c 	li	t2,300
    1df0:	10000005 	b	1e08 <L808CC944+0x284>
    1df4:	a6ca023a 	sh	t2,570(s6)
    1df8:	c6c4027c 	lwc1	$f4,636(s6)
    1dfc:	4405f000 	mfc1	a1,$f30
    1e00:	0c000000 	jal	0 <func_808CADC0>
    1e04:	e7a401b0 	swc1	$f4,432(sp)
    1e08:	86cb024c 	lh	t3,588(s6)
    1e0c:	55600273 	bnezl	t3,27dc <L808CD598+0x4>
    1e10:	86d90244 	lh	t9,580(s6)
    1e14:	a6c00222 	sh	zero,546(s6)
    1e18:	a6c00248 	sh	zero,584(s6)
    1e1c:	1000026e 	b	27d8 <L808CD598>
    1e20:	a6c00232 	sh	zero,562(s6)
    1e24:	86ce0224 	lh	t6,548(s6)
    1e28:	8ecc0004 	lw	t4,4(s6)
    1e2c:	3c010100 	lui	at,0x100
    1e30:	448e3000 	mtc1	t6,$f6
    1e34:	01816825 	or	t5,t4,at
    1e38:	aecd0004 	sw	t5,4(s6)
    1e3c:	46803220 	cvt.s.w	$f8,$f6
    1e40:	3c010000 	lui	at,0x0
    1e44:	c42a0000 	lwc1	$f10,0(at)
    1e48:	460a4102 	mul.s	$f4,$f8,$f10
    1e4c:	4600218d 	trunc.w.s	$f6,$f4
    1e50:	44043000 	mfc1	a0,$f6
    1e54:	00000000 	nop
    1e58:	00042400 	sll	a0,a0,0x10
    1e5c:	0c000000 	jal	0 <func_808CADC0>
    1e60:	00042403 	sra	a0,a0,0x10
    1e64:	3c0141f0 	lui	at,0x41f0
    1e68:	44815000 	mtc1	at,$f10
    1e6c:	c6c80278 	lwc1	$f8,632(s6)
    1e70:	c6660024 	lwc1	$f6,36(s3)
    1e74:	460a0102 	mul.s	$f4,$f0,$f10
    1e78:	86c30248 	lh	v1,584(s6)
    1e7c:	e6c602bc 	swc1	$f6,700(s6)
    1e80:	c66a0028 	lwc1	$f10,40(s3)
    1e84:	3078003f 	andi	t8,v1,0x3f
    1e88:	46044080 	add.s	$f2,$f8,$f4
    1e8c:	44812000 	mtc1	at,$f4
    1e90:	286101c2 	slti	at,v1,450
    1e94:	46025200 	add.s	$f8,$f10,$f2
    1e98:	46044180 	add.s	$f6,$f8,$f4
    1e9c:	44804000 	mtc1	zero,$f8
    1ea0:	e6c602c0 	swc1	$f6,704(s6)
    1ea4:	c66a002c 	lwc1	$f10,44(s3)
    1ea8:	e6c802b0 	swc1	$f8,688(s6)
    1eac:	17000009 	bnez	t8,1ed4 <L808CC944+0x350>
    1eb0:	e6ca02c4 	swc1	$f10,708(s6)
    1eb4:	10200007 	beqz	at,1ed4 <L808CC944+0x350>
    1eb8:	24190028 	li	t9,40
    1ebc:	a6d9022e 	sh	t9,558(s6)
    1ec0:	0c000000 	jal	0 <func_808CADC0>
    1ec4:	02c02025 	move	a0,s6
    1ec8:	10400002 	beqz	v0,1ed4 <L808CC944+0x350>
    1ecc:	24080014 	li	t0,20
    1ed0:	a6c8021c 	sh	t0,540(s6)
    1ed4:	86c90230 	lh	t1,560(s6)
    1ed8:	5520000e 	bnezl	t1,1f14 <L808CC944+0x390>
    1edc:	a6c00222 	sh	zero,546(s6)
    1ee0:	86ca0248 	lh	t2,584(s6)
    1ee4:	3c01428c 	lui	at,0x428c
    1ee8:	5140000a 	beqzl	t2,1f14 <L808CC944+0x390>
    1eec:	a6c00222 	sh	zero,546(s6)
    1ef0:	c6640028 	lwc1	$f4,40(s3)
    1ef4:	44813000 	mtc1	at,$f6
    1ef8:	26c40278 	addiu	a0,s6,632
    1efc:	3c054248 	lui	a1,0x4248
    1f00:	4606203c 	c.lt.s	$f4,$f6
    1f04:	00000000 	nop
    1f08:	45020006 	bc1fl	1f24 <L808CC944+0x3a0>
    1f0c:	4406f000 	mfc1	a2,$f30
    1f10:	a6c00222 	sh	zero,546(s6)
    1f14:	a6c00248 	sh	zero,584(s6)
    1f18:	1000022f 	b	27d8 <L808CD598>
    1f1c:	a6c00232 	sh	zero,562(s6)
    1f20:	4406f000 	mfc1	a2,$f30
    1f24:	0c000000 	jal	0 <func_808CADC0>
    1f28:	3c074000 	lui	a3,0x4000
    1f2c:	1000022b 	b	27dc <L808CD598+0x4>
    1f30:	86d90244 	lh	t9,580(s6)

00001f34 <L808CCCF4>:
    1f34:	c7a00090 	lwc1	$f0,144(sp)
    1f38:	3c014120 	lui	at,0x4120
    1f3c:	4618003c 	c.lt.s	$f0,$f24
    1f40:	00000000 	nop
    1f44:	45020003 	bc1fl	1f54 <L808CCCF4+0x20>
    1f48:	86cb0248 	lh	t3,584(s6)
    1f4c:	a6c00248 	sh	zero,584(s6)
    1f50:	86cb0248 	lh	t3,584(s6)
    1f54:	55600021 	bnezl	t3,1fdc <L808CCCF4+0xa8>
    1f58:	3c01447a 	lui	at,0x447a
    1f5c:	44816000 	mtc1	at,$f12
    1f60:	0c000000 	jal	0 <func_808CADC0>
    1f64:	00000000 	nop
    1f68:	4600028d 	trunc.w.s	$f10,$f0
    1f6c:	3c0143c3 	lui	at,0x43c3
    1f70:	4481a000 	mtc1	at,$f20
    1f74:	440f5000 	mfc1	t7,$f10
    1f78:	00000000 	nop
    1f7c:	25f8000a 	addiu	t8,t7,10
    1f80:	a6d80248 	sh	t8,584(s6)
    1f84:	0c000000 	jal	0 <func_808CADC0>
    1f88:	4600b306 	mov.s	$f12,$f22
    1f8c:	e6c002bc 	swc1	$f0,700(s6)
    1f90:	e6d402c0 	swc1	$f20,704(s6)
    1f94:	0c000000 	jal	0 <func_808CADC0>
    1f98:	4600b306 	mov.s	$f12,$f22
    1f9c:	c6c802bc 	lwc1	$f8,700(s6)
    1fa0:	c6c40024 	lwc1	$f4,36(s6)
    1fa4:	c6c6002c 	lwc1	$f6,44(s6)
    1fa8:	e6c002c4 	swc1	$f0,708(s6)
    1fac:	46044081 	sub.s	$f2,$f8,$f4
    1fb0:	46060301 	sub.s	$f12,$f0,$f6
    1fb4:	46021282 	mul.s	$f10,$f2,$f2
    1fb8:	00000000 	nop
    1fbc:	460c6202 	mul.s	$f8,$f12,$f12
    1fc0:	46085000 	add.s	$f0,$f10,$f8
    1fc4:	46000004 	sqrt.s	$f0,$f0
    1fc8:	4600e03c 	c.lt.s	$f28,$f0
    1fcc:	00000000 	nop
    1fd0:	4500ffec 	bc1f	1f84 <L808CCCF4+0x50>
    1fd4:	00000000 	nop
    1fd8:	3c01447a 	lui	at,0x447a
    1fdc:	44812000 	mtc1	at,$f4
    1fe0:	e6d602b0 	swc1	$f22,688(s6)
    1fe4:	3c010000 	lui	at,0x0
    1fe8:	e6c402b4 	swc1	$f4,692(s6)
    1fec:	c4260000 	lwc1	$f6,0(at)
    1ff0:	3c053e99 	lui	a1,0x3e99
    1ff4:	4406f000 	mfc1	a2,$f30
    1ff8:	3c073d4c 	lui	a3,0x3d4c
    1ffc:	34e7cccd 	ori	a3,a3,0xcccd
    2000:	34a5999a 	ori	a1,a1,0x999a
    2004:	02a02025 	move	a0,s5
    2008:	0c000000 	jal	0 <func_808CADC0>
    200c:	e6c602ac 	swc1	$f6,684(s6)
    2010:	86d9024a 	lh	t9,586(s6)
    2014:	240800c9 	li	t0,201
    2018:	2409001e 	li	t1,30
    201c:	572001ef 	bnezl	t9,27dc <L808CD598+0x4>
    2020:	86d90244 	lh	t9,580(s6)
    2024:	a6c80222 	sh	t0,546(s6)
    2028:	100001eb 	b	27d8 <L808CD598>
    202c:	a6c90248 	sh	t1,584(s6)

00002030 <L808CCDF0>:
    2030:	3c0143c3 	lui	at,0x43c3
    2034:	4481a000 	mtc1	at,$f20
    2038:	3c01447a 	lui	at,0x447a
    203c:	44812000 	mtc1	at,$f4
    2040:	3c0144fa 	lui	at,0x44fa
    2044:	44805000 	mtc1	zero,$f10
    2048:	44804000 	mtc1	zero,$f8
    204c:	44813000 	mtc1	at,$f6
    2050:	3c053e99 	lui	a1,0x3e99
    2054:	4406f000 	mfc1	a2,$f30
    2058:	3c073d4c 	lui	a3,0x3d4c
    205c:	e6d602b0 	swc1	$f22,688(s6)
    2060:	34e7cccd 	ori	a3,a3,0xcccd
    2064:	34a5999a 	ori	a1,a1,0x999a
    2068:	02a02025 	move	a0,s5
    206c:	e6d402c0 	swc1	$f20,704(s6)
    2070:	e6c402b4 	swc1	$f4,692(s6)
    2074:	e6ca02bc 	swc1	$f10,700(s6)
    2078:	e6c802c4 	swc1	$f8,708(s6)
    207c:	0c000000 	jal	0 <func_808CADC0>
    2080:	e6c602ac 	swc1	$f6,684(s6)
    2084:	86ca0248 	lh	t2,584(s6)
    2088:	55400015 	bnezl	t2,20e0 <L808CCDF0+0xb0>
    208c:	86d90224 	lh	t9,548(s6)
    2090:	86cb0224 	lh	t3,548(s6)
    2094:	316c0003 	andi	t4,t3,0x3
    2098:	55800011 	bnezl	t4,20e0 <L808CCDF0+0xb0>
    209c:	86d90224 	lh	t9,548(s6)
    20a0:	86c2021e 	lh	v0,542(s6)
    20a4:	240f00ca 	li	t7,202
    20a8:	2418001e 	li	t8,30
    20ac:	10400009 	beqz	v0,20d4 <L808CCDF0+0xa4>
    20b0:	244dffff 	addiu	t5,v0,-1
    20b4:	a6cd021e 	sh	t5,542(s6)
    20b8:	86ce021e 	lh	t6,542(s6)
    20bc:	55c00008 	bnezl	t6,20e0 <L808CCDF0+0xb0>
    20c0:	86d90224 	lh	t9,548(s6)
    20c4:	0c000000 	jal	0 <func_808CADC0>
    20c8:	24040021 	li	a0,33
    20cc:	10000004 	b	20e0 <L808CCDF0+0xb0>
    20d0:	86d90224 	lh	t9,548(s6)
    20d4:	a6cf0222 	sh	t7,546(s6)
    20d8:	a6d80248 	sh	t8,584(s6)
    20dc:	86d90224 	lh	t9,548(s6)
    20e0:	24090028 	li	t1,40
    20e4:	27ab017c 	addiu	t3,sp,380
    20e8:	3328001f 	andi	t0,t9,0x1f
    20ec:	15000002 	bnez	t0,20f8 <L808CCDF0+0xc8>
    20f0:	3c0c0000 	lui	t4,0x0
    20f4:	a6c9022e 	sh	t1,558(s6)
    20f8:	86ca021e 	lh	t2,542(s6)
    20fc:	258c0000 	addiu	t4,t4,0
    2100:	514001b6 	beqzl	t2,27dc <L808CD598+0x4>
    2104:	86d90244 	lh	t9,580(s6)
    2108:	8d8e0000 	lw	t6,0(t4)
    210c:	8d8d0004 	lw	t5,4(t4)
    2110:	3c180000 	lui	t8,0x0
    2114:	ad6e0000 	sw	t6,0(t3)
    2118:	8d8e0008 	lw	t6,8(t4)
    211c:	27180000 	addiu	t8,t8,0
    2120:	ad6d0004 	sw	t5,4(t3)
    2124:	ad6e0008 	sw	t6,8(t3)
    2128:	8f080000 	lw	t0,0(t8)
    212c:	27af0164 	addiu	t7,sp,356
    2130:	8f190004 	lw	t9,4(t8)
    2134:	ade80000 	sw	t0,0(t7)
    2138:	8f080008 	lw	t0,8(t8)
    213c:	adf90004 	sw	t9,4(t7)
    2140:	240b000a 	li	t3,10
    2144:	ade80008 	sw	t0,8(t7)
    2148:	92c90220 	lbu	t1,544(s6)
    214c:	8faa01d4 	lw	t2,468(sp)
    2150:	240c0001 	li	t4,1
    2154:	15200005 	bnez	t1,216c <L808CCDF0+0x13c>
    2158:	240430da 	li	a0,12506
    215c:	44805000 	mtc1	zero,$f10
    2160:	3c010001 	lui	at,0x1
    2164:	002a0821 	addu	at,at,t2
    2168:	e42a0afc 	swc1	$f10,2812(at)
    216c:	a2cb0220 	sb	t3,544(s6)
    2170:	a7ac0150 	sh	t4,336(sp)
    2174:	86cd0224 	lh	t5,548(s6)
    2178:	26c500e4 	addiu	a1,s6,228
    217c:	24060004 	li	a2,4
    2180:	31ae001c 	andi	t6,t5,0x1c
    2184:	11c00006 	beqz	t6,21a0 <L808CCDF0+0x170>
    2188:	02403825 	move	a3,s2
    218c:	3c0f0000 	lui	t7,0x0
    2190:	25ef0000 	addiu	t7,t7,0
    2194:	afaf0014 	sw	t7,20(sp)
    2198:	0c000000 	jal	0 <func_808CADC0>
    219c:	afb20010 	sw	s2,16(sp)
    21a0:	3c014040 	lui	at,0x4040
    21a4:	4481c000 	mtc1	at,$f24
    21a8:	3c010000 	lui	at,0x0
    21ac:	c4360000 	lwc1	$f22,0(at)
    21b0:	3c0141a0 	lui	at,0x41a0
    21b4:	4481a000 	mtc1	at,$f20
    21b8:	0000a825 	move	s5,zero
    21bc:	27b30158 	addiu	s3,sp,344
    21c0:	27b20170 	addiu	s2,sp,368
    21c4:	27b10188 	addiu	s1,sp,392
    21c8:	3c010000 	lui	at,0x0
    21cc:	c42c0000 	lwc1	$f12,0(at)
    21d0:	0c000000 	jal	0 <func_808CADC0>
    21d4:	26d41970 	addiu	s4,s6,6512
    21d8:	4600020d 	trunc.w.s	$f8,$f0
    21dc:	3c014120 	lui	at,0x4120
    21e0:	44815000 	mtc1	at,$f10
    21e4:	3c010000 	lui	at,0x0
    21e8:	44194000 	mfc1	t9,$f8
    21ec:	4600a306 	mov.s	$f12,$f20
    21f0:	00194400 	sll	t0,t9,0x10
    21f4:	00084c03 	sra	t1,t0,0x10
    21f8:	00095080 	sll	t2,t1,0x2
    21fc:	01495023 	subu	t2,t2,t1
    2200:	000a5080 	sll	t2,t2,0x2
    2204:	02ca1021 	addu	v0,s6,t2
    2208:	c444078c 	lwc1	$f4,1932(v0)
    220c:	e7a40188 	swc1	$f4,392(sp)
    2210:	c4460790 	lwc1	$f6,1936(v0)
    2214:	460a3201 	sub.s	$f8,$f6,$f10
    2218:	c4260000 	lwc1	$f6,0(at)
    221c:	e7a8018c 	swc1	$f8,396(sp)
    2220:	c4440794 	lwc1	$f4,1940(v0)
    2224:	e7a60168 	swc1	$f6,360(sp)
    2228:	0c000000 	jal	0 <func_808CADC0>
    222c:	e7a40190 	swc1	$f4,400(sp)
    2230:	4600028d 	trunc.w.s	$f10,$f0
    2234:	24180064 	li	t8,100
    2238:	afb80014 	sw	t8,20(sp)
    223c:	8fa401d4 	lw	a0,468(sp)
    2240:	440c5000 	mfc1	t4,$f10
    2244:	02202825 	move	a1,s1
    2248:	27a6017c 	addiu	a2,sp,380
    224c:	000c6c00 	sll	t5,t4,0x10
    2250:	000d7403 	sra	t6,t5,0x10
    2254:	25cf0028 	addiu	t7,t6,40
    2258:	afaf0010 	sw	t7,16(sp)
    225c:	0c000000 	jal	0 <func_808CADC0>
    2260:	27a70164 	addiu	a3,sp,356
    2264:	00008025 	move	s0,zero
    2268:	0c000000 	jal	0 <func_808CADC0>
    226c:	4600a306 	mov.s	$f12,$f20
    2270:	e7a00170 	swc1	$f0,368(sp)
    2274:	0c000000 	jal	0 <func_808CADC0>
    2278:	4600a306 	mov.s	$f12,$f20
    227c:	e7a00174 	swc1	$f0,372(sp)
    2280:	0c000000 	jal	0 <func_808CADC0>
    2284:	4600a306 	mov.s	$f12,$f20
    2288:	e7a00178 	swc1	$f0,376(sp)
    228c:	e7b6015c 	swc1	$f22,348(sp)
    2290:	0c000000 	jal	0 <func_808CADC0>
    2294:	4600d306 	mov.s	$f12,$f26
    2298:	e7a00158 	swc1	$f0,344(sp)
    229c:	0c000000 	jal	0 <func_808CADC0>
    22a0:	4600d306 	mov.s	$f12,$f26
    22a4:	e7a00160 	swc1	$f0,352(sp)
    22a8:	0c000000 	jal	0 <func_808CADC0>
    22ac:	4600c306 	mov.s	$f12,$f24
    22b0:	4600020d 	trunc.w.s	$f8,$f0
    22b4:	02802025 	move	a0,s4
    22b8:	02202825 	move	a1,s1
    22bc:	02403025 	move	a2,s2
    22c0:	44084000 	mfc1	t0,$f8
    22c4:	02603825 	move	a3,s3
    22c8:	00084c00 	sll	t1,t0,0x10
    22cc:	00095403 	sra	t2,t1,0x10
    22d0:	254b0008 	addiu	t3,t2,8
    22d4:	448b2000 	mtc1	t3,$f4
    22d8:	00000000 	nop
    22dc:	468021a0 	cvt.s.w	$f6,$f4
    22e0:	0c000000 	jal	0 <func_808CADC0>
    22e4:	e7a60010 	swc1	$f6,16(sp)
    22e8:	26100001 	addiu	s0,s0,1
    22ec:	00108400 	sll	s0,s0,0x10
    22f0:	00108403 	sra	s0,s0,0x10
    22f4:	2a01000f 	slti	at,s0,15
    22f8:	1420ffdb 	bnez	at,2268 <L808CCDF0+0x238>
    22fc:	00000000 	nop
    2300:	87ac0150 	lh	t4,336(sp)
    2304:	26b50001 	addiu	s5,s5,1
    2308:	0015ac00 	sll	s5,s5,0x10
    230c:	0015ac03 	sra	s5,s5,0x10
    2310:	02ac082a 	slt	at,s5,t4
    2314:	1420ffac 	bnez	at,21c8 <L808CCDF0+0x198>
    2318:	00000000 	nop
    231c:	1000012f 	b	27dc <L808CD598+0x4>
    2320:	86d90244 	lh	t9,580(s6)

00002324 <L808CD0E4>:
    2324:	86c30248 	lh	v1,584(s6)
    2328:	24020001 	li	v0,1
    232c:	240d0003 	li	t5,3
    2330:	28610012 	slti	at,v1,18
    2334:	a6c20244 	sh	v0,580(s6)
    2338:	10200005 	beqz	at,2350 <L808CD0E4+0x2c>
    233c:	a2cd0220 	sb	t5,544(s6)
    2340:	00037040 	sll	t6,v1,0x1
    2344:	02ce7821 	addu	t7,s6,t6
    2348:	a5e213d0 	sh	v0,5072(t7)
    234c:	86c30248 	lh	v1,584(s6)
    2350:	1460000e 	bnez	v1,238c <L808CD0E4+0x68>
    2354:	3c0142b4 	lui	at,0x42b4
    2358:	4481c000 	mtc1	at,$f24
    235c:	3c014220 	lui	at,0x4220
    2360:	44815000 	mtc1	at,$f10
    2364:	241800cb 	li	t8,203
    2368:	2419000f 	li	t9,15
    236c:	3c014316 	lui	at,0x4316
    2370:	44814000 	mtc1	at,$f8
    2374:	a6d80222 	sh	t8,546(s6)
    2378:	a6d90248 	sh	t9,584(s6)
    237c:	a6c0023c 	sh	zero,572(s6)
    2380:	e6780028 	swc1	$f24,40(s3)
    2384:	e66a0024 	swc1	$f10,36(s3)
    2388:	e668002c 	swc1	$f8,44(s3)
    238c:	10000113 	b	27dc <L808CD598+0x4>
    2390:	86d90244 	lh	t9,580(s6)

00002394 <L808CD154>:
    2394:	86c80248 	lh	t0,584(s6)
    2398:	240900cc 	li	t1,204
    239c:	240a0014 	li	t2,20
    23a0:	5500010e 	bnezl	t0,27dc <L808CD598+0x4>
    23a4:	86d90244 	lh	t9,580(s6)
    23a8:	a6c90222 	sh	t1,546(s6)
    23ac:	a6ca0248 	sh	t2,584(s6)
    23b0:	10000109 	b	27d8 <L808CD598>
    23b4:	a6c00244 	sh	zero,580(s6)

000023b8 <L808CD178>:
    23b8:	44800000 	mtc1	zero,$f0
    23bc:	86c30248 	lh	v1,584(s6)
    23c0:	24010001 	li	at,1
    23c4:	e6c002a4 	swc1	$f0,676(s6)
    23c8:	e6c00068 	swc1	$f0,104(s6)
    23cc:	e6c002ac 	swc1	$f0,684(s6)
    23d0:	14610010 	bne	v1,at,2414 <L808CD178+0x5c>
    23d4:	e6c002a8 	swc1	$f0,680(s6)
    23d8:	3c014461 	lui	at,0x4461
    23dc:	44812000 	mtc1	at,$f4
    23e0:	3c014316 	lui	at,0x4316
    23e4:	a6c00032 	sh	zero,50(s6)
    23e8:	44813000 	mtc1	at,$f6
    23ec:	86cb0032 	lh	t3,50(s6)
    23f0:	240c1200 	li	t4,4608
    23f4:	e6c00024 	swc1	$f0,36(s6)
    23f8:	a6cc00b8 	sh	t4,184(s6)
    23fc:	e6c0005c 	swc1	$f0,92(s6)
    2400:	e6c00064 	swc1	$f0,100(s6)
    2404:	86c30248 	lh	v1,584(s6)
    2408:	e6c40028 	swc1	$f4,40(s6)
    240c:	e6c6002c 	swc1	$f6,44(s6)
    2410:	a6cb0030 	sh	t3,48(s6)
    2414:	1460006b 	bnez	v1,25c4 <L808CD178+0x20c>
    2418:	3c0142dc 	lui	at,0x42dc
    241c:	44815000 	mtc1	at,$f10
    2420:	c6c80028 	lwc1	$f8,40(s6)
    2424:	3c0142dc 	lui	at,0x42dc
    2428:	460a403e 	c.le.s	$f8,$f10
    242c:	00000000 	nop
    2430:	45020061 	bc1fl	25b8 <L808CD178+0x200>
    2434:	c6c60060 	lwc1	$f6,96(s6)
    2438:	86c3023c 	lh	v1,572(s6)
    243c:	44812000 	mtc1	at,$f4
    2440:	e6c00060 	swc1	$f0,96(s6)
    2444:	14600060 	bnez	v1,25c8 <L808CD178+0x210>
    2448:	e6c40028 	swc1	$f4,40(s6)
    244c:	246d0001 	addiu	t5,v1,1
    2450:	240e003c 	li	t6,60
    2454:	240f0014 	li	t7,20
    2458:	3c180000 	lui	t8,0x0
    245c:	a6cd023c 	sh	t5,572(s6)
    2460:	a6ce024a 	sh	t6,586(s6)
    2464:	a6cf0242 	sh	t7,578(s6)
    2468:	27180000 	addiu	t8,t8,0
    246c:	afb80014 	sw	t8,20(sp)
    2470:	afb20010 	sw	s2,16(sp)
    2474:	24043889 	li	a0,14473
    2478:	26c500e4 	addiu	a1,s6,228
    247c:	24060004 	li	a2,4
    2480:	0c000000 	jal	0 <func_808CADC0>
    2484:	02403825 	move	a3,s2
    2488:	8fa401d4 	lw	a0,468(sp)
    248c:	02c02825 	move	a1,s6
    2490:	0c000000 	jal	0 <func_808CADC0>
    2494:	24060005 	li	a2,5
    2498:	3c014396 	lui	at,0x4396
    249c:	4481b000 	mtc1	at,$f22
    24a0:	3c014100 	lui	at,0x4100
    24a4:	3c130000 	lui	s3,0x0
    24a8:	3c120000 	lui	s2,0x0
    24ac:	4481a000 	mtc1	at,$f20
    24b0:	26520000 	addiu	s2,s2,0
    24b4:	26730000 	addiu	s3,s3,0
    24b8:	0000a825 	move	s5,zero
    24bc:	26d41970 	addiu	s4,s6,6512
    24c0:	27b10138 	addiu	s1,sp,312
    24c4:	27b00144 	addiu	s0,sp,324
    24c8:	8e480000 	lw	t0,0(s2)
    24cc:	8e6a0000 	lw	t2,0(s3)
    24d0:	8e590004 	lw	t9,4(s2)
    24d4:	ae080000 	sw	t0,0(s0)
    24d8:	ae2a0000 	sw	t2,0(s1)
    24dc:	8e480008 	lw	t0,8(s2)
    24e0:	8e6a0008 	lw	t2,8(s3)
    24e4:	8e690004 	lw	t1,4(s3)
    24e8:	4600a306 	mov.s	$f12,$f20
    24ec:	ae190004 	sw	t9,4(s0)
    24f0:	ae080008 	sw	t0,8(s0)
    24f4:	ae2a0008 	sw	t2,8(s1)
    24f8:	0c000000 	jal	0 <func_808CADC0>
    24fc:	ae290004 	sw	t1,4(s1)
    2500:	e7a00144 	swc1	$f0,324(sp)
    2504:	0c000000 	jal	0 <func_808CADC0>
    2508:	4600f306 	mov.s	$f12,$f30
    250c:	e7a00148 	swc1	$f0,328(sp)
    2510:	0c000000 	jal	0 <func_808CADC0>
    2514:	4600a306 	mov.s	$f12,$f20
    2518:	3c010000 	lui	at,0x0
    251c:	c4260000 	lwc1	$f6,0(at)
    2520:	3c014120 	lui	at,0x4120
    2524:	44816000 	mtc1	at,$f12
    2528:	e7a0014c 	swc1	$f0,332(sp)
    252c:	0c000000 	jal	0 <func_808CADC0>
    2530:	e7a6013c 	swc1	$f6,316(sp)
    2534:	c6ca0024 	lwc1	$f10,36(s6)
    2538:	3c014120 	lui	at,0x4120
    253c:	44816000 	mtc1	at,$f12
    2540:	460a0200 	add.s	$f8,$f0,$f10
    2544:	0c000000 	jal	0 <func_808CADC0>
    2548:	e7a8012c 	swc1	$f8,300(sp)
    254c:	c6c40028 	lwc1	$f4,40(s6)
    2550:	3c014120 	lui	at,0x4120
    2554:	44816000 	mtc1	at,$f12
    2558:	46040180 	add.s	$f6,$f0,$f4
    255c:	0c000000 	jal	0 <func_808CADC0>
    2560:	e7a60130 	swc1	$f6,304(sp)
    2564:	c6ca002c 	lwc1	$f10,44(s6)
    2568:	4600e306 	mov.s	$f12,$f28
    256c:	460a0200 	add.s	$f8,$f0,$f10
    2570:	0c000000 	jal	0 <func_808CADC0>
    2574:	e7a80134 	swc1	$f8,308(sp)
    2578:	46160100 	add.s	$f4,$f0,$f22
    257c:	02802025 	move	a0,s4
    2580:	27a5012c 	addiu	a1,sp,300
    2584:	02003025 	move	a2,s0
    2588:	e7a40010 	swc1	$f4,16(sp)
    258c:	0c000000 	jal	0 <func_808CADC0>
    2590:	02203825 	move	a3,s1
    2594:	26b50001 	addiu	s5,s5,1
    2598:	0015ac00 	sll	s5,s5,0x10
    259c:	0015ac03 	sra	s5,s5,0x10
    25a0:	2aa1000f 	slti	at,s5,15
    25a4:	5420ffc9 	bnezl	at,24cc <L808CD178+0x114>
    25a8:	8e480000 	lw	t0,0(s2)
    25ac:	10000007 	b	25cc <L808CD178+0x214>
    25b0:	86cb024a 	lh	t3,586(s6)
    25b4:	c6c60060 	lwc1	$f6,96(s6)
    25b8:	461e3281 	sub.s	$f10,$f6,$f30
    25bc:	10000002 	b	25c8 <L808CD178+0x210>
    25c0:	e6ca0060 	swc1	$f10,96(s6)
    25c4:	e6c00060 	swc1	$f0,96(s6)
    25c8:	86cb024a 	lh	t3,586(s6)
    25cc:	24010001 	li	at,1
    25d0:	240c00cd 	li	t4,205
    25d4:	15610080 	bne	t3,at,27d8 <L808CD598>
    25d8:	240d0046 	li	t5,70
    25dc:	a6cc0222 	sh	t4,546(s6)
    25e0:	1000007d 	b	27d8 <L808CD598>
    25e4:	a6cd0248 	sh	t5,584(s6)

000025e8 <L808CD3A8>:
    25e8:	3c0142dc 	lui	at,0x42dc
    25ec:	44804000 	mtc1	zero,$f8
    25f0:	44812000 	mtc1	at,$f4
    25f4:	86c30248 	lh	v1,584(s6)
    25f8:	e6c80060 	swc1	$f8,96(s6)
    25fc:	e6c40028 	swc1	$f4,40(s6)
    2600:	44802000 	mtc1	zero,$f4
    2604:	44804000 	mtc1	zero,$f8
    2608:	44803000 	mtc1	zero,$f6
    260c:	44805000 	mtc1	zero,$f10
    2610:	28610032 	slti	at,v1,50
    2614:	e6c402a8 	swc1	$f4,680(s6)
    2618:	e6c802ac 	swc1	$f8,684(s6)
    261c:	e6c602a4 	swc1	$f6,676(s6)
    2620:	10200049 	beqz	at,2748 <L808CD3A8+0x160>
    2624:	e6ca0068 	swc1	$f10,104(s6)
    2628:	18600047 	blez	v1,2748 <L808CD3A8+0x160>
    262c:	3c0e0000 	lui	t6,0x0
    2630:	25ce0000 	addiu	t6,t6,0
    2634:	8dd80000 	lw	t8,0(t6)
    2638:	27b00114 	addiu	s0,sp,276
    263c:	3c190000 	lui	t9,0x0
    2640:	ae180000 	sw	t8,0(s0)
    2644:	8dcf0004 	lw	t7,4(t6)
    2648:	27390000 	addiu	t9,t9,0
    264c:	27b10108 	addiu	s1,sp,264
    2650:	ae0f0004 	sw	t7,4(s0)
    2654:	8dd80008 	lw	t8,8(t6)
    2658:	3c0a0000 	lui	t2,0x0
    265c:	254a0000 	addiu	t2,t2,0
    2660:	ae180008 	sw	t8,8(s0)
    2664:	8f290000 	lw	t1,0(t9)
    2668:	2404301c 	li	a0,12316
    266c:	26c500e4 	addiu	a1,s6,228
    2670:	ae290000 	sw	t1,0(s1)
    2674:	8f280004 	lw	t0,4(t9)
    2678:	24060004 	li	a2,4
    267c:	02403825 	move	a3,s2
    2680:	ae280004 	sw	t0,4(s1)
    2684:	8f290008 	lw	t1,8(t9)
    2688:	ae290008 	sw	t1,8(s1)
    268c:	afaa0014 	sw	t2,20(sp)
    2690:	0c000000 	jal	0 <func_808CADC0>
    2694:	afb20010 	sw	s2,16(sp)
    2698:	3c014220 	lui	at,0x4220
    269c:	44816000 	mtc1	at,$f12
    26a0:	0c000000 	jal	0 <func_808CADC0>
    26a4:	00000000 	nop
    26a8:	c6c60024 	lwc1	$f6,36(s6)
    26ac:	3c014120 	lui	at,0x4120
    26b0:	44816000 	mtc1	at,$f12
    26b4:	46060280 	add.s	$f10,$f0,$f6
    26b8:	0c000000 	jal	0 <func_808CADC0>
    26bc:	e7aa0120 	swc1	$f10,288(sp)
    26c0:	c6c80028 	lwc1	$f8,40(s6)
    26c4:	3c014120 	lui	at,0x4120
    26c8:	44813000 	mtc1	at,$f6
    26cc:	46080100 	add.s	$f4,$f0,$f8
    26d0:	3c014220 	lui	at,0x4220
    26d4:	44816000 	mtc1	at,$f12
    26d8:	46062281 	sub.s	$f10,$f4,$f6
    26dc:	0c000000 	jal	0 <func_808CADC0>
    26e0:	e7aa0124 	swc1	$f10,292(sp)
    26e4:	c6c8002c 	lwc1	$f8,44(s6)
    26e8:	3c0140a0 	lui	at,0x40a0
    26ec:	44813000 	mtc1	at,$f6
    26f0:	46080100 	add.s	$f4,$f0,$f8
    26f4:	3c010000 	lui	at,0x0
    26f8:	c4280000 	lwc1	$f8,0(at)
    26fc:	3c014170 	lui	at,0x4170
    2700:	46062280 	add.s	$f10,$f4,$f6
    2704:	44816000 	mtc1	at,$f12
    2708:	e7a8010c 	swc1	$f8,268(sp)
    270c:	0c000000 	jal	0 <func_808CADC0>
    2710:	e7aa0128 	swc1	$f10,296(sp)
    2714:	4600010d 	trunc.w.s	$f4,$f0
    2718:	8fa401d4 	lw	a0,468(sp)
    271c:	27a50120 	addiu	a1,sp,288
    2720:	02003025 	move	a2,s0
    2724:	440c2000 	mfc1	t4,$f4
    2728:	02203825 	move	a3,s1
    272c:	afa00014 	sw	zero,20(sp)
    2730:	000c6c00 	sll	t5,t4,0x10
    2734:	000d7403 	sra	t6,t5,0x10
    2738:	25cf001e 	addiu	t7,t6,30
    273c:	0c000000 	jal	0 <func_808CADC0>
    2740:	afaf0010 	sw	t7,16(sp)
    2744:	86c30248 	lh	v1,584(s6)
    2748:	28610014 	slti	at,v1,20
    274c:	10200009 	beqz	at,2774 <L808CD3A8+0x18c>
    2750:	26c40050 	addiu	a0,s6,80
    2754:	4405f000 	mfc1	a1,$f30
    2758:	3c063b23 	lui	a2,0x3b23
    275c:	0c000000 	jal	0 <func_808CADC0>
    2760:	34c6d70a 	ori	a2,a2,0xd70a
    2764:	02c02025 	move	a0,s6
    2768:	0c000000 	jal	0 <func_808CADC0>
    276c:	8ec50050 	lw	a1,80(s6)
    2770:	86c30248 	lh	v1,584(s6)
    2774:	14600009 	bnez	v1,279c <L808CD3A8+0x1b4>
    2778:	3c01447a 	lui	at,0x447a
    277c:	c6c60028 	lwc1	$f6,40(s6)
    2780:	44815000 	mtc1	at,$f10
    2784:	3c180000 	lui	t8,0x0
    2788:	27180000 	addiu	t8,t8,0
    278c:	460a3201 	sub.s	$f8,$f6,$f10
    2790:	aed80218 	sw	t8,536(s6)
    2794:	86c30248 	lh	v1,584(s6)
    2798:	e6c80028 	swc1	$f8,40(s6)
    279c:	24010007 	li	at,7
    27a0:	1461000d 	bne	v1,at,27d8 <L808CD598>
    27a4:	8fa501d4 	lw	a1,468(sp)
    27a8:	c6c40028 	lwc1	$f4,40(s6)
    27ac:	8ec70024 	lw	a3,36(s6)
    27b0:	24a41c24 	addiu	a0,a1,7204
    27b4:	e7a40010 	swc1	$f4,16(sp)
    27b8:	c6c6002c 	lwc1	$f6,44(s6)
    27bc:	afa00024 	sw	zero,36(sp)
    27c0:	afa00020 	sw	zero,32(sp)
    27c4:	afa0001c 	sw	zero,28(sp)
    27c8:	afa00018 	sw	zero,24(sp)
    27cc:	2406005f 	li	a2,95
    27d0:	0c000000 	jal	0 <func_808CADC0>
    27d4:	e7a60014 	swc1	$f6,20(sp)

000027d8 <L808CD598>:
    27d8:	86d90244 	lh	t9,580(s6)
    27dc:	3c0142b4 	lui	at,0x42b4
    27e0:	4481c000 	mtc1	at,$f24
    27e4:	17200212 	bnez	t9,3030 <L808CD598+0x858>
    27e8:	c7aa01b4 	lwc1	$f10,436(sp)
    27ec:	c6c402a8 	lwc1	$f4,680(s6)
    27f0:	4600520d 	trunc.w.s	$f8,$f10
    27f4:	26c40032 	addiu	a0,s6,50
    27f8:	2406000a 	li	a2,10
    27fc:	4600218d 	trunc.w.s	$f6,$f4
    2800:	44054000 	mfc1	a1,$f8
    2804:	44073000 	mfc1	a3,$f6
    2808:	00052c00 	sll	a1,a1,0x10
    280c:	00052c03 	sra	a1,a1,0x10
    2810:	00073c00 	sll	a3,a3,0x10
    2814:	0c000000 	jal	0 <func_808CADC0>
    2818:	00073c03 	sra	a3,a3,0x10
    281c:	86c20222 	lh	v0,546(s6)
    2820:	24010064 	li	at,100
    2824:	10410002 	beq	v0,at,2830 <L808CD598+0x58>
    2828:	24010065 	li	at,101
    282c:	14410012 	bne	v0,at,2878 <L808CD598+0xa0>
    2830:	3c0142dc 	lui	at,0x42dc
    2834:	44814000 	mtc1	at,$f8
    2838:	c6ca0028 	lwc1	$f10,40(s6)
    283c:	c7a401b0 	lwc1	$f4,432(sp)
    2840:	4608503c 	c.lt.s	$f10,$f8
    2844:	00000000 	nop
    2848:	4502000c 	bc1fl	287c <L808CD598+0xa4>
    284c:	c7a601b0 	lwc1	$f6,432(sp)
    2850:	44800000 	mtc1	zero,$f0
    2854:	26c40028 	addiu	a0,s6,40
    2858:	3c0542dc 	lui	a1,0x42dc
    285c:	4600203c 	c.lt.s	$f4,$f0
    2860:	3c0740a0 	lui	a3,0x40a0
    2864:	45020005 	bc1fl	287c <L808CD598+0xa4>
    2868:	c7a601b0 	lwc1	$f6,432(sp)
    286c:	4406f000 	mfc1	a2,$f30
    2870:	0c000000 	jal	0 <func_808CADC0>
    2874:	e7a001b0 	swc1	$f0,432(sp)
    2878:	c7a601b0 	lwc1	$f6,432(sp)
    287c:	c6c802a8 	lwc1	$f8,680(s6)
    2880:	26c40030 	addiu	a0,s6,48
    2884:	4600328d 	trunc.w.s	$f10,$f6
    2888:	2406000a 	li	a2,10
    288c:	4600410d 	trunc.w.s	$f4,$f8
    2890:	44055000 	mfc1	a1,$f10
    2894:	44072000 	mfc1	a3,$f4
    2898:	00052c00 	sll	a1,a1,0x10
    289c:	00052c03 	sra	a1,a1,0x10
    28a0:	00073c00 	sll	a3,a3,0x10
    28a4:	0c000000 	jal	0 <func_808CADC0>
    28a8:	00073c03 	sra	a3,a3,0x10
    28ac:	4406f000 	mfc1	a2,$f30
    28b0:	3c07469c 	lui	a3,0x469c
    28b4:	34e74000 	ori	a3,a3,0x4000
    28b8:	26c402a8 	addiu	a0,s6,680
    28bc:	0c000000 	jal	0 <func_808CADC0>
    28c0:	8ec502ac 	lw	a1,684(s6)
    28c4:	4406f000 	mfc1	a2,$f30
    28c8:	3c073dcc 	lui	a3,0x3dcc
    28cc:	34e7cccd 	ori	a3,a3,0xcccd
    28d0:	26c40068 	addiu	a0,s6,104
    28d4:	0c000000 	jal	0 <func_808CADC0>
    28d8:	8ec502a4 	lw	a1,676(s6)
    28dc:	86cc0222 	lh	t4,546(s6)
    28e0:	298100cc 	slti	at,t4,204
    28e4:	10200003 	beqz	at,28f4 <L808CD598+0x11c>
    28e8:	00000000 	nop
    28ec:	0c000000 	jal	0 <func_808CADC0>
    28f0:	02c02025 	move	a0,s6
    28f4:	0c000000 	jal	0 <func_808CADC0>
    28f8:	02c02025 	move	a0,s6
    28fc:	86cd0228 	lh	t5,552(s6)
    2900:	25ae0001 	addiu	t6,t5,1
    2904:	a6ce0228 	sh	t6,552(s6)
    2908:	86c30228 	lh	v1,552(s6)
    290c:	28610064 	slti	at,v1,100
    2910:	54200004 	bnezl	at,2924 <L808CD598+0x14c>
    2914:	00038400 	sll	s0,v1,0x10
    2918:	a6c00228 	sh	zero,552(s6)
    291c:	86c30228 	lh	v1,552(s6)
    2920:	00038400 	sll	s0,v1,0x10
    2924:	00108403 	sra	s0,s0,0x10
    2928:	3c014700 	lui	at,0x4700
    292c:	00107880 	sll	t7,s0,0x2
    2930:	4481a000 	mtc1	at,$f20
    2934:	c6c60024 	lwc1	$f6,36(s6)
    2938:	01f07823 	subu	t7,t7,s0
    293c:	3c010000 	lui	at,0x0
    2940:	000f7880 	sll	t7,t7,0x2
    2944:	c4360000 	lwc1	$f22,0(at)
    2948:	02cf1021 	addu	v0,s6,t7
    294c:	e446078c 	swc1	$f6,1932(v0)
    2950:	c6ca0028 	lwc1	$f10,40(s6)
    2954:	e44a0790 	swc1	$f10,1936(v0)
    2958:	c6c8002c 	lwc1	$f8,44(s6)
    295c:	e4480794 	swc1	$f8,1940(v0)
    2960:	86d80030 	lh	t8,48(s6)
    2964:	44982000 	mtc1	t8,$f4
    2968:	00000000 	nop
    296c:	468021a0 	cvt.s.w	$f6,$f4
    2970:	46143283 	div.s	$f10,$f6,$f20
    2974:	46165202 	mul.s	$f8,$f10,$f22
    2978:	e44802dc 	swc1	$f8,732(v0)
    297c:	86d90032 	lh	t9,50(s6)
    2980:	44992000 	mtc1	t9,$f4
    2984:	00000000 	nop
    2988:	468021a0 	cvt.s.w	$f6,$f4
    298c:	46143283 	div.s	$f10,$f6,$f20
    2990:	46165202 	mul.s	$f8,$f10,$f22
    2994:	e44802e0 	swc1	$f8,736(v0)
    2998:	86c80034 	lh	t0,52(s6)
    299c:	44882000 	mtc1	t0,$f4
    29a0:	00000000 	nop
    29a4:	468021a0 	cvt.s.w	$f6,$f4
    29a8:	46143283 	div.s	$f10,$f6,$f20
    29ac:	46165202 	mul.s	$f8,$f10,$f22
    29b0:	e44802e4 	swc1	$f8,740(v0)
    29b4:	86c9022a 	lh	t1,554(s6)
    29b8:	252a0001 	addiu	t2,t1,1
    29bc:	a6ca022a 	sh	t2,554(s6)
    29c0:	86c2022a 	lh	v0,554(s6)
    29c4:	2841001e 	slti	at,v0,30
    29c8:	54200004 	bnezl	at,29dc <L808CD598+0x204>
    29cc:	86cb0224 	lh	t3,548(s6)
    29d0:	a6c0022a 	sh	zero,554(s6)
    29d4:	86c2022a 	lh	v0,554(s6)
    29d8:	86cb0224 	lh	t3,548(s6)
    29dc:	3c010000 	lui	at,0x0
    29e0:	c42a0000 	lwc1	$f10,0(at)
    29e4:	448b2000 	mtc1	t3,$f4
    29e8:	00028400 	sll	s0,v0,0x10
    29ec:	00108403 	sra	s0,s0,0x10
    29f0:	468021a0 	cvt.s.w	$f6,$f4
    29f4:	460a3202 	mul.s	$f8,$f6,$f10
    29f8:	4600410d 	trunc.w.s	$f4,$f8
    29fc:	44042000 	mfc1	a0,$f4
    2a00:	00000000 	nop
    2a04:	00042400 	sll	a0,a0,0x10
    2a08:	0c000000 	jal	0 <func_808CADC0>
    2a0c:	00042403 	sra	a0,a0,0x10
    2a10:	3c010000 	lui	at,0x0
    2a14:	c4260000 	lwc1	$f6,0(at)
    2a18:	00106880 	sll	t5,s0,0x2
    2a1c:	02cd8821 	addu	s1,s6,t5
    2a20:	46060282 	mul.s	$f10,$f0,$f6
    2a24:	3c010000 	lui	at,0x0
    2a28:	461e5200 	add.s	$f8,$f10,$f30
    2a2c:	e6280f6c 	swc1	$f8,3948(s1)
    2a30:	86ce0224 	lh	t6,548(s6)
    2a34:	c42a0000 	lwc1	$f10,0(at)
    2a38:	448e2000 	mtc1	t6,$f4
    2a3c:	00000000 	nop
    2a40:	468021a0 	cvt.s.w	$f6,$f4
    2a44:	460a3202 	mul.s	$f8,$f6,$f10
    2a48:	4600410d 	trunc.w.s	$f4,$f8
    2a4c:	44042000 	mfc1	a0,$f4
    2a50:	00000000 	nop
    2a54:	00042400 	sll	a0,a0,0x10
    2a58:	0c000000 	jal	0 <func_808CADC0>
    2a5c:	00042403 	sra	a0,a0,0x10
    2a60:	3c010000 	lui	at,0x0
    2a64:	c4260000 	lwc1	$f6,0(at)
    2a68:	3c0145b2 	lui	at,0x45b2
    2a6c:	46060282 	mul.s	$f10,$f0,$f6
    2a70:	461e5200 	add.s	$f8,$f10,$f30
    2a74:	44815000 	mtc1	at,$f10
    2a78:	e6281158 	swc1	$f8,4440(s1)
    2a7c:	86d80224 	lh	t8,548(s6)
    2a80:	44982000 	mtc1	t8,$f4
    2a84:	00000000 	nop
    2a88:	468021a0 	cvt.s.w	$f6,$f4
    2a8c:	460a3202 	mul.s	$f8,$f6,$f10
    2a90:	4600410d 	trunc.w.s	$f4,$f8
    2a94:	44042000 	mfc1	a0,$f4
    2a98:	00000000 	nop
    2a9c:	00042400 	sll	a0,a0,0x10
    2aa0:	0c000000 	jal	0 <func_808CADC0>
    2aa4:	00042403 	sra	a0,a0,0x10
    2aa8:	3c010000 	lui	at,0x0
    2aac:	c4260000 	lwc1	$f6,0(at)
    2ab0:	00104080 	sll	t0,s0,0x2
    2ab4:	01104023 	subu	t0,t0,s0
    2ab8:	46060282 	mul.s	$f10,$f0,$f6
    2abc:	00084080 	sll	t0,t0,0x2
    2ac0:	02c81021 	addu	v0,s6,t0
    2ac4:	26c413c8 	addiu	a0,s6,5064
    2ac8:	3c073d4c 	lui	a3,0x3d4c
    2acc:	461e5200 	add.s	$f8,$f10,$f30
    2ad0:	e6281344 	swc1	$f8,4932(s1)
    2ad4:	8eca0fe4 	lw	t2,4068(s6)
    2ad8:	ac4a0e04 	sw	t2,3588(v0)
    2adc:	8ec90fe8 	lw	t1,4072(s6)
    2ae0:	ac490e08 	sw	t1,3592(v0)
    2ae4:	8eca0fec 	lw	t2,4076(s6)
    2ae8:	ac4a0e0c 	sw	t2,3596(v0)
    2aec:	86cb0030 	lh	t3,48(s6)
    2af0:	448b2000 	mtc1	t3,$f4
    2af4:	00000000 	nop
    2af8:	468021a0 	cvt.s.w	$f6,$f4
    2afc:	46143283 	div.s	$f10,$f6,$f20
    2b00:	46165202 	mul.s	$f8,$f10,$f22
    2b04:	e4480c9c 	swc1	$f8,3228(v0)
    2b08:	86cc0032 	lh	t4,50(s6)
    2b0c:	448c2000 	mtc1	t4,$f4
    2b10:	00000000 	nop
    2b14:	468021a0 	cvt.s.w	$f6,$f4
    2b18:	46143283 	div.s	$f10,$f6,$f20
    2b1c:	46165202 	mul.s	$f8,$f10,$f22
    2b20:	e4480ca0 	swc1	$f8,3232(v0)
    2b24:	86cd0034 	lh	t5,52(s6)
    2b28:	448d2000 	mtc1	t5,$f4
    2b2c:	00000000 	nop
    2b30:	468021a0 	cvt.s.w	$f6,$f4
    2b34:	46143283 	div.s	$f10,$f6,$f20
    2b38:	46165202 	mul.s	$f8,$f10,$f22
    2b3c:	e4480ca4 	swc1	$f8,3236(v0)
    2b40:	8ecf11d0 	lw	t7,4560(s6)
    2b44:	ac4f0ff0 	sw	t7,4080(v0)
    2b48:	8ece11d4 	lw	t6,4564(s6)
    2b4c:	ac4e0ff4 	sw	t6,4084(v0)
    2b50:	8ecf11d8 	lw	t7,4568(s6)
    2b54:	ac4f0ff8 	sw	t7,4088(v0)
    2b58:	8ed913bc 	lw	t9,5052(s6)
    2b5c:	ac5911dc 	sw	t9,4572(v0)
    2b60:	8ed813c0 	lw	t8,5056(s6)
    2b64:	ac5811e0 	sw	t8,4576(v0)
    2b68:	8ed913c4 	lw	t9,5060(s6)
    2b6c:	ac5911e4 	sw	t9,4580(v0)
    2b70:	86c20030 	lh	v0,48(s6)
    2b74:	28413000 	slti	at,v0,12288
    2b78:	1020000b 	beqz	at,2ba8 <L808CD598+0x3d0>
    2b7c:	2841d001 	slti	at,v0,-12287
    2b80:	5420000a 	bnezl	at,2bac <L808CD598+0x3d4>
    2b84:	4405d000 	mfc1	a1,$f26
    2b88:	4405f000 	mfc1	a1,$f30
    2b8c:	4406f000 	mfc1	a2,$f30
    2b90:	3c073d4c 	lui	a3,0x3d4c
    2b94:	34e7cccd 	ori	a3,a3,0xcccd
    2b98:	0c000000 	jal	0 <func_808CADC0>
    2b9c:	26c413c8 	addiu	a0,s6,5064
    2ba0:	10000006 	b	2bbc <L808CD598+0x3e4>
    2ba4:	86c80222 	lh	t0,546(s6)
    2ba8:	4405d000 	mfc1	a1,$f26
    2bac:	4406f000 	mfc1	a2,$f30
    2bb0:	0c000000 	jal	0 <func_808CADC0>
    2bb4:	34e7cccd 	ori	a3,a3,0xcccd
    2bb8:	86c80222 	lh	t0,546(s6)
    2bbc:	290100cc 	slti	at,t0,204
    2bc0:	5020002c 	beqzl	at,2c74 <L808CD598+0x49c>
    2bc4:	93b801cf 	lbu	t8,463(sp)
    2bc8:	c6c00104 	lwc1	$f0,260(s6)
    2bcc:	4618003c 	c.lt.s	$f0,$f24
    2bd0:	00000000 	nop
    2bd4:	45020014 	bc1fl	2c28 <L808CD598+0x450>
    2bd8:	4600c03c 	c.lt.s	$f24,$f0
    2bdc:	c6c40028 	lwc1	$f4,40(s6)
    2be0:	24090050 	li	t1,80
    2be4:	24050001 	li	a1,1
    2be8:	4604c03e 	c.le.s	$f24,$f4
    2bec:	24060050 	li	a2,80
    2bf0:	24075000 	li	a3,20480
    2bf4:	4502000c 	bc1fl	2c28 <L808CD598+0x450>
    2bf8:	4600c03c 	c.lt.s	$f24,$f0
    2bfc:	a6c90250 	sh	t1,592(s6)
    2c00:	0c000000 	jal	0 <func_808CADC0>
    2c04:	8fa401d4 	lw	a0,468(sp)
    2c08:	240a0028 	li	t2,40
    2c0c:	240b001e 	li	t3,30
    2c10:	240c000a 	li	t4,10
    2c14:	a6ca022e 	sh	t2,558(s6)
    2c18:	a6cb0238 	sh	t3,568(s6)
    2c1c:	a6cc0240 	sh	t4,576(s6)
    2c20:	c6c00104 	lwc1	$f0,260(s6)
    2c24:	4600c03c 	c.lt.s	$f24,$f0
    2c28:	00000000 	nop
    2c2c:	45020011 	bc1fl	2c74 <L808CD598+0x49c>
    2c30:	93b801cf 	lbu	t8,463(sp)
    2c34:	c6c60028 	lwc1	$f6,40(s6)
    2c38:	240d0050 	li	t5,80
    2c3c:	24050001 	li	a1,1
    2c40:	4618303e 	c.le.s	$f6,$f24
    2c44:	24060050 	li	a2,80
    2c48:	24075000 	li	a3,20480
    2c4c:	45020009 	bc1fl	2c74 <L808CD598+0x49c>
    2c50:	93b801cf 	lbu	t8,463(sp)
    2c54:	a6cd0250 	sh	t5,592(s6)
    2c58:	0c000000 	jal	0 <func_808CADC0>
    2c5c:	8fa401d4 	lw	a0,468(sp)
    2c60:	240e001e 	li	t6,30
    2c64:	240f000a 	li	t7,10
    2c68:	a6ce0238 	sh	t6,568(s6)
    2c6c:	a6cf0240 	sh	t7,576(s6)
    2c70:	93b801cf 	lbu	t8,463(sp)
    2c74:	00008025 	move	s0,zero
    2c78:	3c010000 	lui	at,0x0
    2c7c:	170000c7 	bnez	t8,2f9c <L808CD598+0x7c4>
    2c80:	00000000 	nop
    2c84:	86d90224 	lh	t9,548(s6)
    2c88:	3c010000 	lui	at,0x0
    2c8c:	c4360000 	lwc1	$f22,0(at)
    2c90:	44995000 	mtc1	t9,$f10
    2c94:	00000000 	nop
    2c98:	46805220 	cvt.s.w	$f8,$f10
    2c9c:	46164102 	mul.s	$f4,$f8,$f22
    2ca0:	4600218d 	trunc.w.s	$f6,$f4
    2ca4:	44043000 	mfc1	a0,$f6
    2ca8:	00000000 	nop
    2cac:	00042400 	sll	a0,a0,0x10
    2cb0:	0c000000 	jal	0 <func_808CADC0>
    2cb4:	00042403 	sra	a0,a0,0x10
    2cb8:	3c010000 	lui	at,0x0
    2cbc:	c42a0000 	lwc1	$f10,0(at)
    2cc0:	3c0144fa 	lui	at,0x44fa
    2cc4:	44813000 	mtc1	at,$f6
    2cc8:	460a0082 	mul.s	$f2,$f0,$f10
    2ccc:	e7a200e4 	swc1	$f2,228(sp)
    2cd0:	e7a200e0 	swc1	$f2,224(sp)
    2cd4:	86c90224 	lh	t1,548(s6)
    2cd8:	44894000 	mtc1	t1,$f8
    2cdc:	00000000 	nop
    2ce0:	46804120 	cvt.s.w	$f4,$f8
    2ce4:	46062282 	mul.s	$f10,$f4,$f6
    2ce8:	4600520d 	trunc.w.s	$f8,$f10
    2cec:	44044000 	mfc1	a0,$f8
    2cf0:	00000000 	nop
    2cf4:	00042400 	sll	a0,a0,0x10
    2cf8:	0c000000 	jal	0 <func_808CADC0>
    2cfc:	00042403 	sra	a0,a0,0x10
    2d00:	3c01457a 	lui	at,0x457a
    2d04:	4481a000 	mtc1	at,$f20
    2d08:	3c010000 	lui	at,0x0
    2d0c:	c4380000 	lwc1	$f24,0(at)
    2d10:	46140102 	mul.s	$f4,$f0,$f20
    2d14:	e7a400ec 	swc1	$f4,236(sp)
    2d18:	86cb0224 	lh	t3,548(s6)
    2d1c:	448b3000 	mtc1	t3,$f6
    2d20:	00000000 	nop
    2d24:	468032a0 	cvt.s.w	$f10,$f6
    2d28:	46185202 	mul.s	$f8,$f10,$f24
    2d2c:	4600410d 	trunc.w.s	$f4,$f8
    2d30:	44042000 	mfc1	a0,$f4
    2d34:	00000000 	nop
    2d38:	00042400 	sll	a0,a0,0x10
    2d3c:	0c000000 	jal	0 <func_808CADC0>
    2d40:	00042403 	sra	a0,a0,0x10
    2d44:	46140182 	mul.s	$f6,$f0,$f20
    2d48:	3c010000 	lui	at,0x0
    2d4c:	c43a0000 	lwc1	$f26,0(at)
    2d50:	e7a600f0 	swc1	$f6,240(sp)
    2d54:	86cd0224 	lh	t5,548(s6)
    2d58:	448d5000 	mtc1	t5,$f10
    2d5c:	00000000 	nop
    2d60:	46805220 	cvt.s.w	$f8,$f10
    2d64:	461a4102 	mul.s	$f4,$f8,$f26
    2d68:	4600218d 	trunc.w.s	$f6,$f4
    2d6c:	44043000 	mfc1	a0,$f6
    2d70:	00000000 	nop
    2d74:	00042400 	sll	a0,a0,0x10
    2d78:	0c000000 	jal	0 <func_808CADC0>
    2d7c:	00042403 	sra	a0,a0,0x10
    2d80:	3c010000 	lui	at,0x0
    2d84:	c4340000 	lwc1	$f20,0(at)
    2d88:	3c0144fa 	lui	at,0x44fa
    2d8c:	44815000 	mtc1	at,$f10
    2d90:	00000000 	nop
    2d94:	460a0202 	mul.s	$f8,$f0,$f10
    2d98:	e7a800f8 	swc1	$f8,248(sp)
    2d9c:	86cf0224 	lh	t7,548(s6)
    2da0:	448f2000 	mtc1	t7,$f4
    2da4:	00000000 	nop
    2da8:	468021a0 	cvt.s.w	$f6,$f4
    2dac:	46143282 	mul.s	$f10,$f6,$f20
    2db0:	4600520d 	trunc.w.s	$f8,$f10
    2db4:	44044000 	mfc1	a0,$f8
    2db8:	00000000 	nop
    2dbc:	00042400 	sll	a0,a0,0x10
    2dc0:	0c000000 	jal	0 <func_808CADC0>
    2dc4:	00042403 	sra	a0,a0,0x10
    2dc8:	3c0144fa 	lui	at,0x44fa
    2dcc:	44812000 	mtc1	at,$f4
    2dd0:	00000000 	nop
    2dd4:	46040182 	mul.s	$f6,$f0,$f4
    2dd8:	e7a600fc 	swc1	$f6,252(sp)
    2ddc:	86d90224 	lh	t9,548(s6)
    2de0:	44995000 	mtc1	t9,$f10
    2de4:	00000000 	nop
    2de8:	46805220 	cvt.s.w	$f8,$f10
    2dec:	46164102 	mul.s	$f4,$f8,$f22
    2df0:	4600218d 	trunc.w.s	$f6,$f4
    2df4:	44043000 	mfc1	a0,$f6
    2df8:	00000000 	nop
    2dfc:	00042400 	sll	a0,a0,0x10
    2e00:	0c000000 	jal	0 <func_808CADC0>
    2e04:	00042403 	sra	a0,a0,0x10
    2e08:	3c010000 	lui	at,0x0
    2e0c:	c4360000 	lwc1	$f22,0(at)
    2e10:	46160082 	mul.s	$f2,$f0,$f22
    2e14:	e7a200c0 	swc1	$f2,192(sp)
    2e18:	e7a200bc 	swc1	$f2,188(sp)
    2e1c:	86c90224 	lh	t1,548(s6)
    2e20:	44895000 	mtc1	t1,$f10
    2e24:	00000000 	nop
    2e28:	46805220 	cvt.s.w	$f8,$f10
    2e2c:	46184102 	mul.s	$f4,$f8,$f24
    2e30:	4600218d 	trunc.w.s	$f6,$f4
    2e34:	44043000 	mfc1	a0,$f6
    2e38:	00000000 	nop
    2e3c:	00042400 	sll	a0,a0,0x10
    2e40:	0c000000 	jal	0 <func_808CADC0>
    2e44:	00042403 	sra	a0,a0,0x10
    2e48:	3c01c57a 	lui	at,0xc57a
    2e4c:	4481b000 	mtc1	at,$f22
    2e50:	3c0144fa 	lui	at,0x44fa
    2e54:	44813000 	mtc1	at,$f6
    2e58:	46160282 	mul.s	$f10,$f0,$f22
    2e5c:	e7aa00c8 	swc1	$f10,200(sp)
    2e60:	86cb0224 	lh	t3,548(s6)
    2e64:	448b4000 	mtc1	t3,$f8
    2e68:	00000000 	nop
    2e6c:	46804120 	cvt.s.w	$f4,$f8
    2e70:	46062282 	mul.s	$f10,$f4,$f6
    2e74:	4600520d 	trunc.w.s	$f8,$f10
    2e78:	44044000 	mfc1	a0,$f8
    2e7c:	00000000 	nop
    2e80:	00042400 	sll	a0,a0,0x10
    2e84:	0c000000 	jal	0 <func_808CADC0>
    2e88:	00042403 	sra	a0,a0,0x10
    2e8c:	46160102 	mul.s	$f4,$f0,$f22
    2e90:	e7a400cc 	swc1	$f4,204(sp)
    2e94:	86cd0224 	lh	t5,548(s6)
    2e98:	448d3000 	mtc1	t5,$f6
    2e9c:	00000000 	nop
    2ea0:	468032a0 	cvt.s.w	$f10,$f6
    2ea4:	46145202 	mul.s	$f8,$f10,$f20
    2ea8:	4600410d 	trunc.w.s	$f4,$f8
    2eac:	44042000 	mfc1	a0,$f4
    2eb0:	00000000 	nop
    2eb4:	00042400 	sll	a0,a0,0x10
    2eb8:	0c000000 	jal	0 <func_808CADC0>
    2ebc:	00042403 	sra	a0,a0,0x10
    2ec0:	3c01c4fa 	lui	at,0xc4fa
    2ec4:	4481a000 	mtc1	at,$f20
    2ec8:	00000000 	nop
    2ecc:	46140182 	mul.s	$f6,$f0,$f20
    2ed0:	e7a600d4 	swc1	$f6,212(sp)
    2ed4:	86cf0224 	lh	t7,548(s6)
    2ed8:	448f5000 	mtc1	t7,$f10
    2edc:	00000000 	nop
    2ee0:	46805220 	cvt.s.w	$f8,$f10
    2ee4:	461a4102 	mul.s	$f4,$f8,$f26
    2ee8:	4600218d 	trunc.w.s	$f6,$f4
    2eec:	44043000 	mfc1	a0,$f6
    2ef0:	00000000 	nop
    2ef4:	00042400 	sll	a0,a0,0x10
    2ef8:	0c000000 	jal	0 <func_808CADC0>
    2efc:	00042403 	sra	a0,a0,0x10
    2f00:	46140282 	mul.s	$f10,$f0,$f20
    2f04:	00009825 	move	s3,zero
    2f08:	27b500bc 	addiu	s5,sp,188
    2f0c:	27b400e0 	addiu	s4,sp,224
    2f10:	e7aa00d8 	swc1	$f10,216(sp)
    2f14:	00138880 	sll	s1,s3,0x2
    2f18:	02338823 	subu	s1,s1,s3
    2f1c:	00118880 	sll	s1,s1,0x2
    2f20:	02d18021 	addu	s0,s6,s1
    2f24:	02919021 	addu	s2,s4,s1
    2f28:	4406f000 	mfc1	a2,$f30
    2f2c:	8e450000 	lw	a1,0(s2)
    2f30:	26040c3c 	addiu	a0,s0,3132
    2f34:	0c000000 	jal	0 <func_808CADC0>
    2f38:	3c07447a 	lui	a3,0x447a
    2f3c:	4406f000 	mfc1	a2,$f30
    2f40:	26040c40 	addiu	a0,s0,3136
    2f44:	8e450004 	lw	a1,4(s2)
    2f48:	0c000000 	jal	0 <func_808CADC0>
    2f4c:	3c07447a 	lui	a3,0x447a
    2f50:	02b19021 	addu	s2,s5,s1
    2f54:	4406f000 	mfc1	a2,$f30
    2f58:	8e450000 	lw	a1,0(s2)
    2f5c:	26040c6c 	addiu	a0,s0,3180
    2f60:	0c000000 	jal	0 <func_808CADC0>
    2f64:	3c07447a 	lui	a3,0x447a
    2f68:	4406f000 	mfc1	a2,$f30
    2f6c:	26040c70 	addiu	a0,s0,3184
    2f70:	8e450004 	lw	a1,4(s2)
    2f74:	0c000000 	jal	0 <func_808CADC0>
    2f78:	3c07447a 	lui	a3,0x447a
    2f7c:	26730001 	addiu	s3,s3,1
    2f80:	00139c00 	sll	s3,s3,0x10
    2f84:	00139c03 	sra	s3,s3,0x10
    2f88:	2a610003 	slti	at,s3,3
    2f8c:	5420ffe2 	bnezl	at,2f18 <L808CD598+0x740>
    2f90:	00138880 	sll	s1,s3,0x2
    2f94:	10000027 	b	3034 <L808CD598+0x85c>
    2f98:	8fbf007c 	lw	ra,124(sp)
    2f9c:	c4360000 	lwc1	$f22,0(at)
    2fa0:	0010c880 	sll	t9,s0,0x2
    2fa4:	0330c823 	subu	t9,t9,s0
    2fa8:	0019c880 	sll	t9,t9,0x2
    2fac:	4480a000 	mtc1	zero,$f20
    2fb0:	02d98821 	addu	s1,s6,t9
    2fb4:	3c053dcc 	lui	a1,0x3dcc
    2fb8:	4406e000 	mfc1	a2,$f28
    2fbc:	34a5cccd 	ori	a1,a1,0xcccd
    2fc0:	0c000000 	jal	0 <func_808CADC0>
    2fc4:	26240c40 	addiu	a0,s1,3136
    2fc8:	3c053dcc 	lui	a1,0x3dcc
    2fcc:	4406e000 	mfc1	a2,$f28
    2fd0:	34a5cccd 	ori	a1,a1,0xcccd
    2fd4:	0c000000 	jal	0 <func_808CADC0>
    2fd8:	26240c70 	addiu	a0,s1,3184
    2fdc:	16000002 	bnez	s0,2fe8 <L808CD598+0x810>
    2fe0:	26240c3c 	addiu	a0,s1,3132
    2fe4:	4600b506 	mov.s	$f20,$f22
    2fe8:	4405a000 	mfc1	a1,$f20
    2fec:	3c063dcc 	lui	a2,0x3dcc
    2ff0:	4407e000 	mfc1	a3,$f28
    2ff4:	0c000000 	jal	0 <func_808CADC0>
    2ff8:	34c6cccd 	ori	a2,a2,0xcccd
    2ffc:	4600a207 	neg.s	$f8,$f20
    3000:	3c063dcc 	lui	a2,0x3dcc
    3004:	44054000 	mfc1	a1,$f8
    3008:	4407e000 	mfc1	a3,$f28
    300c:	34c6cccd 	ori	a2,a2,0xcccd
    3010:	0c000000 	jal	0 <func_808CADC0>
    3014:	26240c6c 	addiu	a0,s1,3180
    3018:	26100001 	addiu	s0,s0,1
    301c:	00108400 	sll	s0,s0,0x10
    3020:	00108403 	sra	s0,s0,0x10
    3024:	2a010003 	slti	at,s0,3
    3028:	5420ffde 	bnezl	at,2fa4 <L808CD598+0x7cc>
    302c:	0010c880 	sll	t9,s0,0x2
    3030:	8fbf007c 	lw	ra,124(sp)
    3034:	d7b40030 	ldc1	$f20,48(sp)
    3038:	d7b60038 	ldc1	$f22,56(sp)
    303c:	d7b80040 	ldc1	$f24,64(sp)
    3040:	d7ba0048 	ldc1	$f26,72(sp)
    3044:	d7bc0050 	ldc1	$f28,80(sp)
    3048:	d7be0058 	ldc1	$f30,88(sp)
    304c:	8fb00060 	lw	s0,96(sp)
    3050:	8fb10064 	lw	s1,100(sp)
    3054:	8fb20068 	lw	s2,104(sp)
    3058:	8fb3006c 	lw	s3,108(sp)
    305c:	8fb40070 	lw	s4,112(sp)
    3060:	8fb50074 	lw	s5,116(sp)
    3064:	8fb60078 	lw	s6,120(sp)
    3068:	03e00008 	jr	ra
    306c:	27bd01d0 	addiu	sp,sp,464

00003070 <func_808CDE30>:
    3070:	27bdffc8 	addiu	sp,sp,-56
    3074:	afbf0024 	sw	ra,36(sp)
    3078:	afb00020 	sw	s0,32(sp)
    307c:	f7b40018 	sdc1	$f20,24(sp)
    3080:	afa5003c 	sw	a1,60(sp)
    3084:	908302d8 	lbu	v1,728(a0)
    3088:	24010001 	li	at,1
    308c:	00808025 	move	s0,a0
    3090:	5461004b 	bnel	v1,at,31c0 <func_808CDE30+0x150>
    3094:	24010002 	li	at,2
    3098:	a08002d8 	sb	zero,728(a0)
    309c:	0c000000 	jal	0 <func_808CADC0>
    30a0:	8fa5003c 	lw	a1,60(sp)
    30a4:	3c010000 	lui	at,0x0
    30a8:	c4340000 	lwc1	$f20,0(at)
    30ac:	0c000000 	jal	0 <func_808CADC0>
    30b0:	4600a306 	mov.s	$f12,$f20
    30b4:	444ef800 	cfc1	t6,$31
    30b8:	24020001 	li	v0,1
    30bc:	44c2f800 	ctc1	v0,$31
    30c0:	3c014f00 	lui	at,0x4f00
    30c4:	46000124 	cvt.w.s	$f4,$f0
    30c8:	4442f800 	cfc1	v0,$31
    30cc:	00000000 	nop
    30d0:	30420078 	andi	v0,v0,0x78
    30d4:	50400013 	beqzl	v0,3124 <func_808CDE30+0xb4>
    30d8:	44022000 	mfc1	v0,$f4
    30dc:	44812000 	mtc1	at,$f4
    30e0:	24020001 	li	v0,1
    30e4:	46040101 	sub.s	$f4,$f0,$f4
    30e8:	44c2f800 	ctc1	v0,$31
    30ec:	00000000 	nop
    30f0:	46002124 	cvt.w.s	$f4,$f4
    30f4:	4442f800 	cfc1	v0,$31
    30f8:	00000000 	nop
    30fc:	30420078 	andi	v0,v0,0x78
    3100:	14400005 	bnez	v0,3118 <func_808CDE30+0xa8>
    3104:	00000000 	nop
    3108:	44022000 	mfc1	v0,$f4
    310c:	3c018000 	lui	at,0x8000
    3110:	10000007 	b	3130 <func_808CDE30+0xc0>
    3114:	00411025 	or	v0,v0,at
    3118:	10000005 	b	3130 <func_808CDE30+0xc0>
    311c:	2402ffff 	li	v0,-1
    3120:	44022000 	mfc1	v0,$f4
    3124:	00000000 	nop
    3128:	0440fffb 	bltz	v0,3118 <func_808CDE30+0xa8>
    312c:	00000000 	nop
    3130:	920f02d4 	lbu	t7,724(s0)
    3134:	44cef800 	ctc1	t6,$31
    3138:	304200ff 	andi	v0,v0,0xff
    313c:	11e2ffdb 	beq	t7,v0,30ac <func_808CDE30+0x3c>
    3140:	00000000 	nop
    3144:	305800ff 	andi	t8,v0,0xff
    3148:	0018c880 	sll	t9,t8,0x2
    314c:	3c060000 	lui	a2,0x0
    3150:	0338c823 	subu	t9,t9,t8
    3154:	a20202d4 	sb	v0,724(s0)
    3158:	24c60000 	addiu	a2,a2,0
    315c:	0019c880 	sll	t9,t9,0x2
    3160:	00d91021 	addu	v0,a2,t9
    3164:	c4460000 	lwc1	$f6,0(v0)
    3168:	3c014348 	lui	at,0x4348
    316c:	44815000 	mtc1	at,$f10
    3170:	e60602bc 	swc1	$f6,700(s0)
    3174:	c4480004 	lwc1	$f8,4(v0)
    3178:	8e0902bc 	lw	t1,700(s0)
    317c:	240a000a 	li	t2,10
    3180:	460a4401 	sub.s	$f16,$f8,$f10
    3184:	240b0003 	li	t3,3
    3188:	240c0001 	li	t4,1
    318c:	920302d8 	lbu	v1,728(s0)
    3190:	e61002c0 	swc1	$f16,704(s0)
    3194:	c4520008 	lwc1	$f18,8(v0)
    3198:	ae090024 	sw	t1,36(s0)
    319c:	8e0802c0 	lw	t0,704(s0)
    31a0:	e61202c4 	swc1	$f18,708(s0)
    31a4:	8e0902c4 	lw	t1,708(s0)
    31a8:	a60a0248 	sh	t2,584(s0)
    31ac:	a60b0222 	sh	t3,546(s0)
    31b0:	a60c0232 	sh	t4,562(s0)
    31b4:	ae080028 	sw	t0,40(s0)
    31b8:	ae09002c 	sw	t1,44(s0)
    31bc:	24010002 	li	at,2
    31c0:	14610021 	bne	v1,at,3248 <func_808CDE30+0x1d8>
    31c4:	02002025 	move	a0,s0
    31c8:	a20002d8 	sb	zero,728(s0)
    31cc:	260d0024 	addiu	t5,s0,36
    31d0:	260e02bc 	addiu	t6,s0,700
    31d4:	afae002c 	sw	t6,44(sp)
    31d8:	afad0030 	sw	t5,48(sp)
    31dc:	0c000000 	jal	0 <func_808CADC0>
    31e0:	8fa5003c 	lw	a1,60(sp)
    31e4:	3c060000 	lui	a2,0x0
    31e8:	240f0001 	li	t7,1
    31ec:	24c60000 	addiu	a2,a2,0
    31f0:	a20f02d4 	sb	t7,724(s0)
    31f4:	c4c4000c 	lwc1	$f4,12(a2)
    31f8:	3c014348 	lui	at,0x4348
    31fc:	44814000 	mtc1	at,$f8
    3200:	e60402bc 	swc1	$f4,700(s0)
    3204:	c4c60010 	lwc1	$f6,16(a2)
    3208:	240a000a 	li	t2,10
    320c:	240b0003 	li	t3,3
    3210:	46083281 	sub.s	$f10,$f6,$f8
    3214:	e60a02c0 	swc1	$f10,704(s0)
    3218:	c4d00014 	lwc1	$f16,20(a2)
    321c:	e61002c4 	swc1	$f16,708(s0)
    3220:	8fb9002c 	lw	t9,44(sp)
    3224:	8fb80030 	lw	t8,48(sp)
    3228:	8f290000 	lw	t1,0(t9)
    322c:	af090000 	sw	t1,0(t8)
    3230:	8f280004 	lw	t0,4(t9)
    3234:	af080004 	sw	t0,4(t8)
    3238:	8f290008 	lw	t1,8(t9)
    323c:	af090008 	sw	t1,8(t8)
    3240:	a60a0248 	sh	t2,584(s0)
    3244:	a60b0222 	sh	t3,546(s0)
    3248:	8fbf0024 	lw	ra,36(sp)
    324c:	d7b40018 	ldc1	$f20,24(sp)
    3250:	8fb00020 	lw	s0,32(sp)
    3254:	03e00008 	jr	ra
    3258:	27bd0038 	addiu	sp,sp,56

0000325c <func_808CE01C>:
    325c:	27bdfef8 	addiu	sp,sp,-264
    3260:	3c0e0000 	lui	t6,0x0
    3264:	afbf0064 	sw	ra,100(sp)
    3268:	afb20060 	sw	s2,96(sp)
    326c:	afb1005c 	sw	s1,92(sp)
    3270:	afb00058 	sw	s0,88(sp)
    3274:	f7bc0050 	sdc1	$f28,80(sp)
    3278:	f7ba0048 	sdc1	$f26,72(sp)
    327c:	f7b80040 	sdc1	$f24,64(sp)
    3280:	f7b60038 	sdc1	$f22,56(sp)
    3284:	f7b40030 	sdc1	$f20,48(sp)
    3288:	a7a00106 	sh	zero,262(sp)
    328c:	25ce0000 	addiu	t6,t6,0
    3290:	8dd80000 	lw	t8,0(t6)
    3294:	27b000e8 	addiu	s0,sp,232
    3298:	00808825 	move	s1,a0
    329c:	ae180000 	sw	t8,0(s0)
    32a0:	8dcf0004 	lw	t7,4(t6)
    32a4:	00a09025 	move	s2,a1
    32a8:	ae0f0004 	sw	t7,4(s0)
    32ac:	95d80008 	lhu	t8,8(t6)
    32b0:	a6180008 	sh	t8,8(s0)
    32b4:	90830220 	lbu	v1,544(a0)
    32b8:	14600020 	bnez	v1,333c <func_808CE01C+0xe0>
    32bc:	00601025 	move	v0,v1
    32c0:	3c010001 	lui	at,0x1
    32c4:	00250821 	addu	at,at,a1
    32c8:	a0200ae3 	sb	zero,2787(at)
    32cc:	84840226 	lh	a0,550(a0)
    32d0:	00800821 	move	at,a0
    32d4:	00042080 	sll	a0,a0,0x2
    32d8:	00812021 	addu	a0,a0,at
    32dc:	00042200 	sll	a0,a0,0x8
    32e0:	00042400 	sll	a0,a0,0x10
    32e4:	0c000000 	jal	0 <func_808CADC0>
    32e8:	00042403 	sra	a0,a0,0x10
    32ec:	3c013f00 	lui	at,0x3f00
    32f0:	44812000 	mtc1	at,$f4
    32f4:	44814000 	mtc1	at,$f8
    32f8:	3c010001 	lui	at,0x1
    32fc:	46040182 	mul.s	$f6,$f0,$f4
    3300:	00320821 	addu	at,at,s2
    3304:	24190002 	li	t9,2
    3308:	24080001 	li	t0,1
    330c:	46083280 	add.s	$f10,$f6,$f8
    3310:	e42a0afc 	swc1	$f10,2812(at)
    3314:	3c010001 	lui	at,0x1
    3318:	00320821 	addu	at,at,s2
    331c:	a0390b00 	sb	t9,2816(at)
    3320:	3c010001 	lui	at,0x1
    3324:	00320821 	addu	at,at,s2
    3328:	a0280ae1 	sb	t0,2785(at)
    332c:	3c010001 	lui	at,0x1
    3330:	00320821 	addu	at,at,s2
    3334:	1000008c 	b	3568 <func_808CE01C+0x30c>
    3338:	a0200ae2 	sb	zero,2786(at)
    333c:	24010003 	li	at,3
    3340:	1441001a 	bne	v0,at,33ac <func_808CE01C+0x150>
    3344:	24090002 	li	t1,2
    3348:	3c013f80 	lui	at,0x3f80
    334c:	4481b000 	mtc1	at,$f22
    3350:	3c010001 	lui	at,0x1
    3354:	00320821 	addu	at,at,s2
    3358:	a0200ae3 	sb	zero,2787(at)
    335c:	3c010001 	lui	at,0x1
    3360:	00320821 	addu	at,at,s2
    3364:	a0290b00 	sb	t1,2816(at)
    3368:	3c010001 	lui	at,0x1
    336c:	00320821 	addu	at,at,s2
    3370:	240a0002 	li	t2,2
    3374:	a02a0ae1 	sb	t2,2785(at)
    3378:	3c010001 	lui	at,0x1
    337c:	00320821 	addu	at,at,s2
    3380:	a0200ae2 	sb	zero,2786(at)
    3384:	3c010001 	lui	at,0x1
    3388:	34210afc 	ori	at,at,0xafc
    338c:	3c073d4c 	lui	a3,0x3d4c
    3390:	4405b000 	mfc1	a1,$f22
    3394:	4406b000 	mfc1	a2,$f22
    3398:	34e7cccd 	ori	a3,a3,0xcccd
    339c:	0c000000 	jal	0 <func_808CADC0>
    33a0:	02412021 	addu	a0,s2,at
    33a4:	10000071 	b	356c <func_808CE01C+0x310>
    33a8:	86220238 	lh	v0,568(s1)
    33ac:	24010002 	li	at,2
    33b0:	1441002a 	bne	v0,at,345c <func_808CE01C+0x200>
    33b4:	246bffff 	addiu	t3,v1,-1
    33b8:	3c010001 	lui	at,0x1
    33bc:	a22b0220 	sb	t3,544(s1)
    33c0:	00320821 	addu	at,at,s2
    33c4:	a0200ae3 	sb	zero,2787(at)
    33c8:	86240226 	lh	a0,550(s1)
    33cc:	00800821 	move	at,a0
    33d0:	00042140 	sll	a0,a0,0x5
    33d4:	00812023 	subu	a0,a0,at
    33d8:	00042240 	sll	a0,a0,0x9
    33dc:	00042400 	sll	a0,a0,0x10
    33e0:	0c000000 	jal	0 <func_808CADC0>
    33e4:	00042403 	sra	a0,a0,0x10
    33e8:	3c013f80 	lui	at,0x3f80
    33ec:	4481b000 	mtc1	at,$f22
    33f0:	3c010001 	lui	at,0x1
    33f4:	34210afc 	ori	at,at,0xafc
    33f8:	02412021 	addu	a0,s2,at
    33fc:	3c010000 	lui	at,0x0
    3400:	c4300000 	lwc1	$f16,0(at)
    3404:	3c010000 	lui	at,0x0
    3408:	c4240000 	lwc1	$f4,0(at)
    340c:	46100482 	mul.s	$f18,$f0,$f16
    3410:	3c073e19 	lui	a3,0x3e19
    3414:	4406b000 	mfc1	a2,$f22
    3418:	34e7999a 	ori	a3,a3,0x999a
    341c:	46049180 	add.s	$f6,$f18,$f4
    3420:	44053000 	mfc1	a1,$f6
    3424:	0c000000 	jal	0 <func_808CADC0>
    3428:	00000000 	nop
    342c:	3c010001 	lui	at,0x1
    3430:	00320821 	addu	at,at,s2
    3434:	240c0002 	li	t4,2
    3438:	a02c0b00 	sb	t4,2816(at)
    343c:	3c010001 	lui	at,0x1
    3440:	00320821 	addu	at,at,s2
    3444:	240d0003 	li	t5,3
    3448:	a02d0ae1 	sb	t5,2785(at)
    344c:	3c010001 	lui	at,0x1
    3450:	00320821 	addu	at,at,s2
    3454:	10000044 	b	3568 <func_808CE01C+0x30c>
    3458:	a0200ae2 	sb	zero,2786(at)
    345c:	2401000a 	li	at,10
    3460:	1441002a 	bne	v0,at,350c <func_808CE01C+0x2b0>
    3464:	240e0001 	li	t6,1
    3468:	3c010001 	lui	at,0x1
    346c:	a22e0220 	sb	t6,544(s1)
    3470:	00320821 	addu	at,at,s2
    3474:	a0200ae3 	sb	zero,2787(at)
    3478:	86240226 	lh	a0,550(s1)
    347c:	00800821 	move	at,a0
    3480:	00042080 	sll	a0,a0,0x2
    3484:	00812023 	subu	a0,a0,at
    3488:	00042280 	sll	a0,a0,0xa
    348c:	00042400 	sll	a0,a0,0x10
    3490:	0c000000 	jal	0 <func_808CADC0>
    3494:	00042403 	sra	a0,a0,0x10
    3498:	3c013f80 	lui	at,0x3f80
    349c:	4481b000 	mtc1	at,$f22
    34a0:	3c010001 	lui	at,0x1
    34a4:	34210afc 	ori	at,at,0xafc
    34a8:	02412021 	addu	a0,s2,at
    34ac:	3c010000 	lui	at,0x0
    34b0:	c4280000 	lwc1	$f8,0(at)
    34b4:	3c010000 	lui	at,0x0
    34b8:	c4300000 	lwc1	$f16,0(at)
    34bc:	46080282 	mul.s	$f10,$f0,$f8
    34c0:	3c073d4c 	lui	a3,0x3d4c
    34c4:	4406b000 	mfc1	a2,$f22
    34c8:	34e7cccd 	ori	a3,a3,0xcccd
    34cc:	46105480 	add.s	$f18,$f10,$f16
    34d0:	44059000 	mfc1	a1,$f18
    34d4:	0c000000 	jal	0 <func_808CADC0>
    34d8:	00000000 	nop
    34dc:	3c010001 	lui	at,0x1
    34e0:	00320821 	addu	at,at,s2
    34e4:	240f0002 	li	t7,2
    34e8:	a02f0b00 	sb	t7,2816(at)
    34ec:	3c010001 	lui	at,0x1
    34f0:	00320821 	addu	at,at,s2
    34f4:	24180003 	li	t8,3
    34f8:	a0380ae1 	sb	t8,2785(at)
    34fc:	3c010001 	lui	at,0x1
    3500:	00320821 	addu	at,at,s2
    3504:	10000018 	b	3568 <func_808CE01C+0x30c>
    3508:	a0200ae2 	sb	zero,2786(at)
    350c:	24010001 	li	at,1
    3510:	14410015 	bne	v0,at,3568 <func_808CE01C+0x30c>
    3514:	3c073cf5 	lui	a3,0x3cf5
    3518:	3c013f80 	lui	at,0x3f80
    351c:	4481b000 	mtc1	at,$f22
    3520:	4480e000 	mtc1	zero,$f28
    3524:	3c010001 	lui	at,0x1
    3528:	34210afc 	ori	at,at,0xafc
    352c:	4406b000 	mfc1	a2,$f22
    3530:	4405e000 	mfc1	a1,$f28
    3534:	02412021 	addu	a0,s2,at
    3538:	0c000000 	jal	0 <func_808CADC0>
    353c:	34e7c28f 	ori	a3,a3,0xc28f
    3540:	3c010000 	lui	at,0x0
    3544:	c4240000 	lwc1	$f4,0(at)
    3548:	3c010001 	lui	at,0x1
    354c:	00320821 	addu	at,at,s2
    3550:	c4260afc 	lwc1	$f6,2812(at)
    3554:	4604303e 	c.le.s	$f6,$f4
    3558:	00000000 	nop
    355c:	45020003 	bc1fl	356c <func_808CE01C+0x310>
    3560:	86220238 	lh	v0,568(s1)
    3564:	a2200220 	sb	zero,544(s1)
    3568:	86220238 	lh	v0,568(s1)
    356c:	3c013f80 	lui	at,0x3f80
    3570:	4481b000 	mtc1	at,$f22
    3574:	4480e000 	mtc1	zero,$f28
    3578:	10400008 	beqz	v0,359c <func_808CE01C+0x340>
    357c:	26240294 	addiu	a0,s1,660
    3580:	3c0141a0 	lui	at,0x41a0
    3584:	4481d000 	mtc1	at,$f26
    3588:	2459ffff 	addiu	t9,v0,-1
    358c:	a6390238 	sh	t9,568(s1)
    3590:	4600d006 	mov.s	$f0,$f26
    3594:	10000008 	b	35b8 <func_808CE01C+0x35c>
    3598:	4600d506 	mov.s	$f20,$f26
    359c:	3c014040 	lui	at,0x4040
    35a0:	44810000 	mtc1	at,$f0
    35a4:	3c0140a0 	lui	at,0x40a0
    35a8:	4481a000 	mtc1	at,$f20
    35ac:	3c0141a0 	lui	at,0x41a0
    35b0:	4481d000 	mtc1	at,$f26
    35b4:	00000000 	nop
    35b8:	44050000 	mfc1	a1,$f0
    35bc:	4406b000 	mfc1	a2,$f22
    35c0:	3c073dcc 	lui	a3,0x3dcc
    35c4:	0c000000 	jal	0 <func_808CADC0>
    35c8:	34e7cccd 	ori	a3,a3,0xcccd
    35cc:	4405a000 	mfc1	a1,$f20
    35d0:	4406b000 	mfc1	a2,$f22
    35d4:	26240290 	addiu	a0,s1,656
    35d8:	0c000000 	jal	0 <func_808CADC0>
    35dc:	3c073f00 	lui	a3,0x3f00
    35e0:	86280226 	lh	t0,550(s1)
    35e4:	31090007 	andi	t1,t0,0x7
    35e8:	5520000c 	bnezl	t1,361c <func_808CE01C+0x3c0>
    35ec:	8622022c 	lh	v0,556(s1)
    35f0:	0c000000 	jal	0 <func_808CADC0>
    35f4:	00000000 	nop
    35f8:	3c010000 	lui	at,0x0
    35fc:	c4280000 	lwc1	$f8,0(at)
    3600:	240a0004 	li	t2,4
    3604:	4608003c 	c.lt.s	$f0,$f8
    3608:	00000000 	nop
    360c:	45020003 	bc1fl	361c <func_808CE01C+0x3c0>
    3610:	8622022c 	lh	v0,556(s1)
    3614:	a62a022c 	sh	t2,556(s1)
    3618:	8622022c 	lh	v0,556(s1)
    361c:	00025840 	sll	t3,v0,0x1
    3620:	020b6021 	addu	t4,s0,t3
    3624:	858d0000 	lh	t5,0(t4)
    3628:	244effff 	addiu	t6,v0,-1
    362c:	10400002 	beqz	v0,3638 <func_808CE01C+0x3dc>
    3630:	a22d02d5 	sb	t5,725(s1)
    3634:	a62e022c 	sh	t6,556(s1)
    3638:	8622022e 	lh	v0,558(s1)
    363c:	24010025 	li	at,37
    3640:	50400012 	beqzl	v0,368c <func_808CE01C+0x430>
    3644:	86380226 	lh	t8,550(s1)
    3648:	1441000a 	bne	v0,at,3674 <func_808CE01C+0x418>
    364c:	3c070000 	lui	a3,0x0
    3650:	3c0f0000 	lui	t7,0x0
    3654:	24e70000 	addiu	a3,a3,0
    3658:	25ef0000 	addiu	t7,t7,0
    365c:	afaf0014 	sw	t7,20(sp)
    3660:	afa70010 	sw	a3,16(sp)
    3664:	240438d1 	li	a0,14545
    3668:	262500e4 	addiu	a1,s1,228
    366c:	0c000000 	jal	0 <func_808CADC0>
    3670:	24060004 	li	a2,4
    3674:	3c010000 	lui	at,0x0
    3678:	c4200000 	lwc1	$f0,0(at)
    367c:	3c010000 	lui	at,0x0
    3680:	1000000d 	b	36b8 <func_808CE01C+0x45c>
    3684:	c4220000 	lwc1	$f2,0(at)
    3688:	86380226 	lh	t8,550(s1)
    368c:	3c01447a 	lui	at,0x447a
    3690:	33190010 	andi	t9,t8,0x10
    3694:	53200004 	beqzl	t9,36a8 <func_808CE01C+0x44c>
    3698:	44810000 	mtc1	at,$f0
    369c:	10000003 	b	36ac <func_808CE01C+0x450>
    36a0:	4600e006 	mov.s	$f0,$f28
    36a4:	44810000 	mtc1	at,$f0
    36a8:	00000000 	nop
    36ac:	3c0143fa 	lui	at,0x43fa
    36b0:	44811000 	mtc1	at,$f2
    36b4:	00000000 	nop
    36b8:	44050000 	mfc1	a1,$f0
    36bc:	3c063e99 	lui	a2,0x3e99
    36c0:	44071000 	mfc1	a3,$f2
    36c4:	34c6999a 	ori	a2,a2,0x999a
    36c8:	0c000000 	jal	0 <func_808CADC0>
    36cc:	262413cc 	addiu	a0,s1,5068
    36d0:	8622022e 	lh	v0,558(s1)
    36d4:	3c070000 	lui	a3,0x0
    36d8:	24e70000 	addiu	a3,a3,0
    36dc:	10400002 	beqz	v0,36e8 <func_808CE01C+0x48c>
    36e0:	2448ffff 	addiu	t0,v0,-1
    36e4:	a628022e 	sh	t0,558(s1)
    36e8:	86290250 	lh	t1,592(s1)
    36ec:	240430d0 	li	a0,12496
    36f0:	262500e4 	addiu	a1,s1,228
    36f4:	112000e6 	beqz	t1,3a90 <func_808CE01C+0x834>
    36f8:	24060004 	li	a2,4
    36fc:	3c0a0000 	lui	t2,0x0
    3700:	254a0000 	addiu	t2,t2,0
    3704:	afaa0014 	sw	t2,20(sp)
    3708:	0c000000 	jal	0 <func_808CADC0>
    370c:	afa70010 	sw	a3,16(sp)
    3710:	86220240 	lh	v0,576(s1)
    3714:	3c0142c8 	lui	at,0x42c8
    3718:	50400064 	beqzl	v0,38ac <func_808CE01C+0x650>
    371c:	4481c000 	mtc1	at,$f24
    3720:	922c00af 	lbu	t4,175(s1)
    3724:	244bffff 	addiu	t3,v0,-1
    3728:	a62b0240 	sh	t3,576(s1)
    372c:	11800009 	beqz	t4,3754 <func_808CE01C+0x4f8>
    3730:	24180002 	li	t8,2
    3734:	862d1402 	lh	t5,5122(s1)
    3738:	24010006 	li	at,6
    373c:	55a1000d 	bnel	t5,at,3774 <func_808CE01C+0x518>
    3740:	3c0142c8 	lui	at,0x42c8
    3744:	862e0030 	lh	t6,48(s1)
    3748:	29c13001 	slti	at,t6,12289
    374c:	54200009 	bnezl	at,3774 <func_808CE01C+0x518>
    3750:	3c0142c8 	lui	at,0x42c8
    3754:	922f0220 	lbu	t7,544(s1)
    3758:	3c010001 	lui	at,0x1
    375c:	00320821 	addu	at,at,s2
    3760:	55e00003 	bnezl	t7,3770 <func_808CE01C+0x514>
    3764:	a2380220 	sb	t8,544(s1)
    3768:	e43c0afc 	swc1	$f28,2812(at)
    376c:	a2380220 	sb	t8,544(s1)
    3770:	3c0142c8 	lui	at,0x42c8
    3774:	4481c000 	mtc1	at,$f24
    3778:	3c014120 	lui	at,0x4120
    377c:	4481b000 	mtc1	at,$f22
    3780:	3c0141a0 	lui	at,0x41a0
    3784:	4481a000 	mtc1	at,$f20
    3788:	00008025 	move	s0,zero
    378c:	0c000000 	jal	0 <func_808CADC0>
    3790:	4600d306 	mov.s	$f12,$f26
    3794:	3c0140a0 	lui	at,0x40a0
    3798:	44816000 	mtc1	at,$f12
    379c:	0c000000 	jal	0 <func_808CADC0>
    37a0:	e7a000d0 	swc1	$f0,208(sp)
    37a4:	3c014080 	lui	at,0x4080
    37a8:	44815000 	mtc1	at,$f10
    37ac:	4600d306 	mov.s	$f12,$f26
    37b0:	460a0400 	add.s	$f16,$f0,$f10
    37b4:	0c000000 	jal	0 <func_808CADC0>
    37b8:	e7b000d4 	swc1	$f16,212(sp)
    37bc:	c7a600d0 	lwc1	$f6,208(sp)
    37c0:	3c010000 	lui	at,0x0
    37c4:	c4320000 	lwc1	$f18,0(at)
    37c8:	46143202 	mul.s	$f8,$f6,$f20
    37cc:	e7a000d8 	swc1	$f0,216(sp)
    37d0:	e7bc00cc 	swc1	$f28,204(sp)
    37d4:	46140182 	mul.s	$f6,$f0,$f20
    37d8:	e7bc00c4 	swc1	$f28,196(sp)
    37dc:	e7b200c8 	swc1	$f18,200(sp)
    37e0:	c62402c8 	lwc1	$f4,712(s1)
    37e4:	e7b800bc 	swc1	$f24,188(sp)
    37e8:	3c014316 	lui	at,0x4316
    37ec:	46164283 	div.s	$f10,$f8,$f22
    37f0:	44816000 	mtc1	at,$f12
    37f4:	46163203 	div.s	$f8,$f6,$f22
    37f8:	460a2400 	add.s	$f16,$f4,$f10
    37fc:	e7b000b8 	swc1	$f16,184(sp)
    3800:	c63202d0 	lwc1	$f18,720(s1)
    3804:	46089100 	add.s	$f4,$f18,$f8
    3808:	0c000000 	jal	0 <func_808CADC0>
    380c:	e7a400c0 	swc1	$f4,192(sp)
    3810:	3c0140a0 	lui	at,0x40a0
    3814:	44816000 	mtc1	at,$f12
    3818:	0c000000 	jal	0 <func_808CADC0>
    381c:	e7a00074 	swc1	$f0,116(sp)
    3820:	c7aa0074 	lwc1	$f10,116(sp)
    3824:	4600018d 	trunc.w.s	$f6,$f0
    3828:	3c190000 	lui	t9,0x0
    382c:	27390000 	addiu	t9,t9,0
    3830:	4600540d 	trunc.w.s	$f16,$f10
    3834:	44183000 	mfc1	t8,$f6
    3838:	3c080000 	lui	t0,0x0
    383c:	25080000 	addiu	t0,t0,0
    3840:	440a8000 	mfc1	t2,$f16
    3844:	afb90010 	sw	t9,16(sp)
    3848:	afa80014 	sw	t0,20(sp)
    384c:	0018cc00 	sll	t9,t8,0x10
    3850:	000a5c00 	sll	t3,t2,0x10
    3854:	000b6403 	sra	t4,t3,0x10
    3858:	00194403 	sra	t0,t9,0x10
    385c:	25090011 	addiu	t1,t0,17
    3860:	258d0320 	addiu	t5,t4,800
    3864:	240e000a 	li	t6,10
    3868:	afae001c 	sw	t6,28(sp)
    386c:	afad0018 	sw	t5,24(sp)
    3870:	afa90020 	sw	t1,32(sp)
    3874:	02402025 	move	a0,s2
    3878:	27a500b8 	addiu	a1,sp,184
    387c:	27a600d0 	addiu	a2,sp,208
    3880:	0c000000 	jal	0 <func_808CADC0>
    3884:	27a700c4 	addiu	a3,sp,196
    3888:	26100001 	addiu	s0,s0,1
    388c:	00108400 	sll	s0,s0,0x10
    3890:	00108403 	sra	s0,s0,0x10
    3894:	2a010005 	slti	at,s0,5
    3898:	1420ffbc 	bnez	at,378c <func_808CE01C+0x530>
    389c:	00000000 	nop
    38a0:	1000003d 	b	3998 <func_808CE01C+0x73c>
    38a4:	3c014270 	lui	at,0x4270
    38a8:	4481c000 	mtc1	at,$f24
    38ac:	3c014120 	lui	at,0x4120
    38b0:	4481b000 	mtc1	at,$f22
    38b4:	3c014248 	lui	at,0x4248
    38b8:	4481a000 	mtc1	at,$f20
    38bc:	00008025 	move	s0,zero
    38c0:	0c000000 	jal	0 <func_808CADC0>
    38c4:	4600b306 	mov.s	$f12,$f22
    38c8:	3c014040 	lui	at,0x4040
    38cc:	44816000 	mtc1	at,$f12
    38d0:	0c000000 	jal	0 <func_808CADC0>
    38d4:	e7a000d0 	swc1	$f0,208(sp)
    38d8:	3c014040 	lui	at,0x4040
    38dc:	44819000 	mtc1	at,$f18
    38e0:	4600b306 	mov.s	$f12,$f22
    38e4:	46120200 	add.s	$f8,$f0,$f18
    38e8:	0c000000 	jal	0 <func_808CADC0>
    38ec:	e7a800d4 	swc1	$f8,212(sp)
    38f0:	c7b000d0 	lwc1	$f16,208(sp)
    38f4:	3c010000 	lui	at,0x0
    38f8:	c4240000 	lwc1	$f4,0(at)
    38fc:	46148182 	mul.s	$f6,$f16,$f20
    3900:	e7a000d8 	swc1	$f0,216(sp)
    3904:	e7bc00cc 	swc1	$f28,204(sp)
    3908:	46140402 	mul.s	$f16,$f0,$f20
    390c:	e7bc00c4 	swc1	$f28,196(sp)
    3910:	e7a400c8 	swc1	$f4,200(sp)
    3914:	c62a02c8 	lwc1	$f10,712(s1)
    3918:	e7b800bc 	swc1	$f24,188(sp)
    391c:	3c0a0000 	lui	t2,0x0
    3920:	46163483 	div.s	$f18,$f6,$f22
    3924:	3c0b0000 	lui	t3,0x0
    3928:	256b0000 	addiu	t3,t3,0
    392c:	254a0000 	addiu	t2,t2,0
    3930:	240c01f4 	li	t4,500
    3934:	240d000a 	li	t5,10
    3938:	240e0014 	li	t6,20
    393c:	02402025 	move	a0,s2
    3940:	27a500b8 	addiu	a1,sp,184
    3944:	27a600d0 	addiu	a2,sp,208
    3948:	27a700c4 	addiu	a3,sp,196
    394c:	46168183 	div.s	$f6,$f16,$f22
    3950:	46125200 	add.s	$f8,$f10,$f18
    3954:	e7a800b8 	swc1	$f8,184(sp)
    3958:	c62402d0 	lwc1	$f4,720(s1)
    395c:	afae0020 	sw	t6,32(sp)
    3960:	afad001c 	sw	t5,28(sp)
    3964:	afac0018 	sw	t4,24(sp)
    3968:	afab0014 	sw	t3,20(sp)
    396c:	afaa0010 	sw	t2,16(sp)
    3970:	46062280 	add.s	$f10,$f4,$f6
    3974:	0c000000 	jal	0 <func_808CADC0>
    3978:	e7aa00c0 	swc1	$f10,192(sp)
    397c:	26100001 	addiu	s0,s0,1
    3980:	00108400 	sll	s0,s0,0x10
    3984:	00108403 	sra	s0,s0,0x10
    3988:	2a010002 	slti	at,s0,2
    398c:	1420ffcc 	bnez	at,38c0 <func_808CE01C+0x664>
    3990:	00000000 	nop
    3994:	3c014270 	lui	at,0x4270
    3998:	262f1970 	addiu	t7,s1,6512
    399c:	4481a000 	mtc1	at,$f20
    39a0:	afaf0070 	sw	t7,112(sp)
    39a4:	00008025 	move	s0,zero
    39a8:	0c000000 	jal	0 <func_808CADC0>
    39ac:	4600d306 	mov.s	$f12,$f26
    39b0:	e7a000d0 	swc1	$f0,208(sp)
    39b4:	0c000000 	jal	0 <func_808CADC0>
    39b8:	4600b306 	mov.s	$f12,$f22
    39bc:	e7a000d4 	swc1	$f0,212(sp)
    39c0:	0c000000 	jal	0 <func_808CADC0>
    39c4:	4600d306 	mov.s	$f12,$f26
    39c8:	3c010000 	lui	at,0x0
    39cc:	c4320000 	lwc1	$f18,0(at)
    39d0:	3c013f00 	lui	at,0x3f00
    39d4:	44816000 	mtc1	at,$f12
    39d8:	e7a000d8 	swc1	$f0,216(sp)
    39dc:	0c000000 	jal	0 <func_808CADC0>
    39e0:	e7b200c8 	swc1	$f18,200(sp)
    39e4:	3c013f00 	lui	at,0x3f00
    39e8:	44816000 	mtc1	at,$f12
    39ec:	0c000000 	jal	0 <func_808CADC0>
    39f0:	e7a000c4 	swc1	$f0,196(sp)
    39f4:	e7a000cc 	swc1	$f0,204(sp)
    39f8:	0c000000 	jal	0 <func_808CADC0>
    39fc:	4600a306 	mov.s	$f12,$f20
    3a00:	c62802c8 	lwc1	$f8,712(s1)
    3a04:	3c014220 	lui	at,0x4220
    3a08:	44816000 	mtc1	at,$f12
    3a0c:	46080400 	add.s	$f16,$f0,$f8
    3a10:	0c000000 	jal	0 <func_808CADC0>
    3a14:	e7b000b8 	swc1	$f16,184(sp)
    3a18:	46180100 	add.s	$f4,$f0,$f24
    3a1c:	4600a306 	mov.s	$f12,$f20
    3a20:	0c000000 	jal	0 <func_808CADC0>
    3a24:	e7a400bc 	swc1	$f4,188(sp)
    3a28:	c62602d0 	lwc1	$f6,720(s1)
    3a2c:	3c013fc0 	lui	at,0x3fc0
    3a30:	44816000 	mtc1	at,$f12
    3a34:	46060280 	add.s	$f10,$f0,$f6
    3a38:	0c000000 	jal	0 <func_808CADC0>
    3a3c:	e7aa00c0 	swc1	$f10,192(sp)
    3a40:	4600048d 	trunc.w.s	$f18,$f0
    3a44:	8fa40070 	lw	a0,112(sp)
    3a48:	27a500b8 	addiu	a1,sp,184
    3a4c:	27a600d0 	addiu	a2,sp,208
    3a50:	44199000 	mfc1	t9,$f18
    3a54:	27a700c4 	addiu	a3,sp,196
    3a58:	00194400 	sll	t0,t9,0x10
    3a5c:	00084c03 	sra	t1,t0,0x10
    3a60:	252a0006 	addiu	t2,t1,6
    3a64:	448a4000 	mtc1	t2,$f8
    3a68:	00000000 	nop
    3a6c:	46804420 	cvt.s.w	$f16,$f8
    3a70:	0c000000 	jal	0 <func_808CADC0>
    3a74:	e7b00010 	swc1	$f16,16(sp)
    3a78:	26100001 	addiu	s0,s0,1
    3a7c:	00108400 	sll	s0,s0,0x10
    3a80:	00108403 	sra	s0,s0,0x10
    3a84:	2a010008 	slti	at,s0,8
    3a88:	1420ffc7 	bnez	at,39a8 <func_808CE01C+0x74c>
    3a8c:	00000000 	nop
    3a90:	8622021c 	lh	v0,540(s1)
    3a94:	27b200a0 	addiu	s2,sp,160
    3a98:	3c0e0000 	lui	t6,0x0
    3a9c:	1040000d 	beqz	v0,3ad4 <func_808CE01C+0x878>
    3aa0:	28410011 	slti	at,v0,17
    3aa4:	1020000b 	beqz	at,3ad4 <func_808CE01C+0x878>
    3aa8:	28410006 	slti	at,v0,6
    3aac:	14200004 	bnez	at,3ac0 <func_808CE01C+0x864>
    3ab0:	00026080 	sll	t4,v0,0x2
    3ab4:	240b00ff 	li	t3,255
    3ab8:	10000006 	b	3ad4 <func_808CE01C+0x878>
    3abc:	a7ab0106 	sh	t3,262(sp)
    3ac0:	01826023 	subu	t4,t4,v0
    3ac4:	000c60c0 	sll	t4,t4,0x3
    3ac8:	01826021 	addu	t4,t4,v0
    3acc:	000c6040 	sll	t4,t4,0x1
    3ad0:	a7ac0106 	sh	t4,262(sp)
    3ad4:	87ad0106 	lh	t5,262(sp)
    3ad8:	25ce0000 	addiu	t6,t6,0
    3adc:	27b90088 	addiu	t9,sp,136
    3ae0:	11a000be 	beqz	t5,3ddc <func_808CE01C+0xb80>
    3ae4:	3c080000 	lui	t0,0x0
    3ae8:	8dd80000 	lw	t8,0(t6)
    3aec:	25080000 	addiu	t0,t0,0
    3af0:	240b0002 	li	t3,2
    3af4:	ae580000 	sw	t8,0(s2)
    3af8:	8dcf0004 	lw	t7,4(t6)
    3afc:	3c0141f0 	lui	at,0x41f0
    3b00:	44812000 	mtc1	at,$f4
    3b04:	ae4f0004 	sw	t7,4(s2)
    3b08:	8dd80008 	lw	t8,8(t6)
    3b0c:	3c0c0000 	lui	t4,0x0
    3b10:	3c0d0000 	lui	t5,0x0
    3b14:	ae580008 	sw	t8,8(s2)
    3b18:	8d0a0000 	lw	t2,0(t0)
    3b1c:	8d090004 	lw	t1,4(t0)
    3b20:	25ad0000 	addiu	t5,t5,0
    3b24:	af2a0000 	sw	t2,0(t9)
    3b28:	8d0a0008 	lw	t2,8(t0)
    3b2c:	af290004 	sw	t1,4(t9)
    3b30:	25870000 	addiu	a3,t4,0
    3b34:	af2a0008 	sw	t2,8(t9)
    3b38:	a22b0220 	sb	t3,544(s1)
    3b3c:	262e1970 	addiu	t6,s1,6512
    3b40:	3c050000 	lui	a1,0x0
    3b44:	24a50000 	addiu	a1,a1,0
    3b48:	afae0070 	sw	t6,112(sp)
    3b4c:	afad0014 	sw	t5,20(sp)
    3b50:	afa70010 	sw	a3,16(sp)
    3b54:	240430db 	li	a0,12507
    3b58:	24060004 	li	a2,4
    3b5c:	0c000000 	jal	0 <func_808CADC0>
    3b60:	e7a400a8 	swc1	$f4,168(sp)
    3b64:	3c014700 	lui	at,0x4700
    3b68:	262213f4 	addiu	v0,s1,5108
    3b6c:	44810000 	mtc1	at,$f0
    3b70:	8c580000 	lw	t8,0(v0)
    3b74:	3c010000 	lui	at,0x0
    3b78:	c4220000 	lwc1	$f2,0(at)
    3b7c:	27b0007c 	addiu	s0,sp,124
    3b80:	ae180000 	sw	t8,0(s0)
    3b84:	8c4f0004 	lw	t7,4(v0)
    3b88:	3c010000 	lui	at,0x0
    3b8c:	00002825 	move	a1,zero
    3b90:	ae0f0004 	sw	t7,4(s0)
    3b94:	8c580008 	lw	t8,8(v0)
    3b98:	ae180008 	sw	t8,8(s0)
    3b9c:	86390032 	lh	t9,50(s1)
    3ba0:	86280030 	lh	t0,48(s1)
    3ba4:	afa2006c 	sw	v0,108(sp)
    3ba8:	44993000 	mtc1	t9,$f6
    3bac:	00084823 	negu	t1,t0
    3bb0:	44894000 	mtc1	t1,$f8
    3bb4:	468032a0 	cvt.s.w	$f10,$f6
    3bb8:	46804420 	cvt.s.w	$f16,$f8
    3bbc:	46005483 	div.s	$f18,$f10,$f0
    3bc0:	c42a0000 	lwc1	$f10,0(at)
    3bc4:	46008103 	div.s	$f4,$f16,$f0
    3bc8:	46029302 	mul.s	$f12,$f18,$f2
    3bcc:	00000000 	nop
    3bd0:	46022182 	mul.s	$f6,$f4,$f2
    3bd4:	460a3480 	add.s	$f18,$f6,$f10
    3bd8:	0c000000 	jal	0 <func_808CADC0>
    3bdc:	e7b200b0 	swc1	$f18,176(sp)
    3be0:	c7ac00b0 	lwc1	$f12,176(sp)
    3be4:	0c000000 	jal	0 <func_808CADC0>
    3be8:	24050001 	li	a1,1
    3bec:	02402025 	move	a0,s2
    3bf0:	0c000000 	jal	0 <func_808CADC0>
    3bf4:	27a50094 	addiu	a1,sp,148
    3bf8:	86240226 	lh	a0,550(s1)
    3bfc:	00042340 	sll	a0,a0,0xd
    3c00:	00042400 	sll	a0,a0,0x10
    3c04:	0c000000 	jal	0 <func_808CADC0>
    3c08:	00042403 	sra	a0,a0,0x10
    3c0c:	3c014248 	lui	at,0x4248
    3c10:	4481a000 	mtc1	at,$f20
    3c14:	3c014396 	lui	at,0x4396
    3c18:	4481b000 	mtc1	at,$f22
    3c1c:	46140202 	mul.s	$f8,$f0,$f20
    3c20:	87aa0106 	lh	t2,262(sp)
    3c24:	8fa40070 	lw	a0,112(sp)
    3c28:	02002825 	move	a1,s0
    3c2c:	afaa0014 	sw	t2,20(sp)
    3c30:	27a60094 	addiu	a2,sp,148
    3c34:	27a70088 	addiu	a3,sp,136
    3c38:	46164400 	add.s	$f16,$f8,$f22
    3c3c:	e7b00010 	swc1	$f16,16(sp)
    3c40:	862b0032 	lh	t3,50(s1)
    3c44:	0c000000 	jal	0 <func_808CADC0>
    3c48:	afab0018 	sw	t3,24(sp)
    3c4c:	3c013f00 	lui	at,0x3f00
    3c50:	44813000 	mtc1	at,$f6
    3c54:	c7a40094 	lwc1	$f4,148(sp)
    3c58:	c7b2007c 	lwc1	$f18,124(sp)
    3c5c:	c7b00098 	lwc1	$f16,152(sp)
    3c60:	46062282 	mul.s	$f10,$f4,$f6
    3c64:	44812000 	mtc1	at,$f4
    3c68:	00000000 	nop
    3c6c:	46048182 	mul.s	$f6,$f16,$f4
    3c70:	44818000 	mtc1	at,$f16
    3c74:	460a9200 	add.s	$f8,$f18,$f10
    3c78:	c7b20080 	lwc1	$f18,128(sp)
    3c7c:	e7a8007c 	swc1	$f8,124(sp)
    3c80:	c7a8009c 	lwc1	$f8,156(sp)
    3c84:	46069280 	add.s	$f10,$f18,$f6
    3c88:	c7b20084 	lwc1	$f18,132(sp)
    3c8c:	46104102 	mul.s	$f4,$f8,$f16
    3c90:	e7aa0080 	swc1	$f10,128(sp)
    3c94:	46049180 	add.s	$f6,$f18,$f4
    3c98:	e7a60084 	swc1	$f6,132(sp)
    3c9c:	86240226 	lh	a0,550(s1)
    3ca0:	00042340 	sll	a0,a0,0xd
    3ca4:	00042400 	sll	a0,a0,0x10
    3ca8:	0c000000 	jal	0 <func_808CADC0>
    3cac:	00042403 	sra	a0,a0,0x10
    3cb0:	46140282 	mul.s	$f10,$f0,$f20
    3cb4:	87ac0106 	lh	t4,262(sp)
    3cb8:	8fa40070 	lw	a0,112(sp)
    3cbc:	02002825 	move	a1,s0
    3cc0:	afac0014 	sw	t4,20(sp)
    3cc4:	27a60094 	addiu	a2,sp,148
    3cc8:	27a70088 	addiu	a3,sp,136
    3ccc:	46165200 	add.s	$f8,$f10,$f22
    3cd0:	e7a80010 	swc1	$f8,16(sp)
    3cd4:	862d0032 	lh	t5,50(s1)
    3cd8:	0c000000 	jal	0 <func_808CADC0>
    3cdc:	afad0018 	sw	t5,24(sp)
    3ce0:	3c014188 	lui	at,0x4188
    3ce4:	44818000 	mtc1	at,$f16
    3ce8:	3c014000 	lui	at,0x4000
    3cec:	4481c000 	mtc1	at,$f24
    3cf0:	3c0142c8 	lui	at,0x42c8
    3cf4:	4481b000 	mtc1	at,$f22
    3cf8:	3c01c120 	lui	at,0xc120
    3cfc:	4481a000 	mtc1	at,$f20
    3d00:	e7bc00a0 	swc1	$f28,160(sp)
    3d04:	e7bc00a8 	swc1	$f28,168(sp)
    3d08:	00008025 	move	s0,zero
    3d0c:	e7b000a4 	swc1	$f16,164(sp)
    3d10:	3c010000 	lui	at,0x0
    3d14:	0c000000 	jal	0 <func_808CADC0>
    3d18:	c42c0000 	lwc1	$f12,0(at)
    3d1c:	3c010000 	lui	at,0x0
    3d20:	c42c0000 	lwc1	$f12,0(at)
    3d24:	0c000000 	jal	0 <func_808CADC0>
    3d28:	e7a000ac 	swc1	$f0,172(sp)
    3d2c:	c7ac00ac 	lwc1	$f12,172(sp)
    3d30:	e7a000b0 	swc1	$f0,176(sp)
    3d34:	0c000000 	jal	0 <func_808CADC0>
    3d38:	00002825 	move	a1,zero
    3d3c:	c7ac00b0 	lwc1	$f12,176(sp)
    3d40:	0c000000 	jal	0 <func_808CADC0>
    3d44:	24050001 	li	a1,1
    3d48:	02402025 	move	a0,s2
    3d4c:	0c000000 	jal	0 <func_808CADC0>
    3d50:	27a50094 	addiu	a1,sp,148
    3d54:	c7b20094 	lwc1	$f18,148(sp)
    3d58:	c7aa0098 	lwc1	$f10,152(sp)
    3d5c:	4600c306 	mov.s	$f12,$f24
    3d60:	46149102 	mul.s	$f4,$f18,$f20
    3d64:	c7b2009c 	lwc1	$f18,156(sp)
    3d68:	46145202 	mul.s	$f8,$f10,$f20
    3d6c:	46162183 	div.s	$f6,$f4,$f22
    3d70:	46149102 	mul.s	$f4,$f18,$f20
    3d74:	46164403 	div.s	$f16,$f8,$f22
    3d78:	e7a60088 	swc1	$f6,136(sp)
    3d7c:	46162183 	div.s	$f6,$f4,$f22
    3d80:	e7b0008c 	swc1	$f16,140(sp)
    3d84:	0c000000 	jal	0 <func_808CADC0>
    3d88:	e7a60090 	swc1	$f6,144(sp)
    3d8c:	4600028d 	trunc.w.s	$f10,$f0
    3d90:	8fa40070 	lw	a0,112(sp)
    3d94:	8fa5006c 	lw	a1,108(sp)
    3d98:	27a60094 	addiu	a2,sp,148
    3d9c:	440f5000 	mfc1	t7,$f10
    3da0:	27a70088 	addiu	a3,sp,136
    3da4:	000fc400 	sll	t8,t7,0x10
    3da8:	0018cc03 	sra	t9,t8,0x10
    3dac:	27280008 	addiu	t0,t9,8
    3db0:	44884000 	mtc1	t0,$f8
    3db4:	00000000 	nop
    3db8:	46804420 	cvt.s.w	$f16,$f8
    3dbc:	0c000000 	jal	0 <func_808CADC0>
    3dc0:	e7b00010 	swc1	$f16,16(sp)
    3dc4:	26100001 	addiu	s0,s0,1
    3dc8:	00108400 	sll	s0,s0,0x10
    3dcc:	00108403 	sra	s0,s0,0x10
    3dd0:	2a010006 	slti	at,s0,6
    3dd4:	1420ffce 	bnez	at,3d10 <func_808CE01C+0xab4>
    3dd8:	00000000 	nop
    3ddc:	3c0142b4 	lui	at,0x42b4
    3de0:	44819000 	mtc1	at,$f18
    3de4:	c6200028 	lwc1	$f0,40(s1)
    3de8:	3c01442f 	lui	at,0x442f
    3dec:	4612003c 	c.lt.s	$f0,$f18
    3df0:	00000000 	nop
    3df4:	4503000d 	bc1tl	3e2c <func_808CE01C+0xbd0>
    3df8:	8e2b0004 	lw	t3,4(s1)
    3dfc:	44812000 	mtc1	at,$f4
    3e00:	00000000 	nop
    3e04:	4600203c 	c.lt.s	$f4,$f0
    3e08:	00000000 	nop
    3e0c:	45030007 	bc1tl	3e2c <func_808CE01C+0xbd0>
    3e10:	8e2b0004 	lw	t3,4(s1)
    3e14:	8e2a0218 	lw	t2,536(s1)
    3e18:	3c090000 	lui	t1,0x0
    3e1c:	25290000 	addiu	t1,t1,0
    3e20:	552a0007 	bnel	t1,t2,3e40 <func_808CE01C+0xbe4>
    3e24:	8e2d0004 	lw	t5,4(s1)
    3e28:	8e2b0004 	lw	t3,4(s1)
    3e2c:	2401fffe 	li	at,-2
    3e30:	01616024 	and	t4,t3,at
    3e34:	10000004 	b	3e48 <func_808CE01C+0xbec>
    3e38:	ae2c0004 	sw	t4,4(s1)
    3e3c:	8e2d0004 	lw	t5,4(s1)
    3e40:	35ae0001 	ori	t6,t5,0x1
    3e44:	ae2e0004 	sw	t6,4(s1)
    3e48:	8fbf0064 	lw	ra,100(sp)
    3e4c:	d7b40030 	ldc1	$f20,48(sp)
    3e50:	d7b60038 	ldc1	$f22,56(sp)
    3e54:	d7b80040 	ldc1	$f24,64(sp)
    3e58:	d7ba0048 	ldc1	$f26,72(sp)
    3e5c:	d7bc0050 	ldc1	$f28,80(sp)
    3e60:	8fb00058 	lw	s0,88(sp)
    3e64:	8fb1005c 	lw	s1,92(sp)
    3e68:	8fb20060 	lw	s2,96(sp)
    3e6c:	03e00008 	jr	ra
    3e70:	27bd0108 	addiu	sp,sp,264

00003e74 <func_808CEC34>:
    3e74:	27bdffd8 	addiu	sp,sp,-40
    3e78:	afbf0024 	sw	ra,36(sp)
    3e7c:	afb00020 	sw	s0,32(sp)
    3e80:	afa5002c 	sw	a1,44(sp)
    3e84:	8c8214ac 	lw	v0,5292(a0)
    3e88:	3c070000 	lui	a3,0x0
    3e8c:	00808025 	move	s0,a0
    3e90:	90450016 	lbu	a1,22(v0)
    3e94:	24e70000 	addiu	a3,a3,0
    3e98:	24060004 	li	a2,4
    3e9c:	30ae0002 	andi	t6,a1,0x2
    3ea0:	11c0001b 	beqz	t6,3f10 <func_808CEC34+0x9c>
    3ea4:	30affffd 	andi	t7,a1,0xfffd
    3ea8:	a04f0016 	sb	t7,22(v0)
    3eac:	909800af 	lbu	t8,175(a0)
    3eb0:	8c430024 	lw	v1,36(v0)
    3eb4:	240e000a 	li	t6,10
    3eb8:	2719fffe 	addiu	t9,t8,-2
    3ebc:	a09900af 	sb	t9,175(a0)
    3ec0:	8c680000 	lw	t0,0(v1)
    3ec4:	240f0014 	li	t7,20
    3ec8:	3c180000 	lui	t8,0x0
    3ecc:	31091000 	andi	t1,t0,0x1000
    3ed0:	11200003 	beqz	t1,3ee0 <func_808CEC34+0x6c>
    3ed4:	260500e4 	addiu	a1,s0,228
    3ed8:	272bfffe 	addiu	t3,t9,-2
    3edc:	a08b00af 	sb	t3,175(a0)
    3ee0:	820c00af 	lb	t4,175(s0)
    3ee4:	240d0002 	li	t5,2
    3ee8:	240438d5 	li	a0,14549
    3eec:	29810003 	slti	at,t4,3
    3ef0:	10200002 	beqz	at,3efc <func_808CEC34+0x88>
    3ef4:	27180000 	addiu	t8,t8,0
    3ef8:	a20d00af 	sb	t5,175(s0)
    3efc:	a60e0230 	sh	t6,560(s0)
    3f00:	a60f023e 	sh	t7,574(s0)
    3f04:	afb80014 	sw	t8,20(sp)
    3f08:	0c000000 	jal	0 <func_808CADC0>
    3f0c:	afa70010 	sw	a3,16(sp)
    3f10:	8fbf0024 	lw	ra,36(sp)
    3f14:	8fb00020 	lw	s0,32(sp)
    3f18:	27bd0028 	addiu	sp,sp,40
    3f1c:	03e00008 	jr	ra
    3f20:	00000000 	nop

00003f24 <BossFd_Update>:
    3f24:	27bdff28 	addiu	sp,sp,-216
    3f28:	afb30054 	sw	s3,84(sp)
    3f2c:	00809825 	move	s3,a0
    3f30:	afa400d0 	sw	a0,208(sp)
    3f34:	afbf005c 	sw	ra,92(sp)
    3f38:	3c040000 	lui	a0,0x0
    3f3c:	afb40058 	sw	s4,88(sp)
    3f40:	afb20050 	sw	s2,80(sp)
    3f44:	afb1004c 	sw	s1,76(sp)
    3f48:	afb00048 	sw	s0,72(sp)
    3f4c:	f7b60040 	sdc1	$f22,64(sp)
    3f50:	f7b40038 	sdc1	$f20,56(sp)
    3f54:	afa500dc 	sw	a1,220(sp)
    3f58:	0c000000 	jal	0 <func_808CADC0>
    3f5c:	24840000 	addiu	a0,a0,0
    3f60:	86780224 	lh	t8,548(s3)
    3f64:	866e0226 	lh	t6,550(s3)
    3f68:	02602025 	move	a0,s3
    3f6c:	27190001 	addiu	t9,t8,1
    3f70:	a6790224 	sh	t9,548(s3)
    3f74:	8e790218 	lw	t9,536(s3)
    3f78:	25cf0001 	addiu	t7,t6,1
    3f7c:	a66f0226 	sh	t7,550(s3)
    3f80:	0320f809 	jalr	t9
    3f84:	8fa500dc 	lw	a1,220(sp)
    3f88:	00009025 	move	s2,zero
    3f8c:	00124040 	sll	t0,s2,0x1
    3f90:	02681021 	addu	v0,s3,t0
    3f94:	84430248 	lh	v1,584(v0)
    3f98:	26520001 	addiu	s2,s2,1
    3f9c:	00129400 	sll	s2,s2,0x10
    3fa0:	10600003 	beqz	v1,3fb0 <BossFd_Update+0x8c>
    3fa4:	00129403 	sra	s2,s2,0x10
    3fa8:	2469ffff 	addiu	t1,v1,-1
    3fac:	a4490248 	sh	t1,584(v0)
    3fb0:	2a410006 	slti	at,s2,6
    3fb4:	5420fff6 	bnezl	at,3f90 <BossFd_Update+0x6c>
    3fb8:	00124040 	sll	t0,s2,0x1
    3fbc:	8662021c 	lh	v0,540(s3)
    3fc0:	10400002 	beqz	v0,3fcc <BossFd_Update+0xa8>
    3fc4:	244affff 	addiu	t2,v0,-1
    3fc8:	a66a021c 	sh	t2,540(s3)
    3fcc:	86620230 	lh	v0,560(s3)
    3fd0:	10400002 	beqz	v0,3fdc <BossFd_Update+0xb8>
    3fd4:	244bffff 	addiu	t3,v0,-1
    3fd8:	a66b0230 	sh	t3,560(s3)
    3fdc:	8662023e 	lh	v0,574(s3)
    3fe0:	10400002 	beqz	v0,3fec <BossFd_Update+0xc8>
    3fe4:	244cffff 	addiu	t4,v0,-1
    3fe8:	a66c023e 	sh	t4,574(s3)
    3fec:	866d0222 	lh	t5,546(s3)
    3ff0:	29a100c8 	slti	at,t5,200
    3ff4:	50200014 	beqzl	at,4048 <BossFd_Update+0x124>
    3ff8:	02602025 	move	a0,s3
    3ffc:	866e023e 	lh	t6,574(s3)
    4000:	02602025 	move	a0,s3
    4004:	55c00004 	bnezl	t6,4018 <BossFd_Update+0xf4>
    4008:	8fa400dc 	lw	a0,220(sp)
    400c:	0c000000 	jal	0 <func_808CADC0>
    4010:	8fa500dc 	lw	a1,220(sp)
    4014:	8fa400dc 	lw	a0,220(sp)
    4018:	3c010001 	lui	at,0x1
    401c:	34211e60 	ori	at,at,0x1e60
    4020:	26711490 	addiu	s1,s3,5264
    4024:	00818021 	addu	s0,a0,at
    4028:	02002825 	move	a1,s0
    402c:	0c000000 	jal	0 <func_808CADC0>
    4030:	02203025 	move	a2,s1
    4034:	8fa400dc 	lw	a0,220(sp)
    4038:	02002825 	move	a1,s0
    403c:	0c000000 	jal	0 <func_808CADC0>
    4040:	02203025 	move	a2,s1
    4044:	02602025 	move	a0,s3
    4048:	0c000000 	jal	0 <func_808CADC0>
    404c:	8fa500dc 	lw	a1,220(sp)
    4050:	c6760254 	lwc1	$f22,596(s3)
    4054:	c674025c 	lwc1	$f20,604(s3)
    4058:	c6720260 	lwc1	$f18,608(s3)
    405c:	866f0226 	lh	t7,550(s3)
    4060:	3c014080 	lui	at,0x4080
    4064:	44818000 	mtc1	at,$f16
    4068:	3c0142f0 	lui	at,0x42f0
    406c:	44817000 	mtc1	at,$f14
    4070:	4610b400 	add.s	$f16,$f22,$f16
    4074:	3c014040 	lui	at,0x4040
    4078:	4481b000 	mtc1	at,$f22
    407c:	3c014000 	lui	at,0x4000
    4080:	44816000 	mtc1	at,$f12
    4084:	4616a580 	add.s	$f22,$f20,$f22
    4088:	31f80010 	andi	t8,t7,0x10
    408c:	e6700254 	swc1	$f16,596(s3)
    4090:	460c9301 	sub.s	$f12,$f18,$f12
    4094:	e66e0258 	swc1	$f14,600(s3)
    4098:	e676025c 	swc1	$f22,604(s3)
    409c:	13000005 	beqz	t8,40b4 <BossFd_Update+0x190>
    40a0:	e66c0260 	swc1	$f12,608(s3)
    40a4:	3c0141f0 	lui	at,0x41f0
    40a8:	44810000 	mtc1	at,$f0
    40ac:	10000005 	b	40c4 <BossFd_Update+0x1a0>
    40b0:	44050000 	mfc1	a1,$f0
    40b4:	3c01431e 	lui	at,0x431e
    40b8:	44810000 	mtc1	at,$f0
    40bc:	00000000 	nop
    40c0:	44050000 	mfc1	a1,$f0
    40c4:	26640270 	addiu	a0,s3,624
    40c8:	3c063f80 	lui	a2,0x3f80
    40cc:	0c000000 	jal	0 <func_808CADC0>
    40d0:	3c074100 	lui	a3,0x4100
    40d4:	8679021e 	lh	t9,542(s3)
    40d8:	57200005 	bnezl	t9,40f0 <BossFd_Update+0x1cc>
    40dc:	86680226 	lh	t0,550(s3)
    40e0:	c6700270 	lwc1	$f16,624(s3)
    40e4:	1000000f 	b	4124 <BossFd_Update+0x200>
    40e8:	e6700274 	swc1	$f16,628(s3)
    40ec:	86680226 	lh	t0,550(s3)
    40f0:	3c01437f 	lui	at,0x437f
    40f4:	26640274 	addiu	a0,s3,628
    40f8:	31090004 	andi	t1,t0,0x4
    40fc:	11200004 	beqz	t1,4110 <BossFd_Update+0x1ec>
    4100:	3c063f80 	lui	a2,0x3f80
    4104:	44800000 	mtc1	zero,$f0
    4108:	10000004 	b	411c <BossFd_Update+0x1f8>
    410c:	44050000 	mfc1	a1,$f0
    4110:	44810000 	mtc1	at,$f0
    4114:	00000000 	nop
    4118:	44050000 	mfc1	a1,$f0
    411c:	0c000000 	jal	0 <func_808CADC0>
    4120:	3c074280 	lui	a3,0x4280
    4124:	86620226 	lh	v0,550(s3)
    4128:	26640284 	addiu	a0,s3,644
    412c:	3c063f80 	lui	a2,0x3f80
    4130:	304a0008 	andi	t2,v0,0x8
    4134:	11400005 	beqz	t2,414c <BossFd_Update+0x228>
    4138:	244b0003 	addiu	t3,v0,3
    413c:	3c014300 	lui	at,0x4300
    4140:	44811000 	mtc1	at,$f2
    4144:	10000006 	b	4160 <BossFd_Update+0x23c>
    4148:	46001006 	mov.s	$f0,$f2
    414c:	3c01437f 	lui	at,0x437f
    4150:	44810000 	mtc1	at,$f0
    4154:	3c014300 	lui	at,0x4300
    4158:	44811000 	mtc1	at,$f2
    415c:	00000000 	nop
    4160:	316c0008 	andi	t4,t3,0x8
    4164:	11800003 	beqz	t4,4174 <BossFd_Update+0x250>
    4168:	244d0006 	addiu	t5,v0,6
    416c:	10000004 	b	4180 <BossFd_Update+0x25c>
    4170:	46001586 	mov.s	$f22,$f2
    4174:	3c01437f 	lui	at,0x437f
    4178:	4481b000 	mtc1	at,$f22
    417c:	00000000 	nop
    4180:	31ae0008 	andi	t6,t5,0x8
    4184:	11c00003 	beqz	t6,4194 <BossFd_Update+0x270>
    4188:	3c01437f 	lui	at,0x437f
    418c:	10000003 	b	419c <BossFd_Update+0x278>
    4190:	46001506 	mov.s	$f20,$f2
    4194:	4481a000 	mtc1	at,$f20
    4198:	00000000 	nop
    419c:	44050000 	mfc1	a1,$f0
    41a0:	0c000000 	jal	0 <func_808CADC0>
    41a4:	3c074180 	lui	a3,0x4180
    41a8:	4405b000 	mfc1	a1,$f22
    41ac:	26640288 	addiu	a0,s3,648
    41b0:	3c063f80 	lui	a2,0x3f80
    41b4:	0c000000 	jal	0 <func_808CADC0>
    41b8:	3c074180 	lui	a3,0x4180
    41bc:	4405a000 	mfc1	a1,$f20
    41c0:	2664028c 	addiu	a0,s3,652
    41c4:	3c063f80 	lui	a2,0x3f80
    41c8:	0c000000 	jal	0 <func_808CADC0>
    41cc:	3c074180 	lui	a3,0x4180
    41d0:	8662023a 	lh	v0,570(s3)
    41d4:	1040005f 	beqz	v0,4354 <BossFd_Update+0x430>
    41d8:	244fffff 	addiu	t7,v0,-1
    41dc:	a66f023a 	sh	t7,570(s3)
    41e0:	8678023a 	lh	t8,570(s3)
    41e4:	3c014248 	lui	at,0x4248
    41e8:	3319000f 	andi	t9,t8,0xf
    41ec:	17200059 	bnez	t9,4354 <BossFd_Update+0x430>
    41f0:	00000000 	nop
    41f4:	44816000 	mtc1	at,$f12
    41f8:	0c000000 	jal	0 <func_808CADC0>
    41fc:	00000000 	nop
    4200:	4600020d 	trunc.w.s	$f8,$f0
    4204:	3c01447a 	lui	at,0x447a
    4208:	44812000 	mtc1	at,$f4
    420c:	c6720024 	lwc1	$f18,36(s3)
    4210:	440a4000 	mfc1	t2,$f8
    4214:	e7a40014 	swc1	$f4,20(sp)
    4218:	e7b20010 	swc1	$f18,16(sp)
    421c:	c666002c 	lwc1	$f6,44(s3)
    4220:	000a5c00 	sll	t3,t2,0x10
    4224:	8fa600dc 	lw	a2,220(sp)
    4228:	000b6403 	sra	t4,t3,0x10
    422c:	258d0082 	addiu	t5,t4,130
    4230:	240e0064 	li	t6,100
    4234:	afae0028 	sw	t6,40(sp)
    4238:	afad0024 	sw	t5,36(sp)
    423c:	afa00020 	sw	zero,32(sp)
    4240:	afa0001c 	sw	zero,28(sp)
    4244:	02602825 	move	a1,s3
    4248:	240700ad 	li	a3,173
    424c:	e7a60018 	swc1	$f6,24(sp)
    4250:	0c000000 	jal	0 <func_808CADC0>
    4254:	24c41c24 	addiu	a0,a2,7204
    4258:	1040003e 	beqz	v0,4354 <BossFd_Update+0x430>
    425c:	00408025 	move	s0,v0
    4260:	3c014170 	lui	at,0x4170
    4264:	4481b000 	mtc1	at,$f22
    4268:	3c014396 	lui	at,0x4396
    426c:	4481a000 	mtc1	at,$f20
    4270:	00009025 	move	s2,zero
    4274:	26741970 	addiu	s4,s3,6512
    4278:	27b100b0 	addiu	s1,sp,176
    427c:	3c0f0000 	lui	t7,0x0
    4280:	25ef0000 	addiu	t7,t7,0
    4284:	8df90000 	lw	t9,0(t7)
    4288:	3c090000 	lui	t1,0x0
    428c:	25290000 	addiu	t1,t1,0
    4290:	ae390000 	sw	t9,0(s1)
    4294:	8df80004 	lw	t8,4(t7)
    4298:	27a800a4 	addiu	t0,sp,164
    429c:	4600a306 	mov.s	$f12,$f20
    42a0:	ae380004 	sw	t8,4(s1)
    42a4:	8df90008 	lw	t9,8(t7)
    42a8:	ae390008 	sw	t9,8(s1)
    42ac:	8d2b0000 	lw	t3,0(t1)
    42b0:	8d2a0004 	lw	t2,4(t1)
    42b4:	ad0b0000 	sw	t3,0(t0)
    42b8:	8d2b0008 	lw	t3,8(t1)
    42bc:	ad0a0004 	sw	t2,4(t0)
    42c0:	0c000000 	jal	0 <func_808CADC0>
    42c4:	ad0b0008 	sw	t3,8(t0)
    42c8:	c60a0024 	lwc1	$f10,36(s0)
    42cc:	4600a306 	mov.s	$f12,$f20
    42d0:	460a0400 	add.s	$f16,$f0,$f10
    42d4:	0c000000 	jal	0 <func_808CADC0>
    42d8:	e7b00098 	swc1	$f16,152(sp)
    42dc:	c6120028 	lwc1	$f18,40(s0)
    42e0:	4600a306 	mov.s	$f12,$f20
    42e4:	46120100 	add.s	$f4,$f0,$f18
    42e8:	0c000000 	jal	0 <func_808CADC0>
    42ec:	e7a4009c 	swc1	$f4,156(sp)
    42f0:	c606002c 	lwc1	$f6,44(s0)
    42f4:	4600b306 	mov.s	$f12,$f22
    42f8:	46060200 	add.s	$f8,$f0,$f6
    42fc:	0c000000 	jal	0 <func_808CADC0>
    4300:	e7a800a0 	swc1	$f8,160(sp)
    4304:	4600028d 	trunc.w.s	$f10,$f0
    4308:	02802025 	move	a0,s4
    430c:	27a50098 	addiu	a1,sp,152
    4310:	02203025 	move	a2,s1
    4314:	440d5000 	mfc1	t5,$f10
    4318:	27a700a4 	addiu	a3,sp,164
    431c:	000d7400 	sll	t6,t5,0x10
    4320:	000e7c03 	sra	t7,t6,0x10
    4324:	25f80014 	addiu	t8,t7,20
    4328:	44988000 	mtc1	t8,$f16
    432c:	00000000 	nop
    4330:	468084a0 	cvt.s.w	$f18,$f16
    4334:	0c000000 	jal	0 <func_808CADC0>
    4338:	e7b20010 	swc1	$f18,16(sp)
    433c:	26520001 	addiu	s2,s2,1
    4340:	00129400 	sll	s2,s2,0x10
    4344:	00129403 	sra	s2,s2,0x10
    4348:	2a41000a 	slti	at,s2,10
    434c:	1420ffcb 	bnez	at,427c <BossFd_Update+0x358>
    4350:	00000000 	nop
    4354:	3c080000 	lui	t0,0x0
    4358:	25080000 	addiu	t0,t0,0
    435c:	8d0a0000 	lw	t2,0(t0)
    4360:	27b9008c 	addiu	t9,sp,140
    4364:	8d090004 	lw	t1,4(t0)
    4368:	af2a0000 	sw	t2,0(t9)
    436c:	8d0a0008 	lw	t2,8(t0)
    4370:	3c0c0000 	lui	t4,0x0
    4374:	258c0000 	addiu	t4,t4,0
    4378:	af290004 	sw	t1,4(t9)
    437c:	af2a0008 	sw	t2,8(t9)
    4380:	8d8e0000 	lw	t6,0(t4)
    4384:	27ab0080 	addiu	t3,sp,128
    4388:	3c013f00 	lui	at,0x3f00
    438c:	ad6e0000 	sw	t6,0(t3)
    4390:	8d8e0008 	lw	t6,8(t4)
    4394:	8d8d0004 	lw	t5,4(t4)
    4398:	4481b000 	mtc1	at,$f22
    439c:	3c014270 	lui	at,0x4270
    43a0:	4481a000 	mtc1	at,$f20
    43a4:	26741970 	addiu	s4,s3,6512
    43a8:	00009025 	move	s2,zero
    43ac:	ad6e0008 	sw	t6,8(t3)
    43b0:	ad6d0004 	sw	t5,4(t3)
    43b4:	3c010000 	lui	at,0x0
    43b8:	c4240000 	lwc1	$f4,0(at)
    43bc:	4600b306 	mov.s	$f12,$f22
    43c0:	0c000000 	jal	0 <func_808CADC0>
    43c4:	e7a40084 	swc1	$f4,132(sp)
    43c8:	e7a00080 	swc1	$f0,128(sp)
    43cc:	0c000000 	jal	0 <func_808CADC0>
    43d0:	4600b306 	mov.s	$f12,$f22
    43d4:	3c010000 	lui	at,0x0
    43d8:	e7a00088 	swc1	$f0,136(sp)
    43dc:	0c000000 	jal	0 <func_808CADC0>
    43e0:	c42c0000 	lwc1	$f12,0(at)
    43e4:	4600018d 	trunc.w.s	$f6,$f0
    43e8:	4600a306 	mov.s	$f12,$f20
    43ec:	44103000 	mfc1	s0,$f6
    43f0:	00000000 	nop
    43f4:	00108400 	sll	s0,s0,0x10
    43f8:	0c000000 	jal	0 <func_808CADC0>
    43fc:	00108403 	sra	s0,s0,0x10
    4400:	0010c080 	sll	t8,s0,0x2
    4404:	0310c023 	subu	t8,t8,s0
    4408:	3c190000 	lui	t9,0x0
    440c:	27390000 	addiu	t9,t9,0
    4410:	0018c080 	sll	t8,t8,0x2
    4414:	03198821 	addu	s1,t8,t9
    4418:	c6280000 	lwc1	$f8,0(s1)
    441c:	3c014220 	lui	at,0x4220
    4420:	44816000 	mtc1	at,$f12
    4424:	46080280 	add.s	$f10,$f0,$f8
    4428:	0c000000 	jal	0 <func_808CADC0>
    442c:	e7aa0074 	swc1	$f10,116(sp)
    4430:	3c014120 	lui	at,0x4120
    4434:	44819000 	mtc1	at,$f18
    4438:	c6300004 	lwc1	$f16,4(s1)
    443c:	4600a306 	mov.s	$f12,$f20
    4440:	46128100 	add.s	$f4,$f16,$f18
    4444:	46040180 	add.s	$f6,$f0,$f4
    4448:	0c000000 	jal	0 <func_808CADC0>
    444c:	e7a60078 	swc1	$f6,120(sp)
    4450:	c6280008 	lwc1	$f8,8(s1)
    4454:	3c014000 	lui	at,0x4000
    4458:	44816000 	mtc1	at,$f12
    445c:	46080280 	add.s	$f10,$f0,$f8
    4460:	0c000000 	jal	0 <func_808CADC0>
    4464:	e7aa007c 	swc1	$f10,124(sp)
    4468:	4600040d 	trunc.w.s	$f16,$f0
    446c:	02802025 	move	a0,s4
    4470:	27a50074 	addiu	a1,sp,116
    4474:	27a6008c 	addiu	a2,sp,140
    4478:	44098000 	mfc1	t1,$f16
    447c:	27a70080 	addiu	a3,sp,128
    4480:	00095400 	sll	t2,t1,0x10
    4484:	000a5c03 	sra	t3,t2,0x10
    4488:	256c0006 	addiu	t4,t3,6
    448c:	448c9000 	mtc1	t4,$f18
    4490:	00000000 	nop
    4494:	46809120 	cvt.s.w	$f4,$f18
    4498:	0c000000 	jal	0 <func_808CADC0>
    449c:	e7a40010 	swc1	$f4,16(sp)
    44a0:	26520001 	addiu	s2,s2,1
    44a4:	00129400 	sll	s2,s2,0x10
    44a8:	00129403 	sra	s2,s2,0x10
    44ac:	2a410006 	slti	at,s2,6
    44b0:	1420ffc0 	bnez	at,43b4 <BossFd_Update+0x490>
    44b4:	00000000 	nop
    44b8:	866d021e 	lh	t5,542(s3)
    44bc:	11a0005f 	beqz	t5,463c <BossFd_Update+0x718>
    44c0:	00000000 	nop
    44c4:	c6660294 	lwc1	$f6,660(s3)
    44c8:	00009025 	move	s2,zero
    44cc:	3c0141a0 	lui	at,0x41a0
    44d0:	4600320d 	trunc.w.s	$f8,$f6
    44d4:	440f4000 	mfc1	t7,$f8
    44d8:	00000000 	nop
    44dc:	000fc400 	sll	t8,t7,0x10
    44e0:	0018cc03 	sra	t9,t8,0x10
    44e4:	1b200055 	blez	t9,463c <BossFd_Update+0x718>
    44e8:	00000000 	nop
    44ec:	4481a000 	mtc1	at,$f20
    44f0:	00000000 	nop
    44f4:	3c010000 	lui	at,0x0
    44f8:	0c000000 	jal	0 <func_808CADC0>
    44fc:	c42c0000 	lwc1	$f12,0(at)
    4500:	4600028d 	trunc.w.s	$f10,$f0
    4504:	4600a306 	mov.s	$f12,$f20
    4508:	44105000 	mfc1	s0,$f10
    450c:	00000000 	nop
    4510:	00108400 	sll	s0,s0,0x10
    4514:	0c000000 	jal	0 <func_808CADC0>
    4518:	00108403 	sra	s0,s0,0x10
    451c:	00104880 	sll	t1,s0,0x2
    4520:	01304823 	subu	t1,t1,s0
    4524:	00094880 	sll	t1,t1,0x2
    4528:	02698821 	addu	s1,s3,t1
    452c:	c6300e08 	lwc1	$f16,3592(s1)
    4530:	3c0142b4 	lui	at,0x42b4
    4534:	44813000 	mtc1	at,$f6
    4538:	46100480 	add.s	$f18,$f0,$f16
    453c:	e7b20078 	swc1	$f18,120(sp)
    4540:	c7a40078 	lwc1	$f4,120(sp)
    4544:	4604303e 	c.le.s	$f6,$f4
    4548:	00000000 	nop
    454c:	4502002f 	bc1fl	460c <BossFd_Update+0x6e8>
    4550:	8faf00d0 	lw	t7,208(sp)
    4554:	0c000000 	jal	0 <func_808CADC0>
    4558:	4600a306 	mov.s	$f12,$f20
    455c:	c6280e04 	lwc1	$f8,3588(s1)
    4560:	4600a306 	mov.s	$f12,$f20
    4564:	46080280 	add.s	$f10,$f0,$f8
    4568:	0c000000 	jal	0 <func_808CADC0>
    456c:	e7aa0074 	swc1	$f10,116(sp)
    4570:	c6300e0c 	lwc1	$f16,3596(s1)
    4574:	46100480 	add.s	$f18,$f0,$f16
    4578:	e7b2007c 	swc1	$f18,124(sp)
    457c:	0c000000 	jal	0 <func_808CADC0>
    4580:	c66c0290 	lwc1	$f12,656(s3)
    4584:	e7a0008c 	swc1	$f0,140(sp)
    4588:	0c000000 	jal	0 <func_808CADC0>
    458c:	c66c0290 	lwc1	$f12,656(s3)
    4590:	e7a00090 	swc1	$f0,144(sp)
    4594:	0c000000 	jal	0 <func_808CADC0>
    4598:	c66c0290 	lwc1	$f12,656(s3)
    459c:	3c010000 	lui	at,0x0
    45a0:	c4240000 	lwc1	$f4,0(at)
    45a4:	e7a00094 	swc1	$f0,148(sp)
    45a8:	4600b306 	mov.s	$f12,$f22
    45ac:	0c000000 	jal	0 <func_808CADC0>
    45b0:	e7a40084 	swc1	$f4,132(sp)
    45b4:	e7a00080 	swc1	$f0,128(sp)
    45b8:	0c000000 	jal	0 <func_808CADC0>
    45bc:	4600b306 	mov.s	$f12,$f22
    45c0:	3c014000 	lui	at,0x4000
    45c4:	44816000 	mtc1	at,$f12
    45c8:	0c000000 	jal	0 <func_808CADC0>
    45cc:	e7a00088 	swc1	$f0,136(sp)
    45d0:	4600018d 	trunc.w.s	$f6,$f0
    45d4:	02802025 	move	a0,s4
    45d8:	27a50074 	addiu	a1,sp,116
    45dc:	27a6008c 	addiu	a2,sp,140
    45e0:	440b3000 	mfc1	t3,$f6
    45e4:	27a70080 	addiu	a3,sp,128
    45e8:	000b6400 	sll	t4,t3,0x10
    45ec:	000c6c03 	sra	t5,t4,0x10
    45f0:	25ae0008 	addiu	t6,t5,8
    45f4:	448e4000 	mtc1	t6,$f8
    45f8:	00000000 	nop
    45fc:	468042a0 	cvt.s.w	$f10,$f8
    4600:	0c000000 	jal	0 <func_808CADC0>
    4604:	e7aa0010 	swc1	$f10,16(sp)
    4608:	8faf00d0 	lw	t7,208(sp)
    460c:	26520001 	addiu	s2,s2,1
    4610:	00129400 	sll	s2,s2,0x10
    4614:	c5f00294 	lwc1	$f16,660(t7)
    4618:	00129403 	sra	s2,s2,0x10
    461c:	4600848d 	trunc.w.s	$f18,$f16
    4620:	44199000 	mfc1	t9,$f18
    4624:	00000000 	nop
    4628:	00194400 	sll	t0,t9,0x10
    462c:	00084c03 	sra	t1,t0,0x10
    4630:	0249082a 	slt	at,s2,t1
    4634:	1420ffaf 	bnez	at,44f4 <BossFd_Update+0x5d0>
    4638:	00000000 	nop
    463c:	3c040000 	lui	a0,0x0
    4640:	0c000000 	jal	0 <func_808CADC0>
    4644:	24840000 	addiu	a0,a0,0
    4648:	02602025 	move	a0,s3
    464c:	0c000000 	jal	0 <func_808CADC0>
    4650:	8fa500dc 	lw	a1,220(sp)
    4654:	3c040000 	lui	a0,0x0
    4658:	0c000000 	jal	0 <func_808CADC0>
    465c:	24840000 	addiu	a0,a0,0
    4660:	8fbf005c 	lw	ra,92(sp)
    4664:	d7b40038 	ldc1	$f20,56(sp)
    4668:	d7b60040 	ldc1	$f22,64(sp)
    466c:	8fb00048 	lw	s0,72(sp)
    4670:	8fb1004c 	lw	s1,76(sp)
    4674:	8fb20050 	lw	s2,80(sp)
    4678:	8fb30054 	lw	s3,84(sp)
    467c:	8fb40058 	lw	s4,88(sp)
    4680:	03e00008 	jr	ra
    4684:	27bd00d8 	addiu	sp,sp,216

00004688 <func_808CF448>:
    4688:	27bdff60 	addiu	sp,sp,-160
    468c:	f7be0040 	sdc1	$f30,64(sp)
    4690:	3c013f00 	lui	at,0x3f00
    4694:	f7bc0038 	sdc1	$f28,56(sp)
    4698:	f7b80028 	sdc1	$f24,40(sp)
    469c:	f7b60020 	sdc1	$f22,32(sp)
    46a0:	3c180000 	lui	t8,0x0
    46a4:	4481f000 	mtc1	at,$f30
    46a8:	afbf0064 	sw	ra,100(sp)
    46ac:	afb50060 	sw	s5,96(sp)
    46b0:	afb4005c 	sw	s4,92(sp)
    46b4:	afb30058 	sw	s3,88(sp)
    46b8:	afb20054 	sw	s2,84(sp)
    46bc:	afb10050 	sw	s1,80(sp)
    46c0:	afb0004c 	sw	s0,76(sp)
    46c4:	f7ba0030 	sdc1	$f26,48(sp)
    46c8:	f7b40018 	sdc1	$f20,24(sp)
    46cc:	afa500a4 	sw	a1,164(sp)
    46d0:	27180000 	addiu	t8,t8,0
    46d4:	3c01c1c8 	lui	at,0xc1c8
    46d8:	8f080000 	lw	t0,0(t8)
    46dc:	4481e000 	mtc1	at,$f28
    46e0:	3c0140a0 	lui	at,0x40a0
    46e4:	8cb21c44 	lw	s2,7236(a1)
    46e8:	27af008c 	addiu	t7,sp,140
    46ec:	4481c000 	mtc1	at,$f24
    46f0:	3c014020 	lui	at,0x4020
    46f4:	ade80000 	sw	t0,0(t7)
    46f8:	8f080008 	lw	t0,8(t8)
    46fc:	8f190004 	lw	t9,4(t8)
    4700:	4481b000 	mtc1	at,$f22
    4704:	3c0142c8 	lui	at,0x42c8
    4708:	4481a000 	mtc1	at,$f20
    470c:	4480d000 	mtc1	zero,$f26
    4710:	0080a825 	move	s5,a0
    4714:	24911970 	addiu	s1,a0,6512
    4718:	00009825 	move	s3,zero
    471c:	24140003 	li	s4,3
    4720:	ade80008 	sw	t0,8(t7)
    4724:	adf90004 	sw	t9,4(t7)
    4728:	92290024 	lbu	t1,36(s1)
    472c:	24010001 	li	at,1
    4730:	512000d5 	beqzl	t1,4a88 <func_808CF448+0x400>
    4734:	26730001 	addiu	s3,s3,1
    4738:	c620000c 	lwc1	$f0,12(s1)
    473c:	c6240000 	lwc1	$f4,0(s1)
    4740:	c6220010 	lwc1	$f2,16(s1)
    4744:	c6280004 	lwc1	$f8,4(s1)
    4748:	c62c0014 	lwc1	$f12,20(s1)
    474c:	c6300008 	lwc1	$f16,8(s1)
    4750:	46002180 	add.s	$f6,$f4,$f0
    4754:	c6240018 	lwc1	$f4,24(s1)
    4758:	922a0025 	lbu	t2,37(s1)
    475c:	46024280 	add.s	$f10,$f8,$f2
    4760:	c628001c 	lwc1	$f8,28(s1)
    4764:	e6260000 	swc1	$f6,0(s1)
    4768:	460c8480 	add.s	$f18,$f16,$f12
    476c:	c6300020 	lwc1	$f16,32(s1)
    4770:	e62a0004 	swc1	$f10,4(s1)
    4774:	46040180 	add.s	$f6,$f0,$f4
    4778:	e6320008 	swc1	$f18,8(s1)
    477c:	92220024 	lbu	v0,36(s1)
    4780:	46081280 	add.s	$f10,$f2,$f8
    4784:	254b0001 	addiu	t3,t2,1
    4788:	a22b0025 	sb	t3,37(s1)
    478c:	46106480 	add.s	$f18,$f12,$f16
    4790:	e626000c 	swc1	$f6,12(s1)
    4794:	e62a0010 	swc1	$f10,16(s1)
    4798:	1441001c 	bne	v0,at,480c <func_808CF448+0x184>
    479c:	e6320014 	swc1	$f18,20(s1)
    47a0:	316300ff 	andi	v1,t3,0xff
    47a4:	04610004 	bgez	v1,47b8 <func_808CF448+0x130>
    47a8:	30630003 	andi	v1,v1,0x3
    47ac:	10600002 	beqz	v1,47b8 <func_808CF448+0x130>
    47b0:	00000000 	nop
    47b4:	2463fffc 	addiu	v1,v1,-4
    47b8:	00031c00 	sll	v1,v1,0x10
    47bc:	00031c03 	sra	v1,v1,0x10
    47c0:	00740019 	multu	v1,s4
    47c4:	27ad008c 	addiu	t5,sp,140
    47c8:	8639002a 	lh	t9,42(s1)
    47cc:	2728ffec 	addiu	t0,t9,-20
    47d0:	00006012 	mflo	t4
    47d4:	018d1021 	addu	v0,t4,t5
    47d8:	904e0000 	lbu	t6,0(v0)
    47dc:	a22e0026 	sb	t6,38(s1)
    47e0:	904f0001 	lbu	t7,1(v0)
    47e4:	a22f0027 	sb	t7,39(s1)
    47e8:	90580002 	lbu	t8,2(v0)
    47ec:	a628002a 	sh	t0,42(s1)
    47f0:	8629002a 	lh	t1,42(s1)
    47f4:	a2380028 	sb	t8,40(s1)
    47f8:	5d2000a3 	bgtzl	t1,4a88 <func_808CF448+0x400>
    47fc:	26730001 	addiu	s3,s3,1
    4800:	a620002a 	sh	zero,42(s1)
    4804:	1000009f 	b	4a84 <func_808CF448+0x3fc>
    4808:	a2200024 	sb	zero,36(s1)
    480c:	24010002 	li	at,2
    4810:	10410002 	beq	v0,at,481c <func_808CF448+0x194>
    4814:	24010005 	li	at,5
    4818:	1441000f 	bne	v0,at,4858 <func_808CF448+0x1d0>
    481c:	3c010000 	lui	at,0x0
    4820:	c4260000 	lwc1	$f6,0(at)
    4824:	c6240034 	lwc1	$f4,52(s1)
    4828:	3c010000 	lui	at,0x0
    482c:	c62a0038 	lwc1	$f10,56(s1)
    4830:	46062200 	add.s	$f8,$f4,$f6
    4834:	c6240004 	lwc1	$f4,4(s1)
    4838:	e6280034 	swc1	$f8,52(s1)
    483c:	c4300000 	lwc1	$f16,0(at)
    4840:	4614203e 	c.le.s	$f4,$f20
    4844:	46105480 	add.s	$f18,$f10,$f16
    4848:	4500008e 	bc1f	4a84 <func_808CF448+0x3fc>
    484c:	e6320038 	swc1	$f18,56(s1)
    4850:	1000008c 	b	4a84 <func_808CF448+0x3fc>
    4854:	a2200024 	sb	zero,36(s1)
    4858:	16820019 	bne	s4,v0,48c0 <func_808CF448+0x238>
    485c:	24010004 	li	at,4
    4860:	8622002c 	lh	v0,44(s1)
    4864:	240a0008 	li	t2,8
    4868:	28410008 	slti	at,v0,8
    486c:	54200005 	bnezl	at,4884 <func_808CF448+0x1fc>
    4870:	922b0025 	lbu	t3,37(s1)
    4874:	a62a002c 	sh	t2,44(s1)
    4878:	10000082 	b	4a84 <func_808CF448+0x3fc>
    487c:	a2200024 	sb	zero,36(s1)
    4880:	922b0025 	lbu	t3,37(s1)
    4884:	316c0001 	andi	t4,t3,0x1
    4888:	5580000b 	bnezl	t4,48b8 <func_808CF448+0x230>
    488c:	244d0001 	addiu	t5,v0,1
    4890:	0c000000 	jal	0 <func_808CADC0>
    4894:	00000000 	nop
    4898:	3c010000 	lui	at,0x0
    489c:	c4260000 	lwc1	$f6,0(at)
    48a0:	4606003c 	c.lt.s	$f0,$f6
    48a4:	00000000 	nop
    48a8:	45020077 	bc1fl	4a88 <func_808CF448+0x400>
    48ac:	26730001 	addiu	s3,s3,1
    48b0:	8622002c 	lh	v0,44(s1)
    48b4:	244d0001 	addiu	t5,v0,1
    48b8:	10000072 	b	4a84 <func_808CF448+0x3fc>
    48bc:	a62d002c 	sh	t5,44(s1)
    48c0:	54410071 	bnel	v0,at,4a88 <func_808CF448+0x400>
    48c4:	26730001 	addiu	s3,s3,1
    48c8:	c6480024 	lwc1	$f8,36(s2)
    48cc:	c62a0000 	lwc1	$f10,0(s1)
    48d0:	3c0141f0 	lui	at,0x41f0
    48d4:	44819000 	mtc1	at,$f18
    48d8:	c6500028 	lwc1	$f16,40(s2)
    48dc:	460a4081 	sub.s	$f2,$f8,$f10
    48e0:	86ae024e 	lh	t6,590(s5)
    48e4:	c6260004 	lwc1	$f6,4(s1)
    48e8:	46128100 	add.s	$f4,$f16,$f18
    48ec:	c62a0008 	lwc1	$f10,8(s1)
    48f0:	c648002c 	lwc1	$f8,44(s2)
    48f4:	46062301 	sub.s	$f12,$f4,$f6
    48f8:	15c00026 	bnez	t6,4994 <func_808CF448+0x30c>
    48fc:	460a4381 	sub.s	$f14,$f8,$f10
    4900:	46021402 	mul.s	$f16,$f2,$f2
    4904:	3c0141a0 	lui	at,0x41a0
    4908:	44814000 	mtc1	at,$f8
    490c:	460c6482 	mul.s	$f18,$f12,$f12
    4910:	240f0032 	li	t7,50
    4914:	00002825 	move	a1,zero
    4918:	460e7182 	mul.s	$f6,$f14,$f14
    491c:	24180030 	li	t8,48
    4920:	46128100 	add.s	$f4,$f16,$f18
    4924:	46062000 	add.s	$f0,$f4,$f6
    4928:	46000004 	sqrt.s	$f0,$f0
    492c:	4608003c 	c.lt.s	$f0,$f8
    4930:	00000000 	nop
    4934:	45020018 	bc1fl	4998 <func_808CF448+0x310>
    4938:	8622002c 	lh	v0,44(s1)
    493c:	a6af024e 	sh	t7,590(s5)
    4940:	8627002e 	lh	a3,46(s1)
    4944:	4406c000 	mfc1	a2,$f24
    4948:	afb80014 	sw	t8,20(sp)
    494c:	e7ba0010 	swc1	$f26,16(sp)
    4950:	0c000000 	jal	0 <func_808CADC0>
    4954:	8fa400a4 	lw	a0,164(sp)
    4958:	92590a60 	lbu	t9,2656(s2)
    495c:	00008025 	move	s0,zero
    4960:	1720000c 	bnez	t9,4994 <func_808CF448+0x30c>
    4964:	00002025 	move	a0,zero
    4968:	0c000000 	jal	0 <func_808CADC0>
    496c:	240500c8 	li	a1,200
    4970:	02504021 	addu	t0,s2,s0
    4974:	26100001 	addiu	s0,s0,1
    4978:	00108400 	sll	s0,s0,0x10
    497c:	00108403 	sra	s0,s0,0x10
    4980:	2a010012 	slti	at,s0,18
    4984:	1420fff7 	bnez	at,4964 <func_808CF448+0x2dc>
    4988:	a1020a61 	sb	v0,2657(t0)
    498c:	24090001 	li	t1,1
    4990:	a2490a60 	sb	t1,2656(s2)
    4994:	8622002c 	lh	v0,44(s1)
    4998:	54400029 	bnezl	v0,4a40 <func_808CF448+0x3b8>
    499c:	c6300030 	lwc1	$f16,48(s1)
    49a0:	c6220030 	lwc1	$f2,48(s1)
    49a4:	4616103c 	c.lt.s	$f2,$f22
    49a8:	00000000 	nop
    49ac:	45020009 	bc1fl	49d4 <func_808CF448+0x34c>
    49b0:	3c014302 	lui	at,0x4302
    49b4:	c6200034 	lwc1	$f0,52(s1)
    49b8:	3c010000 	lui	at,0x0
    49bc:	46001280 	add.s	$f10,$f2,$f0
    49c0:	e62a0030 	swc1	$f10,48(s1)
    49c4:	c4300000 	lwc1	$f16,0(at)
    49c8:	46100480 	add.s	$f18,$f0,$f16
    49cc:	e6320034 	swc1	$f18,52(s1)
    49d0:	3c014302 	lui	at,0x4302
    49d4:	44813000 	mtc1	at,$f6
    49d8:	c6240038 	lwc1	$f4,56(s1)
    49dc:	c62a0004 	lwc1	$f10,4(s1)
    49e0:	46062200 	add.s	$f8,$f4,$f6
    49e4:	4608503e 	c.le.s	$f10,$f8
    49e8:	00000000 	nop
    49ec:	45030006 	bc1tl	4a08 <func_808CF448+0x380>
    49f0:	c630000c 	lwc1	$f16,12(s1)
    49f4:	922a0025 	lbu	t2,37(s1)
    49f8:	2941000a 	slti	at,t2,10
    49fc:	54200022 	bnezl	at,4a88 <func_808CF448+0x400>
    4a00:	26730001 	addiu	s3,s3,1
    4a04:	c630000c 	lwc1	$f16,12(s1)
    4a08:	c6260014 	lwc1	$f6,20(s1)
    4a0c:	862b002c 	lh	t3,44(s1)
    4a10:	461c8482 	mul.s	$f18,$f16,$f28
    4a14:	e638001c 	swc1	$f24,28(s1)
    4a18:	256c0001 	addiu	t4,t3,1
    4a1c:	461c3202 	mul.s	$f8,$f6,$f28
    4a20:	a62c002c 	sh	t4,44(s1)
    4a24:	e63a0010 	swc1	$f26,16(s1)
    4a28:	46149103 	div.s	$f4,$f18,$f20
    4a2c:	46144283 	div.s	$f10,$f8,$f20
    4a30:	e6240018 	swc1	$f4,24(s1)
    4a34:	10000013 	b	4a84 <func_808CF448+0x3fc>
    4a38:	e62a0020 	swc1	$f10,32(s1)
    4a3c:	c6300030 	lwc1	$f16,48(s1)
    4a40:	4616803c 	c.lt.s	$f16,$f22
    4a44:	00000000 	nop
    4a48:	45020008 	bc1fl	4a6c <func_808CF448+0x3e4>
    4a4c:	244d0001 	addiu	t5,v0,1
    4a50:	4405b000 	mfc1	a1,$f22
    4a54:	4406f000 	mfc1	a2,$f30
    4a58:	4407f000 	mfc1	a3,$f30
    4a5c:	0c000000 	jal	0 <func_808CADC0>
    4a60:	26240030 	addiu	a0,s1,48
    4a64:	8622002c 	lh	v0,44(s1)
    4a68:	244d0001 	addiu	t5,v0,1
    4a6c:	a62d002c 	sh	t5,44(s1)
    4a70:	862e002c 	lh	t6,44(s1)
    4a74:	29c10009 	slti	at,t6,9
    4a78:	54200003 	bnezl	at,4a88 <func_808CF448+0x400>
    4a7c:	26730001 	addiu	s3,s3,1
    4a80:	a2200024 	sb	zero,36(s1)
    4a84:	26730001 	addiu	s3,s3,1
    4a88:	00139c00 	sll	s3,s3,0x10
    4a8c:	00139c03 	sra	s3,s3,0x10
    4a90:	2a6100b4 	slti	at,s3,180
    4a94:	1420ff24 	bnez	at,4728 <func_808CF448+0xa0>
    4a98:	2631003c 	addiu	s1,s1,60
    4a9c:	8fbf0064 	lw	ra,100(sp)
    4aa0:	d7b40018 	ldc1	$f20,24(sp)
    4aa4:	d7b60020 	ldc1	$f22,32(sp)
    4aa8:	d7b80028 	ldc1	$f24,40(sp)
    4aac:	d7ba0030 	ldc1	$f26,48(sp)
    4ab0:	d7bc0038 	ldc1	$f28,56(sp)
    4ab4:	d7be0040 	ldc1	$f30,64(sp)
    4ab8:	8fb0004c 	lw	s0,76(sp)
    4abc:	8fb10050 	lw	s1,80(sp)
    4ac0:	8fb20054 	lw	s2,84(sp)
    4ac4:	8fb30058 	lw	s3,88(sp)
    4ac8:	8fb4005c 	lw	s4,92(sp)
    4acc:	8fb50060 	lw	s5,96(sp)
    4ad0:	03e00008 	jr	ra
    4ad4:	27bd00a0 	addiu	sp,sp,160

00004ad8 <func_808CF898>:
    4ad8:	27bdff28 	addiu	sp,sp,-216
    4adc:	afbf0044 	sw	ra,68(sp)
    4ae0:	afbe0040 	sw	s8,64(sp)
    4ae4:	afb7003c 	sw	s7,60(sp)
    4ae8:	afb60038 	sw	s6,56(sp)
    4aec:	afb50034 	sw	s5,52(sp)
    4af0:	afb40030 	sw	s4,48(sp)
    4af4:	afb3002c 	sw	s3,44(sp)
    4af8:	afb20028 	sw	s2,40(sp)
    4afc:	afb10024 	sw	s1,36(sp)
    4b00:	afb00020 	sw	s0,32(sp)
    4b04:	f7b40018 	sdc1	$f20,24(sp)
    4b08:	8cb00000 	lw	s0,0(a1)
    4b0c:	00808825 	move	s1,a0
    4b10:	00a0f025 	move	s8,a1
    4b14:	afa400c8 	sw	a0,200(sp)
    4b18:	3c060000 	lui	a2,0x0
    4b1c:	0000a825 	move	s5,zero
    4b20:	24c60000 	addiu	a2,a2,0
    4b24:	27a400b4 	addiu	a0,sp,180
    4b28:	24070fb7 	li	a3,4023
    4b2c:	0c000000 	jal	0 <func_808CADC0>
    4b30:	02002825 	move	a1,s0
    4b34:	3c013f80 	lui	at,0x3f80
    4b38:	4481a000 	mtc1	at,$f20
    4b3c:	0000a025 	move	s4,zero
    4b40:	24170001 	li	s7,1
    4b44:	3c16de00 	lui	s6,0xde00
    4b48:	922e0024 	lbu	t6,36(s1)
    4b4c:	3c010001 	lui	at,0x1
    4b50:	34211da0 	ori	at,at,0x1da0
    4b54:	16ee0041 	bne	s7,t6,4c5c <func_808CF898+0x184>
    4b58:	03c19821 	addu	s3,s8,at
    4b5c:	3c0f0601 	lui	t7,0x601
    4b60:	25efa900 	addiu	t7,t7,-22272
    4b64:	16a0000c 	bnez	s5,4b98 <func_808CF898+0xc0>
    4b68:	afaf0050 	sw	t7,80(sp)
    4b6c:	3c120601 	lui	s2,0x601
    4b70:	2652a880 	addiu	s2,s2,-22400
    4b74:	0c000000 	jal	0 <func_808CADC0>
    4b78:	8fc40000 	lw	a0,0(s8)
    4b7c:	8e0202d0 	lw	v0,720(s0)
    4b80:	26b50001 	addiu	s5,s5,1
    4b84:	32b500ff 	andi	s5,s5,0xff
    4b88:	24580008 	addiu	t8,v0,8
    4b8c:	ae1802d0 	sw	t8,720(s0)
    4b90:	ac520004 	sw	s2,4(v0)
    4b94:	ac560000 	sw	s6,0(v0)
    4b98:	8e0202d0 	lw	v0,720(s0)
    4b9c:	3c08fa00 	lui	t0,0xfa00
    4ba0:	00003825 	move	a3,zero
    4ba4:	24590008 	addiu	t9,v0,8
    4ba8:	ae1902d0 	sw	t9,720(s0)
    4bac:	ac480000 	sw	t0,0(v0)
    4bb0:	922a0026 	lbu	t2,38(s1)
    4bb4:	922d0027 	lbu	t5,39(s1)
    4bb8:	92390028 	lbu	t9,40(s1)
    4bbc:	000a5e00 	sll	t3,t2,0x18
    4bc0:	862a002a 	lh	t2,42(s1)
    4bc4:	000d7400 	sll	t6,t5,0x10
    4bc8:	016e7825 	or	t7,t3,t6
    4bcc:	00194200 	sll	t0,t9,0x8
    4bd0:	01e84825 	or	t1,t7,t0
    4bd4:	314c00ff 	andi	t4,t2,0xff
    4bd8:	012c6825 	or	t5,t1,t4
    4bdc:	ac4d0004 	sw	t5,4(v0)
    4be0:	8e260008 	lw	a2,8(s1)
    4be4:	c62e0004 	lwc1	$f14,4(s1)
    4be8:	0c000000 	jal	0 <func_808CADC0>
    4bec:	c62c0000 	lwc1	$f12,0(s1)
    4bf0:	0c000000 	jal	0 <func_808CADC0>
    4bf4:	02602025 	move	a0,s3
    4bf8:	c62c0030 	lwc1	$f12,48(s1)
    4bfc:	4406a000 	mfc1	a2,$f20
    4c00:	24070001 	li	a3,1
    4c04:	0c000000 	jal	0 <func_808CADC0>
    4c08:	46006386 	mov.s	$f14,$f12
    4c0c:	8e0202d0 	lw	v0,720(s0)
    4c10:	3c0eda38 	lui	t6,0xda38
    4c14:	35ce0003 	ori	t6,t6,0x3
    4c18:	244b0008 	addiu	t3,v0,8
    4c1c:	ae0b02d0 	sw	t3,720(s0)
    4c20:	3c050000 	lui	a1,0x0
    4c24:	ac4e0000 	sw	t6,0(v0)
    4c28:	24a50000 	addiu	a1,a1,0
    4c2c:	02002025 	move	a0,s0
    4c30:	24060fce 	li	a2,4046
    4c34:	0c000000 	jal	0 <func_808CADC0>
    4c38:	afa200a8 	sw	v0,168(sp)
    4c3c:	8fa300a8 	lw	v1,168(sp)
    4c40:	ac620004 	sw	v0,4(v1)
    4c44:	8e0202d0 	lw	v0,720(s0)
    4c48:	24580008 	addiu	t8,v0,8
    4c4c:	ae1802d0 	sw	t8,720(s0)
    4c50:	ac560000 	sw	s6,0(v0)
    4c54:	8fb90050 	lw	t9,80(sp)
    4c58:	ac590004 	sw	t9,4(v0)
    4c5c:	26940001 	addiu	s4,s4,1
    4c60:	0014a400 	sll	s4,s4,0x10
    4c64:	0014a403 	sra	s4,s4,0x10
    4c68:	2a8100b4 	slti	at,s4,180
    4c6c:	1420ffb6 	bnez	at,4b48 <func_808CF898+0x70>
    4c70:	2631003c 	addiu	s1,s1,60
    4c74:	0000a825 	move	s5,zero
    4c78:	8fb100c8 	lw	s1,200(sp)
    4c7c:	0000a025 	move	s4,zero
    4c80:	24170002 	li	s7,2
    4c84:	922f0024 	lbu	t7,36(s1)
    4c88:	3c130601 	lui	s3,0x601
    4c8c:	56ef0032 	bnel	s7,t7,4d58 <func_808CF898+0x280>
    4c90:	26940001 	addiu	s4,s4,1
    4c94:	16a0000c 	bnez	s5,4cc8 <func_808CF898+0x1f0>
    4c98:	2673d420 	addiu	s3,s3,-11232
    4c9c:	3c120601 	lui	s2,0x601
    4ca0:	2652d3a0 	addiu	s2,s2,-11360
    4ca4:	0c000000 	jal	0 <func_808CADC0>
    4ca8:	8fc40000 	lw	a0,0(s8)
    4cac:	8e0202c0 	lw	v0,704(s0)
    4cb0:	26b50001 	addiu	s5,s5,1
    4cb4:	32b500ff 	andi	s5,s5,0xff
    4cb8:	24480008 	addiu	t0,v0,8
    4cbc:	ae0802c0 	sw	t0,704(s0)
    4cc0:	ac520004 	sw	s2,4(v0)
    4cc4:	ac560000 	sw	s6,0(v0)
    4cc8:	c62c0000 	lwc1	$f12,0(s1)
    4ccc:	c62e0004 	lwc1	$f14,4(s1)
    4cd0:	8e260008 	lw	a2,8(s1)
    4cd4:	0c000000 	jal	0 <func_808CADC0>
    4cd8:	00003825 	move	a3,zero
    4cdc:	c62c0038 	lwc1	$f12,56(s1)
    4ce0:	0c000000 	jal	0 <func_808CADC0>
    4ce4:	24050001 	li	a1,1
    4ce8:	c62c0034 	lwc1	$f12,52(s1)
    4cec:	0c000000 	jal	0 <func_808CADC0>
    4cf0:	24050001 	li	a1,1
    4cf4:	c62c0030 	lwc1	$f12,48(s1)
    4cf8:	4406a000 	mfc1	a2,$f20
    4cfc:	24070001 	li	a3,1
    4d00:	0c000000 	jal	0 <func_808CADC0>
    4d04:	46006386 	mov.s	$f14,$f12
    4d08:	8e0202c0 	lw	v0,704(s0)
    4d0c:	3c09da38 	lui	t1,0xda38
    4d10:	35290003 	ori	t1,t1,0x3
    4d14:	244a0008 	addiu	t2,v0,8
    4d18:	ae0a02c0 	sw	t2,704(s0)
    4d1c:	3c050000 	lui	a1,0x0
    4d20:	ac490000 	sw	t1,0(v0)
    4d24:	24a50000 	addiu	a1,a1,0
    4d28:	02002025 	move	a0,s0
    4d2c:	24060fe4 	li	a2,4068
    4d30:	0c000000 	jal	0 <func_808CADC0>
    4d34:	afa2009c 	sw	v0,156(sp)
    4d38:	8fa3009c 	lw	v1,156(sp)
    4d3c:	ac620004 	sw	v0,4(v1)
    4d40:	8e0202c0 	lw	v0,704(s0)
    4d44:	244c0008 	addiu	t4,v0,8
    4d48:	ae0c02c0 	sw	t4,704(s0)
    4d4c:	ac530004 	sw	s3,4(v0)
    4d50:	ac560000 	sw	s6,0(v0)
    4d54:	26940001 	addiu	s4,s4,1
    4d58:	0014a400 	sll	s4,s4,0x10
    4d5c:	0014a403 	sra	s4,s4,0x10
    4d60:	2a8100b4 	slti	at,s4,180
    4d64:	1420ffc7 	bnez	at,4c84 <func_808CF898+0x1ac>
    4d68:	2631003c 	addiu	s1,s1,60
    4d6c:	0000a825 	move	s5,zero
    4d70:	8fb100c8 	lw	s1,200(sp)
    4d74:	0000a025 	move	s4,zero
    4d78:	922d0024 	lbu	t5,36(s1)
    4d7c:	24010003 	li	at,3
    4d80:	3c170601 	lui	s7,0x601
    4d84:	15a10057 	bne	t5,at,4ee4 <func_808CF898+0x40c>
    4d88:	26f7b3c8 	addiu	s7,s7,-19512
    4d8c:	3c010001 	lui	at,0x1
    4d90:	34211da0 	ori	at,at,0x1da0
    4d94:	16a0001c 	bnez	s5,4e08 <func_808CF898+0x330>
    4d98:	03c19821 	addu	s3,s8,at
    4d9c:	3c120601 	lui	s2,0x601
    4da0:	2652b3a8 	addiu	s2,s2,-19544
    4da4:	8e0402d0 	lw	a0,720(s0)
    4da8:	0c000000 	jal	0 <func_808CADC0>
    4dac:	00002825 	move	a1,zero
    4db0:	ae0202d0 	sw	v0,720(s0)
    4db4:	244b0008 	addiu	t3,v0,8
    4db8:	ae0b02d0 	sw	t3,720(s0)
    4dbc:	ac520004 	sw	s2,4(v0)
    4dc0:	ac560000 	sw	s6,0(v0)
    4dc4:	8e0202d0 	lw	v0,720(s0)
    4dc8:	3c195a1e 	lui	t9,0x5a1e
    4dcc:	373900ff 	ori	t9,t9,0xff
    4dd0:	244e0008 	addiu	t6,v0,8
    4dd4:	ae0e02d0 	sw	t6,720(s0)
    4dd8:	3c18fa00 	lui	t8,0xfa00
    4ddc:	ac580000 	sw	t8,0(v0)
    4de0:	ac590004 	sw	t9,4(v0)
    4de4:	8e0202d0 	lw	v0,720(s0)
    4de8:	3c08fb00 	lui	t0,0xfb00
    4dec:	3c0a5a1e 	lui	t2,0x5a1e
    4df0:	244f0008 	addiu	t7,v0,8
    4df4:	ae0f02d0 	sw	t7,720(s0)
    4df8:	26b50001 	addiu	s5,s5,1
    4dfc:	32b500ff 	andi	s5,s5,0xff
    4e00:	ac4a0004 	sw	t2,4(v0)
    4e04:	ac480000 	sw	t0,0(v0)
    4e08:	c62c0000 	lwc1	$f12,0(s1)
    4e0c:	c62e0004 	lwc1	$f14,4(s1)
    4e10:	8e260008 	lw	a2,8(s1)
    4e14:	0c000000 	jal	0 <func_808CADC0>
    4e18:	00003825 	move	a3,zero
    4e1c:	c62c0030 	lwc1	$f12,48(s1)
    4e20:	24070001 	li	a3,1
    4e24:	44066000 	mfc1	a2,$f12
    4e28:	0c000000 	jal	0 <func_808CADC0>
    4e2c:	46006386 	mov.s	$f14,$f12
    4e30:	0c000000 	jal	0 <func_808CADC0>
    4e34:	02602025 	move	a0,s3
    4e38:	8e0202d0 	lw	v0,720(s0)
    4e3c:	3c0cda38 	lui	t4,0xda38
    4e40:	358c0003 	ori	t4,t4,0x3
    4e44:	24490008 	addiu	t1,v0,8
    4e48:	ae0902d0 	sw	t1,720(s0)
    4e4c:	3c050000 	lui	a1,0x0
    4e50:	ac4c0000 	sw	t4,0(v0)
    4e54:	24a50000 	addiu	a1,a1,0
    4e58:	02002025 	move	a0,s0
    4e5c:	24061008 	li	a2,4104
    4e60:	0c000000 	jal	0 <func_808CADC0>
    4e64:	afa20088 	sw	v0,136(sp)
    4e68:	8fa30088 	lw	v1,136(sp)
    4e6c:	3c0bdb06 	lui	t3,0xdb06
    4e70:	356b0020 	ori	t3,t3,0x20
    4e74:	ac620004 	sw	v0,4(v1)
    4e78:	8e0202d0 	lw	v0,720(s0)
    4e7c:	3c040000 	lui	a0,0x0
    4e80:	3c090000 	lui	t1,0x0
    4e84:	244d0008 	addiu	t5,v0,8
    4e88:	ae0d02d0 	sw	t5,720(s0)
    4e8c:	ac4b0000 	sw	t3,0(v0)
    4e90:	862e002c 	lh	t6,44(s1)
    4e94:	3c0100ff 	lui	at,0xff
    4e98:	3421ffff 	ori	at,at,0xffff
    4e9c:	000ec080 	sll	t8,t6,0x2
    4ea0:	00982021 	addu	a0,a0,t8
    4ea4:	8c840000 	lw	a0,0(a0)
    4ea8:	00047900 	sll	t7,a0,0x4
    4eac:	000f4702 	srl	t0,t7,0x1c
    4eb0:	00085080 	sll	t2,t0,0x2
    4eb4:	012a4821 	addu	t1,t1,t2
    4eb8:	8d290000 	lw	t1,0(t1)
    4ebc:	0081c824 	and	t9,a0,at
    4ec0:	3c018000 	lui	at,0x8000
    4ec4:	03296021 	addu	t4,t9,t1
    4ec8:	01816821 	addu	t5,t4,at
    4ecc:	ac4d0004 	sw	t5,4(v0)
    4ed0:	8e0202d0 	lw	v0,720(s0)
    4ed4:	244b0008 	addiu	t3,v0,8
    4ed8:	ae0b02d0 	sw	t3,720(s0)
    4edc:	ac570004 	sw	s7,4(v0)
    4ee0:	ac560000 	sw	s6,0(v0)
    4ee4:	26940001 	addiu	s4,s4,1
    4ee8:	0014a400 	sll	s4,s4,0x10
    4eec:	0014a403 	sra	s4,s4,0x10
    4ef0:	2a8100b4 	slti	at,s4,180
    4ef4:	1420ffa0 	bnez	at,4d78 <func_808CF898+0x2a0>
    4ef8:	2631003c 	addiu	s1,s1,60
    4efc:	0000a825 	move	s5,zero
    4f00:	8fb100c8 	lw	s1,200(sp)
    4f04:	0000a025 	move	s4,zero
    4f08:	922e0024 	lbu	t6,36(s1)
    4f0c:	24010004 	li	at,4
    4f10:	3c170601 	lui	s7,0x601
    4f14:	15c1005a 	bne	t6,at,5080 <func_808CF898+0x5a8>
    4f18:	26f7b3c8 	addiu	s7,s7,-19512
    4f1c:	3c010001 	lui	at,0x1
    4f20:	34211da0 	ori	at,at,0x1da0
    4f24:	16a00015 	bnez	s5,4f7c <func_808CF898+0x4a4>
    4f28:	03c19821 	addu	s3,s8,at
    4f2c:	3c120601 	lui	s2,0x601
    4f30:	2652b3a8 	addiu	s2,s2,-19544
    4f34:	8e0402d0 	lw	a0,720(s0)
    4f38:	0c000000 	jal	0 <func_808CADC0>
    4f3c:	00002825 	move	a1,zero
    4f40:	ae0202d0 	sw	v0,720(s0)
    4f44:	24580008 	addiu	t8,v0,8
    4f48:	ae1802d0 	sw	t8,720(s0)
    4f4c:	ac520004 	sw	s2,4(v0)
    4f50:	ac560000 	sw	s6,0(v0)
    4f54:	8e0202d0 	lw	v0,720(s0)
    4f58:	3c0aff0a 	lui	t2,0xff0a
    4f5c:	354a00ff 	ori	t2,t2,0xff
    4f60:	244f0008 	addiu	t7,v0,8
    4f64:	ae0f02d0 	sw	t7,720(s0)
    4f68:	3c08fb00 	lui	t0,0xfb00
    4f6c:	26b50001 	addiu	s5,s5,1
    4f70:	32b500ff 	andi	s5,s5,0xff
    4f74:	ac480000 	sw	t0,0(v0)
    4f78:	ac4a0004 	sw	t2,4(v0)
    4f7c:	8e0202d0 	lw	v0,720(s0)
    4f80:	3c09fa00 	lui	t1,0xfa00
    4f84:	3c01ffff 	lui	at,0xffff
    4f88:	24590008 	addiu	t9,v0,8
    4f8c:	ae1902d0 	sw	t9,720(s0)
    4f90:	ac490000 	sw	t1,0(v0)
    4f94:	862c002a 	lh	t4,42(s1)
    4f98:	00003825 	move	a3,zero
    4f9c:	318d00ff 	andi	t5,t4,0xff
    4fa0:	01a15825 	or	t3,t5,at
    4fa4:	ac4b0004 	sw	t3,4(v0)
    4fa8:	8e260008 	lw	a2,8(s1)
    4fac:	c62e0004 	lwc1	$f14,4(s1)
    4fb0:	0c000000 	jal	0 <func_808CADC0>
    4fb4:	c62c0000 	lwc1	$f12,0(s1)
    4fb8:	c62c0030 	lwc1	$f12,48(s1)
    4fbc:	24070001 	li	a3,1
    4fc0:	44066000 	mfc1	a2,$f12
    4fc4:	0c000000 	jal	0 <func_808CADC0>
    4fc8:	46006386 	mov.s	$f14,$f12
    4fcc:	0c000000 	jal	0 <func_808CADC0>
    4fd0:	02602025 	move	a0,s3
    4fd4:	8e0202d0 	lw	v0,720(s0)
    4fd8:	3c18da38 	lui	t8,0xda38
    4fdc:	37180003 	ori	t8,t8,0x3
    4fe0:	244e0008 	addiu	t6,v0,8
    4fe4:	ae0e02d0 	sw	t6,720(s0)
    4fe8:	3c050000 	lui	a1,0x0
    4fec:	ac580000 	sw	t8,0(v0)
    4ff0:	24a50000 	addiu	a1,a1,0
    4ff4:	02002025 	move	a0,s0
    4ff8:	2406103a 	li	a2,4154
    4ffc:	0c000000 	jal	0 <func_808CADC0>
    5000:	afa20070 	sw	v0,112(sp)
    5004:	8fa30070 	lw	v1,112(sp)
    5008:	3c08db06 	lui	t0,0xdb06
    500c:	35080020 	ori	t0,t0,0x20
    5010:	ac620004 	sw	v0,4(v1)
    5014:	8e0202d0 	lw	v0,720(s0)
    5018:	3c040000 	lui	a0,0x0
    501c:	3c0e0000 	lui	t6,0x0
    5020:	244f0008 	addiu	t7,v0,8
    5024:	ae0f02d0 	sw	t7,720(s0)
    5028:	ac480000 	sw	t0,0(v0)
    502c:	862a002c 	lh	t2,44(s1)
    5030:	3c0100ff 	lui	at,0xff
    5034:	3421ffff 	ori	at,at,0xffff
    5038:	000ac880 	sll	t9,t2,0x2
    503c:	00992021 	addu	a0,a0,t9
    5040:	8c840000 	lw	a0,0(a0)
    5044:	00046100 	sll	t4,a0,0x4
    5048:	000c6f02 	srl	t5,t4,0x1c
    504c:	000d5880 	sll	t3,t5,0x2
    5050:	01cb7021 	addu	t6,t6,t3
    5054:	8dce0000 	lw	t6,0(t6)
    5058:	00814824 	and	t1,a0,at
    505c:	3c018000 	lui	at,0x8000
    5060:	012ec021 	addu	t8,t1,t6
    5064:	03017821 	addu	t7,t8,at
    5068:	ac4f0004 	sw	t7,4(v0)
    506c:	8e0202d0 	lw	v0,720(s0)
    5070:	24480008 	addiu	t0,v0,8
    5074:	ae0802d0 	sw	t0,720(s0)
    5078:	ac570004 	sw	s7,4(v0)
    507c:	ac560000 	sw	s6,0(v0)
    5080:	26940001 	addiu	s4,s4,1
    5084:	0014a400 	sll	s4,s4,0x10
    5088:	0014a403 	sra	s4,s4,0x10
    508c:	2a8100b4 	slti	at,s4,180
    5090:	1420ff9d 	bnez	at,4f08 <func_808CF898+0x430>
    5094:	2631003c 	addiu	s1,s1,60
    5098:	0000a825 	move	s5,zero
    509c:	8fb100c8 	lw	s1,200(sp)
    50a0:	0000a025 	move	s4,zero
    50a4:	24170005 	li	s7,5
    50a8:	922a0024 	lbu	t2,36(s1)
    50ac:	3c130601 	lui	s3,0x601
    50b0:	56ea0032 	bnel	s7,t2,517c <func_808CF898+0x6a4>
    50b4:	26940001 	addiu	s4,s4,1
    50b8:	16a0000c 	bnez	s5,50ec <func_808CF898+0x614>
    50bc:	2673d6e8 	addiu	s3,s3,-10520
    50c0:	3c120601 	lui	s2,0x601
    50c4:	2652d668 	addiu	s2,s2,-10648
    50c8:	0c000000 	jal	0 <func_808CADC0>
    50cc:	8fc40000 	lw	a0,0(s8)
    50d0:	8e0202d0 	lw	v0,720(s0)
    50d4:	26b50001 	addiu	s5,s5,1
    50d8:	32b500ff 	andi	s5,s5,0xff
    50dc:	24590008 	addiu	t9,v0,8
    50e0:	ae1902d0 	sw	t9,720(s0)
    50e4:	ac520004 	sw	s2,4(v0)
    50e8:	ac560000 	sw	s6,0(v0)
    50ec:	c62c0000 	lwc1	$f12,0(s1)
    50f0:	c62e0004 	lwc1	$f14,4(s1)
    50f4:	8e260008 	lw	a2,8(s1)
    50f8:	0c000000 	jal	0 <func_808CADC0>
    50fc:	00003825 	move	a3,zero
    5100:	c62c0038 	lwc1	$f12,56(s1)
    5104:	0c000000 	jal	0 <func_808CADC0>
    5108:	24050001 	li	a1,1
    510c:	c62c0034 	lwc1	$f12,52(s1)
    5110:	0c000000 	jal	0 <func_808CADC0>
    5114:	24050001 	li	a1,1
    5118:	c62c0030 	lwc1	$f12,48(s1)
    511c:	4406a000 	mfc1	a2,$f20
    5120:	24070001 	li	a3,1
    5124:	0c000000 	jal	0 <func_808CADC0>
    5128:	46006386 	mov.s	$f14,$f12
    512c:	8e0202d0 	lw	v0,720(s0)
    5130:	3c0dda38 	lui	t5,0xda38
    5134:	35ad0003 	ori	t5,t5,0x3
    5138:	244c0008 	addiu	t4,v0,8
    513c:	ae0c02d0 	sw	t4,720(s0)
    5140:	3c050000 	lui	a1,0x0
    5144:	ac4d0000 	sw	t5,0(v0)
    5148:	24a50000 	addiu	a1,a1,0
    514c:	02002025 	move	a0,s0
    5150:	24061060 	li	a2,4192
    5154:	0c000000 	jal	0 <func_808CADC0>
    5158:	afa20060 	sw	v0,96(sp)
    515c:	8fa30060 	lw	v1,96(sp)
    5160:	ac620004 	sw	v0,4(v1)
    5164:	8e0202d0 	lw	v0,720(s0)
    5168:	244b0008 	addiu	t3,v0,8
    516c:	ae0b02d0 	sw	t3,720(s0)
    5170:	ac530004 	sw	s3,4(v0)
    5174:	ac560000 	sw	s6,0(v0)
    5178:	26940001 	addiu	s4,s4,1
    517c:	0014a400 	sll	s4,s4,0x10
    5180:	0014a403 	sra	s4,s4,0x10
    5184:	2a8100b4 	slti	at,s4,180
    5188:	1420ffc7 	bnez	at,50a8 <func_808CF898+0x5d0>
    518c:	2631003c 	addiu	s1,s1,60
    5190:	3c060000 	lui	a2,0x0
    5194:	24c60000 	addiu	a2,a2,0
    5198:	27a400b4 	addiu	a0,sp,180
    519c:	02002825 	move	a1,s0
    51a0:	0c000000 	jal	0 <func_808CADC0>
    51a4:	24071066 	li	a3,4198
    51a8:	8fbf0044 	lw	ra,68(sp)
    51ac:	d7b40018 	ldc1	$f20,24(sp)
    51b0:	8fb00020 	lw	s0,32(sp)
    51b4:	8fb10024 	lw	s1,36(sp)
    51b8:	8fb20028 	lw	s2,40(sp)
    51bc:	8fb3002c 	lw	s3,44(sp)
    51c0:	8fb40030 	lw	s4,48(sp)
    51c4:	8fb50034 	lw	s5,52(sp)
    51c8:	8fb60038 	lw	s6,56(sp)
    51cc:	8fb7003c 	lw	s7,60(sp)
    51d0:	8fbe0040 	lw	s8,64(sp)
    51d4:	03e00008 	jr	ra
    51d8:	27bd00d8 	addiu	sp,sp,216

000051dc <BossFd_Draw>:
    51dc:	27bdffb0 	addiu	sp,sp,-80
    51e0:	afa40050 	sw	a0,80(sp)
    51e4:	afbf002c 	sw	ra,44(sp)
    51e8:	afb10028 	sw	s1,40(sp)
    51ec:	3c040000 	lui	a0,0x0
    51f0:	00a08825 	move	s1,a1
    51f4:	afb00024 	sw	s0,36(sp)
    51f8:	0c000000 	jal	0 <func_808CADC0>
    51fc:	24840000 	addiu	a0,a0,0
    5200:	8faf0050 	lw	t7,80(sp)
    5204:	3c0e0000 	lui	t6,0x0
    5208:	25ce0000 	addiu	t6,t6,0
    520c:	8df80218 	lw	t8,536(t7)
    5210:	3c060000 	lui	a2,0x0
    5214:	24c60000 	addiu	a2,a2,0
    5218:	11d80023 	beq	t6,t8,52a8 <BossFd_Draw+0xcc>
    521c:	27a40034 	addiu	a0,sp,52
    5220:	8e250000 	lw	a1,0(s1)
    5224:	24071079 	li	a3,4217
    5228:	0c000000 	jal	0 <func_808CADC0>
    522c:	00a08025 	move	s0,a1
    5230:	0c000000 	jal	0 <func_808CADC0>
    5234:	8e240000 	lw	a0,0(s1)
    5238:	8fb90050 	lw	t9,80(sp)
    523c:	240500ff 	li	a1,255
    5240:	240600ff 	li	a2,255
    5244:	87280230 	lh	t0,560(t9)
    5248:	240700ff 	li	a3,255
    524c:	240a0384 	li	t2,900
    5250:	31090002 	andi	t1,t0,0x2
    5254:	11200007 	beqz	t1,5274 <BossFd_Draw+0x98>
    5258:	240b044b 	li	t3,1099
    525c:	8e0402c0 	lw	a0,704(s0)
    5260:	afab0018 	sw	t3,24(sp)
    5264:	afaa0014 	sw	t2,20(sp)
    5268:	0c000000 	jal	0 <func_808CADC0>
    526c:	afa00010 	sw	zero,16(sp)
    5270:	ae0202c0 	sw	v0,704(s0)
    5274:	02202025 	move	a0,s1
    5278:	0c000000 	jal	0 <func_808CADC0>
    527c:	8fa50050 	lw	a1,80(sp)
    5280:	02202025 	move	a0,s1
    5284:	0c000000 	jal	0 <func_808CADC0>
    5288:	8e0502c0 	lw	a1,704(s0)
    528c:	ae0202c0 	sw	v0,704(s0)
    5290:	3c060000 	lui	a2,0x0
    5294:	24c60000 	addiu	a2,a2,0
    5298:	8e250000 	lw	a1,0(s1)
    529c:	27a40034 	addiu	a0,sp,52
    52a0:	0c000000 	jal	0 <func_808CADC0>
    52a4:	24071093 	li	a3,4243
    52a8:	3c040000 	lui	a0,0x0
    52ac:	0c000000 	jal	0 <func_808CADC0>
    52b0:	24840000 	addiu	a0,a0,0
    52b4:	8fa40050 	lw	a0,80(sp)
    52b8:	02202825 	move	a1,s1
    52bc:	0c000000 	jal	0 <func_808CADC0>
    52c0:	24841970 	addiu	a0,a0,6512
    52c4:	3c040000 	lui	a0,0x0
    52c8:	0c000000 	jal	0 <func_808CADC0>
    52cc:	24840000 	addiu	a0,a0,0
    52d0:	8fbf002c 	lw	ra,44(sp)
    52d4:	8fb00024 	lw	s0,36(sp)
    52d8:	8fb10028 	lw	s1,40(sp)
    52dc:	03e00008 	jr	ra
    52e0:	27bd0050 	addiu	sp,sp,80

000052e4 <func_808D00A4>:
    52e4:	24010001 	li	at,1
    52e8:	afa40000 	sw	a0,0(sp)
    52ec:	10a10009 	beq	a1,at,5314 <func_808D00A4+0x30>
    52f0:	afa7000c 	sw	a3,12(sp)
    52f4:	24010002 	li	at,2
    52f8:	10a10014 	beq	a1,at,534c <func_808D00A4+0x68>
    52fc:	8fa30010 	lw	v1,16(sp)
    5300:	24010003 	li	at,3
    5304:	10a10024 	beq	a1,at,5398 <func_808D00A4+0xb4>
    5308:	8fa30010 	lw	v1,16(sp)
    530c:	10000035 	b	53e4 <func_808D00A4+0x100>
    5310:	8fa20014 	lw	v0,20(sp)
    5314:	8fa30010 	lw	v1,16(sp)
    5318:	8fa20014 	lw	v0,20(sp)
    531c:	3c01457a 	lui	at,0x457a
    5320:	846e0002 	lh	t6,2(v1)
    5324:	44812000 	mtc1	at,$f4
    5328:	c4460c3c 	lwc1	$f6,3132(v0)
    532c:	448e5000 	mtc1	t6,$f10
    5330:	46062200 	add.s	$f8,$f4,$f6
    5334:	46805420 	cvt.s.w	$f16,$f10
    5338:	46088480 	add.s	$f18,$f16,$f8
    533c:	4600910d 	trunc.w.s	$f4,$f18
    5340:	44182000 	mfc1	t8,$f4
    5344:	10000027 	b	53e4 <func_808D00A4+0x100>
    5348:	a4780002 	sh	t8,2(v1)
    534c:	84790002 	lh	t9,2(v1)
    5350:	8fa20014 	lw	v0,20(sp)
    5354:	846a0004 	lh	t2,4(v1)
    5358:	44993000 	mtc1	t9,$f6
    535c:	c4500c48 	lwc1	$f16,3144(v0)
    5360:	448a2000 	mtc1	t2,$f4
    5364:	468032a0 	cvt.s.w	$f10,$f6
    5368:	468021a0 	cvt.s.w	$f6,$f4
    536c:	46105200 	add.s	$f8,$f10,$f16
    5370:	4600448d 	trunc.w.s	$f18,$f8
    5374:	44099000 	mfc1	t1,$f18
    5378:	00000000 	nop
    537c:	a4690002 	sh	t1,2(v1)
    5380:	c44a0c4c 	lwc1	$f10,3148(v0)
    5384:	460a3400 	add.s	$f16,$f6,$f10
    5388:	4600820d 	trunc.w.s	$f8,$f16
    538c:	440c4000 	mfc1	t4,$f8
    5390:	10000014 	b	53e4 <func_808D00A4+0x100>
    5394:	a46c0004 	sh	t4,4(v1)
    5398:	846d0002 	lh	t5,2(v1)
    539c:	8fa20014 	lw	v0,20(sp)
    53a0:	84780004 	lh	t8,4(v1)
    53a4:	448d9000 	mtc1	t5,$f18
    53a8:	c4460c54 	lwc1	$f6,3156(v0)
    53ac:	44984000 	mtc1	t8,$f8
    53b0:	46809120 	cvt.s.w	$f4,$f18
    53b4:	468044a0 	cvt.s.w	$f18,$f8
    53b8:	46062280 	add.s	$f10,$f4,$f6
    53bc:	4600540d 	trunc.w.s	$f16,$f10
    53c0:	440f8000 	mfc1	t7,$f16
    53c4:	00000000 	nop
    53c8:	a46f0002 	sh	t7,2(v1)
    53cc:	c4440c58 	lwc1	$f4,3160(v0)
    53d0:	46049180 	add.s	$f6,$f18,$f4
    53d4:	4600328d 	trunc.w.s	$f10,$f6
    53d8:	44085000 	mfc1	t0,$f10
    53dc:	00000000 	nop
    53e0:	a4680004 	sh	t0,4(v1)
    53e4:	8449021e 	lh	t1,542(v0)
    53e8:	0125082a 	slt	at,t1,a1
    53ec:	10200002 	beqz	at,53f8 <func_808D00A4+0x114>
    53f0:	00000000 	nop
    53f4:	acc00000 	sw	zero,0(a2)
    53f8:	03e00008 	jr	ra
    53fc:	00001025 	move	v0,zero

00005400 <func_808D01C0>:
    5400:	24010001 	li	at,1
    5404:	afa40000 	sw	a0,0(sp)
    5408:	10a10009 	beq	a1,at,5430 <func_808D01C0+0x30>
    540c:	afa7000c 	sw	a3,12(sp)
    5410:	24010002 	li	at,2
    5414:	10a10014 	beq	a1,at,5468 <func_808D01C0+0x68>
    5418:	8fa30010 	lw	v1,16(sp)
    541c:	24010003 	li	at,3
    5420:	10a10024 	beq	a1,at,54b4 <func_808D01C0+0xb4>
    5424:	8fa30010 	lw	v1,16(sp)
    5428:	10000035 	b	5500 <func_808D01C0+0x100>
    542c:	8fa20014 	lw	v0,20(sp)
    5430:	8fa30010 	lw	v1,16(sp)
    5434:	8fa20014 	lw	v0,20(sp)
    5438:	3c01c57a 	lui	at,0xc57a
    543c:	846e0002 	lh	t6,2(v1)
    5440:	44812000 	mtc1	at,$f4
    5444:	c4460c6c 	lwc1	$f6,3180(v0)
    5448:	448e5000 	mtc1	t6,$f10
    544c:	46062200 	add.s	$f8,$f4,$f6
    5450:	46805420 	cvt.s.w	$f16,$f10
    5454:	46088480 	add.s	$f18,$f16,$f8
    5458:	4600910d 	trunc.w.s	$f4,$f18
    545c:	44182000 	mfc1	t8,$f4
    5460:	10000027 	b	5500 <func_808D01C0+0x100>
    5464:	a4780002 	sh	t8,2(v1)
    5468:	84790002 	lh	t9,2(v1)
    546c:	8fa20014 	lw	v0,20(sp)
    5470:	846a0004 	lh	t2,4(v1)
    5474:	44993000 	mtc1	t9,$f6
    5478:	c4500c78 	lwc1	$f16,3192(v0)
    547c:	448a2000 	mtc1	t2,$f4
    5480:	468032a0 	cvt.s.w	$f10,$f6
    5484:	468021a0 	cvt.s.w	$f6,$f4
    5488:	46105200 	add.s	$f8,$f10,$f16
    548c:	4600448d 	trunc.w.s	$f18,$f8
    5490:	44099000 	mfc1	t1,$f18
    5494:	00000000 	nop
    5498:	a4690002 	sh	t1,2(v1)
    549c:	c44a0c7c 	lwc1	$f10,3196(v0)
    54a0:	460a3400 	add.s	$f16,$f6,$f10
    54a4:	4600820d 	trunc.w.s	$f8,$f16
    54a8:	440c4000 	mfc1	t4,$f8
    54ac:	10000014 	b	5500 <func_808D01C0+0x100>
    54b0:	a46c0004 	sh	t4,4(v1)
    54b4:	846d0002 	lh	t5,2(v1)
    54b8:	8fa20014 	lw	v0,20(sp)
    54bc:	84780004 	lh	t8,4(v1)
    54c0:	448d9000 	mtc1	t5,$f18
    54c4:	c4460c84 	lwc1	$f6,3204(v0)
    54c8:	44984000 	mtc1	t8,$f8
    54cc:	46809120 	cvt.s.w	$f4,$f18
    54d0:	468044a0 	cvt.s.w	$f18,$f8
    54d4:	46062280 	add.s	$f10,$f4,$f6
    54d8:	4600540d 	trunc.w.s	$f16,$f10
    54dc:	440f8000 	mfc1	t7,$f16
    54e0:	00000000 	nop
    54e4:	a46f0002 	sh	t7,2(v1)
    54e8:	c4440c88 	lwc1	$f4,3208(v0)
    54ec:	46049180 	add.s	$f6,$f18,$f4
    54f0:	4600328d 	trunc.w.s	$f10,$f6
    54f4:	44085000 	mfc1	t0,$f10
    54f8:	00000000 	nop
    54fc:	a4680004 	sh	t0,4(v1)
    5500:	8449021e 	lh	t1,542(v0)
    5504:	0125082a 	slt	at,t1,a1
    5508:	10200002 	beqz	at,5514 <func_808D01C0+0x114>
    550c:	00000000 	nop
    5510:	acc00000 	sw	zero,0(a2)
    5514:	03e00008 	jr	ra
    5518:	00001025 	move	v0,zero

0000551c <func_808D02DC>:
    551c:	27bdfe98 	addiu	sp,sp,-360
    5520:	afb60060 	sw	s6,96(sp)
    5524:	3c0e0000 	lui	t6,0x0
    5528:	27b60140 	addiu	s6,sp,320
    552c:	afb70064 	sw	s7,100(sp)
    5530:	afb30054 	sw	s3,84(sp)
    5534:	25ce0000 	addiu	t6,t6,0
    5538:	00a09825 	move	s3,a1
    553c:	27b700c8 	addiu	s7,sp,200
    5540:	afbf006c 	sw	ra,108(sp)
    5544:	afbe0068 	sw	s8,104(sp)
    5548:	afb5005c 	sw	s5,92(sp)
    554c:	afb40058 	sw	s4,88(sp)
    5550:	afb20050 	sw	s2,80(sp)
    5554:	afb1004c 	sw	s1,76(sp)
    5558:	afb00048 	sw	s0,72(sp)
    555c:	f7be0040 	sdc1	$f30,64(sp)
    5560:	f7bc0038 	sdc1	$f28,56(sp)
    5564:	f7ba0030 	sdc1	$f26,48(sp)
    5568:	f7b80028 	sdc1	$f24,40(sp)
    556c:	f7b60020 	sdc1	$f22,32(sp)
    5570:	f7b40018 	sdc1	$f20,24(sp)
    5574:	afa40168 	sw	a0,360(sp)
    5578:	afa60170 	sw	a2,368(sp)
    557c:	afa70174 	sw	a3,372(sp)
    5580:	25c80024 	addiu	t0,t6,36
    5584:	02c0c825 	move	t9,s6
    5588:	8dd80000 	lw	t8,0(t6)
    558c:	25ce000c 	addiu	t6,t6,12
    5590:	2739000c 	addiu	t9,t9,12
    5594:	af38fff4 	sw	t8,-12(t9)
    5598:	8dcffff8 	lw	t7,-8(t6)
    559c:	af2ffff8 	sw	t7,-8(t9)
    55a0:	8dd8fffc 	lw	t8,-4(t6)
    55a4:	15c8fff8 	bne	t6,t0,5588 <func_808D02DC+0x6c>
    55a8:	af38fffc 	sw	t8,-4(t9)
    55ac:	8dd80000 	lw	t8,0(t6)
    55b0:	3c0a0000 	lui	t2,0x0
    55b4:	254a0000 	addiu	t2,t2,0
    55b8:	254d0024 	addiu	t5,t2,36
    55bc:	27a90118 	addiu	t1,sp,280
    55c0:	af380000 	sw	t8,0(t9)
    55c4:	8d4c0000 	lw	t4,0(t2)
    55c8:	254a000c 	addiu	t2,t2,12
    55cc:	2529000c 	addiu	t1,t1,12
    55d0:	ad2cfff4 	sw	t4,-12(t1)
    55d4:	8d4bfff8 	lw	t3,-8(t2)
    55d8:	ad2bfff8 	sw	t3,-8(t1)
    55dc:	8d4cfffc 	lw	t4,-4(t2)
    55e0:	154dfff8 	bne	t2,t5,55c4 <func_808D02DC+0xa8>
    55e4:	ad2cfffc 	sw	t4,-4(t1)
    55e8:	8d4c0000 	lw	t4,0(t2)
    55ec:	3c0e0000 	lui	t6,0x0
    55f0:	25ce0000 	addiu	t6,t6,0
    55f4:	25d80024 	addiu	t8,t6,36
    55f8:	27a800f0 	addiu	t0,sp,240
    55fc:	ad2c0000 	sw	t4,0(t1)
    5600:	8dcf0000 	lw	t7,0(t6)
    5604:	25ce000c 	addiu	t6,t6,12
    5608:	2508000c 	addiu	t0,t0,12
    560c:	ad0ffff4 	sw	t7,-12(t0)
    5610:	8dd9fff8 	lw	t9,-8(t6)
    5614:	ad19fff8 	sw	t9,-8(t0)
    5618:	8dcffffc 	lw	t7,-4(t6)
    561c:	15d8fff8 	bne	t6,t8,5600 <func_808D02DC+0xe4>
    5620:	ad0ffffc 	sw	t7,-4(t0)
    5624:	8dcf0000 	lw	t7,0(t6)
    5628:	3c0d0000 	lui	t5,0x0
    562c:	25ad0000 	addiu	t5,t5,0
    5630:	25ac0024 	addiu	t4,t5,36
    5634:	02e05825 	move	t3,s7
    5638:	ad0f0000 	sw	t7,0(t0)
    563c:	8da90000 	lw	t1,0(t5)
    5640:	25ad000c 	addiu	t5,t5,12
    5644:	256b000c 	addiu	t3,t3,12
    5648:	ad69fff4 	sw	t1,-12(t3)
    564c:	8daafff8 	lw	t2,-8(t5)
    5650:	ad6afff8 	sw	t2,-8(t3)
    5654:	8da9fffc 	lw	t1,-4(t5)
    5658:	15acfff8 	bne	t5,t4,563c <func_808D02DC+0x120>
    565c:	ad69fffc 	sw	t1,-4(t3)
    5660:	8da90000 	lw	t1,0(t5)
    5664:	3c060000 	lui	a2,0x0
    5668:	24c60000 	addiu	a2,a2,0
    566c:	ad690000 	sw	t1,0(t3)
    5670:	8fb80168 	lw	t8,360(sp)
    5674:	27a4008c 	addiu	a0,sp,140
    5678:	24071143 	li	a3,4419
    567c:	8f050000 	lw	a1,0(t8)
    5680:	0c000000 	jal	0 <func_808CADC0>
    5684:	00a0a825 	move	s5,a1
    5688:	866e021e 	lh	t6,542(s3)
    568c:	3c0c0601 	lui	t4,0x601
    5690:	2419000a 	li	t9,10
    5694:	a7ae00c2 	sh	t6,194(sp)
    5698:	87a800c2 	lh	t0,194(sp)
    569c:	258c91e8 	addiu	t4,t4,-28184
    56a0:	2901000b 	slti	at,t0,11
    56a4:	54200003 	bnezl	at,56b4 <func_808D02DC+0x198>
    56a8:	87af00c2 	lh	t7,194(sp)
    56ac:	a7b900c2 	sh	t9,194(sp)
    56b0:	87af00c2 	lh	t7,194(sp)
    56b4:	00009025 	move	s2,zero
    56b8:	3c010000 	lui	at,0x0
    56bc:	59e000b1 	blezl	t7,5984 <func_808D02DC+0x468>
    56c0:	8fb80168 	lw	t8,360(sp)
    56c4:	c43e0000 	lwc1	$f30,0(at)
    56c8:	3c010000 	lui	at,0x0
    56cc:	c43c0000 	lwc1	$f28,0(at)
    56d0:	3c010000 	lui	at,0x0
    56d4:	4480c000 	mtc1	zero,$f24
    56d8:	c43a0000 	lwc1	$f26,0(at)
    56dc:	93be017f 	lbu	s8,383(sp)
    56e0:	afac0074 	sw	t4,116(sp)
    56e4:	866d022a 	lh	t5,554(s3)
    56e8:	00125840 	sll	t3,s2,0x1
    56ec:	2401001e 	li	at,30
    56f0:	01aba023 	subu	s4,t5,t3
    56f4:	2694001e 	addiu	s4,s4,30
    56f8:	0281001a 	div	zero,s4,at
    56fc:	0000a010 	mfhi	s4
    5700:	0014a400 	sll	s4,s4,0x10
    5704:	17c00015 	bnez	s8,575c <func_808D02DC+0x240>
    5708:	0014a403 	sra	s4,s4,0x10
    570c:	00121080 	sll	v0,s2,0x2
    5710:	e7b800bc 	swc1	$f24,188(sp)
    5714:	e7b800b4 	swc1	$f24,180(sp)
    5718:	02c25021 	addu	t2,s6,v0
    571c:	c5440000 	lwc1	$f4,0(t2)
    5720:	3c014120 	lui	at,0x4120
    5724:	44814000 	mtc1	at,$f8
    5728:	461e2182 	mul.s	$f6,$f4,$f30
    572c:	c67013c8 	lwc1	$f16,5064(s3)
    5730:	02e24821 	addu	t1,s7,v0
    5734:	4600c506 	mov.s	$f20,$f24
    5738:	46083282 	mul.s	$f10,$f6,$f8
    573c:	00000000 	nop
    5740:	46105482 	mul.s	$f18,$f10,$f16
    5744:	e7b200b8 	swc1	$f18,184(sp)
    5748:	c66613c8 	lwc1	$f6,5064(s3)
    574c:	c5240000 	lwc1	$f4,0(t1)
    5750:	46062582 	mul.s	$f22,$f4,$f6
    5754:	10000034 	b	5828 <func_808D02DC+0x30c>
    5758:	00000000 	nop
    575c:	24010001 	li	at,1
    5760:	17c1001a 	bne	s8,at,57cc <func_808D02DC+0x2b0>
    5764:	00121080 	sll	v0,s2,0x2
    5768:	00121080 	sll	v0,s2,0x2
    576c:	02e2c021 	addu	t8,s7,v0
    5770:	c7080000 	lwc1	$f8,0(t8)
    5774:	c66013c8 	lwc1	$f0,5064(s3)
    5778:	03a27021 	addu	t6,sp,v0
    577c:	c5d000f0 	lwc1	$f16,240(t6)
    5780:	46004282 	mul.s	$f10,$f8,$f0
    5784:	02c24021 	addu	t0,s6,v0
    5788:	c5120000 	lwc1	$f18,0(t0)
    578c:	03a2c821 	addu	t9,sp,v0
    5790:	461a5582 	mul.s	$f22,$f10,$f26
    5794:	00000000 	nop
    5798:	46008502 	mul.s	$f20,$f16,$f0
    579c:	00000000 	nop
    57a0:	46009102 	mul.s	$f4,$f18,$f0
    57a4:	00000000 	nop
    57a8:	461a2182 	mul.s	$f6,$f4,$f26
    57ac:	e7a600b8 	swc1	$f6,184(sp)
    57b0:	c7280118 	lwc1	$f8,280(t9)
    57b4:	c67013c8 	lwc1	$f16,5064(s3)
    57b8:	e7b800bc 	swc1	$f24,188(sp)
    57bc:	46004287 	neg.s	$f10,$f8
    57c0:	46105482 	mul.s	$f18,$f10,$f16
    57c4:	10000018 	b	5828 <func_808D02DC+0x30c>
    57c8:	e7b200b4 	swc1	$f18,180(sp)
    57cc:	02e27821 	addu	t7,s7,v0
    57d0:	c5e40000 	lwc1	$f4,0(t7)
    57d4:	c66013c8 	lwc1	$f0,5064(s3)
    57d8:	03a26021 	addu	t4,sp,v0
    57dc:	c58800f0 	lwc1	$f8,240(t4)
    57e0:	46002182 	mul.s	$f6,$f4,$f0
    57e4:	02c26821 	addu	t5,s6,v0
    57e8:	46004287 	neg.s	$f10,$f8
    57ec:	c5b00000 	lwc1	$f16,0(t5)
    57f0:	03a25821 	addu	t3,sp,v0
    57f4:	461a3582 	mul.s	$f22,$f6,$f26
    57f8:	00000000 	nop
    57fc:	46005502 	mul.s	$f20,$f10,$f0
    5800:	00000000 	nop
    5804:	46008482 	mul.s	$f18,$f16,$f0
    5808:	00000000 	nop
    580c:	461a9102 	mul.s	$f4,$f18,$f26
    5810:	e7a400b8 	swc1	$f4,184(sp)
    5814:	c66813c8 	lwc1	$f8,5064(s3)
    5818:	c5660118 	lwc1	$f6,280(t3)
    581c:	e7b800bc 	swc1	$f24,188(sp)
    5820:	46083282 	mul.s	$f10,$f6,$f8
    5824:	e7aa00b4 	swc1	$f10,180(sp)
    5828:	8faa0174 	lw	t2,372(sp)
    582c:	00148880 	sll	s1,s4,0x2
    5830:	02348823 	subu	s1,s1,s4
    5834:	00118880 	sll	s1,s1,0x2
    5838:	022a8021 	addu	s0,s1,t2
    583c:	c60c0004 	lwc1	$f12,4(s0)
    5840:	0c000000 	jal	0 <func_808CADC0>
    5844:	00002825 	move	a1,zero
    5848:	c60c0000 	lwc1	$f12,0(s0)
    584c:	24050001 	li	a1,1
    5850:	0c000000 	jal	0 <func_808CADC0>
    5854:	46006307 	neg.s	$f12,$f12
    5858:	27a400b4 	addiu	a0,sp,180
    585c:	0c000000 	jal	0 <func_808CADC0>
    5860:	27a500a8 	addiu	a1,sp,168
    5864:	8fa90170 	lw	t1,368(sp)
    5868:	c7b200a8 	lwc1	$f18,168(sp)
    586c:	c7aa00b0 	lwc1	$f10,176(sp)
    5870:	02291021 	addu	v0,s1,t1
    5874:	c4500000 	lwc1	$f16,0(v0)
    5878:	c4480008 	lwc1	$f8,8(v0)
    587c:	c4440004 	lwc1	$f4,4(v0)
    5880:	46128300 	add.s	$f12,$f16,$f18
    5884:	c7a600ac 	lwc1	$f6,172(sp)
    5888:	00003825 	move	a3,zero
    588c:	460a4400 	add.s	$f16,$f8,$f10
    5890:	46062380 	add.s	$f14,$f4,$f6
    5894:	44068000 	mfc1	a2,$f16
    5898:	0c000000 	jal	0 <func_808CADC0>
    589c:	00000000 	nop
    58a0:	c6120004 	lwc1	$f18,4(s0)
    58a4:	24050001 	li	a1,1
    58a8:	0c000000 	jal	0 <func_808CADC0>
    58ac:	46149300 	add.s	$f12,$f18,$f20
    58b0:	c6040000 	lwc1	$f4,0(s0)
    58b4:	24050001 	li	a1,1
    58b8:	46162300 	add.s	$f12,$f4,$f22
    58bc:	0c000000 	jal	0 <func_808CADC0>
    58c0:	46006307 	neg.s	$f12,$f12
    58c4:	44924000 	mtc1	s2,$f8
    58c8:	3c010000 	lui	at,0x0
    58cc:	c4300000 	lwc1	$f16,0(at)
    58d0:	468042a0 	cvt.s.w	$f10,$f8
    58d4:	8fb80178 	lw	t8,376(sp)
    58d8:	00147080 	sll	t6,s4,0x2
    58dc:	4406e000 	mfc1	a2,$f28
    58e0:	030e4021 	addu	t0,t8,t6
    58e4:	c5060000 	lwc1	$f6,0(t0)
    58e8:	46105482 	mul.s	$f18,$f10,$f16
    58ec:	24070001 	li	a3,1
    58f0:	4612e101 	sub.s	$f4,$f28,$f18
    58f4:	46043302 	mul.s	$f12,$f6,$f4
    58f8:	0c000000 	jal	0 <func_808CADC0>
    58fc:	46006386 	mov.s	$f14,$f12
    5900:	3c010000 	lui	at,0x0
    5904:	c42c0000 	lwc1	$f12,0(at)
    5908:	0c000000 	jal	0 <func_808CADC0>
    590c:	24050001 	li	a1,1
    5910:	8ea202d0 	lw	v0,720(s5)
    5914:	3c0fda38 	lui	t7,0xda38
    5918:	35ef0003 	ori	t7,t7,0x3
    591c:	24590008 	addiu	t9,v0,8
    5920:	aeb902d0 	sw	t9,720(s5)
    5924:	ac4f0000 	sw	t7,0(v0)
    5928:	8fac0168 	lw	t4,360(sp)
    592c:	3c050000 	lui	a1,0x0
    5930:	24a50000 	addiu	a1,a1,0
    5934:	24061180 	li	a2,4480
    5938:	00408025 	move	s0,v0
    593c:	0c000000 	jal	0 <func_808CADC0>
    5940:	8d840000 	lw	a0,0(t4)
    5944:	ae020004 	sw	v0,4(s0)
    5948:	8ea202d0 	lw	v0,720(s5)
    594c:	3c0bde00 	lui	t3,0xde00
    5950:	26520001 	addiu	s2,s2,1
    5954:	244d0008 	addiu	t5,v0,8
    5958:	aead02d0 	sw	t5,720(s5)
    595c:	ac4b0000 	sw	t3,0(v0)
    5960:	8faa0074 	lw	t2,116(sp)
    5964:	00129400 	sll	s2,s2,0x10
    5968:	00129403 	sra	s2,s2,0x10
    596c:	ac4a0004 	sw	t2,4(v0)
    5970:	87a900c2 	lh	t1,194(sp)
    5974:	0249082a 	slt	at,s2,t1
    5978:	5420ff5b 	bnezl	at,56e8 <func_808D02DC+0x1cc>
    597c:	866d022a 	lh	t5,554(s3)
    5980:	8fb80168 	lw	t8,360(sp)
    5984:	3c060000 	lui	a2,0x0
    5988:	24c60000 	addiu	a2,a2,0
    598c:	27a4008c 	addiu	a0,sp,140
    5990:	24071183 	li	a3,4483
    5994:	0c000000 	jal	0 <func_808CADC0>
    5998:	8f050000 	lw	a1,0(t8)
    599c:	8fbf006c 	lw	ra,108(sp)
    59a0:	d7b40018 	ldc1	$f20,24(sp)
    59a4:	d7b60020 	ldc1	$f22,32(sp)
    59a8:	d7b80028 	ldc1	$f24,40(sp)
    59ac:	d7ba0030 	ldc1	$f26,48(sp)
    59b0:	d7bc0038 	ldc1	$f28,56(sp)
    59b4:	d7be0040 	ldc1	$f30,64(sp)
    59b8:	8fb00048 	lw	s0,72(sp)
    59bc:	8fb1004c 	lw	s1,76(sp)
    59c0:	8fb20050 	lw	s2,80(sp)
    59c4:	8fb30054 	lw	s3,84(sp)
    59c8:	8fb40058 	lw	s4,88(sp)
    59cc:	8fb5005c 	lw	s5,92(sp)
    59d0:	8fb60060 	lw	s6,96(sp)
    59d4:	8fb70064 	lw	s7,100(sp)
    59d8:	8fbe0068 	lw	s8,104(sp)
    59dc:	03e00008 	jr	ra
    59e0:	27bd0168 	addiu	sp,sp,360

000059e4 <func_808D07A4>:
    59e4:	afa40000 	sw	a0,0(sp)
    59e8:	24040002 	li	a0,2
    59ec:	10a40016 	beq	a1,a0,5a48 <func_808D07A4+0x64>
    59f0:	afa7000c 	sw	a3,12(sp)
    59f4:	24010005 	li	at,5
    59f8:	10a10006 	beq	a1,at,5a14 <func_808D07A4+0x30>
    59fc:	8fa20014 	lw	v0,20(sp)
    5a00:	24010006 	li	at,6
    5a04:	50a10004 	beql	a1,at,5a18 <func_808D07A4+0x34>
    5a08:	8fa30010 	lw	v1,16(sp)
    5a0c:	1000001a 	b	5a78 <func_808D07A4+0x94>
    5a10:	8fa20014 	lw	v0,20(sp)
    5a14:	8fa30010 	lw	v1,16(sp)
    5a18:	3c010000 	lui	at,0x0
    5a1c:	c4260000 	lwc1	$f6,0(at)
    5a20:	846e0004 	lh	t6,4(v1)
    5a24:	c44413cc 	lwc1	$f4,5068(v0)
    5a28:	448e5000 	mtc1	t6,$f10
    5a2c:	46062202 	mul.s	$f8,$f4,$f6
    5a30:	46805420 	cvt.s.w	$f16,$f10
    5a34:	46088481 	sub.s	$f18,$f16,$f8
    5a38:	4600910d 	trunc.w.s	$f4,$f18
    5a3c:	44182000 	mfc1	t8,$f4
    5a40:	1000000d 	b	5a78 <func_808D07A4+0x94>
    5a44:	a4780004 	sh	t8,4(v1)
    5a48:	8fa30010 	lw	v1,16(sp)
    5a4c:	8fa20014 	lw	v0,20(sp)
    5a50:	84790004 	lh	t9,4(v1)
    5a54:	c45013cc 	lwc1	$f16,5068(v0)
    5a58:	44993000 	mtc1	t9,$f6
    5a5c:	00000000 	nop
    5a60:	468032a0 	cvt.s.w	$f10,$f6
    5a64:	46105200 	add.s	$f8,$f10,$f16
    5a68:	4600448d 	trunc.w.s	$f18,$f8
    5a6c:	44099000 	mfc1	t1,$f18
    5a70:	00000000 	nop
    5a74:	a4690004 	sh	t1,4(v1)
    5a78:	904a02d7 	lbu	t2,727(v0)
    5a7c:	24010001 	li	at,1
    5a80:	15410005 	bne	t2,at,5a98 <func_808D07A4+0xb4>
    5a84:	24010005 	li	at,5
    5a88:	14a10003 	bne	a1,at,5a98 <func_808D07A4+0xb4>
    5a8c:	3c0b0600 	lui	t3,0x600
    5a90:	256b59f8 	addiu	t3,t3,23032
    5a94:	accb0000 	sw	t3,0(a2)
    5a98:	844c021e 	lh	t4,542(v0)
    5a9c:	24010006 	li	at,6
    5aa0:	1580000e 	bnez	t4,5adc <func_808D07A4+0xf8>
    5aa4:	00000000 	nop
    5aa8:	14a10005 	bne	a1,at,5ac0 <func_808D07A4+0xdc>
    5aac:	3c0d0601 	lui	t5,0x601
    5ab0:	25adcbc8 	addiu	t5,t5,-13368
    5ab4:	accd0000 	sw	t5,0(a2)
    5ab8:	03e00008 	jr	ra
    5abc:	00001025 	move	v0,zero
    5ac0:	14a40005 	bne	a1,a0,5ad8 <func_808D07A4+0xf4>
    5ac4:	3c0e0601 	lui	t6,0x601
    5ac8:	25ced0a0 	addiu	t6,t6,-12128
    5acc:	acce0000 	sw	t6,0(a2)
    5ad0:	03e00008 	jr	ra
    5ad4:	00001025 	move	v0,zero
    5ad8:	acc00000 	sw	zero,0(a2)
    5adc:	03e00008 	jr	ra
    5ae0:	00001025 	move	v0,zero

00005ae4 <func_808D08A4>:
    5ae4:	27bdffe8 	addiu	sp,sp,-24
    5ae8:	24010005 	li	at,5
    5aec:	afbf0014 	sw	ra,20(sp)
    5af0:	afa40018 	sw	a0,24(sp)
    5af4:	afa60020 	sw	a2,32(sp)
    5af8:	14a1000b 	bne	a1,at,5b28 <func_808D08A4+0x44>
    5afc:	afa70024 	sw	a3,36(sp)
    5b00:	8fa50028 	lw	a1,40(sp)
    5b04:	3c040000 	lui	a0,0x0
    5b08:	24840000 	addiu	a0,a0,0
    5b0c:	0c000000 	jal	0 <func_808CADC0>
    5b10:	24a50038 	addiu	a1,a1,56
    5b14:	8fa50028 	lw	a1,40(sp)
    5b18:	3c040000 	lui	a0,0x0
    5b1c:	24840000 	addiu	a0,a0,0
    5b20:	0c000000 	jal	0 <func_808CADC0>
    5b24:	24a513f4 	addiu	a1,a1,5108
    5b28:	8fbf0014 	lw	ra,20(sp)
    5b2c:	27bd0018 	addiu	sp,sp,24
    5b30:	03e00008 	jr	ra
    5b34:	00000000 	nop

00005b38 <func_808D08F8>:
    5b38:	27bdfe88 	addiu	sp,sp,-376
    5b3c:	afb60070 	sw	s6,112(sp)
    5b40:	afb30064 	sw	s3,100(sp)
    5b44:	00a09825 	move	s3,a1
    5b48:	0080b025 	move	s6,a0
    5b4c:	afbf0074 	sw	ra,116(sp)
    5b50:	afb5006c 	sw	s5,108(sp)
    5b54:	afb40068 	sw	s4,104(sp)
    5b58:	afb20060 	sw	s2,96(sp)
    5b5c:	afb1005c 	sw	s1,92(sp)
    5b60:	afb00058 	sw	s0,88(sp)
    5b64:	f7ba0050 	sdc1	$f26,80(sp)
    5b68:	f7b80048 	sdc1	$f24,72(sp)
    5b6c:	f7b60040 	sdc1	$f22,64(sp)
    5b70:	f7b40038 	sdc1	$f20,56(sp)
    5b74:	8c840000 	lw	a0,0(a0)
    5b78:	0c000000 	jal	0 <func_808CADC0>
    5b7c:	24050480 	li	a1,1152
    5b80:	8ec50000 	lw	a1,0(s6)
    5b84:	3c060000 	lui	a2,0x0
    5b88:	0040a825 	move	s5,v0
    5b8c:	24c60000 	addiu	a2,a2,0
    5b90:	27a40158 	addiu	a0,sp,344
    5b94:	240711ed 	li	a3,4589
    5b98:	0c000000 	jal	0 <func_808CADC0>
    5b9c:	00a0a025 	move	s4,a1
    5ba0:	866e021e 	lh	t6,542(s3)
    5ba4:	51c0001a 	beqzl	t6,5c10 <func_808D08F8+0xd8>
    5ba8:	8e8202c0 	lw	v0,704(s4)
    5bac:	8e8202c0 	lw	v0,704(s4)
    5bb0:	3c18db06 	lui	t8,0xdb06
    5bb4:	37180024 	ori	t8,t8,0x24
    5bb8:	244f0008 	addiu	t7,v0,8
    5bbc:	ae8f02c0 	sw	t7,704(s4)
    5bc0:	ac580000 	sw	t8,0(v0)
    5bc4:	927902d5 	lbu	t9,725(s3)
    5bc8:	3c040000 	lui	a0,0x0
    5bcc:	3c0d0000 	lui	t5,0x0
    5bd0:	00194080 	sll	t0,t9,0x2
    5bd4:	00882021 	addu	a0,a0,t0
    5bd8:	8c840000 	lw	a0,0(a0)
    5bdc:	3c0100ff 	lui	at,0xff
    5be0:	3421ffff 	ori	at,at,0xffff
    5be4:	00045100 	sll	t2,a0,0x4
    5be8:	000a5f02 	srl	t3,t2,0x1c
    5bec:	000b6080 	sll	t4,t3,0x2
    5bf0:	01ac6821 	addu	t5,t5,t4
    5bf4:	8dad0000 	lw	t5,0(t5)
    5bf8:	00814824 	and	t1,a0,at
    5bfc:	3c018000 	lui	at,0x8000
    5c00:	012d7021 	addu	t6,t1,t5
    5c04:	01c17821 	addu	t7,t6,at
    5c08:	ac4f0004 	sw	t7,4(v0)
    5c0c:	8e8202c0 	lw	v0,704(s4)
    5c10:	3c19db06 	lui	t9,0xdb06
    5c14:	37390020 	ori	t9,t9,0x20
    5c18:	24580008 	addiu	t8,v0,8
    5c1c:	ae9802c0 	sw	t8,704(s4)
    5c20:	ac590000 	sw	t9,0(v0)
    5c24:	c6680258 	lwc1	$f8,600(s3)
    5c28:	c6640254 	lwc1	$f4,596(s3)
    5c2c:	8ec40000 	lw	a0,0(s6)
    5c30:	240b0020 	li	t3,32
    5c34:	240c0020 	li	t4,32
    5c38:	24090001 	li	t1,1
    5c3c:	afa90018 	sw	t1,24(sp)
    5c40:	afac0014 	sw	t4,20(sp)
    5c44:	afab0010 	sw	t3,16(sp)
    5c48:	c670025c 	lwc1	$f16,604(s3)
    5c4c:	4600218d 	trunc.w.s	$f6,$f4
    5c50:	24090020 	li	t1,32
    5c54:	00002825 	move	a1,zero
    5c58:	4600848d 	trunc.w.s	$f18,$f16
    5c5c:	44063000 	mfc1	a2,$f6
    5c60:	00408025 	move	s0,v0
    5c64:	4600428d 	trunc.w.s	$f10,$f8
    5c68:	440e9000 	mfc1	t6,$f18
    5c6c:	00063400 	sll	a2,a2,0x10
    5c70:	00063403 	sra	a2,a2,0x10
    5c74:	000e7c00 	sll	t7,t6,0x10
    5c78:	000fc403 	sra	t8,t7,0x10
    5c7c:	afb8001c 	sw	t8,28(sp)
    5c80:	c6640260 	lwc1	$f4,608(s3)
    5c84:	44075000 	mfc1	a3,$f10
    5c88:	afa90028 	sw	t1,40(sp)
    5c8c:	4600218d 	trunc.w.s	$f6,$f4
    5c90:	00073c00 	sll	a3,a3,0x10
    5c94:	00073c03 	sra	a3,a3,0x10
    5c98:	afac0024 	sw	t4,36(sp)
    5c9c:	44083000 	mfc1	t0,$f6
    5ca0:	00000000 	nop
    5ca4:	00085400 	sll	t2,t0,0x10
    5ca8:	000a5c03 	sra	t3,t2,0x10
    5cac:	0c000000 	jal	0 <func_808CADC0>
    5cb0:	afab0020 	sw	t3,32(sp)
    5cb4:	ae020004 	sw	v0,4(s0)
    5cb8:	8e8202c0 	lw	v0,704(s4)
    5cbc:	3c0efa00 	lui	t6,0xfa00
    5cc0:	240fffff 	li	t7,-1
    5cc4:	244d0008 	addiu	t5,v0,8
    5cc8:	ae8d02c0 	sw	t5,704(s4)
    5ccc:	ac4f0004 	sw	t7,4(v0)
    5cd0:	ac4e0000 	sw	t6,0(v0)
    5cd4:	8e8202c0 	lw	v0,704(s4)
    5cd8:	3c19fb00 	lui	t9,0xfb00
    5cdc:	2401ff00 	li	at,-256
    5ce0:	24580008 	addiu	t8,v0,8
    5ce4:	ae9802c0 	sw	t8,704(s4)
    5ce8:	ac590000 	sw	t9,0(v0)
    5cec:	c6680270 	lwc1	$f8,624(s3)
    5cf0:	3c040000 	lui	a0,0x0
    5cf4:	24840000 	addiu	a0,a0,0
    5cf8:	4600428d 	trunc.w.s	$f10,$f8
    5cfc:	440c5000 	mfc1	t4,$f10
    5d00:	00000000 	nop
    5d04:	318900ff 	andi	t1,t4,0xff
    5d08:	01216825 	or	t5,t1,at
    5d0c:	0c000000 	jal	0 <func_808CADC0>
    5d10:	ac4d0004 	sw	t5,4(v0)
    5d14:	0c000000 	jal	0 <func_808CADC0>
    5d18:	00000000 	nop
    5d1c:	3c0e0000 	lui	t6,0x0
    5d20:	85ce0000 	lh	t6,0(t6)
    5d24:	866f0228 	lh	t7,552(s3)
    5d28:	24010064 	li	at,100
    5d2c:	00003825 	move	a3,zero
    5d30:	01cf1021 	addu	v0,t6,t7
    5d34:	0041001a 	div	zero,v0,at
    5d38:	00001010 	mfhi	v0
    5d3c:	00021400 	sll	v0,v0,0x10
    5d40:	00021403 	sra	v0,v0,0x10
    5d44:	0002c080 	sll	t8,v0,0x2
    5d48:	0302c023 	subu	t8,t8,v0
    5d4c:	0018c080 	sll	t8,t8,0x2
    5d50:	02788021 	addu	s0,s3,t8
    5d54:	c60c078c 	lwc1	$f12,1932(s0)
    5d58:	c60e0790 	lwc1	$f14,1936(s0)
    5d5c:	0c000000 	jal	0 <func_808CADC0>
    5d60:	8e060794 	lw	a2,1940(s0)
    5d64:	c60c02e0 	lwc1	$f12,736(s0)
    5d68:	0c000000 	jal	0 <func_808CADC0>
    5d6c:	24050001 	li	a1,1
    5d70:	c60c02dc 	lwc1	$f12,732(s0)
    5d74:	24050001 	li	a1,1
    5d78:	0c000000 	jal	0 <func_808CADC0>
    5d7c:	46006307 	neg.s	$f12,$f12
    5d80:	3c014150 	lui	at,0x4150
    5d84:	4481a000 	mtc1	at,$f20
    5d88:	3c01c0a0 	lui	at,0xc0a0
    5d8c:	4481b000 	mtc1	at,$f22
    5d90:	3c01c150 	lui	at,0xc150
    5d94:	44816000 	mtc1	at,$f12
    5d98:	4406a000 	mfc1	a2,$f20
    5d9c:	24070001 	li	a3,1
    5da0:	0c000000 	jal	0 <func_808CADC0>
    5da4:	4600b386 	mov.s	$f14,$f22
    5da8:	3c010000 	lui	at,0x0
    5dac:	c4380000 	lwc1	$f24,0(at)
    5db0:	c6700050 	lwc1	$f16,80(s3)
    5db4:	c6720054 	lwc1	$f18,84(s3)
    5db8:	c6640058 	lwc1	$f4,88(s3)
    5dbc:	46188302 	mul.s	$f12,$f16,$f24
    5dc0:	24070001 	li	a3,1
    5dc4:	46189382 	mul.s	$f14,$f18,$f24
    5dc8:	00000000 	nop
    5dcc:	46182182 	mul.s	$f6,$f4,$f24
    5dd0:	44063000 	mfc1	a2,$f6
    5dd4:	0c000000 	jal	0 <func_808CADC0>
    5dd8:	00000000 	nop
    5ddc:	8e650194 	lw	a1,404(s3)
    5de0:	8e6601b0 	lw	a2,432(s3)
    5de4:	3c070000 	lui	a3,0x0
    5de8:	24e70000 	addiu	a3,a3,0
    5dec:	afb30014 	sw	s3,20(sp)
    5df0:	afa00010 	sw	zero,16(sp)
    5df4:	0c000000 	jal	0 <func_808CADC0>
    5df8:	02c02025 	move	a0,s6
    5dfc:	0c000000 	jal	0 <func_808CADC0>
    5e00:	00000000 	nop
    5e04:	3c040000 	lui	a0,0x0
    5e08:	0c000000 	jal	0 <func_808CADC0>
    5e0c:	24840000 	addiu	a0,a0,0
    5e10:	0c000000 	jal	0 <func_808CADC0>
    5e14:	00000000 	nop
    5e18:	3c190000 	lui	t9,0x0
    5e1c:	87390000 	lh	t9,0(t9)
    5e20:	86680228 	lh	t0,552(s3)
    5e24:	24010064 	li	at,100
    5e28:	00003825 	move	a3,zero
    5e2c:	03281021 	addu	v0,t9,t0
    5e30:	0041001a 	div	zero,v0,at
    5e34:	00001010 	mfhi	v0
    5e38:	00021400 	sll	v0,v0,0x10
    5e3c:	00021403 	sra	v0,v0,0x10
    5e40:	00025080 	sll	t2,v0,0x2
    5e44:	01425023 	subu	t2,t2,v0
    5e48:	000a5080 	sll	t2,t2,0x2
    5e4c:	026a8021 	addu	s0,s3,t2
    5e50:	c60c078c 	lwc1	$f12,1932(s0)
    5e54:	c60e0790 	lwc1	$f14,1936(s0)
    5e58:	0c000000 	jal	0 <func_808CADC0>
    5e5c:	8e060794 	lw	a2,1940(s0)
    5e60:	c60c02e0 	lwc1	$f12,736(s0)
    5e64:	0c000000 	jal	0 <func_808CADC0>
    5e68:	24050001 	li	a1,1
    5e6c:	c60c02dc 	lwc1	$f12,732(s0)
    5e70:	24050001 	li	a1,1
    5e74:	0c000000 	jal	0 <func_808CADC0>
    5e78:	46006307 	neg.s	$f12,$f12
    5e7c:	4406a000 	mfc1	a2,$f20
    5e80:	4600a306 	mov.s	$f12,$f20
    5e84:	4600b386 	mov.s	$f14,$f22
    5e88:	0c000000 	jal	0 <func_808CADC0>
    5e8c:	24070001 	li	a3,1
    5e90:	c6680050 	lwc1	$f8,80(s3)
    5e94:	c66a0054 	lwc1	$f10,84(s3)
    5e98:	c6700058 	lwc1	$f16,88(s3)
    5e9c:	46184302 	mul.s	$f12,$f8,$f24
    5ea0:	24070001 	li	a3,1
    5ea4:	46185382 	mul.s	$f14,$f10,$f24
    5ea8:	00000000 	nop
    5eac:	46188482 	mul.s	$f18,$f16,$f24
    5eb0:	44069000 	mfc1	a2,$f18
    5eb4:	0c000000 	jal	0 <func_808CADC0>
    5eb8:	00000000 	nop
    5ebc:	8e6501d8 	lw	a1,472(s3)
    5ec0:	8e6601f4 	lw	a2,500(s3)
    5ec4:	3c070000 	lui	a3,0x0
    5ec8:	24e70000 	addiu	a3,a3,0
    5ecc:	afb30014 	sw	s3,20(sp)
    5ed0:	afa00010 	sw	zero,16(sp)
    5ed4:	0c000000 	jal	0 <func_808CADC0>
    5ed8:	02c02025 	move	a0,s6
    5edc:	0c000000 	jal	0 <func_808CADC0>
    5ee0:	00000000 	nop
    5ee4:	3c040000 	lui	a0,0x0
    5ee8:	0c000000 	jal	0 <func_808CADC0>
    5eec:	24840000 	addiu	a0,a0,0
    5ef0:	8e8202c0 	lw	v0,704(s4)
    5ef4:	3c0cdb06 	lui	t4,0xdb06
    5ef8:	358c0034 	ori	t4,t4,0x34
    5efc:	244b0008 	addiu	t3,v0,8
    5f00:	ae8b02c0 	sw	t3,704(s4)
    5f04:	ac550004 	sw	s5,4(v0)
    5f08:	0c000000 	jal	0 <func_808CADC0>
    5f0c:	ac4c0000 	sw	t4,0(v0)
    5f10:	3c013f80 	lui	at,0x3f80
    5f14:	26691490 	addiu	t1,s3,5264
    5f18:	4481b000 	mtc1	at,$f22
    5f1c:	4480d000 	mtc1	zero,$f26
    5f20:	afa9007c 	sw	t1,124(sp)
    5f24:	00008825 	move	s1,zero
    5f28:	00111840 	sll	v1,s1,0x1
    5f2c:	3c0d0000 	lui	t5,0x0
    5f30:	01a36821 	addu	t5,t5,v1
    5f34:	85ad0000 	lh	t5,0(t5)
    5f38:	866e0228 	lh	t6,552(s3)
    5f3c:	24010064 	li	at,100
    5f40:	00003825 	move	a3,zero
    5f44:	01ae1021 	addu	v0,t5,t6
    5f48:	0041001a 	div	zero,v0,at
    5f4c:	00001010 	mfhi	v0
    5f50:	00021400 	sll	v0,v0,0x10
    5f54:	00021403 	sra	v0,v0,0x10
    5f58:	00027880 	sll	t7,v0,0x2
    5f5c:	01e27823 	subu	t7,t7,v0
    5f60:	000f7880 	sll	t7,t7,0x2
    5f64:	026f8021 	addu	s0,s3,t7
    5f68:	c60c078c 	lwc1	$f12,1932(s0)
    5f6c:	c60e0790 	lwc1	$f14,1936(s0)
    5f70:	8e060794 	lw	a2,1940(s0)
    5f74:	0c000000 	jal	0 <func_808CADC0>
    5f78:	afa30084 	sw	v1,132(sp)
    5f7c:	c60c02e0 	lwc1	$f12,736(s0)
    5f80:	0c000000 	jal	0 <func_808CADC0>
    5f84:	24050001 	li	a1,1
    5f88:	c60c02dc 	lwc1	$f12,732(s0)
    5f8c:	24050001 	li	a1,1
    5f90:	0c000000 	jal	0 <func_808CADC0>
    5f94:	46006307 	neg.s	$f12,$f12
    5f98:	4600d306 	mov.s	$f12,$f26
    5f9c:	4600d386 	mov.s	$f14,$f26
    5fa0:	3c06420c 	lui	a2,0x420c
    5fa4:	0c000000 	jal	0 <func_808CADC0>
    5fa8:	24070001 	li	a3,1
    5fac:	c66c0050 	lwc1	$f12,80(s3)
    5fb0:	c66e0054 	lwc1	$f14,84(s3)
    5fb4:	8e660058 	lw	a2,88(s3)
    5fb8:	0c000000 	jal	0 <func_808CADC0>
    5fbc:	24070001 	li	a3,1
    5fc0:	8678021e 	lh	t8,542(s3)
    5fc4:	3c080000 	lui	t0,0x0
    5fc8:	25080000 	addiu	t0,t0,0
    5fcc:	0238082a 	slt	at,s1,t8
    5fd0:	5020004a 	beqzl	at,60fc <func_808D08F8+0x5c4>
    5fd4:	8d0b0000 	lw	t3,0(t0)
    5fd8:	44912000 	mtc1	s1,$f4
    5fdc:	86790228 	lh	t9,552(s3)
    5fe0:	3c010000 	lui	at,0x0
    5fe4:	468021a0 	cvt.s.w	$f6,$f4
    5fe8:	44995000 	mtc1	t9,$f10
    5fec:	c4280000 	lwc1	$f8,0(at)
    5ff0:	3c010000 	lui	at,0x0
    5ff4:	c4320000 	lwc1	$f18,0(at)
    5ff8:	46805420 	cvt.s.w	$f16,$f10
    5ffc:	46083082 	mul.s	$f2,$f6,$f8
    6000:	00000000 	nop
    6004:	46128102 	mul.s	$f4,$f16,$f18
    6008:	e7a20088 	swc1	$f2,136(sp)
    600c:	46022180 	add.s	$f6,$f4,$f2
    6010:	4600320d 	trunc.w.s	$f8,$f6
    6014:	44044000 	mfc1	a0,$f8
    6018:	00000000 	nop
    601c:	00042400 	sll	a0,a0,0x10
    6020:	0c000000 	jal	0 <func_808CADC0>
    6024:	00042403 	sra	a0,a0,0x10
    6028:	e7a0008c 	swc1	$f0,140(sp)
    602c:	866a0228 	lh	t2,552(s3)
    6030:	3c010000 	lui	at,0x0
    6034:	c4320000 	lwc1	$f18,0(at)
    6038:	448a5000 	mtc1	t2,$f10
    603c:	c7a20088 	lwc1	$f2,136(sp)
    6040:	46805420 	cvt.s.w	$f16,$f10
    6044:	46128102 	mul.s	$f4,$f16,$f18
    6048:	46022180 	add.s	$f6,$f4,$f2
    604c:	4600320d 	trunc.w.s	$f8,$f6
    6050:	44044000 	mfc1	a0,$f8
    6054:	00000000 	nop
    6058:	00042400 	sll	a0,a0,0x10
    605c:	0c000000 	jal	0 <func_808CADC0>
    6060:	00042403 	sra	a0,a0,0x10
    6064:	c6620280 	lwc1	$f2,640(s3)
    6068:	c7aa008c 	lwc1	$f10,140(sp)
    606c:	4406b000 	mfc1	a2,$f22
    6070:	24070001 	li	a3,1
    6074:	460a1402 	mul.s	$f16,$f2,$f10
    6078:	00000000 	nop
    607c:	46001482 	mul.s	$f18,$f2,$f0
    6080:	46168300 	add.s	$f12,$f16,$f22
    6084:	0c000000 	jal	0 <func_808CADC0>
    6088:	46169380 	add.s	$f14,$f18,$f22
    608c:	3c010000 	lui	at,0x0
    6090:	c42c0000 	lwc1	$f12,0(at)
    6094:	0c000000 	jal	0 <func_808CADC0>
    6098:	24050001 	li	a1,1
    609c:	3c050000 	lui	a1,0x0
    60a0:	24a50000 	addiu	a1,a1,0
    60a4:	02a02025 	move	a0,s5
    60a8:	0c000000 	jal	0 <func_808CADC0>
    60ac:	2406126f 	li	a2,4719
    60b0:	8e8202c0 	lw	v0,704(s4)
    60b4:	3c09da38 	lui	t1,0xda38
    60b8:	35290003 	ori	t1,t1,0x3
    60bc:	244c0008 	addiu	t4,v0,8
    60c0:	ae8c02c0 	sw	t4,704(s4)
    60c4:	ac550004 	sw	s5,4(v0)
    60c8:	ac490000 	sw	t1,0(v0)
    60cc:	8e8202c0 	lw	v0,704(s4)
    60d0:	3c0ede00 	lui	t6,0xde00
    60d4:	00117880 	sll	t7,s1,0x2
    60d8:	244d0008 	addiu	t5,v0,8
    60dc:	ae8d02c0 	sw	t5,704(s4)
    60e0:	3c180000 	lui	t8,0x0
    60e4:	030fc021 	addu	t8,t8,t7
    60e8:	ac4e0000 	sw	t6,0(v0)
    60ec:	8f180000 	lw	t8,0(t8)
    60f0:	10000074 	b	62c4 <func_808D08F8+0x78c>
    60f4:	ac580004 	sw	t8,4(v0)
    60f8:	8d0b0000 	lw	t3,0(t0)
    60fc:	27b900f0 	addiu	t9,sp,240
    6100:	8d0a0004 	lw	t2,4(t0)
    6104:	af2b0000 	sw	t3,0(t9)
    6108:	8d0b0008 	lw	t3,8(t0)
    610c:	af2a0004 	sw	t2,4(t9)
    6110:	3c06c489 	lui	a2,0xc489
    6114:	af2b0008 	sw	t3,8(t9)
    6118:	8fac0084 	lw	t4,132(sp)
    611c:	3c0d0601 	lui	t5,0x601
    6120:	25adb2f8 	addiu	t5,t5,-19720
    6124:	026c9021 	addu	s2,s3,t4
    6128:	864913d0 	lh	t1,5072(s2)
    612c:	34c68000 	ori	a2,a2,0x8000
    6130:	24070001 	li	a3,1
    6134:	29210002 	slti	at,t1,2
    6138:	10200062 	beqz	at,62c4 <func_808D08F8+0x78c>
    613c:	00000000 	nop
    6140:	e7b800d4 	swc1	$f24,212(sp)
    6144:	4600c506 	mov.s	$f20,$f24
    6148:	4600d306 	mov.s	$f12,$f26
    614c:	4600d386 	mov.s	$f14,$f26
    6150:	0c000000 	jal	0 <func_808CADC0>
    6154:	afad0080 	sw	t5,128(sp)
    6158:	3c010000 	lui	at,0x0
    615c:	c42c0000 	lwc1	$f12,0(at)
    6160:	0c000000 	jal	0 <func_808CADC0>
    6164:	24050001 	li	a1,1
    6168:	2a21000e 	slti	at,s1,14
    616c:	1420000f 	bnez	at,61ac <func_808D08F8+0x674>
    6170:	262efff2 	addiu	t6,s1,-14
    6174:	448e2000 	mtc1	t6,$f4
    6178:	3c010000 	lui	at,0x0
    617c:	c4280000 	lwc1	$f8,0(at)
    6180:	468021a0 	cvt.s.w	$f6,$f4
    6184:	4406b000 	mfc1	a2,$f22
    6188:	24070001 	li	a3,1
    618c:	46083282 	mul.s	$f10,$f6,$f8
    6190:	460ab301 	sub.s	$f12,$f22,$f10
    6194:	46006386 	mov.s	$f14,$f12
    6198:	0c000000 	jal	0 <func_808CADC0>
    619c:	e7ac0084 	swc1	$f12,132(sp)
    61a0:	c7ac0084 	lwc1	$f12,132(sp)
    61a4:	460cc502 	mul.s	$f20,$f24,$f12
    61a8:	e7b400d4 	swc1	$f20,212(sp)
    61ac:	4406c000 	mfc1	a2,$f24
    61b0:	4600c306 	mov.s	$f12,$f24
    61b4:	4600c386 	mov.s	$f14,$f24
    61b8:	0c000000 	jal	0 <func_808CADC0>
    61bc:	24070001 	li	a3,1
    61c0:	8e8202c0 	lw	v0,704(s4)
    61c4:	3c18da38 	lui	t8,0xda38
    61c8:	37180003 	ori	t8,t8,0x3
    61cc:	244f0008 	addiu	t7,v0,8
    61d0:	ae8f02c0 	sw	t7,704(s4)
    61d4:	3c050000 	lui	a1,0x0
    61d8:	ac580000 	sw	t8,0(v0)
    61dc:	8ec40000 	lw	a0,0(s6)
    61e0:	24a50000 	addiu	a1,a1,0
    61e4:	240612a0 	li	a2,4768
    61e8:	0c000000 	jal	0 <func_808CADC0>
    61ec:	00408025 	move	s0,v0
    61f0:	ae020004 	sw	v0,4(s0)
    61f4:	8e8202c0 	lw	v0,704(s4)
    61f8:	3c08de00 	lui	t0,0xde00
    61fc:	24010001 	li	at,1
    6200:	24590008 	addiu	t9,v0,8
    6204:	ae9902c0 	sw	t9,704(s4)
    6208:	ac480000 	sw	t0,0(v0)
    620c:	8faa0080 	lw	t2,128(sp)
    6210:	240c0002 	li	t4,2
    6214:	26d01c24 	addiu	s0,s6,7204
    6218:	ac4a0004 	sw	t2,4(v0)
    621c:	864b13d0 	lh	t3,5072(s2)
    6220:	27a400f0 	addiu	a0,sp,240
    6224:	27a500e4 	addiu	a1,sp,228
    6228:	15610026 	bne	t3,at,62c4 <func_808D08F8+0x78c>
    622c:	00000000 	nop
    6230:	0c000000 	jal	0 <func_808CADC0>
    6234:	a64c13d0 	sh	t4,5072(s2)
    6238:	0c000000 	jal	0 <func_808CADC0>
    623c:	27a400fc 	addiu	a0,sp,252
    6240:	27a400fc 	addiu	a0,sp,252
    6244:	27a500dc 	addiu	a1,sp,220
    6248:	0c000000 	jal	0 <func_808CADC0>
    624c:	00003025 	move	a2,zero
    6250:	c7b000e4 	lwc1	$f16,228(sp)
    6254:	c7b200e8 	lwc1	$f18,232(sp)
    6258:	c7a400ec 	lwc1	$f4,236(sp)
    625c:	87a900dc 	lh	t1,220(sp)
    6260:	87ad00de 	lh	t5,222(sp)
    6264:	87ae00e0 	lh	t6,224(sp)
    6268:	262f00c8 	addiu	t7,s1,200
    626c:	afaf0028 	sw	t7,40(sp)
    6270:	02002025 	move	a0,s0
    6274:	02602825 	move	a1,s3
    6278:	02c03025 	move	a2,s6
    627c:	240700ad 	li	a3,173
    6280:	e7b00010 	swc1	$f16,16(sp)
    6284:	e7b20014 	swc1	$f18,20(sp)
    6288:	e7a40018 	swc1	$f4,24(sp)
    628c:	afa9001c 	sw	t1,28(sp)
    6290:	afad0020 	sw	t5,32(sp)
    6294:	0c000000 	jal	0 <func_808CADC0>
    6298:	afae0024 	sw	t6,36(sp)
    629c:	c6660050 	lwc1	$f6,80(s3)
    62a0:	46143202 	mul.s	$f8,$f6,$f20
    62a4:	e4480050 	swc1	$f8,80(v0)
    62a8:	c7b000d4 	lwc1	$f16,212(sp)
    62ac:	c66a0054 	lwc1	$f10,84(s3)
    62b0:	46105482 	mul.s	$f18,$f10,$f16
    62b4:	e4520054 	swc1	$f18,84(v0)
    62b8:	c6640058 	lwc1	$f4,88(s3)
    62bc:	46182182 	mul.s	$f6,$f4,$f24
    62c0:	e4460058 	swc1	$f6,88(v0)
    62c4:	1a200003 	blez	s1,62d4 <func_808D08F8+0x79c>
    62c8:	26240001 	addiu	a0,s1,1
    62cc:	0c000000 	jal	0 <func_808CADC0>
    62d0:	8fa5007c 	lw	a1,124(sp)
    62d4:	26310001 	addiu	s1,s1,1
    62d8:	00118c00 	sll	s1,s1,0x10
    62dc:	00118c03 	sra	s1,s1,0x10
    62e0:	2a210012 	slti	at,s1,18
    62e4:	1420ff10 	bnez	at,5f28 <func_808D08F8+0x3f0>
    62e8:	26b50040 	addiu	s5,s5,64
    62ec:	0c000000 	jal	0 <func_808CADC0>
    62f0:	00000000 	nop
    62f4:	3c040000 	lui	a0,0x0
    62f8:	0c000000 	jal	0 <func_808CADC0>
    62fc:	24840000 	addiu	a0,a0,0
    6300:	8e8202c0 	lw	v0,704(s4)
    6304:	3c19e700 	lui	t9,0xe700
    6308:	3c0afb00 	lui	t2,0xfb00
    630c:	24580008 	addiu	t8,v0,8
    6310:	ae9802c0 	sw	t8,704(s4)
    6314:	ac400004 	sw	zero,4(v0)
    6318:	ac590000 	sw	t9,0(v0)
    631c:	8e8202c0 	lw	v0,704(s4)
    6320:	2401ff00 	li	at,-256
    6324:	24480008 	addiu	t0,v0,8
    6328:	ae8802c0 	sw	t0,704(s4)
    632c:	ac4a0000 	sw	t2,0(v0)
    6330:	c6680274 	lwc1	$f8,628(s3)
    6334:	4600428d 	trunc.w.s	$f10,$f8
    6338:	440d5000 	mfc1	t5,$f10
    633c:	00000000 	nop
    6340:	31ae00ff 	andi	t6,t5,0xff
    6344:	01c17825 	or	t7,t6,at
    6348:	0c000000 	jal	0 <func_808CADC0>
    634c:	ac4f0004 	sw	t7,4(v0)
    6350:	86780222 	lh	t8,546(s3)
    6354:	3c190000 	lui	t9,0x0
    6358:	2b0100cc 	slti	at,t8,204
    635c:	14200004 	bnez	at,6370 <func_808D08F8+0x838>
    6360:	3c01c1a0 	lui	at,0xc1a0
    6364:	4481a000 	mtc1	at,$f20
    6368:	1000000b 	b	6398 <func_808D08F8+0x860>
    636c:	00000000 	nop
    6370:	3c0140a0 	lui	at,0x40a0
    6374:	44819000 	mtc1	at,$f18
    6378:	c6700068 	lwc1	$f16,104(s3)
    637c:	3c014120 	lui	at,0x4120
    6380:	44813000 	mtc1	at,$f6
    6384:	46128101 	sub.s	$f4,$f16,$f18
    6388:	3c01c120 	lui	at,0xc120
    638c:	44815000 	mtc1	at,$f10
    6390:	46062202 	mul.s	$f8,$f4,$f6
    6394:	46085501 	sub.s	$f20,$f10,$f8
    6398:	87390000 	lh	t9,0(t9)
    639c:	86680228 	lh	t0,552(s3)
    63a0:	24010064 	li	at,100
    63a4:	00003825 	move	a3,zero
    63a8:	03281021 	addu	v0,t9,t0
    63ac:	0041001a 	div	zero,v0,at
    63b0:	00001010 	mfhi	v0
    63b4:	00021400 	sll	v0,v0,0x10
    63b8:	00021403 	sra	v0,v0,0x10
    63bc:	00025080 	sll	t2,v0,0x2
    63c0:	01425023 	subu	t2,t2,v0
    63c4:	000a5080 	sll	t2,t2,0x2
    63c8:	026a8021 	addu	s0,s3,t2
    63cc:	c60c078c 	lwc1	$f12,1932(s0)
    63d0:	c60e0790 	lwc1	$f14,1936(s0)
    63d4:	0c000000 	jal	0 <func_808CADC0>
    63d8:	8e060794 	lw	a2,1940(s0)
    63dc:	c60c02e0 	lwc1	$f12,736(s0)
    63e0:	0c000000 	jal	0 <func_808CADC0>
    63e4:	24050001 	li	a1,1
    63e8:	c60c02dc 	lwc1	$f12,732(s0)
    63ec:	24050001 	li	a1,1
    63f0:	0c000000 	jal	0 <func_808CADC0>
    63f4:	46006307 	neg.s	$f12,$f12
    63f8:	866b00b8 	lh	t3,184(s3)
    63fc:	3c014700 	lui	at,0x4700
    6400:	44812000 	mtc1	at,$f4
    6404:	448b8000 	mtc1	t3,$f16
    6408:	3c010000 	lui	at,0x0
    640c:	c42a0000 	lwc1	$f10,0(at)
    6410:	468084a0 	cvt.s.w	$f18,$f16
    6414:	24050001 	li	a1,1
    6418:	46049183 	div.s	$f6,$f18,$f4
    641c:	460a3302 	mul.s	$f12,$f6,$f10
    6420:	0c000000 	jal	0 <func_808CADC0>
    6424:	00000000 	nop
    6428:	4406a000 	mfc1	a2,$f20
    642c:	4600d306 	mov.s	$f12,$f26
    6430:	4600d386 	mov.s	$f14,$f26
    6434:	0c000000 	jal	0 <func_808CADC0>
    6438:	24070001 	li	a3,1
    643c:	0c000000 	jal	0 <func_808CADC0>
    6440:	00000000 	nop
    6444:	4600d306 	mov.s	$f12,$f26
    6448:	4600d386 	mov.s	$f14,$f26
    644c:	3c0641c8 	lui	a2,0x41c8
    6450:	0c000000 	jal	0 <func_808CADC0>
    6454:	24070001 	li	a3,1
    6458:	3c040000 	lui	a0,0x0
    645c:	0c000000 	jal	0 <func_808CADC0>
    6460:	24840000 	addiu	a0,a0,0
    6464:	00002025 	move	a0,zero
    6468:	0c000000 	jal	0 <func_808CADC0>
    646c:	8fa5007c 	lw	a1,124(sp)
    6470:	0c000000 	jal	0 <func_808CADC0>
    6474:	00000000 	nop
    6478:	3c040000 	lui	a0,0x0
    647c:	0c000000 	jal	0 <func_808CADC0>
    6480:	24840000 	addiu	a0,a0,0
    6484:	c6680050 	lwc1	$f8,80(s3)
    6488:	c6700054 	lwc1	$f16,84(s3)
    648c:	c6720058 	lwc1	$f18,88(s3)
    6490:	46184302 	mul.s	$f12,$f8,$f24
    6494:	24070001 	li	a3,1
    6498:	46188382 	mul.s	$f14,$f16,$f24
    649c:	00000000 	nop
    64a0:	46189102 	mul.s	$f4,$f18,$f24
    64a4:	44062000 	mfc1	a2,$f4
    64a8:	0c000000 	jal	0 <func_808CADC0>
    64ac:	00000000 	nop
    64b0:	3c0c0000 	lui	t4,0x0
    64b4:	258c0000 	addiu	t4,t4,0
    64b8:	8e650150 	lw	a1,336(s3)
    64bc:	8e66016c 	lw	a2,364(s3)
    64c0:	3c070000 	lui	a3,0x0
    64c4:	24e70000 	addiu	a3,a3,0
    64c8:	afb30014 	sw	s3,20(sp)
    64cc:	afac0010 	sw	t4,16(sp)
    64d0:	0c000000 	jal	0 <func_808CADC0>
    64d4:	02c02025 	move	a0,s6
    64d8:	3c040000 	lui	a0,0x0
    64dc:	0c000000 	jal	0 <func_808CADC0>
    64e0:	24840000 	addiu	a0,a0,0
    64e4:	3c090000 	lui	t1,0x0
    64e8:	25290000 	addiu	t1,t1,0
    64ec:	8d2e0000 	lw	t6,0(t1)
    64f0:	27b000b0 	addiu	s0,sp,176
    64f4:	3c0f0000 	lui	t7,0x0
    64f8:	ae0e0000 	sw	t6,0(s0)
    64fc:	8d2d0004 	lw	t5,4(t1)
    6500:	25ef0000 	addiu	t7,t7,0
    6504:	27b200a4 	addiu	s2,sp,164
    6508:	ae0d0004 	sw	t5,4(s0)
    650c:	8d2e0008 	lw	t6,8(t1)
    6510:	ae0e0008 	sw	t6,8(s0)
    6514:	8df90000 	lw	t9,0(t7)
    6518:	ae590000 	sw	t9,0(s2)
    651c:	8df80004 	lw	t8,4(t7)
    6520:	ae580004 	sw	t8,4(s2)
    6524:	8df90008 	lw	t9,8(t7)
    6528:	ae590008 	sw	t9,8(s2)
    652c:	0c000000 	jal	0 <func_808CADC0>
    6530:	8ec40000 	lw	a0,0(s6)
    6534:	8e8202d0 	lw	v0,720(s4)
    6538:	3c0b0601 	lui	t3,0x601
    653c:	256b9168 	addiu	t3,t3,-28312
    6540:	24480008 	addiu	t0,v0,8
    6544:	ae8802d0 	sw	t0,720(s4)
    6548:	3c0ade00 	lui	t2,0xde00
    654c:	ac4a0000 	sw	t2,0(v0)
    6550:	ac4b0004 	sw	t3,4(v0)
    6554:	8e8302d0 	lw	v1,720(s4)
    6558:	3c09fa00 	lui	t1,0xfa00
    655c:	444df800 	cfc1	t5,$31
    6560:	246c0008 	addiu	t4,v1,8
    6564:	ae8c02d0 	sw	t4,720(s4)
    6568:	240e0001 	li	t6,1
    656c:	ac690000 	sw	t1,0(v1)
    6570:	44cef800 	ctc1	t6,$31
    6574:	c6660284 	lwc1	$f6,644(s3)
    6578:	3c11ff00 	lui	s1,0xff00
    657c:	460032a4 	cvt.w.s	$f10,$f6
    6580:	444ef800 	cfc1	t6,$31
    6584:	00000000 	nop
    6588:	31ce0078 	andi	t6,t6,0x78
    658c:	11c00012 	beqz	t6,65d8 <func_808D08F8+0xaa0>
    6590:	3c014f00 	lui	at,0x4f00
    6594:	44815000 	mtc1	at,$f10
    6598:	240e0001 	li	t6,1
    659c:	460a3281 	sub.s	$f10,$f6,$f10
    65a0:	44cef800 	ctc1	t6,$31
    65a4:	00000000 	nop
    65a8:	460052a4 	cvt.w.s	$f10,$f10
    65ac:	444ef800 	cfc1	t6,$31
    65b0:	00000000 	nop
    65b4:	31ce0078 	andi	t6,t6,0x78
    65b8:	15c00005 	bnez	t6,65d0 <func_808D08F8+0xa98>
    65bc:	00000000 	nop
    65c0:	440e5000 	mfc1	t6,$f10
    65c4:	3c018000 	lui	at,0x8000
    65c8:	10000007 	b	65e8 <func_808D08F8+0xab0>
    65cc:	01c17025 	or	t6,t6,at
    65d0:	10000005 	b	65e8 <func_808D08F8+0xab0>
    65d4:	240effff 	li	t6,-1
    65d8:	440e5000 	mfc1	t6,$f10
    65dc:	00000000 	nop
    65e0:	05c0fffb 	bltz	t6,65d0 <func_808D08F8+0xa98>
    65e4:	00000000 	nop
    65e8:	31cf00ff 	andi	t7,t6,0xff
    65ec:	000fc400 	sll	t8,t7,0x10
    65f0:	0311c825 	or	t9,t8,s1
    65f4:	372800ff 	ori	t0,t9,0xff
    65f8:	44cdf800 	ctc1	t5,$31
    65fc:	0c000000 	jal	0 <func_808CADC0>
    6600:	ac680004 	sw	t0,4(v1)
    6604:	02002025 	move	a0,s0
    6608:	0c000000 	jal	0 <func_808CADC0>
    660c:	26650fe4 	addiu	a1,s3,4068
    6610:	26700c9c 	addiu	s0,s3,3228
    6614:	266a0f6c 	addiu	t2,s3,3948
    6618:	afaa0010 	sw	t2,16(sp)
    661c:	02003825 	move	a3,s0
    6620:	02c02025 	move	a0,s6
    6624:	02602825 	move	a1,s3
    6628:	26660e04 	addiu	a2,s3,3588
    662c:	0c000000 	jal	0 <func_808CADC0>
    6630:	afa00014 	sw	zero,20(sp)
    6634:	0c000000 	jal	0 <func_808CADC0>
    6638:	00000000 	nop
    663c:	8e8302d0 	lw	v1,720(s4)
    6640:	3c0cfa00 	lui	t4,0xfa00
    6644:	4449f800 	cfc1	t1,$31
    6648:	246b0008 	addiu	t3,v1,8
    664c:	ae8b02d0 	sw	t3,720(s4)
    6650:	240d0001 	li	t5,1
    6654:	ac6c0000 	sw	t4,0(v1)
    6658:	44cdf800 	ctc1	t5,$31
    665c:	c6680288 	lwc1	$f8,648(s3)
    6660:	46004424 	cvt.w.s	$f16,$f8
    6664:	444df800 	cfc1	t5,$31
    6668:	00000000 	nop
    666c:	31ad0078 	andi	t5,t5,0x78
    6670:	11a00012 	beqz	t5,66bc <func_808D08F8+0xb84>
    6674:	3c014f00 	lui	at,0x4f00
    6678:	44818000 	mtc1	at,$f16
    667c:	240d0001 	li	t5,1
    6680:	46104401 	sub.s	$f16,$f8,$f16
    6684:	44cdf800 	ctc1	t5,$31
    6688:	00000000 	nop
    668c:	46008424 	cvt.w.s	$f16,$f16
    6690:	444df800 	cfc1	t5,$31
    6694:	00000000 	nop
    6698:	31ad0078 	andi	t5,t5,0x78
    669c:	15a00005 	bnez	t5,66b4 <func_808D08F8+0xb7c>
    66a0:	00000000 	nop
    66a4:	440d8000 	mfc1	t5,$f16
    66a8:	3c018000 	lui	at,0x8000
    66ac:	10000007 	b	66cc <func_808D08F8+0xb94>
    66b0:	01a16825 	or	t5,t5,at
    66b4:	10000005 	b	66cc <func_808D08F8+0xb94>
    66b8:	240dffff 	li	t5,-1
    66bc:	440d8000 	mfc1	t5,$f16
    66c0:	00000000 	nop
    66c4:	05a0fffb 	bltz	t5,66b4 <func_808D08F8+0xb7c>
    66c8:	00000000 	nop
    66cc:	31ae00ff 	andi	t6,t5,0xff
    66d0:	000e7c00 	sll	t7,t6,0x10
    66d4:	01f1c025 	or	t8,t7,s1
    66d8:	371900ff 	ori	t9,t8,0xff
    66dc:	44c9f800 	ctc1	t1,$31
    66e0:	0c000000 	jal	0 <func_808CADC0>
    66e4:	ac790004 	sw	t9,4(v1)
    66e8:	02402025 	move	a0,s2
    66ec:	0c000000 	jal	0 <func_808CADC0>
    66f0:	266511d0 	addiu	a1,s3,4560
    66f4:	26681158 	addiu	t0,s3,4440
    66f8:	240a0001 	li	t2,1
    66fc:	afaa0014 	sw	t2,20(sp)
    6700:	afa80010 	sw	t0,16(sp)
    6704:	02c02025 	move	a0,s6
    6708:	02602825 	move	a1,s3
    670c:	26660ff0 	addiu	a2,s3,4080
    6710:	0c000000 	jal	0 <func_808CADC0>
    6714:	02003825 	move	a3,s0
    6718:	0c000000 	jal	0 <func_808CADC0>
    671c:	00000000 	nop
    6720:	8e8302d0 	lw	v1,720(s4)
    6724:	3c0cfa00 	lui	t4,0xfa00
    6728:	4449f800 	cfc1	t1,$31
    672c:	246b0008 	addiu	t3,v1,8
    6730:	ae8b02d0 	sw	t3,720(s4)
    6734:	240d0001 	li	t5,1
    6738:	ac6c0000 	sw	t4,0(v1)
    673c:	44cdf800 	ctc1	t5,$31
    6740:	c672028c 	lwc1	$f18,652(s3)
    6744:	3c014f00 	lui	at,0x4f00
    6748:	46009124 	cvt.w.s	$f4,$f18
    674c:	444df800 	cfc1	t5,$31
    6750:	00000000 	nop
    6754:	31ad0078 	andi	t5,t5,0x78
    6758:	51a00013 	beqzl	t5,67a8 <func_808D08F8+0xc70>
    675c:	440d2000 	mfc1	t5,$f4
    6760:	44812000 	mtc1	at,$f4
    6764:	240d0001 	li	t5,1
    6768:	46049101 	sub.s	$f4,$f18,$f4
    676c:	44cdf800 	ctc1	t5,$31
    6770:	00000000 	nop
    6774:	46002124 	cvt.w.s	$f4,$f4
    6778:	444df800 	cfc1	t5,$31
    677c:	00000000 	nop
    6780:	31ad0078 	andi	t5,t5,0x78
    6784:	15a00005 	bnez	t5,679c <func_808D08F8+0xc64>
    6788:	00000000 	nop
    678c:	440d2000 	mfc1	t5,$f4
    6790:	3c018000 	lui	at,0x8000
    6794:	10000007 	b	67b4 <func_808D08F8+0xc7c>
    6798:	01a16825 	or	t5,t5,at
    679c:	10000005 	b	67b4 <func_808D08F8+0xc7c>
    67a0:	240dffff 	li	t5,-1
    67a4:	440d2000 	mfc1	t5,$f4
    67a8:	00000000 	nop
    67ac:	05a0fffb 	bltz	t5,679c <func_808D08F8+0xc64>
    67b0:	00000000 	nop
    67b4:	31ae00ff 	andi	t6,t5,0xff
    67b8:	000e7c00 	sll	t7,t6,0x10
    67bc:	01f1c025 	or	t8,t7,s1
    67c0:	371900ff 	ori	t9,t8,0xff
    67c4:	44c9f800 	ctc1	t1,$31
    67c8:	0c000000 	jal	0 <func_808CADC0>
    67cc:	ac790004 	sw	t9,4(v1)
    67d0:	3c01bf80 	lui	at,0xbf80
    67d4:	44815000 	mtc1	at,$f10
    67d8:	c7a600a4 	lwc1	$f6,164(sp)
    67dc:	02402025 	move	a0,s2
    67e0:	266513bc 	addiu	a1,s3,5052
    67e4:	460a3202 	mul.s	$f8,$f6,$f10
    67e8:	0c000000 	jal	0 <func_808CADC0>
    67ec:	e7a800a4 	swc1	$f8,164(sp)
    67f0:	26681344 	addiu	t0,s3,4932
    67f4:	240a0002 	li	t2,2
    67f8:	afaa0014 	sw	t2,20(sp)
    67fc:	afa80010 	sw	t0,16(sp)
    6800:	02c02025 	move	a0,s6
    6804:	02602825 	move	a1,s3
    6808:	266611dc 	addiu	a2,s3,4572
    680c:	0c000000 	jal	0 <func_808CADC0>
    6810:	02003825 	move	a3,s0
    6814:	0c000000 	jal	0 <func_808CADC0>
    6818:	00000000 	nop
    681c:	0c000000 	jal	0 <func_808CADC0>
    6820:	00000000 	nop
    6824:	3c040000 	lui	a0,0x0
    6828:	0c000000 	jal	0 <func_808CADC0>
    682c:	24840000 	addiu	a0,a0,0
    6830:	3c060000 	lui	a2,0x0
    6834:	24c60000 	addiu	a2,a2,0
    6838:	27a40158 	addiu	a0,sp,344
    683c:	8ec50000 	lw	a1,0(s6)
    6840:	0c000000 	jal	0 <func_808CADC0>
    6844:	2407137b 	li	a3,4987
    6848:	8fbf0074 	lw	ra,116(sp)
    684c:	d7b40038 	ldc1	$f20,56(sp)
    6850:	d7b60040 	ldc1	$f22,64(sp)
    6854:	d7b80048 	ldc1	$f24,72(sp)
    6858:	d7ba0050 	ldc1	$f26,80(sp)
    685c:	8fb00058 	lw	s0,88(sp)
    6860:	8fb1005c 	lw	s1,92(sp)
    6864:	8fb20060 	lw	s2,96(sp)
    6868:	8fb30064 	lw	s3,100(sp)
    686c:	8fb40068 	lw	s4,104(sp)
    6870:	8fb5006c 	lw	s5,108(sp)
    6874:	8fb60070 	lw	s6,112(sp)
    6878:	03e00008 	jr	ra
    687c:	27bd0178 	addiu	sp,sp,376
