
build/src/overlays/actors/ovl_En_Dodongo/z_en_dodongo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809F8250>:
       0:	03e00008 	jr	ra
       4:	ac850308 	sw	a1,776(a0)

00000008 <func_809F8258>:
       8:	27bdff78 	addiu	sp,sp,-136
       c:	3c0f0000 	lui	t7,0x0
      10:	afbf0044 	sw	ra,68(sp)
      14:	afb00040 	sw	s0,64(sp)
      18:	f7b60038 	sdc1	$f22,56(sp)
      1c:	f7b40030 	sdc1	$f20,48(sp)
      20:	afa5008c 	sw	a1,140(sp)
      24:	25ef0000 	addiu	t7,t7,0
      28:	8df90000 	lw	t9,0(t7)
      2c:	27ae0078 	addiu	t6,sp,120
      30:	8df80004 	lw	t8,4(t7)
      34:	add90000 	sw	t9,0(t6)
      38:	8df90008 	lw	t9,8(t7)
      3c:	3c090000 	lui	t1,0x0
      40:	25290000 	addiu	t1,t1,0
      44:	add80004 	sw	t8,4(t6)
      48:	add90008 	sw	t9,8(t6)
      4c:	8d2b0000 	lw	t3,0(t1)
      50:	27a8006c 	addiu	t0,sp,108
      54:	8d2a0004 	lw	t2,4(t1)
      58:	ad0b0000 	sw	t3,0(t0)
      5c:	8d2b0008 	lw	t3,8(t1)
      60:	ad0a0004 	sw	t2,4(t0)
      64:	27ac0060 	addiu	t4,sp,96
      68:	ad0b0008 	sw	t3,8(t0)
      6c:	8c8e0340 	lw	t6,832(a0)
      70:	3c014680 	lui	at,0x4680
      74:	44816000 	mtc1	at,$f12
      78:	ad8e0000 	sw	t6,0(t4)
      7c:	8c8d0344 	lw	t5,836(a0)
      80:	00808025 	move	s0,a0
      84:	ad8d0004 	sw	t5,4(t4)
      88:	8c8e0348 	lw	t6,840(a0)
      8c:	0c000000 	jal	0 <func_809F8250>
      90:	ad8e0008 	sw	t6,8(t4)
      94:	4600010d 	trunc.w.s	$f4,$f0
      98:	44082000 	mfc1	t0,$f4
      9c:	00000000 	nop
      a0:	a7a8005e 	sh	t0,94(sp)
      a4:	861800b6 	lh	t8,182(s0)
      a8:	03082021 	addu	a0,t8,t0
      ac:	00042400 	sll	a0,a0,0x10
      b0:	0c000000 	jal	0 <func_809F8250>
      b4:	00042403 	sra	a0,a0,0x10
      b8:	860900b6 	lh	t1,182(s0)
      bc:	87aa005e 	lh	t2,94(sp)
      c0:	46000506 	mov.s	$f20,$f0
      c4:	012a2021 	addu	a0,t1,t2
      c8:	00042400 	sll	a0,a0,0x10
      cc:	0c000000 	jal	0 <func_809F8250>
      d0:	00042403 	sra	a0,a0,0x10
      d4:	920203c4 	lbu	v0,964(s0)
      d8:	46000586 	mov.s	$f22,$f0
      dc:	2841001f 	slti	at,v0,31
      e0:	54200007 	bnezl	at,100 <func_809F8258+0xf8>
      e4:	920203c6 	lbu	v0,966(s0)
      e8:	920c03c5 	lbu	t4,965(s0)
      ec:	244bfff0 	addiu	t3,v0,-16
      f0:	a20b03c4 	sb	t3,964(s0)
      f4:	258dfff0 	addiu	t5,t4,-16
      f8:	a20d03c5 	sb	t5,965(s0)
      fc:	920203c6 	lbu	v0,966(s0)
     100:	2841001e 	slti	at,v0,30
     104:	5020000a 	beqzl	at,130 <func_809F8258+0x128>
     108:	3c014060 	lui	at,0x4060
     10c:	920f03c7 	lbu	t7,967(s0)
     110:	921803cb 	lbu	t8,971(s0)
     114:	244e0005 	addiu	t6,v0,5
     118:	25f90008 	addiu	t9,t7,8
     11c:	27080008 	addiu	t0,t8,8
     120:	a20e03c6 	sb	t6,966(s0)
     124:	a21903c7 	sb	t9,967(s0)
     128:	a20803cb 	sb	t0,971(s0)
     12c:	3c014060 	lui	at,0x4060
     130:	44810000 	mtc1	at,$f0
     134:	920203c8 	lbu	v0,968(s0)
     138:	4600b182 	mul.s	$f6,$f22,$f0
     13c:	10400002 	beqz	v0,148 <func_809F8258+0x140>
     140:	2449fff1 	addiu	t1,v0,-15
     144:	a20903c8 	sb	t1,968(s0)
     148:	920203c9 	lbu	v0,969(s0)
     14c:	10400002 	beqz	v0,158 <func_809F8258+0x150>
     150:	244affff 	addiu	t2,v0,-1
     154:	a20a03c9 	sb	t2,969(s0)
     158:	e7a60078 	swc1	$f6,120(sp)
     15c:	920b03c8 	lbu	t3,968(s0)
     160:	4600a182 	mul.s	$f6,$f20,$f0
     164:	448b4000 	mtc1	t3,$f8
     168:	05610005 	bgez	t3,180 <func_809F8258+0x178>
     16c:	468042a0 	cvt.s.w	$f10,$f8
     170:	3c014f80 	lui	at,0x4f80
     174:	44818000 	mtc1	at,$f16
     178:	00000000 	nop
     17c:	46105280 	add.s	$f10,$f10,$f16
     180:	3c010000 	lui	at,0x0
     184:	c4320000 	lwc1	$f18,0(at)
     188:	e7a60080 	swc1	$f6,128(sp)
     18c:	46125102 	mul.s	$f4,$f10,$f18
     190:	0c000000 	jal	0 <func_809F8250>
     194:	e7a4007c 	swc1	$f4,124(sp)
     198:	3c010000 	lui	at,0x0
     19c:	c4280000 	lwc1	$f8,0(at)
     1a0:	3c010000 	lui	at,0x0
     1a4:	c42a0000 	lwc1	$f10,0(at)
     1a8:	46080402 	mul.s	$f16,$f0,$f8
     1ac:	4600b107 	neg.s	$f4,$f22
     1b0:	460a8480 	add.s	$f18,$f16,$f10
     1b4:	46049182 	mul.s	$f6,$f18,$f4
     1b8:	0c000000 	jal	0 <func_809F8250>
     1bc:	e7a6006c 	swc1	$f6,108(sp)
     1c0:	3c010000 	lui	at,0x0
     1c4:	c4280000 	lwc1	$f8,0(at)
     1c8:	3c010000 	lui	at,0x0
     1cc:	c42a0000 	lwc1	$f10,0(at)
     1d0:	46080402 	mul.s	$f16,$f0,$f8
     1d4:	4600a107 	neg.s	$f4,$f20
     1d8:	260203c4 	addiu	v0,s0,964
     1dc:	260303c8 	addiu	v1,s0,968
     1e0:	240c0064 	li	t4,100
     1e4:	240d0019 	li	t5,25
     1e8:	240e0014 	li	t6,20
     1ec:	460a8480 	add.s	$f18,$f16,$f10
     1f0:	afae0020 	sw	t6,32(sp)
     1f4:	afad001c 	sw	t5,28(sp)
     1f8:	afac0018 	sw	t4,24(sp)
     1fc:	46049182 	mul.s	$f6,$f18,$f4
     200:	afa30014 	sw	v1,20(sp)
     204:	afa3004c 	sw	v1,76(sp)
     208:	afa20010 	sw	v0,16(sp)
     20c:	afa20050 	sw	v0,80(sp)
     210:	8fa4008c 	lw	a0,140(sp)
     214:	27a50060 	addiu	a1,sp,96
     218:	e7a60074 	swc1	$f6,116(sp)
     21c:	27a60078 	addiu	a2,sp,120
     220:	0c000000 	jal	0 <func_809F8250>
     224:	27a7006c 	addiu	a3,sp,108
     228:	0c000000 	jal	0 <func_809F8250>
     22c:	00000000 	nop
     230:	3c014600 	lui	at,0x4600
     234:	44814000 	mtc1	at,$f8
     238:	00000000 	nop
     23c:	46080402 	mul.s	$f16,$f0,$f8
     240:	4600828d 	trunc.w.s	$f10,$f16
     244:	44085000 	mfc1	t0,$f10
     248:	00000000 	nop
     24c:	a7a8005e 	sh	t0,94(sp)
     250:	861900b6 	lh	t9,182(s0)
     254:	03282021 	addu	a0,t9,t0
     258:	00042400 	sll	a0,a0,0x10
     25c:	0c000000 	jal	0 <func_809F8250>
     260:	00042403 	sra	a0,a0,0x10
     264:	860900b6 	lh	t1,182(s0)
     268:	87aa005e 	lh	t2,94(sp)
     26c:	46000506 	mov.s	$f20,$f0
     270:	012a2021 	addu	a0,t1,t2
     274:	00042400 	sll	a0,a0,0x10
     278:	0c000000 	jal	0 <func_809F8250>
     27c:	00042403 	sra	a0,a0,0x10
     280:	3c0140c0 	lui	at,0x40c0
     284:	44811000 	mtc1	at,$f2
     288:	c7b20060 	lwc1	$f18,96(sp)
     28c:	3c014060 	lui	at,0x4060
     290:	4602a102 	mul.s	$f4,$f20,$f2
     294:	44816000 	mtc1	at,$f12
     298:	c7a80068 	lwc1	$f8,104(sp)
     29c:	46020402 	mul.s	$f16,$f0,$f2
     2a0:	46000586 	mov.s	$f22,$f0
     2a4:	46049181 	sub.s	$f6,$f18,$f4
     2a8:	4600a487 	neg.s	$f18,$f20
     2ac:	46104280 	add.s	$f10,$f8,$f16
     2b0:	460c9102 	mul.s	$f4,$f18,$f12
     2b4:	e7a60060 	swc1	$f6,96(sp)
     2b8:	e7aa0068 	swc1	$f10,104(sp)
     2bc:	e7a40078 	swc1	$f4,120(sp)
     2c0:	920b03c8 	lbu	t3,968(s0)
     2c4:	460c0102 	mul.s	$f4,$f0,$f12
     2c8:	448b3000 	mtc1	t3,$f6
     2cc:	05610005 	bgez	t3,2e4 <func_809F8258+0x2dc>
     2d0:	46803220 	cvt.s.w	$f8,$f6
     2d4:	3c014f80 	lui	at,0x4f80
     2d8:	44818000 	mtc1	at,$f16
     2dc:	00000000 	nop
     2e0:	46104200 	add.s	$f8,$f8,$f16
     2e4:	3c010000 	lui	at,0x0
     2e8:	c42a0000 	lwc1	$f10,0(at)
     2ec:	e7a40080 	swc1	$f4,128(sp)
     2f0:	460a4482 	mul.s	$f18,$f8,$f10
     2f4:	0c000000 	jal	0 <func_809F8250>
     2f8:	e7b2007c 	swc1	$f18,124(sp)
     2fc:	3c010000 	lui	at,0x0
     300:	c4260000 	lwc1	$f6,0(at)
     304:	3c010000 	lui	at,0x0
     308:	c4280000 	lwc1	$f8,0(at)
     30c:	46060402 	mul.s	$f16,$f0,$f6
     310:	46088280 	add.s	$f10,$f16,$f8
     314:	46145482 	mul.s	$f18,$f10,$f20
     318:	0c000000 	jal	0 <func_809F8250>
     31c:	e7b2006c 	swc1	$f18,108(sp)
     320:	3c010000 	lui	at,0x0
     324:	c4240000 	lwc1	$f4,0(at)
     328:	3c010000 	lui	at,0x0
     32c:	c4300000 	lwc1	$f16,0(at)
     330:	46040182 	mul.s	$f6,$f0,$f4
     334:	4600b287 	neg.s	$f10,$f22
     338:	8fac0050 	lw	t4,80(sp)
     33c:	8fad004c 	lw	t5,76(sp)
     340:	240e0064 	li	t6,100
     344:	240f0019 	li	t7,25
     348:	24180014 	li	t8,20
     34c:	46103200 	add.s	$f8,$f6,$f16
     350:	afb80020 	sw	t8,32(sp)
     354:	afaf001c 	sw	t7,28(sp)
     358:	afae0018 	sw	t6,24(sp)
     35c:	460a4482 	mul.s	$f18,$f8,$f10
     360:	8fa4008c 	lw	a0,140(sp)
     364:	27a50060 	addiu	a1,sp,96
     368:	27a60078 	addiu	a2,sp,120
     36c:	27a7006c 	addiu	a3,sp,108
     370:	afac0010 	sw	t4,16(sp)
     374:	afad0014 	sw	t5,20(sp)
     378:	0c000000 	jal	0 <func_809F8250>
     37c:	e7b20074 	swc1	$f18,116(sp)
     380:	0c000000 	jal	0 <func_809F8250>
     384:	00000000 	nop
     388:	3c014600 	lui	at,0x4600
     38c:	44812000 	mtc1	at,$f4
     390:	00000000 	nop
     394:	46040182 	mul.s	$f6,$f0,$f4
     398:	4600340d 	trunc.w.s	$f16,$f6
     39c:	440a8000 	mfc1	t2,$f16
     3a0:	00000000 	nop
     3a4:	a7aa005e 	sh	t2,94(sp)
     3a8:	860800b6 	lh	t0,182(s0)
     3ac:	010a2021 	addu	a0,t0,t2
     3b0:	00042400 	sll	a0,a0,0x10
     3b4:	0c000000 	jal	0 <func_809F8250>
     3b8:	00042403 	sra	a0,a0,0x10
     3bc:	860b00b6 	lh	t3,182(s0)
     3c0:	87ac005e 	lh	t4,94(sp)
     3c4:	46000506 	mov.s	$f20,$f0
     3c8:	016c2021 	addu	a0,t3,t4
     3cc:	00042400 	sll	a0,a0,0x10
     3d0:	0c000000 	jal	0 <func_809F8250>
     3d4:	00042403 	sra	a0,a0,0x10
     3d8:	3c0140c0 	lui	at,0x40c0
     3dc:	44811000 	mtc1	at,$f2
     3e0:	c6080340 	lwc1	$f8,832(s0)
     3e4:	3c014060 	lui	at,0x4060
     3e8:	4602a282 	mul.s	$f10,$f20,$f2
     3ec:	46000586 	mov.s	$f22,$f0
     3f0:	46020182 	mul.s	$f6,$f0,$f2
     3f4:	460a4480 	add.s	$f18,$f8,$f10
     3f8:	44814000 	mtc1	at,$f8
     3fc:	3c014f80 	lui	at,0x4f80
     400:	e7b20060 	swc1	$f18,96(sp)
     404:	4608a282 	mul.s	$f10,$f20,$f8
     408:	c6040348 	lwc1	$f4,840(s0)
     40c:	46062401 	sub.s	$f16,$f4,$f6
     410:	e7aa0078 	swc1	$f10,120(sp)
     414:	e7b00068 	swc1	$f16,104(sp)
     418:	920d03c8 	lbu	t5,968(s0)
     41c:	448d9000 	mtc1	t5,$f18
     420:	05a10004 	bgez	t5,434 <func_809F8258+0x42c>
     424:	46809120 	cvt.s.w	$f4,$f18
     428:	44813000 	mtc1	at,$f6
     42c:	00000000 	nop
     430:	46062100 	add.s	$f4,$f4,$f6
     434:	3c010000 	lui	at,0x0
     438:	c4300000 	lwc1	$f16,0(at)
     43c:	3c014060 	lui	at,0x4060
     440:	44819000 	mtc1	at,$f18
     444:	46102202 	mul.s	$f8,$f4,$f16
     448:	46000287 	neg.s	$f10,$f0
     44c:	46125182 	mul.s	$f6,$f10,$f18
     450:	e7a8007c 	swc1	$f8,124(sp)
     454:	0c000000 	jal	0 <func_809F8250>
     458:	e7a60080 	swc1	$f6,128(sp)
     45c:	3c010000 	lui	at,0x0
     460:	c4240000 	lwc1	$f4,0(at)
     464:	3c010000 	lui	at,0x0
     468:	c4280000 	lwc1	$f8,0(at)
     46c:	46040402 	mul.s	$f16,$f0,$f4
     470:	4600a487 	neg.s	$f18,$f20
     474:	46088280 	add.s	$f10,$f16,$f8
     478:	46125182 	mul.s	$f6,$f10,$f18
     47c:	0c000000 	jal	0 <func_809F8250>
     480:	e7a6006c 	swc1	$f6,108(sp)
     484:	3c010000 	lui	at,0x0
     488:	c4240000 	lwc1	$f4,0(at)
     48c:	3c010000 	lui	at,0x0
     490:	c4280000 	lwc1	$f8,0(at)
     494:	46040402 	mul.s	$f16,$f0,$f4
     498:	8fae0050 	lw	t6,80(sp)
     49c:	8faf004c 	lw	t7,76(sp)
     4a0:	24180064 	li	t8,100
     4a4:	24190019 	li	t9,25
     4a8:	24090014 	li	t1,20
     4ac:	afa90020 	sw	t1,32(sp)
     4b0:	46088280 	add.s	$f10,$f16,$f8
     4b4:	afb9001c 	sw	t9,28(sp)
     4b8:	afb80018 	sw	t8,24(sp)
     4bc:	8fa4008c 	lw	a0,140(sp)
     4c0:	46165482 	mul.s	$f18,$f10,$f22
     4c4:	27a50060 	addiu	a1,sp,96
     4c8:	27a60078 	addiu	a2,sp,120
     4cc:	27a7006c 	addiu	a3,sp,108
     4d0:	afae0010 	sw	t6,16(sp)
     4d4:	afaf0014 	sw	t7,20(sp)
     4d8:	0c000000 	jal	0 <func_809F8250>
     4dc:	e7b20074 	swc1	$f18,116(sp)
     4e0:	8fbf0044 	lw	ra,68(sp)
     4e4:	d7b40030 	ldc1	$f20,48(sp)
     4e8:	d7b60038 	ldc1	$f22,56(sp)
     4ec:	8fb00040 	lw	s0,64(sp)
     4f0:	03e00008 	jr	ra
     4f4:	27bd0088 	addiu	sp,sp,136

