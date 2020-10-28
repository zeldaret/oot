
build/src/overlays/actors/ovl_En_Ik/z_en_ik.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnIk_Destroy>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	3c0145fa 	lui	at,0x45fa
       8:	44812000 	mtc1	at,$f4
       c:	afa40020 	sw	a0,32(sp)
      10:	afbf001c 	sw	ra,28(sp)
      14:	afa50024 	sw	a1,36(sp)
      18:	00a02025 	move	a0,a1
      1c:	8fa50020 	lw	a1,32(sp)
      20:	24060113 	li	a2,275
      24:	24070005 	li	a3,5
      28:	0c000000 	jal	0 <EnIk_Destroy>
      2c:	e7a40010 	swc1	$f4,16(sp)
      30:	54400004 	bnezl	v0,44 <EnIk_Destroy+0x44>
      34:	8fa50020 	lw	a1,32(sp)
      38:	0c000000 	jal	0 <EnIk_Destroy>
      3c:	00000000 	nop
      40:	8fa50020 	lw	a1,32(sp)
      44:	8fa40024 	lw	a0,36(sp)
      48:	0c000000 	jal	0 <EnIk_Destroy>
      4c:	24a503ec 	addiu	a1,a1,1004
      50:	8fa50020 	lw	a1,32(sp)
      54:	8fa40024 	lw	a0,36(sp)
      58:	0c000000 	jal	0 <EnIk_Destroy>
      5c:	24a50320 	addiu	a1,a1,800
      60:	8fa50020 	lw	a1,32(sp)
      64:	8fa40024 	lw	a0,36(sp)
      68:	0c000000 	jal	0 <EnIk_Destroy>
      6c:	24a5036c 	addiu	a1,a1,876
      70:	8fbf001c 	lw	ra,28(sp)
      74:	27bd0020 	addiu	sp,sp,32
      78:	03e00008 	jr	ra
      7c:	00000000 	nop

00000080 <func_80A74390>:
      80:	03e00008 	jr	ra
      84:	ac850304 	sw	a1,772(a0)

00000088 <func_80A74398>:
      88:	27bdfe20 	addiu	sp,sp,-480
      8c:	afbf0024 	sw	ra,36(sp)
      90:	afb10020 	sw	s1,32(sp)
      94:	afb0001c 	sw	s0,28(sp)
      98:	8c980004 	lw	t8,4(a0)
      9c:	3c0e0000 	lui	t6,0x0
      a0:	3c0f0000 	lui	t7,0x0
      a4:	25ce0000 	addiu	t6,t6,0
      a8:	25ef0000 	addiu	t7,t7,0
      ac:	37190400 	ori	t9,t8,0x400
      b0:	00808025 	move	s0,a0
      b4:	ac8e0130 	sw	t6,304(a0)
      b8:	ac8f0134 	sw	t7,308(a0)
      bc:	ac990004 	sw	t9,4(a0)
      c0:	00a08825 	move	s1,a1
      c4:	00a02025 	move	a0,a1
      c8:	26050320 	addiu	a1,s0,800
      cc:	0c000000 	jal	0 <EnIk_Destroy>
      d0:	afa5002c 	sw	a1,44(sp)
      d4:	3c070000 	lui	a3,0x0
      d8:	8fa5002c 	lw	a1,44(sp)
      dc:	24e70000 	addiu	a3,a3,0
      e0:	02202025 	move	a0,s1
      e4:	0c000000 	jal	0 <EnIk_Destroy>
      e8:	02003025 	move	a2,s0
      ec:	260503ec 	addiu	a1,s0,1004
      f0:	afa5002c 	sw	a1,44(sp)
      f4:	0c000000 	jal	0 <EnIk_Destroy>
      f8:	02202025 	move	a0,s1
      fc:	3c070000 	lui	a3,0x0
     100:	260a040c 	addiu	t2,s0,1036
     104:	8fa5002c 	lw	a1,44(sp)
     108:	afaa0010 	sw	t2,16(sp)
     10c:	24e70000 	addiu	a3,a3,0
     110:	02202025 	move	a0,s1
     114:	0c000000 	jal	0 <EnIk_Destroy>
     118:	02003025 	move	a2,s0
     11c:	2605036c 	addiu	a1,s0,876
     120:	afa5002c 	sw	a1,44(sp)
     124:	0c000000 	jal	0 <EnIk_Destroy>
     128:	02202025 	move	a0,s1
     12c:	3c070000 	lui	a3,0x0
     130:	8fa5002c 	lw	a1,44(sp)
     134:	24e70000 	addiu	a3,a3,0
     138:	02202025 	move	a0,s1
     13c:	0c000000 	jal	0 <EnIk_Destroy>
     140:	02003025 	move	a2,s0
     144:	8619001c 	lh	t9,28(s0)
     148:	860e001c 	lh	t6,28(s0)
     14c:	3c0b0000 	lui	t3,0x0
     150:	256b0000 	addiu	t3,t3,0
     154:	332a00ff 	andi	t2,t9,0xff
     158:	ae0b0098 	sw	t3,152(s0)
     15c:	a60a001c 	sh	t2,28(s0)
     160:	860b001c 	lh	t3,28(s0)
     164:	3c01bf80 	lui	at,0xbf80
     168:	44812000 	mtc1	at,$f4
     16c:	000e7a03 	sra	t7,t6,0x8
     170:	240c00fe 	li	t4,254
     174:	240d001e 	li	t5,30
     178:	31f800ff 	andi	t8,t7,0xff
     17c:	a20c00ae 	sb	t4,174(s0)
     180:	a20002fc 	sb	zero,764(s0)
     184:	a20d00af 	sb	t5,175(s0)
     188:	a6180302 	sh	t8,770(s0)
     18c:	15600007 	bnez	t3,1ac <func_80A74398+0x124>
     190:	e604006c 	swc1	$f4,108(s0)
     194:	01a06025 	move	t4,t5
     198:	258d0014 	addiu	t5,t4,20
     19c:	240e0034 	li	t6,52
     1a0:	a20d00af 	sb	t5,175(s0)
     1a4:	1000000c 	b	1d8 <func_80A74398+0x150>
     1a8:	a20e0117 	sb	t6,279(s0)
     1ac:	3c053c44 	lui	a1,0x3c44
     1b0:	34a59ba6 	ori	a1,a1,0x9ba6
     1b4:	0c000000 	jal	0 <EnIk_Destroy>
     1b8:	02002025 	move	a0,s0
     1bc:	240f0035 	li	t7,53
     1c0:	a20f0117 	sb	t7,279(s0)
     1c4:	02202025 	move	a0,s1
     1c8:	26251c24 	addiu	a1,s1,7204
     1cc:	02003025 	move	a2,s0
     1d0:	0c000000 	jal	0 <EnIk_Destroy>
     1d4:	24070005 	li	a3,5
     1d8:	240200ff 	li	v0,255
     1dc:	24180040 	li	t8,64
     1e0:	241900c8 	li	t9,200
     1e4:	24080096 	li	t0,150
     1e8:	240a0008 	li	t2,8
     1ec:	240b0002 	li	t3,2
     1f0:	27ac0038 	addiu	t4,sp,56
     1f4:	a3a201c9 	sb	v0,457(sp)
     1f8:	a3a201c8 	sb	v0,456(sp)
     1fc:	a3a201c5 	sb	v0,453(sp)
     200:	a3a201c4 	sb	v0,452(sp)
     204:	a3a201c2 	sb	v0,450(sp)
     208:	a3a201c1 	sb	v0,449(sp)
     20c:	a3a201c0 	sb	v0,448(sp)
     210:	a3a201bd 	sb	v0,445(sp)
     214:	a3a201bc 	sb	v0,444(sp)
     218:	a3b801c3 	sb	t8,451(sp)
     21c:	a3b901bf 	sb	t9,447(sp)
     220:	a3a801be 	sb	t0,446(sp)
     224:	a3a001c7 	sb	zero,455(sp)
     228:	afaa01cc 	sw	t2,460(sp)
     22c:	afa001d0 	sw	zero,464(sp)
     230:	afab01d4 	sw	t3,468(sp)
     234:	afac0014 	sw	t4,20(sp)
     238:	a3a801c6 	sb	t0,454(sp)
     23c:	a3a201ca 	sb	v0,458(sp)
     240:	02202025 	move	a0,s1
     244:	260504c4 	addiu	a1,s0,1220
     248:	24060001 	li	a2,1
     24c:	00003825 	move	a3,zero
     250:	afa00010 	sw	zero,16(sp)
     254:	0c000000 	jal	0 <EnIk_Destroy>
     258:	a3a001cb 	sb	zero,459(sp)
     25c:	0c000000 	jal	0 <EnIk_Destroy>
     260:	02002025 	move	a0,s0
     264:	86050302 	lh	a1,770(s0)
     268:	240100ff 	li	at,255
     26c:	50a1000a 	beql	a1,at,298 <func_80A74398+0x210>
     270:	860d001c 	lh	t5,28(s0)
     274:	0c000000 	jal	0 <EnIk_Destroy>
     278:	02202025 	move	a0,s1
     27c:	50400011 	beqzl	v0,2c4 <func_80A74398+0x23c>
     280:	8fbf0024 	lw	ra,36(sp)
     284:	0c000000 	jal	0 <EnIk_Destroy>
     288:	02002025 	move	a0,s0
     28c:	1000000d 	b	2c4 <func_80A74398+0x23c>
     290:	8fbf0024 	lw	ra,36(sp)
     294:	860d001c 	lh	t5,28(s0)
     298:	3c050001 	lui	a1,0x1
     29c:	00b12821 	addu	a1,a1,s1
     2a0:	11a00007 	beqz	t5,2c0 <func_80A74398+0x238>
     2a4:	02202025 	move	a0,s1
     2a8:	0c000000 	jal	0 <EnIk_Destroy>
     2ac:	80a51cbc 	lb	a1,7356(a1)
     2b0:	50400004 	beqzl	v0,2c4 <func_80A74398+0x23c>
     2b4:	8fbf0024 	lw	ra,36(sp)
     2b8:	0c000000 	jal	0 <EnIk_Destroy>
     2bc:	02002025 	move	a0,s0
     2c0:	8fbf0024 	lw	ra,36(sp)
     2c4:	8fb0001c 	lw	s0,28(sp)
     2c8:	8fb10020 	lw	s1,32(sp)
     2cc:	03e00008 	jr	ra
     2d0:	27bd01e0 	addiu	sp,sp,480

000002d4 <func_80A745E4>:
     2d4:	27bdffd8 	addiu	sp,sp,-40
     2d8:	afbf0024 	sw	ra,36(sp)
     2dc:	afb00020 	sw	s0,32(sp)
     2e0:	afa5002c 	sw	a1,44(sp)
     2e4:	908e02fb 	lbu	t6,763(a0)
     2e8:	00808025 	move	s0,a0
     2ec:	02002825 	move	a1,s0
     2f0:	15c00003 	bnez	t6,300 <func_80A745E4+0x2c>
     2f4:	3c0642c8 	lui	a2,0x42c8
     2f8:	848f001c 	lh	t7,28(a0)
     2fc:	15e00013 	bnez	t7,34c <func_80A745E4+0x78>
     300:	24184000 	li	t8,16384
     304:	afb80010 	sw	t8,16(sp)
     308:	861900b6 	lh	t9,182(s0)
     30c:	8fa4002c 	lw	a0,44(sp)
     310:	24072710 	li	a3,10000
     314:	0c000000 	jal	0 <EnIk_Destroy>
     318:	afb90014 	sw	t9,20(sp)
     31c:	1040000b 	beqz	v0,34c <func_80A745E4+0x78>
     320:	8fa8002c 	lw	t0,44(sp)
     324:	3c090001 	lui	t1,0x1
     328:	01284821 	addu	t1,t1,t0
     32c:	8d291de4 	lw	t1,7652(t1)
     330:	312a0001 	andi	t2,t1,0x1
     334:	51400006 	beqzl	t2,350 <func_80A745E4+0x7c>
     338:	00001025 	move	v0,zero
     33c:	0c000000 	jal	0 <EnIk_Destroy>
     340:	02002025 	move	a0,s0
     344:	10000002 	b	350 <func_80A745E4+0x7c>
     348:	24020001 	li	v0,1
     34c:	00001025 	move	v0,zero
     350:	8fbf0024 	lw	ra,36(sp)
     354:	8fb00020 	lw	s0,32(sp)
     358:	27bd0028 	addiu	sp,sp,40
     35c:	03e00008 	jr	ra
     360:	00000000 	nop

00000364 <func_80A74674>:
     364:	27bdffd0 	addiu	sp,sp,-48
     368:	afbf002c 	sw	ra,44(sp)
     36c:	afb20028 	sw	s2,40(sp)
     370:	afb10024 	sw	s1,36(sp)
     374:	afb00020 	sw	s0,32(sp)
     378:	f7b40018 	sdc1	$f20,24(sp)
     37c:	8c901c64 	lw	s0,7268(a0)
     380:	00a08825 	move	s1,a1
     384:	3c0142a0 	lui	at,0x42a0
     388:	52000017 	beqzl	s0,3e8 <func_80A74674+0x84>
     38c:	00001025 	move	v0,zero
     390:	4481a000 	mtc1	at,$f20
     394:	24120169 	li	s2,361
     398:	12110006 	beq	s0,s1,3b4 <func_80A74674+0x50>
     39c:	00000000 	nop
     3a0:	860e0000 	lh	t6,0(s0)
     3a4:	02202025 	move	a0,s1
     3a8:	02002825 	move	a1,s0
     3ac:	524e0004 	beql	s2,t6,3c0 <func_80A74674+0x5c>
     3b0:	4406a000 	mfc1	a2,$f20
     3b4:	10000009 	b	3dc <func_80A74674+0x78>
     3b8:	8e100124 	lw	s0,292(s0)
     3bc:	4406a000 	mfc1	a2,$f20
     3c0:	0c000000 	jal	0 <EnIk_Destroy>
     3c4:	24072710 	li	a3,10000
     3c8:	50400004 	beqzl	v0,3dc <func_80A74674+0x78>
     3cc:	8e100124 	lw	s0,292(s0)
     3d0:	10000005 	b	3e8 <func_80A74674+0x84>
     3d4:	02001025 	move	v0,s0
     3d8:	8e100124 	lw	s0,292(s0)
     3dc:	1600ffee 	bnez	s0,398 <func_80A74674+0x34>
     3e0:	00000000 	nop
     3e4:	00001025 	move	v0,zero
     3e8:	8fbf002c 	lw	ra,44(sp)
     3ec:	d7b40018 	ldc1	$f20,24(sp)
     3f0:	8fb00020 	lw	s0,32(sp)
     3f4:	8fb10024 	lw	s1,36(sp)
     3f8:	8fb20028 	lw	s2,40(sp)
     3fc:	03e00008 	jr	ra
     400:	27bd0030 	addiu	sp,sp,48

00000404 <func_80A74714>:
     404:	27bdffd0 	addiu	sp,sp,-48
     408:	afb00028 	sw	s0,40(sp)
     40c:	00808025 	move	s0,a0
     410:	afbf002c 	sw	ra,44(sp)
     414:	3c040601 	lui	a0,0x601
     418:	0c000000 	jal	0 <EnIk_Destroy>
     41c:	2484cd70 	addiu	a0,a0,-12944
     420:	44822000 	mtc1	v0,$f4
     424:	860e001c 	lh	t6,28(s0)
     428:	3c050601 	lui	a1,0x601
     42c:	46802020 	cvt.s.w	$f0,$f4
     430:	29c10002 	slti	at,t6,2
     434:	24a5cd70 	addiu	a1,a1,-12944
     438:	2604014c 	addiu	a0,s0,332
     43c:	240f0002 	li	t7,2
     440:	14200005 	bnez	at,458 <func_80A74714+0x54>
     444:	46000306 	mov.s	$f12,$f0
     448:	3c013f80 	lui	at,0x3f80
     44c:	44813000 	mtc1	at,$f6
     450:	10000003 	b	460 <func_80A74714+0x5c>
     454:	46060081 	sub.s	$f2,$f0,$f6
     458:	44801000 	mtc1	zero,$f2
     45c:	00000000 	nop
     460:	44800000 	mtc1	zero,$f0
     464:	44071000 	mfc1	a3,$f2
     468:	e7ac0010 	swc1	$f12,16(sp)
     46c:	44060000 	mfc1	a2,$f0
     470:	afaf0014 	sw	t7,20(sp)
     474:	0c000000 	jal	0 <EnIk_Destroy>
     478:	e7a00018 	swc1	$f0,24(sp)
     47c:	44804000 	mtc1	zero,$f8
     480:	24180003 	li	t8,3
     484:	3c050000 	lui	a1,0x0
     488:	a21802f8 	sb	t8,760(s0)
     48c:	24a50000 	addiu	a1,a1,0
     490:	02002025 	move	a0,s0
     494:	0c000000 	jal	0 <EnIk_Destroy>
     498:	e6080068 	swc1	$f8,104(s0)
     49c:	8fbf002c 	lw	ra,44(sp)
     4a0:	8fb00028 	lw	s0,40(sp)
     4a4:	27bd0030 	addiu	sp,sp,48
     4a8:	03e00008 	jr	ra
     4ac:	00000000 	nop

000004b0 <func_80A747C0>:
     4b0:	27bdffd0 	addiu	sp,sp,-48
     4b4:	afbf001c 	sw	ra,28(sp)
     4b8:	afb00018 	sw	s0,24(sp)
     4bc:	afa50034 	sw	a1,52(sp)
     4c0:	908e0331 	lbu	t6,817(a0)
     4c4:	00808025 	move	s0,a0
     4c8:	31cf0002 	andi	t7,t6,0x2
     4cc:	51e00018 	beqzl	t7,530 <func_80A747C0+0x80>
     4d0:	3c0140a0 	lui	at,0x40a0
     4d4:	8c880024 	lw	t0,36(a0)
     4d8:	27b80024 	addiu	t8,sp,36
     4dc:	2405393a 	li	a1,14650
     4e0:	af080000 	sw	t0,0(t8)
     4e4:	8c990028 	lw	t9,40(a0)
     4e8:	af190004 	sw	t9,4(t8)
     4ec:	8c88002c 	lw	t0,44(a0)
     4f0:	0c000000 	jal	0 <EnIk_Destroy>
     4f4:	af080008 	sw	t0,8(t8)
     4f8:	3c0141f0 	lui	at,0x41f0
     4fc:	44813000 	mtc1	at,$f6
     500:	c7a40028 	lwc1	$f4,40(sp)
     504:	8fa40034 	lw	a0,52(sp)
     508:	27a50024 	addiu	a1,sp,36
     50c:	46062200 	add.s	$f8,$f4,$f6
     510:	0c000000 	jal	0 <EnIk_Destroy>
     514:	e7a80028 	swc1	$f8,40(sp)
     518:	3c013f80 	lui	at,0x3f80
     51c:	44815000 	mtc1	at,$f10
     520:	24040038 	li	a0,56
     524:	0c000000 	jal	0 <EnIk_Destroy>
     528:	e60a0168 	swc1	$f10,360(s0)
     52c:	3c0140a0 	lui	at,0x40a0
     530:	44818000 	mtc1	at,$f16
     534:	c6120164 	lwc1	$f18,356(s0)
     538:	02002025 	move	a0,s0
     53c:	46128032 	c.eq.s	$f16,$f18
     540:	00000000 	nop
     544:	45000003 	bc1f	554 <func_80A747C0+0xa4>
     548:	00000000 	nop
     54c:	0c000000 	jal	0 <EnIk_Destroy>
     550:	240539c2 	li	a1,14786
     554:	0c000000 	jal	0 <EnIk_Destroy>
     558:	2604014c 	addiu	a0,s0,332
     55c:	50400007 	beqzl	v0,57c <func_80A747C0+0xcc>
     560:	8fbf001c 	lw	ra,28(sp)
     564:	8e090004 	lw	t1,4(s0)
     568:	02002025 	move	a0,s0
     56c:	352a0005 	ori	t2,t1,0x5
     570:	0c000000 	jal	0 <EnIk_Destroy>
     574:	ae0a0004 	sw	t2,4(s0)
     578:	8fbf001c 	lw	ra,28(sp)
     57c:	8fb00018 	lw	s0,24(sp)
     580:	27bd0030 	addiu	sp,sp,48
     584:	03e00008 	jr	ra
     588:	00000000 	nop

0000058c <func_80A7489C>:
     58c:	27bdffd0 	addiu	sp,sp,-48
     590:	afb00028 	sw	s0,40(sp)
     594:	00808025 	move	s0,a0
     598:	afbf002c 	sw	ra,44(sp)
     59c:	3c040601 	lui	a0,0x601
     5a0:	0c000000 	jal	0 <EnIk_Destroy>
     5a4:	2484dd50 	addiu	a0,a0,-8880
     5a8:	44822000 	mtc1	v0,$f4
     5ac:	44800000 	mtc1	zero,$f0
     5b0:	8e0e0004 	lw	t6,4(s0)
     5b4:	468021a0 	cvt.s.w	$f6,$f4
     5b8:	24180004 	li	t8,4
     5bc:	3c014080 	lui	at,0x4080
     5c0:	35cf0005 	ori	t7,t6,0x5
     5c4:	44814000 	mtc1	at,$f8
     5c8:	ae0f0004 	sw	t7,4(s0)
     5cc:	a21802f8 	sb	t8,760(s0)
     5d0:	e6000068 	swc1	$f0,104(s0)
     5d4:	3c050601 	lui	a1,0x601
     5d8:	44060000 	mfc1	a2,$f0
     5dc:	44070000 	mfc1	a3,$f0
     5e0:	24a5dd50 	addiu	a1,a1,-8880
     5e4:	afa00014 	sw	zero,20(sp)
     5e8:	e7a60010 	swc1	$f6,16(sp)
     5ec:	2604014c 	addiu	a0,s0,332
     5f0:	0c000000 	jal	0 <EnIk_Destroy>
     5f4:	e7a80018 	swc1	$f8,24(sp)
     5f8:	3c050000 	lui	a1,0x0
     5fc:	24a50000 	addiu	a1,a1,0
     600:	0c000000 	jal	0 <EnIk_Destroy>
     604:	02002025 	move	a0,s0
     608:	8fbf002c 	lw	ra,44(sp)
     60c:	8fb00028 	lw	s0,40(sp)
     610:	27bd0030 	addiu	sp,sp,48
     614:	03e00008 	jr	ra
     618:	00000000 	nop

0000061c <func_80A7492C>:
     61c:	27bdffe0 	addiu	sp,sp,-32
     620:	afbf001c 	sw	ra,28(sp)
     624:	afb00018 	sw	s0,24(sp)
     628:	afa50024 	sw	a1,36(sp)
     62c:	908e02fb 	lbu	t6,763(a0)
     630:	00808025 	move	s0,a0
     634:	24043ffc 	li	a0,16380
     638:	15c00003 	bnez	t6,648 <func_80A7492C+0x2c>
     63c:	00000000 	nop
     640:	10000001 	b	648 <func_80A7492C+0x2c>
     644:	24040aaa 	li	a0,2730
     648:	860f008a 	lh	t7,138(s0)
     64c:	861800b6 	lh	t8,182(s0)
     650:	01f81823 	subu	v1,t7,t8
     654:	00031c00 	sll	v1,v1,0x10
     658:	00031c03 	sra	v1,v1,0x10
     65c:	04600003 	bltz	v1,66c <func_80A7492C+0x50>
     660:	00031023 	negu	v0,v1
     664:	10000001 	b	66c <func_80A7492C+0x50>
     668:	00601025 	move	v0,v1
     66c:	0082082a 	slt	at,a0,v0
     670:	14200024 	bnez	at,704 <func_80A7492C+0xe8>
     674:	3c0142c8 	lui	at,0x42c8
     678:	44813000 	mtc1	at,$f6
     67c:	c6040090 	lwc1	$f4,144(s0)
     680:	3c014316 	lui	at,0x4316
     684:	4606203c 	c.lt.s	$f4,$f6
     688:	00000000 	nop
     68c:	4500001d 	bc1f	704 <func_80A7492C+0xe8>
     690:	00000000 	nop
     694:	c6000094 	lwc1	$f0,148(s0)
     698:	44804000 	mtc1	zero,$f8
     69c:	8fb90024 	lw	t9,36(sp)
     6a0:	44815000 	mtc1	at,$f10
     6a4:	4600403e 	c.le.s	$f8,$f0
     6a8:	3c080001 	lui	t0,0x1
     6ac:	01194021 	addu	t0,t0,t9
     6b0:	45020004 	bc1fl	6c4 <func_80A7492C+0xa8>
     6b4:	46000087 	neg.s	$f2,$f0
     6b8:	10000002 	b	6c4 <func_80A7492C+0xa8>
     6bc:	46000086 	mov.s	$f2,$f0
     6c0:	46000087 	neg.s	$f2,$f0
     6c4:	460a103c 	c.lt.s	$f2,$f10
     6c8:	00000000 	nop
     6cc:	4500000d 	bc1f	704 <func_80A7492C+0xe8>
     6d0:	00000000 	nop
     6d4:	8d081de4 	lw	t0,7652(t0)
     6d8:	31090001 	andi	t1,t0,0x1
     6dc:	11200005 	beqz	t1,6f4 <func_80A7492C+0xd8>
     6e0:	00000000 	nop
     6e4:	0c000000 	jal	0 <EnIk_Destroy>
     6e8:	02002025 	move	a0,s0
     6ec:	10000022 	b	778 <func_80A7492C+0x15c>
     6f0:	02002025 	move	a0,s0
     6f4:	0c000000 	jal	0 <EnIk_Destroy>
     6f8:	02002025 	move	a0,s0
     6fc:	1000001e 	b	778 <func_80A7492C+0x15c>
     700:	02002025 	move	a0,s0
     704:	04600003 	bltz	v1,714 <func_80A7492C+0xf8>
     708:	00031023 	negu	v0,v1
     70c:	10000001 	b	714 <func_80A7492C+0xf8>
     710:	00601025 	move	v0,v1
     714:	28414001 	slti	at,v0,16385
     718:	10200014 	beqz	at,76c <func_80A7492C+0x150>
     71c:	00000000 	nop
     720:	c6000094 	lwc1	$f0,148(s0)
     724:	44808000 	mtc1	zero,$f16
     728:	3c014316 	lui	at,0x4316
     72c:	44819000 	mtc1	at,$f18
     730:	4600803e 	c.le.s	$f16,$f0
     734:	00000000 	nop
     738:	45020004 	bc1fl	74c <func_80A7492C+0x130>
     73c:	46000087 	neg.s	$f2,$f0
     740:	10000002 	b	74c <func_80A7492C+0x130>
     744:	46000086 	mov.s	$f2,$f0
     748:	46000087 	neg.s	$f2,$f0
     74c:	4612103c 	c.lt.s	$f2,$f18
     750:	00000000 	nop
     754:	45000005 	bc1f	76c <func_80A7492C+0x150>
     758:	00000000 	nop
     75c:	0c000000 	jal	0 <EnIk_Destroy>
     760:	02002025 	move	a0,s0
     764:	10000004 	b	778 <func_80A7492C+0x15c>
     768:	02002025 	move	a0,s0
     76c:	0c000000 	jal	0 <EnIk_Destroy>
     770:	02002025 	move	a0,s0
     774:	02002025 	move	a0,s0
     778:	0c000000 	jal	0 <EnIk_Destroy>
     77c:	8fa50024 	lw	a1,36(sp)
     780:	0c000000 	jal	0 <EnIk_Destroy>
     784:	2604014c 	addiu	a0,s0,332
     788:	8fbf001c 	lw	ra,28(sp)
     78c:	8fb00018 	lw	s0,24(sp)
     790:	27bd0020 	addiu	sp,sp,32
     794:	03e00008 	jr	ra
     798:	00000000 	nop

0000079c <func_80A74AAC>:
     79c:	27bdffd0 	addiu	sp,sp,-48
     7a0:	afbf002c 	sw	ra,44(sp)
     7a4:	afb00028 	sw	s0,40(sp)
     7a8:	908f02fb 	lbu	t7,763(a0)
     7ac:	240e0005 	li	t6,5
     7b0:	00808025 	move	s0,a0
     7b4:	15e00015 	bnez	t7,80c <func_80A74AAC+0x70>
     7b8:	a08e02f8 	sb	t6,760(a0)
     7bc:	3c040601 	lui	a0,0x601
     7c0:	0c000000 	jal	0 <EnIk_Destroy>
     7c4:	2484ed24 	addiu	a0,a0,-4828
     7c8:	44822000 	mtc1	v0,$f4
     7cc:	3c01c080 	lui	at,0xc080
     7d0:	44814000 	mtc1	at,$f8
     7d4:	468021a0 	cvt.s.w	$f6,$f4
     7d8:	3c050601 	lui	a1,0x601
     7dc:	24a5ed24 	addiu	a1,a1,-4828
     7e0:	2604014c 	addiu	a0,s0,332
     7e4:	3c063f80 	lui	a2,0x3f80
     7e8:	24070000 	li	a3,0
     7ec:	e7a60010 	swc1	$f6,16(sp)
     7f0:	afa00014 	sw	zero,20(sp)
     7f4:	0c000000 	jal	0 <EnIk_Destroy>
     7f8:	e7a80018 	swc1	$f8,24(sp)
     7fc:	3c010000 	lui	at,0x0
     800:	c42a0000 	lwc1	$f10,0(at)
     804:	10000018 	b	868 <func_80A74AAC+0xcc>
     808:	e60a0068 	swc1	$f10,104(s0)
     80c:	3c040600 	lui	a0,0x600
     810:	0c000000 	jal	0 <EnIk_Destroy>
     814:	24846734 	addiu	a0,a0,26420
     818:	44828000 	mtc1	v0,$f16
     81c:	3c01c080 	lui	at,0xc080
     820:	44812000 	mtc1	at,$f4
     824:	468084a0 	cvt.s.w	$f18,$f16
     828:	3c050600 	lui	a1,0x600
     82c:	24a56734 	addiu	a1,a1,26420
     830:	2604014c 	addiu	a0,s0,332
     834:	3c063f80 	lui	a2,0x3f80
     838:	24070000 	li	a3,0
     83c:	e7b20010 	swc1	$f18,16(sp)
     840:	afa00014 	sw	zero,20(sp)
     844:	0c000000 	jal	0 <EnIk_Destroy>
     848:	e7a40018 	swc1	$f4,24(sp)
     84c:	02002025 	move	a0,s0
     850:	0c000000 	jal	0 <EnIk_Destroy>
     854:	240539bf 	li	a1,14783
     858:	3c014020 	lui	at,0x4020
     85c:	44813000 	mtc1	at,$f6
     860:	00000000 	nop
     864:	e6060068 	swc1	$f6,104(s0)
     868:	861800b6 	lh	t8,182(s0)
     86c:	3c050000 	lui	a1,0x0
     870:	24a50000 	addiu	a1,a1,0
     874:	02002025 	move	a0,s0
     878:	0c000000 	jal	0 <EnIk_Destroy>
     87c:	a6180032 	sh	t8,50(s0)
     880:	8fbf002c 	lw	ra,44(sp)
     884:	8fb00028 	lw	s0,40(sp)
     888:	27bd0030 	addiu	sp,sp,48
     88c:	03e00008 	jr	ra
     890:	00000000 	nop

