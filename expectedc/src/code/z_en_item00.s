
build/src/code/z_en_item00.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnItem00_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac85014c 	sw	a1,332(a0)

00000008 <EnItem00_Init>:
       8:	3c014475 	lui	at,0x4475
       c:	44811000 	mtc1	at,$f2
      10:	27bdffc0 	addiu	sp,sp,-64
      14:	3c0140c0 	lui	at,0x40c0
      18:	44812000 	mtc1	at,$f4
      1c:	afbf001c 	sw	ra,28(sp)
      20:	afb00018 	sw	s0,24(sp)
      24:	afa50044 	sw	a1,68(sp)
      28:	afa0002c 	sw	zero,44(sp)
      2c:	e7a40030 	swc1	$f4,48(sp)
      30:	8482001c 	lh	v0,28(a0)
      34:	00808025 	move	s0,a0
      38:	304e8000 	andi	t6,v0,0x8000
      3c:	a7ae002a 	sh	t6,42(sp)
      40:	304f3f00 	andi	t7,v0,0x3f00
      44:	000fc203 	sra	t8,t7,0x8
      48:	305900ff 	andi	t9,v0,0xff
      4c:	a4980150 	sh	t8,336(a0)
      50:	a499001c 	sh	t9,28(a0)
      54:	86050150 	lh	a1,336(s0)
      58:	8fa40044 	lw	a0,68(sp)
      5c:	0c000000 	jal	0 <EnItem00_SetupAction>
      60:	e7a20034 	swc1	$f2,52(sp)
      64:	10400005 	beqz	v0,7c <EnItem00_Init+0x74>
      68:	c7a20034 	lwc1	$f2,52(sp)
      6c:	0c000000 	jal	0 <EnItem00_SetupAction>
      70:	02002025 	move	a0,s0
      74:	1000017a 	b	660 <EnItem00_Init+0x658>
      78:	8fbf001c 	lw	ra,28(sp)
      7c:	3c050000 	lui	a1,0x0
      80:	24a50000 	addiu	a1,a1,0
      84:	02002025 	move	a0,s0
      88:	0c000000 	jal	0 <EnItem00_SetupAction>
      8c:	e7a20034 	swc1	$f2,52(sp)
      90:	26050160 	addiu	a1,s0,352
      94:	afa50020 	sw	a1,32(sp)
      98:	0c000000 	jal	0 <EnItem00_SetupAction>
      9c:	8fa40044 	lw	a0,68(sp)
      a0:	3c070000 	lui	a3,0x0
      a4:	8fa50020 	lw	a1,32(sp)
      a8:	24e70000 	addiu	a3,a3,0
      ac:	8fa40044 	lw	a0,68(sp)
      b0:	0c000000 	jal	0 <EnItem00_SetupAction>
      b4:	02003025 	move	a2,s0
      b8:	9609001c 	lhu	t1,28(s0)
      bc:	c7a20034 	lwc1	$f2,52(sp)
      c0:	24080001 	li	t0,1
      c4:	2d21001a 	sltiu	at,t1,26
      c8:	102000d6 	beqz	at,424 <EnItem00_Init+0x41c>
      cc:	a6080158 	sh	t0,344(s0)
      d0:	00094880 	sll	t1,t1,0x2
      d4:	3c010000 	lui	at,0x0
      d8:	00290821 	addu	at,at,t1
      dc:	8c290104 	lw	t1,260(at)
      e0:	01200008 	jr	t1
      e4:	00000000 	nop
      e8:	3c053c75 	lui	a1,0x3c75
      ec:	34a5c28f 	ori	a1,a1,0xc28f
      f0:	0c000000 	jal	0 <EnItem00_SetupAction>
      f4:	02002025 	move	a0,s0
      f8:	3c010000 	lui	at,0x0
      fc:	c426016c 	lwc1	$f6,364(at)
     100:	3c010000 	lui	at,0x0
     104:	e606015c 	swc1	$f6,348(s0)
     108:	100000c6 	b	424 <EnItem00_Init+0x41c>
     10c:	c4220170 	lwc1	$f2,368(at)
     110:	3c053cf5 	lui	a1,0x3cf5
     114:	a6000158 	sh	zero,344(s0)
     118:	34a5c28f 	ori	a1,a1,0xc28f
     11c:	0c000000 	jal	0 <EnItem00_SetupAction>
     120:	02002025 	move	a0,s0
     124:	3c010000 	lui	at,0x0
     128:	c4280174 	lwc1	$f8,372(at)
     12c:	3c0143af 	lui	at,0x43af
     130:	44811000 	mtc1	at,$f2
     134:	100000bb 	b	424 <EnItem00_Init+0x41c>
     138:	e608015c 	swc1	$f8,348(s0)
     13c:	a6000158 	sh	zero,344(s0)
     140:	3c010000 	lui	at,0x0
     144:	c4220178 	lwc1	$f2,376(at)
     148:	3c053ca3 	lui	a1,0x3ca3
     14c:	34a5d70a 	ori	a1,a1,0xd70a
     150:	02002025 	move	a0,s0
     154:	0c000000 	jal	0 <EnItem00_SetupAction>
     158:	e7a20034 	swc1	$f2,52(sp)
     15c:	3c010000 	lui	at,0x0
     160:	c42a017c 	lwc1	$f10,380(at)
     164:	c7a20034 	lwc1	$f2,52(sp)
     168:	100000ae 	b	424 <EnItem00_Init+0x41c>
     16c:	e60a015c 	swc1	$f10,348(s0)
     170:	3c010000 	lui	at,0x0
     174:	0c000000 	jal	0 <EnItem00_SetupAction>
     178:	c42c0180 	lwc1	$f12,384(at)
     17c:	4600040d 	trunc.w.s	$f16,$f0
     180:	3c0143d7 	lui	at,0x43d7
     184:	44811000 	mtc1	at,$f2
     188:	3c053ca3 	lui	a1,0x3ca3
     18c:	440b8000 	mfc1	t3,$f16
     190:	34a5d70a 	ori	a1,a1,0xd70a
     194:	02002025 	move	a0,s0
     198:	a60b0018 	sh	t3,24(s0)
     19c:	0c000000 	jal	0 <EnItem00_SetupAction>
     1a0:	e7a20034 	swc1	$f2,52(sp)
     1a4:	3c010000 	lui	at,0x0
     1a8:	c4320184 	lwc1	$f18,388(at)
     1ac:	c7a20034 	lwc1	$f2,52(sp)
     1b0:	1000009c 	b	424 <EnItem00_Init+0x41c>
     1b4:	e612015c 	swc1	$f18,348(s0)
     1b8:	3c0143d7 	lui	at,0x43d7
     1bc:	44811000 	mtc1	at,$f2
     1c0:	a6000158 	sh	zero,344(s0)
     1c4:	3c053ca3 	lui	a1,0x3ca3
     1c8:	34a5d70a 	ori	a1,a1,0xd70a
     1cc:	02002025 	move	a0,s0
     1d0:	0c000000 	jal	0 <EnItem00_SetupAction>
     1d4:	e7a20034 	swc1	$f2,52(sp)
     1d8:	3c010000 	lui	at,0x0
     1dc:	c4240188 	lwc1	$f4,392(at)
     1e0:	c7a20034 	lwc1	$f2,52(sp)
     1e4:	1000008f 	b	424 <EnItem00_Init+0x41c>
     1e8:	e604015c 	swc1	$f4,348(s0)
     1ec:	3c0143c8 	lui	at,0x43c8
     1f0:	44811000 	mtc1	at,$f2
     1f4:	3c053ca3 	lui	a1,0x3ca3
     1f8:	34a5d70a 	ori	a1,a1,0xd70a
     1fc:	02002025 	move	a0,s0
     200:	0c000000 	jal	0 <EnItem00_SetupAction>
     204:	e7a20034 	swc1	$f2,52(sp)
     208:	3c010000 	lui	at,0x0
     20c:	c426018c 	lwc1	$f6,396(at)
     210:	c7a20034 	lwc1	$f2,52(sp)
     214:	10000083 	b	424 <EnItem00_Init+0x41c>
     218:	e606015c 	swc1	$f6,348(s0)
     21c:	3c053d0f 	lui	a1,0x3d0f
     220:	34a55c29 	ori	a1,a1,0x5c29
     224:	0c000000 	jal	0 <EnItem00_SetupAction>
     228:	02002025 	move	a0,s0
     22c:	3c010000 	lui	at,0x0
     230:	c4280190 	lwc1	$f8,400(at)
     234:	3c01437a 	lui	at,0x437a
     238:	44811000 	mtc1	at,$f2
     23c:	10000079 	b	424 <EnItem00_Init+0x41c>
     240:	e608015c 	swc1	$f8,348(s0)
     244:	3c053cf5 	lui	a1,0x3cf5
     248:	34a5c28f 	ori	a1,a1,0xc28f
     24c:	0c000000 	jal	0 <EnItem00_SetupAction>
     250:	02002025 	move	a0,s0
     254:	3c010000 	lui	at,0x0
     258:	c42a0194 	lwc1	$f10,404(at)
     25c:	3c0143a0 	lui	at,0x43a0
     260:	44811000 	mtc1	at,$f2
     264:	1000006f 	b	424 <EnItem00_Init+0x41c>
     268:	e60a015c 	swc1	$f10,348(s0)
     26c:	3c053d38 	lui	a1,0x3d38
     270:	34a551eb 	ori	a1,a1,0x51eb
     274:	0c000000 	jal	0 <EnItem00_SetupAction>
     278:	02002025 	move	a0,s0
     27c:	3c010000 	lui	at,0x0
     280:	c4300198 	lwc1	$f16,408(at)
     284:	3c0143a0 	lui	at,0x43a0
     288:	44811000 	mtc1	at,$f2
     28c:	10000065 	b	424 <EnItem00_Init+0x41c>
     290:	e610015c 	swc1	$f16,348(s0)
     294:	3c053d38 	lui	a1,0x3d38
     298:	34a551eb 	ori	a1,a1,0x51eb
     29c:	0c000000 	jal	0 <EnItem00_SetupAction>
     2a0:	02002025 	move	a0,s0
     2a4:	3c010000 	lui	at,0x0
     2a8:	c432019c 	lwc1	$f18,412(at)
     2ac:	3c010000 	lui	at,0x0
     2b0:	e612015c 	swc1	$f18,348(s0)
     2b4:	1000005b 	b	424 <EnItem00_Init+0x41c>
     2b8:	c42201a0 	lwc1	$f2,416(at)
     2bc:	3c053cf5 	lui	a1,0x3cf5
     2c0:	34a5c28f 	ori	a1,a1,0xc28f
     2c4:	0c000000 	jal	0 <EnItem00_SetupAction>
     2c8:	02002025 	move	a0,s0
     2cc:	3c010000 	lui	at,0x0
     2d0:	c42401a4 	lwc1	$f4,420(at)
     2d4:	3c010000 	lui	at,0x0
     2d8:	e604015c 	swc1	$f4,348(s0)
     2dc:	10000051 	b	424 <EnItem00_Init+0x41c>
     2e0:	c42201a8 	lwc1	$f2,424(at)
     2e4:	3c0143fa 	lui	at,0x43fa
     2e8:	44811000 	mtc1	at,$f2
     2ec:	3c053c23 	lui	a1,0x3c23
     2f0:	34a5d70a 	ori	a1,a1,0xd70a
     2f4:	02002025 	move	a0,s0
     2f8:	0c000000 	jal	0 <EnItem00_SetupAction>
     2fc:	e7a20034 	swc1	$f2,52(sp)
     300:	3c010000 	lui	at,0x0
     304:	c42601ac 	lwc1	$f6,428(at)
     308:	c7a20034 	lwc1	$f2,52(sp)
     30c:	10000045 	b	424 <EnItem00_Init+0x41c>
     310:	e606015c 	swc1	$f6,348(s0)
     314:	8fa40044 	lw	a0,68(sp)
     318:	3c010001 	lui	at,0x1
     31c:	342117a4 	ori	at,at,0x17a4
     320:	240500cb 	li	a1,203
     324:	0c000000 	jal	0 <EnItem00_SetupAction>
     328:	00812021 	addu	a0,a0,at
     32c:	a202001e 	sb	v0,30(s0)
     330:	8fa40044 	lw	a0,68(sp)
     334:	0c000000 	jal	0 <EnItem00_SetupAction>
     338:	02002825 	move	a1,s0
     33c:	02002025 	move	a0,s0
     340:	0c000000 	jal	0 <EnItem00_SetupAction>
     344:	3c053f00 	lui	a1,0x3f00
     348:	3c013f00 	lui	at,0x3f00
     34c:	44814000 	mtc1	at,$f8
     350:	3c010000 	lui	at,0x0
     354:	44801000 	mtc1	zero,$f2
     358:	e608015c 	swc1	$f8,348(s0)
     35c:	c42a01b0 	lwc1	$f10,432(at)
     360:	240c4000 	li	t4,16384
     364:	e7aa0030 	swc1	$f10,48(sp)
     368:	1000002e 	b	424 <EnItem00_Init+0x41c>
     36c:	a60c0030 	sh	t4,48(s0)
     370:	8fa40044 	lw	a0,68(sp)
     374:	3c010001 	lui	at,0x1
     378:	342117a4 	ori	at,at,0x17a4
     37c:	240500dc 	li	a1,220
     380:	0c000000 	jal	0 <EnItem00_SetupAction>
     384:	00812021 	addu	a0,a0,at
     388:	a202001e 	sb	v0,30(s0)
     38c:	8fa40044 	lw	a0,68(sp)
     390:	0c000000 	jal	0 <EnItem00_SetupAction>
     394:	02002825 	move	a1,s0
     398:	02002025 	move	a0,s0
     39c:	0c000000 	jal	0 <EnItem00_SetupAction>
     3a0:	3c053f00 	lui	a1,0x3f00
     3a4:	3c013f00 	lui	at,0x3f00
     3a8:	44818000 	mtc1	at,$f16
     3ac:	3c010000 	lui	at,0x0
     3b0:	44801000 	mtc1	zero,$f2
     3b4:	e610015c 	swc1	$f16,348(s0)
     3b8:	c43201b4 	lwc1	$f18,436(at)
     3bc:	240d4000 	li	t5,16384
     3c0:	e7b20030 	swc1	$f18,48(sp)
     3c4:	10000017 	b	424 <EnItem00_Init+0x41c>
     3c8:	a60d0030 	sh	t5,48(s0)
     3cc:	8fa40044 	lw	a0,68(sp)
     3d0:	3c010001 	lui	at,0x1
     3d4:	342117a4 	ori	at,at,0x17a4
     3d8:	240500f2 	li	a1,242
     3dc:	0c000000 	jal	0 <EnItem00_SetupAction>
     3e0:	00812021 	addu	a0,a0,at
     3e4:	a202001e 	sb	v0,30(s0)
     3e8:	8fa40044 	lw	a0,68(sp)
     3ec:	0c000000 	jal	0 <EnItem00_SetupAction>
     3f0:	02002825 	move	a1,s0
     3f4:	02002025 	move	a0,s0
     3f8:	0c000000 	jal	0 <EnItem00_SetupAction>
     3fc:	3c053f00 	lui	a1,0x3f00
     400:	3c013f00 	lui	at,0x3f00
     404:	44812000 	mtc1	at,$f4
     408:	3c010000 	lui	at,0x0
     40c:	240e4000 	li	t6,16384
     410:	e604015c 	swc1	$f4,348(s0)
     414:	c42601b8 	lwc1	$f6,440(at)
     418:	44801000 	mtc1	zero,$f2
     41c:	e7a60030 	swc1	$f6,48(sp)
     420:	a60e0030 	sh	t6,48(s0)
     424:	a6000156 	sh	zero,342(s0)
     428:	44051000 	mfc1	a1,$f2
     42c:	3c060000 	lui	a2,0x0
     430:	24c60000 	addiu	a2,a2,0
     434:	8fa70030 	lw	a3,48(sp)
     438:	0c000000 	jal	0 <EnItem00_SetupAction>
     43c:	260400b4 	addiu	a0,s0,180
     440:	8e190024 	lw	t9,36(s0)
     444:	8e180028 	lw	t8,40(s0)
     448:	240f00b4 	li	t7,180
     44c:	ae190038 	sw	t9,56(s0)
     450:	8e19002c 	lw	t9,44(s0)
     454:	a20f00c8 	sb	t7,200(s0)
     458:	a6000152 	sh	zero,338(s0)
     45c:	ae18003c 	sw	t8,60(s0)
     460:	ae190040 	sw	t9,64(s0)
     464:	87a8002a 	lh	t0,42(sp)
     468:	240a000f 	li	t2,15
     46c:	240b0023 	li	t3,35
     470:	55000009 	bnezl	t0,498 <EnItem00_Init+0x490>
     474:	44800000 	mtc1	zero,$f0
     478:	3c050000 	lui	a1,0x0
     47c:	24a50000 	addiu	a1,a1,0
     480:	0c000000 	jal	0 <EnItem00_SetupAction>
     484:	02002025 	move	a0,s0
     488:	2409ffff 	li	t1,-1
     48c:	10000073 	b	65c <EnItem00_Init+0x654>
     490:	a609015a 	sh	t1,346(s0)
     494:	44800000 	mtc1	zero,$f0
     498:	960c001c 	lhu	t4,28(s0)
     49c:	a60a015a 	sh	t2,346(s0)
     4a0:	a60b0154 	sh	t3,340(s0)
     4a4:	2d81001a 	sltiu	at,t4,26
     4a8:	e6000068 	swc1	$f0,104(s0)
     4ac:	e6000060 	swc1	$f0,96(s0)
     4b0:	10200056 	beqz	at,60c <EnItem00_Init+0x604>
     4b4:	e600006c 	swc1	$f0,108(s0)
     4b8:	000c6080 	sll	t4,t4,0x2
     4bc:	3c010000 	lui	at,0x0
     4c0:	002c0821 	addu	at,at,t4
     4c4:	8c2c01bc 	lw	t4,444(at)
     4c8:	01800008 	jr	t4
     4cc:	00000000 	nop
     4d0:	8fa40044 	lw	a0,68(sp)
     4d4:	0c000000 	jal	0 <EnItem00_SetupAction>
     4d8:	24050084 	li	a1,132
     4dc:	1000004c 	b	610 <EnItem00_Init+0x608>
     4e0:	8fa8002c 	lw	t0,44(sp)
     4e4:	8fa40044 	lw	a0,68(sp)
     4e8:	0c000000 	jal	0 <EnItem00_SetupAction>
     4ec:	24050085 	li	a1,133
     4f0:	10000047 	b	610 <EnItem00_Init+0x608>
     4f4:	8fa8002c 	lw	t0,44(sp)
     4f8:	8fa40044 	lw	a0,68(sp)
     4fc:	0c000000 	jal	0 <EnItem00_SetupAction>
     500:	24050086 	li	a1,134
     504:	10000042 	b	610 <EnItem00_Init+0x608>
     508:	8fa8002c 	lw	t0,44(sp)
     50c:	8fa40044 	lw	a0,68(sp)
     510:	0c000000 	jal	0 <EnItem00_SetupAction>
     514:	24050087 	li	a1,135
     518:	1000003d 	b	610 <EnItem00_Init+0x608>
     51c:	8fa8002c 	lw	t0,44(sp)
     520:	8fa40044 	lw	a0,68(sp)
     524:	0c000000 	jal	0 <EnItem00_SetupAction>
     528:	24050088 	li	a1,136
     52c:	10000038 	b	610 <EnItem00_Init+0x608>
     530:	8fa8002c 	lw	t0,44(sp)
     534:	8fa40044 	lw	a0,68(sp)
     538:	0c000000 	jal	0 <EnItem00_SetupAction>
     53c:	24050083 	li	a1,131
     540:	10000033 	b	610 <EnItem00_Init+0x608>
     544:	8fa8002c 	lw	t0,44(sp)
     548:	8fa40044 	lw	a0,68(sp)
     54c:	0c000000 	jal	0 <EnItem00_SetupAction>
     550:	24050070 	li	a1,112
     554:	1000002e 	b	610 <EnItem00_Init+0x608>
     558:	8fa8002c 	lw	t0,44(sp)
     55c:	8fa40044 	lw	a0,68(sp)
     560:	0c000000 	jal	0 <EnItem00_SetupAction>
     564:	2405008e 	li	a1,142
     568:	10000029 	b	610 <EnItem00_Init+0x608>
     56c:	8fa8002c 	lw	t0,44(sp)
     570:	8fa40044 	lw	a0,68(sp)
     574:	0c000000 	jal	0 <EnItem00_SetupAction>
     578:	24050003 	li	a1,3
     57c:	10000024 	b	610 <EnItem00_Init+0x608>
     580:	8fa8002c 	lw	t0,44(sp)
     584:	8fa40044 	lw	a0,68(sp)
     588:	0c000000 	jal	0 <EnItem00_SetupAction>
     58c:	24050092 	li	a1,146
     590:	1000001f 	b	610 <EnItem00_Init+0x608>
     594:	8fa8002c 	lw	t0,44(sp)
     598:	8fa40044 	lw	a0,68(sp)
     59c:	0c000000 	jal	0 <EnItem00_SetupAction>
     5a0:	24050093 	li	a1,147
     5a4:	1000001a 	b	610 <EnItem00_Init+0x608>
     5a8:	8fa8002c 	lw	t0,44(sp)
     5ac:	8fa40044 	lw	a0,68(sp)
     5b0:	0c000000 	jal	0 <EnItem00_SetupAction>
     5b4:	24050094 	li	a1,148
     5b8:	10000015 	b	610 <EnItem00_Init+0x608>
     5bc:	8fa8002c 	lw	t0,44(sp)
     5c0:	240d0043 	li	t5,67
     5c4:	10000011 	b	60c <EnItem00_Init+0x604>
     5c8:	afad002c 	sw	t5,44(sp)
     5cc:	240e0044 	li	t6,68
     5d0:	1000000e 	b	60c <EnItem00_Init+0x604>
     5d4:	afae002c 	sw	t6,44(sp)
     5d8:	8fa40044 	lw	a0,68(sp)
     5dc:	0c000000 	jal	0 <EnItem00_SetupAction>
     5e0:	24050077 	li	a1,119
     5e4:	1000000a 	b	610 <EnItem00_Init+0x608>
     5e8:	8fa8002c 	lw	t0,44(sp)
     5ec:	240f003c 	li	t7,60
     5f0:	10000006 	b	60c <EnItem00_Init+0x604>
     5f4:	afaf002c 	sw	t7,44(sp)
     5f8:	24180002 	li	t8,2
     5fc:	10000003 	b	60c <EnItem00_Init+0x604>
     600:	afb8002c 	sw	t8,44(sp)
     604:	24190007 	li	t9,7
     608:	afb9002c 	sw	t9,44(sp)
     60c:	8fa8002c 	lw	t0,44(sp)
     610:	02002025 	move	a0,s0
     614:	11000008 	beqz	t0,638 <EnItem00_Init+0x630>
     618:	00000000 	nop
     61c:	0c000000 	jal	0 <EnItem00_SetupAction>
     620:	8fa50044 	lw	a1,68(sp)
     624:	14400004 	bnez	v0,638 <EnItem00_Init+0x630>
     628:	02002025 	move	a0,s0
     62c:	8fa50044 	lw	a1,68(sp)
     630:	0c000000 	jal	0 <EnItem00_SetupAction>
     634:	8fa6002c 	lw	a2,44(sp)
     638:	3c050000 	lui	a1,0x0
     63c:	24a50000 	addiu	a1,a1,0
     640:	0c000000 	jal	0 <EnItem00_SetupAction>
     644:	02002025 	move	a0,s0
     648:	8e19014c 	lw	t9,332(s0)
     64c:	02002025 	move	a0,s0
     650:	8fa50044 	lw	a1,68(sp)
     654:	0320f809 	jalr	t9
     658:	00000000 	nop
     65c:	8fbf001c 	lw	ra,28(sp)
     660:	8fb00018 	lw	s0,24(sp)
     664:	27bd0040 	addiu	sp,sp,64
     668:	03e00008 	jr	ra
     66c:	00000000 	nop

