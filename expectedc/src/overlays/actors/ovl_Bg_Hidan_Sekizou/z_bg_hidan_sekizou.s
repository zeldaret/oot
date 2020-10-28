
build/src/overlays/actors/ovl_Bg_Hidan_Sekizou/z_bg_hidan_sekizou.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8088CEC0>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	00051880 	sll	v1,a1,0x2
       8:	00651823 	subu	v1,v1,a1
       c:	afbf0014 	sw	ra,20(sp)
      10:	afa60048 	sw	a2,72(sp)
      14:	00803825 	move	a3,a0
      18:	24690003 	addiu	t1,v1,3
      1c:	afa90034 	sw	t1,52(sp)
      20:	afa9001c 	sw	t1,28(sp)
      24:	afa70040 	sw	a3,64(sp)
      28:	87a4004a 	lh	a0,74(sp)
      2c:	0c000000 	jal	0 <func_8088CEC0>
      30:	afa30020 	sw	v1,32(sp)
      34:	87a4004a 	lh	a0,74(sp)
      38:	0c000000 	jal	0 <func_8088CEC0>
      3c:	e7a00030 	swc1	$f0,48(sp)
      40:	8fa30020 	lw	v1,32(sp)
      44:	8fa9001c 	lw	t1,28(sp)
      48:	8fa70040 	lw	a3,64(sp)
      4c:	8fa80034 	lw	t0,52(sp)
      50:	0069082a 	slt	at,v1,t1
      54:	c7ae0030 	lwc1	$f14,48(sp)
      58:	102000d4 	beqz	at,3ac <func_8088CEC0+0x3ac>
      5c:	00602825 	move	a1,v1
      60:	01231023 	subu	v0,t1,v1
      64:	30420001 	andi	v0,v0,0x1
      68:	10400029 	beqz	v0,110 <func_8088CEC0+0x110>
      6c:	00082180 	sll	a0,t0,0x6
      70:	8cee0190 	lw	t6,400(a3)
      74:	00037980 	sll	t7,v1,0x6
      78:	c4e80008 	lwc1	$f8,8(a3)
      7c:	01cf1021 	addu	v0,t6,t7
      80:	84580028 	lh	t8,40(v0)
      84:	8459002c 	lh	t9,44(v0)
      88:	904c0015 	lbu	t4,21(v0)
      8c:	44982000 	mtc1	t8,$f4
      90:	44993000 	mtc1	t9,$f6
      94:	8458002a 	lh	t8,42(v0)
      98:	468020a0 	cvt.s.w	$f2,$f4
      9c:	904e0017 	lbu	t6,23(v0)
      a0:	24650001 	addiu	a1,v1,1
      a4:	358d0001 	ori	t5,t4,0x1
      a8:	46803320 	cvt.s.w	$f12,$f6
      ac:	46020282 	mul.s	$f10,$f0,$f2
      b0:	460a4400 	add.s	$f16,$f8,$f10
      b4:	460c7482 	mul.s	$f18,$f14,$f12
      b8:	46128100 	add.s	$f4,$f16,$f18
      bc:	46027482 	mul.s	$f18,$f14,$f2
      c0:	4600218d 	trunc.w.s	$f6,$f4
      c4:	440b3000 	mfc1	t3,$f6
      c8:	460c0182 	mul.s	$f6,$f0,$f12
      cc:	a44b0030 	sh	t3,48(v0)
      d0:	c4e8000c 	lwc1	$f8,12(a3)
      d4:	4600428d 	trunc.w.s	$f10,$f8
      d8:	440f5000 	mfc1	t7,$f10
      dc:	00000000 	nop
      e0:	01f8c821 	addu	t9,t7,t8
      e4:	a4590032 	sh	t9,50(v0)
      e8:	c4f00010 	lwc1	$f16,16(a3)
      ec:	35cf0001 	ori	t7,t6,0x1
      f0:	a04f0017 	sb	t7,23(v0)
      f4:	46128101 	sub.s	$f4,$f16,$f18
      f8:	a04d0015 	sb	t5,21(v0)
      fc:	46062200 	add.s	$f8,$f4,$f6
     100:	4600428d 	trunc.w.s	$f10,$f8
     104:	440b5000 	mfc1	t3,$f10
     108:	10a900a8 	beq	a1,t1,3ac <func_8088CEC0+0x3ac>
     10c:	a44b0034 	sh	t3,52(v0)
     110:	00051980 	sll	v1,a1,0x6
     114:	8cf80190 	lw	t8,400(a3)
     118:	2484ff80 	addiu	a0,a0,-128
     11c:	03031021 	addu	v0,t8,v1
     120:	10640052 	beq	v1,a0,26c <func_8088CEC0+0x26c>
     124:	84590028 	lh	t9,40(v0)
     128:	44999000 	mtc1	t9,$f18
     12c:	844a002c 	lh	t2,44(v0)
     130:	c4f00008 	lwc1	$f16,8(a3)
     134:	468094a0 	cvt.s.w	$f18,$f18
     138:	448a6000 	mtc1	t2,$f12
     13c:	8459002a 	lh	t9,42(v0)
     140:	904d0015 	lbu	t5,21(v0)
     144:	904f0017 	lbu	t7,23(v0)
     148:	46806320 	cvt.s.w	$f12,$f12
     14c:	46120282 	mul.s	$f10,$f0,$f18
     150:	35ae0001 	ori	t6,t5,0x1
     154:	460c7202 	mul.s	$f8,$f14,$f12
     158:	460a8280 	add.s	$f10,$f16,$f10
     15c:	46127482 	mul.s	$f18,$f14,$f18
     160:	46085200 	add.s	$f8,$f10,$f8
     164:	4600420d 	trunc.w.s	$f8,$f8
     168:	460c0302 	mul.s	$f12,$f0,$f12
     16c:	440c4000 	mfc1	t4,$f8
     170:	00000000 	nop
     174:	a44c0030 	sh	t4,48(v0)
     178:	c4e8000c 	lwc1	$f8,12(a3)
     17c:	4600420d 	trunc.w.s	$f8,$f8
     180:	44184000 	mfc1	t8,$f8
     184:	00000000 	nop
     188:	03195021 	addu	t2,t8,t9
     18c:	a44a0032 	sh	t2,50(v0)
     190:	c4e80010 	lwc1	$f8,16(a3)
     194:	a04e0015 	sb	t6,21(v0)
     198:	35f80001 	ori	t8,t7,0x1
     19c:	46124481 	sub.s	$f18,$f8,$f18
     1a0:	a0580017 	sb	t8,23(v0)
     1a4:	460c9300 	add.s	$f12,$f18,$f12
     1a8:	4600630d 	trunc.w.s	$f12,$f12
     1ac:	440c6000 	mfc1	t4,$f12
     1b0:	00000000 	nop
     1b4:	a44c0034 	sh	t4,52(v0)
     1b8:	8cf90190 	lw	t9,400(a3)
     1bc:	c4ec0008 	lwc1	$f12,8(a3)
     1c0:	03231021 	addu	v0,t9,v1
     1c4:	844a0068 	lh	t2,104(v0)
     1c8:	844b006c 	lh	t3,108(v0)
     1cc:	904e0055 	lbu	t6,85(v0)
     1d0:	448a9000 	mtc1	t2,$f18
     1d4:	448b4000 	mtc1	t3,$f8
     1d8:	844a006a 	lh	t2,106(v0)
     1dc:	468094a0 	cvt.s.w	$f18,$f18
     1e0:	90580057 	lbu	t8,87(v0)
     1e4:	24420040 	addiu	v0,v0,64
     1e8:	35cf0001 	ori	t7,t6,0x1
     1ec:	24630080 	addiu	v1,v1,128
     1f0:	46804220 	cvt.s.w	$f8,$f8
     1f4:	46120282 	mul.s	$f10,$f0,$f18
     1f8:	460a6280 	add.s	$f10,$f12,$f10
     1fc:	46087302 	mul.s	$f12,$f14,$f8
     200:	460c5300 	add.s	$f12,$f10,$f12
     204:	46127482 	mul.s	$f18,$f14,$f18
     208:	4600630d 	trunc.w.s	$f12,$f12
     20c:	46080202 	mul.s	$f8,$f0,$f8
     210:	440d6000 	mfc1	t5,$f12
     214:	00000000 	nop
     218:	a44d0030 	sh	t5,48(v0)
     21c:	c4ec000c 	lwc1	$f12,12(a3)
     220:	4600630d 	trunc.w.s	$f12,$f12
     224:	44196000 	mfc1	t9,$f12
     228:	00000000 	nop
     22c:	032a5821 	addu	t3,t9,t2
     230:	a44b0032 	sh	t3,50(v0)
     234:	c4ec0010 	lwc1	$f12,16(a3)
     238:	37190001 	ori	t9,t8,0x1
     23c:	a04f0015 	sb	t7,21(v0)
     240:	46126481 	sub.s	$f18,$f12,$f18
     244:	a0590017 	sb	t9,23(v0)
     248:	46089200 	add.s	$f8,$f18,$f8
     24c:	4600420d 	trunc.w.s	$f8,$f8
     250:	440d4000 	mfc1	t5,$f8
     254:	00000000 	nop
     258:	a44d0034 	sh	t5,52(v0)
     25c:	8cf80190 	lw	t8,400(a3)
     260:	03031021 	addu	v0,t8,v1
     264:	1464ffb0 	bne	v1,a0,128 <func_8088CEC0+0x128>
     268:	84590028 	lh	t9,40(v0)
     26c:	44999000 	mtc1	t9,$f18
     270:	844a002c 	lh	t2,44(v0)
     274:	c4f00008 	lwc1	$f16,8(a3)
     278:	468094a0 	cvt.s.w	$f18,$f18
     27c:	448a6000 	mtc1	t2,$f12
     280:	8459002a 	lh	t9,42(v0)
     284:	904d0015 	lbu	t5,21(v0)
     288:	904f0017 	lbu	t7,23(v0)
     28c:	46806320 	cvt.s.w	$f12,$f12
     290:	46120282 	mul.s	$f10,$f0,$f18
     294:	35ae0001 	ori	t6,t5,0x1
     298:	24840080 	addiu	a0,a0,128
     29c:	460c7202 	mul.s	$f8,$f14,$f12
     2a0:	460a8280 	add.s	$f10,$f16,$f10
     2a4:	46127482 	mul.s	$f18,$f14,$f18
     2a8:	00000000 	nop
     2ac:	460c0302 	mul.s	$f12,$f0,$f12
     2b0:	46085200 	add.s	$f8,$f10,$f8
     2b4:	4600420d 	trunc.w.s	$f8,$f8
     2b8:	440c4000 	mfc1	t4,$f8
     2bc:	00000000 	nop
     2c0:	a44c0030 	sh	t4,48(v0)
     2c4:	c4e8000c 	lwc1	$f8,12(a3)
     2c8:	4600420d 	trunc.w.s	$f8,$f8
     2cc:	44184000 	mfc1	t8,$f8
     2d0:	00000000 	nop
     2d4:	03195021 	addu	t2,t8,t9
     2d8:	a44a0032 	sh	t2,50(v0)
     2dc:	c4e80010 	lwc1	$f8,16(a3)
     2e0:	35f80001 	ori	t8,t7,0x1
     2e4:	a04e0015 	sb	t6,21(v0)
     2e8:	46124481 	sub.s	$f18,$f8,$f18
     2ec:	a0580017 	sb	t8,23(v0)
     2f0:	460c9300 	add.s	$f12,$f18,$f12
     2f4:	4600630d 	trunc.w.s	$f12,$f12
     2f8:	440c6000 	mfc1	t4,$f12
     2fc:	00000000 	nop
     300:	a44c0034 	sh	t4,52(v0)
     304:	8cf90190 	lw	t9,400(a3)
     308:	c4ec0008 	lwc1	$f12,8(a3)
     30c:	03231021 	addu	v0,t9,v1
     310:	844a0068 	lh	t2,104(v0)
     314:	844b006c 	lh	t3,108(v0)
     318:	904e0055 	lbu	t6,85(v0)
     31c:	448a9000 	mtc1	t2,$f18
     320:	448b4000 	mtc1	t3,$f8
     324:	844a006a 	lh	t2,106(v0)
     328:	468094a0 	cvt.s.w	$f18,$f18
     32c:	90580057 	lbu	t8,87(v0)
     330:	35cf0001 	ori	t7,t6,0x1
     334:	24420040 	addiu	v0,v0,64
     338:	24630080 	addiu	v1,v1,128
     33c:	46804220 	cvt.s.w	$f8,$f8
     340:	46120282 	mul.s	$f10,$f0,$f18
     344:	460a6280 	add.s	$f10,$f12,$f10
     348:	46087302 	mul.s	$f12,$f14,$f8
     34c:	460c5300 	add.s	$f12,$f10,$f12
     350:	46127482 	mul.s	$f18,$f14,$f18
     354:	00000000 	nop
     358:	46080202 	mul.s	$f8,$f0,$f8
     35c:	4600630d 	trunc.w.s	$f12,$f12
     360:	440d6000 	mfc1	t5,$f12
     364:	00000000 	nop
     368:	a44d0030 	sh	t5,48(v0)
     36c:	c4ec000c 	lwc1	$f12,12(a3)
     370:	4600630d 	trunc.w.s	$f12,$f12
     374:	44196000 	mfc1	t9,$f12
     378:	00000000 	nop
     37c:	032a5821 	addu	t3,t9,t2
     380:	a44b0032 	sh	t3,50(v0)
     384:	c4ec0010 	lwc1	$f12,16(a3)
     388:	37190001 	ori	t9,t8,0x1
     38c:	a0590017 	sb	t9,23(v0)
     390:	46126481 	sub.s	$f18,$f12,$f18
     394:	a04f0015 	sb	t7,21(v0)
     398:	46089200 	add.s	$f8,$f18,$f8
     39c:	4600420d 	trunc.w.s	$f8,$f8
     3a0:	440d4000 	mfc1	t5,$f8
     3a4:	00000000 	nop
     3a8:	a44d0034 	sh	t5,52(v0)
     3ac:	8fbf0014 	lw	ra,20(sp)
     3b0:	27bd0040 	addiu	sp,sp,64
     3b4:	03e00008 	jr	ra
     3b8:	00000000 	nop

