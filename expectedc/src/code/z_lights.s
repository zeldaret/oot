
build/src/code/z_lights.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Lights_PointSetInfo>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	8fae0040 	lw	t6,64(sp)
       8:	afbf001c 	sw	ra,28(sp)
       c:	afa50024 	sw	a1,36(sp)
      10:	afa60028 	sw	a2,40(sp)
      14:	afa7002c 	sw	a3,44(sp)
      18:	a08e0000 	sb	t6,0(a0)
      1c:	87af0026 	lh	t7,38(sp)
      20:	a48f0002 	sh	t7,2(a0)
      24:	87b8002a 	lh	t8,42(sp)
      28:	a4980004 	sh	t8,4(a0)
      2c:	87b9002e 	lh	t9,46(sp)
      30:	a4990006 	sh	t9,6(a0)
      34:	87a8003e 	lh	t0,62(sp)
      38:	93a7003b 	lbu	a3,59(sp)
      3c:	93a60037 	lbu	a2,55(sp)
      40:	93a50033 	lbu	a1,51(sp)
      44:	0c000000 	jal	0 <Lights_PointSetInfo>
      48:	afa80010 	sw	t0,16(sp)
      4c:	8fbf001c 	lw	ra,28(sp)
      50:	27bd0020 	addiu	sp,sp,32
      54:	03e00008 	jr	ra
      58:	00000000 	nop

0000005c <Lights_PointNoGlowSetInfo>:
      5c:	27bdffd0 	addiu	sp,sp,-48
      60:	93ae0043 	lbu	t6,67(sp)
      64:	93af0047 	lbu	t7,71(sp)
      68:	93b8004b 	lbu	t8,75(sp)
      6c:	87b9004e 	lh	t9,78(sp)
      70:	afa50034 	sw	a1,52(sp)
      74:	afa60038 	sw	a2,56(sp)
      78:	afa7003c 	sw	a3,60(sp)
      7c:	00073c00 	sll	a3,a3,0x10
      80:	00063400 	sll	a2,a2,0x10
      84:	00052c00 	sll	a1,a1,0x10
      88:	afbf002c 	sw	ra,44(sp)
      8c:	00052c03 	sra	a1,a1,0x10
      90:	00063403 	sra	a2,a2,0x10
      94:	00073c03 	sra	a3,a3,0x10
      98:	afa00020 	sw	zero,32(sp)
      9c:	afae0010 	sw	t6,16(sp)
      a0:	afaf0014 	sw	t7,20(sp)
      a4:	afb80018 	sw	t8,24(sp)
      a8:	0c000000 	jal	0 <Lights_PointSetInfo>
      ac:	afb9001c 	sw	t9,28(sp)
      b0:	8fbf002c 	lw	ra,44(sp)
      b4:	27bd0030 	addiu	sp,sp,48
      b8:	03e00008 	jr	ra
      bc:	00000000 	nop

000000c0 <Lights_PointGlowSetInfo>:
      c0:	27bdffd0 	addiu	sp,sp,-48
      c4:	93ae0043 	lbu	t6,67(sp)
      c8:	93af0047 	lbu	t7,71(sp)
      cc:	93b8004b 	lbu	t8,75(sp)
      d0:	87b9004e 	lh	t9,78(sp)
      d4:	afa50034 	sw	a1,52(sp)
      d8:	afa60038 	sw	a2,56(sp)
      dc:	afa7003c 	sw	a3,60(sp)
      e0:	00073c00 	sll	a3,a3,0x10
      e4:	00063400 	sll	a2,a2,0x10
      e8:	00052c00 	sll	a1,a1,0x10
      ec:	afbf002c 	sw	ra,44(sp)
      f0:	24080002 	li	t0,2
      f4:	00052c03 	sra	a1,a1,0x10
      f8:	00063403 	sra	a2,a2,0x10
      fc:	00073c03 	sra	a3,a3,0x10
     100:	afa80020 	sw	t0,32(sp)
     104:	afae0010 	sw	t6,16(sp)
     108:	afaf0014 	sw	t7,20(sp)
     10c:	afb80018 	sw	t8,24(sp)
     110:	0c000000 	jal	0 <Lights_PointSetInfo>
     114:	afb9001c 	sw	t9,28(sp)
     118:	8fbf002c 	lw	ra,44(sp)
     11c:	27bd0030 	addiu	sp,sp,48
     120:	03e00008 	jr	ra
     124:	00000000 	nop

00000128 <Lights_PointSetColorAndRadius>:
     128:	afa50004 	sw	a1,4(sp)
     12c:	afa60008 	sw	a2,8(sp)
     130:	afa7000c 	sw	a3,12(sp)
     134:	a0850008 	sb	a1,8(a0)
     138:	a0860009 	sb	a2,9(a0)
     13c:	a087000a 	sb	a3,10(a0)
     140:	87ae0012 	lh	t6,18(sp)
     144:	03e00008 	jr	ra
     148:	a48e000c 	sh	t6,12(a0)

0000014c <Lights_DirectionalSetInfo>:
     14c:	afa50004 	sw	a1,4(sp)
     150:	afa60008 	sw	a2,8(sp)
     154:	afa7000c 	sw	a3,12(sp)
     158:	00073e00 	sll	a3,a3,0x18
     15c:	00063600 	sll	a2,a2,0x18
     160:	00052e00 	sll	a1,a1,0x18
     164:	00052e03 	sra	a1,a1,0x18
     168:	00063603 	sra	a2,a2,0x18
     16c:	00073e03 	sra	a3,a3,0x18
     170:	240e0001 	li	t6,1
     174:	a08e0000 	sb	t6,0(a0)
     178:	a0850002 	sb	a1,2(a0)
     17c:	a0860003 	sb	a2,3(a0)
     180:	a0870004 	sb	a3,4(a0)
     184:	93af0013 	lbu	t7,19(sp)
     188:	a08f0005 	sb	t7,5(a0)
     18c:	93b80017 	lbu	t8,23(sp)
     190:	a0980006 	sb	t8,6(a0)
     194:	93b9001b 	lbu	t9,27(sp)
     198:	03e00008 	jr	ra
     19c:	a0990007 	sb	t9,7(a0)

000001a0 <Lights_Reset>:
     1a0:	afa50004 	sw	a1,4(sp)
     1a4:	afa60008 	sw	a2,8(sp)
     1a8:	afa7000c 	sw	a3,12(sp)
     1ac:	a0850008 	sb	a1,8(a0)
     1b0:	a085000c 	sb	a1,12(a0)
     1b4:	a0860009 	sb	a2,9(a0)
     1b8:	a086000d 	sb	a2,13(a0)
     1bc:	a087000a 	sb	a3,10(a0)
     1c0:	a087000e 	sb	a3,14(a0)
     1c4:	03e00008 	jr	ra
     1c8:	a0800000 	sb	zero,0(a0)