00000670 <EnItem00_Destroy>:
     670:	27bdffe8 	addiu	sp,sp,-24
     674:	00803025 	move	a2,a0
     678:	afbf0014 	sw	ra,20(sp)
     67c:	00a02025 	move	a0,a1
     680:	0c000000 	jal	0 <EnItem00_SetupAction>
     684:	24c50160 	addiu	a1,a2,352
     688:	8fbf0014 	lw	ra,20(sp)
     68c:	27bd0018 	addiu	sp,sp,24
     690:	03e00008 	jr	ra
     694:	00000000 	nop

00000698 <func_8001DFC8>:
     698:	27bdffd8 	addiu	sp,sp,-40
     69c:	afbf0024 	sw	ra,36(sp)
     6a0:	afb00020 	sw	s0,32(sp)
     6a4:	afa5002c 	sw	a1,44(sp)
     6a8:	8483001c 	lh	v1,28(a0)
     6ac:	00808025 	move	s0,a0
     6b0:	28610003 	slti	at,v1,3
     6b4:	14200008 	bnez	at,6d8 <func_8001DFC8+0x40>
     6b8:	24010003 	li	at,3
     6bc:	54610004 	bnel	v1,at,6d0 <func_8001DFC8+0x38>
     6c0:	24010006 	li	at,6
     6c4:	848e015a 	lh	t6,346(a0)
     6c8:	05c00003 	bltz	t6,6d8 <func_8001DFC8+0x40>
     6cc:	24010006 	li	at,6
     6d0:	54610007 	bnel	v1,at,6f0 <func_8001DFC8+0x58>
     6d4:	28610015 	slti	at,v1,21
     6d8:	860f00b6 	lh	t7,182(s0)
     6dc:	8603001c 	lh	v1,28(s0)
     6e0:	25f803c0 	addiu	t8,t7,960
     6e4:	1000002d 	b	79c <func_8001DFC8+0x104>
     6e8:	a61800b6 	sh	t8,182(s0)
     6ec:	28610015 	slti	at,v1,21
     6f0:	1420002a 	bnez	at,79c <func_8001DFC8+0x104>
     6f4:	24010019 	li	at,25
     6f8:	50610029 	beql	v1,at,7a0 <func_8001DFC8+0x108>
     6fc:	24010006 	li	at,6
     700:	8619015a 	lh	t9,346(s0)
     704:	2401ffff 	li	at,-1
     708:	260400b4 	addiu	a0,s0,180
     70c:	1721000f 	bne	t9,at,74c <func_8001DFC8+0xb4>
     710:	240bc000 	li	t3,-16384
     714:	86050030 	lh	a1,48(s0)
     718:	240805dc 	li	t0,1500
     71c:	afa80010 	sw	t0,16(sp)
     720:	24a5c000 	addiu	a1,a1,-16384
     724:	00052c00 	sll	a1,a1,0x10
     728:	00052c03 	sra	a1,a1,0x10
     72c:	260400b4 	addiu	a0,s0,180
     730:	24060002 	li	a2,2
     734:	0c000000 	jal	0 <EnItem00_SetupAction>
     738:	24070bb8 	li	a3,3000
     73c:	1440000f 	bnez	v0,77c <func_8001DFC8+0xe4>
     740:	2409fffe 	li	t1,-2
     744:	1000000d 	b	77c <func_8001DFC8+0xe4>
     748:	a609015a 	sh	t1,346(s0)
     74c:	860a0030 	lh	t2,48(s0)
     750:	240c05dc 	li	t4,1500
     754:	afac0010 	sw	t4,16(sp)
     758:	016a2823 	subu	a1,t3,t2
     75c:	00052c00 	sll	a1,a1,0x10
     760:	00052c03 	sra	a1,a1,0x10
     764:	24060002 	li	a2,2
     768:	0c000000 	jal	0 <EnItem00_SetupAction>
     76c:	24070bb8 	li	a3,3000
     770:	14400002 	bnez	v0,77c <func_8001DFC8+0xe4>
     774:	240dffff 	li	t5,-1
     778:	a60d015a 	sh	t5,346(s0)
     77c:	240e01f4 	li	t6,500
     780:	afae0010 	sw	t6,16(sp)
     784:	26040030 	addiu	a0,s0,48
     788:	00002825 	move	a1,zero
     78c:	24060002 	li	a2,2
     790:	0c000000 	jal	0 <EnItem00_SetupAction>
     794:	240709c4 	li	a3,2500
     798:	8603001c 	lh	v1,28(s0)
     79c:	24010006 	li	at,6
     7a0:	5461000b 	bnel	v1,at,7d0 <func_8001DFC8+0x138>
     7a4:	44800000 	mtc1	zero,$f0
     7a8:	0c000000 	jal	0 <EnItem00_SetupAction>
     7ac:	860400b6 	lh	a0,182(s0)
     7b0:	3c014316 	lui	at,0x4316
     7b4:	44812000 	mtc1	at,$f4
     7b8:	3c010000 	lui	at,0x0
     7bc:	c4280224 	lwc1	$f8,548(at)
     7c0:	46040182 	mul.s	$f6,$f0,$f4
     7c4:	46083280 	add.s	$f10,$f6,$f8
     7c8:	e60a00bc 	swc1	$f10,188(s0)
     7cc:	44800000 	mtc1	zero,$f0
     7d0:	26040068 	addiu	a0,s0,104
     7d4:	3c063f80 	lui	a2,0x3f80
     7d8:	44050000 	mfc1	a1,$f0
     7dc:	3c073f00 	lui	a3,0x3f00
     7e0:	0c000000 	jal	0 <EnItem00_SetupAction>
     7e4:	e7a00010 	swc1	$f0,16(sp)
     7e8:	860f0154 	lh	t7,340(s0)
     7ec:	55e0000b 	bnezl	t7,81c <func_8001DFC8+0x184>
     7f0:	8619015a 	lh	t9,346(s0)
     7f4:	8603001c 	lh	v1,28(s0)
     7f8:	24010011 	li	at,17
     7fc:	10610006 	beq	v1,at,818 <func_8001DFC8+0x180>
     800:	24010006 	li	at,6
     804:	10610004 	beq	v1,at,818 <func_8001DFC8+0x180>
     808:	24010007 	li	at,7
     80c:	10610002 	beq	v1,at,818 <func_8001DFC8+0x180>
     810:	2418ffff 	li	t8,-1
     814:	a6180154 	sh	t8,340(s0)
     818:	8619015a 	lh	t9,346(s0)
     81c:	5720000c 	bnezl	t9,850 <func_8001DFC8+0x1b8>
     820:	44808000 	mtc1	zero,$f16
     824:	8603001c 	lh	v1,28(s0)
     828:	24010011 	li	at,17
     82c:	10610007 	beq	v1,at,84c <func_8001DFC8+0x1b4>
     830:	24010006 	li	at,6
     834:	10610005 	beq	v1,at,84c <func_8001DFC8+0x1b4>
     838:	24010007 	li	at,7
     83c:	50610004 	beql	v1,at,850 <func_8001DFC8+0x1b8>
     840:	44808000 	mtc1	zero,$f16
     844:	0c000000 	jal	0 <EnItem00_SetupAction>
     848:	02002025 	move	a0,s0
     84c:	44808000 	mtc1	zero,$f16
     850:	c612006c 	lwc1	$f18,108(s0)
     854:	46128032 	c.eq.s	$f16,$f18
     858:	00000000 	nop
     85c:	4503000a 	bc1tl	888 <func_8001DFC8+0x1f0>
     860:	8fbf0024 	lw	ra,36(sp)
     864:	96080088 	lhu	t0,136(s0)
     868:	02002025 	move	a0,s0
     86c:	3c050000 	lui	a1,0x0
     870:	31090001 	andi	t1,t0,0x1
     874:	55200004 	bnezl	t1,888 <func_8001DFC8+0x1f0>
     878:	8fbf0024 	lw	ra,36(sp)
     87c:	0c000000 	jal	0 <EnItem00_SetupAction>
     880:	24a50000 	addiu	a1,a1,0
     884:	8fbf0024 	lw	ra,36(sp)
     888:	8fb00020 	lw	s0,32(sp)
     88c:	27bd0028 	addiu	sp,sp,40
     890:	03e00008 	jr	ra
     894:	00000000 	nop

00000898 <func_8001E1C8>:
     898:	27bdffc0 	addiu	sp,sp,-64
     89c:	afbf0024 	sw	ra,36(sp)
     8a0:	afb00020 	sw	s0,32(sp)
     8a4:	afa50044 	sw	a1,68(sp)
     8a8:	848e001c 	lh	t6,28(a0)
     8ac:	00808025 	move	s0,a0
     8b0:	29c10003 	slti	at,t6,3
     8b4:	50200005 	beqzl	at,8cc <func_8001E1C8+0x34>
     8b8:	8fb90044 	lw	t9,68(sp)
     8bc:	848f00b6 	lh	t7,182(a0)
     8c0:	25f803c0 	addiu	t8,t7,960
     8c4:	a49800b6 	sh	t8,182(a0)
     8c8:	8fb90044 	lw	t9,68(sp)
     8cc:	3c080001 	lui	t0,0x1
     8d0:	3c014120 	lui	at,0x4120
     8d4:	01194021 	addu	t0,t0,t9
     8d8:	8d081de4 	lw	t0,7652(t0)
     8dc:	31090001 	andi	t1,t0,0x1
     8e0:	51200021 	beqzl	t1,968 <func_8001E1C8+0xd0>
     8e4:	96020088 	lhu	v0,136(s0)
     8e8:	44816000 	mtc1	at,$f12
     8ec:	0c000000 	jal	0 <EnItem00_SetupAction>
     8f0:	00000000 	nop
     8f4:	c6040024 	lwc1	$f4,36(s0)
     8f8:	3c014120 	lui	at,0x4120
     8fc:	44816000 	mtc1	at,$f12
     900:	46040180 	add.s	$f6,$f0,$f4
     904:	0c000000 	jal	0 <EnItem00_SetupAction>
     908:	e7a60030 	swc1	$f6,48(sp)
     90c:	c6080028 	lwc1	$f8,40(s0)
     910:	3c014120 	lui	at,0x4120
     914:	44816000 	mtc1	at,$f12
     918:	46080280 	add.s	$f10,$f0,$f8
     91c:	0c000000 	jal	0 <EnItem00_SetupAction>
     920:	e7aa0034 	swc1	$f10,52(sp)
     924:	c610002c 	lwc1	$f16,44(s0)
     928:	3c0a0000 	lui	t2,0x0
     92c:	3c0b0000 	lui	t3,0x0
     930:	46100480 	add.s	$f18,$f0,$f16
     934:	256b0000 	addiu	t3,t3,0
     938:	254a0000 	addiu	t2,t2,0
     93c:	3c060000 	lui	a2,0x0
     940:	3c070000 	lui	a3,0x0
     944:	e7b20038 	swc1	$f18,56(sp)
     948:	24e70000 	addiu	a3,a3,0
     94c:	24c60000 	addiu	a2,a2,0
     950:	afaa0010 	sw	t2,16(sp)
     954:	afab0014 	sw	t3,20(sp)
     958:	8fa40044 	lw	a0,68(sp)
     95c:	0c000000 	jal	0 <EnItem00_SetupAction>
     960:	27a50030 	addiu	a1,sp,48
     964:	96020088 	lhu	v0,136(s0)
     968:	3c01c000 	lui	at,0xc000
     96c:	304c0003 	andi	t4,v0,0x3
     970:	51800014 	beqzl	t4,9c4 <func_8001E1C8+0x12c>
     974:	8fbf0024 	lw	ra,36(sp)
     978:	c6000060 	lwc1	$f0,96(s0)
     97c:	44812000 	mtc1	at,$f4
     980:	02002025 	move	a0,s0
     984:	3c050000 	lui	a1,0x0
     988:	4600203c 	c.lt.s	$f4,$f0
     98c:	3c010000 	lui	at,0x0
     990:	45000006 	bc1f	9ac <func_8001E1C8+0x114>
     994:	00000000 	nop
     998:	0c000000 	jal	0 <EnItem00_SetupAction>
     99c:	24a50000 	addiu	a1,a1,0
     9a0:	44803000 	mtc1	zero,$f6
     9a4:	10000006 	b	9c0 <func_8001E1C8+0x128>
     9a8:	e6060060 	swc1	$f6,96(s0)
     9ac:	c4280228 	lwc1	$f8,552(at)
     9b0:	304dfffe 	andi	t5,v0,0xfffe
     9b4:	a60d0088 	sh	t5,136(s0)
     9b8:	46080282 	mul.s	$f10,$f0,$f8
     9bc:	e60a0060 	swc1	$f10,96(s0)
     9c0:	8fbf0024 	lw	ra,36(sp)
     9c4:	8fb00020 	lw	s0,32(sp)
     9c8:	27bd0040 	addiu	sp,sp,64
     9cc:	03e00008 	jr	ra
     9d0:	00000000 	nop

