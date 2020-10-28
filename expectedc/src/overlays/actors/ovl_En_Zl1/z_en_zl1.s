
build/src/overlays/actors/ovl_En_Zl1/z_en_zl1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B4AB40>:
       0:	03e00008 	jr	ra
       4:	00000000 	nop

00000008 <func_80B4AB48>:
       8:	03e00008 	jr	ra
       c:	00000000 	nop

00000010 <EnZl1_Init>:
      10:	27bdffc0 	addiu	sp,sp,-64
      14:	afb00028 	sw	s0,40(sp)
      18:	00808025 	move	s0,a0
      1c:	afbf002c 	sw	ra,44(sp)
      20:	3c040000 	lui	a0,0x0
      24:	afa50044 	sw	a1,68(sp)
      28:	0c000000 	jal	0 <func_80B4AB40>
      2c:	24840000 	addiu	a0,a0,0
      30:	44822000 	mtc1	v0,$f4
      34:	2605014c 	addiu	a1,s0,332
      38:	3c060000 	lui	a2,0x0
      3c:	468021a0 	cvt.s.w	$f6,$f4
      40:	24c60000 	addiu	a2,a2,0
      44:	afa50034 	sw	a1,52(sp)
      48:	8fa40044 	lw	a0,68(sp)
      4c:	00003825 	move	a3,zero
      50:	afa00010 	sw	zero,16(sp)
      54:	e7a6003c 	swc1	$f6,60(sp)
      58:	afa00014 	sw	zero,20(sp)
      5c:	0c000000 	jal	0 <func_80B4AB40>
      60:	afa00018 	sw	zero,24(sp)
      64:	44800000 	mtc1	zero,$f0
      68:	c7a8003c 	lwc1	$f8,60(sp)
      6c:	3c050000 	lui	a1,0x0
      70:	44070000 	mfc1	a3,$f0
      74:	24a50000 	addiu	a1,a1,0
      78:	8fa40034 	lw	a0,52(sp)
      7c:	3c063f80 	lui	a2,0x3f80
      80:	afa00014 	sw	zero,20(sp)
      84:	e7a80010 	swc1	$f8,16(sp)
      88:	0c000000 	jal	0 <func_80B4AB40>
      8c:	e7a00018 	swc1	$f0,24(sp)
      90:	26050194 	addiu	a1,s0,404
      94:	afa50030 	sw	a1,48(sp)
      98:	0c000000 	jal	0 <func_80B4AB40>
      9c:	8fa40044 	lw	a0,68(sp)
      a0:	3c070000 	lui	a3,0x0
      a4:	8fa50030 	lw	a1,48(sp)
      a8:	24e70000 	addiu	a3,a3,0
      ac:	8fa40044 	lw	a0,68(sp)
      b0:	0c000000 	jal	0 <func_80B4AB40>
      b4:	02003025 	move	a2,s0
      b8:	3c053c23 	lui	a1,0x3c23
      bc:	34a5d70a 	ori	a1,a1,0xd70a
      c0:	0c000000 	jal	0 <func_80B4AB40>
      c4:	02002025 	move	a0,s0
      c8:	3c060000 	lui	a2,0x0
      cc:	24c60000 	addiu	a2,a2,0
      d0:	260400b4 	addiu	a0,s0,180
      d4:	24050000 	li	a1,0
      d8:	0c000000 	jal	0 <func_80B4AB40>
      dc:	3c0741c0 	lui	a3,0x41c0
      e0:	a200001f 	sb	zero,31(s0)
      e4:	3c0e0000 	lui	t6,0x0
      e8:	8dce1360 	lw	t6,4960(t6)
      ec:	3c040000 	lui	a0,0x0
      f0:	29c10004 	slti	at,t6,4
      f4:	14200014 	bnez	at,148 <EnZl1_Init+0x138>
      f8:	00000000 	nop
      fc:	0c000000 	jal	0 <func_80B4AB40>
     100:	24840000 	addiu	a0,a0,0
     104:	44825000 	mtc1	v0,$f10
     108:	44800000 	mtc1	zero,$f0
     10c:	3c050000 	lui	a1,0x0
     110:	46805420 	cvt.s.w	$f16,$f10
     114:	44070000 	mfc1	a3,$f0
     118:	24a50000 	addiu	a1,a1,0
     11c:	8fa40034 	lw	a0,52(sp)
     120:	3c063f80 	lui	a2,0x3f80
     124:	afa00014 	sw	zero,20(sp)
     128:	e7b00010 	swc1	$f16,16(sp)
     12c:	0c000000 	jal	0 <func_80B4AB40>
     130:	e7a00018 	swc1	$f0,24(sp)
     134:	3c0f0000 	lui	t7,0x0
     138:	25ef0000 	addiu	t7,t7,0
     13c:	a60001e6 	sh	zero,486(s0)
     140:	10000052 	b	28c <EnZl1_Init+0x27c>
     144:	ae0f0190 	sw	t7,400(s0)
     148:	0c000000 	jal	0 <func_80B4AB40>
     14c:	24040009 	li	a0,9
     150:	1040000d 	beqz	v0,188 <EnZl1_Init+0x178>
     154:	00000000 	nop
     158:	0c000000 	jal	0 <func_80B4AB40>
     15c:	24040025 	li	a0,37
     160:	10400009 	beqz	v0,188 <EnZl1_Init+0x178>
     164:	00000000 	nop
     168:	0c000000 	jal	0 <func_80B4AB40>
     16c:	24040037 	li	a0,55
     170:	10400005 	beqz	v0,188 <EnZl1_Init+0x178>
     174:	00000000 	nop
     178:	0c000000 	jal	0 <func_80B4AB40>
     17c:	02002025 	move	a0,s0
     180:	10000043 	b	290 <EnZl1_Init+0x280>
     184:	8fbf002c 	lw	ra,44(sp)
     188:	0c000000 	jal	0 <func_80B4AB40>
     18c:	24040009 	li	a0,9
     190:	10400005 	beqz	v0,1a8 <EnZl1_Init+0x198>
     194:	00000000 	nop
     198:	0c000000 	jal	0 <func_80B4AB40>
     19c:	24040025 	li	a0,37
     1a0:	14400008 	bnez	v0,1c4 <EnZl1_Init+0x1b4>
     1a4:	00000000 	nop
     1a8:	0c000000 	jal	0 <func_80B4AB40>
     1ac:	24040009 	li	a0,9
     1b0:	10400019 	beqz	v0,218 <EnZl1_Init+0x208>
     1b4:	00000000 	nop
     1b8:	0c000000 	jal	0 <func_80B4AB40>
     1bc:	24040037 	li	a0,55
     1c0:	10400015 	beqz	v0,218 <EnZl1_Init+0x208>
     1c4:	3c040000 	lui	a0,0x0
     1c8:	0c000000 	jal	0 <func_80B4AB40>
     1cc:	24840000 	addiu	a0,a0,0
     1d0:	44829000 	mtc1	v0,$f18
     1d4:	44800000 	mtc1	zero,$f0
     1d8:	3c050000 	lui	a1,0x0
     1dc:	46809120 	cvt.s.w	$f4,$f18
     1e0:	44070000 	mfc1	a3,$f0
     1e4:	24a50000 	addiu	a1,a1,0
     1e8:	8fa40034 	lw	a0,52(sp)
     1ec:	3c063f80 	lui	a2,0x3f80
     1f0:	afa00014 	sw	zero,20(sp)
     1f4:	e7a40010 	swc1	$f4,16(sp)
     1f8:	0c000000 	jal	0 <func_80B4AB40>
     1fc:	e7a00018 	swc1	$f0,24(sp)
     200:	3c190000 	lui	t9,0x0
     204:	2418703d 	li	t8,28733
     208:	27390000 	addiu	t9,t9,0
     20c:	a618010e 	sh	t8,270(s0)
     210:	1000001e 	b	28c <EnZl1_Init+0x27c>
     214:	ae190190 	sw	t9,400(s0)
     218:	0c000000 	jal	0 <func_80B4AB40>
     21c:	24040040 	li	a0,64
     220:	10400016 	beqz	v0,27c <EnZl1_Init+0x26c>
     224:	340affff 	li	t2,0xffff
     228:	3c040000 	lui	a0,0x0
     22c:	0c000000 	jal	0 <func_80B4AB40>
     230:	24840000 	addiu	a0,a0,0
     234:	44823000 	mtc1	v0,$f6
     238:	44805000 	mtc1	zero,$f10
     23c:	3c050000 	lui	a1,0x0
     240:	46803220 	cvt.s.w	$f8,$f6
     244:	24a50000 	addiu	a1,a1,0
     248:	8fa40034 	lw	a0,52(sp)
     24c:	3c063f80 	lui	a2,0x3f80
     250:	24070000 	li	a3,0
     254:	afa00014 	sw	zero,20(sp)
     258:	e7a80010 	swc1	$f8,16(sp)
     25c:	0c000000 	jal	0 <func_80B4AB40>
     260:	e7aa0018 	swc1	$f10,24(sp)
     264:	3c090000 	lui	t1,0x0
     268:	2408703c 	li	t0,28732
     26c:	25290000 	addiu	t1,t1,0
     270:	a608010e 	sh	t0,270(s0)
     274:	10000005 	b	28c <EnZl1_Init+0x27c>
     278:	ae090190 	sw	t1,400(s0)
     27c:	3c0b0000 	lui	t3,0x0
     280:	256b0000 	addiu	t3,t3,0
     284:	a60a010e 	sh	t2,270(s0)
     288:	ae0b0190 	sw	t3,400(s0)
     28c:	8fbf002c 	lw	ra,44(sp)
     290:	8fb00028 	lw	s0,40(sp)
     294:	27bd0040 	addiu	sp,sp,64
     298:	03e00008 	jr	ra
     29c:	00000000 	nop

000002a0 <EnZl1_Destroy>:
     2a0:	27bdffe8 	addiu	sp,sp,-24
     2a4:	afbf0014 	sw	ra,20(sp)
     2a8:	afa40018 	sw	a0,24(sp)
     2ac:	afa5001c 	sw	a1,28(sp)
     2b0:	0c000000 	jal	0 <func_80B4AB40>
     2b4:	2484014c 	addiu	a0,a0,332
     2b8:	8fa50018 	lw	a1,24(sp)
     2bc:	8fa4001c 	lw	a0,28(sp)
     2c0:	0c000000 	jal	0 <func_80B4AB40>
     2c4:	24a50194 	addiu	a1,a1,404
     2c8:	8fbf0014 	lw	ra,20(sp)
     2cc:	27bd0018 	addiu	sp,sp,24
     2d0:	03e00008 	jr	ra
     2d4:	00000000 	nop

000002d8 <func_80B4AE18>:
     2d8:	27bdffe8 	addiu	sp,sp,-24
     2dc:	afbf0014 	sw	ra,20(sp)
     2e0:	8c8f0154 	lw	t7,340(a0)
     2e4:	3c0e0000 	lui	t6,0x0
     2e8:	25ce0000 	addiu	t6,t6,0
     2ec:	15cf0010 	bne	t6,t7,330 <func_80B4AE18+0x58>
     2f0:	00803025 	move	a2,a0
     2f4:	3c0141d0 	lui	at,0x41d0
     2f8:	44813000 	mtc1	at,$f6
     2fc:	c4840164 	lwc1	$f4,356(a0)
     300:	3c180000 	lui	t8,0x0
     304:	3c190000 	lui	t9,0x0
     308:	4606203c 	c.lt.s	$f4,$f6
     30c:	27180000 	addiu	t8,t8,0
     310:	27390000 	addiu	t9,t9,0
     314:	24080002 	li	t0,2
     318:	45020006 	bc1fl	334 <func_80B4AE18+0x5c>
     31c:	84c301fc 	lh	v1,508(a2)
     320:	ac9801f4 	sw	t8,500(a0)
     324:	ac9901f8 	sw	t9,504(a0)
     328:	10000027 	b	3c8 <func_80B4AE18+0xf0>
     32c:	a48801fc 	sh	t0,508(a0)
     330:	84c301fc 	lh	v1,508(a2)
     334:	2404001e 	li	a0,30
     338:	2405000a 	li	a1,10
     33c:	14600003 	bnez	v1,34c <func_80B4AE18+0x74>
     340:	2469ffff 	addiu	t1,v1,-1
     344:	10000004 	b	358 <func_80B4AE18+0x80>
     348:	00001025 	move	v0,zero
     34c:	a4c901fc 	sh	t1,508(a2)
     350:	84c301fc 	lh	v1,508(a2)
     354:	00601025 	move	v0,v1
     358:	54400007 	bnezl	v0,378 <func_80B4AE18+0xa0>
     35c:	28610004 	slti	at,v1,4
     360:	0c000000 	jal	0 <func_80B4AB40>
     364:	afa60018 	sw	a2,24(sp)
     368:	8fa60018 	lw	a2,24(sp)
     36c:	a4c201fc 	sh	v0,508(a2)
     370:	84c301fc 	lh	v1,508(a2)
     374:	28610004 	slti	at,v1,4
     378:	50200004 	beqzl	at,38c <func_80B4AE18+0xb4>
     37c:	a4c001fe 	sh	zero,510(a2)
     380:	10000002 	b	38c <func_80B4AE18+0xb4>
     384:	a4c301fe 	sh	v1,510(a2)
     388:	a4c001fe 	sh	zero,510(a2)
     38c:	84ca01fe 	lh	t2,510(a2)
     390:	3c0c0000 	lui	t4,0x0
     394:	258c0000 	addiu	t4,t4,0
     398:	000a5880 	sll	t3,t2,0x2
     39c:	016c1021 	addu	v0,t3,t4
     3a0:	8c4d0000 	lw	t5,0(v0)
     3a4:	84cf01f2 	lh	t7,498(a2)
     3a8:	3c190000 	lui	t9,0x0
     3ac:	accd01f4 	sw	t5,500(a2)
     3b0:	8c4e0000 	lw	t6,0(v0)
     3b4:	000fc080 	sll	t8,t7,0x2
     3b8:	0338c821 	addu	t9,t9,t8
     3bc:	acce01f8 	sw	t6,504(a2)
     3c0:	8f390000 	lw	t9,0(t9)
     3c4:	acd901ec 	sw	t9,492(a2)
     3c8:	8fbf0014 	lw	ra,20(sp)
     3cc:	27bd0018 	addiu	sp,sp,24
     3d0:	03e00008 	jr	ra
     3d4:	00000000 	nop