00000894 <func_80A74BA4>:
     894:	27bdffc8 	addiu	sp,sp,-56
     898:	afbf0024 	sw	ra,36(sp)
     89c:	afb00020 	sw	s0,32(sp)
     8a0:	afa5003c 	sw	a1,60(sp)
     8a4:	908e02fb 	lbu	t6,763(a0)
     8a8:	00808025 	move	s0,a0
     8ac:	24083ffc 	li	t0,16380
     8b0:	15c00007 	bnez	t6,8d0 <func_80A74BA4+0x3c>
     8b4:	240704b0 	li	a3,1200
     8b8:	240f0010 	li	t7,16
     8bc:	24080aaa 	li	t0,2730
     8c0:	24070320 	li	a3,800
     8c4:	a7a00030 	sh	zero,48(sp)
     8c8:	10000005 	b	8e0 <func_80A74BA4+0x4c>
     8cc:	a7af002e 	sh	t7,46(sp)
     8d0:	24180002 	li	t8,2
     8d4:	24190009 	li	t9,9
     8d8:	a7b80030 	sh	t8,48(sp)
     8dc:	a7b9002e 	sh	t9,46(sp)
     8e0:	8603007e 	lh	v1,126(s0)
     8e4:	860900b6 	lh	t1,182(s0)
     8e8:	960a0088 	lhu	t2,136(s0)
     8ec:	26040032 	addiu	a0,s0,50
     8f0:	00692823 	subu	a1,v1,t1
     8f4:	00052c00 	sll	a1,a1,0x10
     8f8:	314b0008 	andi	t3,t2,0x8
     8fc:	11600017 	beqz	t3,95c <func_80A74BA4+0xc8>
     900:	00052c03 	sra	a1,a1,0x10
     904:	04a00003 	bltz	a1,914 <func_80A74BA4+0x80>
     908:	00051023 	negu	v0,a1
     90c:	10000001 	b	914 <func_80A74BA4+0x80>
     910:	00a01025 	move	v0,a1
     914:	28414000 	slti	at,v0,16384
     918:	14200010 	bnez	at,95c <func_80A74BA4+0xc8>
     91c:	24060001 	li	a2,1
     920:	860c008a 	lh	t4,138(s0)
     924:	24654000 	addiu	a1,v1,16384
     928:	00052c00 	sll	a1,a1,0x10
     92c:	19800005 	blez	t4,944 <func_80A74BA4+0xb0>
     930:	26040032 	addiu	a0,s0,50
     934:	2465c000 	addiu	a1,v1,-16384
     938:	00052c00 	sll	a1,a1,0x10
     93c:	10000002 	b	948 <func_80A74BA4+0xb4>
     940:	00052c03 	sra	a1,a1,0x10
     944:	00052c03 	sra	a1,a1,0x10
     948:	afa00010 	sw	zero,16(sp)
     94c:	0c000000 	jal	0 <EnIk_Destroy>
     950:	a7a80036 	sh	t0,54(sp)
     954:	10000007 	b	974 <func_80A74BA4+0xe0>
     958:	87a80036 	lh	t0,54(sp)
     95c:	8605008a 	lh	a1,138(s0)
     960:	a7a80036 	sh	t0,54(sp)
     964:	afa00010 	sw	zero,16(sp)
     968:	0c000000 	jal	0 <EnIk_Destroy>
     96c:	24060001 	li	a2,1
     970:	87a80036 	lh	t0,54(sp)
     974:	860d0032 	lh	t5,50(s0)
     978:	860e008a 	lh	t6,138(s0)
     97c:	a60d00b6 	sh	t5,182(s0)
     980:	860f00b6 	lh	t7,182(s0)
     984:	01cf1823 	subu	v1,t6,t7
     988:	00031c00 	sll	v1,v1,0x10
     98c:	00031c03 	sra	v1,v1,0x10
     990:	04600003 	bltz	v1,9a0 <func_80A74BA4+0x10c>
     994:	00031023 	negu	v0,v1
     998:	10000001 	b	9a0 <func_80A74BA4+0x10c>
     99c:	00601025 	move	v0,v1
     9a0:	0102082a 	slt	at,t0,v0
     9a4:	14200022 	bnez	at,a30 <func_80A74BA4+0x19c>
     9a8:	3c0142c8 	lui	at,0x42c8
     9ac:	44813000 	mtc1	at,$f6
     9b0:	c6040090 	lwc1	$f4,144(s0)
     9b4:	3c014316 	lui	at,0x4316
     9b8:	4606203c 	c.lt.s	$f4,$f6
     9bc:	00000000 	nop
     9c0:	4502001c 	bc1fl	a34 <func_80A74BA4+0x1a0>
     9c4:	8fa4003c 	lw	a0,60(sp)
     9c8:	c6000094 	lwc1	$f0,148(s0)
     9cc:	44804000 	mtc1	zero,$f8
     9d0:	8fb8003c 	lw	t8,60(sp)
     9d4:	44815000 	mtc1	at,$f10
     9d8:	4600403e 	c.le.s	$f8,$f0
     9dc:	3c190001 	lui	t9,0x1
     9e0:	0338c821 	addu	t9,t9,t8
     9e4:	45020004 	bc1fl	9f8 <func_80A74BA4+0x164>
     9e8:	46000087 	neg.s	$f2,$f0
     9ec:	10000002 	b	9f8 <func_80A74BA4+0x164>
     9f0:	46000086 	mov.s	$f2,$f0
     9f4:	46000087 	neg.s	$f2,$f0
     9f8:	460a103c 	c.lt.s	$f2,$f10
     9fc:	00000000 	nop
     a00:	4502000c 	bc1fl	a34 <func_80A74BA4+0x1a0>
     a04:	8fa4003c 	lw	a0,60(sp)
     a08:	8f391de4 	lw	t9,7652(t9)
     a0c:	33290001 	andi	t1,t9,0x1
     a10:	11200005 	beqz	t1,a28 <func_80A74BA4+0x194>
     a14:	00000000 	nop
     a18:	0c000000 	jal	0 <EnIk_Destroy>
     a1c:	02002025 	move	a0,s0
     a20:	10000004 	b	a34 <func_80A74BA4+0x1a0>
     a24:	8fa4003c 	lw	a0,60(sp)
     a28:	0c000000 	jal	0 <EnIk_Destroy>
     a2c:	02002025 	move	a0,s0
     a30:	8fa4003c 	lw	a0,60(sp)
     a34:	0c000000 	jal	0 <EnIk_Destroy>
     a38:	02002825 	move	a1,s0
     a3c:	50400007 	beqzl	v0,a5c <func_80A74BA4+0x1c8>
     a40:	860b008a 	lh	t3,138(s0)
     a44:	0c000000 	jal	0 <EnIk_Destroy>
     a48:	02002025 	move	a0,s0
     a4c:	240a0001 	li	t2,1
     a50:	10000019 	b	ab8 <func_80A74BA4+0x224>
     a54:	a20a02fc 	sb	t2,764(s0)
     a58:	860b008a 	lh	t3,138(s0)
     a5c:	860c00b6 	lh	t4,182(s0)
     a60:	24180028 	li	t8,40
     a64:	016c4023 	subu	t0,t3,t4
     a68:	00084400 	sll	t0,t0,0x10
     a6c:	00084403 	sra	t0,t0,0x10
     a70:	05000003 	bltz	t0,a80 <func_80A74BA4+0x1ec>
     a74:	00081023 	negu	v0,t0
     a78:	10000001 	b	a80 <func_80A74BA4+0x1ec>
     a7c:	01001025 	move	v0,t0
     a80:	28414001 	slti	at,v0,16385
     a84:	5420000c 	bnezl	at,ab8 <func_80A74BA4+0x224>
     a88:	a6180300 	sh	t8,768(s0)
     a8c:	860d0300 	lh	t5,768(s0)
     a90:	25aeffff 	addiu	t6,t5,-1
     a94:	a60e0300 	sh	t6,768(s0)
     a98:	860f0300 	lh	t7,768(s0)
     a9c:	55e00007 	bnezl	t7,abc <func_80A74BA4+0x228>
     aa0:	02002025 	move	a0,s0
     aa4:	0c000000 	jal	0 <EnIk_Destroy>
     aa8:	02002025 	move	a0,s0
     aac:	10000003 	b	abc <func_80A74BA4+0x228>
     ab0:	02002025 	move	a0,s0
     ab4:	a6180300 	sh	t8,768(s0)
     ab8:	02002025 	move	a0,s0
     abc:	0c000000 	jal	0 <EnIk_Destroy>
     ac0:	8fa5003c 	lw	a1,60(sp)
     ac4:	0c000000 	jal	0 <EnIk_Destroy>
     ac8:	2604014c 	addiu	a0,s0,332
     acc:	c6100164 	lwc1	$f16,356(s0)
     ad0:	87a90030 	lh	t1,48(sp)
     ad4:	87aa002e 	lh	t2,46(sp)
     ad8:	4600848d 	trunc.w.s	$f18,$f16
     adc:	02002025 	move	a0,s0
     ae0:	44039000 	mfc1	v1,$f18
     ae4:	00000000 	nop
     ae8:	00031c00 	sll	v1,v1,0x10
     aec:	00031c03 	sra	v1,v1,0x10
     af0:	11230003 	beq	t1,v1,b00 <func_80A74BA4+0x26c>
     af4:	00000000 	nop
     af8:	55430004 	bnel	t2,v1,b0c <func_80A74BA4+0x278>
     afc:	8fbf0024 	lw	ra,36(sp)
     b00:	0c000000 	jal	0 <EnIk_Destroy>
     b04:	24053928 	li	a1,14632
     b08:	8fbf0024 	lw	ra,36(sp)
     b0c:	8fb00020 	lw	s0,32(sp)
     b10:	27bd0038 	addiu	sp,sp,56
     b14:	03e00008 	jr	ra
     b18:	00000000 	nop

00000b1c <func_80A74E2C>:
     b1c:	27bdffd0 	addiu	sp,sp,-48
     b20:	afb00028 	sw	s0,40(sp)
     b24:	00808025 	move	s0,a0
     b28:	afbf002c 	sw	ra,44(sp)
     b2c:	3c040600 	lui	a0,0x600
     b30:	0c000000 	jal	0 <EnIk_Destroy>
     b34:	24841c28 	addiu	a0,a0,7208
     b38:	44822000 	mtc1	v0,$f4
     b3c:	44800000 	mtc1	zero,$f0
     b40:	240e0001 	li	t6,1
     b44:	468021a0 	cvt.s.w	$f6,$f4
     b48:	240f0006 	li	t7,6
     b4c:	3c01c080 	lui	at,0xc080
     b50:	44814000 	mtc1	at,$f8
     b54:	a20e02ff 	sb	t6,767(s0)
     b58:	a20f02f8 	sb	t7,760(s0)
     b5c:	e6000068 	swc1	$f0,104(s0)
     b60:	3c050600 	lui	a1,0x600
     b64:	24180002 	li	t8,2
     b68:	44070000 	mfc1	a3,$f0
     b6c:	afb80014 	sw	t8,20(sp)
     b70:	24a51c28 	addiu	a1,a1,7208
     b74:	e7a60010 	swc1	$f6,16(sp)
     b78:	2604014c 	addiu	a0,s0,332
     b7c:	3c063fc0 	lui	a2,0x3fc0
     b80:	0c000000 	jal	0 <EnIk_Destroy>
     b84:	e7a80018 	swc1	$f8,24(sp)
     b88:	3c050000 	lui	a1,0x0
     b8c:	24a50000 	addiu	a1,a1,0
     b90:	0c000000 	jal	0 <EnIk_Destroy>
     b94:	02002025 	move	a0,s0
     b98:	8fbf002c 	lw	ra,44(sp)
     b9c:	8fb00028 	lw	s0,40(sp)
     ba0:	27bd0030 	addiu	sp,sp,48
     ba4:	03e00008 	jr	ra
     ba8:	00000000 	nop

00000bac <func_80A74EBC>:
     bac:	27bdffc8 	addiu	sp,sp,-56
     bb0:	afbf0024 	sw	ra,36(sp)
     bb4:	afb00020 	sw	s0,32(sp)
     bb8:	afa5003c 	sw	a1,60(sp)
     bbc:	3c014170 	lui	at,0x4170
     bc0:	44812000 	mtc1	at,$f4
     bc4:	c4800164 	lwc1	$f0,356(a0)
     bc8:	00808025 	move	s0,a0
     bcc:	3c0141a8 	lui	at,0x41a8
     bd0:	46002032 	c.eq.s	$f4,$f0
     bd4:	00000000 	nop
     bd8:	45020006 	bc1fl	bf4 <func_80A74EBC+0x48>
     bdc:	44813000 	mtc1	at,$f6
     be0:	0c000000 	jal	0 <EnIk_Destroy>
     be4:	24053929 	li	a1,14633
     be8:	10000031 	b	cb0 <func_80A74EBC+0x104>
     bec:	c6000164 	lwc1	$f0,356(s0)
     bf0:	44813000 	mtc1	at,$f6
     bf4:	00000000 	nop
     bf8:	46003032 	c.eq.s	$f6,$f0
     bfc:	00000000 	nop
     c00:	4502002c 	bc1fl	cb4 <func_80A74EBC+0x108>
     c04:	3c014188 	lui	at,0x4188
     c08:	860400b6 	lh	a0,182(s0)
     c0c:	248406a4 	addiu	a0,a0,1700
     c10:	00042400 	sll	a0,a0,0x10
     c14:	0c000000 	jal	0 <EnIk_Destroy>
     c18:	00042403 	sra	a0,a0,0x10
     c1c:	3c01428c 	lui	at,0x428c
     c20:	44814000 	mtc1	at,$f8
     c24:	c6100024 	lwc1	$f16,36(s0)
     c28:	46080282 	mul.s	$f10,$f0,$f8
     c2c:	46105480 	add.s	$f18,$f10,$f16
     c30:	e7b2002c 	swc1	$f18,44(sp)
     c34:	860400b6 	lh	a0,182(s0)
     c38:	248406a4 	addiu	a0,a0,1700
     c3c:	00042400 	sll	a0,a0,0x10
     c40:	0c000000 	jal	0 <EnIk_Destroy>
     c44:	00042403 	sra	a0,a0,0x10
     c48:	3c01428c 	lui	at,0x428c
     c4c:	44812000 	mtc1	at,$f4
     c50:	c608002c 	lwc1	$f8,44(s0)
     c54:	02002025 	move	a0,s0
     c58:	46040182 	mul.s	$f6,$f0,$f4
     c5c:	240539ae 	li	a1,14766
     c60:	46083280 	add.s	$f10,$f6,$f8
     c64:	e7aa0034 	swc1	$f10,52(sp)
     c68:	c6100028 	lwc1	$f16,40(s0)
     c6c:	0c000000 	jal	0 <EnIk_Destroy>
     c70:	e7b00030 	swc1	$f16,48(sp)
     c74:	8fa4003c 	lw	a0,60(sp)
     c78:	24050002 	li	a1,2
     c7c:	24060019 	li	a2,25
     c80:	24070005 	li	a3,5
     c84:	0c000000 	jal	0 <EnIk_Destroy>
     c88:	248401e0 	addiu	a0,a0,480
     c8c:	c60c0090 	lwc1	$f12,144(s0)
     c90:	240500ff 	li	a1,255
     c94:	24060014 	li	a2,20
     c98:	0c000000 	jal	0 <EnIk_Destroy>
     c9c:	24070096 	li	a3,150
     ca0:	8fa4003c 	lw	a0,60(sp)
     ca4:	0c000000 	jal	0 <EnIk_Destroy>
     ca8:	27a5002c 	addiu	a1,sp,44
     cac:	c6000164 	lwc1	$f0,356(s0)
     cb0:	3c014188 	lui	at,0x4188
     cb4:	44819000 	mtc1	at,$f18
     cb8:	3c0141b8 	lui	at,0x41b8
     cbc:	4600903c 	c.lt.s	$f18,$f0
     cc0:	00000000 	nop
     cc4:	4502000a 	bc1fl	cf0 <func_80A74EBC+0x144>
     cc8:	920f02fb 	lbu	t7,763(s0)
     ccc:	44812000 	mtc1	at,$f4
     cd0:	240e0001 	li	t6,1
     cd4:	4604003c 	c.lt.s	$f0,$f4
     cd8:	00000000 	nop
     cdc:	45020004 	bc1fl	cf0 <func_80A74EBC+0x144>
     ce0:	920f02fb 	lbu	t7,763(s0)
     ce4:	10000012 	b	d30 <func_80A74EBC+0x184>
     ce8:	a20e02fe 	sb	t6,766(s0)
     cec:	920f02fb 	lbu	t7,763(s0)
     cf0:	3c014120 	lui	at,0x4120
     cf4:	51e0000e 	beqzl	t7,d30 <func_80A74EBC+0x184>
     cf8:	a20002fe 	sb	zero,766(s0)
     cfc:	44813000 	mtc1	at,$f6
     d00:	26040032 	addiu	a0,s0,50
     d04:	24060001 	li	a2,1
     d08:	4606003c 	c.lt.s	$f0,$f6
     d0c:	240705dc 	li	a3,1500
     d10:	45020007 	bc1fl	d30 <func_80A74EBC+0x184>
     d14:	a20002fe 	sb	zero,766(s0)
     d18:	8605008a 	lh	a1,138(s0)
     d1c:	0c000000 	jal	0 <EnIk_Destroy>
     d20:	afa00010 	sw	zero,16(sp)
     d24:	86180032 	lh	t8,50(s0)
     d28:	a61800b6 	sh	t8,182(s0)
     d2c:	a20002fe 	sb	zero,766(s0)
     d30:	0c000000 	jal	0 <EnIk_Destroy>
     d34:	2604014c 	addiu	a0,s0,332
     d38:	50400004 	beqzl	v0,d4c <func_80A74EBC+0x1a0>
     d3c:	8fbf0024 	lw	ra,36(sp)
     d40:	0c000000 	jal	0 <EnIk_Destroy>
     d44:	02002025 	move	a0,s0
     d48:	8fbf0024 	lw	ra,36(sp)
     d4c:	8fb00020 	lw	s0,32(sp)
     d50:	27bd0038 	addiu	sp,sp,56
     d54:	03e00008 	jr	ra
     d58:	00000000 	nop

00000d5c <func_80A7506C>:
     d5c:	27bdffd0 	addiu	sp,sp,-48
     d60:	afb00028 	sw	s0,40(sp)
     d64:	00808025 	move	s0,a0
     d68:	afbf002c 	sw	ra,44(sp)
     d6c:	3c040600 	lui	a0,0x600
     d70:	0c000000 	jal	0 <EnIk_Destroy>
     d74:	248429fc 	addiu	a0,a0,10748
     d78:	44822000 	mtc1	v0,$f4
     d7c:	a20002fe 	sb	zero,766(s0)
     d80:	821902fe 	lb	t9,766(s0)
     d84:	46802020 	cvt.s.w	$f0,$f4
     d88:	24180007 	li	t8,7
     d8c:	3c01c080 	lui	at,0xc080
     d90:	44814000 	mtc1	at,$f8
     d94:	a21802f8 	sb	t8,760(s0)
     d98:	a21902ff 	sb	t9,767(s0)
     d9c:	4600018d 	trunc.w.s	$f6,$f0
     da0:	3c050600 	lui	a1,0x600
     da4:	24a529fc 	addiu	a1,a1,10748
     da8:	2604014c 	addiu	a0,s0,332
     dac:	440f3000 	mfc1	t7,$f6
     db0:	3c063f80 	lui	a2,0x3f80
     db4:	24070000 	li	a3,0
     db8:	a20f02f9 	sb	t7,761(s0)
     dbc:	afa00014 	sw	zero,20(sp)
     dc0:	e7a00010 	swc1	$f0,16(sp)
     dc4:	0c000000 	jal	0 <EnIk_Destroy>
     dc8:	e7a80018 	swc1	$f8,24(sp)
     dcc:	02002025 	move	a0,s0
     dd0:	0c000000 	jal	0 <EnIk_Destroy>
     dd4:	240539c1 	li	a1,14785
     dd8:	3c050000 	lui	a1,0x0
     ddc:	24a50000 	addiu	a1,a1,0
     de0:	0c000000 	jal	0 <EnIk_Destroy>
     de4:	02002025 	move	a0,s0
     de8:	8fbf002c 	lw	ra,44(sp)
     dec:	8fb00028 	lw	s0,40(sp)
     df0:	27bd0030 	addiu	sp,sp,48
     df4:	03e00008 	jr	ra
     df8:	00000000 	nop

00000dfc <func_80A7510C>:
     dfc:	27bdffc8 	addiu	sp,sp,-56
     e00:	afb00028 	sw	s0,40(sp)
     e04:	00808025 	move	s0,a0
     e08:	afbf002c 	sw	ra,44(sp)
     e0c:	2484014c 	addiu	a0,a0,332
     e10:	afa5003c 	sw	a1,60(sp)
     e14:	0c000000 	jal	0 <EnIk_Destroy>
     e18:	afa40030 	sw	a0,48(sp)
     e1c:	54400007 	bnezl	v0,e3c <func_80A7510C+0x40>
     e20:	921902f8 	lbu	t9,760(s0)
     e24:	920e02f9 	lbu	t6,761(s0)
     e28:	25cfffff 	addiu	t7,t6,-1
     e2c:	31f800ff 	andi	t8,t7,0xff
     e30:	1700001c 	bnez	t8,ea4 <func_80A7510C+0xa8>
     e34:	a20f02f9 	sb	t7,761(s0)
     e38:	921902f8 	lbu	t9,760(s0)
     e3c:	24010008 	li	at,8
     e40:	3c040600 	lui	a0,0x600
     e44:	17210005 	bne	t9,at,e5c <func_80A7510C+0x60>
     e48:	00000000 	nop
     e4c:	0c000000 	jal	0 <EnIk_Destroy>
     e50:	02002025 	move	a0,s0
     e54:	10000014 	b	ea8 <func_80A7510C+0xac>
     e58:	8fbf002c 	lw	ra,44(sp)
     e5c:	0c000000 	jal	0 <EnIk_Destroy>
     e60:	24842538 	addiu	a0,a0,9528
     e64:	44822000 	mtc1	v0,$f4
     e68:	24080008 	li	t0,8
     e6c:	a20802f8 	sb	t0,760(s0)
     e70:	468021a0 	cvt.s.w	$f6,$f4
     e74:	3c01c080 	lui	at,0xc080
     e78:	44814000 	mtc1	at,$f8
     e7c:	3c050600 	lui	a1,0x600
     e80:	24090003 	li	t1,3
     e84:	afa90014 	sw	t1,20(sp)
     e88:	24a52538 	addiu	a1,a1,9528
     e8c:	e7a60010 	swc1	$f6,16(sp)
     e90:	8fa40030 	lw	a0,48(sp)
     e94:	3c063fc0 	lui	a2,0x3fc0
     e98:	24070000 	li	a3,0
     e9c:	0c000000 	jal	0 <EnIk_Destroy>
     ea0:	e7a80018 	swc1	$f8,24(sp)
     ea4:	8fbf002c 	lw	ra,44(sp)
     ea8:	8fb00028 	lw	s0,40(sp)
     eac:	27bd0038 	addiu	sp,sp,56
     eb0:	03e00008 	jr	ra
     eb4:	00000000 	nop

00000eb8 <func_80A751C8>:
     eb8:	27bdffd0 	addiu	sp,sp,-48
     ebc:	afb00028 	sw	s0,40(sp)
     ec0:	00808025 	move	s0,a0
     ec4:	afbf002c 	sw	ra,44(sp)
     ec8:	3c040600 	lui	a0,0x600
     ecc:	0c000000 	jal	0 <EnIk_Destroy>
     ed0:	248433c4 	addiu	a0,a0,13252
     ed4:	44822000 	mtc1	v0,$f4
     ed8:	44800000 	mtc1	zero,$f0
     edc:	240e0002 	li	t6,2
     ee0:	468021a0 	cvt.s.w	$f6,$f4
     ee4:	240f0006 	li	t7,6
     ee8:	3c01c0c0 	lui	at,0xc0c0
     eec:	44814000 	mtc1	at,$f8
     ef0:	a20e02ff 	sb	t6,767(s0)
     ef4:	a6000300 	sh	zero,768(s0)
     ef8:	a20f02f8 	sb	t7,760(s0)
     efc:	e6000068 	swc1	$f0,104(s0)
     f00:	3c050600 	lui	a1,0x600
     f04:	24180003 	li	t8,3
     f08:	44060000 	mfc1	a2,$f0
     f0c:	44070000 	mfc1	a3,$f0
     f10:	afb80014 	sw	t8,20(sp)
     f14:	24a533c4 	addiu	a1,a1,13252
     f18:	e7a60010 	swc1	$f6,16(sp)
     f1c:	2604014c 	addiu	a0,s0,332
     f20:	0c000000 	jal	0 <EnIk_Destroy>
     f24:	e7a80018 	swc1	$f8,24(sp)
     f28:	3c050000 	lui	a1,0x0
     f2c:	a20002fc 	sb	zero,764(s0)
     f30:	24a50000 	addiu	a1,a1,0
     f34:	0c000000 	jal	0 <EnIk_Destroy>
     f38:	02002025 	move	a0,s0
     f3c:	8fbf002c 	lw	ra,44(sp)
     f40:	8fb00028 	lw	s0,40(sp)
     f44:	27bd0030 	addiu	sp,sp,48
     f48:	03e00008 	jr	ra
     f4c:	00000000 	nop

00000f50 <func_80A75260>:
     f50:	27bdffd8 	addiu	sp,sp,-40
     f54:	afbf0024 	sw	ra,36(sp)
     f58:	afb00020 	sw	s0,32(sp)
     f5c:	afa5002c 	sw	a1,44(sp)
     f60:	848e0300 	lh	t6,768(a0)
     f64:	00808025 	move	s0,a0
     f68:	25cf01c2 	addiu	t7,t6,450
     f6c:	a48f0300 	sh	t7,768(a0)
     f70:	0c000000 	jal	0 <EnIk_Destroy>
     f74:	84840300 	lh	a0,768(a0)
     f78:	44802000 	mtc1	zero,$f4
     f7c:	3c014130 	lui	at,0x4130
     f80:	44814000 	mtc1	at,$f8
     f84:	4600203e 	c.le.s	$f4,$f0
     f88:	3c013f80 	lui	at,0x3f80
     f8c:	44815000 	mtc1	at,$f10
     f90:	24180003 	li	t8,3
     f94:	45000003 	bc1f	fa4 <func_80A75260+0x54>
     f98:	3c014110 	lui	at,0x4110
     f9c:	10000003 	b	fac <func_80A75260+0x5c>
     fa0:	e6000168 	swc1	$f0,360(s0)
     fa4:	46000187 	neg.s	$f6,$f0
     fa8:	e6060168 	swc1	$f6,360(s0)
     fac:	c6000164 	lwc1	$f0,356(s0)
     fb0:	4600403c 	c.lt.s	$f8,$f0
     fb4:	00000000 	nop
     fb8:	45020004 	bc1fl	fcc <func_80A75260+0x7c>
     fbc:	4600503c 	c.lt.s	$f10,$f0
     fc0:	a21802ff 	sb	t8,767(s0)
     fc4:	c6000164 	lwc1	$f0,356(s0)
     fc8:	4600503c 	c.lt.s	$f10,$f0
     fcc:	00000000 	nop
     fd0:	45020007 	bc1fl	ff0 <func_80A75260+0xa0>
     fd4:	3c014150 	lui	at,0x4150
     fd8:	44818000 	mtc1	at,$f16
     fdc:	00000000 	nop
     fe0:	4610003c 	c.lt.s	$f0,$f16
     fe4:	00000000 	nop
     fe8:	4501000d 	bc1t	1020 <func_80A75260+0xd0>
     fec:	3c014150 	lui	at,0x4150
     ff0:	44819000 	mtc1	at,$f18
     ff4:	3c014190 	lui	at,0x4190
     ff8:	4600903c 	c.lt.s	$f18,$f0
     ffc:	00000000 	nop
    1000:	45020024 	bc1fl	1094 <func_80A75260+0x144>
    1004:	a20002fe 	sb	zero,766(s0)
    1008:	44812000 	mtc1	at,$f4
    100c:	00000000 	nop
    1010:	4604003c 	c.lt.s	$f0,$f4
    1014:	00000000 	nop
    1018:	4502001e 	bc1fl	1094 <func_80A75260+0x144>
    101c:	a20002fe 	sb	zero,766(s0)
    1020:	921902fc 	lbu	t9,764(s0)
    1024:	57200012 	bnezl	t9,1070 <func_80A75260+0x120>
    1028:	820a02fe 	lb	t2,766(s0)
    102c:	920802fb 	lbu	t0,763(s0)
    1030:	3c014120 	lui	at,0x4120
    1034:	5100000e 	beqzl	t0,1070 <func_80A75260+0x120>
    1038:	820a02fe 	lb	t2,766(s0)
    103c:	44813000 	mtc1	at,$f6
    1040:	26040032 	addiu	a0,s0,50
    1044:	24060001 	li	a2,1
    1048:	4606003c 	c.lt.s	$f0,$f6
    104c:	240705dc 	li	a3,1500
    1050:	45020007 	bc1fl	1070 <func_80A75260+0x120>
    1054:	820a02fe 	lb	t2,766(s0)
    1058:	8605008a 	lh	a1,138(s0)
    105c:	0c000000 	jal	0 <EnIk_Destroy>
    1060:	afa00010 	sw	zero,16(sp)
    1064:	86090032 	lh	t1,50(s0)
    1068:	a60900b6 	sh	t1,182(s0)
    106c:	820a02fe 	lb	t2,766(s0)
    1070:	02002025 	move	a0,s0
    1074:	05430004 	bgezl	t2,1088 <func_80A75260+0x138>
    1078:	240b0001 	li	t3,1
    107c:	0c000000 	jal	0 <EnIk_Destroy>
    1080:	24053929 	li	a1,14633
    1084:	240b0001 	li	t3,1
    1088:	10000002 	b	1094 <func_80A75260+0x144>
    108c:	a20b02fe 	sb	t3,766(s0)
    1090:	a20002fe 	sb	zero,766(s0)
    1094:	0c000000 	jal	0 <EnIk_Destroy>
    1098:	2604014c 	addiu	a0,s0,332
    109c:	50400004 	beqzl	v0,10b0 <func_80A75260+0x160>
    10a0:	8fbf0024 	lw	ra,36(sp)
    10a4:	0c000000 	jal	0 <EnIk_Destroy>
    10a8:	02002025 	move	a0,s0
    10ac:	8fbf0024 	lw	ra,36(sp)
    10b0:	8fb00020 	lw	s0,32(sp)
    10b4:	27bd0028 	addiu	sp,sp,40
    10b8:	03e00008 	jr	ra
    10bc:	00000000 	nop

