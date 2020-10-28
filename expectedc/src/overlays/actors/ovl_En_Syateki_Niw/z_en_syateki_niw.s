
build/src/overlays/actors/ovl_En_Syateki_Niw/z_en_syateki_niw.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSyatekiNiw_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      1c:	24a5004c 	addiu	a1,a1,76
      20:	8e0e0004 	lw	t6,4(s0)
      24:	2401fffe 	li	at,-2
      28:	3c060000 	lui	a2,0x0
      2c:	01c17824 	and	t7,t6,at
      30:	ae0f0004 	sw	t7,4(s0)
      34:	24c60000 	addiu	a2,a2,0
      38:	260400b4 	addiu	a0,s0,180
      3c:	24050000 	li	a1,0
      40:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      44:	3c0741c8 	lui	a3,0x41c8
      48:	3c060000 	lui	a2,0x0
      4c:	3c070000 	lui	a3,0x0
      50:	26180190 	addiu	t8,s0,400
      54:	261901f0 	addiu	t9,s0,496
      58:	24080010 	li	t0,16
      5c:	afa80018 	sw	t0,24(sp)
      60:	afb90014 	sw	t9,20(sp)
      64:	afb80010 	sw	t8,16(sp)
      68:	24e70000 	addiu	a3,a3,0
      6c:	24c60000 	addiu	a2,a2,0
      70:	8fa4003c 	lw	a0,60(sp)
      74:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      78:	2605014c 	addiu	a1,s0,332
      7c:	8609001c 	lh	t1,28(s0)
      80:	260502fc 	addiu	a1,s0,764
      84:	a609029e 	sh	t1,670(s0)
      88:	860a029e 	lh	t2,670(s0)
      8c:	05430003 	bgezl	t2,9c <EnSyatekiNiw_Init+0x9c>
      90:	8fa4003c 	lw	a0,60(sp)
      94:	a600029e 	sh	zero,670(s0)
      98:	8fa4003c 	lw	a0,60(sp)
      9c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      a0:	afa50030 	sw	a1,48(sp)
      a4:	3c070000 	lui	a3,0x0
      a8:	8fa50030 	lw	a1,48(sp)
      ac:	24e70020 	addiu	a3,a3,32
      b0:	8fa4003c 	lw	a0,60(sp)
      b4:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      b8:	02003025 	move	a2,s0
      bc:	860b029e 	lh	t3,670(s0)
      c0:	3c040000 	lui	a0,0x0
      c4:	1560000d 	bnez	t3,fc <EnSyatekiNiw_Init+0xfc>
      c8:	00000000 	nop
      cc:	3c040000 	lui	a0,0x0
      d0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      d4:	24840000 	addiu	a0,a0,0
      d8:	3c040000 	lui	a0,0x0
      dc:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      e0:	24840004 	addiu	a0,a0,4
      e4:	3c053c23 	lui	a1,0x3c23
      e8:	34a5d70a 	ori	a1,a1,0xd70a
      ec:	0c000000 	jal	0 <EnSyatekiNiw_Init>
      f0:	02002025 	move	a0,s0
      f4:	1000000d 	b	12c <EnSyatekiNiw_Init+0x12c>
      f8:	26020024 	addiu	v0,s0,36
      fc:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     100:	24840030 	addiu	a0,a0,48
     104:	3c040000 	lui	a0,0x0
     108:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     10c:	24840034 	addiu	a0,a0,52
     110:	240c00ff 	li	t4,255
     114:	3c053c23 	lui	a1,0x3c23
     118:	a20c00ae 	sb	t4,174(s0)
     11c:	34a5d70a 	ori	a1,a1,0xd70a
     120:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     124:	02002025 	move	a0,s0
     128:	26020024 	addiu	v0,s0,36
     12c:	8c4e0000 	lw	t6,0(v0)
     130:	3c190000 	lui	t9,0x0
     134:	27390000 	addiu	t9,t9,0
     138:	ae0e02dc 	sw	t6,732(s0)
     13c:	8c4d0004 	lw	t5,4(v0)
     140:	ae0d02e0 	sw	t5,736(s0)
     144:	8c4e0008 	lw	t6,8(v0)
     148:	ae0e02e4 	sw	t6,740(s0)
     14c:	8c580000 	lw	t8,0(v0)
     150:	ae1802e8 	sw	t8,744(s0)
     154:	8c4f0004 	lw	t7,4(v0)
     158:	ae0f02ec 	sw	t7,748(s0)
     15c:	8c580008 	lw	t8,8(v0)
     160:	ae190250 	sw	t9,592(s0)
     164:	ae1802f0 	sw	t8,752(s0)
     168:	8fbf002c 	lw	ra,44(sp)
     16c:	8fb00028 	lw	s0,40(sp)
     170:	27bd0038 	addiu	sp,sp,56
     174:	03e00008 	jr	ra
     178:	00000000 	nop

0000017c <EnSyatekiNiw_Destroy>:
     17c:	27bdffe8 	addiu	sp,sp,-24
     180:	00803025 	move	a2,a0
     184:	afbf0014 	sw	ra,20(sp)
     188:	00a02025 	move	a0,a1
     18c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     190:	24c502fc 	addiu	a1,a2,764
     194:	8fbf0014 	lw	ra,20(sp)
     198:	27bd0018 	addiu	sp,sp,24
     19c:	03e00008 	jr	ra
     1a0:	00000000 	nop

000001a4 <func_80B11A94>:
     1a4:	27bdffe0 	addiu	sp,sp,-32
     1a8:	afbf001c 	sw	ra,28(sp)
     1ac:	afb00018 	sw	s0,24(sp)
     1b0:	afa50024 	sw	a1,36(sp)
     1b4:	afa60028 	sw	a2,40(sp)
     1b8:	848e0254 	lh	t6,596(a0)
     1bc:	00063400 	sll	a2,a2,0x10
     1c0:	00063403 	sra	a2,a2,0x10
     1c4:	15c0001d 	bnez	t6,23c <func_80B11A94+0x98>
     1c8:	00808025 	move	s0,a0
     1cc:	14c00004 	bnez	a2,1e0 <func_80B11A94+0x3c>
     1d0:	3c010000 	lui	at,0x0
     1d4:	44801000 	mtc1	zero,$f2
     1d8:	10000004 	b	1ec <func_80B11A94+0x48>
     1dc:	e4820264 	swc1	$f2,612(a0)
     1e0:	c42400a8 	lwc1	$f4,168(at)
     1e4:	44801000 	mtc1	zero,$f2
     1e8:	e6040264 	swc1	$f4,612(s0)
     1ec:	860f028e 	lh	t7,654(s0)
     1f0:	24190003 	li	t9,3
     1f4:	a6190254 	sh	t9,596(s0)
     1f8:	25f80001 	addiu	t8,t7,1
     1fc:	a618028e 	sh	t8,654(s0)
     200:	8608028e 	lh	t0,654(s0)
     204:	31090001 	andi	t1,t0,0x1
     208:	5520000d 	bnezl	t1,240 <func_80B11A94+0x9c>
     20c:	860c0258 	lh	t4,600(s0)
     210:	14c0000a 	bnez	a2,23c <func_80B11A94+0x98>
     214:	e6020264 	swc1	$f2,612(s0)
     218:	3c0141f0 	lui	at,0x41f0
     21c:	44816000 	mtc1	at,$f12
     220:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     224:	a7a6002a 	sh	a2,42(sp)
     228:	4600018d 	trunc.w.s	$f6,$f0
     22c:	87a6002a 	lh	a2,42(sp)
     230:	440b3000 	mfc1	t3,$f6
     234:	00000000 	nop
     238:	a60b0254 	sh	t3,596(s0)
     23c:	860c0258 	lh	t4,600(s0)
     240:	44801000 	mtc1	zero,$f2
     244:	55800056 	bnezl	t4,3a0 <func_80B11A94+0x1fc>
     248:	c6000264 	lwc1	$f0,612(s0)
     24c:	860d0292 	lh	t5,658(s0)
     250:	2cc10006 	sltiu	at,a2,6
     254:	0006c880 	sll	t9,a2,0x2
     258:	25ae0001 	addiu	t6,t5,1
     25c:	a60e0292 	sh	t6,658(s0)
     260:	860f0292 	lh	t7,658(s0)
     264:	31f80001 	andi	t8,t7,0x1
     268:	1020004c 	beqz	at,39c <func_80B11A94+0x1f8>
     26c:	a6180292 	sh	t8,658(s0)
     270:	3c010000 	lui	at,0x0
     274:	00390821 	addu	at,at,t9
     278:	8c3900ac 	lw	t9,172(at)
     27c:	03200008 	jr	t9
     280:	00000000 	nop
     284:	e602026c 	swc1	$f2,620(s0)
     288:	10000044 	b	39c <func_80B11A94+0x1f8>
     28c:	e6020268 	swc1	$f2,616(s0)
     290:	24080003 	li	t0,3
     294:	a6080258 	sh	t0,600(s0)
     298:	3c010000 	lui	at,0x0
     29c:	c42800c4 	lwc1	$f8,196(at)
     2a0:	86090292 	lh	t1,658(s0)
     2a4:	3c010000 	lui	at,0x0
     2a8:	e608026c 	swc1	$f8,620(s0)
     2ac:	c42a00c8 	lwc1	$f10,200(at)
     2b0:	1520003a 	bnez	t1,39c <func_80B11A94+0x1f8>
     2b4:	e60a0268 	swc1	$f10,616(s0)
     2b8:	e602026c 	swc1	$f2,620(s0)
     2bc:	10000037 	b	39c <func_80B11A94+0x1f8>
     2c0:	e6020268 	swc1	$f2,616(s0)
     2c4:	3c010000 	lui	at,0x0
     2c8:	c42000cc 	lwc1	$f0,204(at)
     2cc:	3c010000 	lui	at,0x0
     2d0:	c42200d0 	lwc1	$f2,208(at)
     2d4:	240a0002 	li	t2,2
     2d8:	a60a0258 	sh	t2,600(s0)
     2dc:	3c010000 	lui	at,0x0
     2e0:	c43000d4 	lwc1	$f16,212(at)
     2e4:	3c010000 	lui	at,0x0
     2e8:	860b0292 	lh	t3,658(s0)
     2ec:	e610026c 	swc1	$f16,620(s0)
     2f0:	c43200d8 	lwc1	$f18,216(at)
     2f4:	e6000280 	swc1	$f0,640(s0)
     2f8:	e6000278 	swc1	$f0,632(s0)
     2fc:	e6020284 	swc1	$f2,644(s0)
     300:	e602027c 	swc1	$f2,636(s0)
     304:	15600025 	bnez	t3,39c <func_80B11A94+0x1f8>
     308:	e6120268 	swc1	$f18,616(s0)
     30c:	3c0145fa 	lui	at,0x45fa
     310:	44810000 	mtc1	at,$f0
     314:	00000000 	nop
     318:	e6000278 	swc1	$f0,632(s0)
     31c:	1000001f 	b	39c <func_80B11A94+0x1f8>
     320:	e6000280 	swc1	$f0,640(s0)
     324:	3c010000 	lui	at,0x0
     328:	c42000dc 	lwc1	$f0,220(at)
     32c:	860d0292 	lh	t5,658(s0)
     330:	240c0002 	li	t4,2
     334:	a60c0258 	sh	t4,600(s0)
     338:	e6000278 	swc1	$f0,632(s0)
     33c:	15a00017 	bnez	t5,39c <func_80B11A94+0x1f8>
     340:	e6000280 	swc1	$f0,640(s0)
     344:	3c010000 	lui	at,0x0
     348:	c42000e0 	lwc1	$f0,224(at)
     34c:	e6000278 	swc1	$f0,632(s0)
     350:	10000012 	b	39c <func_80B11A94+0x1f8>
     354:	e6000280 	swc1	$f0,640(s0)
     358:	240e0005 	li	t6,5
     35c:	a60e0256 	sh	t6,598(s0)
     360:	860f0256 	lh	t7,598(s0)
     364:	1000000d 	b	39c <func_80B11A94+0x1f8>
     368:	a60f0254 	sh	t7,596(s0)
     36c:	3c010000 	lui	at,0x0
     370:	c42000e4 	lwc1	$f0,228(at)
     374:	86190292 	lh	t9,658(s0)
     378:	24180005 	li	t8,5
     37c:	a6180258 	sh	t8,600(s0)
     380:	e6000278 	swc1	$f0,632(s0)
     384:	17200005 	bnez	t9,39c <func_80B11A94+0x1f8>
     388:	e6000280 	swc1	$f0,640(s0)
     38c:	3c010000 	lui	at,0x0
     390:	c42000e8 	lwc1	$f0,232(at)
     394:	e6000278 	swc1	$f0,632(s0)
     398:	e6000280 	swc1	$f0,640(s0)
     39c:	c6000264 	lwc1	$f0,612(s0)
     3a0:	c60402bc 	lwc1	$f4,700(s0)
     3a4:	260402bc 	addiu	a0,s0,700
     3a8:	3c063f00 	lui	a2,0x3f00
     3ac:	46002032 	c.eq.s	$f4,$f0
     3b0:	00000000 	nop
     3b4:	45030005 	bc1tl	3cc <func_80B11A94+0x228>
     3b8:	c600026c 	lwc1	$f0,620(s0)
     3bc:	44050000 	mfc1	a1,$f0
     3c0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     3c4:	3c07457a 	lui	a3,0x457a
     3c8:	c600026c 	lwc1	$f0,620(s0)
     3cc:	c60602a4 	lwc1	$f6,676(s0)
     3d0:	3c063f4c 	lui	a2,0x3f4c
     3d4:	34c6cccd 	ori	a2,a2,0xcccd
     3d8:	46003032 	c.eq.s	$f6,$f0
     3dc:	260402a4 	addiu	a0,s0,676
     3e0:	3c0745da 	lui	a3,0x45da
     3e4:	45030005 	bc1tl	3fc <func_80B11A94+0x258>
     3e8:	c6000280 	lwc1	$f0,640(s0)
     3ec:	44050000 	mfc1	a1,$f0
     3f0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     3f4:	34e7c000 	ori	a3,a3,0xc000
     3f8:	c6000280 	lwc1	$f0,640(s0)
     3fc:	c60802a8 	lwc1	$f8,680(s0)
     400:	3c063f4c 	lui	a2,0x3f4c
     404:	34c6cccd 	ori	a2,a2,0xcccd
     408:	46004032 	c.eq.s	$f8,$f0
     40c:	260402a8 	addiu	a0,s0,680
     410:	3c0745da 	lui	a3,0x45da
     414:	45030005 	bc1tl	42c <func_80B11A94+0x288>
     418:	c6000284 	lwc1	$f0,644(s0)
     41c:	44050000 	mfc1	a1,$f0
     420:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     424:	34e7c000 	ori	a3,a3,0xc000
     428:	c6000284 	lwc1	$f0,644(s0)
     42c:	c60a02ac 	lwc1	$f10,684(s0)
     430:	3c063f4c 	lui	a2,0x3f4c
     434:	34c6cccd 	ori	a2,a2,0xcccd
     438:	46005032 	c.eq.s	$f10,$f0
     43c:	260402ac 	addiu	a0,s0,684
     440:	3c0745da 	lui	a3,0x45da
     444:	45030005 	bc1tl	45c <func_80B11A94+0x2b8>
     448:	c6000268 	lwc1	$f0,616(s0)
     44c:	44050000 	mfc1	a1,$f0
     450:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     454:	34e7c000 	ori	a3,a3,0xc000
     458:	c6000268 	lwc1	$f0,616(s0)
     45c:	c61002b0 	lwc1	$f16,688(s0)
     460:	3c063f4c 	lui	a2,0x3f4c
     464:	34c6cccd 	ori	a2,a2,0xcccd
     468:	46008032 	c.eq.s	$f16,$f0
     46c:	260402b0 	addiu	a0,s0,688
     470:	3c0745da 	lui	a3,0x45da
     474:	45030005 	bc1tl	48c <func_80B11A94+0x2e8>
     478:	c6000278 	lwc1	$f0,632(s0)
     47c:	44050000 	mfc1	a1,$f0
     480:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     484:	34e7c000 	ori	a3,a3,0xc000
     488:	c6000278 	lwc1	$f0,632(s0)
     48c:	c61202b4 	lwc1	$f18,692(s0)
     490:	3c063f4c 	lui	a2,0x3f4c
     494:	34c6cccd 	ori	a2,a2,0xcccd
     498:	46009032 	c.eq.s	$f18,$f0
     49c:	260402b4 	addiu	a0,s0,692
     4a0:	3c0745da 	lui	a3,0x45da
     4a4:	45030005 	bc1tl	4bc <func_80B11A94+0x318>
     4a8:	c600027c 	lwc1	$f0,636(s0)
     4ac:	44050000 	mfc1	a1,$f0
     4b0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     4b4:	34e7c000 	ori	a3,a3,0xc000
     4b8:	c600027c 	lwc1	$f0,636(s0)
     4bc:	c60402b8 	lwc1	$f4,696(s0)
     4c0:	3c063f4c 	lui	a2,0x3f4c
     4c4:	34c6cccd 	ori	a2,a2,0xcccd
     4c8:	46002032 	c.eq.s	$f4,$f0
     4cc:	260402b8 	addiu	a0,s0,696
     4d0:	3c0745da 	lui	a3,0x45da
     4d4:	45030005 	bc1tl	4ec <func_80B11A94+0x348>
     4d8:	8fbf001c 	lw	ra,28(sp)
     4dc:	44050000 	mfc1	a1,$f0
     4e0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     4e4:	34e7c000 	ori	a3,a3,0xc000
     4e8:	8fbf001c 	lw	ra,28(sp)
     4ec:	8fb00018 	lw	s0,24(sp)
     4f0:	27bd0020 	addiu	sp,sp,32
     4f4:	03e00008 	jr	ra
     4f8:	00000000 	nop