000003d8 <func_80B4AF18>:
     3d8:	27bdffc0 	addiu	sp,sp,-64
     3dc:	afbf002c 	sw	ra,44(sp)
     3e0:	afb10028 	sw	s1,40(sp)
     3e4:	afb00024 	sw	s0,36(sp)
     3e8:	8cae1c44 	lw	t6,7236(a1)
     3ec:	00808025 	move	s0,a0
     3f0:	00a08825 	move	s1,a1
     3f4:	afae003c 	sw	t6,60(sp)
     3f8:	8e180038 	lw	t8,56(s0)
     3fc:	00a02025 	move	a0,a1
     400:	02002825 	move	a1,s0
     404:	afb80010 	sw	t8,16(sp)
     408:	8e0f003c 	lw	t7,60(s0)
     40c:	26060200 	addiu	a2,s0,512
     410:	26070206 	addiu	a3,s0,518
     414:	afaf0014 	sw	t7,20(sp)
     418:	8e180040 	lw	t8,64(s0)
     41c:	0c000000 	jal	0 <func_80B4AB40>
     420:	afb80018 	sw	t8,24(sp)
     424:	861901e6 	lh	t9,486(s0)
     428:	02202825 	move	a1,s1
     42c:	02002025 	move	a0,s0
     430:	13200007 	beqz	t9,450 <func_80B4AF18+0x78>
     434:	00000000 	nop
     438:	0c000000 	jal	0 <func_80B4AB40>
     43c:	02002025 	move	a0,s0
     440:	50400014 	beqzl	v0,494 <func_80B4AF18+0xbc>
     444:	26060194 	addiu	a2,s0,404
     448:	10000011 	b	490 <func_80B4AF18+0xb8>
     44c:	a60001e6 	sh	zero,486(s0)
     450:	0c000000 	jal	0 <func_80B4AB40>
     454:	02202825 	move	a1,s1
     458:	10400004 	beqz	v0,46c <func_80B4AF18+0x94>
     45c:	8fa9003c 	lw	t1,60(sp)
     460:	24080001 	li	t0,1
     464:	1000000a 	b	490 <func_80B4AF18+0xb8>
     468:	a60801e6 	sh	t0,486(s0)
     46c:	c5240028 	lwc1	$f4,40(t1)
     470:	c6060028 	lwc1	$f6,40(s0)
     474:	02002025 	move	a0,s0
     478:	4604303e 	c.le.s	$f6,$f4
     47c:	00000000 	nop
     480:	45020004 	bc1fl	494 <func_80B4AF18+0xbc>
     484:	26060194 	addiu	a2,s0,404
     488:	0c000000 	jal	0 <func_80B4AB40>
     48c:	02202825 	move	a1,s1
     490:	26060194 	addiu	a2,s0,404
     494:	00c02825 	move	a1,a2
     498:	afa60034 	sw	a2,52(sp)
     49c:	0c000000 	jal	0 <func_80B4AB40>
     4a0:	02002025 	move	a0,s0
     4a4:	3c010001 	lui	at,0x1
     4a8:	34211e60 	ori	at,at,0x1e60
     4ac:	8fa60034 	lw	a2,52(sp)
     4b0:	02212821 	addu	a1,s1,at
     4b4:	0c000000 	jal	0 <func_80B4AB40>
     4b8:	02202025 	move	a0,s1
     4bc:	8fbf002c 	lw	ra,44(sp)
     4c0:	8fb00024 	lw	s0,36(sp)
     4c4:	8fb10028 	lw	s1,40(sp)
     4c8:	03e00008 	jr	ra
     4cc:	27bd0040 	addiu	sp,sp,64

000004d0 <func_80B4B010>:
     4d0:	27bdff90 	addiu	sp,sp,-112
     4d4:	afbf002c 	sw	ra,44(sp)
     4d8:	afb10028 	sw	s1,40(sp)
     4dc:	afb00024 	sw	s0,36(sp)
     4e0:	8cae1c44 	lw	t6,7236(a1)
     4e4:	3c180000 	lui	t8,0x0
     4e8:	27182060 	addiu	t8,t8,8288
     4ec:	afae006c 	sw	t6,108(sp)
     4f0:	8f090000 	lw	t1,0(t8)
     4f4:	27af0054 	addiu	t7,sp,84
     4f8:	8f190004 	lw	t9,4(t8)
     4fc:	ade90000 	sw	t1,0(t7)
     500:	8f090008 	lw	t1,8(t8)
     504:	3c0b0000 	lui	t3,0x0
     508:	256b206c 	addiu	t3,t3,8300
     50c:	adf90004 	sw	t9,4(t7)
     510:	ade90008 	sw	t1,8(t7)
     514:	8d6d0000 	lw	t5,0(t3)
     518:	27aa0048 	addiu	t2,sp,72
     51c:	8d6c0004 	lw	t4,4(t3)
     520:	ad4d0000 	sw	t5,0(t2)
     524:	8d6d0008 	lw	t5,8(t3)
     528:	3c0f0000 	lui	t7,0x0
     52c:	25ef2078 	addiu	t7,t7,8312
     530:	ad4c0004 	sw	t4,4(t2)
     534:	ad4d0008 	sw	t5,8(t2)
     538:	8df90000 	lw	t9,0(t7)
     53c:	27ae003c 	addiu	t6,sp,60
     540:	8df80004 	lw	t8,4(t7)
     544:	add90000 	sw	t9,0(t6)
     548:	8df90008 	lw	t9,8(t7)
     54c:	00808025 	move	s0,a0
     550:	00a08825 	move	s1,a1
     554:	add80004 	sw	t8,4(t6)
     558:	0c000000 	jal	0 <func_80B4AB40>
     55c:	add90008 	sw	t9,8(t6)
     560:	1040004b 	beqz	v0,690 <func_80B4B010+0x1c0>
     564:	3c040000 	lui	a0,0x0
     568:	0c000000 	jal	0 <func_80B4AB40>
     56c:	24840000 	addiu	a0,a0,0
     570:	44822000 	mtc1	v0,$f4
     574:	3c01c120 	lui	at,0xc120
     578:	44814000 	mtc1	at,$f8
     57c:	468021a0 	cvt.s.w	$f6,$f4
     580:	3c050000 	lui	a1,0x0
     584:	24090003 	li	t1,3
     588:	afa90014 	sw	t1,20(sp)
     58c:	24a50000 	addiu	a1,a1,0
     590:	2604014c 	addiu	a0,s0,332
     594:	e7a60010 	swc1	$f6,16(sp)
     598:	3c063f80 	lui	a2,0x3f80
     59c:	24070000 	li	a3,0
     5a0:	0c000000 	jal	0 <func_80B4AB40>
     5a4:	e7a80018 	swc1	$f8,24(sp)
     5a8:	0c000000 	jal	0 <func_80B4AB40>
     5ac:	02202025 	move	a0,s1
     5b0:	a60201e8 	sh	v0,488(s0)
     5b4:	02202025 	move	a0,s1
     5b8:	00002825 	move	a1,zero
     5bc:	0c000000 	jal	0 <func_80B4AB40>
     5c0:	24060001 	li	a2,1
     5c4:	02202025 	move	a0,s1
     5c8:	860501e8 	lh	a1,488(s0)
     5cc:	0c000000 	jal	0 <func_80B4AB40>
     5d0:	24060007 	li	a2,7
     5d4:	02202025 	move	a0,s1
     5d8:	860501e8 	lh	a1,488(s0)
     5dc:	8fa6006c 	lw	a2,108(sp)
     5e0:	0c000000 	jal	0 <func_80B4AB40>
     5e4:	24070021 	li	a3,33
     5e8:	3c010001 	lui	at,0x1
     5ec:	02211821 	addu	v1,s1,at
     5f0:	240800ff 	li	t0,255
     5f4:	240a0018 	li	t2,24
     5f8:	a0680b06 	sb	t0,2822(v1)
     5fc:	a0680b07 	sb	t0,2823(v1)
     600:	a0680b08 	sb	t0,2824(v1)
     604:	a06a0b09 	sb	t2,2825(v1)
     608:	00310821 	addu	at,at,s1
     60c:	240b0001 	li	t3,1
     610:	a02b0b05 	sb	t3,2821(at)
     614:	860501e8 	lh	a1,488(s0)
     618:	02202025 	move	a0,s1
     61c:	27a60054 	addiu	a2,sp,84
     620:	0c000000 	jal	0 <func_80B4AB40>
     624:	27a70048 	addiu	a3,sp,72
     628:	02202025 	move	a0,s1
     62c:	860501e8 	lh	a1,488(s0)
     630:	0c000000 	jal	0 <func_80B4AB40>
     634:	3c0641f0 	lui	a2,0x41f0
     638:	0c000000 	jal	0 <func_80B4AB40>
     63c:	24040020 	li	a0,32
     640:	0c000000 	jal	0 <func_80B4AB40>
     644:	24040002 	li	a0,2
     648:	27ac003c 	addiu	t4,sp,60
     64c:	8fa2006c 	lw	v0,108(sp)
     650:	8d8e0000 	lw	t6,0(t4)
     654:	44805000 	mtc1	zero,$f10
     658:	3c0f0000 	lui	t7,0x0
     65c:	ac4e0024 	sw	t6,36(v0)
     660:	8d8d0004 	lw	t5,4(t4)
     664:	25ef0000 	addiu	t7,t7,0
     668:	24040051 	li	a0,81
     66c:	ac4d0028 	sw	t5,40(v0)
     670:	8d8e0008 	lw	t6,8(t4)
     674:	e44a0068 	swc1	$f10,104(v0)
     678:	ac4e002c 	sw	t6,44(v0)
     67c:	a60001e2 	sh	zero,482(s0)
     680:	0c000000 	jal	0 <func_80B4AB40>
     684:	ae0f0190 	sw	t7,400(s0)
     688:	10000019 	b	6f0 <func_80B4B010+0x220>
     68c:	8fbf002c 	lw	ra,44(sp)
     690:	8618008a 	lh	t8,138(s0)
     694:	861900b6 	lh	t9,182(s0)
     698:	8fa9006c 	lw	t1,108(sp)
     69c:	03191023 	subu	v0,t8,t9
     6a0:	04400004 	bltz	v0,6b4 <func_80B4B010+0x1e4>
     6a4:	00021823 	negu	v1,v0
     6a8:	00021c00 	sll	v1,v0,0x10
     6ac:	10000003 	b	6bc <func_80B4B010+0x1ec>
     6b0:	00031c03 	sra	v1,v1,0x10
     6b4:	00031c00 	sll	v1,v1,0x10
     6b8:	00031c03 	sra	v1,v1,0x10
     6bc:	2861238e 	slti	at,v1,9102
     6c0:	5020000b 	beqzl	at,6f0 <func_80B4B010+0x220>
     6c4:	8fbf002c 	lw	ra,44(sp)
     6c8:	c5300028 	lwc1	$f16,40(t1)
     6cc:	c6120028 	lwc1	$f18,40(s0)
     6d0:	02002025 	move	a0,s0
     6d4:	4612803c 	c.lt.s	$f16,$f18
     6d8:	00000000 	nop
     6dc:	45030004 	bc1tl	6f0 <func_80B4B010+0x220>
     6e0:	8fbf002c 	lw	ra,44(sp)
     6e4:	0c000000 	jal	0 <func_80B4AB40>
     6e8:	02202825 	move	a1,s1
     6ec:	8fbf002c 	lw	ra,44(sp)
     6f0:	8fb00024 	lw	s0,36(sp)
     6f4:	8fb10028 	lw	s1,40(sp)
     6f8:	03e00008 	jr	ra
     6fc:	27bd0070 	addiu	sp,sp,112

