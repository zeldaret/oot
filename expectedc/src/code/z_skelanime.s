
build/src/code/z_skelanime.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <SkelAnime_LodDrawLimb>:
       0:	27bdff98 	addiu	sp,sp,-104
       4:	afbf0024 	sw	ra,36(sp)
       8:	afa40068 	sw	a0,104(sp)
       c:	afa5006c 	sw	a1,108(sp)
      10:	afa60070 	sw	a2,112(sp)
      14:	afa70074 	sw	a3,116(sp)
      18:	8c850000 	lw	a1,0(a0)
      1c:	3c060000 	lui	a2,0x0
      20:	24c60000 	addiu	a2,a2,0
      24:	27a40038 	addiu	a0,sp,56
      28:	24070305 	li	a3,773
      2c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
      30:	afa50048 	sw	a1,72(sp)
      34:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
      38:	00000000 	nop
      3c:	8fb8006c 	lw	t8,108(sp)
      40:	8faf0070 	lw	t7,112(sp)
      44:	3c0e0000 	lui	t6,0x0
      48:	0018c880 	sll	t9,t8,0x2
      4c:	01f94821 	addu	t1,t7,t9
      50:	8d220000 	lw	v0,0(t1)
      54:	270f0001 	addiu	t7,t8,1
      58:	8fa90074 	lw	t1,116(sp)
      5c:	00025900 	sll	t3,v0,0x4
      60:	000b6702 	srl	t4,t3,0x1c
      64:	000c6880 	sll	t5,t4,0x2
      68:	01cd7021 	addu	t6,t6,t5
      6c:	8dce0000 	lw	t6,0(t6)
      70:	3c0100ff 	lui	at,0xff
      74:	000f5880 	sll	t3,t7,0x2
      78:	3421ffff 	ori	at,at,0xffff
      7c:	016f5823 	subu	t3,t3,t7
      80:	000b5840 	sll	t3,t3,0x1
      84:	00415024 	and	t2,v0,at
      88:	afaf006c 	sw	t7,108(sp)
      8c:	012b6021 	addu	t4,t1,t3
      90:	014e4021 	addu	t0,t2,t6
      94:	898a0000 	lwl	t2,0(t4)
      98:	998a0003 	lwr	t2,3(t4)
      9c:	27b9004c 	addiu	t9,sp,76
      a0:	3c018000 	lui	at,0x8000
      a4:	af2a0000 	sw	t2,0(t9)
      a8:	958a0004 	lhu	t2,4(t4)
      ac:	01014021 	addu	t0,t0,at
      b0:	27a60060 	addiu	a2,sp,96
      b4:	a72a0004 	sh	t2,4(t9)
      b8:	850e0000 	lh	t6,0(t0)
      bc:	8fa90084 	lw	t1,132(sp)
      c0:	8fad0078 	lw	t5,120(sp)
      c4:	448e2000 	mtc1	t6,$f4
      c8:	00095880 	sll	t3,t1,0x2
      cc:	010bc821 	addu	t9,t0,t3
      d0:	468021a0 	cvt.s.w	$f6,$f4
      d4:	8fa5006c 	lw	a1,108(sp)
      d8:	8fa40068 	lw	a0,104(sp)
      dc:	27aa004c 	addiu	t2,sp,76
      e0:	27a70054 	addiu	a3,sp,84
      e4:	e7a60054 	swc1	$f6,84(sp)
      e8:	85180002 	lh	t8,2(t0)
      ec:	44984000 	mtc1	t8,$f8
      f0:	00000000 	nop
      f4:	468042a0 	cvt.s.w	$f10,$f8
      f8:	e7aa0058 	swc1	$f10,88(sp)
      fc:	850f0004 	lh	t7,4(t0)
     100:	448f8000 	mtc1	t7,$f16
     104:	00000000 	nop
     108:	468084a0 	cvt.s.w	$f18,$f16
     10c:	e7b2005c 	swc1	$f18,92(sp)
     110:	8f2c0008 	lw	t4,8(t9)
     114:	11a00008 	beqz	t5,138 <SkelAnime_LodDrawLimb+0x138>
     118:	afac0060 	sw	t4,96(sp)
     11c:	8fae0080 	lw	t6,128(sp)
     120:	afaa0010 	sw	t2,16(sp)
     124:	afa80064 	sw	t0,100(sp)
     128:	01a0f809 	jalr	t5
     12c:	afae0014 	sw	t6,20(sp)
     130:	14400022 	bnez	v0,1bc <SkelAnime_LodDrawLimb+0x1bc>
     134:	8fa80064 	lw	t0,100(sp)
     138:	27a40054 	addiu	a0,sp,84
     13c:	27a5004c 	addiu	a1,sp,76
     140:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     144:	afa80064 	sw	t0,100(sp)
     148:	8fb80060 	lw	t8,96(sp)
     14c:	8fa80064 	lw	t0,100(sp)
     150:	8fa70048 	lw	a3,72(sp)
     154:	13000019 	beqz	t8,1bc <SkelAnime_LodDrawLimb+0x1bc>
     158:	3c09da38 	lui	t1,0xda38
     15c:	8ce202c0 	lw	v0,704(a3)
     160:	35290003 	ori	t1,t1,0x3
     164:	3c050000 	lui	a1,0x0
     168:	244f0008 	addiu	t7,v0,8
     16c:	acef02c0 	sw	t7,704(a3)
     170:	ac490000 	sw	t1,0(v0)
     174:	8fab0068 	lw	t3,104(sp)
     178:	24a50014 	addiu	a1,a1,20
     17c:	24060325 	li	a2,805
     180:	8d640000 	lw	a0,0(t3)
     184:	afa80064 	sw	t0,100(sp)
     188:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     18c:	afa20034 	sw	v0,52(sp)
     190:	8fa30034 	lw	v1,52(sp)
     194:	8fa80064 	lw	t0,100(sp)
     198:	3c0ade00 	lui	t2,0xde00
     19c:	ac620004 	sw	v0,4(v1)
     1a0:	8fb90048 	lw	t9,72(sp)
     1a4:	8f2202c0 	lw	v0,704(t9)
     1a8:	244c0008 	addiu	t4,v0,8
     1ac:	af2c02c0 	sw	t4,704(t9)
     1b0:	ac4a0000 	sw	t2,0(v0)
     1b4:	8fae0060 	lw	t6,96(sp)
     1b8:	ac4e0004 	sw	t6,4(v0)
     1bc:	8fad007c 	lw	t5,124(sp)
     1c0:	8fa40068 	lw	a0,104(sp)
     1c4:	8fa5006c 	lw	a1,108(sp)
     1c8:	11a00007 	beqz	t5,1e8 <SkelAnime_LodDrawLimb+0x1e8>
     1cc:	27a60060 	addiu	a2,sp,96
     1d0:	8fb80080 	lw	t8,128(sp)
     1d4:	27a7004c 	addiu	a3,sp,76
     1d8:	afa80064 	sw	t0,100(sp)
     1dc:	01a0f809 	jalr	t5
     1e0:	afb80010 	sw	t8,16(sp)
     1e4:	8fa80064 	lw	t0,100(sp)
     1e8:	91050006 	lbu	a1,6(t0)
     1ec:	240100ff 	li	at,255
     1f0:	8fa40068 	lw	a0,104(sp)
     1f4:	10a1000d 	beq	a1,at,22c <SkelAnime_LodDrawLimb+0x22c>
     1f8:	8fa60070 	lw	a2,112(sp)
     1fc:	8faf0078 	lw	t7,120(sp)
     200:	8fa9007c 	lw	t1,124(sp)
     204:	8fab0080 	lw	t3,128(sp)
     208:	8fac0084 	lw	t4,132(sp)
     20c:	8fa70074 	lw	a3,116(sp)
     210:	afa80064 	sw	t0,100(sp)
     214:	afaf0010 	sw	t7,16(sp)
     218:	afa90014 	sw	t1,20(sp)
     21c:	afab0018 	sw	t3,24(sp)
     220:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     224:	afac001c 	sw	t4,28(sp)
     228:	8fa80064 	lw	t0,100(sp)
     22c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     230:	afa80064 	sw	t0,100(sp)
     234:	8fa80064 	lw	t0,100(sp)
     238:	240100ff 	li	at,255
     23c:	8fa40068 	lw	a0,104(sp)
     240:	91050007 	lbu	a1,7(t0)
     244:	8fa60070 	lw	a2,112(sp)
     248:	8fa70074 	lw	a3,116(sp)
     24c:	10a10009 	beq	a1,at,274 <SkelAnime_LodDrawLimb+0x274>
     250:	8fb90078 	lw	t9,120(sp)
     254:	8faa007c 	lw	t2,124(sp)
     258:	8fae0080 	lw	t6,128(sp)
     25c:	8fb80084 	lw	t8,132(sp)
     260:	afb90010 	sw	t9,16(sp)
     264:	afaa0014 	sw	t2,20(sp)
     268:	afae0018 	sw	t6,24(sp)
     26c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     270:	afb8001c 	sw	t8,28(sp)
     274:	8fad0068 	lw	t5,104(sp)
     278:	3c060000 	lui	a2,0x0
     27c:	24c60028 	addiu	a2,a2,40
     280:	27a40038 	addiu	a0,sp,56
     284:	24070335 	li	a3,821
     288:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     28c:	8da50000 	lw	a1,0(t5)
     290:	8fbf0024 	lw	ra,36(sp)
     294:	27bd0068 	addiu	sp,sp,104
     298:	03e00008 	jr	ra
     29c:	00000000 	nop

000002a0 <SkelAnime_LodDraw>:
     2a0:	27bdff98 	addiu	sp,sp,-104
     2a4:	afbf0024 	sw	ra,36(sp)
     2a8:	afa40068 	sw	a0,104(sp)
     2ac:	afa5006c 	sw	a1,108(sp)
     2b0:	afa60070 	sw	a2,112(sp)
     2b4:	14a0000c 	bnez	a1,2e8 <SkelAnime_LodDraw+0x48>
     2b8:	afa70074 	sw	a3,116(sp)
     2bc:	3c040000 	lui	a0,0x0
     2c0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     2c4:	2484003c 	addiu	a0,a0,60
     2c8:	3c040000 	lui	a0,0x0
     2cc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     2d0:	24840044 	addiu	a0,a0,68
     2d4:	3c040000 	lui	a0,0x0
     2d8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     2dc:	24840068 	addiu	a0,a0,104
     2e0:	10000081 	b	4e8 <SkelAnime_LodDraw+0x248>
     2e4:	8fbf0024 	lw	ra,36(sp)
     2e8:	8faf0068 	lw	t7,104(sp)
     2ec:	3c060000 	lui	a2,0x0
     2f0:	24c6006c 	addiu	a2,a2,108
     2f4:	8de50000 	lw	a1,0(t7)
     2f8:	27a40034 	addiu	a0,sp,52
     2fc:	24070351 	li	a3,849
     300:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     304:	afa50044 	sw	a1,68(sp)
     308:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     30c:	00000000 	nop
     310:	8fb8006c 	lw	t8,108(sp)
     314:	3c0b0000 	lui	t3,0x0
     318:	3c0100ff 	lui	at,0xff
     31c:	8f020000 	lw	v0,0(t8)
     320:	3421ffff 	ori	at,at,0xffff
     324:	8fa30070 	lw	v1,112(sp)
     328:	00024100 	sll	t0,v0,0x4
     32c:	00084f02 	srl	t1,t0,0x1c
     330:	00095080 	sll	t2,t1,0x2
     334:	016a5821 	addu	t3,t3,t2
     338:	8d6b0000 	lw	t3,0(t3)
     33c:	0041c824 	and	t9,v0,at
     340:	3c018000 	lui	at,0x8000
     344:	032b6021 	addu	t4,t9,t3
     348:	01816821 	addu	t5,t4,at
     34c:	afad0064 	sw	t5,100(sp)
     350:	846e0000 	lh	t6,0(v1)
     354:	27a80048 	addiu	t0,sp,72
     358:	24050001 	li	a1,1
     35c:	448e2000 	mtc1	t6,$f4
     360:	27a6005c 	addiu	a2,sp,92
     364:	27a70050 	addiu	a3,sp,80
     368:	468021a0 	cvt.s.w	$f6,$f4
     36c:	e7a60050 	swc1	$f6,80(sp)
     370:	846f0002 	lh	t7,2(v1)
     374:	448f4000 	mtc1	t7,$f8
     378:	00000000 	nop
     37c:	468042a0 	cvt.s.w	$f10,$f8
     380:	e7aa0054 	swc1	$f10,84(sp)
     384:	84780004 	lh	t8,4(v1)
     388:	44988000 	mtc1	t8,$f16
     38c:	27b80048 	addiu	t8,sp,72
     390:	468084a0 	cvt.s.w	$f18,$f16
     394:	e7b20058 	swc1	$f18,88(sp)
     398:	886a0006 	lwl	t2,6(v1)
     39c:	986a0009 	lwr	t2,9(v1)
     3a0:	ad0a0000 	sw	t2,0(t0)
     3a4:	946a000a 	lhu	t2,10(v1)
     3a8:	a50a0004 	sh	t2,4(t0)
     3ac:	8fab0080 	lw	t3,128(sp)
     3b0:	8fb90064 	lw	t9,100(sp)
     3b4:	8faf0074 	lw	t7,116(sp)
     3b8:	000b6080 	sll	t4,t3,0x2
     3bc:	032c6821 	addu	t5,t9,t4
     3c0:	8dae0008 	lw	t6,8(t5)
     3c4:	8fa40068 	lw	a0,104(sp)
     3c8:	11e00006 	beqz	t7,3e4 <SkelAnime_LodDraw+0x144>
     3cc:	afae005c 	sw	t6,92(sp)
     3d0:	8fa8007c 	lw	t0,124(sp)
     3d4:	afb80010 	sw	t8,16(sp)
     3d8:	01e0f809 	jalr	t7
     3dc:	afa80014 	sw	t0,20(sp)
     3e0:	1440001e 	bnez	v0,45c <SkelAnime_LodDraw+0x1bc>
     3e4:	27a40050 	addiu	a0,sp,80
     3e8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     3ec:	27a50048 	addiu	a1,sp,72
     3f0:	8fa9005c 	lw	t1,92(sp)
     3f4:	8fa70044 	lw	a3,68(sp)
     3f8:	3c0bda38 	lui	t3,0xda38
     3fc:	51200018 	beqzl	t1,460 <SkelAnime_LodDraw+0x1c0>
     400:	8fa20078 	lw	v0,120(sp)
     404:	8ce202c0 	lw	v0,704(a3)
     408:	356b0003 	ori	t3,t3,0x3
     40c:	3c050000 	lui	a1,0x0
     410:	244a0008 	addiu	t2,v0,8
     414:	acea02c0 	sw	t2,704(a3)
     418:	ac4b0000 	sw	t3,0(v0)
     41c:	8fb90068 	lw	t9,104(sp)
     420:	24a50080 	addiu	a1,a1,128
     424:	24060371 	li	a2,881
     428:	8f240000 	lw	a0,0(t9)
     42c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     430:	afa20030 	sw	v0,48(sp)
     434:	8fa30030 	lw	v1,48(sp)
     438:	3c0ede00 	lui	t6,0xde00
     43c:	ac620004 	sw	v0,4(v1)
     440:	8fac0044 	lw	t4,68(sp)
     444:	8d8202c0 	lw	v0,704(t4)
     448:	244d0008 	addiu	t5,v0,8
     44c:	ad8d02c0 	sw	t5,704(t4)
     450:	ac4e0000 	sw	t6,0(v0)
     454:	8fb8005c 	lw	t8,92(sp)
     458:	ac580004 	sw	t8,4(v0)
     45c:	8fa20078 	lw	v0,120(sp)
     460:	8fa40068 	lw	a0,104(sp)
     464:	24050001 	li	a1,1
     468:	10400006 	beqz	v0,484 <SkelAnime_LodDraw+0x1e4>
     46c:	27a6005c 	addiu	a2,sp,92
     470:	8fa8007c 	lw	t0,124(sp)
     474:	27a70048 	addiu	a3,sp,72
     478:	0040f809 	jalr	v0
     47c:	afa80010 	sw	t0,16(sp)
     480:	8fa20078 	lw	v0,120(sp)
     484:	8faf0064 	lw	t7,100(sp)
     488:	240100ff 	li	at,255
     48c:	8fa40068 	lw	a0,104(sp)
     490:	91e50006 	lbu	a1,6(t7)
     494:	8fa6006c 	lw	a2,108(sp)
     498:	8fa70070 	lw	a3,112(sp)
     49c:	10a10008 	beq	a1,at,4c0 <SkelAnime_LodDraw+0x220>
     4a0:	8fa90074 	lw	t1,116(sp)
     4a4:	8faa007c 	lw	t2,124(sp)
     4a8:	8fab0080 	lw	t3,128(sp)
     4ac:	afa90010 	sw	t1,16(sp)
     4b0:	afa20014 	sw	v0,20(sp)
     4b4:	afaa0018 	sw	t2,24(sp)
     4b8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     4bc:	afab001c 	sw	t3,28(sp)
     4c0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     4c4:	00000000 	nop
     4c8:	8fb90068 	lw	t9,104(sp)
     4cc:	3c060000 	lui	a2,0x0
     4d0:	24c60094 	addiu	a2,a2,148
     4d4:	27a40034 	addiu	a0,sp,52
     4d8:	2407037e 	li	a3,894
     4dc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     4e0:	8f250000 	lw	a1,0(t9)
     4e4:	8fbf0024 	lw	ra,36(sp)
     4e8:	27bd0068 	addiu	sp,sp,104
     4ec:	03e00008 	jr	ra
     4f0:	00000000 	nop

000004f4 <SkelAnime_LodDrawLimbSV>:
     4f4:	27bdff90 	addiu	sp,sp,-112
     4f8:	afbf002c 	sw	ra,44(sp)
     4fc:	afa40070 	sw	a0,112(sp)
     500:	afa50074 	sw	a1,116(sp)
     504:	afa60078 	sw	a2,120(sp)
     508:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     50c:	afa7007c 	sw	a3,124(sp)
     510:	8faf0074 	lw	t7,116(sp)
     514:	8fae0078 	lw	t6,120(sp)
     518:	3c0d0000 	lui	t5,0x0
     51c:	000fc080 	sll	t8,t7,0x2
     520:	01d8c821 	addu	t9,t6,t8
     524:	8f220000 	lw	v0,0(t9)
     528:	25ee0001 	addiu	t6,t7,1
     52c:	8fb9007c 	lw	t9,124(sp)
     530:	00025100 	sll	t2,v0,0x4
     534:	000a5f02 	srl	t3,t2,0x1c
     538:	000b6080 	sll	t4,t3,0x2
     53c:	01ac6821 	addu	t5,t5,t4
     540:	8dad0000 	lw	t5,0(t5)
     544:	3c0100ff 	lui	at,0xff
     548:	000e5080 	sll	t2,t6,0x2
     54c:	3421ffff 	ori	at,at,0xffff
     550:	014e5023 	subu	t2,t2,t6
     554:	000a5040 	sll	t2,t2,0x1
     558:	00414824 	and	t1,v0,at
     55c:	afae0074 	sw	t6,116(sp)
     560:	032a5821 	addu	t3,t9,t2
     564:	012d1821 	addu	v1,t1,t5
     568:	89690000 	lwl	t1,0(t3)
     56c:	99690003 	lwr	t1,3(t3)
     570:	27b80050 	addiu	t8,sp,80
     574:	3c018000 	lui	at,0x8000
     578:	af090000 	sw	t1,0(t8)
     57c:	95690004 	lhu	t1,4(t3)
     580:	00611821 	addu	v1,v1,at
     584:	27a60068 	addiu	a2,sp,104
     588:	a7090004 	sh	t1,4(t8)
     58c:	846d0000 	lh	t5,0(v1)
     590:	8fb9008c 	lw	t9,140(sp)
     594:	8fac0080 	lw	t4,128(sp)
     598:	448d2000 	mtc1	t5,$f4
     59c:	00195080 	sll	t2,t9,0x2
     5a0:	006ac021 	addu	t8,v1,t2
     5a4:	468021a0 	cvt.s.w	$f6,$f4
     5a8:	8fa50074 	lw	a1,116(sp)
     5ac:	8fa40070 	lw	a0,112(sp)
     5b0:	27a90050 	addiu	t1,sp,80
     5b4:	27a70058 	addiu	a3,sp,88
     5b8:	e7a60058 	swc1	$f6,88(sp)
     5bc:	846f0002 	lh	t7,2(v1)
     5c0:	448f4000 	mtc1	t7,$f8
     5c4:	00000000 	nop
     5c8:	468042a0 	cvt.s.w	$f10,$f8
     5cc:	e7aa005c 	swc1	$f10,92(sp)
     5d0:	846e0004 	lh	t6,4(v1)
     5d4:	448e8000 	mtc1	t6,$f16
     5d8:	00000000 	nop
     5dc:	468084a0 	cvt.s.w	$f18,$f16
     5e0:	e7b20060 	swc1	$f18,96(sp)
     5e4:	8f0b0008 	lw	t3,8(t8)
     5e8:	afa3006c 	sw	v1,108(sp)
     5ec:	afab0064 	sw	t3,100(sp)
     5f0:	11800007 	beqz	t4,610 <SkelAnime_LodDrawLimbSV+0x11c>
     5f4:	afab0068 	sw	t3,104(sp)
     5f8:	8fad0088 	lw	t5,136(sp)
     5fc:	afa90010 	sw	t1,16(sp)
     600:	afa3006c 	sw	v1,108(sp)
     604:	0180f809 	jalr	t4
     608:	afad0014 	sw	t5,20(sp)
     60c:	1440003c 	bnez	v0,700 <SkelAnime_LodDrawLimbSV+0x20c>
     610:	27a40058 	addiu	a0,sp,88
     614:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     618:	27a50050 	addiu	a1,sp,80
     61c:	8faf0068 	lw	t7,104(sp)
     620:	8fae0090 	lw	t6,144(sp)
     624:	3c050000 	lui	a1,0x0
     628:	11e0002a 	beqz	t7,6d4 <SkelAnime_LodDrawLimbSV+0x1e0>
     62c:	8fab0064 	lw	t3,100(sp)
     630:	8dc40000 	lw	a0,0(t6)
     634:	24a500a8 	addiu	a1,a1,168
     638:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     63c:	240603b1 	li	a2,945
     640:	8fb90070 	lw	t9,112(sp)
     644:	3c060000 	lui	a2,0x0
     648:	24c600bc 	addiu	a2,a2,188
     64c:	8f250000 	lw	a1,0(t9)
     650:	27a4003c 	addiu	a0,sp,60
     654:	240703b2 	li	a3,946
     658:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     65c:	afa5004c 	sw	a1,76(sp)
     660:	8fa8004c 	lw	t0,76(sp)
     664:	3c18da38 	lui	t8,0xda38
     668:	37180003 	ori	t8,t8,0x3
     66c:	8d0302c0 	lw	v1,704(t0)
     670:	3c0cde00 	lui	t4,0xde00
     674:	3c060000 	lui	a2,0x0
     678:	246a0008 	addiu	t2,v1,8
     67c:	ad0a02c0 	sw	t2,704(t0)
     680:	ac780000 	sw	t8,0(v1)
     684:	8fab0090 	lw	t3,144(sp)
     688:	24c600d0 	addiu	a2,a2,208
     68c:	27a4003c 	addiu	a0,sp,60
     690:	8d690000 	lw	t1,0(t3)
     694:	240703b5 	li	a3,949
     698:	ac690004 	sw	t1,4(v1)
     69c:	8d0302c0 	lw	v1,704(t0)
     6a0:	246d0008 	addiu	t5,v1,8
     6a4:	ad0d02c0 	sw	t5,704(t0)
     6a8:	ac6c0000 	sw	t4,0(v1)
     6ac:	8faf0068 	lw	t7,104(sp)
     6b0:	ac6f0004 	sw	t7,4(v1)
     6b4:	8fae0070 	lw	t6,112(sp)
     6b8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     6bc:	8dc50000 	lw	a1,0(t6)
     6c0:	8fb90090 	lw	t9,144(sp)
     6c4:	8f2a0000 	lw	t2,0(t9)
     6c8:	25580040 	addiu	t8,t2,64
     6cc:	1000000c 	b	700 <SkelAnime_LodDrawLimbSV+0x20c>
     6d0:	af380000 	sw	t8,0(t9)
     6d4:	1160000a 	beqz	t3,700 <SkelAnime_LodDrawLimbSV+0x20c>
     6d8:	8fa90090 	lw	t1,144(sp)
     6dc:	3c050000 	lui	a1,0x0
     6e0:	24a500e4 	addiu	a1,a1,228
     6e4:	8d240000 	lw	a0,0(t1)
     6e8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     6ec:	240603ba 	li	a2,954
     6f0:	8fad0090 	lw	t5,144(sp)
     6f4:	8dac0000 	lw	t4,0(t5)
     6f8:	258f0040 	addiu	t7,t4,64
     6fc:	adaf0000 	sw	t7,0(t5)
     700:	8fae0084 	lw	t6,132(sp)
     704:	8fa40070 	lw	a0,112(sp)
     708:	8fa50074 	lw	a1,116(sp)
     70c:	11c00005 	beqz	t6,724 <SkelAnime_LodDrawLimbSV+0x230>
     710:	27a60064 	addiu	a2,sp,100
     714:	8faa0088 	lw	t2,136(sp)
     718:	27a70050 	addiu	a3,sp,80
     71c:	01c0f809 	jalr	t6
     720:	afaa0010 	sw	t2,16(sp)
     724:	8fb8006c 	lw	t8,108(sp)
     728:	240100ff 	li	at,255
     72c:	8fa40070 	lw	a0,112(sp)
     730:	93050006 	lbu	a1,6(t8)
     734:	8fa60078 	lw	a2,120(sp)
     738:	8fa7007c 	lw	a3,124(sp)
     73c:	10a1000b 	beq	a1,at,76c <SkelAnime_LodDrawLimbSV+0x278>
     740:	8fb90080 	lw	t9,128(sp)
     744:	8fab0084 	lw	t3,132(sp)
     748:	8fa90088 	lw	t1,136(sp)
     74c:	8fac008c 	lw	t4,140(sp)
     750:	8faf0090 	lw	t7,144(sp)
     754:	afb90010 	sw	t9,16(sp)
     758:	afab0014 	sw	t3,20(sp)
     75c:	afa90018 	sw	t1,24(sp)
     760:	afac001c 	sw	t4,28(sp)
     764:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     768:	afaf0020 	sw	t7,32(sp)
     76c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     770:	00000000 	nop
     774:	8fad006c 	lw	t5,108(sp)
     778:	240100ff 	li	at,255
     77c:	8fa40070 	lw	a0,112(sp)
     780:	91a50007 	lbu	a1,7(t5)
     784:	8fa60078 	lw	a2,120(sp)
     788:	8fa7007c 	lw	a3,124(sp)
     78c:	10a1000b 	beq	a1,at,7bc <SkelAnime_LodDrawLimbSV+0x2c8>
     790:	8faa0080 	lw	t2,128(sp)
     794:	8fae0084 	lw	t6,132(sp)
     798:	8fb80088 	lw	t8,136(sp)
     79c:	8fb9008c 	lw	t9,140(sp)
     7a0:	8fab0090 	lw	t3,144(sp)
     7a4:	afaa0010 	sw	t2,16(sp)
     7a8:	afae0014 	sw	t6,20(sp)
     7ac:	afb80018 	sw	t8,24(sp)
     7b0:	afb9001c 	sw	t9,28(sp)
     7b4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     7b8:	afab0020 	sw	t3,32(sp)
     7bc:	8fbf002c 	lw	ra,44(sp)
     7c0:	27bd0070 	addiu	sp,sp,112
     7c4:	03e00008 	jr	ra
     7c8:	00000000 	nop

000007cc <SkelAnime_LodDrawSV>:
     7cc:	27bdff80 	addiu	sp,sp,-128
     7d0:	afbf002c 	sw	ra,44(sp)
     7d4:	afa40080 	sw	a0,128(sp)
     7d8:	afa50084 	sw	a1,132(sp)
     7dc:	afa60088 	sw	a2,136(sp)
     7e0:	8c840000 	lw	a0,0(a0)
     7e4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     7e8:	00072980 	sll	a1,a3,0x6
     7ec:	8faf0084 	lw	t7,132(sp)
     7f0:	afa20058 	sw	v0,88(sp)
     7f4:	8fb80080 	lw	t8,128(sp)
     7f8:	15e0000c 	bnez	t7,82c <SkelAnime_LodDrawSV+0x60>
     7fc:	27a40044 	addiu	a0,sp,68
     800:	3c040000 	lui	a0,0x0
     804:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     808:	248400f8 	addiu	a0,a0,248
     80c:	3c040000 	lui	a0,0x0
     810:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     814:	24840100 	addiu	a0,a0,256
     818:	3c040000 	lui	a0,0x0
     81c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     820:	24840124 	addiu	a0,a0,292
     824:	1000009c 	b	a98 <SkelAnime_LodDrawSV+0x2cc>
     828:	8fbf002c 	lw	ra,44(sp)
     82c:	8f050000 	lw	a1,0(t8)
     830:	3c060000 	lui	a2,0x0
     834:	24c60128 	addiu	a2,a2,296
     838:	240703e8 	li	a3,1000
     83c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     840:	afa50054 	sw	a1,84(sp)
     844:	8fa80054 	lw	t0,84(sp)
     848:	3c09db06 	lui	t1,0xdb06
     84c:	35290034 	ori	t1,t1,0x34
     850:	8d0202c0 	lw	v0,704(t0)
     854:	24590008 	addiu	t9,v0,8
     858:	ad1902c0 	sw	t9,704(t0)
     85c:	ac490000 	sw	t1,0(v0)
     860:	8faa0058 	lw	t2,88(sp)
     864:	ac4a0004 	sw	t2,4(v0)
     868:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     86c:	afa80054 	sw	t0,84(sp)
     870:	8fab0084 	lw	t3,132(sp)
     874:	3c180000 	lui	t8,0x0
     878:	3c0100ff 	lui	at,0xff
     87c:	8d620000 	lw	v0,0(t3)
     880:	3421ffff 	ori	at,at,0xffff
     884:	8fa30088 	lw	v1,136(sp)
     888:	00026900 	sll	t5,v0,0x4
     88c:	000d7702 	srl	t6,t5,0x1c
     890:	000e7880 	sll	t7,t6,0x2
     894:	030fc021 	addu	t8,t8,t7
     898:	8f180000 	lw	t8,0(t8)
     89c:	00416024 	and	t4,v0,at
     8a0:	3c018000 	lui	at,0x8000
     8a4:	0198c821 	addu	t9,t4,t8
     8a8:	03214821 	addu	t1,t9,at
     8ac:	afa9007c 	sw	t1,124(sp)
     8b0:	846a0000 	lh	t2,0(v1)
     8b4:	8fa80054 	lw	t0,84(sp)
     8b8:	27ae005c 	addiu	t6,sp,92
     8bc:	448a2000 	mtc1	t2,$f4
     8c0:	24050001 	li	a1,1
     8c4:	27a60074 	addiu	a2,sp,116
     8c8:	468021a0 	cvt.s.w	$f6,$f4
     8cc:	27a70064 	addiu	a3,sp,100
     8d0:	e7a60064 	swc1	$f6,100(sp)
     8d4:	846b0002 	lh	t3,2(v1)
     8d8:	448b4000 	mtc1	t3,$f8
     8dc:	00000000 	nop
     8e0:	468042a0 	cvt.s.w	$f10,$f8
     8e4:	e7aa0068 	swc1	$f10,104(sp)
     8e8:	846d0004 	lh	t5,4(v1)
     8ec:	448d8000 	mtc1	t5,$f16
     8f0:	00000000 	nop
     8f4:	468084a0 	cvt.s.w	$f18,$f16
     8f8:	e7b2006c 	swc1	$f18,108(sp)
     8fc:	886c0006 	lwl	t4,6(v1)
     900:	986c0009 	lwr	t4,9(v1)
     904:	adcc0000 	sw	t4,0(t6)
     908:	946c000a 	lhu	t4,10(v1)
     90c:	a5cc0004 	sh	t4,4(t6)
     910:	8fb9009c 	lw	t9,156(sp)
     914:	8fb8007c 	lw	t8,124(sp)
     918:	8fad0090 	lw	t5,144(sp)
     91c:	00194880 	sll	t1,t9,0x2
     920:	03095021 	addu	t2,t8,t1
     924:	8d4b0008 	lw	t3,8(t2)
     928:	8fa40080 	lw	a0,128(sp)
     92c:	27ae005c 	addiu	t6,sp,92
     930:	afab0070 	sw	t3,112(sp)
     934:	11a00008 	beqz	t5,958 <SkelAnime_LodDrawSV+0x18c>
     938:	afab0074 	sw	t3,116(sp)
     93c:	8faf0098 	lw	t7,152(sp)
     940:	afae0010 	sw	t6,16(sp)
     944:	afa80054 	sw	t0,84(sp)
     948:	01a0f809 	jalr	t5
     94c:	afaf0014 	sw	t7,20(sp)
     950:	1440002c 	bnez	v0,a04 <SkelAnime_LodDrawSV+0x238>
     954:	8fa80054 	lw	t0,84(sp)
     958:	27a40064 	addiu	a0,sp,100
     95c:	27a5005c 	addiu	a1,sp,92
     960:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     964:	afa80054 	sw	t0,84(sp)
     968:	8fac0074 	lw	t4,116(sp)
     96c:	8fa80054 	lw	t0,84(sp)
     970:	8fa40058 	lw	a0,88(sp)
     974:	11800019 	beqz	t4,9dc <SkelAnime_LodDrawSV+0x210>
     978:	3c050000 	lui	a1,0x0
     97c:	24a5013c 	addiu	a1,a1,316
     980:	24060409 	li	a2,1033
     984:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     988:	afa80054 	sw	t0,84(sp)
     98c:	8fa80054 	lw	t0,84(sp)
     990:	3c18da38 	lui	t8,0xda38
     994:	37180003 	ori	t8,t8,0x3
     998:	8d0202c0 	lw	v0,704(t0)
     99c:	3c0bde00 	lui	t3,0xde00
     9a0:	24590008 	addiu	t9,v0,8
     9a4:	ad1902c0 	sw	t9,704(t0)
     9a8:	ac580000 	sw	t8,0(v0)
     9ac:	8fa90058 	lw	t1,88(sp)
     9b0:	ac490004 	sw	t1,4(v0)
     9b4:	8d0202c0 	lw	v0,704(t0)
     9b8:	244a0008 	addiu	t2,v0,8
     9bc:	ad0a02c0 	sw	t2,704(t0)
     9c0:	ac4b0000 	sw	t3,0(v0)
     9c4:	8fae0074 	lw	t6,116(sp)
     9c8:	ac4e0004 	sw	t6,4(v0)
     9cc:	8faf0058 	lw	t7,88(sp)
     9d0:	25ed0040 	addiu	t5,t7,64
     9d4:	1000000b 	b	a04 <SkelAnime_LodDrawSV+0x238>
     9d8:	afad0058 	sw	t5,88(sp)
     9dc:	8fac0070 	lw	t4,112(sp)
     9e0:	3c050000 	lui	a1,0x0
     9e4:	24a50150 	addiu	a1,a1,336
     9e8:	11800006 	beqz	t4,a04 <SkelAnime_LodDrawSV+0x238>
     9ec:	8fa40058 	lw	a0,88(sp)
     9f0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     9f4:	24060410 	li	a2,1040
     9f8:	8fb90058 	lw	t9,88(sp)
     9fc:	27380040 	addiu	t8,t9,64
     a00:	afb80058 	sw	t8,88(sp)
     a04:	8fa20094 	lw	v0,148(sp)
     a08:	8fa40080 	lw	a0,128(sp)
     a0c:	24050001 	li	a1,1
     a10:	10400006 	beqz	v0,a2c <SkelAnime_LodDrawSV+0x260>
     a14:	27a60070 	addiu	a2,sp,112
     a18:	8fa90098 	lw	t1,152(sp)
     a1c:	27a7005c 	addiu	a3,sp,92
     a20:	0040f809 	jalr	v0
     a24:	afa90010 	sw	t1,16(sp)
     a28:	8fa20094 	lw	v0,148(sp)
     a2c:	8faa007c 	lw	t2,124(sp)
     a30:	240100ff 	li	at,255
     a34:	8fa40080 	lw	a0,128(sp)
     a38:	91450006 	lbu	a1,6(t2)
     a3c:	8fa60084 	lw	a2,132(sp)
     a40:	8fa70088 	lw	a3,136(sp)
     a44:	10a1000a 	beq	a1,at,a70 <SkelAnime_LodDrawSV+0x2a4>
     a48:	8fab0090 	lw	t3,144(sp)
     a4c:	8fae0098 	lw	t6,152(sp)
     a50:	8faf009c 	lw	t7,156(sp)
     a54:	27ad0058 	addiu	t5,sp,88
     a58:	afad0020 	sw	t5,32(sp)
     a5c:	afab0010 	sw	t3,16(sp)
     a60:	afa20014 	sw	v0,20(sp)
     a64:	afae0018 	sw	t6,24(sp)
     a68:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     a6c:	afaf001c 	sw	t7,28(sp)
     a70:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     a74:	00000000 	nop
     a78:	8fac0080 	lw	t4,128(sp)
     a7c:	3c060000 	lui	a2,0x0
     a80:	24c60164 	addiu	a2,a2,356
     a84:	27a40044 	addiu	a0,sp,68
     a88:	2407041d 	li	a3,1053
     a8c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     a90:	8d850000 	lw	a1,0(t4)
     a94:	8fbf002c 	lw	ra,44(sp)
     a98:	27bd0080 	addiu	sp,sp,128
     a9c:	03e00008 	jr	ra
     aa0:	00000000 	nop