000004f8 <EnDodongo_Init>:
     4f8:	27bdfe08 	addiu	sp,sp,-504
     4fc:	afb10028 	sw	s1,40(sp)
     500:	00a08825 	move	s1,a1
     504:	afbf002c 	sw	ra,44(sp)
     508:	afb00024 	sw	s0,36(sp)
     50c:	240e0003 	li	t6,3
     510:	3c050000 	lui	a1,0x0
     514:	00808025 	move	s0,a0
     518:	a08e001f 	sb	t6,31(a0)
     51c:	0c000000 	jal	0 <func_809F8250>
     520:	24a50000 	addiu	a1,a1,0
     524:	3c013f80 	lui	at,0x3f80
     528:	44810000 	mtc1	at,$f0
     52c:	240200ff 	li	v0,255
     530:	241900c8 	li	t9,200
     534:	2409000a 	li	t1,10
     538:	3c060000 	lui	a2,0x0
     53c:	a20203c8 	sb	v0,968(s0)
     540:	a20203c5 	sb	v0,965(s0)
     544:	a20203c4 	sb	v0,964(s0)
     548:	a21903cb 	sb	t9,971(s0)
     54c:	a21903c7 	sb	t9,967(s0)
     550:	a20903c9 	sb	t1,969(s0)
     554:	24c60000 	addiu	a2,a2,0
     558:	260400b4 	addiu	a0,s0,180
     55c:	24050000 	li	a1,0
     560:	3c074240 	lui	a3,0x4240
     564:	e6000354 	swc1	$f0,852(s0)
     568:	e6000350 	swc1	$f0,848(s0)
     56c:	0c000000 	jal	0 <func_809F8250>
     570:	e600034c 	swc1	$f0,844(s0)
     574:	3c053c99 	lui	a1,0x3c99
     578:	34a5999a 	ori	a1,a1,0x999a
     57c:	0c000000 	jal	0 <func_809F8250>
     580:	02002025 	move	a0,s0
     584:	3c060601 	lui	a2,0x601
     588:	3c070600 	lui	a3,0x600
     58c:	260a0190 	addiu	t2,s0,400
     590:	260b024a 	addiu	t3,s0,586
     594:	240c001f 	li	t4,31
     598:	afac0018 	sw	t4,24(sp)
     59c:	afab0014 	sw	t3,20(sp)
     5a0:	afaa0010 	sw	t2,16(sp)
     5a4:	24e74c20 	addiu	a3,a3,19488
     5a8:	24c68318 	addiu	a2,a2,-31976
     5ac:	02202025 	move	a0,s1
     5b0:	0c000000 	jal	0 <func_809F8250>
     5b4:	2605014c 	addiu	a1,s0,332
     5b8:	3c0f0000 	lui	t7,0x0
     5bc:	240d0004 	li	t5,4
     5c0:	240e00fe 	li	t6,254
     5c4:	25ef0000 	addiu	t7,t7,0
     5c8:	a20d00af 	sb	t5,175(s0)
     5cc:	a20e00ae 	sb	t6,174(s0)
     5d0:	ae0f0098 	sw	t7,152(s0)
     5d4:	260503d4 	addiu	a1,s0,980
     5d8:	afa50034 	sw	a1,52(sp)
     5dc:	0c000000 	jal	0 <func_809F8250>
     5e0:	02202025 	move	a0,s1
     5e4:	26050454 	addiu	a1,s0,1108
     5e8:	afa50038 	sw	a1,56(sp)
     5ec:	0c000000 	jal	0 <func_809F8250>
     5f0:	02202025 	move	a0,s1
     5f4:	26050588 	addiu	a1,s0,1416
     5f8:	afa5003c 	sw	a1,60(sp)
     5fc:	0c000000 	jal	0 <func_809F8250>
     600:	02202025 	move	a0,s1
     604:	3c070000 	lui	a3,0x0
     608:	24e70000 	addiu	a3,a3,0
     60c:	02202025 	move	a0,s1
     610:	8fa50034 	lw	a1,52(sp)
     614:	0c000000 	jal	0 <func_809F8250>
     618:	02003025 	move	a2,s0
     61c:	3c070000 	lui	a3,0x0
     620:	26180474 	addiu	t8,s0,1140
     624:	afb80010 	sw	t8,16(sp)
     628:	24e70000 	addiu	a3,a3,0
     62c:	02202025 	move	a0,s1
     630:	8fa50038 	lw	a1,56(sp)
     634:	0c000000 	jal	0 <func_809F8250>
     638:	02003025 	move	a2,s0
     63c:	3c070000 	lui	a3,0x0
     640:	261905a8 	addiu	t9,s0,1448
     644:	afb90010 	sw	t9,16(sp)
     648:	24e70000 	addiu	a3,a3,0
     64c:	02202025 	move	a0,s1
     650:	8fa5003c 	lw	a1,60(sp)
     654:	0c000000 	jal	0 <func_809F8250>
     658:	02003025 	move	a2,s0
     65c:	240200ff 	li	v0,255
     660:	24090040 	li	t1,64
     664:	240a0008 	li	t2,8
     668:	240b0002 	li	t3,2
     66c:	27ac0054 	addiu	t4,sp,84
     670:	a3a201e5 	sb	v0,485(sp)
     674:	a3a201e4 	sb	v0,484(sp)
     678:	a3a201e2 	sb	v0,482(sp)
     67c:	a3a201e1 	sb	v0,481(sp)
     680:	a3a201e0 	sb	v0,480(sp)
     684:	a3a201de 	sb	v0,478(sp)
     688:	a3a201dd 	sb	v0,477(sp)
     68c:	a3a201dc 	sb	v0,476(sp)
     690:	a3a201db 	sb	v0,475(sp)
     694:	a3a201da 	sb	v0,474(sp)
     698:	a3a201d9 	sb	v0,473(sp)
     69c:	a3a201d8 	sb	v0,472(sp)
     6a0:	a3a001e3 	sb	zero,483(sp)
     6a4:	a3a901df 	sb	t1,479(sp)
     6a8:	afaa01e8 	sw	t2,488(sp)
     6ac:	afa001ec 	sw	zero,492(sp)
     6b0:	afab01f0 	sw	t3,496(sp)
     6b4:	afac0014 	sw	t4,20(sp)
     6b8:	a3a201e6 	sb	v0,486(sp)
     6bc:	02202025 	move	a0,s1
     6c0:	260503d0 	addiu	a1,s0,976
     6c4:	24060001 	li	a2,1
     6c8:	00003825 	move	a3,zero
     6cc:	afa00010 	sw	zero,16(sp)
     6d0:	0c000000 	jal	0 <func_809F8250>
     6d4:	a3a001e7 	sb	zero,487(sp)
     6d8:	3c01428c 	lui	at,0x428c
     6dc:	44812000 	mtc1	at,$f4
     6e0:	240d001d 	li	t5,29
     6e4:	afad0014 	sw	t5,20(sp)
     6e8:	02202025 	move	a0,s1
     6ec:	02002825 	move	a1,s0
     6f0:	3c064296 	lui	a2,0x4296
     6f4:	3c074270 	lui	a3,0x4270
     6f8:	0c000000 	jal	0 <func_809F8250>
     6fc:	e7a40010 	swc1	$f4,16(sp)
     700:	0c000000 	jal	0 <func_809F8250>
     704:	02002025 	move	a0,s0
     708:	8fbf002c 	lw	ra,44(sp)
     70c:	8fb00024 	lw	s0,36(sp)
     710:	8fb10028 	lw	s1,40(sp)
     714:	03e00008 	jr	ra
     718:	27bd01f8 	addiu	sp,sp,504

0000071c <EnDodongo_Destroy>:
     71c:	27bdffe8 	addiu	sp,sp,-24
     720:	afa40018 	sw	a0,24(sp)
     724:	8fae0018 	lw	t6,24(sp)
     728:	afbf0014 	sw	ra,20(sp)
     72c:	afa5001c 	sw	a1,28(sp)
     730:	00a02025 	move	a0,a1
     734:	0c000000 	jal	0 <func_809F8250>
     738:	8dc503d0 	lw	a1,976(t6)
     73c:	8fa50018 	lw	a1,24(sp)
     740:	8fa4001c 	lw	a0,28(sp)
     744:	0c000000 	jal	0 <func_809F8250>
     748:	24a50454 	addiu	a1,a1,1108
     74c:	8fa50018 	lw	a1,24(sp)
     750:	8fa4001c 	lw	a0,28(sp)
     754:	0c000000 	jal	0 <func_809F8250>
     758:	24a50588 	addiu	a1,a1,1416
     75c:	8fa50018 	lw	a1,24(sp)
     760:	8fa4001c 	lw	a0,28(sp)
     764:	0c000000 	jal	0 <func_809F8250>
     768:	24a503d4 	addiu	a1,a1,980
     76c:	8fbf0014 	lw	ra,20(sp)
     770:	27bd0018 	addiu	sp,sp,24
     774:	03e00008 	jr	ra
     778:	00000000 	nop

0000077c <func_809F89CC>:
     77c:	27bdffe8 	addiu	sp,sp,-24
     780:	afbf0014 	sw	ra,20(sp)
     784:	00803825 	move	a3,a0
     788:	3c050600 	lui	a1,0x600
     78c:	24a54c20 	addiu	a1,a1,19488
     790:	afa70018 	sw	a3,24(sp)
     794:	2484014c 	addiu	a0,a0,332
     798:	0c000000 	jal	0 <func_809F8250>
     79c:	3c06c080 	lui	a2,0xc080
     7a0:	8fa70018 	lw	a3,24(sp)
     7a4:	44802000 	mtc1	zero,$f4
     7a8:	2404001e 	li	a0,30
     7ac:	24050032 	li	a1,50
     7b0:	0c000000 	jal	0 <func_809F8250>
     7b4:	e4e40068 	swc1	$f4,104(a3)
     7b8:	8fa40018 	lw	a0,24(sp)
     7bc:	240e0004 	li	t6,4
     7c0:	3c050000 	lui	a1,0x0
     7c4:	24a50000 	addiu	a1,a1,0
     7c8:	a482030c 	sh	v0,780(a0)
     7cc:	0c000000 	jal	0 <func_809F8250>
     7d0:	ac8e0304 	sw	t6,772(a0)
     7d4:	8fbf0014 	lw	ra,20(sp)
     7d8:	27bd0018 	addiu	sp,sp,24
     7dc:	03e00008 	jr	ra
     7e0:	00000000 	nop

000007e4 <func_809F8A34>:
     7e4:	27bdffd0 	addiu	sp,sp,-48
     7e8:	afb00028 	sw	s0,40(sp)
     7ec:	00808025 	move	s0,a0
     7f0:	afbf002c 	sw	ra,44(sp)
     7f4:	3c040601 	lui	a0,0x601
     7f8:	0c000000 	jal	0 <func_809F8250>
     7fc:	24848b1c 	addiu	a0,a0,-29924
     800:	44822000 	mtc1	v0,$f4
     804:	44800000 	mtc1	zero,$f0
     808:	3c01c080 	lui	at,0xc080
     80c:	468021a0 	cvt.s.w	$f6,$f4
     810:	44814000 	mtc1	at,$f8
     814:	3c050601 	lui	a1,0x601
     818:	44060000 	mfc1	a2,$f0
     81c:	44070000 	mfc1	a3,$f0
     820:	24a58b1c 	addiu	a1,a1,-29924
     824:	e7a60010 	swc1	$f6,16(sp)
     828:	2604014c 	addiu	a0,s0,332
     82c:	afa00014 	sw	zero,20(sp)
     830:	0c000000 	jal	0 <func_809F8250>
     834:	e7a80018 	swc1	$f8,24(sp)
     838:	3c013fc0 	lui	at,0x3fc0
     83c:	44815000 	mtc1	at,$f10
     840:	24040032 	li	a0,50
     844:	24050046 	li	a1,70
     848:	0c000000 	jal	0 <func_809F8250>
     84c:	e60a0068 	swc1	$f10,104(s0)
     850:	240e0001 	li	t6,1
     854:	240f0008 	li	t7,8
     858:	3c050000 	lui	a1,0x0
     85c:	a602030c 	sh	v0,780(s0)
     860:	a60e0316 	sh	t6,790(s0)
     864:	ae0f0304 	sw	t7,772(s0)
     868:	24a50000 	addiu	a1,a1,0
     86c:	0c000000 	jal	0 <func_809F8250>
     870:	02002025 	move	a0,s0
     874:	8fbf002c 	lw	ra,44(sp)
     878:	8fb00028 	lw	s0,40(sp)
     87c:	27bd0030 	addiu	sp,sp,48
     880:	03e00008 	jr	ra
     884:	00000000 	nop

00000888 <func_809F8AD8>:
     888:	27bdffe8 	addiu	sp,sp,-24
     88c:	afbf0014 	sw	ra,20(sp)
     890:	00803825 	move	a3,a0
     894:	3c050600 	lui	a1,0x600
     898:	24a528f0 	addiu	a1,a1,10480
     89c:	afa70018 	sw	a3,24(sp)
     8a0:	2484014c 	addiu	a0,a0,332
     8a4:	0c000000 	jal	0 <func_809F8250>
     8a8:	3c06c080 	lui	a2,0xc080
     8ac:	8fa40018 	lw	a0,24(sp)
     8b0:	44802000 	mtc1	zero,$f4
     8b4:	240e0003 	li	t6,3
     8b8:	3c050000 	lui	a1,0x0
     8bc:	24a50000 	addiu	a1,a1,0
     8c0:	ac8e0304 	sw	t6,772(a0)
     8c4:	0c000000 	jal	0 <func_809F8250>
     8c8:	e4840068 	swc1	$f4,104(a0)
     8cc:	8fbf0014 	lw	ra,20(sp)
     8d0:	27bd0018 	addiu	sp,sp,24
     8d4:	03e00008 	jr	ra
     8d8:	00000000 	nop

000008dc <func_809F8B2C>:
     8dc:	27bdffe8 	addiu	sp,sp,-24
     8e0:	afbf0014 	sw	ra,20(sp)
     8e4:	00803025 	move	a2,a0
     8e8:	3c050600 	lui	a1,0x600
     8ec:	24a53088 	addiu	a1,a1,12424
     8f0:	afa60018 	sw	a2,24(sp)
     8f4:	0c000000 	jal	0 <func_809F8250>
     8f8:	2484014c 	addiu	a0,a0,332
     8fc:	8fa40018 	lw	a0,24(sp)
     900:	44802000 	mtc1	zero,$f4
     904:	240e0005 	li	t6,5
     908:	3c050000 	lui	a1,0x0
     90c:	24a50000 	addiu	a1,a1,0
     910:	ac8e0304 	sw	t6,772(a0)
     914:	0c000000 	jal	0 <func_809F8250>
     918:	e4840068 	swc1	$f4,104(a0)
     91c:	8fbf0014 	lw	ra,20(sp)
     920:	27bd0018 	addiu	sp,sp,24
     924:	03e00008 	jr	ra
     928:	00000000 	nop

0000092c <func_809F8B7C>:
     92c:	27bdffd0 	addiu	sp,sp,-48
     930:	3c01c080 	lui	at,0xc080
     934:	44813000 	mtc1	at,$f6
     938:	44802000 	mtc1	zero,$f4
     93c:	afb00028 	sw	s0,40(sp)
     940:	00808025 	move	s0,a0
     944:	afbf002c 	sw	ra,44(sp)
     948:	3c050600 	lui	a1,0x600
     94c:	240e0002 	li	t6,2
     950:	afae0014 	sw	t6,20(sp)
     954:	24a528f0 	addiu	a1,a1,10480
     958:	2484014c 	addiu	a0,a0,332
     95c:	3c06bf80 	lui	a2,0xbf80
     960:	3c07420c 	lui	a3,0x420c
     964:	e7a60018 	swc1	$f6,24(sp)
     968:	0c000000 	jal	0 <func_809F8250>
     96c:	e7a40010 	swc1	$f4,16(sp)
     970:	44804000 	mtc1	zero,$f8
     974:	240f0001 	li	t7,1
     978:	24180019 	li	t8,25
     97c:	3c050000 	lui	a1,0x0
     980:	ae0f0304 	sw	t7,772(s0)
     984:	a618030c 	sh	t8,780(s0)
     988:	24a50000 	addiu	a1,a1,0
     98c:	02002025 	move	a0,s0
     990:	0c000000 	jal	0 <func_809F8250>
     994:	e6080068 	swc1	$f8,104(s0)
     998:	8fbf002c 	lw	ra,44(sp)
     99c:	8fb00028 	lw	s0,40(sp)
     9a0:	27bd0030 	addiu	sp,sp,48
     9a4:	03e00008 	jr	ra
     9a8:	00000000 	nop