00000700 <func_80B4B240>:
     700:	27bdff80 	addiu	sp,sp,-128
     704:	3c0f0000 	lui	t7,0x0
     708:	afbf002c 	sw	ra,44(sp)
     70c:	afb10028 	sw	s1,40(sp)
     710:	afb00024 	sw	s0,36(sp)
     714:	25ef2084 	addiu	t7,t7,8324
     718:	8df90000 	lw	t9,0(t7)
     71c:	27ae0074 	addiu	t6,sp,116
     720:	8df80004 	lw	t8,4(t7)
     724:	add90000 	sw	t9,0(t6)
     728:	8df90008 	lw	t9,8(t7)
     72c:	3c090000 	lui	t1,0x0
     730:	25292090 	addiu	t1,t1,8336
     734:	add80004 	sw	t8,4(t6)
     738:	add90008 	sw	t9,8(t6)
     73c:	8d2b0000 	lw	t3,0(t1)
     740:	27a80068 	addiu	t0,sp,104
     744:	8d2a0004 	lw	t2,4(t1)
     748:	ad0b0000 	sw	t3,0(t0)
     74c:	8d2b0008 	lw	t3,8(t1)
     750:	3c0d0000 	lui	t5,0x0
     754:	25ad209c 	addiu	t5,t5,8348
     758:	ad0a0004 	sw	t2,4(t0)
     75c:	ad0b0008 	sw	t3,8(t0)
     760:	8daf0000 	lw	t7,0(t5)
     764:	27ac0058 	addiu	t4,sp,88
     768:	8dae0004 	lw	t6,4(t5)
     76c:	ad8f0000 	sw	t7,0(t4)
     770:	8daf0008 	lw	t7,8(t5)
     774:	3c190000 	lui	t9,0x0
     778:	273920a8 	addiu	t9,t9,8360
     77c:	ad8e0004 	sw	t6,4(t4)
     780:	ad8f0008 	sw	t7,8(t4)
     784:	9b290002 	lwr	t1,2(t9)
     788:	27b80054 	addiu	t8,sp,84
     78c:	00808025 	move	s0,a0
     790:	bb090002 	swr	t1,2(t8)
     794:	8caa1c44 	lw	t2,7236(a1)
     798:	afa0003c 	sw	zero,60(sp)
     79c:	00a08825 	move	s1,a1
     7a0:	afaa004c 	sw	t2,76(sp)
     7a4:	948b01e2 	lhu	t3,482(a0)
     7a8:	2d61000a 	sltiu	at,t3,10
     7ac:	1020011d 	beqz	at,c24 <func_80B4B240+0x524>
     7b0:	000b5880 	sll	t3,t3,0x2
     7b4:	3c010000 	lui	at,0x0
     7b8:	002b0821 	addu	at,at,t3
     7bc:	8c2b0020 	lw	t3,32(at)
     7c0:	01600008 	jr	t3
     7c4:	00000000 	nop
     7c8:	c6040164 	lwc1	$f4,356(s0)
     7cc:	2401000e 	li	at,14
     7d0:	4600218d 	trunc.w.s	$f6,$f4
     7d4:	44023000 	mfc1	v0,$f6
     7d8:	00000000 	nop
     7dc:	00021400 	sll	v0,v0,0x10
     7e0:	00021403 	sra	v0,v0,0x10
     7e4:	10410007 	beq	v0,at,804 <func_80B4B240+0x104>
     7e8:	2401000f 	li	at,15
     7ec:	10410007 	beq	v0,at,80c <func_80B4B240+0x10c>
     7f0:	24010040 	li	at,64
     7f4:	10410012 	beq	v0,at,840 <func_80B4B240+0x140>
     7f8:	3c0e0000 	lui	t6,0x0
     7fc:	1000010a 	b	c28 <func_80B4B240+0x528>
     800:	8fae003c 	lw	t6,60(sp)
     804:	10000107 	b	c24 <func_80B4B240+0x524>
     808:	a60001e4 	sh	zero,484(s0)
     80c:	860301e4 	lh	v1,484(s0)
     810:	3c014170 	lui	at,0x4170
     814:	14600003 	bnez	v1,824 <func_80B4B240+0x124>
     818:	246dffff 	addiu	t5,v1,-1
     81c:	10000003 	b	82c <func_80B4B240+0x12c>
     820:	00001025 	move	v0,zero
     824:	a60d01e4 	sh	t5,484(s0)
     828:	860201e4 	lh	v0,484(s0)
     82c:	504000fe 	beqzl	v0,c28 <func_80B4B240+0x528>
     830:	8fae003c 	lw	t6,60(sp)
     834:	44814000 	mtc1	at,$f8
     838:	100000fa 	b	c24 <func_80B4B240+0x524>
     83c:	e6080164 	swc1	$f8,356(s0)
     840:	25ce0000 	addiu	t6,t6,0
     844:	240f0001 	li	t7,1
     848:	afae0048 	sw	t6,72(sp)
     84c:	afaf003c 	sw	t7,60(sp)
     850:	2418702e 	li	t8,28718
     854:	a618010e 	sh	t8,270(s0)
     858:	3305ffff 	andi	a1,t8,0xffff
     85c:	02202025 	move	a0,s1
     860:	0c000000 	jal	0 <func_80B4AB40>
     864:	00003025 	move	a2,zero
     868:	861901e2 	lh	t9,482(s0)
     86c:	27280001 	addiu	t0,t9,1
     870:	100000ec 	b	c24 <func_80B4B240+0x524>
     874:	a60801e2 	sh	t0,482(s0)
     878:	0c000000 	jal	0 <func_80B4AB40>
     87c:	262420d8 	addiu	a0,s1,8408
     880:	24010005 	li	at,5
     884:	544100e8 	bnel	v0,at,c28 <func_80B4B240+0x528>
     888:	8fae003c 	lw	t6,60(sp)
     88c:	0c000000 	jal	0 <func_80B4AB40>
     890:	02202025 	move	a0,s1
     894:	104000e3 	beqz	v0,c24 <func_80B4B240+0x524>
     898:	3c010001 	lui	at,0x1
     89c:	00310821 	addu	at,at,s1
     8a0:	a0200b05 	sb	zero,2821(at)
     8a4:	860501e8 	lh	a1,488(s0)
     8a8:	02202025 	move	a0,s1
     8ac:	27a60074 	addiu	a2,sp,116
     8b0:	0c000000 	jal	0 <func_80B4AB40>
     8b4:	27a70068 	addiu	a3,sp,104
     8b8:	02202025 	move	a0,s1
     8bc:	860501e8 	lh	a1,488(s0)
     8c0:	0c000000 	jal	0 <func_80B4AB40>
     8c4:	3c0641c8 	lui	a2,0x41c8
     8c8:	27aa0058 	addiu	t2,sp,88
     8cc:	8d4c0000 	lw	t4,0(t2)
     8d0:	8fa9004c 	lw	t1,76(sp)
     8d4:	240d702f 	li	t5,28719
     8d8:	31a5ffff 	andi	a1,t5,0xffff
     8dc:	ad2c0024 	sw	t4,36(t1)
     8e0:	8d4b0004 	lw	t3,4(t2)
     8e4:	02202025 	move	a0,s1
     8e8:	ad2b0028 	sw	t3,40(t1)
     8ec:	8d4c0008 	lw	t4,8(t2)
     8f0:	ad2c002c 	sw	t4,44(t1)
     8f4:	0c000000 	jal	0 <func_80B4AB40>
     8f8:	a60d010e 	sh	t5,270(s0)
     8fc:	860e01e2 	lh	t6,482(s0)
     900:	25cf0001 	addiu	t7,t6,1
     904:	100000c7 	b	c24 <func_80B4B240+0x524>
     908:	a60f01e2 	sh	t7,482(s0)
     90c:	262420d8 	addiu	a0,s1,8408
     910:	0c000000 	jal	0 <func_80B4AB40>
     914:	afa40034 	sw	a0,52(sp)
     918:	24010004 	li	at,4
     91c:	544100c2 	bnel	v0,at,c28 <func_80B4B240+0x528>
     920:	8fae003c 	lw	t6,60(sp)
     924:	0c000000 	jal	0 <func_80B4AB40>
     928:	02202025 	move	a0,s1
     92c:	104000bd 	beqz	v0,c24 <func_80B4B240+0x524>
     930:	8fb80034 	lw	t8,52(sp)
     934:	27197fff 	addiu	t9,t8,32767
     938:	933963e6 	lbu	t9,25574(t9)
     93c:	3c0c0000 	lui	t4,0x0
     940:	258c0000 	addiu	t4,t4,0
     944:	1720000a 	bnez	t9,970 <func_80B4B240+0x270>
     948:	240d0002 	li	t5,2
     94c:	3c080000 	lui	t0,0x0
     950:	25080000 	addiu	t0,t0,0
     954:	24090002 	li	t1,2
     958:	afa80048 	sw	t0,72(sp)
     95c:	afa9003c 	sw	t1,60(sp)
     960:	860a01e2 	lh	t2,482(s0)
     964:	254b0001 	addiu	t3,t2,1
     968:	100000ae 	b	c24 <func_80B4B240+0x524>
     96c:	a60b01e2 	sh	t3,482(s0)
     970:	afac0048 	sw	t4,72(sp)
     974:	afad003c 	sw	t5,60(sp)
     978:	240e0006 	li	t6,6
     97c:	100000a9 	b	c24 <func_80B4B240+0x524>
     980:	a60e01e2 	sh	t6,482(s0)
     984:	3c040000 	lui	a0,0x0
     988:	0c000000 	jal	0 <func_80B4AB40>
     98c:	24840000 	addiu	a0,a0,0
     990:	44825000 	mtc1	v0,$f10
     994:	c6120164 	lwc1	$f18,356(s0)
     998:	3c0f0000 	lui	t7,0x0
     99c:	46805420 	cvt.s.w	$f16,$f10
     9a0:	24197032 	li	t9,28722
     9a4:	25ef0000 	addiu	t7,t7,0
     9a8:	24180001 	li	t8,1
     9ac:	3325ffff 	andi	a1,t9,0xffff
     9b0:	02202025 	move	a0,s1
     9b4:	46128032 	c.eq.s	$f16,$f18
     9b8:	00000000 	nop
     9bc:	4502009a 	bc1fl	c28 <func_80B4B240+0x528>
     9c0:	8fae003c 	lw	t6,60(sp)
     9c4:	afaf0048 	sw	t7,72(sp)
     9c8:	afb8003c 	sw	t8,60(sp)
     9cc:	0c000000 	jal	0 <func_80B4AB40>
     9d0:	a619010e 	sh	t9,270(s0)
     9d4:	860801e2 	lh	t0,482(s0)
     9d8:	25090001 	addiu	t1,t0,1
     9dc:	10000091 	b	c24 <func_80B4B240+0x524>
     9e0:	a60901e2 	sh	t1,482(s0)
     9e4:	262420d8 	addiu	a0,s1,8408
     9e8:	0c000000 	jal	0 <func_80B4AB40>
     9ec:	afa40034 	sw	a0,52(sp)
     9f0:	24010004 	li	at,4
     9f4:	5441008c 	bnel	v0,at,c28 <func_80B4B240+0x528>
     9f8:	8fae003c 	lw	t6,60(sp)
     9fc:	0c000000 	jal	0 <func_80B4AB40>
     a00:	02202025 	move	a0,s1
     a04:	10400087 	beqz	v0,c24 <func_80B4B240+0x524>
     a08:	8faa0034 	lw	t2,52(sp)
     a0c:	254b7fff 	addiu	t3,t2,32767
     a10:	916b63e6 	lbu	t3,25574(t3)
     a14:	240f7034 	li	t7,28724
     a18:	31e5ffff 	andi	a1,t7,0xffff
     a1c:	15600009 	bnez	t3,a44 <func_80B4B240+0x344>
     a20:	02202025 	move	a0,s1
     a24:	3c0c0000 	lui	t4,0x0
     a28:	258c0000 	addiu	t4,t4,0
     a2c:	240d0002 	li	t5,2
     a30:	afac0048 	sw	t4,72(sp)
     a34:	afad003c 	sw	t5,60(sp)
     a38:	240e0009 	li	t6,9
     a3c:	10000079 	b	c24 <func_80B4B240+0x524>
     a40:	a60e01e2 	sh	t6,482(s0)
     a44:	0c000000 	jal	0 <func_80B4AB40>
     a48:	a60f010e 	sh	t7,270(s0)
     a4c:	861801e2 	lh	t8,482(s0)
     a50:	27190001 	addiu	t9,t8,1
     a54:	10000073 	b	c24 <func_80B4B240+0x524>
     a58:	a61901e2 	sh	t9,482(s0)
     a5c:	0c000000 	jal	0 <func_80B4AB40>
     a60:	262420d8 	addiu	a0,s1,8408
     a64:	24010005 	li	at,5
     a68:	5441006f 	bnel	v0,at,c28 <func_80B4B240+0x528>
     a6c:	8fae003c 	lw	t6,60(sp)
     a70:	0c000000 	jal	0 <func_80B4AB40>
     a74:	02202025 	move	a0,s1
     a78:	1040006a 	beqz	v0,c24 <func_80B4B240+0x524>
     a7c:	24087033 	li	t0,28723
     a80:	a608010e 	sh	t0,270(s0)
     a84:	02202025 	move	a0,s1
     a88:	0c000000 	jal	0 <func_80B4AB40>
     a8c:	3105ffff 	andi	a1,t0,0xffff
     a90:	860901e2 	lh	t1,482(s0)
     a94:	252affff 	addiu	t2,t1,-1
     a98:	10000062 	b	c24 <func_80B4B240+0x524>
     a9c:	a60a01e2 	sh	t2,482(s0)
     aa0:	3c040000 	lui	a0,0x0
     aa4:	0c000000 	jal	0 <func_80B4AB40>
     aa8:	24840000 	addiu	a0,a0,0
     aac:	44822000 	mtc1	v0,$f4
     ab0:	c6080164 	lwc1	$f8,356(s0)
     ab4:	3c0b0000 	lui	t3,0x0
     ab8:	468021a0 	cvt.s.w	$f6,$f4
     abc:	240d7031 	li	t5,28721
     ac0:	256b0000 	addiu	t3,t3,0
     ac4:	240c0001 	li	t4,1
     ac8:	31a5ffff 	andi	a1,t5,0xffff
     acc:	02202025 	move	a0,s1
     ad0:	46083032 	c.eq.s	$f6,$f8
     ad4:	00000000 	nop
     ad8:	45020053 	bc1fl	c28 <func_80B4B240+0x528>
     adc:	8fae003c 	lw	t6,60(sp)
     ae0:	afab0048 	sw	t3,72(sp)
     ae4:	afac003c 	sw	t4,60(sp)
     ae8:	0c000000 	jal	0 <func_80B4AB40>
     aec:	a60d010e 	sh	t5,270(s0)
     af0:	860e01e2 	lh	t6,482(s0)
     af4:	25cf0001 	addiu	t7,t6,1
     af8:	1000004a 	b	c24 <func_80B4B240+0x524>
     afc:	a60f01e2 	sh	t7,482(s0)
     b00:	0c000000 	jal	0 <func_80B4AB40>
     b04:	262420d8 	addiu	a0,s1,8408
     b08:	24010005 	li	at,5
     b0c:	54410046 	bnel	v0,at,c28 <func_80B4B240+0x528>
     b10:	8fae003c 	lw	t6,60(sp)
     b14:	0c000000 	jal	0 <func_80B4AB40>
     b18:	02202025 	move	a0,s1
     b1c:	10400041 	beqz	v0,c24 <func_80B4B240+0x524>
     b20:	24187030 	li	t8,28720
     b24:	a618010e 	sh	t8,270(s0)
     b28:	02202025 	move	a0,s1
     b2c:	0c000000 	jal	0 <func_80B4AB40>
     b30:	3305ffff 	andi	a1,t8,0xffff
     b34:	861901e2 	lh	t9,482(s0)
     b38:	27280001 	addiu	t0,t9,1
     b3c:	10000039 	b	c24 <func_80B4B240+0x524>
     b40:	a60801e2 	sh	t0,482(s0)
     b44:	262420d8 	addiu	a0,s1,8408
     b48:	0c000000 	jal	0 <func_80B4AB40>
     b4c:	afa40034 	sw	a0,52(sp)
     b50:	24010004 	li	at,4
     b54:	54410034 	bnel	v0,at,c28 <func_80B4B240+0x528>
     b58:	8fae003c 	lw	t6,60(sp)
     b5c:	0c000000 	jal	0 <func_80B4AB40>
     b60:	02202025 	move	a0,s1
     b64:	1040002f 	beqz	v0,c24 <func_80B4B240+0x524>
     b68:	8fa90034 	lw	t1,52(sp)
     b6c:	252a7fff 	addiu	t2,t1,32767
     b70:	914a63e6 	lbu	t2,25574(t2)
     b74:	240e7031 	li	t6,28721
     b78:	31c5ffff 	andi	a1,t6,0xffff
     b7c:	15400009 	bnez	t2,ba4 <func_80B4B240+0x4a4>
     b80:	02202025 	move	a0,s1
     b84:	3c0b0000 	lui	t3,0x0
     b88:	256b0000 	addiu	t3,t3,0
     b8c:	240c0002 	li	t4,2
     b90:	afab0048 	sw	t3,72(sp)
     b94:	afac003c 	sw	t4,60(sp)
     b98:	240d0003 	li	t5,3
     b9c:	10000021 	b	c24 <func_80B4B240+0x524>
     ba0:	a60d01e2 	sh	t5,482(s0)
     ba4:	0c000000 	jal	0 <func_80B4AB40>
     ba8:	a60e010e 	sh	t6,270(s0)
     bac:	860f01e2 	lh	t7,482(s0)
     bb0:	25f8ffff 	addiu	t8,t7,-1
     bb4:	1000001b 	b	c24 <func_80B4B240+0x524>
     bb8:	a61801e2 	sh	t8,482(s0)
     bbc:	3c040000 	lui	a0,0x0
     bc0:	0c000000 	jal	0 <func_80B4AB40>
     bc4:	24840000 	addiu	a0,a0,0
     bc8:	44825000 	mtc1	v0,$f10
     bcc:	c6120164 	lwc1	$f18,356(s0)
     bd0:	3c190000 	lui	t9,0x0
     bd4:	46805420 	cvt.s.w	$f16,$f10
     bd8:	3c090000 	lui	t1,0x0
     bdc:	27390000 	addiu	t9,t9,0
     be0:	24080001 	li	t0,1
     be4:	25290000 	addiu	t1,t1,0
     be8:	240a0001 	li	t2,1
     bec:	46128032 	c.eq.s	$f16,$f18
     bf0:	3c010000 	lui	at,0x0
     bf4:	3c0b0000 	lui	t3,0x0
     bf8:	4502000b 	bc1fl	c28 <func_80B4B240+0x528>
     bfc:	8fae003c 	lw	t6,60(sp)
     c00:	afb90048 	sw	t9,72(sp)
     c04:	afa8003c 	sw	t0,60(sp)
     c08:	ae291d68 	sw	t1,7528(s1)
     c0c:	a02a1414 	sb	t2,5140(at)
     c10:	860c01e2 	lh	t4,482(s0)
     c14:	256b0000 	addiu	t3,t3,0
     c18:	ae0b0190 	sw	t3,400(s0)
     c1c:	258d0001 	addiu	t5,t4,1
     c20:	a60d01e2 	sh	t5,482(s0)
     c24:	8fae003c 	lw	t6,60(sp)
     c28:	51c00013 	beqzl	t6,c78 <func_80B4B240+0x578>
     c2c:	8e080038 	lw	t0,56(s0)
     c30:	0c000000 	jal	0 <func_80B4AB40>
     c34:	8fa40048 	lw	a0,72(sp)
     c38:	44822000 	mtc1	v0,$f4
     c3c:	8faf003c 	lw	t7,60(sp)
     c40:	3c01c120 	lui	at,0xc120
     c44:	468021a0 	cvt.s.w	$f6,$f4
     c48:	03afc021 	addu	t8,sp,t7
     c4c:	44814000 	mtc1	at,$f8
     c50:	2604014c 	addiu	a0,s0,332
     c54:	8fa50048 	lw	a1,72(sp)
     c58:	3c063f80 	lui	a2,0x3f80
     c5c:	e7a60010 	swc1	$f6,16(sp)
     c60:	93180054 	lbu	t8,84(t8)
     c64:	24070000 	li	a3,0
     c68:	e7a80018 	swc1	$f8,24(sp)
     c6c:	0c000000 	jal	0 <func_80B4AB40>
     c70:	afb80014 	sw	t8,20(sp)
     c74:	8e080038 	lw	t0,56(s0)
     c78:	02202025 	move	a0,s1
     c7c:	02002825 	move	a1,s0
     c80:	afa80010 	sw	t0,16(sp)
     c84:	8e19003c 	lw	t9,60(s0)
     c88:	26060200 	addiu	a2,s0,512
     c8c:	26070206 	addiu	a3,s0,518
     c90:	afb90014 	sw	t9,20(sp)
     c94:	8e080040 	lw	t0,64(s0)
     c98:	0c000000 	jal	0 <func_80B4AB40>
     c9c:	afa80018 	sw	t0,24(sp)
     ca0:	8fbf002c 	lw	ra,44(sp)
     ca4:	8fb00024 	lw	s0,36(sp)
     ca8:	8fb10028 	lw	s1,40(sp)
     cac:	03e00008 	jr	ra
     cb0:	27bd0080 	addiu	sp,sp,128