000003bc <BgHidanSekizou_Init>:
     3bc:	27bdffb0 	addiu	sp,sp,-80
     3c0:	afa50054 	sw	a1,84(sp)
     3c4:	afbf002c 	sw	ra,44(sp)
     3c8:	afb10024 	sw	s1,36(sp)
     3cc:	3c050000 	lui	a1,0x0
     3d0:	00808825 	move	s1,a0
     3d4:	afb20028 	sw	s2,40(sp)
     3d8:	afb00020 	sw	s0,32(sp)
     3dc:	afa00040 	sw	zero,64(sp)
     3e0:	0c000000 	jal	0 <func_8088CEC0>
     3e4:	24a50000 	addiu	a1,a1,0
     3e8:	02202025 	move	a0,s1
     3ec:	0c000000 	jal	0 <func_8088CEC0>
     3f0:	00002825 	move	a1,zero
     3f4:	26300174 	addiu	s0,s1,372
     3f8:	02002825 	move	a1,s0
     3fc:	0c000000 	jal	0 <func_8088CEC0>
     400:	8fa40054 	lw	a0,84(sp)
     404:	3c070000 	lui	a3,0x0
     408:	262e0194 	addiu	t6,s1,404
     40c:	afae0010 	sw	t6,16(sp)
     410:	24e70000 	addiu	a3,a3,0
     414:	8fa40054 	lw	a0,84(sp)
     418:	02002825 	move	a1,s0
     41c:	0c000000 	jal	0 <func_8088CEC0>
     420:	02203025 	move	a2,s1
     424:	00001825 	move	v1,zero
     428:	8e2f0190 	lw	t7,400(s1)
     42c:	01e31021 	addu	v0,t7,v1
     430:	8458002e 	lh	t8,46(v0)
     434:	24630040 	addiu	v1,v1,64
     438:	28610180 	slti	at,v1,384
     43c:	1420fffa 	bnez	at,428 <BgHidanSekizou_Init+0x6c>
     440:	a4580036 	sh	t8,54(v0)
     444:	8639001c 	lh	t9,28(s1)
     448:	24080024 	li	t0,36
     44c:	00008025 	move	s0,zero
     450:	17200019 	bnez	t9,4b8 <BgHidanSekizou_Init+0xfc>
     454:	3c040601 	lui	a0,0x601
     458:	a6280168 	sh	t0,360(s1)
     45c:	24120002 	li	s2,2
     460:	16000003 	bnez	s0,470 <BgHidanSekizou_Init+0xb4>
     464:	2402e000 	li	v0,-8192
     468:	10000001 	b	470 <BgHidanSekizou_Init+0xb4>
     46c:	24022000 	li	v0,8192
     470:	862900b6 	lh	t1,182(s1)
     474:	02202025 	move	a0,s1
     478:	02002825 	move	a1,s0
     47c:	00493021 	addu	a2,v0,t1
     480:	00063400 	sll	a2,a2,0x10
     484:	0c000000 	jal	0 <func_8088CEC0>
     488:	00063403 	sra	a2,a2,0x10
     48c:	26100001 	addiu	s0,s0,1
     490:	1612fff3 	bne	s0,s2,460 <BgHidanSekizou_Init+0xa4>
     494:	00000000 	nop
     498:	3c040601 	lui	a0,0x601
     49c:	2484cc90 	addiu	a0,a0,-13168
     4a0:	0c000000 	jal	0 <func_8088CEC0>
     4a4:	27a50040 	addiu	a1,sp,64
     4a8:	3c0a0000 	lui	t2,0x0
     4ac:	254a0000 	addiu	t2,t2,0
     4b0:	1000000c 	b	4e4 <BgHidanSekizou_Init+0x128>
     4b4:	ae2a0164 	sw	t2,356(s1)
     4b8:	a620016e 	sh	zero,366(s1)
     4bc:	8622016e 	lh	v0,366(s1)
     4c0:	2484cda0 	addiu	a0,a0,-12896
     4c4:	27a50040 	addiu	a1,sp,64
     4c8:	a622016c 	sh	v0,364(s1)
     4cc:	a622016a 	sh	v0,362(s1)
     4d0:	0c000000 	jal	0 <func_8088CEC0>
     4d4:	a6220168 	sh	v0,360(s1)
     4d8:	3c0b0000 	lui	t3,0x0
     4dc:	256b0000 	addiu	t3,t3,0
     4e0:	ae2b0164 	sw	t3,356(s1)
     4e4:	a6200170 	sh	zero,368(s1)
     4e8:	8fa40054 	lw	a0,84(sp)
     4ec:	8fa70040 	lw	a3,64(sp)
     4f0:	02203025 	move	a2,s1
     4f4:	0c000000 	jal	0 <func_8088CEC0>
     4f8:	24850810 	addiu	a1,a0,2064
     4fc:	3c060000 	lui	a2,0x0
     500:	ae22014c 	sw	v0,332(s1)
     504:	24c60000 	addiu	a2,a2,0
     508:	26240098 	addiu	a0,s1,152
     50c:	0c000000 	jal	0 <func_8088CEC0>
     510:	00002825 	move	a1,zero
     514:	8fbf002c 	lw	ra,44(sp)
     518:	8fb00020 	lw	s0,32(sp)
     51c:	8fb10024 	lw	s1,36(sp)
     520:	8fb20028 	lw	s2,40(sp)
     524:	03e00008 	jr	ra
     528:	27bd0050 	addiu	sp,sp,80