00000aa4 <SkelAnime_DrawLimb>:
     aa4:	27bdff98 	addiu	sp,sp,-104
     aa8:	afbf0024 	sw	ra,36(sp)
     aac:	afa40068 	sw	a0,104(sp)
     ab0:	afa5006c 	sw	a1,108(sp)
     ab4:	afa60070 	sw	a2,112(sp)
     ab8:	afa70074 	sw	a3,116(sp)
     abc:	8c850000 	lw	a1,0(a0)
     ac0:	3c060000 	lui	a2,0x0
     ac4:	24c60178 	addiu	a2,a2,376
     ac8:	27a40038 	addiu	a0,sp,56
     acc:	24070434 	li	a3,1076
     ad0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     ad4:	afa50048 	sw	a1,72(sp)
     ad8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     adc:	00000000 	nop
     ae0:	8fb8006c 	lw	t8,108(sp)
     ae4:	8faf0070 	lw	t7,112(sp)
     ae8:	3c0e0000 	lui	t6,0x0
     aec:	0018c880 	sll	t9,t8,0x2
     af0:	01f94821 	addu	t1,t7,t9
     af4:	8d220000 	lw	v0,0(t1)
     af8:	270f0001 	addiu	t7,t8,1
     afc:	8fa90074 	lw	t1,116(sp)
     b00:	00025900 	sll	t3,v0,0x4
     b04:	000b6702 	srl	t4,t3,0x1c
     b08:	000c6880 	sll	t5,t4,0x2
     b0c:	01cd7021 	addu	t6,t6,t5
     b10:	8dce0000 	lw	t6,0(t6)
     b14:	3c0100ff 	lui	at,0xff
     b18:	000f5880 	sll	t3,t7,0x2
     b1c:	3421ffff 	ori	at,at,0xffff
     b20:	016f5823 	subu	t3,t3,t7
     b24:	000b5840 	sll	t3,t3,0x1
     b28:	00415024 	and	t2,v0,at
     b2c:	afaf006c 	sw	t7,108(sp)
     b30:	012b6021 	addu	t4,t1,t3
     b34:	014e4021 	addu	t0,t2,t6
     b38:	898a0000 	lwl	t2,0(t4)
     b3c:	998a0003 	lwr	t2,3(t4)
     b40:	27b9004c 	addiu	t9,sp,76
     b44:	3c018000 	lui	at,0x8000
     b48:	af2a0000 	sw	t2,0(t9)
     b4c:	958a0004 	lhu	t2,4(t4)
     b50:	01014021 	addu	t0,t0,at
     b54:	27a60060 	addiu	a2,sp,96
     b58:	a72a0004 	sh	t2,4(t9)
     b5c:	850e0000 	lh	t6,0(t0)
     b60:	8fab0078 	lw	t3,120(sp)
     b64:	8fa5006c 	lw	a1,108(sp)
     b68:	448e2000 	mtc1	t6,$f4
     b6c:	8fa40068 	lw	a0,104(sp)
     b70:	27b9004c 	addiu	t9,sp,76
     b74:	468021a0 	cvt.s.w	$f6,$f4
     b78:	27a70054 	addiu	a3,sp,84
     b7c:	e7a60054 	swc1	$f6,84(sp)
     b80:	85180002 	lh	t8,2(t0)
     b84:	44984000 	mtc1	t8,$f8
     b88:	00000000 	nop
     b8c:	468042a0 	cvt.s.w	$f10,$f8
     b90:	e7aa0058 	swc1	$f10,88(sp)
     b94:	850f0004 	lh	t7,4(t0)
     b98:	448f8000 	mtc1	t7,$f16
     b9c:	00000000 	nop
     ba0:	468084a0 	cvt.s.w	$f18,$f16
     ba4:	e7b2005c 	swc1	$f18,92(sp)
     ba8:	8d090008 	lw	t1,8(t0)
     bac:	11600008 	beqz	t3,bd0 <SkelAnime_DrawLimb+0x12c>
     bb0:	afa90060 	sw	t1,96(sp)
     bb4:	8fac0080 	lw	t4,128(sp)
     bb8:	afb90010 	sw	t9,16(sp)
     bbc:	afa80064 	sw	t0,100(sp)
     bc0:	0160f809 	jalr	t3
     bc4:	afac0014 	sw	t4,20(sp)
     bc8:	14400022 	bnez	v0,c54 <SkelAnime_DrawLimb+0x1b0>
     bcc:	8fa80064 	lw	t0,100(sp)
     bd0:	27a40054 	addiu	a0,sp,84
     bd4:	27a5004c 	addiu	a1,sp,76
     bd8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     bdc:	afa80064 	sw	t0,100(sp)
     be0:	8fad0060 	lw	t5,96(sp)
     be4:	8fa80064 	lw	t0,100(sp)
     be8:	8fa70048 	lw	a3,72(sp)
     bec:	11a00019 	beqz	t5,c54 <SkelAnime_DrawLimb+0x1b0>
     bf0:	3c0eda38 	lui	t6,0xda38
     bf4:	8ce202c0 	lw	v0,704(a3)
     bf8:	35ce0003 	ori	t6,t6,0x3
     bfc:	3c050000 	lui	a1,0x0
     c00:	244a0008 	addiu	t2,v0,8
     c04:	acea02c0 	sw	t2,704(a3)
     c08:	ac4e0000 	sw	t6,0(v0)
     c0c:	8fb80068 	lw	t8,104(sp)
     c10:	24a5018c 	addiu	a1,a1,396
     c14:	2406044f 	li	a2,1103
     c18:	8f040000 	lw	a0,0(t8)
     c1c:	afa80064 	sw	t0,100(sp)
     c20:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     c24:	afa20034 	sw	v0,52(sp)
     c28:	8fa30034 	lw	v1,52(sp)
     c2c:	8fa80064 	lw	t0,100(sp)
     c30:	3c19de00 	lui	t9,0xde00
     c34:	ac620004 	sw	v0,4(v1)
     c38:	8faf0048 	lw	t7,72(sp)
     c3c:	8de202c0 	lw	v0,704(t7)
     c40:	24490008 	addiu	t1,v0,8
     c44:	ade902c0 	sw	t1,704(t7)
     c48:	ac590000 	sw	t9,0(v0)
     c4c:	8fac0060 	lw	t4,96(sp)
     c50:	ac4c0004 	sw	t4,4(v0)
     c54:	8fab007c 	lw	t3,124(sp)
     c58:	8fa40068 	lw	a0,104(sp)
     c5c:	8fa5006c 	lw	a1,108(sp)
     c60:	11600007 	beqz	t3,c80 <SkelAnime_DrawLimb+0x1dc>
     c64:	27a60060 	addiu	a2,sp,96
     c68:	8fad0080 	lw	t5,128(sp)
     c6c:	27a7004c 	addiu	a3,sp,76
     c70:	afa80064 	sw	t0,100(sp)
     c74:	0160f809 	jalr	t3
     c78:	afad0010 	sw	t5,16(sp)
     c7c:	8fa80064 	lw	t0,100(sp)
     c80:	91050006 	lbu	a1,6(t0)
     c84:	240100ff 	li	at,255
     c88:	8fa40068 	lw	a0,104(sp)
     c8c:	10a1000b 	beq	a1,at,cbc <SkelAnime_DrawLimb+0x218>
     c90:	8fa60070 	lw	a2,112(sp)
     c94:	8faa0078 	lw	t2,120(sp)
     c98:	8fae007c 	lw	t6,124(sp)
     c9c:	8fb80080 	lw	t8,128(sp)
     ca0:	8fa70074 	lw	a3,116(sp)
     ca4:	afa80064 	sw	t0,100(sp)
     ca8:	afaa0010 	sw	t2,16(sp)
     cac:	afae0014 	sw	t6,20(sp)
     cb0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     cb4:	afb80018 	sw	t8,24(sp)
     cb8:	8fa80064 	lw	t0,100(sp)
     cbc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     cc0:	afa80064 	sw	t0,100(sp)
     cc4:	8fa80064 	lw	t0,100(sp)
     cc8:	240100ff 	li	at,255
     ccc:	8fa40068 	lw	a0,104(sp)
     cd0:	91050007 	lbu	a1,7(t0)
     cd4:	8fa60070 	lw	a2,112(sp)
     cd8:	8fa70074 	lw	a3,116(sp)
     cdc:	10a10007 	beq	a1,at,cfc <SkelAnime_DrawLimb+0x258>
     ce0:	8fa90078 	lw	t1,120(sp)
     ce4:	8faf007c 	lw	t7,124(sp)
     ce8:	8fb90080 	lw	t9,128(sp)
     cec:	afa90010 	sw	t1,16(sp)
     cf0:	afaf0014 	sw	t7,20(sp)
     cf4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     cf8:	afb90018 	sw	t9,24(sp)
     cfc:	8fac0068 	lw	t4,104(sp)
     d00:	3c060000 	lui	a2,0x0
     d04:	24c601a0 	addiu	a2,a2,416
     d08:	27a40038 	addiu	a0,sp,56
     d0c:	24070461 	li	a3,1121
     d10:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     d14:	8d850000 	lw	a1,0(t4)
     d18:	8fbf0024 	lw	ra,36(sp)
     d1c:	27bd0068 	addiu	sp,sp,104
     d20:	03e00008 	jr	ra
     d24:	00000000 	nop

00000d28 <SkelAnime_Draw>:
     d28:	27bdff98 	addiu	sp,sp,-104
     d2c:	afbf0024 	sw	ra,36(sp)
     d30:	afa40068 	sw	a0,104(sp)
     d34:	afa5006c 	sw	a1,108(sp)
     d38:	afa60070 	sw	a2,112(sp)
     d3c:	14a0000c 	bnez	a1,d70 <SkelAnime_Draw+0x48>
     d40:	afa70074 	sw	a3,116(sp)
     d44:	3c040000 	lui	a0,0x0
     d48:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     d4c:	248401b4 	addiu	a0,a0,436
     d50:	3c040000 	lui	a0,0x0
     d54:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     d58:	248401bc 	addiu	a0,a0,444
     d5c:	3c040000 	lui	a0,0x0
     d60:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     d64:	248401dc 	addiu	a0,a0,476
     d68:	1000007d 	b	f60 <SkelAnime_Draw+0x238>
     d6c:	8fbf0024 	lw	ra,36(sp)
     d70:	8faf0068 	lw	t7,104(sp)
     d74:	3c060000 	lui	a2,0x0
     d78:	24c601e0 	addiu	a2,a2,480
     d7c:	8de50000 	lw	a1,0(t7)
     d80:	27a40034 	addiu	a0,sp,52
     d84:	2407047c 	li	a3,1148
     d88:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     d8c:	afa50044 	sw	a1,68(sp)
     d90:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     d94:	00000000 	nop
     d98:	8fb8006c 	lw	t8,108(sp)
     d9c:	3c0b0000 	lui	t3,0x0
     da0:	3c0100ff 	lui	at,0xff
     da4:	8f020000 	lw	v0,0(t8)
     da8:	3421ffff 	ori	at,at,0xffff
     dac:	8fa30070 	lw	v1,112(sp)
     db0:	00024100 	sll	t0,v0,0x4
     db4:	00084f02 	srl	t1,t0,0x1c
     db8:	00095080 	sll	t2,t1,0x2
     dbc:	016a5821 	addu	t3,t3,t2
     dc0:	8d6b0000 	lw	t3,0(t3)
     dc4:	0041c824 	and	t9,v0,at
     dc8:	3c018000 	lui	at,0x8000
     dcc:	032b6021 	addu	t4,t9,t3
     dd0:	01816821 	addu	t5,t4,at
     dd4:	afad0064 	sw	t5,100(sp)
     dd8:	846e0000 	lh	t6,0(v1)
     ddc:	27a80048 	addiu	t0,sp,72
     de0:	27ad0048 	addiu	t5,sp,72
     de4:	448e2000 	mtc1	t6,$f4
     de8:	24050001 	li	a1,1
     dec:	27a6005c 	addiu	a2,sp,92
     df0:	468021a0 	cvt.s.w	$f6,$f4
     df4:	27a70050 	addiu	a3,sp,80
     df8:	e7a60050 	swc1	$f6,80(sp)
     dfc:	846f0002 	lh	t7,2(v1)
     e00:	448f4000 	mtc1	t7,$f8
     e04:	00000000 	nop
     e08:	468042a0 	cvt.s.w	$f10,$f8
     e0c:	e7aa0054 	swc1	$f10,84(sp)
     e10:	84780004 	lh	t8,4(v1)
     e14:	44988000 	mtc1	t8,$f16
     e18:	00000000 	nop
     e1c:	468084a0 	cvt.s.w	$f18,$f16
     e20:	e7b20058 	swc1	$f18,88(sp)
     e24:	886a0006 	lwl	t2,6(v1)
     e28:	986a0009 	lwr	t2,9(v1)
     e2c:	ad0a0000 	sw	t2,0(t0)
     e30:	946a000a 	lhu	t2,10(v1)
     e34:	a50a0004 	sh	t2,4(t0)
     e38:	8fb90064 	lw	t9,100(sp)
     e3c:	8fac0074 	lw	t4,116(sp)
     e40:	8fa40068 	lw	a0,104(sp)
     e44:	8f2b0008 	lw	t3,8(t9)
     e48:	11800006 	beqz	t4,e64 <SkelAnime_Draw+0x13c>
     e4c:	afab005c 	sw	t3,92(sp)
     e50:	8fae007c 	lw	t6,124(sp)
     e54:	afad0010 	sw	t5,16(sp)
     e58:	0180f809 	jalr	t4
     e5c:	afae0014 	sw	t6,20(sp)
     e60:	1440001e 	bnez	v0,edc <SkelAnime_Draw+0x1b4>
     e64:	27a40050 	addiu	a0,sp,80
     e68:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     e6c:	27a50048 	addiu	a1,sp,72
     e70:	8faf005c 	lw	t7,92(sp)
     e74:	8fa70044 	lw	a3,68(sp)
     e78:	3c08da38 	lui	t0,0xda38
     e7c:	51e00018 	beqzl	t7,ee0 <SkelAnime_Draw+0x1b8>
     e80:	8fa20078 	lw	v0,120(sp)
     e84:	8ce202c0 	lw	v0,704(a3)
     e88:	35080003 	ori	t0,t0,0x3
     e8c:	3c050000 	lui	a1,0x0
     e90:	24580008 	addiu	t8,v0,8
     e94:	acf802c0 	sw	t8,704(a3)
     e98:	ac480000 	sw	t0,0(v0)
     e9c:	8fa90068 	lw	t1,104(sp)
     ea0:	24a501f4 	addiu	a1,a1,500
     ea4:	24060498 	li	a2,1176
     ea8:	8d240000 	lw	a0,0(t1)
     eac:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     eb0:	afa20030 	sw	v0,48(sp)
     eb4:	8fa30030 	lw	v1,48(sp)
     eb8:	3c0bde00 	lui	t3,0xde00
     ebc:	ac620004 	sw	v0,4(v1)
     ec0:	8faa0044 	lw	t2,68(sp)
     ec4:	8d4202c0 	lw	v0,704(t2)
     ec8:	24590008 	addiu	t9,v0,8
     ecc:	ad5902c0 	sw	t9,704(t2)
     ed0:	ac4b0000 	sw	t3,0(v0)
     ed4:	8fad005c 	lw	t5,92(sp)
     ed8:	ac4d0004 	sw	t5,4(v0)
     edc:	8fa20078 	lw	v0,120(sp)
     ee0:	8fa40068 	lw	a0,104(sp)
     ee4:	24050001 	li	a1,1
     ee8:	10400006 	beqz	v0,f04 <SkelAnime_Draw+0x1dc>
     eec:	27a6005c 	addiu	a2,sp,92
     ef0:	8fae007c 	lw	t6,124(sp)
     ef4:	27a70048 	addiu	a3,sp,72
     ef8:	0040f809 	jalr	v0
     efc:	afae0010 	sw	t6,16(sp)
     f00:	8fa20078 	lw	v0,120(sp)
     f04:	8fac0064 	lw	t4,100(sp)
     f08:	240100ff 	li	at,255
     f0c:	8fa40068 	lw	a0,104(sp)
     f10:	91850006 	lbu	a1,6(t4)
     f14:	8fa6006c 	lw	a2,108(sp)
     f18:	8fa70070 	lw	a3,112(sp)
     f1c:	10a10006 	beq	a1,at,f38 <SkelAnime_Draw+0x210>
     f20:	8faf0074 	lw	t7,116(sp)
     f24:	8fb8007c 	lw	t8,124(sp)
     f28:	afaf0010 	sw	t7,16(sp)
     f2c:	afa20014 	sw	v0,20(sp)
     f30:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     f34:	afb80018 	sw	t8,24(sp)
     f38:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     f3c:	00000000 	nop
     f40:	8fa80068 	lw	t0,104(sp)
     f44:	3c060000 	lui	a2,0x0
     f48:	24c60208 	addiu	a2,a2,520
     f4c:	27a40034 	addiu	a0,sp,52
     f50:	240704a6 	li	a3,1190
     f54:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     f58:	8d050000 	lw	a1,0(t0)
     f5c:	8fbf0024 	lw	ra,36(sp)
     f60:	27bd0068 	addiu	sp,sp,104
     f64:	03e00008 	jr	ra
     f68:	00000000 	nop

00000f6c <SkelAnime_DrawLimbSV>:
     f6c:	27bdff98 	addiu	sp,sp,-104
     f70:	afbf0024 	sw	ra,36(sp)
     f74:	afa40068 	sw	a0,104(sp)
     f78:	afa5006c 	sw	a1,108(sp)
     f7c:	afa60070 	sw	a2,112(sp)
     f80:	afa70074 	sw	a3,116(sp)
     f84:	8c850000 	lw	a1,0(a0)
     f88:	3c060000 	lui	a2,0x0
     f8c:	24c6021c 	addiu	a2,a2,540
     f90:	27a40034 	addiu	a0,sp,52
     f94:	240704be 	li	a3,1214
     f98:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     f9c:	afa50044 	sw	a1,68(sp)
     fa0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
     fa4:	00000000 	nop
     fa8:	8fb8006c 	lw	t8,108(sp)
     fac:	8faf0070 	lw	t7,112(sp)
     fb0:	3c0d0000 	lui	t5,0x0
     fb4:	0018c880 	sll	t9,t8,0x2
     fb8:	01f94021 	addu	t0,t7,t9
     fbc:	8d020000 	lw	v0,0(t0)
     fc0:	270e0001 	addiu	t6,t8,1
     fc4:	8fb90074 	lw	t9,116(sp)
     fc8:	000e4080 	sll	t0,t6,0x2
     fcc:	00025100 	sll	t2,v0,0x4
     fd0:	000a5f02 	srl	t3,t2,0x1c
     fd4:	010e4023 	subu	t0,t0,t6
     fd8:	000b6080 	sll	t4,t3,0x2
     fdc:	00084040 	sll	t0,t0,0x1
     fe0:	01ac6821 	addu	t5,t5,t4
     fe4:	afae006c 	sw	t6,108(sp)
     fe8:	03285021 	addu	t2,t9,t0
     fec:	894c0000 	lwl	t4,0(t2)
     ff0:	994c0003 	lwr	t4,3(t2)
     ff4:	8dad0000 	lw	t5,0(t5)
     ff8:	3c0100ff 	lui	at,0xff
     ffc:	27af0048 	addiu	t7,sp,72
    1000:	3421ffff 	ori	at,at,0xffff
    1004:	adec0000 	sw	t4,0(t7)
    1008:	954c0004 	lhu	t4,4(t2)
    100c:	00414824 	and	t1,v0,at
    1010:	3c018000 	lui	at,0x8000
    1014:	012d1821 	addu	v1,t1,t5
    1018:	00611821 	addu	v1,v1,at
    101c:	a5ec0004 	sh	t4,4(t7)
    1020:	84690000 	lh	t1,0(v1)
    1024:	8fa80078 	lw	t0,120(sp)
    1028:	8fa5006c 	lw	a1,108(sp)
    102c:	44892000 	mtc1	t1,$f4
    1030:	8fa40068 	lw	a0,104(sp)
    1034:	27af0048 	addiu	t7,sp,72
    1038:	468021a0 	cvt.s.w	$f6,$f4
    103c:	27a60060 	addiu	a2,sp,96
    1040:	27a70050 	addiu	a3,sp,80
    1044:	e7a60050 	swc1	$f6,80(sp)
    1048:	846d0002 	lh	t5,2(v1)
    104c:	448d4000 	mtc1	t5,$f8
    1050:	00000000 	nop
    1054:	468042a0 	cvt.s.w	$f10,$f8
    1058:	e7aa0054 	swc1	$f10,84(sp)
    105c:	84780004 	lh	t8,4(v1)
    1060:	44988000 	mtc1	t8,$f16
    1064:	00000000 	nop
    1068:	468084a0 	cvt.s.w	$f18,$f16
    106c:	e7b20058 	swc1	$f18,88(sp)
    1070:	8c6e0008 	lw	t6,8(v1)
    1074:	afa30064 	sw	v1,100(sp)
    1078:	afae005c 	sw	t6,92(sp)
    107c:	11000007 	beqz	t0,109c <SkelAnime_DrawLimbSV+0x130>
    1080:	afae0060 	sw	t6,96(sp)
    1084:	8faa0080 	lw	t2,128(sp)
    1088:	afaf0010 	sw	t7,16(sp)
    108c:	afa30064 	sw	v1,100(sp)
    1090:	0100f809 	jalr	t0
    1094:	afaa0014 	sw	t2,20(sp)
    1098:	1440002d 	bnez	v0,1150 <SkelAnime_DrawLimbSV+0x1e4>
    109c:	27a40050 	addiu	a0,sp,80
    10a0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    10a4:	27a50048 	addiu	a1,sp,72
    10a8:	8fab0060 	lw	t3,96(sp)
    10ac:	8fac0084 	lw	t4,132(sp)
    10b0:	3c050000 	lui	a1,0x0
    10b4:	1160001b 	beqz	t3,1124 <SkelAnime_DrawLimbSV+0x1b8>
    10b8:	8fa9005c 	lw	t1,92(sp)
    10bc:	8d840000 	lw	a0,0(t4)
    10c0:	24a50230 	addiu	a1,a1,560
    10c4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    10c8:	240604da 	li	a2,1242
    10cc:	8fa40044 	lw	a0,68(sp)
    10d0:	3c0dda38 	lui	t5,0xda38
    10d4:	35ad0003 	ori	t5,t5,0x3
    10d8:	8c8302c0 	lw	v1,704(a0)
    10dc:	3c0fde00 	lui	t7,0xde00
    10e0:	24690008 	addiu	t1,v1,8
    10e4:	ac8902c0 	sw	t1,704(a0)
    10e8:	ac6d0000 	sw	t5,0(v1)
    10ec:	8fb80084 	lw	t8,132(sp)
    10f0:	8f0e0000 	lw	t6,0(t8)
    10f4:	ac6e0004 	sw	t6,4(v1)
    10f8:	8c8302c0 	lw	v1,704(a0)
    10fc:	24790008 	addiu	t9,v1,8
    1100:	ac9902c0 	sw	t9,704(a0)
    1104:	ac6f0000 	sw	t7,0(v1)
    1108:	8faa0060 	lw	t2,96(sp)
    110c:	ac6a0004 	sw	t2,4(v1)
    1110:	8fa80084 	lw	t0,132(sp)
    1114:	8d0b0000 	lw	t3,0(t0)
    1118:	256c0040 	addiu	t4,t3,64
    111c:	1000000c 	b	1150 <SkelAnime_DrawLimbSV+0x1e4>
    1120:	ad0c0000 	sw	t4,0(t0)
    1124:	1120000a 	beqz	t1,1150 <SkelAnime_DrawLimbSV+0x1e4>
    1128:	8fad0084 	lw	t5,132(sp)
    112c:	3c050000 	lui	a1,0x0
    1130:	24a50244 	addiu	a1,a1,580
    1134:	8da40000 	lw	a0,0(t5)
    1138:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    113c:	240604e1 	li	a2,1249
    1140:	8fb80084 	lw	t8,132(sp)
    1144:	8f0e0000 	lw	t6,0(t8)
    1148:	25d90040 	addiu	t9,t6,64
    114c:	af190000 	sw	t9,0(t8)
    1150:	8faf007c 	lw	t7,124(sp)
    1154:	8fa40068 	lw	a0,104(sp)
    1158:	8fa5006c 	lw	a1,108(sp)
    115c:	11e00005 	beqz	t7,1174 <SkelAnime_DrawLimbSV+0x208>
    1160:	27a6005c 	addiu	a2,sp,92
    1164:	8faa0080 	lw	t2,128(sp)
    1168:	27a70048 	addiu	a3,sp,72
    116c:	01e0f809 	jalr	t7
    1170:	afaa0010 	sw	t2,16(sp)
    1174:	8fab0064 	lw	t3,100(sp)
    1178:	240100ff 	li	at,255
    117c:	8fa40068 	lw	a0,104(sp)
    1180:	91650006 	lbu	a1,6(t3)
    1184:	8fa60070 	lw	a2,112(sp)
    1188:	8fa70074 	lw	a3,116(sp)
    118c:	10a10009 	beq	a1,at,11b4 <SkelAnime_DrawLimbSV+0x248>
    1190:	8fac0078 	lw	t4,120(sp)
    1194:	8fa8007c 	lw	t0,124(sp)
    1198:	8fa90080 	lw	t1,128(sp)
    119c:	8fad0084 	lw	t5,132(sp)
    11a0:	afac0010 	sw	t4,16(sp)
    11a4:	afa80014 	sw	t0,20(sp)
    11a8:	afa90018 	sw	t1,24(sp)
    11ac:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    11b0:	afad001c 	sw	t5,28(sp)
    11b4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    11b8:	00000000 	nop
    11bc:	8fae0064 	lw	t6,100(sp)
    11c0:	240100ff 	li	at,255
    11c4:	8fa40068 	lw	a0,104(sp)
    11c8:	91c50007 	lbu	a1,7(t6)
    11cc:	8fa60070 	lw	a2,112(sp)
    11d0:	8fa70074 	lw	a3,116(sp)
    11d4:	10a10009 	beq	a1,at,11fc <SkelAnime_DrawLimbSV+0x290>
    11d8:	8fb90078 	lw	t9,120(sp)
    11dc:	8fb8007c 	lw	t8,124(sp)
    11e0:	8faa0080 	lw	t2,128(sp)
    11e4:	8faf0084 	lw	t7,132(sp)
    11e8:	afb90010 	sw	t9,16(sp)
    11ec:	afb80014 	sw	t8,20(sp)
    11f0:	afaa0018 	sw	t2,24(sp)
    11f4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    11f8:	afaf001c 	sw	t7,28(sp)
    11fc:	8fab0068 	lw	t3,104(sp)
    1200:	3c060000 	lui	a2,0x0
    1204:	24c60258 	addiu	a2,a2,600
    1208:	27a40034 	addiu	a0,sp,52
    120c:	240704f1 	li	a3,1265
    1210:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1214:	8d650000 	lw	a1,0(t3)
    1218:	8fbf0024 	lw	ra,36(sp)
    121c:	27bd0068 	addiu	sp,sp,104
    1220:	03e00008 	jr	ra
    1224:	00000000 	nop

00001228 <SkelAnime_DrawSV>:
    1228:	27bdff88 	addiu	sp,sp,-120
    122c:	afbf0024 	sw	ra,36(sp)
    1230:	afa40078 	sw	a0,120(sp)
    1234:	afa5007c 	sw	a1,124(sp)
    1238:	afa60080 	sw	a2,128(sp)
    123c:	8c840000 	lw	a0,0(a0)
    1240:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1244:	00072980 	sll	a1,a3,0x6
    1248:	8faf007c 	lw	t7,124(sp)
    124c:	afa20050 	sw	v0,80(sp)
    1250:	8fb80078 	lw	t8,120(sp)
    1254:	15e0000c 	bnez	t7,1288 <SkelAnime_DrawSV+0x60>
    1258:	27a4003c 	addiu	a0,sp,60
    125c:	3c040000 	lui	a0,0x0
    1260:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1264:	2484026c 	addiu	a0,a0,620
    1268:	3c040000 	lui	a0,0x0
    126c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1270:	24840274 	addiu	a0,a0,628
    1274:	3c040000 	lui	a0,0x0
    1278:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    127c:	24840294 	addiu	a0,a0,660
    1280:	10000097 	b	14e0 <SkelAnime_DrawSV+0x2b8>
    1284:	8fbf0024 	lw	ra,36(sp)
    1288:	8f050000 	lw	a1,0(t8)
    128c:	3c060000 	lui	a2,0x0
    1290:	24c60298 	addiu	a2,a2,664
    1294:	2407050e 	li	a3,1294
    1298:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    129c:	afa5004c 	sw	a1,76(sp)
    12a0:	8fa8004c 	lw	t0,76(sp)
    12a4:	3c09db06 	lui	t1,0xdb06
    12a8:	35290034 	ori	t1,t1,0x34
    12ac:	8d0202c0 	lw	v0,704(t0)
    12b0:	24590008 	addiu	t9,v0,8
    12b4:	ad1902c0 	sw	t9,704(t0)
    12b8:	ac490000 	sw	t1,0(v0)
    12bc:	8faa0050 	lw	t2,80(sp)
    12c0:	ac4a0004 	sw	t2,4(v0)
    12c4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    12c8:	afa8004c 	sw	t0,76(sp)
    12cc:	8fab007c 	lw	t3,124(sp)
    12d0:	3c180000 	lui	t8,0x0
    12d4:	3c0100ff 	lui	at,0xff
    12d8:	8d620000 	lw	v0,0(t3)
    12dc:	3421ffff 	ori	at,at,0xffff
    12e0:	8fa30080 	lw	v1,128(sp)
    12e4:	00026900 	sll	t5,v0,0x4
    12e8:	000d7702 	srl	t6,t5,0x1c
    12ec:	000e7880 	sll	t7,t6,0x2
    12f0:	030fc021 	addu	t8,t8,t7
    12f4:	8f180000 	lw	t8,0(t8)
    12f8:	00416024 	and	t4,v0,at
    12fc:	3c018000 	lui	at,0x8000
    1300:	0198c821 	addu	t9,t4,t8
    1304:	03214821 	addu	t1,t9,at
    1308:	afa90074 	sw	t1,116(sp)
    130c:	846a0000 	lh	t2,0(v1)
    1310:	8fa8004c 	lw	t0,76(sp)
    1314:	27ae0054 	addiu	t6,sp,84
    1318:	448a2000 	mtc1	t2,$f4
    131c:	27aa0054 	addiu	t2,sp,84
    1320:	24050001 	li	a1,1
    1324:	468021a0 	cvt.s.w	$f6,$f4
    1328:	27a6006c 	addiu	a2,sp,108
    132c:	27a7005c 	addiu	a3,sp,92
    1330:	e7a6005c 	swc1	$f6,92(sp)
    1334:	846b0002 	lh	t3,2(v1)
    1338:	448b4000 	mtc1	t3,$f8
    133c:	00000000 	nop
    1340:	468042a0 	cvt.s.w	$f10,$f8
    1344:	e7aa0060 	swc1	$f10,96(sp)
    1348:	846d0004 	lh	t5,4(v1)
    134c:	448d8000 	mtc1	t5,$f16
    1350:	00000000 	nop
    1354:	468084a0 	cvt.s.w	$f18,$f16
    1358:	e7b20064 	swc1	$f18,100(sp)
    135c:	886c0006 	lwl	t4,6(v1)
    1360:	986c0009 	lwr	t4,9(v1)
    1364:	adcc0000 	sw	t4,0(t6)
    1368:	946c000a 	lhu	t4,10(v1)
    136c:	a5cc0004 	sh	t4,4(t6)
    1370:	8fb80074 	lw	t8,116(sp)
    1374:	8fa90088 	lw	t1,136(sp)
    1378:	8fa40078 	lw	a0,120(sp)
    137c:	8f190008 	lw	t9,8(t8)
    1380:	afb90068 	sw	t9,104(sp)
    1384:	11200008 	beqz	t1,13a8 <SkelAnime_DrawSV+0x180>
    1388:	afb9006c 	sw	t9,108(sp)
    138c:	8fab0090 	lw	t3,144(sp)
    1390:	afaa0010 	sw	t2,16(sp)
    1394:	afa8004c 	sw	t0,76(sp)
    1398:	0120f809 	jalr	t1
    139c:	afab0014 	sw	t3,20(sp)
    13a0:	1440002c 	bnez	v0,1454 <SkelAnime_DrawSV+0x22c>
    13a4:	8fa8004c 	lw	t0,76(sp)
    13a8:	27a4005c 	addiu	a0,sp,92
    13ac:	27a50054 	addiu	a1,sp,84
    13b0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    13b4:	afa8004c 	sw	t0,76(sp)
    13b8:	8fad006c 	lw	t5,108(sp)
    13bc:	8fa8004c 	lw	t0,76(sp)
    13c0:	8fa40050 	lw	a0,80(sp)
    13c4:	11a00019 	beqz	t5,142c <SkelAnime_DrawSV+0x204>
    13c8:	3c050000 	lui	a1,0x0
    13cc:	24a502ac 	addiu	a1,a1,684
    13d0:	2406052f 	li	a2,1327
    13d4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    13d8:	afa8004c 	sw	t0,76(sp)
    13dc:	8fa8004c 	lw	t0,76(sp)
    13e0:	3c0fda38 	lui	t7,0xda38
    13e4:	35ef0003 	ori	t7,t7,0x3
    13e8:	8d0202c0 	lw	v0,704(t0)
    13ec:	3c19de00 	lui	t9,0xde00
    13f0:	244e0008 	addiu	t6,v0,8
    13f4:	ad0e02c0 	sw	t6,704(t0)
    13f8:	ac4f0000 	sw	t7,0(v0)
    13fc:	8fac0050 	lw	t4,80(sp)
    1400:	ac4c0004 	sw	t4,4(v0)
    1404:	8d0202c0 	lw	v0,704(t0)
    1408:	24580008 	addiu	t8,v0,8
    140c:	ad1802c0 	sw	t8,704(t0)
    1410:	ac590000 	sw	t9,0(v0)
    1414:	8faa006c 	lw	t2,108(sp)
    1418:	ac4a0004 	sw	t2,4(v0)
    141c:	8fab0050 	lw	t3,80(sp)
    1420:	25690040 	addiu	t1,t3,64
    1424:	1000000b 	b	1454 <SkelAnime_DrawSV+0x22c>
    1428:	afa90050 	sw	t1,80(sp)
    142c:	8fad0068 	lw	t5,104(sp)
    1430:	3c050000 	lui	a1,0x0
    1434:	24a502c0 	addiu	a1,a1,704
    1438:	11a00006 	beqz	t5,1454 <SkelAnime_DrawSV+0x22c>
    143c:	8fa40050 	lw	a0,80(sp)
    1440:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1444:	24060536 	li	a2,1334
    1448:	8fae0050 	lw	t6,80(sp)
    144c:	25cf0040 	addiu	t7,t6,64
    1450:	afaf0050 	sw	t7,80(sp)
    1454:	8fa2008c 	lw	v0,140(sp)
    1458:	8fa40078 	lw	a0,120(sp)
    145c:	24050001 	li	a1,1
    1460:	10400006 	beqz	v0,147c <SkelAnime_DrawSV+0x254>
    1464:	27a60068 	addiu	a2,sp,104
    1468:	8fac0090 	lw	t4,144(sp)
    146c:	27a70054 	addiu	a3,sp,84
    1470:	0040f809 	jalr	v0
    1474:	afac0010 	sw	t4,16(sp)
    1478:	8fa2008c 	lw	v0,140(sp)
    147c:	8fb80074 	lw	t8,116(sp)
    1480:	240100ff 	li	at,255
    1484:	8fa40078 	lw	a0,120(sp)
    1488:	93050006 	lbu	a1,6(t8)
    148c:	8fa6007c 	lw	a2,124(sp)
    1490:	8fa70080 	lw	a3,128(sp)
    1494:	10a10008 	beq	a1,at,14b8 <SkelAnime_DrawSV+0x290>
    1498:	8fb90088 	lw	t9,136(sp)
    149c:	8faa0090 	lw	t2,144(sp)
    14a0:	27ab0050 	addiu	t3,sp,80
    14a4:	afab001c 	sw	t3,28(sp)
    14a8:	afb90010 	sw	t9,16(sp)
    14ac:	afa20014 	sw	v0,20(sp)
    14b0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    14b4:	afaa0018 	sw	t2,24(sp)
    14b8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    14bc:	00000000 	nop
    14c0:	8fa90078 	lw	t1,120(sp)
    14c4:	3c060000 	lui	a2,0x0
    14c8:	24c602d4 	addiu	a2,a2,724
    14cc:	27a4003c 	addiu	a0,sp,60
    14d0:	24070543 	li	a3,1347
    14d4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    14d8:	8d250000 	lw	a1,0(t1)
    14dc:	8fbf0024 	lw	ra,36(sp)
    14e0:	27bd0078 	addiu	sp,sp,120
    14e4:	03e00008 	jr	ra
    14e8:	00000000 	nop

