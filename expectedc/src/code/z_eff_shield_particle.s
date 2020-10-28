
build/src/code/z_eff_shield_particle.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectShieldParticle_Init>:
       0:	27bdffb8 	addiu	sp,sp,-72
       4:	afb3003c 	sw	s3,60(sp)
       8:	afb20038 	sw	s2,56(sp)
       c:	afb10034 	sw	s1,52(sp)
      10:	00808825 	move	s1,a0
      14:	00a09825 	move	s3,a1
      18:	afbf0044 	sw	ra,68(sp)
      1c:	afb40040 	sw	s4,64(sp)
      20:	afb00030 	sw	s0,48(sp)
      24:	f7b80028 	sdc1	$f24,40(sp)
      28:	f7b60020 	sdc1	$f22,32(sp)
      2c:	f7b40018 	sdc1	$f20,24(sp)
      30:	10800081 	beqz	a0,238 <EffectShieldParticle_Init+0x238>
      34:	00809025 	move	s2,a0
      38:	50a00080 	beqzl	a1,23c <EffectShieldParticle_Init+0x23c>
      3c:	8fbf0044 	lw	ra,68(sp)
      40:	90ae0000 	lbu	t6,0(a1)
      44:	31cf00ff 	andi	t7,t6,0xff
      48:	29e10011 	slti	at,t7,17
      4c:	1420000c 	bnez	at,80 <EffectShieldParticle_Init+0x80>
      50:	a08e0180 	sb	t6,384(a0)
      54:	3c040000 	lui	a0,0x0
      58:	0c000000 	jal	0 <EffectShieldParticle_Init>
      5c:	24840000 	addiu	a0,a0,0
      60:	3c040000 	lui	a0,0x0
      64:	0c000000 	jal	0 <EffectShieldParticle_Init>
      68:	24840008 	addiu	a0,a0,8
      6c:	3c040000 	lui	a0,0x0
      70:	0c000000 	jal	0 <EffectShieldParticle_Init>
      74:	24840044 	addiu	a0,a0,68
      78:	10000070 	b	23c <EffectShieldParticle_Init+0x23c>
      7c:	8fbf0044 	lw	ra,68(sp)
      80:	8a790002 	lwl	t9,2(s3)
      84:	9a790005 	lwr	t9,5(s3)
      88:	24140018 	li	s4,24
      8c:	02208025 	move	s0,s1
      90:	aa390182 	swl	t9,386(s1)
      94:	ba390185 	swr	t9,389(s1)
      98:	96790006 	lhu	t9,6(s3)
      9c:	a6390186 	sh	t9,390(s1)
      a0:	8a690008 	lwl	t1,8(s3)
      a4:	9a69000b 	lwr	t1,11(s3)
      a8:	aa290188 	swl	t1,392(s1)
      ac:	ba29018b 	swr	t1,395(s1)
      b0:	8a6b000c 	lwl	t3,12(s3)
      b4:	9a6b000f 	lwr	t3,15(s3)
      b8:	aa2b018c 	swl	t3,396(s1)
      bc:	ba2b018f 	swr	t3,399(s1)
      c0:	8a6d0010 	lwl	t5,16(s3)
      c4:	9a6d0013 	lwr	t5,19(s3)
      c8:	922b0180 	lbu	t3,384(s1)
      cc:	aa2d0190 	swl	t5,400(s1)
      d0:	ba2d0193 	swr	t5,403(s1)
      d4:	8a6f0014 	lwl	t7,20(s3)
      d8:	9a6f0017 	lwr	t7,23(s3)
      dc:	01740019 	multu	t3,s4
      e0:	aa2f0194 	swl	t7,404(s1)
      e4:	ba2f0197 	swr	t7,407(s1)
      e8:	8a790018 	lwl	t9,24(s3)
      ec:	9a79001b 	lwr	t9,27(s3)
      f0:	aa390198 	swl	t9,408(s1)
      f4:	ba39019b 	swr	t9,411(s1)
      f8:	8a69001c 	lwl	t1,28(s3)
      fc:	9a69001f 	lwr	t1,31(s3)
     100:	00006012 	mflo	t4
     104:	022c6821 	addu	t5,s1,t4
     108:	aa29019c 	swl	t1,412(s1)
     10c:	ba29019f 	swr	t1,415(s1)
     110:	c6640020 	lwc1	$f4,32(s3)
     114:	022d082b 	sltu	at,s1,t5
     118:	e62401a0 	swc1	$f4,416(s1)
     11c:	c6660024 	lwc1	$f6,36(s3)
     120:	e62601a8 	swc1	$f6,424(s1)
     124:	c6680028 	lwc1	$f8,40(s3)
     128:	e62801ac 	swc1	$f8,428(s1)
     12c:	926a002c 	lbu	t2,44(s3)
     130:	a22001b1 	sb	zero,433(s1)
     134:	10200025 	beqz	at,1cc <EffectShieldParticle_Init+0x1cc>
     138:	a22a01b0 	sb	t2,432(s1)
     13c:	3c013f00 	lui	at,0x3f00
     140:	4481c000 	mtc1	at,$f24
     144:	3c010000 	lui	at,0x0
     148:	4480a000 	mtc1	zero,$f20
     14c:	c4360080 	lwc1	$f22,128(at)
     150:	0c000000 	jal	0 <EffectShieldParticle_Init>
     154:	00000000 	nop
     158:	c62a01a8 	lwc1	$f10,424(s1)
     15c:	e6140008 	swc1	$f20,8(s0)
     160:	e614000c 	swc1	$f20,12(s0)
     164:	46185082 	mul.s	$f2,$f10,$f24
     168:	e6140010 	swc1	$f20,16(s0)
     16c:	46020402 	mul.s	$f16,$f0,$f2
     170:	46028480 	add.s	$f18,$f16,$f2
     174:	e6120000 	swc1	$f18,0(s0)
     178:	c6040000 	lwc1	$f4,0(s0)
     17c:	0c000000 	jal	0 <EffectShieldParticle_Init>
     180:	e6040004 	swc1	$f4,4(s0)
     184:	46160182 	mul.s	$f6,$f0,$f22
     188:	4600320d 	trunc.w.s	$f8,$f6
     18c:	440f4000 	mfc1	t7,$f8
     190:	0c000000 	jal	0 <EffectShieldParticle_Init>
     194:	a60f0014 	sh	t7,20(s0)
     198:	46160282 	mul.s	$f10,$f0,$f22
     19c:	26100018 	addiu	s0,s0,24
     1a0:	4600540d 	trunc.w.s	$f16,$f10
     1a4:	44198000 	mfc1	t9,$f16
     1a8:	00000000 	nop
     1ac:	a619fffe 	sh	t9,-2(s0)
     1b0:	92480180 	lbu	t0,384(s2)
     1b4:	01140019 	multu	t0,s4
     1b8:	00004812 	mflo	t1
     1bc:	02495021 	addu	t2,s2,t1
     1c0:	020a082b 	sltu	at,s0,t2
     1c4:	1420ffe2 	bnez	at,150 <EffectShieldParticle_Init+0x150>
     1c8:	00000000 	nop
     1cc:	8e6b003c 	lw	t3,60(s3)
     1d0:	24010001 	li	at,1
     1d4:	15610017 	bne	t3,at,234 <EffectShieldParticle_Init+0x234>
     1d8:	ae2b01c4 	sw	t3,452(s1)
     1dc:	a22001b2 	sb	zero,434(s1)
     1e0:	8a6e002e 	lwl	t6,46(s3)
     1e4:	9a6e0031 	lwr	t6,49(s3)
     1e8:	aa2e01b4 	swl	t6,436(s1)
     1ec:	ba2e01b7 	swr	t6,439(s1)
     1f0:	8a6d0032 	lwl	t5,50(s3)
     1f4:	9a6d0035 	lwr	t5,53(s3)
     1f8:	aa2d01b8 	swl	t5,440(s1)
     1fc:	ba2d01bb 	swr	t5,443(s1)
     200:	8a6e0036 	lwl	t6,54(s3)
     204:	9a6e0039 	lwr	t6,57(s3)
     208:	aa2e01bc 	swl	t6,444(s1)
     20c:	0c000000 	jal	0 <EffectShieldParticle_Init>
     210:	ba2e01bf 	swr	t6,447(s1)
     214:	0c000000 	jal	0 <EffectShieldParticle_Init>
     218:	00408025 	move	s0,v0
     21c:	02002025 	move	a0,s0
     220:	244507a8 	addiu	a1,v0,1960
     224:	0c000000 	jal	0 <EffectShieldParticle_Init>
     228:	262601b2 	addiu	a2,s1,434
     22c:	10000002 	b	238 <EffectShieldParticle_Init+0x238>
     230:	ae2201c0 	sw	v0,448(s1)
     234:	ae2001c0 	sw	zero,448(s1)
     238:	8fbf0044 	lw	ra,68(sp)
     23c:	d7b40018 	ldc1	$f20,24(sp)
     240:	d7b60020 	ldc1	$f22,32(sp)
     244:	d7b80028 	ldc1	$f24,40(sp)
     248:	8fb00030 	lw	s0,48(sp)
     24c:	8fb10034 	lw	s1,52(sp)
     250:	8fb20038 	lw	s2,56(sp)
     254:	8fb3003c 	lw	s3,60(sp)
     258:	8fb40040 	lw	s4,64(sp)
     25c:	03e00008 	jr	ra
     260:	27bd0048 	addiu	sp,sp,72

00000264 <EffectShieldParticle_Destroy>:
     264:	27bdffd8 	addiu	sp,sp,-40
     268:	1080001b 	beqz	a0,2d8 <EffectShieldParticle_Destroy+0x74>
     26c:	afbf0014 	sw	ra,20(sp)
     270:	8c8e01c4 	lw	t6,452(a0)
     274:	24010001 	li	at,1
     278:	55c10018 	bnel	t6,at,2dc <EffectShieldParticle_Destroy+0x78>
     27c:	8fbf0014 	lw	ra,20(sp)
     280:	0c000000 	jal	0 <EffectShieldParticle_Init>
     284:	afa40028 	sw	a0,40(sp)
     288:	8fa70028 	lw	a3,40(sp)
     28c:	8c5807a8 	lw	t8,1960(v0)
     290:	8cef01c0 	lw	t7,448(a3)
     294:	15f80007 	bne	t7,t8,2b4 <EffectShieldParticle_Destroy+0x50>
     298:	00000000 	nop
     29c:	0c000000 	jal	0 <EffectShieldParticle_Init>
     2a0:	afa70028 	sw	a3,40(sp)
     2a4:	8fa70028 	lw	a3,40(sp)
     2a8:	8cf901c0 	lw	t9,448(a3)
     2ac:	8f280008 	lw	t0,8(t9)
     2b0:	ac4807a8 	sw	t0,1960(v0)
     2b4:	0c000000 	jal	0 <EffectShieldParticle_Init>
     2b8:	afa70028 	sw	a3,40(sp)
     2bc:	0c000000 	jal	0 <EffectShieldParticle_Init>
     2c0:	afa2001c 	sw	v0,28(sp)
     2c4:	8fa70028 	lw	a3,40(sp)
     2c8:	8fa4001c 	lw	a0,28(sp)
     2cc:	244507a8 	addiu	a1,v0,1960
     2d0:	0c000000 	jal	0 <EffectShieldParticle_Init>
     2d4:	8ce601c0 	lw	a2,448(a3)
     2d8:	8fbf0014 	lw	ra,20(sp)
     2dc:	27bd0028 	addiu	sp,sp,40
     2e0:	03e00008 	jr	ra
     2e4:	00000000 	nop

