
build/src/overlays/actors/ovl_En_Zo/z_en_zo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B60220>:
       0:	3c0f0000 	lui	t7,0x0
       4:	25ef0000 	addiu	t7,t7,0
       8:	8df90000 	lw	t9,0(t7)
       c:	27bdffe8 	addiu	sp,sp,-24
      10:	27ae0008 	addiu	t6,sp,8
      14:	add90000 	sw	t9,0(t6)
      18:	8df90008 	lw	t9,8(t7)
      1c:	8df80004 	lw	t8,4(t7)
      20:	44866000 	mtc1	a2,$f12
      24:	44877000 	mtc1	a3,$f14
      28:	248202fc 	addiu	v0,a0,764
      2c:	00001825 	move	v1,zero
      30:	add90008 	sw	t9,8(t6)
      34:	add80004 	sw	t8,4(t6)
      38:	90480000 	lbu	t0,0(v0)
      3c:	24630001 	addiu	v1,v1,1
      40:	00031c00 	sll	v1,v1,0x10
      44:	1500000e 	bnez	t0,80 <func_80B60220+0x80>
      48:	00031c03 	sra	v1,v1,0x10
      4c:	24090001 	li	t1,1
      50:	a0490000 	sb	t1,0(v0)
      54:	8cab0000 	lw	t3,0(a1)
      58:	ac4b0014 	sw	t3,20(v0)
      5c:	8caa0004 	lw	t2,4(a1)
      60:	ac4a0018 	sw	t2,24(v0)
      64:	8cab0008 	lw	t3,8(a1)
      68:	e44c0004 	swc1	$f12,4(v0)
      6c:	e44e0008 	swc1	$f14,8(v0)
      70:	ac4b001c 	sw	t3,28(v0)
      74:	93ac002b 	lbu	t4,43(sp)
      78:	10000004 	b	8c <func_80B60220+0x8c>
      7c:	a04c000f 	sb	t4,15(v0)
      80:	2861000f 	slti	at,v1,15
      84:	1420ffec 	bnez	at,38 <func_80B60220+0x38>
      88:	24420038 	addiu	v0,v0,56
      8c:	03e00008 	jr	ra
      90:	27bd0018 	addiu	sp,sp,24

00000094 <func_80B602B4>:
      94:	27bdffc0 	addiu	sp,sp,-64
      98:	3c0f0000 	lui	t7,0x0
      9c:	afbf0014 	sw	ra,20(sp)
      a0:	25ef0000 	addiu	t7,t7,0
      a4:	8df90000 	lw	t9,0(t7)
      a8:	27ae0030 	addiu	t6,sp,48
      ac:	8df80004 	lw	t8,4(t7)
      b0:	add90000 	sw	t9,0(t6)
      b4:	8df90008 	lw	t9,8(t7)
      b8:	3c080000 	lui	t0,0x0
      bc:	25080000 	addiu	t0,t0,0
      c0:	add80004 	sw	t8,4(t6)
      c4:	add90008 	sw	t9,8(t6)
      c8:	8d0a0000 	lw	t2,0(t0)
      cc:	27a60024 	addiu	a2,sp,36
      d0:	248202fc 	addiu	v0,a0,764
      d4:	acca0000 	sw	t2,0(a2)
      d8:	8d090004 	lw	t1,4(t0)
      dc:	00001825 	move	v1,zero
      e0:	240c0003 	li	t4,3
      e4:	acc90004 	sw	t1,4(a2)
      e8:	8d0a0008 	lw	t2,8(t0)
      ec:	acca0008 	sw	t2,8(a2)
      f0:	904b0000 	lbu	t3,0(v0)
      f4:	24630001 	addiu	v1,v1,1
      f8:	00031c00 	sll	v1,v1,0x10
      fc:	1560002a 	bnez	t3,1a8 <func_80B602B4+0x114>
     100:	00031c03 	sra	v1,v1,0x10
     104:	c4840028 	lwc1	$f4,40(a0)
     108:	c4860084 	lwc1	$f6,132(a0)
     10c:	c4a80004 	lwc1	$f8,4(a1)
     110:	46062000 	add.s	$f0,$f4,$f6
     114:	4608003e 	c.le.s	$f0,$f8
     118:	00000000 	nop
     11c:	45030023 	bc1tl	1ac <func_80B602B4+0x118>
     120:	2861000f 	slti	at,v1,15
     124:	a04c0000 	sb	t4,0(v0)
     128:	8cae0000 	lw	t6,0(a1)
     12c:	ac4e0014 	sw	t6,20(v0)
     130:	8cad0004 	lw	t5,4(a1)
     134:	ac4d0018 	sw	t5,24(v0)
     138:	8cae0008 	lw	t6,8(a1)
     13c:	ac4e001c 	sw	t6,28(v0)
     140:	8cb80000 	lw	t8,0(a1)
     144:	ac58002c 	sw	t8,44(v0)
     148:	8caf0004 	lw	t7,4(a1)
     14c:	ac4f0030 	sw	t7,48(v0)
     150:	8cb80008 	lw	t8,8(a1)
     154:	ac580034 	sw	t8,52(v0)
     158:	8cc80000 	lw	t0,0(a2)
     15c:	ac480020 	sw	t0,32(v0)
     160:	8cd90004 	lw	t9,4(a2)
     164:	ac590024 	sw	t9,36(v0)
     168:	8cc80008 	lw	t0,8(a2)
     16c:	ac480028 	sw	t0,40(v0)
     170:	0c000000 	jal	0 <func_80B60220>
     174:	afa2003c 	sw	v0,60(sp)
     178:	3c013f00 	lui	at,0x3f00
     17c:	44815000 	mtc1	at,$f10
     180:	3c010000 	lui	at,0x0
     184:	c4320000 	lwc1	$f18,0(at)
     188:	460a0401 	sub.s	$f16,$f0,$f10
     18c:	3c010000 	lui	at,0x0
     190:	c4260000 	lwc1	$f6,0(at)
     194:	8fa2003c 	lw	v0,60(sp)
     198:	46128102 	mul.s	$f4,$f16,$f18
     19c:	46062200 	add.s	$f8,$f4,$f6
     1a0:	10000004 	b	1b4 <func_80B602B4+0x120>
     1a4:	e4480004 	swc1	$f8,4(v0)
     1a8:	2861000f 	slti	at,v1,15
     1ac:	1420ffd0 	bnez	at,f0 <func_80B602B4+0x5c>
     1b0:	24420038 	addiu	v0,v0,56
     1b4:	8fbf0014 	lw	ra,20(sp)
     1b8:	27bd0040 	addiu	sp,sp,64
     1bc:	03e00008 	jr	ra
     1c0:	00000000 	nop

000001c4 <func_80B603E4>:
     1c4:	27bdffd0 	addiu	sp,sp,-48
     1c8:	3c0e0000 	lui	t6,0x0
     1cc:	afbf0014 	sw	ra,20(sp)
     1d0:	afa7003c 	sw	a3,60(sp)
     1d4:	25ce0000 	addiu	t6,t6,0
     1d8:	8dd80000 	lw	t8,0(t6)
     1dc:	27a70020 	addiu	a3,sp,32
     1e0:	248302fc 	addiu	v1,a0,764
     1e4:	acf80000 	sw	t8,0(a3)
     1e8:	8dcf0004 	lw	t7,4(t6)
     1ec:	24040002 	li	a0,2
     1f0:	00001025 	move	v0,zero
     1f4:	acef0004 	sw	t7,4(a3)
     1f8:	8dd80008 	lw	t8,8(t6)
     1fc:	24080002 	li	t0,2
     200:	acf80008 	sw	t8,8(a3)
     204:	90790000 	lbu	t9,0(v1)
     208:	24420001 	addiu	v0,v0,1
     20c:	00021400 	sll	v0,v0,0x10
     210:	10990040 	beq	a0,t9,314 <func_80B603E4+0x150>
     214:	00021403 	sra	v0,v0,0x10
     218:	a0680000 	sb	t0,0(v1)
     21c:	8caa0000 	lw	t2,0(a1)
     220:	ac6a0014 	sw	t2,20(v1)
     224:	8ca90004 	lw	t1,4(a1)
     228:	ac690018 	sw	t1,24(v1)
     22c:	8caa0008 	lw	t2,8(a1)
     230:	ac6a001c 	sw	t2,28(v1)
     234:	8cec0000 	lw	t4,0(a3)
     238:	ac6c002c 	sw	t4,44(v1)
     23c:	8ceb0004 	lw	t3,4(a3)
     240:	ac6b0030 	sw	t3,48(v1)
     244:	8cec0008 	lw	t4,8(a3)
     248:	ac6c0034 	sw	t4,52(v1)
     24c:	8cce0000 	lw	t6,0(a2)
     250:	ac6e0020 	sw	t6,32(v1)
     254:	8ccd0004 	lw	t5,4(a2)
     258:	ac6d0024 	sw	t5,36(v1)
     25c:	8cce0008 	lw	t6,8(a2)
     260:	ac6e0028 	sw	t6,40(v1)
     264:	0c000000 	jal	0 <func_80B60220>
     268:	afa3002c 	sw	v1,44(sp)
     26c:	3c0142c8 	lui	at,0x42c8
     270:	44811000 	mtc1	at,$f2
     274:	24180001 	li	t8,1
     278:	3c014f00 	lui	at,0x4f00
     27c:	46020102 	mul.s	$f4,$f0,$f2
     280:	8fa3002c 	lw	v1,44(sp)
     284:	46022180 	add.s	$f6,$f4,$f2
     288:	444ff800 	cfc1	t7,$31
     28c:	44d8f800 	ctc1	t8,$31
     290:	00000000 	nop
     294:	46003224 	cvt.w.s	$f8,$f6
     298:	4458f800 	cfc1	t8,$31
     29c:	00000000 	nop
     2a0:	33180078 	andi	t8,t8,0x78
     2a4:	53000013 	beqzl	t8,2f4 <func_80B603E4+0x130>
     2a8:	44184000 	mfc1	t8,$f8
     2ac:	44814000 	mtc1	at,$f8
     2b0:	24180001 	li	t8,1
     2b4:	46083201 	sub.s	$f8,$f6,$f8
     2b8:	44d8f800 	ctc1	t8,$31
     2bc:	00000000 	nop
     2c0:	46004224 	cvt.w.s	$f8,$f8
     2c4:	4458f800 	cfc1	t8,$31
     2c8:	00000000 	nop
     2cc:	33180078 	andi	t8,t8,0x78
     2d0:	17000005 	bnez	t8,2e8 <func_80B603E4+0x124>
     2d4:	00000000 	nop
     2d8:	44184000 	mfc1	t8,$f8
     2dc:	3c018000 	lui	at,0x8000
     2e0:	10000007 	b	300 <func_80B603E4+0x13c>
     2e4:	0301c025 	or	t8,t8,at
     2e8:	10000005 	b	300 <func_80B603E4+0x13c>
     2ec:	2418ffff 	li	t8,-1
     2f0:	44184000 	mfc1	t8,$f8
     2f4:	00000000 	nop
     2f8:	0700fffb 	bltz	t8,2e8 <func_80B603E4+0x124>
     2fc:	00000000 	nop
     300:	a078000f 	sb	t8,15(v1)
     304:	c7aa003c 	lwc1	$f10,60(sp)
     308:	44cff800 	ctc1	t7,$31
     30c:	10000004 	b	320 <func_80B603E4+0x15c>
     310:	e46a0004 	swc1	$f10,4(v1)
     314:	2841000f 	slti	at,v0,15
     318:	1420ffba 	bnez	at,204 <func_80B603E4+0x40>
     31c:	24630038 	addiu	v1,v1,56
     320:	8fbf0014 	lw	ra,20(sp)
     324:	27bd0030 	addiu	sp,sp,48
     328:	03e00008 	jr	ra
     32c:	00000000 	nop

00000330 <func_80B60550>:
     330:	27bdffc8 	addiu	sp,sp,-56
     334:	f7b60020 	sdc1	$f22,32(sp)
     338:	3c010000 	lui	at,0x0
     33c:	c4360000 	lwc1	$f22,0(at)
     340:	afb20030 	sw	s2,48(sp)
     344:	afb1002c 	sw	s1,44(sp)
     348:	afb00028 	sw	s0,40(sp)
     34c:	f7b40018 	sdc1	$f20,24(sp)
     350:	3c010000 	lui	at,0x0
     354:	afbf0034 	sw	ra,52(sp)
     358:	249002fc 	addiu	s0,a0,764
     35c:	c4340000 	lwc1	$f20,0(at)
     360:	00008825 	move	s1,zero
     364:	24120001 	li	s2,1
     368:	920e0000 	lbu	t6,0(s0)
     36c:	26040004 	addiu	a0,s0,4
     370:	564e0011 	bnel	s2,t6,3b8 <func_80B60550+0x88>
     374:	26310001 	addiu	s1,s1,1
     378:	4406a000 	mfc1	a2,$f20
     37c:	4407b000 	mfc1	a3,$f22
     380:	0c000000 	jal	0 <func_80B60220>
     384:	8e050008 	lw	a1,8(s0)
     388:	9202000f 	lbu	v0,15(s0)
     38c:	28410015 	slti	at,v0,21
     390:	14200003 	bnez	at,3a0 <func_80B60550+0x70>
     394:	244fffec 	addiu	t7,v0,-20
     398:	10000002 	b	3a4 <func_80B60550+0x74>
     39c:	a20f000f 	sb	t7,15(s0)
     3a0:	a200000f 	sb	zero,15(s0)
     3a4:	9218000f 	lbu	t8,15(s0)
     3a8:	57000003 	bnezl	t8,3b8 <func_80B60550+0x88>
     3ac:	26310001 	addiu	s1,s1,1
     3b0:	a2000000 	sb	zero,0(s0)
     3b4:	26310001 	addiu	s1,s1,1
     3b8:	00118c00 	sll	s1,s1,0x10
     3bc:	00118c03 	sra	s1,s1,0x10
     3c0:	2a21000f 	slti	at,s1,15
     3c4:	1420ffe8 	bnez	at,368 <func_80B60550+0x38>
     3c8:	26100038 	addiu	s0,s0,56
     3cc:	8fbf0034 	lw	ra,52(sp)
     3d0:	d7b40018 	ldc1	$f20,24(sp)
     3d4:	d7b60020 	ldc1	$f22,32(sp)
     3d8:	8fb00028 	lw	s0,40(sp)
     3dc:	8fb1002c 	lw	s1,44(sp)
     3e0:	8fb20030 	lw	s2,48(sp)
     3e4:	03e00008 	jr	ra
     3e8:	27bd0038 	addiu	sp,sp,56