000009d4 <func_8001E304>:
     9d4:	27bdffb0 	addiu	sp,sp,-80
     9d8:	afbf0024 	sw	ra,36(sp)
     9dc:	afb00020 	sw	s0,32(sp)
     9e0:	afa50054 	sw	a1,84(sp)
     9e4:	848e015a 	lh	t6,346(a0)
     9e8:	8482001c 	lh	v0,28(a0)
     9ec:	24010003 	li	at,3
     9f0:	25cf0001 	addiu	t7,t6,1
     9f4:	00808025 	move	s0,a0
     9f8:	1441003b 	bne	v0,at,ae8 <func_8001E304+0x114>
     9fc:	a48f015a 	sh	t7,346(a0)
     a00:	c4800060 	lwc1	$f0,96(a0)
     a04:	44802000 	mtc1	zero,$f4
     a08:	3c01bfc0 	lui	at,0xbfc0
     a0c:	4604003c 	c.lt.s	$f0,$f4
     a10:	00000000 	nop
     a14:	45020035 	bc1fl	aec <func_8001E304+0x118>
     a18:	28410003 	slti	at,v0,3
     a1c:	44811000 	mtc1	at,$f2
     a20:	44803000 	mtc1	zero,$f6
     a24:	3c010000 	lui	at,0x0
     a28:	4602003c 	c.lt.s	$f0,$f2
     a2c:	e4860068 	swc1	$f6,104(a0)
     a30:	c428022c 	lwc1	$f8,556(at)
     a34:	3c014040 	lui	at,0x4040
     a38:	45000003 	bc1f	a48 <func_8001E304+0x74>
     a3c:	e488006c 	swc1	$f8,108(a0)
     a40:	e4820060 	swc1	$f2,96(a0)
     a44:	c4800060 	lwc1	$f0,96(a0)
     a48:	44815000 	mtc1	at,$f10
     a4c:	3c01447a 	lui	at,0x447a
     a50:	44819000 	mtc1	at,$f18
     a54:	460a0400 	add.s	$f16,$f0,$f10
     a58:	860a0018 	lh	t2,24(s0)
     a5c:	46128102 	mul.s	$f4,$f16,$f18
     a60:	4600218d 	trunc.w.s	$f6,$f4
     a64:	44093000 	mfc1	t1,$f6
     a68:	00000000 	nop
     a6c:	01495821 	addu	t3,t2,t1
     a70:	a60b0018 	sh	t3,24(s0)
     a74:	0c000000 	jal	0 <EnItem00_SetupAction>
     a78:	86040018 	lh	a0,24(s0)
     a7c:	e7a00034 	swc1	$f0,52(sp)
     a80:	0c000000 	jal	0 <EnItem00_SetupAction>
     a84:	8604008a 	lh	a0,138(s0)
     a88:	3c01c040 	lui	at,0xc040
     a8c:	44814000 	mtc1	at,$f8
     a90:	c7aa0034 	lwc1	$f10,52(sp)
     a94:	c6040024 	lwc1	$f4,36(s0)
     a98:	86040018 	lh	a0,24(s0)
     a9c:	460a4402 	mul.s	$f16,$f8,$f10
     aa0:	00000000 	nop
     aa4:	46100482 	mul.s	$f18,$f0,$f16
     aa8:	46122180 	add.s	$f6,$f4,$f18
     aac:	0c000000 	jal	0 <EnItem00_SetupAction>
     ab0:	e6060024 	swc1	$f6,36(s0)
     ab4:	e7a00034 	swc1	$f0,52(sp)
     ab8:	0c000000 	jal	0 <EnItem00_SetupAction>
     abc:	8604008a 	lh	a0,138(s0)
     ac0:	3c01c040 	lui	at,0xc040
     ac4:	44814000 	mtc1	at,$f8
     ac8:	c7aa0034 	lwc1	$f10,52(sp)
     acc:	c612002c 	lwc1	$f18,44(s0)
     ad0:	8602001c 	lh	v0,28(s0)
     ad4:	460a4402 	mul.s	$f16,$f8,$f10
     ad8:	00000000 	nop
     adc:	46100102 	mul.s	$f4,$f0,$f16
     ae0:	46049180 	add.s	$f6,$f18,$f4
     ae4:	e606002c 	swc1	$f6,44(s0)
     ae8:	28410003 	slti	at,v0,3
     aec:	50200006 	beqzl	at,b08 <func_8001E304+0x134>
     af0:	28410015 	slti	at,v0,21
     af4:	860c00b6 	lh	t4,182(s0)
     af8:	258d03c0 	addiu	t5,t4,960
     afc:	1000000f 	b	b3c <func_8001E304+0x168>
     b00:	a60d00b6 	sh	t5,182(s0)
     b04:	28410015 	slti	at,v0,21
     b08:	1420000c 	bnez	at,b3c <func_8001E304+0x168>
     b0c:	24010019 	li	at,25
     b10:	5041000b 	beql	v0,at,b40 <func_8001E304+0x16c>
     b14:	3c014000 	lui	at,0x4000
     b18:	860e0030 	lh	t6,48(s0)
     b1c:	861800b6 	lh	t8,182(s0)
     b20:	25cffd44 	addiu	t7,t6,-700
     b24:	a60f0030 	sh	t7,48(s0)
     b28:	86080030 	lh	t0,48(s0)
     b2c:	27190190 	addiu	t9,t8,400
     b30:	a61900b6 	sh	t9,182(s0)
     b34:	250ac000 	addiu	t2,t0,-16384
     b38:	a60a00b4 	sh	t2,180(s0)
     b3c:	3c014000 	lui	at,0x4000
     b40:	44814000 	mtc1	at,$f8
     b44:	c60a0060 	lwc1	$f10,96(s0)
     b48:	4608503e 	c.le.s	$f10,$f8
     b4c:	00000000 	nop
     b50:	4502000d 	bc1fl	b88 <func_8001E304+0x1b4>
     b54:	8fac0054 	lw	t4,84(sp)
     b58:	860300b8 	lh	v1,184(s0)
     b5c:	3401ffff 	li	at,0xffff
     b60:	240bffff 	li	t3,-1
     b64:	3062ffff 	andi	v0,v1,0xffff
     b68:	24422710 	addiu	v0,v0,10000
     b6c:	0041082a 	slt	at,v0,at
     b70:	10200003 	beqz	at,b80 <func_8001E304+0x1ac>
     b74:	24692710 	addiu	t1,v1,10000
     b78:	10000002 	b	b84 <func_8001E304+0x1b0>
     b7c:	a60900b8 	sh	t1,184(s0)
     b80:	a60b00b8 	sh	t3,184(s0)
     b84:	8fac0054 	lw	t4,84(sp)
     b88:	3c0d0001 	lui	t5,0x1
     b8c:	01ac6821 	addu	t5,t5,t4
     b90:	8dad1de4 	lw	t5,7652(t5)
     b94:	31ae0001 	andi	t6,t5,0x1
     b98:	55c0002e 	bnezl	t6,c54 <func_8001E304+0x280>
     b9c:	96190088 	lhu	t9,136(s0)
     ba0:	0c000000 	jal	0 <EnItem00_SetupAction>
     ba4:	00000000 	nop
     ba8:	3c013f00 	lui	at,0x3f00
     bac:	44818000 	mtc1	at,$f16
     bb0:	3c014120 	lui	at,0x4120
     bb4:	44812000 	mtc1	at,$f4
     bb8:	46100481 	sub.s	$f18,$f0,$f16
     bbc:	c6080024 	lwc1	$f8,36(s0)
     bc0:	46049182 	mul.s	$f6,$f18,$f4
     bc4:	46083280 	add.s	$f10,$f6,$f8
     bc8:	0c000000 	jal	0 <EnItem00_SetupAction>
     bcc:	e7aa0040 	swc1	$f10,64(sp)
     bd0:	3c013f00 	lui	at,0x3f00
     bd4:	44818000 	mtc1	at,$f16
     bd8:	3c014120 	lui	at,0x4120
     bdc:	44812000 	mtc1	at,$f4
     be0:	46100481 	sub.s	$f18,$f0,$f16
     be4:	c6080028 	lwc1	$f8,40(s0)
     be8:	46049182 	mul.s	$f6,$f18,$f4
     bec:	46083280 	add.s	$f10,$f6,$f8
     bf0:	0c000000 	jal	0 <EnItem00_SetupAction>
     bf4:	e7aa0044 	swc1	$f10,68(sp)
     bf8:	3c013f00 	lui	at,0x3f00
     bfc:	44818000 	mtc1	at,$f16
     c00:	3c014120 	lui	at,0x4120
     c04:	44812000 	mtc1	at,$f4
     c08:	46100481 	sub.s	$f18,$f0,$f16
     c0c:	c608002c 	lwc1	$f8,44(s0)
     c10:	3c0f0000 	lui	t7,0x0
     c14:	3c180000 	lui	t8,0x0
     c18:	46049182 	mul.s	$f6,$f18,$f4
     c1c:	27180000 	addiu	t8,t8,0
     c20:	25ef0000 	addiu	t7,t7,0
     c24:	3c060000 	lui	a2,0x0
     c28:	3c070000 	lui	a3,0x0
     c2c:	24e70000 	addiu	a3,a3,0
     c30:	24c60000 	addiu	a2,a2,0
     c34:	46083280 	add.s	$f10,$f6,$f8
     c38:	afaf0010 	sw	t7,16(sp)
     c3c:	afb80014 	sw	t8,20(sp)
     c40:	8fa40054 	lw	a0,84(sp)
     c44:	e7aa0048 	swc1	$f10,72(sp)
     c48:	0c000000 	jal	0 <EnItem00_SetupAction>
     c4c:	27a50040 	addiu	a1,sp,64
     c50:	96190088 	lhu	t9,136(s0)
     c54:	02002025 	move	a0,s0
     c58:	3c050000 	lui	a1,0x0
     c5c:	33280003 	andi	t0,t9,0x3
     c60:	51000009 	beqzl	t0,c88 <func_8001E304+0x2b4>
     c64:	8fbf0024 	lw	ra,36(sp)
     c68:	0c000000 	jal	0 <EnItem00_SetupAction>
     c6c:	24a50000 	addiu	a1,a1,0
     c70:	44808000 	mtc1	zero,$f16
     c74:	44809000 	mtc1	zero,$f18
     c78:	a60000b8 	sh	zero,184(s0)
     c7c:	e6100060 	swc1	$f16,96(s0)
     c80:	e6120068 	swc1	$f18,104(s0)
     c84:	8fbf0024 	lw	ra,36(sp)
     c88:	8fb00020 	lw	s0,32(sp)
     c8c:	27bd0050 	addiu	sp,sp,80
     c90:	03e00008 	jr	ra
     c94:	00000000 	nop

00000c98 <func_8001E5C8>:
     c98:	27bdffd0 	addiu	sp,sp,-48
     c9c:	afbf0024 	sw	ra,36(sp)
     ca0:	afb00020 	sw	s0,32(sp)
     ca4:	8cae1c44 	lw	t6,7236(a1)
     ca8:	00808025 	move	s0,a0
     cac:	afae002c 	sw	t6,44(sp)
     cb0:	848f0152 	lh	t7,338(a0)
     cb4:	51e00012 	beqzl	t7,d00 <func_8001E5C8+0x68>
     cb8:	8608015a 	lh	t0,346(s0)
     cbc:	0c000000 	jal	0 <EnItem00_SetupAction>
     cc0:	afa50034 	sw	a1,52(sp)
     cc4:	1440000c 	bnez	v0,cf8 <func_8001E5C8+0x60>
     cc8:	8fa50034 	lw	a1,52(sp)
     ccc:	3c0142a0 	lui	at,0x42a0
     cd0:	44812000 	mtc1	at,$f4
     cd4:	86060152 	lh	a2,338(s0)
     cd8:	02002025 	move	a0,s0
     cdc:	3c074248 	lui	a3,0x4248
     ce0:	0c000000 	jal	0 <EnItem00_SetupAction>
     ce4:	e7a40010 	swc1	$f4,16(sp)
     ce8:	8618015a 	lh	t8,346(s0)
     cec:	27190001 	addiu	t9,t8,1
     cf0:	10000002 	b	cfc <func_8001E5C8+0x64>
     cf4:	a619015a 	sh	t9,346(s0)
     cf8:	a6000152 	sh	zero,338(s0)
     cfc:	8608015a 	lh	t0,346(s0)
     d00:	8fa9002c 	lw	t1,44(sp)
     d04:	55000006 	bnezl	t0,d20 <func_8001E5C8+0x88>
     d08:	8d2b0024 	lw	t3,36(t1)
     d0c:	0c000000 	jal	0 <EnItem00_SetupAction>
     d10:	02002025 	move	a0,s0
     d14:	10000031 	b	ddc <func_8001E5C8+0x144>
     d18:	8fbf0024 	lw	ra,36(sp)
     d1c:	8d2b0024 	lw	t3,36(t1)
     d20:	8602001c 	lh	v0,28(s0)
     d24:	ae0b0024 	sw	t3,36(s0)
     d28:	8d2a0028 	lw	t2,40(t1)
     d2c:	28410003 	slti	at,v0,3
     d30:	ae0a0028 	sw	t2,40(s0)
     d34:	8d2b002c 	lw	t3,44(t1)
     d38:	10200005 	beqz	at,d50 <func_8001E5C8+0xb8>
     d3c:	ae0b002c 	sw	t3,44(s0)
     d40:	860c00b6 	lh	t4,182(s0)
     d44:	258d03c0 	addiu	t5,t4,960
     d48:	10000005 	b	d60 <func_8001E5C8+0xc8>
     d4c:	a60d00b6 	sh	t5,182(s0)
     d50:	24010003 	li	at,3
     d54:	54410003 	bnel	v0,at,d64 <func_8001E5C8+0xcc>
     d58:	8604015a 	lh	a0,346(s0)
     d5c:	a60000b6 	sh	zero,182(s0)
     d60:	8604015a 	lh	a0,346(s0)
     d64:	24013a98 	li	at,15000
     d68:	00810019 	multu	a0,at
     d6c:	00002012 	mflo	a0
     d70:	00042400 	sll	a0,a0,0x10
     d74:	0c000000 	jal	0 <EnItem00_SetupAction>
     d78:	00042403 	sra	a0,a0,0x10
     d7c:	860e015a 	lh	t6,346(s0)
     d80:	3c010000 	lui	at,0x0
     d84:	c42a0230 	lwc1	$f10,560(at)
     d88:	448e3000 	mtc1	t6,$f6
     d8c:	3c014220 	lui	at,0x4220
     d90:	44812000 	mtc1	at,$f4
     d94:	46803220 	cvt.s.w	$f8,$f6
     d98:	3c0f0000 	lui	t7,0x0
     d9c:	3c0141a0 	lui	at,0x41a0
     da0:	460a4402 	mul.s	$f16,$f8,$f10
     da4:	c6080028 	lwc1	$f8,40(s0)
     da8:	46100482 	mul.s	$f18,$f0,$f16
     dac:	46122180 	add.s	$f6,$f4,$f18
     db0:	46064280 	add.s	$f10,$f8,$f6
     db4:	e60a0028 	swc1	$f10,40(s0)
     db8:	8def0004 	lw	t7,4(t7)
     dbc:	55e00007 	bnezl	t7,ddc <func_8001E5C8+0x144>
     dc0:	8fbf0024 	lw	ra,36(sp)
     dc4:	c6100028 	lwc1	$f16,40(s0)
     dc8:	44812000 	mtc1	at,$f4
     dcc:	00000000 	nop
     dd0:	46048480 	add.s	$f18,$f16,$f4
     dd4:	e6120028 	swc1	$f18,40(s0)
     dd8:	8fbf0024 	lw	ra,36(sp)
     ddc:	8fb00020 	lw	s0,32(sp)
     de0:	27bd0030 	addiu	sp,sp,48
     de4:	03e00008 	jr	ra
     de8:	00000000 	nop