000002e8 <EffectShieldParticle_Update>:
     2e8:	14800003 	bnez	a0,2f8 <EffectShieldParticle_Update+0x10>
     2ec:	00801025 	move	v0,a0
     2f0:	03e00008 	jr	ra
     2f4:	00001025 	move	v0,zero
     2f8:	908e0180 	lbu	t6,384(a0)
     2fc:	24050018 	li	a1,24
     300:	00801825 	move	v1,a0
     304:	01c50019 	multu	t6,a1
     308:	00007812 	mflo	t7
     30c:	008fc021 	addu	t8,a0,t7
     310:	0098082b 	sltu	at,a0,t8
     314:	50200038 	beqzl	at,3f8 <EffectShieldParticle_Update+0x110>
     318:	8c8a01c4 	lw	t2,452(a0)
     31c:	44801000 	mtc1	zero,$f2
     320:	00000000 	nop
     324:	c4640004 	lwc1	$f4,4(v1)
     328:	c48601a0 	lwc1	$f6,416(a0)
     32c:	46062201 	sub.s	$f8,$f4,$f6
     330:	e4680004 	swc1	$f8,4(v1)
     334:	c46a0004 	lwc1	$f10,4(v1)
     338:	4602503c 	c.lt.s	$f10,$f2
     33c:	00000000 	nop
     340:	45020003 	bc1fl	350 <EffectShieldParticle_Update+0x68>
     344:	c460000c 	lwc1	$f0,12(v1)
     348:	e4620004 	swc1	$f2,4(v1)
     34c:	c460000c 	lwc1	$f0,12(v1)
     350:	4600103c 	c.lt.s	$f2,$f0
     354:	00000000 	nop
     358:	4502000c 	bc1fl	38c <EffectShieldParticle_Update+0xa4>
     35c:	c4640008 	lwc1	$f4,8(v1)
     360:	c49001a0 	lwc1	$f16,416(a0)
     364:	46100481 	sub.s	$f18,$f0,$f16
     368:	e472000c 	swc1	$f18,12(v1)
     36c:	c460000c 	lwc1	$f0,12(v1)
     370:	4602003c 	c.lt.s	$f0,$f2
     374:	00000000 	nop
     378:	45020004 	bc1fl	38c <EffectShieldParticle_Update+0xa4>
     37c:	c4640008 	lwc1	$f4,8(v1)
     380:	e462000c 	swc1	$f2,12(v1)
     384:	c460000c 	lwc1	$f0,12(v1)
     388:	c4640008 	lwc1	$f4,8(v1)
     38c:	c4660004 	lwc1	$f6,4(v1)
     390:	c46a0010 	lwc1	$f10,16(v1)
     394:	46001032 	c.eq.s	$f2,$f0
     398:	46062200 	add.s	$f8,$f4,$f6
     39c:	46005400 	add.s	$f16,$f10,$f0
     3a0:	e4680008 	swc1	$f8,8(v1)
     3a4:	4500000b 	bc1f	3d4 <EffectShieldParticle_Update+0xec>
     3a8:	e4700010 	swc1	$f16,16(v1)
     3ac:	c4640008 	lwc1	$f4,8(v1)
     3b0:	c4660010 	lwc1	$f6,16(v1)
     3b4:	c49201ac 	lwc1	$f18,428(a0)
     3b8:	46062201 	sub.s	$f8,$f4,$f6
     3bc:	4608903c 	c.lt.s	$f18,$f8
     3c0:	00000000 	nop
     3c4:	45020004 	bc1fl	3d8 <EffectShieldParticle_Update+0xf0>
     3c8:	90590180 	lbu	t9,384(v0)
     3cc:	c46a0000 	lwc1	$f10,0(v1)
     3d0:	e46a000c 	swc1	$f10,12(v1)
     3d4:	90590180 	lbu	t9,384(v0)
     3d8:	24630018 	addiu	v1,v1,24
     3dc:	03250019 	multu	t9,a1
     3e0:	00004012 	mflo	t0
     3e4:	00484821 	addu	t1,v0,t0
     3e8:	0069082b 	sltu	at,v1,t1
     3ec:	5420ffce 	bnezl	at,328 <EffectShieldParticle_Update+0x40>
     3f0:	c4640004 	lwc1	$f4,4(v1)
     3f4:	8c8a01c4 	lw	t2,452(a0)
     3f8:	24010001 	li	at,1
     3fc:	00001025 	move	v0,zero
     400:	55410008 	bnel	t2,at,424 <EffectShieldParticle_Update+0x13c>
     404:	908d01b1 	lbu	t5,433(a0)
     408:	848b01be 	lh	t3,446(a0)
     40c:	05610003 	bgez	t3,41c <EffectShieldParticle_Update+0x134>
     410:	000b6043 	sra	t4,t3,0x1
     414:	25610001 	addiu	at,t3,1
     418:	00016043 	sra	t4,at,0x1
     41c:	a48c01be 	sh	t4,446(a0)
     420:	908d01b1 	lbu	t5,433(a0)
     424:	908f01b0 	lbu	t7,432(a0)
     428:	25ae0001 	addiu	t6,t5,1
     42c:	31d800ff 	andi	t8,t6,0xff
     430:	01f8082a 	slt	at,t7,t8
     434:	10200003 	beqz	at,444 <EffectShieldParticle_Update+0x15c>
     438:	a08e01b1 	sb	t6,433(a0)
     43c:	03e00008 	jr	ra
     440:	24020001 	li	v0,1
     444:	03e00008 	jr	ra
     448:	00000000 	nop