000001cc <Lights_Draw>:
     1cc:	27bdff98 	addiu	sp,sp,-104
     1d0:	afb10018 	sw	s1,24(sp)
     1d4:	00808825 	move	s1,a0
     1d8:	afbf001c 	sw	ra,28(sp)
     1dc:	afb00014 	sw	s0,20(sp)
     1e0:	3c060000 	lui	a2,0x0
     1e4:	00a08025 	move	s0,a1
     1e8:	24c60000 	addiu	a2,a2,0
     1ec:	27a4004c 	addiu	a0,sp,76
     1f0:	0c000000 	jal	0 <Lights_PointSetInfo>
     1f4:	24070153 	li	a3,339
     1f8:	8e0302c0 	lw	v1,704(s0)
     1fc:	3c04db02 	lui	a0,0xdb02
     200:	24050018 	li	a1,24
     204:	246e0008 	addiu	t6,v1,8
     208:	ae0e02c0 	sw	t6,704(s0)
     20c:	ac640000 	sw	a0,0(v1)
     210:	922f0000 	lbu	t7,0(s1)
     214:	00003825 	move	a3,zero
     218:	3c08dc08 	lui	t0,0xdc08
     21c:	01e50019 	multu	t7,a1
     220:	0000c012 	mflo	t8
     224:	ac780004 	sw	t8,4(v1)
     228:	8e0302d0 	lw	v1,720(s0)
     22c:	24790008 	addiu	t9,v1,8
     230:	ae1902d0 	sw	t9,720(s0)
     234:	ac640000 	sw	a0,0(v1)
     238:	92290000 	lbu	t1,0(s1)
     23c:	26240010 	addiu	a0,s1,16
     240:	01250019 	multu	t1,a1
     244:	24050018 	li	a1,24
     248:	00005012 	mflo	t2
     24c:	ac6a0004 	sw	t2,4(v1)
     250:	922b0000 	lbu	t3,0(s1)
     254:	5960001c 	blezl	t3,2c8 <Lights_Draw+0xfc>
     258:	00072880 	sll	a1,a3,0x2
     25c:	8e0302c0 	lw	v1,704(s0)
     260:	24a50018 	addiu	a1,a1,24
     264:	24e70001 	addiu	a3,a3,1
     268:	246c0008 	addiu	t4,v1,8
     26c:	ae0c02c0 	sw	t4,704(s0)
     270:	00601025 	move	v0,v1
     274:	04a10003 	bgez	a1,284 <Lights_Draw+0xb8>
     278:	000568c3 	sra	t5,a1,0x3
     27c:	24a10007 	addiu	at,a1,7
     280:	000168c3 	sra	t5,at,0x3
     284:	31ae00ff 	andi	t6,t5,0xff
     288:	000e7a00 	sll	t7,t6,0x8
     28c:	01e83025 	or	a2,t7,t0
     290:	34c6000a 	ori	a2,a2,0xa
     294:	ac460000 	sw	a2,0(v0)
     298:	ac440004 	sw	a0,4(v0)
     29c:	8e0302d0 	lw	v1,720(s0)
     2a0:	24780008 	addiu	t8,v1,8
     2a4:	ae1802d0 	sw	t8,720(s0)
     2a8:	ac640004 	sw	a0,4(v1)
     2ac:	ac660000 	sw	a2,0(v1)
     2b0:	92390000 	lbu	t9,0(s1)
     2b4:	24840010 	addiu	a0,a0,16
     2b8:	00f9082a 	slt	at,a3,t9
     2bc:	5420ffe8 	bnezl	at,260 <Lights_Draw+0x94>
     2c0:	8e0302c0 	lw	v1,704(s0)
     2c4:	00072880 	sll	a1,a3,0x2
     2c8:	00a72823 	subu	a1,a1,a3
     2cc:	000528c0 	sll	a1,a1,0x3
     2d0:	8e0302c0 	lw	v1,704(s0)
     2d4:	24a50030 	addiu	a1,a1,48
     2d8:	3c08dc08 	lui	t0,0xdc08
     2dc:	24690008 	addiu	t1,v1,8
     2e0:	ae0902c0 	sw	t1,704(s0)
     2e4:	00601025 	move	v0,v1
     2e8:	04a10003 	bgez	a1,2f8 <Lights_Draw+0x12c>
     2ec:	000550c3 	sra	t2,a1,0x3
     2f0:	24a10007 	addiu	at,a1,7
     2f4:	000150c3 	sra	t2,at,0x3
     2f8:	314b00ff 	andi	t3,t2,0xff
     2fc:	000b6200 	sll	t4,t3,0x8
     300:	01883025 	or	a2,t4,t0
     304:	34c6000a 	ori	a2,a2,0xa
     308:	26240008 	addiu	a0,s1,8
     30c:	ac440004 	sw	a0,4(v0)
     310:	ac460000 	sw	a2,0(v0)
     314:	8e0302d0 	lw	v1,720(s0)
     318:	02002825 	move	a1,s0
     31c:	24070160 	li	a3,352
     320:	246d0008 	addiu	t5,v1,8
     324:	ae0d02d0 	sw	t5,720(s0)
     328:	ac660000 	sw	a2,0(v1)
     32c:	3c060000 	lui	a2,0x0
     330:	ac640004 	sw	a0,4(v1)
     334:	27a4004c 	addiu	a0,sp,76
     338:	0c000000 	jal	0 <Lights_PointSetInfo>
     33c:	24c60010 	addiu	a2,a2,16
     340:	8fbf001c 	lw	ra,28(sp)
     344:	8fb00014 	lw	s0,20(sp)
     348:	8fb10018 	lw	s1,24(sp)
     34c:	03e00008 	jr	ra
     350:	27bd0068 	addiu	sp,sp,104

00000354 <Lights_FindSlot>:
     354:	90830000 	lbu	v1,0(a0)
     358:	28610007 	slti	at,v1,7
     35c:	14200003 	bnez	at,36c <Lights_FindSlot+0x18>
     360:	00037100 	sll	t6,v1,0x4
     364:	03e00008 	jr	ra
     368:	00001025 	move	v0,zero
     36c:	008e2821 	addu	a1,a0,t6
     370:	246f0001 	addiu	t7,v1,1
     374:	a08f0000 	sb	t7,0(a0)
     378:	24a20010 	addiu	v0,a1,16
     37c:	03e00008 	jr	ra
     380:	00000000 	nop

