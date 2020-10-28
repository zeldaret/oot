
build/src/code/sys_matrix.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Matrix_Init>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	3c060000 	lui	a2,0x0
       c:	24c60000 	addiu	a2,a2,0
      10:	24050500 	li	a1,1280
      14:	0c000000 	jal	0 <Matrix_Init>
      18:	24070099 	li	a3,153
      1c:	8fbf0014 	lw	ra,20(sp)
      20:	3c030000 	lui	v1,0x0
      24:	24630000 	addiu	v1,v1,0
      28:	ac620000 	sw	v0,0(v1)
      2c:	3c010000 	lui	at,0x0
      30:	ac220000 	sw	v0,0(at)
      34:	03e00008 	jr	ra
      38:	27bd0018 	addiu	sp,sp,24

0000003c <Matrix_Push>:
      3c:	3c050000 	lui	a1,0x0
      40:	8ca50000 	lw	a1,0(a1)
      44:	27bdffe8 	addiu	sp,sp,-24
      48:	afbf0014 	sw	ra,20(sp)
      4c:	0c000000 	jal	0 <Matrix_Init>
      50:	24a40040 	addiu	a0,a1,64
      54:	3c020000 	lui	v0,0x0
      58:	24420000 	addiu	v0,v0,0
      5c:	8c4e0000 	lw	t6,0(v0)
      60:	8fbf0014 	lw	ra,20(sp)
      64:	27bd0018 	addiu	sp,sp,24
      68:	25cf0040 	addiu	t7,t6,64
      6c:	03e00008 	jr	ra
      70:	ac4f0000 	sw	t7,0(v0)

00000074 <Matrix_Pull>:
      74:	3c020000 	lui	v0,0x0
      78:	24420000 	addiu	v0,v0,0
      7c:	8c4e0000 	lw	t6,0(v0)
      80:	3c190000 	lui	t9,0x0
      84:	27bdffe8 	addiu	sp,sp,-24
      88:	25cfffc0 	addiu	t7,t6,-64
      8c:	ac4f0000 	sw	t7,0(v0)
      90:	8f390000 	lw	t9,0(t9)
      94:	3c040000 	lui	a0,0x0
      98:	afbf0014 	sw	ra,20(sp)
      9c:	01f9082b 	sltu	at,t7,t9
      a0:	10200005 	beqz	at,b8 <Matrix_Pull+0x44>
      a4:	24840010 	addiu	a0,a0,16
      a8:	3c050000 	lui	a1,0x0
      ac:	24a5002c 	addiu	a1,a1,44
      b0:	0c000000 	jal	0 <Matrix_Init>
      b4:	240600b0 	li	a2,176
      b8:	8fbf0014 	lw	ra,20(sp)
      bc:	27bd0018 	addiu	sp,sp,24
      c0:	03e00008 	jr	ra
      c4:	00000000 	nop

000000c8 <Matrix_Get>:
      c8:	27bdffe8 	addiu	sp,sp,-24
      cc:	afbf0014 	sw	ra,20(sp)
      d0:	3c050000 	lui	a1,0x0
      d4:	0c000000 	jal	0 <Matrix_Init>
      d8:	8ca50000 	lw	a1,0(a1)
      dc:	8fbf0014 	lw	ra,20(sp)
      e0:	27bd0018 	addiu	sp,sp,24
      e4:	03e00008 	jr	ra
      e8:	00000000 	nop

000000ec <Matrix_Put>:
      ec:	27bdffe8 	addiu	sp,sp,-24
      f0:	00802825 	move	a1,a0
      f4:	afbf0014 	sw	ra,20(sp)
      f8:	3c040000 	lui	a0,0x0
      fc:	0c000000 	jal	0 <Matrix_Init>
     100:	8c840000 	lw	a0,0(a0)
     104:	8fbf0014 	lw	ra,20(sp)
     108:	27bd0018 	addiu	sp,sp,24
     10c:	03e00008 	jr	ra
     110:	00000000 	nop

00000114 <Matrix_GetCurrent>:
     114:	3c020000 	lui	v0,0x0
     118:	03e00008 	jr	ra
     11c:	8c420000 	lw	v0,0(v0)

00000120 <Matrix_Mult>:
     120:	27bdffe8 	addiu	sp,sp,-24
     124:	afbf0014 	sw	ra,20(sp)
     128:	afa40018 	sw	a0,24(sp)
     12c:	0c000000 	jal	0 <Matrix_Init>
     130:	afa5001c 	sw	a1,28(sp)
     134:	93ae001f 	lbu	t6,31(sp)
     138:	24010001 	li	at,1
     13c:	8fa50018 	lw	a1,24(sp)
     140:	15c10005 	bne	t6,at,158 <Matrix_Mult+0x38>
     144:	00402025 	move	a0,v0
     148:	0c000000 	jal	0 <Matrix_Init>
     14c:	00403025 	move	a2,v0
     150:	10000005 	b	168 <Matrix_Mult+0x48>
     154:	8fbf0014 	lw	ra,20(sp)
     158:	3c040000 	lui	a0,0x0
     15c:	0c000000 	jal	0 <Matrix_Init>
     160:	8c840000 	lw	a0,0(a0)
     164:	8fbf0014 	lw	ra,20(sp)
     168:	27bd0018 	addiu	sp,sp,24
     16c:	03e00008 	jr	ra
     170:	00000000 	nop

00000174 <Matrix_Translate>:
     174:	27bdffe0 	addiu	sp,sp,-32
     178:	f7b40010 	sdc1	$f20,16(sp)
     17c:	afa7002c 	sw	a3,44(sp)
     180:	30e700ff 	andi	a3,a3,0xff
     184:	4486a000 	mtc1	a2,$f20
     188:	3c040000 	lui	a0,0x0
     18c:	24010001 	li	at,1
     190:	afbf001c 	sw	ra,28(sp)
     194:	14e1002f 	bne	a3,at,254 <Matrix_Translate+0xe0>
     198:	8c840000 	lw	a0,0(a0)
     19c:	c4800000 	lwc1	$f0,0(a0)
     1a0:	c4820010 	lwc1	$f2,16(a0)
     1a4:	c48a0020 	lwc1	$f10,32(a0)
     1a8:	460c0102 	mul.s	$f4,$f0,$f12
     1ac:	c4800004 	lwc1	$f0,4(a0)
     1b0:	460e1182 	mul.s	$f6,$f2,$f14
     1b4:	c4820014 	lwc1	$f2,20(a0)
     1b8:	46145402 	mul.s	$f16,$f10,$f20
     1bc:	00000000 	nop
     1c0:	460c0282 	mul.s	$f10,$f0,$f12
     1c4:	c4800008 	lwc1	$f0,8(a0)
     1c8:	46062200 	add.s	$f8,$f4,$f6
     1cc:	c4840030 	lwc1	$f4,48(a0)
     1d0:	46104480 	add.s	$f18,$f8,$f16
     1d4:	460e1202 	mul.s	$f8,$f2,$f14
     1d8:	c4820018 	lwc1	$f2,24(a0)
     1dc:	46122180 	add.s	$f6,$f4,$f18
     1e0:	c4840024 	lwc1	$f4,36(a0)
     1e4:	46085400 	add.s	$f16,$f10,$f8
     1e8:	46142482 	mul.s	$f18,$f4,$f20
     1ec:	e4860030 	swc1	$f6,48(a0)
     1f0:	c48a0034 	lwc1	$f10,52(a0)
     1f4:	460c0102 	mul.s	$f4,$f0,$f12
     1f8:	c480000c 	lwc1	$f0,12(a0)
     1fc:	46128180 	add.s	$f6,$f16,$f18
     200:	460e1402 	mul.s	$f16,$f2,$f14
     204:	c482001c 	lwc1	$f2,28(a0)
     208:	46065200 	add.s	$f8,$f10,$f6
     20c:	c48a0028 	lwc1	$f10,40(a0)
     210:	46102480 	add.s	$f18,$f4,$f16
     214:	46145182 	mul.s	$f6,$f10,$f20
     218:	e4880034 	swc1	$f8,52(a0)
     21c:	c4840038 	lwc1	$f4,56(a0)
     220:	460c0282 	mul.s	$f10,$f0,$f12
     224:	46069200 	add.s	$f8,$f18,$f6
     228:	460e1482 	mul.s	$f18,$f2,$f14
     22c:	46082400 	add.s	$f16,$f4,$f8
     230:	c484002c 	lwc1	$f4,44(a0)
     234:	46125180 	add.s	$f6,$f10,$f18
     238:	46142202 	mul.s	$f8,$f4,$f20
     23c:	e4900038 	swc1	$f16,56(a0)
     240:	c48a003c 	lwc1	$f10,60(a0)
     244:	46083400 	add.s	$f16,$f6,$f8
     248:	46105480 	add.s	$f18,$f10,$f16
     24c:	10000006 	b	268 <Matrix_Translate+0xf4>
     250:	e492003c 	swc1	$f18,60(a0)
     254:	44056000 	mfc1	a1,$f12
     258:	44067000 	mfc1	a2,$f14
     25c:	4407a000 	mfc1	a3,$f20
     260:	0c000000 	jal	0 <Matrix_Init>
     264:	00000000 	nop
     268:	8fbf001c 	lw	ra,28(sp)
     26c:	d7b40010 	ldc1	$f20,16(sp)
     270:	27bd0020 	addiu	sp,sp,32
     274:	03e00008 	jr	ra
     278:	00000000 	nop

0000027c <Matrix_Scale>:
     27c:	27bdffe0 	addiu	sp,sp,-32
     280:	f7b40010 	sdc1	$f20,16(sp)
     284:	afa7002c 	sw	a3,44(sp)
     288:	30e700ff 	andi	a3,a3,0xff
     28c:	4486a000 	mtc1	a2,$f20
     290:	3c040000 	lui	a0,0x0
     294:	24010001 	li	at,1
     298:	afbf001c 	sw	ra,28(sp)
     29c:	14e10026 	bne	a3,at,338 <Matrix_Scale+0xbc>
     2a0:	8c840000 	lw	a0,0(a0)
     2a4:	c4840000 	lwc1	$f4,0(a0)
     2a8:	c4880004 	lwc1	$f8,4(a0)
     2ac:	c4900008 	lwc1	$f16,8(a0)
     2b0:	460c2182 	mul.s	$f6,$f4,$f12
     2b4:	c4840010 	lwc1	$f4,16(a0)
     2b8:	460c4282 	mul.s	$f10,$f8,$f12
     2bc:	c4880014 	lwc1	$f8,20(a0)
     2c0:	460c8482 	mul.s	$f18,$f16,$f12
     2c4:	e4860000 	swc1	$f6,0(a0)
     2c8:	c4900018 	lwc1	$f16,24(a0)
     2cc:	460e2182 	mul.s	$f6,$f4,$f14
     2d0:	e48a0004 	swc1	$f10,4(a0)
     2d4:	c4840020 	lwc1	$f4,32(a0)
     2d8:	460e4282 	mul.s	$f10,$f8,$f14
     2dc:	e4920008 	swc1	$f18,8(a0)
     2e0:	c4880024 	lwc1	$f8,36(a0)
     2e4:	460e8482 	mul.s	$f18,$f16,$f14
     2e8:	e4860010 	swc1	$f6,16(a0)
     2ec:	c4900028 	lwc1	$f16,40(a0)
     2f0:	46142182 	mul.s	$f6,$f4,$f20
     2f4:	e48a0014 	swc1	$f10,20(a0)
     2f8:	c484000c 	lwc1	$f4,12(a0)
     2fc:	46144282 	mul.s	$f10,$f8,$f20
     300:	e4920018 	swc1	$f18,24(a0)
     304:	c488001c 	lwc1	$f8,28(a0)
     308:	46148482 	mul.s	$f18,$f16,$f20
     30c:	e4860020 	swc1	$f6,32(a0)
     310:	c490002c 	lwc1	$f16,44(a0)
     314:	460c2182 	mul.s	$f6,$f4,$f12
     318:	e48a0024 	swc1	$f10,36(a0)
     31c:	460e4282 	mul.s	$f10,$f8,$f14
     320:	e4920028 	swc1	$f18,40(a0)
     324:	46148482 	mul.s	$f18,$f16,$f20
     328:	e486000c 	swc1	$f6,12(a0)
     32c:	e48a001c 	swc1	$f10,28(a0)
     330:	10000006 	b	34c <Matrix_Scale+0xd0>
     334:	e492002c 	swc1	$f18,44(a0)
     338:	44056000 	mfc1	a1,$f12
     33c:	44067000 	mfc1	a2,$f14
     340:	4407a000 	mfc1	a3,$f20
     344:	0c000000 	jal	0 <Matrix_Init>
     348:	00000000 	nop
     34c:	8fbf001c 	lw	ra,28(sp)
     350:	d7b40010 	ldc1	$f20,16(sp)
     354:	27bd0020 	addiu	sp,sp,32
     358:	03e00008 	jr	ra
     35c:	00000000 	nop

00000360 <Matrix_RotateX>:
     360:	27bdffd8 	addiu	sp,sp,-40
     364:	afa5002c 	sw	a1,44(sp)
     368:	30a500ff 	andi	a1,a1,0xff
     36c:	24010001 	li	at,1
     370:	afbf001c 	sw	ra,28(sp)
     374:	14a1003a 	bne	a1,at,460 <Matrix_RotateX+0x100>
     378:	afb00018 	sw	s0,24(sp)
     37c:	44802000 	mtc1	zero,$f4
     380:	3c100000 	lui	s0,0x0
     384:	46046032 	c.eq.s	$f12,$f4
     388:	00000000 	nop
     38c:	4503005c 	bc1tl	500 <Matrix_RotateX+0x1a0>
     390:	8fbf001c 	lw	ra,28(sp)
     394:	8e100000 	lw	s0,0(s0)
     398:	0c000000 	jal	0 <Matrix_Init>
     39c:	e7ac0028 	swc1	$f12,40(sp)
     3a0:	c7ac0028 	lwc1	$f12,40(sp)
     3a4:	0c000000 	jal	0 <Matrix_Init>
     3a8:	e7a00020 	swc1	$f0,32(sp)
     3ac:	c6020010 	lwc1	$f2,16(s0)
     3b0:	c7ae0020 	lwc1	$f14,32(sp)
     3b4:	c60c0020 	lwc1	$f12,32(s0)
     3b8:	46001182 	mul.s	$f6,$f2,$f0
     3bc:	00000000 	nop
     3c0:	460e6202 	mul.s	$f8,$f12,$f14
     3c4:	00000000 	nop
     3c8:	46006402 	mul.s	$f16,$f12,$f0
     3cc:	c60c0024 	lwc1	$f12,36(s0)
     3d0:	460e1482 	mul.s	$f18,$f2,$f14
     3d4:	c6020014 	lwc1	$f2,20(s0)
     3d8:	46083280 	add.s	$f10,$f6,$f8
     3dc:	46001182 	mul.s	$f6,$f2,$f0
     3e0:	e60a0010 	swc1	$f10,16(s0)
     3e4:	460e6202 	mul.s	$f8,$f12,$f14
     3e8:	46128101 	sub.s	$f4,$f16,$f18
     3ec:	46006402 	mul.s	$f16,$f12,$f0
     3f0:	c60c0028 	lwc1	$f12,40(s0)
     3f4:	460e1482 	mul.s	$f18,$f2,$f14
     3f8:	c6020018 	lwc1	$f2,24(s0)
     3fc:	46083280 	add.s	$f10,$f6,$f8
     400:	e6040020 	swc1	$f4,32(s0)
     404:	46001182 	mul.s	$f6,$f2,$f0
     408:	e60a0014 	swc1	$f10,20(s0)
     40c:	460e6202 	mul.s	$f8,$f12,$f14
     410:	46128101 	sub.s	$f4,$f16,$f18
     414:	46006402 	mul.s	$f16,$f12,$f0
     418:	c60c002c 	lwc1	$f12,44(s0)
     41c:	460e1482 	mul.s	$f18,$f2,$f14
     420:	c602001c 	lwc1	$f2,28(s0)
     424:	46083280 	add.s	$f10,$f6,$f8
     428:	e6040024 	swc1	$f4,36(s0)
     42c:	46001182 	mul.s	$f6,$f2,$f0
     430:	e60a0018 	swc1	$f10,24(s0)
     434:	460e6202 	mul.s	$f8,$f12,$f14
     438:	46128101 	sub.s	$f4,$f16,$f18
     43c:	46006402 	mul.s	$f16,$f12,$f0
     440:	00000000 	nop
     444:	460e1482 	mul.s	$f18,$f2,$f14
     448:	e6040028 	swc1	$f4,40(s0)
     44c:	46083280 	add.s	$f10,$f6,$f8
     450:	e60a001c 	swc1	$f10,28(s0)
     454:	46128101 	sub.s	$f4,$f16,$f18
     458:	10000028 	b	4fc <Matrix_RotateX+0x19c>
     45c:	e604002c 	swc1	$f4,44(s0)
     460:	44803000 	mtc1	zero,$f6
     464:	3c100000 	lui	s0,0x0
     468:	8e100000 	lw	s0,0(s0)
     46c:	46066032 	c.eq.s	$f12,$f6
     470:	3c013f80 	lui	at,0x3f80
     474:	4503000d 	bc1tl	4ac <Matrix_RotateX+0x14c>
     478:	44800000 	mtc1	zero,$f0
     47c:	0c000000 	jal	0 <Matrix_Init>
     480:	e7ac0028 	swc1	$f12,40(sp)
     484:	c7ac0028 	lwc1	$f12,40(sp)
     488:	0c000000 	jal	0 <Matrix_Init>
     48c:	e7a00020 	swc1	$f0,32(sp)
     490:	46000086 	mov.s	$f2,$f0
     494:	3c013f80 	lui	at,0x3f80
     498:	44816000 	mtc1	at,$f12
     49c:	44800000 	mtc1	zero,$f0
     4a0:	10000005 	b	4b8 <Matrix_RotateX+0x158>
     4a4:	c7ae0020 	lwc1	$f14,32(sp)
     4a8:	44800000 	mtc1	zero,$f0
     4ac:	44816000 	mtc1	at,$f12
     4b0:	46000386 	mov.s	$f14,$f0
     4b4:	46006086 	mov.s	$f2,$f12
     4b8:	46007207 	neg.s	$f8,$f14
     4bc:	e6000004 	swc1	$f0,4(s0)
     4c0:	e6000008 	swc1	$f0,8(s0)
     4c4:	e600000c 	swc1	$f0,12(s0)
     4c8:	e6000010 	swc1	$f0,16(s0)
     4cc:	e600001c 	swc1	$f0,28(s0)
     4d0:	e6000020 	swc1	$f0,32(s0)
     4d4:	e600002c 	swc1	$f0,44(s0)
     4d8:	e6000030 	swc1	$f0,48(s0)
     4dc:	e6000034 	swc1	$f0,52(s0)
     4e0:	e6000038 	swc1	$f0,56(s0)
     4e4:	e60c0000 	swc1	$f12,0(s0)
     4e8:	e60c003c 	swc1	$f12,60(s0)
     4ec:	e6020014 	swc1	$f2,20(s0)
     4f0:	e6020028 	swc1	$f2,40(s0)
     4f4:	e60e0018 	swc1	$f14,24(s0)
     4f8:	e6080024 	swc1	$f8,36(s0)
     4fc:	8fbf001c 	lw	ra,28(sp)
     500:	8fb00018 	lw	s0,24(sp)
     504:	27bd0028 	addiu	sp,sp,40
     508:	03e00008 	jr	ra
     50c:	00000000 	nop