00000cb4 <func_80B4B7F4>:
     cb4:	8c8e000c 	lw	t6,12(a0)
     cb8:	448e2000 	mtc1	t6,$f4
     cbc:	00000000 	nop
     cc0:	468021a0 	cvt.s.w	$f6,$f4
     cc4:	e4a60000 	swc1	$f6,0(a1)
     cc8:	8c8f0010 	lw	t7,16(a0)
     ccc:	448f4000 	mtc1	t7,$f8
     cd0:	00000000 	nop
     cd4:	468042a0 	cvt.s.w	$f10,$f8
     cd8:	e4aa0004 	swc1	$f10,4(a1)
     cdc:	8c980014 	lw	t8,20(a0)
     ce0:	44988000 	mtc1	t8,$f16
     ce4:	00000000 	nop
     ce8:	468084a0 	cvt.s.w	$f18,$f16
     cec:	03e00008 	jr	ra
     cf0:	e4b20008 	swc1	$f18,8(a1)

00000cf4 <func_80B4B834>:
     cf4:	8c8e0018 	lw	t6,24(a0)
     cf8:	448e2000 	mtc1	t6,$f4
     cfc:	00000000 	nop
     d00:	468021a0 	cvt.s.w	$f6,$f4
     d04:	e4a60000 	swc1	$f6,0(a1)
     d08:	8c8f001c 	lw	t7,28(a0)
     d0c:	448f4000 	mtc1	t7,$f8
     d10:	00000000 	nop
     d14:	468042a0 	cvt.s.w	$f10,$f8
     d18:	e4aa0004 	swc1	$f10,4(a1)
     d1c:	8c980020 	lw	t8,32(a0)
     d20:	44988000 	mtc1	t8,$f16
     d24:	00000000 	nop
     d28:	468084a0 	cvt.s.w	$f18,$f16
     d2c:	03e00008 	jr	ra
     d30:	e4b20008 	swc1	$f18,8(a1)

00000d34 <func_80B4B874>:
     d34:	27bdffe8 	addiu	sp,sp,-24
     d38:	afbf0014 	sw	ra,20(sp)
     d3c:	afa40018 	sw	a0,24(sp)
     d40:	afa5001c 	sw	a1,28(sp)
     d44:	908e0181 	lbu	t6,385(a0)
     d48:	00802825 	move	a1,a0
     d4c:	24a6014c 	addiu	a2,a1,332
     d50:	35cf0001 	ori	t7,t6,0x1
     d54:	a08f0181 	sb	t7,385(a0)
     d58:	8fa4001c 	lw	a0,28(sp)
     d5c:	0c000000 	jal	0 <func_80B4AB40>
     d60:	3c073f80 	lui	a3,0x3f80
     d64:	8fbf0014 	lw	ra,20(sp)
     d68:	27bd0018 	addiu	sp,sp,24
     d6c:	03e00008 	jr	ra
     d70:	00000000 	nop