000004fc <func_80B11DEC>:
     4fc:	27bdffd0 	addiu	sp,sp,-48
     500:	afb00028 	sw	s0,40(sp)
     504:	00808025 	move	s0,a0
     508:	afbf002c 	sw	ra,44(sp)
     50c:	3c040000 	lui	a0,0x0
     510:	afa50034 	sw	a1,52(sp)
     514:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     518:	24840000 	addiu	a0,a0,0
     51c:	44822000 	mtc1	v0,$f4
     520:	3c01c120 	lui	at,0xc120
     524:	44814000 	mtc1	at,$f8
     528:	468021a0 	cvt.s.w	$f6,$f4
     52c:	3c050000 	lui	a1,0x0
     530:	24a50000 	addiu	a1,a1,0
     534:	2604014c 	addiu	a0,s0,332
     538:	3c063f80 	lui	a2,0x3f80
     53c:	24070000 	li	a3,0
     540:	e7a60010 	swc1	$f6,16(sp)
     544:	afa00014 	sw	zero,20(sp)
     548:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     54c:	e7a80018 	swc1	$f8,24(sp)
     550:	860e029e 	lh	t6,670(s0)
     554:	02002025 	move	a0,s0
     558:	11c00003 	beqz	t6,568 <func_80B11DEC+0x6c>
     55c:	00000000 	nop
     560:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     564:	8e0502f4 	lw	a1,756(s0)
     568:	3c0f0000 	lui	t7,0x0
     56c:	25ef0000 	addiu	t7,t7,0
     570:	ae0f0250 	sw	t7,592(s0)
     574:	8fbf002c 	lw	ra,44(sp)
     578:	8fb00028 	lw	s0,40(sp)
     57c:	27bd0030 	addiu	sp,sp,48
     580:	03e00008 	jr	ra
     584:	00000000 	nop