00000510 <Matrix_RotateY>:
     510:	27bdffd8 	addiu	sp,sp,-40
     514:	afa5002c 	sw	a1,44(sp)
     518:	30a500ff 	andi	a1,a1,0xff
     51c:	24010001 	li	at,1
     520:	afbf001c 	sw	ra,28(sp)
     524:	14a1003b 	bne	a1,at,614 <Matrix_RotateY+0x104>
     528:	afb00018 	sw	s0,24(sp)
     52c:	44802000 	mtc1	zero,$f4
     530:	3c100000 	lui	s0,0x0
     534:	46046032 	c.eq.s	$f12,$f4
     538:	00000000 	nop
     53c:	4503005d 	bc1tl	6b4 <Matrix_RotateY+0x1a4>
     540:	8fbf001c 	lw	ra,28(sp)
     544:	8e100000 	lw	s0,0(s0)
     548:	0c000000 	jal	0 <Matrix_Init>
     54c:	e7ac0028 	swc1	$f12,40(sp)
     550:	c7ac0028 	lwc1	$f12,40(sp)
     554:	0c000000 	jal	0 <Matrix_Init>
     558:	e7a00020 	swc1	$f0,32(sp)
     55c:	c6020000 	lwc1	$f2,0(s0)
     560:	c7ae0020 	lwc1	$f14,32(sp)
     564:	c60c0020 	lwc1	$f12,32(s0)
     568:	46001182 	mul.s	$f6,$f2,$f0
     56c:	00000000 	nop
     570:	460e6202 	mul.s	$f8,$f12,$f14
     574:	00000000 	nop
     578:	460e1402 	mul.s	$f16,$f2,$f14
     57c:	c6020004 	lwc1	$f2,4(s0)
     580:	46006482 	mul.s	$f18,$f12,$f0
     584:	c60c0024 	lwc1	$f12,36(s0)
     588:	46083281 	sub.s	$f10,$f6,$f8
     58c:	46001182 	mul.s	$f6,$f2,$f0
     590:	00000000 	nop
     594:	460e6202 	mul.s	$f8,$f12,$f14
     598:	e60a0000 	swc1	$f10,0(s0)
     59c:	46128100 	add.s	$f4,$f16,$f18
     5a0:	460e1402 	mul.s	$f16,$f2,$f14
     5a4:	c6020008 	lwc1	$f2,8(s0)
     5a8:	46006482 	mul.s	$f18,$f12,$f0
     5ac:	c60c0028 	lwc1	$f12,40(s0)
     5b0:	46083281 	sub.s	$f10,$f6,$f8
     5b4:	46001182 	mul.s	$f6,$f2,$f0
     5b8:	e6040020 	swc1	$f4,32(s0)
     5bc:	460e6202 	mul.s	$f8,$f12,$f14
     5c0:	e60a0004 	swc1	$f10,4(s0)
     5c4:	46128100 	add.s	$f4,$f16,$f18
     5c8:	460e1402 	mul.s	$f16,$f2,$f14
     5cc:	c602000c 	lwc1	$f2,12(s0)
     5d0:	46006482 	mul.s	$f18,$f12,$f0
     5d4:	c60c002c 	lwc1	$f12,44(s0)
     5d8:	46083281 	sub.s	$f10,$f6,$f8
     5dc:	46001182 	mul.s	$f6,$f2,$f0
     5e0:	e6040024 	swc1	$f4,36(s0)
     5e4:	460e6202 	mul.s	$f8,$f12,$f14
     5e8:	e60a0008 	swc1	$f10,8(s0)
     5ec:	46128100 	add.s	$f4,$f16,$f18
     5f0:	460e1402 	mul.s	$f16,$f2,$f14
     5f4:	00000000 	nop
     5f8:	46006482 	mul.s	$f18,$f12,$f0
     5fc:	e6040028 	swc1	$f4,40(s0)
     600:	46083281 	sub.s	$f10,$f6,$f8
     604:	e60a000c 	swc1	$f10,12(s0)
     608:	46128100 	add.s	$f4,$f16,$f18
     60c:	10000028 	b	6b0 <Matrix_RotateY+0x1a0>
     610:	e604002c 	swc1	$f4,44(s0)
     614:	44803000 	mtc1	zero,$f6
     618:	3c100000 	lui	s0,0x0
     61c:	8e100000 	lw	s0,0(s0)
     620:	46066032 	c.eq.s	$f12,$f6
     624:	3c013f80 	lui	at,0x3f80
     628:	4503000d 	bc1tl	660 <Matrix_RotateY+0x150>
     62c:	44800000 	mtc1	zero,$f0
     630:	0c000000 	jal	0 <Matrix_Init>
     634:	e7ac0028 	swc1	$f12,40(sp)
     638:	c7ac0028 	lwc1	$f12,40(sp)
     63c:	0c000000 	jal	0 <Matrix_Init>
     640:	e7a00020 	swc1	$f0,32(sp)
     644:	46000086 	mov.s	$f2,$f0
     648:	3c013f80 	lui	at,0x3f80
     64c:	44816000 	mtc1	at,$f12
     650:	44800000 	mtc1	zero,$f0
     654:	10000005 	b	66c <Matrix_RotateY+0x15c>
     658:	c7ae0020 	lwc1	$f14,32(sp)
     65c:	44800000 	mtc1	zero,$f0
     660:	44816000 	mtc1	at,$f12
     664:	46000386 	mov.s	$f14,$f0
     668:	46006086 	mov.s	$f2,$f12
     66c:	46007207 	neg.s	$f8,$f14
     670:	e6000004 	swc1	$f0,4(s0)
     674:	e600000c 	swc1	$f0,12(s0)
     678:	e6000010 	swc1	$f0,16(s0)
     67c:	e6000018 	swc1	$f0,24(s0)
     680:	e600001c 	swc1	$f0,28(s0)
     684:	e6000024 	swc1	$f0,36(s0)
     688:	e600002c 	swc1	$f0,44(s0)
     68c:	e6000030 	swc1	$f0,48(s0)
     690:	e6000034 	swc1	$f0,52(s0)
     694:	e6000038 	swc1	$f0,56(s0)
     698:	e60c0014 	swc1	$f12,20(s0)
     69c:	e60c003c 	swc1	$f12,60(s0)
     6a0:	e6020000 	swc1	$f2,0(s0)
     6a4:	e6020028 	swc1	$f2,40(s0)
     6a8:	e6080008 	swc1	$f8,8(s0)
     6ac:	e60e0020 	swc1	$f14,32(s0)
     6b0:	8fbf001c 	lw	ra,28(sp)
     6b4:	8fb00018 	lw	s0,24(sp)
     6b8:	27bd0028 	addiu	sp,sp,40
     6bc:	03e00008 	jr	ra
     6c0:	00000000 	nop

000006c4 <Matrix_RotateZ>:
     6c4:	27bdffd8 	addiu	sp,sp,-40
     6c8:	afa5002c 	sw	a1,44(sp)
     6cc:	30a500ff 	andi	a1,a1,0xff
     6d0:	24010001 	li	at,1
     6d4:	afbf001c 	sw	ra,28(sp)
     6d8:	14a1003a 	bne	a1,at,7c4 <Matrix_RotateZ+0x100>
     6dc:	afb00018 	sw	s0,24(sp)
     6e0:	44802000 	mtc1	zero,$f4
     6e4:	3c100000 	lui	s0,0x0
     6e8:	46046032 	c.eq.s	$f12,$f4
     6ec:	00000000 	nop
     6f0:	4503005c 	bc1tl	864 <Matrix_RotateZ+0x1a0>
     6f4:	8fbf001c 	lw	ra,28(sp)
     6f8:	8e100000 	lw	s0,0(s0)
     6fc:	0c000000 	jal	0 <Matrix_Init>
     700:	e7ac0028 	swc1	$f12,40(sp)
     704:	c7ac0028 	lwc1	$f12,40(sp)
     708:	0c000000 	jal	0 <Matrix_Init>
     70c:	e7a00020 	swc1	$f0,32(sp)
     710:	c6020000 	lwc1	$f2,0(s0)
     714:	c7ae0020 	lwc1	$f14,32(sp)
     718:	c60c0010 	lwc1	$f12,16(s0)
     71c:	46001182 	mul.s	$f6,$f2,$f0
     720:	00000000 	nop
     724:	460e6202 	mul.s	$f8,$f12,$f14
     728:	00000000 	nop
     72c:	46006402 	mul.s	$f16,$f12,$f0
     730:	c60c0014 	lwc1	$f12,20(s0)
     734:	460e1482 	mul.s	$f18,$f2,$f14
     738:	c6020004 	lwc1	$f2,4(s0)
     73c:	46083280 	add.s	$f10,$f6,$f8
     740:	46001182 	mul.s	$f6,$f2,$f0
     744:	e60a0000 	swc1	$f10,0(s0)
     748:	460e6202 	mul.s	$f8,$f12,$f14
     74c:	46128101 	sub.s	$f4,$f16,$f18
     750:	46006402 	mul.s	$f16,$f12,$f0
     754:	c60c0018 	lwc1	$f12,24(s0)
     758:	460e1482 	mul.s	$f18,$f2,$f14
     75c:	c6020008 	lwc1	$f2,8(s0)
     760:	46083280 	add.s	$f10,$f6,$f8
     764:	e6040010 	swc1	$f4,16(s0)
     768:	46001182 	mul.s	$f6,$f2,$f0
     76c:	e60a0004 	swc1	$f10,4(s0)
     770:	460e6202 	mul.s	$f8,$f12,$f14
     774:	46128101 	sub.s	$f4,$f16,$f18
     778:	46006402 	mul.s	$f16,$f12,$f0
     77c:	c60c001c 	lwc1	$f12,28(s0)
     780:	460e1482 	mul.s	$f18,$f2,$f14
     784:	c602000c 	lwc1	$f2,12(s0)
     788:	46083280 	add.s	$f10,$f6,$f8
     78c:	e6040014 	swc1	$f4,20(s0)
     790:	46001182 	mul.s	$f6,$f2,$f0
     794:	e60a0008 	swc1	$f10,8(s0)
     798:	460e6202 	mul.s	$f8,$f12,$f14
     79c:	46128101 	sub.s	$f4,$f16,$f18
     7a0:	46006402 	mul.s	$f16,$f12,$f0
     7a4:	00000000 	nop
     7a8:	460e1482 	mul.s	$f18,$f2,$f14
     7ac:	e6040018 	swc1	$f4,24(s0)
     7b0:	46083280 	add.s	$f10,$f6,$f8
     7b4:	e60a000c 	swc1	$f10,12(s0)
     7b8:	46128101 	sub.s	$f4,$f16,$f18
     7bc:	10000028 	b	860 <Matrix_RotateZ+0x19c>
     7c0:	e604001c 	swc1	$f4,28(s0)
     7c4:	44803000 	mtc1	zero,$f6
     7c8:	3c100000 	lui	s0,0x0
     7cc:	8e100000 	lw	s0,0(s0)
     7d0:	46066032 	c.eq.s	$f12,$f6
     7d4:	3c013f80 	lui	at,0x3f80
     7d8:	4503000d 	bc1tl	810 <Matrix_RotateZ+0x14c>
     7dc:	44800000 	mtc1	zero,$f0
     7e0:	0c000000 	jal	0 <Matrix_Init>
     7e4:	e7ac0028 	swc1	$f12,40(sp)
     7e8:	c7ac0028 	lwc1	$f12,40(sp)
     7ec:	0c000000 	jal	0 <Matrix_Init>
     7f0:	e7a00020 	swc1	$f0,32(sp)
     7f4:	46000086 	mov.s	$f2,$f0
     7f8:	3c013f80 	lui	at,0x3f80
     7fc:	44816000 	mtc1	at,$f12
     800:	44800000 	mtc1	zero,$f0
     804:	10000005 	b	81c <Matrix_RotateZ+0x158>
     808:	c7ae0020 	lwc1	$f14,32(sp)
     80c:	44800000 	mtc1	zero,$f0
     810:	44816000 	mtc1	at,$f12
     814:	46000386 	mov.s	$f14,$f0
     818:	46006086 	mov.s	$f2,$f12
     81c:	46007207 	neg.s	$f8,$f14
     820:	e6000008 	swc1	$f0,8(s0)
     824:	e600000c 	swc1	$f0,12(s0)
     828:	e6000018 	swc1	$f0,24(s0)
     82c:	e600001c 	swc1	$f0,28(s0)
     830:	e6000020 	swc1	$f0,32(s0)
     834:	e6000024 	swc1	$f0,36(s0)
     838:	e600002c 	swc1	$f0,44(s0)
     83c:	e6000030 	swc1	$f0,48(s0)
     840:	e6000034 	swc1	$f0,52(s0)
     844:	e6000038 	swc1	$f0,56(s0)
     848:	e60c0028 	swc1	$f12,40(s0)
     84c:	e60c003c 	swc1	$f12,60(s0)
     850:	e6020000 	swc1	$f2,0(s0)
     854:	e6020014 	swc1	$f2,20(s0)
     858:	e60e0004 	swc1	$f14,4(s0)
     85c:	e6080010 	swc1	$f8,16(s0)
     860:	8fbf001c 	lw	ra,28(sp)
     864:	8fb00018 	lw	s0,24(sp)
     868:	27bd0028 	addiu	sp,sp,40
     86c:	03e00008 	jr	ra
     870:	00000000 	nop