000003ec <func_80B6060C>:
     3ec:	27bdffb0 	addiu	sp,sp,-80
     3f0:	f7ba0030 	sdc1	$f26,48(sp)
     3f4:	3c010000 	lui	at,0x0
     3f8:	c43a0000 	lwc1	$f26,0(at)
     3fc:	f7b80028 	sdc1	$f24,40(sp)
     400:	3c010000 	lui	at,0x0
     404:	c4380000 	lwc1	$f24,0(at)
     408:	f7b60020 	sdc1	$f22,32(sp)
     40c:	3c013e80 	lui	at,0x3e80
     410:	4481b000 	mtc1	at,$f22
     414:	f7b40018 	sdc1	$f20,24(sp)
     418:	3c013f00 	lui	at,0x3f00
     41c:	afb30048 	sw	s3,72(sp)
     420:	afb20044 	sw	s2,68(sp)
     424:	afb10040 	sw	s1,64(sp)
     428:	afb0003c 	sw	s0,60(sp)
     42c:	4481a000 	mtc1	at,$f20
     430:	00808825 	move	s1,a0
     434:	afbf004c 	sw	ra,76(sp)
     438:	249002fc 	addiu	s0,a0,764
     43c:	00009025 	move	s2,zero
     440:	24130003 	li	s3,3
     444:	920e0000 	lbu	t6,0(s0)
     448:	566e0024 	bnel	s3,t6,4dc <func_80B6060C+0xf0>
     44c:	26520001 	addiu	s2,s2,1
     450:	0c000000 	jal	0 <func_80B60220>
     454:	00000000 	nop
     458:	46140102 	mul.s	$f4,$f0,$f20
     45c:	c608002c 	lwc1	$f8,44(s0)
     460:	46162181 	sub.s	$f6,$f4,$f22
     464:	46083280 	add.s	$f10,$f6,$f8
     468:	0c000000 	jal	0 <func_80B60220>
     46c:	e60a0014 	swc1	$f10,20(s0)
     470:	46140402 	mul.s	$f16,$f0,$f20
     474:	c6040034 	lwc1	$f4,52(s0)
     478:	c6080018 	lwc1	$f8,24(s0)
     47c:	c60a0024 	lwc1	$f10,36(s0)
     480:	02202025 	move	a0,s1
     484:	26050014 	addiu	a1,s0,20
     488:	240f00c8 	li	t7,200
     48c:	46168481 	sub.s	$f18,$f16,$f22
     490:	460a4400 	add.s	$f16,$f8,$f10
     494:	46049180 	add.s	$f6,$f18,$f4
     498:	e6100018 	swc1	$f16,24(s0)
     49c:	e606001c 	swc1	$f6,28(s0)
     4a0:	c6240084 	lwc1	$f4,132(s1)
     4a4:	c6320028 	lwc1	$f18,40(s1)
     4a8:	c6060018 	lwc1	$f6,24(s0)
     4ac:	46049080 	add.s	$f2,$f18,$f4
     4b0:	4606103e 	c.le.s	$f2,$f6
     4b4:	00000000 	nop
     4b8:	45020008 	bc1fl	4dc <func_80B6060C+0xf0>
     4bc:	26520001 	addiu	s2,s2,1
     4c0:	a2000000 	sb	zero,0(s0)
     4c4:	e6020018 	swc1	$f2,24(s0)
     4c8:	4406c000 	mfc1	a2,$f24
     4cc:	4407d000 	mfc1	a3,$f26
     4d0:	0c000000 	jal	0 <func_80B60220>
     4d4:	afaf0010 	sw	t7,16(sp)
     4d8:	26520001 	addiu	s2,s2,1
     4dc:	00129400 	sll	s2,s2,0x10
     4e0:	00129403 	sra	s2,s2,0x10
     4e4:	2a41000f 	slti	at,s2,15
     4e8:	1420ffd6 	bnez	at,444 <func_80B6060C+0x58>
     4ec:	26100038 	addiu	s0,s0,56
     4f0:	8fbf004c 	lw	ra,76(sp)
     4f4:	d7b40018 	ldc1	$f20,24(sp)
     4f8:	d7b60020 	ldc1	$f22,32(sp)
     4fc:	d7b80028 	ldc1	$f24,40(sp)
     500:	d7ba0030 	ldc1	$f26,48(sp)
     504:	8fb0003c 	lw	s0,60(sp)
     508:	8fb10040 	lw	s1,64(sp)
     50c:	8fb20044 	lw	s2,68(sp)
     510:	8fb30048 	lw	s3,72(sp)
     514:	03e00008 	jr	ra
     518:	27bd0050 	addiu	sp,sp,80

0000051c <func_80B6073C>:
     51c:	27bdffb0 	addiu	sp,sp,-80
     520:	f7b80028 	sdc1	$f24,40(sp)
     524:	3c010000 	lui	at,0x0
     528:	c4380000 	lwc1	$f24,0(at)
     52c:	f7b60020 	sdc1	$f22,32(sp)
     530:	3c010000 	lui	at,0x0
     534:	c4360000 	lwc1	$f22,0(at)
     538:	f7ba0030 	sdc1	$f26,48(sp)
     53c:	f7b40018 	sdc1	$f20,24(sp)
     540:	3c01c1a0 	lui	at,0xc1a0
     544:	afb30048 	sw	s3,72(sp)
     548:	afb20044 	sw	s2,68(sp)
     54c:	afb10040 	sw	s1,64(sp)
     550:	afb0003c 	sw	s0,60(sp)
     554:	4481a000 	mtc1	at,$f20
     558:	4480d000 	mtc1	zero,$f26
     55c:	00808825 	move	s1,a0
     560:	afbf004c 	sw	ra,76(sp)
     564:	249002fc 	addiu	s0,a0,764
     568:	00009025 	move	s2,zero
     56c:	24130002 	li	s3,2
     570:	920e0000 	lbu	t6,0(s0)
     574:	566e0027 	bnel	s3,t6,614 <func_80B6073C+0xf8>
     578:	26520001 	addiu	s2,s2,1
     57c:	c6040014 	lwc1	$f4,20(s0)
     580:	c6060020 	lwc1	$f6,32(s0)
     584:	c6000024 	lwc1	$f0,36(s0)
     588:	c60a0018 	lwc1	$f10,24(s0)
     58c:	46062200 	add.s	$f8,$f4,$f6
     590:	c6040028 	lwc1	$f4,40(s0)
     594:	c612001c 	lwc1	$f18,28(s0)
     598:	4600a03e 	c.le.s	$f20,$f0
     59c:	e6080014 	swc1	$f8,20(s0)
     5a0:	46005400 	add.s	$f16,$f10,$f0
     5a4:	02202025 	move	a0,s1
     5a8:	26050014 	addiu	a1,s0,20
     5ac:	46049180 	add.s	$f6,$f18,$f4
     5b0:	e6100018 	swc1	$f16,24(s0)
     5b4:	240f00c8 	li	t7,200
     5b8:	45000005 	bc1f	5d0 <func_80B6073C+0xb4>
     5bc:	e606001c 	swc1	$f6,28(s0)
     5c0:	c6080030 	lwc1	$f8,48(s0)
     5c4:	46080280 	add.s	$f10,$f0,$f8
     5c8:	10000003 	b	5d8 <func_80B6073C+0xbc>
     5cc:	e60a0024 	swc1	$f10,36(s0)
     5d0:	e6140024 	swc1	$f20,36(s0)
     5d4:	e61a0030 	swc1	$f26,48(s0)
     5d8:	c6300028 	lwc1	$f16,40(s1)
     5dc:	c6320084 	lwc1	$f18,132(s1)
     5e0:	c6040018 	lwc1	$f4,24(s0)
     5e4:	46128000 	add.s	$f0,$f16,$f18
     5e8:	4600203c 	c.lt.s	$f4,$f0
     5ec:	00000000 	nop
     5f0:	45020008 	bc1fl	614 <func_80B6073C+0xf8>
     5f4:	26520001 	addiu	s2,s2,1
     5f8:	a2000000 	sb	zero,0(s0)
     5fc:	e6000018 	swc1	$f0,24(s0)
     600:	4406b000 	mfc1	a2,$f22
     604:	4407c000 	mfc1	a3,$f24
     608:	0c000000 	jal	0 <func_80B60220>
     60c:	afaf0010 	sw	t7,16(sp)
     610:	26520001 	addiu	s2,s2,1
     614:	00129400 	sll	s2,s2,0x10
     618:	00129403 	sra	s2,s2,0x10
     61c:	2a41000f 	slti	at,s2,15
     620:	1420ffd3 	bnez	at,570 <func_80B6073C+0x54>
     624:	26100038 	addiu	s0,s0,56
     628:	8fbf004c 	lw	ra,76(sp)
     62c:	d7b40018 	ldc1	$f20,24(sp)
     630:	d7b60020 	ldc1	$f22,32(sp)
     634:	d7b80028 	ldc1	$f24,40(sp)
     638:	d7ba0030 	ldc1	$f26,48(sp)
     63c:	8fb0003c 	lw	s0,60(sp)
     640:	8fb10040 	lw	s1,64(sp)
     644:	8fb20044 	lw	s2,68(sp)
     648:	8fb30048 	lw	s3,72(sp)
     64c:	03e00008 	jr	ra
     650:	27bd0050 	addiu	sp,sp,80

00000654 <func_80B60874>:
     654:	27bdff78 	addiu	sp,sp,-136
     658:	afbf0044 	sw	ra,68(sp)
     65c:	afbe0040 	sw	s8,64(sp)
     660:	afb7003c 	sw	s7,60(sp)
     664:	afb60038 	sw	s6,56(sp)
     668:	afb50034 	sw	s5,52(sp)
     66c:	afb40030 	sw	s4,48(sp)
     670:	afb3002c 	sw	s3,44(sp)
     674:	afb20028 	sw	s2,40(sp)
     678:	afb10024 	sw	s1,36(sp)
     67c:	afb00020 	sw	s0,32(sp)
     680:	f7b40018 	sdc1	$f20,24(sp)
     684:	afa5008c 	sw	a1,140(sp)
     688:	8ca50000 	lw	a1,0(a1)
     68c:	249202fc 	addiu	s2,a0,764
     690:	3c060000 	lui	a2,0x0
     694:	24c60000 	addiu	a2,a2,0
     698:	27a4006c 	addiu	a0,sp,108
     69c:	240700d9 	li	a3,217
     6a0:	0c000000 	jal	0 <func_80B60220>
     6a4:	00a08025 	move	s0,a1
     6a8:	8faf008c 	lw	t7,140(sp)
     6ac:	0000b025 	move	s6,zero
     6b0:	0c000000 	jal	0 <func_80B60220>
     6b4:	8de40000 	lw	a0,0(t7)
     6b8:	3c013f80 	lui	at,0x3f80
     6bc:	4481a000 	mtc1	at,$f20
     6c0:	00009825 	move	s3,zero
     6c4:	3c1ee700 	lui	s8,0xe700
     6c8:	24170001 	li	s7,1
     6cc:	3c15de00 	lui	s5,0xde00
     6d0:	92580000 	lbu	t8,0(s2)
     6d4:	3c140601 	lui	s4,0x601
     6d8:	56f80040 	bnel	s7,t8,7dc <func_80B60874+0x188>
     6dc:	26730001 	addiu	s3,s3,1
     6e0:	16c00016 	bnez	s6,73c <func_80B60874+0xe8>
     6e4:	2694c028 	addiu	s4,s4,-16344
     6e8:	8e0202d0 	lw	v0,720(s0)
     6ec:	3c040601 	lui	a0,0x601
     6f0:	2484bfc0 	addiu	a0,a0,-16448
     6f4:	24590008 	addiu	t9,v0,8
     6f8:	ae1902d0 	sw	t9,720(s0)
     6fc:	ac400004 	sw	zero,4(v0)
     700:	ac5e0000 	sw	s8,0(v0)
     704:	8e0202d0 	lw	v0,720(s0)
     708:	3c0b9b9b 	lui	t3,0x9b9b
     70c:	356b9b00 	ori	t3,t3,0x9b00
     710:	24480008 	addiu	t0,v0,8
     714:	ae0802d0 	sw	t0,720(s0)
     718:	ac440004 	sw	a0,4(v0)
     71c:	ac550000 	sw	s5,0(v0)
     720:	8e0202d0 	lw	v0,720(s0)
     724:	3c0afb00 	lui	t2,0xfb00
     728:	24160001 	li	s6,1
     72c:	24490008 	addiu	t1,v0,8
     730:	ae0902d0 	sw	t1,720(s0)
     734:	ac4b0004 	sw	t3,4(v0)
     738:	ac4a0000 	sw	t2,0(v0)
     73c:	8e0202d0 	lw	v0,720(s0)
     740:	3c0dfa00 	lui	t5,0xfa00
     744:	2401ff00 	li	at,-256
     748:	244c0008 	addiu	t4,v0,8
     74c:	ae0c02d0 	sw	t4,720(s0)
     750:	ac4d0000 	sw	t5,0(v0)
     754:	924f000f 	lbu	t7,15(s2)
     758:	00003825 	move	a3,zero
     75c:	01e1c025 	or	t8,t7,at
     760:	ac580004 	sw	t8,4(v0)
     764:	8e46001c 	lw	a2,28(s2)
     768:	c64e0018 	lwc1	$f14,24(s2)
     76c:	0c000000 	jal	0 <func_80B60220>
     770:	c64c0014 	lwc1	$f12,20(s2)
     774:	c64c0004 	lwc1	$f12,4(s2)
     778:	4600a386 	mov.s	$f14,$f20
     77c:	24070001 	li	a3,1
     780:	44066000 	mfc1	a2,$f12
     784:	0c000000 	jal	0 <func_80B60220>
     788:	00000000 	nop
     78c:	8e0202d0 	lw	v0,720(s0)
     790:	3c08da38 	lui	t0,0xda38
     794:	35080003 	ori	t0,t0,0x3
     798:	24590008 	addiu	t9,v0,8
     79c:	ae1902d0 	sw	t9,720(s0)
     7a0:	ac480000 	sw	t0,0(v0)
     7a4:	8fa9008c 	lw	t1,140(sp)
     7a8:	3c050000 	lui	a1,0x0
     7ac:	24a50000 	addiu	a1,a1,0
     7b0:	240600f2 	li	a2,242
     7b4:	00408825 	move	s1,v0
     7b8:	0c000000 	jal	0 <func_80B60220>
     7bc:	8d240000 	lw	a0,0(t1)
     7c0:	ae220004 	sw	v0,4(s1)
     7c4:	8e0202d0 	lw	v0,720(s0)
     7c8:	244a0008 	addiu	t2,v0,8
     7cc:	ae0a02d0 	sw	t2,720(s0)
     7d0:	ac540004 	sw	s4,4(v0)
     7d4:	ac550000 	sw	s5,0(v0)
     7d8:	26730001 	addiu	s3,s3,1
     7dc:	00139c00 	sll	s3,s3,0x10
     7e0:	00139c03 	sra	s3,s3,0x10
     7e4:	2a61000f 	slti	at,s3,15
     7e8:	1420ffb9 	bnez	at,6d0 <func_80B60874+0x7c>
     7ec:	26520038 	addiu	s2,s2,56
     7f0:	8fab008c 	lw	t3,140(sp)
     7f4:	3c060000 	lui	a2,0x0
     7f8:	24c60000 	addiu	a2,a2,0
     7fc:	27a4006c 	addiu	a0,sp,108
     800:	240700f8 	li	a3,248
     804:	0c000000 	jal	0 <func_80B60220>
     808:	8d650000 	lw	a1,0(t3)
     80c:	8fbf0044 	lw	ra,68(sp)
     810:	d7b40018 	ldc1	$f20,24(sp)
     814:	8fb00020 	lw	s0,32(sp)
     818:	8fb10024 	lw	s1,36(sp)
     81c:	8fb20028 	lw	s2,40(sp)
     820:	8fb3002c 	lw	s3,44(sp)
     824:	8fb40030 	lw	s4,48(sp)
     828:	8fb50034 	lw	s5,52(sp)
     82c:	8fb60038 	lw	s6,56(sp)
     830:	8fb7003c 	lw	s7,60(sp)
     834:	8fbe0040 	lw	s8,64(sp)
     838:	03e00008 	jr	ra
     83c:	27bd0088 	addiu	sp,sp,136