00000588 <func_80B11E78>:
     588:	27bdff78 	addiu	sp,sp,-136
     58c:	3c0f0000 	lui	t7,0x0
     590:	afbf0034 	sw	ra,52(sp)
     594:	afb00030 	sw	s0,48(sp)
     598:	afa5008c 	sw	a1,140(sp)
     59c:	25ef0058 	addiu	t7,t7,88
     5a0:	8df90000 	lw	t9,0(t7)
     5a4:	27ae007c 	addiu	t6,sp,124
     5a8:	8df80004 	lw	t8,4(t7)
     5ac:	add90000 	sw	t9,0(t6)
     5b0:	8df90008 	lw	t9,8(t7)
     5b4:	3c090000 	lui	t1,0x0
     5b8:	25290064 	addiu	t1,t1,100
     5bc:	add80004 	sw	t8,4(t6)
     5c0:	add90008 	sw	t9,8(t6)
     5c4:	8d2b0000 	lw	t3,0(t1)
     5c8:	27a80070 	addiu	t0,sp,112
     5cc:	8d2a0004 	lw	t2,4(t1)
     5d0:	ad0b0000 	sw	t3,0(t0)
     5d4:	8d2b0008 	lw	t3,8(t1)
     5d8:	ad0a0004 	sw	t2,4(t0)
     5dc:	3c0c0000 	lui	t4,0x0
     5e0:	ad0b0008 	sw	t3,8(t0)
     5e4:	3c0d0000 	lui	t5,0x0
     5e8:	8d8c0070 	lw	t4,112(t4)
     5ec:	8dad0074 	lw	t5,116(t5)
     5f0:	00808025 	move	s0,a0
     5f4:	afac006c 	sw	t4,108(sp)
     5f8:	afad0068 	sw	t5,104(sp)
     5fc:	848e029c 	lh	t6,668(a0)
     600:	51c0000e 	beqzl	t6,63c <func_80B11E78+0xb4>
     604:	a7a0004a 	sh	zero,74(sp)
     608:	848f029e 	lh	t7,670(a0)
     60c:	55e0000b 	bnezl	t7,63c <func_80B11E78+0xb4>
     610:	a7a0004a 	sh	zero,74(sp)
     614:	94980088 	lhu	t8,136(a0)
     618:	3c080000 	lui	t0,0x0
     61c:	25080000 	addiu	t0,t0,0
     620:	33190001 	andi	t9,t8,0x1
     624:	53200005 	beqzl	t9,63c <func_80B11E78+0xb4>
     628:	a7a0004a 	sh	zero,74(sp)
     62c:	a480029c 	sh	zero,668(a0)
     630:	1000011c 	b	aa4 <func_80B11E78+0x51c>
     634:	ac880250 	sw	t0,592(a0)
     638:	a7a0004a 	sh	zero,74(sp)
     63c:	8609025e 	lh	t1,606(s0)
     640:	5520009f 	bnezl	t1,8c0 <func_80B11E78+0x338>
     644:	860d025c 	lh	t5,604(s0)
     648:	860a025c 	lh	t2,604(s0)
     64c:	5540009c 	bnezl	t2,8c0 <func_80B11E78+0x338>
     650:	860d025c 	lh	t5,604(s0)
     654:	860b0294 	lh	t3,660(s0)
     658:	256c0001 	addiu	t4,t3,1
     65c:	a60c0294 	sh	t4,660(s0)
     660:	860d0294 	lh	t5,660(s0)
     664:	29a10008 	slti	at,t5,8
     668:	1420007a 	bnez	at,854 <func_80B11E78+0x2cc>
     66c:	3c0141f0 	lui	at,0x41f0
     670:	44816000 	mtc1	at,$f12
     674:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     678:	00000000 	nop
     67c:	4600010d 	trunc.w.s	$f4,$f0
     680:	3c010000 	lui	at,0x0
     684:	440f2000 	mfc1	t7,$f4
     688:	00000000 	nop
     68c:	a60f025e 	sh	t7,606(s0)
     690:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     694:	c42c00ec 	lwc1	$f12,236(at)
     698:	4600018d 	trunc.w.s	$f6,$f0
     69c:	8602029e 	lh	v0,670(s0)
     6a0:	3c0142c8 	lui	at,0x42c8
     6a4:	44193000 	mfc1	t9,$f6
     6a8:	10400006 	beqz	v0,6c4 <func_80B11E78+0x13c>
     6ac:	a6190294 	sh	t9,660(s0)
     6b0:	24010001 	li	at,1
     6b4:	50410042 	beql	v0,at,7c0 <func_80B11E78+0x238>
     6b8:	3c014248 	lui	at,0x4248
     6bc:	10000080 	b	8c0 <func_80B11E78+0x338>
     6c0:	860d025c 	lh	t5,604(s0)
     6c4:	44816000 	mtc1	at,$f12
     6c8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     6cc:	00000000 	nop
     6d0:	44804000 	mtc1	zero,$f8
     6d4:	3c0142c8 	lui	at,0x42c8
     6d8:	44816000 	mtc1	at,$f12
     6dc:	4608003c 	c.lt.s	$f0,$f8
     6e0:	00000000 	nop
     6e4:	45020004 	bc1fl	6f8 <func_80B11E78+0x170>
     6e8:	460c0380 	add.s	$f14,$f0,$f12
     6ec:	10000002 	b	6f8 <func_80B11E78+0x170>
     6f0:	460c0381 	sub.s	$f14,$f0,$f12
     6f4:	460c0380 	add.s	$f14,$f0,$f12
     6f8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     6fc:	e7ae0050 	swc1	$f14,80(sp)
     700:	44805000 	mtc1	zero,$f10
     704:	3c0142c8 	lui	at,0x42c8
     708:	44816000 	mtc1	at,$f12
     70c:	460a003c 	c.lt.s	$f0,$f10
     710:	c7ae0050 	lwc1	$f14,80(sp)
     714:	45020004 	bc1fl	728 <func_80B11E78+0x1a0>
     718:	460c0080 	add.s	$f2,$f0,$f12
     71c:	10000002 	b	728 <func_80B11E78+0x1a0>
     720:	460c0081 	sub.s	$f2,$f0,$f12
     724:	460c0080 	add.s	$f2,$f0,$f12
     728:	c61002dc 	lwc1	$f16,732(s0)
     72c:	3c01c316 	lui	at,0xc316
     730:	44816000 	mtc1	at,$f12
     734:	460e8000 	add.s	$f0,$f16,$f14
     738:	c61202e4 	lwc1	$f18,740(s0)
     73c:	3c014316 	lui	at,0x4316
     740:	460c003c 	c.lt.s	$f0,$f12
     744:	e60002e8 	swc1	$f0,744(s0)
     748:	46029100 	add.s	$f4,$f18,$f2
     74c:	44810000 	mtc1	at,$f0
     750:	3c01c270 	lui	at,0xc270
     754:	45000002 	bc1f	760 <func_80B11E78+0x1d8>
     758:	e60402f0 	swc1	$f4,752(s0)
     75c:	e60c02e8 	swc1	$f12,744(s0)
     760:	c60602e8 	lwc1	$f6,744(s0)
     764:	44811000 	mtc1	at,$f2
     768:	3c01c220 	lui	at,0xc220
     76c:	4606003c 	c.lt.s	$f0,$f6
     770:	00000000 	nop
     774:	45020003 	bc1fl	784 <func_80B11E78+0x1fc>
     778:	c60002f0 	lwc1	$f0,752(s0)
     77c:	e60002e8 	swc1	$f0,744(s0)
     780:	c60002f0 	lwc1	$f0,752(s0)
     784:	4602003c 	c.lt.s	$f0,$f2
     788:	00000000 	nop
     78c:	45020004 	bc1fl	7a0 <func_80B11E78+0x218>
     790:	44811000 	mtc1	at,$f2
     794:	e60202f0 	swc1	$f2,752(s0)
     798:	c60002f0 	lwc1	$f0,752(s0)
     79c:	44811000 	mtc1	at,$f2
     7a0:	00000000 	nop
     7a4:	4600103c 	c.lt.s	$f2,$f0
     7a8:	00000000 	nop
     7ac:	45020044 	bc1fl	8c0 <func_80B11E78+0x338>
     7b0:	860d025c 	lh	t5,604(s0)
     7b4:	10000041 	b	8bc <func_80B11E78+0x334>
     7b8:	e60202f0 	swc1	$f2,752(s0)
     7bc:	3c014248 	lui	at,0x4248
     7c0:	44816000 	mtc1	at,$f12
     7c4:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     7c8:	00000000 	nop
     7cc:	44804000 	mtc1	zero,$f8
     7d0:	3c014248 	lui	at,0x4248
     7d4:	44811000 	mtc1	at,$f2
     7d8:	4608003c 	c.lt.s	$f0,$f8
     7dc:	3c0141f0 	lui	at,0x41f0
     7e0:	44816000 	mtc1	at,$f12
     7e4:	45020004 	bc1fl	7f8 <func_80B11E78+0x270>
     7e8:	46020380 	add.s	$f14,$f0,$f2
     7ec:	10000002 	b	7f8 <func_80B11E78+0x270>
     7f0:	46020381 	sub.s	$f14,$f0,$f2
     7f4:	46020380 	add.s	$f14,$f0,$f2
     7f8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     7fc:	e7ae0050 	swc1	$f14,80(sp)
     800:	44805000 	mtc1	zero,$f10
     804:	c7ae0050 	lwc1	$f14,80(sp)
     808:	3c0141f0 	lui	at,0x41f0
     80c:	460a003c 	c.lt.s	$f0,$f10
     810:	00000000 	nop
     814:	45020006 	bc1fl	830 <func_80B11E78+0x2a8>
     818:	44819000 	mtc1	at,$f18
     81c:	3c0141f0 	lui	at,0x41f0
     820:	44818000 	mtc1	at,$f16
     824:	10000004 	b	838 <func_80B11E78+0x2b0>
     828:	46100081 	sub.s	$f2,$f0,$f16
     82c:	44819000 	mtc1	at,$f18
     830:	00000000 	nop
     834:	46120080 	add.s	$f2,$f0,$f18
     838:	c60402dc 	lwc1	$f4,732(s0)
     83c:	c60802e4 	lwc1	$f8,740(s0)
     840:	460e2180 	add.s	$f6,$f4,$f14
     844:	46024280 	add.s	$f10,$f8,$f2
     848:	e60602e8 	swc1	$f6,744(s0)
     84c:	1000001b 	b	8bc <func_80B11E78+0x334>
     850:	e60a02f0 	swc1	$f10,752(s0)
     854:	96090088 	lhu	t1,136(s0)
     858:	24080004 	li	t0,4
     85c:	a608025c 	sh	t0,604(s0)
     860:	312a0001 	andi	t2,t1,0x1
     864:	11400015 	beqz	t2,8bc <func_80B11E78+0x334>
     868:	3c014020 	lui	at,0x4020
     86c:	44818000 	mtc1	at,$f16
     870:	3c014120 	lui	at,0x4120
     874:	44816000 	mtc1	at,$f12
     878:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     87c:	e6100060 	swc1	$f16,96(s0)
     880:	3c013f80 	lui	at,0x3f80
     884:	44819000 	mtc1	at,$f18
     888:	00000000 	nop
     88c:	4612003c 	c.lt.s	$f0,$f18
     890:	00000000 	nop
     894:	4502000a 	bc1fl	8c0 <func_80B11E78+0x338>
     898:	860d025c 	lh	t5,604(s0)
     89c:	860b029e 	lh	t3,670(s0)
     8a0:	3c014120 	lui	at,0x4120
     8a4:	55600006 	bnezl	t3,8c0 <func_80B11E78+0x338>
     8a8:	860d025c 	lh	t5,604(s0)
     8ac:	44812000 	mtc1	at,$f4
     8b0:	240c000c 	li	t4,12
     8b4:	a60c025c 	sh	t4,604(s0)
     8b8:	e6040060 	swc1	$f4,96(s0)
     8bc:	860d025c 	lh	t5,604(s0)
     8c0:	240e0001 	li	t6,1
     8c4:	26040024 	addiu	a0,s0,36
     8c8:	11a00048 	beqz	t5,9ec <func_80B11E78+0x464>
     8cc:	3c063f80 	lui	a2,0x3f80
     8d0:	a7ae004a 	sh	t6,74(sp)
     8d4:	8e0702cc 	lw	a3,716(s0)
     8d8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     8dc:	8e0502e8 	lw	a1,744(s0)
     8e0:	2604002c 	addiu	a0,s0,44
     8e4:	8e0502f0 	lw	a1,752(s0)
     8e8:	3c063f80 	lui	a2,0x3f80
     8ec:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     8f0:	8e0702cc 	lw	a3,716(s0)
     8f4:	3c073e99 	lui	a3,0x3e99
     8f8:	34e7999a 	ori	a3,a3,0x999a
     8fc:	260402cc 	addiu	a0,s0,716
     900:	3c054040 	lui	a1,0x4040
     904:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     908:	3c063f80 	lui	a2,0x3f80
     90c:	c60602e8 	lwc1	$f6,744(s0)
     910:	c6080024 	lwc1	$f8,36(s0)
     914:	3c014120 	lui	at,0x4120
     918:	44811000 	mtc1	at,$f2
     91c:	46083301 	sub.s	$f12,$f6,$f8
     920:	c60a02f0 	lwc1	$f10,752(s0)
     924:	c610002c 	lwc1	$f16,44(s0)
     928:	46006005 	abs.s	$f0,$f12
     92c:	46105381 	sub.s	$f14,$f10,$f16
     930:	4602003c 	c.lt.s	$f0,$f2
     934:	46007005 	abs.s	$f0,$f14
     938:	45020004 	bc1fl	94c <func_80B11E78+0x3c4>
     93c:	4602003c 	c.lt.s	$f0,$f2
     940:	44806000 	mtc1	zero,$f12
     944:	00000000 	nop
     948:	4602003c 	c.lt.s	$f0,$f2
     94c:	44800000 	mtc1	zero,$f0
     950:	45020004 	bc1fl	964 <func_80B11E78+0x3dc>
     954:	46006032 	c.eq.s	$f12,$f0
     958:	44807000 	mtc1	zero,$f14
     95c:	00000000 	nop
     960:	46006032 	c.eq.s	$f12,$f0
     964:	00000000 	nop
     968:	45000007 	bc1f	988 <func_80B11E78+0x400>
     96c:	00000000 	nop
     970:	46007032 	c.eq.s	$f14,$f0
     974:	240f0007 	li	t7,7
     978:	45000003 	bc1f	988 <func_80B11E78+0x400>
     97c:	00000000 	nop
     980:	a600025c 	sh	zero,604(s0)
     984:	a60f0294 	sh	t7,660(s0)
     988:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     98c:	00000000 	nop
     990:	3c010000 	lui	at,0x0
     994:	c43200f0 	lwc1	$f18,240(at)
     998:	c60802d0 	lwc1	$f8,720(s0)
     99c:	afa00010 	sw	zero,16(sp)
     9a0:	46120102 	mul.s	$f4,$f0,$f18
     9a4:	4600428d 	trunc.w.s	$f10,$f8
     9a8:	26040032 	addiu	a0,s0,50
     9ac:	24060003 	li	a2,3
     9b0:	44075000 	mfc1	a3,$f10
     9b4:	4600218d 	trunc.w.s	$f6,$f4
     9b8:	00073c00 	sll	a3,a3,0x10
     9bc:	00073c03 	sra	a3,a3,0x10
     9c0:	44053000 	mfc1	a1,$f6
     9c4:	00000000 	nop
     9c8:	00052c00 	sll	a1,a1,0x10
     9cc:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     9d0:	00052c03 	sra	a1,a1,0x10
     9d4:	3c05461c 	lui	a1,0x461c
     9d8:	34a54000 	ori	a1,a1,0x4000
     9dc:	260402d0 	addiu	a0,s0,720
     9e0:	3c063f80 	lui	a2,0x3f80
     9e4:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     9e8:	3c07447a 	lui	a3,0x447a
     9ec:	86080260 	lh	t0,608(s0)
     9f0:	8fa9008c 	lw	t1,140(sp)
     9f4:	3c0a0001 	lui	t2,0x1
     9f8:	15000007 	bnez	t0,a18 <func_80B11E78+0x490>
     9fc:	01495021 	addu	t2,t2,t1
     a00:	02002025 	move	a0,s0
     a04:	8fa5008c 	lw	a1,140(sp)
     a08:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     a0c:	87a6004a 	lh	a2,74(sp)
     a10:	10000025 	b	aa8 <func_80B11E78+0x520>
     a14:	8fbf0034 	lw	ra,52(sp)
     a18:	8d4a1de4 	lw	t2,7652(t2)
     a1c:	3c0140a0 	lui	at,0x40a0
     a20:	260c0024 	addiu	t4,s0,36
     a24:	314b0003 	andi	t3,t2,0x3
     a28:	5560001f 	bnezl	t3,aa8 <func_80B11E78+0x520>
     a2c:	8fbf0034 	lw	ra,52(sp)
     a30:	44816000 	mtc1	at,$f12
     a34:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     a38:	afac003c 	sw	t4,60(sp)
     a3c:	3c010000 	lui	at,0x0
     a40:	c43000f4 	lwc1	$f16,244(at)
     a44:	8fad003c 	lw	t5,60(sp)
     a48:	e7a00080 	swc1	$f0,128(sp)
     a4c:	e7b00074 	swc1	$f16,116(sp)
     a50:	8daf0000 	lw	t7,0(t5)
     a54:	27a5005c 	addiu	a1,sp,92
     a58:	27b8006c 	addiu	t8,sp,108
     a5c:	acaf0000 	sw	t7,0(a1)
     a60:	8dae0004 	lw	t6,4(t5)
     a64:	27b90068 	addiu	t9,sp,104
     a68:	24080258 	li	t0,600
     a6c:	acae0004 	sw	t6,4(a1)
     a70:	8daf0008 	lw	t7,8(t5)
     a74:	24090028 	li	t1,40
     a78:	240a001e 	li	t2,30
     a7c:	acaf0008 	sw	t7,8(a1)
     a80:	afaa0020 	sw	t2,32(sp)
     a84:	afa9001c 	sw	t1,28(sp)
     a88:	afa80018 	sw	t0,24(sp)
     a8c:	afb90014 	sw	t9,20(sp)
     a90:	afb80010 	sw	t8,16(sp)
     a94:	8fa4008c 	lw	a0,140(sp)
     a98:	27a6007c 	addiu	a2,sp,124
     a9c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     aa0:	27a70070 	addiu	a3,sp,112
     aa4:	8fbf0034 	lw	ra,52(sp)
     aa8:	8fb00030 	lw	s0,48(sp)
     aac:	27bd0088 	addiu	sp,sp,136
     ab0:	03e00008 	jr	ra
     ab4:	00000000 	nop

00000ab8 <func_80B123A8>:
     ab8:	27bdffd0 	addiu	sp,sp,-48
     abc:	afb00028 	sw	s0,40(sp)
     ac0:	00808025 	move	s0,a0
     ac4:	afbf002c 	sw	ra,44(sp)
     ac8:	3c040000 	lui	a0,0x0
     acc:	afa50034 	sw	a1,52(sp)
     ad0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     ad4:	24840000 	addiu	a0,a0,0
     ad8:	44822000 	mtc1	v0,$f4
     adc:	3c01c120 	lui	at,0xc120
     ae0:	44814000 	mtc1	at,$f8
     ae4:	468021a0 	cvt.s.w	$f6,$f4
     ae8:	3c050000 	lui	a1,0x0
     aec:	24a50000 	addiu	a1,a1,0
     af0:	2604014c 	addiu	a0,s0,332
     af4:	3c063f80 	lui	a2,0x3f80
     af8:	24070000 	li	a3,0
     afc:	e7a60010 	swc1	$f6,16(sp)
     b00:	afa00014 	sw	zero,20(sp)
     b04:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     b08:	e7a80018 	swc1	$f8,24(sp)
     b0c:	3c010000 	lui	at,0x0
     b10:	c42000f8 	lwc1	$f0,248(at)
     b14:	3c010000 	lui	at,0x0
     b18:	c42200fc 	lwc1	$f2,252(at)
     b1c:	3c010000 	lui	at,0x0
     b20:	e6000288 	swc1	$f0,648(s0)
     b24:	e602027c 	swc1	$f2,636(s0)
     b28:	e60202b8 	swc1	$f2,696(s0)
     b2c:	c42a0100 	lwc1	$f10,256(at)
     b30:	3c0e0000 	lui	t6,0x0
     b34:	25ce0000 	addiu	t6,t6,0
     b38:	ae0e0250 	sw	t6,592(s0)
     b3c:	e60002b0 	swc1	$f0,688(s0)
     b40:	e6000268 	swc1	$f0,616(s0)
     b44:	e60002a8 	swc1	$f0,680(s0)
     b48:	e60002a4 	swc1	$f0,676(s0)
     b4c:	e600026c 	swc1	$f0,620(s0)
     b50:	e60202ac 	swc1	$f2,684(s0)
     b54:	e6020284 	swc1	$f2,644(s0)
     b58:	e60a02b4 	swc1	$f10,692(s0)
     b5c:	8fbf002c 	lw	ra,44(sp)
     b60:	8fb00028 	lw	s0,40(sp)
     b64:	27bd0030 	addiu	sp,sp,48
     b68:	03e00008 	jr	ra
     b6c:	00000000 	nop