00000874 <Matrix_RotateRPY>:
     874:	27bdffd8 	addiu	sp,sp,-40
     878:	afb00020 	sw	s0,32(sp)
     87c:	afa70034 	sw	a3,52(sp)
     880:	30e700ff 	andi	a3,a3,0xff
     884:	3c100000 	lui	s0,0x0
     888:	24010001 	li	at,1
     88c:	afbf0024 	sw	ra,36(sp)
     890:	f7b40018 	sdc1	$f20,24(sp)
     894:	afa40028 	sw	a0,40(sp)
     898:	afa5002c 	sw	a1,44(sp)
     89c:	afa60030 	sw	a2,48(sp)
     8a0:	14e10099 	bne	a3,at,b08 <Matrix_RotateRPY+0x294>
     8a4:	8e100000 	lw	s0,0(s0)
     8a8:	0c000000 	jal	0 <Matrix_Init>
     8ac:	87a40032 	lh	a0,50(sp)
     8b0:	46000506 	mov.s	$f20,$f0
     8b4:	0c000000 	jal	0 <Matrix_Init>
     8b8:	87a40032 	lh	a0,50(sp)
     8bc:	c6020000 	lwc1	$f2,0(s0)
     8c0:	c60c0010 	lwc1	$f12,16(s0)
     8c4:	46001102 	mul.s	$f4,$f2,$f0
     8c8:	00000000 	nop
     8cc:	46146182 	mul.s	$f6,$f12,$f20
     8d0:	00000000 	nop
     8d4:	46006282 	mul.s	$f10,$f12,$f0
     8d8:	c60c0014 	lwc1	$f12,20(s0)
     8dc:	46141402 	mul.s	$f16,$f2,$f20
     8e0:	c6020004 	lwc1	$f2,4(s0)
     8e4:	46062200 	add.s	$f8,$f4,$f6
     8e8:	46001102 	mul.s	$f4,$f2,$f0
     8ec:	e6080000 	swc1	$f8,0(s0)
     8f0:	46146182 	mul.s	$f6,$f12,$f20
     8f4:	46105481 	sub.s	$f18,$f10,$f16
     8f8:	46006282 	mul.s	$f10,$f12,$f0
     8fc:	c60c0018 	lwc1	$f12,24(s0)
     900:	46141402 	mul.s	$f16,$f2,$f20
     904:	c6020008 	lwc1	$f2,8(s0)
     908:	46062200 	add.s	$f8,$f4,$f6
     90c:	e6120010 	swc1	$f18,16(s0)
     910:	46001102 	mul.s	$f4,$f2,$f0
     914:	e6080004 	swc1	$f8,4(s0)
     918:	46146182 	mul.s	$f6,$f12,$f20
     91c:	46105481 	sub.s	$f18,$f10,$f16
     920:	46006282 	mul.s	$f10,$f12,$f0
     924:	c60c001c 	lwc1	$f12,28(s0)
     928:	46141402 	mul.s	$f16,$f2,$f20
     92c:	c602000c 	lwc1	$f2,12(s0)
     930:	46062200 	add.s	$f8,$f4,$f6
     934:	e6120014 	swc1	$f18,20(s0)
     938:	46001102 	mul.s	$f4,$f2,$f0
     93c:	e6080008 	swc1	$f8,8(s0)
     940:	46146182 	mul.s	$f6,$f12,$f20
     944:	46105481 	sub.s	$f18,$f10,$f16
     948:	46006282 	mul.s	$f10,$f12,$f0
     94c:	00000000 	nop
     950:	46141402 	mul.s	$f16,$f2,$f20
     954:	e6120018 	swc1	$f18,24(s0)
     958:	46062200 	add.s	$f8,$f4,$f6
     95c:	e608000c 	swc1	$f8,12(s0)
     960:	46105481 	sub.s	$f18,$f10,$f16
     964:	e612001c 	swc1	$f18,28(s0)
     968:	87a4002e 	lh	a0,46(sp)
     96c:	10800032 	beqz	a0,a38 <Matrix_RotateRPY+0x1c4>
     970:	00000000 	nop
     974:	0c000000 	jal	0 <Matrix_Init>
     978:	00000000 	nop
     97c:	46000506 	mov.s	$f20,$f0
     980:	0c000000 	jal	0 <Matrix_Init>
     984:	87a4002e 	lh	a0,46(sp)
     988:	c6020000 	lwc1	$f2,0(s0)
     98c:	c60c0020 	lwc1	$f12,32(s0)
     990:	46001102 	mul.s	$f4,$f2,$f0
     994:	00000000 	nop
     998:	46146182 	mul.s	$f6,$f12,$f20
     99c:	00000000 	nop
     9a0:	46141282 	mul.s	$f10,$f2,$f20
     9a4:	c6020004 	lwc1	$f2,4(s0)
     9a8:	46006402 	mul.s	$f16,$f12,$f0
     9ac:	c60c0024 	lwc1	$f12,36(s0)
     9b0:	46062201 	sub.s	$f8,$f4,$f6
     9b4:	46001102 	mul.s	$f4,$f2,$f0
     9b8:	00000000 	nop
     9bc:	46146182 	mul.s	$f6,$f12,$f20
     9c0:	e6080000 	swc1	$f8,0(s0)
     9c4:	46105480 	add.s	$f18,$f10,$f16
     9c8:	46141282 	mul.s	$f10,$f2,$f20
     9cc:	c6020008 	lwc1	$f2,8(s0)
     9d0:	46006402 	mul.s	$f16,$f12,$f0
     9d4:	c60c0028 	lwc1	$f12,40(s0)
     9d8:	46062201 	sub.s	$f8,$f4,$f6
     9dc:	46001102 	mul.s	$f4,$f2,$f0
     9e0:	e6120020 	swc1	$f18,32(s0)
     9e4:	46146182 	mul.s	$f6,$f12,$f20
     9e8:	e6080004 	swc1	$f8,4(s0)
     9ec:	46105480 	add.s	$f18,$f10,$f16
     9f0:	46141282 	mul.s	$f10,$f2,$f20
     9f4:	c602000c 	lwc1	$f2,12(s0)
     9f8:	46006402 	mul.s	$f16,$f12,$f0
     9fc:	c60c002c 	lwc1	$f12,44(s0)
     a00:	46062201 	sub.s	$f8,$f4,$f6
     a04:	46001102 	mul.s	$f4,$f2,$f0
     a08:	e6120024 	swc1	$f18,36(s0)
     a0c:	46146182 	mul.s	$f6,$f12,$f20
     a10:	e6080008 	swc1	$f8,8(s0)
     a14:	46105480 	add.s	$f18,$f10,$f16
     a18:	46141282 	mul.s	$f10,$f2,$f20
     a1c:	00000000 	nop
     a20:	46006402 	mul.s	$f16,$f12,$f0
     a24:	e6120028 	swc1	$f18,40(s0)
     a28:	46062201 	sub.s	$f8,$f4,$f6
     a2c:	e608000c 	swc1	$f8,12(s0)
     a30:	46105480 	add.s	$f18,$f10,$f16
     a34:	e612002c 	swc1	$f18,44(s0)
     a38:	87a4002a 	lh	a0,42(sp)
     a3c:	50800038 	beqzl	a0,b20 <Matrix_RotateRPY+0x2ac>
     a40:	8fbf0024 	lw	ra,36(sp)
     a44:	0c000000 	jal	0 <Matrix_Init>
     a48:	00000000 	nop
     a4c:	46000506 	mov.s	$f20,$f0
     a50:	0c000000 	jal	0 <Matrix_Init>
     a54:	87a4002a 	lh	a0,42(sp)
     a58:	c6020010 	lwc1	$f2,16(s0)
     a5c:	c60c0020 	lwc1	$f12,32(s0)
     a60:	46001102 	mul.s	$f4,$f2,$f0
     a64:	00000000 	nop
     a68:	46146182 	mul.s	$f6,$f12,$f20
     a6c:	00000000 	nop
     a70:	46006282 	mul.s	$f10,$f12,$f0
     a74:	c60c0024 	lwc1	$f12,36(s0)
     a78:	46141402 	mul.s	$f16,$f2,$f20
     a7c:	c6020014 	lwc1	$f2,20(s0)
     a80:	46062200 	add.s	$f8,$f4,$f6
     a84:	46001102 	mul.s	$f4,$f2,$f0
     a88:	e6080010 	swc1	$f8,16(s0)
     a8c:	46146182 	mul.s	$f6,$f12,$f20
     a90:	46105481 	sub.s	$f18,$f10,$f16
     a94:	46006282 	mul.s	$f10,$f12,$f0
     a98:	c60c0028 	lwc1	$f12,40(s0)
     a9c:	46141402 	mul.s	$f16,$f2,$f20
     aa0:	c6020018 	lwc1	$f2,24(s0)
     aa4:	46062200 	add.s	$f8,$f4,$f6
     aa8:	e6120020 	swc1	$f18,32(s0)
     aac:	46001102 	mul.s	$f4,$f2,$f0
     ab0:	e6080014 	swc1	$f8,20(s0)
     ab4:	46146182 	mul.s	$f6,$f12,$f20
     ab8:	46105481 	sub.s	$f18,$f10,$f16
     abc:	46006282 	mul.s	$f10,$f12,$f0
     ac0:	c60c002c 	lwc1	$f12,44(s0)
     ac4:	46141402 	mul.s	$f16,$f2,$f20
     ac8:	c602001c 	lwc1	$f2,28(s0)
     acc:	46062200 	add.s	$f8,$f4,$f6
     ad0:	e6120024 	swc1	$f18,36(s0)
     ad4:	46001102 	mul.s	$f4,$f2,$f0
     ad8:	e6080018 	swc1	$f8,24(s0)
     adc:	46146182 	mul.s	$f6,$f12,$f20
     ae0:	46105481 	sub.s	$f18,$f10,$f16
     ae4:	46006282 	mul.s	$f10,$f12,$f0
     ae8:	00000000 	nop
     aec:	46141402 	mul.s	$f16,$f2,$f20
     af0:	e6120028 	swc1	$f18,40(s0)
     af4:	46062200 	add.s	$f8,$f4,$f6
     af8:	e608001c 	swc1	$f8,28(s0)
     afc:	46105481 	sub.s	$f18,$f10,$f16
     b00:	10000006 	b	b1c <Matrix_RotateRPY+0x2a8>
     b04:	e612002c 	swc1	$f18,44(s0)
     b08:	02002025 	move	a0,s0
     b0c:	87a5002a 	lh	a1,42(sp)
     b10:	87a6002e 	lh	a2,46(sp)
     b14:	0c000000 	jal	0 <Matrix_Init>
     b18:	87a70032 	lh	a3,50(sp)
     b1c:	8fbf0024 	lw	ra,36(sp)
     b20:	d7b40018 	ldc1	$f20,24(sp)
     b24:	8fb00020 	lw	s0,32(sp)
     b28:	03e00008 	jr	ra
     b2c:	27bd0028 	addiu	sp,sp,40

00000b30 <Matrix_JointPosition>:
     b30:	27bdffd8 	addiu	sp,sp,-40
     b34:	afb0001c 	sw	s0,28(sp)
     b38:	afbf0024 	sw	ra,36(sp)
     b3c:	afb10020 	sw	s1,32(sp)
     b40:	f7b40010 	sdc1	$f20,16(sp)
     b44:	00803025 	move	a2,a0
     b48:	3c100000 	lui	s0,0x0
     b4c:	84a40004 	lh	a0,4(a1)
     b50:	00a08825 	move	s1,a1
     b54:	8e100000 	lw	s0,0(s0)
     b58:	0c000000 	jal	0 <Matrix_Init>
     b5c:	afa60028 	sw	a2,40(sp)
     b60:	46000506 	mov.s	$f20,$f0
     b64:	0c000000 	jal	0 <Matrix_Init>
     b68:	86240004 	lh	a0,4(s1)
     b6c:	8fa60028 	lw	a2,40(sp)
     b70:	c6020000 	lwc1	$f2,0(s0)
     b74:	c60c0010 	lwc1	$f12,16(s0)
     b78:	c4c40000 	lwc1	$f4,0(a2)
     b7c:	c4c80004 	lwc1	$f8,4(a2)
     b80:	c6120020 	lwc1	$f18,32(s0)
     b84:	46041182 	mul.s	$f6,$f2,$f4
     b88:	c4c40008 	lwc1	$f4,8(a2)
     b8c:	46086282 	mul.s	$f10,$f12,$f8
     b90:	460a3400 	add.s	$f16,$f6,$f10
     b94:	46049202 	mul.s	$f8,$f18,$f4
     b98:	c60a0030 	lwc1	$f10,48(s0)
     b9c:	46001102 	mul.s	$f4,$f2,$f0
     ba0:	46088180 	add.s	$f6,$f16,$f8
     ba4:	46146402 	mul.s	$f16,$f12,$f20
     ba8:	46065480 	add.s	$f18,$f10,$f6
     bac:	46006282 	mul.s	$f10,$f12,$f0
     bb0:	c60c0014 	lwc1	$f12,20(s0)
     bb4:	46102200 	add.s	$f8,$f4,$f16
     bb8:	46141182 	mul.s	$f6,$f2,$f20
     bbc:	e6120030 	swc1	$f18,48(s0)
     bc0:	c6020004 	lwc1	$f2,4(s0)
     bc4:	e6080000 	swc1	$f8,0(s0)
     bc8:	46065481 	sub.s	$f18,$f10,$f6
     bcc:	e6120010 	swc1	$f18,16(s0)
     bd0:	c4c40000 	lwc1	$f4,0(a2)
     bd4:	c4c80004 	lwc1	$f8,4(a2)
     bd8:	c6120024 	lwc1	$f18,36(s0)
     bdc:	46041402 	mul.s	$f16,$f2,$f4
     be0:	c4c40008 	lwc1	$f4,8(a2)
     be4:	46086282 	mul.s	$f10,$f12,$f8
     be8:	460a8180 	add.s	$f6,$f16,$f10
     bec:	46049202 	mul.s	$f8,$f18,$f4
     bf0:	c60a0034 	lwc1	$f10,52(s0)
     bf4:	46001102 	mul.s	$f4,$f2,$f0
     bf8:	46083400 	add.s	$f16,$f6,$f8
     bfc:	46146182 	mul.s	$f6,$f12,$f20
     c00:	46105480 	add.s	$f18,$f10,$f16
     c04:	46006282 	mul.s	$f10,$f12,$f0
     c08:	c60c0018 	lwc1	$f12,24(s0)
     c0c:	46062200 	add.s	$f8,$f4,$f6
     c10:	46141402 	mul.s	$f16,$f2,$f20
     c14:	e6120034 	swc1	$f18,52(s0)
     c18:	c6020008 	lwc1	$f2,8(s0)
     c1c:	e6080004 	swc1	$f8,4(s0)
     c20:	46105481 	sub.s	$f18,$f10,$f16
     c24:	e6120014 	swc1	$f18,20(s0)
     c28:	c4c40000 	lwc1	$f4,0(a2)
     c2c:	c4c80004 	lwc1	$f8,4(a2)
     c30:	c6120028 	lwc1	$f18,40(s0)
     c34:	46041182 	mul.s	$f6,$f2,$f4
     c38:	c4c40008 	lwc1	$f4,8(a2)
     c3c:	46086282 	mul.s	$f10,$f12,$f8
     c40:	460a3400 	add.s	$f16,$f6,$f10
     c44:	46049202 	mul.s	$f8,$f18,$f4
     c48:	c60a0038 	lwc1	$f10,56(s0)
     c4c:	46001102 	mul.s	$f4,$f2,$f0
     c50:	46088180 	add.s	$f6,$f16,$f8
     c54:	46146402 	mul.s	$f16,$f12,$f20
     c58:	46065480 	add.s	$f18,$f10,$f6
     c5c:	46006282 	mul.s	$f10,$f12,$f0
     c60:	c60c001c 	lwc1	$f12,28(s0)
     c64:	46102200 	add.s	$f8,$f4,$f16
     c68:	46141182 	mul.s	$f6,$f2,$f20
     c6c:	e6120038 	swc1	$f18,56(s0)
     c70:	c602000c 	lwc1	$f2,12(s0)
     c74:	e6080008 	swc1	$f8,8(s0)
     c78:	46065481 	sub.s	$f18,$f10,$f6
     c7c:	e6120018 	swc1	$f18,24(s0)
     c80:	c4c40000 	lwc1	$f4,0(a2)
     c84:	c4c80004 	lwc1	$f8,4(a2)
     c88:	c612002c 	lwc1	$f18,44(s0)
     c8c:	46041402 	mul.s	$f16,$f2,$f4
     c90:	c4c40008 	lwc1	$f4,8(a2)
     c94:	46086282 	mul.s	$f10,$f12,$f8
     c98:	460a8180 	add.s	$f6,$f16,$f10
     c9c:	46049202 	mul.s	$f8,$f18,$f4
     ca0:	c60a003c 	lwc1	$f10,60(s0)
     ca4:	46001102 	mul.s	$f4,$f2,$f0
     ca8:	46083400 	add.s	$f16,$f6,$f8
     cac:	46146182 	mul.s	$f6,$f12,$f20
     cb0:	46105480 	add.s	$f18,$f10,$f16
     cb4:	46006282 	mul.s	$f10,$f12,$f0
     cb8:	46062200 	add.s	$f8,$f4,$f6
     cbc:	46141402 	mul.s	$f16,$f2,$f20
     cc0:	e612003c 	swc1	$f18,60(s0)
     cc4:	e608000c 	swc1	$f8,12(s0)
     cc8:	46105481 	sub.s	$f18,$f10,$f16
     ccc:	e612001c 	swc1	$f18,28(s0)
     cd0:	86240002 	lh	a0,2(s1)
     cd4:	50800033 	beqzl	a0,da4 <Matrix_JointPosition+0x274>
     cd8:	86240000 	lh	a0,0(s1)
     cdc:	0c000000 	jal	0 <Matrix_Init>
     ce0:	00000000 	nop
     ce4:	46000506 	mov.s	$f20,$f0
     ce8:	0c000000 	jal	0 <Matrix_Init>
     cec:	86240002 	lh	a0,2(s1)
     cf0:	c6020000 	lwc1	$f2,0(s0)
     cf4:	c60c0020 	lwc1	$f12,32(s0)
     cf8:	46001102 	mul.s	$f4,$f2,$f0
     cfc:	00000000 	nop
     d00:	46146182 	mul.s	$f6,$f12,$f20
     d04:	00000000 	nop
     d08:	46141282 	mul.s	$f10,$f2,$f20
     d0c:	c6020004 	lwc1	$f2,4(s0)
     d10:	46006402 	mul.s	$f16,$f12,$f0
     d14:	c60c0024 	lwc1	$f12,36(s0)
     d18:	46062201 	sub.s	$f8,$f4,$f6
     d1c:	46001102 	mul.s	$f4,$f2,$f0
     d20:	00000000 	nop
     d24:	46146182 	mul.s	$f6,$f12,$f20
     d28:	e6080000 	swc1	$f8,0(s0)
     d2c:	46105480 	add.s	$f18,$f10,$f16
     d30:	46141282 	mul.s	$f10,$f2,$f20
     d34:	c6020008 	lwc1	$f2,8(s0)
     d38:	46006402 	mul.s	$f16,$f12,$f0
     d3c:	c60c0028 	lwc1	$f12,40(s0)
     d40:	46062201 	sub.s	$f8,$f4,$f6
     d44:	46001102 	mul.s	$f4,$f2,$f0
     d48:	e6120020 	swc1	$f18,32(s0)
     d4c:	46146182 	mul.s	$f6,$f12,$f20
     d50:	e6080004 	swc1	$f8,4(s0)
     d54:	46105480 	add.s	$f18,$f10,$f16
     d58:	46141282 	mul.s	$f10,$f2,$f20
     d5c:	c602000c 	lwc1	$f2,12(s0)
     d60:	46006402 	mul.s	$f16,$f12,$f0
     d64:	c60c002c 	lwc1	$f12,44(s0)
     d68:	46062201 	sub.s	$f8,$f4,$f6
     d6c:	46001102 	mul.s	$f4,$f2,$f0
     d70:	e6120024 	swc1	$f18,36(s0)
     d74:	46146182 	mul.s	$f6,$f12,$f20
     d78:	e6080008 	swc1	$f8,8(s0)
     d7c:	46105480 	add.s	$f18,$f10,$f16
     d80:	46141282 	mul.s	$f10,$f2,$f20
     d84:	00000000 	nop
     d88:	46006402 	mul.s	$f16,$f12,$f0
     d8c:	e6120028 	swc1	$f18,40(s0)
     d90:	46062201 	sub.s	$f8,$f4,$f6
     d94:	e608000c 	swc1	$f8,12(s0)
     d98:	46105480 	add.s	$f18,$f10,$f16
     d9c:	e612002c 	swc1	$f18,44(s0)
     da0:	86240000 	lh	a0,0(s1)
     da4:	50800032 	beqzl	a0,e70 <Matrix_JointPosition+0x340>
     da8:	8fbf0024 	lw	ra,36(sp)
     dac:	0c000000 	jal	0 <Matrix_Init>
     db0:	00000000 	nop
     db4:	46000506 	mov.s	$f20,$f0
     db8:	0c000000 	jal	0 <Matrix_Init>
     dbc:	86240000 	lh	a0,0(s1)
     dc0:	c6020010 	lwc1	$f2,16(s0)
     dc4:	c60c0020 	lwc1	$f12,32(s0)
     dc8:	46001102 	mul.s	$f4,$f2,$f0
     dcc:	00000000 	nop
     dd0:	46146182 	mul.s	$f6,$f12,$f20
     dd4:	00000000 	nop
     dd8:	46006282 	mul.s	$f10,$f12,$f0
     ddc:	c60c0024 	lwc1	$f12,36(s0)
     de0:	46141402 	mul.s	$f16,$f2,$f20
     de4:	c6020014 	lwc1	$f2,20(s0)
     de8:	46062200 	add.s	$f8,$f4,$f6
     dec:	46001102 	mul.s	$f4,$f2,$f0
     df0:	e6080010 	swc1	$f8,16(s0)
     df4:	46146182 	mul.s	$f6,$f12,$f20
     df8:	46105481 	sub.s	$f18,$f10,$f16
     dfc:	46006282 	mul.s	$f10,$f12,$f0
     e00:	c60c0028 	lwc1	$f12,40(s0)
     e04:	46141402 	mul.s	$f16,$f2,$f20
     e08:	c6020018 	lwc1	$f2,24(s0)
     e0c:	46062200 	add.s	$f8,$f4,$f6
     e10:	e6120020 	swc1	$f18,32(s0)
     e14:	46001102 	mul.s	$f4,$f2,$f0
     e18:	e6080014 	swc1	$f8,20(s0)
     e1c:	46146182 	mul.s	$f6,$f12,$f20
     e20:	46105481 	sub.s	$f18,$f10,$f16
     e24:	46006282 	mul.s	$f10,$f12,$f0
     e28:	c60c002c 	lwc1	$f12,44(s0)
     e2c:	46141402 	mul.s	$f16,$f2,$f20
     e30:	c602001c 	lwc1	$f2,28(s0)
     e34:	46062200 	add.s	$f8,$f4,$f6
     e38:	e6120024 	swc1	$f18,36(s0)
     e3c:	46001102 	mul.s	$f4,$f2,$f0
     e40:	e6080018 	swc1	$f8,24(s0)
     e44:	46146182 	mul.s	$f6,$f12,$f20
     e48:	46105481 	sub.s	$f18,$f10,$f16
     e4c:	46006282 	mul.s	$f10,$f12,$f0
     e50:	00000000 	nop
     e54:	46141402 	mul.s	$f16,$f2,$f20
     e58:	e6120028 	swc1	$f18,40(s0)
     e5c:	46062200 	add.s	$f8,$f4,$f6
     e60:	e608001c 	swc1	$f8,28(s0)
     e64:	46105481 	sub.s	$f18,$f10,$f16
     e68:	e612002c 	swc1	$f18,44(s0)
     e6c:	8fbf0024 	lw	ra,36(sp)
     e70:	d7b40010 	ldc1	$f20,16(sp)
     e74:	8fb0001c 	lw	s0,28(sp)
     e78:	8fb10020 	lw	s1,32(sp)
     e7c:	03e00008 	jr	ra
     e80:	27bd0028 	addiu	sp,sp,40