00000840 <func_80B60A60>:
     840:	27bdff70 	addiu	sp,sp,-144
     844:	afb60038 	sw	s6,56(sp)
     848:	00a0b025 	move	s6,a1
     84c:	afbf0044 	sw	ra,68(sp)
     850:	afbe0040 	sw	s8,64(sp)
     854:	afb7003c 	sw	s7,60(sp)
     858:	afb50034 	sw	s5,52(sp)
     85c:	afb40030 	sw	s4,48(sp)
     860:	afb3002c 	sw	s3,44(sp)
     864:	afb20028 	sw	s2,40(sp)
     868:	afb10024 	sw	s1,36(sp)
     86c:	afb00020 	sw	s0,32(sp)
     870:	f7b40018 	sdc1	$f20,24(sp)
     874:	8ca50000 	lw	a1,0(a1)
     878:	249202fc 	addiu	s2,a0,764
     87c:	3c060000 	lui	a2,0x0
     880:	24c60000 	addiu	a2,a2,0
     884:	27a40074 	addiu	a0,sp,116
     888:	24070104 	li	a3,260
     88c:	0c000000 	jal	0 <func_80B60220>
     890:	00a08025 	move	s0,a1
     894:	0000a825 	move	s5,zero
     898:	0c000000 	jal	0 <func_80B60220>
     89c:	8ec40000 	lw	a0,0(s6)
     8a0:	3c013f80 	lui	at,0x3f80
     8a4:	4481a000 	mtc1	at,$f20
     8a8:	00009825 	move	s3,zero
     8ac:	241e0003 	li	s8,3
     8b0:	3c17de00 	lui	s7,0xde00
     8b4:	924e0000 	lbu	t6,0(s2)
     8b8:	3c010001 	lui	at,0x1
     8bc:	34211da0 	ori	at,at,0x1da0
     8c0:	17ce003f 	bne	s8,t6,9c0 <func_80B60A60+0x180>
     8c4:	02c18821 	addu	s1,s6,at
     8c8:	3c140600 	lui	s4,0x600
     8cc:	16a0001e 	bnez	s5,948 <func_80B60A60+0x108>
     8d0:	26942350 	addiu	s4,s4,9040
     8d4:	8e0202d0 	lw	v0,720(s0)
     8d8:	3c040600 	lui	a0,0x600
     8dc:	248422f0 	addiu	a0,a0,8944
     8e0:	244f0008 	addiu	t7,v0,8
     8e4:	ae0f02d0 	sw	t7,720(s0)
     8e8:	ac440004 	sw	a0,4(v0)
     8ec:	ac570000 	sw	s7,0(v0)
     8f0:	8e0202d0 	lw	v0,720(s0)
     8f4:	3c19e700 	lui	t9,0xe700
     8f8:	3c0a9696 	lui	t2,0x9696
     8fc:	24580008 	addiu	t8,v0,8
     900:	ae1802d0 	sw	t8,720(s0)
     904:	ac400004 	sw	zero,4(v0)
     908:	ac590000 	sw	t9,0(v0)
     90c:	8e0202d0 	lw	v0,720(s0)
     910:	354a9600 	ori	t2,t2,0x9600
     914:	3c09fb00 	lui	t1,0xfb00
     918:	24480008 	addiu	t0,v0,8
     91c:	ae0802d0 	sw	t0,720(s0)
     920:	ac4a0004 	sw	t2,4(v0)
     924:	ac490000 	sw	t1,0(v0)
     928:	8e0202d0 	lw	v0,720(s0)
     92c:	3c0cfa00 	lui	t4,0xfa00
     930:	240dffff 	li	t5,-1
     934:	244b0008 	addiu	t3,v0,8
     938:	ae0b02d0 	sw	t3,720(s0)
     93c:	24150001 	li	s5,1
     940:	ac4d0004 	sw	t5,4(v0)
     944:	ac4c0000 	sw	t4,0(v0)
     948:	c64c0014 	lwc1	$f12,20(s2)
     94c:	c64e0018 	lwc1	$f14,24(s2)
     950:	8e46001c 	lw	a2,28(s2)
     954:	0c000000 	jal	0 <func_80B60220>
     958:	00003825 	move	a3,zero
     95c:	0c000000 	jal	0 <func_80B60220>
     960:	02202025 	move	a0,s1
     964:	c64c0004 	lwc1	$f12,4(s2)
     968:	4406a000 	mfc1	a2,$f20
     96c:	24070001 	li	a3,1
     970:	0c000000 	jal	0 <func_80B60220>
     974:	46006386 	mov.s	$f14,$f12
     978:	8e0202d0 	lw	v0,720(s0)
     97c:	3c0fda38 	lui	t7,0xda38
     980:	35ef0003 	ori	t7,t7,0x3
     984:	244e0008 	addiu	t6,v0,8
     988:	ae0e02d0 	sw	t6,720(s0)
     98c:	3c050000 	lui	a1,0x0
     990:	ac4f0000 	sw	t7,0(v0)
     994:	8ec40000 	lw	a0,0(s6)
     998:	24a50000 	addiu	a1,a1,0
     99c:	24060119 	li	a2,281
     9a0:	0c000000 	jal	0 <func_80B60220>
     9a4:	00408825 	move	s1,v0
     9a8:	ae220004 	sw	v0,4(s1)
     9ac:	8e0202d0 	lw	v0,720(s0)
     9b0:	24580008 	addiu	t8,v0,8
     9b4:	ae1802d0 	sw	t8,720(s0)
     9b8:	ac540004 	sw	s4,4(v0)
     9bc:	ac570000 	sw	s7,0(v0)
     9c0:	26730001 	addiu	s3,s3,1
     9c4:	00139c00 	sll	s3,s3,0x10
     9c8:	00139c03 	sra	s3,s3,0x10
     9cc:	2a61000f 	slti	at,s3,15
     9d0:	1420ffb8 	bnez	at,8b4 <func_80B60A60+0x74>
     9d4:	26520038 	addiu	s2,s2,56
     9d8:	3c060000 	lui	a2,0x0
     9dc:	24c60000 	addiu	a2,a2,0
     9e0:	27a40074 	addiu	a0,sp,116
     9e4:	8ec50000 	lw	a1,0(s6)
     9e8:	0c000000 	jal	0 <func_80B60220>
     9ec:	2407011e 	li	a3,286
     9f0:	8fbf0044 	lw	ra,68(sp)
     9f4:	d7b40018 	ldc1	$f20,24(sp)
     9f8:	8fb00020 	lw	s0,32(sp)
     9fc:	8fb10024 	lw	s1,36(sp)
     a00:	8fb20028 	lw	s2,40(sp)
     a04:	8fb3002c 	lw	s3,44(sp)
     a08:	8fb40030 	lw	s4,48(sp)
     a0c:	8fb50034 	lw	s5,52(sp)
     a10:	8fb60038 	lw	s6,56(sp)
     a14:	8fb7003c 	lw	s7,60(sp)
     a18:	8fbe0040 	lw	s8,64(sp)
     a1c:	03e00008 	jr	ra
     a20:	27bd0090 	addiu	sp,sp,144

00000a24 <func_80B60C44>:
     a24:	27bdff70 	addiu	sp,sp,-144
     a28:	afb60038 	sw	s6,56(sp)
     a2c:	00a0b025 	move	s6,a1
     a30:	afbf0044 	sw	ra,68(sp)
     a34:	afbe0040 	sw	s8,64(sp)
     a38:	afb7003c 	sw	s7,60(sp)
     a3c:	afb50034 	sw	s5,52(sp)
     a40:	afb40030 	sw	s4,48(sp)
     a44:	afb3002c 	sw	s3,44(sp)
     a48:	afb20028 	sw	s2,40(sp)
     a4c:	afb10024 	sw	s1,36(sp)
     a50:	afb00020 	sw	s0,32(sp)
     a54:	f7b40018 	sdc1	$f20,24(sp)
     a58:	8ca50000 	lw	a1,0(a1)
     a5c:	249202fc 	addiu	s2,a0,764
     a60:	3c060000 	lui	a2,0x0
     a64:	24c60000 	addiu	a2,a2,0
     a68:	27a40074 	addiu	a0,sp,116
     a6c:	2407012a 	li	a3,298
     a70:	0c000000 	jal	0 <func_80B60220>
     a74:	00a08025 	move	s0,a1
     a78:	0000a825 	move	s5,zero
     a7c:	0c000000 	jal	0 <func_80B60220>
     a80:	8ec40000 	lw	a0,0(s6)
     a84:	3c013f80 	lui	at,0x3f80
     a88:	4481a000 	mtc1	at,$f20
     a8c:	00009825 	move	s3,zero
     a90:	241e0002 	li	s8,2
     a94:	3c17de00 	lui	s7,0xde00
     a98:	924e0000 	lbu	t6,0(s2)
     a9c:	3c010001 	lui	at,0x1
     aa0:	34211da0 	ori	at,at,0x1da0
     aa4:	17ce0042 	bne	s8,t6,bb0 <func_80B60C44+0x18c>
     aa8:	02c18821 	addu	s1,s6,at
     aac:	3c140600 	lui	s4,0x600
     ab0:	16a00017 	bnez	s5,b10 <func_80B60C44+0xec>
     ab4:	26942510 	addiu	s4,s4,9488
     ab8:	8e0202d0 	lw	v0,720(s0)
     abc:	3c040600 	lui	a0,0x600
     ac0:	248424a0 	addiu	a0,a0,9376
     ac4:	244f0008 	addiu	t7,v0,8
     ac8:	ae0f02d0 	sw	t7,720(s0)
     acc:	ac440004 	sw	a0,4(v0)
     ad0:	ac570000 	sw	s7,0(v0)
     ad4:	8e0202d0 	lw	v0,720(s0)
     ad8:	3c19e700 	lui	t9,0xe700
     adc:	3c0ac8c8 	lui	t2,0xc8c8
     ae0:	24580008 	addiu	t8,v0,8
     ae4:	ae1802d0 	sw	t8,720(s0)
     ae8:	ac400004 	sw	zero,4(v0)
     aec:	ac590000 	sw	t9,0(v0)
     af0:	8e0202d0 	lw	v0,720(s0)
     af4:	354ac800 	ori	t2,t2,0xc800
     af8:	3c09fb00 	lui	t1,0xfb00
     afc:	24480008 	addiu	t0,v0,8
     b00:	ae0802d0 	sw	t0,720(s0)
     b04:	24150001 	li	s5,1
     b08:	ac4a0004 	sw	t2,4(v0)
     b0c:	ac490000 	sw	t1,0(v0)
     b10:	8e0202d0 	lw	v0,720(s0)
     b14:	3c0cfa00 	lui	t4,0xfa00
     b18:	3c01b4b4 	lui	at,0xb4b4
     b1c:	244b0008 	addiu	t3,v0,8
     b20:	ae0b02d0 	sw	t3,720(s0)
     b24:	ac4c0000 	sw	t4,0(v0)
     b28:	924e000f 	lbu	t6,15(s2)
     b2c:	3421b400 	ori	at,at,0xb400
     b30:	00003825 	move	a3,zero
     b34:	01c17825 	or	t7,t6,at
     b38:	ac4f0004 	sw	t7,4(v0)
     b3c:	8e46001c 	lw	a2,28(s2)
     b40:	c64e0018 	lwc1	$f14,24(s2)
     b44:	0c000000 	jal	0 <func_80B60220>
     b48:	c64c0014 	lwc1	$f12,20(s2)
     b4c:	0c000000 	jal	0 <func_80B60220>
     b50:	02202025 	move	a0,s1
     b54:	c64c0004 	lwc1	$f12,4(s2)
     b58:	4406a000 	mfc1	a2,$f20
     b5c:	24070001 	li	a3,1
     b60:	0c000000 	jal	0 <func_80B60220>
     b64:	46006386 	mov.s	$f14,$f12
     b68:	8e0202d0 	lw	v0,720(s0)
     b6c:	3c19da38 	lui	t9,0xda38
     b70:	37390003 	ori	t9,t9,0x3
     b74:	24580008 	addiu	t8,v0,8
     b78:	ae1802d0 	sw	t8,720(s0)
     b7c:	3c050000 	lui	a1,0x0
     b80:	ac590000 	sw	t9,0(v0)
     b84:	8ec40000 	lw	a0,0(s6)
     b88:	24a50000 	addiu	a1,a1,0
     b8c:	24060145 	li	a2,325
     b90:	0c000000 	jal	0 <func_80B60220>
     b94:	00408825 	move	s1,v0
     b98:	ae220004 	sw	v0,4(s1)
     b9c:	8e0202d0 	lw	v0,720(s0)
     ba0:	24480008 	addiu	t0,v0,8
     ba4:	ae0802d0 	sw	t0,720(s0)
     ba8:	ac540004 	sw	s4,4(v0)
     bac:	ac570000 	sw	s7,0(v0)
     bb0:	26730001 	addiu	s3,s3,1
     bb4:	00139c00 	sll	s3,s3,0x10
     bb8:	00139c03 	sra	s3,s3,0x10
     bbc:	2a61000f 	slti	at,s3,15
     bc0:	1420ffb5 	bnez	at,a98 <func_80B60C44+0x74>
     bc4:	26520038 	addiu	s2,s2,56
     bc8:	3c060000 	lui	a2,0x0
     bcc:	24c60000 	addiu	a2,a2,0
     bd0:	27a40074 	addiu	a0,sp,116
     bd4:	8ec50000 	lw	a1,0(s6)
     bd8:	0c000000 	jal	0 <func_80B60220>
     bdc:	2407014b 	li	a3,331
     be0:	8fbf0044 	lw	ra,68(sp)
     be4:	d7b40018 	ldc1	$f20,24(sp)
     be8:	8fb00020 	lw	s0,32(sp)
     bec:	8fb10024 	lw	s1,36(sp)
     bf0:	8fb20028 	lw	s2,40(sp)
     bf4:	8fb3002c 	lw	s3,44(sp)
     bf8:	8fb40030 	lw	s4,48(sp)
     bfc:	8fb50034 	lw	s5,52(sp)
     c00:	8fb60038 	lw	s6,56(sp)
     c04:	8fb7003c 	lw	s7,60(sp)
     c08:	8fbe0040 	lw	s8,64(sp)
     c0c:	03e00008 	jr	ra
     c10:	27bd0090 	addiu	sp,sp,144

00000c14 <func_80B60E34>:
     c14:	27bdffd0 	addiu	sp,sp,-48
     c18:	3c0e0000 	lui	t6,0x0
     c1c:	afbf001c 	sw	ra,28(sp)
     c20:	afa7003c 	sw	a3,60(sp)
     c24:	25ce0000 	addiu	t6,t6,0
     c28:	8dd80000 	lw	t8,0(t6)
     c2c:	44856000 	mtc1	a1,$f12
     c30:	27a50024 	addiu	a1,sp,36
     c34:	acb80000 	sw	t8,0(a1)
     c38:	8dcf0004 	lw	t7,4(t6)
     c3c:	44867000 	mtc1	a2,$f14
     c40:	44066000 	mfc1	a2,$f12
     c44:	acaf0004 	sw	t7,4(a1)
     c48:	8dd80008 	lw	t8,8(t6)
     c4c:	44077000 	mfc1	a3,$f14
     c50:	acb80008 	sw	t8,8(a1)
     c54:	c4840024 	lwc1	$f4,36(a0)
     c58:	93b9003f 	lbu	t9,63(sp)
     c5c:	e7a40024 	swc1	$f4,36(sp)
     c60:	c4880084 	lwc1	$f8,132(a0)
     c64:	c4860028 	lwc1	$f6,40(a0)
     c68:	46083280 	add.s	$f10,$f6,$f8
     c6c:	e7aa0028 	swc1	$f10,40(sp)
     c70:	c490002c 	lwc1	$f16,44(a0)
     c74:	afb90010 	sw	t9,16(sp)
     c78:	0c000000 	jal	0 <func_80B60220>
     c7c:	e7b0002c 	swc1	$f16,44(sp)
     c80:	8fbf001c 	lw	ra,28(sp)
     c84:	27bd0030 	addiu	sp,sp,48
     c88:	03e00008 	jr	ra
     c8c:	00000000 	nop