000009ac <func_809F8BFC>:
     9ac:	44800000 	mtc1	zero,$f0
     9b0:	27bdffd0 	addiu	sp,sp,-48
     9b4:	3c01c080 	lui	at,0xc080
     9b8:	44812000 	mtc1	at,$f4
     9bc:	afb00028 	sw	s0,40(sp)
     9c0:	00808025 	move	s0,a0
     9c4:	afbf002c 	sw	ra,44(sp)
     9c8:	3c050600 	lui	a1,0x600
     9cc:	240e0002 	li	t6,2
     9d0:	44060000 	mfc1	a2,$f0
     9d4:	afae0014 	sw	t6,20(sp)
     9d8:	24a528f0 	addiu	a1,a1,10480
     9dc:	2484014c 	addiu	a0,a0,332
     9e0:	3c0741c8 	lui	a3,0x41c8
     9e4:	e7a00010 	swc1	$f0,16(sp)
     9e8:	0c000000 	jal	0 <func_809F8250>
     9ec:	e7a40018 	swc1	$f4,24(sp)
     9f0:	921803cc 	lbu	t8,972(s0)
     9f4:	44803000 	mtc1	zero,$f6
     9f8:	240f0007 	li	t7,7
     9fc:	2401000f 	li	at,15
     a00:	ae0f0304 	sw	t7,772(s0)
     a04:	17010003 	bne	t8,at,a14 <func_809F8BFC+0x68>
     a08:	e6060068 	swc1	$f6,104(s0)
     a0c:	24190024 	li	t9,36
     a10:	a6190312 	sh	t9,786(s0)
     a14:	02002025 	move	a0,s0
     a18:	0c000000 	jal	0 <func_809F8250>
     a1c:	2405389e 	li	a1,14494
     a20:	3c050000 	lui	a1,0x0
     a24:	24a50000 	addiu	a1,a1,0
     a28:	0c000000 	jal	0 <func_809F8250>
     a2c:	02002025 	move	a0,s0
     a30:	8fbf002c 	lw	ra,44(sp)
     a34:	8fb00028 	lw	s0,40(sp)
     a38:	27bd0030 	addiu	sp,sp,48
     a3c:	03e00008 	jr	ra
     a40:	00000000 	nop

00000a44 <func_809F8C94>:
     a44:	27bdffe0 	addiu	sp,sp,-32
     a48:	00803025 	move	a2,a0
     a4c:	afbf0014 	sw	ra,20(sp)
     a50:	2484014c 	addiu	a0,a0,332
     a54:	afa50024 	sw	a1,36(sp)
     a58:	afa40018 	sw	a0,24(sp)
     a5c:	0c000000 	jal	0 <func_809F8250>
     a60:	afa60020 	sw	a2,32(sp)
     a64:	8fa60020 	lw	a2,32(sp)
     a68:	8fa40018 	lw	a0,24(sp)
     a6c:	24050000 	li	a1,0
     a70:	84c3030c 	lh	v1,780(a2)
     a74:	14600003 	bnez	v1,a84 <func_809F8C94+0x40>
     a78:	246effff 	addiu	t6,v1,-1
     a7c:	10000003 	b	a8c <func_809F8C94+0x48>
     a80:	00001025 	move	v0,zero
     a84:	a4ce030c 	sh	t6,780(a2)
     a88:	84c2030c 	lh	v0,780(a2)
     a8c:	54400008 	bnezl	v0,ab0 <func_809F8C94+0x6c>
     a90:	8fbf0014 	lw	ra,20(sp)
     a94:	0c000000 	jal	0 <func_809F8250>
     a98:	afa60020 	sw	a2,32(sp)
     a9c:	10400003 	beqz	v0,aac <func_809F8C94+0x68>
     aa0:	8fa60020 	lw	a2,32(sp)
     aa4:	0c000000 	jal	0 <func_809F8250>
     aa8:	00c02025 	move	a0,a2
     aac:	8fbf0014 	lw	ra,20(sp)
     ab0:	27bd0020 	addiu	sp,sp,32
     ab4:	03e00008 	jr	ra
     ab8:	00000000 	nop

00000abc <func_809F8D0C>:
     abc:	27bdffe8 	addiu	sp,sp,-24
     ac0:	afbf0014 	sw	ra,20(sp)
     ac4:	afa40018 	sw	a0,24(sp)
     ac8:	afa5001c 	sw	a1,28(sp)
     acc:	0c000000 	jal	0 <func_809F8250>
     ad0:	2484014c 	addiu	a0,a0,332
     ad4:	50400009 	beqzl	v0,afc <func_809F8D0C+0x40>
     ad8:	8fbf0014 	lw	ra,20(sp)
     adc:	0c000000 	jal	0 <func_809F8250>
     ae0:	8fa40018 	lw	a0,24(sp)
     ae4:	2404000a 	li	a0,10
     ae8:	0c000000 	jal	0 <func_809F8250>
     aec:	24050014 	li	a1,20
     af0:	8fae0018 	lw	t6,24(sp)
     af4:	a5c2030c 	sh	v0,780(t6)
     af8:	8fbf0014 	lw	ra,20(sp)
     afc:	27bd0018 	addiu	sp,sp,24
     b00:	03e00008 	jr	ra
     b04:	00000000 	nop

00000b08 <func_809F8D58>:
     b08:	27bdffa8 	addiu	sp,sp,-88
     b0c:	3c0f0000 	lui	t7,0x0
     b10:	afbf0024 	sw	ra,36(sp)
     b14:	afb00020 	sw	s0,32(sp)
     b18:	afa5005c 	sw	a1,92(sp)
     b1c:	25ef0000 	addiu	t7,t7,0
     b20:	8df90000 	lw	t9,0(t7)
     b24:	27ae0048 	addiu	t6,sp,72
     b28:	8df80004 	lw	t8,4(t7)
     b2c:	add90000 	sw	t9,0(t6)
     b30:	8df90008 	lw	t9,8(t7)
     b34:	3c090000 	lui	t1,0x0
     b38:	25290000 	addiu	t1,t1,0
     b3c:	add80004 	sw	t8,4(t6)
     b40:	add90008 	sw	t9,8(t6)
     b44:	8d2b0000 	lw	t3,0(t1)
     b48:	27a8003c 	addiu	t0,sp,60
     b4c:	8d2a0004 	lw	t2,4(t1)
     b50:	ad0b0000 	sw	t3,0(t0)
     b54:	8d2b0008 	lw	t3,8(t1)
     b58:	ad0a0004 	sw	t2,4(t0)
     b5c:	24010018 	li	at,24
     b60:	ad0b0008 	sw	t3,8(t0)
     b64:	c4800164 	lwc1	$f0,356(a0)
     b68:	00808025 	move	s0,a0
     b6c:	4600010d 	trunc.w.s	$f4,$f0
     b70:	440d2000 	mfc1	t5,$f4
     b74:	00000000 	nop
     b78:	55a10005 	bnel	t5,at,b90 <func_809F8D58+0x88>
     b7c:	3c0141e8 	lui	at,0x41e8
     b80:	0c000000 	jal	0 <func_809F8250>
     b84:	24053801 	li	a1,14337
     b88:	c6000164 	lwc1	$f0,356(s0)
     b8c:	3c0141e8 	lui	at,0x41e8
     b90:	44813000 	mtc1	at,$f6
     b94:	3c01422c 	lui	at,0x422c
     b98:	4600303e 	c.le.s	$f6,$f0
     b9c:	00000000 	nop
     ba0:	45020035 	bc1fl	c78 <func_809F8D58+0x170>
     ba4:	3c014000 	lui	at,0x4000
     ba8:	44814000 	mtc1	at,$f8
     bac:	02002025 	move	a0,s0
     bb0:	4608003e 	c.le.s	$f0,$f8
     bb4:	00000000 	nop
     bb8:	4502002f 	bc1fl	c78 <func_809F8D58+0x170>
     bbc:	3c014000 	lui	at,0x4000
     bc0:	0c000000 	jal	0 <func_809F8250>
     bc4:	24053002 	li	a1,12290
     bc8:	3c0141e8 	lui	at,0x41e8
     bcc:	44818000 	mtc1	at,$f16
     bd0:	c60a0164 	lwc1	$f10,356(s0)
     bd4:	27a60030 	addiu	a2,sp,48
     bd8:	3c01420c 	lui	at,0x420c
     bdc:	46105481 	sub.s	$f18,$f10,$f16
     be0:	44814000 	mtc1	at,$f8
     be4:	3c0541f0 	lui	a1,0x41f0
     be8:	4600910d 	trunc.w.s	$f4,$f18
     bec:	440f2000 	mfc1	t7,$f4
     bf0:	00000000 	nop
     bf4:	a7af002c 	sh	t7,44(sp)
     bf8:	8e190024 	lw	t9,36(s0)
     bfc:	acd90000 	sw	t9,0(a2)
     c00:	8e180028 	lw	t8,40(s0)
     c04:	acd80004 	sw	t8,4(a2)
     c08:	8e19002c 	lw	t9,44(s0)
     c0c:	acd90008 	sw	t9,8(a2)
     c10:	c7a60034 	lwc1	$f6,52(sp)
     c14:	46083280 	add.s	$f10,$f6,$f8
     c18:	e7aa0034 	swc1	$f10,52(sp)
     c1c:	0c000000 	jal	0 <func_809F8250>
     c20:	86040032 	lh	a0,50(s0)
     c24:	86040032 	lh	a0,50(s0)
     c28:	3c054020 	lui	a1,0x4020
     c2c:	0c000000 	jal	0 <func_809F8250>
     c30:	27a6003c 	addiu	a2,sp,60
     c34:	87a2002c 	lh	v0,44(sp)
     c38:	240900ff 	li	t1,255
     c3c:	8fa4005c 	lw	a0,92(sp)
     c40:	00024080 	sll	t0,v0,0x2
     c44:	01024021 	addu	t0,t0,v0
     c48:	00084040 	sll	t0,t0,0x1
     c4c:	01285023 	subu	t2,t1,t0
     c50:	244b0003 	addiu	t3,v0,3
     c54:	afab0014 	sw	t3,20(sp)
     c58:	afaa0010 	sw	t2,16(sp)
     c5c:	27a50030 	addiu	a1,sp,48
     c60:	27a60048 	addiu	a2,sp,72
     c64:	0c000000 	jal	0 <func_809F8250>
     c68:	27a7003c 	addiu	a3,sp,60
     c6c:	10000010 	b	cb0 <func_809F8D58+0x1a8>
     c70:	00000000 	nop
     c74:	3c014000 	lui	at,0x4000
     c78:	44818000 	mtc1	at,$f16
     c7c:	3c0141a0 	lui	at,0x41a0
     c80:	4600803e 	c.le.s	$f16,$f0
     c84:	00000000 	nop
     c88:	45000009 	bc1f	cb0 <func_809F8D58+0x1a8>
     c8c:	00000000 	nop
     c90:	44819000 	mtc1	at,$f18
     c94:	02002025 	move	a0,s0
     c98:	4612003e 	c.le.s	$f0,$f18
     c9c:	00000000 	nop
     ca0:	45000003 	bc1f	cb0 <func_809F8D58+0x1a8>
     ca4:	00000000 	nop
     ca8:	0c000000 	jal	0 <func_809F8250>
     cac:	24053058 	li	a1,12376
     cb0:	0c000000 	jal	0 <func_809F8250>
     cb4:	2604014c 	addiu	a0,s0,332
     cb8:	50400004 	beqzl	v0,ccc <func_809F8D58+0x1c4>
     cbc:	8fbf0024 	lw	ra,36(sp)
     cc0:	0c000000 	jal	0 <func_809F8250>
     cc4:	02002025 	move	a0,s0
     cc8:	8fbf0024 	lw	ra,36(sp)
     ccc:	8fb00020 	lw	s0,32(sp)
     cd0:	27bd0058 	addiu	sp,sp,88
     cd4:	03e00008 	jr	ra
     cd8:	00000000 	nop

