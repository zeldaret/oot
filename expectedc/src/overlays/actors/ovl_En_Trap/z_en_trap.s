
build/src/overlays/actors/ovl_En_Trap/z_en_trap.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTrap_Init>:
       0:	27bdffb0 	addiu	sp,sp,-80
       4:	afbf002c 	sw	ra,44(sp)
       8:	afb00028 	sw	s0,40(sp)
       c:	f7b40020 	sdc1	$f20,32(sp)
      10:	afa50054 	sw	a1,84(sp)
      14:	8482001c 	lh	v0,28(a0)
      18:	3c053dcc 	lui	a1,0x3dcc
      1c:	00808025 	move	s0,a0
      20:	00027203 	sra	t6,v0,0x8
      24:	31cf00ff 	andi	t7,t6,0xff
      28:	305800ff 	andi	t8,v0,0xff
      2c:	a48f0150 	sh	t7,336(a0)
      30:	a498001c 	sh	t8,28(a0)
      34:	0c000000 	jal	0 <EnTrap_Init>
      38:	34a5cccd 	ori	a1,a1,0xcccd
      3c:	8602001c 	lh	v0,28(s0)
      40:	3c01c000 	lui	at,0xc000
      44:	44812000 	mtc1	at,$f4
      48:	30590010 	andi	t9,v0,0x10
      4c:	1320000e 	beqz	t9,88 <EnTrap_Init+0x88>
      50:	e604006c 	swc1	$f4,108(s0)
      54:	86080150 	lh	t0,336(s0)
      58:	02002025 	move	a0,s0
      5c:	2405287d 	li	a1,10365
      60:	3109000f 	andi	t1,t0,0xf
      64:	44893000 	mtc1	t1,$f6
      68:	00000000 	nop
      6c:	46803020 	cvt.s.w	$f0,$f6
      70:	e600019c 	swc1	$f0,412(s0)
      74:	0c000000 	jal	0 <EnTrap_Init>
      78:	e6000068 	swc1	$f0,104(s0)
      7c:	260a0024 	addiu	t2,s0,36
      80:	100000ac 	b	334 <EnTrap_Init+0x334>
      84:	afaa0030 	sw	t2,48(sp)
      88:	304b0020 	andi	t3,v0,0x20
      8c:	1160001e 	beqz	t3,108 <EnTrap_Init+0x108>
      90:	02002825 	move	a1,s0
      94:	86020150 	lh	v0,336(s0)
      98:	3c014220 	lui	at,0x4220
      9c:	44818000 	mtc1	at,$f16
      a0:	304c000f 	andi	t4,v0,0xf
      a4:	448c4000 	mtc1	t4,$f8
      a8:	304d00f0 	andi	t5,v0,0xf0
      ac:	25ae0010 	addiu	t6,t5,16
      b0:	468042a0 	cvt.s.w	$f10,$f8
      b4:	000e7940 	sll	t7,t6,0x5
      b8:	a60f0150 	sh	t7,336(s0)
      bc:	00002025 	move	a0,zero
      c0:	46105482 	mul.s	$f18,$f10,$f16
      c4:	0c000000 	jal	0 <EnTrap_Init>
      c8:	e6120154 	swc1	$f18,340(s0)
      cc:	c6040154 	lwc1	$f4,340(s0)
      d0:	c6080008 	lwc1	$f8,8(s0)
      d4:	00002025 	move	a0,zero
      d8:	46040182 	mul.s	$f6,$f0,$f4
      dc:	46083280 	add.s	$f10,$f6,$f8
      e0:	0c000000 	jal	0 <EnTrap_Init>
      e4:	e60a0024 	swc1	$f10,36(s0)
      e8:	c6100154 	lwc1	$f16,340(s0)
      ec:	c6040010 	lwc1	$f4,16(s0)
      f0:	26180024 	addiu	t8,s0,36
      f4:	46100482 	mul.s	$f18,$f0,$f16
      f8:	46049180 	add.s	$f6,$f18,$f4
      fc:	e606002c 	swc1	$f6,44(s0)
     100:	1000008c 	b	334 <EnTrap_Init+0x334>
     104:	afb80030 	sw	t8,48(sp)
     108:	86020150 	lh	v0,336(s0)
     10c:	3c064120 	lui	a2,0x4120
     110:	240b001d 	li	t3,29
     114:	1040000b 	beqz	v0,144 <EnTrap_Init+0x144>
     118:	3049000f 	andi	t1,v0,0xf
     11c:	44895000 	mtc1	t1,$f10
     120:	0002c903 	sra	t9,v0,0x4
     124:	00194080 	sll	t0,t9,0x2
     128:	46805420 	cvt.s.w	$f16,$f10
     12c:	01194021 	addu	t0,t0,t9
     130:	000840c0 	sll	t0,t0,0x3
     134:	44884000 	mtc1	t0,$f8
     138:	e7b00048 	swc1	$f16,72(sp)
     13c:	10000008 	b	160 <EnTrap_Init+0x160>
     140:	46804520 	cvt.s.w	$f20,$f8
     144:	3c014348 	lui	at,0x4348
     148:	4481a000 	mtc1	at,$f20
     14c:	3c014120 	lui	at,0x4120
     150:	44819000 	mtc1	at,$f18
     154:	240a000f 	li	t2,15
     158:	e7b20048 	swc1	$f18,72(sp)
     15c:	a60a001c 	sh	t2,28(s0)
     160:	3c0141a0 	lui	at,0x41a0
     164:	44810000 	mtc1	at,$f0
     168:	8fa40054 	lw	a0,84(sp)
     16c:	afab0014 	sw	t3,20(sp)
     170:	44070000 	mfc1	a3,$f0
     174:	0c000000 	jal	0 <EnTrap_Init>
     178:	e7a00010 	swc1	$f0,16(sp)
     17c:	26020024 	addiu	v0,s0,36
     180:	8c4d0000 	lw	t5,0(v0)
     184:	86040032 	lh	a0,50(s0)
     188:	ae0d0008 	sw	t5,8(s0)
     18c:	8c4c0004 	lw	t4,4(v0)
     190:	ae0c000c 	sw	t4,12(s0)
     194:	8c4d0008 	lw	t5,8(v0)
     198:	ae0d0010 	sw	t5,16(s0)
     19c:	0c000000 	jal	0 <EnTrap_Init>
     1a0:	afa20030 	sw	v0,48(sp)
     1a4:	46140102 	mul.s	$f4,$f0,$f20
     1a8:	c6060024 	lwc1	$f6,36(s0)
     1ac:	86040032 	lh	a0,50(s0)
     1b0:	46062200 	add.s	$f8,$f4,$f6
     1b4:	0c000000 	jal	0 <EnTrap_Init>
     1b8:	e6080158 	swc1	$f8,344(s0)
     1bc:	46140402 	mul.s	$f16,$f0,$f20
     1c0:	c60a002c 	lwc1	$f10,44(s0)
     1c4:	86040032 	lh	a0,50(s0)
     1c8:	34018000 	li	at,0x8000
     1cc:	00812021 	addu	a0,a0,at
     1d0:	00042400 	sll	a0,a0,0x10
     1d4:	46105481 	sub.s	$f18,$f10,$f16
     1d8:	00042403 	sra	a0,a0,0x10
     1dc:	0c000000 	jal	0 <EnTrap_Init>
     1e0:	e6120160 	swc1	$f18,352(s0)
     1e4:	46140102 	mul.s	$f4,$f0,$f20
     1e8:	c6060024 	lwc1	$f6,36(s0)
     1ec:	86040032 	lh	a0,50(s0)
     1f0:	34018000 	li	at,0x8000
     1f4:	00812021 	addu	a0,a0,at
     1f8:	00042400 	sll	a0,a0,0x10
     1fc:	46062200 	add.s	$f8,$f4,$f6
     200:	00042403 	sra	a0,a0,0x10
     204:	0c000000 	jal	0 <EnTrap_Init>
     208:	e6080164 	swc1	$f8,356(s0)
     20c:	46140402 	mul.s	$f16,$f0,$f20
     210:	c60a002c 	lwc1	$f10,44(s0)
     214:	86040032 	lh	a0,50(s0)
     218:	46105481 	sub.s	$f18,$f10,$f16
     21c:	0c000000 	jal	0 <EnTrap_Init>
     220:	e612016c 	swc1	$f18,364(s0)
     224:	46140102 	mul.s	$f4,$f0,$f20
     228:	c6060024 	lwc1	$f6,36(s0)
     22c:	86040032 	lh	a0,50(s0)
     230:	46062200 	add.s	$f8,$f4,$f6
     234:	0c000000 	jal	0 <EnTrap_Init>
     238:	e6080170 	swc1	$f8,368(s0)
     23c:	46140282 	mul.s	$f10,$f0,$f20
     240:	c610002c 	lwc1	$f16,44(s0)
     244:	86040032 	lh	a0,50(s0)
     248:	34018000 	li	at,0x8000
     24c:	00812021 	addu	a0,a0,at
     250:	00042400 	sll	a0,a0,0x10
     254:	46105480 	add.s	$f18,$f10,$f16
     258:	00042403 	sra	a0,a0,0x10
     25c:	0c000000 	jal	0 <EnTrap_Init>
     260:	e6120178 	swc1	$f18,376(s0)
     264:	46140102 	mul.s	$f4,$f0,$f20
     268:	c6060024 	lwc1	$f6,36(s0)
     26c:	86040032 	lh	a0,50(s0)
     270:	34018000 	li	at,0x8000
     274:	00812021 	addu	a0,a0,at
     278:	00042400 	sll	a0,a0,0x10
     27c:	46062200 	add.s	$f8,$f4,$f6
     280:	00042403 	sra	a0,a0,0x10
     284:	0c000000 	jal	0 <EnTrap_Init>
     288:	e608017c 	swc1	$f8,380(s0)
     28c:	46140282 	mul.s	$f10,$f0,$f20
     290:	c610002c 	lwc1	$f16,44(s0)
     294:	86040032 	lh	a0,50(s0)
     298:	46105480 	add.s	$f18,$f10,$f16
     29c:	0c000000 	jal	0 <EnTrap_Init>
     2a0:	e6120184 	swc1	$f18,388(s0)
     2a4:	c7a40048 	lwc1	$f4,72(sp)
     2a8:	86040032 	lh	a0,50(s0)
     2ac:	46040182 	mul.s	$f6,$f0,$f4
     2b0:	4600320d 	trunc.w.s	$f8,$f6
     2b4:	44024000 	mfc1	v0,$f8
     2b8:	00000000 	nop
     2bc:	00021400 	sll	v0,v0,0x10
     2c0:	00021403 	sra	v0,v0,0x10
     2c4:	0c000000 	jal	0 <EnTrap_Init>
     2c8:	a7a20046 	sh	v0,70(sp)
     2cc:	c7aa0048 	lwc1	$f10,72(sp)
     2d0:	87a20046 	lh	v0,70(sp)
     2d4:	460a0402 	mul.s	$f16,$f0,$f10
     2d8:	4600848d 	trunc.w.s	$f18,$f16
     2dc:	44039000 	mfc1	v1,$f18
     2e0:	00000000 	nop
     2e4:	00032c00 	sll	a1,v1,0x10
     2e8:	04410004 	bgez	v0,2fc <EnTrap_Init+0x2fc>
     2ec:	00052c03 	sra	a1,a1,0x10
     2f0:	00021023 	negu	v0,v0
     2f4:	00021400 	sll	v0,v0,0x10
     2f8:	00021403 	sra	v0,v0,0x10
     2fc:	44822000 	mtc1	v0,$f4
     300:	00032400 	sll	a0,v1,0x10
     304:	00042403 	sra	a0,a0,0x10
     308:	04810004 	bgez	a0,31c <EnTrap_Init+0x31c>
     30c:	46802020 	cvt.s.w	$f0,$f4
     310:	00042823 	negu	a1,a0
     314:	00052c00 	sll	a1,a1,0x10
     318:	00052c03 	sra	a1,a1,0x10
     31c:	44853000 	mtc1	a1,$f6
     320:	e600019c 	swc1	$f0,412(s0)
     324:	e6000188 	swc1	$f0,392(s0)
     328:	468030a0 	cvt.s.w	$f2,$f6
     32c:	e6020194 	swc1	$f2,404(s0)
     330:	e6020190 	swc1	$f2,400(s0)
     334:	8fb80030 	lw	t8,48(sp)
     338:	260501a0 	addiu	a1,s0,416
     33c:	8f080000 	lw	t0,0(t8)
     340:	ae080038 	sw	t0,56(s0)
     344:	8f190004 	lw	t9,4(t8)
     348:	ae19003c 	sw	t9,60(s0)
     34c:	8f080008 	lw	t0,8(t8)
     350:	ae080040 	sw	t0,64(s0)
     354:	afa50034 	sw	a1,52(sp)
     358:	0c000000 	jal	0 <EnTrap_Init>
     35c:	8fa40054 	lw	a0,84(sp)
     360:	3c070000 	lui	a3,0x0
     364:	8fa50034 	lw	a1,52(sp)
     368:	24e70000 	addiu	a3,a3,0
     36c:	8fa40054 	lw	a0,84(sp)
     370:	0c000000 	jal	0 <EnTrap_Init>
     374:	02003025 	move	a2,s0
     378:	44800000 	mtc1	zero,$f0
     37c:	3c060000 	lui	a2,0x0
     380:	24c60000 	addiu	a2,a2,0
     384:	44050000 	mfc1	a1,$f0
     388:	44070000 	mfc1	a3,$f0
     38c:	0c000000 	jal	0 <EnTrap_Init>
     390:	260400b4 	addiu	a0,s0,180
     394:	24090003 	li	t1,3
     398:	240a00ff 	li	t2,255
     39c:	a209001f 	sb	t1,31(s0)
     3a0:	a20a00ae 	sb	t2,174(s0)
     3a4:	8fbf002c 	lw	ra,44(sp)
     3a8:	8fb00028 	lw	s0,40(sp)
     3ac:	d7b40020 	ldc1	$f20,32(sp)
     3b0:	03e00008 	jr	ra
     3b4:	27bd0050 	addiu	sp,sp,80