000010c0 <func_80A753D0>:
    10c0:	27bdffd0 	addiu	sp,sp,-48
    10c4:	afb00028 	sw	s0,40(sp)
    10c8:	00808025 	move	s0,a0
    10cc:	afbf002c 	sw	ra,44(sp)
    10d0:	3c040600 	lui	a0,0x600
    10d4:	0c000000 	jal	0 <EnIk_Destroy>
    10d8:	24843dbc 	addiu	a0,a0,15804
    10dc:	44822000 	mtc1	v0,$f4
    10e0:	a20002fe 	sb	zero,766(s0)
    10e4:	820e02fe 	lb	t6,766(s0)
    10e8:	468021a0 	cvt.s.w	$f6,$f4
    10ec:	240f0008 	li	t7,8
    10f0:	3c01c080 	lui	at,0xc080
    10f4:	44814000 	mtc1	at,$f8
    10f8:	a20f02f8 	sb	t7,760(s0)
    10fc:	a20e02ff 	sb	t6,767(s0)
    1100:	3c050600 	lui	a1,0x600
    1104:	24180003 	li	t8,3
    1108:	afb80014 	sw	t8,20(sp)
    110c:	24a53dbc 	addiu	a1,a1,15804
    1110:	e7a60010 	swc1	$f6,16(sp)
    1114:	2604014c 	addiu	a0,s0,332
    1118:	3c063fc0 	lui	a2,0x3fc0
    111c:	24070000 	li	a3,0
    1120:	0c000000 	jal	0 <EnIk_Destroy>
    1124:	e7a80018 	swc1	$f8,24(sp)
    1128:	3c050000 	lui	a1,0x0
    112c:	24a50000 	addiu	a1,a1,0
    1130:	0c000000 	jal	0 <EnIk_Destroy>
    1134:	02002025 	move	a0,s0
    1138:	8fbf002c 	lw	ra,44(sp)
    113c:	8fb00028 	lw	s0,40(sp)
    1140:	27bd0030 	addiu	sp,sp,48
    1144:	03e00008 	jr	ra
    1148:	00000000 	nop

0000114c <func_80A7545C>:
    114c:	27bdffe8 	addiu	sp,sp,-24
    1150:	afbf0014 	sw	ra,20(sp)
    1154:	afa40018 	sw	a0,24(sp)
    1158:	afa5001c 	sw	a1,28(sp)
    115c:	0c000000 	jal	0 <EnIk_Destroy>
    1160:	2484014c 	addiu	a0,a0,332
    1164:	50400007 	beqzl	v0,1184 <func_80A7545C+0x38>
    1168:	8fbf0014 	lw	ra,20(sp)
    116c:	0c000000 	jal	0 <EnIk_Destroy>
    1170:	8fa40018 	lw	a0,24(sp)
    1174:	8fa40018 	lw	a0,24(sp)
    1178:	0c000000 	jal	0 <EnIk_Destroy>
    117c:	8fa5001c 	lw	a1,28(sp)
    1180:	8fbf0014 	lw	ra,20(sp)
    1184:	27bd0018 	addiu	sp,sp,24
    1188:	03e00008 	jr	ra
    118c:	00000000 	nop

00001190 <func_80A754A0>:
    1190:	27bdffd0 	addiu	sp,sp,-48
    1194:	afb00028 	sw	s0,40(sp)
    1198:	00808025 	move	s0,a0
    119c:	afbf002c 	sw	ra,44(sp)
    11a0:	3c040600 	lui	a0,0x600
    11a4:	0c000000 	jal	0 <EnIk_Destroy>
    11a8:	248433c4 	addiu	a0,a0,13252
    11ac:	44823000 	mtc1	v0,$f6
    11b0:	44802000 	mtc1	zero,$f4
    11b4:	240e0001 	li	t6,1
    11b8:	46803220 	cvt.s.w	$f8,$f6
    11bc:	240f0003 	li	t7,3
    11c0:	3c01c080 	lui	at,0xc080
    11c4:	44815000 	mtc1	at,$f10
    11c8:	a20e02f8 	sb	t6,760(s0)
    11cc:	a20f02ff 	sb	t7,767(s0)
    11d0:	e6040068 	swc1	$f4,104(s0)
    11d4:	3c050600 	lui	a1,0x600
    11d8:	24180003 	li	t8,3
    11dc:	afb80014 	sw	t8,20(sp)
    11e0:	24a533c4 	addiu	a1,a1,13252
    11e4:	e7a80010 	swc1	$f8,16(sp)
    11e8:	2604014c 	addiu	a0,s0,332
    11ec:	3c063f00 	lui	a2,0x3f00
    11f0:	3c074150 	lui	a3,0x4150
    11f4:	0c000000 	jal	0 <EnIk_Destroy>
    11f8:	e7aa0018 	swc1	$f10,24(sp)
    11fc:	3c050000 	lui	a1,0x0
    1200:	24a50000 	addiu	a1,a1,0
    1204:	0c000000 	jal	0 <EnIk_Destroy>
    1208:	02002025 	move	a0,s0
    120c:	8fbf002c 	lw	ra,44(sp)
    1210:	8fb00028 	lw	s0,40(sp)
    1214:	27bd0030 	addiu	sp,sp,48
    1218:	03e00008 	jr	ra
    121c:	00000000 	nop

00001220 <func_80A75530>:
    1220:	27bdffe0 	addiu	sp,sp,-32
    1224:	afb00018 	sw	s0,24(sp)
    1228:	00808025 	move	s0,a0
    122c:	afbf001c 	sw	ra,28(sp)
    1230:	afa50024 	sw	a1,36(sp)
    1234:	8605008a 	lh	a1,138(s0)
    1238:	24840032 	addiu	a0,a0,50
    123c:	0c000000 	jal	0 <EnIk_Destroy>
    1240:	240607d0 	li	a2,2000
    1244:	3c014150 	lui	at,0x4150
    1248:	44812000 	mtc1	at,$f4
    124c:	c6000164 	lwc1	$f0,356(s0)
    1250:	860e0032 	lh	t6,50(s0)
    1254:	3c014190 	lui	at,0x4190
    1258:	4600203c 	c.lt.s	$f4,$f0
    125c:	a60e00b6 	sh	t6,182(s0)
    1260:	45020011 	bc1fl	12a8 <func_80A75530+0x88>
    1264:	a20002fe 	sb	zero,766(s0)
    1268:	44813000 	mtc1	at,$f6
    126c:	00000000 	nop
    1270:	4606003c 	c.lt.s	$f0,$f6
    1274:	00000000 	nop
    1278:	4502000b 	bc1fl	12a8 <func_80A75530+0x88>
    127c:	a20002fe 	sb	zero,766(s0)
    1280:	820f02fe 	lb	t7,766(s0)
    1284:	02002025 	move	a0,s0
    1288:	05e30004 	bgezl	t7,129c <func_80A75530+0x7c>
    128c:	24180001 	li	t8,1
    1290:	0c000000 	jal	0 <EnIk_Destroy>
    1294:	24053929 	li	a1,14633
    1298:	24180001 	li	t8,1
    129c:	10000002 	b	12a8 <func_80A75530+0x88>
    12a0:	a21802fe 	sb	t8,766(s0)
    12a4:	a20002fe 	sb	zero,766(s0)
    12a8:	0c000000 	jal	0 <EnIk_Destroy>
    12ac:	2604014c 	addiu	a0,s0,332
    12b0:	50400007 	beqzl	v0,12d0 <func_80A75530+0xb0>
    12b4:	8fbf001c 	lw	ra,28(sp)
    12b8:	0c000000 	jal	0 <EnIk_Destroy>
    12bc:	02002025 	move	a0,s0
    12c0:	02002025 	move	a0,s0
    12c4:	0c000000 	jal	0 <EnIk_Destroy>
    12c8:	8fa50024 	lw	a1,36(sp)
    12cc:	8fbf001c 	lw	ra,28(sp)
    12d0:	8fb00018 	lw	s0,24(sp)
    12d4:	27bd0020 	addiu	sp,sp,32
    12d8:	03e00008 	jr	ra
    12dc:	00000000 	nop

000012e0 <func_80A755F0>:
    12e0:	27bdffd0 	addiu	sp,sp,-48
    12e4:	afb00028 	sw	s0,40(sp)
    12e8:	00808025 	move	s0,a0
    12ec:	afbf002c 	sw	ra,44(sp)
    12f0:	3c040600 	lui	a0,0x600
    12f4:	0c000000 	jal	0 <EnIk_Destroy>
    12f8:	2484485c 	addiu	a0,a0,18524
    12fc:	44822000 	mtc1	v0,$f4
    1300:	44800000 	mtc1	zero,$f0
    1304:	240e0009 	li	t6,9
    1308:	468021a0 	cvt.s.w	$f6,$f4
    130c:	3c01c080 	lui	at,0xc080
    1310:	44814000 	mtc1	at,$f8
    1314:	a20002fe 	sb	zero,766(s0)
    1318:	a20e02f8 	sb	t6,760(s0)
    131c:	e6000068 	swc1	$f0,104(s0)
    1320:	3c050600 	lui	a1,0x600
    1324:	240f0003 	li	t7,3
    1328:	44070000 	mfc1	a3,$f0
    132c:	afaf0014 	sw	t7,20(sp)
    1330:	24a5485c 	addiu	a1,a1,18524
    1334:	e7a60010 	swc1	$f6,16(sp)
    1338:	2604014c 	addiu	a0,s0,332
    133c:	3c063f80 	lui	a2,0x3f80
    1340:	0c000000 	jal	0 <EnIk_Destroy>
    1344:	e7a80018 	swc1	$f8,24(sp)
    1348:	3c050000 	lui	a1,0x0
    134c:	24a50000 	addiu	a1,a1,0
    1350:	0c000000 	jal	0 <EnIk_Destroy>
    1354:	02002025 	move	a0,s0
    1358:	8fbf002c 	lw	ra,44(sp)
    135c:	8fb00028 	lw	s0,40(sp)
    1360:	27bd0030 	addiu	sp,sp,48
    1364:	03e00008 	jr	ra
    1368:	00000000 	nop

0000136c <func_80A7567C>:
    136c:	27bdffe8 	addiu	sp,sp,-24
    1370:	00803825 	move	a3,a0
    1374:	3c010001 	lui	at,0x1
    1378:	afbf0014 	sw	ra,20(sp)
    137c:	afa5001c 	sw	a1,28(sp)
    1380:	34211e60 	ori	at,at,0x1e60
    1384:	00a02025 	move	a0,a1
    1388:	00a12821 	addu	a1,a1,at
    138c:	24e603ec 	addiu	a2,a3,1004
    1390:	0c000000 	jal	0 <EnIk_Destroy>
    1394:	afa70018 	sw	a3,24(sp)
    1398:	8fa70018 	lw	a3,24(sp)
    139c:	0c000000 	jal	0 <EnIk_Destroy>
    13a0:	24e4014c 	addiu	a0,a3,332
    13a4:	10400032 	beqz	v0,1470 <func_80A7567C+0x104>
    13a8:	8fa70018 	lw	a3,24(sp)
    13ac:	84ef008a 	lh	t7,138(a3)
    13b0:	84f800b6 	lh	t8,182(a3)
    13b4:	01f81023 	subu	v0,t7,t8
    13b8:	00021400 	sll	v0,v0,0x10
    13bc:	00021403 	sra	v0,v0,0x10
    13c0:	04400003 	bltz	v0,13d0 <func_80A7567C+0x64>
    13c4:	00021823 	negu	v1,v0
    13c8:	10000001 	b	13d0 <func_80A7567C+0x64>
    13cc:	00401825 	move	v1,v0
    13d0:	28614001 	slti	at,v1,16385
    13d4:	10200024 	beqz	at,1468 <func_80A7567C+0xfc>
    13d8:	3c0142c8 	lui	at,0x42c8
    13dc:	44813000 	mtc1	at,$f6
    13e0:	c4e40090 	lwc1	$f4,144(a3)
    13e4:	3c014316 	lui	at,0x4316
    13e8:	4606203c 	c.lt.s	$f4,$f6
    13ec:	00000000 	nop
    13f0:	4500001d 	bc1f	1468 <func_80A7567C+0xfc>
    13f4:	00000000 	nop
    13f8:	c4e00094 	lwc1	$f0,148(a3)
    13fc:	44804000 	mtc1	zero,$f8
    1400:	8fb9001c 	lw	t9,28(sp)
    1404:	44815000 	mtc1	at,$f10
    1408:	4600403e 	c.le.s	$f8,$f0
    140c:	3c080001 	lui	t0,0x1
    1410:	01194021 	addu	t0,t0,t9
    1414:	45020004 	bc1fl	1428 <func_80A7567C+0xbc>
    1418:	46000087 	neg.s	$f2,$f0
    141c:	10000002 	b	1428 <func_80A7567C+0xbc>
    1420:	46000086 	mov.s	$f2,$f0
    1424:	46000087 	neg.s	$f2,$f0
    1428:	460a103c 	c.lt.s	$f2,$f10
    142c:	00000000 	nop
    1430:	4500000d 	bc1f	1468 <func_80A7567C+0xfc>
    1434:	00000000 	nop
    1438:	8d081de4 	lw	t0,7652(t0)
    143c:	31090001 	andi	t1,t0,0x1
    1440:	11200005 	beqz	t1,1458 <func_80A7567C+0xec>
    1444:	00000000 	nop
    1448:	0c000000 	jal	0 <EnIk_Destroy>
    144c:	00e02025 	move	a0,a3
    1450:	10000008 	b	1474 <func_80A7567C+0x108>
    1454:	8fbf0014 	lw	ra,20(sp)
    1458:	0c000000 	jal	0 <EnIk_Destroy>
    145c:	00e02025 	move	a0,a3
    1460:	10000004 	b	1474 <func_80A7567C+0x108>
    1464:	8fbf0014 	lw	ra,20(sp)
    1468:	0c000000 	jal	0 <EnIk_Destroy>
    146c:	00e02025 	move	a0,a3
    1470:	8fbf0014 	lw	ra,20(sp)
    1474:	27bd0018 	addiu	sp,sp,24
    1478:	03e00008 	jr	ra
    147c:	00000000 	nop

00001480 <func_80A75790>:
    1480:	27bdffd0 	addiu	sp,sp,-48
    1484:	afb00028 	sw	s0,40(sp)
    1488:	00808025 	move	s0,a0
    148c:	afbf002c 	sw	ra,44(sp)
    1490:	8e050328 	lw	a1,808(s0)
    1494:	24840024 	addiu	a0,a0,36
    1498:	0c000000 	jal	0 <EnIk_Destroy>
    149c:	24a50024 	addiu	a1,a1,36
    14a0:	860e00b6 	lh	t6,182(s0)
    14a4:	a20002f8 	sb	zero,760(s0)
    14a8:	3c040600 	lui	a0,0x600
    14ac:	004e1823 	subu	v1,v0,t6
    14b0:	00031c00 	sll	v1,v1,0x10
    14b4:	00031c03 	sra	v1,v1,0x10
    14b8:	04600003 	bltz	v1,14c8 <func_80A75790+0x48>
    14bc:	00031023 	negu	v0,v1
    14c0:	10000001 	b	14c8 <func_80A75790+0x48>
    14c4:	00601025 	move	v0,v1
    14c8:	28414001 	slti	at,v0,16385
    14cc:	10200016 	beqz	at,1528 <func_80A75790+0xa8>
    14d0:	00000000 	nop
    14d4:	3c040600 	lui	a0,0x600
    14d8:	0c000000 	jal	0 <EnIk_Destroy>
    14dc:	24846194 	addiu	a0,a0,24980
    14e0:	44822000 	mtc1	v0,$f4
    14e4:	3c01c080 	lui	at,0xc080
    14e8:	44814000 	mtc1	at,$f8
    14ec:	468021a0 	cvt.s.w	$f6,$f4
    14f0:	3c050600 	lui	a1,0x600
    14f4:	240f0002 	li	t7,2
    14f8:	afaf0014 	sw	t7,20(sp)
    14fc:	24a56194 	addiu	a1,a1,24980
    1500:	2604014c 	addiu	a0,s0,332
    1504:	e7a60010 	swc1	$f6,16(sp)
    1508:	3c063f80 	lui	a2,0x3f80
    150c:	24070000 	li	a3,0
    1510:	0c000000 	jal	0 <EnIk_Destroy>
    1514:	e7a80018 	swc1	$f8,24(sp)
    1518:	3c01c0c0 	lui	at,0xc0c0
    151c:	44815000 	mtc1	at,$f10
    1520:	10000015 	b	1578 <func_80A75790+0xf8>
    1524:	e60a0068 	swc1	$f10,104(s0)
    1528:	0c000000 	jal	0 <EnIk_Destroy>
    152c:	248445bc 	addiu	a0,a0,17852
    1530:	44828000 	mtc1	v0,$f16
    1534:	3c01c080 	lui	at,0xc080
    1538:	44812000 	mtc1	at,$f4
    153c:	468084a0 	cvt.s.w	$f18,$f16
    1540:	3c050600 	lui	a1,0x600
    1544:	24180002 	li	t8,2
    1548:	afb80014 	sw	t8,20(sp)
    154c:	24a545bc 	addiu	a1,a1,17852
    1550:	2604014c 	addiu	a0,s0,332
    1554:	e7b20010 	swc1	$f18,16(sp)
    1558:	3c063f80 	lui	a2,0x3f80
    155c:	24070000 	li	a3,0
    1560:	0c000000 	jal	0 <EnIk_Destroy>
    1564:	e7a40018 	swc1	$f4,24(sp)
    1568:	3c0140c0 	lui	at,0x40c0
    156c:	44813000 	mtc1	at,$f6
    1570:	00000000 	nop
    1574:	e6060068 	swc1	$f6,104(s0)
    1578:	3c050000 	lui	a1,0x0
    157c:	a20002fe 	sb	zero,766(s0)
    1580:	24a50000 	addiu	a1,a1,0
    1584:	0c000000 	jal	0 <EnIk_Destroy>
    1588:	02002025 	move	a0,s0
    158c:	8fbf002c 	lw	ra,44(sp)
    1590:	8fb00028 	lw	s0,40(sp)
    1594:	27bd0030 	addiu	sp,sp,48
    1598:	03e00008 	jr	ra
    159c:	00000000 	nop

000015a0 <func_80A758B0>:
    15a0:	3c013f80 	lui	at,0x3f80
    15a4:	44811000 	mtc1	at,$f2
    15a8:	44800000 	mtc1	zero,$f0
    15ac:	27bdffd8 	addiu	sp,sp,-40
    15b0:	afb00020 	sw	s0,32(sp)
    15b4:	afa5002c 	sw	a1,44(sp)
    15b8:	00808025 	move	s0,a0
    15bc:	afbf0024 	sw	ra,36(sp)
    15c0:	44061000 	mfc1	a2,$f2
    15c4:	44071000 	mfc1	a3,$f2
    15c8:	44050000 	mfc1	a1,$f0
    15cc:	24840068 	addiu	a0,a0,104
    15d0:	0c000000 	jal	0 <EnIk_Destroy>
    15d4:	e7a00010 	swc1	$f0,16(sp)
    15d8:	8607001c 	lh	a3,28(s0)
    15dc:	02002025 	move	a0,s0
    15e0:	26050308 	addiu	a1,s0,776
    15e4:	24e70004 	addiu	a3,a3,4
    15e8:	00073c00 	sll	a3,a3,0x10
    15ec:	00073c03 	sra	a3,a3,0x10
    15f0:	0c000000 	jal	0 <EnIk_Destroy>
    15f4:	8fa6002c 	lw	a2,44(sp)
    15f8:	10400002 	beqz	v0,1604 <func_80A758B0+0x64>
    15fc:	00000000 	nop
    1600:	ae000318 	sw	zero,792(s0)
    1604:	0c000000 	jal	0 <EnIk_Destroy>
    1608:	2604014c 	addiu	a0,s0,332
    160c:	50400017 	beqzl	v0,166c <func_80A758B0+0xcc>
    1610:	8fbf0024 	lw	ra,36(sp)
    1614:	860e008a 	lh	t6,138(s0)
    1618:	860f00b6 	lh	t7,182(s0)
    161c:	01cf1023 	subu	v0,t6,t7
    1620:	00021400 	sll	v0,v0,0x10
    1624:	00021403 	sra	v0,v0,0x10
    1628:	04400003 	bltz	v0,1638 <func_80A758B0+0x98>
    162c:	00021823 	negu	v1,v0
    1630:	10000001 	b	1638 <func_80A758B0+0x98>
    1634:	00401825 	move	v1,v0
    1638:	28614001 	slti	at,v1,16385
    163c:	10200008 	beqz	at,1660 <func_80A758B0+0xc0>
    1640:	00000000 	nop
    1644:	0c000000 	jal	0 <EnIk_Destroy>
    1648:	02002025 	move	a0,s0
    164c:	02002025 	move	a0,s0
    1650:	0c000000 	jal	0 <EnIk_Destroy>
    1654:	8fa5002c 	lw	a1,44(sp)
    1658:	10000004 	b	166c <func_80A758B0+0xcc>
    165c:	8fbf0024 	lw	ra,36(sp)
    1660:	0c000000 	jal	0 <EnIk_Destroy>
    1664:	02002025 	move	a0,s0
    1668:	8fbf0024 	lw	ra,36(sp)
    166c:	8fb00020 	lw	s0,32(sp)
    1670:	27bd0028 	addiu	sp,sp,40
    1674:	03e00008 	jr	ra
    1678:	00000000 	nop

0000167c <func_80A7598C>:
    167c:	27bdffd0 	addiu	sp,sp,-48
    1680:	afb00028 	sw	s0,40(sp)
    1684:	00808025 	move	s0,a0
    1688:	afbf002c 	sw	ra,44(sp)
    168c:	3c040600 	lui	a0,0x600
    1690:	0c000000 	jal	0 <EnIk_Destroy>
    1694:	24845944 	addiu	a0,a0,22852
    1698:	44822000 	mtc1	v0,$f4
    169c:	44800000 	mtc1	zero,$f0
    16a0:	240e0002 	li	t6,2
    16a4:	468021a0 	cvt.s.w	$f6,$f4
    16a8:	3c01c080 	lui	at,0xc080
    16ac:	44814000 	mtc1	at,$f8
    16b0:	a20002fe 	sb	zero,766(s0)
    16b4:	a20e02f8 	sb	t6,760(s0)
    16b8:	e6000068 	swc1	$f0,104(s0)
    16bc:	3c050600 	lui	a1,0x600
    16c0:	240f0002 	li	t7,2
    16c4:	44070000 	mfc1	a3,$f0
    16c8:	afaf0014 	sw	t7,20(sp)
    16cc:	24a55944 	addiu	a1,a1,22852
    16d0:	e7a60010 	swc1	$f6,16(sp)
    16d4:	2604014c 	addiu	a0,s0,332
    16d8:	3c063f80 	lui	a2,0x3f80
    16dc:	0c000000 	jal	0 <EnIk_Destroy>
    16e0:	e7a80018 	swc1	$f8,24(sp)
    16e4:	24180018 	li	t8,24
    16e8:	a21802f9 	sb	t8,761(s0)
    16ec:	02002025 	move	a0,s0
    16f0:	0c000000 	jal	0 <EnIk_Destroy>
    16f4:	240539c0 	li	a1,14784
    16f8:	02002025 	move	a0,s0
    16fc:	0c000000 	jal	0 <EnIk_Destroy>
    1700:	2405393b 	li	a1,14651
    1704:	3c050000 	lui	a1,0x0
    1708:	24a50000 	addiu	a1,a1,0
    170c:	0c000000 	jal	0 <EnIk_Destroy>
    1710:	02002025 	move	a0,s0
    1714:	8fbf002c 	lw	ra,44(sp)
    1718:	8fb00028 	lw	s0,40(sp)
    171c:	27bd0030 	addiu	sp,sp,48
    1720:	03e00008 	jr	ra
    1724:	00000000 	nop

00001728 <func_80A75A38>:
    1728:	27bdff68 	addiu	sp,sp,-152
    172c:	afb10064 	sw	s1,100(sp)
    1730:	00808825 	move	s1,a0
    1734:	afbf0074 	sw	ra,116(sp)
    1738:	afb40070 	sw	s4,112(sp)
    173c:	00a0a025 	move	s4,a1
    1740:	afb3006c 	sw	s3,108(sp)
    1744:	afb20068 	sw	s2,104(sp)
    1748:	afb00060 	sw	s0,96(sp)
    174c:	f7b80058 	sdc1	$f24,88(sp)
    1750:	f7b60050 	sdc1	$f22,80(sp)
    1754:	f7b40048 	sdc1	$f20,72(sp)
    1758:	0c000000 	jal	0 <EnIk_Destroy>
    175c:	2484014c 	addiu	a0,a0,332
    1760:	1040005d 	beqz	v0,18d8 <func_80A75A38+0x1b0>
    1764:	3c0141b8 	lui	at,0x41b8
    1768:	922e00af 	lbu	t6,175(s1)
    176c:	55c00064 	bnezl	t6,1900 <func_80A75A38+0x1d8>
    1770:	8fbf0074 	lw	ra,116(sp)
    1774:	922f02f9 	lbu	t7,761(s1)
    1778:	3c180000 	lui	t8,0x0
    177c:	27180000 	addiu	t8,t8,0
    1780:	51e0005f 	beqzl	t7,1900 <func_80A75A38+0x1d8>
    1784:	8fbf0074 	lw	ra,116(sp)
    1788:	8f080000 	lw	t0,0(t8)
    178c:	27b2007c 	addiu	s2,sp,124
    1790:	240c000c 	li	t4,12
    1794:	ae480000 	sw	t0,0(s2)
    1798:	8f190004 	lw	t9,4(t8)
    179c:	3c0141a0 	lui	at,0x41a0
    17a0:	ae590004 	sw	t9,4(s2)
    17a4:	8f080008 	lw	t0,8(t8)
    17a8:	ae480008 	sw	t0,8(s2)
    17ac:	922902f9 	lbu	t1,761(s1)
    17b0:	252affff 	addiu	t2,t1,-1
    17b4:	314200ff 	andi	v0,t2,0xff
    17b8:	00025843 	sra	t3,v0,0x1
    17bc:	018b8023 	subu	s0,t4,t3
    17c0:	06000035 	bltz	s0,1898 <func_80A75A38+0x170>
    17c4:	a22a02f9 	sb	t2,761(s1)
    17c8:	4481c000 	mtc1	at,$f24
    17cc:	3c014248 	lui	at,0x4248
    17d0:	4481b000 	mtc1	at,$f22
    17d4:	3c0142f0 	lui	at,0x42f0
    17d8:	4481a000 	mtc1	at,$f20
    17dc:	27b30088 	addiu	s3,sp,136
    17e0:	0c000000 	jal	0 <EnIk_Destroy>
    17e4:	4600a306 	mov.s	$f12,$f20
    17e8:	c6240024 	lwc1	$f4,36(s1)
    17ec:	4600a306 	mov.s	$f12,$f20
    17f0:	46040180 	add.s	$f6,$f0,$f4
    17f4:	0c000000 	jal	0 <EnIk_Destroy>
    17f8:	e7a60088 	swc1	$f6,136(sp)
    17fc:	c628002c 	lwc1	$f8,44(s1)
    1800:	4600b306 	mov.s	$f12,$f22
    1804:	46080280 	add.s	$f10,$f0,$f8
    1808:	0c000000 	jal	0 <EnIk_Destroy>
    180c:	e7aa0090 	swc1	$f10,144(sp)
    1810:	c6300028 	lwc1	$f16,40(s1)
    1814:	240d0064 	li	t5,100
    1818:	240e00ff 	li	t6,255
    181c:	46188480 	add.s	$f18,$f16,$f24
    1820:	240f00ff 	li	t7,255
    1824:	241800ff 	li	t8,255
    1828:	241900ff 	li	t9,255
    182c:	46120100 	add.s	$f4,$f0,$f18
    1830:	240800ff 	li	t0,255
    1834:	24090001 	li	t1,1
    1838:	240a0009 	li	t2,9
    183c:	240c0001 	li	t4,1
    1840:	e7a4008c 	swc1	$f4,140(sp)
    1844:	afac003c 	sw	t4,60(sp)
    1848:	afaa0038 	sw	t2,56(sp)
    184c:	afa90034 	sw	t1,52(sp)
    1850:	afa80030 	sw	t0,48(sp)
    1854:	afb90024 	sw	t9,36(sp)
    1858:	afb80020 	sw	t8,32(sp)
    185c:	afaf001c 	sw	t7,28(sp)
    1860:	afae0018 	sw	t6,24(sp)
    1864:	afad0010 	sw	t5,16(sp)
    1868:	afa0002c 	sw	zero,44(sp)
    186c:	afa00028 	sw	zero,40(sp)
    1870:	afa00014 	sw	zero,20(sp)
    1874:	02802025 	move	a0,s4
    1878:	02602825 	move	a1,s3
    187c:	02403025 	move	a2,s2
    1880:	0c000000 	jal	0 <EnIk_Destroy>
    1884:	02403825 	move	a3,s2
    1888:	2610ffff 	addiu	s0,s0,-1
    188c:	0601ffd4 	bgez	s0,17e0 <func_80A75A38+0xb8>
    1890:	00000000 	nop
    1894:	922202f9 	lbu	v0,761(s1)
    1898:	14400018 	bnez	v0,18fc <func_80A75A38+0x1d4>
    189c:	02802025 	move	a0,s4
    18a0:	02202825 	move	a1,s1
    18a4:	26260024 	addiu	a2,s1,36
    18a8:	0c000000 	jal	0 <EnIk_Destroy>
    18ac:	240700b0 	li	a3,176
    18b0:	86250302 	lh	a1,770(s1)
    18b4:	240100ff 	li	at,255
    18b8:	10a10003 	beq	a1,at,18c8 <func_80A75A38+0x1a0>
    18bc:	00000000 	nop
    18c0:	0c000000 	jal	0 <EnIk_Destroy>
    18c4:	02802025 	move	a0,s4
    18c8:	0c000000 	jal	0 <EnIk_Destroy>
    18cc:	02202025 	move	a0,s1
    18d0:	1000000b 	b	1900 <func_80A75A38+0x1d8>
    18d4:	8fbf0074 	lw	ra,116(sp)
    18d8:	44813000 	mtc1	at,$f6
    18dc:	c6280164 	lwc1	$f8,356(s1)
    18e0:	02202025 	move	a0,s1
    18e4:	46083032 	c.eq.s	$f6,$f8
    18e8:	00000000 	nop
    18ec:	45020004 	bc1fl	1900 <func_80A75A38+0x1d8>
    18f0:	8fbf0074 	lw	ra,116(sp)
    18f4:	0c000000 	jal	0 <EnIk_Destroy>
    18f8:	24053928 	li	a1,14632
    18fc:	8fbf0074 	lw	ra,116(sp)
    1900:	d7b40048 	ldc1	$f20,72(sp)
    1904:	d7b60050 	ldc1	$f22,80(sp)
    1908:	d7b80058 	ldc1	$f24,88(sp)
    190c:	8fb00060 	lw	s0,96(sp)
    1910:	8fb10064 	lw	s1,100(sp)
    1914:	8fb20068 	lw	s2,104(sp)
    1918:	8fb3006c 	lw	s3,108(sp)
    191c:	8fb40070 	lw	s4,112(sp)
    1920:	03e00008 	jr	ra
    1924:	27bd0098 	addiu	sp,sp,152