00000d74 <func_80B4B8B4>:
     d74:	27bdff28 	addiu	sp,sp,-216
     d78:	3c0f0000 	lui	t7,0x0
     d7c:	afb20030 	sw	s2,48(sp)
     d80:	afb00028 	sw	s0,40(sp)
     d84:	25ef20ac 	addiu	t7,t7,8364
     d88:	00808025 	move	s0,a0
     d8c:	00a09025 	move	s2,a1
     d90:	afbf0034 	sw	ra,52(sp)
     d94:	afb1002c 	sw	s1,44(sp)
     d98:	25e80024 	addiu	t0,t7,36
     d9c:	27ae00b0 	addiu	t6,sp,176
     da0:	8df90000 	lw	t9,0(t7)
     da4:	25ef000c 	addiu	t7,t7,12
     da8:	25ce000c 	addiu	t6,t6,12
     dac:	add9fff4 	sw	t9,-12(t6)
     db0:	8df8fff8 	lw	t8,-8(t7)
     db4:	add8fff8 	sw	t8,-8(t6)
     db8:	8df9fffc 	lw	t9,-4(t7)
     dbc:	15e8fff8 	bne	t7,t0,da0 <func_80B4B8B4+0x2c>
     dc0:	add9fffc 	sw	t9,-4(t6)
     dc4:	8df90000 	lw	t9,0(t7)
     dc8:	3c0a0000 	lui	t2,0x0
     dcc:	254a20d4 	addiu	t2,t2,8404
     dd0:	add90000 	sw	t9,0(t6)
     dd4:	8d4c0000 	lw	t4,0(t2)
     dd8:	27a900a4 	addiu	t1,sp,164
     ddc:	8d4b0004 	lw	t3,4(t2)
     de0:	ad2c0000 	sw	t4,0(t1)
     de4:	954c0008 	lhu	t4,8(t2)
     de8:	3c080000 	lui	t0,0x0
     dec:	250820e0 	addiu	t0,t0,8416
     df0:	ad2b0004 	sw	t3,4(t1)
     df4:	a52c0008 	sh	t4,8(t1)
     df8:	8d0e0000 	lw	t6,0(t0)
     dfc:	27ad0098 	addiu	t5,sp,152
     e00:	8d0f0004 	lw	t7,4(t0)
     e04:	adae0000 	sw	t6,0(t5)
     e08:	8d0e0008 	lw	t6,8(t0)
     e0c:	3c190000 	lui	t9,0x0
     e10:	273920ec 	addiu	t9,t9,8428
     e14:	adaf0004 	sw	t7,4(t5)
     e18:	adae0008 	sw	t6,8(t5)
     e1c:	8f2a0000 	lw	t2,0(t9)
     e20:	27b8008c 	addiu	t8,sp,140
     e24:	8f290004 	lw	t1,4(t9)
     e28:	af0a0000 	sw	t2,0(t8)
     e2c:	8f2a0008 	lw	t2,8(t9)
     e30:	3c0c0000 	lui	t4,0x0
     e34:	258c20f8 	addiu	t4,t4,8440
     e38:	af090004 	sw	t1,4(t8)
     e3c:	af0a0008 	sw	t2,8(t8)
     e40:	8d880000 	lw	t0,0(t4)
     e44:	27ab005c 	addiu	t3,sp,92
     e48:	8d8d0004 	lw	t5,4(t4)
     e4c:	ad680000 	sw	t0,0(t3)
     e50:	8d880008 	lw	t0,8(t4)
     e54:	2604014c 	addiu	a0,s0,332
     e58:	ad6d0004 	sw	t5,4(t3)
     e5c:	ad680008 	sw	t0,8(t3)
     e60:	0c000000 	jal	0 <func_80B4AB40>
     e64:	afa40044 	sw	a0,68(sp)
     e68:	02002025 	move	a0,s0
     e6c:	0c000000 	jal	0 <func_80B4AB40>
     e70:	02402825 	move	a1,s2
     e74:	924f1d6c 	lbu	t7,7532(s2)
     e78:	3c0e0000 	lui	t6,0x0
     e7c:	25ce0000 	addiu	t6,t6,0
     e80:	55e00004 	bnezl	t7,e94 <func_80B4B8B4+0x120>
     e84:	8e511d8c 	lw	s1,7564(s2)
     e88:	10000078 	b	106c <func_80B4B8B4+0x2f8>
     e8c:	ae0e0190 	sw	t6,400(s0)
     e90:	8e511d8c 	lw	s1,7564(s2)
     e94:	12200075 	beqz	s1,106c <func_80B4B8B4+0x2f8>
     e98:	02202025 	move	a0,s1
     e9c:	0c000000 	jal	0 <func_80B4AB40>
     ea0:	27a50074 	addiu	a1,sp,116
     ea4:	02202025 	move	a0,s1
     ea8:	0c000000 	jal	0 <func_80B4AB40>
     eac:	27a50068 	addiu	a1,sp,104
     eb0:	860201e6 	lh	v0,486(s0)
     eb4:	27b80074 	addiu	t8,sp,116
     eb8:	54400016 	bnezl	v0,f14 <func_80B4B8B4+0x1a0>
     ebc:	96230000 	lhu	v1,0(s1)
     ec0:	8f090000 	lw	t1,0(t8)
     ec4:	27a30048 	addiu	v1,sp,72
     ec8:	ac690000 	sw	t1,0(v1)
     ecc:	8f190004 	lw	t9,4(t8)
     ed0:	8c6b0000 	lw	t3,0(v1)
     ed4:	ac790004 	sw	t9,4(v1)
     ed8:	8f090008 	lw	t1,8(t8)
     edc:	ac690008 	sw	t1,8(v1)
     ee0:	ae0b0008 	sw	t3,8(s0)
     ee4:	8c6a0004 	lw	t2,4(v1)
     ee8:	860201e6 	lh	v0,486(s0)
     eec:	ae0a000c 	sw	t2,12(s0)
     ef0:	8c6b0008 	lw	t3,8(v1)
     ef4:	ae0b0010 	sw	t3,16(s0)
     ef8:	8c6d0000 	lw	t5,0(v1)
     efc:	ae0d0024 	sw	t5,36(s0)
     f00:	8c6c0004 	lw	t4,4(v1)
     f04:	ae0c0028 	sw	t4,40(s0)
     f08:	8c6d0008 	lw	t5,8(v1)
     f0c:	ae0d002c 	sw	t5,44(s0)
     f10:	96230000 	lhu	v1,0(s1)
     f14:	10620017 	beq	v1,v0,f74 <func_80B4B8B4+0x200>
     f18:	00034080 	sll	t0,v1,0x2
     f1c:	03a82021 	addu	a0,sp,t0
     f20:	0c000000 	jal	0 <func_80B4AB40>
     f24:	8c8400b0 	lw	a0,176(a0)
     f28:	44822000 	mtc1	v0,$f4
     f2c:	96230000 	lhu	v1,0(s1)
     f30:	3c01c120 	lui	at,0xc120
     f34:	468021a0 	cvt.s.w	$f6,$f4
     f38:	00037880 	sll	t7,v1,0x2
     f3c:	03af2821 	addu	a1,sp,t7
     f40:	8ca500b0 	lw	a1,176(a1)
     f44:	03a37021 	addu	t6,sp,v1
     f48:	44814000 	mtc1	at,$f8
     f4c:	e7a60010 	swc1	$f6,16(sp)
     f50:	91ce00a4 	lbu	t6,164(t6)
     f54:	8fa40044 	lw	a0,68(sp)
     f58:	3c063f80 	lui	a2,0x3f80
     f5c:	24070000 	li	a3,0
     f60:	e7a80018 	swc1	$f8,24(sp)
     f64:	0c000000 	jal	0 <func_80B4AB40>
     f68:	afae0014 	sw	t6,20(sp)
     f6c:	96380000 	lhu	t8,0(s1)
     f70:	a61801e6 	sh	t8,486(s0)
     f74:	27b9005c 	addiu	t9,sp,92
     f78:	8f2a0000 	lw	t2,0(t9)
     f7c:	ae0a005c 	sw	t2,92(s0)
     f80:	8f290004 	lw	t1,4(t9)
     f84:	ae090060 	sw	t1,96(s0)
     f88:	8f2a0008 	lw	t2,8(t9)
     f8c:	ae0a0064 	sw	t2,100(s0)
     f90:	964b1d74 	lhu	t3,7540(s2)
     f94:	96220004 	lhu	v0,4(s1)
     f98:	0162082a 	slt	at,t3,v0
     f9c:	50200020 	beqzl	at,1020 <func_80B4B8B4+0x2ac>
     fa0:	8e0f0038 	lw	t7,56(s0)
     fa4:	962c0002 	lhu	t4,2(s1)
     fa8:	c7b00068 	lwc1	$f16,104(sp)
     fac:	c7b20074 	lwc1	$f18,116(sp)
     fb0:	004c6823 	subu	t5,v0,t4
     fb4:	448d5000 	mtc1	t5,$f10
     fb8:	46128101 	sub.s	$f4,$f16,$f18
     fbc:	c6020070 	lwc1	$f2,112(s0)
     fc0:	46805020 	cvt.s.w	$f0,$f10
     fc4:	46002183 	div.s	$f6,$f4,$f0
     fc8:	e606005c 	swc1	$f6,92(s0)
     fcc:	c7aa0078 	lwc1	$f10,120(sp)
     fd0:	c7a8006c 	lwc1	$f8,108(sp)
     fd4:	c606006c 	lwc1	$f6,108(s0)
     fd8:	460a4401 	sub.s	$f16,$f8,$f10
     fdc:	46008483 	div.s	$f18,$f16,$f0
     fe0:	e6120060 	swc1	$f18,96(s0)
     fe4:	c6040060 	lwc1	$f4,96(s0)
     fe8:	46062200 	add.s	$f8,$f4,$f6
     fec:	e6080060 	swc1	$f8,96(s0)
     ff0:	c60a0060 	lwc1	$f10,96(s0)
     ff4:	4602503c 	c.lt.s	$f10,$f2
     ff8:	00000000 	nop
     ffc:	45020003 	bc1fl	100c <func_80B4B8B4+0x298>
    1000:	c7b00070 	lwc1	$f16,112(sp)
    1004:	e6020060 	swc1	$f2,96(s0)
    1008:	c7b00070 	lwc1	$f16,112(sp)
    100c:	c7b2007c 	lwc1	$f18,124(sp)
    1010:	46128101 	sub.s	$f4,$f16,$f18
    1014:	46002183 	div.s	$f6,$f4,$f0
    1018:	e6060064 	swc1	$f6,100(s0)
    101c:	8e0f0038 	lw	t7,56(s0)
    1020:	02402025 	move	a0,s2
    1024:	02002825 	move	a1,s0
    1028:	afaf0010 	sw	t7,16(sp)
    102c:	8e08003c 	lw	t0,60(s0)
    1030:	26060200 	addiu	a2,s0,512
    1034:	26070206 	addiu	a3,s0,518
    1038:	afa80014 	sw	t0,20(sp)
    103c:	8e0f0040 	lw	t7,64(s0)
    1040:	0c000000 	jal	0 <func_80B4AB40>
    1044:	afaf0018 	sw	t7,24(sp)
    1048:	02402025 	move	a0,s2
    104c:	860501e8 	lh	a1,488(s0)
    1050:	27a60098 	addiu	a2,sp,152
    1054:	0c000000 	jal	0 <func_80B4AB40>
    1058:	27a7008c 	addiu	a3,sp,140
    105c:	02402025 	move	a0,s2
    1060:	860501e8 	lh	a1,488(s0)
    1064:	0c000000 	jal	0 <func_80B4AB40>
    1068:	3c06428c 	lui	a2,0x428c
    106c:	8fbf0034 	lw	ra,52(sp)
    1070:	8fb00028 	lw	s0,40(sp)
    1074:	8fb1002c 	lw	s1,44(sp)
    1078:	8fb20030 	lw	s2,48(sp)
    107c:	03e00008 	jr	ra
    1080:	27bd00d8 	addiu	sp,sp,216