0000052c <BgHidanSekizou_Destroy>:
     52c:	27bdffe8 	addiu	sp,sp,-24
     530:	afa40018 	sw	a0,24(sp)
     534:	8fae0018 	lw	t6,24(sp)
     538:	afbf0014 	sw	ra,20(sp)
     53c:	00a03825 	move	a3,a1
     540:	00a02025 	move	a0,a1
     544:	8dc6014c 	lw	a2,332(t6)
     548:	afa7001c 	sw	a3,28(sp)
     54c:	0c000000 	jal	0 <func_8088CEC0>
     550:	24a50810 	addiu	a1,a1,2064
     554:	8fa50018 	lw	a1,24(sp)
     558:	8fa4001c 	lw	a0,28(sp)
     55c:	0c000000 	jal	0 <func_8088CEC0>
     560:	24a50174 	addiu	a1,a1,372
     564:	8fbf0014 	lw	ra,20(sp)
     568:	27bd0018 	addiu	sp,sp,24
     56c:	03e00008 	jr	ra
     570:	00000000 	nop

00000574 <func_8088D434>:
     574:	27bdff90 	addiu	sp,sp,-112
     578:	3c0142a0 	lui	at,0x42a0
     57c:	44811000 	mtc1	at,$f2
     580:	afbf0034 	sw	ra,52(sp)
     584:	afb70030 	sw	s7,48(sp)
     588:	afb6002c 	sw	s6,44(sp)
     58c:	afb50028 	sw	s5,40(sp)
     590:	afb40024 	sw	s4,36(sp)
     594:	afb30020 	sw	s3,32(sp)
     598:	afb2001c 	sw	s2,28(sp)
     59c:	afb10018 	sw	s1,24(sp)
     5a0:	afb00014 	sw	s0,20(sp)
     5a4:	3c014396 	lui	at,0x4396
     5a8:	44813000 	mtc1	at,$f6
     5ac:	c4840090 	lwc1	$f4,144(a0)
     5b0:	00808025 	move	s0,a0
     5b4:	8ca21c44 	lw	v0,7236(a1)
     5b8:	4606203c 	c.lt.s	$f4,$f6
     5bc:	0000b825 	move	s7,zero
     5c0:	0000a025 	move	s4,zero
     5c4:	02009025 	move	s2,s0
     5c8:	45000002 	bc1f	5d4 <func_8088D434+0x60>
     5cc:	00008825 	move	s1,zero
     5d0:	24170001 	li	s7,1
     5d4:	c6080024 	lwc1	$f8,36(s0)
     5d8:	c44a0024 	lwc1	$f10,36(v0)
     5dc:	00007025 	move	t6,zero
     5e0:	00009825 	move	s3,zero
     5e4:	460a4001 	sub.s	$f0,$f8,$f10
     5e8:	24160023 	li	s6,35
     5ec:	27b50060 	addiu	s5,sp,96
     5f0:	46000005 	abs.s	$f0,$f0
     5f4:	4602003c 	c.lt.s	$f0,$f2
     5f8:	00000000 	nop
     5fc:	45020003 	bc1fl	60c <func_8088D434+0x98>
     600:	afae0060 	sw	t6,96(sp)
     604:	240e0001 	li	t6,1
     608:	afae0060 	sw	t6,96(sp)
     60c:	c452002c 	lwc1	$f18,44(v0)
     610:	c610002c 	lwc1	$f16,44(s0)
     614:	00007825 	move	t7,zero
     618:	46128001 	sub.s	$f0,$f16,$f18
     61c:	46000005 	abs.s	$f0,$f0
     620:	4602003c 	c.lt.s	$f0,$f2
     624:	00000000 	nop
     628:	45020003 	bc1fl	638 <func_8088D434+0xc4>
     62c:	afaf0064 	sw	t7,100(sp)
     630:	240f0001 	li	t7,1
     634:	afaf0064 	sw	t7,100(sp)
     638:	86580168 	lh	t8,360(s2)
     63c:	26420168 	addiu	v0,s2,360
     640:	57000005 	bnezl	t8,658 <func_8088D434+0xe4>
     644:	84480000 	lh	t0,0(v0)
     648:	8619008a 	lh	t9,138(s0)
     64c:	10000006 	b	668 <func_8088D434+0xf4>
     650:	03331823 	subu	v1,t9,s3
     654:	84480000 	lh	t0,0(v0)
     658:	2509ffff 	addiu	t1,t0,-1
     65c:	a4490000 	sh	t1,0(v0)
     660:	860a008a 	lh	t2,138(s0)
     664:	01531823 	subu	v1,t2,s3
     668:	00031400 	sll	v0,v1,0x10
     66c:	00021403 	sra	v0,v0,0x10
     670:	06210004 	bgez	s1,684 <func_8088D434+0x110>
     674:	322b0001 	andi	t3,s1,0x1
     678:	11600002 	beqz	t3,684 <func_8088D434+0x110>
     67c:	00000000 	nop
     680:	256bfffe 	addiu	t3,t3,-2
     684:	000b6080 	sll	t4,t3,0x2
     688:	02ac6821 	addu	t5,s5,t4
     68c:	8dae0000 	lw	t6,0(t5)
     690:	51c0001d 	beqzl	t6,708 <func_8088D434+0x194>
     694:	26310001 	addiu	s1,s1,1
     698:	52e0001b 	beqzl	s7,708 <func_8088D434+0x194>
     69c:	26310001 	addiu	s1,s1,1
     6a0:	04400003 	bltz	v0,6b0 <func_8088D434+0x13c>
     6a4:	00022823 	negu	a1,v0
     6a8:	10000001 	b	6b0 <func_8088D434+0x13c>
     6ac:	00402825 	move	a1,v0
     6b0:	28a14001 	slti	at,a1,16385
     6b4:	10200013 	beqz	at,704 <func_8088D434+0x190>
     6b8:	26420168 	addiu	v0,s2,360
     6bc:	84430000 	lh	v1,0(v0)
     6c0:	02802825 	move	a1,s4
     6c4:	28610004 	slti	at,v1,4
     6c8:	10200002 	beqz	at,6d4 <func_8088D434+0x160>
     6cc:	02c37823 	subu	t7,s6,v1
     6d0:	a44f0000 	sh	t7,0(v0)
     6d4:	2a810002 	slti	at,s4,2
     6d8:	14200003 	bnez	at,6e8 <func_8088D434+0x174>
     6dc:	00000000 	nop
     6e0:	10000001 	b	6e8 <func_8088D434+0x174>
     6e4:	24050001 	li	a1,1
     6e8:	861800b6 	lh	t8,182(s0)
     6ec:	02002025 	move	a0,s0
     6f0:	03133021 	addu	a2,t8,s3
     6f4:	00063400 	sll	a2,a2,0x10
     6f8:	0c000000 	jal	0 <func_8088CEC0>
     6fc:	00063403 	sra	a2,a2,0x10
     700:	26940001 	addiu	s4,s4,1
     704:	26310001 	addiu	s1,s1,1
     708:	2a210004 	slti	at,s1,4
     70c:	26520002 	addiu	s2,s2,2
     710:	1420ffc9 	bnez	at,638 <func_8088D434+0xc4>
     714:	26734000 	addiu	s3,s3,16384
     718:	00141080 	sll	v0,s4,0x2
     71c:	00541023 	subu	v0,v0,s4
     720:	28410006 	slti	at,v0,6
     724:	10200043 	beqz	at,834 <func_8088D434+0x2c0>
     728:	00408825 	move	s1,v0
     72c:	24060006 	li	a2,6
     730:	00c22023 	subu	a0,a2,v0
     734:	30840003 	andi	a0,a0,0x3
     738:	10800011 	beqz	a0,780 <func_8088D434+0x20c>
     73c:	00822821 	addu	a1,a0,v0
     740:	00021980 	sll	v1,v0,0x6
     744:	2404fffe 	li	a0,-2
     748:	8e190190 	lw	t9,400(s0)
     74c:	26310001 	addiu	s1,s1,1
     750:	03231021 	addu	v0,t9,v1
     754:	90480015 	lbu	t0,21(v0)
     758:	01044824 	and	t1,t0,a0
     75c:	a0490015 	sb	t1,21(v0)
     760:	8e0a0190 	lw	t2,400(s0)
     764:	01431021 	addu	v0,t2,v1
     768:	904b0017 	lbu	t3,23(v0)
     76c:	24630040 	addiu	v1,v1,64
     770:	01646024 	and	t4,t3,a0
     774:	14b1fff4 	bne	a1,s1,748 <func_8088D434+0x1d4>
     778:	a04c0017 	sb	t4,23(v0)
     77c:	1226002d 	beq	s1,a2,834 <func_8088D434+0x2c0>
     780:	2404fffe 	li	a0,-2
     784:	00111980 	sll	v1,s1,0x6
     788:	24050180 	li	a1,384
     78c:	8e0d0190 	lw	t5,400(s0)
     790:	01a31021 	addu	v0,t5,v1
     794:	904e0015 	lbu	t6,21(v0)
     798:	01c47824 	and	t7,t6,a0
     79c:	a04f0015 	sb	t7,21(v0)
     7a0:	8e180190 	lw	t8,400(s0)
     7a4:	03031021 	addu	v0,t8,v1
     7a8:	90590017 	lbu	t9,23(v0)
     7ac:	03244024 	and	t0,t9,a0
     7b0:	a0480017 	sb	t0,23(v0)
     7b4:	8e090190 	lw	t1,400(s0)
     7b8:	01231021 	addu	v0,t1,v1
     7bc:	904a0055 	lbu	t2,85(v0)
     7c0:	01445824 	and	t3,t2,a0
     7c4:	a04b0055 	sb	t3,85(v0)
     7c8:	8e0c0190 	lw	t4,400(s0)
     7cc:	01831021 	addu	v0,t4,v1
     7d0:	904d0057 	lbu	t5,87(v0)
     7d4:	01a47024 	and	t6,t5,a0
     7d8:	a04e0057 	sb	t6,87(v0)
     7dc:	8e0f0190 	lw	t7,400(s0)
     7e0:	01e31021 	addu	v0,t7,v1
     7e4:	90580095 	lbu	t8,149(v0)
     7e8:	0304c824 	and	t9,t8,a0
     7ec:	a0590095 	sb	t9,149(v0)
     7f0:	8e080190 	lw	t0,400(s0)
     7f4:	01031021 	addu	v0,t0,v1
     7f8:	90490097 	lbu	t1,151(v0)
     7fc:	01245024 	and	t2,t1,a0
     800:	a04a0097 	sb	t2,151(v0)
     804:	8e0b0190 	lw	t3,400(s0)
     808:	01631021 	addu	v0,t3,v1
     80c:	904c00d5 	lbu	t4,213(v0)
     810:	01846824 	and	t5,t4,a0
     814:	a04d00d5 	sb	t5,213(v0)
     818:	8e0e0190 	lw	t6,400(s0)
     81c:	01c31021 	addu	v0,t6,v1
     820:	904f00d7 	lbu	t7,215(v0)
     824:	24630100 	addiu	v1,v1,256
     828:	01e4c024 	and	t8,t7,a0
     82c:	1465ffd7 	bne	v1,a1,78c <func_8088D434+0x218>
     830:	a05800d7 	sb	t8,215(v0)
     834:	8fbf0034 	lw	ra,52(sp)
     838:	8fb00014 	lw	s0,20(sp)
     83c:	8fb10018 	lw	s1,24(sp)
     840:	8fb2001c 	lw	s2,28(sp)
     844:	8fb30020 	lw	s3,32(sp)
     848:	8fb40024 	lw	s4,36(sp)
     84c:	8fb50028 	lw	s5,40(sp)
     850:	8fb6002c 	lw	s6,44(sp)
     854:	8fb70030 	lw	s7,48(sp)
     858:	03e00008 	jr	ra
     85c:	27bd0070 	addiu	sp,sp,112