000014ec <SkelAnime_AnimateFrame>:
    14ec:	27bdffc0 	addiu	sp,sp,-64
    14f0:	00047100 	sll	t6,a0,0x4
    14f4:	3c090000 	lui	t1,0x0
    14f8:	000e7f02 	srl	t7,t6,0x1c
    14fc:	25290000 	addiu	t1,t1,0
    1500:	000fc080 	sll	t8,t7,0x2
    1504:	0138c821 	addu	t9,t1,t8
    1508:	8f2d0000 	lw	t5,0(t9)
    150c:	3c0a00ff 	lui	t2,0xff
    1510:	354affff 	ori	t2,t2,0xffff
    1514:	008a7024 	and	t6,a0,t2
    1518:	3c0b8000 	lui	t3,0x8000
    151c:	01ae7821 	addu	t7,t5,t6
    1520:	afbf003c 	sw	ra,60(sp)
    1524:	afbe0038 	sw	s8,56(sp)
    1528:	afb70034 	sw	s7,52(sp)
    152c:	afb60030 	sw	s6,48(sp)
    1530:	afb5002c 	sw	s5,44(sp)
    1534:	afb40028 	sw	s4,40(sp)
    1538:	afb30024 	sw	s3,36(sp)
    153c:	afb20020 	sw	s2,32(sp)
    1540:	afb1001c 	sw	s1,28(sp)
    1544:	afb00018 	sw	s0,24(sp)
    1548:	01eb1021 	addu	v0,t7,t3
    154c:	8c430008 	lw	v1,8(v0)
    1550:	8c480004 	lw	t0,4(v0)
    1554:	00e08025 	move	s0,a3
    1558:	0003c100 	sll	t8,v1,0x4
    155c:	0018cf02 	srl	t9,t8,0x1c
    1560:	00196880 	sll	t5,t9,0x2
    1564:	012d7021 	addu	t6,t1,t5
    1568:	8dcf0000 	lw	t7,0(t6)
    156c:	006ac024 	and	t8,v1,t2
    1570:	00086900 	sll	t5,t0,0x4
    1574:	01f8c821 	addu	t9,t7,t8
    1578:	000d7702 	srl	t6,t5,0x1c
    157c:	000e7880 	sll	t7,t6,0x2
    1580:	032b8821 	addu	s1,t9,t3
    1584:	012fc021 	addu	t8,t1,t7
    1588:	8f190000 	lw	t9,0(t8)
    158c:	010a6824 	and	t5,t0,t2
    1590:	00c0b025 	move	s6,a2
    1594:	032d7021 	addu	t6,t9,t5
    1598:	01cb9021 	addu	s2,t6,t3
    159c:	944c000c 	lhu	t4,12(v0)
    15a0:	18c00055 	blez	a2,16f8 <SkelAnime_AnimateFrame+0x20c>
    15a4:	0000a025 	move	s4,zero
    15a8:	00057840 	sll	t7,a1,0x1
    15ac:	3c1e0000 	lui	s8,0x0
    15b0:	3c170000 	lui	s7,0x0
    15b4:	26f702e8 	addiu	s7,s7,744
    15b8:	27de02fc 	addiu	s8,s8,764
    15bc:	01f29821 	addu	s3,t7,s2
    15c0:	0180a825 	move	s5,t4
    15c4:	12000007 	beqz	s0,15e4 <SkelAnime_AnimateFrame+0xf8>
    15c8:	02e02025 	move	a0,s7
    15cc:	12200005 	beqz	s1,15e4 <SkelAnime_AnimateFrame+0xf8>
    15d0:	00000000 	nop
    15d4:	12600003 	beqz	s3,15e4 <SkelAnime_AnimateFrame+0xf8>
    15d8:	00000000 	nop
    15dc:	5640001f 	bnezl	s2,165c <SkelAnime_AnimateFrame+0x170>
    15e0:	96220000 	lhu	v0,0(s1)
    15e4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    15e8:	24050570 	li	a1,1392
    15ec:	03c02025 	move	a0,s8
    15f0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    15f4:	02002825 	move	a1,s0
    15f8:	3c040000 	lui	a0,0x0
    15fc:	24840308 	addiu	a0,a0,776
    1600:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1604:	24050571 	li	a1,1393
    1608:	3c040000 	lui	a0,0x0
    160c:	2484031c 	addiu	a0,a0,796
    1610:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1614:	02202825 	move	a1,s1
    1618:	3c040000 	lui	a0,0x0
    161c:	2484032c 	addiu	a0,a0,812
    1620:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1624:	24050572 	li	a1,1394
    1628:	3c040000 	lui	a0,0x0
    162c:	24840340 	addiu	a0,a0,832
    1630:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1634:	02602825 	move	a1,s3
    1638:	3c040000 	lui	a0,0x0
    163c:	24840354 	addiu	a0,a0,852
    1640:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1644:	24050573 	li	a1,1395
    1648:	3c040000 	lui	a0,0x0
    164c:	24840368 	addiu	a0,a0,872
    1650:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1654:	02402825 	move	a1,s2
    1658:	96220000 	lhu	v0,0(s1)
    165c:	26940001 	addiu	s4,s4,1
    1660:	0055082a 	slt	at,v0,s5
    1664:	14200006 	bnez	at,1680 <SkelAnime_AnimateFrame+0x194>
    1668:	00027040 	sll	t6,v0,0x1
    166c:	0002c040 	sll	t8,v0,0x1
    1670:	0278c821 	addu	t9,s3,t8
    1674:	872d0000 	lh	t5,0(t9)
    1678:	10000004 	b	168c <SkelAnime_AnimateFrame+0x1a0>
    167c:	a60d0000 	sh	t5,0(s0)
    1680:	024e7821 	addu	t7,s2,t6
    1684:	85f80000 	lh	t8,0(t7)
    1688:	a6180000 	sh	t8,0(s0)
    168c:	96220002 	lhu	v0,2(s1)
    1690:	0055082a 	slt	at,v0,s5
    1694:	14200006 	bnez	at,16b0 <SkelAnime_AnimateFrame+0x1c4>
    1698:	00027840 	sll	t7,v0,0x1
    169c:	0002c840 	sll	t9,v0,0x1
    16a0:	02796821 	addu	t5,s3,t9
    16a4:	85ae0000 	lh	t6,0(t5)
    16a8:	10000004 	b	16bc <SkelAnime_AnimateFrame+0x1d0>
    16ac:	a60e0002 	sh	t6,2(s0)
    16b0:	024fc021 	addu	t8,s2,t7
    16b4:	87190000 	lh	t9,0(t8)
    16b8:	a6190002 	sh	t9,2(s0)
    16bc:	96220004 	lhu	v0,4(s1)
    16c0:	26310006 	addiu	s1,s1,6
    16c4:	0055082a 	slt	at,v0,s5
    16c8:	14200006 	bnez	at,16e4 <SkelAnime_AnimateFrame+0x1f8>
    16cc:	0002c040 	sll	t8,v0,0x1
    16d0:	00026840 	sll	t5,v0,0x1
    16d4:	026d7021 	addu	t6,s3,t5
    16d8:	85cf0000 	lh	t7,0(t6)
    16dc:	10000004 	b	16f0 <SkelAnime_AnimateFrame+0x204>
    16e0:	a60f0004 	sh	t7,4(s0)
    16e4:	0258c821 	addu	t9,s2,t8
    16e8:	872d0000 	lh	t5,0(t9)
    16ec:	a60d0004 	sh	t5,4(s0)
    16f0:	1696ffb4 	bne	s4,s6,15c4 <SkelAnime_AnimateFrame+0xd8>
    16f4:	26100006 	addiu	s0,s0,6
    16f8:	8fbf003c 	lw	ra,60(sp)
    16fc:	8fb00018 	lw	s0,24(sp)
    1700:	8fb1001c 	lw	s1,28(sp)
    1704:	8fb20020 	lw	s2,32(sp)
    1708:	8fb30024 	lw	s3,36(sp)
    170c:	8fb40028 	lw	s4,40(sp)
    1710:	8fb5002c 	lw	s5,44(sp)
    1714:	8fb60030 	lw	s6,48(sp)
    1718:	8fb70034 	lw	s7,52(sp)
    171c:	8fbe0038 	lw	s8,56(sp)
    1720:	03e00008 	jr	ra
    1724:	27bd0040 	addiu	sp,sp,64

00001728 <SkelAnime_GetTotalFrames>:
    1728:	00047100 	sll	t6,a0,0x4
    172c:	000e7f02 	srl	t7,t6,0x1c
    1730:	000fc080 	sll	t8,t7,0x2
    1734:	3c190000 	lui	t9,0x0
    1738:	0338c821 	addu	t9,t9,t8
    173c:	3c0100ff 	lui	at,0xff
    1740:	8f390000 	lw	t9,0(t9)
    1744:	3421ffff 	ori	at,at,0xffff
    1748:	00814024 	and	t0,a0,at
    174c:	3c018000 	lui	at,0x8000
    1750:	03281821 	addu	v1,t9,t0
    1754:	00611821 	addu	v1,v1,at
    1758:	03e00008 	jr	ra
    175c:	84620000 	lh	v0,0(v1)

00001760 <SkelAnime_GetFrameCount>:
    1760:	00047100 	sll	t6,a0,0x4
    1764:	000e7f02 	srl	t7,t6,0x1c
    1768:	000fc080 	sll	t8,t7,0x2
    176c:	3c190000 	lui	t9,0x0
    1770:	0338c821 	addu	t9,t9,t8
    1774:	3c0100ff 	lui	at,0xff
    1778:	8f390000 	lw	t9,0(t9)
    177c:	3421ffff 	ori	at,at,0xffff
    1780:	00814024 	and	t0,a0,at
    1784:	3c018000 	lui	at,0x8000
    1788:	03281821 	addu	v1,t9,t0
    178c:	00611821 	addu	v1,v1,at
    1790:	94620000 	lhu	v0,0(v1)
    1794:	2442ffff 	addiu	v0,v0,-1
    1798:	00021400 	sll	v0,v0,0x10
    179c:	03e00008 	jr	ra
    17a0:	00021403 	sra	v0,v0,0x10

000017a4 <SkelAnime_Draw2Limb>:
    17a4:	27bdffa8 	addiu	sp,sp,-88
    17a8:	afbf002c 	sw	ra,44(sp)
    17ac:	afb00028 	sw	s0,40(sp)
    17b0:	afa40058 	sw	a0,88(sp)
    17b4:	afa5005c 	sw	a1,92(sp)
    17b8:	afa60060 	sw	a2,96(sp)
    17bc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    17c0:	afa70064 	sw	a3,100(sp)
    17c4:	8faf005c 	lw	t7,92(sp)
    17c8:	8fae0060 	lw	t6,96(sp)
    17cc:	3c0c0000 	lui	t4,0x0
    17d0:	000fc080 	sll	t8,t7,0x2
    17d4:	01d8c821 	addu	t9,t6,t8
    17d8:	8f220000 	lw	v0,0(t9)
    17dc:	25ed0001 	addiu	t5,t7,1
    17e0:	8fb80064 	lw	t8,100(sp)
    17e4:	000dc880 	sll	t9,t5,0x2
    17e8:	00024900 	sll	t1,v0,0x4
    17ec:	00095702 	srl	t2,t1,0x1c
    17f0:	032dc823 	subu	t9,t9,t5
    17f4:	000a5880 	sll	t3,t2,0x2
    17f8:	0019c840 	sll	t9,t9,0x1
    17fc:	018b6021 	addu	t4,t4,t3
    1800:	afad005c 	sw	t5,92(sp)
    1804:	03194821 	addu	t1,t8,t9
    1808:	892b0000 	lwl	t3,0(t1)
    180c:	992b0003 	lwr	t3,3(t1)
    1810:	8d8c0000 	lw	t4,0(t4)
    1814:	3c0100ff 	lui	at,0xff
    1818:	27ae003c 	addiu	t6,sp,60
    181c:	3421ffff 	ori	at,at,0xffff
    1820:	adcb0000 	sw	t3,0(t6)
    1824:	952b0004 	lhu	t3,4(t1)
    1828:	00414024 	and	t0,v0,at
    182c:	3c018000 	lui	at,0x8000
    1830:	010c8021 	addu	s0,t0,t4
    1834:	02018021 	addu	s0,s0,at
    1838:	a5cb0004 	sh	t3,4(t6)
    183c:	86080000 	lh	t0,0(s0)
    1840:	8fb80068 	lw	t8,104(sp)
    1844:	8fa5005c 	lw	a1,92(sp)
    1848:	44882000 	mtc1	t0,$f4
    184c:	8fa40058 	lw	a0,88(sp)
    1850:	27a90074 	addiu	t1,sp,116
    1854:	468021a0 	cvt.s.w	$f6,$f4
    1858:	27b9003c 	addiu	t9,sp,60
    185c:	27a60050 	addiu	a2,sp,80
    1860:	27a70044 	addiu	a3,sp,68
    1864:	e7a60044 	swc1	$f6,68(sp)
    1868:	860c0002 	lh	t4,2(s0)
    186c:	448c4000 	mtc1	t4,$f8
    1870:	00000000 	nop
    1874:	468042a0 	cvt.s.w	$f10,$f8
    1878:	e7aa0048 	swc1	$f10,72(sp)
    187c:	860f0004 	lh	t7,4(s0)
    1880:	448f8000 	mtc1	t7,$f16
    1884:	00000000 	nop
    1888:	468084a0 	cvt.s.w	$f18,$f16
    188c:	e7b2004c 	swc1	$f18,76(sp)
    1890:	8e0d0008 	lw	t5,8(s0)
    1894:	13000007 	beqz	t8,18b4 <SkelAnime_Draw2Limb+0x110>
    1898:	afad0050 	sw	t5,80(sp)
    189c:	8fae0070 	lw	t6,112(sp)
    18a0:	afb90010 	sw	t9,16(sp)
    18a4:	afa90018 	sw	t1,24(sp)
    18a8:	0300f809 	jalr	t8
    18ac:	afae0014 	sw	t6,20(sp)
    18b0:	1440001b 	bnez	v0,1920 <SkelAnime_Draw2Limb+0x17c>
    18b4:	27a40044 	addiu	a0,sp,68
    18b8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    18bc:	27a5003c 	addiu	a1,sp,60
    18c0:	8faa0050 	lw	t2,80(sp)
    18c4:	8fab0074 	lw	t3,116(sp)
    18c8:	3c0cda38 	lui	t4,0xda38
    18cc:	11400014 	beqz	t2,1920 <SkelAnime_Draw2Limb+0x17c>
    18d0:	25680008 	addiu	t0,t3,8
    18d4:	afa80074 	sw	t0,116(sp)
    18d8:	358c0003 	ori	t4,t4,0x3
    18dc:	ad6c0000 	sw	t4,0(t3)
    18e0:	8faf0058 	lw	t7,88(sp)
    18e4:	3c050000 	lui	a1,0x0
    18e8:	24a50374 	addiu	a1,a1,884
    18ec:	8de40000 	lw	a0,0(t7)
    18f0:	afab0038 	sw	t3,56(sp)
    18f4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    18f8:	240605d1 	li	a2,1489
    18fc:	8fa30038 	lw	v1,56(sp)
    1900:	3c0ede00 	lui	t6,0xde00
    1904:	ac620004 	sw	v0,4(v1)
    1908:	8fad0074 	lw	t5,116(sp)
    190c:	25b90008 	addiu	t9,t5,8
    1910:	afb90074 	sw	t9,116(sp)
    1914:	adae0000 	sw	t6,0(t5)
    1918:	8fa90050 	lw	t1,80(sp)
    191c:	ada90004 	sw	t1,4(t5)
    1920:	8fb8006c 	lw	t8,108(sp)
    1924:	8fa40058 	lw	a0,88(sp)
    1928:	8fa5005c 	lw	a1,92(sp)
    192c:	13000007 	beqz	t8,194c <SkelAnime_Draw2Limb+0x1a8>
    1930:	27a60050 	addiu	a2,sp,80
    1934:	8faa0070 	lw	t2,112(sp)
    1938:	27ab0074 	addiu	t3,sp,116
    193c:	afab0014 	sw	t3,20(sp)
    1940:	27a7003c 	addiu	a3,sp,60
    1944:	0300f809 	jalr	t8
    1948:	afaa0010 	sw	t2,16(sp)
    194c:	92050006 	lbu	a1,6(s0)
    1950:	240100ff 	li	at,255
    1954:	8fa40058 	lw	a0,88(sp)
    1958:	10a1000c 	beq	a1,at,198c <SkelAnime_Draw2Limb+0x1e8>
    195c:	8fa60060 	lw	a2,96(sp)
    1960:	8fa80068 	lw	t0,104(sp)
    1964:	8fac006c 	lw	t4,108(sp)
    1968:	8faf0070 	lw	t7,112(sp)
    196c:	8fad0074 	lw	t5,116(sp)
    1970:	8fa70064 	lw	a3,100(sp)
    1974:	afa80010 	sw	t0,16(sp)
    1978:	afac0014 	sw	t4,20(sp)
    197c:	afaf0018 	sw	t7,24(sp)
    1980:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1984:	afad001c 	sw	t5,28(sp)
    1988:	afa20074 	sw	v0,116(sp)
    198c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1990:	00000000 	nop
    1994:	92050007 	lbu	a1,7(s0)
    1998:	240100ff 	li	at,255
    199c:	8fa40058 	lw	a0,88(sp)
    19a0:	10a1000c 	beq	a1,at,19d4 <SkelAnime_Draw2Limb+0x230>
    19a4:	8fa60060 	lw	a2,96(sp)
    19a8:	8fb90068 	lw	t9,104(sp)
    19ac:	8fae006c 	lw	t6,108(sp)
    19b0:	8fa90070 	lw	t1,112(sp)
    19b4:	8faa0074 	lw	t2,116(sp)
    19b8:	8fa70064 	lw	a3,100(sp)
    19bc:	afb90010 	sw	t9,16(sp)
    19c0:	afae0014 	sw	t6,20(sp)
    19c4:	afa90018 	sw	t1,24(sp)
    19c8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    19cc:	afaa001c 	sw	t2,28(sp)
    19d0:	afa20074 	sw	v0,116(sp)
    19d4:	8fbf002c 	lw	ra,44(sp)
    19d8:	8fa20074 	lw	v0,116(sp)
    19dc:	8fb00028 	lw	s0,40(sp)
    19e0:	03e00008 	jr	ra
    19e4:	27bd0058 	addiu	sp,sp,88

000019e8 <SkelAnime_Draw2>:
    19e8:	27bdffa8 	addiu	sp,sp,-88
    19ec:	afbf0024 	sw	ra,36(sp)
    19f0:	afa40058 	sw	a0,88(sp)
    19f4:	afa5005c 	sw	a1,92(sp)
    19f8:	afa60060 	sw	a2,96(sp)
    19fc:	14a0000c 	bnez	a1,1a30 <SkelAnime_Draw2+0x48>
    1a00:	afa70064 	sw	a3,100(sp)
    1a04:	3c040000 	lui	a0,0x0
    1a08:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1a0c:	24840388 	addiu	a0,a0,904
    1a10:	3c040000 	lui	a0,0x0
    1a14:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1a18:	24840390 	addiu	a0,a0,912
    1a1c:	3c040000 	lui	a0,0x0
    1a20:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1a24:	248403c0 	addiu	a0,a0,960
    1a28:	10000071 	b	1bf0 <SkelAnime_Draw2+0x208>
    1a2c:	00001025 	move	v0,zero
    1a30:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1a34:	00000000 	nop
    1a38:	8faf005c 	lw	t7,92(sp)
    1a3c:	3c0a0000 	lui	t2,0x0
    1a40:	3c0100ff 	lui	at,0xff
    1a44:	8de20000 	lw	v0,0(t7)
    1a48:	3421ffff 	ori	at,at,0xffff
    1a4c:	8fa30060 	lw	v1,96(sp)
    1a50:	0002c900 	sll	t9,v0,0x4
    1a54:	00194702 	srl	t0,t9,0x1c
    1a58:	00084880 	sll	t1,t0,0x2
    1a5c:	01495021 	addu	t2,t2,t1
    1a60:	8d4a0000 	lw	t2,0(t2)
    1a64:	0041c024 	and	t8,v0,at
    1a68:	3c018000 	lui	at,0x8000
    1a6c:	030a5821 	addu	t3,t8,t2
    1a70:	01616021 	addu	t4,t3,at
    1a74:	afac0054 	sw	t4,84(sp)
    1a78:	846d0000 	lh	t5,0(v1)
    1a7c:	27b90038 	addiu	t9,sp,56
    1a80:	27ac0038 	addiu	t4,sp,56
    1a84:	448d2000 	mtc1	t5,$f4
    1a88:	24050001 	li	a1,1
    1a8c:	27a6004c 	addiu	a2,sp,76
    1a90:	468021a0 	cvt.s.w	$f6,$f4
    1a94:	27a70040 	addiu	a3,sp,64
    1a98:	e7a60040 	swc1	$f6,64(sp)
    1a9c:	846e0002 	lh	t6,2(v1)
    1aa0:	448e4000 	mtc1	t6,$f8
    1aa4:	27ae0070 	addiu	t6,sp,112
    1aa8:	468042a0 	cvt.s.w	$f10,$f8
    1aac:	e7aa0044 	swc1	$f10,68(sp)
    1ab0:	846f0004 	lh	t7,4(v1)
    1ab4:	448f8000 	mtc1	t7,$f16
    1ab8:	00000000 	nop
    1abc:	468084a0 	cvt.s.w	$f18,$f16
    1ac0:	e7b20048 	swc1	$f18,72(sp)
    1ac4:	88690006 	lwl	t1,6(v1)
    1ac8:	98690009 	lwr	t1,9(v1)
    1acc:	af290000 	sw	t1,0(t9)
    1ad0:	9469000a 	lhu	t1,10(v1)
    1ad4:	a7290004 	sh	t1,4(t9)
    1ad8:	8fb80054 	lw	t8,84(sp)
    1adc:	8fab0064 	lw	t3,100(sp)
    1ae0:	8fa40058 	lw	a0,88(sp)
    1ae4:	8f0a0008 	lw	t2,8(t8)
    1ae8:	11600007 	beqz	t3,1b08 <SkelAnime_Draw2+0x120>
    1aec:	afaa004c 	sw	t2,76(sp)
    1af0:	8fad006c 	lw	t5,108(sp)
    1af4:	afac0010 	sw	t4,16(sp)
    1af8:	afae0018 	sw	t6,24(sp)
    1afc:	0160f809 	jalr	t3
    1b00:	afad0014 	sw	t5,20(sp)
    1b04:	1440001b 	bnez	v0,1b74 <SkelAnime_Draw2+0x18c>
    1b08:	27a40040 	addiu	a0,sp,64
    1b0c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1b10:	27a50038 	addiu	a1,sp,56
    1b14:	8faf004c 	lw	t7,76(sp)
    1b18:	8fb90070 	lw	t9,112(sp)
    1b1c:	3c09da38 	lui	t1,0xda38
    1b20:	11e00014 	beqz	t7,1b74 <SkelAnime_Draw2+0x18c>
    1b24:	27280008 	addiu	t0,t9,8
    1b28:	afa80070 	sw	t0,112(sp)
    1b2c:	35290003 	ori	t1,t1,0x3
    1b30:	af290000 	sw	t1,0(t9)
    1b34:	8fb80058 	lw	t8,88(sp)
    1b38:	3c050000 	lui	a1,0x0
    1b3c:	24a503c4 	addiu	a1,a1,964
    1b40:	8f040000 	lw	a0,0(t8)
    1b44:	afb90034 	sw	t9,52(sp)
    1b48:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1b4c:	24060616 	li	a2,1558
    1b50:	8fa30034 	lw	v1,52(sp)
    1b54:	3c0dde00 	lui	t5,0xde00
    1b58:	ac620004 	sw	v0,4(v1)
    1b5c:	8faa0070 	lw	t2,112(sp)
    1b60:	254c0008 	addiu	t4,t2,8
    1b64:	afac0070 	sw	t4,112(sp)
    1b68:	ad4d0000 	sw	t5,0(t2)
    1b6c:	8fae004c 	lw	t6,76(sp)
    1b70:	ad4e0004 	sw	t6,4(t2)
    1b74:	8fa20068 	lw	v0,104(sp)
    1b78:	8fa40058 	lw	a0,88(sp)
    1b7c:	24050001 	li	a1,1
    1b80:	10400008 	beqz	v0,1ba4 <SkelAnime_Draw2+0x1bc>
    1b84:	27a6004c 	addiu	a2,sp,76
    1b88:	8fab006c 	lw	t3,108(sp)
    1b8c:	27af0070 	addiu	t7,sp,112
    1b90:	afaf0014 	sw	t7,20(sp)
    1b94:	27a70038 	addiu	a3,sp,56
    1b98:	0040f809 	jalr	v0
    1b9c:	afab0010 	sw	t3,16(sp)
    1ba0:	8fa20068 	lw	v0,104(sp)
    1ba4:	8fb90054 	lw	t9,84(sp)
    1ba8:	240100ff 	li	at,255
    1bac:	8fa40058 	lw	a0,88(sp)
    1bb0:	93250006 	lbu	a1,6(t9)
    1bb4:	8fa6005c 	lw	a2,92(sp)
    1bb8:	8fa70060 	lw	a3,96(sp)
    1bbc:	10a10009 	beq	a1,at,1be4 <SkelAnime_Draw2+0x1fc>
    1bc0:	8fa80064 	lw	t0,100(sp)
    1bc4:	8fa9006c 	lw	t1,108(sp)
    1bc8:	8fb80070 	lw	t8,112(sp)
    1bcc:	afa80010 	sw	t0,16(sp)
    1bd0:	afa20014 	sw	v0,20(sp)
    1bd4:	afa90018 	sw	t1,24(sp)
    1bd8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1bdc:	afb8001c 	sw	t8,28(sp)
    1be0:	afa20070 	sw	v0,112(sp)
    1be4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1be8:	00000000 	nop
    1bec:	8fa20070 	lw	v0,112(sp)
    1bf0:	8fbf0024 	lw	ra,36(sp)
    1bf4:	27bd0058 	addiu	sp,sp,88
    1bf8:	03e00008 	jr	ra
    1bfc:	00000000 	nop

00001c00 <SkelAnime_DrawLimbSV2>:
    1c00:	27bdff98 	addiu	sp,sp,-104
    1c04:	afbf0034 	sw	ra,52(sp)
    1c08:	afb00030 	sw	s0,48(sp)
    1c0c:	afa40068 	sw	a0,104(sp)
    1c10:	afa5006c 	sw	a1,108(sp)
    1c14:	afa60070 	sw	a2,112(sp)
    1c18:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1c1c:	afa70074 	sw	a3,116(sp)
    1c20:	8faf006c 	lw	t7,108(sp)
    1c24:	8fae0070 	lw	t6,112(sp)
    1c28:	3c0c0000 	lui	t4,0x0
    1c2c:	000fc080 	sll	t8,t7,0x2
    1c30:	01d8c821 	addu	t9,t6,t8
    1c34:	8f220000 	lw	v0,0(t9)
    1c38:	25ed0001 	addiu	t5,t7,1
    1c3c:	8fb80074 	lw	t8,116(sp)
    1c40:	000dc880 	sll	t9,t5,0x2
    1c44:	00024900 	sll	t1,v0,0x4
    1c48:	00095702 	srl	t2,t1,0x1c
    1c4c:	032dc823 	subu	t9,t9,t5
    1c50:	000a5880 	sll	t3,t2,0x2
    1c54:	0019c840 	sll	t9,t9,0x1
    1c58:	018b6021 	addu	t4,t4,t3
    1c5c:	afad006c 	sw	t5,108(sp)
    1c60:	03194821 	addu	t1,t8,t9
    1c64:	892b0000 	lwl	t3,0(t1)
    1c68:	992b0003 	lwr	t3,3(t1)
    1c6c:	8d8c0000 	lw	t4,0(t4)
    1c70:	3c0100ff 	lui	at,0xff
    1c74:	27ae0048 	addiu	t6,sp,72
    1c78:	3421ffff 	ori	at,at,0xffff
    1c7c:	adcb0000 	sw	t3,0(t6)
    1c80:	952b0004 	lhu	t3,4(t1)
    1c84:	00414024 	and	t0,v0,at
    1c88:	3c018000 	lui	at,0x8000
    1c8c:	010c8021 	addu	s0,t0,t4
    1c90:	02018021 	addu	s0,s0,at
    1c94:	a5cb0004 	sh	t3,4(t6)
    1c98:	86080000 	lh	t0,0(s0)
    1c9c:	8fb90078 	lw	t9,120(sp)
    1ca0:	8fa5006c 	lw	a1,108(sp)
    1ca4:	44882000 	mtc1	t0,$f4
    1ca8:	8fa40068 	lw	a0,104(sp)
    1cac:	27ae0048 	addiu	t6,sp,72
    1cb0:	468021a0 	cvt.s.w	$f6,$f4
    1cb4:	27aa0088 	addiu	t2,sp,136
    1cb8:	27a60060 	addiu	a2,sp,96
    1cbc:	27a70050 	addiu	a3,sp,80
    1cc0:	e7a60050 	swc1	$f6,80(sp)
    1cc4:	860c0002 	lh	t4,2(s0)
    1cc8:	448c4000 	mtc1	t4,$f8
    1ccc:	00000000 	nop
    1cd0:	468042a0 	cvt.s.w	$f10,$f8
    1cd4:	e7aa0054 	swc1	$f10,84(sp)
    1cd8:	860f0004 	lh	t7,4(s0)
    1cdc:	448f8000 	mtc1	t7,$f16
    1ce0:	00000000 	nop
    1ce4:	468084a0 	cvt.s.w	$f18,$f16
    1ce8:	e7b20058 	swc1	$f18,88(sp)
    1cec:	8e0d0008 	lw	t5,8(s0)
    1cf0:	afad005c 	sw	t5,92(sp)
    1cf4:	13200007 	beqz	t9,1d14 <SkelAnime_DrawLimbSV2+0x114>
    1cf8:	afad0060 	sw	t5,96(sp)
    1cfc:	8fa90080 	lw	t1,128(sp)
    1d00:	afae0010 	sw	t6,16(sp)
    1d04:	afaa0018 	sw	t2,24(sp)
    1d08:	0320f809 	jalr	t9
    1d0c:	afa90014 	sw	t1,20(sp)
    1d10:	1440002c 	bnez	v0,1dc4 <SkelAnime_DrawLimbSV2+0x1c4>
    1d14:	27a40050 	addiu	a0,sp,80
    1d18:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1d1c:	27a50048 	addiu	a1,sp,72
    1d20:	8fab0060 	lw	t3,96(sp)
    1d24:	8fa80084 	lw	t0,132(sp)
    1d28:	3c050000 	lui	a1,0x0
    1d2c:	1160001a 	beqz	t3,1d98 <SkelAnime_DrawLimbSV2+0x198>
    1d30:	8fad005c 	lw	t5,92(sp)
    1d34:	8d040000 	lw	a0,0(t0)
    1d38:	24a503d8 	addiu	a1,a1,984
    1d3c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1d40:	24060657 	li	a2,1623
    1d44:	8fac0088 	lw	t4,136(sp)
    1d48:	3c0dda38 	lui	t5,0xda38
    1d4c:	35ad0003 	ori	t5,t5,0x3
    1d50:	258f0008 	addiu	t7,t4,8
    1d54:	afaf0088 	sw	t7,136(sp)
    1d58:	ad8d0000 	sw	t5,0(t4)
    1d5c:	8fb80084 	lw	t8,132(sp)
    1d60:	3c19de00 	lui	t9,0xde00
    1d64:	8f0e0000 	lw	t6,0(t8)
    1d68:	ad8e0004 	sw	t6,4(t4)
    1d6c:	8fa90088 	lw	t1,136(sp)
    1d70:	252a0008 	addiu	t2,t1,8
    1d74:	afaa0088 	sw	t2,136(sp)
    1d78:	ad390000 	sw	t9,0(t1)
    1d7c:	8fab0060 	lw	t3,96(sp)
    1d80:	ad2b0004 	sw	t3,4(t1)
    1d84:	8fa80084 	lw	t0,132(sp)
    1d88:	8d0c0000 	lw	t4,0(t0)
    1d8c:	258f0040 	addiu	t7,t4,64
    1d90:	1000000c 	b	1dc4 <SkelAnime_DrawLimbSV2+0x1c4>
    1d94:	ad0f0000 	sw	t7,0(t0)
    1d98:	11a0000a 	beqz	t5,1dc4 <SkelAnime_DrawLimbSV2+0x1c4>
    1d9c:	8fb80084 	lw	t8,132(sp)
    1da0:	3c050000 	lui	a1,0x0
    1da4:	24a503ec 	addiu	a1,a1,1004
    1da8:	8f040000 	lw	a0,0(t8)
    1dac:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1db0:	2406065e 	li	a2,1630
    1db4:	8fae0084 	lw	t6,132(sp)
    1db8:	8dc90000 	lw	t1,0(t6)
    1dbc:	252a0040 	addiu	t2,t1,64
    1dc0:	adca0000 	sw	t2,0(t6)
    1dc4:	8fb9007c 	lw	t9,124(sp)
    1dc8:	8fa40068 	lw	a0,104(sp)
    1dcc:	8fa5006c 	lw	a1,108(sp)
    1dd0:	13200007 	beqz	t9,1df0 <SkelAnime_DrawLimbSV2+0x1f0>
    1dd4:	27a6005c 	addiu	a2,sp,92
    1dd8:	8fab0080 	lw	t3,128(sp)
    1ddc:	27ac0088 	addiu	t4,sp,136
    1de0:	afac0014 	sw	t4,20(sp)
    1de4:	27a70048 	addiu	a3,sp,72
    1de8:	0320f809 	jalr	t9
    1dec:	afab0010 	sw	t3,16(sp)
    1df0:	92050006 	lbu	a1,6(s0)
    1df4:	240100ff 	li	at,255
    1df8:	8fa40068 	lw	a0,104(sp)
    1dfc:	10a1000e 	beq	a1,at,1e38 <SkelAnime_DrawLimbSV2+0x238>
    1e00:	8fa60070 	lw	a2,112(sp)
    1e04:	8faf0078 	lw	t7,120(sp)
    1e08:	8fa8007c 	lw	t0,124(sp)
    1e0c:	8fad0080 	lw	t5,128(sp)
    1e10:	8fb80084 	lw	t8,132(sp)
    1e14:	8fa90088 	lw	t1,136(sp)
    1e18:	8fa70074 	lw	a3,116(sp)
    1e1c:	afaf0010 	sw	t7,16(sp)
    1e20:	afa80014 	sw	t0,20(sp)
    1e24:	afad0018 	sw	t5,24(sp)
    1e28:	afb8001c 	sw	t8,28(sp)
    1e2c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1e30:	afa90020 	sw	t1,32(sp)
    1e34:	afa20088 	sw	v0,136(sp)
    1e38:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1e3c:	00000000 	nop
    1e40:	92050007 	lbu	a1,7(s0)
    1e44:	240100ff 	li	at,255
    1e48:	8fa40068 	lw	a0,104(sp)
    1e4c:	10a1000e 	beq	a1,at,1e88 <SkelAnime_DrawLimbSV2+0x288>
    1e50:	8fa60070 	lw	a2,112(sp)
    1e54:	8faa0078 	lw	t2,120(sp)
    1e58:	8fae007c 	lw	t6,124(sp)
    1e5c:	8fab0080 	lw	t3,128(sp)
    1e60:	8fac0084 	lw	t4,132(sp)
    1e64:	8fb90088 	lw	t9,136(sp)
    1e68:	8fa70074 	lw	a3,116(sp)
    1e6c:	afaa0010 	sw	t2,16(sp)
    1e70:	afae0014 	sw	t6,20(sp)
    1e74:	afab0018 	sw	t3,24(sp)
    1e78:	afac001c 	sw	t4,28(sp)
    1e7c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1e80:	afb90020 	sw	t9,32(sp)
    1e84:	afa20088 	sw	v0,136(sp)
    1e88:	8fbf0034 	lw	ra,52(sp)
    1e8c:	8fa20088 	lw	v0,136(sp)
    1e90:	8fb00030 	lw	s0,48(sp)
    1e94:	03e00008 	jr	ra
    1e98:	27bd0068 	addiu	sp,sp,104