00000384 <Lights_BindPoint>:
     384:	27bdffc8 	addiu	sp,sp,-56
     388:	10c000d0 	beqz	a2,6cc <Lights_BindPoint+0x348>
     38c:	afbf0014 	sw	ra,20(sp)
     390:	84ae0000 	lh	t6,0(a1)
     394:	84af0002 	lh	t7,2(a1)
     398:	c4c80000 	lwc1	$f8,0(a2)
     39c:	448e2000 	mtc1	t6,$f4
     3a0:	448f5000 	mtc1	t7,$f10
     3a4:	84b80004 	lh	t8,4(a1)
     3a8:	468021a0 	cvt.s.w	$f6,$f4
     3ac:	84b9000a 	lh	t9,10(a1)
     3b0:	46805120 	cvt.s.w	$f4,$f10
     3b4:	46083381 	sub.s	$f14,$f6,$f8
     3b8:	44984000 	mtc1	t8,$f8
     3bc:	c4c60004 	lwc1	$f6,4(a2)
     3c0:	468042a0 	cvt.s.w	$f10,$f8
     3c4:	460e7202 	mul.s	$f8,$f14,$f14
     3c8:	46062401 	sub.s	$f16,$f4,$f6
     3cc:	c4c40008 	lwc1	$f4,8(a2)
     3d0:	44993000 	mtc1	t9,$f6
     3d4:	46045481 	sub.s	$f18,$f10,$f4
     3d8:	46108282 	mul.s	$f10,$f16,$f16
     3dc:	468030a0 	cvt.s.w	$f2,$f6
     3e0:	46129182 	mul.s	$f6,$f18,$f18
     3e4:	460a4100 	add.s	$f4,$f8,$f10
     3e8:	46021202 	mul.s	$f8,$f2,$f2
     3ec:	46062300 	add.s	$f12,$f4,$f6
     3f0:	4608603c 	c.lt.s	$f12,$f8
     3f4:	00000000 	nop
     3f8:	450200b5 	bc1fl	6d0 <Lights_BindPoint+0x34c>
     3fc:	8fbf0014 	lw	ra,20(sp)
     400:	afa5003c 	sw	a1,60(sp)
     404:	e7a20024 	swc1	$f2,36(sp)
     408:	e7ac0018 	swc1	$f12,24(sp)
     40c:	e7ae0034 	swc1	$f14,52(sp)
     410:	e7b00030 	swc1	$f16,48(sp)
     414:	0c000000 	jal	0 <Lights_PointSetInfo>
     418:	e7b2002c 	swc1	$f18,44(sp)
     41c:	8fa5003c 	lw	a1,60(sp)
     420:	c7a20024 	lwc1	$f2,36(sp)
     424:	c7ac0018 	lwc1	$f12,24(sp)
     428:	c7ae0034 	lwc1	$f14,52(sp)
     42c:	c7b00030 	lwc1	$f16,48(sp)
     430:	104000a6 	beqz	v0,6cc <Lights_BindPoint+0x348>
     434:	c7b2002c 	lwc1	$f18,44(sp)
     438:	46006004 	sqrt.s	$f0,$f12
     43c:	90a80006 	lbu	t0,6(a1)
     440:	3c013f80 	lui	at,0x3f80
     444:	44815000 	mtc1	at,$f10
     448:	44883000 	mtc1	t0,$f6
     44c:	3c014f80 	lui	at,0x4f80
     450:	46803220 	cvt.s.w	$f8,$f6
     454:	46020083 	div.s	$f2,$f0,$f2
     458:	46021102 	mul.s	$f4,$f2,$f2
     45c:	05010004 	bgez	t0,470 <Lights_BindPoint+0xec>
     460:	46045081 	sub.s	$f2,$f10,$f4
     464:	44815000 	mtc1	at,$f10
     468:	00000000 	nop
     46c:	460a4200 	add.s	$f8,$f8,$f10
     470:	46024102 	mul.s	$f4,$f8,$f2
     474:	24030001 	li	v1,1
     478:	3c014f00 	lui	at,0x4f00
     47c:	4449f800 	cfc1	t1,$31
     480:	44c3f800 	ctc1	v1,$31
     484:	00000000 	nop
     488:	460021a4 	cvt.w.s	$f6,$f4
     48c:	4443f800 	cfc1	v1,$31
     490:	00000000 	nop
     494:	30630078 	andi	v1,v1,0x78
     498:	50600013 	beqzl	v1,4e8 <Lights_BindPoint+0x164>
     49c:	44033000 	mfc1	v1,$f6
     4a0:	44813000 	mtc1	at,$f6
     4a4:	24030001 	li	v1,1
     4a8:	46062181 	sub.s	$f6,$f4,$f6
     4ac:	44c3f800 	ctc1	v1,$31
     4b0:	00000000 	nop
     4b4:	460031a4 	cvt.w.s	$f6,$f6
     4b8:	4443f800 	cfc1	v1,$31
     4bc:	00000000 	nop
     4c0:	30630078 	andi	v1,v1,0x78
     4c4:	14600005 	bnez	v1,4dc <Lights_BindPoint+0x158>
     4c8:	00000000 	nop
     4cc:	44033000 	mfc1	v1,$f6
     4d0:	3c018000 	lui	at,0x8000
     4d4:	10000007 	b	4f4 <Lights_BindPoint+0x170>
     4d8:	00611825 	or	v1,v1,at
     4dc:	10000005 	b	4f4 <Lights_BindPoint+0x170>
     4e0:	2403ffff 	li	v1,-1
     4e4:	44033000 	mfc1	v1,$f6
     4e8:	00000000 	nop
     4ec:	0460fffb 	bltz	v1,4dc <Lights_BindPoint+0x158>
     4f0:	00000000 	nop
     4f4:	a0430004 	sb	v1,4(v0)
     4f8:	a0430000 	sb	v1,0(v0)
     4fc:	90aa0007 	lbu	t2,7(a1)
     500:	44c9f800 	ctc1	t1,$31
     504:	3c014f80 	lui	at,0x4f80
     508:	448a5000 	mtc1	t2,$f10
     50c:	05410004 	bgez	t2,520 <Lights_BindPoint+0x19c>
     510:	46805220 	cvt.s.w	$f8,$f10
     514:	44812000 	mtc1	at,$f4
     518:	00000000 	nop
     51c:	46044200 	add.s	$f8,$f8,$f4
     520:	46024182 	mul.s	$f6,$f8,$f2
     524:	24030001 	li	v1,1
     528:	3c014f00 	lui	at,0x4f00
     52c:	444bf800 	cfc1	t3,$31
     530:	44c3f800 	ctc1	v1,$31
     534:	00000000 	nop
     538:	460032a4 	cvt.w.s	$f10,$f6
     53c:	4443f800 	cfc1	v1,$31
     540:	00000000 	nop
     544:	30630078 	andi	v1,v1,0x78
     548:	50600013 	beqzl	v1,598 <Lights_BindPoint+0x214>
     54c:	44035000 	mfc1	v1,$f10
     550:	44815000 	mtc1	at,$f10
     554:	24030001 	li	v1,1
     558:	460a3281 	sub.s	$f10,$f6,$f10
     55c:	44c3f800 	ctc1	v1,$31
     560:	00000000 	nop
     564:	460052a4 	cvt.w.s	$f10,$f10
     568:	4443f800 	cfc1	v1,$31
     56c:	00000000 	nop
     570:	30630078 	andi	v1,v1,0x78
     574:	14600005 	bnez	v1,58c <Lights_BindPoint+0x208>
     578:	00000000 	nop
     57c:	44035000 	mfc1	v1,$f10
     580:	3c018000 	lui	at,0x8000
     584:	10000007 	b	5a4 <Lights_BindPoint+0x220>
     588:	00611825 	or	v1,v1,at
     58c:	10000005 	b	5a4 <Lights_BindPoint+0x220>
     590:	2403ffff 	li	v1,-1
     594:	44035000 	mfc1	v1,$f10
     598:	00000000 	nop
     59c:	0460fffb 	bltz	v1,58c <Lights_BindPoint+0x208>
     5a0:	00000000 	nop
     5a4:	a0430005 	sb	v1,5(v0)
     5a8:	a0430001 	sb	v1,1(v0)
     5ac:	90ac0008 	lbu	t4,8(a1)
     5b0:	44cbf800 	ctc1	t3,$31
     5b4:	3c014f80 	lui	at,0x4f80
     5b8:	448c2000 	mtc1	t4,$f4
     5bc:	05810004 	bgez	t4,5d0 <Lights_BindPoint+0x24c>
     5c0:	46802220 	cvt.s.w	$f8,$f4
     5c4:	44813000 	mtc1	at,$f6
     5c8:	00000000 	nop
     5cc:	46064200 	add.s	$f8,$f8,$f6
     5d0:	46024282 	mul.s	$f10,$f8,$f2
     5d4:	24030001 	li	v1,1
     5d8:	3c014f00 	lui	at,0x4f00
     5dc:	444df800 	cfc1	t5,$31
     5e0:	44c3f800 	ctc1	v1,$31
     5e4:	00000000 	nop
     5e8:	46005124 	cvt.w.s	$f4,$f10
     5ec:	4443f800 	cfc1	v1,$31
     5f0:	00000000 	nop
     5f4:	30630078 	andi	v1,v1,0x78
     5f8:	50600013 	beqzl	v1,648 <Lights_BindPoint+0x2c4>
     5fc:	44032000 	mfc1	v1,$f4
     600:	44812000 	mtc1	at,$f4
     604:	24030001 	li	v1,1
     608:	46045101 	sub.s	$f4,$f10,$f4
     60c:	44c3f800 	ctc1	v1,$31
     610:	00000000 	nop
     614:	46002124 	cvt.w.s	$f4,$f4
     618:	4443f800 	cfc1	v1,$31
     61c:	00000000 	nop
     620:	30630078 	andi	v1,v1,0x78
     624:	14600005 	bnez	v1,63c <Lights_BindPoint+0x2b8>
     628:	00000000 	nop
     62c:	44032000 	mfc1	v1,$f4
     630:	3c018000 	lui	at,0x8000
     634:	10000007 	b	654 <Lights_BindPoint+0x2d0>
     638:	00611825 	or	v1,v1,at
     63c:	10000005 	b	654 <Lights_BindPoint+0x2d0>
     640:	2403ffff 	li	v1,-1
     644:	44032000 	mfc1	v1,$f4
     648:	00000000 	nop
     64c:	0460fffb 	bltz	v1,63c <Lights_BindPoint+0x2b8>
     650:	00000000 	nop
     654:	3c013f80 	lui	at,0x3f80
     658:	44cdf800 	ctc1	t5,$31
     65c:	44813000 	mtc1	at,$f6
     660:	a0430006 	sb	v1,6(v0)
     664:	a0430002 	sb	v1,2(v0)
     668:	4606003c 	c.lt.s	$f0,$f6
     66c:	3c0142f0 	lui	at,0x42f0
     670:	45020006 	bc1fl	68c <Lights_BindPoint+0x308>
     674:	44814000 	mtc1	at,$f8
     678:	3c0142f0 	lui	at,0x42f0
     67c:	44811000 	mtc1	at,$f2
     680:	10000004 	b	694 <Lights_BindPoint+0x310>
     684:	00000000 	nop
     688:	44814000 	mtc1	at,$f8
     68c:	00000000 	nop
     690:	46004083 	div.s	$f2,$f8,$f0
     694:	46027282 	mul.s	$f10,$f14,$f2
     698:	4600510d 	trunc.w.s	$f4,$f10
     69c:	46028182 	mul.s	$f6,$f16,$f2
     6a0:	00000000 	nop
     6a4:	46029282 	mul.s	$f10,$f18,$f2
     6a8:	440f2000 	mfc1	t7,$f4
     6ac:	00000000 	nop
     6b0:	a04f0008 	sb	t7,8(v0)
     6b4:	4600320d 	trunc.w.s	$f8,$f6
     6b8:	4600510d 	trunc.w.s	$f4,$f10
     6bc:	44194000 	mfc1	t9,$f8
     6c0:	44092000 	mfc1	t1,$f4
     6c4:	a0590009 	sb	t9,9(v0)
     6c8:	a049000a 	sb	t1,10(v0)
     6cc:	8fbf0014 	lw	ra,20(sp)
     6d0:	27bd0038 	addiu	sp,sp,56
     6d4:	03e00008 	jr	ra
     6d8:	00000000 	nop