00000b70 <func_80B12460>:
     b70:	27bdffd0 	addiu	sp,sp,-48
     b74:	afbf0024 	sw	ra,36(sp)
     b78:	afb00020 	sw	s0,32(sp)
     b7c:	afa50034 	sw	a1,52(sp)
     b80:	8ca81c44 	lw	t0,7236(a1)
     b84:	240f000a 	li	t7,10
     b88:	44800000 	mtc1	zero,$f0
     b8c:	a50f0110 	sh	t7,272(t0)
     b90:	9498029a 	lhu	t8,666(a0)
     b94:	00808025 	move	s0,a0
     b98:	46000406 	mov.s	$f16,$f0
     b9c:	2f010007 	sltiu	at,t8,7
     ba0:	102000d9 	beqz	at,f08 <func_80B12460+0x398>
     ba4:	0018c080 	sll	t8,t8,0x2
     ba8:	3c010000 	lui	at,0x0
     bac:	00380821 	addu	at,at,t8
     bb0:	8c380104 	lw	t8,260(at)
     bb4:	03000008 	jr	t8
     bb8:	00000000 	nop
     bbc:	24190002 	li	t9,2
     bc0:	24090001 	li	t1,1
     bc4:	a6190296 	sh	t9,662(s0)
     bc8:	e60002cc 	swc1	$f0,716(s0)
     bcc:	100000ce 	b	f08 <func_80B12460+0x398>
     bd0:	a609029a 	sh	t1,666(s0)
     bd4:	860a025c 	lh	t2,604(s0)
     bd8:	3c014000 	lui	at,0x4000
     bdc:	44810000 	mtc1	at,$f0
     be0:	3c014060 	lui	at,0x4060
     be4:	15400005 	bnez	t2,bfc <func_80B12460+0x8c>
     be8:	e6000068 	swc1	$f0,104(s0)
     bec:	44812000 	mtc1	at,$f4
     bf0:	240b0003 	li	t3,3
     bf4:	a60b025c 	sh	t3,604(s0)
     bf8:	e6040060 	swc1	$f4,96(s0)
     bfc:	860c025a 	lh	t4,602(s0)
     c00:	3c010000 	lui	at,0x0
     c04:	240a0002 	li	t2,2
     c08:	5580000a 	bnezl	t4,c34 <func_80B12460+0xc4>
     c0c:	86090298 	lh	t1,664(s0)
     c10:	860d0298 	lh	t5,664(s0)
     c14:	24190005 	li	t9,5
     c18:	a619025a 	sh	t9,602(s0)
     c1c:	25ae0001 	addiu	t6,t5,1
     c20:	a60e0298 	sh	t6,664(s0)
     c24:	860f0298 	lh	t7,664(s0)
     c28:	31f80001 	andi	t8,t7,0x1
     c2c:	a6180298 	sh	t8,664(s0)
     c30:	86090298 	lh	t1,664(s0)
     c34:	15200004 	bnez	t1,c48 <func_80B12460+0xd8>
     c38:	00000000 	nop
     c3c:	3c010000 	lui	at,0x0
     c40:	10000002 	b	c4c <func_80B12460+0xdc>
     c44:	c4300120 	lwc1	$f16,288(at)
     c48:	c4300124 	lwc1	$f16,292(at)
     c4c:	3c0142c8 	lui	at,0x42c8
     c50:	44813000 	mtc1	at,$f6
     c54:	c608002c 	lwc1	$f8,44(s0)
     c58:	3c010000 	lui	at,0x0
     c5c:	4608303c 	c.lt.s	$f6,$f8
     c60:	00000000 	nop
     c64:	450200a9 	bc1fl	f0c <func_80B12460+0x39c>
     c68:	c5120024 	lwc1	$f18,36(t0)
     c6c:	e6000068 	swc1	$f0,104(s0)
     c70:	c42a0128 	lwc1	$f10,296(at)
     c74:	3c0140a0 	lui	at,0x40a0
     c78:	44819000 	mtc1	at,$f18
     c7c:	a60a029a 	sh	t2,666(s0)
     c80:	e60a006c 	swc1	$f10,108(s0)
     c84:	100000a0 	b	f08 <func_80B12460+0x398>
     c88:	e6120060 	swc1	$f18,96(s0)
     c8c:	3c014220 	lui	at,0x4220
     c90:	44813000 	mtc1	at,$f6
     c94:	c504002c 	lwc1	$f4,44(t0)
     c98:	c60a002c 	lwc1	$f10,44(s0)
     c9c:	3c0142dc 	lui	at,0x42dc
     ca0:	46062201 	sub.s	$f8,$f4,$f6
     ca4:	460a403c 	c.lt.s	$f8,$f10
     ca8:	00000000 	nop
     cac:	45020003 	bc1fl	cbc <func_80B12460+0x14c>
     cb0:	960b0088 	lhu	t3,136(s0)
     cb4:	e6000068 	swc1	$f0,104(s0)
     cb8:	960b0088 	lhu	t3,136(s0)
     cbc:	316c0001 	andi	t4,t3,0x1
     cc0:	51800092 	beqzl	t4,f0c <func_80B12460+0x39c>
     cc4:	c5120024 	lwc1	$f18,36(t0)
     cc8:	44819000 	mtc1	at,$f18
     ccc:	c604002c 	lwc1	$f4,44(s0)
     cd0:	3c013f00 	lui	at,0x3f00
     cd4:	240f0001 	li	t7,1
     cd8:	4604903c 	c.lt.s	$f18,$f4
     cdc:	24180003 	li	t8,3
     ce0:	4502008a 	bc1fl	f0c <func_80B12460+0x39c>
     ce4:	c5120024 	lwc1	$f18,36(t0)
     ce8:	a6000256 	sh	zero,598(s0)
     cec:	a6000290 	sh	zero,656(s0)
     cf0:	44813000 	mtc1	at,$f6
     cf4:	860d0256 	lh	t5,598(s0)
     cf8:	860e0290 	lh	t6,656(s0)
     cfc:	e6000060 	swc1	$f0,96(s0)
     d00:	e600006c 	swc1	$f0,108(s0)
     d04:	e6000284 	swc1	$f0,644(s0)
     d08:	e600027c 	swc1	$f0,636(s0)
     d0c:	e6000278 	swc1	$f0,632(s0)
     d10:	e6000280 	swc1	$f0,640(s0)
     d14:	e6000288 	swc1	$f0,648(s0)
     d18:	a60f0296 	sh	t7,662(s0)
     d1c:	a618029a 	sh	t8,666(s0)
     d20:	e6060068 	swc1	$f6,104(s0)
     d24:	a60d0254 	sh	t5,596(s0)
     d28:	10000077 	b	f08 <func_80B12460+0x398>
     d2c:	a60e028e 	sh	t6,654(s0)
     d30:	3c014248 	lui	at,0x4248
     d34:	44815000 	mtc1	at,$f10
     d38:	c508002c 	lwc1	$f8,44(t0)
     d3c:	c604002c 	lwc1	$f4,44(s0)
     d40:	24020014 	li	v0,20
     d44:	460a4481 	sub.s	$f18,$f8,$f10
     d48:	2419003c 	li	t9,60
     d4c:	3c010000 	lui	at,0x0
     d50:	24090004 	li	t1,4
     d54:	4604903c 	c.lt.s	$f18,$f4
     d58:	00000000 	nop
     d5c:	4502006b 	bc1fl	f0c <func_80B12460+0x39c>
     d60:	c5120024 	lwc1	$f18,36(t0)
     d64:	e6000068 	swc1	$f0,104(s0)
     d68:	a6190262 	sh	t9,610(s0)
     d6c:	a602025a 	sh	v0,602(s0)
     d70:	c426012c 	lwc1	$f6,300(at)
     d74:	a609029a 	sh	t1,666(s0)
     d78:	10000063 	b	f08 <func_80B12460+0x398>
     d7c:	e6060264 	swc1	$f6,612(s0)
     d80:	860a025a 	lh	t2,602(s0)
     d84:	3c010000 	lui	at,0x0
     d88:	240b0004 	li	t3,4
     d8c:	1540005e 	bnez	t2,f08 <func_80B12460+0x398>
     d90:	02002025 	move	a0,s0
     d94:	c4220130 	lwc1	$f2,304(at)
     d98:	a60b0296 	sh	t3,662(s0)
     d9c:	3c010000 	lui	at,0x0
     da0:	c4280134 	lwc1	$f8,308(at)
     da4:	e600026c 	swc1	$f0,620(s0)
     da8:	e6000268 	swc1	$f0,616(s0)
     dac:	e6000284 	swc1	$f0,644(s0)
     db0:	e600027c 	swc1	$f0,636(s0)
     db4:	e6020280 	swc1	$f2,640(s0)
     db8:	e6020278 	swc1	$f2,632(s0)
     dbc:	e6080264 	swc1	$f8,612(s0)
     dc0:	e7b00028 	swc1	$f16,40(sp)
     dc4:	afa8002c 	sw	t0,44(sp)
     dc8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     dcc:	24052813 	li	a1,10259
     dd0:	8fa8002c 	lw	t0,44(sp)
     dd4:	c7b00028 	lwc1	$f16,40(sp)
     dd8:	240c001e 	li	t4,30
     ddc:	a60c025a 	sh	t4,602(s0)
     de0:	8602025a 	lh	v0,602(s0)
     de4:	240d0005 	li	t5,5
     de8:	a60d029a 	sh	t5,666(s0)
     dec:	a6020256 	sh	v0,598(s0)
     df0:	10000045 	b	f08 <func_80B12460+0x398>
     df4:	a6020254 	sh	v0,596(s0)
     df8:	8603025a 	lh	v1,602(s0)
     dfc:	24010001 	li	at,1
     e00:	240e0005 	li	t6,5
     e04:	1461000a 	bne	v1,at,e30 <func_80B12460+0x2c0>
     e08:	00000000 	nop
     e0c:	a6000258 	sh	zero,600(s0)
     e10:	86020258 	lh	v0,600(s0)
     e14:	3c013f80 	lui	at,0x3f80
     e18:	44815000 	mtc1	at,$f10
     e1c:	a60e0296 	sh	t6,662(s0)
     e20:	8603025a 	lh	v1,602(s0)
     e24:	a6020256 	sh	v0,598(s0)
     e28:	a6020254 	sh	v0,596(s0)
     e2c:	e60a0068 	swc1	$f10,104(s0)
     e30:	14600035 	bnez	v1,f08 <func_80B12460+0x398>
     e34:	3c0141f0 	lui	at,0x41f0
     e38:	c512002c 	lwc1	$f18,44(t0)
     e3c:	44812000 	mtc1	at,$f4
     e40:	c608002c 	lwc1	$f8,44(s0)
     e44:	3c070000 	lui	a3,0x0
     e48:	46049181 	sub.s	$f6,$f18,$f4
     e4c:	3c0f0000 	lui	t7,0x0
     e50:	24e70000 	addiu	a3,a3,0
     e54:	25ef0000 	addiu	t7,t7,0
     e58:	4608303c 	c.lt.s	$f6,$f8
     e5c:	2404680b 	li	a0,26635
     e60:	260500e4 	addiu	a1,s0,228
     e64:	24060004 	li	a2,4
     e68:	45020028 	bc1fl	f0c <func_80B12460+0x39c>
     e6c:	c5120024 	lwc1	$f18,36(t0)
     e70:	afa70010 	sw	a3,16(sp)
     e74:	afaf0014 	sw	t7,20(sp)
     e78:	afa8002c 	sw	t0,44(sp)
     e7c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     e80:	e7b00028 	swc1	$f16,40(sp)
     e84:	44800000 	mtc1	zero,$f0
     e88:	8fa8002c 	lw	t0,44(sp)
     e8c:	c7b00028 	lwc1	$f16,40(sp)
     e90:	24020014 	li	v0,20
     e94:	24180006 	li	t8,6
     e98:	a602025e 	sh	v0,606(s0)
     e9c:	a618029a 	sh	t8,666(s0)
     ea0:	10000019 	b	f08 <func_80B12460+0x398>
     ea4:	e6000068 	swc1	$f0,104(s0)
     ea8:	8619025e 	lh	t9,606(s0)
     eac:	24010001 	li	at,1
     eb0:	24020014 	li	v0,20
     eb4:	17210014 	bne	t9,at,f08 <func_80B12460+0x398>
     eb8:	8fa90034 	lw	t1,52(sp)
     ebc:	3c010001 	lui	at,0x1
     ec0:	00290821 	addu	at,at,t1
     ec4:	a0221e15 	sb	v0,7701(at)
     ec8:	8fab0034 	lw	t3,52(sp)
     ecc:	3c0a0000 	lui	t2,0x0
     ed0:	8d4a0000 	lw	t2,0(t2)
     ed4:	3c010001 	lui	at,0x1
     ed8:	002b0821 	addu	at,at,t3
     edc:	a42a1e1a 	sh	t2,7706(at)
     ee0:	8fac0034 	lw	t4,52(sp)
     ee4:	3c010001 	lui	at,0x1
     ee8:	240d0014 	li	t5,20
     eec:	002c0821 	addu	at,at,t4
     ef0:	a0201e5c 	sb	zero,7772(at)
     ef4:	a50d0110 	sh	t5,272(t0)
     ef8:	3c0e0000 	lui	t6,0x0
     efc:	25ce0000 	addiu	t6,t6,0
     f00:	a602025e 	sh	v0,606(s0)
     f04:	ae0e0250 	sw	t6,592(s0)
     f08:	c5120024 	lwc1	$f18,36(t0)
     f0c:	c60a0024 	lwc1	$f10,36(s0)
     f10:	c508002c 	lwc1	$f8,44(t0)
     f14:	c606002c 	lwc1	$f6,44(s0)
     f18:	460a9301 	sub.s	$f12,$f18,$f10
     f1c:	e7b00028 	swc1	$f16,40(sp)
     f20:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     f24:	46064381 	sub.s	$f14,$f8,$f6
     f28:	3c010000 	lui	at,0x0
     f2c:	c4280138 	lwc1	$f8,312(at)
     f30:	c7b00028 	lwc1	$f16,40(sp)
     f34:	26040032 	addiu	a0,s0,50
     f38:	46080282 	mul.s	$f10,$f0,$f8
     f3c:	24060005 	li	a2,5
     f40:	4600548d 	trunc.w.s	$f18,$f10
     f44:	44189000 	mfc1	t8,$f18
     f48:	c61202cc 	lwc1	$f18,716(s0)
     f4c:	afa00010 	sw	zero,16(sp)
     f50:	0018cc00 	sll	t9,t8,0x10
     f54:	00194c03 	sra	t1,t9,0x10
     f58:	44892000 	mtc1	t1,$f4
     f5c:	00000000 	nop
     f60:	468021a0 	cvt.s.w	$f6,$f4
     f64:	4600910d 	trunc.w.s	$f4,$f18
     f68:	46103200 	add.s	$f8,$f6,$f16
     f6c:	44072000 	mfc1	a3,$f4
     f70:	4600428d 	trunc.w.s	$f10,$f8
     f74:	00073c00 	sll	a3,a3,0x10
     f78:	00073c03 	sra	a3,a3,0x10
     f7c:	44055000 	mfc1	a1,$f10
     f80:	00000000 	nop
     f84:	00052c00 	sll	a1,a1,0x10
     f88:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     f8c:	00052c03 	sra	a1,a1,0x10
     f90:	3c05453b 	lui	a1,0x453b
     f94:	34a58000 	ori	a1,a1,0x8000
     f98:	260402cc 	addiu	a0,s0,716
     f9c:	3c063f80 	lui	a2,0x3f80
     fa0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     fa4:	3c0743fa 	lui	a3,0x43fa
     fa8:	86060296 	lh	a2,662(s0)
     fac:	24010002 	li	at,2
     fb0:	240c000a 	li	t4,10
     fb4:	14c10005 	bne	a2,at,fcc <func_80B12460+0x45c>
     fb8:	02002025 	move	a0,s0
     fbc:	a60c0256 	sh	t4,598(s0)
     fc0:	860d0256 	lh	t5,598(s0)
     fc4:	86060296 	lh	a2,662(s0)
     fc8:	a60d0254 	sh	t5,596(s0)
     fcc:	0c000000 	jal	0 <EnSyatekiNiw_Init>
     fd0:	8fa50034 	lw	a1,52(sp)
     fd4:	8fbf0024 	lw	ra,36(sp)
     fd8:	8fb00020 	lw	s0,32(sp)
     fdc:	27bd0030 	addiu	sp,sp,48
     fe0:	03e00008 	jr	ra
     fe4:	00000000 	nop

