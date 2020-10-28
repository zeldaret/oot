
build/src/overlays/actors/ovl_Bg_Jya_Cobra/z_bg_jya_cobra.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808958F0>:
       0:	44866000 	mtc1	a2,$f12
       4:	c4a40008 	lwc1	$f4,8(a1)
       8:	44877000 	mtc1	a3,$f14
       c:	c4a80000 	lwc1	$f8,0(a1)
      10:	460c2182 	mul.s	$f6,$f4,$f12
      14:	00000000 	nop
      18:	460e4282 	mul.s	$f10,$f8,$f14
      1c:	460a3400 	add.s	$f16,$f6,$f10
      20:	e4900000 	swc1	$f16,0(a0)
      24:	c4b20004 	lwc1	$f18,4(a1)
      28:	e4920004 	swc1	$f18,4(a0)
      2c:	c4a40008 	lwc1	$f4,8(a1)
      30:	c4a60000 	lwc1	$f6,0(a1)
      34:	460e2202 	mul.s	$f8,$f4,$f14
      38:	00000000 	nop
      3c:	460c3282 	mul.s	$f10,$f6,$f12
      40:	460a4401 	sub.s	$f16,$f8,$f10
      44:	03e00008 	jr	ra
      48:	e4900008 	swc1	$f16,8(a0)

0000004c <func_8089593C>:
      4c:	27bdffc8 	addiu	sp,sp,-56
      50:	afbf0024 	sw	ra,36(sp)
      54:	afb00020 	sw	s0,32(sp)
      58:	afa5003c 	sw	a1,60(sp)
      5c:	00808025 	move	s0,a0
      60:	afa60040 	sw	a2,64(sp)
      64:	afa00030 	sw	zero,48(sp)
      68:	0c000000 	jal	0 <func_808958F0>
      6c:	00e02825 	move	a1,a3
      70:	8fa40040 	lw	a0,64(sp)
      74:	0c000000 	jal	0 <func_808958F0>
      78:	27a50030 	addiu	a1,sp,48
      7c:	8fa4003c 	lw	a0,60(sp)
      80:	02003025 	move	a2,s0
      84:	8fa70030 	lw	a3,48(sp)
      88:	0c000000 	jal	0 <func_808958F0>
      8c:	24850810 	addiu	a1,a0,2064
      90:	24010032 	li	at,50
      94:	1441000a 	bne	v0,at,c0 <func_8089593C+0x74>
      98:	ae02014c 	sw	v0,332(s0)
      9c:	860e001c 	lh	t6,28(s0)
      a0:	3c040000 	lui	a0,0x0
      a4:	3c050000 	lui	a1,0x0
      a8:	86070000 	lh	a3,0(s0)
      ac:	24a50000 	addiu	a1,a1,0
      b0:	24840000 	addiu	a0,a0,0
      b4:	240600f7 	li	a2,247
      b8:	0c000000 	jal	0 <func_808958F0>
      bc:	afae0010 	sw	t6,16(sp)
      c0:	8fbf0024 	lw	ra,36(sp)
      c4:	8fb00020 	lw	s0,32(sp)
      c8:	27bd0038 	addiu	sp,sp,56
      cc:	03e00008 	jr	ra
      d0:	00000000 	nop

000000d4 <func_808959C4>:
      d4:	27bdffc8 	addiu	sp,sp,-56
      d8:	00a03025 	move	a2,a1
      dc:	00802825 	move	a1,a0
      e0:	afbf0034 	sw	ra,52(sp)
      e4:	afa40038 	sw	a0,56(sp)
      e8:	c4a40024 	lwc1	$f4,36(a1)
      ec:	3c014264 	lui	at,0x4264
      f0:	44814000 	mtc1	at,$f8
      f4:	e7a40010 	swc1	$f4,16(sp)
      f8:	c4a60028 	lwc1	$f6,40(a1)
      fc:	240e0006 	li	t6,6
     100:	24c41c24 	addiu	a0,a2,7204
     104:	46083280 	add.s	$f10,$f6,$f8
     108:	240700b7 	li	a3,183
     10c:	e7aa0014 	swc1	$f10,20(sp)
     110:	c4b0002c 	lwc1	$f16,44(a1)
     114:	afa50038 	sw	a1,56(sp)
     118:	afae0028 	sw	t6,40(sp)
     11c:	afa00024 	sw	zero,36(sp)
     120:	afa00020 	sw	zero,32(sp)
     124:	afa0001c 	sw	zero,28(sp)
     128:	0c000000 	jal	0 <func_808958F0>
     12c:	e7b00018 	swc1	$f16,24(sp)
     130:	8fa50038 	lw	a1,56(sp)
     134:	3c040000 	lui	a0,0x0
     138:	8caf011c 	lw	t7,284(a1)
     13c:	55e0000d 	bnezl	t7,174 <func_808959C4+0xa0>
     140:	8fbf0034 	lw	ra,52(sp)
     144:	0c000000 	jal	0 <func_808958F0>
     148:	24840000 	addiu	a0,a0,0
     14c:	3c040000 	lui	a0,0x0
     150:	3c050000 	lui	a1,0x0
     154:	24a50000 	addiu	a1,a1,0
     158:	24840000 	addiu	a0,a0,0
     15c:	0c000000 	jal	0 <func_808958F0>
     160:	2406010e 	li	a2,270
     164:	3c040000 	lui	a0,0x0
     168:	0c000000 	jal	0 <func_808958F0>
     16c:	24840000 	addiu	a0,a0,0
     170:	8fbf0034 	lw	ra,52(sp)
     174:	27bd0038 	addiu	sp,sp,56
     178:	03e00008 	jr	ra
     17c:	00000000 	nop

00000180 <func_80895A70>:
     180:	27bdffc0 	addiu	sp,sp,-64
     184:	afbf0014 	sw	ra,20(sp)
     188:	8482001c 	lh	v0,28(a0)
     18c:	00803025 	move	a2,a0
     190:	8c830118 	lw	v1,280(a0)
     194:	30420003 	andi	v0,v0,0x3
     198:	10400007 	beqz	v0,1b8 <func_80895A70+0x38>
     19c:	24010001 	li	at,1
     1a0:	1041000d 	beq	v0,at,1d8 <func_80895A70+0x58>
     1a4:	24010002 	li	at,2
     1a8:	50410011 	beql	v0,at,1f0 <func_80895A70+0x70>
     1ac:	8c620168 	lw	v0,360(v1)
     1b0:	10000011 	b	1f8 <func_80895A70+0x78>
     1b4:	8fa20034 	lw	v0,52(sp)
     1b8:	8cc3011c 	lw	v1,284(a2)
     1bc:	1060004b 	beqz	v1,2ec <func_80895A70+0x16c>
     1c0:	00601025 	move	v0,v1
     1c4:	8c6e0130 	lw	t6,304(v1)
     1c8:	55c0000c 	bnezl	t6,1fc <func_80895A70+0x7c>
     1cc:	44802000 	mtc1	zero,$f4
     1d0:	10000046 	b	2ec <func_80895A70+0x16c>
     1d4:	acc0011c 	sw	zero,284(a2)
     1d8:	8c620164 	lw	v0,356(v1)
     1dc:	54400007 	bnezl	v0,1fc <func_80895A70+0x7c>
     1e0:	44802000 	mtc1	zero,$f4
     1e4:	10000042 	b	2f0 <func_80895A70+0x170>
     1e8:	8fbf0014 	lw	ra,20(sp)
     1ec:	8c620168 	lw	v0,360(v1)
     1f0:	5040003f 	beqzl	v0,2f0 <func_80895A70+0x170>
     1f4:	8fbf0014 	lw	ra,20(sp)
     1f8:	44802000 	mtc1	zero,$f4
     1fc:	c4c6018c 	lwc1	$f6,396(a2)
     200:	240f0001 	li	t7,1
     204:	2444027c 	addiu	a0,v0,636
     208:	4604303e 	c.le.s	$f6,$f4
     20c:	24c50180 	addiu	a1,a2,384
     210:	45020004 	bc1fl	224 <func_80895A70+0xa4>
     214:	a04002ae 	sb	zero,686(v0)
     218:	10000034 	b	2ec <func_80895A70+0x16c>
     21c:	a04f02ae 	sb	t7,686(v0)
     220:	a04002ae 	sb	zero,686(v0)
     224:	afa60040 	sw	a2,64(sp)
     228:	afa40020 	sw	a0,32(sp)
     22c:	0c000000 	jal	0 <func_808958F0>
     230:	afa20034 	sw	v0,52(sp)
     234:	8fa60040 	lw	a2,64(sp)
     238:	3c010000 	lui	at,0x0
     23c:	c4300000 	lwc1	$f16,0(at)
     240:	84d800b6 	lh	t8,182(a2)
     244:	00002825 	move	a1,zero
     248:	44984000 	mtc1	t8,$f8
     24c:	00000000 	nop
     250:	468042a0 	cvt.s.w	$f10,$f8
     254:	46105302 	mul.s	$f12,$f10,$f16
     258:	0c000000 	jal	0 <func_808958F0>
     25c:	00000000 	nop
     260:	8fa60040 	lw	a2,64(sp)
     264:	3c0a0000 	lui	t2,0x0
     268:	3c010000 	lui	at,0x0
     26c:	84d9001c 	lh	t9,28(a2)
     270:	c4260000 	lwc1	$f6,0(at)
     274:	24050001 	li	a1,1
     278:	33280003 	andi	t0,t9,0x3
     27c:	00084840 	sll	t1,t0,0x1
     280:	01495021 	addu	t2,t2,t1
     284:	854a0000 	lh	t2,0(t2)
     288:	448a9000 	mtc1	t2,$f18
     28c:	00000000 	nop
     290:	46809120 	cvt.s.w	$f4,$f18
     294:	46062302 	mul.s	$f12,$f4,$f6
     298:	0c000000 	jal	0 <func_808958F0>
     29c:	00000000 	nop
     2a0:	44804000 	mtc1	zero,$f8
     2a4:	44805000 	mtc1	zero,$f10
     2a8:	8fa60040 	lw	a2,64(sp)
     2ac:	3c01452f 	lui	at,0x452f
     2b0:	e7a80028 	swc1	$f8,40(sp)
     2b4:	e7aa002c 	swc1	$f10,44(sp)
     2b8:	44819000 	mtc1	at,$f18
     2bc:	c4d00190 	lwc1	$f16,400(a2)
     2c0:	8fa20034 	lw	v0,52(sp)
     2c4:	27a40028 	addiu	a0,sp,40
     2c8:	46128102 	mul.s	$f4,$f16,$f18
     2cc:	24450288 	addiu	a1,v0,648
     2d0:	afa5001c 	sw	a1,28(sp)
     2d4:	0c000000 	jal	0 <func_808958F0>
     2d8:	e7a40030 	swc1	$f4,48(sp)
     2dc:	8fa5001c 	lw	a1,28(sp)
     2e0:	8fa40020 	lw	a0,32(sp)
     2e4:	0c000000 	jal	0 <func_808958F0>
     2e8:	00a03025 	move	a2,a1
     2ec:	8fbf0014 	lw	ra,20(sp)
     2f0:	27bd0040 	addiu	sp,sp,64
     2f4:	03e00008 	jr	ra
     2f8:	00000000 	nop