000006dc <Lights_BindDirectional>:
     6dc:	27bdffe8 	addiu	sp,sp,-24
     6e0:	afbf0014 	sw	ra,20(sp)
     6e4:	afa60020 	sw	a2,32(sp)
     6e8:	0c000000 	jal	0 <Lights_PointSetInfo>
     6ec:	afa5001c 	sw	a1,28(sp)
     6f0:	10400010 	beqz	v0,734 <Lights_BindDirectional+0x58>
     6f4:	8fa5001c 	lw	a1,28(sp)
     6f8:	90a30003 	lbu	v1,3(a1)
     6fc:	a0430004 	sb	v1,4(v0)
     700:	a0430000 	sb	v1,0(v0)
     704:	90a30004 	lbu	v1,4(a1)
     708:	a0430005 	sb	v1,5(v0)
     70c:	a0430001 	sb	v1,1(v0)
     710:	90a30005 	lbu	v1,5(a1)
     714:	a0430006 	sb	v1,6(v0)
     718:	a0430002 	sb	v1,2(v0)
     71c:	80ae0000 	lb	t6,0(a1)
     720:	a04e0008 	sb	t6,8(v0)
     724:	80af0001 	lb	t7,1(a1)
     728:	a04f0009 	sb	t7,9(v0)
     72c:	80b80002 	lb	t8,2(a1)
     730:	a058000a 	sb	t8,10(v0)
     734:	8fbf0014 	lw	ra,20(sp)
     738:	27bd0018 	addiu	sp,sp,24
     73c:	03e00008 	jr	ra
     740:	00000000 	nop

00000744 <Lights_BindAll>:
     744:	27bdffc8 	addiu	sp,sp,-56
     748:	3c0e0000 	lui	t6,0x0
     74c:	afbf0024 	sw	ra,36(sp)
     750:	afb30020 	sw	s3,32(sp)
     754:	afb2001c 	sw	s2,28(sp)
     758:	afb10018 	sw	s1,24(sp)
     75c:	afb00014 	sw	s0,20(sp)
     760:	25ce0000 	addiu	t6,t6,0
     764:	8dd80000 	lw	t8,0(t6)
     768:	27b3002c 	addiu	s3,sp,44
     76c:	00a08025 	move	s0,a1
     770:	ae780000 	sw	t8,0(s3)
     774:	8dcf0004 	lw	t7,4(t6)
     778:	00808825 	move	s1,a0
     77c:	00c09025 	move	s2,a2
     780:	ae6f0004 	sw	t7,4(s3)
     784:	8dd80008 	lw	t8,8(t6)
     788:	10a0000e 	beqz	a1,7c4 <Lights_BindAll+0x80>
     78c:	ae780008 	sw	t8,8(s3)
     790:	8e020000 	lw	v0,0(s0)
     794:	02202025 	move	a0,s1
     798:	02403025 	move	a2,s2
     79c:	90590000 	lbu	t9,0(v0)
     7a0:	24450002 	addiu	a1,v0,2
     7a4:	00194080 	sll	t0,t9,0x2
     7a8:	02684821 	addu	t1,s3,t0
     7ac:	8d390000 	lw	t9,0(t1)
     7b0:	0320f809 	jalr	t9
     7b4:	00000000 	nop
     7b8:	8e100008 	lw	s0,8(s0)
     7bc:	5600fff5 	bnezl	s0,794 <Lights_BindAll+0x50>
     7c0:	8e020000 	lw	v0,0(s0)
     7c4:	8fbf0024 	lw	ra,36(sp)
     7c8:	8fb00014 	lw	s0,20(sp)
     7cc:	8fb10018 	lw	s1,24(sp)
     7d0:	8fb2001c 	lw	s2,28(sp)
     7d4:	8fb30020 	lw	s3,32(sp)
     7d8:	03e00008 	jr	ra
     7dc:	27bd0038 	addiu	sp,sp,56

000007e0 <Lights_FindBufSlot>:
     7e0:	3c050000 	lui	a1,0x0
     7e4:	24a50000 	addiu	a1,a1,0
     7e8:	8ca30000 	lw	v1,0(a1)
     7ec:	28610020 	slti	at,v1,32
     7f0:	14200003 	bnez	at,800 <Lights_FindBufSlot+0x20>
     7f4:	246b0001 	addiu	t3,v1,1
     7f8:	03e00008 	jr	ra
     7fc:	00001025 	move	v0,zero
     800:	8cae0004 	lw	t6,4(a1)
     804:	3c020000 	lui	v0,0x0
     808:	24420008 	addiu	v0,v0,8
     80c:	000e7880 	sll	t7,t6,0x2
     810:	01ee7823 	subu	t7,t7,t6
     814:	000f7880 	sll	t7,t7,0x2
     818:	00af2021 	addu	a0,a1,t7
     81c:	8c980008 	lw	t8,8(a0)
     820:	24840008 	addiu	a0,a0,8
     824:	5300000e 	beqzl	t8,860 <Lights_FindBufSlot+0x80>
     828:	acab0000 	sw	t3,0(a1)
     82c:	8cb90004 	lw	t9,4(a1)
     830:	27280001 	addiu	t0,t9,1
     834:	29010020 	slti	at,t0,32
     838:	10200003 	beqz	at,848 <Lights_FindBufSlot+0x68>
     83c:	aca80004 	sw	t0,4(a1)
     840:	10000003 	b	850 <Lights_FindBufSlot+0x70>
     844:	2484000c 	addiu	a0,a0,12
     848:	aca00004 	sw	zero,4(a1)
     84c:	00402025 	move	a0,v0
     850:	8c8a0000 	lw	t2,0(a0)
     854:	5540fff6 	bnezl	t2,830 <Lights_FindBufSlot+0x50>
     858:	8cb90004 	lw	t9,4(a1)
     85c:	acab0000 	sw	t3,0(a1)
     860:	00801025 	move	v0,a0
     864:	03e00008 	jr	ra
     868:	00000000 	nop