00000e84 <func_800D1694>:
     e84:	27bdffc8 	addiu	sp,sp,-56
     e88:	afb00014 	sw	s0,20(sp)
     e8c:	afbf001c 	sw	ra,28(sp)
     e90:	afb10018 	sw	s1,24(sp)
     e94:	e7ac0038 	swc1	$f12,56(sp)
     e98:	e7ae003c 	swc1	$f14,60(sp)
     e9c:	afa60040 	sw	a2,64(sp)
     ea0:	3c100000 	lui	s0,0x0
     ea4:	00e08825 	move	s1,a3
     ea8:	8e100000 	lw	s0,0(s0)
     eac:	0c000000 	jal	0 <Matrix_Init>
     eb0:	84e40002 	lh	a0,2(a3)
     eb4:	86240002 	lh	a0,2(s1)
     eb8:	0c000000 	jal	0 <Matrix_Init>
     ebc:	e7a00030 	swc1	$f0,48(sp)
     ec0:	c7ae0030 	lwc1	$f14,48(sp)
     ec4:	e6000000 	swc1	$f0,0(s0)
     ec8:	44808000 	mtc1	zero,$f16
     ecc:	46007107 	neg.s	$f4,$f14
     ed0:	3c013f80 	lui	at,0x3f80
     ed4:	e6040008 	swc1	$f4,8(s0)
     ed8:	c7a60038 	lwc1	$f6,56(sp)
     edc:	44811000 	mtc1	at,$f2
     ee0:	46000306 	mov.s	$f12,$f0
     ee4:	e6060030 	swc1	$f6,48(s0)
     ee8:	c7a8003c 	lwc1	$f8,60(sp)
     eec:	e6080034 	swc1	$f8,52(s0)
     ef0:	c7aa0040 	lwc1	$f10,64(sp)
     ef4:	e610000c 	swc1	$f16,12(s0)
     ef8:	e610001c 	swc1	$f16,28(s0)
     efc:	e610002c 	swc1	$f16,44(s0)
     f00:	e602003c 	swc1	$f2,60(s0)
     f04:	e60a0038 	swc1	$f10,56(s0)
     f08:	86240000 	lh	a0,0(s1)
     f0c:	50800018 	beqzl	a0,f70 <func_800D1694+0xec>
     f10:	e6000028 	swc1	$f0,40(s0)
     f14:	e7ac002c 	swc1	$f12,44(sp)
     f18:	0c000000 	jal	0 <Matrix_Init>
     f1c:	e7ae0030 	swc1	$f14,48(sp)
     f20:	86240000 	lh	a0,0(s1)
     f24:	0c000000 	jal	0 <Matrix_Init>
     f28:	e7a00024 	swc1	$f0,36(sp)
     f2c:	c7ac002c 	lwc1	$f12,44(sp)
     f30:	c7a20024 	lwc1	$f2,36(sp)
     f34:	c7ae0030 	lwc1	$f14,48(sp)
     f38:	46006482 	mul.s	$f18,$f12,$f0
     f3c:	46001287 	neg.s	$f10,$f2
     f40:	44808000 	mtc1	zero,$f16
     f44:	46026102 	mul.s	$f4,$f12,$f2
     f48:	e60a0024 	swc1	$f10,36(s0)
     f4c:	e6000014 	swc1	$f0,20(s0)
     f50:	46007182 	mul.s	$f6,$f14,$f0
     f54:	e6120028 	swc1	$f18,40(s0)
     f58:	46027202 	mul.s	$f8,$f14,$f2
     f5c:	e6040018 	swc1	$f4,24(s0)
     f60:	e6060020 	swc1	$f6,32(s0)
     f64:	10000007 	b	f84 <func_800D1694+0x100>
     f68:	e6080010 	swc1	$f8,16(s0)
     f6c:	e6000028 	swc1	$f0,40(s0)
     f70:	e60e0020 	swc1	$f14,32(s0)
     f74:	e6100024 	swc1	$f16,36(s0)
     f78:	e6100018 	swc1	$f16,24(s0)
     f7c:	e6100010 	swc1	$f16,16(s0)
     f80:	e6020014 	swc1	$f2,20(s0)
     f84:	86240004 	lh	a0,4(s1)
     f88:	50800024 	beqzl	a0,101c <func_800D1694+0x198>
     f8c:	e6100004 	swc1	$f16,4(s0)
     f90:	0c000000 	jal	0 <Matrix_Init>
     f94:	00000000 	nop
     f98:	86240004 	lh	a0,4(s1)
     f9c:	0c000000 	jal	0 <Matrix_Init>
     fa0:	e7a00024 	swc1	$f0,36(sp)
     fa4:	c60e0000 	lwc1	$f14,0(s0)
     fa8:	c7a20024 	lwc1	$f2,36(sp)
     fac:	c60c0010 	lwc1	$f12,16(s0)
     fb0:	46007482 	mul.s	$f18,$f14,$f0
     fb4:	00000000 	nop
     fb8:	46026102 	mul.s	$f4,$f12,$f2
     fbc:	00000000 	nop
     fc0:	46006202 	mul.s	$f8,$f12,$f0
     fc4:	c60c0018 	lwc1	$f12,24(s0)
     fc8:	46027282 	mul.s	$f10,$f14,$f2
     fcc:	c60e0008 	lwc1	$f14,8(s0)
     fd0:	46049180 	add.s	$f6,$f18,$f4
     fd4:	46007102 	mul.s	$f4,$f14,$f0
     fd8:	e6060000 	swc1	$f6,0(s0)
     fdc:	46026182 	mul.s	$f6,$f12,$f2
     fe0:	460a4481 	sub.s	$f18,$f8,$f10
     fe4:	46006282 	mul.s	$f10,$f12,$f0
     fe8:	c60c0014 	lwc1	$f12,20(s0)
     fec:	e6120010 	swc1	$f18,16(s0)
     ff0:	46027482 	mul.s	$f18,$f14,$f2
     ff4:	46062200 	add.s	$f8,$f4,$f6
     ff8:	46026182 	mul.s	$f6,$f12,$f2
     ffc:	e6080008 	swc1	$f8,8(s0)
    1000:	46006202 	mul.s	$f8,$f12,$f0
    1004:	46125101 	sub.s	$f4,$f10,$f18
    1008:	e6060004 	swc1	$f6,4(s0)
    100c:	e6040018 	swc1	$f4,24(s0)
    1010:	10000002 	b	101c <func_800D1694+0x198>
    1014:	e6080014 	swc1	$f8,20(s0)
    1018:	e6100004 	swc1	$f16,4(s0)
    101c:	8fbf001c 	lw	ra,28(sp)
    1020:	8fb00014 	lw	s0,20(sp)
    1024:	8fb10018 	lw	s1,24(sp)
    1028:	03e00008 	jr	ra
    102c:	27bd0038 	addiu	sp,sp,56

00001030 <Matrix_MtxFToMtx>:
    1030:	3c014780 	lui	at,0x4780
    1034:	44810000 	mtc1	at,$f0
    1038:	c4840000 	lwc1	$f4,0(a0)
    103c:	24a30020 	addiu	v1,a1,32
    1040:	00a01025 	move	v0,a1
    1044:	46002182 	mul.s	$f6,$f4,$f0
    1048:	4600320d 	trunc.w.s	$f8,$f6
    104c:	44184000 	mfc1	t8,$f8
    1050:	00000000 	nop
    1054:	00187c03 	sra	t7,t8,0x10
    1058:	a4af0000 	sh	t7,0(a1)
    105c:	a4b80020 	sh	t8,32(a1)
    1060:	c48a0004 	lwc1	$f10,4(a0)
    1064:	46005402 	mul.s	$f16,$f10,$f0
    1068:	4600848d 	trunc.w.s	$f18,$f16
    106c:	44099000 	mfc1	t1,$f18
    1070:	00000000 	nop
    1074:	00094403 	sra	t0,t1,0x10
    1078:	a4a80002 	sh	t0,2(a1)
    107c:	a4a90022 	sh	t1,34(a1)
    1080:	c4840008 	lwc1	$f4,8(a0)
    1084:	46002182 	mul.s	$f6,$f4,$f0
    1088:	4600320d 	trunc.w.s	$f8,$f6
    108c:	440c4000 	mfc1	t4,$f8
    1090:	00000000 	nop
    1094:	000c5c03 	sra	t3,t4,0x10
    1098:	a4ab0004 	sh	t3,4(a1)
    109c:	a4ac0024 	sh	t4,36(a1)
    10a0:	c48a000c 	lwc1	$f10,12(a0)
    10a4:	46005402 	mul.s	$f16,$f10,$f0
    10a8:	4600848d 	trunc.w.s	$f18,$f16
    10ac:	440f9000 	mfc1	t7,$f18
    10b0:	00000000 	nop
    10b4:	000f7403 	sra	t6,t7,0x10
    10b8:	a4ae0006 	sh	t6,6(a1)
    10bc:	a4af0026 	sh	t7,38(a1)
    10c0:	c4840010 	lwc1	$f4,16(a0)
    10c4:	46002182 	mul.s	$f6,$f4,$f0
    10c8:	4600320d 	trunc.w.s	$f8,$f6
    10cc:	44084000 	mfc1	t0,$f8
    10d0:	00000000 	nop
    10d4:	0008cc03 	sra	t9,t0,0x10
    10d8:	a4b90008 	sh	t9,8(a1)
    10dc:	a4a80028 	sh	t0,40(a1)
    10e0:	c48a0014 	lwc1	$f10,20(a0)
    10e4:	46005402 	mul.s	$f16,$f10,$f0
    10e8:	4600848d 	trunc.w.s	$f18,$f16
    10ec:	440b9000 	mfc1	t3,$f18
    10f0:	00000000 	nop
    10f4:	000b5403 	sra	t2,t3,0x10
    10f8:	a4aa000a 	sh	t2,10(a1)
    10fc:	a4ab002a 	sh	t3,42(a1)
    1100:	c4840018 	lwc1	$f4,24(a0)
    1104:	46002182 	mul.s	$f6,$f4,$f0
    1108:	4600320d 	trunc.w.s	$f8,$f6
    110c:	440e4000 	mfc1	t6,$f8
    1110:	00000000 	nop
    1114:	000e6c03 	sra	t5,t6,0x10
    1118:	a4ad000c 	sh	t5,12(a1)
    111c:	a4ae002c 	sh	t6,44(a1)
    1120:	c48a001c 	lwc1	$f10,28(a0)
    1124:	46005402 	mul.s	$f16,$f10,$f0
    1128:	4600848d 	trunc.w.s	$f18,$f16
    112c:	44199000 	mfc1	t9,$f18
    1130:	00000000 	nop
    1134:	0019c403 	sra	t8,t9,0x10
    1138:	a4b8000e 	sh	t8,14(a1)
    113c:	a4b9002e 	sh	t9,46(a1)
    1140:	c4840020 	lwc1	$f4,32(a0)
    1144:	46002182 	mul.s	$f6,$f4,$f0
    1148:	4600320d 	trunc.w.s	$f8,$f6
    114c:	440a4000 	mfc1	t2,$f8
    1150:	00000000 	nop
    1154:	000a4c03 	sra	t1,t2,0x10
    1158:	a4a90010 	sh	t1,16(a1)
    115c:	a4aa0030 	sh	t2,48(a1)
    1160:	c48a0024 	lwc1	$f10,36(a0)
    1164:	46005402 	mul.s	$f16,$f10,$f0
    1168:	4600848d 	trunc.w.s	$f18,$f16
    116c:	440d9000 	mfc1	t5,$f18
    1170:	00000000 	nop
    1174:	000d6403 	sra	t4,t5,0x10
    1178:	a4ac0012 	sh	t4,18(a1)
    117c:	a46d0012 	sh	t5,18(v1)
    1180:	c4840028 	lwc1	$f4,40(a0)
    1184:	46002182 	mul.s	$f6,$f4,$f0
    1188:	4600320d 	trunc.w.s	$f8,$f6
    118c:	44184000 	mfc1	t8,$f8
    1190:	00000000 	nop
    1194:	00187c03 	sra	t7,t8,0x10
    1198:	a4af0014 	sh	t7,20(a1)
    119c:	a4780014 	sh	t8,20(v1)
    11a0:	c48a002c 	lwc1	$f10,44(a0)
    11a4:	46005402 	mul.s	$f16,$f10,$f0
    11a8:	4600848d 	trunc.w.s	$f18,$f16
    11ac:	44099000 	mfc1	t1,$f18
    11b0:	00000000 	nop
    11b4:	00094403 	sra	t0,t1,0x10
    11b8:	a4a80016 	sh	t0,22(a1)
    11bc:	a4690016 	sh	t1,22(v1)
    11c0:	c4840030 	lwc1	$f4,48(a0)
    11c4:	46002182 	mul.s	$f6,$f4,$f0
    11c8:	4600320d 	trunc.w.s	$f8,$f6
    11cc:	440c4000 	mfc1	t4,$f8
    11d0:	00000000 	nop
    11d4:	000c5c03 	sra	t3,t4,0x10
    11d8:	a4ab0018 	sh	t3,24(a1)
    11dc:	a46c0018 	sh	t4,24(v1)
    11e0:	c48a0034 	lwc1	$f10,52(a0)
    11e4:	46005402 	mul.s	$f16,$f10,$f0
    11e8:	4600848d 	trunc.w.s	$f18,$f16
    11ec:	440f9000 	mfc1	t7,$f18
    11f0:	00000000 	nop
    11f4:	000f7403 	sra	t6,t7,0x10
    11f8:	a4ae001a 	sh	t6,26(a1)
    11fc:	a46f001a 	sh	t7,26(v1)
    1200:	c4840038 	lwc1	$f4,56(a0)
    1204:	46002182 	mul.s	$f6,$f4,$f0
    1208:	4600320d 	trunc.w.s	$f8,$f6
    120c:	44084000 	mfc1	t0,$f8
    1210:	00000000 	nop
    1214:	0008cc03 	sra	t9,t0,0x10
    1218:	a4b9001c 	sh	t9,28(a1)
    121c:	a468001c 	sh	t0,28(v1)
    1220:	c48a003c 	lwc1	$f10,60(a0)
    1224:	46005402 	mul.s	$f16,$f10,$f0
    1228:	4600848d 	trunc.w.s	$f18,$f16
    122c:	440b9000 	mfc1	t3,$f18
    1230:	00000000 	nop
    1234:	000b5403 	sra	t2,t3,0x10
    1238:	a4aa001e 	sh	t2,30(a1)
    123c:	03e00008 	jr	ra
    1240:	a46b001e 	sh	t3,30(v1)

00001244 <Matrix_ToMtx>:
    1244:	27bdffe8 	addiu	sp,sp,-24
    1248:	afa40018 	sw	a0,24(sp)
    124c:	afbf0014 	sw	ra,20(sp)
    1250:	3c040000 	lui	a0,0x0
    1254:	0c000000 	jal	0 <Matrix_Init>
    1258:	8c840000 	lw	a0,0(a0)
    125c:	00402025 	move	a0,v0
    1260:	0c000000 	jal	0 <Matrix_Init>
    1264:	8fa50018 	lw	a1,24(sp)
    1268:	8fbf0014 	lw	ra,20(sp)
    126c:	27bd0018 	addiu	sp,sp,24
    1270:	03e00008 	jr	ra
    1274:	00000000 	nop

00001278 <Matrix_NewMtx>:
    1278:	27bdffe8 	addiu	sp,sp,-24
    127c:	afbf0014 	sw	ra,20(sp)
    1280:	afa5001c 	sw	a1,28(sp)
    1284:	afa60020 	sw	a2,32(sp)
    1288:	0c000000 	jal	0 <Matrix_Init>
    128c:	24050040 	li	a1,64
    1290:	00402025 	move	a0,v0
    1294:	8fa5001c 	lw	a1,28(sp)
    1298:	0c000000 	jal	0 <Matrix_Init>
    129c:	8fa60020 	lw	a2,32(sp)
    12a0:	8fbf0014 	lw	ra,20(sp)
    12a4:	27bd0018 	addiu	sp,sp,24
    12a8:	03e00008 	jr	ra
    12ac:	00000000 	nop

000012b0 <Matrix_SkinMatrix_MtxFToNewMtx>:
    12b0:	27bdffe8 	addiu	sp,sp,-24
    12b4:	afa40018 	sw	a0,24(sp)
    12b8:	afbf0014 	sw	ra,20(sp)
    12bc:	00a02025 	move	a0,a1
    12c0:	0c000000 	jal	0 <Matrix_Init>
    12c4:	24050040 	li	a1,64
    12c8:	8fa40018 	lw	a0,24(sp)
    12cc:	0c000000 	jal	0 <Matrix_Init>
    12d0:	00402825 	move	a1,v0
    12d4:	8fbf0014 	lw	ra,20(sp)
    12d8:	27bd0018 	addiu	sp,sp,24
    12dc:	03e00008 	jr	ra
    12e0:	00000000 	nop