000002fc <func_80895BEC>:
     2fc:	27bdffc0 	addiu	sp,sp,-64
     300:	afbf001c 	sw	ra,28(sp)
     304:	afb00018 	sw	s0,24(sp)
     308:	8cae1c44 	lw	t6,7236(a1)
     30c:	00808025 	move	s0,a0
     310:	afae003c 	sw	t6,60(sp)
     314:	0c000000 	jal	0 <func_808958F0>
     318:	84840170 	lh	a0,368(a0)
     31c:	e7a00024 	swc1	$f0,36(sp)
     320:	0c000000 	jal	0 <func_808958F0>
     324:	86040170 	lh	a0,368(s0)
     328:	44070000 	mfc1	a3,$f0
     32c:	27a4002c 	addiu	a0,sp,44
     330:	26050174 	addiu	a1,s0,372
     334:	0c000000 	jal	0 <func_808958F0>
     338:	8fa60024 	lw	a2,36(sp)
     33c:	c6040024 	lwc1	$f4,36(s0)
     340:	c7a6002c 	lwc1	$f6,44(sp)
     344:	8fa2003c 	lw	v0,60(sp)
     348:	46062200 	add.s	$f8,$f4,$f6
     34c:	e4480024 	swc1	$f8,36(v0)
     350:	c7b00030 	lwc1	$f16,48(sp)
     354:	c60a0028 	lwc1	$f10,40(s0)
     358:	46105480 	add.s	$f18,$f10,$f16
     35c:	e4520028 	swc1	$f18,40(v0)
     360:	c7a60034 	lwc1	$f6,52(sp)
     364:	c604002c 	lwc1	$f4,44(s0)
     368:	46062200 	add.s	$f8,$f4,$f6
     36c:	e448002c 	swc1	$f8,44(v0)
     370:	8fbf001c 	lw	ra,28(sp)
     374:	8fb00018 	lw	s0,24(sp)
     378:	27bd0040 	addiu	sp,sp,64
     37c:	03e00008 	jr	ra
     380:	00000000 	nop

00000384 <func_80895C74>:
     384:	27bdffd8 	addiu	sp,sp,-40
     388:	afbf0014 	sw	ra,20(sp)
     38c:	afa5002c 	sw	a1,44(sp)
     390:	8482001c 	lh	v0,28(a0)
     394:	24010002 	li	at,2
     398:	00803825 	move	a3,a0
     39c:	30430003 	andi	v1,v0,0x3
     3a0:	14610016 	bne	v1,at,3fc <func_80895C74+0x78>
     3a4:	8c880118 	lw	t0,280(a0)
     3a8:	51000015 	beqzl	t0,400 <func_80895C74+0x7c>
     3ac:	3c013f80 	lui	at,0x3f80
     3b0:	9102015c 	lbu	v0,348(t0)
     3b4:	24e4018c 	addiu	a0,a3,396
     3b8:	3c063d4c 	lui	a2,0x3d4c
     3bc:	304e0004 	andi	t6,v0,0x4
     3c0:	11c00003 	beqz	t6,3d0 <func_80895C74+0x4c>
     3c4:	304f0001 	andi	t7,v0,0x1
     3c8:	55e0000d 	bnezl	t7,400 <func_80895C74+0x7c>
     3cc:	3c013f80 	lui	at,0x3f80
     3d0:	44800000 	mtc1	zero,$f0
     3d4:	34c6cccd 	ori	a2,a2,0xcccd
     3d8:	afa30018 	sw	v1,24(sp)
     3dc:	44050000 	mfc1	a1,$f0
     3e0:	afa70028 	sw	a3,40(sp)
     3e4:	0c000000 	jal	0 <func_808958F0>
     3e8:	afa80020 	sw	t0,32(sp)
     3ec:	8fa30018 	lw	v1,24(sp)
     3f0:	8fa70028 	lw	a3,40(sp)
     3f4:	10000029 	b	49c <func_80895C74+0x118>
     3f8:	8fa80020 	lw	t0,32(sp)
     3fc:	3c013f80 	lui	at,0x3f80
     400:	44812000 	mtc1	at,$f4
     404:	3c180000 	lui	t8,0x0
     408:	0303c021 	addu	t8,t8,v1
     40c:	e4e4018c 	swc1	$f4,396(a3)
     410:	93180000 	lbu	t8,0(t8)
     414:	00034840 	sll	t1,v1,0x1
     418:	3c0a0000 	lui	t2,0x0
     41c:	1300001f 	beqz	t8,49c <func_80895C74+0x118>
     420:	01495021 	addu	t2,t2,t1
     424:	84f900b6 	lh	t9,182(a3)
     428:	854a0000 	lh	t2,0(t2)
     42c:	032a1023 	subu	v0,t9,t2
     430:	00021400 	sll	v0,v0,0x10
     434:	00021403 	sra	v0,v0,0x10
     438:	04430005 	bgezl	v0,450 <func_80895C74+0xcc>
     43c:	28412000 	slti	at,v0,8192
     440:	00021023 	negu	v0,v0
     444:	00021400 	sll	v0,v0,0x10
     448:	00021403 	sra	v0,v0,0x10
     44c:	28412000 	slti	at,v0,8192
     450:	10200012 	beqz	at,49c <func_80895C74+0x118>
     454:	24018000 	li	at,-32768
     458:	10410010 	beq	v0,at,49c <func_80895C74+0x118>
     45c:	244be000 	addiu	t3,v0,-8192
     460:	448b3000 	mtc1	t3,$f6
     464:	3c013940 	lui	at,0x3940
     468:	44815000 	mtc1	at,$f10
     46c:	46803220 	cvt.s.w	$f8,$f6
     470:	c4f2018c 	lwc1	$f18,396(a3)
     474:	44800000 	mtc1	zero,$f0
     478:	460a4402 	mul.s	$f16,$f8,$f10
     47c:	46109100 	add.s	$f4,$f18,$f16
     480:	e4e4018c 	swc1	$f4,396(a3)
     484:	c4e6018c 	lwc1	$f6,396(a3)
     488:	4600303c 	c.lt.s	$f6,$f0
     48c:	00000000 	nop
     490:	45020003 	bc1fl	4a0 <func_80895C74+0x11c>
     494:	3c014264 	lui	at,0x4264
     498:	e4e0018c 	swc1	$f0,396(a3)
     49c:	3c014264 	lui	at,0x4264
     4a0:	44819000 	mtc1	at,$f18
     4a4:	c4ea0028 	lwc1	$f10,40(a3)
     4a8:	c4e80024 	lwc1	$f8,36(a3)
     4ac:	c4e4002c 	lwc1	$f4,44(a3)
     4b0:	46125400 	add.s	$f16,$f10,$f18
     4b4:	e4e80180 	swc1	$f8,384(a3)
     4b8:	e4e40188 	swc1	$f4,392(a3)
     4bc:	14600005 	bnez	v1,4d4 <func_80895C74+0x150>
     4c0:	e4f00184 	swc1	$f16,388(a3)
     4c4:	3c010000 	lui	at,0x0
     4c8:	c4260000 	lwc1	$f6,0(at)
     4cc:	10000048 	b	5f0 <func_80895C74+0x26c>
     4d0:	e4e60190 	swc1	$f6,400(a3)
     4d4:	24010001 	li	at,1
     4d8:	14610025 	bne	v1,at,570 <func_80895C74+0x1ec>
     4dc:	24e40190 	addiu	a0,a3,400
     4e0:	84e300b6 	lh	v1,182(a3)
     4e4:	3c010000 	lui	at,0x0
     4e8:	c4200000 	lwc1	$f0,0(at)
     4ec:	24018000 	li	at,-32768
     4f0:	00611021 	addu	v0,v1,at
     4f4:	00021400 	sll	v0,v0,0x10
     4f8:	00021403 	sra	v0,v0,0x10
     4fc:	28410500 	slti	at,v0,1280
     500:	10200006 	beqz	at,51c <func_80895C74+0x198>
     504:	3c063d23 	lui	a2,0x3d23
     508:	2841fb01 	slti	at,v0,-1279
     50c:	14200003 	bnez	at,51c <func_80895C74+0x198>
     510:	3c010000 	lui	at,0x0
     514:	10000011 	b	55c <func_80895C74+0x1d8>
     518:	c4200000 	lwc1	$f0,0(at)
     51c:	2462c000 	addiu	v0,v1,-16384
     520:	00021400 	sll	v0,v0,0x10
     524:	00021403 	sra	v0,v0,0x10
     528:	28410500 	slti	at,v0,1280
     52c:	1020000b 	beqz	at,55c <func_80895C74+0x1d8>
     530:	2841fb01 	slti	at,v0,-1279
     534:	5420000a 	bnezl	at,560 <func_80895C74+0x1dc>
     538:	44050000 	mfc1	a1,$f0
     53c:	51000008 	beqzl	t0,560 <func_80895C74+0x1dc>
     540:	44050000 	mfc1	a1,$f0
     544:	910c015c 	lbu	t4,348(t0)
     548:	3c010000 	lui	at,0x0
     54c:	318d0004 	andi	t5,t4,0x4
     550:	51a00003 	beqzl	t5,560 <func_80895C74+0x1dc>
     554:	44050000 	mfc1	a1,$f0
     558:	c4200000 	lwc1	$f0,0(at)
     55c:	44050000 	mfc1	a1,$f0
     560:	0c000000 	jal	0 <func_808958F0>
     564:	34c6d70a 	ori	a2,a2,0xd70a
     568:	10000022 	b	5f4 <func_80895C74+0x270>
     56c:	8fbf0014 	lw	ra,20(sp)
     570:	24010002 	li	at,2
     574:	1461001e 	bne	v1,at,5f0 <func_80895C74+0x26c>
     578:	24e40190 	addiu	a0,a3,400
     57c:	84e300b6 	lh	v1,182(a3)
     580:	3c010000 	lui	at,0x0
     584:	c4200000 	lwc1	$f0,0(at)
     588:	24018000 	li	at,-32768
     58c:	00611021 	addu	v0,v1,at
     590:	00021400 	sll	v0,v0,0x10
     594:	00021403 	sra	v0,v0,0x10
     598:	28410500 	slti	at,v0,1280
     59c:	10200006 	beqz	at,5b8 <func_80895C74+0x234>
     5a0:	3c063d23 	lui	a2,0x3d23
     5a4:	2841fb01 	slti	at,v0,-1279
     5a8:	14200003 	bnez	at,5b8 <func_80895C74+0x234>
     5ac:	3c010000 	lui	at,0x0
     5b0:	1000000c 	b	5e4 <func_80895C74+0x260>
     5b4:	c4200000 	lwc1	$f0,0(at)
     5b8:	3c01ffff 	lui	at,0xffff
     5bc:	34214000 	ori	at,at,0x4000
     5c0:	00611021 	addu	v0,v1,at
     5c4:	00021400 	sll	v0,v0,0x10
     5c8:	00021403 	sra	v0,v0,0x10
     5cc:	28410500 	slti	at,v0,1280
     5d0:	10200004 	beqz	at,5e4 <func_80895C74+0x260>
     5d4:	2841fb01 	slti	at,v0,-1279
     5d8:	14200002 	bnez	at,5e4 <func_80895C74+0x260>
     5dc:	3c010000 	lui	at,0x0
     5e0:	c4200000 	lwc1	$f0,0(at)
     5e4:	44050000 	mfc1	a1,$f0
     5e8:	0c000000 	jal	0 <func_808958F0>
     5ec:	34c6d70a 	ori	a2,a2,0xd70a
     5f0:	8fbf0014 	lw	ra,20(sp)
     5f4:	27bd0028 	addiu	sp,sp,40
     5f8:	03e00008 	jr	ra
     5fc:	00000000 	nop

