
build/src/overlays/actors/ovl_En_Vali/z_en_vali.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnVali_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb10028 	sw	s1,40(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb00024 	sw	s0,36(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnVali_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c060000 	lui	a2,0x0
      28:	24c60000 	addiu	a2,a2,0
      2c:	260400b4 	addiu	a0,s0,180
      30:	24050000 	li	a1,0
      34:	0c000000 	jal	0 <EnVali_Init>
      38:	3c0741d8 	lui	a3,0x41d8
      3c:	240e009b 	li	t6,155
      40:	a20e00c8 	sb	t6,200(s0)
      44:	3c060600 	lui	a2,0x600
      48:	3c070600 	lui	a3,0x600
      4c:	260f0198 	addiu	t7,s0,408
      50:	26180246 	addiu	t8,s0,582
      54:	2419001d 	li	t9,29
      58:	afb90018 	sw	t9,24(sp)
      5c:	afb80014 	sw	t8,20(sp)
      60:	afaf0010 	sw	t7,16(sp)
      64:	24e714ac 	addiu	a3,a3,5292
      68:	24c64848 	addiu	a2,a2,18504
      6c:	02202025 	move	a0,s1
      70:	0c000000 	jal	0 <EnVali_Init>
      74:	2605014c 	addiu	a1,s0,332
      78:	260502fc 	addiu	a1,s0,764
      7c:	afa50030 	sw	a1,48(sp)
      80:	0c000000 	jal	0 <EnVali_Init>
      84:	02202025 	move	a0,s1
      88:	3c070000 	lui	a3,0x0
      8c:	8fa50030 	lw	a1,48(sp)
      90:	24e70000 	addiu	a3,a3,0
      94:	02202025 	move	a0,s1
      98:	0c000000 	jal	0 <EnVali_Init>
      9c:	02003025 	move	a2,s0
      a0:	2605037c 	addiu	a1,s0,892
      a4:	afa50030 	sw	a1,48(sp)
      a8:	0c000000 	jal	0 <EnVali_Init>
      ac:	02202025 	move	a0,s1
      b0:	3c070000 	lui	a3,0x0
      b4:	8fa50030 	lw	a1,48(sp)
      b8:	24e70000 	addiu	a3,a3,0
      bc:	02202025 	move	a0,s1
      c0:	0c000000 	jal	0 <EnVali_Init>
      c4:	02003025 	move	a2,s0
      c8:	260503fc 	addiu	a1,s0,1020
      cc:	afa50030 	sw	a1,48(sp)
      d0:	0c000000 	jal	0 <EnVali_Init>
      d4:	02202025 	move	a0,s1
      d8:	3c070000 	lui	a3,0x0
      dc:	8fa50030 	lw	a1,48(sp)
      e0:	24e70000 	addiu	a3,a3,0
      e4:	02202025 	move	a0,s1
      e8:	0c000000 	jal	0 <EnVali_Init>
      ec:	02003025 	move	a2,s0
      f0:	3c050000 	lui	a1,0x0
      f4:	3c060000 	lui	a2,0x0
      f8:	24c60000 	addiu	a2,a2,0
      fc:	24a50000 	addiu	a1,a1,0
     100:	0c000000 	jal	0 <EnVali_Init>
     104:	26040098 	addiu	a0,s0,152
     108:	0c000000 	jal	0 <EnVali_Init>
     10c:	02002025 	move	a0,s0
     110:	8e080004 	lw	t0,4(s0)
     114:	2401fffe 	li	at,-2
     118:	260a0024 	addiu	t2,s0,36
     11c:	01014824 	and	t1,t0,at
     120:	ae090004 	sw	t1,4(s0)
     124:	afaa0010 	sw	t2,16(sp)
     128:	262407c0 	addiu	a0,s1,1984
     12c:	26050078 	addiu	a1,s0,120
     130:	27a60034 	addiu	a2,sp,52
     134:	0c000000 	jal	0 <EnVali_Init>
     138:	02003825 	move	a3,s0
     13c:	3c01c6fa 	lui	at,0xc6fa
     140:	44812000 	mtc1	at,$f4
     144:	e6000080 	swc1	$f0,128(s0)
     148:	a600001c 	sh	zero,28(s0)
     14c:	46040032 	c.eq.s	$f0,$f4
     150:	00000000 	nop
     154:	45020004 	bc1fl	168 <EnVali_Init+0x168>
     158:	8fbf002c 	lw	ra,44(sp)
     15c:	0c000000 	jal	0 <EnVali_Init>
     160:	02002025 	move	a0,s0
     164:	8fbf002c 	lw	ra,44(sp)
     168:	8fb00024 	lw	s0,36(sp)
     16c:	8fb10028 	lw	s1,40(sp)
     170:	03e00008 	jr	ra
     174:	27bd0040 	addiu	sp,sp,64

00000178 <EnVali_Destroy>:
     178:	27bdffe8 	addiu	sp,sp,-24
     17c:	afa40018 	sw	a0,24(sp)
     180:	afa5001c 	sw	a1,28(sp)
     184:	00a02025 	move	a0,a1
     188:	8fa50018 	lw	a1,24(sp)
     18c:	afbf0014 	sw	ra,20(sp)
     190:	0c000000 	jal	0 <EnVali_Init>
     194:	24a502fc 	addiu	a1,a1,764
     198:	8fa50018 	lw	a1,24(sp)
     19c:	8fa4001c 	lw	a0,28(sp)
     1a0:	0c000000 	jal	0 <EnVali_Init>
     1a4:	24a5037c 	addiu	a1,a1,892
     1a8:	8fa50018 	lw	a1,24(sp)
     1ac:	8fa4001c 	lw	a0,28(sp)
     1b0:	0c000000 	jal	0 <EnVali_Init>
     1b4:	24a503fc 	addiu	a1,a1,1020
     1b8:	8fbf0014 	lw	ra,20(sp)
     1bc:	27bd0018 	addiu	sp,sp,24
     1c0:	03e00008 	jr	ra
     1c4:	00000000 	nop

000001c8 <func_80B26878>:
     1c8:	27bdffe8 	addiu	sp,sp,-24
     1cc:	afbf0014 	sw	ra,20(sp)
     1d0:	00803025 	move	a2,a0
     1d4:	3c050600 	lui	a1,0x600
     1d8:	24a514ac 	addiu	a1,a1,5292
     1dc:	afa60018 	sw	a2,24(sp)
     1e0:	0c000000 	jal	0 <EnVali_Init>
     1e4:	2484014c 	addiu	a0,a0,332
     1e8:	8fa60018 	lw	a2,24(sp)
     1ec:	3c180000 	lui	t8,0x0
     1f0:	27180000 	addiu	t8,t8,0
     1f4:	90ce040d 	lbu	t6,1037(a2)
     1f8:	acc00134 	sw	zero,308(a2)
     1fc:	acd80190 	sw	t8,400(a2)
     200:	31cffffe 	andi	t7,t6,0xfffe
     204:	a0cf040d 	sb	t7,1037(a2)
     208:	8fbf0014 	lw	ra,20(sp)
     20c:	27bd0018 	addiu	sp,sp,24
     210:	03e00008 	jr	ra
     214:	00000000 	nop

00000218 <func_80B268C8>:
     218:	8c8f0004 	lw	t7,4(a0)
     21c:	3c013f80 	lui	at,0x3f80
     220:	44812000 	mtc1	at,$f4
     224:	3c0e0000 	lui	t6,0x0
     228:	3c190000 	lui	t9,0x0
     22c:	25ce0000 	addiu	t6,t6,0
     230:	27390000 	addiu	t9,t9,0
     234:	35f80001 	ori	t8,t7,0x1
     238:	ac8e0134 	sw	t6,308(a0)
     23c:	ac980004 	sw	t8,4(a0)
     240:	ac990190 	sw	t9,400(a0)
     244:	03e00008 	jr	ra
     248:	e4840060 	swc1	$f4,96(a0)

0000024c <func_80B268FC>:
     24c:	27bdff70 	addiu	sp,sp,-144
     250:	afbf0014 	sw	ra,20(sp)
     254:	00803825 	move	a3,a0
     258:	3c050600 	lui	a1,0x600
     25c:	24a50710 	addiu	a1,a1,1808
     260:	afa70090 	sw	a3,144(sp)
     264:	2484014c 	addiu	a0,a0,332
     268:	0c000000 	jal	0 <EnVali_Init>
     26c:	3c06c040 	lui	a2,0xc040
     270:	8fa70090 	lw	a3,144(sp)
     274:	27a2003c 	addiu	v0,sp,60
     278:	27a30048 	addiu	v1,sp,72
     27c:	8cef0024 	lw	t7,36(a3)
     280:	27a40054 	addiu	a0,sp,84
     284:	27a50060 	addiu	a1,sp,96
     288:	ac4f0000 	sw	t7,0(v0)
     28c:	8cee0028 	lw	t6,40(a3)
     290:	8c590000 	lw	t9,0(v0)
     294:	27a6006c 	addiu	a2,sp,108
     298:	ac4e0004 	sw	t6,4(v0)
     29c:	8cef002c 	lw	t7,44(a3)
     2a0:	27a80078 	addiu	t0,sp,120
     2a4:	27a90084 	addiu	t1,sp,132
     2a8:	ac4f0008 	sw	t7,8(v0)
     2ac:	acf903c8 	sw	t9,968(a3)
     2b0:	8c580004 	lw	t8,4(v0)
     2b4:	3c014120 	lui	at,0x4120
     2b8:	44812000 	mtc1	at,$f4
     2bc:	acf803cc 	sw	t8,972(a3)
     2c0:	8c590008 	lw	t9,8(v0)
     2c4:	2401ffef 	li	at,-17
     2c8:	acf903d0 	sw	t9,976(a3)
     2cc:	8c4b0000 	lw	t3,0(v0)
     2d0:	8c4a0004 	lw	t2,4(v0)
     2d4:	ac6b0000 	sw	t3,0(v1)
     2d8:	8c4b0008 	lw	t3,8(v0)
     2dc:	8c6d0000 	lw	t5,0(v1)
     2e0:	ac6a0004 	sw	t2,4(v1)
     2e4:	ac6b0008 	sw	t3,8(v1)
     2e8:	aced03bc 	sw	t5,956(a3)
     2ec:	8c6c0004 	lw	t4,4(v1)
     2f0:	acec03c0 	sw	t4,960(a3)
     2f4:	8c6d0008 	lw	t5,8(v1)
     2f8:	aced03c4 	sw	t5,964(a3)
     2fc:	8c6f0000 	lw	t7,0(v1)
     300:	8c6e0004 	lw	t6,4(v1)
     304:	ac8f0000 	sw	t7,0(a0)
     308:	8c6f0008 	lw	t7,8(v1)
     30c:	8c990000 	lw	t9,0(a0)
     310:	ac8e0004 	sw	t6,4(a0)
     314:	ac8f0008 	sw	t7,8(a0)
     318:	acf90348 	sw	t9,840(a3)
     31c:	8c980004 	lw	t8,4(a0)
     320:	acf8034c 	sw	t8,844(a3)
     324:	8c990008 	lw	t9,8(a0)
     328:	acf90350 	sw	t9,848(a3)
     32c:	8c8b0000 	lw	t3,0(a0)
     330:	8c8a0004 	lw	t2,4(a0)
     334:	acab0000 	sw	t3,0(a1)
     338:	8c8b0008 	lw	t3,8(a0)
     33c:	8cad0000 	lw	t5,0(a1)
     340:	acaa0004 	sw	t2,4(a1)
     344:	acab0008 	sw	t3,8(a1)
     348:	aced033c 	sw	t5,828(a3)
     34c:	8cac0004 	lw	t4,4(a1)
     350:	acec0340 	sw	t4,832(a3)
     354:	8cad0008 	lw	t5,8(a1)
     358:	aced0344 	sw	t5,836(a3)
     35c:	8caf0000 	lw	t7,0(a1)
     360:	8cae0004 	lw	t6,4(a1)
     364:	accf0000 	sw	t7,0(a2)
     368:	8caf0008 	lw	t7,8(a1)
     36c:	8cd90000 	lw	t9,0(a2)
     370:	acce0004 	sw	t6,4(a2)
     374:	accf0008 	sw	t7,8(a2)
     378:	acf903e0 	sw	t9,992(a3)
     37c:	8cd80004 	lw	t8,4(a2)
     380:	acf803e4 	sw	t8,996(a3)
     384:	8cd90008 	lw	t9,8(a2)
     388:	acf903e8 	sw	t9,1000(a3)
     38c:	8ccb0000 	lw	t3,0(a2)
     390:	8cca0004 	lw	t2,4(a2)
     394:	ad0b0000 	sw	t3,0(t0)
     398:	8ccb0008 	lw	t3,8(a2)
     39c:	8d0d0000 	lw	t5,0(t0)
     3a0:	ad0a0004 	sw	t2,4(t0)
     3a4:	ad0b0008 	sw	t3,8(t0)
     3a8:	aced03d4 	sw	t5,980(a3)
     3ac:	8d0c0004 	lw	t4,4(t0)
     3b0:	acec03d8 	sw	t4,984(a3)
     3b4:	8d0d0008 	lw	t5,8(t0)
     3b8:	aced03dc 	sw	t5,988(a3)
     3bc:	8d0f0000 	lw	t7,0(t0)
     3c0:	8d0e0004 	lw	t6,4(t0)
     3c4:	ad2f0000 	sw	t7,0(t1)
     3c8:	8d0f0008 	lw	t7,8(t0)
     3cc:	8d390000 	lw	t9,0(t1)
     3d0:	ad2e0004 	sw	t6,4(t1)
     3d4:	ad2f0008 	sw	t7,8(t1)
     3d8:	acf90360 	sw	t9,864(a3)
     3dc:	8d380004 	lw	t8,4(t1)
     3e0:	c4e20028 	lwc1	$f2,40(a3)
     3e4:	8cec0004 	lw	t4,4(a3)
     3e8:	acf80364 	sw	t8,868(a3)
     3ec:	8d390008 	lw	t9,8(t1)
     3f0:	46041001 	sub.s	$f0,$f2,$f4
     3f4:	90ee040d 	lbu	t6,1037(a3)
     3f8:	acf90368 	sw	t9,872(a3)
     3fc:	8d2b0000 	lw	t3,0(t1)
     400:	3c180000 	lui	t8,0x0
     404:	27180000 	addiu	t8,t8,0
     408:	aceb0354 	sw	t3,852(a3)
     40c:	8d2a0004 	lw	t2,4(t1)
     410:	01816824 	and	t5,t4,at
     414:	35cf0001 	ori	t7,t6,0x1
     418:	acea0358 	sw	t2,856(a3)
     41c:	8d2b0008 	lw	t3,8(t1)
     420:	e4e00358 	swc1	$f0,856(a3)
     424:	e4e00364 	swc1	$f0,868(a3)
     428:	e4e003d8 	swc1	$f0,984(a3)
     42c:	e4e003e4 	swc1	$f0,996(a3)
     430:	e4e00340 	swc1	$f0,832(a3)
     434:	e4e0034c 	swc1	$f0,844(a3)
     438:	e4e003c0 	swc1	$f0,960(a3)
     43c:	e4e003cc 	swc1	$f0,972(a3)
     440:	aced0004 	sw	t5,4(a3)
     444:	a0ef040d 	sb	t7,1037(a3)
     448:	a0e00195 	sb	zero,405(a3)
     44c:	acf80190 	sw	t8,400(a3)
     450:	e4e202f8 	swc1	$f2,760(a3)
     454:	aceb035c 	sw	t3,860(a3)
     458:	8fbf0014 	lw	ra,20(sp)
     45c:	27bd0090 	addiu	sp,sp,144
     460:	03e00008 	jr	ra
     464:	00000000 	nop

00000468 <func_80B26B18>:
     468:	8c8f0004 	lw	t7,4(a0)
     46c:	9099040d 	lbu	t9,1037(a0)
     470:	2401fffe 	li	at,-2
     474:	3c090000 	lui	t1,0x0
     478:	240e0014 	li	t6,20
     47c:	25290000 	addiu	t1,t1,0
     480:	01e1c024 	and	t8,t7,at
     484:	03214024 	and	t0,t9,at
     488:	a08e0194 	sb	t6,404(a0)
     48c:	ac980004 	sw	t8,4(a0)
     490:	a088040d 	sb	t0,1037(a0)
     494:	03e00008 	jr	ra
     498:	ac890190 	sw	t1,400(a0)

0000049c <func_80B26B4C>:
     49c:	27bdffd8 	addiu	sp,sp,-40
     4a0:	afb00020 	sw	s0,32(sp)
     4a4:	00808025 	move	s0,a0
     4a8:	afbf0024 	sw	ra,36(sp)
     4ac:	3c050600 	lui	a1,0x600
     4b0:	24a50854 	addiu	a1,a1,2132
     4b4:	2484014c 	addiu	a0,a0,332
     4b8:	0c000000 	jal	0 <EnVali_Init>
     4bc:	3c06c0a0 	lui	a2,0xc0a0
     4c0:	240e001e 	li	t6,30
     4c4:	afae0010 	sw	t6,16(sp)
     4c8:	02002025 	move	a0,s0
     4cc:	24054000 	li	a1,16384
     4d0:	24060096 	li	a2,150
     4d4:	0c000000 	jal	0 <EnVali_Init>
     4d8:	24072000 	li	a3,8192
     4dc:	920f040d 	lbu	t7,1037(s0)
     4e0:	3c190000 	lui	t9,0x0
     4e4:	27390000 	addiu	t9,t9,0
     4e8:	31f8fffe 	andi	t8,t7,0xfffe
     4ec:	a600001c 	sh	zero,28(s0)
     4f0:	a218040d 	sb	t8,1037(s0)
     4f4:	ae190190 	sw	t9,400(s0)
     4f8:	8fbf0024 	lw	ra,36(sp)
     4fc:	8fb00020 	lw	s0,32(sp)
     500:	27bd0028 	addiu	sp,sp,40
     504:	03e00008 	jr	ra
     508:	00000000 	nop

0000050c <func_80B26BBC>:
     50c:	27bdffe8 	addiu	sp,sp,-24
     510:	afbf0014 	sw	ra,20(sp)
     514:	afa40018 	sw	a0,24(sp)
     518:	3c050600 	lui	a1,0x600
     51c:	24a50b34 	addiu	a1,a1,2868
     520:	0c000000 	jal	0 <EnVali_Init>
     524:	2484014c 	addiu	a0,a0,332
     528:	8faf0018 	lw	t7,24(sp)
     52c:	3c0e0000 	lui	t6,0x0
     530:	25ce0000 	addiu	t6,t6,0
     534:	adee0190 	sw	t6,400(t7)
     538:	8fbf0014 	lw	ra,20(sp)
     53c:	27bd0018 	addiu	sp,sp,24
     540:	03e00008 	jr	ra
     544:	00000000 	nop

00000548 <func_80B26BF8>:
     548:	27bdffe0 	addiu	sp,sp,-32
     54c:	afbf001c 	sw	ra,28(sp)
     550:	908f040d 	lbu	t7,1037(a0)
     554:	240e0002 	li	t6,2
     558:	a48e0196 	sh	t6,406(a0)
     55c:	31f8fffe 	andi	t8,t7,0xfffe
     560:	a098040d 	sb	t8,1037(a0)
     564:	2419001e 	li	t9,30
     568:	afb90010 	sw	t9,16(sp)
     56c:	afa40020 	sw	a0,32(sp)
     570:	24054000 	li	a1,16384
     574:	24060096 	li	a2,150
     578:	0c000000 	jal	0 <EnVali_Init>
     57c:	24072000 	li	a3,8192
     580:	8fa40020 	lw	a0,32(sp)
     584:	3c080000 	lui	t0,0x0
     588:	25080000 	addiu	t0,t0,0
     58c:	ac880190 	sw	t0,400(a0)
     590:	8fbf001c 	lw	ra,28(sp)
     594:	27bd0020 	addiu	sp,sp,32
     598:	03e00008 	jr	ra
     59c:	00000000 	nop

000005a0 <func_80B26C50>:
     5a0:	27bdffb8 	addiu	sp,sp,-72
     5a4:	afb40040 	sw	s4,64(sp)
     5a8:	afb3003c 	sw	s3,60(sp)
     5ac:	afb20038 	sw	s2,56(sp)
     5b0:	afb10034 	sw	s1,52(sp)
     5b4:	afb00030 	sw	s0,48(sp)
     5b8:	00808025 	move	s0,a0
     5bc:	00a0a025 	move	s4,a1
     5c0:	afbf0044 	sw	ra,68(sp)
     5c4:	00008825 	move	s1,zero
     5c8:	24b21c24 	addiu	s2,a1,7204
     5cc:	24130003 	li	s3,3
     5d0:	c6040028 	lwc1	$f4,40(s0)
     5d4:	8e070024 	lw	a3,36(s0)
     5d8:	02402025 	move	a0,s2
     5dc:	e7a40010 	swc1	$f4,16(sp)
     5e0:	c606002c 	lwc1	$f6,44(s0)
     5e4:	afa00018 	sw	zero,24(sp)
     5e8:	02802825 	move	a1,s4
     5ec:	e7a60014 	swc1	$f6,20(sp)
     5f0:	860e0032 	lh	t6,50(s0)
     5f4:	afa00024 	sw	zero,36(sp)
     5f8:	afa00020 	sw	zero,32(sp)
     5fc:	24060034 	li	a2,52
     600:	0c000000 	jal	0 <EnVali_Init>
     604:	afae001c 	sw	t6,28(sp)
     608:	860f0032 	lh	t7,50(s0)
     60c:	26310001 	addiu	s1,s1,1
     610:	25f85555 	addiu	t8,t7,21845
     614:	1633ffee 	bne	s1,s3,5d0 <func_80B26C50+0x30>
     618:	a6180032 	sh	t8,50(s0)
     61c:	26110024 	addiu	s1,s0,36
     620:	02203025 	move	a2,s1
     624:	02802025 	move	a0,s4
     628:	02002825 	move	a1,s0
     62c:	0c000000 	jal	0 <EnVali_Init>
     630:	24070050 	li	a3,80
     634:	2404000a 	li	a0,10
     638:	0c000000 	jal	0 <EnVali_Init>
     63c:	2405000a 	li	a1,10
     640:	9219040d 	lbu	t9,1037(s0)
     644:	a6020196 	sh	v0,406(s0)
     648:	02802025 	move	a0,s4
     64c:	3328fffe 	andi	t0,t9,0xfffe
     650:	a208040d 	sb	t0,1037(s0)
     654:	02202825 	move	a1,s1
     658:	24060028 	li	a2,40
     65c:	0c000000 	jal	0 <EnVali_Init>
     660:	24073887 	li	a3,14471
     664:	8e090004 	lw	t1,4(s0)
     668:	2401fffe 	li	at,-2
     66c:	3c0b0000 	lui	t3,0x0
     670:	256b0000 	addiu	t3,t3,0
     674:	01215024 	and	t2,t1,at
     678:	ae0a0004 	sw	t2,4(s0)
     67c:	ae000134 	sw	zero,308(s0)
     680:	ae0b0190 	sw	t3,400(s0)
     684:	8fbf0044 	lw	ra,68(sp)
     688:	8fb40040 	lw	s4,64(sp)
     68c:	8fb3003c 	lw	s3,60(sp)
     690:	8fb20038 	lw	s2,56(sp)
     694:	8fb10034 	lw	s1,52(sp)
     698:	8fb00030 	lw	s0,48(sp)
     69c:	03e00008 	jr	ra
     6a0:	27bd0048 	addiu	sp,sp,72

000006a4 <func_80B26D54>:
     6a4:	27bdffd8 	addiu	sp,sp,-40
     6a8:	afb00020 	sw	s0,32(sp)
     6ac:	00808025 	move	s0,a0
     6b0:	afbf0024 	sw	ra,36(sp)
     6b4:	3c050600 	lui	a1,0x600
     6b8:	24a50710 	addiu	a1,a1,1808
     6bc:	2484014c 	addiu	a0,a0,332
     6c0:	0c000000 	jal	0 <EnVali_Init>
     6c4:	3c064120 	lui	a2,0x4120
     6c8:	44802000 	mtc1	zero,$f4
     6cc:	240e0050 	li	t6,80
     6d0:	a60e0196 	sh	t6,406(s0)
     6d4:	240f0050 	li	t7,80
     6d8:	e6040060 	swc1	$f4,96(s0)
     6dc:	afaf0010 	sw	t7,16(sp)
     6e0:	02002025 	move	a0,s0
     6e4:	00002825 	move	a1,zero
     6e8:	240600ff 	li	a2,255
     6ec:	0c000000 	jal	0 <EnVali_Init>
     6f0:	24072000 	li	a3,8192
     6f4:	a2000420 	sb	zero,1056(s0)
     6f8:	02002025 	move	a0,s0
     6fc:	0c000000 	jal	0 <EnVali_Init>
     700:	2405389e 	li	a1,14494
     704:	3c013f80 	lui	at,0x3f80
     708:	44813000 	mtc1	at,$f6
     70c:	3c180000 	lui	t8,0x0
     710:	27180000 	addiu	t8,t8,0
     714:	ae180190 	sw	t8,400(s0)
     718:	e6060060 	swc1	$f6,96(s0)
     71c:	8fbf0024 	lw	ra,36(sp)
     720:	8fb00020 	lw	s0,32(sp)
     724:	27bd0028 	addiu	sp,sp,40
     728:	03e00008 	jr	ra
     72c:	00000000 	nop

00000730 <func_80B26DE0>:
     730:	44802000 	mtc1	zero,$f4
     734:	27bdffe0 	addiu	sp,sp,-32
     738:	afbf001c 	sw	ra,28(sp)
     73c:	240e0024 	li	t6,36
     740:	e4840060 	swc1	$f4,96(a0)
     744:	afa40020 	sw	a0,32(sp)
     748:	afae0010 	sw	t6,16(sp)
     74c:	00002825 	move	a1,zero
     750:	240600ff 	li	a2,255
     754:	0c000000 	jal	0 <EnVali_Init>
     758:	24072000 	li	a3,8192
     75c:	8fa40020 	lw	a0,32(sp)
     760:	3c080000 	lui	t0,0x0
     764:	24190024 	li	t9,36
     768:	908f040d 	lbu	t7,1037(a0)
     76c:	25080000 	addiu	t0,t0,0
     770:	a4990196 	sh	t9,406(a0)
     774:	31f8fffe 	andi	t8,t7,0xfffe
     778:	a098040d 	sb	t8,1037(a0)
     77c:	ac880190 	sw	t0,400(a0)
     780:	8fbf001c 	lw	ra,28(sp)
     784:	27bd0020 	addiu	sp,sp,32
     788:	03e00008 	jr	ra
     78c:	00000000 	nop

00000790 <func_80B26E40>:
     790:	27bdffe8 	addiu	sp,sp,-24
     794:	afbf0014 	sw	ra,20(sp)
     798:	00803825 	move	a3,a0
     79c:	3c050600 	lui	a1,0x600
     7a0:	24a514ac 	addiu	a1,a1,5292
     7a4:	afa70018 	sw	a3,24(sp)
     7a8:	2484014c 	addiu	a0,a0,332
     7ac:	0c000000 	jal	0 <EnVali_Init>
     7b0:	3c064120 	lui	a2,0x4120
     7b4:	8fa70018 	lw	a3,24(sp)
     7b8:	2401fffe 	li	at,-2
     7bc:	3c080000 	lui	t0,0x0
     7c0:	8cee0004 	lw	t6,4(a3)
     7c4:	25080000 	addiu	t0,t0,0
     7c8:	ace80190 	sw	t0,400(a3)
     7cc:	35cf0010 	ori	t7,t6,0x10
     7d0:	01e1c824 	and	t9,t7,at
     7d4:	acef0004 	sw	t7,4(a3)
     7d8:	acf90004 	sw	t9,4(a3)
     7dc:	8fbf0014 	lw	ra,20(sp)
     7e0:	27bd0018 	addiu	sp,sp,24
     7e4:	03e00008 	jr	ra
     7e8:	00000000 	nop

000007ec <func_80B26E9C>:
     7ec:	27bdff68 	addiu	sp,sp,-152
     7f0:	f7bc0048 	sdc1	$f28,72(sp)
     7f4:	3c014120 	lui	at,0x4120
     7f8:	4481e000 	mtc1	at,$f28
     7fc:	f7ba0040 	sdc1	$f26,64(sp)
     800:	3c014640 	lui	at,0x4640
     804:	4481d000 	mtc1	at,$f26
     808:	afb7006c 	sw	s7,108(sp)
     80c:	afb60068 	sw	s6,104(sp)
     810:	f7b40028 	sdc1	$f20,40(sp)
     814:	3c014140 	lui	at,0x4140
     818:	afbe0070 	sw	s8,112(sp)
     81c:	afb50064 	sw	s5,100(sp)
     820:	afb40060 	sw	s4,96(sp)
     824:	afb20058 	sw	s2,88(sp)
     828:	afb10054 	sw	s1,84(sp)
     82c:	3c160000 	lui	s6,0x0
     830:	3c170000 	lui	s7,0x0
     834:	4481a000 	mtc1	at,$f20
     838:	00a09025 	move	s2,a1
     83c:	0080a025 	move	s4,a0
     840:	afbf0074 	sw	ra,116(sp)
     844:	afb3005c 	sw	s3,92(sp)
     848:	afb00050 	sw	s0,80(sp)
     84c:	f7b80038 	sdc1	$f24,56(sp)
     850:	f7b60030 	sdc1	$f22,48(sp)
     854:	26f70000 	addiu	s7,s7,0
     858:	26d60000 	addiu	s6,s6,0
     85c:	00008825 	move	s1,zero
     860:	27b5008c 	addiu	s5,sp,140
     864:	241e0004 	li	s8,4
     868:	864e07a0 	lh	t6,1952(s2)
     86c:	000e7880 	sll	t7,t6,0x2
     870:	024fc021 	addu	t8,s2,t7
     874:	0c000000 	jal	0 <EnVali_Init>
     878:	8f040790 	lw	a0,1936(t8)
     87c:	00022400 	sll	a0,v0,0x10
     880:	0c000000 	jal	0 <EnVali_Init>
     884:	00042403 	sra	a0,a0,0x10
     888:	865907a0 	lh	t9,1952(s2)
     88c:	46000587 	neg.s	$f22,$f0
     890:	00194080 	sll	t0,t9,0x2
     894:	02484821 	addu	t1,s2,t0
     898:	0c000000 	jal	0 <EnVali_Init>
     89c:	8d240790 	lw	a0,1936(t1)
     8a0:	00022400 	sll	a0,v0,0x10
     8a4:	0c000000 	jal	0 <EnVali_Init>
     8a8:	00042403 	sra	a0,a0,0x10
     8ac:	928a0194 	lbu	t2,404(s4)
     8b0:	00115840 	sll	t3,s1,0x1
     8b4:	46000606 	mov.s	$f24,$f0
     8b8:	014b6021 	addu	t4,t2,t3
     8bc:	05810004 	bgez	t4,8d0 <func_80B26E9C+0xe4>
     8c0:	318d0003 	andi	t5,t4,0x3
     8c4:	11a00002 	beqz	t5,8d0 <func_80B26E9C+0xe4>
     8c8:	00000000 	nop
     8cc:	25adfffc 	addiu	t5,t5,-4
     8d0:	15a0002e 	bnez	t5,98c <func_80B26E9C+0x1a0>
     8d4:	00119b80 	sll	s3,s1,0xe
     8d8:	0c000000 	jal	0 <EnVali_Init>
     8dc:	4600d306 	mov.s	$f12,$f26
     8e0:	4600010d 	trunc.w.s	$f4,$f0
     8e4:	44192000 	mfc1	t9,$f4
     8e8:	00000000 	nop
     8ec:	03331021 	addu	v0,t9,s3
     8f0:	24422000 	addiu	v0,v0,8192
     8f4:	00028400 	sll	s0,v0,0x10
     8f8:	00022400 	sll	a0,v0,0x10
     8fc:	00108403 	sra	s0,s0,0x10
     900:	0c000000 	jal	0 <EnVali_Init>
     904:	00042403 	sra	a0,a0,0x10
     908:	46140182 	mul.s	$f6,$f0,$f20
     90c:	c68a0024 	lwc1	$f10,36(s4)
     910:	00102400 	sll	a0,s0,0x10
     914:	00042403 	sra	a0,a0,0x10
     918:	46163202 	mul.s	$f8,$f6,$f22
     91c:	460a4400 	add.s	$f16,$f8,$f10
     920:	0c000000 	jal	0 <EnVali_Init>
     924:	e7b0008c 	swc1	$f16,140(sp)
     928:	46140102 	mul.s	$f4,$f0,$f20
     92c:	c6920028 	lwc1	$f18,40(s4)
     930:	00102400 	sll	a0,s0,0x10
     934:	00042403 	sra	a0,a0,0x10
     938:	46049181 	sub.s	$f6,$f18,$f4
     93c:	461c3200 	add.s	$f8,$f6,$f28
     940:	0c000000 	jal	0 <EnVali_Init>
     944:	e7a80090 	swc1	$f8,144(sp)
     948:	46140282 	mul.s	$f10,$f0,$f20
     94c:	c692002c 	lwc1	$f18,44(s4)
     950:	24080011 	li	t0,17
     954:	24090006 	li	t1,6
     958:	240a0002 	li	t2,2
     95c:	afaa001c 	sw	t2,28(sp)
     960:	afa90018 	sw	t1,24(sp)
     964:	46185402 	mul.s	$f16,$f10,$f24
     968:	afa80010 	sw	t0,16(sp)
     96c:	afb00014 	sw	s0,20(sp)
     970:	02402025 	move	a0,s2
     974:	02a02825 	move	a1,s5
     978:	02c03025 	move	a2,s6
     97c:	02e03825 	move	a3,s7
     980:	46128100 	add.s	$f4,$f16,$f18
     984:	0c000000 	jal	0 <EnVali_Init>
     988:	e7a40094 	swc1	$f4,148(sp)
     98c:	26310001 	addiu	s1,s1,1
     990:	563effb6 	bnel	s1,s8,86c <func_80B26E9C+0x80>
     994:	864e07a0 	lh	t6,1952(s2)
     998:	02802025 	move	a0,s4
     99c:	0c000000 	jal	0 <EnVali_Init>
     9a0:	2405309a 	li	a1,12442
     9a4:	8fbf0074 	lw	ra,116(sp)
     9a8:	d7b40028 	ldc1	$f20,40(sp)
     9ac:	d7b60030 	ldc1	$f22,48(sp)
     9b0:	d7b80038 	ldc1	$f24,56(sp)
     9b4:	d7ba0040 	ldc1	$f26,64(sp)
     9b8:	d7bc0048 	ldc1	$f28,72(sp)
     9bc:	8fb00050 	lw	s0,80(sp)
     9c0:	8fb10054 	lw	s1,84(sp)
     9c4:	8fb20058 	lw	s2,88(sp)
     9c8:	8fb3005c 	lw	s3,92(sp)
     9cc:	8fb40060 	lw	s4,96(sp)
     9d0:	8fb50064 	lw	s5,100(sp)
     9d4:	8fb60068 	lw	s6,104(sp)
     9d8:	8fb7006c 	lw	s7,108(sp)
     9dc:	8fbe0070 	lw	s8,112(sp)
     9e0:	03e00008 	jr	ra
     9e4:	27bd0098 	addiu	sp,sp,152

000009e8 <func_80B27098>:
     9e8:	27bdffe8 	addiu	sp,sp,-24
     9ec:	afbf0014 	sw	ra,20(sp)
     9f0:	afa5001c 	sw	a1,28(sp)
     9f4:	3c014316 	lui	at,0x4316
     9f8:	44813000 	mtc1	at,$f6
     9fc:	c4840090 	lwc1	$f4,144(a0)
     a00:	4606203c 	c.lt.s	$f4,$f6
     a04:	00000000 	nop
     a08:	45020004 	bc1fl	a1c <func_80B27098+0x34>
     a0c:	8fbf0014 	lw	ra,20(sp)
     a10:	0c000000 	jal	0 <EnVali_Init>
     a14:	00000000 	nop
     a18:	8fbf0014 	lw	ra,20(sp)
     a1c:	27bd0018 	addiu	sp,sp,24
     a20:	03e00008 	jr	ra
     a24:	00000000 	nop

00000a28 <func_80B270D8>:
     a28:	27bdffe0 	addiu	sp,sp,-32
     a2c:	afb00018 	sw	s0,24(sp)
     a30:	00808025 	move	s0,a0
     a34:	afbf001c 	sw	ra,28(sp)
     a38:	afa50024 	sw	a1,36(sp)
     a3c:	0c000000 	jal	0 <EnVali_Init>
     a40:	2484014c 	addiu	a0,a0,332
     a44:	3c014220 	lui	at,0x4220
     a48:	44811000 	mtc1	at,$f2
     a4c:	3c013fc0 	lui	at,0x3fc0
     a50:	44813000 	mtc1	at,$f6
     a54:	c6040060 	lwc1	$f4,96(s0)
     a58:	26040028 	addiu	a0,s0,40
     a5c:	46062202 	mul.s	$f8,$f4,$f6
     a60:	e6080060 	swc1	$f8,96(s0)
     a64:	c6000060 	lwc1	$f0,96(s0)
     a68:	4600103c 	c.lt.s	$f2,$f0
     a6c:	00000000 	nop
     a70:	45020004 	bc1fl	a84 <func_80B270D8+0x5c>
     a74:	e6000060 	swc1	$f0,96(s0)
     a78:	10000002 	b	a84 <func_80B270D8+0x5c>
     a7c:	e6020060 	swc1	$f2,96(s0)
     a80:	e6000060 	swc1	$f0,96(s0)
     a84:	8e050080 	lw	a1,128(s0)
     a88:	0c000000 	jal	0 <EnVali_Init>
     a8c:	8e060060 	lw	a2,96(s0)
     a90:	10400005 	beqz	v0,aa8 <func_80B270D8+0x80>
     a94:	02002025 	move	a0,s0
     a98:	0c000000 	jal	0 <EnVali_Init>
     a9c:	2405387b 	li	a1,14459
     aa0:	0c000000 	jal	0 <EnVali_Init>
     aa4:	02002025 	move	a0,s0
     aa8:	8fbf001c 	lw	ra,28(sp)
     aac:	8fb00018 	lw	s0,24(sp)
     ab0:	27bd0020 	addiu	sp,sp,32
     ab4:	03e00008 	jr	ra
     ab8:	00000000 	nop

00000abc <func_80B2716C>:
     abc:	27bdffd8 	addiu	sp,sp,-40
     ac0:	afb00018 	sw	s0,24(sp)
     ac4:	00808025 	move	s0,a0
     ac8:	afbf001c 	sw	ra,28(sp)
     acc:	afa5002c 	sw	a1,44(sp)
     ad0:	0c000000 	jal	0 <EnVali_Init>
     ad4:	2484014c 	addiu	a0,a0,332
     ad8:	92020195 	lbu	v0,405(s0)
     adc:	3c014220 	lui	at,0x4220
     ae0:	10400002 	beqz	v0,aec <func_80B2716C+0x30>
     ae4:	244effff 	addiu	t6,v0,-1
     ae8:	a20e0195 	sb	t6,405(s0)
     aec:	c6040164 	lwc1	$f4,356(s0)
     af0:	c6080080 	lwc1	$f8,128(s0)
     af4:	44815000 	mtc1	at,$f10
     af8:	4600218d 	trunc.w.s	$f6,$f4
     afc:	3c063f99 	lui	a2,0x3f99
     b00:	34c6999a 	ori	a2,a2,0x999a
     b04:	460a4400 	add.s	$f16,$f8,$f10
     b08:	44033000 	mfc1	v1,$f6
     b0c:	260402f8 	addiu	a0,s0,760
     b10:	44058000 	mfc1	a1,$f16
     b14:	0c000000 	jal	0 <EnVali_Init>
     b18:	afa30024 	sw	v1,36(sp)
     b1c:	8fa30024 	lw	v1,36(sp)
     b20:	3c010000 	lui	at,0x0
     b24:	c4260000 	lwc1	$f6,0(at)
     b28:	44839000 	mtc1	v1,$f18
     b2c:	3c010000 	lui	at,0x0
     b30:	c42a0000 	lwc1	$f10,0(at)
     b34:	46809120 	cvt.s.w	$f4,$f18
     b38:	46062202 	mul.s	$f8,$f4,$f6
     b3c:	00000000 	nop
     b40:	460a4302 	mul.s	$f12,$f8,$f10
     b44:	0c000000 	jal	0 <EnVali_Init>
     b48:	00000000 	nop
     b4c:	3c014100 	lui	at,0x4100
     b50:	44819000 	mtc1	at,$f18
     b54:	c61002f8 	lwc1	$f16,760(s0)
     b58:	92020195 	lbu	v0,405(s0)
     b5c:	46120102 	mul.s	$f4,$f0,$f18
     b60:	8fa30024 	lw	v1,36(sp)
     b64:	24010010 	li	at,16
     b68:	46048181 	sub.s	$f6,$f16,$f4
     b6c:	10400012 	beqz	v0,bb8 <func_80B2716C+0xfc>
     b70:	e6060028 	swc1	$f6,40(s0)
     b74:	24010006 	li	at,6
     b78:	0041001a 	div	zero,v0,at
     b7c:	861800b6 	lh	t8,182(s0)
     b80:	00004010 	mfhi	t0
     b84:	28610010 	slti	at,v1,16
     b88:	27190800 	addiu	t9,t8,2048
     b8c:	15000016 	bnez	t0,be8 <func_80B2716C+0x12c>
     b90:	a61900b6 	sh	t9,182(s0)
     b94:	14200014 	bnez	at,be8 <func_80B2716C+0x12c>
     b98:	28610038 	slti	at,v1,56
     b9c:	10200012 	beqz	at,be8 <func_80B2716C+0x12c>
     ba0:	02002025 	move	a0,s0
     ba4:	2405389d 	li	a1,14493
     ba8:	0c000000 	jal	0 <EnVali_Init>
     bac:	afa30024 	sw	v1,36(sp)
     bb0:	1000000d 	b	be8 <func_80B2716C+0x12c>
     bb4:	8fa30024 	lw	v1,36(sp)
     bb8:	10610007 	beq	v1,at,bd8 <func_80B2716C+0x11c>
     bbc:	02002025 	move	a0,s0
     bc0:	2401001e 	li	at,30
     bc4:	10610004 	beq	v1,at,bd8 <func_80B2716C+0x11c>
     bc8:	2401002a 	li	at,42
     bcc:	10610002 	beq	v1,at,bd8 <func_80B2716C+0x11c>
     bd0:	24010037 	li	at,55
     bd4:	14610004 	bne	v1,at,be8 <func_80B2716C+0x12c>
     bd8:	2405389d 	li	a1,14493
     bdc:	0c000000 	jal	0 <EnVali_Init>
     be0:	afa30024 	sw	v1,36(sp)
     be4:	8fa30024 	lw	v1,36(sp)
     be8:	28610029 	slti	at,v1,41
     bec:	14200002 	bnez	at,bf8 <func_80B2716C+0x13c>
     bf0:	24090050 	li	t1,80
     bf4:	01231823 	subu	v1,t1,v1
     bf8:	246a0004 	addiu	t2,v1,4
     bfc:	448a4000 	mtc1	t2,$f8
     c00:	3c010000 	lui	at,0x0
     c04:	c4320000 	lwc1	$f18,0(at)
     c08:	468042a0 	cvt.s.w	$f10,$f8
     c0c:	3c010000 	lui	at,0x0
     c10:	c4240000 	lwc1	$f4,0(at)
     c14:	3c01437a 	lui	at,0x437a
     c18:	860f00b6 	lh	t7,182(s0)
     c1c:	46125402 	mul.s	$f16,$f10,$f18
     c20:	c6120090 	lwc1	$f18,144(s0)
     c24:	44815000 	mtc1	at,$f10
     c28:	00000000 	nop
     c2c:	4612503c 	c.lt.s	$f10,$f18
     c30:	46048182 	mul.s	$f6,$f16,$f4
     c34:	4600320d 	trunc.w.s	$f8,$f6
     c38:	440e4000 	mfc1	t6,$f8
     c3c:	00000000 	nop
     c40:	01eec021 	addu	t8,t7,t6
     c44:	45000003 	bc1f	c54 <func_80B2716C+0x198>
     c48:	a61800b6 	sh	t8,182(s0)
     c4c:	0c000000 	jal	0 <EnVali_Init>
     c50:	02002025 	move	a0,s0
     c54:	8fbf001c 	lw	ra,28(sp)
     c58:	8fb00018 	lw	s0,24(sp)
     c5c:	27bd0028 	addiu	sp,sp,40
     c60:	03e00008 	jr	ra
     c64:	00000000 	nop

00000c68 <func_80B27318>:
     c68:	27bdffe8 	addiu	sp,sp,-24
     c6c:	afbf0014 	sw	ra,20(sp)
     c70:	90820194 	lbu	v0,404(a0)
     c74:	10400002 	beqz	v0,c80 <func_80B27318+0x18>
     c78:	244effff 	addiu	t6,v0,-1
     c7c:	a08e0194 	sb	t6,404(a0)
     c80:	0c000000 	jal	0 <EnVali_Init>
     c84:	afa40018 	sw	a0,24(sp)
     c88:	8fa40018 	lw	a0,24(sp)
     c8c:	24010001 	li	at,1
     c90:	90820194 	lbu	v0,404(a0)
     c94:	14400011 	bnez	v0,cdc <func_80B27318+0x74>
     c98:	304b0001 	andi	t3,v0,0x1
     c9c:	8c8f0004 	lw	t7,4(a0)
     ca0:	9099040d 	lbu	t9,1037(a0)
     ca4:	8489001c 	lh	t1,28(a0)
     ca8:	35f80001 	ori	t8,t7,0x1
     cac:	37280001 	ori	t0,t9,0x1
     cb0:	ac980004 	sw	t8,4(a0)
     cb4:	15210005 	bne	t1,at,ccc <func_80B27318+0x64>
     cb8:	a088040d 	sb	t0,1037(a0)
     cbc:	0c000000 	jal	0 <EnVali_Init>
     cc0:	00000000 	nop
     cc4:	10000013 	b	d14 <func_80B27318+0xac>
     cc8:	8fbf0014 	lw	ra,20(sp)
     ccc:	3c0a0000 	lui	t2,0x0
     cd0:	254a0000 	addiu	t2,t2,0
     cd4:	1000000e 	b	d10 <func_80B27318+0xa8>
     cd8:	ac8a0190 	sw	t2,400(a0)
     cdc:	11600007 	beqz	t3,cfc <func_80B27318+0x94>
     ce0:	3c013f80 	lui	at,0x3f80
     ce4:	3c013f80 	lui	at,0x3f80
     ce8:	44813000 	mtc1	at,$f6
     cec:	c4840028 	lwc1	$f4,40(a0)
     cf0:	46062200 	add.s	$f8,$f4,$f6
     cf4:	10000006 	b	d10 <func_80B27318+0xa8>
     cf8:	e4880028 	swc1	$f8,40(a0)
     cfc:	c48a0028 	lwc1	$f10,40(a0)
     d00:	44818000 	mtc1	at,$f16
     d04:	00000000 	nop
     d08:	46105481 	sub.s	$f18,$f10,$f16
     d0c:	e4920028 	swc1	$f18,40(a0)
     d10:	8fbf0014 	lw	ra,20(sp)
     d14:	27bd0018 	addiu	sp,sp,24
     d18:	03e00008 	jr	ra
     d1c:	00000000 	nop

00000d20 <func_80B273D0>:
     d20:	27bdffe8 	addiu	sp,sp,-24
     d24:	afbf0014 	sw	ra,20(sp)
     d28:	00803025 	move	a2,a0
     d2c:	afa5001c 	sw	a1,28(sp)
     d30:	afa60018 	sw	a2,24(sp)
     d34:	0c000000 	jal	0 <EnVali_Init>
     d38:	2484014c 	addiu	a0,a0,332
     d3c:	1040000b 	beqz	v0,d6c <func_80B273D0+0x4c>
     d40:	8fa60018 	lw	a2,24(sp)
     d44:	90ce00af 	lbu	t6,175(a2)
     d48:	00c02025 	move	a0,a2
     d4c:	11c00005 	beqz	t6,d64 <func_80B273D0+0x44>
     d50:	00000000 	nop
     d54:	0c000000 	jal	0 <EnVali_Init>
     d58:	00c02025 	move	a0,a2
     d5c:	10000004 	b	d70 <func_80B273D0+0x50>
     d60:	8fbf0014 	lw	ra,20(sp)
     d64:	0c000000 	jal	0 <EnVali_Init>
     d68:	8fa5001c 	lw	a1,28(sp)
     d6c:	8fbf0014 	lw	ra,20(sp)
     d70:	27bd0018 	addiu	sp,sp,24
     d74:	03e00008 	jr	ra
     d78:	00000000 	nop

00000d7c <func_80B2742C>:
     d7c:	27bdffe8 	addiu	sp,sp,-24
     d80:	afbf0014 	sw	ra,20(sp)
     d84:	afa40018 	sw	a0,24(sp)
     d88:	afa5001c 	sw	a1,28(sp)
     d8c:	0c000000 	jal	0 <EnVali_Init>
     d90:	2484014c 	addiu	a0,a0,332
     d94:	50400004 	beqzl	v0,da8 <func_80B2742C+0x2c>
     d98:	8fbf0014 	lw	ra,20(sp)
     d9c:	0c000000 	jal	0 <EnVali_Init>
     da0:	8fa40018 	lw	a0,24(sp)
     da4:	8fbf0014 	lw	ra,20(sp)
     da8:	27bd0018 	addiu	sp,sp,24
     dac:	03e00008 	jr	ra
     db0:	00000000 	nop

00000db4 <func_80B27464>:
     db4:	27bdffe8 	addiu	sp,sp,-24
     db8:	afbf0014 	sw	ra,20(sp)
     dbc:	84820196 	lh	v0,406(a0)
     dc0:	10400003 	beqz	v0,dd0 <func_80B27464+0x1c>
     dc4:	244effff 	addiu	t6,v0,-1
     dc8:	a48e0196 	sh	t6,406(a0)
     dcc:	84820196 	lh	v0,406(a0)
     dd0:	54400004 	bnezl	v0,de4 <func_80B27464+0x30>
     dd4:	8fbf0014 	lw	ra,20(sp)
     dd8:	0c000000 	jal	0 <EnVali_Init>
     ddc:	00000000 	nop
     de0:	8fbf0014 	lw	ra,20(sp)
     de4:	27bd0018 	addiu	sp,sp,24
     de8:	03e00008 	jr	ra
     dec:	00000000 	nop

00000df0 <func_80B274A0>:
     df0:	27bdff80 	addiu	sp,sp,-128
     df4:	afbf0064 	sw	ra,100(sp)
     df8:	afb70060 	sw	s7,96(sp)
     dfc:	afb6005c 	sw	s6,92(sp)
     e00:	afb50058 	sw	s5,88(sp)
     e04:	afb40054 	sw	s4,84(sp)
     e08:	afb30050 	sw	s3,80(sp)
     e0c:	afb2004c 	sw	s2,76(sp)
     e10:	afb10048 	sw	s1,72(sp)
     e14:	afb00044 	sw	s0,68(sp)
     e18:	f7ba0038 	sdc1	$f26,56(sp)
     e1c:	f7b80030 	sdc1	$f24,48(sp)
     e20:	f7b60028 	sdc1	$f22,40(sp)
     e24:	f7b40020 	sdc1	$f20,32(sp)
     e28:	84820196 	lh	v0,406(a0)
     e2c:	00809025 	move	s2,a0
     e30:	00a0b025 	move	s6,a1
     e34:	10400003 	beqz	v0,e44 <func_80B274A0+0x54>
     e38:	00008825 	move	s1,zero
     e3c:	244effff 	addiu	t6,v0,-1
     e40:	a48e0196 	sh	t6,406(a0)
     e44:	3c010000 	lui	at,0x0
     e48:	c43a0000 	lwc1	$f26,0(at)
     e4c:	3c013f80 	lui	at,0x3f80
     e50:	4481c000 	mtc1	at,$f24
     e54:	3c014100 	lui	at,0x4100
     e58:	4481b000 	mtc1	at,$f22
     e5c:	3c0141a0 	lui	at,0x41a0
     e60:	3c150000 	lui	s5,0x0
     e64:	3c140000 	lui	s4,0x0
     e68:	4481a000 	mtc1	at,$f20
     e6c:	26940000 	addiu	s4,s4,0
     e70:	26b50000 	addiu	s5,s5,0
     e74:	24170002 	li	s7,2
     e78:	27b30070 	addiu	s3,sp,112
     e7c:	0c000000 	jal	0 <EnVali_Init>
     e80:	4600a306 	mov.s	$f12,$f20
     e84:	c6440024 	lwc1	$f4,36(s2)
     e88:	4600b306 	mov.s	$f12,$f22
     e8c:	46040180 	add.s	$f6,$f0,$f4
     e90:	0c000000 	jal	0 <EnVali_Init>
     e94:	e7a60070 	swc1	$f6,112(sp)
     e98:	c6480028 	lwc1	$f8,40(s2)
     e9c:	4600a306 	mov.s	$f12,$f20
     ea0:	46080280 	add.s	$f10,$f0,$f8
     ea4:	0c000000 	jal	0 <EnVali_Init>
     ea8:	e7aa0074 	swc1	$f10,116(sp)
     eac:	c650002c 	lwc1	$f16,44(s2)
     eb0:	46100480 	add.s	$f18,$f0,$f16
     eb4:	0c000000 	jal	0 <EnVali_Init>
     eb8:	e7b20078 	swc1	$f18,120(sp)
     ebc:	46180100 	add.s	$f4,$f0,$f24
     ec0:	3c010000 	lui	at,0x0
     ec4:	24040028 	li	a0,40
     ec8:	24050028 	li	a1,40
     ecc:	0c000000 	jal	0 <EnVali_Init>
     ed0:	e4240000 	swc1	$f4,0(at)
     ed4:	00028400 	sll	s0,v0,0x10
     ed8:	0c000000 	jal	0 <EnVali_Init>
     edc:	00108403 	sra	s0,s0,0x10
     ee0:	461a003c 	c.lt.s	$f0,$f26
     ee4:	02c02025 	move	a0,s6
     ee8:	02602825 	move	a1,s3
     eec:	02803025 	move	a2,s4
     ef0:	4500000e 	bc1f	f2c <func_80B274A0+0x13c>
     ef4:	02a03825 	move	a3,s5
     ef8:	240f0019 	li	t7,25
     efc:	24180001 	li	t8,1
     f00:	afb8001c 	sw	t8,28(sp)
     f04:	afaf0014 	sw	t7,20(sp)
     f08:	02c02025 	move	a0,s6
     f0c:	02602825 	move	a1,s3
     f10:	02803025 	move	a2,s4
     f14:	02a03825 	move	a3,s5
     f18:	afb00010 	sw	s0,16(sp)
     f1c:	0c000000 	jal	0 <EnVali_Init>
     f20:	afb70018 	sw	s7,24(sp)
     f24:	10000009 	b	f4c <func_80B274A0+0x15c>
     f28:	26310001 	addiu	s1,s1,1
     f2c:	24190019 	li	t9,25
     f30:	24080001 	li	t0,1
     f34:	afa8001c 	sw	t0,28(sp)
     f38:	afb90014 	sw	t9,20(sp)
     f3c:	afb00010 	sw	s0,16(sp)
     f40:	0c000000 	jal	0 <EnVali_Init>
     f44:	afa00018 	sw	zero,24(sp)
     f48:	26310001 	addiu	s1,s1,1
     f4c:	1637ffcb 	bne	s1,s7,e7c <func_80B274A0+0x8c>
     f50:	00000000 	nop
     f54:	86490196 	lh	t1,406(s2)
     f58:	55200004 	bnezl	t1,f6c <func_80B274A0+0x17c>
     f5c:	8fbf0064 	lw	ra,100(sp)
     f60:	0c000000 	jal	0 <EnVali_Init>
     f64:	02402025 	move	a0,s2
     f68:	8fbf0064 	lw	ra,100(sp)
     f6c:	d7b40020 	ldc1	$f20,32(sp)
     f70:	d7b60028 	ldc1	$f22,40(sp)
     f74:	d7b80030 	ldc1	$f24,48(sp)
     f78:	d7ba0038 	ldc1	$f26,56(sp)
     f7c:	8fb00044 	lw	s0,68(sp)
     f80:	8fb10048 	lw	s1,72(sp)
     f84:	8fb2004c 	lw	s2,76(sp)
     f88:	8fb30050 	lw	s3,80(sp)
     f8c:	8fb40054 	lw	s4,84(sp)
     f90:	8fb50058 	lw	s5,88(sp)
     f94:	8fb6005c 	lw	s6,92(sp)
     f98:	8fb70060 	lw	s7,96(sp)
     f9c:	03e00008 	jr	ra
     fa0:	27bd0080 	addiu	sp,sp,128

00000fa4 <func_80B27654>:
     fa4:	27bdffe0 	addiu	sp,sp,-32
     fa8:	afb00018 	sw	s0,24(sp)
     fac:	00808025 	move	s0,a0
     fb0:	afbf001c 	sw	ra,28(sp)
     fb4:	afa50024 	sw	a1,36(sp)
     fb8:	0c000000 	jal	0 <EnVali_Init>
     fbc:	2484014c 	addiu	a0,a0,332
     fc0:	86030196 	lh	v1,406(s0)
     fc4:	44802000 	mtc1	zero,$f4
     fc8:	26040028 	addiu	a0,s0,40
     fcc:	10600002 	beqz	v1,fd8 <func_80B27654+0x34>
     fd0:	246effff 	addiu	t6,v1,-1
     fd4:	a60e0196 	sh	t6,406(s0)
     fd8:	c6000060 	lwc1	$f0,96(s0)
     fdc:	46002032 	c.eq.s	$f4,$f0
     fe0:	00000000 	nop
     fe4:	45030013 	bc1tl	1034 <func_80B27654+0x90>
     fe8:	860f0196 	lh	t7,406(s0)
     fec:	44060000 	mfc1	a2,$f0
     ff0:	0c000000 	jal	0 <EnVali_Init>
     ff4:	8e050080 	lw	a1,128(s0)
     ff8:	10400008 	beqz	v0,101c <func_80B27654+0x78>
     ffc:	3c013f80 	lui	at,0x3f80
    1000:	44803000 	mtc1	zero,$f6
    1004:	02002025 	move	a0,s0
    1008:	2405387b 	li	a1,14459
    100c:	0c000000 	jal	0 <EnVali_Init>
    1010:	e6060060 	swc1	$f6,96(s0)
    1014:	10000007 	b	1034 <func_80B27654+0x90>
    1018:	860f0196 	lh	t7,406(s0)
    101c:	c6080060 	lwc1	$f8,96(s0)
    1020:	44815000 	mtc1	at,$f10
    1024:	00000000 	nop
    1028:	460a4400 	add.s	$f16,$f8,$f10
    102c:	e6100060 	swc1	$f16,96(s0)
    1030:	860f0196 	lh	t7,406(s0)
    1034:	24180001 	li	t8,1
    1038:	02002025 	move	a0,s0
    103c:	55e00004 	bnezl	t7,1050 <func_80B27654+0xac>
    1040:	8fbf001c 	lw	ra,28(sp)
    1044:	0c000000 	jal	0 <EnVali_Init>
    1048:	a2180420 	sb	t8,1056(s0)
    104c:	8fbf001c 	lw	ra,28(sp)
    1050:	8fb00018 	lw	s0,24(sp)
    1054:	27bd0020 	addiu	sp,sp,32
    1058:	03e00008 	jr	ra
    105c:	00000000 	nop

00001060 <func_80B27710>:
    1060:	27bdffa0 	addiu	sp,sp,-96
    1064:	afbf003c 	sw	ra,60(sp)
    1068:	afb00038 	sw	s0,56(sp)
    106c:	afa50064 	sw	a1,100(sp)
    1070:	84820196 	lh	v0,406(a0)
    1074:	00808025 	move	s0,a0
    1078:	240f0024 	li	t7,36
    107c:	10400003 	beqz	v0,108c <func_80B27710+0x2c>
    1080:	244effff 	addiu	t6,v0,-1
    1084:	a48e0196 	sh	t6,406(a0)
    1088:	84820196 	lh	v0,406(a0)
    108c:	2443ffec 	addiu	v1,v0,-20
    1090:	18600043 	blez	v1,11a0 <func_80B27710+0x140>
    1094:	a20f0114 	sb	t7,276(s0)
    1098:	30580001 	andi	t8,v0,0x1
    109c:	1300004f 	beqz	t8,11dc <func_80B27710+0x17c>
    10a0:	00031043 	sra	v0,v1,0x1
    10a4:	0002c823 	negu	t9,v0
    10a8:	00194080 	sll	t0,t9,0x2
    10ac:	01194021 	addu	t0,t0,t9
    10b0:	25090028 	addiu	t1,t0,40
    10b4:	44895000 	mtc1	t1,$f10
    10b8:	3c0141a0 	lui	at,0x41a0
    10bc:	44813000 	mtc1	at,$f6
    10c0:	c6040028 	lwc1	$f4,40(s0)
    10c4:	46805420 	cvt.s.w	$f16,$f10
    10c8:	304a0002 	andi	t2,v0,0x2
    10cc:	3c01c140 	lui	at,0xc140
    10d0:	46062201 	sub.s	$f8,$f4,$f6
    10d4:	46104480 	add.s	$f18,$f8,$f16
    10d8:	11400005 	beqz	t2,10f0 <func_80B27710+0x90>
    10dc:	e7b20058 	swc1	$f18,88(sp)
    10e0:	3c014140 	lui	at,0x4140
    10e4:	44810000 	mtc1	at,$f0
    10e8:	10000004 	b	10fc <func_80B27710+0x9c>
    10ec:	c6040024 	lwc1	$f4,36(s0)
    10f0:	44810000 	mtc1	at,$f0
    10f4:	00000000 	nop
    10f8:	c6040024 	lwc1	$f4,36(s0)
    10fc:	304b0001 	andi	t3,v0,0x1
    1100:	3c01c140 	lui	at,0xc140
    1104:	46040180 	add.s	$f6,$f0,$f4
    1108:	11600005 	beqz	t3,1120 <func_80B27710+0xc0>
    110c:	e7a60054 	swc1	$f6,84(sp)
    1110:	3c014140 	lui	at,0x4140
    1114:	44810000 	mtc1	at,$f0
    1118:	10000004 	b	112c <func_80B27710+0xcc>
    111c:	c60a002c 	lwc1	$f10,44(s0)
    1120:	44810000 	mtc1	at,$f0
    1124:	00000000 	nop
    1128:	c60a002c 	lwc1	$f10,44(s0)
    112c:	460a0200 	add.s	$f8,$f0,$f10
    1130:	0c000000 	jal	0 <EnVali_Init>
    1134:	e7a8005c 	swc1	$f8,92(sp)
    1138:	3c010000 	lui	at,0x0
    113c:	c4300000 	lwc1	$f16,0(at)
    1140:	3c010000 	lui	at,0x0
    1144:	c4240000 	lwc1	$f4,0(at)
    1148:	46100482 	mul.s	$f18,$f0,$f16
    114c:	240c0096 	li	t4,150
    1150:	240d0096 	li	t5,150
    1154:	240e00fa 	li	t6,250
    1158:	240f00eb 	li	t7,235
    115c:	241800f5 	li	t8,245
    1160:	241900ff 	li	t9,255
    1164:	46049180 	add.s	$f6,$f18,$f4
    1168:	afb90024 	sw	t9,36(sp)
    116c:	afb80020 	sw	t8,32(sp)
    1170:	afaf001c 	sw	t7,28(sp)
    1174:	e7a60028 	swc1	$f6,40(sp)
    1178:	afae0018 	sw	t6,24(sp)
    117c:	afad0014 	sw	t5,20(sp)
    1180:	afac0010 	sw	t4,16(sp)
    1184:	8fa40064 	lw	a0,100(sp)
    1188:	02002825 	move	a1,s0
    118c:	27a60054 	addiu	a2,sp,84
    1190:	0c000000 	jal	0 <EnVali_Init>
    1194:	24070096 	li	a3,150
    1198:	10000011 	b	11e0 <func_80B27710+0x180>
    119c:	8fbf003c 	lw	ra,60(sp)
    11a0:	1440000e 	bnez	v0,11dc <func_80B27710+0x17c>
    11a4:	3c013f80 	lui	at,0x3f80
    11a8:	c60a0060 	lwc1	$f10,96(s0)
    11ac:	44814000 	mtc1	at,$f8
    11b0:	26040028 	addiu	a0,s0,40
    11b4:	8e050080 	lw	a1,128(s0)
    11b8:	46085400 	add.s	$f16,$f10,$f8
    11bc:	e6100060 	swc1	$f16,96(s0)
    11c0:	0c000000 	jal	0 <EnVali_Init>
    11c4:	8e060060 	lw	a2,96(s0)
    11c8:	10400004 	beqz	v0,11dc <func_80B27710+0x17c>
    11cc:	02002025 	move	a0,s0
    11d0:	0c000000 	jal	0 <EnVali_Init>
    11d4:	8fa50064 	lw	a1,100(sp)
    11d8:	a2000114 	sb	zero,276(s0)
    11dc:	8fbf003c 	lw	ra,60(sp)
    11e0:	8fb00038 	lw	s0,56(sp)
    11e4:	27bd0060 	addiu	sp,sp,96
    11e8:	03e00008 	jr	ra
    11ec:	00000000 	nop

000011f0 <func_80B278A0>:
    11f0:	27bdffe0 	addiu	sp,sp,-32
    11f4:	afbf001c 	sw	ra,28(sp)
    11f8:	afa40020 	sw	a0,32(sp)
    11fc:	afa50024 	sw	a1,36(sp)
    1200:	0c000000 	jal	0 <EnVali_Init>
    1204:	2484014c 	addiu	a0,a0,332
    1208:	8fa20020 	lw	v0,32(sp)
    120c:	3c010000 	lui	at,0x0
    1210:	c4240000 	lwc1	$f4,0(at)
    1214:	8c45000c 	lw	a1,12(v0)
    1218:	3c063f00 	lui	a2,0x3f00
    121c:	3c074170 	lui	a3,0x4170
    1220:	24440028 	addiu	a0,v0,40
    1224:	0c000000 	jal	0 <EnVali_Init>
    1228:	e7a40010 	swc1	$f4,16(sp)
    122c:	3c010000 	lui	at,0x0
    1230:	c4260000 	lwc1	$f6,0(at)
    1234:	4606003c 	c.lt.s	$f0,$f6
    1238:	00000000 	nop
    123c:	45020004 	bc1fl	1250 <func_80B278A0+0x60>
    1240:	8fbf001c 	lw	ra,28(sp)
    1244:	0c000000 	jal	0 <EnVali_Init>
    1248:	8fa40020 	lw	a0,32(sp)
    124c:	8fbf001c 	lw	ra,28(sp)
    1250:	27bd0020 	addiu	sp,sp,32
    1254:	03e00008 	jr	ra
    1258:	00000000 	nop

0000125c <func_80B2790C>:
    125c:	27bdffd8 	addiu	sp,sp,-40
    1260:	afbf0024 	sw	ra,36(sp)
    1264:	afb00020 	sw	s0,32(sp)
    1268:	afa5002c 	sw	a1,44(sp)
    126c:	9082040d 	lbu	v0,1037(a0)
    1270:	00808025 	move	s0,a0
    1274:	26050414 	addiu	a1,s0,1044
    1278:	304e0002 	andi	t6,v0,0x2
    127c:	11c0005f 	beqz	t6,13fc <func_80B2790C+0x1a0>
    1280:	304ffffd 	andi	t7,v0,0xfffd
    1284:	a08f040d 	sb	t7,1037(a0)
    1288:	0c000000 	jal	0 <EnVali_Init>
    128c:	24060001 	li	a2,1
    1290:	921800b1 	lbu	t8,177(s0)
    1294:	17000004 	bnez	t8,12a8 <func_80B2790C+0x4c>
    1298:	00000000 	nop
    129c:	921900b0 	lbu	t9,176(s0)
    12a0:	53200057 	beqzl	t9,1400 <func_80B2790C+0x1a4>
    12a4:	8fbf0024 	lw	ra,36(sp)
    12a8:	0c000000 	jal	0 <EnVali_Init>
    12ac:	02002025 	move	a0,s0
    12b0:	1440000c 	bnez	v0,12e4 <func_80B2790C+0x88>
    12b4:	02002025 	move	a0,s0
    12b8:	0c000000 	jal	0 <EnVali_Init>
    12bc:	2405389f 	li	a1,14495
    12c0:	8fa4002c 	lw	a0,44(sp)
    12c4:	0c000000 	jal	0 <EnVali_Init>
    12c8:	02002825 	move	a1,s0
    12cc:	8e080004 	lw	t0,4(s0)
    12d0:	2401fffe 	li	at,-2
    12d4:	920200b1 	lbu	v0,177(s0)
    12d8:	01014824 	and	t1,t0,at
    12dc:	1000000a 	b	1308 <func_80B2790C+0xac>
    12e0:	ae090004 	sw	t1,4(s0)
    12e4:	920200b1 	lbu	v0,177(s0)
    12e8:	24010001 	li	at,1
    12ec:	10410006 	beq	v0,at,1308 <func_80B2790C+0xac>
    12f0:	2401000e 	li	at,14
    12f4:	10410004 	beq	v0,at,1308 <func_80B2790C+0xac>
    12f8:	02002025 	move	a0,s0
    12fc:	0c000000 	jal	0 <EnVali_Init>
    1300:	240538dc 	li	a1,14556
    1304:	920200b1 	lbu	v0,177(s0)
    1308:	24010001 	li	at,1
    130c:	5441000b 	bnel	v0,at,133c <func_80B2790C+0xe0>
    1310:	2401000f 	li	at,15
    1314:	8e0b0190 	lw	t3,400(s0)
    1318:	3c0a0000 	lui	t2,0x0
    131c:	254a0000 	addiu	t2,t2,0
    1320:	514b0037 	beql	t2,t3,1400 <func_80B2790C+0x1a4>
    1324:	8fbf0024 	lw	ra,36(sp)
    1328:	0c000000 	jal	0 <EnVali_Init>
    132c:	02002025 	move	a0,s0
    1330:	10000033 	b	1400 <func_80B2790C+0x1a4>
    1334:	8fbf0024 	lw	ra,36(sp)
    1338:	2401000f 	li	at,15
    133c:	54410017 	bnel	v0,at,139c <func_80B2790C+0x140>
    1340:	24010002 	li	at,2
    1344:	8e0d0190 	lw	t5,400(s0)
    1348:	3c0c0000 	lui	t4,0x0
    134c:	258c0000 	addiu	t4,t4,0
    1350:	118d000d 	beq	t4,t5,1388 <func_80B2790C+0x12c>
    1354:	02002025 	move	a0,s0
    1358:	240e001e 	li	t6,30
    135c:	afae0010 	sw	t6,16(sp)
    1360:	24054000 	li	a1,16384
    1364:	24060096 	li	a2,150
    1368:	0c000000 	jal	0 <EnVali_Init>
    136c:	24072000 	li	a3,8192
    1370:	240f0001 	li	t7,1
    1374:	a60f001c 	sh	t7,28(s0)
    1378:	0c000000 	jal	0 <EnVali_Init>
    137c:	02002025 	move	a0,s0
    1380:	1000001f 	b	1400 <func_80B2790C+0x1a4>
    1384:	8fbf0024 	lw	ra,36(sp)
    1388:	0c000000 	jal	0 <EnVali_Init>
    138c:	02002025 	move	a0,s0
    1390:	1000001b 	b	1400 <func_80B2790C+0x1a4>
    1394:	8fbf0024 	lw	ra,36(sp)
    1398:	24010002 	li	at,2
    139c:	54410006 	bnel	v0,at,13b8 <func_80B2790C+0x15c>
    13a0:	24010003 	li	at,3
    13a4:	0c000000 	jal	0 <EnVali_Init>
    13a8:	02002025 	move	a0,s0
    13ac:	10000014 	b	1400 <func_80B2790C+0x1a4>
    13b0:	8fbf0024 	lw	ra,36(sp)
    13b4:	24010003 	li	at,3
    13b8:	54410006 	bnel	v0,at,13d4 <func_80B2790C+0x178>
    13bc:	2401000e 	li	at,14
    13c0:	0c000000 	jal	0 <EnVali_Init>
    13c4:	02002025 	move	a0,s0
    13c8:	1000000d 	b	1400 <func_80B2790C+0x1a4>
    13cc:	8fbf0024 	lw	ra,36(sp)
    13d0:	2401000e 	li	at,14
    13d4:	14410007 	bne	v0,at,13f4 <func_80B2790C+0x198>
    13d8:	00000000 	nop
    13dc:	92180195 	lbu	t8,405(s0)
    13e0:	24190014 	li	t9,20
    13e4:	57000006 	bnezl	t8,1400 <func_80B2790C+0x1a4>
    13e8:	8fbf0024 	lw	ra,36(sp)
    13ec:	10000003 	b	13fc <func_80B2790C+0x1a0>
    13f0:	a2190195 	sb	t9,405(s0)
    13f4:	0c000000 	jal	0 <EnVali_Init>
    13f8:	02002025 	move	a0,s0
    13fc:	8fbf0024 	lw	ra,36(sp)
    1400:	8fb00020 	lw	s0,32(sp)
    1404:	27bd0028 	addiu	sp,sp,40
    1408:	03e00008 	jr	ra
    140c:	00000000 	nop

00001410 <EnVali_Update>:
    1410:	27bdffd0 	addiu	sp,sp,-48
    1414:	afbf001c 	sw	ra,28(sp)
    1418:	afb10018 	sw	s1,24(sp)
    141c:	afb00014 	sw	s0,20(sp)
    1420:	9083040c 	lbu	v1,1036(a0)
    1424:	00808025 	move	s0,a0
    1428:	00a08825 	move	s1,a1
    142c:	306e0002 	andi	t6,v1,0x2
    1430:	15c00009 	bnez	t6,1458 <EnVali_Update+0x48>
    1434:	306dfffd 	andi	t5,v1,0xfffd
    1438:	908f030c 	lbu	t7,780(a0)
    143c:	31f80002 	andi	t8,t7,0x2
    1440:	57000006 	bnezl	t8,145c <EnVali_Update+0x4c>
    1444:	9209030c 	lbu	t1,780(s0)
    1448:	9099038c 	lbu	t9,908(a0)
    144c:	33280002 	andi	t0,t9,0x2
    1450:	5100000b 	beqzl	t0,1480 <EnVali_Update+0x70>
    1454:	02002025 	move	a0,s0
    1458:	9209030c 	lbu	t1,780(s0)
    145c:	920b038c 	lbu	t3,908(s0)
    1460:	a20d040c 	sb	t5,1036(s0)
    1464:	312afffd 	andi	t2,t1,0xfffd
    1468:	316cfffd 	andi	t4,t3,0xfffd
    146c:	a20a030c 	sb	t2,780(s0)
    1470:	a20c038c 	sb	t4,908(s0)
    1474:	0c000000 	jal	0 <EnVali_Init>
    1478:	02002025 	move	a0,s0
    147c:	02002025 	move	a0,s0
    1480:	0c000000 	jal	0 <EnVali_Init>
    1484:	02202825 	move	a1,s1
    1488:	8e190190 	lw	t9,400(s0)
    148c:	02002025 	move	a0,s0
    1490:	02202825 	move	a1,s1
    1494:	0320f809 	jalr	t9
    1498:	00000000 	nop
    149c:	8e020190 	lw	v0,400(s0)
    14a0:	3c0e0000 	lui	t6,0x0
    14a4:	25ce0000 	addiu	t6,t6,0
    14a8:	11c2002b 	beq	t6,v0,1558 <EnVali_Update+0x148>
    14ac:	3c0f0000 	lui	t7,0x0
    14b0:	25ef0000 	addiu	t7,t7,0
    14b4:	11e20028 	beq	t7,v0,1558 <EnVali_Update+0x148>
    14b8:	02002025 	move	a0,s0
    14bc:	260503fc 	addiu	a1,s0,1020
    14c0:	0c000000 	jal	0 <EnVali_Init>
    14c4:	afa50020 	sw	a1,32(sp)
    14c8:	8e080190 	lw	t0,400(s0)
    14cc:	3c180000 	lui	t8,0x0
    14d0:	27180000 	addiu	t8,t8,0
    14d4:	1708000f 	bne	t8,t0,1514 <EnVali_Update+0x104>
    14d8:	02202025 	move	a0,s1
    14dc:	3c010001 	lui	at,0x1
    14e0:	34211e60 	ori	at,at,0x1e60
    14e4:	02212821 	addu	a1,s1,at
    14e8:	afa50024 	sw	a1,36(sp)
    14ec:	0c000000 	jal	0 <EnVali_Init>
    14f0:	260602fc 	addiu	a2,s0,764
    14f4:	8fa50024 	lw	a1,36(sp)
    14f8:	02202025 	move	a0,s1
    14fc:	0c000000 	jal	0 <EnVali_Init>
    1500:	2606037c 	addiu	a2,s0,892
    1504:	8fa50024 	lw	a1,36(sp)
    1508:	02202025 	move	a0,s1
    150c:	0c000000 	jal	0 <EnVali_Init>
    1510:	8fa60020 	lw	a2,32(sp)
    1514:	9209040d 	lbu	t1,1037(s0)
    1518:	3c010001 	lui	at,0x1
    151c:	34211e60 	ori	at,at,0x1e60
    1520:	312a0001 	andi	t2,t1,0x1
    1524:	11400006 	beqz	t2,1540 <EnVali_Update+0x130>
    1528:	02212821 	addu	a1,s1,at
    152c:	02202025 	move	a0,s1
    1530:	8fa60020 	lw	a2,32(sp)
    1534:	0c000000 	jal	0 <EnVali_Init>
    1538:	afa50024 	sw	a1,36(sp)
    153c:	8fa50024 	lw	a1,36(sp)
    1540:	02202025 	move	a0,s1
    1544:	0c000000 	jal	0 <EnVali_Init>
    1548:	8fa60020 	lw	a2,32(sp)
    154c:	02002025 	move	a0,s0
    1550:	0c000000 	jal	0 <EnVali_Init>
    1554:	24050000 	li	a1,0
    1558:	8fbf001c 	lw	ra,28(sp)
    155c:	8fb00014 	lw	s0,20(sp)
    1560:	8fb10018 	lw	s1,24(sp)
    1564:	03e00008 	jr	ra
    1568:	27bd0030 	addiu	sp,sp,48

0000156c <func_80B27C1C>:
    156c:	27bdffe0 	addiu	sp,sp,-32
    1570:	afbf001c 	sw	ra,28(sp)
    1574:	afb00018 	sw	s0,24(sp)
    1578:	8c820190 	lw	v0,400(a0)
    157c:	3c0e0000 	lui	t6,0x0
    1580:	44857000 	mtc1	a1,$f14
    1584:	25ce0000 	addiu	t6,t6,0
    1588:	15c20021 	bne	t6,v0,1610 <func_80B27C1C+0xa4>
    158c:	00c08025 	move	s0,a2
    1590:	24030014 	li	v1,20
    1594:	908f0194 	lbu	t7,404(a0)
    1598:	01e3001a 	div	zero,t7,v1
    159c:	14600002 	bnez	v1,15a8 <func_80B27C1C+0x3c>
    15a0:	00000000 	nop
    15a4:	0007000d 	break	0x7
    15a8:	2401ffff 	li	at,-1
    15ac:	14610004 	bne	v1,at,15c0 <func_80B27C1C+0x54>
    15b0:	3c018000 	lui	at,0x8000
    15b4:	15e10002 	bne	t7,at,15c0 <func_80B27C1C+0x54>
    15b8:	00000000 	nop
    15bc:	0006000d 	break	0x6
    15c0:	0000c010 	mfhi	t8
    15c4:	00781023 	subu	v0,v1,t8
    15c8:	2841000a 	slti	at,v0,10
    15cc:	54200003 	bnezl	at,15dc <func_80B27C1C+0x70>
    15d0:	44822000 	mtc1	v0,$f4
    15d4:	2442fff6 	addiu	v0,v0,-10
    15d8:	44822000 	mtc1	v0,$f4
    15dc:	3c010000 	lui	at,0x0
    15e0:	c4280000 	lwc1	$f8,0(at)
    15e4:	468021a0 	cvt.s.w	$f6,$f4
    15e8:	46083302 	mul.s	$f12,$f6,$f8
    15ec:	0c000000 	jal	0 <EnVali_Init>
    15f0:	00000000 	nop
    15f4:	3c010000 	lui	at,0x0
    15f8:	c4300000 	lwc1	$f16,0(at)
    15fc:	c60a0004 	lwc1	$f10,4(s0)
    1600:	46008482 	mul.s	$f18,$f16,$f0
    1604:	46125101 	sub.s	$f4,$f10,$f18
    1608:	1000005a 	b	1774 <func_80B27C1C+0x208>
    160c:	e6040004 	swc1	$f4,4(s0)
    1610:	3c190000 	lui	t9,0x0
    1614:	27390000 	addiu	t9,t9,0
    1618:	17220015 	bne	t9,v0,1670 <func_80B27C1C+0x104>
    161c:	3c080000 	lui	t0,0x0
    1620:	3c010000 	lui	at,0x0
    1624:	c4260000 	lwc1	$f6,0(at)
    1628:	460e3302 	mul.s	$f12,$f6,$f14
    162c:	0c000000 	jal	0 <EnVali_Init>
    1630:	00000000 	nop
    1634:	3c010000 	lui	at,0x0
    1638:	c4300000 	lwc1	$f16,0(at)
    163c:	c6080004 	lwc1	$f8,4(s0)
    1640:	3c010000 	lui	at,0x0
    1644:	46008282 	mul.s	$f10,$f16,$f0
    1648:	c6040000 	lwc1	$f4,0(s0)
    164c:	460a4481 	sub.s	$f18,$f8,$f10
    1650:	e6120004 	swc1	$f18,4(s0)
    1654:	c4260000 	lwc1	$f6,0(at)
    1658:	46003402 	mul.s	$f16,$f6,$f0
    165c:	46102201 	sub.s	$f8,$f4,$f16
    1660:	e6080000 	swc1	$f8,0(s0)
    1664:	c60a0000 	lwc1	$f10,0(s0)
    1668:	10000042 	b	1774 <func_80B27C1C+0x208>
    166c:	e60a0008 	swc1	$f10,8(s0)
    1670:	25080000 	addiu	t0,t0,0
    1674:	15020015 	bne	t0,v0,16cc <func_80B27C1C+0x160>
    1678:	3c090000 	lui	t1,0x0
    167c:	3c010000 	lui	at,0x0
    1680:	c4320000 	lwc1	$f18,0(at)
    1684:	460e9302 	mul.s	$f12,$f18,$f14
    1688:	0c000000 	jal	0 <EnVali_Init>
    168c:	00000000 	nop
    1690:	3c010000 	lui	at,0x0
    1694:	c4240000 	lwc1	$f4,0(at)
    1698:	c6060004 	lwc1	$f6,4(s0)
    169c:	3c010000 	lui	at,0x0
    16a0:	46002402 	mul.s	$f16,$f4,$f0
    16a4:	c60a0000 	lwc1	$f10,0(s0)
    16a8:	46103201 	sub.s	$f8,$f6,$f16
    16ac:	e6080004 	swc1	$f8,4(s0)
    16b0:	c4320000 	lwc1	$f18,0(at)
    16b4:	46009102 	mul.s	$f4,$f18,$f0
    16b8:	46045181 	sub.s	$f6,$f10,$f4
    16bc:	e6060000 	swc1	$f6,0(s0)
    16c0:	c6100000 	lwc1	$f16,0(s0)
    16c4:	1000002b 	b	1774 <func_80B27C1C+0x208>
    16c8:	e6100008 	swc1	$f16,8(s0)
    16cc:	25290000 	addiu	t1,t1,0
    16d0:	15220017 	bne	t1,v0,1730 <func_80B27C1C+0x1c4>
    16d4:	3c014220 	lui	at,0x4220
    16d8:	848a0196 	lh	t2,406(a0)
    16dc:	3c010000 	lui	at,0x0
    16e0:	c42a0000 	lwc1	$f10,0(at)
    16e4:	448a4000 	mtc1	t2,$f8
    16e8:	00000000 	nop
    16ec:	468044a0 	cvt.s.w	$f18,$f8
    16f0:	460a9302 	mul.s	$f12,$f18,$f10
    16f4:	0c000000 	jal	0 <EnVali_Init>
    16f8:	00000000 	nop
    16fc:	3c010000 	lui	at,0x0
    1700:	c4240000 	lwc1	$f4,0(at)
    1704:	c6060000 	lwc1	$f6,0(s0)
    1708:	c6080004 	lwc1	$f8,4(s0)
    170c:	46040082 	mul.s	$f2,$f0,$f4
    1710:	c60a0008 	lwc1	$f10,8(s0)
    1714:	46023400 	add.s	$f16,$f6,$f2
    1718:	46024481 	sub.s	$f18,$f8,$f2
    171c:	e6100000 	swc1	$f16,0(s0)
    1720:	46025100 	add.s	$f4,$f10,$f2
    1724:	e6120004 	swc1	$f18,4(s0)
    1728:	10000012 	b	1774 <func_80B27C1C+0x208>
    172c:	e6040008 	swc1	$f4,8(s0)
    1730:	44810000 	mtc1	at,$f0
    1734:	3c010000 	lui	at,0x0
    1738:	460e003e 	c.le.s	$f0,$f14
    173c:	00000000 	nop
    1740:	45000002 	bc1f	174c <func_80B27C1C+0x1e0>
    1744:	00000000 	nop
    1748:	46007381 	sub.s	$f14,$f14,$f0
    174c:	c4260000 	lwc1	$f6,0(at)
    1750:	460e3302 	mul.s	$f12,$f6,$f14
    1754:	0c000000 	jal	0 <EnVali_Init>
    1758:	00000000 	nop
    175c:	3c010000 	lui	at,0x0
    1760:	c4280000 	lwc1	$f8,0(at)
    1764:	c6100004 	lwc1	$f16,4(s0)
    1768:	46004482 	mul.s	$f18,$f8,$f0
    176c:	46128281 	sub.s	$f10,$f16,$f18
    1770:	e60a0004 	swc1	$f10,4(s0)
    1774:	8fbf001c 	lw	ra,28(sp)
    1778:	8fb00018 	lw	s0,24(sp)
    177c:	27bd0020 	addiu	sp,sp,32
    1780:	03e00008 	jr	ra
    1784:	00000000 	nop

00001788 <func_80B27E38>:
    1788:	27bdffe0 	addiu	sp,sp,-32
    178c:	afbf001c 	sw	ra,28(sp)
    1790:	afb00018 	sw	s0,24(sp)
    1794:	8c820190 	lw	v0,400(a0)
    1798:	3c0e0000 	lui	t6,0x0
    179c:	44857000 	mtc1	a1,$f14
    17a0:	25ce0000 	addiu	t6,t6,0
    17a4:	15c20021 	bne	t6,v0,182c <func_80B27E38+0xa4>
    17a8:	00c08025 	move	s0,a2
    17ac:	24030014 	li	v1,20
    17b0:	908f0194 	lbu	t7,404(a0)
    17b4:	01e3001a 	div	zero,t7,v1
    17b8:	14600002 	bnez	v1,17c4 <func_80B27E38+0x3c>
    17bc:	00000000 	nop
    17c0:	0007000d 	break	0x7
    17c4:	2401ffff 	li	at,-1
    17c8:	14610004 	bne	v1,at,17dc <func_80B27E38+0x54>
    17cc:	3c018000 	lui	at,0x8000
    17d0:	15e10002 	bne	t7,at,17dc <func_80B27E38+0x54>
    17d4:	00000000 	nop
    17d8:	0006000d 	break	0x6
    17dc:	0000c010 	mfhi	t8
    17e0:	00781023 	subu	v0,v1,t8
    17e4:	2841000a 	slti	at,v0,10
    17e8:	54200003 	bnezl	at,17f8 <func_80B27E38+0x70>
    17ec:	44822000 	mtc1	v0,$f4
    17f0:	2442fff6 	addiu	v0,v0,-10
    17f4:	44822000 	mtc1	v0,$f4
    17f8:	3c010000 	lui	at,0x0
    17fc:	c4280000 	lwc1	$f8,0(at)
    1800:	468021a0 	cvt.s.w	$f6,$f4
    1804:	46083302 	mul.s	$f12,$f6,$f8
    1808:	0c000000 	jal	0 <EnVali_Init>
    180c:	00000000 	nop
    1810:	3c010000 	lui	at,0x0
    1814:	c4300000 	lwc1	$f16,0(at)
    1818:	c60a0004 	lwc1	$f10,4(s0)
    181c:	46008482 	mul.s	$f18,$f16,$f0
    1820:	46125101 	sub.s	$f4,$f10,$f18
    1824:	1000005a 	b	1990 <func_80B27E38+0x208>
    1828:	e6040004 	swc1	$f4,4(s0)
    182c:	3c190000 	lui	t9,0x0
    1830:	27390000 	addiu	t9,t9,0
    1834:	17220015 	bne	t9,v0,188c <func_80B27E38+0x104>
    1838:	3c080000 	lui	t0,0x0
    183c:	3c010000 	lui	at,0x0
    1840:	c4260000 	lwc1	$f6,0(at)
    1844:	460e3302 	mul.s	$f12,$f6,$f14
    1848:	0c000000 	jal	0 <EnVali_Init>
    184c:	00000000 	nop
    1850:	3c010000 	lui	at,0x0
    1854:	c4300000 	lwc1	$f16,0(at)
    1858:	c6080004 	lwc1	$f8,4(s0)
    185c:	3c010000 	lui	at,0x0
    1860:	46008282 	mul.s	$f10,$f16,$f0
    1864:	c6040000 	lwc1	$f4,0(s0)
    1868:	460a4481 	sub.s	$f18,$f8,$f10
    186c:	e6120004 	swc1	$f18,4(s0)
    1870:	c4260000 	lwc1	$f6,0(at)
    1874:	46003402 	mul.s	$f16,$f6,$f0
    1878:	46102201 	sub.s	$f8,$f4,$f16
    187c:	e6080000 	swc1	$f8,0(s0)
    1880:	c60a0000 	lwc1	$f10,0(s0)
    1884:	10000042 	b	1990 <func_80B27E38+0x208>
    1888:	e60a0008 	swc1	$f10,8(s0)
    188c:	25080000 	addiu	t0,t0,0
    1890:	15020015 	bne	t0,v0,18e8 <func_80B27E38+0x160>
    1894:	3c090000 	lui	t1,0x0
    1898:	3c010000 	lui	at,0x0
    189c:	c4320000 	lwc1	$f18,0(at)
    18a0:	460e9302 	mul.s	$f12,$f18,$f14
    18a4:	0c000000 	jal	0 <EnVali_Init>
    18a8:	00000000 	nop
    18ac:	3c010000 	lui	at,0x0
    18b0:	c4240000 	lwc1	$f4,0(at)
    18b4:	c6060004 	lwc1	$f6,4(s0)
    18b8:	3c010000 	lui	at,0x0
    18bc:	46002402 	mul.s	$f16,$f4,$f0
    18c0:	c60a0000 	lwc1	$f10,0(s0)
    18c4:	46103201 	sub.s	$f8,$f6,$f16
    18c8:	e6080004 	swc1	$f8,4(s0)
    18cc:	c4320000 	lwc1	$f18,0(at)
    18d0:	46009102 	mul.s	$f4,$f18,$f0
    18d4:	46045181 	sub.s	$f6,$f10,$f4
    18d8:	e6060000 	swc1	$f6,0(s0)
    18dc:	c6100000 	lwc1	$f16,0(s0)
    18e0:	1000002b 	b	1990 <func_80B27E38+0x208>
    18e4:	e6100008 	swc1	$f16,8(s0)
    18e8:	25290000 	addiu	t1,t1,0
    18ec:	15220017 	bne	t1,v0,194c <func_80B27E38+0x1c4>
    18f0:	3c014220 	lui	at,0x4220
    18f4:	848a0196 	lh	t2,406(a0)
    18f8:	3c010000 	lui	at,0x0
    18fc:	c42a0000 	lwc1	$f10,0(at)
    1900:	448a4000 	mtc1	t2,$f8
    1904:	00000000 	nop
    1908:	468044a0 	cvt.s.w	$f18,$f8
    190c:	460a9302 	mul.s	$f12,$f18,$f10
    1910:	0c000000 	jal	0 <EnVali_Init>
    1914:	00000000 	nop
    1918:	3c010000 	lui	at,0x0
    191c:	c4240000 	lwc1	$f4,0(at)
    1920:	c6060000 	lwc1	$f6,0(s0)
    1924:	c6080004 	lwc1	$f8,4(s0)
    1928:	46040082 	mul.s	$f2,$f0,$f4
    192c:	c60a0008 	lwc1	$f10,8(s0)
    1930:	46023401 	sub.s	$f16,$f6,$f2
    1934:	46024480 	add.s	$f18,$f8,$f2
    1938:	e6100000 	swc1	$f16,0(s0)
    193c:	46025101 	sub.s	$f4,$f10,$f2
    1940:	e6120004 	swc1	$f18,4(s0)
    1944:	10000012 	b	1990 <func_80B27E38+0x208>
    1948:	e6040008 	swc1	$f4,8(s0)
    194c:	44810000 	mtc1	at,$f0
    1950:	3c010000 	lui	at,0x0
    1954:	460e003e 	c.le.s	$f0,$f14
    1958:	00000000 	nop
    195c:	45000002 	bc1f	1968 <func_80B27E38+0x1e0>
    1960:	00000000 	nop
    1964:	46007381 	sub.s	$f14,$f14,$f0
    1968:	c4260000 	lwc1	$f6,0(at)
    196c:	460e3302 	mul.s	$f12,$f6,$f14
    1970:	0c000000 	jal	0 <EnVali_Init>
    1974:	00000000 	nop
    1978:	3c010000 	lui	at,0x0
    197c:	c4280000 	lwc1	$f8,0(at)
    1980:	c6100004 	lwc1	$f16,4(s0)
    1984:	46004482 	mul.s	$f18,$f8,$f0
    1988:	46128281 	sub.s	$f10,$f16,$f18
    198c:	e60a0004 	swc1	$f10,4(s0)
    1990:	8fbf001c 	lw	ra,28(sp)
    1994:	8fb00018 	lw	s0,24(sp)
    1998:	27bd0020 	addiu	sp,sp,32
    199c:	03e00008 	jr	ra
    19a0:	00000000 	nop

000019a4 <func_80B28054>:
    19a4:	27bdffe8 	addiu	sp,sp,-24
    19a8:	afbf0014 	sw	ra,20(sp)
    19ac:	afa40018 	sw	a0,24(sp)
    19b0:	8c820190 	lw	v0,400(a0)
    19b4:	3c0f0000 	lui	t7,0x0
    19b8:	44857000 	mtc1	a1,$f14
    19bc:	25ef0000 	addiu	t7,t7,0
    19c0:	15e20022 	bne	t7,v0,1a4c <func_80B28054+0xa8>
    19c4:	3c180000 	lui	t8,0x0
    19c8:	3c014120 	lui	at,0x4120
    19cc:	44812000 	mtc1	at,$f4
    19d0:	3c01428c 	lui	at,0x428c
    19d4:	4604703e 	c.le.s	$f14,$f4
    19d8:	00000000 	nop
    19dc:	45020009 	bc1fl	1a04 <func_80B28054+0x60>
    19e0:	44818000 	mtc1	at,$f16
    19e4:	3c010000 	lui	at,0x0
    19e8:	c4260000 	lwc1	$f6,0(at)
    19ec:	3c013f80 	lui	at,0x3f80
    19f0:	44815000 	mtc1	at,$f10
    19f4:	46067202 	mul.s	$f8,$f14,$f6
    19f8:	1000003d 	b	1af0 <func_80B28054+0x14c>
    19fc:	460a4080 	add.s	$f2,$f8,$f10
    1a00:	44818000 	mtc1	at,$f16
    1a04:	3c013fc0 	lui	at,0x3fc0
    1a08:	460e803c 	c.lt.s	$f16,$f14
    1a0c:	00000000 	nop
    1a10:	4502000c 	bc1fl	1a44 <func_80B28054+0xa0>
    1a14:	44811000 	mtc1	at,$f2
    1a18:	3c0142a0 	lui	at,0x42a0
    1a1c:	44819000 	mtc1	at,$f18
    1a20:	3c010000 	lui	at,0x0
    1a24:	c4260000 	lwc1	$f6,0(at)
    1a28:	460e9101 	sub.s	$f4,$f18,$f14
    1a2c:	3c013f80 	lui	at,0x3f80
    1a30:	44815000 	mtc1	at,$f10
    1a34:	46062202 	mul.s	$f8,$f4,$f6
    1a38:	1000002d 	b	1af0 <func_80B28054+0x14c>
    1a3c:	460a4080 	add.s	$f2,$f8,$f10
    1a40:	44811000 	mtc1	at,$f2
    1a44:	1000002b 	b	1af4 <func_80B28054+0x150>
    1a48:	8fa40018 	lw	a0,24(sp)
    1a4c:	27180000 	addiu	t8,t8,0
    1a50:	1702000d 	bne	t8,v0,1a88 <func_80B28054+0xe4>
    1a54:	3c190000 	lui	t9,0x0
    1a58:	3c010000 	lui	at,0x0
    1a5c:	c4300000 	lwc1	$f16,0(at)
    1a60:	460e8302 	mul.s	$f12,$f16,$f14
    1a64:	0c000000 	jal	0 <EnVali_Init>
    1a68:	00000000 	nop
    1a6c:	3c013f80 	lui	at,0x3f80
    1a70:	44819000 	mtc1	at,$f18
    1a74:	3c010000 	lui	at,0x0
    1a78:	c4240000 	lwc1	$f4,0(at)
    1a7c:	46040182 	mul.s	$f6,$f0,$f4
    1a80:	1000001b 	b	1af0 <func_80B28054+0x14c>
    1a84:	46069081 	sub.s	$f2,$f18,$f6
    1a88:	27390000 	addiu	t9,t9,0
    1a8c:	1722000d 	bne	t9,v0,1ac4 <func_80B28054+0x120>
    1a90:	3c080000 	lui	t0,0x0
    1a94:	3c010000 	lui	at,0x0
    1a98:	c4280000 	lwc1	$f8,0(at)
    1a9c:	460e4302 	mul.s	$f12,$f8,$f14
    1aa0:	0c000000 	jal	0 <EnVali_Init>
    1aa4:	00000000 	nop
    1aa8:	3c013f80 	lui	at,0x3f80
    1aac:	44815000 	mtc1	at,$f10
    1ab0:	3c010000 	lui	at,0x0
    1ab4:	c4300000 	lwc1	$f16,0(at)
    1ab8:	46100102 	mul.s	$f4,$f0,$f16
    1abc:	1000000c 	b	1af0 <func_80B28054+0x14c>
    1ac0:	46045081 	sub.s	$f2,$f10,$f4
    1ac4:	25080000 	addiu	t0,t0,0
    1ac8:	11020004 	beq	t0,v0,1adc <func_80B28054+0x138>
    1acc:	3c090000 	lui	t1,0x0
    1ad0:	25290000 	addiu	t1,t1,0
    1ad4:	15220004 	bne	t1,v0,1ae8 <func_80B28054+0x144>
    1ad8:	3c013f80 	lui	at,0x3f80
    1adc:	8faa0018 	lw	t2,24(sp)
    1ae0:	10000003 	b	1af0 <func_80B28054+0x14c>
    1ae4:	c54202f4 	lwc1	$f2,756(t2)
    1ae8:	44811000 	mtc1	at,$f2
    1aec:	00000000 	nop
    1af0:	8fa40018 	lw	a0,24(sp)
    1af4:	44051000 	mfc1	a1,$f2
    1af8:	3c063dcc 	lui	a2,0x3dcc
    1afc:	34c6cccd 	ori	a2,a2,0xcccd
    1b00:	0c000000 	jal	0 <EnVali_Init>
    1b04:	248402f4 	addiu	a0,a0,756
    1b08:	8fab0018 	lw	t3,24(sp)
    1b0c:	3c013f80 	lui	at,0x3f80
    1b10:	44819000 	mtc1	at,$f18
    1b14:	c56602f4 	lwc1	$f6,756(t3)
    1b18:	8fbf0014 	lw	ra,20(sp)
    1b1c:	24020001 	li	v0,1
    1b20:	46069032 	c.eq.s	$f18,$f6
    1b24:	00000000 	nop
    1b28:	45000003 	bc1f	1b38 <func_80B28054+0x194>
    1b2c:	00000000 	nop
    1b30:	10000001 	b	1b38 <func_80B28054+0x194>
    1b34:	00001025 	move	v0,zero
    1b38:	03e00008 	jr	ra
    1b3c:	27bd0018 	addiu	sp,sp,24

00001b40 <func_80B281F0>:
    1b40:	27bdffe8 	addiu	sp,sp,-24
    1b44:	24010002 	li	at,2
    1b48:	afbf0014 	sw	ra,20(sp)
    1b4c:	afa40018 	sw	a0,24(sp)
    1b50:	10a10006 	beq	a1,at,1b6c <func_80B281F0+0x2c>
    1b54:	afa70024 	sw	a3,36(sp)
    1b58:	2401001c 	li	at,28
    1b5c:	10a10003 	beq	a1,at,1b6c <func_80B281F0+0x2c>
    1b60:	2401001b 	li	at,27
    1b64:	14a10004 	bne	a1,at,1b78 <func_80B281F0+0x38>
    1b68:	8fa4002c 	lw	a0,44(sp)
    1b6c:	acc00000 	sw	zero,0(a2)
    1b70:	10000013 	b	1bc0 <func_80B281F0+0x80>
    1b74:	00001025 	move	v0,zero
    1b78:	24010009 	li	at,9
    1b7c:	10a10004 	beq	a1,at,1b90 <func_80B281F0+0x50>
    1b80:	c4800164 	lwc1	$f0,356(a0)
    1b84:	24010012 	li	at,18
    1b88:	54a1000d 	bnel	a1,at,1bc0 <func_80B281F0+0x80>
    1b8c:	00001025 	move	v0,zero
    1b90:	44050000 	mfc1	a1,$f0
    1b94:	0c000000 	jal	0 <EnVali_Init>
    1b98:	00000000 	nop
    1b9c:	10400007 	beqz	v0,1bbc <func_80B281F0+0x7c>
    1ba0:	3c013f80 	lui	at,0x3f80
    1ba4:	44817000 	mtc1	at,$f14
    1ba8:	8fae002c 	lw	t6,44(sp)
    1bac:	24070001 	li	a3,1
    1bb0:	44067000 	mfc1	a2,$f14
    1bb4:	0c000000 	jal	0 <EnVali_Init>
    1bb8:	c5cc02f4 	lwc1	$f12,756(t6)
    1bbc:	00001025 	move	v0,zero
    1bc0:	8fbf0014 	lw	ra,20(sp)
    1bc4:	27bd0018 	addiu	sp,sp,24
    1bc8:	03e00008 	jr	ra
    1bcc:	00000000 	nop

00001bd0 <func_80B28280>:
    1bd0:	27bdffb8 	addiu	sp,sp,-72
    1bd4:	afb00020 	sw	s0,32(sp)
    1bd8:	8fb00058 	lw	s0,88(sp)
    1bdc:	afbf0024 	sw	ra,36(sp)
    1be0:	afa40048 	sw	a0,72(sp)
    1be4:	afa5004c 	sw	a1,76(sp)
    1be8:	afa60050 	sw	a2,80(sp)
    1bec:	afa70054 	sw	a3,84(sp)
    1bf0:	8e0f0190 	lw	t7,400(s0)
    1bf4:	3c0e0000 	lui	t6,0x0
    1bf8:	25ce0000 	addiu	t6,t6,0
    1bfc:	15cf0020 	bne	t6,t7,1c80 <func_80B28280+0xb0>
    1c00:	00a03025 	move	a2,a1
    1c04:	2401000b 	li	at,11
    1c08:	10a10003 	beq	a1,at,1c18 <func_80B28280+0x48>
    1c0c:	3c040000 	lui	a0,0x0
    1c10:	24010014 	li	at,20
    1c14:	14a1001a 	bne	a1,at,1c80 <func_80B28280+0xb0>
    1c18:	24840000 	addiu	a0,a0,0
    1c1c:	27a5003c 	addiu	a1,sp,60
    1c20:	0c000000 	jal	0 <EnVali_Init>
    1c24:	afa6004c 	sw	a2,76(sp)
    1c28:	3c040000 	lui	a0,0x0
    1c2c:	24840000 	addiu	a0,a0,0
    1c30:	0c000000 	jal	0 <EnVali_Init>
    1c34:	27a50030 	addiu	a1,sp,48
    1c38:	8fa6004c 	lw	a2,76(sp)
    1c3c:	2401000b 	li	at,11
    1c40:	27a50030 	addiu	a1,sp,48
    1c44:	14c10009 	bne	a2,at,1c6c <func_80B28280+0x9c>
    1c48:	2604037c 	addiu	a0,s0,892
    1c4c:	26180348 	addiu	t8,s0,840
    1c50:	afb80010 	sw	t8,16(sp)
    1c54:	260402fc 	addiu	a0,s0,764
    1c58:	27a6003c 	addiu	a2,sp,60
    1c5c:	0c000000 	jal	0 <EnVali_Init>
    1c60:	2607033c 	addiu	a3,s0,828
    1c64:	10000007 	b	1c84 <func_80B28280+0xb4>
    1c68:	8fbf0024 	lw	ra,36(sp)
    1c6c:	261903c8 	addiu	t9,s0,968
    1c70:	afb90010 	sw	t9,16(sp)
    1c74:	27a6003c 	addiu	a2,sp,60
    1c78:	0c000000 	jal	0 <EnVali_Init>
    1c7c:	260703bc 	addiu	a3,s0,956
    1c80:	8fbf0024 	lw	ra,36(sp)
    1c84:	8fb00020 	lw	s0,32(sp)
    1c88:	27bd0048 	addiu	sp,sp,72
    1c8c:	03e00008 	jr	ra
    1c90:	00000000 	nop

00001c94 <func_80B28344>:
    1c94:	27bdff40 	addiu	sp,sp,-192
    1c98:	3c0f0000 	lui	t7,0x0
    1c9c:	afbf001c 	sw	ra,28(sp)
    1ca0:	afb00018 	sw	s0,24(sp)
    1ca4:	afa400c0 	sw	a0,192(sp)
    1ca8:	afa500c4 	sw	a1,196(sp)
    1cac:	25ef0000 	addiu	t7,t7,0
    1cb0:	8df90000 	lw	t9,0(t7)
    1cb4:	27ae0068 	addiu	t6,sp,104
    1cb8:	8df80004 	lw	t8,4(t7)
    1cbc:	add90000 	sw	t9,0(t6)
    1cc0:	8df90008 	lw	t9,8(t7)
    1cc4:	add80004 	sw	t8,4(t6)
    1cc8:	3c060000 	lui	a2,0x0
    1ccc:	add90008 	sw	t9,8(t6)
    1cd0:	8fa800c4 	lw	t0,196(sp)
    1cd4:	24c60000 	addiu	a2,a2,0
    1cd8:	27a40054 	addiu	a0,sp,84
    1cdc:	8d050000 	lw	a1,0(t0)
    1ce0:	24070594 	li	a3,1428
    1ce4:	0c000000 	jal	0 <EnVali_Init>
    1ce8:	00a08025 	move	s0,a1
    1cec:	0c000000 	jal	0 <EnVali_Init>
    1cf0:	27a40080 	addiu	a0,sp,128
    1cf4:	8fa400c0 	lw	a0,192(sp)
    1cf8:	27a60068 	addiu	a2,sp,104
    1cfc:	c4800164 	lwc1	$f0,356(a0)
    1d00:	44050000 	mfc1	a1,$f0
    1d04:	0c000000 	jal	0 <EnVali_Init>
    1d08:	e7a00074 	swc1	$f0,116(sp)
    1d0c:	c7ac0068 	lwc1	$f12,104(sp)
    1d10:	c7ae006c 	lwc1	$f14,108(sp)
    1d14:	8fa60070 	lw	a2,112(sp)
    1d18:	0c000000 	jal	0 <EnVali_Init>
    1d1c:	24070001 	li	a3,1
    1d20:	8e0202d0 	lw	v0,720(s0)
    1d24:	3c0ada38 	lui	t2,0xda38
    1d28:	354a0003 	ori	t2,t2,0x3
    1d2c:	24490008 	addiu	t1,v0,8
    1d30:	ae0902d0 	sw	t1,720(s0)
    1d34:	ac4a0000 	sw	t2,0(v0)
    1d38:	8fab00c4 	lw	t3,196(sp)
    1d3c:	3c050000 	lui	a1,0x0
    1d40:	24a50000 	addiu	a1,a1,0
    1d44:	8d640000 	lw	a0,0(t3)
    1d48:	2406059c 	li	a2,1436
    1d4c:	0c000000 	jal	0 <EnVali_Init>
    1d50:	afa20050 	sw	v0,80(sp)
    1d54:	8fa30050 	lw	v1,80(sp)
    1d58:	3c0e0600 	lui	t6,0x600
    1d5c:	25ce2610 	addiu	t6,t6,9744
    1d60:	ac620004 	sw	v0,4(v1)
    1d64:	8e0202d0 	lw	v0,720(s0)
    1d68:	3c0dde00 	lui	t5,0xde00
    1d6c:	27a40080 	addiu	a0,sp,128
    1d70:	244c0008 	addiu	t4,v0,8
    1d74:	ae0c02d0 	sw	t4,720(s0)
    1d78:	ac4e0004 	sw	t6,4(v0)
    1d7c:	0c000000 	jal	0 <EnVali_Init>
    1d80:	ac4d0000 	sw	t5,0(v0)
    1d84:	8faf00c0 	lw	t7,192(sp)
    1d88:	3c010000 	lui	at,0x0
    1d8c:	c4280000 	lwc1	$f8,0(at)
    1d90:	85f800b6 	lh	t8,182(t7)
    1d94:	24050001 	li	a1,1
    1d98:	0018c823 	negu	t9,t8
    1d9c:	44992000 	mtc1	t9,$f4
    1da0:	00000000 	nop
    1da4:	468021a0 	cvt.s.w	$f6,$f4
    1da8:	46083302 	mul.s	$f12,$f6,$f8
    1dac:	0c000000 	jal	0 <EnVali_Init>
    1db0:	00000000 	nop
    1db4:	8fa800c0 	lw	t0,192(sp)
    1db8:	0c000000 	jal	0 <EnVali_Init>
    1dbc:	850400b6 	lh	a0,182(t0)
    1dc0:	8fa900c0 	lw	t1,192(sp)
    1dc4:	e7a0007c 	swc1	$f0,124(sp)
    1dc8:	0c000000 	jal	0 <EnVali_Init>
    1dcc:	852400b6 	lh	a0,182(t1)
    1dd0:	8e0202d0 	lw	v0,720(s0)
    1dd4:	3c0bda38 	lui	t3,0xda38
    1dd8:	356b0003 	ori	t3,t3,0x3
    1ddc:	244a0008 	addiu	t2,v0,8
    1de0:	ae0a02d0 	sw	t2,720(s0)
    1de4:	ac4b0000 	sw	t3,0(v0)
    1de8:	8fac00c4 	lw	t4,196(sp)
    1dec:	3c050000 	lui	a1,0x0
    1df0:	24a50000 	addiu	a1,a1,0
    1df4:	8d840000 	lw	a0,0(t4)
    1df8:	e7a00078 	swc1	$f0,120(sp)
    1dfc:	240605a6 	li	a2,1446
    1e00:	0c000000 	jal	0 <EnVali_Init>
    1e04:	afa20048 	sw	v0,72(sp)
    1e08:	8fa30048 	lw	v1,72(sp)
    1e0c:	c7a20078 	lwc1	$f2,120(sp)
    1e10:	3c040600 	lui	a0,0x600
    1e14:	ac620004 	sw	v0,4(v1)
    1e18:	8e0202d0 	lw	v0,720(s0)
    1e1c:	24842740 	addiu	a0,a0,10048
    1e20:	3c0ede00 	lui	t6,0xde00
    1e24:	244d0008 	addiu	t5,v0,8
    1e28:	ae0d02d0 	sw	t5,720(s0)
    1e2c:	3c0143fd 	lui	at,0x43fd
    1e30:	ac440004 	sw	a0,4(v0)
    1e34:	ac4e0000 	sw	t6,0(v0)
    1e38:	c7b2007c 	lwc1	$f18,124(sp)
    1e3c:	44810000 	mtc1	at,$f0
    1e40:	3c0143ba 	lui	at,0x43ba
    1e44:	44818000 	mtc1	at,$f16
    1e48:	46120282 	mul.s	$f10,$f0,$f18
    1e4c:	3c010000 	lui	at,0x0
    1e50:	c42e0000 	lwc1	$f14,0(at)
    1e54:	46028102 	mul.s	$f4,$f16,$f2
    1e58:	afa40028 	sw	a0,40(sp)
    1e5c:	24070001 	li	a3,1
    1e60:	46128182 	mul.s	$f6,$f16,$f18
    1e64:	e7a20078 	swc1	$f2,120(sp)
    1e68:	46020202 	mul.s	$f8,$f0,$f2
    1e6c:	46045300 	add.s	$f12,$f10,$f4
    1e70:	46083281 	sub.s	$f10,$f6,$f8
    1e74:	44065000 	mfc1	a2,$f10
    1e78:	0c000000 	jal	0 <EnVali_Init>
    1e7c:	00000000 	nop
    1e80:	8e0202d0 	lw	v0,720(s0)
    1e84:	c7a20078 	lwc1	$f2,120(sp)
    1e88:	3c18da38 	lui	t8,0xda38
    1e8c:	244f0008 	addiu	t7,v0,8
    1e90:	ae0f02d0 	sw	t7,720(s0)
    1e94:	37180003 	ori	t8,t8,0x3
    1e98:	ac580000 	sw	t8,0(v0)
    1e9c:	8fb900c4 	lw	t9,196(sp)
    1ea0:	3c050000 	lui	a1,0x0
    1ea4:	24a50000 	addiu	a1,a1,0
    1ea8:	8f240000 	lw	a0,0(t9)
    1eac:	240605af 	li	a2,1455
    1eb0:	afa20040 	sw	v0,64(sp)
    1eb4:	0c000000 	jal	0 <EnVali_Init>
    1eb8:	e7a20078 	swc1	$f2,120(sp)
    1ebc:	8fa30040 	lw	v1,64(sp)
    1ec0:	c7a20078 	lwc1	$f2,120(sp)
    1ec4:	3c09de00 	lui	t1,0xde00
    1ec8:	ac620004 	sw	v0,4(v1)
    1ecc:	8e0202d0 	lw	v0,720(s0)
    1ed0:	3c01c471 	lui	at,0xc471
    1ed4:	44812000 	mtc1	at,$f4
    1ed8:	24480008 	addiu	t0,v0,8
    1edc:	ae0802d0 	sw	t0,720(s0)
    1ee0:	ac490000 	sw	t1,0(v0)
    1ee4:	8faa0028 	lw	t2,40(sp)
    1ee8:	3c014449 	lui	at,0x4449
    1eec:	44815000 	mtc1	at,$f10
    1ef0:	ac4a0004 	sw	t2,4(v0)
    1ef4:	c7a6007c 	lwc1	$f6,124(sp)
    1ef8:	3c01c2d8 	lui	at,0xc2d8
    1efc:	44817000 	mtc1	at,$f14
    1f00:	46062202 	mul.s	$f8,$f4,$f6
    1f04:	3c01c449 	lui	at,0xc449
    1f08:	24070001 	li	a3,1
    1f0c:	46025102 	mul.s	$f4,$f10,$f2
    1f10:	44815000 	mtc1	at,$f10
    1f14:	3c014471 	lui	at,0x4471
    1f18:	46044301 	sub.s	$f12,$f8,$f4
    1f1c:	46065202 	mul.s	$f8,$f10,$f6
    1f20:	44812000 	mtc1	at,$f4
    1f24:	00000000 	nop
    1f28:	46022282 	mul.s	$f10,$f4,$f2
    1f2c:	460a4180 	add.s	$f6,$f8,$f10
    1f30:	44063000 	mfc1	a2,$f6
    1f34:	0c000000 	jal	0 <EnVali_Init>
    1f38:	00000000 	nop
    1f3c:	8e0202d0 	lw	v0,720(s0)
    1f40:	3c0cda38 	lui	t4,0xda38
    1f44:	358c0003 	ori	t4,t4,0x3
    1f48:	244b0008 	addiu	t3,v0,8
    1f4c:	ae0b02d0 	sw	t3,720(s0)
    1f50:	ac4c0000 	sw	t4,0(v0)
    1f54:	8fad00c4 	lw	t5,196(sp)
    1f58:	3c050000 	lui	a1,0x0
    1f5c:	24a50000 	addiu	a1,a1,0
    1f60:	8da40000 	lw	a0,0(t5)
    1f64:	240605b7 	li	a2,1463
    1f68:	0c000000 	jal	0 <EnVali_Init>
    1f6c:	afa20038 	sw	v0,56(sp)
    1f70:	8fa30038 	lw	v1,56(sp)
    1f74:	3c0fde00 	lui	t7,0xde00
    1f78:	27a40080 	addiu	a0,sp,128
    1f7c:	ac620004 	sw	v0,4(v1)
    1f80:	8e0202d0 	lw	v0,720(s0)
    1f84:	244e0008 	addiu	t6,v0,8
    1f88:	ae0e02d0 	sw	t6,720(s0)
    1f8c:	ac4f0000 	sw	t7,0(v0)
    1f90:	8fb80028 	lw	t8,40(sp)
    1f94:	0c000000 	jal	0 <EnVali_Init>
    1f98:	ac580004 	sw	t8,4(v0)
    1f9c:	3c013f80 	lui	at,0x3f80
    1fa0:	44810000 	mtc1	at,$f0
    1fa4:	8fa400c0 	lw	a0,192(sp)
    1fa8:	8fa50074 	lw	a1,116(sp)
    1fac:	27a60068 	addiu	a2,sp,104
    1fb0:	e7a00070 	swc1	$f0,112(sp)
    1fb4:	e7a0006c 	swc1	$f0,108(sp)
    1fb8:	0c000000 	jal	0 <EnVali_Init>
    1fbc:	e7a00068 	swc1	$f0,104(sp)
    1fc0:	c7ac0068 	lwc1	$f12,104(sp)
    1fc4:	c7ae006c 	lwc1	$f14,108(sp)
    1fc8:	8fa60070 	lw	a2,112(sp)
    1fcc:	0c000000 	jal	0 <EnVali_Init>
    1fd0:	24070001 	li	a3,1
    1fd4:	8e0202d0 	lw	v0,720(s0)
    1fd8:	3c08da38 	lui	t0,0xda38
    1fdc:	35080003 	ori	t0,t0,0x3
    1fe0:	24590008 	addiu	t9,v0,8
    1fe4:	ae1902d0 	sw	t9,720(s0)
    1fe8:	ac480000 	sw	t0,0(v0)
    1fec:	8fa900c4 	lw	t1,196(sp)
    1ff0:	3c050000 	lui	a1,0x0
    1ff4:	24a50000 	addiu	a1,a1,0
    1ff8:	8d240000 	lw	a0,0(t1)
    1ffc:	240605bf 	li	a2,1471
    2000:	0c000000 	jal	0 <EnVali_Init>
    2004:	afa20030 	sw	v0,48(sp)
    2008:	8fa30030 	lw	v1,48(sp)
    200c:	3c0c0600 	lui	t4,0x600
    2010:	258c27d8 	addiu	t4,t4,10200
    2014:	ac620004 	sw	v0,4(v1)
    2018:	8e0202d0 	lw	v0,720(s0)
    201c:	3c0bde00 	lui	t3,0xde00
    2020:	27a40080 	addiu	a0,sp,128
    2024:	244a0008 	addiu	t2,v0,8
    2028:	ae0a02d0 	sw	t2,720(s0)
    202c:	ac4c0004 	sw	t4,4(v0)
    2030:	0c000000 	jal	0 <EnVali_Init>
    2034:	ac4b0000 	sw	t3,0(v0)
    2038:	8fad00c4 	lw	t5,196(sp)
    203c:	3c060000 	lui	a2,0x0
    2040:	24c60000 	addiu	a2,a2,0
    2044:	27a40054 	addiu	a0,sp,84
    2048:	240705c5 	li	a3,1477
    204c:	0c000000 	jal	0 <EnVali_Init>
    2050:	8da50000 	lw	a1,0(t5)
    2054:	8fbf001c 	lw	ra,28(sp)
    2058:	8fb00018 	lw	s0,24(sp)
    205c:	27bd00c0 	addiu	sp,sp,192
    2060:	03e00008 	jr	ra
    2064:	00000000 	nop

00002068 <EnVali_Draw>:
    2068:	27bdff98 	addiu	sp,sp,-104
    206c:	afb1002c 	sw	s1,44(sp)
    2070:	00a08825 	move	s1,a1
    2074:	afbf0034 	sw	ra,52(sp)
    2078:	afb20030 	sw	s2,48(sp)
    207c:	afb00028 	sw	s0,40(sp)
    2080:	8ca50000 	lw	a1,0(a1)
    2084:	00809025 	move	s2,a0
    2088:	3c060000 	lui	a2,0x0
    208c:	24c60000 	addiu	a2,a2,0
    2090:	27a4004c 	addiu	a0,sp,76
    2094:	240705e1 	li	a3,1505
    2098:	0c000000 	jal	0 <EnVali_Init>
    209c:	00a08025 	move	s0,a1
    20a0:	0c000000 	jal	0 <EnVali_Init>
    20a4:	8e240000 	lw	a0,0(s1)
    20a8:	8e0202d0 	lw	v0,720(s0)
    20ac:	3c0fdb06 	lui	t7,0xdb06
    20b0:	35ef0020 	ori	t7,t7,0x20
    20b4:	244e0008 	addiu	t6,v0,8
    20b8:	ae0e02d0 	sw	t6,720(s0)
    20bc:	3c180001 	lui	t8,0x1
    20c0:	0311c021 	addu	t8,t8,s1
    20c4:	ac4f0000 	sw	t7,0(v0)
    20c8:	8f181de4 	lw	t8,7652(t8)
    20cc:	2408007f 	li	t0,127
    20d0:	8e240000 	lw	a0,0(s1)
    20d4:	0018c880 	sll	t9,t8,0x2
    20d8:	0338c823 	subu	t9,t9,t8
    20dc:	0019c880 	sll	t9,t9,0x2
    20e0:	01193023 	subu	a2,t0,t9
    20e4:	24090020 	li	t1,32
    20e8:	afa90010 	sw	t1,16(sp)
    20ec:	30c6007f 	andi	a2,a2,0x7f
    20f0:	00002825 	move	a1,zero
    20f4:	24070020 	li	a3,32
    20f8:	0c000000 	jal	0 <EnVali_Init>
    20fc:	afa20048 	sw	v0,72(sp)
    2100:	8fa30048 	lw	v1,72(sp)
    2104:	3c0ddb06 	lui	t5,0xdb06
    2108:	3c18db06 	lui	t8,0xdb06
    210c:	ac620004 	sw	v0,4(v1)
    2110:	924a0194 	lbu	t2,404(s2)
    2114:	35ad0024 	ori	t5,t5,0x24
    2118:	37180024 	ori	t8,t8,0x24
    211c:	314b0001 	andi	t3,t2,0x1
    2120:	11600009 	beqz	t3,2148 <EnVali_Draw+0xe0>
    2124:	02402025 	move	a0,s2
    2128:	8e0202d0 	lw	v0,720(s0)
    212c:	3c0e0000 	lui	t6,0x0
    2130:	25ce0000 	addiu	t6,t6,0
    2134:	244c0008 	addiu	t4,v0,8
    2138:	ae0c02d0 	sw	t4,720(s0)
    213c:	ac4e0004 	sw	t6,4(v0)
    2140:	10000008 	b	2164 <EnVali_Draw+0xfc>
    2144:	ac4d0000 	sw	t5,0(v0)
    2148:	8e0202d0 	lw	v0,720(s0)
    214c:	3c080000 	lui	t0,0x0
    2150:	25080000 	addiu	t0,t0,0
    2154:	244f0008 	addiu	t7,v0,8
    2158:	ae0f02d0 	sw	t7,720(s0)
    215c:	ac480004 	sw	t0,4(v0)
    2160:	ac580000 	sw	t8,0(v0)
    2164:	0c000000 	jal	0 <EnVali_Init>
    2168:	02202825 	move	a1,s1
    216c:	8e450150 	lw	a1,336(s2)
    2170:	8e46016c 	lw	a2,364(s2)
    2174:	3c190000 	lui	t9,0x0
    2178:	27390000 	addiu	t9,t9,0
    217c:	afb90010 	sw	t9,16(sp)
    2180:	afb20014 	sw	s2,20(sp)
    2184:	8e0902d0 	lw	t1,720(s0)
    2188:	3c070000 	lui	a3,0x0
    218c:	24e70000 	addiu	a3,a3,0
    2190:	02202025 	move	a0,s1
    2194:	0c000000 	jal	0 <EnVali_Init>
    2198:	afa90018 	sw	t1,24(sp)
    219c:	ae0202d0 	sw	v0,720(s0)
    21a0:	3c060000 	lui	a2,0x0
    21a4:	24c60000 	addiu	a2,a2,0
    21a8:	8e250000 	lw	a1,0(s1)
    21ac:	27a4004c 	addiu	a0,sp,76
    21b0:	0c000000 	jal	0 <EnVali_Init>
    21b4:	24070602 	li	a3,1538
    21b8:	8fbf0034 	lw	ra,52(sp)
    21bc:	8fb00028 	lw	s0,40(sp)
    21c0:	8fb1002c 	lw	s1,44(sp)
    21c4:	8fb20030 	lw	s2,48(sp)
    21c8:	03e00008 	jr	ra
    21cc:	27bd0068 	addiu	sp,sp,104