00000fe8 <func_80B128D8>:
     fe8:	afa50004 	sw	a1,4(sp)
     fec:	848e025e 	lh	t6,606(a0)
     ff0:	24010001 	li	at,1
     ff4:	15c10002 	bne	t6,at,1000 <func_80B128D8+0x18>
     ff8:	3c010000 	lui	at,0x0
     ffc:	a42013ce 	sh	zero,5070(at)
    1000:	03e00008 	jr	ra
    1004:	00000000 	nop

00001008 <func_80B128F8>:
    1008:	27bdffd8 	addiu	sp,sp,-40
    100c:	afb00018 	sw	s0,24(sp)
    1010:	00808025 	move	s0,a0
    1014:	afbf001c 	sw	ra,28(sp)
    1018:	afa5002c 	sw	a1,44(sp)
    101c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1020:	8e0502d4 	lw	a1,724(s0)
    1024:	8fa4002c 	lw	a0,44(sp)
    1028:	02002825 	move	a1,s0
    102c:	27a60026 	addiu	a2,sp,38
    1030:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1034:	27a70024 	addiu	a3,sp,36
    1038:	3c014348 	lui	at,0x4348
    103c:	44812000 	mtc1	at,$f4
    1040:	c60000ec 	lwc1	$f0,236(s0)
    1044:	3c014448 	lui	at,0x4448
    1048:	4600203c 	c.lt.s	$f4,$f0
    104c:	00000000 	nop
    1050:	45020026 	bc1fl	10ec <func_80B128F8+0xe4>
    1054:	8fbf001c 	lw	ra,28(sp)
    1058:	44813000 	mtc1	at,$f6
    105c:	87a20026 	lh	v0,38(sp)
    1060:	4606003c 	c.lt.s	$f0,$f6
    1064:	00000000 	nop
    1068:	45020020 	bc1fl	10ec <func_80B128F8+0xe4>
    106c:	8fbf001c 	lw	ra,28(sp)
    1070:	1840001d 	blez	v0,10e8 <func_80B128F8+0xe0>
    1074:	28410140 	slti	at,v0,320
    1078:	1020001b 	beqz	at,10e8 <func_80B128F8+0xe0>
    107c:	87a20024 	lh	v0,36(sp)
    1080:	18400019 	blez	v0,10e8 <func_80B128F8+0xe0>
    1084:	284100f0 	slti	at,v0,240
    1088:	10200017 	beqz	at,10e8 <func_80B128F8+0xe0>
    108c:	3c0140a0 	lui	at,0x40a0
    1090:	44814000 	mtc1	at,$f8
    1094:	3c010000 	lui	at,0x0
    1098:	e6080068 	swc1	$f8,104(s0)
    109c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    10a0:	c42c013c 	lwc1	$f12,316(at)
    10a4:	4600028d 	trunc.w.s	$f10,$f0
    10a8:	3c0145fa 	lui	at,0x45fa
    10ac:	44816000 	mtc1	at,$f12
    10b0:	440f5000 	mfc1	t7,$f10
    10b4:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    10b8:	a60f0298 	sh	t7,664(s0)
    10bc:	3c010000 	lui	at,0x0
    10c0:	c4300140 	lwc1	$f16,320(at)
    10c4:	3c080000 	lui	t0,0x0
    10c8:	2418001e 	li	t8,30
    10cc:	46100480 	add.s	$f18,$f0,$f16
    10d0:	24190064 	li	t9,100
    10d4:	25080000 	addiu	t0,t0,0
    10d8:	a6180262 	sh	t8,610(s0)
    10dc:	e61202d8 	swc1	$f18,728(s0)
    10e0:	a619025e 	sh	t9,606(s0)
    10e4:	ae080250 	sw	t0,592(s0)
    10e8:	8fbf001c 	lw	ra,28(sp)
    10ec:	8fb00018 	lw	s0,24(sp)
    10f0:	27bd0028 	addiu	sp,sp,40
    10f4:	03e00008 	jr	ra
    10f8:	00000000 	nop

000010fc <func_80B129EC>:
    10fc:	27bdffc8 	addiu	sp,sp,-56
    1100:	afb00020 	sw	s0,32(sp)
    1104:	00808025 	move	s0,a0
    1108:	afbf0024 	sw	ra,36(sp)
    110c:	afa5003c 	sw	a1,60(sp)
    1110:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1114:	8e0502d4 	lw	a1,724(s0)
    1118:	8fa4003c 	lw	a0,60(sp)
    111c:	02002825 	move	a1,s0
    1120:	27a6002e 	addiu	a2,sp,46
    1124:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1128:	27a7002c 	addiu	a3,sp,44
    112c:	860e025e 	lh	t6,606(s0)
    1130:	3c01c28c 	lui	at,0xc28c
    1134:	11c00010 	beqz	t6,1178 <func_80B129EC+0x7c>
    1138:	00000000 	nop
    113c:	c60400ec 	lwc1	$f4,236(s0)
    1140:	44813000 	mtc1	at,$f6
    1144:	87a2002e 	lh	v0,46(sp)
    1148:	4606203c 	c.lt.s	$f4,$f6
    114c:	00000000 	nop
    1150:	45010009 	bc1t	1178 <func_80B129EC+0x7c>
    1154:	00000000 	nop
    1158:	04400007 	bltz	v0,1178 <func_80B129EC+0x7c>
    115c:	28410141 	slti	at,v0,321
    1160:	10200005 	beqz	at,1178 <func_80B129EC+0x7c>
    1164:	87a2002c 	lh	v0,44(sp)
    1168:	04400003 	bltz	v0,1178 <func_80B129EC+0x7c>
    116c:	284100f1 	slti	at,v0,241
    1170:	54200006 	bnezl	at,118c <func_80B129EC+0x90>
    1174:	8618025c 	lh	t8,604(s0)
    1178:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    117c:	02002025 	move	a0,s0
    1180:	10000048 	b	12a4 <func_80B129EC+0x1a8>
    1184:	8fbf0024 	lw	ra,36(sp)
    1188:	8618025c 	lh	t8,604(s0)
    118c:	240f0001 	li	t7,1
    1190:	a60f02a0 	sh	t7,672(s0)
    1194:	57000022 	bnezl	t8,1220 <func_80B129EC+0x124>
    1198:	86080298 	lh	t0,664(s0)
    119c:	86190298 	lh	t9,664(s0)
    11a0:	3c014080 	lui	at,0x4080
    11a4:	44816000 	mtc1	at,$f12
    11a8:	27280001 	addiu	t0,t9,1
    11ac:	a6080298 	sh	t0,664(s0)
    11b0:	86090298 	lh	t1,664(s0)
    11b4:	312a0001 	andi	t2,t1,0x1
    11b8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    11bc:	a60a0298 	sh	t2,664(s0)
    11c0:	4600020d 	trunc.w.s	$f8,$f0
    11c4:	3c0140a0 	lui	at,0x40a0
    11c8:	44816000 	mtc1	at,$f12
    11cc:	440e4000 	mfc1	t6,$f8
    11d0:	00000000 	nop
    11d4:	25cf0005 	addiu	t7,t6,5
    11d8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    11dc:	a60f025c 	sh	t7,604(s0)
    11e0:	3c013f80 	lui	at,0x3f80
    11e4:	44815000 	mtc1	at,$f10
    11e8:	00000000 	nop
    11ec:	460a003c 	c.lt.s	$f0,$f10
    11f0:	00000000 	nop
    11f4:	4502000a 	bc1fl	1220 <func_80B129EC+0x124>
    11f8:	86080298 	lh	t0,664(s0)
    11fc:	96180088 	lhu	t8,136(s0)
    1200:	3c014080 	lui	at,0x4080
    1204:	33190001 	andi	t9,t8,0x1
    1208:	53200005 	beqzl	t9,1220 <func_80B129EC+0x124>
    120c:	86080298 	lh	t0,664(s0)
    1210:	44818000 	mtc1	at,$f16
    1214:	00000000 	nop
    1218:	e6100060 	swc1	$f16,96(s0)
    121c:	86080298 	lh	t0,664(s0)
    1220:	3c010000 	lui	at,0x0
    1224:	15000004 	bnez	t0,1238 <func_80B129EC+0x13c>
    1228:	00000000 	nop
    122c:	3c010000 	lui	at,0x0
    1230:	10000002 	b	123c <func_80B129EC+0x140>
    1234:	c4220144 	lwc1	$f2,324(at)
    1238:	c4220148 	lwc1	$f2,328(at)
    123c:	c61202d8 	lwc1	$f18,728(s0)
    1240:	c60602cc 	lwc1	$f6,716(s0)
    1244:	afa00010 	sw	zero,16(sp)
    1248:	46029000 	add.s	$f0,$f18,$f2
    124c:	26040032 	addiu	a0,s0,50
    1250:	24060003 	li	a2,3
    1254:	4600320d 	trunc.w.s	$f8,$f6
    1258:	4600010d 	trunc.w.s	$f4,$f0
    125c:	44074000 	mfc1	a3,$f8
    1260:	44052000 	mfc1	a1,$f4
    1264:	00073c00 	sll	a3,a3,0x10
    1268:	00073c03 	sra	a3,a3,0x10
    126c:	00052c00 	sll	a1,a1,0x10
    1270:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1274:	00052c03 	sra	a1,a1,0x10
    1278:	3c05453b 	lui	a1,0x453b
    127c:	34a58000 	ori	a1,a1,0x8000
    1280:	260402cc 	addiu	a0,s0,716
    1284:	3c063f80 	lui	a2,0x3f80
    1288:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    128c:	3c0743fa 	lui	a3,0x43fa
    1290:	02002025 	move	a0,s0
    1294:	8fa5003c 	lw	a1,60(sp)
    1298:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    129c:	24060002 	li	a2,2
    12a0:	8fbf0024 	lw	ra,36(sp)
    12a4:	8fb00020 	lw	s0,32(sp)
    12a8:	27bd0038 	addiu	sp,sp,56
    12ac:	03e00008 	jr	ra
    12b0:	00000000 	nop