000012e4 <Matrix_MultVec3f>:
    12e4:	3c020000 	lui	v0,0x0
    12e8:	8c420000 	lw	v0,0(v0)
    12ec:	c4860000 	lwc1	$f6,0(a0)
    12f0:	c4900004 	lwc1	$f16,4(a0)
    12f4:	c4440000 	lwc1	$f4,0(v0)
    12f8:	c44a0010 	lwc1	$f10,16(v0)
    12fc:	46062202 	mul.s	$f8,$f4,$f6
    1300:	c4460020 	lwc1	$f6,32(v0)
    1304:	46105482 	mul.s	$f18,$f10,$f16
    1308:	c48a0008 	lwc1	$f10,8(a0)
    130c:	460a3402 	mul.s	$f16,$f6,$f10
    1310:	46124100 	add.s	$f4,$f8,$f18
    1314:	c4520030 	lwc1	$f18,48(v0)
    1318:	46102200 	add.s	$f8,$f4,$f16
    131c:	46089180 	add.s	$f6,$f18,$f8
    1320:	e4a60000 	swc1	$f6,0(a1)
    1324:	c4840000 	lwc1	$f4,0(a0)
    1328:	c44a0004 	lwc1	$f10,4(v0)
    132c:	c4880004 	lwc1	$f8,4(a0)
    1330:	c4520014 	lwc1	$f18,20(v0)
    1334:	46045402 	mul.s	$f16,$f10,$f4
    1338:	c4440024 	lwc1	$f4,36(v0)
    133c:	46089182 	mul.s	$f6,$f18,$f8
    1340:	c4920008 	lwc1	$f18,8(a0)
    1344:	46122202 	mul.s	$f8,$f4,$f18
    1348:	46068280 	add.s	$f10,$f16,$f6
    134c:	c4460034 	lwc1	$f6,52(v0)
    1350:	46085400 	add.s	$f16,$f10,$f8
    1354:	46103100 	add.s	$f4,$f6,$f16
    1358:	e4a40004 	swc1	$f4,4(a1)
    135c:	c48a0000 	lwc1	$f10,0(a0)
    1360:	c4520008 	lwc1	$f18,8(v0)
    1364:	c4900004 	lwc1	$f16,4(a0)
    1368:	c4460018 	lwc1	$f6,24(v0)
    136c:	460a9202 	mul.s	$f8,$f18,$f10
    1370:	c44a0028 	lwc1	$f10,40(v0)
    1374:	46103102 	mul.s	$f4,$f6,$f16
    1378:	c4860008 	lwc1	$f6,8(a0)
    137c:	46065402 	mul.s	$f16,$f10,$f6
    1380:	46044480 	add.s	$f18,$f8,$f4
    1384:	c4440038 	lwc1	$f4,56(v0)
    1388:	46109200 	add.s	$f8,$f18,$f16
    138c:	46082280 	add.s	$f10,$f4,$f8
    1390:	03e00008 	jr	ra
    1394:	e4aa0008 	swc1	$f10,8(a1)

00001398 <Matrix_MtxFCopy>:
    1398:	c4a40000 	lwc1	$f4,0(a1)
    139c:	e4840000 	swc1	$f4,0(a0)
    13a0:	c4a60004 	lwc1	$f6,4(a1)
    13a4:	e4860004 	swc1	$f6,4(a0)
    13a8:	c4a80008 	lwc1	$f8,8(a1)
    13ac:	e4880008 	swc1	$f8,8(a0)
    13b0:	c4aa000c 	lwc1	$f10,12(a1)
    13b4:	e48a000c 	swc1	$f10,12(a0)
    13b8:	c4b00010 	lwc1	$f16,16(a1)
    13bc:	e4900010 	swc1	$f16,16(a0)
    13c0:	c4b20014 	lwc1	$f18,20(a1)
    13c4:	e4920014 	swc1	$f18,20(a0)
    13c8:	c4a40018 	lwc1	$f4,24(a1)
    13cc:	e4840018 	swc1	$f4,24(a0)
    13d0:	c4a6001c 	lwc1	$f6,28(a1)
    13d4:	e486001c 	swc1	$f6,28(a0)
    13d8:	c4a80000 	lwc1	$f8,0(a1)
    13dc:	e4880000 	swc1	$f8,0(a0)
    13e0:	c4aa0004 	lwc1	$f10,4(a1)
    13e4:	e48a0004 	swc1	$f10,4(a0)
    13e8:	c4b00008 	lwc1	$f16,8(a1)
    13ec:	e4900008 	swc1	$f16,8(a0)
    13f0:	c4b2000c 	lwc1	$f18,12(a1)
    13f4:	e492000c 	swc1	$f18,12(a0)
    13f8:	c4a40010 	lwc1	$f4,16(a1)
    13fc:	e4840010 	swc1	$f4,16(a0)
    1400:	c4a60014 	lwc1	$f6,20(a1)
    1404:	e4860014 	swc1	$f6,20(a0)
    1408:	c4a80018 	lwc1	$f8,24(a1)
    140c:	e4880018 	swc1	$f8,24(a0)
    1410:	c4aa001c 	lwc1	$f10,28(a1)
    1414:	e48a001c 	swc1	$f10,28(a0)
    1418:	c4b00020 	lwc1	$f16,32(a1)
    141c:	e4900020 	swc1	$f16,32(a0)
    1420:	c4b20024 	lwc1	$f18,36(a1)
    1424:	e4920024 	swc1	$f18,36(a0)
    1428:	c4a40028 	lwc1	$f4,40(a1)
    142c:	e4840028 	swc1	$f4,40(a0)
    1430:	c4a6002c 	lwc1	$f6,44(a1)
    1434:	e486002c 	swc1	$f6,44(a0)
    1438:	c4a80030 	lwc1	$f8,48(a1)
    143c:	e4880030 	swc1	$f8,48(a0)
    1440:	c4aa0034 	lwc1	$f10,52(a1)
    1444:	e48a0034 	swc1	$f10,52(a0)
    1448:	c4b00038 	lwc1	$f16,56(a1)
    144c:	e4900038 	swc1	$f16,56(a0)
    1450:	c4b2003c 	lwc1	$f18,60(a1)
    1454:	e492003c 	swc1	$f18,60(a0)
    1458:	c4a40020 	lwc1	$f4,32(a1)
    145c:	e4840020 	swc1	$f4,32(a0)
    1460:	c4a60024 	lwc1	$f6,36(a1)
    1464:	e4860024 	swc1	$f6,36(a0)
    1468:	c4a80028 	lwc1	$f8,40(a1)
    146c:	e4880028 	swc1	$f8,40(a0)
    1470:	c4aa002c 	lwc1	$f10,44(a1)
    1474:	e48a002c 	swc1	$f10,44(a0)
    1478:	c4b00030 	lwc1	$f16,48(a1)
    147c:	e4900030 	swc1	$f16,48(a0)
    1480:	c4b20034 	lwc1	$f18,52(a1)
    1484:	e4920034 	swc1	$f18,52(a0)
    1488:	c4a40038 	lwc1	$f4,56(a1)
    148c:	e4840038 	swc1	$f4,56(a0)
    1490:	c4a6003c 	lwc1	$f6,60(a1)
    1494:	03e00008 	jr	ra
    1498:	e486003c 	swc1	$f6,60(a0)

0000149c <Matrix_MtxToMtxF>:
    149c:	948f0000 	lhu	t7,0(a0)
    14a0:	948e0020 	lhu	t6,32(a0)
    14a4:	3c013780 	lui	at,0x3780
    14a8:	000fc400 	sll	t8,t7,0x10
    14ac:	01d8c825 	or	t9,t6,t8
    14b0:	44992000 	mtc1	t9,$f4
    14b4:	44810000 	mtc1	at,$f0
    14b8:	468021a0 	cvt.s.w	$f6,$f4
    14bc:	46003202 	mul.s	$f8,$f6,$f0
    14c0:	e4a80000 	swc1	$f8,0(a1)
    14c4:	94890002 	lhu	t1,2(a0)
    14c8:	94880022 	lhu	t0,34(a0)
    14cc:	00095400 	sll	t2,t1,0x10
    14d0:	010a5825 	or	t3,t0,t2
    14d4:	448b5000 	mtc1	t3,$f10
    14d8:	00000000 	nop
    14dc:	46805420 	cvt.s.w	$f16,$f10
    14e0:	46008482 	mul.s	$f18,$f16,$f0
    14e4:	e4b20004 	swc1	$f18,4(a1)
    14e8:	948d0004 	lhu	t5,4(a0)
    14ec:	948c0024 	lhu	t4,36(a0)
    14f0:	000d7c00 	sll	t7,t5,0x10
    14f4:	018f7025 	or	t6,t4,t7
    14f8:	448e2000 	mtc1	t6,$f4
    14fc:	00000000 	nop
    1500:	468021a0 	cvt.s.w	$f6,$f4
    1504:	46003202 	mul.s	$f8,$f6,$f0
    1508:	e4a80008 	swc1	$f8,8(a1)
    150c:	94990006 	lhu	t9,6(a0)
    1510:	94980026 	lhu	t8,38(a0)
    1514:	00194c00 	sll	t1,t9,0x10
    1518:	03094025 	or	t0,t8,t1
    151c:	44885000 	mtc1	t0,$f10
    1520:	00000000 	nop
    1524:	46805420 	cvt.s.w	$f16,$f10
    1528:	46008482 	mul.s	$f18,$f16,$f0
    152c:	e4b2000c 	swc1	$f18,12(a1)
    1530:	948b0008 	lhu	t3,8(a0)
    1534:	948a0028 	lhu	t2,40(a0)
    1538:	000b6c00 	sll	t5,t3,0x10
    153c:	014d6025 	or	t4,t2,t5
    1540:	448c2000 	mtc1	t4,$f4
    1544:	00000000 	nop
    1548:	468021a0 	cvt.s.w	$f6,$f4
    154c:	46003202 	mul.s	$f8,$f6,$f0
    1550:	e4a80010 	swc1	$f8,16(a1)
    1554:	948e000a 	lhu	t6,10(a0)
    1558:	948f002a 	lhu	t7,42(a0)
    155c:	000ecc00 	sll	t9,t6,0x10
    1560:	01f9c025 	or	t8,t7,t9
    1564:	44985000 	mtc1	t8,$f10
    1568:	00000000 	nop
    156c:	46805420 	cvt.s.w	$f16,$f10
    1570:	46008482 	mul.s	$f18,$f16,$f0
    1574:	e4b20014 	swc1	$f18,20(a1)
    1578:	9488000c 	lhu	t0,12(a0)
    157c:	9489002c 	lhu	t1,44(a0)
    1580:	00085c00 	sll	t3,t0,0x10
    1584:	012b5025 	or	t2,t1,t3
    1588:	448a2000 	mtc1	t2,$f4
    158c:	00000000 	nop
    1590:	468021a0 	cvt.s.w	$f6,$f4
    1594:	46003202 	mul.s	$f8,$f6,$f0
    1598:	e4a80018 	swc1	$f8,24(a1)
    159c:	948c000e 	lhu	t4,14(a0)
    15a0:	948d002e 	lhu	t5,46(a0)
    15a4:	000c7400 	sll	t6,t4,0x10
    15a8:	01ae7825 	or	t7,t5,t6
    15ac:	448f5000 	mtc1	t7,$f10
    15b0:	00000000 	nop
    15b4:	46805420 	cvt.s.w	$f16,$f10
    15b8:	46008482 	mul.s	$f18,$f16,$f0
    15bc:	e4b2001c 	swc1	$f18,28(a1)
    15c0:	94980010 	lhu	t8,16(a0)
    15c4:	94990030 	lhu	t9,48(a0)
    15c8:	00184400 	sll	t0,t8,0x10
    15cc:	03284825 	or	t1,t9,t0
    15d0:	44892000 	mtc1	t1,$f4
    15d4:	00000000 	nop
    15d8:	468021a0 	cvt.s.w	$f6,$f4
    15dc:	46003202 	mul.s	$f8,$f6,$f0
    15e0:	e4a80020 	swc1	$f8,32(a1)
    15e4:	948a0012 	lhu	t2,18(a0)
    15e8:	948b0032 	lhu	t3,50(a0)
    15ec:	000a6400 	sll	t4,t2,0x10
    15f0:	016c6825 	or	t5,t3,t4
    15f4:	448d5000 	mtc1	t5,$f10
    15f8:	00000000 	nop
    15fc:	46805420 	cvt.s.w	$f16,$f10
    1600:	46008482 	mul.s	$f18,$f16,$f0
    1604:	e4b20024 	swc1	$f18,36(a1)
    1608:	948f0014 	lhu	t7,20(a0)
    160c:	948e0034 	lhu	t6,52(a0)
    1610:	000fc400 	sll	t8,t7,0x10
    1614:	01d8c825 	or	t9,t6,t8
    1618:	44992000 	mtc1	t9,$f4
    161c:	00000000 	nop
    1620:	468021a0 	cvt.s.w	$f6,$f4
    1624:	46003202 	mul.s	$f8,$f6,$f0
    1628:	e4a80028 	swc1	$f8,40(a1)
    162c:	94890016 	lhu	t1,22(a0)
    1630:	94880036 	lhu	t0,54(a0)
    1634:	00095400 	sll	t2,t1,0x10
    1638:	010a5825 	or	t3,t0,t2
    163c:	448b5000 	mtc1	t3,$f10
    1640:	00000000 	nop
    1644:	46805420 	cvt.s.w	$f16,$f10
    1648:	46008482 	mul.s	$f18,$f16,$f0
    164c:	e4b2002c 	swc1	$f18,44(a1)
    1650:	948d0018 	lhu	t5,24(a0)
    1654:	948c0038 	lhu	t4,56(a0)
    1658:	000d7c00 	sll	t7,t5,0x10
    165c:	018f7025 	or	t6,t4,t7
    1660:	448e2000 	mtc1	t6,$f4
    1664:	00000000 	nop
    1668:	468021a0 	cvt.s.w	$f6,$f4
    166c:	46003202 	mul.s	$f8,$f6,$f0
    1670:	e4a80030 	swc1	$f8,48(a1)
    1674:	9499001a 	lhu	t9,26(a0)
    1678:	9498003a 	lhu	t8,58(a0)
    167c:	00194c00 	sll	t1,t9,0x10
    1680:	03094025 	or	t0,t8,t1
    1684:	44885000 	mtc1	t0,$f10
    1688:	00000000 	nop
    168c:	46805420 	cvt.s.w	$f16,$f10
    1690:	46008482 	mul.s	$f18,$f16,$f0
    1694:	e4b20034 	swc1	$f18,52(a1)
    1698:	948b001c 	lhu	t3,28(a0)
    169c:	948a003c 	lhu	t2,60(a0)
    16a0:	000b6c00 	sll	t5,t3,0x10
    16a4:	014d6025 	or	t4,t2,t5
    16a8:	448c2000 	mtc1	t4,$f4
    16ac:	00000000 	nop
    16b0:	468021a0 	cvt.s.w	$f6,$f4
    16b4:	46003202 	mul.s	$f8,$f6,$f0
    16b8:	e4a80038 	swc1	$f8,56(a1)
    16bc:	948e001e 	lhu	t6,30(a0)
    16c0:	948f003e 	lhu	t7,62(a0)
    16c4:	000ecc00 	sll	t9,t6,0x10
    16c8:	01f9c025 	or	t8,t7,t9
    16cc:	44985000 	mtc1	t8,$f10
    16d0:	00000000 	nop
    16d4:	46805420 	cvt.s.w	$f16,$f10
    16d8:	46008482 	mul.s	$f18,$f16,$f0
    16dc:	03e00008 	jr	ra
    16e0:	e4b2003c 	swc1	$f18,60(a1)

000016e4 <Matrix_MultVec3fExt>:
    16e4:	c4c40000 	lwc1	$f4,0(a2)
    16e8:	c4860000 	lwc1	$f6,0(a0)
    16ec:	c4ca0010 	lwc1	$f10,16(a2)
    16f0:	c4900004 	lwc1	$f16,4(a0)
    16f4:	46062202 	mul.s	$f8,$f4,$f6
    16f8:	c4c60020 	lwc1	$f6,32(a2)
    16fc:	46105482 	mul.s	$f18,$f10,$f16
    1700:	c48a0008 	lwc1	$f10,8(a0)
    1704:	460a3402 	mul.s	$f16,$f6,$f10
    1708:	46124100 	add.s	$f4,$f8,$f18
    170c:	c4d20030 	lwc1	$f18,48(a2)
    1710:	46102200 	add.s	$f8,$f4,$f16
    1714:	46089180 	add.s	$f6,$f18,$f8
    1718:	e4a60000 	swc1	$f6,0(a1)
    171c:	c4840000 	lwc1	$f4,0(a0)
    1720:	c4ca0004 	lwc1	$f10,4(a2)
    1724:	c4880004 	lwc1	$f8,4(a0)
    1728:	c4d20014 	lwc1	$f18,20(a2)
    172c:	46045402 	mul.s	$f16,$f10,$f4
    1730:	c4c40024 	lwc1	$f4,36(a2)
    1734:	46089182 	mul.s	$f6,$f18,$f8
    1738:	c4920008 	lwc1	$f18,8(a0)
    173c:	46122202 	mul.s	$f8,$f4,$f18
    1740:	46068280 	add.s	$f10,$f16,$f6
    1744:	c4c60034 	lwc1	$f6,52(a2)
    1748:	46085400 	add.s	$f16,$f10,$f8
    174c:	46103100 	add.s	$f4,$f6,$f16
    1750:	e4a40004 	swc1	$f4,4(a1)
    1754:	c48a0000 	lwc1	$f10,0(a0)
    1758:	c4d20008 	lwc1	$f18,8(a2)
    175c:	c4900004 	lwc1	$f16,4(a0)
    1760:	c4c60018 	lwc1	$f6,24(a2)
    1764:	460a9202 	mul.s	$f8,$f18,$f10
    1768:	c4ca0028 	lwc1	$f10,40(a2)
    176c:	46103102 	mul.s	$f4,$f6,$f16
    1770:	c4860008 	lwc1	$f6,8(a0)
    1774:	46065402 	mul.s	$f16,$f10,$f6
    1778:	46044480 	add.s	$f18,$f8,$f4
    177c:	c4c40038 	lwc1	$f4,56(a2)
    1780:	46109200 	add.s	$f8,$f18,$f16
    1784:	46082280 	add.s	$f10,$f4,$f8
    1788:	03e00008 	jr	ra
    178c:	e4aa0008 	swc1	$f10,8(a1)

00001790 <Matrix_Reverse>:
    1790:	c4800004 	lwc1	$f0,4(a0)
    1794:	c4840010 	lwc1	$f4,16(a0)
    1798:	c4860020 	lwc1	$f6,32(a0)
    179c:	e4800010 	swc1	$f0,16(a0)
    17a0:	c4800008 	lwc1	$f0,8(a0)
    17a4:	c4880024 	lwc1	$f8,36(a0)
    17a8:	e4840004 	swc1	$f4,4(a0)
    17ac:	e4800020 	swc1	$f0,32(a0)
    17b0:	c4800018 	lwc1	$f0,24(a0)
    17b4:	e4860008 	swc1	$f6,8(a0)
    17b8:	e4880018 	swc1	$f8,24(a0)
    17bc:	03e00008 	jr	ra
    17c0:	e4800024 	swc1	$f0,36(a0)