00000cdc <func_809F8F2C>:
     cdc:	27bdff58 	addiu	sp,sp,-168
     ce0:	3c0f0000 	lui	t7,0x0
     ce4:	afbf004c 	sw	ra,76(sp)
     ce8:	afb30048 	sw	s3,72(sp)
     cec:	afb20044 	sw	s2,68(sp)
     cf0:	afb10040 	sw	s1,64(sp)
     cf4:	afb0003c 	sw	s0,60(sp)
     cf8:	f7b60030 	sdc1	$f22,48(sp)
     cfc:	f7b40028 	sdc1	$f20,40(sp)
     d00:	25ef0000 	addiu	t7,t7,0
     d04:	8df90000 	lw	t9,0(t7)
     d08:	27ae009c 	addiu	t6,sp,156
     d0c:	8df80004 	lw	t8,4(t7)
     d10:	add90000 	sw	t9,0(t6)
     d14:	8df90008 	lw	t9,8(t7)
     d18:	3c090000 	lui	t1,0x0
     d1c:	25290000 	addiu	t1,t1,0
     d20:	add80004 	sw	t8,4(t6)
     d24:	add90008 	sw	t9,8(t6)
     d28:	8d2b0000 	lw	t3,0(t1)
     d2c:	27a80090 	addiu	t0,sp,144
     d30:	8d2a0004 	lw	t2,4(t1)
     d34:	ad0b0000 	sw	t3,0(t0)
     d38:	8d2b0008 	lw	t3,8(t1)
     d3c:	3c0c0000 	lui	t4,0x0
     d40:	258c0000 	addiu	t4,t4,0
     d44:	ad0a0004 	sw	t2,4(t0)
     d48:	ad0b0008 	sw	t3,8(t0)
     d4c:	8d8e0000 	lw	t6,0(t4)
     d50:	27a3008c 	addiu	v1,sp,140
     d54:	3c180000 	lui	t8,0x0
     d58:	27180000 	addiu	t8,t8,0
     d5c:	ac6e0000 	sw	t6,0(v1)
     d60:	8f080000 	lw	t0,0(t8)
     d64:	27af0080 	addiu	t7,sp,128
     d68:	8f190004 	lw	t9,4(t8)
     d6c:	ade80000 	sw	t0,0(t7)
     d70:	8f080008 	lw	t0,8(t8)
     d74:	3c0a0000 	lui	t2,0x0
     d78:	254a0000 	addiu	t2,t2,0
     d7c:	adf90004 	sw	t9,4(t7)
     d80:	ade80008 	sw	t0,8(t7)
     d84:	8d4c0000 	lw	t4,0(t2)
     d88:	27a90074 	addiu	t1,sp,116
     d8c:	8d4b0004 	lw	t3,4(t2)
     d90:	ad2c0000 	sw	t4,0(t1)
     d94:	8d4c0008 	lw	t4,8(t2)
     d98:	ad2b0004 	sw	t3,4(t1)
     d9c:	00a09825 	move	s3,a1
     da0:	ad2c0008 	sw	t4,8(t1)
     da4:	8c86011c 	lw	a2,284(a0)
     da8:	00808825 	move	s1,a0
     dac:	2405385b 	li	a1,14427
     db0:	50c0000d 	beqzl	a2,de8 <func_809F8F2C+0x10c>
     db4:	8e240118 	lw	a0,280(s1)
     db8:	8c8e0334 	lw	t6,820(a0)
     dbc:	acce0024 	sw	t6,36(a2)
     dc0:	8c8d0338 	lw	t5,824(a0)
     dc4:	accd0028 	sw	t5,40(a2)
     dc8:	8c8e033c 	lw	t6,828(a0)
     dcc:	acce002c 	sw	t6,44(a2)
     dd0:	8c86011c 	lw	a2,284(a0)
     dd4:	84cf01f8 	lh	t7,504(a2)
     dd8:	25f80001 	addiu	t8,t7,1
     ddc:	1000000e 	b	e18 <func_809F8F2C+0x13c>
     de0:	a4d801f8 	sh	t8,504(a2)
     de4:	8e240118 	lw	a0,280(s1)
     de8:	5080000c 	beqzl	a0,e1c <func_809F8F2C+0x140>
     dec:	c6240164 	lwc1	$f4,356(s1)
     df0:	8e280334 	lw	t0,820(s1)
     df4:	ac880024 	sw	t0,36(a0)
     df8:	8e390338 	lw	t9,824(s1)
     dfc:	ac990028 	sw	t9,40(a0)
     e00:	8e28033c 	lw	t0,828(s1)
     e04:	ac88002c 	sw	t0,44(a0)
     e08:	8e240118 	lw	a0,280(s1)
     e0c:	848901f8 	lh	t1,504(a0)
     e10:	252a0001 	addiu	t2,t1,1
     e14:	a48a01f8 	sh	t2,504(a0)
     e18:	c6240164 	lwc1	$f4,356(s1)
     e1c:	2401001c 	li	at,28
     e20:	4600218d 	trunc.w.s	$f6,$f4
     e24:	44023000 	mfc1	v0,$f6
     e28:	00000000 	nop
     e2c:	54410014 	bnel	v0,at,e80 <func_809F8F2C+0x1a4>
     e30:	24010018 	li	at,24
     e34:	0c000000 	jal	0 <func_809F8250>
     e38:	02202025 	move	a0,s1
     e3c:	8e26011c 	lw	a2,284(s1)
     e40:	50c00007 	beqzl	a2,e60 <func_809F8F2C+0x184>
     e44:	8e240118 	lw	a0,280(s1)
     e48:	0c000000 	jal	0 <func_809F8250>
     e4c:	00c02025 	move	a0,a2
     e50:	ae20011c 	sw	zero,284(s1)
     e54:	10000064 	b	fe8 <func_809F8F2C+0x30c>
     e58:	27a3008c 	addiu	v1,sp,140
     e5c:	8e240118 	lw	a0,280(s1)
     e60:	10800004 	beqz	a0,e74 <func_809F8F2C+0x198>
     e64:	00000000 	nop
     e68:	0c000000 	jal	0 <func_809F8250>
     e6c:	00000000 	nop
     e70:	ae200118 	sw	zero,280(s1)
     e74:	1000005c 	b	fe8 <func_809F8F2C+0x30c>
     e78:	27a3008c 	addiu	v1,sp,140
     e7c:	24010018 	li	at,24
     e80:	5441005a 	bnel	v0,at,fec <func_809F8F2C+0x310>
     e84:	c6300164 	lwc1	$f16,356(s1)
     e88:	862c030c 	lh	t4,780(s1)
     e8c:	3c013f80 	lui	at,0x3f80
     e90:	258dffff 	addiu	t5,t4,-1
     e94:	a62d030c 	sh	t5,780(s1)
     e98:	8622030c 	lh	v0,780(s1)
     e9c:	50400053 	beqzl	v0,fec <func_809F8F2C+0x310>
     ea0:	c6300164 	lwc1	$f16,356(s1)
     ea4:	c6280164 	lwc1	$f8,356(s1)
     ea8:	44815000 	mtc1	at,$f10
     eac:	2401000a 	li	at,10
     eb0:	2410000a 	li	s0,10
     eb4:	460a4400 	add.s	$f16,$f8,$f10
     eb8:	262e03c4 	addiu	t6,s1,964
     ebc:	262f03c8 	addiu	t7,s1,968
     ec0:	14410049 	bne	v0,at,fe8 <func_809F8F2C+0x30c>
     ec4:	e6300164 	swc1	$f16,356(s1)
     ec8:	3c010000 	lui	at,0x0
     ecc:	c4360000 	lwc1	$f22,0(at)
     ed0:	3c014120 	lui	at,0x4120
     ed4:	4481a000 	mtc1	at,$f20
     ed8:	afae0058 	sw	t6,88(sp)
     edc:	afaf0054 	sw	t7,84(sp)
     ee0:	27b20064 	addiu	s2,sp,100
     ee4:	0c000000 	jal	0 <func_809F8250>
     ee8:	4600a306 	mov.s	$f12,$f20
     eec:	e7a00080 	swc1	$f0,128(sp)
     ef0:	0c000000 	jal	0 <func_809F8250>
     ef4:	4600a306 	mov.s	$f12,$f20
     ef8:	e7a00084 	swc1	$f0,132(sp)
     efc:	0c000000 	jal	0 <func_809F8250>
     f00:	4600a306 	mov.s	$f12,$f20
     f04:	c7b20080 	lwc1	$f18,128(sp)
     f08:	c7a60084 	lwc1	$f6,132(sp)
     f0c:	e7a00088 	swc1	$f0,136(sp)
     f10:	46169102 	mul.s	$f4,$f18,$f22
     f14:	8fa90058 	lw	t1,88(sp)
     f18:	8faa0054 	lw	t2,84(sp)
     f1c:	46163202 	mul.s	$f8,$f6,$f22
     f20:	240b0190 	li	t3,400
     f24:	240c000a 	li	t4,10
     f28:	46160282 	mul.s	$f10,$f0,$f22
     f2c:	e7a40074 	swc1	$f4,116(sp)
     f30:	240d000a 	li	t5,10
     f34:	02602025 	move	a0,s3
     f38:	e7a80078 	swc1	$f8,120(sp)
     f3c:	02402825 	move	a1,s2
     f40:	27a60080 	addiu	a2,sp,128
     f44:	e7aa007c 	swc1	$f10,124(sp)
     f48:	863805d8 	lh	t8,1496(s1)
     f4c:	27a70074 	addiu	a3,sp,116
     f50:	44988000 	mtc1	t8,$f16
     f54:	00000000 	nop
     f58:	46808120 	cvt.s.w	$f4,$f16
     f5c:	46122200 	add.s	$f8,$f4,$f18
     f60:	e7a80064 	swc1	$f8,100(sp)
     f64:	863905da 	lh	t9,1498(s1)
     f68:	44995000 	mtc1	t9,$f10
     f6c:	00000000 	nop
     f70:	46805420 	cvt.s.w	$f16,$f10
     f74:	46068100 	add.s	$f4,$f16,$f6
     f78:	e7a40068 	swc1	$f4,104(sp)
     f7c:	862805dc 	lh	t0,1500(s1)
     f80:	afad0020 	sw	t5,32(sp)
     f84:	afac001c 	sw	t4,28(sp)
     f88:	44889000 	mtc1	t0,$f18
     f8c:	afab0018 	sw	t3,24(sp)
     f90:	afa90010 	sw	t1,16(sp)
     f94:	46809220 	cvt.s.w	$f8,$f18
     f98:	afaa0014 	sw	t2,20(sp)
     f9c:	46004280 	add.s	$f10,$f8,$f0
     fa0:	0c000000 	jal	0 <func_809F8250>
     fa4:	e7aa006c 	swc1	$f10,108(sp)
     fa8:	2610ffff 	addiu	s0,s0,-1
     fac:	00108400 	sll	s0,s0,0x10
     fb0:	00108403 	sra	s0,s0,0x10
     fb4:	0601ffcb 	bgez	s0,ee4 <func_809F8F2C+0x208>
     fb8:	00000000 	nop
     fbc:	02202025 	move	a0,s1
     fc0:	0c000000 	jal	0 <func_809F8250>
     fc4:	2405180e 	li	a1,6158
     fc8:	240e0008 	li	t6,8
     fcc:	afae0010 	sw	t6,16(sp)
     fd0:	02202025 	move	a0,s1
     fd4:	24054000 	li	a1,16384
     fd8:	24060078 	li	a2,120
     fdc:	0c000000 	jal	0 <func_809F8250>
     fe0:	00003825 	move	a3,zero
     fe4:	27a3008c 	addiu	v1,sp,140
     fe8:	c6300164 	lwc1	$f16,356(s1)
     fec:	27b20064 	addiu	s2,sp,100
     ff0:	4600818d 	trunc.w.s	$f6,$f16
     ff4:	44023000 	mfc1	v0,$f6
     ff8:	00000000 	nop
     ffc:	2841001c 	slti	at,v0,28
    1000:	1020004f 	beqz	at,1140 <func_809F8F2C+0x464>
    1004:	2841001a 	slti	at,v0,26
    1008:	5020000b 	beqzl	at,1038 <func_809F8F2C+0x35c>
    100c:	8e280340 	lw	t0,832(s1)
    1010:	8638030c 	lh	t8,780(s1)
    1014:	02202025 	move	a0,s1
    1018:	2b01000b 	slti	at,t8,11
    101c:	50200006 	beqzl	at,1038 <func_809F8F2C+0x35c>
    1020:	8e280340 	lw	t0,832(s1)
    1024:	0c000000 	jal	0 <func_809F8250>
    1028:	02602825 	move	a1,s3
    102c:	10000045 	b	1144 <func_809F8F2C+0x468>
    1030:	92240114 	lbu	a0,276(s1)
    1034:	8e280340 	lw	t0,832(s1)
    1038:	24090032 	li	t1,50
    103c:	240a0005 	li	t2,5
    1040:	ae480000 	sw	t0,0(s2)
    1044:	8e390344 	lw	t9,836(s1)
    1048:	02602025 	move	a0,s3
    104c:	02402825 	move	a1,s2
    1050:	ae590004 	sw	t9,4(s2)
    1054:	8e280348 	lw	t0,840(s1)
    1058:	27a6009c 	addiu	a2,sp,156
    105c:	27a70090 	addiu	a3,sp,144
    1060:	ae480008 	sw	t0,8(s2)
    1064:	afaa001c 	sw	t2,28(sp)
    1068:	afa90018 	sw	t1,24(sp)
    106c:	afa30014 	sw	v1,20(sp)
    1070:	0c000000 	jal	0 <func_809F8250>
    1074:	afa30010 	sw	v1,16(sp)
    1078:	0c000000 	jal	0 <func_809F8250>
    107c:	862400b6 	lh	a0,182(s1)
    1080:	3c0140c0 	lui	at,0x40c0
    1084:	4481a000 	mtc1	at,$f20
    1088:	c7a40064 	lwc1	$f4,100(sp)
    108c:	46140482 	mul.s	$f18,$f0,$f20
    1090:	46122201 	sub.s	$f8,$f4,$f18
    1094:	e7a80064 	swc1	$f8,100(sp)
    1098:	0c000000 	jal	0 <func_809F8250>
    109c:	862400b6 	lh	a0,182(s1)
    10a0:	46140402 	mul.s	$f16,$f0,$f20
    10a4:	c7aa006c 	lwc1	$f10,108(sp)
    10a8:	27ab008c 	addiu	t3,sp,140
    10ac:	240c0032 	li	t4,50
    10b0:	240d0005 	li	t5,5
    10b4:	afad001c 	sw	t5,28(sp)
    10b8:	afac0018 	sw	t4,24(sp)
    10bc:	46105180 	add.s	$f6,$f10,$f16
    10c0:	afab0010 	sw	t3,16(sp)
    10c4:	afab0014 	sw	t3,20(sp)
    10c8:	02602025 	move	a0,s3
    10cc:	e7a6006c 	swc1	$f6,108(sp)
    10d0:	02402825 	move	a1,s2
    10d4:	27a6009c 	addiu	a2,sp,156
    10d8:	0c000000 	jal	0 <func_809F8250>
    10dc:	27a70090 	addiu	a3,sp,144
    10e0:	0c000000 	jal	0 <func_809F8250>
    10e4:	862400b6 	lh	a0,182(s1)
    10e8:	46140102 	mul.s	$f4,$f0,$f20
    10ec:	c6320340 	lwc1	$f18,832(s1)
    10f0:	46122200 	add.s	$f8,$f4,$f18
    10f4:	e7a80064 	swc1	$f8,100(sp)
    10f8:	0c000000 	jal	0 <func_809F8250>
    10fc:	862400b6 	lh	a0,182(s1)
    1100:	46140402 	mul.s	$f16,$f0,$f20
    1104:	c62a0348 	lwc1	$f10,840(s1)
    1108:	27ae008c 	addiu	t6,sp,140
    110c:	240f0032 	li	t7,50
    1110:	24180005 	li	t8,5
    1114:	afb8001c 	sw	t8,28(sp)
    1118:	afaf0018 	sw	t7,24(sp)
    111c:	46105181 	sub.s	$f6,$f10,$f16
    1120:	afae0010 	sw	t6,16(sp)
    1124:	afae0014 	sw	t6,20(sp)
    1128:	02602025 	move	a0,s3
    112c:	e7a6006c 	swc1	$f6,108(sp)
    1130:	02402825 	move	a1,s2
    1134:	27a6009c 	addiu	a2,sp,156
    1138:	0c000000 	jal	0 <func_809F8250>
    113c:	27a70090 	addiu	a3,sp,144
    1140:	92240114 	lbu	a0,276(s1)
    1144:	00042300 	sll	a0,a0,0xc
    1148:	00042400 	sll	a0,a0,0x10
    114c:	0c000000 	jal	0 <func_809F8250>
    1150:	00042403 	sra	a0,a0,0x10
    1154:	3c013f80 	lui	at,0x3f80
    1158:	4481a000 	mtc1	at,$f20
    115c:	3c013f00 	lui	at,0x3f00
    1160:	44812000 	mtc1	at,$f4
    1164:	92240114 	lbu	a0,276(s1)
    1168:	46040482 	mul.s	$f18,$f0,$f4
    116c:	00042300 	sll	a0,a0,0xc
    1170:	00042400 	sll	a0,a0,0x10
    1174:	00042403 	sra	a0,a0,0x10
    1178:	46149080 	add.s	$f2,$f18,$f20
    117c:	e6220354 	swc1	$f2,852(s1)
    1180:	0c000000 	jal	0 <func_809F8250>
    1184:	e6220350 	swc1	$f2,848(s1)
    1188:	46140200 	add.s	$f8,$f0,$f20
    118c:	2624014c 	addiu	a0,s1,332
    1190:	0c000000 	jal	0 <func_809F8250>
    1194:	e628034c 	swc1	$f8,844(s1)
    1198:	8639030c 	lh	t9,780(s1)
    119c:	02202025 	move	a0,s1
    11a0:	57200004 	bnezl	t9,11b4 <func_809F8F2C+0x4d8>
    11a4:	8fbf004c 	lw	ra,76(sp)
    11a8:	0c000000 	jal	0 <func_809F8250>
    11ac:	02602825 	move	a1,s3
    11b0:	8fbf004c 	lw	ra,76(sp)
    11b4:	d7b40028 	ldc1	$f20,40(sp)
    11b8:	d7b60030 	ldc1	$f22,48(sp)
    11bc:	8fb0003c 	lw	s0,60(sp)
    11c0:	8fb10040 	lw	s1,64(sp)
    11c4:	8fb20044 	lw	s2,68(sp)
    11c8:	8fb30048 	lw	s3,72(sp)
    11cc:	03e00008 	jr	ra
    11d0:	27bd00a8 	addiu	sp,sp,168