00000860 <func_8088D720>:
     860:	afa50004 	sw	a1,4(sp)
     864:	848e0168 	lh	t6,360(a0)
     868:	24190024 	li	t9,36
     86c:	25cfffff 	addiu	t7,t6,-1
     870:	a48f0168 	sh	t7,360(a0)
     874:	84980168 	lh	t8,360(a0)
     878:	2b01ffdd 	slti	at,t8,-35
     87c:	10200002 	beqz	at,888 <func_8088D720+0x28>
     880:	00000000 	nop
     884:	a4990168 	sh	t9,360(a0)
     888:	03e00008 	jr	ra
     88c:	00000000 	nop

00000890 <func_8088D750>:
     890:	27bdffe0 	addiu	sp,sp,-32
     894:	afbf001c 	sw	ra,28(sp)
     898:	afa40020 	sw	a0,32(sp)
     89c:	afa50024 	sw	a1,36(sp)
     8a0:	3c014348 	lui	at,0x4348
     8a4:	44812000 	mtc1	at,$f4
     8a8:	c4860090 	lwc1	$f6,144(a0)
     8ac:	8faf0020 	lw	t7,32(sp)
     8b0:	8fa50020 	lw	a1,32(sp)
     8b4:	4606203c 	c.lt.s	$f4,$f6
     8b8:	3c0640a0 	lui	a2,0x40a0
     8bc:	45020004 	bc1fl	8d0 <func_8088D750+0x40>
     8c0:	85f8001c 	lh	t8,28(t7)
     8c4:	10000043 	b	9d4 <func_8088D750+0x144>
     8c8:	8487008a 	lh	a3,138(a0)
     8cc:	85f8001c 	lh	t8,28(t7)
     8d0:	8fa80020 	lw	t0,32(sp)
     8d4:	5700001e 	bnezl	t8,950 <func_8088D750+0xc0>
     8d8:	8507008a 	lh	a3,138(t0)
     8dc:	85e200b6 	lh	v0,182(t7)
     8e0:	85f9008a 	lh	t9,138(t7)
     8e4:	03223823 	subu	a3,t9,v0
     8e8:	00073c00 	sll	a3,a3,0x10
     8ec:	00073c03 	sra	a3,a3,0x10
     8f0:	28e12001 	slti	at,a3,8193
     8f4:	54200006 	bnezl	at,910 <func_8088D750+0x80>
     8f8:	28e1e000 	slti	at,a3,-8192
     8fc:	24476000 	addiu	a3,v0,24576
     900:	00073c00 	sll	a3,a3,0x10
     904:	10000033 	b	9d4 <func_8088D750+0x144>
     908:	00073c03 	sra	a3,a3,0x10
     90c:	28e1e000 	slti	at,a3,-8192
     910:	10200005 	beqz	at,928 <func_8088D750+0x98>
     914:	00000000 	nop
     918:	2447a000 	addiu	a3,v0,-24576
     91c:	00073c00 	sll	a3,a3,0x10
     920:	1000002c 	b	9d4 <func_8088D750+0x144>
     924:	00073c03 	sra	a3,a3,0x10
     928:	18e00004 	blez	a3,93c <func_8088D750+0xac>
     92c:	2447e000 	addiu	a3,v0,-8192
     930:	00073c00 	sll	a3,a3,0x10
     934:	10000027 	b	9d4 <func_8088D750+0x144>
     938:	00073c03 	sra	a3,a3,0x10
     93c:	24472000 	addiu	a3,v0,8192
     940:	00073c00 	sll	a3,a3,0x10
     944:	10000023 	b	9d4 <func_8088D750+0x144>
     948:	00073c03 	sra	a3,a3,0x10
     94c:	8507008a 	lh	a3,138(t0)
     950:	28e16001 	slti	at,a3,24577
     954:	54200004 	bnezl	at,968 <func_8088D750+0xd8>
     958:	28e14001 	slti	at,a3,16385
     95c:	1000001d 	b	9d4 <func_8088D750+0x144>
     960:	24074000 	li	a3,16384
     964:	28e14001 	slti	at,a3,16385
     968:	54200004 	bnezl	at,97c <func_8088D750+0xec>
     96c:	28e12001 	slti	at,a3,8193
     970:	10000018 	b	9d4 <func_8088D750+0x144>
     974:	24078000 	li	a3,-32768
     978:	28e12001 	slti	at,a3,8193
     97c:	14200003 	bnez	at,98c <func_8088D750+0xfc>
     980:	00000000 	nop
     984:	10000013 	b	9d4 <func_8088D750+0x144>
     988:	00003825 	move	a3,zero
     98c:	18e00003 	blez	a3,99c <func_8088D750+0x10c>
     990:	28e1a000 	slti	at,a3,-24576
     994:	1000000f 	b	9d4 <func_8088D750+0x144>
     998:	24074000 	li	a3,16384
     99c:	50200004 	beqzl	at,9b0 <func_8088D750+0x120>
     9a0:	28e1c000 	slti	at,a3,-16384
     9a4:	1000000b 	b	9d4 <func_8088D750+0x144>
     9a8:	2407c000 	li	a3,-16384
     9ac:	28e1c000 	slti	at,a3,-16384
     9b0:	50200004 	beqzl	at,9c4 <func_8088D750+0x134>
     9b4:	28e1e000 	slti	at,a3,-8192
     9b8:	10000006 	b	9d4 <func_8088D750+0x144>
     9bc:	24078000 	li	a3,-32768
     9c0:	28e1e000 	slti	at,a3,-8192
     9c4:	10200003 	beqz	at,9d4 <func_8088D750+0x144>
     9c8:	2407c000 	li	a3,-16384
     9cc:	10000001 	b	9d4 <func_8088D750+0x144>
     9d0:	00003825 	move	a3,zero
     9d4:	3c013f80 	lui	at,0x3f80
     9d8:	44814000 	mtc1	at,$f8
     9dc:	8fa40024 	lw	a0,36(sp)
     9e0:	0c000000 	jal	0 <func_8088CEC0>
     9e4:	e7a80010 	swc1	$f8,16(sp)
     9e8:	8fbf001c 	lw	ra,28(sp)
     9ec:	27bd0020 	addiu	sp,sp,32
     9f0:	03e00008 	jr	ra
     9f4:	00000000 	nop