00001e9c <SkelAnime_DrawSV2>:
    1e9c:	27bdff98 	addiu	sp,sp,-104
    1ea0:	afbf002c 	sw	ra,44(sp)
    1ea4:	afa40068 	sw	a0,104(sp)
    1ea8:	afa5006c 	sw	a1,108(sp)
    1eac:	afa60070 	sw	a2,112(sp)
    1eb0:	8c840000 	lw	a0,0(a0)
    1eb4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1eb8:	00072980 	sll	a1,a3,0x6
    1ebc:	8faf006c 	lw	t7,108(sp)
    1ec0:	8fb80084 	lw	t8,132(sp)
    1ec4:	afa20040 	sw	v0,64(sp)
    1ec8:	15e0000c 	bnez	t7,1efc <SkelAnime_DrawSV2+0x60>
    1ecc:	27190008 	addiu	t9,t8,8
    1ed0:	3c040000 	lui	a0,0x0
    1ed4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1ed8:	24840400 	addiu	a0,a0,1024
    1edc:	3c040000 	lui	a0,0x0
    1ee0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1ee4:	24840408 	addiu	a0,a0,1032
    1ee8:	3c040000 	lui	a0,0x0
    1eec:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1ef0:	2484043c 	addiu	a0,a0,1084
    1ef4:	10000085 	b	210c <SkelAnime_DrawSV2+0x270>
    1ef8:	00001025 	move	v0,zero
    1efc:	3c08db06 	lui	t0,0xdb06
    1f00:	35080034 	ori	t0,t0,0x34
    1f04:	afb90084 	sw	t9,132(sp)
    1f08:	af080000 	sw	t0,0(t8)
    1f0c:	8fa90040 	lw	t1,64(sp)
    1f10:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1f14:	af090004 	sw	t1,4(t8)
    1f18:	8faa006c 	lw	t2,108(sp)
    1f1c:	3c0f0000 	lui	t7,0x0
    1f20:	3c0100ff 	lui	at,0xff
    1f24:	8d420000 	lw	v0,0(t2)
    1f28:	3421ffff 	ori	at,at,0xffff
    1f2c:	8fa30070 	lw	v1,112(sp)
    1f30:	00026100 	sll	t4,v0,0x4
    1f34:	000c6f02 	srl	t5,t4,0x1c
    1f38:	000d7080 	sll	t6,t5,0x2
    1f3c:	01ee7821 	addu	t7,t7,t6
    1f40:	8def0000 	lw	t7,0(t7)
    1f44:	00415824 	and	t3,v0,at
    1f48:	3c018000 	lui	at,0x8000
    1f4c:	016fc021 	addu	t8,t3,t7
    1f50:	0301c821 	addu	t9,t8,at
    1f54:	afb90064 	sw	t9,100(sp)
    1f58:	84680000 	lh	t0,0(v1)
    1f5c:	27ac0044 	addiu	t4,sp,68
    1f60:	27b90044 	addiu	t9,sp,68
    1f64:	44882000 	mtc1	t0,$f4
    1f68:	24050001 	li	a1,1
    1f6c:	27a6005c 	addiu	a2,sp,92
    1f70:	468021a0 	cvt.s.w	$f6,$f4
    1f74:	27a7004c 	addiu	a3,sp,76
    1f78:	e7a6004c 	swc1	$f6,76(sp)
    1f7c:	84690002 	lh	t1,2(v1)
    1f80:	44894000 	mtc1	t1,$f8
    1f84:	27a90084 	addiu	t1,sp,132
    1f88:	468042a0 	cvt.s.w	$f10,$f8
    1f8c:	e7aa0050 	swc1	$f10,80(sp)
    1f90:	846a0004 	lh	t2,4(v1)
    1f94:	448a8000 	mtc1	t2,$f16
    1f98:	00000000 	nop
    1f9c:	468084a0 	cvt.s.w	$f18,$f16
    1fa0:	e7b20054 	swc1	$f18,84(sp)
    1fa4:	886e0006 	lwl	t6,6(v1)
    1fa8:	986e0009 	lwr	t6,9(v1)
    1fac:	ad8e0000 	sw	t6,0(t4)
    1fb0:	946e000a 	lhu	t6,10(v1)
    1fb4:	a58e0004 	sh	t6,4(t4)
    1fb8:	8fab0064 	lw	t3,100(sp)
    1fbc:	8fb80078 	lw	t8,120(sp)
    1fc0:	8fa40068 	lw	a0,104(sp)
    1fc4:	8d6f0008 	lw	t7,8(t3)
    1fc8:	afaf0058 	sw	t7,88(sp)
    1fcc:	13000007 	beqz	t8,1fec <SkelAnime_DrawSV2+0x150>
    1fd0:	afaf005c 	sw	t7,92(sp)
    1fd4:	8fa80080 	lw	t0,128(sp)
    1fd8:	afb90010 	sw	t9,16(sp)
    1fdc:	afa90018 	sw	t1,24(sp)
    1fe0:	0300f809 	jalr	t8
    1fe4:	afa80014 	sw	t0,20(sp)
    1fe8:	14400027 	bnez	v0,2088 <SkelAnime_DrawSV2+0x1ec>
    1fec:	27a4004c 	addiu	a0,sp,76
    1ff0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    1ff4:	27a50044 	addiu	a1,sp,68
    1ff8:	8faa005c 	lw	t2,92(sp)
    1ffc:	8fa40040 	lw	a0,64(sp)
    2000:	3c050000 	lui	a1,0x0
    2004:	11400017 	beqz	t2,2064 <SkelAnime_DrawSV2+0x1c8>
    2008:	8fac0058 	lw	t4,88(sp)
    200c:	24a50440 	addiu	a1,a1,1088
    2010:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2014:	240606ae 	li	a2,1710
    2018:	8fac0084 	lw	t4,132(sp)
    201c:	3c0eda38 	lui	t6,0xda38
    2020:	35ce0003 	ori	t6,t6,0x3
    2024:	258d0008 	addiu	t5,t4,8
    2028:	afad0084 	sw	t5,132(sp)
    202c:	ad8e0000 	sw	t6,0(t4)
    2030:	8fab0040 	lw	t3,64(sp)
    2034:	3c08de00 	lui	t0,0xde00
    2038:	ad8b0004 	sw	t3,4(t4)
    203c:	8faf0084 	lw	t7,132(sp)
    2040:	25f90008 	addiu	t9,t7,8
    2044:	afb90084 	sw	t9,132(sp)
    2048:	ade80000 	sw	t0,0(t7)
    204c:	8fa9005c 	lw	t1,92(sp)
    2050:	ade90004 	sw	t1,4(t7)
    2054:	8fb80040 	lw	t8,64(sp)
    2058:	270a0040 	addiu	t2,t8,64
    205c:	1000000a 	b	2088 <SkelAnime_DrawSV2+0x1ec>
    2060:	afaa0040 	sw	t2,64(sp)
    2064:	11800008 	beqz	t4,2088 <SkelAnime_DrawSV2+0x1ec>
    2068:	8fa40040 	lw	a0,64(sp)
    206c:	3c050000 	lui	a1,0x0
    2070:	24a50454 	addiu	a1,a1,1108
    2074:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2078:	240606b5 	li	a2,1717
    207c:	8fad0040 	lw	t5,64(sp)
    2080:	25ae0040 	addiu	t6,t5,64
    2084:	afae0040 	sw	t6,64(sp)
    2088:	8fa2007c 	lw	v0,124(sp)
    208c:	8fa40068 	lw	a0,104(sp)
    2090:	24050001 	li	a1,1
    2094:	10400008 	beqz	v0,20b8 <SkelAnime_DrawSV2+0x21c>
    2098:	27a60058 	addiu	a2,sp,88
    209c:	8fab0080 	lw	t3,128(sp)
    20a0:	27af0084 	addiu	t7,sp,132
    20a4:	afaf0014 	sw	t7,20(sp)
    20a8:	27a70044 	addiu	a3,sp,68
    20ac:	0040f809 	jalr	v0
    20b0:	afab0010 	sw	t3,16(sp)
    20b4:	8fa2007c 	lw	v0,124(sp)
    20b8:	8fb90064 	lw	t9,100(sp)
    20bc:	240100ff 	li	at,255
    20c0:	8fa40068 	lw	a0,104(sp)
    20c4:	93250006 	lbu	a1,6(t9)
    20c8:	8fa6006c 	lw	a2,108(sp)
    20cc:	8fa70070 	lw	a3,112(sp)
    20d0:	10a1000b 	beq	a1,at,2100 <SkelAnime_DrawSV2+0x264>
    20d4:	8fa80078 	lw	t0,120(sp)
    20d8:	8fa90080 	lw	t1,128(sp)
    20dc:	8faa0084 	lw	t2,132(sp)
    20e0:	27b80040 	addiu	t8,sp,64
    20e4:	afb8001c 	sw	t8,28(sp)
    20e8:	afa80010 	sw	t0,16(sp)
    20ec:	afa20014 	sw	v0,20(sp)
    20f0:	afa90018 	sw	t1,24(sp)
    20f4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    20f8:	afaa0020 	sw	t2,32(sp)
    20fc:	afa20084 	sw	v0,132(sp)
    2100:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2104:	00000000 	nop
    2108:	8fa20084 	lw	v0,132(sp)
    210c:	8fbf002c 	lw	ra,44(sp)
    2110:	27bd0068 	addiu	sp,sp,104
    2114:	03e00008 	jr	ra
    2118:	00000000 	nop

0000211c <func_800A29BC>:
    211c:	00047100 	sll	t6,a0,0x4
    2120:	3c0b0000 	lui	t3,0x0
    2124:	000e7f02 	srl	t7,t6,0x1c
    2128:	256b0000 	addiu	t3,t3,0
    212c:	000fc080 	sll	t8,t7,0x2
    2130:	0178c821 	addu	t9,t3,t8
    2134:	8f2e0000 	lw	t6,0(t9)
    2138:	3c0c00ff 	lui	t4,0xff
    213c:	358cffff 	ori	t4,t4,0xffff
    2140:	008c7824 	and	t7,a0,t4
    2144:	3c0d8000 	lui	t5,0x8000
    2148:	01cfc021 	addu	t8,t6,t7
    214c:	030d1021 	addu	v0,t8,t5
    2150:	8c480008 	lw	t0,8(v0)
    2154:	8c4a0004 	lw	t2,4(v0)
    2158:	84430002 	lh	v1,2(v0)
    215c:	0008c900 	sll	t9,t0,0x4
    2160:	00197702 	srl	t6,t9,0x1c
    2164:	000e7880 	sll	t7,t6,0x2
    2168:	016fc021 	addu	t8,t3,t7
    216c:	8f190000 	lw	t9,0(t8)
    2170:	010c7024 	and	t6,t0,t4
    2174:	000ac100 	sll	t8,t2,0x4
    2178:	032e7821 	addu	t7,t9,t6
    217c:	0018cf02 	srl	t9,t8,0x1c
    2180:	01ed3821 	addu	a3,t7,t5
    2184:	00197080 	sll	t6,t9,0x2
    2188:	016e7821 	addu	t7,t3,t6
    218c:	8df80000 	lw	t8,0(t7)
    2190:	84ef0000 	lh	t7,0(a3)
    2194:	014cc824 	and	t9,t2,t4
    2198:	03197021 	addu	t6,t8,t9
    219c:	00af082a 	slt	at,a1,t7
    21a0:	10200009 	beqz	at,21c8 <func_800A29BC+0xac>
    21a4:	01cd4821 	addu	t1,t6,t5
    21a8:	84ee0002 	lh	t6,2(a3)
    21ac:	0005c040 	sll	t8,a1,0x1
    21b0:	0309c821 	addu	t9,t8,t1
    21b4:	000e7840 	sll	t7,t6,0x1
    21b8:	032fc021 	addu	t8,t9,t7
    21bc:	870e0000 	lh	t6,0(t8)
    21c0:	10000006 	b	21dc <func_800A29BC+0xc0>
    21c4:	a4ce0000 	sh	t6,0(a2)
    21c8:	84f90002 	lh	t9,2(a3)
    21cc:	00197840 	sll	t7,t9,0x1
    21d0:	012fc021 	addu	t8,t1,t7
    21d4:	870e0000 	lh	t6,0(t8)
    21d8:	a4ce0000 	sh	t6,0(a2)
    21dc:	84f90004 	lh	t9,4(a3)
    21e0:	24020001 	li	v0,1
    21e4:	30640001 	andi	a0,v1,0x1
    21e8:	00b9082a 	slt	at,a1,t9
    21ec:	5020000a 	beqzl	at,2218 <func_800A29BC+0xfc>
    21f0:	84f80006 	lh	t8,6(a3)
    21f4:	84ee0006 	lh	t6,6(a3)
    21f8:	00057840 	sll	t7,a1,0x1
    21fc:	01e9c021 	addu	t8,t7,t1
    2200:	000ec840 	sll	t9,t6,0x1
    2204:	03197821 	addu	t7,t8,t9
    2208:	85ee0000 	lh	t6,0(t7)
    220c:	10000006 	b	2228 <func_800A29BC+0x10c>
    2210:	a4ce0002 	sh	t6,2(a2)
    2214:	84f80006 	lh	t8,6(a3)
    2218:	0018c840 	sll	t9,t8,0x1
    221c:	01397821 	addu	t7,t1,t9
    2220:	85ee0000 	lh	t6,0(t7)
    2224:	a4ce0002 	sh	t6,2(a2)
    2228:	84f80008 	lh	t8,8(a3)
    222c:	00b8082a 	slt	at,a1,t8
    2230:	5020000a 	beqzl	at,225c <func_800A29BC+0x140>
    2234:	84ef000a 	lh	t7,10(a3)
    2238:	84ee000a 	lh	t6,10(a3)
    223c:	0005c840 	sll	t9,a1,0x1
    2240:	03297821 	addu	t7,t9,t1
    2244:	000ec040 	sll	t8,t6,0x1
    2248:	01f8c821 	addu	t9,t7,t8
    224c:	872e0000 	lh	t6,0(t9)
    2250:	10000006 	b	226c <func_800A29BC+0x150>
    2254:	a4ce0004 	sh	t6,4(a2)
    2258:	84ef000a 	lh	t7,10(a3)
    225c:	000fc040 	sll	t8,t7,0x1
    2260:	0138c821 	addu	t9,t1,t8
    2264:	872e0000 	lh	t6,0(t9)
    2268:	a4ce0004 	sh	t6,4(a2)
    226c:	24c60006 	addiu	a2,a2,6
    2270:	186000a8 	blez	v1,2514 <func_800A29BC+0x3f8>
    2274:	24e7000c 	addiu	a3,a3,12
    2278:	5080003a 	beqzl	a0,2364 <func_800A29BC+0x248>
    227c:	84f80000 	lh	t8,0(a3)
    2280:	84ef0000 	lh	t7,0(a3)
    2284:	24020002 	li	v0,2
    2288:	00af082a 	slt	at,a1,t7
    228c:	5020000a 	beqzl	at,22b8 <func_800A29BC+0x19c>
    2290:	84f90002 	lh	t9,2(a3)
    2294:	84ee0002 	lh	t6,2(a3)
    2298:	0005c040 	sll	t8,a1,0x1
    229c:	0309c821 	addu	t9,t8,t1
    22a0:	000e7840 	sll	t7,t6,0x1
    22a4:	032fc021 	addu	t8,t9,t7
    22a8:	870e0000 	lh	t6,0(t8)
    22ac:	10000006 	b	22c8 <func_800A29BC+0x1ac>
    22b0:	a4ce0000 	sh	t6,0(a2)
    22b4:	84f90002 	lh	t9,2(a3)
    22b8:	00197840 	sll	t7,t9,0x1
    22bc:	012fc021 	addu	t8,t1,t7
    22c0:	870e0000 	lh	t6,0(t8)
    22c4:	a4ce0000 	sh	t6,0(a2)
    22c8:	84f90004 	lh	t9,4(a3)
    22cc:	00b9082a 	slt	at,a1,t9
    22d0:	5020000a 	beqzl	at,22fc <func_800A29BC+0x1e0>
    22d4:	84f80006 	lh	t8,6(a3)
    22d8:	84ee0006 	lh	t6,6(a3)
    22dc:	00057840 	sll	t7,a1,0x1
    22e0:	01e9c021 	addu	t8,t7,t1
    22e4:	000ec840 	sll	t9,t6,0x1
    22e8:	03197821 	addu	t7,t8,t9
    22ec:	85ee0000 	lh	t6,0(t7)
    22f0:	10000006 	b	230c <func_800A29BC+0x1f0>
    22f4:	a4ce0002 	sh	t6,2(a2)
    22f8:	84f80006 	lh	t8,6(a3)
    22fc:	0018c840 	sll	t9,t8,0x1
    2300:	01397821 	addu	t7,t1,t9
    2304:	85ee0000 	lh	t6,0(t7)
    2308:	a4ce0002 	sh	t6,2(a2)
    230c:	84f80008 	lh	t8,8(a3)
    2310:	00b8082a 	slt	at,a1,t8
    2314:	5020000a 	beqzl	at,2340 <func_800A29BC+0x224>
    2318:	84ef000a 	lh	t7,10(a3)
    231c:	84ee000a 	lh	t6,10(a3)
    2320:	0005c840 	sll	t9,a1,0x1
    2324:	03297821 	addu	t7,t9,t1
    2328:	000ec040 	sll	t8,t6,0x1
    232c:	01f8c821 	addu	t9,t7,t8
    2330:	872e0000 	lh	t6,0(t9)
    2334:	10000006 	b	2350 <func_800A29BC+0x234>
    2338:	a4ce0004 	sh	t6,4(a2)
    233c:	84ef000a 	lh	t7,10(a3)
    2340:	000fc040 	sll	t8,t7,0x1
    2344:	0138c821 	addu	t9,t1,t8
    2348:	872e0000 	lh	t6,0(t9)
    234c:	a4ce0004 	sh	t6,4(a2)
    2350:	246f0001 	addiu	t7,v1,1
    2354:	24e7000c 	addiu	a3,a3,12
    2358:	11e2006e 	beq	t7,v0,2514 <func_800A29BC+0x3f8>
    235c:	24c60006 	addiu	a2,a2,6
    2360:	84f80000 	lh	t8,0(a3)
    2364:	24420002 	addiu	v0,v0,2
    2368:	00b8082a 	slt	at,a1,t8
    236c:	5020000a 	beqzl	at,2398 <func_800A29BC+0x27c>
    2370:	84ee0002 	lh	t6,2(a3)
    2374:	84ef0002 	lh	t7,2(a3)
    2378:	0005c840 	sll	t9,a1,0x1
    237c:	03297021 	addu	t6,t9,t1
    2380:	000fc040 	sll	t8,t7,0x1
    2384:	01d8c821 	addu	t9,t6,t8
    2388:	872f0000 	lh	t7,0(t9)
    238c:	10000006 	b	23a8 <func_800A29BC+0x28c>
    2390:	a4cf0000 	sh	t7,0(a2)
    2394:	84ee0002 	lh	t6,2(a3)
    2398:	000ec040 	sll	t8,t6,0x1
    239c:	0138c821 	addu	t9,t1,t8
    23a0:	872f0000 	lh	t7,0(t9)
    23a4:	a4cf0000 	sh	t7,0(a2)
    23a8:	84ee0004 	lh	t6,4(a3)
    23ac:	00ae082a 	slt	at,a1,t6
    23b0:	5020000a 	beqzl	at,23dc <func_800A29BC+0x2c0>
    23b4:	84f90006 	lh	t9,6(a3)
    23b8:	84ef0006 	lh	t7,6(a3)
    23bc:	0005c040 	sll	t8,a1,0x1
    23c0:	0309c821 	addu	t9,t8,t1
    23c4:	000f7040 	sll	t6,t7,0x1
    23c8:	032ec021 	addu	t8,t9,t6
    23cc:	870f0000 	lh	t7,0(t8)
    23d0:	10000006 	b	23ec <func_800A29BC+0x2d0>
    23d4:	a4cf0002 	sh	t7,2(a2)
    23d8:	84f90006 	lh	t9,6(a3)
    23dc:	00197040 	sll	t6,t9,0x1
    23e0:	012ec021 	addu	t8,t1,t6
    23e4:	870f0000 	lh	t7,0(t8)
    23e8:	a4cf0002 	sh	t7,2(a2)
    23ec:	84f90008 	lh	t9,8(a3)
    23f0:	00b9082a 	slt	at,a1,t9
    23f4:	5020000a 	beqzl	at,2420 <func_800A29BC+0x304>
    23f8:	84f8000a 	lh	t8,10(a3)
    23fc:	84ef000a 	lh	t7,10(a3)
    2400:	00057040 	sll	t6,a1,0x1
    2404:	01c9c021 	addu	t8,t6,t1
    2408:	000fc840 	sll	t9,t7,0x1
    240c:	03197021 	addu	t6,t8,t9
    2410:	85cf0000 	lh	t7,0(t6)
    2414:	10000006 	b	2430 <func_800A29BC+0x314>
    2418:	a4cf0004 	sh	t7,4(a2)
    241c:	84f8000a 	lh	t8,10(a3)
    2420:	0018c840 	sll	t9,t8,0x1
    2424:	01397021 	addu	t6,t1,t9
    2428:	85cf0000 	lh	t7,0(t6)
    242c:	a4cf0004 	sh	t7,4(a2)
    2430:	84f8000c 	lh	t8,12(a3)
    2434:	24e7000c 	addiu	a3,a3,12
    2438:	24c60006 	addiu	a2,a2,6
    243c:	00b8082a 	slt	at,a1,t8
    2440:	5020000a 	beqzl	at,246c <func_800A29BC+0x350>
    2444:	84ee0002 	lh	t6,2(a3)
    2448:	84ef0002 	lh	t7,2(a3)
    244c:	0005c840 	sll	t9,a1,0x1
    2450:	03297021 	addu	t6,t9,t1
    2454:	000fc040 	sll	t8,t7,0x1
    2458:	01d8c821 	addu	t9,t6,t8
    245c:	872f0000 	lh	t7,0(t9)
    2460:	10000006 	b	247c <func_800A29BC+0x360>
    2464:	a4cf0000 	sh	t7,0(a2)
    2468:	84ee0002 	lh	t6,2(a3)
    246c:	000ec040 	sll	t8,t6,0x1
    2470:	0138c821 	addu	t9,t1,t8
    2474:	872f0000 	lh	t7,0(t9)
    2478:	a4cf0000 	sh	t7,0(a2)
    247c:	84ee0004 	lh	t6,4(a3)
    2480:	00ae082a 	slt	at,a1,t6
    2484:	5020000a 	beqzl	at,24b0 <func_800A29BC+0x394>
    2488:	84f90006 	lh	t9,6(a3)
    248c:	84ef0006 	lh	t7,6(a3)
    2490:	0005c040 	sll	t8,a1,0x1
    2494:	0309c821 	addu	t9,t8,t1
    2498:	000f7040 	sll	t6,t7,0x1
    249c:	032ec021 	addu	t8,t9,t6
    24a0:	870f0000 	lh	t7,0(t8)
    24a4:	10000006 	b	24c0 <func_800A29BC+0x3a4>
    24a8:	a4cf0002 	sh	t7,2(a2)
    24ac:	84f90006 	lh	t9,6(a3)
    24b0:	00197040 	sll	t6,t9,0x1
    24b4:	012ec021 	addu	t8,t1,t6
    24b8:	870f0000 	lh	t7,0(t8)
    24bc:	a4cf0002 	sh	t7,2(a2)
    24c0:	84f90008 	lh	t9,8(a3)
    24c4:	00b9082a 	slt	at,a1,t9
    24c8:	5020000a 	beqzl	at,24f4 <func_800A29BC+0x3d8>
    24cc:	84f8000a 	lh	t8,10(a3)
    24d0:	84ef000a 	lh	t7,10(a3)
    24d4:	00057040 	sll	t6,a1,0x1
    24d8:	01c9c021 	addu	t8,t6,t1
    24dc:	000fc840 	sll	t9,t7,0x1
    24e0:	03197021 	addu	t6,t8,t9
    24e4:	85cf0000 	lh	t7,0(t6)
    24e8:	10000006 	b	2504 <func_800A29BC+0x3e8>
    24ec:	a4cf0004 	sh	t7,4(a2)
    24f0:	84f8000a 	lh	t8,10(a3)
    24f4:	0018c840 	sll	t9,t8,0x1
    24f8:	01397021 	addu	t6,t1,t9
    24fc:	85cf0000 	lh	t7,0(t6)
    2500:	a4cf0004 	sh	t7,4(a2)
    2504:	24780001 	addiu	t8,v1,1
    2508:	24e7000c 	addiu	a3,a3,12
    250c:	1702ff94 	bne	t8,v0,2360 <func_800A29BC+0x244>
    2510:	24c60006 	addiu	a2,a2,6
    2514:	03e00008 	jr	ra
    2518:	00601025 	move	v0,v1

0000251c <func_800A2DBC>:
    251c:	00047100 	sll	t6,a0,0x4
    2520:	000e7f02 	srl	t7,t6,0x1c
    2524:	000fc080 	sll	t8,t7,0x2
    2528:	3c190000 	lui	t9,0x0
    252c:	0338c821 	addu	t9,t9,t8
    2530:	3c0100ff 	lui	at,0xff
    2534:	8f390000 	lw	t9,0(t9)
    2538:	3421ffff 	ori	at,at,0xffff
    253c:	00814024 	and	t0,a0,at
    2540:	3c018000 	lui	at,0x8000
    2544:	03281821 	addu	v1,t9,t0
    2548:	00611821 	addu	v1,v1,at
    254c:	03e00008 	jr	ra
    2550:	84620002 	lh	v0,2(v1)

00002554 <SkelAnime_GetTotalFrames2>:
    2554:	00047100 	sll	t6,a0,0x4
    2558:	000e7f02 	srl	t7,t6,0x1c
    255c:	000fc080 	sll	t8,t7,0x2
    2560:	3c190000 	lui	t9,0x0
    2564:	0338c821 	addu	t9,t9,t8
    2568:	3c0100ff 	lui	at,0xff
    256c:	8f390000 	lw	t9,0(t9)
    2570:	3421ffff 	ori	at,at,0xffff
    2574:	00814024 	and	t0,a0,at
    2578:	3c018000 	lui	at,0x8000
    257c:	03281821 	addu	v1,t9,t0
    2580:	00611821 	addu	v1,v1,at
    2584:	03e00008 	jr	ra
    2588:	84620000 	lh	v0,0(v1)

0000258c <SkelAnime_GetFrameCount2>:
    258c:	00047100 	sll	t6,a0,0x4
    2590:	000e7f02 	srl	t7,t6,0x1c
    2594:	000fc080 	sll	t8,t7,0x2
    2598:	3c190000 	lui	t9,0x0
    259c:	0338c821 	addu	t9,t9,t8
    25a0:	3c0100ff 	lui	at,0xff
    25a4:	8f390000 	lw	t9,0(t9)
    25a8:	3421ffff 	ori	at,at,0xffff
    25ac:	00814024 	and	t0,a0,at
    25b0:	3c018000 	lui	at,0x8000
    25b4:	03281821 	addu	v1,t9,t0
    25b8:	00611821 	addu	v1,v1,at
    25bc:	84620000 	lh	v0,0(v1)
    25c0:	2442ffff 	addiu	v0,v0,-1
    25c4:	00021400 	sll	v0,v0,0x10
    25c8:	03e00008 	jr	ra
    25cc:	00021403 	sra	v0,v0,0x10