00001084 <func_80B4BBC4>:
    1084:	27bdffc0 	addiu	sp,sp,-64
    1088:	afb00028 	sw	s0,40(sp)
    108c:	00808025 	move	s0,a0
    1090:	afbf002c 	sw	ra,44(sp)
    1094:	3c040000 	lui	a0,0x0
    1098:	afa50044 	sw	a1,68(sp)
    109c:	0c000000 	jal	0 <func_80B4AB40>
    10a0:	24840000 	addiu	a0,a0,0
    10a4:	44822000 	mtc1	v0,$f4
    10a8:	8fae0044 	lw	t6,68(sp)
    10ac:	44800000 	mtc1	zero,$f0
    10b0:	468021a0 	cvt.s.w	$f6,$f4
    10b4:	8dcf1c44 	lw	t7,7236(t6)
    10b8:	3c050000 	lui	a1,0x0
    10bc:	44070000 	mfc1	a3,$f0
    10c0:	24a50000 	addiu	a1,a1,0
    10c4:	afa00014 	sw	zero,20(sp)
    10c8:	e7a60010 	swc1	$f6,16(sp)
    10cc:	2604014c 	addiu	a0,s0,332
    10d0:	3c063f80 	lui	a2,0x3f80
    10d4:	e7a00018 	swc1	$f0,24(sp)
    10d8:	0c000000 	jal	0 <func_80B4AB40>
    10dc:	afaf0034 	sw	t7,52(sp)
    10e0:	8fa40044 	lw	a0,68(sp)
    10e4:	02002825 	move	a1,s0
    10e8:	0c000000 	jal	0 <func_80B4AB40>
    10ec:	24060001 	li	a2,1
    10f0:	8fa40034 	lw	a0,52(sp)
    10f4:	0c000000 	jal	0 <func_80B4AB40>
    10f8:	24056836 	li	a1,26678
    10fc:	24187039 	li	t8,28729
    1100:	a618010e 	sh	t8,270(s0)
    1104:	8fa40044 	lw	a0,68(sp)
    1108:	3305ffff 	andi	a1,t8,0xffff
    110c:	0c000000 	jal	0 <func_80B4AB40>
    1110:	00003025 	move	a2,zero
    1114:	3c190000 	lui	t9,0x0
    1118:	27390000 	addiu	t9,t9,0
    111c:	a60001e2 	sh	zero,482(s0)
    1120:	ae190190 	sw	t9,400(s0)
    1124:	8fbf002c 	lw	ra,44(sp)
    1128:	8fb00028 	lw	s0,40(sp)
    112c:	27bd0040 	addiu	sp,sp,64
    1130:	03e00008 	jr	ra
    1134:	00000000 	nop

00001138 <func_80B4BC78>:
    1138:	27bdff48 	addiu	sp,sp,-184
    113c:	3c0f0000 	lui	t7,0x0
    1140:	afb00024 	sw	s0,36(sp)
    1144:	25ef2104 	addiu	t7,t7,8452
    1148:	00808025 	move	s0,a0
    114c:	afbf002c 	sw	ra,44(sp)
    1150:	afb10028 	sw	s1,40(sp)
    1154:	afa500bc 	sw	a1,188(sp)
    1158:	25e80024 	addiu	t0,t7,36
    115c:	27ae0090 	addiu	t6,sp,144
    1160:	8df90000 	lw	t9,0(t7)
    1164:	25ef000c 	addiu	t7,t7,12
    1168:	25ce000c 	addiu	t6,t6,12
    116c:	add9fff4 	sw	t9,-12(t6)
    1170:	8df8fff8 	lw	t8,-8(t7)
    1174:	add8fff8 	sw	t8,-8(t6)
    1178:	8df9fffc 	lw	t9,-4(t7)
    117c:	15e8fff8 	bne	t7,t0,1160 <func_80B4BC78+0x28>
    1180:	add9fffc 	sw	t9,-4(t6)
    1184:	8df90000 	lw	t9,0(t7)
    1188:	3c0a0000 	lui	t2,0x0
    118c:	254a212c 	addiu	t2,t2,8492
    1190:	add90000 	sw	t9,0(t6)
    1194:	8d4c0000 	lw	t4,0(t2)
    1198:	27a90084 	addiu	t1,sp,132
    119c:	8d4b0004 	lw	t3,4(t2)
    11a0:	ad2c0000 	sw	t4,0(t1)
    11a4:	954c0008 	lhu	t4,8(t2)
    11a8:	3c080000 	lui	t0,0x0
    11ac:	25082138 	addiu	t0,t0,8504
    11b0:	ad2b0004 	sw	t3,4(t1)
    11b4:	a52c0008 	sh	t4,8(t1)
    11b8:	8d0e0000 	lw	t6,0(t0)
    11bc:	27ad0058 	addiu	t5,sp,88
    11c0:	8d0f0004 	lw	t7,4(t0)
    11c4:	adae0000 	sw	t6,0(t5)
    11c8:	8d0e0008 	lw	t6,8(t0)
    11cc:	2604014c 	addiu	a0,s0,332
    11d0:	adaf0004 	sw	t7,4(t5)
    11d4:	adae0008 	sw	t6,8(t5)
    11d8:	0c000000 	jal	0 <func_80B4AB40>
    11dc:	afa4003c 	sw	a0,60(sp)
    11e0:	50400016 	beqzl	v0,123c <func_80B4BC78+0x104>
    11e4:	02002025 	move	a0,s0
    11e8:	8e190154 	lw	t9,340(s0)
    11ec:	3c180000 	lui	t8,0x0
    11f0:	27180000 	addiu	t8,t8,0
    11f4:	17190010 	bne	t8,t9,1238 <func_80B4BC78+0x100>
    11f8:	3c110000 	lui	s1,0x0
    11fc:	26310000 	addiu	s1,s1,0
    1200:	0c000000 	jal	0 <func_80B4AB40>
    1204:	02202025 	move	a0,s1
    1208:	44822000 	mtc1	v0,$f4
    120c:	3c01c120 	lui	at,0xc120
    1210:	44814000 	mtc1	at,$f8
    1214:	468021a0 	cvt.s.w	$f6,$f4
    1218:	8fa4003c 	lw	a0,60(sp)
    121c:	02202825 	move	a1,s1
    1220:	3c063f80 	lui	a2,0x3f80
    1224:	24070000 	li	a3,0
    1228:	afa00014 	sw	zero,20(sp)
    122c:	e7a60010 	swc1	$f6,16(sp)
    1230:	0c000000 	jal	0 <func_80B4AB40>
    1234:	e7a80018 	swc1	$f8,24(sp)
    1238:	02002025 	move	a0,s0
    123c:	0c000000 	jal	0 <func_80B4AB40>
    1240:	8fa500bc 	lw	a1,188(sp)
    1244:	8fa900bc 	lw	t1,188(sp)
    1248:	8d311d8c 	lw	s1,7564(t1)
    124c:	12200062 	beqz	s1,13d8 <func_80B4BC78+0x2a0>
    1250:	02202025 	move	a0,s1
    1254:	0c000000 	jal	0 <func_80B4AB40>
    1258:	27a50070 	addiu	a1,sp,112
    125c:	02202025 	move	a0,s1
    1260:	0c000000 	jal	0 <func_80B4AB40>
    1264:	27a50064 	addiu	a1,sp,100
    1268:	860201e6 	lh	v0,486(s0)
    126c:	27aa0070 	addiu	t2,sp,112
    1270:	54400016 	bnezl	v0,12cc <func_80B4BC78+0x194>
    1274:	96230000 	lhu	v1,0(s1)
    1278:	8d4c0000 	lw	t4,0(t2)
    127c:	27a30040 	addiu	v1,sp,64
    1280:	ac6c0000 	sw	t4,0(v1)
    1284:	8d4b0004 	lw	t3,4(t2)
    1288:	8c680000 	lw	t0,0(v1)
    128c:	ac6b0004 	sw	t3,4(v1)
    1290:	8d4c0008 	lw	t4,8(t2)
    1294:	ac6c0008 	sw	t4,8(v1)
    1298:	ae080008 	sw	t0,8(s0)
    129c:	8c6d0004 	lw	t5,4(v1)
    12a0:	860201e6 	lh	v0,486(s0)
    12a4:	ae0d000c 	sw	t5,12(s0)
    12a8:	8c680008 	lw	t0,8(v1)
    12ac:	ae080010 	sw	t0,16(s0)
    12b0:	8c6e0000 	lw	t6,0(v1)
    12b4:	ae0e0024 	sw	t6,36(s0)
    12b8:	8c6f0004 	lw	t7,4(v1)
    12bc:	ae0f0028 	sw	t7,40(s0)
    12c0:	8c6e0008 	lw	t6,8(v1)
    12c4:	ae0e002c 	sw	t6,44(s0)
    12c8:	96230000 	lhu	v1,0(s1)
    12cc:	10620017 	beq	v1,v0,132c <func_80B4BC78+0x1f4>
    12d0:	0003c080 	sll	t8,v1,0x2
    12d4:	03b82021 	addu	a0,sp,t8
    12d8:	0c000000 	jal	0 <func_80B4AB40>
    12dc:	8c840090 	lw	a0,144(a0)
    12e0:	44825000 	mtc1	v0,$f10
    12e4:	96230000 	lhu	v1,0(s1)
    12e8:	3c01c120 	lui	at,0xc120
    12ec:	46805420 	cvt.s.w	$f16,$f10
    12f0:	0003c880 	sll	t9,v1,0x2
    12f4:	03b92821 	addu	a1,sp,t9
    12f8:	8ca50090 	lw	a1,144(a1)
    12fc:	03a34821 	addu	t1,sp,v1
    1300:	44819000 	mtc1	at,$f18
    1304:	e7b00010 	swc1	$f16,16(sp)
    1308:	91290084 	lbu	t1,132(t1)
    130c:	8fa4003c 	lw	a0,60(sp)
    1310:	3c063f80 	lui	a2,0x3f80
    1314:	24070000 	li	a3,0
    1318:	e7b20018 	swc1	$f18,24(sp)
    131c:	0c000000 	jal	0 <func_80B4AB40>
    1320:	afa90014 	sw	t1,20(sp)
    1324:	962a0000 	lhu	t2,0(s1)
    1328:	a60a01e6 	sh	t2,486(s0)
    132c:	27ab0058 	addiu	t3,sp,88
    1330:	8d6d0000 	lw	t5,0(t3)
    1334:	ae0d005c 	sw	t5,92(s0)
    1338:	8d6c0004 	lw	t4,4(t3)
    133c:	ae0c0060 	sw	t4,96(s0)
    1340:	8d6d0008 	lw	t5,8(t3)
    1344:	ae0d0064 	sw	t5,100(s0)
    1348:	8fa800bc 	lw	t0,188(sp)
    134c:	96220004 	lhu	v0,4(s1)
    1350:	950f1d74 	lhu	t7,7540(t0)
    1354:	01e2082a 	slt	at,t7,v0
    1358:	50200020 	beqzl	at,13dc <func_80B4BC78+0x2a4>
    135c:	8fbf002c 	lw	ra,44(sp)
    1360:	962e0002 	lhu	t6,2(s1)
    1364:	c7a60064 	lwc1	$f6,100(sp)
    1368:	c7a80070 	lwc1	$f8,112(sp)
    136c:	004ec023 	subu	t8,v0,t6
    1370:	44982000 	mtc1	t8,$f4
    1374:	46083281 	sub.s	$f10,$f6,$f8
    1378:	c6020070 	lwc1	$f2,112(s0)
    137c:	46802020 	cvt.s.w	$f0,$f4
    1380:	46005403 	div.s	$f16,$f10,$f0
    1384:	e610005c 	swc1	$f16,92(s0)
    1388:	c7a40074 	lwc1	$f4,116(sp)
    138c:	c7b20068 	lwc1	$f18,104(sp)
    1390:	c610006c 	lwc1	$f16,108(s0)
    1394:	46049181 	sub.s	$f6,$f18,$f4
    1398:	46003203 	div.s	$f8,$f6,$f0
    139c:	e6080060 	swc1	$f8,96(s0)
    13a0:	c60a0060 	lwc1	$f10,96(s0)
    13a4:	46105480 	add.s	$f18,$f10,$f16
    13a8:	e6120060 	swc1	$f18,96(s0)
    13ac:	c6040060 	lwc1	$f4,96(s0)
    13b0:	4602203c 	c.lt.s	$f4,$f2
    13b4:	00000000 	nop
    13b8:	45020003 	bc1fl	13c8 <func_80B4BC78+0x290>
    13bc:	c7a6006c 	lwc1	$f6,108(sp)
    13c0:	e6020060 	swc1	$f2,96(s0)
    13c4:	c7a6006c 	lwc1	$f6,108(sp)
    13c8:	c7a80078 	lwc1	$f8,120(sp)
    13cc:	46083281 	sub.s	$f10,$f6,$f8
    13d0:	46005403 	div.s	$f16,$f10,$f0
    13d4:	e6100064 	swc1	$f16,100(s0)
    13d8:	8fbf002c 	lw	ra,44(sp)
    13dc:	8fb00024 	lw	s0,36(sp)
    13e0:	8fb10028 	lw	s1,40(sp)
    13e4:	03e00008 	jr	ra
    13e8:	27bd00b8 	addiu	sp,sp,184