000011d4 <func_809F9424>:
    11d4:	27bdffb0 	addiu	sp,sp,-80
    11d8:	afbf0034 	sw	ra,52(sp)
    11dc:	afb00030 	sw	s0,48(sp)
    11e0:	afa50054 	sw	a1,84(sp)
    11e4:	8caf1c44 	lw	t7,7236(a1)
    11e8:	00808025 	move	s0,a0
    11ec:	3c063dcc 	lui	a2,0x3dcc
    11f0:	afaf0044 	sw	t7,68(sp)
    11f4:	849900b6 	lh	t9,182(a0)
    11f8:	8498008a 	lh	t8,138(a0)
    11fc:	26040068 	addiu	a0,s0,104
    1200:	34c6cccd 	ori	a2,a2,0xcccd
    1204:	03191023 	subu	v0,t8,t9
    1208:	00021400 	sll	v0,v0,0x10
    120c:	00021403 	sra	v0,v0,0x10
    1210:	04410004 	bgez	v0,1224 <func_809F9424+0x50>
    1214:	3c053fc0 	lui	a1,0x3fc0
    1218:	00021023 	negu	v0,v0
    121c:	00021400 	sll	v0,v0,0x10
    1220:	00021403 	sra	v0,v0,0x10
    1224:	44802000 	mtc1	zero,$f4
    1228:	3c073f80 	lui	a3,0x3f80
    122c:	a7a20042 	sh	v0,66(sp)
    1230:	0c000000 	jal	0 <func_809F8250>
    1234:	e7a40010 	swc1	$f4,16(sp)
    1238:	c6020068 	lwc1	$f2,104(s0)
    123c:	44804000 	mtc1	zero,$f8
    1240:	3c013f40 	lui	at,0x3f40
    1244:	44813000 	mtc1	at,$f6
    1248:	4602403e 	c.le.s	$f8,$f2
    124c:	3c01bfc0 	lui	at,0xbfc0
    1250:	46061302 	mul.s	$f12,$f2,$f6
    1254:	2604014c 	addiu	a0,s0,332
    1258:	4502000b 	bc1fl	1288 <func_809F9424+0xb4>
    125c:	44810000 	mtc1	at,$f0
    1260:	3c013fc0 	lui	at,0x3fc0
    1264:	44810000 	mtc1	at,$f0
    1268:	00000000 	nop
    126c:	460c003c 	c.lt.s	$f0,$f12
    1270:	00000000 	nop
    1274:	4500000a 	bc1f	12a0 <func_809F9424+0xcc>
    1278:	00000000 	nop
    127c:	10000008 	b	12a0 <func_809F9424+0xcc>
    1280:	46000306 	mov.s	$f12,$f0
    1284:	44810000 	mtc1	at,$f0
    1288:	00000000 	nop
    128c:	4600603c 	c.lt.s	$f12,$f0
    1290:	00000000 	nop
    1294:	45000002 	bc1f	12a0 <func_809F9424+0xcc>
    1298:	00000000 	nop
    129c:	46000306 	mov.s	$f12,$f0
    12a0:	0c000000 	jal	0 <func_809F8250>
    12a4:	e60c0168 	swc1	$f12,360(s0)
    12a8:	c60a0164 	lwc1	$f10,356(s0)
    12ac:	4600540d 	trunc.w.s	$f16,$f10
    12b0:	44098000 	mfc1	t1,$f16
    12b4:	00000000 	nop
    12b8:	29210015 	slti	at,t1,21
    12bc:	5020001a 	beqzl	at,1328 <func_809F9424+0x154>
    12c0:	860f0316 	lh	t7,790(s0)
    12c4:	860a0316 	lh	t2,790(s0)
    12c8:	02002025 	move	a0,s0
    12cc:	5540002c 	bnezl	t2,1380 <func_809F9424+0x1ac>
    12d0:	8fa50044 	lw	a1,68(sp)
    12d4:	0c000000 	jal	0 <func_809F8250>
    12d8:	24053800 	li	a1,14336
    12dc:	3c014000 	lui	at,0x4000
    12e0:	44819000 	mtc1	at,$f18
    12e4:	240b0003 	li	t3,3
    12e8:	240c00c8 	li	t4,200
    12ec:	240d000f 	li	t5,15
    12f0:	afad001c 	sw	t5,28(sp)
    12f4:	afac0018 	sw	t4,24(sp)
    12f8:	afab0010 	sw	t3,16(sp)
    12fc:	8fa40054 	lw	a0,84(sp)
    1300:	02002825 	move	a1,s0
    1304:	2606031c 	addiu	a2,s0,796
    1308:	3c074120 	lui	a3,0x4120
    130c:	afa00020 	sw	zero,32(sp)
    1310:	0c000000 	jal	0 <func_809F8250>
    1314:	e7b20014 	swc1	$f18,20(sp)
    1318:	240e0001 	li	t6,1
    131c:	10000017 	b	137c <func_809F9424+0x1a8>
    1320:	a60e0316 	sh	t6,790(s0)
    1324:	860f0316 	lh	t7,790(s0)
    1328:	02002025 	move	a0,s0
    132c:	51e00014 	beqzl	t7,1380 <func_809F9424+0x1ac>
    1330:	8fa50044 	lw	a1,68(sp)
    1334:	0c000000 	jal	0 <func_809F8250>
    1338:	24053800 	li	a1,14336
    133c:	3c014000 	lui	at,0x4000
    1340:	44812000 	mtc1	at,$f4
    1344:	24180003 	li	t8,3
    1348:	241900c8 	li	t9,200
    134c:	2408000f 	li	t0,15
    1350:	afa8001c 	sw	t0,28(sp)
    1354:	afb90018 	sw	t9,24(sp)
    1358:	afb80010 	sw	t8,16(sp)
    135c:	8fa40054 	lw	a0,84(sp)
    1360:	02002825 	move	a1,s0
    1364:	26060328 	addiu	a2,s0,808
    1368:	3c074120 	lui	a3,0x4120
    136c:	afa00020 	sw	zero,32(sp)
    1370:	0c000000 	jal	0 <func_809F8250>
    1374:	e7a40014 	swc1	$f4,20(sp)
    1378:	a6000316 	sh	zero,790(s0)
    137c:	8fa50044 	lw	a1,68(sp)
    1380:	26040008 	addiu	a0,s0,8
    1384:	afa4003c 	sw	a0,60(sp)
    1388:	0c000000 	jal	0 <func_809F8250>
    138c:	24a50024 	addiu	a1,a1,36
    1390:	3c0143c8 	lui	at,0x43c8
    1394:	44813000 	mtc1	at,$f6
    1398:	26040032 	addiu	a0,s0,50
    139c:	24060001 	li	a2,1
    13a0:	4606003c 	c.lt.s	$f0,$f6
    13a4:	240701f4 	li	a3,500
    13a8:	4502001b 	bc1fl	1418 <func_809F9424+0x244>
    13ac:	8e0c0004 	lw	t4,4(s0)
    13b0:	8605008a 	lh	a1,138(s0)
    13b4:	0c000000 	jal	0 <func_809F8250>
    13b8:	afa00010 	sw	zero,16(sp)
    13bc:	3c0142c8 	lui	at,0x42c8
    13c0:	44815000 	mtc1	at,$f10
    13c4:	c6080090 	lwc1	$f8,144(s0)
    13c8:	8e090004 	lw	t1,4(s0)
    13cc:	460a403c 	c.lt.s	$f8,$f10
    13d0:	352a0001 	ori	t2,t1,0x1
    13d4:	ae0a0004 	sw	t2,4(s0)
    13d8:	87ab0042 	lh	t3,66(sp)
    13dc:	45000045 	bc1f	14f4 <func_809F9424+0x320>
    13e0:	29611388 	slti	at,t3,5000
    13e4:	10200043 	beqz	at,14f4 <func_809F9424+0x320>
    13e8:	3c014270 	lui	at,0x4270
    13ec:	44819000 	mtc1	at,$f18
    13f0:	c6100094 	lwc1	$f16,148(s0)
    13f4:	4612803c 	c.lt.s	$f16,$f18
    13f8:	00000000 	nop
    13fc:	4502003e 	bc1fl	14f8 <func_809F9424+0x324>
    1400:	86080032 	lh	t0,50(s0)
    1404:	0c000000 	jal	0 <func_809F8250>
    1408:	02002025 	move	a0,s0
    140c:	1000003a 	b	14f8 <func_809F9424+0x324>
    1410:	86080032 	lh	t0,50(s0)
    1414:	8e0c0004 	lw	t4,4(s0)
    1418:	2401fffe 	li	at,-2
    141c:	26040024 	addiu	a0,s0,36
    1420:	01816824 	and	t5,t4,at
    1424:	ae0d0004 	sw	t5,4(s0)
    1428:	afa40038 	sw	a0,56(sp)
    142c:	0c000000 	jal	0 <func_809F8250>
    1430:	8fa5003c 	lw	a1,60(sp)
    1434:	3c014316 	lui	at,0x4316
    1438:	44812000 	mtc1	at,$f4
    143c:	8fa40038 	lw	a0,56(sp)
    1440:	4600203c 	c.lt.s	$f4,$f0
    1444:	00000000 	nop
    1448:	45010004 	bc1t	145c <func_809F9424+0x288>
    144c:	00000000 	nop
    1450:	8603030e 	lh	v1,782(s0)
    1454:	1060000b 	beqz	v1,1484 <func_809F9424+0x2b0>
    1458:	00000000 	nop
    145c:	0c000000 	jal	0 <func_809F8250>
    1460:	8fa5003c 	lw	a1,60(sp)
    1464:	00022c00 	sll	a1,v0,0x10
    1468:	00052c03 	sra	a1,a1,0x10
    146c:	26040032 	addiu	a0,s0,50
    1470:	24060001 	li	a2,1
    1474:	240701f4 	li	a3,500
    1478:	0c000000 	jal	0 <func_809F8250>
    147c:	afa00010 	sw	zero,16(sp)
    1480:	8603030e 	lh	v1,782(s0)
    1484:	10600002 	beqz	v1,1490 <func_809F9424+0x2bc>
    1488:	246effff 	addiu	t6,v1,-1
    148c:	a60e030e 	sh	t6,782(s0)
    1490:	860f030c 	lh	t7,780(s0)
    1494:	25f8ffff 	addiu	t8,t7,-1
    1498:	a618030c 	sh	t8,780(s0)
    149c:	8619030c 	lh	t9,780(s0)
    14a0:	57200015 	bnezl	t9,14f8 <func_809F9424+0x324>
    14a4:	86080032 	lh	t0,50(s0)
    14a8:	0c000000 	jal	0 <func_809F8250>
    14ac:	00000000 	nop
    14b0:	3c010000 	lui	at,0x0
    14b4:	c4260000 	lwc1	$f6,0(at)
    14b8:	24040032 	li	a0,50
    14bc:	4600303c 	c.lt.s	$f6,$f0
    14c0:	00000000 	nop
    14c4:	45000009 	bc1f	14ec <func_809F9424+0x318>
    14c8:	00000000 	nop
    14cc:	0c000000 	jal	0 <func_809F8250>
    14d0:	24050046 	li	a1,70
    14d4:	a602030c 	sh	v0,780(s0)
    14d8:	2404000f 	li	a0,15
    14dc:	0c000000 	jal	0 <func_809F8250>
    14e0:	24050028 	li	a1,40
    14e4:	10000003 	b	14f4 <func_809F9424+0x320>
    14e8:	a602030e 	sh	v0,782(s0)
    14ec:	0c000000 	jal	0 <func_809F8250>
    14f0:	02002025 	move	a0,s0
    14f4:	86080032 	lh	t0,50(s0)
    14f8:	a60800b6 	sh	t0,182(s0)
    14fc:	8fbf0034 	lw	ra,52(sp)
    1500:	8fb00030 	lw	s0,48(sp)
    1504:	27bd0050 	addiu	sp,sp,80
    1508:	03e00008 	jr	ra
    150c:	00000000 	nop

00001510 <func_809F9760>:
    1510:	27bdffe8 	addiu	sp,sp,-24
    1514:	afbf0014 	sw	ra,20(sp)
    1518:	00803825 	move	a3,a0
    151c:	3c050600 	lui	a1,0x600
    1520:	24a51a44 	addiu	a1,a1,6724
    1524:	afa70018 	sw	a3,24(sp)
    1528:	2484014c 	addiu	a0,a0,332
    152c:	0c000000 	jal	0 <func_809F8250>
    1530:	3c06c080 	lui	a2,0xc080
    1534:	8fa40018 	lw	a0,24(sp)
    1538:	0c000000 	jal	0 <func_809F8250>
    153c:	24053803 	li	a1,14339
    1540:	8fa40018 	lw	a0,24(sp)
    1544:	44802000 	mtc1	zero,$f4
    1548:	3c050000 	lui	a1,0x0
    154c:	24a50000 	addiu	a1,a1,0
    1550:	ac800304 	sw	zero,772(a0)
    1554:	a480030c 	sh	zero,780(a0)
    1558:	0c000000 	jal	0 <func_809F8250>
    155c:	e4840068 	swc1	$f4,104(a0)
    1560:	8fbf0014 	lw	ra,20(sp)
    1564:	27bd0018 	addiu	sp,sp,24
    1568:	03e00008 	jr	ra
    156c:	00000000 	nop

00001570 <func_809F97C0>:
    1570:	27bdffa0 	addiu	sp,sp,-96
    1574:	afbf0034 	sw	ra,52(sp)
    1578:	afb00030 	sw	s0,48(sp)
    157c:	afa50064 	sw	a1,100(sp)
    1580:	848f00b6 	lh	t7,182(a0)
    1584:	848e008a 	lh	t6,138(a0)
    1588:	00808025 	move	s0,a0
    158c:	2484014c 	addiu	a0,a0,332
    1590:	01cf1823 	subu	v1,t6,t7
    1594:	00031c00 	sll	v1,v1,0x10
    1598:	00031c03 	sra	v1,v1,0x10
    159c:	a7a3005e 	sh	v1,94(sp)
    15a0:	0c000000 	jal	0 <func_809F8250>
    15a4:	afa40038 	sw	a0,56(sp)
    15a8:	10400048 	beqz	v0,16cc <func_809F97C0+0x15c>
    15ac:	87a3005e 	lh	v1,94(sp)
    15b0:	8618030c 	lh	t8,780(s0)
    15b4:	02002025 	move	a0,s0
    15b8:	57000009 	bnezl	t8,15e0 <func_809F97C0+0x70>
    15bc:	a200063d 	sb	zero,1597(s0)
    15c0:	04600003 	bltz	v1,15d0 <func_809F97C0+0x60>
    15c4:	00031023 	negu	v0,v1
    15c8:	10000001 	b	15d0 <func_809F97C0+0x60>
    15cc:	00601025 	move	v0,v1
    15d0:	28414000 	slti	at,v0,16384
    15d4:	1020000e 	beqz	at,1610 <func_809F97C0+0xa0>
    15d8:	3409ffff 	li	t1,0xffff
    15dc:	a200063d 	sb	zero,1597(s0)
    15e0:	a20005fd 	sb	zero,1533(s0)
    15e4:	a2000598 	sb	zero,1432(s0)
    15e8:	ae000628 	sw	zero,1576(s0)
    15ec:	ae0005e8 	sw	zero,1512(s0)
    15f0:	a200062d 	sb	zero,1581(s0)
    15f4:	0c000000 	jal	0 <func_809F8250>
    15f8:	a20005ed 	sb	zero,1517(s0)
    15fc:	24040005 	li	a0,5
    1600:	0c000000 	jal	0 <func_809F8250>
    1604:	2405000a 	li	a1,10
    1608:	10000084 	b	181c <func_809F97C0+0x2ac>
    160c:	a602030c 	sh	v0,780(s0)
    1610:	8619008a 	lh	t9,138(s0)
    1614:	860800b6 	lh	t0,182(s0)
    1618:	2401000f 	li	at,15
    161c:	24053859 	li	a1,14425
    1620:	03282023 	subu	a0,t9,t0
    1624:	00041c00 	sll	v1,a0,0x10
    1628:	00031c03 	sra	v1,v1,0x10
    162c:	04600003 	bltz	v1,163c <func_809F97C0+0xcc>
    1630:	00046400 	sll	t4,a0,0x10
    1634:	10000002 	b	1640 <func_809F97C0+0xd0>
    1638:	00601025 	move	v0,v1
    163c:	00031023 	negu	v0,v1
    1640:	01225023 	subu	t2,t1,v0
    1644:	0141001a 	div	zero,t2,at
    1648:	00005812 	mflo	t3
    164c:	000c6c03 	sra	t5,t4,0x10
    1650:	05a00007 	bltz	t5,1670 <func_809F97C0+0x100>
    1654:	a60b0310 	sh	t3,784(s0)
    1658:	860e0310 	lh	t6,784(s0)
    165c:	3c070600 	lui	a3,0x600
    1660:	24e742c4 	addiu	a3,a3,17092
    1664:	000e7823 	negu	t7,t6
    1668:	10000003 	b	1678 <func_809F97C0+0x108>
    166c:	a60f0310 	sh	t7,784(s0)
    1670:	3c070600 	lui	a3,0x600
    1674:	24e73b14 	addiu	a3,a3,15124
    1678:	02002025 	move	a0,s0
    167c:	0c000000 	jal	0 <func_809F8250>
    1680:	afa70058 	sw	a3,88(sp)
    1684:	8fa50058 	lw	a1,88(sp)
    1688:	8fa40038 	lw	a0,56(sp)
    168c:	0c000000 	jal	0 <func_809F8250>
    1690:	3c064000 	lui	a2,0x4000
    1694:	3c03ffcf 	lui	v1,0xffcf
    1698:	24020011 	li	v0,17
    169c:	3463ffff 	ori	v1,v1,0xffff
    16a0:	24180012 	li	t8,18
    16a4:	24090008 	li	t1,8
    16a8:	a618030c 	sh	t8,780(s0)
    16ac:	a202063d 	sb	v0,1597(s0)
    16b0:	a20205fd 	sb	v0,1533(s0)
    16b4:	a2020598 	sb	v0,1432(s0)
    16b8:	ae030628 	sw	v1,1576(s0)
    16bc:	ae0305e8 	sw	v1,1512(s0)
    16c0:	a209062d 	sb	t1,1581(s0)
    16c4:	10000055 	b	181c <func_809F97C0+0x2ac>
    16c8:	a20905ed 	sb	t1,1517(s0)
    16cc:	8602030c 	lh	v0,780(s0)
    16d0:	28410002 	slti	at,v0,2
    16d4:	54200052 	bnezl	at,1820 <func_809F97C0+0x2b0>
    16d8:	8fbf0034 	lw	ra,52(sp)
    16dc:	860f0618 	lh	t7,1560(s0)
    16e0:	860b0032 	lh	t3,50(s0)
    16e4:	860c0310 	lh	t4,784(s0)
    16e8:	448f2000 	mtc1	t7,$f4
    16ec:	244affff 	addiu	t2,v0,-1
    16f0:	016c6821 	addu	t5,t3,t4
    16f4:	468021a0 	cvt.s.w	$f6,$f4
    16f8:	a60d0032 	sh	t5,50(s0)
    16fc:	860e0032 	lh	t6,50(s0)
    1700:	a60a030c 	sh	t2,780(s0)
    1704:	3c014000 	lui	at,0x4000
    1708:	a60e00b6 	sh	t6,182(s0)
    170c:	e7a6004c 	swc1	$f6,76(sp)
    1710:	8618061a 	lh	t8,1562(s0)
    1714:	44812000 	mtc1	at,$f4
    1718:	240a000f 	li	t2,15
    171c:	44984000 	mtc1	t8,$f8
    1720:	24080002 	li	t0,2
    1724:	24090064 	li	t1,100
    1728:	468042a0 	cvt.s.w	$f10,$f8
    172c:	8fa40064 	lw	a0,100(sp)
    1730:	02002825 	move	a1,s0
    1734:	27a6004c 	addiu	a2,sp,76
    1738:	3c0740a0 	lui	a3,0x40a0
    173c:	e7aa0050 	swc1	$f10,80(sp)
    1740:	8619061c 	lh	t9,1564(s0)
    1744:	afa00020 	sw	zero,32(sp)
    1748:	afaa001c 	sw	t2,28(sp)
    174c:	44998000 	mtc1	t9,$f16
    1750:	afa90018 	sw	t1,24(sp)
    1754:	afa80010 	sw	t0,16(sp)
    1758:	468084a0 	cvt.s.w	$f18,$f16
    175c:	e7a40014 	swc1	$f4,20(sp)
    1760:	0c000000 	jal	0 <func_809F8250>
    1764:	e7b20054 	swc1	$f18,84(sp)
    1768:	860b0658 	lh	t3,1624(s0)
    176c:	3c014000 	lui	at,0x4000
    1770:	240e0002 	li	t6,2
    1774:	448b3000 	mtc1	t3,$f6
    1778:	240f0064 	li	t7,100
    177c:	2418000f 	li	t8,15
    1780:	46803220 	cvt.s.w	$f8,$f6
    1784:	44813000 	mtc1	at,$f6
    1788:	8fa40064 	lw	a0,100(sp)
    178c:	02002825 	move	a1,s0
    1790:	27a6004c 	addiu	a2,sp,76
    1794:	3c0740a0 	lui	a3,0x40a0
    1798:	e7a8004c 	swc1	$f8,76(sp)
    179c:	860c065a 	lh	t4,1626(s0)
    17a0:	448c5000 	mtc1	t4,$f10
    17a4:	00000000 	nop
    17a8:	46805420 	cvt.s.w	$f16,$f10
    17ac:	e7b00050 	swc1	$f16,80(sp)
    17b0:	860d065c 	lh	t5,1628(s0)
    17b4:	afa00020 	sw	zero,32(sp)
    17b8:	afb8001c 	sw	t8,28(sp)
    17bc:	448d9000 	mtc1	t5,$f18
    17c0:	afaf0018 	sw	t7,24(sp)
    17c4:	afae0010 	sw	t6,16(sp)
    17c8:	46809120 	cvt.s.w	$f4,$f18
    17cc:	e7a60014 	swc1	$f6,20(sp)
    17d0:	0c000000 	jal	0 <func_809F8250>
    17d4:	e7a40054 	swc1	$f4,84(sp)
    17d8:	92190598 	lbu	t9,1432(s0)
    17dc:	8fa70064 	lw	a3,100(sp)
    17e0:	33280002 	andi	t0,t9,0x2
    17e4:	51000008 	beqzl	t0,1808 <func_809F97C0+0x298>
    17e8:	8fa40064 	lw	a0,100(sp)
    17ec:	8ce41c44 	lw	a0,7236(a3)
    17f0:	8e09058c 	lw	t1,1420(s0)
    17f4:	54890004 	bnel	a0,t1,1808 <func_809F97C0+0x298>
    17f8:	8fa40064 	lw	a0,100(sp)
    17fc:	0c000000 	jal	0 <func_809F8250>
    1800:	2405083e 	li	a1,2110
    1804:	8fa40064 	lw	a0,100(sp)
    1808:	3c010001 	lui	at,0x1
    180c:	34211e60 	ori	at,at,0x1e60
    1810:	26060588 	addiu	a2,s0,1416
    1814:	0c000000 	jal	0 <func_809F8250>
    1818:	00812821 	addu	a1,a0,at
    181c:	8fbf0034 	lw	ra,52(sp)
    1820:	8fb00030 	lw	s0,48(sp)
    1824:	27bd0060 	addiu	sp,sp,96
    1828:	03e00008 	jr	ra
    182c:	00000000 	nop

