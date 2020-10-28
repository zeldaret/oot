
build/src/code/z_eff_spark.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSpark_Init>:
       0:	27bdffa0 	addiu	sp,sp,-96
       4:	afb50058 	sw	s5,88(sp)
       8:	afb10048 	sw	s1,72(sp)
       c:	00808825 	move	s1,a0
      10:	afbf005c 	sw	ra,92(sp)
      14:	afb40054 	sw	s4,84(sp)
      18:	afb30050 	sw	s3,80(sp)
      1c:	afb2004c 	sw	s2,76(sp)
      20:	afb00044 	sw	s0,68(sp)
      24:	f7be0038 	sdc1	$f30,56(sp)
      28:	f7bc0030 	sdc1	$f28,48(sp)
      2c:	f7ba0028 	sdc1	$f26,40(sp)
      30:	f7b80020 	sdc1	$f24,32(sp)
      34:	f7b60018 	sdc1	$f22,24(sp)
      38:	f7b40010 	sdc1	$f20,16(sp)
      3c:	108000e4 	beqz	a0,3d0 <EffectSpark_Init+0x3d0>
      40:	0080a825 	move	s5,a0
      44:	50a000e3 	beqzl	a1,3d4 <EffectSpark_Init+0x3d4>
      48:	8fbf005c 	lw	ra,92(sp)
      4c:	8cae0494 	lw	t6,1172(a1)
      50:	3c040000 	lui	a0,0x0
      54:	11c00004 	beqz	t6,68 <EffectSpark_Init+0x68>
      58:	00000000 	nop
      5c:	8caf0498 	lw	t7,1176(a1)
      60:	55e00006 	bnezl	t7,7c <EffectSpark_Init+0x7c>
      64:	88b90000 	lwl	t9,0(a1)
      68:	0c000000 	jal	0 <EffectSpark_Init>
      6c:	24840000 	addiu	a0,a0,0
      70:	100000d8 	b	3d4 <EffectSpark_Init+0x3d4>
      74:	8fbf005c 	lw	ra,92(sp)
      78:	88b90000 	lwl	t9,0(a1)
      7c:	98b90003 	lwr	t9,3(a1)
      80:	3c040000 	lui	a0,0x0
      84:	aa390000 	swl	t9,0(s1)
      88:	ba390003 	swr	t9,3(s1)
      8c:	94b90004 	lhu	t9,4(a1)
      90:	a6390004 	sh	t9,4(s1)
      94:	c4a4048c 	lwc1	$f4,1164(a1)
      98:	e624048c 	swc1	$f4,1164(s1)
      9c:	c4a60490 	lwc1	$f6,1168(a1)
      a0:	e6260490 	swc1	$f6,1168(s1)
      a4:	8ca80494 	lw	t0,1172(a1)
      a8:	ae280494 	sw	t0,1172(s1)
      ac:	8ca90498 	lw	t1,1176(a1)
      b0:	ae290498 	sw	t1,1176(s1)
      b4:	90aa049c 	lbu	t2,1180(a1)
      b8:	a22a049c 	sb	t2,1180(s1)
      bc:	90ab049d 	lbu	t3,1181(a1)
      c0:	a22b049d 	sb	t3,1181(s1)
      c4:	90ac049e 	lbu	t4,1182(a1)
      c8:	a22c049e 	sb	t4,1182(s1)
      cc:	90ad049f 	lbu	t5,1183(a1)
      d0:	a22d049f 	sb	t5,1183(s1)
      d4:	90ae04a0 	lbu	t6,1184(a1)
      d8:	a22e04a0 	sb	t6,1184(s1)
      dc:	90af04a1 	lbu	t7,1185(a1)
      e0:	a22f04a1 	sb	t7,1185(s1)
      e4:	90b804a2 	lbu	t8,1186(a1)
      e8:	a23804a2 	sb	t8,1186(s1)
      ec:	90b904a3 	lbu	t9,1187(a1)
      f0:	a23904a3 	sb	t9,1187(s1)
      f4:	90a804a4 	lbu	t0,1188(a1)
      f8:	a22804a4 	sb	t0,1188(s1)
      fc:	90a904a5 	lbu	t1,1189(a1)
     100:	a22904a5 	sb	t1,1189(s1)
     104:	90aa04a6 	lbu	t2,1190(a1)
     108:	a22a04a6 	sb	t2,1190(s1)
     10c:	90ab04a7 	lbu	t3,1191(a1)
     110:	a22b04a7 	sb	t3,1191(s1)
     114:	90ac04a8 	lbu	t4,1192(a1)
     118:	a22c04a8 	sb	t4,1192(s1)
     11c:	90ad04a9 	lbu	t5,1193(a1)
     120:	a22d04a9 	sb	t5,1193(s1)
     124:	90ae04aa 	lbu	t6,1194(a1)
     128:	a22e04aa 	sb	t6,1194(s1)
     12c:	90af04ab 	lbu	t7,1195(a1)
     130:	a22f04ab 	sb	t7,1195(s1)
     134:	90b804ac 	lbu	t8,1196(a1)
     138:	a23804ac 	sb	t8,1196(s1)
     13c:	90b904ad 	lbu	t9,1197(a1)
     140:	a23904ad 	sb	t9,1197(s1)
     144:	90a804ae 	lbu	t0,1198(a1)
     148:	a22804ae 	sb	t0,1198(s1)
     14c:	90a904af 	lbu	t1,1199(a1)
     150:	a22904af 	sb	t1,1199(s1)
     154:	90aa04b0 	lbu	t2,1200(a1)
     158:	a22a04b0 	sb	t2,1200(s1)
     15c:	90ab04b1 	lbu	t3,1201(a1)
     160:	a22b04b1 	sb	t3,1201(s1)
     164:	90ac04b2 	lbu	t4,1202(a1)
     168:	a22c04b2 	sb	t4,1202(s1)
     16c:	90ad04b3 	lbu	t5,1203(a1)
     170:	a22d04b3 	sb	t5,1203(s1)
     174:	90ae04b4 	lbu	t6,1204(a1)
     178:	8e2d0494 	lw	t5,1172(s1)
     17c:	a22e04b4 	sb	t6,1204(s1)
     180:	90af04b5 	lbu	t7,1205(a1)
     184:	8e2e0498 	lw	t6,1176(s1)
     188:	a22f04b5 	sb	t7,1205(s1)
     18c:	90b804b6 	lbu	t8,1206(a1)
     190:	01ae0019 	multu	t5,t6
     194:	a23804b6 	sb	t8,1206(s1)
     198:	90b904b7 	lbu	t9,1207(a1)
     19c:	a23904b7 	sb	t9,1207(s1)
     1a0:	90a804b8 	lbu	t0,1208(a1)
     1a4:	a22804b8 	sb	t0,1208(s1)
     1a8:	90a904b9 	lbu	t1,1209(a1)
     1ac:	00001012 	mflo	v0
     1b0:	24420002 	addiu	v0,v0,2
     1b4:	a22904b9 	sb	t1,1209(s1)
     1b8:	90aa04ba 	lbu	t2,1210(a1)
     1bc:	28410021 	slti	at,v0,33
     1c0:	a22a04ba 	sb	t2,1210(s1)
     1c4:	90ab04bb 	lbu	t3,1211(a1)
     1c8:	a22b04bb 	sb	t3,1211(s1)
     1cc:	8cac04c0 	lw	t4,1216(a1)
     1d0:	ae220008 	sw	v0,8(s1)
     1d4:	14200005 	bnez	at,1ec <EffectSpark_Init+0x1ec>
     1d8:	ae2c04c0 	sw	t4,1216(s1)
     1dc:	0c000000 	jal	0 <EffectSpark_Init>
     1e0:	24840024 	addiu	a0,a0,36
     1e4:	1000007b 	b	3d4 <EffectSpark_Init+0x3d4>
     1e8:	8fbf005c 	lw	ra,92(sp)
     1ec:	8e2f0008 	lw	t7,8(s1)
     1f0:	00009825 	move	s3,zero
     1f4:	02209025 	move	s2,s1
     1f8:	19e00074 	blez	t7,3cc <EffectSpark_Init+0x3cc>
     1fc:	3c010000 	lui	at,0x0
     200:	c43e00c8 	lwc1	$f30,200(at)
     204:	3c010000 	lui	at,0x0
     208:	c43a00cc 	lwc1	$f26,204(at)
     20c:	3c010000 	lui	at,0x0
     210:	c43800d0 	lwc1	$f24,208(at)
     214:	3c010000 	lui	at,0x0
     218:	c43600d4 	lwc1	$f22,212(at)
     21c:	3c013f00 	lui	at,0x3f00
     220:	4481a000 	mtc1	at,$f20
     224:	4480e000 	mtc1	zero,$f28
     228:	2630000c 	addiu	s0,s1,12
     22c:	86380000 	lh	t8,0(s1)
     230:	0200a025 	move	s4,s0
     234:	44984000 	mtc1	t8,$f8
     238:	00000000 	nop
     23c:	468042a0 	cvt.s.w	$f10,$f8
     240:	e64a0018 	swc1	$f10,24(s2)
     244:	86390002 	lh	t9,2(s1)
     248:	44999000 	mtc1	t9,$f18
     24c:	00000000 	nop
     250:	46809120 	cvt.s.w	$f4,$f18
     254:	e644001c 	swc1	$f4,28(s2)
     258:	86280004 	lh	t0,4(s1)
     25c:	44883000 	mtc1	t0,$f6
     260:	00000000 	nop
     264:	46803220 	cvt.s.w	$f8,$f6
     268:	0c000000 	jal	0 <EffectSpark_Init>
     26c:	e6480020 	swc1	$f8,32(s2)
     270:	46140281 	sub.s	$f10,$f0,$f20
     274:	0c000000 	jal	0 <EffectSpark_Init>
     278:	e60a0000 	swc1	$f10,0(s0)
     27c:	46140481 	sub.s	$f18,$f0,$f20
     280:	0c000000 	jal	0 <EffectSpark_Init>
     284:	e6120004 	swc1	$f18,4(s0)
     288:	c60c0000 	lwc1	$f12,0(s0)
     28c:	c60e0004 	lwc1	$f14,4(s0)
     290:	46140081 	sub.s	$f2,$f0,$f20
     294:	460c6102 	mul.s	$f4,$f12,$f12
     298:	3c013f80 	lui	at,0x3f80
     29c:	460e7182 	mul.s	$f6,$f14,$f14
     2a0:	e6020008 	swc1	$f2,8(s0)
     2a4:	46021282 	mul.s	$f10,$f2,$f2
     2a8:	46062200 	add.s	$f8,$f4,$f6
     2ac:	460a4000 	add.s	$f0,$f8,$f10
     2b0:	46000404 	sqrt.s	$f16,$f0
     2b4:	46008005 	abs.s	$f0,$f16
     2b8:	461e003c 	c.lt.s	$f0,$f30
     2bc:	00000000 	nop
     2c0:	45030015 	bc1tl	318 <EffectSpark_Init+0x318>
     2c4:	e61c0008 	swc1	$f28,8(s0)
     2c8:	44819000 	mtc1	at,$f18
     2cc:	c624048c 	lwc1	$f4,1164(s1)
     2d0:	46109003 	div.s	$f0,$f18,$f16
     2d4:	46002182 	mul.s	$f6,$f4,$f0
     2d8:	00000000 	nop
     2dc:	46066202 	mul.s	$f8,$f12,$f6
     2e0:	c6060008 	lwc1	$f6,8(s0)
     2e4:	e6080000 	swc1	$f8,0(s0)
     2e8:	c62a048c 	lwc1	$f10,1164(s1)
     2ec:	46005482 	mul.s	$f18,$f10,$f0
     2f0:	00000000 	nop
     2f4:	46127102 	mul.s	$f4,$f14,$f18
     2f8:	e6040004 	swc1	$f4,4(s0)
     2fc:	c628048c 	lwc1	$f8,1164(s1)
     300:	46004282 	mul.s	$f10,$f8,$f0
     304:	00000000 	nop
     308:	460a3482 	mul.s	$f18,$f6,$f10
     30c:	10000005 	b	324 <EffectSpark_Init+0x324>
     310:	e6120008 	swc1	$f18,8(s0)
     314:	e61c0008 	swc1	$f28,8(s0)
     318:	e61c0000 	swc1	$f28,0(s0)
     31c:	c624048c 	lwc1	$f4,1164(s1)
     320:	e6040004 	swc1	$f4,4(s0)
     324:	0c000000 	jal	0 <EffectSpark_Init>
     328:	00000000 	nop
     32c:	46180202 	mul.s	$f8,$f0,$f24
     330:	4608b181 	sub.s	$f6,$f22,$f8
     334:	4600328d 	trunc.w.s	$f10,$f6
     338:	440a5000 	mfc1	t2,$f10
     33c:	0c000000 	jal	0 <EffectSpark_Init>
     340:	a60a0018 	sh	t2,24(s0)
     344:	46180482 	mul.s	$f18,$f0,$f24
     348:	4612b101 	sub.s	$f4,$f22,$f18
     34c:	4600220d 	trunc.w.s	$f8,$f4
     350:	440c4000 	mfc1	t4,$f8
     354:	0c000000 	jal	0 <EffectSpark_Init>
     358:	a60c001a 	sh	t4,26(s0)
     35c:	46180182 	mul.s	$f6,$f0,$f24
     360:	4606b281 	sub.s	$f10,$f22,$f6
     364:	4600548d 	trunc.w.s	$f18,$f10
     368:	440e9000 	mfc1	t6,$f18
     36c:	0c000000 	jal	0 <EffectSpark_Init>
     370:	a60e001c 	sh	t6,28(s0)
     374:	461a0102 	mul.s	$f4,$f0,$f26
     378:	4600220d 	trunc.w.s	$f8,$f4
     37c:	44184000 	mfc1	t8,$f8
     380:	0c000000 	jal	0 <EffectSpark_Init>
     384:	a618001e 	sh	t8,30(s0)
     388:	461a0182 	mul.s	$f6,$f0,$f26
     38c:	4600328d 	trunc.w.s	$f10,$f6
     390:	44085000 	mfc1	t0,$f10
     394:	0c000000 	jal	0 <EffectSpark_Init>
     398:	a6080020 	sh	t0,32(s0)
     39c:	461a0482 	mul.s	$f18,$f0,$f26
     3a0:	26730001 	addiu	s3,s3,1
     3a4:	26520024 	addiu	s2,s2,36
     3a8:	26100024 	addiu	s0,s0,36
     3ac:	4600910d 	trunc.w.s	$f4,$f18
     3b0:	440a2000 	mfc1	t2,$f4
     3b4:	00000000 	nop
     3b8:	a68a0022 	sh	t2,34(s4)
     3bc:	8eab0008 	lw	t3,8(s5)
     3c0:	026b082a 	slt	at,s3,t3
     3c4:	5420ff9a 	bnezl	at,230 <EffectSpark_Init+0x230>
     3c8:	86380000 	lh	t8,0(s1)
     3cc:	ae2004bc 	sw	zero,1212(s1)
     3d0:	8fbf005c 	lw	ra,92(sp)
     3d4:	d7b40010 	ldc1	$f20,16(sp)
     3d8:	d7b60018 	ldc1	$f22,24(sp)
     3dc:	d7b80020 	ldc1	$f24,32(sp)
     3e0:	d7ba0028 	ldc1	$f26,40(sp)
     3e4:	d7bc0030 	ldc1	$f28,48(sp)
     3e8:	d7be0038 	ldc1	$f30,56(sp)
     3ec:	8fb00044 	lw	s0,68(sp)
     3f0:	8fb10048 	lw	s1,72(sp)
     3f4:	8fb2004c 	lw	s2,76(sp)
     3f8:	8fb30050 	lw	s3,80(sp)
     3fc:	8fb40054 	lw	s4,84(sp)
     400:	8fb50058 	lw	s5,88(sp)
     404:	03e00008 	jr	ra
     408:	27bd0060 	addiu	sp,sp,96