000013ec <func_80B4BF2C>:
    13ec:	27bdffc0 	addiu	sp,sp,-64
    13f0:	afbf002c 	sw	ra,44(sp)
    13f4:	afb10028 	sw	s1,40(sp)
    13f8:	afb00024 	sw	s0,36(sp)
    13fc:	948e01e2 	lhu	t6,482(a0)
    1400:	00808025 	move	s0,a0
    1404:	00a08825 	move	s1,a1
    1408:	2dc10007 	sltiu	at,t6,7
    140c:	102000a4 	beqz	at,16a0 <func_80B4BF2C+0x2b4>
    1410:	8ca21c44 	lw	v0,7236(a1)
    1414:	000e7080 	sll	t6,t6,0x2
    1418:	3c010000 	lui	at,0x0
    141c:	002e0821 	addu	at,at,t6
    1420:	8c2e0048 	lw	t6,72(at)
    1424:	01c00008 	jr	t6
    1428:	00000000 	nop
    142c:	262420d8 	addiu	a0,s1,8408
    1430:	0c000000 	jal	0 <func_80B4AB40>
    1434:	afa40030 	sw	a0,48(sp)
    1438:	24010004 	li	at,4
    143c:	54410099 	bnel	v0,at,16a4 <func_80B4BF2C+0x2b8>
    1440:	8e090038 	lw	t1,56(s0)
    1444:	0c000000 	jal	0 <func_80B4AB40>
    1448:	02202025 	move	a0,s1
    144c:	10400094 	beqz	v0,16a0 <func_80B4BF2C+0x2b4>
    1450:	8faf0030 	lw	t7,48(sp)
    1454:	25f87fff 	addiu	t8,t7,32767
    1458:	931863e6 	lbu	t8,25574(t8)
    145c:	240a703a 	li	t2,28730
    1460:	3145ffff 	andi	a1,t2,0xffff
    1464:	1700000a 	bnez	t8,1490 <func_80B4BF2C+0xa4>
    1468:	02202025 	move	a0,s1
    146c:	2419703b 	li	t9,28731
    1470:	a619010e 	sh	t9,270(s0)
    1474:	3325ffff 	andi	a1,t9,0xffff
    1478:	0c000000 	jal	0 <func_80B4AB40>
    147c:	02202025 	move	a0,s1
    1480:	860801e2 	lh	t0,482(s0)
    1484:	25090001 	addiu	t1,t0,1
    1488:	10000085 	b	16a0 <func_80B4BF2C+0x2b4>
    148c:	a60901e2 	sh	t1,482(s0)
    1490:	0c000000 	jal	0 <func_80B4AB40>
    1494:	a60a010e 	sh	t2,270(s0)
    1498:	10000081 	b	16a0 <func_80B4BF2C+0x2b4>
    149c:	a60001e2 	sh	zero,482(s0)
    14a0:	0c000000 	jal	0 <func_80B4AB40>
    14a4:	262420d8 	addiu	a0,s1,8408
    14a8:	24010005 	li	at,5
    14ac:	5441007d 	bnel	v0,at,16a4 <func_80B4BF2C+0x2b8>
    14b0:	8e090038 	lw	t1,56(s0)
    14b4:	0c000000 	jal	0 <func_80B4AB40>
    14b8:	02202025 	move	a0,s1
    14bc:	10400078 	beqz	v0,16a0 <func_80B4BF2C+0x2b4>
    14c0:	340bffff 	li	t3,0xffff
    14c4:	3c190001 	lui	t9,0x1
    14c8:	a60b010e 	sh	t3,270(s0)
    14cc:	0331c821 	addu	t9,t9,s1
    14d0:	8f391d5c 	lw	t9,7516(t9)
    14d4:	02202025 	move	a0,s1
    14d8:	02002825 	move	a1,s0
    14dc:	0320f809 	jalr	t9
    14e0:	00000000 	nop
    14e4:	3c014120 	lui	at,0x4120
    14e8:	44812000 	mtc1	at,$f4
    14ec:	02002025 	move	a0,s0
    14f0:	02202825 	move	a1,s1
    14f4:	2406000b 	li	a2,11
    14f8:	3c0742f0 	lui	a3,0x42f0
    14fc:	0c000000 	jal	0 <func_80B4AB40>
    1500:	e7a40010 	swc1	$f4,16(sp)
    1504:	3c010001 	lui	at,0x1
    1508:	00310821 	addu	at,at,s1
    150c:	240c0036 	li	t4,54
    1510:	a02c03dc 	sb	t4,988(at)
    1514:	3c010001 	lui	at,0x1
    1518:	00310821 	addu	at,at,s1
    151c:	240d0004 	li	t5,4
    1520:	a02d04bf 	sb	t5,1215(at)
    1524:	860e01e2 	lh	t6,482(s0)
    1528:	25cf0001 	addiu	t7,t6,1
    152c:	a60f01e2 	sh	t7,482(s0)
    1530:	02002025 	move	a0,s0
    1534:	0c000000 	jal	0 <func_80B4AB40>
    1538:	02202825 	move	a1,s1
    153c:	10400011 	beqz	v0,1584 <func_80B4BF2C+0x198>
    1540:	02002025 	move	a0,s0
    1544:	02202025 	move	a0,s1
    1548:	00002825 	move	a1,zero
    154c:	0c000000 	jal	0 <func_80B4AB40>
    1550:	860601e8 	lh	a2,488(s0)
    1554:	02202025 	move	a0,s1
    1558:	00002825 	move	a1,zero
    155c:	0c000000 	jal	0 <func_80B4AB40>
    1560:	24060007 	li	a2,7
    1564:	02202025 	move	a0,s1
    1568:	0c000000 	jal	0 <func_80B4AB40>
    156c:	860501e8 	lh	a1,488(s0)
    1570:	861801e2 	lh	t8,482(s0)
    1574:	ae000118 	sw	zero,280(s0)
    1578:	27080001 	addiu	t0,t8,1
    157c:	10000048 	b	16a0 <func_80B4BF2C+0x2b4>
    1580:	a60801e2 	sh	t0,482(s0)
    1584:	3c014120 	lui	at,0x4120
    1588:	44813000 	mtc1	at,$f6
    158c:	02202825 	move	a1,s1
    1590:	2406000b 	li	a2,11
    1594:	3c0742f0 	lui	a3,0x42f0
    1598:	0c000000 	jal	0 <func_80B4AB40>
    159c:	e7a60010 	swc1	$f6,16(sp)
    15a0:	10000040 	b	16a4 <func_80B4BF2C+0x2b8>
    15a4:	8e090038 	lw	t1,56(s0)
    15a8:	0c000000 	jal	0 <func_80B4AB40>
    15ac:	262420d8 	addiu	a0,s1,8408
    15b0:	24010006 	li	at,6
    15b4:	5441003b 	bnel	v0,at,16a4 <func_80B4BF2C+0x2b8>
    15b8:	8e090038 	lw	t1,56(s0)
    15bc:	0c000000 	jal	0 <func_80B4AB40>
    15c0:	02202025 	move	a0,s1
    15c4:	10400036 	beqz	v0,16a0 <func_80B4BF2C+0x2b4>
    15c8:	2409703c 	li	t1,28732
    15cc:	a609010e 	sh	t1,270(s0)
    15d0:	02202025 	move	a0,s1
    15d4:	0c000000 	jal	0 <func_80B4AB40>
    15d8:	3125ffff 	andi	a1,t1,0xffff
    15dc:	0c000000 	jal	0 <func_80B4AB40>
    15e0:	24040040 	li	a0,64
    15e4:	240a0006 	li	t2,6
    15e8:	1000002d 	b	16a0 <func_80B4BF2C+0x2b4>
    15ec:	a60a01e2 	sh	t2,482(s0)
    15f0:	c4480028 	lwc1	$f8,40(v0)
    15f4:	c60a0028 	lwc1	$f10,40(s0)
    15f8:	02002025 	move	a0,s0
    15fc:	460a403c 	c.lt.s	$f8,$f10
    1600:	00000000 	nop
    1604:	45030027 	bc1tl	16a4 <func_80B4BF2C+0x2b8>
    1608:	8e090038 	lw	t1,56(s0)
    160c:	0c000000 	jal	0 <func_80B4AB40>
    1610:	02202825 	move	a1,s1
    1614:	10400005 	beqz	v0,162c <func_80B4BF2C+0x240>
    1618:	02002025 	move	a0,s0
    161c:	860b01e2 	lh	t3,482(s0)
    1620:	25790001 	addiu	t9,t3,1
    1624:	1000001e 	b	16a0 <func_80B4BF2C+0x2b4>
    1628:	a61901e2 	sh	t9,482(s0)
    162c:	0c000000 	jal	0 <func_80B4AB40>
    1630:	02202825 	move	a1,s1
    1634:	1000001b 	b	16a4 <func_80B4BF2C+0x2b8>
    1638:	8e090038 	lw	t1,56(s0)
    163c:	02002025 	move	a0,s0
    1640:	0c000000 	jal	0 <func_80B4AB40>
    1644:	02202825 	move	a1,s1
    1648:	50400016 	beqzl	v0,16a4 <func_80B4BF2C+0x2b8>
    164c:	8e090038 	lw	t1,56(s0)
    1650:	860c01e2 	lh	t4,482(s0)
    1654:	258dffff 	addiu	t5,t4,-1
    1658:	10000011 	b	16a0 <func_80B4BF2C+0x2b4>
    165c:	a60d01e2 	sh	t5,482(s0)
    1660:	02002025 	move	a0,s0
    1664:	0c000000 	jal	0 <func_80B4AB40>
    1668:	02202825 	move	a1,s1
    166c:	1040000c 	beqz	v0,16a0 <func_80B4BF2C+0x2b4>
    1670:	02202025 	move	a0,s1
    1674:	02002825 	move	a1,s0
    1678:	0c000000 	jal	0 <func_80B4AB40>
    167c:	24060007 	li	a2,7
    1680:	0c000000 	jal	0 <func_80B4AB40>
    1684:	24040032 	li	a0,50
    1688:	8e0e0004 	lw	t6,4(s0)
    168c:	2401feff 	li	at,-257
    1690:	24180004 	li	t8,4
    1694:	01c17824 	and	t7,t6,at
    1698:	ae0f0004 	sw	t7,4(s0)
    169c:	a61801e2 	sh	t8,482(s0)
    16a0:	8e090038 	lw	t1,56(s0)
    16a4:	02202025 	move	a0,s1
    16a8:	02002825 	move	a1,s0
    16ac:	afa90010 	sw	t1,16(sp)
    16b0:	8e08003c 	lw	t0,60(s0)
    16b4:	26060200 	addiu	a2,s0,512
    16b8:	26070206 	addiu	a3,s0,518
    16bc:	afa80014 	sw	t0,20(sp)
    16c0:	8e090040 	lw	t1,64(s0)
    16c4:	0c000000 	jal	0 <func_80B4AB40>
    16c8:	afa90018 	sw	t1,24(sp)
    16cc:	8fbf002c 	lw	ra,44(sp)
    16d0:	8fb00024 	lw	s0,36(sp)
    16d4:	8fb10028 	lw	s1,40(sp)
    16d8:	03e00008 	jr	ra
    16dc:	27bd0040 	addiu	sp,sp,64