000012b4 <func_80B12BA4>:
    12b4:	27bdffe8 	addiu	sp,sp,-24
    12b8:	afbf0014 	sw	ra,20(sp)
    12bc:	afa5001c 	sw	a1,28(sp)
    12c0:	9082030d 	lbu	v0,781(a0)
    12c4:	304e0002 	andi	t6,v0,0x2
    12c8:	51c0002b 	beqzl	t6,1378 <func_80B12BA4+0xc4>
    12cc:	8fbf0014 	lw	ra,20(sp)
    12d0:	8483029e 	lh	v1,670(a0)
    12d4:	304ffffd 	andi	t7,v0,0xfffd
    12d8:	a08f030d 	sb	t7,781(a0)
    12dc:	10600005 	beqz	v1,12f4 <func_80B12BA4+0x40>
    12e0:	24020001 	li	v0,1
    12e4:	10620016 	beq	v1,v0,1340 <func_80B12BA4+0x8c>
    12e8:	2409001e 	li	t1,30
    12ec:	10000022 	b	1378 <func_80B12BA4+0xc4>
    12f0:	8fbf0014 	lw	ra,20(sp)
    12f4:	8498029c 	lh	t8,668(a0)
    12f8:	2419001e 	li	t9,30
    12fc:	24052812 	li	a1,10258
    1300:	5700001d 	bnezl	t8,1378 <func_80B12BA4+0xc4>
    1304:	8fbf0014 	lw	ra,20(sp)
    1308:	a4990262 	sh	t9,610(a0)
    130c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1310:	afa40018 	sw	a0,24(sp)
    1314:	8fa40018 	lw	a0,24(sp)
    1318:	3c01c040 	lui	at,0xc040
    131c:	44812000 	mtc1	at,$f4
    1320:	3c080000 	lui	t0,0x0
    1324:	24020001 	li	v0,1
    1328:	25080000 	addiu	t0,t0,0
    132c:	a482029c 	sh	v0,668(a0)
    1330:	a48202a0 	sh	v0,672(a0)
    1334:	ac880250 	sw	t0,592(a0)
    1338:	1000000e 	b	1374 <func_80B12BA4+0xc0>
    133c:	e484006c 	swc1	$f4,108(a0)
    1340:	240a0001 	li	t2,1
    1344:	a4890262 	sh	t1,610(a0)
    1348:	a08a02f8 	sb	t2,760(a0)
    134c:	afa40018 	sw	a0,24(sp)
    1350:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1354:	24052812 	li	a1,10258
    1358:	8fa40018 	lw	a0,24(sp)
    135c:	240b0064 	li	t3,100
    1360:	24020001 	li	v0,1
    1364:	a48b0260 	sh	t3,608(a0)
    1368:	848c0260 	lh	t4,608(a0)
    136c:	a48202a0 	sh	v0,672(a0)
    1370:	a48c025e 	sh	t4,606(a0)
    1374:	8fbf0014 	lw	ra,20(sp)
    1378:	27bd0018 	addiu	sp,sp,24
    137c:	03e00008 	jr	ra
    1380:	00000000 	nop

00001384 <EnSyatekiNiw_Update>:
    1384:	27bdff58 	addiu	sp,sp,-168
    1388:	3c0f0000 	lui	t7,0x0
    138c:	afbf004c 	sw	ra,76(sp)
    1390:	afb10048 	sw	s1,72(sp)
    1394:	afb00044 	sw	s0,68(sp)
    1398:	f7bc0038 	sdc1	$f28,56(sp)
    139c:	f7ba0030 	sdc1	$f26,48(sp)
    13a0:	f7b80028 	sdc1	$f24,40(sp)
    13a4:	f7b60020 	sdc1	$f22,32(sp)
    13a8:	f7b40018 	sdc1	$f20,24(sp)
    13ac:	afa500ac 	sw	a1,172(sp)
    13b0:	25ef0078 	addiu	t7,t7,120
    13b4:	8df90000 	lw	t9,0(t7)
    13b8:	27ae0090 	addiu	t6,sp,144
    13bc:	8df80004 	lw	t8,4(t7)
    13c0:	add90000 	sw	t9,0(t6)
    13c4:	8df90008 	lw	t9,8(t7)
    13c8:	3c090000 	lui	t1,0x0
    13cc:	25290084 	addiu	t1,t1,132
    13d0:	add80004 	sw	t8,4(t6)
    13d4:	add90008 	sw	t9,8(t6)
    13d8:	8d2b0000 	lw	t3,0(t1)
    13dc:	27a80084 	addiu	t0,sp,132
    13e0:	8d2a0004 	lw	t2,4(t1)
    13e4:	ad0b0000 	sw	t3,0(t0)
    13e8:	8d2b0008 	lw	t3,8(t1)
    13ec:	ad0a0004 	sw	t2,4(t0)
    13f0:	00808825 	move	s1,a0
    13f4:	ad0b0008 	sw	t3,8(t0)
    13f8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    13fc:	8fa500ac 	lw	a1,172(sp)
    1400:	862c028c 	lh	t4,652(s1)
    1404:	86220254 	lh	v0,596(s1)
    1408:	3c014170 	lui	at,0x4170
    140c:	258d0001 	addiu	t5,t4,1
    1410:	10400003 	beqz	v0,1420 <EnSyatekiNiw_Update+0x9c>
    1414:	a62d028c 	sh	t5,652(s1)
    1418:	244effff 	addiu	t6,v0,-1
    141c:	a62e0254 	sh	t6,596(s1)
    1420:	86220258 	lh	v0,600(s1)
    1424:	10400002 	beqz	v0,1430 <EnSyatekiNiw_Update+0xac>
    1428:	244fffff 	addiu	t7,v0,-1
    142c:	a62f0258 	sh	t7,600(s1)
    1430:	8622025a 	lh	v0,602(s1)
    1434:	10400002 	beqz	v0,1440 <EnSyatekiNiw_Update+0xbc>
    1438:	2458ffff 	addiu	t8,v0,-1
    143c:	a638025a 	sh	t8,602(s1)
    1440:	8622025c 	lh	v0,604(s1)
    1444:	10400002 	beqz	v0,1450 <EnSyatekiNiw_Update+0xcc>
    1448:	2459ffff 	addiu	t9,v0,-1
    144c:	a639025c 	sh	t9,604(s1)
    1450:	8622025e 	lh	v0,606(s1)
    1454:	10400002 	beqz	v0,1460 <EnSyatekiNiw_Update+0xdc>
    1458:	2448ffff 	addiu	t0,v0,-1
    145c:	a628025e 	sh	t0,606(s1)
    1460:	86220262 	lh	v0,610(s1)
    1464:	10400002 	beqz	v0,1470 <EnSyatekiNiw_Update+0xec>
    1468:	2449ffff 	addiu	t1,v0,-1
    146c:	a6290262 	sh	t1,610(s1)
    1470:	86220260 	lh	v0,608(s1)
    1474:	10400002 	beqz	v0,1480 <EnSyatekiNiw_Update+0xfc>
    1478:	244affff 	addiu	t2,v0,-1
    147c:	a62a0260 	sh	t2,608(s1)
    1480:	8a2c0030 	lwl	t4,48(s1)
    1484:	9a2c0033 	lwr	t4,51(s1)
    1488:	44812000 	mtc1	at,$f4
    148c:	8e390250 	lw	t9,592(s1)
    1490:	aa2c00b4 	swl	t4,180(s1)
    1494:	ba2c00b7 	swr	t4,183(s1)
    1498:	962c0034 	lhu	t4,52(s1)
    149c:	e62400c4 	swc1	$f4,196(s1)
    14a0:	02202025 	move	a0,s1
    14a4:	a62c00b8 	sh	t4,184(s1)
    14a8:	0320f809 	jalr	t9
    14ac:	8fa500ac 	lw	a1,172(sp)
    14b0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    14b4:	02202025 	move	a0,s1
    14b8:	3c0141a0 	lui	at,0x41a0
    14bc:	44810000 	mtc1	at,$f0
    14c0:	3c014270 	lui	at,0x4270
    14c4:	44813000 	mtc1	at,$f6
    14c8:	240d001d 	li	t5,29
    14cc:	44060000 	mfc1	a2,$f0
    14d0:	44070000 	mfc1	a3,$f0
    14d4:	afad0014 	sw	t5,20(sp)
    14d8:	8fa400ac 	lw	a0,172(sp)
    14dc:	02202825 	move	a1,s1
    14e0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    14e4:	e7a60010 	swc1	$f6,16(sp)
    14e8:	862e02a0 	lh	t6,672(s1)
    14ec:	3c014100 	lui	at,0x4100
    14f0:	51c0003f 	beqzl	t6,15f0 <EnSyatekiNiw_Update+0x26c>
    14f4:	02202025 	move	a0,s1
    14f8:	4481e000 	mtc1	at,$f28
    14fc:	3c014000 	lui	at,0x4000
    1500:	4481c000 	mtc1	at,$f24
    1504:	3c014040 	lui	at,0x4040
    1508:	4481b000 	mtc1	at,$f22
    150c:	3c014120 	lui	at,0x4120
    1510:	4481a000 	mtc1	at,$f20
    1514:	4480d000 	mtc1	zero,$f26
    1518:	00008025 	move	s0,zero
    151c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1520:	4600a306 	mov.s	$f12,$f20
    1524:	c6280024 	lwc1	$f8,36(s1)
    1528:	4600a306 	mov.s	$f12,$f20
    152c:	46080280 	add.s	$f10,$f0,$f8
    1530:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1534:	e7aa0078 	swc1	$f10,120(sp)
    1538:	3c0141a0 	lui	at,0x41a0
    153c:	44819000 	mtc1	at,$f18
    1540:	c6300028 	lwc1	$f16,40(s1)
    1544:	4600a306 	mov.s	$f12,$f20
    1548:	46128100 	add.s	$f4,$f16,$f18
    154c:	46040180 	add.s	$f6,$f0,$f4
    1550:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1554:	e7a6007c 	swc1	$f6,124(sp)
    1558:	c628002c 	lwc1	$f8,44(s1)
    155c:	4600b306 	mov.s	$f12,$f22
    1560:	46080280 	add.s	$f10,$f0,$f8
    1564:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1568:	e7aa0080 	swc1	$f10,128(sp)
    156c:	e7a0006c 	swc1	$f0,108(sp)
    1570:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1574:	4600c306 	mov.s	$f12,$f24
    1578:	3c013f00 	lui	at,0x3f00
    157c:	44818000 	mtc1	at,$f16
    1580:	4600b306 	mov.s	$f12,$f22
    1584:	46100482 	mul.s	$f18,$f0,$f16
    1588:	46189100 	add.s	$f4,$f18,$f24
    158c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1590:	e7a40070 	swc1	$f4,112(sp)
    1594:	3c010000 	lui	at,0x0
    1598:	c426014c 	lwc1	$f6,332(at)
    159c:	e7a00074 	swc1	$f0,116(sp)
    15a0:	e7ba0060 	swc1	$f26,96(sp)
    15a4:	e7ba0068 	swc1	$f26,104(sp)
    15a8:	4600e306 	mov.s	$f12,$f28
    15ac:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    15b0:	e7a60064 	swc1	$f6,100(sp)
    15b4:	461c0200 	add.s	$f8,$f0,$f28
    15b8:	02202025 	move	a0,s1
    15bc:	27a50078 	addiu	a1,sp,120
    15c0:	27a6006c 	addiu	a2,sp,108
    15c4:	e7a80010 	swc1	$f8,16(sp)
    15c8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    15cc:	27a70060 	addiu	a3,sp,96
    15d0:	26100001 	addiu	s0,s0,1
    15d4:	00108400 	sll	s0,s0,0x10
    15d8:	00108403 	sra	s0,s0,0x10
    15dc:	2a010014 	slti	at,s0,20
    15e0:	1420ffce 	bnez	at,151c <EnSyatekiNiw_Update+0x198>
    15e4:	00000000 	nop
    15e8:	a62002a0 	sh	zero,672(s1)
    15ec:	02202025 	move	a0,s1
    15f0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    15f4:	8fa500ac 	lw	a1,172(sp)
    15f8:	862f0262 	lh	t7,610(s1)
    15fc:	55e00012 	bnezl	t7,1648 <EnSyatekiNiw_Update+0x2c4>
    1600:	8622029e 	lh	v0,670(s1)
    1604:	8e280250 	lw	t0,592(s1)
    1608:	3c180000 	lui	t8,0x0
    160c:	27180000 	addiu	t8,t8,0
    1610:	17080008 	bne	t8,t0,1634 <EnSyatekiNiw_Update+0x2b0>
    1614:	240a001e 	li	t2,30
    1618:	2409012c 	li	t1,300
    161c:	a6290262 	sh	t1,610(s1)
    1620:	02202025 	move	a0,s1
    1624:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1628:	24052811 	li	a1,10257
    162c:	10000006 	b	1648 <EnSyatekiNiw_Update+0x2c4>
    1630:	8622029e 	lh	v0,670(s1)
    1634:	a62a0262 	sh	t2,610(s1)
    1638:	02202025 	move	a0,s1
    163c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1640:	24052812 	li	a1,10258
    1644:	8622029e 	lh	v0,670(s1)
    1648:	00008025 	move	s0,zero
    164c:	8fab00ac 	lw	t3,172(sp)
    1650:	10400006 	beqz	v0,166c <EnSyatekiNiw_Update+0x2e8>
    1654:	3c0c0001 	lui	t4,0x1
    1658:	24010001 	li	at,1
    165c:	5041000a 	beql	v0,at,1688 <EnSyatekiNiw_Update+0x304>
    1660:	24100001 	li	s0,1
    1664:	10000008 	b	1688 <EnSyatekiNiw_Update+0x304>
    1668:	00000000 	nop
    166c:	018b6021 	addu	t4,t4,t3
    1670:	818c1e5c 	lb	t4,7772(t4)
    1674:	11800004 	beqz	t4,1688 <EnSyatekiNiw_Update+0x304>
    1678:	00000000 	nop
    167c:	10000002 	b	1688 <EnSyatekiNiw_Update+0x304>
    1680:	24100001 	li	s0,1
    1684:	24100001 	li	s0,1
    1688:	1200000f 	beqz	s0,16c8 <EnSyatekiNiw_Update+0x344>
    168c:	02202025 	move	a0,s1
    1690:	263002fc 	addiu	s0,s1,764
    1694:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1698:	02002825 	move	a1,s0
    169c:	8fa400ac 	lw	a0,172(sp)
    16a0:	3c010001 	lui	at,0x1
    16a4:	34211e60 	ori	at,at,0x1e60
    16a8:	00812821 	addu	a1,a0,at
    16ac:	afa50054 	sw	a1,84(sp)
    16b0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    16b4:	02003025 	move	a2,s0
    16b8:	8fa50054 	lw	a1,84(sp)
    16bc:	8fa400ac 	lw	a0,172(sp)
    16c0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    16c4:	02003025 	move	a2,s0
    16c8:	8fbf004c 	lw	ra,76(sp)
    16cc:	d7b40018 	ldc1	$f20,24(sp)
    16d0:	d7b60020 	ldc1	$f22,32(sp)
    16d4:	d7b80028 	ldc1	$f24,40(sp)
    16d8:	d7ba0030 	ldc1	$f26,48(sp)
    16dc:	d7bc0038 	ldc1	$f28,56(sp)
    16e0:	8fb00044 	lw	s0,68(sp)
    16e4:	8fb10048 	lw	s1,72(sp)
    16e8:	03e00008 	jr	ra
    16ec:	27bd00a8 	addiu	sp,sp,168