00001928 <func_80A75C38>:
    1928:	27bdffb0 	addiu	sp,sp,-80
    192c:	afbf0024 	sw	ra,36(sp)
    1930:	afb00020 	sw	s0,32(sp)
    1934:	afa50054 	sw	a1,84(sp)
    1938:	908202f8 	lbu	v0,760(a0)
    193c:	24010003 	li	at,3
    1940:	00808025 	move	s0,a0
    1944:	104100cd 	beq	v0,at,1c7c <func_80A75C38+0x354>
    1948:	24010002 	li	at,2
    194c:	504100cc 	beql	v0,at,1c80 <func_80A75C38+0x358>
    1950:	8fbf0024 	lw	ra,36(sp)
    1954:	908e03fd 	lbu	t6,1021(a0)
    1958:	3c040600 	lui	a0,0x600
    195c:	31cf0080 	andi	t7,t6,0x80
    1960:	51e00016 	beqzl	t7,19bc <func_80A75C38+0x94>
    1964:	920a0331 	lbu	t2,817(s0)
    1968:	0c000000 	jal	0 <EnIk_Destroy>
    196c:	2484485c 	addiu	a0,a0,18524
    1970:	44822000 	mtc1	v0,$f4
    1974:	3c014000 	lui	at,0x4000
    1978:	44814000 	mtc1	at,$f8
    197c:	468021a0 	cvt.s.w	$f6,$f4
    1980:	c60a0164 	lwc1	$f10,356(s0)
    1984:	46083001 	sub.s	$f0,$f6,$f8
    1988:	4600503c 	c.lt.s	$f10,$f0
    198c:	00000000 	nop
    1990:	45020003 	bc1fl	19a0 <func_80A75C38+0x78>
    1994:	921803fd 	lbu	t8,1021(s0)
    1998:	e6000164 	swc1	$f0,356(s0)
    199c:	921803fd 	lbu	t8,1021(s0)
    19a0:	92080331 	lbu	t0,817(s0)
    19a4:	3319ff7f 	andi	t9,t8,0xff7f
    19a8:	3109fffd 	andi	t1,t0,0xfffd
    19ac:	a21903fd 	sb	t9,1021(s0)
    19b0:	100000b2 	b	1c7c <func_80A75C38+0x354>
    19b4:	a2090331 	sb	t1,817(s0)
    19b8:	920a0331 	lbu	t2,817(s0)
    19bc:	26020024 	addiu	v0,s0,36
    19c0:	314b0002 	andi	t3,t2,0x2
    19c4:	516000ae 	beqzl	t3,1c80 <func_80A75C38+0x358>
    19c8:	8fbf0024 	lw	ra,36(sp)
    19cc:	8c4e0000 	lw	t6,0(v0)
    19d0:	27ac0038 	addiu	t4,sp,56
    19d4:	3c014248 	lui	at,0x4248
    19d8:	ad8e0000 	sw	t6,0(t4)
    19dc:	8c4d0004 	lw	t5,4(v0)
    19e0:	44819000 	mtc1	at,$f18
    19e4:	02002025 	move	a0,s0
    19e8:	ad8d0004 	sw	t5,4(t4)
    19ec:	8c4e0008 	lw	t6,8(v0)
    19f0:	26050338 	addiu	a1,s0,824
    19f4:	24060001 	li	a2,1
    19f8:	ad8e0008 	sw	t6,8(t4)
    19fc:	c7b0003c 	lwc1	$f16,60(sp)
    1a00:	afa20030 	sw	v0,48(sp)
    1a04:	46128100 	add.s	$f4,$f16,$f18
    1a08:	0c000000 	jal	0 <EnIk_Destroy>
    1a0c:	e7a4003c 	swc1	$f4,60(sp)
    1a10:	920f00b1 	lbu	t7,177(s0)
    1a14:	92180331 	lbu	t8,817(s0)
    1a18:	2401000d 	li	at,13
    1a1c:	31e200ff 	andi	v0,t7,0xff
    1a20:	3319fffd 	andi	t9,t8,0xfffd
    1a24:	a2190331 	sb	t9,817(s0)
    1a28:	1040000a 	beqz	v0,1a54 <func_80A75C38+0x12c>
    1a2c:	a20f02fd 	sb	t7,765(s0)
    1a30:	10410008 	beq	v0,at,1a54 <func_80A75C38+0x12c>
    1a34:	00000000 	nop
    1a38:	920802fb 	lbu	t0,763(s0)
    1a3c:	2401000e 	li	at,14
    1a40:	02002025 	move	a0,s0
    1a44:	15000009 	bnez	t0,1a6c <func_80A75C38+0x144>
    1a48:	24054000 	li	a1,16384
    1a4c:	54410008 	bnel	v0,at,1a70 <func_80A75C38+0x148>
    1a50:	2409000c 	li	t1,12
    1a54:	10400089 	beqz	v0,1c7c <func_80A75C38+0x354>
    1a58:	8fa40054 	lw	a0,84(sp)
    1a5c:	0c000000 	jal	0 <EnIk_Destroy>
    1a60:	27a50038 	addiu	a1,sp,56
    1a64:	10000086 	b	1c80 <func_80A75C38+0x358>
    1a68:	8fbf0024 	lw	ra,36(sp)
    1a6c:	2409000c 	li	t1,12
    1a70:	afa90010 	sw	t1,16(sp)
    1a74:	240600ff 	li	a2,255
    1a78:	0c000000 	jal	0 <EnIk_Destroy>
    1a7c:	00003825 	move	a3,zero
    1a80:	920300af 	lbu	v1,175(s0)
    1a84:	02002025 	move	a0,s0
    1a88:	0c000000 	jal	0 <EnIk_Destroy>
    1a8c:	a3a30049 	sb	v1,73(sp)
    1a90:	860a001c 	lh	t2,28(s0)
    1a94:	93a30049 	lbu	v1,73(sp)
    1a98:	1140000e 	beqz	t2,1ad4 <func_80A75C38+0x1ac>
    1a9c:	2861000b 	slti	at,v1,11
    1aa0:	1420000a 	bnez	at,1acc <func_80A75C38+0x1a4>
    1aa4:	afa30030 	sw	v1,48(sp)
    1aa8:	920c00af 	lbu	t4,175(s0)
    1aac:	240d0001 	li	t5,1
    1ab0:	26040308 	addiu	a0,s0,776
    1ab4:	2981000b 	slti	at,t4,11
    1ab8:	10200004 	beqz	at,1acc <func_80A75C38+0x1a4>
    1abc:	24050003 	li	a1,3
    1ac0:	a20d02fb 	sb	t5,763(s0)
    1ac4:	0c000000 	jal	0 <EnIk_Destroy>
    1ac8:	8fa60054 	lw	a2,84(sp)
    1acc:	1000001f 	b	1b4c <func_80A75C38+0x224>
    1ad0:	920200af 	lbu	v0,175(s0)
    1ad4:	920200af 	lbu	v0,175(s0)
    1ad8:	8fa40054 	lw	a0,84(sp)
    1adc:	02003025 	move	a2,s0
    1ae0:	2841000b 	slti	at,v0,11
    1ae4:	10200010 	beqz	at,1b28 <func_80A75C38+0x200>
    1ae8:	24851c24 	addiu	a1,a0,7204
    1aec:	0c000000 	jal	0 <EnIk_Destroy>
    1af0:	24070009 	li	a3,9
    1af4:	8fa40054 	lw	a0,84(sp)
    1af8:	8fa50030 	lw	a1,48(sp)
    1afc:	24060014 	li	a2,20
    1b00:	0c000000 	jal	0 <EnIk_Destroy>
    1b04:	2407388b 	li	a3,14475
    1b08:	86050302 	lh	a1,770(s0)
    1b0c:	240100ff 	li	at,255
    1b10:	50a1005b 	beql	a1,at,1c80 <func_80A75C38+0x358>
    1b14:	8fbf0024 	lw	ra,36(sp)
    1b18:	0c000000 	jal	0 <EnIk_Destroy>
    1b1c:	8fa40054 	lw	a0,84(sp)
    1b20:	10000057 	b	1c80 <func_80A75C38+0x358>
    1b24:	8fbf0024 	lw	ra,36(sp)
    1b28:	24010032 	li	at,50
    1b2c:	14610007 	bne	v1,at,1b4c <func_80A75C38+0x224>
    1b30:	afa30030 	sw	v1,48(sp)
    1b34:	8fa40054 	lw	a0,84(sp)
    1b38:	02003025 	move	a2,s0
    1b3c:	24070005 	li	a3,5
    1b40:	0c000000 	jal	0 <EnIk_Destroy>
    1b44:	24851c24 	addiu	a1,a0,7204
    1b48:	920200af 	lbu	v0,175(s0)
    1b4c:	14400008 	bnez	v0,1b70 <func_80A75C38+0x248>
    1b50:	26040032 	addiu	a0,s0,50
    1b54:	0c000000 	jal	0 <EnIk_Destroy>
    1b58:	02002025 	move	a0,s0
    1b5c:	8fa40054 	lw	a0,84(sp)
    1b60:	0c000000 	jal	0 <EnIk_Destroy>
    1b64:	02002825 	move	a1,s0
    1b68:	10000045 	b	1c80 <func_80A75C38+0x358>
    1b6c:	8fbf0024 	lw	ra,36(sp)
    1b70:	8605008a 	lh	a1,138(s0)
    1b74:	afa00010 	sw	zero,16(sp)
    1b78:	24060001 	li	a2,1
    1b7c:	0c000000 	jal	0 <EnIk_Destroy>
    1b80:	240707d0 	li	a3,2000
    1b84:	8618001c 	lh	t8,28(s0)
    1b88:	57000019 	bnezl	t8,1bf0 <func_80A75C38+0x2c8>
    1b8c:	8609001c 	lh	t1,28(s0)
    1b90:	0c000000 	jal	0 <EnIk_Destroy>
    1b94:	00000000 	nop
    1b98:	3c013f00 	lui	at,0x3f00
    1b9c:	44813000 	mtc1	at,$f6
    1ba0:	00000000 	nop
    1ba4:	4606003c 	c.lt.s	$f0,$f6
    1ba8:	00000000 	nop
    1bac:	45020010 	bc1fl	1bf0 <func_80A75C38+0x2c8>
    1bb0:	8609001c 	lh	t1,28(s0)
    1bb4:	8619008a 	lh	t9,138(s0)
    1bb8:	860800b6 	lh	t0,182(s0)
    1bbc:	03281023 	subu	v0,t9,t0
    1bc0:	00021400 	sll	v0,v0,0x10
    1bc4:	00021403 	sra	v0,v0,0x10
    1bc8:	04400003 	bltz	v0,1bd8 <func_80A75C38+0x2b0>
    1bcc:	00021823 	negu	v1,v0
    1bd0:	10000001 	b	1bd8 <func_80A75C38+0x2b0>
    1bd4:	00401825 	move	v1,v0
    1bd8:	28614001 	slti	at,v1,16385
    1bdc:	54200004 	bnezl	at,1bf0 <func_80A75C38+0x2c8>
    1be0:	8609001c 	lh	t1,28(s0)
    1be4:	0c000000 	jal	0 <EnIk_Destroy>
    1be8:	02002025 	move	a0,s0
    1bec:	8609001c 	lh	t1,28(s0)
    1bf0:	02002025 	move	a0,s0
    1bf4:	11200019 	beqz	t1,1c5c <func_80A75C38+0x334>
    1bf8:	00000000 	nop
    1bfc:	920a02fb 	lbu	t2,763(s0)
    1c00:	8fab0030 	lw	t3,48(sp)
    1c04:	11400015 	beqz	t2,1c5c <func_80A75C38+0x334>
    1c08:	2961000b 	slti	at,t3,11
    1c0c:	1420000a 	bnez	at,1c38 <func_80A75C38+0x310>
    1c10:	02002025 	move	a0,s0
    1c14:	920c00af 	lbu	t4,175(s0)
    1c18:	2405392c 	li	a1,14636
    1c1c:	2981000b 	slti	at,t4,11
    1c20:	10200005 	beqz	at,1c38 <func_80A75C38+0x310>
    1c24:	00000000 	nop
    1c28:	0c000000 	jal	0 <EnIk_Destroy>
    1c2c:	02002025 	move	a0,s0
    1c30:	10000006 	b	1c4c <func_80A75C38+0x324>
    1c34:	00000000 	nop
    1c38:	0c000000 	jal	0 <EnIk_Destroy>
    1c3c:	240539be 	li	a1,14782
    1c40:	02002025 	move	a0,s0
    1c44:	0c000000 	jal	0 <EnIk_Destroy>
    1c48:	2405393b 	li	a1,14651
    1c4c:	0c000000 	jal	0 <EnIk_Destroy>
    1c50:	02002025 	move	a0,s0
    1c54:	1000000a 	b	1c80 <func_80A75C38+0x358>
    1c58:	8fbf0024 	lw	ra,36(sp)
    1c5c:	0c000000 	jal	0 <EnIk_Destroy>
    1c60:	2405393a 	li	a1,14650
    1c64:	02002025 	move	a0,s0
    1c68:	0c000000 	jal	0 <EnIk_Destroy>
    1c6c:	240539be 	li	a1,14782
    1c70:	8fa40054 	lw	a0,84(sp)
    1c74:	0c000000 	jal	0 <EnIk_Destroy>
    1c78:	27a50038 	addiu	a1,sp,56
    1c7c:	8fbf0024 	lw	ra,36(sp)
    1c80:	8fb00020 	lw	s0,32(sp)
    1c84:	27bd0050 	addiu	sp,sp,80
    1c88:	03e00008 	jr	ra
    1c8c:	00000000 	nop

00001c90 <func_80A75FA0>:
    1c90:	27bdffc0 	addiu	sp,sp,-64
    1c94:	afbf0024 	sw	ra,36(sp)
    1c98:	afb10020 	sw	s1,32(sp)
    1c9c:	afb0001c 	sw	s0,28(sp)
    1ca0:	8cae1c44 	lw	t6,7236(a1)
    1ca4:	00808025 	move	s0,a0
    1ca8:	00a08825 	move	s1,a1
    1cac:	afae0034 	sw	t6,52(sp)
    1cb0:	908f02fb 	lbu	t7,763(a0)
    1cb4:	0c000000 	jal	0 <EnIk_Destroy>
    1cb8:	a08f02fa 	sb	t7,762(a0)
    1cbc:	8618001c 	lh	t8,28(s0)
    1cc0:	5700000b 	bnezl	t8,1cf0 <func_80A75FA0+0x60>
    1cc4:	8e190304 	lw	t9,772(s0)
    1cc8:	921900af 	lbu	t9,175(s0)
    1ccc:	02002025 	move	a0,s0
    1cd0:	2b21000b 	slti	at,t9,11
    1cd4:	50200006 	beqzl	at,1cf0 <func_80A75FA0+0x60>
    1cd8:	8e190304 	lw	t9,772(s0)
    1cdc:	0c000000 	jal	0 <EnIk_Destroy>
    1ce0:	02202825 	move	a1,s1
    1ce4:	1000006a 	b	1e90 <func_80A75FA0+0x200>
    1ce8:	8fbf0024 	lw	ra,36(sp)
    1cec:	8e190304 	lw	t9,772(s0)
    1cf0:	02002025 	move	a0,s0
    1cf4:	02202825 	move	a1,s1
    1cf8:	0320f809 	jalr	t9
    1cfc:	00000000 	nop
    1d00:	9202037c 	lbu	v0,892(s0)
    1d04:	8fa30034 	lw	v1,52(sp)
    1d08:	30480002 	andi	t0,v0,0x2
    1d0c:	11000021 	beqz	t0,1d94 <func_80A75FA0+0x104>
    1d10:	00000000 	nop
    1d14:	8e0a0370 	lw	t2,880(s0)
    1d18:	3049fffd 	andi	t1,v0,0xfffd
    1d1c:	a209037c 	sb	t1,892(s0)
    1d20:	146a001c 	bne	v1,t2,1d94 <func_80A75FA0+0x104>
    1d24:	00000000 	nop
    1d28:	80620a78 	lb	v0,2680(v1)
    1d2c:	1c40000e 	bgtz	v0,1d68 <func_80A75FA0+0xd8>
    1d30:	a3a20033 	sb	v0,51(sp)
    1d34:	2841ffd9 	slti	at,v0,-39
    1d38:	10200003 	beqz	at,1d48 <func_80A75FA0+0xb8>
    1d3c:	3c190001 	lui	t9,0x1
    1d40:	10000009 	b	1d68 <func_80A75FA0+0xd8>
    1d44:	a0600a78 	sb	zero,2680(v1)
    1d48:	a0600a78 	sb	zero,2680(v1)
    1d4c:	0331c821 	addu	t9,t9,s1
    1d50:	8f391d58 	lw	t9,7512(t9)
    1d54:	02202025 	move	a0,s1
    1d58:	2405ffc0 	li	a1,-64
    1d5c:	0320f809 	jalr	t9
    1d60:	00000000 	nop
    1d64:	a20002fe 	sb	zero,766(s0)
    1d68:	3c014100 	lui	at,0x4100
    1d6c:	44810000 	mtc1	at,$f0
    1d70:	8607008a 	lh	a3,138(s0)
    1d74:	02202025 	move	a0,s1
    1d78:	44060000 	mfc1	a2,$f0
    1d7c:	02002825 	move	a1,s0
    1d80:	0c000000 	jal	0 <EnIk_Destroy>
    1d84:	e7a00010 	swc1	$f0,16(sp)
    1d88:	93ab0033 	lbu	t3,51(sp)
    1d8c:	8fac0034 	lw	t4,52(sp)
    1d90:	a18b0a78 	sb	t3,2680(t4)
    1d94:	0c000000 	jal	0 <EnIk_Destroy>
    1d98:	02002025 	move	a0,s0
    1d9c:	3c0141f0 	lui	at,0x41f0
    1da0:	44810000 	mtc1	at,$f0
    1da4:	240d001d 	li	t5,29
    1da8:	afad0014 	sw	t5,20(sp)
    1dac:	44070000 	mfc1	a3,$f0
    1db0:	02202025 	move	a0,s1
    1db4:	02002825 	move	a1,s0
    1db8:	3c064296 	lui	a2,0x4296
    1dbc:	0c000000 	jal	0 <EnIk_Destroy>
    1dc0:	e7a00010 	swc1	$f0,16(sp)
    1dc4:	8e0e0028 	lw	t6,40(s0)
    1dc8:	3c014234 	lui	at,0x4234
    1dcc:	8e0f0024 	lw	t7,36(s0)
    1dd0:	ae0e003c 	sw	t6,60(s0)
    1dd4:	c604003c 	lwc1	$f4,60(s0)
    1dd8:	44813000 	mtc1	at,$f6
    1ddc:	ae0f0038 	sw	t7,56(s0)
    1de0:	8e0f002c 	lw	t7,44(s0)
    1de4:	46062200 	add.s	$f8,$f4,$f6
    1de8:	26050320 	addiu	a1,s0,800
    1dec:	ae0f0040 	sw	t7,64(s0)
    1df0:	02002025 	move	a0,s0
    1df4:	e608003c 	swc1	$f8,60(s0)
    1df8:	0c000000 	jal	0 <EnIk_Destroy>
    1dfc:	afa50028 	sw	a1,40(sp)
    1e00:	3c010001 	lui	at,0x1
    1e04:	34211e60 	ori	at,at,0x1e60
    1e08:	02212821 	addu	a1,s1,at
    1e0c:	afa5002c 	sw	a1,44(sp)
    1e10:	02202025 	move	a0,s1
    1e14:	0c000000 	jal	0 <EnIk_Destroy>
    1e18:	8fa60028 	lw	a2,40(sp)
    1e1c:	921800af 	lbu	t8,175(s0)
    1e20:	5b00000d 	blezl	t8,1e58 <func_80A75FA0+0x1c8>
    1e24:	820a02fe 	lb	t2,766(s0)
    1e28:	92080114 	lbu	t0,276(s0)
    1e2c:	5500000a 	bnezl	t0,1e58 <func_80A75FA0+0x1c8>
    1e30:	820a02fe 	lb	t2,766(s0)
    1e34:	920902f8 	lbu	t1,760(s0)
    1e38:	02202025 	move	a0,s1
    1e3c:	8fa5002c 	lw	a1,44(sp)
    1e40:	29210002 	slti	at,t1,2
    1e44:	54200004 	bnezl	at,1e58 <func_80A75FA0+0x1c8>
    1e48:	820a02fe 	lb	t2,766(s0)
    1e4c:	0c000000 	jal	0 <EnIk_Destroy>
    1e50:	8fa60028 	lw	a2,40(sp)
    1e54:	820a02fe 	lb	t2,766(s0)
    1e58:	02202025 	move	a0,s1
    1e5c:	8fa5002c 	lw	a1,44(sp)
    1e60:	59400004 	blezl	t2,1e74 <func_80A75FA0+0x1e4>
    1e64:	921902f8 	lbu	t9,760(s0)
    1e68:	0c000000 	jal	0 <EnIk_Destroy>
    1e6c:	2606036c 	addiu	a2,s0,876
    1e70:	921902f8 	lbu	t9,760(s0)
    1e74:	24010009 	li	at,9
    1e78:	02202025 	move	a0,s1
    1e7c:	17210003 	bne	t9,at,1e8c <func_80A75FA0+0x1fc>
    1e80:	8fa5002c 	lw	a1,44(sp)
    1e84:	0c000000 	jal	0 <EnIk_Destroy>
    1e88:	260603ec 	addiu	a2,s0,1004
    1e8c:	8fbf0024 	lw	ra,36(sp)
    1e90:	8fb0001c 	lw	s0,28(sp)
    1e94:	8fb10020 	lw	s1,32(sp)
    1e98:	03e00008 	jr	ra
    1e9c:	27bd0040 	addiu	sp,sp,64

00001ea0 <func_80A761B0>:
    1ea0:	27bdffe8 	addiu	sp,sp,-24
    1ea4:	afbf0014 	sw	ra,20(sp)
    1ea8:	afa5001c 	sw	a1,28(sp)
    1eac:	afa60020 	sw	a2,32(sp)
    1eb0:	afa70024 	sw	a3,36(sp)
    1eb4:	0c000000 	jal	0 <EnIk_Destroy>
    1eb8:	24050020 	li	a1,32
    1ebc:	3c0ee700 	lui	t6,0xe700
    1ec0:	00402825 	move	a1,v0
    1ec4:	ac4e0000 	sw	t6,0(v0)
    1ec8:	24440008 	addiu	a0,v0,8
    1ecc:	ac400004 	sw	zero,4(v0)
    1ed0:	00801025 	move	v0,a0
    1ed4:	3c0ffa00 	lui	t7,0xfa00
    1ed8:	ac4f0000 	sw	t7,0(v0)
    1edc:	93aa0023 	lbu	t2,35(sp)
    1ee0:	93b9001f 	lbu	t9,31(sp)
    1ee4:	93ae0027 	lbu	t6,39(sp)
    1ee8:	000a5c00 	sll	t3,t2,0x10
    1eec:	00194600 	sll	t0,t9,0x18
    1ef0:	010b6025 	or	t4,t0,t3
    1ef4:	000e7a00 	sll	t7,t6,0x8
    1ef8:	018fc025 	or	t8,t4,t7
    1efc:	371900ff 	ori	t9,t8,0xff
    1f00:	ac590004 	sw	t9,4(v0)
    1f04:	24840008 	addiu	a0,a0,8
    1f08:	00801025 	move	v0,a0
    1f0c:	3c09fb00 	lui	t1,0xfb00
    1f10:	ac490000 	sw	t1,0(v0)
    1f14:	93ae002f 	lbu	t6,47(sp)
    1f18:	93a8002b 	lbu	t0,43(sp)
    1f1c:	93b90033 	lbu	t9,51(sp)
    1f20:	000e6400 	sll	t4,t6,0x10
    1f24:	00085e00 	sll	t3,t0,0x18
    1f28:	016c7825 	or	t7,t3,t4
    1f2c:	00194a00 	sll	t1,t9,0x8
    1f30:	01e95025 	or	t2,t7,t1
    1f34:	354800ff 	ori	t0,t2,0xff
    1f38:	ac480004 	sw	t0,4(v0)
    1f3c:	3c0ddf00 	lui	t5,0xdf00
    1f40:	ac8d0008 	sw	t5,8(a0)
    1f44:	ac80000c 	sw	zero,12(a0)
    1f48:	8fbf0014 	lw	ra,20(sp)
    1f4c:	24840008 	addiu	a0,a0,8
    1f50:	27bd0018 	addiu	sp,sp,24
    1f54:	03e00008 	jr	ra
    1f58:	00a01025 	move	v0,a1

00001f5c <func_80A7626C>:
    1f5c:	2401000c 	li	at,12
    1f60:	afa40000 	sw	a0,0(sp)
    1f64:	14a1000a 	bne	a1,at,1f90 <func_80A7626C+0x34>
    1f68:	afa7000c 	sw	a3,12(sp)
    1f6c:	8fae0014 	lw	t6,20(sp)
    1f70:	3c180602 	lui	t8,0x602
    1f74:	27188e78 	addiu	t8,t8,-29064
    1f78:	85cf001c 	lh	t7,28(t6)
    1f7c:	00001025 	move	v0,zero
    1f80:	11e00025 	beqz	t7,2018 <func_80A7626C+0xbc>
    1f84:	00000000 	nop
    1f88:	03e00008 	jr	ra
    1f8c:	acd80000 	sw	t8,0(a2)
    1f90:	2401000d 	li	at,13
    1f94:	14a10008 	bne	a1,at,1fb8 <func_80A7626C+0x5c>
    1f98:	8fb90014 	lw	t9,20(sp)
    1f9c:	8728001c 	lh	t0,28(t9)
    1fa0:	3c090602 	lui	t1,0x602
    1fa4:	25299100 	addiu	t1,t1,-28416
    1fa8:	1100001b 	beqz	t0,2018 <func_80A7626C+0xbc>
    1fac:	00001025 	move	v0,zero
    1fb0:	03e00008 	jr	ra
    1fb4:	acc90000 	sw	t1,0(a2)
    1fb8:	2401001a 	li	at,26
    1fbc:	10a10004 	beq	a1,at,1fd0 <func_80A7626C+0x74>
    1fc0:	8faa0014 	lw	t2,20(sp)
    1fc4:	2401001b 	li	at,27
    1fc8:	54a10009 	bnel	a1,at,1ff0 <func_80A7626C+0x94>
    1fcc:	2401001c 	li	at,28
    1fd0:	914b02fa 	lbu	t3,762(t2)
    1fd4:	00001025 	move	v0,zero
    1fd8:	316c0001 	andi	t4,t3,0x1
    1fdc:	1180000e 	beqz	t4,2018 <func_80A7626C+0xbc>
    1fe0:	00000000 	nop
    1fe4:	03e00008 	jr	ra
    1fe8:	acc00000 	sw	zero,0(a2)
    1fec:	2401001c 	li	at,28
    1ff0:	10a10004 	beq	a1,at,2004 <func_80A7626C+0xa8>
    1ff4:	8fad0014 	lw	t5,20(sp)
    1ff8:	2401001d 	li	at,29
    1ffc:	14a10006 	bne	a1,at,2018 <func_80A7626C+0xbc>
    2000:	00000000 	nop
    2004:	91ae02fa 	lbu	t6,762(t5)
    2008:	31cf0001 	andi	t7,t6,0x1
    200c:	15e00002 	bnez	t7,2018 <func_80A7626C+0xbc>
    2010:	00000000 	nop
    2014:	acc00000 	sw	zero,0(a2)
    2018:	03e00008 	jr	ra
    201c:	00001025 	move	v0,zero