000017c4 <func_800D1FD4>:
    17c4:	3c020000 	lui	v0,0x0
    17c8:	8c420000 	lw	v0,0(v0)
    17cc:	c4880000 	lwc1	$f8,0(a0)
    17d0:	c4420000 	lwc1	$f2,0(v0)
    17d4:	c44c0004 	lwc1	$f12,4(v0)
    17d8:	46021082 	mul.s	$f2,$f2,$f2
    17dc:	00000000 	nop
    17e0:	460c6102 	mul.s	$f4,$f12,$f12
    17e4:	c44c0008 	lwc1	$f12,8(v0)
    17e8:	460c6182 	mul.s	$f6,$f12,$f12
    17ec:	c44c0014 	lwc1	$f12,20(v0)
    17f0:	46041080 	add.s	$f2,$f2,$f4
    17f4:	46061080 	add.s	$f2,$f2,$f6
    17f8:	46001004 	sqrt.s	$f0,$f2
    17fc:	c4420010 	lwc1	$f2,16(v0)
    1800:	46004282 	mul.s	$f10,$f8,$f0
    1804:	e44a0000 	swc1	$f10,0(v0)
    1808:	c4900004 	lwc1	$f16,4(a0)
    180c:	46008482 	mul.s	$f18,$f16,$f0
    1810:	e4520004 	swc1	$f18,4(v0)
    1814:	c4840008 	lwc1	$f4,8(a0)
    1818:	46002182 	mul.s	$f6,$f4,$f0
    181c:	00000000 	nop
    1820:	46021082 	mul.s	$f2,$f2,$f2
    1824:	00000000 	nop
    1828:	460c6202 	mul.s	$f8,$f12,$f12
    182c:	c44c0018 	lwc1	$f12,24(v0)
    1830:	e4460008 	swc1	$f6,8(v0)
    1834:	c4900010 	lwc1	$f16,16(a0)
    1838:	460c6282 	mul.s	$f10,$f12,$f12
    183c:	c44c0024 	lwc1	$f12,36(v0)
    1840:	46081080 	add.s	$f2,$f2,$f8
    1844:	460a1080 	add.s	$f2,$f2,$f10
    1848:	46001004 	sqrt.s	$f0,$f2
    184c:	c4420020 	lwc1	$f2,32(v0)
    1850:	46008482 	mul.s	$f18,$f16,$f0
    1854:	e4520010 	swc1	$f18,16(v0)
    1858:	c4840014 	lwc1	$f4,20(a0)
    185c:	46002182 	mul.s	$f6,$f4,$f0
    1860:	e4460014 	swc1	$f6,20(v0)
    1864:	c4880018 	lwc1	$f8,24(a0)
    1868:	46004282 	mul.s	$f10,$f8,$f0
    186c:	00000000 	nop
    1870:	46021082 	mul.s	$f2,$f2,$f2
    1874:	00000000 	nop
    1878:	460c6402 	mul.s	$f16,$f12,$f12
    187c:	c44c0028 	lwc1	$f12,40(v0)
    1880:	e44a0018 	swc1	$f10,24(v0)
    1884:	c4840020 	lwc1	$f4,32(a0)
    1888:	460c6482 	mul.s	$f18,$f12,$f12
    188c:	46101080 	add.s	$f2,$f2,$f16
    1890:	46121080 	add.s	$f2,$f2,$f18
    1894:	46001004 	sqrt.s	$f0,$f2
    1898:	46002182 	mul.s	$f6,$f4,$f0
    189c:	e4460020 	swc1	$f6,32(v0)
    18a0:	c4880024 	lwc1	$f8,36(a0)
    18a4:	46004282 	mul.s	$f10,$f8,$f0
    18a8:	e44a0024 	swc1	$f10,36(v0)
    18ac:	c4900028 	lwc1	$f16,40(a0)
    18b0:	46008482 	mul.s	$f18,$f16,$f0
    18b4:	03e00008 	jr	ra
    18b8:	e4520028 	swc1	$f18,40(v0)

000018bc <func_800D20CC>:
    18bc:	27bdffd8 	addiu	sp,sp,-40
    18c0:	afbf0024 	sw	ra,36(sp)
    18c4:	afb00020 	sw	s0,32(sp)
    18c8:	f7b40018 	sdc1	$f20,24(sp)
    18cc:	afa60030 	sw	a2,48(sp)
    18d0:	c4940020 	lwc1	$f20,32(a0)
    18d4:	c4820028 	lwc1	$f2,40(a0)
    18d8:	c48c0024 	lwc1	$f12,36(a0)
    18dc:	4614a502 	mul.s	$f20,$f20,$f20
    18e0:	00a08025 	move	s0,a1
    18e4:	afa40028 	sw	a0,40(sp)
    18e8:	46021102 	mul.s	$f4,$f2,$f2
    18ec:	46006307 	neg.s	$f12,$f12
    18f0:	4604a500 	add.s	$f20,$f20,$f4
    18f4:	0c000000 	jal	0 <Matrix_Init>
    18f8:	4600a384 	sqrt.s	$f14,$f20
    18fc:	3c010000 	lui	at,0x0
    1900:	c4260000 	lwc1	$f6,0(at)
    1904:	8fa40028 	lw	a0,40(sp)
    1908:	24014000 	li	at,16384
    190c:	46060202 	mul.s	$f8,$f0,$f6
    1910:	4600428d 	trunc.w.s	$f10,$f8
    1914:	440f5000 	mfc1	t7,$f10
    1918:	00000000 	nop
    191c:	a60f0000 	sh	t7,0(s0)
    1920:	86020000 	lh	v0,0(s0)
    1924:	10410003 	beq	v0,at,1934 <func_800D20CC+0x78>
    1928:	2401c000 	li	at,-16384
    192c:	5441000e 	bnel	v0,at,1968 <func_800D20CC+0xac>
    1930:	c48c0020 	lwc1	$f12,32(a0)
    1934:	a6000004 	sh	zero,4(s0)
    1938:	c48c0008 	lwc1	$f12,8(a0)
    193c:	c48e0000 	lwc1	$f14,0(a0)
    1940:	0c000000 	jal	0 <Matrix_Init>
    1944:	46006307 	neg.s	$f12,$f12
    1948:	3c010000 	lui	at,0x0
    194c:	c4320000 	lwc1	$f18,0(at)
    1950:	46120102 	mul.s	$f4,$f0,$f18
    1954:	4600218d 	trunc.w.s	$f6,$f4
    1958:	44193000 	mfc1	t9,$f6
    195c:	10000038 	b	1a40 <func_800D20CC+0x184>
    1960:	a6190002 	sh	t9,2(s0)
    1964:	c48c0020 	lwc1	$f12,32(a0)
    1968:	c48e0028 	lwc1	$f14,40(a0)
    196c:	0c000000 	jal	0 <Matrix_Init>
    1970:	afa40028 	sw	a0,40(sp)
    1974:	3c010000 	lui	at,0x0
    1978:	c4280000 	lwc1	$f8,0(at)
    197c:	8fa40028 	lw	a0,40(sp)
    1980:	46080282 	mul.s	$f10,$f0,$f8
    1984:	4600548d 	trunc.w.s	$f18,$f10
    1988:	44099000 	mfc1	t1,$f18
    198c:	00000000 	nop
    1990:	a6090002 	sh	t1,2(s0)
    1994:	8faa0030 	lw	t2,48(sp)
    1998:	5540000c 	bnezl	t2,19cc <func_800D20CC+0x110>
    199c:	c4940000 	lwc1	$f20,0(a0)
    19a0:	c48c0004 	lwc1	$f12,4(a0)
    19a4:	0c000000 	jal	0 <Matrix_Init>
    19a8:	c48e0014 	lwc1	$f14,20(a0)
    19ac:	3c010000 	lui	at,0x0
    19b0:	c4240000 	lwc1	$f4,0(at)
    19b4:	46040182 	mul.s	$f6,$f0,$f4
    19b8:	4600320d 	trunc.w.s	$f8,$f6
    19bc:	440c4000 	mfc1	t4,$f8
    19c0:	1000001f 	b	1a40 <func_800D20CC+0x184>
    19c4:	a60c0004 	sh	t4,4(s0)
    19c8:	c4940000 	lwc1	$f20,0(a0)
    19cc:	c4820008 	lwc1	$f2,8(a0)
    19d0:	c4900018 	lwc1	$f16,24(a0)
    19d4:	4614a502 	mul.s	$f20,$f20,$f20
    19d8:	00000000 	nop
    19dc:	46021282 	mul.s	$f10,$f2,$f2
    19e0:	c4820004 	lwc1	$f2,4(a0)
    19e4:	46021482 	mul.s	$f18,$f2,$f2
    19e8:	460aa500 	add.s	$f20,$f20,$f10
    19ec:	4612a500 	add.s	$f20,$f20,$f18
    19f0:	4600a004 	sqrt.s	$f0,$f20
    19f4:	46001303 	div.s	$f12,$f2,$f0
    19f8:	c4820010 	lwc1	$f2,16(a0)
    19fc:	46021082 	mul.s	$f2,$f2,$f2
    1a00:	00000000 	nop
    1a04:	46108102 	mul.s	$f4,$f16,$f16
    1a08:	c4900014 	lwc1	$f16,20(a0)
    1a0c:	46108182 	mul.s	$f6,$f16,$f16
    1a10:	46041080 	add.s	$f2,$f2,$f4
    1a14:	46061080 	add.s	$f2,$f2,$f6
    1a18:	46001004 	sqrt.s	$f0,$f2
    1a1c:	0c000000 	jal	0 <Matrix_Init>
    1a20:	46008383 	div.s	$f14,$f16,$f0
    1a24:	3c010000 	lui	at,0x0
    1a28:	c4280000 	lwc1	$f8,0(at)
    1a2c:	46080282 	mul.s	$f10,$f0,$f8
    1a30:	4600548d 	trunc.w.s	$f18,$f10
    1a34:	440e9000 	mfc1	t6,$f18
    1a38:	00000000 	nop
    1a3c:	a60e0004 	sh	t6,4(s0)
    1a40:	8fbf0024 	lw	ra,36(sp)
    1a44:	d7b40018 	ldc1	$f20,24(sp)
    1a48:	8fb00020 	lw	s0,32(sp)
    1a4c:	03e00008 	jr	ra
    1a50:	27bd0028 	addiu	sp,sp,40

00001a54 <func_800D2264>:
    1a54:	27bdffd8 	addiu	sp,sp,-40
    1a58:	afbf0024 	sw	ra,36(sp)
    1a5c:	afb00020 	sw	s0,32(sp)
    1a60:	f7b40018 	sdc1	$f20,24(sp)
    1a64:	afa60030 	sw	a2,48(sp)
    1a68:	c4940000 	lwc1	$f20,0(a0)
    1a6c:	c4820004 	lwc1	$f2,4(a0)
    1a70:	c48c0008 	lwc1	$f12,8(a0)
    1a74:	4614a502 	mul.s	$f20,$f20,$f20
    1a78:	00a08025 	move	s0,a1
    1a7c:	afa40028 	sw	a0,40(sp)
    1a80:	46021102 	mul.s	$f4,$f2,$f2
    1a84:	46006307 	neg.s	$f12,$f12
    1a88:	4604a500 	add.s	$f20,$f20,$f4
    1a8c:	0c000000 	jal	0 <Matrix_Init>
    1a90:	4600a384 	sqrt.s	$f14,$f20
    1a94:	3c010000 	lui	at,0x0
    1a98:	c4260000 	lwc1	$f6,0(at)
    1a9c:	8fa40028 	lw	a0,40(sp)
    1aa0:	24014000 	li	at,16384
    1aa4:	46060202 	mul.s	$f8,$f0,$f6
    1aa8:	4600428d 	trunc.w.s	$f10,$f8
    1aac:	440f5000 	mfc1	t7,$f10
    1ab0:	00000000 	nop
    1ab4:	a60f0002 	sh	t7,2(s0)
    1ab8:	86020002 	lh	v0,2(s0)
    1abc:	10410003 	beq	v0,at,1acc <func_800D2264+0x78>
    1ac0:	2401c000 	li	at,-16384
    1ac4:	5441000e 	bnel	v0,at,1b00 <func_800D2264+0xac>
    1ac8:	c48c0004 	lwc1	$f12,4(a0)
    1acc:	a6000000 	sh	zero,0(s0)
    1ad0:	c48c0010 	lwc1	$f12,16(a0)
    1ad4:	c48e0014 	lwc1	$f14,20(a0)
    1ad8:	0c000000 	jal	0 <Matrix_Init>
    1adc:	46006307 	neg.s	$f12,$f12
    1ae0:	3c010000 	lui	at,0x0
    1ae4:	c4320000 	lwc1	$f18,0(at)
    1ae8:	46120102 	mul.s	$f4,$f0,$f18
    1aec:	4600218d 	trunc.w.s	$f6,$f4
    1af0:	44193000 	mfc1	t9,$f6
    1af4:	10000038 	b	1bd8 <func_800D2264+0x184>
    1af8:	a6190004 	sh	t9,4(s0)
    1afc:	c48c0004 	lwc1	$f12,4(a0)
    1b00:	c48e0000 	lwc1	$f14,0(a0)
    1b04:	0c000000 	jal	0 <Matrix_Init>
    1b08:	afa40028 	sw	a0,40(sp)
    1b0c:	3c010000 	lui	at,0x0
    1b10:	c4280000 	lwc1	$f8,0(at)
    1b14:	8fa40028 	lw	a0,40(sp)
    1b18:	46080282 	mul.s	$f10,$f0,$f8
    1b1c:	4600548d 	trunc.w.s	$f18,$f10
    1b20:	44099000 	mfc1	t1,$f18
    1b24:	00000000 	nop
    1b28:	a6090004 	sh	t1,4(s0)
    1b2c:	8faa0030 	lw	t2,48(sp)
    1b30:	5540000c 	bnezl	t2,1b64 <func_800D2264+0x110>
    1b34:	c4940010 	lwc1	$f20,16(a0)
    1b38:	c48c0018 	lwc1	$f12,24(a0)
    1b3c:	0c000000 	jal	0 <Matrix_Init>
    1b40:	c48e0028 	lwc1	$f14,40(a0)
    1b44:	3c010000 	lui	at,0x0
    1b48:	c4240000 	lwc1	$f4,0(at)
    1b4c:	46040182 	mul.s	$f6,$f0,$f4
    1b50:	4600320d 	trunc.w.s	$f8,$f6
    1b54:	440c4000 	mfc1	t4,$f8
    1b58:	1000001f 	b	1bd8 <func_800D2264+0x184>
    1b5c:	a60c0000 	sh	t4,0(s0)
    1b60:	c4940010 	lwc1	$f20,16(a0)
    1b64:	c4820014 	lwc1	$f2,20(a0)
    1b68:	c4900024 	lwc1	$f16,36(a0)
    1b6c:	4614a502 	mul.s	$f20,$f20,$f20
    1b70:	00000000 	nop
    1b74:	46021282 	mul.s	$f10,$f2,$f2
    1b78:	c4820018 	lwc1	$f2,24(a0)
    1b7c:	46021482 	mul.s	$f18,$f2,$f2
    1b80:	460aa500 	add.s	$f20,$f20,$f10
    1b84:	4612a500 	add.s	$f20,$f20,$f18
    1b88:	4600a004 	sqrt.s	$f0,$f20
    1b8c:	46001303 	div.s	$f12,$f2,$f0
    1b90:	c4820020 	lwc1	$f2,32(a0)
    1b94:	46021082 	mul.s	$f2,$f2,$f2
    1b98:	00000000 	nop
    1b9c:	46108102 	mul.s	$f4,$f16,$f16
    1ba0:	c4900028 	lwc1	$f16,40(a0)
    1ba4:	46108182 	mul.s	$f6,$f16,$f16
    1ba8:	46041080 	add.s	$f2,$f2,$f4
    1bac:	46061080 	add.s	$f2,$f2,$f6
    1bb0:	46001004 	sqrt.s	$f0,$f2
    1bb4:	0c000000 	jal	0 <Matrix_Init>
    1bb8:	46008383 	div.s	$f14,$f16,$f0
    1bbc:	3c010000 	lui	at,0x0
    1bc0:	c4280000 	lwc1	$f8,0(at)
    1bc4:	46080282 	mul.s	$f10,$f0,$f8
    1bc8:	4600548d 	trunc.w.s	$f18,$f10
    1bcc:	440e9000 	mfc1	t6,$f18
    1bd0:	00000000 	nop
    1bd4:	a60e0000 	sh	t6,0(s0)
    1bd8:	8fbf0024 	lw	ra,36(sp)
    1bdc:	d7b40018 	ldc1	$f20,24(sp)
    1be0:	8fb00020 	lw	s0,32(sp)
    1be4:	03e00008 	jr	ra
    1be8:	27bd0028 	addiu	sp,sp,40