000016f0 <SyatekiNiw_OverrideLimbDraw>:
    16f0:	27bdfff0 	addiu	sp,sp,-16
    16f4:	3c0f0000 	lui	t7,0x0
    16f8:	afa40010 	sw	a0,16(sp)
    16fc:	afa60018 	sw	a2,24(sp)
    1700:	afa7001c 	sw	a3,28(sp)
    1704:	25ef0090 	addiu	t7,t7,144
    1708:	8df90000 	lw	t9,0(t7)
    170c:	27ae0000 	addiu	t6,sp,0
    1710:	8df80004 	lw	t8,4(t7)
    1714:	add90000 	sw	t9,0(t6)
    1718:	8df90008 	lw	t9,8(t7)
    171c:	2401000d 	li	at,13
    1720:	add80004 	sw	t8,4(t6)
    1724:	14a1000a 	bne	a1,at,1750 <SyatekiNiw_OverrideLimbDraw+0x60>
    1728:	add90008 	sw	t9,8(t6)
    172c:	8fa20024 	lw	v0,36(sp)
    1730:	8fa30020 	lw	v1,32(sp)
    1734:	c44402bc 	lwc1	$f4,700(v0)
    1738:	84680002 	lh	t0,2(v1)
    173c:	4600218d 	trunc.w.s	$f6,$f4
    1740:	440c3000 	mfc1	t4,$f6
    1744:	00000000 	nop
    1748:	010c6821 	addu	t5,t0,t4
    174c:	a46d0002 	sh	t5,2(v1)
    1750:	2401000b 	li	at,11
    1754:	8fa20024 	lw	v0,36(sp)
    1758:	14a10016 	bne	a1,at,17b4 <SyatekiNiw_OverrideLimbDraw+0xc4>
    175c:	8fa30020 	lw	v1,32(sp)
    1760:	c44802b8 	lwc1	$f8,696(v0)
    1764:	846e0000 	lh	t6,0(v1)
    1768:	846b0002 	lh	t3,2(v1)
    176c:	4600428d 	trunc.w.s	$f10,$f8
    1770:	84790004 	lh	t9,4(v1)
    1774:	44095000 	mfc1	t1,$f10
    1778:	00000000 	nop
    177c:	01c95021 	addu	t2,t6,t1
    1780:	a46a0000 	sh	t2,0(v1)
    1784:	c45002b4 	lwc1	$f16,692(v0)
    1788:	4600848d 	trunc.w.s	$f18,$f16
    178c:	440f9000 	mfc1	t7,$f18
    1790:	00000000 	nop
    1794:	016fc021 	addu	t8,t3,t7
    1798:	a4780002 	sh	t8,2(v1)
    179c:	c44402b0 	lwc1	$f4,688(v0)
    17a0:	4600218d 	trunc.w.s	$f6,$f4
    17a4:	44083000 	mfc1	t0,$f6
    17a8:	00000000 	nop
    17ac:	03286021 	addu	t4,t9,t0
    17b0:	a46c0004 	sh	t4,4(v1)
    17b4:	24010007 	li	at,7
    17b8:	54a10017 	bnel	a1,at,1818 <SyatekiNiw_OverrideLimbDraw+0x128>
    17bc:	00001025 	move	v0,zero
    17c0:	c44802ac 	lwc1	$f8,684(v0)
    17c4:	846d0000 	lh	t5,0(v1)
    17c8:	846a0002 	lh	t2,2(v1)
    17cc:	4600428d 	trunc.w.s	$f10,$f8
    17d0:	84780004 	lh	t8,4(v1)
    17d4:	440e5000 	mfc1	t6,$f10
    17d8:	00000000 	nop
    17dc:	01ae4821 	addu	t1,t5,t6
    17e0:	a4690000 	sh	t1,0(v1)
    17e4:	c45002a8 	lwc1	$f16,680(v0)
    17e8:	4600848d 	trunc.w.s	$f18,$f16
    17ec:	440b9000 	mfc1	t3,$f18
    17f0:	00000000 	nop
    17f4:	014b7821 	addu	t7,t2,t3
    17f8:	a46f0002 	sh	t7,2(v1)
    17fc:	c44402a4 	lwc1	$f4,676(v0)
    1800:	4600218d 	trunc.w.s	$f6,$f4
    1804:	44193000 	mfc1	t9,$f6
    1808:	00000000 	nop
    180c:	03194021 	addu	t0,t8,t9
    1810:	a4680004 	sh	t0,4(v1)
    1814:	00001025 	move	v0,zero
    1818:	03e00008 	jr	ra
    181c:	27bd0010 	addiu	sp,sp,16

00001820 <EnSyatekiNiw_Draw>:
    1820:	27bdffc8 	addiu	sp,sp,-56
    1824:	3c0e0000 	lui	t6,0x0
    1828:	8dce009c 	lw	t6,156(t6)
    182c:	afbf002c 	sw	ra,44(sp)
    1830:	afb10028 	sw	s1,40(sp)
    1834:	afb00024 	sw	s0,36(sp)
    1838:	afae0030 	sw	t6,48(sp)
    183c:	8c980250 	lw	t8,592(a0)
    1840:	3c0f0000 	lui	t7,0x0
    1844:	25ef0000 	addiu	t7,t7,0
    1848:	00808025 	move	s0,a0
    184c:	11f80019 	beq	t7,t8,18b4 <EnSyatekiNiw_Draw+0x94>
    1850:	00a08825 	move	s1,a1
    1854:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1858:	8ca40000 	lw	a0,0(a1)
    185c:	86190260 	lh	t9,608(s0)
    1860:	02202025 	move	a0,s1
    1864:	27a50030 	addiu	a1,sp,48
    1868:	13200003 	beqz	t9,1878 <EnSyatekiNiw_Draw+0x58>
    186c:	00003025 	move	a2,zero
    1870:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1874:	24070014 	li	a3,20
    1878:	8e050150 	lw	a1,336(s0)
    187c:	8e06016c 	lw	a2,364(s0)
    1880:	9207014e 	lbu	a3,334(s0)
    1884:	3c080000 	lui	t0,0x0
    1888:	25080000 	addiu	t0,t0,0
    188c:	afa80010 	sw	t0,16(sp)
    1890:	afb00018 	sw	s0,24(sp)
    1894:	afa00014 	sw	zero,20(sp)
    1898:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    189c:	02202025 	move	a0,s1
    18a0:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    18a4:	02202025 	move	a0,s1
    18a8:	02002025 	move	a0,s0
    18ac:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    18b0:	02202825 	move	a1,s1
    18b4:	8fbf002c 	lw	ra,44(sp)
    18b8:	8fb00024 	lw	s0,36(sp)
    18bc:	8fb10028 	lw	s1,40(sp)
    18c0:	03e00008 	jr	ra
    18c4:	27bd0038 	addiu	sp,sp,56

000018c8 <func_80B131B8>:
    18c8:	27bdffe0 	addiu	sp,sp,-32
    18cc:	afbf0014 	sw	ra,20(sp)
    18d0:	24830348 	addiu	v1,a0,840
    18d4:	00001025 	move	v0,zero
    18d8:	906e0000 	lbu	t6,0(v1)
    18dc:	24420001 	addiu	v0,v0,1
    18e0:	00021400 	sll	v0,v0,0x10
    18e4:	15c0002d 	bnez	t6,199c <func_80B131B8+0xd4>
    18e8:	00021403 	sra	v0,v0,0x10
    18ec:	240f0001 	li	t7,1
    18f0:	a06f0000 	sb	t7,0(v1)
    18f4:	8cb90000 	lw	t9,0(a1)
    18f8:	3c01447a 	lui	at,0x447a
    18fc:	44813000 	mtc1	at,$f6
    1900:	ac790004 	sw	t9,4(v1)
    1904:	8cb80004 	lw	t8,4(a1)
    1908:	3c0141a0 	lui	at,0x41a0
    190c:	44816000 	mtc1	at,$f12
    1910:	ac780008 	sw	t8,8(v1)
    1914:	8cb90008 	lw	t9,8(a1)
    1918:	ac79000c 	sw	t9,12(v1)
    191c:	8cc90000 	lw	t1,0(a2)
    1920:	ac690010 	sw	t1,16(v1)
    1924:	8cc80004 	lw	t0,4(a2)
    1928:	ac680014 	sw	t0,20(v1)
    192c:	8cc90008 	lw	t1,8(a2)
    1930:	ac690018 	sw	t1,24(v1)
    1934:	8ceb0000 	lw	t3,0(a3)
    1938:	ac6b001c 	sw	t3,28(v1)
    193c:	8cea0004 	lw	t2,4(a3)
    1940:	ac6a0020 	sw	t2,32(v1)
    1944:	8ceb0008 	lw	t3,8(a3)
    1948:	a0600034 	sb	zero,52(v1)
    194c:	ac6b0024 	sw	t3,36(v1)
    1950:	c7a40030 	lwc1	$f4,48(sp)
    1954:	46062203 	div.s	$f8,$f4,$f6
    1958:	e468002c 	swc1	$f8,44(v1)
    195c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1960:	afa30018 	sw	v1,24(sp)
    1964:	4600028d 	trunc.w.s	$f10,$f0
    1968:	8fa30018 	lw	v1,24(sp)
    196c:	3c01447a 	lui	at,0x447a
    1970:	44816000 	mtc1	at,$f12
    1974:	440f5000 	mfc1	t7,$f10
    1978:	00000000 	nop
    197c:	25f80028 	addiu	t8,t7,40
    1980:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1984:	a4780028 	sh	t8,40(v1)
    1988:	4600040d 	trunc.w.s	$f16,$f0
    198c:	8fa30018 	lw	v1,24(sp)
    1990:	44088000 	mfc1	t0,$f16
    1994:	10000004 	b	19a8 <func_80B131B8+0xe0>
    1998:	a468002a 	sh	t0,42(v1)
    199c:	28410005 	slti	at,v0,5
    19a0:	1420ffcd 	bnez	at,18d8 <func_80B131B8+0x10>
    19a4:	24630038 	addiu	v1,v1,56
    19a8:	8fbf0014 	lw	ra,20(sp)
    19ac:	27bd0020 	addiu	sp,sp,32
    19b0:	03e00008 	jr	ra
    19b4:	00000000 	nop