0000040c <EffectSpark_Destroy>:
     40c:	03e00008 	jr	ra
     410:	afa40000 	sw	a0,0(sp)

00000414 <EffectSpark_Update>:
     414:	27bdffe8 	addiu	sp,sp,-24
     418:	afbf0014 	sw	ra,20(sp)
     41c:	14800006 	bnez	a0,438 <EffectSpark_Update+0x24>
     420:	00802825 	move	a1,a0
     424:	3c040000 	lui	a0,0x0
     428:	24840038 	addiu	a0,a0,56
     42c:	0c000000 	jal	0 <EffectSpark_Init>
     430:	afa50018 	sw	a1,24(sp)
     434:	8fa50018 	lw	a1,24(sp)
     438:	8cae0008 	lw	t6,8(a1)
     43c:	00001825 	move	v1,zero
     440:	00a01025 	move	v0,a1
     444:	59c00023 	blezl	t6,4d4 <EffectSpark_Update+0xc0>
     448:	8caf04bc 	lw	t7,1212(a1)
     44c:	c4440018 	lwc1	$f4,24(v0)
     450:	c446000c 	lwc1	$f6,12(v0)
     454:	c4400010 	lwc1	$f0,16(v0)
     458:	c44a001c 	lwc1	$f10,28(v0)
     45c:	46062200 	add.s	$f8,$f4,$f6
     460:	c4440014 	lwc1	$f4,20(v0)
     464:	c4520020 	lwc1	$f18,32(v0)
     468:	46005400 	add.s	$f16,$f10,$f0
     46c:	e4480018 	swc1	$f8,24(v0)
     470:	844f002a 	lh	t7,42(v0)
     474:	46049180 	add.s	$f6,$f18,$f4
     478:	e450001c 	swc1	$f16,28(v0)
     47c:	84580024 	lh	t8,36(v0)
     480:	8448002c 	lh	t0,44(v0)
     484:	e4460020 	swc1	$f6,32(v0)
     488:	c4a80490 	lwc1	$f8,1168(a1)
     48c:	84490026 	lh	t1,38(v0)
     490:	844b002e 	lh	t3,46(v0)
     494:	46080280 	add.s	$f10,$f0,$f8
     498:	844c0028 	lh	t4,40(v0)
     49c:	01f8c821 	addu	t9,t7,t8
     4a0:	01095021 	addu	t2,t0,t1
     4a4:	016c6821 	addu	t5,t3,t4
     4a8:	e44a0010 	swc1	$f10,16(v0)
     4ac:	a459002a 	sh	t9,42(v0)
     4b0:	a44a002c 	sh	t2,44(v0)
     4b4:	a44d002e 	sh	t5,46(v0)
     4b8:	8cae0008 	lw	t6,8(a1)
     4bc:	24630001 	addiu	v1,v1,1
     4c0:	24420024 	addiu	v0,v0,36
     4c4:	006e082a 	slt	at,v1,t6
     4c8:	5420ffe1 	bnezl	at,450 <EffectSpark_Update+0x3c>
     4cc:	c4440018 	lwc1	$f4,24(v0)
     4d0:	8caf04bc 	lw	t7,1212(a1)
     4d4:	8cb904c0 	lw	t9,1216(a1)
     4d8:	00001025 	move	v0,zero
     4dc:	25f80001 	addiu	t8,t7,1
     4e0:	acb804bc 	sw	t8,1212(a1)
     4e4:	0338082a 	slt	at,t9,t8
     4e8:	10200003 	beqz	at,4f8 <EffectSpark_Update+0xe4>
     4ec:	8fbf0014 	lw	ra,20(sp)
     4f0:	10000001 	b	4f8 <EffectSpark_Update+0xe4>
     4f4:	24020001 	li	v0,1
     4f8:	03e00008 	jr	ra
     4fc:	27bd0018 	addiu	sp,sp,24