00001bec <func_800D23FC>:
    1bec:	27bdffc0 	addiu	sp,sp,-64
    1bf0:	afa60048 	sw	a2,72(sp)
    1bf4:	30c600ff 	andi	a2,a2,0xff
    1bf8:	f7b40018 	sdc1	$f20,24(sp)
    1bfc:	24010001 	li	at,1
    1c00:	46006506 	mov.s	$f20,$f12
    1c04:	afbf003c 	sw	ra,60(sp)
    1c08:	afb00038 	sw	s0,56(sp)
    1c0c:	f7ba0030 	sdc1	$f26,48(sp)
    1c10:	f7b80028 	sdc1	$f24,40(sp)
    1c14:	14c100a4 	bne	a2,at,1ea8 <func_800D23FC+0x2bc>
    1c18:	f7b60020 	sdc1	$f22,32(sp)
    1c1c:	44802000 	mtc1	zero,$f4
    1c20:	3c100000 	lui	s0,0x0
    1c24:	46046032 	c.eq.s	$f12,$f4
    1c28:	00000000 	nop
    1c2c:	45030100 	bc1tl	2030 <func_800D23FC+0x444>
    1c30:	8fbf003c 	lw	ra,60(sp)
    1c34:	8e100000 	lw	s0,0(s0)
    1c38:	0c000000 	jal	0 <Matrix_Init>
    1c3c:	afa50044 	sw	a1,68(sp)
    1c40:	46000686 	mov.s	$f26,$f0
    1c44:	0c000000 	jal	0 <Matrix_Init>
    1c48:	4600a306 	mov.s	$f12,$f20
    1c4c:	8fa50044 	lw	a1,68(sp)
    1c50:	c60e0000 	lwc1	$f14,0(s0)
    1c54:	c6020010 	lwc1	$f2,16(s0)
    1c58:	c4b40000 	lwc1	$f20,0(a1)
    1c5c:	c4b60004 	lwc1	$f22,4(a1)
    1c60:	3c013f80 	lui	at,0x3f80
    1c64:	460ea202 	mul.s	$f8,$f20,$f14
    1c68:	44813000 	mtc1	at,$f6
    1c6c:	c60c0020 	lwc1	$f12,32(s0)
    1c70:	4602b282 	mul.s	$f10,$f22,$f2
    1c74:	c4b80008 	lwc1	$f24,8(a1)
    1c78:	46003401 	sub.s	$f16,$f6,$f0
    1c7c:	460cc182 	mul.s	$f6,$f24,$f12
    1c80:	460a4100 	add.s	$f4,$f8,$f10
    1c84:	46062200 	add.s	$f8,$f4,$f6
    1c88:	46104482 	mul.s	$f18,$f8,$f16
    1c8c:	00000000 	nop
    1c90:	46007282 	mul.s	$f10,$f14,$f0
    1c94:	00000000 	nop
    1c98:	4612a102 	mul.s	$f4,$f20,$f18
    1c9c:	46045180 	add.s	$f6,$f10,$f4
    1ca0:	46181202 	mul.s	$f8,$f2,$f24
    1ca4:	00000000 	nop
    1ca8:	46166282 	mul.s	$f10,$f12,$f22
    1cac:	460a4101 	sub.s	$f4,$f8,$f10
    1cb0:	4604d202 	mul.s	$f8,$f26,$f4
    1cb4:	46083280 	add.s	$f10,$f6,$f8
    1cb8:	46001102 	mul.s	$f4,$f2,$f0
    1cbc:	e60a0000 	swc1	$f10,0(s0)
    1cc0:	c4a60004 	lwc1	$f6,4(a1)
    1cc4:	46123202 	mul.s	$f8,$f6,$f18
    1cc8:	c4a60000 	lwc1	$f6,0(a1)
    1ccc:	46082280 	add.s	$f10,$f4,$f8
    1cd0:	46066102 	mul.s	$f4,$f12,$f6
    1cd4:	c4a80008 	lwc1	$f8,8(a1)
    1cd8:	46087182 	mul.s	$f6,$f14,$f8
    1cdc:	46062201 	sub.s	$f8,$f4,$f6
    1ce0:	4608d102 	mul.s	$f4,$f26,$f8
    1ce4:	46045180 	add.s	$f6,$f10,$f4
    1ce8:	46006202 	mul.s	$f8,$f12,$f0
    1cec:	c60c0024 	lwc1	$f12,36(s0)
    1cf0:	e6060010 	swc1	$f6,16(s0)
    1cf4:	c4aa0008 	lwc1	$f10,8(a1)
    1cf8:	46125102 	mul.s	$f4,$f10,$f18
    1cfc:	c4aa0004 	lwc1	$f10,4(a1)
    1d00:	46044180 	add.s	$f6,$f8,$f4
    1d04:	460a7202 	mul.s	$f8,$f14,$f10
    1d08:	c4a40000 	lwc1	$f4,0(a1)
    1d0c:	c60e0004 	lwc1	$f14,4(s0)
    1d10:	46041282 	mul.s	$f10,$f2,$f4
    1d14:	c6020014 	lwc1	$f2,20(s0)
    1d18:	460a4101 	sub.s	$f4,$f8,$f10
    1d1c:	4604d202 	mul.s	$f8,$f26,$f4
    1d20:	46083280 	add.s	$f10,$f6,$f8
    1d24:	e60a0020 	swc1	$f10,32(s0)
    1d28:	c4b40000 	lwc1	$f20,0(a1)
    1d2c:	c4b60004 	lwc1	$f22,4(a1)
    1d30:	c4b80008 	lwc1	$f24,8(a1)
    1d34:	460ea102 	mul.s	$f4,$f20,$f14
    1d38:	00000000 	nop
    1d3c:	4602b182 	mul.s	$f6,$f22,$f2
    1d40:	46062200 	add.s	$f8,$f4,$f6
    1d44:	460cc282 	mul.s	$f10,$f24,$f12
    1d48:	460a4100 	add.s	$f4,$f8,$f10
    1d4c:	46102482 	mul.s	$f18,$f4,$f16
    1d50:	00000000 	nop
    1d54:	46007182 	mul.s	$f6,$f14,$f0
    1d58:	00000000 	nop
    1d5c:	4612a202 	mul.s	$f8,$f20,$f18
    1d60:	46083280 	add.s	$f10,$f6,$f8
    1d64:	46181102 	mul.s	$f4,$f2,$f24
    1d68:	00000000 	nop
    1d6c:	46166182 	mul.s	$f6,$f12,$f22
    1d70:	46062201 	sub.s	$f8,$f4,$f6
    1d74:	4608d102 	mul.s	$f4,$f26,$f8
    1d78:	46045180 	add.s	$f6,$f10,$f4
    1d7c:	46001202 	mul.s	$f8,$f2,$f0
    1d80:	e6060004 	swc1	$f6,4(s0)
    1d84:	c4aa0004 	lwc1	$f10,4(a1)
    1d88:	46125102 	mul.s	$f4,$f10,$f18
    1d8c:	c4aa0000 	lwc1	$f10,0(a1)
    1d90:	46044180 	add.s	$f6,$f8,$f4
    1d94:	460a6202 	mul.s	$f8,$f12,$f10
    1d98:	c4a40008 	lwc1	$f4,8(a1)
    1d9c:	46047282 	mul.s	$f10,$f14,$f4
    1da0:	460a4101 	sub.s	$f4,$f8,$f10
    1da4:	4604d202 	mul.s	$f8,$f26,$f4
    1da8:	46083280 	add.s	$f10,$f6,$f8
    1dac:	46006102 	mul.s	$f4,$f12,$f0
    1db0:	c60c0028 	lwc1	$f12,40(s0)
    1db4:	e60a0014 	swc1	$f10,20(s0)
    1db8:	c4a60008 	lwc1	$f6,8(a1)
    1dbc:	46123202 	mul.s	$f8,$f6,$f18
    1dc0:	c4a60004 	lwc1	$f6,4(a1)
    1dc4:	46082280 	add.s	$f10,$f4,$f8
    1dc8:	46067102 	mul.s	$f4,$f14,$f6
    1dcc:	c4a80000 	lwc1	$f8,0(a1)
    1dd0:	c60e0008 	lwc1	$f14,8(s0)
    1dd4:	46081182 	mul.s	$f6,$f2,$f8
    1dd8:	c6020018 	lwc1	$f2,24(s0)
    1ddc:	46062201 	sub.s	$f8,$f4,$f6
    1de0:	4608d102 	mul.s	$f4,$f26,$f8
    1de4:	46045180 	add.s	$f6,$f10,$f4
    1de8:	e6060024 	swc1	$f6,36(s0)
    1dec:	c4b40000 	lwc1	$f20,0(a1)
    1df0:	c4b60004 	lwc1	$f22,4(a1)
    1df4:	c4b80008 	lwc1	$f24,8(a1)
    1df8:	460ea202 	mul.s	$f8,$f20,$f14
    1dfc:	00000000 	nop
    1e00:	4602b282 	mul.s	$f10,$f22,$f2
    1e04:	460a4100 	add.s	$f4,$f8,$f10
    1e08:	460cc182 	mul.s	$f6,$f24,$f12
    1e0c:	46062200 	add.s	$f8,$f4,$f6
    1e10:	46104482 	mul.s	$f18,$f8,$f16
    1e14:	00000000 	nop
    1e18:	46007282 	mul.s	$f10,$f14,$f0
    1e1c:	00000000 	nop
    1e20:	4612a102 	mul.s	$f4,$f20,$f18
    1e24:	46045180 	add.s	$f6,$f10,$f4
    1e28:	46181202 	mul.s	$f8,$f2,$f24
    1e2c:	00000000 	nop
    1e30:	46166282 	mul.s	$f10,$f12,$f22
    1e34:	460a4101 	sub.s	$f4,$f8,$f10
    1e38:	4604d202 	mul.s	$f8,$f26,$f4
    1e3c:	46083280 	add.s	$f10,$f6,$f8
    1e40:	46001102 	mul.s	$f4,$f2,$f0
    1e44:	e60a0008 	swc1	$f10,8(s0)
    1e48:	c4a60004 	lwc1	$f6,4(a1)
    1e4c:	46123202 	mul.s	$f8,$f6,$f18
    1e50:	c4a60000 	lwc1	$f6,0(a1)
    1e54:	46082280 	add.s	$f10,$f4,$f8
    1e58:	46066102 	mul.s	$f4,$f12,$f6
    1e5c:	c4a80008 	lwc1	$f8,8(a1)
    1e60:	46087182 	mul.s	$f6,$f14,$f8
    1e64:	46062201 	sub.s	$f8,$f4,$f6
    1e68:	4608d102 	mul.s	$f4,$f26,$f8
    1e6c:	46045180 	add.s	$f6,$f10,$f4
    1e70:	46006202 	mul.s	$f8,$f12,$f0
    1e74:	e6060018 	swc1	$f6,24(s0)
    1e78:	c4aa0008 	lwc1	$f10,8(a1)
    1e7c:	46125102 	mul.s	$f4,$f10,$f18
    1e80:	c4aa0004 	lwc1	$f10,4(a1)
    1e84:	46044180 	add.s	$f6,$f8,$f4
    1e88:	460a7202 	mul.s	$f8,$f14,$f10
    1e8c:	c4a40000 	lwc1	$f4,0(a1)
    1e90:	46041282 	mul.s	$f10,$f2,$f4
    1e94:	460a4101 	sub.s	$f4,$f8,$f10
    1e98:	4604d202 	mul.s	$f8,$f26,$f4
    1e9c:	46083280 	add.s	$f10,$f6,$f8
    1ea0:	10000062 	b	202c <func_800D23FC+0x440>
    1ea4:	e60a0028 	swc1	$f10,40(s0)
    1ea8:	44802000 	mtc1	zero,$f4
    1eac:	3c100000 	lui	s0,0x0
    1eb0:	8e100000 	lw	s0,0(s0)
    1eb4:	4604a032 	c.eq.s	$f20,$f4
    1eb8:	00000000 	nop
    1ebc:	45030049 	bc1tl	1fe4 <func_800D23FC+0x3f8>
    1ec0:	44800000 	mtc1	zero,$f0
    1ec4:	4600a306 	mov.s	$f12,$f20
    1ec8:	0c000000 	jal	0 <Matrix_Init>
    1ecc:	afa50044 	sw	a1,68(sp)
    1ed0:	46000686 	mov.s	$f26,$f0
    1ed4:	0c000000 	jal	0 <Matrix_Init>
    1ed8:	4600a306 	mov.s	$f12,$f20
    1edc:	8fa50044 	lw	a1,68(sp)
    1ee0:	3c013f80 	lui	at,0x3f80
    1ee4:	44819000 	mtc1	at,$f18
    1ee8:	c4b40000 	lwc1	$f20,0(a1)
    1eec:	46009401 	sub.s	$f16,$f18,$f0
    1ef0:	4614a182 	mul.s	$f6,$f20,$f20
    1ef4:	00000000 	nop
    1ef8:	46103202 	mul.s	$f8,$f6,$f16
    1efc:	46004280 	add.s	$f10,$f8,$f0
    1f00:	e60a0000 	swc1	$f10,0(s0)
    1f04:	c4b60004 	lwc1	$f22,4(a1)
    1f08:	4616b102 	mul.s	$f4,$f22,$f22
    1f0c:	00000000 	nop
    1f10:	46102182 	mul.s	$f6,$f4,$f16
    1f14:	46003200 	add.s	$f8,$f6,$f0
    1f18:	e6080014 	swc1	$f8,20(s0)
    1f1c:	c4b80008 	lwc1	$f24,8(a1)
    1f20:	4618c282 	mul.s	$f10,$f24,$f24
    1f24:	00000000 	nop
    1f28:	46105102 	mul.s	$f4,$f10,$f16
    1f2c:	46002180 	add.s	$f6,$f4,$f0
    1f30:	44800000 	mtc1	zero,$f0
    1f34:	e6060028 	swc1	$f6,40(s0)
    1f38:	c4a80000 	lwc1	$f8,0(a1)
    1f3c:	c4a40004 	lwc1	$f4,4(a1)
    1f40:	c4a60008 	lwc1	$f6,8(a1)
    1f44:	46104282 	mul.s	$f10,$f8,$f16
    1f48:	00000000 	nop
    1f4c:	46045082 	mul.s	$f2,$f10,$f4
    1f50:	00000000 	nop
    1f54:	461a3302 	mul.s	$f12,$f6,$f26
    1f58:	460c1200 	add.s	$f8,$f2,$f12
    1f5c:	460c1281 	sub.s	$f10,$f2,$f12
    1f60:	e6080004 	swc1	$f8,4(s0)
    1f64:	e60a0010 	swc1	$f10,16(s0)
    1f68:	c4a40000 	lwc1	$f4,0(a1)
    1f6c:	c4a80008 	lwc1	$f8,8(a1)
    1f70:	c4aa0004 	lwc1	$f10,4(a1)
    1f74:	46102182 	mul.s	$f6,$f4,$f16
    1f78:	00000000 	nop
    1f7c:	46083082 	mul.s	$f2,$f6,$f8
    1f80:	00000000 	nop
    1f84:	461a5302 	mul.s	$f12,$f10,$f26
    1f88:	460c1101 	sub.s	$f4,$f2,$f12
    1f8c:	460c1180 	add.s	$f6,$f2,$f12
    1f90:	e6040008 	swc1	$f4,8(s0)
    1f94:	e6060020 	swc1	$f6,32(s0)
    1f98:	c4a80004 	lwc1	$f8,4(a1)
    1f9c:	c4a40008 	lwc1	$f4,8(a1)
    1fa0:	c4a60000 	lwc1	$f6,0(a1)
    1fa4:	46104282 	mul.s	$f10,$f8,$f16
    1fa8:	e612003c 	swc1	$f18,60(s0)
    1fac:	e600000c 	swc1	$f0,12(s0)
    1fb0:	e600001c 	swc1	$f0,28(s0)
    1fb4:	e600002c 	swc1	$f0,44(s0)
    1fb8:	e6000030 	swc1	$f0,48(s0)
    1fbc:	e6000034 	swc1	$f0,52(s0)
    1fc0:	46045082 	mul.s	$f2,$f10,$f4
    1fc4:	e6000038 	swc1	$f0,56(s0)
    1fc8:	461a3302 	mul.s	$f12,$f6,$f26
    1fcc:	460c1200 	add.s	$f8,$f2,$f12
    1fd0:	460c1281 	sub.s	$f10,$f2,$f12
    1fd4:	e6080018 	swc1	$f8,24(s0)
    1fd8:	10000014 	b	202c <func_800D23FC+0x440>
    1fdc:	e60a0024 	swc1	$f10,36(s0)
    1fe0:	44800000 	mtc1	zero,$f0
    1fe4:	3c013f80 	lui	at,0x3f80
    1fe8:	44819000 	mtc1	at,$f18
    1fec:	e6000004 	swc1	$f0,4(s0)
    1ff0:	e6000008 	swc1	$f0,8(s0)
    1ff4:	e600000c 	swc1	$f0,12(s0)
    1ff8:	e6000010 	swc1	$f0,16(s0)
    1ffc:	e6000018 	swc1	$f0,24(s0)
    2000:	e600001c 	swc1	$f0,28(s0)
    2004:	e6000020 	swc1	$f0,32(s0)
    2008:	e6000024 	swc1	$f0,36(s0)
    200c:	e600002c 	swc1	$f0,44(s0)
    2010:	e6000030 	swc1	$f0,48(s0)
    2014:	e6000034 	swc1	$f0,52(s0)
    2018:	e6000038 	swc1	$f0,56(s0)
    201c:	e6120000 	swc1	$f18,0(s0)
    2020:	e6120014 	swc1	$f18,20(s0)
    2024:	e6120028 	swc1	$f18,40(s0)
    2028:	e612003c 	swc1	$f18,60(s0)
    202c:	8fbf003c 	lw	ra,60(sp)
    2030:	d7b40018 	ldc1	$f20,24(sp)
    2034:	d7b60020 	ldc1	$f22,32(sp)
    2038:	d7b80028 	ldc1	$f24,40(sp)
    203c:	d7ba0030 	ldc1	$f26,48(sp)
    2040:	8fb00038 	lw	s0,56(sp)
    2044:	03e00008 	jr	ra
    2048:	27bd0040 	addiu	sp,sp,64