00001830 <func_809F9A80>:
    1830:	27bdffe8 	addiu	sp,sp,-24
    1834:	afa5001c 	sw	a1,28(sp)
    1838:	afbf0014 	sw	ra,20(sp)
    183c:	00803825 	move	a3,a0
    1840:	3c050600 	lui	a1,0x600
    1844:	24a513c4 	addiu	a1,a1,5060
    1848:	afa70018 	sw	a3,24(sp)
    184c:	2484014c 	addiu	a0,a0,332
    1850:	0c000000 	jal	0 <func_809F8250>
    1854:	3c06c100 	lui	a2,0xc100
    1858:	8fa40018 	lw	a0,24(sp)
    185c:	24053804 	li	a1,14340
    1860:	0c000000 	jal	0 <func_809F8250>
    1864:	a480030c 	sh	zero,780(a0)
    1868:	8fa40018 	lw	a0,24(sp)
    186c:	44802000 	mtc1	zero,$f4
    1870:	2401fffe 	li	at,-2
    1874:	8c8f0004 	lw	t7,4(a0)
    1878:	240e0002 	li	t6,2
    187c:	3c050000 	lui	a1,0x0
    1880:	01e1c024 	and	t8,t7,at
    1884:	24a50000 	addiu	a1,a1,0
    1888:	ac8e0304 	sw	t6,772(a0)
    188c:	ac980004 	sw	t8,4(a0)
    1890:	0c000000 	jal	0 <func_809F8250>
    1894:	e4840068 	swc1	$f4,104(a0)
    1898:	8fbf0014 	lw	ra,20(sp)
    189c:	27bd0018 	addiu	sp,sp,24
    18a0:	03e00008 	jr	ra
    18a4:	00000000 	nop

000018a8 <func_809F9AF8>:
    18a8:	27bdffc8 	addiu	sp,sp,-56
    18ac:	afbf0034 	sw	ra,52(sp)
    18b0:	afb00030 	sw	s0,48(sp)
    18b4:	afa5003c 	sw	a1,60(sp)
    18b8:	3c01420c 	lui	at,0x420c
    18bc:	44813000 	mtc1	at,$f6
    18c0:	c4840164 	lwc1	$f4,356(a0)
    18c4:	00808025 	move	s0,a0
    18c8:	4606203c 	c.lt.s	$f4,$f6
    18cc:	00000000 	nop
    18d0:	45020009 	bc1fl	18f8 <func_809F9AF8+0x50>
    18d4:	920f0114 	lbu	t7,276(s0)
    18d8:	848e001c 	lh	t6,28(a0)
    18dc:	15c0000e 	bnez	t6,1918 <func_809F9AF8+0x70>
    18e0:	00000000 	nop
    18e4:	0c000000 	jal	0 <func_809F8250>
    18e8:	00000000 	nop
    18ec:	1000000a 	b	1918 <func_809F9AF8+0x70>
    18f0:	00000000 	nop
    18f4:	920f0114 	lbu	t7,276(s0)
    18f8:	02002025 	move	a0,s0
    18fc:	24054000 	li	a1,16384
    1900:	15e00005 	bnez	t7,1918 <func_809F9AF8+0x70>
    1904:	24060078 	li	a2,120
    1908:	24180004 	li	t8,4
    190c:	afb80010 	sw	t8,16(sp)
    1910:	0c000000 	jal	0 <func_809F8250>
    1914:	00003825 	move	a3,zero
    1918:	0c000000 	jal	0 <func_809F8250>
    191c:	2604014c 	addiu	a0,s0,332
    1920:	50400017 	beqzl	v0,1980 <func_809F9AF8+0xd8>
    1924:	c6100164 	lwc1	$f16,356(s0)
    1928:	8619030c 	lh	t9,780(s0)
    192c:	8fa5003c 	lw	a1,60(sp)
    1930:	24060010 	li	a2,16
    1934:	1720001b 	bnez	t9,19a4 <func_809F9AF8+0xfc>
    1938:	24a41c24 	addiu	a0,a1,7204
    193c:	c6080028 	lwc1	$f8,40(s0)
    1940:	8e070024 	lw	a3,36(s0)
    1944:	24090006 	li	t1,6
    1948:	e7a80010 	swc1	$f8,16(sp)
    194c:	c60a002c 	lwc1	$f10,44(s0)
    1950:	afa00024 	sw	zero,36(sp)
    1954:	afa90020 	sw	t1,32(sp)
    1958:	afa0001c 	sw	zero,28(sp)
    195c:	afa00018 	sw	zero,24(sp)
    1960:	0c000000 	jal	0 <func_809F8250>
    1964:	e7aa0014 	swc1	$f10,20(sp)
    1968:	1040000e 	beqz	v0,19a4 <func_809F9AF8+0xfc>
    196c:	240a0008 	li	t2,8
    1970:	a44001f8 	sh	zero,504(v0)
    1974:	1000000b 	b	19a4 <func_809F9AF8+0xfc>
    1978:	a60a030c 	sh	t2,780(s0)
    197c:	c6100164 	lwc1	$f16,356(s0)
    1980:	24010034 	li	at,52
    1984:	02002025 	move	a0,s0
    1988:	4600848d 	trunc.w.s	$f18,$f16
    198c:	440c9000 	mfc1	t4,$f18
    1990:	00000000 	nop
    1994:	55810004 	bnel	t4,at,19a8 <func_809F9AF8+0x100>
    1998:	8602030c 	lh	v0,780(s0)
    199c:	0c000000 	jal	0 <func_809F8250>
    19a0:	2405387a 	li	a1,14458
    19a4:	8602030c 	lh	v0,780(s0)
    19a8:	1040000b 	beqz	v0,19d8 <func_809F9AF8+0x130>
    19ac:	244dffff 	addiu	t5,v0,-1
    19b0:	a60d030c 	sh	t5,780(s0)
    19b4:	860e030c 	lh	t6,780(s0)
    19b8:	8fa4003c 	lw	a0,60(sp)
    19bc:	02002825 	move	a1,s0
    19c0:	15c00005 	bnez	t6,19d8 <func_809F9AF8+0x130>
    19c4:	26060024 	addiu	a2,s0,36
    19c8:	0c000000 	jal	0 <func_809F8250>
    19cc:	24070040 	li	a3,64
    19d0:	0c000000 	jal	0 <func_809F8250>
    19d4:	02002025 	move	a0,s0
    19d8:	8fbf0034 	lw	ra,52(sp)
    19dc:	8fb00030 	lw	s0,48(sp)
    19e0:	27bd0038 	addiu	sp,sp,56
    19e4:	03e00008 	jr	ra
    19e8:	00000000 	nop

000019ec <func_809F9C3C>:
    19ec:	27bdffe8 	addiu	sp,sp,-24
    19f0:	afbf0014 	sw	ra,20(sp)
    19f4:	00803025 	move	a2,a0
    19f8:	afa5001c 	sw	a1,28(sp)
    19fc:	afa60018 	sw	a2,24(sp)
    1a00:	0c000000 	jal	0 <func_809F8250>
    1a04:	2484014c 	addiu	a0,a0,332
    1a08:	8fa60018 	lw	a2,24(sp)
    1a0c:	90ce0114 	lbu	t6,276(a2)
    1a10:	55c0000c 	bnezl	t6,1a44 <func_809F9C3C+0x58>
    1a14:	8fbf0014 	lw	ra,20(sp)
    1a18:	90cf00af 	lbu	t7,175(a2)
    1a1c:	00c02025 	move	a0,a2
    1a20:	15e00005 	bnez	t7,1a38 <func_809F9C3C+0x4c>
    1a24:	00000000 	nop
    1a28:	0c000000 	jal	0 <func_809F8250>
    1a2c:	8fa5001c 	lw	a1,28(sp)
    1a30:	10000004 	b	1a44 <func_809F9C3C+0x58>
    1a34:	8fbf0014 	lw	ra,20(sp)
    1a38:	0c000000 	jal	0 <func_809F8250>
    1a3c:	00c02025 	move	a0,a2
    1a40:	8fbf0014 	lw	ra,20(sp)
    1a44:	27bd0018 	addiu	sp,sp,24
    1a48:	03e00008 	jr	ra
    1a4c:	00000000 	nop

00001a50 <func_809F9CA0>:
    1a50:	27bdffd8 	addiu	sp,sp,-40
    1a54:	afbf0024 	sw	ra,36(sp)
    1a58:	afb00020 	sw	s0,32(sp)
    1a5c:	afa5002c 	sw	a1,44(sp)
    1a60:	90820465 	lbu	v0,1125(a0)
    1a64:	00808025 	move	s0,a0
    1a68:	304e0080 	andi	t6,v0,0x80
    1a6c:	51c00008 	beqzl	t6,1a90 <func_809F9CA0+0x40>
    1a70:	92020599 	lbu	v0,1433(s0)
    1a74:	90980599 	lbu	t8,1433(a0)
    1a78:	304fff7f 	andi	t7,v0,0xff7f
    1a7c:	a08f0465 	sb	t7,1125(a0)
    1a80:	3319fffd 	andi	t9,t8,0xfffd
    1a84:	10000037 	b	1b64 <func_809F9CA0+0x114>
    1a88:	a0990599 	sb	t9,1433(a0)
    1a8c:	92020599 	lbu	v0,1433(s0)
    1a90:	30480002 	andi	t0,v0,0x2
    1a94:	51000034 	beqzl	t0,1b68 <func_809F9CA0+0x118>
    1a98:	8fbf0024 	lw	ra,36(sp)
    1a9c:	8e090304 	lw	t1,772(s0)
    1aa0:	304afffd 	andi	t2,v0,0xfffd
    1aa4:	02002025 	move	a0,s0
    1aa8:	29210003 	slti	at,t1,3
    1aac:	1420002d 	bnez	at,1b64 <func_809F9CA0+0x114>
    1ab0:	26050588 	addiu	a1,s0,1416
    1ab4:	a20a0599 	sb	t2,1433(s0)
    1ab8:	0c000000 	jal	0 <func_809F8250>
    1abc:	00003025 	move	a2,zero
    1ac0:	920300b1 	lbu	v1,177(s0)
    1ac4:	2401000e 	li	at,14
    1ac8:	10610026 	beq	v1,at,1b64 <func_809F9CA0+0x114>
    1acc:	24010001 	li	at,1
    1ad0:	10610004 	beq	v1,at,1ae4 <func_809F9CA0+0x94>
    1ad4:	a20303cc 	sb	v1,972(s0)
    1ad8:	2401000f 	li	at,15
    1adc:	14610011 	bne	v1,at,1b24 <func_809F9CA0+0xd4>
    1ae0:	02002025 	move	a0,s0
    1ae4:	8e0b0304 	lw	t3,772(s0)
    1ae8:	24010007 	li	at,7
    1aec:	02002025 	move	a0,s0
    1af0:	1161001c 	beq	t3,at,1b64 <func_809F9CA0+0x114>
    1af4:	00002825 	move	a1,zero
    1af8:	240c0050 	li	t4,80
    1afc:	afac0010 	sw	t4,16(sp)
    1b00:	24060078 	li	a2,120
    1b04:	0c000000 	jal	0 <func_809F8250>
    1b08:	00003825 	move	a3,zero
    1b0c:	0c000000 	jal	0 <func_809F8250>
    1b10:	02002025 	move	a0,s0
    1b14:	0c000000 	jal	0 <func_809F8250>
    1b18:	02002025 	move	a0,s0
    1b1c:	10000012 	b	1b68 <func_809F9CA0+0x118>
    1b20:	8fbf0024 	lw	ra,36(sp)
    1b24:	240d0008 	li	t5,8
    1b28:	afad0010 	sw	t5,16(sp)
    1b2c:	24054000 	li	a1,16384
    1b30:	24060078 	li	a2,120
    1b34:	0c000000 	jal	0 <func_809F8250>
    1b38:	00003825 	move	a3,zero
    1b3c:	0c000000 	jal	0 <func_809F8250>
    1b40:	02002025 	move	a0,s0
    1b44:	14400005 	bnez	v0,1b5c <func_809F9CA0+0x10c>
    1b48:	02002025 	move	a0,s0
    1b4c:	0c000000 	jal	0 <func_809F8250>
    1b50:	8fa5002c 	lw	a1,44(sp)
    1b54:	10000004 	b	1b68 <func_809F9CA0+0x118>
    1b58:	8fbf0024 	lw	ra,36(sp)
    1b5c:	0c000000 	jal	0 <func_809F8250>
    1b60:	02002025 	move	a0,s0
    1b64:	8fbf0024 	lw	ra,36(sp)
    1b68:	8fb00020 	lw	s0,32(sp)
    1b6c:	27bd0028 	addiu	sp,sp,40
    1b70:	03e00008 	jr	ra
    1b74:	00000000 	nop

00001b78 <func_809F9DC8>:
    1b78:	27bdff60 	addiu	sp,sp,-160
    1b7c:	3c0f0000 	lui	t7,0x0
    1b80:	afbf0024 	sw	ra,36(sp)
    1b84:	afb00020 	sw	s0,32(sp)
    1b88:	afa500a4 	sw	a1,164(sp)
    1b8c:	25ef0000 	addiu	t7,t7,0
    1b90:	8df90000 	lw	t9,0(t7)
    1b94:	27ae0094 	addiu	t6,sp,148
    1b98:	8df80004 	lw	t8,4(t7)
    1b9c:	add90000 	sw	t9,0(t6)
    1ba0:	8df90008 	lw	t9,8(t7)
    1ba4:	3c090000 	lui	t1,0x0
    1ba8:	25290000 	addiu	t1,t1,0
    1bac:	add80004 	sw	t8,4(t6)
    1bb0:	add90008 	sw	t9,8(t6)
    1bb4:	8d2b0000 	lw	t3,0(t1)
    1bb8:	27a80088 	addiu	t0,sp,136
    1bbc:	8d2a0004 	lw	t2,4(t1)
    1bc0:	ad0b0000 	sw	t3,0(t0)
    1bc4:	8d2b0008 	lw	t3,8(t1)
    1bc8:	3c0d0000 	lui	t5,0x0
    1bcc:	25ad0000 	addiu	t5,t5,0
    1bd0:	ad0a0004 	sw	t2,4(t0)
    1bd4:	ad0b0008 	sw	t3,8(t0)
    1bd8:	8daf0000 	lw	t7,0(t5)
    1bdc:	27ac007c 	addiu	t4,sp,124
    1be0:	8dae0004 	lw	t6,4(t5)
    1be4:	ad8f0000 	sw	t7,0(t4)
    1be8:	8daf0008 	lw	t7,8(t5)
    1bec:	3c190000 	lui	t9,0x0
    1bf0:	27390000 	addiu	t9,t9,0
    1bf4:	ad8e0004 	sw	t6,4(t4)
    1bf8:	ad8f0008 	sw	t7,8(t4)
    1bfc:	8f290000 	lw	t1,0(t9)
    1c00:	27b80070 	addiu	t8,sp,112
    1c04:	8f280004 	lw	t0,4(t9)
    1c08:	af090000 	sw	t1,0(t8)
    1c0c:	8f290008 	lw	t1,8(t9)
    1c10:	3c0141e0 	lui	at,0x41e0
    1c14:	af080004 	sw	t0,4(t8)
    1c18:	af090008 	sw	t1,8(t8)
    1c1c:	c4840164 	lwc1	$f4,356(a0)
    1c20:	44813000 	mtc1	at,$f6
    1c24:	3c010000 	lui	at,0x0
    1c28:	c42a0000 	lwc1	$f10,0(at)
    1c2c:	46062201 	sub.s	$f8,$f4,$f6
    1c30:	00808025 	move	s0,a0
    1c34:	460a4302 	mul.s	$f12,$f8,$f10
    1c38:	0c000000 	jal	0 <func_809F8250>
    1c3c:	00000000 	nop
    1c40:	3c010000 	lui	at,0x0
    1c44:	c4300000 	lwc1	$f16,0(at)
    1c48:	c7b2007c 	lwc1	$f18,124(sp)
    1c4c:	c7a60094 	lwc1	$f6,148(sp)
    1c50:	46100082 	mul.s	$f2,$f0,$f16
    1c54:	c7aa0088 	lwc1	$f10,136(sp)
    1c58:	26050420 	addiu	a1,s0,1056
    1c5c:	afa50030 	sw	a1,48(sp)
    1c60:	27a40094 	addiu	a0,sp,148
    1c64:	46029101 	sub.s	$f4,$f18,$f2
    1c68:	46023201 	sub.s	$f8,$f6,$f2
    1c6c:	e7a4007c 	swc1	$f4,124(sp)
    1c70:	46025401 	sub.s	$f16,$f10,$f2
    1c74:	e7a80094 	swc1	$f8,148(sp)
    1c78:	0c000000 	jal	0 <func_809F8250>
    1c7c:	e7b00088 	swc1	$f16,136(sp)
    1c80:	26050414 	addiu	a1,s0,1044
    1c84:	afa50034 	sw	a1,52(sp)
    1c88:	0c000000 	jal	0 <func_809F8250>
    1c8c:	27a40088 	addiu	a0,sp,136
    1c90:	26050438 	addiu	a1,s0,1080
    1c94:	afa50028 	sw	a1,40(sp)
    1c98:	0c000000 	jal	0 <func_809F8250>
    1c9c:	27a4007c 	addiu	a0,sp,124
    1ca0:	2607042c 	addiu	a3,s0,1068
    1ca4:	00e02825 	move	a1,a3
    1ca8:	afa7002c 	sw	a3,44(sp)
    1cac:	0c000000 	jal	0 <func_809F8250>
    1cb0:	27a40070 	addiu	a0,sp,112
    1cb4:	8faa0028 	lw	t2,40(sp)
    1cb8:	8fa7002c 	lw	a3,44(sp)
    1cbc:	260403d4 	addiu	a0,s0,980
    1cc0:	8fa50034 	lw	a1,52(sp)
    1cc4:	8fa60030 	lw	a2,48(sp)
    1cc8:	0c000000 	jal	0 <func_809F8250>
    1ccc:	afaa0010 	sw	t2,16(sp)
    1cd0:	8fbf0024 	lw	ra,36(sp)
    1cd4:	8fb00020 	lw	s0,32(sp)
    1cd8:	27bd00a0 	addiu	sp,sp,160
    1cdc:	03e00008 	jr	ra
    1ce0:	00000000 	nop