00000dec <EnItem00_Update>:
     dec:	27bdffb8 	addiu	sp,sp,-72
     df0:	afbf0024 	sw	ra,36(sp)
     df4:	afb10020 	sw	s1,32(sp)
     df8:	afb0001c 	sw	s0,28(sp)
     dfc:	afa0003c 	sw	zero,60(sp)
     e00:	a7a0003a 	sh	zero,58(sp)
     e04:	8482015a 	lh	v0,346(a0)
     e08:	00808025 	move	s0,a0
     e0c:	00a08825 	move	s1,a1
     e10:	18400003 	blez	v0,e20 <EnItem00_Update+0x34>
     e14:	244effff 	addiu	t6,v0,-1
     e18:	a48e015a 	sh	t6,346(a0)
     e1c:	8482015a 	lh	v0,346(a0)
     e20:	18400007 	blez	v0,e40 <EnItem00_Update+0x54>
     e24:	28410029 	slti	at,v0,41
     e28:	50200006 	beqzl	at,e44 <EnItem00_Update+0x58>
     e2c:	8e19014c 	lw	t9,332(s0)
     e30:	860f0154 	lh	t7,340(s0)
     e34:	5de00003 	bgtzl	t7,e44 <EnItem00_Update+0x58>
     e38:	8e19014c 	lw	t9,332(s0)
     e3c:	a6020156 	sh	v0,342(s0)
     e40:	8e19014c 	lw	t9,332(s0)
     e44:	02002025 	move	a0,s0
     e48:	02202825 	move	a1,s1
     e4c:	0320f809 	jalr	t9
     e50:	00000000 	nop
     e54:	3c010000 	lui	at,0x0
     e58:	c4220234 	lwc1	$f2,564(at)
     e5c:	c600015c 	lwc1	$f0,348(s0)
     e60:	44803000 	mtc1	zero,$f6
     e64:	44061000 	mfc1	a2,$f2
     e68:	46020102 	mul.s	$f4,$f0,$f2
     e6c:	44050000 	mfc1	a1,$f0
     e70:	26040050 	addiu	a0,s0,80
     e74:	e7a60010 	swc1	$f6,16(sp)
     e78:	44072000 	mfc1	a3,$f4
     e7c:	0c000000 	jal	0 <EnItem00_SetupAction>
     e80:	00000000 	nop
     e84:	44804000 	mtc1	zero,$f8
     e88:	c60a006c 	lwc1	$f10,108(s0)
     e8c:	c6020050 	lwc1	$f2,80(s0)
     e90:	460a4032 	c.eq.s	$f8,$f10
     e94:	e6020058 	swc1	$f2,88(s0)
     e98:	e6020054 	swc1	$f2,84(s0)
     e9c:	45030062 	bc1tl	1028 <EnItem00_Update+0x23c>
     ea0:	26060160 	addiu	a2,s0,352
     ea4:	96180088 	lhu	t8,136(s0)
     ea8:	3c020001 	lui	v0,0x1
     eac:	00511021 	addu	v0,v0,s1
     eb0:	33080003 	andi	t0,t8,0x3
     eb4:	1100003b 	beqz	t0,fa4 <EnItem00_Update+0x1b8>
     eb8:	3c090000 	lui	t1,0x0
     ebc:	8c421de4 	lw	v0,7652(v0)
     ec0:	8d290000 	lw	t1,0(t1)
     ec4:	3c050000 	lui	a1,0x0
     ec8:	24a50000 	addiu	a1,a1,0
     ecc:	10490032 	beq	v0,t1,f98 <EnItem00_Update+0x1ac>
     ed0:	3c010000 	lui	at,0x0
     ed4:	ac220000 	sw	v0,0(at)
     ed8:	a4a00000 	sh	zero,0(a1)
     edc:	00001825 	move	v1,zero
     ee0:	24040064 	li	a0,100
     ee4:	00035040 	sll	t2,v1,0x1
     ee8:	022a5821 	addu	t3,s1,t2
     eec:	956c1b9c 	lhu	t4,7068(t3)
     ef0:	318d0001 	andi	t5,t4,0x1
     ef4:	51a00023 	beqzl	t5,f84 <EnItem00_Update+0x198>
     ef8:	24630001 	addiu	v1,v1,1
     efc:	00640019 	multu	v1,a0
     f00:	00007012 	mflo	t6
     f04:	022e7821 	addu	t7,s1,t6
     f08:	8de20814 	lw	v0,2068(t7)
     f0c:	5040001d 	beqzl	v0,f84 <EnItem00_Update+0x198>
     f10:	24630001 	addiu	v1,v1,1
     f14:	8c590130 	lw	t9,304(v0)
     f18:	5320001a 	beqzl	t9,f84 <EnItem00_Update+0x198>
     f1c:	24630001 	addiu	v1,v1,1
     f20:	c4500100 	lwc1	$f16,256(v0)
     f24:	c4520024 	lwc1	$f18,36(v0)
     f28:	46128032 	c.eq.s	$f16,$f18
     f2c:	00000000 	nop
     f30:	4502000e 	bc1fl	f6c <EnItem00_Update+0x180>
     f34:	84b80000 	lh	t8,0(a1)
     f38:	c4440104 	lwc1	$f4,260(v0)
     f3c:	c4460028 	lwc1	$f6,40(v0)
     f40:	46062032 	c.eq.s	$f4,$f6
     f44:	00000000 	nop
     f48:	45020008 	bc1fl	f6c <EnItem00_Update+0x180>
     f4c:	84b80000 	lh	t8,0(a1)
     f50:	c4480108 	lwc1	$f8,264(v0)
     f54:	c44a002c 	lwc1	$f10,44(v0)
     f58:	460a4032 	c.eq.s	$f8,$f10
     f5c:	00000000 	nop
     f60:	45030008 	bc1tl	f84 <EnItem00_Update+0x198>
     f64:	24630001 	addiu	v1,v1,1
     f68:	84b80000 	lh	t8,0(a1)
     f6c:	27080001 	addiu	t0,t8,1
     f70:	a4a80000 	sh	t0,0(a1)
     f74:	3c050000 	lui	a1,0x0
     f78:	10000010 	b	fbc <EnItem00_Update+0x1d0>
     f7c:	24a50000 	addiu	a1,a1,0
     f80:	24630001 	addiu	v1,v1,1
     f84:	00031c00 	sll	v1,v1,0x10
     f88:	00031c03 	sra	v1,v1,0x10
     f8c:	28610032 	slti	at,v1,50
     f90:	5420ffd5 	bnezl	at,ee8 <EnItem00_Update+0xfc>
     f94:	00035040 	sll	t2,v1,0x1
     f98:	3c050000 	lui	a1,0x0
     f9c:	10000007 	b	fbc <EnItem00_Update+0x1d0>
     fa0:	24a50000 	addiu	a1,a1,0
     fa4:	24090001 	li	t1,1
     fa8:	a7a9003a 	sh	t1,58(sp)
     fac:	0c000000 	jal	0 <EnItem00_SetupAction>
     fb0:	02002025 	move	a0,s0
     fb4:	3c050000 	lui	a1,0x0
     fb8:	24a50000 	addiu	a1,a1,0
     fbc:	87aa003a 	lh	t2,58(sp)
     fc0:	3c014170 	lui	at,0x4170
     fc4:	02202025 	move	a0,s1
     fc8:	15400004 	bnez	t2,fdc <EnItem00_Update+0x1f0>
     fcc:	3c064120 	lui	a2,0x4120
     fd0:	84ab0000 	lh	t3,0(a1)
     fd4:	51600014 	beqzl	t3,1028 <EnItem00_Update+0x23c>
     fd8:	26060160 	addiu	a2,s0,352
     fdc:	44810000 	mtc1	at,$f0
     fe0:	240c001d 	li	t4,29
     fe4:	afac0014 	sw	t4,20(sp)
     fe8:	44070000 	mfc1	a3,$f0
     fec:	02002825 	move	a1,s0
     ff0:	0c000000 	jal	0 <EnItem00_SetupAction>
     ff4:	e7a00010 	swc1	$f0,16(sp)
     ff8:	3c010000 	lui	at,0x0
     ffc:	c4300238 	lwc1	$f16,568(at)
    1000:	c6120080 	lwc1	$f18,128(s0)
    1004:	4610903e 	c.le.s	$f18,$f16
    1008:	00000000 	nop
    100c:	45020006 	bc1fl	1028 <EnItem00_Update+0x23c>
    1010:	26060160 	addiu	a2,s0,352
    1014:	0c000000 	jal	0 <EnItem00_SetupAction>
    1018:	02002025 	move	a0,s0
    101c:	1000010f 	b	145c <EnItem00_Update+0x670>
    1020:	8fbf0024 	lw	ra,36(sp)
    1024:	26060160 	addiu	a2,s0,352
    1028:	00c02825 	move	a1,a2
    102c:	afa60028 	sw	a2,40(sp)
    1030:	0c000000 	jal	0 <EnItem00_SetupAction>
    1034:	02002025 	move	a0,s0
    1038:	3c010001 	lui	at,0x1
    103c:	34211e60 	ori	at,at,0x1e60
    1040:	8fa60028 	lw	a2,40(sp)
    1044:	02212821 	addu	a1,s1,at
    1048:	0c000000 	jal	0 <EnItem00_SetupAction>
    104c:	02202025 	move	a0,s1
    1050:	8603001c 	lh	v1,28(s0)
    1054:	24010015 	li	at,21
    1058:	10610007 	beq	v1,at,1078 <EnItem00_Update+0x28c>
    105c:	24010016 	li	at,22
    1060:	10610005 	beq	v1,at,1078 <EnItem00_Update+0x28c>
    1064:	24010017 	li	at,23
    1068:	10610003 	beq	v1,at,1078 <EnItem00_Update+0x28c>
    106c:	24010018 	li	at,24
    1070:	54610012 	bnel	v1,at,10bc <EnItem00_Update+0x2d0>
    1074:	860d0154 	lh	t5,340(s0)
    1078:	0c000000 	jal	0 <EnItem00_SetupAction>
    107c:	860400b4 	lh	a0,180(s0)
    1080:	3c014214 	lui	at,0x4214
    1084:	44812000 	mtc1	at,$f4
    1088:	44803000 	mtc1	zero,$f6
    108c:	46040082 	mul.s	$f2,$f0,$f4
    1090:	4602303e 	c.le.s	$f6,$f2
    1094:	e60200bc 	swc1	$f2,188(s0)
    1098:	45020005 	bc1fl	10b0 <EnItem00_Update+0x2c4>
    109c:	c60a00bc 	lwc1	$f10,188(s0)
    10a0:	c60800bc 	lwc1	$f8,188(s0)
    10a4:	10000004 	b	10b8 <EnItem00_Update+0x2cc>
    10a8:	e60800bc 	swc1	$f8,188(s0)
    10ac:	c60a00bc 	lwc1	$f10,188(s0)
    10b0:	46005407 	neg.s	$f16,$f10
    10b4:	e61000bc 	swc1	$f16,188(s0)
    10b8:	860d0154 	lh	t5,340(s0)
    10bc:	3c0141f0 	lui	at,0x41f0
    10c0:	5da000e6 	bgtzl	t5,145c <EnItem00_Update+0x670>
    10c4:	8fbf0024 	lw	ra,36(sp)
    10c8:	44819000 	mtc1	at,$f18
    10cc:	c6040090 	lwc1	$f4,144(s0)
    10d0:	3c01c248 	lui	at,0xc248
    10d4:	4612203e 	c.le.s	$f4,$f18
    10d8:	00000000 	nop
    10dc:	4502000f 	bc1fl	111c <EnItem00_Update+0x330>
    10e0:	02002025 	move	a0,s0
    10e4:	c6000094 	lwc1	$f0,148(s0)
    10e8:	44813000 	mtc1	at,$f6
    10ec:	3c014248 	lui	at,0x4248
    10f0:	4600303e 	c.le.s	$f6,$f0
    10f4:	00000000 	nop
    10f8:	45020008 	bc1fl	111c <EnItem00_Update+0x330>
    10fc:	02002025 	move	a0,s0
    1100:	44814000 	mtc1	at,$f8
    1104:	00000000 	nop
    1108:	4608003e 	c.le.s	$f0,$f8
    110c:	00000000 	nop
    1110:	45030006 	bc1tl	112c <EnItem00_Update+0x340>
    1114:	3c0e0001 	lui	t6,0x1
    1118:	02002025 	move	a0,s0
    111c:	0c000000 	jal	0 <EnItem00_SetupAction>
    1120:	02202825 	move	a1,s1
    1124:	104000cc 	beqz	v0,1458 <EnItem00_Update+0x66c>
    1128:	3c0e0001 	lui	t6,0x1
    112c:	01d17021 	addu	t6,t6,s1
    1130:	95ce0a20 	lhu	t6,2592(t6)
    1134:	55c000c9 	bnezl	t6,145c <EnItem00_Update+0x670>
    1138:	8fbf0024 	lw	ra,36(sp)
    113c:	960f001c 	lhu	t7,28(s0)
    1140:	2de1001a 	sltiu	at,t7,26
    1144:	10200065 	beqz	at,12dc <EnItem00_Update+0x4f0>
    1148:	000f7880 	sll	t7,t7,0x2
    114c:	3c010000 	lui	at,0x0
    1150:	002f0821 	addu	at,at,t7
    1154:	8c2f023c 	lw	t7,572(at)
    1158:	01e00008 	jr	t7
    115c:	00000000 	nop
    1160:	02202025 	move	a0,s1
    1164:	0c000000 	jal	0 <EnItem00_SetupAction>
    1168:	24050084 	li	a1,132
    116c:	1000005c 	b	12e0 <EnItem00_Update+0x4f4>
    1170:	8fa8003c 	lw	t0,60(sp)
    1174:	02202025 	move	a0,s1
    1178:	0c000000 	jal	0 <EnItem00_SetupAction>
    117c:	24050085 	li	a1,133
    1180:	10000057 	b	12e0 <EnItem00_Update+0x4f4>
    1184:	8fa8003c 	lw	t0,60(sp)
    1188:	02202025 	move	a0,s1
    118c:	0c000000 	jal	0 <EnItem00_SetupAction>
    1190:	24050086 	li	a1,134
    1194:	10000052 	b	12e0 <EnItem00_Update+0x4f4>
    1198:	8fa8003c 	lw	t0,60(sp)
    119c:	02202025 	move	a0,s1
    11a0:	0c000000 	jal	0 <EnItem00_SetupAction>
    11a4:	24050087 	li	a1,135
    11a8:	1000004d 	b	12e0 <EnItem00_Update+0x4f4>
    11ac:	8fa8003c 	lw	t0,60(sp)
    11b0:	02202025 	move	a0,s1
    11b4:	0c000000 	jal	0 <EnItem00_SetupAction>
    11b8:	24050088 	li	a1,136
    11bc:	10000048 	b	12e0 <EnItem00_Update+0x4f4>
    11c0:	8fa8003c 	lw	t0,60(sp)
    11c4:	24190007 	li	t9,7
    11c8:	10000044 	b	12dc <EnItem00_Update+0x4f0>
    11cc:	afb9003c 	sw	t9,60(sp)
    11d0:	24180002 	li	t8,2
    11d4:	10000041 	b	12dc <EnItem00_Update+0x4f0>
    11d8:	afb8003c 	sw	t8,60(sp)
    11dc:	02202025 	move	a0,s1
    11e0:	0c000000 	jal	0 <EnItem00_SetupAction>
    11e4:	24050083 	li	a1,131
    11e8:	1000003d 	b	12e0 <EnItem00_Update+0x4f4>
    11ec:	8fa8003c 	lw	t0,60(sp)
    11f0:	02202025 	move	a0,s1
    11f4:	0c000000 	jal	0 <EnItem00_SetupAction>
    11f8:	24050070 	li	a1,112
    11fc:	10000038 	b	12e0 <EnItem00_Update+0x4f4>
    1200:	8fa8003c 	lw	t0,60(sp)
    1204:	02202025 	move	a0,s1
    1208:	0c000000 	jal	0 <EnItem00_SetupAction>
    120c:	2405008e 	li	a1,142
    1210:	10000033 	b	12e0 <EnItem00_Update+0x4f4>
    1214:	8fa8003c 	lw	t0,60(sp)
    1218:	02202025 	move	a0,s1
    121c:	0c000000 	jal	0 <EnItem00_SetupAction>
    1220:	24050003 	li	a1,3
    1224:	1000002e 	b	12e0 <EnItem00_Update+0x4f4>
    1228:	8fa8003c 	lw	t0,60(sp)
    122c:	02202025 	move	a0,s1
    1230:	0c000000 	jal	0 <EnItem00_SetupAction>
    1234:	24050092 	li	a1,146
    1238:	10000029 	b	12e0 <EnItem00_Update+0x4f4>
    123c:	8fa8003c 	lw	t0,60(sp)
    1240:	02202025 	move	a0,s1
    1244:	0c000000 	jal	0 <EnItem00_SetupAction>
    1248:	24050093 	li	a1,147
    124c:	10000024 	b	12e0 <EnItem00_Update+0x4f4>
    1250:	8fa8003c 	lw	t0,60(sp)
    1254:	02202025 	move	a0,s1
    1258:	0c000000 	jal	0 <EnItem00_SetupAction>
    125c:	24050094 	li	a1,148
    1260:	1000001f 	b	12e0 <EnItem00_Update+0x4f4>
    1264:	8fa8003c 	lw	t0,60(sp)
    1268:	2408003c 	li	t0,60
    126c:	1000001b 	b	12dc <EnItem00_Update+0x4f0>
    1270:	afa8003c 	sw	t0,60(sp)
    1274:	24090042 	li	t1,66
    1278:	10000018 	b	12dc <EnItem00_Update+0x4f0>
    127c:	afa9003c 	sw	t1,60(sp)
    1280:	240a003e 	li	t2,62
    1284:	10000015 	b	12dc <EnItem00_Update+0x4f0>
    1288:	afaa003c 	sw	t2,60(sp)
    128c:	240b003d 	li	t3,61
    1290:	10000012 	b	12dc <EnItem00_Update+0x4f0>
    1294:	afab003c 	sw	t3,60(sp)
    1298:	240c0044 	li	t4,68
    129c:	1000000f 	b	12dc <EnItem00_Update+0x4f0>
    12a0:	afac003c 	sw	t4,60(sp)
    12a4:	240d0043 	li	t5,67
    12a8:	1000000c 	b	12dc <EnItem00_Update+0x4f0>
    12ac:	afad003c 	sw	t5,60(sp)
    12b0:	240e0029 	li	t6,41
    12b4:	10000009 	b	12dc <EnItem00_Update+0x4f0>
    12b8:	afae003c 	sw	t6,60(sp)
    12bc:	240f002a 	li	t7,42
    12c0:	10000006 	b	12dc <EnItem00_Update+0x4f0>
    12c4:	afaf003c 	sw	t7,60(sp)
    12c8:	2419002d 	li	t9,45
    12cc:	10000003 	b	12dc <EnItem00_Update+0x4f0>
    12d0:	afb9003c 	sw	t9,60(sp)
    12d4:	2418002c 	li	t8,44
    12d8:	afb8003c 	sw	t8,60(sp)
    12dc:	8fa8003c 	lw	t0,60(sp)
    12e0:	5100000a 	beqzl	t0,130c <EnItem00_Update+0x520>
    12e4:	8602001c 	lh	v0,28(s0)
    12e8:	02002025 	move	a0,s0
    12ec:	0c000000 	jal	0 <EnItem00_SetupAction>
    12f0:	02202825 	move	a1,s1
    12f4:	14400004 	bnez	v0,1308 <EnItem00_Update+0x51c>
    12f8:	8fa6003c 	lw	a2,60(sp)
    12fc:	02002025 	move	a0,s0
    1300:	0c000000 	jal	0 <EnItem00_SetupAction>
    1304:	02202825 	move	a1,s1
    1308:	8602001c 	lh	v0,28(s0)
    130c:	2449fffa 	addiu	t1,v0,-6
    1310:	2d210013 	sltiu	at,t1,19
    1314:	10200011 	beqz	at,135c <EnItem00_Update+0x570>
    1318:	00094880 	sll	t1,t1,0x2
    131c:	3c010000 	lui	at,0x0
    1320:	00290821 	addu	at,at,t1
    1324:	8c2902a4 	lw	t1,676(at)
    1328:	01200008 	jr	t1
    132c:	00000000 	nop
    1330:	02002025 	move	a0,s0
    1334:	0c000000 	jal	0 <EnItem00_SetupAction>
    1338:	02202825 	move	a1,s1
    133c:	10400046 	beqz	v0,1458 <EnItem00_Update+0x66c>
    1340:	02202025 	move	a0,s1
    1344:	0c000000 	jal	0 <EnItem00_SetupAction>
    1348:	86050150 	lh	a1,336(s0)
    134c:	0c000000 	jal	0 <EnItem00_SetupAction>
    1350:	02002025 	move	a0,s0
    1354:	10000041 	b	145c <EnItem00_Update+0x670>
    1358:	8fbf0024 	lw	ra,36(sp)
    135c:	28410003 	slti	at,v0,3
    1360:	14200004 	bnez	at,1374 <EnItem00_Update+0x588>
    1364:	3c070000 	lui	a3,0x0
    1368:	24010013 	li	at,19
    136c:	1441000d 	bne	v0,at,13a4 <EnItem00_Update+0x5b8>
    1370:	8fab003c 	lw	t3,60(sp)
    1374:	3c0a0000 	lui	t2,0x0
    1378:	24e70000 	addiu	a3,a3,0
    137c:	254a0000 	addiu	t2,t2,0
    1380:	3c050000 	lui	a1,0x0
    1384:	24a50000 	addiu	a1,a1,0
    1388:	afaa0014 	sw	t2,20(sp)
    138c:	afa70010 	sw	a3,16(sp)
    1390:	24044803 	li	a0,18435
    1394:	0c000000 	jal	0 <EnItem00_SetupAction>
    1398:	24060004 	li	a2,4
    139c:	10000019 	b	1404 <EnItem00_Update+0x618>
    13a0:	02202025 	move	a0,s1
    13a4:	1160000c 	beqz	t3,13d8 <EnItem00_Update+0x5ec>
    13a8:	3c070000 	lui	a3,0x0
    13ac:	02002025 	move	a0,s0
    13b0:	0c000000 	jal	0 <EnItem00_SetupAction>
    13b4:	02202825 	move	a1,s1
    13b8:	10400027 	beqz	v0,1458 <EnItem00_Update+0x66c>
    13bc:	02202025 	move	a0,s1
    13c0:	0c000000 	jal	0 <EnItem00_SetupAction>
    13c4:	86050150 	lh	a1,336(s0)
    13c8:	0c000000 	jal	0 <EnItem00_SetupAction>
    13cc:	02002025 	move	a0,s0
    13d0:	10000022 	b	145c <EnItem00_Update+0x670>
    13d4:	8fbf0024 	lw	ra,36(sp)
    13d8:	3c0c0000 	lui	t4,0x0
    13dc:	24e70000 	addiu	a3,a3,0
    13e0:	258c0000 	addiu	t4,t4,0
    13e4:	3c050000 	lui	a1,0x0
    13e8:	24a50000 	addiu	a1,a1,0
    13ec:	afac0014 	sw	t4,20(sp)
    13f0:	afa70010 	sw	a3,16(sp)
    13f4:	24044824 	li	a0,18468
    13f8:	0c000000 	jal	0 <EnItem00_SetupAction>
    13fc:	24060004 	li	a2,4
    1400:	02202025 	move	a0,s1
    1404:	0c000000 	jal	0 <EnItem00_SetupAction>
    1408:	86050150 	lh	a1,336(s0)
    140c:	44805000 	mtc1	zero,$f10
    1410:	44808000 	mtc1	zero,$f16
    1414:	44809000 	mtc1	zero,$f18
    1418:	240d000f 	li	t5,15
    141c:	240e0023 	li	t6,35
    1420:	a60d015a 	sh	t5,346(s0)
    1424:	a60e0154 	sh	t6,340(s0)
    1428:	a60000b8 	sh	zero,184(s0)
    142c:	02002025 	move	a0,s0
    1430:	8e05015c 	lw	a1,348(s0)
    1434:	e60a0068 	swc1	$f10,104(s0)
    1438:	e6100060 	swc1	$f16,96(s0)
    143c:	0c000000 	jal	0 <EnItem00_SetupAction>
    1440:	e612006c 	swc1	$f18,108(s0)
    1444:	3c050000 	lui	a1,0x0
    1448:	a6000152 	sh	zero,338(s0)
    144c:	24a50000 	addiu	a1,a1,0
    1450:	0c000000 	jal	0 <EnItem00_SetupAction>
    1454:	02002025 	move	a0,s0
    1458:	8fbf0024 	lw	ra,36(sp)
    145c:	8fb0001c 	lw	s0,28(sp)
    1460:	8fb10020 	lw	s1,32(sp)
    1464:	03e00008 	jr	ra
    1468:	27bd0048 	addiu	sp,sp,72