0000086c <Lights_FreeNode>:
     86c:	1080001b 	beqz	a0,8dc <Lights_FreeNode+0x70>
     870:	2403000c 	li	v1,12
     874:	3c020000 	lui	v0,0x0
     878:	24420000 	addiu	v0,v0,0
     87c:	0082c023 	subu	t8,a0,v0
     880:	2719fff8 	addiu	t9,t8,-8
     884:	0323001a 	div	zero,t9,v1
     888:	00004012 	mflo	t0
     88c:	8c4e0000 	lw	t6,0(v0)
     890:	00000000 	nop
     894:	0103001b 	divu	zero,t0,v1
     898:	25cfffff 	addiu	t7,t6,-1
     89c:	ac4f0000 	sw	t7,0(v0)
     8a0:	00004812 	mflo	t1
     8a4:	ac800000 	sw	zero,0(a0)
     8a8:	ac490004 	sw	t1,4(v0)
     8ac:	14600002 	bnez	v1,8b8 <Lights_FreeNode+0x4c>
     8b0:	00000000 	nop
     8b4:	0007000d 	break	0x7
     8b8:	2401ffff 	li	at,-1
     8bc:	14610004 	bne	v1,at,8d0 <Lights_FreeNode+0x64>
     8c0:	3c018000 	lui	at,0x8000
     8c4:	17210002 	bne	t9,at,8d0 <Lights_FreeNode+0x64>
     8c8:	00000000 	nop
     8cc:	0006000d 	break	0x6
     8d0:	14600002 	bnez	v1,8dc <Lights_FreeNode+0x70>
     8d4:	00000000 	nop
     8d8:	0007000d 	break	0x7
     8dc:	03e00008 	jr	ra
     8e0:	00000000 	nop

000008e4 <LightContext_Init>:
     8e4:	27bdffe0 	addiu	sp,sp,-32
     8e8:	afbf001c 	sw	ra,28(sp)
     8ec:	0c000000 	jal	0 <Lights_PointSetInfo>
     8f0:	afa50024 	sw	a1,36(sp)
     8f4:	8fa40024 	lw	a0,36(sp)
     8f8:	24050050 	li	a1,80
     8fc:	24060050 	li	a2,80
     900:	0c000000 	jal	0 <Lights_PointSetInfo>
     904:	24070050 	li	a3,80
     908:	240e03e4 	li	t6,996
     90c:	240f3200 	li	t7,12800
     910:	afaf0014 	sw	t7,20(sp)
     914:	afae0010 	sw	t6,16(sp)
     918:	8fa40024 	lw	a0,36(sp)
     91c:	00002825 	move	a1,zero
     920:	00003025 	move	a2,zero
     924:	0c000000 	jal	0 <Lights_PointSetInfo>
     928:	00003825 	move	a3,zero
     92c:	3c040000 	lui	a0,0x0
     930:	24840000 	addiu	a0,a0,0
     934:	0c000000 	jal	0 <Lights_PointSetInfo>
     938:	24050188 	li	a1,392
     93c:	8fbf001c 	lw	ra,28(sp)
     940:	27bd0020 	addiu	sp,sp,32
     944:	03e00008 	jr	ra
     948:	00000000 	nop

0000094c <LightContext_SetAmbientColor>:
     94c:	afa50004 	sw	a1,4(sp)
     950:	afa60008 	sw	a2,8(sp)
     954:	afa7000c 	sw	a3,12(sp)
     958:	a0850004 	sb	a1,4(a0)
     95c:	a0860005 	sb	a2,5(a0)
     960:	03e00008 	jr	ra
     964:	a0870006 	sb	a3,6(a0)

00000968 <func_8007A698>:
     968:	afa50004 	sw	a1,4(sp)
     96c:	afa60008 	sw	a2,8(sp)
     970:	afa7000c 	sw	a3,12(sp)
     974:	a0850007 	sb	a1,7(a0)
     978:	a0860008 	sb	a2,8(a0)
     97c:	a0870009 	sb	a3,9(a0)
     980:	87ae0012 	lh	t6,18(sp)
     984:	a48e000a 	sh	t6,10(a0)
     988:	87af0016 	lh	t7,22(sp)
     98c:	03e00008 	jr	ra
     990:	a48f000c 	sh	t7,12(a0)

00000994 <LightContext_NewLights>:
     994:	27bdffe8 	addiu	sp,sp,-24
     998:	afa40018 	sw	a0,24(sp)
     99c:	8fae0018 	lw	t6,24(sp)
     9a0:	afbf0014 	sw	ra,20(sp)
     9a4:	afa5001c 	sw	a1,28(sp)
     9a8:	00a02025 	move	a0,a1
     9ac:	91c50004 	lbu	a1,4(t6)
     9b0:	91c70006 	lbu	a3,6(t6)
     9b4:	0c000000 	jal	0 <Lights_PointSetInfo>
     9b8:	91c60005 	lbu	a2,5(t6)
     9bc:	8fbf0014 	lw	ra,20(sp)
     9c0:	27bd0018 	addiu	sp,sp,24
     9c4:	03e00008 	jr	ra
     9c8:	00000000 	nop

000009cc <LightContext_InitList>:
     9cc:	afa40000 	sw	a0,0(sp)
     9d0:	03e00008 	jr	ra
     9d4:	aca00000 	sw	zero,0(a1)

000009d8 <LightContext_DestroyList>:
     9d8:	27bdffd8 	addiu	sp,sp,-40
     9dc:	afbf0024 	sw	ra,36(sp)
     9e0:	afb20020 	sw	s2,32(sp)
     9e4:	afb1001c 	sw	s1,28(sp)
     9e8:	afb00018 	sw	s0,24(sp)
     9ec:	8cb10000 	lw	s1,0(a1)
     9f0:	00a08025 	move	s0,a1
     9f4:	00809025 	move	s2,a0
     9f8:	12200008 	beqz	s1,a1c <LightContext_DestroyList+0x44>
     9fc:	02402025 	move	a0,s2
     a00:	02002825 	move	a1,s0
     a04:	0c000000 	jal	0 <Lights_PointSetInfo>
     a08:	02203025 	move	a2,s1
     a0c:	8e0e0000 	lw	t6,0(s0)
     a10:	8dd10008 	lw	s1,8(t6)
     a14:	1620fff9 	bnez	s1,9fc <LightContext_DestroyList+0x24>
     a18:	ae110000 	sw	s1,0(s0)
     a1c:	8fbf0024 	lw	ra,36(sp)
     a20:	8fb00018 	lw	s0,24(sp)
     a24:	8fb1001c 	lw	s1,28(sp)
     a28:	8fb20020 	lw	s2,32(sp)
     a2c:	03e00008 	jr	ra
     a30:	27bd0028 	addiu	sp,sp,40

00000a34 <LightContext_InsertLight>:
     a34:	27bdffe8 	addiu	sp,sp,-24
     a38:	afbf0014 	sw	ra,20(sp)
     a3c:	afa40018 	sw	a0,24(sp)
     a40:	afa60020 	sw	a2,32(sp)
     a44:	0c000000 	jal	0 <Lights_PointSetInfo>
     a48:	afa5001c 	sw	a1,28(sp)
     a4c:	8fa5001c 	lw	a1,28(sp)
     a50:	1040000b 	beqz	v0,a80 <LightContext_InsertLight+0x4c>
     a54:	00402025 	move	a0,v0
     a58:	8fae0020 	lw	t6,32(sp)
     a5c:	ac400004 	sw	zero,4(v0)
     a60:	ac4e0000 	sw	t6,0(v0)
     a64:	8caf0000 	lw	t7,0(a1)
     a68:	ac4f0008 	sw	t7,8(v0)
     a6c:	8ca30000 	lw	v1,0(a1)
     a70:	50600003 	beqzl	v1,a80 <LightContext_InsertLight+0x4c>
     a74:	aca20000 	sw	v0,0(a1)
     a78:	ac620004 	sw	v0,4(v1)
     a7c:	aca20000 	sw	v0,0(a1)
     a80:	8fbf0014 	lw	ra,20(sp)
     a84:	27bd0018 	addiu	sp,sp,24
     a88:	00801025 	move	v0,a0
     a8c:	03e00008 	jr	ra
     a90:	00000000 	nop