000025d0 <SkelAnime_InterpolateVec3s>:
    25d0:	27bdfff8 	addiu	sp,sp,-8
    25d4:	3c013f80 	lui	at,0x3f80
    25d8:	c7ac0018 	lwc1	$f12,24(sp)
    25dc:	44812000 	mtc1	at,$f4
    25e0:	afb00004 	sw	s0,4(sp)
    25e4:	00a08025 	move	s0,a1
    25e8:	4604603c 	c.lt.s	$f12,$f4
    25ec:	00000000 	nop
    25f0:	450000e6 	bc1f	298c <SkelAnime_InterpolateVec3s+0x3bc>
    25f4:	00000000 	nop
    25f8:	18800111 	blez	a0,2a40 <SkelAnime_InterpolateVec3s+0x470>
    25fc:	00001025 	move	v0,zero
    2600:	30830001 	andi	v1,a0,0x1
    2604:	50600030 	beqzl	v1,26c8 <SkelAnime_InterpolateVec3s+0xf8>
    2608:	24420002 	addiu	v0,v0,2
    260c:	84c30000 	lh	v1,0(a2)
    2610:	84ee0000 	lh	t6,0(a3)
    2614:	24020001 	li	v0,1
    2618:	26100006 	addiu	s0,s0,6
    261c:	01c32823 	subu	a1,t6,v1
    2620:	00052c00 	sll	a1,a1,0x10
    2624:	00052c03 	sra	a1,a1,0x10
    2628:	44853000 	mtc1	a1,$f6
    262c:	24c60006 	addiu	a2,a2,6
    2630:	24e70006 	addiu	a3,a3,6
    2634:	46803220 	cvt.s.w	$f8,$f6
    2638:	460c4282 	mul.s	$f10,$f8,$f12
    263c:	4600540d 	trunc.w.s	$f16,$f10
    2640:	44088000 	mfc1	t0,$f16
    2644:	00000000 	nop
    2648:	01034821 	addu	t1,t0,v1
    264c:	a609fffa 	sh	t1,-6(s0)
    2650:	84eafffc 	lh	t2,-4(a3)
    2654:	84c3fffc 	lh	v1,-4(a2)
    2658:	01432823 	subu	a1,t2,v1
    265c:	00052c00 	sll	a1,a1,0x10
    2660:	00052c03 	sra	a1,a1,0x10
    2664:	44859000 	mtc1	a1,$f18
    2668:	00000000 	nop
    266c:	46809120 	cvt.s.w	$f4,$f18
    2670:	460c2182 	mul.s	$f6,$f4,$f12
    2674:	4600320d 	trunc.w.s	$f8,$f6
    2678:	440e4000 	mfc1	t6,$f8
    267c:	00000000 	nop
    2680:	01c37821 	addu	t7,t6,v1
    2684:	a60ffffc 	sh	t7,-4(s0)
    2688:	84f8fffe 	lh	t8,-2(a3)
    268c:	84c3fffe 	lh	v1,-2(a2)
    2690:	03032823 	subu	a1,t8,v1
    2694:	00052c00 	sll	a1,a1,0x10
    2698:	00052c03 	sra	a1,a1,0x10
    269c:	44855000 	mtc1	a1,$f10
    26a0:	00000000 	nop
    26a4:	46805420 	cvt.s.w	$f16,$f10
    26a8:	460c8482 	mul.s	$f18,$f16,$f12
    26ac:	4600910d 	trunc.w.s	$f4,$f18
    26b0:	440a2000 	mfc1	t2,$f4
    26b4:	00000000 	nop
    26b8:	01435821 	addu	t3,t2,v1
    26bc:	104400e0 	beq	v0,a0,2a40 <SkelAnime_InterpolateVec3s+0x470>
    26c0:	a60bfffe 	sh	t3,-2(s0)
    26c4:	24420002 	addiu	v0,v0,2
    26c8:	84c30000 	lh	v1,0(a2)
    26cc:	10440059 	beq	v0,a0,2834 <SkelAnime_InterpolateVec3s+0x264>
    26d0:	84ec0000 	lh	t4,0(a3)
    26d4:	01832823 	subu	a1,t4,v1
    26d8:	00052c00 	sll	a1,a1,0x10
    26dc:	00052c03 	sra	a1,a1,0x10
    26e0:	44859000 	mtc1	a1,$f18
    26e4:	24420002 	addiu	v0,v0,2
    26e8:	2610000c 	addiu	s0,s0,12
    26ec:	468094a0 	cvt.s.w	$f18,$f18
    26f0:	24c6000c 	addiu	a2,a2,12
    26f4:	24e7000c 	addiu	a3,a3,12
    26f8:	460c9482 	mul.s	$f18,$f18,$f12
    26fc:	4600948d 	trunc.w.s	$f18,$f18
    2700:	44189000 	mfc1	t8,$f18
    2704:	00000000 	nop
    2708:	0303c821 	addu	t9,t8,v1
    270c:	a619fff4 	sh	t9,-12(s0)
    2710:	84c3fff6 	lh	v1,-10(a2)
    2714:	84e8fff6 	lh	t0,-10(a3)
    2718:	01032823 	subu	a1,t0,v1
    271c:	00052c00 	sll	a1,a1,0x10
    2720:	00052c03 	sra	a1,a1,0x10
    2724:	44859000 	mtc1	a1,$f18
    2728:	00000000 	nop
    272c:	468094a0 	cvt.s.w	$f18,$f18
    2730:	460c9482 	mul.s	$f18,$f18,$f12
    2734:	4600948d 	trunc.w.s	$f18,$f18
    2738:	440c9000 	mfc1	t4,$f18
    273c:	00000000 	nop
    2740:	01836821 	addu	t5,t4,v1
    2744:	a60dfff6 	sh	t5,-10(s0)
    2748:	84c3fff8 	lh	v1,-8(a2)
    274c:	84eefff8 	lh	t6,-8(a3)
    2750:	01c32823 	subu	a1,t6,v1
    2754:	00052c00 	sll	a1,a1,0x10
    2758:	00052c03 	sra	a1,a1,0x10
    275c:	44859000 	mtc1	a1,$f18
    2760:	00000000 	nop
    2764:	468094a0 	cvt.s.w	$f18,$f18
    2768:	460c9482 	mul.s	$f18,$f18,$f12
    276c:	4600948d 	trunc.w.s	$f18,$f18
    2770:	44089000 	mfc1	t0,$f18
    2774:	00000000 	nop
    2778:	01034821 	addu	t1,t0,v1
    277c:	a609fff8 	sh	t1,-8(s0)
    2780:	84c3fffa 	lh	v1,-6(a2)
    2784:	84eafffa 	lh	t2,-6(a3)
    2788:	01432823 	subu	a1,t2,v1
    278c:	00052c00 	sll	a1,a1,0x10
    2790:	00052c03 	sra	a1,a1,0x10
    2794:	44859000 	mtc1	a1,$f18
    2798:	00000000 	nop
    279c:	468094a0 	cvt.s.w	$f18,$f18
    27a0:	460c9482 	mul.s	$f18,$f18,$f12
    27a4:	4600948d 	trunc.w.s	$f18,$f18
    27a8:	440e9000 	mfc1	t6,$f18
    27ac:	00000000 	nop
    27b0:	01c37821 	addu	t7,t6,v1
    27b4:	a60ffffa 	sh	t7,-6(s0)
    27b8:	84c3fffc 	lh	v1,-4(a2)
    27bc:	84f8fffc 	lh	t8,-4(a3)
    27c0:	03032823 	subu	a1,t8,v1
    27c4:	00052c00 	sll	a1,a1,0x10
    27c8:	00052c03 	sra	a1,a1,0x10
    27cc:	44859000 	mtc1	a1,$f18
    27d0:	00000000 	nop
    27d4:	468094a0 	cvt.s.w	$f18,$f18
    27d8:	460c9482 	mul.s	$f18,$f18,$f12
    27dc:	4600948d 	trunc.w.s	$f18,$f18
    27e0:	440a9000 	mfc1	t2,$f18
    27e4:	00000000 	nop
    27e8:	01435821 	addu	t3,t2,v1
    27ec:	a60bfffc 	sh	t3,-4(s0)
    27f0:	84c3fffe 	lh	v1,-2(a2)
    27f4:	84ecfffe 	lh	t4,-2(a3)
    27f8:	01832823 	subu	a1,t4,v1
    27fc:	00052c00 	sll	a1,a1,0x10
    2800:	00052c03 	sra	a1,a1,0x10
    2804:	44859000 	mtc1	a1,$f18
    2808:	00000000 	nop
    280c:	468094a0 	cvt.s.w	$f18,$f18
    2810:	460c9482 	mul.s	$f18,$f18,$f12
    2814:	4600948d 	trunc.w.s	$f18,$f18
    2818:	44189000 	mfc1	t8,$f18
    281c:	00000000 	nop
    2820:	0303c821 	addu	t9,t8,v1
    2824:	a619fffe 	sh	t9,-2(s0)
    2828:	84c30000 	lh	v1,0(a2)
    282c:	1444ffa9 	bne	v0,a0,26d4 <SkelAnime_InterpolateVec3s+0x104>
    2830:	84ec0000 	lh	t4,0(a3)
    2834:	01832823 	subu	a1,t4,v1
    2838:	00052c00 	sll	a1,a1,0x10
    283c:	00052c03 	sra	a1,a1,0x10
    2840:	44859000 	mtc1	a1,$f18
    2844:	2610000c 	addiu	s0,s0,12
    2848:	24c6000c 	addiu	a2,a2,12
    284c:	468094a0 	cvt.s.w	$f18,$f18
    2850:	24e7000c 	addiu	a3,a3,12
    2854:	460c9482 	mul.s	$f18,$f18,$f12
    2858:	4600948d 	trunc.w.s	$f18,$f18
    285c:	44189000 	mfc1	t8,$f18
    2860:	00000000 	nop
    2864:	0303c821 	addu	t9,t8,v1
    2868:	a619fff4 	sh	t9,-12(s0)
    286c:	84c3fff6 	lh	v1,-10(a2)
    2870:	84e8fff6 	lh	t0,-10(a3)
    2874:	01032823 	subu	a1,t0,v1
    2878:	00052c00 	sll	a1,a1,0x10
    287c:	00052c03 	sra	a1,a1,0x10
    2880:	44859000 	mtc1	a1,$f18
    2884:	00000000 	nop
    2888:	468094a0 	cvt.s.w	$f18,$f18
    288c:	460c9482 	mul.s	$f18,$f18,$f12
    2890:	4600948d 	trunc.w.s	$f18,$f18
    2894:	440c9000 	mfc1	t4,$f18
    2898:	00000000 	nop
    289c:	01836821 	addu	t5,t4,v1
    28a0:	a60dfff6 	sh	t5,-10(s0)
    28a4:	84c3fff8 	lh	v1,-8(a2)
    28a8:	84eefff8 	lh	t6,-8(a3)
    28ac:	01c32823 	subu	a1,t6,v1
    28b0:	00052c00 	sll	a1,a1,0x10
    28b4:	00052c03 	sra	a1,a1,0x10
    28b8:	44859000 	mtc1	a1,$f18
    28bc:	00000000 	nop
    28c0:	468094a0 	cvt.s.w	$f18,$f18
    28c4:	460c9482 	mul.s	$f18,$f18,$f12
    28c8:	4600948d 	trunc.w.s	$f18,$f18
    28cc:	44089000 	mfc1	t0,$f18
    28d0:	00000000 	nop
    28d4:	01034821 	addu	t1,t0,v1
    28d8:	a609fff8 	sh	t1,-8(s0)
    28dc:	84eafffa 	lh	t2,-6(a3)
    28e0:	84c3fffa 	lh	v1,-6(a2)
    28e4:	01432823 	subu	a1,t2,v1
    28e8:	00052c00 	sll	a1,a1,0x10
    28ec:	00052c03 	sra	a1,a1,0x10
    28f0:	44859000 	mtc1	a1,$f18
    28f4:	00000000 	nop
    28f8:	468094a0 	cvt.s.w	$f18,$f18
    28fc:	460c9482 	mul.s	$f18,$f18,$f12
    2900:	4600948d 	trunc.w.s	$f18,$f18
    2904:	440e9000 	mfc1	t6,$f18
    2908:	00000000 	nop
    290c:	01c37821 	addu	t7,t6,v1
    2910:	a60ffffa 	sh	t7,-6(s0)
    2914:	84f8fffc 	lh	t8,-4(a3)
    2918:	84c3fffc 	lh	v1,-4(a2)
    291c:	03032823 	subu	a1,t8,v1
    2920:	00052c00 	sll	a1,a1,0x10
    2924:	00052c03 	sra	a1,a1,0x10
    2928:	44859000 	mtc1	a1,$f18
    292c:	00000000 	nop
    2930:	468094a0 	cvt.s.w	$f18,$f18
    2934:	460c9482 	mul.s	$f18,$f18,$f12
    2938:	4600948d 	trunc.w.s	$f18,$f18
    293c:	440a9000 	mfc1	t2,$f18
    2940:	00000000 	nop
    2944:	01435821 	addu	t3,t2,v1
    2948:	a60bfffc 	sh	t3,-4(s0)
    294c:	84ecfffe 	lh	t4,-2(a3)
    2950:	84c3fffe 	lh	v1,-2(a2)
    2954:	01832823 	subu	a1,t4,v1
    2958:	00052c00 	sll	a1,a1,0x10
    295c:	00052c03 	sra	a1,a1,0x10
    2960:	44859000 	mtc1	a1,$f18
    2964:	00000000 	nop
    2968:	468094a0 	cvt.s.w	$f18,$f18
    296c:	460c9482 	mul.s	$f18,$f18,$f12
    2970:	4600948d 	trunc.w.s	$f18,$f18
    2974:	44189000 	mfc1	t8,$f18
    2978:	00000000 	nop
    297c:	0303c821 	addu	t9,t8,v1
    2980:	a619fffe 	sh	t9,-2(s0)
    2984:	1000002f 	b	2a44 <SkelAnime_InterpolateVec3s+0x474>
    2988:	8fb00004 	lw	s0,4(sp)
    298c:	1880002c 	blez	a0,2a40 <SkelAnime_InterpolateVec3s+0x470>
    2990:	00001025 	move	v0,zero
    2994:	30850003 	andi	a1,a0,0x3
    2998:	10a0000d 	beqz	a1,29d0 <SkelAnime_InterpolateVec3s+0x400>
    299c:	00a01825 	move	v1,a1
    29a0:	84e80000 	lh	t0,0(a3)
    29a4:	24420001 	addiu	v0,v0,1
    29a8:	26100006 	addiu	s0,s0,6
    29ac:	a608fffa 	sh	t0,-6(s0)
    29b0:	84e90002 	lh	t1,2(a3)
    29b4:	24e70006 	addiu	a3,a3,6
    29b8:	a609fffc 	sh	t1,-4(s0)
    29bc:	84eafffe 	lh	t2,-2(a3)
    29c0:	1462fff7 	bne	v1,v0,29a0 <SkelAnime_InterpolateVec3s+0x3d0>
    29c4:	a60afffe 	sh	t2,-2(s0)
    29c8:	5044001e 	beql	v0,a0,2a44 <SkelAnime_InterpolateVec3s+0x474>
    29cc:	8fb00004 	lw	s0,4(sp)
    29d0:	84eb0000 	lh	t3,0(a3)
    29d4:	24420004 	addiu	v0,v0,4
    29d8:	26100018 	addiu	s0,s0,24
    29dc:	a60bffe8 	sh	t3,-24(s0)
    29e0:	84ec0002 	lh	t4,2(a3)
    29e4:	24e70018 	addiu	a3,a3,24
    29e8:	a60cffea 	sh	t4,-22(s0)
    29ec:	84edffec 	lh	t5,-20(a3)
    29f0:	a60dffec 	sh	t5,-20(s0)
    29f4:	84eeffee 	lh	t6,-18(a3)
    29f8:	a60effee 	sh	t6,-18(s0)
    29fc:	84effff0 	lh	t7,-16(a3)
    2a00:	a60ffff0 	sh	t7,-16(s0)
    2a04:	84f8fff2 	lh	t8,-14(a3)
    2a08:	a618fff2 	sh	t8,-14(s0)
    2a0c:	84f9fff4 	lh	t9,-12(a3)
    2a10:	a619fff4 	sh	t9,-12(s0)
    2a14:	84e8fff6 	lh	t0,-10(a3)
    2a18:	a608fff6 	sh	t0,-10(s0)
    2a1c:	84e9fff8 	lh	t1,-8(a3)
    2a20:	a609fff8 	sh	t1,-8(s0)
    2a24:	84eafffa 	lh	t2,-6(a3)
    2a28:	a60afffa 	sh	t2,-6(s0)
    2a2c:	84ebfffc 	lh	t3,-4(a3)
    2a30:	a60bfffc 	sh	t3,-4(s0)
    2a34:	84ecfffe 	lh	t4,-2(a3)
    2a38:	1444ffe5 	bne	v0,a0,29d0 <SkelAnime_InterpolateVec3s+0x400>
    2a3c:	a60cfffe 	sh	t4,-2(s0)
    2a40:	8fb00004 	lw	s0,4(sp)
    2a44:	03e00008 	jr	ra
    2a48:	27bd0008 	addiu	sp,sp,8

00002a4c <SkelAnime_AnimationCtxReset>:
    2a4c:	03e00008 	jr	ra
    2a50:	a4800000 	sh	zero,0(a0)

00002a54 <func_800A32F4>:
    2a54:	3c020000 	lui	v0,0x0
    2a58:	24420000 	addiu	v0,v0,0
    2a5c:	8c4e0000 	lw	t6,0(v0)
    2a60:	afa40000 	sw	a0,0(sp)
    2a64:	000e7840 	sll	t7,t6,0x1
    2a68:	03e00008 	jr	ra
    2a6c:	ac4f0000 	sw	t7,0(v0)

00002a70 <func_800A3310>:
    2a70:	3c020000 	lui	v0,0x0
    2a74:	24420000 	addiu	v0,v0,0
    2a78:	3c0f0000 	lui	t7,0x0
    2a7c:	8def0000 	lw	t7,0(t7)
    2a80:	8c4e0000 	lw	t6,0(v0)
    2a84:	afa40000 	sw	a0,0(sp)
    2a88:	01cfc025 	or	t8,t6,t7
    2a8c:	03e00008 	jr	ra
    2a90:	ac580000 	sw	t8,0(v0)

00002a94 <SkelAnime_NextEntry>:
    2a94:	84830000 	lh	v1,0(a0)
    2a98:	00a03025 	move	a2,a1
    2a9c:	28610032 	slti	at,v1,50
    2aa0:	14200003 	bnez	at,2ab0 <SkelAnime_NextEntry+0x1c>
    2aa4:	246e0001 	addiu	t6,v1,1
    2aa8:	03e00008 	jr	ra
    2aac:	00001025 	move	v0,zero
    2ab0:	00037980 	sll	t7,v1,0x6
    2ab4:	008f2821 	addu	a1,a0,t7
    2ab8:	a48e0000 	sh	t6,0(a0)
    2abc:	a0a60004 	sb	a2,4(a1)
    2ac0:	24a20004 	addiu	v0,a1,4
    2ac4:	03e00008 	jr	ra
    2ac8:	00000000 	nop

00002acc <SkelAnime_LoadLinkAnimetion>:
    2acc:	27bdffc0 	addiu	sp,sp,-64
    2ad0:	3c010001 	lui	at,0x1
    2ad4:	afbf002c 	sw	ra,44(sp)
    2ad8:	afa40040 	sw	a0,64(sp)
    2adc:	afa50044 	sw	a1,68(sp)
    2ae0:	34210b20 	ori	at,at,0xb20
    2ae4:	afa60048 	sw	a2,72(sp)
    2ae8:	afa7004c 	sw	a3,76(sp)
    2aec:	00812021 	addu	a0,a0,at
    2af0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2af4:	00002825 	move	a1,zero
    2af8:	10400033 	beqz	v0,2bc8 <SkelAnime_LoadLinkAnimetion+0xfc>
    2afc:	8fa70044 	lw	a3,68(sp)
    2b00:	00077100 	sll	t6,a3,0x4
    2b04:	000e7f02 	srl	t7,t6,0x1c
    2b08:	000fc080 	sll	t8,t7,0x2
    2b0c:	3c190000 	lui	t9,0x0
    2b10:	0338c821 	addu	t9,t9,t8
    2b14:	3c0100ff 	lui	at,0xff
    2b18:	8f390000 	lw	t9,0(t9)
    2b1c:	3421ffff 	ori	at,at,0xffff
    2b20:	00e14024 	and	t0,a3,at
    2b24:	3c018000 	lui	at,0x8000
    2b28:	03284821 	addu	t1,t9,t0
    2b2c:	01215021 	addu	t2,t1,at
    2b30:	24440024 	addiu	a0,v0,36
    2b34:	afaa0038 	sw	t2,56(sp)
    2b38:	afa40030 	sw	a0,48(sp)
    2b3c:	2445003c 	addiu	a1,v0,60
    2b40:	24060001 	li	a2,1
    2b44:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2b48:	afa2003c 	sw	v0,60(sp)
    2b4c:	8fa7004c 	lw	a3,76(sp)
    2b50:	8fb90048 	lw	t9,72(sp)
    2b54:	8fab0038 	lw	t3,56(sp)
    2b58:	00e00821 	move	at,a3
    2b5c:	00073880 	sll	a3,a3,0x2
    2b60:	00e13823 	subu	a3,a3,at
    2b64:	00073840 	sll	a3,a3,0x1
    2b68:	24e70002 	addiu	a3,a3,2
    2b6c:	00f90019 	multu	a3,t9
    2b70:	8d6c0004 	lw	t4,4(t3)
    2b74:	3c0d0000 	lui	t5,0x0
    2b78:	25ad0000 	addiu	t5,t5,0
    2b7c:	3c0f0000 	lui	t7,0x0
    2b80:	8fa3003c 	lw	v1,60(sp)
    2b84:	8fa90030 	lw	t1,48(sp)
    2b88:	25ef0000 	addiu	t7,t7,0
    2b8c:	3c0a0000 	lui	t2,0x0
    2b90:	018d7021 	addu	t6,t4,t5
    2b94:	01cfc023 	subu	t8,t6,t7
    2b98:	254a0468 	addiu	t2,t2,1128
    2b9c:	240b07d4 	li	t3,2004
    2ba0:	00004012 	mflo	t0
    2ba4:	03083021 	addu	a2,t8,t0
    2ba8:	afab0020 	sw	t3,32(sp)
    2bac:	afaa001c 	sw	t2,28(sp)
    2bb0:	afa00018 	sw	zero,24(sp)
    2bb4:	afa00010 	sw	zero,16(sp)
    2bb8:	8fa50050 	lw	a1,80(sp)
    2bbc:	24640004 	addiu	a0,v1,4
    2bc0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2bc4:	afa90014 	sw	t1,20(sp)
    2bc8:	8fbf002c 	lw	ra,44(sp)
    2bcc:	27bd0040 	addiu	sp,sp,64
    2bd0:	03e00008 	jr	ra
    2bd4:	00000000 	nop

00002bd8 <SkelAnime_LoadAnimationType1>:
    2bd8:	27bdffe8 	addiu	sp,sp,-24
    2bdc:	3c010001 	lui	at,0x1
    2be0:	afbf0014 	sw	ra,20(sp)
    2be4:	afa40018 	sw	a0,24(sp)
    2be8:	afa5001c 	sw	a1,28(sp)
    2bec:	34210b20 	ori	at,at,0xb20
    2bf0:	afa60020 	sw	a2,32(sp)
    2bf4:	afa70024 	sw	a3,36(sp)
    2bf8:	00812021 	addu	a0,a0,at
    2bfc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2c00:	24050001 	li	a1,1
    2c04:	10400009 	beqz	v0,2c2c <SkelAnime_LoadAnimationType1+0x54>
    2c08:	3c0e0000 	lui	t6,0x0
    2c0c:	8dce0000 	lw	t6,0(t6)
    2c10:	a04e0004 	sb	t6,4(v0)
    2c14:	8faf001c 	lw	t7,28(sp)
    2c18:	a04f0005 	sb	t7,5(v0)
    2c1c:	8fb80020 	lw	t8,32(sp)
    2c20:	ac580008 	sw	t8,8(v0)
    2c24:	8fb90024 	lw	t9,36(sp)
    2c28:	ac59000c 	sw	t9,12(v0)
    2c2c:	8fbf0014 	lw	ra,20(sp)
    2c30:	27bd0018 	addiu	sp,sp,24
    2c34:	03e00008 	jr	ra
    2c38:	00000000 	nop

00002c3c <SkelAnime_LoadAnimationType2>:
    2c3c:	27bdffe8 	addiu	sp,sp,-24
    2c40:	3c010001 	lui	at,0x1
    2c44:	afbf0014 	sw	ra,20(sp)
    2c48:	afa40018 	sw	a0,24(sp)
    2c4c:	afa5001c 	sw	a1,28(sp)
    2c50:	34210b20 	ori	at,at,0xb20
    2c54:	afa60020 	sw	a2,32(sp)
    2c58:	afa70024 	sw	a3,36(sp)
    2c5c:	00812021 	addu	a0,a0,at
    2c60:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2c64:	24050002 	li	a1,2
    2c68:	1040000b 	beqz	v0,2c98 <SkelAnime_LoadAnimationType2+0x5c>
    2c6c:	3c0e0000 	lui	t6,0x0
    2c70:	8dce0000 	lw	t6,0(t6)
    2c74:	a04e0004 	sb	t6,4(v0)
    2c78:	8faf001c 	lw	t7,28(sp)
    2c7c:	a04f0005 	sb	t7,5(v0)
    2c80:	8fb80020 	lw	t8,32(sp)
    2c84:	ac580008 	sw	t8,8(v0)
    2c88:	8fb90024 	lw	t9,36(sp)
    2c8c:	ac59000c 	sw	t9,12(v0)
    2c90:	c7a40028 	lwc1	$f4,40(sp)
    2c94:	e4440010 	swc1	$f4,16(v0)
    2c98:	8fbf0014 	lw	ra,20(sp)
    2c9c:	27bd0018 	addiu	sp,sp,24
    2ca0:	03e00008 	jr	ra
    2ca4:	00000000 	nop

00002ca8 <SkelAnime_LoadAnimationType3>:
    2ca8:	27bdffe8 	addiu	sp,sp,-24
    2cac:	3c010001 	lui	at,0x1
    2cb0:	afbf0014 	sw	ra,20(sp)
    2cb4:	afa40018 	sw	a0,24(sp)
    2cb8:	afa5001c 	sw	a1,28(sp)
    2cbc:	34210b20 	ori	at,at,0xb20
    2cc0:	afa60020 	sw	a2,32(sp)
    2cc4:	afa70024 	sw	a3,36(sp)
    2cc8:	00812021 	addu	a0,a0,at
    2ccc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2cd0:	24050003 	li	a1,3
    2cd4:	1040000b 	beqz	v0,2d04 <SkelAnime_LoadAnimationType3+0x5c>
    2cd8:	3c0e0000 	lui	t6,0x0
    2cdc:	8dce0000 	lw	t6,0(t6)
    2ce0:	a04e0004 	sb	t6,4(v0)
    2ce4:	8faf001c 	lw	t7,28(sp)
    2ce8:	a04f0005 	sb	t7,5(v0)
    2cec:	8fb80020 	lw	t8,32(sp)
    2cf0:	ac580008 	sw	t8,8(v0)
    2cf4:	8fb90024 	lw	t9,36(sp)
    2cf8:	ac59000c 	sw	t9,12(v0)
    2cfc:	8fa80028 	lw	t0,40(sp)
    2d00:	ac480010 	sw	t0,16(v0)
    2d04:	8fbf0014 	lw	ra,20(sp)
    2d08:	27bd0018 	addiu	sp,sp,24
    2d0c:	03e00008 	jr	ra
    2d10:	00000000 	nop

00002d14 <SkelAnime_LoadAnimationType4>:
    2d14:	27bdffe8 	addiu	sp,sp,-24
    2d18:	3c010001 	lui	at,0x1
    2d1c:	afbf0014 	sw	ra,20(sp)
    2d20:	afa40018 	sw	a0,24(sp)
    2d24:	afa5001c 	sw	a1,28(sp)
    2d28:	34210b20 	ori	at,at,0xb20
    2d2c:	afa60020 	sw	a2,32(sp)
    2d30:	afa70024 	sw	a3,36(sp)
    2d34:	00812021 	addu	a0,a0,at
    2d38:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2d3c:	24050004 	li	a1,4
    2d40:	1040000b 	beqz	v0,2d70 <SkelAnime_LoadAnimationType4+0x5c>
    2d44:	3c0e0000 	lui	t6,0x0
    2d48:	8dce0000 	lw	t6,0(t6)
    2d4c:	a04e0004 	sb	t6,4(v0)
    2d50:	8faf001c 	lw	t7,28(sp)
    2d54:	a04f0005 	sb	t7,5(v0)
    2d58:	8fb80020 	lw	t8,32(sp)
    2d5c:	ac580008 	sw	t8,8(v0)
    2d60:	8fb90024 	lw	t9,36(sp)
    2d64:	ac59000c 	sw	t9,12(v0)
    2d68:	8fa80028 	lw	t0,40(sp)
    2d6c:	ac480010 	sw	t0,16(v0)
    2d70:	8fbf0014 	lw	ra,20(sp)
    2d74:	27bd0018 	addiu	sp,sp,24
    2d78:	03e00008 	jr	ra
    2d7c:	00000000 	nop

00002d80 <SkelAnime_LoadAnimationType5>:
    2d80:	27bdffe8 	addiu	sp,sp,-24
    2d84:	3c010001 	lui	at,0x1
    2d88:	afbf0014 	sw	ra,20(sp)
    2d8c:	afa40018 	sw	a0,24(sp)
    2d90:	afa5001c 	sw	a1,28(sp)
    2d94:	34210b20 	ori	at,at,0xb20
    2d98:	afa60020 	sw	a2,32(sp)
    2d9c:	afa70024 	sw	a3,36(sp)
    2da0:	00812021 	addu	a0,a0,at
    2da4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2da8:	24050005 	li	a1,5
    2dac:	10400006 	beqz	v0,2dc8 <SkelAnime_LoadAnimationType5+0x48>
    2db0:	8fae001c 	lw	t6,28(sp)
    2db4:	ac4e0004 	sw	t6,4(v0)
    2db8:	8faf0020 	lw	t7,32(sp)
    2dbc:	ac4f0008 	sw	t7,8(v0)
    2dc0:	c7a40024 	lwc1	$f4,36(sp)
    2dc4:	e444000c 	swc1	$f4,12(v0)
    2dc8:	8fbf0014 	lw	ra,20(sp)
    2dcc:	27bd0018 	addiu	sp,sp,24
    2dd0:	03e00008 	jr	ra
    2dd4:	00000000 	nop

00002dd8 <SkelAnime_LinkAnimetionLoaded>:
    2dd8:	27bdffe8 	addiu	sp,sp,-24
    2ddc:	afa40018 	sw	a0,24(sp)
    2de0:	afbf0014 	sw	ra,20(sp)
    2de4:	24a40020 	addiu	a0,a1,32
    2de8:	00002825 	move	a1,zero
    2dec:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2df0:	24060001 	li	a2,1
    2df4:	8fbf0014 	lw	ra,20(sp)
    2df8:	27bd0018 	addiu	sp,sp,24
    2dfc:	03e00008 	jr	ra
    2e00:	00000000 	nop

00002e04 <SkelAnime_AnimationType1Loaded>:
    2e04:	afa40000 	sw	a0,0(sp)
    2e08:	3c0f0000 	lui	t7,0x0
    2e0c:	8def0000 	lw	t7,0(t7)
    2e10:	90ae0000 	lbu	t6,0(a1)
    2e14:	00a01025 	move	v0,a1
    2e18:	01cfc024 	and	t8,t6,t7
    2e1c:	17000013 	bnez	t8,2e6c <SkelAnime_AnimationType1Loaded+0x68>
    2e20:	00000000 	nop
    2e24:	90b90001 	lbu	t9,1(a1)
    2e28:	8ca30004 	lw	v1,4(a1)
    2e2c:	8ca40008 	lw	a0,8(a1)
    2e30:	1b20000e 	blez	t9,2e6c <SkelAnime_AnimationType1Loaded+0x68>
    2e34:	00003025 	move	a2,zero
    2e38:	88890000 	lwl	t1,0(a0)
    2e3c:	98890003 	lwr	t1,3(a0)
    2e40:	24c60001 	addiu	a2,a2,1
    2e44:	24630006 	addiu	v1,v1,6
    2e48:	a869fffa 	swl	t1,-6(v1)
    2e4c:	b869fffd 	swr	t1,-3(v1)
    2e50:	94890004 	lhu	t1,4(a0)
    2e54:	24840006 	addiu	a0,a0,6
    2e58:	a469fffe 	sh	t1,-2(v1)
    2e5c:	904a0001 	lbu	t2,1(v0)
    2e60:	00ca082a 	slt	at,a2,t2
    2e64:	5420fff5 	bnezl	at,2e3c <SkelAnime_AnimationType1Loaded+0x38>
    2e68:	88890000 	lwl	t1,0(a0)
    2e6c:	03e00008 	jr	ra
    2e70:	00000000 	nop

00002e74 <SkelAnime_AnimationType2Loaded>:
    2e74:	27bdffd8 	addiu	sp,sp,-40
    2e78:	afbf0024 	sw	ra,36(sp)
    2e7c:	afb00020 	sw	s0,32(sp)
    2e80:	afa40028 	sw	a0,40(sp)
    2e84:	3c0f0000 	lui	t7,0x0
    2e88:	8def0000 	lw	t7,0(t7)
    2e8c:	90ae0000 	lbu	t6,0(a1)
    2e90:	00a08025 	move	s0,a1
    2e94:	01cfc024 	and	t8,t6,t7
    2e98:	57000009 	bnezl	t8,2ec0 <SkelAnime_AnimationType2Loaded+0x4c>
    2e9c:	8fbf0024 	lw	ra,36(sp)
    2ea0:	90a40001 	lbu	a0,1(a1)
    2ea4:	8ca50004 	lw	a1,4(a1)
    2ea8:	c604000c 	lwc1	$f4,12(s0)
    2eac:	8e070008 	lw	a3,8(s0)
    2eb0:	00a03025 	move	a2,a1
    2eb4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2eb8:	e7a40010 	swc1	$f4,16(sp)
    2ebc:	8fbf0024 	lw	ra,36(sp)
    2ec0:	8fb00020 	lw	s0,32(sp)
    2ec4:	27bd0028 	addiu	sp,sp,40
    2ec8:	03e00008 	jr	ra
    2ecc:	00000000 	nop

00002ed0 <SkelAnime_AnimationType3Loaded>:
    2ed0:	afa40000 	sw	a0,0(sp)
    2ed4:	3c0f0000 	lui	t7,0x0
    2ed8:	8def0000 	lw	t7,0(t7)
    2edc:	90ae0000 	lbu	t6,0(a1)
    2ee0:	00a01025 	move	v0,a1
    2ee4:	00003825 	move	a3,zero
    2ee8:	01cfc024 	and	t8,t6,t7
    2eec:	17000016 	bnez	t8,2f48 <SkelAnime_AnimationType3Loaded+0x78>
    2ef0:	00000000 	nop
    2ef4:	90b90001 	lbu	t9,1(a1)
    2ef8:	8ca30004 	lw	v1,4(a1)
    2efc:	8ca40008 	lw	a0,8(a1)
    2f00:	1b200011 	blez	t9,2f48 <SkelAnime_AnimationType3Loaded+0x78>
    2f04:	8ca6000c 	lw	a2,12(a1)
    2f08:	90c50000 	lbu	a1,0(a2)
    2f0c:	24c60001 	addiu	a2,a2,1
    2f10:	50a00008 	beqzl	a1,2f34 <SkelAnime_AnimationType3Loaded+0x64>
    2f14:	904a0001 	lbu	t2,1(v0)
    2f18:	88890000 	lwl	t1,0(a0)
    2f1c:	98890003 	lwr	t1,3(a0)
    2f20:	a8690000 	swl	t1,0(v1)
    2f24:	b8690003 	swr	t1,3(v1)
    2f28:	94890004 	lhu	t1,4(a0)
    2f2c:	a4690004 	sh	t1,4(v1)
    2f30:	904a0001 	lbu	t2,1(v0)
    2f34:	24e70001 	addiu	a3,a3,1
    2f38:	24630006 	addiu	v1,v1,6
    2f3c:	00ea082a 	slt	at,a3,t2
    2f40:	1420fff1 	bnez	at,2f08 <SkelAnime_AnimationType3Loaded+0x38>
    2f44:	24840006 	addiu	a0,a0,6
    2f48:	03e00008 	jr	ra
    2f4c:	00000000 	nop

00002f50 <SkelAnime_AnimationType4Loaded>:
    2f50:	afa40000 	sw	a0,0(sp)
    2f54:	3c0f0000 	lui	t7,0x0
    2f58:	8def0000 	lw	t7,0(t7)
    2f5c:	90ae0000 	lbu	t6,0(a1)
    2f60:	00a01025 	move	v0,a1
    2f64:	00003825 	move	a3,zero
    2f68:	01cfc024 	and	t8,t6,t7
    2f6c:	17000017 	bnez	t8,2fcc <SkelAnime_AnimationType4Loaded+0x7c>
    2f70:	00000000 	nop
    2f74:	90b90001 	lbu	t9,1(a1)
    2f78:	8ca30004 	lw	v1,4(a1)
    2f7c:	8ca40008 	lw	a0,8(a1)
    2f80:	1b200012 	blez	t9,2fcc <SkelAnime_AnimationType4Loaded+0x7c>
    2f84:	8ca6000c 	lw	a2,12(a1)
    2f88:	90c50000 	lbu	a1,0(a2)
    2f8c:	24c60001 	addiu	a2,a2,1
    2f90:	2ca50001 	sltiu	a1,a1,1
    2f94:	50a00008 	beqzl	a1,2fb8 <SkelAnime_AnimationType4Loaded+0x68>
    2f98:	904a0001 	lbu	t2,1(v0)
    2f9c:	88890000 	lwl	t1,0(a0)
    2fa0:	98890003 	lwr	t1,3(a0)
    2fa4:	a8690000 	swl	t1,0(v1)
    2fa8:	b8690003 	swr	t1,3(v1)
    2fac:	94890004 	lhu	t1,4(a0)
    2fb0:	a4690004 	sh	t1,4(v1)
    2fb4:	904a0001 	lbu	t2,1(v0)
    2fb8:	24e70001 	addiu	a3,a3,1
    2fbc:	24630006 	addiu	v1,v1,6
    2fc0:	00ea082a 	slt	at,a3,t2
    2fc4:	1420fff0 	bnez	at,2f88 <SkelAnime_AnimationType4Loaded+0x38>
    2fc8:	24840006 	addiu	a0,a0,6
    2fcc:	03e00008 	jr	ra
    2fd0:	00000000 	nop

00002fd4 <SkelAnime_AnimationType5Loaded>:
    2fd4:	27bdffd0 	addiu	sp,sp,-48
    2fd8:	afbf0014 	sw	ra,20(sp)
    2fdc:	afa40030 	sw	a0,48(sp)
    2fe0:	8ca20000 	lw	v0,0(a1)
    2fe4:	8ca40004 	lw	a0,4(a1)
    2fe8:	00a03825 	move	a3,a1
    2fec:	844600b6 	lh	a2,182(v0)
    2ff0:	afa70034 	sw	a3,52(sp)
    2ff4:	27a5001c 	addiu	a1,sp,28
    2ff8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    2ffc:	afa20028 	sw	v0,40(sp)
    3000:	8fa20028 	lw	v0,40(sp)
    3004:	c7a4001c 	lwc1	$f4,28(sp)
    3008:	8fa70034 	lw	a3,52(sp)
    300c:	c4460050 	lwc1	$f6,80(v0)
    3010:	c44a0024 	lwc1	$f10,36(v0)
    3014:	46062202 	mul.s	$f8,$f4,$f6
    3018:	c4440054 	lwc1	$f4,84(v0)
    301c:	46085400 	add.s	$f16,$f10,$f8
    3020:	e4500024 	swc1	$f16,36(v0)
    3024:	c7b20020 	lwc1	$f18,32(sp)
    3028:	c4ea0008 	lwc1	$f10,8(a3)
    302c:	c4500028 	lwc1	$f16,40(v0)
    3030:	46049182 	mul.s	$f6,$f18,$f4
    3034:	00000000 	nop
    3038:	460a3202 	mul.s	$f8,$f6,$f10
    303c:	c4460058 	lwc1	$f6,88(v0)
    3040:	46088480 	add.s	$f18,$f16,$f8
    3044:	c450002c 	lwc1	$f16,44(v0)
    3048:	e4520028 	swc1	$f18,40(v0)
    304c:	c7a40024 	lwc1	$f4,36(sp)
    3050:	46062282 	mul.s	$f10,$f4,$f6
    3054:	460a8200 	add.s	$f8,$f16,$f10
    3058:	e448002c 	swc1	$f8,44(v0)
    305c:	8fbf0014 	lw	ra,20(sp)
    3060:	27bd0030 	addiu	sp,sp,48
    3064:	03e00008 	jr	ra
    3068:	00000000 	nop

0000306c <func_800A390C>:
    306c:	27bdffd8 	addiu	sp,sp,-40
    3070:	afbf0024 	sw	ra,36(sp)
    3074:	afb30020 	sw	s3,32(sp)
    3078:	afb2001c 	sw	s2,28(sp)
    307c:	afb10018 	sw	s1,24(sp)
    3080:	afb00014 	sw	s0,20(sp)
    3084:	84ae0000 	lh	t6,0(a1)
    3088:	00a08825 	move	s1,a1
    308c:	00809025 	move	s2,a0
    3090:	11c00012 	beqz	t6,30dc <func_800A390C+0x70>
    3094:	24b00004 	addiu	s0,a1,4
    3098:	3c130000 	lui	s3,0x0
    309c:	26730004 	addiu	s3,s3,4
    30a0:	920f0000 	lbu	t7,0(s0)
    30a4:	02402025 	move	a0,s2
    30a8:	26050004 	addiu	a1,s0,4
    30ac:	000fc080 	sll	t8,t7,0x2
    30b0:	0278c821 	addu	t9,s3,t8
    30b4:	8f390000 	lw	t9,0(t9)
    30b8:	0320f809 	jalr	t9
    30bc:	00000000 	nop
    30c0:	86280000 	lh	t0,0(s1)
    30c4:	26100040 	addiu	s0,s0,64
    30c8:	2509ffff 	addiu	t1,t0,-1
    30cc:	a6290000 	sh	t1,0(s1)
    30d0:	862a0000 	lh	t2,0(s1)
    30d4:	5540fff3 	bnezl	t2,30a4 <func_800A390C+0x38>
    30d8:	920f0000 	lbu	t7,0(s0)
    30dc:	8fbf0024 	lw	ra,36(sp)
    30e0:	240b0001 	li	t3,1
    30e4:	3c010000 	lui	at,0x0
    30e8:	ac2b0000 	sw	t3,0(at)
    30ec:	3c010000 	lui	at,0x0
    30f0:	8fb00014 	lw	s0,20(sp)
    30f4:	8fb10018 	lw	s1,24(sp)
    30f8:	8fb2001c 	lw	s2,28(sp)
    30fc:	8fb30020 	lw	s3,32(sp)
    3100:	ac200000 	sw	zero,0(at)
    3104:	03e00008 	jr	ra
    3108:	27bd0028 	addiu	sp,sp,40