000016e0 <EnZl1_Update>:
    16e0:	27bdffc8 	addiu	sp,sp,-56
    16e4:	3c0e0000 	lui	t6,0x0
    16e8:	25ce0000 	addiu	t6,t6,0
    16ec:	afbf0024 	sw	ra,36(sp)
    16f0:	afb00020 	sw	s0,32(sp)
    16f4:	afa5003c 	sw	a1,60(sp)
    16f8:	afae002c 	sw	t6,44(sp)
    16fc:	8c820190 	lw	v0,400(a0)
    1700:	3c0f0000 	lui	t7,0x0
    1704:	00808025 	move	s0,a0
    1708:	11c20005 	beq	t6,v0,1720 <EnZl1_Update+0x40>
    170c:	25ef0000 	addiu	t7,t7,0
    1710:	51e20004 	beql	t7,v0,1724 <EnZl1_Update+0x44>
    1714:	44800000 	mtc1	zero,$f0
    1718:	0c000000 	jal	0 <func_80B4AB40>
    171c:	2484014c 	addiu	a0,a0,332
    1720:	44800000 	mtc1	zero,$f0
    1724:	24180005 	li	t8,5
    1728:	afb80014 	sw	t8,20(sp)
    172c:	44060000 	mfc1	a2,$f0
    1730:	44070000 	mfc1	a3,$f0
    1734:	8fa4003c 	lw	a0,60(sp)
    1738:	02002825 	move	a1,s0
    173c:	0c000000 	jal	0 <func_80B4AB40>
    1740:	e7a00010 	swc1	$f0,16(sp)
    1744:	8e190190 	lw	t9,400(s0)
    1748:	02002025 	move	a0,s0
    174c:	8fa5003c 	lw	a1,60(sp)
    1750:	0320f809 	jalr	t9
    1754:	00000000 	nop
    1758:	8fa8002c 	lw	t0,44(sp)
    175c:	8e090190 	lw	t1,400(s0)
    1760:	26060194 	addiu	a2,s0,404
    1764:	00c02825 	move	a1,a2
    1768:	11090009 	beq	t0,t1,1790 <EnZl1_Update+0xb0>
    176c:	02002025 	move	a0,s0
    1770:	0c000000 	jal	0 <func_80B4AB40>
    1774:	afa6002c 	sw	a2,44(sp)
    1778:	8fa4003c 	lw	a0,60(sp)
    177c:	3c010001 	lui	at,0x1
    1780:	34211e60 	ori	at,at,0x1e60
    1784:	8fa6002c 	lw	a2,44(sp)
    1788:	0c000000 	jal	0 <func_80B4AB40>
    178c:	00812821 	addu	a1,a0,at
    1790:	86050030 	lh	a1,48(s0)
    1794:	240b0001 	li	t3,1
    1798:	afab0010 	sw	t3,16(sp)
    179c:	260400b4 	addiu	a0,s0,180
    17a0:	2406000a 	li	a2,10
    17a4:	0c000000 	jal	0 <func_80B4AB40>
    17a8:	240703e8 	li	a3,1000
    17ac:	86050032 	lh	a1,50(s0)
    17b0:	240c0001 	li	t4,1
    17b4:	afac0010 	sw	t4,16(sp)
    17b8:	260400b6 	addiu	a0,s0,182
    17bc:	2406000a 	li	a2,10
    17c0:	0c000000 	jal	0 <func_80B4AB40>
    17c4:	240703e8 	li	a3,1000
    17c8:	86050034 	lh	a1,52(s0)
    17cc:	240d0001 	li	t5,1
    17d0:	afad0010 	sw	t5,16(sp)
    17d4:	260400b8 	addiu	a0,s0,184
    17d8:	2406000a 	li	a2,10
    17dc:	0c000000 	jal	0 <func_80B4AB40>
    17e0:	240703e8 	li	a3,1000
    17e4:	0c000000 	jal	0 <func_80B4AB40>
    17e8:	02002025 	move	a0,s0
    17ec:	8fbf0024 	lw	ra,36(sp)
    17f0:	8fb00020 	lw	s0,32(sp)
    17f4:	27bd0038 	addiu	sp,sp,56
    17f8:	03e00008 	jr	ra
    17fc:	00000000 	nop

00001800 <func_80B4C340>:
    1800:	24010004 	li	at,4
    1804:	afa40000 	sw	a0,0(sp)
    1808:	10a10008 	beq	a1,at,182c <func_80B4C340+0x2c>
    180c:	afa7000c 	sw	a3,12(sp)
    1810:	24010003 	li	at,3
    1814:	10a10005 	beq	a1,at,182c <func_80B4C340+0x2c>
    1818:	24010006 	li	at,6
    181c:	10a10003 	beq	a1,at,182c <func_80B4C340+0x2c>
    1820:	24010005 	li	at,5
    1824:	54a10003 	bnel	a1,at,1834 <func_80B4C340+0x34>
    1828:	2401000a 	li	at,10
    182c:	acc00000 	sw	zero,0(a2)
    1830:	2401000a 	li	at,10
    1834:	10a10013 	beq	a1,at,1884 <func_80B4C340+0x84>
    1838:	8fa20014 	lw	v0,20(sp)
    183c:	24010011 	li	at,17
    1840:	14a1001d 	bne	a1,at,18b8 <func_80B4C340+0xb8>
    1844:	8fa20014 	lw	v0,20(sp)
    1848:	8fa30010 	lw	v1,16(sp)
    184c:	844f0202 	lh	t7,514(v0)
    1850:	846e0000 	lh	t6,0(v1)
    1854:	84790002 	lh	t9,2(v1)
    1858:	846a0004 	lh	t2,4(v1)
    185c:	01cfc021 	addu	t8,t6,t7
    1860:	a4780000 	sh	t8,0(v1)
    1864:	84480204 	lh	t0,516(v0)
    1868:	03284821 	addu	t1,t9,t0
    186c:	a4690002 	sh	t1,2(v1)
    1870:	844b0200 	lh	t3,512(v0)
    1874:	00001025 	move	v0,zero
    1878:	014b6021 	addu	t4,t2,t3
    187c:	03e00008 	jr	ra
    1880:	a46c0004 	sh	t4,4(v1)
    1884:	8fa30010 	lw	v1,16(sp)
    1888:	844e0208 	lh	t6,520(v0)
    188c:	846d0000 	lh	t5,0(v1)
    1890:	84780002 	lh	t8,2(v1)
    1894:	84690004 	lh	t1,4(v1)
    1898:	01ae7821 	addu	t7,t5,t6
    189c:	a46f0000 	sh	t7,0(v1)
    18a0:	84590206 	lh	t9,518(v0)
    18a4:	03194021 	addu	t0,t8,t9
    18a8:	a4680002 	sh	t0,2(v1)
    18ac:	844a020a 	lh	t2,522(v0)
    18b0:	012a5821 	addu	t3,t1,t2
    18b4:	a46b0004 	sh	t3,4(v1)
    18b8:	03e00008 	jr	ra
    18bc:	00001025 	move	v0,zero

000018c0 <func_80B4C400>:
    18c0:	27bdffd8 	addiu	sp,sp,-40
    18c4:	3c0e0000 	lui	t6,0x0
    18c8:	afbf0014 	sw	ra,20(sp)
    18cc:	afa40028 	sw	a0,40(sp)
    18d0:	afa60030 	sw	a2,48(sp)
    18d4:	afa70034 	sw	a3,52(sp)
    18d8:	25ce2144 	addiu	t6,t6,8516
    18dc:	8dd80000 	lw	t8,0(t6)
    18e0:	27a4001c 	addiu	a0,sp,28
    18e4:	24010011 	li	at,17
    18e8:	ac980000 	sw	t8,0(a0)
    18ec:	8dcf0004 	lw	t7,4(t6)
    18f0:	ac8f0004 	sw	t7,4(a0)
    18f4:	8dd80008 	lw	t8,8(t6)
    18f8:	14a10004 	bne	a1,at,190c <func_80B4C400+0x4c>
    18fc:	ac980008 	sw	t8,8(a0)
    1900:	8fa50038 	lw	a1,56(sp)
    1904:	0c000000 	jal	0 <func_80B4AB40>
    1908:	24a50038 	addiu	a1,a1,56
    190c:	8fbf0014 	lw	ra,20(sp)
    1910:	27bd0028 	addiu	sp,sp,40
    1914:	03e00008 	jr	ra
    1918:	00000000 	nop

0000191c <EnZl1_Draw>:
    191c:	27bdffa8 	addiu	sp,sp,-88
    1920:	afbf002c 	sw	ra,44(sp)
    1924:	afb00028 	sw	s0,40(sp)
    1928:	afa5005c 	sw	a1,92(sp)
    192c:	8ca50000 	lw	a1,0(a1)
    1930:	00808025 	move	s0,a0
    1934:	3c060000 	lui	a2,0x0
    1938:	24c60000 	addiu	a2,a2,0
    193c:	27a40040 	addiu	a0,sp,64
    1940:	240707db 	li	a3,2011
    1944:	0c000000 	jal	0 <func_80B4AB40>
    1948:	afa50050 	sw	a1,80(sp)
    194c:	8fa80050 	lw	t0,80(sp)
    1950:	3c18db06 	lui	t8,0xdb06
    1954:	37180020 	ori	t8,t8,0x20
    1958:	8d0202c0 	lw	v0,704(t0)
    195c:	3c050000 	lui	a1,0x0
    1960:	24a50000 	addiu	a1,a1,0
    1964:	244f0008 	addiu	t7,v0,8
    1968:	ad0f02c0 	sw	t7,704(t0)
    196c:	ac580000 	sw	t8,0(v0)
    1970:	8e0401f4 	lw	a0,500(s0)
    1974:	3c0600ff 	lui	a2,0xff
    1978:	34c6ffff 	ori	a2,a2,0xffff
    197c:	0004c900 	sll	t9,a0,0x4
    1980:	00194f02 	srl	t1,t9,0x1c
    1984:	00095080 	sll	t2,t1,0x2
    1988:	00aa5821 	addu	t3,a1,t2
    198c:	8d6c0000 	lw	t4,0(t3)
    1990:	00866824 	and	t5,a0,a2
    1994:	3c078000 	lui	a3,0x8000
    1998:	018d7021 	addu	t6,t4,t5
    199c:	01c77821 	addu	t7,t6,a3
    19a0:	ac4f0004 	sw	t7,4(v0)
    19a4:	8d0202c0 	lw	v0,704(t0)
    19a8:	3c19db06 	lui	t9,0xdb06
    19ac:	37390024 	ori	t9,t9,0x24
    19b0:	24580008 	addiu	t8,v0,8
    19b4:	ad1802c0 	sw	t8,704(t0)
    19b8:	ac590000 	sw	t9,0(v0)
    19bc:	8e0401f8 	lw	a0,504(s0)
    19c0:	00044900 	sll	t1,a0,0x4
    19c4:	00095702 	srl	t2,t1,0x1c
    19c8:	000a5880 	sll	t3,t2,0x2
    19cc:	00ab6021 	addu	t4,a1,t3
    19d0:	8d8d0000 	lw	t5,0(t4)
    19d4:	00867024 	and	t6,a0,a2
    19d8:	3c09db06 	lui	t1,0xdb06
    19dc:	01ae7821 	addu	t7,t5,t6
    19e0:	01e7c021 	addu	t8,t7,a3
    19e4:	ac580004 	sw	t8,4(v0)
    19e8:	8d0202c0 	lw	v0,704(t0)
    19ec:	35290028 	ori	t1,t1,0x28
    19f0:	24590008 	addiu	t9,v0,8
    19f4:	ad1902c0 	sw	t9,704(t0)
    19f8:	ac490000 	sw	t1,0(v0)
    19fc:	8e0401ec 	lw	a0,492(s0)
    1a00:	00045100 	sll	t2,a0,0x4
    1a04:	000a5f02 	srl	t3,t2,0x1c
    1a08:	000b6080 	sll	t4,t3,0x2
    1a0c:	00ac6821 	addu	t5,a1,t4
    1a10:	8dae0000 	lw	t6,0(t5)
    1a14:	00867824 	and	t7,a0,a2
    1a18:	01cfc021 	addu	t8,t6,t7
    1a1c:	0307c821 	addu	t9,t8,a3
    1a20:	ac590004 	sw	t9,4(v0)
    1a24:	8fa9005c 	lw	t1,92(sp)
    1a28:	0c000000 	jal	0 <func_80B4AB40>
    1a2c:	8d240000 	lw	a0,0(t1)
    1a30:	8e050150 	lw	a1,336(s0)
    1a34:	8e06016c 	lw	a2,364(s0)
    1a38:	9207014e 	lbu	a3,334(s0)
    1a3c:	3c0a0000 	lui	t2,0x0
    1a40:	3c0b0000 	lui	t3,0x0
    1a44:	256b0000 	addiu	t3,t3,0
    1a48:	254a0000 	addiu	t2,t2,0
    1a4c:	afaa0010 	sw	t2,16(sp)
    1a50:	afab0014 	sw	t3,20(sp)
    1a54:	afb00018 	sw	s0,24(sp)
    1a58:	0c000000 	jal	0 <func_80B4AB40>
    1a5c:	8fa4005c 	lw	a0,92(sp)
    1a60:	8fac005c 	lw	t4,92(sp)
    1a64:	3c060000 	lui	a2,0x0
    1a68:	24c60010 	addiu	a2,a2,16
    1a6c:	27a40040 	addiu	a0,sp,64
    1a70:	240707fe 	li	a3,2046
    1a74:	0c000000 	jal	0 <func_80B4AB40>
    1a78:	8d850000 	lw	a1,0(t4)
    1a7c:	8fbf002c 	lw	ra,44(sp)
    1a80:	8fb00028 	lw	s0,40(sp)
    1a84:	27bd0058 	addiu	sp,sp,88
    1a88:	03e00008 	jr	ra
    1a8c:	00000000 	nop