0000146c <EnItem00_Draw>:
    146c:	27bdffd8 	addiu	sp,sp,-40
    1470:	afbf0014 	sw	ra,20(sp)
    1474:	afa5002c 	sw	a1,44(sp)
    1478:	848f0158 	lh	t7,344(a0)
    147c:	848e0156 	lh	t6,342(a0)
    1480:	00803025 	move	a2,a0
    1484:	01cfc024 	and	t8,t6,t7
    1488:	5700005a 	bnezl	t8,15f4 <EnItem00_Draw+0x188>
    148c:	8fbf0014 	lw	ra,20(sp)
    1490:	9499001c 	lhu	t9,28(a0)
    1494:	2f21001a 	sltiu	at,t9,26
    1498:	10200055 	beqz	at,15f0 <EnItem00_Draw+0x184>
    149c:	0019c880 	sll	t9,t9,0x2
    14a0:	3c010000 	lui	at,0x0
    14a4:	00390821 	addu	at,at,t9
    14a8:	8c3902f0 	lw	t9,752(at)
    14ac:	03200008 	jr	t9
    14b0:	00000000 	nop
    14b4:	00c02025 	move	a0,a2
    14b8:	0c000000 	jal	0 <EnItem00_SetupAction>
    14bc:	8fa5002c 	lw	a1,44(sp)
    14c0:	1000004c 	b	15f4 <EnItem00_Draw+0x188>
    14c4:	8fbf0014 	lw	ra,20(sp)
    14c8:	00c02025 	move	a0,a2
    14cc:	0c000000 	jal	0 <EnItem00_SetupAction>
    14d0:	8fa5002c 	lw	a1,44(sp)
    14d4:	10000047 	b	15f4 <EnItem00_Draw+0x188>
    14d8:	8fbf0014 	lw	ra,20(sp)
    14dc:	00c02025 	move	a0,a2
    14e0:	0c000000 	jal	0 <EnItem00_SetupAction>
    14e4:	8fa5002c 	lw	a1,44(sp)
    14e8:	10000042 	b	15f4 <EnItem00_Draw+0x188>
    14ec:	8fbf0014 	lw	ra,20(sp)
    14f0:	84c2015a 	lh	v0,346(a2)
    14f4:	2401ffff 	li	at,-1
    14f8:	04430027 	bgezl	v0,1598 <EnItem00_Draw+0x12c>
    14fc:	00c02025 	move	a0,a2
    1500:	14410019 	bne	v0,at,1568 <EnItem00_Draw+0xfc>
    1504:	8fa4002c 	lw	a0,44(sp)
    1508:	3c010001 	lui	at,0x1
    150c:	342117a4 	ori	at,at,0x17a4
    1510:	00812021 	addu	a0,a0,at
    1514:	afa40018 	sw	a0,24(sp)
    1518:	240500b7 	li	a1,183
    151c:	0c000000 	jal	0 <EnItem00_SetupAction>
    1520:	afa60028 	sw	a2,40(sp)
    1524:	00022e00 	sll	a1,v0,0x18
    1528:	8fa40018 	lw	a0,24(sp)
    152c:	a3a2001f 	sb	v0,31(sp)
    1530:	0c000000 	jal	0 <EnItem00_SetupAction>
    1534:	00052e03 	sra	a1,a1,0x18
    1538:	1040002d 	beqz	v0,15f0 <EnItem00_Draw+0x184>
    153c:	8fa60028 	lw	a2,40(sp)
    1540:	83a8001f 	lb	t0,31(sp)
    1544:	00c02825 	move	a1,a2
    1548:	a0c8001e 	sb	t0,30(a2)
    154c:	afa60028 	sw	a2,40(sp)
    1550:	0c000000 	jal	0 <EnItem00_SetupAction>
    1554:	8fa4002c 	lw	a0,44(sp)
    1558:	8fa60028 	lw	a2,40(sp)
    155c:	2409fffe 	li	t1,-2
    1560:	10000023 	b	15f0 <EnItem00_Draw+0x184>
    1564:	a4c9015a 	sh	t1,346(a2)
    1568:	3c014180 	lui	at,0x4180
    156c:	44816000 	mtc1	at,$f12
    1570:	24070001 	li	a3,1
    1574:	44066000 	mfc1	a2,$f12
    1578:	0c000000 	jal	0 <EnItem00_SetupAction>
    157c:	46006386 	mov.s	$f14,$f12
    1580:	8fa4002c 	lw	a0,44(sp)
    1584:	0c000000 	jal	0 <EnItem00_SetupAction>
    1588:	24050008 	li	a1,8
    158c:	10000019 	b	15f4 <EnItem00_Draw+0x188>
    1590:	8fbf0014 	lw	ra,20(sp)
    1594:	00c02025 	move	a0,a2
    1598:	0c000000 	jal	0 <EnItem00_SetupAction>
    159c:	8fa5002c 	lw	a1,44(sp)
    15a0:	10000014 	b	15f4 <EnItem00_Draw+0x188>
    15a4:	8fbf0014 	lw	ra,20(sp)
    15a8:	8fa4002c 	lw	a0,44(sp)
    15ac:	0c000000 	jal	0 <EnItem00_SetupAction>
    15b0:	2405001c 	li	a1,28
    15b4:	1000000f 	b	15f4 <EnItem00_Draw+0x188>
    15b8:	8fbf0014 	lw	ra,20(sp)
    15bc:	8fa4002c 	lw	a0,44(sp)
    15c0:	0c000000 	jal	0 <EnItem00_SetupAction>
    15c4:	2405002b 	li	a1,43
    15c8:	1000000a 	b	15f4 <EnItem00_Draw+0x188>
    15cc:	8fbf0014 	lw	ra,20(sp)
    15d0:	8fa4002c 	lw	a0,44(sp)
    15d4:	0c000000 	jal	0 <EnItem00_SetupAction>
    15d8:	2405003c 	li	a1,60
    15dc:	10000005 	b	15f4 <EnItem00_Draw+0x188>
    15e0:	8fbf0014 	lw	ra,20(sp)
    15e4:	8fa4002c 	lw	a0,44(sp)
    15e8:	0c000000 	jal	0 <EnItem00_SetupAction>
    15ec:	2405003b 	li	a1,59
    15f0:	8fbf0014 	lw	ra,20(sp)
    15f4:	27bd0028 	addiu	sp,sp,40
    15f8:	03e00008 	jr	ra
    15fc:	00000000 	nop

00001600 <func_8001EF30>:
    1600:	27bdffb0 	addiu	sp,sp,-80
    1604:	afb10018 	sw	s1,24(sp)
    1608:	00a08825 	move	s1,a1
    160c:	afbf001c 	sw	ra,28(sp)
    1610:	afb00014 	sw	s0,20(sp)
    1614:	afa40050 	sw	a0,80(sp)
    1618:	8ca50000 	lw	a1,0(a1)
    161c:	3c060000 	lui	a2,0x0
    1620:	24c60000 	addiu	a2,a2,0
    1624:	27a40034 	addiu	a0,sp,52
    1628:	2407060a 	li	a3,1546
    162c:	0c000000 	jal	0 <EnItem00_SetupAction>
    1630:	00a08025 	move	s0,a1
    1634:	0c000000 	jal	0 <EnItem00_SetupAction>
    1638:	8e240000 	lw	a0,0(s1)
    163c:	8fa40050 	lw	a0,80(sp)
    1640:	02202825 	move	a1,s1
    1644:	0c000000 	jal	0 <EnItem00_SetupAction>
    1648:	00003025 	move	a2,zero
    164c:	8fae0050 	lw	t6,80(sp)
    1650:	3c18da38 	lui	t8,0xda38
    1654:	37180003 	ori	t8,t8,0x3
    1658:	85c2001c 	lh	v0,28(t6)
    165c:	3c050000 	lui	a1,0x0
    1660:	28410003 	slti	at,v0,3
    1664:	10200003 	beqz	at,1674 <func_8001EF30+0x74>
    1668:	2447fff0 	addiu	a3,v0,-16
    166c:	10000001 	b	1674 <func_8001EF30+0x74>
    1670:	00403825 	move	a3,v0
    1674:	8e0202c0 	lw	v0,704(s0)
    1678:	24a50014 	addiu	a1,a1,20
    167c:	2406061a 	li	a2,1562
    1680:	244f0008 	addiu	t7,v0,8
    1684:	ae0f02c0 	sw	t7,704(s0)
    1688:	ac580000 	sw	t8,0(v0)
    168c:	8e240000 	lw	a0,0(s1)
    1690:	afa70048 	sw	a3,72(sp)
    1694:	0c000000 	jal	0 <EnItem00_SetupAction>
    1698:	afa20030 	sw	v0,48(sp)
    169c:	8fa30030 	lw	v1,48(sp)
    16a0:	8fa70048 	lw	a3,72(sp)
    16a4:	3c08db06 	lui	t0,0xdb06
    16a8:	ac620004 	sw	v0,4(v1)
    16ac:	8e0202c0 	lw	v0,704(s0)
    16b0:	35080020 	ori	t0,t0,0x20
    16b4:	3c040000 	lui	a0,0x0
    16b8:	24590008 	addiu	t9,v0,8
    16bc:	ae1902c0 	sw	t9,704(s0)
    16c0:	00074880 	sll	t1,a3,0x2
    16c4:	00892021 	addu	a0,a0,t1
    16c8:	ac480000 	sw	t0,0(v0)
    16cc:	8c840000 	lw	a0,0(a0)
    16d0:	3c0e0000 	lui	t6,0x0
    16d4:	3c0100ff 	lui	at,0xff
    16d8:	00045900 	sll	t3,a0,0x4
    16dc:	000b6702 	srl	t4,t3,0x1c
    16e0:	000c6880 	sll	t5,t4,0x2
    16e4:	01cd7021 	addu	t6,t6,t5
    16e8:	8dce0000 	lw	t6,0(t6)
    16ec:	3421ffff 	ori	at,at,0xffff
    16f0:	00815024 	and	t2,a0,at
    16f4:	3c018000 	lui	at,0x8000
    16f8:	014e7821 	addu	t7,t2,t6
    16fc:	01e1c021 	addu	t8,t7,at
    1700:	ac580004 	sw	t8,4(v0)
    1704:	8e0202c0 	lw	v0,704(s0)
    1708:	3c090000 	lui	t1,0x0
    170c:	25290000 	addiu	t1,t1,0
    1710:	24590008 	addiu	t9,v0,8
    1714:	ae1902c0 	sw	t9,704(s0)
    1718:	3c08de00 	lui	t0,0xde00
    171c:	3c060000 	lui	a2,0x0
    1720:	ac480000 	sw	t0,0(v0)
    1724:	ac490004 	sw	t1,4(v0)
    1728:	8e250000 	lw	a1,0(s1)
    172c:	24c60028 	addiu	a2,a2,40
    1730:	27a40034 	addiu	a0,sp,52
    1734:	0c000000 	jal	0 <EnItem00_SetupAction>
    1738:	24070620 	li	a3,1568
    173c:	8fbf001c 	lw	ra,28(sp)
    1740:	8fb00014 	lw	s0,20(sp)
    1744:	8fb10018 	lw	s1,24(sp)
    1748:	03e00008 	jr	ra
    174c:	27bd0050 	addiu	sp,sp,80