00000c90 <func_80B60EB0>:
     c90:	27bdff78 	addiu	sp,sp,-136
     c94:	f7be0038 	sdc1	$f30,56(sp)
     c98:	3c013f00 	lui	at,0x3f00
     c9c:	4481f000 	mtc1	at,$f30
     ca0:	f7bc0030 	sdc1	$f28,48(sp)
     ca4:	3c013fc0 	lui	at,0x3fc0
     ca8:	4481e000 	mtc1	at,$f28
     cac:	f7ba0028 	sdc1	$f26,40(sp)
     cb0:	3c0140c0 	lui	at,0x40c0
     cb4:	4481d000 	mtc1	at,$f26
     cb8:	f7b80020 	sdc1	$f24,32(sp)
     cbc:	3c014040 	lui	at,0x4040
     cc0:	afb50058 	sw	s5,88(sp)
     cc4:	afb40054 	sw	s4,84(sp)
     cc8:	afb30050 	sw	s3,80(sp)
     ccc:	afb2004c 	sw	s2,76(sp)
     cd0:	afb10048 	sw	s1,72(sp)
     cd4:	afb00044 	sw	s0,68(sp)
     cd8:	4481c000 	mtc1	at,$f24
     cdc:	00808825 	move	s1,a0
     ce0:	afbf005c 	sw	ra,92(sp)
     ce4:	f7b60018 	sdc1	$f22,24(sp)
     ce8:	f7b40010 	sdc1	$f20,16(sp)
     cec:	00008025 	move	s0,zero
     cf0:	27b2007c 	addiu	s2,sp,124
     cf4:	24930024 	addiu	s3,a0,36
     cf8:	27b40070 	addiu	s4,sp,112
     cfc:	24150014 	li	s5,20
     d00:	0c000000 	jal	0 <func_80B60220>
     d04:	00000000 	nop
     d08:	461c0102 	mul.s	$f4,$f0,$f28
     d0c:	0c000000 	jal	0 <func_80B60220>
     d10:	461e2500 	add.s	$f20,$f4,$f30
     d14:	3c010000 	lui	at,0x0
     d18:	c4260000 	lwc1	$f6,0(at)
     d1c:	46060582 	mul.s	$f22,$f0,$f6
     d20:	0c000000 	jal	0 <func_80B60220>
     d24:	00000000 	nop
     d28:	46180202 	mul.s	$f8,$f0,$f24
     d2c:	4600b306 	mov.s	$f12,$f22
     d30:	46184280 	add.s	$f10,$f8,$f24
     d34:	0c000000 	jal	0 <func_80B60220>
     d38:	e7aa0074 	swc1	$f10,116(sp)
     d3c:	46140402 	mul.s	$f16,$f0,$f20
     d40:	4600b306 	mov.s	$f12,$f22
     d44:	0c000000 	jal	0 <func_80B60220>
     d48:	e7b00070 	swc1	$f16,112(sp)
     d4c:	46140482 	mul.s	$f18,$f0,$f20
     d50:	3c073da3 	lui	a3,0x3da3
     d54:	34e7d70a 	ori	a3,a3,0xd70a
     d58:	02202025 	move	a0,s1
     d5c:	02402825 	move	a1,s2
     d60:	02803025 	move	a2,s4
     d64:	e7b20078 	swc1	$f18,120(sp)
     d68:	8e6f0000 	lw	t7,0(s3)
     d6c:	ae4f0000 	sw	t7,0(s2)
     d70:	8e6e0004 	lw	t6,4(s3)
     d74:	ae4e0004 	sw	t6,4(s2)
     d78:	8e6f0008 	lw	t7,8(s3)
     d7c:	ae4f0008 	sw	t7,8(s2)
     d80:	c7a60070 	lwc1	$f6,112(sp)
     d84:	c7b20078 	lwc1	$f18,120(sp)
     d88:	c7a4007c 	lwc1	$f4,124(sp)
     d8c:	461a3202 	mul.s	$f8,$f6,$f26
     d90:	c7b00084 	lwc1	$f16,132(sp)
     d94:	461a9182 	mul.s	$f6,$f18,$f26
     d98:	46082280 	add.s	$f10,$f4,$f8
     d9c:	c7a80080 	lwc1	$f8,128(sp)
     da0:	46068100 	add.s	$f4,$f16,$f6
     da4:	e7aa007c 	swc1	$f10,124(sp)
     da8:	e7a40084 	swc1	$f4,132(sp)
     dac:	c62a0084 	lwc1	$f10,132(s1)
     db0:	460a4480 	add.s	$f18,$f8,$f10
     db4:	0c000000 	jal	0 <func_80B60220>
     db8:	e7b20080 	swc1	$f18,128(sp)
     dbc:	26100001 	addiu	s0,s0,1
     dc0:	1615ffcf 	bne	s0,s5,d00 <func_80B60EB0+0x70>
     dc4:	00000000 	nop
     dc8:	8fbf005c 	lw	ra,92(sp)
     dcc:	d7b40010 	ldc1	$f20,16(sp)
     dd0:	d7b60018 	ldc1	$f22,24(sp)
     dd4:	d7b80020 	ldc1	$f24,32(sp)
     dd8:	d7ba0028 	ldc1	$f26,40(sp)
     ddc:	d7bc0030 	ldc1	$f28,48(sp)
     de0:	d7be0038 	ldc1	$f30,56(sp)
     de4:	8fb00044 	lw	s0,68(sp)
     de8:	8fb10048 	lw	s1,72(sp)
     dec:	8fb2004c 	lw	s2,76(sp)
     df0:	8fb30050 	lw	s3,80(sp)
     df4:	8fb40054 	lw	s4,84(sp)
     df8:	8fb50058 	lw	s5,88(sp)
     dfc:	03e00008 	jr	ra
     e00:	27bd0088 	addiu	sp,sp,136

00000e04 <func_80B61024>:
     e04:	27bdffe8 	addiu	sp,sp,-24
     e08:	afbf0014 	sw	ra,20(sp)
     e0c:	afa5001c 	sw	a1,28(sp)
     e10:	0c000000 	jal	0 <func_80B60220>
     e14:	2405001d 	li	a1,29
     e18:	10400003 	beqz	v0,e28 <func_80B61024+0x24>
     e1c:	3043ffff 	andi	v1,v0,0xffff
     e20:	10000091 	b	1068 <L80B61244+0x44>
     e24:	00601025 	move	v0,v1
     e28:	8fae001c 	lw	t6,28(sp)
     e2c:	85cf001c 	lh	t7,28(t6)
     e30:	31f8003f 	andi	t8,t7,0x3f
     e34:	2f010009 	sltiu	at,t8,9
     e38:	1020008a 	beqz	at,1064 <L80B61244+0x40>
     e3c:	0018c080 	sll	t8,t8,0x2
     e40:	3c010000 	lui	at,0x0
     e44:	00380821 	addu	at,at,t8
     e48:	8c380000 	lw	t8,0(at)
     e4c:	03000008 	jr	t8
     e50:	00000000 	nop

00000e54 <L80B61074>:
     e54:	3c030000 	lui	v1,0x0
     e58:	24630000 	addiu	v1,v1,0
     e5c:	94790eda 	lhu	t9,3802(v1)
     e60:	33280001 	andi	t0,t9,0x1
     e64:	51000080 	beqzl	t0,1068 <L80B61244+0x44>
     e68:	24024006 	li	v0,16390
     e6c:	1000007e 	b	1068 <L80B61244+0x44>
     e70:	2402402a 	li	v0,16426

00000e74 <L80B61094>:
     e74:	1000007c 	b	1068 <L80B61244+0x44>
     e78:	24024020 	li	v0,16416

00000e7c <L80B6109C>:
     e7c:	1000007a 	b	1068 <L80B61244+0x44>
     e80:	24024021 	li	v0,16417

00000e84 <L80B610A4>:
     e84:	3c030000 	lui	v1,0x0
     e88:	24630000 	addiu	v1,v1,0
     e8c:	3c090000 	lui	t1,0x0
     e90:	8d290050 	lw	t1,80(t1)
     e94:	8c6a00a4 	lw	t2,164(v1)
     e98:	012a5824 	and	t3,t1,t2
     e9c:	51600004 	beqzl	t3,eb0 <L80B610A4+0x2c>
     ea0:	946c0eda 	lhu	t4,3802(v1)
     ea4:	10000070 	b	1068 <L80B61244+0x44>
     ea8:	2402402d 	li	v0,16429
     eac:	946c0eda 	lhu	t4,3802(v1)
     eb0:	318d0001 	andi	t5,t4,0x1
     eb4:	51a0006c 	beqzl	t5,1068 <L80B61244+0x44>
     eb8:	24024006 	li	v0,16390
     ebc:	1000006a 	b	1068 <L80B61244+0x44>
     ec0:	24024007 	li	v0,16391

00000ec4 <L80B610E4>:
     ec4:	3c030000 	lui	v1,0x0
     ec8:	24630000 	addiu	v1,v1,0
     ecc:	3c0e0000 	lui	t6,0x0
     ed0:	8dce0050 	lw	t6,80(t6)
     ed4:	8c6f00a4 	lw	t7,164(v1)
     ed8:	01cfc024 	and	t8,t6,t7
     edc:	53000004 	beqzl	t8,ef0 <L80B610E4+0x2c>
     ee0:	94790eda 	lhu	t9,3802(v1)
     ee4:	10000060 	b	1068 <L80B61244+0x44>
     ee8:	2402402e 	li	v0,16430
     eec:	94790eda 	lhu	t9,3802(v1)
     ef0:	33280001 	andi	t0,t9,0x1
     ef4:	5100005c 	beqzl	t0,1068 <L80B61244+0x44>
     ef8:	24024006 	li	v0,16390
     efc:	94690f1c 	lhu	t1,3868(v1)
     f00:	24034008 	li	v1,16392
     f04:	312a0010 	andi	t2,t1,0x10
     f08:	11400004 	beqz	t2,f1c <L80B610E4+0x58>
     f0c:	00000000 	nop
     f10:	24034009 	li	v1,16393
     f14:	10000054 	b	1068 <L80B61244+0x44>
     f18:	3062ffff 	andi	v0,v1,0xffff
     f1c:	10000052 	b	1068 <L80B61244+0x44>
     f20:	3062ffff 	andi	v0,v1,0xffff

00000f24 <L80B61144>:
     f24:	3c030000 	lui	v1,0x0
     f28:	24630000 	addiu	v1,v1,0
     f2c:	3c0b0000 	lui	t3,0x0
     f30:	8d6b0050 	lw	t3,80(t3)
     f34:	8c6c00a4 	lw	t4,164(v1)
     f38:	016c6824 	and	t5,t3,t4
     f3c:	51a00004 	beqzl	t5,f50 <L80B61144+0x2c>
     f40:	94620eda 	lhu	v0,3802(v1)
     f44:	10000048 	b	1068 <L80B61244+0x44>
     f48:	2402402d 	li	v0,16429
     f4c:	94620eda 	lhu	v0,3802(v1)
     f50:	304e0002 	andi	t6,v0,0x2
     f54:	11c0000b 	beqz	t6,f84 <L80B61144+0x60>
     f58:	30590001 	andi	t9,v0,0x1
     f5c:	946f0f1c 	lhu	t7,3868(v1)
     f60:	2403402f 	li	v1,16431
     f64:	31f80200 	andi	t8,t7,0x200
     f68:	13000004 	beqz	t8,f7c <L80B61144+0x58>
     f6c:	00000000 	nop
     f70:	2403400b 	li	v1,16395
     f74:	1000003c 	b	1068 <L80B61244+0x44>
     f78:	3062ffff 	andi	v0,v1,0xffff
     f7c:	1000003a 	b	1068 <L80B61244+0x44>
     f80:	3062ffff 	andi	v0,v1,0xffff
     f84:	53200038 	beqzl	t9,1068 <L80B61244+0x44>
     f88:	24024006 	li	v0,16390
     f8c:	10000036 	b	1068 <L80B61244+0x44>
     f90:	2402400a 	li	v0,16394

00000f94 <L80B611B4>:
     f94:	3c030000 	lui	v1,0x0
     f98:	24630000 	addiu	v1,v1,0
     f9c:	3c080000 	lui	t0,0x0
     fa0:	8d080050 	lw	t0,80(t0)
     fa4:	8c6900a4 	lw	t1,164(v1)
     fa8:	01095024 	and	t2,t0,t1
     fac:	51400004 	beqzl	t2,fc0 <L80B611B4+0x2c>
     fb0:	946b0eda 	lhu	t3,3802(v1)
     fb4:	1000002c 	b	1068 <L80B61244+0x44>
     fb8:	2402402e 	li	v0,16430
     fbc:	946b0eda 	lhu	t3,3802(v1)
     fc0:	316c0001 	andi	t4,t3,0x1
     fc4:	51800028 	beqzl	t4,1068 <L80B61244+0x44>
     fc8:	24024006 	li	v0,16390
     fcc:	10000026 	b	1068 <L80B61244+0x44>
     fd0:	2402400c 	li	v0,16396

00000fd4 <L80B611F4>:
     fd4:	3c030000 	lui	v1,0x0
     fd8:	24630000 	addiu	v1,v1,0
     fdc:	3c0d0000 	lui	t5,0x0
     fe0:	8dad0050 	lw	t5,80(t5)
     fe4:	8c6e00a4 	lw	t6,164(v1)
     fe8:	01ae7824 	and	t7,t5,t6
     fec:	51e00004 	beqzl	t7,1000 <L80B611F4+0x2c>
     ff0:	94620eda 	lhu	v0,3802(v1)
     ff4:	1000001c 	b	1068 <L80B61244+0x44>
     ff8:	2402402d 	li	v0,16429
     ffc:	94620eda 	lhu	v0,3802(v1)
    1000:	30580008 	andi	t8,v0,0x8
    1004:	13000003 	beqz	t8,1014 <L80B611F4+0x40>
    1008:	30590001 	andi	t9,v0,0x1
    100c:	10000016 	b	1068 <L80B61244+0x44>
    1010:	24024010 	li	v0,16400
    1014:	53200014 	beqzl	t9,1068 <L80B61244+0x44>
    1018:	24024006 	li	v0,16390
    101c:	10000012 	b	1068 <L80B61244+0x44>
    1020:	2402400f 	li	v0,16399

00001024 <L80B61244>:
    1024:	3c030000 	lui	v1,0x0
    1028:	24630000 	addiu	v1,v1,0
    102c:	3c080000 	lui	t0,0x0
    1030:	8d080050 	lw	t0,80(t0)
    1034:	8c6900a4 	lw	t1,164(v1)
    1038:	01095024 	and	t2,t0,t1
    103c:	51400004 	beqzl	t2,1050 <L80B61244+0x2c>
    1040:	946b0eda 	lhu	t3,3802(v1)
    1044:	10000008 	b	1068 <L80B61244+0x44>
    1048:	2402402e 	li	v0,16430
    104c:	946b0eda 	lhu	t3,3802(v1)
    1050:	316c0001 	andi	t4,t3,0x1
    1054:	51800004 	beqzl	t4,1068 <L80B61244+0x44>
    1058:	24024006 	li	v0,16390
    105c:	10000002 	b	1068 <L80B61244+0x44>
    1060:	24024011 	li	v0,16401
    1064:	24024006 	li	v0,16390
    1068:	8fbf0014 	lw	ra,20(sp)
    106c:	27bd0018 	addiu	sp,sp,24
    1070:	03e00008 	jr	ra
    1074:	00000000 	nop

00001078 <func_80B61298>:
    1078:	27bdffe8 	addiu	sp,sp,-24
    107c:	afbf0014 	sw	ra,20(sp)
    1080:	00803025 	move	a2,a0
    1084:	afa60018 	sw	a2,24(sp)
    1088:	248420d8 	addiu	a0,a0,8408
    108c:	0c000000 	jal	0 <func_80B60220>
    1090:	afa5001c 	sw	a1,28(sp)
    1094:	2c41000a 	sltiu	at,v0,10
    1098:	8fa60018 	lw	a2,24(sp)
    109c:	10200049 	beqz	at,11c4 <L80B613C4+0x20>
    10a0:	8fa7001c 	lw	a3,28(sp)
    10a4:	00027080 	sll	t6,v0,0x2
    10a8:	3c010000 	lui	at,0x0
    10ac:	002e0821 	addu	at,at,t6
    10b0:	8c2e0000 	lw	t6,0(at)
    10b4:	01c00008 	jr	t6
    10b8:	00000000 	nop

000010bc <L80B612DC>:
    10bc:	10000042 	b	11c8 <L80B613C4+0x24>
    10c0:	24020001 	li	v0,1

000010c4 <L80B612E4>:
    10c4:	94e2010e 	lhu	v0,270(a3)
    10c8:	24014008 	li	at,16392
    10cc:	3c030000 	lui	v1,0x0
    10d0:	1041000d 	beq	v0,at,1108 <L80B612E4+0x44>
    10d4:	24630000 	addiu	v1,v1,0
    10d8:	24014020 	li	at,16416
    10dc:	10410008 	beq	v0,at,1100 <L80B612E4+0x3c>
    10e0:	24014021 	li	at,16417
    10e4:	10410006 	beq	v0,at,1100 <L80B612E4+0x3c>
    10e8:	2401402f 	li	at,16431
    10ec:	1041000a 	beq	v0,at,1118 <L80B612E4+0x54>
    10f0:	3c030000 	lui	v1,0x0
    10f4:	3c030000 	lui	v1,0x0
    10f8:	1000000b 	b	1128 <L80B612E4+0x64>
    10fc:	24630000 	addiu	v1,v1,0
    1100:	10000031 	b	11c8 <L80B613C4+0x24>
    1104:	00001025 	move	v0,zero
    1108:	946f0f1c 	lhu	t7,3868(v1)
    110c:	35f80010 	ori	t8,t7,0x10
    1110:	10000005 	b	1128 <L80B612E4+0x64>
    1114:	a4780f1c 	sh	t8,3868(v1)
    1118:	24630000 	addiu	v1,v1,0
    111c:	94790f1c 	lhu	t9,3868(v1)
    1120:	37280200 	ori	t0,t9,0x200
    1124:	a4680f1c 	sh	t0,3868(v1)
    1128:	94690eda 	lhu	t1,3802(v1)
    112c:	00001025 	move	v0,zero
    1130:	352a0001 	ori	t2,t1,0x1
    1134:	10000024 	b	11c8 <L80B613C4+0x24>
    1138:	a46a0eda 	sh	t2,3802(v1)