00001ce4 <EnDodongo_Update>:
    1ce4:	27bdffc0 	addiu	sp,sp,-64
    1ce8:	afbf0024 	sw	ra,36(sp)
    1cec:	afb10020 	sw	s1,32(sp)
    1cf0:	afb0001c 	sw	s0,28(sp)
    1cf4:	00808025 	move	s0,a0
    1cf8:	0c000000 	jal	0 <func_809F8250>
    1cfc:	00a08825 	move	s1,a1
    1d00:	920e00b1 	lbu	t6,177(s0)
    1d04:	2401000e 	li	at,14
    1d08:	51c1001a 	beql	t6,at,1d74 <EnDodongo_Update+0x90>
    1d0c:	3c010001 	lui	at,0x1
    1d10:	8e190308 	lw	t9,776(s0)
    1d14:	02002025 	move	a0,s0
    1d18:	02202825 	move	a1,s1
    1d1c:	0320f809 	jalr	t9
    1d20:	00000000 	nop
    1d24:	0c000000 	jal	0 <func_809F8250>
    1d28:	02002025 	move	a0,s0
    1d2c:	3c01428c 	lui	at,0x428c
    1d30:	44812000 	mtc1	at,$f4
    1d34:	240f001d 	li	t7,29
    1d38:	afaf0014 	sw	t7,20(sp)
    1d3c:	02202025 	move	a0,s1
    1d40:	02002825 	move	a1,s0
    1d44:	3c064296 	lui	a2,0x4296
    1d48:	3c074270 	lui	a3,0x4270
    1d4c:	0c000000 	jal	0 <func_809F8250>
    1d50:	e7a40010 	swc1	$f4,16(sp)
    1d54:	96180088 	lhu	t8,136(s0)
    1d58:	02002025 	move	a0,s0
    1d5c:	33080002 	andi	t0,t8,0x2
    1d60:	51000004 	beqzl	t0,1d74 <EnDodongo_Update+0x90>
    1d64:	3c010001 	lui	at,0x1
    1d68:	0c000000 	jal	0 <func_809F8250>
    1d6c:	2405387a 	li	a1,14458
    1d70:	3c010001 	lui	at,0x1
    1d74:	34211e60 	ori	at,at,0x1e60
    1d78:	02212821 	addu	a1,s1,at
    1d7c:	26060588 	addiu	a2,s0,1416
    1d80:	afa6002c 	sw	a2,44(sp)
    1d84:	afa50034 	sw	a1,52(sp)
    1d88:	0c000000 	jal	0 <func_809F8250>
    1d8c:	02202025 	move	a0,s1
    1d90:	8e030304 	lw	v1,772(s0)
    1d94:	24010002 	li	at,2
    1d98:	02202025 	move	a0,s1
    1d9c:	10610004 	beq	v1,at,1db0 <EnDodongo_Update+0xcc>
    1da0:	8fa50034 	lw	a1,52(sp)
    1da4:	0c000000 	jal	0 <func_809F8250>
    1da8:	26060454 	addiu	a2,s0,1108
    1dac:	8e030304 	lw	v1,772(s0)
    1db0:	28610003 	slti	at,v1,3
    1db4:	14200005 	bnez	at,1dcc <EnDodongo_Update+0xe8>
    1db8:	02202025 	move	a0,s1
    1dbc:	8fa50034 	lw	a1,52(sp)
    1dc0:	0c000000 	jal	0 <func_809F8250>
    1dc4:	8fa6002c 	lw	a2,44(sp)
    1dc8:	8e030304 	lw	v1,772(s0)
    1dcc:	28610004 	slti	at,v1,4
    1dd0:	14200007 	bnez	at,1df0 <EnDodongo_Update+0x10c>
    1dd4:	02002025 	move	a0,s0
    1dd8:	0c000000 	jal	0 <func_809F8250>
    1ddc:	02202825 	move	a1,s1
    1de0:	50400004 	beqzl	v0,1df4 <EnDodongo_Update+0x110>
    1de4:	8e090304 	lw	t1,772(s0)
    1de8:	0c000000 	jal	0 <func_809F8250>
    1dec:	02002025 	move	a0,s0
    1df0:	8e090304 	lw	t1,772(s0)
    1df4:	24010003 	li	at,3
    1df8:	15210011 	bne	t1,at,1e40 <EnDodongo_Update+0x15c>
    1dfc:	3c0141e8 	lui	at,0x41e8
    1e00:	44813000 	mtc1	at,$f6
    1e04:	c6000164 	lwc1	$f0,356(s0)
    1e08:	3c01422c 	lui	at,0x422c
    1e0c:	4600303c 	c.lt.s	$f6,$f0
    1e10:	00000000 	nop
    1e14:	4500000a 	bc1f	1e40 <EnDodongo_Update+0x15c>
    1e18:	00000000 	nop
    1e1c:	44814000 	mtc1	at,$f8
    1e20:	02202025 	move	a0,s1
    1e24:	8fa50034 	lw	a1,52(sp)
    1e28:	4608003c 	c.lt.s	$f0,$f8
    1e2c:	00000000 	nop
    1e30:	45000003 	bc1f	1e40 <EnDodongo_Update+0x15c>
    1e34:	00000000 	nop
    1e38:	0c000000 	jal	0 <func_809F8250>
    1e3c:	260603d4 	addiu	a2,s0,980
    1e40:	0c000000 	jal	0 <func_809F8250>
    1e44:	860400b6 	lh	a0,182(s0)
    1e48:	3c01c1f0 	lui	at,0xc1f0
    1e4c:	44815000 	mtc1	at,$f10
    1e50:	3c0141a0 	lui	at,0x41a0
    1e54:	c6120024 	lwc1	$f18,36(s0)
    1e58:	460a0402 	mul.s	$f16,$f0,$f10
    1e5c:	44814000 	mtc1	at,$f8
    1e60:	c6060028 	lwc1	$f6,40(s0)
    1e64:	860400b6 	lh	a0,182(s0)
    1e68:	46083280 	add.s	$f10,$f6,$f8
    1e6c:	46128100 	add.s	$f4,$f16,$f18
    1e70:	e60a003c 	swc1	$f10,60(s0)
    1e74:	0c000000 	jal	0 <func_809F8250>
    1e78:	e6040038 	swc1	$f4,56(s0)
    1e7c:	3c01c1f0 	lui	at,0xc1f0
    1e80:	44818000 	mtc1	at,$f16
    1e84:	c604002c 	lwc1	$f4,44(s0)
    1e88:	46100482 	mul.s	$f18,$f0,$f16
    1e8c:	46049180 	add.s	$f6,$f18,$f4
    1e90:	e6060040 	swc1	$f6,64(s0)
    1e94:	8fbf0024 	lw	ra,36(sp)
    1e98:	8fb10020 	lw	s1,32(sp)
    1e9c:	8fb0001c 	lw	s0,28(sp)
    1ea0:	03e00008 	jr	ra
    1ea4:	27bd0040 	addiu	sp,sp,64

00001ea8 <func_809FA0F8>:
    1ea8:	27bdffe8 	addiu	sp,sp,-24
    1eac:	2401000f 	li	at,15
    1eb0:	afbf0014 	sw	ra,20(sp)
    1eb4:	afa40018 	sw	a0,24(sp)
    1eb8:	afa60020 	sw	a2,32(sp)
    1ebc:	10a10004 	beq	a1,at,1ed0 <func_809FA0F8+0x28>
    1ec0:	afa70024 	sw	a3,36(sp)
    1ec4:	24010010 	li	at,16
    1ec8:	54a10008 	bnel	a1,at,1eec <func_809FA0F8+0x44>
    1ecc:	8fbf0014 	lw	ra,20(sp)
    1ed0:	8fa2002c 	lw	v0,44(sp)
    1ed4:	24070001 	li	a3,1
    1ed8:	c44c034c 	lwc1	$f12,844(v0)
    1edc:	c44e0350 	lwc1	$f14,848(v0)
    1ee0:	0c000000 	jal	0 <func_809F8250>
    1ee4:	8c460354 	lw	a2,852(v0)
    1ee8:	8fbf0014 	lw	ra,20(sp)
    1eec:	27bd0018 	addiu	sp,sp,24
    1ef0:	00001025 	move	v0,zero
    1ef4:	03e00008 	jr	ra
    1ef8:	00000000 	nop

00001efc <func_809FA14C>:
    1efc:	27bdfe78 	addiu	sp,sp,-392
    1f00:	3c0e0000 	lui	t6,0x0
    1f04:	afbf003c 	sw	ra,60(sp)
    1f08:	afb60038 	sw	s6,56(sp)
    1f0c:	afb50034 	sw	s5,52(sp)
    1f10:	afb40030 	sw	s4,48(sp)
    1f14:	afb3002c 	sw	s3,44(sp)
    1f18:	afb20028 	sw	s2,40(sp)
    1f1c:	afb10024 	sw	s1,36(sp)
    1f20:	afb00020 	sw	s0,32(sp)
    1f24:	afa60190 	sw	a2,400(sp)
    1f28:	afa70194 	sw	a3,404(sp)
    1f2c:	25ce0000 	addiu	t6,t6,0
    1f30:	8dd80000 	lw	t8,0(t6)
    1f34:	27b1017c 	addiu	s1,sp,380
    1f38:	8fb60198 	lw	s6,408(sp)
    1f3c:	ae380000 	sw	t8,0(s1)
    1f40:	8dcf0004 	lw	t7,4(t6)
    1f44:	3c080000 	lui	t0,0x0
    1f48:	25080000 	addiu	t0,t0,0
    1f4c:	ae2f0004 	sw	t7,4(s1)
    1f50:	8dd80008 	lw	t8,8(t6)
    1f54:	27b90170 	addiu	t9,sp,368
    1f58:	3c0c0000 	lui	t4,0x0
    1f5c:	ae380008 	sw	t8,8(s1)
    1f60:	8d0a0000 	lw	t2,0(t0)
    1f64:	8d090004 	lw	t1,4(t0)
    1f68:	258c0000 	addiu	t4,t4,0
    1f6c:	af2a0000 	sw	t2,0(t9)
    1f70:	8d0a0008 	lw	t2,8(t0)
    1f74:	00a08025 	move	s0,a1
    1f78:	00809025 	move	s2,a0
    1f7c:	258f0024 	addiu	t7,t4,36
    1f80:	27ab00c0 	addiu	t3,sp,192
    1f84:	af290004 	sw	t1,4(t9)
    1f88:	af2a0008 	sw	t2,8(t9)
    1f8c:	8d8e0000 	lw	t6,0(t4)
    1f90:	258c000c 	addiu	t4,t4,12
    1f94:	256b000c 	addiu	t3,t3,12
    1f98:	ad6efff4 	sw	t6,-12(t3)
    1f9c:	8d8dfff8 	lw	t5,-8(t4)
    1fa0:	ad6dfff8 	sw	t5,-8(t3)
    1fa4:	8d8efffc 	lw	t6,-4(t4)
    1fa8:	158ffff8 	bne	t4,t7,1f8c <func_809FA14C+0x90>
    1fac:	ad6efffc 	sw	t6,-4(t3)
    1fb0:	3c190000 	lui	t9,0x0
    1fb4:	27390000 	addiu	t9,t9,0
    1fb8:	272a0024 	addiu	t2,t9,36
    1fbc:	27b8009c 	addiu	t8,sp,156
    1fc0:	8f290000 	lw	t1,0(t9)
    1fc4:	2739000c 	addiu	t9,t9,12
    1fc8:	2718000c 	addiu	t8,t8,12
    1fcc:	af09fff4 	sw	t1,-12(t8)
    1fd0:	8f28fff8 	lw	t0,-8(t9)
    1fd4:	af08fff8 	sw	t0,-8(t8)
    1fd8:	8f29fffc 	lw	t1,-4(t9)
    1fdc:	172afff8 	bne	t9,t2,1fc0 <func_809FA14C+0xc4>
    1fe0:	af09fffc 	sw	t1,-4(t8)
    1fe4:	3c0c0000 	lui	t4,0x0
    1fe8:	258c0000 	addiu	t4,t4,0
    1fec:	258e0024 	addiu	t6,t4,36
    1ff0:	27af0078 	addiu	t7,sp,120
    1ff4:	8d8d0000 	lw	t5,0(t4)
    1ff8:	258c000c 	addiu	t4,t4,12
    1ffc:	25ef000c 	addiu	t7,t7,12
    2000:	adedfff4 	sw	t5,-12(t7)
    2004:	8d8bfff8 	lw	t3,-8(t4)
    2008:	adebfff8 	sw	t3,-8(t7)
    200c:	8d8dfffc 	lw	t5,-4(t4)
    2010:	158efff8 	bne	t4,t6,1ff4 <func_809FA14C+0xf8>
    2014:	adedfffc 	sw	t5,-4(t7)
    2018:	3c190000 	lui	t9,0x0
    201c:	27390000 	addiu	t9,t9,0
    2020:	8f280000 	lw	t0,0(t9)
    2024:	27aa006c 	addiu	t2,sp,108
    2028:	8f380004 	lw	t8,4(t9)
    202c:	ad480000 	sw	t0,0(t2)
    2030:	8f280008 	lw	t0,8(t9)
    2034:	3c0e0000 	lui	t6,0x0
    2038:	25ce0000 	addiu	t6,t6,0
    203c:	ad580004 	sw	t8,4(t2)
    2040:	ad480008 	sw	t0,8(t2)
    2044:	8dcf0000 	lw	t7,0(t6)
    2048:	27a90060 	addiu	t1,sp,96
    204c:	8dcc0004 	lw	t4,4(t6)
    2050:	ad2f0000 	sw	t7,0(t1)
    2054:	8dcf0008 	lw	t7,8(t6)
    2058:	02002025 	move	a0,s0
    205c:	26c50588 	addiu	a1,s6,1416
    2060:	ad2c0004 	sw	t4,4(t1)
    2064:	0c000000 	jal	0 <func_809F8250>
    2068:	ad2f0008 	sw	t7,8(t1)
    206c:	260dfffe 	addiu	t5,s0,-2
    2070:	2da1001b 	sltiu	at,t5,27
    2074:	1020007d 	beqz	at,226c <L809FA4BC>
    2078:	afb00058 	sw	s0,88(sp)
    207c:	000d6880 	sll	t5,t5,0x2
    2080:	3c010000 	lui	at,0x0
    2084:	002d0821 	addu	at,at,t5
    2088:	8c2d0000 	lw	t5,0(at)
    208c:	01a00008 	jr	t5
    2090:	00000000 	nop

00002094 <L809FA2E4>:
    2094:	8eca0304 	lw	t2,772(s6)
    2098:	24010003 	li	at,3
    209c:	15410073 	bne	t2,at,226c <L809FA4BC>
    20a0:	3c0141e8 	lui	at,0x41e8
    20a4:	44812000 	mtc1	at,$f4
    20a8:	c6c00164 	lwc1	$f0,356(s6)
    20ac:	3c01422c 	lui	at,0x422c
    20b0:	4600203c 	c.lt.s	$f4,$f0
    20b4:	00000000 	nop
    20b8:	4502006d 	bc1fl	2270 <L809FA4BC+0x4>
    20bc:	86cf0312 	lh	t7,786(s6)
    20c0:	44813000 	mtc1	at,$f6
    20c4:	02c02025 	move	a0,s6
    20c8:	4606003c 	c.lt.s	$f0,$f6
    20cc:	00000000 	nop
    20d0:	45020067 	bc1fl	2270 <L809FA4BC+0x4>
    20d4:	86cf0312 	lh	t7,786(s6)
    20d8:	0c000000 	jal	0 <func_809F8250>
    20dc:	02402825 	move	a1,s2
    20e0:	10000063 	b	2270 <L809FA4BC+0x4>
    20e4:	86cf0312 	lh	t7,786(s6)