000009f8 <BgHidanSekizou_Update>:
     9f8:	27bdffd0 	addiu	sp,sp,-48
     9fc:	afbf001c 	sw	ra,28(sp)
     a00:	afb10018 	sw	s1,24(sp)
     a04:	afb00014 	sw	s0,20(sp)
     a08:	84820170 	lh	v0,368(a0)
     a0c:	00808025 	move	s0,a0
     a10:	00a08825 	move	s1,a1
     a14:	10400003 	beqz	v0,a24 <BgHidanSekizou_Update+0x2c>
     a18:	244effff 	addiu	t6,v0,-1
     a1c:	a48e0170 	sh	t6,368(a0)
     a20:	84820170 	lh	v0,368(a0)
     a24:	14400002 	bnez	v0,a30 <BgHidanSekizou_Update+0x38>
     a28:	240f0004 	li	t7,4
     a2c:	a60f0170 	sh	t7,368(s0)
     a30:	92020184 	lbu	v0,388(s0)
     a34:	02002025 	move	a0,s0
     a38:	02202825 	move	a1,s1
     a3c:	30580002 	andi	t8,v0,0x2
     a40:	13000003 	beqz	t8,a50 <BgHidanSekizou_Update+0x58>
     a44:	3059fffd 	andi	t9,v0,0xfffd
     a48:	0c000000 	jal	0 <func_8088CEC0>
     a4c:	a2190184 	sb	t9,388(s0)
     a50:	8e190164 	lw	t9,356(s0)
     a54:	02002025 	move	a0,s0
     a58:	02202825 	move	a1,s1
     a5c:	0320f809 	jalr	t9
     a60:	00000000 	nop
     a64:	8608001c 	lh	t0,28(s0)
     a68:	55000015 	bnezl	t0,ac0 <BgHidanSekizou_Update+0xc8>
     a6c:	860a0168 	lh	t2,360(s0)
     a70:	86090168 	lh	t1,360(s0)
     a74:	3c010001 	lui	at,0x1
     a78:	34211e60 	ori	at,at,0x1e60
     a7c:	19200028 	blez	t1,b20 <BgHidanSekizou_Update+0x128>
     a80:	02202025 	move	a0,s1
     a84:	02212821 	addu	a1,s1,at
     a88:	26060174 	addiu	a2,s0,372
     a8c:	afa60020 	sw	a2,32(sp)
     a90:	0c000000 	jal	0 <func_8088CEC0>
     a94:	afa50024 	sw	a1,36(sp)
     a98:	8fa50024 	lw	a1,36(sp)
     a9c:	8fa60020 	lw	a2,32(sp)
     aa0:	0c000000 	jal	0 <func_8088CEC0>
     aa4:	02202025 	move	a0,s1
     aa8:	02002025 	move	a0,s0
     aac:	0c000000 	jal	0 <func_8088CEC0>
     ab0:	24052033 	li	a1,8243
     ab4:	1000001b 	b	b24 <BgHidanSekizou_Update+0x12c>
     ab8:	8fbf001c 	lw	ra,28(sp)
     abc:	860a0168 	lh	t2,360(s0)
     ac0:	3c010001 	lui	at,0x1
     ac4:	34211e60 	ori	at,at,0x1e60
     ac8:	1d400009 	bgtz	t2,af0 <BgHidanSekizou_Update+0xf8>
     acc:	02202025 	move	a0,s1
     ad0:	860b016a 	lh	t3,362(s0)
     ad4:	5d600007 	bgtzl	t3,af4 <BgHidanSekizou_Update+0xfc>
     ad8:	02212821 	addu	a1,s1,at
     adc:	860c016c 	lh	t4,364(s0)
     ae0:	5d800004 	bgtzl	t4,af4 <BgHidanSekizou_Update+0xfc>
     ae4:	02212821 	addu	a1,s1,at
     ae8:	860d016e 	lh	t5,366(s0)
     aec:	19a0000c 	blez	t5,b20 <BgHidanSekizou_Update+0x128>
     af0:	02212821 	addu	a1,s1,at
     af4:	26060174 	addiu	a2,s0,372
     af8:	afa60020 	sw	a2,32(sp)
     afc:	0c000000 	jal	0 <func_8088CEC0>
     b00:	afa50024 	sw	a1,36(sp)
     b04:	8fa50024 	lw	a1,36(sp)
     b08:	8fa60020 	lw	a2,32(sp)
     b0c:	0c000000 	jal	0 <func_8088CEC0>
     b10:	02202025 	move	a0,s1
     b14:	02002025 	move	a0,s0
     b18:	0c000000 	jal	0 <func_8088CEC0>
     b1c:	24052033 	li	a1,8243
     b20:	8fbf001c 	lw	ra,28(sp)
     b24:	8fb00014 	lw	s0,20(sp)
     b28:	8fb10018 	lw	s1,24(sp)
     b2c:	03e00008 	jr	ra
     b30:	27bd0030 	addiu	sp,sp,48