0000113c <L80B6135C>:
    113c:	00c02025 	move	a0,a2
    1140:	afa60018 	sw	a2,24(sp)
    1144:	0c000000 	jal	0 <func_80B60220>
    1148:	afa7001c 	sw	a3,28(sp)
    114c:	8fa60018 	lw	a2,24(sp)
    1150:	14400003 	bnez	v0,1160 <L80B6135C+0x24>
    1154:	8fa7001c 	lw	a3,28(sp)
    1158:	1000001b 	b	11c8 <L80B613C4+0x24>
    115c:	24020001 	li	v0,1
    1160:	94eb010e 	lhu	t3,270(a3)
    1164:	2401400c 	li	at,16396
    1168:	3c0c0001 	lui	t4,0x1
    116c:	1561000b 	bne	t3,at,119c <L80B6135C+0x60>
    1170:	01866021 	addu	t4,t4,a2
    1174:	918c04bd 	lbu	t4,1213(t4)
    1178:	240e400e 	li	t6,16398
    117c:	240d400d 	li	t5,16397
    1180:	15800003 	bnez	t4,1190 <L80B6135C+0x54>
    1184:	00c02025 	move	a0,a2
    1188:	10000002 	b	1194 <L80B6135C+0x58>
    118c:	a4ed010e 	sh	t5,270(a3)
    1190:	a4ee010e 	sh	t6,270(a3)
    1194:	0c000000 	jal	0 <func_80B60220>
    1198:	94e5010e 	lhu	a1,270(a3)
    119c:	1000000a 	b	11c8 <L80B613C4+0x24>
    11a0:	24020001 	li	v0,1

000011a4 <L80B613C4>:
    11a4:	0c000000 	jal	0 <func_80B60220>
    11a8:	00c02025 	move	a0,a2
    11ac:	14400003 	bnez	v0,11bc <L80B613C4+0x18>
    11b0:	00000000 	nop
    11b4:	10000004 	b	11c8 <L80B613C4+0x24>
    11b8:	24020001 	li	v0,1
    11bc:	10000002 	b	11c8 <L80B613C4+0x24>
    11c0:	24020002 	li	v0,2
    11c4:	24020001 	li	v0,1
    11c8:	8fbf0014 	lw	ra,20(sp)
    11cc:	27bd0018 	addiu	sp,sp,24
    11d0:	03e00008 	jr	ra
    11d4:	00000000 	nop

000011d8 <func_80B613F8>:
    11d8:	27bdffe8 	addiu	sp,sp,-24
    11dc:	afbf0014 	sw	ra,20(sp)
    11e0:	84820652 	lh	v0,1618(a0)
    11e4:	00803025 	move	a2,a0
    11e8:	14400003 	bnez	v0,11f8 <func_80B613F8+0x20>
    11ec:	244effff 	addiu	t6,v0,-1
    11f0:	10000003 	b	1200 <func_80B613F8+0x28>
    11f4:	00001825 	move	v1,zero
    11f8:	a4ce0652 	sh	t6,1618(a2)
    11fc:	84c30652 	lh	v1,1618(a2)
    1200:	54600010 	bnezl	v1,1244 <func_80B613F8+0x6c>
    1204:	8fbf0014 	lw	ra,20(sp)
    1208:	84cf0654 	lh	t7,1620(a2)
    120c:	2404001e 	li	a0,30
    1210:	2405001e 	li	a1,30
    1214:	25f80001 	addiu	t8,t7,1
    1218:	a4d80654 	sh	t8,1620(a2)
    121c:	84d90654 	lh	t9,1620(a2)
    1220:	2b210003 	slti	at,t9,3
    1224:	54200007 	bnezl	at,1244 <func_80B613F8+0x6c>
    1228:	8fbf0014 	lw	ra,20(sp)
    122c:	0c000000 	jal	0 <func_80B60220>
    1230:	afa60018 	sw	a2,24(sp)
    1234:	8fa60018 	lw	a2,24(sp)
    1238:	a4c20652 	sh	v0,1618(a2)
    123c:	a4c00654 	sh	zero,1620(a2)
    1240:	8fbf0014 	lw	ra,20(sp)
    1244:	27bd0018 	addiu	sp,sp,24
    1248:	03e00008 	jr	ra
    124c:	00000000 	nop

00001250 <func_80B61470>:
    1250:	27bdffd0 	addiu	sp,sp,-48
    1254:	afbf0024 	sw	ra,36(sp)
    1258:	afb00020 	sw	s0,32(sp)
    125c:	afa50034 	sw	a1,52(sp)
    1260:	8ca21c44 	lw	v0,7236(a1)
    1264:	8c880190 	lw	t0,400(a0)
    1268:	3c190000 	lui	t9,0x0
    126c:	8c580024 	lw	t8,36(v0)
    1270:	00808025 	move	s0,a0
    1274:	27390000 	addiu	t9,t9,0
    1278:	ac9801ac 	sw	t8,428(a0)
    127c:	8c4f0028 	lw	t7,40(v0)
    1280:	3c090000 	lui	t1,0x0
    1284:	26050194 	addiu	a1,s0,404
    1288:	ac8f01b0 	sw	t7,432(a0)
    128c:	8c58002c 	lw	t8,44(v0)
    1290:	2406000b 	li	a2,11
    1294:	1728000c 	bne	t9,t0,12c8 <func_80B61470+0x78>
    1298:	ac9801b4 	sw	t8,436(a0)
    129c:	8d290004 	lw	t1,4(t1)
    12a0:	3c01c120 	lui	at,0xc120
    12a4:	51200006 	beqzl	t1,12c0 <func_80B61470+0x70>
    12a8:	44813000 	mtc1	at,$f6
    12ac:	3c014120 	lui	at,0x4120
    12b0:	44812000 	mtc1	at,$f4
    12b4:	10000006 	b	12d0 <func_80B61470+0x80>
    12b8:	e48401a8 	swc1	$f4,424(a0)
    12bc:	44813000 	mtc1	at,$f6
    12c0:	10000003 	b	12d0 <func_80B61470+0x80>
    12c4:	e60601a8 	swc1	$f6,424(s0)
    12c8:	c6080028 	lwc1	$f8,40(s0)
    12cc:	e60801b0 	swc1	$f8,432(s0)
    12d0:	8607064c 	lh	a3,1612(s0)
    12d4:	afa50028 	sw	a1,40(sp)
    12d8:	0c000000 	jal	0 <func_80B60220>
    12dc:	02002025 	move	a0,s0
    12e0:	920a0208 	lbu	t2,520(s0)
    12e4:	24010001 	li	at,1
    12e8:	8fa40034 	lw	a0,52(sp)
    12ec:	1541000a 	bne	t2,at,1318 <func_80B61470+0xc8>
    12f0:	02002825 	move	a1,s0
    12f4:	3c0b0000 	lui	t3,0x0
    12f8:	3c0c0000 	lui	t4,0x0
    12fc:	258c0000 	addiu	t4,t4,0
    1300:	256b0000 	addiu	t3,t3,0
    1304:	8e070644 	lw	a3,1604(s0)
    1308:	afac0014 	sw	t4,20(sp)
    130c:	afab0010 	sw	t3,16(sp)
    1310:	0c000000 	jal	0 <func_80B60220>
    1314:	8fa60028 	lw	a2,40(sp)
    1318:	8fbf0024 	lw	ra,36(sp)
    131c:	8fb00020 	lw	s0,32(sp)
    1320:	27bd0030 	addiu	sp,sp,48
    1324:	03e00008 	jr	ra
    1328:	00000000 	nop

0000132c <func_80B6154C>:
    132c:	27bdffd0 	addiu	sp,sp,-48
    1330:	afbf0014 	sw	ra,20(sp)
    1334:	c4840024 	lwc1	$f4,36(a0)
    1338:	8ca21c44 	lw	v0,7236(a1)
    133c:	e7a40020 	swc1	$f4,32(sp)
    1340:	c4880084 	lwc1	$f8,132(a0)
    1344:	c4860028 	lwc1	$f6,40(a0)
    1348:	24450024 	addiu	a1,v0,36
    134c:	46083280 	add.s	$f10,$f6,$f8
    1350:	e7aa0024 	swc1	$f10,36(sp)
    1354:	c490002c 	lwc1	$f16,44(a0)
    1358:	27a40020 	addiu	a0,sp,32
    135c:	afa2002c 	sw	v0,44(sp)
    1360:	0c000000 	jal	0 <func_80B60220>
    1364:	e7b00028 	swc1	$f16,40(sp)
    1368:	8fa2002c 	lw	v0,44(sp)
    136c:	3c014370 	lui	at,0x4370
    1370:	44813000 	mtc1	at,$f6
    1374:	c7a40024 	lwc1	$f4,36(sp)
    1378:	c4520028 	lwc1	$f18,40(v0)
    137c:	46000086 	mov.s	$f2,$f0
    1380:	4606103c 	c.lt.s	$f2,$f6
    1384:	3c0142a0 	lui	at,0x42a0
    1388:	46049001 	sub.s	$f0,$f18,$f4
    138c:	00001025 	move	v0,zero
    1390:	8fbf0014 	lw	ra,20(sp)
    1394:	45000009 	bc1f	13bc <func_80B6154C+0x90>
    1398:	46000005 	abs.s	$f0,$f0
    139c:	44814000 	mtc1	at,$f8
    13a0:	00000000 	nop
    13a4:	4608003c 	c.lt.s	$f0,$f8
    13a8:	00000000 	nop
    13ac:	45000003 	bc1f	13bc <func_80B6154C+0x90>
    13b0:	00000000 	nop
    13b4:	10000001 	b	13bc <func_80B6154C+0x90>
    13b8:	24020001 	li	v0,1
    13bc:	03e00008 	jr	ra
    13c0:	27bd0030 	addiu	sp,sp,48

000013c4 <func_80B615E4>:
    13c4:	27bdffe0 	addiu	sp,sp,-32
    13c8:	afbf0014 	sw	ra,20(sp)
    13cc:	8c830154 	lw	v1,340(a0)
    13d0:	3c050600 	lui	a1,0x600
    13d4:	24a50598 	addiu	a1,a1,1432
    13d8:	00803825 	move	a3,a0
    13dc:	10a30005 	beq	a1,v1,13f4 <func_80B615E4+0x30>
    13e0:	24060008 	li	a2,8
    13e4:	3c0e0600 	lui	t6,0x600
    13e8:	25ce0d48 	addiu	t6,t6,3400
    13ec:	55c3000c 	bnel	t6,v1,1420 <func_80B615E4+0x5c>
    13f0:	84e20194 	lh	v0,404(a3)
    13f4:	84ef0194 	lh	t7,404(a3)
    13f8:	55e00009 	bnezl	t7,1420 <func_80B615E4+0x5c>
    13fc:	84e20194 	lh	v0,404(a3)
    1400:	8cf90190 	lw	t9,400(a3)
    1404:	3c180000 	lui	t8,0x0
    1408:	27180000 	addiu	t8,t8,0
    140c:	17190003 	bne	t8,t9,141c <func_80B615E4+0x58>
    1410:	24060003 	li	a2,3
    1414:	10000001 	b	141c <func_80B615E4+0x58>
    1418:	00003025 	move	a2,zero
    141c:	84e20194 	lh	v0,404(a3)
    1420:	24e4014c 	addiu	a0,a3,332
    1424:	10400008 	beqz	v0,1448 <func_80B615E4+0x84>
    1428:	00000000 	nop
    142c:	94e8010e 	lhu	t0,270(a3)
    1430:	24014006 	li	at,16390
    1434:	15010004 	bne	t0,at,1448 <func_80B615E4+0x84>
    1438:	00000000 	nop
    143c:	10a30002 	beq	a1,v1,1448 <func_80B615E4+0x84>
    1440:	00000000 	nop
    1444:	24060006 	li	a2,6
    1448:	10400009 	beqz	v0,1470 <func_80B615E4+0xac>
    144c:	3c050000 	lui	a1,0x0
    1450:	94e9010e 	lhu	t1,270(a3)
    1454:	24014007 	li	at,16391
    1458:	3c0a0600 	lui	t2,0x600
    145c:	15210004 	bne	t1,at,1470 <func_80B615E4+0xac>
    1460:	254a0d48 	addiu	t2,t2,3400
    1464:	51430003 	beql	t2,v1,1474 <func_80B615E4+0xb0>
    1468:	24010008 	li	at,8
    146c:	24060007 	li	a2,7
    1470:	24010008 	li	at,8
    1474:	10c1000d 	beq	a2,at,14ac <func_80B615E4+0xe8>
    1478:	24a50000 	addiu	a1,a1,0
    147c:	afa6001c 	sw	a2,28(sp)
    1480:	0c000000 	jal	0 <func_80B60220>
    1484:	afa70020 	sw	a3,32(sp)
    1488:	8fa6001c 	lw	a2,28(sp)
    148c:	24010003 	li	at,3
    1490:	8fa70020 	lw	a3,32(sp)
    1494:	54c10006 	bnel	a2,at,14b0 <func_80B615E4+0xec>
    1498:	8fbf0014 	lw	ra,20(sp)
    149c:	c4e4015c 	lwc1	$f4,348(a3)
    14a0:	44803000 	mtc1	zero,$f6
    14a4:	e4e40164 	swc1	$f4,356(a3)
    14a8:	e4e60168 	swc1	$f6,360(a3)
    14ac:	8fbf0014 	lw	ra,20(sp)
    14b0:	27bd0020 	addiu	sp,sp,32
    14b4:	03e00008 	jr	ra
    14b8:	00000000 	nop