00000a94 <LightContext_RemoveLight>:
     a94:	27bdffe8 	addiu	sp,sp,-24
     a98:	afa40018 	sw	a0,24(sp)
     a9c:	00c02025 	move	a0,a2
     aa0:	10c00010 	beqz	a2,ae4 <LightContext_RemoveLight+0x50>
     aa4:	afbf0014 	sw	ra,20(sp)
     aa8:	8cc20004 	lw	v0,4(a2)
     aac:	50400005 	beqzl	v0,ac4 <LightContext_RemoveLight+0x30>
     ab0:	8c8f0008 	lw	t7,8(a0)
     ab4:	8cce0008 	lw	t6,8(a2)
     ab8:	10000003 	b	ac8 <LightContext_RemoveLight+0x34>
     abc:	ac4e0008 	sw	t6,8(v0)
     ac0:	8c8f0008 	lw	t7,8(a0)
     ac4:	acaf0000 	sw	t7,0(a1)
     ac8:	8c820008 	lw	v0,8(a0)
     acc:	10400003 	beqz	v0,adc <LightContext_RemoveLight+0x48>
     ad0:	00000000 	nop
     ad4:	8c980004 	lw	t8,4(a0)
     ad8:	ac580004 	sw	t8,4(v0)
     adc:	0c000000 	jal	0 <Lights_PointSetInfo>
     ae0:	00000000 	nop
     ae4:	8fbf0014 	lw	ra,20(sp)
     ae8:	27bd0018 	addiu	sp,sp,24
     aec:	03e00008 	jr	ra
     af0:	00000000 	nop

00000af4 <Lights_NewAndDraw>:
     af4:	27bdffe0 	addiu	sp,sp,-32
     af8:	afbf0014 	sw	ra,20(sp)
     afc:	afa50024 	sw	a1,36(sp)
     b00:	afa40020 	sw	a0,32(sp)
     b04:	afa60028 	sw	a2,40(sp)
     b08:	afa7002c 	sw	a3,44(sp)
     b0c:	0c000000 	jal	0 <Lights_PointSetInfo>
     b10:	24050080 	li	a1,128
     b14:	93af0027 	lbu	t7,39(sp)
     b18:	93a30033 	lbu	v1,51(sp)
     b1c:	afa2001c 	sw	v0,28(sp)
     b20:	a04f0008 	sb	t7,8(v0)
     b24:	a04f000c 	sb	t7,12(v0)
     b28:	93b9002b 	lbu	t9,43(sp)
     b2c:	00002025 	move	a0,zero
     b30:	00605825 	move	t3,v1
     b34:	a059000d 	sb	t9,13(v0)
     b38:	a0590009 	sb	t9,9(v0)
     b3c:	93ad002f 	lbu	t5,47(sp)
     b40:	a0430000 	sb	v1,0(v0)
     b44:	a04d000e 	sb	t5,14(v0)
     b48:	18600031 	blez	v1,c10 <Lights_NewAndDraw+0x11c>
     b4c:	a04d000a 	sb	t5,10(v0)
     b50:	30630001 	andi	v1,v1,0x1
     b54:	10600011 	beqz	v1,b9c <Lights_NewAndDraw+0xa8>
     b58:	93ae0037 	lbu	t6,55(sp)
     b5c:	93af003b 	lbu	t7,59(sp)
     b60:	93b8003f 	lbu	t8,63(sp)
     b64:	83a80043 	lb	t0,67(sp)
     b68:	83a90047 	lb	t1,71(sp)
     b6c:	83aa004b 	lb	t2,75(sp)
     b70:	24040001 	li	a0,1
     b74:	a04e0010 	sb	t6,16(v0)
     b78:	a04e0014 	sb	t6,20(v0)
     b7c:	a04f0011 	sb	t7,17(v0)
     b80:	a04f0015 	sb	t7,21(v0)
     b84:	a0580012 	sb	t8,18(v0)
     b88:	a0580016 	sb	t8,22(v0)
     b8c:	a0480018 	sb	t0,24(v0)
     b90:	a0490019 	sb	t1,25(v0)
     b94:	108b001e 	beq	a0,t3,c10 <Lights_NewAndDraw+0x11c>
     b98:	a04a001a 	sb	t2,26(v0)
     b9c:	0004c900 	sll	t9,a0,0x4
     ba0:	00591821 	addu	v1,v0,t9
     ba4:	93a50037 	lbu	a1,55(sp)
     ba8:	93a6003b 	lbu	a2,59(sp)
     bac:	93a7003f 	lbu	a3,63(sp)
     bb0:	83a80043 	lb	t0,67(sp)
     bb4:	83a90047 	lb	t1,71(sp)
     bb8:	83aa004b 	lb	t2,75(sp)
     bbc:	24840002 	addiu	a0,a0,2
     bc0:	a0650024 	sb	a1,36(v1)
     bc4:	a0650020 	sb	a1,32(v1)
     bc8:	a0660025 	sb	a2,37(v1)
     bcc:	a0660021 	sb	a2,33(v1)
     bd0:	a0670026 	sb	a3,38(v1)
     bd4:	a0670022 	sb	a3,34(v1)
     bd8:	a0680028 	sb	t0,40(v1)
     bdc:	a0690029 	sb	t1,41(v1)
     be0:	a06a002a 	sb	t2,42(v1)
     be4:	24630020 	addiu	v1,v1,32
     be8:	a065fff4 	sb	a1,-12(v1)
     bec:	a065fff0 	sb	a1,-16(v1)
     bf0:	a066fff5 	sb	a2,-11(v1)
     bf4:	a066fff1 	sb	a2,-15(v1)
     bf8:	a067fff6 	sb	a3,-10(v1)
     bfc:	a067fff2 	sb	a3,-14(v1)
     c00:	a068fff8 	sb	t0,-8(v1)
     c04:	a069fff9 	sb	t1,-7(v1)
     c08:	148bffec 	bne	a0,t3,bbc <Lights_NewAndDraw+0xc8>
     c0c:	a06afffa 	sb	t2,-6(v1)
     c10:	8fa4001c 	lw	a0,28(sp)
     c14:	0c000000 	jal	0 <Lights_PointSetInfo>
     c18:	8fa50020 	lw	a1,32(sp)
     c1c:	8fbf0014 	lw	ra,20(sp)
     c20:	8fa2001c 	lw	v0,28(sp)
     c24:	27bd0020 	addiu	sp,sp,32
     c28:	03e00008 	jr	ra
     c2c:	00000000 	nop

00000c30 <Lights_New>:
     c30:	27bdffe8 	addiu	sp,sp,-24
     c34:	afbf0014 	sw	ra,20(sp)
     c38:	afa5001c 	sw	a1,28(sp)
     c3c:	afa60020 	sw	a2,32(sp)
     c40:	afa70024 	sw	a3,36(sp)
     c44:	0c000000 	jal	0 <Lights_PointSetInfo>
     c48:	24050080 	li	a1,128
     c4c:	93af001f 	lbu	t7,31(sp)
     c50:	a04f000c 	sb	t7,12(v0)
     c54:	a04f0008 	sb	t7,8(v0)
     c58:	93b90023 	lbu	t9,35(sp)
     c5c:	a059000d 	sb	t9,13(v0)
     c60:	a0590009 	sb	t9,9(v0)
     c64:	93a90027 	lbu	t1,39(sp)
     c68:	a0400000 	sb	zero,0(v0)
     c6c:	a049000e 	sb	t1,14(v0)
     c70:	a049000a 	sb	t1,10(v0)
     c74:	8fbf0014 	lw	ra,20(sp)
     c78:	27bd0018 	addiu	sp,sp,24
     c7c:	03e00008 	jr	ra
     c80:	00000000 	nop