00002020 <func_80A76330>:
    2020:	27bdff00 	addiu	sp,sp,-256
    2024:	afb00024 	sw	s0,36(sp)
    2028:	afbf003c 	sw	ra,60(sp)
    202c:	afb50038 	sw	s5,56(sp)
    2030:	afb40034 	sw	s4,52(sp)
    2034:	afb30030 	sw	s3,48(sp)
    2038:	afb2002c 	sw	s2,44(sp)
    203c:	afb10028 	sw	s1,40(sp)
    2040:	afa40100 	sw	a0,256(sp)
    2044:	afa50104 	sw	a1,260(sp)
    2048:	afa7010c 	sw	a3,268(sp)
    204c:	8c850000 	lw	a1,0(a0)
    2050:	00c08025 	move	s0,a2
    2054:	3c060000 	lui	a2,0x0
    2058:	24c60000 	addiu	a2,a2,0
    205c:	27a400d0 	addiu	a0,sp,208
    2060:	240704b1 	li	a3,1201
    2064:	0c000000 	jal	0 <EnIk_Destroy>
    2068:	00a0a825 	move	s5,a1
    206c:	8fb40110 	lw	s4,272(sp)
    2070:	8fa50104 	lw	a1,260(sp)
    2074:	2406001a 	li	a2,26
    2078:	928f02fb 	lbu	t7,763(s4)
    207c:	2407001b 	li	a3,27
    2080:	2419001c 	li	t9,28
    2084:	31f80001 	andi	t8,t7,0x1
    2088:	13000006 	beqz	t8,20a4 <func_80A76330+0x84>
    208c:	26840308 	addiu	a0,s4,776
    2090:	2408ffff 	li	t0,-1
    2094:	afa80018 	sw	t0,24(sp)
    2098:	afb90010 	sw	t9,16(sp)
    209c:	0c000000 	jal	0 <EnIk_Destroy>
    20a0:	afb00014 	sw	s0,20(sp)
    20a4:	8fa30104 	lw	v1,260(sp)
    20a8:	2401000c 	li	at,12
    20ac:	3c11da38 	lui	s1,0xda38
    20b0:	14610022 	bne	v1,at,213c <func_80A76330+0x11c>
    20b4:	36310003 	ori	s1,s1,0x3
    20b8:	8ea202d0 	lw	v0,720(s5)
    20bc:	3c050000 	lui	a1,0x0
    20c0:	24a50000 	addiu	a1,a1,0
    20c4:	24490008 	addiu	t1,v0,8
    20c8:	aea902d0 	sw	t1,720(s5)
    20cc:	ac510000 	sw	s1,0(v0)
    20d0:	8faa0100 	lw	t2,256(sp)
    20d4:	240604c1 	li	a2,1217
    20d8:	00408025 	move	s0,v0
    20dc:	0c000000 	jal	0 <EnIk_Destroy>
    20e0:	8d440000 	lw	a0,0(t2)
    20e4:	ae020004 	sw	v0,4(s0)
    20e8:	868b001c 	lh	t3,28(s4)
    20ec:	3c12de00 	lui	s2,0xde00
    20f0:	3c0d0602 	lui	t5,0x602
    20f4:	5160000a 	beqzl	t3,2120 <func_80A76330+0x100>
    20f8:	8ea202d0 	lw	v0,720(s5)
    20fc:	8ea202d0 	lw	v0,720(s5)
    2100:	3c12de00 	lui	s2,0xde00
    2104:	25ad9e08 	addiu	t5,t5,-25080
    2108:	244c0008 	addiu	t4,v0,8
    210c:	aeac02d0 	sw	t4,720(s5)
    2110:	ac4d0004 	sw	t5,4(v0)
    2114:	10000066 	b	22b0 <func_80A76330+0x290>
    2118:	ac520000 	sw	s2,0(v0)
    211c:	8ea202d0 	lw	v0,720(s5)
    2120:	3c0f0601 	lui	t7,0x601
    2124:	25ef6d88 	addiu	t7,t7,28040
    2128:	244e0008 	addiu	t6,v0,8
    212c:	aeae02d0 	sw	t6,720(s5)
    2130:	ac4f0004 	sw	t7,4(v0)
    2134:	1000005e 	b	22b0 <func_80A76330+0x290>
    2138:	ac520000 	sw	s2,0(v0)
    213c:	24010011 	li	at,17
    2140:	1461005b 	bne	v1,at,22b0 <func_80A76330+0x290>
    2144:	3c040000 	lui	a0,0x0
    2148:	269103b8 	addiu	s1,s4,952
    214c:	02202825 	move	a1,s1
    2150:	0c000000 	jal	0 <EnIk_Destroy>
    2154:	24840000 	addiu	a0,a0,0
    2158:	3c040000 	lui	a0,0x0
    215c:	269003ac 	addiu	s0,s4,940
    2160:	02002825 	move	a1,s0
    2164:	0c000000 	jal	0 <EnIk_Destroy>
    2168:	24840000 	addiu	a0,a0,0
    216c:	3c040000 	lui	a0,0x0
    2170:	269303d0 	addiu	s3,s4,976
    2174:	02602825 	move	a1,s3
    2178:	0c000000 	jal	0 <EnIk_Destroy>
    217c:	24840000 	addiu	a0,a0,0
    2180:	3c040000 	lui	a0,0x0
    2184:	269203c4 	addiu	s2,s4,964
    2188:	02402825 	move	a1,s2
    218c:	0c000000 	jal	0 <EnIk_Destroy>
    2190:	24840000 	addiu	a0,a0,0
    2194:	2684036c 	addiu	a0,s4,876
    2198:	02002825 	move	a1,s0
    219c:	02203025 	move	a2,s1
    21a0:	02403825 	move	a3,s2
    21a4:	0c000000 	jal	0 <EnIk_Destroy>
    21a8:	afb30010 	sw	s3,16(sp)
    21ac:	27b000f4 	addiu	s0,sp,244
    21b0:	3c040000 	lui	a0,0x0
    21b4:	24840000 	addiu	a0,a0,0
    21b8:	0c000000 	jal	0 <EnIk_Destroy>
    21bc:	02002825 	move	a1,s0
    21c0:	27b100e8 	addiu	s1,sp,232
    21c4:	3c040000 	lui	a0,0x0
    21c8:	24840000 	addiu	a0,a0,0
    21cc:	0c000000 	jal	0 <EnIk_Destroy>
    21d0:	02202825 	move	a1,s1
    21d4:	828202fe 	lb	v0,766(s4)
    21d8:	18400009 	blez	v0,2200 <func_80A76330+0x1e0>
    21dc:	00000000 	nop
    21e0:	0c000000 	jal	0 <EnIk_Destroy>
    21e4:	8e8404c4 	lw	a0,1220(s4)
    21e8:	00402025 	move	a0,v0
    21ec:	02002825 	move	a1,s0
    21f0:	0c000000 	jal	0 <EnIk_Destroy>
    21f4:	02203025 	move	a2,s1
    21f8:	1000000a 	b	2224 <func_80A76330+0x204>
    21fc:	929902f8 	lbu	t9,760(s4)
    2200:	54400008 	bnezl	v0,2224 <func_80A76330+0x204>
    2204:	929902f8 	lbu	t9,760(s4)
    2208:	0c000000 	jal	0 <EnIk_Destroy>
    220c:	8e8404c4 	lw	a0,1220(s4)
    2210:	0c000000 	jal	0 <EnIk_Destroy>
    2214:	00402025 	move	a0,v0
    2218:	2418ffff 	li	t8,-1
    221c:	a29802fe 	sb	t8,766(s4)
    2220:	929902f8 	lbu	t9,760(s4)
    2224:	24010009 	li	at,9
    2228:	3c110000 	lui	s1,0x0
    222c:	17210020 	bne	t9,at,22b0 <func_80A76330+0x290>
    2230:	26310000 	addiu	s1,s1,0
    2234:	3c130000 	lui	s3,0x0
    2238:	26730000 	addiu	s3,s3,0
    223c:	27b2009c 	addiu	s2,sp,156
    2240:	27b00078 	addiu	s0,sp,120
    2244:	02202025 	move	a0,s1
    2248:	0c000000 	jal	0 <EnIk_Destroy>
    224c:	02402825 	move	a1,s2
    2250:	02602025 	move	a0,s3
    2254:	0c000000 	jal	0 <EnIk_Destroy>
    2258:	02002825 	move	a1,s0
    225c:	2610000c 	addiu	s0,s0,12
    2260:	27a8009c 	addiu	t0,sp,156
    2264:	2631000c 	addiu	s1,s1,12
    2268:	2652000c 	addiu	s2,s2,12
    226c:	1608fff5 	bne	s0,t0,2244 <func_80A76330+0x224>
    2270:	2673000c 	addiu	s3,s3,12
    2274:	269003ec 	addiu	s0,s4,1004
    2278:	27a900b4 	addiu	t1,sp,180
    227c:	afa90010 	sw	t1,16(sp)
    2280:	02002025 	move	a0,s0
    2284:	00002825 	move	a1,zero
    2288:	27a6009c 	addiu	a2,sp,156
    228c:	0c000000 	jal	0 <EnIk_Destroy>
    2290:	27a700a8 	addiu	a3,sp,168
    2294:	27aa0090 	addiu	t2,sp,144
    2298:	afaa0010 	sw	t2,16(sp)
    229c:	02002025 	move	a0,s0
    22a0:	24050001 	li	a1,1
    22a4:	27a60078 	addiu	a2,sp,120
    22a8:	0c000000 	jal	0 <EnIk_Destroy>
    22ac:	27a70084 	addiu	a3,sp,132
    22b0:	8fa30104 	lw	v1,260(sp)
    22b4:	3c11da38 	lui	s1,0xda38
    22b8:	24010016 	li	at,22
    22bc:	36310003 	ori	s1,s1,0x3
    22c0:	1061000b 	beq	v1,at,22f0 <func_80A76330+0x2d0>
    22c4:	3c12de00 	lui	s2,0xde00
    22c8:	24010018 	li	at,24
    22cc:	1061001c 	beq	v1,at,2340 <func_80A76330+0x320>
    22d0:	3c050000 	lui	a1,0x0
    22d4:	2401001a 	li	at,26
    22d8:	1061002c 	beq	v1,at,238c <func_80A76330+0x36c>
    22dc:	2401001b 	li	at,27
    22e0:	50610043 	beql	v1,at,23f0 <func_80A76330+0x3d0>
    22e4:	928f02fa 	lbu	t7,762(s4)
    22e8:	10000058 	b	244c <func_80A76330+0x42c>
    22ec:	8fab0100 	lw	t3,256(sp)
    22f0:	8ea202d0 	lw	v0,720(s5)
    22f4:	3c050000 	lui	a1,0x0
    22f8:	24a50000 	addiu	a1,a1,0
    22fc:	244b0008 	addiu	t3,v0,8
    2300:	aeab02d0 	sw	t3,720(s5)
    2304:	ac510000 	sw	s1,0(v0)
    2308:	8fac0100 	lw	t4,256(sp)
    230c:	240604f6 	li	a2,1270
    2310:	00408025 	move	s0,v0
    2314:	0c000000 	jal	0 <EnIk_Destroy>
    2318:	8d840000 	lw	a0,0(t4)
    231c:	ae020004 	sw	v0,4(s0)
    2320:	8ea202d0 	lw	v0,720(s5)
    2324:	3c0e0601 	lui	t6,0x601
    2328:	25ce6f88 	addiu	t6,t6,28552
    232c:	244d0008 	addiu	t5,v0,8
    2330:	aead02d0 	sw	t5,720(s5)
    2334:	ac4e0004 	sw	t6,4(v0)
    2338:	10000043 	b	2448 <func_80A76330+0x428>
    233c:	ac520000 	sw	s2,0(v0)
    2340:	8ea202d0 	lw	v0,720(s5)
    2344:	24a50000 	addiu	a1,a1,0
    2348:	240604fb 	li	a2,1275
    234c:	244f0008 	addiu	t7,v0,8
    2350:	aeaf02d0 	sw	t7,720(s5)
    2354:	ac510000 	sw	s1,0(v0)
    2358:	8fb80100 	lw	t8,256(sp)
    235c:	00408025 	move	s0,v0
    2360:	0c000000 	jal	0 <EnIk_Destroy>
    2364:	8f040000 	lw	a0,0(t8)
    2368:	ae020004 	sw	v0,4(s0)
    236c:	8ea202d0 	lw	v0,720(s5)
    2370:	3c080601 	lui	t0,0x601
    2374:	25086ee8 	addiu	t0,t0,28392
    2378:	24590008 	addiu	t9,v0,8
    237c:	aeb902d0 	sw	t9,720(s5)
    2380:	ac480004 	sw	t0,4(v0)
    2384:	10000030 	b	2448 <func_80A76330+0x428>
    2388:	ac520000 	sw	s2,0(v0)
    238c:	928902fa 	lbu	t1,762(s4)
    2390:	3c050000 	lui	a1,0x0
    2394:	312a0001 	andi	t2,t1,0x1
    2398:	5540002c 	bnezl	t2,244c <func_80A76330+0x42c>
    239c:	8fab0100 	lw	t3,256(sp)
    23a0:	8ea202d0 	lw	v0,720(s5)
    23a4:	24a50000 	addiu	a1,a1,0
    23a8:	24060501 	li	a2,1281
    23ac:	244b0008 	addiu	t3,v0,8
    23b0:	aeab02d0 	sw	t3,720(s5)
    23b4:	ac510000 	sw	s1,0(v0)
    23b8:	8fac0100 	lw	t4,256(sp)
    23bc:	00408025 	move	s0,v0
    23c0:	0c000000 	jal	0 <EnIk_Destroy>
    23c4:	8d840000 	lw	a0,0(t4)
    23c8:	ae020004 	sw	v0,4(s0)
    23cc:	8ea202d0 	lw	v0,720(s5)
    23d0:	3c0e0601 	lui	t6,0x601
    23d4:	25ce6be0 	addiu	t6,t6,27616
    23d8:	244d0008 	addiu	t5,v0,8
    23dc:	aead02d0 	sw	t5,720(s5)
    23e0:	ac4e0004 	sw	t6,4(v0)
    23e4:	10000018 	b	2448 <func_80A76330+0x428>
    23e8:	ac520000 	sw	s2,0(v0)
    23ec:	928f02fa 	lbu	t7,762(s4)
    23f0:	3c050000 	lui	a1,0x0
    23f4:	31f80001 	andi	t8,t7,0x1
    23f8:	57000014 	bnezl	t8,244c <func_80A76330+0x42c>
    23fc:	8fab0100 	lw	t3,256(sp)
    2400:	8ea202d0 	lw	v0,720(s5)
    2404:	24a50000 	addiu	a1,a1,0
    2408:	24060508 	li	a2,1288
    240c:	24590008 	addiu	t9,v0,8
    2410:	aeb902d0 	sw	t9,720(s5)
    2414:	ac510000 	sw	s1,0(v0)
    2418:	8fa80100 	lw	t0,256(sp)
    241c:	00408025 	move	s0,v0
    2420:	0c000000 	jal	0 <EnIk_Destroy>
    2424:	8d040000 	lw	a0,0(t0)
    2428:	ae020004 	sw	v0,4(s0)
    242c:	8ea202d0 	lw	v0,720(s5)
    2430:	3c0a0601 	lui	t2,0x601
    2434:	254a6cd8 	addiu	t2,t2,27864
    2438:	24490008 	addiu	t1,v0,8
    243c:	aea902d0 	sw	t1,720(s5)
    2440:	ac4a0004 	sw	t2,4(v0)
    2444:	ac520000 	sw	s2,0(v0)
    2448:	8fab0100 	lw	t3,256(sp)
    244c:	3c060000 	lui	a2,0x0
    2450:	24c60000 	addiu	a2,a2,0
    2454:	27a400d0 	addiu	a0,sp,208
    2458:	2407050e 	li	a3,1294
    245c:	0c000000 	jal	0 <EnIk_Destroy>
    2460:	8d650000 	lw	a1,0(t3)
    2464:	8fbf003c 	lw	ra,60(sp)
    2468:	8fb00024 	lw	s0,36(sp)
    246c:	8fb10028 	lw	s1,40(sp)
    2470:	8fb2002c 	lw	s2,44(sp)
    2474:	8fb30030 	lw	s3,48(sp)
    2478:	8fb40034 	lw	s4,52(sp)
    247c:	8fb50038 	lw	s5,56(sp)
    2480:	03e00008 	jr	ra
    2484:	27bd0100 	addiu	sp,sp,256

00002488 <func_80A76798>:
    2488:	27bdff80 	addiu	sp,sp,-128
    248c:	afb10028 	sw	s1,40(sp)
    2490:	00a08825 	move	s1,a1
    2494:	afbf002c 	sw	ra,44(sp)
    2498:	afb00024 	sw	s0,36(sp)
    249c:	afa40080 	sw	a0,128(sp)
    24a0:	8ca50000 	lw	a1,0(a1)
    24a4:	3c060000 	lui	a2,0x0
    24a8:	24c60000 	addiu	a2,a2,0
    24ac:	27a40068 	addiu	a0,sp,104
    24b0:	2407051d 	li	a3,1309
    24b4:	0c000000 	jal	0 <EnIk_Destroy>
    24b8:	00a08025 	move	s0,a1
    24bc:	0c000000 	jal	0 <EnIk_Destroy>
    24c0:	8e240000 	lw	a0,0(s1)
    24c4:	0c000000 	jal	0 <EnIk_Destroy>
    24c8:	8e240000 	lw	a0,0(s1)
    24cc:	8fa80080 	lw	t0,128(sp)
    24d0:	3c0fdb06 	lui	t7,0xdb06
    24d4:	35ef0020 	ori	t7,t7,0x20
    24d8:	8502001c 	lh	v0,28(t0)
    24dc:	240500f5 	li	a1,245
    24e0:	240600e1 	li	a2,225
    24e4:	14400037 	bnez	v0,25c4 <func_80A76798+0x13c>
    24e8:	24010001 	li	at,1
    24ec:	8e0202c0 	lw	v0,704(s0)
    24f0:	2418001e 	li	t8,30
    24f4:	2419001e 	li	t9,30
    24f8:	244e0008 	addiu	t6,v0,8
    24fc:	ae0e02c0 	sw	t6,704(s0)
    2500:	ac4f0000 	sw	t7,0(v0)
    2504:	8e240000 	lw	a0,0(s1)
    2508:	afa00018 	sw	zero,24(sp)
    250c:	afb90014 	sw	t9,20(sp)
    2510:	afb80010 	sw	t8,16(sp)
    2514:	2407009b 	li	a3,155
    2518:	0c000000 	jal	0 <EnIk_Destroy>
    251c:	afa20064 	sw	v0,100(sp)
    2520:	8fa30064 	lw	v1,100(sp)
    2524:	3c0adb06 	lui	t2,0xdb06
    2528:	354a0024 	ori	t2,t2,0x24
    252c:	ac620004 	sw	v0,4(v1)
    2530:	8e0202c0 	lw	v0,704(s0)
    2534:	240b0028 	li	t3,40
    2538:	240500ff 	li	a1,255
    253c:	24490008 	addiu	t1,v0,8
    2540:	ae0902c0 	sw	t1,704(s0)
    2544:	ac4a0000 	sw	t2,0(v0)
    2548:	8e240000 	lw	a0,0(s1)
    254c:	afa00018 	sw	zero,24(sp)
    2550:	afa00014 	sw	zero,20(sp)
    2554:	afab0010 	sw	t3,16(sp)
    2558:	24060028 	li	a2,40
    255c:	00003825 	move	a3,zero
    2560:	0c000000 	jal	0 <EnIk_Destroy>
    2564:	afa20060 	sw	v0,96(sp)
    2568:	8fa30060 	lw	v1,96(sp)
    256c:	3c0ddb06 	lui	t5,0xdb06
    2570:	35ad0028 	ori	t5,t5,0x28
    2574:	ac620004 	sw	v0,4(v1)
    2578:	8e0202c0 	lw	v0,704(s0)
    257c:	240e0014 	li	t6,20
    2580:	240f0028 	li	t7,40
    2584:	244c0008 	addiu	t4,v0,8
    2588:	ae0c02c0 	sw	t4,704(s0)
    258c:	ac4d0000 	sw	t5,0(v0)
    2590:	8e240000 	lw	a0,0(s1)
    2594:	2418001e 	li	t8,30
    2598:	afb80018 	sw	t8,24(sp)
    259c:	afaf0014 	sw	t7,20(sp)
    25a0:	afae0010 	sw	t6,16(sp)
    25a4:	240500ff 	li	a1,255
    25a8:	240600ff 	li	a2,255
    25ac:	240700ff 	li	a3,255
    25b0:	0c000000 	jal	0 <EnIk_Destroy>
    25b4:	afa2005c 	sw	v0,92(sp)
    25b8:	8fa3005c 	lw	v1,92(sp)
    25bc:	100000b1 	b	2884 <func_80A76798+0x3fc>
    25c0:	ac620004 	sw	v0,4(v1)
    25c4:	1441003b 	bne	v0,at,26b4 <func_80A76798+0x22c>
    25c8:	3c09db06 	lui	t1,0xdb06
    25cc:	8e0202c0 	lw	v0,704(s0)
    25d0:	35290020 	ori	t1,t1,0x20
    25d4:	240a001e 	li	t2,30
    25d8:	24590008 	addiu	t9,v0,8
    25dc:	ae1902c0 	sw	t9,704(s0)
    25e0:	ac490000 	sw	t1,0(v0)
    25e4:	8e240000 	lw	a0,0(s1)
    25e8:	240b0023 	li	t3,35
    25ec:	afab0014 	sw	t3,20(sp)
    25f0:	afa00018 	sw	zero,24(sp)
    25f4:	afaa0010 	sw	t2,16(sp)
    25f8:	240500f5 	li	a1,245
    25fc:	240600ff 	li	a2,255
    2600:	240700cd 	li	a3,205
    2604:	0c000000 	jal	0 <EnIk_Destroy>
    2608:	afa20058 	sw	v0,88(sp)
    260c:	8fa30058 	lw	v1,88(sp)
    2610:	3c0ddb06 	lui	t5,0xdb06
    2614:	35ad0024 	ori	t5,t5,0x24
    2618:	ac620004 	sw	v0,4(v1)
    261c:	8e0202c0 	lw	v0,704(s0)
    2620:	240e0014 	li	t6,20
    2624:	240f0014 	li	t7,20
    2628:	244c0008 	addiu	t4,v0,8
    262c:	ae0c02c0 	sw	t4,704(s0)
    2630:	ac4d0000 	sw	t5,0(v0)
    2634:	8e240000 	lw	a0,0(s1)
    2638:	afa00018 	sw	zero,24(sp)
    263c:	afaf0014 	sw	t7,20(sp)
    2640:	afae0010 	sw	t6,16(sp)
    2644:	240500b9 	li	a1,185
    2648:	24060087 	li	a2,135
    264c:	24070019 	li	a3,25
    2650:	0c000000 	jal	0 <EnIk_Destroy>
    2654:	afa20054 	sw	v0,84(sp)
    2658:	8fa30054 	lw	v1,84(sp)
    265c:	3c19db06 	lui	t9,0xdb06
    2660:	37390028 	ori	t9,t9,0x28
    2664:	ac620004 	sw	v0,4(v1)
    2668:	8e0202c0 	lw	v0,704(s0)
    266c:	2409001e 	li	t1,30
    2670:	240a0028 	li	t2,40
    2674:	24580008 	addiu	t8,v0,8
    2678:	ae1802c0 	sw	t8,704(s0)
    267c:	ac590000 	sw	t9,0(v0)
    2680:	8e240000 	lw	a0,0(s1)
    2684:	240b0014 	li	t3,20
    2688:	afab0018 	sw	t3,24(sp)
    268c:	afaa0014 	sw	t2,20(sp)
    2690:	afa90010 	sw	t1,16(sp)
    2694:	240500ff 	li	a1,255
    2698:	240600ff 	li	a2,255
    269c:	240700ff 	li	a3,255
    26a0:	0c000000 	jal	0 <EnIk_Destroy>
    26a4:	afa20050 	sw	v0,80(sp)
    26a8:	8fa30050 	lw	v1,80(sp)
    26ac:	10000075 	b	2884 <func_80A76798+0x3fc>
    26b0:	ac620004 	sw	v0,4(v1)
    26b4:	24010002 	li	at,2
    26b8:	14410039 	bne	v0,at,27a0 <func_80A76798+0x318>
    26bc:	3c0edb06 	lui	t6,0xdb06
    26c0:	8e0202c0 	lw	v0,704(s0)
    26c4:	3c0ddb06 	lui	t5,0xdb06
    26c8:	35ad0020 	ori	t5,t5,0x20
    26cc:	244c0008 	addiu	t4,v0,8
    26d0:	ae0c02c0 	sw	t4,704(s0)
    26d4:	ac4d0000 	sw	t5,0(v0)
    26d8:	8e240000 	lw	a0,0(s1)
    26dc:	afa00018 	sw	zero,24(sp)
    26e0:	afa00014 	sw	zero,20(sp)
    26e4:	afa00010 	sw	zero,16(sp)
    26e8:	24050037 	li	a1,55
    26ec:	24060041 	li	a2,65
    26f0:	24070037 	li	a3,55
    26f4:	0c000000 	jal	0 <EnIk_Destroy>
    26f8:	afa2004c 	sw	v0,76(sp)
    26fc:	8fa3004c 	lw	v1,76(sp)
    2700:	3c0fdb06 	lui	t7,0xdb06
    2704:	35ef0024 	ori	t7,t7,0x24
    2708:	ac620004 	sw	v0,4(v1)
    270c:	8e0202c0 	lw	v0,704(s0)
    2710:	24180019 	li	t8,25
    2714:	24190014 	li	t9,20
    2718:	244e0008 	addiu	t6,v0,8
    271c:	ae0e02c0 	sw	t6,704(s0)
    2720:	ac4f0000 	sw	t7,0(v0)
    2724:	8e240000 	lw	a0,0(s1)
    2728:	afa00018 	sw	zero,24(sp)
    272c:	afb90014 	sw	t9,20(sp)
    2730:	afb80010 	sw	t8,16(sp)
    2734:	240500cd 	li	a1,205
    2738:	240600a5 	li	a2,165
    273c:	2407004b 	li	a3,75
    2740:	0c000000 	jal	0 <EnIk_Destroy>
    2744:	afa20048 	sw	v0,72(sp)
    2748:	8fa30048 	lw	v1,72(sp)
    274c:	3c0adb06 	lui	t2,0xdb06
    2750:	354a0028 	ori	t2,t2,0x28
    2754:	ac620004 	sw	v0,4(v1)
    2758:	8e0202c0 	lw	v0,704(s0)
    275c:	240b0019 	li	t3,25
    2760:	240c0014 	li	t4,20
    2764:	24490008 	addiu	t1,v0,8
    2768:	ae0902c0 	sw	t1,704(s0)
    276c:	ac4a0000 	sw	t2,0(v0)
    2770:	8e240000 	lw	a0,0(s1)
    2774:	afa00018 	sw	zero,24(sp)
    2778:	afac0014 	sw	t4,20(sp)
    277c:	afab0010 	sw	t3,16(sp)
    2780:	240500cd 	li	a1,205
    2784:	240600a5 	li	a2,165
    2788:	2407004b 	li	a3,75
    278c:	0c000000 	jal	0 <EnIk_Destroy>
    2790:	afa20044 	sw	v0,68(sp)
    2794:	8fa30044 	lw	v1,68(sp)
    2798:	1000003a 	b	2884 <func_80A76798+0x3fc>
    279c:	ac620004 	sw	v0,4(v1)
    27a0:	8e0202c0 	lw	v0,704(s0)
    27a4:	35ce0020 	ori	t6,t6,0x20
    27a8:	240f00b4 	li	t7,180
    27ac:	244d0008 	addiu	t5,v0,8
    27b0:	ae0d02c0 	sw	t5,704(s0)
    27b4:	ac4e0000 	sw	t6,0(v0)
    27b8:	8e240000 	lw	a0,0(s1)
    27bc:	241800b4 	li	t8,180
    27c0:	241900b4 	li	t9,180
    27c4:	afb90018 	sw	t9,24(sp)
    27c8:	afb80014 	sw	t8,20(sp)
    27cc:	afaf0010 	sw	t7,16(sp)
    27d0:	240500ff 	li	a1,255
    27d4:	240600ff 	li	a2,255
    27d8:	240700ff 	li	a3,255
    27dc:	0c000000 	jal	0 <EnIk_Destroy>
    27e0:	afa20040 	sw	v0,64(sp)
    27e4:	8fa30040 	lw	v1,64(sp)
    27e8:	3c0adb06 	lui	t2,0xdb06
    27ec:	354a0024 	ori	t2,t2,0x24
    27f0:	ac620004 	sw	v0,4(v1)
    27f4:	8e0202c0 	lw	v0,704(s0)
    27f8:	240b0019 	li	t3,25
    27fc:	240c0014 	li	t4,20
    2800:	24490008 	addiu	t1,v0,8
    2804:	ae0902c0 	sw	t1,704(s0)
    2808:	ac4a0000 	sw	t2,0(v0)
    280c:	8e240000 	lw	a0,0(s1)
    2810:	afa00018 	sw	zero,24(sp)
    2814:	afac0014 	sw	t4,20(sp)
    2818:	afab0010 	sw	t3,16(sp)
    281c:	240500e1 	li	a1,225
    2820:	240600cd 	li	a2,205
    2824:	24070073 	li	a3,115
    2828:	0c000000 	jal	0 <EnIk_Destroy>
    282c:	afa2003c 	sw	v0,60(sp)
    2830:	8fa3003c 	lw	v1,60(sp)
    2834:	3c0edb06 	lui	t6,0xdb06
    2838:	35ce0028 	ori	t6,t6,0x28
    283c:	ac620004 	sw	v0,4(v1)
    2840:	8e0202c0 	lw	v0,704(s0)
    2844:	240f0019 	li	t7,25
    2848:	24180014 	li	t8,20
    284c:	244d0008 	addiu	t5,v0,8
    2850:	ae0d02c0 	sw	t5,704(s0)
    2854:	ac4e0000 	sw	t6,0(v0)
    2858:	8e240000 	lw	a0,0(s1)
    285c:	afa00018 	sw	zero,24(sp)
    2860:	afb80014 	sw	t8,20(sp)
    2864:	afaf0010 	sw	t7,16(sp)
    2868:	240500e1 	li	a1,225
    286c:	240600cd 	li	a2,205
    2870:	24070073 	li	a3,115
    2874:	0c000000 	jal	0 <EnIk_Destroy>
    2878:	afa20038 	sw	v0,56(sp)
    287c:	8fa30038 	lw	v1,56(sp)
    2880:	ac620004 	sw	v0,4(v1)
    2884:	8fb90080 	lw	t9,128(sp)
    2888:	3c090000 	lui	t1,0x0
    288c:	3c0a0000 	lui	t2,0x0
    2890:	8f250150 	lw	a1,336(t9)
    2894:	8f26016c 	lw	a2,364(t9)
    2898:	9327014e 	lbu	a3,334(t9)
    289c:	254a0000 	addiu	t2,t2,0
    28a0:	25290000 	addiu	t1,t1,0
    28a4:	afa90010 	sw	t1,16(sp)
    28a8:	afaa0014 	sw	t2,20(sp)
    28ac:	02202025 	move	a0,s1
    28b0:	0c000000 	jal	0 <EnIk_Destroy>
    28b4:	afb90018 	sw	t9,24(sp)
    28b8:	3c060000 	lui	a2,0x0
    28bc:	24c60000 	addiu	a2,a2,0
    28c0:	27a40068 	addiu	a0,sp,104
    28c4:	8e250000 	lw	a1,0(s1)
    28c8:	0c000000 	jal	0 <EnIk_Destroy>
    28cc:	24070547 	li	a3,1351
    28d0:	8fbf002c 	lw	ra,44(sp)
    28d4:	8fb00024 	lw	s0,36(sp)
    28d8:	8fb10028 	lw	s1,40(sp)
    28dc:	03e00008 	jr	ra
    28e0:	27bd0080 	addiu	sp,sp,128