000014bc <EnZo_Init>:
    14bc:	44800000 	mtc1	zero,$f0
    14c0:	27bdffc0 	addiu	sp,sp,-64
    14c4:	afb00028 	sw	s0,40(sp)
    14c8:	afa50044 	sw	a1,68(sp)
    14cc:	00808025 	move	s0,a0
    14d0:	afbf002c 	sw	ra,44(sp)
    14d4:	44050000 	mfc1	a1,$f0
    14d8:	44070000 	mfc1	a3,$f0
    14dc:	248400b4 	addiu	a0,a0,180
    14e0:	0c000000 	jal	0 <func_80B60220>
    14e4:	00003025 	move	a2,zero
    14e8:	2605014c 	addiu	a1,s0,332
    14ec:	3c060601 	lui	a2,0x601
    14f0:	260e020a 	addiu	t6,s0,522
    14f4:	260f0282 	addiu	t7,s0,642
    14f8:	24180014 	li	t8,20
    14fc:	afb80018 	sw	t8,24(sp)
    1500:	afaf0014 	sw	t7,20(sp)
    1504:	afae0010 	sw	t6,16(sp)
    1508:	24c6bfa8 	addiu	a2,a2,-16472
    150c:	afa50038 	sw	a1,56(sp)
    1510:	8fa40044 	lw	a0,68(sp)
    1514:	0c000000 	jal	0 <func_80B60220>
    1518:	00003825 	move	a3,zero
    151c:	260501bc 	addiu	a1,s0,444
    1520:	afa50034 	sw	a1,52(sp)
    1524:	0c000000 	jal	0 <func_80B60220>
    1528:	8fa40044 	lw	a0,68(sp)
    152c:	3c070000 	lui	a3,0x0
    1530:	8fa50034 	lw	a1,52(sp)
    1534:	24e70000 	addiu	a3,a3,0
    1538:	8fa40044 	lw	a0,68(sp)
    153c:	0c000000 	jal	0 <func_80B60220>
    1540:	02003025 	move	a2,s0
    1544:	3c060000 	lui	a2,0x0
    1548:	24c60000 	addiu	a2,a2,0
    154c:	26040098 	addiu	a0,s0,152
    1550:	0c000000 	jal	0 <func_80B60220>
    1554:	00002825 	move	a1,zero
    1558:	3c190000 	lui	t9,0x0
    155c:	8f390004 	lw	t9,4(t9)
    1560:	3c050000 	lui	a1,0x0
    1564:	24a50000 	addiu	a1,a1,0
    1568:	1720000a 	bnez	t9,1594 <EnZo_Init+0xd8>
    156c:	8fa40038 	lw	a0,56(sp)
    1570:	8608001c 	lh	t0,28(s0)
    1574:	24010008 	li	at,8
    1578:	3109003f 	andi	t1,t0,0x3f
    157c:	15210005 	bne	t1,at,1594 <EnZo_Init+0xd8>
    1580:	00000000 	nop
    1584:	0c000000 	jal	0 <func_80B60220>
    1588:	02002025 	move	a0,s0
    158c:	10000049 	b	16b4 <EnZo_Init+0x1f8>
    1590:	8fbf002c 	lw	ra,44(sp)
    1594:	0c000000 	jal	0 <func_80B60220>
    1598:	24060002 	li	a2,2
    159c:	3c053c23 	lui	a1,0x3c23
    15a0:	34a5d70a 	ori	a1,a1,0xd70a
    15a4:	0c000000 	jal	0 <func_80B60220>
    15a8:	02002025 	move	a0,s0
    15ac:	860d01fe 	lh	t5,510(s0)
    15b0:	860b01fc 	lh	t3,508(s0)
    15b4:	3c0141f0 	lui	at,0x41f0
    15b8:	448d5000 	mtc1	t5,$f10
    15bc:	448b2000 	mtc1	t3,$f4
    15c0:	44813000 	mtc1	at,$f6
    15c4:	46805420 	cvt.s.w	$f16,$f10
    15c8:	3c013f00 	lui	at,0x3f00
    15cc:	44819000 	mtc1	at,$f18
    15d0:	240a0006 	li	t2,6
    15d4:	240c0001 	li	t4,1
    15d8:	46802020 	cvt.s.w	$f0,$f4
    15dc:	46128102 	mul.s	$f4,$f16,$f18
    15e0:	a20a001f 	sb	t2,31(s0)
    15e4:	a60c064c 	sh	t4,1612(s0)
    15e8:	a2000208 	sb	zero,520(s0)
    15ec:	a6000194 	sh	zero,404(s0)
    15f0:	46060200 	add.s	$f8,$f0,$f6
    15f4:	44803000 	mtc1	zero,$f6
    15f8:	44062000 	mfc1	a2,$f4
    15fc:	44070000 	mfc1	a3,$f0
    1600:	e6080644 	swc1	$f8,1604(s0)
    1604:	240e0005 	li	t6,5
    1608:	afae0014 	sw	t6,20(sp)
    160c:	8fa40044 	lw	a0,68(sp)
    1610:	02002825 	move	a1,s0
    1614:	0c000000 	jal	0 <func_80B60220>
    1618:	e7a60010 	swc1	$f6,16(sp)
    161c:	3c014258 	lui	at,0x4258
    1620:	44815000 	mtc1	at,$f10
    1624:	c6080084 	lwc1	$f8,132(s0)
    1628:	3c190000 	lui	t9,0x0
    162c:	3c050000 	lui	a1,0x0
    1630:	460a403c 	c.lt.s	$f8,$f10
    1634:	27390000 	addiu	t9,t9,0
    1638:	24a50000 	addiu	a1,a1,0
    163c:	45030008 	bc1tl	1660 <EnZo_Init+0x1a4>
    1640:	3c0141c0 	lui	at,0x41c0
    1644:	860f001c 	lh	t7,28(s0)
    1648:	24010008 	li	at,8
    164c:	3c0c0000 	lui	t4,0x0
    1650:	31f8003f 	andi	t8,t7,0x3f
    1654:	17010011 	bne	t8,at,169c <EnZo_Init+0x1e0>
    1658:	258c0000 	addiu	t4,t4,0
    165c:	3c0141c0 	lui	at,0x41c0
    1660:	44818000 	mtc1	at,$f16
    1664:	ae1900c0 	sw	t9,192(s0)
    1668:	24060001 	li	a2,1
    166c:	e61000c4 	swc1	$f16,196(s0)
    1670:	0c000000 	jal	0 <func_80B60220>
    1674:	8fa40038 	lw	a0,56(sp)
    1678:	3c01437f 	lui	at,0x437f
    167c:	44819000 	mtc1	at,$f18
    1680:	3c090000 	lui	t1,0x0
    1684:	24080001 	li	t0,1
    1688:	25290000 	addiu	t1,t1,0
    168c:	a2080208 	sb	t0,520(s0)
    1690:	ae090190 	sw	t1,400(s0)
    1694:	10000006 	b	16b0 <EnZo_Init+0x1f4>
    1698:	e6120648 	swc1	$f18,1608(s0)
    169c:	8e0a0004 	lw	t2,4(s0)
    16a0:	2401fffe 	li	at,-2
    16a4:	ae0c0190 	sw	t4,400(s0)
    16a8:	01415824 	and	t3,t2,at
    16ac:	ae0b0004 	sw	t3,4(s0)
    16b0:	8fbf002c 	lw	ra,44(sp)
    16b4:	8fb00028 	lw	s0,40(sp)
    16b8:	27bd0040 	addiu	sp,sp,64
    16bc:	03e00008 	jr	ra
    16c0:	00000000 	nop

000016c4 <EnZo_Destroy>:
    16c4:	afa40000 	sw	a0,0(sp)
    16c8:	03e00008 	jr	ra
    16cc:	afa50004 	sw	a1,4(sp)

000016d0 <func_80B618F0>:
    16d0:	27bdffe0 	addiu	sp,sp,-32
    16d4:	afb00018 	sw	s0,24(sp)
    16d8:	00808025 	move	s0,a0
    16dc:	afbf001c 	sw	ra,28(sp)
    16e0:	afa50024 	sw	a1,36(sp)
    16e4:	00a02025 	move	a0,a1
    16e8:	26050656 	addiu	a1,s0,1622
    16ec:	2606067e 	addiu	a2,s0,1662
    16f0:	0c000000 	jal	0 <func_80B60220>
    16f4:	24070014 	li	a3,20
    16f8:	0c000000 	jal	0 <func_80B60220>
    16fc:	02002025 	move	a0,s0
    1700:	860e0194 	lh	t6,404(s0)
    1704:	240f0004 	li	t7,4
    1708:	51c00004 	beqzl	t6,171c <func_80B618F0+0x4c>
    170c:	8618008a 	lh	t8,138(s0)
    1710:	10000023 	b	17a0 <func_80B618F0+0xd0>
    1714:	a60f064c 	sh	t7,1612(s0)
    1718:	8618008a 	lh	t8,138(s0)
    171c:	861900b6 	lh	t9,182(s0)
    1720:	02002025 	move	a0,s0
    1724:	44982000 	mtc1	t8,$f4
    1728:	44994000 	mtc1	t9,$f8
    172c:	240b0001 	li	t3,1
    1730:	468021a0 	cvt.s.w	$f6,$f4
    1734:	468042a0 	cvt.s.w	$f10,$f8
    1738:	460a3401 	sub.s	$f16,$f6,$f10
    173c:	4600848d 	trunc.w.s	$f18,$f16
    1740:	44029000 	mfc1	v0,$f18
    1744:	00000000 	nop
    1748:	00021400 	sll	v0,v0,0x10
    174c:	00021403 	sra	v0,v0,0x10
    1750:	04400004 	bltz	v0,1764 <func_80B618F0+0x94>
    1754:	00021823 	negu	v1,v0
    1758:	00021c00 	sll	v1,v0,0x10
    175c:	10000003 	b	176c <func_80B618F0+0x9c>
    1760:	00031c03 	sra	v1,v1,0x10
    1764:	00031c00 	sll	v1,v1,0x10
    1768:	00031c03 	sra	v1,v1,0x10
    176c:	28614718 	slti	at,v1,18200
    1770:	5020000b 	beqzl	at,17a0 <func_80B618F0+0xd0>
    1774:	a60b064c 	sh	t3,1612(s0)
    1778:	0c000000 	jal	0 <func_80B60220>
    177c:	8fa50024 	lw	a1,36(sp)
    1780:	10400004 	beqz	v0,1794 <func_80B618F0+0xc4>
    1784:	240a0001 	li	t2,1
    1788:	24090002 	li	t1,2
    178c:	10000004 	b	17a0 <func_80B618F0+0xd0>
    1790:	a609064c 	sh	t1,1612(s0)
    1794:	10000002 	b	17a0 <func_80B618F0+0xd0>
    1798:	a60a064c 	sh	t2,1612(s0)
    179c:	a60b064c 	sh	t3,1612(s0)
    17a0:	8fbf001c 	lw	ra,28(sp)
    17a4:	8fb00018 	lw	s0,24(sp)
    17a8:	27bd0020 	addiu	sp,sp,32
    17ac:	03e00008 	jr	ra
    17b0:	00000000 	nop

000017b4 <func_80B619D4>:
    17b4:	27bdffe8 	addiu	sp,sp,-24
    17b8:	afbf0014 	sw	ra,20(sp)
    17bc:	0c000000 	jal	0 <func_80B60220>
    17c0:	afa40018 	sw	a0,24(sp)
    17c4:	10400007 	beqz	v0,17e4 <func_80B619D4+0x30>
    17c8:	8fa40018 	lw	a0,24(sp)
    17cc:	3c014080 	lui	at,0x4080
    17d0:	44812000 	mtc1	at,$f4
    17d4:	3c0e0000 	lui	t6,0x0
    17d8:	25ce0000 	addiu	t6,t6,0
    17dc:	ac8e0190 	sw	t6,400(a0)
    17e0:	e4840060 	swc1	$f4,96(a0)
    17e4:	8fbf0014 	lw	ra,20(sp)
    17e8:	27bd0018 	addiu	sp,sp,24
    17ec:	03e00008 	jr	ra
    17f0:	00000000 	nop

000017f4 <func_80B61A14>:
    17f4:	27bdffe0 	addiu	sp,sp,-32
    17f8:	afbf001c 	sw	ra,28(sp)
    17fc:	afb00018 	sw	s0,24(sp)
    1800:	afa50024 	sw	a1,36(sp)
    1804:	3c014258 	lui	at,0x4258
    1808:	44812000 	mtc1	at,$f4
    180c:	c4800084 	lwc1	$f0,132(a0)
    1810:	00808025 	move	s0,a0
    1814:	3c0142a0 	lui	at,0x42a0
    1818:	4604003c 	c.lt.s	$f0,$f4
    181c:	00000000 	nop
    1820:	45020017 	bc1fl	1880 <func_80B61A14+0x8c>
    1824:	44815000 	mtc1	at,$f10
    1828:	0c000000 	jal	0 <func_80B60220>
    182c:	24052808 	li	a1,10248
    1830:	0c000000 	jal	0 <func_80B60220>
    1834:	02002025 	move	a0,s0
    1838:	3c050000 	lui	a1,0x0
    183c:	24a50000 	addiu	a1,a1,0
    1840:	2604014c 	addiu	a0,s0,332
    1844:	0c000000 	jal	0 <func_80B60220>
    1848:	24060003 	li	a2,3
    184c:	8e0e0004 	lw	t6,4(s0)
    1850:	3c01437f 	lui	at,0x437f
    1854:	44803000 	mtc1	zero,$f6
    1858:	44814000 	mtc1	at,$f8
    185c:	3c180000 	lui	t8,0x0
    1860:	27180000 	addiu	t8,t8,0
    1864:	35cf0001 	ori	t7,t6,0x1
    1868:	ae0f0004 	sw	t7,4(s0)
    186c:	ae180190 	sw	t8,400(s0)
    1870:	e6060060 	swc1	$f6,96(s0)
    1874:	10000012 	b	18c0 <func_80B61A14+0xcc>
    1878:	e6080648 	swc1	$f8,1608(s0)
    187c:	44815000 	mtc1	at,$f10
    1880:	3c063ecc 	lui	a2,0x3ecc
    1884:	34c6cccd 	ori	a2,a2,0xcccd
    1888:	460a003c 	c.lt.s	$f0,$f10
    188c:	26040060 	addiu	a0,s0,96
    1890:	3c054000 	lui	a1,0x4000
    1894:	3c073f19 	lui	a3,0x3f19
    1898:	4502000a 	bc1fl	18c4 <func_80B61A14+0xd0>
    189c:	8fbf001c 	lw	ra,28(sp)
    18a0:	0c000000 	jal	0 <func_80B60220>
    18a4:	34e7999a 	ori	a3,a3,0x999a
    18a8:	3c063e99 	lui	a2,0x3e99
    18ac:	34c6999a 	ori	a2,a2,0x999a
    18b0:	26040648 	addiu	a0,s0,1608
    18b4:	3c05437f 	lui	a1,0x437f
    18b8:	0c000000 	jal	0 <func_80B60220>
    18bc:	3c074120 	lui	a3,0x4120
    18c0:	8fbf001c 	lw	ra,28(sp)
    18c4:	8fb00018 	lw	s0,24(sp)
    18c8:	27bd0020 	addiu	sp,sp,32
    18cc:	03e00008 	jr	ra
    18d0:	00000000 	nop

000018d4 <func_80B61AF4>:
    18d4:	27bdffd0 	addiu	sp,sp,-48
    18d8:	afb00018 	sw	s0,24(sp)
    18dc:	00808025 	move	s0,a0
    18e0:	afbf001c 	sw	ra,28(sp)
    18e4:	afa50034 	sw	a1,52(sp)
    18e8:	00a02025 	move	a0,a1
    18ec:	26050656 	addiu	a1,s0,1622
    18f0:	2606067e 	addiu	a2,s0,1662
    18f4:	0c000000 	jal	0 <func_80B60220>
    18f8:	24070014 	li	a3,20
    18fc:	2604014c 	addiu	a0,s0,332
    1900:	8e05015c 	lw	a1,348(s0)
    1904:	0c000000 	jal	0 <func_80B60220>
    1908:	afa40020 	sw	a0,32(sp)
    190c:	10400006 	beqz	v0,1928 <func_80B61AF4+0x54>
    1910:	240e0001 	li	t6,1
    1914:	44802000 	mtc1	zero,$f4
    1918:	240f0004 	li	t7,4
    191c:	a20e0208 	sb	t6,520(s0)
    1920:	a60f064c 	sh	t7,1612(s0)
    1924:	e6040168 	swc1	$f4,360(s0)
    1928:	0c000000 	jal	0 <func_80B60220>
    192c:	02002025 	move	a0,s0
    1930:	3c014258 	lui	at,0x4258
    1934:	44814000 	mtc1	at,$f8
    1938:	c6060084 	lwc1	$f6,132(s0)
    193c:	3c063e99 	lui	a2,0x3e99
    1940:	34c6999a 	ori	a2,a2,0x999a
    1944:	4608303c 	c.lt.s	$f6,$f8
    1948:	3c010000 	lui	at,0x0
    194c:	26040060 	addiu	a0,s0,96
    1950:	3c073e4c 	lui	a3,0x3e4c
    1954:	45000004 	bc1f	1968 <func_80B61AF4+0x94>
    1958:	00000000 	nop
    195c:	3c010000 	lui	at,0x0
    1960:	10000002 	b	196c <func_80B61AF4+0x98>
    1964:	c4200000 	lwc1	$f0,0(at)
    1968:	c4200000 	lwc1	$f0,0(at)
    196c:	44050000 	mfc1	a1,$f0
    1970:	0c000000 	jal	0 <func_80B60220>
    1974:	34e7cccd 	ori	a3,a3,0xcccd
    1978:	8602064e 	lh	v0,1614(s0)
    197c:	3c010000 	lui	at,0x0
    1980:	c4200000 	lwc1	$f0,0(at)
    1984:	10400010 	beqz	v0,19c8 <func_80B61AF4+0xf4>
    1988:	02002025 	move	a0,s0
    198c:	2458ffff 	addiu	t8,v0,-1
    1990:	a618064e 	sh	t8,1614(s0)
    1994:	8602064e 	lh	v0,1614(s0)
    1998:	24010003 	li	at,3
    199c:	02002025 	move	a0,s0
    19a0:	10410004 	beq	v0,at,19b4 <func_80B61AF4+0xe0>
    19a4:	3c063f80 	lui	a2,0x3f80
    19a8:	24010006 	li	at,6
    19ac:	5441000d 	bnel	v0,at,19e4 <func_80B61AF4+0x110>
    19b0:	02002025 	move	a0,s0
    19b4:	44050000 	mfc1	a1,$f0
    19b8:	0c000000 	jal	0 <func_80B60220>
    19bc:	240700c8 	li	a3,200
    19c0:	10000008 	b	19e4 <func_80B61AF4+0x110>
    19c4:	02002025 	move	a0,s0
    19c8:	44050000 	mfc1	a1,$f0
    19cc:	3c063f80 	lui	a2,0x3f80
    19d0:	0c000000 	jal	0 <func_80B60220>
    19d4:	240700c8 	li	a3,200
    19d8:	2419000c 	li	t9,12
    19dc:	a619064e 	sh	t9,1614(s0)
    19e0:	02002025 	move	a0,s0
    19e4:	0c000000 	jal	0 <func_80B60220>
    19e8:	8fa50034 	lw	a1,52(sp)
    19ec:	10400005 	beqz	v0,1a04 <func_80B61AF4+0x130>
    19f0:	24040028 	li	a0,40
    19f4:	0c000000 	jal	0 <func_80B60220>
    19f8:	24050028 	li	a1,40
    19fc:	1000001c 	b	1a70 <func_80B61AF4+0x19c>
    1a00:	a6020650 	sh	v0,1616(s0)
    1a04:	86020650 	lh	v0,1616(s0)
    1a08:	3c050000 	lui	a1,0x0
    1a0c:	24a50000 	addiu	a1,a1,0
    1a10:	14400003 	bnez	v0,1a20 <func_80B61AF4+0x14c>
    1a14:	2448ffff 	addiu	t0,v0,-1
    1a18:	10000003 	b	1a28 <func_80B61AF4+0x154>
    1a1c:	00001825 	move	v1,zero
    1a20:	a6080650 	sh	t0,1616(s0)
    1a24:	86030650 	lh	v1,1616(s0)
    1a28:	14600011 	bnez	v1,1a70 <func_80B61AF4+0x19c>
    1a2c:	8fa40020 	lw	a0,32(sp)
    1a30:	0c000000 	jal	0 <func_80B60220>
    1a34:	24060004 	li	a2,4
    1a38:	c600015c 	lwc1	$f0,348(s0)
    1a3c:	3c01bf80 	lui	at,0xbf80
    1a40:	c6020158 	lwc1	$f2,344(s0)
    1a44:	44815000 	mtc1	at,$f10
    1a48:	3c0a0000 	lui	t2,0x0
    1a4c:	24090001 	li	t1,1
    1a50:	254a0000 	addiu	t2,t2,0
    1a54:	a2000208 	sb	zero,520(s0)
    1a58:	a609064c 	sh	t1,1612(s0)
    1a5c:	ae0a0190 	sw	t2,400(s0)
    1a60:	e6000158 	swc1	$f0,344(s0)
    1a64:	e6000164 	swc1	$f0,356(s0)
    1a68:	e602015c 	swc1	$f2,348(s0)
    1a6c:	e60a0168 	swc1	$f10,360(s0)
    1a70:	8fbf001c 	lw	ra,28(sp)
    1a74:	8fb00018 	lw	s0,24(sp)
    1a78:	27bd0030 	addiu	sp,sp,48
    1a7c:	03e00008 	jr	ra
    1a80:	00000000 	nop