00001750 <func_8001F080>:
    1750:	27bdffb8 	addiu	sp,sp,-72
    1754:	afbf001c 	sw	ra,28(sp)
    1758:	afb00018 	sw	s0,24(sp)
    175c:	afa40048 	sw	a0,72(sp)
    1760:	afa5004c 	sw	a1,76(sp)
    1764:	8488001c 	lh	t0,28(a0)
    1768:	8ca50000 	lw	a1,0(a1)
    176c:	3c060000 	lui	a2,0x0
    1770:	2508fffd 	addiu	t0,t0,-3
    1774:	afa80044 	sw	t0,68(sp)
    1778:	24c6003c 	addiu	a2,a2,60
    177c:	27a40030 	addiu	a0,sp,48
    1780:	2407063a 	li	a3,1594
    1784:	0c000000 	jal	0 <EnItem00_SetupAction>
    1788:	00a08025 	move	s0,a1
    178c:	8fa4004c 	lw	a0,76(sp)
    1790:	0c000000 	jal	0 <EnItem00_SetupAction>
    1794:	8e0502c0 	lw	a1,704(s0)
    1798:	8fa80044 	lw	t0,68(sp)
    179c:	ae0202c0 	sw	v0,704(s0)
    17a0:	8fb80048 	lw	t8,72(sp)
    17a4:	24010019 	li	at,25
    17a8:	8703001c 	lh	v1,28(t8)
    17ac:	54610004 	bnel	v1,at,17c0 <func_8001F080+0x70>
    17b0:	28610008 	slti	at,v1,8
    17b4:	10000005 	b	17cc <func_8001F080+0x7c>
    17b8:	24080001 	li	t0,1
    17bc:	28610008 	slti	at,v1,8
    17c0:	54200003 	bnezl	at,17d0 <func_8001F080+0x80>
    17c4:	8e0402c0 	lw	a0,704(s0)
    17c8:	2508fffd 	addiu	t0,t0,-3
    17cc:	8e0402c0 	lw	a0,704(s0)
    17d0:	0c000000 	jal	0 <EnItem00_SetupAction>
    17d4:	afa80044 	sw	t0,68(sp)
    17d8:	8fa80044 	lw	t0,68(sp)
    17dc:	ae0202c0 	sw	v0,704(s0)
    17e0:	24590008 	addiu	t9,v0,8
    17e4:	3c09db06 	lui	t1,0xdb06
    17e8:	35290020 	ori	t1,t1,0x20
    17ec:	ae1902c0 	sw	t9,704(s0)
    17f0:	3c040000 	lui	a0,0x0
    17f4:	00085080 	sll	t2,t0,0x2
    17f8:	008a2021 	addu	a0,a0,t2
    17fc:	ac490000 	sw	t1,0(v0)
    1800:	8c840000 	lw	a0,0(a0)
    1804:	3c0f0000 	lui	t7,0x0
    1808:	3c0100ff 	lui	at,0xff
    180c:	00046100 	sll	t4,a0,0x4
    1810:	000c6f02 	srl	t5,t4,0x1c
    1814:	000d7080 	sll	t6,t5,0x2
    1818:	01ee7821 	addu	t7,t7,t6
    181c:	8def0000 	lw	t7,0(t7)
    1820:	3421ffff 	ori	at,at,0xffff
    1824:	00815824 	and	t3,a0,at
    1828:	3c018000 	lui	at,0x8000
    182c:	016fc021 	addu	t8,t3,t7
    1830:	0301c821 	addu	t9,t8,at
    1834:	ac590004 	sw	t9,4(v0)
    1838:	8e0202c0 	lw	v0,704(s0)
    183c:	3c0ada38 	lui	t2,0xda38
    1840:	354a0003 	ori	t2,t2,0x3
    1844:	24490008 	addiu	t1,v0,8
    1848:	ae0902c0 	sw	t1,704(s0)
    184c:	ac4a0000 	sw	t2,0(v0)
    1850:	8fac004c 	lw	t4,76(sp)
    1854:	3c050000 	lui	a1,0x0
    1858:	24a50050 	addiu	a1,a1,80
    185c:	8d840000 	lw	a0,0(t4)
    1860:	24060647 	li	a2,1607
    1864:	0c000000 	jal	0 <EnItem00_SetupAction>
    1868:	afa20028 	sw	v0,40(sp)
    186c:	8fa30028 	lw	v1,40(sp)
    1870:	3c0b0000 	lui	t3,0x0
    1874:	256b0000 	addiu	t3,t3,0
    1878:	ac620004 	sw	v0,4(v1)
    187c:	8e0202c0 	lw	v0,704(s0)
    1880:	3c0ede00 	lui	t6,0xde00
    1884:	3c060000 	lui	a2,0x0
    1888:	244d0008 	addiu	t5,v0,8
    188c:	ae0d02c0 	sw	t5,704(s0)
    1890:	ac4b0004 	sw	t3,4(v0)
    1894:	ac4e0000 	sw	t6,0(v0)
    1898:	8faf004c 	lw	t7,76(sp)
    189c:	24c60064 	addiu	a2,a2,100
    18a0:	27a40030 	addiu	a0,sp,48
    18a4:	2407064b 	li	a3,1611
    18a8:	0c000000 	jal	0 <EnItem00_SetupAction>
    18ac:	8de50000 	lw	a1,0(t7)
    18b0:	8fbf001c 	lw	ra,28(sp)
    18b4:	8fb00018 	lw	s0,24(sp)
    18b8:	27bd0048 	addiu	sp,sp,72
    18bc:	03e00008 	jr	ra
    18c0:	00000000 	nop

000018c4 <func_8001F1F4>:
    18c4:	27bdffb0 	addiu	sp,sp,-80
    18c8:	afb10018 	sw	s1,24(sp)
    18cc:	00a08825 	move	s1,a1
    18d0:	afbf001c 	sw	ra,28(sp)
    18d4:	afb00014 	sw	s0,20(sp)
    18d8:	afa40050 	sw	a0,80(sp)
    18dc:	8ca50000 	lw	a1,0(a1)
    18e0:	3c060000 	lui	a2,0x0
    18e4:	24c60078 	addiu	a2,a2,120
    18e8:	27a40038 	addiu	a0,sp,56
    18ec:	24070657 	li	a3,1623
    18f0:	0c000000 	jal	0 <EnItem00_SetupAction>
    18f4:	00a08025 	move	s0,a1
    18f8:	0c000000 	jal	0 <EnItem00_SetupAction>
    18fc:	8e240000 	lw	a0,0(s1)
    1900:	8fa40050 	lw	a0,80(sp)
    1904:	02202825 	move	a1,s1
    1908:	0c000000 	jal	0 <EnItem00_SetupAction>
    190c:	00003025 	move	a2,zero
    1910:	8e0202c0 	lw	v0,704(s0)
    1914:	3c0fda38 	lui	t7,0xda38
    1918:	35ef0003 	ori	t7,t7,0x3
    191c:	244e0008 	addiu	t6,v0,8
    1920:	ae0e02c0 	sw	t6,704(s0)
    1924:	ac4f0000 	sw	t7,0(v0)
    1928:	8e240000 	lw	a0,0(s1)
    192c:	3c050000 	lui	a1,0x0
    1930:	24a5008c 	addiu	a1,a1,140
    1934:	24060662 	li	a2,1634
    1938:	0c000000 	jal	0 <EnItem00_SetupAction>
    193c:	afa20034 	sw	v0,52(sp)
    1940:	8fa30034 	lw	v1,52(sp)
    1944:	3c080000 	lui	t0,0x0
    1948:	25080000 	addiu	t0,t0,0
    194c:	ac620004 	sw	v0,4(v1)
    1950:	8e0202c0 	lw	v0,704(s0)
    1954:	3c19de00 	lui	t9,0xde00
    1958:	24580008 	addiu	t8,v0,8
    195c:	ae1802c0 	sw	t8,704(s0)
    1960:	ac480004 	sw	t0,4(v0)
    1964:	ac590000 	sw	t9,0(v0)
    1968:	0c000000 	jal	0 <EnItem00_SetupAction>
    196c:	8e240000 	lw	a0,0(s1)
    1970:	8fa40050 	lw	a0,80(sp)
    1974:	02202825 	move	a1,s1
    1978:	0c000000 	jal	0 <EnItem00_SetupAction>
    197c:	00003025 	move	a2,zero
    1980:	8e0202d0 	lw	v0,720(s0)
    1984:	3c0ada38 	lui	t2,0xda38
    1988:	354a0003 	ori	t2,t2,0x3
    198c:	24490008 	addiu	t1,v0,8
    1990:	ae0902d0 	sw	t1,720(s0)
    1994:	ac4a0000 	sw	t2,0(v0)
    1998:	8e240000 	lw	a0,0(s1)
    199c:	3c050000 	lui	a1,0x0
    19a0:	24a500a0 	addiu	a1,a1,160
    19a4:	2406066c 	li	a2,1644
    19a8:	0c000000 	jal	0 <EnItem00_SetupAction>
    19ac:	afa2002c 	sw	v0,44(sp)
    19b0:	8fa3002c 	lw	v1,44(sp)
    19b4:	3c0d0000 	lui	t5,0x0
    19b8:	25ad0000 	addiu	t5,t5,0
    19bc:	ac620004 	sw	v0,4(v1)
    19c0:	8e0202d0 	lw	v0,720(s0)
    19c4:	3c0cde00 	lui	t4,0xde00
    19c8:	3c060000 	lui	a2,0x0
    19cc:	244b0008 	addiu	t3,v0,8
    19d0:	ae0b02d0 	sw	t3,720(s0)
    19d4:	ac4d0004 	sw	t5,4(v0)
    19d8:	ac4c0000 	sw	t4,0(v0)
    19dc:	8e250000 	lw	a1,0(s1)
    19e0:	24c600b4 	addiu	a2,a2,180
    19e4:	27a40038 	addiu	a0,sp,56
    19e8:	0c000000 	jal	0 <EnItem00_SetupAction>
    19ec:	2407066f 	li	a3,1647
    19f0:	8fbf001c 	lw	ra,28(sp)
    19f4:	8fb00014 	lw	s0,20(sp)
    19f8:	8fb10018 	lw	s1,24(sp)
    19fc:	03e00008 	jr	ra
    1a00:	27bd0050 	addiu	sp,sp,80

00001a04 <func_8001F334>:
    1a04:	27bdffb8 	addiu	sp,sp,-72
    1a08:	afb10018 	sw	s1,24(sp)
    1a0c:	00a08825 	move	s1,a1
    1a10:	afbf001c 	sw	ra,28(sp)
    1a14:	afb00014 	sw	s0,20(sp)
    1a18:	afa40048 	sw	a0,72(sp)
    1a1c:	8ca50000 	lw	a1,0(a1)
    1a20:	3c060000 	lui	a2,0x0
    1a24:	24c600c8 	addiu	a2,a2,200
    1a28:	27a40030 	addiu	a0,sp,48
    1a2c:	2407067a 	li	a3,1658
    1a30:	0c000000 	jal	0 <EnItem00_SetupAction>
    1a34:	00a08025 	move	s0,a1
    1a38:	0c000000 	jal	0 <EnItem00_SetupAction>
    1a3c:	8e240000 	lw	a0,0(s1)
    1a40:	8fa40048 	lw	a0,72(sp)
    1a44:	02202825 	move	a1,s1
    1a48:	0c000000 	jal	0 <EnItem00_SetupAction>
    1a4c:	00003025 	move	a2,zero
    1a50:	8e0202d0 	lw	v0,720(s0)
    1a54:	3c0fda38 	lui	t7,0xda38
    1a58:	35ef0003 	ori	t7,t7,0x3
    1a5c:	244e0008 	addiu	t6,v0,8
    1a60:	ae0e02d0 	sw	t6,720(s0)
    1a64:	ac4f0000 	sw	t7,0(v0)
    1a68:	8e240000 	lw	a0,0(s1)
    1a6c:	3c050000 	lui	a1,0x0
    1a70:	24a500dc 	addiu	a1,a1,220
    1a74:	24060686 	li	a2,1670
    1a78:	0c000000 	jal	0 <EnItem00_SetupAction>
    1a7c:	afa2002c 	sw	v0,44(sp)
    1a80:	8fa3002c 	lw	v1,44(sp)
    1a84:	3c080000 	lui	t0,0x0
    1a88:	25080000 	addiu	t0,t0,0
    1a8c:	ac620004 	sw	v0,4(v1)
    1a90:	8e0202d0 	lw	v0,720(s0)
    1a94:	3c19de00 	lui	t9,0xde00
    1a98:	3c060000 	lui	a2,0x0
    1a9c:	24580008 	addiu	t8,v0,8
    1aa0:	ae1802d0 	sw	t8,720(s0)
    1aa4:	ac480004 	sw	t0,4(v0)
    1aa8:	ac590000 	sw	t9,0(v0)
    1aac:	8e250000 	lw	a1,0(s1)
    1ab0:	24c600f0 	addiu	a2,a2,240
    1ab4:	27a40030 	addiu	a0,sp,48
    1ab8:	0c000000 	jal	0 <EnItem00_SetupAction>
    1abc:	24070689 	li	a3,1673
    1ac0:	8fbf001c 	lw	ra,28(sp)
    1ac4:	8fb00014 	lw	s0,20(sp)
    1ac8:	8fb10018 	lw	s1,24(sp)
    1acc:	03e00008 	jr	ra
    1ad0:	27bd0048 	addiu	sp,sp,72

00001ad4 <func_8001F404>:
    1ad4:	3c020000 	lui	v0,0x0
    1ad8:	24420000 	addiu	v0,v0,0
    1adc:	8c4e0004 	lw	t6,4(v0)
    1ae0:	afa40000 	sw	a0,0(sp)
    1ae4:	00042400 	sll	a0,a0,0x10
    1ae8:	15c0000b 	bnez	t6,1b18 <func_8001F404+0x44>
    1aec:	00042403 	sra	a0,a0,0x10
    1af0:	24010010 	li	at,16
    1af4:	54810004 	bnel	a0,at,1b08 <func_8001F404+0x34>
    1af8:	2401000d 	li	at,13
    1afc:	1000000e 	b	1b38 <func_8001F404+0x64>
    1b00:	24040008 	li	a0,8
    1b04:	2401000d 	li	at,13
    1b08:	5481000c 	bnel	a0,at,1b3c <func_8001F404+0x68>
    1b0c:	24010004 	li	at,4
    1b10:	10000009 	b	1b38 <func_8001F404+0x64>
    1b14:	00002025 	move	a0,zero
    1b18:	24010008 	li	at,8
    1b1c:	10810005 	beq	a0,at,1b34 <func_8001F404+0x60>
    1b20:	24010009 	li	at,9
    1b24:	10810003 	beq	a0,at,1b34 <func_8001F404+0x60>
    1b28:	2401000a 	li	at,10
    1b2c:	54810003 	bnel	a0,at,1b3c <func_8001F404+0x68>
    1b30:	24010004 	li	at,4
    1b34:	24040010 	li	a0,16
    1b38:	24010004 	li	at,4
    1b3c:	10810005 	beq	a0,at,1b54 <func_8001F404+0x80>
    1b40:	3c050000 	lui	a1,0x0
    1b44:	24010019 	li	at,25
    1b48:	10810002 	beq	a0,at,1b54 <func_8001F404+0x80>
    1b4c:	2401000b 	li	at,11
    1b50:	14810006 	bne	a0,at,1b6c <func_8001F404+0x98>
    1b54:	24a50000 	addiu	a1,a1,0
    1b58:	90af0002 	lbu	t7,2(a1)
    1b5c:	240300ff 	li	v1,255
    1b60:	004fc021 	addu	t8,v0,t7
    1b64:	93190074 	lbu	t9,116(t8)
    1b68:	1079001d 	beq	v1,t9,1be0 <func_8001F404+0x10c>
    1b6c:	3c050000 	lui	a1,0x0
    1b70:	24010008 	li	at,8
    1b74:	24a50000 	addiu	a1,a1,0
    1b78:	10810006 	beq	a0,at,1b94 <func_8001F404+0xc0>
    1b7c:	240300ff 	li	v1,255
    1b80:	24010009 	li	at,9
    1b84:	10810003 	beq	a0,at,1b94 <func_8001F404+0xc0>
    1b88:	2401000a 	li	at,10
    1b8c:	54810006 	bnel	a0,at,1ba8 <func_8001F404+0xd4>
    1b90:	2401000e 	li	at,14
    1b94:	90a80003 	lbu	t0,3(a1)
    1b98:	00484821 	addu	t1,v0,t0
    1b9c:	912a0074 	lbu	t2,116(t1)
    1ba0:	106a000f 	beq	v1,t2,1be0 <func_8001F404+0x10c>
    1ba4:	2401000e 	li	at,14
    1ba8:	10810003 	beq	a0,at,1bb8 <func_8001F404+0xe4>
    1bac:	2401000f 	li	at,15
    1bb0:	54810004 	bnel	a0,at,1bc4 <func_8001F404+0xf0>
    1bb4:	24010010 	li	at,16
    1bb8:	804b0032 	lb	t3,50(v0)
    1bbc:	11600008 	beqz	t3,1be0 <func_8001F404+0x10c>
    1bc0:	24010010 	li	at,16
    1bc4:	54810009 	bnel	a0,at,1bec <func_8001F404+0x118>
    1bc8:	24010003 	li	at,3
    1bcc:	90ac0006 	lbu	t4,6(a1)
    1bd0:	004c6821 	addu	t5,v0,t4
    1bd4:	91ae0074 	lbu	t6,116(t5)
    1bd8:	546e0004 	bnel	v1,t6,1bec <func_8001F404+0x118>
    1bdc:	24010003 	li	at,3
    1be0:	03e00008 	jr	ra
    1be4:	2402ffff 	li	v0,-1
    1be8:	24010003 	li	at,3
    1bec:	54810008 	bnel	a0,at,1c10 <func_8001F404+0x13c>
    1bf0:	00801025 	move	v0,a0
    1bf4:	844f0030 	lh	t7,48(v0)
    1bf8:	8458002e 	lh	t8,46(v0)
    1bfc:	55f80004 	bnel	t7,t8,1c10 <func_8001F404+0x13c>
    1c00:	00801025 	move	v0,a0
    1c04:	03e00008 	jr	ra
    1c08:	00001025 	move	v0,zero
    1c0c:	00801025 	move	v0,a0
    1c10:	03e00008 	jr	ra
    1c14:	00000000 	nop