000020e8 <L809FA338>:
    20e8:	27b100c0 	addiu	s1,sp,192
    20ec:	27b20148 	addiu	s2,sp,328
    20f0:	27b3009c 	addiu	s3,sp,156
    20f4:	27b40124 	addiu	s4,sp,292
    20f8:	27b50078 	addiu	s5,sp,120
    20fc:	27b00100 	addiu	s0,sp,256
    2100:	02202025 	move	a0,s1
    2104:	0c000000 	jal	0 <func_809F8250>
    2108:	02402825 	move	a1,s2
    210c:	02602025 	move	a0,s3
    2110:	0c000000 	jal	0 <func_809F8250>
    2114:	02802825 	move	a1,s4
    2118:	02a02025 	move	a0,s5
    211c:	0c000000 	jal	0 <func_809F8250>
    2120:	02002825 	move	a1,s0
    2124:	2610000c 	addiu	s0,s0,12
    2128:	27b90124 	addiu	t9,sp,292
    212c:	2631000c 	addiu	s1,s1,12
    2130:	2652000c 	addiu	s2,s2,12
    2134:	2673000c 	addiu	s3,s3,12
    2138:	2694000c 	addiu	s4,s4,12
    213c:	1619fff0 	bne	s0,t9,2100 <L809FA338+0x18>
    2140:	26b5000c 	addiu	s5,s5,12
    2144:	26d00454 	addiu	s0,s6,1108
    2148:	27b80160 	addiu	t8,sp,352
    214c:	afb80010 	sw	t8,16(sp)
    2150:	02002025 	move	a0,s0
    2154:	00002825 	move	a1,zero
    2158:	27a60148 	addiu	a2,sp,328
    215c:	0c000000 	jal	0 <func_809F8250>
    2160:	27a70154 	addiu	a3,sp,340
    2164:	27a8013c 	addiu	t0,sp,316
    2168:	afa80010 	sw	t0,16(sp)
    216c:	02002025 	move	a0,s0
    2170:	24050001 	li	a1,1
    2174:	27a60124 	addiu	a2,sp,292
    2178:	0c000000 	jal	0 <func_809F8250>
    217c:	27a70130 	addiu	a3,sp,304
    2180:	27a90118 	addiu	t1,sp,280
    2184:	afa90010 	sw	t1,16(sp)
    2188:	02002025 	move	a0,s0
    218c:	24050002 	li	a1,2
    2190:	27a60100 	addiu	a2,sp,256
    2194:	0c000000 	jal	0 <func_809F8250>
    2198:	27a7010c 	addiu	a3,sp,268
    219c:	27a4006c 	addiu	a0,sp,108
    21a0:	0c000000 	jal	0 <func_809F8250>
    21a4:	26c50334 	addiu	a1,s6,820
    21a8:	27a40060 	addiu	a0,sp,96
    21ac:	0c000000 	jal	0 <func_809F8250>
    21b0:	26c50340 	addiu	a1,s6,832
    21b4:	1000002e 	b	2270 <L809FA4BC+0x4>
    21b8:	86cf0312 	lh	t7,786(s6)

000021bc <L809FA40C>:
    21bc:	8ec20304 	lw	v0,772(s6)
    21c0:	14400015 	bnez	v0,2218 <L809FA40C+0x5c>
    21c4:	00000000 	nop
    21c8:	86ce030c 	lh	t6,780(s6)
    21cc:	27b000f4 	addiu	s0,sp,244
    21d0:	02202025 	move	a0,s1
    21d4:	29c10002 	slti	at,t6,2
    21d8:	1420000f 	bnez	at,2218 <L809FA40C+0x5c>
    21dc:	00000000 	nop
    21e0:	0c000000 	jal	0 <func_809F8250>
    21e4:	02002825 	move	a1,s0
    21e8:	27b100e8 	addiu	s1,sp,232
    21ec:	02202825 	move	a1,s1
    21f0:	0c000000 	jal	0 <func_809F8250>
    21f4:	27a40170 	addiu	a0,sp,368
    21f8:	0c000000 	jal	0 <func_809F8250>
    21fc:	8ec403d0 	lw	a0,976(s6)
    2200:	00402025 	move	a0,v0
    2204:	02002825 	move	a1,s0
    2208:	0c000000 	jal	0 <func_809F8250>
    220c:	02203025 	move	a2,s1
    2210:	10000017 	b	2270 <L809FA4BC+0x4>
    2214:	86cf0312 	lh	t7,786(s6)
    2218:	54400015 	bnezl	v0,2270 <L809FA4BC+0x4>
    221c:	86cf0312 	lh	t7,786(s6)
    2220:	86cc030c 	lh	t4,780(s6)
    2224:	51800012 	beqzl	t4,2270 <L809FA4BC+0x4>
    2228:	86cf0312 	lh	t7,786(s6)
    222c:	0c000000 	jal	0 <func_809F8250>
    2230:	8ec403d0 	lw	a0,976(s6)
    2234:	0c000000 	jal	0 <func_809F8250>
    2238:	00402025 	move	a0,v0
    223c:	1000000c 	b	2270 <L809FA4BC+0x4>
    2240:	86cf0312 	lh	t7,786(s6)

00002244 <L809FA494>:
    2244:	3c040000 	lui	a0,0x0
    2248:	24840000 	addiu	a0,a0,0
    224c:	0c000000 	jal	0 <func_809F8250>
    2250:	26c5031c 	addiu	a1,s6,796
    2254:	10000006 	b	2270 <L809FA4BC+0x4>
    2258:	86cf0312 	lh	t7,786(s6)

0000225c <L809FA4AC>:
    225c:	3c040000 	lui	a0,0x0
    2260:	24840000 	addiu	a0,a0,0
    2264:	0c000000 	jal	0 <func_809F8250>
    2268:	26c50328 	addiu	a1,s6,808

0000226c <L809FA4BC>:
    226c:	86cf0312 	lh	t7,786(s6)
    2270:	8fab0058 	lw	t3,88(sp)
    2274:	11e00026 	beqz	t7,2310 <L809FA540+0x20>
    2278:	256dfff9 	addiu	t5,t3,-7
    227c:	2da10017 	sltiu	at,t5,23
    2280:	1020001b 	beqz	at,22f0 <L809FA540>
    2284:	2402ffff 	li	v0,-1
    2288:	000d6880 	sll	t5,t5,0x2
    228c:	3c010000 	lui	at,0x0
    2290:	002d0821 	addu	at,at,t5
    2294:	8c2d0000 	lw	t5,0(at)
    2298:	01a00008 	jr	t5
    229c:	00000000 	nop

000022a0 <L809FA4F0>:
    22a0:	3c014496 	lui	at,0x4496
    22a4:	44814000 	mtc1	at,$f8
    22a8:	00001025 	move	v0,zero
    22ac:	10000010 	b	22f0 <L809FA540>
    22b0:	e7a80170 	swc1	$f8,368(sp)

000022b4 <L809FA504>:
    22b4:	1000000e 	b	22f0 <L809FA540>
    22b8:	24020001 	li	v0,1

000022bc <L809FA50C>:
    22bc:	1000000c 	b	22f0 <L809FA540>
    22c0:	24020002 	li	v0,2

000022c4 <L809FA514>:
    22c4:	1000000a 	b	22f0 <L809FA540>
    22c8:	24020003 	li	v0,3

000022cc <L809FA51C>:
    22cc:	10000008 	b	22f0 <L809FA540>
    22d0:	24020004 	li	v0,4

000022d4 <L809FA524>:
    22d4:	10000006 	b	22f0 <L809FA540>
    22d8:	24020005 	li	v0,5

000022dc <L809FA52C>:
    22dc:	10000004 	b	22f0 <L809FA540>
    22e0:	24020006 	li	v0,6

000022e4 <L809FA534>:
    22e4:	10000002 	b	22f0 <L809FA540>
    22e8:	24020007 	li	v0,7

000022ec <L809FA53C>:
    22ec:	24020008 	li	v0,8

000022f0 <L809FA540>:
    22f0:	04400007 	bltz	v0,2310 <L809FA540+0x20>
    22f4:	27a40170 	addiu	a0,sp,368
    22f8:	00025080 	sll	t2,v0,0x2
    22fc:	01425023 	subu	t2,t2,v0
    2300:	000a5080 	sll	t2,t2,0x2
    2304:	02ca2821 	addu	a1,s6,t2
    2308:	0c000000 	jal	0 <func_809F8250>
    230c:	24a50358 	addiu	a1,a1,856
    2310:	8fbf003c 	lw	ra,60(sp)
    2314:	8fb00020 	lw	s0,32(sp)
    2318:	8fb10024 	lw	s1,36(sp)
    231c:	8fb20028 	lw	s2,40(sp)
    2320:	8fb3002c 	lw	s3,44(sp)
    2324:	8fb40030 	lw	s4,48(sp)
    2328:	8fb50034 	lw	s5,52(sp)
    232c:	8fb60038 	lw	s6,56(sp)
    2330:	03e00008 	jr	ra
    2334:	27bd0188 	addiu	sp,sp,392

00002338 <EnDodongo_Draw>:
    2338:	27bdffc0 	addiu	sp,sp,-64
    233c:	afb00038 	sw	s0,56(sp)
    2340:	00808025 	move	s0,a0
    2344:	afbf003c 	sw	ra,60(sp)
    2348:	afa50044 	sw	a1,68(sp)
    234c:	0c000000 	jal	0 <func_809F8250>
    2350:	8ca40000 	lw	a0,0(a1)
    2354:	3c0f0000 	lui	t7,0x0
    2358:	25ef0000 	addiu	t7,t7,0
    235c:	8e050150 	lw	a1,336(s0)
    2360:	8e06016c 	lw	a2,364(s0)
    2364:	3c070000 	lui	a3,0x0
    2368:	24e70000 	addiu	a3,a3,0
    236c:	afb00014 	sw	s0,20(sp)
    2370:	afaf0010 	sw	t7,16(sp)
    2374:	0c000000 	jal	0 <func_809F8250>
    2378:	8fa40044 	lw	a0,68(sp)
    237c:	86180312 	lh	t8,786(s0)
    2380:	53000024 	beqzl	t8,2414 <EnDodongo_Draw+0xdc>
    2384:	8fbf003c 	lw	ra,60(sp)
    2388:	86090312 	lh	t1,786(s0)
    238c:	92190114 	lbu	t9,276(s0)
    2390:	02002825 	move	a1,s0
    2394:	252affff 	addiu	t2,t1,-1
    2398:	a60a0312 	sh	t2,786(s0)
    239c:	86030312 	lh	v1,786(s0)
    23a0:	27280001 	addiu	t0,t9,1
    23a4:	a2080114 	sb	t0,276(s0)
    23a8:	306b0003 	andi	t3,v1,0x3
    23ac:	15600018 	bnez	t3,2410 <EnDodongo_Draw+0xd8>
    23b0:	00031083 	sra	v0,v1,0x2
    23b4:	00026080 	sll	t4,v0,0x2
    23b8:	01826023 	subu	t4,t4,v0
    23bc:	3c010000 	lui	at,0x0
    23c0:	c4240000 	lwc1	$f4,0(at)
    23c4:	000c6080 	sll	t4,t4,0x2
    23c8:	020c3021 	addu	a2,s0,t4
    23cc:	240d0096 	li	t5,150
    23d0:	240e0096 	li	t6,150
    23d4:	240f00fa 	li	t7,250
    23d8:	241800eb 	li	t8,235
    23dc:	241900f5 	li	t9,245
    23e0:	240800ff 	li	t0,255
    23e4:	afa80024 	sw	t0,36(sp)
    23e8:	afb90020 	sw	t9,32(sp)
    23ec:	afb8001c 	sw	t8,28(sp)
    23f0:	afaf0018 	sw	t7,24(sp)
    23f4:	afae0014 	sw	t6,20(sp)
    23f8:	afad0010 	sw	t5,16(sp)
    23fc:	24c60358 	addiu	a2,a2,856
    2400:	8fa40044 	lw	a0,68(sp)
    2404:	24070096 	li	a3,150
    2408:	0c000000 	jal	0 <func_809F8250>
    240c:	e7a40028 	swc1	$f4,40(sp)
    2410:	8fbf003c 	lw	ra,60(sp)
    2414:	8fb00038 	lw	s0,56(sp)
    2418:	27bd0040 	addiu	sp,sp,64
    241c:	03e00008 	jr	ra
    2420:	00000000 	nop

00002424 <func_809FA674>:
    2424:	27bdffe8 	addiu	sp,sp,-24
    2428:	afbf0014 	sw	ra,20(sp)
    242c:	afa40018 	sw	a0,24(sp)
    2430:	afa5001c 	sw	a1,28(sp)
    2434:	afa60020 	sw	a2,32(sp)
    2438:	0c000000 	jal	0 <func_809F8250>
    243c:	87a4001a 	lh	a0,26(sp)
    2440:	c7a6001c 	lwc1	$f6,28(sp)
    2444:	8fa20020 	lw	v0,32(sp)
    2448:	46060202 	mul.s	$f8,$f0,$f6
    244c:	c4440000 	lwc1	$f4,0(v0)
    2450:	46082280 	add.s	$f10,$f4,$f8
    2454:	e44a0000 	swc1	$f10,0(v0)
    2458:	0c000000 	jal	0 <func_809F8250>
    245c:	87a4001a 	lh	a0,26(sp)
    2460:	c7b2001c 	lwc1	$f18,28(sp)
    2464:	8fa20020 	lw	v0,32(sp)
    2468:	46120182 	mul.s	$f6,$f0,$f18
    246c:	c4500008 	lwc1	$f16,8(v0)
    2470:	46068100 	add.s	$f4,$f16,$f6
    2474:	e4440008 	swc1	$f4,8(v0)
    2478:	8fbf0014 	lw	ra,20(sp)
    247c:	27bd0018 	addiu	sp,sp,24
    2480:	03e00008 	jr	ra
    2484:	00000000 	nop

00002488 <func_809FA6D8>:
    2488:	8ca31c4c 	lw	v1,7244(a1)
    248c:	3c014120 	lui	at,0x4120
    2490:	00001025 	move	v0,zero
    2494:	10600032 	beqz	v1,2560 <func_809FA6D8+0xd8>
    2498:	00000000 	nop
    249c:	44819000 	mtc1	at,$f18
    24a0:	3c0141a0 	lui	at,0x41a0
    24a4:	44818000 	mtc1	at,$f16
    24a8:	00000000 	nop
    24ac:	846e001c 	lh	t6,28(v1)
    24b0:	15c00004 	bnez	t6,24c4 <func_809FA6D8+0x3c>
    24b4:	00000000 	nop
    24b8:	8c6f0118 	lw	t7,280(v1)
    24bc:	51e00004 	beqzl	t7,24d0 <func_809FA6D8+0x48>
    24c0:	c4640024 	lwc1	$f4,36(v1)
    24c4:	10000024 	b	2558 <func_809FA6D8+0xd0>
    24c8:	8c630124 	lw	v1,292(v1)
    24cc:	c4640024 	lwc1	$f4,36(v1)
    24d0:	c4860334 	lwc1	$f6,820(a0)
    24d4:	c4680028 	lwc1	$f8,40(v1)
    24d8:	c48a0338 	lwc1	$f10,824(a0)
    24dc:	46062081 	sub.s	$f2,$f4,$f6
    24e0:	c486033c 	lwc1	$f6,828(a0)
    24e4:	c464002c 	lwc1	$f4,44(v1)
    24e8:	460a4301 	sub.s	$f12,$f8,$f10
    24ec:	46001005 	abs.s	$f0,$f2
    24f0:	46062381 	sub.s	$f14,$f4,$f6
    24f4:	4610003c 	c.lt.s	$f0,$f16
    24f8:	00000000 	nop
    24fc:	45020016 	bc1fl	2558 <func_809FA6D8+0xd0>
    2500:	8c630124 	lw	v1,292(v1)
    2504:	46006005 	abs.s	$f0,$f12
    2508:	4612003c 	c.lt.s	$f0,$f18
    250c:	00000000 	nop
    2510:	45020011 	bc1fl	2558 <func_809FA6D8+0xd0>
    2514:	8c630124 	lw	v1,292(v1)
    2518:	46007005 	abs.s	$f0,$f14
    251c:	4610003c 	c.lt.s	$f0,$f16
    2520:	00000000 	nop
    2524:	4502000c 	bc1fl	2558 <func_809FA6D8+0xd0>
    2528:	8c630124 	lw	v1,292(v1)
    252c:	84780000 	lh	t8,0(v1)
    2530:	24010010 	li	at,16
    2534:	24020001 	li	v0,1
    2538:	57010004 	bnel	t8,at,254c <func_809FA6D8+0xc4>
    253c:	ac830118 	sw	v1,280(a0)
    2540:	10000002 	b	254c <func_809FA6D8+0xc4>
    2544:	ac83011c 	sw	v1,284(a0)
    2548:	ac830118 	sw	v1,280(a0)
    254c:	03e00008 	jr	ra
    2550:	ac640118 	sw	a0,280(v1)
    2554:	8c630124 	lw	v1,292(v1)
    2558:	5460ffd5 	bnezl	v1,24b0 <func_809FA6D8+0x28>
    255c:	846e001c 	lh	t6,28(v1)
    2560:	03e00008 	jr	ra
    2564:	00000000 	nop
	...