0000310c <SkelAnime_InitLinkAnimetion>:
    310c:	00067100 	sll	t6,a2,0x4
    3110:	3c090000 	lui	t1,0x0
    3114:	000e7f02 	srl	t7,t6,0x1c
    3118:	25290000 	addiu	t1,t1,0
    311c:	000fc080 	sll	t8,t7,0x2
    3120:	27bdffc0 	addiu	sp,sp,-64
    3124:	0138c821 	addu	t9,t1,t8
    3128:	8f2c0000 	lw	t4,0(t9)
    312c:	3c0a00ff 	lui	t2,0xff
    3130:	354affff 	ori	t2,t2,0xffff
    3134:	00ca6824 	and	t5,a2,t2
    3138:	8faf0050 	lw	t7,80(sp)
    313c:	3c0b8000 	lui	t3,0x8000
    3140:	018d7021 	addu	t6,t4,t5
    3144:	afbf002c 	sw	ra,44(sp)
    3148:	afb00028 	sw	s0,40(sp)
    314c:	afa40040 	sw	a0,64(sp)
    3150:	afa7004c 	sw	a3,76(sp)
    3154:	01cb4021 	addu	t0,t6,t3
    3158:	91020004 	lbu	v0,4(t0)
    315c:	a0af0034 	sb	t7,52(a1)
    3160:	8fb80050 	lw	t8,80(sp)
    3164:	8fac0050 	lw	t4,80(sp)
    3168:	00a08025 	move	s0,a1
    316c:	33190002 	andi	t9,t8,0x2
    3170:	13200003 	beqz	t9,3180 <SkelAnime_InitLinkAnimetion+0x74>
    3174:	318d0001 	andi	t5,t4,0x1
    3178:	10000002 	b	3184 <SkelAnime_InitLinkAnimetion+0x78>
    317c:	00401825 	move	v1,v0
    3180:	24030001 	li	v1,1
    3184:	11a00002 	beqz	t5,3190 <SkelAnime_InitLinkAnimetion+0x84>
    3188:	8fae0050 	lw	t6,80(sp)
    318c:	00621821 	addu	v1,v1,v0
    3190:	31cf0004 	andi	t7,t6,0x4
    3194:	11e00002 	beqz	t7,31a0 <SkelAnime_InitLinkAnimetion+0x94>
    3198:	2406093c 	li	a2,2364
    319c:	00621821 	addu	v1,v1,v0
    31a0:	a2030000 	sb	v1,0(s0)
    31a4:	91180008 	lbu	t8,8(t0)
    31a8:	00032880 	sll	a1,v1,0x2
    31ac:	00a32823 	subu	a1,a1,v1
    31b0:	a2180002 	sb	t8,2(s0)
    31b4:	8d020000 	lw	v0,0(t0)
    31b8:	00052840 	sll	a1,a1,0x1
    31bc:	00a02025 	move	a0,a1
    31c0:	0002c900 	sll	t9,v0,0x4
    31c4:	00196702 	srl	t4,t9,0x1c
    31c8:	000c6880 	sll	t5,t4,0x2
    31cc:	012d7021 	addu	t6,t1,t5
    31d0:	8dcf0000 	lw	t7,0(t6)
    31d4:	004ac024 	and	t8,v0,t2
    31d8:	01f8c821 	addu	t9,t7,t8
    31dc:	032b6021 	addu	t4,t9,t3
    31e0:	ae0c0004 	sw	t4,4(s0)
    31e4:	8fad0050 	lw	t5,80(sp)
    31e8:	8faf0054 	lw	t7,84(sp)
    31ec:	8fb8005c 	lw	t8,92(sp)
    31f0:	31ae0008 	andi	t6,t5,0x8
    31f4:	11c00002 	beqz	t6,3200 <SkelAnime_InitLinkAnimetion+0xf4>
    31f8:	00000000 	nop
    31fc:	24a40002 	addiu	a0,a1,2
    3200:	15e0000c 	bnez	t7,3234 <SkelAnime_InitLinkAnimetion+0x128>
    3204:	3c050000 	lui	a1,0x0
    3208:	24a5047c 	addiu	a1,a1,1148
    320c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3210:	afa40030 	sw	a0,48(sp)
    3214:	8fa40030 	lw	a0,48(sp)
    3218:	3c050000 	lui	a1,0x0
    321c:	ae020020 	sw	v0,32(s0)
    3220:	24a50490 	addiu	a1,a1,1168
    3224:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3228:	2406093d 	li	a2,2365
    322c:	10000011 	b	3274 <SkelAnime_InitLinkAnimetion+0x168>
    3230:	ae020024 	sw	v0,36(s0)
    3234:	13030006 	beq	t8,v1,3250 <SkelAnime_InitLinkAnimetion+0x144>
    3238:	3c040000 	lui	a0,0x0
    323c:	3c050000 	lui	a1,0x0
    3240:	24a504c0 	addiu	a1,a1,1216
    3244:	248404a4 	addiu	a0,a0,1188
    3248:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    324c:	24060941 	li	a2,2369
    3250:	8fb90054 	lw	t9,84(sp)
    3254:	2402fff0 	li	v0,-16
    3258:	272c000f 	addiu	t4,t9,15
    325c:	01826824 	and	t5,t4,v0
    3260:	ae0d0020 	sw	t5,32(s0)
    3264:	8fae0058 	lw	t6,88(sp)
    3268:	25cf000f 	addiu	t7,t6,15
    326c:	01e2c024 	and	t8,t7,v0
    3270:	ae180024 	sw	t8,36(s0)
    3274:	8e190020 	lw	t9,32(s0)
    3278:	3c040000 	lui	a0,0x0
    327c:	13200004 	beqz	t9,3290 <SkelAnime_InitLinkAnimetion+0x184>
    3280:	00000000 	nop
    3284:	8e0c0024 	lw	t4,36(s0)
    3288:	5580000a 	bnezl	t4,32b4 <SkelAnime_InitLinkAnimetion+0x1a8>
    328c:	44800000 	mtc1	zero,$f0
    3290:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3294:	248404d4 	addiu	a0,a0,1236
    3298:	3c040000 	lui	a0,0x0
    329c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    32a0:	248404dc 	addiu	a0,a0,1244
    32a4:	3c040000 	lui	a0,0x0
    32a8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    32ac:	24840510 	addiu	a0,a0,1296
    32b0:	44800000 	mtc1	zero,$f0
    32b4:	8fa40040 	lw	a0,64(sp)
    32b8:	02002825 	move	a1,s0
    32bc:	8fa6004c 	lw	a2,76(sp)
    32c0:	3c073f80 	lui	a3,0x3f80
    32c4:	afa00018 	sw	zero,24(sp)
    32c8:	e7a00010 	swc1	$f0,16(sp)
    32cc:	e7a00014 	swc1	$f0,20(sp)
    32d0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    32d4:	e7a0001c 	swc1	$f0,28(sp)
    32d8:	8fbf002c 	lw	ra,44(sp)
    32dc:	8fb00028 	lw	s0,40(sp)
    32e0:	27bd0040 	addiu	sp,sp,64
    32e4:	03e00008 	jr	ra
    32e8:	00000000 	nop

000032ec <func_800A3B8C>:
    32ec:	908e0001 	lbu	t6,1(a0)
    32f0:	3c180000 	lui	t8,0x0
    32f4:	44802000 	mtc1	zero,$f4
    32f8:	29c10002 	slti	at,t6,2
    32fc:	10200005 	beqz	at,3314 <func_800A3B8C+0x28>
    3300:	27180000 	addiu	t8,t8,0
    3304:	3c0f0000 	lui	t7,0x0
    3308:	25ef0000 	addiu	t7,t7,0
    330c:	10000002 	b	3318 <func_800A3B8C+0x2c>
    3310:	ac8f0030 	sw	t7,48(a0)
    3314:	ac980030 	sw	t8,48(a0)
    3318:	03e00008 	jr	ra
    331c:	e4840028 	swc1	$f4,40(a0)

00003320 <func_800A3BC0>:
    3320:	27bdffe8 	addiu	sp,sp,-24
    3324:	afbf0014 	sw	ra,20(sp)
    3328:	8cb90030 	lw	t9,48(a1)
    332c:	0320f809 	jalr	t9
    3330:	00000000 	nop
    3334:	8fbf0014 	lw	ra,20(sp)
    3338:	27bd0018 	addiu	sp,sp,24
    333c:	03e00008 	jr	ra
    3340:	00000000 	nop

00003344 <func_800A3BE4>:
    3344:	27bdffd0 	addiu	sp,sp,-48
    3348:	3c0e0000 	lui	t6,0x0
    334c:	8dce0000 	lw	t6,0(t6)
    3350:	afbf0024 	sw	ra,36(sp)
    3354:	afb00020 	sw	s0,32(sp)
    3358:	afa40030 	sw	a0,48(sp)
    335c:	85cf0110 	lh	t7,272(t6)
    3360:	3c013f00 	lui	at,0x3f00
    3364:	44814000 	mtc1	at,$f8
    3368:	448f2000 	mtc1	t7,$f4
    336c:	c4aa002c 	lwc1	$f10,44(a1)
    3370:	c4a00028 	lwc1	$f0,40(a1)
    3374:	468021a0 	cvt.s.w	$f6,$f4
    3378:	44802000 	mtc1	zero,$f4
    337c:	46000306 	mov.s	$f12,$f0
    3380:	00a08025 	move	s0,a1
    3384:	00a02025 	move	a0,a1
    3388:	46083082 	mul.s	$f2,$f6,$f8
    338c:	00000000 	nop
    3390:	46025402 	mul.s	$f16,$f10,$f2
    3394:	46100481 	sub.s	$f18,$f0,$f16
    3398:	e4b20028 	swc1	$f18,40(a1)
    339c:	c4a00028 	lwc1	$f0,40(a1)
    33a0:	4604003e 	c.le.s	$f0,$f4
    33a4:	00000000 	nop
    33a8:	45000005 	bc1f	33c0 <func_800A3BE4+0x7c>
    33ac:	00000000 	nop
    33b0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    33b4:	e7ac002c 	swc1	$f12,44(sp)
    33b8:	c7ac002c 	lwc1	$f12,44(sp)
    33bc:	c6000028 	lwc1	$f0,40(s0)
    33c0:	460c0203 	div.s	$f8,$f0,$f12
    33c4:	3c013f80 	lui	at,0x3f80
    33c8:	44813000 	mtc1	at,$f6
    33cc:	92050000 	lbu	a1,0(s0)
    33d0:	8e060020 	lw	a2,32(s0)
    33d4:	8e070024 	lw	a3,36(s0)
    33d8:	8fa40030 	lw	a0,48(sp)
    33dc:	46083281 	sub.s	$f10,$f6,$f8
    33e0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    33e4:	e7aa0010 	swc1	$f10,16(sp)
    33e8:	8fbf0024 	lw	ra,36(sp)
    33ec:	8fb00020 	lw	s0,32(sp)
    33f0:	27bd0030 	addiu	sp,sp,48
    33f4:	03e00008 	jr	ra
    33f8:	00001025 	move	v0,zero

000033fc <func_800A3C9C>:
    33fc:	27bdffd8 	addiu	sp,sp,-40
    3400:	afb00020 	sw	s0,32(sp)
    3404:	00a08025 	move	s0,a1
    3408:	afbf0024 	sw	ra,36(sp)
    340c:	afa40028 	sw	a0,40(sp)
    3410:	c6040018 	lwc1	$f4,24(s0)
    3414:	8e0f0020 	lw	t7,32(s0)
    3418:	92070000 	lbu	a3,0(s0)
    341c:	4600218d 	trunc.w.s	$f6,$f4
    3420:	8ca50008 	lw	a1,8(a1)
    3424:	afaf0010 	sw	t7,16(sp)
    3428:	44063000 	mfc1	a2,$f6
    342c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3430:	00000000 	nop
    3434:	c6000028 	lwc1	$f0,40(s0)
    3438:	44804000 	mtc1	zero,$f8
    343c:	3c180000 	lui	t8,0x0
    3440:	46004032 	c.eq.s	$f8,$f0
    3444:	00000000 	nop
    3448:	4503001d 	bc1tl	34c0 <func_800A3C9C+0xc4>
    344c:	8fbf0024 	lw	ra,36(sp)
    3450:	8f180000 	lw	t8,0(t8)
    3454:	3c013f00 	lui	at,0x3f00
    3458:	44819000 	mtc1	at,$f18
    345c:	87190110 	lh	t9,272(t8)
    3460:	c604002c 	lwc1	$f4,44(s0)
    3464:	44806000 	mtc1	zero,$f12
    3468:	44995000 	mtc1	t9,$f10
    346c:	00000000 	nop
    3470:	46805420 	cvt.s.w	$f16,$f10
    3474:	46128082 	mul.s	$f2,$f16,$f18
    3478:	00000000 	nop
    347c:	46022182 	mul.s	$f6,$f4,$f2
    3480:	46060201 	sub.s	$f8,$f0,$f6
    3484:	e6080028 	swc1	$f8,40(s0)
    3488:	c6000028 	lwc1	$f0,40(s0)
    348c:	8fa40028 	lw	a0,40(sp)
    3490:	460c003e 	c.le.s	$f0,$f12
    3494:	00000000 	nop
    3498:	45000003 	bc1f	34a8 <func_800A3C9C+0xac>
    349c:	00000000 	nop
    34a0:	10000006 	b	34bc <func_800A3C9C+0xc0>
    34a4:	e60c0028 	swc1	$f12,40(s0)
    34a8:	92050000 	lbu	a1,0(s0)
    34ac:	8e060020 	lw	a2,32(s0)
    34b0:	8e070024 	lw	a3,36(s0)
    34b4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    34b8:	e7a00010 	swc1	$f0,16(sp)
    34bc:	8fbf0024 	lw	ra,36(sp)
    34c0:	8fb00020 	lw	s0,32(sp)
    34c4:	27bd0028 	addiu	sp,sp,40
    34c8:	03e00008 	jr	ra
    34cc:	00000000 	nop

000034d0 <func_800A3D70>:
    34d0:	3c0e0000 	lui	t6,0x0
    34d4:	8dce0000 	lw	t6,0(t6)
    34d8:	27bdffe8 	addiu	sp,sp,-24
    34dc:	afbf0014 	sw	ra,20(sp)
    34e0:	85cf0110 	lh	t7,272(t6)
    34e4:	3c013f00 	lui	at,0x3f00
    34e8:	44814000 	mtc1	at,$f8
    34ec:	448f2000 	mtc1	t7,$f4
    34f0:	c4b0001c 	lwc1	$f16,28(a1)
    34f4:	c4aa0018 	lwc1	$f10,24(a1)
    34f8:	468021a0 	cvt.s.w	$f6,$f4
    34fc:	46083082 	mul.s	$f2,$f6,$f8
    3500:	44803000 	mtc1	zero,$f6
    3504:	46028482 	mul.s	$f18,$f16,$f2
    3508:	46125100 	add.s	$f4,$f10,$f18
    350c:	e4a40018 	swc1	$f4,24(a1)
    3510:	c4a00018 	lwc1	$f0,24(a1)
    3514:	4606003c 	c.lt.s	$f0,$f6
    3518:	00000000 	nop
    351c:	45020006 	bc1fl	3538 <func_800A3D70+0x68>
    3520:	c4a20014 	lwc1	$f2,20(a1)
    3524:	c4a80014 	lwc1	$f8,20(a1)
    3528:	46080400 	add.s	$f16,$f0,$f8
    352c:	10000008 	b	3550 <func_800A3D70+0x80>
    3530:	e4b00018 	swc1	$f16,24(a1)
    3534:	c4a20014 	lwc1	$f2,20(a1)
    3538:	4600103e 	c.le.s	$f2,$f0
    353c:	00000000 	nop
    3540:	45000003 	bc1f	3550 <func_800A3D70+0x80>
    3544:	00000000 	nop
    3548:	46020281 	sub.s	$f10,$f0,$f2
    354c:	e4aa0018 	swc1	$f10,24(a1)
    3550:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3554:	00000000 	nop
    3558:	8fbf0014 	lw	ra,20(sp)
    355c:	27bd0018 	addiu	sp,sp,24
    3560:	00001025 	move	v0,zero
    3564:	03e00008 	jr	ra
    3568:	00000000 	nop

0000356c <func_800A3E0C>:
    356c:	3c0e0000 	lui	t6,0x0
    3570:	8dce0000 	lw	t6,0(t6)
    3574:	27bdffe8 	addiu	sp,sp,-24
    3578:	afbf0014 	sw	ra,20(sp)
    357c:	85cf0110 	lh	t7,272(t6)
    3580:	c4a00018 	lwc1	$f0,24(a1)
    3584:	c4ac0010 	lwc1	$f12,16(a1)
    3588:	448f2000 	mtc1	t7,$f4
    358c:	3c013f00 	lui	at,0x3f00
    3590:	46006032 	c.eq.s	$f12,$f0
    3594:	44814000 	mtc1	at,$f8
    3598:	468021a0 	cvt.s.w	$f6,$f4
    359c:	46083382 	mul.s	$f14,$f6,$f8
    35a0:	45020006 	bc1fl	35bc <func_800A3E0C+0x50>
    35a4:	c4a2001c 	lwc1	$f2,28(a1)
    35a8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    35ac:	00000000 	nop
    35b0:	10000021 	b	3638 <func_800A3E0C+0xcc>
    35b4:	24020001 	li	v0,1
    35b8:	c4a2001c 	lwc1	$f2,28(a1)
    35bc:	44808000 	mtc1	zero,$f16
    35c0:	460e1282 	mul.s	$f10,$f2,$f14
    35c4:	460a0480 	add.s	$f18,$f0,$f10
    35c8:	e4b20018 	swc1	$f18,24(a1)
    35cc:	c4a00018 	lwc1	$f0,24(a1)
    35d0:	460c0101 	sub.s	$f4,$f0,$f12
    35d4:	46022182 	mul.s	$f6,$f4,$f2
    35d8:	4606803c 	c.lt.s	$f16,$f6
    35dc:	00000000 	nop
    35e0:	45020004 	bc1fl	35f4 <func_800A3E0C+0x88>
    35e4:	4610003c 	c.lt.s	$f0,$f16
    35e8:	10000010 	b	362c <func_800A3E0C+0xc0>
    35ec:	e4ac0018 	swc1	$f12,24(a1)
    35f0:	4610003c 	c.lt.s	$f0,$f16
    35f4:	00000000 	nop
    35f8:	45020006 	bc1fl	3614 <func_800A3E0C+0xa8>
    35fc:	c4a20014 	lwc1	$f2,20(a1)
    3600:	c4a80014 	lwc1	$f8,20(a1)
    3604:	46080280 	add.s	$f10,$f0,$f8
    3608:	10000008 	b	362c <func_800A3E0C+0xc0>
    360c:	e4aa0018 	swc1	$f10,24(a1)
    3610:	c4a20014 	lwc1	$f2,20(a1)
    3614:	4600103e 	c.le.s	$f2,$f0
    3618:	00000000 	nop
    361c:	45000003 	bc1f	362c <func_800A3E0C+0xc0>
    3620:	00000000 	nop
    3624:	46020481 	sub.s	$f18,$f0,$f2
    3628:	e4b20018 	swc1	$f18,24(a1)
    362c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3630:	00000000 	nop
    3634:	00001025 	move	v0,zero
    3638:	8fbf0014 	lw	ra,20(sp)
    363c:	27bd0018 	addiu	sp,sp,24
    3640:	03e00008 	jr	ra
    3644:	00000000 	nop

00003648 <SkelAnime_SetTransition>:
    3648:	3c013f80 	lui	at,0x3f80
    364c:	44810000 	mtc1	at,$f0
    3650:	44866000 	mtc1	a2,$f12
    3654:	afa40000 	sw	a0,0(sp)
    3658:	e4a00028 	swc1	$f0,40(a1)
    365c:	460c0103 	div.s	$f4,$f0,$f12
    3660:	03e00008 	jr	ra
    3664:	e4a4002c 	swc1	$f4,44(a1)

00003668 <SkelAnime_ChangeLinkAnim>:
    3668:	27bdffd8 	addiu	sp,sp,-40
    366c:	c7ac0044 	lwc1	$f12,68(sp)
    3670:	44802000 	mtc1	zero,$f4
    3674:	93ae0043 	lbu	t6,67(sp)
    3678:	afbf0024 	sw	ra,36(sp)
    367c:	46046032 	c.eq.s	$f12,$f4
    3680:	afb10020 	sw	s1,32(sp)
    3684:	afb0001c 	sw	s0,28(sp)
    3688:	afa40028 	sw	a0,40(sp)
    368c:	afa70034 	sw	a3,52(sp)
    3690:	00a08025 	move	s0,a1
    3694:	00c08825 	move	s1,a2
    3698:	4501002d 	bc1t	3750 <SkelAnime_ChangeLinkAnim+0xe8>
    369c:	a0ae0001 	sb	t6,1(a1)
    36a0:	8caf0008 	lw	t7,8(a1)
    36a4:	c7a60038 	lwc1	$f6,56(sp)
    36a8:	54cf0007 	bnel	a2,t7,36c8 <SkelAnime_ChangeLinkAnim+0x60>
    36ac:	44805000 	mtc1	zero,$f10
    36b0:	c4a80018 	lwc1	$f8,24(a1)
    36b4:	46083032 	c.eq.s	$f6,$f8
    36b8:	00000000 	nop
    36bc:	45010024 	bc1t	3750 <SkelAnime_ChangeLinkAnim+0xe8>
    36c0:	00000000 	nop
    36c4:	44805000 	mtc1	zero,$f10
    36c8:	3c180000 	lui	t8,0x0
    36cc:	02002025 	move	a0,s0
    36d0:	460a603c 	c.lt.s	$f12,$f10
    36d4:	27180000 	addiu	t8,t8,0
    36d8:	4502000b 	bc1fl	3708 <SkelAnime_ChangeLinkAnim+0xa0>
    36dc:	ae180030 	sw	t8,48(s0)
    36e0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    36e4:	e7ac0044 	swc1	$f12,68(sp)
    36e8:	02002025 	move	a0,s0
    36ec:	8e050024 	lw	a1,36(s0)
    36f0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    36f4:	8e060020 	lw	a2,32(s0)
    36f8:	c7ac0044 	lwc1	$f12,68(sp)
    36fc:	1000000d 	b	3734 <SkelAnime_ChangeLinkAnim+0xcc>
    3700:	46006307 	neg.s	$f12,$f12
    3704:	ae180030 	sw	t8,48(s0)
    3708:	c7b00038 	lwc1	$f16,56(sp)
    370c:	8e080024 	lw	t0,36(s0)
    3710:	92070000 	lbu	a3,0(s0)
    3714:	4600848d 	trunc.w.s	$f18,$f16
    3718:	e7ac0044 	swc1	$f12,68(sp)
    371c:	8fa40028 	lw	a0,40(sp)
    3720:	02202825 	move	a1,s1
    3724:	44069000 	mfc1	a2,$f18
    3728:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    372c:	afa80010 	sw	t0,16(sp)
    3730:	c7ac0044 	lwc1	$f12,68(sp)
    3734:	3c013f80 	lui	at,0x3f80
    3738:	44810000 	mtc1	at,$f0
    373c:	00000000 	nop
    3740:	460c0103 	div.s	$f4,$f0,$f12
    3744:	e6000028 	swc1	$f0,40(s0)
    3748:	10000010 	b	378c <SkelAnime_ChangeLinkAnim+0x124>
    374c:	e604002c 	swc1	$f4,44(s0)
    3750:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3754:	02002025 	move	a0,s0
    3758:	c7a60038 	lwc1	$f6,56(sp)
    375c:	8e0a0020 	lw	t2,32(s0)
    3760:	92070000 	lbu	a3,0(s0)
    3764:	4600320d 	trunc.w.s	$f8,$f6
    3768:	8fa40028 	lw	a0,40(sp)
    376c:	02202825 	move	a1,s1
    3770:	afaa0010 	sw	t2,16(sp)
    3774:	44064000 	mfc1	a2,$f8
    3778:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    377c:	00000000 	nop
    3780:	44805000 	mtc1	zero,$f10
    3784:	00000000 	nop
    3788:	e60a0028 	swc1	$f10,40(s0)
    378c:	ae110008 	sw	s1,8(s0)
    3790:	c7b00038 	lwc1	$f16,56(sp)
    3794:	02202025 	move	a0,s1
    3798:	e610000c 	swc1	$f16,12(s0)
    379c:	c7b20038 	lwc1	$f18,56(sp)
    37a0:	e6120018 	swc1	$f18,24(s0)
    37a4:	c7a4003c 	lwc1	$f4,60(sp)
    37a8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    37ac:	e6040010 	swc1	$f4,16(s0)
    37b0:	44823000 	mtc1	v0,$f6
    37b4:	00000000 	nop
    37b8:	46803220 	cvt.s.w	$f8,$f6
    37bc:	e6080014 	swc1	$f8,20(s0)
    37c0:	c7aa0034 	lwc1	$f10,52(sp)
    37c4:	e60a001c 	swc1	$f10,28(s0)
    37c8:	8fbf0024 	lw	ra,36(sp)
    37cc:	8fb10020 	lw	s1,32(sp)
    37d0:	8fb0001c 	lw	s0,28(sp)
    37d4:	03e00008 	jr	ra
    37d8:	27bd0028 	addiu	sp,sp,40

000037dc <SkelAnime_ChangeLinkAnimDefaultStop>:
    37dc:	27bdffd8 	addiu	sp,sp,-40
    37e0:	afbf0024 	sw	ra,36(sp)
    37e4:	afa40028 	sw	a0,40(sp)
    37e8:	afa5002c 	sw	a1,44(sp)
    37ec:	afa60030 	sw	a2,48(sp)
    37f0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    37f4:	00c02025 	move	a0,a2
    37f8:	44822000 	mtc1	v0,$f4
    37fc:	44800000 	mtc1	zero,$f0
    3800:	240e0002 	li	t6,2
    3804:	468021a0 	cvt.s.w	$f6,$f4
    3808:	afae0018 	sw	t6,24(sp)
    380c:	8fa40028 	lw	a0,40(sp)
    3810:	8fa5002c 	lw	a1,44(sp)
    3814:	8fa60030 	lw	a2,48(sp)
    3818:	3c073f80 	lui	a3,0x3f80
    381c:	e7a60014 	swc1	$f6,20(sp)
    3820:	e7a00010 	swc1	$f0,16(sp)
    3824:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3828:	e7a0001c 	swc1	$f0,28(sp)
    382c:	8fbf0024 	lw	ra,36(sp)
    3830:	27bd0028 	addiu	sp,sp,40
    3834:	03e00008 	jr	ra
    3838:	00000000 	nop

0000383c <SkelAnime_ChangeLinkAnimPlaybackStop>:
    383c:	27bdffd8 	addiu	sp,sp,-40
    3840:	afbf0024 	sw	ra,36(sp)
    3844:	afa40028 	sw	a0,40(sp)
    3848:	afa5002c 	sw	a1,44(sp)
    384c:	afa60030 	sw	a2,48(sp)
    3850:	afa70034 	sw	a3,52(sp)
    3854:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3858:	00c02025 	move	a0,a2
    385c:	44822000 	mtc1	v0,$f4
    3860:	44800000 	mtc1	zero,$f0
    3864:	240e0002 	li	t6,2
    3868:	468021a0 	cvt.s.w	$f6,$f4
    386c:	afae0018 	sw	t6,24(sp)
    3870:	8fa40028 	lw	a0,40(sp)
    3874:	8fa5002c 	lw	a1,44(sp)
    3878:	8fa60030 	lw	a2,48(sp)
    387c:	8fa70034 	lw	a3,52(sp)
    3880:	e7a60014 	swc1	$f6,20(sp)
    3884:	e7a00010 	swc1	$f0,16(sp)
    3888:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    388c:	e7a0001c 	swc1	$f0,28(sp)
    3890:	8fbf0024 	lw	ra,36(sp)
    3894:	27bd0028 	addiu	sp,sp,40
    3898:	03e00008 	jr	ra
    389c:	00000000 	nop

000038a0 <SkelAnime_ChangeLinkAnimDefaultRepeat>:
    38a0:	27bdffd8 	addiu	sp,sp,-40
    38a4:	afbf0024 	sw	ra,36(sp)
    38a8:	afa40028 	sw	a0,40(sp)
    38ac:	afa5002c 	sw	a1,44(sp)
    38b0:	afa60030 	sw	a2,48(sp)
    38b4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    38b8:	00c02025 	move	a0,a2
    38bc:	44822000 	mtc1	v0,$f4
    38c0:	44800000 	mtc1	zero,$f0
    38c4:	8fa40028 	lw	a0,40(sp)
    38c8:	468021a0 	cvt.s.w	$f6,$f4
    38cc:	8fa5002c 	lw	a1,44(sp)
    38d0:	8fa60030 	lw	a2,48(sp)
    38d4:	3c073f80 	lui	a3,0x3f80
    38d8:	afa00018 	sw	zero,24(sp)
    38dc:	e7a00010 	swc1	$f0,16(sp)
    38e0:	e7a60014 	swc1	$f6,20(sp)
    38e4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    38e8:	e7a0001c 	swc1	$f0,28(sp)
    38ec:	8fbf0024 	lw	ra,36(sp)
    38f0:	27bd0028 	addiu	sp,sp,40
    38f4:	03e00008 	jr	ra
    38f8:	00000000 	nop

000038fc <SkelAnime_ChangeLinkAnimPlaybackRepeat>:
    38fc:	27bdffd8 	addiu	sp,sp,-40
    3900:	afbf0024 	sw	ra,36(sp)
    3904:	afa40028 	sw	a0,40(sp)
    3908:	afa5002c 	sw	a1,44(sp)
    390c:	afa60030 	sw	a2,48(sp)
    3910:	afa70034 	sw	a3,52(sp)
    3914:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3918:	00c02025 	move	a0,a2
    391c:	44822000 	mtc1	v0,$f4
    3920:	44800000 	mtc1	zero,$f0
    3924:	8fa40028 	lw	a0,40(sp)
    3928:	468021a0 	cvt.s.w	$f6,$f4
    392c:	8fa5002c 	lw	a1,44(sp)
    3930:	8fa60030 	lw	a2,48(sp)
    3934:	8fa70034 	lw	a3,52(sp)
    3938:	afa00018 	sw	zero,24(sp)
    393c:	e7a00010 	swc1	$f0,16(sp)
    3940:	e7a60014 	swc1	$f6,20(sp)
    3944:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3948:	e7a0001c 	swc1	$f0,28(sp)
    394c:	8fbf0024 	lw	ra,36(sp)
    3950:	27bd0028 	addiu	sp,sp,40
    3954:	03e00008 	jr	ra
    3958:	00000000 	nop

0000395c <func_800A41FC>:
    395c:	27bdffe8 	addiu	sp,sp,-24
    3960:	afbf0014 	sw	ra,20(sp)
    3964:	afa5001c 	sw	a1,28(sp)
    3968:	00a07025 	move	t6,a1
    396c:	8dc60024 	lw	a2,36(t6)
    3970:	8dc70020 	lw	a3,32(t6)
    3974:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3978:	90a50000 	lbu	a1,0(a1)
    397c:	8fbf0014 	lw	ra,20(sp)
    3980:	27bd0018 	addiu	sp,sp,24
    3984:	03e00008 	jr	ra
    3988:	00000000 	nop

0000398c <func_800A422C>:
    398c:	27bdffe8 	addiu	sp,sp,-24
    3990:	afbf0014 	sw	ra,20(sp)
    3994:	afa5001c 	sw	a1,28(sp)
    3998:	00a07025 	move	t6,a1
    399c:	8dc60020 	lw	a2,32(t6)
    39a0:	8dc70024 	lw	a3,36(t6)
    39a4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    39a8:	90a50000 	lbu	a1,0(a1)
    39ac:	8fbf0014 	lw	ra,20(sp)
    39b0:	27bd0018 	addiu	sp,sp,24
    39b4:	03e00008 	jr	ra
    39b8:	00000000 	nop

000039bc <func_800A425C>:
    39bc:	44876000 	mtc1	a3,$f12
    39c0:	27bdffe0 	addiu	sp,sp,-32
    39c4:	afa50024 	sw	a1,36(sp)
    39c8:	4600610d 	trunc.w.s	$f4,$f12
    39cc:	8faf0024 	lw	t7,36(sp)
    39d0:	afa60028 	sw	a2,40(sp)
    39d4:	afbf001c 	sw	ra,28(sp)
    39d8:	8df80024 	lw	t8,36(t7)
    39dc:	00c02825 	move	a1,a2
    39e0:	44062000 	mfc1	a2,$f4
    39e4:	91e70000 	lbu	a3,0(t7)
    39e8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    39ec:	afb80010 	sw	t8,16(sp)
    39f0:	8fbf001c 	lw	ra,28(sp)
    39f4:	27bd0020 	addiu	sp,sp,32
    39f8:	03e00008 	jr	ra
    39fc:	00000000 	nop

00003a00 <func_800A42A0>:
    3a00:	44876000 	mtc1	a3,$f12
    3a04:	27bdffe0 	addiu	sp,sp,-32
    3a08:	afa50024 	sw	a1,36(sp)
    3a0c:	4600610d 	trunc.w.s	$f4,$f12
    3a10:	8faf0024 	lw	t7,36(sp)
    3a14:	afa60028 	sw	a2,40(sp)
    3a18:	afbf001c 	sw	ra,28(sp)
    3a1c:	8df80020 	lw	t8,32(t7)
    3a20:	00c02825 	move	a1,a2
    3a24:	44062000 	mfc1	a2,$f4
    3a28:	91e70000 	lbu	a3,0(t7)
    3a2c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3a30:	afb80010 	sw	t8,16(sp)
    3a34:	8fbf001c 	lw	ra,28(sp)
    3a38:	27bd0020 	addiu	sp,sp,32
    3a3c:	03e00008 	jr	ra
    3a40:	00000000 	nop

00003a44 <func_800A42E4>:
    3a44:	27bdffe0 	addiu	sp,sp,-32
    3a48:	afbf001c 	sw	ra,28(sp)
    3a4c:	afa50024 	sw	a1,36(sp)
    3a50:	00a07025 	move	t6,a1
    3a54:	44866000 	mtc1	a2,$f12
    3a58:	8dc60020 	lw	a2,32(t6)
    3a5c:	8dc70024 	lw	a3,36(t6)
    3a60:	90a50000 	lbu	a1,0(a1)
    3a64:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3a68:	e7ac0010 	swc1	$f12,16(sp)
    3a6c:	8fbf001c 	lw	ra,28(sp)
    3a70:	27bd0020 	addiu	sp,sp,32
    3a74:	03e00008 	jr	ra
    3a78:	00000000 	nop

00003a7c <func_800A431C>:
    3a7c:	44876000 	mtc1	a3,$f12
    3a80:	27bdffd0 	addiu	sp,sp,-48
    3a84:	afb00020 	sw	s0,32(sp)
    3a88:	4600610d 	trunc.w.s	$f4,$f12
    3a8c:	00a08025 	move	s0,a1
    3a90:	afa60038 	sw	a2,56(sp)
    3a94:	afbf0024 	sw	ra,36(sp)
    3a98:	afa40030 	sw	a0,48(sp)
    3a9c:	8e0f0020 	lw	t7,32(s0)
    3aa0:	00c02825 	move	a1,a2
    3aa4:	44062000 	mfc1	a2,$f4
    3aa8:	92070000 	lbu	a3,0(s0)
    3aac:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3ab0:	afaf0010 	sw	t7,16(sp)
    3ab4:	c7a60044 	lwc1	$f6,68(sp)
    3ab8:	8fa2004c 	lw	v0,76(sp)
    3abc:	2401fff0 	li	at,-16
    3ac0:	4600320d 	trunc.w.s	$f8,$f6
    3ac4:	2442000f 	addiu	v0,v0,15
    3ac8:	00411024 	and	v0,v0,at
    3acc:	92070000 	lbu	a3,0(s0)
    3ad0:	44064000 	mfc1	a2,$f8
    3ad4:	afa20028 	sw	v0,40(sp)
    3ad8:	afa20010 	sw	v0,16(sp)
    3adc:	8fa40030 	lw	a0,48(sp)
    3ae0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3ae4:	8fa50040 	lw	a1,64(sp)
    3ae8:	c7aa0048 	lwc1	$f10,72(sp)
    3aec:	92050000 	lbu	a1,0(s0)
    3af0:	8e060020 	lw	a2,32(s0)
    3af4:	8fa40030 	lw	a0,48(sp)
    3af8:	8fa70028 	lw	a3,40(sp)
    3afc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3b00:	e7aa0010 	swc1	$f10,16(sp)
    3b04:	8fbf0024 	lw	ra,36(sp)
    3b08:	8fb00020 	lw	s0,32(sp)
    3b0c:	27bd0030 	addiu	sp,sp,48
    3b10:	03e00008 	jr	ra
    3b14:	00000000 	nop

00003b18 <func_800A43B8>:
    3b18:	44876000 	mtc1	a3,$f12
    3b1c:	27bdffd0 	addiu	sp,sp,-48
    3b20:	afb00020 	sw	s0,32(sp)
    3b24:	4600610d 	trunc.w.s	$f4,$f12
    3b28:	00a08025 	move	s0,a1
    3b2c:	afa60038 	sw	a2,56(sp)
    3b30:	afbf0024 	sw	ra,36(sp)
    3b34:	afa40030 	sw	a0,48(sp)
    3b38:	8e0f0024 	lw	t7,36(s0)
    3b3c:	00c02825 	move	a1,a2
    3b40:	44062000 	mfc1	a2,$f4
    3b44:	92070000 	lbu	a3,0(s0)
    3b48:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3b4c:	afaf0010 	sw	t7,16(sp)
    3b50:	c7a60044 	lwc1	$f6,68(sp)
    3b54:	8fa2004c 	lw	v0,76(sp)
    3b58:	2401fff0 	li	at,-16
    3b5c:	4600320d 	trunc.w.s	$f8,$f6
    3b60:	2442000f 	addiu	v0,v0,15
    3b64:	00411024 	and	v0,v0,at
    3b68:	92070000 	lbu	a3,0(s0)
    3b6c:	44064000 	mfc1	a2,$f8
    3b70:	afa20028 	sw	v0,40(sp)
    3b74:	afa20010 	sw	v0,16(sp)
    3b78:	8fa40030 	lw	a0,48(sp)
    3b7c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3b80:	8fa50040 	lw	a1,64(sp)
    3b84:	c7aa0048 	lwc1	$f10,72(sp)
    3b88:	92050000 	lbu	a1,0(s0)
    3b8c:	8e060024 	lw	a2,36(s0)
    3b90:	8fa40030 	lw	a0,48(sp)
    3b94:	8fa70028 	lw	a3,40(sp)
    3b98:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3b9c:	e7aa0010 	swc1	$f10,16(sp)
    3ba0:	8fbf0024 	lw	ra,36(sp)
    3ba4:	8fb00020 	lw	s0,32(sp)
    3ba8:	27bd0030 	addiu	sp,sp,48
    3bac:	03e00008 	jr	ra
    3bb0:	00000000 	nop