000028e4 <func_80A76BF4>:
    28e4:	27bdffe8 	addiu	sp,sp,-24
    28e8:	afbf0014 	sw	ra,20(sp)
    28ec:	0c000000 	jal	0 <EnIk_Destroy>
    28f0:	24040038 	li	a0,56
    28f4:	8fbf0014 	lw	ra,20(sp)
    28f8:	27bd0018 	addiu	sp,sp,24
    28fc:	03e00008 	jr	ra
    2900:	00000000 	nop

00002904 <func_80A76C14>:
    2904:	27bdffd8 	addiu	sp,sp,-40
    2908:	afb00020 	sw	s0,32(sp)
    290c:	afbf0024 	sw	ra,36(sp)
    2910:	afa40028 	sw	a0,40(sp)
    2914:	2490014c 	addiu	s0,a0,332
    2918:	02002025 	move	a0,s0
    291c:	0c000000 	jal	0 <EnIk_Destroy>
    2920:	3c053f80 	lui	a1,0x3f80
    2924:	1040000e 	beqz	v0,2960 <func_80A76C14+0x5c>
    2928:	02002025 	move	a0,s0
    292c:	8fa50028 	lw	a1,40(sp)
    2930:	3c070000 	lui	a3,0x0
    2934:	3c0e0000 	lui	t6,0x0
    2938:	24e70000 	addiu	a3,a3,0
    293c:	25ce0000 	addiu	t6,t6,0
    2940:	afae0014 	sw	t6,20(sp)
    2944:	afa70010 	sw	a3,16(sp)
    2948:	240439c2 	li	a0,14786
    294c:	24060004 	li	a2,4
    2950:	0c000000 	jal	0 <EnIk_Destroy>
    2954:	24a500e4 	addiu	a1,a1,228
    2958:	10000058 	b	2abc <func_80A76C14+0x1b8>
    295c:	8fbf0024 	lw	ra,36(sp)
    2960:	0c000000 	jal	0 <EnIk_Destroy>
    2964:	3c054204 	lui	a1,0x4204
    2968:	1040000e 	beqz	v0,29a4 <func_80A76C14+0xa0>
    296c:	02002025 	move	a0,s0
    2970:	8fa50028 	lw	a1,40(sp)
    2974:	3c070000 	lui	a3,0x0
    2978:	3c0f0000 	lui	t7,0x0
    297c:	24e70000 	addiu	a3,a3,0
    2980:	25ef0000 	addiu	t7,t7,0
    2984:	afaf0014 	sw	t7,20(sp)
    2988:	afa70010 	sw	a3,16(sp)
    298c:	24043928 	li	a0,14632
    2990:	24060004 	li	a2,4
    2994:	0c000000 	jal	0 <EnIk_Destroy>
    2998:	24a500e4 	addiu	a1,a1,228
    299c:	10000047 	b	2abc <func_80A76C14+0x1b8>
    29a0:	8fbf0024 	lw	ra,36(sp)
    29a4:	0c000000 	jal	0 <EnIk_Destroy>
    29a8:	3c054288 	lui	a1,0x4288
    29ac:	14400005 	bnez	v0,29c4 <func_80A76C14+0xc0>
    29b0:	02002025 	move	a0,s0
    29b4:	0c000000 	jal	0 <EnIk_Destroy>
    29b8:	3c0542a0 	lui	a1,0x42a0
    29bc:	1040000e 	beqz	v0,29f8 <func_80A76C14+0xf4>
    29c0:	02002025 	move	a0,s0
    29c4:	8fa50028 	lw	a1,40(sp)
    29c8:	3c070000 	lui	a3,0x0
    29cc:	3c180000 	lui	t8,0x0
    29d0:	24e70000 	addiu	a3,a3,0
    29d4:	27180000 	addiu	t8,t8,0
    29d8:	afb80014 	sw	t8,20(sp)
    29dc:	afa70010 	sw	a3,16(sp)
    29e0:	2404392a 	li	a0,14634
    29e4:	24060004 	li	a2,4
    29e8:	0c000000 	jal	0 <EnIk_Destroy>
    29ec:	24a500e4 	addiu	a1,a1,228
    29f0:	10000032 	b	2abc <func_80A76C14+0x1b8>
    29f4:	8fbf0024 	lw	ra,36(sp)
    29f8:	0c000000 	jal	0 <EnIk_Destroy>
    29fc:	3c0542d6 	lui	a1,0x42d6
    2a00:	1040000e 	beqz	v0,2a3c <func_80A76C14+0x138>
    2a04:	02002025 	move	a0,s0
    2a08:	8fa50028 	lw	a1,40(sp)
    2a0c:	3c070000 	lui	a3,0x0
    2a10:	3c190000 	lui	t9,0x0
    2a14:	24e70000 	addiu	a3,a3,0
    2a18:	27390000 	addiu	t9,t9,0
    2a1c:	afb90014 	sw	t9,20(sp)
    2a20:	afa70010 	sw	a3,16(sp)
    2a24:	24043939 	li	a0,14649
    2a28:	24060004 	li	a2,4
    2a2c:	0c000000 	jal	0 <EnIk_Destroy>
    2a30:	24a500e4 	addiu	a1,a1,228
    2a34:	10000021 	b	2abc <func_80A76C14+0x1b8>
    2a38:	8fbf0024 	lw	ra,36(sp)
    2a3c:	0c000000 	jal	0 <EnIk_Destroy>
    2a40:	3c05431c 	lui	a1,0x431c
    2a44:	1040000e 	beqz	v0,2a80 <func_80A76C14+0x17c>
    2a48:	02002025 	move	a0,s0
    2a4c:	8fa50028 	lw	a1,40(sp)
    2a50:	3c070000 	lui	a3,0x0
    2a54:	3c080000 	lui	t0,0x0
    2a58:	24e70000 	addiu	a3,a3,0
    2a5c:	25080000 	addiu	t0,t0,0
    2a60:	afa80014 	sw	t0,20(sp)
    2a64:	afa70010 	sw	a3,16(sp)
    2a68:	2404392a 	li	a0,14634
    2a6c:	24060004 	li	a2,4
    2a70:	0c000000 	jal	0 <EnIk_Destroy>
    2a74:	24a500e4 	addiu	a1,a1,228
    2a78:	10000010 	b	2abc <func_80A76C14+0x1b8>
    2a7c:	8fbf0024 	lw	ra,36(sp)
    2a80:	0c000000 	jal	0 <EnIk_Destroy>
    2a84:	3c05433c 	lui	a1,0x433c
    2a88:	1040000b 	beqz	v0,2ab8 <func_80A76C14+0x1b4>
    2a8c:	3c070000 	lui	a3,0x0
    2a90:	8fa50028 	lw	a1,40(sp)
    2a94:	3c090000 	lui	t1,0x0
    2a98:	24e70000 	addiu	a3,a3,0
    2a9c:	25290000 	addiu	t1,t1,0
    2aa0:	afa90014 	sw	t1,20(sp)
    2aa4:	afa70010 	sw	a3,16(sp)
    2aa8:	24043938 	li	a0,14648
    2aac:	24060004 	li	a2,4
    2ab0:	0c000000 	jal	0 <EnIk_Destroy>
    2ab4:	24a500e4 	addiu	a1,a1,228
    2ab8:	8fbf0024 	lw	ra,36(sp)
    2abc:	8fb00020 	lw	s0,32(sp)
    2ac0:	27bd0028 	addiu	sp,sp,40
    2ac4:	03e00008 	jr	ra
    2ac8:	00000000 	nop

00002acc <func_80A76DDC>:
    2acc:	27bdffe0 	addiu	sp,sp,-32
    2ad0:	afa40020 	sw	a0,32(sp)
    2ad4:	afa50024 	sw	a1,36(sp)
    2ad8:	8fa50020 	lw	a1,32(sp)
    2adc:	3c070000 	lui	a3,0x0
    2ae0:	3c0e0000 	lui	t6,0x0
    2ae4:	24e70000 	addiu	a3,a3,0
    2ae8:	afbf001c 	sw	ra,28(sp)
    2aec:	afa60028 	sw	a2,40(sp)
    2af0:	25ce0000 	addiu	t6,t6,0
    2af4:	afae0014 	sw	t6,20(sp)
    2af8:	24060004 	li	a2,4
    2afc:	afa70010 	sw	a3,16(sp)
    2b00:	2404390d 	li	a0,14605
    2b04:	0c000000 	jal	0 <EnIk_Destroy>
    2b08:	24a500e4 	addiu	a1,a1,228
    2b0c:	8fbf001c 	lw	ra,28(sp)
    2b10:	27bd0020 	addiu	sp,sp,32
    2b14:	03e00008 	jr	ra
    2b18:	00000000 	nop

00002b1c <func_80A76E2C>:
    2b1c:	27bdff48 	addiu	sp,sp,-184
    2b20:	afbf006c 	sw	ra,108(sp)
    2b24:	afbe0068 	sw	s8,104(sp)
    2b28:	afb70064 	sw	s7,100(sp)
    2b2c:	afb60060 	sw	s6,96(sp)
    2b30:	afb5005c 	sw	s5,92(sp)
    2b34:	afb40058 	sw	s4,88(sp)
    2b38:	afb30054 	sw	s3,84(sp)
    2b3c:	afb20050 	sw	s2,80(sp)
    2b40:	afb1004c 	sw	s1,76(sp)
    2b44:	afb00048 	sw	s0,72(sp)
    2b48:	f7ba0040 	sdc1	$f26,64(sp)
    2b4c:	f7b80038 	sdc1	$f24,56(sp)
    2b50:	f7b60030 	sdc1	$f22,48(sp)
    2b54:	f7b40028 	sdc1	$f20,40(sp)
    2b58:	afa400b8 	sw	a0,184(sp)
    2b5c:	afa600c0 	sw	a2,192(sp)
    2b60:	8c8f04d4 	lw	t7,1236(a0)
    2b64:	00a0b825 	move	s7,a1
    2b68:	27be00a8 	addiu	s8,sp,168
    2b6c:	15e0005d 	bnez	t7,2ce4 <func_80A76E2C+0x1c8>
    2b70:	3c180000 	lui	t8,0x0
    2b74:	27180000 	addiu	t8,t8,0
    2b78:	8f080000 	lw	t0,0(t8)
    2b7c:	3c0a0000 	lui	t2,0x0
    2b80:	254a0000 	addiu	t2,t2,0
    2b84:	afc80000 	sw	t0,0(s8)
    2b88:	8f190004 	lw	t9,4(t8)
    2b8c:	3c014396 	lui	at,0x4396
    2b90:	4481d000 	mtc1	at,$f26
    2b94:	afd90004 	sw	t9,4(s8)
    2b98:	8f080008 	lw	t0,8(t8)
    2b9c:	3c014270 	lui	at,0x4270
    2ba0:	27a9009c 	addiu	t1,sp,156
    2ba4:	afc80008 	sw	t0,8(s8)
    2ba8:	8d4c0000 	lw	t4,0(t2)
    2bac:	4481c000 	mtc1	at,$f24
    2bb0:	3c014120 	lui	at,0x4120
    2bb4:	ad2c0000 	sw	t4,0(t1)
    2bb8:	8d4c0008 	lw	t4,8(t2)
    2bbc:	8d4b0004 	lw	t3,4(t2)
    2bc0:	4481b000 	mtc1	at,$f22
    2bc4:	3c0141a0 	lui	at,0x41a0
    2bc8:	3c100000 	lui	s0,0x0
    2bcc:	3c160000 	lui	s6,0x0
    2bd0:	3c150000 	lui	s5,0x0
    2bd4:	3c140000 	lui	s4,0x0
    2bd8:	4481a000 	mtc1	at,$f20
    2bdc:	26940000 	addiu	s4,s4,0
    2be0:	26b50000 	addiu	s5,s5,0
    2be4:	26d60000 	addiu	s6,s6,0
    2be8:	26100000 	addiu	s0,s0,0
    2bec:	27b30080 	addiu	s3,sp,128
    2bf0:	27b20090 	addiu	s2,sp,144
    2bf4:	27b10094 	addiu	s1,sp,148
    2bf8:	ad2c0008 	sw	t4,8(t1)
    2bfc:	ad2b0004 	sw	t3,4(t1)
    2c00:	8e8e0000 	lw	t6,0(s4)
    2c04:	8eb80000 	lw	t8,0(s5)
    2c08:	02002025 	move	a0,s0
    2c0c:	02602825 	move	a1,s3
    2c10:	ae2e0000 	sw	t6,0(s1)
    2c14:	0c000000 	jal	0 <EnIk_Destroy>
    2c18:	ae580000 	sw	t8,0(s2)
    2c1c:	0c000000 	jal	0 <EnIk_Destroy>
    2c20:	00000000 	nop
    2c24:	46140102 	mul.s	$f4,$f0,$f20
    2c28:	93a80094 	lbu	t0,148(sp)
    2c2c:	93aa0095 	lbu	t2,149(sp)
    2c30:	93ac0096 	lbu	t4,150(sp)
    2c34:	93ae0090 	lbu	t6,144(sp)
    2c38:	93b80091 	lbu	t8,145(sp)
    2c3c:	46162181 	sub.s	$f6,$f4,$f22
    2c40:	4600320d 	trunc.w.s	$f8,$f6
    2c44:	44024000 	mfc1	v0,$f8
    2c48:	00000000 	nop
    2c4c:	01024821 	addu	t1,t0,v0
    2c50:	93a80092 	lbu	t0,146(sp)
    2c54:	a3a90094 	sb	t1,148(sp)
    2c58:	01425821 	addu	t3,t2,v0
    2c5c:	01826821 	addu	t5,t4,v0
    2c60:	01c27821 	addu	t7,t6,v0
    2c64:	0302c821 	addu	t9,t8,v0
    2c68:	01024821 	addu	t1,t0,v0
    2c6c:	a3ab0095 	sb	t3,149(sp)
    2c70:	a3ad0096 	sb	t5,150(sp)
    2c74:	a3af0090 	sb	t7,144(sp)
    2c78:	a3b90091 	sb	t9,145(sp)
    2c7c:	0c000000 	jal	0 <EnIk_Destroy>
    2c80:	a3a90092 	sb	t1,146(sp)
    2c84:	46180282 	mul.s	$f10,$f0,$f24
    2c88:	02e02025 	move	a0,s7
    2c8c:	02602825 	move	a1,s3
    2c90:	03c03025 	move	a2,s8
    2c94:	27a7009c 	addiu	a3,sp,156
    2c98:	afb10010 	sw	s1,16(sp)
    2c9c:	afb20014 	sw	s2,20(sp)
    2ca0:	461a5400 	add.s	$f16,$f10,$f26
    2ca4:	afa0001c 	sw	zero,28(sp)
    2ca8:	4600848d 	trunc.w.s	$f18,$f16
    2cac:	440b9000 	mfc1	t3,$f18
    2cb0:	0c000000 	jal	0 <EnIk_Destroy>
    2cb4:	afab0018 	sw	t3,24(sp)
    2cb8:	2610fff4 	addiu	s0,s0,-12
    2cbc:	0216082b 	sltu	at,s0,s6
    2cc0:	5020ffd0 	beqzl	at,2c04 <func_80A76E2C+0xe8>
    2cc4:	8e8e0000 	lw	t6,0(s4)
    2cc8:	8fad00b8 	lw	t5,184(sp)
    2ccc:	240c0001 	li	t4,1
    2cd0:	02e02825 	move	a1,s7
    2cd4:	adac04d4 	sw	t4,1236(t5)
    2cd8:	8fa600c0 	lw	a2,192(sp)
    2cdc:	0c000000 	jal	0 <EnIk_Destroy>
    2ce0:	8fa400b8 	lw	a0,184(sp)
    2ce4:	8fbf006c 	lw	ra,108(sp)
    2ce8:	d7b40028 	ldc1	$f20,40(sp)
    2cec:	d7b60030 	ldc1	$f22,48(sp)
    2cf0:	d7b80038 	ldc1	$f24,56(sp)
    2cf4:	d7ba0040 	ldc1	$f26,64(sp)
    2cf8:	8fb00048 	lw	s0,72(sp)
    2cfc:	8fb1004c 	lw	s1,76(sp)
    2d00:	8fb20050 	lw	s2,80(sp)
    2d04:	8fb30054 	lw	s3,84(sp)
    2d08:	8fb40058 	lw	s4,88(sp)
    2d0c:	8fb5005c 	lw	s5,92(sp)
    2d10:	8fb60060 	lw	s6,96(sp)
    2d14:	8fb70064 	lw	s7,100(sp)
    2d18:	8fbe0068 	lw	s8,104(sp)
    2d1c:	03e00008 	jr	ra
    2d20:	27bd00b8 	addiu	sp,sp,184

00002d24 <func_80A77034>:
    2d24:	27bdffe0 	addiu	sp,sp,-32
    2d28:	3c0141f0 	lui	at,0x41f0
    2d2c:	44810000 	mtc1	at,$f0
    2d30:	afa50024 	sw	a1,36(sp)
    2d34:	00802825 	move	a1,a0
    2d38:	afbf001c 	sw	ra,28(sp)
    2d3c:	afa40020 	sw	a0,32(sp)
    2d40:	240e0005 	li	t6,5
    2d44:	44070000 	mfc1	a3,$f0
    2d48:	afae0014 	sw	t6,20(sp)
    2d4c:	8fa40024 	lw	a0,36(sp)
    2d50:	3c064296 	lui	a2,0x4296
    2d54:	0c000000 	jal	0 <EnIk_Destroy>
    2d58:	e7a00010 	swc1	$f0,16(sp)
    2d5c:	8fbf001c 	lw	ra,28(sp)
    2d60:	27bd0020 	addiu	sp,sp,32
    2d64:	03e00008 	jr	ra
    2d68:	00000000 	nop

00002d6c <func_80A7707C>:
    2d6c:	27bdffe8 	addiu	sp,sp,-24
    2d70:	afbf0014 	sw	ra,20(sp)
    2d74:	0c000000 	jal	0 <EnIk_Destroy>
    2d78:	2484014c 	addiu	a0,a0,332
    2d7c:	8fbf0014 	lw	ra,20(sp)
    2d80:	27bd0018 	addiu	sp,sp,24
    2d84:	03e00008 	jr	ra
    2d88:	00000000 	nop

00002d8c <func_80A7709C>:
    2d8c:	908e1d6c 	lbu	t6,7532(a0)
    2d90:	00057880 	sll	t7,a1,0x2
    2d94:	008fc021 	addu	t8,a0,t7
    2d98:	11c00003 	beqz	t6,2da8 <func_80A7709C+0x1c>
    2d9c:	00001025 	move	v0,zero
    2da0:	03e00008 	jr	ra
    2da4:	8f021d8c 	lw	v0,7564(t8)
    2da8:	03e00008 	jr	ra
    2dac:	00000000 	nop

00002db0 <func_80A770C0>:
    2db0:	27bdffe8 	addiu	sp,sp,-24
    2db4:	00803825 	move	a3,a0
    2db8:	afbf0014 	sw	ra,20(sp)
    2dbc:	afa5001c 	sw	a1,28(sp)
    2dc0:	00a02025 	move	a0,a1
    2dc4:	00c02825 	move	a1,a2
    2dc8:	0c000000 	jal	0 <EnIk_Destroy>
    2dcc:	afa70018 	sw	a3,24(sp)
    2dd0:	10400013 	beqz	v0,2e20 <func_80A770C0+0x70>
    2dd4:	8fa70018 	lw	a3,24(sp)
    2dd8:	8c4e000c 	lw	t6,12(v0)
    2ddc:	448e2000 	mtc1	t6,$f4
    2de0:	00000000 	nop
    2de4:	468021a0 	cvt.s.w	$f6,$f4
    2de8:	e4e60024 	swc1	$f6,36(a3)
    2dec:	8c4f0010 	lw	t7,16(v0)
    2df0:	448f4000 	mtc1	t7,$f8
    2df4:	00000000 	nop
    2df8:	468042a0 	cvt.s.w	$f10,$f8
    2dfc:	e4ea0028 	swc1	$f10,40(a3)
    2e00:	8c580014 	lw	t8,20(v0)
    2e04:	44988000 	mtc1	t8,$f16
    2e08:	00000000 	nop
    2e0c:	468084a0 	cvt.s.w	$f18,$f16
    2e10:	e4f2002c 	swc1	$f18,44(a3)
    2e14:	84430008 	lh	v1,8(v0)
    2e18:	a4e300b6 	sh	v1,182(a3)
    2e1c:	a4e30032 	sh	v1,50(a3)
    2e20:	8fbf0014 	lw	ra,20(sp)
    2e24:	27bd0018 	addiu	sp,sp,24
    2e28:	03e00008 	jr	ra
    2e2c:	00000000 	nop

00002e30 <func_80A77140>:
    2e30:	03e00008 	jr	ra
    2e34:	c4800164 	lwc1	$f0,356(a0)

00002e38 <func_80A77148>:
    2e38:	ac8004c8 	sw	zero,1224(a0)
    2e3c:	ac8004cc 	sw	zero,1228(a0)
    2e40:	03e00008 	jr	ra
    2e44:	a08000c8 	sb	zero,200(a0)

00002e48 <func_80A77158>:
    2e48:	27bdffd0 	addiu	sp,sp,-48
    2e4c:	afb00028 	sw	s0,40(sp)
    2e50:	00808025 	move	s0,a0
    2e54:	afbf002c 	sw	ra,44(sp)
    2e58:	3c040601 	lui	a0,0x601
    2e5c:	afa50034 	sw	a1,52(sp)
    2e60:	0c000000 	jal	0 <EnIk_Destroy>
    2e64:	2484c114 	addiu	a0,a0,-16108
    2e68:	44822000 	mtc1	v0,$f4
    2e6c:	44800000 	mtc1	zero,$f0
    2e70:	3c050601 	lui	a1,0x601
    2e74:	468021a0 	cvt.s.w	$f6,$f4
    2e78:	240e0002 	li	t6,2
    2e7c:	44070000 	mfc1	a3,$f0
    2e80:	afae0014 	sw	t6,20(sp)
    2e84:	24a5c114 	addiu	a1,a1,-16108
    2e88:	2604014c 	addiu	a0,s0,332
    2e8c:	e7a60010 	swc1	$f6,16(sp)
    2e90:	3c063f80 	lui	a2,0x3f80
    2e94:	0c000000 	jal	0 <EnIk_Destroy>
    2e98:	e7a00018 	swc1	$f0,24(sp)
    2e9c:	02002025 	move	a0,s0
    2ea0:	8fa50034 	lw	a1,52(sp)
    2ea4:	0c000000 	jal	0 <EnIk_Destroy>
    2ea8:	24060004 	li	a2,4
    2eac:	24020001 	li	v0,1
    2eb0:	240f00ff 	li	t7,255
    2eb4:	ae0204c8 	sw	v0,1224(s0)
    2eb8:	ae0204cc 	sw	v0,1228(s0)
    2ebc:	a20f00c8 	sb	t7,200(s0)
    2ec0:	8fbf002c 	lw	ra,44(sp)
    2ec4:	8fb00028 	lw	s0,40(sp)
    2ec8:	27bd0030 	addiu	sp,sp,48
    2ecc:	03e00008 	jr	ra
    2ed0:	00000000 	nop

00002ed4 <func_80A771E4>:
    2ed4:	27bdffd0 	addiu	sp,sp,-48
    2ed8:	afb00028 	sw	s0,40(sp)
    2edc:	00808025 	move	s0,a0
    2ee0:	afbf002c 	sw	ra,44(sp)
    2ee4:	3c040601 	lui	a0,0x601
    2ee8:	0c000000 	jal	0 <EnIk_Destroy>
    2eec:	2484c114 	addiu	a0,a0,-16108
    2ef0:	44822000 	mtc1	v0,$f4
    2ef4:	44800000 	mtc1	zero,$f0
    2ef8:	3c050601 	lui	a1,0x601
    2efc:	468021a0 	cvt.s.w	$f6,$f4
    2f00:	240e0002 	li	t6,2
    2f04:	44070000 	mfc1	a3,$f0
    2f08:	afae0014 	sw	t6,20(sp)
    2f0c:	24a5c114 	addiu	a1,a1,-16108
    2f10:	2604014c 	addiu	a0,s0,332
    2f14:	e7a60010 	swc1	$f6,16(sp)
    2f18:	3c063f80 	lui	a2,0x3f80
    2f1c:	0c000000 	jal	0 <EnIk_Destroy>
    2f20:	e7a00018 	swc1	$f0,24(sp)
    2f24:	240f0002 	li	t7,2
    2f28:	24180001 	li	t8,1
    2f2c:	241900ff 	li	t9,255
    2f30:	ae0f04c8 	sw	t7,1224(s0)
    2f34:	ae1804cc 	sw	t8,1228(s0)
    2f38:	ae0004d4 	sw	zero,1236(s0)
    2f3c:	a21900c8 	sb	t9,200(s0)
    2f40:	8fbf002c 	lw	ra,44(sp)
    2f44:	8fb00028 	lw	s0,40(sp)
    2f48:	27bd0030 	addiu	sp,sp,48
    2f4c:	03e00008 	jr	ra
    2f50:	00000000 	nop

00002f54 <func_80A77264>:
    2f54:	27bdffe8 	addiu	sp,sp,-24
    2f58:	afbf0014 	sw	ra,20(sp)
    2f5c:	afa40018 	sw	a0,24(sp)
    2f60:	10c00008 	beqz	a2,2f84 <func_80A77264+0x30>
    2f64:	afa5001c 	sw	a1,28(sp)
    2f68:	00a02025 	move	a0,a1
    2f6c:	0c000000 	jal	0 <EnIk_Destroy>
    2f70:	24050004 	li	a1,4
    2f74:	10400003 	beqz	v0,2f84 <func_80A77264+0x30>
    2f78:	8fa40018 	lw	a0,24(sp)
    2f7c:	0c000000 	jal	0 <EnIk_Destroy>
    2f80:	8fa5001c 	lw	a1,28(sp)
    2f84:	8fbf0014 	lw	ra,20(sp)
    2f88:	27bd0018 	addiu	sp,sp,24
    2f8c:	03e00008 	jr	ra
    2f90:	00000000 	nop

00002f94 <func_80A772A4>:
    2f94:	27bdffe0 	addiu	sp,sp,-32
    2f98:	afa40020 	sw	a0,32(sp)
    2f9c:	8fa50020 	lw	a1,32(sp)
    2fa0:	3c070000 	lui	a3,0x0
    2fa4:	3c0e0000 	lui	t6,0x0
    2fa8:	24e70000 	addiu	a3,a3,0
    2fac:	afbf001c 	sw	ra,28(sp)
    2fb0:	25ce0000 	addiu	t6,t6,0
    2fb4:	afae0014 	sw	t6,20(sp)
    2fb8:	afa70010 	sw	a3,16(sp)
    2fbc:	2404392b 	li	a0,14635
    2fc0:	24060004 	li	a2,4
    2fc4:	0c000000 	jal	0 <EnIk_Destroy>
    2fc8:	24a500e4 	addiu	a1,a1,228
    2fcc:	8fbf001c 	lw	ra,28(sp)
    2fd0:	27bd0020 	addiu	sp,sp,32
    2fd4:	03e00008 	jr	ra
    2fd8:	00000000 	nop

00002fdc <func_80A772EC>:
    2fdc:	27bdffd0 	addiu	sp,sp,-48
    2fe0:	3c010001 	lui	at,0x1
    2fe4:	afa40030 	sw	a0,48(sp)
    2fe8:	34211d60 	ori	at,at,0x1d60
    2fec:	afa50034 	sw	a1,52(sp)
    2ff0:	00a12021 	addu	a0,a1,at
    2ff4:	8fa50030 	lw	a1,48(sp)
    2ff8:	afbf001c 	sw	ra,28(sp)
    2ffc:	3c060000 	lui	a2,0x0
    3000:	24c60000 	addiu	a2,a2,0
    3004:	27a70024 	addiu	a3,sp,36
    3008:	0c000000 	jal	0 <EnIk_Destroy>
    300c:	24a50024 	addiu	a1,a1,36
    3010:	3c070000 	lui	a3,0x0
    3014:	3c0e0000 	lui	t6,0x0
    3018:	24e70000 	addiu	a3,a3,0
    301c:	25ce0000 	addiu	t6,t6,0
    3020:	3c050000 	lui	a1,0x0
    3024:	24a50000 	addiu	a1,a1,0
    3028:	afae0014 	sw	t6,20(sp)
    302c:	afa70010 	sw	a3,16(sp)
    3030:	240439c0 	li	a0,14784
    3034:	0c000000 	jal	0 <EnIk_Destroy>
    3038:	24060004 	li	a2,4
    303c:	8fbf001c 	lw	ra,28(sp)
    3040:	27bd0030 	addiu	sp,sp,48
    3044:	03e00008 	jr	ra
    3048:	00000000 	nop