0000044c <EffectShieldParticle_GetColors>:
     44c:	27bdfff8 	addiu	sp,sp,-8
     450:	afb00004 	sw	s0,4(sp)
     454:	908e01b0 	lbu	t6,432(a0)
     458:	00c08025 	move	s0,a2
     45c:	3c014f80 	lui	at,0x4f80
     460:	448e2000 	mtc1	t6,$f4
     464:	05c10004 	bgez	t6,478 <EffectShieldParticle_GetColors+0x2c>
     468:	468021a0 	cvt.s.w	$f6,$f4
     46c:	44814000 	mtc1	at,$f8
     470:	00000000 	nop
     474:	46083180 	add.s	$f6,$f6,$f8
     478:	3c013f00 	lui	at,0x3f00
     47c:	44815000 	mtc1	at,$f10
     480:	00000000 	nop
     484:	460a3402 	mul.s	$f16,$f6,$f10
     488:	4600848d 	trunc.w.s	$f18,$f16
     48c:	44029000 	mfc1	v0,$f18
     490:	00000000 	nop
     494:	54400013 	bnezl	v0,4e4 <EffectShieldParticle_GetColors+0x98>
     498:	908901b1 	lbu	t1,433(a0)
     49c:	90980188 	lbu	t8,392(a0)
     4a0:	a0b80000 	sb	t8,0(a1)
     4a4:	90990189 	lbu	t9,393(a0)
     4a8:	a0b90001 	sb	t9,1(a1)
     4ac:	908a018a 	lbu	t2,394(a0)
     4b0:	a0aa0002 	sb	t2,2(a1)
     4b4:	908b018b 	lbu	t3,395(a0)
     4b8:	a0ab0003 	sb	t3,3(a1)
     4bc:	908c018c 	lbu	t4,396(a0)
     4c0:	a20c0000 	sb	t4,0(s0)
     4c4:	908d018d 	lbu	t5,397(a0)
     4c8:	a20d0001 	sb	t5,1(s0)
     4cc:	908e018e 	lbu	t6,398(a0)
     4d0:	a20e0002 	sb	t6,2(s0)
     4d4:	908f018f 	lbu	t7,399(a0)
     4d8:	10000321 	b	1160 <EffectShieldParticle_GetColors+0xd14>
     4dc:	a20f0003 	sb	t7,3(s0)
     4e0:	908901b1 	lbu	t1,433(a0)
     4e4:	0122082a 	slt	at,t1,v0
     4e8:	10200191 	beqz	at,b30 <EffectShieldParticle_GetColors+0x6e4>
     4ec:	01201825 	move	v1,t1
     4f0:	44892000 	mtc1	t1,$f4
     4f4:	44825000 	mtc1	v0,$f10
     4f8:	05210005 	bgez	t1,510 <EffectShieldParticle_GetColors+0xc4>
     4fc:	46802220 	cvt.s.w	$f8,$f4
     500:	3c014f80 	lui	at,0x4f80
     504:	44813000 	mtc1	at,$f6
     508:	00000000 	nop
     50c:	46064200 	add.s	$f8,$f8,$f6
     510:	46805420 	cvt.s.w	$f16,$f10
     514:	90830188 	lbu	v1,392(a0)
     518:	44839000 	mtc1	v1,$f18
     51c:	46104003 	div.s	$f0,$f8,$f16
     520:	04610005 	bgez	v1,538 <EffectShieldParticle_GetColors+0xec>
     524:	46809120 	cvt.s.w	$f4,$f18
     528:	3c014f80 	lui	at,0x4f80
     52c:	44813000 	mtc1	at,$f6
     530:	00000000 	nop
     534:	46062100 	add.s	$f4,$f4,$f6
     538:	90980190 	lbu	t8,400(a0)
     53c:	240b0001 	li	t3,1
     540:	0303c823 	subu	t9,t8,v1
     544:	44995000 	mtc1	t9,$f10
     548:	00000000 	nop
     54c:	46805220 	cvt.s.w	$f8,$f10
     550:	46004402 	mul.s	$f16,$f8,$f0
     554:	46102480 	add.s	$f18,$f4,$f16
     558:	444af800 	cfc1	t2,$31
     55c:	44cbf800 	ctc1	t3,$31
     560:	00000000 	nop
     564:	460091a4 	cvt.w.s	$f6,$f18
     568:	444bf800 	cfc1	t3,$31
     56c:	00000000 	nop
     570:	316b0078 	andi	t3,t3,0x78
     574:	11600012 	beqz	t3,5c0 <EffectShieldParticle_GetColors+0x174>
     578:	3c014f00 	lui	at,0x4f00
     57c:	44813000 	mtc1	at,$f6
     580:	240b0001 	li	t3,1
     584:	46069181 	sub.s	$f6,$f18,$f6
     588:	44cbf800 	ctc1	t3,$31
     58c:	00000000 	nop
     590:	460031a4 	cvt.w.s	$f6,$f6
     594:	444bf800 	cfc1	t3,$31
     598:	00000000 	nop
     59c:	316b0078 	andi	t3,t3,0x78
     5a0:	15600005 	bnez	t3,5b8 <EffectShieldParticle_GetColors+0x16c>
     5a4:	00000000 	nop
     5a8:	440b3000 	mfc1	t3,$f6
     5ac:	3c018000 	lui	at,0x8000
     5b0:	10000007 	b	5d0 <EffectShieldParticle_GetColors+0x184>
     5b4:	01615825 	or	t3,t3,at
     5b8:	10000005 	b	5d0 <EffectShieldParticle_GetColors+0x184>
     5bc:	240bffff 	li	t3,-1
     5c0:	440b3000 	mfc1	t3,$f6
     5c4:	00000000 	nop
     5c8:	0560fffb 	bltz	t3,5b8 <EffectShieldParticle_GetColors+0x16c>
     5cc:	00000000 	nop
     5d0:	a0ab0000 	sb	t3,0(a1)
     5d4:	90860189 	lbu	a2,393(a0)
     5d8:	44caf800 	ctc1	t2,$31
     5dc:	44865000 	mtc1	a2,$f10
     5e0:	04c10005 	bgez	a2,5f8 <EffectShieldParticle_GetColors+0x1ac>
     5e4:	46805220 	cvt.s.w	$f8,$f10
     5e8:	3c014f80 	lui	at,0x4f80
     5ec:	44812000 	mtc1	at,$f4
     5f0:	00000000 	nop
     5f4:	46044200 	add.s	$f8,$f8,$f4
     5f8:	908c0191 	lbu	t4,401(a0)
     5fc:	240f0001 	li	t7,1
     600:	01866823 	subu	t5,t4,a2
     604:	448d8000 	mtc1	t5,$f16
     608:	00000000 	nop
     60c:	468084a0 	cvt.s.w	$f18,$f16
     610:	46009182 	mul.s	$f6,$f18,$f0
     614:	46064280 	add.s	$f10,$f8,$f6
     618:	444ef800 	cfc1	t6,$31
     61c:	44cff800 	ctc1	t7,$31
     620:	00000000 	nop
     624:	46005124 	cvt.w.s	$f4,$f10
     628:	444ff800 	cfc1	t7,$31
     62c:	00000000 	nop
     630:	31ef0078 	andi	t7,t7,0x78
     634:	11e00012 	beqz	t7,680 <EffectShieldParticle_GetColors+0x234>
     638:	3c014f00 	lui	at,0x4f00
     63c:	44812000 	mtc1	at,$f4
     640:	240f0001 	li	t7,1
     644:	46045101 	sub.s	$f4,$f10,$f4
     648:	44cff800 	ctc1	t7,$31
     64c:	00000000 	nop
     650:	46002124 	cvt.w.s	$f4,$f4
     654:	444ff800 	cfc1	t7,$31
     658:	00000000 	nop
     65c:	31ef0078 	andi	t7,t7,0x78
     660:	15e00005 	bnez	t7,678 <EffectShieldParticle_GetColors+0x22c>
     664:	00000000 	nop
     668:	440f2000 	mfc1	t7,$f4
     66c:	3c018000 	lui	at,0x8000
     670:	10000007 	b	690 <EffectShieldParticle_GetColors+0x244>
     674:	01e17825 	or	t7,t7,at
     678:	10000005 	b	690 <EffectShieldParticle_GetColors+0x244>
     67c:	240fffff 	li	t7,-1
     680:	440f2000 	mfc1	t7,$f4
     684:	00000000 	nop
     688:	05e0fffb 	bltz	t7,678 <EffectShieldParticle_GetColors+0x22c>
     68c:	00000000 	nop
     690:	a0af0001 	sb	t7,1(a1)
     694:	9087018a 	lbu	a3,394(a0)
     698:	44cef800 	ctc1	t6,$31
     69c:	44878000 	mtc1	a3,$f16
     6a0:	04e10005 	bgez	a3,6b8 <EffectShieldParticle_GetColors+0x26c>
     6a4:	468084a0 	cvt.s.w	$f18,$f16
     6a8:	3c014f80 	lui	at,0x4f80
     6ac:	44814000 	mtc1	at,$f8
     6b0:	00000000 	nop
     6b4:	46089480 	add.s	$f18,$f18,$f8
     6b8:	90980192 	lbu	t8,402(a0)
     6bc:	240b0001 	li	t3,1
     6c0:	0307c823 	subu	t9,t8,a3
     6c4:	44993000 	mtc1	t9,$f6
     6c8:	00000000 	nop
     6cc:	468032a0 	cvt.s.w	$f10,$f6
     6d0:	46005102 	mul.s	$f4,$f10,$f0
     6d4:	46049400 	add.s	$f16,$f18,$f4
     6d8:	444af800 	cfc1	t2,$31
     6dc:	44cbf800 	ctc1	t3,$31
     6e0:	00000000 	nop
     6e4:	46008224 	cvt.w.s	$f8,$f16
     6e8:	444bf800 	cfc1	t3,$31
     6ec:	00000000 	nop
     6f0:	316b0078 	andi	t3,t3,0x78
     6f4:	11600012 	beqz	t3,740 <EffectShieldParticle_GetColors+0x2f4>
     6f8:	3c014f00 	lui	at,0x4f00
     6fc:	44814000 	mtc1	at,$f8
     700:	240b0001 	li	t3,1
     704:	46088201 	sub.s	$f8,$f16,$f8
     708:	44cbf800 	ctc1	t3,$31
     70c:	00000000 	nop
     710:	46004224 	cvt.w.s	$f8,$f8
     714:	444bf800 	cfc1	t3,$31
     718:	00000000 	nop
     71c:	316b0078 	andi	t3,t3,0x78
     720:	15600005 	bnez	t3,738 <EffectShieldParticle_GetColors+0x2ec>
     724:	00000000 	nop
     728:	440b4000 	mfc1	t3,$f8
     72c:	3c018000 	lui	at,0x8000
     730:	10000007 	b	750 <EffectShieldParticle_GetColors+0x304>
     734:	01615825 	or	t3,t3,at
     738:	10000005 	b	750 <EffectShieldParticle_GetColors+0x304>
     73c:	240bffff 	li	t3,-1
     740:	440b4000 	mfc1	t3,$f8
     744:	00000000 	nop
     748:	0560fffb 	bltz	t3,738 <EffectShieldParticle_GetColors+0x2ec>
     74c:	00000000 	nop
     750:	a0ab0002 	sb	t3,2(a1)
     754:	9088018b 	lbu	t0,395(a0)
     758:	44caf800 	ctc1	t2,$31
     75c:	3c014f80 	lui	at,0x4f80
     760:	44883000 	mtc1	t0,$f6
     764:	05010004 	bgez	t0,778 <EffectShieldParticle_GetColors+0x32c>
     768:	468032a0 	cvt.s.w	$f10,$f6
     76c:	44819000 	mtc1	at,$f18
     770:	00000000 	nop
     774:	46125280 	add.s	$f10,$f10,$f18
     778:	908c0193 	lbu	t4,403(a0)
     77c:	240f0001 	li	t7,1
     780:	3c014f00 	lui	at,0x4f00
     784:	01886823 	subu	t5,t4,t0
     788:	448d2000 	mtc1	t5,$f4
     78c:	00000000 	nop
     790:	46802420 	cvt.s.w	$f16,$f4
     794:	46008202 	mul.s	$f8,$f16,$f0
     798:	46085180 	add.s	$f6,$f10,$f8
     79c:	444ef800 	cfc1	t6,$31
     7a0:	44cff800 	ctc1	t7,$31
     7a4:	00000000 	nop
     7a8:	460034a4 	cvt.w.s	$f18,$f6
     7ac:	444ff800 	cfc1	t7,$31
     7b0:	00000000 	nop
     7b4:	31ef0078 	andi	t7,t7,0x78
     7b8:	51e00013 	beqzl	t7,808 <EffectShieldParticle_GetColors+0x3bc>
     7bc:	440f9000 	mfc1	t7,$f18
     7c0:	44819000 	mtc1	at,$f18
     7c4:	240f0001 	li	t7,1
     7c8:	46123481 	sub.s	$f18,$f6,$f18
     7cc:	44cff800 	ctc1	t7,$31
     7d0:	00000000 	nop
     7d4:	460094a4 	cvt.w.s	$f18,$f18
     7d8:	444ff800 	cfc1	t7,$31
     7dc:	00000000 	nop
     7e0:	31ef0078 	andi	t7,t7,0x78
     7e4:	15e00005 	bnez	t7,7fc <EffectShieldParticle_GetColors+0x3b0>
     7e8:	00000000 	nop
     7ec:	440f9000 	mfc1	t7,$f18
     7f0:	3c018000 	lui	at,0x8000
     7f4:	10000007 	b	814 <EffectShieldParticle_GetColors+0x3c8>
     7f8:	01e17825 	or	t7,t7,at
     7fc:	10000005 	b	814 <EffectShieldParticle_GetColors+0x3c8>
     800:	240fffff 	li	t7,-1
     804:	440f9000 	mfc1	t7,$f18
     808:	00000000 	nop
     80c:	05e0fffb 	bltz	t7,7fc <EffectShieldParticle_GetColors+0x3b0>
     810:	00000000 	nop
     814:	a0af0003 	sb	t7,3(a1)
     818:	9082018c 	lbu	v0,396(a0)
     81c:	44cef800 	ctc1	t6,$31
     820:	3c014f80 	lui	at,0x4f80
     824:	44822000 	mtc1	v0,$f4
     828:	04410004 	bgez	v0,83c <EffectShieldParticle_GetColors+0x3f0>
     82c:	46802420 	cvt.s.w	$f16,$f4
     830:	44815000 	mtc1	at,$f10
     834:	00000000 	nop
     838:	460a8400 	add.s	$f16,$f16,$f10
     83c:	90980194 	lbu	t8,404(a0)
     840:	240b0001 	li	t3,1
     844:	3c014f00 	lui	at,0x4f00
     848:	0302c823 	subu	t9,t8,v0
     84c:	44994000 	mtc1	t9,$f8
     850:	00000000 	nop
     854:	468041a0 	cvt.s.w	$f6,$f8
     858:	46003482 	mul.s	$f18,$f6,$f0
     85c:	46128100 	add.s	$f4,$f16,$f18
     860:	444af800 	cfc1	t2,$31
     864:	44cbf800 	ctc1	t3,$31
     868:	00000000 	nop
     86c:	460022a4 	cvt.w.s	$f10,$f4
     870:	444bf800 	cfc1	t3,$31
     874:	00000000 	nop
     878:	316b0078 	andi	t3,t3,0x78
     87c:	51600013 	beqzl	t3,8cc <EffectShieldParticle_GetColors+0x480>
     880:	440b5000 	mfc1	t3,$f10
     884:	44815000 	mtc1	at,$f10
     888:	240b0001 	li	t3,1
     88c:	460a2281 	sub.s	$f10,$f4,$f10
     890:	44cbf800 	ctc1	t3,$31
     894:	00000000 	nop
     898:	460052a4 	cvt.w.s	$f10,$f10
     89c:	444bf800 	cfc1	t3,$31
     8a0:	00000000 	nop
     8a4:	316b0078 	andi	t3,t3,0x78
     8a8:	15600005 	bnez	t3,8c0 <EffectShieldParticle_GetColors+0x474>
     8ac:	00000000 	nop
     8b0:	440b5000 	mfc1	t3,$f10
     8b4:	3c018000 	lui	at,0x8000
     8b8:	10000007 	b	8d8 <EffectShieldParticle_GetColors+0x48c>
     8bc:	01615825 	or	t3,t3,at
     8c0:	10000005 	b	8d8 <EffectShieldParticle_GetColors+0x48c>
     8c4:	240bffff 	li	t3,-1
     8c8:	440b5000 	mfc1	t3,$f10
     8cc:	00000000 	nop
     8d0:	0560fffb 	bltz	t3,8c0 <EffectShieldParticle_GetColors+0x474>
     8d4:	00000000 	nop
     8d8:	a20b0000 	sb	t3,0(s0)
     8dc:	9083018d 	lbu	v1,397(a0)
     8e0:	44caf800 	ctc1	t2,$31
     8e4:	3c014f80 	lui	at,0x4f80
     8e8:	44834000 	mtc1	v1,$f8
     8ec:	04610004 	bgez	v1,900 <EffectShieldParticle_GetColors+0x4b4>
     8f0:	468041a0 	cvt.s.w	$f6,$f8
     8f4:	44818000 	mtc1	at,$f16
     8f8:	00000000 	nop
     8fc:	46103180 	add.s	$f6,$f6,$f16
     900:	908c0195 	lbu	t4,405(a0)
     904:	240f0001 	li	t7,1
     908:	3c014f00 	lui	at,0x4f00
     90c:	01836823 	subu	t5,t4,v1
     910:	448d9000 	mtc1	t5,$f18
     914:	00000000 	nop
     918:	46809120 	cvt.s.w	$f4,$f18
     91c:	46002282 	mul.s	$f10,$f4,$f0
     920:	460a3200 	add.s	$f8,$f6,$f10
     924:	444ef800 	cfc1	t6,$31
     928:	44cff800 	ctc1	t7,$31
     92c:	00000000 	nop
     930:	46004424 	cvt.w.s	$f16,$f8
     934:	444ff800 	cfc1	t7,$31
     938:	00000000 	nop
     93c:	31ef0078 	andi	t7,t7,0x78
     940:	51e00013 	beqzl	t7,990 <EffectShieldParticle_GetColors+0x544>
     944:	440f8000 	mfc1	t7,$f16
     948:	44818000 	mtc1	at,$f16
     94c:	240f0001 	li	t7,1
     950:	46104401 	sub.s	$f16,$f8,$f16
     954:	44cff800 	ctc1	t7,$31
     958:	00000000 	nop
     95c:	46008424 	cvt.w.s	$f16,$f16
     960:	444ff800 	cfc1	t7,$31
     964:	00000000 	nop
     968:	31ef0078 	andi	t7,t7,0x78
     96c:	15e00005 	bnez	t7,984 <EffectShieldParticle_GetColors+0x538>
     970:	00000000 	nop
     974:	440f8000 	mfc1	t7,$f16
     978:	3c018000 	lui	at,0x8000
     97c:	10000007 	b	99c <EffectShieldParticle_GetColors+0x550>
     980:	01e17825 	or	t7,t7,at
     984:	10000005 	b	99c <EffectShieldParticle_GetColors+0x550>
     988:	240fffff 	li	t7,-1
     98c:	440f8000 	mfc1	t7,$f16
     990:	00000000 	nop
     994:	05e0fffb 	bltz	t7,984 <EffectShieldParticle_GetColors+0x538>
     998:	00000000 	nop
     99c:	a20f0001 	sb	t7,1(s0)
     9a0:	9085018e 	lbu	a1,398(a0)
     9a4:	44cef800 	ctc1	t6,$31
     9a8:	3c014f80 	lui	at,0x4f80
     9ac:	44859000 	mtc1	a1,$f18
     9b0:	04a10004 	bgez	a1,9c4 <EffectShieldParticle_GetColors+0x578>
     9b4:	46809120 	cvt.s.w	$f4,$f18
     9b8:	44813000 	mtc1	at,$f6
     9bc:	00000000 	nop
     9c0:	46062100 	add.s	$f4,$f4,$f6
     9c4:	90980196 	lbu	t8,406(a0)
     9c8:	240b0001 	li	t3,1
     9cc:	3c014f00 	lui	at,0x4f00
     9d0:	0305c823 	subu	t9,t8,a1
     9d4:	44995000 	mtc1	t9,$f10
     9d8:	00000000 	nop
     9dc:	46805220 	cvt.s.w	$f8,$f10
     9e0:	46004402 	mul.s	$f16,$f8,$f0
     9e4:	46102480 	add.s	$f18,$f4,$f16
     9e8:	444af800 	cfc1	t2,$31
     9ec:	44cbf800 	ctc1	t3,$31
     9f0:	00000000 	nop
     9f4:	460091a4 	cvt.w.s	$f6,$f18
     9f8:	444bf800 	cfc1	t3,$31
     9fc:	00000000 	nop
     a00:	316b0078 	andi	t3,t3,0x78
     a04:	51600013 	beqzl	t3,a54 <EffectShieldParticle_GetColors+0x608>
     a08:	440b3000 	mfc1	t3,$f6
     a0c:	44813000 	mtc1	at,$f6
     a10:	240b0001 	li	t3,1
     a14:	46069181 	sub.s	$f6,$f18,$f6
     a18:	44cbf800 	ctc1	t3,$31
     a1c:	00000000 	nop
     a20:	460031a4 	cvt.w.s	$f6,$f6
     a24:	444bf800 	cfc1	t3,$31
     a28:	00000000 	nop
     a2c:	316b0078 	andi	t3,t3,0x78
     a30:	15600005 	bnez	t3,a48 <EffectShieldParticle_GetColors+0x5fc>
     a34:	00000000 	nop
     a38:	440b3000 	mfc1	t3,$f6
     a3c:	3c018000 	lui	at,0x8000
     a40:	10000007 	b	a60 <EffectShieldParticle_GetColors+0x614>
     a44:	01615825 	or	t3,t3,at
     a48:	10000005 	b	a60 <EffectShieldParticle_GetColors+0x614>
     a4c:	240bffff 	li	t3,-1
     a50:	440b3000 	mfc1	t3,$f6
     a54:	00000000 	nop
     a58:	0560fffb 	bltz	t3,a48 <EffectShieldParticle_GetColors+0x5fc>
     a5c:	00000000 	nop
     a60:	a20b0002 	sb	t3,2(s0)
     a64:	9086018f 	lbu	a2,399(a0)
     a68:	44caf800 	ctc1	t2,$31
     a6c:	3c014f80 	lui	at,0x4f80
     a70:	44865000 	mtc1	a2,$f10
     a74:	04c10004 	bgez	a2,a88 <EffectShieldParticle_GetColors+0x63c>
     a78:	46805220 	cvt.s.w	$f8,$f10
     a7c:	44812000 	mtc1	at,$f4
     a80:	00000000 	nop
     a84:	46044200 	add.s	$f8,$f8,$f4
     a88:	908c0197 	lbu	t4,407(a0)
     a8c:	240f0001 	li	t7,1
     a90:	3c014f00 	lui	at,0x4f00
     a94:	01866823 	subu	t5,t4,a2
     a98:	448d8000 	mtc1	t5,$f16
     a9c:	00000000 	nop
     aa0:	468084a0 	cvt.s.w	$f18,$f16
     aa4:	46009182 	mul.s	$f6,$f18,$f0
     aa8:	46064280 	add.s	$f10,$f8,$f6
     aac:	444ef800 	cfc1	t6,$31
     ab0:	44cff800 	ctc1	t7,$31
     ab4:	00000000 	nop
     ab8:	46005124 	cvt.w.s	$f4,$f10
     abc:	444ff800 	cfc1	t7,$31
     ac0:	00000000 	nop
     ac4:	31ef0078 	andi	t7,t7,0x78
     ac8:	51e00013 	beqzl	t7,b18 <EffectShieldParticle_GetColors+0x6cc>
     acc:	440f2000 	mfc1	t7,$f4
     ad0:	44812000 	mtc1	at,$f4
     ad4:	240f0001 	li	t7,1
     ad8:	46045101 	sub.s	$f4,$f10,$f4
     adc:	44cff800 	ctc1	t7,$31
     ae0:	00000000 	nop
     ae4:	46002124 	cvt.w.s	$f4,$f4
     ae8:	444ff800 	cfc1	t7,$31
     aec:	00000000 	nop
     af0:	31ef0078 	andi	t7,t7,0x78
     af4:	15e00005 	bnez	t7,b0c <EffectShieldParticle_GetColors+0x6c0>
     af8:	00000000 	nop
     afc:	440f2000 	mfc1	t7,$f4
     b00:	3c018000 	lui	at,0x8000
     b04:	10000007 	b	b24 <EffectShieldParticle_GetColors+0x6d8>
     b08:	01e17825 	or	t7,t7,at
     b0c:	10000005 	b	b24 <EffectShieldParticle_GetColors+0x6d8>
     b10:	240fffff 	li	t7,-1
     b14:	440f2000 	mfc1	t7,$f4
     b18:	00000000 	nop
     b1c:	05e0fffb 	bltz	t7,b0c <EffectShieldParticle_GetColors+0x6c0>
     b20:	00000000 	nop
     b24:	44cef800 	ctc1	t6,$31
     b28:	1000018d 	b	1160 <EffectShieldParticle_GetColors+0xd14>
     b2c:	a20f0003 	sb	t7,3(s0)
     b30:	0062c023 	subu	t8,v1,v0
     b34:	44988000 	mtc1	t8,$f16
     b38:	44824000 	mtc1	v0,$f8
     b3c:	90860190 	lbu	a2,400(a0)
     b40:	468084a0 	cvt.s.w	$f18,$f16
     b44:	44865000 	mtc1	a2,$f10
     b48:	468041a0 	cvt.s.w	$f6,$f8
     b4c:	46805120 	cvt.s.w	$f4,$f10
     b50:	04c10005 	bgez	a2,b68 <EffectShieldParticle_GetColors+0x71c>
     b54:	46069003 	div.s	$f0,$f18,$f6
     b58:	3c014f80 	lui	at,0x4f80
     b5c:	44818000 	mtc1	at,$f16
     b60:	00000000 	nop
     b64:	46102100 	add.s	$f4,$f4,$f16
     b68:	90990198 	lbu	t9,408(a0)
     b6c:	240c0001 	li	t4,1
     b70:	03265023 	subu	t2,t9,a2
     b74:	448a4000 	mtc1	t2,$f8
     b78:	00000000 	nop
     b7c:	468044a0 	cvt.s.w	$f18,$f8
     b80:	46009182 	mul.s	$f6,$f18,$f0
     b84:	46062280 	add.s	$f10,$f4,$f6
     b88:	444bf800 	cfc1	t3,$31
     b8c:	44ccf800 	ctc1	t4,$31
     b90:	00000000 	nop
     b94:	46005424 	cvt.w.s	$f16,$f10
     b98:	444cf800 	cfc1	t4,$31
     b9c:	00000000 	nop
     ba0:	318c0078 	andi	t4,t4,0x78
     ba4:	11800012 	beqz	t4,bf0 <EffectShieldParticle_GetColors+0x7a4>
     ba8:	3c014f00 	lui	at,0x4f00
     bac:	44818000 	mtc1	at,$f16
     bb0:	240c0001 	li	t4,1
     bb4:	46105401 	sub.s	$f16,$f10,$f16
     bb8:	44ccf800 	ctc1	t4,$31
     bbc:	00000000 	nop
     bc0:	46008424 	cvt.w.s	$f16,$f16
     bc4:	444cf800 	cfc1	t4,$31
     bc8:	00000000 	nop
     bcc:	318c0078 	andi	t4,t4,0x78
     bd0:	15800005 	bnez	t4,be8 <EffectShieldParticle_GetColors+0x79c>
     bd4:	00000000 	nop
     bd8:	440c8000 	mfc1	t4,$f16
     bdc:	3c018000 	lui	at,0x8000
     be0:	10000007 	b	c00 <EffectShieldParticle_GetColors+0x7b4>
     be4:	01816025 	or	t4,t4,at
     be8:	10000005 	b	c00 <EffectShieldParticle_GetColors+0x7b4>
     bec:	240cffff 	li	t4,-1
     bf0:	440c8000 	mfc1	t4,$f16
     bf4:	00000000 	nop
     bf8:	0580fffb 	bltz	t4,be8 <EffectShieldParticle_GetColors+0x79c>
     bfc:	00000000 	nop
     c00:	a0ac0000 	sb	t4,0(a1)
     c04:	90870191 	lbu	a3,401(a0)
     c08:	44cbf800 	ctc1	t3,$31
     c0c:	44874000 	mtc1	a3,$f8
     c10:	04e10005 	bgez	a3,c28 <EffectShieldParticle_GetColors+0x7dc>
     c14:	468044a0 	cvt.s.w	$f18,$f8
     c18:	3c014f80 	lui	at,0x4f80
     c1c:	44812000 	mtc1	at,$f4
     c20:	00000000 	nop
     c24:	46049480 	add.s	$f18,$f18,$f4
     c28:	908d0199 	lbu	t5,409(a0)
     c2c:	24180001 	li	t8,1
     c30:	01a77023 	subu	t6,t5,a3
     c34:	448e3000 	mtc1	t6,$f6
     c38:	00000000 	nop
     c3c:	468032a0 	cvt.s.w	$f10,$f6
     c40:	46005402 	mul.s	$f16,$f10,$f0
     c44:	46109200 	add.s	$f8,$f18,$f16
     c48:	444ff800 	cfc1	t7,$31
     c4c:	44d8f800 	ctc1	t8,$31
     c50:	00000000 	nop
     c54:	46004124 	cvt.w.s	$f4,$f8
     c58:	4458f800 	cfc1	t8,$31
     c5c:	00000000 	nop
     c60:	33180078 	andi	t8,t8,0x78
     c64:	13000012 	beqz	t8,cb0 <EffectShieldParticle_GetColors+0x864>
     c68:	3c014f00 	lui	at,0x4f00
     c6c:	44812000 	mtc1	at,$f4
     c70:	24180001 	li	t8,1
     c74:	46044101 	sub.s	$f4,$f8,$f4
     c78:	44d8f800 	ctc1	t8,$31
     c7c:	00000000 	nop
     c80:	46002124 	cvt.w.s	$f4,$f4
     c84:	4458f800 	cfc1	t8,$31
     c88:	00000000 	nop
     c8c:	33180078 	andi	t8,t8,0x78
     c90:	17000005 	bnez	t8,ca8 <EffectShieldParticle_GetColors+0x85c>
     c94:	00000000 	nop
     c98:	44182000 	mfc1	t8,$f4
     c9c:	3c018000 	lui	at,0x8000
     ca0:	10000007 	b	cc0 <EffectShieldParticle_GetColors+0x874>
     ca4:	0301c025 	or	t8,t8,at
     ca8:	10000005 	b	cc0 <EffectShieldParticle_GetColors+0x874>
     cac:	2418ffff 	li	t8,-1
     cb0:	44182000 	mfc1	t8,$f4
     cb4:	00000000 	nop
     cb8:	0700fffb 	bltz	t8,ca8 <EffectShieldParticle_GetColors+0x85c>
     cbc:	00000000 	nop
     cc0:	a0b80001 	sb	t8,1(a1)
     cc4:	90880192 	lbu	t0,402(a0)
     cc8:	44cff800 	ctc1	t7,$31
     ccc:	44883000 	mtc1	t0,$f6
     cd0:	05010005 	bgez	t0,ce8 <EffectShieldParticle_GetColors+0x89c>
     cd4:	468032a0 	cvt.s.w	$f10,$f6
     cd8:	3c014f80 	lui	at,0x4f80
     cdc:	44819000 	mtc1	at,$f18
     ce0:	00000000 	nop
     ce4:	46125280 	add.s	$f10,$f10,$f18
     ce8:	9099019a 	lbu	t9,410(a0)
     cec:	240c0001 	li	t4,1
     cf0:	03285023 	subu	t2,t9,t0
     cf4:	448a8000 	mtc1	t2,$f16
     cf8:	00000000 	nop
     cfc:	46808220 	cvt.s.w	$f8,$f16
     d00:	46004102 	mul.s	$f4,$f8,$f0
     d04:	46045180 	add.s	$f6,$f10,$f4
     d08:	444bf800 	cfc1	t3,$31
     d0c:	44ccf800 	ctc1	t4,$31
     d10:	00000000 	nop
     d14:	460034a4 	cvt.w.s	$f18,$f6
     d18:	444cf800 	cfc1	t4,$31
     d1c:	00000000 	nop
     d20:	318c0078 	andi	t4,t4,0x78
     d24:	11800012 	beqz	t4,d70 <EffectShieldParticle_GetColors+0x924>
     d28:	3c014f00 	lui	at,0x4f00
     d2c:	44819000 	mtc1	at,$f18
     d30:	240c0001 	li	t4,1
     d34:	46123481 	sub.s	$f18,$f6,$f18
     d38:	44ccf800 	ctc1	t4,$31
     d3c:	00000000 	nop
     d40:	460094a4 	cvt.w.s	$f18,$f18
     d44:	444cf800 	cfc1	t4,$31
     d48:	00000000 	nop
     d4c:	318c0078 	andi	t4,t4,0x78
     d50:	15800005 	bnez	t4,d68 <EffectShieldParticle_GetColors+0x91c>
     d54:	00000000 	nop
     d58:	440c9000 	mfc1	t4,$f18
     d5c:	3c018000 	lui	at,0x8000
     d60:	10000007 	b	d80 <EffectShieldParticle_GetColors+0x934>
     d64:	01816025 	or	t4,t4,at
     d68:	10000005 	b	d80 <EffectShieldParticle_GetColors+0x934>
     d6c:	240cffff 	li	t4,-1
     d70:	440c9000 	mfc1	t4,$f18
     d74:	00000000 	nop
     d78:	0580fffb 	bltz	t4,d68 <EffectShieldParticle_GetColors+0x91c>
     d7c:	00000000 	nop
     d80:	a0ac0002 	sb	t4,2(a1)
     d84:	90890193 	lbu	t1,403(a0)
     d88:	44cbf800 	ctc1	t3,$31
     d8c:	3c014f80 	lui	at,0x4f80
     d90:	44898000 	mtc1	t1,$f16
     d94:	05210004 	bgez	t1,da8 <EffectShieldParticle_GetColors+0x95c>
     d98:	46808220 	cvt.s.w	$f8,$f16
     d9c:	44815000 	mtc1	at,$f10
     da0:	00000000 	nop
     da4:	460a4200 	add.s	$f8,$f8,$f10
     da8:	908d019b 	lbu	t5,411(a0)
     dac:	24180001 	li	t8,1
     db0:	3c014f00 	lui	at,0x4f00
     db4:	01a97023 	subu	t6,t5,t1
     db8:	448e2000 	mtc1	t6,$f4
     dbc:	00000000 	nop
     dc0:	468021a0 	cvt.s.w	$f6,$f4
     dc4:	46003482 	mul.s	$f18,$f6,$f0
     dc8:	46124400 	add.s	$f16,$f8,$f18
     dcc:	444ff800 	cfc1	t7,$31
     dd0:	44d8f800 	ctc1	t8,$31
     dd4:	00000000 	nop
     dd8:	460082a4 	cvt.w.s	$f10,$f16
     ddc:	4458f800 	cfc1	t8,$31
     de0:	00000000 	nop
     de4:	33180078 	andi	t8,t8,0x78
     de8:	53000013 	beqzl	t8,e38 <EffectShieldParticle_GetColors+0x9ec>
     dec:	44185000 	mfc1	t8,$f10
     df0:	44815000 	mtc1	at,$f10
     df4:	24180001 	li	t8,1
     df8:	460a8281 	sub.s	$f10,$f16,$f10
     dfc:	44d8f800 	ctc1	t8,$31
     e00:	00000000 	nop
     e04:	460052a4 	cvt.w.s	$f10,$f10
     e08:	4458f800 	cfc1	t8,$31
     e0c:	00000000 	nop
     e10:	33180078 	andi	t8,t8,0x78
     e14:	17000005 	bnez	t8,e2c <EffectShieldParticle_GetColors+0x9e0>
     e18:	00000000 	nop
     e1c:	44185000 	mfc1	t8,$f10
     e20:	3c018000 	lui	at,0x8000
     e24:	10000007 	b	e44 <EffectShieldParticle_GetColors+0x9f8>
     e28:	0301c025 	or	t8,t8,at
     e2c:	10000005 	b	e44 <EffectShieldParticle_GetColors+0x9f8>
     e30:	2418ffff 	li	t8,-1
     e34:	44185000 	mfc1	t8,$f10
     e38:	00000000 	nop
     e3c:	0700fffb 	bltz	t8,e2c <EffectShieldParticle_GetColors+0x9e0>
     e40:	00000000 	nop
     e44:	a0b80003 	sb	t8,3(a1)
     e48:	90820194 	lbu	v0,404(a0)
     e4c:	44cff800 	ctc1	t7,$31
     e50:	3c014f80 	lui	at,0x4f80
     e54:	44822000 	mtc1	v0,$f4
     e58:	04410004 	bgez	v0,e6c <EffectShieldParticle_GetColors+0xa20>
     e5c:	468021a0 	cvt.s.w	$f6,$f4
     e60:	44814000 	mtc1	at,$f8
     e64:	00000000 	nop
     e68:	46083180 	add.s	$f6,$f6,$f8
     e6c:	9099019c 	lbu	t9,412(a0)
     e70:	240c0001 	li	t4,1
     e74:	3c014f00 	lui	at,0x4f00
     e78:	03225023 	subu	t2,t9,v0
     e7c:	448a9000 	mtc1	t2,$f18
     e80:	00000000 	nop
     e84:	46809420 	cvt.s.w	$f16,$f18
     e88:	46008282 	mul.s	$f10,$f16,$f0
     e8c:	460a3100 	add.s	$f4,$f6,$f10
     e90:	444bf800 	cfc1	t3,$31
     e94:	44ccf800 	ctc1	t4,$31
     e98:	00000000 	nop
     e9c:	46002224 	cvt.w.s	$f8,$f4
     ea0:	444cf800 	cfc1	t4,$31
     ea4:	00000000 	nop
     ea8:	318c0078 	andi	t4,t4,0x78
     eac:	51800013 	beqzl	t4,efc <EffectShieldParticle_GetColors+0xab0>
     eb0:	440c4000 	mfc1	t4,$f8
     eb4:	44814000 	mtc1	at,$f8
     eb8:	240c0001 	li	t4,1
     ebc:	46082201 	sub.s	$f8,$f4,$f8
     ec0:	44ccf800 	ctc1	t4,$31
     ec4:	00000000 	nop
     ec8:	46004224 	cvt.w.s	$f8,$f8
     ecc:	444cf800 	cfc1	t4,$31
     ed0:	00000000 	nop
     ed4:	318c0078 	andi	t4,t4,0x78
     ed8:	15800005 	bnez	t4,ef0 <EffectShieldParticle_GetColors+0xaa4>
     edc:	00000000 	nop
     ee0:	440c4000 	mfc1	t4,$f8
     ee4:	3c018000 	lui	at,0x8000
     ee8:	10000007 	b	f08 <EffectShieldParticle_GetColors+0xabc>
     eec:	01816025 	or	t4,t4,at
     ef0:	10000005 	b	f08 <EffectShieldParticle_GetColors+0xabc>
     ef4:	240cffff 	li	t4,-1
     ef8:	440c4000 	mfc1	t4,$f8
     efc:	00000000 	nop
     f00:	0580fffb 	bltz	t4,ef0 <EffectShieldParticle_GetColors+0xaa4>
     f04:	00000000 	nop
     f08:	a20c0000 	sb	t4,0(s0)
     f0c:	90830195 	lbu	v1,405(a0)
     f10:	44cbf800 	ctc1	t3,$31
     f14:	3c014f80 	lui	at,0x4f80
     f18:	44839000 	mtc1	v1,$f18
     f1c:	04610004 	bgez	v1,f30 <EffectShieldParticle_GetColors+0xae4>
     f20:	46809420 	cvt.s.w	$f16,$f18
     f24:	44813000 	mtc1	at,$f6
     f28:	00000000 	nop
     f2c:	46068400 	add.s	$f16,$f16,$f6
     f30:	908d019d 	lbu	t5,413(a0)
     f34:	24180001 	li	t8,1
     f38:	3c014f00 	lui	at,0x4f00
     f3c:	01a37023 	subu	t6,t5,v1
     f40:	448e5000 	mtc1	t6,$f10
     f44:	00000000 	nop
     f48:	46805120 	cvt.s.w	$f4,$f10
     f4c:	46002202 	mul.s	$f8,$f4,$f0
     f50:	46088480 	add.s	$f18,$f16,$f8
     f54:	444ff800 	cfc1	t7,$31
     f58:	44d8f800 	ctc1	t8,$31
     f5c:	00000000 	nop
     f60:	460091a4 	cvt.w.s	$f6,$f18
     f64:	4458f800 	cfc1	t8,$31
     f68:	00000000 	nop
     f6c:	33180078 	andi	t8,t8,0x78
     f70:	53000013 	beqzl	t8,fc0 <EffectShieldParticle_GetColors+0xb74>
     f74:	44183000 	mfc1	t8,$f6
     f78:	44813000 	mtc1	at,$f6
     f7c:	24180001 	li	t8,1
     f80:	46069181 	sub.s	$f6,$f18,$f6
     f84:	44d8f800 	ctc1	t8,$31
     f88:	00000000 	nop
     f8c:	460031a4 	cvt.w.s	$f6,$f6
     f90:	4458f800 	cfc1	t8,$31
     f94:	00000000 	nop
     f98:	33180078 	andi	t8,t8,0x78
     f9c:	17000005 	bnez	t8,fb4 <EffectShieldParticle_GetColors+0xb68>
     fa0:	00000000 	nop
     fa4:	44183000 	mfc1	t8,$f6
     fa8:	3c018000 	lui	at,0x8000
     fac:	10000007 	b	fcc <EffectShieldParticle_GetColors+0xb80>
     fb0:	0301c025 	or	t8,t8,at
     fb4:	10000005 	b	fcc <EffectShieldParticle_GetColors+0xb80>
     fb8:	2418ffff 	li	t8,-1
     fbc:	44183000 	mfc1	t8,$f6
     fc0:	00000000 	nop
     fc4:	0700fffb 	bltz	t8,fb4 <EffectShieldParticle_GetColors+0xb68>
     fc8:	00000000 	nop
     fcc:	a2180001 	sb	t8,1(s0)
     fd0:	90850196 	lbu	a1,406(a0)
     fd4:	44cff800 	ctc1	t7,$31
     fd8:	3c014f80 	lui	at,0x4f80
     fdc:	44855000 	mtc1	a1,$f10
     fe0:	04a10004 	bgez	a1,ff4 <EffectShieldParticle_GetColors+0xba8>
     fe4:	46805120 	cvt.s.w	$f4,$f10
     fe8:	44818000 	mtc1	at,$f16
     fec:	00000000 	nop
     ff0:	46102100 	add.s	$f4,$f4,$f16
     ff4:	9099019e 	lbu	t9,414(a0)
     ff8:	240c0001 	li	t4,1
     ffc:	3c014f00 	lui	at,0x4f00
    1000:	03255023 	subu	t2,t9,a1
    1004:	448a4000 	mtc1	t2,$f8
    1008:	00000000 	nop
    100c:	468044a0 	cvt.s.w	$f18,$f8
    1010:	46009182 	mul.s	$f6,$f18,$f0
    1014:	46062280 	add.s	$f10,$f4,$f6
    1018:	444bf800 	cfc1	t3,$31
    101c:	44ccf800 	ctc1	t4,$31
    1020:	00000000 	nop
    1024:	46005424 	cvt.w.s	$f16,$f10
    1028:	444cf800 	cfc1	t4,$31
    102c:	00000000 	nop
    1030:	318c0078 	andi	t4,t4,0x78
    1034:	51800013 	beqzl	t4,1084 <EffectShieldParticle_GetColors+0xc38>
    1038:	440c8000 	mfc1	t4,$f16
    103c:	44818000 	mtc1	at,$f16
    1040:	240c0001 	li	t4,1
    1044:	46105401 	sub.s	$f16,$f10,$f16
    1048:	44ccf800 	ctc1	t4,$31
    104c:	00000000 	nop
    1050:	46008424 	cvt.w.s	$f16,$f16
    1054:	444cf800 	cfc1	t4,$31
    1058:	00000000 	nop
    105c:	318c0078 	andi	t4,t4,0x78
    1060:	15800005 	bnez	t4,1078 <EffectShieldParticle_GetColors+0xc2c>
    1064:	00000000 	nop
    1068:	440c8000 	mfc1	t4,$f16
    106c:	3c018000 	lui	at,0x8000
    1070:	10000007 	b	1090 <EffectShieldParticle_GetColors+0xc44>
    1074:	01816025 	or	t4,t4,at
    1078:	10000005 	b	1090 <EffectShieldParticle_GetColors+0xc44>
    107c:	240cffff 	li	t4,-1
    1080:	440c8000 	mfc1	t4,$f16
    1084:	00000000 	nop
    1088:	0580fffb 	bltz	t4,1078 <EffectShieldParticle_GetColors+0xc2c>
    108c:	00000000 	nop
    1090:	a20c0002 	sb	t4,2(s0)
    1094:	90860197 	lbu	a2,407(a0)
    1098:	44cbf800 	ctc1	t3,$31
    109c:	3c014f80 	lui	at,0x4f80
    10a0:	44864000 	mtc1	a2,$f8
    10a4:	04c10004 	bgez	a2,10b8 <EffectShieldParticle_GetColors+0xc6c>
    10a8:	468044a0 	cvt.s.w	$f18,$f8
    10ac:	44812000 	mtc1	at,$f4
    10b0:	00000000 	nop
    10b4:	46049480 	add.s	$f18,$f18,$f4
    10b8:	908d019f 	lbu	t5,415(a0)
    10bc:	24180001 	li	t8,1
    10c0:	3c014f00 	lui	at,0x4f00
    10c4:	01a67023 	subu	t6,t5,a2
    10c8:	448e3000 	mtc1	t6,$f6
    10cc:	00000000 	nop
    10d0:	468032a0 	cvt.s.w	$f10,$f6
    10d4:	46005402 	mul.s	$f16,$f10,$f0
    10d8:	46109200 	add.s	$f8,$f18,$f16
    10dc:	444ff800 	cfc1	t7,$31
    10e0:	44d8f800 	ctc1	t8,$31
    10e4:	00000000 	nop
    10e8:	46004124 	cvt.w.s	$f4,$f8
    10ec:	4458f800 	cfc1	t8,$31
    10f0:	00000000 	nop
    10f4:	33180078 	andi	t8,t8,0x78
    10f8:	53000013 	beqzl	t8,1148 <EffectShieldParticle_GetColors+0xcfc>
    10fc:	44182000 	mfc1	t8,$f4
    1100:	44812000 	mtc1	at,$f4
    1104:	24180001 	li	t8,1
    1108:	46044101 	sub.s	$f4,$f8,$f4
    110c:	44d8f800 	ctc1	t8,$31
    1110:	00000000 	nop
    1114:	46002124 	cvt.w.s	$f4,$f4
    1118:	4458f800 	cfc1	t8,$31
    111c:	00000000 	nop
    1120:	33180078 	andi	t8,t8,0x78
    1124:	17000005 	bnez	t8,113c <EffectShieldParticle_GetColors+0xcf0>
    1128:	00000000 	nop
    112c:	44182000 	mfc1	t8,$f4
    1130:	3c018000 	lui	at,0x8000
    1134:	10000007 	b	1154 <EffectShieldParticle_GetColors+0xd08>
    1138:	0301c025 	or	t8,t8,at
    113c:	10000005 	b	1154 <EffectShieldParticle_GetColors+0xd08>
    1140:	2418ffff 	li	t8,-1
    1144:	44182000 	mfc1	t8,$f4
    1148:	00000000 	nop
    114c:	0700fffb 	bltz	t8,113c <EffectShieldParticle_GetColors+0xcf0>
    1150:	00000000 	nop
    1154:	44cff800 	ctc1	t7,$31
    1158:	a2180003 	sb	t8,3(s0)
    115c:	00000000 	nop
    1160:	8fb00004 	lw	s0,4(sp)
    1164:	03e00008 	jr	ra
    1168:	27bd0008 	addiu	sp,sp,8