00003bb4 <SkelAnime_SetModeStop>:
    3bb4:	27bdffe8 	addiu	sp,sp,-24
    3bb8:	afbf0014 	sw	ra,20(sp)
    3bbc:	240e0002 	li	t6,2
    3bc0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3bc4:	a08e0001 	sb	t6,1(a0)
    3bc8:	8fbf0014 	lw	ra,20(sp)
    3bcc:	27bd0018 	addiu	sp,sp,24
    3bd0:	03e00008 	jr	ra
    3bd4:	00000000 	nop

00003bd8 <func_800A4478>:
    3bd8:	44866000 	mtc1	a2,$f12
    3bdc:	c484001c 	lwc1	$f4,28(a0)
    3be0:	c4860018 	lwc1	$f6,24(a0)
    3be4:	44808000 	mtc1	zero,$f16
    3be8:	460c2002 	mul.s	$f0,$f4,$f12
    3bec:	44857000 	mtc1	a1,$f14
    3bf0:	00001025 	move	v0,zero
    3bf4:	46003081 	sub.s	$f2,$f6,$f0
    3bf8:	4610103c 	c.lt.s	$f2,$f16
    3bfc:	00000000 	nop
    3c00:	45020005 	bc1fl	3c18 <func_800A4478+0x40>
    3c04:	c48c0014 	lwc1	$f12,20(a0)
    3c08:	c48c0014 	lwc1	$f12,20(a0)
    3c0c:	10000007 	b	3c2c <func_800A4478+0x54>
    3c10:	460c1080 	add.s	$f2,$f2,$f12
    3c14:	c48c0014 	lwc1	$f12,20(a0)
    3c18:	4602603e 	c.le.s	$f12,$f2
    3c1c:	00000000 	nop
    3c20:	45020003 	bc1fl	3c30 <func_800A4478+0x58>
    3c24:	46107032 	c.eq.s	$f14,$f16
    3c28:	460c1081 	sub.s	$f2,$f2,$f12
    3c2c:	46107032 	c.eq.s	$f14,$f16
    3c30:	46001200 	add.s	$f8,$f2,$f0
    3c34:	45020007 	bc1fl	3c54 <func_800A4478+0x7c>
    3c38:	460e4301 	sub.s	$f12,$f8,$f14
    3c3c:	4600803c 	c.lt.s	$f16,$f0
    3c40:	00000000 	nop
    3c44:	45020003 	bc1fl	3c54 <func_800A4478+0x7c>
    3c48:	460e4301 	sub.s	$f12,$f8,$f14
    3c4c:	46006386 	mov.s	$f14,$f12
    3c50:	460e4301 	sub.s	$f12,$f8,$f14
    3c54:	46006282 	mul.s	$f10,$f12,$f0
    3c58:	460a803e 	c.le.s	$f16,$f10
    3c5c:	00000000 	nop
    3c60:	45000009 	bc1f	3c88 <func_800A4478+0xb0>
    3c64:	00000000 	nop
    3c68:	46006481 	sub.s	$f18,$f12,$f0
    3c6c:	46009102 	mul.s	$f4,$f18,$f0
    3c70:	4610203c 	c.lt.s	$f4,$f16
    3c74:	00000000 	nop
    3c78:	45000003 	bc1f	3c88 <func_800A4478+0xb0>
    3c7c:	00000000 	nop
    3c80:	03e00008 	jr	ra
    3c84:	24020001 	li	v0,1
    3c88:	03e00008 	jr	ra
    3c8c:	00000000 	nop

00003c90 <func_800A4530>:
    3c90:	3c0e0000 	lui	t6,0x0
    3c94:	8dce0000 	lw	t6,0(t6)
    3c98:	27bdffe8 	addiu	sp,sp,-24
    3c9c:	afbf0014 	sw	ra,20(sp)
    3ca0:	85cf0110 	lh	t7,272(t6)
    3ca4:	3c013f00 	lui	at,0x3f00
    3ca8:	44814000 	mtc1	at,$f8
    3cac:	448f2000 	mtc1	t7,$f4
    3cb0:	44856000 	mtc1	a1,$f12
    3cb4:	468021a0 	cvt.s.w	$f6,$f4
    3cb8:	44056000 	mfc1	a1,$f12
    3cbc:	46083002 	mul.s	$f0,$f6,$f8
    3cc0:	44060000 	mfc1	a2,$f0
    3cc4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3cc8:	00000000 	nop
    3ccc:	8fbf0014 	lw	ra,20(sp)
    3cd0:	27bd0018 	addiu	sp,sp,24
    3cd4:	03e00008 	jr	ra
    3cd8:	00000000 	nop

00003cdc <SkelAnime_Init>:
    3cdc:	27bdffe0 	addiu	sp,sp,-32
    3ce0:	afa40020 	sw	a0,32(sp)
    3ce4:	00067100 	sll	t6,a2,0x4
    3ce8:	3c040000 	lui	a0,0x0
    3cec:	000e7f02 	srl	t7,t6,0x1c
    3cf0:	24840000 	addiu	a0,a0,0
    3cf4:	000fc080 	sll	t8,t7,0x2
    3cf8:	0098c821 	addu	t9,a0,t8
    3cfc:	8f2a0000 	lw	t2,0(t9)
    3d00:	3c0800ff 	lui	t0,0xff
    3d04:	3508ffff 	ori	t0,t0,0xffff
    3d08:	00c85824 	and	t3,a2,t0
    3d0c:	3c098000 	lui	t1,0x8000
    3d10:	014b6021 	addu	t4,t2,t3
    3d14:	afbf001c 	sw	ra,28(sp)
    3d18:	afb00018 	sw	s0,24(sp)
    3d1c:	afa7002c 	sw	a3,44(sp)
    3d20:	01891021 	addu	v0,t4,t1
    3d24:	904d0004 	lbu	t5,4(v0)
    3d28:	00a08025 	move	s0,a1
    3d2c:	24060b98 	li	a2,2968
    3d30:	25ae0001 	addiu	t6,t5,1
    3d34:	a0ae0000 	sb	t6,0(a1)
    3d38:	8c430000 	lw	v1,0(v0)
    3d3c:	00037900 	sll	t7,v1,0x4
    3d40:	000fc702 	srl	t8,t7,0x1c
    3d44:	0018c880 	sll	t9,t8,0x2
    3d48:	00995021 	addu	t2,a0,t9
    3d4c:	8d4b0000 	lw	t3,0(t2)
    3d50:	00686024 	and	t4,v1,t0
    3d54:	016c6821 	addu	t5,t3,t4
    3d58:	01a97021 	addu	t6,t5,t1
    3d5c:	acae0004 	sw	t6,4(a1)
    3d60:	8faf0030 	lw	t7,48(sp)
    3d64:	8fb80038 	lw	t8,56(sp)
    3d68:	55e00016 	bnezl	t7,3dc4 <SkelAnime_Init+0xe8>
    3d6c:	92190000 	lbu	t9,0(s0)
    3d70:	90a40000 	lbu	a0,0(a1)
    3d74:	3c050000 	lui	a1,0x0
    3d78:	24a50514 	addiu	a1,a1,1300
    3d7c:	00800821 	move	at,a0
    3d80:	00042080 	sll	a0,a0,0x2
    3d84:	00812023 	subu	a0,a0,at
    3d88:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3d8c:	00042040 	sll	a0,a0,0x1
    3d90:	92040000 	lbu	a0,0(s0)
    3d94:	3c050000 	lui	a1,0x0
    3d98:	ae020020 	sw	v0,32(s0)
    3d9c:	00800821 	move	at,a0
    3da0:	00042080 	sll	a0,a0,0x2
    3da4:	00812023 	subu	a0,a0,at
    3da8:	00042040 	sll	a0,a0,0x1
    3dac:	24a50528 	addiu	a1,a1,1320
    3db0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3db4:	24060b99 	li	a2,2969
    3db8:	1000000d 	b	3df0 <SkelAnime_Init+0x114>
    3dbc:	ae020024 	sw	v0,36(s0)
    3dc0:	92190000 	lbu	t9,0(s0)
    3dc4:	3c040000 	lui	a0,0x0
    3dc8:	2484053c 	addiu	a0,a0,1340
    3dcc:	13190004 	beq	t8,t9,3de0 <SkelAnime_Init+0x104>
    3dd0:	3c050000 	lui	a1,0x0
    3dd4:	24a50560 	addiu	a1,a1,1376
    3dd8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3ddc:	24060b9d 	li	a2,2973
    3de0:	8faa0030 	lw	t2,48(sp)
    3de4:	ae0a0020 	sw	t2,32(s0)
    3de8:	8fab0034 	lw	t3,52(sp)
    3dec:	ae0b0024 	sw	t3,36(s0)
    3df0:	8e0c0020 	lw	t4,32(s0)
    3df4:	3c040000 	lui	a0,0x0
    3df8:	11800004 	beqz	t4,3e0c <SkelAnime_Init+0x130>
    3dfc:	00000000 	nop
    3e00:	8e0d0024 	lw	t5,36(s0)
    3e04:	55a0000a 	bnezl	t5,3e30 <SkelAnime_Init+0x154>
    3e08:	8fae002c 	lw	t6,44(sp)
    3e0c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3e10:	24840574 	addiu	a0,a0,1396
    3e14:	3c040000 	lui	a0,0x0
    3e18:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3e1c:	2484057c 	addiu	a0,a0,1404
    3e20:	3c040000 	lui	a0,0x0
    3e24:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3e28:	248405ac 	addiu	a0,a0,1452
    3e2c:	8fae002c 	lw	t6,44(sp)
    3e30:	02002025 	move	a0,s0
    3e34:	51c00004 	beqzl	t6,3e48 <SkelAnime_Init+0x16c>
    3e38:	8fbf001c 	lw	ra,28(sp)
    3e3c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3e40:	01c02825 	move	a1,t6
    3e44:	8fbf001c 	lw	ra,28(sp)
    3e48:	8fb00018 	lw	s0,24(sp)
    3e4c:	27bd0020 	addiu	sp,sp,32
    3e50:	03e00008 	jr	ra
    3e54:	00000000 	nop

00003e58 <SkelAnime_InitSV>:
    3e58:	27bdffe0 	addiu	sp,sp,-32
    3e5c:	afa40020 	sw	a0,32(sp)
    3e60:	00067100 	sll	t6,a2,0x4
    3e64:	3c040000 	lui	a0,0x0
    3e68:	000e7f02 	srl	t7,t6,0x1c
    3e6c:	24840000 	addiu	a0,a0,0
    3e70:	000fc080 	sll	t8,t7,0x2
    3e74:	0098c821 	addu	t9,a0,t8
    3e78:	8f2a0000 	lw	t2,0(t9)
    3e7c:	3c0800ff 	lui	t0,0xff
    3e80:	3508ffff 	ori	t0,t0,0xffff
    3e84:	00c85824 	and	t3,a2,t0
    3e88:	3c098000 	lui	t1,0x8000
    3e8c:	014b6021 	addu	t4,t2,t3
    3e90:	afbf001c 	sw	ra,28(sp)
    3e94:	afb00018 	sw	s0,24(sp)
    3e98:	afa7002c 	sw	a3,44(sp)
    3e9c:	01891021 	addu	v0,t4,t1
    3ea0:	904d0004 	lbu	t5,4(v0)
    3ea4:	00a08025 	move	s0,a1
    3ea8:	24060be7 	li	a2,3047
    3eac:	25ae0001 	addiu	t6,t5,1
    3eb0:	a0ae0000 	sb	t6,0(a1)
    3eb4:	904f0008 	lbu	t7,8(v0)
    3eb8:	a0af0002 	sb	t7,2(a1)
    3ebc:	8c430000 	lw	v1,0(v0)
    3ec0:	0003c100 	sll	t8,v1,0x4
    3ec4:	0018cf02 	srl	t9,t8,0x1c
    3ec8:	00195080 	sll	t2,t9,0x2
    3ecc:	008a5821 	addu	t3,a0,t2
    3ed0:	8d6c0000 	lw	t4,0(t3)
    3ed4:	00686824 	and	t5,v1,t0
    3ed8:	018d7021 	addu	t6,t4,t5
    3edc:	01c97821 	addu	t7,t6,t1
    3ee0:	acaf0004 	sw	t7,4(a1)
    3ee4:	8fb80030 	lw	t8,48(sp)
    3ee8:	8fb90038 	lw	t9,56(sp)
    3eec:	57000016 	bnezl	t8,3f48 <SkelAnime_InitSV+0xf0>
    3ef0:	920a0000 	lbu	t2,0(s0)
    3ef4:	90a40000 	lbu	a0,0(a1)
    3ef8:	3c050000 	lui	a1,0x0
    3efc:	24a505b0 	addiu	a1,a1,1456
    3f00:	00800821 	move	at,a0
    3f04:	00042080 	sll	a0,a0,0x2
    3f08:	00812023 	subu	a0,a0,at
    3f0c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3f10:	00042040 	sll	a0,a0,0x1
    3f14:	92040000 	lbu	a0,0(s0)
    3f18:	3c050000 	lui	a1,0x0
    3f1c:	ae020020 	sw	v0,32(s0)
    3f20:	00800821 	move	at,a0
    3f24:	00042080 	sll	a0,a0,0x2
    3f28:	00812023 	subu	a0,a0,at
    3f2c:	00042040 	sll	a0,a0,0x1
    3f30:	24a505c4 	addiu	a1,a1,1476
    3f34:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3f38:	24060be8 	li	a2,3048
    3f3c:	1000000d 	b	3f74 <SkelAnime_InitSV+0x11c>
    3f40:	ae020024 	sw	v0,36(s0)
    3f44:	920a0000 	lbu	t2,0(s0)
    3f48:	3c040000 	lui	a0,0x0
    3f4c:	248405d8 	addiu	a0,a0,1496
    3f50:	132a0004 	beq	t9,t2,3f64 <SkelAnime_InitSV+0x10c>
    3f54:	3c050000 	lui	a1,0x0
    3f58:	24a505fc 	addiu	a1,a1,1532
    3f5c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3f60:	24060bec 	li	a2,3052
    3f64:	8fab0030 	lw	t3,48(sp)
    3f68:	ae0b0020 	sw	t3,32(s0)
    3f6c:	8fac0034 	lw	t4,52(sp)
    3f70:	ae0c0024 	sw	t4,36(s0)
    3f74:	8e0d0020 	lw	t5,32(s0)
    3f78:	3c040000 	lui	a0,0x0
    3f7c:	11a00004 	beqz	t5,3f90 <SkelAnime_InitSV+0x138>
    3f80:	00000000 	nop
    3f84:	8e0e0024 	lw	t6,36(s0)
    3f88:	55c0000a 	bnezl	t6,3fb4 <SkelAnime_InitSV+0x15c>
    3f8c:	8faf002c 	lw	t7,44(sp)
    3f90:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3f94:	24840610 	addiu	a0,a0,1552
    3f98:	3c040000 	lui	a0,0x0
    3f9c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3fa0:	24840618 	addiu	a0,a0,1560
    3fa4:	3c040000 	lui	a0,0x0
    3fa8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3fac:	2484064c 	addiu	a0,a0,1612
    3fb0:	8faf002c 	lw	t7,44(sp)
    3fb4:	02002025 	move	a0,s0
    3fb8:	51e00004 	beqzl	t7,3fcc <SkelAnime_InitSV+0x174>
    3fbc:	8fbf001c 	lw	ra,28(sp)
    3fc0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    3fc4:	01e02825 	move	a1,t7
    3fc8:	8fbf001c 	lw	ra,28(sp)
    3fcc:	8fb00018 	lw	s0,24(sp)
    3fd0:	27bd0020 	addiu	sp,sp,32
    3fd4:	03e00008 	jr	ra
    3fd8:	00000000 	nop

00003fdc <SkelAnime_InitSkin>:
    3fdc:	00067900 	sll	t7,a2,0x4
    3fe0:	3c080000 	lui	t0,0x0
    3fe4:	000fc702 	srl	t8,t7,0x1c
    3fe8:	25080000 	addiu	t0,t0,0
    3fec:	0018c880 	sll	t9,t8,0x2
    3ff0:	27bdffe0 	addiu	sp,sp,-32
    3ff4:	01195821 	addu	t3,t0,t9
    3ff8:	8d6c0000 	lw	t4,0(t3)
    3ffc:	3c0900ff 	lui	t1,0xff
    4000:	3529ffff 	ori	t1,t1,0xffff
    4004:	00c96824 	and	t5,a2,t1
    4008:	3c0a8000 	lui	t2,0x8000
    400c:	018d7821 	addu	t7,t4,t5
    4010:	afbf001c 	sw	ra,28(sp)
    4014:	afb00018 	sw	s0,24(sp)
    4018:	afa40020 	sw	a0,32(sp)
    401c:	afa60028 	sw	a2,40(sp)
    4020:	afa7002c 	sw	a3,44(sp)
    4024:	01ea1021 	addu	v0,t7,t2
    4028:	90580004 	lbu	t8,4(v0)
    402c:	00a08025 	move	s0,a1
    4030:	24060c30 	li	a2,3120
    4034:	27190001 	addiu	t9,t8,1
    4038:	a0b90000 	sb	t9,0(a1)
    403c:	8c430000 	lw	v1,0(v0)
    4040:	90a40000 	lbu	a0,0(a1)
    4044:	00035900 	sll	t3,v1,0x4
    4048:	000b7702 	srl	t6,t3,0x1c
    404c:	000e6080 	sll	t4,t6,0x2
    4050:	010c6821 	addu	t5,t0,t4
    4054:	8daf0000 	lw	t7,0(t5)
    4058:	0069c024 	and	t8,v1,t1
    405c:	00800821 	move	at,a0
    4060:	01f8c821 	addu	t9,t7,t8
    4064:	032a5821 	addu	t3,t9,t2
    4068:	acab0004 	sw	t3,4(a1)
    406c:	00042080 	sll	a0,a0,0x2
    4070:	00812023 	subu	a0,a0,at
    4074:	3c050000 	lui	a1,0x0
    4078:	24a50650 	addiu	a1,a1,1616
    407c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4080:	00042040 	sll	a0,a0,0x1
    4084:	92040000 	lbu	a0,0(s0)
    4088:	3c050000 	lui	a1,0x0
    408c:	ae020020 	sw	v0,32(s0)
    4090:	00800821 	move	at,a0
    4094:	00042080 	sll	a0,a0,0x2
    4098:	00812023 	subu	a0,a0,at
    409c:	00042040 	sll	a0,a0,0x1
    40a0:	24a50664 	addiu	a1,a1,1636
    40a4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    40a8:	24060c31 	li	a2,3121
    40ac:	8e0e0020 	lw	t6,32(s0)
    40b0:	ae020024 	sw	v0,36(s0)
    40b4:	3c040000 	lui	a0,0x0
    40b8:	11c00003 	beqz	t6,40c8 <SkelAnime_InitSkin+0xec>
    40bc:	00000000 	nop
    40c0:	5440000a 	bnezl	v0,40ec <SkelAnime_InitSkin+0x110>
    40c4:	8fa5002c 	lw	a1,44(sp)
    40c8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    40cc:	24840678 	addiu	a0,a0,1656
    40d0:	3c040000 	lui	a0,0x0
    40d4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    40d8:	24840680 	addiu	a0,a0,1664
    40dc:	3c040000 	lui	a0,0x0
    40e0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    40e4:	248406b4 	addiu	a0,a0,1716
    40e8:	8fa5002c 	lw	a1,44(sp)
    40ec:	50a00004 	beqzl	a1,4100 <SkelAnime_InitSkin+0x124>
    40f0:	8fbf001c 	lw	ra,28(sp)
    40f4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    40f8:	02002025 	move	a0,s0
    40fc:	8fbf001c 	lw	ra,28(sp)
    4100:	8fb00018 	lw	s0,24(sp)
    4104:	27bd0020 	addiu	sp,sp,32
    4108:	03e00008 	jr	ra
    410c:	00000000 	nop

00004110 <func_800A49B0>:
    4110:	90820001 	lbu	v0,1(a0)
    4114:	3c0e0000 	lui	t6,0x0
    4118:	25ce0000 	addiu	t6,t6,0
    411c:	28410002 	slti	at,v0,2
    4120:	50200004 	beqzl	at,4134 <func_800A49B0+0x24>
    4124:	28410004 	slti	at,v0,4
    4128:	03e00008 	jr	ra
    412c:	ac8e0030 	sw	t6,48(a0)
    4130:	28410004 	slti	at,v0,4
    4134:	10200005 	beqz	at,414c <func_800A49B0+0x3c>
    4138:	3c180000 	lui	t8,0x0
    413c:	3c0f0000 	lui	t7,0x0
    4140:	25ef0000 	addiu	t7,t7,0
    4144:	03e00008 	jr	ra
    4148:	ac8f0030 	sw	t7,48(a0)
    414c:	27180000 	addiu	t8,t8,0
    4150:	ac980030 	sw	t8,48(a0)
    4154:	03e00008 	jr	ra
    4158:	00000000 	nop

0000415c <SkelAnime_FrameUpdateMatrix>:
    415c:	27bdffe8 	addiu	sp,sp,-24
    4160:	afbf0014 	sw	ra,20(sp)
    4164:	8c990030 	lw	t9,48(a0)
    4168:	0320f809 	jalr	t9
    416c:	00000000 	nop
    4170:	8fbf0014 	lw	ra,20(sp)
    4174:	27bd0018 	addiu	sp,sp,24
    4178:	03e00008 	jr	ra
    417c:	00000000 	nop

00004180 <func_800A4A20>:
    4180:	3c0e0000 	lui	t6,0x0
    4184:	8dce0000 	lw	t6,0(t6)
    4188:	27bdffd0 	addiu	sp,sp,-48
    418c:	afbf0024 	sw	ra,36(sp)
    4190:	afb00020 	sw	s0,32(sp)
    4194:	85cf0110 	lh	t7,272(t6)
    4198:	3c010000 	lui	at,0x0
    419c:	c4280718 	lwc1	$f8,1816(at)
    41a0:	448f2000 	mtc1	t7,$f4
    41a4:	c48a002c 	lwc1	$f10,44(a0)
    41a8:	c4800028 	lwc1	$f0,40(a0)
    41ac:	468021a0 	cvt.s.w	$f6,$f4
    41b0:	44802000 	mtc1	zero,$f4
    41b4:	46000306 	mov.s	$f12,$f0
    41b8:	00808025 	move	s0,a0
    41bc:	46083082 	mul.s	$f2,$f6,$f8
    41c0:	00000000 	nop
    41c4:	46025402 	mul.s	$f16,$f10,$f2
    41c8:	46100481 	sub.s	$f18,$f0,$f16
    41cc:	e4920028 	swc1	$f18,40(a0)
    41d0:	c4800028 	lwc1	$f0,40(a0)
    41d4:	4604003e 	c.le.s	$f0,$f4
    41d8:	00000000 	nop
    41dc:	45000007 	bc1f	41fc <func_800A4A20+0x7c>
    41e0:	00000000 	nop
    41e4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    41e8:	e7ac002c 	swc1	$f12,44(sp)
    41ec:	44803000 	mtc1	zero,$f6
    41f0:	c7ac002c 	lwc1	$f12,44(sp)
    41f4:	e6060028 	swc1	$f6,40(s0)
    41f8:	c6000028 	lwc1	$f0,40(s0)
    41fc:	460c0283 	div.s	$f10,$f0,$f12
    4200:	3c013f80 	lui	at,0x3f80
    4204:	44814000 	mtc1	at,$f8
    4208:	8e050020 	lw	a1,32(s0)
    420c:	92040000 	lbu	a0,0(s0)
    4210:	8e070024 	lw	a3,36(s0)
    4214:	00a03025 	move	a2,a1
    4218:	460a4401 	sub.s	$f16,$f8,$f10
    421c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4220:	e7b00010 	swc1	$f16,16(sp)
    4224:	8fbf0024 	lw	ra,36(sp)
    4228:	8fb00020 	lw	s0,32(sp)
    422c:	27bd0030 	addiu	sp,sp,48
    4230:	03e00008 	jr	ra
    4234:	00001025 	move	v0,zero

00004238 <func_800A4AD8>:
    4238:	3c0f0000 	lui	t7,0x0
    423c:	8def0000 	lw	t7,0(t7)
    4240:	27bdffd0 	addiu	sp,sp,-48
    4244:	afbf0024 	sw	ra,36(sp)
    4248:	afb00020 	sw	s0,32(sp)
    424c:	85f80110 	lh	t8,272(t7)
    4250:	3c014680 	lui	at,0x4680
    4254:	44812000 	mtc1	at,$f4
    4258:	44985000 	mtc1	t8,$f10
    425c:	c4800028 	lwc1	$f0,40(a0)
    4260:	3c010000 	lui	at,0x0
    4264:	46805420 	cvt.s.w	$f16,$f10
    4268:	46040182 	mul.s	$f6,$f0,$f4
    426c:	c432071c 	lwc1	$f18,1820(at)
    4270:	c484002c 	lwc1	$f4,44(a0)
    4274:	44805000 	mtc1	zero,$f10
    4278:	00808025 	move	s0,a0
    427c:	46128082 	mul.s	$f2,$f16,$f18
    4280:	4600320d 	trunc.w.s	$f8,$f6
    4284:	46022182 	mul.s	$f6,$f4,$f2
    4288:	44064000 	mfc1	a2,$f8
    428c:	00000000 	nop
    4290:	00063400 	sll	a2,a2,0x10
    4294:	46060201 	sub.s	$f8,$f0,$f6
    4298:	00063403 	sra	a2,a2,0x10
    429c:	e4880028 	swc1	$f8,40(a0)
    42a0:	c4800028 	lwc1	$f0,40(a0)
    42a4:	460a003e 	c.le.s	$f0,$f10
    42a8:	00000000 	nop
    42ac:	45020008 	bc1fl	42d0 <func_800A4AD8+0x98>
    42b0:	3c014680 	lui	at,0x4680
    42b4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    42b8:	a7a6002e 	sh	a2,46(sp)
    42bc:	44808000 	mtc1	zero,$f16
    42c0:	87a6002e 	lh	a2,46(sp)
    42c4:	e6100028 	swc1	$f16,40(s0)
    42c8:	c6000028 	lwc1	$f0,40(s0)
    42cc:	3c014680 	lui	at,0x4680
    42d0:	44819000 	mtc1	at,$f18
    42d4:	82080003 	lb	t0,3(s0)
    42d8:	00062400 	sll	a0,a2,0x10
    42dc:	46120102 	mul.s	$f4,$f0,$f18
    42e0:	00042403 	sra	a0,a0,0x10
    42e4:	4600218d 	trunc.w.s	$f6,$f4
    42e8:	44053000 	mfc1	a1,$f6
    42ec:	00000000 	nop
    42f0:	00052c00 	sll	a1,a1,0x10
    42f4:	05010011 	bgez	t0,433c <func_800A4AD8+0x104>
    42f8:	00052c03 	sra	a1,a1,0x10
    42fc:	00062400 	sll	a0,a2,0x10
    4300:	00042403 	sra	a0,a0,0x10
    4304:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4308:	a7a5002c 	sh	a1,44(sp)
    430c:	3c013f80 	lui	at,0x3f80
    4310:	44814000 	mtc1	at,$f8
    4314:	87a5002c 	lh	a1,44(sp)
    4318:	46004281 	sub.s	$f10,$f8,$f0
    431c:	00052400 	sll	a0,a1,0x10
    4320:	00042403 	sra	a0,a0,0x10
    4324:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4328:	e7aa0028 	swc1	$f10,40(sp)
    432c:	3c013f80 	lui	at,0x3f80
    4330:	44818000 	mtc1	at,$f16
    4334:	10000009 	b	435c <func_800A4AD8+0x124>
    4338:	46008081 	sub.s	$f2,$f16,$f0
    433c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4340:	a7a5002c 	sh	a1,44(sp)
    4344:	87a5002c 	lh	a1,44(sp)
    4348:	e7a00028 	swc1	$f0,40(sp)
    434c:	00052400 	sll	a0,a1,0x10
    4350:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4354:	00042403 	sra	a0,a0,0x10
    4358:	46000086 	mov.s	$f2,$f0
    435c:	44809000 	mtc1	zero,$f18
    4360:	3c013f80 	lui	at,0x3f80
    4364:	44813000 	mtc1	at,$f6
    4368:	46121032 	c.eq.s	$f2,$f18
    436c:	c7a40028 	lwc1	$f4,40(sp)
    4370:	45030004 	bc1tl	4384 <func_800A4AD8+0x14c>
    4374:	44801000 	mtc1	zero,$f2
    4378:	10000003 	b	4388 <func_800A4AD8+0x150>
    437c:	46041083 	div.s	$f2,$f2,$f4
    4380:	44801000 	mtc1	zero,$f2
    4384:	00000000 	nop
    4388:	46023201 	sub.s	$f8,$f6,$f2
    438c:	8e050020 	lw	a1,32(s0)
    4390:	92040000 	lbu	a0,0(s0)
    4394:	8e070024 	lw	a3,36(s0)
    4398:	e7a80010 	swc1	$f8,16(sp)
    439c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    43a0:	00a03025 	move	a2,a1
    43a4:	8fbf0024 	lw	ra,36(sp)
    43a8:	8fb00020 	lw	s0,32(sp)
    43ac:	27bd0030 	addiu	sp,sp,48
    43b0:	03e00008 	jr	ra
    43b4:	00001025 	move	v0,zero

000043b8 <func_800A4C58>:
    43b8:	27bdfd70 	addiu	sp,sp,-656
    43bc:	afb00020 	sw	s0,32(sp)
    43c0:	00808025 	move	s0,a0
    43c4:	afbf0024 	sw	ra,36(sp)
    43c8:	c6040018 	lwc1	$f4,24(s0)
    43cc:	8e070020 	lw	a3,32(s0)
    43d0:	92060000 	lbu	a2,0(s0)
    43d4:	4600218d 	trunc.w.s	$f6,$f4
    43d8:	8c840008 	lw	a0,8(a0)
    43dc:	44053000 	mfc1	a1,$f6
    43e0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    43e4:	00000000 	nop
    43e8:	920f0001 	lbu	t7,1(s0)
    43ec:	27a70038 	addiu	a3,sp,56
    43f0:	31f80001 	andi	t8,t7,0x1
    43f4:	5300001b 	beqzl	t8,4464 <func_800A4C58+0xac>
    43f8:	c6000028 	lwc1	$f0,40(s0)
    43fc:	c6000018 	lwc1	$f0,24(s0)
    4400:	c6120014 	lwc1	$f18,20(s0)
    4404:	4600020d 	trunc.w.s	$f8,$f0
    4408:	4600910d 	trunc.w.s	$f4,$f18
    440c:	44054000 	mfc1	a1,$f8
    4410:	00000000 	nop
    4414:	44855000 	mtc1	a1,$f10
    4418:	44092000 	mfc1	t1,$f4
    441c:	24a50001 	addiu	a1,a1,1
    4420:	46805420 	cvt.s.w	$f16,$f10
    4424:	00a9082a 	slt	at,a1,t1
    4428:	14200002 	bnez	at,4434 <func_800A4C58+0x7c>
    442c:	46100081 	sub.s	$f2,$f0,$f16
    4430:	00002825 	move	a1,zero
    4434:	8e040008 	lw	a0,8(s0)
    4438:	92060000 	lbu	a2,0(s0)
    443c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4440:	e7a20030 	swc1	$f2,48(sp)
    4444:	c7a20030 	lwc1	$f2,48(sp)
    4448:	8e050020 	lw	a1,32(s0)
    444c:	92040000 	lbu	a0,0(s0)
    4450:	27a70038 	addiu	a3,sp,56
    4454:	e7a20010 	swc1	$f2,16(sp)
    4458:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    445c:	00a03025 	move	a2,a1
    4460:	c6000028 	lwc1	$f0,40(s0)
    4464:	44803000 	mtc1	zero,$f6
    4468:	3c0a0000 	lui	t2,0x0
    446c:	46003032 	c.eq.s	$f6,$f0
    4470:	00000000 	nop
    4474:	4503001d 	bc1tl	44ec <func_800A4C58+0x134>
    4478:	8fbf0024 	lw	ra,36(sp)
    447c:	8d4a0000 	lw	t2,0(t2)
    4480:	3c010000 	lui	at,0x0
    4484:	c4300720 	lwc1	$f16,1824(at)
    4488:	854b0110 	lh	t3,272(t2)
    448c:	c612002c 	lwc1	$f18,44(s0)
    4490:	44806000 	mtc1	zero,$f12
    4494:	448b4000 	mtc1	t3,$f8
    4498:	00000000 	nop
    449c:	468042a0 	cvt.s.w	$f10,$f8
    44a0:	46105082 	mul.s	$f2,$f10,$f16
    44a4:	00000000 	nop
    44a8:	46029102 	mul.s	$f4,$f18,$f2
    44ac:	46040181 	sub.s	$f6,$f0,$f4
    44b0:	e6060028 	swc1	$f6,40(s0)
    44b4:	c6000028 	lwc1	$f0,40(s0)
    44b8:	460c003e 	c.le.s	$f0,$f12
    44bc:	00000000 	nop
    44c0:	45000003 	bc1f	44d0 <func_800A4C58+0x118>
    44c4:	00000000 	nop
    44c8:	10000007 	b	44e8 <func_800A4C58+0x130>
    44cc:	e60c0028 	swc1	$f12,40(s0)
    44d0:	8e050020 	lw	a1,32(s0)
    44d4:	92040000 	lbu	a0,0(s0)
    44d8:	8e070024 	lw	a3,36(s0)
    44dc:	e7a00010 	swc1	$f0,16(sp)
    44e0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    44e4:	00a03025 	move	a2,a1
    44e8:	8fbf0024 	lw	ra,36(sp)
    44ec:	8fb00020 	lw	s0,32(sp)
    44f0:	27bd0290 	addiu	sp,sp,656
    44f4:	03e00008 	jr	ra
    44f8:	00000000 	nop

000044fc <func_800A4D9C>:
    44fc:	3c0e0000 	lui	t6,0x0
    4500:	8dce0000 	lw	t6,0(t6)
    4504:	27bdffe8 	addiu	sp,sp,-24
    4508:	afbf0014 	sw	ra,20(sp)
    450c:	85cf0110 	lh	t7,272(t6)
    4510:	3c010000 	lui	at,0x0
    4514:	c4280724 	lwc1	$f8,1828(at)
    4518:	448f2000 	mtc1	t7,$f4
    451c:	c490001c 	lwc1	$f16,28(a0)
    4520:	c48a0018 	lwc1	$f10,24(a0)
    4524:	468021a0 	cvt.s.w	$f6,$f4
    4528:	46083082 	mul.s	$f2,$f6,$f8
    452c:	44803000 	mtc1	zero,$f6
    4530:	46028482 	mul.s	$f18,$f16,$f2
    4534:	46125100 	add.s	$f4,$f10,$f18
    4538:	e4840018 	swc1	$f4,24(a0)
    453c:	c4800018 	lwc1	$f0,24(a0)
    4540:	4606003c 	c.lt.s	$f0,$f6
    4544:	00000000 	nop
    4548:	45020006 	bc1fl	4564 <func_800A4D9C+0x68>
    454c:	c4820014 	lwc1	$f2,20(a0)
    4550:	c4880014 	lwc1	$f8,20(a0)
    4554:	46080400 	add.s	$f16,$f0,$f8
    4558:	10000008 	b	457c <func_800A4D9C+0x80>
    455c:	e4900018 	swc1	$f16,24(a0)
    4560:	c4820014 	lwc1	$f2,20(a0)
    4564:	4600103e 	c.le.s	$f2,$f0
    4568:	00000000 	nop
    456c:	45000003 	bc1f	457c <func_800A4D9C+0x80>
    4570:	00000000 	nop
    4574:	46020281 	sub.s	$f10,$f0,$f2
    4578:	e48a0018 	swc1	$f10,24(a0)
    457c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4580:	00000000 	nop
    4584:	8fbf0014 	lw	ra,20(sp)
    4588:	27bd0018 	addiu	sp,sp,24
    458c:	00001025 	move	v0,zero
    4590:	03e00008 	jr	ra
    4594:	00000000 	nop