00000b34 <func_8088D9F4>:
     b34:	27bdffb8 	addiu	sp,sp,-72
     b38:	87ae0062 	lh	t6,98(sp)
     b3c:	afa60050 	sw	a2,80(sp)
     b40:	00063400 	sll	a2,a2,0x10
     b44:	00063403 	sra	a2,a2,0x10
     b48:	01c67821 	addu	t7,t6,a2
     b4c:	3c010000 	lui	at,0x0
     b50:	c4280000 	lwc1	$f8,0(at)
     b54:	8fa30064 	lw	v1,100(sp)
     b58:	3c0adb06 	lui	t2,0xdb06
     b5c:	afbf0014 	sw	ra,20(sp)
     b60:	afa40048 	sw	a0,72(sp)
     b64:	05e10004 	bgez	t7,b78 <func_8088D9F4+0x44>
     b68:	31f80007 	andi	t8,t7,0x7
     b6c:	13000002 	beqz	t8,b78 <func_8088D9F4+0x44>
     b70:	00000000 	nop
     b74:	2718fff8 	addiu	t8,t8,-8
     b78:	0018c8c0 	sll	t9,t8,0x3
     b7c:	0338c823 	subu	t9,t9,t8
     b80:	44992000 	mtc1	t9,$f4
     b84:	354a0024 	ori	t2,t2,0x24
     b88:	00601025 	move	v0,v1
     b8c:	468021a0 	cvt.s.w	$f6,$f4
     b90:	3c040000 	lui	a0,0x0
     b94:	3c190000 	lui	t9,0x0
     b98:	3c0100ff 	lui	at,0xff
     b9c:	3421ffff 	ori	at,at,0xffff
     ba0:	24c60001 	addiu	a2,a2,1
     ba4:	46083282 	mul.s	$f10,$f6,$f8
     ba8:	00063400 	sll	a2,a2,0x10
     bac:	00063403 	sra	a2,a2,0x10
     bb0:	24630008 	addiu	v1,v1,8
     bb4:	4600540d 	trunc.w.s	$f16,$f10
     bb8:	44098000 	mfc1	t1,$f16
     bbc:	00000000 	nop
     bc0:	a7a90062 	sh	t1,98(sp)
     bc4:	ac4a0000 	sw	t2,0(v0)
     bc8:	87ab0062 	lh	t3,98(sp)
     bcc:	000b6080 	sll	t4,t3,0x2
     bd0:	008c2021 	addu	a0,a0,t4
     bd4:	8c840000 	lw	a0,0(a0)
     bd8:	3c0cfa00 	lui	t4,0xfa00
     bdc:	358c0001 	ori	t4,t4,0x1
     be0:	00047100 	sll	t6,a0,0x4
     be4:	000e7f02 	srl	t7,t6,0x1c
     be8:	000fc080 	sll	t8,t7,0x2
     bec:	0338c821 	addu	t9,t9,t8
     bf0:	8f390000 	lw	t9,0(t9)
     bf4:	00816824 	and	t5,a0,at
     bf8:	3c018000 	lui	at,0x8000
     bfc:	01b94021 	addu	t0,t5,t9
     c00:	01014821 	addu	t1,t0,at
     c04:	ac490004 	sw	t1,4(v0)
     c08:	24020004 	li	v0,4
     c0c:	10c2000c 	beq	a2,v0,c40 <func_8088D9F4+0x10c>
     c10:	3c0effff 	lui	t6,0xffff
     c14:	84aa0170 	lh	t2,368(a1)
     c18:	3c013e80 	lui	at,0x3e80
     c1c:	44813000 	mtc1	at,$f6
     c20:	004a5823 	subu	t3,v0,t2
     c24:	448b9000 	mtc1	t3,$f18
     c28:	44865000 	mtc1	a2,$f10
     c2c:	46809120 	cvt.s.w	$f4,$f18
     c30:	46805420 	cvt.s.w	$f16,$f10
     c34:	46062202 	mul.s	$f8,$f4,$f6
     c38:	10000004 	b	c4c <func_8088D9F4+0x118>
     c3c:	46088300 	add.s	$f12,$f16,$f8
     c40:	44869000 	mtc1	a2,$f18
     c44:	00000000 	nop
     c48:	46809320 	cvt.s.w	$f12,$f18
     c4c:	00601025 	move	v0,v1
     c50:	35ce0096 	ori	t6,t6,0x96
     c54:	ac4e0004 	sw	t6,4(v0)
     c58:	ac4c0000 	sw	t4,0(v0)
     c5c:	24630008 	addiu	v1,v1,8
     c60:	00601025 	move	v0,v1
     c64:	3c18ff00 	lui	t8,0xff00
     c68:	371800ff 	ori	t8,t8,0xff
     c6c:	3c0ffb00 	lui	t7,0xfb00
     c70:	ac4f0000 	sw	t7,0(v0)
     c74:	ac580004 	sw	t8,4(v0)
     c78:	3c010000 	lui	at,0x0
     c7c:	c4240000 	lwc1	$f4,0(at)
     c80:	3c013f00 	lui	at,0x3f00
     c84:	44815000 	mtc1	at,$f10
     c88:	460c2182 	mul.s	$f6,$f4,$f12
     c8c:	3c014120 	lui	at,0x4120
     c90:	44818000 	mtc1	at,$f16
     c94:	3c0141a0 	lui	at,0x41a0
     c98:	44812000 	mtc1	at,$f4
     c9c:	3c0141f0 	lui	at,0x41f0
     ca0:	24630008 	addiu	v1,v1,8
     ca4:	460a3000 	add.s	$f0,$f6,$f10
     ca8:	00601025 	move	v0,v1
     cac:	3c0dda38 	lui	t5,0xda38
     cb0:	35ad0003 	ori	t5,t5,0x3
     cb4:	46100202 	mul.s	$f8,$f0,$f16
     cb8:	e4e00028 	swc1	$f0,40(a3)
     cbc:	e4e00014 	swc1	$f0,20(a3)
     cc0:	e4e00000 	swc1	$f0,0(a3)
     cc4:	c7a60058 	lwc1	$f6,88(sp)
     cc8:	c4b00024 	lwc1	$f16,36(a1)
     ccc:	24630008 	addiu	v1,v1,8
     cd0:	460c4482 	mul.s	$f18,$f8,$f12
     cd4:	00e02025 	move	a0,a3
     cd8:	240602c7 	li	a2,711
     cdc:	46049080 	add.s	$f2,$f18,$f4
     ce0:	44812000 	mtc1	at,$f4
     ce4:	3c010000 	lui	at,0x0
     ce8:	46061282 	mul.s	$f10,$f2,$f6
     cec:	46105200 	add.s	$f8,$f10,$f16
     cf0:	e4e80030 	swc1	$f8,48(a3)
     cf4:	c42a0000 	lwc1	$f10,0(at)
     cf8:	c4b20028 	lwc1	$f18,40(a1)
     cfc:	460c5402 	mul.s	$f16,$f10,$f12
     d00:	46049180 	add.s	$f6,$f18,$f4
     d04:	46103200 	add.s	$f8,$f6,$f16
     d08:	e4e80034 	swc1	$f8,52(a3)
     d0c:	c7b2005c 	lwc1	$f18,92(sp)
     d10:	c4aa002c 	lwc1	$f10,44(a1)
     d14:	3c050000 	lui	a1,0x0
     d18:	46121102 	mul.s	$f4,$f2,$f18
     d1c:	24a50000 	addiu	a1,a1,0
     d20:	460a2180 	add.s	$f6,$f4,$f10
     d24:	e4e60038 	swc1	$f6,56(a3)
     d28:	ac4d0000 	sw	t5,0(v0)
     d2c:	afa30064 	sw	v1,100(sp)
     d30:	0c000000 	jal	0 <func_8088CEC0>
     d34:	afa2002c 	sw	v0,44(sp)
     d38:	8fb90048 	lw	t9,72(sp)
     d3c:	afa20018 	sw	v0,24(sp)
     d40:	24050040 	li	a1,64
     d44:	0c000000 	jal	0 <func_8088CEC0>
     d48:	8f240000 	lw	a0,0(t9)
     d4c:	8fa40018 	lw	a0,24(sp)
     d50:	0c000000 	jal	0 <func_8088CEC0>
     d54:	00402825 	move	a1,v0
     d58:	8fa8002c 	lw	t0,44(sp)
     d5c:	8fa30064 	lw	v1,100(sp)
     d60:	3c0a0601 	lui	t2,0x601
     d64:	ad020004 	sw	v0,4(t0)
     d68:	00601025 	move	v0,v1
     d6c:	254adc30 	addiu	t2,t2,-9168
     d70:	3c09de00 	lui	t1,0xde00
     d74:	ac490000 	sw	t1,0(v0)
     d78:	ac4a0004 	sw	t2,4(v0)
     d7c:	8fbf0014 	lw	ra,20(sp)
     d80:	24630008 	addiu	v1,v1,8
     d84:	00601025 	move	v0,v1
     d88:	03e00008 	jr	ra
     d8c:	27bd0048 	addiu	sp,sp,72