0000304c <func_80A7735C>:
    304c:	27bdffb8 	addiu	sp,sp,-72
    3050:	afb00028 	sw	s0,40(sp)
    3054:	00808025 	move	s0,a0
    3058:	afbf002c 	sw	ra,44(sp)
    305c:	3c040602 	lui	a0,0x602
    3060:	afa5004c 	sw	a1,76(sp)
    3064:	0c000000 	jal	0 <EnIk_Destroy>
    3068:	248403d8 	addiu	a0,a0,984
    306c:	44822000 	mtc1	v0,$f4
    3070:	2605014c 	addiu	a1,s0,332
    3074:	3c060602 	lui	a2,0x602
    3078:	468021a0 	cvt.s.w	$f6,$f4
    307c:	260e0190 	addiu	t6,s0,400
    3080:	260f0244 	addiu	t7,s0,580
    3084:	2418001e 	li	t8,30
    3088:	afb80018 	sw	t8,24(sp)
    308c:	afaf0014 	sw	t7,20(sp)
    3090:	e7a60038 	swc1	$f6,56(sp)
    3094:	afae0010 	sw	t6,16(sp)
    3098:	24c605c0 	addiu	a2,a2,1472
    309c:	afa50034 	sw	a1,52(sp)
    30a0:	8fa4004c 	lw	a0,76(sp)
    30a4:	0c000000 	jal	0 <EnIk_Destroy>
    30a8:	00003825 	move	a3,zero
    30ac:	44800000 	mtc1	zero,$f0
    30b0:	c7a80038 	lwc1	$f8,56(sp)
    30b4:	3c050602 	lui	a1,0x602
    30b8:	24190002 	li	t9,2
    30bc:	44070000 	mfc1	a3,$f0
    30c0:	afb90014 	sw	t9,20(sp)
    30c4:	24a503d8 	addiu	a1,a1,984
    30c8:	8fa40034 	lw	a0,52(sp)
    30cc:	3c063f80 	lui	a2,0x3f80
    30d0:	e7a80010 	swc1	$f8,16(sp)
    30d4:	0c000000 	jal	0 <EnIk_Destroy>
    30d8:	e7a00018 	swc1	$f0,24(sp)
    30dc:	24080003 	li	t0,3
    30e0:	24090002 	li	t1,2
    30e4:	ae0804c8 	sw	t0,1224(s0)
    30e8:	ae0904cc 	sw	t1,1228(s0)
    30ec:	8fa5004c 	lw	a1,76(sp)
    30f0:	02002025 	move	a0,s0
    30f4:	0c000000 	jal	0 <EnIk_Destroy>
    30f8:	24060004 	li	a2,4
    30fc:	02002025 	move	a0,s0
    3100:	0c000000 	jal	0 <EnIk_Destroy>
    3104:	8fa5004c 	lw	a1,76(sp)
    3108:	240a00ff 	li	t2,255
    310c:	a20a00c8 	sb	t2,200(s0)
    3110:	8fbf002c 	lw	ra,44(sp)
    3114:	8fb00028 	lw	s0,40(sp)
    3118:	27bd0048 	addiu	sp,sp,72
    311c:	03e00008 	jr	ra
    3120:	00000000 	nop

00003124 <func_80A77434>:
    3124:	27bdffe8 	addiu	sp,sp,-24
    3128:	afbf0014 	sw	ra,20(sp)
    312c:	afa5001c 	sw	a1,28(sp)
    3130:	240e0004 	li	t6,4
    3134:	240f0002 	li	t7,2
    3138:	ac8e04c8 	sw	t6,1224(a0)
    313c:	ac8f04cc 	sw	t7,1228(a0)
    3140:	0c000000 	jal	0 <EnIk_Destroy>
    3144:	afa40018 	sw	a0,24(sp)
    3148:	8fa40018 	lw	a0,24(sp)
    314c:	241800ff 	li	t8,255
    3150:	a09800c8 	sb	t8,200(a0)
    3154:	8fbf0014 	lw	ra,20(sp)
    3158:	27bd0018 	addiu	sp,sp,24
    315c:	03e00008 	jr	ra
    3160:	00000000 	nop

00003164 <func_80A77474>:
    3164:	afa50004 	sw	a1,4(sp)
    3168:	240e0005 	li	t6,5
    316c:	ac8e04c8 	sw	t6,1224(a0)
    3170:	ac8004cc 	sw	zero,1228(a0)
    3174:	03e00008 	jr	ra
    3178:	a08000c8 	sb	zero,200(a0)

0000317c <func_80A7748C>:
    317c:	27bdffe8 	addiu	sp,sp,-24
    3180:	afbf0014 	sw	ra,20(sp)
    3184:	afa40018 	sw	a0,24(sp)
    3188:	0c000000 	jal	0 <EnIk_Destroy>
    318c:	afa5001c 	sw	a1,28(sp)
    3190:	8fa40018 	lw	a0,24(sp)
    3194:	0c000000 	jal	0 <EnIk_Destroy>
    3198:	8fa5001c 	lw	a1,28(sp)
    319c:	8fbf0014 	lw	ra,20(sp)
    31a0:	27bd0018 	addiu	sp,sp,24
    31a4:	03e00008 	jr	ra
    31a8:	00000000 	nop

000031ac <func_80A774BC>:
    31ac:	27bdffe8 	addiu	sp,sp,-24
    31b0:	afbf0014 	sw	ra,20(sp)
    31b4:	afa40018 	sw	a0,24(sp)
    31b8:	0c000000 	jal	0 <EnIk_Destroy>
    31bc:	afa5001c 	sw	a1,28(sp)
    31c0:	8fa40018 	lw	a0,24(sp)
    31c4:	0c000000 	jal	0 <EnIk_Destroy>
    31c8:	8fa5001c 	lw	a1,28(sp)
    31cc:	8fa40018 	lw	a0,24(sp)
    31d0:	0c000000 	jal	0 <EnIk_Destroy>
    31d4:	8fa5001c 	lw	a1,28(sp)
    31d8:	8fbf0014 	lw	ra,20(sp)
    31dc:	27bd0018 	addiu	sp,sp,24
    31e0:	03e00008 	jr	ra
    31e4:	00000000 	nop

000031e8 <func_80A774F8>:
    31e8:	27bdffe8 	addiu	sp,sp,-24
    31ec:	afa40018 	sw	a0,24(sp)
    31f0:	afbf0014 	sw	ra,20(sp)
    31f4:	00a02025 	move	a0,a1
    31f8:	0c000000 	jal	0 <EnIk_Destroy>
    31fc:	24050004 	li	a1,4
    3200:	54400004 	bnezl	v0,3214 <func_80A774F8+0x2c>
    3204:	8fbf0014 	lw	ra,20(sp)
    3208:	0c000000 	jal	0 <EnIk_Destroy>
    320c:	8fa40018 	lw	a0,24(sp)
    3210:	8fbf0014 	lw	ra,20(sp)
    3214:	27bd0018 	addiu	sp,sp,24
    3218:	03e00008 	jr	ra
    321c:	00000000 	nop

00003220 <func_80A77530>:
    3220:	27bdffe8 	addiu	sp,sp,-24
    3224:	2401000d 	li	at,13
    3228:	afbf0014 	sw	ra,20(sp)
    322c:	afa40018 	sw	a0,24(sp)
    3230:	afa60020 	sw	a2,32(sp)
    3234:	10a10006 	beq	a1,at,3250 <func_80A77530+0x30>
    3238:	afa70024 	sw	a3,36(sp)
    323c:	2401001a 	li	at,26
    3240:	10a10003 	beq	a1,at,3250 <func_80A77530+0x30>
    3244:	2401001b 	li	at,27
    3248:	54a1000c 	bnel	a1,at,327c <func_80A77530+0x5c>
    324c:	8fbf0014 	lw	ra,20(sp)
    3250:	0c000000 	jal	0 <EnIk_Destroy>
    3254:	8fa4002c 	lw	a0,44(sp)
    3258:	3c0141f0 	lui	at,0x41f0
    325c:	44812000 	mtc1	at,$f4
    3260:	8fae0020 	lw	t6,32(sp)
    3264:	4600203e 	c.le.s	$f4,$f0
    3268:	00000000 	nop
    326c:	45020003 	bc1fl	327c <func_80A77530+0x5c>
    3270:	8fbf0014 	lw	ra,20(sp)
    3274:	adc00000 	sw	zero,0(t6)
    3278:	8fbf0014 	lw	ra,20(sp)
    327c:	27bd0018 	addiu	sp,sp,24
    3280:	00001025 	move	v0,zero
    3284:	03e00008 	jr	ra
    3288:	00000000 	nop

0000328c <func_80A7759C>:
    328c:	27bdff90 	addiu	sp,sp,-112
    3290:	afbf001c 	sw	ra,28(sp)
    3294:	afb00018 	sw	s0,24(sp)
    3298:	afa40070 	sw	a0,112(sp)
    329c:	afa50074 	sw	a1,116(sp)
    32a0:	afa60078 	sw	a2,120(sp)
    32a4:	afa7007c 	sw	a3,124(sp)
    32a8:	8c900000 	lw	s0,0(a0)
    32ac:	3c060000 	lui	a2,0x0
    32b0:	24c60000 	addiu	a2,a2,0
    32b4:	27a40058 	addiu	a0,sp,88
    32b8:	240700cf 	li	a3,207
    32bc:	0c000000 	jal	0 <EnIk_Destroy>
    32c0:	02002825 	move	a1,s0
    32c4:	8faf0074 	lw	t7,116(sp)
    32c8:	25f8fff3 	addiu	t8,t7,-13
    32cc:	2f01000f 	sltiu	at,t8,15
    32d0:	1020008d 	beqz	at,3508 <L80A77818>
    32d4:	0018c080 	sll	t8,t8,0x2
    32d8:	3c010000 	lui	at,0x0
    32dc:	00380821 	addu	at,at,t8
    32e0:	8c380000 	lw	t8,0(at)
    32e4:	03000008 	jr	t8
    32e8:	00000000 	nop

000032ec <L80A775FC>:
    32ec:	0c000000 	jal	0 <EnIk_Destroy>
    32f0:	8fa40080 	lw	a0,128(sp)
    32f4:	3c0141f0 	lui	at,0x41f0
    32f8:	44812000 	mtc1	at,$f4
    32fc:	3c08da38 	lui	t0,0xda38
    3300:	35080003 	ori	t0,t0,0x3
    3304:	4604003c 	c.lt.s	$f0,$f4
    3308:	02002025 	move	a0,s0
    330c:	3c050000 	lui	a1,0x0
    3310:	4500007d 	bc1f	3508 <L80A77818>
    3314:	00000000 	nop
    3318:	8e0202d0 	lw	v0,720(s0)
    331c:	24a50000 	addiu	a1,a1,0
    3320:	2406010b 	li	a2,267
    3324:	24590008 	addiu	t9,v0,8
    3328:	ae1902d0 	sw	t9,720(s0)
    332c:	ac480000 	sw	t0,0(v0)
    3330:	0c000000 	jal	0 <EnIk_Destroy>
    3334:	afa20050 	sw	v0,80(sp)
    3338:	8fa30050 	lw	v1,80(sp)
    333c:	3c0b0601 	lui	t3,0x601
    3340:	256b6d88 	addiu	t3,t3,28040
    3344:	ac620004 	sw	v0,4(v1)
    3348:	8e0202d0 	lw	v0,720(s0)
    334c:	3c0ade00 	lui	t2,0xde00
    3350:	24490008 	addiu	t1,v0,8
    3354:	ae0902d0 	sw	t1,720(s0)
    3358:	ac4b0004 	sw	t3,4(v0)
    335c:	1000006a 	b	3508 <L80A77818>
    3360:	ac4a0000 	sw	t2,0(v0)

00003364 <L80A77674>:
    3364:	8e0202d0 	lw	v0,720(s0)
    3368:	3c0dda38 	lui	t5,0xda38
    336c:	35ad0003 	ori	t5,t5,0x3
    3370:	244c0008 	addiu	t4,v0,8
    3374:	ae0c02d0 	sw	t4,720(s0)
    3378:	3c050000 	lui	a1,0x0
    337c:	ac4d0000 	sw	t5,0(v0)
    3380:	24a50000 	addiu	a1,a1,0
    3384:	02002025 	move	a0,s0
    3388:	24060112 	li	a2,274
    338c:	0c000000 	jal	0 <EnIk_Destroy>
    3390:	afa20048 	sw	v0,72(sp)
    3394:	8fa30048 	lw	v1,72(sp)
    3398:	3c180601 	lui	t8,0x601
    339c:	27186f88 	addiu	t8,t8,28552
    33a0:	ac620004 	sw	v0,4(v1)
    33a4:	8e0202d0 	lw	v0,720(s0)
    33a8:	3c0fde00 	lui	t7,0xde00
    33ac:	244e0008 	addiu	t6,v0,8
    33b0:	ae0e02d0 	sw	t6,720(s0)
    33b4:	ac580004 	sw	t8,4(v0)
    33b8:	10000053 	b	3508 <L80A77818>
    33bc:	ac4f0000 	sw	t7,0(v0)

000033c0 <L80A776D0>:
    33c0:	8e0202d0 	lw	v0,720(s0)
    33c4:	3c08da38 	lui	t0,0xda38
    33c8:	35080003 	ori	t0,t0,0x3
    33cc:	24590008 	addiu	t9,v0,8
    33d0:	ae1902d0 	sw	t9,720(s0)
    33d4:	3c050000 	lui	a1,0x0
    33d8:	ac480000 	sw	t0,0(v0)
    33dc:	24a50000 	addiu	a1,a1,0
    33e0:	02002025 	move	a0,s0
    33e4:	24060118 	li	a2,280
    33e8:	0c000000 	jal	0 <EnIk_Destroy>
    33ec:	afa20040 	sw	v0,64(sp)
    33f0:	8fa30040 	lw	v1,64(sp)
    33f4:	3c0b0601 	lui	t3,0x601
    33f8:	256b6ee8 	addiu	t3,t3,28392
    33fc:	ac620004 	sw	v0,4(v1)
    3400:	8e0202d0 	lw	v0,720(s0)
    3404:	3c0ade00 	lui	t2,0xde00
    3408:	24490008 	addiu	t1,v0,8
    340c:	ae0902d0 	sw	t1,720(s0)
    3410:	ac4b0004 	sw	t3,4(v0)
    3414:	1000003c 	b	3508 <L80A77818>
    3418:	ac4a0000 	sw	t2,0(v0)

0000341c <L80A7772C>:
    341c:	0c000000 	jal	0 <EnIk_Destroy>
    3420:	8fa40080 	lw	a0,128(sp)
    3424:	3c0141f0 	lui	at,0x41f0
    3428:	44813000 	mtc1	at,$f6
    342c:	3c0dda38 	lui	t5,0xda38
    3430:	35ad0003 	ori	t5,t5,0x3
    3434:	4606003c 	c.lt.s	$f0,$f6
    3438:	02002025 	move	a0,s0
    343c:	3c050000 	lui	a1,0x0
    3440:	45000031 	bc1f	3508 <L80A77818>
    3444:	00000000 	nop
    3448:	8e0202d0 	lw	v0,720(s0)
    344c:	24a50000 	addiu	a1,a1,0
    3450:	24060120 	li	a2,288
    3454:	244c0008 	addiu	t4,v0,8
    3458:	ae0c02d0 	sw	t4,720(s0)
    345c:	ac4d0000 	sw	t5,0(v0)
    3460:	0c000000 	jal	0 <EnIk_Destroy>
    3464:	afa20034 	sw	v0,52(sp)
    3468:	8fa30034 	lw	v1,52(sp)
    346c:	3c180601 	lui	t8,0x601
    3470:	27186be0 	addiu	t8,t8,27616
    3474:	ac620004 	sw	v0,4(v1)
    3478:	8e0202d0 	lw	v0,720(s0)
    347c:	3c0fde00 	lui	t7,0xde00
    3480:	244e0008 	addiu	t6,v0,8
    3484:	ae0e02d0 	sw	t6,720(s0)
    3488:	ac580004 	sw	t8,4(v0)
    348c:	1000001e 	b	3508 <L80A77818>
    3490:	ac4f0000 	sw	t7,0(v0)

00003494 <L80A777A4>:
    3494:	0c000000 	jal	0 <EnIk_Destroy>
    3498:	8fa40080 	lw	a0,128(sp)
    349c:	3c0141f0 	lui	at,0x41f0
    34a0:	44814000 	mtc1	at,$f8
    34a4:	3c08da38 	lui	t0,0xda38
    34a8:	35080003 	ori	t0,t0,0x3
    34ac:	4608003c 	c.lt.s	$f0,$f8
    34b0:	02002025 	move	a0,s0
    34b4:	3c050000 	lui	a1,0x0
    34b8:	45000013 	bc1f	3508 <L80A77818>
    34bc:	00000000 	nop
    34c0:	8e0202d0 	lw	v0,720(s0)
    34c4:	24a50000 	addiu	a1,a1,0
    34c8:	24060129 	li	a2,297
    34cc:	24590008 	addiu	t9,v0,8
    34d0:	ae1902d0 	sw	t9,720(s0)
    34d4:	ac480000 	sw	t0,0(v0)
    34d8:	0c000000 	jal	0 <EnIk_Destroy>
    34dc:	afa20028 	sw	v0,40(sp)
    34e0:	8fa30028 	lw	v1,40(sp)
    34e4:	3c0b0601 	lui	t3,0x601
    34e8:	256b6cd8 	addiu	t3,t3,27864
    34ec:	ac620004 	sw	v0,4(v1)
    34f0:	8e0202d0 	lw	v0,720(s0)
    34f4:	3c0ade00 	lui	t2,0xde00
    34f8:	24490008 	addiu	t1,v0,8
    34fc:	ae0902d0 	sw	t1,720(s0)
    3500:	ac4b0004 	sw	t3,4(v0)
    3504:	ac4a0000 	sw	t2,0(v0)

00003508 <L80A77818>:
    3508:	3c060000 	lui	a2,0x0
    350c:	24c60000 	addiu	a2,a2,0
    3510:	27a40058 	addiu	a0,sp,88
    3514:	02002825 	move	a1,s0
    3518:	0c000000 	jal	0 <EnIk_Destroy>
    351c:	24070130 	li	a3,304
    3520:	8fbf001c 	lw	ra,28(sp)
    3524:	8fb00018 	lw	s0,24(sp)
    3528:	27bd0070 	addiu	sp,sp,112
    352c:	03e00008 	jr	ra
    3530:	00000000 	nop

00003534 <func_80A77844>:
    3534:	27bdff98 	addiu	sp,sp,-104
    3538:	afbf002c 	sw	ra,44(sp)
    353c:	afb00028 	sw	s0,40(sp)
    3540:	afa40068 	sw	a0,104(sp)
    3544:	afa5006c 	sw	a1,108(sp)
    3548:	8cb00000 	lw	s0,0(a1)
    354c:	3c060000 	lui	a2,0x0
    3550:	24c60000 	addiu	a2,a2,0
    3554:	27a40044 	addiu	a0,sp,68
    3558:	24070142 	li	a3,322
    355c:	0c000000 	jal	0 <EnIk_Destroy>
    3560:	02002825 	move	a1,s0
    3564:	8fa40068 	lw	a0,104(sp)
    3568:	8fa5006c 	lw	a1,108(sp)
    356c:	0c000000 	jal	0 <EnIk_Destroy>
    3570:	00003025 	move	a2,zero
    3574:	0c000000 	jal	0 <EnIk_Destroy>
    3578:	02002025 	move	a0,s0
    357c:	0c000000 	jal	0 <EnIk_Destroy>
    3580:	02002025 	move	a0,s0
    3584:	8e0202c0 	lw	v0,704(s0)
    3588:	3c18db06 	lui	t8,0xdb06
    358c:	37180020 	ori	t8,t8,0x20
    3590:	244f0008 	addiu	t7,v0,8
    3594:	ae0f02c0 	sw	t7,704(s0)
    3598:	ac580000 	sw	t8,0(v0)
    359c:	2419001e 	li	t9,30
    35a0:	2408001e 	li	t0,30
    35a4:	afa80014 	sw	t0,20(sp)
    35a8:	afb90010 	sw	t9,16(sp)
    35ac:	afa00018 	sw	zero,24(sp)
    35b0:	02002025 	move	a0,s0
    35b4:	240500f5 	li	a1,245
    35b8:	240600e1 	li	a2,225
    35bc:	2407009b 	li	a3,155
    35c0:	0c000000 	jal	0 <EnIk_Destroy>
    35c4:	afa20040 	sw	v0,64(sp)
    35c8:	8fa30040 	lw	v1,64(sp)
    35cc:	3c0adb06 	lui	t2,0xdb06
    35d0:	354a0024 	ori	t2,t2,0x24
    35d4:	ac620004 	sw	v0,4(v1)
    35d8:	8e0202c0 	lw	v0,704(s0)
    35dc:	240b0028 	li	t3,40
    35e0:	02002025 	move	a0,s0
    35e4:	24490008 	addiu	t1,v0,8
    35e8:	ae0902c0 	sw	t1,704(s0)
    35ec:	ac4a0000 	sw	t2,0(v0)
    35f0:	afa00018 	sw	zero,24(sp)
    35f4:	afa00014 	sw	zero,20(sp)
    35f8:	afab0010 	sw	t3,16(sp)
    35fc:	240500ff 	li	a1,255
    3600:	24060028 	li	a2,40
    3604:	00003825 	move	a3,zero
    3608:	0c000000 	jal	0 <EnIk_Destroy>
    360c:	afa2003c 	sw	v0,60(sp)
    3610:	8fa3003c 	lw	v1,60(sp)
    3614:	3c0ddb06 	lui	t5,0xdb06
    3618:	35ad0028 	ori	t5,t5,0x28
    361c:	ac620004 	sw	v0,4(v1)
    3620:	8e0202c0 	lw	v0,704(s0)
    3624:	240e0014 	li	t6,20
    3628:	240f0028 	li	t7,40
    362c:	244c0008 	addiu	t4,v0,8
    3630:	ae0c02c0 	sw	t4,704(s0)
    3634:	ac4d0000 	sw	t5,0(v0)
    3638:	2418001e 	li	t8,30
    363c:	afb80018 	sw	t8,24(sp)
    3640:	afaf0014 	sw	t7,20(sp)
    3644:	afae0010 	sw	t6,16(sp)
    3648:	02002025 	move	a0,s0
    364c:	240500ff 	li	a1,255
    3650:	240600ff 	li	a2,255
    3654:	240700ff 	li	a3,255
    3658:	0c000000 	jal	0 <EnIk_Destroy>
    365c:	afa20038 	sw	v0,56(sp)
    3660:	8fa30038 	lw	v1,56(sp)
    3664:	3c190000 	lui	t9,0x0
    3668:	3c080000 	lui	t0,0x0
    366c:	ac620004 	sw	v0,4(v1)
    3670:	8fa30068 	lw	v1,104(sp)
    3674:	25080000 	addiu	t0,t0,0
    3678:	27390000 	addiu	t9,t9,0
    367c:	2462014c 	addiu	v0,v1,332
    3680:	8c450004 	lw	a1,4(v0)
    3684:	8c460020 	lw	a2,32(v0)
    3688:	90470002 	lbu	a3,2(v0)
    368c:	afa80014 	sw	t0,20(sp)
    3690:	afb90010 	sw	t9,16(sp)
    3694:	8fa4006c 	lw	a0,108(sp)
    3698:	0c000000 	jal	0 <EnIk_Destroy>
    369c:	afa30018 	sw	v1,24(sp)
    36a0:	3c060000 	lui	a2,0x0
    36a4:	24c60000 	addiu	a2,a2,0
    36a8:	27a40044 	addiu	a0,sp,68
    36ac:	02002825 	move	a1,s0
    36b0:	0c000000 	jal	0 <EnIk_Destroy>
    36b4:	24070159 	li	a3,345
    36b8:	8fbf002c 	lw	ra,44(sp)
    36bc:	8fb00028 	lw	s0,40(sp)
    36c0:	27bd0068 	addiu	sp,sp,104
    36c4:	03e00008 	jr	ra
    36c8:	00000000 	nop

000036cc <func_80A779DC>:
    36cc:	27bdffd8 	addiu	sp,sp,-40
    36d0:	afb00018 	sw	s0,24(sp)
    36d4:	00808025 	move	s0,a0
    36d8:	afbf001c 	sw	ra,28(sp)
    36dc:	00a03025 	move	a2,a1
    36e0:	00a02025 	move	a0,a1
    36e4:	24050004 	li	a1,4
    36e8:	0c000000 	jal	0 <EnIk_Destroy>
    36ec:	afa6002c 	sw	a2,44(sp)
    36f0:	10400035 	beqz	v0,37c8 <L80A77AB4+0x24>
    36f4:	8fa6002c 	lw	a2,44(sp)
    36f8:	944e0000 	lhu	t6,0(v0)
    36fc:	afae0020 	sw	t6,32(sp)
    3700:	8e0304d0 	lw	v1,1232(s0)
    3704:	25d8ffff 	addiu	t8,t6,-1
    3708:	2f010007 	sltiu	at,t8,7
    370c:	51c3002f 	beql	t6,v1,37cc <L80A77AB4+0x28>
    3710:	8fbf001c 	lw	ra,28(sp)
    3714:	10200028 	beqz	at,37b8 <L80A77AB4+0x14>
    3718:	3c040000 	lui	a0,0x0
    371c:	0018c080 	sll	t8,t8,0x2
    3720:	3c010000 	lui	at,0x0
    3724:	00380821 	addu	at,at,t8
    3728:	8c380000 	lw	t8,0(at)
    372c:	03000008 	jr	t8
    3730:	00000000 	nop

00003734 <L80A77A44>:
    3734:	0c000000 	jal	0 <EnIk_Destroy>
    3738:	02002025 	move	a0,s0
    373c:	10000021 	b	37c4 <L80A77AB4+0x20>
    3740:	8fb90020 	lw	t9,32(sp)

00003744 <L80A77A54>:
    3744:	02002025 	move	a0,s0
    3748:	0c000000 	jal	0 <EnIk_Destroy>
    374c:	00c02825 	move	a1,a2
    3750:	1000001c 	b	37c4 <L80A77AB4+0x20>
    3754:	8fb90020 	lw	t9,32(sp)

00003758 <L80A77A68>:
    3758:	0c000000 	jal	0 <EnIk_Destroy>
    375c:	02002025 	move	a0,s0
    3760:	10000018 	b	37c4 <L80A77AB4+0x20>
    3764:	8fb90020 	lw	t9,32(sp)

00003768 <L80A77A78>:
    3768:	02002025 	move	a0,s0
    376c:	0c000000 	jal	0 <EnIk_Destroy>
    3770:	00c02825 	move	a1,a2
    3774:	10000013 	b	37c4 <L80A77AB4+0x20>
    3778:	8fb90020 	lw	t9,32(sp)

0000377c <L80A77A8C>:
    377c:	02002025 	move	a0,s0
    3780:	0c000000 	jal	0 <EnIk_Destroy>
    3784:	00c02825 	move	a1,a2
    3788:	1000000e 	b	37c4 <L80A77AB4+0x20>
    378c:	8fb90020 	lw	t9,32(sp)

00003790 <L80A77AA0>:
    3790:	02002025 	move	a0,s0
    3794:	0c000000 	jal	0 <EnIk_Destroy>
    3798:	00c02825 	move	a1,a2
    379c:	10000009 	b	37c4 <L80A77AB4+0x20>
    37a0:	8fb90020 	lw	t9,32(sp)

000037a4 <L80A77AB4>:
    37a4:	02002025 	move	a0,s0
    37a8:	0c000000 	jal	0 <EnIk_Destroy>
    37ac:	00c02825 	move	a1,a2
    37b0:	10000004 	b	37c4 <L80A77AB4+0x20>
    37b4:	8fb90020 	lw	t9,32(sp)
    37b8:	0c000000 	jal	0 <EnIk_Destroy>
    37bc:	24840000 	addiu	a0,a0,0
    37c0:	8fb90020 	lw	t9,32(sp)
    37c4:	ae1904d0 	sw	t9,1232(s0)
    37c8:	8fbf001c 	lw	ra,28(sp)
    37cc:	8fb00018 	lw	s0,24(sp)
    37d0:	27bd0028 	addiu	sp,sp,40
    37d4:	03e00008 	jr	ra
    37d8:	00000000 	nop

000037dc <func_80A77AEC>:
    37dc:	27bdffe8 	addiu	sp,sp,-24
    37e0:	afbf0014 	sw	ra,20(sp)
    37e4:	0c000000 	jal	0 <EnIk_Destroy>
    37e8:	00000000 	nop
    37ec:	8fbf0014 	lw	ra,20(sp)
    37f0:	27bd0018 	addiu	sp,sp,24
    37f4:	03e00008 	jr	ra
    37f8:	00000000 	nop

000037fc <func_80A77B0C>:
    37fc:	27bdffe8 	addiu	sp,sp,-24
    3800:	afbf0014 	sw	ra,20(sp)
    3804:	afa40018 	sw	a0,24(sp)
    3808:	0c000000 	jal	0 <EnIk_Destroy>
    380c:	afa5001c 	sw	a1,28(sp)
    3810:	8fa40018 	lw	a0,24(sp)
    3814:	0c000000 	jal	0 <EnIk_Destroy>
    3818:	8fa5001c 	lw	a1,28(sp)
    381c:	8fbf0014 	lw	ra,20(sp)
    3820:	27bd0018 	addiu	sp,sp,24
    3824:	03e00008 	jr	ra
    3828:	00000000 	nop