00000600 <func_80895EF0>:
     600:	27bdff20 	addiu	sp,sp,-224
     604:	afb20048 	sw	s2,72(sp)
     608:	afb00040 	sw	s0,64(sp)
     60c:	249201a3 	addiu	s2,a0,419
     610:	2401fff0 	li	at,-16
     614:	00808025 	move	s0,a0
     618:	afbf0064 	sw	ra,100(sp)
     61c:	02419024 	and	s2,s2,at
     620:	afbe0060 	sw	s8,96(sp)
     624:	afb7005c 	sw	s7,92(sp)
     628:	afb60058 	sw	s6,88(sp)
     62c:	afb50054 	sw	s5,84(sp)
     630:	afb40050 	sw	s4,80(sp)
     634:	afb3004c 	sw	s3,76(sp)
     638:	afb10044 	sw	s1,68(sp)
     63c:	f7bc0038 	sdc1	$f28,56(sp)
     640:	f7ba0030 	sdc1	$f26,48(sp)
     644:	f7b80028 	sdc1	$f24,40(sp)
     648:	f7b60020 	sdc1	$f22,32(sp)
     64c:	f7b40018 	sdc1	$f20,24(sp)
     650:	02402025 	move	a0,s2
     654:	24051000 	li	a1,4096
     658:	0c000000 	jal	0 <func_808958F0>
     65c:	00003025 	move	a2,zero
     660:	3c010000 	lui	at,0x0
     664:	c42c0000 	lwc1	$f12,0(at)
     668:	0c000000 	jal	0 <func_808958F0>
     66c:	00002825 	move	a1,zero
     670:	860e001c 	lh	t6,28(s0)
     674:	31cf0003 	andi	t7,t6,0x3
     678:	55e00007 	bnezl	t7,698 <func_80895EF0+0x98>
     67c:	860200b6 	lh	v0,182(s0)
     680:	860200b6 	lh	v0,182(s0)
     684:	24424000 	addiu	v0,v0,16384
     688:	00021400 	sll	v0,v0,0x10
     68c:	10000005 	b	6a4 <func_80895EF0+0xa4>
     690:	00021403 	sra	v0,v0,0x10
     694:	860200b6 	lh	v0,182(s0)
     698:	2442c000 	addiu	v0,v0,-16384
     69c:	00021400 	sll	v0,v0,0x10
     6a0:	00021403 	sra	v0,v0,0x10
     6a4:	44822000 	mtc1	v0,$f4
     6a8:	3c010000 	lui	at,0x0
     6ac:	c4280000 	lwc1	$f8,0(at)
     6b0:	468021a0 	cvt.s.w	$f6,$f4
     6b4:	24050001 	li	a1,1
     6b8:	46083302 	mul.s	$f12,$f6,$f8
     6bc:	0c000000 	jal	0 <func_808958F0>
     6c0:	00000000 	nop
     6c4:	3c010000 	lui	at,0x0
     6c8:	c42c0000 	lwc1	$f12,0(at)
     6cc:	24070001 	li	a3,1
     6d0:	44066000 	mfc1	a2,$f12
     6d4:	0c000000 	jal	0 <func_808958F0>
     6d8:	46006386 	mov.s	$f14,$f12
     6dc:	3c013f00 	lui	at,0x3f00
     6e0:	4481e000 	mtc1	at,$f28
     6e4:	3c0142b0 	lui	at,0x42b0
     6e8:	4481d000 	mtc1	at,$f26
     6ec:	3c014248 	lui	at,0x4248
     6f0:	4481c000 	mtc1	at,$f24
     6f4:	3c013f00 	lui	at,0x3f00
     6f8:	4481b000 	mtc1	at,$f22
     6fc:	3c010000 	lui	at,0x0
     700:	3c140000 	lui	s4,0x0
     704:	3c170000 	lui	s7,0x0
     708:	3c100000 	lui	s0,0x0
     70c:	26100000 	addiu	s0,s0,0
     710:	26f70000 	addiu	s7,s7,0
     714:	26940000 	addiu	s4,s4,0
     718:	c4340000 	lwc1	$f20,0(at)
     71c:	27be00c8 	addiu	s8,sp,200
     720:	24150002 	li	s5,2
     724:	2413000b 	li	s3,11
     728:	2411ffc0 	li	s1,-64
     72c:	02e02025 	move	a0,s7
     730:	02802825 	move	a1,s4
     734:	0c000000 	jal	0 <func_808958F0>
     738:	27a600d4 	addiu	a2,sp,212
     73c:	c7a200d4 	lwc1	$f2,212(sp)
     740:	c7ac00d8 	lwc1	$f12,216(sp)
     744:	c7ae00dc 	lwc1	$f14,220(sp)
     748:	461c1082 	mul.s	$f2,$f2,$f28
     74c:	0000b025 	move	s6,zero
     750:	461c6302 	mul.s	$f12,$f12,$f28
     754:	00000000 	nop
     758:	461c7382 	mul.s	$f14,$f14,$f28
     75c:	e7a200d4 	swc1	$f2,212(sp)
     760:	e7ac00d8 	swc1	$f12,216(sp)
     764:	e7ae00dc 	swc1	$f14,220(sp)
     768:	44965000 	mtc1	s6,$f10
     76c:	c7a200d4 	lwc1	$f2,212(sp)
     770:	c7ac00d8 	lwc1	$f12,216(sp)
     774:	46805020 	cvt.s.w	$f0,$f10
     778:	c6900000 	lwc1	$f16,0(s4)
     77c:	c7ae00dc 	lwc1	$f14,220(sp)
     780:	c6860004 	lwc1	$f6,4(s4)
     784:	03c02025 	move	a0,s8
     788:	27a500bc 	addiu	a1,sp,188
     78c:	46001482 	mul.s	$f18,$f2,$f0
     790:	46128100 	add.s	$f4,$f16,$f18
     794:	46006202 	mul.s	$f8,$f12,$f0
     798:	c6900008 	lwc1	$f16,8(s4)
     79c:	46007482 	mul.s	$f18,$f14,$f0
     7a0:	e7a400c8 	swc1	$f4,200(sp)
     7a4:	46083280 	add.s	$f10,$f6,$f8
     7a8:	46128100 	add.s	$f4,$f16,$f18
     7ac:	e7aa00cc 	swc1	$f10,204(sp)
     7b0:	0c000000 	jal	0 <func_808958F0>
     7b4:	e7a400d0 	swc1	$f4,208(sp)
     7b8:	c7a600bc 	lwc1	$f6,188(sp)
     7bc:	c7a400c4 	lwc1	$f4,196(sp)
     7c0:	26d60001 	addiu	s6,s6,1
     7c4:	46183200 	add.s	$f8,$f6,$f24
     7c8:	00004825 	move	t1,zero
     7cc:	4604d181 	sub.s	$f6,$f26,$f4
     7d0:	46144282 	mul.s	$f10,$f8,$f20
     7d4:	00000000 	nop
     7d8:	46143202 	mul.s	$f8,$f6,$f20
     7dc:	46165400 	add.s	$f16,$f10,$f22
     7e0:	46164280 	add.s	$f10,$f8,$f22
     7e4:	4600848d 	trunc.w.s	$f18,$f16
     7e8:	4600540d 	trunc.w.s	$f16,$f10
     7ec:	440c9000 	mfc1	t4,$f18
     7f0:	44028000 	mfc1	v0,$f16
     7f4:	00000000 	nop
     7f8:	244bfffb 	addiu	t3,v0,-5
     7fc:	01716824 	and	t5,t3,s1
     800:	15a00070 	bnez	t5,9c4 <func_80895EF0+0x3c4>
     804:	000b4180 	sll	t0,t3,0x6
     808:	2401ffc0 	li	at,-64
     80c:	2583fffb 	addiu	v1,t4,-5
     810:	00613824 	and	a3,v1,at
     814:	2584fffd 	addiu	a0,t4,-3
     818:	2585fffc 	addiu	a1,t4,-4
     81c:	00a13024 	and	a2,a1,at
     820:	14e0000c 	bnez	a3,854 <func_80895EF0+0x254>
     824:	00815024 	and	t2,a0,at
     828:	0009c080 	sll	t8,t1,0x2
     82c:	0309c023 	subu	t8,t8,t1
     830:	0018c080 	sll	t8,t8,0x2
     834:	0309c023 	subu	t8,t8,t1
     838:	01037021 	addu	t6,t0,v1
     83c:	01d21021 	addu	v0,t6,s2
     840:	0218c821 	addu	t9,s0,t8
     844:	932d0000 	lbu	t5,0(t9)
     848:	904f0000 	lbu	t7,0(v0)
     84c:	01ed7025 	or	t6,t7,t5
     850:	a04e0000 	sb	t6,0(v0)
     854:	14c0000b 	bnez	a2,884 <func_80895EF0+0x284>
     858:	0105c021 	addu	t8,t0,a1
     85c:	00097880 	sll	t7,t1,0x2
     860:	01e97823 	subu	t7,t7,t1
     864:	000f7880 	sll	t7,t7,0x2
     868:	01e97823 	subu	t7,t7,t1
     86c:	020f6821 	addu	t5,s0,t7
     870:	03121021 	addu	v0,t8,s2
     874:	90590000 	lbu	t9,0(v0)
     878:	91ae0001 	lbu	t6,1(t5)
     87c:	032ec025 	or	t8,t9,t6
     880:	a0580000 	sb	t8,0(v0)
     884:	1540000b 	bnez	t2,8b4 <func_80895EF0+0x2b4>
     888:	01047821 	addu	t7,t0,a0
     88c:	0009c880 	sll	t9,t1,0x2
     890:	0329c823 	subu	t9,t9,t1
     894:	0019c880 	sll	t9,t9,0x2
     898:	0329c823 	subu	t9,t9,t1
     89c:	02197021 	addu	t6,s0,t9
     8a0:	01f21021 	addu	v0,t7,s2
     8a4:	904d0000 	lbu	t5,0(v0)
     8a8:	91d80002 	lbu	t8,2(t6)
     8ac:	01b87825 	or	t7,t5,t8
     8b0:	a04f0000 	sb	t7,0(v0)
     8b4:	25820003 	addiu	v0,t4,3
     8b8:	2443fffb 	addiu	v1,v0,-5
     8bc:	2445fffc 	addiu	a1,v0,-4
     8c0:	2446fffd 	addiu	a2,v0,-3
     8c4:	2447fffe 	addiu	a3,v0,-2
     8c8:	24040003 	li	a0,3
     8cc:	0071c824 	and	t9,v1,s1
     8d0:	1720000c 	bnez	t9,904 <func_80895EF0+0x304>
     8d4:	01037021 	addu	t6,t0,v1
     8d8:	0009c080 	sll	t8,t1,0x2
     8dc:	0309c023 	subu	t8,t8,t1
     8e0:	0018c080 	sll	t8,t8,0x2
     8e4:	0309c023 	subu	t8,t8,t1
     8e8:	02187821 	addu	t7,s0,t8
     8ec:	01d21021 	addu	v0,t6,s2
     8f0:	01e4c821 	addu	t9,t7,a0
     8f4:	932e0000 	lbu	t6,0(t9)
     8f8:	904d0000 	lbu	t5,0(v0)
     8fc:	01aec025 	or	t8,t5,t6
     900:	a0580000 	sb	t8,0(v0)
     904:	00b17824 	and	t7,a1,s1
     908:	15e0000d 	bnez	t7,940 <func_80895EF0+0x340>
     90c:	24630004 	addiu	v1,v1,4
     910:	00097080 	sll	t6,t1,0x2
     914:	01c97023 	subu	t6,t6,t1
     918:	000e7080 	sll	t6,t6,0x2
     91c:	01c97023 	subu	t6,t6,t1
     920:	0105c821 	addu	t9,t0,a1
     924:	03321021 	addu	v0,t9,s2
     928:	020ec021 	addu	t8,s0,t6
     92c:	03047821 	addu	t7,t8,a0
     930:	91f90001 	lbu	t9,1(t7)
     934:	904d0000 	lbu	t5,0(v0)
     938:	01b97025 	or	t6,t5,t9
     93c:	a04e0000 	sb	t6,0(v0)
     940:	00d1c024 	and	t8,a2,s1
     944:	1700000d 	bnez	t8,97c <func_80895EF0+0x37c>
     948:	24a50004 	addiu	a1,a1,4
     94c:	0009c880 	sll	t9,t1,0x2
     950:	0329c823 	subu	t9,t9,t1
     954:	0019c880 	sll	t9,t9,0x2
     958:	0329c823 	subu	t9,t9,t1
     95c:	01067821 	addu	t7,t0,a2
     960:	01f21021 	addu	v0,t7,s2
     964:	02197021 	addu	t6,s0,t9
     968:	01c4c021 	addu	t8,t6,a0
     96c:	930f0002 	lbu	t7,2(t8)
     970:	904d0000 	lbu	t5,0(v0)
     974:	01afc825 	or	t9,t5,t7
     978:	a0590000 	sb	t9,0(v0)
     97c:	00f17024 	and	t6,a3,s1
     980:	15c0000d 	bnez	t6,9b8 <func_80895EF0+0x3b8>
     984:	24c60004 	addiu	a2,a2,4
     988:	00097880 	sll	t7,t1,0x2
     98c:	01e97823 	subu	t7,t7,t1
     990:	000f7880 	sll	t7,t7,0x2
     994:	01e97823 	subu	t7,t7,t1
     998:	0107c021 	addu	t8,t0,a3
     99c:	03121021 	addu	v0,t8,s2
     9a0:	020fc821 	addu	t9,s0,t7
     9a4:	03247021 	addu	t6,t9,a0
     9a8:	91d80003 	lbu	t8,3(t6)
     9ac:	904d0000 	lbu	t5,0(v0)
     9b0:	01b87825 	or	t7,t5,t8
     9b4:	a04f0000 	sb	t7,0(v0)
     9b8:	24840004 	addiu	a0,a0,4
     9bc:	1493ffc3 	bne	a0,s3,8cc <func_80895EF0+0x2cc>
     9c0:	24e70004 	addiu	a3,a3,4
     9c4:	25290001 	addiu	t1,t1,1
     9c8:	1533ff8c 	bne	t1,s3,7fc <func_80895EF0+0x1fc>
     9cc:	256b0001 	addiu	t3,t3,1
     9d0:	56d5ff66 	bnel	s6,s5,76c <func_80895EF0+0x16c>
     9d4:	44965000 	mtc1	s6,$f10
     9d8:	3c190000 	lui	t9,0x0
     9dc:	27390000 	addiu	t9,t9,0
     9e0:	26f7000c 	addiu	s7,s7,12
     9e4:	02f9082b 	sltu	at,s7,t9
     9e8:	1420ff50 	bnez	at,72c <func_80895EF0+0x12c>
     9ec:	2694000c 	addiu	s4,s4,12
     9f0:	3c150000 	lui	s5,0x0
     9f4:	3c140000 	lui	s4,0x0
     9f8:	3c010000 	lui	at,0x0
     9fc:	3c170000 	lui	s7,0x0
     a00:	3c130000 	lui	s3,0x0
     a04:	26730000 	addiu	s3,s3,0
     a08:	26f70000 	addiu	s7,s7,0
     a0c:	c43c0000 	lwc1	$f28,0(at)
     a10:	26940000 	addiu	s4,s4,0
     a14:	26b50000 	addiu	s5,s5,0
     a18:	24100003 	li	s0,3
     a1c:	02802025 	move	a0,s4
     a20:	02a02825 	move	a1,s5
     a24:	0c000000 	jal	0 <func_808958F0>
     a28:	27a600d4 	addiu	a2,sp,212
     a2c:	c7a200d4 	lwc1	$f2,212(sp)
     a30:	c7ac00d8 	lwc1	$f12,216(sp)
     a34:	c7ae00dc 	lwc1	$f14,220(sp)
     a38:	461c1082 	mul.s	$f2,$f2,$f28
     a3c:	0000b025 	move	s6,zero
     a40:	461c6302 	mul.s	$f12,$f12,$f28
     a44:	00000000 	nop
     a48:	461c7382 	mul.s	$f14,$f14,$f28
     a4c:	e7a200d4 	swc1	$f2,212(sp)
     a50:	e7ac00d8 	swc1	$f12,216(sp)
     a54:	e7ae00dc 	swc1	$f14,220(sp)
     a58:	44969000 	mtc1	s6,$f18
     a5c:	c7a200d4 	lwc1	$f2,212(sp)
     a60:	c7ac00d8 	lwc1	$f12,216(sp)
     a64:	46809020 	cvt.s.w	$f0,$f18
     a68:	c6a40000 	lwc1	$f4,0(s5)
     a6c:	c7ae00dc 	lwc1	$f14,220(sp)
     a70:	c6aa0004 	lwc1	$f10,4(s5)
     a74:	03c02025 	move	a0,s8
     a78:	27a500bc 	addiu	a1,sp,188
     a7c:	46001182 	mul.s	$f6,$f2,$f0
     a80:	46062200 	add.s	$f8,$f4,$f6
     a84:	46006402 	mul.s	$f16,$f12,$f0
     a88:	c6a40008 	lwc1	$f4,8(s5)
     a8c:	46007182 	mul.s	$f6,$f14,$f0
     a90:	e7a800c8 	swc1	$f8,200(sp)
     a94:	46105480 	add.s	$f18,$f10,$f16
     a98:	46062200 	add.s	$f8,$f4,$f6
     a9c:	e7b200cc 	swc1	$f18,204(sp)
     aa0:	0c000000 	jal	0 <func_808958F0>
     aa4:	e7a800d0 	swc1	$f8,208(sp)
     aa8:	c7aa00bc 	lwc1	$f10,188(sp)
     aac:	c7a800c4 	lwc1	$f8,196(sp)
     ab0:	26d60001 	addiu	s6,s6,1
     ab4:	46185400 	add.s	$f16,$f10,$f24
     ab8:	00004825 	move	t1,zero
     abc:	4608d281 	sub.s	$f10,$f26,$f8
     ac0:	46148482 	mul.s	$f18,$f16,$f20
     ac4:	00000000 	nop
     ac8:	46145402 	mul.s	$f16,$f10,$f20
     acc:	46169100 	add.s	$f4,$f18,$f22
     ad0:	46168480 	add.s	$f18,$f16,$f22
     ad4:	4600218d 	trunc.w.s	$f6,$f4
     ad8:	4600910d 	trunc.w.s	$f4,$f18
     adc:	440c3000 	mfc1	t4,$f6
     ae0:	44022000 	mfc1	v0,$f4
     ae4:	00000000 	nop
     ae8:	2445ffff 	addiu	a1,v0,-1
     aec:	00b1c024 	and	t8,a1,s1
     af0:	17000012 	bnez	t8,b3c <func_80895EF0+0x53c>
     af4:	00054180 	sll	t0,a1,0x6
     af8:	00002025 	move	a0,zero
     afc:	2583ffff 	addiu	v1,t4,-1
     b00:	00717824 	and	t7,v1,s1
     b04:	15e0000a 	bnez	t7,b30 <func_80895EF0+0x530>
     b08:	0103c821 	addu	t9,t0,v1
     b0c:	00096880 	sll	t5,t1,0x2
     b10:	01a96823 	subu	t5,t5,t1
     b14:	026dc021 	addu	t8,s3,t5
     b18:	03321021 	addu	v0,t9,s2
     b1c:	03047821 	addu	t7,t8,a0
     b20:	91f90000 	lbu	t9,0(t7)
     b24:	904e0000 	lbu	t6,0(v0)
     b28:	01d96825 	or	t5,t6,t9
     b2c:	a04d0000 	sb	t5,0(v0)
     b30:	24840001 	addiu	a0,a0,1
     b34:	1490fff2 	bne	a0,s0,b00 <func_80895EF0+0x500>
     b38:	24630001 	addiu	v1,v1,1
     b3c:	25290001 	addiu	t1,t1,1
     b40:	29210003 	slti	at,t1,3
     b44:	1420ffe9 	bnez	at,aec <func_80895EF0+0x4ec>
     b48:	24a50001 	addiu	a1,a1,1
     b4c:	2ac10005 	slti	at,s6,5
     b50:	5420ffc2 	bnezl	at,a5c <func_80895EF0+0x45c>
     b54:	44969000 	mtc1	s6,$f18
     b58:	2694000c 	addiu	s4,s4,12
     b5c:	0297082b 	sltu	at,s4,s7
     b60:	1420ffae 	bnez	at,a1c <func_80895EF0+0x41c>
     b64:	26b5000c 	addiu	s5,s5,12
     b68:	00001025 	move	v0,zero
     b6c:	24040040 	li	a0,64
     b70:	02421821 	addu	v1,s2,v0
     b74:	24420004 	addiu	v0,v0,4
     b78:	a0600001 	sb	zero,1(v1)
     b7c:	a0600fc1 	sb	zero,4033(v1)
     b80:	a0600002 	sb	zero,2(v1)
     b84:	a0600fc2 	sb	zero,4034(v1)
     b88:	a0600003 	sb	zero,3(v1)
     b8c:	a0600fc3 	sb	zero,4035(v1)
     b90:	a0600000 	sb	zero,0(v1)
     b94:	1444fff6 	bne	v0,a0,b70 <func_80895EF0+0x570>
     b98:	a0600fc0 	sb	zero,4032(v1)
     b9c:	26420040 	addiu	v0,s2,64
     ba0:	a0400000 	sb	zero,0(v0)
     ba4:	a040003f 	sb	zero,63(v0)
     ba8:	a0400040 	sb	zero,64(v0)
     bac:	a040007f 	sb	zero,127(v0)
     bb0:	240300c0 	li	v1,192
     bb4:	24040fc0 	li	a0,4032
     bb8:	02431021 	addu	v0,s2,v1
     bbc:	24630100 	addiu	v1,v1,256
     bc0:	a0400040 	sb	zero,64(v0)
     bc4:	a040007f 	sb	zero,127(v0)
     bc8:	a0400080 	sb	zero,128(v0)
     bcc:	a04000bf 	sb	zero,191(v0)
     bd0:	a04000c0 	sb	zero,192(v0)
     bd4:	a04000ff 	sb	zero,255(v0)
     bd8:	a0400000 	sb	zero,0(v0)
     bdc:	1464fff6 	bne	v1,a0,bb8 <func_80895EF0+0x5b8>
     be0:	a040003f 	sb	zero,63(v0)
     be4:	8fbf0064 	lw	ra,100(sp)
     be8:	d7b40018 	ldc1	$f20,24(sp)
     bec:	d7b60020 	ldc1	$f22,32(sp)
     bf0:	d7b80028 	ldc1	$f24,40(sp)
     bf4:	d7ba0030 	ldc1	$f26,48(sp)
     bf8:	d7bc0038 	ldc1	$f28,56(sp)
     bfc:	8fb00040 	lw	s0,64(sp)
     c00:	8fb10044 	lw	s1,68(sp)
     c04:	8fb20048 	lw	s2,72(sp)
     c08:	8fb3004c 	lw	s3,76(sp)
     c0c:	8fb40050 	lw	s4,80(sp)
     c10:	8fb50054 	lw	s5,84(sp)
     c14:	8fb60058 	lw	s6,88(sp)
     c18:	8fb7005c 	lw	s7,92(sp)
     c1c:	8fbe0060 	lw	s8,96(sp)
     c20:	03e00008 	jr	ra
     c24:	27bd00e0 	addiu	sp,sp,224