00000d90 <func_8088DC50>:
     d90:	27bdff40 	addiu	sp,sp,-192
     d94:	afb40048 	sw	s4,72(sp)
     d98:	0007a400 	sll	s4,a3,0x10
     d9c:	0014a403 	sra	s4,s4,0x10
     da0:	afb00038 	sw	s0,56(sp)
     da4:	00068400 	sll	s0,a2,0x10
     da8:	afb60050 	sw	s6,80(sp)
     dac:	afb5004c 	sw	s5,76(sp)
     db0:	2a810004 	slti	at,s4,4
     db4:	0080a825 	move	s5,a0
     db8:	00a0b025 	move	s6,a1
     dbc:	00108403 	sra	s0,s0,0x10
     dc0:	afbf0054 	sw	ra,84(sp)
     dc4:	afb30044 	sw	s3,68(sp)
     dc8:	afb20040 	sw	s2,64(sp)
     dcc:	afb1003c 	sw	s1,60(sp)
     dd0:	f7b60030 	sdc1	$f22,48(sp)
     dd4:	f7b40028 	sdc1	$f20,40(sp)
     dd8:	afa600c8 	sw	a2,200(sp)
     ddc:	10200005 	beqz	at,df4 <func_8088DC50+0x64>
     de0:	afa700cc 	sw	a3,204(sp)
     de4:	240e0004 	li	t6,4
     de8:	01d48823 	subu	s1,t6,s4
     dec:	10000007 	b	e0c <func_8088DC50+0x7c>
     df0:	24120004 	li	s2,4
     df4:	240f0024 	li	t7,36
     df8:	01f49023 	subu	s2,t7,s4
     dfc:	2a410005 	slti	at,s2,5
     e00:	14200002 	bnez	at,e0c <func_8088DC50+0x7c>
     e04:	00008825 	move	s1,zero
     e08:	24120004 	li	s2,4
     e0c:	00102400 	sll	a0,s0,0x10
     e10:	0c000000 	jal	0 <func_8088CEC0>
     e14:	00042403 	sra	a0,a0,0x10
     e18:	00102400 	sll	a0,s0,0x10
     e1c:	46000506 	mov.s	$f20,$f0
     e20:	0c000000 	jal	0 <func_8088CEC0>
     e24:	00042403 	sra	a0,a0,0x10
     e28:	27b30068 	addiu	s3,sp,104
     e2c:	3c050000 	lui	a1,0x0
     e30:	46000586 	mov.s	$f22,$f0
     e34:	24a50000 	addiu	a1,a1,0
     e38:	0c000000 	jal	0 <func_8088CEC0>
     e3c:	02602025 	move	a0,s3
     e40:	86b807a0 	lh	t8,1952(s5)
     e44:	0018c880 	sll	t9,t8,0x2
     e48:	02b94021 	addu	t0,s5,t9
     e4c:	0c000000 	jal	0 <func_8088CEC0>
     e50:	8d040790 	lw	a0,1936(t0)
     e54:	00501823 	subu	v1,v0,s0
     e58:	00031c00 	sll	v1,v1,0x10
     e5c:	00031c03 	sra	v1,v1,0x10
     e60:	04600003 	bltz	v1,e70 <func_8088DC50+0xe0>
     e64:	00031023 	negu	v0,v1
     e68:	10000001 	b	e70 <func_8088DC50+0xe0>
     e6c:	00601025 	move	v0,v1
     e70:	28414000 	slti	at,v0,16384
     e74:	10200015 	beqz	at,ecc <func_8088DC50+0x13c>
     e78:	2650ffff 	addiu	s0,s2,-1
     e7c:	0211082a 	slt	at,s0,s1
     e80:	14200010 	bnez	at,ec4 <func_8088DC50+0x134>
     e84:	2632ffff 	addiu	s2,s1,-1
     e88:	8fb100d0 	lw	s1,208(sp)
     e8c:	00103400 	sll	a2,s0,0x10
     e90:	00063403 	sra	a2,a2,0x10
     e94:	02a02025 	move	a0,s5
     e98:	02c02825 	move	a1,s6
     e9c:	02603825 	move	a3,s3
     ea0:	e7b40010 	swc1	$f20,16(sp)
     ea4:	e7b60014 	swc1	$f22,20(sp)
     ea8:	afb40018 	sw	s4,24(sp)
     eac:	0c000000 	jal	0 <func_8088CEC0>
     eb0:	afb1001c 	sw	s1,28(sp)
     eb4:	2610ffff 	addiu	s0,s0,-1
     eb8:	1612fff4 	bne	s0,s2,e8c <func_8088DC50+0xfc>
     ebc:	00408825 	move	s1,v0
     ec0:	afa200d0 	sw	v0,208(sp)
     ec4:	10000014 	b	f18 <func_8088DC50+0x188>
     ec8:	8fbf0054 	lw	ra,84(sp)
     ecc:	0232082a 	slt	at,s1,s2
     ed0:	10200010 	beqz	at,f14 <func_8088DC50+0x184>
     ed4:	02208025 	move	s0,s1
     ed8:	8fb100d0 	lw	s1,208(sp)
     edc:	00103400 	sll	a2,s0,0x10
     ee0:	00063403 	sra	a2,a2,0x10
     ee4:	02a02025 	move	a0,s5
     ee8:	02c02825 	move	a1,s6
     eec:	02603825 	move	a3,s3
     ef0:	e7b40010 	swc1	$f20,16(sp)
     ef4:	e7b60014 	swc1	$f22,20(sp)
     ef8:	afb40018 	sw	s4,24(sp)
     efc:	0c000000 	jal	0 <func_8088CEC0>
     f00:	afb1001c 	sw	s1,28(sp)
     f04:	26100001 	addiu	s0,s0,1
     f08:	1612fff4 	bne	s0,s2,edc <func_8088DC50+0x14c>
     f0c:	00408825 	move	s1,v0
     f10:	afa200d0 	sw	v0,208(sp)
     f14:	8fbf0054 	lw	ra,84(sp)
     f18:	8fa200d0 	lw	v0,208(sp)
     f1c:	d7b40028 	ldc1	$f20,40(sp)
     f20:	d7b60030 	ldc1	$f22,48(sp)
     f24:	8fb00038 	lw	s0,56(sp)
     f28:	8fb1003c 	lw	s1,60(sp)
     f2c:	8fb20040 	lw	s2,64(sp)
     f30:	8fb30044 	lw	s3,68(sp)
     f34:	8fb40048 	lw	s4,72(sp)
     f38:	8fb5004c 	lw	s5,76(sp)
     f3c:	8fb60050 	lw	s6,80(sp)
     f40:	03e00008 	jr	ra
     f44:	27bd00c0 	addiu	sp,sp,192

00000f48 <func_8088DE08>:
     f48:	afa40000 	sw	a0,0(sp)
     f4c:	afa50004 	sw	a1,4(sp)
     f50:	00052c00 	sll	a1,a1,0x10
     f54:	00042400 	sll	a0,a0,0x10
     f58:	00042403 	sra	a0,a0,0x10
     f5c:	00052c03 	sra	a1,a1,0x10
     f60:	00851023 	subu	v0,a0,a1
     f64:	00021400 	sll	v0,v0,0x10
     f68:	00021403 	sra	v0,v0,0x10
     f6c:	04400003 	bltz	v0,f7c <func_8088DE08+0x34>
     f70:	00021823 	negu	v1,v0
     f74:	10000001 	b	f7c <func_8088DE08+0x34>
     f78:	00401825 	move	v1,v0
     f7c:	28612001 	slti	at,v1,8193
     f80:	10200008 	beqz	at,fa4 <func_8088DE08+0x5c>
     f84:	240e0001 	li	t6,1
     f88:	240f0003 	li	t7,3
     f8c:	24180002 	li	t8,2
     f90:	acc00000 	sw	zero,0(a2)
     f94:	acce0004 	sw	t6,4(a2)
     f98:	accf0008 	sw	t7,8(a2)
     f9c:	03e00008 	jr	ra
     fa0:	acd8000c 	sw	t8,12(a2)
     fa4:	04400003 	bltz	v0,fb4 <func_8088DE08+0x6c>
     fa8:	00021823 	negu	v1,v0
     fac:	10000001 	b	fb4 <func_8088DE08+0x6c>
     fb0:	00401825 	move	v1,v0
     fb4:	28616000 	slti	at,v1,24576
     fb8:	14200008 	bnez	at,fdc <func_8088DE08+0x94>
     fbc:	24190002 	li	t9,2
     fc0:	24080003 	li	t0,3
     fc4:	24090001 	li	t1,1
     fc8:	acd90000 	sw	t9,0(a2)
     fcc:	acc80004 	sw	t0,4(a2)
     fd0:	acc90008 	sw	t1,8(a2)
     fd4:	03e00008 	jr	ra
     fd8:	acc0000c 	sw	zero,12(a2)
     fdc:	28412001 	slti	at,v0,8193
     fe0:	14200009 	bnez	at,1008 <func_8088DE08+0xc0>
     fe4:	240d0003 	li	t5,3
     fe8:	240a0001 	li	t2,1
     fec:	240b0002 	li	t3,2
     ff0:	240c0003 	li	t4,3
     ff4:	acca0000 	sw	t2,0(a2)
     ff8:	acc00004 	sw	zero,4(a2)
     ffc:	accb0008 	sw	t3,8(a2)
    1000:	03e00008 	jr	ra
    1004:	accc000c 	sw	t4,12(a2)
    1008:	240e0002 	li	t6,2
    100c:	240f0001 	li	t7,1
    1010:	accd0000 	sw	t5,0(a2)
    1014:	acce0004 	sw	t6,4(a2)
    1018:	acc00008 	sw	zero,8(a2)
    101c:	accf000c 	sw	t7,12(a2)
    1020:	03e00008 	jr	ra
    1024:	00000000 	nop