00001c18 <Item_DropCollectible>:
    1c18:	27bdffa8 	addiu	sp,sp,-88
    1c1c:	afb00030 	sw	s0,48(sp)
    1c20:	00c08025 	move	s0,a2
    1c24:	32084000 	andi	t0,s0,0x4000
    1c28:	32038000 	andi	v1,s0,0x8000
    1c2c:	32093f00 	andi	t1,s0,0x3f00
    1c30:	32103fff 	andi	s0,s0,0x3fff
    1c34:	00108400 	sll	s0,s0,0x10
    1c38:	00108403 	sra	s0,s0,0x10
    1c3c:	afb20038 	sw	s2,56(sp)
    1c40:	afb10034 	sw	s1,52(sp)
    1c44:	00084400 	sll	t0,t0,0x10
    1c48:	00031c00 	sll	v1,v1,0x10
    1c4c:	00094c00 	sll	t1,t1,0x10
    1c50:	320200ff 	andi	v0,s0,0xff
    1c54:	24010012 	li	at,18
    1c58:	00a08825 	move	s1,a1
    1c5c:	afbf003c 	sw	ra,60(sp)
    1c60:	afa40058 	sw	a0,88(sp)
    1c64:	afa60060 	sw	a2,96(sp)
    1c68:	00009025 	move	s2,zero
    1c6c:	00084403 	sra	t0,t0,0x10
    1c70:	00031c03 	sra	v1,v1,0x10
    1c74:	1441001f 	bne	v0,at,1cf4 <Item_DropCollectible+0xdc>
    1c78:	00094c03 	sra	t1,t1,0x10
    1c7c:	1500001d 	bnez	t0,1cf4 <Item_DropCollectible+0xdc>
    1c80:	3c014220 	lui	at,0x4220
    1c84:	c6240004 	lwc1	$f4,4(s1)
    1c88:	44813000 	mtc1	at,$f6
    1c8c:	8e270000 	lw	a3,0(s1)
    1c90:	00802825 	move	a1,a0
    1c94:	46062200 	add.s	$f8,$f4,$f6
    1c98:	240f0002 	li	t7,2
    1c9c:	24841c24 	addiu	a0,a0,7204
    1ca0:	24060018 	li	a2,24
    1ca4:	e7a80010 	swc1	$f8,16(sp)
    1ca8:	c62a0008 	lwc1	$f10,8(s1)
    1cac:	afaf0024 	sw	t7,36(sp)
    1cb0:	afa00020 	sw	zero,32(sp)
    1cb4:	afa0001c 	sw	zero,28(sp)
    1cb8:	afa00018 	sw	zero,24(sp)
    1cbc:	0c000000 	jal	0 <EnItem00_SetupAction>
    1cc0:	e7aa0014 	swc1	$f10,20(sp)
    1cc4:	24180001 	li	t8,1
    1cc8:	24190028 	li	t9,40
    1ccc:	00409025 	move	s2,v0
    1cd0:	afb90014 	sw	t9,20(sp)
    1cd4:	afb80010 	sw	t8,16(sp)
    1cd8:	8fa40058 	lw	a0,88(sp)
    1cdc:	02202825 	move	a1,s1
    1ce0:	240628e7 	li	a2,10471
    1ce4:	0c000000 	jal	0 <EnItem00_SetupAction>
    1ce8:	24070001 	li	a3,1
    1cec:	10000051 	b	1e34 <Item_DropCollectible+0x21c>
    1cf0:	8fbf003c 	lw	ra,60(sp)
    1cf4:	1460000b 	bnez	v1,1d24 <Item_DropCollectible+0x10c>
    1cf8:	00022400 	sll	a0,v0,0x10
    1cfc:	00042403 	sra	a0,a0,0x10
    1d00:	a7a30048 	sh	v1,72(sp)
    1d04:	a7a8004a 	sh	t0,74(sp)
    1d08:	0c000000 	jal	0 <EnItem00_SetupAction>
    1d0c:	a7a90046 	sh	t1,70(sp)
    1d10:	00028400 	sll	s0,v0,0x10
    1d14:	00108403 	sra	s0,s0,0x10
    1d18:	87a30048 	lh	v1,72(sp)
    1d1c:	87a8004a 	lh	t0,74(sp)
    1d20:	87a90046 	lh	t1,70(sp)
    1d24:	2401ffff 	li	at,-1
    1d28:	12010041 	beq	s0,at,1e30 <Item_DropCollectible+0x218>
    1d2c:	8fa50058 	lw	a1,88(sp)
    1d30:	c6300004 	lwc1	$f16,4(s1)
    1d34:	8e270000 	lw	a3,0(s1)
    1d38:	02035825 	or	t3,s0,v1
    1d3c:	e7b00010 	swc1	$f16,16(sp)
    1d40:	c6320008 	lwc1	$f18,8(s1)
    1d44:	01696025 	or	t4,t3,t1
    1d48:	afac0024 	sw	t4,36(sp)
    1d4c:	a7a8004a 	sh	t0,74(sp)
    1d50:	a7a30048 	sh	v1,72(sp)
    1d54:	afa00020 	sw	zero,32(sp)
    1d58:	afa0001c 	sw	zero,28(sp)
    1d5c:	afa00018 	sw	zero,24(sp)
    1d60:	24a41c24 	addiu	a0,a1,7204
    1d64:	24060015 	li	a2,21
    1d68:	0c000000 	jal	0 <EnItem00_SetupAction>
    1d6c:	e7b20014 	swc1	$f18,20(sp)
    1d70:	87a30048 	lh	v1,72(sp)
    1d74:	87a8004a 	lh	t0,74(sp)
    1d78:	1040002d 	beqz	v0,1e30 <Item_DropCollectible+0x218>
    1d7c:	00409025 	move	s2,v0
    1d80:	5460002c 	bnezl	v1,1e34 <Item_DropCollectible+0x21c>
    1d84:	8fbf003c 	lw	ra,60(sp)
    1d88:	15000005 	bnez	t0,1da0 <Item_DropCollectible+0x188>
    1d8c:	3c01c000 	lui	at,0xc000
    1d90:	3c014100 	lui	at,0x4100
    1d94:	44812000 	mtc1	at,$f4
    1d98:	10000004 	b	1dac <Item_DropCollectible+0x194>
    1d9c:	e4440060 	swc1	$f4,96(v0)
    1da0:	44813000 	mtc1	at,$f6
    1da4:	00000000 	nop
    1da8:	e4460060 	swc1	$f6,96(v0)
    1dac:	3c014000 	lui	at,0x4000
    1db0:	44814000 	mtc1	at,$f8
    1db4:	3c010000 	lui	at,0x0
    1db8:	e6480068 	swc1	$f8,104(s2)
    1dbc:	c42a0358 	lwc1	$f10,856(at)
    1dc0:	3c014780 	lui	at,0x4780
    1dc4:	44816000 	mtc1	at,$f12
    1dc8:	0c000000 	jal	0 <EnItem00_SetupAction>
    1dcc:	e64a006c 	swc1	$f10,108(s2)
    1dd0:	4600040d 	trunc.w.s	$f16,$f0
    1dd4:	02402025 	move	a0,s2
    1dd8:	24050000 	li	a1,0
    1ddc:	440e8000 	mfc1	t6,$f16
    1de0:	0c000000 	jal	0 <EnItem00_SetupAction>
    1de4:	a64e0032 	sh	t6,50(s2)
    1de8:	3c050000 	lui	a1,0x0
    1dec:	24a50000 	addiu	a1,a1,0
    1df0:	0c000000 	jal	0 <EnItem00_SetupAction>
    1df4:	02402025 	move	a0,s2
    1df8:	8642001c 	lh	v0,28(s2)
    1dfc:	240f00dc 	li	t7,220
    1e00:	24010011 	li	at,17
    1e04:	10410007 	beq	v0,at,1e24 <Item_DropCollectible+0x20c>
    1e08:	a64f015a 	sh	t7,346(s2)
    1e0c:	24010006 	li	at,6
    1e10:	10410004 	beq	v0,at,1e24 <Item_DropCollectible+0x20c>
    1e14:	24010007 	li	at,7
    1e18:	10410002 	beq	v0,at,1e24 <Item_DropCollectible+0x20c>
    1e1c:	2418ffff 	li	t8,-1
    1e20:	a2580003 	sb	t8,3(s2)
    1e24:	8e590004 	lw	t9,4(s2)
    1e28:	372a0010 	ori	t2,t9,0x10
    1e2c:	ae4a0004 	sw	t2,4(s2)
    1e30:	8fbf003c 	lw	ra,60(sp)
    1e34:	02401025 	move	v0,s2
    1e38:	8fb20038 	lw	s2,56(sp)
    1e3c:	8fb00030 	lw	s0,48(sp)
    1e40:	8fb10034 	lw	s1,52(sp)
    1e44:	03e00008 	jr	ra
    1e48:	27bd0058 	addiu	sp,sp,88

00001e4c <Item_DropCollectible2>:
    1e4c:	27bdffb0 	addiu	sp,sp,-80
    1e50:	30c84000 	andi	t0,a2,0x4000
    1e54:	30c93f00 	andi	t1,a2,0x3f00
    1e58:	afb20038 	sw	s2,56(sp)
    1e5c:	afb10034 	sw	s1,52(sp)
    1e60:	00084400 	sll	t0,t0,0x10
    1e64:	30ce8000 	andi	t6,a2,0x8000
    1e68:	00094c00 	sll	t1,t1,0x10
    1e6c:	30c200ff 	andi	v0,a2,0xff
    1e70:	24010012 	li	at,18
    1e74:	00a08825 	move	s1,a1
    1e78:	00809025 	move	s2,a0
    1e7c:	afbf003c 	sw	ra,60(sp)
    1e80:	afb00030 	sw	s0,48(sp)
    1e84:	afa60058 	sw	a2,88(sp)
    1e88:	00001825 	move	v1,zero
    1e8c:	00084403 	sra	t0,t0,0x10
    1e90:	a7ae0044 	sh	t6,68(sp)
    1e94:	1441001f 	bne	v0,at,1f14 <Item_DropCollectible2+0xc8>
    1e98:	00094c03 	sra	t1,t1,0x10
    1e9c:	1500001d 	bnez	t0,1f14 <Item_DropCollectible2+0xc8>
    1ea0:	3c014220 	lui	at,0x4220
    1ea4:	c6240004 	lwc1	$f4,4(s1)
    1ea8:	44813000 	mtc1	at,$f6
    1eac:	8e270000 	lw	a3,0(s1)
    1eb0:	240f0002 	li	t7,2
    1eb4:	46062200 	add.s	$f8,$f4,$f6
    1eb8:	24841c24 	addiu	a0,a0,7204
    1ebc:	02402825 	move	a1,s2
    1ec0:	24060018 	li	a2,24
    1ec4:	e7a80010 	swc1	$f8,16(sp)
    1ec8:	c62a0008 	lwc1	$f10,8(s1)
    1ecc:	afaf0024 	sw	t7,36(sp)
    1ed0:	afa00020 	sw	zero,32(sp)
    1ed4:	afa0001c 	sw	zero,28(sp)
    1ed8:	afa00018 	sw	zero,24(sp)
    1edc:	0c000000 	jal	0 <EnItem00_SetupAction>
    1ee0:	e7aa0014 	swc1	$f10,20(sp)
    1ee4:	24180001 	li	t8,1
    1ee8:	24190028 	li	t9,40
    1eec:	afb90014 	sw	t9,20(sp)
    1ef0:	afb80010 	sw	t8,16(sp)
    1ef4:	02402025 	move	a0,s2
    1ef8:	02202825 	move	a1,s1
    1efc:	240628e7 	li	a2,10471
    1f00:	24070001 	li	a3,1
    1f04:	0c000000 	jal	0 <EnItem00_SetupAction>
    1f08:	afa2004c 	sw	v0,76(sp)
    1f0c:	10000039 	b	1ff4 <Item_DropCollectible2+0x1a8>
    1f10:	8fa3004c 	lw	v1,76(sp)
    1f14:	00022400 	sll	a0,v0,0x10
    1f18:	00042403 	sra	a0,a0,0x10
    1f1c:	afa3004c 	sw	v1,76(sp)
    1f20:	a7a80046 	sh	t0,70(sp)
    1f24:	0c000000 	jal	0 <EnItem00_SetupAction>
    1f28:	a7a90042 	sh	t1,66(sp)
    1f2c:	00028400 	sll	s0,v0,0x10
    1f30:	2401ffff 	li	at,-1
    1f34:	00108403 	sra	s0,s0,0x10
    1f38:	8fa3004c 	lw	v1,76(sp)
    1f3c:	87a80046 	lh	t0,70(sp)
    1f40:	1041002c 	beq	v0,at,1ff4 <Item_DropCollectible2+0x1a8>
    1f44:	87a90042 	lh	t1,66(sp)
    1f48:	c6300004 	lwc1	$f16,4(s1)
    1f4c:	8e270000 	lw	a3,0(s1)
    1f50:	87aa0044 	lh	t2,68(sp)
    1f54:	e7b00010 	swc1	$f16,16(sp)
    1f58:	c6320008 	lwc1	$f18,8(s1)
    1f5c:	020a5825 	or	t3,s0,t2
    1f60:	01696025 	or	t4,t3,t1
    1f64:	afac0024 	sw	t4,36(sp)
    1f68:	a7a80046 	sh	t0,70(sp)
    1f6c:	afa00020 	sw	zero,32(sp)
    1f70:	afa0001c 	sw	zero,28(sp)
    1f74:	afa00018 	sw	zero,24(sp)
    1f78:	26441c24 	addiu	a0,s2,7204
    1f7c:	02402825 	move	a1,s2
    1f80:	24060015 	li	a2,21
    1f84:	0c000000 	jal	0 <EnItem00_SetupAction>
    1f88:	e7b20014 	swc1	$f18,20(sp)
    1f8c:	87a80046 	lh	t0,70(sp)
    1f90:	10400018 	beqz	v0,1ff4 <Item_DropCollectible2+0x1a8>
    1f94:	00401825 	move	v1,v0
    1f98:	87ad0044 	lh	t5,68(sp)
    1f9c:	55a00016 	bnezl	t5,1ff8 <Item_DropCollectible2+0x1ac>
    1fa0:	8fbf003c 	lw	ra,60(sp)
    1fa4:	44800000 	mtc1	zero,$f0
    1fa8:	3c010000 	lui	at,0x0
    1fac:	e4400060 	swc1	$f0,96(v0)
    1fb0:	11000003 	beqz	t0,1fc0 <Item_DropCollectible2+0x174>
    1fb4:	e4400068 	swc1	$f0,104(v0)
    1fb8:	10000003 	b	1fc8 <Item_DropCollectible2+0x17c>
    1fbc:	e440006c 	swc1	$f0,108(v0)
    1fc0:	c424035c 	lwc1	$f4,860(at)
    1fc4:	e444006c 	swc1	$f4,108(v0)
    1fc8:	3c014780 	lui	at,0x4780
    1fcc:	44816000 	mtc1	at,$f12
    1fd0:	0c000000 	jal	0 <EnItem00_SetupAction>
    1fd4:	afa3004c 	sw	v1,76(sp)
    1fd8:	4600018d 	trunc.w.s	$f6,$f0
    1fdc:	8fa3004c 	lw	v1,76(sp)
    1fe0:	8c780004 	lw	t8,4(v1)
    1fe4:	440f3000 	mfc1	t7,$f6
    1fe8:	37190010 	ori	t9,t8,0x10
    1fec:	ac790004 	sw	t9,4(v1)
    1ff0:	a46f0032 	sh	t7,50(v1)
    1ff4:	8fbf003c 	lw	ra,60(sp)
    1ff8:	8fb00030 	lw	s0,48(sp)
    1ffc:	8fb10034 	lw	s1,52(sp)
    2000:	8fb20038 	lw	s2,56(sp)
    2004:	27bd0050 	addiu	sp,sp,80
    2008:	03e00008 	jr	ra
    200c:	00601025 	move	v0,v1