00000c28 <func_80896518>:
     c28:	27bdfea8 	addiu	sp,sp,-344
     c2c:	3c0141fc 	lui	at,0x41fc
     c30:	44811000 	mtc1	at,$f2
     c34:	afbf001c 	sw	ra,28(sp)
     c38:	afb00018 	sw	s0,24(sp)
     c3c:	afa40158 	sw	a0,344(sp)
     c40:	27a90058 	addiu	t1,sp,88
     c44:	00004025 	move	t0,zero
     c48:	44882000 	mtc1	t0,$f4
     c4c:	25080001 	addiu	t0,t0,1
     c50:	29010040 	slti	at,t0,64
     c54:	468021a0 	cvt.s.w	$f6,$f4
     c58:	25290004 	addiu	t1,t1,4
     c5c:	46023001 	sub.s	$f0,$f6,$f2
     c60:	46000202 	mul.s	$f8,$f0,$f0
     c64:	1420fff8 	bnez	at,c48 <func_80896518+0x20>
     c68:	e528fffc 	swc1	$f8,-4(t1)
     c6c:	8fb00158 	lw	s0,344(sp)
     c70:	2401fff0 	li	at,-16
     c74:	24051000 	li	a1,4096
     c78:	261001a3 	addiu	s0,s0,419
     c7c:	02018024 	and	s0,s0,at
     c80:	02002025 	move	a0,s0
     c84:	afb00040 	sw	s0,64(sp)
     c88:	0c000000 	jal	0 <func_808958F0>
     c8c:	00003025 	move	a2,zero
     c90:	3c014396 	lui	at,0x4396
     c94:	44818000 	mtc1	at,$f16
     c98:	3c013f00 	lui	at,0x3f00
     c9c:	27a80158 	addiu	t0,sp,344
     ca0:	44817000 	mtc1	at,$f14
     ca4:	8fa70040 	lw	a3,64(sp)
     ca8:	01005025 	move	t2,t0
     cac:	27a90058 	addiu	t1,sp,88
     cb0:	24060280 	li	a2,640
     cb4:	c52c0000 	lwc1	$f12,0(t1)
     cb8:	27a40058 	addiu	a0,sp,88
     cbc:	c48a0000 	lwc1	$f10,0(a0)
     cc0:	460e5482 	mul.s	$f18,$f10,$f14
     cc4:	460c9080 	add.s	$f2,$f18,$f12
     cc8:	4610103c 	c.lt.s	$f2,$f16
     ccc:	00000000 	nop
     cd0:	4502000f 	bc1fl	d10 <func_80896518+0xe8>
     cd4:	c4880004 	lwc1	$f8,4(a0)
     cd8:	46021100 	add.s	$f4,$f2,$f2
     cdc:	4600218d 	trunc.w.s	$f6,$f4
     ce0:	44183000 	mfc1	t8,$f6
     ce4:	00000000 	nop
     ce8:	00d81023 	subu	v0,a2,t8
     cec:	284100a7 	slti	at,v0,167
     cf0:	14200003 	bnez	at,d00 <func_80896518+0xd8>
     cf4:	00401825 	move	v1,v0
     cf8:	10000001 	b	d00 <func_80896518+0xd8>
     cfc:	240300a6 	li	v1,166
     d00:	90f90000 	lbu	t9,0(a3)
     d04:	03236025 	or	t4,t9,v1
     d08:	a0ec0000 	sb	t4,0(a3)
     d0c:	c4880004 	lwc1	$f8,4(a0)
     d10:	24e70001 	addiu	a3,a3,1
     d14:	460e4282 	mul.s	$f10,$f8,$f14
     d18:	460c5000 	add.s	$f0,$f10,$f12
     d1c:	4610003c 	c.lt.s	$f0,$f16
     d20:	00000000 	nop
     d24:	4502000f 	bc1fl	d64 <func_80896518+0x13c>
     d28:	c4860008 	lwc1	$f6,8(a0)
     d2c:	46000480 	add.s	$f18,$f0,$f0
     d30:	4600910d 	trunc.w.s	$f4,$f18
     d34:	440e2000 	mfc1	t6,$f4
     d38:	00000000 	nop
     d3c:	00ce1023 	subu	v0,a2,t6
     d40:	284100a7 	slti	at,v0,167
     d44:	14200003 	bnez	at,d54 <func_80896518+0x12c>
     d48:	00401825 	move	v1,v0
     d4c:	10000001 	b	d54 <func_80896518+0x12c>
     d50:	240300a6 	li	v1,166
     d54:	90ef0000 	lbu	t7,0(a3)
     d58:	01e3c025 	or	t8,t7,v1
     d5c:	a0f80000 	sb	t8,0(a3)
     d60:	c4860008 	lwc1	$f6,8(a0)
     d64:	24e70001 	addiu	a3,a3,1
     d68:	460e3202 	mul.s	$f8,$f6,$f14
     d6c:	460c4000 	add.s	$f0,$f8,$f12
     d70:	4610003c 	c.lt.s	$f0,$f16
     d74:	00000000 	nop
     d78:	4502000f 	bc1fl	db8 <func_80896518+0x190>
     d7c:	c484000c 	lwc1	$f4,12(a0)
     d80:	46000280 	add.s	$f10,$f0,$f0
     d84:	4600548d 	trunc.w.s	$f18,$f10
     d88:	440c9000 	mfc1	t4,$f18
     d8c:	00000000 	nop
     d90:	00cc1023 	subu	v0,a2,t4
     d94:	284100a7 	slti	at,v0,167
     d98:	14200003 	bnez	at,da8 <func_80896518+0x180>
     d9c:	00401825 	move	v1,v0
     da0:	10000001 	b	da8 <func_80896518+0x180>
     da4:	240300a6 	li	v1,166
     da8:	90ed0000 	lbu	t5,0(a3)
     dac:	01a37025 	or	t6,t5,v1
     db0:	a0ee0000 	sb	t6,0(a3)
     db4:	c484000c 	lwc1	$f4,12(a0)
     db8:	24e70001 	addiu	a3,a3,1
     dbc:	24840010 	addiu	a0,a0,16
     dc0:	460e2182 	mul.s	$f6,$f4,$f14
     dc4:	460c3000 	add.s	$f0,$f6,$f12
     dc8:	4610003c 	c.lt.s	$f0,$f16
     dcc:	00000000 	nop
     dd0:	4500000e 	bc1f	e0c <func_80896518+0x1e4>
     dd4:	00000000 	nop
     dd8:	46000200 	add.s	$f8,$f0,$f0
     ddc:	4600428d 	trunc.w.s	$f10,$f8
     de0:	44185000 	mfc1	t8,$f10
     de4:	00000000 	nop
     de8:	00d81023 	subu	v0,a2,t8
     dec:	284100a7 	slti	at,v0,167
     df0:	14200003 	bnez	at,e00 <func_80896518+0x1d8>
     df4:	00401825 	move	v1,v0
     df8:	10000001 	b	e00 <func_80896518+0x1d8>
     dfc:	240300a6 	li	v1,166
     e00:	90f90000 	lbu	t9,0(a3)
     e04:	03236025 	or	t4,t9,v1
     e08:	a0ec0000 	sb	t4,0(a3)
     e0c:	1488ffab 	bne	a0,t0,cbc <func_80896518+0x94>
     e10:	24e70001 	addiu	a3,a3,1
     e14:	25290004 	addiu	t1,t1,4
     e18:	552affa7 	bnel	t1,t2,cb8 <func_80896518+0x90>
     e1c:	c52c0000 	lwc1	$f12,0(t1)
     e20:	3c040000 	lui	a0,0x0
     e24:	3c0b0000 	lui	t3,0x0
     e28:	256b0000 	addiu	t3,t3,0
     e2c:	24840000 	addiu	a0,a0,0
     e30:	24090780 	li	t1,1920
     e34:	240a0020 	li	t2,32
     e38:	2407003c 	li	a3,60
     e3c:	01204025 	move	t0,t1
     e40:	24050004 	li	a1,4
     e44:	02093021 	addu	a2,s0,t1
     e48:	00c51821 	addu	v1,a2,a1
     e4c:	906d0000 	lbu	t5,0(v1)
     e50:	8c820000 	lw	v0,0(a0)
     e54:	24a50004 	addiu	a1,a1,4
     e58:	01a2082a 	slt	at,t5,v0
     e5c:	50200004 	beqzl	at,e70 <func_80896518+0x248>
     e60:	906e0001 	lbu	t6,1(v1)
     e64:	a0620000 	sb	v0,0(v1)
     e68:	8c820000 	lw	v0,0(a0)
     e6c:	906e0001 	lbu	t6,1(v1)
     e70:	01c2082a 	slt	at,t6,v0
     e74:	50200004 	beqzl	at,e88 <func_80896518+0x260>
     e78:	906f0002 	lbu	t7,2(v1)
     e7c:	a0620001 	sb	v0,1(v1)
     e80:	8c820000 	lw	v0,0(a0)
     e84:	906f0002 	lbu	t7,2(v1)
     e88:	01e2082a 	slt	at,t7,v0
     e8c:	50200004 	beqzl	at,ea0 <func_80896518+0x278>
     e90:	90780003 	lbu	t8,3(v1)
     e94:	a0620002 	sb	v0,2(v1)
     e98:	8c820000 	lw	v0,0(a0)
     e9c:	90780003 	lbu	t8,3(v1)
     ea0:	0302082a 	slt	at,t8,v0
     ea4:	10200002 	beqz	at,eb0 <func_80896518+0x288>
     ea8:	00000000 	nop
     eac:	a0620003 	sb	v0,3(v1)
     eb0:	54a7ffe6 	bnel	a1,a3,e4c <func_80896518+0x224>
     eb4:	00c51821 	addu	v1,a2,a1
     eb8:	24840004 	addiu	a0,a0,4
     ebc:	02081021 	addu	v0,s0,t0
     ec0:	25290040 	addiu	t1,t1,64
     ec4:	a04a003c 	sb	t2,60(v0)
     ec8:	148bffdc 	bne	a0,t3,e3c <func_80896518+0x214>
     ecc:	a04a0003 	sb	t2,3(v0)
     ed0:	8fbf001c 	lw	ra,28(sp)
     ed4:	8fb00018 	lw	s0,24(sp)
     ed8:	27bd0158 	addiu	sp,sp,344
     edc:	03e00008 	jr	ra
     ee0:	00000000 	nop