0000116c <EffectShieldParticle_Draw>:
    116c:	27bdfe50 	addiu	sp,sp,-432
    1170:	afb60058 	sw	s6,88(sp)
    1174:	afb50054 	sw	s5,84(sp)
    1178:	0080a825 	move	s5,a0
    117c:	afbf005c 	sw	ra,92(sp)
    1180:	afb40050 	sw	s4,80(sp)
    1184:	0080b025 	move	s6,a0
    1188:	3c060000 	lui	a2,0x0
    118c:	00a0a025 	move	s4,a1
    1190:	afb3004c 	sw	s3,76(sp)
    1194:	afb20048 	sw	s2,72(sp)
    1198:	afb10044 	sw	s1,68(sp)
    119c:	afb00040 	sw	s0,64(sp)
    11a0:	f7bc0038 	sdc1	$f28,56(sp)
    11a4:	f7ba0030 	sdc1	$f26,48(sp)
    11a8:	f7b80028 	sdc1	$f24,40(sp)
    11ac:	f7b60020 	sdc1	$f22,32(sp)
    11b0:	f7b40018 	sdc1	$f20,24(sp)
    11b4:	24c60048 	addiu	a2,a2,72
    11b8:	27a4018c 	addiu	a0,sp,396
    11bc:	0c000000 	jal	0 <EffectShieldParticle_Init>
    11c0:	24070110 	li	a3,272
    11c4:	12a00124 	beqz	s5,1658 <EffectShieldParticle_Draw+0x4ec>
    11c8:	24050026 	li	a1,38
    11cc:	0c000000 	jal	0 <EffectShieldParticle_Init>
    11d0:	8e8402d0 	lw	a0,720(s4)
    11d4:	00402025 	move	a0,v0
    11d8:	ae8202d0 	sw	v0,720(s4)
    11dc:	248e0008 	addiu	t6,a0,8
    11e0:	ae8e02d0 	sw	t6,720(s4)
    11e4:	3c0fe300 	lui	t7,0xe300
    11e8:	35ef0a01 	ori	t7,t7,0xa01
    11ec:	3c180010 	lui	t8,0x10
    11f0:	ac580004 	sw	t8,4(v0)
    11f4:	ac4f0000 	sw	t7,0(v0)
    11f8:	8e8402d0 	lw	a0,720(s4)
    11fc:	3c10e700 	lui	s0,0xe700
    1200:	3c09d700 	lui	t1,0xd700
    1204:	24990008 	addiu	t9,a0,8
    1208:	ae9902d0 	sw	t9,720(s4)
    120c:	ac800004 	sw	zero,4(a0)
    1210:	ac900000 	sw	s0,0(a0)
    1214:	8e8402d0 	lw	a0,720(s4)
    1218:	35290002 	ori	t1,t1,0x2
    121c:	240affff 	li	t2,-1
    1220:	24880008 	addiu	t0,a0,8
    1224:	ae8802d0 	sw	t0,720(s4)
    1228:	ac8a0004 	sw	t2,4(a0)
    122c:	ac890000 	sw	t1,0(a0)
    1230:	8e8402d0 	lw	a0,720(s4)
    1234:	3c0d0000 	lui	t5,0x0
    1238:	25ad0000 	addiu	t5,t5,0
    123c:	248b0008 	addiu	t3,a0,8
    1240:	ae8b02d0 	sw	t3,720(s4)
    1244:	3c0cfd90 	lui	t4,0xfd90
    1248:	ac8c0000 	sw	t4,0(a0)
    124c:	ac8d0004 	sw	t5,4(a0)
    1250:	8e8402d0 	lw	a0,720(s4)
    1254:	3c180701 	lui	t8,0x701
    1258:	37184050 	ori	t8,t8,0x4050
    125c:	248e0008 	addiu	t6,a0,8
    1260:	ae8e02d0 	sw	t6,720(s4)
    1264:	3c0ff590 	lui	t7,0xf590
    1268:	ac8f0000 	sw	t7,0(a0)
    126c:	ac980004 	sw	t8,4(a0)
    1270:	8e8402d0 	lw	a0,720(s4)
    1274:	3c08e600 	lui	t0,0xe600
    1278:	3c0b071f 	lui	t3,0x71f
    127c:	24990008 	addiu	t9,a0,8
    1280:	ae9902d0 	sw	t9,720(s4)
    1284:	ac800004 	sw	zero,4(a0)
    1288:	ac880000 	sw	t0,0(a0)
    128c:	8e8402d0 	lw	a0,720(s4)
    1290:	356bf200 	ori	t3,t3,0xf200
    1294:	3c0af300 	lui	t2,0xf300
    1298:	24890008 	addiu	t1,a0,8
    129c:	ae8902d0 	sw	t1,720(s4)
    12a0:	ac8b0004 	sw	t3,4(a0)
    12a4:	ac8a0000 	sw	t2,0(a0)
    12a8:	8e8402d0 	lw	a0,720(s4)
    12ac:	3c0f0001 	lui	t7,0x1
    12b0:	3c0ef588 	lui	t6,0xf588
    12b4:	248c0008 	addiu	t4,a0,8
    12b8:	ae8c02d0 	sw	t4,720(s4)
    12bc:	ac800004 	sw	zero,4(a0)
    12c0:	ac900000 	sw	s0,0(a0)
    12c4:	8e8402d0 	lw	a0,720(s4)
    12c8:	35ce0800 	ori	t6,t6,0x800
    12cc:	35ef4050 	ori	t7,t7,0x4050
    12d0:	248d0008 	addiu	t5,a0,8
    12d4:	ae8d02d0 	sw	t5,720(s4)
    12d8:	ac8f0004 	sw	t7,4(a0)
    12dc:	ac8e0000 	sw	t6,0(a0)
    12e0:	8e8402d0 	lw	a0,720(s4)
    12e4:	3c080007 	lui	t0,0x7
    12e8:	3508c07c 	ori	t0,t0,0xc07c
    12ec:	24980008 	addiu	t8,a0,8
    12f0:	ae9802d0 	sw	t8,720(s4)
    12f4:	3c19f200 	lui	t9,0xf200
    12f8:	ac990000 	sw	t9,0(a0)
    12fc:	ac880004 	sw	t0,4(a0)
    1300:	8e8402d0 	lw	a0,720(s4)
    1304:	3c0afc30 	lui	t2,0xfc30
    1308:	3c0b5ffe 	lui	t3,0x5ffe
    130c:	24890008 	addiu	t1,a0,8
    1310:	ae8902d0 	sw	t1,720(s4)
    1314:	356bfe38 	ori	t3,t3,0xfe38
    1318:	354ab3ff 	ori	t2,t2,0xb3ff
    131c:	ac8a0000 	sw	t2,0(a0)
    1320:	ac8b0004 	sw	t3,4(a0)
    1324:	8e8402d0 	lw	a0,720(s4)
    1328:	3c0e0c18 	lui	t6,0xc18
    132c:	3c0de200 	lui	t5,0xe200
    1330:	248c0008 	addiu	t4,a0,8
    1334:	ae8c02d0 	sw	t4,720(s4)
    1338:	35ad001c 	ori	t5,t5,0x1c
    133c:	35ce4b50 	ori	t6,t6,0x4b50
    1340:	ac8e0004 	sw	t6,4(a0)
    1344:	ac8d0000 	sw	t5,0(a0)
    1348:	8e8402d0 	lw	a0,720(s4)
    134c:	3c18d9f0 	lui	t8,0xd9f0
    1350:	3718f9ff 	ori	t8,t8,0xf9ff
    1354:	248f0008 	addiu	t7,a0,8
    1358:	ae8f02d0 	sw	t7,720(s4)
    135c:	ac800004 	sw	zero,4(a0)
    1360:	ac980000 	sw	t8,0(a0)
    1364:	8e8402d0 	lw	a0,720(s4)
    1368:	3c090020 	lui	t1,0x20
    136c:	3c08d9ff 	lui	t0,0xd9ff
    1370:	24990008 	addiu	t9,a0,8
    1374:	ae9902d0 	sw	t9,720(s4)
    1378:	3508ffff 	ori	t0,t0,0xffff
    137c:	35290005 	ori	t1,t1,0x5
    1380:	ac890004 	sw	t1,4(a0)
    1384:	ac880000 	sw	t0,0(a0)
    1388:	02a02025 	move	a0,s5
    138c:	27a501a4 	addiu	a1,sp,420
    1390:	0c000000 	jal	0 <EffectShieldParticle_Init>
    1394:	27a601a0 	addiu	a2,sp,416
    1398:	8e8402d0 	lw	a0,720(s4)
    139c:	3c0bfa00 	lui	t3,0xfa00
    13a0:	02a08825 	move	s1,s5
    13a4:	248a0008 	addiu	t2,a0,8
    13a8:	ae8a02d0 	sw	t2,720(s4)
    13ac:	ac8b0000 	sw	t3,0(a0)
    13b0:	93b801a5 	lbu	t8,421(sp)
    13b4:	93ad01a4 	lbu	t5,420(sp)
    13b8:	93aa01a6 	lbu	t2,422(sp)
    13bc:	93af01a7 	lbu	t7,423(sp)
    13c0:	0018cc00 	sll	t9,t8,0x10
    13c4:	000d7600 	sll	t6,t5,0x18
    13c8:	01d94025 	or	t0,t6,t9
    13cc:	000a5a00 	sll	t3,t2,0x8
    13d0:	010b6025 	or	t4,t0,t3
    13d4:	018fc025 	or	t8,t4,t7
    13d8:	ac980004 	sw	t8,4(a0)
    13dc:	8e8402d0 	lw	a0,720(s4)
    13e0:	3c19fb00 	lui	t9,0xfb00
    13e4:	27b30084 	addiu	s3,sp,132
    13e8:	248e0008 	addiu	t6,a0,8
    13ec:	ae8e02d0 	sw	t6,720(s4)
    13f0:	ac990000 	sw	t9,0(a0)
    13f4:	93ad01a1 	lbu	t5,417(sp)
    13f8:	93aa01a0 	lbu	t2,416(sp)
    13fc:	93ae01a2 	lbu	t6,418(sp)
    1400:	93ab01a3 	lbu	t3,419(sp)
    1404:	000d6400 	sll	t4,t5,0x10
    1408:	000a4600 	sll	t0,t2,0x18
    140c:	010c7825 	or	t7,t0,t4
    1410:	000eca00 	sll	t9,t6,0x8
    1414:	01f94825 	or	t1,t7,t9
    1418:	012b6825 	or	t5,t1,t3
    141c:	ac8d0004 	sw	t5,4(a0)
    1420:	8e8402d0 	lw	a0,720(s4)
    1424:	27b200c4 	addiu	s2,sp,196
    1428:	24880008 	addiu	t0,a0,8
    142c:	ae8802d0 	sw	t0,720(s4)
    1430:	ac800004 	sw	zero,4(a0)
    1434:	ac900000 	sw	s0,0(a0)
    1438:	92ac0180 	lbu	t4,384(s5)
    143c:	27b00104 	addiu	s0,sp,260
    1440:	000cc080 	sll	t8,t4,0x2
    1444:	030cc023 	subu	t8,t8,t4
    1448:	0018c0c0 	sll	t8,t8,0x3
    144c:	02b87021 	addu	t6,s5,t8
    1450:	02ae082b 	sltu	at,s5,t6
    1454:	10200080 	beqz	at,1658 <EffectShieldParticle_Draw+0x4ec>
    1458:	3c013f80 	lui	at,0x3f80
    145c:	4481d000 	mtc1	at,$f26
    1460:	3c010000 	lui	at,0x0
    1464:	4480e000 	mtc1	zero,$f28
    1468:	c4380084 	lwc1	$f24,132(at)
    146c:	c6200008 	lwc1	$f0,8(s1)
    1470:	c6220010 	lwc1	$f2,16(s1)
    1474:	3c013f00 	lui	at,0x3f00
    1478:	44813000 	mtc1	at,$f6
    147c:	46020100 	add.s	$f4,$f0,$f2
    1480:	3c013c80 	lui	at,0x3c80
    1484:	44819000 	mtc1	at,$f18
    1488:	46020381 	sub.s	$f14,$f0,$f2
    148c:	46062202 	mul.s	$f8,$f4,$f6
    1490:	00000000 	nop
    1494:	46127102 	mul.s	$f4,$f14,$f18
    1498:	4600428d 	trunc.w.s	$f10,$f8
    149c:	46182183 	div.s	$f6,$f4,$f24
    14a0:	44195000 	mfc1	t9,$f10
    14a4:	00000000 	nop
    14a8:	00195400 	sll	t2,t9,0x10
    14ac:	000a4c03 	sra	t1,t2,0x10
    14b0:	44898000 	mtc1	t1,$f16
    14b4:	00000000 	nop
    14b8:	468085a0 	cvt.s.w	$f22,$f16
    14bc:	4600320d 	trunc.w.s	$f8,$f6
    14c0:	440d4000 	mfc1	t5,$f8
    14c4:	00000000 	nop
    14c8:	000d4400 	sll	t0,t5,0x10
    14cc:	00086403 	sra	t4,t0,0x10
    14d0:	448c5000 	mtc1	t4,$f10
    14d4:	00000000 	nop
    14d8:	46805520 	cvt.s.w	$f20,$f10
    14dc:	461aa03c 	c.lt.s	$f20,$f26
    14e0:	00000000 	nop
    14e4:	45000002 	bc1f	14f0 <EffectShieldParticle_Draw+0x384>
    14e8:	00000000 	nop
    14ec:	4600d506 	mov.s	$f20,$f26
    14f0:	86b80182 	lh	t8,386(s5)
    14f4:	86ae0184 	lh	t6,388(s5)
    14f8:	86af0186 	lh	t7,390(s5)
    14fc:	44988000 	mtc1	t8,$f16
    1500:	448e9000 	mtc1	t6,$f18
    1504:	448f2000 	mtc1	t7,$f4
    1508:	46808420 	cvt.s.w	$f16,$f16
    150c:	02402025 	move	a0,s2
    1510:	468094a0 	cvt.s.w	$f18,$f18
    1514:	44058000 	mfc1	a1,$f16
    1518:	46802120 	cvt.s.w	$f4,$f4
    151c:	44069000 	mfc1	a2,$f18
    1520:	44072000 	mfc1	a3,$f4
    1524:	0c000000 	jal	0 <EffectShieldParticle_Init>
    1528:	00000000 	nop
    152c:	02002025 	move	a0,s0
    1530:	00002825 	move	a1,zero
    1534:	86260014 	lh	a2,20(s1)
    1538:	0c000000 	jal	0 <EffectShieldParticle_Init>
    153c:	00003825 	move	a3,zero
    1540:	02402025 	move	a0,s2
    1544:	02002825 	move	a1,s0
    1548:	0c000000 	jal	0 <EffectShieldParticle_Init>
    154c:	02603025 	move	a2,s3
    1550:	02002025 	move	a0,s0
    1554:	00002825 	move	a1,zero
    1558:	00003025 	move	a2,zero
    155c:	0c000000 	jal	0 <EffectShieldParticle_Init>
    1560:	86270016 	lh	a3,22(s1)
    1564:	02602025 	move	a0,s3
    1568:	02002825 	move	a1,s0
    156c:	0c000000 	jal	0 <EffectShieldParticle_Init>
    1570:	02403025 	move	a2,s2
    1574:	4405b000 	mfc1	a1,$f22
    1578:	4406e000 	mfc1	a2,$f28
    157c:	4407e000 	mfc1	a3,$f28
    1580:	0c000000 	jal	0 <EffectShieldParticle_Init>
    1584:	02002025 	move	a0,s0
    1588:	02402025 	move	a0,s2
    158c:	02002825 	move	a1,s0
    1590:	0c000000 	jal	0 <EffectShieldParticle_Init>
    1594:	02603025 	move	a2,s3
    1598:	4618a182 	mul.s	$f6,$f20,$f24
    159c:	4406c000 	mfc1	a2,$f24
    15a0:	4407c000 	mfc1	a3,$f24
    15a4:	02002025 	move	a0,s0
    15a8:	44053000 	mfc1	a1,$f6
    15ac:	0c000000 	jal	0 <EffectShieldParticle_Init>
    15b0:	00000000 	nop
    15b4:	02602025 	move	a0,s3
    15b8:	02002825 	move	a1,s0
    15bc:	0c000000 	jal	0 <EffectShieldParticle_Init>
    15c0:	02403025 	move	a2,s2
    15c4:	02802025 	move	a0,s4
    15c8:	0c000000 	jal	0 <EffectShieldParticle_Init>
    15cc:	02402825 	move	a1,s2
    15d0:	10400021 	beqz	v0,1658 <EffectShieldParticle_Draw+0x4ec>
    15d4:	3c050000 	lui	a1,0x0
    15d8:	8e8402d0 	lw	a0,720(s4)
    15dc:	3c0ada38 	lui	t2,0xda38
    15e0:	354a0003 	ori	t2,t2,0x3
    15e4:	24990008 	addiu	t9,a0,8
    15e8:	ae9902d0 	sw	t9,720(s4)
    15ec:	ac820004 	sw	v0,4(a0)
    15f0:	ac8a0000 	sw	t2,0(a0)
    15f4:	8e8402d0 	lw	a0,720(s4)
    15f8:	3c0b0100 	lui	t3,0x100
    15fc:	24a50000 	addiu	a1,a1,0
    1600:	24890008 	addiu	t1,a0,8
    1604:	ae8902d0 	sw	t1,720(s4)
    1608:	356b4008 	ori	t3,t3,0x4008
    160c:	ac8b0000 	sw	t3,0(a0)
    1610:	ac850004 	sw	a1,4(a0)
    1614:	8e8402d0 	lw	a0,720(s4)
    1618:	3c080600 	lui	t0,0x600
    161c:	35080204 	ori	t0,t0,0x204
    1620:	248d0008 	addiu	t5,a0,8
    1624:	ae8d02d0 	sw	t5,720(s4)
    1628:	240c0602 	li	t4,1538
    162c:	ac8c0004 	sw	t4,4(a0)
    1630:	ac880000 	sw	t0,0(a0)
    1634:	92d80180 	lbu	t8,384(s6)
    1638:	26310018 	addiu	s1,s1,24
    163c:	00187080 	sll	t6,t8,0x2
    1640:	01d87023 	subu	t6,t6,t8
    1644:	000e70c0 	sll	t6,t6,0x3
    1648:	02ce7821 	addu	t7,s6,t6
    164c:	022f082b 	sltu	at,s1,t7
    1650:	5420ff87 	bnezl	at,1470 <EffectShieldParticle_Draw+0x304>
    1654:	c6200008 	lwc1	$f0,8(s1)
    1658:	3c060000 	lui	a2,0x0
    165c:	24c60064 	addiu	a2,a2,100
    1660:	27a4018c 	addiu	a0,sp,396
    1664:	02802825 	move	a1,s4
    1668:	0c000000 	jal	0 <EffectShieldParticle_Init>
    166c:	24070167 	li	a3,359
    1670:	8fbf005c 	lw	ra,92(sp)
    1674:	d7b40018 	ldc1	$f20,24(sp)
    1678:	d7b60020 	ldc1	$f22,32(sp)
    167c:	d7b80028 	ldc1	$f24,40(sp)
    1680:	d7ba0030 	ldc1	$f26,48(sp)
    1684:	d7bc0038 	ldc1	$f28,56(sp)
    1688:	8fb00040 	lw	s0,64(sp)
    168c:	8fb10044 	lw	s1,68(sp)
    1690:	8fb20048 	lw	s2,72(sp)
    1694:	8fb3004c 	lw	s3,76(sp)
    1698:	8fb40050 	lw	s4,80(sp)
    169c:	8fb50054 	lw	s5,84(sp)
    16a0:	8fb60058 	lw	s6,88(sp)
    16a4:	03e00008 	jr	ra
    16a8:	27bd01b0 	addiu	sp,sp,432
    16ac:	00000000 	nop