00000c84 <Lights_GlowCheck>:
     c84:	27bdff58 	addiu	sp,sp,-168
     c88:	afbf0064 	sw	ra,100(sp)
     c8c:	afbe0060 	sw	s8,96(sp)
     c90:	afb7005c 	sw	s7,92(sp)
     c94:	afb60058 	sw	s6,88(sp)
     c98:	afb50054 	sw	s5,84(sp)
     c9c:	afb40050 	sw	s4,80(sp)
     ca0:	afb3004c 	sw	s3,76(sp)
     ca4:	afb20048 	sw	s2,72(sp)
     ca8:	afb10044 	sw	s1,68(sp)
     cac:	afb00040 	sw	s0,64(sp)
     cb0:	f7bc0038 	sdc1	$f28,56(sp)
     cb4:	f7ba0030 	sdc1	$f26,48(sp)
     cb8:	f7b80028 	sdc1	$f24,40(sp)
     cbc:	f7b60020 	sdc1	$f22,32(sp)
     cc0:	f7b40018 	sdc1	$f20,24(sp)
     cc4:	afa400a8 	sw	a0,168(sp)
     cc8:	8c9107a8 	lw	s1,1960(a0)
     ccc:	3c170000 	lui	s7,0x0
     cd0:	241e0001 	li	s8,1
     cd4:	1220005c 	beqz	s1,e48 <Lights_GlowCheck+0x1c4>
     cd8:	3c0142f0 	lui	at,0x42f0
     cdc:	4481e000 	mtc1	at,$f28
     ce0:	3c01c2f0 	lui	at,0xc2f0
     ce4:	4481d000 	mtc1	at,$f26
     ce8:	3c010000 	lui	at,0x0
     cec:	c4380050 	lwc1	$f24,80(at)
     cf0:	3c014320 	lui	at,0x4320
     cf4:	4481b000 	mtc1	at,$f22
     cf8:	3c013f80 	lui	at,0x3f80
     cfc:	4481a000 	mtc1	at,$f20
     d00:	26f70000 	addiu	s7,s7,0
     d04:	27b60084 	addiu	s6,sp,132
     d08:	27b50088 	addiu	s5,sp,136
     d0c:	27b40094 	addiu	s4,sp,148
     d10:	24130002 	li	s3,2
     d14:	8e220000 	lw	v0,0(s1)
     d18:	904f0000 	lbu	t7,0(v0)
     d1c:	24500002 	addiu	s0,v0,2
     d20:	566f0047 	bnel	s3,t7,e40 <Lights_GlowCheck+0x1bc>
     d24:	8e310008 	lw	s1,8(s1)
     d28:	86180000 	lh	t8,0(s0)
     d2c:	8fa400a8 	lw	a0,168(sp)
     d30:	02802825 	move	a1,s4
     d34:	44982000 	mtc1	t8,$f4
     d38:	02a03025 	move	a2,s5
     d3c:	02c03825 	move	a3,s6
     d40:	468021a0 	cvt.s.w	$f6,$f4
     d44:	e7a60094 	swc1	$f6,148(sp)
     d48:	86190002 	lh	t9,2(s0)
     d4c:	44994000 	mtc1	t9,$f8
     d50:	00000000 	nop
     d54:	468042a0 	cvt.s.w	$f10,$f8
     d58:	e7aa0098 	swc1	$f10,152(sp)
     d5c:	86080004 	lh	t0,4(s0)
     d60:	44888000 	mtc1	t0,$f16
     d64:	00000000 	nop
     d68:	468084a0 	cvt.s.w	$f18,$f16
     d6c:	0c000000 	jal	0 <Lights_PointSetInfo>
     d70:	e7b2009c 	swc1	$f18,156(sp)
     d74:	a2000009 	sb	zero,9(s0)
     d78:	c7a40090 	lwc1	$f4,144(sp)
     d7c:	c7a60088 	lwc1	$f6,136(sp)
     d80:	c7ae0084 	lwc1	$f14,132(sp)
     d84:	4604a03c 	c.lt.s	$f20,$f4
     d88:	00000000 	nop
     d8c:	4502002c 	bc1fl	e40 <Lights_GlowCheck+0x1bc>
     d90:	8e310008 	lw	s1,8(s1)
     d94:	460e3082 	mul.s	$f2,$f6,$f14
     d98:	c7a8008c 	lwc1	$f8,140(sp)
     d9c:	46001005 	abs.s	$f0,$f2
     da0:	4614003c 	c.lt.s	$f0,$f20
     da4:	00000000 	nop
     da8:	45020025 	bc1fl	e40 <Lights_GlowCheck+0x1bc>
     dac:	8e310008 	lw	s1,8(s1)
     db0:	460e4302 	mul.s	$f12,$f8,$f14
     db4:	46006005 	abs.s	$f0,$f12
     db8:	4614003c 	c.lt.s	$f0,$f20
     dbc:	00000000 	nop
     dc0:	4502001f 	bc1fl	e40 <Lights_GlowCheck+0x1bc>
     dc4:	8e310008 	lw	s1,8(s1)
     dc8:	460e2282 	mul.s	$f10,$f4,$f14
     dcc:	00000000 	nop
     dd0:	46185402 	mul.s	$f16,$f10,$f24
     dd4:	00000000 	nop
     dd8:	461a6182 	mul.s	$f6,$f12,$f26
     ddc:	4600848d 	trunc.w.s	$f18,$f16
     de0:	46161282 	mul.s	$f10,$f2,$f22
     de4:	461c3200 	add.s	$f8,$f6,$f28
     de8:	44129000 	mfc1	s2,$f18
     dec:	4600410d 	trunc.w.s	$f4,$f8
     df0:	26523fe0 	addiu	s2,s2,16352
     df4:	46165400 	add.s	$f16,$f10,$f22
     df8:	440b2000 	mfc1	t3,$f4
     dfc:	4600848d 	trunc.w.s	$f18,$f16
     e00:	000b6080 	sll	t4,t3,0x2
     e04:	018b6021 	addu	t4,t4,t3
     e08:	000c61c0 	sll	t4,t4,0x7
     e0c:	440f9000 	mfc1	t7,$f18
     e10:	02ec6821 	addu	t5,s7,t4
     e14:	000fc040 	sll	t8,t7,0x1
     e18:	01b8c821 	addu	t9,t5,t8
     e1c:	97240000 	lhu	a0,0(t9)
     e20:	0c000000 	jal	0 <Lights_PointSetInfo>
     e24:	00042080 	sll	a0,a0,0x2
     e28:	000240c3 	sra	t0,v0,0x3
     e2c:	0248082a 	slt	at,s2,t0
     e30:	50200003 	beqzl	at,e40 <Lights_GlowCheck+0x1bc>
     e34:	8e310008 	lw	s1,8(s1)
     e38:	a21e0009 	sb	s8,9(s0)
     e3c:	8e310008 	lw	s1,8(s1)
     e40:	5620ffb5 	bnezl	s1,d18 <Lights_GlowCheck+0x94>
     e44:	8e220000 	lw	v0,0(s1)
     e48:	8fbf0064 	lw	ra,100(sp)
     e4c:	d7b40018 	ldc1	$f20,24(sp)
     e50:	d7b60020 	ldc1	$f22,32(sp)
     e54:	d7b80028 	ldc1	$f24,40(sp)
     e58:	d7ba0030 	ldc1	$f26,48(sp)
     e5c:	d7bc0038 	ldc1	$f28,56(sp)
     e60:	8fb00040 	lw	s0,64(sp)
     e64:	8fb10044 	lw	s1,68(sp)
     e68:	8fb20048 	lw	s2,72(sp)
     e6c:	8fb3004c 	lw	s3,76(sp)
     e70:	8fb40050 	lw	s4,80(sp)
     e74:	8fb50054 	lw	s5,84(sp)
     e78:	8fb60058 	lw	s6,88(sp)
     e7c:	8fb7005c 	lw	s7,92(sp)
     e80:	8fbe0060 	lw	s8,96(sp)
     e84:	03e00008 	jr	ra
     e88:	27bd00a8 	addiu	sp,sp,168