00000ee4 <BgJyaCobra_Init>:
     ee4:	27bdffd8 	addiu	sp,sp,-40
     ee8:	afbf0024 	sw	ra,36(sp)
     eec:	afb0001c 	sw	s0,28(sp)
     ef0:	3c060601 	lui	a2,0x601
     ef4:	00808025 	move	s0,a0
     ef8:	afb10020 	sw	s1,32(sp)
     efc:	afa5002c 	sw	a1,44(sp)
     f00:	24c6167c 	addiu	a2,a2,5756
     f04:	0c000000 	jal	0 <func_808958F0>
     f08:	00003825 	move	a3,zero
     f0c:	3c050000 	lui	a1,0x0
     f10:	24a50000 	addiu	a1,a1,0
     f14:	0c000000 	jal	0 <func_808958F0>
     f18:	02002025 	move	a0,s0
     f1c:	8611001c 	lh	s1,28(s0)
     f20:	8fa4002c 	lw	a0,44(sp)
     f24:	322e0003 	andi	t6,s1,0x3
     f28:	15c00009 	bnez	t6,f50 <BgJyaCobra_Init+0x6c>
     f2c:	00112a03 	sra	a1,s1,0x8
     f30:	0c000000 	jal	0 <func_808958F0>
     f34:	30a5003f 	andi	a1,a1,0x3f
     f38:	50400006 	beqzl	v0,f54 <BgJyaCobra_Init+0x70>
     f3c:	860f001c 	lh	t7,28(s0)
     f40:	a60000b6 	sh	zero,182(s0)
     f44:	860200b6 	lh	v0,182(s0)
     f48:	a6020016 	sh	v0,22(s0)
     f4c:	a6020032 	sh	v0,50(s0)
     f50:	860f001c 	lh	t7,28(s0)
     f54:	02002025 	move	a0,s0
     f58:	31f80003 	andi	t8,t7,0x3
     f5c:	57000004 	bnezl	t8,f70 <BgJyaCobra_Init+0x8c>
     f60:	02002025 	move	a0,s0
     f64:	0c000000 	jal	0 <func_808958F0>
     f68:	8fa5002c 	lw	a1,44(sp)
     f6c:	02002025 	move	a0,s0
     f70:	0c000000 	jal	0 <func_808958F0>
     f74:	8fa5002c 	lw	a1,44(sp)
     f78:	8611001c 	lh	s1,28(s0)
     f7c:	24030001 	li	v1,1
     f80:	24010002 	li	at,2
     f84:	32220003 	andi	v0,s1,0x3
     f88:	50620004 	beql	v1,v0,f9c <BgJyaCobra_Init+0xb8>
     f8c:	8611001c 	lh	s1,28(s0)
     f90:	14410005 	bne	v0,at,fa8 <BgJyaCobra_Init+0xc4>
     f94:	00000000 	nop
     f98:	8611001c 	lh	s1,28(s0)
     f9c:	2419ffff 	li	t9,-1
     fa0:	a2190003 	sb	t9,3(s0)
     fa4:	32220003 	andi	v0,s1,0x3
     fa8:	54620005 	bnel	v1,v0,fc0 <BgJyaCobra_Init+0xdc>
     fac:	260801a3 	addiu	t0,s0,419
     fb0:	0c000000 	jal	0 <func_808958F0>
     fb4:	02002025 	move	a0,s0
     fb8:	8611001c 	lh	s1,28(s0)
     fbc:	260801a3 	addiu	t0,s0,419
     fc0:	2401fff0 	li	at,-16
     fc4:	01014824 	and	t1,t0,at
     fc8:	3c040000 	lui	a0,0x0
     fcc:	24840000 	addiu	a0,a0,0
     fd0:	afa90010 	sw	t1,16(sp)
     fd4:	02202825 	move	a1,s1
     fd8:	02003025 	move	a2,s0
     fdc:	0c000000 	jal	0 <func_808958F0>
     fe0:	26070194 	addiu	a3,s0,404
     fe4:	8fbf0024 	lw	ra,36(sp)
     fe8:	8fb0001c 	lw	s0,28(sp)
     fec:	8fb10020 	lw	s1,32(sp)
     ff0:	03e00008 	jr	ra
     ff4:	27bd0028 	addiu	sp,sp,40