00002010 <Item_DropCollectibleRandom>:
    2010:	27bdffa0 	addiu	sp,sp,-96
    2014:	afb60044 	sw	s6,68(sp)
    2018:	0007b400 	sll	s6,a3,0x10
    201c:	afbf004c 	sw	ra,76(sp)
    2020:	afb70048 	sw	s7,72(sp)
    2024:	afb50040 	sw	s5,64(sp)
    2028:	afb0002c 	sw	s0,44(sp)
    202c:	00a08025 	move	s0,a1
    2030:	00c0a825 	move	s5,a2
    2034:	0080b825 	move	s7,a0
    2038:	0016b403 	sra	s6,s6,0x10
    203c:	afb4003c 	sw	s4,60(sp)
    2040:	afb30038 	sw	s3,56(sp)
    2044:	afb20034 	sw	s2,52(sp)
    2048:	afb10030 	sw	s1,48(sp)
    204c:	0c000000 	jal	0 <EnItem00_SetupAction>
    2050:	afa7006c 	sw	a3,108(sp)
    2054:	3c014180 	lui	at,0x4180
    2058:	44812000 	mtc1	at,$f4
    205c:	32cf8000 	andi	t7,s6,0x8000
    2060:	32d67fff 	andi	s6,s6,0x7fff
    2064:	46040182 	mul.s	$f6,$f0,$f4
    2068:	0016b400 	sll	s6,s6,0x10
    206c:	a7af0054 	sh	t7,84(sp)
    2070:	0016b403 	sra	s6,s6,0x10
    2074:	3c130000 	lui	s3,0x0
    2078:	24010012 	li	at,18
    207c:	241400ff 	li	s4,255
    2080:	4600320d 	trunc.w.s	$f8,$f6
    2084:	44024000 	mfc1	v0,$f8
    2088:	00000000 	nop
    208c:	00021c00 	sll	v1,v0,0x10
    2090:	12000030 	beqz	s0,2154 <Item_DropCollectibleRandom+0x144>
    2094:	00031c03 	sra	v1,v1,0x10
    2098:	92040116 	lbu	a0,278(s0)
    209c:	3c130000 	lui	s3,0x0
    20a0:	10800025 	beqz	a0,2138 <Item_DropCollectibleRandom+0x128>
    20a4:	308d0020 	andi	t5,a0,0x20
    20a8:	30980001 	andi	t8,a0,0x1
    20ac:	13000004 	beqz	t8,20c0 <Item_DropCollectibleRandom+0xb0>
    20b0:	00801025 	move	v0,a0
    20b4:	24160010 	li	s6,16
    20b8:	1000001f 	b	2138 <Item_DropCollectibleRandom+0x128>
    20bc:	2403000b 	li	v1,11
    20c0:	30590002 	andi	t9,v0,0x2
    20c4:	13200004 	beqz	t9,20d8 <Item_DropCollectibleRandom+0xc8>
    20c8:	30480004 	andi	t0,v0,0x4
    20cc:	24160010 	li	s6,16
    20d0:	10000019 	b	2138 <Item_DropCollectibleRandom+0x128>
    20d4:	24030006 	li	v1,6
    20d8:	11000004 	beqz	t0,20ec <Item_DropCollectibleRandom+0xdc>
    20dc:	30490008 	andi	t1,v0,0x8
    20e0:	24160060 	li	s6,96
    20e4:	10000014 	b	2138 <Item_DropCollectibleRandom+0x128>
    20e8:	24030009 	li	v1,9
    20ec:	11200004 	beqz	t1,2100 <Item_DropCollectibleRandom+0xf0>
    20f0:	304a0010 	andi	t2,v0,0x10
    20f4:	24160030 	li	s6,48
    20f8:	1000000f 	b	2138 <Item_DropCollectibleRandom+0x128>
    20fc:	2403000b 	li	v1,11
    2100:	11400004 	beqz	t2,2114 <Item_DropCollectibleRandom+0x104>
    2104:	304b0020 	andi	t3,v0,0x20
    2108:	24160060 	li	s6,96
    210c:	1000000a 	b	2138 <Item_DropCollectibleRandom+0x128>
    2110:	2403000c 	li	v1,12
    2114:	11600004 	beqz	t3,2128 <Item_DropCollectibleRandom+0x118>
    2118:	304c0040 	andi	t4,v0,0x40
    211c:	0000b025 	move	s6,zero
    2120:	10000005 	b	2138 <Item_DropCollectibleRandom+0x128>
    2124:	00001825 	move	v1,zero
    2128:	11800003 	beqz	t4,2138 <Item_DropCollectibleRandom+0x128>
    212c:	00000000 	nop
    2130:	0000b025 	move	s6,zero
    2134:	24030001 	li	v1,1
    2138:	11a00003 	beqz	t5,2148 <Item_DropCollectibleRandom+0x138>
    213c:	02c37021 	addu	t6,s6,v1
    2140:	10000009 	b	2168 <Item_DropCollectibleRandom+0x158>
    2144:	24130014 	li	s3,20
    2148:	026e9821 	addu	s3,s3,t6
    214c:	10000006 	b	2168 <Item_DropCollectibleRandom+0x158>
    2150:	92730000 	lbu	s3,0(s3)
    2154:	00027c00 	sll	t7,v0,0x10
    2158:	000fc403 	sra	t8,t7,0x10
    215c:	02d8c821 	addu	t9,s6,t8
    2160:	02799821 	addu	s3,s3,t9
    2164:	92730000 	lbu	s3,0(s3)
    2168:	16610075 	bne	s3,at,2340 <Item_DropCollectibleRandom+0x330>
    216c:	02608825 	move	s1,s3
    2170:	3c030000 	lui	v1,0x0
    2174:	24630000 	addiu	v1,v1,0
    2178:	84620030 	lh	v0,48(v1)
    217c:	28410011 	slti	at,v0,17
    2180:	1020001c 	beqz	at,21f4 <Item_DropCollectibleRandom+0x1e4>
    2184:	3c014220 	lui	at,0x4220
    2188:	44818000 	mtc1	at,$f16
    218c:	c6aa0004 	lwc1	$f10,4(s5)
    2190:	8ea70000 	lw	a3,0(s5)
    2194:	24080002 	li	t0,2
    2198:	46105480 	add.s	$f18,$f10,$f16
    219c:	26e41c24 	addiu	a0,s7,7204
    21a0:	02e02825 	move	a1,s7
    21a4:	24060018 	li	a2,24
    21a8:	e7b20010 	swc1	$f18,16(sp)
    21ac:	c6a40008 	lwc1	$f4,8(s5)
    21b0:	afa80024 	sw	t0,36(sp)
    21b4:	afa00020 	sw	zero,32(sp)
    21b8:	afa0001c 	sw	zero,28(sp)
    21bc:	afa00018 	sw	zero,24(sp)
    21c0:	0c000000 	jal	0 <EnItem00_SetupAction>
    21c4:	e7a40014 	swc1	$f4,20(sp)
    21c8:	24090001 	li	t1,1
    21cc:	240a0028 	li	t2,40
    21d0:	afaa0014 	sw	t2,20(sp)
    21d4:	afa90010 	sw	t1,16(sp)
    21d8:	02e02025 	move	a0,s7
    21dc:	02a02825 	move	a1,s5
    21e0:	240628e7 	li	a2,10471
    21e4:	0c000000 	jal	0 <EnItem00_SetupAction>
    21e8:	24070001 	li	a3,1
    21ec:	100000a7 	b	248c <Item_DropCollectibleRandom+0x47c>
    21f0:	8fbf004c 	lw	ra,76(sp)
    21f4:	28410031 	slti	at,v0,49
    21f8:	10200005 	beqz	at,2210 <Item_DropCollectibleRandom+0x200>
    21fc:	241600b0 	li	s6,176
    2200:	00001825 	move	v1,zero
    2204:	24130003 	li	s3,3
    2208:	1000004d 	b	2340 <Item_DropCollectibleRandom+0x330>
    220c:	24110003 	li	s1,3
    2210:	28410051 	slti	at,v0,81
    2214:	10200005 	beqz	at,222c <Item_DropCollectibleRandom+0x21c>
    2218:	241600a0 	li	s6,160
    221c:	00001825 	move	v1,zero
    2220:	24130003 	li	s3,3
    2224:	10000046 	b	2340 <Item_DropCollectibleRandom+0x330>
    2228:	24110003 	li	s1,3
    222c:	80620032 	lb	v0,50(v1)
    2230:	10400008 	beqz	v0,2254 <Item_DropCollectibleRandom+0x244>
    2234:	00000000 	nop
    2238:	806b0033 	lb	t3,51(v1)
    223c:	241600a0 	li	s6,160
    2240:	2413000e 	li	s3,14
    2244:	15600003 	bnez	t3,2254 <Item_DropCollectibleRandom+0x244>
    2248:	2411000e 	li	s1,14
    224c:	1000003c 	b	2340 <Item_DropCollectibleRandom+0x330>
    2250:	00001825 	move	v1,zero
    2254:	5040000b 	beqzl	v0,2284 <Item_DropCollectibleRandom+0x274>
    2258:	8c620004 	lw	v0,4(v1)
    225c:	806d0033 	lb	t5,51(v1)
    2260:	00026043 	sra	t4,v0,0x1
    2264:	241600a0 	li	s6,160
    2268:	018d082a 	slt	at,t4,t5
    226c:	14200004 	bnez	at,2280 <Item_DropCollectibleRandom+0x270>
    2270:	2413000f 	li	s3,15
    2274:	00001825 	move	v1,zero
    2278:	10000031 	b	2340 <Item_DropCollectibleRandom+0x330>
    227c:	2411000f 	li	s1,15
    2280:	8c620004 	lw	v0,4(v1)
    2284:	3c040000 	lui	a0,0x0
    2288:	24840000 	addiu	a0,a0,0
    228c:	1040000c 	beqz	v0,22c0 <Item_DropCollectibleRandom+0x2b0>
    2290:	00000000 	nop
    2294:	908e0006 	lbu	t6,6(a0)
    2298:	241600a0 	li	s6,160
    229c:	24130010 	li	s3,16
    22a0:	006e7821 	addu	t7,v1,t6
    22a4:	81f8008c 	lb	t8,140(t7)
    22a8:	24110010 	li	s1,16
    22ac:	2b010006 	slti	at,t8,6
    22b0:	10200003 	beqz	at,22c0 <Item_DropCollectibleRandom+0x2b0>
    22b4:	00000000 	nop
    22b8:	10000021 	b	2340 <Item_DropCollectibleRandom+0x330>
    22bc:	00001825 	move	v1,zero
    22c0:	3c040000 	lui	a0,0x0
    22c4:	1440000c 	bnez	v0,22f8 <Item_DropCollectibleRandom+0x2e8>
    22c8:	24840000 	addiu	a0,a0,0
    22cc:	90990003 	lbu	t9,3(a0)
    22d0:	241600a0 	li	s6,160
    22d4:	24130009 	li	s3,9
    22d8:	00794021 	addu	t0,v1,t9
    22dc:	8109008c 	lb	t1,140(t0)
    22e0:	24110009 	li	s1,9
    22e4:	29210006 	slti	at,t1,6
    22e8:	50200004 	beqzl	at,22fc <Item_DropCollectibleRandom+0x2ec>
    22ec:	908a0002 	lbu	t2,2(a0)
    22f0:	10000013 	b	2340 <Item_DropCollectibleRandom+0x330>
    22f4:	00001825 	move	v1,zero
    22f8:	908a0002 	lbu	t2,2(a0)
    22fc:	241600d0 	li	s6,208
    2300:	24130004 	li	s3,4
    2304:	006a5821 	addu	t3,v1,t2
    2308:	816c008c 	lb	t4,140(t3)
    230c:	24110004 	li	s1,4
    2310:	29810006 	slti	at,t4,6
    2314:	50200004 	beqzl	at,2328 <Item_DropCollectibleRandom+0x318>
    2318:	846d0034 	lh	t5,52(v1)
    231c:	10000008 	b	2340 <Item_DropCollectibleRandom+0x330>
    2320:	00001825 	move	v1,zero
    2324:	846d0034 	lh	t5,52(v1)
    2328:	241600a0 	li	s6,160
    232c:	00001825 	move	v1,zero
    2330:	29a1000b 	slti	at,t5,11
    2334:	10200054 	beqz	at,2488 <Item_DropCollectibleRandom+0x478>
    2338:	24130002 	li	s3,2
    233c:	24110002 	li	s1,2
    2340:	12910051 	beq	s4,s1,2488 <Item_DropCollectibleRandom+0x478>
    2344:	02c37021 	addu	t6,s6,v1
    2348:	3c120000 	lui	s2,0x0
    234c:	024e9021 	addu	s2,s2,t6
    2350:	92520000 	lbu	s2,0(s2)
    2354:	5a40004d 	blezl	s2,248c <Item_DropCollectibleRandom+0x47c>
    2358:	8fbf004c 	lw	ra,76(sp)
    235c:	87af0054 	lh	t7,84(sp)
    2360:	02e02025 	move	a0,s7
    2364:	02a02825 	move	a1,s5
    2368:	15e0003f 	bnez	t7,2468 <Item_DropCollectibleRandom+0x458>
    236c:	36c68000 	ori	a2,s6,0x8000
    2370:	00132400 	sll	a0,s3,0x10
    2374:	0c000000 	jal	0 <EnItem00_SetupAction>
    2378:	00042403 	sra	a0,a0,0x10
    237c:	305800ff 	andi	t8,v0,0xff
    2380:	1298003c 	beq	s4,t8,2474 <Item_DropCollectibleRandom+0x464>
    2384:	305300ff 	andi	s3,v0,0xff
    2388:	c6a60004 	lwc1	$f6,4(s5)
    238c:	8ea70000 	lw	a3,0(s5)
    2390:	26e41c24 	addiu	a0,s7,7204
    2394:	e7a60010 	swc1	$f6,16(sp)
    2398:	c6a80008 	lwc1	$f8,8(s5)
    239c:	afb30024 	sw	s3,36(sp)
    23a0:	afa00020 	sw	zero,32(sp)
    23a4:	afa0001c 	sw	zero,28(sp)
    23a8:	afa00018 	sw	zero,24(sp)
    23ac:	02e02825 	move	a1,s7
    23b0:	24060015 	li	a2,21
    23b4:	02608825 	move	s1,s3
    23b8:	0c000000 	jal	0 <EnItem00_SetupAction>
    23bc:	e7a80014 	swc1	$f8,20(sp)
    23c0:	1040002c 	beqz	v0,2474 <Item_DropCollectibleRandom+0x464>
    23c4:	00408025 	move	s0,v0
    23c8:	1291002a 	beq	s4,s1,2474 <Item_DropCollectibleRandom+0x464>
    23cc:	3c014100 	lui	at,0x4100
    23d0:	44815000 	mtc1	at,$f10
    23d4:	3c014000 	lui	at,0x4000
    23d8:	44818000 	mtc1	at,$f16
    23dc:	3c010000 	lui	at,0x0
    23e0:	e44a0060 	swc1	$f10,96(v0)
    23e4:	e4500068 	swc1	$f16,104(v0)
    23e8:	c4320360 	lwc1	$f18,864(at)
    23ec:	3c110000 	lui	s1,0x0
    23f0:	26310000 	addiu	s1,s1,0
    23f4:	0c000000 	jal	0 <EnItem00_SetupAction>
    23f8:	e452006c 	swc1	$f18,108(v0)
    23fc:	3c010000 	lui	at,0x0
    2400:	c4240364 	lwc1	$f4,868(at)
    2404:	02002025 	move	a0,s0
    2408:	24050000 	li	a1,0
    240c:	46040182 	mul.s	$f6,$f0,$f4
    2410:	4600320d 	trunc.w.s	$f8,$f6
    2414:	44084000 	mfc1	t0,$f8
    2418:	0c000000 	jal	0 <EnItem00_SetupAction>
    241c:	a6080032 	sh	t0,50(s0)
    2420:	02002025 	move	a0,s0
    2424:	0c000000 	jal	0 <EnItem00_SetupAction>
    2428:	02202825 	move	a1,s1
    242c:	8e090004 	lw	t1,4(s0)
    2430:	8602001c 	lh	v0,28(s0)
    2434:	24010011 	li	at,17
    2438:	352a0010 	ori	t2,t1,0x10
    243c:	10410007 	beq	v0,at,245c <Item_DropCollectibleRandom+0x44c>
    2440:	ae0a0004 	sw	t2,4(s0)
    2444:	24010006 	li	at,6
    2448:	10410004 	beq	v0,at,245c <Item_DropCollectibleRandom+0x44c>
    244c:	24010007 	li	at,7
    2450:	10410002 	beq	v0,at,245c <Item_DropCollectibleRandom+0x44c>
    2454:	240bffff 	li	t3,-1
    2458:	a20b0003 	sb	t3,3(s0)
    245c:	240c00dc 	li	t4,220
    2460:	10000004 	b	2474 <Item_DropCollectibleRandom+0x464>
    2464:	a60c015a 	sh	t4,346(s0)
    2468:	00063400 	sll	a2,a2,0x10
    246c:	0c000000 	jal	0 <EnItem00_SetupAction>
    2470:	00063403 	sra	a2,a2,0x10
    2474:	2652ffff 	addiu	s2,s2,-1
    2478:	00129400 	sll	s2,s2,0x10
    247c:	00129403 	sra	s2,s2,0x10
    2480:	5e40ffb7 	bgtzl	s2,2360 <Item_DropCollectibleRandom+0x350>
    2484:	87af0054 	lh	t7,84(sp)
    2488:	8fbf004c 	lw	ra,76(sp)
    248c:	8fb0002c 	lw	s0,44(sp)
    2490:	8fb10030 	lw	s1,48(sp)
    2494:	8fb20034 	lw	s2,52(sp)
    2498:	8fb30038 	lw	s3,56(sp)
    249c:	8fb4003c 	lw	s4,60(sp)
    24a0:	8fb50040 	lw	s5,64(sp)
    24a4:	8fb60044 	lw	s6,68(sp)
    24a8:	8fb70048 	lw	s7,72(sp)
    24ac:	03e00008 	jr	ra
    24b0:	27bd0060 	addiu	sp,sp,96
	...