0000382c <func_80A77B3C>:
    382c:	27bdffd8 	addiu	sp,sp,-40
    3830:	afbf001c 	sw	ra,28(sp)
    3834:	afb00018 	sw	s0,24(sp)
    3838:	00808025 	move	s0,a0
    383c:	0c000000 	jal	0 <EnIk_Destroy>
    3840:	afa5002c 	sw	a1,44(sp)
    3844:	afa20024 	sw	v0,36(sp)
    3848:	0c000000 	jal	0 <EnIk_Destroy>
    384c:	02002025 	move	a0,s0
    3850:	02002025 	move	a0,s0
    3854:	0c000000 	jal	0 <EnIk_Destroy>
    3858:	8fa5002c 	lw	a1,44(sp)
    385c:	02002025 	move	a0,s0
    3860:	0c000000 	jal	0 <EnIk_Destroy>
    3864:	8fa5002c 	lw	a1,44(sp)
    3868:	02002025 	move	a0,s0
    386c:	8fa5002c 	lw	a1,44(sp)
    3870:	0c000000 	jal	0 <EnIk_Destroy>
    3874:	8fa60024 	lw	a2,36(sp)
    3878:	8fbf001c 	lw	ra,28(sp)
    387c:	8fb00018 	lw	s0,24(sp)
    3880:	27bd0028 	addiu	sp,sp,40
    3884:	03e00008 	jr	ra
    3888:	00000000 	nop

0000388c <EnIk_Update>:
    388c:	27bdffe8 	addiu	sp,sp,-24
    3890:	afbf0014 	sw	ra,20(sp)
    3894:	8c8204c8 	lw	v0,1224(a0)
    3898:	04400008 	bltz	v0,38bc <EnIk_Update+0x30>
    389c:	28410006 	slti	at,v0,6
    38a0:	10200006 	beqz	at,38bc <EnIk_Update+0x30>
    38a4:	00027080 	sll	t6,v0,0x2
    38a8:	3c030000 	lui	v1,0x0
    38ac:	006e1821 	addu	v1,v1,t6
    38b0:	8c630000 	lw	v1,0(v1)
    38b4:	14600006 	bnez	v1,38d0 <EnIk_Update+0x44>
    38b8:	00000000 	nop
    38bc:	3c040000 	lui	a0,0x0
    38c0:	0c000000 	jal	0 <EnIk_Destroy>
    38c4:	24840000 	addiu	a0,a0,0
    38c8:	10000004 	b	38dc <EnIk_Update+0x50>
    38cc:	8fbf0014 	lw	ra,20(sp)
    38d0:	0060f809 	jalr	v1
    38d4:	00000000 	nop
    38d8:	8fbf0014 	lw	ra,20(sp)
    38dc:	27bd0018 	addiu	sp,sp,24
    38e0:	03e00008 	jr	ra
    38e4:	00000000 	nop

000038e8 <func_80A77BF8>:
    38e8:	27bdffe8 	addiu	sp,sp,-24
    38ec:	24010011 	li	at,17
    38f0:	afbf0014 	sw	ra,20(sp)
    38f4:	10a10008 	beq	a1,at,3918 <func_80A77BF8+0x30>
    38f8:	afa40018 	sw	a0,24(sp)
    38fc:	2401001d 	li	at,29
    3900:	10a10014 	beq	a1,at,3954 <func_80A77BF8+0x6c>
    3904:	2401001e 	li	at,30
    3908:	50a10013 	beql	a1,at,3958 <func_80A77BF8+0x70>
    390c:	acc00000 	sw	zero,0(a2)
    3910:	10000012 	b	395c <func_80A77BF8+0x74>
    3914:	8fbf0014 	lw	ra,20(sp)
    3918:	8fa4002c 	lw	a0,44(sp)
    391c:	3c0142f0 	lui	at,0x42f0
    3920:	44812000 	mtc1	at,$f4
    3924:	c4800164 	lwc1	$f0,356(a0)
    3928:	8fa50018 	lw	a1,24(sp)
    392c:	4604003c 	c.lt.s	$f0,$f4
    3930:	00000000 	nop
    3934:	45000003 	bc1f	3944 <func_80A77BF8+0x5c>
    3938:	00000000 	nop
    393c:	10000006 	b	3958 <func_80A77BF8+0x70>
    3940:	acc00000 	sw	zero,0(a2)
    3944:	0c000000 	jal	0 <EnIk_Destroy>
    3948:	00e03025 	move	a2,a3
    394c:	10000003 	b	395c <func_80A77BF8+0x74>
    3950:	8fbf0014 	lw	ra,20(sp)
    3954:	acc00000 	sw	zero,0(a2)
    3958:	8fbf0014 	lw	ra,20(sp)
    395c:	27bd0018 	addiu	sp,sp,24
    3960:	00001025 	move	v0,zero
    3964:	03e00008 	jr	ra
    3968:	00000000 	nop

0000396c <func_80A77C7C>:
    396c:	27bdff98 	addiu	sp,sp,-104
    3970:	afbf001c 	sw	ra,28(sp)
    3974:	afb00018 	sw	s0,24(sp)
    3978:	afa40068 	sw	a0,104(sp)
    397c:	afa5006c 	sw	a1,108(sp)
    3980:	afa60070 	sw	a2,112(sp)
    3984:	afa70074 	sw	a3,116(sp)
    3988:	8c900000 	lw	s0,0(a0)
    398c:	3c060000 	lui	a2,0x0
    3990:	24c60000 	addiu	a2,a2,0
    3994:	27a40050 	addiu	a0,sp,80
    3998:	2407023b 	li	a3,571
    399c:	0c000000 	jal	0 <EnIk_Destroy>
    39a0:	02002825 	move	a1,s0
    39a4:	8faf006c 	lw	t7,108(sp)
    39a8:	25f8fff4 	addiu	t8,t7,-12
    39ac:	2f010010 	sltiu	at,t8,16
    39b0:	10200078 	beqz	at,3b94 <L80A77EA4>
    39b4:	0018c080 	sll	t8,t8,0x2
    39b8:	3c010000 	lui	at,0x0
    39bc:	00380821 	addu	at,at,t8
    39c0:	8c380000 	lw	t8,0(at)
    39c4:	03000008 	jr	t8
    39c8:	00000000 	nop

000039cc <L80A77CDC>:
    39cc:	8e0202d0 	lw	v0,720(s0)
    39d0:	3c08da38 	lui	t0,0xda38
    39d4:	35080003 	ori	t0,t0,0x3
    39d8:	24590008 	addiu	t9,v0,8
    39dc:	ae1902d0 	sw	t9,720(s0)
    39e0:	3c050000 	lui	a1,0x0
    39e4:	ac480000 	sw	t0,0(v0)
    39e8:	24a50000 	addiu	a1,a1,0
    39ec:	02002025 	move	a0,s0
    39f0:	2406023f 	li	a2,575
    39f4:	0c000000 	jal	0 <EnIk_Destroy>
    39f8:	afa2004c 	sw	v0,76(sp)
    39fc:	8fa3004c 	lw	v1,76(sp)
    3a00:	3c0b0601 	lui	t3,0x601
    3a04:	256b6d88 	addiu	t3,t3,28040
    3a08:	ac620004 	sw	v0,4(v1)
    3a0c:	8e0202d0 	lw	v0,720(s0)
    3a10:	3c0ade00 	lui	t2,0xde00
    3a14:	24490008 	addiu	t1,v0,8
    3a18:	ae0902d0 	sw	t1,720(s0)
    3a1c:	ac4b0004 	sw	t3,4(v0)
    3a20:	1000005c 	b	3b94 <L80A77EA4>
    3a24:	ac4a0000 	sw	t2,0(v0)

00003a28 <L80A77D38>:
    3a28:	8e0202d0 	lw	v0,720(s0)
    3a2c:	3c0dda38 	lui	t5,0xda38
    3a30:	35ad0003 	ori	t5,t5,0x3
    3a34:	244c0008 	addiu	t4,v0,8
    3a38:	ae0c02d0 	sw	t4,720(s0)
    3a3c:	3c050000 	lui	a1,0x0
    3a40:	ac4d0000 	sw	t5,0(v0)
    3a44:	24a50000 	addiu	a1,a1,0
    3a48:	02002025 	move	a0,s0
    3a4c:	24060245 	li	a2,581
    3a50:	0c000000 	jal	0 <EnIk_Destroy>
    3a54:	afa20044 	sw	v0,68(sp)
    3a58:	8fa30044 	lw	v1,68(sp)
    3a5c:	3c180601 	lui	t8,0x601
    3a60:	27186f88 	addiu	t8,t8,28552
    3a64:	ac620004 	sw	v0,4(v1)
    3a68:	8e0202d0 	lw	v0,720(s0)
    3a6c:	3c0fde00 	lui	t7,0xde00
    3a70:	244e0008 	addiu	t6,v0,8
    3a74:	ae0e02d0 	sw	t6,720(s0)
    3a78:	ac580004 	sw	t8,4(v0)
    3a7c:	10000045 	b	3b94 <L80A77EA4>
    3a80:	ac4f0000 	sw	t7,0(v0)

00003a84 <L80A77D94>:
    3a84:	8e0202d0 	lw	v0,720(s0)
    3a88:	3c08da38 	lui	t0,0xda38
    3a8c:	35080003 	ori	t0,t0,0x3
    3a90:	24590008 	addiu	t9,v0,8
    3a94:	ae1902d0 	sw	t9,720(s0)
    3a98:	3c050000 	lui	a1,0x0
    3a9c:	ac480000 	sw	t0,0(v0)
    3aa0:	24a50000 	addiu	a1,a1,0
    3aa4:	02002025 	move	a0,s0
    3aa8:	2406024b 	li	a2,587
    3aac:	0c000000 	jal	0 <EnIk_Destroy>
    3ab0:	afa2003c 	sw	v0,60(sp)
    3ab4:	8fa3003c 	lw	v1,60(sp)
    3ab8:	3c0b0601 	lui	t3,0x601
    3abc:	256b6ee8 	addiu	t3,t3,28392
    3ac0:	ac620004 	sw	v0,4(v1)
    3ac4:	8e0202d0 	lw	v0,720(s0)
    3ac8:	3c0ade00 	lui	t2,0xde00
    3acc:	24490008 	addiu	t1,v0,8
    3ad0:	ae0902d0 	sw	t1,720(s0)
    3ad4:	ac4b0004 	sw	t3,4(v0)
    3ad8:	1000002e 	b	3b94 <L80A77EA4>
    3adc:	ac4a0000 	sw	t2,0(v0)

00003ae0 <L80A77DF0>:
    3ae0:	8e0202d0 	lw	v0,720(s0)
    3ae4:	3c0dda38 	lui	t5,0xda38
    3ae8:	35ad0003 	ori	t5,t5,0x3
    3aec:	244c0008 	addiu	t4,v0,8
    3af0:	ae0c02d0 	sw	t4,720(s0)
    3af4:	3c050000 	lui	a1,0x0
    3af8:	ac4d0000 	sw	t5,0(v0)
    3afc:	24a50000 	addiu	a1,a1,0
    3b00:	02002025 	move	a0,s0
    3b04:	24060251 	li	a2,593
    3b08:	0c000000 	jal	0 <EnIk_Destroy>
    3b0c:	afa20034 	sw	v0,52(sp)
    3b10:	8fa30034 	lw	v1,52(sp)
    3b14:	3c180601 	lui	t8,0x601
    3b18:	27186be0 	addiu	t8,t8,27616
    3b1c:	ac620004 	sw	v0,4(v1)
    3b20:	8e0202d0 	lw	v0,720(s0)
    3b24:	3c0fde00 	lui	t7,0xde00
    3b28:	244e0008 	addiu	t6,v0,8
    3b2c:	ae0e02d0 	sw	t6,720(s0)
    3b30:	ac580004 	sw	t8,4(v0)
    3b34:	10000017 	b	3b94 <L80A77EA4>
    3b38:	ac4f0000 	sw	t7,0(v0)

00003b3c <L80A77E4C>:
    3b3c:	8e0202d0 	lw	v0,720(s0)
    3b40:	3c08da38 	lui	t0,0xda38
    3b44:	35080003 	ori	t0,t0,0x3
    3b48:	24590008 	addiu	t9,v0,8
    3b4c:	ae1902d0 	sw	t9,720(s0)
    3b50:	3c050000 	lui	a1,0x0
    3b54:	ac480000 	sw	t0,0(v0)
    3b58:	24a50000 	addiu	a1,a1,0
    3b5c:	02002025 	move	a0,s0
    3b60:	24060257 	li	a2,599
    3b64:	0c000000 	jal	0 <EnIk_Destroy>
    3b68:	afa2002c 	sw	v0,44(sp)
    3b6c:	8fa3002c 	lw	v1,44(sp)
    3b70:	3c0b0601 	lui	t3,0x601
    3b74:	256b6cd8 	addiu	t3,t3,27864
    3b78:	ac620004 	sw	v0,4(v1)
    3b7c:	8e0202d0 	lw	v0,720(s0)
    3b80:	3c0ade00 	lui	t2,0xde00
    3b84:	24490008 	addiu	t1,v0,8
    3b88:	ae0902d0 	sw	t1,720(s0)
    3b8c:	ac4b0004 	sw	t3,4(v0)
    3b90:	ac4a0000 	sw	t2,0(v0)

00003b94 <L80A77EA4>:
    3b94:	3c060000 	lui	a2,0x0
    3b98:	24c60000 	addiu	a2,a2,0
    3b9c:	27a40050 	addiu	a0,sp,80
    3ba0:	02002825 	move	a1,s0
    3ba4:	0c000000 	jal	0 <EnIk_Destroy>
    3ba8:	2407025c 	li	a3,604
    3bac:	8fbf001c 	lw	ra,28(sp)
    3bb0:	8fb00018 	lw	s0,24(sp)
    3bb4:	27bd0068 	addiu	sp,sp,104
    3bb8:	03e00008 	jr	ra
    3bbc:	00000000 	nop

00003bc0 <func_80A77ED0>:
    3bc0:	afa40000 	sw	a0,0(sp)
    3bc4:	03e00008 	jr	ra
    3bc8:	afa50004 	sw	a1,4(sp)

00003bcc <func_80A77EDC>:
    3bcc:	27bdff98 	addiu	sp,sp,-104
    3bd0:	afbf002c 	sw	ra,44(sp)
    3bd4:	afb00028 	sw	s0,40(sp)
    3bd8:	afa40068 	sw	a0,104(sp)
    3bdc:	afa5006c 	sw	a1,108(sp)
    3be0:	8cb00000 	lw	s0,0(a1)
    3be4:	3c060000 	lui	a2,0x0
    3be8:	24c60000 	addiu	a2,a2,0
    3bec:	27a40044 	addiu	a0,sp,68
    3bf0:	24070276 	li	a3,630
    3bf4:	0c000000 	jal	0 <EnIk_Destroy>
    3bf8:	02002825 	move	a1,s0
    3bfc:	8fa40068 	lw	a0,104(sp)
    3c00:	8fa5006c 	lw	a1,108(sp)
    3c04:	0c000000 	jal	0 <EnIk_Destroy>
    3c08:	00003025 	move	a2,zero
    3c0c:	0c000000 	jal	0 <EnIk_Destroy>
    3c10:	02002025 	move	a0,s0
    3c14:	0c000000 	jal	0 <EnIk_Destroy>
    3c18:	02002025 	move	a0,s0
    3c1c:	8e0202c0 	lw	v0,704(s0)
    3c20:	3c18db06 	lui	t8,0xdb06
    3c24:	37180020 	ori	t8,t8,0x20
    3c28:	244f0008 	addiu	t7,v0,8
    3c2c:	ae0f02c0 	sw	t7,704(s0)
    3c30:	ac580000 	sw	t8,0(v0)
    3c34:	2419001e 	li	t9,30
    3c38:	2408001e 	li	t0,30
    3c3c:	afa80014 	sw	t0,20(sp)
    3c40:	afb90010 	sw	t9,16(sp)
    3c44:	afa00018 	sw	zero,24(sp)
    3c48:	02002025 	move	a0,s0
    3c4c:	240500f5 	li	a1,245
    3c50:	240600e1 	li	a2,225
    3c54:	2407009b 	li	a3,155
    3c58:	0c000000 	jal	0 <EnIk_Destroy>
    3c5c:	afa20040 	sw	v0,64(sp)
    3c60:	8fa30040 	lw	v1,64(sp)
    3c64:	3c0adb06 	lui	t2,0xdb06
    3c68:	354a0024 	ori	t2,t2,0x24
    3c6c:	ac620004 	sw	v0,4(v1)
    3c70:	8e0202c0 	lw	v0,704(s0)
    3c74:	240b0028 	li	t3,40
    3c78:	02002025 	move	a0,s0
    3c7c:	24490008 	addiu	t1,v0,8
    3c80:	ae0902c0 	sw	t1,704(s0)
    3c84:	ac4a0000 	sw	t2,0(v0)
    3c88:	afa00018 	sw	zero,24(sp)
    3c8c:	afa00014 	sw	zero,20(sp)
    3c90:	afab0010 	sw	t3,16(sp)
    3c94:	240500ff 	li	a1,255
    3c98:	24060028 	li	a2,40
    3c9c:	00003825 	move	a3,zero
    3ca0:	0c000000 	jal	0 <EnIk_Destroy>
    3ca4:	afa2003c 	sw	v0,60(sp)
    3ca8:	8fa3003c 	lw	v1,60(sp)
    3cac:	3c0ddb06 	lui	t5,0xdb06
    3cb0:	35ad0028 	ori	t5,t5,0x28
    3cb4:	ac620004 	sw	v0,4(v1)
    3cb8:	8e0202c0 	lw	v0,704(s0)
    3cbc:	240e0014 	li	t6,20
    3cc0:	240f0028 	li	t7,40
    3cc4:	244c0008 	addiu	t4,v0,8
    3cc8:	ae0c02c0 	sw	t4,704(s0)
    3ccc:	ac4d0000 	sw	t5,0(v0)
    3cd0:	2418001e 	li	t8,30
    3cd4:	afb80018 	sw	t8,24(sp)
    3cd8:	afaf0014 	sw	t7,20(sp)
    3cdc:	afae0010 	sw	t6,16(sp)
    3ce0:	02002025 	move	a0,s0
    3ce4:	240500ff 	li	a1,255
    3ce8:	240600ff 	li	a2,255
    3cec:	240700ff 	li	a3,255
    3cf0:	0c000000 	jal	0 <EnIk_Destroy>
    3cf4:	afa20038 	sw	v0,56(sp)
    3cf8:	8fa30038 	lw	v1,56(sp)
    3cfc:	3c190000 	lui	t9,0x0
    3d00:	3c080000 	lui	t0,0x0
    3d04:	ac620004 	sw	v0,4(v1)
    3d08:	8fa30068 	lw	v1,104(sp)
    3d0c:	25080000 	addiu	t0,t0,0
    3d10:	27390000 	addiu	t9,t9,0
    3d14:	2462014c 	addiu	v0,v1,332
    3d18:	8c450004 	lw	a1,4(v0)
    3d1c:	8c460020 	lw	a2,32(v0)
    3d20:	90470002 	lbu	a3,2(v0)
    3d24:	afa80014 	sw	t0,20(sp)
    3d28:	afb90010 	sw	t9,16(sp)
    3d2c:	8fa4006c 	lw	a0,108(sp)
    3d30:	0c000000 	jal	0 <EnIk_Destroy>
    3d34:	afa30018 	sw	v1,24(sp)
    3d38:	3c060000 	lui	a2,0x0
    3d3c:	24c60000 	addiu	a2,a2,0
    3d40:	27a40044 	addiu	a0,sp,68
    3d44:	02002825 	move	a1,s0
    3d48:	0c000000 	jal	0 <EnIk_Destroy>
    3d4c:	2407028d 	li	a3,653
    3d50:	8fbf002c 	lw	ra,44(sp)
    3d54:	8fb00028 	lw	s0,40(sp)
    3d58:	27bd0068 	addiu	sp,sp,104
    3d5c:	03e00008 	jr	ra
    3d60:	00000000 	nop

00003d64 <EnIk_Draw>:
    3d64:	27bdffe8 	addiu	sp,sp,-24
    3d68:	afbf0014 	sw	ra,20(sp)
    3d6c:	8c8204cc 	lw	v0,1228(a0)
    3d70:	04400008 	bltz	v0,3d94 <EnIk_Draw+0x30>
    3d74:	28410003 	slti	at,v0,3
    3d78:	10200006 	beqz	at,3d94 <EnIk_Draw+0x30>
    3d7c:	00027080 	sll	t6,v0,0x2
    3d80:	3c030000 	lui	v1,0x0
    3d84:	006e1821 	addu	v1,v1,t6
    3d88:	8c630000 	lw	v1,0(v1)
    3d8c:	14600006 	bnez	v1,3da8 <EnIk_Draw+0x44>
    3d90:	00000000 	nop
    3d94:	3c040000 	lui	a0,0x0
    3d98:	0c000000 	jal	0 <EnIk_Destroy>
    3d9c:	24840000 	addiu	a0,a0,0
    3da0:	10000004 	b	3db4 <EnIk_Draw+0x50>
    3da4:	8fbf0014 	lw	ra,20(sp)
    3da8:	0060f809 	jalr	v1
    3dac:	00000000 	nop
    3db0:	8fbf0014 	lw	ra,20(sp)
    3db4:	27bd0018 	addiu	sp,sp,24
    3db8:	03e00008 	jr	ra
    3dbc:	00000000 	nop

00003dc0 <func_80A780D0>:
    3dc0:	27bdffe0 	addiu	sp,sp,-32
    3dc4:	afbf001c 	sw	ra,28(sp)
    3dc8:	afb00018 	sw	s0,24(sp)
    3dcc:	8486001c 	lh	a2,28(a0)
    3dd0:	00808025 	move	s0,a0
    3dd4:	3c0e0000 	lui	t6,0x0
    3dd8:	14c00014 	bnez	a2,3e2c <func_80A780D0+0x6c>
    3ddc:	00000000 	nop
    3de0:	95ce0eda 	lhu	t6,3802(t6)
    3de4:	3c180000 	lui	t8,0x0
    3de8:	27180000 	addiu	t8,t8,0
    3dec:	31cf0800 	andi	t7,t6,0x800
    3df0:	15e00009 	bnez	t7,3e18 <func_80A780D0+0x58>
    3df4:	3c190000 	lui	t9,0x0
    3df8:	27390000 	addiu	t9,t9,0
    3dfc:	3c053c23 	lui	a1,0x3c23
    3e00:	ac980130 	sw	t8,304(a0)
    3e04:	ac990134 	sw	t9,308(a0)
    3e08:	0c000000 	jal	0 <EnIk_Destroy>
    3e0c:	34a5d70a 	ori	a1,a1,0xd70a
    3e10:	10000006 	b	3e2c <func_80A780D0+0x6c>
    3e14:	8606001c 	lh	a2,28(s0)
    3e18:	0c000000 	jal	0 <EnIk_Destroy>
    3e1c:	02002025 	move	a0,s0
    3e20:	0c000000 	jal	0 <EnIk_Destroy>
    3e24:	00000000 	nop
    3e28:	8606001c 	lh	a2,28(s0)
    3e2c:	3c040000 	lui	a0,0x0
    3e30:	24840000 	addiu	a0,a0,0
    3e34:	0c000000 	jal	0 <EnIk_Destroy>
    3e38:	00c02825 	move	a1,a2
    3e3c:	8fbf001c 	lw	ra,28(sp)
    3e40:	8fb00018 	lw	s0,24(sp)
    3e44:	27bd0020 	addiu	sp,sp,32
    3e48:	03e00008 	jr	ra
    3e4c:	00000000 	nop

00003e50 <func_80A78160>:
    3e50:	27bdffe8 	addiu	sp,sp,-24
    3e54:	afbf0014 	sw	ra,20(sp)
    3e58:	afa5001c 	sw	a1,28(sp)
    3e5c:	8c980004 	lw	t8,4(a0)
    3e60:	3c0e0000 	lui	t6,0x0
    3e64:	3c0f0000 	lui	t7,0x0
    3e68:	3c020000 	lui	v0,0x0
    3e6c:	25ce0000 	addiu	t6,t6,0
    3e70:	25ef0000 	addiu	t7,t7,0
    3e74:	37190005 	ori	t9,t8,0x5
    3e78:	24420000 	addiu	v0,v0,0
    3e7c:	ac8e0130 	sw	t6,304(a0)
    3e80:	ac8f0134 	sw	t7,308(a0)
    3e84:	ac990004 	sw	t9,4(a0)
    3e88:	94480eda 	lhu	t0,3802(v0)
    3e8c:	3c053c44 	lui	a1,0x3c44
    3e90:	34a59ba6 	ori	a1,a1,0x9ba6
    3e94:	35090800 	ori	t1,t0,0x800
    3e98:	a4490eda 	sh	t1,3802(v0)
    3e9c:	0c000000 	jal	0 <EnIk_Destroy>
    3ea0:	afa40018 	sw	a0,24(sp)
    3ea4:	0c000000 	jal	0 <EnIk_Destroy>
    3ea8:	8fa40018 	lw	a0,24(sp)
    3eac:	8fbf0014 	lw	ra,20(sp)
    3eb0:	27bd0018 	addiu	sp,sp,24
    3eb4:	03e00008 	jr	ra
    3eb8:	00000000 	nop

00003ebc <func_80A781CC>:
    3ebc:	27bdffe8 	addiu	sp,sp,-24
    3ec0:	afbf0014 	sw	ra,20(sp)
    3ec4:	afa40018 	sw	a0,24(sp)
    3ec8:	afa5001c 	sw	a1,28(sp)
    3ecc:	0c000000 	jal	0 <EnIk_Destroy>
    3ed0:	00a02025 	move	a0,a1
    3ed4:	1440001a 	bnez	v0,3f40 <func_80A781CC+0x84>
    3ed8:	3c0e0000 	lui	t6,0x0
    3edc:	8fa20018 	lw	v0,24(sp)
    3ee0:	3c0f0000 	lui	t7,0x0
    3ee4:	25ce0000 	addiu	t6,t6,0
    3ee8:	25ef0000 	addiu	t7,t7,0
    3eec:	3c050200 	lui	a1,0x200
    3ef0:	ac4e0130 	sw	t6,304(v0)
    3ef4:	ac4f0134 	sw	t7,308(v0)
    3ef8:	8fa4001c 	lw	a0,28(sp)
    3efc:	0c000000 	jal	0 <EnIk_Destroy>
    3f00:	24a53f80 	addiu	a1,a1,16256
    3f04:	24180001 	li	t8,1
    3f08:	3c010000 	lui	at,0x0
    3f0c:	3c053c23 	lui	a1,0x3c23
    3f10:	a0381414 	sb	t8,5140(at)
    3f14:	34a5d70a 	ori	a1,a1,0xd70a
    3f18:	0c000000 	jal	0 <EnIk_Destroy>
    3f1c:	8fa40018 	lw	a0,24(sp)
    3f20:	3c020000 	lui	v0,0x0
    3f24:	24420000 	addiu	v0,v0,0
    3f28:	94590eda 	lhu	t9,3802(v0)
    3f2c:	8fa40018 	lw	a0,24(sp)
    3f30:	8fa5001c 	lw	a1,28(sp)
    3f34:	37281000 	ori	t0,t9,0x1000
    3f38:	0c000000 	jal	0 <EnIk_Destroy>
    3f3c:	a4480eda 	sh	t0,3802(v0)
    3f40:	8fbf0014 	lw	ra,20(sp)
    3f44:	27bd0018 	addiu	sp,sp,24
    3f48:	03e00008 	jr	ra
    3f4c:	00000000 	nop

00003f50 <EnIk_Init>:
    3f50:	27bdffd0 	addiu	sp,sp,-48
    3f54:	afbf002c 	sw	ra,44(sp)
    3f58:	afb00028 	sw	s0,40(sp)
    3f5c:	afa50034 	sw	a1,52(sp)
    3f60:	8482001c 	lh	v0,28(a0)
    3f64:	00808025 	move	s0,a0
    3f68:	3c0f0000 	lui	t7,0x0
    3f6c:	304e00ff 	andi	t6,v0,0xff
    3f70:	15c00005 	bnez	t6,3f88 <EnIk_Init+0x38>
    3f74:	3043ff00 	andi	v1,v0,0xff00
    3f78:	95ef0eda 	lhu	t7,3802(t7)
    3f7c:	31f81000 	andi	t8,t7,0x1000
    3f80:	17000007 	bnez	t8,3fa0 <EnIk_Init+0x50>
    3f84:	00000000 	nop
    3f88:	10600009 	beqz	v1,3fb0 <EnIk_Init+0x60>
    3f8c:	8fa40034 	lw	a0,52(sp)
    3f90:	0c000000 	jal	0 <EnIk_Destroy>
    3f94:	00032a03 	sra	a1,v1,0x8
    3f98:	10400005 	beqz	v0,3fb0 <EnIk_Init+0x60>
    3f9c:	00000000 	nop
    3fa0:	0c000000 	jal	0 <EnIk_Destroy>
    3fa4:	02002025 	move	a0,s0
    3fa8:	1000001b 	b	4018 <EnIk_Init+0xc8>
    3fac:	8fbf002c 	lw	ra,44(sp)
    3fb0:	3c060000 	lui	a2,0x0
    3fb4:	24c60000 	addiu	a2,a2,0
    3fb8:	260400b4 	addiu	a0,s0,180
    3fbc:	24050000 	li	a1,0
    3fc0:	0c000000 	jal	0 <EnIk_Destroy>
    3fc4:	3c0741f0 	lui	a3,0x41f0
    3fc8:	3c060602 	lui	a2,0x602
    3fcc:	3c070601 	lui	a3,0x601
    3fd0:	26190190 	addiu	t9,s0,400
    3fd4:	26080244 	addiu	t0,s0,580
    3fd8:	2409001e 	li	t1,30
    3fdc:	afa90018 	sw	t1,24(sp)
    3fe0:	afa80014 	sw	t0,20(sp)
    3fe4:	afb90010 	sw	t9,16(sp)
    3fe8:	24e7c114 	addiu	a3,a3,-16108
    3fec:	24c6e178 	addiu	a2,a2,-7816
    3ff0:	8fa40034 	lw	a0,52(sp)
    3ff4:	0c000000 	jal	0 <EnIk_Destroy>
    3ff8:	2605014c 	addiu	a1,s0,332
    3ffc:	02002025 	move	a0,s0
    4000:	0c000000 	jal	0 <EnIk_Destroy>
    4004:	8fa50034 	lw	a1,52(sp)
    4008:	02002025 	move	a0,s0
    400c:	0c000000 	jal	0 <EnIk_Destroy>
    4010:	8fa50034 	lw	a1,52(sp)
    4014:	8fbf002c 	lw	ra,44(sp)
    4018:	8fb00028 	lw	s0,40(sp)
    401c:	27bd0030 	addiu	sp,sp,48
    4020:	03e00008 	jr	ra
    4024:	00000000 	nop
	...
