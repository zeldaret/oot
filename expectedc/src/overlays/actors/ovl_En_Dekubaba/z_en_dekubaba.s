
build/src/overlays/actors/ovl_En_Dekubaba/z_en_dekubaba.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDekubaba_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afa50044 	sw	a1,68(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnDekubaba_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	3c060000 	lui	a2,0x0
      24:	24c60000 	addiu	a2,a2,0
      28:	260400b4 	addiu	a0,s0,180
      2c:	24050000 	li	a1,0
      30:	0c000000 	jal	0 <EnDekubaba_Init>
      34:	3c0741b0 	lui	a3,0x41b0
      38:	3c060600 	lui	a2,0x600
      3c:	3c070600 	lui	a3,0x600
      40:	260e01d0 	addiu	t6,s0,464
      44:	260f0200 	addiu	t7,s0,512
      48:	24180008 	li	t8,8
      4c:	afb80018 	sw	t8,24(sp)
      50:	afaf0014 	sw	t7,20(sp)
      54:	afae0010 	sw	t6,16(sp)
      58:	24e702b8 	addiu	a3,a3,696
      5c:	24c62a40 	addiu	a2,a2,10816
      60:	8fa40044 	lw	a0,68(sp)
      64:	0c000000 	jal	0 <EnDekubaba_Init>
      68:	2605017c 	addiu	a1,s0,380
      6c:	26050238 	addiu	a1,s0,568
      70:	afa50030 	sw	a1,48(sp)
      74:	0c000000 	jal	0 <EnDekubaba_Init>
      78:	8fa40044 	lw	a0,68(sp)
      7c:	3c070000 	lui	a3,0x0
      80:	26190258 	addiu	t9,s0,600
      84:	24e70000 	addiu	a3,a3,0
      88:	8fa50030 	lw	a1,48(sp)
      8c:	afb90010 	sw	t9,16(sp)
      90:	8fa40044 	lw	a0,68(sp)
      94:	0c000000 	jal	0 <EnDekubaba_Init>
      98:	02003025 	move	a2,s0
      9c:	8608001c 	lh	t0,28(s0)
      a0:	3c070000 	lui	a3,0x0
      a4:	24010001 	li	at,1
      a8:	15010035 	bne	t0,at,180 <EnDekubaba_Init+0x180>
      ac:	24e70000 	addiu	a3,a3,0
      b0:	3c014020 	lui	at,0x4020
      b4:	44812000 	mtc1	at,$f4
      b8:	3c060000 	lui	a2,0x0
      bc:	00002025 	move	a0,zero
      c0:	e6040230 	swc1	$f4,560(s0)
      c4:	8ce90008 	lw	t1,8(a3)
      c8:	3c050000 	lui	a1,0x0
      cc:	3c190000 	lui	t9,0x0
      d0:	1920001b 	blez	t1,140 <EnDekubaba_Init+0x140>
      d4:	24c60000 	addiu	a2,a2,0
      d8:	3c014020 	lui	at,0x4020
      dc:	44810000 	mtc1	at,$f0
      e0:	24a50000 	addiu	a1,a1,0
      e4:	00001025 	move	v0,zero
      e8:	84aa0020 	lh	t2,32(a1)
      ec:	8e0c0254 	lw	t4,596(s0)
      f0:	24840001 	addiu	a0,a0,1
      f4:	448a3000 	mtc1	t2,$f6
      f8:	01826821 	addu	t5,t4,v0
      fc:	24a50024 	addiu	a1,a1,36
     100:	46803220 	cvt.s.w	$f8,$f6
     104:	46004282 	mul.s	$f10,$f8,$f0
     108:	4600540d 	trunc.w.s	$f16,$f10
     10c:	44038000 	mfc1	v1,$f16
     110:	00000000 	nop
     114:	00031c00 	sll	v1,v1,0x10
     118:	00031c03 	sra	v1,v1,0x10
     11c:	a5a3002e 	sh	v1,46(t5)
     120:	8e0e0254 	lw	t6,596(s0)
     124:	01c27821 	addu	t7,t6,v0
     128:	a5e30036 	sh	v1,54(t7)
     12c:	8cf80008 	lw	t8,8(a3)
     130:	24420040 	addiu	v0,v0,64
     134:	0098082a 	slt	at,a0,t8
     138:	5420ffec 	bnezl	at,ec <EnDekubaba_Init+0xec>
     13c:	84aa0020 	lh	t2,32(a1)
     140:	8f390004 	lw	t9,4(t9)
     144:	24080004 	li	t0,4
     148:	26040098 	addiu	a0,s0,152
     14c:	13200003 	beqz	t9,15c <EnDekubaba_Init+0x15c>
     150:	3c050000 	lui	a1,0x0
     154:	3c010000 	lui	at,0x0
     158:	a0280000 	sb	t0,0(at)
     15c:	0c000000 	jal	0 <EnDekubaba_Init>
     160:	24a50000 	addiu	a1,a1,0
     164:	24090004 	li	t1,4
     168:	240a0008 	li	t2,8
     16c:	240b0002 	li	t3,2
     170:	a20900af 	sb	t1,175(s0)
     174:	a20a0117 	sb	t2,279(s0)
     178:	10000022 	b	204 <EnDekubaba_Init+0x204>
     17c:	a20b001f 	sb	t3,31(s0)
     180:	3c013f80 	lui	at,0x3f80
     184:	44819000 	mtc1	at,$f18
     188:	3c050000 	lui	a1,0x0
     18c:	00002025 	move	a0,zero
     190:	e6120230 	swc1	$f18,560(s0)
     194:	8cec0008 	lw	t4,8(a3)
     198:	3c180000 	lui	t8,0x0
     19c:	24a50000 	addiu	a1,a1,0
     1a0:	1980000c 	blez	t4,1d4 <EnDekubaba_Init+0x1d4>
     1a4:	3c060000 	lui	a2,0x0
     1a8:	00001025 	move	v0,zero
     1ac:	8e0d0254 	lw	t5,596(s0)
     1b0:	24840001 	addiu	a0,a0,1
     1b4:	01a21821 	addu	v1,t5,v0
     1b8:	846e002e 	lh	t6,46(v1)
     1bc:	24420040 	addiu	v0,v0,64
     1c0:	a46e0036 	sh	t6,54(v1)
     1c4:	8cef0008 	lw	t7,8(a3)
     1c8:	008f082a 	slt	at,a0,t7
     1cc:	5420fff8 	bnezl	at,1b0 <EnDekubaba_Init+0x1b0>
     1d0:	8e0d0254 	lw	t5,596(s0)
     1d4:	8f180004 	lw	t8,4(t8)
     1d8:	24190004 	li	t9,4
     1dc:	3c010000 	lui	at,0x0
     1e0:	13000002 	beqz	t8,1ec <EnDekubaba_Init+0x1ec>
     1e4:	26040098 	addiu	a0,s0,152
     1e8:	a0390000 	sb	t9,0(at)
     1ec:	0c000000 	jal	0 <EnDekubaba_Init>
     1f0:	24c60000 	addiu	a2,a2,0
     1f4:	24080007 	li	t0,7
     1f8:	24090001 	li	t1,1
     1fc:	a2080117 	sb	t0,279(s0)
     200:	a209001f 	sb	t1,31(s0)
     204:	0c000000 	jal	0 <EnDekubaba_Init>
     208:	02002025 	move	a0,s0
     20c:	8e0b0008 	lw	t3,8(s0)
     210:	8e0a000c 	lw	t2,12(s0)
     214:	a60001c6 	sh	zero,454(s0)
     218:	ae0b0170 	sw	t3,368(s0)
     21c:	8e0b0010 	lw	t3,16(s0)
     220:	ae000234 	sw	zero,564(s0)
     224:	ae0a0174 	sw	t2,372(s0)
     228:	ae0b0178 	sw	t3,376(s0)
     22c:	8fbf002c 	lw	ra,44(sp)
     230:	8fb00028 	lw	s0,40(sp)
     234:	27bd0040 	addiu	sp,sp,64
     238:	03e00008 	jr	ra
     23c:	00000000 	nop

00000240 <EnDekubaba_Destroy>:
     240:	27bdffe8 	addiu	sp,sp,-24
     244:	00803025 	move	a2,a0
     248:	afbf0014 	sw	ra,20(sp)
     24c:	00a02025 	move	a0,a1
     250:	0c000000 	jal	0 <EnDekubaba_Init>
     254:	24c50238 	addiu	a1,a2,568
     258:	8fbf0014 	lw	ra,20(sp)
     25c:	27bd0018 	addiu	sp,sp,24
     260:	03e00008 	jr	ra
     264:	00000000 	nop

00000268 <func_809E5A38>:
     268:	8c830254 	lw	v1,596(a0)
     26c:	24020003 	li	v0,3
     270:	906e0056 	lbu	t6,86(v1)
     274:	24630040 	addiu	v1,v1,64
     278:	31cffffe 	andi	t7,t6,0xfffe
     27c:	a06f0016 	sb	t7,22(v1)
     280:	8c830254 	lw	v1,596(a0)
     284:	90780096 	lbu	t8,150(v1)
     288:	24630040 	addiu	v1,v1,64
     28c:	3319fffe 	andi	t9,t8,0xfffe
     290:	a0790056 	sb	t9,86(v1)
     294:	8c880254 	lw	t0,596(a0)
     298:	00021980 	sll	v1,v0,0x6
     29c:	01032821 	addu	a1,t0,v1
     2a0:	90a90016 	lbu	t1,22(a1)
     2a4:	312afffe 	andi	t2,t1,0xfffe
     2a8:	a0aa0016 	sb	t2,22(a1)
     2ac:	8c8b0254 	lw	t3,596(a0)
     2b0:	01632821 	addu	a1,t3,v1
     2b4:	90ac0056 	lbu	t4,86(a1)
     2b8:	318dfffe 	andi	t5,t4,0xfffe
     2bc:	a0ad0056 	sb	t5,86(a1)
     2c0:	8c8e0254 	lw	t6,596(a0)
     2c4:	01c32821 	addu	a1,t6,v1
     2c8:	90af0096 	lbu	t7,150(a1)
     2cc:	31f8fffe 	andi	t8,t7,0xfffe
     2d0:	a0b80096 	sb	t8,150(a1)
     2d4:	8c990254 	lw	t9,596(a0)
     2d8:	03232821 	addu	a1,t9,v1
     2dc:	90a800d6 	lbu	t0,214(a1)
     2e0:	3109fffe 	andi	t1,t0,0xfffe
     2e4:	03e00008 	jr	ra
     2e8:	a0a900d6 	sb	t1,214(a1)

000002ec <func_809E5ABC>:
     2ec:	27bdffe8 	addiu	sp,sp,-24
     2f0:	afbf0014 	sw	ra,20(sp)
     2f4:	3c014160 	lui	at,0x4160
     2f8:	44815000 	mtc1	at,$f10
     2fc:	c4800230 	lwc1	$f0,560(a0)
     300:	c488000c 	lwc1	$f8,12(a0)
     304:	240ec000 	li	t6,-16384
     308:	46005402 	mul.s	$f16,$f10,$f0
     30c:	a48e00b4 	sh	t6,180(a0)
     310:	848200b4 	lh	v0,180(a0)
     314:	c4840008 	lwc1	$f4,8(a0)
     318:	c4860010 	lwc1	$f6,16(a0)
     31c:	3c010000 	lui	at,0x0
     320:	a48201ce 	sh	v0,462(a0)
     324:	46104480 	add.s	$f18,$f8,$f16
     328:	a48201cc 	sh	v0,460(a0)
     32c:	a48201ca 	sh	v0,458(a0)
     330:	e4840024 	swc1	$f4,36(a0)
     334:	e4920028 	swc1	$f18,40(a0)
     338:	e486002c 	swc1	$f6,44(a0)
     33c:	c4240000 	lwc1	$f4,0(at)
     340:	3c013f00 	lui	at,0x3f00
     344:	44815000 	mtc1	at,$f10
     348:	46040182 	mul.s	$f6,$f0,$f4
     34c:	afa40018 	sw	a0,24(sp)
     350:	460a3202 	mul.s	$f8,$f6,$f10
     354:	44054000 	mfc1	a1,$f8
     358:	0c000000 	jal	0 <EnDekubaba_Init>
     35c:	00000000 	nop
     360:	8fa40018 	lw	a0,24(sp)
     364:	240f000c 	li	t7,12
     368:	2408002d 	li	t0,45
     36c:	c4900024 	lwc1	$f16,36(a0)
     370:	90980249 	lbu	t8,585(a0)
     374:	8c820254 	lw	v0,596(a0)
     378:	4600848d 	trunc.w.s	$f18,$f16
     37c:	37190004 	ori	t9,t8,0x4
     380:	a08f024c 	sb	t7,588(a0)
     384:	a0990249 	sb	t9,585(a0)
     388:	440a9000 	mfc1	t2,$f18
     38c:	a48801c6 	sh	t0,454(a0)
     390:	24420040 	addiu	v0,v0,64
     394:	a44a0030 	sh	t2,48(v0)
     398:	c4840028 	lwc1	$f4,40(a0)
     39c:	24050003 	li	a1,3
     3a0:	00051980 	sll	v1,a1,0x6
     3a4:	4600218d 	trunc.w.s	$f6,$f4
     3a8:	440e3000 	mfc1	t6,$f6
     3ac:	00000000 	nop
     3b0:	25cffff9 	addiu	t7,t6,-7
     3b4:	a44f0032 	sh	t7,50(v0)
     3b8:	c48a002c 	lwc1	$f10,44(a0)
     3bc:	4600520d 	trunc.w.s	$f8,$f10
     3c0:	44194000 	mfc1	t9,$f8
     3c4:	00000000 	nop
     3c8:	a4590034 	sh	t9,52(v0)
     3cc:	c4900024 	lwc1	$f16,36(a0)
     3d0:	8c820254 	lw	v0,596(a0)
     3d4:	4600848d 	trunc.w.s	$f18,$f16
     3d8:	24420080 	addiu	v0,v0,128
     3dc:	44099000 	mfc1	t1,$f18
     3e0:	00000000 	nop
     3e4:	a4490030 	sh	t1,48(v0)
     3e8:	c4840028 	lwc1	$f4,40(a0)
     3ec:	4600218d 	trunc.w.s	$f6,$f4
     3f0:	440d3000 	mfc1	t5,$f6
     3f4:	00000000 	nop
     3f8:	25aefff9 	addiu	t6,t5,-7
     3fc:	a44e0032 	sh	t6,50(v0)
     400:	c48a002c 	lwc1	$f10,44(a0)
     404:	4600520d 	trunc.w.s	$f8,$f10
     408:	44184000 	mfc1	t8,$f8
     40c:	00000000 	nop
     410:	a4580034 	sh	t8,52(v0)
     414:	c4900024 	lwc1	$f16,36(a0)
     418:	8c990254 	lw	t9,596(a0)
     41c:	4600848d 	trunc.w.s	$f18,$f16
     420:	03231021 	addu	v0,t9,v1
     424:	44099000 	mfc1	t1,$f18
     428:	00000000 	nop
     42c:	a4490030 	sh	t1,48(v0)
     430:	c4840028 	lwc1	$f4,40(a0)
     434:	4600218d 	trunc.w.s	$f6,$f4
     438:	440d3000 	mfc1	t5,$f6
     43c:	00000000 	nop
     440:	25aefff9 	addiu	t6,t5,-7
     444:	a44e0032 	sh	t6,50(v0)
     448:	c48a002c 	lwc1	$f10,44(a0)
     44c:	4600520d 	trunc.w.s	$f8,$f10
     450:	44184000 	mfc1	t8,$f8
     454:	00000000 	nop
     458:	a4580034 	sh	t8,52(v0)
     45c:	c4900024 	lwc1	$f16,36(a0)
     460:	8c990254 	lw	t9,596(a0)
     464:	4600848d 	trunc.w.s	$f18,$f16
     468:	03231021 	addu	v0,t9,v1
     46c:	24420040 	addiu	v0,v0,64
     470:	44099000 	mfc1	t1,$f18
     474:	00000000 	nop
     478:	a4490030 	sh	t1,48(v0)
     47c:	c4840028 	lwc1	$f4,40(a0)
     480:	4600218d 	trunc.w.s	$f6,$f4
     484:	440d3000 	mfc1	t5,$f6
     488:	00000000 	nop
     48c:	25aefff9 	addiu	t6,t5,-7
     490:	a44e0032 	sh	t6,50(v0)
     494:	c48a002c 	lwc1	$f10,44(a0)
     498:	4600520d 	trunc.w.s	$f8,$f10
     49c:	44184000 	mfc1	t8,$f8
     4a0:	00000000 	nop
     4a4:	a4580034 	sh	t8,52(v0)
     4a8:	c4900024 	lwc1	$f16,36(a0)
     4ac:	8c990254 	lw	t9,596(a0)
     4b0:	4600848d 	trunc.w.s	$f18,$f16
     4b4:	03231021 	addu	v0,t9,v1
     4b8:	24420080 	addiu	v0,v0,128
     4bc:	44099000 	mfc1	t1,$f18
     4c0:	00000000 	nop
     4c4:	a4490030 	sh	t1,48(v0)
     4c8:	c4840028 	lwc1	$f4,40(a0)
     4cc:	4600218d 	trunc.w.s	$f6,$f4
     4d0:	440d3000 	mfc1	t5,$f6
     4d4:	00000000 	nop
     4d8:	25aefff9 	addiu	t6,t5,-7
     4dc:	a44e0032 	sh	t6,50(v0)
     4e0:	c48a002c 	lwc1	$f10,44(a0)
     4e4:	4600520d 	trunc.w.s	$f8,$f10
     4e8:	44184000 	mfc1	t8,$f8
     4ec:	00000000 	nop
     4f0:	a4580034 	sh	t8,52(v0)
     4f4:	c4900024 	lwc1	$f16,36(a0)
     4f8:	8c990254 	lw	t9,596(a0)
     4fc:	4600848d 	trunc.w.s	$f18,$f16
     500:	03231021 	addu	v0,t9,v1
     504:	3c190000 	lui	t9,0x0
     508:	27390000 	addiu	t9,t9,0
     50c:	44099000 	mfc1	t1,$f18
     510:	244200c0 	addiu	v0,v0,192
     514:	a4490030 	sh	t1,48(v0)
     518:	c4840028 	lwc1	$f4,40(a0)
     51c:	4600218d 	trunc.w.s	$f6,$f4
     520:	440d3000 	mfc1	t5,$f6
     524:	00000000 	nop
     528:	25aefff9 	addiu	t6,t5,-7
     52c:	a44e0032 	sh	t6,50(v0)
     530:	c48a002c 	lwc1	$f10,44(a0)
     534:	4600520d 	trunc.w.s	$f8,$f10
     538:	44184000 	mfc1	t8,$f8
     53c:	00000000 	nop
     540:	a4580034 	sh	t8,52(v0)
     544:	ac9901c0 	sw	t9,448(a0)
     548:	8fbf0014 	lw	ra,20(sp)
     54c:	27bd0018 	addiu	sp,sp,24
     550:	03e00008 	jr	ra
     554:	00000000 	nop

00000558 <func_809E5D28>:
     558:	27bdffc8 	addiu	sp,sp,-56
     55c:	afb00028 	sw	s0,40(sp)
     560:	00808025 	move	s0,a0
     564:	afbf002c 	sw	ra,44(sp)
     568:	3c040600 	lui	a0,0x600
     56c:	0c000000 	jal	0 <EnDekubaba_Init>
     570:	248402b8 	addiu	a0,a0,696
     574:	3c040600 	lui	a0,0x600
     578:	248402b8 	addiu	a0,a0,696
     57c:	0c000000 	jal	0 <EnDekubaba_Init>
     580:	a7a20030 	sh	v0,48(sp)
     584:	87ae0030 	lh	t6,48(sp)
     588:	3c010000 	lui	at,0x0
     58c:	c4280000 	lwc1	$f8,0(at)
     590:	448e2000 	mtc1	t6,$f4
     594:	44828000 	mtc1	v0,$f16
     598:	44800000 	mtc1	zero,$f0
     59c:	468021a0 	cvt.s.w	$f6,$f4
     5a0:	3c050600 	lui	a1,0x600
     5a4:	240f0002 	li	t7,2
     5a8:	44070000 	mfc1	a3,$f0
     5ac:	afaf0014 	sw	t7,20(sp)
     5b0:	468084a0 	cvt.s.w	$f18,$f16
     5b4:	46083282 	mul.s	$f10,$f6,$f8
     5b8:	24a502b8 	addiu	a1,a1,696
     5bc:	2604017c 	addiu	a0,s0,380
     5c0:	e7a00018 	swc1	$f0,24(sp)
     5c4:	e7b20010 	swc1	$f18,16(sp)
     5c8:	44065000 	mfc1	a2,$f10
     5cc:	0c000000 	jal	0 <EnDekubaba_Init>
     5d0:	00000000 	nop
     5d4:	8e020254 	lw	v0,596(s0)
     5d8:	2418000f 	li	t8,15
     5dc:	a61801c6 	sh	t8,454(s0)
     5e0:	90590097 	lbu	t9,151(v0)
     5e4:	24040003 	li	a0,3
     5e8:	00041980 	sll	v1,a0,0x6
     5ec:	37280001 	ori	t0,t9,0x1
     5f0:	a0480097 	sb	t0,151(v0)
     5f4:	8e090254 	lw	t1,596(s0)
     5f8:	24420080 	addiu	v0,v0,128
     5fc:	02002025 	move	a0,s0
     600:	01231021 	addu	v0,t1,v1
     604:	904a0017 	lbu	t2,23(v0)
     608:	240539e2 	li	a1,14818
     60c:	354b0001 	ori	t3,t2,0x1
     610:	a04b0017 	sb	t3,23(v0)
     614:	8e0c0254 	lw	t4,596(s0)
     618:	240b0006 	li	t3,6
     61c:	01831021 	addu	v0,t4,v1
     620:	904d0057 	lbu	t5,87(v0)
     624:	35ae0001 	ori	t6,t5,0x1
     628:	a04e0057 	sb	t6,87(v0)
     62c:	8e0f0254 	lw	t7,596(s0)
     630:	01e31021 	addu	v0,t7,v1
     634:	90580097 	lbu	t8,151(v0)
     638:	37190001 	ori	t9,t8,0x1
     63c:	a0590097 	sb	t9,151(v0)
     640:	8e080254 	lw	t0,596(s0)
     644:	01031021 	addu	v0,t0,v1
     648:	904900d7 	lbu	t1,215(v0)
     64c:	352a0001 	ori	t2,t1,0x1
     650:	a04a00d7 	sb	t2,215(v0)
     654:	920c0249 	lbu	t4,585(s0)
     658:	a20b024c 	sb	t3,588(s0)
     65c:	318dfffb 	andi	t5,t4,0xfffb
     660:	0c000000 	jal	0 <EnDekubaba_Init>
     664:	a20d0249 	sb	t5,585(s0)
     668:	3c0e0000 	lui	t6,0x0
     66c:	25ce0000 	addiu	t6,t6,0
     670:	ae0e01c0 	sw	t6,448(s0)
     674:	8fbf002c 	lw	ra,44(sp)
     678:	8fb00028 	lw	s0,40(sp)
     67c:	27bd0038 	addiu	sp,sp,56
     680:	03e00008 	jr	ra
     684:	00000000 	nop

00000688 <func_809E5E58>:
     688:	27bdffd0 	addiu	sp,sp,-48
     68c:	afb00028 	sw	s0,40(sp)
     690:	00808025 	move	s0,a0
     694:	afbf002c 	sw	ra,44(sp)
     698:	3c040600 	lui	a0,0x600
     69c:	0c000000 	jal	0 <EnDekubaba_Init>
     6a0:	248402b8 	addiu	a0,a0,696
     6a4:	44822000 	mtc1	v0,$f4
     6a8:	3c01c040 	lui	at,0xc040
     6ac:	44814000 	mtc1	at,$f8
     6b0:	46802120 	cvt.s.w	$f4,$f4
     6b4:	44803000 	mtc1	zero,$f6
     6b8:	3c050600 	lui	a1,0x600
     6bc:	240e0002 	li	t6,2
     6c0:	afae0014 	sw	t6,20(sp)
     6c4:	24a502b8 	addiu	a1,a1,696
     6c8:	44072000 	mfc1	a3,$f4
     6cc:	2604017c 	addiu	a0,s0,380
     6d0:	3c06bfc0 	lui	a2,0xbfc0
     6d4:	e7a80018 	swc1	$f8,24(sp)
     6d8:	0c000000 	jal	0 <EnDekubaba_Init>
     6dc:	e7a60010 	swc1	$f6,16(sp)
     6e0:	8e020254 	lw	v0,596(s0)
     6e4:	240f000f 	li	t7,15
     6e8:	a60f01c6 	sh	t7,454(s0)
     6ec:	90580097 	lbu	t8,151(v0)
     6f0:	24050003 	li	a1,3
     6f4:	00051980 	sll	v1,a1,0x6
     6f8:	3319fffe 	andi	t9,t8,0xfffe
     6fc:	a0590097 	sb	t9,151(v0)
     700:	8e080254 	lw	t0,596(s0)
     704:	24420080 	addiu	v0,v0,128
     708:	01031021 	addu	v0,t0,v1
     70c:	90490017 	lbu	t1,23(v0)
     710:	312afffe 	andi	t2,t1,0xfffe
     714:	a04a0017 	sb	t2,23(v0)
     718:	8e0b0254 	lw	t3,596(s0)
     71c:	3c0a0000 	lui	t2,0x0
     720:	254a0000 	addiu	t2,t2,0
     724:	01631021 	addu	v0,t3,v1
     728:	904c0057 	lbu	t4,87(v0)
     72c:	318dfffe 	andi	t5,t4,0xfffe
     730:	a04d0057 	sb	t5,87(v0)
     734:	8e0e0254 	lw	t6,596(s0)
     738:	01c31021 	addu	v0,t6,v1
     73c:	904f0097 	lbu	t7,151(v0)
     740:	31f8fffe 	andi	t8,t7,0xfffe
     744:	a0580097 	sb	t8,151(v0)
     748:	8e190254 	lw	t9,596(s0)
     74c:	03231021 	addu	v0,t9,v1
     750:	904800d7 	lbu	t0,215(v0)
     754:	3109fffe 	andi	t1,t0,0xfffe
     758:	a04900d7 	sb	t1,215(v0)
     75c:	ae0a01c0 	sw	t2,448(s0)
     760:	8fbf002c 	lw	ra,44(sp)
     764:	8fb00028 	lw	s0,40(sp)
     768:	27bd0030 	addiu	sp,sp,48
     76c:	03e00008 	jr	ra
     770:	00000000 	nop

00000774 <func_809E5F44>:
     774:	27bdffe8 	addiu	sp,sp,-24
     778:	afa40018 	sw	a0,24(sp)
     77c:	afbf0014 	sw	ra,20(sp)
     780:	3c040600 	lui	a0,0x600
     784:	0c000000 	jal	0 <EnDekubaba_Init>
     788:	248402b8 	addiu	a0,a0,696
     78c:	8fa30018 	lw	v1,24(sp)
     790:	00027040 	sll	t6,v0,0x1
     794:	3c050600 	lui	a1,0x600
     798:	24a502b8 	addiu	a1,a1,696
     79c:	3c06c040 	lui	a2,0xc040
     7a0:	a46e01c6 	sh	t6,454(v1)
     7a4:	0c000000 	jal	0 <EnDekubaba_Init>
     7a8:	2464017c 	addiu	a0,v1,380
     7ac:	8fb80018 	lw	t8,24(sp)
     7b0:	3c0f0000 	lui	t7,0x0
     7b4:	25ef0000 	addiu	t7,t7,0
     7b8:	af0f01c0 	sw	t7,448(t8)
     7bc:	8fbf0014 	lw	ra,20(sp)
     7c0:	27bd0018 	addiu	sp,sp,24
     7c4:	03e00008 	jr	ra
     7c8:	00000000 	nop

000007cc <func_809E5F9C>:
     7cc:	44802000 	mtc1	zero,$f4
     7d0:	3c0f0000 	lui	t7,0x0
     7d4:	240e0008 	li	t6,8
     7d8:	25ef0000 	addiu	t7,t7,0
     7dc:	a48e01c6 	sh	t6,454(a0)
     7e0:	ac8f01c0 	sw	t7,448(a0)
     7e4:	03e00008 	jr	ra
     7e8:	e4840198 	swc1	$f4,408(a0)

000007ec <func_809E5FBC>:
     7ec:	27bdffe8 	addiu	sp,sp,-24
     7f0:	afbf0014 	sw	ra,20(sp)
     7f4:	00803025 	move	a2,a0
     7f8:	3c050600 	lui	a1,0x600
     7fc:	24a50208 	addiu	a1,a1,520
     800:	afa60018 	sw	a2,24(sp)
     804:	0c000000 	jal	0 <EnDekubaba_Init>
     808:	2484017c 	addiu	a0,a0,380
     80c:	8fa60018 	lw	a2,24(sp)
     810:	3c0e0000 	lui	t6,0x0
     814:	25ce0000 	addiu	t6,t6,0
     818:	a4c001c6 	sh	zero,454(a2)
     81c:	acce01c0 	sw	t6,448(a2)
     820:	8fbf0014 	lw	ra,20(sp)
     824:	27bd0018 	addiu	sp,sp,24
     828:	03e00008 	jr	ra
     82c:	00000000 	nop

00000830 <func_809E6000>:
     830:	27bdffd8 	addiu	sp,sp,-40
     834:	afa40028 	sw	a0,40(sp)
     838:	afbf0024 	sw	ra,36(sp)
     83c:	3c040600 	lui	a0,0x600
     840:	0c000000 	jal	0 <EnDekubaba_Init>
     844:	24840208 	addiu	a0,a0,520
     848:	44822000 	mtc1	v0,$f4
     84c:	3c01c040 	lui	at,0xc040
     850:	44814000 	mtc1	at,$f8
     854:	468021a0 	cvt.s.w	$f6,$f4
     858:	8fa40028 	lw	a0,40(sp)
     85c:	3c050600 	lui	a1,0x600
     860:	240e0002 	li	t6,2
     864:	afae0014 	sw	t6,20(sp)
     868:	24a50208 	addiu	a1,a1,520
     86c:	e7a60010 	swc1	$f6,16(sp)
     870:	3c063f80 	lui	a2,0x3f80
     874:	3c074170 	lui	a3,0x4170
     878:	e7a80018 	swc1	$f8,24(sp)
     87c:	0c000000 	jal	0 <EnDekubaba_Init>
     880:	2484017c 	addiu	a0,a0,380
     884:	8fa20028 	lw	v0,40(sp)
     888:	3c0f0000 	lui	t7,0x0
     88c:	25ef0000 	addiu	t7,t7,0
     890:	a44001c6 	sh	zero,454(v0)
     894:	ac4f01c0 	sw	t7,448(v0)
     898:	8fbf0024 	lw	ra,36(sp)
     89c:	27bd0028 	addiu	sp,sp,40
     8a0:	03e00008 	jr	ra
     8a4:	00000000 	nop

000008a8 <func_809E6078>:
     8a8:	908f0249 	lbu	t7,585(a0)
     8ac:	3c01bf80 	lui	at,0xbf80
     8b0:	44812000 	mtc1	at,$f4
     8b4:	3c190000 	lui	t9,0x0
     8b8:	240e0009 	li	t6,9
     8bc:	27390000 	addiu	t9,t9,0
     8c0:	35f80001 	ori	t8,t7,0x1
     8c4:	a48e01c6 	sh	t6,454(a0)
     8c8:	a0980249 	sb	t8,585(a0)
     8cc:	ac9901c0 	sw	t9,448(a0)
     8d0:	03e00008 	jr	ra
     8d4:	e4840198 	swc1	$f4,408(a0)

000008d8 <func_809E60A8>:
     8d8:	27bdffd8 	addiu	sp,sp,-40
     8dc:	afb00020 	sw	s0,32(sp)
     8e0:	afa5002c 	sw	a1,44(sp)
     8e4:	00808025 	move	s0,a0
     8e8:	afbf0024 	sw	ra,36(sp)
     8ec:	3c050600 	lui	a1,0x600
     8f0:	24a50208 	addiu	a1,a1,520
     8f4:	2484017c 	addiu	a0,a0,380
     8f8:	0c000000 	jal	0 <EnDekubaba_Init>
     8fc:	3c06c0a0 	lui	a2,0xc0a0
     900:	920f0249 	lbu	t7,585(s0)
     904:	8fae002c 	lw	t6,44(sp)
     908:	3c010000 	lui	at,0x0
     90c:	31f8fffe 	andi	t8,t7,0xfffe
     910:	a2180249 	sb	t8,585(s0)
     914:	a60e01c6 	sh	t6,454(s0)
     918:	c4260000 	lwc1	$f6,0(at)
     91c:	c6040230 	lwc1	$f4,560(s0)
     920:	02002025 	move	a0,s0
     924:	46062202 	mul.s	$f8,$f4,$f6
     928:	44054000 	mfc1	a1,$f8
     92c:	0c000000 	jal	0 <EnDekubaba_Init>
     930:	00000000 	nop
     934:	8fb9002c 	lw	t9,44(sp)
     938:	24010002 	li	at,2
     93c:	02002025 	move	a0,s0
     940:	1721000a 	bne	t9,at,96c <func_809E60A8+0x94>
     944:	24054000 	li	a1,16384
     948:	2408003e 	li	t0,62
     94c:	afa80010 	sw	t0,16(sp)
     950:	02002025 	move	a0,s0
     954:	00002825 	move	a1,zero
     958:	2406009b 	li	a2,155
     95c:	0c000000 	jal	0 <EnDekubaba_Init>
     960:	00003825 	move	a3,zero
     964:	10000006 	b	980 <func_809E60A8+0xa8>
     968:	00000000 	nop
     96c:	2409002a 	li	t1,42
     970:	afa90010 	sw	t1,16(sp)
     974:	240600ff 	li	a2,255
     978:	0c000000 	jal	0 <EnDekubaba_Init>
     97c:	00003825 	move	a3,zero
     980:	3c0a0000 	lui	t2,0x0
     984:	254a0000 	addiu	t2,t2,0
     988:	ae0a01c0 	sw	t2,448(s0)
     98c:	8fbf0024 	lw	ra,36(sp)
     990:	8fb00020 	lw	s0,32(sp)
     994:	27bd0028 	addiu	sp,sp,40
     998:	03e00008 	jr	ra
     99c:	00000000 	nop

000009a0 <func_809E6170>:
     9a0:	44802000 	mtc1	zero,$f4
     9a4:	a48001c6 	sh	zero,454(a0)
     9a8:	3c010000 	lui	at,0x0
     9ac:	e4840198 	swc1	$f4,408(a0)
     9b0:	c4260000 	lwc1	$f6,0(at)
     9b4:	848e00b6 	lh	t6,182(a0)
     9b8:	3c014080 	lui	at,0x4080
     9bc:	44814000 	mtc1	at,$f8
     9c0:	34018000 	li	at,0x8000
     9c4:	01c17821 	addu	t7,t6,at
     9c8:	3c014040 	lui	at,0x4040
     9cc:	44818000 	mtc1	at,$f16
     9d0:	c48a0230 	lwc1	$f10,560(a0)
     9d4:	90980249 	lbu	t8,585(a0)
     9d8:	8c880004 	lw	t0,4(a0)
     9dc:	46105482 	mul.s	$f18,$f10,$f16
     9e0:	3c0a0000 	lui	t2,0x0
     9e4:	254a0000 	addiu	t2,t2,0
     9e8:	3319fffe 	andi	t9,t8,0xfffe
     9ec:	35090030 	ori	t1,t0,0x30
     9f0:	a48f0032 	sh	t7,50(a0)
     9f4:	a0990249 	sb	t9,585(a0)
     9f8:	e4920068 	swc1	$f18,104(a0)
     9fc:	ac890004 	sw	t1,4(a0)
     a00:	ac8a01c0 	sw	t2,448(a0)
     a04:	e486006c 	swc1	$f6,108(a0)
     a08:	03e00008 	jr	ra
     a0c:	e4880060 	swc1	$f8,96(a0)

00000a10 <func_809E61E0>:
     a10:	27bdffd8 	addiu	sp,sp,-40
     a14:	afa40028 	sw	a0,40(sp)
     a18:	afbf0024 	sw	ra,36(sp)
     a1c:	3c040600 	lui	a0,0x600
     a20:	0c000000 	jal	0 <EnDekubaba_Init>
     a24:	248402b8 	addiu	a0,a0,696
     a28:	44822000 	mtc1	v0,$f4
     a2c:	3c01c040 	lui	at,0xc040
     a30:	44814000 	mtc1	at,$f8
     a34:	46802120 	cvt.s.w	$f4,$f4
     a38:	8fa30028 	lw	v1,40(sp)
     a3c:	44803000 	mtc1	zero,$f6
     a40:	3c050600 	lui	a1,0x600
     a44:	240e0002 	li	t6,2
     a48:	afae0014 	sw	t6,20(sp)
     a4c:	44072000 	mfc1	a3,$f4
     a50:	24a502b8 	addiu	a1,a1,696
     a54:	3c06bfc0 	lui	a2,0xbfc0
     a58:	e7a80018 	swc1	$f8,24(sp)
     a5c:	2464017c 	addiu	a0,v1,380
     a60:	0c000000 	jal	0 <EnDekubaba_Init>
     a64:	e7a60010 	swc1	$f6,16(sp)
     a68:	8fa30028 	lw	v1,40(sp)
     a6c:	3c190000 	lui	t9,0x0
     a70:	27390000 	addiu	t9,t9,0
     a74:	906f0249 	lbu	t7,585(v1)
     a78:	ac7901c0 	sw	t9,448(v1)
     a7c:	31f8fffe 	andi	t8,t7,0xfffe
     a80:	a0780249 	sb	t8,585(v1)
     a84:	8fbf0024 	lw	ra,36(sp)
     a88:	27bd0028 	addiu	sp,sp,40
     a8c:	03e00008 	jr	ra
     a90:	00000000 	nop

00000a94 <func_809E6264>:
     a94:	27bdffd0 	addiu	sp,sp,-48
     a98:	afbf002c 	sw	ra,44(sp)
     a9c:	afb00028 	sw	s0,40(sp)
     aa0:	8c820254 	lw	v0,596(a0)
     aa4:	00808025 	move	s0,a0
     aa8:	24010001 	li	at,1
     aac:	904e0056 	lbu	t6,86(v0)
     ab0:	24420040 	addiu	v0,v0,64
     ab4:	35cf0001 	ori	t7,t6,0x1
     ab8:	a04f0016 	sb	t7,22(v0)
     abc:	8c820254 	lw	v0,596(a0)
     ac0:	24040003 	li	a0,3
     ac4:	00041980 	sll	v1,a0,0x6
     ac8:	90580096 	lbu	t8,150(v0)
     acc:	24420040 	addiu	v0,v0,64
     ad0:	3c040600 	lui	a0,0x600
     ad4:	37190001 	ori	t9,t8,0x1
     ad8:	a0590056 	sb	t9,86(v0)
     adc:	8e080254 	lw	t0,596(s0)
     ae0:	01031021 	addu	v0,t0,v1
     ae4:	90490016 	lbu	t1,22(v0)
     ae8:	352a0001 	ori	t2,t1,0x1
     aec:	a04a0016 	sb	t2,22(v0)
     af0:	8e0b0254 	lw	t3,596(s0)
     af4:	01631021 	addu	v0,t3,v1
     af8:	904c0056 	lbu	t4,86(v0)
     afc:	358d0001 	ori	t5,t4,0x1
     b00:	a04d0056 	sb	t5,86(v0)
     b04:	8e0e0254 	lw	t6,596(s0)
     b08:	01c31021 	addu	v0,t6,v1
     b0c:	904f0096 	lbu	t7,150(v0)
     b10:	35f80001 	ori	t8,t7,0x1
     b14:	a0580096 	sb	t8,150(v0)
     b18:	8e190254 	lw	t9,596(s0)
     b1c:	03231021 	addu	v0,t9,v1
     b20:	904800d6 	lbu	t0,214(v0)
     b24:	35090001 	ori	t1,t0,0x1
     b28:	a04900d6 	sb	t1,214(v0)
     b2c:	860a01c6 	lh	t2,454(s0)
     b30:	15410015 	bne	t2,at,b88 <func_809E6264+0xf4>
     b34:	00000000 	nop
     b38:	3c040600 	lui	a0,0x600
     b3c:	0c000000 	jal	0 <EnDekubaba_Init>
     b40:	248402b8 	addiu	a0,a0,696
     b44:	44822000 	mtc1	v0,$f4
     b48:	44800000 	mtc1	zero,$f0
     b4c:	3c01c040 	lui	at,0xc040
     b50:	468021a0 	cvt.s.w	$f6,$f4
     b54:	44814000 	mtc1	at,$f8
     b58:	3c050600 	lui	a1,0x600
     b5c:	44070000 	mfc1	a3,$f0
     b60:	24a502b8 	addiu	a1,a1,696
     b64:	2604017c 	addiu	a0,s0,380
     b68:	e7a60010 	swc1	$f6,16(sp)
     b6c:	3c064080 	lui	a2,0x4080
     b70:	afa00014 	sw	zero,20(sp)
     b74:	0c000000 	jal	0 <EnDekubaba_Init>
     b78:	e7a80018 	swc1	$f8,24(sp)
     b7c:	240b0028 	li	t3,40
     b80:	10000013 	b	bd0 <func_809E6264+0x13c>
     b84:	a60b01c6 	sh	t3,454(s0)
     b88:	0c000000 	jal	0 <EnDekubaba_Init>
     b8c:	248402b8 	addiu	a0,a0,696
     b90:	44825000 	mtc1	v0,$f10
     b94:	44800000 	mtc1	zero,$f0
     b98:	3c01c040 	lui	at,0xc040
     b9c:	46805420 	cvt.s.w	$f16,$f10
     ba0:	44819000 	mtc1	at,$f18
     ba4:	3c050600 	lui	a1,0x600
     ba8:	44060000 	mfc1	a2,$f0
     bac:	44070000 	mfc1	a3,$f0
     bb0:	24a502b8 	addiu	a1,a1,696
     bb4:	e7b00010 	swc1	$f16,16(sp)
     bb8:	2604017c 	addiu	a0,s0,380
     bbc:	afa00014 	sw	zero,20(sp)
     bc0:	0c000000 	jal	0 <EnDekubaba_Init>
     bc4:	e7b20018 	swc1	$f18,24(sp)
     bc8:	240c003c 	li	t4,60
     bcc:	a60c01c6 	sh	t4,454(s0)
     bd0:	3c014270 	lui	at,0x4270
     bd4:	44813000 	mtc1	at,$f6
     bd8:	c6080230 	lwc1	$f8,560(s0)
     bdc:	c6040008 	lwc1	$f4,8(s0)
     be0:	c610000c 	lwc1	$f16,12(s0)
     be4:	46083282 	mul.s	$f10,$f6,$f8
     be8:	e6040024 	swc1	$f4,36(s0)
     bec:	c6040010 	lwc1	$f4,16(s0)
     bf0:	3c0d0000 	lui	t5,0x0
     bf4:	25ad0000 	addiu	t5,t5,0
     bf8:	ae0d01c0 	sw	t5,448(s0)
     bfc:	e604002c 	swc1	$f4,44(s0)
     c00:	460a8480 	add.s	$f18,$f16,$f10
     c04:	e6120028 	swc1	$f18,40(s0)
     c08:	8fbf002c 	lw	ra,44(sp)
     c0c:	8fb00028 	lw	s0,40(sp)
     c10:	27bd0030 	addiu	sp,sp,48
     c14:	03e00008 	jr	ra
     c18:	00000000 	nop

00000c1c <func_809E63EC>:
     c1c:	27bdffe0 	addiu	sp,sp,-32
     c20:	afbf001c 	sw	ra,28(sp)
     c24:	240ea000 	li	t6,-24576
     c28:	240fb000 	li	t7,-20480
     c2c:	2418b800 	li	t8,-18432
     c30:	a48e01c8 	sh	t6,456(a0)
     c34:	a48f01ce 	sh	t7,462(a0)
     c38:	a49801cc 	sh	t8,460(a0)
     c3c:	0c000000 	jal	0 <EnDekubaba_Init>
     c40:	afa40020 	sw	a0,32(sp)
     c44:	24190023 	li	t9,35
     c48:	8fa40020 	lw	a0,32(sp)
     c4c:	afb90010 	sw	t9,16(sp)
     c50:	24054000 	li	a1,16384
     c54:	240600ff 	li	a2,255
     c58:	0c000000 	jal	0 <EnDekubaba_Init>
     c5c:	00003825 	move	a3,zero
     c60:	8fa40020 	lw	a0,32(sp)
     c64:	3c0a0000 	lui	t2,0x0
     c68:	254a0000 	addiu	t2,t2,0
     c6c:	90880249 	lbu	t0,585(a0)
     c70:	ac8a01c0 	sw	t2,448(a0)
     c74:	3109fffe 	andi	t1,t0,0xfffe
     c78:	a0890249 	sb	t1,585(a0)
     c7c:	8fbf001c 	lw	ra,28(sp)
     c80:	27bd0020 	addiu	sp,sp,32
     c84:	03e00008 	jr	ra
     c88:	00000000 	nop

00000c8c <func_809E645C>:
     c8c:	27bdffe8 	addiu	sp,sp,-24
     c90:	afa5001c 	sw	a1,28(sp)
     c94:	afbf0014 	sw	ra,20(sp)
     c98:	3c053cf5 	lui	a1,0x3cf5
     c9c:	34a5c28f 	ori	a1,a1,0xc28f
     ca0:	0c000000 	jal	0 <EnDekubaba_Init>
     ca4:	afa40018 	sw	a0,24(sp)
     ca8:	8fa60018 	lw	a2,24(sp)
     cac:	8fa4001c 	lw	a0,28(sp)
     cb0:	3c01447a 	lui	at,0x447a
     cb4:	44812000 	mtc1	at,$f4
     cb8:	84ce00b4 	lh	t6,180(a2)
     cbc:	44800000 	mtc1	zero,$f0
     cc0:	3c014040 	lui	at,0x4040
     cc4:	44813000 	mtc1	at,$f6
     cc8:	25cfc000 	addiu	t7,t6,-16384
     ccc:	24070008 	li	a3,8
     cd0:	a4cf00b4 	sh	t7,180(a2)
     cd4:	24851c24 	addiu	a1,a0,7204
     cd8:	e4c400bc 	swc1	$f4,188(a2)
     cdc:	e4c0006c 	swc1	$f0,108(a2)
     ce0:	e4c00060 	swc1	$f0,96(a2)
     ce4:	0c000000 	jal	0 <EnDekubaba_Init>
     ce8:	e4c600c4 	swc1	$f6,196(a2)
     cec:	8fa60018 	lw	a2,24(sp)
     cf0:	2401ffdf 	li	at,-33
     cf4:	3c090000 	lui	t1,0x0
     cf8:	8cd80004 	lw	t8,4(a2)
     cfc:	240800c8 	li	t0,200
     d00:	25290000 	addiu	t1,t1,0
     d04:	0301c824 	and	t9,t8,at
     d08:	acd90004 	sw	t9,4(a2)
     d0c:	a4c801c6 	sh	t0,454(a2)
     d10:	acc901c0 	sw	t1,448(a2)
     d14:	8fbf0014 	lw	ra,20(sp)
     d18:	27bd0018 	addiu	sp,sp,24
     d1c:	03e00008 	jr	ra
     d20:	00000000 	nop

00000d24 <func_809E64F4>:
     d24:	27bdffe8 	addiu	sp,sp,-24
     d28:	afbf0014 	sw	ra,20(sp)
     d2c:	afa5001c 	sw	a1,28(sp)
     d30:	848201c6 	lh	v0,454(a0)
     d34:	3c014160 	lui	at,0x4160
     d38:	44815000 	mtc1	at,$f10
     d3c:	10400003 	beqz	v0,d4c <func_809E64F4+0x28>
     d40:	244effff 	addiu	t6,v0,-1
     d44:	a48e01c6 	sh	t6,454(a0)
     d48:	848201c6 	lh	v0,454(a0)
     d4c:	c4820230 	lwc1	$f2,560(a0)
     d50:	c488000c 	lwc1	$f8,12(a0)
     d54:	c4840008 	lwc1	$f4,8(a0)
     d58:	46025402 	mul.s	$f16,$f10,$f2
     d5c:	c4860010 	lwc1	$f6,16(a0)
     d60:	3c014348 	lui	at,0x4348
     d64:	e4840024 	swc1	$f4,36(a0)
     d68:	e486002c 	swc1	$f6,44(a0)
     d6c:	46104480 	add.s	$f18,$f8,$f16
     d70:	14400013 	bnez	v0,dc0 <func_809E64F4+0x9c>
     d74:	e4920028 	swc1	$f18,40(a0)
     d78:	44813000 	mtc1	at,$f6
     d7c:	c4840090 	lwc1	$f4,144(a0)
     d80:	3c0141f0 	lui	at,0x41f0
     d84:	46023282 	mul.s	$f10,$f6,$f2
     d88:	460a203c 	c.lt.s	$f4,$f10
     d8c:	00000000 	nop
     d90:	4502000c 	bc1fl	dc4 <func_809E64F4+0xa0>
     d94:	8fbf0014 	lw	ra,20(sp)
     d98:	44814000 	mtc1	at,$f8
     d9c:	c4800094 	lwc1	$f0,148(a0)
     da0:	46024402 	mul.s	$f16,$f8,$f2
     da4:	46000005 	abs.s	$f0,$f0
     da8:	4610003c 	c.lt.s	$f0,$f16
     dac:	00000000 	nop
     db0:	45020004 	bc1fl	dc4 <func_809E64F4+0xa0>
     db4:	8fbf0014 	lw	ra,20(sp)
     db8:	0c000000 	jal	0 <EnDekubaba_Init>
     dbc:	00000000 	nop
     dc0:	8fbf0014 	lw	ra,20(sp)
     dc4:	27bd0018 	addiu	sp,sp,24
     dc8:	03e00008 	jr	ra
     dcc:	00000000 	nop

00000dd0 <func_809E65A0>:
     dd0:	27bdff98 	addiu	sp,sp,-104
     dd4:	afbf0034 	sw	ra,52(sp)
     dd8:	afb00030 	sw	s0,48(sp)
     ddc:	afa5006c 	sw	a1,108(sp)
     de0:	8caf1c44 	lw	t7,7236(a1)
     de4:	00808025 	move	s0,a0
     de8:	afaf0064 	sw	t7,100(sp)
     dec:	848201c6 	lh	v0,454(a0)
     df0:	10400002 	beqz	v0,dfc <func_809E65A0+0x2c>
     df4:	2458ffff 	addiu	t8,v0,-1
     df8:	a49801c6 	sh	t8,454(a0)
     dfc:	0c000000 	jal	0 <EnDekubaba_Init>
     e00:	2604017c 	addiu	a0,s0,380
     e04:	861901c6 	lh	t9,454(s0)
     e08:	2408000f 	li	t0,15
     e0c:	3c013f00 	lui	at,0x3f00
     e10:	01194823 	subu	t1,t0,t9
     e14:	44895000 	mtc1	t1,$f10
     e18:	44810000 	mtc1	at,$f0
     e1c:	3c010000 	lui	at,0x0
     e20:	468054a0 	cvt.s.w	$f18,$f10
     e24:	c4260000 	lwc1	$f6,0(at)
     e28:	c6040230 	lwc1	$f4,560(s0)
     e2c:	3c014170 	lui	at,0x4170
     e30:	260400b4 	addiu	a0,s0,180
     e34:	46062202 	mul.s	$f8,$f4,$f6
     e38:	44813000 	mtc1	at,$f6
     e3c:	24051800 	li	a1,6144
     e40:	46009102 	mul.s	$f4,$f18,$f0
     e44:	24060800 	li	a2,2048
     e48:	46062283 	div.s	$f10,$f4,$f6
     e4c:	460a0480 	add.s	$f18,$f0,$f10
     e50:	46124082 	mul.s	$f2,$f8,$f18
     e54:	e6020058 	swc1	$f2,88(s0)
     e58:	e6020054 	swc1	$f2,84(s0)
     e5c:	0c000000 	jal	0 <EnDekubaba_Init>
     e60:	e6020050 	swc1	$f2,80(s0)
     e64:	860a01c6 	lh	t2,454(s0)
     e68:	240b000f 	li	t3,15
     e6c:	3c010000 	lui	at,0x0
     e70:	016a6023 	subu	t4,t3,t2
     e74:	448c2000 	mtc1	t4,$f4
     e78:	c4220000 	lwc1	$f2,0(at)
     e7c:	3c010000 	lui	at,0x0
     e80:	468021a0 	cvt.s.w	$f6,$f4
     e84:	c42a0000 	lwc1	$f10,0(at)
     e88:	3c010000 	lui	at,0x0
     e8c:	460a3002 	mul.s	$f0,$f6,$f10
     e90:	4600103c 	c.lt.s	$f2,$f0
     e94:	00000000 	nop
     e98:	45020004 	bc1fl	eac <func_809E65A0+0xdc>
     e9c:	46000386 	mov.s	$f14,$f0
     ea0:	10000002 	b	eac <func_809E65A0+0xdc>
     ea4:	46001386 	mov.s	$f14,$f2
     ea8:	46000386 	mov.s	$f14,$f0
     eac:	c4280000 	lwc1	$f8,0(at)
     eb0:	46087302 	mul.s	$f12,$f14,$f8
     eb4:	0c000000 	jal	0 <EnDekubaba_Init>
     eb8:	00000000 	nop
     ebc:	3c014200 	lui	at,0x4200
     ec0:	44819000 	mtc1	at,$f18
     ec4:	3c014160 	lui	at,0x4160
     ec8:	44813000 	mtc1	at,$f6
     ecc:	46120102 	mul.s	$f4,$f0,$f18
     ed0:	46062280 	add.s	$f10,$f4,$f6
     ed4:	e7aa005c 	swc1	$f10,92(sp)
     ed8:	860200b4 	lh	v0,180(s0)
     edc:	2841c71d 	slti	at,v0,-14563
     ee0:	50200005 	beqzl	at,ef8 <func_809E65A0+0x128>
     ee4:	2841dc72 	slti	at,v0,-9102
     ee8:	44806000 	mtc1	zero,$f12
     eec:	10000071 	b	10b4 <func_809E65A0+0x2e4>
     ef0:	860d01c6 	lh	t5,454(s0)
     ef4:	2841dc72 	slti	at,v0,-9102
     ef8:	1020000c 	beqz	at,f2c <func_809E65A0+0x15c>
     efc:	260401ca 	addiu	a0,s0,458
     f00:	2405aaab 	li	a1,-21845
     f04:	0c000000 	jal	0 <EnDekubaba_Init>
     f08:	2406038e 	li	a2,910
     f0c:	0c000000 	jal	0 <EnDekubaba_Init>
     f10:	860401ca 	lh	a0,458(s0)
     f14:	3c0141a0 	lui	at,0x41a0
     f18:	44818000 	mtc1	at,$f16
     f1c:	00000000 	nop
     f20:	46100302 	mul.s	$f12,$f0,$f16
     f24:	10000063 	b	10b4 <func_809E65A0+0x2e4>
     f28:	860d01c6 	lh	t5,454(s0)
     f2c:	2841f1c8 	slti	at,v0,-3640
     f30:	10200031 	beqz	at,ff8 <func_809E65A0+0x228>
     f34:	260401ca 	addiu	a0,s0,458
     f38:	260401ca 	addiu	a0,s0,458
     f3c:	2405f556 	li	a1,-2730
     f40:	0c000000 	jal	0 <EnDekubaba_Init>
     f44:	2406038e 	li	a2,910
     f48:	260401cc 	addiu	a0,s0,460
     f4c:	2405aaab 	li	a1,-21845
     f50:	0c000000 	jal	0 <EnDekubaba_Init>
     f54:	2406038e 	li	a2,910
     f58:	260401ce 	addiu	a0,s0,462
     f5c:	2405aaab 	li	a1,-21845
     f60:	0c000000 	jal	0 <EnDekubaba_Init>
     f64:	24060222 	li	a2,546
     f68:	0c000000 	jal	0 <EnDekubaba_Init>
     f6c:	860401cc 	lh	a0,460(s0)
     f70:	e7a00040 	swc1	$f0,64(sp)
     f74:	0c000000 	jal	0 <EnDekubaba_Init>
     f78:	860401ca 	lh	a0,458(s0)
     f7c:	e7a00044 	swc1	$f0,68(sp)
     f80:	0c000000 	jal	0 <EnDekubaba_Init>
     f84:	860401ce 	lh	a0,462(s0)
     f88:	e7a00048 	swc1	$f0,72(sp)
     f8c:	0c000000 	jal	0 <EnDekubaba_Init>
     f90:	860401cc 	lh	a0,460(s0)
     f94:	860401ca 	lh	a0,458(s0)
     f98:	0c000000 	jal	0 <EnDekubaba_Init>
     f9c:	e7a0004c 	swc1	$f0,76(sp)
     fa0:	860401ce 	lh	a0,462(s0)
     fa4:	0c000000 	jal	0 <EnDekubaba_Init>
     fa8:	e7a00050 	swc1	$f0,80(sp)
     fac:	c7ae0050 	lwc1	$f14,80(sp)
     fb0:	c7a2004c 	lwc1	$f2,76(sp)
     fb4:	3c0141a0 	lui	at,0x41a0
     fb8:	46007487 	neg.s	$f18,$f14
     fbc:	44818000 	mtc1	at,$f16
     fc0:	46029101 	sub.s	$f4,$f18,$f2
     fc4:	c7a8005c 	lwc1	$f8,92(sp)
     fc8:	c7b20048 	lwc1	$f18,72(sp)
     fcc:	46048182 	mul.s	$f6,$f16,$f4
     fd0:	46064281 	sub.s	$f10,$f8,$f6
     fd4:	46000207 	neg.s	$f8,$f0
     fd8:	46125102 	mul.s	$f4,$f10,$f18
     fdc:	c7b20040 	lwc1	$f18,64(sp)
     fe0:	c7aa0044 	lwc1	$f10,68(sp)
     fe4:	46082183 	div.s	$f6,$f4,$f8
     fe8:	46125100 	add.s	$f4,$f10,$f18
     fec:	46048202 	mul.s	$f8,$f16,$f4
     ff0:	1000002f 	b	10b0 <func_809E65A0+0x2e0>
     ff4:	46083300 	add.s	$f12,$f6,$f8
     ff8:	2405f556 	li	a1,-2730
     ffc:	0c000000 	jal	0 <EnDekubaba_Init>
    1000:	2406038e 	li	a2,910
    1004:	260401cc 	addiu	a0,s0,460
    1008:	2405ce39 	li	a1,-12743
    100c:	0c000000 	jal	0 <EnDekubaba_Init>
    1010:	24060222 	li	a2,546
    1014:	260401ce 	addiu	a0,s0,462
    1018:	2405aaab 	li	a1,-21845
    101c:	0c000000 	jal	0 <EnDekubaba_Init>
    1020:	24060222 	li	a2,546
    1024:	0c000000 	jal	0 <EnDekubaba_Init>
    1028:	860401cc 	lh	a0,460(s0)
    102c:	e7a00040 	swc1	$f0,64(sp)
    1030:	0c000000 	jal	0 <EnDekubaba_Init>
    1034:	860401ca 	lh	a0,458(s0)
    1038:	e7a00044 	swc1	$f0,68(sp)
    103c:	0c000000 	jal	0 <EnDekubaba_Init>
    1040:	860401ce 	lh	a0,462(s0)
    1044:	e7a00048 	swc1	$f0,72(sp)
    1048:	0c000000 	jal	0 <EnDekubaba_Init>
    104c:	860401cc 	lh	a0,460(s0)
    1050:	860401ca 	lh	a0,458(s0)
    1054:	0c000000 	jal	0 <EnDekubaba_Init>
    1058:	e7a0004c 	swc1	$f0,76(sp)
    105c:	860401ce 	lh	a0,462(s0)
    1060:	0c000000 	jal	0 <EnDekubaba_Init>
    1064:	e7a00050 	swc1	$f0,80(sp)
    1068:	c7ae0050 	lwc1	$f14,80(sp)
    106c:	c7a2004c 	lwc1	$f2,76(sp)
    1070:	3c0141a0 	lui	at,0x41a0
    1074:	46007487 	neg.s	$f18,$f14
    1078:	44818000 	mtc1	at,$f16
    107c:	46029101 	sub.s	$f4,$f18,$f2
    1080:	c7aa005c 	lwc1	$f10,92(sp)
    1084:	c7b20048 	lwc1	$f18,72(sp)
    1088:	46048182 	mul.s	$f6,$f16,$f4
    108c:	46065201 	sub.s	$f8,$f10,$f6
    1090:	46000287 	neg.s	$f10,$f0
    1094:	46124102 	mul.s	$f4,$f8,$f18
    1098:	c7b20040 	lwc1	$f18,64(sp)
    109c:	c7a80044 	lwc1	$f8,68(sp)
    10a0:	460a2183 	div.s	$f6,$f4,$f10
    10a4:	46124100 	add.s	$f4,$f8,$f18
    10a8:	46048282 	mul.s	$f10,$f16,$f4
    10ac:	460a3300 	add.s	$f12,$f6,$f10
    10b0:	860d01c6 	lh	t5,454(s0)
    10b4:	8fa50064 	lw	a1,100(sp)
    10b8:	26040008 	addiu	a0,s0,8
    10bc:	29a1000a 	slti	at,t5,10
    10c0:	1020000a 	beqz	at,10ec <func_809E65A0+0x31c>
    10c4:	24a50024 	addiu	a1,a1,36
    10c8:	0c000000 	jal	0 <EnDekubaba_Init>
    10cc:	e7ac0060 	swc1	$f12,96(sp)
    10d0:	00022c00 	sll	a1,v0,0x10
    10d4:	00052c03 	sra	a1,a1,0x10
    10d8:	260400b6 	addiu	a0,s0,182
    10dc:	24060002 	li	a2,2
    10e0:	0c000000 	jal	0 <EnDekubaba_Init>
    10e4:	24070e38 	li	a3,3640
    10e8:	c7ac0060 	lwc1	$f12,96(sp)
    10ec:	c7a8005c 	lwc1	$f8,92(sp)
    10f0:	c6120230 	lwc1	$f18,560(s0)
    10f4:	c606000c 	lwc1	$f6,12(s0)
    10f8:	860400b6 	lh	a0,182(s0)
    10fc:	46124102 	mul.s	$f4,$f8,$f18
    1100:	260e0008 	addiu	t6,s0,8
    1104:	46043280 	add.s	$f10,$f6,$f4
    1108:	e60a0028 	swc1	$f10,40(s0)
    110c:	e7ac0060 	swc1	$f12,96(sp)
    1110:	0c000000 	jal	0 <EnDekubaba_Init>
    1114:	afae0038 	sw	t6,56(sp)
    1118:	c7ac0060 	lwc1	$f12,96(sp)
    111c:	c6080230 	lwc1	$f8,560(s0)
    1120:	46086482 	mul.s	$f18,$f12,$f8
    1124:	00000000 	nop
    1128:	46120182 	mul.s	$f6,$f0,$f18
    112c:	e7a60058 	swc1	$f6,88(sp)
    1130:	0c000000 	jal	0 <EnDekubaba_Init>
    1134:	860400b6 	lh	a0,182(s0)
    1138:	c7b20060 	lwc1	$f18,96(sp)
    113c:	c6100230 	lwc1	$f16,560(s0)
    1140:	c60e0008 	lwc1	$f14,8(s0)
    1144:	c7ac0058 	lwc1	$f12,88(sp)
    1148:	46109482 	mul.s	$f18,$f18,$f16
    114c:	c60a0010 	lwc1	$f10,16(s0)
    1150:	460c7300 	add.s	$f12,$f14,$f12
    1154:	3c014040 	lui	at,0x4040
    1158:	44817000 	mtc1	at,$f14
    115c:	3c014140 	lui	at,0x4140
    1160:	44814000 	mtc1	at,$f8
    1164:	46120482 	mul.s	$f18,$f0,$f18
    1168:	3c0140a0 	lui	at,0x40a0
    116c:	44813000 	mtc1	at,$f6
    1170:	460e8382 	mul.s	$f14,$f16,$f14
    1174:	e60c0024 	swc1	$f12,36(s0)
    1178:	24090001 	li	t1,1
    117c:	46088202 	mul.s	$f8,$f16,$f8
    1180:	240bffff 	li	t3,-1
    1184:	46125480 	add.s	$f18,$f10,$f18
    1188:	46068182 	mul.s	$f6,$f16,$f6
    118c:	44067000 	mfc1	a2,$f14
    1190:	240a000a 	li	t2,10
    1194:	e612002c 	swc1	$f18,44(s0)
    1198:	8fa4006c 	lw	a0,108(sp)
    119c:	8fa50038 	lw	a1,56(sp)
    11a0:	4600420d 	trunc.w.s	$f8,$f8
    11a4:	00003825 	move	a3,zero
    11a8:	afa90018 	sw	t1,24(sp)
    11ac:	4600318d 	trunc.w.s	$f6,$f6
    11b0:	44184000 	mfc1	t8,$f8
    11b4:	afab001c 	sw	t3,28(sp)
    11b8:	afaa0020 	sw	t2,32(sp)
    11bc:	44193000 	mfc1	t9,$f6
    11c0:	afb80010 	sw	t8,16(sp)
    11c4:	afa00024 	sw	zero,36(sp)
    11c8:	0c000000 	jal	0 <EnDekubaba_Init>
    11cc:	afb90014 	sw	t9,20(sp)
    11d0:	860c01c6 	lh	t4,454(s0)
    11d4:	8fa50064 	lw	a1,100(sp)
    11d8:	15800011 	bnez	t4,1220 <func_809E65A0+0x450>
    11dc:	24a50024 	addiu	a1,a1,36
    11e0:	0c000000 	jal	0 <EnDekubaba_Init>
    11e4:	8fa40038 	lw	a0,56(sp)
    11e8:	3c014370 	lui	at,0x4370
    11ec:	44813000 	mtc1	at,$f6
    11f0:	c6040230 	lwc1	$f4,560(s0)
    11f4:	46043282 	mul.s	$f10,$f6,$f4
    11f8:	460a003c 	c.lt.s	$f0,$f10
    11fc:	00000000 	nop
    1200:	45000005 	bc1f	1218 <func_809E65A0+0x448>
    1204:	00000000 	nop
    1208:	0c000000 	jal	0 <EnDekubaba_Init>
    120c:	02002025 	move	a0,s0
    1210:	10000004 	b	1224 <func_809E65A0+0x454>
    1214:	8fbf0034 	lw	ra,52(sp)
    1218:	0c000000 	jal	0 <EnDekubaba_Init>
    121c:	02002025 	move	a0,s0
    1220:	8fbf0034 	lw	ra,52(sp)
    1224:	8fb00030 	lw	s0,48(sp)
    1228:	27bd0068 	addiu	sp,sp,104
    122c:	03e00008 	jr	ra
    1230:	00000000 	nop

00001234 <func_809E6A04>:
    1234:	27bdffa0 	addiu	sp,sp,-96
    1238:	afbf0034 	sw	ra,52(sp)
    123c:	afb00030 	sw	s0,48(sp)
    1240:	afa50064 	sw	a1,100(sp)
    1244:	848201c6 	lh	v0,454(a0)
    1248:	00808025 	move	s0,a0
    124c:	10400002 	beqz	v0,1258 <func_809E6A04+0x24>
    1250:	244effff 	addiu	t6,v0,-1
    1254:	a48e01c6 	sh	t6,454(a0)
    1258:	0c000000 	jal	0 <EnDekubaba_Init>
    125c:	2604017c 	addiu	a0,s0,380
    1260:	860f01c6 	lh	t7,454(s0)
    1264:	3c010000 	lui	at,0x0
    1268:	c4260000 	lwc1	$f6,0(at)
    126c:	448f5000 	mtc1	t7,$f10
    1270:	c6040230 	lwc1	$f4,560(s0)
    1274:	3c010000 	lui	at,0x0
    1278:	468054a0 	cvt.s.w	$f18,$f10
    127c:	46062202 	mul.s	$f8,$f4,$f6
    1280:	c4240000 	lwc1	$f4,0(at)
    1284:	3c013f00 	lui	at,0x3f00
    1288:	44815000 	mtc1	at,$f10
    128c:	260400b4 	addiu	a0,s0,180
    1290:	46049182 	mul.s	$f6,$f18,$f4
    1294:	2405c000 	li	a1,-16384
    1298:	24060300 	li	a2,768
    129c:	46065480 	add.s	$f18,$f10,$f6
    12a0:	46124082 	mul.s	$f2,$f8,$f18
    12a4:	e6020058 	swc1	$f2,88(s0)
    12a8:	e6020054 	swc1	$f2,84(s0)
    12ac:	0c000000 	jal	0 <EnDekubaba_Init>
    12b0:	e6020050 	swc1	$f2,80(s0)
    12b4:	861801c6 	lh	t8,454(s0)
    12b8:	3c010000 	lui	at,0x0
    12bc:	c4220000 	lwc1	$f2,0(at)
    12c0:	44982000 	mtc1	t8,$f4
    12c4:	3c010000 	lui	at,0x0
    12c8:	c4260000 	lwc1	$f6,0(at)
    12cc:	468022a0 	cvt.s.w	$f10,$f4
    12d0:	3c010000 	lui	at,0x0
    12d4:	46065002 	mul.s	$f0,$f10,$f6
    12d8:	4600103c 	c.lt.s	$f2,$f0
    12dc:	00000000 	nop
    12e0:	45020004 	bc1fl	12f4 <func_809E6A04+0xc0>
    12e4:	46000386 	mov.s	$f14,$f0
    12e8:	10000002 	b	12f4 <func_809E6A04+0xc0>
    12ec:	46001386 	mov.s	$f14,$f2
    12f0:	46000386 	mov.s	$f14,$f0
    12f4:	c4280000 	lwc1	$f8,0(at)
    12f8:	46087302 	mul.s	$f12,$f14,$f8
    12fc:	0c000000 	jal	0 <EnDekubaba_Init>
    1300:	00000000 	nop
    1304:	3c014200 	lui	at,0x4200
    1308:	44819000 	mtc1	at,$f18
    130c:	3c014160 	lui	at,0x4160
    1310:	44815000 	mtc1	at,$f10
    1314:	46120102 	mul.s	$f4,$f0,$f18
    1318:	460a2180 	add.s	$f6,$f4,$f10
    131c:	e7a60058 	swc1	$f6,88(sp)
    1320:	860200b4 	lh	v0,180(s0)
    1324:	2841c71d 	slti	at,v0,-14563
    1328:	50200005 	beqzl	at,1340 <func_809E6A04+0x10c>
    132c:	2841dc72 	slti	at,v0,-9102
    1330:	44806000 	mtc1	zero,$f12
    1334:	10000071 	b	14fc <func_809E6A04+0x2c8>
    1338:	c7a80058 	lwc1	$f8,88(sp)
    133c:	2841dc72 	slti	at,v0,-9102
    1340:	1020000c 	beqz	at,1374 <func_809E6A04+0x140>
    1344:	260401ca 	addiu	a0,s0,458
    1348:	2405c000 	li	a1,-16384
    134c:	0c000000 	jal	0 <EnDekubaba_Init>
    1350:	24060555 	li	a2,1365
    1354:	0c000000 	jal	0 <EnDekubaba_Init>
    1358:	860401ca 	lh	a0,458(s0)
    135c:	3c0141a0 	lui	at,0x41a0
    1360:	44818000 	mtc1	at,$f16
    1364:	00000000 	nop
    1368:	46100302 	mul.s	$f12,$f0,$f16
    136c:	10000063 	b	14fc <func_809E6A04+0x2c8>
    1370:	c7a80058 	lwc1	$f8,88(sp)
    1374:	2841f1c8 	slti	at,v0,-3640
    1378:	10200031 	beqz	at,1440 <func_809E6A04+0x20c>
    137c:	260401ca 	addiu	a0,s0,458
    1380:	260401ca 	addiu	a0,s0,458
    1384:	2405aaab 	li	a1,-21845
    1388:	0c000000 	jal	0 <EnDekubaba_Init>
    138c:	24060555 	li	a2,1365
    1390:	260401cc 	addiu	a0,s0,460
    1394:	2405c000 	li	a1,-16384
    1398:	0c000000 	jal	0 <EnDekubaba_Init>
    139c:	24060555 	li	a2,1365
    13a0:	260401ce 	addiu	a0,s0,462
    13a4:	2405c000 	li	a1,-16384
    13a8:	0c000000 	jal	0 <EnDekubaba_Init>
    13ac:	24060333 	li	a2,819
    13b0:	0c000000 	jal	0 <EnDekubaba_Init>
    13b4:	860401cc 	lh	a0,460(s0)
    13b8:	e7a0003c 	swc1	$f0,60(sp)
    13bc:	0c000000 	jal	0 <EnDekubaba_Init>
    13c0:	860401ca 	lh	a0,458(s0)
    13c4:	e7a00040 	swc1	$f0,64(sp)
    13c8:	0c000000 	jal	0 <EnDekubaba_Init>
    13cc:	860401ce 	lh	a0,462(s0)
    13d0:	e7a00044 	swc1	$f0,68(sp)
    13d4:	0c000000 	jal	0 <EnDekubaba_Init>
    13d8:	860401cc 	lh	a0,460(s0)
    13dc:	860401ca 	lh	a0,458(s0)
    13e0:	0c000000 	jal	0 <EnDekubaba_Init>
    13e4:	e7a00048 	swc1	$f0,72(sp)
    13e8:	860401ce 	lh	a0,462(s0)
    13ec:	0c000000 	jal	0 <EnDekubaba_Init>
    13f0:	e7a0004c 	swc1	$f0,76(sp)
    13f4:	c7ae004c 	lwc1	$f14,76(sp)
    13f8:	c7a20048 	lwc1	$f2,72(sp)
    13fc:	3c0141a0 	lui	at,0x41a0
    1400:	46007487 	neg.s	$f18,$f14
    1404:	44818000 	mtc1	at,$f16
    1408:	46029101 	sub.s	$f4,$f18,$f2
    140c:	c7a80058 	lwc1	$f8,88(sp)
    1410:	c7b20044 	lwc1	$f18,68(sp)
    1414:	46048282 	mul.s	$f10,$f16,$f4
    1418:	460a4181 	sub.s	$f6,$f8,$f10
    141c:	46000207 	neg.s	$f8,$f0
    1420:	46123102 	mul.s	$f4,$f6,$f18
    1424:	c7b2003c 	lwc1	$f18,60(sp)
    1428:	c7a60040 	lwc1	$f6,64(sp)
    142c:	46082283 	div.s	$f10,$f4,$f8
    1430:	46123100 	add.s	$f4,$f6,$f18
    1434:	46048202 	mul.s	$f8,$f16,$f4
    1438:	1000002f 	b	14f8 <func_809E6A04+0x2c4>
    143c:	46085300 	add.s	$f12,$f10,$f8
    1440:	2405aaab 	li	a1,-21845
    1444:	0c000000 	jal	0 <EnDekubaba_Init>
    1448:	24060555 	li	a2,1365
    144c:	260401cc 	addiu	a0,s0,460
    1450:	2405aaab 	li	a1,-21845
    1454:	0c000000 	jal	0 <EnDekubaba_Init>
    1458:	24060333 	li	a2,819
    145c:	260401ce 	addiu	a0,s0,462
    1460:	2405c000 	li	a1,-16384
    1464:	0c000000 	jal	0 <EnDekubaba_Init>
    1468:	24060333 	li	a2,819
    146c:	0c000000 	jal	0 <EnDekubaba_Init>
    1470:	860401cc 	lh	a0,460(s0)
    1474:	e7a0003c 	swc1	$f0,60(sp)
    1478:	0c000000 	jal	0 <EnDekubaba_Init>
    147c:	860401ca 	lh	a0,458(s0)
    1480:	e7a00040 	swc1	$f0,64(sp)
    1484:	0c000000 	jal	0 <EnDekubaba_Init>
    1488:	860401ce 	lh	a0,462(s0)
    148c:	e7a00044 	swc1	$f0,68(sp)
    1490:	0c000000 	jal	0 <EnDekubaba_Init>
    1494:	860401cc 	lh	a0,460(s0)
    1498:	860401ca 	lh	a0,458(s0)
    149c:	0c000000 	jal	0 <EnDekubaba_Init>
    14a0:	e7a00048 	swc1	$f0,72(sp)
    14a4:	860401ce 	lh	a0,462(s0)
    14a8:	0c000000 	jal	0 <EnDekubaba_Init>
    14ac:	e7a0004c 	swc1	$f0,76(sp)
    14b0:	c7ae004c 	lwc1	$f14,76(sp)
    14b4:	c7a20048 	lwc1	$f2,72(sp)
    14b8:	3c0141a0 	lui	at,0x41a0
    14bc:	46007487 	neg.s	$f18,$f14
    14c0:	44818000 	mtc1	at,$f16
    14c4:	46029101 	sub.s	$f4,$f18,$f2
    14c8:	c7a60058 	lwc1	$f6,88(sp)
    14cc:	c7b20044 	lwc1	$f18,68(sp)
    14d0:	46048282 	mul.s	$f10,$f16,$f4
    14d4:	460a3201 	sub.s	$f8,$f6,$f10
    14d8:	46000187 	neg.s	$f6,$f0
    14dc:	46124102 	mul.s	$f4,$f8,$f18
    14e0:	c7b2003c 	lwc1	$f18,60(sp)
    14e4:	c7a80040 	lwc1	$f8,64(sp)
    14e8:	46062283 	div.s	$f10,$f4,$f6
    14ec:	46124100 	add.s	$f4,$f8,$f18
    14f0:	46048182 	mul.s	$f6,$f16,$f4
    14f4:	46065300 	add.s	$f12,$f10,$f6
    14f8:	c7a80058 	lwc1	$f8,88(sp)
    14fc:	c6120230 	lwc1	$f18,560(s0)
    1500:	c60a000c 	lwc1	$f10,12(s0)
    1504:	860400b6 	lh	a0,182(s0)
    1508:	46124102 	mul.s	$f4,$f8,$f18
    150c:	46045180 	add.s	$f6,$f10,$f4
    1510:	e6060028 	swc1	$f6,40(s0)
    1514:	0c000000 	jal	0 <EnDekubaba_Init>
    1518:	e7ac005c 	swc1	$f12,92(sp)
    151c:	c7ac005c 	lwc1	$f12,92(sp)
    1520:	c6080230 	lwc1	$f8,560(s0)
    1524:	46086482 	mul.s	$f18,$f12,$f8
    1528:	00000000 	nop
    152c:	46120282 	mul.s	$f10,$f0,$f18
    1530:	e7aa0054 	swc1	$f10,84(sp)
    1534:	0c000000 	jal	0 <EnDekubaba_Init>
    1538:	860400b6 	lh	a0,182(s0)
    153c:	c7b2005c 	lwc1	$f18,92(sp)
    1540:	c6100230 	lwc1	$f16,560(s0)
    1544:	c60e0008 	lwc1	$f14,8(s0)
    1548:	c7ac0054 	lwc1	$f12,84(sp)
    154c:	46109482 	mul.s	$f18,$f18,$f16
    1550:	c60a0010 	lwc1	$f10,16(s0)
    1554:	460c7300 	add.s	$f12,$f14,$f12
    1558:	3c014040 	lui	at,0x4040
    155c:	44817000 	mtc1	at,$f14
    1560:	3c014140 	lui	at,0x4140
    1564:	44814000 	mtc1	at,$f8
    1568:	46120482 	mul.s	$f18,$f0,$f18
    156c:	3c0140a0 	lui	at,0x40a0
    1570:	44813000 	mtc1	at,$f6
    1574:	460e8382 	mul.s	$f14,$f16,$f14
    1578:	e60c0024 	swc1	$f12,36(s0)
    157c:	240b0001 	li	t3,1
    1580:	46088202 	mul.s	$f8,$f16,$f8
    1584:	240cffff 	li	t4,-1
    1588:	46125480 	add.s	$f18,$f10,$f18
    158c:	46068182 	mul.s	$f6,$f16,$f6
    1590:	44067000 	mfc1	a2,$f14
    1594:	240d000a 	li	t5,10
    1598:	e612002c 	swc1	$f18,44(s0)
    159c:	8fa40064 	lw	a0,100(sp)
    15a0:	26050008 	addiu	a1,s0,8
    15a4:	4600420d 	trunc.w.s	$f8,$f8
    15a8:	00003825 	move	a3,zero
    15ac:	afab0018 	sw	t3,24(sp)
    15b0:	4600318d 	trunc.w.s	$f6,$f6
    15b4:	44084000 	mfc1	t0,$f8
    15b8:	afac001c 	sw	t4,28(sp)
    15bc:	afad0020 	sw	t5,32(sp)
    15c0:	440a3000 	mfc1	t2,$f6
    15c4:	afa80010 	sw	t0,16(sp)
    15c8:	afa00024 	sw	zero,36(sp)
    15cc:	0c000000 	jal	0 <EnDekubaba_Init>
    15d0:	afaa0014 	sw	t2,20(sp)
    15d4:	860e01c6 	lh	t6,454(s0)
    15d8:	55c00004 	bnezl	t6,15ec <func_809E6A04+0x3b8>
    15dc:	8fbf0034 	lw	ra,52(sp)
    15e0:	0c000000 	jal	0 <EnDekubaba_Init>
    15e4:	02002025 	move	a0,s0
    15e8:	8fbf0034 	lw	ra,52(sp)
    15ec:	8fb00030 	lw	s0,48(sp)
    15f0:	27bd0060 	addiu	sp,sp,96
    15f4:	03e00008 	jr	ra
    15f8:	00000000 	nop

000015fc <func_809E6DCC>:
    15fc:	27bdffd0 	addiu	sp,sp,-48
    1600:	afb00018 	sw	s0,24(sp)
    1604:	00808025 	move	s0,a0
    1608:	afbf001c 	sw	ra,28(sp)
    160c:	0c000000 	jal	0 <EnDekubaba_Init>
    1610:	848401cc 	lh	a0,460(a0)
    1614:	e7a00024 	swc1	$f0,36(sp)
    1618:	0c000000 	jal	0 <EnDekubaba_Init>
    161c:	860401ca 	lh	a0,458(s0)
    1620:	e7a00028 	swc1	$f0,40(sp)
    1624:	0c000000 	jal	0 <EnDekubaba_Init>
    1628:	860401ce 	lh	a0,462(s0)
    162c:	c7a40028 	lwc1	$f4,40(sp)
    1630:	c7a60024 	lwc1	$f6,36(sp)
    1634:	3c0141a0 	lui	at,0x41a0
    1638:	44818000 	mtc1	at,$f16
    163c:	46062200 	add.s	$f8,$f4,$f6
    1640:	46080280 	add.s	$f10,$f0,$f8
    1644:	46105482 	mul.s	$f18,$f10,$f16
    1648:	e7b2002c 	swc1	$f18,44(sp)
    164c:	0c000000 	jal	0 <EnDekubaba_Init>
    1650:	860400b6 	lh	a0,182(s0)
    1654:	c7a4002c 	lwc1	$f4,44(sp)
    1658:	c6060230 	lwc1	$f6,560(s0)
    165c:	c6100008 	lwc1	$f16,8(s0)
    1660:	860401cc 	lh	a0,460(s0)
    1664:	46062202 	mul.s	$f8,$f4,$f6
    1668:	00000000 	nop
    166c:	46080282 	mul.s	$f10,$f0,$f8
    1670:	46105480 	add.s	$f18,$f10,$f16
    1674:	0c000000 	jal	0 <EnDekubaba_Init>
    1678:	e6120024 	swc1	$f18,36(s0)
    167c:	e7a00024 	swc1	$f0,36(sp)
    1680:	0c000000 	jal	0 <EnDekubaba_Init>
    1684:	860401ca 	lh	a0,458(s0)
    1688:	e7a00028 	swc1	$f0,40(sp)
    168c:	0c000000 	jal	0 <EnDekubaba_Init>
    1690:	860401ce 	lh	a0,462(s0)
    1694:	c7a40028 	lwc1	$f4,40(sp)
    1698:	c7a60024 	lwc1	$f6,36(sp)
    169c:	3c0141a0 	lui	at,0x41a0
    16a0:	44818000 	mtc1	at,$f16
    16a4:	46062200 	add.s	$f8,$f4,$f6
    16a8:	c6040230 	lwc1	$f4,560(s0)
    16ac:	860400b6 	lh	a0,182(s0)
    16b0:	46080280 	add.s	$f10,$f0,$f8
    16b4:	c608000c 	lwc1	$f8,12(s0)
    16b8:	46105482 	mul.s	$f18,$f10,$f16
    16bc:	00000000 	nop
    16c0:	46049182 	mul.s	$f6,$f18,$f4
    16c4:	46064281 	sub.s	$f10,$f8,$f6
    16c8:	0c000000 	jal	0 <EnDekubaba_Init>
    16cc:	e60a0028 	swc1	$f10,40(s0)
    16d0:	c7b0002c 	lwc1	$f16,44(sp)
    16d4:	c6120230 	lwc1	$f18,560(s0)
    16d8:	c6060010 	lwc1	$f6,16(s0)
    16dc:	46128102 	mul.s	$f4,$f16,$f18
    16e0:	00000000 	nop
    16e4:	46040202 	mul.s	$f8,$f0,$f4
    16e8:	46064280 	add.s	$f10,$f8,$f6
    16ec:	e60a002c 	swc1	$f10,44(s0)
    16f0:	8fbf001c 	lw	ra,28(sp)
    16f4:	8fb00018 	lw	s0,24(sp)
    16f8:	27bd0030 	addiu	sp,sp,48
    16fc:	03e00008 	jr	ra
    1700:	00000000 	nop

00001704 <func_809E6ED4>:
    1704:	27bdffc8 	addiu	sp,sp,-56
    1708:	afb00018 	sw	s0,24(sp)
    170c:	afbf001c 	sw	ra,28(sp)
    1710:	8cae1c44 	lw	t6,7236(a1)
    1714:	00808025 	move	s0,a0
    1718:	2484017c 	addiu	a0,a0,380
    171c:	afa4002c 	sw	a0,44(sp)
    1720:	0c000000 	jal	0 <EnDekubaba_Init>
    1724:	afae0034 	sw	t6,52(sp)
    1728:	8fa4002c 	lw	a0,44(sp)
    172c:	0c000000 	jal	0 <EnDekubaba_Init>
    1730:	24050000 	li	a1,0
    1734:	14400005 	bnez	v0,174c <func_809E6ED4+0x48>
    1738:	8fa4002c 	lw	a0,44(sp)
    173c:	0c000000 	jal	0 <EnDekubaba_Init>
    1740:	3c054140 	lui	a1,0x4140
    1744:	5040000d 	beqzl	v0,177c <func_809E6ED4+0x78>
    1748:	860201c6 	lh	v0,454(s0)
    174c:	860f001c 	lh	t7,28(s0)
    1750:	24010001 	li	at,1
    1754:	2405385c 	li	a1,14428
    1758:	15e10005 	bne	t7,at,1770 <func_809E6ED4+0x6c>
    175c:	02002025 	move	a0,s0
    1760:	0c000000 	jal	0 <EnDekubaba_Init>
    1764:	02002025 	move	a0,s0
    1768:	10000004 	b	177c <func_809E6ED4+0x78>
    176c:	860201c6 	lh	v0,454(s0)
    1770:	0c000000 	jal	0 <EnDekubaba_Init>
    1774:	24053860 	li	a1,14432
    1778:	860201c6 	lh	v0,454(s0)
    177c:	10400002 	beqz	v0,1788 <func_809E6ED4+0x84>
    1780:	2458ffff 	addiu	t8,v0,-1
    1784:	a61801c6 	sh	t8,454(s0)
    1788:	8fa50034 	lw	a1,52(sp)
    178c:	26040008 	addiu	a0,s0,8
    1790:	afa40028 	sw	a0,40(sp)
    1794:	24a50024 	addiu	a1,a1,36
    1798:	0c000000 	jal	0 <EnDekubaba_Init>
    179c:	afa50024 	sw	a1,36(sp)
    17a0:	860701c6 	lh	a3,454(s0)
    17a4:	24010005 	li	at,5
    17a8:	00022c00 	sll	a1,v0,0x10
    17ac:	00e1001a 	div	zero,a3,at
    17b0:	00003810 	mfhi	a3
    17b4:	00e00821 	move	at,a3
    17b8:	00073900 	sll	a3,a3,0x4
    17bc:	00e13821 	addu	a3,a3,at
    17c0:	00073900 	sll	a3,a3,0x4
    17c4:	00e13821 	addu	a3,a3,at
    17c8:	00073840 	sll	a3,a3,0x1
    17cc:	00073c00 	sll	a3,a3,0x10
    17d0:	00073c03 	sra	a3,a3,0x10
    17d4:	00052c03 	sra	a1,a1,0x10
    17d8:	260400b6 	addiu	a0,s0,182
    17dc:	0c000000 	jal	0 <EnDekubaba_Init>
    17e0:	24060002 	li	a2,2
    17e4:	860201c6 	lh	v0,454(s0)
    17e8:	2841000a 	slti	at,v0,10
    17ec:	5020000f 	beqzl	at,182c <func_809E6ED4+0x128>
    17f0:	28410014 	slti	at,v0,20
    17f4:	861901ca 	lh	t9,458(s0)
    17f8:	860901cc 	lh	t1,460(s0)
    17fc:	860b01ce 	lh	t3,462(s0)
    1800:	860d00b4 	lh	t5,180(s0)
    1804:	2728016c 	addiu	t0,t9,364
    1808:	252a016c 	addiu	t2,t1,364
    180c:	256c00b6 	addiu	t4,t3,182
    1810:	25ae0222 	addiu	t6,t5,546
    1814:	a60801ca 	sh	t0,458(s0)
    1818:	a60a01cc 	sh	t2,460(s0)
    181c:	a60c01ce 	sh	t4,462(s0)
    1820:	10000021 	b	18a8 <func_809E6ED4+0x1a4>
    1824:	a60e00b4 	sh	t6,180(s0)
    1828:	28410014 	slti	at,v0,20
    182c:	5020000c 	beqzl	at,1860 <func_809E6ED4+0x15c>
    1830:	2841001e 	slti	at,v0,30
    1834:	860f01ca 	lh	t7,458(s0)
    1838:	861901cc 	lh	t9,460(s0)
    183c:	860900b4 	lh	t1,180(s0)
    1840:	25f8fe94 	addiu	t8,t7,-364
    1844:	27280111 	addiu	t0,t9,273
    1848:	252a016c 	addiu	t2,t1,364
    184c:	a61801ca 	sh	t8,458(s0)
    1850:	a60801cc 	sh	t0,460(s0)
    1854:	10000014 	b	18a8 <func_809E6ED4+0x1a4>
    1858:	a60a00b4 	sh	t2,180(s0)
    185c:	2841001e 	slti	at,v0,30
    1860:	50200009 	beqzl	at,1888 <func_809E6ED4+0x184>
    1864:	860f01cc 	lh	t7,460(s0)
    1868:	860b01cc 	lh	t3,460(s0)
    186c:	860d00b4 	lh	t5,180(s0)
    1870:	256cfeef 	addiu	t4,t3,-273
    1874:	25aeff4a 	addiu	t6,t5,-182
    1878:	a60c01cc 	sh	t4,460(s0)
    187c:	1000000a 	b	18a8 <func_809E6ED4+0x1a4>
    1880:	a60e00b4 	sh	t6,180(s0)
    1884:	860f01cc 	lh	t7,460(s0)
    1888:	861901ce 	lh	t9,462(s0)
    188c:	860900b4 	lh	t1,180(s0)
    1890:	25f8ff4a 	addiu	t8,t7,-182
    1894:	272800b6 	addiu	t0,t9,182
    1898:	252afe94 	addiu	t2,t1,-364
    189c:	a61801cc 	sh	t8,460(s0)
    18a0:	a60801ce 	sh	t0,462(s0)
    18a4:	a60a00b4 	sh	t2,180(s0)
    18a8:	0c000000 	jal	0 <EnDekubaba_Init>
    18ac:	02002025 	move	a0,s0
    18b0:	8fa40028 	lw	a0,40(sp)
    18b4:	0c000000 	jal	0 <EnDekubaba_Init>
    18b8:	8fa50024 	lw	a1,36(sp)
    18bc:	3c014370 	lui	at,0x4370
    18c0:	44812000 	mtc1	at,$f4
    18c4:	c6020230 	lwc1	$f2,560(s0)
    18c8:	46022182 	mul.s	$f6,$f4,$f2
    18cc:	4600303c 	c.lt.s	$f6,$f0
    18d0:	00000000 	nop
    18d4:	45020006 	bc1fl	18f0 <func_809E6ED4+0x1ec>
    18d8:	860b01c6 	lh	t3,454(s0)
    18dc:	0c000000 	jal	0 <EnDekubaba_Init>
    18e0:	02002025 	move	a0,s0
    18e4:	1000000f 	b	1924 <func_809E6ED4+0x220>
    18e8:	8fbf001c 	lw	ra,28(sp)
    18ec:	860b01c6 	lh	t3,454(s0)
    18f0:	3c0142a0 	lui	at,0x42a0
    18f4:	11600008 	beqz	t3,1918 <func_809E6ED4+0x214>
    18f8:	00000000 	nop
    18fc:	44815000 	mtc1	at,$f10
    1900:	c6080090 	lwc1	$f8,144(s0)
    1904:	46025402 	mul.s	$f16,$f10,$f2
    1908:	4610403c 	c.lt.s	$f8,$f16
    190c:	00000000 	nop
    1910:	45020004 	bc1fl	1924 <func_809E6ED4+0x220>
    1914:	8fbf001c 	lw	ra,28(sp)
    1918:	0c000000 	jal	0 <EnDekubaba_Init>
    191c:	02002025 	move	a0,s0
    1920:	8fbf001c 	lw	ra,28(sp)
    1924:	8fb00018 	lw	s0,24(sp)
    1928:	27bd0038 	addiu	sp,sp,56
    192c:	03e00008 	jr	ra
    1930:	00000000 	nop

00001934 <func_809E7104>:
    1934:	27bdffb0 	addiu	sp,sp,-80
    1938:	afb00028 	sw	s0,40(sp)
    193c:	00808025 	move	s0,a0
    1940:	afbf002c 	sw	ra,44(sp)
    1944:	2484017c 	addiu	a0,a0,380
    1948:	afa50054 	sw	a1,84(sp)
    194c:	0c000000 	jal	0 <EnDekubaba_Init>
    1950:	afa40034 	sw	a0,52(sp)
    1954:	860301c6 	lh	v1,454(s0)
    1958:	8fa40034 	lw	a0,52(sp)
    195c:	14600068 	bnez	v1,1b00 <func_809E7104+0x1cc>
    1960:	2861000b 	slti	at,v1,11
    1964:	0c000000 	jal	0 <EnDekubaba_Init>
    1968:	3c053f80 	lui	a1,0x3f80
    196c:	5040000d 	beqzl	v0,19a4 <func_809E7104+0x70>
    1970:	260400b4 	addiu	a0,s0,180
    1974:	860e001c 	lh	t6,28(s0)
    1978:	24010001 	li	at,1
    197c:	2405385d 	li	a1,14429
    1980:	15c10005 	bne	t6,at,1998 <func_809E7104+0x64>
    1984:	02002025 	move	a0,s0
    1988:	0c000000 	jal	0 <EnDekubaba_Init>
    198c:	02002025 	move	a0,s0
    1990:	10000004 	b	19a4 <func_809E7104+0x70>
    1994:	260400b4 	addiu	a0,s0,180
    1998:	0c000000 	jal	0 <EnDekubaba_Init>
    199c:	24053861 	li	a1,14433
    19a0:	260400b4 	addiu	a0,s0,180
    19a4:	00002825 	move	a1,zero
    19a8:	0c000000 	jal	0 <EnDekubaba_Init>
    19ac:	24060222 	li	a2,546
    19b0:	3c014120 	lui	at,0x4120
    19b4:	44813000 	mtc1	at,$f6
    19b8:	c6040194 	lwc1	$f4,404(s0)
    19bc:	260401ca 	addiu	a0,s0,458
    19c0:	2405f1c8 	li	a1,-3640
    19c4:	46062202 	mul.s	$f8,$f4,$f6
    19c8:	4600428d 	trunc.w.s	$f10,$f8
    19cc:	44035000 	mfc1	v1,$f10
    19d0:	00000000 	nop
    19d4:	00031c00 	sll	v1,v1,0x10
    19d8:	00031c03 	sra	v1,v1,0x10
    19dc:	2466038e 	addiu	a2,v1,910
    19e0:	00063400 	sll	a2,a2,0x10
    19e4:	00063403 	sra	a2,a2,0x10
    19e8:	0c000000 	jal	0 <EnDekubaba_Init>
    19ec:	a7a3004a 	sh	v1,74(sp)
    19f0:	87a6004a 	lh	a2,74(sp)
    19f4:	30430001 	andi	v1,v0,0x1
    19f8:	afa3004c 	sw	v1,76(sp)
    19fc:	24c6071c 	addiu	a2,a2,1820
    1a00:	00063400 	sll	a2,a2,0x10
    1a04:	00063403 	sra	a2,a2,0x10
    1a08:	260401cc 	addiu	a0,s0,460
    1a0c:	0c000000 	jal	0 <EnDekubaba_Init>
    1a10:	2405f1c8 	li	a1,-3640
    1a14:	87a6004a 	lh	a2,74(sp)
    1a18:	8fa3004c 	lw	v1,76(sp)
    1a1c:	260401ce 	addiu	a0,s0,462
    1a20:	24c60e38 	addiu	a2,a2,3640
    1a24:	00063400 	sll	a2,a2,0x10
    1a28:	00621824 	and	v1,v1,v0
    1a2c:	afa3004c 	sw	v1,76(sp)
    1a30:	00063403 	sra	a2,a2,0x10
    1a34:	0c000000 	jal	0 <EnDekubaba_Init>
    1a38:	2405f1c8 	li	a1,-3640
    1a3c:	8fa3004c 	lw	v1,76(sp)
    1a40:	3c050600 	lui	a1,0x600
    1a44:	24a502b8 	addiu	a1,a1,696
    1a48:	00621824 	and	v1,v1,v0
    1a4c:	10600054 	beqz	v1,1ba0 <func_809E7104+0x26c>
    1a50:	8fa40034 	lw	a0,52(sp)
    1a54:	0c000000 	jal	0 <EnDekubaba_Init>
    1a58:	3c064080 	lui	a2,0x4080
    1a5c:	0c000000 	jal	0 <EnDekubaba_Init>
    1a60:	860400b6 	lh	a0,182(s0)
    1a64:	3c0140a0 	lui	at,0x40a0
    1a68:	44818000 	mtc1	at,$f16
    1a6c:	44802000 	mtc1	zero,$f4
    1a70:	46100482 	mul.s	$f18,$f0,$f16
    1a74:	e7a40040 	swc1	$f4,64(sp)
    1a78:	e7b2003c 	swc1	$f18,60(sp)
    1a7c:	0c000000 	jal	0 <EnDekubaba_Init>
    1a80:	860400b6 	lh	a0,182(s0)
    1a84:	3c0140a0 	lui	at,0x40a0
    1a88:	44813000 	mtc1	at,$f6
    1a8c:	3c180000 	lui	t8,0x0
    1a90:	3c190000 	lui	t9,0x0
    1a94:	46060202 	mul.s	$f8,$f0,$f6
    1a98:	27390000 	addiu	t9,t9,0
    1a9c:	27180000 	addiu	t8,t8,0
    1aa0:	24080001 	li	t0,1
    1aa4:	afa80018 	sw	t0,24(sp)
    1aa8:	afb80010 	sw	t8,16(sp)
    1aac:	afb90014 	sw	t9,20(sp)
    1ab0:	e7a80044 	swc1	$f8,68(sp)
    1ab4:	3c0142c8 	lui	at,0x42c8
    1ab8:	44818000 	mtc1	at,$f16
    1abc:	c60a0230 	lwc1	$f10,560(s0)
    1ac0:	3c070000 	lui	a3,0x0
    1ac4:	24e70000 	addiu	a3,a3,0
    1ac8:	46105482 	mul.s	$f18,$f10,$f16
    1acc:	8fa40054 	lw	a0,84(sp)
    1ad0:	26050024 	addiu	a1,s0,36
    1ad4:	27a6003c 	addiu	a2,sp,60
    1ad8:	4600910d 	trunc.w.s	$f4,$f18
    1adc:	440a2000 	mfc1	t2,$f4
    1ae0:	0c000000 	jal	0 <EnDekubaba_Init>
    1ae4:	afaa001c 	sw	t2,28(sp)
    1ae8:	920c0249 	lbu	t4,585(s0)
    1aec:	240b0001 	li	t3,1
    1af0:	a60b01c6 	sh	t3,454(s0)
    1af4:	358d0001 	ori	t5,t4,0x1
    1af8:	10000029 	b	1ba0 <func_809E7104+0x26c>
    1afc:	a20d0249 	sb	t5,585(s0)
    1b00:	14200005 	bnez	at,1b18 <func_809E7104+0x1e4>
    1b04:	246e0001 	addiu	t6,v1,1
    1b08:	0c000000 	jal	0 <EnDekubaba_Init>
    1b0c:	02002025 	move	a0,s0
    1b10:	10000023 	b	1ba0 <func_809E7104+0x26c>
    1b14:	00000000 	nop
    1b18:	a60e01c6 	sh	t6,454(s0)
    1b1c:	860f01c6 	lh	t7,454(s0)
    1b20:	02002025 	move	a0,s0
    1b24:	29e10004 	slti	at,t7,4
    1b28:	5420000a 	bnezl	at,1b54 <func_809E7104+0x220>
    1b2c:	8fa40034 	lw	a0,52(sp)
    1b30:	0c000000 	jal	0 <EnDekubaba_Init>
    1b34:	2405016c 	li	a1,364
    1b38:	14400005 	bnez	v0,1b50 <func_809E7104+0x21c>
    1b3c:	260400b6 	addiu	a0,s0,182
    1b40:	8605008a 	lh	a1,138(s0)
    1b44:	2406000f 	li	a2,15
    1b48:	0c000000 	jal	0 <EnDekubaba_Init>
    1b4c:	2407071c 	li	a3,1820
    1b50:	8fa40034 	lw	a0,52(sp)
    1b54:	0c000000 	jal	0 <EnDekubaba_Init>
    1b58:	24050000 	li	a1,0
    1b5c:	14400005 	bnez	v0,1b74 <func_809E7104+0x240>
    1b60:	8fa40034 	lw	a0,52(sp)
    1b64:	0c000000 	jal	0 <EnDekubaba_Init>
    1b68:	3c054140 	lui	a1,0x4140
    1b6c:	1040000c 	beqz	v0,1ba0 <func_809E7104+0x26c>
    1b70:	00000000 	nop
    1b74:	8618001c 	lh	t8,28(s0)
    1b78:	24010001 	li	at,1
    1b7c:	2405385c 	li	a1,14428
    1b80:	17010005 	bne	t8,at,1b98 <func_809E7104+0x264>
    1b84:	02002025 	move	a0,s0
    1b88:	0c000000 	jal	0 <EnDekubaba_Init>
    1b8c:	02002025 	move	a0,s0
    1b90:	10000003 	b	1ba0 <func_809E7104+0x26c>
    1b94:	00000000 	nop
    1b98:	0c000000 	jal	0 <EnDekubaba_Init>
    1b9c:	24053860 	li	a1,14432
    1ba0:	0c000000 	jal	0 <EnDekubaba_Init>
    1ba4:	02002025 	move	a0,s0
    1ba8:	8fbf002c 	lw	ra,44(sp)
    1bac:	8fb00028 	lw	s0,40(sp)
    1bb0:	27bd0050 	addiu	sp,sp,80
    1bb4:	03e00008 	jr	ra
    1bb8:	00000000 	nop

00001bbc <func_809E738C>:
    1bbc:	27bdffd0 	addiu	sp,sp,-48
    1bc0:	afbf0024 	sw	ra,36(sp)
    1bc4:	afb00020 	sw	s0,32(sp)
    1bc8:	848201c6 	lh	v0,454(a0)
    1bcc:	8ca31c44 	lw	v1,7236(a1)
    1bd0:	00808025 	move	s0,a0
    1bd4:	10400003 	beqz	v0,1be4 <func_809E738C+0x28>
    1bd8:	24051800 	li	a1,6144
    1bdc:	244effff 	addiu	t6,v0,-1
    1be0:	a48e01c6 	sh	t6,454(a0)
    1be4:	240f071c 	li	t7,1820
    1be8:	afaf0010 	sw	t7,16(sp)
    1bec:	260400b4 	addiu	a0,s0,180
    1bf0:	24060002 	li	a2,2
    1bf4:	24070e38 	li	a3,3640
    1bf8:	0c000000 	jal	0 <EnDekubaba_Init>
    1bfc:	afa3002c 	sw	v1,44(sp)
    1c00:	8fa3002c 	lw	v1,44(sp)
    1c04:	26040008 	addiu	a0,s0,8
    1c08:	0c000000 	jal	0 <EnDekubaba_Init>
    1c0c:	24650024 	addiu	a1,v1,36
    1c10:	00022c00 	sll	a1,v0,0x10
    1c14:	00052c03 	sra	a1,a1,0x10
    1c18:	260400b6 	addiu	a0,s0,182
    1c1c:	24060002 	li	a2,2
    1c20:	0c000000 	jal	0 <EnDekubaba_Init>
    1c24:	24070e38 	li	a3,3640
    1c28:	260401ca 	addiu	a0,s0,458
    1c2c:	24050aaa 	li	a1,2730
    1c30:	0c000000 	jal	0 <EnDekubaba_Init>
    1c34:	24060444 	li	a2,1092
    1c38:	260401cc 	addiu	a0,s0,460
    1c3c:	2405b8e8 	li	a1,-18200
    1c40:	0c000000 	jal	0 <EnDekubaba_Init>
    1c44:	24060888 	li	a2,2184
    1c48:	260401ce 	addiu	a0,s0,462
    1c4c:	2405955c 	li	a1,-27300
    1c50:	0c000000 	jal	0 <EnDekubaba_Init>
    1c54:	24060888 	li	a2,2184
    1c58:	861801c6 	lh	t8,454(s0)
    1c5c:	17000003 	bnez	t8,1c6c <func_809E738C+0xb0>
    1c60:	00000000 	nop
    1c64:	0c000000 	jal	0 <EnDekubaba_Init>
    1c68:	02002025 	move	a0,s0
    1c6c:	0c000000 	jal	0 <EnDekubaba_Init>
    1c70:	02002025 	move	a0,s0
    1c74:	8fbf0024 	lw	ra,36(sp)
    1c78:	8fb00020 	lw	s0,32(sp)
    1c7c:	27bd0030 	addiu	sp,sp,48
    1c80:	03e00008 	jr	ra
    1c84:	00000000 	nop

00001c88 <func_809E7458>:
    1c88:	27bdffb8 	addiu	sp,sp,-72
    1c8c:	afb10020 	sw	s1,32(sp)
    1c90:	00808825 	move	s1,a0
    1c94:	afbf0024 	sw	ra,36(sp)
    1c98:	afb0001c 	sw	s0,28(sp)
    1c9c:	afa5004c 	sw	a1,76(sp)
    1ca0:	0c000000 	jal	0 <EnDekubaba_Init>
    1ca4:	2484017c 	addiu	a0,a0,380
    1ca8:	862301c6 	lh	v1,454(s1)
    1cac:	262400b4 	addiu	a0,s1,180
    1cb0:	2405f6c2 	li	a1,-2366
    1cb4:	1460004e 	bnez	v1,1df0 <func_809E7458+0x168>
    1cb8:	2401000b 	li	at,11
    1cbc:	0c000000 	jal	0 <EnDekubaba_Init>
    1cc0:	2406038e 	li	a2,910
    1cc4:	262401ca 	addiu	a0,s1,458
    1cc8:	2405f778 	li	a1,-2184
    1ccc:	0c000000 	jal	0 <EnDekubaba_Init>
    1cd0:	2406016c 	li	a2,364
    1cd4:	262401cc 	addiu	a0,s1,460
    1cd8:	2405f778 	li	a1,-2184
    1cdc:	0c000000 	jal	0 <EnDekubaba_Init>
    1ce0:	2406016c 	li	a2,364
    1ce4:	262401ce 	addiu	a0,s1,462
    1ce8:	2405f778 	li	a1,-2184
    1cec:	0c000000 	jal	0 <EnDekubaba_Init>
    1cf0:	2406016c 	li	a2,364
    1cf4:	104000c0 	beqz	v0,1ff8 <func_809E7458+0x370>
    1cf8:	00000000 	nop
    1cfc:	0c000000 	jal	0 <EnDekubaba_Init>
    1d00:	862400b6 	lh	a0,182(s1)
    1d04:	3c0141f0 	lui	at,0x41f0
    1d08:	44812000 	mtc1	at,$f4
    1d0c:	c6280230 	lwc1	$f8,560(s1)
    1d10:	46040182 	mul.s	$f6,$f0,$f4
    1d14:	00000000 	nop
    1d18:	46083282 	mul.s	$f10,$f6,$f8
    1d1c:	e7aa0038 	swc1	$f10,56(sp)
    1d20:	0c000000 	jal	0 <EnDekubaba_Init>
    1d24:	862400b6 	lh	a0,182(s1)
    1d28:	3c0141f0 	lui	at,0x41f0
    1d2c:	44818000 	mtc1	at,$f16
    1d30:	8e2f0008 	lw	t7,8(s1)
    1d34:	c6240230 	lwc1	$f4,560(s1)
    1d38:	27a5003c 	addiu	a1,sp,60
    1d3c:	46100482 	mul.s	$f18,$f0,$f16
    1d40:	acaf0000 	sw	t7,0(a1)
    1d44:	8e2e000c 	lw	t6,12(s1)
    1d48:	3c100000 	lui	s0,0x0
    1d4c:	26100000 	addiu	s0,s0,0
    1d50:	acae0004 	sw	t6,4(a1)
    1d54:	8e2f0010 	lw	t7,16(s1)
    1d58:	46049082 	mul.s	$f2,$f18,$f4
    1d5c:	00001025 	move	v0,zero
    1d60:	acaf0008 	sw	t7,8(a1)
    1d64:	3c0143fa 	lui	at,0x43fa
    1d68:	44813000 	mtc1	at,$f6
    1d6c:	c6200230 	lwc1	$f0,560(s1)
    1d70:	3c014248 	lui	at,0x4248
    1d74:	44818000 	mtc1	at,$f16
    1d78:	46060202 	mul.s	$f8,$f0,$f6
    1d7c:	27a5003c 	addiu	a1,sp,60
    1d80:	e7a20034 	swc1	$f2,52(sp)
    1d84:	46100482 	mul.s	$f18,$f0,$f16
    1d88:	afa20030 	sw	v0,48(sp)
    1d8c:	8fa4004c 	lw	a0,76(sp)
    1d90:	02003025 	move	a2,s0
    1d94:	02003825 	move	a3,s0
    1d98:	4600428d 	trunc.w.s	$f10,$f8
    1d9c:	4600910d 	trunc.w.s	$f4,$f18
    1da0:	44195000 	mfc1	t9,$f10
    1da4:	44092000 	mfc1	t1,$f4
    1da8:	afb90010 	sw	t9,16(sp)
    1dac:	0c000000 	jal	0 <EnDekubaba_Init>
    1db0:	afa90014 	sw	t1,20(sp)
    1db4:	c7a20034 	lwc1	$f2,52(sp)
    1db8:	c7a6003c 	lwc1	$f6,60(sp)
    1dbc:	c7a80038 	lwc1	$f8,56(sp)
    1dc0:	c7b00044 	lwc1	$f16,68(sp)
    1dc4:	8fa20030 	lw	v0,48(sp)
    1dc8:	46083280 	add.s	$f10,$f6,$f8
    1dcc:	24010003 	li	at,3
    1dd0:	24420001 	addiu	v0,v0,1
    1dd4:	46028480 	add.s	$f18,$f16,$f2
    1dd8:	e7aa003c 	swc1	$f10,60(sp)
    1ddc:	1441ffe1 	bne	v0,at,1d64 <func_809E7458+0xdc>
    1de0:	e7b20044 	swc1	$f18,68(sp)
    1de4:	240a0001 	li	t2,1
    1de8:	10000083 	b	1ff8 <func_809E7458+0x370>
    1dec:	a62a01c6 	sh	t2,454(s1)
    1df0:	14610014 	bne	v1,at,1e44 <func_809E7458+0x1bc>
    1df4:	262400b4 	addiu	a0,s1,180
    1df8:	2405f6c2 	li	a1,-2366
    1dfc:	0c000000 	jal	0 <EnDekubaba_Init>
    1e00:	24060200 	li	a2,512
    1e04:	262401ca 	addiu	a0,s1,458
    1e08:	2405f556 	li	a1,-2730
    1e0c:	0c000000 	jal	0 <EnDekubaba_Init>
    1e10:	24060200 	li	a2,512
    1e14:	262401ce 	addiu	a0,s1,462
    1e18:	2405a38f 	li	a1,-23665
    1e1c:	0c000000 	jal	0 <EnDekubaba_Init>
    1e20:	24060200 	li	a2,512
    1e24:	262401cc 	addiu	a0,s1,460
    1e28:	2405238c 	li	a1,9100
    1e2c:	0c000000 	jal	0 <EnDekubaba_Init>
    1e30:	24060200 	li	a2,512
    1e34:	10400070 	beqz	v0,1ff8 <func_809E7458+0x370>
    1e38:	240b000c 	li	t3,12
    1e3c:	1000006e 	b	1ff8 <func_809E7458+0x370>
    1e40:	a62b01c6 	sh	t3,454(s1)
    1e44:	24010012 	li	at,18
    1e48:	14610015 	bne	v1,at,1ea0 <func_809E7458+0x218>
    1e4c:	262400b4 	addiu	a0,s1,180
    1e50:	24052aa8 	li	a1,10920
    1e54:	0c000000 	jal	0 <EnDekubaba_Init>
    1e58:	24060aaa 	li	a2,2730
    1e5c:	262401ca 	addiu	a0,s1,458
    1e60:	24051554 	li	a1,5460
    1e64:	0c000000 	jal	0 <EnDekubaba_Init>
    1e68:	240605b0 	li	a2,1456
    1e6c:	10400003 	beqz	v0,1e7c <func_809E7458+0x1f4>
    1e70:	262401cc 	addiu	a0,s1,460
    1e74:	240c0019 	li	t4,25
    1e78:	a62c01c6 	sh	t4,454(s1)
    1e7c:	2405c71d 	li	a1,-14563
    1e80:	0c000000 	jal	0 <EnDekubaba_Init>
    1e84:	24060aaa 	li	a2,2730
    1e88:	262401ce 	addiu	a0,s1,462
    1e8c:	2405a38f 	li	a1,-23665
    1e90:	0c000000 	jal	0 <EnDekubaba_Init>
    1e94:	240602d8 	li	a2,728
    1e98:	10000057 	b	1ff8 <func_809E7458+0x370>
    1e9c:	00000000 	nop
    1ea0:	24010019 	li	at,25
    1ea4:	14610015 	bne	v1,at,1efc <func_809E7458+0x274>
    1ea8:	262400b4 	addiu	a0,s1,180
    1eac:	2405aab0 	li	a1,-21840
    1eb0:	0c000000 	jal	0 <EnDekubaba_Init>
    1eb4:	24060aaa 	li	a2,2730
    1eb8:	262401ca 	addiu	a0,s1,458
    1ebc:	24059c78 	li	a1,-25480
    1ec0:	0c000000 	jal	0 <EnDekubaba_Init>
    1ec4:	2406093e 	li	a2,2366
    1ec8:	10400003 	beqz	v0,1ed8 <func_809E7458+0x250>
    1ecc:	262401cc 	addiu	a0,s1,460
    1ed0:	240d001a 	li	t5,26
    1ed4:	a62d01c6 	sh	t5,454(s1)
    1ed8:	2405c004 	li	a1,-16380
    1edc:	0c000000 	jal	0 <EnDekubaba_Init>
    1ee0:	240604fa 	li	a2,1274
    1ee4:	262401ce 	addiu	a0,s1,462
    1ee8:	2405dc74 	li	a1,-9100
    1eec:	0c000000 	jal	0 <EnDekubaba_Init>
    1ef0:	24060444 	li	a2,1092
    1ef4:	10000040 	b	1ff8 <func_809E7458+0x370>
    1ef8:	00000000 	nop
    1efc:	2401001a 	li	at,26
    1f00:	14610015 	bne	v1,at,1f58 <func_809E7458+0x2d0>
    1f04:	262400b4 	addiu	a0,s1,180
    1f08:	24051800 	li	a1,6144
    1f0c:	0c000000 	jal	0 <EnDekubaba_Init>
    1f10:	2406093e 	li	a2,2366
    1f14:	262401ca 	addiu	a0,s1,458
    1f18:	2405eaab 	li	a1,-5461
    1f1c:	0c000000 	jal	0 <EnDekubaba_Init>
    1f20:	2406071c 	li	a2,1820
    1f24:	10400003 	beqz	v0,1f34 <func_809E7458+0x2ac>
    1f28:	262401cc 	addiu	a0,s1,460
    1f2c:	240e001b 	li	t6,27
    1f30:	a62e01c6 	sh	t6,454(s1)
    1f34:	2405c71d 	li	a1,-14563
    1f38:	0c000000 	jal	0 <EnDekubaba_Init>
    1f3c:	240602d8 	li	a2,728
    1f40:	262401ce 	addiu	a0,s1,462
    1f44:	2405a38f 	li	a1,-23665
    1f48:	0c000000 	jal	0 <EnDekubaba_Init>
    1f4c:	240605b0 	li	a2,1456
    1f50:	10000029 	b	1ff8 <func_809E7458+0x370>
    1f54:	00000000 	nop
    1f58:	2861001b 	slti	at,v1,27
    1f5c:	14200017 	bnez	at,1fbc <func_809E7458+0x334>
    1f60:	24790001 	addiu	t9,v1,1
    1f64:	246f0001 	addiu	t7,v1,1
    1f68:	a62f01c6 	sh	t7,454(s1)
    1f6c:	863801c6 	lh	t8,454(s1)
    1f70:	2b01001f 	slti	at,t8,31
    1f74:	14200020 	bnez	at,1ff8 <func_809E7458+0x370>
    1f78:	3c0142a0 	lui	at,0x42a0
    1f7c:	44813000 	mtc1	at,$f6
    1f80:	c6280230 	lwc1	$f8,560(s1)
    1f84:	c6240090 	lwc1	$f4,144(s1)
    1f88:	46083282 	mul.s	$f10,$f6,$f8
    1f8c:	460a203c 	c.lt.s	$f4,$f10
    1f90:	00000000 	nop
    1f94:	45000005 	bc1f	1fac <func_809E7458+0x324>
    1f98:	00000000 	nop
    1f9c:	0c000000 	jal	0 <EnDekubaba_Init>
    1fa0:	02202025 	move	a0,s1
    1fa4:	10000014 	b	1ff8 <func_809E7458+0x370>
    1fa8:	00000000 	nop
    1fac:	0c000000 	jal	0 <EnDekubaba_Init>
    1fb0:	02202025 	move	a0,s1
    1fb4:	10000010 	b	1ff8 <func_809E7458+0x370>
    1fb8:	00000000 	nop
    1fbc:	a63901c6 	sh	t9,454(s1)
    1fc0:	862301c6 	lh	v1,454(s1)
    1fc4:	2401000a 	li	at,10
    1fc8:	02202025 	move	a0,s1
    1fcc:	54610005 	bnel	v1,at,1fe4 <func_809E7458+0x35c>
    1fd0:	2861000c 	slti	at,v1,12
    1fd4:	0c000000 	jal	0 <EnDekubaba_Init>
    1fd8:	24053863 	li	a1,14435
    1fdc:	862301c6 	lh	v1,454(s1)
    1fe0:	2861000c 	slti	at,v1,12
    1fe4:	14200004 	bnez	at,1ff8 <func_809E7458+0x370>
    1fe8:	262401ce 	addiu	a0,s1,462
    1fec:	2405a38f 	li	a1,-23665
    1ff0:	0c000000 	jal	0 <EnDekubaba_Init>
    1ff4:	24060088 	li	a2,136
    1ff8:	0c000000 	jal	0 <EnDekubaba_Init>
    1ffc:	02202025 	move	a0,s1
    2000:	8fbf0024 	lw	ra,36(sp)
    2004:	8fb0001c 	lw	s0,28(sp)
    2008:	8fb10020 	lw	s1,32(sp)
    200c:	03e00008 	jr	ra
    2010:	27bd0048 	addiu	sp,sp,72

00002014 <func_809E77E4>:
    2014:	27bdffd8 	addiu	sp,sp,-40
    2018:	afb10020 	sw	s1,32(sp)
    201c:	00808825 	move	s1,a0
    2020:	afbf0024 	sw	ra,36(sp)
    2024:	afb0001c 	sw	s0,28(sp)
    2028:	afa5002c 	sw	a1,44(sp)
    202c:	0c000000 	jal	0 <EnDekubaba_Init>
    2030:	2484017c 	addiu	a0,a0,380
    2034:	862301c6 	lh	v1,454(s1)
    2038:	262400b4 	addiu	a0,s1,180
    203c:	24051800 	li	a1,6144
    2040:	28610009 	slti	at,v1,9
    2044:	14200022 	bnez	at,20d0 <func_809E77E4+0xbc>
    2048:	24060001 	li	a2,1
    204c:	240e071c 	li	t6,1820
    2050:	afae0010 	sw	t6,16(sp)
    2054:	0c000000 	jal	0 <EnDekubaba_Init>
    2058:	240711c6 	li	a3,4550
    205c:	240f071c 	li	t7,1820
    2060:	00408025 	move	s0,v0
    2064:	afaf0010 	sw	t7,16(sp)
    2068:	262401ca 	addiu	a0,s1,458
    206c:	2405eaab 	li	a1,-5461
    2070:	24060001 	li	a2,1
    2074:	0c000000 	jal	0 <EnDekubaba_Init>
    2078:	24070aaa 	li	a3,2730
    207c:	2418071c 	li	t8,1820
    2080:	02028025 	or	s0,s0,v0
    2084:	afb80010 	sw	t8,16(sp)
    2088:	262401cc 	addiu	a0,s1,460
    208c:	2405c71d 	li	a1,-14563
    2090:	24060001 	li	a2,1
    2094:	0c000000 	jal	0 <EnDekubaba_Init>
    2098:	24070e38 	li	a3,3640
    209c:	2419071c 	li	t9,1820
    20a0:	02028025 	or	s0,s0,v0
    20a4:	afb90010 	sw	t9,16(sp)
    20a8:	262401ce 	addiu	a0,s1,462
    20ac:	2405a38f 	li	a1,-23665
    20b0:	24060001 	li	a2,1
    20b4:	0c000000 	jal	0 <EnDekubaba_Init>
    20b8:	240711c6 	li	a3,4550
    20bc:	02028025 	or	s0,s0,v0
    20c0:	1600000b 	bnez	s0,20f0 <func_809E77E4+0xdc>
    20c4:	24080008 	li	t0,8
    20c8:	10000009 	b	20f0 <func_809E77E4+0xdc>
    20cc:	a62801c6 	sh	t0,454(s1)
    20d0:	10600003 	beqz	v1,20e0 <func_809E77E4+0xcc>
    20d4:	2469ffff 	addiu	t1,v1,-1
    20d8:	a62901c6 	sh	t1,454(s1)
    20dc:	862301c6 	lh	v1,454(s1)
    20e0:	14600003 	bnez	v1,20f0 <func_809E77E4+0xdc>
    20e4:	00000000 	nop
    20e8:	0c000000 	jal	0 <EnDekubaba_Init>
    20ec:	02202025 	move	a0,s1
    20f0:	0c000000 	jal	0 <EnDekubaba_Init>
    20f4:	02202025 	move	a0,s1
    20f8:	8fbf0024 	lw	ra,36(sp)
    20fc:	8fb0001c 	lw	s0,28(sp)
    2100:	8fb10020 	lw	s1,32(sp)
    2104:	03e00008 	jr	ra
    2108:	27bd0028 	addiu	sp,sp,40

0000210c <func_809E78DC>:
    210c:	27bdffe0 	addiu	sp,sp,-32
    2110:	afb10018 	sw	s1,24(sp)
    2114:	00808825 	move	s1,a0
    2118:	afbf001c 	sw	ra,28(sp)
    211c:	afb00014 	sw	s0,20(sp)
    2120:	afa50024 	sw	a1,36(sp)
    2124:	0c000000 	jal	0 <EnDekubaba_Init>
    2128:	2484017c 	addiu	a0,a0,380
    212c:	262400b4 	addiu	a0,s1,180
    2130:	2405c000 	li	a1,-16384
    2134:	0c000000 	jal	0 <EnDekubaba_Init>
    2138:	24060e38 	li	a2,3640
    213c:	30500001 	andi	s0,v0,0x1
    2140:	262401ca 	addiu	a0,s1,458
    2144:	2405c000 	li	a1,-16384
    2148:	0c000000 	jal	0 <EnDekubaba_Init>
    214c:	24060e38 	li	a2,3640
    2150:	02028024 	and	s0,s0,v0
    2154:	262401cc 	addiu	a0,s1,460
    2158:	2405c000 	li	a1,-16384
    215c:	0c000000 	jal	0 <EnDekubaba_Init>
    2160:	24060e38 	li	a2,3640
    2164:	02028024 	and	s0,s0,v0
    2168:	262401ce 	addiu	a0,s1,462
    216c:	2405c000 	li	a1,-16384
    2170:	0c000000 	jal	0 <EnDekubaba_Init>
    2174:	24060e38 	li	a2,3640
    2178:	02028024 	and	s0,s0,v0
    217c:	12000020 	beqz	s0,2200 <func_809E78DC+0xf4>
    2180:	00000000 	nop
    2184:	922e00af 	lbu	t6,175(s1)
    2188:	55c00006 	bnezl	t6,21a4 <func_809E78DC+0x98>
    218c:	922f0249 	lbu	t7,585(s1)
    2190:	0c000000 	jal	0 <EnDekubaba_Init>
    2194:	02202025 	move	a0,s1
    2198:	10000019 	b	2200 <func_809E78DC+0xf4>
    219c:	00000000 	nop
    21a0:	922f0249 	lbu	t7,585(s1)
    21a4:	863901c6 	lh	t9,454(s1)
    21a8:	3c0142a0 	lui	at,0x42a0
    21ac:	35f80001 	ori	t8,t7,0x1
    21b0:	17200011 	bnez	t9,21f8 <func_809E78DC+0xec>
    21b4:	a2380249 	sb	t8,585(s1)
    21b8:	44813000 	mtc1	at,$f6
    21bc:	c6280230 	lwc1	$f8,560(s1)
    21c0:	c6240090 	lwc1	$f4,144(s1)
    21c4:	46083282 	mul.s	$f10,$f6,$f8
    21c8:	460a203c 	c.lt.s	$f4,$f10
    21cc:	00000000 	nop
    21d0:	45000005 	bc1f	21e8 <func_809E78DC+0xdc>
    21d4:	00000000 	nop
    21d8:	0c000000 	jal	0 <EnDekubaba_Init>
    21dc:	02202025 	move	a0,s1
    21e0:	10000007 	b	2200 <func_809E78DC+0xf4>
    21e4:	00000000 	nop
    21e8:	0c000000 	jal	0 <EnDekubaba_Init>
    21ec:	02202025 	move	a0,s1
    21f0:	10000003 	b	2200 <func_809E78DC+0xf4>
    21f4:	00000000 	nop
    21f8:	0c000000 	jal	0 <EnDekubaba_Init>
    21fc:	02202025 	move	a0,s1
    2200:	0c000000 	jal	0 <EnDekubaba_Init>
    2204:	02202025 	move	a0,s1
    2208:	8fbf001c 	lw	ra,28(sp)
    220c:	8fb00014 	lw	s0,20(sp)
    2210:	8fb10018 	lw	s1,24(sp)
    2214:	03e00008 	jr	ra
    2218:	27bd0020 	addiu	sp,sp,32

0000221c <func_809E79EC>:
    221c:	27bdffe8 	addiu	sp,sp,-24
    2220:	afa5001c 	sw	a1,28(sp)
    2224:	00802825 	move	a1,a0
    2228:	afbf0014 	sw	ra,20(sp)
    222c:	afa40018 	sw	a0,24(sp)
    2230:	afa50018 	sw	a1,24(sp)
    2234:	0c000000 	jal	0 <EnDekubaba_Init>
    2238:	2484017c 	addiu	a0,a0,380
    223c:	8fa50018 	lw	a1,24(sp)
    2240:	84a201c6 	lh	v0,454(a1)
    2244:	00a02025 	move	a0,a1
    2248:	10400003 	beqz	v0,2258 <func_809E79EC+0x3c>
    224c:	244effff 	addiu	t6,v0,-1
    2250:	a4ae01c6 	sh	t6,454(a1)
    2254:	84a201c6 	lh	v0,454(a1)
    2258:	54400014 	bnezl	v0,22ac <func_809E79EC+0x90>
    225c:	8fbf0014 	lw	ra,20(sp)
    2260:	0c000000 	jal	0 <EnDekubaba_Init>
    2264:	afa50018 	sw	a1,24(sp)
    2268:	8fa50018 	lw	a1,24(sp)
    226c:	3c0142a0 	lui	at,0x42a0
    2270:	44813000 	mtc1	at,$f6
    2274:	c4a80230 	lwc1	$f8,560(a1)
    2278:	c4a40090 	lwc1	$f4,144(a1)
    227c:	46083282 	mul.s	$f10,$f6,$f8
    2280:	460a203c 	c.lt.s	$f4,$f10
    2284:	00000000 	nop
    2288:	45000005 	bc1f	22a0 <func_809E79EC+0x84>
    228c:	00000000 	nop
    2290:	0c000000 	jal	0 <EnDekubaba_Init>
    2294:	00a02025 	move	a0,a1
    2298:	10000004 	b	22ac <func_809E79EC+0x90>
    229c:	8fbf0014 	lw	ra,20(sp)
    22a0:	0c000000 	jal	0 <EnDekubaba_Init>
    22a4:	00a02025 	move	a0,a1
    22a8:	8fbf0014 	lw	ra,20(sp)
    22ac:	27bd0018 	addiu	sp,sp,24
    22b0:	03e00008 	jr	ra
    22b4:	00000000 	nop

000022b8 <func_809E7A88>:
    22b8:	27bdffe0 	addiu	sp,sp,-32
    22bc:	afb00018 	sw	s0,24(sp)
    22c0:	00808025 	move	s0,a0
    22c4:	afbf001c 	sw	ra,28(sp)
    22c8:	afa50024 	sw	a1,36(sp)
    22cc:	0c000000 	jal	0 <EnDekubaba_Init>
    22d0:	2484017c 	addiu	a0,a0,380
    22d4:	260400b4 	addiu	a0,s0,180
    22d8:	860501ca 	lh	a1,458(s0)
    22dc:	0c000000 	jal	0 <EnDekubaba_Init>
    22e0:	2406071c 	li	a2,1820
    22e4:	260401ca 	addiu	a0,s0,458
    22e8:	860501cc 	lh	a1,460(s0)
    22ec:	0c000000 	jal	0 <EnDekubaba_Init>
    22f0:	2406071c 	li	a2,1820
    22f4:	260401cc 	addiu	a0,s0,460
    22f8:	860501ce 	lh	a1,462(s0)
    22fc:	0c000000 	jal	0 <EnDekubaba_Init>
    2300:	2406071c 	li	a2,1820
    2304:	260401ce 	addiu	a0,s0,462
    2308:	860501c8 	lh	a1,456(s0)
    230c:	0c000000 	jal	0 <EnDekubaba_Init>
    2310:	2406071c 	li	a2,1820
    2314:	50400010 	beqzl	v0,2358 <func_809E7A88+0xa0>
    2318:	860201c8 	lh	v0,456(s0)
    231c:	860e01c8 	lh	t6,456(s0)
    2320:	3c010000 	lui	at,0x0
    2324:	c4280000 	lwc1	$f8,0(at)
    2328:	25cf4000 	addiu	t7,t6,16384
    232c:	448f2000 	mtc1	t7,$f4
    2330:	3c01c680 	lui	at,0xc680
    2334:	44818000 	mtc1	at,$f16
    2338:	468021a0 	cvt.s.w	$f6,$f4
    233c:	46083282 	mul.s	$f10,$f6,$f8
    2340:	460a8481 	sub.s	$f18,$f16,$f10
    2344:	4600910d 	trunc.w.s	$f4,$f18
    2348:	44192000 	mfc1	t9,$f4
    234c:	00000000 	nop
    2350:	a61901c8 	sh	t9,456(s0)
    2354:	860201c8 	lh	v0,456(s0)
    2358:	24424000 	addiu	v0,v0,16384
    235c:	00021400 	sll	v0,v0,0x10
    2360:	00021403 	sra	v0,v0,0x10
    2364:	04400003 	bltz	v0,2374 <func_809E7A88+0xbc>
    2368:	00021823 	negu	v1,v0
    236c:	10000001 	b	2374 <func_809E7A88+0xbc>
    2370:	00401825 	move	v1,v0
    2374:	28610100 	slti	at,v1,256
    2378:	10200012 	beqz	at,23c4 <func_809E7A88+0x10c>
    237c:	3c0142a0 	lui	at,0x42a0
    2380:	44814000 	mtc1	at,$f8
    2384:	c6100230 	lwc1	$f16,560(s0)
    2388:	c6060090 	lwc1	$f6,144(s0)
    238c:	92080249 	lbu	t0,585(s0)
    2390:	46104282 	mul.s	$f10,$f8,$f16
    2394:	35090001 	ori	t1,t0,0x1
    2398:	a2090249 	sb	t1,585(s0)
    239c:	460a303c 	c.lt.s	$f6,$f10
    23a0:	00000000 	nop
    23a4:	45000005 	bc1f	23bc <func_809E7A88+0x104>
    23a8:	00000000 	nop
    23ac:	0c000000 	jal	0 <EnDekubaba_Init>
    23b0:	02002025 	move	a0,s0
    23b4:	10000003 	b	23c4 <func_809E7A88+0x10c>
    23b8:	00000000 	nop
    23bc:	0c000000 	jal	0 <EnDekubaba_Init>
    23c0:	02002025 	move	a0,s0
    23c4:	0c000000 	jal	0 <EnDekubaba_Init>
    23c8:	02002025 	move	a0,s0
    23cc:	8fbf001c 	lw	ra,28(sp)
    23d0:	8fb00018 	lw	s0,24(sp)
    23d4:	27bd0020 	addiu	sp,sp,32
    23d8:	03e00008 	jr	ra
    23dc:	00000000 	nop

000023e0 <func_809E7BB0>:
    23e0:	27bdff78 	addiu	sp,sp,-136
    23e4:	afb30050 	sw	s3,80(sp)
    23e8:	00809825 	move	s3,a0
    23ec:	afbf005c 	sw	ra,92(sp)
    23f0:	afb50058 	sw	s5,88(sp)
    23f4:	afb40054 	sw	s4,84(sp)
    23f8:	afb2004c 	sw	s2,76(sp)
    23fc:	afb10048 	sw	s1,72(sp)
    2400:	afb00044 	sw	s0,68(sp)
    2404:	f7b80038 	sdc1	$f24,56(sp)
    2408:	f7b60030 	sdc1	$f22,48(sp)
    240c:	f7b40028 	sdc1	$f20,40(sp)
    2410:	3c010000 	lui	at,0x0
    2414:	c4260000 	lwc1	$f6,0(at)
    2418:	c6640230 	lwc1	$f4,560(s3)
    241c:	4480a000 	mtc1	zero,$f20
    2420:	00a0a825 	move	s5,a1
    2424:	46062202 	mul.s	$f8,$f4,$f6
    2428:	4405a000 	mfc1	a1,$f20
    242c:	24840068 	addiu	a0,a0,104
    2430:	44064000 	mfc1	a2,$f8
    2434:	0c000000 	jal	0 <EnDekubaba_Init>
    2438:	00000000 	nop
    243c:	866201c6 	lh	v0,454(s3)
    2440:	266400b4 	addiu	a0,s3,180
    2444:	24054800 	li	a1,18432
    2448:	1440005f 	bnez	v0,25c8 <func_809E7BB0+0x1e8>
    244c:	24010001 	li	at,1
    2450:	0c000000 	jal	0 <EnDekubaba_Init>
    2454:	2406071c 	li	a2,1820
    2458:	266401ca 	addiu	a0,s3,458
    245c:	24054800 	li	a1,18432
    2460:	0c000000 	jal	0 <EnDekubaba_Init>
    2464:	2406071c 	li	a2,1820
    2468:	266401cc 	addiu	a0,s3,460
    246c:	24054800 	li	a1,18432
    2470:	0c000000 	jal	0 <EnDekubaba_Init>
    2474:	2406071c 	li	a2,1820
    2478:	3c014040 	lui	at,0x4040
    247c:	4481b000 	mtc1	at,$f22
    2480:	c6600230 	lwc1	$f0,560(s3)
    2484:	3c014140 	lui	at,0x4140
    2488:	4481c000 	mtc1	at,$f24
    248c:	46160282 	mul.s	$f10,$f0,$f22
    2490:	3c0140a0 	lui	at,0x40a0
    2494:	44812000 	mtc1	at,$f4
    2498:	46180402 	mul.s	$f16,$f0,$f24
    249c:	26700024 	addiu	s0,s3,36
    24a0:	24080001 	li	t0,1
    24a4:	46040182 	mul.s	$f6,$f0,$f4
    24a8:	44065000 	mfc1	a2,$f10
    24ac:	2409ffff 	li	t1,-1
    24b0:	240a000a 	li	t2,10
    24b4:	afaa0020 	sw	t2,32(sp)
    24b8:	afa9001c 	sw	t1,28(sp)
    24bc:	4600848d 	trunc.w.s	$f18,$f16
    24c0:	afa80018 	sw	t0,24(sp)
    24c4:	02002825 	move	a1,s0
    24c8:	4600320d 	trunc.w.s	$f8,$f6
    24cc:	440f9000 	mfc1	t7,$f18
    24d0:	afa00024 	sw	zero,36(sp)
    24d4:	02a02025 	move	a0,s5
    24d8:	44194000 	mfc1	t9,$f8
    24dc:	00003825 	move	a3,zero
    24e0:	afaf0010 	sw	t7,16(sp)
    24e4:	0c000000 	jal	0 <EnDekubaba_Init>
    24e8:	afb90014 	sw	t9,20(sp)
    24ec:	3c010000 	lui	at,0x0
    24f0:	c42a0000 	lwc1	$f10,0(at)
    24f4:	c6700050 	lwc1	$f16,80(s3)
    24f8:	4610503c 	c.lt.s	$f10,$f16
    24fc:	00000000 	nop
    2500:	45020028 	bc1fl	25a4 <func_809E7BB0+0x1c4>
    2504:	966c0088 	lhu	t4,136(s3)
    2508:	96620088 	lhu	v0,136(s3)
    250c:	2401fffa 	li	at,-6
    2510:	02a02025 	move	a0,s5
    2514:	304b0002 	andi	t3,v0,0x2
    2518:	15600003 	bnez	t3,2528 <func_809E7BB0+0x148>
    251c:	304c0008 	andi	t4,v0,0x8
    2520:	51800020 	beqzl	t4,25a4 <func_809E7BB0+0x1c4>
    2524:	966c0088 	lhu	t4,136(s3)
    2528:	c6600230 	lwc1	$f0,560(s3)
    252c:	8e6d0004 	lw	t5,4(s3)
    2530:	e6740058 	swc1	$f20,88(s3)
    2534:	46160482 	mul.s	$f18,$f0,$f22
    2538:	01a17024 	and	t6,t5,at
    253c:	3c0140a0 	lui	at,0x40a0
    2540:	46180102 	mul.s	$f4,$f0,$f24
    2544:	44814000 	mtc1	at,$f8
    2548:	e6740054 	swc1	$f20,84(s3)
    254c:	e6740050 	swc1	$f20,80(s3)
    2550:	46080282 	mul.s	$f10,$f0,$f8
    2554:	e6740068 	swc1	$f20,104(s3)
    2558:	ae6e0004 	sw	t6,4(s3)
    255c:	44069000 	mfc1	a2,$f18
    2560:	2409000f 	li	t1,15
    2564:	240affff 	li	t2,-1
    2568:	4600218d 	trunc.w.s	$f6,$f4
    256c:	240b000a 	li	t3,10
    2570:	afab0020 	sw	t3,32(sp)
    2574:	4600540d 	trunc.w.s	$f16,$f10
    2578:	44183000 	mfc1	t8,$f6
    257c:	afaa001c 	sw	t2,28(sp)
    2580:	afa90018 	sw	t1,24(sp)
    2584:	44088000 	mfc1	t0,$f16
    2588:	afa00024 	sw	zero,36(sp)
    258c:	02002825 	move	a1,s0
    2590:	00003825 	move	a3,zero
    2594:	afb80010 	sw	t8,16(sp)
    2598:	0c000000 	jal	0 <EnDekubaba_Init>
    259c:	afa80014 	sw	t0,20(sp)
    25a0:	966c0088 	lhu	t4,136(s3)
    25a4:	02602025 	move	a0,s3
    25a8:	318d0002 	andi	t5,t4,0x2
    25ac:	51a0005a 	beqzl	t5,2718 <func_809E7BB0+0x338>
    25b0:	8fbf005c 	lw	ra,92(sp)
    25b4:	0c000000 	jal	0 <EnDekubaba_Init>
    25b8:	2405387b 	li	a1,14459
    25bc:	240e0001 	li	t6,1
    25c0:	10000054 	b	2714 <func_809E7BB0+0x334>
    25c4:	a66e01c6 	sh	t6,454(s3)
    25c8:	54410053 	bnel	v0,at,2718 <func_809E7BB0+0x338>
    25cc:	8fbf005c 	lw	ra,92(sp)
    25d0:	8e780024 	lw	t8,36(s3)
    25d4:	27b40078 	addiu	s4,sp,120
    25d8:	ae980000 	sw	t8,0(s4)
    25dc:	8e6f0028 	lw	t7,40(s3)
    25e0:	ae8f0004 	sw	t7,4(s4)
    25e4:	8e78002c 	lw	t8,44(s3)
    25e8:	ae980008 	sw	t8,8(s4)
    25ec:	0c000000 	jal	0 <EnDekubaba_Init>
    25f0:	866400b4 	lh	a0,180(s3)
    25f4:	3c0141a0 	lui	at,0x41a0
    25f8:	44819000 	mtc1	at,$f18
    25fc:	866400b4 	lh	a0,180(s3)
    2600:	46120602 	mul.s	$f24,$f0,$f18
    2604:	0c000000 	jal	0 <EnDekubaba_Init>
    2608:	00000000 	nop
    260c:	e7a00068 	swc1	$f0,104(sp)
    2610:	0c000000 	jal	0 <EnDekubaba_Init>
    2614:	866400b6 	lh	a0,182(s3)
    2618:	3c01c1a0 	lui	at,0xc1a0
    261c:	44812000 	mtc1	at,$f4
    2620:	c7a60068 	lwc1	$f6,104(sp)
    2624:	866400b4 	lh	a0,180(s3)
    2628:	46062202 	mul.s	$f8,$f4,$f6
    262c:	00000000 	nop
    2630:	46080502 	mul.s	$f20,$f0,$f8
    2634:	0c000000 	jal	0 <EnDekubaba_Init>
    2638:	00000000 	nop
    263c:	e7a00068 	swc1	$f0,104(sp)
    2640:	0c000000 	jal	0 <EnDekubaba_Init>
    2644:	866400b6 	lh	a0,182(s3)
    2648:	3c01c1a0 	lui	at,0xc1a0
    264c:	44815000 	mtc1	at,$f10
    2650:	c7b00068 	lwc1	$f16,104(sp)
    2654:	3c110000 	lui	s1,0x0
    2658:	26310000 	addiu	s1,s1,0
    265c:	46105482 	mul.s	$f18,$f10,$f16
    2660:	00008025 	move	s0,zero
    2664:	24120004 	li	s2,4
    2668:	46120582 	mul.s	$f22,$f0,$f18
    266c:	00000000 	nop
    2670:	241901f4 	li	t9,500
    2674:	24080032 	li	t0,50
    2678:	afa80014 	sw	t0,20(sp)
    267c:	afb90010 	sw	t9,16(sp)
    2680:	02a02025 	move	a0,s5
    2684:	02802825 	move	a1,s4
    2688:	02203025 	move	a2,s1
    268c:	0c000000 	jal	0 <EnDekubaba_Init>
    2690:	02203825 	move	a3,s1
    2694:	c7a40078 	lwc1	$f4,120(sp)
    2698:	c7a8007c 	lwc1	$f8,124(sp)
    269c:	c7b00080 	lwc1	$f16,128(sp)
    26a0:	46142180 	add.s	$f6,$f4,$f20
    26a4:	26100001 	addiu	s0,s0,1
    26a8:	46184280 	add.s	$f10,$f8,$f24
    26ac:	e7a60078 	swc1	$f6,120(sp)
    26b0:	46168480 	add.s	$f18,$f16,$f22
    26b4:	e7aa007c 	swc1	$f10,124(sp)
    26b8:	1612ffed 	bne	s0,s2,2670 <func_809E7BB0+0x290>
    26bc:	e7b20080 	swc1	$f18,128(sp)
    26c0:	3c0143fa 	lui	at,0x43fa
    26c4:	44812000 	mtc1	at,$f4
    26c8:	c6600230 	lwc1	$f0,560(s3)
    26cc:	3c0142c8 	lui	at,0x42c8
    26d0:	44815000 	mtc1	at,$f10
    26d4:	46040182 	mul.s	$f6,$f0,$f4
    26d8:	02a02025 	move	a0,s5
    26dc:	26650008 	addiu	a1,s3,8
    26e0:	460a0402 	mul.s	$f16,$f0,$f10
    26e4:	02203025 	move	a2,s1
    26e8:	02203825 	move	a3,s1
    26ec:	4600320d 	trunc.w.s	$f8,$f6
    26f0:	4600848d 	trunc.w.s	$f18,$f16
    26f4:	440a4000 	mfc1	t2,$f8
    26f8:	440c9000 	mfc1	t4,$f18
    26fc:	afaa0010 	sw	t2,16(sp)
    2700:	0c000000 	jal	0 <EnDekubaba_Init>
    2704:	afac0014 	sw	t4,20(sp)
    2708:	02602025 	move	a0,s3
    270c:	0c000000 	jal	0 <EnDekubaba_Init>
    2710:	02a02825 	move	a1,s5
    2714:	8fbf005c 	lw	ra,92(sp)
    2718:	d7b40028 	ldc1	$f20,40(sp)
    271c:	d7b60030 	ldc1	$f22,48(sp)
    2720:	d7b80038 	ldc1	$f24,56(sp)
    2724:	8fb00044 	lw	s0,68(sp)
    2728:	8fb10048 	lw	s1,72(sp)
    272c:	8fb2004c 	lw	s2,76(sp)
    2730:	8fb30050 	lw	s3,80(sp)
    2734:	8fb40054 	lw	s4,84(sp)
    2738:	8fb50058 	lw	s5,88(sp)
    273c:	03e00008 	jr	ra
    2740:	27bd0088 	addiu	sp,sp,136

00002744 <func_809E7F14>:
    2744:	27bdffc0 	addiu	sp,sp,-64
    2748:	afb0002c 	sw	s0,44(sp)
    274c:	00808025 	move	s0,a0
    2750:	afbf0034 	sw	ra,52(sp)
    2754:	afb10030 	sw	s1,48(sp)
    2758:	3c0140a0 	lui	at,0x40a0
    275c:	44813000 	mtc1	at,$f6
    2760:	c6040230 	lwc1	$f4,560(s0)
    2764:	00a08825 	move	s1,a1
    2768:	8e05000c 	lw	a1,12(s0)
    276c:	46062202 	mul.s	$f8,$f4,$f6
    2770:	24840028 	addiu	a0,a0,40
    2774:	44064000 	mfc1	a2,$f8
    2778:	0c000000 	jal	0 <EnDekubaba_Init>
    277c:	00000000 	nop
    2780:	3c010000 	lui	at,0x0
    2784:	c4300000 	lwc1	$f16,0(at)
    2788:	c60a0230 	lwc1	$f10,560(s0)
    278c:	3c010000 	lui	at,0x0
    2790:	c4240000 	lwc1	$f4,0(at)
    2794:	46105482 	mul.s	$f18,$f10,$f16
    2798:	26040050 	addiu	a0,s0,80
    279c:	46049002 	mul.s	$f0,$f18,$f4
    27a0:	44050000 	mfc1	a1,$f0
    27a4:	44060000 	mfc1	a2,$f0
    27a8:	0c000000 	jal	0 <EnDekubaba_Init>
    27ac:	00000000 	nop
    27b0:	1040002e 	beqz	v0,286c <func_809E7F14+0x128>
    27b4:	3c0143fa 	lui	at,0x43fa
    27b8:	c6000230 	lwc1	$f0,560(s0)
    27bc:	44813000 	mtc1	at,$f6
    27c0:	3c0142c8 	lui	at,0x42c8
    27c4:	44818000 	mtc1	at,$f16
    27c8:	46060202 	mul.s	$f8,$f0,$f6
    27cc:	3c060000 	lui	a2,0x0
    27d0:	24c60000 	addiu	a2,a2,0
    27d4:	46100482 	mul.s	$f18,$f0,$f16
    27d8:	00c03825 	move	a3,a2
    27dc:	02202025 	move	a0,s1
    27e0:	26050008 	addiu	a1,s0,8
    27e4:	4600428d 	trunc.w.s	$f10,$f8
    27e8:	4600910d 	trunc.w.s	$f4,$f18
    27ec:	440f5000 	mfc1	t7,$f10
    27f0:	44192000 	mfc1	t9,$f4
    27f4:	afaf0010 	sw	t7,16(sp)
    27f8:	0c000000 	jal	0 <EnDekubaba_Init>
    27fc:	afb90014 	sw	t9,20(sp)
    2800:	92080116 	lbu	t0,278(s0)
    2804:	02202025 	move	a0,s1
    2808:	02002825 	move	a1,s0
    280c:	15000013 	bnez	t0,285c <func_809E7F14+0x118>
    2810:	26060024 	addiu	a2,s0,36
    2814:	26050024 	addiu	a1,s0,36
    2818:	afa50038 	sw	a1,56(sp)
    281c:	02202025 	move	a0,s1
    2820:	0c000000 	jal	0 <EnDekubaba_Init>
    2824:	2406000c 	li	a2,12
    2828:	8609001c 	lh	t1,28(s0)
    282c:	24010001 	li	at,1
    2830:	02202025 	move	a0,s1
    2834:	1521000b 	bne	t1,at,2864 <func_809E7F14+0x120>
    2838:	8fa50038 	lw	a1,56(sp)
    283c:	0c000000 	jal	0 <EnDekubaba_Init>
    2840:	2406000c 	li	a2,12
    2844:	02202025 	move	a0,s1
    2848:	8fa50038 	lw	a1,56(sp)
    284c:	0c000000 	jal	0 <EnDekubaba_Init>
    2850:	2406000c 	li	a2,12
    2854:	10000003 	b	2864 <func_809E7F14+0x120>
    2858:	00000000 	nop
    285c:	0c000000 	jal	0 <EnDekubaba_Init>
    2860:	24070030 	li	a3,48
    2864:	0c000000 	jal	0 <EnDekubaba_Init>
    2868:	02002025 	move	a0,s0
    286c:	3c014040 	lui	at,0x4040
    2870:	44813000 	mtc1	at,$f6
    2874:	c6000230 	lwc1	$f0,560(s0)
    2878:	3c014140 	lui	at,0x4140
    287c:	44815000 	mtc1	at,$f10
    2880:	46060202 	mul.s	$f8,$f0,$f6
    2884:	3c0140a0 	lui	at,0x40a0
    2888:	44812000 	mtc1	at,$f4
    288c:	460a0402 	mul.s	$f16,$f0,$f10
    2890:	c6020050 	lwc1	$f2,80(s0)
    2894:	860a00b8 	lh	t2,184(s0)
    2898:	46040182 	mul.s	$f6,$f0,$f4
    289c:	44064000 	mfc1	a2,$f8
    28a0:	254b1c70 	addiu	t3,t2,7280
    28a4:	a60b00b8 	sh	t3,184(s0)
    28a8:	e6020058 	swc1	$f2,88(s0)
    28ac:	e6020054 	swc1	$f2,84(s0)
    28b0:	4600848d 	trunc.w.s	$f18,$f16
    28b4:	24180001 	li	t8,1
    28b8:	2419ffff 	li	t9,-1
    28bc:	4600320d 	trunc.w.s	$f8,$f6
    28c0:	440d9000 	mfc1	t5,$f18
    28c4:	2408000a 	li	t0,10
    28c8:	afa80020 	sw	t0,32(sp)
    28cc:	440f4000 	mfc1	t7,$f8
    28d0:	afb9001c 	sw	t9,28(sp)
    28d4:	afb80018 	sw	t8,24(sp)
    28d8:	afa00024 	sw	zero,36(sp)
    28dc:	02202025 	move	a0,s1
    28e0:	26050008 	addiu	a1,s0,8
    28e4:	00003825 	move	a3,zero
    28e8:	afad0010 	sw	t5,16(sp)
    28ec:	0c000000 	jal	0 <EnDekubaba_Init>
    28f0:	afaf0014 	sw	t7,20(sp)
    28f4:	8fbf0034 	lw	ra,52(sp)
    28f8:	8fb0002c 	lw	s0,44(sp)
    28fc:	8fb10030 	lw	s1,48(sp)
    2900:	03e00008 	jr	ra
    2904:	27bd0040 	addiu	sp,sp,64

00002908 <func_809E80D8>:
    2908:	27bdffe8 	addiu	sp,sp,-24
    290c:	afbf0014 	sw	ra,20(sp)
    2910:	afa5001c 	sw	a1,28(sp)
    2914:	848201c6 	lh	v0,454(a0)
    2918:	10400002 	beqz	v0,2924 <func_809E80D8+0x1c>
    291c:	244effff 	addiu	t6,v0,-1
    2920:	a48e01c6 	sh	t6,454(a0)
    2924:	8fa5001c 	lw	a1,28(sp)
    2928:	0c000000 	jal	0 <EnDekubaba_Init>
    292c:	afa40018 	sw	a0,24(sp)
    2930:	14400005 	bnez	v0,2948 <func_809E80D8+0x40>
    2934:	8fa40018 	lw	a0,24(sp)
    2938:	848f01c6 	lh	t7,454(a0)
    293c:	8fa5001c 	lw	a1,28(sp)
    2940:	15e00005 	bnez	t7,2958 <func_809E80D8+0x50>
    2944:	00000000 	nop
    2948:	0c000000 	jal	0 <EnDekubaba_Init>
    294c:	00000000 	nop
    2950:	10000004 	b	2964 <func_809E80D8+0x5c>
    2954:	8fbf0014 	lw	ra,20(sp)
    2958:	0c000000 	jal	0 <EnDekubaba_Init>
    295c:	24060007 	li	a2,7
    2960:	8fbf0014 	lw	ra,20(sp)
    2964:	27bd0018 	addiu	sp,sp,24
    2968:	03e00008 	jr	ra
    296c:	00000000 	nop

00002970 <func_809E8140>:
    2970:	27bdffb8 	addiu	sp,sp,-72
    2974:	afbf002c 	sw	ra,44(sp)
    2978:	afb10028 	sw	s1,40(sp)
    297c:	afb00024 	sw	s0,36(sp)
    2980:	afa5004c 	sw	a1,76(sp)
    2984:	90820249 	lbu	v0,585(a0)
    2988:	00808825 	move	s1,a0
    298c:	8fad004c 	lw	t5,76(sp)
    2990:	304e0002 	andi	t6,v0,0x2
    2994:	11c00068 	beqz	t6,2b38 <func_809E8140+0x1c8>
    2998:	304ffffd 	andi	t7,v0,0xfffd
    299c:	a08f0249 	sb	t7,585(a0)
    29a0:	26250238 	addiu	a1,s1,568
    29a4:	0c000000 	jal	0 <EnDekubaba_Init>
    29a8:	24060001 	li	a2,1
    29ac:	9238024c 	lbu	t8,588(s1)
    29b0:	2401000c 	li	at,12
    29b4:	53010096 	beql	t8,at,2c10 <func_809E8140+0x2a0>
    29b8:	8fbf002c 	lw	ra,44(sp)
    29bc:	922200b1 	lbu	v0,177(s1)
    29c0:	3c090000 	lui	t1,0x0
    29c4:	54400005 	bnezl	v0,29dc <func_809E8140+0x6c>
    29c8:	8e2301c0 	lw	v1,448(s1)
    29cc:	923900b0 	lbu	t9,176(s1)
    29d0:	5320008f 	beqzl	t9,2c10 <func_809E8140+0x2a0>
    29d4:	8fbf002c 	lw	ra,44(sp)
    29d8:	8e2301c0 	lw	v1,448(s1)
    29dc:	922400af 	lbu	a0,175(s1)
    29e0:	922800b0 	lbu	t0,176(s1)
    29e4:	25290000 	addiu	t1,t1,0
    29e8:	1123001c 	beq	t1,v1,2a5c <func_809E8140+0xec>
    29ec:	00888023 	subu	s0,a0,t0
    29f0:	2405000e 	li	a1,14
    29f4:	10a20003 	beq	a1,v0,2a04 <func_809E8140+0x94>
    29f8:	24010001 	li	at,1
    29fc:	14410009 	bne	v0,at,2a24 <func_809E8140+0xb4>
    2a00:	3c0a0000 	lui	t2,0x0
    2a04:	54a20003 	bnel	a1,v0,2a14 <func_809E8140+0xa4>
    2a08:	02202025 	move	a0,s1
    2a0c:	00808025 	move	s0,a0
    2a10:	02202025 	move	a0,s1
    2a14:	0c000000 	jal	0 <EnDekubaba_Init>
    2a18:	24050002 	li	a1,2
    2a1c:	10000023 	b	2aac <func_809E8140+0x13c>
    2a20:	00000000 	nop
    2a24:	254a0000 	addiu	t2,t2,0
    2a28:	15430008 	bne	t2,v1,2a4c <func_809E8140+0xdc>
    2a2c:	02202025 	move	a0,s1
    2a30:	1e000002 	bgtz	s0,2a3c <func_809E8140+0xcc>
    2a34:	02202025 	move	a0,s1
    2a38:	24100001 	li	s0,1
    2a3c:	0c000000 	jal	0 <EnDekubaba_Init>
    2a40:	24050001 	li	a1,1
    2a44:	10000019 	b	2aac <func_809E8140+0x13c>
    2a48:	00000000 	nop
    2a4c:	0c000000 	jal	0 <EnDekubaba_Init>
    2a50:	00002825 	move	a1,zero
    2a54:	10000015 	b	2aac <func_809E8140+0x13c>
    2a58:	00000000 	nop
    2a5c:	2405000e 	li	a1,14
    2a60:	10a20003 	beq	a1,v0,2a70 <func_809E8140+0x100>
    2a64:	2401000f 	li	at,15
    2a68:	5441000c 	bnel	v0,at,2a9c <func_809E8140+0x12c>
    2a6c:	24010001 	li	at,1
    2a70:	1a000005 	blez	s0,2a88 <func_809E8140+0x118>
    2a74:	00000000 	nop
    2a78:	0c000000 	jal	0 <EnDekubaba_Init>
    2a7c:	02202025 	move	a0,s1
    2a80:	1000000a 	b	2aac <func_809E8140+0x13c>
    2a84:	00000000 	nop
    2a88:	0c000000 	jal	0 <EnDekubaba_Init>
    2a8c:	02202025 	move	a0,s1
    2a90:	10000006 	b	2aac <func_809E8140+0x13c>
    2a94:	00000000 	nop
    2a98:	24010001 	li	at,1
    2a9c:	1041005b 	beq	v0,at,2c0c <func_809E8140+0x29c>
    2aa0:	02202025 	move	a0,s1
    2aa4:	0c000000 	jal	0 <EnDekubaba_Init>
    2aa8:	00002825 	move	a1,zero
    2aac:	06030004 	bgezl	s0,2ac0 <func_809E8140+0x150>
    2ab0:	a23000af 	sb	s0,175(s1)
    2ab4:	10000002 	b	2ac0 <func_809E8140+0x150>
    2ab8:	a22000af 	sb	zero,175(s1)
    2abc:	a23000af 	sb	s0,175(s1)
    2ac0:	922b00b1 	lbu	t3,177(s1)
    2ac4:	24010002 	li	at,2
    2ac8:	15610032 	bne	t3,at,2b94 <func_809E8140+0x224>
    2acc:	3c01428c 	lui	at,0x428c
    2ad0:	44813000 	mtc1	at,$f6
    2ad4:	c6240230 	lwc1	$f4,560(s1)
    2ad8:	26260024 	addiu	a2,s1,36
    2adc:	afa60038 	sw	a2,56(sp)
    2ae0:	46062002 	mul.s	$f0,$f4,$f6
    2ae4:	00008025 	move	s0,zero
    2ae8:	4600020d 	trunc.w.s	$f8,$f0
    2aec:	44074000 	mfc1	a3,$f8
    2af0:	00000000 	nop
    2af4:	00073c00 	sll	a3,a3,0x10
    2af8:	00073c03 	sra	a3,a3,0x10
    2afc:	afa70034 	sw	a3,52(sp)
    2b00:	8fa60038 	lw	a2,56(sp)
    2b04:	8fa70034 	lw	a3,52(sp)
    2b08:	8fa4004c 	lw	a0,76(sp)
    2b0c:	02202825 	move	a1,s1
    2b10:	afa00010 	sw	zero,16(sp)
    2b14:	afa00014 	sw	zero,20(sp)
    2b18:	0c000000 	jal	0 <EnDekubaba_Init>
    2b1c:	afb00018 	sw	s0,24(sp)
    2b20:	26100001 	addiu	s0,s0,1
    2b24:	24010004 	li	at,4
    2b28:	5601fff6 	bnel	s0,at,2b04 <func_809E8140+0x194>
    2b2c:	8fa60038 	lw	a2,56(sp)
    2b30:	10000019 	b	2b98 <func_809E8140+0x228>
    2b34:	922900af 	lbu	t1,175(s1)
    2b38:	91ae1c26 	lbu	t6,7206(t5)
    2b3c:	51c00034 	beqzl	t6,2c10 <func_809E8140+0x2a0>
    2b40:	8fbf002c 	lw	ra,44(sp)
    2b44:	922f024c 	lbu	t7,588(s1)
    2b48:	2401000c 	li	at,12
    2b4c:	51e10030 	beql	t7,at,2c10 <func_809E8140+0x2a0>
    2b50:	8fbf002c 	lw	ra,44(sp)
    2b54:	8e2301c0 	lw	v1,448(s1)
    2b58:	3c180000 	lui	t8,0x0
    2b5c:	27180000 	addiu	t8,t8,0
    2b60:	1303002a 	beq	t8,v1,2c0c <func_809E8140+0x29c>
    2b64:	3c190000 	lui	t9,0x0
    2b68:	27390000 	addiu	t9,t9,0
    2b6c:	53230028 	beql	t9,v1,2c10 <func_809E8140+0x2a0>
    2b70:	8fbf002c 	lw	ra,44(sp)
    2b74:	922200af 	lbu	v0,175(s1)
    2b78:	02202025 	move	a0,s1
    2b7c:	24050001 	li	a1,1
    2b80:	10400022 	beqz	v0,2c0c <func_809E8140+0x29c>
    2b84:	2448ffff 	addiu	t0,v0,-1
    2b88:	a22800af 	sb	t0,175(s1)
    2b8c:	0c000000 	jal	0 <EnDekubaba_Init>
    2b90:	a2200116 	sb	zero,278(s1)
    2b94:	922900af 	lbu	t1,175(s1)
    2b98:	8fa4004c 	lw	a0,76(sp)
    2b9c:	1120000e 	beqz	t1,2bd8 <func_809E8140+0x268>
    2ba0:	00000000 	nop
    2ba4:	862a01c6 	lh	t2,454(s1)
    2ba8:	24010002 	li	at,2
    2bac:	2405389e 	li	a1,14494
    2bb0:	15410005 	bne	t2,at,2bc8 <func_809E8140+0x258>
    2bb4:	02202025 	move	a0,s1
    2bb8:	0c000000 	jal	0 <EnDekubaba_Init>
    2bbc:	02202025 	move	a0,s1
    2bc0:	10000013 	b	2c10 <func_809E8140+0x2a0>
    2bc4:	8fbf002c 	lw	ra,44(sp)
    2bc8:	0c000000 	jal	0 <EnDekubaba_Init>
    2bcc:	2405385e 	li	a1,14430
    2bd0:	1000000f 	b	2c10 <func_809E8140+0x2a0>
    2bd4:	8fbf002c 	lw	ra,44(sp)
    2bd8:	0c000000 	jal	0 <EnDekubaba_Init>
    2bdc:	02202825 	move	a1,s1
    2be0:	862b001c 	lh	t3,28(s1)
    2be4:	24010001 	li	at,1
    2be8:	2405385f 	li	a1,14431
    2bec:	15610005 	bne	t3,at,2c04 <func_809E8140+0x294>
    2bf0:	02202025 	move	a0,s1
    2bf4:	0c000000 	jal	0 <EnDekubaba_Init>
    2bf8:	02202025 	move	a0,s1
    2bfc:	10000004 	b	2c10 <func_809E8140+0x2a0>
    2c00:	8fbf002c 	lw	ra,44(sp)
    2c04:	0c000000 	jal	0 <EnDekubaba_Init>
    2c08:	24053862 	li	a1,14434
    2c0c:	8fbf002c 	lw	ra,44(sp)
    2c10:	8fb00024 	lw	s0,36(sp)
    2c14:	8fb10028 	lw	s1,40(sp)
    2c18:	03e00008 	jr	ra
    2c1c:	27bd0048 	addiu	sp,sp,72

00002c20 <EnDekubaba_Update>:
    2c20:	27bdffc8 	addiu	sp,sp,-56
    2c24:	afbf0024 	sw	ra,36(sp)
    2c28:	afb10020 	sw	s1,32(sp)
    2c2c:	afb0001c 	sw	s0,28(sp)
    2c30:	90820248 	lbu	v0,584(a0)
    2c34:	00808025 	move	s0,a0
    2c38:	00a08825 	move	s1,a1
    2c3c:	304e0002 	andi	t6,v0,0x2
    2c40:	11c00003 	beqz	t6,2c50 <EnDekubaba_Update+0x30>
    2c44:	304ffffd 	andi	t7,v0,0xfffd
    2c48:	0c000000 	jal	0 <EnDekubaba_Init>
    2c4c:	a08f0248 	sb	t7,584(a0)
    2c50:	02002025 	move	a0,s0
    2c54:	0c000000 	jal	0 <EnDekubaba_Init>
    2c58:	02202825 	move	a1,s1
    2c5c:	8e1901c0 	lw	t9,448(s0)
    2c60:	02002025 	move	a0,s0
    2c64:	02202825 	move	a1,s1
    2c68:	0320f809 	jalr	t9
    2c6c:	00000000 	nop
    2c70:	8e0201c0 	lw	v0,448(s0)
    2c74:	3c180000 	lui	t8,0x0
    2c78:	27180000 	addiu	t8,t8,0
    2c7c:	17020015 	bne	t8,v0,2cd4 <EnDekubaba_Update+0xb4>
    2c80:	3c030000 	lui	v1,0x0
    2c84:	0c000000 	jal	0 <EnDekubaba_Init>
    2c88:	02002025 	move	a0,s0
    2c8c:	3c014120 	lui	at,0x4120
    2c90:	44810000 	mtc1	at,$f0
    2c94:	3c014170 	lui	at,0x4170
    2c98:	44813000 	mtc1	at,$f6
    2c9c:	c6040230 	lwc1	$f4,560(s0)
    2ca0:	24080005 	li	t0,5
    2ca4:	44060000 	mfc1	a2,$f0
    2ca8:	46062202 	mul.s	$f8,$f4,$f6
    2cac:	afa80014 	sw	t0,20(sp)
    2cb0:	02202025 	move	a0,s1
    2cb4:	02002825 	move	a1,s0
    2cb8:	e7a00010 	swc1	$f0,16(sp)
    2cbc:	44074000 	mfc1	a3,$f8
    2cc0:	0c000000 	jal	0 <EnDekubaba_Init>
    2cc4:	00000000 	nop
    2cc8:	3c030000 	lui	v1,0x0
    2ccc:	10000013 	b	2d1c <EnDekubaba_Update+0xfc>
    2cd0:	24630000 	addiu	v1,v1,0
    2cd4:	24630000 	addiu	v1,v1,0
    2cd8:	10620010 	beq	v1,v0,2d1c <EnDekubaba_Update+0xfc>
    2cdc:	02202025 	move	a0,s1
    2ce0:	44800000 	mtc1	zero,$f0
    2ce4:	24090004 	li	t1,4
    2ce8:	afa90014 	sw	t1,20(sp)
    2cec:	44060000 	mfc1	a2,$f0
    2cf0:	44070000 	mfc1	a3,$f0
    2cf4:	02002825 	move	a1,s0
    2cf8:	afa3002c 	sw	v1,44(sp)
    2cfc:	0c000000 	jal	0 <EnDekubaba_Init>
    2d00:	e7a00010 	swc1	$f0,16(sp)
    2d04:	8e0a0234 	lw	t2,564(s0)
    2d08:	8fa3002c 	lw	v1,44(sp)
    2d0c:	55400004 	bnezl	t2,2d20 <EnDekubaba_Update+0x100>
    2d10:	8e0d01c0 	lw	t5,448(s0)
    2d14:	8e0b0078 	lw	t3,120(s0)
    2d18:	ae0b0234 	sw	t3,564(s0)
    2d1c:	8e0d01c0 	lw	t5,448(s0)
    2d20:	3c0c0000 	lui	t4,0x0
    2d24:	258c0000 	addiu	t4,t4,0
    2d28:	158d000c 	bne	t4,t5,2d5c <EnDekubaba_Update+0x13c>
    2d2c:	02202025 	move	a0,s1
    2d30:	3c010001 	lui	at,0x1
    2d34:	34211e60 	ori	at,at,0x1e60
    2d38:	02212821 	addu	a1,s1,at
    2d3c:	26060238 	addiu	a2,s0,568
    2d40:	0c000000 	jal	0 <EnDekubaba_Init>
    2d44:	afa3002c 	sw	v1,44(sp)
    2d48:	8e0e0004 	lw	t6,4(s0)
    2d4c:	3c010100 	lui	at,0x100
    2d50:	8fa3002c 	lw	v1,44(sp)
    2d54:	01c17825 	or	t7,t6,at
    2d58:	ae0f0004 	sw	t7,4(s0)
    2d5c:	92190249 	lbu	t9,585(s0)
    2d60:	3c010001 	lui	at,0x1
    2d64:	34211e60 	ori	at,at,0x1e60
    2d68:	33380001 	andi	t8,t9,0x1
    2d6c:	13000006 	beqz	t8,2d88 <EnDekubaba_Update+0x168>
    2d70:	02202025 	move	a0,s1
    2d74:	02212821 	addu	a1,s1,at
    2d78:	26060238 	addiu	a2,s0,568
    2d7c:	0c000000 	jal	0 <EnDekubaba_Init>
    2d80:	afa3002c 	sw	v1,44(sp)
    2d84:	8fa3002c 	lw	v1,44(sp)
    2d88:	8e0801c0 	lw	t0,448(s0)
    2d8c:	3c010001 	lui	at,0x1
    2d90:	34211e60 	ori	at,at,0x1e60
    2d94:	10680004 	beq	v1,t0,2da8 <EnDekubaba_Update+0x188>
    2d98:	02202025 	move	a0,s1
    2d9c:	02212821 	addu	a1,s1,at
    2da0:	0c000000 	jal	0 <EnDekubaba_Init>
    2da4:	26060238 	addiu	a2,s0,568
    2da8:	8fbf0024 	lw	ra,36(sp)
    2dac:	8fb0001c 	lw	s0,28(sp)
    2db0:	8fb10020 	lw	s1,32(sp)
    2db4:	03e00008 	jr	ra
    2db8:	27bd0038 	addiu	sp,sp,56

00002dbc <func_809E858C>:
    2dbc:	27bdffb8 	addiu	sp,sp,-72
    2dc0:	afbf001c 	sw	ra,28(sp)
    2dc4:	afb10018 	sw	s1,24(sp)
    2dc8:	afb00014 	sw	s0,20(sp)
    2dcc:	afa5004c 	sw	a1,76(sp)
    2dd0:	8ca50000 	lw	a1,0(a1)
    2dd4:	00808025 	move	s0,a0
    2dd8:	3c060000 	lui	a2,0x0
    2ddc:	24c60000 	addiu	a2,a2,0
    2de0:	27a40030 	addiu	a0,sp,48
    2de4:	2407098d 	li	a3,2445
    2de8:	0c000000 	jal	0 <EnDekubaba_Init>
    2dec:	00a08825 	move	s1,a1
    2df0:	3c010000 	lui	at,0x0
    2df4:	c4240000 	lwc1	$f4,0(at)
    2df8:	c6000230 	lwc1	$f0,560(s0)
    2dfc:	3c01c0c0 	lui	at,0xc0c0
    2e00:	44815000 	mtc1	at,$f10
    2e04:	46040182 	mul.s	$f6,$f0,$f4
    2e08:	00003825 	move	a3,zero
    2e0c:	46005402 	mul.s	$f16,$f10,$f0
    2e10:	e7a60044 	swc1	$f6,68(sp)
    2e14:	c608000c 	lwc1	$f8,12(s0)
    2e18:	8e060010 	lw	a2,16(s0)
    2e1c:	c60c0008 	lwc1	$f12,8(s0)
    2e20:	0c000000 	jal	0 <EnDekubaba_Init>
    2e24:	46104380 	add.s	$f14,$f8,$f16
    2e28:	860401ca 	lh	a0,458(s0)
    2e2c:	860500b6 	lh	a1,182(s0)
    2e30:	00003025 	move	a2,zero
    2e34:	0c000000 	jal	0 <EnDekubaba_Init>
    2e38:	24070001 	li	a3,1
    2e3c:	c7ac0044 	lwc1	$f12,68(sp)
    2e40:	24070001 	li	a3,1
    2e44:	44066000 	mfc1	a2,$f12
    2e48:	0c000000 	jal	0 <EnDekubaba_Init>
    2e4c:	46006386 	mov.s	$f14,$f12
    2e50:	8e2202c0 	lw	v0,704(s1)
    2e54:	3c18da38 	lui	t8,0xda38
    2e58:	37180003 	ori	t8,t8,0x3
    2e5c:	244f0008 	addiu	t7,v0,8
    2e60:	ae2f02c0 	sw	t7,704(s1)
    2e64:	ac580000 	sw	t8,0(v0)
    2e68:	8fb9004c 	lw	t9,76(sp)
    2e6c:	3c050000 	lui	a1,0x0
    2e70:	24a50000 	addiu	a1,a1,0
    2e74:	8f240000 	lw	a0,0(t9)
    2e78:	2406099d 	li	a2,2461
    2e7c:	0c000000 	jal	0 <EnDekubaba_Init>
    2e80:	afa2002c 	sw	v0,44(sp)
    2e84:	8fa3002c 	lw	v1,44(sp)
    2e88:	3c0a0600 	lui	t2,0x600
    2e8c:	254a1330 	addiu	t2,t2,4912
    2e90:	ac620004 	sw	v0,4(v1)
    2e94:	8e2202c0 	lw	v0,704(s1)
    2e98:	3c09de00 	lui	t1,0xde00
    2e9c:	02002025 	move	a0,s0
    2ea0:	24480008 	addiu	t0,v0,8
    2ea4:	ae2802c0 	sw	t0,704(s1)
    2ea8:	24050000 	li	a1,0
    2eac:	ac4a0004 	sw	t2,4(v0)
    2eb0:	0c000000 	jal	0 <EnDekubaba_Init>
    2eb4:	ac490000 	sw	t1,0(v0)
    2eb8:	8fab004c 	lw	t3,76(sp)
    2ebc:	3c060000 	lui	a2,0x0
    2ec0:	24c60000 	addiu	a2,a2,0
    2ec4:	27a40030 	addiu	a0,sp,48
    2ec8:	240709a4 	li	a3,2468
    2ecc:	0c000000 	jal	0 <EnDekubaba_Init>
    2ed0:	8d650000 	lw	a1,0(t3)
    2ed4:	8fbf001c 	lw	ra,28(sp)
    2ed8:	8fb00014 	lw	s0,20(sp)
    2edc:	8fb10018 	lw	s1,24(sp)
    2ee0:	03e00008 	jr	ra
    2ee4:	27bd0048 	addiu	sp,sp,72

00002ee8 <func_809E86B8>:
    2ee8:	27bdff10 	addiu	sp,sp,-240
    2eec:	afbf005c 	sw	ra,92(sp)
    2ef0:	afbe0058 	sw	s8,88(sp)
    2ef4:	afb70054 	sw	s7,84(sp)
    2ef8:	afb60050 	sw	s6,80(sp)
    2efc:	afb5004c 	sw	s5,76(sp)
    2f00:	afb40048 	sw	s4,72(sp)
    2f04:	afb30044 	sw	s3,68(sp)
    2f08:	afb20040 	sw	s2,64(sp)
    2f0c:	afb1003c 	sw	s1,60(sp)
    2f10:	afb00038 	sw	s0,56(sp)
    2f14:	f7ba0030 	sdc1	$f26,48(sp)
    2f18:	f7b80028 	sdc1	$f24,40(sp)
    2f1c:	f7b60020 	sdc1	$f22,32(sp)
    2f20:	f7b40018 	sdc1	$f20,24(sp)
    2f24:	afa500f4 	sw	a1,244(sp)
    2f28:	8ca50000 	lw	a1,0(a1)
    2f2c:	00808025 	move	s0,a0
    2f30:	3c060000 	lui	a2,0x0
    2f34:	24c60000 	addiu	a2,a2,0
    2f38:	27a40088 	addiu	a0,sp,136
    2f3c:	240709b7 	li	a3,2487
    2f40:	0c000000 	jal	0 <EnDekubaba_Init>
    2f44:	00a0a025 	move	s4,a1
    2f48:	8e1801c0 	lw	t8,448(s0)
    2f4c:	3c0f0000 	lui	t7,0x0
    2f50:	25ef0000 	addiu	t7,t7,0
    2f54:	15f80004 	bne	t7,t8,2f68 <func_809E86B8+0x80>
    2f58:	3c010000 	lui	at,0x0
    2f5c:	24190002 	li	t9,2
    2f60:	10000003 	b	2f70 <func_809E86B8+0x88>
    2f64:	afb9009c 	sw	t9,156(sp)
    2f68:	24080003 	li	t0,3
    2f6c:	afa8009c 	sw	t0,156(sp)
    2f70:	c6040230 	lwc1	$f4,560(s0)
    2f74:	c4260000 	lwc1	$f6,0(at)
    2f78:	c60c0024 	lwc1	$f12,36(s0)
    2f7c:	c60e0028 	lwc1	$f14,40(s0)
    2f80:	46062502 	mul.s	$f20,$f4,$f6
    2f84:	8e06002c 	lw	a2,44(s0)
    2f88:	0c000000 	jal	0 <EnDekubaba_Init>
    2f8c:	00003825 	move	a3,zero
    2f90:	4406a000 	mfc1	a2,$f20
    2f94:	4600a306 	mov.s	$f12,$f20
    2f98:	4600a386 	mov.s	$f14,$f20
    2f9c:	0c000000 	jal	0 <EnDekubaba_Init>
    2fa0:	24070001 	li	a3,1
    2fa4:	0c000000 	jal	0 <EnDekubaba_Init>
    2fa8:	27a400b0 	addiu	a0,sp,176
    2fac:	92090114 	lbu	t1,276(s0)
    2fb0:	3c0141a0 	lui	at,0x41a0
    2fb4:	00009025 	move	s2,zero
    2fb8:	1120000c 	beqz	t1,2fec <func_809E86B8+0x104>
    2fbc:	02009825 	move	s3,s0
    2fc0:	4481b000 	mtc1	at,$f22
    2fc4:	c6080230 	lwc1	$f8,560(s0)
    2fc8:	c6100028 	lwc1	$f16,40(s0)
    2fcc:	c60a0024 	lwc1	$f10,36(s0)
    2fd0:	46164682 	mul.s	$f26,$f8,$f22
    2fd4:	c604002c 	lwc1	$f4,44(s0)
    2fd8:	e60a0164 	swc1	$f10,356(s0)
    2fdc:	e604016c 	swc1	$f4,364(s0)
    2fe0:	461a8481 	sub.s	$f18,$f16,$f26
    2fe4:	e6120168 	swc1	$f18,360(s0)
    2fe8:	e7ba00a4 	swc1	$f26,164(sp)
    2fec:	8faa009c 	lw	t2,156(sp)
    2ff0:	3c0141a0 	lui	at,0x41a0
    2ff4:	4481b000 	mtc1	at,$f22
    2ff8:	1940006f 	blez	t2,31b8 <func_809E86B8+0x2d0>
    2ffc:	c7ba00a4 	lwc1	$f26,164(sp)
    3000:	3c014220 	lui	at,0x4220
    3004:	3c150000 	lui	s5,0x0
    3008:	4481c000 	mtc1	at,$f24
    300c:	26b50000 	addiu	s5,s5,0
    3010:	24160033 	li	s6,51
    3014:	261e0238 	addiu	s8,s0,568
    3018:	24170034 	li	s7,52
    301c:	0c000000 	jal	0 <EnDekubaba_Init>
    3020:	866401ca 	lh	a0,458(s3)
    3024:	4600b182 	mul.s	$f6,$f22,$f0
    3028:	c6080230 	lwc1	$f8,560(s0)
    302c:	c7b000e4 	lwc1	$f16,228(sp)
    3030:	46083282 	mul.s	$f10,$f6,$f8
    3034:	460a8480 	add.s	$f18,$f16,$f10
    3038:	e7b200e4 	swc1	$f18,228(sp)
    303c:	0c000000 	jal	0 <EnDekubaba_Init>
    3040:	866401ca 	lh	a0,458(s3)
    3044:	46160102 	mul.s	$f4,$f0,$f22
    3048:	c6060230 	lwc1	$f6,560(s0)
    304c:	860400b6 	lh	a0,182(s0)
    3050:	46062502 	mul.s	$f20,$f4,$f6
    3054:	0c000000 	jal	0 <EnDekubaba_Init>
    3058:	00000000 	nop
    305c:	4600a402 	mul.s	$f16,$f20,$f0
    3060:	c7a800e0 	lwc1	$f8,224(sp)
    3064:	46104281 	sub.s	$f10,$f8,$f16
    3068:	e7aa00e0 	swc1	$f10,224(sp)
    306c:	0c000000 	jal	0 <EnDekubaba_Init>
    3070:	860400b6 	lh	a0,182(s0)
    3074:	4600a102 	mul.s	$f4,$f20,$f0
    3078:	c7b200e8 	lwc1	$f18,232(sp)
    307c:	27a400b0 	addiu	a0,sp,176
    3080:	46049181 	sub.s	$f6,$f18,$f4
    3084:	0c000000 	jal	0 <EnDekubaba_Init>
    3088:	e7a600e8 	swc1	$f6,232(sp)
    308c:	866401ca 	lh	a0,458(s3)
    3090:	860500b6 	lh	a1,182(s0)
    3094:	00003025 	move	a2,zero
    3098:	0c000000 	jal	0 <EnDekubaba_Init>
    309c:	24070001 	li	a3,1
    30a0:	8e8202c0 	lw	v0,704(s4)
    30a4:	3c0cda38 	lui	t4,0xda38
    30a8:	358c0003 	ori	t4,t4,0x3
    30ac:	244b0008 	addiu	t3,v0,8
    30b0:	ae8b02c0 	sw	t3,704(s4)
    30b4:	ac4c0000 	sw	t4,0(v0)
    30b8:	8fad00f4 	lw	t5,244(sp)
    30bc:	3c050000 	lui	a1,0x0
    30c0:	24a50000 	addiu	a1,a1,0
    30c4:	240609e5 	li	a2,2533
    30c8:	00408825 	move	s1,v0
    30cc:	0c000000 	jal	0 <EnDekubaba_Init>
    30d0:	8da40000 	lw	a0,0(t5)
    30d4:	ae220004 	sw	v0,4(s1)
    30d8:	8e8202c0 	lw	v0,704(s4)
    30dc:	3c0fde00 	lui	t7,0xde00
    30e0:	02c02025 	move	a0,s6
    30e4:	244e0008 	addiu	t6,v0,8
    30e8:	ae8e02c0 	sw	t6,704(s4)
    30ec:	ac4f0000 	sw	t7,0(v0)
    30f0:	8eb80000 	lw	t8,0(s5)
    30f4:	03c02825 	move	a1,s8
    30f8:	0c000000 	jal	0 <EnDekubaba_Init>
    30fc:	ac580004 	sw	t8,4(v0)
    3100:	02e02025 	move	a0,s7
    3104:	0c000000 	jal	0 <EnDekubaba_Init>
    3108:	03c02825 	move	a1,s8
    310c:	16400015 	bnez	s2,3164 <func_809E86B8+0x27c>
    3110:	2a410002 	slti	at,s2,2
    3114:	8e0801c0 	lw	t0,448(s0)
    3118:	3c190000 	lui	t9,0x0
    311c:	27390000 	addiu	t9,t9,0
    3120:	13280007 	beq	t9,t0,3140 <func_809E86B8+0x258>
    3124:	c7a800e0 	lwc1	$f8,224(sp)
    3128:	e6080038 	swc1	$f8,56(s0)
    312c:	c7b000e4 	lwc1	$f16,228(sp)
    3130:	e610003c 	swc1	$f16,60(s0)
    3134:	c7aa00e8 	lwc1	$f10,232(sp)
    3138:	1000000a 	b	3164 <func_809E86B8+0x27c>
    313c:	e60a0040 	swc1	$f10,64(s0)
    3140:	c6060230 	lwc1	$f6,560(s0)
    3144:	c604000c 	lwc1	$f4,12(s0)
    3148:	c6120008 	lwc1	$f18,8(s0)
    314c:	4606c202 	mul.s	$f8,$f24,$f6
    3150:	c60a0010 	lwc1	$f10,16(s0)
    3154:	e6120038 	swc1	$f18,56(s0)
    3158:	e60a0040 	swc1	$f10,64(s0)
    315c:	46082400 	add.s	$f16,$f4,$f8
    3160:	e610003c 	swc1	$f16,60(s0)
    3164:	1020000e 	beqz	at,31a0 <func_809E86B8+0x2b8>
    3168:	26730002 	addiu	s3,s3,2
    316c:	92090114 	lbu	t1,276(s0)
    3170:	00125080 	sll	t2,s2,0x2
    3174:	01525023 	subu	t2,t2,s2
    3178:	11200009 	beqz	t1,31a0 <func_809E86B8+0x2b8>
    317c:	c7b200e0 	lwc1	$f18,224(sp)
    3180:	000a5080 	sll	t2,t2,0x2
    3184:	020a1021 	addu	v0,s0,t2
    3188:	e452014c 	swc1	$f18,332(v0)
    318c:	c7a600e4 	lwc1	$f6,228(sp)
    3190:	461a3101 	sub.s	$f4,$f6,$f26
    3194:	e4440150 	swc1	$f4,336(v0)
    3198:	c7a800e8 	lwc1	$f8,232(sp)
    319c:	e4480154 	swc1	$f8,340(v0)
    31a0:	8fab009c 	lw	t3,156(sp)
    31a4:	26520001 	addiu	s2,s2,1
    31a8:	26b50004 	addiu	s5,s5,4
    31ac:	26d60002 	addiu	s6,s6,2
    31b0:	164bff9a 	bne	s2,t3,301c <func_809E86B8+0x134>
    31b4:	26f70002 	addiu	s7,s7,2
    31b8:	8fac00f4 	lw	t4,244(sp)
    31bc:	3c060000 	lui	a2,0x0
    31c0:	24c60000 	addiu	a2,a2,0
    31c4:	27a40088 	addiu	a0,sp,136
    31c8:	24070a09 	li	a3,2569
    31cc:	0c000000 	jal	0 <EnDekubaba_Init>
    31d0:	8d850000 	lw	a1,0(t4)
    31d4:	8fbf005c 	lw	ra,92(sp)
    31d8:	d7b40018 	ldc1	$f20,24(sp)
    31dc:	d7b60020 	ldc1	$f22,32(sp)
    31e0:	d7b80028 	ldc1	$f24,40(sp)
    31e4:	d7ba0030 	ldc1	$f26,48(sp)
    31e8:	8fb00038 	lw	s0,56(sp)
    31ec:	8fb1003c 	lw	s1,60(sp)
    31f0:	8fb20040 	lw	s2,64(sp)
    31f4:	8fb30044 	lw	s3,68(sp)
    31f8:	8fb40048 	lw	s4,72(sp)
    31fc:	8fb5004c 	lw	s5,76(sp)
    3200:	8fb60050 	lw	s6,80(sp)
    3204:	8fb70054 	lw	s7,84(sp)
    3208:	8fbe0058 	lw	s8,88(sp)
    320c:	03e00008 	jr	ra
    3210:	27bd00f0 	addiu	sp,sp,240

00003214 <func_809E89E4>:
    3214:	27bdffc0 	addiu	sp,sp,-64
    3218:	afbf001c 	sw	ra,28(sp)
    321c:	afb00018 	sw	s0,24(sp)
    3220:	afa40040 	sw	a0,64(sp)
    3224:	afa50044 	sw	a1,68(sp)
    3228:	8ca50000 	lw	a1,0(a1)
    322c:	3c060000 	lui	a2,0x0
    3230:	24c60000 	addiu	a2,a2,0
    3234:	27a4002c 	addiu	a0,sp,44
    3238:	24070a13 	li	a3,2579
    323c:	0c000000 	jal	0 <EnDekubaba_Init>
    3240:	00a08025 	move	s0,a1
    3244:	8fa20040 	lw	v0,64(sp)
    3248:	00003025 	move	a2,zero
    324c:	24070001 	li	a3,1
    3250:	844401ce 	lh	a0,462(v0)
    3254:	0c000000 	jal	0 <EnDekubaba_Init>
    3258:	844500b6 	lh	a1,182(v0)
    325c:	8e0202c0 	lw	v0,704(s0)
    3260:	3c18da38 	lui	t8,0xda38
    3264:	37180003 	ori	t8,t8,0x3
    3268:	244f0008 	addiu	t7,v0,8
    326c:	ae0f02c0 	sw	t7,704(s0)
    3270:	ac580000 	sw	t8,0(v0)
    3274:	8fb90044 	lw	t9,68(sp)
    3278:	3c050000 	lui	a1,0x0
    327c:	24a50000 	addiu	a1,a1,0
    3280:	8f240000 	lw	a0,0(t9)
    3284:	24060a1a 	li	a2,2586
    3288:	0c000000 	jal	0 <EnDekubaba_Init>
    328c:	afa20028 	sw	v0,40(sp)
    3290:	8fa30028 	lw	v1,40(sp)
    3294:	3c0a0600 	lui	t2,0x600
    3298:	254a1828 	addiu	t2,t2,6184
    329c:	ac620004 	sw	v0,4(v1)
    32a0:	8e0202c0 	lw	v0,704(s0)
    32a4:	3c09de00 	lui	t1,0xde00
    32a8:	24040037 	li	a0,55
    32ac:	24480008 	addiu	t0,v0,8
    32b0:	ae0802c0 	sw	t0,704(s0)
    32b4:	ac4a0004 	sw	t2,4(v0)
    32b8:	ac490000 	sw	t1,0(v0)
    32bc:	8fb00040 	lw	s0,64(sp)
    32c0:	26100238 	addiu	s0,s0,568
    32c4:	0c000000 	jal	0 <EnDekubaba_Init>
    32c8:	02002825 	move	a1,s0
    32cc:	24040038 	li	a0,56
    32d0:	0c000000 	jal	0 <EnDekubaba_Init>
    32d4:	02002825 	move	a1,s0
    32d8:	8fab0044 	lw	t3,68(sp)
    32dc:	3c060000 	lui	a2,0x0
    32e0:	24c60000 	addiu	a2,a2,0
    32e4:	27a4002c 	addiu	a0,sp,44
    32e8:	24070a24 	li	a3,2596
    32ec:	0c000000 	jal	0 <EnDekubaba_Init>
    32f0:	8d650000 	lw	a1,0(t3)
    32f4:	8fbf001c 	lw	ra,28(sp)
    32f8:	8fb00018 	lw	s0,24(sp)
    32fc:	27bd0040 	addiu	sp,sp,64
    3300:	03e00008 	jr	ra
    3304:	00000000 	nop

00003308 <func_809E8AD8>:
    3308:	27bdff70 	addiu	sp,sp,-144
    330c:	afbf0024 	sw	ra,36(sp)
    3310:	afb10020 	sw	s1,32(sp)
    3314:	afb0001c 	sw	s0,28(sp)
    3318:	afa50094 	sw	a1,148(sp)
    331c:	8ca50000 	lw	a1,0(a1)
    3320:	00808825 	move	s1,a0
    3324:	3c060000 	lui	a2,0x0
    3328:	24c60000 	addiu	a2,a2,0
    332c:	27a40038 	addiu	a0,sp,56
    3330:	24070a84 	li	a3,2692
    3334:	0c000000 	jal	0 <EnDekubaba_Init>
    3338:	00a08025 	move	s0,a1
    333c:	8faf0094 	lw	t7,148(sp)
    3340:	0c000000 	jal	0 <EnDekubaba_Init>
    3344:	8de40000 	lw	a0,0(t7)
    3348:	8e0202d0 	lw	v0,720(s0)
    334c:	3c19fa00 	lui	t9,0xfa00
    3350:	240800ff 	li	t0,255
    3354:	24580008 	addiu	t8,v0,8
    3358:	ae1802d0 	sw	t8,720(s0)
    335c:	ac480004 	sw	t0,4(v0)
    3360:	ac590000 	sw	t9,0(v0)
    3364:	8e270010 	lw	a3,16(s1)
    3368:	8e26000c 	lw	a2,12(s1)
    336c:	8e250008 	lw	a1,8(s1)
    3370:	8e240234 	lw	a0,564(s1)
    3374:	27a90050 	addiu	t1,sp,80
    3378:	0c000000 	jal	0 <EnDekubaba_Init>
    337c:	afa90010 	sw	t1,16(sp)
    3380:	27a40050 	addiu	a0,sp,80
    3384:	0c000000 	jal	0 <EnDekubaba_Init>
    3388:	00002825 	move	a1,zero
    338c:	3c010000 	lui	at,0x0
    3390:	c4260000 	lwc1	$f6,0(at)
    3394:	c6240230 	lwc1	$f4,560(s1)
    3398:	3c013f80 	lui	at,0x3f80
    339c:	44817000 	mtc1	at,$f14
    33a0:	46062302 	mul.s	$f12,$f4,$f6
    33a4:	24070001 	li	a3,1
    33a8:	44066000 	mfc1	a2,$f12
    33ac:	0c000000 	jal	0 <EnDekubaba_Init>
    33b0:	00000000 	nop
    33b4:	8e0202d0 	lw	v0,720(s0)
    33b8:	3c0bda38 	lui	t3,0xda38
    33bc:	356b0003 	ori	t3,t3,0x3
    33c0:	244a0008 	addiu	t2,v0,8
    33c4:	ae0a02d0 	sw	t2,720(s0)
    33c8:	ac4b0000 	sw	t3,0(v0)
    33cc:	8fac0094 	lw	t4,148(sp)
    33d0:	3c050000 	lui	a1,0x0
    33d4:	24a50000 	addiu	a1,a1,0
    33d8:	24060a96 	li	a2,2710
    33dc:	00408825 	move	s1,v0
    33e0:	0c000000 	jal	0 <EnDekubaba_Init>
    33e4:	8d840000 	lw	a0,0(t4)
    33e8:	ae220004 	sw	v0,4(s1)
    33ec:	8e0202d0 	lw	v0,720(s0)
    33f0:	3c0f0405 	lui	t7,0x405
    33f4:	25ef9210 	addiu	t7,t7,-28144
    33f8:	244d0008 	addiu	t5,v0,8
    33fc:	ae0d02d0 	sw	t5,720(s0)
    3400:	3c0ede00 	lui	t6,0xde00
    3404:	ac4e0000 	sw	t6,0(v0)
    3408:	ac4f0004 	sw	t7,4(v0)
    340c:	8fb80094 	lw	t8,148(sp)
    3410:	3c060000 	lui	a2,0x0
    3414:	24c60000 	addiu	a2,a2,0
    3418:	27a40038 	addiu	a0,sp,56
    341c:	24070a9b 	li	a3,2715
    3420:	0c000000 	jal	0 <EnDekubaba_Init>
    3424:	8f050000 	lw	a1,0(t8)
    3428:	8fbf0024 	lw	ra,36(sp)
    342c:	8fb0001c 	lw	s0,28(sp)
    3430:	8fb10020 	lw	s1,32(sp)
    3434:	03e00008 	jr	ra
    3438:	27bd0090 	addiu	sp,sp,144

0000343c <func_809E8C0C>:
    343c:	27bdffe8 	addiu	sp,sp,-24
    3440:	afa40018 	sw	a0,24(sp)
    3444:	24010001 	li	at,1
    3448:	00a02025 	move	a0,a1
    344c:	afbf0014 	sw	ra,20(sp)
    3450:	afa60020 	sw	a2,32(sp)
    3454:	14a10004 	bne	a1,at,3468 <func_809E8C0C+0x2c>
    3458:	afa70024 	sw	a3,36(sp)
    345c:	8fa50028 	lw	a1,40(sp)
    3460:	0c000000 	jal	0 <EnDekubaba_Init>
    3464:	24a50238 	addiu	a1,a1,568
    3468:	8fbf0014 	lw	ra,20(sp)
    346c:	27bd0018 	addiu	sp,sp,24
    3470:	03e00008 	jr	ra
    3474:	00000000 	nop

00003478 <EnDekubaba_Draw>:
    3478:	27bdffa8 	addiu	sp,sp,-88
    347c:	afb10020 	sw	s1,32(sp)
    3480:	00a08825 	move	s1,a1
    3484:	afbf0024 	sw	ra,36(sp)
    3488:	afb0001c 	sw	s0,28(sp)
    348c:	8ca50000 	lw	a1,0(a1)
    3490:	00808025 	move	s0,a0
    3494:	3c060000 	lui	a2,0x0
    3498:	24c60000 	addiu	a2,a2,0
    349c:	27a4003c 	addiu	a0,sp,60
    34a0:	24070ac0 	li	a3,2752
    34a4:	0c000000 	jal	0 <EnDekubaba_Init>
    34a8:	afa5004c 	sw	a1,76(sp)
    34ac:	0c000000 	jal	0 <EnDekubaba_Init>
    34b0:	8e240000 	lw	a0,0(s1)
    34b4:	8e0f01c0 	lw	t7,448(s0)
    34b8:	3c0e0000 	lui	t6,0x0
    34bc:	25ce0000 	addiu	t6,t6,0
    34c0:	11cf0055 	beq	t6,t7,3618 <EnDekubaba_Draw+0x1a0>
    34c4:	02202025 	move	a0,s1
    34c8:	3c180000 	lui	t8,0x0
    34cc:	27180000 	addiu	t8,t8,0
    34d0:	8e050180 	lw	a1,384(s0)
    34d4:	8e06019c 	lw	a2,412(s0)
    34d8:	afb00014 	sw	s0,20(sp)
    34dc:	afb80010 	sw	t8,16(sp)
    34e0:	0c000000 	jal	0 <EnDekubaba_Init>
    34e4:	00003825 	move	a3,zero
    34e8:	8e0801c0 	lw	t0,448(s0)
    34ec:	3c190000 	lui	t9,0x0
    34f0:	27390000 	addiu	t9,t9,0
    34f4:	17280006 	bne	t9,t0,3510 <EnDekubaba_Draw+0x98>
    34f8:	02002025 	move	a0,s0
    34fc:	02002025 	move	a0,s0
    3500:	0c000000 	jal	0 <EnDekubaba_Init>
    3504:	02202825 	move	a1,s1
    3508:	10000003 	b	3518 <EnDekubaba_Draw+0xa0>
    350c:	00000000 	nop
    3510:	0c000000 	jal	0 <EnDekubaba_Init>
    3514:	02202825 	move	a1,s1
    3518:	3c010000 	lui	at,0x0
    351c:	c4260000 	lwc1	$f6,0(at)
    3520:	c6040230 	lwc1	$f4,560(s0)
    3524:	00003825 	move	a3,zero
    3528:	46062202 	mul.s	$f8,$f4,$f6
    352c:	e7a80050 	swc1	$f8,80(sp)
    3530:	8e060010 	lw	a2,16(s0)
    3534:	c60e000c 	lwc1	$f14,12(s0)
    3538:	0c000000 	jal	0 <EnDekubaba_Init>
    353c:	c60c0008 	lwc1	$f12,8(s0)
    3540:	86090016 	lh	t1,22(s0)
    3544:	3c010000 	lui	at,0x0
    3548:	c4320000 	lwc1	$f18,0(at)
    354c:	44895000 	mtc1	t1,$f10
    3550:	24050001 	li	a1,1
    3554:	46805420 	cvt.s.w	$f16,$f10
    3558:	46128302 	mul.s	$f12,$f16,$f18
    355c:	0c000000 	jal	0 <EnDekubaba_Init>
    3560:	00000000 	nop
    3564:	c7ac0050 	lwc1	$f12,80(sp)
    3568:	24070001 	li	a3,1
    356c:	44066000 	mfc1	a2,$f12
    3570:	0c000000 	jal	0 <EnDekubaba_Init>
    3574:	46006386 	mov.s	$f14,$f12
    3578:	8fa7004c 	lw	a3,76(sp)
    357c:	3c0bda38 	lui	t3,0xda38
    3580:	356b0003 	ori	t3,t3,0x3
    3584:	8ce202c0 	lw	v0,704(a3)
    3588:	3c050000 	lui	a1,0x0
    358c:	24a50000 	addiu	a1,a1,0
    3590:	244a0008 	addiu	t2,v0,8
    3594:	acea02c0 	sw	t2,704(a3)
    3598:	ac4b0000 	sw	t3,0(v0)
    359c:	8e240000 	lw	a0,0(s1)
    35a0:	24060adc 	li	a2,2780
    35a4:	0c000000 	jal	0 <EnDekubaba_Init>
    35a8:	afa20038 	sw	v0,56(sp)
    35ac:	8fa30038 	lw	v1,56(sp)
    35b0:	3c0e0600 	lui	t6,0x600
    35b4:	25ce10f0 	addiu	t6,t6,4336
    35b8:	ac620004 	sw	v0,4(v1)
    35bc:	8fa4004c 	lw	a0,76(sp)
    35c0:	3c0dde00 	lui	t5,0xde00
    35c4:	3c0f0000 	lui	t7,0x0
    35c8:	8c8202c0 	lw	v0,704(a0)
    35cc:	25ef0000 	addiu	t7,t7,0
    35d0:	244c0008 	addiu	t4,v0,8
    35d4:	ac8c02c0 	sw	t4,704(a0)
    35d8:	ac4e0004 	sw	t6,4(v0)
    35dc:	ac4d0000 	sw	t5,0(v0)
    35e0:	8e1801c0 	lw	t8,448(s0)
    35e4:	02002025 	move	a0,s0
    35e8:	55f80004 	bnel	t7,t8,35fc <EnDekubaba_Draw+0x184>
    35ec:	8e190234 	lw	t9,564(s0)
    35f0:	0c000000 	jal	0 <EnDekubaba_Init>
    35f4:	02202825 	move	a1,s1
    35f8:	8e190234 	lw	t9,564(s0)
    35fc:	02002025 	move	a0,s0
    3600:	13200027 	beqz	t9,36a0 <EnDekubaba_Draw+0x228>
    3604:	00000000 	nop
    3608:	0c000000 	jal	0 <EnDekubaba_Init>
    360c:	02202825 	move	a1,s1
    3610:	10000023 	b	36a0 <EnDekubaba_Draw+0x228>
    3614:	00000000 	nop
    3618:	860201c6 	lh	v0,454(s0)
    361c:	3c064348 	lui	a2,0x4348
    3620:	28410029 	slti	at,v0,41
    3624:	10200003 	beqz	at,3634 <EnDekubaba_Draw+0x1bc>
    3628:	30480001 	andi	t0,v0,0x1
    362c:	1100001c 	beqz	t0,36a0 <EnDekubaba_Draw+0x228>
    3630:	00000000 	nop
    3634:	44806000 	mtc1	zero,$f12
    3638:	24070001 	li	a3,1
    363c:	0c000000 	jal	0 <EnDekubaba_Init>
    3640:	46006386 	mov.s	$f14,$f12
    3644:	8fa3004c 	lw	v1,76(sp)
    3648:	3c0ada38 	lui	t2,0xda38
    364c:	354a0003 	ori	t2,t2,0x3
    3650:	8c6202c0 	lw	v0,704(v1)
    3654:	3c050000 	lui	a1,0x0
    3658:	24a50000 	addiu	a1,a1,0
    365c:	24490008 	addiu	t1,v0,8
    3660:	ac6902c0 	sw	t1,704(v1)
    3664:	ac4a0000 	sw	t2,0(v0)
    3668:	8e240000 	lw	a0,0(s1)
    366c:	24060aed 	li	a2,2797
    3670:	0c000000 	jal	0 <EnDekubaba_Init>
    3674:	00408025 	move	s0,v0
    3678:	ae020004 	sw	v0,4(s0)
    367c:	8fab004c 	lw	t3,76(sp)
    3680:	3c0e0600 	lui	t6,0x600
    3684:	25ce3070 	addiu	t6,t6,12400
    3688:	8d6202c0 	lw	v0,704(t3)
    368c:	3c0dde00 	lui	t5,0xde00
    3690:	244c0008 	addiu	t4,v0,8
    3694:	ad6c02c0 	sw	t4,704(t3)
    3698:	ac4e0004 	sw	t6,4(v0)
    369c:	ac4d0000 	sw	t5,0(v0)
    36a0:	3c060000 	lui	a2,0x0
    36a4:	24c60000 	addiu	a2,a2,0
    36a8:	27a4003c 	addiu	a0,sp,60
    36ac:	8e250000 	lw	a1,0(s1)
    36b0:	0c000000 	jal	0 <EnDekubaba_Init>
    36b4:	24070af4 	li	a3,2804
    36b8:	8fbf0024 	lw	ra,36(sp)
    36bc:	8fb0001c 	lw	s0,28(sp)
    36c0:	8fb10020 	lw	s1,32(sp)
    36c4:	03e00008 	jr	ra
    36c8:	27bd0058 	addiu	sp,sp,88
    36cc:	00000000 	nop