000019b8 <func_80B132A8>:
    19b8:	27bdffa8 	addiu	sp,sp,-88
    19bc:	f7be0038 	sdc1	$f30,56(sp)
    19c0:	3c010000 	lui	at,0x0
    19c4:	c43e0150 	lwc1	$f30,336(at)
    19c8:	f7bc0030 	sdc1	$f28,48(sp)
    19cc:	3c013f00 	lui	at,0x3f00
    19d0:	4481e000 	mtc1	at,$f28
    19d4:	f7ba0028 	sdc1	$f26,40(sp)
    19d8:	3c01bf00 	lui	at,0xbf00
    19dc:	4481d000 	mtc1	at,$f26
    19e0:	f7b80020 	sdc1	$f24,32(sp)
    19e4:	3c010000 	lui	at,0x0
    19e8:	c4380154 	lwc1	$f24,340(at)
    19ec:	f7b60018 	sdc1	$f22,24(sp)
    19f0:	f7b40010 	sdc1	$f20,16(sp)
    19f4:	3c013f80 	lui	at,0x3f80
    19f8:	afb30050 	sw	s3,80(sp)
    19fc:	afb2004c 	sw	s2,76(sp)
    1a00:	afb10048 	sw	s1,72(sp)
    1a04:	afb00044 	sw	s0,68(sp)
    1a08:	4481b000 	mtc1	at,$f22
    1a0c:	4480a000 	mtc1	zero,$f20
    1a10:	afbf0054 	sw	ra,84(sp)
    1a14:	afa5005c 	sw	a1,92(sp)
    1a18:	24900348 	addiu	s0,a0,840
    1a1c:	00008825 	move	s1,zero
    1a20:	24120001 	li	s2,1
    1a24:	24130bb8 	li	s3,3000
    1a28:	920e0000 	lbu	t6,0(s0)
    1a2c:	51c0003f 	beqzl	t6,1b2c <func_80B132A8+0x174>
    1a30:	26310001 	addiu	s1,s1,1
    1a34:	c6000010 	lwc1	$f0,16(s0)
    1a38:	c6040004 	lwc1	$f4,4(s0)
    1a3c:	c6020014 	lwc1	$f2,20(s0)
    1a40:	c6080008 	lwc1	$f8,8(s0)
    1a44:	c60c0018 	lwc1	$f12,24(s0)
    1a48:	c610000c 	lwc1	$f16,12(s0)
    1a4c:	46002180 	add.s	$f6,$f4,$f0
    1a50:	c604001c 	lwc1	$f4,28(s0)
    1a54:	920f0034 	lbu	t7,52(s0)
    1a58:	46024280 	add.s	$f10,$f8,$f2
    1a5c:	c6080020 	lwc1	$f8,32(s0)
    1a60:	e6060004 	swc1	$f6,4(s0)
    1a64:	460c8480 	add.s	$f18,$f16,$f12
    1a68:	c6100024 	lwc1	$f16,36(s0)
    1a6c:	e60a0008 	swc1	$f10,8(s0)
    1a70:	46040180 	add.s	$f6,$f0,$f4
    1a74:	e612000c 	swc1	$f18,12(s0)
    1a78:	92190000 	lbu	t9,0(s0)
    1a7c:	46081280 	add.s	$f10,$f2,$f8
    1a80:	25f80001 	addiu	t8,t7,1
    1a84:	a2180034 	sb	t8,52(s0)
    1a88:	46106480 	add.s	$f18,$f12,$f16
    1a8c:	e6060010 	swc1	$f6,16(s0)
    1a90:	e60a0014 	swc1	$f10,20(s0)
    1a94:	16590024 	bne	s2,t9,1b28 <func_80B132A8+0x170>
    1a98:	e6120018 	swc1	$f18,24(s0)
    1a9c:	8608002a 	lh	t0,42(s0)
    1aa0:	4405a000 	mfc1	a1,$f20
    1aa4:	4406b000 	mfc1	a2,$f22
    1aa8:	4407c000 	mfc1	a3,$f24
    1aac:	25090001 	addiu	t1,t0,1
    1ab0:	a609002a 	sh	t1,42(s0)
    1ab4:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1ab8:	26040010 	addiu	a0,s0,16
    1abc:	4405a000 	mfc1	a1,$f20
    1ac0:	4406b000 	mfc1	a2,$f22
    1ac4:	4407c000 	mfc1	a3,$f24
    1ac8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1acc:	26040018 	addiu	a0,s0,24
    1ad0:	c6040014 	lwc1	$f4,20(s0)
    1ad4:	461a203c 	c.lt.s	$f4,$f26
    1ad8:	00000000 	nop
    1adc:	45020003 	bc1fl	1aec <func_80B132A8+0x134>
    1ae0:	860a002a 	lh	t2,42(s0)
    1ae4:	e61c0014 	swc1	$f28,20(s0)
    1ae8:	860a002a 	lh	t2,42(s0)
    1aec:	01530019 	multu	t2,s3
    1af0:	00002012 	mflo	a0
    1af4:	00042400 	sll	a0,a0,0x10
    1af8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1afc:	00042403 	sra	a0,a0,0x10
    1b00:	461e0182 	mul.s	$f6,$f0,$f30
    1b04:	3c010000 	lui	at,0x0
    1b08:	c4280158 	lwc1	$f8,344(at)
    1b0c:	860b0028 	lh	t3,40(s0)
    1b10:	920c0034 	lbu	t4,52(s0)
    1b14:	46083282 	mul.s	$f10,$f6,$f8
    1b18:	016c082a 	slt	at,t3,t4
    1b1c:	10200002 	beqz	at,1b28 <func_80B132A8+0x170>
    1b20:	e60a0030 	swc1	$f10,48(s0)
    1b24:	a2000000 	sb	zero,0(s0)
    1b28:	26310001 	addiu	s1,s1,1
    1b2c:	00118c00 	sll	s1,s1,0x10
    1b30:	00118c03 	sra	s1,s1,0x10
    1b34:	2a210005 	slti	at,s1,5
    1b38:	1420ffbb 	bnez	at,1a28 <func_80B132A8+0x70>
    1b3c:	26100038 	addiu	s0,s0,56
    1b40:	8fbf0054 	lw	ra,84(sp)
    1b44:	d7b40010 	ldc1	$f20,16(sp)
    1b48:	d7b60018 	ldc1	$f22,24(sp)
    1b4c:	d7b80020 	ldc1	$f24,32(sp)
    1b50:	d7ba0028 	ldc1	$f26,40(sp)
    1b54:	d7bc0030 	ldc1	$f28,48(sp)
    1b58:	d7be0038 	ldc1	$f30,56(sp)
    1b5c:	8fb00044 	lw	s0,68(sp)
    1b60:	8fb10048 	lw	s1,72(sp)
    1b64:	8fb2004c 	lw	s2,76(sp)
    1b68:	8fb30050 	lw	s3,80(sp)
    1b6c:	03e00008 	jr	ra
    1b70:	27bd0058 	addiu	sp,sp,88

00001b74 <func_80B13464>:
    1b74:	27bdff68 	addiu	sp,sp,-152
    1b78:	afbf0054 	sw	ra,84(sp)
    1b7c:	afbe0050 	sw	s8,80(sp)
    1b80:	afb7004c 	sw	s7,76(sp)
    1b84:	afb60048 	sw	s6,72(sp)
    1b88:	afb50044 	sw	s5,68(sp)
    1b8c:	afb40040 	sw	s4,64(sp)
    1b90:	afb3003c 	sw	s3,60(sp)
    1b94:	afb20038 	sw	s2,56(sp)
    1b98:	afb10034 	sw	s1,52(sp)
    1b9c:	afb00030 	sw	s0,48(sp)
    1ba0:	f7b80028 	sdc1	$f24,40(sp)
    1ba4:	f7b60020 	sdc1	$f22,32(sp)
    1ba8:	f7b40018 	sdc1	$f20,24(sp)
    1bac:	8cb20000 	lw	s2,0(a1)
    1bb0:	00a0b825 	move	s7,a1
    1bb4:	24910348 	addiu	s1,a0,840
    1bb8:	3c060000 	lui	a2,0x0
    1bbc:	0000a025 	move	s4,zero
    1bc0:	24c60060 	addiu	a2,a2,96
    1bc4:	27a40074 	addiu	a0,sp,116
    1bc8:	240704d2 	li	a3,1234
    1bcc:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1bd0:	02402825 	move	a1,s2
    1bd4:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1bd8:	8ee40000 	lw	a0,0(s7)
    1bdc:	3c01c47a 	lui	at,0xc47a
    1be0:	4481c000 	mtc1	at,$f24
    1be4:	3c013f80 	lui	at,0x3f80
    1be8:	4481b000 	mtc1	at,$f22
    1bec:	4480a000 	mtc1	zero,$f20
    1bf0:	00009825 	move	s3,zero
    1bf4:	241e0001 	li	s8,1
    1bf8:	3c16de00 	lui	s6,0xde00
    1bfc:	922e0000 	lbu	t6,0(s1)
    1c00:	3c010001 	lui	at,0x1
    1c04:	34211da0 	ori	at,at,0x1da0
    1c08:	17ce0033 	bne	s8,t6,1cd8 <func_80B13464+0x164>
    1c0c:	02e18021 	addu	s0,s7,at
    1c10:	3c150000 	lui	s5,0x0
    1c14:	1680000a 	bnez	s4,1c40 <func_80B13464+0xcc>
    1c18:	26b50000 	addiu	s5,s5,0
    1c1c:	8e4202d0 	lw	v0,720(s2)
    1c20:	3c040000 	lui	a0,0x0
    1c24:	24840000 	addiu	a0,a0,0
    1c28:	244f0008 	addiu	t7,v0,8
    1c2c:	ae4f02d0 	sw	t7,720(s2)
    1c30:	26940001 	addiu	s4,s4,1
    1c34:	329400ff 	andi	s4,s4,0xff
    1c38:	ac440004 	sw	a0,4(v0)
    1c3c:	ac560000 	sw	s6,0(v0)
    1c40:	c62c0004 	lwc1	$f12,4(s1)
    1c44:	c62e0008 	lwc1	$f14,8(s1)
    1c48:	8e26000c 	lw	a2,12(s1)
    1c4c:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1c50:	00003825 	move	a3,zero
    1c54:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1c58:	02002025 	move	a0,s0
    1c5c:	c62c002c 	lwc1	$f12,44(s1)
    1c60:	4406b000 	mfc1	a2,$f22
    1c64:	24070001 	li	a3,1
    1c68:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1c6c:	46006386 	mov.s	$f14,$f12
    1c70:	c62c0030 	lwc1	$f12,48(s1)
    1c74:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1c78:	24050001 	li	a1,1
    1c7c:	4406a000 	mfc1	a2,$f20
    1c80:	4600a306 	mov.s	$f12,$f20
    1c84:	4600c386 	mov.s	$f14,$f24
    1c88:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1c8c:	24070001 	li	a3,1
    1c90:	8e4202d0 	lw	v0,720(s2)
    1c94:	3c19da38 	lui	t9,0xda38
    1c98:	37390003 	ori	t9,t9,0x3
    1c9c:	24580008 	addiu	t8,v0,8
    1ca0:	ae5802d0 	sw	t8,720(s2)
    1ca4:	3c050000 	lui	a1,0x0
    1ca8:	24a50078 	addiu	a1,a1,120
    1cac:	02402025 	move	a0,s2
    1cb0:	240604e3 	li	a2,1251
    1cb4:	ac590000 	sw	t9,0(v0)
    1cb8:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1cbc:	00408025 	move	s0,v0
    1cc0:	ae020004 	sw	v0,4(s0)
    1cc4:	8e4202d0 	lw	v0,720(s2)
    1cc8:	24480008 	addiu	t0,v0,8
    1ccc:	ae4802d0 	sw	t0,720(s2)
    1cd0:	ac550004 	sw	s5,4(v0)
    1cd4:	ac560000 	sw	s6,0(v0)
    1cd8:	26730001 	addiu	s3,s3,1
    1cdc:	00139c00 	sll	s3,s3,0x10
    1ce0:	00139c03 	sra	s3,s3,0x10
    1ce4:	2a610005 	slti	at,s3,5
    1ce8:	1420ffc4 	bnez	at,1bfc <func_80B13464+0x88>
    1cec:	26310038 	addiu	s1,s1,56
    1cf0:	3c060000 	lui	a2,0x0
    1cf4:	24c60090 	addiu	a2,a2,144
    1cf8:	27a40074 	addiu	a0,sp,116
    1cfc:	02402825 	move	a1,s2
    1d00:	0c000000 	jal	0 <EnSyatekiNiw_Init>
    1d04:	240704e9 	li	a3,1257
    1d08:	8fbf0054 	lw	ra,84(sp)
    1d0c:	d7b40018 	ldc1	$f20,24(sp)
    1d10:	d7b60020 	ldc1	$f22,32(sp)
    1d14:	d7b80028 	ldc1	$f24,40(sp)
    1d18:	8fb00030 	lw	s0,48(sp)
    1d1c:	8fb10034 	lw	s1,52(sp)
    1d20:	8fb20038 	lw	s2,56(sp)
    1d24:	8fb3003c 	lw	s3,60(sp)
    1d28:	8fb40040 	lw	s4,64(sp)
    1d2c:	8fb50044 	lw	s5,68(sp)
    1d30:	8fb60048 	lw	s6,72(sp)
    1d34:	8fb7004c 	lw	s7,76(sp)
    1d38:	8fbe0050 	lw	s8,80(sp)
    1d3c:	03e00008 	jr	ra
    1d40:	27bd0098 	addiu	sp,sp,152
	...