00000500 <EffectSpark_Draw>:
     500:	27bdfe18 	addiu	sp,sp,-488
     504:	afbf0034 	sw	ra,52(sp)
     508:	afb70030 	sw	s7,48(sp)
     50c:	afb6002c 	sw	s6,44(sp)
     510:	00a0b025 	move	s6,a1
     514:	0080b825 	move	s7,a0
     518:	afb50028 	sw	s5,40(sp)
     51c:	afb40024 	sw	s4,36(sp)
     520:	afb30020 	sw	s3,32(sp)
     524:	afb2001c 	sw	s2,28(sp)
     528:	afb10018 	sw	s1,24(sp)
     52c:	afb00014 	sw	s0,20(sp)
     530:	0c000000 	jal	0 <EffectSpark_Init>
     534:	afa401e0 	sw	a0,480(sp)
     538:	3c060000 	lui	a2,0x0
     53c:	00409825 	move	s3,v0
     540:	24c60068 	addiu	a2,a2,104
     544:	27a401ac 	addiu	a0,sp,428
     548:	02c02825 	move	a1,s6
     54c:	0c000000 	jal	0 <EffectSpark_Init>
     550:	24070125 	li	a3,293
     554:	12e00464 	beqz	s7,16e8 <EffectSpark_Draw+0x11e8>
     558:	3c0fda38 	lui	t7,0xda38
     55c:	8ec402d0 	lw	a0,720(s6)
     560:	3c180000 	lui	t8,0x0
     564:	27180000 	addiu	t8,t8,0
     568:	248e0008 	addiu	t6,a0,8
     56c:	aece02d0 	sw	t6,720(s6)
     570:	35ef0003 	ori	t7,t7,0x3
     574:	ac8f0000 	sw	t7,0(a0)
     578:	ac980004 	sw	t8,4(a0)
     57c:	8ec402d0 	lw	a0,720(s6)
     580:	0c000000 	jal	0 <EffectSpark_Init>
     584:	24050026 	li	a1,38
     588:	00402025 	move	a0,v0
     58c:	aec202d0 	sw	v0,720(s6)
     590:	24990008 	addiu	t9,a0,8
     594:	aed902d0 	sw	t9,720(s6)
     598:	3c08e300 	lui	t0,0xe300
     59c:	35080a01 	ori	t0,t0,0xa01
     5a0:	3c090010 	lui	t1,0x10
     5a4:	ac490004 	sw	t1,4(v0)
     5a8:	ac480000 	sw	t0,0(v0)
     5ac:	8ec402d0 	lw	a0,720(s6)
     5b0:	3c03e700 	lui	v1,0xe700
     5b4:	3c0cd700 	lui	t4,0xd700
     5b8:	248a0008 	addiu	t2,a0,8
     5bc:	aeca02d0 	sw	t2,720(s6)
     5c0:	ac800004 	sw	zero,4(a0)
     5c4:	ac830000 	sw	v1,0(a0)
     5c8:	8ec402d0 	lw	a0,720(s6)
     5cc:	358c0002 	ori	t4,t4,0x2
     5d0:	240dffff 	li	t5,-1
     5d4:	248b0008 	addiu	t3,a0,8
     5d8:	aecb02d0 	sw	t3,720(s6)
     5dc:	ac8d0004 	sw	t5,4(a0)
     5e0:	ac8c0000 	sw	t4,0(a0)
     5e4:	8ec402d0 	lw	a0,720(s6)
     5e8:	3c180000 	lui	t8,0x0
     5ec:	27180000 	addiu	t8,t8,0
     5f0:	248e0008 	addiu	t6,a0,8
     5f4:	aece02d0 	sw	t6,720(s6)
     5f8:	3c0ffd90 	lui	t7,0xfd90
     5fc:	ac8f0000 	sw	t7,0(a0)
     600:	ac980004 	sw	t8,4(a0)
     604:	8ec402d0 	lw	a0,720(s6)
     608:	3c090701 	lui	t1,0x701
     60c:	35294050 	ori	t1,t1,0x4050
     610:	24990008 	addiu	t9,a0,8
     614:	aed902d0 	sw	t9,720(s6)
     618:	3c08f590 	lui	t0,0xf590
     61c:	ac880000 	sw	t0,0(a0)
     620:	ac890004 	sw	t1,4(a0)
     624:	8ec402d0 	lw	a0,720(s6)
     628:	3c0be600 	lui	t3,0xe600
     62c:	3c0e071f 	lui	t6,0x71f
     630:	248a0008 	addiu	t2,a0,8
     634:	aeca02d0 	sw	t2,720(s6)
     638:	ac800004 	sw	zero,4(a0)
     63c:	ac8b0000 	sw	t3,0(a0)
     640:	8ec402d0 	lw	a0,720(s6)
     644:	35cef200 	ori	t6,t6,0xf200
     648:	3c0df300 	lui	t5,0xf300
     64c:	248c0008 	addiu	t4,a0,8
     650:	aecc02d0 	sw	t4,720(s6)
     654:	ac8e0004 	sw	t6,4(a0)
     658:	ac8d0000 	sw	t5,0(a0)
     65c:	8ec402d0 	lw	a0,720(s6)
     660:	3c080001 	lui	t0,0x1
     664:	3c19f588 	lui	t9,0xf588
     668:	248f0008 	addiu	t7,a0,8
     66c:	aecf02d0 	sw	t7,720(s6)
     670:	ac800004 	sw	zero,4(a0)
     674:	ac830000 	sw	v1,0(a0)
     678:	8ec402d0 	lw	a0,720(s6)
     67c:	37390800 	ori	t9,t9,0x800
     680:	35084050 	ori	t0,t0,0x4050
     684:	24980008 	addiu	t8,a0,8
     688:	aed802d0 	sw	t8,720(s6)
     68c:	ac880004 	sw	t0,4(a0)
     690:	ac990000 	sw	t9,0(a0)
     694:	8ec402d0 	lw	a0,720(s6)
     698:	3c0b0007 	lui	t3,0x7
     69c:	356bc07c 	ori	t3,t3,0xc07c
     6a0:	24890008 	addiu	t1,a0,8
     6a4:	aec902d0 	sw	t1,720(s6)
     6a8:	3c0af200 	lui	t2,0xf200
     6ac:	ac8a0000 	sw	t2,0(a0)
     6b0:	ac8b0004 	sw	t3,4(a0)
     6b4:	8ec402d0 	lw	a0,720(s6)
     6b8:	3c0dfcff 	lui	t5,0xfcff
     6bc:	3c0efffe 	lui	t6,0xfffe
     6c0:	248c0008 	addiu	t4,a0,8
     6c4:	aecc02d0 	sw	t4,720(s6)
     6c8:	35ce7238 	ori	t6,t6,0x7238
     6cc:	35adffff 	ori	t5,t5,0xffff
     6d0:	ac8d0000 	sw	t5,0(a0)
     6d4:	ac8e0004 	sw	t6,4(a0)
     6d8:	8ec402d0 	lw	a0,720(s6)
     6dc:	3c190c18 	lui	t9,0xc18
     6e0:	3c18e200 	lui	t8,0xe200
     6e4:	248f0008 	addiu	t7,a0,8
     6e8:	aecf02d0 	sw	t7,720(s6)
     6ec:	3718001c 	ori	t8,t8,0x1c
     6f0:	37394b50 	ori	t9,t9,0x4b50
     6f4:	ac990004 	sw	t9,4(a0)
     6f8:	ac980000 	sw	t8,0(a0)
     6fc:	8ec402d0 	lw	a0,720(s6)
     700:	3c09d9f0 	lui	t1,0xd9f0
     704:	3529f9ff 	ori	t1,t1,0xf9ff
     708:	24880008 	addiu	t0,a0,8
     70c:	aec802d0 	sw	t0,720(s6)
     710:	ac800004 	sw	zero,4(a0)
     714:	ac890000 	sw	t1,0(a0)
     718:	8ec402d0 	lw	a0,720(s6)
     71c:	3c0c0020 	lui	t4,0x20
     720:	3c0bd9ff 	lui	t3,0xd9ff
     724:	248a0008 	addiu	t2,a0,8
     728:	aeca02d0 	sw	t2,720(s6)
     72c:	356bffff 	ori	t3,t3,0xffff
     730:	358c0005 	ori	t4,t4,0x5
     734:	ac8c0004 	sw	t4,4(a0)
     738:	ac8b0000 	sw	t3,0(a0)
     73c:	8ec402d0 	lw	a0,720(s6)
     740:	248d0008 	addiu	t5,a0,8
     744:	aecd02d0 	sw	t5,720(s6)
     748:	ac800004 	sw	zero,4(a0)
     74c:	ac830000 	sw	v1,0(a0)
     750:	8ee50008 	lw	a1,8(s7)
     754:	02c02025 	move	a0,s6
     758:	0c000000 	jal	0 <EffectSpark_Init>
     75c:	00052980 	sll	a1,a1,0x6
     760:	14400006 	bnez	v0,77c <EffectSpark_Draw+0x27c>
     764:	00401825 	move	v1,v0
     768:	3c040000 	lui	a0,0x0
     76c:	0c000000 	jal	0 <EffectSpark_Init>
     770:	2484007c 	addiu	a0,a0,124
     774:	100003dc 	b	16e8 <EffectSpark_Draw+0x11e8>
     778:	00000000 	nop
     77c:	8eee04bc 	lw	t6,1212(s7)
     780:	8eef04c0 	lw	t7,1216(s7)
     784:	92f8049c 	lbu	t8,1180(s7)
     788:	448e2000 	mtc1	t6,$f4
     78c:	448f4000 	mtc1	t7,$f8
     790:	00001025 	move	v0,zero
     794:	468021a0 	cvt.s.w	$f6,$f4
     798:	44982000 	mtc1	t8,$f4
     79c:	468042a0 	cvt.s.w	$f10,$f8
     7a0:	468020a0 	cvt.s.w	$f2,$f4
     7a4:	07010005 	bgez	t8,7bc <EffectSpark_Draw+0x2bc>
     7a8:	460a3003 	div.s	$f0,$f6,$f10
     7ac:	3c014f80 	lui	at,0x4f80
     7b0:	44814000 	mtc1	at,$f8
     7b4:	00000000 	nop
     7b8:	46081080 	add.s	$f2,$f2,$f8
     7bc:	92f904ac 	lbu	t9,1196(s7)
     7c0:	44993000 	mtc1	t9,$f6
     7c4:	07210005 	bgez	t9,7dc <EffectSpark_Draw+0x2dc>
     7c8:	468032a0 	cvt.s.w	$f10,$f6
     7cc:	3c014f80 	lui	at,0x4f80
     7d0:	44812000 	mtc1	at,$f4
     7d4:	00000000 	nop
     7d8:	46045280 	add.s	$f10,$f10,$f4
     7dc:	46025201 	sub.s	$f8,$f10,$f2
     7e0:	24090001 	li	t1,1
     7e4:	46004182 	mul.s	$f6,$f8,$f0
     7e8:	46023100 	add.s	$f4,$f6,$f2
     7ec:	4448f800 	cfc1	t0,$31
     7f0:	44c9f800 	ctc1	t1,$31
     7f4:	00000000 	nop
     7f8:	460022a4 	cvt.w.s	$f10,$f4
     7fc:	4449f800 	cfc1	t1,$31
     800:	00000000 	nop
     804:	31290078 	andi	t1,t1,0x78
     808:	11200012 	beqz	t1,854 <EffectSpark_Draw+0x354>
     80c:	3c014f00 	lui	at,0x4f00
     810:	44815000 	mtc1	at,$f10
     814:	24090001 	li	t1,1
     818:	460a2281 	sub.s	$f10,$f4,$f10
     81c:	44c9f800 	ctc1	t1,$31
     820:	00000000 	nop
     824:	460052a4 	cvt.w.s	$f10,$f10
     828:	4449f800 	cfc1	t1,$31
     82c:	00000000 	nop
     830:	31290078 	andi	t1,t1,0x78
     834:	15200005 	bnez	t1,84c <EffectSpark_Draw+0x34c>
     838:	00000000 	nop
     83c:	44095000 	mfc1	t1,$f10
     840:	3c018000 	lui	at,0x8000
     844:	10000007 	b	864 <EffectSpark_Draw+0x364>
     848:	01214825 	or	t1,t1,at
     84c:	10000005 	b	864 <EffectSpark_Draw+0x364>
     850:	2409ffff 	li	t1,-1
     854:	44095000 	mfc1	t1,$f10
     858:	00000000 	nop
     85c:	0520fffb 	bltz	t1,84c <EffectSpark_Draw+0x34c>
     860:	00000000 	nop
     864:	a3a901d3 	sb	t1,467(sp)
     868:	92ea049d 	lbu	t2,1181(s7)
     86c:	44c8f800 	ctc1	t0,$31
     870:	448a4000 	mtc1	t2,$f8
     874:	05410005 	bgez	t2,88c <EffectSpark_Draw+0x38c>
     878:	46804320 	cvt.s.w	$f12,$f8
     87c:	3c014f80 	lui	at,0x4f80
     880:	44813000 	mtc1	at,$f6
     884:	00000000 	nop
     888:	46066300 	add.s	$f12,$f12,$f6
     88c:	92eb04ad 	lbu	t3,1197(s7)
     890:	448b2000 	mtc1	t3,$f4
     894:	05610005 	bgez	t3,8ac <EffectSpark_Draw+0x3ac>
     898:	468022a0 	cvt.s.w	$f10,$f4
     89c:	3c014f80 	lui	at,0x4f80
     8a0:	44814000 	mtc1	at,$f8
     8a4:	00000000 	nop
     8a8:	46085280 	add.s	$f10,$f10,$f8
     8ac:	460c5181 	sub.s	$f6,$f10,$f12
     8b0:	240d0001 	li	t5,1
     8b4:	46003102 	mul.s	$f4,$f6,$f0
     8b8:	460c2200 	add.s	$f8,$f4,$f12
     8bc:	444cf800 	cfc1	t4,$31
     8c0:	44cdf800 	ctc1	t5,$31
     8c4:	00000000 	nop
     8c8:	460042a4 	cvt.w.s	$f10,$f8
     8cc:	444df800 	cfc1	t5,$31
     8d0:	00000000 	nop
     8d4:	31ad0078 	andi	t5,t5,0x78
     8d8:	11a00012 	beqz	t5,924 <EffectSpark_Draw+0x424>
     8dc:	3c014f00 	lui	at,0x4f00
     8e0:	44815000 	mtc1	at,$f10
     8e4:	240d0001 	li	t5,1
     8e8:	460a4281 	sub.s	$f10,$f8,$f10
     8ec:	44cdf800 	ctc1	t5,$31
     8f0:	00000000 	nop
     8f4:	460052a4 	cvt.w.s	$f10,$f10
     8f8:	444df800 	cfc1	t5,$31
     8fc:	00000000 	nop
     900:	31ad0078 	andi	t5,t5,0x78
     904:	15a00005 	bnez	t5,91c <EffectSpark_Draw+0x41c>
     908:	00000000 	nop
     90c:	440d5000 	mfc1	t5,$f10
     910:	3c018000 	lui	at,0x8000
     914:	10000007 	b	934 <EffectSpark_Draw+0x434>
     918:	01a16825 	or	t5,t5,at
     91c:	10000005 	b	934 <EffectSpark_Draw+0x434>
     920:	240dffff 	li	t5,-1
     924:	440d5000 	mfc1	t5,$f10
     928:	00000000 	nop
     92c:	05a0fffb 	bltz	t5,91c <EffectSpark_Draw+0x41c>
     930:	00000000 	nop
     934:	a3ad01d2 	sb	t5,466(sp)
     938:	92ee049e 	lbu	t6,1182(s7)
     93c:	44ccf800 	ctc1	t4,$31
     940:	448e3000 	mtc1	t6,$f6
     944:	05c10005 	bgez	t6,95c <EffectSpark_Draw+0x45c>
     948:	468033a0 	cvt.s.w	$f14,$f6
     94c:	3c014f80 	lui	at,0x4f80
     950:	44812000 	mtc1	at,$f4
     954:	00000000 	nop
     958:	46047380 	add.s	$f14,$f14,$f4
     95c:	92ef04ae 	lbu	t7,1198(s7)
     960:	448f4000 	mtc1	t7,$f8
     964:	05e10005 	bgez	t7,97c <EffectSpark_Draw+0x47c>
     968:	468042a0 	cvt.s.w	$f10,$f8
     96c:	3c014f80 	lui	at,0x4f80
     970:	44813000 	mtc1	at,$f6
     974:	00000000 	nop
     978:	46065280 	add.s	$f10,$f10,$f6
     97c:	460e5101 	sub.s	$f4,$f10,$f14
     980:	24190001 	li	t9,1
     984:	46002202 	mul.s	$f8,$f4,$f0
     988:	460e4180 	add.s	$f6,$f8,$f14
     98c:	4458f800 	cfc1	t8,$31
     990:	44d9f800 	ctc1	t9,$31
     994:	00000000 	nop
     998:	460032a4 	cvt.w.s	$f10,$f6
     99c:	4459f800 	cfc1	t9,$31
     9a0:	00000000 	nop
     9a4:	33390078 	andi	t9,t9,0x78
     9a8:	13200012 	beqz	t9,9f4 <EffectSpark_Draw+0x4f4>
     9ac:	3c014f00 	lui	at,0x4f00
     9b0:	44815000 	mtc1	at,$f10
     9b4:	24190001 	li	t9,1
     9b8:	460a3281 	sub.s	$f10,$f6,$f10
     9bc:	44d9f800 	ctc1	t9,$31
     9c0:	00000000 	nop
     9c4:	460052a4 	cvt.w.s	$f10,$f10
     9c8:	4459f800 	cfc1	t9,$31
     9cc:	00000000 	nop
     9d0:	33390078 	andi	t9,t9,0x78
     9d4:	17200005 	bnez	t9,9ec <EffectSpark_Draw+0x4ec>
     9d8:	00000000 	nop
     9dc:	44195000 	mfc1	t9,$f10
     9e0:	3c018000 	lui	at,0x8000
     9e4:	10000007 	b	a04 <EffectSpark_Draw+0x504>
     9e8:	0321c825 	or	t9,t9,at
     9ec:	10000005 	b	a04 <EffectSpark_Draw+0x504>
     9f0:	2419ffff 	li	t9,-1
     9f4:	44195000 	mfc1	t9,$f10
     9f8:	00000000 	nop
     9fc:	0720fffb 	bltz	t9,9ec <EffectSpark_Draw+0x4ec>
     a00:	00000000 	nop
     a04:	a3b901d1 	sb	t9,465(sp)
     a08:	92e8049f 	lbu	t0,1183(s7)
     a0c:	44d8f800 	ctc1	t8,$31
     a10:	44882000 	mtc1	t0,$f4
     a14:	05010005 	bgez	t0,a2c <EffectSpark_Draw+0x52c>
     a18:	46802420 	cvt.s.w	$f16,$f4
     a1c:	3c014f80 	lui	at,0x4f80
     a20:	44814000 	mtc1	at,$f8
     a24:	00000000 	nop
     a28:	46088400 	add.s	$f16,$f16,$f8
     a2c:	92e904af 	lbu	t1,1199(s7)
     a30:	44893000 	mtc1	t1,$f6
     a34:	05210005 	bgez	t1,a4c <EffectSpark_Draw+0x54c>
     a38:	468032a0 	cvt.s.w	$f10,$f6
     a3c:	3c014f80 	lui	at,0x4f80
     a40:	44812000 	mtc1	at,$f4
     a44:	00000000 	nop
     a48:	46045280 	add.s	$f10,$f10,$f4
     a4c:	46105201 	sub.s	$f8,$f10,$f16
     a50:	240b0001 	li	t3,1
     a54:	46004182 	mul.s	$f6,$f8,$f0
     a58:	46103100 	add.s	$f4,$f6,$f16
     a5c:	444af800 	cfc1	t2,$31
     a60:	44cbf800 	ctc1	t3,$31
     a64:	00000000 	nop
     a68:	460022a4 	cvt.w.s	$f10,$f4
     a6c:	444bf800 	cfc1	t3,$31
     a70:	00000000 	nop
     a74:	316b0078 	andi	t3,t3,0x78
     a78:	11600012 	beqz	t3,ac4 <EffectSpark_Draw+0x5c4>
     a7c:	3c014f00 	lui	at,0x4f00
     a80:	44815000 	mtc1	at,$f10
     a84:	240b0001 	li	t3,1
     a88:	460a2281 	sub.s	$f10,$f4,$f10
     a8c:	44cbf800 	ctc1	t3,$31
     a90:	00000000 	nop
     a94:	460052a4 	cvt.w.s	$f10,$f10
     a98:	444bf800 	cfc1	t3,$31
     a9c:	00000000 	nop
     aa0:	316b0078 	andi	t3,t3,0x78
     aa4:	15600005 	bnez	t3,abc <EffectSpark_Draw+0x5bc>
     aa8:	00000000 	nop
     aac:	440b5000 	mfc1	t3,$f10
     ab0:	3c018000 	lui	at,0x8000
     ab4:	10000007 	b	ad4 <EffectSpark_Draw+0x5d4>
     ab8:	01615825 	or	t3,t3,at
     abc:	10000005 	b	ad4 <EffectSpark_Draw+0x5d4>
     ac0:	240bffff 	li	t3,-1
     ac4:	440b5000 	mfc1	t3,$f10
     ac8:	00000000 	nop
     acc:	0560fffb 	bltz	t3,abc <EffectSpark_Draw+0x5bc>
     ad0:	00000000 	nop
     ad4:	a3ab01d0 	sb	t3,464(sp)
     ad8:	92ec04a0 	lbu	t4,1184(s7)
     adc:	44caf800 	ctc1	t2,$31
     ae0:	448c4000 	mtc1	t4,$f8
     ae4:	05810005 	bgez	t4,afc <EffectSpark_Draw+0x5fc>
     ae8:	468044a0 	cvt.s.w	$f18,$f8
     aec:	3c014f80 	lui	at,0x4f80
     af0:	44813000 	mtc1	at,$f6
     af4:	00000000 	nop
     af8:	46069480 	add.s	$f18,$f18,$f6
     afc:	92ed04b0 	lbu	t5,1200(s7)
     b00:	448d2000 	mtc1	t5,$f4
     b04:	05a10005 	bgez	t5,b1c <EffectSpark_Draw+0x61c>
     b08:	468022a0 	cvt.s.w	$f10,$f4
     b0c:	3c014f80 	lui	at,0x4f80
     b10:	44814000 	mtc1	at,$f8
     b14:	00000000 	nop
     b18:	46085280 	add.s	$f10,$f10,$f8
     b1c:	46125181 	sub.s	$f6,$f10,$f18
     b20:	240f0001 	li	t7,1
     b24:	46003102 	mul.s	$f4,$f6,$f0
     b28:	46122200 	add.s	$f8,$f4,$f18
     b2c:	444ef800 	cfc1	t6,$31
     b30:	44cff800 	ctc1	t7,$31
     b34:	00000000 	nop
     b38:	460042a4 	cvt.w.s	$f10,$f8
     b3c:	444ff800 	cfc1	t7,$31
     b40:	00000000 	nop
     b44:	31ef0078 	andi	t7,t7,0x78
     b48:	11e00012 	beqz	t7,b94 <EffectSpark_Draw+0x694>
     b4c:	3c014f00 	lui	at,0x4f00
     b50:	44815000 	mtc1	at,$f10
     b54:	240f0001 	li	t7,1
     b58:	460a4281 	sub.s	$f10,$f8,$f10
     b5c:	44cff800 	ctc1	t7,$31
     b60:	00000000 	nop
     b64:	460052a4 	cvt.w.s	$f10,$f10
     b68:	444ff800 	cfc1	t7,$31
     b6c:	00000000 	nop
     b70:	31ef0078 	andi	t7,t7,0x78
     b74:	15e00005 	bnez	t7,b8c <EffectSpark_Draw+0x68c>
     b78:	00000000 	nop
     b7c:	440f5000 	mfc1	t7,$f10
     b80:	3c018000 	lui	at,0x8000
     b84:	10000007 	b	ba4 <EffectSpark_Draw+0x6a4>
     b88:	01e17825 	or	t7,t7,at
     b8c:	10000005 	b	ba4 <EffectSpark_Draw+0x6a4>
     b90:	240fffff 	li	t7,-1
     b94:	440f5000 	mfc1	t7,$f10
     b98:	00000000 	nop
     b9c:	05e0fffb 	bltz	t7,b8c <EffectSpark_Draw+0x68c>
     ba0:	00000000 	nop
     ba4:	a3af01cf 	sb	t7,463(sp)
     ba8:	92f804a1 	lbu	t8,1185(s7)
     bac:	44cef800 	ctc1	t6,$31
     bb0:	44983000 	mtc1	t8,$f6
     bb4:	07010005 	bgez	t8,bcc <EffectSpark_Draw+0x6cc>
     bb8:	468030a0 	cvt.s.w	$f2,$f6
     bbc:	3c014f80 	lui	at,0x4f80
     bc0:	44812000 	mtc1	at,$f4
     bc4:	00000000 	nop
     bc8:	46041080 	add.s	$f2,$f2,$f4
     bcc:	92f904b1 	lbu	t9,1201(s7)
     bd0:	44994000 	mtc1	t9,$f8
     bd4:	07210005 	bgez	t9,bec <EffectSpark_Draw+0x6ec>
     bd8:	468042a0 	cvt.s.w	$f10,$f8
     bdc:	3c014f80 	lui	at,0x4f80
     be0:	44813000 	mtc1	at,$f6
     be4:	00000000 	nop
     be8:	46065280 	add.s	$f10,$f10,$f6
     bec:	46025101 	sub.s	$f4,$f10,$f2
     bf0:	24090001 	li	t1,1
     bf4:	46002202 	mul.s	$f8,$f4,$f0
     bf8:	46024180 	add.s	$f6,$f8,$f2
     bfc:	4448f800 	cfc1	t0,$31
     c00:	44c9f800 	ctc1	t1,$31
     c04:	00000000 	nop
     c08:	460032a4 	cvt.w.s	$f10,$f6
     c0c:	4449f800 	cfc1	t1,$31
     c10:	00000000 	nop
     c14:	31290078 	andi	t1,t1,0x78
     c18:	11200012 	beqz	t1,c64 <EffectSpark_Draw+0x764>
     c1c:	3c014f00 	lui	at,0x4f00
     c20:	44815000 	mtc1	at,$f10
     c24:	24090001 	li	t1,1
     c28:	460a3281 	sub.s	$f10,$f6,$f10
     c2c:	44c9f800 	ctc1	t1,$31
     c30:	00000000 	nop
     c34:	460052a4 	cvt.w.s	$f10,$f10
     c38:	4449f800 	cfc1	t1,$31
     c3c:	00000000 	nop
     c40:	31290078 	andi	t1,t1,0x78
     c44:	15200005 	bnez	t1,c5c <EffectSpark_Draw+0x75c>
     c48:	00000000 	nop
     c4c:	44095000 	mfc1	t1,$f10
     c50:	3c018000 	lui	at,0x8000
     c54:	10000007 	b	c74 <EffectSpark_Draw+0x774>
     c58:	01214825 	or	t1,t1,at
     c5c:	10000005 	b	c74 <EffectSpark_Draw+0x774>
     c60:	2409ffff 	li	t1,-1
     c64:	44095000 	mfc1	t1,$f10
     c68:	00000000 	nop
     c6c:	0520fffb 	bltz	t1,c5c <EffectSpark_Draw+0x75c>
     c70:	00000000 	nop
     c74:	a3a901ce 	sb	t1,462(sp)
     c78:	92ea04a2 	lbu	t2,1186(s7)
     c7c:	44c8f800 	ctc1	t0,$31
     c80:	448a2000 	mtc1	t2,$f4
     c84:	05410005 	bgez	t2,c9c <EffectSpark_Draw+0x79c>
     c88:	46802320 	cvt.s.w	$f12,$f4
     c8c:	3c014f80 	lui	at,0x4f80
     c90:	44814000 	mtc1	at,$f8
     c94:	00000000 	nop
     c98:	46086300 	add.s	$f12,$f12,$f8
     c9c:	92eb04b2 	lbu	t3,1202(s7)
     ca0:	448b3000 	mtc1	t3,$f6
     ca4:	05610005 	bgez	t3,cbc <EffectSpark_Draw+0x7bc>
     ca8:	468032a0 	cvt.s.w	$f10,$f6
     cac:	3c014f80 	lui	at,0x4f80
     cb0:	44812000 	mtc1	at,$f4
     cb4:	00000000 	nop
     cb8:	46045280 	add.s	$f10,$f10,$f4
     cbc:	460c5201 	sub.s	$f8,$f10,$f12
     cc0:	240d0001 	li	t5,1
     cc4:	46004182 	mul.s	$f6,$f8,$f0
     cc8:	460c3100 	add.s	$f4,$f6,$f12
     ccc:	444cf800 	cfc1	t4,$31
     cd0:	44cdf800 	ctc1	t5,$31
     cd4:	00000000 	nop
     cd8:	460022a4 	cvt.w.s	$f10,$f4
     cdc:	444df800 	cfc1	t5,$31
     ce0:	00000000 	nop
     ce4:	31ad0078 	andi	t5,t5,0x78
     ce8:	11a00012 	beqz	t5,d34 <EffectSpark_Draw+0x834>
     cec:	3c014f00 	lui	at,0x4f00
     cf0:	44815000 	mtc1	at,$f10
     cf4:	240d0001 	li	t5,1
     cf8:	460a2281 	sub.s	$f10,$f4,$f10
     cfc:	44cdf800 	ctc1	t5,$31
     d00:	00000000 	nop
     d04:	460052a4 	cvt.w.s	$f10,$f10
     d08:	444df800 	cfc1	t5,$31
     d0c:	00000000 	nop
     d10:	31ad0078 	andi	t5,t5,0x78
     d14:	15a00005 	bnez	t5,d2c <EffectSpark_Draw+0x82c>
     d18:	00000000 	nop
     d1c:	440d5000 	mfc1	t5,$f10
     d20:	3c018000 	lui	at,0x8000
     d24:	10000007 	b	d44 <EffectSpark_Draw+0x844>
     d28:	01a16825 	or	t5,t5,at
     d2c:	10000005 	b	d44 <EffectSpark_Draw+0x844>
     d30:	240dffff 	li	t5,-1
     d34:	440d5000 	mfc1	t5,$f10
     d38:	00000000 	nop
     d3c:	05a0fffb 	bltz	t5,d2c <EffectSpark_Draw+0x82c>
     d40:	00000000 	nop
     d44:	a3ad01cd 	sb	t5,461(sp)
     d48:	92ee04a3 	lbu	t6,1187(s7)
     d4c:	44ccf800 	ctc1	t4,$31
     d50:	448e4000 	mtc1	t6,$f8
     d54:	05c10005 	bgez	t6,d6c <EffectSpark_Draw+0x86c>
     d58:	468043a0 	cvt.s.w	$f14,$f8
     d5c:	3c014f80 	lui	at,0x4f80
     d60:	44813000 	mtc1	at,$f6
     d64:	00000000 	nop
     d68:	46067380 	add.s	$f14,$f14,$f6
     d6c:	92ef04b3 	lbu	t7,1203(s7)
     d70:	448f2000 	mtc1	t7,$f4
     d74:	05e10005 	bgez	t7,d8c <EffectSpark_Draw+0x88c>
     d78:	468022a0 	cvt.s.w	$f10,$f4
     d7c:	3c014f80 	lui	at,0x4f80
     d80:	44814000 	mtc1	at,$f8
     d84:	00000000 	nop
     d88:	46085280 	add.s	$f10,$f10,$f8
     d8c:	460e5181 	sub.s	$f6,$f10,$f14
     d90:	24190001 	li	t9,1
     d94:	46003102 	mul.s	$f4,$f6,$f0
     d98:	460e2200 	add.s	$f8,$f4,$f14
     d9c:	4458f800 	cfc1	t8,$31
     da0:	44d9f800 	ctc1	t9,$31
     da4:	00000000 	nop
     da8:	460042a4 	cvt.w.s	$f10,$f8
     dac:	4459f800 	cfc1	t9,$31
     db0:	00000000 	nop
     db4:	33390078 	andi	t9,t9,0x78
     db8:	13200012 	beqz	t9,e04 <EffectSpark_Draw+0x904>
     dbc:	3c014f00 	lui	at,0x4f00
     dc0:	44815000 	mtc1	at,$f10
     dc4:	24190001 	li	t9,1
     dc8:	460a4281 	sub.s	$f10,$f8,$f10
     dcc:	44d9f800 	ctc1	t9,$31
     dd0:	00000000 	nop
     dd4:	460052a4 	cvt.w.s	$f10,$f10
     dd8:	4459f800 	cfc1	t9,$31
     ddc:	00000000 	nop
     de0:	33390078 	andi	t9,t9,0x78
     de4:	17200005 	bnez	t9,dfc <EffectSpark_Draw+0x8fc>
     de8:	00000000 	nop
     dec:	44195000 	mfc1	t9,$f10
     df0:	3c018000 	lui	at,0x8000
     df4:	10000007 	b	e14 <EffectSpark_Draw+0x914>
     df8:	0321c825 	or	t9,t9,at
     dfc:	10000005 	b	e14 <EffectSpark_Draw+0x914>
     e00:	2419ffff 	li	t9,-1
     e04:	44195000 	mfc1	t9,$f10
     e08:	00000000 	nop
     e0c:	0720fffb 	bltz	t9,dfc <EffectSpark_Draw+0x8fc>
     e10:	00000000 	nop
     e14:	a3b901cc 	sb	t9,460(sp)
     e18:	92e804a4 	lbu	t0,1188(s7)
     e1c:	44d8f800 	ctc1	t8,$31
     e20:	44883000 	mtc1	t0,$f6
     e24:	05010005 	bgez	t0,e3c <EffectSpark_Draw+0x93c>
     e28:	46803420 	cvt.s.w	$f16,$f6
     e2c:	3c014f80 	lui	at,0x4f80
     e30:	44812000 	mtc1	at,$f4
     e34:	00000000 	nop
     e38:	46048400 	add.s	$f16,$f16,$f4
     e3c:	92e904b4 	lbu	t1,1204(s7)
     e40:	44894000 	mtc1	t1,$f8
     e44:	05210005 	bgez	t1,e5c <EffectSpark_Draw+0x95c>
     e48:	468042a0 	cvt.s.w	$f10,$f8
     e4c:	3c014f80 	lui	at,0x4f80
     e50:	44813000 	mtc1	at,$f6
     e54:	00000000 	nop
     e58:	46065280 	add.s	$f10,$f10,$f6
     e5c:	46105101 	sub.s	$f4,$f10,$f16
     e60:	240b0001 	li	t3,1
     e64:	46002202 	mul.s	$f8,$f4,$f0
     e68:	46104180 	add.s	$f6,$f8,$f16
     e6c:	444af800 	cfc1	t2,$31
     e70:	44cbf800 	ctc1	t3,$31
     e74:	00000000 	nop
     e78:	460032a4 	cvt.w.s	$f10,$f6
     e7c:	444bf800 	cfc1	t3,$31
     e80:	00000000 	nop
     e84:	316b0078 	andi	t3,t3,0x78
     e88:	11600012 	beqz	t3,ed4 <EffectSpark_Draw+0x9d4>
     e8c:	3c014f00 	lui	at,0x4f00
     e90:	44815000 	mtc1	at,$f10
     e94:	240b0001 	li	t3,1
     e98:	460a3281 	sub.s	$f10,$f6,$f10
     e9c:	44cbf800 	ctc1	t3,$31
     ea0:	00000000 	nop
     ea4:	460052a4 	cvt.w.s	$f10,$f10
     ea8:	444bf800 	cfc1	t3,$31
     eac:	00000000 	nop
     eb0:	316b0078 	andi	t3,t3,0x78
     eb4:	15600005 	bnez	t3,ecc <EffectSpark_Draw+0x9cc>
     eb8:	00000000 	nop
     ebc:	440b5000 	mfc1	t3,$f10
     ec0:	3c018000 	lui	at,0x8000
     ec4:	10000007 	b	ee4 <EffectSpark_Draw+0x9e4>
     ec8:	01615825 	or	t3,t3,at
     ecc:	10000005 	b	ee4 <EffectSpark_Draw+0x9e4>
     ed0:	240bffff 	li	t3,-1
     ed4:	440b5000 	mfc1	t3,$f10
     ed8:	00000000 	nop
     edc:	0560fffb 	bltz	t3,ecc <EffectSpark_Draw+0x9cc>
     ee0:	00000000 	nop
     ee4:	a3ab01cb 	sb	t3,459(sp)
     ee8:	92ec04a5 	lbu	t4,1189(s7)
     eec:	44caf800 	ctc1	t2,$31
     ef0:	448c2000 	mtc1	t4,$f4
     ef4:	05810005 	bgez	t4,f0c <EffectSpark_Draw+0xa0c>
     ef8:	468024a0 	cvt.s.w	$f18,$f4
     efc:	3c014f80 	lui	at,0x4f80
     f00:	44814000 	mtc1	at,$f8
     f04:	00000000 	nop
     f08:	46089480 	add.s	$f18,$f18,$f8
     f0c:	92ed04b5 	lbu	t5,1205(s7)
     f10:	448d3000 	mtc1	t5,$f6
     f14:	05a10005 	bgez	t5,f2c <EffectSpark_Draw+0xa2c>
     f18:	468032a0 	cvt.s.w	$f10,$f6
     f1c:	3c014f80 	lui	at,0x4f80
     f20:	44812000 	mtc1	at,$f4
     f24:	00000000 	nop
     f28:	46045280 	add.s	$f10,$f10,$f4
     f2c:	46125201 	sub.s	$f8,$f10,$f18
     f30:	240f0001 	li	t7,1
     f34:	46004182 	mul.s	$f6,$f8,$f0
     f38:	46123100 	add.s	$f4,$f6,$f18
     f3c:	444ef800 	cfc1	t6,$31
     f40:	44cff800 	ctc1	t7,$31
     f44:	00000000 	nop
     f48:	460022a4 	cvt.w.s	$f10,$f4
     f4c:	444ff800 	cfc1	t7,$31
     f50:	00000000 	nop
     f54:	31ef0078 	andi	t7,t7,0x78
     f58:	11e00012 	beqz	t7,fa4 <EffectSpark_Draw+0xaa4>
     f5c:	3c014f00 	lui	at,0x4f00
     f60:	44815000 	mtc1	at,$f10
     f64:	240f0001 	li	t7,1
     f68:	460a2281 	sub.s	$f10,$f4,$f10
     f6c:	44cff800 	ctc1	t7,$31
     f70:	00000000 	nop
     f74:	460052a4 	cvt.w.s	$f10,$f10
     f78:	444ff800 	cfc1	t7,$31
     f7c:	00000000 	nop
     f80:	31ef0078 	andi	t7,t7,0x78
     f84:	15e00005 	bnez	t7,f9c <EffectSpark_Draw+0xa9c>
     f88:	00000000 	nop
     f8c:	440f5000 	mfc1	t7,$f10
     f90:	3c018000 	lui	at,0x8000
     f94:	10000007 	b	fb4 <EffectSpark_Draw+0xab4>
     f98:	01e17825 	or	t7,t7,at
     f9c:	10000005 	b	fb4 <EffectSpark_Draw+0xab4>
     fa0:	240fffff 	li	t7,-1
     fa4:	440f5000 	mfc1	t7,$f10
     fa8:	00000000 	nop
     fac:	05e0fffb 	bltz	t7,f9c <EffectSpark_Draw+0xa9c>
     fb0:	00000000 	nop
     fb4:	a3af01ca 	sb	t7,458(sp)
     fb8:	92f804a6 	lbu	t8,1190(s7)
     fbc:	44cef800 	ctc1	t6,$31
     fc0:	44984000 	mtc1	t8,$f8
     fc4:	07010005 	bgez	t8,fdc <EffectSpark_Draw+0xadc>
     fc8:	468040a0 	cvt.s.w	$f2,$f8
     fcc:	3c014f80 	lui	at,0x4f80
     fd0:	44813000 	mtc1	at,$f6
     fd4:	00000000 	nop
     fd8:	46061080 	add.s	$f2,$f2,$f6
     fdc:	92f904b6 	lbu	t9,1206(s7)
     fe0:	44992000 	mtc1	t9,$f4
     fe4:	07210005 	bgez	t9,ffc <EffectSpark_Draw+0xafc>
     fe8:	468022a0 	cvt.s.w	$f10,$f4
     fec:	3c014f80 	lui	at,0x4f80
     ff0:	44814000 	mtc1	at,$f8
     ff4:	00000000 	nop
     ff8:	46085280 	add.s	$f10,$f10,$f8
     ffc:	46025181 	sub.s	$f6,$f10,$f2
    1000:	24090001 	li	t1,1
    1004:	46003102 	mul.s	$f4,$f6,$f0
    1008:	46022200 	add.s	$f8,$f4,$f2
    100c:	4448f800 	cfc1	t0,$31
    1010:	44c9f800 	ctc1	t1,$31
    1014:	00000000 	nop
    1018:	460042a4 	cvt.w.s	$f10,$f8
    101c:	4449f800 	cfc1	t1,$31
    1020:	00000000 	nop
    1024:	31290078 	andi	t1,t1,0x78
    1028:	11200012 	beqz	t1,1074 <EffectSpark_Draw+0xb74>
    102c:	3c014f00 	lui	at,0x4f00
    1030:	44815000 	mtc1	at,$f10
    1034:	24090001 	li	t1,1
    1038:	460a4281 	sub.s	$f10,$f8,$f10
    103c:	44c9f800 	ctc1	t1,$31
    1040:	00000000 	nop
    1044:	460052a4 	cvt.w.s	$f10,$f10
    1048:	4449f800 	cfc1	t1,$31
    104c:	00000000 	nop
    1050:	31290078 	andi	t1,t1,0x78
    1054:	15200005 	bnez	t1,106c <EffectSpark_Draw+0xb6c>
    1058:	00000000 	nop
    105c:	44095000 	mfc1	t1,$f10
    1060:	3c018000 	lui	at,0x8000
    1064:	10000007 	b	1084 <EffectSpark_Draw+0xb84>
    1068:	01214825 	or	t1,t1,at
    106c:	10000005 	b	1084 <EffectSpark_Draw+0xb84>
    1070:	2409ffff 	li	t1,-1
    1074:	44095000 	mfc1	t1,$f10
    1078:	00000000 	nop
    107c:	0520fffb 	bltz	t1,106c <EffectSpark_Draw+0xb6c>
    1080:	00000000 	nop
    1084:	a3a901c9 	sb	t1,457(sp)
    1088:	92ea04a7 	lbu	t2,1191(s7)
    108c:	44c8f800 	ctc1	t0,$31
    1090:	448a3000 	mtc1	t2,$f6
    1094:	05410005 	bgez	t2,10ac <EffectSpark_Draw+0xbac>
    1098:	46803320 	cvt.s.w	$f12,$f6
    109c:	3c014f80 	lui	at,0x4f80
    10a0:	44812000 	mtc1	at,$f4
    10a4:	00000000 	nop
    10a8:	46046300 	add.s	$f12,$f12,$f4
    10ac:	92eb04b7 	lbu	t3,1207(s7)
    10b0:	448b4000 	mtc1	t3,$f8
    10b4:	05610005 	bgez	t3,10cc <EffectSpark_Draw+0xbcc>
    10b8:	468042a0 	cvt.s.w	$f10,$f8
    10bc:	3c014f80 	lui	at,0x4f80
    10c0:	44813000 	mtc1	at,$f6
    10c4:	00000000 	nop
    10c8:	46065280 	add.s	$f10,$f10,$f6
    10cc:	460c5101 	sub.s	$f4,$f10,$f12
    10d0:	240d0001 	li	t5,1
    10d4:	46002202 	mul.s	$f8,$f4,$f0
    10d8:	460c4180 	add.s	$f6,$f8,$f12
    10dc:	444cf800 	cfc1	t4,$31
    10e0:	44cdf800 	ctc1	t5,$31
    10e4:	00000000 	nop
    10e8:	460032a4 	cvt.w.s	$f10,$f6
    10ec:	444df800 	cfc1	t5,$31
    10f0:	00000000 	nop
    10f4:	31ad0078 	andi	t5,t5,0x78
    10f8:	11a00012 	beqz	t5,1144 <EffectSpark_Draw+0xc44>
    10fc:	3c014f00 	lui	at,0x4f00
    1100:	44815000 	mtc1	at,$f10
    1104:	240d0001 	li	t5,1
    1108:	460a3281 	sub.s	$f10,$f6,$f10
    110c:	44cdf800 	ctc1	t5,$31
    1110:	00000000 	nop
    1114:	460052a4 	cvt.w.s	$f10,$f10
    1118:	444df800 	cfc1	t5,$31
    111c:	00000000 	nop
    1120:	31ad0078 	andi	t5,t5,0x78
    1124:	15a00005 	bnez	t5,113c <EffectSpark_Draw+0xc3c>
    1128:	00000000 	nop
    112c:	440d5000 	mfc1	t5,$f10
    1130:	3c018000 	lui	at,0x8000
    1134:	10000007 	b	1154 <EffectSpark_Draw+0xc54>
    1138:	01a16825 	or	t5,t5,at
    113c:	10000005 	b	1154 <EffectSpark_Draw+0xc54>
    1140:	240dffff 	li	t5,-1
    1144:	440d5000 	mfc1	t5,$f10
    1148:	00000000 	nop
    114c:	05a0fffb 	bltz	t5,113c <EffectSpark_Draw+0xc3c>
    1150:	00000000 	nop
    1154:	a3ad01c8 	sb	t5,456(sp)
    1158:	92ee04a8 	lbu	t6,1192(s7)
    115c:	44ccf800 	ctc1	t4,$31
    1160:	448e2000 	mtc1	t6,$f4
    1164:	05c10005 	bgez	t6,117c <EffectSpark_Draw+0xc7c>
    1168:	468023a0 	cvt.s.w	$f14,$f4
    116c:	3c014f80 	lui	at,0x4f80
    1170:	44814000 	mtc1	at,$f8
    1174:	00000000 	nop
    1178:	46087380 	add.s	$f14,$f14,$f8
    117c:	92ef04b8 	lbu	t7,1208(s7)
    1180:	448f3000 	mtc1	t7,$f6
    1184:	05e10005 	bgez	t7,119c <EffectSpark_Draw+0xc9c>
    1188:	468032a0 	cvt.s.w	$f10,$f6
    118c:	3c014f80 	lui	at,0x4f80
    1190:	44812000 	mtc1	at,$f4
    1194:	00000000 	nop
    1198:	46045280 	add.s	$f10,$f10,$f4
    119c:	460e5201 	sub.s	$f8,$f10,$f14
    11a0:	24190001 	li	t9,1
    11a4:	46004182 	mul.s	$f6,$f8,$f0
    11a8:	460e3100 	add.s	$f4,$f6,$f14
    11ac:	4458f800 	cfc1	t8,$31
    11b0:	44d9f800 	ctc1	t9,$31
    11b4:	00000000 	nop
    11b8:	460022a4 	cvt.w.s	$f10,$f4
    11bc:	4459f800 	cfc1	t9,$31
    11c0:	00000000 	nop
    11c4:	33390078 	andi	t9,t9,0x78
    11c8:	13200012 	beqz	t9,1214 <EffectSpark_Draw+0xd14>
    11cc:	3c014f00 	lui	at,0x4f00
    11d0:	44815000 	mtc1	at,$f10
    11d4:	24190001 	li	t9,1
    11d8:	460a2281 	sub.s	$f10,$f4,$f10
    11dc:	44d9f800 	ctc1	t9,$31
    11e0:	00000000 	nop
    11e4:	460052a4 	cvt.w.s	$f10,$f10
    11e8:	4459f800 	cfc1	t9,$31
    11ec:	00000000 	nop
    11f0:	33390078 	andi	t9,t9,0x78
    11f4:	17200005 	bnez	t9,120c <EffectSpark_Draw+0xd0c>
    11f8:	00000000 	nop
    11fc:	44195000 	mfc1	t9,$f10
    1200:	3c018000 	lui	at,0x8000
    1204:	10000007 	b	1224 <EffectSpark_Draw+0xd24>
    1208:	0321c825 	or	t9,t9,at
    120c:	10000005 	b	1224 <EffectSpark_Draw+0xd24>
    1210:	2419ffff 	li	t9,-1
    1214:	44195000 	mfc1	t9,$f10
    1218:	00000000 	nop
    121c:	0720fffb 	bltz	t9,120c <EffectSpark_Draw+0xd0c>
    1220:	00000000 	nop
    1224:	a3b901c7 	sb	t9,455(sp)
    1228:	92e804a9 	lbu	t0,1193(s7)
    122c:	44d8f800 	ctc1	t8,$31
    1230:	3c014f80 	lui	at,0x4f80
    1234:	44884000 	mtc1	t0,$f8
    1238:	05010004 	bgez	t0,124c <EffectSpark_Draw+0xd4c>
    123c:	46804420 	cvt.s.w	$f16,$f8
    1240:	44813000 	mtc1	at,$f6
    1244:	00000000 	nop
    1248:	46068400 	add.s	$f16,$f16,$f6
    124c:	92e904b9 	lbu	t1,1209(s7)
    1250:	3c014f80 	lui	at,0x4f80
    1254:	44892000 	mtc1	t1,$f4
    1258:	05210004 	bgez	t1,126c <EffectSpark_Draw+0xd6c>
    125c:	468022a0 	cvt.s.w	$f10,$f4
    1260:	44814000 	mtc1	at,$f8
    1264:	00000000 	nop
    1268:	46085280 	add.s	$f10,$f10,$f8
    126c:	46105181 	sub.s	$f6,$f10,$f16
    1270:	240b0001 	li	t3,1
    1274:	3c014f00 	lui	at,0x4f00
    1278:	46003102 	mul.s	$f4,$f6,$f0
    127c:	46102200 	add.s	$f8,$f4,$f16
    1280:	444af800 	cfc1	t2,$31
    1284:	44cbf800 	ctc1	t3,$31
    1288:	00000000 	nop
    128c:	460042a4 	cvt.w.s	$f10,$f8
    1290:	444bf800 	cfc1	t3,$31
    1294:	00000000 	nop
    1298:	316b0078 	andi	t3,t3,0x78
    129c:	51600013 	beqzl	t3,12ec <EffectSpark_Draw+0xdec>
    12a0:	440b5000 	mfc1	t3,$f10
    12a4:	44815000 	mtc1	at,$f10
    12a8:	240b0001 	li	t3,1
    12ac:	460a4281 	sub.s	$f10,$f8,$f10
    12b0:	44cbf800 	ctc1	t3,$31
    12b4:	00000000 	nop
    12b8:	460052a4 	cvt.w.s	$f10,$f10
    12bc:	444bf800 	cfc1	t3,$31
    12c0:	00000000 	nop
    12c4:	316b0078 	andi	t3,t3,0x78
    12c8:	15600005 	bnez	t3,12e0 <EffectSpark_Draw+0xde0>
    12cc:	00000000 	nop
    12d0:	440b5000 	mfc1	t3,$f10
    12d4:	3c018000 	lui	at,0x8000
    12d8:	10000007 	b	12f8 <EffectSpark_Draw+0xdf8>
    12dc:	01615825 	or	t3,t3,at
    12e0:	10000005 	b	12f8 <EffectSpark_Draw+0xdf8>
    12e4:	240bffff 	li	t3,-1
    12e8:	440b5000 	mfc1	t3,$f10
    12ec:	00000000 	nop
    12f0:	0560fffb 	bltz	t3,12e0 <EffectSpark_Draw+0xde0>
    12f4:	00000000 	nop
    12f8:	a3ab01c6 	sb	t3,454(sp)
    12fc:	92ec04aa 	lbu	t4,1194(s7)
    1300:	44caf800 	ctc1	t2,$31
    1304:	3c014f80 	lui	at,0x4f80
    1308:	448c3000 	mtc1	t4,$f6
    130c:	05810004 	bgez	t4,1320 <EffectSpark_Draw+0xe20>
    1310:	468034a0 	cvt.s.w	$f18,$f6
    1314:	44812000 	mtc1	at,$f4
    1318:	00000000 	nop
    131c:	46049480 	add.s	$f18,$f18,$f4
    1320:	92ed04ba 	lbu	t5,1210(s7)
    1324:	3c014f80 	lui	at,0x4f80
    1328:	448d4000 	mtc1	t5,$f8
    132c:	05a10004 	bgez	t5,1340 <EffectSpark_Draw+0xe40>
    1330:	468042a0 	cvt.s.w	$f10,$f8
    1334:	44813000 	mtc1	at,$f6
    1338:	00000000 	nop
    133c:	46065280 	add.s	$f10,$f10,$f6
    1340:	46125101 	sub.s	$f4,$f10,$f18
    1344:	240f0001 	li	t7,1
    1348:	00026100 	sll	t4,v0,0x4
    134c:	3c014f00 	lui	at,0x4f00
    1350:	46002202 	mul.s	$f8,$f4,$f0
    1354:	006c8021 	addu	s0,v1,t4
    1358:	02e08825 	move	s1,s7
    135c:	24150020 	li	s5,32
    1360:	24140400 	li	s4,1024
    1364:	46124180 	add.s	$f6,$f8,$f18
    1368:	444ef800 	cfc1	t6,$31
    136c:	44cff800 	ctc1	t7,$31
    1370:	00000000 	nop
    1374:	460032a4 	cvt.w.s	$f10,$f6
    1378:	444ff800 	cfc1	t7,$31
    137c:	00000000 	nop
    1380:	31ef0078 	andi	t7,t7,0x78
    1384:	51e00013 	beqzl	t7,13d4 <EffectSpark_Draw+0xed4>
    1388:	440f5000 	mfc1	t7,$f10
    138c:	44815000 	mtc1	at,$f10
    1390:	240f0001 	li	t7,1
    1394:	460a3281 	sub.s	$f10,$f6,$f10
    1398:	44cff800 	ctc1	t7,$31
    139c:	00000000 	nop
    13a0:	460052a4 	cvt.w.s	$f10,$f10
    13a4:	444ff800 	cfc1	t7,$31
    13a8:	00000000 	nop
    13ac:	31ef0078 	andi	t7,t7,0x78
    13b0:	15e00005 	bnez	t7,13c8 <EffectSpark_Draw+0xec8>
    13b4:	00000000 	nop
    13b8:	440f5000 	mfc1	t7,$f10
    13bc:	3c018000 	lui	at,0x8000
    13c0:	10000007 	b	13e0 <EffectSpark_Draw+0xee0>
    13c4:	01e17825 	or	t7,t7,at
    13c8:	10000005 	b	13e0 <EffectSpark_Draw+0xee0>
    13cc:	240fffff 	li	t7,-1
    13d0:	440f5000 	mfc1	t7,$f10
    13d4:	00000000 	nop
    13d8:	05e0fffb 	bltz	t7,13c8 <EffectSpark_Draw+0xec8>
    13dc:	00000000 	nop
    13e0:	a3af01c5 	sb	t7,453(sp)
    13e4:	92f804ab 	lbu	t8,1195(s7)
    13e8:	44cef800 	ctc1	t6,$31
    13ec:	3c014f80 	lui	at,0x4f80
    13f0:	44982000 	mtc1	t8,$f4
    13f4:	07010004 	bgez	t8,1408 <EffectSpark_Draw+0xf08>
    13f8:	468020a0 	cvt.s.w	$f2,$f4
    13fc:	44814000 	mtc1	at,$f8
    1400:	00000000 	nop
    1404:	46081080 	add.s	$f2,$f2,$f8
    1408:	92f904bb 	lbu	t9,1211(s7)
    140c:	3c014f80 	lui	at,0x4f80
    1410:	44993000 	mtc1	t9,$f6
    1414:	07210004 	bgez	t9,1428 <EffectSpark_Draw+0xf28>
    1418:	468032a0 	cvt.s.w	$f10,$f6
    141c:	44812000 	mtc1	at,$f4
    1420:	00000000 	nop
    1424:	46045280 	add.s	$f10,$f10,$f4
    1428:	46025201 	sub.s	$f8,$f10,$f2
    142c:	24090001 	li	t1,1
    1430:	3c014f00 	lui	at,0x4f00
    1434:	46004182 	mul.s	$f6,$f8,$f0
    1438:	46023100 	add.s	$f4,$f6,$f2
    143c:	4448f800 	cfc1	t0,$31
    1440:	44c9f800 	ctc1	t1,$31
    1444:	00000000 	nop
    1448:	460022a4 	cvt.w.s	$f10,$f4
    144c:	4449f800 	cfc1	t1,$31
    1450:	00000000 	nop
    1454:	31290078 	andi	t1,t1,0x78
    1458:	51200013 	beqzl	t1,14a8 <EffectSpark_Draw+0xfa8>
    145c:	44095000 	mfc1	t1,$f10
    1460:	44815000 	mtc1	at,$f10
    1464:	24090001 	li	t1,1
    1468:	460a2281 	sub.s	$f10,$f4,$f10
    146c:	44c9f800 	ctc1	t1,$31
    1470:	00000000 	nop
    1474:	460052a4 	cvt.w.s	$f10,$f10
    1478:	4449f800 	cfc1	t1,$31
    147c:	00000000 	nop
    1480:	31290078 	andi	t1,t1,0x78
    1484:	15200005 	bnez	t1,149c <EffectSpark_Draw+0xf9c>
    1488:	00000000 	nop
    148c:	44095000 	mfc1	t1,$f10
    1490:	3c018000 	lui	at,0x8000
    1494:	10000007 	b	14b4 <EffectSpark_Draw+0xfb4>
    1498:	01214825 	or	t1,t1,at
    149c:	10000005 	b	14b4 <EffectSpark_Draw+0xfb4>
    14a0:	2409ffff 	li	t1,-1
    14a4:	44095000 	mfc1	t1,$f10
    14a8:	00000000 	nop
    14ac:	0520fffb 	bltz	t1,149c <EffectSpark_Draw+0xf9c>
    14b0:	00000000 	nop
    14b4:	a3a901c4 	sb	t1,452(sp)
    14b8:	8eea0008 	lw	t2,8(s7)
    14bc:	44c8f800 	ctc1	t0,$31
    14c0:	00009025 	move	s2,zero
    14c4:	19400082 	blez	t2,16d0 <EffectSpark_Draw+0x11d0>
    14c8:	3c010001 	lui	at,0x1
    14cc:	34211da0 	ori	at,at,0x1da0
    14d0:	02615821 	addu	t3,s3,at
    14d4:	afab004c 	sw	t3,76(sp)
    14d8:	2413ffe0 	li	s3,-32
    14dc:	afa301e4 	sw	v1,484(sp)
    14e0:	27a400ec 	addiu	a0,sp,236
    14e4:	8e250018 	lw	a1,24(s1)
    14e8:	8e26001c 	lw	a2,28(s1)
    14ec:	0c000000 	jal	0 <EffectSpark_Init>
    14f0:	8e270020 	lw	a3,32(s1)
    14f4:	0c000000 	jal	0 <EffectSpark_Init>
    14f8:	00000000 	nop
    14fc:	3c014020 	lui	at,0x4020
    1500:	44814000 	mtc1	at,$f8
    1504:	3c013fc0 	lui	at,0x3fc0
    1508:	44812000 	mtc1	at,$f4
    150c:	46080182 	mul.s	$f6,$f0,$f8
    1510:	3c013c80 	lui	at,0x3c80
    1514:	44814000 	mtc1	at,$f8
    1518:	27a400ac 	addiu	a0,sp,172
    151c:	3c073f80 	lui	a3,0x3f80
    1520:	46043280 	add.s	$f10,$f6,$f4
    1524:	46085082 	mul.s	$f2,$f10,$f8
    1528:	44051000 	mfc1	a1,$f2
    152c:	44061000 	mfc1	a2,$f2
    1530:	0c000000 	jal	0 <EffectSpark_Init>
    1534:	00000000 	nop
    1538:	27a400ec 	addiu	a0,sp,236
    153c:	8fa5004c 	lw	a1,76(sp)
    1540:	0c000000 	jal	0 <EffectSpark_Init>
    1544:	27a6006c 	addiu	a2,sp,108
    1548:	27a4006c 	addiu	a0,sp,108
    154c:	27a500ac 	addiu	a1,sp,172
    1550:	0c000000 	jal	0 <EffectSpark_Init>
    1554:	27a6012c 	addiu	a2,sp,300
    1558:	a6130000 	sh	s3,0(s0)
    155c:	a6130002 	sh	s3,2(s0)
    1560:	a6000004 	sh	zero,4(s0)
    1564:	93ad01d3 	lbu	t5,467(sp)
    1568:	26100040 	addiu	s0,s0,64
    156c:	02c02025 	move	a0,s6
    1570:	a20dffcc 	sb	t5,-52(s0)
    1574:	93ae01d2 	lbu	t6,466(sp)
    1578:	27a5012c 	addiu	a1,sp,300
    157c:	a20effcd 	sb	t6,-51(s0)
    1580:	93af01d1 	lbu	t7,465(sp)
    1584:	a20fffce 	sb	t7,-50(s0)
    1588:	93b801d0 	lbu	t8,464(sp)
    158c:	a600ffc8 	sh	zero,-56(s0)
    1590:	a614ffca 	sh	s4,-54(s0)
    1594:	a600ffc6 	sh	zero,-58(s0)
    1598:	a615ffd0 	sh	s5,-48(s0)
    159c:	a615ffd2 	sh	s5,-46(s0)
    15a0:	a600ffd4 	sh	zero,-44(s0)
    15a4:	a218ffcf 	sb	t8,-49(s0)
    15a8:	93b901cf 	lbu	t9,463(sp)
    15ac:	a219ffdc 	sb	t9,-36(s0)
    15b0:	93a801ce 	lbu	t0,462(sp)
    15b4:	a208ffdd 	sb	t0,-35(s0)
    15b8:	93a901cd 	lbu	t1,461(sp)
    15bc:	a209ffde 	sb	t1,-34(s0)
    15c0:	93aa01cc 	lbu	t2,460(sp)
    15c4:	a614ffd8 	sh	s4,-40(s0)
    15c8:	a600ffda 	sh	zero,-38(s0)
    15cc:	a600ffd6 	sh	zero,-42(s0)
    15d0:	a613ffe0 	sh	s3,-32(s0)
    15d4:	a615ffe2 	sh	s5,-30(s0)
    15d8:	a600ffe4 	sh	zero,-28(s0)
    15dc:	a20affdf 	sb	t2,-33(s0)
    15e0:	93ab01cb 	lbu	t3,459(sp)
    15e4:	a20bffec 	sb	t3,-20(s0)
    15e8:	93ac01ca 	lbu	t4,458(sp)
    15ec:	a20cffed 	sb	t4,-19(s0)
    15f0:	93ad01c9 	lbu	t5,457(sp)
    15f4:	a20dffee 	sb	t5,-18(s0)
    15f8:	93ae01c8 	lbu	t6,456(sp)
    15fc:	a600ffe8 	sh	zero,-24(s0)
    1600:	a600ffea 	sh	zero,-22(s0)
    1604:	a600ffe6 	sh	zero,-26(s0)
    1608:	a615fff0 	sh	s5,-16(s0)
    160c:	a613fff2 	sh	s3,-14(s0)
    1610:	a600fff4 	sh	zero,-12(s0)
    1614:	a20effef 	sb	t6,-17(s0)
    1618:	93af01c7 	lbu	t7,455(sp)
    161c:	a20ffffc 	sb	t7,-4(s0)
    1620:	93b801c6 	lbu	t8,454(sp)
    1624:	a218fffd 	sb	t8,-3(s0)
    1628:	93b901c5 	lbu	t9,453(sp)
    162c:	a219fffe 	sb	t9,-2(s0)
    1630:	93a801c4 	lbu	t0,452(sp)
    1634:	a614fff8 	sh	s4,-8(s0)
    1638:	a614fffa 	sh	s4,-6(s0)
    163c:	a600fff6 	sh	zero,-10(s0)
    1640:	0c000000 	jal	0 <EffectSpark_Init>
    1644:	a208ffff 	sb	t0,-1(s0)
    1648:	10400027 	beqz	v0,16e8 <EffectSpark_Draw+0x11e8>
    164c:	00124980 	sll	t1,s2,0x6
    1650:	8ec402d0 	lw	a0,720(s6)
    1654:	8faa01e4 	lw	t2,484(sp)
    1658:	3c0cda38 	lui	t4,0xda38
    165c:	248b0008 	addiu	t3,a0,8
    1660:	aecb02d0 	sw	t3,720(s6)
    1664:	358c0003 	ori	t4,t4,0x3
    1668:	ac8c0000 	sw	t4,0(a0)
    166c:	ac820004 	sw	v0,4(a0)
    1670:	8ec402d0 	lw	a0,720(s6)
    1674:	3c0e0100 	lui	t6,0x100
    1678:	35ce4008 	ori	t6,t6,0x4008
    167c:	248d0008 	addiu	t5,a0,8
    1680:	aecd02d0 	sw	t5,720(s6)
    1684:	012a2821 	addu	a1,t1,t2
    1688:	ac850004 	sw	a1,4(a0)
    168c:	ac8e0000 	sw	t6,0(a0)
    1690:	8ec402d0 	lw	a0,720(s6)
    1694:	3c180604 	lui	t8,0x604
    1698:	3c190004 	lui	t9,0x4
    169c:	248f0008 	addiu	t7,a0,8
    16a0:	aecf02d0 	sw	t7,720(s6)
    16a4:	37390602 	ori	t9,t9,0x602
    16a8:	37180006 	ori	t8,t8,0x6
    16ac:	ac980000 	sw	t8,0(a0)
    16b0:	ac990004 	sw	t9,4(a0)
    16b4:	8fa801e0 	lw	t0,480(sp)
    16b8:	26520001 	addiu	s2,s2,1
    16bc:	26310024 	addiu	s1,s1,36
    16c0:	8d090008 	lw	t1,8(t0)
    16c4:	0249082a 	slt	at,s2,t1
    16c8:	5420ff86 	bnezl	at,14e4 <EffectSpark_Draw+0xfe4>
    16cc:	27a400ec 	addiu	a0,sp,236
    16d0:	8ec402d0 	lw	a0,720(s6)
    16d4:	3c0be700 	lui	t3,0xe700
    16d8:	248a0008 	addiu	t2,a0,8
    16dc:	aeca02d0 	sw	t2,720(s6)
    16e0:	ac800004 	sw	zero,4(a0)
    16e4:	ac8b0000 	sw	t3,0(a0)
    16e8:	3c060000 	lui	a2,0x0
    16ec:	24c600b4 	addiu	a2,a2,180
    16f0:	27a401ac 	addiu	a0,sp,428
    16f4:	02c02825 	move	a1,s6
    16f8:	0c000000 	jal	0 <EffectSpark_Init>
    16fc:	240701f2 	li	a3,498
    1700:	8fbf0034 	lw	ra,52(sp)
    1704:	8fb00014 	lw	s0,20(sp)
    1708:	8fb10018 	lw	s1,24(sp)
    170c:	8fb2001c 	lw	s2,28(sp)
    1710:	8fb30020 	lw	s3,32(sp)
    1714:	8fb40024 	lw	s4,36(sp)
    1718:	8fb50028 	lw	s5,40(sp)
    171c:	8fb6002c 	lw	s6,44(sp)
    1720:	8fb70030 	lw	s7,48(sp)
    1724:	03e00008 	jr	ra
    1728:	27bd01e8 	addiu	sp,sp,488
    172c:	00000000 	nop