00000ff8 <BgJyaCobra_Destroy>:
     ff8:	27bdffe8 	addiu	sp,sp,-24
     ffc:	afa40018 	sw	a0,24(sp)
    1000:	8fae0018 	lw	t6,24(sp)
    1004:	afbf0014 	sw	ra,20(sp)
    1008:	00a02025 	move	a0,a1
    100c:	24a50810 	addiu	a1,a1,2064
    1010:	0c000000 	jal	0 <func_808958F0>
    1014:	8dc6014c 	lw	a2,332(t6)
    1018:	8fbf0014 	lw	ra,20(sp)
    101c:	27bd0018 	addiu	sp,sp,24
    1020:	03e00008 	jr	ra
    1024:	00000000 	nop

00001028 <func_80896918>:
    1028:	afa50004 	sw	a1,4(sp)
    102c:	848f016c 	lh	t7,364(a0)
    1030:	84990016 	lh	t9,22(a0)
    1034:	3c0e0000 	lui	t6,0x0
    1038:	000fc340 	sll	t8,t7,0xd
    103c:	03191021 	addu	v0,t8,t9
    1040:	00021400 	sll	v0,v0,0x10
    1044:	25ce0000 	addiu	t6,t6,0
    1048:	00021403 	sra	v0,v0,0x10
    104c:	ac8e0164 	sw	t6,356(a0)
    1050:	a4800168 	sh	zero,360(a0)
    1054:	a4820032 	sh	v0,50(a0)
    1058:	03e00008 	jr	ra
    105c:	a48200b6 	sh	v0,182(a0)

00001060 <func_80896950>:
    1060:	27bdffe0 	addiu	sp,sp,-32
    1064:	afbf0014 	sw	ra,20(sp)
    1068:	3c010000 	lui	at,0x0
    106c:	c4240000 	lwc1	$f4,0(at)
    1070:	c4860150 	lwc1	$f6,336(a0)
    1074:	8ca21c44 	lw	v0,7236(a1)
    1078:	4606203c 	c.lt.s	$f4,$f6
    107c:	00000000 	nop
    1080:	4502000f 	bc1fl	10c0 <func_80896950+0x60>
    1084:	a4800168 	sh	zero,360(a0)
    1088:	848e0168 	lh	t6,360(a0)
    108c:	25cf0001 	addiu	t7,t6,1
    1090:	a48f0168 	sh	t7,360(a0)
    1094:	84980168 	lh	t8,360(a0)
    1098:	2b01000f 	slti	at,t8,15
    109c:	54200009 	bnezl	at,10c4 <func_80896950+0x64>
    10a0:	c4800150 	lwc1	$f0,336(a0)
    10a4:	afa2001c 	sw	v0,28(sp)
    10a8:	0c000000 	jal	0 <func_808958F0>
    10ac:	afa40020 	sw	a0,32(sp)
    10b0:	8fa2001c 	lw	v0,28(sp)
    10b4:	10000002 	b	10c0 <func_80896950+0x60>
    10b8:	8fa40020 	lw	a0,32(sp)
    10bc:	a4800168 	sh	zero,360(a0)
    10c0:	c4800150 	lwc1	$f0,336(a0)
    10c4:	3c010000 	lui	at,0x0
    10c8:	c4280000 	lwc1	$f8,0(at)
    10cc:	46000005 	abs.s	$f0,$f0
    10d0:	4600403c 	c.lt.s	$f8,$f0
    10d4:	00000000 	nop
    10d8:	45020008 	bc1fl	10fc <func_80896950+0x9c>
    10dc:	8fbf0014 	lw	ra,20(sp)
    10e0:	44805000 	mtc1	zero,$f10
    10e4:	2401ffef 	li	at,-17
    10e8:	e48a0150 	swc1	$f10,336(a0)
    10ec:	8c590680 	lw	t9,1664(v0)
    10f0:	03214024 	and	t0,t9,at
    10f4:	ac480680 	sw	t0,1664(v0)
    10f8:	8fbf0014 	lw	ra,20(sp)
    10fc:	27bd0020 	addiu	sp,sp,32
    1100:	03e00008 	jr	ra
    1104:	00000000 	nop

00001108 <func_808969F8>:
    1108:	848600b6 	lh	a2,182(a0)
    110c:	84980158 	lh	t8,344(a0)
    1110:	848f008a 	lh	t7,138(a0)
    1114:	3c0e0000 	lui	t6,0x0
    1118:	00d83823 	subu	a3,a2,t8
    111c:	00073c00 	sll	a3,a3,0x10
    1120:	01e61823 	subu	v1,t7,a2
    1124:	8ca21c44 	lw	v0,7236(a1)
    1128:	25ce0000 	addiu	t6,t6,0
    112c:	00031c00 	sll	v1,v1,0x10
    1130:	00073c03 	sra	a3,a3,0x10
    1134:	ac8e0164 	sw	t6,356(a0)
    1138:	04e10002 	bgez	a3,1144 <func_808969F8+0x3c>
    113c:	00031c03 	sra	v1,v1,0x10
    1140:	00073823 	negu	a3,a3
    1144:	18600009 	blez	v1,116c <func_808969F8+0x64>
    1148:	28e14001 	slti	at,a3,16385
    114c:	28e14001 	slti	at,a3,16385
    1150:	14200004 	bnez	at,1164 <func_808969F8+0x5c>
    1154:	2408ffff 	li	t0,-1
    1158:	24190001 	li	t9,1
    115c:	10000009 	b	1184 <func_808969F8+0x7c>
    1160:	a499016a 	sh	t9,362(a0)
    1164:	10000007 	b	1184 <func_808969F8+0x7c>
    1168:	a488016a 	sh	t0,362(a0)
    116c:	14200004 	bnez	at,1180 <func_808969F8+0x78>
    1170:	240a0001 	li	t2,1
    1174:	2409ffff 	li	t1,-1
    1178:	10000002 	b	1184 <func_808969F8+0x7c>
    117c:	a489016a 	sh	t1,362(a0)
    1180:	a48a016a 	sh	t2,362(a0)
    1184:	c4440024 	lwc1	$f4,36(v0)
    1188:	c4860024 	lwc1	$f6,36(a0)
    118c:	c4900028 	lwc1	$f16,40(a0)
    1190:	240c0001 	li	t4,1
    1194:	46062201 	sub.s	$f8,$f4,$f6
    1198:	c486002c 	lwc1	$f6,44(a0)
    119c:	e4880174 	swc1	$f8,372(a0)
    11a0:	c44a0028 	lwc1	$f10,40(v0)
    11a4:	46105481 	sub.s	$f18,$f10,$f16
    11a8:	e4920178 	swc1	$f18,376(a0)
    11ac:	c444002c 	lwc1	$f4,44(v0)
    11b0:	a480016e 	sh	zero,366(a0)
    11b4:	848b016e 	lh	t3,366(a0)
    11b8:	46062201 	sub.s	$f8,$f4,$f6
    11bc:	a08c0172 	sb	t4,370(a0)
    11c0:	a48b0170 	sh	t3,368(a0)
    11c4:	03e00008 	jr	ra
    11c8:	e488017c 	swc1	$f8,380(a0)

000011cc <func_80896ABC>:
    11cc:	27bdffd8 	addiu	sp,sp,-40
    11d0:	afbf001c 	sw	ra,28(sp)
    11d4:	afb00018 	sw	s0,24(sp)
    11d8:	afa5002c 	sw	a1,44(sp)
    11dc:	8caf1c44 	lw	t7,7236(a1)
    11e0:	00808025 	move	s0,a0
    11e4:	24050015 	li	a1,21
    11e8:	afaf0020 	sw	t7,32(sp)
    11ec:	8498016c 	lh	t8,364(a0)
    11f0:	84880016 	lh	t0,22(a0)
    11f4:	848c0032 	lh	t4,50(a0)
    11f8:	0018cb40 	sll	t9,t8,0xd
    11fc:	03285821 	addu	t3,t9,t0
    1200:	016c1023 	subu	v0,t3,t4
    1204:	00021400 	sll	v0,v0,0x10
    1208:	00021403 	sra	v0,v0,0x10
    120c:	04400003 	bltz	v0,121c <func_80896ABC+0x50>
    1210:	00021823 	negu	v1,v0
    1214:	10000001 	b	121c <func_80896ABC+0x50>
    1218:	00401825 	move	v1,v0
    121c:	28611d00 	slti	at,v1,7424
    1220:	10200007 	beqz	at,1240 <func_80896ABC+0x74>
    1224:	2604016e 	addiu	a0,s0,366
    1228:	2604016e 	addiu	a0,s0,366
    122c:	2405006a 	li	a1,106
    1230:	0c000000 	jal	0 <func_808958F0>
    1234:	24060004 	li	a2,4
    1238:	10000004 	b	124c <func_80896ABC+0x80>
    123c:	8605016a 	lh	a1,362(s0)
    1240:	0c000000 	jal	0 <func_808958F0>
    1244:	2406000a 	li	a2,10
    1248:	8605016a 	lh	a1,362(s0)
    124c:	26040170 	addiu	a0,s0,368
    1250:	8606016e 	lh	a2,366(s0)
    1254:	00052b40 	sll	a1,a1,0xd
    1258:	00052c00 	sll	a1,a1,0x10
    125c:	0c000000 	jal	0 <func_808958F0>
    1260:	00052c03 	sra	a1,a1,0x10
    1264:	50400013 	beqzl	v0,12b4 <func_80896ABC+0xe8>
    1268:	8609016c 	lh	t1,364(s0)
    126c:	860d016c 	lh	t5,364(s0)
    1270:	860e016a 	lh	t6,362(s0)
    1274:	8fa20020 	lw	v0,32(sp)
    1278:	44802000 	mtc1	zero,$f4
    127c:	01ae7821 	addu	t7,t5,t6
    1280:	31f80007 	andi	t8,t7,0x7
    1284:	a618016c 	sh	t8,364(s0)
    1288:	8c590680 	lw	t9,1664(v0)
    128c:	2401ffef 	li	at,-17
    1290:	02002025 	move	a0,s0
    1294:	03214024 	and	t0,t9,at
    1298:	ac480680 	sw	t0,1664(v0)
    129c:	e6040150 	swc1	$f4,336(s0)
    12a0:	0c000000 	jal	0 <func_808958F0>
    12a4:	8fa5002c 	lw	a1,44(sp)
    12a8:	1000000c 	b	12dc <func_80896ABC+0x110>
    12ac:	8fae0020 	lw	t6,32(sp)
    12b0:	8609016c 	lh	t1,364(s0)
    12b4:	860b0016 	lh	t3,22(s0)
    12b8:	860d0170 	lh	t5,368(s0)
    12bc:	00095340 	sll	t2,t1,0xd
    12c0:	014b6021 	addu	t4,t2,t3
    12c4:	018d1021 	addu	v0,t4,t5
    12c8:	00021400 	sll	v0,v0,0x10
    12cc:	00021403 	sra	v0,v0,0x10
    12d0:	a6020032 	sh	v0,50(s0)
    12d4:	a60200b6 	sh	v0,182(s0)
    12d8:	8fae0020 	lw	t6,32(sp)
    12dc:	8dcf0680 	lw	t7,1664(t6)
    12e0:	31f80010 	andi	t8,t7,0x10
    12e4:	5300000a 	beqzl	t8,1310 <func_80896ABC+0x144>
    12e8:	c6000150 	lwc1	$f0,336(s0)
    12ec:	92190172 	lbu	t9,370(s0)
    12f0:	02002025 	move	a0,s0
    12f4:	5320000f 	beqzl	t9,1334 <func_80896ABC+0x168>
    12f8:	44804000 	mtc1	zero,$f8
    12fc:	0c000000 	jal	0 <func_808958F0>
    1300:	8fa5002c 	lw	a1,44(sp)
    1304:	1000000b 	b	1334 <func_80896ABC+0x168>
    1308:	44804000 	mtc1	zero,$f8
    130c:	c6000150 	lwc1	$f0,336(s0)
    1310:	3c010000 	lui	at,0x0
    1314:	c4260000 	lwc1	$f6,0(at)
    1318:	46000005 	abs.s	$f0,$f0
    131c:	4606003c 	c.lt.s	$f0,$f6
    1320:	00000000 	nop
    1324:	45020003 	bc1fl	1334 <func_80896ABC+0x168>
    1328:	44804000 	mtc1	zero,$f8
    132c:	a2000172 	sb	zero,370(s0)
    1330:	44804000 	mtc1	zero,$f8
    1334:	02002025 	move	a0,s0
    1338:	2405200a 	li	a1,8202
    133c:	0c000000 	jal	0 <func_808958F0>
    1340:	e6080150 	swc1	$f8,336(s0)
    1344:	8fbf001c 	lw	ra,28(sp)
    1348:	8fb00018 	lw	s0,24(sp)
    134c:	27bd0028 	addiu	sp,sp,40
    1350:	03e00008 	jr	ra
    1354:	00000000 	nop