00001a84 <func_80B61CA4>:
    1a84:	27bdffd8 	addiu	sp,sp,-40
    1a88:	afb00018 	sw	s0,24(sp)
    1a8c:	00808025 	move	s0,a0
    1a90:	afbf001c 	sw	ra,28(sp)
    1a94:	afa5002c 	sw	a1,44(sp)
    1a98:	8e05015c 	lw	a1,348(s0)
    1a9c:	2484014c 	addiu	a0,a0,332
    1aa0:	0c000000 	jal	0 <func_80B60220>
    1aa4:	afa40024 	sw	a0,36(sp)
    1aa8:	1040000e 	beqz	v0,1ae4 <func_80B61CA4+0x60>
    1aac:	02002025 	move	a0,s0
    1ab0:	0c000000 	jal	0 <func_80B60220>
    1ab4:	24052809 	li	a1,10249
    1ab8:	0c000000 	jal	0 <func_80B60220>
    1abc:	02002025 	move	a0,s0
    1ac0:	8e0e0004 	lw	t6,4(s0)
    1ac4:	2401fffe 	li	at,-2
    1ac8:	44803000 	mtc1	zero,$f6
    1acc:	01c17824 	and	t7,t6,at
    1ad0:	3c01c080 	lui	at,0xc080
    1ad4:	44812000 	mtc1	at,$f4
    1ad8:	ae0f0004 	sw	t7,4(s0)
    1adc:	e6060168 	swc1	$f6,360(s0)
    1ae0:	e6040060 	swc1	$f4,96(s0)
    1ae4:	44804000 	mtc1	zero,$f8
    1ae8:	c60a0168 	lwc1	$f10,360(s0)
    1aec:	3c0142a0 	lui	at,0x42a0
    1af0:	460a403c 	c.lt.s	$f8,$f10
    1af4:	00000000 	nop
    1af8:	45030030 	bc1tl	1bbc <func_80B61CA4+0x138>
    1afc:	8fbf001c 	lw	ra,28(sp)
    1b00:	44818000 	mtc1	at,$f16
    1b04:	c6120084 	lwc1	$f18,132(s0)
    1b08:	3c063ecc 	lui	a2,0x3ecc
    1b0c:	34c6cccd 	ori	a2,a2,0xcccd
    1b10:	4612803c 	c.lt.s	$f16,$f18
    1b14:	26040060 	addiu	a0,s0,96
    1b18:	3c05bf80 	lui	a1,0xbf80
    1b1c:	3c073f19 	lui	a3,0x3f19
    1b20:	45010005 	bc1t	1b38 <func_80B61CA4+0xb4>
    1b24:	00000000 	nop
    1b28:	96180088 	lhu	t8,136(s0)
    1b2c:	33190001 	andi	t9,t8,0x1
    1b30:	5320000a 	beqzl	t9,1b5c <func_80B61CA4+0xd8>
    1b34:	c6040648 	lwc1	$f4,1608(s0)
    1b38:	0c000000 	jal	0 <func_80B60220>
    1b3c:	34e7999a 	ori	a3,a3,0x999a
    1b40:	3c063e99 	lui	a2,0x3e99
    1b44:	34c6999a 	ori	a2,a2,0x999a
    1b48:	26040648 	addiu	a0,s0,1608
    1b4c:	24050000 	li	a1,0
    1b50:	0c000000 	jal	0 <func_80B60220>
    1b54:	3c074120 	lui	a3,0x4120
    1b58:	c6040648 	lwc1	$f4,1608(s0)
    1b5c:	3c050000 	lui	a1,0x0
    1b60:	24a50000 	addiu	a1,a1,0
    1b64:	4600218d 	trunc.w.s	$f6,$f4
    1b68:	8fa40024 	lw	a0,36(sp)
    1b6c:	44093000 	mfc1	t1,$f6
    1b70:	00000000 	nop
    1b74:	00095400 	sll	t2,t1,0x10
    1b78:	000a5c03 	sra	t3,t2,0x10
    1b7c:	5560000f 	bnezl	t3,1bbc <func_80B61CA4+0x138>
    1b80:	8fbf001c 	lw	ra,28(sp)
    1b84:	0c000000 	jal	0 <func_80B60220>
    1b88:	24060002 	li	a2,2
    1b8c:	8e0d0008 	lw	t5,8(s0)
    1b90:	8e0c000c 	lw	t4,12(s0)
    1b94:	44804000 	mtc1	zero,$f8
    1b98:	ae0d0024 	sw	t5,36(s0)
    1b9c:	8e0d0010 	lw	t5,16(s0)
    1ba0:	3c0e0000 	lui	t6,0x0
    1ba4:	25ce0000 	addiu	t6,t6,0
    1ba8:	ae0e0190 	sw	t6,400(s0)
    1bac:	ae0c0028 	sw	t4,40(s0)
    1bb0:	e6080648 	swc1	$f8,1608(s0)
    1bb4:	ae0d002c 	sw	t5,44(s0)
    1bb8:	8fbf001c 	lw	ra,28(sp)
    1bbc:	8fb00018 	lw	s0,24(sp)
    1bc0:	27bd0028 	addiu	sp,sp,40
    1bc4:	03e00008 	jr	ra
    1bc8:	00000000 	nop

00001bcc <EnZo_Update>:
    1bcc:	27bdffb8 	addiu	sp,sp,-72
    1bd0:	afbf0024 	sw	ra,36(sp)
    1bd4:	afb00020 	sw	s0,32(sp)
    1bd8:	afa5004c 	sw	a1,76(sp)
    1bdc:	c4840648 	lwc1	$f4,1608(a0)
    1be0:	00808025 	move	s0,a0
    1be4:	4600218d 	trunc.w.s	$f6,$f4
    1be8:	440f3000 	mfc1	t7,$f6
    1bec:	00000000 	nop
    1bf0:	11e00005 	beqz	t7,1c08 <EnZo_Update+0x3c>
    1bf4:	00000000 	nop
    1bf8:	0c000000 	jal	0 <func_80B60220>
    1bfc:	2484014c 	addiu	a0,a0,332
    1c00:	0c000000 	jal	0 <func_80B60220>
    1c04:	02002025 	move	a0,s0
    1c08:	0c000000 	jal	0 <func_80B60220>
    1c0c:	02002025 	move	a0,s0
    1c10:	861901fe 	lh	t9,510(s0)
    1c14:	861801fc 	lh	t8,508(s0)
    1c18:	3c013e80 	lui	at,0x3e80
    1c1c:	44995000 	mtc1	t9,$f10
    1c20:	44819000 	mtc1	at,$f18
    1c24:	44984000 	mtc1	t8,$f8
    1c28:	46805420 	cvt.s.w	$f16,$f10
    1c2c:	44803000 	mtc1	zero,$f6
    1c30:	24080005 	li	t0,5
    1c34:	afa80014 	sw	t0,20(sp)
    1c38:	8fa4004c 	lw	a0,76(sp)
    1c3c:	46804220 	cvt.s.w	$f8,$f8
    1c40:	46128102 	mul.s	$f4,$f16,$f18
    1c44:	02002825 	move	a1,s0
    1c48:	e7a60010 	swc1	$f6,16(sp)
    1c4c:	44064000 	mfc1	a2,$f8
    1c50:	44072000 	mfc1	a3,$f4
    1c54:	0c000000 	jal	0 <func_80B60220>
    1c58:	00000000 	nop
    1c5c:	8e190190 	lw	t9,400(s0)
    1c60:	02002025 	move	a0,s0
    1c64:	8fa5004c 	lw	a1,76(sp)
    1c68:	0320f809 	jalr	t9
    1c6c:	00000000 	nop
    1c70:	02002025 	move	a0,s0
    1c74:	0c000000 	jal	0 <func_80B60220>
    1c78:	8fa5004c 	lw	a1,76(sp)
    1c7c:	8fa9004c 	lw	t1,76(sp)
    1c80:	8d2a009c 	lw	t2,156(t1)
    1c84:	314b0008 	andi	t3,t2,0x8
    1c88:	5160002d 	beqzl	t3,1d40 <EnZo_Update+0x174>
    1c8c:	c6100648 	lwc1	$f16,1608(s0)
    1c90:	8e0e0024 	lw	t6,36(s0)
    1c94:	27ac0034 	addiu	t4,sp,52
    1c98:	ad8e0000 	sw	t6,0(t4)
    1c9c:	8e0d0028 	lw	t5,40(s0)
    1ca0:	ad8d0004 	sw	t5,4(t4)
    1ca4:	8e0e002c 	lw	t6,44(s0)
    1ca8:	0c000000 	jal	0 <func_80B60220>
    1cac:	ad8e0008 	sw	t6,8(t4)
    1cb0:	3c013f00 	lui	at,0x3f00
    1cb4:	44814000 	mtc1	at,$f8
    1cb8:	3c014120 	lui	at,0x4120
    1cbc:	44818000 	mtc1	at,$f16
    1cc0:	46080281 	sub.s	$f10,$f0,$f8
    1cc4:	3c014190 	lui	at,0x4190
    1cc8:	44812000 	mtc1	at,$f4
    1ccc:	c7a80038 	lwc1	$f8,56(sp)
    1cd0:	46105482 	mul.s	$f18,$f10,$f16
    1cd4:	46049180 	add.s	$f6,$f18,$f4
    1cd8:	46064280 	add.s	$f10,$f8,$f6
    1cdc:	0c000000 	jal	0 <func_80B60220>
    1ce0:	e7aa0038 	swc1	$f10,56(sp)
    1ce4:	3c013f00 	lui	at,0x3f00
    1ce8:	44818000 	mtc1	at,$f16
    1cec:	3c0141e0 	lui	at,0x41e0
    1cf0:	44812000 	mtc1	at,$f4
    1cf4:	46100481 	sub.s	$f18,$f0,$f16
    1cf8:	c7a60034 	lwc1	$f6,52(sp)
    1cfc:	46049202 	mul.s	$f8,$f18,$f4
    1d00:	46083280 	add.s	$f10,$f6,$f8
    1d04:	0c000000 	jal	0 <func_80B60220>
    1d08:	e7aa0034 	swc1	$f10,52(sp)
    1d0c:	3c013f00 	lui	at,0x3f00
    1d10:	44818000 	mtc1	at,$f16
    1d14:	3c0141e0 	lui	at,0x41e0
    1d18:	44812000 	mtc1	at,$f4
    1d1c:	46100481 	sub.s	$f18,$f0,$f16
    1d20:	c7a8003c 	lwc1	$f8,60(sp)
    1d24:	02002025 	move	a0,s0
    1d28:	27a50034 	addiu	a1,sp,52
    1d2c:	46049182 	mul.s	$f6,$f18,$f4
    1d30:	46064280 	add.s	$f10,$f8,$f6
    1d34:	0c000000 	jal	0 <func_80B60220>
    1d38:	e7aa003c 	swc1	$f10,60(sp)
    1d3c:	c6100648 	lwc1	$f16,1608(s0)
    1d40:	260601bc 	addiu	a2,s0,444
    1d44:	00c02825 	move	a1,a2
    1d48:	4600848d 	trunc.w.s	$f18,$f16
    1d4c:	02002025 	move	a0,s0
    1d50:	44189000 	mfc1	t8,$f18
    1d54:	00000000 	nop
    1d58:	13000009 	beqz	t8,1d80 <EnZo_Update+0x1b4>
    1d5c:	00000000 	nop
    1d60:	0c000000 	jal	0 <func_80B60220>
    1d64:	afa6002c 	sw	a2,44(sp)
    1d68:	8fa4004c 	lw	a0,76(sp)
    1d6c:	3c010001 	lui	at,0x1
    1d70:	34211e60 	ori	at,at,0x1e60
    1d74:	8fa6002c 	lw	a2,44(sp)
    1d78:	0c000000 	jal	0 <func_80B60220>
    1d7c:	00812821 	addu	a1,a0,at
    1d80:	0c000000 	jal	0 <func_80B60220>
    1d84:	02002025 	move	a0,s0
    1d88:	0c000000 	jal	0 <func_80B60220>
    1d8c:	02002025 	move	a0,s0
    1d90:	0c000000 	jal	0 <func_80B60220>
    1d94:	02002025 	move	a0,s0
    1d98:	8fbf0024 	lw	ra,36(sp)
    1d9c:	8fb00020 	lw	s0,32(sp)
    1da0:	27bd0048 	addiu	sp,sp,72
    1da4:	03e00008 	jr	ra
    1da8:	00000000 	nop