0000204c <Matrix_CheckFloats>:
    204c:	27bdff20 	addiu	sp,sp,-224
    2050:	f7b600a0 	sdc1	$f22,160(sp)
    2054:	3c014700 	lui	at,0x4700
    2058:	4481b000 	mtc1	at,$f22
    205c:	afb600c0 	sw	s6,192(sp)
    2060:	afb500bc 	sw	s5,188(sp)
    2064:	f7b40098 	sdc1	$f20,152(sp)
    2068:	3c01c700 	lui	at,0xc700
    206c:	afbe00c8 	sw	s8,200(sp)
    2070:	afb700c4 	sw	s7,196(sp)
    2074:	afb400b8 	sw	s4,184(sp)
    2078:	afb300b4 	sw	s3,180(sp)
    207c:	afb000a8 	sw	s0,168(sp)
    2080:	3c150000 	lui	s5,0x0
    2084:	3c160000 	lui	s6,0x0
    2088:	4481a000 	mtc1	at,$f20
    208c:	00808025 	move	s0,a0
    2090:	00a09825 	move	s3,a1
    2094:	00c0a025 	move	s4,a2
    2098:	afbf00cc 	sw	ra,204(sp)
    209c:	afb200b0 	sw	s2,176(sp)
    20a0:	afb100ac 	sw	s1,172(sp)
    20a4:	26d600cc 	addiu	s6,s6,204
    20a8:	26b5003c 	addiu	s5,s5,60
    20ac:	24170010 	li	s7,16
    20b0:	0000f025 	move	s8,zero
    20b4:	afa400d4 	sw	a0,212(sp)
    20b8:	00008825 	move	s1,zero
    20bc:	8fb200d4 	lw	s2,212(sp)
    20c0:	c6400000 	lwc1	$f0,0(s2)
    20c4:	4600a03e 	c.le.s	$f20,$f0
    20c8:	00000000 	nop
    20cc:	45020006 	bc1fl	20e8 <Matrix_CheckFloats+0x9c>
    20d0:	c6040000 	lwc1	$f4,0(s0)
    20d4:	4616003c 	c.lt.s	$f0,$f22
    20d8:	00000000 	nop
    20dc:	4503003a 	bc1tl	21c8 <Matrix_CheckFloats+0x17c>
    20e0:	26310004 	addiu	s1,s1,4
    20e4:	c6040000 	lwc1	$f4,0(s0)
    20e8:	02a02025 	move	a0,s5
    20ec:	02602825 	move	a1,s3
    20f0:	460021a1 	cvt.d.s	$f6,$f4
    20f4:	02803025 	move	a2,s4
    20f8:	f7a60010 	sdc1	$f6,16(sp)
    20fc:	c6080010 	lwc1	$f8,16(s0)
    2100:	02c03825 	move	a3,s6
    2104:	460042a1 	cvt.d.s	$f10,$f8
    2108:	f7aa0018 	sdc1	$f10,24(sp)
    210c:	c6100020 	lwc1	$f16,32(s0)
    2110:	460084a1 	cvt.d.s	$f18,$f16
    2114:	f7b20020 	sdc1	$f18,32(sp)
    2118:	c6040030 	lwc1	$f4,48(s0)
    211c:	460021a1 	cvt.d.s	$f6,$f4
    2120:	f7a60028 	sdc1	$f6,40(sp)
    2124:	c6080004 	lwc1	$f8,4(s0)
    2128:	460042a1 	cvt.d.s	$f10,$f8
    212c:	f7aa0030 	sdc1	$f10,48(sp)
    2130:	c6100014 	lwc1	$f16,20(s0)
    2134:	460084a1 	cvt.d.s	$f18,$f16
    2138:	f7b20038 	sdc1	$f18,56(sp)
    213c:	c6040024 	lwc1	$f4,36(s0)
    2140:	460021a1 	cvt.d.s	$f6,$f4
    2144:	f7a60040 	sdc1	$f6,64(sp)
    2148:	c6080034 	lwc1	$f8,52(s0)
    214c:	460042a1 	cvt.d.s	$f10,$f8
    2150:	f7aa0048 	sdc1	$f10,72(sp)
    2154:	c6100008 	lwc1	$f16,8(s0)
    2158:	460084a1 	cvt.d.s	$f18,$f16
    215c:	f7b20050 	sdc1	$f18,80(sp)
    2160:	c6040018 	lwc1	$f4,24(s0)
    2164:	460021a1 	cvt.d.s	$f6,$f4
    2168:	f7a60058 	sdc1	$f6,88(sp)
    216c:	c6080028 	lwc1	$f8,40(s0)
    2170:	460042a1 	cvt.d.s	$f10,$f8
    2174:	f7aa0060 	sdc1	$f10,96(sp)
    2178:	c6100038 	lwc1	$f16,56(s0)
    217c:	460084a1 	cvt.d.s	$f18,$f16
    2180:	f7b20068 	sdc1	$f18,104(sp)
    2184:	c604000c 	lwc1	$f4,12(s0)
    2188:	460021a1 	cvt.d.s	$f6,$f4
    218c:	f7a60070 	sdc1	$f6,112(sp)
    2190:	c608001c 	lwc1	$f8,28(s0)
    2194:	460042a1 	cvt.d.s	$f10,$f8
    2198:	f7aa0078 	sdc1	$f10,120(sp)
    219c:	c610002c 	lwc1	$f16,44(s0)
    21a0:	460084a1 	cvt.d.s	$f18,$f16
    21a4:	f7b20080 	sdc1	$f18,128(sp)
    21a8:	c604003c 	lwc1	$f4,60(s0)
    21ac:	460021a1 	cvt.d.s	$f6,$f4
    21b0:	0c000000 	jal	0 <Matrix_Init>
    21b4:	f7a60088 	sdc1	$f6,136(sp)
    21b8:	02602025 	move	a0,s3
    21bc:	0c000000 	jal	0 <Matrix_Init>
    21c0:	02802825 	move	a1,s4
    21c4:	26310004 	addiu	s1,s1,4
    21c8:	1637ffbd 	bne	s1,s7,20c0 <Matrix_CheckFloats+0x74>
    21cc:	26520004 	addiu	s2,s2,4
    21d0:	8fae00d4 	lw	t6,212(sp)
    21d4:	27de0001 	addiu	s8,s8,1
    21d8:	24010004 	li	at,4
    21dc:	25cf0010 	addiu	t7,t6,16
    21e0:	17c1ffb5 	bne	s8,at,20b8 <Matrix_CheckFloats+0x6c>
    21e4:	afaf00d4 	sw	t7,212(sp)
    21e8:	8fbf00cc 	lw	ra,204(sp)
    21ec:	02001025 	move	v0,s0
    21f0:	8fb000a8 	lw	s0,168(sp)
    21f4:	d7b40098 	ldc1	$f20,152(sp)
    21f8:	d7b600a0 	ldc1	$f22,160(sp)
    21fc:	8fb100ac 	lw	s1,172(sp)
    2200:	8fb200b0 	lw	s2,176(sp)
    2204:	8fb300b4 	lw	s3,180(sp)
    2208:	8fb400b8 	lw	s4,184(sp)
    220c:	8fb500bc 	lw	s5,188(sp)
    2210:	8fb600c0 	lw	s6,192(sp)
    2214:	8fb700c4 	lw	s7,196(sp)
    2218:	8fbe00c8 	lw	s8,200(sp)
    221c:	03e00008 	jr	ra
    2220:	27bd00e0 	addiu	sp,sp,224

00002224 <func_800D2A34>:
    2224:	afa7000c 	sw	a3,12(sp)
    2228:	44800000 	mtc1	zero,$f0
    222c:	44856000 	mtc1	a1,$f12
    2230:	44867000 	mtc1	a2,$f14
    2234:	e4800004 	swc1	$f0,4(a0)
    2238:	e4800008 	swc1	$f0,8(a0)
    223c:	e480000c 	swc1	$f0,12(a0)
    2240:	e4800010 	swc1	$f0,16(a0)
    2244:	e4800018 	swc1	$f0,24(a0)
    2248:	e480001c 	swc1	$f0,28(a0)
    224c:	e4800020 	swc1	$f0,32(a0)
    2250:	e4800024 	swc1	$f0,36(a0)
    2254:	e480002c 	swc1	$f0,44(a0)
    2258:	e48c0000 	swc1	$f12,0(a0)
    225c:	e48c0014 	swc1	$f12,20(a0)
    2260:	e48c0028 	swc1	$f12,40(a0)
    2264:	e48e0030 	swc1	$f14,48(a0)
    2268:	c7a4000c 	lwc1	$f4,12(sp)
    226c:	3c013f80 	lui	at,0x3f80
    2270:	44814000 	mtc1	at,$f8
    2274:	e4840034 	swc1	$f4,52(a0)
    2278:	c7a60010 	lwc1	$f6,16(sp)
    227c:	e488003c 	swc1	$f8,60(a0)
    2280:	03e00008 	jr	ra
    2284:	e4860038 	swc1	$f6,56(a0)

00002288 <func_800D2A98>:
    2288:	27bdffa0 	addiu	sp,sp,-96
    228c:	44856000 	mtc1	a1,$f12
    2290:	44867000 	mtc1	a2,$f14
    2294:	c7a40070 	lwc1	$f4,112(sp)
    2298:	afbf001c 	sw	ra,28(sp)
    229c:	afa40060 	sw	a0,96(sp)
    22a0:	44056000 	mfc1	a1,$f12
    22a4:	44067000 	mfc1	a2,$f14
    22a8:	afa7006c 	sw	a3,108(sp)
    22ac:	27a40020 	addiu	a0,sp,32
    22b0:	0c000000 	jal	0 <Matrix_Init>
    22b4:	e7a40010 	swc1	$f4,16(sp)
    22b8:	27a40020 	addiu	a0,sp,32
    22bc:	0c000000 	jal	0 <Matrix_Init>
    22c0:	8fa50060 	lw	a1,96(sp)
    22c4:	8fbf001c 	lw	ra,28(sp)
    22c8:	27bd0060 	addiu	sp,sp,96
    22cc:	03e00008 	jr	ra
    22d0:	00000000 	nop

000022d4 <func_800D2AE4>:
    22d4:	3c014780 	lui	at,0x4780
    22d8:	44810000 	mtc1	at,$f0
    22dc:	44856000 	mtc1	a1,$f12
    22e0:	44867000 	mtc1	a2,$f14
    22e4:	afa7000c 	sw	a3,12(sp)
    22e8:	46006102 	mul.s	$f4,$f12,$f0
    22ec:	00000000 	nop
    22f0:	46007202 	mul.s	$f8,$f14,$f0
    22f4:	4600218d 	trunc.w.s	$f6,$f4
    22f8:	4600428d 	trunc.w.s	$f10,$f8
    22fc:	44033000 	mfc1	v1,$f6
    2300:	44095000 	mfc1	t1,$f10
    2304:	00032c02 	srl	a1,v1,0x10
    2308:	a4850000 	sh	a1,0(a0)
    230c:	0009cc02 	srl	t9,t1,0x10
    2310:	a485000a 	sh	a1,10(a0)
    2314:	a4850014 	sh	a1,20(a0)
    2318:	a4990018 	sh	t9,24(a0)
    231c:	a4830020 	sh	v1,32(a0)
    2320:	a483002a 	sh	v1,42(a0)
    2324:	a4830034 	sh	v1,52(a0)
    2328:	a4890038 	sh	t1,56(a0)
    232c:	c7b0000c 	lwc1	$f16,12(sp)
    2330:	24090001 	li	t1,1
    2334:	46008482 	mul.s	$f18,$f16,$f0
    2338:	4600910d 	trunc.w.s	$f4,$f18
    233c:	440d2000 	mfc1	t5,$f4
    2340:	00000000 	nop
    2344:	000d6402 	srl	t4,t5,0x10
    2348:	a48c001a 	sh	t4,26(a0)
    234c:	a48d003a 	sh	t5,58(a0)
    2350:	c7a60010 	lwc1	$f6,16(sp)
    2354:	a4800002 	sh	zero,2(a0)
    2358:	a4800004 	sh	zero,4(a0)
    235c:	46003202 	mul.s	$f8,$f6,$f0
    2360:	a4800006 	sh	zero,6(a0)
    2364:	a4800008 	sh	zero,8(a0)
    2368:	a480000c 	sh	zero,12(a0)
    236c:	a480000e 	sh	zero,14(a0)
    2370:	a4800010 	sh	zero,16(a0)
    2374:	a4800012 	sh	zero,18(a0)
    2378:	4600428d 	trunc.w.s	$f10,$f8
    237c:	a4800016 	sh	zero,22(a0)
    2380:	a489001e 	sh	t1,30(a0)
    2384:	a4800022 	sh	zero,34(a0)
    2388:	44195000 	mfc1	t9,$f10
    238c:	a4800024 	sh	zero,36(a0)
    2390:	a4800026 	sh	zero,38(a0)
    2394:	0019c402 	srl	t8,t9,0x10
    2398:	a498001c 	sh	t8,28(a0)
    239c:	a4800028 	sh	zero,40(a0)
    23a0:	a480002c 	sh	zero,44(a0)
    23a4:	a480002e 	sh	zero,46(a0)
    23a8:	a4800030 	sh	zero,48(a0)
    23ac:	a4800032 	sh	zero,50(a0)
    23b0:	a4800036 	sh	zero,54(a0)
    23b4:	a480003e 	sh	zero,62(a0)
    23b8:	03e00008 	jr	ra
    23bc:	a499003c 	sh	t9,60(a0)

000023c0 <func_800D2BD0>:
    23c0:	3c014780 	lui	at,0x4780
    23c4:	44810000 	mtc1	at,$f0
    23c8:	44856000 	mtc1	a1,$f12
    23cc:	44867000 	mtc1	a2,$f14
    23d0:	afa7000c 	sw	a3,12(sp)
    23d4:	46006102 	mul.s	$f4,$f12,$f0
    23d8:	00000000 	nop
    23dc:	46007202 	mul.s	$f8,$f14,$f0
    23e0:	4600218d 	trunc.w.s	$f6,$f4
    23e4:	4600428d 	trunc.w.s	$f10,$f8
    23e8:	44193000 	mfc1	t9,$f6
    23ec:	440c5000 	mfc1	t4,$f10
    23f0:	0019c402 	srl	t8,t9,0x10
    23f4:	a4980000 	sh	t8,0(a0)
    23f8:	000c5c02 	srl	t3,t4,0x10
    23fc:	a48b000a 	sh	t3,10(a0)
    2400:	a4990020 	sh	t9,32(a0)
    2404:	a48c002a 	sh	t4,42(a0)
    2408:	c7b0000c 	lwc1	$f16,12(sp)
    240c:	46008482 	mul.s	$f18,$f16,$f0
    2410:	4600910d 	trunc.w.s	$f4,$f18
    2414:	44182000 	mfc1	t8,$f4
    2418:	00000000 	nop
    241c:	00187c02 	srl	t7,t8,0x10
    2420:	a48f0014 	sh	t7,20(a0)
    2424:	a4980034 	sh	t8,52(a0)
    2428:	c7a60010 	lwc1	$f6,16(sp)
    242c:	46003202 	mul.s	$f8,$f6,$f0
    2430:	4600428d 	trunc.w.s	$f10,$f8
    2434:	440b5000 	mfc1	t3,$f10
    2438:	00000000 	nop
    243c:	000b5402 	srl	t2,t3,0x10
    2440:	a48a0018 	sh	t2,24(a0)
    2444:	a48b0038 	sh	t3,56(a0)
    2448:	c7b00014 	lwc1	$f16,20(sp)
    244c:	240b0001 	li	t3,1
    2450:	46008482 	mul.s	$f18,$f16,$f0
    2454:	4600910d 	trunc.w.s	$f4,$f18
    2458:	440f2000 	mfc1	t7,$f4
    245c:	00000000 	nop
    2460:	000f7402 	srl	t6,t7,0x10
    2464:	a48e001a 	sh	t6,26(a0)
    2468:	a48f003a 	sh	t7,58(a0)
    246c:	c7a60018 	lwc1	$f6,24(sp)
    2470:	a4800002 	sh	zero,2(a0)
    2474:	a4800004 	sh	zero,4(a0)
    2478:	46003202 	mul.s	$f8,$f6,$f0
    247c:	a4800006 	sh	zero,6(a0)
    2480:	a4800008 	sh	zero,8(a0)
    2484:	a480000c 	sh	zero,12(a0)
    2488:	a480000e 	sh	zero,14(a0)
    248c:	a4800010 	sh	zero,16(a0)
    2490:	a4800012 	sh	zero,18(a0)
    2494:	4600428d 	trunc.w.s	$f10,$f8
    2498:	a4800016 	sh	zero,22(a0)
    249c:	a48b001e 	sh	t3,30(a0)
    24a0:	a4800022 	sh	zero,34(a0)
    24a4:	440a5000 	mfc1	t2,$f10
    24a8:	a4800024 	sh	zero,36(a0)
    24ac:	a4800026 	sh	zero,38(a0)
    24b0:	000a4c02 	srl	t1,t2,0x10
    24b4:	a489001c 	sh	t1,28(a0)
    24b8:	a4800028 	sh	zero,40(a0)
    24bc:	a480002c 	sh	zero,44(a0)
    24c0:	a480002e 	sh	zero,46(a0)
    24c4:	a4800030 	sh	zero,48(a0)
    24c8:	a4800032 	sh	zero,50(a0)
    24cc:	a4800036 	sh	zero,54(a0)
    24d0:	a480003e 	sh	zero,62(a0)
    24d4:	03e00008 	jr	ra
    24d8:	a48a003c 	sh	t2,60(a0)

000024dc <func_800D2CEC>:
    24dc:	3c014780 	lui	at,0x4780
    24e0:	44810000 	mtc1	at,$f0
    24e4:	44856000 	mtc1	a1,$f12
    24e8:	44867000 	mtc1	a2,$f14
    24ec:	afa7000c 	sw	a3,12(sp)
    24f0:	46006102 	mul.s	$f4,$f12,$f0
    24f4:	ac800004 	sw	zero,4(a0)
    24f8:	ac800024 	sw	zero,36(a0)
    24fc:	46007202 	mul.s	$f8,$f14,$f0
    2500:	ac80000c 	sw	zero,12(a0)
    2504:	ac80002c 	sw	zero,44(a0)
    2508:	ac800010 	sw	zero,16(a0)
    250c:	4600218d 	trunc.w.s	$f6,$f4
    2510:	4600428d 	trunc.w.s	$f10,$f8
    2514:	44023000 	mfc1	v0,$f6
    2518:	44035000 	mfc1	v1,$f10
    251c:	ac820000 	sw	v0,0(a0)
    2520:	00027c00 	sll	t7,v0,0x10
    2524:	0003cc02 	srl	t9,v1,0x10
    2528:	3069ffff 	andi	t1,v1,0xffff
    252c:	a4800002 	sh	zero,2(a0)
    2530:	ac8f0020 	sw	t7,32(a0)
    2534:	ac990008 	sw	t9,8(a0)
    2538:	ac890028 	sw	t1,40(a0)
    253c:	c7b0000c 	lwc1	$f16,12(sp)
    2540:	ac800030 	sw	zero,48(a0)
    2544:	46008482 	mul.s	$f18,$f16,$f0
    2548:	4600910d 	trunc.w.s	$f4,$f18
    254c:	44052000 	mfc1	a1,$f4
    2550:	00000000 	nop
    2554:	ac850014 	sw	a1,20(a0)
    2558:	00055c00 	sll	t3,a1,0x10
    255c:	a4800016 	sh	zero,22(a0)
    2560:	ac8b0034 	sw	t3,52(a0)
    2564:	c7a60010 	lwc1	$f6,16(sp)
    2568:	46003202 	mul.s	$f8,$f6,$f0
    256c:	4600428d 	trunc.w.s	$f10,$f8
    2570:	440f5000 	mfc1	t7,$f10
    2574:	00000000 	nop
    2578:	000f7402 	srl	t6,t7,0x10
    257c:	a48e0018 	sh	t6,24(a0)
    2580:	a48f0038 	sh	t7,56(a0)
    2584:	c7b00014 	lwc1	$f16,20(sp)
    2588:	240e0001 	li	t6,1
    258c:	46008482 	mul.s	$f18,$f16,$f0
    2590:	4600910d 	trunc.w.s	$f4,$f18
    2594:	440a2000 	mfc1	t2,$f4
    2598:	00000000 	nop
    259c:	000a4c02 	srl	t1,t2,0x10
    25a0:	a489001a 	sh	t1,26(a0)
    25a4:	a48a003a 	sh	t2,58(a0)
    25a8:	c7a60018 	lwc1	$f6,24(sp)
    25ac:	a48e001e 	sh	t6,30(a0)
    25b0:	46003202 	mul.s	$f8,$f6,$f0
    25b4:	4600428d 	trunc.w.s	$f10,$f8
    25b8:	44085000 	mfc1	t0,$f10
    25bc:	00000000 	nop
    25c0:	00086c02 	srl	t5,t0,0x10
    25c4:	00087c00 	sll	t7,t0,0x10
    25c8:	a48d001c 	sh	t5,28(a0)
    25cc:	03e00008 	jr	ra
    25d0:	ac8f003c 	sw	t7,60(a0)
	...