00001358 <BgJyaCobra_Update>:
    1358:	27bdffe0 	addiu	sp,sp,-32
    135c:	afb00018 	sw	s0,24(sp)
    1360:	00808025 	move	s0,a0
    1364:	afbf001c 	sw	ra,28(sp)
    1368:	afa50024 	sw	a1,36(sp)
    136c:	8e190164 	lw	t9,356(s0)
    1370:	0320f809 	jalr	t9
    1374:	00000000 	nop
    1378:	02002025 	move	a0,s0
    137c:	0c000000 	jal	0 <func_808958F0>
    1380:	8fa50024 	lw	a1,36(sp)
    1384:	0c000000 	jal	0 <func_808958F0>
    1388:	02002025 	move	a0,s0
    138c:	8602001c 	lh	v0,28(s0)
    1390:	24010002 	li	at,2
    1394:	30420003 	andi	v0,v0,0x3
    1398:	10400003 	beqz	v0,13a8 <BgJyaCobra_Update+0x50>
    139c:	00000000 	nop
    13a0:	54410004 	bnel	v0,at,13b4 <BgJyaCobra_Update+0x5c>
    13a4:	8fbf001c 	lw	ra,28(sp)
    13a8:	0c000000 	jal	0 <func_808958F0>
    13ac:	02002025 	move	a0,s0
    13b0:	8fbf001c 	lw	ra,28(sp)
    13b4:	8fb00018 	lw	s0,24(sp)
    13b8:	27bd0020 	addiu	sp,sp,32
    13bc:	03e00008 	jr	ra
    13c0:	00000000 	nop

000013c4 <func_80896CB4>:
    13c4:	27bdffc0 	addiu	sp,sp,-64
    13c8:	afbf001c 	sw	ra,28(sp)
    13cc:	afb00018 	sw	s0,24(sp)
    13d0:	afa40040 	sw	a0,64(sp)
    13d4:	8c850000 	lw	a1,0(a0)
    13d8:	3c060000 	lui	a2,0x0
    13dc:	24c60000 	addiu	a2,a2,0
    13e0:	27a4002c 	addiu	a0,sp,44
    13e4:	24070360 	li	a3,864
    13e8:	0c000000 	jal	0 <func_808958F0>
    13ec:	00a08025 	move	s0,a1
    13f0:	8faf0040 	lw	t7,64(sp)
    13f4:	0c000000 	jal	0 <func_808958F0>
    13f8:	8de40000 	lw	a0,0(t7)
    13fc:	8e0202d0 	lw	v0,720(s0)
    1400:	3c19da38 	lui	t9,0xda38
    1404:	37390003 	ori	t9,t9,0x3
    1408:	24580008 	addiu	t8,v0,8
    140c:	ae1802d0 	sw	t8,720(s0)
    1410:	ac590000 	sw	t9,0(v0)
    1414:	8fa80040 	lw	t0,64(sp)
    1418:	3c050000 	lui	a1,0x0
    141c:	24a50000 	addiu	a1,a1,0
    1420:	8d040000 	lw	a0,0(t0)
    1424:	24060363 	li	a2,867
    1428:	0c000000 	jal	0 <func_808958F0>
    142c:	afa20028 	sw	v0,40(sp)
    1430:	8fa30028 	lw	v1,40(sp)
    1434:	3c0b0601 	lui	t3,0x601
    1438:	256b0c20 	addiu	t3,t3,3104
    143c:	ac620004 	sw	v0,4(v1)
    1440:	8e0202d0 	lw	v0,720(s0)
    1444:	3c0ade00 	lui	t2,0xde00
    1448:	3c060000 	lui	a2,0x0
    144c:	24490008 	addiu	t1,v0,8
    1450:	ae0902d0 	sw	t1,720(s0)
    1454:	ac4b0004 	sw	t3,4(v0)
    1458:	ac4a0000 	sw	t2,0(v0)
    145c:	8fac0040 	lw	t4,64(sp)
    1460:	24c60000 	addiu	a2,a2,0
    1464:	27a4002c 	addiu	a0,sp,44
    1468:	24070368 	li	a3,872
    146c:	0c000000 	jal	0 <func_808958F0>
    1470:	8d850000 	lw	a1,0(t4)
    1474:	8fbf001c 	lw	ra,28(sp)
    1478:	8fb00018 	lw	s0,24(sp)
    147c:	27bd0040 	addiu	sp,sp,64
    1480:	03e00008 	jr	ra
    1484:	00000000 	nop

00001488 <func_80896D78>:
    1488:	27bdffb0 	addiu	sp,sp,-80
    148c:	afbf001c 	sw	ra,28(sp)
    1490:	afb10018 	sw	s1,24(sp)
    1494:	afb00014 	sw	s0,20(sp)
    1498:	afa50054 	sw	a1,84(sp)
    149c:	8ca50000 	lw	a1,0(a1)
    14a0:	00808025 	move	s0,a0
    14a4:	3c060000 	lui	a2,0x0
    14a8:	24c60000 	addiu	a2,a2,0
    14ac:	27a40030 	addiu	a0,sp,48
    14b0:	2407039c 	li	a3,924
    14b4:	0c000000 	jal	0 <func_808958F0>
    14b8:	00a08825 	move	s1,a1
    14bc:	8faf0054 	lw	t7,84(sp)
    14c0:	0c000000 	jal	0 <func_808958F0>
    14c4:	8de40000 	lw	a0,0(t7)
    14c8:	8618001c 	lh	t8,28(s0)
    14cc:	3c090000 	lui	t1,0x0
    14d0:	860a00b4 	lh	t2,180(s0)
    14d4:	33190003 	andi	t9,t8,0x3
    14d8:	00194040 	sll	t0,t9,0x1
    14dc:	01284821 	addu	t1,t1,t0
    14e0:	85290000 	lh	t1,0(t1)
    14e4:	27a70044 	addiu	a3,sp,68
    14e8:	012a5821 	addu	t3,t1,t2
    14ec:	a7ab0044 	sh	t3,68(sp)
    14f0:	860c00b6 	lh	t4,182(s0)
    14f4:	a7ac0046 	sh	t4,70(sp)
    14f8:	860d00b8 	lh	t5,184(s0)
    14fc:	a7ad0048 	sh	t5,72(sp)
    1500:	8e060188 	lw	a2,392(s0)
    1504:	c60e0184 	lwc1	$f14,388(s0)
    1508:	0c000000 	jal	0 <func_808958F0>
    150c:	c60c0180 	lwc1	$f12,384(s0)
    1510:	3c010000 	lui	at,0x0
    1514:	c42c0000 	lwc1	$f12,0(at)
    1518:	8e060190 	lw	a2,400(s0)
    151c:	24070001 	li	a3,1
    1520:	0c000000 	jal	0 <func_808958F0>
    1524:	46006386 	mov.s	$f14,$f12
    1528:	8e2202d0 	lw	v0,720(s1)
    152c:	3c0fda38 	lui	t7,0xda38
    1530:	35ef0003 	ori	t7,t7,0x3
    1534:	244e0008 	addiu	t6,v0,8
    1538:	ae2e02d0 	sw	t6,720(s1)
    153c:	ac4f0000 	sw	t7,0(v0)
    1540:	8fb80054 	lw	t8,84(sp)
    1544:	3c050000 	lui	a1,0x0
    1548:	24a50000 	addiu	a1,a1,0
    154c:	8f040000 	lw	a0,0(t8)
    1550:	240603ab 	li	a2,939
    1554:	0c000000 	jal	0 <func_808958F0>
    1558:	afa2002c 	sw	v0,44(sp)
    155c:	8fa3002c 	lw	v1,44(sp)
    1560:	3c08fa00 	lui	t0,0xfa00
    1564:	3c01430c 	lui	at,0x430c
    1568:	ac620004 	sw	v0,4(v1)
    156c:	8e2202d0 	lw	v0,720(s1)
    1570:	44813000 	mtc1	at,$f6
    1574:	2401ff00 	li	at,-256
    1578:	24590008 	addiu	t9,v0,8
    157c:	ae3902d0 	sw	t9,720(s1)
    1580:	ac480000 	sw	t0,0(v0)
    1584:	c604018c 	lwc1	$f4,396(s0)
    1588:	3c0f0601 	lui	t7,0x601
    158c:	25ef17d0 	addiu	t7,t7,6096
    1590:	46062202 	mul.s	$f8,$f4,$f6
    1594:	3c0ede00 	lui	t6,0xde00
    1598:	3c060000 	lui	a2,0x0
    159c:	24c60000 	addiu	a2,a2,0
    15a0:	27a40030 	addiu	a0,sp,48
    15a4:	240703b3 	li	a3,947
    15a8:	4600428d 	trunc.w.s	$f10,$f8
    15ac:	440a5000 	mfc1	t2,$f10
    15b0:	00000000 	nop
    15b4:	314b00ff 	andi	t3,t2,0xff
    15b8:	01616025 	or	t4,t3,at
    15bc:	ac4c0004 	sw	t4,4(v0)
    15c0:	8e2202d0 	lw	v0,720(s1)
    15c4:	244d0008 	addiu	t5,v0,8
    15c8:	ae2d02d0 	sw	t5,720(s1)
    15cc:	ac4f0004 	sw	t7,4(v0)
    15d0:	ac4e0000 	sw	t6,0(v0)
    15d4:	8fb80054 	lw	t8,84(sp)
    15d8:	0c000000 	jal	0 <func_808958F0>
    15dc:	8f050000 	lw	a1,0(t8)
    15e0:	8fbf001c 	lw	ra,28(sp)
    15e4:	8fb00014 	lw	s0,20(sp)
    15e8:	8fb10018 	lw	s1,24(sp)
    15ec:	03e00008 	jr	ra
    15f0:	27bd0050 	addiu	sp,sp,80