00001dac <func_80B61FCC>:
    1dac:	27bdffc8 	addiu	sp,sp,-56
    1db0:	afb00018 	sw	s0,24(sp)
    1db4:	2401000f 	li	at,15
    1db8:	00a08025 	move	s0,a1
    1dbc:	afbf001c 	sw	ra,28(sp)
    1dc0:	afa40038 	sw	a0,56(sp)
    1dc4:	afa60040 	sw	a2,64(sp)
    1dc8:	14a1002d 	bne	a1,at,1e80 <func_80B61FCC+0xd4>
    1dcc:	afa70044 	sw	a3,68(sp)
    1dd0:	44807000 	mtc1	zero,$f14
    1dd4:	3c0144e1 	lui	at,0x44e1
    1dd8:	44816000 	mtc1	at,$f12
    1ddc:	44067000 	mfc1	a2,$f14
    1de0:	0c000000 	jal	0 <func_80B60220>
    1de4:	24070001 	li	a3,1
    1de8:	8faf004c 	lw	t7,76(sp)
    1dec:	27ae002c 	addiu	t6,sp,44
    1df0:	3c014700 	lui	at,0x4700
    1df4:	89f9019c 	lwl	t9,412(t7)
    1df8:	99f9019f 	lwr	t9,415(t7)
    1dfc:	44814000 	mtc1	at,$f8
    1e00:	3c010000 	lui	at,0x0
    1e04:	add90000 	sw	t9,0(t6)
    1e08:	95f901a0 	lhu	t9,416(t7)
    1e0c:	24050001 	li	a1,1
    1e10:	a5d90004 	sh	t9,4(t6)
    1e14:	87a8002e 	lh	t0,46(sp)
    1e18:	c4300000 	lwc1	$f16,0(at)
    1e1c:	44882000 	mtc1	t0,$f4
    1e20:	00000000 	nop
    1e24:	468021a0 	cvt.s.w	$f6,$f4
    1e28:	46083283 	div.s	$f10,$f6,$f8
    1e2c:	46105302 	mul.s	$f12,$f10,$f16
    1e30:	0c000000 	jal	0 <func_80B60220>
    1e34:	00000000 	nop
    1e38:	87a9002c 	lh	t1,44(sp)
    1e3c:	3c014700 	lui	at,0x4700
    1e40:	44813000 	mtc1	at,$f6
    1e44:	44899000 	mtc1	t1,$f18
    1e48:	3c010000 	lui	at,0x0
    1e4c:	c42a0000 	lwc1	$f10,0(at)
    1e50:	46809120 	cvt.s.w	$f4,$f18
    1e54:	24050001 	li	a1,1
    1e58:	46062203 	div.s	$f8,$f4,$f6
    1e5c:	460a4302 	mul.s	$f12,$f8,$f10
    1e60:	0c000000 	jal	0 <func_80B60220>
    1e64:	00000000 	nop
    1e68:	44807000 	mtc1	zero,$f14
    1e6c:	3c01c4e1 	lui	at,0xc4e1
    1e70:	44816000 	mtc1	at,$f12
    1e74:	44067000 	mfc1	a2,$f14
    1e78:	0c000000 	jal	0 <func_80B60220>
    1e7c:	24070001 	li	a3,1
    1e80:	24010008 	li	at,8
    1e84:	16010021 	bne	s0,at,1f0c <func_80B61FCC+0x160>
    1e88:	8fab004c 	lw	t3,76(sp)
    1e8c:	896d01a2 	lwl	t5,418(t3)
    1e90:	996d01a5 	lwr	t5,421(t3)
    1e94:	27aa002c 	addiu	t2,sp,44
    1e98:	3c014700 	lui	at,0x4700
    1e9c:	ad4d0000 	sw	t5,0(t2)
    1ea0:	956d01a6 	lhu	t5,422(t3)
    1ea4:	44812000 	mtc1	at,$f4
    1ea8:	3c010000 	lui	at,0x0
    1eac:	a54d0004 	sh	t5,4(t2)
    1eb0:	87ae002e 	lh	t6,46(sp)
    1eb4:	c4280000 	lwc1	$f8,0(at)
    1eb8:	24050001 	li	a1,1
    1ebc:	000e7823 	negu	t7,t6
    1ec0:	448f8000 	mtc1	t7,$f16
    1ec4:	00000000 	nop
    1ec8:	468084a0 	cvt.s.w	$f18,$f16
    1ecc:	46049183 	div.s	$f6,$f18,$f4
    1ed0:	46083302 	mul.s	$f12,$f6,$f8
    1ed4:	0c000000 	jal	0 <func_80B60220>
    1ed8:	00000000 	nop
    1edc:	87b8002c 	lh	t8,44(sp)
    1ee0:	3c014700 	lui	at,0x4700
    1ee4:	44819000 	mtc1	at,$f18
    1ee8:	44985000 	mtc1	t8,$f10
    1eec:	3c010000 	lui	at,0x0
    1ef0:	c4260000 	lwc1	$f6,0(at)
    1ef4:	46805420 	cvt.s.w	$f16,$f10
    1ef8:	24050001 	li	a1,1
    1efc:	46128103 	div.s	$f4,$f16,$f18
    1f00:	46062302 	mul.s	$f12,$f4,$f6
    1f04:	0c000000 	jal	0 <func_80B60220>
    1f08:	00000000 	nop
    1f0c:	24010008 	li	at,8
    1f10:	12010005 	beq	s0,at,1f28 <func_80B61FCC+0x17c>
    1f14:	8fb9004c 	lw	t9,76(sp)
    1f18:	24010009 	li	at,9
    1f1c:	12010002 	beq	s0,at,1f28 <func_80B61FCC+0x17c>
    1f20:	2401000c 	li	at,12
    1f24:	16010022 	bne	s0,at,1fb0 <func_80B61FCC+0x204>
    1f28:	00104040 	sll	t0,s0,0x1
    1f2c:	03281821 	addu	v1,t9,t0
    1f30:	84640656 	lh	a0,1622(v1)
    1f34:	0c000000 	jal	0 <func_80B60220>
    1f38:	afa30024 	sw	v1,36(sp)
    1f3c:	8fa20048 	lw	v0,72(sp)
    1f40:	3c014348 	lui	at,0x4348
    1f44:	44818000 	mtc1	at,$f16
    1f48:	84490002 	lh	t1,2(v0)
    1f4c:	8fa30024 	lw	v1,36(sp)
    1f50:	46100482 	mul.s	$f18,$f0,$f16
    1f54:	44894000 	mtc1	t1,$f8
    1f58:	00000000 	nop
    1f5c:	468042a0 	cvt.s.w	$f10,$f8
    1f60:	46125100 	add.s	$f4,$f10,$f18
    1f64:	4600218d 	trunc.w.s	$f6,$f4
    1f68:	440b3000 	mfc1	t3,$f6
    1f6c:	00000000 	nop
    1f70:	a44b0002 	sh	t3,2(v0)
    1f74:	0c000000 	jal	0 <func_80B60220>
    1f78:	8464067e 	lh	a0,1662(v1)
    1f7c:	8fa20048 	lw	v0,72(sp)
    1f80:	3c014348 	lui	at,0x4348
    1f84:	44815000 	mtc1	at,$f10
    1f88:	844c0004 	lh	t4,4(v0)
    1f8c:	460a0482 	mul.s	$f18,$f0,$f10
    1f90:	448c4000 	mtc1	t4,$f8
    1f94:	00000000 	nop
    1f98:	46804420 	cvt.s.w	$f16,$f8
    1f9c:	46128100 	add.s	$f4,$f16,$f18
    1fa0:	4600218d 	trunc.w.s	$f6,$f4
    1fa4:	440e3000 	mfc1	t6,$f6
    1fa8:	00000000 	nop
    1fac:	a44e0004 	sh	t6,4(v0)
    1fb0:	8fbf001c 	lw	ra,28(sp)
    1fb4:	8fb00018 	lw	s0,24(sp)
    1fb8:	27bd0038 	addiu	sp,sp,56
    1fbc:	03e00008 	jr	ra
    1fc0:	00001025 	move	v0,zero

00001fc4 <func_80B621E4>:
    1fc4:	27bdffd8 	addiu	sp,sp,-40
    1fc8:	3c0e0000 	lui	t6,0x0
    1fcc:	afbf0014 	sw	ra,20(sp)
    1fd0:	afa40028 	sw	a0,40(sp)
    1fd4:	afa60030 	sw	a2,48(sp)
    1fd8:	afa70034 	sw	a3,52(sp)
    1fdc:	25ce0000 	addiu	t6,t6,0
    1fe0:	8dd80000 	lw	t8,0(t6)
    1fe4:	27a40018 	addiu	a0,sp,24
    1fe8:	2401000f 	li	at,15
    1fec:	ac980000 	sw	t8,0(a0)
    1ff0:	8dcf0004 	lw	t7,4(t6)
    1ff4:	ac8f0004 	sw	t7,4(a0)
    1ff8:	8dd80008 	lw	t8,8(t6)
    1ffc:	14a10004 	bne	a1,at,2010 <func_80B621E4+0x4c>
    2000:	ac980008 	sw	t8,8(a0)
    2004:	8fa50038 	lw	a1,56(sp)
    2008:	0c000000 	jal	0 <func_80B60220>
    200c:	24a50038 	addiu	a1,a1,56
    2010:	8fbf0014 	lw	ra,20(sp)
    2014:	27bd0028 	addiu	sp,sp,40
    2018:	03e00008 	jr	ra
    201c:	00000000 	nop

00002020 <EnZo_Draw>:
    2020:	27bdffa8 	addiu	sp,sp,-88
    2024:	3c0f0000 	lui	t7,0x0
    2028:	afbf0024 	sw	ra,36(sp)
    202c:	afb10020 	sw	s1,32(sp)
    2030:	afb0001c 	sw	s0,28(sp)
    2034:	25ef0000 	addiu	t7,t7,0
    2038:	8df90000 	lw	t9,0(t7)
    203c:	27ae0048 	addiu	t6,sp,72
    2040:	8df80004 	lw	t8,4(t7)
    2044:	add90000 	sw	t9,0(t6)
    2048:	8df90008 	lw	t9,8(t7)
    204c:	00808025 	move	s0,a0
    2050:	00a08825 	move	s1,a1
    2054:	add80004 	sw	t8,4(t6)
    2058:	0c000000 	jal	0 <func_80B60220>
    205c:	add90008 	sw	t9,8(t6)
    2060:	02002025 	move	a0,s0
    2064:	0c000000 	jal	0 <func_80B60220>
    2068:	02202825 	move	a1,s1
    206c:	02002025 	move	a0,s0
    2070:	0c000000 	jal	0 <func_80B60220>
    2074:	02202825 	move	a1,s1
    2078:	02002025 	move	a0,s0
    207c:	0c000000 	jal	0 <func_80B60220>
    2080:	02202825 	move	a1,s1
    2084:	0c000000 	jal	0 <func_80B60220>
    2088:	00000000 	nop
    208c:	c6040648 	lwc1	$f4,1608(s0)
    2090:	3c060000 	lui	a2,0x0
    2094:	24c60000 	addiu	a2,a2,0
    2098:	4600218d 	trunc.w.s	$f6,$f4
    209c:	27a40034 	addiu	a0,sp,52
    20a0:	440a3000 	mfc1	t2,$f6
    20a4:	00000000 	nop
    20a8:	5140005c 	beqzl	t2,221c <EnZo_Draw+0x1fc>
    20ac:	8fbf0024 	lw	ra,36(sp)
    20b0:	8e250000 	lw	a1,0(s1)
    20b4:	240703f0 	li	a3,1008
    20b8:	0c000000 	jal	0 <func_80B60220>
    20bc:	afa50044 	sw	a1,68(sp)
    20c0:	3c01437f 	lui	at,0x437f
    20c4:	44814000 	mtc1	at,$f8
    20c8:	c60a0648 	lwc1	$f10,1608(s0)
    20cc:	8fa80044 	lw	t0,68(sp)
    20d0:	460a4032 	c.eq.s	$f8,$f10
    20d4:	00000000 	nop
    20d8:	45020027 	bc1fl	2178 <EnZo_Draw+0x158>
    20dc:	8d0302d0 	lw	v1,720(t0)
    20e0:	8d0302c0 	lw	v1,704(t0)
    20e4:	3c0cdb06 	lui	t4,0xdb06
    20e8:	358c0020 	ori	t4,t4,0x20
    20ec:	246b0008 	addiu	t3,v1,8
    20f0:	ad0b02c0 	sw	t3,704(t0)
    20f4:	ac6c0000 	sw	t4,0(v1)
    20f8:	860d0654 	lh	t5,1620(s0)
    20fc:	3c0a0000 	lui	t2,0x0
    2100:	3c0100ff 	lui	at,0xff
    2104:	000d7080 	sll	t6,t5,0x2
    2108:	03ae2021 	addu	a0,sp,t6
    210c:	8c840048 	lw	a0,72(a0)
    2110:	3421ffff 	ori	at,at,0xffff
    2114:	3c060000 	lui	a2,0x0
    2118:	0004c100 	sll	t8,a0,0x4
    211c:	0018cf02 	srl	t9,t8,0x1c
    2120:	00194880 	sll	t1,t9,0x2
    2124:	01495021 	addu	t2,t2,t1
    2128:	8d4a0000 	lw	t2,0(t2)
    212c:	00817824 	and	t7,a0,at
    2130:	3c018000 	lui	at,0x8000
    2134:	01ea5821 	addu	t3,t7,t2
    2138:	01616021 	addu	t4,t3,at
    213c:	ac6c0004 	sw	t4,4(v1)
    2140:	afb00010 	sw	s0,16(sp)
    2144:	c6100648 	lwc1	$f16,1608(s0)
    2148:	3c070000 	lui	a3,0x0
    214c:	24e70000 	addiu	a3,a3,0
    2150:	4600848d 	trunc.w.s	$f18,$f16
    2154:	02202025 	move	a0,s1
    2158:	24c60000 	addiu	a2,a2,0
    215c:	2605014c 	addiu	a1,s0,332
    2160:	440e9000 	mfc1	t6,$f18
    2164:	0c000000 	jal	0 <func_80B60220>
    2168:	afae0014 	sw	t6,20(sp)
    216c:	10000024 	b	2200 <EnZo_Draw+0x1e0>
    2170:	00000000 	nop
    2174:	8d0302d0 	lw	v1,720(t0)
    2178:	3c19db06 	lui	t9,0xdb06
    217c:	37390020 	ori	t9,t9,0x20
    2180:	24780008 	addiu	t8,v1,8
    2184:	ad1802d0 	sw	t8,720(t0)
    2188:	ac790000 	sw	t9,0(v1)
    218c:	86090654 	lh	t1,1620(s0)
    2190:	3c0e0000 	lui	t6,0x0
    2194:	3c0100ff 	lui	at,0xff
    2198:	00097880 	sll	t7,t1,0x2
    219c:	03af2021 	addu	a0,sp,t7
    21a0:	8c840048 	lw	a0,72(a0)
    21a4:	3421ffff 	ori	at,at,0xffff
    21a8:	3c060000 	lui	a2,0x0
    21ac:	00045900 	sll	t3,a0,0x4
    21b0:	000b6702 	srl	t4,t3,0x1c
    21b4:	000c6880 	sll	t5,t4,0x2
    21b8:	01cd7021 	addu	t6,t6,t5
    21bc:	8dce0000 	lw	t6,0(t6)
    21c0:	00815024 	and	t2,a0,at
    21c4:	3c018000 	lui	at,0x8000
    21c8:	014ec021 	addu	t8,t2,t6
    21cc:	0301c821 	addu	t9,t8,at
    21d0:	ac790004 	sw	t9,4(v1)
    21d4:	afb00010 	sw	s0,16(sp)
    21d8:	c6040648 	lwc1	$f4,1608(s0)
    21dc:	3c070000 	lui	a3,0x0
    21e0:	24e70000 	addiu	a3,a3,0
    21e4:	4600218d 	trunc.w.s	$f6,$f4
    21e8:	02202025 	move	a0,s1
    21ec:	24c60000 	addiu	a2,a2,0
    21f0:	2605014c 	addiu	a1,s0,332
    21f4:	440f3000 	mfc1	t7,$f6
    21f8:	0c000000 	jal	0 <func_80B60220>
    21fc:	afaf0014 	sw	t7,20(sp)
    2200:	3c060000 	lui	a2,0x0
    2204:	24c60000 	addiu	a2,a2,0
    2208:	27a40034 	addiu	a0,sp,52
    220c:	8e250000 	lw	a1,0(s1)
    2210:	0c000000 	jal	0 <func_80B60220>
    2214:	24070401 	li	a3,1025
    2218:	8fbf0024 	lw	ra,36(sp)
    221c:	8fb0001c 	lw	s0,28(sp)
    2220:	8fb10020 	lw	s1,32(sp)
    2224:	03e00008 	jr	ra
    2228:	27bd0058 	addiu	sp,sp,88
    222c:	00000000 	nop