000003b8 <EnTrap_Destroy>:
     3b8:	27bdffe8 	addiu	sp,sp,-24
     3bc:	00803025 	move	a2,a0
     3c0:	afbf0014 	sw	ra,20(sp)
     3c4:	00a02025 	move	a0,a1
     3c8:	0c000000 	jal	0 <EnTrap_Init>
     3cc:	24c501a0 	addiu	a1,a2,416
     3d0:	8fbf0014 	lw	ra,20(sp)
     3d4:	27bd0018 	addiu	sp,sp,24
     3d8:	03e00008 	jr	ra
     3dc:	00000000 	nop

000003e0 <EnTrap_Update>:
     3e0:	27bdff58 	addiu	sp,sp,-168
     3e4:	afbf003c 	sw	ra,60(sp)
     3e8:	afb00038 	sw	s0,56(sp)
     3ec:	afa500ac 	sw	a1,172(sp)
     3f0:	848f0032 	lh	t7,50(a0)
     3f4:	848e007e 	lh	t6,126(a0)
     3f8:	908201b2 	lbu	v0,434(a0)
     3fc:	00808025 	move	s0,a0
     400:	01cf4023 	subu	t0,t6,t7
     404:	00084400 	sll	t0,t0,0x10
     408:	30580002 	andi	t8,v0,0x2
     40c:	00005025 	move	t2,zero
     410:	00005825 	move	t3,zero
     414:	13000011 	beqz	t8,45c <EnTrap_Update+0x7c>
     418:	00084403 	sra	t0,t0,0x10
     41c:	3059fffd 	andi	t9,v0,0xfffd
     420:	a09901b2 	sb	t9,434(a0)
     424:	8c8401ac 	lw	a0,428(a0)
     428:	a7a00090 	sh	zero,144(sp)
     42c:	a7a8008a 	sh	t0,138(sp)
     430:	26050024 	addiu	a1,s0,36
     434:	0c000000 	jal	0 <EnTrap_Init>
     438:	24840024 	addiu	a0,a0,36
     43c:	860c0032 	lh	t4,50(s0)
     440:	87a8008a 	lh	t0,138(sp)
     444:	87ab0090 	lh	t3,144(sp)
     448:	004c4821 	addu	t1,v0,t4
     44c:	00094c00 	sll	t1,t1,0x10
     450:	00094c03 	sra	t1,t1,0x10
     454:	a7a90094 	sh	t1,148(sp)
     458:	240a0001 	li	t2,1
     45c:	920d01b1 	lbu	t5,433(s0)
     460:	87a90094 	lh	t1,148(sp)
     464:	31ae0002 	andi	t6,t5,0x2
     468:	51c0006e 	beqzl	t6,624 <EnTrap_Update+0x244>
     46c:	920f0114 	lbu	t7,276(s0)
     470:	8e190024 	lw	t9,36(s0)
     474:	27af007c 	addiu	t7,sp,124
     478:	240e00fa 	li	t6,250
     47c:	adf90000 	sw	t9,0(t7)
     480:	8e180028 	lw	t8,40(s0)
     484:	02002025 	move	a0,s0
     488:	00002825 	move	a1,zero
     48c:	adf80004 	sw	t8,4(t7)
     490:	8e19002c 	lw	t9,44(s0)
     494:	240600fa 	li	a2,250
     498:	00003825 	move	a3,zero
     49c:	adf90008 	sw	t9,8(t7)
     4a0:	920c01b1 	lbu	t4,433(s0)
     4a4:	318dfffd 	andi	t5,t4,0xfffd
     4a8:	a20d01b1 	sb	t5,433(s0)
     4ac:	a7ab0090 	sh	t3,144(sp)
     4b0:	a7aa0092 	sh	t2,146(sp)
     4b4:	a7a90094 	sh	t1,148(sp)
     4b8:	a7a8008a 	sh	t0,138(sp)
     4bc:	0c000000 	jal	0 <EnTrap_Init>
     4c0:	afae0010 	sw	t6,16(sp)
     4c4:	3c014120 	lui	at,0x4120
     4c8:	44810000 	mtc1	at,$f0
     4cc:	c7a40080 	lwc1	$f4,128(sp)
     4d0:	c7a80084 	lwc1	$f8,132(sp)
     4d4:	3c010000 	lui	at,0x0
     4d8:	46002180 	add.s	$f6,$f4,$f0
     4dc:	c4300000 	lwc1	$f16,0(at)
     4e0:	240f0096 	li	t7,150
     4e4:	46004280 	add.s	$f10,$f8,$f0
     4e8:	24180096 	li	t8,150
     4ec:	241900fa 	li	t9,250
     4f0:	240c00eb 	li	t4,235
     4f4:	240d00f5 	li	t5,245
     4f8:	240e00ff 	li	t6,255
     4fc:	e7a60080 	swc1	$f6,128(sp)
     500:	e7aa0084 	swc1	$f10,132(sp)
     504:	afae0024 	sw	t6,36(sp)
     508:	afad0020 	sw	t5,32(sp)
     50c:	afac001c 	sw	t4,28(sp)
     510:	afb90018 	sw	t9,24(sp)
     514:	afb80014 	sw	t8,20(sp)
     518:	afaf0010 	sw	t7,16(sp)
     51c:	8fa400ac 	lw	a0,172(sp)
     520:	02002825 	move	a1,s0
     524:	27a6007c 	addiu	a2,sp,124
     528:	24070096 	li	a3,150
     52c:	0c000000 	jal	0 <EnTrap_Init>
     530:	e7b00028 	swc1	$f16,40(sp)
     534:	3c014120 	lui	at,0x4120
     538:	44812000 	mtc1	at,$f4
     53c:	c7b2007c 	lwc1	$f18,124(sp)
     540:	3c0141a0 	lui	at,0x41a0
     544:	44815000 	mtc1	at,$f10
     548:	c7a80084 	lwc1	$f8,132(sp)
     54c:	46049180 	add.s	$f6,$f18,$f4
     550:	3c010000 	lui	at,0x0
     554:	c4320000 	lwc1	$f18,0(at)
     558:	460a4401 	sub.s	$f16,$f8,$f10
     55c:	240f0096 	li	t7,150
     560:	24180096 	li	t8,150
     564:	241900fa 	li	t9,250
     568:	240c00eb 	li	t4,235
     56c:	240d00f5 	li	t5,245
     570:	240e00ff 	li	t6,255
     574:	e7a6007c 	swc1	$f6,124(sp)
     578:	e7b00084 	swc1	$f16,132(sp)
     57c:	afae0024 	sw	t6,36(sp)
     580:	afad0020 	sw	t5,32(sp)
     584:	afac001c 	sw	t4,28(sp)
     588:	afb90018 	sw	t9,24(sp)
     58c:	afb80014 	sw	t8,20(sp)
     590:	afaf0010 	sw	t7,16(sp)
     594:	8fa400ac 	lw	a0,172(sp)
     598:	02002825 	move	a1,s0
     59c:	27a6007c 	addiu	a2,sp,124
     5a0:	24070096 	li	a3,150
     5a4:	0c000000 	jal	0 <EnTrap_Init>
     5a8:	e7b20028 	swc1	$f18,40(sp)
     5ac:	3c0141a0 	lui	at,0x41a0
     5b0:	44813000 	mtc1	at,$f6
     5b4:	c7a4007c 	lwc1	$f4,124(sp)
     5b8:	3c010000 	lui	at,0x0
     5bc:	c42a0000 	lwc1	$f10,0(at)
     5c0:	46062201 	sub.s	$f8,$f4,$f6
     5c4:	240f0096 	li	t7,150
     5c8:	24180096 	li	t8,150
     5cc:	241900fa 	li	t9,250
     5d0:	240c00eb 	li	t4,235
     5d4:	240d00f5 	li	t5,245
     5d8:	240e00ff 	li	t6,255
     5dc:	e7a8007c 	swc1	$f8,124(sp)
     5e0:	afae0024 	sw	t6,36(sp)
     5e4:	afad0020 	sw	t5,32(sp)
     5e8:	afac001c 	sw	t4,28(sp)
     5ec:	afb90018 	sw	t9,24(sp)
     5f0:	afb80014 	sw	t8,20(sp)
     5f4:	afaf0010 	sw	t7,16(sp)
     5f8:	8fa400ac 	lw	a0,172(sp)
     5fc:	02002825 	move	a1,s0
     600:	27a6007c 	addiu	a2,sp,124
     604:	24070096 	li	a3,150
     608:	0c000000 	jal	0 <EnTrap_Init>
     60c:	e7aa0028 	swc1	$f10,40(sp)
     610:	87a8008a 	lh	t0,138(sp)
     614:	87a90094 	lh	t1,148(sp)
     618:	87aa0092 	lh	t2,146(sp)
     61c:	87ab0090 	lh	t3,144(sp)
     620:	920f0114 	lbu	t7,276(s0)
     624:	3c014220 	lui	at,0x4220
     628:	55e002bb 	bnezl	t7,1118 <EnTrap_Update+0xd38>
     62c:	260501a0 	addiu	a1,s0,416
     630:	8e02014c 	lw	v0,332(s0)
     634:	44818000 	mtc1	at,$f16
     638:	10400002 	beqz	v0,644 <EnTrap_Update+0x264>
     63c:	2458ffff 	addiu	t8,v0,-1
     640:	ae18014c 	sw	t8,332(s0)
     644:	c6120090 	lwc1	$f18,144(s0)
     648:	4610903e 	c.le.s	$f18,$f16
     64c:	00000000 	nop
     650:	45020037 	bc1fl	730 <EnTrap_Update+0x350>
     654:	8602001c 	lh	v0,28(s0)
     658:	8e19014c 	lw	t9,332(s0)
     65c:	3c0141a0 	lui	at,0x41a0
     660:	57200033 	bnezl	t9,730 <EnTrap_Update+0x350>
     664:	8602001c 	lh	v0,28(s0)
     668:	44812000 	mtc1	at,$f4
     66c:	c6060094 	lwc1	$f6,148(s0)
     670:	4604303e 	c.le.s	$f6,$f4
     674:	00000000 	nop
     678:	4502002d 	bc1fl	730 <EnTrap_Update+0x350>
     67c:	8602001c 	lh	v0,28(s0)
     680:	860c001c 	lh	t4,28(s0)
     684:	318d0030 	andi	t5,t4,0x30
     688:	55a0000e 	bnezl	t5,6c4 <EnTrap_Update+0x2e4>
     68c:	860e008a 	lh	t6,138(s0)
     690:	86070152 	lh	a3,338(s0)
     694:	860e008a 	lh	t6,138(s0)
     698:	24ecc000 	addiu	t4,a3,-16384
     69c:	00ee7823 	subu	t7,a3,t6
     6a0:	000fc400 	sll	t8,t7,0x10
     6a4:	0018cc03 	sra	t9,t8,0x10
     6a8:	07200003 	bltz	t9,6b8 <EnTrap_Update+0x2d8>
     6ac:	24ed4000 	addiu	t5,a3,16384
     6b0:	10000005 	b	6c8 <EnTrap_Update+0x2e8>
     6b4:	a7ac0096 	sh	t4,150(sp)
     6b8:	10000003 	b	6c8 <EnTrap_Update+0x2e8>
     6bc:	a7ad0096 	sh	t5,150(sp)
     6c0:	860e008a 	lh	t6,138(s0)
     6c4:	a7ae0096 	sh	t6,150(sp)
     6c8:	8fa400ac 	lw	a0,172(sp)
     6cc:	3c190001 	lui	t9,0x1
     6d0:	a7a8008a 	sh	t0,138(sp)
     6d4:	a7a90094 	sh	t1,148(sp)
     6d8:	a7aa0092 	sh	t2,146(sp)
     6dc:	a7ab0090 	sh	t3,144(sp)
     6e0:	0324c821 	addu	t9,t9,a0
     6e4:	8f391d58 	lw	t9,7512(t9)
     6e8:	2405fffc 	li	a1,-4
     6ec:	0320f809 	jalr	t9
     6f0:	00000000 	nop
     6f4:	3c0140c0 	lui	at,0x40c0
     6f8:	44810000 	mtc1	at,$f0
     6fc:	8fa400ac 	lw	a0,172(sp)
     700:	02002825 	move	a1,s0
     704:	44060000 	mfc1	a2,$f0
     708:	87a70096 	lh	a3,150(sp)
     70c:	0c000000 	jal	0 <EnTrap_Init>
     710:	e7a00010 	swc1	$f0,16(sp)
     714:	87a8008a 	lh	t0,138(sp)
     718:	87a90094 	lh	t1,148(sp)
     71c:	87aa0092 	lh	t2,146(sp)
     720:	87ab0090 	lh	t3,144(sp)
     724:	2418000f 	li	t8,15
     728:	ae18014c 	sw	t8,332(s0)
     72c:	8602001c 	lh	v0,28(s0)
     730:	304c0010 	andi	t4,v0,0x10
     734:	51800069 	beqzl	t4,8dc <EnTrap_Update+0x4fc>
     738:	304c0020 	andi	t4,v0,0x20
     73c:	960d0088 	lhu	t5,136(s0)
     740:	3c013f80 	lui	at,0x3f80
     744:	44814000 	mtc1	at,$f8
     748:	31ae0008 	andi	t6,t5,0x8
     74c:	11c0000b 	beqz	t6,77c <EnTrap_Update+0x39c>
     750:	e6080154 	swc1	$f8,340(s0)
     754:	05000003 	bltz	t0,764 <EnTrap_Update+0x384>
     758:	00081823 	negu	v1,t0
     75c:	10000001 	b	764 <EnTrap_Update+0x384>
     760:	01001825 	move	v1,t0
     764:	28616000 	slti	at,v1,24576
     768:	54200005 	bnezl	at,780 <EnTrap_Update+0x3a0>
     76c:	44801000 	mtc1	zero,$f2
     770:	44801000 	mtc1	zero,$f2
     774:	00000000 	nop
     778:	e6020154 	swc1	$f2,340(s0)
     77c:	44801000 	mtc1	zero,$f2
     780:	c60a0154 	lwc1	$f10,340(s0)
     784:	260f0024 	addiu	t7,s0,36
     788:	460a1032 	c.eq.s	$f2,$f10
     78c:	00000000 	nop
     790:	4501002b 	bc1t	840 <EnTrap_Update+0x460>
     794:	00000000 	nop
     798:	86040032 	lh	a0,50(s0)
     79c:	a7aa0092 	sh	t2,146(sp)
     7a0:	0c000000 	jal	0 <EnTrap_Init>
     7a4:	afaf0048 	sw	t7,72(sp)
     7a8:	3c0141f0 	lui	at,0x41f0
     7ac:	44818000 	mtc1	at,$f16
     7b0:	c6040024 	lwc1	$f4,36(s0)
     7b4:	46100482 	mul.s	$f18,$f0,$f16
     7b8:	46049180 	add.s	$f6,$f18,$f4
     7bc:	e7a60070 	swc1	$f6,112(sp)
     7c0:	0c000000 	jal	0 <EnTrap_Init>
     7c4:	86040032 	lh	a0,50(s0)
     7c8:	3c0141f0 	lui	at,0x41f0
     7cc:	44814000 	mtc1	at,$f8
     7d0:	c610002c 	lwc1	$f16,44(s0)
     7d4:	8fa400ac 	lw	a0,172(sp)
     7d8:	46080282 	mul.s	$f10,$f0,$f8
     7dc:	27b90060 	addiu	t9,sp,96
     7e0:	24180001 	li	t8,1
     7e4:	240c0001 	li	t4,1
     7e8:	240d0001 	li	t5,1
     7ec:	27ae005c 	addiu	t6,sp,92
     7f0:	8fa50048 	lw	a1,72(sp)
     7f4:	46105480 	add.s	$f18,$f10,$f16
     7f8:	27a60070 	addiu	a2,sp,112
     7fc:	27a70064 	addiu	a3,sp,100
     800:	248407c0 	addiu	a0,a0,1984
     804:	e7b20078 	swc1	$f18,120(sp)
     808:	c6040028 	lwc1	$f4,40(s0)
     80c:	afae0024 	sw	t6,36(sp)
     810:	afad0020 	sw	t5,32(sp)
     814:	afa0001c 	sw	zero,28(sp)
     818:	afac0018 	sw	t4,24(sp)
     81c:	afb80014 	sw	t8,20(sp)
     820:	afb90010 	sw	t9,16(sp)
     824:	0c000000 	jal	0 <EnTrap_Init>
     828:	e7a40074 	swc1	$f4,116(sp)
     82c:	44801000 	mtc1	zero,$f2
     830:	24010001 	li	at,1
     834:	14410002 	bne	v0,at,840 <EnTrap_Update+0x460>
     838:	87aa0092 	lh	t2,146(sp)
     83c:	e6020154 	swc1	$f2,340(s0)
     840:	51400018 	beqzl	t2,8a4 <EnTrap_Update+0x4c4>
     844:	c6080154 	lwc1	$f8,340(s0)
     848:	c6060154 	lwc1	$f6,340(s0)
     84c:	46061032 	c.eq.s	$f2,$f6
     850:	00000000 	nop
     854:	45030013 	bc1tl	8a4 <EnTrap_Update+0x4c4>
     858:	c6080154 	lwc1	$f8,340(s0)
     85c:	8e0501ac 	lw	a1,428(s0)
     860:	26040024 	addiu	a0,s0,36
     864:	0c000000 	jal	0 <EnTrap_Init>
     868:	24a50024 	addiu	a1,a1,36
     86c:	860f0032 	lh	t7,50(s0)
     870:	44801000 	mtc1	zero,$f2
     874:	004f4823 	subu	t1,v0,t7
     878:	00094c00 	sll	t1,t1,0x10
     87c:	00094c03 	sra	t1,t1,0x10
     880:	05200003 	bltz	t1,890 <EnTrap_Update+0x4b0>
     884:	00091823 	negu	v1,t1
     888:	10000001 	b	890 <EnTrap_Update+0x4b0>
     88c:	01201825 	move	v1,t1
     890:	28611000 	slti	at,v1,4096
     894:	50200003 	beqzl	at,8a4 <EnTrap_Update+0x4c4>
     898:	c6080154 	lwc1	$f8,340(s0)
     89c:	e6020154 	swc1	$f2,340(s0)
     8a0:	c6080154 	lwc1	$f8,340(s0)
     8a4:	34018000 	li	at,0x8000
     8a8:	46081032 	c.eq.s	$f2,$f8
     8ac:	00000000 	nop
     8b0:	450001fa 	bc1f	109c <EnTrap_Update+0xcbc>
     8b4:	00000000 	nop
     8b8:	86190032 	lh	t9,50(s0)
     8bc:	02002025 	move	a0,s0
     8c0:	2405287d 	li	a1,10365
     8c4:	0321c021 	addu	t8,t9,at
     8c8:	0c000000 	jal	0 <EnTrap_Init>
     8cc:	a6180032 	sh	t8,50(s0)
     8d0:	100001f2 	b	109c <EnTrap_Update+0xcbc>
     8d4:	00000000 	nop
     8d8:	304c0020 	andi	t4,v0,0x20
     8dc:	1180002e 	beqz	t4,998 <EnTrap_Update+0x5b8>
     8e0:	260d0024 	addiu	t5,s0,36
     8e4:	86040152 	lh	a0,338(s0)
     8e8:	0c000000 	jal	0 <EnTrap_Init>
     8ec:	afad0048 	sw	t5,72(sp)
     8f0:	44801000 	mtc1	zero,$f2
     8f4:	860e0152 	lh	t6,338(s0)
     8f8:	860f0150 	lh	t7,336(s0)
     8fc:	4602003c 	c.lt.s	$f0,$f2
     900:	01cfc821 	addu	t9,t6,t7
     904:	a6190152 	sh	t9,338(s0)
     908:	4500000b 	bc1f	938 <EnTrap_Update+0x558>
     90c:	00000000 	nop
     910:	0c000000 	jal	0 <EnTrap_Init>
     914:	86040152 	lh	a0,338(s0)
     918:	44801000 	mtc1	zero,$f2
     91c:	02002025 	move	a0,s0
     920:	4600103e 	c.le.s	$f2,$f0
     924:	00000000 	nop
     928:	45000003 	bc1f	938 <EnTrap_Update+0x558>
     92c:	00000000 	nop
     930:	0c000000 	jal	0 <EnTrap_Init>
     934:	240528d2 	li	a1,10450
     938:	0c000000 	jal	0 <EnTrap_Init>
     93c:	86040152 	lh	a0,338(s0)
     940:	c60a0154 	lwc1	$f10,340(s0)
     944:	c6120008 	lwc1	$f18,8(s0)
     948:	86040152 	lh	a0,338(s0)
     94c:	460a0402 	mul.s	$f16,$f0,$f10
     950:	46128100 	add.s	$f4,$f16,$f18
     954:	0c000000 	jal	0 <EnTrap_Init>
     958:	e6040024 	swc1	$f4,36(s0)
     95c:	c6060154 	lwc1	$f6,340(s0)
     960:	c60a0010 	lwc1	$f10,16(s0)
     964:	c6120080 	lwc1	$f18,128(s0)
     968:	46060202 	mul.s	$f8,$f0,$f6
     96c:	e6120028 	swc1	$f18,40(s0)
     970:	460a4400 	add.s	$f16,$f8,$f10
     974:	e610002c 	swc1	$f16,44(s0)
     978:	8fb80048 	lw	t8,72(sp)
     97c:	8f0d0000 	lw	t5,0(t8)
     980:	ae0d0100 	sw	t5,256(s0)
     984:	8f0c0004 	lw	t4,4(t8)
     988:	ae0c0104 	sw	t4,260(s0)
     98c:	8f0d0008 	lw	t5,8(t8)
     990:	100001c2 	b	109c <EnTrap_Update+0xcbc>
     994:	ae0d0108 	sw	t5,264(s0)
     998:	44801000 	mtc1	zero,$f2
     99c:	c6000154 	lwc1	$f0,340(s0)
     9a0:	46001032 	c.eq.s	$f2,$f0
     9a4:	00000000 	nop
     9a8:	45030120 	bc1tl	e2c <EnTrap_Update+0xa4c>
     9ac:	c6040008 	lwc1	$f4,8(s0)
     9b0:	86070152 	lh	a3,338(s0)
     9b4:	24018000 	li	at,-32768
     9b8:	30590002 	andi	t9,v0,0x2
     9bc:	10e1008d 	beq	a3,at,bf4 <EnTrap_Update+0x814>
     9c0:	2401c000 	li	at,-16384
     9c4:	10e100d0 	beq	a3,at,d08 <EnTrap_Update+0x928>
     9c8:	304e0008 	andi	t6,v0,0x8
     9cc:	10e00006 	beqz	a3,9e8 <EnTrap_Update+0x608>
     9d0:	304e0001 	andi	t6,v0,0x1
     9d4:	24014000 	li	at,16384
     9d8:	10e10046 	beq	a3,at,af4 <EnTrap_Update+0x714>
     9dc:	304c0004 	andi	t4,v0,0x4
     9e0:	10000109 	b	e08 <EnTrap_Update+0xa28>
     9e4:	02002025 	move	a0,s0
     9e8:	55c00005 	bnezl	t6,a00 <EnTrap_Update+0x620>
     9ec:	960f0088 	lhu	t7,136(s0)
     9f0:	e6020154 	swc1	$f2,340(s0)
     9f4:	1000000e 	b	a30 <EnTrap_Update+0x650>
     9f8:	c6000154 	lwc1	$f0,340(s0)
     9fc:	960f0088 	lhu	t7,136(s0)
     a00:	31f90008 	andi	t9,t7,0x8
     a04:	1320000a 	beqz	t9,a30 <EnTrap_Update+0x650>
     a08:	00000000 	nop
     a0c:	05000003 	bltz	t0,a1c <EnTrap_Update+0x63c>
     a10:	00081823 	negu	v1,t0
     a14:	10000001 	b	a1c <EnTrap_Update+0x63c>
     a18:	01001825 	move	v1,t0
     a1c:	28616001 	slti	at,v1,24577
     a20:	14200003 	bnez	at,a30 <EnTrap_Update+0x650>
     a24:	00000000 	nop
     a28:	e6020154 	swc1	$f2,340(s0)
     a2c:	c6000154 	lwc1	$f0,340(s0)
     a30:	5140000f 	beqzl	t2,a70 <EnTrap_Update+0x690>
     a34:	46001032 	c.eq.s	$f2,$f0
     a38:	46001032 	c.eq.s	$f2,$f0
     a3c:	00000000 	nop
     a40:	4503000b 	bc1tl	a70 <EnTrap_Update+0x690>
     a44:	46001032 	c.eq.s	$f2,$f0
     a48:	05200003 	bltz	t1,a58 <EnTrap_Update+0x678>
     a4c:	00091823 	negu	v1,t1
     a50:	10000001 	b	a58 <EnTrap_Update+0x678>
     a54:	01201825 	move	v1,t1
     a58:	28616001 	slti	at,v1,24577
     a5c:	54200004 	bnezl	at,a70 <EnTrap_Update+0x690>
     a60:	46001032 	c.eq.s	$f2,$f0
     a64:	e6020154 	swc1	$f2,340(s0)
     a68:	c6000154 	lwc1	$f0,340(s0)
     a6c:	46001032 	c.eq.s	$f2,$f0
     a70:	3c010000 	lui	at,0x0
     a74:	4501001d 	bc1t	aec <EnTrap_Update+0x70c>
     a78:	00000000 	nop
     a7c:	c4240000 	lwc1	$f4,0(at)
     a80:	26180024 	addiu	t8,s0,36
     a84:	afb80048 	sw	t8,72(sp)
     a88:	46002032 	c.eq.s	$f4,$f0
     a8c:	02002025 	move	a0,s0
     a90:	45020006 	bc1fl	aac <EnTrap_Update+0x6cc>
     a94:	8e050178 	lw	a1,376(s0)
     a98:	0c000000 	jal	0 <EnTrap_Init>
     a9c:	2405287d 	li	a1,10365
     aa0:	44801000 	mtc1	zero,$f2
     aa4:	00000000 	nop
     aa8:	8e050178 	lw	a1,376(s0)
     aac:	8e07019c 	lw	a3,412(s0)
     ab0:	e7a20010 	swc1	$f2,16(sp)
     ab4:	2604002c 	addiu	a0,s0,44
     ab8:	0c000000 	jal	0 <EnTrap_Init>
     abc:	3c063f80 	lui	a2,0x3f80
     ac0:	44801000 	mtc1	zero,$f2
     ac4:	e6000154 	swc1	$f0,340(s0)
     ac8:	8e050170 	lw	a1,368(s0)
     acc:	8e070194 	lw	a3,404(s0)
     ad0:	8fa40048 	lw	a0,72(sp)
     ad4:	3c063f80 	lui	a2,0x3f80
     ad8:	0c000000 	jal	0 <EnTrap_Init>
     adc:	e7a20010 	swc1	$f2,16(sp)
     ae0:	c6060154 	lwc1	$f6,340(s0)
     ae4:	46003200 	add.s	$f8,$f6,$f0
     ae8:	e6080154 	swc1	$f8,340(s0)
     aec:	100000c5 	b	e04 <EnTrap_Update+0xa24>
     af0:	86070152 	lh	a3,338(s0)
     af4:	55800005 	bnezl	t4,b0c <EnTrap_Update+0x72c>
     af8:	960d0088 	lhu	t5,136(s0)
     afc:	e6020154 	swc1	$f2,340(s0)
     b00:	1000000d 	b	b38 <EnTrap_Update+0x758>
     b04:	c6000154 	lwc1	$f0,340(s0)
     b08:	960d0088 	lhu	t5,136(s0)
     b0c:	2901e000 	slti	at,t0,-8192
     b10:	31ae0008 	andi	t6,t5,0x8
     b14:	11c00008 	beqz	t6,b38 <EnTrap_Update+0x758>
     b18:	00000000 	nop
     b1c:	10200006 	beqz	at,b38 <EnTrap_Update+0x758>
     b20:	2901a001 	slti	at,t0,-24575
     b24:	14200004 	bnez	at,b38 <EnTrap_Update+0x758>
     b28:	00000000 	nop
     b2c:	e6020154 	swc1	$f2,340(s0)
     b30:	100000b4 	b	e04 <EnTrap_Update+0xa24>
     b34:	86070152 	lh	a3,338(s0)
     b38:	5140000d 	beqzl	t2,b70 <EnTrap_Update+0x790>
     b3c:	46001032 	c.eq.s	$f2,$f0
     b40:	46001032 	c.eq.s	$f2,$f0
     b44:	2921e001 	slti	at,t1,-8191
     b48:	45030009 	bc1tl	b70 <EnTrap_Update+0x790>
     b4c:	46001032 	c.eq.s	$f2,$f0
     b50:	10200006 	beqz	at,b6c <EnTrap_Update+0x78c>
     b54:	2921a001 	slti	at,t1,-24575
     b58:	54200005 	bnezl	at,b70 <EnTrap_Update+0x790>
     b5c:	46001032 	c.eq.s	$f2,$f0
     b60:	e6020154 	swc1	$f2,340(s0)
     b64:	100000a7 	b	e04 <EnTrap_Update+0xa24>
     b68:	86070152 	lh	a3,338(s0)
     b6c:	46001032 	c.eq.s	$f2,$f0
     b70:	3c010000 	lui	at,0x0
     b74:	4501001d 	bc1t	bec <EnTrap_Update+0x80c>
     b78:	00000000 	nop
     b7c:	c42a0000 	lwc1	$f10,0(at)
     b80:	260f0024 	addiu	t7,s0,36
     b84:	afaf0048 	sw	t7,72(sp)
     b88:	46005032 	c.eq.s	$f10,$f0
     b8c:	02002025 	move	a0,s0
     b90:	45020006 	bc1fl	bac <EnTrap_Update+0x7cc>
     b94:	8e050158 	lw	a1,344(s0)
     b98:	0c000000 	jal	0 <EnTrap_Init>
     b9c:	2405287d 	li	a1,10365
     ba0:	44801000 	mtc1	zero,$f2
     ba4:	00000000 	nop
     ba8:	8e050158 	lw	a1,344(s0)
     bac:	8e070188 	lw	a3,392(s0)
     bb0:	e7a20010 	swc1	$f2,16(sp)
     bb4:	8fa40048 	lw	a0,72(sp)
     bb8:	0c000000 	jal	0 <EnTrap_Init>
     bbc:	3c063f80 	lui	a2,0x3f80
     bc0:	44801000 	mtc1	zero,$f2
     bc4:	e6000154 	swc1	$f0,340(s0)
     bc8:	8e050160 	lw	a1,352(s0)
     bcc:	8e070190 	lw	a3,400(s0)
     bd0:	2604002c 	addiu	a0,s0,44
     bd4:	3c063f80 	lui	a2,0x3f80
     bd8:	0c000000 	jal	0 <EnTrap_Init>
     bdc:	e7a20010 	swc1	$f2,16(sp)
     be0:	c6100154 	lwc1	$f16,340(s0)
     be4:	46008480 	add.s	$f18,$f16,$f0
     be8:	e6120154 	swc1	$f18,340(s0)
     bec:	10000085 	b	e04 <EnTrap_Update+0xa24>
     bf0:	86070152 	lh	a3,338(s0)
     bf4:	57200005 	bnezl	t9,c0c <EnTrap_Update+0x82c>
     bf8:	96180088 	lhu	t8,136(s0)
     bfc:	e6020154 	swc1	$f2,340(s0)
     c00:	1000000f 	b	c40 <EnTrap_Update+0x860>
     c04:	c6000154 	lwc1	$f0,340(s0)
     c08:	96180088 	lhu	t8,136(s0)
     c0c:	330c0008 	andi	t4,t8,0x8
     c10:	1180000b 	beqz	t4,c40 <EnTrap_Update+0x860>
     c14:	00000000 	nop
     c18:	05000003 	bltz	t0,c28 <EnTrap_Update+0x848>
     c1c:	00081823 	negu	v1,t0
     c20:	10000001 	b	c28 <EnTrap_Update+0x848>
     c24:	01001825 	move	v1,t0
     c28:	28612000 	slti	at,v1,8192
     c2c:	10200004 	beqz	at,c40 <EnTrap_Update+0x860>
     c30:	00000000 	nop
     c34:	e6020154 	swc1	$f2,340(s0)
     c38:	10000072 	b	e04 <EnTrap_Update+0xa24>
     c3c:	86070152 	lh	a3,338(s0)
     c40:	51400010 	beqzl	t2,c84 <EnTrap_Update+0x8a4>
     c44:	46001032 	c.eq.s	$f2,$f0
     c48:	46001032 	c.eq.s	$f2,$f0
     c4c:	00000000 	nop
     c50:	4503000c 	bc1tl	c84 <EnTrap_Update+0x8a4>
     c54:	46001032 	c.eq.s	$f2,$f0
     c58:	05200003 	bltz	t1,c68 <EnTrap_Update+0x888>
     c5c:	00091823 	negu	v1,t1
     c60:	10000001 	b	c68 <EnTrap_Update+0x888>
     c64:	01201825 	move	v1,t1
     c68:	28612000 	slti	at,v1,8192
     c6c:	50200005 	beqzl	at,c84 <EnTrap_Update+0x8a4>
     c70:	46001032 	c.eq.s	$f2,$f0
     c74:	e6020154 	swc1	$f2,340(s0)
     c78:	10000062 	b	e04 <EnTrap_Update+0xa24>
     c7c:	86070152 	lh	a3,338(s0)
     c80:	46001032 	c.eq.s	$f2,$f0
     c84:	3c010000 	lui	at,0x0
     c88:	4501001d 	bc1t	d00 <EnTrap_Update+0x920>
     c8c:	00000000 	nop
     c90:	c4240000 	lwc1	$f4,0(at)
     c94:	260d0024 	addiu	t5,s0,36
     c98:	afad0048 	sw	t5,72(sp)
     c9c:	46002032 	c.eq.s	$f4,$f0
     ca0:	02002025 	move	a0,s0
     ca4:	45020006 	bc1fl	cc0 <EnTrap_Update+0x8e0>
     ca8:	8e050184 	lw	a1,388(s0)
     cac:	0c000000 	jal	0 <EnTrap_Init>
     cb0:	2405287d 	li	a1,10365
     cb4:	44801000 	mtc1	zero,$f2
     cb8:	00000000 	nop
     cbc:	8e050184 	lw	a1,388(s0)
     cc0:	8e07019c 	lw	a3,412(s0)
     cc4:	e7a20010 	swc1	$f2,16(sp)
     cc8:	2604002c 	addiu	a0,s0,44
     ccc:	0c000000 	jal	0 <EnTrap_Init>
     cd0:	3c063f80 	lui	a2,0x3f80
     cd4:	44801000 	mtc1	zero,$f2
     cd8:	e6000154 	swc1	$f0,340(s0)
     cdc:	8e05017c 	lw	a1,380(s0)
     ce0:	8e070194 	lw	a3,404(s0)
     ce4:	8fa40048 	lw	a0,72(sp)
     ce8:	3c063f80 	lui	a2,0x3f80
     cec:	0c000000 	jal	0 <EnTrap_Init>
     cf0:	e7a20010 	swc1	$f2,16(sp)
     cf4:	c6060154 	lwc1	$f6,340(s0)
     cf8:	46003200 	add.s	$f8,$f6,$f0
     cfc:	e6080154 	swc1	$f8,340(s0)
     d00:	10000040 	b	e04 <EnTrap_Update+0xa24>
     d04:	86070152 	lh	a3,338(s0)
     d08:	55c00005 	bnezl	t6,d20 <EnTrap_Update+0x940>
     d0c:	960f0088 	lhu	t7,136(s0)
     d10:	e6020154 	swc1	$f2,340(s0)
     d14:	1000000d 	b	d4c <EnTrap_Update+0x96c>
     d18:	c6000154 	lwc1	$f0,340(s0)
     d1c:	960f0088 	lhu	t7,136(s0)
     d20:	29012001 	slti	at,t0,8193
     d24:	31f90008 	andi	t9,t7,0x8
     d28:	13200008 	beqz	t9,d4c <EnTrap_Update+0x96c>
     d2c:	00000000 	nop
     d30:	14200006 	bnez	at,d4c <EnTrap_Update+0x96c>
     d34:	29016000 	slti	at,t0,24576
     d38:	10200004 	beqz	at,d4c <EnTrap_Update+0x96c>
     d3c:	00000000 	nop
     d40:	e6020154 	swc1	$f2,340(s0)
     d44:	1000002f 	b	e04 <EnTrap_Update+0xa24>
     d48:	86070152 	lh	a3,338(s0)
     d4c:	5140000d 	beqzl	t2,d84 <EnTrap_Update+0x9a4>
     d50:	46001032 	c.eq.s	$f2,$f0
     d54:	46001032 	c.eq.s	$f2,$f0
     d58:	29212001 	slti	at,t1,8193
     d5c:	45030009 	bc1tl	d84 <EnTrap_Update+0x9a4>
     d60:	46001032 	c.eq.s	$f2,$f0
     d64:	14200006 	bnez	at,d80 <EnTrap_Update+0x9a0>
     d68:	29216000 	slti	at,t1,24576
     d6c:	50200005 	beqzl	at,d84 <EnTrap_Update+0x9a4>
     d70:	46001032 	c.eq.s	$f2,$f0
     d74:	e6020154 	swc1	$f2,340(s0)
     d78:	10000022 	b	e04 <EnTrap_Update+0xa24>
     d7c:	86070152 	lh	a3,338(s0)
     d80:	46001032 	c.eq.s	$f2,$f0
     d84:	3c010000 	lui	at,0x0
     d88:	4503001e 	bc1tl	e04 <EnTrap_Update+0xa24>
     d8c:	86070152 	lh	a3,338(s0)
     d90:	c42a0000 	lwc1	$f10,0(at)
     d94:	26180024 	addiu	t8,s0,36
     d98:	afb80048 	sw	t8,72(sp)
     d9c:	46005032 	c.eq.s	$f10,$f0
     da0:	02002025 	move	a0,s0
     da4:	45020006 	bc1fl	dc0 <EnTrap_Update+0x9e0>
     da8:	8e050164 	lw	a1,356(s0)
     dac:	0c000000 	jal	0 <EnTrap_Init>
     db0:	2405287d 	li	a1,10365
     db4:	44801000 	mtc1	zero,$f2
     db8:	00000000 	nop
     dbc:	8e050164 	lw	a1,356(s0)
     dc0:	8e070188 	lw	a3,392(s0)
     dc4:	e7a20010 	swc1	$f2,16(sp)
     dc8:	8fa40048 	lw	a0,72(sp)
     dcc:	0c000000 	jal	0 <EnTrap_Init>
     dd0:	3c063f80 	lui	a2,0x3f80
     dd4:	44801000 	mtc1	zero,$f2
     dd8:	e6000154 	swc1	$f0,340(s0)
     ddc:	8e05016c 	lw	a1,364(s0)
     de0:	8e070190 	lw	a3,400(s0)
     de4:	2604002c 	addiu	a0,s0,44
     de8:	3c063f80 	lui	a2,0x3f80
     dec:	0c000000 	jal	0 <EnTrap_Init>
     df0:	e7a20010 	swc1	$f2,16(sp)
     df4:	c6100154 	lwc1	$f16,340(s0)
     df8:	46008480 	add.s	$f18,$f16,$f0
     dfc:	e6120154 	swc1	$f18,340(s0)
     e00:	86070152 	lh	a3,338(s0)
     e04:	02002025 	move	a0,s0
     e08:	8fa500ac 	lw	a1,172(sp)
     e0c:	0c000000 	jal	0 <EnTrap_Init>
     e10:	3c064248 	lui	a2,0x4248
     e14:	44801000 	mtc1	zero,$f2
     e18:	144000a0 	bnez	v0,109c <EnTrap_Update+0xcbc>
     e1c:	00000000 	nop
     e20:	1000009e 	b	109c <EnTrap_Update+0xcbc>
     e24:	e6020154 	swc1	$f2,340(s0)
     e28:	c6040008 	lwc1	$f4,8(s0)
     e2c:	c6060024 	lwc1	$f6,36(s0)
     e30:	26040024 	addiu	a0,s0,36
     e34:	26050008 	addiu	a1,s0,8
     e38:	46062032 	c.eq.s	$f4,$f6
     e3c:	00000000 	nop
     e40:	45020018 	bc1fl	ea4 <EnTrap_Update+0xac4>
     e44:	afa40048 	sw	a0,72(sp)
     e48:	c6080010 	lwc1	$f8,16(s0)
     e4c:	c60a002c 	lwc1	$f10,44(s0)
     e50:	3c014348 	lui	at,0x4348
     e54:	460a4032 	c.eq.s	$f8,$f10
     e58:	00000000 	nop
     e5c:	45020011 	bc1fl	ea4 <EnTrap_Update+0xac4>
     e60:	afa40048 	sw	a0,72(sp)
     e64:	c6100090 	lwc1	$f16,144(s0)
     e68:	44819000 	mtc1	at,$f18
     e6c:	860c008a 	lh	t4,138(s0)
     e70:	860d0032 	lh	t5,50(s0)
     e74:	4612803c 	c.lt.s	$f16,$f18
     e78:	e6020154 	swc1	$f2,340(s0)
     e7c:	018d7023 	subu	t6,t4,t5
     e80:	25cf2000 	addiu	t7,t6,8192
     e84:	31f9c000 	andi	t9,t7,0xc000
     e88:	45000084 	bc1f	109c <EnTrap_Update+0xcbc>
     e8c:	a6190152 	sh	t9,338(s0)
     e90:	3c010000 	lui	at,0x0
     e94:	c4240000 	lwc1	$f4,0(at)
     e98:	10000080 	b	109c <EnTrap_Update+0xcbc>
     e9c:	e6040154 	swc1	$f4,340(s0)
     ea0:	afa40048 	sw	a0,72(sp)
     ea4:	a7a90094 	sh	t1,148(sp)
     ea8:	a7aa0092 	sh	t2,146(sp)
     eac:	0c000000 	jal	0 <EnTrap_Init>
     eb0:	a7ab0090 	sh	t3,144(sp)
     eb4:	244c2000 	addiu	t4,v0,8192
     eb8:	318dc000 	andi	t5,t4,0xc000
     ebc:	87a90094 	lh	t1,148(sp)
     ec0:	87aa0092 	lh	t2,146(sp)
     ec4:	87ab0090 	lh	t3,144(sp)
     ec8:	a60d0152 	sh	t5,338(s0)
     ecc:	86030152 	lh	v1,338(s0)
     ed0:	44801000 	mtc1	zero,$f2
     ed4:	24018000 	li	at,-32768
     ed8:	10610037 	beq	v1,at,fb8 <EnTrap_Update+0xbd8>
     edc:	8fa40048 	lw	a0,72(sp)
     ee0:	2401c000 	li	at,-16384
     ee4:	5061004e 	beql	v1,at,1020 <EnTrap_Update+0xc40>
     ee8:	960e0088 	lhu	t6,136(s0)
     eec:	10600005 	beqz	v1,f04 <EnTrap_Update+0xb24>
     ef0:	24014000 	li	at,16384
     ef4:	5061001d 	beql	v1,at,f6c <EnTrap_Update+0xb8c>
     ef8:	96190088 	lhu	t9,136(s0)
     efc:	1000005a 	b	1068 <EnTrap_Update+0xc88>
     f00:	00000000 	nop
     f04:	960e0088 	lhu	t6,136(s0)
     f08:	31cf0008 	andi	t7,t6,0x8
     f0c:	11e0000b 	beqz	t7,f3c <EnTrap_Update+0xb5c>
     f10:	00000000 	nop
     f14:	8602007e 	lh	v0,126(s0)
     f18:	04400003 	bltz	v0,f28 <EnTrap_Update+0xb48>
     f1c:	00021823 	negu	v1,v0
     f20:	10000001 	b	f28 <EnTrap_Update+0xb48>
     f24:	00401825 	move	v1,v0
     f28:	28616001 	slti	at,v1,24577
     f2c:	1420004e 	bnez	at,1068 <EnTrap_Update+0xc88>
     f30:	00000000 	nop
     f34:	1000004c 	b	1068 <EnTrap_Update+0xc88>
     f38:	240b0001 	li	t3,1
     f3c:	1140004a 	beqz	t2,1068 <EnTrap_Update+0xc88>
     f40:	00000000 	nop
     f44:	05200003 	bltz	t1,f54 <EnTrap_Update+0xb74>
     f48:	00091823 	negu	v1,t1
     f4c:	10000001 	b	f54 <EnTrap_Update+0xb74>
     f50:	01201825 	move	v1,t1
     f54:	28616001 	slti	at,v1,24577
     f58:	14200043 	bnez	at,1068 <EnTrap_Update+0xc88>
     f5c:	00000000 	nop
     f60:	10000041 	b	1068 <EnTrap_Update+0xc88>
     f64:	240b0001 	li	t3,1
     f68:	96190088 	lhu	t9,136(s0)
     f6c:	33380008 	andi	t8,t9,0x8
     f70:	13000009 	beqz	t8,f98 <EnTrap_Update+0xbb8>
     f74:	00000000 	nop
     f78:	8602007e 	lh	v0,126(s0)
     f7c:	2841e000 	slti	at,v0,-8192
     f80:	10200039 	beqz	at,1068 <EnTrap_Update+0xc88>
     f84:	2841a001 	slti	at,v0,-24575
     f88:	14200037 	bnez	at,1068 <EnTrap_Update+0xc88>
     f8c:	00000000 	nop
     f90:	10000035 	b	1068 <EnTrap_Update+0xc88>
     f94:	240b0001 	li	t3,1
     f98:	11400033 	beqz	t2,1068 <EnTrap_Update+0xc88>
     f9c:	2921e000 	slti	at,t1,-8192
     fa0:	10200031 	beqz	at,1068 <EnTrap_Update+0xc88>
     fa4:	2921a001 	slti	at,t1,-24575
     fa8:	1420002f 	bnez	at,1068 <EnTrap_Update+0xc88>
     fac:	00000000 	nop
     fb0:	1000002d 	b	1068 <EnTrap_Update+0xc88>
     fb4:	240b0001 	li	t3,1
     fb8:	960c0088 	lhu	t4,136(s0)
     fbc:	318d0008 	andi	t5,t4,0x8
     fc0:	11a0000b 	beqz	t5,ff0 <EnTrap_Update+0xc10>
     fc4:	00000000 	nop
     fc8:	8602007e 	lh	v0,126(s0)
     fcc:	04400003 	bltz	v0,fdc <EnTrap_Update+0xbfc>
     fd0:	00021823 	negu	v1,v0
     fd4:	10000001 	b	fdc <EnTrap_Update+0xbfc>
     fd8:	00401825 	move	v1,v0
     fdc:	28612000 	slti	at,v1,8192
     fe0:	10200021 	beqz	at,1068 <EnTrap_Update+0xc88>
     fe4:	00000000 	nop
     fe8:	1000001f 	b	1068 <EnTrap_Update+0xc88>
     fec:	240b0001 	li	t3,1
     ff0:	1140001d 	beqz	t2,1068 <EnTrap_Update+0xc88>
     ff4:	00000000 	nop
     ff8:	05200003 	bltz	t1,1008 <EnTrap_Update+0xc28>
     ffc:	00091823 	negu	v1,t1
    1000:	10000001 	b	1008 <EnTrap_Update+0xc28>
    1004:	01201825 	move	v1,t1
    1008:	28612000 	slti	at,v1,8192
    100c:	10200016 	beqz	at,1068 <EnTrap_Update+0xc88>
    1010:	00000000 	nop
    1014:	10000014 	b	1068 <EnTrap_Update+0xc88>
    1018:	240b0001 	li	t3,1
    101c:	960e0088 	lhu	t6,136(s0)
    1020:	31cf0008 	andi	t7,t6,0x8
    1024:	11e00009 	beqz	t7,104c <EnTrap_Update+0xc6c>
    1028:	00000000 	nop
    102c:	8602007e 	lh	v0,126(s0)
    1030:	28412001 	slti	at,v0,8193
    1034:	1420000c 	bnez	at,1068 <EnTrap_Update+0xc88>
    1038:	28416000 	slti	at,v0,24576
    103c:	1020000a 	beqz	at,1068 <EnTrap_Update+0xc88>
    1040:	00000000 	nop
    1044:	10000008 	b	1068 <EnTrap_Update+0xc88>
    1048:	240b0001 	li	t3,1
    104c:	11400006 	beqz	t2,1068 <EnTrap_Update+0xc88>
    1050:	29212001 	slti	at,t1,8193
    1054:	14200004 	bnez	at,1068 <EnTrap_Update+0xc88>
    1058:	29216000 	slti	at,t1,24576
    105c:	10200002 	beqz	at,1068 <EnTrap_Update+0xc88>
    1060:	00000000 	nop
    1064:	240b0001 	li	t3,1
    1068:	1560000c 	bnez	t3,109c <EnTrap_Update+0xcbc>
    106c:	3c063f80 	lui	a2,0x3f80
    1070:	8e050008 	lw	a1,8(s0)
    1074:	e7a20010 	swc1	$f2,16(sp)
    1078:	0c000000 	jal	0 <EnTrap_Init>
    107c:	3c074040 	lui	a3,0x4040
    1080:	44801000 	mtc1	zero,$f2
    1084:	8e050010 	lw	a1,16(s0)
    1088:	2604002c 	addiu	a0,s0,44
    108c:	3c063f80 	lui	a2,0x3f80
    1090:	3c074040 	lui	a3,0x4040
    1094:	0c000000 	jal	0 <EnTrap_Init>
    1098:	e7a20010 	swc1	$f2,16(sp)
    109c:	0c000000 	jal	0 <EnTrap_Init>
    10a0:	02002025 	move	a0,s0
    10a4:	8619001c 	lh	t9,28(s0)
    10a8:	02002825 	move	a1,s0
    10ac:	3c0641c8 	lui	a2,0x41c8
    10b0:	33380010 	andi	t8,t9,0x10
    10b4:	13000008 	beqz	t8,10d8 <EnTrap_Update+0xcf8>
    10b8:	3c0741a0 	lui	a3,0x41a0
    10bc:	8e0e0024 	lw	t6,36(s0)
    10c0:	27ac0098 	addiu	t4,sp,152
    10c4:	ad8e0000 	sw	t6,0(t4)
    10c8:	8e0d0028 	lw	t5,40(s0)
    10cc:	ad8d0004 	sw	t5,4(t4)
    10d0:	8e0e002c 	lw	t6,44(s0)
    10d4:	ad8e0008 	sw	t6,8(t4)
    10d8:	3c0141a0 	lui	at,0x41a0
    10dc:	44813000 	mtc1	at,$f6
    10e0:	240f001d 	li	t7,29
    10e4:	afaf0014 	sw	t7,20(sp)
    10e8:	8fa400ac 	lw	a0,172(sp)
    10ec:	0c000000 	jal	0 <EnTrap_Init>
    10f0:	e7a60010 	swc1	$f6,16(sp)
    10f4:	8619001c 	lh	t9,28(s0)
    10f8:	c7a80098 	lwc1	$f8,152(sp)
    10fc:	33380010 	andi	t8,t9,0x10
    1100:	53000005 	beqzl	t8,1118 <EnTrap_Update+0xd38>
    1104:	260501a0 	addiu	a1,s0,416
    1108:	e6080024 	swc1	$f8,36(s0)
    110c:	c7aa00a0 	lwc1	$f10,160(sp)
    1110:	e60a002c 	swc1	$f10,44(s0)
    1114:	260501a0 	addiu	a1,s0,416
    1118:	afa50048 	sw	a1,72(sp)
    111c:	0c000000 	jal	0 <EnTrap_Init>
    1120:	02002025 	move	a0,s0
    1124:	8fa400ac 	lw	a0,172(sp)
    1128:	3c010001 	lui	at,0x1
    112c:	34211e60 	ori	at,at,0x1e60
    1130:	00812821 	addu	a1,a0,at
    1134:	afa5004c 	sw	a1,76(sp)
    1138:	0c000000 	jal	0 <EnTrap_Init>
    113c:	8fa60048 	lw	a2,72(sp)
    1140:	920d0114 	lbu	t5,276(s0)
    1144:	8fa5004c 	lw	a1,76(sp)
    1148:	8fa400ac 	lw	a0,172(sp)
    114c:	55a00004 	bnezl	t5,1160 <EnTrap_Update+0xd80>
    1150:	8fbf003c 	lw	ra,60(sp)
    1154:	0c000000 	jal	0 <EnTrap_Init>
    1158:	8fa60048 	lw	a2,72(sp)
    115c:	8fbf003c 	lw	ra,60(sp)
    1160:	8fb00038 	lw	s0,56(sp)
    1164:	27bd00a8 	addiu	sp,sp,168
    1168:	03e00008 	jr	ra
    116c:	00000000 	nop

00001170 <EnTrap_Draw>:
    1170:	27bdffe8 	addiu	sp,sp,-24
    1174:	afbf0014 	sw	ra,20(sp)
    1178:	afa5001c 	sw	a1,28(sp)
    117c:	0c000000 	jal	0 <EnTrap_Init>
    1180:	24060001 	li	a2,1
    1184:	3c050600 	lui	a1,0x600
    1188:	24a51400 	addiu	a1,a1,5120
    118c:	0c000000 	jal	0 <EnTrap_Init>
    1190:	8fa4001c 	lw	a0,28(sp)
    1194:	8fbf0014 	lw	ra,20(sp)
    1198:	27bd0018 	addiu	sp,sp,24
    119c:	03e00008 	jr	ra
    11a0:	00000000 	nop
	...