00000e8c <Lights_DrawGlow>:
     e8c:	27bdff50 	addiu	sp,sp,-176
     e90:	afb00028 	sw	s0,40(sp)
     e94:	afbf004c 	sw	ra,76(sp)
     e98:	afbe0048 	sw	s8,72(sp)
     e9c:	afb70044 	sw	s7,68(sp)
     ea0:	afb60040 	sw	s6,64(sp)
     ea4:	afb5003c 	sw	s5,60(sp)
     ea8:	afb40038 	sw	s4,56(sp)
     eac:	afb30034 	sw	s3,52(sp)
     eb0:	afb20030 	sw	s2,48(sp)
     eb4:	afb1002c 	sw	s1,44(sp)
     eb8:	f7b60020 	sdc1	$f22,32(sp)
     ebc:	f7b40018 	sdc1	$f20,24(sp)
     ec0:	8c850000 	lw	a1,0(a0)
     ec4:	00808025 	move	s0,a0
     ec8:	8c9307a8 	lw	s3,1960(a0)
     ecc:	3c060000 	lui	a2,0x0
     ed0:	24c60020 	addiu	a2,a2,32
     ed4:	afb000b0 	sw	s0,176(sp)
     ed8:	27a40094 	addiu	a0,sp,148
     edc:	24070377 	li	a3,887
     ee0:	0c000000 	jal	0 <Lights_PointSetInfo>
     ee4:	00a08825 	move	s1,a1
     ee8:	8e2702d0 	lw	a3,720(s1)
     eec:	24ee0008 	addiu	t6,a3,8
     ef0:	ae2e02d0 	sw	t6,720(s1)
     ef4:	0c000000 	jal	0 <Lights_PointSetInfo>
     ef8:	00e02025 	move	a0,a3
     efc:	ae2202d0 	sw	v0,720(s1)
     f00:	244f0008 	addiu	t7,v0,8
     f04:	ae2f02d0 	sw	t7,720(s1)
     f08:	3c18e300 	lui	t8,0xe300
     f0c:	37181a01 	ori	t8,t8,0x1a01
     f10:	24190020 	li	t9,32
     f14:	ac590004 	sw	t9,4(v0)
     f18:	ac580000 	sw	t8,0(v0)
     f1c:	8e2702d0 	lw	a3,720(s1)
     f20:	3c09e300 	lui	t1,0xe300
     f24:	35291801 	ori	t1,t1,0x1801
     f28:	24e80008 	addiu	t0,a3,8
     f2c:	ae2802d0 	sw	t0,720(s1)
     f30:	ace00004 	sw	zero,4(a3)
     f34:	ace90000 	sw	t1,0(a3)
     f38:	8e2702d0 	lw	a3,720(s1)
     f3c:	3c0b0000 	lui	t3,0x0
     f40:	256b0000 	addiu	t3,t3,0
     f44:	24ea0008 	addiu	t2,a3,8
     f48:	ae2a02d0 	sw	t2,720(s1)
     f4c:	3c1ede00 	lui	s8,0xde00
     f50:	acfe0000 	sw	s8,0(a3)
     f54:	1260004a 	beqz	s3,1080 <Lights_DrawGlow+0x1f4>
     f58:	aceb0004 	sw	t3,4(a3)
     f5c:	3c010000 	lui	at,0x0
     f60:	3c170000 	lui	s7,0x0
     f64:	3c16da38 	lui	s6,0xda38
     f68:	36d60003 	ori	s6,s6,0x3
     f6c:	26f70030 	addiu	s7,s7,48
     f70:	c4360054 	lwc1	$f22,84(at)
     f74:	3c15fa00 	lui	s5,0xfa00
     f78:	24140002 	li	s4,2
     f7c:	8e630000 	lw	v1,0(s3)
     f80:	906c0000 	lbu	t4,0(v1)
     f84:	24620002 	addiu	v0,v1,2
     f88:	568c003b 	bnel	s4,t4,1078 <Lights_DrawGlow+0x1ec>
     f8c:	8e730008 	lw	s3,8(s3)
     f90:	904d0009 	lbu	t5,9(v0)
     f94:	51a00038 	beqzl	t5,1078 <Lights_DrawGlow+0x1ec>
     f98:	8e730008 	lw	s3,8(s3)
     f9c:	8443000a 	lh	v1,10(v0)
     fa0:	8e2702d0 	lw	a3,720(s1)
     fa4:	3c120000 	lui	s2,0x0
     fa8:	00630019 	multu	v1,v1
     fac:	24ef0008 	addiu	t7,a3,8
     fb0:	ae2f02d0 	sw	t7,720(s1)
     fb4:	acf50000 	sw	s5,0(a3)
     fb8:	904a0006 	lbu	t2,6(v0)
     fbc:	90590008 	lbu	t9,8(v0)
     fc0:	26520000 	addiu	s2,s2,0
     fc4:	000a5e00 	sll	t3,t2,0x18
     fc8:	00194200 	sll	t0,t9,0x8
     fcc:	010b6025 	or	t4,t0,t3
     fd0:	00007012 	mflo	t6
     fd4:	448e2000 	mtc1	t6,$f4
     fd8:	904e0007 	lbu	t6,7(v0)
     fdc:	468021a0 	cvt.s.w	$f6,$f4
     fe0:	000e7c00 	sll	t7,t6,0x10
     fe4:	018fc025 	or	t8,t4,t7
     fe8:	37190032 	ori	t9,t8,0x32
     fec:	acf90004 	sw	t9,4(a3)
     ff0:	84480004 	lh	t0,4(v0)
     ff4:	844a0002 	lh	t2,2(v0)
     ff8:	84490000 	lh	t1,0(v0)
     ffc:	44888000 	mtc1	t0,$f16
    1000:	448a5000 	mtc1	t2,$f10
    1004:	44894000 	mtc1	t1,$f8
    1008:	46808420 	cvt.s.w	$f16,$f16
    100c:	46163502 	mul.s	$f20,$f6,$f22
    1010:	00003825 	move	a3,zero
    1014:	44068000 	mfc1	a2,$f16
    1018:	468053a0 	cvt.s.w	$f14,$f10
    101c:	0c000000 	jal	0 <Lights_PointSetInfo>
    1020:	46804320 	cvt.s.w	$f12,$f8
    1024:	4406a000 	mfc1	a2,$f20
    1028:	4600a306 	mov.s	$f12,$f20
    102c:	4600a386 	mov.s	$f14,$f20
    1030:	0c000000 	jal	0 <Lights_PointSetInfo>
    1034:	24070001 	li	a3,1
    1038:	8e3002d0 	lw	s0,720(s1)
    103c:	02e02825 	move	a1,s7
    1040:	24060396 	li	a2,918
    1044:	260b0008 	addiu	t3,s0,8
    1048:	ae2b02d0 	sw	t3,720(s1)
    104c:	ae160000 	sw	s6,0(s0)
    1050:	8fad00b0 	lw	t5,176(sp)
    1054:	0c000000 	jal	0 <Lights_PointSetInfo>
    1058:	8da40000 	lw	a0,0(t5)
    105c:	ae020004 	sw	v0,4(s0)
    1060:	8e2702d0 	lw	a3,720(s1)
    1064:	24ee0008 	addiu	t6,a3,8
    1068:	ae2e02d0 	sw	t6,720(s1)
    106c:	acf20004 	sw	s2,4(a3)
    1070:	acfe0000 	sw	s8,0(a3)
    1074:	8e730008 	lw	s3,8(s3)
    1078:	5660ffc1 	bnezl	s3,f80 <Lights_DrawGlow+0xf4>
    107c:	8e630000 	lw	v1,0(s3)
    1080:	8fac00b0 	lw	t4,176(sp)
    1084:	3c060000 	lui	a2,0x0
    1088:	24c60040 	addiu	a2,a2,64
    108c:	27a40094 	addiu	a0,sp,148
    1090:	2407039f 	li	a3,927
    1094:	0c000000 	jal	0 <Lights_PointSetInfo>
    1098:	8d850000 	lw	a1,0(t4)
    109c:	8fbf004c 	lw	ra,76(sp)
    10a0:	d7b40018 	ldc1	$f20,24(sp)
    10a4:	d7b60020 	ldc1	$f22,32(sp)
    10a8:	8fb00028 	lw	s0,40(sp)
    10ac:	8fb1002c 	lw	s1,44(sp)
    10b0:	8fb20030 	lw	s2,48(sp)
    10b4:	8fb30034 	lw	s3,52(sp)
    10b8:	8fb40038 	lw	s4,56(sp)
    10bc:	8fb5003c 	lw	s5,60(sp)
    10c0:	8fb60040 	lw	s6,64(sp)
    10c4:	8fb70044 	lw	s7,68(sp)
    10c8:	8fbe0048 	lw	s8,72(sp)
    10cc:	03e00008 	jr	ra
    10d0:	27bd00b0 	addiu	sp,sp,176
	...