000015f4 <func_80896EE4>:
    15f4:	27bdff88 	addiu	sp,sp,-120
    15f8:	afbf001c 	sw	ra,28(sp)
    15fc:	afb00018 	sw	s0,24(sp)
    1600:	afa5007c 	sw	a1,124(sp)
    1604:	848e001c 	lh	t6,28(a0)
    1608:	00808025 	move	s0,a0
    160c:	3c060000 	lui	a2,0x0
    1610:	31cf0003 	andi	t7,t6,0x3
    1614:	a7af0072 	sh	t7,114(sp)
    1618:	8ca50000 	lw	a1,0(a1)
    161c:	24c60000 	addiu	a2,a2,0
    1620:	27a4004c 	addiu	a0,sp,76
    1624:	240703c6 	li	a3,966
    1628:	0c000000 	jal	0 <func_808958F0>
    162c:	afa5005c 	sw	a1,92(sp)
    1630:	8fb9007c 	lw	t9,124(sp)
    1634:	0c000000 	jal	0 <func_808958F0>
    1638:	8f240000 	lw	a0,0(t9)
    163c:	87a90072 	lh	t1,114(sp)
    1640:	8fa8005c 	lw	t0,92(sp)
    1644:	87aa0072 	lh	t2,114(sp)
    1648:	1520000d 	bnez	t1,1680 <func_80896EE4+0x8c>
    164c:	24010002 	li	at,2
    1650:	3c014248 	lui	at,0x4248
    1654:	44813000 	mtc1	at,$f6
    1658:	c6040024 	lwc1	$f4,36(s0)
    165c:	3c070000 	lui	a3,0x0
    1660:	24e70000 	addiu	a3,a3,0
    1664:	46062201 	sub.s	$f8,$f4,$f6
    1668:	e7a80064 	swc1	$f8,100(sp)
    166c:	c60a0028 	lwc1	$f10,40(s0)
    1670:	e7aa0068 	swc1	$f10,104(sp)
    1674:	c610002c 	lwc1	$f16,44(s0)
    1678:	10000016 	b	16d4 <func_80896EE4+0xe0>
    167c:	e7b0006c 	swc1	$f16,108(sp)
    1680:	1541000d 	bne	t2,at,16b8 <func_80896EE4+0xc4>
    1684:	260700b4 	addiu	a3,s0,180
    1688:	3c01428c 	lui	at,0x428c
    168c:	44812000 	mtc1	at,$f4
    1690:	c6120024 	lwc1	$f18,36(s0)
    1694:	3c070000 	lui	a3,0x0
    1698:	24e70000 	addiu	a3,a3,0
    169c:	46049180 	add.s	$f6,$f18,$f4
    16a0:	e7a60064 	swc1	$f6,100(sp)
    16a4:	c6080028 	lwc1	$f8,40(s0)
    16a8:	e7a80068 	swc1	$f8,104(sp)
    16ac:	c60a002c 	lwc1	$f10,44(s0)
    16b0:	10000008 	b	16d4 <func_80896EE4+0xe0>
    16b4:	e7aa006c 	swc1	$f10,108(sp)
    16b8:	27a40064 	addiu	a0,sp,100
    16bc:	26050024 	addiu	a1,s0,36
    16c0:	afa70060 	sw	a3,96(sp)
    16c4:	0c000000 	jal	0 <func_808958F0>
    16c8:	afa8005c 	sw	t0,92(sp)
    16cc:	8fa70060 	lw	a3,96(sp)
    16d0:	8fa8005c 	lw	t0,92(sp)
    16d4:	c7ac0064 	lwc1	$f12,100(sp)
    16d8:	c7ae0068 	lwc1	$f14,104(sp)
    16dc:	8fa6006c 	lw	a2,108(sp)
    16e0:	0c000000 	jal	0 <func_808958F0>
    16e4:	afa8005c 	sw	t0,92(sp)
    16e8:	87ab0072 	lh	t3,114(sp)
    16ec:	3c0d0000 	lui	t5,0x0
    16f0:	25ad0000 	addiu	t5,t5,0
    16f4:	000b6080 	sll	t4,t3,0x2
    16f8:	018b6023 	subu	t4,t4,t3
    16fc:	000c6080 	sll	t4,t4,0x2
    1700:	018d1021 	addu	v0,t4,t5
    1704:	c44c0000 	lwc1	$f12,0(v0)
    1708:	c44e0004 	lwc1	$f14,4(v0)
    170c:	8c460008 	lw	a2,8(v0)
    1710:	0c000000 	jal	0 <func_808958F0>
    1714:	24070001 	li	a3,1
    1718:	44806000 	mtc1	zero,$f12
    171c:	3c064220 	lui	a2,0x4220
    1720:	24070001 	li	a3,1
    1724:	0c000000 	jal	0 <func_808958F0>
    1728:	46006386 	mov.s	$f14,$f12
    172c:	8fa8005c 	lw	t0,92(sp)
    1730:	3c0ffa00 	lui	t7,0xfa00
    1734:	24180078 	li	t8,120
    1738:	8d0202d0 	lw	v0,720(t0)
    173c:	3c09da38 	lui	t1,0xda38
    1740:	35290003 	ori	t1,t1,0x3
    1744:	244e0008 	addiu	t6,v0,8
    1748:	ad0e02d0 	sw	t6,720(t0)
    174c:	ac4f0000 	sw	t7,0(v0)
    1750:	ac580004 	sw	t8,4(v0)
    1754:	8d0202d0 	lw	v0,720(t0)
    1758:	3c050000 	lui	a1,0x0
    175c:	24a50000 	addiu	a1,a1,0
    1760:	24590008 	addiu	t9,v0,8
    1764:	ad1902d0 	sw	t9,720(t0)
    1768:	ac490000 	sw	t1,0(v0)
    176c:	8faa007c 	lw	t2,124(sp)
    1770:	240603e2 	li	a2,994
    1774:	8d440000 	lw	a0,0(t2)
    1778:	afa8005c 	sw	t0,92(sp)
    177c:	0c000000 	jal	0 <func_808958F0>
    1780:	afa20044 	sw	v0,68(sp)
    1784:	8fa30044 	lw	v1,68(sp)
    1788:	8fa8005c 	lw	t0,92(sp)
    178c:	260d01a3 	addiu	t5,s0,419
    1790:	ac620004 	sw	v0,4(v1)
    1794:	8d0202d0 	lw	v0,720(t0)
    1798:	2401fff0 	li	at,-16
    179c:	01a17024 	and	t6,t5,at
    17a0:	244b0008 	addiu	t3,v0,8
    17a4:	ad0b02d0 	sw	t3,720(t0)
    17a8:	3c0cfd90 	lui	t4,0xfd90
    17ac:	ac4c0000 	sw	t4,0(v0)
    17b0:	ac4e0004 	sw	t6,4(v0)
    17b4:	8d0202d0 	lw	v0,720(t0)
    17b8:	3c190708 	lui	t9,0x708
    17bc:	37390200 	ori	t9,t9,0x200
    17c0:	244f0008 	addiu	t7,v0,8
    17c4:	ad0f02d0 	sw	t7,720(t0)
    17c8:	3c18f590 	lui	t8,0xf590
    17cc:	ac580000 	sw	t8,0(v0)
    17d0:	ac590004 	sw	t9,4(v0)
    17d4:	8d0202d0 	lw	v0,720(t0)
    17d8:	3c0ae600 	lui	t2,0xe600
    17dc:	3c0d077f 	lui	t5,0x77f
    17e0:	24490008 	addiu	t1,v0,8
    17e4:	ad0902d0 	sw	t1,720(t0)
    17e8:	ac400004 	sw	zero,4(v0)
    17ec:	ac4a0000 	sw	t2,0(v0)
    17f0:	8d0202d0 	lw	v0,720(t0)
    17f4:	35adf100 	ori	t5,t5,0xf100
    17f8:	3c0cf300 	lui	t4,0xf300
    17fc:	244b0008 	addiu	t3,v0,8
    1800:	ad0b02d0 	sw	t3,720(t0)
    1804:	ac4d0004 	sw	t5,4(v0)
    1808:	ac4c0000 	sw	t4,0(v0)
    180c:	8d0202d0 	lw	v0,720(t0)
    1810:	3c0fe700 	lui	t7,0xe700
    1814:	3c090008 	lui	t1,0x8
    1818:	244e0008 	addiu	t6,v0,8
    181c:	ad0e02d0 	sw	t6,720(t0)
    1820:	ac400004 	sw	zero,4(v0)
    1824:	ac4f0000 	sw	t7,0(v0)
    1828:	8d0202d0 	lw	v0,720(t0)
    182c:	3c19f588 	lui	t9,0xf588
    1830:	37391000 	ori	t9,t9,0x1000
    1834:	24580008 	addiu	t8,v0,8
    1838:	ad1802d0 	sw	t8,720(t0)
    183c:	35290200 	ori	t1,t1,0x200
    1840:	ac490004 	sw	t1,4(v0)
    1844:	ac590000 	sw	t9,0(v0)
    1848:	8d0202d0 	lw	v0,720(t0)
    184c:	3c0c000f 	lui	t4,0xf
    1850:	358cc0fc 	ori	t4,t4,0xc0fc
    1854:	244a0008 	addiu	t2,v0,8
    1858:	ad0a02d0 	sw	t2,720(t0)
    185c:	3c0bf200 	lui	t3,0xf200
    1860:	ac4b0000 	sw	t3,0(v0)
    1864:	ac4c0004 	sw	t4,4(v0)
    1868:	8d0202d0 	lw	v0,720(t0)
    186c:	3c0f0000 	lui	t7,0x0
    1870:	25ef0000 	addiu	t7,t7,0
    1874:	244d0008 	addiu	t5,v0,8
    1878:	ad0d02d0 	sw	t5,720(t0)
    187c:	3c0ede00 	lui	t6,0xde00
    1880:	ac4e0000 	sw	t6,0(v0)
    1884:	ac4f0004 	sw	t7,4(v0)
    1888:	8fb8007c 	lw	t8,124(sp)
    188c:	3c060000 	lui	a2,0x0
    1890:	24c60000 	addiu	a2,a2,0
    1894:	27a4004c 	addiu	a0,sp,76
    1898:	240703ee 	li	a3,1006
    189c:	0c000000 	jal	0 <func_808958F0>
    18a0:	8f050000 	lw	a1,0(t8)
    18a4:	8fbf001c 	lw	ra,28(sp)
    18a8:	8fb00018 	lw	s0,24(sp)
    18ac:	27bd0078 	addiu	sp,sp,120
    18b0:	03e00008 	jr	ra
    18b4:	00000000 	nop

000018b8 <BgJyaCobra_Draw>:
    18b8:	27bdffe0 	addiu	sp,sp,-32
    18bc:	afb00014 	sw	s0,20(sp)
    18c0:	00808025 	move	s0,a0
    18c4:	afbf001c 	sw	ra,28(sp)
    18c8:	afb10018 	sw	s1,24(sp)
    18cc:	00a08825 	move	s1,a1
    18d0:	0c000000 	jal	0 <func_808958F0>
    18d4:	00a02025 	move	a0,a1
    18d8:	3c050601 	lui	a1,0x601
    18dc:	24a50790 	addiu	a1,a1,1936
    18e0:	0c000000 	jal	0 <func_808958F0>
    18e4:	02202025 	move	a0,s1
    18e8:	44802000 	mtc1	zero,$f4
    18ec:	c606018c 	lwc1	$f6,396(s0)
    18f0:	02002025 	move	a0,s0
    18f4:	4606203c 	c.lt.s	$f4,$f6
    18f8:	00000000 	nop
    18fc:	45020004 	bc1fl	1910 <BgJyaCobra_Draw+0x58>
    1900:	860e001c 	lh	t6,28(s0)
    1904:	0c000000 	jal	0 <func_808958F0>
    1908:	02202825 	move	a1,s1
    190c:	860e001c 	lh	t6,28(s0)
    1910:	24010002 	li	at,2
    1914:	02002025 	move	a0,s0
    1918:	31cf0003 	andi	t7,t6,0x3
    191c:	15e1000e 	bne	t7,at,1958 <BgJyaCobra_Draw+0xa0>
    1920:	00000000 	nop
    1924:	8e020118 	lw	v0,280(s0)
    1928:	5040000e 	beqzl	v0,1964 <BgJyaCobra_Draw+0xac>
    192c:	8fbf001c 	lw	ra,28(sp)
    1930:	9043015c 	lbu	v1,348(v0)
    1934:	30780004 	andi	t8,v1,0x4
    1938:	13000009 	beqz	t8,1960 <BgJyaCobra_Draw+0xa8>
    193c:	30790001 	andi	t9,v1,0x1
    1940:	13200007 	beqz	t9,1960 <BgJyaCobra_Draw+0xa8>
    1944:	02002025 	move	a0,s0
    1948:	0c000000 	jal	0 <func_808958F0>
    194c:	02202825 	move	a1,s1
    1950:	10000004 	b	1964 <BgJyaCobra_Draw+0xac>
    1954:	8fbf001c 	lw	ra,28(sp)
    1958:	0c000000 	jal	0 <func_808958F0>
    195c:	02202825 	move	a1,s1
    1960:	8fbf001c 	lw	ra,28(sp)
    1964:	8fb00014 	lw	s0,20(sp)
    1968:	8fb10018 	lw	s1,24(sp)
    196c:	03e00008 	jr	ra
    1970:	27bd0020 	addiu	sp,sp,32
	...