00004598 <func_800A4E38>:
    4598:	3c0e0000 	lui	t6,0x0
    459c:	8dce0000 	lw	t6,0(t6)
    45a0:	27bdffe8 	addiu	sp,sp,-24
    45a4:	afbf0014 	sw	ra,20(sp)
    45a8:	85cf0110 	lh	t7,272(t6)
    45ac:	3c010000 	lui	at,0x0
    45b0:	c4280728 	lwc1	$f8,1832(at)
    45b4:	448f2000 	mtc1	t7,$f4
    45b8:	c490001c 	lwc1	$f16,28(a0)
    45bc:	c48a0018 	lwc1	$f10,24(a0)
    45c0:	468021a0 	cvt.s.w	$f6,$f4
    45c4:	c48c000c 	lwc1	$f12,12(a0)
    45c8:	46083082 	mul.s	$f2,$f6,$f8
    45cc:	00000000 	nop
    45d0:	46028482 	mul.s	$f18,$f16,$f2
    45d4:	46125100 	add.s	$f4,$f10,$f18
    45d8:	e4840018 	swc1	$f4,24(a0)
    45dc:	c4800018 	lwc1	$f0,24(a0)
    45e0:	460c003c 	c.lt.s	$f0,$f12
    45e4:	00000000 	nop
    45e8:	45000006 	bc1f	4604 <func_800A4E38+0x6c>
    45ec:	00000000 	nop
    45f0:	460c0181 	sub.s	$f6,$f0,$f12
    45f4:	c4880010 	lwc1	$f8,16(a0)
    45f8:	46083400 	add.s	$f16,$f6,$f8
    45fc:	10000009 	b	4624 <func_800A4E38+0x8c>
    4600:	e4900018 	swc1	$f16,24(a0)
    4604:	c4820010 	lwc1	$f2,16(a0)
    4608:	4600103e 	c.le.s	$f2,$f0
    460c:	00000000 	nop
    4610:	45000004 	bc1f	4624 <func_800A4E38+0x8c>
    4614:	00000000 	nop
    4618:	46020281 	sub.s	$f10,$f0,$f2
    461c:	460c5480 	add.s	$f18,$f10,$f12
    4620:	e4920018 	swc1	$f18,24(a0)
    4624:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4628:	00000000 	nop
    462c:	8fbf0014 	lw	ra,20(sp)
    4630:	27bd0018 	addiu	sp,sp,24
    4634:	00001025 	move	v0,zero
    4638:	03e00008 	jr	ra
    463c:	00000000 	nop

00004640 <func_800A4EE0>:
    4640:	3c0e0000 	lui	t6,0x0
    4644:	8dce0000 	lw	t6,0(t6)
    4648:	27bdffe0 	addiu	sp,sp,-32
    464c:	afbf001c 	sw	ra,28(sp)
    4650:	afb00018 	sw	s0,24(sp)
    4654:	85cf0110 	lh	t7,272(t6)
    4658:	c4800018 	lwc1	$f0,24(a0)
    465c:	c48c0010 	lwc1	$f12,16(a0)
    4660:	448f2000 	mtc1	t7,$f4
    4664:	3c010000 	lui	at,0x0
    4668:	46006032 	c.eq.s	$f12,$f0
    466c:	c428072c 	lwc1	$f8,1836(at)
    4670:	468021a0 	cvt.s.w	$f6,$f4
    4674:	00808025 	move	s0,a0
    4678:	46083382 	mul.s	$f14,$f6,$f8
    467c:	4502000d 	bc1fl	46b4 <func_800A4EE0+0x74>
    4680:	c602001c 	lwc1	$f2,28(s0)
    4684:	4600028d 	trunc.w.s	$f10,$f0
    4688:	8c840008 	lw	a0,8(a0)
    468c:	92060000 	lbu	a2,0(s0)
    4690:	8e070020 	lw	a3,32(s0)
    4694:	44055000 	mfc1	a1,$f10
    4698:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    469c:	00000000 	nop
    46a0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    46a4:	02002025 	move	a0,s0
    46a8:	10000021 	b	4730 <func_800A4EE0+0xf0>
    46ac:	24020001 	li	v0,1
    46b0:	c602001c 	lwc1	$f2,28(s0)
    46b4:	44808000 	mtc1	zero,$f16
    46b8:	460e1482 	mul.s	$f18,$f2,$f14
    46bc:	46120100 	add.s	$f4,$f0,$f18
    46c0:	e6040018 	swc1	$f4,24(s0)
    46c4:	c6000018 	lwc1	$f0,24(s0)
    46c8:	460c0181 	sub.s	$f6,$f0,$f12
    46cc:	46023202 	mul.s	$f8,$f6,$f2
    46d0:	4608803c 	c.lt.s	$f16,$f8
    46d4:	00000000 	nop
    46d8:	45020004 	bc1fl	46ec <func_800A4EE0+0xac>
    46dc:	4610003c 	c.lt.s	$f0,$f16
    46e0:	10000010 	b	4724 <func_800A4EE0+0xe4>
    46e4:	e60c0018 	swc1	$f12,24(s0)
    46e8:	4610003c 	c.lt.s	$f0,$f16
    46ec:	00000000 	nop
    46f0:	45020006 	bc1fl	470c <func_800A4EE0+0xcc>
    46f4:	c6020014 	lwc1	$f2,20(s0)
    46f8:	c60a0014 	lwc1	$f10,20(s0)
    46fc:	460a0480 	add.s	$f18,$f0,$f10
    4700:	10000008 	b	4724 <func_800A4EE0+0xe4>
    4704:	e6120018 	swc1	$f18,24(s0)
    4708:	c6020014 	lwc1	$f2,20(s0)
    470c:	4600103e 	c.le.s	$f2,$f0
    4710:	00000000 	nop
    4714:	45000003 	bc1f	4724 <func_800A4EE0+0xe4>
    4718:	00000000 	nop
    471c:	46020101 	sub.s	$f4,$f0,$f2
    4720:	e6040018 	swc1	$f4,24(s0)
    4724:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4728:	02002025 	move	a0,s0
    472c:	00001025 	move	v0,zero
    4730:	8fbf001c 	lw	ra,28(sp)
    4734:	8fb00018 	lw	s0,24(sp)
    4738:	27bd0020 	addiu	sp,sp,32
    473c:	03e00008 	jr	ra
    4740:	00000000 	nop

00004744 <SkelAnime_ChangeAnimImpl>:
    4744:	27bdffe0 	addiu	sp,sp,-32
    4748:	c7ac0038 	lwc1	$f12,56(sp)
    474c:	44802000 	mtc1	zero,$f4
    4750:	93ae0037 	lbu	t6,55(sp)
    4754:	afbf001c 	sw	ra,28(sp)
    4758:	46046032 	c.eq.s	$f12,$f4
    475c:	afb00018 	sw	s0,24(sp)
    4760:	afa50024 	sw	a1,36(sp)
    4764:	afa60028 	sw	a2,40(sp)
    4768:	afa7002c 	sw	a3,44(sp)
    476c:	00808025 	move	s0,a0
    4770:	45010035 	bc1t	4848 <SkelAnime_ChangeAnimImpl+0x104>
    4774:	a08e0001 	sb	t6,1(a0)
    4778:	8faf0024 	lw	t7,36(sp)
    477c:	8c980008 	lw	t8,8(a0)
    4780:	c7a6002c 	lwc1	$f6,44(sp)
    4784:	55f80007 	bnel	t7,t8,47a4 <SkelAnime_ChangeAnimImpl+0x60>
    4788:	44805000 	mtc1	zero,$f10
    478c:	c4880018 	lwc1	$f8,24(a0)
    4790:	46083032 	c.eq.s	$f6,$f8
    4794:	00000000 	nop
    4798:	4501002b 	bc1t	4848 <SkelAnime_ChangeAnimImpl+0x104>
    479c:	00000000 	nop
    47a0:	44805000 	mtc1	zero,$f10
    47a4:	02002025 	move	a0,s0
    47a8:	83a2003f 	lb	v0,63(sp)
    47ac:	460a603c 	c.lt.s	$f12,$f10
    47b0:	00000000 	nop
    47b4:	4500000a 	bc1f	47e0 <SkelAnime_ChangeAnimImpl+0x9c>
    47b8:	00000000 	nop
    47bc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    47c0:	e7ac0038 	swc1	$f12,56(sp)
    47c4:	02002025 	move	a0,s0
    47c8:	8e050024 	lw	a1,36(s0)
    47cc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    47d0:	8e060020 	lw	a2,32(s0)
    47d4:	c7ac0038 	lwc1	$f12,56(sp)
    47d8:	10000014 	b	482c <SkelAnime_ChangeAnimImpl+0xe8>
    47dc:	46006307 	neg.s	$f12,$f12
    47e0:	10400006 	beqz	v0,47fc <SkelAnime_ChangeAnimImpl+0xb8>
    47e4:	3c080000 	lui	t0,0x0
    47e8:	3c190000 	lui	t9,0x0
    47ec:	27390000 	addiu	t9,t9,0
    47f0:	ae190030 	sw	t9,48(s0)
    47f4:	10000003 	b	4804 <SkelAnime_ChangeAnimImpl+0xc0>
    47f8:	a2020003 	sb	v0,3(s0)
    47fc:	25080000 	addiu	t0,t0,0
    4800:	ae080030 	sw	t0,48(s0)
    4804:	c7b0002c 	lwc1	$f16,44(sp)
    4808:	92060000 	lbu	a2,0(s0)
    480c:	8e070024 	lw	a3,36(s0)
    4810:	4600848d 	trunc.w.s	$f18,$f16
    4814:	e7ac0038 	swc1	$f12,56(sp)
    4818:	8fa40024 	lw	a0,36(sp)
    481c:	44059000 	mfc1	a1,$f18
    4820:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4824:	00000000 	nop
    4828:	c7ac0038 	lwc1	$f12,56(sp)
    482c:	3c013f80 	lui	at,0x3f80
    4830:	44813000 	mtc1	at,$f6
    4834:	44812000 	mtc1	at,$f4
    4838:	460c3203 	div.s	$f8,$f6,$f12
    483c:	e6040028 	swc1	$f4,40(s0)
    4840:	1000000e 	b	487c <SkelAnime_ChangeAnimImpl+0x138>
    4844:	e608002c 	swc1	$f8,44(s0)
    4848:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    484c:	02002025 	move	a0,s0
    4850:	c7aa002c 	lwc1	$f10,44(sp)
    4854:	8fa40024 	lw	a0,36(sp)
    4858:	92060000 	lbu	a2,0(s0)
    485c:	4600540d 	trunc.w.s	$f16,$f10
    4860:	8e070020 	lw	a3,32(s0)
    4864:	44058000 	mfc1	a1,$f16
    4868:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    486c:	00000000 	nop
    4870:	44809000 	mtc1	zero,$f18
    4874:	00000000 	nop
    4878:	e6120028 	swc1	$f18,40(s0)
    487c:	8fab0024 	lw	t3,36(sp)
    4880:	ae0b0008 	sw	t3,8(s0)
    4884:	c7a4002c 	lwc1	$f4,44(sp)
    4888:	e604000c 	swc1	$f4,12(s0)
    488c:	c7a60030 	lwc1	$f6,48(sp)
    4890:	e6060010 	swc1	$f6,16(s0)
    4894:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4898:	8fa40024 	lw	a0,36(sp)
    489c:	44824000 	mtc1	v0,$f8
    48a0:	92030001 	lbu	v1,1(s0)
    48a4:	468042a0 	cvt.s.w	$f10,$f8
    48a8:	28610004 	slti	at,v1,4
    48ac:	14200004 	bnez	at,48c0 <SkelAnime_ChangeAnimImpl+0x17c>
    48b0:	e60a0014 	swc1	$f10,20(s0)
    48b4:	44808000 	mtc1	zero,$f16
    48b8:	1000000a 	b	48e4 <SkelAnime_ChangeAnimImpl+0x1a0>
    48bc:	e6100018 	swc1	$f16,24(s0)
    48c0:	c7b2002c 	lwc1	$f18,44(sp)
    48c4:	28610002 	slti	at,v1,2
    48c8:	10200006 	beqz	at,48e4 <SkelAnime_ChangeAnimImpl+0x1a0>
    48cc:	e6120018 	swc1	$f18,24(s0)
    48d0:	3c013f80 	lui	at,0x3f80
    48d4:	44813000 	mtc1	at,$f6
    48d8:	c6040014 	lwc1	$f4,20(s0)
    48dc:	46062201 	sub.s	$f8,$f4,$f6
    48e0:	e6080010 	swc1	$f8,16(s0)
    48e4:	c7aa0028 	lwc1	$f10,40(sp)
    48e8:	e60a001c 	swc1	$f10,28(s0)
    48ec:	8fbf001c 	lw	ra,28(sp)
    48f0:	8fb00018 	lw	s0,24(sp)
    48f4:	27bd0020 	addiu	sp,sp,32
    48f8:	03e00008 	jr	ra
    48fc:	00000000 	nop

00004900 <SkelAnime_ChangeAnim>:
    4900:	27bdffd8 	addiu	sp,sp,-40
    4904:	44866000 	mtc1	a2,$f12
    4908:	44877000 	mtc1	a3,$f14
    490c:	c7a40038 	lwc1	$f4,56(sp)
    4910:	93ae003f 	lbu	t6,63(sp)
    4914:	c7a60040 	lwc1	$f6,64(sp)
    4918:	afbf0024 	sw	ra,36(sp)
    491c:	44066000 	mfc1	a2,$f12
    4920:	44077000 	mfc1	a3,$f14
    4924:	afa0001c 	sw	zero,28(sp)
    4928:	e7a40010 	swc1	$f4,16(sp)
    492c:	afae0014 	sw	t6,20(sp)
    4930:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4934:	e7a60018 	swc1	$f6,24(sp)
    4938:	8fbf0024 	lw	ra,36(sp)
    493c:	27bd0028 	addiu	sp,sp,40
    4940:	03e00008 	jr	ra
    4944:	00000000 	nop

00004948 <SkelAnime_ChangeAnimDefaultStop>:
    4948:	27bdffd8 	addiu	sp,sp,-40
    494c:	afbf0024 	sw	ra,36(sp)
    4950:	afa40028 	sw	a0,40(sp)
    4954:	afa5002c 	sw	a1,44(sp)
    4958:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    495c:	00a02025 	move	a0,a1
    4960:	44822000 	mtc1	v0,$f4
    4964:	44800000 	mtc1	zero,$f0
    4968:	240e0002 	li	t6,2
    496c:	468021a0 	cvt.s.w	$f6,$f4
    4970:	44070000 	mfc1	a3,$f0
    4974:	afae0014 	sw	t6,20(sp)
    4978:	8fa40028 	lw	a0,40(sp)
    497c:	8fa5002c 	lw	a1,44(sp)
    4980:	3c063f80 	lui	a2,0x3f80
    4984:	e7a60010 	swc1	$f6,16(sp)
    4988:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    498c:	e7a00018 	swc1	$f0,24(sp)
    4990:	8fbf0024 	lw	ra,36(sp)
    4994:	27bd0028 	addiu	sp,sp,40
    4998:	03e00008 	jr	ra
    499c:	00000000 	nop

000049a0 <SkelAnime_ChangeAnimTransitionStop>:
    49a0:	27bdffd8 	addiu	sp,sp,-40
    49a4:	afbf0024 	sw	ra,36(sp)
    49a8:	afa40028 	sw	a0,40(sp)
    49ac:	afa5002c 	sw	a1,44(sp)
    49b0:	afa60030 	sw	a2,48(sp)
    49b4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    49b8:	00a02025 	move	a0,a1
    49bc:	44822000 	mtc1	v0,$f4
    49c0:	c7a80030 	lwc1	$f8,48(sp)
    49c4:	240e0002 	li	t6,2
    49c8:	468021a0 	cvt.s.w	$f6,$f4
    49cc:	afae0014 	sw	t6,20(sp)
    49d0:	8fa40028 	lw	a0,40(sp)
    49d4:	8fa5002c 	lw	a1,44(sp)
    49d8:	3c063f80 	lui	a2,0x3f80
    49dc:	24070000 	li	a3,0
    49e0:	e7a60010 	swc1	$f6,16(sp)
    49e4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    49e8:	e7a80018 	swc1	$f8,24(sp)
    49ec:	8fbf0024 	lw	ra,36(sp)
    49f0:	27bd0028 	addiu	sp,sp,40
    49f4:	03e00008 	jr	ra
    49f8:	00000000 	nop

000049fc <SkelAnime_ChangeAnimPlaybackStop>:
    49fc:	27bdffd8 	addiu	sp,sp,-40
    4a00:	afbf0024 	sw	ra,36(sp)
    4a04:	afa40028 	sw	a0,40(sp)
    4a08:	afa5002c 	sw	a1,44(sp)
    4a0c:	afa60030 	sw	a2,48(sp)
    4a10:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4a14:	00a02025 	move	a0,a1
    4a18:	44822000 	mtc1	v0,$f4
    4a1c:	44800000 	mtc1	zero,$f0
    4a20:	240e0002 	li	t6,2
    4a24:	468021a0 	cvt.s.w	$f6,$f4
    4a28:	44070000 	mfc1	a3,$f0
    4a2c:	afae0014 	sw	t6,20(sp)
    4a30:	8fa40028 	lw	a0,40(sp)
    4a34:	8fa5002c 	lw	a1,44(sp)
    4a38:	8fa60030 	lw	a2,48(sp)
    4a3c:	e7a60010 	swc1	$f6,16(sp)
    4a40:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4a44:	e7a00018 	swc1	$f0,24(sp)
    4a48:	8fbf0024 	lw	ra,36(sp)
    4a4c:	27bd0028 	addiu	sp,sp,40
    4a50:	03e00008 	jr	ra
    4a54:	00000000 	nop

00004a58 <SkelAnime_ChangeAnimDefaultRepeat>:
    4a58:	27bdffd8 	addiu	sp,sp,-40
    4a5c:	afbf0024 	sw	ra,36(sp)
    4a60:	afa40028 	sw	a0,40(sp)
    4a64:	afa5002c 	sw	a1,44(sp)
    4a68:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4a6c:	00a02025 	move	a0,a1
    4a70:	44822000 	mtc1	v0,$f4
    4a74:	44800000 	mtc1	zero,$f0
    4a78:	8fa40028 	lw	a0,40(sp)
    4a7c:	468021a0 	cvt.s.w	$f6,$f4
    4a80:	44070000 	mfc1	a3,$f0
    4a84:	8fa5002c 	lw	a1,44(sp)
    4a88:	3c063f80 	lui	a2,0x3f80
    4a8c:	afa00014 	sw	zero,20(sp)
    4a90:	e7a00018 	swc1	$f0,24(sp)
    4a94:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4a98:	e7a60010 	swc1	$f6,16(sp)
    4a9c:	8fbf0024 	lw	ra,36(sp)
    4aa0:	27bd0028 	addiu	sp,sp,40
    4aa4:	03e00008 	jr	ra
    4aa8:	00000000 	nop

00004aac <SkelAnime_ChangeAnimTransitionRepeat>:
    4aac:	44800000 	mtc1	zero,$f0
    4ab0:	27bdffd8 	addiu	sp,sp,-40
    4ab4:	44866000 	mtc1	a2,$f12
    4ab8:	afbf0024 	sw	ra,36(sp)
    4abc:	44070000 	mfc1	a3,$f0
    4ac0:	3c063f80 	lui	a2,0x3f80
    4ac4:	afa00014 	sw	zero,20(sp)
    4ac8:	e7a00010 	swc1	$f0,16(sp)
    4acc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4ad0:	e7ac0018 	swc1	$f12,24(sp)
    4ad4:	8fbf0024 	lw	ra,36(sp)
    4ad8:	27bd0028 	addiu	sp,sp,40
    4adc:	03e00008 	jr	ra
    4ae0:	00000000 	nop

00004ae4 <SkelAnime_ChangeAnimPlaybackRepeat>:
    4ae4:	27bdffd8 	addiu	sp,sp,-40
    4ae8:	afbf0024 	sw	ra,36(sp)
    4aec:	afa40028 	sw	a0,40(sp)
    4af0:	afa5002c 	sw	a1,44(sp)
    4af4:	afa60030 	sw	a2,48(sp)
    4af8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4afc:	00a02025 	move	a0,a1
    4b00:	44822000 	mtc1	v0,$f4
    4b04:	44800000 	mtc1	zero,$f0
    4b08:	8fa40028 	lw	a0,40(sp)
    4b0c:	468021a0 	cvt.s.w	$f6,$f4
    4b10:	44070000 	mfc1	a3,$f0
    4b14:	8fa5002c 	lw	a1,44(sp)
    4b18:	8fa60030 	lw	a2,48(sp)
    4b1c:	afa00014 	sw	zero,20(sp)
    4b20:	e7a00018 	swc1	$f0,24(sp)
    4b24:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4b28:	e7a60010 	swc1	$f6,16(sp)
    4b2c:	8fbf0024 	lw	ra,36(sp)
    4b30:	27bd0028 	addiu	sp,sp,40
    4b34:	03e00008 	jr	ra
    4b38:	00000000 	nop

00004b3c <SkelAnime_AnimSetStop>:
    4b3c:	27bdffe8 	addiu	sp,sp,-24
    4b40:	afbf0014 	sw	ra,20(sp)
    4b44:	c4840014 	lwc1	$f4,20(a0)
    4b48:	240e0002 	li	t6,2
    4b4c:	a08e0001 	sb	t6,1(a0)
    4b50:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4b54:	e4840010 	swc1	$f4,16(a0)
    4b58:	8fbf0014 	lw	ra,20(sp)
    4b5c:	27bd0018 	addiu	sp,sp,24
    4b60:	03e00008 	jr	ra
    4b64:	00000000 	nop

00004b68 <SkelAnime_AnimReverse>:
    4b68:	c486001c 	lwc1	$f6,28(a0)
    4b6c:	c480000c 	lwc1	$f0,12(a0)
    4b70:	c4840010 	lwc1	$f4,16(a0)
    4b74:	46003207 	neg.s	$f8,$f6
    4b78:	e4800010 	swc1	$f0,16(a0)
    4b7c:	e488001c 	swc1	$f8,28(a0)
    4b80:	03e00008 	jr	ra
    4b84:	e484000c 	swc1	$f4,12(a0)

00004b88 <func_800A5428>:
    4b88:	27bdfff8 	addiu	sp,sp,-8
    4b8c:	afb00004 	sw	s0,4(sp)
    4b90:	90830000 	lbu	v1,0(a0)
    4b94:	00a08025 	move	s0,a1
    4b98:	00001025 	move	v0,zero
    4b9c:	58600012 	blezl	v1,4be8 <func_800A5428+0x60>
    4ba0:	8fb00004 	lw	s0,4(sp)
    4ba4:	90e50000 	lbu	a1,0(a3)
    4ba8:	24420001 	addiu	v0,v0,1
    4bac:	24e70001 	addiu	a3,a3,1
    4bb0:	50a00009 	beqzl	a1,4bd8 <func_800A5428+0x50>
    4bb4:	0043082a 	slt	at,v0,v1
    4bb8:	88cf0000 	lwl	t7,0(a2)
    4bbc:	98cf0003 	lwr	t7,3(a2)
    4bc0:	aa0f0000 	swl	t7,0(s0)
    4bc4:	ba0f0003 	swr	t7,3(s0)
    4bc8:	94cf0004 	lhu	t7,4(a2)
    4bcc:	a60f0004 	sh	t7,4(s0)
    4bd0:	90830000 	lbu	v1,0(a0)
    4bd4:	0043082a 	slt	at,v0,v1
    4bd8:	26100006 	addiu	s0,s0,6
    4bdc:	1420fff1 	bnez	at,4ba4 <func_800A5428+0x1c>
    4be0:	24c60006 	addiu	a2,a2,6
    4be4:	8fb00004 	lw	s0,4(sp)
    4be8:	03e00008 	jr	ra
    4bec:	27bd0008 	addiu	sp,sp,8

00004bf0 <func_800A5490>:
    4bf0:	27bdfff8 	addiu	sp,sp,-8
    4bf4:	afb00004 	sw	s0,4(sp)
    4bf8:	90830000 	lbu	v1,0(a0)
    4bfc:	00a08025 	move	s0,a1
    4c00:	00001025 	move	v0,zero
    4c04:	58600013 	blezl	v1,4c54 <func_800A5490+0x64>
    4c08:	8fb00004 	lw	s0,4(sp)
    4c0c:	90e50000 	lbu	a1,0(a3)
    4c10:	24420001 	addiu	v0,v0,1
    4c14:	24e70001 	addiu	a3,a3,1
    4c18:	2ca50001 	sltiu	a1,a1,1
    4c1c:	50a00009 	beqzl	a1,4c44 <func_800A5490+0x54>
    4c20:	0043082a 	slt	at,v0,v1
    4c24:	88cf0000 	lwl	t7,0(a2)
    4c28:	98cf0003 	lwr	t7,3(a2)
    4c2c:	aa0f0000 	swl	t7,0(s0)
    4c30:	ba0f0003 	swr	t7,3(s0)
    4c34:	94cf0004 	lhu	t7,4(a2)
    4c38:	a60f0004 	sh	t7,4(s0)
    4c3c:	90830000 	lbu	v1,0(a0)
    4c40:	0043082a 	slt	at,v0,v1
    4c44:	26100006 	addiu	s0,s0,6
    4c48:	1420fff0 	bnez	at,4c0c <func_800A5490+0x1c>
    4c4c:	24c60006 	addiu	a2,a2,6
    4c50:	8fb00004 	lw	s0,4(sp)
    4c54:	03e00008 	jr	ra
    4c58:	27bd0008 	addiu	sp,sp,8

00004c5c <func_800A54FC>:
    4c5c:	27bdffc8 	addiu	sp,sp,-56
    4c60:	afbf0034 	sw	ra,52(sp)
    4c64:	afb10030 	sw	s1,48(sp)
    4c68:	afb0002c 	sw	s0,44(sp)
    4c6c:	f7b80020 	sdc1	$f24,32(sp)
    4c70:	f7b60018 	sdc1	$f22,24(sp)
    4c74:	f7b40010 	sdc1	$f20,16(sp)
    4c78:	afa60040 	sw	a2,64(sp)
    4c7c:	908e0035 	lbu	t6,53(a0)
    4c80:	00808025 	move	s0,a0
    4c84:	00a08825 	move	s1,a1
    4c88:	31cf0010 	andi	t7,t6,0x10
    4c8c:	51e00007 	beqzl	t7,4cac <func_800A54FC+0x50>
    4c90:	8e020020 	lw	v0,32(s0)
    4c94:	44800000 	mtc1	zero,$f0
    4c98:	00000000 	nop
    4c9c:	e4a00008 	swc1	$f0,8(a1)
    4ca0:	10000030 	b	4d64 <func_800A54FC+0x108>
    4ca4:	e4a00000 	swc1	$f0,0(a1)
    4ca8:	8e020020 	lw	v0,32(s0)
    4cac:	87a40042 	lh	a0,66(sp)
    4cb0:	84580000 	lh	t8,0(v0)
    4cb4:	84590004 	lh	t9,4(v0)
    4cb8:	44982000 	mtc1	t8,$f4
    4cbc:	44993000 	mtc1	t9,$f6
    4cc0:	46802520 	cvt.s.w	$f20,$f4
    4cc4:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4cc8:	468035a0 	cvt.s.w	$f22,$f6
    4ccc:	46000606 	mov.s	$f24,$f0
    4cd0:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4cd4:	87a40042 	lh	a0,66(sp)
    4cd8:	4600a202 	mul.s	$f8,$f20,$f0
    4cdc:	00000000 	nop
    4ce0:	4618b282 	mul.s	$f10,$f22,$f24
    4ce4:	00000000 	nop
    4ce8:	4600b482 	mul.s	$f18,$f22,$f0
    4cec:	00000000 	nop
    4cf0:	4618a102 	mul.s	$f4,$f20,$f24
    4cf4:	460a4400 	add.s	$f16,$f8,$f10
    4cf8:	e6300000 	swc1	$f16,0(s1)
    4cfc:	46049181 	sub.s	$f6,$f18,$f4
    4d00:	e6260008 	swc1	$f6,8(s1)
    4d04:	86080038 	lh	t0,56(s0)
    4d08:	8609003c 	lh	t1,60(s0)
    4d0c:	86040036 	lh	a0,54(s0)
    4d10:	44884000 	mtc1	t0,$f8
    4d14:	44895000 	mtc1	t1,$f10
    4d18:	46804520 	cvt.s.w	$f20,$f8
    4d1c:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4d20:	468055a0 	cvt.s.w	$f22,$f10
    4d24:	46000606 	mov.s	$f24,$f0
    4d28:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4d2c:	86040036 	lh	a0,54(s0)
    4d30:	4600a402 	mul.s	$f16,$f20,$f0
    4d34:	c6260000 	lwc1	$f6,0(s1)
    4d38:	4618b482 	mul.s	$f18,$f22,$f24
    4d3c:	46128100 	add.s	$f4,$f16,$f18
    4d40:	4600b282 	mul.s	$f10,$f22,$f0
    4d44:	44800000 	mtc1	zero,$f0
    4d48:	4618a402 	mul.s	$f16,$f20,$f24
    4d4c:	46043201 	sub.s	$f8,$f6,$f4
    4d50:	c6260008 	lwc1	$f6,8(s1)
    4d54:	e6280000 	swc1	$f8,0(s1)
    4d58:	46105481 	sub.s	$f18,$f10,$f16
    4d5c:	46123101 	sub.s	$f4,$f6,$f18
    4d60:	e6240008 	swc1	$f4,8(s1)
    4d64:	87aa0042 	lh	t2,66(sp)
    4d68:	8e020020 	lw	v0,32(s0)
    4d6c:	860c003e 	lh	t4,62(s0)
    4d70:	a60a0036 	sh	t2,54(s0)
    4d74:	844b0000 	lh	t3,0(v0)
    4d78:	a60b0038 	sh	t3,56(s0)
    4d7c:	a44c0000 	sh	t4,0(v0)
    4d80:	8e020020 	lw	v0,32(s0)
    4d84:	860e0042 	lh	t6,66(s0)
    4d88:	844d0004 	lh	t5,4(v0)
    4d8c:	a60d003c 	sh	t5,60(s0)
    4d90:	a44e0004 	sh	t6,4(v0)
    4d94:	92030035 	lbu	v1,53(s0)
    4d98:	306f0002 	andi	t7,v1,0x2
    4d9c:	11e00013 	beqz	t7,4dec <func_800A54FC+0x190>
    4da0:	30780010 	andi	t8,v1,0x10
    4da4:	53000004 	beqzl	t8,4db8 <func_800A54FC+0x15c>
    4da8:	8e190020 	lw	t9,32(s0)
    4dac:	10000009 	b	4dd4 <func_800A54FC+0x178>
    4db0:	e6200004 	swc1	$f0,4(s1)
    4db4:	8e190020 	lw	t9,32(s0)
    4db8:	8609003a 	lh	t1,58(s0)
    4dbc:	87280002 	lh	t0,2(t9)
    4dc0:	01095023 	subu	t2,t0,t1
    4dc4:	448a4000 	mtc1	t2,$f8
    4dc8:	00000000 	nop
    4dcc:	468042a0 	cvt.s.w	$f10,$f8
    4dd0:	e62a0004 	swc1	$f10,4(s1)
    4dd4:	8e020020 	lw	v0,32(s0)
    4dd8:	860c0040 	lh	t4,64(s0)
    4ddc:	844b0002 	lh	t3,2(v0)
    4de0:	a60b003a 	sh	t3,58(s0)
    4de4:	10000005 	b	4dfc <func_800A54FC+0x1a0>
    4de8:	a44c0002 	sh	t4,2(v0)
    4dec:	e6200004 	swc1	$f0,4(s1)
    4df0:	8e0d0020 	lw	t5,32(s0)
    4df4:	85ae0002 	lh	t6,2(t5)
    4df8:	a60e003a 	sh	t6,58(s0)
    4dfc:	920f0035 	lbu	t7,53(s0)
    4e00:	31f8ffef 	andi	t8,t7,0xffef
    4e04:	a2180035 	sb	t8,53(s0)
    4e08:	8fbf0034 	lw	ra,52(sp)
    4e0c:	8fb10030 	lw	s1,48(sp)
    4e10:	8fb0002c 	lw	s0,44(sp)
    4e14:	d7b80020 	ldc1	$f24,32(sp)
    4e18:	d7b60018 	ldc1	$f22,24(sp)
    4e1c:	d7b40010 	ldc1	$f20,16(sp)
    4e20:	03e00008 	jr	ra
    4e24:	27bd0038 	addiu	sp,sp,56

00004e28 <func_800A56C8>:
    4e28:	44856000 	mtc1	a1,$f12
    4e2c:	27bdffe8 	addiu	sp,sp,-24
    4e30:	afbf0014 	sw	ra,20(sp)
    4e34:	44056000 	mfc1	a1,$f12
    4e38:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4e3c:	3c063f80 	lui	a2,0x3f80
    4e40:	8fbf0014 	lw	ra,20(sp)
    4e44:	27bd0018 	addiu	sp,sp,24
    4e48:	03e00008 	jr	ra
    4e4c:	00000000 	nop

00004e50 <SkelAnime_Free>:
    4e50:	27bdffe8 	addiu	sp,sp,-24
    4e54:	afbf0014 	sw	ra,20(sp)
    4e58:	afa40018 	sw	a0,24(sp)
    4e5c:	afa5001c 	sw	a1,28(sp)
    4e60:	8c870020 	lw	a3,32(a0)
    4e64:	3c050000 	lui	a1,0x0
    4e68:	24a506b8 	addiu	a1,a1,1720
    4e6c:	10e00006 	beqz	a3,4e88 <SkelAnime_Free+0x38>
    4e70:	3c040000 	lui	a0,0x0
    4e74:	00e02025 	move	a0,a3
    4e78:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4e7c:	24060e91 	li	a2,3729
    4e80:	10000004 	b	4e94 <SkelAnime_Free+0x44>
    4e84:	8faf0018 	lw	t7,24(sp)
    4e88:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4e8c:	248406cc 	addiu	a0,a0,1740
    4e90:	8faf0018 	lw	t7,24(sp)
    4e94:	3c050000 	lui	a1,0x0
    4e98:	24a506e8 	addiu	a1,a1,1768
    4e9c:	8de40024 	lw	a0,36(t7)
    4ea0:	10800005 	beqz	a0,4eb8 <SkelAnime_Free+0x68>
    4ea4:	00000000 	nop
    4ea8:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4eac:	24060e93 	li	a2,3731
    4eb0:	10000005 	b	4ec8 <SkelAnime_Free+0x78>
    4eb4:	8fbf0014 	lw	ra,20(sp)
    4eb8:	3c040000 	lui	a0,0x0
    4ebc:	0c000000 	jal	0 <SkelAnime_LodDrawLimb>
    4ec0:	248406fc 	addiu	a0,a0,1788
    4ec4:	8fbf0014 	lw	ra,20(sp)
    4ec8:	27bd0018 	addiu	sp,sp,24
    4ecc:	03e00008 	jr	ra
    4ed0:	00000000 	nop

00004ed4 <SkelAnime_CopyVec3s>:
    4ed4:	908e0000 	lbu	t6,0(a0)
    4ed8:	00001025 	move	v0,zero
    4edc:	19c0000e 	blez	t6,4f18 <SkelAnime_CopyVec3s+0x44>
    4ee0:	00000000 	nop
    4ee4:	88d80000 	lwl	t8,0(a2)
    4ee8:	98d80003 	lwr	t8,3(a2)
    4eec:	24420001 	addiu	v0,v0,1
    4ef0:	24a50006 	addiu	a1,a1,6
    4ef4:	a8b8fffa 	swl	t8,-6(a1)
    4ef8:	b8b8fffd 	swr	t8,-3(a1)
    4efc:	94d80004 	lhu	t8,4(a2)
    4f00:	24c60006 	addiu	a2,a2,6
    4f04:	a4b8fffe 	sh	t8,-2(a1)
    4f08:	90990000 	lbu	t9,0(a0)
    4f0c:	0059082a 	slt	at,v0,t9
    4f10:	5420fff5 	bnezl	at,4ee8 <SkelAnime_CopyVec3s+0x14>
    4f14:	88d80000 	lwl	t8,0(a2)
    4f18:	03e00008 	jr	ra
    4f1c:	00000000 	nop
