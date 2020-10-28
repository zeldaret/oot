
build/src/overlays/actors/ovl_En_Ny/z_en_ny.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnNy_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afa50034 	sw	a1,52(sp)
       8:	afbf0024 	sw	ra,36(sp)
       c:	afb00020 	sw	s0,32(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnNy_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	3c0e0000 	lui	t6,0x0
      24:	25ce0000 	addiu	t6,t6,0
      28:	240f0002 	li	t7,2
      2c:	ae0e0098 	sw	t6,152(s0)
      30:	a20f00af 	sb	t7,175(s0)
      34:	26050150 	addiu	a1,s0,336
      38:	afa50028 	sw	a1,40(sp)
      3c:	0c000000 	jal	0 <EnNy_Init>
      40:	8fa40034 	lw	a0,52(sp)
      44:	3c070000 	lui	a3,0x0
      48:	26180170 	addiu	t8,s0,368
      4c:	8fa50028 	lw	a1,40(sp)
      50:	afb80010 	sw	t8,16(sp)
      54:	24e70000 	addiu	a3,a3,0
      58:	8fa40034 	lw	a0,52(sp)
      5c:	0c000000 	jal	0 <EnNy_Init>
      60:	02003025 	move	a2,s0
      64:	3c060000 	lui	a2,0x0
      68:	24c60000 	addiu	a2,a2,0
      6c:	260400b4 	addiu	a0,s0,180
      70:	24050000 	li	a1,0
      74:	0c000000 	jal	0 <EnNy_Init>
      78:	3c0741a0 	lui	a3,0x41a0
      7c:	3c053c23 	lui	a1,0x3c23
      80:	a60001ca 	sh	zero,458(s0)
      84:	a20001d0 	sb	zero,464(s0)
      88:	34a5d70a 	ori	a1,a1,0xd70a
      8c:	0c000000 	jal	0 <EnNy_Init>
      90:	02002025 	move	a0,s0
      94:	44800000 	mtc1	zero,$f0
      98:	a60000b6 	sh	zero,182(s0)
      9c:	3c010000 	lui	at,0x0
      a0:	e6000068 	swc1	$f0,104(s0)
      a4:	c4240000 	lwc1	$f4,0(at)
      a8:	8605001c 	lh	a1,28(s0)
      ac:	3c013e80 	lui	at,0x3e80
      b0:	44813000 	mtc1	at,$f6
      b4:	24190002 	li	t9,2
      b8:	240800ff 	li	t0,255
      bc:	a60001cc 	sh	zero,460(s0)
      c0:	a61901ce 	sh	t9,462(s0)
      c4:	ae0801d4 	sw	t0,468(s0)
      c8:	ae0001d8 	sw	zero,472(s0)
      cc:	e6000060 	swc1	$f0,96(s0)
      d0:	e60001e8 	swc1	$f0,488(s0)
      d4:	e604006c 	swc1	$f4,108(s0)
      d8:	14a0000f 	bnez	a1,118 <EnNy_Init+0x118>
      dc:	e60601e0 	swc1	$f6,480(s0)
      e0:	3c040000 	lui	a0,0x0
      e4:	0c000000 	jal	0 <EnNy_Init>
      e8:	24840000 	addiu	a0,a0,0
      ec:	3c013f80 	lui	at,0x3f80
      f0:	44814000 	mtc1	at,$f8
      f4:	240900ff 	li	t1,255
      f8:	a20000ae 	sb	zero,174(s0)
      fc:	ae0001d4 	sw	zero,468(s0)
     100:	ae0901d8 	sw	t1,472(s0)
     104:	02002025 	move	a0,s0
     108:	0c000000 	jal	0 <EnNy_Init>
     10c:	e60801e0 	swc1	$f8,480(s0)
     110:	10000011 	b	158 <EnNy_Init+0x158>
     114:	8fbf0024 	lw	ra,36(sp)
     118:	3c040000 	lui	a0,0x0
     11c:	0c000000 	jal	0 <EnNy_Init>
     120:	24840000 	addiu	a0,a0,0
     124:	3c050000 	lui	a1,0x0
     128:	24a50000 	addiu	a1,a1,0
     12c:	3c040000 	lui	a0,0x0
     130:	24840000 	addiu	a0,a0,0
     134:	0c000000 	jal	0 <EnNy_Init>
     138:	afa50028 	sw	a1,40(sp)
     13c:	8fa50028 	lw	a1,40(sp)
     140:	240a00ff 	li	t2,255
     144:	240b0009 	li	t3,9
     148:	a20a00ae 	sb	t2,174(s0)
     14c:	a20b0164 	sb	t3,356(s0)
     150:	ae050130 	sw	a1,304(s0)
     154:	8fbf0024 	lw	ra,36(sp)
     158:	8fb00020 	lw	s0,32(sp)
     15c:	27bd0030 	addiu	sp,sp,48
     160:	03e00008 	jr	ra
     164:	00000000 	nop

00000168 <EnNy_Destroy>:
     168:	27bdffe8 	addiu	sp,sp,-24
     16c:	00803025 	move	a2,a0
     170:	afbf0014 	sw	ra,20(sp)
     174:	00a02025 	move	a0,a1
     178:	0c000000 	jal	0 <EnNy_Init>
     17c:	24c50150 	addiu	a1,a2,336
     180:	8fbf0014 	lw	ra,20(sp)
     184:	27bd0018 	addiu	sp,sp,24
     188:	03e00008 	jr	ra
     18c:	00000000 	nop

00000190 <func_80ABCD40>:
     190:	44802000 	mtc1	zero,$f4
     194:	c4860084 	lwc1	$f6,132(a0)
     198:	3c013f80 	lui	at,0x3f80
     19c:	4606203c 	c.lt.s	$f4,$f6
     1a0:	00000000 	nop
     1a4:	45020005 	bc1fl	1bc <func_80ABCD40+0x2c>
     1a8:	44810000 	mtc1	at,$f0
     1ac:	3c010000 	lui	at,0x0
     1b0:	10000003 	b	1c0 <func_80ABCD40+0x30>
     1b4:	c4200000 	lwc1	$f0,0(at)
     1b8:	44810000 	mtc1	at,$f0
     1bc:	00000000 	nop
     1c0:	3c010000 	lui	at,0x0
     1c4:	c4280000 	lwc1	$f8,0(at)
     1c8:	46004282 	mul.s	$f10,$f8,$f0
     1cc:	03e00008 	jr	ra
     1d0:	e48a01e8 	swc1	$f10,488(a0)

000001d4 <func_80ABCD84>:
     1d4:	3c0e0000 	lui	t6,0x0
     1d8:	25ce0000 	addiu	t6,t6,0
     1dc:	03e00008 	jr	ra
     1e0:	ac8e014c 	sw	t6,332(a0)

000001e4 <func_80ABCD94>:
     1e4:	3c0f0000 	lui	t7,0x0
     1e8:	240e0014 	li	t6,20
     1ec:	25ef0000 	addiu	t7,t7,0
     1f0:	ac8e01dc 	sw	t6,476(a0)
     1f4:	03e00008 	jr	ra
     1f8:	ac8f014c 	sw	t7,332(a0)

000001fc <func_80ABCDAC>:
     1fc:	3c0e0000 	lui	t6,0x0
     200:	25ce0000 	addiu	t6,t6,0
     204:	03e00008 	jr	ra
     208:	ac8e014c 	sw	t6,332(a0)

0000020c <func_80ABCDBC>:
     20c:	44802000 	mtc1	zero,$f4
     210:	27bdffe8 	addiu	sp,sp,-24
     214:	afbf0014 	sw	ra,20(sp)
     218:	e48401f4 	swc1	$f4,500(a0)
     21c:	0c000000 	jal	0 <EnNy_Init>
     220:	afa40018 	sw	a0,24(sp)
     224:	8fa40018 	lw	a0,24(sp)
     228:	3c0f0000 	lui	t7,0x0
     22c:	240e00b4 	li	t6,180
     230:	25ef0000 	addiu	t7,t7,0
     234:	ac8e01dc 	sw	t6,476(a0)
     238:	ac8f014c 	sw	t7,332(a0)
     23c:	8fbf0014 	lw	ra,20(sp)
     240:	27bd0018 	addiu	sp,sp,24
     244:	03e00008 	jr	ra
     248:	00000000 	nop

0000024c <func_80ABCDFC>:
     24c:	27bdffe8 	addiu	sp,sp,-24
     250:	afbf0014 	sw	ra,20(sp)
     254:	afa40018 	sw	a0,24(sp)
     258:	0c000000 	jal	0 <EnNy_Init>
     25c:	240538ea 	li	a1,14570
     260:	8fa40018 	lw	a0,24(sp)
     264:	44802000 	mtc1	zero,$f4
     268:	3c0e0000 	lui	t6,0x0
     26c:	25ce0000 	addiu	t6,t6,0
     270:	ac8e014c 	sw	t6,332(a0)
     274:	e48401e8 	swc1	$f4,488(a0)
     278:	8fbf0014 	lw	ra,20(sp)
     27c:	27bd0018 	addiu	sp,sp,24
     280:	03e00008 	jr	ra
     284:	00000000 	nop

00000288 <func_80ABCE38>:
     288:	3c0f0000 	lui	t7,0x0
     28c:	240e003c 	li	t6,60
     290:	25ef0000 	addiu	t7,t7,0
     294:	ac8e01dc 	sw	t6,476(a0)
     298:	03e00008 	jr	ra
     29c:	ac8f014c 	sw	t7,332(a0)

000002a0 <func_80ABCE50>:
     2a0:	27bdffe8 	addiu	sp,sp,-24
     2a4:	afbf0014 	sw	ra,20(sp)
     2a8:	afa5001c 	sw	a1,28(sp)
     2ac:	3c0146c8 	lui	at,0x46c8
     2b0:	44812000 	mtc1	at,$f4
     2b4:	c486008c 	lwc1	$f6,140(a0)
     2b8:	4604303e 	c.le.s	$f6,$f4
     2bc:	00000000 	nop
     2c0:	45020004 	bc1fl	2d4 <func_80ABCE50+0x34>
     2c4:	8fbf0014 	lw	ra,20(sp)
     2c8:	0c000000 	jal	0 <EnNy_Init>
     2cc:	00000000 	nop
     2d0:	8fbf0014 	lw	ra,20(sp)
     2d4:	27bd0018 	addiu	sp,sp,24
     2d8:	03e00008 	jr	ra
     2dc:	00000000 	nop

000002e0 <func_80ABCE90>:
     2e0:	27bdffe0 	addiu	sp,sp,-32
     2e4:	afbf0014 	sw	ra,20(sp)
     2e8:	afa50024 	sw	a1,36(sp)
     2ec:	8c8201d8 	lw	v0,472(a0)
     2f0:	8c8301d4 	lw	v1,468(a0)
     2f4:	24420040 	addiu	v0,v0,64
     2f8:	284100ff 	slti	at,v0,255
     2fc:	14200009 	bnez	at,324 <func_80ABCE90+0x44>
     300:	2463ffc0 	addiu	v1,v1,-64
     304:	240200ff 	li	v0,255
     308:	afa20018 	sw	v0,24(sp)
     30c:	afa0001c 	sw	zero,28(sp)
     310:	0c000000 	jal	0 <EnNy_Init>
     314:	afa40020 	sw	a0,32(sp)
     318:	8fa20018 	lw	v0,24(sp)
     31c:	8fa3001c 	lw	v1,28(sp)
     320:	8fa40020 	lw	a0,32(sp)
     324:	ac8301d4 	sw	v1,468(a0)
     328:	ac8201d8 	sw	v0,472(a0)
     32c:	8fbf0014 	lw	ra,20(sp)
     330:	27bd0020 	addiu	sp,sp,32
     334:	03e00008 	jr	ra
     338:	00000000 	nop

0000033c <func_80ABCEEC>:
     33c:	27bdffe0 	addiu	sp,sp,-32
     340:	3c013f80 	lui	at,0x3f80
     344:	44811000 	mtc1	at,$f2
     348:	afbf0014 	sw	ra,20(sp)
     34c:	afa50024 	sw	a1,36(sp)
     350:	3c014000 	lui	at,0x4000
     354:	c48001e0 	lwc1	$f0,480(a0)
     358:	44812000 	mtc1	at,$f4
     35c:	00000000 	nop
     360:	46040000 	add.s	$f0,$f0,$f4
     364:	4600103e 	c.le.s	$f2,$f0
     368:	00000000 	nop
     36c:	45020007 	bc1fl	38c <func_80ABCEEC+0x50>
     370:	e48001e0 	swc1	$f0,480(a0)
     374:	afa40020 	sw	a0,32(sp)
     378:	0c000000 	jal	0 <EnNy_Init>
     37c:	e7a2001c 	swc1	$f2,28(sp)
     380:	8fa40020 	lw	a0,32(sp)
     384:	c7a0001c 	lwc1	$f0,28(sp)
     388:	e48001e0 	swc1	$f0,480(a0)
     38c:	8fbf0014 	lw	ra,20(sp)
     390:	27bd0020 	addiu	sp,sp,32
     394:	03e00008 	jr	ra
     398:	00000000 	nop

0000039c <func_80ABCF4C>:
     39c:	27bdffd0 	addiu	sp,sp,-48
     3a0:	afbf0024 	sw	ra,36(sp)
     3a4:	afb00020 	sw	s0,32(sp)
     3a8:	afa50034 	sw	a1,52(sp)
     3ac:	c4860084 	lwc1	$f6,132(a0)
     3b0:	c48401f0 	lwc1	$f4,496(a0)
     3b4:	00808025 	move	s0,a0
     3b8:	4606203c 	c.lt.s	$f4,$f6
     3bc:	00000000 	nop
     3c0:	45010003 	bc1t	3d0 <func_80ABCF4C+0x34>
     3c4:	00000000 	nop
     3c8:	0c000000 	jal	0 <EnNy_Init>
     3cc:	240530e9 	li	a1,12521
     3d0:	0c000000 	jal	0 <EnNy_Init>
     3d4:	02002025 	move	a0,s0
     3d8:	8e0201dc 	lw	v0,476(s0)
     3dc:	244effff 	addiu	t6,v0,-1
     3e0:	18400004 	blez	v0,3f4 <func_80ABCF4C+0x58>
     3e4:	ae0e01dc 	sw	t6,476(s0)
     3e8:	860f01cc 	lh	t7,460(s0)
     3ec:	51e00006 	beqzl	t7,408 <func_80ABCF4C+0x6c>
     3f0:	c60801f4 	lwc1	$f8,500(s0)
     3f4:	0c000000 	jal	0 <EnNy_Init>
     3f8:	02002025 	move	a0,s0
     3fc:	10000027 	b	49c <func_80ABCF4C+0x100>
     400:	8fbf0024 	lw	ra,36(sp)
     404:	c60801f4 	lwc1	$f8,500(s0)
     408:	8605008a 	lh	a1,138(s0)
     40c:	afa00010 	sw	zero,16(sp)
     410:	4600428d 	trunc.w.s	$f10,$f8
     414:	260400b6 	addiu	a0,s0,182
     418:	2406000a 	li	a2,10
     41c:	44075000 	mfc1	a3,$f10
     420:	00000000 	nop
     424:	00073c00 	sll	a3,a3,0x10
     428:	0c000000 	jal	0 <EnNy_Init>
     42c:	00073c03 	sra	a3,a3,0x10
     430:	260401f4 	addiu	a0,s0,500
     434:	3c0544fa 	lui	a1,0x44fa
     438:	3c063f80 	lui	a2,0x3f80
     43c:	0c000000 	jal	0 <EnNy_Init>
     440:	3c0742c8 	lui	a3,0x42c8
     444:	861900b6 	lh	t9,182(s0)
     448:	c60c0094 	lwc1	$f12,148(s0)
     44c:	c60e0090 	lwc1	$f14,144(s0)
     450:	0c000000 	jal	0 <EnNy_Init>
     454:	a6190032 	sh	t9,50(s0)
     458:	e7a0002c 	swc1	$f0,44(sp)
     45c:	0c000000 	jal	0 <EnNy_Init>
     460:	46000306 	mov.s	$f12,$f0
     464:	c61001e8 	lwc1	$f16,488(s0)
     468:	c61201f0 	lwc1	$f18,496(s0)
     46c:	c6040084 	lwc1	$f4,132(s0)
     470:	46100002 	mul.s	$f0,$f0,$f16
     474:	4604903c 	c.lt.s	$f18,$f4
     478:	46000005 	abs.s	$f0,$f0
     47c:	45000006 	bc1f	498 <func_80ABCF4C+0xfc>
     480:	e6000068 	swc1	$f0,104(s0)
     484:	0c000000 	jal	0 <EnNy_Init>
     488:	c7ac002c 	lwc1	$f12,44(sp)
     48c:	c60601e8 	lwc1	$f6,488(s0)
     490:	46060202 	mul.s	$f8,$f0,$f6
     494:	e60801ec 	swc1	$f8,492(s0)
     498:	8fbf0024 	lw	ra,36(sp)
     49c:	8fb00020 	lw	s0,32(sp)
     4a0:	27bd0030 	addiu	sp,sp,48
     4a4:	03e00008 	jr	ra
     4a8:	00000000 	nop

000004ac <func_80ABD05C>:
     4ac:	27bdffe0 	addiu	sp,sp,-32
     4b0:	3c013e80 	lui	at,0x3e80
     4b4:	44811000 	mtc1	at,$f2
     4b8:	afbf0014 	sw	ra,20(sp)
     4bc:	afa50024 	sw	a1,36(sp)
     4c0:	3c014000 	lui	at,0x4000
     4c4:	c48001e0 	lwc1	$f0,480(a0)
     4c8:	44812000 	mtc1	at,$f4
     4cc:	00000000 	nop
     4d0:	46040001 	sub.s	$f0,$f0,$f4
     4d4:	4602003e 	c.le.s	$f0,$f2
     4d8:	00000000 	nop
     4dc:	4502001f 	bc1fl	55c <func_80ABD05C+0xb0>
     4e0:	e48001e0 	swc1	$f0,480(a0)
     4e4:	94820088 	lhu	v0,136(a0)
     4e8:	46001006 	mov.s	$f0,$f2
     4ec:	304e0002 	andi	t6,v0,0x2
     4f0:	51c0001a 	beqzl	t6,55c <func_80ABD05C+0xb0>
     4f4:	e48001e0 	swc1	$f0,480(a0)
     4f8:	c48601f0 	lwc1	$f6,496(a0)
     4fc:	c4880084 	lwc1	$f8,132(a0)
     500:	2405387b 	li	a1,14459
     504:	4608303c 	c.lt.s	$f6,$f8
     508:	00000000 	nop
     50c:	45030008 	bc1tl	530 <func_80ABD05C+0x84>
     510:	44805000 	mtc1	zero,$f10
     514:	afa40020 	sw	a0,32(sp)
     518:	0c000000 	jal	0 <EnNy_Init>
     51c:	e7a0001c 	swc1	$f0,28(sp)
     520:	8fa40020 	lw	a0,32(sp)
     524:	c7a0001c 	lwc1	$f0,28(sp)
     528:	94820088 	lhu	v0,136(a0)
     52c:	44805000 	mtc1	zero,$f10
     530:	849800b6 	lh	t8,182(a0)
     534:	304ffffd 	andi	t7,v0,0xfffd
     538:	a48f0088 	sh	t7,136(a0)
     53c:	e48a0068 	swc1	$f10,104(a0)
     540:	a4980032 	sh	t8,50(a0)
     544:	e7a0001c 	swc1	$f0,28(sp)
     548:	0c000000 	jal	0 <EnNy_Init>
     54c:	afa40020 	sw	a0,32(sp)
     550:	8fa40020 	lw	a0,32(sp)
     554:	c7a0001c 	lwc1	$f0,28(sp)
     558:	e48001e0 	swc1	$f0,480(a0)
     55c:	8fbf0014 	lw	ra,20(sp)
     560:	27bd0020 	addiu	sp,sp,32
     564:	03e00008 	jr	ra
     568:	00000000 	nop

0000056c <func_80ABD11C>:
     56c:	27bdffe0 	addiu	sp,sp,-32
     570:	afbf0014 	sw	ra,20(sp)
     574:	afa50024 	sw	a1,36(sp)
     578:	8c8201d4 	lw	v0,468(a0)
     57c:	8c8301d8 	lw	v1,472(a0)
     580:	24420040 	addiu	v0,v0,64
     584:	284100ff 	slti	at,v0,255
     588:	1420000f 	bnez	at,5c8 <func_80ABD11C+0x5c>
     58c:	2463ffc0 	addiu	v1,v1,-64
     590:	8c8501dc 	lw	a1,476(a0)
     594:	240200ff 	li	v0,255
     598:	00001825 	move	v1,zero
     59c:	10a00003 	beqz	a1,5ac <func_80ABD11C+0x40>
     5a0:	24aeffff 	addiu	t6,a1,-1
     5a4:	10000008 	b	5c8 <func_80ABD11C+0x5c>
     5a8:	ac8e01dc 	sw	t6,476(a0)
     5ac:	afa2001c 	sw	v0,28(sp)
     5b0:	afa30018 	sw	v1,24(sp)
     5b4:	0c000000 	jal	0 <EnNy_Init>
     5b8:	afa40020 	sw	a0,32(sp)
     5bc:	8fa2001c 	lw	v0,28(sp)
     5c0:	8fa30018 	lw	v1,24(sp)
     5c4:	8fa40020 	lw	a0,32(sp)
     5c8:	ac8201d4 	sw	v0,468(a0)
     5cc:	ac8301d8 	sw	v1,472(a0)
     5d0:	8fbf0014 	lw	ra,20(sp)
     5d4:	27bd0020 	addiu	sp,sp,32
     5d8:	03e00008 	jr	ra
     5dc:	00000000 	nop

000005e0 <func_80ABD190>:
     5e0:	27bdffc0 	addiu	sp,sp,-64
     5e4:	afbf0024 	sw	ra,36(sp)
     5e8:	afb00020 	sw	s0,32(sp)
     5ec:	afa50044 	sw	a1,68(sp)
     5f0:	a3a0003f 	sb	zero,63(sp)
     5f4:	90830160 	lbu	v1,352(a0)
     5f8:	00808025 	move	s0,a0
     5fc:	a48001cc 	sh	zero,460(a0)
     600:	306e0004 	andi	t6,v1,0x4
     604:	11c0000c 	beqz	t6,638 <func_80ABD190+0x58>
     608:	30680002 	andi	t0,v1,0x2
     60c:	3c01c080 	lui	at,0xc080
     610:	8499008a 	lh	t9,138(a0)
     614:	44812000 	mtc1	at,$f4
     618:	306ffffb 	andi	t7,v1,0xfffb
     61c:	24180001 	li	t8,1
     620:	a08f0160 	sb	t7,352(a0)
     624:	a49801cc 	sh	t8,460(a0)
     628:	00001025 	move	v0,zero
     62c:	a4990032 	sh	t9,50(a0)
     630:	10000070 	b	7f4 <func_80ABD190+0x214>
     634:	e4840068 	swc1	$f4,104(a0)
     638:	11000006 	beqz	t0,654 <func_80ABD190+0x74>
     63c:	3069fffd 	andi	t1,v1,0xfffd
     640:	240a0001 	li	t2,1
     644:	a2090160 	sb	t1,352(s0)
     648:	a60a01cc 	sh	t2,460(s0)
     64c:	10000069 	b	7f4 <func_80ABD190+0x214>
     650:	00001025 	move	v0,zero
     654:	92020161 	lbu	v0,353(s0)
     658:	304b0002 	andi	t3,v0,0x2
     65c:	51600065 	beqzl	t3,7f4 <func_80ABD190+0x214>
     660:	00001025 	move	v0,zero
     664:	8e0d016c 	lw	t5,364(s0)
     668:	304cfffd 	andi	t4,v0,0xfffd
     66c:	a20c0161 	sb	t4,353(s0)
     670:	85ae000e 	lh	t6,14(t5)
     674:	3c013e80 	lui	at,0x3e80
     678:	448e3000 	mtc1	t6,$f6
     67c:	00000000 	nop
     680:	46803220 	cvt.s.w	$f8,$f6
     684:	44813000 	mtc1	at,$f6
     688:	e7a80030 	swc1	$f8,48(sp)
     68c:	8e0f016c 	lw	t7,364(s0)
     690:	85f80010 	lh	t8,16(t7)
     694:	44985000 	mtc1	t8,$f10
     698:	00000000 	nop
     69c:	46805420 	cvt.s.w	$f16,$f10
     6a0:	e7b00034 	swc1	$f16,52(sp)
     6a4:	8e19016c 	lw	t9,364(s0)
     6a8:	87280012 	lh	t0,18(t9)
     6ac:	44889000 	mtc1	t0,$f18
     6b0:	00000000 	nop
     6b4:	46809120 	cvt.s.w	$f4,$f18
     6b8:	e7a40038 	swc1	$f4,56(sp)
     6bc:	c60801e0 	lwc1	$f8,480(s0)
     6c0:	46083032 	c.eq.s	$f6,$f8
     6c4:	00000000 	nop
     6c8:	45020035 	bc1fl	7a0 <func_80ABD190+0x1c0>
     6cc:	920f00af 	lbu	t7,175(s0)
     6d0:	8e0901d4 	lw	t1,468(s0)
     6d4:	240100ff 	li	at,255
     6d8:	55210031 	bnel	t1,at,7a0 <func_80ABD190+0x1c0>
     6dc:	920f00af 	lbu	t7,175(s0)
     6e0:	920200b1 	lbu	v0,177(s0)
     6e4:	24010001 	li	at,1
     6e8:	10410017 	beq	v0,at,748 <func_80ABD190+0x168>
     6ec:	24010002 	li	at,2
     6f0:	10410020 	beq	v0,at,774 <func_80ABD190+0x194>
     6f4:	240d0004 	li	t5,4
     6f8:	2401000e 	li	at,14
     6fc:	10410006 	beq	v0,at,718 <func_80ABD190+0x138>
     700:	240a0001 	li	t2,1
     704:	2401000f 	li	at,15
     708:	10410004 	beq	v0,at,71c <func_80ABD190+0x13c>
     70c:	00000000 	nop
     710:	10000023 	b	7a0 <func_80ABD190+0x1c0>
     714:	920f00af 	lbu	t7,175(s0)
     718:	a3aa003f 	sb	t2,63(sp)
     71c:	0c000000 	jal	0 <EnNy_Init>
     720:	02002025 	move	a0,s0
     724:	240b0050 	li	t3,80
     728:	afab0010 	sw	t3,16(sp)
     72c:	02002025 	move	a0,s0
     730:	24054000 	li	a1,16384
     734:	240600ff 	li	a2,255
     738:	0c000000 	jal	0 <EnNy_Init>
     73c:	24072000 	li	a3,8192
     740:	10000017 	b	7a0 <func_80ABD190+0x1c0>
     744:	920f00af 	lbu	t7,175(s0)
     748:	0c000000 	jal	0 <EnNy_Init>
     74c:	02002025 	move	a0,s0
     750:	240c0050 	li	t4,80
     754:	afac0010 	sw	t4,16(sp)
     758:	02002025 	move	a0,s0
     75c:	24054000 	li	a1,16384
     760:	240600ff 	li	a2,255
     764:	0c000000 	jal	0 <EnNy_Init>
     768:	24072000 	li	a3,8192
     76c:	1000000c 	b	7a0 <func_80ABD190+0x1c0>
     770:	920f00af 	lbu	t7,175(s0)
     774:	a60d01ca 	sh	t5,458(s0)
     778:	0c000000 	jal	0 <EnNy_Init>
     77c:	02002025 	move	a0,s0
     780:	240e0050 	li	t6,80
     784:	afae0010 	sw	t6,16(sp)
     788:	02002025 	move	a0,s0
     78c:	24054000 	li	a1,16384
     790:	240600ff 	li	a2,255
     794:	0c000000 	jal	0 <EnNy_Init>
     798:	24072000 	li	a3,8192
     79c:	920f00af 	lbu	t7,175(s0)
     7a0:	ae0001dc 	sw	zero,476(s0)
     7a4:	8fa40044 	lw	a0,68(sp)
     7a8:	15e0000d 	bnez	t7,7e0 <func_80ABD190+0x200>
     7ac:	00002825 	move	a1,zero
     7b0:	8e180004 	lw	t8,4(s0)
     7b4:	2401fffe 	li	at,-2
     7b8:	a20000c8 	sb	zero,200(s0)
     7bc:	0301c824 	and	t9,t8,at
     7c0:	ae190004 	sw	t9,4(s0)
     7c4:	93a8003f 	lbu	t0,63(sp)
     7c8:	02002825 	move	a1,s0
     7cc:	a20801d0 	sb	t0,464(s0)
     7d0:	0c000000 	jal	0 <EnNy_Init>
     7d4:	8fa40044 	lw	a0,68(sp)
     7d8:	10000006 	b	7f4 <func_80ABD190+0x214>
     7dc:	24020001 	li	v0,1
     7e0:	0c000000 	jal	0 <EnNy_Init>
     7e4:	27a60030 	addiu	a2,sp,48
     7e8:	10000002 	b	7f4 <func_80ABD190+0x214>
     7ec:	00001025 	move	v0,zero
     7f0:	00001025 	move	v0,zero
     7f4:	8fbf0024 	lw	ra,36(sp)
     7f8:	8fb00020 	lw	s0,32(sp)
     7fc:	27bd0040 	addiu	sp,sp,64
     800:	03e00008 	jr	ra
     804:	00000000 	nop

00000808 <func_80ABD3B8>:
     808:	44802000 	mtc1	zero,$f4
     80c:	c48601e8 	lwc1	$f6,488(a0)
     810:	44856000 	mtc1	a1,$f12
     814:	44867000 	mtc1	a2,$f14
     818:	46062032 	c.eq.s	$f4,$f6
     81c:	3c010000 	lui	at,0x0
     820:	45020005 	bc1fl	838 <func_80ABD3B8+0x30>
     824:	c4800084 	lwc1	$f0,132(a0)
     828:	c4280000 	lwc1	$f8,0(at)
     82c:	03e00008 	jr	ra
     830:	e488006c 	swc1	$f8,108(a0)
     834:	c4800084 	lwc1	$f0,132(a0)
     838:	3c010000 	lui	at,0x0
     83c:	4600603c 	c.lt.s	$f12,$f0
     840:	00000000 	nop
     844:	45030005 	bc1tl	85c <func_80ABD3B8+0x54>
     848:	4600703c 	c.lt.s	$f14,$f0
     84c:	c42a0000 	lwc1	$f10,0(at)
     850:	03e00008 	jr	ra
     854:	e48a006c 	swc1	$f10,108(a0)
     858:	4600703c 	c.lt.s	$f14,$f0
     85c:	00000000 	nop
     860:	45000020 	bc1f	8e4 <func_80ABD3B8+0xdc>
     864:	00000000 	nop
     868:	c48001ec 	lwc1	$f0,492(a0)
     86c:	c4820060 	lwc1	$f2,96(a0)
     870:	44808000 	mtc1	zero,$f16
     874:	3c010000 	lui	at,0x0
     878:	4602003c 	c.lt.s	$f0,$f2
     87c:	e490006c 	swc1	$f16,108(a0)
     880:	4502000c 	bc1fl	8b4 <func_80ABD3B8+0xac>
     884:	4600103c 	c.lt.s	$f2,$f0
     888:	c4320000 	lwc1	$f18,0(at)
     88c:	46121101 	sub.s	$f4,$f2,$f18
     890:	e4840060 	swc1	$f4,96(a0)
     894:	c4860060 	lwc1	$f6,96(a0)
     898:	4600303c 	c.lt.s	$f6,$f0
     89c:	00000000 	nop
     8a0:	45000010 	bc1f	8e4 <func_80ABD3B8+0xdc>
     8a4:	00000000 	nop
     8a8:	03e00008 	jr	ra
     8ac:	e4800060 	swc1	$f0,96(a0)
     8b0:	4600103c 	c.lt.s	$f2,$f0
     8b4:	3c010000 	lui	at,0x0
     8b8:	4500000a 	bc1f	8e4 <func_80ABD3B8+0xdc>
     8bc:	00000000 	nop
     8c0:	c4280000 	lwc1	$f8,0(at)
     8c4:	46081280 	add.s	$f10,$f2,$f8
     8c8:	e48a0060 	swc1	$f10,96(a0)
     8cc:	c4900060 	lwc1	$f16,96(a0)
     8d0:	4610003c 	c.lt.s	$f0,$f16
     8d4:	00000000 	nop
     8d8:	45000002 	bc1f	8e4 <func_80ABD3B8+0xdc>
     8dc:	00000000 	nop
     8e0:	e4800060 	swc1	$f0,96(a0)
     8e4:	03e00008 	jr	ra
     8e8:	00000000 	nop

000008ec <EnNy_Update>:
     8ec:	27bdffc0 	addiu	sp,sp,-64
     8f0:	afbf003c 	sw	ra,60(sp)
     8f4:	afb30038 	sw	s3,56(sp)
     8f8:	afb20034 	sw	s2,52(sp)
     8fc:	afb10030 	sw	s1,48(sp)
     900:	afb0002c 	sw	s0,44(sp)
     904:	f7b60020 	sdc1	$f22,32(sp)
     908:	f7b40018 	sdc1	$f20,24(sp)
     90c:	848e01c8 	lh	t6,456(a0)
     910:	848201ca 	lh	v0,458(a0)
     914:	3c013e80 	lui	at,0x3e80
     918:	44813000 	mtc1	at,$f6
     91c:	c48401e0 	lwc1	$f4,480(a0)
     920:	25cf0001 	addiu	t7,t6,1
     924:	00a08025 	move	s0,a1
     928:	00809025 	move	s2,a0
     92c:	a48f01c8 	sh	t7,456(a0)
     930:	10400003 	beqz	v0,940 <EnNy_Update+0x54>
     934:	46062501 	sub.s	$f20,$f4,$f6
     938:	2458ffff 	addiu	t8,v0,-1
     93c:	a49801ca 	sh	t8,458(a0)
     940:	02402025 	move	a0,s2
     944:	0c000000 	jal	0 <EnNy_Init>
     948:	24050000 	li	a1,0
     94c:	3c053c23 	lui	a1,0x3c23
     950:	34a5d70a 	ori	a1,a1,0xd70a
     954:	0c000000 	jal	0 <EnNy_Init>
     958:	02402025 	move	a0,s2
     95c:	3c014120 	lui	at,0x4120
     960:	44810000 	mtc1	at,$f0
     964:	3c010000 	lui	at,0x0
     968:	c4280000 	lwc1	$f8,0(at)
     96c:	3c013f80 	lui	at,0x3f80
     970:	44818000 	mtc1	at,$f16
     974:	46144282 	mul.s	$f10,$f8,$f20
     978:	8e59016c 	lw	t9,364(s2)
     97c:	3c01447a 	lui	at,0x447a
     980:	44813000 	mtc1	at,$f6
     984:	3c0141c0 	lui	at,0x41c0
     988:	02402025 	move	a0,s2
     98c:	46105480 	add.s	$f18,$f10,$f16
     990:	44818000 	mtc1	at,$f16
     994:	3c014140 	lui	at,0x4140
     998:	e7320038 	swc1	$f18,56(t9)
     99c:	c64401e8 	lwc1	$f4,488(s2)
     9a0:	864c00b4 	lh	t4,180(s2)
     9a4:	46062202 	mul.s	$f8,$f4,$f6
     9a8:	44812000 	mtc1	at,$f4
     9ac:	46148482 	mul.s	$f18,$f16,$f20
     9b0:	4600428d 	trunc.w.s	$f10,$f8
     9b4:	46049580 	add.s	$f22,$f18,$f4
     9b8:	440b5000 	mfc1	t3,$f10
     9bc:	4600b180 	add.s	$f6,$f22,$f0
     9c0:	018b6821 	addu	t5,t4,t3
     9c4:	a64d00b4 	sh	t5,180(s2)
     9c8:	4600b201 	sub.s	$f8,$f22,$f0
     9cc:	44053000 	mfc1	a1,$f6
     9d0:	44064000 	mfc1	a2,$f8
     9d4:	0c000000 	jal	0 <EnNy_Init>
     9d8:	00000000 	nop
     9dc:	0c000000 	jal	0 <EnNy_Init>
     9e0:	02402025 	move	a0,s2
     9e4:	3c063dcc 	lui	a2,0x3dcc
     9e8:	34c6cccd 	ori	a2,a2,0xcccd
     9ec:	264401e4 	addiu	a0,s2,484
     9f0:	0c000000 	jal	0 <EnNy_Init>
     9f4:	8e4501e8 	lw	a1,488(s2)
     9f8:	8e59014c 	lw	t9,332(s2)
     9fc:	02402025 	move	a0,s2
     a00:	02002825 	move	a1,s0
     a04:	0320f809 	jalr	t9
     a08:	00000000 	nop
     a0c:	c64a0104 	lwc1	$f10,260(s2)
     a10:	c6520028 	lwc1	$f18,40(s2)
     a14:	3c0141a0 	lui	at,0x41a0
     a18:	4481a000 	mtc1	at,$f20
     a1c:	46165401 	sub.s	$f16,$f10,$f22
     a20:	3c014270 	lui	at,0x4270
     a24:	44813000 	mtc1	at,$f6
     a28:	46169101 	sub.s	$f4,$f18,$f22
     a2c:	e6500104 	swc1	$f16,260(s2)
     a30:	240e0007 	li	t6,7
     a34:	4406a000 	mfc1	a2,$f20
     a38:	e6440028 	swc1	$f4,40(s2)
     a3c:	4407a000 	mfc1	a3,$f20
     a40:	afae0014 	sw	t6,20(sp)
     a44:	02002025 	move	a0,s0
     a48:	02402825 	move	a1,s2
     a4c:	0c000000 	jal	0 <EnNy_Init>
     a50:	e7a60010 	swc1	$f6,16(sp)
     a54:	c6480028 	lwc1	$f8,40(s2)
     a58:	e65601f0 	swc1	$f22,496(s2)
     a5c:	02402025 	move	a0,s2
     a60:	46164280 	add.s	$f10,$f8,$f22
     a64:	02002825 	move	a1,s0
     a68:	0c000000 	jal	0 <EnNy_Init>
     a6c:	e64a0028 	swc1	$f10,40(s2)
     a70:	10400021 	beqz	v0,af8 <EnNy_Update+0x20c>
     a74:	3c013e80 	lui	at,0x3e80
     a78:	00008825 	move	s1,zero
     a7c:	02408025 	move	s0,s2
     a80:	24130008 	li	s3,8
     a84:	0c000000 	jal	0 <EnNy_Init>
     a88:	4600a306 	mov.s	$f12,$f20
     a8c:	c6500024 	lwc1	$f16,36(s2)
     a90:	4600a306 	mov.s	$f12,$f20
     a94:	46100480 	add.s	$f18,$f0,$f16
     a98:	0c000000 	jal	0 <EnNy_Init>
     a9c:	e61201f8 	swc1	$f18,504(s0)
     aa0:	c6440028 	lwc1	$f4,40(s2)
     aa4:	4600a306 	mov.s	$f12,$f20
     aa8:	46040180 	add.s	$f6,$f0,$f4
     aac:	0c000000 	jal	0 <EnNy_Init>
     ab0:	e60601fc 	swc1	$f6,508(s0)
     ab4:	c648002c 	lwc1	$f8,44(s2)
     ab8:	26310001 	addiu	s1,s1,1
     abc:	2610000c 	addiu	s0,s0,12
     ac0:	46080280 	add.s	$f10,$f0,$f8
     ac4:	1633ffef 	bne	s1,s3,a84 <EnNy_Update+0x198>
     ac8:	e60a01f4 	swc1	$f10,500(s0)
     acc:	3c0f0000 	lui	t7,0x0
     ad0:	3c180000 	lui	t8,0x0
     ad4:	3c080000 	lui	t0,0x0
     ad8:	25ef0000 	addiu	t7,t7,0
     adc:	27180000 	addiu	t8,t8,0
     ae0:	25080000 	addiu	t0,t0,0
     ae4:	a64001c8 	sh	zero,456(s2)
     ae8:	ae4f0130 	sw	t7,304(s2)
     aec:	ae580134 	sw	t8,308(s2)
     af0:	10000018 	b	b54 <EnNy_Update+0x268>
     af4:	ae48014c 	sw	t0,332(s2)
     af8:	44818000 	mtc1	at,$f16
     afc:	c65201e0 	lwc1	$f18,480(s2)
     b00:	3c010001 	lui	at,0x1
     b04:	34211e60 	ori	at,at,0x1e60
     b08:	4612803c 	c.lt.s	$f16,$f18
     b0c:	02012821 	addu	a1,s0,at
     b10:	02002025 	move	a0,s0
     b14:	45020004 	bc1fl	b28 <EnNy_Update+0x23c>
     b18:	3c010001 	lui	at,0x1
     b1c:	0c000000 	jal	0 <EnNy_Init>
     b20:	26460150 	addiu	a2,s2,336
     b24:	3c010001 	lui	at,0x1
     b28:	34211e60 	ori	at,at,0x1e60
     b2c:	02018821 	addu	s1,s0,at
     b30:	26530150 	addiu	s3,s2,336
     b34:	02603025 	move	a2,s3
     b38:	02202825 	move	a1,s1
     b3c:	0c000000 	jal	0 <EnNy_Init>
     b40:	02002025 	move	a0,s0
     b44:	02002025 	move	a0,s0
     b48:	02202825 	move	a1,s1
     b4c:	0c000000 	jal	0 <EnNy_Init>
     b50:	02603025 	move	a2,s3
     b54:	8fbf003c 	lw	ra,60(sp)
     b58:	d7b40018 	ldc1	$f20,24(sp)
     b5c:	d7b60020 	ldc1	$f22,32(sp)
     b60:	8fb0002c 	lw	s0,44(sp)
     b64:	8fb10030 	lw	s1,48(sp)
     b68:	8fb20034 	lw	s2,52(sp)
     b6c:	8fb30038 	lw	s3,56(sp)
     b70:	03e00008 	jr	ra
     b74:	27bd0040 	addiu	sp,sp,64

00000b78 <func_80ABD728>:
     b78:	27bdff78 	addiu	sp,sp,-136
     b7c:	3c0e0000 	lui	t6,0x0
     b80:	afbf0054 	sw	ra,84(sp)
     b84:	afb50050 	sw	s5,80(sp)
     b88:	afb4004c 	sw	s4,76(sp)
     b8c:	afb30048 	sw	s3,72(sp)
     b90:	afb20044 	sw	s2,68(sp)
     b94:	afb10040 	sw	s1,64(sp)
     b98:	afb0003c 	sw	s0,60(sp)
     b9c:	f7b80030 	sdc1	$f24,48(sp)
     ba0:	f7b60028 	sdc1	$f22,40(sp)
     ba4:	f7b40020 	sdc1	$f20,32(sp)
     ba8:	25ce0000 	addiu	t6,t6,0
     bac:	8dd80000 	lw	t8,0(t6)
     bb0:	27b30068 	addiu	s3,sp,104
     bb4:	3c190000 	lui	t9,0x0
     bb8:	ae780000 	sw	t8,0(s3)
     bbc:	8dcf0004 	lw	t7,4(t6)
     bc0:	27390000 	addiu	t9,t9,0
     bc4:	27b4005c 	addiu	s4,sp,92
     bc8:	ae6f0004 	sw	t7,4(s3)
     bcc:	8dd80008 	lw	t8,8(t6)
     bd0:	00809025 	move	s2,a0
     bd4:	00a0a825 	move	s5,a1
     bd8:	ae780008 	sw	t8,8(s3)
     bdc:	8f290000 	lw	t1,0(t9)
     be0:	ae890000 	sw	t1,0(s4)
     be4:	8f280004 	lw	t0,4(t9)
     be8:	ae880004 	sw	t0,4(s4)
     bec:	8f290008 	lw	t1,8(t9)
     bf0:	ae890008 	sw	t1,8(s4)
     bf4:	848a01c8 	lh	t2,456(a0)
     bf8:	29410002 	slti	at,t2,2
     bfc:	54200074 	bnezl	at,dd0 <func_80ABD728+0x258>
     c00:	8fbf0054 	lw	ra,84(sp)
     c04:	44802000 	mtc1	zero,$f4
     c08:	c4860084 	lwc1	$f6,132(a0)
     c0c:	00008825 	move	s1,zero
     c10:	3c0141f0 	lui	at,0x41f0
     c14:	4606203c 	c.lt.s	$f4,$f6
     c18:	00000000 	nop
     c1c:	45020044 	bc1fl	d30 <func_80ABD728+0x1b8>
     c20:	3c014120 	lui	at,0x4120
     c24:	4481a000 	mtc1	at,$f20
     c28:	27b00074 	addiu	s0,sp,116
     c2c:	0c000000 	jal	0 <EnNy_Init>
     c30:	4600a306 	mov.s	$f12,$f20
     c34:	c6480024 	lwc1	$f8,36(s2)
     c38:	4600a306 	mov.s	$f12,$f20
     c3c:	46080280 	add.s	$f10,$f0,$f8
     c40:	0c000000 	jal	0 <EnNy_Init>
     c44:	e7aa0074 	swc1	$f10,116(sp)
     c48:	c6500028 	lwc1	$f16,40(s2)
     c4c:	4600a306 	mov.s	$f12,$f20
     c50:	46100480 	add.s	$f18,$f0,$f16
     c54:	0c000000 	jal	0 <EnNy_Init>
     c58:	e7b20078 	swc1	$f18,120(sp)
     c5c:	c644002c 	lwc1	$f4,44(s2)
     c60:	24040050 	li	a0,80
     c64:	24050064 	li	a1,100
     c68:	46040180 	add.s	$f6,$f0,$f4
     c6c:	0c000000 	jal	0 <EnNy_Init>
     c70:	e7a6007c 	swc1	$f6,124(sp)
     c74:	240b0019 	li	t3,25
     c78:	240c0001 	li	t4,1
     c7c:	afac001c 	sw	t4,28(sp)
     c80:	afab0014 	sw	t3,20(sp)
     c84:	02a02025 	move	a0,s5
     c88:	02002825 	move	a1,s0
     c8c:	02603025 	move	a2,s3
     c90:	02803825 	move	a3,s4
     c94:	afa20010 	sw	v0,16(sp)
     c98:	0c000000 	jal	0 <EnNy_Init>
     c9c:	afa00018 	sw	zero,24(sp)
     ca0:	26310001 	addiu	s1,s1,1
     ca4:	2a21000a 	slti	at,s1,10
     ca8:	1420ffe0 	bnez	at,c2c <func_80ABD728+0xb4>
     cac:	00000000 	nop
     cb0:	3c013e80 	lui	at,0x3e80
     cb4:	4481c000 	mtc1	at,$f24
     cb8:	3c014120 	lui	at,0x4120
     cbc:	4481b000 	mtc1	at,$f22
     cc0:	00008825 	move	s1,zero
     cc4:	24130014 	li	s3,20
     cc8:	0c000000 	jal	0 <EnNy_Init>
     ccc:	4600a306 	mov.s	$f12,$f20
     cd0:	c6480024 	lwc1	$f8,36(s2)
     cd4:	4600a306 	mov.s	$f12,$f20
     cd8:	46080280 	add.s	$f10,$f0,$f8
     cdc:	0c000000 	jal	0 <EnNy_Init>
     ce0:	e7aa0074 	swc1	$f10,116(sp)
     ce4:	c6500028 	lwc1	$f16,40(s2)
     ce8:	4600a306 	mov.s	$f12,$f20
     cec:	46100480 	add.s	$f18,$f0,$f16
     cf0:	0c000000 	jal	0 <EnNy_Init>
     cf4:	e7b20078 	swc1	$f18,120(sp)
     cf8:	c644002c 	lwc1	$f4,44(s2)
     cfc:	4406b000 	mfc1	a2,$f22
     d00:	4407b000 	mfc1	a3,$f22
     d04:	46040180 	add.s	$f6,$f0,$f4
     d08:	e7b80014 	swc1	$f24,20(sp)
     d0c:	e7b40010 	swc1	$f20,16(sp)
     d10:	02a02025 	move	a0,s5
     d14:	e7a6007c 	swc1	$f6,124(sp)
     d18:	0c000000 	jal	0 <EnNy_Init>
     d1c:	02002825 	move	a1,s0
     d20:	26310001 	addiu	s1,s1,1
     d24:	1633ffe8 	bne	s1,s3,cc8 <func_80ABD728+0x150>
     d28:	00000000 	nop
     d2c:	3c014120 	lui	at,0x4120
     d30:	4481b000 	mtc1	at,$f22
     d34:	3c014080 	lui	at,0x4080
     d38:	4481a000 	mtc1	at,$f20
     d3c:	00008825 	move	s1,zero
     d40:	02408025 	move	s0,s2
     d44:	24130008 	li	s3,8
     d48:	0c000000 	jal	0 <EnNy_Init>
     d4c:	4600b306 	mov.s	$f12,$f22
     d50:	e6000258 	swc1	$f0,600(s0)
     d54:	0c000000 	jal	0 <EnNy_Init>
     d58:	4600b306 	mov.s	$f12,$f22
     d5c:	e6000260 	swc1	$f0,608(s0)
     d60:	0c000000 	jal	0 <EnNy_Init>
     d64:	4600a306 	mov.s	$f12,$f20
     d68:	46140200 	add.s	$f8,$f0,$f20
     d6c:	26310001 	addiu	s1,s1,1
     d70:	2610000c 	addiu	s0,s0,12
     d74:	1633fff4 	bne	s1,s3,d48 <func_80ABD728+0x1d0>
     d78:	e6080250 	swc1	$f8,592(s0)
     d7c:	924d01d0 	lbu	t5,464(s2)
     d80:	a64001c8 	sh	zero,456(s2)
     d84:	02a02025 	move	a0,s5
     d88:	15a00008 	bnez	t5,dac <func_80ABD728+0x234>
     d8c:	26450024 	addiu	a1,s2,36
     d90:	02a02025 	move	a0,s5
     d94:	02402825 	move	a1,s2
     d98:	26460024 	addiu	a2,s2,36
     d9c:	0c000000 	jal	0 <EnNy_Init>
     da0:	240700a0 	li	a3,160
     da4:	10000004 	b	db8 <func_80ABD728+0x240>
     da8:	02402025 	move	a0,s2
     dac:	0c000000 	jal	0 <EnNy_Init>
     db0:	24060008 	li	a2,8
     db4:	02402025 	move	a0,s2
     db8:	0c000000 	jal	0 <EnNy_Init>
     dbc:	2405394b 	li	a1,14667
     dc0:	3c0e0000 	lui	t6,0x0
     dc4:	25ce0000 	addiu	t6,t6,0
     dc8:	ae4e014c 	sw	t6,332(s2)
     dcc:	8fbf0054 	lw	ra,84(sp)
     dd0:	d7b40020 	ldc1	$f20,32(sp)
     dd4:	d7b60028 	ldc1	$f22,40(sp)
     dd8:	d7b80030 	ldc1	$f24,48(sp)
     ddc:	8fb0003c 	lw	s0,60(sp)
     de0:	8fb10040 	lw	s1,64(sp)
     de4:	8fb20044 	lw	s2,68(sp)
     de8:	8fb30048 	lw	s3,72(sp)
     dec:	8fb4004c 	lw	s4,76(sp)
     df0:	8fb50050 	lw	s5,80(sp)
     df4:	03e00008 	jr	ra
     df8:	27bd0088 	addiu	sp,sp,136

00000dfc <func_80ABD9AC>:
     dfc:	27bdffa8 	addiu	sp,sp,-88
     e00:	f7b40018 	sdc1	$f20,24(sp)
     e04:	afbf0054 	sw	ra,84(sp)
     e08:	afb60050 	sw	s6,80(sp)
     e0c:	afb5004c 	sw	s5,76(sp)
     e10:	afb40048 	sw	s4,72(sp)
     e14:	afb30044 	sw	s3,68(sp)
     e18:	afb20040 	sw	s2,64(sp)
     e1c:	afb1003c 	sw	s1,60(sp)
     e20:	afb00038 	sw	s0,56(sp)
     e24:	f7ba0030 	sdc1	$f26,48(sp)
     e28:	f7b80028 	sdc1	$f24,40(sp)
     e2c:	f7b60020 	sdc1	$f22,32(sp)
     e30:	afa5005c 	sw	a1,92(sp)
     e34:	4480a000 	mtc1	zero,$f20
     e38:	c4840084 	lwc1	$f4,132(a0)
     e3c:	0080b025 	move	s6,a0
     e40:	02c08025 	move	s0,s6
     e44:	4604a03c 	c.lt.s	$f20,$f4
     e48:	26d20258 	addiu	s2,s6,600
     e4c:	26d3025c 	addiu	s3,s6,604
     e50:	26d40260 	addiu	s4,s6,608
     e54:	45000033 	bc1f	f24 <func_80ABD9AC+0x128>
     e58:	00008825 	move	s1,zero
     e5c:	3c010000 	lui	at,0x0
     e60:	c43a0000 	lwc1	$f26,0(at)
     e64:	3c01bf80 	lui	at,0xbf80
     e68:	4481c000 	mtc1	at,$f24
     e6c:	3c010000 	lui	at,0x0
     e70:	c4360000 	lwc1	$f22,0(at)
     e74:	00008825 	move	s1,zero
     e78:	00808025 	move	s0,a0
     e7c:	24920258 	addiu	s2,a0,600
     e80:	2493025c 	addiu	s3,a0,604
     e84:	24940260 	addiu	s4,a0,608
     e88:	24150060 	li	s5,96
     e8c:	c60601f8 	lwc1	$f6,504(s0)
     e90:	c6080258 	lwc1	$f8,600(s0)
     e94:	c61001fc 	lwc1	$f16,508(s0)
     e98:	c612025c 	lwc1	$f18,604(s0)
     e9c:	46083280 	add.s	$f10,$f6,$f8
     ea0:	c6080260 	lwc1	$f8,608(s0)
     ea4:	c6060200 	lwc1	$f6,512(s0)
     ea8:	46128100 	add.s	$f4,$f16,$f18
     eac:	e60a01f8 	swc1	$f10,504(s0)
     eb0:	4405a000 	mfc1	a1,$f20
     eb4:	46083280 	add.s	$f10,$f6,$f8
     eb8:	4406b000 	mfc1	a2,$f22
     ebc:	e60401fc 	swc1	$f4,508(s0)
     ec0:	02402025 	move	a0,s2
     ec4:	0c000000 	jal	0 <EnNy_Init>
     ec8:	e60a0200 	swc1	$f10,512(s0)
     ecc:	4405c000 	mfc1	a1,$f24
     ed0:	4406d000 	mfc1	a2,$f26
     ed4:	0c000000 	jal	0 <EnNy_Init>
     ed8:	02602025 	move	a0,s3
     edc:	4405a000 	mfc1	a1,$f20
     ee0:	4406b000 	mfc1	a2,$f22
     ee4:	0c000000 	jal	0 <EnNy_Init>
     ee8:	02802025 	move	a0,s4
     eec:	2631000c 	addiu	s1,s1,12
     ef0:	2610000c 	addiu	s0,s0,12
     ef4:	2652000c 	addiu	s2,s2,12
     ef8:	2673000c 	addiu	s3,s3,12
     efc:	1635ffe3 	bne	s1,s5,e8c <func_80ABD9AC+0x90>
     f00:	2694000c 	addiu	s4,s4,12
     f04:	86ce01c8 	lh	t6,456(s6)
     f08:	29c1001f 	slti	at,t6,31
     f0c:	54200031 	bnezl	at,fd4 <func_80ABD9AC+0x1d8>
     f10:	8fbf0054 	lw	ra,84(sp)
     f14:	0c000000 	jal	0 <EnNy_Init>
     f18:	02c02025 	move	a0,s6
     f1c:	1000002d 	b	fd4 <func_80ABD9AC+0x1d8>
     f20:	8fbf0054 	lw	ra,84(sp)
     f24:	3c010000 	lui	at,0x0
     f28:	c43a0000 	lwc1	$f26,0(at)
     f2c:	3c01bf80 	lui	at,0xbf80
     f30:	4481c000 	mtc1	at,$f24
     f34:	3c010000 	lui	at,0x0
     f38:	c4360000 	lwc1	$f22,0(at)
     f3c:	24150060 	li	s5,96
     f40:	c61001f8 	lwc1	$f16,504(s0)
     f44:	c6120258 	lwc1	$f18,600(s0)
     f48:	c60601fc 	lwc1	$f6,508(s0)
     f4c:	c608025c 	lwc1	$f8,604(s0)
     f50:	46128100 	add.s	$f4,$f16,$f18
     f54:	c6120260 	lwc1	$f18,608(s0)
     f58:	c6100200 	lwc1	$f16,512(s0)
     f5c:	46083280 	add.s	$f10,$f6,$f8
     f60:	e60401f8 	swc1	$f4,504(s0)
     f64:	4405a000 	mfc1	a1,$f20
     f68:	46128100 	add.s	$f4,$f16,$f18
     f6c:	4406b000 	mfc1	a2,$f22
     f70:	e60a01fc 	swc1	$f10,508(s0)
     f74:	02402025 	move	a0,s2
     f78:	0c000000 	jal	0 <EnNy_Init>
     f7c:	e6040200 	swc1	$f4,512(s0)
     f80:	4405c000 	mfc1	a1,$f24
     f84:	4406d000 	mfc1	a2,$f26
     f88:	0c000000 	jal	0 <EnNy_Init>
     f8c:	02602025 	move	a0,s3
     f90:	4405a000 	mfc1	a1,$f20
     f94:	4406b000 	mfc1	a2,$f22
     f98:	0c000000 	jal	0 <EnNy_Init>
     f9c:	02802025 	move	a0,s4
     fa0:	2631000c 	addiu	s1,s1,12
     fa4:	2610000c 	addiu	s0,s0,12
     fa8:	2652000c 	addiu	s2,s2,12
     fac:	2673000c 	addiu	s3,s3,12
     fb0:	1635ffe3 	bne	s1,s5,f40 <func_80ABD9AC+0x144>
     fb4:	2694000c 	addiu	s4,s4,12
     fb8:	86cf01c8 	lh	t7,456(s6)
     fbc:	29e10010 	slti	at,t7,16
     fc0:	54200004 	bnezl	at,fd4 <func_80ABD9AC+0x1d8>
     fc4:	8fbf0054 	lw	ra,84(sp)
     fc8:	0c000000 	jal	0 <EnNy_Init>
     fcc:	02c02025 	move	a0,s6
     fd0:	8fbf0054 	lw	ra,84(sp)
     fd4:	d7b40018 	ldc1	$f20,24(sp)
     fd8:	d7b60020 	ldc1	$f22,32(sp)
     fdc:	d7b80028 	ldc1	$f24,40(sp)
     fe0:	d7ba0030 	ldc1	$f26,48(sp)
     fe4:	8fb00038 	lw	s0,56(sp)
     fe8:	8fb1003c 	lw	s1,60(sp)
     fec:	8fb20040 	lw	s2,64(sp)
     ff0:	8fb30044 	lw	s3,68(sp)
     ff4:	8fb40048 	lw	s4,72(sp)
     ff8:	8fb5004c 	lw	s5,76(sp)
     ffc:	8fb60050 	lw	s6,80(sp)
    1000:	03e00008 	jr	ra
    1004:	27bd0058 	addiu	sp,sp,88

00001008 <func_80ABDBB8>:
    1008:	27bdffe8 	addiu	sp,sp,-24
    100c:	afbf0014 	sw	ra,20(sp)
    1010:	848e01c8 	lh	t6,456(a0)
    1014:	848201ca 	lh	v0,458(a0)
    1018:	25cf0001 	addiu	t7,t6,1
    101c:	10400003 	beqz	v0,102c <func_80ABDBB8+0x24>
    1020:	a48f01c8 	sh	t7,456(a0)
    1024:	2458ffff 	addiu	t8,v0,-1
    1028:	a49801ca 	sh	t8,458(a0)
    102c:	8c99014c 	lw	t9,332(a0)
    1030:	0320f809 	jalr	t9
    1034:	00000000 	nop
    1038:	8fbf0014 	lw	ra,20(sp)
    103c:	27bd0018 	addiu	sp,sp,24
    1040:	03e00008 	jr	ra
    1044:	00000000 	nop

00001048 <func_80ABDBF8>:
    1048:	27bdffb8 	addiu	sp,sp,-72
    104c:	afbf0024 	sw	ra,36(sp)
    1050:	afb10020 	sw	s1,32(sp)
    1054:	afb0001c 	sw	s0,28(sp)
    1058:	3c013e80 	lui	at,0x3e80
    105c:	44813000 	mtc1	at,$f6
    1060:	c48401e0 	lwc1	$f4,480(a0)
    1064:	00a08825 	move	s1,a1
    1068:	00808025 	move	s0,a0
    106c:	46062201 	sub.s	$f8,$f4,$f6
    1070:	24050000 	li	a1,0
    1074:	e7a8003c 	swc1	$f8,60(sp)
    1078:	848e01c8 	lh	t6,456(a0)
    107c:	25cf0001 	addiu	t7,t6,1
    1080:	0c000000 	jal	0 <EnNy_Init>
    1084:	a48f01c8 	sh	t7,456(a0)
    1088:	3c053c23 	lui	a1,0x3c23
    108c:	34a5d70a 	ori	a1,a1,0xd70a
    1090:	0c000000 	jal	0 <EnNy_Init>
    1094:	02002025 	move	a0,s0
    1098:	3c0141a0 	lui	at,0x41a0
    109c:	44811000 	mtc1	at,$f2
    10a0:	3c0141c0 	lui	at,0x41c0
    10a4:	44815000 	mtc1	at,$f10
    10a8:	c7b0003c 	lwc1	$f16,60(sp)
    10ac:	3c014140 	lui	at,0x4140
    10b0:	44812000 	mtc1	at,$f4
    10b4:	46105482 	mul.s	$f18,$f10,$f16
    10b8:	c6060104 	lwc1	$f6,260(s0)
    10bc:	c60a0028 	lwc1	$f10,40(s0)
    10c0:	3c014270 	lui	at,0x4270
    10c4:	24180007 	li	t8,7
    10c8:	44061000 	mfc1	a2,$f2
    10cc:	44071000 	mfc1	a3,$f2
    10d0:	46049000 	add.s	$f0,$f18,$f4
    10d4:	44819000 	mtc1	at,$f18
    10d8:	02202025 	move	a0,s1
    10dc:	02002825 	move	a1,s0
    10e0:	46003201 	sub.s	$f8,$f6,$f0
    10e4:	46005401 	sub.s	$f16,$f10,$f0
    10e8:	e6080104 	swc1	$f8,260(s0)
    10ec:	e6100028 	swc1	$f16,40(s0)
    10f0:	e7a00034 	swc1	$f0,52(sp)
    10f4:	afb80014 	sw	t8,20(sp)
    10f8:	0c000000 	jal	0 <EnNy_Init>
    10fc:	e7b20010 	swc1	$f18,16(sp)
    1100:	c7a00034 	lwc1	$f0,52(sp)
    1104:	c6040028 	lwc1	$f4,40(s0)
    1108:	3c010001 	lui	at,0x1
    110c:	34211e60 	ori	at,at,0x1e60
    1110:	46002180 	add.s	$f6,$f4,$f0
    1114:	02212821 	addu	a1,s1,at
    1118:	26060150 	addiu	a2,s0,336
    111c:	e60001f0 	swc1	$f0,496(s0)
    1120:	e6060028 	swc1	$f6,40(s0)
    1124:	afa6002c 	sw	a2,44(sp)
    1128:	afa50030 	sw	a1,48(sp)
    112c:	0c000000 	jal	0 <EnNy_Init>
    1130:	02202025 	move	a0,s1
    1134:	8fa50030 	lw	a1,48(sp)
    1138:	8fa6002c 	lw	a2,44(sp)
    113c:	0c000000 	jal	0 <EnNy_Init>
    1140:	02202025 	move	a0,s1
    1144:	0c000000 	jal	0 <EnNy_Init>
    1148:	02002025 	move	a0,s0
    114c:	3c063dcc 	lui	a2,0x3dcc
    1150:	34c6cccd 	ori	a2,a2,0xcccd
    1154:	260401e4 	addiu	a0,s0,484
    1158:	0c000000 	jal	0 <EnNy_Init>
    115c:	8e0501e8 	lw	a1,488(s0)
    1160:	8fbf0024 	lw	ra,36(sp)
    1164:	8fb0001c 	lw	s0,28(sp)
    1168:	8fb10020 	lw	s1,32(sp)
    116c:	03e00008 	jr	ra
    1170:	27bd0048 	addiu	sp,sp,72

00001174 <EnNy_Draw>:
    1174:	27bdff70 	addiu	sp,sp,-144
    1178:	afbf002c 	sw	ra,44(sp)
    117c:	afb10028 	sw	s1,40(sp)
    1180:	afb00024 	sw	s0,36(sp)
    1184:	afa50094 	sw	a1,148(sp)
    1188:	8ca50000 	lw	a1,0(a1)
    118c:	00808825 	move	s1,a0
    1190:	3c060000 	lui	a2,0x0
    1194:	24c60000 	addiu	a2,a2,0
    1198:	27a40074 	addiu	a0,sp,116
    119c:	24070345 	li	a3,837
    11a0:	0c000000 	jal	0 <EnNy_Init>
    11a4:	00a08025 	move	s0,a1
    11a8:	00002025 	move	a0,zero
    11ac:	0c000000 	jal	0 <EnNy_Init>
    11b0:	26250150 	addiu	a1,s1,336
    11b4:	02202025 	move	a0,s1
    11b8:	8fa50094 	lw	a1,148(sp)
    11bc:	0c000000 	jal	0 <EnNy_Init>
    11c0:	24060001 	li	a2,1
    11c4:	8faf0094 	lw	t7,148(sp)
    11c8:	0c000000 	jal	0 <EnNy_Init>
    11cc:	8de40000 	lw	a0,0(t7)
    11d0:	8e0202d0 	lw	v0,720(s0)
    11d4:	3c19da38 	lui	t9,0xda38
    11d8:	37390003 	ori	t9,t9,0x3
    11dc:	24580008 	addiu	t8,v0,8
    11e0:	ae1802d0 	sw	t8,720(s0)
    11e4:	ac590000 	sw	t9,0(v0)
    11e8:	8fa90094 	lw	t1,148(sp)
    11ec:	3c050000 	lui	a1,0x0
    11f0:	24a50000 	addiu	a1,a1,0
    11f4:	8d240000 	lw	a0,0(t1)
    11f8:	2406034d 	li	a2,845
    11fc:	0c000000 	jal	0 <EnNy_Init>
    1200:	afa20070 	sw	v0,112(sp)
    1204:	8fa30070 	lw	v1,112(sp)
    1208:	3c04e700 	lui	a0,0xe700
    120c:	3c05e200 	lui	a1,0xe200
    1210:	ac620004 	sw	v0,4(v1)
    1214:	8e0202d0 	lw	v0,720(s0)
    1218:	3c0c0c18 	lui	t4,0xc18
    121c:	358c49d8 	ori	t4,t4,0x49d8
    1220:	244a0008 	addiu	t2,v0,8
    1224:	ae0a02d0 	sw	t2,720(s0)
    1228:	ac400004 	sw	zero,4(v0)
    122c:	ac440000 	sw	a0,0(v0)
    1230:	8e0202d0 	lw	v0,720(s0)
    1234:	34a5001c 	ori	a1,a1,0x1c
    1238:	3c06fb00 	lui	a2,0xfb00
    123c:	244b0008 	addiu	t3,v0,8
    1240:	ae0b02d0 	sw	t3,720(s0)
    1244:	ac4c0004 	sw	t4,4(v0)
    1248:	ac450000 	sw	a1,0(v0)
    124c:	8e0202d0 	lw	v0,720(s0)
    1250:	3c190600 	lui	t9,0x600
    1254:	27391ea8 	addiu	t9,t9,7848
    1258:	244d0008 	addiu	t5,v0,8
    125c:	ae0d02d0 	sw	t5,720(s0)
    1260:	ac460000 	sw	a2,0(v0)
    1264:	8e2e01d8 	lw	t6,472(s1)
    1268:	3c08de00 	lui	t0,0xde00
    126c:	3c0bc810 	lui	t3,0xc810
    1270:	31cf00ff 	andi	t7,t6,0xff
    1274:	ac4f0004 	sw	t7,4(v0)
    1278:	8e0202d0 	lw	v0,720(s0)
    127c:	356b49d8 	ori	t3,t3,0x49d8
    1280:	3c013e80 	lui	at,0x3e80
    1284:	24580008 	addiu	t8,v0,8
    1288:	ae1802d0 	sw	t8,720(s0)
    128c:	ac590004 	sw	t9,4(v0)
    1290:	ac480000 	sw	t0,0(v0)
    1294:	8e0202d0 	lw	v0,720(s0)
    1298:	3c180600 	lui	t8,0x600
    129c:	27181dd0 	addiu	t8,t8,7632
    12a0:	24490008 	addiu	t1,v0,8
    12a4:	ae0902d0 	sw	t1,720(s0)
    12a8:	ac400004 	sw	zero,4(v0)
    12ac:	ac440000 	sw	a0,0(v0)
    12b0:	8e0202d0 	lw	v0,720(s0)
    12b4:	44812000 	mtc1	at,$f4
    12b8:	24070001 	li	a3,1
    12bc:	244a0008 	addiu	t2,v0,8
    12c0:	ae0a02d0 	sw	t2,720(s0)
    12c4:	ac4b0004 	sw	t3,4(v0)
    12c8:	ac450000 	sw	a1,0(v0)
    12cc:	8e0202d0 	lw	v0,720(s0)
    12d0:	244c0008 	addiu	t4,v0,8
    12d4:	ae0c02d0 	sw	t4,720(s0)
    12d8:	ac460000 	sw	a2,0(v0)
    12dc:	8e2d01d4 	lw	t5,468(s1)
    12e0:	31ae00ff 	andi	t6,t5,0xff
    12e4:	ac4e0004 	sw	t6,4(v0)
    12e8:	8e0202d0 	lw	v0,720(s0)
    12ec:	244f0008 	addiu	t7,v0,8
    12f0:	ae0f02d0 	sw	t7,720(s0)
    12f4:	ac580004 	sw	t8,4(v0)
    12f8:	ac480000 	sw	t0,0(v0)
    12fc:	c62c01e0 	lwc1	$f12,480(s1)
    1300:	460c203c 	c.lt.s	$f4,$f12
    1304:	00000000 	nop
    1308:	45020023 	bc1fl	1398 <EnNy_Draw+0x224>
    130c:	8faf0094 	lw	t7,148(sp)
    1310:	44066000 	mfc1	a2,$f12
    1314:	0c000000 	jal	0 <EnNy_Init>
    1318:	46006386 	mov.s	$f14,$f12
    131c:	02202025 	move	a0,s1
    1320:	8fa50094 	lw	a1,148(sp)
    1324:	0c000000 	jal	0 <EnNy_Init>
    1328:	24060001 	li	a2,1
    132c:	8fb90094 	lw	t9,148(sp)
    1330:	0c000000 	jal	0 <EnNy_Init>
    1334:	8f240000 	lw	a0,0(t9)
    1338:	8e0202c0 	lw	v0,704(s0)
    133c:	3c0ada38 	lui	t2,0xda38
    1340:	354a0003 	ori	t2,t2,0x3
    1344:	24490008 	addiu	t1,v0,8
    1348:	ae0902c0 	sw	t1,704(s0)
    134c:	ac4a0000 	sw	t2,0(v0)
    1350:	8fab0094 	lw	t3,148(sp)
    1354:	3c050000 	lui	a1,0x0
    1358:	24a50000 	addiu	a1,a1,0
    135c:	8d640000 	lw	a0,0(t3)
    1360:	24060364 	li	a2,868
    1364:	0c000000 	jal	0 <EnNy_Init>
    1368:	afa2004c 	sw	v0,76(sp)
    136c:	8fa3004c 	lw	v1,76(sp)
    1370:	3c0e0600 	lui	t6,0x600
    1374:	25ce1fc8 	addiu	t6,t6,8136
    1378:	ac620004 	sw	v0,4(v1)
    137c:	8e0202c0 	lw	v0,704(s0)
    1380:	3c0dde00 	lui	t5,0xde00
    1384:	244c0008 	addiu	t4,v0,8
    1388:	ae0c02c0 	sw	t4,704(s0)
    138c:	ac4e0004 	sw	t6,4(v0)
    1390:	ac4d0000 	sw	t5,0(v0)
    1394:	8faf0094 	lw	t7,148(sp)
    1398:	3c060000 	lui	a2,0x0
    139c:	24c60000 	addiu	a2,a2,0
    13a0:	27a40074 	addiu	a0,sp,116
    13a4:	24070368 	li	a3,872
    13a8:	0c000000 	jal	0 <EnNy_Init>
    13ac:	8de50000 	lw	a1,0(t7)
    13b0:	862301ca 	lh	v1,458(s1)
    13b4:	10600031 	beqz	v1,147c <EnNy_Draw+0x308>
    13b8:	2462ffff 	addiu	v0,v1,-1
    13bc:	92380114 	lbu	t8,276(s1)
    13c0:	00021400 	sll	v0,v0,0x10
    13c4:	00021403 	sra	v0,v0,0x10
    13c8:	27190001 	addiu	t9,t8,1
    13cc:	1440002b 	bnez	v0,147c <EnNy_Draw+0x308>
    13d0:	a2390114 	sb	t9,276(s1)
    13d4:	3c0140a0 	lui	at,0x40a0
    13d8:	44816000 	mtc1	at,$f12
    13dc:	0c000000 	jal	0 <EnNy_Init>
    13e0:	a7a20036 	sh	v0,54(sp)
    13e4:	87a20036 	lh	v0,54(sp)
    13e8:	3c0b0000 	lui	t3,0x0
    13ec:	256b0000 	addiu	t3,t3,0
    13f0:	30490003 	andi	t1,v0,0x3
    13f4:	00095080 	sll	t2,t1,0x2
    13f8:	01495023 	subu	t2,t2,t1
    13fc:	000a5080 	sll	t2,t2,0x2
    1400:	014b8021 	addu	s0,t2,t3
    1404:	c6080000 	lwc1	$f8,0(s0)
    1408:	c6260024 	lwc1	$f6,36(s1)
    140c:	3c0140a0 	lui	at,0x40a0
    1410:	44816000 	mtc1	at,$f12
    1414:	46083280 	add.s	$f10,$f6,$f8
    1418:	460a0400 	add.s	$f16,$f0,$f10
    141c:	0c000000 	jal	0 <EnNy_Init>
    1420:	e7b0003c 	swc1	$f16,60(sp)
    1424:	c6320028 	lwc1	$f18,40(s1)
    1428:	c6040004 	lwc1	$f4,4(s0)
    142c:	3c0140a0 	lui	at,0x40a0
    1430:	44816000 	mtc1	at,$f12
    1434:	46049180 	add.s	$f6,$f18,$f4
    1438:	46060200 	add.s	$f8,$f0,$f6
    143c:	0c000000 	jal	0 <EnNy_Init>
    1440:	e7a80040 	swc1	$f8,64(sp)
    1444:	c62a002c 	lwc1	$f10,44(s1)
    1448:	c6100008 	lwc1	$f16,8(s0)
    144c:	240cffff 	li	t4,-1
    1450:	afac0018 	sw	t4,24(sp)
    1454:	46105480 	add.s	$f18,$f10,$f16
    1458:	afa00014 	sw	zero,20(sp)
    145c:	afa00010 	sw	zero,16(sp)
    1460:	8fa40094 	lw	a0,148(sp)
    1464:	46120100 	add.s	$f4,$f0,$f18
    1468:	02202825 	move	a1,s1
    146c:	27a6003c 	addiu	a2,sp,60
    1470:	24070064 	li	a3,100
    1474:	0c000000 	jal	0 <EnNy_Init>
    1478:	e7a40044 	swc1	$f4,68(sp)
    147c:	8fbf002c 	lw	ra,44(sp)
    1480:	8fb00024 	lw	s0,36(sp)
    1484:	8fb10028 	lw	s1,40(sp)
    1488:	03e00008 	jr	ra
    148c:	27bd0090 	addiu	sp,sp,144

00001490 <func_80ABE040>:
    1490:	27bdff40 	addiu	sp,sp,-192
    1494:	afbf0064 	sw	ra,100(sp)
    1498:	afbe0060 	sw	s8,96(sp)
    149c:	afb7005c 	sw	s7,92(sp)
    14a0:	afb60058 	sw	s6,88(sp)
    14a4:	afb50054 	sw	s5,84(sp)
    14a8:	afb40050 	sw	s4,80(sp)
    14ac:	afb3004c 	sw	s3,76(sp)
    14b0:	afb20048 	sw	s2,72(sp)
    14b4:	afb10044 	sw	s1,68(sp)
    14b8:	afb00040 	sw	s0,64(sp)
    14bc:	f7b80038 	sdc1	$f24,56(sp)
    14c0:	f7b60030 	sdc1	$f22,48(sp)
    14c4:	f7b40028 	sdc1	$f20,40(sp)
    14c8:	afa500c4 	sw	a1,196(sp)
    14cc:	8ca50000 	lw	a1,0(a1)
    14d0:	0080a025 	move	s4,a0
    14d4:	3c060000 	lui	a2,0x0
    14d8:	24c60000 	addiu	a2,a2,0
    14dc:	27a4009c 	addiu	a0,sp,156
    14e0:	24070384 	li	a3,900
    14e4:	0c000000 	jal	0 <EnNy_Init>
    14e8:	00a09025 	move	s2,a1
    14ec:	8faf00c4 	lw	t7,196(sp)
    14f0:	0c000000 	jal	0 <EnNy_Init>
    14f4:	8de40000 	lw	a0,0(t7)
    14f8:	8e4202c0 	lw	v0,704(s2)
    14fc:	3c19fb00 	lui	t9,0xfb00
    1500:	240800ff 	li	t0,255
    1504:	24580008 	addiu	t8,v0,8
    1508:	ae5802c0 	sw	t8,704(s2)
    150c:	ac480004 	sw	t0,4(v0)
    1510:	ac590000 	sw	t9,0(v0)
    1514:	8e4202c0 	lw	v0,704(s2)
    1518:	3c0ae200 	lui	t2,0xe200
    151c:	3c0bc811 	lui	t3,0xc811
    1520:	24490008 	addiu	t1,v0,8
    1524:	ae4902c0 	sw	t1,704(s2)
    1528:	356b2078 	ori	t3,t3,0x2078
    152c:	354a001c 	ori	t2,t2,0x1c
    1530:	ac4a0000 	sw	t2,0(v0)
    1534:	ac4b0004 	sw	t3,4(v0)
    1538:	8e4202c0 	lw	v0,704(s2)
    153c:	3c0de700 	lui	t5,0xe700
    1540:	3c010000 	lui	at,0x0
    1544:	244c0008 	addiu	t4,v0,8
    1548:	ae4c02c0 	sw	t4,704(s2)
    154c:	ac400004 	sw	zero,4(v0)
    1550:	ac4d0000 	sw	t5,0(v0)
    1554:	c4380000 	lwc1	$f24,0(at)
    1558:	3c013f80 	lui	at,0x3f80
    155c:	4481b000 	mtc1	at,$f22
    1560:	3c010000 	lui	at,0x0
    1564:	3c160000 	lui	s6,0x0
    1568:	3c15da38 	lui	s5,0xda38
    156c:	36b50003 	ori	s5,s5,0x3
    1570:	26d60000 	addiu	s6,s6,0
    1574:	c4340000 	lwc1	$f20,0(at)
    1578:	00008025 	move	s0,zero
    157c:	241e0008 	li	s8,8
    1580:	3c17de00 	lui	s7,0xde00
    1584:	868e01c8 	lh	t6,456(s4)
    1588:	260f0016 	addiu	t7,s0,22
    158c:	0010c080 	sll	t8,s0,0x2
    1590:	01cf082a 	slt	at,t6,t7
    1594:	10200026 	beqz	at,1630 <func_80ABE040+0x1a0>
    1598:	0310c023 	subu	t8,t8,s0
    159c:	0018c080 	sll	t8,t8,0x2
    15a0:	02981021 	addu	v0,s4,t8
    15a4:	3c130600 	lui	s3,0x600
    15a8:	26731dd0 	addiu	s3,s3,7632
    15ac:	c44c01f8 	lwc1	$f12,504(v0)
    15b0:	c44e01fc 	lwc1	$f14,508(v0)
    15b4:	8c460200 	lw	a2,512(v0)
    15b8:	0c000000 	jal	0 <EnNy_Init>
    15bc:	00003825 	move	a3,zero
    15c0:	44904000 	mtc1	s0,$f8
    15c4:	c6840050 	lwc1	$f4,80(s4)
    15c8:	24070001 	li	a3,1
    15cc:	468042a0 	cvt.s.w	$f10,$f8
    15d0:	46142182 	mul.s	$f6,$f4,$f20
    15d4:	00000000 	nop
    15d8:	46185402 	mul.s	$f16,$f10,$f24
    15dc:	4610b480 	add.s	$f18,$f22,$f16
    15e0:	46123302 	mul.s	$f12,$f6,$f18
    15e4:	44066000 	mfc1	a2,$f12
    15e8:	0c000000 	jal	0 <EnNy_Init>
    15ec:	46006386 	mov.s	$f14,$f12
    15f0:	8e4202c0 	lw	v0,704(s2)
    15f4:	02c02825 	move	a1,s6
    15f8:	24060390 	li	a2,912
    15fc:	24590008 	addiu	t9,v0,8
    1600:	ae5902c0 	sw	t9,704(s2)
    1604:	ac550000 	sw	s5,0(v0)
    1608:	8fa800c4 	lw	t0,196(sp)
    160c:	00408825 	move	s1,v0
    1610:	0c000000 	jal	0 <EnNy_Init>
    1614:	8d040000 	lw	a0,0(t0)
    1618:	ae220004 	sw	v0,4(s1)
    161c:	8e4202c0 	lw	v0,704(s2)
    1620:	24490008 	addiu	t1,v0,8
    1624:	ae4902c0 	sw	t1,704(s2)
    1628:	ac530004 	sw	s3,4(v0)
    162c:	ac570000 	sw	s7,0(v0)
    1630:	26100001 	addiu	s0,s0,1
    1634:	561effd4 	bnel	s0,s8,1588 <func_80ABE040+0xf8>
    1638:	868e01c8 	lh	t6,456(s4)
    163c:	8faa00c4 	lw	t2,196(sp)
    1640:	3c060000 	lui	a2,0x0
    1644:	24c60000 	addiu	a2,a2,0
    1648:	27a4009c 	addiu	a0,sp,156
    164c:	24070397 	li	a3,919
    1650:	0c000000 	jal	0 <EnNy_Init>
    1654:	8d450000 	lw	a1,0(t2)
    1658:	868201ca 	lh	v0,458(s4)
    165c:	1040002f 	beqz	v0,171c <func_80ABE040+0x28c>
    1660:	2451ffff 	addiu	s1,v0,-1
    1664:	928b0114 	lbu	t3,276(s4)
    1668:	00118c00 	sll	s1,s1,0x10
    166c:	00118c03 	sra	s1,s1,0x10
    1670:	322d0001 	andi	t5,s1,0x1
    1674:	256c0001 	addiu	t4,t3,1
    1678:	15a00028 	bnez	t5,171c <func_80ABE040+0x28c>
    167c:	a28c0114 	sb	t4,276(s4)
    1680:	3c0140a0 	lui	at,0x40a0
    1684:	4481a000 	mtc1	at,$f20
    1688:	0c000000 	jal	0 <EnNy_Init>
    168c:	4600a306 	mov.s	$f12,$f20
    1690:	322e0003 	andi	t6,s1,0x3
    1694:	000e7880 	sll	t7,t6,0x2
    1698:	01ee7823 	subu	t7,t7,t6
    169c:	3c180000 	lui	t8,0x0
    16a0:	27180000 	addiu	t8,t8,0
    16a4:	000f7880 	sll	t7,t7,0x2
    16a8:	01f88021 	addu	s0,t7,t8
    16ac:	c6080000 	lwc1	$f8,0(s0)
    16b0:	c6840024 	lwc1	$f4,36(s4)
    16b4:	4600a306 	mov.s	$f12,$f20
    16b8:	46082280 	add.s	$f10,$f4,$f8
    16bc:	460a0400 	add.s	$f16,$f0,$f10
    16c0:	0c000000 	jal	0 <EnNy_Init>
    16c4:	e7b0007c 	swc1	$f16,124(sp)
    16c8:	c6860028 	lwc1	$f6,40(s4)
    16cc:	c6120004 	lwc1	$f18,4(s0)
    16d0:	4600a306 	mov.s	$f12,$f20
    16d4:	46123100 	add.s	$f4,$f6,$f18
    16d8:	46040200 	add.s	$f8,$f0,$f4
    16dc:	0c000000 	jal	0 <EnNy_Init>
    16e0:	e7a80080 	swc1	$f8,128(sp)
    16e4:	c68a002c 	lwc1	$f10,44(s4)
    16e8:	c6100008 	lwc1	$f16,8(s0)
    16ec:	2419ffff 	li	t9,-1
    16f0:	afb90018 	sw	t9,24(sp)
    16f4:	46105180 	add.s	$f6,$f10,$f16
    16f8:	afa00014 	sw	zero,20(sp)
    16fc:	afa00010 	sw	zero,16(sp)
    1700:	8fa400c4 	lw	a0,196(sp)
    1704:	46060480 	add.s	$f18,$f0,$f6
    1708:	02802825 	move	a1,s4
    170c:	27a6007c 	addiu	a2,sp,124
    1710:	24070064 	li	a3,100
    1714:	0c000000 	jal	0 <EnNy_Init>
    1718:	e7b20084 	swc1	$f18,132(sp)
    171c:	8fbf0064 	lw	ra,100(sp)
    1720:	d7b40028 	ldc1	$f20,40(sp)
    1724:	d7b60030 	ldc1	$f22,48(sp)
    1728:	d7b80038 	ldc1	$f24,56(sp)
    172c:	8fb00040 	lw	s0,64(sp)
    1730:	8fb10044 	lw	s1,68(sp)
    1734:	8fb20048 	lw	s2,72(sp)
    1738:	8fb3004c 	lw	s3,76(sp)
    173c:	8fb40050 	lw	s4,80(sp)
    1740:	8fb50054 	lw	s5,84(sp)
    1744:	8fb60058 	lw	s6,88(sp)
    1748:	8fb7005c 	lw	s7,92(sp)
    174c:	8fbe0060 	lw	s8,96(sp)
    1750:	03e00008 	jr	ra
    1754:	27bd00c0 	addiu	sp,sp,192
	...