00001028 <BgHidanSekizou_Draw>:
    1028:	27bdff78 	addiu	sp,sp,-136
    102c:	afb40030 	sw	s4,48(sp)
    1030:	00a0a025 	move	s4,a1
    1034:	afbf0034 	sw	ra,52(sp)
    1038:	afb3002c 	sw	s3,44(sp)
    103c:	afb20028 	sw	s2,40(sp)
    1040:	afb10024 	sw	s1,36(sp)
    1044:	afb00020 	sw	s0,32(sp)
    1048:	8ca50000 	lw	a1,0(a1)
    104c:	00808825 	move	s1,a0
    1050:	3c060000 	lui	a2,0x0
    1054:	24c60000 	addiu	a2,a2,0
    1058:	27a40058 	addiu	a0,sp,88
    105c:	2407033b 	li	a3,827
    1060:	0c000000 	jal	0 <func_8088CEC0>
    1064:	00a09825 	move	s3,a1
    1068:	0c000000 	jal	0 <func_8088CEC0>
    106c:	8e840000 	lw	a0,0(s4)
    1070:	8e6202c0 	lw	v0,704(s3)
    1074:	3c0fda38 	lui	t7,0xda38
    1078:	35ef0003 	ori	t7,t7,0x3
    107c:	244e0008 	addiu	t6,v0,8
    1080:	ae6e02c0 	sw	t6,704(s3)
    1084:	3c050000 	lui	a1,0x0
    1088:	ac4f0000 	sw	t7,0(v0)
    108c:	8e840000 	lw	a0,0(s4)
    1090:	24a50000 	addiu	a1,a1,0
    1094:	2406033f 	li	a2,831
    1098:	0c000000 	jal	0 <func_8088CEC0>
    109c:	00408025 	move	s0,v0
    10a0:	ae020004 	sw	v0,4(s0)
    10a4:	8638001c 	lh	t8,28(s1)
    10a8:	3c08de00 	lui	t0,0xde00
    10ac:	3c0bde00 	lui	t3,0xde00
    10b0:	17000009 	bnez	t8,10d8 <BgHidanSekizou_Draw+0xb0>
    10b4:	24050014 	li	a1,20
    10b8:	8e6202c0 	lw	v0,704(s3)
    10bc:	3c090601 	lui	t1,0x601
    10c0:	2529b0f8 	addiu	t1,t1,-20232
    10c4:	24590008 	addiu	t9,v0,8
    10c8:	ae7902c0 	sw	t9,704(s3)
    10cc:	ac490004 	sw	t1,4(v0)
    10d0:	10000008 	b	10f4 <BgHidanSekizou_Draw+0xcc>
    10d4:	ac480000 	sw	t0,0(v0)
    10d8:	8e6202c0 	lw	v0,704(s3)
    10dc:	3c0c0601 	lui	t4,0x601
    10e0:	258cabc8 	addiu	t4,t4,-21560
    10e4:	244a0008 	addiu	t2,v0,8
    10e8:	ae6a02c0 	sw	t2,704(s3)
    10ec:	ac4c0004 	sw	t4,4(v0)
    10f0:	ac4b0000 	sw	t3,0(v0)
    10f4:	0c000000 	jal	0 <func_8088CEC0>
    10f8:	8e6402d0 	lw	a0,720(s3)
    10fc:	ae6202d0 	sw	v0,720(s3)
    1100:	862d001c 	lh	t5,28(s1)
    1104:	55a00039 	bnezl	t5,11ec <BgHidanSekizou_Draw+0x1c4>
    1108:	868d07a0 	lh	t5,1952(s4)
    110c:	862e0168 	lh	t6,360(s1)
    1110:	19c00055 	blez	t6,1268 <BgHidanSekizou_Draw+0x240>
    1114:	00000000 	nop
    1118:	868f07a0 	lh	t7,1952(s4)
    111c:	000fc080 	sll	t8,t7,0x2
    1120:	0298c821 	addu	t9,s4,t8
    1124:	0c000000 	jal	0 <func_8088CEC0>
    1128:	8f240790 	lw	a0,1936(t9)
    112c:	862300b6 	lh	v1,182(s1)
    1130:	02802025 	move	a0,s4
    1134:	02202825 	move	a1,s1
    1138:	00434023 	subu	t0,v0,v1
    113c:	00084c00 	sll	t1,t0,0x10
    1140:	00095403 	sra	t2,t1,0x10
    1144:	05400016 	bltz	t2,11a0 <BgHidanSekizou_Draw+0x178>
    1148:	2466e000 	addiu	a2,v1,-8192
    114c:	8e6b02d0 	lw	t3,720(s3)
    1150:	24662000 	addiu	a2,v1,8192
    1154:	00063400 	sll	a2,a2,0x10
    1158:	86270168 	lh	a3,360(s1)
    115c:	00063403 	sra	a2,a2,0x10
    1160:	02802025 	move	a0,s4
    1164:	02202825 	move	a1,s1
    1168:	0c000000 	jal	0 <func_8088CEC0>
    116c:	afab0010 	sw	t3,16(sp)
    1170:	ae6202d0 	sw	v0,720(s3)
    1174:	862600b6 	lh	a2,182(s1)
    1178:	86270168 	lh	a3,360(s1)
    117c:	afa20010 	sw	v0,16(sp)
    1180:	24c6e000 	addiu	a2,a2,-8192
    1184:	00063400 	sll	a2,a2,0x10
    1188:	00063403 	sra	a2,a2,0x10
    118c:	02802025 	move	a0,s4
    1190:	0c000000 	jal	0 <func_8088CEC0>
    1194:	02202825 	move	a1,s1
    1198:	10000033 	b	1268 <BgHidanSekizou_Draw+0x240>
    119c:	ae6202d0 	sw	v0,720(s3)
    11a0:	8e6c02d0 	lw	t4,720(s3)
    11a4:	00063400 	sll	a2,a2,0x10
    11a8:	86270168 	lh	a3,360(s1)
    11ac:	00063403 	sra	a2,a2,0x10
    11b0:	0c000000 	jal	0 <func_8088CEC0>
    11b4:	afac0010 	sw	t4,16(sp)
    11b8:	ae6202d0 	sw	v0,720(s3)
    11bc:	862600b6 	lh	a2,182(s1)
    11c0:	86270168 	lh	a3,360(s1)
    11c4:	afa20010 	sw	v0,16(sp)
    11c8:	24c62000 	addiu	a2,a2,8192
    11cc:	00063400 	sll	a2,a2,0x10
    11d0:	00063403 	sra	a2,a2,0x10
    11d4:	02802025 	move	a0,s4
    11d8:	0c000000 	jal	0 <func_8088CEC0>
    11dc:	02202825 	move	a1,s1
    11e0:	10000021 	b	1268 <BgHidanSekizou_Draw+0x240>
    11e4:	ae6202d0 	sw	v0,720(s3)
    11e8:	868d07a0 	lh	t5,1952(s4)
    11ec:	000d7080 	sll	t6,t5,0x2
    11f0:	028e7821 	addu	t7,s4,t6
    11f4:	0c000000 	jal	0 <func_8088CEC0>
    11f8:	8de40790 	lw	a0,1936(t7)
    11fc:	00022400 	sll	a0,v0,0x10
    1200:	00042403 	sra	a0,a0,0x10
    1204:	862500b6 	lh	a1,182(s1)
    1208:	0c000000 	jal	0 <func_8088CEC0>
    120c:	27a6006c 	addiu	a2,sp,108
    1210:	27b0006c 	addiu	s0,sp,108
    1214:	27b2007c 	addiu	s2,sp,124
    1218:	8e020000 	lw	v0,0(s0)
    121c:	02802025 	move	a0,s4
    1220:	02202825 	move	a1,s1
    1224:	0002c040 	sll	t8,v0,0x1
    1228:	0238c821 	addu	t9,s1,t8
    122c:	87270168 	lh	a3,360(t9)
    1230:	58e0000b 	blezl	a3,1260 <BgHidanSekizou_Draw+0x238>
    1234:	26100004 	addiu	s0,s0,4
    1238:	862800b6 	lh	t0,182(s1)
    123c:	00024b80 	sll	t1,v0,0xe
    1240:	8e6a02d0 	lw	t2,720(s3)
    1244:	01093021 	addu	a2,t0,t1
    1248:	00063400 	sll	a2,a2,0x10
    124c:	00063403 	sra	a2,a2,0x10
    1250:	0c000000 	jal	0 <func_8088CEC0>
    1254:	afaa0010 	sw	t2,16(sp)
    1258:	ae6202d0 	sw	v0,720(s3)
    125c:	26100004 	addiu	s0,s0,4
    1260:	5612ffee 	bnel	s0,s2,121c <BgHidanSekizou_Draw+0x1f4>
    1264:	8e020000 	lw	v0,0(s0)
    1268:	3c060000 	lui	a2,0x0
    126c:	24c60000 	addiu	a2,a2,0
    1270:	27a40058 	addiu	a0,sp,88
    1274:	8e850000 	lw	a1,0(s4)
    1278:	0c000000 	jal	0 <func_8088CEC0>
    127c:	24070383 	li	a3,899
    1280:	8fbf0034 	lw	ra,52(sp)
    1284:	8fb00020 	lw	s0,32(sp)
    1288:	8fb10024 	lw	s1,36(sp)
    128c:	8fb20028 	lw	s2,40(sp)
    1290:	8fb3002c 	lw	s3,44(sp)
    1294:	8fb40030 	lw	s4,48(sp)
    1298:	03e00008 	jr	ra
    129c:	27bd0088 	addiu	sp,sp,136
