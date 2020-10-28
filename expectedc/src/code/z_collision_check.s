
build/src/code/z_collision_check.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8005B280>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afbf0024 	sw	ra,36(sp)
       8:	240e00ff 	li	t6,255
       c:	afae0010 	sw	t6,16(sp)
      10:	afa00014 	sw	zero,20(sp)
      14:	0c000000 	jal	0 <func_8005B280>
      18:	afa00018 	sw	zero,24(sp)
      1c:	8fbf0024 	lw	ra,36(sp)
      20:	27bd0028 	addiu	sp,sp,40
      24:	03e00008 	jr	ra
      28:	00000000 	nop

0000002c <func_8005B2AC>:
      2c:	27bdff70 	addiu	sp,sp,-144
      30:	afb00028 	sw	s0,40(sp)
      34:	afa60098 	sw	a2,152(sp)
      38:	00808025 	move	s0,a0
      3c:	afbf002c 	sw	ra,44(sp)
      40:	afa50094 	sw	a1,148(sp)
      44:	afa7009c 	sw	a3,156(sp)
      48:	3c060000 	lui	a2,0x0
      4c:	24c60000 	addiu	a2,a2,0
      50:	240702c9 	li	a3,713
      54:	02002825 	move	a1,s0
      58:	0c000000 	jal	0 <func_8005B280>
      5c:	27a40064 	addiu	a0,sp,100
      60:	8e0202c0 	lw	v0,704(s0)
      64:	3c0fda38 	lui	t7,0xda38
      68:	3c180000 	lui	t8,0x0
      6c:	244e0008 	addiu	t6,v0,8
      70:	ae0e02c0 	sw	t6,704(s0)
      74:	27180000 	addiu	t8,t8,0
      78:	35ef0003 	ori	t7,t7,0x3
      7c:	ac4f0000 	sw	t7,0(v0)
      80:	ac580004 	sw	t8,4(v0)
      84:	8e0202c0 	lw	v0,704(s0)
      88:	3c09fa00 	lui	t1,0xfa00
      8c:	352900ff 	ori	t1,t1,0xff
      90:	24590008 	addiu	t9,v0,8
      94:	ae1902c0 	sw	t9,704(s0)
      98:	ac490000 	sw	t1,0(v0)
      9c:	93ae00a7 	lbu	t6,167(sp)
      a0:	93ab00a3 	lbu	t3,163(sp)
      a4:	93a900ab 	lbu	t1,171(sp)
      a8:	000e7c00 	sll	t7,t6,0x10
      ac:	000b6600 	sll	t4,t3,0x18
      b0:	018fc025 	or	t8,t4,t7
      b4:	00095200 	sll	t2,t1,0x8
      b8:	030a5825 	or	t3,t8,t2
      bc:	356d0032 	ori	t5,t3,0x32
      c0:	ac4d0004 	sw	t5,4(v0)
      c4:	8e0202c0 	lw	v0,704(s0)
      c8:	3c04e700 	lui	a0,0xe700
      cc:	3c0fe200 	lui	t7,0xe200
      d0:	244e0008 	addiu	t6,v0,8
      d4:	ae0e02c0 	sw	t6,704(s0)
      d8:	ac400004 	sw	zero,4(v0)
      dc:	ac440000 	sw	a0,0(v0)
      e0:	8e0202c0 	lw	v0,704(s0)
      e4:	3c19c811 	lui	t9,0xc811
      e8:	37392078 	ori	t9,t9,0x2078
      ec:	244c0008 	addiu	t4,v0,8
      f0:	ae0c02c0 	sw	t4,704(s0)
      f4:	35ef001c 	ori	t7,t7,0x1c
      f8:	ac4f0000 	sw	t7,0(v0)
      fc:	ac590004 	sw	t9,4(v0)
     100:	8e0202c0 	lw	v0,704(s0)
     104:	3c18d700 	lui	t8,0xd700
     108:	3c0dfc41 	lui	t5,0xfc41
     10c:	24490008 	addiu	t1,v0,8
     110:	ae0902c0 	sw	t1,704(s0)
     114:	ac400004 	sw	zero,4(v0)
     118:	ac580000 	sw	t8,0(v0)
     11c:	8e0202c0 	lw	v0,704(s0)
     120:	35adc7ff 	ori	t5,t5,0xc7ff
     124:	240efe38 	li	t6,-456
     128:	244a0008 	addiu	t2,v0,8
     12c:	ae0a02c0 	sw	t2,704(s0)
     130:	ac400004 	sw	zero,4(v0)
     134:	ac440000 	sw	a0,0(v0)
     138:	8e0202c0 	lw	v0,704(s0)
     13c:	3c0fd9ff 	lui	t7,0xd9ff
     140:	35eff9ff 	ori	t7,t7,0xf9ff
     144:	244b0008 	addiu	t3,v0,8
     148:	ae0b02c0 	sw	t3,704(s0)
     14c:	ac4e0004 	sw	t6,4(v0)
     150:	ac4d0000 	sw	t5,0(v0)
     154:	8e0202c0 	lw	v0,704(s0)
     158:	3c09d9ff 	lui	t1,0xd9ff
     15c:	3529ffff 	ori	t1,t1,0xffff
     160:	244c0008 	addiu	t4,v0,8
     164:	ae0c02c0 	sw	t4,704(s0)
     168:	ac400004 	sw	zero,4(v0)
     16c:	ac4f0000 	sw	t7,0(v0)
     170:	8e0202c0 	lw	v0,704(s0)
     174:	3c180002 	lui	t8,0x2
     178:	24050030 	li	a1,48
     17c:	24590008 	addiu	t9,v0,8
     180:	ae1902c0 	sw	t9,704(s0)
     184:	ac580004 	sw	t8,4(v0)
     188:	ac490000 	sw	t1,0(v0)
     18c:	8e0202c0 	lw	v0,704(s0)
     190:	244a0008 	addiu	t2,v0,8
     194:	ae0a02c0 	sw	t2,704(s0)
     198:	ac440000 	sw	a0,0(v0)
     19c:	02002025 	move	a0,s0
     1a0:	0c000000 	jal	0 <func_8005B280>
     1a4:	ac400004 	sw	zero,4(v0)
     1a8:	14400009 	bnez	v0,1d0 <func_8005B2AC+0x1a4>
     1ac:	00404025 	move	t0,v0
     1b0:	3c040000 	lui	a0,0x0
     1b4:	3c050000 	lui	a1,0x0
     1b8:	24a50000 	addiu	a1,a1,0
     1bc:	24840000 	addiu	a0,a0,0
     1c0:	240602d6 	li	a2,726
     1c4:	0c000000 	jal	0 <func_8005B280>
     1c8:	afa2008c 	sw	v0,140(sp)
     1cc:	8fa8008c 	lw	t0,140(sp)
     1d0:	8fa40094 	lw	a0,148(sp)
     1d4:	8fa50098 	lw	a1,152(sp)
     1d8:	8fa6009c 	lw	a2,156(sp)
     1dc:	c4840000 	lwc1	$f4,0(a0)
     1e0:	27a70084 	addiu	a3,sp,132
     1e4:	4600218d 	trunc.w.s	$f6,$f4
     1e8:	440d3000 	mfc1	t5,$f6
     1ec:	00000000 	nop
     1f0:	a50d0000 	sh	t5,0(t0)
     1f4:	c4880004 	lwc1	$f8,4(a0)
     1f8:	27ad007c 	addiu	t5,sp,124
     1fc:	4600428d 	trunc.w.s	$f10,$f8
     200:	440c5000 	mfc1	t4,$f10
     204:	00000000 	nop
     208:	a50c0002 	sh	t4,2(t0)
     20c:	c4900008 	lwc1	$f16,8(a0)
     210:	4600848d 	trunc.w.s	$f18,$f16
     214:	44199000 	mfc1	t9,$f18
     218:	00000000 	nop
     21c:	a5190004 	sh	t9,4(t0)
     220:	c4a40000 	lwc1	$f4,0(a1)
     224:	4600218d 	trunc.w.s	$f6,$f4
     228:	44183000 	mfc1	t8,$f6
     22c:	00000000 	nop
     230:	a5180010 	sh	t8,16(t0)
     234:	c4a80004 	lwc1	$f8,4(a1)
     238:	4600428d 	trunc.w.s	$f10,$f8
     23c:	440b5000 	mfc1	t3,$f10
     240:	00000000 	nop
     244:	a50b0012 	sh	t3,18(t0)
     248:	c4b00008 	lwc1	$f16,8(a1)
     24c:	27ab0080 	addiu	t3,sp,128
     250:	4600848d 	trunc.w.s	$f18,$f16
     254:	440e9000 	mfc1	t6,$f18
     258:	00000000 	nop
     25c:	a50e0014 	sh	t6,20(t0)
     260:	c4c40000 	lwc1	$f4,0(a2)
     264:	27ae0078 	addiu	t6,sp,120
     268:	4600218d 	trunc.w.s	$f6,$f4
     26c:	440f3000 	mfc1	t7,$f6
     270:	00000000 	nop
     274:	a50f0020 	sh	t7,32(t0)
     278:	c4c80004 	lwc1	$f8,4(a2)
     27c:	4600428d 	trunc.w.s	$f10,$f8
     280:	44095000 	mfc1	t1,$f10
     284:	00000000 	nop
     288:	a5090022 	sh	t1,34(t0)
     28c:	c4d00008 	lwc1	$f16,8(a2)
     290:	4600848d 	trunc.w.s	$f18,$f16
     294:	440a9000 	mfc1	t2,$f18
     298:	00000000 	nop
     29c:	a50a0024 	sh	t2,36(t0)
     2a0:	afa8008c 	sw	t0,140(sp)
     2a4:	afae0018 	sw	t6,24(sp)
     2a8:	afad0014 	sw	t5,20(sp)
     2ac:	0c000000 	jal	0 <func_8005B280>
     2b0:	afab0010 	sw	t3,16(sp)
     2b4:	8fa8008c 	lw	t0,140(sp)
     2b8:	240300ff 	li	v1,255
     2bc:	25040030 	addiu	a0,t0,48
     2c0:	0104082b 	sltu	at,t0,a0
     2c4:	1020002c 	beqz	at,378 <func_8005B2AC+0x34c>
     2c8:	01001025 	move	v0,t0
     2cc:	24420010 	addiu	v0,v0,16
     2d0:	0044082b 	sltu	at,v0,a0
     2d4:	a440fff6 	sh	zero,-10(v0)
     2d8:	a440fff8 	sh	zero,-8(v0)
     2dc:	10200016 	beqz	at,338 <func_8005B2AC+0x30c>
     2e0:	a440fffa 	sh	zero,-6(v0)
     2e4:	c7b20084 	lwc1	$f18,132(sp)
     2e8:	24420010 	addiu	v0,v0,16
     2ec:	0044082b 	sltu	at,v0,a0
     2f0:	4600948d 	trunc.w.s	$f18,$f18
     2f4:	44099000 	mfc1	t1,$f18
     2f8:	00000000 	nop
     2fc:	a049ffec 	sb	t1,-20(v0)
     300:	c7b20080 	lwc1	$f18,128(sp)
     304:	4600948d 	trunc.w.s	$f18,$f18
     308:	440d9000 	mfc1	t5,$f18
     30c:	00000000 	nop
     310:	a04dffed 	sb	t5,-19(v0)
     314:	c7b2007c 	lwc1	$f18,124(sp)
     318:	a043ffef 	sb	v1,-17(v0)
     31c:	a440fff6 	sh	zero,-10(v0)
     320:	4600948d 	trunc.w.s	$f18,$f18
     324:	a440fff8 	sh	zero,-8(v0)
     328:	a440fffa 	sh	zero,-6(v0)
     32c:	44199000 	mfc1	t9,$f18
     330:	1420ffec 	bnez	at,2e4 <func_8005B2AC+0x2b8>
     334:	a059ffee 	sb	t9,-18(v0)
     338:	c7b20084 	lwc1	$f18,132(sp)
     33c:	4600948d 	trunc.w.s	$f18,$f18
     340:	44099000 	mfc1	t1,$f18
     344:	00000000 	nop
     348:	a049fffc 	sb	t1,-4(v0)
     34c:	c7b20080 	lwc1	$f18,128(sp)
     350:	4600948d 	trunc.w.s	$f18,$f18
     354:	440d9000 	mfc1	t5,$f18
     358:	00000000 	nop
     35c:	a04dfffd 	sb	t5,-3(v0)
     360:	c7b2007c 	lwc1	$f18,124(sp)
     364:	a043ffff 	sb	v1,-1(v0)
     368:	4600948d 	trunc.w.s	$f18,$f18
     36c:	44199000 	mfc1	t9,$f18
     370:	00000000 	nop
     374:	a059fffe 	sb	t9,-2(v0)
     378:	8e0202c0 	lw	v0,704(s0)
     37c:	3c180100 	lui	t8,0x100
     380:	37183006 	ori	t8,t8,0x3006
     384:	24490008 	addiu	t1,v0,8
     388:	ae0902c0 	sw	t1,704(s0)
     38c:	ac480004 	sw	t0,4(v0)
     390:	ac580000 	sw	t8,0(v0)
     394:	8e0202c0 	lw	v0,704(s0)
     398:	3c0b0500 	lui	t3,0x500
     39c:	356b0204 	ori	t3,t3,0x204
     3a0:	244a0008 	addiu	t2,v0,8
     3a4:	ae0a02c0 	sw	t2,704(s0)
     3a8:	3c060000 	lui	a2,0x0
     3ac:	24c60000 	addiu	a2,a2,0
     3b0:	27a40064 	addiu	a0,sp,100
     3b4:	02002825 	move	a1,s0
     3b8:	240702f5 	li	a3,757
     3bc:	ac400004 	sw	zero,4(v0)
     3c0:	0c000000 	jal	0 <func_8005B280>
     3c4:	ac4b0000 	sw	t3,0(v0)
     3c8:	8fbf002c 	lw	ra,44(sp)
     3cc:	8fb00028 	lw	s0,40(sp)
     3d0:	27bd0090 	addiu	sp,sp,144
     3d4:	03e00008 	jr	ra
     3d8:	00000000 	nop

000003dc <Collider_InitBase>:
     3dc:	3c0e0000 	lui	t6,0x0
     3e0:	afa40000 	sw	a0,0(sp)
     3e4:	25ce0000 	addiu	t6,t6,0
     3e8:	8dd80000 	lw	t8,0(t6)
     3ec:	24020001 	li	v0,1
     3f0:	acb80000 	sw	t8,0(a1)
     3f4:	8dcf0004 	lw	t7,4(t6)
     3f8:	acaf0004 	sw	t7,4(a1)
     3fc:	8dd80008 	lw	t8,8(t6)
     400:	acb80008 	sw	t8,8(a1)
     404:	8dcf000c 	lw	t7,12(t6)
     408:	acaf000c 	sw	t7,12(a1)
     40c:	8dd80010 	lw	t8,16(t6)
     410:	acb80010 	sw	t8,16(a1)
     414:	8dcf0014 	lw	t7,20(t6)
     418:	03e00008 	jr	ra
     41c:	acaf0014 	sw	t7,20(a1)

00000420 <Collider_DestroyBase>:
     420:	afa40000 	sw	a0,0(sp)
     424:	afa50004 	sw	a1,4(sp)
     428:	03e00008 	jr	ra
     42c:	24020001 	li	v0,1

00000430 <Collider_SetBase_Actor>:
     430:	afa40000 	sw	a0,0(sp)
     434:	8cce0000 	lw	t6,0(a2)
     438:	24080010 	li	t0,16
     43c:	24020001 	li	v0,1
     440:	acae0000 	sw	t6,0(a1)
     444:	90cf0004 	lbu	t7,4(a2)
     448:	a0af0010 	sb	t7,16(a1)
     44c:	90d80005 	lbu	t8,5(a2)
     450:	a0b80011 	sb	t8,17(a1)
     454:	90d90006 	lbu	t9,6(a2)
     458:	a0a80013 	sb	t0,19(a1)
     45c:	a0b90012 	sb	t9,18(a1)
     460:	90c90007 	lbu	t1,7(a2)
     464:	03e00008 	jr	ra
     468:	a0a90015 	sb	t1,21(a1)

0000046c <Collider_SetBase_Set3>:
     46c:	afa40000 	sw	a0,0(sp)
     470:	aca60000 	sw	a2,0(a1)
     474:	90ee0000 	lbu	t6,0(a3)
     478:	24080010 	li	t0,16
     47c:	24020001 	li	v0,1
     480:	a0ae0014 	sb	t6,20(a1)
     484:	90ef0001 	lbu	t7,1(a3)
     488:	a0af0010 	sb	t7,16(a1)
     48c:	90f80002 	lbu	t8,2(a3)
     490:	a0b80011 	sb	t8,17(a1)
     494:	90f90003 	lbu	t9,3(a3)
     498:	a0a80013 	sb	t0,19(a1)
     49c:	a0b90012 	sb	t9,18(a1)
     4a0:	90e90004 	lbu	t1,4(a3)
     4a4:	03e00008 	jr	ra
     4a8:	a0a90015 	sb	t1,21(a1)

000004ac <Collider_SetBase>:
     4ac:	afa40000 	sw	a0,0(sp)
     4b0:	aca60000 	sw	a2,0(a1)
     4b4:	90ee0000 	lbu	t6,0(a3)
     4b8:	24020001 	li	v0,1
     4bc:	a0ae0014 	sb	t6,20(a1)
     4c0:	90ef0001 	lbu	t7,1(a3)
     4c4:	a0af0010 	sb	t7,16(a1)
     4c8:	90f80002 	lbu	t8,2(a3)
     4cc:	a0b80011 	sb	t8,17(a1)
     4d0:	90f90003 	lbu	t9,3(a3)
     4d4:	a0b90012 	sb	t9,18(a1)
     4d8:	90e80004 	lbu	t0,4(a3)
     4dc:	a0a80013 	sb	t0,19(a1)
     4e0:	90e90005 	lbu	t1,5(a3)
     4e4:	03e00008 	jr	ra
     4e8:	a0a90015 	sb	t1,21(a1)

000004ec <Collider_BaseSetAT>:
     4ec:	afa40000 	sw	a0,0(sp)
     4f0:	90ae0010 	lbu	t6,16(a1)
     4f4:	aca00004 	sw	zero,4(a1)
     4f8:	31cffff9 	andi	t7,t6,0xfff9
     4fc:	03e00008 	jr	ra
     500:	a0af0010 	sb	t7,16(a1)

00000504 <Collider_BaseSetAC>:
     504:	afa40000 	sw	a0,0(sp)
     508:	90ae0011 	lbu	t6,17(a1)
     50c:	aca00008 	sw	zero,8(a1)
     510:	31cfff7d 	andi	t7,t6,0xff7d
     514:	03e00008 	jr	ra
     518:	a0af0011 	sb	t7,17(a1)

0000051c <Collider_BaseSetOC>:
     51c:	afa40000 	sw	a0,0(sp)
     520:	90ae0012 	lbu	t6,18(a1)
     524:	90b80013 	lbu	t8,19(a1)
     528:	aca0000c 	sw	zero,12(a1)
     52c:	31cffffd 	andi	t7,t6,0xfffd
     530:	3319fffe 	andi	t9,t8,0xfffe
     534:	a0af0012 	sb	t7,18(a1)
     538:	03e00008 	jr	ra
     53c:	a0b90013 	sb	t9,19(a1)

00000540 <Collider_InitTouch>:
     540:	3c0e0000 	lui	t6,0x0
     544:	afa40000 	sw	a0,0(sp)
     548:	25ce0018 	addiu	t6,t6,24
     54c:	8dd80000 	lw	t8,0(t6)
     550:	24020001 	li	v0,1
     554:	acb80000 	sw	t8,0(a1)
     558:	8dcf0004 	lw	t7,4(t6)
     55c:	03e00008 	jr	ra
     560:	acaf0004 	sw	t7,4(a1)

00000564 <Collider_DestroyTouch>:
     564:	afa40000 	sw	a0,0(sp)
     568:	afa50004 	sw	a1,4(sp)
     56c:	03e00008 	jr	ra
     570:	24020001 	li	v0,1

00000574 <Collider_SetTouch>:
     574:	afa40000 	sw	a0,0(sp)
     578:	8cce0000 	lw	t6,0(a2)
     57c:	24020001 	li	v0,1
     580:	acae0000 	sw	t6,0(a1)
     584:	90cf0004 	lbu	t7,4(a2)
     588:	a0af0004 	sb	t7,4(a1)
     58c:	90d80005 	lbu	t8,5(a2)
     590:	03e00008 	jr	ra
     594:	a0b80005 	sb	t8,5(a1)

00000598 <Collider_BodySetAT_Unk>:
     598:	afa40000 	sw	a0,0(sp)
     59c:	03e00008 	jr	ra
     5a0:	afa50004 	sw	a1,4(sp)

000005a4 <Collider_InitBump>:
     5a4:	3c0e0000 	lui	t6,0x0
     5a8:	afa40000 	sw	a0,0(sp)
     5ac:	25ce0020 	addiu	t6,t6,32
     5b0:	8dd80000 	lw	t8,0(t6)
     5b4:	24020001 	li	v0,1
     5b8:	acb80000 	sw	t8,0(a1)
     5bc:	8dcf0004 	lw	t7,4(t6)
     5c0:	acaf0004 	sw	t7,4(a1)
     5c4:	8dd80008 	lw	t8,8(t6)
     5c8:	03e00008 	jr	ra
     5cc:	acb80008 	sw	t8,8(a1)

000005d0 <Collider_DestroyBump>:
     5d0:	afa40000 	sw	a0,0(sp)
     5d4:	afa50004 	sw	a1,4(sp)
     5d8:	03e00008 	jr	ra
     5dc:	24020001 	li	v0,1

000005e0 <Collider_SetBump>:
     5e0:	afa40000 	sw	a0,0(sp)
     5e4:	8cce0000 	lw	t6,0(a2)
     5e8:	24020001 	li	v0,1
     5ec:	acae0000 	sw	t6,0(a1)
     5f0:	90cf0004 	lbu	t7,4(a2)
     5f4:	a0af0004 	sb	t7,4(a1)
     5f8:	90d80005 	lbu	t8,5(a2)
     5fc:	03e00008 	jr	ra
     600:	a0b80005 	sb	t8,5(a1)

00000604 <Collider_InitBody>:
     604:	27bdffe8 	addiu	sp,sp,-24
     608:	3c0e0000 	lui	t6,0x0
     60c:	25ce002c 	addiu	t6,t6,44
     610:	afbf0014 	sw	ra,20(sp)
     614:	afa40018 	sw	a0,24(sp)
     618:	00a03025 	move	a2,a1
     61c:	25c80024 	addiu	t0,t6,36
     620:	00a0c825 	move	t9,a1
     624:	8dd80000 	lw	t8,0(t6)
     628:	25ce000c 	addiu	t6,t6,12
     62c:	2739000c 	addiu	t9,t9,12
     630:	af38fff4 	sw	t8,-12(t9)
     634:	8dcffff8 	lw	t7,-8(t6)
     638:	af2ffff8 	sw	t7,-8(t9)
     63c:	8dd8fffc 	lw	t8,-4(t6)
     640:	15c8fff8 	bne	t6,t0,624 <Collider_InitBody+0x20>
     644:	af38fffc 	sw	t8,-4(t9)
     648:	8dd80000 	lw	t8,0(t6)
     64c:	00c02825 	move	a1,a2
     650:	af380000 	sw	t8,0(t9)
     654:	afa6001c 	sw	a2,28(sp)
     658:	0c000000 	jal	0 <func_8005B280>
     65c:	8fa40018 	lw	a0,24(sp)
     660:	8fa6001c 	lw	a2,28(sp)
     664:	8fa40018 	lw	a0,24(sp)
     668:	0c000000 	jal	0 <func_8005B280>
     66c:	24c50008 	addiu	a1,a2,8
     670:	8fbf0014 	lw	ra,20(sp)
     674:	27bd0018 	addiu	sp,sp,24
     678:	24020001 	li	v0,1
     67c:	03e00008 	jr	ra
     680:	00000000 	nop

00000684 <Collider_DestroyBody>:
     684:	27bdffe8 	addiu	sp,sp,-24
     688:	afbf0014 	sw	ra,20(sp)
     68c:	afa40018 	sw	a0,24(sp)
     690:	0c000000 	jal	0 <func_8005B280>
     694:	afa5001c 	sw	a1,28(sp)
     698:	8fa5001c 	lw	a1,28(sp)
     69c:	8fa40018 	lw	a0,24(sp)
     6a0:	0c000000 	jal	0 <func_8005B280>
     6a4:	24a50008 	addiu	a1,a1,8
     6a8:	8fbf0014 	lw	ra,20(sp)
     6ac:	27bd0018 	addiu	sp,sp,24
     6b0:	24020001 	li	v0,1
     6b4:	03e00008 	jr	ra
     6b8:	00000000 	nop

000006bc <Collider_SetBody>:
     6bc:	27bdffe0 	addiu	sp,sp,-32
     6c0:	afbf001c 	sw	ra,28(sp)
     6c4:	afb00018 	sw	s0,24(sp)
     6c8:	afa40020 	sw	a0,32(sp)
     6cc:	90ce0000 	lbu	t6,0(a2)
     6d0:	00c08025 	move	s0,a2
     6d4:	24c60004 	addiu	a2,a2,4
     6d8:	a0ae0014 	sb	t6,20(a1)
     6dc:	afa50024 	sw	a1,36(sp)
     6e0:	0c000000 	jal	0 <func_8005B280>
     6e4:	8fa40020 	lw	a0,32(sp)
     6e8:	8fa70024 	lw	a3,36(sp)
     6ec:	8fa40020 	lw	a0,32(sp)
     6f0:	2606000c 	addiu	a2,s0,12
     6f4:	0c000000 	jal	0 <func_8005B280>
     6f8:	24e50008 	addiu	a1,a3,8
     6fc:	8fa70024 	lw	a3,36(sp)
     700:	920f0014 	lbu	t7,20(s0)
     704:	24020001 	li	v0,1
     708:	a0ef0015 	sb	t7,21(a3)
     70c:	92180015 	lbu	t8,21(s0)
     710:	a0f80016 	sb	t8,22(a3)
     714:	92190016 	lbu	t9,22(s0)
     718:	a0f90017 	sb	t9,23(a3)
     71c:	8fbf001c 	lw	ra,28(sp)
     720:	8fb00018 	lw	s0,24(sp)
     724:	27bd0020 	addiu	sp,sp,32
     728:	03e00008 	jr	ra
     72c:	00000000 	nop

00000730 <Collider_BodySetAT>:
     730:	27bdffe8 	addiu	sp,sp,-24
     734:	afbf0014 	sw	ra,20(sp)
     738:	90ae0015 	lbu	t6,21(a1)
     73c:	aca00018 	sw	zero,24(a1)
     740:	aca00020 	sw	zero,32(a1)
     744:	31d8fffd 	andi	t8,t6,0xfffd
     748:	a0b80015 	sb	t8,21(a1)
     74c:	3319ffbf 	andi	t9,t8,0xffbf
     750:	0c000000 	jal	0 <func_8005B280>
     754:	a0b90015 	sb	t9,21(a1)
     758:	8fbf0014 	lw	ra,20(sp)
     75c:	27bd0018 	addiu	sp,sp,24
     760:	03e00008 	jr	ra
     764:	00000000 	nop

00000768 <Collider_BodySetAC>:
     768:	afa40000 	sw	a0,0(sp)
     76c:	90ae0016 	lbu	t6,22(a1)
     770:	a4a00012 	sh	zero,18(a1)
     774:	84a20012 	lh	v0,18(a1)
     778:	31d8fffd 	andi	t8,t6,0xfffd
     77c:	a0b80016 	sb	t8,22(a1)
     780:	3319ff7f 	andi	t9,t8,0xff7f
     784:	a0b90016 	sb	t9,22(a1)
     788:	aca0001c 	sw	zero,28(a1)
     78c:	aca00024 	sw	zero,36(a1)
     790:	a4a20010 	sh	v0,16(a1)
     794:	03e00008 	jr	ra
     798:	a4a2000e 	sh	v0,14(a1)

0000079c <Collider_BodySetOC>:
     79c:	afa40000 	sw	a0,0(sp)
     7a0:	90ae0017 	lbu	t6,23(a1)
     7a4:	31cffffd 	andi	t7,t6,0xfffd
     7a8:	03e00008 	jr	ra
     7ac:	a0af0017 	sb	t7,23(a1)

000007b0 <Collider_InitJntSphItemDim>:
     7b0:	3c0e0000 	lui	t6,0x0
     7b4:	afa40000 	sw	a0,0(sp)
     7b8:	25ce0054 	addiu	t6,t6,84
     7bc:	8dd80000 	lw	t8,0(t6)
     7c0:	24020001 	li	v0,1
     7c4:	acb80000 	sw	t8,0(a1)
     7c8:	8dcf0004 	lw	t7,4(t6)
     7cc:	acaf0004 	sw	t7,4(a1)
     7d0:	8dd80008 	lw	t8,8(t6)
     7d4:	acb80008 	sw	t8,8(a1)
     7d8:	8dcf000c 	lw	t7,12(t6)
     7dc:	acaf000c 	sw	t7,12(a1)
     7e0:	8dd80010 	lw	t8,16(t6)
     7e4:	acb80010 	sw	t8,16(a1)
     7e8:	8dcf0014 	lw	t7,20(t6)
     7ec:	03e00008 	jr	ra
     7f0:	acaf0014 	sw	t7,20(a1)

000007f4 <Collider_DestroyJntSphItemDim>:
     7f4:	afa40000 	sw	a0,0(sp)
     7f8:	afa50004 	sw	a1,4(sp)
     7fc:	03e00008 	jr	ra
     800:	24020001 	li	v0,1

00000804 <Collider_SetJntSphItemDim>:
     804:	afa40000 	sw	a0,0(sp)
     808:	90ce0000 	lbu	t6,0(a2)
     80c:	3c010000 	lui	at,0x0
     810:	24020001 	li	v0,1
     814:	a0ae0014 	sb	t6,20(a1)
     818:	88d80002 	lwl	t8,2(a2)
     81c:	98d80005 	lwr	t8,5(a2)
     820:	a8b80000 	swl	t8,0(a1)
     824:	b8b80003 	swr	t8,3(a1)
     828:	88cf0006 	lwl	t7,6(a2)
     82c:	98cf0009 	lwr	t7,9(a2)
     830:	a8af0004 	swl	t7,4(a1)
     834:	b8af0007 	swr	t7,7(a1)
     838:	84d9000a 	lh	t9,10(a2)
     83c:	c4280740 	lwc1	$f8,1856(at)
     840:	44992000 	mtc1	t9,$f4
     844:	00000000 	nop
     848:	468021a0 	cvt.s.w	$f6,$f4
     84c:	46083282 	mul.s	$f10,$f6,$f8
     850:	03e00008 	jr	ra
     854:	e4aa0010 	swc1	$f10,16(a1)

00000858 <Collider_InitJntSphItem>:
     858:	27bdffe8 	addiu	sp,sp,-24
     85c:	afbf0014 	sw	ra,20(sp)
     860:	afa40018 	sw	a0,24(sp)
     864:	0c000000 	jal	0 <func_8005B280>
     868:	afa5001c 	sw	a1,28(sp)
     86c:	8fa5001c 	lw	a1,28(sp)
     870:	8fa40018 	lw	a0,24(sp)
     874:	0c000000 	jal	0 <func_8005B280>
     878:	24a50028 	addiu	a1,a1,40
     87c:	8fbf0014 	lw	ra,20(sp)
     880:	27bd0018 	addiu	sp,sp,24
     884:	24020001 	li	v0,1
     888:	03e00008 	jr	ra
     88c:	00000000 	nop

00000890 <Collider_DestroyJntSphItem>:
     890:	27bdffe8 	addiu	sp,sp,-24
     894:	afbf0014 	sw	ra,20(sp)
     898:	afa40018 	sw	a0,24(sp)
     89c:	0c000000 	jal	0 <func_8005B280>
     8a0:	afa5001c 	sw	a1,28(sp)
     8a4:	8fa5001c 	lw	a1,28(sp)
     8a8:	8fa40018 	lw	a0,24(sp)
     8ac:	0c000000 	jal	0 <func_8005B280>
     8b0:	24a50028 	addiu	a1,a1,40
     8b4:	8fbf0014 	lw	ra,20(sp)
     8b8:	27bd0018 	addiu	sp,sp,24
     8bc:	24020001 	li	v0,1
     8c0:	03e00008 	jr	ra
     8c4:	00000000 	nop

000008c8 <Collider_SetJntSphItem>:
     8c8:	27bdffe8 	addiu	sp,sp,-24
     8cc:	afbf0014 	sw	ra,20(sp)
     8d0:	afa40018 	sw	a0,24(sp)
     8d4:	afa5001c 	sw	a1,28(sp)
     8d8:	0c000000 	jal	0 <func_8005B280>
     8dc:	afa60020 	sw	a2,32(sp)
     8e0:	8fa5001c 	lw	a1,28(sp)
     8e4:	8fa60020 	lw	a2,32(sp)
     8e8:	8fa40018 	lw	a0,24(sp)
     8ec:	24a50028 	addiu	a1,a1,40
     8f0:	0c000000 	jal	0 <func_8005B280>
     8f4:	24c60018 	addiu	a2,a2,24
     8f8:	8fbf0014 	lw	ra,20(sp)
     8fc:	27bd0018 	addiu	sp,sp,24
     900:	24020001 	li	v0,1
     904:	03e00008 	jr	ra
     908:	00000000 	nop

0000090c <Collider_JntSphItemSetAT>:
     90c:	27bdffe8 	addiu	sp,sp,-24
     910:	afbf0014 	sw	ra,20(sp)
     914:	0c000000 	jal	0 <func_8005B280>
     918:	00000000 	nop
     91c:	8fbf0014 	lw	ra,20(sp)
     920:	27bd0018 	addiu	sp,sp,24
     924:	24020001 	li	v0,1
     928:	03e00008 	jr	ra
     92c:	00000000 	nop

00000930 <Collider_JntSphItemSetAC>:
     930:	27bdffe8 	addiu	sp,sp,-24
     934:	afbf0014 	sw	ra,20(sp)
     938:	0c000000 	jal	0 <func_8005B280>
     93c:	00000000 	nop
     940:	8fbf0014 	lw	ra,20(sp)
     944:	27bd0018 	addiu	sp,sp,24
     948:	24020001 	li	v0,1
     94c:	03e00008 	jr	ra
     950:	00000000 	nop

00000954 <Collider_JntSphItemSetOC>:
     954:	27bdffe8 	addiu	sp,sp,-24
     958:	afbf0014 	sw	ra,20(sp)
     95c:	0c000000 	jal	0 <func_8005B280>
     960:	00000000 	nop
     964:	8fbf0014 	lw	ra,20(sp)
     968:	27bd0018 	addiu	sp,sp,24
     96c:	24020001 	li	v0,1
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <Collider_InitJntSph>:
     978:	27bdffe8 	addiu	sp,sp,-24
     97c:	afbf0014 	sw	ra,20(sp)
     980:	0c000000 	jal	0 <func_8005B280>
     984:	afa5001c 	sw	a1,28(sp)
     988:	8fa5001c 	lw	a1,28(sp)
     98c:	24020001 	li	v0,1
     990:	aca00018 	sw	zero,24(a1)
     994:	aca0001c 	sw	zero,28(a1)
     998:	8fbf0014 	lw	ra,20(sp)
     99c:	27bd0018 	addiu	sp,sp,24
     9a0:	03e00008 	jr	ra
     9a4:	00000000 	nop

000009a8 <Collider_FreeJntSph>:
     9a8:	27bdffd8 	addiu	sp,sp,-40
     9ac:	afbf0024 	sw	ra,36(sp)
     9b0:	afb20020 	sw	s2,32(sp)
     9b4:	afb1001c 	sw	s1,28(sp)
     9b8:	00a08825 	move	s1,a1
     9bc:	00809025 	move	s2,a0
     9c0:	0c000000 	jal	0 <func_8005B280>
     9c4:	afb00018 	sw	s0,24(sp)
     9c8:	8e2e0018 	lw	t6,24(s1)
     9cc:	8e24001c 	lw	a0,28(s1)
     9d0:	000e7980 	sll	t7,t6,0x6
     9d4:	008fc021 	addu	t8,a0,t7
     9d8:	0098082b 	sltu	at,a0,t8
     9dc:	1020000c 	beqz	at,a10 <Collider_FreeJntSph+0x68>
     9e0:	00808025 	move	s0,a0
     9e4:	02402025 	move	a0,s2
     9e8:	0c000000 	jal	0 <func_8005B280>
     9ec:	02002825 	move	a1,s0
     9f0:	8e390018 	lw	t9,24(s1)
     9f4:	8e24001c 	lw	a0,28(s1)
     9f8:	26100040 	addiu	s0,s0,64
     9fc:	00194180 	sll	t0,t9,0x6
     a00:	00884821 	addu	t1,a0,t0
     a04:	0209082b 	sltu	at,s0,t1
     a08:	5420fff7 	bnezl	at,9e8 <Collider_FreeJntSph+0x40>
     a0c:	02402025 	move	a0,s2
     a10:	10800005 	beqz	a0,a28 <Collider_FreeJntSph+0x80>
     a14:	ae200018 	sw	zero,24(s1)
     a18:	3c050000 	lui	a1,0x0
     a1c:	24a50058 	addiu	a1,a1,88
     a20:	0c000000 	jal	0 <func_8005B280>
     a24:	24060571 	li	a2,1393
     a28:	ae20001c 	sw	zero,28(s1)
     a2c:	8fbf0024 	lw	ra,36(sp)
     a30:	8fb20020 	lw	s2,32(sp)
     a34:	8fb1001c 	lw	s1,28(sp)
     a38:	8fb00018 	lw	s0,24(sp)
     a3c:	27bd0028 	addiu	sp,sp,40
     a40:	03e00008 	jr	ra
     a44:	24020001 	li	v0,1

00000a48 <Collider_DestroyJntSph>:
     a48:	27bdffd8 	addiu	sp,sp,-40
     a4c:	afbf0024 	sw	ra,36(sp)
     a50:	afb20020 	sw	s2,32(sp)
     a54:	afb1001c 	sw	s1,28(sp)
     a58:	00a08825 	move	s1,a1
     a5c:	00809025 	move	s2,a0
     a60:	0c000000 	jal	0 <func_8005B280>
     a64:	afb00018 	sw	s0,24(sp)
     a68:	8e2e0018 	lw	t6,24(s1)
     a6c:	8e30001c 	lw	s0,28(s1)
     a70:	000e7980 	sll	t7,t6,0x6
     a74:	020fc021 	addu	t8,s0,t7
     a78:	0218082b 	sltu	at,s0,t8
     a7c:	1020000b 	beqz	at,aac <Collider_DestroyJntSph+0x64>
     a80:	02402025 	move	a0,s2
     a84:	0c000000 	jal	0 <func_8005B280>
     a88:	02002825 	move	a1,s0
     a8c:	8e280018 	lw	t0,24(s1)
     a90:	8e39001c 	lw	t9,28(s1)
     a94:	26100040 	addiu	s0,s0,64
     a98:	00084980 	sll	t1,t0,0x6
     a9c:	03295021 	addu	t2,t9,t1
     aa0:	020a082b 	sltu	at,s0,t2
     aa4:	5420fff7 	bnezl	at,a84 <Collider_DestroyJntSph+0x3c>
     aa8:	02402025 	move	a0,s2
     aac:	ae200018 	sw	zero,24(s1)
     ab0:	ae20001c 	sw	zero,28(s1)
     ab4:	8fbf0024 	lw	ra,36(sp)
     ab8:	8fb20020 	lw	s2,32(sp)
     abc:	8fb1001c 	lw	s1,28(sp)
     ac0:	8fb00018 	lw	s0,24(sp)
     ac4:	27bd0028 	addiu	sp,sp,40
     ac8:	03e00008 	jr	ra
     acc:	24020001 	li	v0,1

00000ad0 <Collider_SetJntSph_Set>:
     ad0:	27bdffd8 	addiu	sp,sp,-40
     ad4:	afbf0024 	sw	ra,36(sp)
     ad8:	afb30020 	sw	s3,32(sp)
     adc:	afb2001c 	sw	s2,28(sp)
     ae0:	00a09025 	move	s2,a1
     ae4:	00809825 	move	s3,a0
     ae8:	afb10018 	sw	s1,24(sp)
     aec:	afb00014 	sw	s0,20(sp)
     af0:	0c000000 	jal	0 <func_8005B280>
     af4:	afa60030 	sw	a2,48(sp)
     af8:	8fa30030 	lw	v1,48(sp)
     afc:	3c050000 	lui	a1,0x0
     b00:	24a50070 	addiu	a1,a1,112
     b04:	8c6e0008 	lw	t6,8(v1)
     b08:	240605a3 	li	a2,1443
     b0c:	ae4e0018 	sw	t6,24(s2)
     b10:	8c640008 	lw	a0,8(v1)
     b14:	0c000000 	jal	0 <func_8005B280>
     b18:	00042180 	sll	a0,a0,0x6
     b1c:	1440000d 	bnez	v0,b54 <Collider_SetJntSph_Set+0x84>
     b20:	ae42001c 	sw	v0,28(s2)
     b24:	3c040000 	lui	a0,0x0
     b28:	ae400018 	sw	zero,24(s2)
     b2c:	0c000000 	jal	0 <func_8005B280>
     b30:	24840088 	addiu	a0,a0,136
     b34:	3c040000 	lui	a0,0x0
     b38:	0c000000 	jal	0 <func_8005B280>
     b3c:	24840090 	addiu	a0,a0,144
     b40:	3c040000 	lui	a0,0x0
     b44:	0c000000 	jal	0 <func_8005B280>
     b48:	248400c0 	addiu	a0,a0,192
     b4c:	10000019 	b	bb4 <Collider_SetJntSph_Set+0xe4>
     b50:	00001025 	move	v0,zero
     b54:	8e580018 	lw	t8,24(s2)
     b58:	8e50001c 	lw	s0,28(s2)
     b5c:	8faf0030 	lw	t7,48(sp)
     b60:	0018c980 	sll	t9,t8,0x6
     b64:	02194021 	addu	t0,s0,t9
     b68:	0208082b 	sltu	at,s0,t0
     b6c:	10200010 	beqz	at,bb0 <Collider_SetJntSph_Set+0xe0>
     b70:	8df1000c 	lw	s1,12(t7)
     b74:	02602025 	move	a0,s3
     b78:	0c000000 	jal	0 <func_8005B280>
     b7c:	02002825 	move	a1,s0
     b80:	02602025 	move	a0,s3
     b84:	02002825 	move	a1,s0
     b88:	0c000000 	jal	0 <func_8005B280>
     b8c:	02203025 	move	a2,s1
     b90:	8e4a0018 	lw	t2,24(s2)
     b94:	8e49001c 	lw	t1,28(s2)
     b98:	26100040 	addiu	s0,s0,64
     b9c:	000a5980 	sll	t3,t2,0x6
     ba0:	012b6021 	addu	t4,t1,t3
     ba4:	020c082b 	sltu	at,s0,t4
     ba8:	1420fff2 	bnez	at,b74 <Collider_SetJntSph_Set+0xa4>
     bac:	26310024 	addiu	s1,s1,36
     bb0:	24020001 	li	v0,1
     bb4:	8fbf0024 	lw	ra,36(sp)
     bb8:	8fb00014 	lw	s0,20(sp)
     bbc:	8fb10018 	lw	s1,24(sp)
     bc0:	8fb2001c 	lw	s2,28(sp)
     bc4:	8fb30020 	lw	s3,32(sp)
     bc8:	03e00008 	jr	ra
     bcc:	27bd0028 	addiu	sp,sp,40

00000bd0 <Collider_SetJntSph_Set3>:
     bd0:	27bdffd8 	addiu	sp,sp,-40
     bd4:	afbf0024 	sw	ra,36(sp)
     bd8:	afb30020 	sw	s3,32(sp)
     bdc:	afb2001c 	sw	s2,28(sp)
     be0:	00a09025 	move	s2,a1
     be4:	00809825 	move	s3,a0
     be8:	afb10018 	sw	s1,24(sp)
     bec:	afb00014 	sw	s0,20(sp)
     bf0:	0c000000 	jal	0 <func_8005B280>
     bf4:	afa70034 	sw	a3,52(sp)
     bf8:	8fa30034 	lw	v1,52(sp)
     bfc:	3c050000 	lui	a1,0x0
     c00:	24a500c4 	addiu	a1,a1,196
     c04:	8c6e0008 	lw	t6,8(v1)
     c08:	240605d2 	li	a2,1490
     c0c:	ae4e0018 	sw	t6,24(s2)
     c10:	8c640008 	lw	a0,8(v1)
     c14:	0c000000 	jal	0 <func_8005B280>
     c18:	00042180 	sll	a0,a0,0x6
     c1c:	1440000d 	bnez	v0,c54 <Collider_SetJntSph_Set3+0x84>
     c20:	ae42001c 	sw	v0,28(s2)
     c24:	3c040000 	lui	a0,0x0
     c28:	ae400018 	sw	zero,24(s2)
     c2c:	0c000000 	jal	0 <func_8005B280>
     c30:	248400dc 	addiu	a0,a0,220
     c34:	3c040000 	lui	a0,0x0
     c38:	0c000000 	jal	0 <func_8005B280>
     c3c:	248400e4 	addiu	a0,a0,228
     c40:	3c040000 	lui	a0,0x0
     c44:	0c000000 	jal	0 <func_8005B280>
     c48:	24840114 	addiu	a0,a0,276
     c4c:	10000019 	b	cb4 <Collider_SetJntSph_Set3+0xe4>
     c50:	00001025 	move	v0,zero
     c54:	8e580018 	lw	t8,24(s2)
     c58:	8e50001c 	lw	s0,28(s2)
     c5c:	8faf0034 	lw	t7,52(sp)
     c60:	0018c980 	sll	t9,t8,0x6
     c64:	02194021 	addu	t0,s0,t9
     c68:	0208082b 	sltu	at,s0,t0
     c6c:	10200010 	beqz	at,cb0 <Collider_SetJntSph_Set3+0xe0>
     c70:	8df1000c 	lw	s1,12(t7)
     c74:	02602025 	move	a0,s3
     c78:	0c000000 	jal	0 <func_8005B280>
     c7c:	02002825 	move	a1,s0
     c80:	02602025 	move	a0,s3
     c84:	02002825 	move	a1,s0
     c88:	0c000000 	jal	0 <func_8005B280>
     c8c:	02203025 	move	a2,s1
     c90:	8e4a0018 	lw	t2,24(s2)
     c94:	8e49001c 	lw	t1,28(s2)
     c98:	26100040 	addiu	s0,s0,64
     c9c:	000a5980 	sll	t3,t2,0x6
     ca0:	012b6021 	addu	t4,t1,t3
     ca4:	020c082b 	sltu	at,s0,t4
     ca8:	1420fff2 	bnez	at,c74 <Collider_SetJntSph_Set3+0xa4>
     cac:	26310024 	addiu	s1,s1,36
     cb0:	24020001 	li	v0,1
     cb4:	8fbf0024 	lw	ra,36(sp)
     cb8:	8fb00014 	lw	s0,20(sp)
     cbc:	8fb10018 	lw	s1,24(sp)
     cc0:	8fb2001c 	lw	s2,28(sp)
     cc4:	8fb30020 	lw	s3,32(sp)
     cc8:	03e00008 	jr	ra
     ccc:	27bd0028 	addiu	sp,sp,40

00000cd0 <Collider_SetJntSph_Set5>:
     cd0:	27bdffd8 	addiu	sp,sp,-40
     cd4:	afbf0024 	sw	ra,36(sp)
     cd8:	afb30020 	sw	s3,32(sp)
     cdc:	afb2001c 	sw	s2,28(sp)
     ce0:	00a09025 	move	s2,a1
     ce4:	00809825 	move	s3,a0
     ce8:	afb10018 	sw	s1,24(sp)
     cec:	afb00014 	sw	s0,20(sp)
     cf0:	0c000000 	jal	0 <func_8005B280>
     cf4:	afa70034 	sw	a3,52(sp)
     cf8:	8fa30034 	lw	v1,52(sp)
     cfc:	3c050000 	lui	a1,0x0
     d00:	24a50118 	addiu	a1,a1,280
     d04:	8c6e0008 	lw	t6,8(v1)
     d08:	2406060f 	li	a2,1551
     d0c:	ae4e0018 	sw	t6,24(s2)
     d10:	8c640008 	lw	a0,8(v1)
     d14:	0c000000 	jal	0 <func_8005B280>
     d18:	00042180 	sll	a0,a0,0x6
     d1c:	1440000d 	bnez	v0,d54 <Collider_SetJntSph_Set5+0x84>
     d20:	ae42001c 	sw	v0,28(s2)
     d24:	3c040000 	lui	a0,0x0
     d28:	ae400018 	sw	zero,24(s2)
     d2c:	0c000000 	jal	0 <func_8005B280>
     d30:	24840130 	addiu	a0,a0,304
     d34:	3c040000 	lui	a0,0x0
     d38:	0c000000 	jal	0 <func_8005B280>
     d3c:	24840138 	addiu	a0,a0,312
     d40:	3c040000 	lui	a0,0x0
     d44:	0c000000 	jal	0 <func_8005B280>
     d48:	24840164 	addiu	a0,a0,356
     d4c:	10000019 	b	db4 <Collider_SetJntSph_Set5+0xe4>
     d50:	00001025 	move	v0,zero
     d54:	8e580018 	lw	t8,24(s2)
     d58:	8e50001c 	lw	s0,28(s2)
     d5c:	8faf0034 	lw	t7,52(sp)
     d60:	0018c980 	sll	t9,t8,0x6
     d64:	02194021 	addu	t0,s0,t9
     d68:	0208082b 	sltu	at,s0,t0
     d6c:	10200010 	beqz	at,db0 <Collider_SetJntSph_Set5+0xe0>
     d70:	8df1000c 	lw	s1,12(t7)
     d74:	02602025 	move	a0,s3
     d78:	0c000000 	jal	0 <func_8005B280>
     d7c:	02002825 	move	a1,s0
     d80:	02602025 	move	a0,s3
     d84:	02002825 	move	a1,s0
     d88:	0c000000 	jal	0 <func_8005B280>
     d8c:	02203025 	move	a2,s1
     d90:	8e4a0018 	lw	t2,24(s2)
     d94:	8e49001c 	lw	t1,28(s2)
     d98:	26100040 	addiu	s0,s0,64
     d9c:	000a5980 	sll	t3,t2,0x6
     da0:	012b6021 	addu	t4,t1,t3
     da4:	020c082b 	sltu	at,s0,t4
     da8:	1420fff2 	bnez	at,d74 <Collider_SetJntSph_Set5+0xa4>
     dac:	26310024 	addiu	s1,s1,36
     db0:	24020001 	li	v0,1
     db4:	8fbf0024 	lw	ra,36(sp)
     db8:	8fb00014 	lw	s0,20(sp)
     dbc:	8fb10018 	lw	s1,24(sp)
     dc0:	8fb2001c 	lw	s2,28(sp)
     dc4:	8fb30020 	lw	s3,32(sp)
     dc8:	03e00008 	jr	ra
     dcc:	27bd0028 	addiu	sp,sp,40

00000dd0 <Collider_SetJntSph>:
     dd0:	27bdffd8 	addiu	sp,sp,-40
     dd4:	afbf0024 	sw	ra,36(sp)
     dd8:	afb30020 	sw	s3,32(sp)
     ddc:	afb2001c 	sw	s2,28(sp)
     de0:	00a09025 	move	s2,a1
     de4:	00809825 	move	s3,a0
     de8:	afb10018 	sw	s1,24(sp)
     dec:	afb00014 	sw	s0,20(sp)
     df0:	0c000000 	jal	0 <func_8005B280>
     df4:	afa70034 	sw	a3,52(sp)
     df8:	8fae0034 	lw	t6,52(sp)
     dfc:	8fa20038 	lw	v0,56(sp)
     e00:	3c040000 	lui	a0,0x0
     e04:	8dcf0008 	lw	t7,8(t6)
     e08:	ae42001c 	sw	v0,28(s2)
     e0c:	14400006 	bnez	v0,e28 <Collider_SetJntSph+0x58>
     e10:	ae4f0018 	sw	t7,24(s2)
     e14:	3c050000 	lui	a1,0x0
     e18:	24a50188 	addiu	a1,a1,392
     e1c:	24840168 	addiu	a0,a0,360
     e20:	0c000000 	jal	0 <func_8005B280>
     e24:	24060643 	li	a2,1603
     e28:	8e590018 	lw	t9,24(s2)
     e2c:	8e50001c 	lw	s0,28(s2)
     e30:	8fb80034 	lw	t8,52(sp)
     e34:	00194180 	sll	t0,t9,0x6
     e38:	02084821 	addu	t1,s0,t0
     e3c:	0209082b 	sltu	at,s0,t1
     e40:	10200010 	beqz	at,e84 <Collider_SetJntSph+0xb4>
     e44:	8f11000c 	lw	s1,12(t8)
     e48:	02602025 	move	a0,s3
     e4c:	0c000000 	jal	0 <func_8005B280>
     e50:	02002825 	move	a1,s0
     e54:	02602025 	move	a0,s3
     e58:	02002825 	move	a1,s0
     e5c:	0c000000 	jal	0 <func_8005B280>
     e60:	02203025 	move	a2,s1
     e64:	8e4b0018 	lw	t3,24(s2)
     e68:	8e4a001c 	lw	t2,28(s2)
     e6c:	26100040 	addiu	s0,s0,64
     e70:	000b6180 	sll	t4,t3,0x6
     e74:	014c6821 	addu	t5,t2,t4
     e78:	020d082b 	sltu	at,s0,t5
     e7c:	1420fff2 	bnez	at,e48 <Collider_SetJntSph+0x78>
     e80:	26310024 	addiu	s1,s1,36
     e84:	8fbf0024 	lw	ra,36(sp)
     e88:	8fb00014 	lw	s0,20(sp)
     e8c:	8fb10018 	lw	s1,24(sp)
     e90:	8fb2001c 	lw	s2,28(sp)
     e94:	8fb30020 	lw	s3,32(sp)
     e98:	27bd0028 	addiu	sp,sp,40
     e9c:	03e00008 	jr	ra
     ea0:	24020001 	li	v0,1

00000ea4 <Collider_JntSphSetAT>:
     ea4:	27bdffd8 	addiu	sp,sp,-40
     ea8:	afbf0024 	sw	ra,36(sp)
     eac:	afb20020 	sw	s2,32(sp)
     eb0:	afb1001c 	sw	s1,28(sp)
     eb4:	00809025 	move	s2,a0
     eb8:	afb00018 	sw	s0,24(sp)
     ebc:	00a08825 	move	s1,a1
     ec0:	0c000000 	jal	0 <func_8005B280>
     ec4:	afa5002c 	sw	a1,44(sp)
     ec8:	8fa5002c 	lw	a1,44(sp)
     ecc:	8cae0018 	lw	t6,24(a1)
     ed0:	8cb0001c 	lw	s0,28(a1)
     ed4:	000e7980 	sll	t7,t6,0x6
     ed8:	020fc021 	addu	t8,s0,t7
     edc:	0218082b 	sltu	at,s0,t8
     ee0:	1020000b 	beqz	at,f10 <Collider_JntSphSetAT+0x6c>
     ee4:	02402025 	move	a0,s2
     ee8:	0c000000 	jal	0 <func_8005B280>
     eec:	02002825 	move	a1,s0
     ef0:	8e280018 	lw	t0,24(s1)
     ef4:	8e39001c 	lw	t9,28(s1)
     ef8:	26100040 	addiu	s0,s0,64
     efc:	00084980 	sll	t1,t0,0x6
     f00:	03295021 	addu	t2,t9,t1
     f04:	020a082b 	sltu	at,s0,t2
     f08:	5420fff7 	bnezl	at,ee8 <Collider_JntSphSetAT+0x44>
     f0c:	02402025 	move	a0,s2
     f10:	8fbf0024 	lw	ra,36(sp)
     f14:	8fb00018 	lw	s0,24(sp)
     f18:	8fb1001c 	lw	s1,28(sp)
     f1c:	8fb20020 	lw	s2,32(sp)
     f20:	27bd0028 	addiu	sp,sp,40
     f24:	03e00008 	jr	ra
     f28:	24020001 	li	v0,1

00000f2c <Collider_JntSphSetAC>:
     f2c:	27bdffd8 	addiu	sp,sp,-40
     f30:	afbf0024 	sw	ra,36(sp)
     f34:	afb20020 	sw	s2,32(sp)
     f38:	afb1001c 	sw	s1,28(sp)
     f3c:	00809025 	move	s2,a0
     f40:	afb00018 	sw	s0,24(sp)
     f44:	00a08825 	move	s1,a1
     f48:	0c000000 	jal	0 <func_8005B280>
     f4c:	afa5002c 	sw	a1,44(sp)
     f50:	8fa5002c 	lw	a1,44(sp)
     f54:	8cae0018 	lw	t6,24(a1)
     f58:	8cb0001c 	lw	s0,28(a1)
     f5c:	000e7980 	sll	t7,t6,0x6
     f60:	020fc021 	addu	t8,s0,t7
     f64:	0218082b 	sltu	at,s0,t8
     f68:	1020000b 	beqz	at,f98 <Collider_JntSphSetAC+0x6c>
     f6c:	02402025 	move	a0,s2
     f70:	0c000000 	jal	0 <func_8005B280>
     f74:	02002825 	move	a1,s0
     f78:	8e280018 	lw	t0,24(s1)
     f7c:	8e39001c 	lw	t9,28(s1)
     f80:	26100040 	addiu	s0,s0,64
     f84:	00084980 	sll	t1,t0,0x6
     f88:	03295021 	addu	t2,t9,t1
     f8c:	020a082b 	sltu	at,s0,t2
     f90:	5420fff7 	bnezl	at,f70 <Collider_JntSphSetAC+0x44>
     f94:	02402025 	move	a0,s2
     f98:	8fbf0024 	lw	ra,36(sp)
     f9c:	8fb00018 	lw	s0,24(sp)
     fa0:	8fb1001c 	lw	s1,28(sp)
     fa4:	8fb20020 	lw	s2,32(sp)
     fa8:	27bd0028 	addiu	sp,sp,40
     fac:	03e00008 	jr	ra
     fb0:	24020001 	li	v0,1

00000fb4 <Collider_JntSphSetOC>:
     fb4:	27bdffd8 	addiu	sp,sp,-40
     fb8:	afbf0024 	sw	ra,36(sp)
     fbc:	afb20020 	sw	s2,32(sp)
     fc0:	afb1001c 	sw	s1,28(sp)
     fc4:	00809025 	move	s2,a0
     fc8:	afb00018 	sw	s0,24(sp)
     fcc:	00a08825 	move	s1,a1
     fd0:	0c000000 	jal	0 <func_8005B280>
     fd4:	afa5002c 	sw	a1,44(sp)
     fd8:	8fa5002c 	lw	a1,44(sp)
     fdc:	8cae0018 	lw	t6,24(a1)
     fe0:	8cb0001c 	lw	s0,28(a1)
     fe4:	000e7980 	sll	t7,t6,0x6
     fe8:	020fc021 	addu	t8,s0,t7
     fec:	0218082b 	sltu	at,s0,t8
     ff0:	1020000b 	beqz	at,1020 <Collider_JntSphSetOC+0x6c>
     ff4:	02402025 	move	a0,s2
     ff8:	0c000000 	jal	0 <func_8005B280>
     ffc:	02002825 	move	a1,s0
    1000:	8e280018 	lw	t0,24(s1)
    1004:	8e39001c 	lw	t9,28(s1)
    1008:	26100040 	addiu	s0,s0,64
    100c:	00084980 	sll	t1,t0,0x6
    1010:	03295021 	addu	t2,t9,t1
    1014:	020a082b 	sltu	at,s0,t2
    1018:	5420fff7 	bnezl	at,ff8 <Collider_JntSphSetOC+0x44>
    101c:	02402025 	move	a0,s2
    1020:	8fbf0024 	lw	ra,36(sp)
    1024:	8fb00018 	lw	s0,24(sp)
    1028:	8fb1001c 	lw	s1,28(sp)
    102c:	8fb20020 	lw	s2,32(sp)
    1030:	27bd0028 	addiu	sp,sp,40
    1034:	03e00008 	jr	ra
    1038:	24020001 	li	v0,1

0000103c <Collider_InitCylinderDim>:
    103c:	27bdfff0 	addiu	sp,sp,-16
    1040:	3c0e0000 	lui	t6,0x0
    1044:	afa40010 	sw	a0,16(sp)
    1048:	25ce006c 	addiu	t6,t6,108
    104c:	8dd80000 	lw	t8,0(t6)
    1050:	27a30004 	addiu	v1,sp,4
    1054:	24020001 	li	v0,1
    1058:	ac780000 	sw	t8,0(v1)
    105c:	8dcf0004 	lw	t7,4(t6)
    1060:	8c680000 	lw	t0,0(v1)
    1064:	ac6f0004 	sw	t7,4(v1)
    1068:	8dd80008 	lw	t8,8(t6)
    106c:	ac780008 	sw	t8,8(v1)
    1070:	a8a80000 	swl	t0,0(a1)
    1074:	b8a80003 	swr	t0,3(a1)
    1078:	8c790004 	lw	t9,4(v1)
    107c:	a8b90004 	swl	t9,4(a1)
    1080:	b8b90007 	swr	t9,7(a1)
    1084:	8c680008 	lw	t0,8(v1)
    1088:	27bd0010 	addiu	sp,sp,16
    108c:	a8a80008 	swl	t0,8(a1)
    1090:	03e00008 	jr	ra
    1094:	b8a8000b 	swr	t0,11(a1)

00001098 <Collider_DestroyCylinderDim>:
    1098:	afa40000 	sw	a0,0(sp)
    109c:	afa50004 	sw	a1,4(sp)
    10a0:	03e00008 	jr	ra
    10a4:	24020001 	li	v0,1

000010a8 <Collider_SetCylinderDim>:
    10a8:	afa40000 	sw	a0,0(sp)
    10ac:	88cf0000 	lwl	t7,0(a2)
    10b0:	98cf0003 	lwr	t7,3(a2)
    10b4:	24020001 	li	v0,1
    10b8:	a8af0000 	swl	t7,0(a1)
    10bc:	b8af0003 	swr	t7,3(a1)
    10c0:	88ce0004 	lwl	t6,4(a2)
    10c4:	98ce0007 	lwr	t6,7(a2)
    10c8:	a8ae0004 	swl	t6,4(a1)
    10cc:	b8ae0007 	swr	t6,7(a1)
    10d0:	88cf0008 	lwl	t7,8(a2)
    10d4:	98cf000b 	lwr	t7,11(a2)
    10d8:	a8af0008 	swl	t7,8(a1)
    10dc:	03e00008 	jr	ra
    10e0:	b8af000b 	swr	t7,11(a1)

000010e4 <Collider_InitCylinder>:
    10e4:	27bdffe8 	addiu	sp,sp,-24
    10e8:	afbf0014 	sw	ra,20(sp)
    10ec:	afa40018 	sw	a0,24(sp)
    10f0:	0c000000 	jal	0 <func_8005B280>
    10f4:	afa5001c 	sw	a1,28(sp)
    10f8:	8fa5001c 	lw	a1,28(sp)
    10fc:	8fa40018 	lw	a0,24(sp)
    1100:	0c000000 	jal	0 <func_8005B280>
    1104:	24a50018 	addiu	a1,a1,24
    1108:	8fa5001c 	lw	a1,28(sp)
    110c:	8fa40018 	lw	a0,24(sp)
    1110:	0c000000 	jal	0 <func_8005B280>
    1114:	24a50040 	addiu	a1,a1,64
    1118:	8fbf0014 	lw	ra,20(sp)
    111c:	27bd0018 	addiu	sp,sp,24
    1120:	24020001 	li	v0,1
    1124:	03e00008 	jr	ra
    1128:	00000000 	nop

0000112c <Collider_DestroyCylinder>:
    112c:	27bdffe8 	addiu	sp,sp,-24
    1130:	afbf0014 	sw	ra,20(sp)
    1134:	afa40018 	sw	a0,24(sp)
    1138:	0c000000 	jal	0 <func_8005B280>
    113c:	afa5001c 	sw	a1,28(sp)
    1140:	8fa5001c 	lw	a1,28(sp)
    1144:	8fa40018 	lw	a0,24(sp)
    1148:	0c000000 	jal	0 <func_8005B280>
    114c:	24a50018 	addiu	a1,a1,24
    1150:	8fa5001c 	lw	a1,28(sp)
    1154:	8fa40018 	lw	a0,24(sp)
    1158:	0c000000 	jal	0 <func_8005B280>
    115c:	24a50040 	addiu	a1,a1,64
    1160:	8fbf0014 	lw	ra,20(sp)
    1164:	27bd0018 	addiu	sp,sp,24
    1168:	24020001 	li	v0,1
    116c:	03e00008 	jr	ra
    1170:	00000000 	nop

00001174 <Collider_SetCylinder_Actor>:
    1174:	27bdffe8 	addiu	sp,sp,-24
    1178:	afbf0014 	sw	ra,20(sp)
    117c:	afa40018 	sw	a0,24(sp)
    1180:	afa5001c 	sw	a1,28(sp)
    1184:	0c000000 	jal	0 <func_8005B280>
    1188:	afa60020 	sw	a2,32(sp)
    118c:	8fa5001c 	lw	a1,28(sp)
    1190:	8fa60020 	lw	a2,32(sp)
    1194:	8fa40018 	lw	a0,24(sp)
    1198:	24a50018 	addiu	a1,a1,24
    119c:	0c000000 	jal	0 <func_8005B280>
    11a0:	24c60008 	addiu	a2,a2,8
    11a4:	8fa5001c 	lw	a1,28(sp)
    11a8:	8fa60020 	lw	a2,32(sp)
    11ac:	8fa40018 	lw	a0,24(sp)
    11b0:	24a50040 	addiu	a1,a1,64
    11b4:	0c000000 	jal	0 <func_8005B280>
    11b8:	24c60020 	addiu	a2,a2,32
    11bc:	8fbf0014 	lw	ra,20(sp)
    11c0:	27bd0018 	addiu	sp,sp,24
    11c4:	24020001 	li	v0,1
    11c8:	03e00008 	jr	ra
    11cc:	00000000 	nop

000011d0 <Collider_SetCylinder_Set3>:
    11d0:	27bdffe8 	addiu	sp,sp,-24
    11d4:	afbf0014 	sw	ra,20(sp)
    11d8:	afa40018 	sw	a0,24(sp)
    11dc:	afa5001c 	sw	a1,28(sp)
    11e0:	0c000000 	jal	0 <func_8005B280>
    11e4:	afa70024 	sw	a3,36(sp)
    11e8:	8fa5001c 	lw	a1,28(sp)
    11ec:	8fa60024 	lw	a2,36(sp)
    11f0:	8fa40018 	lw	a0,24(sp)
    11f4:	24a50018 	addiu	a1,a1,24
    11f8:	0c000000 	jal	0 <func_8005B280>
    11fc:	24c60008 	addiu	a2,a2,8
    1200:	8fa5001c 	lw	a1,28(sp)
    1204:	8fa60024 	lw	a2,36(sp)
    1208:	8fa40018 	lw	a0,24(sp)
    120c:	24a50040 	addiu	a1,a1,64
    1210:	0c000000 	jal	0 <func_8005B280>
    1214:	24c60020 	addiu	a2,a2,32
    1218:	8fbf0014 	lw	ra,20(sp)
    121c:	27bd0018 	addiu	sp,sp,24
    1220:	24020001 	li	v0,1
    1224:	03e00008 	jr	ra
    1228:	00000000 	nop

0000122c <Collider_SetCylinder>:
    122c:	27bdffe8 	addiu	sp,sp,-24
    1230:	afbf0014 	sw	ra,20(sp)
    1234:	afa40018 	sw	a0,24(sp)
    1238:	afa5001c 	sw	a1,28(sp)
    123c:	0c000000 	jal	0 <func_8005B280>
    1240:	afa70024 	sw	a3,36(sp)
    1244:	8fa5001c 	lw	a1,28(sp)
    1248:	8fa60024 	lw	a2,36(sp)
    124c:	8fa40018 	lw	a0,24(sp)
    1250:	24a50018 	addiu	a1,a1,24
    1254:	0c000000 	jal	0 <func_8005B280>
    1258:	24c60008 	addiu	a2,a2,8
    125c:	8fa5001c 	lw	a1,28(sp)
    1260:	8fa60024 	lw	a2,36(sp)
    1264:	8fa40018 	lw	a0,24(sp)
    1268:	24a50040 	addiu	a1,a1,64
    126c:	0c000000 	jal	0 <func_8005B280>
    1270:	24c60020 	addiu	a2,a2,32
    1274:	8fbf0014 	lw	ra,20(sp)
    1278:	27bd0018 	addiu	sp,sp,24
    127c:	24020001 	li	v0,1
    1280:	03e00008 	jr	ra
    1284:	00000000 	nop

00001288 <Collider_CylinderSetAT>:
    1288:	27bdffe8 	addiu	sp,sp,-24
    128c:	afbf0014 	sw	ra,20(sp)
    1290:	afa40018 	sw	a0,24(sp)
    1294:	0c000000 	jal	0 <func_8005B280>
    1298:	afa5001c 	sw	a1,28(sp)
    129c:	8fa5001c 	lw	a1,28(sp)
    12a0:	8fa40018 	lw	a0,24(sp)
    12a4:	0c000000 	jal	0 <func_8005B280>
    12a8:	24a50018 	addiu	a1,a1,24
    12ac:	8fbf0014 	lw	ra,20(sp)
    12b0:	27bd0018 	addiu	sp,sp,24
    12b4:	24020001 	li	v0,1
    12b8:	03e00008 	jr	ra
    12bc:	00000000 	nop

000012c0 <Collider_CylinderSetAC>:
    12c0:	27bdffe8 	addiu	sp,sp,-24
    12c4:	afbf0014 	sw	ra,20(sp)
    12c8:	afa40018 	sw	a0,24(sp)
    12cc:	0c000000 	jal	0 <func_8005B280>
    12d0:	afa5001c 	sw	a1,28(sp)
    12d4:	8fa5001c 	lw	a1,28(sp)
    12d8:	8fa40018 	lw	a0,24(sp)
    12dc:	0c000000 	jal	0 <func_8005B280>
    12e0:	24a50018 	addiu	a1,a1,24
    12e4:	8fbf0014 	lw	ra,20(sp)
    12e8:	27bd0018 	addiu	sp,sp,24
    12ec:	24020001 	li	v0,1
    12f0:	03e00008 	jr	ra
    12f4:	00000000 	nop

000012f8 <Collider_CylinderSetOC>:
    12f8:	27bdffe8 	addiu	sp,sp,-24
    12fc:	afbf0014 	sw	ra,20(sp)
    1300:	afa40018 	sw	a0,24(sp)
    1304:	0c000000 	jal	0 <func_8005B280>
    1308:	afa5001c 	sw	a1,28(sp)
    130c:	8fa5001c 	lw	a1,28(sp)
    1310:	8fa40018 	lw	a0,24(sp)
    1314:	0c000000 	jal	0 <func_8005B280>
    1318:	24a50018 	addiu	a1,a1,24
    131c:	8fbf0014 	lw	ra,20(sp)
    1320:	27bd0018 	addiu	sp,sp,24
    1324:	24020001 	li	v0,1
    1328:	03e00008 	jr	ra
    132c:	00000000 	nop

00001330 <Collider_InitTrisItemDim>:
    1330:	3c0e0000 	lui	t6,0x0
    1334:	25ce0078 	addiu	t6,t6,120
    1338:	afa40000 	sw	a0,0(sp)
    133c:	25c80030 	addiu	t0,t6,48
    1340:	00a0c825 	move	t9,a1
    1344:	8dd80000 	lw	t8,0(t6)
    1348:	25ce000c 	addiu	t6,t6,12
    134c:	2739000c 	addiu	t9,t9,12
    1350:	af38fff4 	sw	t8,-12(t9)
    1354:	8dcffff8 	lw	t7,-8(t6)
    1358:	af2ffff8 	sw	t7,-8(t9)
    135c:	8dd8fffc 	lw	t8,-4(t6)
    1360:	15c8fff8 	bne	t6,t0,1344 <Collider_InitTrisItemDim+0x14>
    1364:	af38fffc 	sw	t8,-4(t9)
    1368:	8dd80000 	lw	t8,0(t6)
    136c:	24020001 	li	v0,1
    1370:	03e00008 	jr	ra
    1374:	af380000 	sw	t8,0(t9)

00001378 <Collider_DestroyTrisItemDim>:
    1378:	afa40000 	sw	a0,0(sp)
    137c:	afa50004 	sw	a1,4(sp)
    1380:	03e00008 	jr	ra
    1384:	24020001 	li	v0,1

00001388 <Collider_SetTrisItemDim>:
    1388:	27bdffb0 	addiu	sp,sp,-80
    138c:	afa40050 	sw	a0,80(sp)
    1390:	24a40024 	addiu	a0,a1,36
    1394:	afb00028 	sw	s0,40(sp)
    1398:	00a4082b 	sltu	at,a1,a0
    139c:	00a08025 	move	s0,a1
    13a0:	afbf002c 	sw	ra,44(sp)
    13a4:	afa60058 	sw	a2,88(sp)
    13a8:	00a01025 	move	v0,a1
    13ac:	1020000b 	beqz	at,13dc <Collider_SetTrisItemDim+0x54>
    13b0:	00c01825 	move	v1,a2
    13b4:	8c6f0000 	lw	t7,0(v1)
    13b8:	2442000c 	addiu	v0,v0,12
    13bc:	0044082b 	sltu	at,v0,a0
    13c0:	ac4ffff4 	sw	t7,-12(v0)
    13c4:	8c6e0004 	lw	t6,4(v1)
    13c8:	2463000c 	addiu	v1,v1,12
    13cc:	ac4efff8 	sw	t6,-8(v0)
    13d0:	8c6ffffc 	lw	t7,-4(v1)
    13d4:	1420fff7 	bnez	at,13b4 <Collider_SetTrisItemDim+0x2c>
    13d8:	ac4ffffc 	sw	t7,-4(v0)
    13dc:	8fa40058 	lw	a0,88(sp)
    13e0:	27b90040 	addiu	t9,sp,64
    13e4:	27a8003c 	addiu	t0,sp,60
    13e8:	27a90038 	addiu	t1,sp,56
    13ec:	afa90018 	sw	t1,24(sp)
    13f0:	afa80014 	sw	t0,20(sp)
    13f4:	afb90010 	sw	t9,16(sp)
    13f8:	27a70044 	addiu	a3,sp,68
    13fc:	2485000c 	addiu	a1,a0,12
    1400:	0c000000 	jal	0 <func_8005B280>
    1404:	24860018 	addiu	a2,a0,24
    1408:	c7a40044 	lwc1	$f4,68(sp)
    140c:	24020001 	li	v0,1
    1410:	e6040024 	swc1	$f4,36(s0)
    1414:	c7a60040 	lwc1	$f6,64(sp)
    1418:	e6060028 	swc1	$f6,40(s0)
    141c:	c7a8003c 	lwc1	$f8,60(sp)
    1420:	e608002c 	swc1	$f8,44(s0)
    1424:	c7aa0038 	lwc1	$f10,56(sp)
    1428:	e60a0030 	swc1	$f10,48(s0)
    142c:	8fbf002c 	lw	ra,44(sp)
    1430:	8fb00028 	lw	s0,40(sp)
    1434:	27bd0050 	addiu	sp,sp,80
    1438:	03e00008 	jr	ra
    143c:	00000000 	nop

00001440 <Collider_InitTrisItem>:
    1440:	27bdffe8 	addiu	sp,sp,-24
    1444:	afbf0014 	sw	ra,20(sp)
    1448:	afa40018 	sw	a0,24(sp)
    144c:	0c000000 	jal	0 <func_8005B280>
    1450:	afa5001c 	sw	a1,28(sp)
    1454:	8fa5001c 	lw	a1,28(sp)
    1458:	8fa40018 	lw	a0,24(sp)
    145c:	0c000000 	jal	0 <func_8005B280>
    1460:	24a50028 	addiu	a1,a1,40
    1464:	8fbf0014 	lw	ra,20(sp)
    1468:	27bd0018 	addiu	sp,sp,24
    146c:	24020001 	li	v0,1
    1470:	03e00008 	jr	ra
    1474:	00000000 	nop

00001478 <Collider_DestroyTrisItem>:
    1478:	27bdffe8 	addiu	sp,sp,-24
    147c:	afbf0014 	sw	ra,20(sp)
    1480:	afa40018 	sw	a0,24(sp)
    1484:	0c000000 	jal	0 <func_8005B280>
    1488:	afa5001c 	sw	a1,28(sp)
    148c:	8fa5001c 	lw	a1,28(sp)
    1490:	8fa40018 	lw	a0,24(sp)
    1494:	0c000000 	jal	0 <func_8005B280>
    1498:	24a50028 	addiu	a1,a1,40
    149c:	8fbf0014 	lw	ra,20(sp)
    14a0:	27bd0018 	addiu	sp,sp,24
    14a4:	24020001 	li	v0,1
    14a8:	03e00008 	jr	ra
    14ac:	00000000 	nop

000014b0 <Collider_SetTrisItem>:
    14b0:	27bdffe8 	addiu	sp,sp,-24
    14b4:	afbf0014 	sw	ra,20(sp)
    14b8:	afa40018 	sw	a0,24(sp)
    14bc:	afa5001c 	sw	a1,28(sp)
    14c0:	0c000000 	jal	0 <func_8005B280>
    14c4:	afa60020 	sw	a2,32(sp)
    14c8:	8fa5001c 	lw	a1,28(sp)
    14cc:	8fa60020 	lw	a2,32(sp)
    14d0:	8fa40018 	lw	a0,24(sp)
    14d4:	24a50028 	addiu	a1,a1,40
    14d8:	0c000000 	jal	0 <func_8005B280>
    14dc:	24c60018 	addiu	a2,a2,24
    14e0:	8fbf0014 	lw	ra,20(sp)
    14e4:	27bd0018 	addiu	sp,sp,24
    14e8:	24020001 	li	v0,1
    14ec:	03e00008 	jr	ra
    14f0:	00000000 	nop

000014f4 <Collider_TrisItemSetAT>:
    14f4:	27bdffe8 	addiu	sp,sp,-24
    14f8:	afbf0014 	sw	ra,20(sp)
    14fc:	0c000000 	jal	0 <func_8005B280>
    1500:	00000000 	nop
    1504:	8fbf0014 	lw	ra,20(sp)
    1508:	27bd0018 	addiu	sp,sp,24
    150c:	24020001 	li	v0,1
    1510:	03e00008 	jr	ra
    1514:	00000000 	nop

00001518 <Collider_TrisItemSetAC>:
    1518:	27bdffe8 	addiu	sp,sp,-24
    151c:	afbf0014 	sw	ra,20(sp)
    1520:	0c000000 	jal	0 <func_8005B280>
    1524:	00000000 	nop
    1528:	8fbf0014 	lw	ra,20(sp)
    152c:	27bd0018 	addiu	sp,sp,24
    1530:	24020001 	li	v0,1
    1534:	03e00008 	jr	ra
    1538:	00000000 	nop

0000153c <Collider_TrisItemSetOC>:
    153c:	27bdffe8 	addiu	sp,sp,-24
    1540:	afbf0014 	sw	ra,20(sp)
    1544:	0c000000 	jal	0 <func_8005B280>
    1548:	00000000 	nop
    154c:	8fbf0014 	lw	ra,20(sp)
    1550:	27bd0018 	addiu	sp,sp,24
    1554:	24020001 	li	v0,1
    1558:	03e00008 	jr	ra
    155c:	00000000 	nop

00001560 <Collider_InitTris>:
    1560:	27bdffe8 	addiu	sp,sp,-24
    1564:	afbf0014 	sw	ra,20(sp)
    1568:	0c000000 	jal	0 <func_8005B280>
    156c:	afa5001c 	sw	a1,28(sp)
    1570:	8fa5001c 	lw	a1,28(sp)
    1574:	24020001 	li	v0,1
    1578:	aca00018 	sw	zero,24(a1)
    157c:	aca0001c 	sw	zero,28(a1)
    1580:	8fbf0014 	lw	ra,20(sp)
    1584:	27bd0018 	addiu	sp,sp,24
    1588:	03e00008 	jr	ra
    158c:	00000000 	nop

00001590 <Collider_FreeTris>:
    1590:	27bdffd8 	addiu	sp,sp,-40
    1594:	afbf0024 	sw	ra,36(sp)
    1598:	afb2001c 	sw	s2,28(sp)
    159c:	afb10018 	sw	s1,24(sp)
    15a0:	00a08825 	move	s1,a1
    15a4:	00809025 	move	s2,a0
    15a8:	afb30020 	sw	s3,32(sp)
    15ac:	0c000000 	jal	0 <func_8005B280>
    15b0:	afb00014 	sw	s0,20(sp)
    15b4:	8e2e0018 	lw	t6,24(s1)
    15b8:	2413005c 	li	s3,92
    15bc:	8e24001c 	lw	a0,28(s1)
    15c0:	01d30019 	multu	t6,s3
    15c4:	00808025 	move	s0,a0
    15c8:	00007812 	mflo	t7
    15cc:	008fc021 	addu	t8,a0,t7
    15d0:	0098082b 	sltu	at,a0,t8
    15d4:	1020000d 	beqz	at,160c <Collider_FreeTris+0x7c>
    15d8:	00000000 	nop
    15dc:	02402025 	move	a0,s2
    15e0:	0c000000 	jal	0 <func_8005B280>
    15e4:	02002825 	move	a1,s0
    15e8:	8e390018 	lw	t9,24(s1)
    15ec:	8e24001c 	lw	a0,28(s1)
    15f0:	2610005c 	addiu	s0,s0,92
    15f4:	03330019 	multu	t9,s3
    15f8:	00004012 	mflo	t0
    15fc:	00884821 	addu	t1,a0,t0
    1600:	0209082b 	sltu	at,s0,t1
    1604:	5420fff6 	bnezl	at,15e0 <Collider_FreeTris+0x50>
    1608:	02402025 	move	a0,s2
    160c:	10800005 	beqz	a0,1624 <Collider_FreeTris+0x94>
    1610:	ae200018 	sw	zero,24(s1)
    1614:	3c050000 	lui	a1,0x0
    1618:	24a501a0 	addiu	a1,a1,416
    161c:	0c000000 	jal	0 <func_8005B280>
    1620:	24060833 	li	a2,2099
    1624:	ae20001c 	sw	zero,28(s1)
    1628:	8fbf0024 	lw	ra,36(sp)
    162c:	8fb30020 	lw	s3,32(sp)
    1630:	8fb2001c 	lw	s2,28(sp)
    1634:	8fb10018 	lw	s1,24(sp)
    1638:	8fb00014 	lw	s0,20(sp)
    163c:	27bd0028 	addiu	sp,sp,40
    1640:	03e00008 	jr	ra
    1644:	24020001 	li	v0,1

00001648 <Collider_DestroyTris>:
    1648:	27bdffd8 	addiu	sp,sp,-40
    164c:	afbf0024 	sw	ra,36(sp)
    1650:	afb2001c 	sw	s2,28(sp)
    1654:	afb10018 	sw	s1,24(sp)
    1658:	00a08825 	move	s1,a1
    165c:	00809025 	move	s2,a0
    1660:	afb30020 	sw	s3,32(sp)
    1664:	0c000000 	jal	0 <func_8005B280>
    1668:	afb00014 	sw	s0,20(sp)
    166c:	8e2e0018 	lw	t6,24(s1)
    1670:	2413005c 	li	s3,92
    1674:	8e30001c 	lw	s0,28(s1)
    1678:	01d30019 	multu	t6,s3
    167c:	00007812 	mflo	t7
    1680:	020fc021 	addu	t8,s0,t7
    1684:	0218082b 	sltu	at,s0,t8
    1688:	1020000c 	beqz	at,16bc <Collider_DestroyTris+0x74>
    168c:	02402025 	move	a0,s2
    1690:	0c000000 	jal	0 <func_8005B280>
    1694:	02002825 	move	a1,s0
    1698:	8e280018 	lw	t0,24(s1)
    169c:	8e39001c 	lw	t9,28(s1)
    16a0:	2610005c 	addiu	s0,s0,92
    16a4:	01130019 	multu	t0,s3
    16a8:	00004812 	mflo	t1
    16ac:	03295021 	addu	t2,t9,t1
    16b0:	020a082b 	sltu	at,s0,t2
    16b4:	5420fff6 	bnezl	at,1690 <Collider_DestroyTris+0x48>
    16b8:	02402025 	move	a0,s2
    16bc:	ae200018 	sw	zero,24(s1)
    16c0:	ae20001c 	sw	zero,28(s1)
    16c4:	8fbf0024 	lw	ra,36(sp)
    16c8:	8fb30020 	lw	s3,32(sp)
    16cc:	8fb2001c 	lw	s2,28(sp)
    16d0:	8fb10018 	lw	s1,24(sp)
    16d4:	8fb00014 	lw	s0,20(sp)
    16d8:	27bd0028 	addiu	sp,sp,40
    16dc:	03e00008 	jr	ra
    16e0:	24020001 	li	v0,1

000016e4 <Collider_SetTris_Set3>:
    16e4:	27bdffd0 	addiu	sp,sp,-48
    16e8:	afbf002c 	sw	ra,44(sp)
    16ec:	afb30024 	sw	s3,36(sp)
    16f0:	afb20020 	sw	s2,32(sp)
    16f4:	00a09025 	move	s2,a1
    16f8:	00809825 	move	s3,a0
    16fc:	afb40028 	sw	s4,40(sp)
    1700:	afb1001c 	sw	s1,28(sp)
    1704:	afb00018 	sw	s0,24(sp)
    1708:	0c000000 	jal	0 <func_8005B280>
    170c:	afa7003c 	sw	a3,60(sp)
    1710:	8fae003c 	lw	t6,60(sp)
    1714:	3c050000 	lui	a1,0x0
    1718:	24a501b8 	addiu	a1,a1,440
    171c:	8dcf0008 	lw	t7,8(t6)
    1720:	2406086c 	li	a2,2156
    1724:	000f2080 	sll	a0,t7,0x2
    1728:	008f2023 	subu	a0,a0,t7
    172c:	000420c0 	sll	a0,a0,0x3
    1730:	008f2023 	subu	a0,a0,t7
    1734:	00042080 	sll	a0,a0,0x2
    1738:	0c000000 	jal	0 <func_8005B280>
    173c:	ae4f0018 	sw	t7,24(s2)
    1740:	1440000d 	bnez	v0,1778 <Collider_SetTris_Set3+0x94>
    1744:	ae42001c 	sw	v0,28(s2)
    1748:	3c040000 	lui	a0,0x0
    174c:	ae400018 	sw	zero,24(s2)
    1750:	0c000000 	jal	0 <func_8005B280>
    1754:	248401d0 	addiu	a0,a0,464
    1758:	3c040000 	lui	a0,0x0
    175c:	0c000000 	jal	0 <func_8005B280>
    1760:	248401d8 	addiu	a0,a0,472
    1764:	3c040000 	lui	a0,0x0
    1768:	0c000000 	jal	0 <func_8005B280>
    176c:	24840204 	addiu	a0,a0,516
    1770:	1000001d 	b	17e8 <Collider_SetTris_Set3+0x104>
    1774:	00001025 	move	v0,zero
    1778:	8e590018 	lw	t9,24(s2)
    177c:	2414005c 	li	s4,92
    1780:	8e50001c 	lw	s0,28(s2)
    1784:	03340019 	multu	t9,s4
    1788:	8fb8003c 	lw	t8,60(sp)
    178c:	8f11000c 	lw	s1,12(t8)
    1790:	00004012 	mflo	t0
    1794:	02084821 	addu	t1,s0,t0
    1798:	0209082b 	sltu	at,s0,t1
    179c:	10200011 	beqz	at,17e4 <Collider_SetTris_Set3+0x100>
    17a0:	02602025 	move	a0,s3
    17a4:	0c000000 	jal	0 <func_8005B280>
    17a8:	02002825 	move	a1,s0
    17ac:	02602025 	move	a0,s3
    17b0:	02002825 	move	a1,s0
    17b4:	0c000000 	jal	0 <func_8005B280>
    17b8:	02203025 	move	a2,s1
    17bc:	8e4b0018 	lw	t3,24(s2)
    17c0:	8e4a001c 	lw	t2,28(s2)
    17c4:	2610005c 	addiu	s0,s0,92
    17c8:	01740019 	multu	t3,s4
    17cc:	2631003c 	addiu	s1,s1,60
    17d0:	00006012 	mflo	t4
    17d4:	014c6821 	addu	t5,t2,t4
    17d8:	020d082b 	sltu	at,s0,t5
    17dc:	5420fff1 	bnezl	at,17a4 <Collider_SetTris_Set3+0xc0>
    17e0:	02602025 	move	a0,s3
    17e4:	24020001 	li	v0,1
    17e8:	8fbf002c 	lw	ra,44(sp)
    17ec:	8fb00018 	lw	s0,24(sp)
    17f0:	8fb1001c 	lw	s1,28(sp)
    17f4:	8fb20020 	lw	s2,32(sp)
    17f8:	8fb30024 	lw	s3,36(sp)
    17fc:	8fb40028 	lw	s4,40(sp)
    1800:	03e00008 	jr	ra
    1804:	27bd0030 	addiu	sp,sp,48

00001808 <Collider_SetTris_Set5>:
    1808:	27bdffd0 	addiu	sp,sp,-48
    180c:	afbf002c 	sw	ra,44(sp)
    1810:	afb30024 	sw	s3,36(sp)
    1814:	afb20020 	sw	s2,32(sp)
    1818:	00809025 	move	s2,a0
    181c:	00a09825 	move	s3,a1
    1820:	afb40028 	sw	s4,40(sp)
    1824:	afb1001c 	sw	s1,28(sp)
    1828:	afb00018 	sw	s0,24(sp)
    182c:	0c000000 	jal	0 <func_8005B280>
    1830:	afa7003c 	sw	a3,60(sp)
    1834:	8fae003c 	lw	t6,60(sp)
    1838:	3c050000 	lui	a1,0x0
    183c:	24a50208 	addiu	a1,a1,520
    1840:	8dcf0008 	lw	t7,8(t6)
    1844:	2406089f 	li	a2,2207
    1848:	000f2080 	sll	a0,t7,0x2
    184c:	008f2023 	subu	a0,a0,t7
    1850:	000420c0 	sll	a0,a0,0x3
    1854:	008f2023 	subu	a0,a0,t7
    1858:	00042080 	sll	a0,a0,0x2
    185c:	0c000000 	jal	0 <func_8005B280>
    1860:	ae6f0018 	sw	t7,24(s3)
    1864:	1440000d 	bnez	v0,189c <Collider_SetTris_Set5+0x94>
    1868:	ae62001c 	sw	v0,28(s3)
    186c:	3c040000 	lui	a0,0x0
    1870:	0c000000 	jal	0 <func_8005B280>
    1874:	24840220 	addiu	a0,a0,544
    1878:	3c040000 	lui	a0,0x0
    187c:	0c000000 	jal	0 <func_8005B280>
    1880:	24840228 	addiu	a0,a0,552
    1884:	3c040000 	lui	a0,0x0
    1888:	0c000000 	jal	0 <func_8005B280>
    188c:	24840254 	addiu	a0,a0,596
    1890:	ae600018 	sw	zero,24(s3)
    1894:	1000001d 	b	190c <Collider_SetTris_Set5+0x104>
    1898:	00001025 	move	v0,zero
    189c:	8e790018 	lw	t9,24(s3)
    18a0:	2414005c 	li	s4,92
    18a4:	8e70001c 	lw	s0,28(s3)
    18a8:	03340019 	multu	t9,s4
    18ac:	8fb8003c 	lw	t8,60(sp)
    18b0:	8f11000c 	lw	s1,12(t8)
    18b4:	00004012 	mflo	t0
    18b8:	02084821 	addu	t1,s0,t0
    18bc:	0209082b 	sltu	at,s0,t1
    18c0:	10200011 	beqz	at,1908 <Collider_SetTris_Set5+0x100>
    18c4:	02402025 	move	a0,s2
    18c8:	0c000000 	jal	0 <func_8005B280>
    18cc:	02002825 	move	a1,s0
    18d0:	02402025 	move	a0,s2
    18d4:	02002825 	move	a1,s0
    18d8:	0c000000 	jal	0 <func_8005B280>
    18dc:	02203025 	move	a2,s1
    18e0:	8e6b0018 	lw	t3,24(s3)
    18e4:	8e6a001c 	lw	t2,28(s3)
    18e8:	2610005c 	addiu	s0,s0,92
    18ec:	01740019 	multu	t3,s4
    18f0:	2631003c 	addiu	s1,s1,60
    18f4:	00006012 	mflo	t4
    18f8:	014c6821 	addu	t5,t2,t4
    18fc:	020d082b 	sltu	at,s0,t5
    1900:	5420fff1 	bnezl	at,18c8 <Collider_SetTris_Set5+0xc0>
    1904:	02402025 	move	a0,s2
    1908:	24020001 	li	v0,1
    190c:	8fbf002c 	lw	ra,44(sp)
    1910:	8fb00018 	lw	s0,24(sp)
    1914:	8fb1001c 	lw	s1,28(sp)
    1918:	8fb20020 	lw	s2,32(sp)
    191c:	8fb30024 	lw	s3,36(sp)
    1920:	8fb40028 	lw	s4,40(sp)
    1924:	03e00008 	jr	ra
    1928:	27bd0030 	addiu	sp,sp,48

0000192c <Collider_SetTris>:
    192c:	27bdffd0 	addiu	sp,sp,-48
    1930:	afbf002c 	sw	ra,44(sp)
    1934:	afb30024 	sw	s3,36(sp)
    1938:	afb20020 	sw	s2,32(sp)
    193c:	00a09025 	move	s2,a1
    1940:	00809825 	move	s3,a0
    1944:	afb40028 	sw	s4,40(sp)
    1948:	afb1001c 	sw	s1,28(sp)
    194c:	afb00018 	sw	s0,24(sp)
    1950:	0c000000 	jal	0 <func_8005B280>
    1954:	afa7003c 	sw	a3,60(sp)
    1958:	8fae003c 	lw	t6,60(sp)
    195c:	8fa20040 	lw	v0,64(sp)
    1960:	3c040000 	lui	a0,0x0
    1964:	8dcf0008 	lw	t7,8(t6)
    1968:	ae42001c 	sw	v0,28(s2)
    196c:	14400006 	bnez	v0,1988 <Collider_SetTris+0x5c>
    1970:	ae4f0018 	sw	t7,24(s2)
    1974:	3c050000 	lui	a1,0x0
    1978:	24a50278 	addiu	a1,a1,632
    197c:	24840258 	addiu	a0,a0,600
    1980:	0c000000 	jal	0 <func_8005B280>
    1984:	240608d2 	li	a2,2258
    1988:	8e590018 	lw	t9,24(s2)
    198c:	2414005c 	li	s4,92
    1990:	8e50001c 	lw	s0,28(s2)
    1994:	03340019 	multu	t9,s4
    1998:	8fb8003c 	lw	t8,60(sp)
    199c:	8f11000c 	lw	s1,12(t8)
    19a0:	00004012 	mflo	t0
    19a4:	02084821 	addu	t1,s0,t0
    19a8:	0209082b 	sltu	at,s0,t1
    19ac:	10200011 	beqz	at,19f4 <Collider_SetTris+0xc8>
    19b0:	02602025 	move	a0,s3
    19b4:	0c000000 	jal	0 <func_8005B280>
    19b8:	02002825 	move	a1,s0
    19bc:	02602025 	move	a0,s3
    19c0:	02002825 	move	a1,s0
    19c4:	0c000000 	jal	0 <func_8005B280>
    19c8:	02203025 	move	a2,s1
    19cc:	8e4b0018 	lw	t3,24(s2)
    19d0:	8e4a001c 	lw	t2,28(s2)
    19d4:	2610005c 	addiu	s0,s0,92
    19d8:	01740019 	multu	t3,s4
    19dc:	2631003c 	addiu	s1,s1,60
    19e0:	00006012 	mflo	t4
    19e4:	014c6821 	addu	t5,t2,t4
    19e8:	020d082b 	sltu	at,s0,t5
    19ec:	5420fff1 	bnezl	at,19b4 <Collider_SetTris+0x88>
    19f0:	02602025 	move	a0,s3
    19f4:	8fbf002c 	lw	ra,44(sp)
    19f8:	8fb00018 	lw	s0,24(sp)
    19fc:	8fb1001c 	lw	s1,28(sp)
    1a00:	8fb20020 	lw	s2,32(sp)
    1a04:	8fb30024 	lw	s3,36(sp)
    1a08:	8fb40028 	lw	s4,40(sp)
    1a0c:	27bd0030 	addiu	sp,sp,48
    1a10:	03e00008 	jr	ra
    1a14:	24020001 	li	v0,1

00001a18 <Collider_TrisSetAT>:
    1a18:	27bdffd8 	addiu	sp,sp,-40
    1a1c:	afbf0024 	sw	ra,36(sp)
    1a20:	afb2001c 	sw	s2,28(sp)
    1a24:	afb10018 	sw	s1,24(sp)
    1a28:	00809025 	move	s2,a0
    1a2c:	afb30020 	sw	s3,32(sp)
    1a30:	afb00014 	sw	s0,20(sp)
    1a34:	00a08825 	move	s1,a1
    1a38:	0c000000 	jal	0 <func_8005B280>
    1a3c:	afa5002c 	sw	a1,44(sp)
    1a40:	8fa5002c 	lw	a1,44(sp)
    1a44:	2413005c 	li	s3,92
    1a48:	8cae0018 	lw	t6,24(a1)
    1a4c:	8cb0001c 	lw	s0,28(a1)
    1a50:	01d30019 	multu	t6,s3
    1a54:	00007812 	mflo	t7
    1a58:	020fc021 	addu	t8,s0,t7
    1a5c:	0218082b 	sltu	at,s0,t8
    1a60:	1020000c 	beqz	at,1a94 <Collider_TrisSetAT+0x7c>
    1a64:	02402025 	move	a0,s2
    1a68:	0c000000 	jal	0 <func_8005B280>
    1a6c:	02002825 	move	a1,s0
    1a70:	8e280018 	lw	t0,24(s1)
    1a74:	8e39001c 	lw	t9,28(s1)
    1a78:	2610005c 	addiu	s0,s0,92
    1a7c:	01130019 	multu	t0,s3
    1a80:	00004812 	mflo	t1
    1a84:	03295021 	addu	t2,t9,t1
    1a88:	020a082b 	sltu	at,s0,t2
    1a8c:	5420fff6 	bnezl	at,1a68 <Collider_TrisSetAT+0x50>
    1a90:	02402025 	move	a0,s2
    1a94:	8fbf0024 	lw	ra,36(sp)
    1a98:	8fb00014 	lw	s0,20(sp)
    1a9c:	8fb10018 	lw	s1,24(sp)
    1aa0:	8fb2001c 	lw	s2,28(sp)
    1aa4:	8fb30020 	lw	s3,32(sp)
    1aa8:	27bd0028 	addiu	sp,sp,40
    1aac:	03e00008 	jr	ra
    1ab0:	24020001 	li	v0,1

00001ab4 <Collider_TrisSetAC>:
    1ab4:	27bdffd8 	addiu	sp,sp,-40
    1ab8:	afbf0024 	sw	ra,36(sp)
    1abc:	afb2001c 	sw	s2,28(sp)
    1ac0:	afb10018 	sw	s1,24(sp)
    1ac4:	00809025 	move	s2,a0
    1ac8:	afb30020 	sw	s3,32(sp)
    1acc:	afb00014 	sw	s0,20(sp)
    1ad0:	00a08825 	move	s1,a1
    1ad4:	0c000000 	jal	0 <func_8005B280>
    1ad8:	afa5002c 	sw	a1,44(sp)
    1adc:	8fa5002c 	lw	a1,44(sp)
    1ae0:	2413005c 	li	s3,92
    1ae4:	8cae0018 	lw	t6,24(a1)
    1ae8:	8cb0001c 	lw	s0,28(a1)
    1aec:	01d30019 	multu	t6,s3
    1af0:	00007812 	mflo	t7
    1af4:	020fc021 	addu	t8,s0,t7
    1af8:	0218082b 	sltu	at,s0,t8
    1afc:	1020000c 	beqz	at,1b30 <Collider_TrisSetAC+0x7c>
    1b00:	02402025 	move	a0,s2
    1b04:	0c000000 	jal	0 <func_8005B280>
    1b08:	02002825 	move	a1,s0
    1b0c:	8e280018 	lw	t0,24(s1)
    1b10:	8e39001c 	lw	t9,28(s1)
    1b14:	2610005c 	addiu	s0,s0,92
    1b18:	01130019 	multu	t0,s3
    1b1c:	00004812 	mflo	t1
    1b20:	03295021 	addu	t2,t9,t1
    1b24:	020a082b 	sltu	at,s0,t2
    1b28:	5420fff6 	bnezl	at,1b04 <Collider_TrisSetAC+0x50>
    1b2c:	02402025 	move	a0,s2
    1b30:	8fbf0024 	lw	ra,36(sp)
    1b34:	8fb00014 	lw	s0,20(sp)
    1b38:	8fb10018 	lw	s1,24(sp)
    1b3c:	8fb2001c 	lw	s2,28(sp)
    1b40:	8fb30020 	lw	s3,32(sp)
    1b44:	27bd0028 	addiu	sp,sp,40
    1b48:	03e00008 	jr	ra
    1b4c:	24020001 	li	v0,1

00001b50 <Collider_TrisSetOC>:
    1b50:	27bdffd8 	addiu	sp,sp,-40
    1b54:	afbf0024 	sw	ra,36(sp)
    1b58:	afb2001c 	sw	s2,28(sp)
    1b5c:	afb10018 	sw	s1,24(sp)
    1b60:	00809025 	move	s2,a0
    1b64:	afb30020 	sw	s3,32(sp)
    1b68:	afb00014 	sw	s0,20(sp)
    1b6c:	00a08825 	move	s1,a1
    1b70:	0c000000 	jal	0 <func_8005B280>
    1b74:	afa5002c 	sw	a1,44(sp)
    1b78:	8fa5002c 	lw	a1,44(sp)
    1b7c:	2413005c 	li	s3,92
    1b80:	8cae0018 	lw	t6,24(a1)
    1b84:	8cb0001c 	lw	s0,28(a1)
    1b88:	01d30019 	multu	t6,s3
    1b8c:	00007812 	mflo	t7
    1b90:	020fc021 	addu	t8,s0,t7
    1b94:	0218082b 	sltu	at,s0,t8
    1b98:	1020000c 	beqz	at,1bcc <Collider_TrisSetOC+0x7c>
    1b9c:	02402025 	move	a0,s2
    1ba0:	0c000000 	jal	0 <func_8005B280>
    1ba4:	02002825 	move	a1,s0
    1ba8:	8e280018 	lw	t0,24(s1)
    1bac:	8e39001c 	lw	t9,28(s1)
    1bb0:	2610005c 	addiu	s0,s0,92
    1bb4:	01130019 	multu	t0,s3
    1bb8:	00004812 	mflo	t1
    1bbc:	03295021 	addu	t2,t9,t1
    1bc0:	020a082b 	sltu	at,s0,t2
    1bc4:	5420fff6 	bnezl	at,1ba0 <Collider_TrisSetOC+0x50>
    1bc8:	02402025 	move	a0,s2
    1bcc:	8fbf0024 	lw	ra,36(sp)
    1bd0:	8fb00014 	lw	s0,20(sp)
    1bd4:	8fb10018 	lw	s1,24(sp)
    1bd8:	8fb2001c 	lw	s2,28(sp)
    1bdc:	8fb30020 	lw	s3,32(sp)
    1be0:	27bd0028 	addiu	sp,sp,40
    1be4:	03e00008 	jr	ra
    1be8:	24020001 	li	v0,1

00001bec <Collider_InitQuadDim>:
    1bec:	3c0e0000 	lui	t6,0x0
    1bf0:	25ce00ac 	addiu	t6,t6,172
    1bf4:	afa40000 	sw	a0,0(sp)
    1bf8:	25c8003c 	addiu	t0,t6,60
    1bfc:	00a0c825 	move	t9,a1
    1c00:	8dd80000 	lw	t8,0(t6)
    1c04:	25ce000c 	addiu	t6,t6,12
    1c08:	2739000c 	addiu	t9,t9,12
    1c0c:	af38fff4 	sw	t8,-12(t9)
    1c10:	8dcffff8 	lw	t7,-8(t6)
    1c14:	af2ffff8 	sw	t7,-8(t9)
    1c18:	8dd8fffc 	lw	t8,-4(t6)
    1c1c:	15c8fff8 	bne	t6,t0,1c00 <Collider_InitQuadDim+0x14>
    1c20:	af38fffc 	sw	t8,-4(t9)
    1c24:	8dd80000 	lw	t8,0(t6)
    1c28:	24020001 	li	v0,1
    1c2c:	03e00008 	jr	ra
    1c30:	af380000 	sw	t8,0(t9)

00001c34 <Collider_DestroyQuadDim>:
    1c34:	afa40000 	sw	a0,0(sp)
    1c38:	afa50004 	sw	a1,4(sp)
    1c3c:	03e00008 	jr	ra
    1c40:	24020001 	li	v0,1

00001c44 <func_8005CEC4>:
    1c44:	3c010000 	lui	at,0x0
    1c48:	c4240744 	lwc1	$f4,1860(at)
    1c4c:	afa40000 	sw	a0,0(sp)
    1c50:	24020001 	li	v0,1
    1c54:	03e00008 	jr	ra
    1c58:	e4a4003c 	swc1	$f4,60(a1)

00001c5c <func_8005CEDC>:
    1c5c:	c4840018 	lwc1	$f4,24(a0)
    1c60:	c4860024 	lwc1	$f6,36(a0)
    1c64:	3c013f00 	lui	at,0x3f00
    1c68:	44810000 	mtc1	at,$f0
    1c6c:	46062200 	add.s	$f8,$f4,$f6
    1c70:	c4840028 	lwc1	$f4,40(a0)
    1c74:	c492001c 	lwc1	$f18,28(a0)
    1c78:	46004282 	mul.s	$f10,$f8,$f0
    1c7c:	46049180 	add.s	$f6,$f18,$f4
    1c80:	c492002c 	lwc1	$f18,44(a0)
    1c84:	46003202 	mul.s	$f8,$f6,$f0
    1c88:	4600540d 	trunc.w.s	$f16,$f10
    1c8c:	4600428d 	trunc.w.s	$f10,$f8
    1c90:	440f8000 	mfc1	t7,$f16
    1c94:	c4900020 	lwc1	$f16,32(a0)
    1c98:	44195000 	mfc1	t9,$f10
    1c9c:	46128100 	add.s	$f4,$f16,$f18
    1ca0:	c490000c 	lwc1	$f16,12(a0)
    1ca4:	c48a0000 	lwc1	$f10,0(a0)
    1ca8:	a48f0030 	sh	t7,48(a0)
    1cac:	46002182 	mul.s	$f6,$f4,$f0
    1cb0:	46105480 	add.s	$f18,$f10,$f16
    1cb4:	c48a0010 	lwc1	$f10,16(a0)
    1cb8:	a4990032 	sh	t9,50(a0)
    1cbc:	46009102 	mul.s	$f4,$f18,$f0
    1cc0:	4600320d 	trunc.w.s	$f8,$f6
    1cc4:	4600218d 	trunc.w.s	$f6,$f4
    1cc8:	44094000 	mfc1	t1,$f8
    1ccc:	c4880004 	lwc1	$f8,4(a0)
    1cd0:	440b3000 	mfc1	t3,$f6
    1cd4:	460a4400 	add.s	$f16,$f8,$f10
    1cd8:	c4880014 	lwc1	$f8,20(a0)
    1cdc:	c4860008 	lwc1	$f6,8(a0)
    1ce0:	a4890034 	sh	t1,52(a0)
    1ce4:	46008482 	mul.s	$f18,$f16,$f0
    1ce8:	46083280 	add.s	$f10,$f6,$f8
    1cec:	a48b0036 	sh	t3,54(a0)
    1cf0:	46005402 	mul.s	$f16,$f10,$f0
    1cf4:	4600910d 	trunc.w.s	$f4,$f18
    1cf8:	4600848d 	trunc.w.s	$f18,$f16
    1cfc:	440d2000 	mfc1	t5,$f4
    1d00:	440f9000 	mfc1	t7,$f18
    1d04:	a48d0038 	sh	t5,56(a0)
    1d08:	03e00008 	jr	ra
    1d0c:	a48f003a 	sh	t7,58(a0)

00001d10 <Collider_SetQuadDim>:
    1d10:	27bdffe8 	addiu	sp,sp,-24
    1d14:	afbf0014 	sw	ra,20(sp)
    1d18:	afa40018 	sw	a0,24(sp)
    1d1c:	8ccf0000 	lw	t7,0(a2)
    1d20:	00a02025 	move	a0,a1
    1d24:	acaf0000 	sw	t7,0(a1)
    1d28:	8cce0004 	lw	t6,4(a2)
    1d2c:	acae0004 	sw	t6,4(a1)
    1d30:	8ccf0008 	lw	t7,8(a2)
    1d34:	acaf0008 	sw	t7,8(a1)
    1d38:	8cd9000c 	lw	t9,12(a2)
    1d3c:	acb9000c 	sw	t9,12(a1)
    1d40:	8cd80010 	lw	t8,16(a2)
    1d44:	acb80010 	sw	t8,16(a1)
    1d48:	8cd90014 	lw	t9,20(a2)
    1d4c:	acb90014 	sw	t9,20(a1)
    1d50:	8cc90018 	lw	t1,24(a2)
    1d54:	aca90018 	sw	t1,24(a1)
    1d58:	8cc8001c 	lw	t0,28(a2)
    1d5c:	aca8001c 	sw	t0,28(a1)
    1d60:	8cc90020 	lw	t1,32(a2)
    1d64:	aca90020 	sw	t1,32(a1)
    1d68:	8ccb0024 	lw	t3,36(a2)
    1d6c:	acab0024 	sw	t3,36(a1)
    1d70:	8cca0028 	lw	t2,40(a2)
    1d74:	acaa0028 	sw	t2,40(a1)
    1d78:	8ccb002c 	lw	t3,44(a2)
    1d7c:	0c000000 	jal	0 <func_8005B280>
    1d80:	acab002c 	sw	t3,44(a1)
    1d84:	8fbf0014 	lw	ra,20(sp)
    1d88:	27bd0018 	addiu	sp,sp,24
    1d8c:	24020001 	li	v0,1
    1d90:	03e00008 	jr	ra
    1d94:	00000000 	nop

00001d98 <Collider_InitQuad>:
    1d98:	27bdffe8 	addiu	sp,sp,-24
    1d9c:	afbf0014 	sw	ra,20(sp)
    1da0:	afa40018 	sw	a0,24(sp)
    1da4:	0c000000 	jal	0 <func_8005B280>
    1da8:	afa5001c 	sw	a1,28(sp)
    1dac:	8fa5001c 	lw	a1,28(sp)
    1db0:	8fa40018 	lw	a0,24(sp)
    1db4:	0c000000 	jal	0 <func_8005B280>
    1db8:	24a50018 	addiu	a1,a1,24
    1dbc:	8fa5001c 	lw	a1,28(sp)
    1dc0:	8fa40018 	lw	a0,24(sp)
    1dc4:	0c000000 	jal	0 <func_8005B280>
    1dc8:	24a50040 	addiu	a1,a1,64
    1dcc:	8fbf0014 	lw	ra,20(sp)
    1dd0:	27bd0018 	addiu	sp,sp,24
    1dd4:	24020001 	li	v0,1
    1dd8:	03e00008 	jr	ra
    1ddc:	00000000 	nop

00001de0 <Collider_DestroyQuad>:
    1de0:	27bdffe8 	addiu	sp,sp,-24
    1de4:	afbf0014 	sw	ra,20(sp)
    1de8:	afa40018 	sw	a0,24(sp)
    1dec:	0c000000 	jal	0 <func_8005B280>
    1df0:	afa5001c 	sw	a1,28(sp)
    1df4:	8fa5001c 	lw	a1,28(sp)
    1df8:	8fa40018 	lw	a0,24(sp)
    1dfc:	0c000000 	jal	0 <func_8005B280>
    1e00:	24a50018 	addiu	a1,a1,24
    1e04:	8fa5001c 	lw	a1,28(sp)
    1e08:	8fa40018 	lw	a0,24(sp)
    1e0c:	0c000000 	jal	0 <func_8005B280>
    1e10:	24a50040 	addiu	a1,a1,64
    1e14:	8fbf0014 	lw	ra,20(sp)
    1e18:	27bd0018 	addiu	sp,sp,24
    1e1c:	24020001 	li	v0,1
    1e20:	03e00008 	jr	ra
    1e24:	00000000 	nop

00001e28 <Collider_SetQuad_Set3>:
    1e28:	27bdffe8 	addiu	sp,sp,-24
    1e2c:	afbf0014 	sw	ra,20(sp)
    1e30:	afa40018 	sw	a0,24(sp)
    1e34:	afa5001c 	sw	a1,28(sp)
    1e38:	0c000000 	jal	0 <func_8005B280>
    1e3c:	afa70024 	sw	a3,36(sp)
    1e40:	8fa5001c 	lw	a1,28(sp)
    1e44:	8fa60024 	lw	a2,36(sp)
    1e48:	8fa40018 	lw	a0,24(sp)
    1e4c:	24a50018 	addiu	a1,a1,24
    1e50:	0c000000 	jal	0 <func_8005B280>
    1e54:	24c60008 	addiu	a2,a2,8
    1e58:	8fa5001c 	lw	a1,28(sp)
    1e5c:	8fa60024 	lw	a2,36(sp)
    1e60:	8fa40018 	lw	a0,24(sp)
    1e64:	24a50040 	addiu	a1,a1,64
    1e68:	0c000000 	jal	0 <func_8005B280>
    1e6c:	24c60020 	addiu	a2,a2,32
    1e70:	8fbf0014 	lw	ra,20(sp)
    1e74:	27bd0018 	addiu	sp,sp,24
    1e78:	24020001 	li	v0,1
    1e7c:	03e00008 	jr	ra
    1e80:	00000000 	nop

00001e84 <Collider_SetQuad>:
    1e84:	27bdffe8 	addiu	sp,sp,-24
    1e88:	afbf0014 	sw	ra,20(sp)
    1e8c:	afa40018 	sw	a0,24(sp)
    1e90:	afa5001c 	sw	a1,28(sp)
    1e94:	0c000000 	jal	0 <func_8005B280>
    1e98:	afa70024 	sw	a3,36(sp)
    1e9c:	8fa5001c 	lw	a1,28(sp)
    1ea0:	8fa60024 	lw	a2,36(sp)
    1ea4:	8fa40018 	lw	a0,24(sp)
    1ea8:	24a50018 	addiu	a1,a1,24
    1eac:	0c000000 	jal	0 <func_8005B280>
    1eb0:	24c60008 	addiu	a2,a2,8
    1eb4:	8fa5001c 	lw	a1,28(sp)
    1eb8:	8fa60024 	lw	a2,36(sp)
    1ebc:	8fa40018 	lw	a0,24(sp)
    1ec0:	24a50040 	addiu	a1,a1,64
    1ec4:	0c000000 	jal	0 <func_8005B280>
    1ec8:	24c60020 	addiu	a2,a2,32
    1ecc:	8fbf0014 	lw	ra,20(sp)
    1ed0:	27bd0018 	addiu	sp,sp,24
    1ed4:	24020001 	li	v0,1
    1ed8:	03e00008 	jr	ra
    1edc:	00000000 	nop

00001ee0 <Collider_QuadSetAT>:
    1ee0:	27bdffe8 	addiu	sp,sp,-24
    1ee4:	afbf0014 	sw	ra,20(sp)
    1ee8:	afa40018 	sw	a0,24(sp)
    1eec:	0c000000 	jal	0 <func_8005B280>
    1ef0:	afa5001c 	sw	a1,28(sp)
    1ef4:	8fa5001c 	lw	a1,28(sp)
    1ef8:	8fa40018 	lw	a0,24(sp)
    1efc:	0c000000 	jal	0 <func_8005B280>
    1f00:	24a50018 	addiu	a1,a1,24
    1f04:	8fa5001c 	lw	a1,28(sp)
    1f08:	8fa40018 	lw	a0,24(sp)
    1f0c:	0c000000 	jal	0 <func_8005B280>
    1f10:	24a50040 	addiu	a1,a1,64
    1f14:	8fbf0014 	lw	ra,20(sp)
    1f18:	27bd0018 	addiu	sp,sp,24
    1f1c:	24020001 	li	v0,1
    1f20:	03e00008 	jr	ra
    1f24:	00000000 	nop

00001f28 <Collider_QuadSetAC>:
    1f28:	27bdffe8 	addiu	sp,sp,-24
    1f2c:	afbf0014 	sw	ra,20(sp)
    1f30:	afa40018 	sw	a0,24(sp)
    1f34:	0c000000 	jal	0 <func_8005B280>
    1f38:	afa5001c 	sw	a1,28(sp)
    1f3c:	8fa5001c 	lw	a1,28(sp)
    1f40:	8fa40018 	lw	a0,24(sp)
    1f44:	0c000000 	jal	0 <func_8005B280>
    1f48:	24a50018 	addiu	a1,a1,24
    1f4c:	8fbf0014 	lw	ra,20(sp)
    1f50:	27bd0018 	addiu	sp,sp,24
    1f54:	24020001 	li	v0,1
    1f58:	03e00008 	jr	ra
    1f5c:	00000000 	nop

00001f60 <Collider_QuadSetOC>:
    1f60:	27bdffe8 	addiu	sp,sp,-24
    1f64:	afbf0014 	sw	ra,20(sp)
    1f68:	afa40018 	sw	a0,24(sp)
    1f6c:	0c000000 	jal	0 <func_8005B280>
    1f70:	afa5001c 	sw	a1,28(sp)
    1f74:	8fa5001c 	lw	a1,28(sp)
    1f78:	8fa40018 	lw	a0,24(sp)
    1f7c:	0c000000 	jal	0 <func_8005B280>
    1f80:	24a50018 	addiu	a1,a1,24
    1f84:	8fbf0014 	lw	ra,20(sp)
    1f88:	27bd0018 	addiu	sp,sp,24
    1f8c:	24020001 	li	v0,1
    1f90:	03e00008 	jr	ra
    1f94:	00000000 	nop

00001f98 <func_8005D218>:
    1f98:	27bdffd0 	addiu	sp,sp,-48
    1f9c:	afbf0014 	sw	ra,20(sp)
    1fa0:	afa40030 	sw	a0,48(sp)
    1fa4:	afa60038 	sw	a2,56(sp)
    1fa8:	90ae002d 	lbu	t6,45(a1)
    1fac:	00a03825 	move	a3,a1
    1fb0:	24e50070 	addiu	a1,a3,112
    1fb4:	31cf0004 	andi	t7,t6,0x4
    1fb8:	15e00003 	bnez	t7,1fc8 <func_8005D218+0x30>
    1fbc:	27a40020 	addiu	a0,sp,32
    1fc0:	1000001c 	b	2034 <func_8005D218+0x9c>
    1fc4:	24020001 	li	v0,1
    1fc8:	0c000000 	jal	0 <func_8005B280>
    1fcc:	afa70034 	sw	a3,52(sp)
    1fd0:	27a40020 	addiu	a0,sp,32
    1fd4:	0c000000 	jal	0 <func_8005B280>
    1fd8:	8fa50038 	lw	a1,56(sp)
    1fdc:	8fa70034 	lw	a3,52(sp)
    1fe0:	00001025 	move	v0,zero
    1fe4:	c4e4007c 	lwc1	$f4,124(a3)
    1fe8:	4604003c 	c.lt.s	$f0,$f4
    1fec:	00000000 	nop
    1ff0:	45000010 	bc1f	2034 <func_8005D218+0x9c>
    1ff4:	00000000 	nop
    1ff8:	8ce50030 	lw	a1,48(a3)
    1ffc:	e4e0007c 	swc1	$f0,124(a3)
    2000:	8fa40030 	lw	a0,48(sp)
    2004:	50a00005 	beqzl	a1,201c <func_8005D218+0x84>
    2008:	8ce50038 	lw	a1,56(a3)
    200c:	0c000000 	jal	0 <func_8005B280>
    2010:	afa70034 	sw	a3,52(sp)
    2014:	8fa70034 	lw	a3,52(sp)
    2018:	8ce50038 	lw	a1,56(a3)
    201c:	10a00003 	beqz	a1,202c <func_8005D218+0x94>
    2020:	00000000 	nop
    2024:	0c000000 	jal	0 <func_8005B280>
    2028:	8fa40030 	lw	a0,48(sp)
    202c:	10000001 	b	2034 <func_8005D218+0x9c>
    2030:	24020001 	li	v0,1
    2034:	8fbf0014 	lw	ra,20(sp)
    2038:	27bd0030 	addiu	sp,sp,48
    203c:	03e00008 	jr	ra
    2040:	00000000 	nop

00002044 <Collider_InitOcLine>:
    2044:	27bdffd8 	addiu	sp,sp,-40
    2048:	3c0e0000 	lui	t6,0x0
    204c:	afbf0014 	sw	ra,20(sp)
    2050:	afa40028 	sw	a0,40(sp)
    2054:	afa5002c 	sw	a1,44(sp)
    2058:	25ce00ec 	addiu	t6,t6,236
    205c:	8dd80000 	lw	t8,0(t6)
    2060:	27a5001c 	addiu	a1,sp,28
    2064:	acb80000 	sw	t8,0(a1)
    2068:	8dcf0004 	lw	t7,4(t6)
    206c:	acaf0004 	sw	t7,4(a1)
    2070:	8dd80008 	lw	t8,8(t6)
    2074:	acb80008 	sw	t8,8(a1)
    2078:	0c000000 	jal	0 <func_8005B280>
    207c:	8fa4002c 	lw	a0,44(sp)
    2080:	8fa4002c 	lw	a0,44(sp)
    2084:	27a5001c 	addiu	a1,sp,28
    2088:	0c000000 	jal	0 <func_8005B280>
    208c:	2484000c 	addiu	a0,a0,12
    2090:	8fbf0014 	lw	ra,20(sp)
    2094:	27bd0028 	addiu	sp,sp,40
    2098:	24020001 	li	v0,1
    209c:	03e00008 	jr	ra
    20a0:	00000000 	nop

000020a4 <Collider_DestroyOcLine>:
    20a4:	afa40000 	sw	a0,0(sp)
    20a8:	afa50004 	sw	a1,4(sp)
    20ac:	03e00008 	jr	ra
    20b0:	24020001 	li	v0,1

000020b4 <func_8005D334>:
    20b4:	27bdffe8 	addiu	sp,sp,-24
    20b8:	afa40018 	sw	a0,24(sp)
    20bc:	afbf0014 	sw	ra,20(sp)
    20c0:	afa5001c 	sw	a1,28(sp)
    20c4:	00a02025 	move	a0,a1
    20c8:	afa70024 	sw	a3,36(sp)
    20cc:	0c000000 	jal	0 <func_8005B280>
    20d0:	00c02825 	move	a1,a2
    20d4:	8fa4001c 	lw	a0,28(sp)
    20d8:	8fa50024 	lw	a1,36(sp)
    20dc:	0c000000 	jal	0 <func_8005B280>
    20e0:	2484000c 	addiu	a0,a0,12
    20e4:	8fbf0014 	lw	ra,20(sp)
    20e8:	27bd0018 	addiu	sp,sp,24
    20ec:	24020001 	li	v0,1
    20f0:	03e00008 	jr	ra
    20f4:	00000000 	nop

000020f8 <func_8005D378>:
    20f8:	27bdffe8 	addiu	sp,sp,-24
    20fc:	afbf0014 	sw	ra,20(sp)
    2100:	94ce0018 	lhu	t6,24(a2)
    2104:	24c7000c 	addiu	a3,a2,12
    2108:	0c000000 	jal	0 <func_8005B280>
    210c:	a4ae0018 	sh	t6,24(a1)
    2110:	8fbf0014 	lw	ra,20(sp)
    2114:	27bd0018 	addiu	sp,sp,24
    2118:	24020001 	li	v0,1
    211c:	03e00008 	jr	ra
    2120:	00000000 	nop

00002124 <func_8005D3A4>:
    2124:	afa40000 	sw	a0,0(sp)
    2128:	94ae0018 	lhu	t6,24(a1)
    212c:	24020001 	li	v0,1
    2130:	31cffffe 	andi	t7,t6,0xfffe
    2134:	03e00008 	jr	ra
    2138:	a4af0018 	sh	t7,24(a1)

0000213c <func_8005D3BC>:
    213c:	27bdffe8 	addiu	sp,sp,-24
    2140:	afbf0014 	sw	ra,20(sp)
    2144:	0c000000 	jal	0 <func_8005B280>
    2148:	a4a00002 	sh	zero,2(a1)
    214c:	3c020000 	lui	v0,0x0
    2150:	24420000 	addiu	v0,v0,0
    2154:	8c4e0000 	lw	t6,0(v0)
    2158:	24030001 	li	v1,1
    215c:	a5c30e7e 	sh	v1,3710(t6)
    2160:	8c4f0000 	lw	t7,0(v0)
    2164:	a5e30e80 	sh	v1,3712(t7)
    2168:	8c580000 	lw	t8,0(v0)
    216c:	a7030e82 	sh	v1,3714(t8)
    2170:	8fbf0014 	lw	ra,20(sp)
    2174:	27bd0018 	addiu	sp,sp,24
    2178:	03e00008 	jr	ra
    217c:	00000000 	nop

00002180 <CollisionCheck_DestroyContext>:
    2180:	afa40000 	sw	a0,0(sp)
    2184:	03e00008 	jr	ra
    2188:	afa50004 	sw	a1,4(sp)

0000218c <CollisionCheck_InitContext>:
    218c:	afa40000 	sw	a0,0(sp)
    2190:	94ae0002 	lhu	t6,2(a1)
    2194:	24a400cc 	addiu	a0,a1,204
    2198:	24a20004 	addiu	v0,a1,4
    219c:	31cf0001 	andi	t7,t6,0x1
    21a0:	15e00022 	bnez	t7,222c <CollisionCheck_InitContext+0xa0>
    21a4:	0044082b 	sltu	at,v0,a0
    21a8:	a4a00000 	sh	zero,0(a1)
    21ac:	aca000cc 	sw	zero,204(a1)
    21b0:	aca001c0 	sw	zero,448(a1)
    21b4:	10200005 	beqz	at,21cc <CollisionCheck_InitContext+0x40>
    21b8:	aca0028c 	sw	zero,652(a1)
    21bc:	24420004 	addiu	v0,v0,4
    21c0:	0044082b 	sltu	at,v0,a0
    21c4:	1420fffd 	bnez	at,21bc <CollisionCheck_InitContext+0x30>
    21c8:	ac40fffc 	sw	zero,-4(v0)
    21cc:	24a200d0 	addiu	v0,a1,208
    21d0:	24a401c0 	addiu	a0,a1,448
    21d4:	0044082b 	sltu	at,v0,a0
    21d8:	10200004 	beqz	at,21ec <CollisionCheck_InitContext+0x60>
    21dc:	24420004 	addiu	v0,v0,4
    21e0:	0044082b 	sltu	at,v0,a0
    21e4:	1420fffd 	bnez	at,21dc <CollisionCheck_InitContext+0x50>
    21e8:	ac40fffc 	sw	zero,-4(v0)
    21ec:	24a201c4 	addiu	v0,a1,452
    21f0:	24a4028c 	addiu	a0,a1,652
    21f4:	0044082b 	sltu	at,v0,a0
    21f8:	10200004 	beqz	at,220c <CollisionCheck_InitContext+0x80>
    21fc:	24420004 	addiu	v0,v0,4
    2200:	0044082b 	sltu	at,v0,a0
    2204:	1420fffd 	bnez	at,21fc <CollisionCheck_InitContext+0x70>
    2208:	ac40fffc 	sw	zero,-4(v0)
    220c:	24a20290 	addiu	v0,a1,656
    2210:	24a4029c 	addiu	a0,a1,668
    2214:	0044082b 	sltu	at,v0,a0
    2218:	10200004 	beqz	at,222c <CollisionCheck_InitContext+0xa0>
    221c:	24420004 	addiu	v0,v0,4
    2220:	0044082b 	sltu	at,v0,a0
    2224:	1420fffd 	bnez	at,221c <CollisionCheck_InitContext+0x90>
    2228:	ac40fffc 	sw	zero,-4(v0)
    222c:	03e00008 	jr	ra
    2230:	00000000 	nop

00002234 <CollisionCheck_EnableSAC>:
    2234:	afa40000 	sw	a0,0(sp)
    2238:	94ae0002 	lhu	t6,2(a1)
    223c:	35cf0001 	ori	t7,t6,0x1
    2240:	03e00008 	jr	ra
    2244:	a4af0002 	sh	t7,2(a1)

00002248 <CollisionCheck_DisableSAC>:
    2248:	afa40000 	sw	a0,0(sp)
    224c:	94ae0002 	lhu	t6,2(a1)
    2250:	31cffffe 	andi	t7,t6,0xfffe
    2254:	03e00008 	jr	ra
    2258:	a4af0002 	sh	t7,2(a1)

0000225c <func_8005D4DC>:
    225c:	27bdffd0 	addiu	sp,sp,-48
    2260:	afb40028 	sw	s4,40(sp)
    2264:	afb20020 	sw	s2,32(sp)
    2268:	00a09025 	move	s2,a1
    226c:	0080a025 	move	s4,a0
    2270:	afbf002c 	sw	ra,44(sp)
    2274:	afb30024 	sw	s3,36(sp)
    2278:	afb1001c 	sw	s1,28(sp)
    227c:	10a00043 	beqz	a1,238c <func_8005D4DC+0x130>
    2280:	afb00018 	sw	s0,24(sp)
    2284:	90a20015 	lbu	v0,21(a1)
    2288:	24010001 	li	at,1
    228c:	5040000b 	beqzl	v0,22bc <func_8005D4DC+0x60>
    2290:	8e4e0018 	lw	t6,24(s2)
    2294:	1041001a 	beq	v0,at,2300 <func_8005D4DC+0xa4>
    2298:	02802025 	move	a0,s4
    229c:	24010002 	li	at,2
    22a0:	1041001b 	beq	v0,at,2310 <func_8005D4DC+0xb4>
    22a4:	24010003 	li	at,3
    22a8:	1041002d 	beq	v0,at,2360 <func_8005D4DC+0x104>
    22ac:	26500058 	addiu	s0,s2,88
    22b0:	10000037 	b	2390 <func_8005D4DC+0x134>
    22b4:	8fbf002c 	lw	ra,44(sp)
    22b8:	8e4e0018 	lw	t6,24(s2)
    22bc:	02409825 	move	s3,s2
    22c0:	00008025 	move	s0,zero
    22c4:	19c00031 	blez	t6,238c <func_8005D4DC+0x130>
    22c8:	00008825 	move	s1,zero
    22cc:	8e4f001c 	lw	t7,28(s2)
    22d0:	02802025 	move	a0,s4
    22d4:	01f12821 	addu	a1,t7,s1
    22d8:	0c000000 	jal	0 <func_8005B280>
    22dc:	24a50030 	addiu	a1,a1,48
    22e0:	8e780018 	lw	t8,24(s3)
    22e4:	26100001 	addiu	s0,s0,1
    22e8:	26310040 	addiu	s1,s1,64
    22ec:	0218082a 	slt	at,s0,t8
    22f0:	5420fff7 	bnezl	at,22d0 <func_8005D4DC+0x74>
    22f4:	8e4f001c 	lw	t7,28(s2)
    22f8:	10000025 	b	2390 <func_8005D4DC+0x134>
    22fc:	8fbf002c 	lw	ra,44(sp)
    2300:	0c000000 	jal	0 <func_8005B280>
    2304:	26450040 	addiu	a1,s2,64
    2308:	10000021 	b	2390 <func_8005D4DC+0x134>
    230c:	8fbf002c 	lw	ra,44(sp)
    2310:	8e590018 	lw	t9,24(s2)
    2314:	02409825 	move	s3,s2
    2318:	00008025 	move	s0,zero
    231c:	1b20001b 	blez	t9,238c <func_8005D4DC+0x130>
    2320:	00008825 	move	s1,zero
    2324:	8e48001c 	lw	t0,28(s2)
    2328:	8e840000 	lw	a0,0(s4)
    232c:	01111021 	addu	v0,t0,s1
    2330:	24450028 	addiu	a1,v0,40
    2334:	24460034 	addiu	a2,v0,52
    2338:	0c000000 	jal	0 <func_8005B280>
    233c:	24470040 	addiu	a3,v0,64
    2340:	8e690018 	lw	t1,24(s3)
    2344:	26100001 	addiu	s0,s0,1
    2348:	2631005c 	addiu	s1,s1,92
    234c:	0209082a 	slt	at,s0,t1
    2350:	5420fff5 	bnezl	at,2328 <func_8005D4DC+0xcc>
    2354:	8e48001c 	lw	t0,28(s2)
    2358:	1000000d 	b	2390 <func_8005D4DC+0x134>
    235c:	8fbf002c 	lw	ra,44(sp)
    2360:	2651004c 	addiu	s1,s2,76
    2364:	02203825 	move	a3,s1
    2368:	8e840000 	lw	a0,0(s4)
    236c:	02002825 	move	a1,s0
    2370:	0c000000 	jal	0 <func_8005B280>
    2374:	26460064 	addiu	a2,s2,100
    2378:	8e840000 	lw	a0,0(s4)
    237c:	02202825 	move	a1,s1
    2380:	26460040 	addiu	a2,s2,64
    2384:	0c000000 	jal	0 <func_8005B280>
    2388:	02003825 	move	a3,s0
    238c:	8fbf002c 	lw	ra,44(sp)
    2390:	8fb00018 	lw	s0,24(sp)
    2394:	8fb1001c 	lw	s1,28(sp)
    2398:	8fb20020 	lw	s2,32(sp)
    239c:	8fb30024 	lw	s3,36(sp)
    23a0:	8fb40028 	lw	s4,40(sp)
    23a4:	03e00008 	jr	ra
    23a8:	27bd0030 	addiu	sp,sp,48

000023ac <CollisionCheck_Draw>:
    23ac:	27bdffd8 	addiu	sp,sp,-40
    23b0:	3c030000 	lui	v1,0x0
    23b4:	8c630000 	lw	v1,0(v1)
    23b8:	afbf0024 	sw	ra,36(sp)
    23bc:	afb30020 	sw	s3,32(sp)
    23c0:	afb2001c 	sw	s2,28(sp)
    23c4:	afb10018 	sw	s1,24(sp)
    23c8:	afb00014 	sw	s0,20(sp)
    23cc:	846e0e72 	lh	t6,3698(v1)
    23d0:	00a09025 	move	s2,a1
    23d4:	00809825 	move	s3,a0
    23d8:	51c0004a 	beqzl	t6,2504 <CollisionCheck_Draw+0x158>
    23dc:	8fbf0024 	lw	ra,36(sp)
    23e0:	846f0e7e 	lh	t7,3710(v1)
    23e4:	51e00011 	beqzl	t7,242c <CollisionCheck_Draw+0x80>
    23e8:	84680e80 	lh	t0,3712(v1)
    23ec:	84b80000 	lh	t8,0(a1)
    23f0:	00008825 	move	s1,zero
    23f4:	00a08025 	move	s0,a1
    23f8:	1b00000b 	blez	t8,2428 <CollisionCheck_Draw+0x7c>
    23fc:	02602025 	move	a0,s3
    2400:	0c000000 	jal	0 <func_8005B280>
    2404:	8e050004 	lw	a1,4(s0)
    2408:	86590000 	lh	t9,0(s2)
    240c:	26310001 	addiu	s1,s1,1
    2410:	26100004 	addiu	s0,s0,4
    2414:	0239082a 	slt	at,s1,t9
    2418:	5420fff9 	bnezl	at,2400 <CollisionCheck_Draw+0x54>
    241c:	02602025 	move	a0,s3
    2420:	3c030000 	lui	v1,0x0
    2424:	8c630000 	lw	v1,0(v1)
    2428:	84680e80 	lh	t0,3712(v1)
    242c:	51000011 	beqzl	t0,2474 <CollisionCheck_Draw+0xc8>
    2430:	846b0e82 	lh	t3,3714(v1)
    2434:	8e4900cc 	lw	t1,204(s2)
    2438:	00008825 	move	s1,zero
    243c:	02408025 	move	s0,s2
    2440:	1920000b 	blez	t1,2470 <CollisionCheck_Draw+0xc4>
    2444:	02602025 	move	a0,s3
    2448:	0c000000 	jal	0 <func_8005B280>
    244c:	8e0500d0 	lw	a1,208(s0)
    2450:	8e4a00cc 	lw	t2,204(s2)
    2454:	26310001 	addiu	s1,s1,1
    2458:	26100004 	addiu	s0,s0,4
    245c:	022a082a 	slt	at,s1,t2
    2460:	5420fff9 	bnezl	at,2448 <CollisionCheck_Draw+0x9c>
    2464:	02602025 	move	a0,s3
    2468:	3c030000 	lui	v1,0x0
    246c:	8c630000 	lw	v1,0(v1)
    2470:	846b0e82 	lh	t3,3714(v1)
    2474:	51600015 	beqzl	t3,24cc <CollisionCheck_Draw+0x120>
    2478:	846e0e84 	lh	t6,3716(v1)
    247c:	8e4201c0 	lw	v0,448(s2)
    2480:	00008825 	move	s1,zero
    2484:	02408025 	move	s0,s2
    2488:	58400010 	blezl	v0,24cc <CollisionCheck_Draw+0x120>
    248c:	846e0e84 	lh	t6,3716(v1)
    2490:	8e0501c4 	lw	a1,452(s0)
    2494:	90ac0012 	lbu	t4,18(a1)
    2498:	318d0001 	andi	t5,t4,0x1
    249c:	51a00005 	beqzl	t5,24b4 <CollisionCheck_Draw+0x108>
    24a0:	26310001 	addiu	s1,s1,1
    24a4:	0c000000 	jal	0 <func_8005B280>
    24a8:	02602025 	move	a0,s3
    24ac:	8e4201c0 	lw	v0,448(s2)
    24b0:	26310001 	addiu	s1,s1,1
    24b4:	0222082a 	slt	at,s1,v0
    24b8:	1420fff5 	bnez	at,2490 <CollisionCheck_Draw+0xe4>
    24bc:	26100004 	addiu	s0,s0,4
    24c0:	3c030000 	lui	v1,0x0
    24c4:	8c630000 	lw	v1,0(v1)
    24c8:	846e0e84 	lh	t6,3716(v1)
    24cc:	02602025 	move	a0,s3
    24d0:	51c00006 	beqzl	t6,24ec <CollisionCheck_Draw+0x140>
    24d4:	846f0e86 	lh	t7,3718(v1)
    24d8:	0c000000 	jal	0 <func_8005B280>
    24dc:	266507c0 	addiu	a1,s3,1984
    24e0:	3c030000 	lui	v1,0x0
    24e4:	8c630000 	lw	v1,0(v1)
    24e8:	846f0e86 	lh	t7,3718(v1)
    24ec:	02602025 	move	a0,s3
    24f0:	51e00004 	beqzl	t7,2504 <CollisionCheck_Draw+0x158>
    24f4:	8fbf0024 	lw	ra,36(sp)
    24f8:	0c000000 	jal	0 <func_8005B280>
    24fc:	266507c0 	addiu	a1,s3,1984
    2500:	8fbf0024 	lw	ra,36(sp)
    2504:	8fb00014 	lw	s0,20(sp)
    2508:	8fb10018 	lw	s1,24(sp)
    250c:	8fb2001c 	lw	s2,28(sp)
    2510:	8fb30020 	lw	s3,32(sp)
    2514:	03e00008 	jr	ra
    2518:	27bd0028 	addiu	sp,sp,40

0000251c <CollisionCheck_SetAT>:
    251c:	27bdffe0 	addiu	sp,sp,-32
    2520:	afbf001c 	sw	ra,28(sp)
    2524:	afb00018 	sw	s0,24(sp)
    2528:	00c08025 	move	s0,a2
    252c:	afa40020 	sw	a0,32(sp)
    2530:	0c000000 	jal	0 <func_8005B280>
    2534:	afa50024 	sw	a1,36(sp)
    2538:	24010001 	li	at,1
    253c:	14410003 	bne	v0,at,254c <CollisionCheck_SetAT+0x30>
    2540:	8fa70024 	lw	a3,36(sp)
    2544:	10000034 	b	2618 <CollisionCheck_SetAT+0xfc>
    2548:	2402ffff 	li	v0,-1
    254c:	92020015 	lbu	v0,21(s0)
    2550:	3c040000 	lui	a0,0x0
    2554:	24840290 	addiu	a0,a0,656
    2558:	28410004 	slti	at,v0,4
    255c:	14200007 	bnez	at,257c <CollisionCheck_SetAT+0x60>
    2560:	3c050000 	lui	a1,0x0
    2564:	24a502b8 	addiu	a1,a1,696
    2568:	24060bb5 	li	a2,2997
    256c:	0c000000 	jal	0 <func_8005B280>
    2570:	afa70024 	sw	a3,36(sp)
    2574:	8fa70024 	lw	a3,36(sp)
    2578:	92020015 	lbu	v0,21(s0)
    257c:	00027080 	sll	t6,v0,0x2
    2580:	3c190000 	lui	t9,0x0
    2584:	032ec821 	addu	t9,t9,t6
    2588:	8f390000 	lw	t9,0(t9)
    258c:	8fa40020 	lw	a0,32(sp)
    2590:	02002825 	move	a1,s0
    2594:	0320f809 	jalr	t9
    2598:	afa70024 	sw	a3,36(sp)
    259c:	8e030000 	lw	v1,0(s0)
    25a0:	8fa70024 	lw	a3,36(sp)
    25a4:	50600007 	beqzl	v1,25c4 <CollisionCheck_SetAT+0xa8>
    25a8:	84e30000 	lh	v1,0(a3)
    25ac:	8c6f0130 	lw	t7,304(v1)
    25b0:	55e00004 	bnezl	t7,25c4 <CollisionCheck_SetAT+0xa8>
    25b4:	84e30000 	lh	v1,0(a3)
    25b8:	10000017 	b	2618 <CollisionCheck_SetAT+0xfc>
    25bc:	2402ffff 	li	v0,-1
    25c0:	84e30000 	lh	v1,0(a3)
    25c4:	3c040000 	lui	a0,0x0
    25c8:	28610032 	slti	at,v1,50
    25cc:	54200006 	bnezl	at,25e8 <CollisionCheck_SetAT+0xcc>
    25d0:	94f80002 	lhu	t8,2(a3)
    25d4:	0c000000 	jal	0 <func_8005B280>
    25d8:	248402d0 	addiu	a0,a0,720
    25dc:	1000000e 	b	2618 <CollisionCheck_SetAT+0xfc>
    25e0:	2402ffff 	li	v0,-1
    25e4:	94f80002 	lhu	t8,2(a3)
    25e8:	00034880 	sll	t1,v1,0x2
    25ec:	00e95021 	addu	t2,a3,t1
    25f0:	33080001 	andi	t0,t8,0x1
    25f4:	51000004 	beqzl	t0,2608 <CollisionCheck_SetAT+0xec>
    25f8:	ad500004 	sw	s0,4(t2)
    25fc:	10000006 	b	2618 <CollisionCheck_SetAT+0xfc>
    2600:	2402ffff 	li	v0,-1
    2604:	ad500004 	sw	s0,4(t2)
    2608:	84eb0000 	lh	t3,0(a3)
    260c:	00601025 	move	v0,v1
    2610:	256c0001 	addiu	t4,t3,1
    2614:	a4ec0000 	sh	t4,0(a3)
    2618:	8fbf001c 	lw	ra,28(sp)
    261c:	8fb00018 	lw	s0,24(sp)
    2620:	27bd0020 	addiu	sp,sp,32
    2624:	03e00008 	jr	ra
    2628:	00000000 	nop

0000262c <CollisionCheck_SetAT_SAC>:
    262c:	27bdffe0 	addiu	sp,sp,-32
    2630:	afbf001c 	sw	ra,28(sp)
    2634:	afb10018 	sw	s1,24(sp)
    2638:	afb00014 	sw	s0,20(sp)
    263c:	afa40020 	sw	a0,32(sp)
    2640:	90ce0015 	lbu	t6,21(a2)
    2644:	00a08025 	move	s0,a1
    2648:	00c08825 	move	s1,a2
    264c:	29c10004 	slti	at,t6,4
    2650:	14200008 	bnez	at,2674 <CollisionCheck_SetAT_SAC+0x48>
    2654:	3c040000 	lui	a0,0x0
    2658:	3c050000 	lui	a1,0x0
    265c:	24a50334 	addiu	a1,a1,820
    2660:	2484030c 	addiu	a0,a0,780
    2664:	24060bdd 	li	a2,3037
    2668:	0c000000 	jal	0 <func_8005B280>
    266c:	afa7002c 	sw	a3,44(sp)
    2670:	8fa7002c 	lw	a3,44(sp)
    2674:	8fa40020 	lw	a0,32(sp)
    2678:	0c000000 	jal	0 <func_8005B280>
    267c:	afa7002c 	sw	a3,44(sp)
    2680:	24010001 	li	at,1
    2684:	14410003 	bne	v0,at,2694 <CollisionCheck_SetAT_SAC+0x68>
    2688:	8fa7002c 	lw	a3,44(sp)
    268c:	10000034 	b	2760 <CollisionCheck_SetAT_SAC+0x134>
    2690:	2402ffff 	li	v0,-1
    2694:	afa7002c 	sw	a3,44(sp)
    2698:	922f0015 	lbu	t7,21(s1)
    269c:	3c190000 	lui	t9,0x0
    26a0:	8fa40020 	lw	a0,32(sp)
    26a4:	000fc080 	sll	t8,t7,0x2
    26a8:	0338c821 	addu	t9,t9,t8
    26ac:	8f390000 	lw	t9,0(t9)
    26b0:	02202825 	move	a1,s1
    26b4:	0320f809 	jalr	t9
    26b8:	00000000 	nop
    26bc:	8e230000 	lw	v1,0(s1)
    26c0:	8fa7002c 	lw	a3,44(sp)
    26c4:	50600007 	beqzl	v1,26e4 <CollisionCheck_SetAT_SAC+0xb8>
    26c8:	96090002 	lhu	t1,2(s0)
    26cc:	8c680130 	lw	t0,304(v1)
    26d0:	55000004 	bnezl	t0,26e4 <CollisionCheck_SetAT_SAC+0xb8>
    26d4:	96090002 	lhu	t1,2(s0)
    26d8:	10000021 	b	2760 <CollisionCheck_SetAT_SAC+0x134>
    26dc:	2402ffff 	li	v0,-1
    26e0:	96090002 	lhu	t1,2(s0)
    26e4:	312a0001 	andi	t2,t1,0x1
    26e8:	5140000e 	beqzl	t2,2724 <CollisionCheck_SetAT_SAC+0xf8>
    26ec:	86020000 	lh	v0,0(s0)
    26f0:	860b0000 	lh	t3,0(s0)
    26f4:	00076080 	sll	t4,a3,0x2
    26f8:	3c040000 	lui	a0,0x0
    26fc:	00eb082a 	slt	at,a3,t3
    2700:	14200005 	bnez	at,2718 <CollisionCheck_SetAT_SAC+0xec>
    2704:	020c6821 	addu	t5,s0,t4
    2708:	0c000000 	jal	0 <func_8005B280>
    270c:	2484034c 	addiu	a0,a0,844
    2710:	10000013 	b	2760 <CollisionCheck_SetAT_SAC+0x134>
    2714:	2402ffff 	li	v0,-1
    2718:	10000010 	b	275c <CollisionCheck_SetAT_SAC+0x130>
    271c:	adb10004 	sw	s1,4(t5)
    2720:	86020000 	lh	v0,0(s0)
    2724:	3c040000 	lui	a0,0x0
    2728:	28410032 	slti	at,v0,50
    272c:	14200005 	bnez	at,2744 <CollisionCheck_SetAT_SAC+0x118>
    2730:	00027080 	sll	t6,v0,0x2
    2734:	0c000000 	jal	0 <func_8005B280>
    2738:	2484039c 	addiu	a0,a0,924
    273c:	10000008 	b	2760 <CollisionCheck_SetAT_SAC+0x134>
    2740:	2402ffff 	li	v0,-1
    2744:	020e7821 	addu	t7,s0,t6
    2748:	adf10004 	sw	s1,4(t7)
    274c:	86180000 	lh	t8,0(s0)
    2750:	00403825 	move	a3,v0
    2754:	27190001 	addiu	t9,t8,1
    2758:	a6190000 	sh	t9,0(s0)
    275c:	00e01025 	move	v0,a3
    2760:	8fbf001c 	lw	ra,28(sp)
    2764:	8fb00014 	lw	s0,20(sp)
    2768:	8fb10018 	lw	s1,24(sp)
    276c:	03e00008 	jr	ra
    2770:	27bd0020 	addiu	sp,sp,32

00002774 <CollisionCheck_SetAC>:
    2774:	27bdffe0 	addiu	sp,sp,-32
    2778:	afbf001c 	sw	ra,28(sp)
    277c:	afb00018 	sw	s0,24(sp)
    2780:	00c08025 	move	s0,a2
    2784:	afa40020 	sw	a0,32(sp)
    2788:	0c000000 	jal	0 <func_8005B280>
    278c:	afa50024 	sw	a1,36(sp)
    2790:	24010001 	li	at,1
    2794:	14410003 	bne	v0,at,27a4 <CollisionCheck_SetAC+0x30>
    2798:	8fa70024 	lw	a3,36(sp)
    279c:	10000034 	b	2870 <CollisionCheck_SetAC+0xfc>
    27a0:	2402ffff 	li	v0,-1
    27a4:	92020015 	lbu	v0,21(s0)
    27a8:	3c040000 	lui	a0,0x0
    27ac:	248403d8 	addiu	a0,a0,984
    27b0:	28410004 	slti	at,v0,4
    27b4:	14200007 	bnez	at,27d4 <CollisionCheck_SetAC+0x60>
    27b8:	3c050000 	lui	a1,0x0
    27bc:	24a50400 	addiu	a1,a1,1024
    27c0:	24060c2a 	li	a2,3114
    27c4:	0c000000 	jal	0 <func_8005B280>
    27c8:	afa70024 	sw	a3,36(sp)
    27cc:	8fa70024 	lw	a3,36(sp)
    27d0:	92020015 	lbu	v0,21(s0)
    27d4:	00027080 	sll	t6,v0,0x2
    27d8:	3c190000 	lui	t9,0x0
    27dc:	032ec821 	addu	t9,t9,t6
    27e0:	8f390000 	lw	t9,0(t9)
    27e4:	8fa40020 	lw	a0,32(sp)
    27e8:	02002825 	move	a1,s0
    27ec:	0320f809 	jalr	t9
    27f0:	afa70024 	sw	a3,36(sp)
    27f4:	8e030000 	lw	v1,0(s0)
    27f8:	8fa70024 	lw	a3,36(sp)
    27fc:	50600007 	beqzl	v1,281c <CollisionCheck_SetAC+0xa8>
    2800:	8ce300cc 	lw	v1,204(a3)
    2804:	8c6f0130 	lw	t7,304(v1)
    2808:	55e00004 	bnezl	t7,281c <CollisionCheck_SetAC+0xa8>
    280c:	8ce300cc 	lw	v1,204(a3)
    2810:	10000017 	b	2870 <CollisionCheck_SetAC+0xfc>
    2814:	2402ffff 	li	v0,-1
    2818:	8ce300cc 	lw	v1,204(a3)
    281c:	3c040000 	lui	a0,0x0
    2820:	2861003c 	slti	at,v1,60
    2824:	54200006 	bnezl	at,2840 <CollisionCheck_SetAC+0xcc>
    2828:	94f80002 	lhu	t8,2(a3)
    282c:	0c000000 	jal	0 <func_8005B280>
    2830:	24840418 	addiu	a0,a0,1048
    2834:	1000000e 	b	2870 <CollisionCheck_SetAC+0xfc>
    2838:	2402ffff 	li	v0,-1
    283c:	94f80002 	lhu	t8,2(a3)
    2840:	00034880 	sll	t1,v1,0x2
    2844:	00e95021 	addu	t2,a3,t1
    2848:	33080001 	andi	t0,t8,0x1
    284c:	51000004 	beqzl	t0,2860 <CollisionCheck_SetAC+0xec>
    2850:	ad5000d0 	sw	s0,208(t2)
    2854:	10000006 	b	2870 <CollisionCheck_SetAC+0xfc>
    2858:	2402ffff 	li	v0,-1
    285c:	ad5000d0 	sw	s0,208(t2)
    2860:	8ceb00cc 	lw	t3,204(a3)
    2864:	00601025 	move	v0,v1
    2868:	256c0001 	addiu	t4,t3,1
    286c:	acec00cc 	sw	t4,204(a3)
    2870:	8fbf001c 	lw	ra,28(sp)
    2874:	8fb00018 	lw	s0,24(sp)
    2878:	27bd0020 	addiu	sp,sp,32
    287c:	03e00008 	jr	ra
    2880:	00000000 	nop

00002884 <CollisionCheck_SetAC_SAC>:
    2884:	27bdffe0 	addiu	sp,sp,-32
    2888:	afbf001c 	sw	ra,28(sp)
    288c:	afb10018 	sw	s1,24(sp)
    2890:	afb00014 	sw	s0,20(sp)
    2894:	afa40020 	sw	a0,32(sp)
    2898:	90ce0015 	lbu	t6,21(a2)
    289c:	00a08025 	move	s0,a1
    28a0:	00c08825 	move	s1,a2
    28a4:	29c10004 	slti	at,t6,4
    28a8:	14200008 	bnez	at,28cc <CollisionCheck_SetAC_SAC+0x48>
    28ac:	3c040000 	lui	a0,0x0
    28b0:	3c050000 	lui	a1,0x0
    28b4:	24a5047c 	addiu	a1,a1,1148
    28b8:	24840454 	addiu	a0,a0,1108
    28bc:	24060c51 	li	a2,3153
    28c0:	0c000000 	jal	0 <func_8005B280>
    28c4:	afa7002c 	sw	a3,44(sp)
    28c8:	8fa7002c 	lw	a3,44(sp)
    28cc:	8fa40020 	lw	a0,32(sp)
    28d0:	0c000000 	jal	0 <func_8005B280>
    28d4:	afa7002c 	sw	a3,44(sp)
    28d8:	24010001 	li	at,1
    28dc:	14410003 	bne	v0,at,28ec <CollisionCheck_SetAC_SAC+0x68>
    28e0:	8fa7002c 	lw	a3,44(sp)
    28e4:	10000034 	b	29b8 <CollisionCheck_SetAC_SAC+0x134>
    28e8:	2402ffff 	li	v0,-1
    28ec:	afa7002c 	sw	a3,44(sp)
    28f0:	922f0015 	lbu	t7,21(s1)
    28f4:	3c190000 	lui	t9,0x0
    28f8:	8fa40020 	lw	a0,32(sp)
    28fc:	000fc080 	sll	t8,t7,0x2
    2900:	0338c821 	addu	t9,t9,t8
    2904:	8f390000 	lw	t9,0(t9)
    2908:	02202825 	move	a1,s1
    290c:	0320f809 	jalr	t9
    2910:	00000000 	nop
    2914:	8e230000 	lw	v1,0(s1)
    2918:	8fa7002c 	lw	a3,44(sp)
    291c:	50600007 	beqzl	v1,293c <CollisionCheck_SetAC_SAC+0xb8>
    2920:	96090002 	lhu	t1,2(s0)
    2924:	8c680130 	lw	t0,304(v1)
    2928:	55000004 	bnezl	t0,293c <CollisionCheck_SetAC_SAC+0xb8>
    292c:	96090002 	lhu	t1,2(s0)
    2930:	10000021 	b	29b8 <CollisionCheck_SetAC_SAC+0x134>
    2934:	2402ffff 	li	v0,-1
    2938:	96090002 	lhu	t1,2(s0)
    293c:	312a0001 	andi	t2,t1,0x1
    2940:	5140000e 	beqzl	t2,297c <CollisionCheck_SetAC_SAC+0xf8>
    2944:	8e0200cc 	lw	v0,204(s0)
    2948:	8e0b00cc 	lw	t3,204(s0)
    294c:	00076080 	sll	t4,a3,0x2
    2950:	3c040000 	lui	a0,0x0
    2954:	00eb082a 	slt	at,a3,t3
    2958:	14200005 	bnez	at,2970 <CollisionCheck_SetAC_SAC+0xec>
    295c:	020c6821 	addu	t5,s0,t4
    2960:	0c000000 	jal	0 <func_8005B280>
    2964:	24840494 	addiu	a0,a0,1172
    2968:	10000013 	b	29b8 <CollisionCheck_SetAC_SAC+0x134>
    296c:	2402ffff 	li	v0,-1
    2970:	10000010 	b	29b4 <CollisionCheck_SetAC_SAC+0x130>
    2974:	adb100d0 	sw	s1,208(t5)
    2978:	8e0200cc 	lw	v0,204(s0)
    297c:	3c040000 	lui	a0,0x0
    2980:	2841003c 	slti	at,v0,60
    2984:	14200005 	bnez	at,299c <CollisionCheck_SetAC_SAC+0x118>
    2988:	00027080 	sll	t6,v0,0x2
    298c:	0c000000 	jal	0 <func_8005B280>
    2990:	248404e4 	addiu	a0,a0,1252
    2994:	10000008 	b	29b8 <CollisionCheck_SetAC_SAC+0x134>
    2998:	2402ffff 	li	v0,-1
    299c:	020e7821 	addu	t7,s0,t6
    29a0:	adf100d0 	sw	s1,208(t7)
    29a4:	8e1800cc 	lw	t8,204(s0)
    29a8:	00403825 	move	a3,v0
    29ac:	27190001 	addiu	t9,t8,1
    29b0:	ae1900cc 	sw	t9,204(s0)
    29b4:	00e01025 	move	v0,a3
    29b8:	8fbf001c 	lw	ra,28(sp)
    29bc:	8fb00014 	lw	s0,20(sp)
    29c0:	8fb10018 	lw	s1,24(sp)
    29c4:	03e00008 	jr	ra
    29c8:	27bd0020 	addiu	sp,sp,32

000029cc <CollisionCheck_SetOC>:
    29cc:	27bdffe0 	addiu	sp,sp,-32
    29d0:	afbf001c 	sw	ra,28(sp)
    29d4:	afb00018 	sw	s0,24(sp)
    29d8:	00c08025 	move	s0,a2
    29dc:	afa40020 	sw	a0,32(sp)
    29e0:	0c000000 	jal	0 <func_8005B280>
    29e4:	afa50024 	sw	a1,36(sp)
    29e8:	24010001 	li	at,1
    29ec:	14410003 	bne	v0,at,29fc <CollisionCheck_SetOC+0x30>
    29f0:	8fa70024 	lw	a3,36(sp)
    29f4:	10000034 	b	2ac8 <CollisionCheck_SetOC+0xfc>
    29f8:	2402ffff 	li	v0,-1
    29fc:	92020015 	lbu	v0,21(s0)
    2a00:	3c040000 	lui	a0,0x0
    2a04:	24840520 	addiu	a0,a0,1312
    2a08:	28410004 	slti	at,v0,4
    2a0c:	14200007 	bnez	at,2a2c <CollisionCheck_SetOC+0x60>
    2a10:	3c050000 	lui	a1,0x0
    2a14:	24a50548 	addiu	a1,a1,1352
    2a18:	24060c9d 	li	a2,3229
    2a1c:	0c000000 	jal	0 <func_8005B280>
    2a20:	afa70024 	sw	a3,36(sp)
    2a24:	8fa70024 	lw	a3,36(sp)
    2a28:	92020015 	lbu	v0,21(s0)
    2a2c:	00027080 	sll	t6,v0,0x2
    2a30:	3c190000 	lui	t9,0x0
    2a34:	032ec821 	addu	t9,t9,t6
    2a38:	8f390000 	lw	t9,0(t9)
    2a3c:	8fa40020 	lw	a0,32(sp)
    2a40:	02002825 	move	a1,s0
    2a44:	0320f809 	jalr	t9
    2a48:	afa70024 	sw	a3,36(sp)
    2a4c:	8e030000 	lw	v1,0(s0)
    2a50:	8fa70024 	lw	a3,36(sp)
    2a54:	50600007 	beqzl	v1,2a74 <CollisionCheck_SetOC+0xa8>
    2a58:	8ce301c0 	lw	v1,448(a3)
    2a5c:	8c6f0130 	lw	t7,304(v1)
    2a60:	55e00004 	bnezl	t7,2a74 <CollisionCheck_SetOC+0xa8>
    2a64:	8ce301c0 	lw	v1,448(a3)
    2a68:	10000017 	b	2ac8 <CollisionCheck_SetOC+0xfc>
    2a6c:	2402ffff 	li	v0,-1
    2a70:	8ce301c0 	lw	v1,448(a3)
    2a74:	3c040000 	lui	a0,0x0
    2a78:	28610032 	slti	at,v1,50
    2a7c:	54200006 	bnezl	at,2a98 <CollisionCheck_SetOC+0xcc>
    2a80:	94f80002 	lhu	t8,2(a3)
    2a84:	0c000000 	jal	0 <func_8005B280>
    2a88:	24840560 	addiu	a0,a0,1376
    2a8c:	1000000e 	b	2ac8 <CollisionCheck_SetOC+0xfc>
    2a90:	2402ffff 	li	v0,-1
    2a94:	94f80002 	lhu	t8,2(a3)
    2a98:	00034880 	sll	t1,v1,0x2
    2a9c:	00e95021 	addu	t2,a3,t1
    2aa0:	33080001 	andi	t0,t8,0x1
    2aa4:	51000004 	beqzl	t0,2ab8 <CollisionCheck_SetOC+0xec>
    2aa8:	ad5001c4 	sw	s0,452(t2)
    2aac:	10000006 	b	2ac8 <CollisionCheck_SetOC+0xfc>
    2ab0:	2402ffff 	li	v0,-1
    2ab4:	ad5001c4 	sw	s0,452(t2)
    2ab8:	8ceb01c0 	lw	t3,448(a3)
    2abc:	00601025 	move	v0,v1
    2ac0:	256c0001 	addiu	t4,t3,1
    2ac4:	acec01c0 	sw	t4,448(a3)
    2ac8:	8fbf001c 	lw	ra,28(sp)
    2acc:	8fb00018 	lw	s0,24(sp)
    2ad0:	27bd0020 	addiu	sp,sp,32
    2ad4:	03e00008 	jr	ra
    2ad8:	00000000 	nop

00002adc <CollisionCheck_SetOC_SAC>:
    2adc:	27bdffe0 	addiu	sp,sp,-32
    2ae0:	afbf001c 	sw	ra,28(sp)
    2ae4:	afb10018 	sw	s1,24(sp)
    2ae8:	afb00014 	sw	s0,20(sp)
    2aec:	00a08025 	move	s0,a1
    2af0:	00c08825 	move	s1,a2
    2af4:	afa40020 	sw	a0,32(sp)
    2af8:	0c000000 	jal	0 <func_8005B280>
    2afc:	afa7002c 	sw	a3,44(sp)
    2b00:	24010001 	li	at,1
    2b04:	14410003 	bne	v0,at,2b14 <CollisionCheck_SetOC_SAC+0x38>
    2b08:	8fa7002c 	lw	a3,44(sp)
    2b0c:	1000003e 	b	2c08 <CollisionCheck_SetOC_SAC+0x12c>
    2b10:	2402ffff 	li	v0,-1
    2b14:	92220015 	lbu	v0,21(s1)
    2b18:	3c040000 	lui	a0,0x0
    2b1c:	2484059c 	addiu	a0,a0,1436
    2b20:	28410004 	slti	at,v0,4
    2b24:	14200007 	bnez	at,2b44 <CollisionCheck_SetOC_SAC+0x68>
    2b28:	3c050000 	lui	a1,0x0
    2b2c:	24a505c4 	addiu	a1,a1,1476
    2b30:	24060cca 	li	a2,3274
    2b34:	0c000000 	jal	0 <func_8005B280>
    2b38:	afa7002c 	sw	a3,44(sp)
    2b3c:	8fa7002c 	lw	a3,44(sp)
    2b40:	92220015 	lbu	v0,21(s1)
    2b44:	00027080 	sll	t6,v0,0x2
    2b48:	3c190000 	lui	t9,0x0
    2b4c:	032ec821 	addu	t9,t9,t6
    2b50:	8f390000 	lw	t9,0(t9)
    2b54:	8fa40020 	lw	a0,32(sp)
    2b58:	02202825 	move	a1,s1
    2b5c:	0320f809 	jalr	t9
    2b60:	afa7002c 	sw	a3,44(sp)
    2b64:	8e230000 	lw	v1,0(s1)
    2b68:	8fa7002c 	lw	a3,44(sp)
    2b6c:	50600007 	beqzl	v1,2b8c <CollisionCheck_SetOC_SAC+0xb0>
    2b70:	96180002 	lhu	t8,2(s0)
    2b74:	8c6f0130 	lw	t7,304(v1)
    2b78:	55e00004 	bnezl	t7,2b8c <CollisionCheck_SetOC_SAC+0xb0>
    2b7c:	96180002 	lhu	t8,2(s0)
    2b80:	10000021 	b	2c08 <CollisionCheck_SetOC_SAC+0x12c>
    2b84:	2402ffff 	li	v0,-1
    2b88:	96180002 	lhu	t8,2(s0)
    2b8c:	33080001 	andi	t0,t8,0x1
    2b90:	5100000e 	beqzl	t0,2bcc <CollisionCheck_SetOC_SAC+0xf0>
    2b94:	8e0201c0 	lw	v0,448(s0)
    2b98:	8e0901c0 	lw	t1,448(s0)
    2b9c:	00075080 	sll	t2,a3,0x2
    2ba0:	3c040000 	lui	a0,0x0
    2ba4:	00e9082a 	slt	at,a3,t1
    2ba8:	14200005 	bnez	at,2bc0 <CollisionCheck_SetOC_SAC+0xe4>
    2bac:	020a5821 	addu	t3,s0,t2
    2bb0:	0c000000 	jal	0 <func_8005B280>
    2bb4:	248405dc 	addiu	a0,a0,1500
    2bb8:	10000013 	b	2c08 <CollisionCheck_SetOC_SAC+0x12c>
    2bbc:	2402ffff 	li	v0,-1
    2bc0:	10000010 	b	2c04 <CollisionCheck_SetOC_SAC+0x128>
    2bc4:	ad710004 	sw	s1,4(t3)
    2bc8:	8e0201c0 	lw	v0,448(s0)
    2bcc:	3c040000 	lui	a0,0x0
    2bd0:	28410032 	slti	at,v0,50
    2bd4:	14200005 	bnez	at,2bec <CollisionCheck_SetOC_SAC+0x110>
    2bd8:	00026080 	sll	t4,v0,0x2
    2bdc:	0c000000 	jal	0 <func_8005B280>
    2be0:	2484062c 	addiu	a0,a0,1580
    2be4:	10000008 	b	2c08 <CollisionCheck_SetOC_SAC+0x12c>
    2be8:	2402ffff 	li	v0,-1
    2bec:	020c6821 	addu	t5,s0,t4
    2bf0:	adb101c4 	sw	s1,452(t5)
    2bf4:	8e0e01c0 	lw	t6,448(s0)
    2bf8:	00403825 	move	a3,v0
    2bfc:	25d90001 	addiu	t9,t6,1
    2c00:	ae1901c0 	sw	t9,448(s0)
    2c04:	00e01025 	move	v0,a3
    2c08:	8fbf001c 	lw	ra,28(sp)
    2c0c:	8fb00014 	lw	s0,20(sp)
    2c10:	8fb10018 	lw	s1,24(sp)
    2c14:	03e00008 	jr	ra
    2c18:	27bd0020 	addiu	sp,sp,32

00002c1c <CollisionCheck_SetOCLine>:
    2c1c:	27bdffe8 	addiu	sp,sp,-24
    2c20:	afbf0014 	sw	ra,20(sp)
    2c24:	afa40018 	sw	a0,24(sp)
    2c28:	afa60020 	sw	a2,32(sp)
    2c2c:	0c000000 	jal	0 <func_8005B280>
    2c30:	afa5001c 	sw	a1,28(sp)
    2c34:	24010001 	li	at,1
    2c38:	14410003 	bne	v0,at,2c48 <CollisionCheck_SetOCLine+0x2c>
    2c3c:	8fa7001c 	lw	a3,28(sp)
    2c40:	10000016 	b	2c9c <CollisionCheck_SetOCLine+0x80>
    2c44:	2402ffff 	li	v0,-1
    2c48:	8fa40018 	lw	a0,24(sp)
    2c4c:	8fa50020 	lw	a1,32(sp)
    2c50:	0c000000 	jal	0 <func_8005B280>
    2c54:	afa7001c 	sw	a3,28(sp)
    2c58:	8fa7001c 	lw	a3,28(sp)
    2c5c:	3c040000 	lui	a0,0x0
    2c60:	8fae0020 	lw	t6,32(sp)
    2c64:	8ce3028c 	lw	v1,652(a3)
    2c68:	28610003 	slti	at,v1,3
    2c6c:	14200005 	bnez	at,2c84 <CollisionCheck_SetOCLine+0x68>
    2c70:	00037880 	sll	t7,v1,0x2
    2c74:	0c000000 	jal	0 <func_8005B280>
    2c78:	24840668 	addiu	a0,a0,1640
    2c7c:	10000007 	b	2c9c <CollisionCheck_SetOCLine+0x80>
    2c80:	2402ffff 	li	v0,-1
    2c84:	00efc021 	addu	t8,a3,t7
    2c88:	af0e0290 	sw	t6,656(t8)
    2c8c:	8cf9028c 	lw	t9,652(a3)
    2c90:	00601025 	move	v0,v1
    2c94:	27280001 	addiu	t0,t9,1
    2c98:	ace8028c 	sw	t0,652(a3)
    2c9c:	8fbf0014 	lw	ra,20(sp)
    2ca0:	27bd0018 	addiu	sp,sp,24
    2ca4:	03e00008 	jr	ra
    2ca8:	00000000 	nop

00002cac <func_8005DF2C>:
    2cac:	908e0015 	lbu	t6,21(a0)
    2cb0:	00001025 	move	v0,zero
    2cb4:	31cf0001 	andi	t7,t6,0x1
    2cb8:	15e00003 	bnez	t7,2cc8 <func_8005DF2C+0x1c>
    2cbc:	00000000 	nop
    2cc0:	03e00008 	jr	ra
    2cc4:	24020001 	li	v0,1
    2cc8:	03e00008 	jr	ra
    2ccc:	00000000 	nop

00002cd0 <func_8005DF50>:
    2cd0:	908e0016 	lbu	t6,22(a0)
    2cd4:	00001025 	move	v0,zero
    2cd8:	31cf0001 	andi	t7,t6,0x1
    2cdc:	15e00003 	bnez	t7,2cec <func_8005DF50+0x1c>
    2ce0:	00000000 	nop
    2ce4:	03e00008 	jr	ra
    2ce8:	24020001 	li	v0,1
    2cec:	03e00008 	jr	ra
    2cf0:	00000000 	nop

00002cf4 <func_8005DF74>:
    2cf4:	8c8e0000 	lw	t6,0(a0)
    2cf8:	8caf0008 	lw	t7,8(a1)
    2cfc:	00001025 	move	v0,zero
    2d00:	01cfc024 	and	t8,t6,t7
    2d04:	17000003 	bnez	t8,2d14 <func_8005DF74+0x20>
    2d08:	00000000 	nop
    2d0c:	03e00008 	jr	ra
    2d10:	24020001 	li	v0,1
    2d14:	03e00008 	jr	ra
    2d18:	00000000 	nop

00002d1c <func_8005DF9C>:
    2d1c:	afa40000 	sw	a0,0(sp)
    2d20:	afa50004 	sw	a1,4(sp)
    2d24:	03e00008 	jr	ra
    2d28:	afa60008 	sw	a2,8(sp)

00002d2c <func_8005DFAC>:
    2d2c:	27bdffd8 	addiu	sp,sp,-40
    2d30:	afbf001c 	sw	ra,28(sp)
    2d34:	afa5002c 	sw	a1,44(sp)
    2d38:	afa60030 	sw	a2,48(sp)
    2d3c:	c4c40000 	lwc1	$f4,0(a2)
    2d40:	3c010000 	lui	at,0x0
    2d44:	24190005 	li	t9,5
    2d48:	4600218d 	trunc.w.s	$f6,$f4
    2d4c:	3c020000 	lui	v0,0x0
    2d50:	244209a0 	addiu	v0,v0,2464
    2d54:	240300ff 	li	v1,255
    2d58:	44183000 	mfc1	t8,$f6
    2d5c:	24080080 	li	t0,128
    2d60:	2409000a 	li	t1,10
    2d64:	a43809a0 	sh	t8,2464(at)
    2d68:	c4c80004 	lwc1	$f8,4(a2)
    2d6c:	24180005 	li	t8,5
    2d70:	240a0020 	li	t2,32
    2d74:	4600428d 	trunc.w.s	$f10,$f8
    2d78:	240b0040 	li	t3,64
    2d7c:	240e0010 	li	t6,16
    2d80:	240d0001 	li	t5,1
    2d84:	440c5000 	mfc1	t4,$f10
    2d88:	27a50024 	addiu	a1,sp,36
    2d8c:	00003825 	move	a3,zero
    2d90:	a42c09a2 	sh	t4,2466(at)
    2d94:	c4d00008 	lwc1	$f16,8(a2)
    2d98:	240c00c8 	li	t4,200
    2d9c:	afa20014 	sw	v0,20(sp)
    2da0:	4600848d 	trunc.w.s	$f18,$f16
    2da4:	afad0010 	sw	t5,16(sp)
    2da8:	00003025 	move	a2,zero
    2dac:	440f9000 	mfc1	t7,$f18
    2db0:	00000000 	nop
    2db4:	a42f09a4 	sh	t7,2468(at)
    2db8:	3c010000 	lui	at,0x0
    2dbc:	ac380e34 	sw	t8,3636(at)
    2dc0:	3c010000 	lui	at,0x0
    2dc4:	ac390e38 	sw	t9,3640(at)
    2dc8:	a049049c 	sb	t1,1180(v0)
    2dcc:	a049049d 	sb	t1,1181(v0)
    2dd0:	a04c049e 	sb	t4,1182(v0)
    2dd4:	a043049f 	sb	v1,1183(v0)
    2dd8:	a04004a0 	sb	zero,1184(v0)
    2ddc:	a04004a1 	sb	zero,1185(v0)
    2de0:	a04804a2 	sb	t0,1186(v0)
    2de4:	a04304a3 	sb	v1,1187(v0)
    2de8:	a04004a4 	sb	zero,1188(v0)
    2dec:	a04004a5 	sb	zero,1189(v0)
    2df0:	a04804a6 	sb	t0,1190(v0)
    2df4:	a04304a7 	sb	v1,1191(v0)
    2df8:	a04004a8 	sb	zero,1192(v0)
    2dfc:	a04004a9 	sb	zero,1193(v0)
    2e00:	a04804aa 	sb	t0,1194(v0)
    2e04:	a04304ab 	sb	v1,1195(v0)
    2e08:	a04004ac 	sb	zero,1196(v0)
    2e0c:	a04004ad 	sb	zero,1197(v0)
    2e10:	a04a04ae 	sb	t2,1198(v0)
    2e14:	a04004af 	sb	zero,1199(v0)
    2e18:	a04004b0 	sb	zero,1200(v0)
    2e1c:	a04004b1 	sb	zero,1201(v0)
    2e20:	a04a04b2 	sb	t2,1202(v0)
    2e24:	a04004b3 	sb	zero,1203(v0)
    2e28:	a04004b4 	sb	zero,1204(v0)
    2e2c:	a04004b5 	sb	zero,1205(v0)
    2e30:	a04b04b6 	sb	t3,1206(v0)
    2e34:	a04004b7 	sb	zero,1207(v0)
    2e38:	a04004b8 	sb	zero,1208(v0)
    2e3c:	a04004b9 	sb	zero,1209(v0)
    2e40:	a04b04ba 	sb	t3,1210(v0)
    2e44:	a04004bb 	sb	zero,1211(v0)
    2e48:	3c010000 	lui	at,0x0
    2e4c:	ac200e5c 	sw	zero,3676(at)
    2e50:	3c010000 	lui	at,0x0
    2e54:	ac2e0e60 	sw	t6,3680(at)
    2e58:	3c014100 	lui	at,0x4100
    2e5c:	44812000 	mtc1	at,$f4
    2e60:	3c010000 	lui	at,0x0
    2e64:	e4240e2c 	swc1	$f4,3628(at)
    2e68:	3c01bf80 	lui	at,0xbf80
    2e6c:	44813000 	mtc1	at,$f6
    2e70:	3c010000 	lui	at,0x0
    2e74:	0c000000 	jal	0 <func_8005B280>
    2e78:	e4260e30 	swc1	$f6,3632(at)
    2e7c:	8fbf001c 	lw	ra,28(sp)
    2e80:	27bd0028 	addiu	sp,sp,40
    2e84:	03e00008 	jr	ra
    2e88:	00000000 	nop

00002e8c <func_8005E10C>:
    2e8c:	27bdffd8 	addiu	sp,sp,-40
    2e90:	afbf001c 	sw	ra,28(sp)
    2e94:	afa5002c 	sw	a1,44(sp)
    2e98:	afa60030 	sw	a2,48(sp)
    2e9c:	c4c40000 	lwc1	$f4,0(a2)
    2ea0:	3c010000 	lui	at,0x0
    2ea4:	24190005 	li	t9,5
    2ea8:	4600218d 	trunc.w.s	$f6,$f4
    2eac:	3c020000 	lui	v0,0x0
    2eb0:	24420e68 	addiu	v0,v0,3688
    2eb4:	240300ff 	li	v1,255
    2eb8:	44183000 	mfc1	t8,$f6
    2ebc:	24080080 	li	t0,128
    2ec0:	2409000a 	li	t1,10
    2ec4:	a4380e68 	sh	t8,3688(at)
    2ec8:	c4c80004 	lwc1	$f8,4(a2)
    2ecc:	24180005 	li	t8,5
    2ed0:	240a0020 	li	t2,32
    2ed4:	4600428d 	trunc.w.s	$f10,$f8
    2ed8:	240b0040 	li	t3,64
    2edc:	240e0010 	li	t6,16
    2ee0:	240d0001 	li	t5,1
    2ee4:	440c5000 	mfc1	t4,$f10
    2ee8:	27a50024 	addiu	a1,sp,36
    2eec:	00003825 	move	a3,zero
    2ef0:	a42c0e6a 	sh	t4,3690(at)
    2ef4:	c4d00008 	lwc1	$f16,8(a2)
    2ef8:	240c00c8 	li	t4,200
    2efc:	afa20014 	sw	v0,20(sp)
    2f00:	4600848d 	trunc.w.s	$f18,$f16
    2f04:	afad0010 	sw	t5,16(sp)
    2f08:	00003025 	move	a2,zero
    2f0c:	440f9000 	mfc1	t7,$f18
    2f10:	00000000 	nop
    2f14:	a42f0e6c 	sh	t7,3692(at)
    2f18:	3c010000 	lui	at,0x0
    2f1c:	ac3812fc 	sw	t8,4860(at)
    2f20:	3c010000 	lui	at,0x0
    2f24:	ac391300 	sw	t9,4864(at)
    2f28:	a049049c 	sb	t1,1180(v0)
    2f2c:	a04c049d 	sb	t4,1181(v0)
    2f30:	a049049e 	sb	t1,1182(v0)
    2f34:	a043049f 	sb	v1,1183(v0)
    2f38:	a04004a0 	sb	zero,1184(v0)
    2f3c:	a04804a1 	sb	t0,1185(v0)
    2f40:	a04004a2 	sb	zero,1186(v0)
    2f44:	a04304a3 	sb	v1,1187(v0)
    2f48:	a04004a4 	sb	zero,1188(v0)
    2f4c:	a04804a5 	sb	t0,1189(v0)
    2f50:	a04004a6 	sb	zero,1190(v0)
    2f54:	a04304a7 	sb	v1,1191(v0)
    2f58:	a04004a8 	sb	zero,1192(v0)
    2f5c:	a04804a9 	sb	t0,1193(v0)
    2f60:	a04004aa 	sb	zero,1194(v0)
    2f64:	a04304ab 	sb	v1,1195(v0)
    2f68:	a04004ac 	sb	zero,1196(v0)
    2f6c:	a04a04ad 	sb	t2,1197(v0)
    2f70:	a04004ae 	sb	zero,1198(v0)
    2f74:	a04004af 	sb	zero,1199(v0)
    2f78:	a04004b0 	sb	zero,1200(v0)
    2f7c:	a04a04b1 	sb	t2,1201(v0)
    2f80:	a04004b2 	sb	zero,1202(v0)
    2f84:	a04004b3 	sb	zero,1203(v0)
    2f88:	a04004b4 	sb	zero,1204(v0)
    2f8c:	a04b04b5 	sb	t3,1205(v0)
    2f90:	a04004b6 	sb	zero,1206(v0)
    2f94:	a04004b7 	sb	zero,1207(v0)
    2f98:	a04004b8 	sb	zero,1208(v0)
    2f9c:	a04b04b9 	sb	t3,1209(v0)
    2fa0:	a04004ba 	sb	zero,1210(v0)
    2fa4:	a04004bb 	sb	zero,1211(v0)
    2fa8:	3c010000 	lui	at,0x0
    2fac:	ac201324 	sw	zero,4900(at)
    2fb0:	3c010000 	lui	at,0x0
    2fb4:	ac2e1328 	sw	t6,4904(at)
    2fb8:	3c014100 	lui	at,0x4100
    2fbc:	44812000 	mtc1	at,$f4
    2fc0:	3c010000 	lui	at,0x0
    2fc4:	e42412f4 	swc1	$f4,4852(at)
    2fc8:	3c01bf80 	lui	at,0xbf80
    2fcc:	44813000 	mtc1	at,$f6
    2fd0:	3c010000 	lui	at,0x0
    2fd4:	0c000000 	jal	0 <func_8005B280>
    2fd8:	e42612f8 	swc1	$f6,4856(at)
    2fdc:	8fbf001c 	lw	ra,28(sp)
    2fe0:	27bd0028 	addiu	sp,sp,40
    2fe4:	03e00008 	jr	ra
    2fe8:	00000000 	nop

00002fec <func_8005E26C>:
    2fec:	27bdffe8 	addiu	sp,sp,-24
    2ff0:	afbf0014 	sw	ra,20(sp)
    2ff4:	afa5001c 	sw	a1,28(sp)
    2ff8:	afa40018 	sw	a0,24(sp)
    2ffc:	afa60020 	sw	a2,32(sp)
    3000:	0c000000 	jal	0 <func_8005B280>
    3004:	00c02825 	move	a1,a2
    3008:	8fa40018 	lw	a0,24(sp)
    300c:	0c000000 	jal	0 <func_8005B280>
    3010:	8fa50020 	lw	a1,32(sp)
    3014:	8fbf0014 	lw	ra,20(sp)
    3018:	27bd0018 	addiu	sp,sp,24
    301c:	03e00008 	jr	ra
    3020:	00000000 	nop

00003024 <func_8005E2A4>:
    3024:	27bdffe8 	addiu	sp,sp,-24
    3028:	afbf0014 	sw	ra,20(sp)
    302c:	afa5001c 	sw	a1,28(sp)
    3030:	0c000000 	jal	0 <func_8005B280>
    3034:	00c02825 	move	a1,a2
    3038:	8fbf0014 	lw	ra,20(sp)
    303c:	27bd0018 	addiu	sp,sp,24
    3040:	03e00008 	jr	ra
    3044:	00000000 	nop

00003048 <func_8005E2C8>:
    3048:	27bdffe8 	addiu	sp,sp,-24
    304c:	afbf0014 	sw	ra,20(sp)
    3050:	afa5001c 	sw	a1,28(sp)
    3054:	0c000000 	jal	0 <func_8005B280>
    3058:	00c02825 	move	a1,a2
    305c:	8fbf0014 	lw	ra,20(sp)
    3060:	27bd0018 	addiu	sp,sp,24
    3064:	03e00008 	jr	ra
    3068:	00000000 	nop

0000306c <func_8005E2EC>:
    306c:	27bdffe0 	addiu	sp,sp,-32
    3070:	afbf001c 	sw	ra,28(sp)
    3074:	afa60028 	sw	a2,40(sp)
    3078:	90a20015 	lbu	v0,21(a1)
    307c:	30420018 	andi	v0,v0,0x18
    3080:	14400024 	bnez	v0,3114 <func_8005E2EC+0xa8>
    3084:	00000000 	nop
    3088:	90cf0014 	lbu	t7,20(a2)
    308c:	24010009 	li	at,9
    3090:	00002825 	move	a1,zero
    3094:	11e1001f 	beq	t7,at,3114 <func_8005E2EC+0xa8>
    3098:	00000000 	nop
    309c:	0c000000 	jal	0 <func_8005B280>
    30a0:	00e03025 	move	a2,a3
    30a4:	8fb80028 	lw	t8,40(sp)
    30a8:	3c070000 	lui	a3,0x0
    30ac:	24e70000 	addiu	a3,a3,0
    30b0:	8f020000 	lw	v0,0(t8)
    30b4:	24041806 	li	a0,6150
    30b8:	24060004 	li	a2,4
    30bc:	1440000e 	bnez	v0,30f8 <func_8005E2EC+0x8c>
    30c0:	244500e4 	addiu	a1,v0,228
    30c4:	3c070000 	lui	a3,0x0
    30c8:	3c190000 	lui	t9,0x0
    30cc:	24e70000 	addiu	a3,a3,0
    30d0:	27390000 	addiu	t9,t9,0
    30d4:	3c050000 	lui	a1,0x0
    30d8:	24a50000 	addiu	a1,a1,0
    30dc:	afb90014 	sw	t9,20(sp)
    30e0:	afa70010 	sw	a3,16(sp)
    30e4:	24041806 	li	a0,6150
    30e8:	0c000000 	jal	0 <func_8005B280>
    30ec:	24060004 	li	a2,4
    30f0:	1000005e 	b	326c <func_8005E2EC+0x200>
    30f4:	8fbf001c 	lw	ra,28(sp)
    30f8:	3c080000 	lui	t0,0x0
    30fc:	25080000 	addiu	t0,t0,0
    3100:	afa80014 	sw	t0,20(sp)
    3104:	0c000000 	jal	0 <func_8005B280>
    3108:	afa70010 	sw	a3,16(sp)
    310c:	10000057 	b	326c <func_8005E2EC+0x200>
    3110:	8fbf001c 	lw	ra,28(sp)
    3114:	14400015 	bnez	v0,316c <func_8005E2EC+0x100>
    3118:	24010008 	li	at,8
    311c:	24050003 	li	a1,3
    3120:	00e03025 	move	a2,a3
    3124:	afa40020 	sw	a0,32(sp)
    3128:	0c000000 	jal	0 <func_8005B280>
    312c:	afa7002c 	sw	a3,44(sp)
    3130:	8fa90028 	lw	t1,40(sp)
    3134:	8fa7002c 	lw	a3,44(sp)
    3138:	8fa40020 	lw	a0,32(sp)
    313c:	8d220000 	lw	v0,0(t1)
    3140:	00e02825 	move	a1,a3
    3144:	14400005 	bnez	v0,315c <func_8005E2EC+0xf0>
    3148:	00000000 	nop
    314c:	0c000000 	jal	0 <func_8005B280>
    3150:	00e02825 	move	a1,a3
    3154:	10000045 	b	326c <func_8005E2EC+0x200>
    3158:	8fbf001c 	lw	ra,28(sp)
    315c:	0c000000 	jal	0 <func_8005B280>
    3160:	244600e4 	addiu	a2,v0,228
    3164:	10000041 	b	326c <func_8005E2EC+0x200>
    3168:	8fbf001c 	lw	ra,28(sp)
    316c:	1441001f 	bne	v0,at,31ec <func_8005E2EC+0x180>
    3170:	00002825 	move	a1,zero
    3174:	0c000000 	jal	0 <func_8005B280>
    3178:	00e03025 	move	a2,a3
    317c:	8faa0028 	lw	t2,40(sp)
    3180:	3c070000 	lui	a3,0x0
    3184:	24e70000 	addiu	a3,a3,0
    3188:	8d420000 	lw	v0,0(t2)
    318c:	24041806 	li	a0,6150
    3190:	24060004 	li	a2,4
    3194:	1440000e 	bnez	v0,31d0 <func_8005E2EC+0x164>
    3198:	244500e4 	addiu	a1,v0,228
    319c:	3c070000 	lui	a3,0x0
    31a0:	3c0b0000 	lui	t3,0x0
    31a4:	24e70000 	addiu	a3,a3,0
    31a8:	256b0000 	addiu	t3,t3,0
    31ac:	3c050000 	lui	a1,0x0
    31b0:	24a50000 	addiu	a1,a1,0
    31b4:	afab0014 	sw	t3,20(sp)
    31b8:	afa70010 	sw	a3,16(sp)
    31bc:	24041806 	li	a0,6150
    31c0:	0c000000 	jal	0 <func_8005B280>
    31c4:	24060004 	li	a2,4
    31c8:	10000028 	b	326c <func_8005E2EC+0x200>
    31cc:	8fbf001c 	lw	ra,28(sp)
    31d0:	3c0c0000 	lui	t4,0x0
    31d4:	258c0000 	addiu	t4,t4,0
    31d8:	afac0014 	sw	t4,20(sp)
    31dc:	0c000000 	jal	0 <func_8005B280>
    31e0:	afa70010 	sw	a3,16(sp)
    31e4:	10000021 	b	326c <func_8005E2EC+0x200>
    31e8:	8fbf001c 	lw	ra,28(sp)
    31ec:	24010010 	li	at,16
    31f0:	1441001d 	bne	v0,at,3268 <func_8005E2EC+0x1fc>
    31f4:	24050001 	li	a1,1
    31f8:	0c000000 	jal	0 <func_8005B280>
    31fc:	00e03025 	move	a2,a3
    3200:	8fad0028 	lw	t5,40(sp)
    3204:	3c070000 	lui	a3,0x0
    3208:	24e70000 	addiu	a3,a3,0
    320c:	8da20000 	lw	v0,0(t5)
    3210:	24041837 	li	a0,6199
    3214:	24060004 	li	a2,4
    3218:	1440000e 	bnez	v0,3254 <func_8005E2EC+0x1e8>
    321c:	244500e4 	addiu	a1,v0,228
    3220:	3c070000 	lui	a3,0x0
    3224:	3c0e0000 	lui	t6,0x0
    3228:	24e70000 	addiu	a3,a3,0
    322c:	25ce0000 	addiu	t6,t6,0
    3230:	3c050000 	lui	a1,0x0
    3234:	24a50000 	addiu	a1,a1,0
    3238:	afae0014 	sw	t6,20(sp)
    323c:	afa70010 	sw	a3,16(sp)
    3240:	24041837 	li	a0,6199
    3244:	0c000000 	jal	0 <func_8005B280>
    3248:	24060004 	li	a2,4
    324c:	10000007 	b	326c <func_8005E2EC+0x200>
    3250:	8fbf001c 	lw	ra,28(sp)
    3254:	3c0f0000 	lui	t7,0x0
    3258:	25ef0000 	addiu	t7,t7,0
    325c:	afaf0014 	sw	t7,20(sp)
    3260:	0c000000 	jal	0 <func_8005B280>
    3264:	afa70010 	sw	a3,16(sp)
    3268:	8fbf001c 	lw	ra,28(sp)
    326c:	27bd0020 	addiu	sp,sp,32
    3270:	03e00008 	jr	ra
    3274:	00000000 	nop

00003278 <func_8005E4F8>:
    3278:	27bdffe0 	addiu	sp,sp,-32
    327c:	afbf001c 	sw	ra,28(sp)
    3280:	8c830000 	lw	v1,0(a0)
    3284:	5060003b 	beqzl	v1,3374 <func_8005E4F8+0xfc>
    3288:	8fbf001c 	lw	ra,28(sp)
    328c:	906e0002 	lbu	t6,2(v1)
    3290:	24040002 	li	a0,2
    3294:	548e0037 	bnel	a0,t6,3374 <func_8005E4F8+0xfc>
    3298:	8fbf001c 	lw	ra,28(sp)
    329c:	90a20014 	lbu	v0,20(a1)
    32a0:	3c070000 	lui	a3,0x0
    32a4:	24e70000 	addiu	a3,a3,0
    32a8:	1440000b 	bnez	v0,32d8 <func_8005E4F8+0x60>
    32ac:	24010001 	li	at,1
    32b0:	3c0f0000 	lui	t7,0x0
    32b4:	25ef0000 	addiu	t7,t7,0
    32b8:	afaf0014 	sw	t7,20(sp)
    32bc:	24041811 	li	a0,6161
    32c0:	246500e4 	addiu	a1,v1,228
    32c4:	24060004 	li	a2,4
    32c8:	0c000000 	jal	0 <func_8005B280>
    32cc:	afa70010 	sw	a3,16(sp)
    32d0:	10000028 	b	3374 <func_8005E4F8+0xfc>
    32d4:	8fbf001c 	lw	ra,28(sp)
    32d8:	1441000c 	bne	v0,at,330c <func_8005E4F8+0x94>
    32dc:	3c070000 	lui	a3,0x0
    32e0:	3c180000 	lui	t8,0x0
    32e4:	24e70000 	addiu	a3,a3,0
    32e8:	27180000 	addiu	t8,t8,0
    32ec:	afb80014 	sw	t8,20(sp)
    32f0:	afa70010 	sw	a3,16(sp)
    32f4:	24041824 	li	a0,6180
    32f8:	246500e4 	addiu	a1,v1,228
    32fc:	0c000000 	jal	0 <func_8005B280>
    3300:	24060004 	li	a2,4
    3304:	1000001b 	b	3374 <func_8005E4F8+0xfc>
    3308:	8fbf001c 	lw	ra,28(sp)
    330c:	1482000d 	bne	a0,v0,3344 <func_8005E4F8+0xcc>
    3310:	24010003 	li	at,3
    3314:	3c070000 	lui	a3,0x0
    3318:	3c190000 	lui	t9,0x0
    331c:	24e70000 	addiu	a3,a3,0
    3320:	27390000 	addiu	t9,t9,0
    3324:	afb90014 	sw	t9,20(sp)
    3328:	afa70010 	sw	a3,16(sp)
    332c:	00002025 	move	a0,zero
    3330:	246500e4 	addiu	a1,v1,228
    3334:	0c000000 	jal	0 <func_8005B280>
    3338:	24060004 	li	a2,4
    333c:	1000000d 	b	3374 <func_8005E4F8+0xfc>
    3340:	8fbf001c 	lw	ra,28(sp)
    3344:	1441000a 	bne	v0,at,3370 <func_8005E4F8+0xf8>
    3348:	3c070000 	lui	a3,0x0
    334c:	3c080000 	lui	t0,0x0
    3350:	24e70000 	addiu	a3,a3,0
    3354:	25080000 	addiu	t0,t0,0
    3358:	afa80014 	sw	t0,20(sp)
    335c:	afa70010 	sw	a3,16(sp)
    3360:	00002025 	move	a0,zero
    3364:	246500e4 	addiu	a1,v1,228
    3368:	0c000000 	jal	0 <func_8005B280>
    336c:	24060004 	li	a2,4
    3370:	8fbf001c 	lw	ra,28(sp)
    3374:	27bd0020 	addiu	sp,sp,32
    3378:	24020001 	li	v0,1
    337c:	03e00008 	jr	ra
    3380:	00000000 	nop

00003384 <func_8005E604>:
    3384:	27bdffe0 	addiu	sp,sp,-32
    3388:	8fae0030 	lw	t6,48(sp)
    338c:	afbf001c 	sw	ra,28(sp)
    3390:	afa50024 	sw	a1,36(sp)
    3394:	afa60028 	sw	a2,40(sp)
    3398:	afa7002c 	sw	a3,44(sp)
    339c:	91cf0016 	lbu	t7,22(t6)
    33a0:	31f80040 	andi	t8,t7,0x40
    33a4:	57000073 	bnezl	t8,3574 <func_8005E604+0x1f0>
    33a8:	8fbf001c 	lw	ra,28(sp)
    33ac:	90c20015 	lbu	v0,21(a2)
    33b0:	8faa002c 	lw	t2,44(sp)
    33b4:	30480020 	andi	t0,v0,0x20
    33b8:	15000003 	bnez	t0,33c8 <func_8005E604+0x44>
    33bc:	30490040 	andi	t1,v0,0x40
    33c0:	5520006c 	bnezl	t1,3574 <func_8005E604+0x1f0>
    33c4:	8fbf001c 	lw	ra,28(sp)
    33c8:	8d420000 	lw	v0,0(t2)
    33cc:	10400012 	beqz	v0,3418 <func_8005E604+0x94>
    33d0:	00000000 	nop
    33d4:	afa40020 	sw	a0,32(sp)
    33d8:	914b0014 	lbu	t3,20(t2)
    33dc:	3c0d0000 	lui	t5,0x0
    33e0:	3c190000 	lui	t9,0x0
    33e4:	000b6040 	sll	t4,t3,0x1
    33e8:	01ac6821 	addu	t5,t5,t4
    33ec:	91ad0140 	lbu	t5,320(t5)
    33f0:	8fa60034 	lw	a2,52(sp)
    33f4:	01402825 	move	a1,t2
    33f8:	000d7080 	sll	t6,t5,0x2
    33fc:	032ec821 	addu	t9,t9,t6
    3400:	8f390128 	lw	t9,296(t9)
    3404:	0320f809 	jalr	t9
    3408:	00000000 	nop
    340c:	8faf002c 	lw	t7,44(sp)
    3410:	8fa40020 	lw	a0,32(sp)
    3414:	8de20000 	lw	v0,0(t7)
    3418:	10400038 	beqz	v0,34fc <func_8005E604+0x178>
    341c:	8fa70034 	lw	a3,52(sp)
    3420:	8fb8002c 	lw	t8,44(sp)
    3424:	3c050000 	lui	a1,0x0
    3428:	24010003 	li	at,3
    342c:	93080014 	lbu	t0,20(t8)
    3430:	03003025 	move	a2,t8
    3434:	00084840 	sll	t1,t0,0x1
    3438:	00a92821 	addu	a1,a1,t1
    343c:	90a50141 	lbu	a1,321(a1)
    3440:	54a10006 	bnel	a1,at,345c <func_8005E604+0xd8>
    3444:	24010004 	li	at,4
    3448:	0c000000 	jal	0 <func_8005B280>
    344c:	8fa50028 	lw	a1,40(sp)
    3450:	10000048 	b	3574 <func_8005E604+0x1f0>
    3454:	8fbf001c 	lw	ra,28(sp)
    3458:	24010004 	li	at,4
    345c:	14a10018 	bne	a1,at,34c0 <func_8005E604+0x13c>
    3460:	8faa0024 	lw	t2,36(sp)
    3464:	8d420000 	lw	v0,0(t2)
    3468:	00e02825 	move	a1,a3
    346c:	14400010 	bnez	v0,34b0 <func_8005E604+0x12c>
    3470:	00000000 	nop
    3474:	0c000000 	jal	0 <func_8005B280>
    3478:	00e02825 	move	a1,a3
    347c:	3c070000 	lui	a3,0x0
    3480:	3c0b0000 	lui	t3,0x0
    3484:	24e70000 	addiu	a3,a3,0
    3488:	256b0000 	addiu	t3,t3,0
    348c:	3c050000 	lui	a1,0x0
    3490:	24a50000 	addiu	a1,a1,0
    3494:	afab0014 	sw	t3,20(sp)
    3498:	afa70010 	sw	a3,16(sp)
    349c:	24041837 	li	a0,6199
    34a0:	0c000000 	jal	0 <func_8005B280>
    34a4:	24060004 	li	a2,4
    34a8:	10000032 	b	3574 <func_8005E604+0x1f0>
    34ac:	8fbf001c 	lw	ra,28(sp)
    34b0:	0c000000 	jal	0 <func_8005B280>
    34b4:	244600e4 	addiu	a2,v0,228
    34b8:	1000002e 	b	3574 <func_8005E604+0x1f0>
    34bc:	8fbf001c 	lw	ra,28(sp)
    34c0:	24010005 	li	at,5
    34c4:	50a1002b 	beql	a1,at,3574 <func_8005E604+0x1f0>
    34c8:	8fbf001c 	lw	ra,28(sp)
    34cc:	0c000000 	jal	0 <func_8005B280>
    34d0:	00e03025 	move	a2,a3
    34d4:	8fac0030 	lw	t4,48(sp)
    34d8:	8fa40024 	lw	a0,36(sp)
    34dc:	918d0016 	lbu	t5,22(t4)
    34e0:	31ae0020 	andi	t6,t5,0x20
    34e4:	55c00023 	bnezl	t6,3574 <func_8005E604+0x1f0>
    34e8:	8fbf001c 	lw	ra,28(sp)
    34ec:	0c000000 	jal	0 <func_8005B280>
    34f0:	01802825 	move	a1,t4
    34f4:	1000001f 	b	3574 <func_8005E604+0x1f0>
    34f8:	8fbf001c 	lw	ra,28(sp)
    34fc:	00002825 	move	a1,zero
    3500:	0c000000 	jal	0 <func_8005B280>
    3504:	00e03025 	move	a2,a3
    3508:	8fb9002c 	lw	t9,44(sp)
    350c:	3c070000 	lui	a3,0x0
    3510:	24e70000 	addiu	a3,a3,0
    3514:	8f220000 	lw	v0,0(t9)
    3518:	24041806 	li	a0,6150
    351c:	24060004 	li	a2,4
    3520:	1440000e 	bnez	v0,355c <func_8005E604+0x1d8>
    3524:	244500e4 	addiu	a1,v0,228
    3528:	3c070000 	lui	a3,0x0
    352c:	3c0f0000 	lui	t7,0x0
    3530:	24e70000 	addiu	a3,a3,0
    3534:	25ef0000 	addiu	t7,t7,0
    3538:	3c050000 	lui	a1,0x0
    353c:	24a50000 	addiu	a1,a1,0
    3540:	afaf0014 	sw	t7,20(sp)
    3544:	afa70010 	sw	a3,16(sp)
    3548:	24041806 	li	a0,6150
    354c:	0c000000 	jal	0 <func_8005B280>
    3550:	24060004 	li	a2,4
    3554:	10000007 	b	3574 <func_8005E604+0x1f0>
    3558:	8fbf001c 	lw	ra,28(sp)
    355c:	3c080000 	lui	t0,0x0
    3560:	25080000 	addiu	t0,t0,0
    3564:	afa80014 	sw	t0,20(sp)
    3568:	0c000000 	jal	0 <func_8005B280>
    356c:	afa70010 	sw	a3,16(sp)
    3570:	8fbf001c 	lw	ra,28(sp)
    3574:	27bd0020 	addiu	sp,sp,32
    3578:	03e00008 	jr	ra
    357c:	00000000 	nop

00003580 <func_8005E800>:
    3580:	908e0010 	lbu	t6,16(a0)
    3584:	35cf0004 	ori	t7,t6,0x4
    3588:	a08f0010 	sb	t7,16(a0)
    358c:	90b80011 	lbu	t8,17(a1)
    3590:	37190080 	ori	t9,t8,0x80
    3594:	03e00008 	jr	ra
    3598:	a0b90011 	sb	t9,17(a1)

0000359c <func_8005E81C>:
    359c:	27bdffd8 	addiu	sp,sp,-40
    35a0:	afa70034 	sw	a3,52(sp)
    35a4:	8fa70038 	lw	a3,56(sp)
    35a8:	afbf0024 	sw	ra,36(sp)
    35ac:	afb00020 	sw	s0,32(sp)
    35b0:	afa40028 	sw	a0,40(sp)
    35b4:	90ee0011 	lbu	t6,17(a3)
    35b8:	00a08025 	move	s0,a1
    35bc:	31cf0004 	andi	t7,t6,0x4
    35c0:	51e0000e 	beqzl	t7,35fc <func_8005E81C+0x60>
    35c4:	8fa2003c 	lw	v0,60(sp)
    35c8:	8cb80000 	lw	t8,0(a1)
    35cc:	5300000b 	beqzl	t8,35fc <func_8005E81C+0x60>
    35d0:	8fa2003c 	lw	v0,60(sp)
    35d4:	8cf90000 	lw	t9,0(a3)
    35d8:	00a02025 	move	a0,a1
    35dc:	00e02825 	move	a1,a3
    35e0:	53200006 	beqzl	t9,35fc <func_8005E81C+0x60>
    35e4:	8fa2003c 	lw	v0,60(sp)
    35e8:	0c000000 	jal	0 <func_8005B280>
    35ec:	afa60030 	sw	a2,48(sp)
    35f0:	8fa60030 	lw	a2,48(sp)
    35f4:	8fa70038 	lw	a3,56(sp)
    35f8:	8fa2003c 	lw	v0,60(sp)
    35fc:	02002825 	move	a1,s0
    3600:	90490016 	lbu	t1,22(v0)
    3604:	312a0008 	andi	t2,t1,0x8
    3608:	55400011 	bnezl	t2,3650 <func_8005E81C+0xb4>
    360c:	90f90011 	lbu	t9,17(a3)
    3610:	920b0010 	lbu	t3,16(s0)
    3614:	356c0002 	ori	t4,t3,0x2
    3618:	a20c0010 	sb	t4,16(s0)
    361c:	8ced0000 	lw	t5,0(a3)
    3620:	ae0d0004 	sw	t5,4(s0)
    3624:	90ce0015 	lbu	t6,21(a2)
    3628:	acc70018 	sw	a3,24(a2)
    362c:	acc20020 	sw	v0,32(a2)
    3630:	35cf0002 	ori	t7,t6,0x2
    3634:	a0cf0015 	sb	t7,21(a2)
    3638:	8e030000 	lw	v1,0(s0)
    363c:	50600004 	beqzl	v1,3650 <func_8005E81C+0xb4>
    3640:	90f90011 	lbu	t9,17(a3)
    3644:	9058000c 	lbu	t8,12(v0)
    3648:	a07800b2 	sb	t8,178(v1)
    364c:	90f90011 	lbu	t9,17(a3)
    3650:	37290002 	ori	t1,t9,0x2
    3654:	a0e90011 	sb	t1,17(a3)
    3658:	8e0a0000 	lw	t2,0(s0)
    365c:	acea0008 	sw	t2,8(a3)
    3660:	904b0016 	lbu	t3,22(v0)
    3664:	ac50001c 	sw	s0,28(v0)
    3668:	ac460024 	sw	a2,36(v0)
    366c:	356c0002 	ori	t4,t3,0x2
    3670:	a04c0016 	sb	t4,22(v0)
    3674:	8ce30000 	lw	v1,0(a3)
    3678:	50600004 	beqzl	v1,368c <func_8005E81C+0xf0>
    367c:	8fa80044 	lw	t0,68(sp)
    3680:	90cd0004 	lbu	t5,4(a2)
    3684:	a06d00b3 	sb	t5,179(v1)
    3688:	8fa80044 	lw	t0,68(sp)
    368c:	c5040000 	lwc1	$f4,0(t0)
    3690:	4600218d 	trunc.w.s	$f6,$f4
    3694:	440f3000 	mfc1	t7,$f6
    3698:	00000000 	nop
    369c:	a44f000e 	sh	t7,14(v0)
    36a0:	c5080004 	lwc1	$f8,4(t0)
    36a4:	4600428d 	trunc.w.s	$f10,$f8
    36a8:	44195000 	mfc1	t9,$f10
    36ac:	00000000 	nop
    36b0:	a4590010 	sh	t9,16(v0)
    36b4:	c5100008 	lwc1	$f16,8(t0)
    36b8:	4600848d 	trunc.w.s	$f18,$f16
    36bc:	440a9000 	mfc1	t2,$f18
    36c0:	00000000 	nop
    36c4:	a44a0012 	sh	t2,18(v0)
    36c8:	90cb0015 	lbu	t3,21(a2)
    36cc:	8fa40028 	lw	a0,40(sp)
    36d0:	316c0020 	andi	t4,t3,0x20
    36d4:	5580000e 	bnezl	t4,3710 <func_8005E81C+0x174>
    36d8:	afa20010 	sw	v0,16(sp)
    36dc:	90e30014 	lbu	v1,20(a3)
    36e0:	24010009 	li	at,9
    36e4:	10610009 	beq	v1,at,370c <func_8005E81C+0x170>
    36e8:	2401000b 	li	at,11
    36ec:	10610007 	beq	v1,at,370c <func_8005E81C+0x170>
    36f0:	2401000c 	li	at,12
    36f4:	50610006 	beql	v1,at,3710 <func_8005E81C+0x174>
    36f8:	afa20010 	sw	v0,16(sp)
    36fc:	904d0016 	lbu	t5,22(v0)
    3700:	35ae0080 	ori	t6,t5,0x80
    3704:	10000009 	b	372c <func_8005E81C+0x190>
    3708:	a04e0016 	sb	t6,22(v0)
    370c:	afa20010 	sw	v0,16(sp)
    3710:	afa80014 	sw	t0,20(sp)
    3714:	0c000000 	jal	0 <func_8005B280>
    3718:	afa60030 	sw	a2,48(sp)
    371c:	8fa60030 	lw	a2,48(sp)
    3720:	90cf0015 	lbu	t7,21(a2)
    3724:	35f80040 	ori	t8,t7,0x40
    3728:	a0d80015 	sb	t8,21(a2)
    372c:	8fbf0024 	lw	ra,36(sp)
    3730:	8fb00020 	lw	s0,32(sp)
    3734:	27bd0028 	addiu	sp,sp,40
    3738:	03e00008 	jr	ra
    373c:	24020001 	li	v0,1

00003740 <CollisionCheck_AC_JntSphVsJntSph>:
    3740:	27bdff60 	addiu	sp,sp,-160
    3744:	afbf0054 	sw	ra,84(sp)
    3748:	afbe0050 	sw	s8,80(sp)
    374c:	afb7004c 	sw	s7,76(sp)
    3750:	afb60048 	sw	s6,72(sp)
    3754:	afb50044 	sw	s5,68(sp)
    3758:	afb40040 	sw	s4,64(sp)
    375c:	afb3003c 	sw	s3,60(sp)
    3760:	afb20038 	sw	s2,56(sp)
    3764:	afb10034 	sw	s1,52(sp)
    3768:	afb00030 	sw	s0,48(sp)
    376c:	f7b40028 	sdc1	$f20,40(sp)
    3770:	afa400a0 	sw	a0,160(sp)
    3774:	afa500a4 	sw	a1,164(sp)
    3778:	afa6009c 	sw	a2,156(sp)
    377c:	8cc30018 	lw	v1,24(a2)
    3780:	00e0a825 	move	s5,a3
    3784:	00e0b025 	move	s6,a3
    3788:	5860008c 	blezl	v1,39bc <CollisionCheck_AC_JntSphVsJntSph+0x27c>
    378c:	8fbf0054 	lw	ra,84(sp)
    3790:	8cc2001c 	lw	v0,28(a2)
    3794:	50400089 	beqzl	v0,39bc <CollisionCheck_AC_JntSphVsJntSph+0x27c>
    3798:	8fbf0054 	lw	ra,84(sp)
    379c:	8cee0018 	lw	t6,24(a3)
    37a0:	59c00086 	blezl	t6,39bc <CollisionCheck_AC_JntSphVsJntSph+0x27c>
    37a4:	8fbf0054 	lw	ra,84(sp)
    37a8:	8cef001c 	lw	t7,28(a3)
    37ac:	0003c180 	sll	t8,v1,0x6
    37b0:	0058c821 	addu	t9,v0,t8
    37b4:	11e00080 	beqz	t7,39b8 <CollisionCheck_AC_JntSphVsJntSph+0x278>
    37b8:	0059082b 	sltu	at,v0,t9
    37bc:	1020007e 	beqz	at,39b8 <CollisionCheck_AC_JntSphVsJntSph+0x278>
    37c0:	00408825 	move	s1,v0
    37c4:	3c010000 	lui	at,0x0
    37c8:	c4340748 	lwc1	$f20,1864(at)
    37cc:	afa600a8 	sw	a2,168(sp)
    37d0:	27be0088 	addiu	s8,sp,136
    37d4:	27b7008c 	addiu	s7,sp,140
    37d8:	27b40078 	addiu	s4,sp,120
    37dc:	27b3006c 	addiu	s3,sp,108
    37e0:	24120001 	li	s2,1
    37e4:	0c000000 	jal	0 <func_8005B280>
    37e8:	02202025 	move	a0,s1
    37ec:	5052006a 	beql	v0,s2,3998 <CollisionCheck_AC_JntSphVsJntSph+0x258>
    37f0:	8fa2009c 	lw	v0,156(sp)
    37f4:	8ea80018 	lw	t0,24(s5)
    37f8:	8eb0001c 	lw	s0,28(s5)
    37fc:	00084980 	sll	t1,t0,0x6
    3800:	02095021 	addu	t2,s0,t1
    3804:	020a082b 	sltu	at,s0,t2
    3808:	50200063 	beqzl	at,3998 <CollisionCheck_AC_JntSphVsJntSph+0x258>
    380c:	8fa2009c 	lw	v0,156(sp)
    3810:	0c000000 	jal	0 <func_8005B280>
    3814:	02002025 	move	a0,s0
    3818:	10520056 	beq	v0,s2,3974 <CollisionCheck_AC_JntSphVsJntSph+0x234>
    381c:	02202025 	move	a0,s1
    3820:	0c000000 	jal	0 <func_8005B280>
    3824:	02002825 	move	a1,s0
    3828:	10520052 	beq	v0,s2,3974 <CollisionCheck_AC_JntSphVsJntSph+0x234>
    382c:	26240030 	addiu	a0,s1,48
    3830:	26050030 	addiu	a1,s0,48
    3834:	02e03025 	move	a2,s7
    3838:	0c000000 	jal	0 <func_8005B280>
    383c:	03c03825 	move	a3,s8
    3840:	5452004d 	bnel	v0,s2,3978 <CollisionCheck_AC_JntSphVsJntSph+0x238>
    3844:	8ecc0018 	lw	t4,24(s6)
    3848:	862b0030 	lh	t3,48(s1)
    384c:	02802025 	move	a0,s4
    3850:	448b2000 	mtc1	t3,$f4
    3854:	00000000 	nop
    3858:	468021a0 	cvt.s.w	$f6,$f4
    385c:	e7a6006c 	swc1	$f6,108(sp)
    3860:	862c0032 	lh	t4,50(s1)
    3864:	448c4000 	mtc1	t4,$f8
    3868:	00000000 	nop
    386c:	468042a0 	cvt.s.w	$f10,$f8
    3870:	e7aa0070 	swc1	$f10,112(sp)
    3874:	862d0034 	lh	t5,52(s1)
    3878:	448d8000 	mtc1	t5,$f16
    387c:	00000000 	nop
    3880:	468084a0 	cvt.s.w	$f18,$f16
    3884:	e7b20074 	swc1	$f18,116(sp)
    3888:	860e0030 	lh	t6,48(s0)
    388c:	448e2000 	mtc1	t6,$f4
    3890:	00000000 	nop
    3894:	468021a0 	cvt.s.w	$f6,$f4
    3898:	c7a40088 	lwc1	$f4,136(sp)
    389c:	46002005 	abs.s	$f0,$f4
    38a0:	e7a60060 	swc1	$f6,96(sp)
    38a4:	860f0032 	lh	t7,50(s0)
    38a8:	4614003c 	c.lt.s	$f0,$f20
    38ac:	448f4000 	mtc1	t7,$f8
    38b0:	00000000 	nop
    38b4:	468042a0 	cvt.s.w	$f10,$f8
    38b8:	e7aa0064 	swc1	$f10,100(sp)
    38bc:	86180034 	lh	t8,52(s0)
    38c0:	c7aa006c 	lwc1	$f10,108(sp)
    38c4:	44988000 	mtc1	t8,$f16
    38c8:	00000000 	nop
    38cc:	468084a0 	cvt.s.w	$f18,$f16
    38d0:	c7b00060 	lwc1	$f16,96(sp)
    38d4:	45010017 	bc1t	3934 <CollisionCheck_AC_JntSphVsJntSph+0x1f4>
    38d8:	e7b20068 	swc1	$f18,104(sp)
    38dc:	86190036 	lh	t9,54(s0)
    38e0:	46105481 	sub.s	$f18,$f10,$f16
    38e4:	c7aa0064 	lwc1	$f10,100(sp)
    38e8:	44993000 	mtc1	t9,$f6
    38ec:	00000000 	nop
    38f0:	46803220 	cvt.s.w	$f8,$f6
    38f4:	46044003 	div.s	$f0,$f8,$f4
    38f8:	c7a40070 	lwc1	$f4,112(sp)
    38fc:	46009182 	mul.s	$f6,$f18,$f0
    3900:	460a2481 	sub.s	$f18,$f4,$f10
    3904:	c7a40068 	lwc1	$f4,104(sp)
    3908:	46103200 	add.s	$f8,$f6,$f16
    390c:	46009182 	mul.s	$f6,$f18,$f0
    3910:	e7a80078 	swc1	$f8,120(sp)
    3914:	c7a80074 	lwc1	$f8,116(sp)
    3918:	46044481 	sub.s	$f18,$f8,$f4
    391c:	460a3400 	add.s	$f16,$f6,$f10
    3920:	46009182 	mul.s	$f6,$f18,$f0
    3924:	e7b0007c 	swc1	$f16,124(sp)
    3928:	46043280 	add.s	$f10,$f6,$f4
    392c:	10000003 	b	393c <CollisionCheck_AC_JntSphVsJntSph+0x1fc>
    3930:	e7aa0080 	swc1	$f10,128(sp)
    3934:	0c000000 	jal	0 <func_8005B280>
    3938:	02602825 	move	a1,s3
    393c:	27a80060 	addiu	t0,sp,96
    3940:	afa80018 	sw	t0,24(sp)
    3944:	8fa400a0 	lw	a0,160(sp)
    3948:	8fa500a8 	lw	a1,168(sp)
    394c:	02203025 	move	a2,s1
    3950:	02603825 	move	a3,s3
    3954:	afb50010 	sw	s5,16(sp)
    3958:	afb00014 	sw	s0,20(sp)
    395c:	0c000000 	jal	0 <func_8005B280>
    3960:	afb4001c 	sw	s4,28(sp)
    3964:	92a90013 	lbu	t1,19(s5)
    3968:	312a0040 	andi	t2,t1,0x40
    396c:	51400013 	beqzl	t2,39bc <CollisionCheck_AC_JntSphVsJntSph+0x27c>
    3970:	8fbf0054 	lw	ra,84(sp)
    3974:	8ecc0018 	lw	t4,24(s6)
    3978:	8ecb001c 	lw	t3,28(s6)
    397c:	26100040 	addiu	s0,s0,64
    3980:	000c6980 	sll	t5,t4,0x6
    3984:	016d7021 	addu	t6,t3,t5
    3988:	020e082b 	sltu	at,s0,t6
    398c:	1420ffa0 	bnez	at,3810 <CollisionCheck_AC_JntSphVsJntSph+0xd0>
    3990:	00000000 	nop
    3994:	8fa2009c 	lw	v0,156(sp)
    3998:	26310040 	addiu	s1,s1,64
    399c:	8c580018 	lw	t8,24(v0)
    39a0:	8c4f001c 	lw	t7,28(v0)
    39a4:	0018c980 	sll	t9,t8,0x6
    39a8:	01f94021 	addu	t0,t7,t9
    39ac:	0228082b 	sltu	at,s1,t0
    39b0:	1420ff8c 	bnez	at,37e4 <CollisionCheck_AC_JntSphVsJntSph+0xa4>
    39b4:	00000000 	nop
    39b8:	8fbf0054 	lw	ra,84(sp)
    39bc:	d7b40028 	ldc1	$f20,40(sp)
    39c0:	8fb00030 	lw	s0,48(sp)
    39c4:	8fb10034 	lw	s1,52(sp)
    39c8:	8fb20038 	lw	s2,56(sp)
    39cc:	8fb3003c 	lw	s3,60(sp)
    39d0:	8fb40040 	lw	s4,64(sp)
    39d4:	8fb50044 	lw	s5,68(sp)
    39d8:	8fb60048 	lw	s6,72(sp)
    39dc:	8fb7004c 	lw	s7,76(sp)
    39e0:	8fbe0050 	lw	s8,80(sp)
    39e4:	03e00008 	jr	ra
    39e8:	27bd00a0 	addiu	sp,sp,160

000039ec <CollisionCheck_AC_JntSphVsCyl>:
    39ec:	27bdff70 	addiu	sp,sp,-144
    39f0:	afbf0044 	sw	ra,68(sp)
    39f4:	afb60040 	sw	s6,64(sp)
    39f8:	afb5003c 	sw	s5,60(sp)
    39fc:	afb40038 	sw	s4,56(sp)
    3a00:	afb30034 	sw	s3,52(sp)
    3a04:	afb20030 	sw	s2,48(sp)
    3a08:	afb1002c 	sw	s1,44(sp)
    3a0c:	afb00028 	sw	s0,40(sp)
    3a10:	afa40090 	sw	a0,144(sp)
    3a14:	afa50094 	sw	a1,148(sp)
    3a18:	8cce0018 	lw	t6,24(a2)
    3a1c:	00e09025 	move	s2,a3
    3a20:	00c09825 	move	s3,a2
    3a24:	59c00085 	blezl	t6,3c3c <CollisionCheck_AC_JntSphVsCyl+0x250>
    3a28:	8fbf0044 	lw	ra,68(sp)
    3a2c:	8ccf001c 	lw	t7,28(a2)
    3a30:	51e00082 	beqzl	t7,3c3c <CollisionCheck_AC_JntSphVsCyl+0x250>
    3a34:	8fbf0044 	lw	ra,68(sp)
    3a38:	84f80040 	lh	t8,64(a3)
    3a3c:	5b00007f 	blezl	t8,3c3c <CollisionCheck_AC_JntSphVsCyl+0x250>
    3a40:	8fbf0044 	lw	ra,68(sp)
    3a44:	84f90042 	lh	t9,66(a3)
    3a48:	24f60018 	addiu	s6,a3,24
    3a4c:	02c02025 	move	a0,s6
    3a50:	5b20007a 	blezl	t9,3c3c <CollisionCheck_AC_JntSphVsCyl+0x250>
    3a54:	8fbf0044 	lw	ra,68(sp)
    3a58:	0c000000 	jal	0 <func_8005B280>
    3a5c:	afa60098 	sw	a2,152(sp)
    3a60:	24110001 	li	s1,1
    3a64:	10510074 	beq	v0,s1,3c38 <CollisionCheck_AC_JntSphVsCyl+0x24c>
    3a68:	8fa30098 	lw	v1,152(sp)
    3a6c:	8c680018 	lw	t0,24(v1)
    3a70:	8c70001c 	lw	s0,28(v1)
    3a74:	27b5007c 	addiu	s5,sp,124
    3a78:	00084980 	sll	t1,t0,0x6
    3a7c:	02095021 	addu	t2,s0,t1
    3a80:	020a082b 	sltu	at,s0,t2
    3a84:	1020006c 	beqz	at,3c38 <CollisionCheck_AC_JntSphVsCyl+0x24c>
    3a88:	27b40080 	addiu	s4,sp,128
    3a8c:	0c000000 	jal	0 <func_8005B280>
    3a90:	02002025 	move	a0,s0
    3a94:	10510060 	beq	v0,s1,3c18 <CollisionCheck_AC_JntSphVsCyl+0x22c>
    3a98:	02002025 	move	a0,s0
    3a9c:	0c000000 	jal	0 <func_8005B280>
    3aa0:	02c02825 	move	a1,s6
    3aa4:	1051005c 	beq	v0,s1,3c18 <CollisionCheck_AC_JntSphVsCyl+0x22c>
    3aa8:	26040030 	addiu	a0,s0,48
    3aac:	26450040 	addiu	a1,s2,64
    3ab0:	02803025 	move	a2,s4
    3ab4:	0c000000 	jal	0 <func_8005B280>
    3ab8:	02a03825 	move	a3,s5
    3abc:	50400057 	beqzl	v0,3c1c <CollisionCheck_AC_JntSphVsCyl+0x230>
    3ac0:	8e6b0018 	lw	t3,24(s3)
    3ac4:	860b0030 	lh	t3,48(s0)
    3ac8:	3c010000 	lui	at,0x0
    3acc:	27a40070 	addiu	a0,sp,112
    3ad0:	448b2000 	mtc1	t3,$f4
    3ad4:	00000000 	nop
    3ad8:	468021a0 	cvt.s.w	$f6,$f4
    3adc:	e7a60064 	swc1	$f6,100(sp)
    3ae0:	860c0032 	lh	t4,50(s0)
    3ae4:	448c4000 	mtc1	t4,$f8
    3ae8:	00000000 	nop
    3aec:	468042a0 	cvt.s.w	$f10,$f8
    3af0:	e7aa0068 	swc1	$f10,104(sp)
    3af4:	860d0034 	lh	t5,52(s0)
    3af8:	448d8000 	mtc1	t5,$f16
    3afc:	00000000 	nop
    3b00:	468084a0 	cvt.s.w	$f18,$f16
    3b04:	e7b2006c 	swc1	$f18,108(sp)
    3b08:	864e0046 	lh	t6,70(s2)
    3b0c:	448e2000 	mtc1	t6,$f4
    3b10:	00000000 	nop
    3b14:	468021a0 	cvt.s.w	$f6,$f4
    3b18:	c7a4007c 	lwc1	$f4,124(sp)
    3b1c:	46002005 	abs.s	$f0,$f4
    3b20:	e7a60058 	swc1	$f6,88(sp)
    3b24:	864f0048 	lh	t7,72(s2)
    3b28:	c426074c 	lwc1	$f6,1868(at)
    3b2c:	448f4000 	mtc1	t7,$f8
    3b30:	4606003c 	c.lt.s	$f0,$f6
    3b34:	468042a0 	cvt.s.w	$f10,$f8
    3b38:	e7aa005c 	swc1	$f10,92(sp)
    3b3c:	8658004a 	lh	t8,74(s2)
    3b40:	44988000 	mtc1	t8,$f16
    3b44:	00000000 	nop
    3b48:	468084a0 	cvt.s.w	$f18,$f16
    3b4c:	45010023 	bc1t	3bdc <CollisionCheck_AC_JntSphVsCyl+0x1f0>
    3b50:	e7b20060 	swc1	$f18,96(sp)
    3b54:	86590040 	lh	t9,64(s2)
    3b58:	3c013f80 	lui	at,0x3f80
    3b5c:	44818000 	mtc1	at,$f16
    3b60:	44994000 	mtc1	t9,$f8
    3b64:	c7a20058 	lwc1	$f2,88(sp)
    3b68:	c7b20064 	lwc1	$f18,100(sp)
    3b6c:	468042a0 	cvt.s.w	$f10,$f8
    3b70:	27a40070 	addiu	a0,sp,112
    3b74:	46045003 	div.s	$f0,$f10,$f4
    3b78:	4610003e 	c.le.s	$f0,$f16
    3b7c:	00000000 	nop
    3b80:	45000012 	bc1f	3bcc <CollisionCheck_AC_JntSphVsCyl+0x1e0>
    3b84:	00000000 	nop
    3b88:	46029181 	sub.s	$f6,$f18,$f2
    3b8c:	c7ac005c 	lwc1	$f12,92(sp)
    3b90:	c7a40068 	lwc1	$f4,104(sp)
    3b94:	c7ae0060 	lwc1	$f14,96(sp)
    3b98:	46003202 	mul.s	$f8,$f6,$f0
    3b9c:	460c2401 	sub.s	$f16,$f4,$f12
    3ba0:	46008482 	mul.s	$f18,$f16,$f0
    3ba4:	46024280 	add.s	$f10,$f8,$f2
    3ba8:	c7a8006c 	lwc1	$f8,108(sp)
    3bac:	e7aa0070 	swc1	$f10,112(sp)
    3bb0:	460e4281 	sub.s	$f10,$f8,$f14
    3bb4:	460c9180 	add.s	$f6,$f18,$f12
    3bb8:	46005102 	mul.s	$f4,$f10,$f0
    3bbc:	e7a60074 	swc1	$f6,116(sp)
    3bc0:	460e2400 	add.s	$f16,$f4,$f14
    3bc4:	10000007 	b	3be4 <CollisionCheck_AC_JntSphVsCyl+0x1f8>
    3bc8:	e7b00078 	swc1	$f16,120(sp)
    3bcc:	0c000000 	jal	0 <func_8005B280>
    3bd0:	27a50064 	addiu	a1,sp,100
    3bd4:	10000004 	b	3be8 <CollisionCheck_AC_JntSphVsCyl+0x1fc>
    3bd8:	27a80058 	addiu	t0,sp,88
    3bdc:	0c000000 	jal	0 <func_8005B280>
    3be0:	27a50064 	addiu	a1,sp,100
    3be4:	27a80058 	addiu	t0,sp,88
    3be8:	27a90070 	addiu	t1,sp,112
    3bec:	afa9001c 	sw	t1,28(sp)
    3bf0:	afa80018 	sw	t0,24(sp)
    3bf4:	8fa40090 	lw	a0,144(sp)
    3bf8:	8fa50098 	lw	a1,152(sp)
    3bfc:	02003025 	move	a2,s0
    3c00:	27a70064 	addiu	a3,sp,100
    3c04:	afb20010 	sw	s2,16(sp)
    3c08:	0c000000 	jal	0 <func_8005B280>
    3c0c:	afb60014 	sw	s6,20(sp)
    3c10:	1000000a 	b	3c3c <CollisionCheck_AC_JntSphVsCyl+0x250>
    3c14:	8fbf0044 	lw	ra,68(sp)
    3c18:	8e6b0018 	lw	t3,24(s3)
    3c1c:	8e6a001c 	lw	t2,28(s3)
    3c20:	26100040 	addiu	s0,s0,64
    3c24:	000b6180 	sll	t4,t3,0x6
    3c28:	014c6821 	addu	t5,t2,t4
    3c2c:	020d082b 	sltu	at,s0,t5
    3c30:	1420ff96 	bnez	at,3a8c <CollisionCheck_AC_JntSphVsCyl+0xa0>
    3c34:	00000000 	nop
    3c38:	8fbf0044 	lw	ra,68(sp)
    3c3c:	8fb00028 	lw	s0,40(sp)
    3c40:	8fb1002c 	lw	s1,44(sp)
    3c44:	8fb20030 	lw	s2,48(sp)
    3c48:	8fb30034 	lw	s3,52(sp)
    3c4c:	8fb40038 	lw	s4,56(sp)
    3c50:	8fb5003c 	lw	s5,60(sp)
    3c54:	8fb60040 	lw	s6,64(sp)
    3c58:	03e00008 	jr	ra
    3c5c:	27bd0090 	addiu	sp,sp,144

00003c60 <CollisionCheck_AC_CylVsJntSph>:
    3c60:	27bdff58 	addiu	sp,sp,-168
    3c64:	afbf005c 	sw	ra,92(sp)
    3c68:	afbe0058 	sw	s8,88(sp)
    3c6c:	afb70054 	sw	s7,84(sp)
    3c70:	afb60050 	sw	s6,80(sp)
    3c74:	afb5004c 	sw	s5,76(sp)
    3c78:	afb40048 	sw	s4,72(sp)
    3c7c:	afb30044 	sw	s3,68(sp)
    3c80:	afb20040 	sw	s2,64(sp)
    3c84:	afb1003c 	sw	s1,60(sp)
    3c88:	afb00038 	sw	s0,56(sp)
    3c8c:	f7b60030 	sdc1	$f22,48(sp)
    3c90:	f7b40028 	sdc1	$f20,40(sp)
    3c94:	afa400a8 	sw	a0,168(sp)
    3c98:	afa500ac 	sw	a1,172(sp)
    3c9c:	8cee0018 	lw	t6,24(a3)
    3ca0:	00c08825 	move	s1,a2
    3ca4:	00e0a825 	move	s5,a3
    3ca8:	19c00086 	blez	t6,3ec4 <CollisionCheck_AC_CylVsJntSph+0x264>
    3cac:	00e0b825 	move	s7,a3
    3cb0:	8cef001c 	lw	t7,28(a3)
    3cb4:	51e00084 	beqzl	t7,3ec8 <CollisionCheck_AC_CylVsJntSph+0x268>
    3cb8:	8fbf005c 	lw	ra,92(sp)
    3cbc:	84d80040 	lh	t8,64(a2)
    3cc0:	5b000081 	blezl	t8,3ec8 <CollisionCheck_AC_CylVsJntSph+0x268>
    3cc4:	8fbf005c 	lw	ra,92(sp)
    3cc8:	84d90042 	lh	t9,66(a2)
    3ccc:	24d40018 	addiu	s4,a2,24
    3cd0:	5b20007d 	blezl	t9,3ec8 <CollisionCheck_AC_CylVsJntSph+0x268>
    3cd4:	8fbf005c 	lw	ra,92(sp)
    3cd8:	0c000000 	jal	0 <func_8005B280>
    3cdc:	02802025 	move	a0,s4
    3ce0:	24160001 	li	s6,1
    3ce4:	50560078 	beql	v0,s6,3ec8 <CollisionCheck_AC_CylVsJntSph+0x268>
    3ce8:	8fbf005c 	lw	ra,92(sp)
    3cec:	8ea80018 	lw	t0,24(s5)
    3cf0:	8eb0001c 	lw	s0,28(s5)
    3cf4:	27be009c 	addiu	s8,sp,156
    3cf8:	00084980 	sll	t1,t0,0x6
    3cfc:	02095021 	addu	t2,s0,t1
    3d00:	020a082b 	sltu	at,s0,t2
    3d04:	1020006f 	beqz	at,3ec4 <CollisionCheck_AC_CylVsJntSph+0x264>
    3d08:	27b30088 	addiu	s3,sp,136
    3d0c:	3c013f80 	lui	at,0x3f80
    3d10:	4481b000 	mtc1	at,$f22
    3d14:	3c010000 	lui	at,0x0
    3d18:	c4340750 	lwc1	$f20,1872(at)
    3d1c:	27b2007c 	addiu	s2,sp,124
    3d20:	0c000000 	jal	0 <func_8005B280>
    3d24:	02002025 	move	a0,s0
    3d28:	1056005e 	beq	v0,s6,3ea4 <CollisionCheck_AC_CylVsJntSph+0x244>
    3d2c:	02802025 	move	a0,s4
    3d30:	0c000000 	jal	0 <func_8005B280>
    3d34:	02002825 	move	a1,s0
    3d38:	1056005a 	beq	v0,s6,3ea4 <CollisionCheck_AC_CylVsJntSph+0x244>
    3d3c:	26040030 	addiu	a0,s0,48
    3d40:	26250040 	addiu	a1,s1,64
    3d44:	03c03025 	move	a2,s8
    3d48:	0c000000 	jal	0 <func_8005B280>
    3d4c:	27a70098 	addiu	a3,sp,152
    3d50:	50400055 	beqzl	v0,3ea8 <CollisionCheck_AC_CylVsJntSph+0x248>
    3d54:	8eec0018 	lw	t4,24(s7)
    3d58:	862b0046 	lh	t3,70(s1)
    3d5c:	02602025 	move	a0,s3
    3d60:	448b2000 	mtc1	t3,$f4
    3d64:	00000000 	nop
    3d68:	468021a0 	cvt.s.w	$f6,$f4
    3d6c:	e7a6007c 	swc1	$f6,124(sp)
    3d70:	862c0048 	lh	t4,72(s1)
    3d74:	448c4000 	mtc1	t4,$f8
    3d78:	00000000 	nop
    3d7c:	468042a0 	cvt.s.w	$f10,$f8
    3d80:	e7aa0080 	swc1	$f10,128(sp)
    3d84:	862d004a 	lh	t5,74(s1)
    3d88:	448d8000 	mtc1	t5,$f16
    3d8c:	00000000 	nop
    3d90:	468084a0 	cvt.s.w	$f18,$f16
    3d94:	e7b20084 	swc1	$f18,132(sp)
    3d98:	860e0030 	lh	t6,48(s0)
    3d9c:	448e2000 	mtc1	t6,$f4
    3da0:	00000000 	nop
    3da4:	468021a0 	cvt.s.w	$f6,$f4
    3da8:	c7a40098 	lwc1	$f4,152(sp)
    3dac:	46002005 	abs.s	$f0,$f4
    3db0:	e7a60070 	swc1	$f6,112(sp)
    3db4:	860f0032 	lh	t7,50(s0)
    3db8:	4614003c 	c.lt.s	$f0,$f20
    3dbc:	448f4000 	mtc1	t7,$f8
    3dc0:	00000000 	nop
    3dc4:	468042a0 	cvt.s.w	$f10,$f8
    3dc8:	e7aa0074 	swc1	$f10,116(sp)
    3dcc:	86180034 	lh	t8,52(s0)
    3dd0:	44988000 	mtc1	t8,$f16
    3dd4:	00000000 	nop
    3dd8:	468084a0 	cvt.s.w	$f18,$f16
    3ddc:	45010021 	bc1t	3e64 <CollisionCheck_AC_CylVsJntSph+0x204>
    3de0:	e7b20078 	swc1	$f18,120(sp)
    3de4:	86190036 	lh	t9,54(s0)
    3de8:	c7a20070 	lwc1	$f2,112(sp)
    3dec:	c7aa007c 	lwc1	$f10,124(sp)
    3df0:	44993000 	mtc1	t9,$f6
    3df4:	02602025 	move	a0,s3
    3df8:	46803220 	cvt.s.w	$f8,$f6
    3dfc:	46044003 	div.s	$f0,$f8,$f4
    3e00:	4616003e 	c.le.s	$f0,$f22
    3e04:	00000000 	nop
    3e08:	45000012 	bc1f	3e54 <CollisionCheck_AC_CylVsJntSph+0x1f4>
    3e0c:	00000000 	nop
    3e10:	46025401 	sub.s	$f16,$f10,$f2
    3e14:	c7ac0074 	lwc1	$f12,116(sp)
    3e18:	c7a80080 	lwc1	$f8,128(sp)
    3e1c:	c7ae0078 	lwc1	$f14,120(sp)
    3e20:	46008482 	mul.s	$f18,$f16,$f0
    3e24:	460c4101 	sub.s	$f4,$f8,$f12
    3e28:	46002282 	mul.s	$f10,$f4,$f0
    3e2c:	46029180 	add.s	$f6,$f18,$f2
    3e30:	c7b20084 	lwc1	$f18,132(sp)
    3e34:	e7a60088 	swc1	$f6,136(sp)
    3e38:	460e9181 	sub.s	$f6,$f18,$f14
    3e3c:	460c5400 	add.s	$f16,$f10,$f12
    3e40:	46003202 	mul.s	$f8,$f6,$f0
    3e44:	e7b0008c 	swc1	$f16,140(sp)
    3e48:	460e4100 	add.s	$f4,$f8,$f14
    3e4c:	10000007 	b	3e6c <CollisionCheck_AC_CylVsJntSph+0x20c>
    3e50:	e7a40090 	swc1	$f4,144(sp)
    3e54:	0c000000 	jal	0 <func_8005B280>
    3e58:	02402825 	move	a1,s2
    3e5c:	10000004 	b	3e70 <CollisionCheck_AC_CylVsJntSph+0x210>
    3e60:	27a80070 	addiu	t0,sp,112
    3e64:	0c000000 	jal	0 <func_8005B280>
    3e68:	02402825 	move	a1,s2
    3e6c:	27a80070 	addiu	t0,sp,112
    3e70:	afa80018 	sw	t0,24(sp)
    3e74:	8fa400a8 	lw	a0,168(sp)
    3e78:	02202825 	move	a1,s1
    3e7c:	02803025 	move	a2,s4
    3e80:	02403825 	move	a3,s2
    3e84:	afb50010 	sw	s5,16(sp)
    3e88:	afb00014 	sw	s0,20(sp)
    3e8c:	0c000000 	jal	0 <func_8005B280>
    3e90:	afb3001c 	sw	s3,28(sp)
    3e94:	92a90013 	lbu	t1,19(s5)
    3e98:	312a0040 	andi	t2,t1,0x40
    3e9c:	5140000a 	beqzl	t2,3ec8 <CollisionCheck_AC_CylVsJntSph+0x268>
    3ea0:	8fbf005c 	lw	ra,92(sp)
    3ea4:	8eec0018 	lw	t4,24(s7)
    3ea8:	8eeb001c 	lw	t3,28(s7)
    3eac:	26100040 	addiu	s0,s0,64
    3eb0:	000c6980 	sll	t5,t4,0x6
    3eb4:	016d7021 	addu	t6,t3,t5
    3eb8:	020e082b 	sltu	at,s0,t6
    3ebc:	1420ff98 	bnez	at,3d20 <CollisionCheck_AC_CylVsJntSph+0xc0>
    3ec0:	00000000 	nop
    3ec4:	8fbf005c 	lw	ra,92(sp)
    3ec8:	d7b40028 	ldc1	$f20,40(sp)
    3ecc:	d7b60030 	ldc1	$f22,48(sp)
    3ed0:	8fb00038 	lw	s0,56(sp)
    3ed4:	8fb1003c 	lw	s1,60(sp)
    3ed8:	8fb20040 	lw	s2,64(sp)
    3edc:	8fb30044 	lw	s3,68(sp)
    3ee0:	8fb40048 	lw	s4,72(sp)
    3ee4:	8fb5004c 	lw	s5,76(sp)
    3ee8:	8fb60050 	lw	s6,80(sp)
    3eec:	8fb70054 	lw	s7,84(sp)
    3ef0:	8fbe0058 	lw	s8,88(sp)
    3ef4:	03e00008 	jr	ra
    3ef8:	27bd00a8 	addiu	sp,sp,168

00003efc <CollisionCheck_AC_JntSphVsTris>:
    3efc:	27bdff78 	addiu	sp,sp,-136
    3f00:	afbf0044 	sw	ra,68(sp)
    3f04:	afb70040 	sw	s7,64(sp)
    3f08:	afb6003c 	sw	s6,60(sp)
    3f0c:	afb50038 	sw	s5,56(sp)
    3f10:	afb40034 	sw	s4,52(sp)
    3f14:	afb30030 	sw	s3,48(sp)
    3f18:	afb2002c 	sw	s2,44(sp)
    3f1c:	afb10028 	sw	s1,40(sp)
    3f20:	afb00024 	sw	s0,36(sp)
    3f24:	afa40088 	sw	a0,136(sp)
    3f28:	afa5008c 	sw	a1,140(sp)
    3f2c:	8cc30018 	lw	v1,24(a2)
    3f30:	00e0b025 	move	s6,a3
    3f34:	00c0b825 	move	s7,a2
    3f38:	1860006d 	blez	v1,40f0 <CollisionCheck_AC_JntSphVsTris+0x1f4>
    3f3c:	00e09825 	move	s3,a3
    3f40:	8cc2001c 	lw	v0,28(a2)
    3f44:	5040006b 	beqzl	v0,40f4 <CollisionCheck_AC_JntSphVsTris+0x1f8>
    3f48:	8fbf0044 	lw	ra,68(sp)
    3f4c:	8cee0018 	lw	t6,24(a3)
    3f50:	59c00068 	blezl	t6,40f4 <CollisionCheck_AC_JntSphVsTris+0x1f8>
    3f54:	8fbf0044 	lw	ra,68(sp)
    3f58:	8cef001c 	lw	t7,28(a3)
    3f5c:	0003c180 	sll	t8,v1,0x6
    3f60:	0058c821 	addu	t9,v0,t8
    3f64:	11e00062 	beqz	t7,40f0 <CollisionCheck_AC_JntSphVsTris+0x1f4>
    3f68:	0059082b 	sltu	at,v0,t9
    3f6c:	10200060 	beqz	at,40f0 <CollisionCheck_AC_JntSphVsTris+0x1f4>
    3f70:	00409025 	move	s2,v0
    3f74:	afa60090 	sw	a2,144(sp)
    3f78:	27b5006c 	addiu	s5,sp,108
    3f7c:	2414005c 	li	s4,92
    3f80:	24110001 	li	s1,1
    3f84:	0c000000 	jal	0 <func_8005B280>
    3f88:	02402025 	move	a0,s2
    3f8c:	50510051 	beql	v0,s1,40d4 <CollisionCheck_AC_JntSphVsTris+0x1d8>
    3f90:	8eea0018 	lw	t2,24(s7)
    3f94:	8ec80018 	lw	t0,24(s6)
    3f98:	8ed0001c 	lw	s0,28(s6)
    3f9c:	01140019 	multu	t0,s4
    3fa0:	00004812 	mflo	t1
    3fa4:	02095021 	addu	t2,s0,t1
    3fa8:	020a082b 	sltu	at,s0,t2
    3fac:	50200049 	beqzl	at,40d4 <CollisionCheck_AC_JntSphVsTris+0x1d8>
    3fb0:	8eea0018 	lw	t2,24(s7)
    3fb4:	0c000000 	jal	0 <func_8005B280>
    3fb8:	02002025 	move	a0,s0
    3fbc:	1051003b 	beq	v0,s1,40ac <CollisionCheck_AC_JntSphVsTris+0x1b0>
    3fc0:	02402025 	move	a0,s2
    3fc4:	0c000000 	jal	0 <func_8005B280>
    3fc8:	02002825 	move	a1,s0
    3fcc:	10510037 	beq	v0,s1,40ac <CollisionCheck_AC_JntSphVsTris+0x1b0>
    3fd0:	26440030 	addiu	a0,s2,48
    3fd4:	26050028 	addiu	a1,s0,40
    3fd8:	0c000000 	jal	0 <func_8005B280>
    3fdc:	02a03025 	move	a2,s5
    3fe0:	54510033 	bnel	v0,s1,40b0 <CollisionCheck_AC_JntSphVsTris+0x1b4>
    3fe4:	8e780018 	lw	t8,24(s3)
    3fe8:	864b0030 	lh	t3,48(s2)
    3fec:	3c010000 	lui	at,0x0
    3ff0:	c4200754 	lwc1	$f0,1876(at)
    3ff4:	448b2000 	mtc1	t3,$f4
    3ff8:	27ae0054 	addiu	t6,sp,84
    3ffc:	8fa40088 	lw	a0,136(sp)
    4000:	468021a0 	cvt.s.w	$f6,$f4
    4004:	8fa50090 	lw	a1,144(sp)
    4008:	02403025 	move	a2,s2
    400c:	27a70060 	addiu	a3,sp,96
    4010:	e7a60060 	swc1	$f6,96(sp)
    4014:	864c0032 	lh	t4,50(s2)
    4018:	448c4000 	mtc1	t4,$f8
    401c:	00000000 	nop
    4020:	468042a0 	cvt.s.w	$f10,$f8
    4024:	e7aa0064 	swc1	$f10,100(sp)
    4028:	864d0034 	lh	t5,52(s2)
    402c:	448d8000 	mtc1	t5,$f16
    4030:	00000000 	nop
    4034:	468084a0 	cvt.s.w	$f18,$f16
    4038:	e7b20068 	swc1	$f18,104(sp)
    403c:	c6060034 	lwc1	$f6,52(s0)
    4040:	c6040028 	lwc1	$f4,40(s0)
    4044:	c60a0040 	lwc1	$f10,64(s0)
    4048:	46062200 	add.s	$f8,$f4,$f6
    404c:	46085400 	add.s	$f16,$f10,$f8
    4050:	46008482 	mul.s	$f18,$f16,$f0
    4054:	e7b20054 	swc1	$f18,84(sp)
    4058:	c6060038 	lwc1	$f6,56(s0)
    405c:	c604002c 	lwc1	$f4,44(s0)
    4060:	c6080044 	lwc1	$f8,68(s0)
    4064:	46062280 	add.s	$f10,$f4,$f6
    4068:	460a4400 	add.s	$f16,$f8,$f10
    406c:	46008482 	mul.s	$f18,$f16,$f0
    4070:	e7b20058 	swc1	$f18,88(sp)
    4074:	c606003c 	lwc1	$f6,60(s0)
    4078:	c6040030 	lwc1	$f4,48(s0)
    407c:	c60a0048 	lwc1	$f10,72(s0)
    4080:	afb5001c 	sw	s5,28(sp)
    4084:	46062200 	add.s	$f8,$f4,$f6
    4088:	afae0018 	sw	t6,24(sp)
    408c:	afb00014 	sw	s0,20(sp)
    4090:	afb60010 	sw	s6,16(sp)
    4094:	46085400 	add.s	$f16,$f10,$f8
    4098:	46008482 	mul.s	$f18,$f16,$f0
    409c:	0c000000 	jal	0 <func_8005B280>
    40a0:	e7b2005c 	swc1	$f18,92(sp)
    40a4:	10000013 	b	40f4 <CollisionCheck_AC_JntSphVsTris+0x1f8>
    40a8:	8fbf0044 	lw	ra,68(sp)
    40ac:	8e780018 	lw	t8,24(s3)
    40b0:	8e6f001c 	lw	t7,28(s3)
    40b4:	2610005c 	addiu	s0,s0,92
    40b8:	03140019 	multu	t8,s4
    40bc:	0000c812 	mflo	t9
    40c0:	01f94021 	addu	t0,t7,t9
    40c4:	0208082b 	sltu	at,s0,t0
    40c8:	1420ffba 	bnez	at,3fb4 <CollisionCheck_AC_JntSphVsTris+0xb8>
    40cc:	00000000 	nop
    40d0:	8eea0018 	lw	t2,24(s7)
    40d4:	8ee9001c 	lw	t1,28(s7)
    40d8:	26520040 	addiu	s2,s2,64
    40dc:	000a5980 	sll	t3,t2,0x6
    40e0:	012b6021 	addu	t4,t1,t3
    40e4:	024c082b 	sltu	at,s2,t4
    40e8:	1420ffa6 	bnez	at,3f84 <CollisionCheck_AC_JntSphVsTris+0x88>
    40ec:	00000000 	nop
    40f0:	8fbf0044 	lw	ra,68(sp)
    40f4:	8fb00024 	lw	s0,36(sp)
    40f8:	8fb10028 	lw	s1,40(sp)
    40fc:	8fb2002c 	lw	s2,44(sp)
    4100:	8fb30030 	lw	s3,48(sp)
    4104:	8fb40034 	lw	s4,52(sp)
    4108:	8fb50038 	lw	s5,56(sp)
    410c:	8fb6003c 	lw	s6,60(sp)
    4110:	8fb70040 	lw	s7,64(sp)
    4114:	03e00008 	jr	ra
    4118:	27bd0088 	addiu	sp,sp,136

0000411c <CollisionCheck_AC_TrisVsJntSph>:
    411c:	27bdff68 	addiu	sp,sp,-152
    4120:	afbf0054 	sw	ra,84(sp)
    4124:	afbe0050 	sw	s8,80(sp)
    4128:	afb7004c 	sw	s7,76(sp)
    412c:	afb60048 	sw	s6,72(sp)
    4130:	afb50044 	sw	s5,68(sp)
    4134:	afb40040 	sw	s4,64(sp)
    4138:	afb3003c 	sw	s3,60(sp)
    413c:	afb20038 	sw	s2,56(sp)
    4140:	afb10034 	sw	s1,52(sp)
    4144:	afb00030 	sw	s0,48(sp)
    4148:	f7b40028 	sdc1	$f20,40(sp)
    414c:	afa40098 	sw	a0,152(sp)
    4150:	afa5009c 	sw	a1,156(sp)
    4154:	afa7008c 	sw	a3,140(sp)
    4158:	8ce30018 	lw	v1,24(a3)
    415c:	00e0b025 	move	s6,a3
    4160:	00c0b825 	move	s7,a2
    4164:	58600066 	blezl	v1,4300 <CollisionCheck_AC_TrisVsJntSph+0x1e4>
    4168:	8fbf0054 	lw	ra,84(sp)
    416c:	8ce2001c 	lw	v0,28(a3)
    4170:	50400063 	beqzl	v0,4300 <CollisionCheck_AC_TrisVsJntSph+0x1e4>
    4174:	8fbf0054 	lw	ra,84(sp)
    4178:	8cce0018 	lw	t6,24(a2)
    417c:	59c00060 	blezl	t6,4300 <CollisionCheck_AC_TrisVsJntSph+0x1e4>
    4180:	8fbf0054 	lw	ra,84(sp)
    4184:	8ccf001c 	lw	t7,28(a2)
    4188:	0003c180 	sll	t8,v1,0x6
    418c:	0058c821 	addu	t9,v0,t8
    4190:	11e0005a 	beqz	t7,42fc <CollisionCheck_AC_TrisVsJntSph+0x1e0>
    4194:	0059082b 	sltu	at,v0,t9
    4198:	10200058 	beqz	at,42fc <CollisionCheck_AC_TrisVsJntSph+0x1e0>
    419c:	00409825 	move	s3,v0
    41a0:	3c010000 	lui	at,0x0
    41a4:	c4340758 	lwc1	$f20,1880(at)
    41a8:	afa600a0 	sw	a2,160(sp)
    41ac:	241e005c 	li	s8,92
    41b0:	27b50064 	addiu	s5,sp,100
    41b4:	27b4007c 	addiu	s4,sp,124
    41b8:	24120001 	li	s2,1
    41bc:	0c000000 	jal	0 <func_8005B280>
    41c0:	02602025 	move	a0,s3
    41c4:	10520044 	beq	v0,s2,42d8 <CollisionCheck_AC_TrisVsJntSph+0x1bc>
    41c8:	8fa800a0 	lw	t0,160(sp)
    41cc:	8d090018 	lw	t1,24(t0)
    41d0:	8d10001c 	lw	s0,28(t0)
    41d4:	013e0019 	multu	t1,s8
    41d8:	00005012 	mflo	t2
    41dc:	020a5821 	addu	t3,s0,t2
    41e0:	020b082b 	sltu	at,s0,t3
    41e4:	5020003d 	beqzl	at,42dc <CollisionCheck_AC_TrisVsJntSph+0x1c0>
    41e8:	8fa2008c 	lw	v0,140(sp)
    41ec:	0c000000 	jal	0 <func_8005B280>
    41f0:	02002025 	move	a0,s0
    41f4:	1052002f 	beq	v0,s2,42b4 <CollisionCheck_AC_TrisVsJntSph+0x198>
    41f8:	02002025 	move	a0,s0
    41fc:	0c000000 	jal	0 <func_8005B280>
    4200:	02602825 	move	a1,s3
    4204:	1052002b 	beq	v0,s2,42b4 <CollisionCheck_AC_TrisVsJntSph+0x198>
    4208:	26710030 	addiu	s1,s3,48
    420c:	02202025 	move	a0,s1
    4210:	26050028 	addiu	a1,s0,40
    4214:	0c000000 	jal	0 <func_8005B280>
    4218:	02803025 	move	a2,s4
    421c:	14520025 	bne	v0,s2,42b4 <CollisionCheck_AC_TrisVsJntSph+0x198>
    4220:	02a02025 	move	a0,s5
    4224:	0c000000 	jal	0 <func_8005B280>
    4228:	02202825 	move	a1,s1
    422c:	c6040028 	lwc1	$f4,40(s0)
    4230:	c6060034 	lwc1	$f6,52(s0)
    4234:	c60a0040 	lwc1	$f10,64(s0)
    4238:	8fa40098 	lw	a0,152(sp)
    423c:	46062200 	add.s	$f8,$f4,$f6
    4240:	8fa500a0 	lw	a1,160(sp)
    4244:	02003025 	move	a2,s0
    4248:	27a70070 	addiu	a3,sp,112
    424c:	46085400 	add.s	$f16,$f10,$f8
    4250:	46148482 	mul.s	$f18,$f16,$f20
    4254:	e7b20070 	swc1	$f18,112(sp)
    4258:	c6060038 	lwc1	$f6,56(s0)
    425c:	c604002c 	lwc1	$f4,44(s0)
    4260:	c6080044 	lwc1	$f8,68(s0)
    4264:	46062280 	add.s	$f10,$f4,$f6
    4268:	460a4400 	add.s	$f16,$f8,$f10
    426c:	46148482 	mul.s	$f18,$f16,$f20
    4270:	e7b20074 	swc1	$f18,116(sp)
    4274:	c606003c 	lwc1	$f6,60(s0)
    4278:	c6040030 	lwc1	$f4,48(s0)
    427c:	c60a0048 	lwc1	$f10,72(s0)
    4280:	afb4001c 	sw	s4,28(sp)
    4284:	46062200 	add.s	$f8,$f4,$f6
    4288:	afb50018 	sw	s5,24(sp)
    428c:	afb30014 	sw	s3,20(sp)
    4290:	afb60010 	sw	s6,16(sp)
    4294:	46085400 	add.s	$f16,$f10,$f8
    4298:	46148482 	mul.s	$f18,$f16,$f20
    429c:	0c000000 	jal	0 <func_8005B280>
    42a0:	e7b20078 	swc1	$f18,120(sp)
    42a4:	92cc0013 	lbu	t4,19(s6)
    42a8:	318d0040 	andi	t5,t4,0x40
    42ac:	51a00014 	beqzl	t5,4300 <CollisionCheck_AC_TrisVsJntSph+0x1e4>
    42b0:	8fbf0054 	lw	ra,84(sp)
    42b4:	8eef0018 	lw	t7,24(s7)
    42b8:	8eee001c 	lw	t6,28(s7)
    42bc:	2610005c 	addiu	s0,s0,92
    42c0:	01fe0019 	multu	t7,s8
    42c4:	0000c012 	mflo	t8
    42c8:	01d8c821 	addu	t9,t6,t8
    42cc:	0219082b 	sltu	at,s0,t9
    42d0:	1420ffc6 	bnez	at,41ec <CollisionCheck_AC_TrisVsJntSph+0xd0>
    42d4:	00000000 	nop
    42d8:	8fa2008c 	lw	v0,140(sp)
    42dc:	26730040 	addiu	s3,s3,64
    42e0:	8c490018 	lw	t1,24(v0)
    42e4:	8c48001c 	lw	t0,28(v0)
    42e8:	00095180 	sll	t2,t1,0x6
    42ec:	010a5821 	addu	t3,t0,t2
    42f0:	026b082b 	sltu	at,s3,t3
    42f4:	1420ffb1 	bnez	at,41bc <CollisionCheck_AC_TrisVsJntSph+0xa0>
    42f8:	00000000 	nop
    42fc:	8fbf0054 	lw	ra,84(sp)
    4300:	d7b40028 	ldc1	$f20,40(sp)
    4304:	8fb00030 	lw	s0,48(sp)
    4308:	8fb10034 	lw	s1,52(sp)
    430c:	8fb20038 	lw	s2,56(sp)
    4310:	8fb3003c 	lw	s3,60(sp)
    4314:	8fb40040 	lw	s4,64(sp)
    4318:	8fb50044 	lw	s5,68(sp)
    431c:	8fb60048 	lw	s6,72(sp)
    4320:	8fb7004c 	lw	s7,76(sp)
    4324:	8fbe0050 	lw	s8,80(sp)
    4328:	03e00008 	jr	ra
    432c:	27bd0098 	addiu	sp,sp,152

00004330 <CollisionCheck_AC_JntSphVsQuad>:
    4330:	27bdff70 	addiu	sp,sp,-144
    4334:	afbf004c 	sw	ra,76(sp)
    4338:	afbe0048 	sw	s8,72(sp)
    433c:	afb70044 	sw	s7,68(sp)
    4340:	afb60040 	sw	s6,64(sp)
    4344:	afb5003c 	sw	s5,60(sp)
    4348:	afb40038 	sw	s4,56(sp)
    434c:	afb30034 	sw	s3,52(sp)
    4350:	afb20030 	sw	s2,48(sp)
    4354:	afb1002c 	sw	s1,44(sp)
    4358:	afb00028 	sw	s0,40(sp)
    435c:	afa40090 	sw	a0,144(sp)
    4360:	afa50094 	sw	a1,148(sp)
    4364:	8cce0018 	lw	t6,24(a2)
    4368:	00e09825 	move	s3,a3
    436c:	00c0a825 	move	s5,a2
    4370:	59c0006c 	blezl	t6,4524 <CollisionCheck_AC_JntSphVsQuad+0x1f4>
    4374:	8fbf004c 	lw	ra,76(sp)
    4378:	8ccf001c 	lw	t7,28(a2)
    437c:	24f60018 	addiu	s6,a3,24
    4380:	02c02025 	move	a0,s6
    4384:	51e00067 	beqzl	t7,4524 <CollisionCheck_AC_JntSphVsQuad+0x1f4>
    4388:	8fbf004c 	lw	ra,76(sp)
    438c:	0c000000 	jal	0 <func_8005B280>
    4390:	afa60098 	sw	a2,152(sp)
    4394:	24120001 	li	s2,1
    4398:	10520061 	beq	v0,s2,4520 <CollisionCheck_AC_JntSphVsQuad+0x1f0>
    439c:	3c170000 	lui	s7,0x0
    43a0:	26f71330 	addiu	s7,s7,4912
    43a4:	26710058 	addiu	s1,s3,88
    43a8:	2670004c 	addiu	s0,s3,76
    43ac:	02003825 	move	a3,s0
    43b0:	02202825 	move	a1,s1
    43b4:	02e02025 	move	a0,s7
    43b8:	0c000000 	jal	0 <func_8005B280>
    43bc:	26660064 	addiu	a2,s3,100
    43c0:	3c1e0000 	lui	s8,0x0
    43c4:	27de1368 	addiu	s8,s8,4968
    43c8:	03c02025 	move	a0,s8
    43cc:	02002825 	move	a1,s0
    43d0:	26660040 	addiu	a2,s3,64
    43d4:	0c000000 	jal	0 <func_8005B280>
    43d8:	02203825 	move	a3,s1
    43dc:	8fa30098 	lw	v1,152(sp)
    43e0:	27b4007c 	addiu	s4,sp,124
    43e4:	8c780018 	lw	t8,24(v1)
    43e8:	8c70001c 	lw	s0,28(v1)
    43ec:	0018c980 	sll	t9,t8,0x6
    43f0:	02194021 	addu	t0,s0,t9
    43f4:	0208082b 	sltu	at,s0,t0
    43f8:	5020004a 	beqzl	at,4524 <CollisionCheck_AC_JntSphVsQuad+0x1f4>
    43fc:	8fbf004c 	lw	ra,76(sp)
    4400:	0c000000 	jal	0 <func_8005B280>
    4404:	02002025 	move	a0,s0
    4408:	1052003d 	beq	v0,s2,4500 <CollisionCheck_AC_JntSphVsQuad+0x1d0>
    440c:	02002025 	move	a0,s0
    4410:	0c000000 	jal	0 <func_8005B280>
    4414:	02c02825 	move	a1,s6
    4418:	10520039 	beq	v0,s2,4500 <CollisionCheck_AC_JntSphVsQuad+0x1d0>
    441c:	26110030 	addiu	s1,s0,48
    4420:	02202025 	move	a0,s1
    4424:	02e02825 	move	a1,s7
    4428:	0c000000 	jal	0 <func_8005B280>
    442c:	02803025 	move	a2,s4
    4430:	10520006 	beq	v0,s2,444c <CollisionCheck_AC_JntSphVsQuad+0x11c>
    4434:	02202025 	move	a0,s1
    4438:	03c02825 	move	a1,s8
    443c:	0c000000 	jal	0 <func_8005B280>
    4440:	02803025 	move	a2,s4
    4444:	5452002f 	bnel	v0,s2,4504 <CollisionCheck_AC_JntSphVsQuad+0x1d4>
    4448:	8eab0018 	lw	t3,24(s5)
    444c:	27b2006c 	addiu	s2,sp,108
    4450:	02402025 	move	a0,s2
    4454:	0c000000 	jal	0 <func_8005B280>
    4458:	02202825 	move	a1,s1
    445c:	c6640058 	lwc1	$f4,88(s3)
    4460:	c6660064 	lwc1	$f6,100(s3)
    4464:	c66a004c 	lwc1	$f10,76(s3)
    4468:	c6720040 	lwc1	$f18,64(s3)
    446c:	46062200 	add.s	$f8,$f4,$f6
    4470:	3c013e80 	lui	at,0x3e80
    4474:	44810000 	mtc1	at,$f0
    4478:	27a90060 	addiu	t1,sp,96
    447c:	460a4400 	add.s	$f16,$f8,$f10
    4480:	8fa40090 	lw	a0,144(sp)
    4484:	8fa50098 	lw	a1,152(sp)
    4488:	02003025 	move	a2,s0
    448c:	46128100 	add.s	$f4,$f16,$f18
    4490:	02403825 	move	a3,s2
    4494:	46002182 	mul.s	$f6,$f4,$f0
    4498:	e7a60060 	swc1	$f6,96(sp)
    449c:	c66a0068 	lwc1	$f10,104(s3)
    44a0:	c668005c 	lwc1	$f8,92(s3)
    44a4:	c6720050 	lwc1	$f18,80(s3)
    44a8:	c6660044 	lwc1	$f6,68(s3)
    44ac:	460a4400 	add.s	$f16,$f8,$f10
    44b0:	46128100 	add.s	$f4,$f16,$f18
    44b4:	46062200 	add.s	$f8,$f4,$f6
    44b8:	46004282 	mul.s	$f10,$f8,$f0
    44bc:	e7aa0064 	swc1	$f10,100(sp)
    44c0:	c672006c 	lwc1	$f18,108(s3)
    44c4:	c6700060 	lwc1	$f16,96(s3)
    44c8:	c6660054 	lwc1	$f6,84(s3)
    44cc:	c66a0048 	lwc1	$f10,72(s3)
    44d0:	46128100 	add.s	$f4,$f16,$f18
    44d4:	afb4001c 	sw	s4,28(sp)
    44d8:	afa90018 	sw	t1,24(sp)
    44dc:	afb60014 	sw	s6,20(sp)
    44e0:	46062200 	add.s	$f8,$f4,$f6
    44e4:	afb30010 	sw	s3,16(sp)
    44e8:	460a4400 	add.s	$f16,$f8,$f10
    44ec:	46008482 	mul.s	$f18,$f16,$f0
    44f0:	0c000000 	jal	0 <func_8005B280>
    44f4:	e7b20068 	swc1	$f18,104(sp)
    44f8:	1000000a 	b	4524 <CollisionCheck_AC_JntSphVsQuad+0x1f4>
    44fc:	8fbf004c 	lw	ra,76(sp)
    4500:	8eab0018 	lw	t3,24(s5)
    4504:	8eaa001c 	lw	t2,28(s5)
    4508:	26100040 	addiu	s0,s0,64
    450c:	000b6180 	sll	t4,t3,0x6
    4510:	014c6821 	addu	t5,t2,t4
    4514:	020d082b 	sltu	at,s0,t5
    4518:	1420ffb9 	bnez	at,4400 <CollisionCheck_AC_JntSphVsQuad+0xd0>
    451c:	00000000 	nop
    4520:	8fbf004c 	lw	ra,76(sp)
    4524:	8fb00028 	lw	s0,40(sp)
    4528:	8fb1002c 	lw	s1,44(sp)
    452c:	8fb20030 	lw	s2,48(sp)
    4530:	8fb30034 	lw	s3,52(sp)
    4534:	8fb40038 	lw	s4,56(sp)
    4538:	8fb5003c 	lw	s5,60(sp)
    453c:	8fb60040 	lw	s6,64(sp)
    4540:	8fb70044 	lw	s7,68(sp)
    4544:	8fbe0048 	lw	s8,72(sp)
    4548:	03e00008 	jr	ra
    454c:	27bd0090 	addiu	sp,sp,144

00004550 <CollisionCheck_AC_QuadVsJntSph>:
    4550:	27bdff68 	addiu	sp,sp,-152
    4554:	afbf0054 	sw	ra,84(sp)
    4558:	afbe0050 	sw	s8,80(sp)
    455c:	afb7004c 	sw	s7,76(sp)
    4560:	afb60048 	sw	s6,72(sp)
    4564:	afb50044 	sw	s5,68(sp)
    4568:	afb40040 	sw	s4,64(sp)
    456c:	afb3003c 	sw	s3,60(sp)
    4570:	afb20038 	sw	s2,56(sp)
    4574:	afb10034 	sw	s1,52(sp)
    4578:	afb00030 	sw	s0,48(sp)
    457c:	f7b40028 	sdc1	$f20,40(sp)
    4580:	afa5009c 	sw	a1,156(sp)
    4584:	8cee0018 	lw	t6,24(a3)
    4588:	00c08025 	move	s0,a2
    458c:	00e0a825 	move	s5,a3
    4590:	0080f025 	move	s8,a0
    4594:	19c00079 	blez	t6,477c <CollisionCheck_AC_QuadVsJntSph+0x22c>
    4598:	00e0b825 	move	s7,a3
    459c:	8cef001c 	lw	t7,28(a3)
    45a0:	24d60018 	addiu	s6,a2,24
    45a4:	51e00076 	beqzl	t7,4780 <CollisionCheck_AC_QuadVsJntSph+0x230>
    45a8:	8fbf0054 	lw	ra,84(sp)
    45ac:	0c000000 	jal	0 <func_8005B280>
    45b0:	02c02025 	move	a0,s6
    45b4:	24140001 	li	s4,1
    45b8:	10540070 	beq	v0,s4,477c <CollisionCheck_AC_QuadVsJntSph+0x22c>
    45bc:	3c040000 	lui	a0,0x0
    45c0:	26110058 	addiu	s1,s0,88
    45c4:	2612004c 	addiu	s2,s0,76
    45c8:	02403825 	move	a3,s2
    45cc:	02202825 	move	a1,s1
    45d0:	248413a0 	addiu	a0,a0,5024
    45d4:	0c000000 	jal	0 <func_8005B280>
    45d8:	26060064 	addiu	a2,s0,100
    45dc:	3c040000 	lui	a0,0x0
    45e0:	248413d8 	addiu	a0,a0,5080
    45e4:	02202825 	move	a1,s1
    45e8:	02403025 	move	a2,s2
    45ec:	0c000000 	jal	0 <func_8005B280>
    45f0:	26070040 	addiu	a3,s0,64
    45f4:	8eb80018 	lw	t8,24(s5)
    45f8:	8eb1001c 	lw	s1,28(s5)
    45fc:	0018c980 	sll	t9,t8,0x6
    4600:	02394021 	addu	t0,s1,t9
    4604:	0228082b 	sltu	at,s1,t0
    4608:	1020005c 	beqz	at,477c <CollisionCheck_AC_QuadVsJntSph+0x22c>
    460c:	3c013e80 	lui	at,0x3e80
    4610:	4481a000 	mtc1	at,$f20
    4614:	27b30088 	addiu	s3,sp,136
    4618:	0c000000 	jal	0 <func_8005B280>
    461c:	02202025 	move	a0,s1
    4620:	1054004e 	beq	v0,s4,475c <CollisionCheck_AC_QuadVsJntSph+0x20c>
    4624:	02c02025 	move	a0,s6
    4628:	0c000000 	jal	0 <func_8005B280>
    462c:	02202825 	move	a1,s1
    4630:	1054004a 	beq	v0,s4,475c <CollisionCheck_AC_QuadVsJntSph+0x20c>
    4634:	26320030 	addiu	s2,s1,48
    4638:	3c050000 	lui	a1,0x0
    463c:	24a513a0 	addiu	a1,a1,5024
    4640:	02402025 	move	a0,s2
    4644:	0c000000 	jal	0 <func_8005B280>
    4648:	02603025 	move	a2,s3
    464c:	10540006 	beq	v0,s4,4668 <CollisionCheck_AC_QuadVsJntSph+0x118>
    4650:	02402025 	move	a0,s2
    4654:	3c050000 	lui	a1,0x0
    4658:	24a513d8 	addiu	a1,a1,5080
    465c:	0c000000 	jal	0 <func_8005B280>
    4660:	02603025 	move	a2,s3
    4664:	1454003d 	bne	v0,s4,475c <CollisionCheck_AC_QuadVsJntSph+0x20c>
    4668:	03c02025 	move	a0,s8
    466c:	02002825 	move	a1,s0
    4670:	0c000000 	jal	0 <func_8005B280>
    4674:	02603025 	move	a2,s3
    4678:	50400039 	beqzl	v0,4760 <CollisionCheck_AC_QuadVsJntSph+0x210>
    467c:	8ef80018 	lw	t8,24(s7)
    4680:	86290030 	lh	t1,48(s1)
    4684:	27ac0068 	addiu	t4,sp,104
    4688:	03c02025 	move	a0,s8
    468c:	44892000 	mtc1	t1,$f4
    4690:	02002825 	move	a1,s0
    4694:	02c03025 	move	a2,s6
    4698:	468021a0 	cvt.s.w	$f6,$f4
    469c:	27a70074 	addiu	a3,sp,116
    46a0:	e7a60068 	swc1	$f6,104(sp)
    46a4:	862a0032 	lh	t2,50(s1)
    46a8:	448a4000 	mtc1	t2,$f8
    46ac:	00000000 	nop
    46b0:	468042a0 	cvt.s.w	$f10,$f8
    46b4:	e7aa006c 	swc1	$f10,108(sp)
    46b8:	862b0034 	lh	t3,52(s1)
    46bc:	448b8000 	mtc1	t3,$f16
    46c0:	00000000 	nop
    46c4:	468084a0 	cvt.s.w	$f18,$f16
    46c8:	e7b20070 	swc1	$f18,112(sp)
    46cc:	c6060064 	lwc1	$f6,100(s0)
    46d0:	c6040058 	lwc1	$f4,88(s0)
    46d4:	c60a004c 	lwc1	$f10,76(s0)
    46d8:	c6120040 	lwc1	$f18,64(s0)
    46dc:	46062200 	add.s	$f8,$f4,$f6
    46e0:	460a4400 	add.s	$f16,$f8,$f10
    46e4:	46128100 	add.s	$f4,$f16,$f18
    46e8:	46142182 	mul.s	$f6,$f4,$f20
    46ec:	e7a60074 	swc1	$f6,116(sp)
    46f0:	c60a0068 	lwc1	$f10,104(s0)
    46f4:	c608005c 	lwc1	$f8,92(s0)
    46f8:	c6120050 	lwc1	$f18,80(s0)
    46fc:	c6060044 	lwc1	$f6,68(s0)
    4700:	460a4400 	add.s	$f16,$f8,$f10
    4704:	46128100 	add.s	$f4,$f16,$f18
    4708:	46062200 	add.s	$f8,$f4,$f6
    470c:	46144282 	mul.s	$f10,$f8,$f20
    4710:	e7aa0078 	swc1	$f10,120(sp)
    4714:	c612006c 	lwc1	$f18,108(s0)
    4718:	c6100060 	lwc1	$f16,96(s0)
    471c:	c6060054 	lwc1	$f6,84(s0)
    4720:	c60a0048 	lwc1	$f10,72(s0)
    4724:	46128100 	add.s	$f4,$f16,$f18
    4728:	afb3001c 	sw	s3,28(sp)
    472c:	afac0018 	sw	t4,24(sp)
    4730:	afb10014 	sw	s1,20(sp)
    4734:	46062200 	add.s	$f8,$f4,$f6
    4738:	afb50010 	sw	s5,16(sp)
    473c:	460a4400 	add.s	$f16,$f8,$f10
    4740:	46148482 	mul.s	$f18,$f16,$f20
    4744:	0c000000 	jal	0 <func_8005B280>
    4748:	e7b2007c 	swc1	$f18,124(sp)
    474c:	92ad0013 	lbu	t5,19(s5)
    4750:	31ae0040 	andi	t6,t5,0x40
    4754:	51c0000a 	beqzl	t6,4780 <CollisionCheck_AC_QuadVsJntSph+0x230>
    4758:	8fbf0054 	lw	ra,84(sp)
    475c:	8ef80018 	lw	t8,24(s7)
    4760:	8eef001c 	lw	t7,28(s7)
    4764:	26310040 	addiu	s1,s1,64
    4768:	0018c980 	sll	t9,t8,0x6
    476c:	01f94021 	addu	t0,t7,t9
    4770:	0228082b 	sltu	at,s1,t0
    4774:	1420ffa8 	bnez	at,4618 <CollisionCheck_AC_QuadVsJntSph+0xc8>
    4778:	00000000 	nop
    477c:	8fbf0054 	lw	ra,84(sp)
    4780:	d7b40028 	ldc1	$f20,40(sp)
    4784:	8fb00030 	lw	s0,48(sp)
    4788:	8fb10034 	lw	s1,52(sp)
    478c:	8fb20038 	lw	s2,56(sp)
    4790:	8fb3003c 	lw	s3,60(sp)
    4794:	8fb40040 	lw	s4,64(sp)
    4798:	8fb50044 	lw	s5,68(sp)
    479c:	8fb60048 	lw	s6,72(sp)
    47a0:	8fb7004c 	lw	s7,76(sp)
    47a4:	8fbe0050 	lw	s8,80(sp)
    47a8:	03e00008 	jr	ra
    47ac:	27bd0098 	addiu	sp,sp,152

000047b0 <CollisionCheck_AC_CylVsCyl>:
    47b0:	27bdff88 	addiu	sp,sp,-120
    47b4:	afbf002c 	sw	ra,44(sp)
    47b8:	afb10028 	sw	s1,40(sp)
    47bc:	afb00024 	sw	s0,36(sp)
    47c0:	afa40078 	sw	a0,120(sp)
    47c4:	afa5007c 	sw	a1,124(sp)
    47c8:	84ce0040 	lh	t6,64(a2)
    47cc:	00e08025 	move	s0,a3
    47d0:	00c08825 	move	s1,a2
    47d4:	59c00067 	blezl	t6,4974 <CollisionCheck_AC_CylVsCyl+0x1c4>
    47d8:	8fbf002c 	lw	ra,44(sp)
    47dc:	84cf0042 	lh	t7,66(a2)
    47e0:	59e00064 	blezl	t7,4974 <CollisionCheck_AC_CylVsCyl+0x1c4>
    47e4:	8fbf002c 	lw	ra,44(sp)
    47e8:	84f80040 	lh	t8,64(a3)
    47ec:	5b000061 	blezl	t8,4974 <CollisionCheck_AC_CylVsCyl+0x1c4>
    47f0:	8fbf002c 	lw	ra,44(sp)
    47f4:	84f90042 	lh	t9,66(a3)
    47f8:	24e40018 	addiu	a0,a3,24
    47fc:	5b20005d 	blezl	t9,4974 <CollisionCheck_AC_CylVsCyl+0x1c4>
    4800:	8fbf002c 	lw	ra,44(sp)
    4804:	0c000000 	jal	0 <func_8005B280>
    4808:	afa40034 	sw	a0,52(sp)
    480c:	24010001 	li	at,1
    4810:	10410057 	beq	v0,at,4970 <CollisionCheck_AC_CylVsCyl+0x1c0>
    4814:	26240018 	addiu	a0,s1,24
    4818:	0c000000 	jal	0 <func_8005B280>
    481c:	afa40038 	sw	a0,56(sp)
    4820:	24010001 	li	at,1
    4824:	10410052 	beq	v0,at,4970 <CollisionCheck_AC_CylVsCyl+0x1c0>
    4828:	8fa40038 	lw	a0,56(sp)
    482c:	0c000000 	jal	0 <func_8005B280>
    4830:	8fa50034 	lw	a1,52(sp)
    4834:	24010001 	li	at,1
    4838:	1041004d 	beq	v0,at,4970 <CollisionCheck_AC_CylVsCyl+0x1c0>
    483c:	26240040 	addiu	a0,s1,64
    4840:	26050040 	addiu	a1,s0,64
    4844:	27a6006c 	addiu	a2,sp,108
    4848:	0c000000 	jal	0 <func_8005B280>
    484c:	27a70068 	addiu	a3,sp,104
    4850:	24010001 	li	at,1
    4854:	14410046 	bne	v0,at,4970 <CollisionCheck_AC_CylVsCyl+0x1c0>
    4858:	27a40050 	addiu	a0,sp,80
    485c:	0c000000 	jal	0 <func_8005B280>
    4860:	26250046 	addiu	a1,s1,70
    4864:	26050046 	addiu	a1,s0,70
    4868:	afa5003c 	sw	a1,60(sp)
    486c:	0c000000 	jal	0 <func_8005B280>
    4870:	27a40044 	addiu	a0,sp,68
    4874:	c7a40068 	lwc1	$f4,104(sp)
    4878:	3c010000 	lui	at,0x0
    487c:	c426075c 	lwc1	$f6,1884(at)
    4880:	46002005 	abs.s	$f0,$f4
    4884:	8fa5003c 	lw	a1,60(sp)
    4888:	4606003c 	c.lt.s	$f0,$f6
    488c:	00000000 	nop
    4890:	45010029 	bc1t	4938 <CollisionCheck_AC_CylVsCyl+0x188>
    4894:	00000000 	nop
    4898:	86080040 	lh	t0,64(s0)
    489c:	86090048 	lh	t1,72(s0)
    48a0:	860a0044 	lh	t2,68(s0)
    48a4:	44884000 	mtc1	t0,$f8
    48a8:	860b0042 	lh	t3,66(s0)
    48ac:	44898000 	mtc1	t1,$f16
    48b0:	468042a0 	cvt.s.w	$f10,$f8
    48b4:	448a3000 	mtc1	t2,$f6
    48b8:	3c013f00 	lui	at,0x3f00
    48bc:	468084a0 	cvt.s.w	$f18,$f16
    48c0:	46045003 	div.s	$f0,$f10,$f4
    48c4:	448b2000 	mtc1	t3,$f4
    48c8:	46803220 	cvt.s.w	$f8,$f6
    48cc:	44813000 	mtc1	at,$f6
    48d0:	46802420 	cvt.s.w	$f16,$f4
    48d4:	46089280 	add.s	$f10,$f18,$f8
    48d8:	46068482 	mul.s	$f18,$f16,$f6
    48dc:	46125200 	add.s	$f8,$f10,$f18
    48e0:	e7a80060 	swc1	$f8,96(sp)
    48e4:	862d0046 	lh	t5,70(s1)
    48e8:	860c0046 	lh	t4,70(s0)
    48ec:	448d8000 	mtc1	t5,$f16
    48f0:	448c2000 	mtc1	t4,$f4
    48f4:	468081a0 	cvt.s.w	$f6,$f16
    48f8:	468020a0 	cvt.s.w	$f2,$f4
    48fc:	46023281 	sub.s	$f10,$f6,$f2
    4900:	46005482 	mul.s	$f18,$f10,$f0
    4904:	46029200 	add.s	$f8,$f18,$f2
    4908:	e7a8005c 	swc1	$f8,92(sp)
    490c:	862f004a 	lh	t7,74(s1)
    4910:	860e004a 	lh	t6,74(s0)
    4914:	448f8000 	mtc1	t7,$f16
    4918:	448e2000 	mtc1	t6,$f4
    491c:	468081a0 	cvt.s.w	$f6,$f16
    4920:	46802320 	cvt.s.w	$f12,$f4
    4924:	460c3281 	sub.s	$f10,$f6,$f12
    4928:	46005482 	mul.s	$f18,$f10,$f0
    492c:	460c9200 	add.s	$f8,$f18,$f12
    4930:	10000003 	b	4940 <CollisionCheck_AC_CylVsCyl+0x190>
    4934:	e7a80064 	swc1	$f8,100(sp)
    4938:	0c000000 	jal	0 <func_8005B280>
    493c:	27a4005c 	addiu	a0,sp,92
    4940:	8fb80034 	lw	t8,52(sp)
    4944:	27b90044 	addiu	t9,sp,68
    4948:	27a8005c 	addiu	t0,sp,92
    494c:	afa8001c 	sw	t0,28(sp)
    4950:	afb90018 	sw	t9,24(sp)
    4954:	8fa40078 	lw	a0,120(sp)
    4958:	02202825 	move	a1,s1
    495c:	8fa60038 	lw	a2,56(sp)
    4960:	27a70050 	addiu	a3,sp,80
    4964:	afb00010 	sw	s0,16(sp)
    4968:	0c000000 	jal	0 <func_8005B280>
    496c:	afb80014 	sw	t8,20(sp)
    4970:	8fbf002c 	lw	ra,44(sp)
    4974:	8fb00024 	lw	s0,36(sp)
    4978:	8fb10028 	lw	s1,40(sp)
    497c:	03e00008 	jr	ra
    4980:	27bd0078 	addiu	sp,sp,120

00004984 <CollisionCheck_AC_CylVsTris>:
    4984:	27bdff80 	addiu	sp,sp,-128
    4988:	afbf0044 	sw	ra,68(sp)
    498c:	afb60040 	sw	s6,64(sp)
    4990:	afb5003c 	sw	s5,60(sp)
    4994:	afb40038 	sw	s4,56(sp)
    4998:	afb30034 	sw	s3,52(sp)
    499c:	afb20030 	sw	s2,48(sp)
    49a0:	afb1002c 	sw	s1,44(sp)
    49a4:	afb00028 	sw	s0,40(sp)
    49a8:	afa40080 	sw	a0,128(sp)
    49ac:	afa50084 	sw	a1,132(sp)
    49b0:	84ce0040 	lh	t6,64(a2)
    49b4:	00c09025 	move	s2,a2
    49b8:	00e09825 	move	s3,a3
    49bc:	59c0005a 	blezl	t6,4b28 <CollisionCheck_AC_CylVsTris+0x1a4>
    49c0:	8fbf0044 	lw	ra,68(sp)
    49c4:	84cf0042 	lh	t7,66(a2)
    49c8:	59e00057 	blezl	t7,4b28 <CollisionCheck_AC_CylVsTris+0x1a4>
    49cc:	8fbf0044 	lw	ra,68(sp)
    49d0:	8cf80018 	lw	t8,24(a3)
    49d4:	5b000054 	blezl	t8,4b28 <CollisionCheck_AC_CylVsTris+0x1a4>
    49d8:	8fbf0044 	lw	ra,68(sp)
    49dc:	8cf9001c 	lw	t9,28(a3)
    49e0:	24d50018 	addiu	s5,a2,24
    49e4:	02a02025 	move	a0,s5
    49e8:	5320004f 	beqzl	t9,4b28 <CollisionCheck_AC_CylVsTris+0x1a4>
    49ec:	8fbf0044 	lw	ra,68(sp)
    49f0:	0c000000 	jal	0 <func_8005B280>
    49f4:	afa7008c 	sw	a3,140(sp)
    49f8:	24110001 	li	s1,1
    49fc:	10510049 	beq	v0,s1,4b24 <CollisionCheck_AC_CylVsTris+0x1a0>
    4a00:	8fa3008c 	lw	v1,140(sp)
    4a04:	8c680018 	lw	t0,24(v1)
    4a08:	2416005c 	li	s6,92
    4a0c:	8c70001c 	lw	s0,28(v1)
    4a10:	01160019 	multu	t0,s6
    4a14:	27b40068 	addiu	s4,sp,104
    4a18:	00004812 	mflo	t1
    4a1c:	02095021 	addu	t2,s0,t1
    4a20:	020a082b 	sltu	at,s0,t2
    4a24:	50200040 	beqzl	at,4b28 <CollisionCheck_AC_CylVsTris+0x1a4>
    4a28:	8fbf0044 	lw	ra,68(sp)
    4a2c:	0c000000 	jal	0 <func_8005B280>
    4a30:	02002025 	move	a0,s0
    4a34:	10510032 	beq	v0,s1,4b00 <CollisionCheck_AC_CylVsTris+0x17c>
    4a38:	02a02025 	move	a0,s5
    4a3c:	0c000000 	jal	0 <func_8005B280>
    4a40:	02002825 	move	a1,s0
    4a44:	1051002e 	beq	v0,s1,4b00 <CollisionCheck_AC_CylVsTris+0x17c>
    4a48:	26440040 	addiu	a0,s2,64
    4a4c:	26050028 	addiu	a1,s0,40
    4a50:	0c000000 	jal	0 <func_8005B280>
    4a54:	02803025 	move	a2,s4
    4a58:	5451002a 	bnel	v0,s1,4b04 <CollisionCheck_AC_CylVsTris+0x180>
    4a5c:	8e6e0018 	lw	t6,24(s3)
    4a60:	27b1005c 	addiu	s1,sp,92
    4a64:	02202025 	move	a0,s1
    4a68:	0c000000 	jal	0 <func_8005B280>
    4a6c:	26450046 	addiu	a1,s2,70
    4a70:	c6040028 	lwc1	$f4,40(s0)
    4a74:	c6060034 	lwc1	$f6,52(s0)
    4a78:	c60a0040 	lwc1	$f10,64(s0)
    4a7c:	3c010000 	lui	at,0x0
    4a80:	46062200 	add.s	$f8,$f4,$f6
    4a84:	c4200760 	lwc1	$f0,1888(at)
    4a88:	8fab008c 	lw	t3,140(sp)
    4a8c:	27ac0050 	addiu	t4,sp,80
    4a90:	46085400 	add.s	$f16,$f10,$f8
    4a94:	8fa40080 	lw	a0,128(sp)
    4a98:	02402825 	move	a1,s2
    4a9c:	02a03025 	move	a2,s5
    4aa0:	46008482 	mul.s	$f18,$f16,$f0
    4aa4:	02203825 	move	a3,s1
    4aa8:	e7b20050 	swc1	$f18,80(sp)
    4aac:	c6060038 	lwc1	$f6,56(s0)
    4ab0:	c604002c 	lwc1	$f4,44(s0)
    4ab4:	c6080044 	lwc1	$f8,68(s0)
    4ab8:	46062280 	add.s	$f10,$f4,$f6
    4abc:	460a4400 	add.s	$f16,$f8,$f10
    4ac0:	46008482 	mul.s	$f18,$f16,$f0
    4ac4:	e7b20054 	swc1	$f18,84(sp)
    4ac8:	c606003c 	lwc1	$f6,60(s0)
    4acc:	c6040030 	lwc1	$f4,48(s0)
    4ad0:	c60a0048 	lwc1	$f10,72(s0)
    4ad4:	afb4001c 	sw	s4,28(sp)
    4ad8:	46062200 	add.s	$f8,$f4,$f6
    4adc:	afac0018 	sw	t4,24(sp)
    4ae0:	afb00014 	sw	s0,20(sp)
    4ae4:	afab0010 	sw	t3,16(sp)
    4ae8:	46085400 	add.s	$f16,$f10,$f8
    4aec:	46008482 	mul.s	$f18,$f16,$f0
    4af0:	0c000000 	jal	0 <func_8005B280>
    4af4:	e7b20058 	swc1	$f18,88(sp)
    4af8:	1000000b 	b	4b28 <CollisionCheck_AC_CylVsTris+0x1a4>
    4afc:	8fbf0044 	lw	ra,68(sp)
    4b00:	8e6e0018 	lw	t6,24(s3)
    4b04:	8e6d001c 	lw	t5,28(s3)
    4b08:	2610005c 	addiu	s0,s0,92
    4b0c:	01d60019 	multu	t6,s6
    4b10:	00007812 	mflo	t7
    4b14:	01afc021 	addu	t8,t5,t7
    4b18:	0218082b 	sltu	at,s0,t8
    4b1c:	1420ffc3 	bnez	at,4a2c <CollisionCheck_AC_CylVsTris+0xa8>
    4b20:	00000000 	nop
    4b24:	8fbf0044 	lw	ra,68(sp)
    4b28:	8fb00028 	lw	s0,40(sp)
    4b2c:	8fb1002c 	lw	s1,44(sp)
    4b30:	8fb20030 	lw	s2,48(sp)
    4b34:	8fb30034 	lw	s3,52(sp)
    4b38:	8fb40038 	lw	s4,56(sp)
    4b3c:	8fb5003c 	lw	s5,60(sp)
    4b40:	8fb60040 	lw	s6,64(sp)
    4b44:	03e00008 	jr	ra
    4b48:	27bd0080 	addiu	sp,sp,128

00004b4c <CollisionCheck_AC_TrisVsCyl>:
    4b4c:	27bdff88 	addiu	sp,sp,-120
    4b50:	afbf0044 	sw	ra,68(sp)
    4b54:	afb60040 	sw	s6,64(sp)
    4b58:	afb5003c 	sw	s5,60(sp)
    4b5c:	afb40038 	sw	s4,56(sp)
    4b60:	afb30034 	sw	s3,52(sp)
    4b64:	afb20030 	sw	s2,48(sp)
    4b68:	afb1002c 	sw	s1,44(sp)
    4b6c:	afb00028 	sw	s0,40(sp)
    4b70:	afa40078 	sw	a0,120(sp)
    4b74:	afa5007c 	sw	a1,124(sp)
    4b78:	84ee0040 	lh	t6,64(a3)
    4b7c:	00e09025 	move	s2,a3
    4b80:	00c09825 	move	s3,a2
    4b84:	59c00059 	blezl	t6,4cec <CollisionCheck_AC_TrisVsCyl+0x1a0>
    4b88:	8fbf0044 	lw	ra,68(sp)
    4b8c:	84ef0042 	lh	t7,66(a3)
    4b90:	59e00056 	blezl	t7,4cec <CollisionCheck_AC_TrisVsCyl+0x1a0>
    4b94:	8fbf0044 	lw	ra,68(sp)
    4b98:	8cd80018 	lw	t8,24(a2)
    4b9c:	5b000053 	blezl	t8,4cec <CollisionCheck_AC_TrisVsCyl+0x1a0>
    4ba0:	8fbf0044 	lw	ra,68(sp)
    4ba4:	8cd9001c 	lw	t9,28(a2)
    4ba8:	24f50018 	addiu	s5,a3,24
    4bac:	02a02025 	move	a0,s5
    4bb0:	5320004e 	beqzl	t9,4cec <CollisionCheck_AC_TrisVsCyl+0x1a0>
    4bb4:	8fbf0044 	lw	ra,68(sp)
    4bb8:	0c000000 	jal	0 <func_8005B280>
    4bbc:	afa60080 	sw	a2,128(sp)
    4bc0:	24110001 	li	s1,1
    4bc4:	10510048 	beq	v0,s1,4ce8 <CollisionCheck_AC_TrisVsCyl+0x19c>
    4bc8:	8fa30080 	lw	v1,128(sp)
    4bcc:	8c680018 	lw	t0,24(v1)
    4bd0:	2416005c 	li	s6,92
    4bd4:	8c70001c 	lw	s0,28(v1)
    4bd8:	01160019 	multu	t0,s6
    4bdc:	3c140000 	lui	s4,0x0
    4be0:	26941410 	addiu	s4,s4,5136
    4be4:	00004812 	mflo	t1
    4be8:	02095021 	addu	t2,s0,t1
    4bec:	020a082b 	sltu	at,s0,t2
    4bf0:	5020003e 	beqzl	at,4cec <CollisionCheck_AC_TrisVsCyl+0x1a0>
    4bf4:	8fbf0044 	lw	ra,68(sp)
    4bf8:	0c000000 	jal	0 <func_8005B280>
    4bfc:	02002025 	move	a0,s0
    4c00:	10510030 	beq	v0,s1,4cc4 <CollisionCheck_AC_TrisVsCyl+0x178>
    4c04:	02002025 	move	a0,s0
    4c08:	0c000000 	jal	0 <func_8005B280>
    4c0c:	02a02825 	move	a1,s5
    4c10:	1051002c 	beq	v0,s1,4cc4 <CollisionCheck_AC_TrisVsCyl+0x178>
    4c14:	26440040 	addiu	a0,s2,64
    4c18:	26050028 	addiu	a1,s0,40
    4c1c:	0c000000 	jal	0 <func_8005B280>
    4c20:	02803025 	move	a2,s4
    4c24:	54510028 	bnel	v0,s1,4cc8 <CollisionCheck_AC_TrisVsCyl+0x17c>
    4c28:	8e6c0018 	lw	t4,24(s3)
    4c2c:	c6040028 	lwc1	$f4,40(s0)
    4c30:	c6060034 	lwc1	$f6,52(s0)
    4c34:	c60a0040 	lwc1	$f10,64(s0)
    4c38:	3c010000 	lui	at,0x0
    4c3c:	46062200 	add.s	$f8,$f4,$f6
    4c40:	c4200764 	lwc1	$f0,1892(at)
    4c44:	27b10054 	addiu	s1,sp,84
    4c48:	02202025 	move	a0,s1
    4c4c:	46085400 	add.s	$f16,$f10,$f8
    4c50:	26450046 	addiu	a1,s2,70
    4c54:	46008482 	mul.s	$f18,$f16,$f0
    4c58:	e7b20060 	swc1	$f18,96(sp)
    4c5c:	c6060038 	lwc1	$f6,56(s0)
    4c60:	c604002c 	lwc1	$f4,44(s0)
    4c64:	c6080044 	lwc1	$f8,68(s0)
    4c68:	46062280 	add.s	$f10,$f4,$f6
    4c6c:	460a4400 	add.s	$f16,$f8,$f10
    4c70:	46008482 	mul.s	$f18,$f16,$f0
    4c74:	e7b20064 	swc1	$f18,100(sp)
    4c78:	c606003c 	lwc1	$f6,60(s0)
    4c7c:	c6040030 	lwc1	$f4,48(s0)
    4c80:	c60a0048 	lwc1	$f10,72(s0)
    4c84:	46062200 	add.s	$f8,$f4,$f6
    4c88:	46085400 	add.s	$f16,$f10,$f8
    4c8c:	46008482 	mul.s	$f18,$f16,$f0
    4c90:	0c000000 	jal	0 <func_8005B280>
    4c94:	e7b20068 	swc1	$f18,104(sp)
    4c98:	8fa40078 	lw	a0,120(sp)
    4c9c:	8fa50080 	lw	a1,128(sp)
    4ca0:	02003025 	move	a2,s0
    4ca4:	27a70060 	addiu	a3,sp,96
    4ca8:	afb20010 	sw	s2,16(sp)
    4cac:	afb50014 	sw	s5,20(sp)
    4cb0:	afb10018 	sw	s1,24(sp)
    4cb4:	0c000000 	jal	0 <func_8005B280>
    4cb8:	afb4001c 	sw	s4,28(sp)
    4cbc:	1000000b 	b	4cec <CollisionCheck_AC_TrisVsCyl+0x1a0>
    4cc0:	8fbf0044 	lw	ra,68(sp)
    4cc4:	8e6c0018 	lw	t4,24(s3)
    4cc8:	8e6b001c 	lw	t3,28(s3)
    4ccc:	2610005c 	addiu	s0,s0,92
    4cd0:	01960019 	multu	t4,s6
    4cd4:	00006812 	mflo	t5
    4cd8:	016d7021 	addu	t6,t3,t5
    4cdc:	020e082b 	sltu	at,s0,t6
    4ce0:	1420ffc5 	bnez	at,4bf8 <CollisionCheck_AC_TrisVsCyl+0xac>
    4ce4:	00000000 	nop
    4ce8:	8fbf0044 	lw	ra,68(sp)
    4cec:	8fb00028 	lw	s0,40(sp)
    4cf0:	8fb1002c 	lw	s1,44(sp)
    4cf4:	8fb20030 	lw	s2,48(sp)
    4cf8:	8fb30034 	lw	s3,52(sp)
    4cfc:	8fb40038 	lw	s4,56(sp)
    4d00:	8fb5003c 	lw	s5,60(sp)
    4d04:	8fb60040 	lw	s6,64(sp)
    4d08:	03e00008 	jr	ra
    4d0c:	27bd0078 	addiu	sp,sp,120

00004d10 <CollisionCheck_AC_CylVsQuad>:
    4d10:	27bdff88 	addiu	sp,sp,-120
    4d14:	afbf002c 	sw	ra,44(sp)
    4d18:	afb10028 	sw	s1,40(sp)
    4d1c:	afb00024 	sw	s0,36(sp)
    4d20:	afa40078 	sw	a0,120(sp)
    4d24:	afa5007c 	sw	a1,124(sp)
    4d28:	84ce0042 	lh	t6,66(a2)
    4d2c:	00e08025 	move	s0,a3
    4d30:	00c08825 	move	s1,a2
    4d34:	59c0008f 	blezl	t6,4f74 <CollisionCheck_AC_CylVsQuad+0x264>
    4d38:	8fbf002c 	lw	ra,44(sp)
    4d3c:	84cf0040 	lh	t7,64(a2)
    4d40:	24c40018 	addiu	a0,a2,24
    4d44:	59e0008b 	blezl	t7,4f74 <CollisionCheck_AC_CylVsQuad+0x264>
    4d48:	8fbf002c 	lw	ra,44(sp)
    4d4c:	0c000000 	jal	0 <func_8005B280>
    4d50:	afa4003c 	sw	a0,60(sp)
    4d54:	24010001 	li	at,1
    4d58:	10410085 	beq	v0,at,4f70 <CollisionCheck_AC_CylVsQuad+0x260>
    4d5c:	26040018 	addiu	a0,s0,24
    4d60:	0c000000 	jal	0 <func_8005B280>
    4d64:	afa40038 	sw	a0,56(sp)
    4d68:	24010001 	li	at,1
    4d6c:	10410080 	beq	v0,at,4f70 <CollisionCheck_AC_CylVsQuad+0x260>
    4d70:	8fa4003c 	lw	a0,60(sp)
    4d74:	0c000000 	jal	0 <func_8005B280>
    4d78:	8fa50038 	lw	a1,56(sp)
    4d7c:	24010001 	li	at,1
    4d80:	1041007b 	beq	v0,at,4f70 <CollisionCheck_AC_CylVsQuad+0x260>
    4d84:	3c040000 	lui	a0,0x0
    4d88:	26050058 	addiu	a1,s0,88
    4d8c:	2607004c 	addiu	a3,s0,76
    4d90:	afa70034 	sw	a3,52(sp)
    4d94:	afa50030 	sw	a1,48(sp)
    4d98:	24841420 	addiu	a0,a0,5152
    4d9c:	0c000000 	jal	0 <func_8005B280>
    4da0:	26060064 	addiu	a2,s0,100
    4da4:	3c040000 	lui	a0,0x0
    4da8:	24841458 	addiu	a0,a0,5208
    4dac:	8fa50034 	lw	a1,52(sp)
    4db0:	26060040 	addiu	a2,s0,64
    4db4:	0c000000 	jal	0 <func_8005B280>
    4db8:	8fa70030 	lw	a3,48(sp)
    4dbc:	26240040 	addiu	a0,s1,64
    4dc0:	3c050000 	lui	a1,0x0
    4dc4:	3c060000 	lui	a2,0x0
    4dc8:	24c61490 	addiu	a2,a2,5264
    4dcc:	24a51420 	addiu	a1,a1,5152
    4dd0:	0c000000 	jal	0 <func_8005B280>
    4dd4:	afa40034 	sw	a0,52(sp)
    4dd8:	24010001 	li	at,1
    4ddc:	14410030 	bne	v0,at,4ea0 <CollisionCheck_AC_CylVsQuad+0x190>
    4de0:	8fa40034 	lw	a0,52(sp)
    4de4:	27a40064 	addiu	a0,sp,100
    4de8:	0c000000 	jal	0 <func_8005B280>
    4dec:	26250046 	addiu	a1,s1,70
    4df0:	c6040058 	lwc1	$f4,88(s0)
    4df4:	c6060064 	lwc1	$f6,100(s0)
    4df8:	c60a004c 	lwc1	$f10,76(s0)
    4dfc:	c6120040 	lwc1	$f18,64(s0)
    4e00:	46062200 	add.s	$f8,$f4,$f6
    4e04:	3c013e80 	lui	at,0x3e80
    4e08:	44810000 	mtc1	at,$f0
    4e0c:	8fb80038 	lw	t8,56(sp)
    4e10:	460a4400 	add.s	$f16,$f8,$f10
    4e14:	3c080000 	lui	t0,0x0
    4e18:	25081490 	addiu	t0,t0,5264
    4e1c:	27b90058 	addiu	t9,sp,88
    4e20:	46128100 	add.s	$f4,$f16,$f18
    4e24:	8fa40078 	lw	a0,120(sp)
    4e28:	02202825 	move	a1,s1
    4e2c:	8fa6003c 	lw	a2,60(sp)
    4e30:	46002182 	mul.s	$f6,$f4,$f0
    4e34:	27a70064 	addiu	a3,sp,100
    4e38:	e7a60058 	swc1	$f6,88(sp)
    4e3c:	c60a0068 	lwc1	$f10,104(s0)
    4e40:	c608005c 	lwc1	$f8,92(s0)
    4e44:	c6120050 	lwc1	$f18,80(s0)
    4e48:	c6060044 	lwc1	$f6,68(s0)
    4e4c:	460a4400 	add.s	$f16,$f8,$f10
    4e50:	46128100 	add.s	$f4,$f16,$f18
    4e54:	46062200 	add.s	$f8,$f4,$f6
    4e58:	46004282 	mul.s	$f10,$f8,$f0
    4e5c:	e7aa005c 	swc1	$f10,92(sp)
    4e60:	c612006c 	lwc1	$f18,108(s0)
    4e64:	c6100060 	lwc1	$f16,96(s0)
    4e68:	c6060054 	lwc1	$f6,84(s0)
    4e6c:	c60a0048 	lwc1	$f10,72(s0)
    4e70:	46128100 	add.s	$f4,$f16,$f18
    4e74:	afa8001c 	sw	t0,28(sp)
    4e78:	afb90018 	sw	t9,24(sp)
    4e7c:	afb00010 	sw	s0,16(sp)
    4e80:	46062200 	add.s	$f8,$f4,$f6
    4e84:	afb80014 	sw	t8,20(sp)
    4e88:	460a4400 	add.s	$f16,$f8,$f10
    4e8c:	46008482 	mul.s	$f18,$f16,$f0
    4e90:	0c000000 	jal	0 <func_8005B280>
    4e94:	e7b20060 	swc1	$f18,96(sp)
    4e98:	10000036 	b	4f74 <CollisionCheck_AC_CylVsQuad+0x264>
    4e9c:	8fbf002c 	lw	ra,44(sp)
    4ea0:	3c050000 	lui	a1,0x0
    4ea4:	3c060000 	lui	a2,0x0
    4ea8:	24c61490 	addiu	a2,a2,5264
    4eac:	0c000000 	jal	0 <func_8005B280>
    4eb0:	24a51458 	addiu	a1,a1,5208
    4eb4:	24010001 	li	at,1
    4eb8:	1441002d 	bne	v0,at,4f70 <CollisionCheck_AC_CylVsQuad+0x260>
    4ebc:	27a4004c 	addiu	a0,sp,76
    4ec0:	0c000000 	jal	0 <func_8005B280>
    4ec4:	26250046 	addiu	a1,s1,70
    4ec8:	c6040058 	lwc1	$f4,88(s0)
    4ecc:	c6060064 	lwc1	$f6,100(s0)
    4ed0:	c60a004c 	lwc1	$f10,76(s0)
    4ed4:	c6120040 	lwc1	$f18,64(s0)
    4ed8:	46062200 	add.s	$f8,$f4,$f6
    4edc:	3c013e80 	lui	at,0x3e80
    4ee0:	44810000 	mtc1	at,$f0
    4ee4:	8fa90038 	lw	t1,56(sp)
    4ee8:	460a4400 	add.s	$f16,$f8,$f10
    4eec:	3c0b0000 	lui	t3,0x0
    4ef0:	256b1490 	addiu	t3,t3,5264
    4ef4:	27aa0040 	addiu	t2,sp,64
    4ef8:	46128100 	add.s	$f4,$f16,$f18
    4efc:	8fa40078 	lw	a0,120(sp)
    4f00:	02202825 	move	a1,s1
    4f04:	8fa6003c 	lw	a2,60(sp)
    4f08:	46002182 	mul.s	$f6,$f4,$f0
    4f0c:	27a7004c 	addiu	a3,sp,76
    4f10:	e7a60040 	swc1	$f6,64(sp)
    4f14:	c60a0068 	lwc1	$f10,104(s0)
    4f18:	c608005c 	lwc1	$f8,92(s0)
    4f1c:	c6120050 	lwc1	$f18,80(s0)
    4f20:	c6060044 	lwc1	$f6,68(s0)
    4f24:	460a4400 	add.s	$f16,$f8,$f10
    4f28:	46128100 	add.s	$f4,$f16,$f18
    4f2c:	46062200 	add.s	$f8,$f4,$f6
    4f30:	46004282 	mul.s	$f10,$f8,$f0
    4f34:	e7aa0044 	swc1	$f10,68(sp)
    4f38:	c612006c 	lwc1	$f18,108(s0)
    4f3c:	c6100060 	lwc1	$f16,96(s0)
    4f40:	c6060054 	lwc1	$f6,84(s0)
    4f44:	c60a0048 	lwc1	$f10,72(s0)
    4f48:	46128100 	add.s	$f4,$f16,$f18
    4f4c:	afab001c 	sw	t3,28(sp)
    4f50:	afaa0018 	sw	t2,24(sp)
    4f54:	afb00010 	sw	s0,16(sp)
    4f58:	46062200 	add.s	$f8,$f4,$f6
    4f5c:	afa90014 	sw	t1,20(sp)
    4f60:	460a4400 	add.s	$f16,$f8,$f10
    4f64:	46008482 	mul.s	$f18,$f16,$f0
    4f68:	0c000000 	jal	0 <func_8005B280>
    4f6c:	e7b20048 	swc1	$f18,72(sp)
    4f70:	8fbf002c 	lw	ra,44(sp)
    4f74:	8fb00024 	lw	s0,36(sp)
    4f78:	8fb10028 	lw	s1,40(sp)
    4f7c:	03e00008 	jr	ra
    4f80:	27bd0078 	addiu	sp,sp,120

00004f84 <CollisionCheck_AC_QuadVsCyl>:
    4f84:	27bdff88 	addiu	sp,sp,-120
    4f88:	afbf002c 	sw	ra,44(sp)
    4f8c:	afb10028 	sw	s1,40(sp)
    4f90:	afb00024 	sw	s0,36(sp)
    4f94:	afa40078 	sw	a0,120(sp)
    4f98:	afa5007c 	sw	a1,124(sp)
    4f9c:	84ee0042 	lh	t6,66(a3)
    4fa0:	00c08025 	move	s0,a2
    4fa4:	00e08825 	move	s1,a3
    4fa8:	59c0009d 	blezl	t6,5220 <CollisionCheck_AC_QuadVsCyl+0x29c>
    4fac:	8fbf002c 	lw	ra,44(sp)
    4fb0:	84ef0040 	lh	t7,64(a3)
    4fb4:	24e40018 	addiu	a0,a3,24
    4fb8:	59e00099 	blezl	t7,5220 <CollisionCheck_AC_QuadVsCyl+0x29c>
    4fbc:	8fbf002c 	lw	ra,44(sp)
    4fc0:	0c000000 	jal	0 <func_8005B280>
    4fc4:	afa40038 	sw	a0,56(sp)
    4fc8:	24010001 	li	at,1
    4fcc:	10410093 	beq	v0,at,521c <CollisionCheck_AC_QuadVsCyl+0x298>
    4fd0:	26040018 	addiu	a0,s0,24
    4fd4:	0c000000 	jal	0 <func_8005B280>
    4fd8:	afa4003c 	sw	a0,60(sp)
    4fdc:	24010001 	li	at,1
    4fe0:	1041008e 	beq	v0,at,521c <CollisionCheck_AC_QuadVsCyl+0x298>
    4fe4:	8fa4003c 	lw	a0,60(sp)
    4fe8:	0c000000 	jal	0 <func_8005B280>
    4fec:	8fa50038 	lw	a1,56(sp)
    4ff0:	24010001 	li	at,1
    4ff4:	10410089 	beq	v0,at,521c <CollisionCheck_AC_QuadVsCyl+0x298>
    4ff8:	3c040000 	lui	a0,0x0
    4ffc:	26050058 	addiu	a1,s0,88
    5000:	2607004c 	addiu	a3,s0,76
    5004:	afa70030 	sw	a3,48(sp)
    5008:	afa50034 	sw	a1,52(sp)
    500c:	248414a0 	addiu	a0,a0,5280
    5010:	0c000000 	jal	0 <func_8005B280>
    5014:	26060064 	addiu	a2,s0,100
    5018:	3c040000 	lui	a0,0x0
    501c:	8fa50034 	lw	a1,52(sp)
    5020:	248414d8 	addiu	a0,a0,5336
    5024:	8fa60030 	lw	a2,48(sp)
    5028:	0c000000 	jal	0 <func_8005B280>
    502c:	26070040 	addiu	a3,s0,64
    5030:	26240040 	addiu	a0,s1,64
    5034:	3c050000 	lui	a1,0x0
    5038:	3c060000 	lui	a2,0x0
    503c:	24c61510 	addiu	a2,a2,5392
    5040:	24a514a0 	addiu	a1,a1,5280
    5044:	0c000000 	jal	0 <func_8005B280>
    5048:	afa40034 	sw	a0,52(sp)
    504c:	24010001 	li	at,1
    5050:	14410036 	bne	v0,at,512c <CollisionCheck_AC_QuadVsCyl+0x1a8>
    5054:	8fa40078 	lw	a0,120(sp)
    5058:	3c060000 	lui	a2,0x0
    505c:	24c61510 	addiu	a2,a2,5392
    5060:	0c000000 	jal	0 <func_8005B280>
    5064:	02002825 	move	a1,s0
    5068:	10400030 	beqz	v0,512c <CollisionCheck_AC_QuadVsCyl+0x1a8>
    506c:	00000000 	nop
    5070:	c6040058 	lwc1	$f4,88(s0)
    5074:	c6060064 	lwc1	$f6,100(s0)
    5078:	c60a004c 	lwc1	$f10,76(s0)
    507c:	c6120040 	lwc1	$f18,64(s0)
    5080:	46062200 	add.s	$f8,$f4,$f6
    5084:	3c013e80 	lui	at,0x3e80
    5088:	44810000 	mtc1	at,$f0
    508c:	27a40058 	addiu	a0,sp,88
    5090:	460a4400 	add.s	$f16,$f8,$f10
    5094:	26250046 	addiu	a1,s1,70
    5098:	46128100 	add.s	$f4,$f16,$f18
    509c:	46002182 	mul.s	$f6,$f4,$f0
    50a0:	e7a60064 	swc1	$f6,100(sp)
    50a4:	c60a0068 	lwc1	$f10,104(s0)
    50a8:	c608005c 	lwc1	$f8,92(s0)
    50ac:	c6120050 	lwc1	$f18,80(s0)
    50b0:	c6060044 	lwc1	$f6,68(s0)
    50b4:	460a4400 	add.s	$f16,$f8,$f10
    50b8:	46128100 	add.s	$f4,$f16,$f18
    50bc:	46062200 	add.s	$f8,$f4,$f6
    50c0:	46004282 	mul.s	$f10,$f8,$f0
    50c4:	e7aa0068 	swc1	$f10,104(sp)
    50c8:	c612006c 	lwc1	$f18,108(s0)
    50cc:	c6100060 	lwc1	$f16,96(s0)
    50d0:	c6060054 	lwc1	$f6,84(s0)
    50d4:	c60a0048 	lwc1	$f10,72(s0)
    50d8:	46128100 	add.s	$f4,$f16,$f18
    50dc:	46062200 	add.s	$f8,$f4,$f6
    50e0:	460a4400 	add.s	$f16,$f8,$f10
    50e4:	46008482 	mul.s	$f18,$f16,$f0
    50e8:	0c000000 	jal	0 <func_8005B280>
    50ec:	e7b2006c 	swc1	$f18,108(sp)
    50f0:	8fb80038 	lw	t8,56(sp)
    50f4:	3c080000 	lui	t0,0x0
    50f8:	25081510 	addiu	t0,t0,5392
    50fc:	27b90058 	addiu	t9,sp,88
    5100:	afb90018 	sw	t9,24(sp)
    5104:	afa8001c 	sw	t0,28(sp)
    5108:	8fa40078 	lw	a0,120(sp)
    510c:	02002825 	move	a1,s0
    5110:	8fa6003c 	lw	a2,60(sp)
    5114:	27a70064 	addiu	a3,sp,100
    5118:	afb10010 	sw	s1,16(sp)
    511c:	0c000000 	jal	0 <func_8005B280>
    5120:	afb80014 	sw	t8,20(sp)
    5124:	1000003e 	b	5220 <CollisionCheck_AC_QuadVsCyl+0x29c>
    5128:	8fbf002c 	lw	ra,44(sp)
    512c:	3c050000 	lui	a1,0x0
    5130:	3c060000 	lui	a2,0x0
    5134:	24c61510 	addiu	a2,a2,5392
    5138:	24a514d8 	addiu	a1,a1,5336
    513c:	0c000000 	jal	0 <func_8005B280>
    5140:	8fa40034 	lw	a0,52(sp)
    5144:	24010001 	li	at,1
    5148:	14410034 	bne	v0,at,521c <CollisionCheck_AC_QuadVsCyl+0x298>
    514c:	8fa40078 	lw	a0,120(sp)
    5150:	3c060000 	lui	a2,0x0
    5154:	24c61510 	addiu	a2,a2,5392
    5158:	0c000000 	jal	0 <func_8005B280>
    515c:	02002825 	move	a1,s0
    5160:	5040002f 	beqzl	v0,5220 <CollisionCheck_AC_QuadVsCyl+0x29c>
    5164:	8fbf002c 	lw	ra,44(sp)
    5168:	c6040058 	lwc1	$f4,88(s0)
    516c:	c6060064 	lwc1	$f6,100(s0)
    5170:	c60a004c 	lwc1	$f10,76(s0)
    5174:	c6120040 	lwc1	$f18,64(s0)
    5178:	46062200 	add.s	$f8,$f4,$f6
    517c:	3c013e80 	lui	at,0x3e80
    5180:	44810000 	mtc1	at,$f0
    5184:	27a40040 	addiu	a0,sp,64
    5188:	460a4400 	add.s	$f16,$f8,$f10
    518c:	26250046 	addiu	a1,s1,70
    5190:	46128100 	add.s	$f4,$f16,$f18
    5194:	46002182 	mul.s	$f6,$f4,$f0
    5198:	e7a6004c 	swc1	$f6,76(sp)
    519c:	c60a0068 	lwc1	$f10,104(s0)
    51a0:	c608005c 	lwc1	$f8,92(s0)
    51a4:	c6120050 	lwc1	$f18,80(s0)
    51a8:	c6060044 	lwc1	$f6,68(s0)
    51ac:	460a4400 	add.s	$f16,$f8,$f10
    51b0:	46128100 	add.s	$f4,$f16,$f18
    51b4:	46062200 	add.s	$f8,$f4,$f6
    51b8:	46004282 	mul.s	$f10,$f8,$f0
    51bc:	e7aa0050 	swc1	$f10,80(sp)
    51c0:	c612006c 	lwc1	$f18,108(s0)
    51c4:	c6100060 	lwc1	$f16,96(s0)
    51c8:	c6060054 	lwc1	$f6,84(s0)
    51cc:	c60a0048 	lwc1	$f10,72(s0)
    51d0:	46128100 	add.s	$f4,$f16,$f18
    51d4:	46062200 	add.s	$f8,$f4,$f6
    51d8:	460a4400 	add.s	$f16,$f8,$f10
    51dc:	46008482 	mul.s	$f18,$f16,$f0
    51e0:	0c000000 	jal	0 <func_8005B280>
    51e4:	e7b20054 	swc1	$f18,84(sp)
    51e8:	8fa90038 	lw	t1,56(sp)
    51ec:	3c0b0000 	lui	t3,0x0
    51f0:	256b1510 	addiu	t3,t3,5392
    51f4:	27aa0040 	addiu	t2,sp,64
    51f8:	afaa0018 	sw	t2,24(sp)
    51fc:	afab001c 	sw	t3,28(sp)
    5200:	8fa40078 	lw	a0,120(sp)
    5204:	02002825 	move	a1,s0
    5208:	8fa6003c 	lw	a2,60(sp)
    520c:	27a7004c 	addiu	a3,sp,76
    5210:	afb10010 	sw	s1,16(sp)
    5214:	0c000000 	jal	0 <func_8005B280>
    5218:	afa90014 	sw	t1,20(sp)
    521c:	8fbf002c 	lw	ra,44(sp)
    5220:	8fb00024 	lw	s0,36(sp)
    5224:	8fb10028 	lw	s1,40(sp)
    5228:	03e00008 	jr	ra
    522c:	27bd0078 	addiu	sp,sp,120

00005230 <CollisionCheck_AC_TrisVsTris>:
    5230:	27bdff88 	addiu	sp,sp,-120
    5234:	afbf0044 	sw	ra,68(sp)
    5238:	afb70040 	sw	s7,64(sp)
    523c:	afb6003c 	sw	s6,60(sp)
    5240:	afb50038 	sw	s5,56(sp)
    5244:	afb40034 	sw	s4,52(sp)
    5248:	afb30030 	sw	s3,48(sp)
    524c:	afb2002c 	sw	s2,44(sp)
    5250:	afb10028 	sw	s1,40(sp)
    5254:	afb00024 	sw	s0,36(sp)
    5258:	afa40078 	sw	a0,120(sp)
    525c:	afa5007c 	sw	a1,124(sp)
    5260:	8ce30018 	lw	v1,24(a3)
    5264:	00c0b025 	move	s6,a2
    5268:	00c09825 	move	s3,a2
    526c:	1860007a 	blez	v1,5458 <CollisionCheck_AC_TrisVsTris+0x228>
    5270:	00e0b825 	move	s7,a3
    5274:	8ce2001c 	lw	v0,28(a3)
    5278:	50400078 	beqzl	v0,545c <CollisionCheck_AC_TrisVsTris+0x22c>
    527c:	8fbf0044 	lw	ra,68(sp)
    5280:	8cce0018 	lw	t6,24(a2)
    5284:	59c00075 	blezl	t6,545c <CollisionCheck_AC_TrisVsTris+0x22c>
    5288:	8fbf0044 	lw	ra,68(sp)
    528c:	8ccf001c 	lw	t7,28(a2)
    5290:	2414005c 	li	s4,92
    5294:	51e00071 	beqzl	t7,545c <CollisionCheck_AC_TrisVsTris+0x22c>
    5298:	8fbf0044 	lw	ra,68(sp)
    529c:	00740019 	multu	v1,s4
    52a0:	3c150000 	lui	s5,0x0
    52a4:	26b51520 	addiu	s5,s5,5408
    52a8:	00409025 	move	s2,v0
    52ac:	24110001 	li	s1,1
    52b0:	0000c012 	mflo	t8
    52b4:	0058c821 	addu	t9,v0,t8
    52b8:	0059082b 	sltu	at,v0,t9
    52bc:	50200067 	beqzl	at,545c <CollisionCheck_AC_TrisVsTris+0x22c>
    52c0:	8fbf0044 	lw	ra,68(sp)
    52c4:	afa70084 	sw	a3,132(sp)
    52c8:	0c000000 	jal	0 <func_8005B280>
    52cc:	02402025 	move	a0,s2
    52d0:	50510059 	beql	v0,s1,5438 <CollisionCheck_AC_TrisVsTris+0x208>
    52d4:	8ee80018 	lw	t0,24(s7)
    52d8:	8ec80018 	lw	t0,24(s6)
    52dc:	8ed0001c 	lw	s0,28(s6)
    52e0:	01140019 	multu	t0,s4
    52e4:	00004812 	mflo	t1
    52e8:	02095021 	addu	t2,s0,t1
    52ec:	020a082b 	sltu	at,s0,t2
    52f0:	50200051 	beqzl	at,5438 <CollisionCheck_AC_TrisVsTris+0x208>
    52f4:	8ee80018 	lw	t0,24(s7)
    52f8:	0c000000 	jal	0 <func_8005B280>
    52fc:	02002025 	move	a0,s0
    5300:	10510043 	beq	v0,s1,5410 <CollisionCheck_AC_TrisVsTris+0x1e0>
    5304:	02002025 	move	a0,s0
    5308:	0c000000 	jal	0 <func_8005B280>
    530c:	02402825 	move	a1,s2
    5310:	1051003f 	beq	v0,s1,5410 <CollisionCheck_AC_TrisVsTris+0x1e0>
    5314:	26040028 	addiu	a0,s0,40
    5318:	26450028 	addiu	a1,s2,40
    531c:	0c000000 	jal	0 <func_8005B280>
    5320:	02a03025 	move	a2,s5
    5324:	5451003b 	bnel	v0,s1,5414 <CollisionCheck_AC_TrisVsTris+0x1e4>
    5328:	8e6e0018 	lw	t6,24(s3)
    532c:	c6040028 	lwc1	$f4,40(s0)
    5330:	c6060034 	lwc1	$f6,52(s0)
    5334:	c60a0040 	lwc1	$f10,64(s0)
    5338:	3c010000 	lui	at,0x0
    533c:	46062200 	add.s	$f8,$f4,$f6
    5340:	c4200768 	lwc1	$f0,1896(at)
    5344:	8fab0084 	lw	t3,132(sp)
    5348:	27ac0050 	addiu	t4,sp,80
    534c:	46085400 	add.s	$f16,$f10,$f8
    5350:	8fa40078 	lw	a0,120(sp)
    5354:	02c02825 	move	a1,s6
    5358:	02003025 	move	a2,s0
    535c:	46008482 	mul.s	$f18,$f16,$f0
    5360:	27a7005c 	addiu	a3,sp,92
    5364:	e7b2005c 	swc1	$f18,92(sp)
    5368:	c6060038 	lwc1	$f6,56(s0)
    536c:	c604002c 	lwc1	$f4,44(s0)
    5370:	c6080044 	lwc1	$f8,68(s0)
    5374:	46062280 	add.s	$f10,$f4,$f6
    5378:	460a4400 	add.s	$f16,$f8,$f10
    537c:	46008482 	mul.s	$f18,$f16,$f0
    5380:	e7b20060 	swc1	$f18,96(sp)
    5384:	c606003c 	lwc1	$f6,60(s0)
    5388:	c6040030 	lwc1	$f4,48(s0)
    538c:	c60a0048 	lwc1	$f10,72(s0)
    5390:	46062200 	add.s	$f8,$f4,$f6
    5394:	46085400 	add.s	$f16,$f10,$f8
    5398:	46008482 	mul.s	$f18,$f16,$f0
    539c:	e7b20064 	swc1	$f18,100(sp)
    53a0:	c6460034 	lwc1	$f6,52(s2)
    53a4:	c6440028 	lwc1	$f4,40(s2)
    53a8:	c6480040 	lwc1	$f8,64(s2)
    53ac:	46062280 	add.s	$f10,$f4,$f6
    53b0:	460a4400 	add.s	$f16,$f8,$f10
    53b4:	46008482 	mul.s	$f18,$f16,$f0
    53b8:	e7b20050 	swc1	$f18,80(sp)
    53bc:	c6460038 	lwc1	$f6,56(s2)
    53c0:	c644002c 	lwc1	$f4,44(s2)
    53c4:	c64a0044 	lwc1	$f10,68(s2)
    53c8:	46062200 	add.s	$f8,$f4,$f6
    53cc:	46085400 	add.s	$f16,$f10,$f8
    53d0:	46008482 	mul.s	$f18,$f16,$f0
    53d4:	e7b20054 	swc1	$f18,84(sp)
    53d8:	c646003c 	lwc1	$f6,60(s2)
    53dc:	c6440030 	lwc1	$f4,48(s2)
    53e0:	c6480048 	lwc1	$f8,72(s2)
    53e4:	afb5001c 	sw	s5,28(sp)
    53e8:	46062280 	add.s	$f10,$f4,$f6
    53ec:	afac0018 	sw	t4,24(sp)
    53f0:	afb20014 	sw	s2,20(sp)
    53f4:	afab0010 	sw	t3,16(sp)
    53f8:	460a4400 	add.s	$f16,$f8,$f10
    53fc:	46008482 	mul.s	$f18,$f16,$f0
    5400:	0c000000 	jal	0 <func_8005B280>
    5404:	e7b20058 	swc1	$f18,88(sp)
    5408:	10000014 	b	545c <CollisionCheck_AC_TrisVsTris+0x22c>
    540c:	8fbf0044 	lw	ra,68(sp)
    5410:	8e6e0018 	lw	t6,24(s3)
    5414:	8e6d001c 	lw	t5,28(s3)
    5418:	2610005c 	addiu	s0,s0,92
    541c:	01d40019 	multu	t6,s4
    5420:	00007812 	mflo	t7
    5424:	01afc021 	addu	t8,t5,t7
    5428:	0218082b 	sltu	at,s0,t8
    542c:	1420ffb2 	bnez	at,52f8 <CollisionCheck_AC_TrisVsTris+0xc8>
    5430:	00000000 	nop
    5434:	8ee80018 	lw	t0,24(s7)
    5438:	8ef9001c 	lw	t9,28(s7)
    543c:	2652005c 	addiu	s2,s2,92
    5440:	01140019 	multu	t0,s4
    5444:	00004812 	mflo	t1
    5448:	03295021 	addu	t2,t9,t1
    544c:	024a082b 	sltu	at,s2,t2
    5450:	1420ff9d 	bnez	at,52c8 <CollisionCheck_AC_TrisVsTris+0x98>
    5454:	00000000 	nop
    5458:	8fbf0044 	lw	ra,68(sp)
    545c:	8fb00024 	lw	s0,36(sp)
    5460:	8fb10028 	lw	s1,40(sp)
    5464:	8fb2002c 	lw	s2,44(sp)
    5468:	8fb30030 	lw	s3,48(sp)
    546c:	8fb40034 	lw	s4,52(sp)
    5470:	8fb50038 	lw	s5,56(sp)
    5474:	8fb6003c 	lw	s6,60(sp)
    5478:	8fb70040 	lw	s7,64(sp)
    547c:	03e00008 	jr	ra
    5480:	27bd0078 	addiu	sp,sp,120

00005484 <CollisionCheck_AC_TrisVsQuad>:
    5484:	27bdff80 	addiu	sp,sp,-128
    5488:	afbf004c 	sw	ra,76(sp)
    548c:	afbe0048 	sw	s8,72(sp)
    5490:	afb70044 	sw	s7,68(sp)
    5494:	afb60040 	sw	s6,64(sp)
    5498:	afb5003c 	sw	s5,60(sp)
    549c:	afb40038 	sw	s4,56(sp)
    54a0:	afb30034 	sw	s3,52(sp)
    54a4:	afb20030 	sw	s2,48(sp)
    54a8:	afb1002c 	sw	s1,44(sp)
    54ac:	afb00028 	sw	s0,40(sp)
    54b0:	afa40080 	sw	a0,128(sp)
    54b4:	afa50084 	sw	a1,132(sp)
    54b8:	8cce0018 	lw	t6,24(a2)
    54bc:	00e09825 	move	s3,a3
    54c0:	00c0a825 	move	s5,a2
    54c4:	59c00088 	blezl	t6,56e8 <CollisionCheck_AC_TrisVsQuad+0x264>
    54c8:	8fbf004c 	lw	ra,76(sp)
    54cc:	8ccf001c 	lw	t7,28(a2)
    54d0:	24f60018 	addiu	s6,a3,24
    54d4:	02c02025 	move	a0,s6
    54d8:	51e00083 	beqzl	t7,56e8 <CollisionCheck_AC_TrisVsQuad+0x264>
    54dc:	8fbf004c 	lw	ra,76(sp)
    54e0:	0c000000 	jal	0 <func_8005B280>
    54e4:	afa60088 	sw	a2,136(sp)
    54e8:	24120001 	li	s2,1
    54ec:	1052007d 	beq	v0,s2,56e4 <CollisionCheck_AC_TrisVsQuad+0x260>
    54f0:	3c170000 	lui	s7,0x0
    54f4:	26f71540 	addiu	s7,s7,5440
    54f8:	26710058 	addiu	s1,s3,88
    54fc:	2670004c 	addiu	s0,s3,76
    5500:	02003825 	move	a3,s0
    5504:	02202825 	move	a1,s1
    5508:	02e02025 	move	a0,s7
    550c:	0c000000 	jal	0 <func_8005B280>
    5510:	26660064 	addiu	a2,s3,100
    5514:	3c1e0000 	lui	s8,0x0
    5518:	27de1578 	addiu	s8,s8,5496
    551c:	03c02025 	move	a0,s8
    5520:	02002825 	move	a1,s0
    5524:	26660040 	addiu	a2,s3,64
    5528:	0c000000 	jal	0 <func_8005B280>
    552c:	02203825 	move	a3,s1
    5530:	8fa30088 	lw	v1,136(sp)
    5534:	3c140000 	lui	s4,0x0
    5538:	26941530 	addiu	s4,s4,5424
    553c:	8c780018 	lw	t8,24(v1)
    5540:	8c71001c 	lw	s1,28(v1)
    5544:	0018c880 	sll	t9,t8,0x2
    5548:	0338c823 	subu	t9,t9,t8
    554c:	0019c8c0 	sll	t9,t9,0x3
    5550:	0338c823 	subu	t9,t9,t8
    5554:	0019c880 	sll	t9,t9,0x2
    5558:	02394021 	addu	t0,s1,t9
    555c:	0228082b 	sltu	at,s1,t0
    5560:	50200061 	beqzl	at,56e8 <CollisionCheck_AC_TrisVsQuad+0x264>
    5564:	8fbf004c 	lw	ra,76(sp)
    5568:	0c000000 	jal	0 <func_8005B280>
    556c:	02202025 	move	a0,s1
    5570:	10520050 	beq	v0,s2,56b4 <CollisionCheck_AC_TrisVsQuad+0x230>
    5574:	02202025 	move	a0,s1
    5578:	0c000000 	jal	0 <func_8005B280>
    557c:	02c02825 	move	a1,s6
    5580:	1052004c 	beq	v0,s2,56b4 <CollisionCheck_AC_TrisVsQuad+0x230>
    5584:	02e02025 	move	a0,s7
    5588:	26300028 	addiu	s0,s1,40
    558c:	02002825 	move	a1,s0
    5590:	0c000000 	jal	0 <func_8005B280>
    5594:	02803025 	move	a2,s4
    5598:	10520006 	beq	v0,s2,55b4 <CollisionCheck_AC_TrisVsQuad+0x130>
    559c:	03c02025 	move	a0,s8
    55a0:	02002825 	move	a1,s0
    55a4:	0c000000 	jal	0 <func_8005B280>
    55a8:	02803025 	move	a2,s4
    55ac:	54520042 	bnel	v0,s2,56b8 <CollisionCheck_AC_TrisVsQuad+0x234>
    55b0:	8eab0018 	lw	t3,24(s5)
    55b4:	c6240028 	lwc1	$f4,40(s1)
    55b8:	c6260034 	lwc1	$f6,52(s1)
    55bc:	c62a0040 	lwc1	$f10,64(s1)
    55c0:	3c010000 	lui	at,0x0
    55c4:	46062200 	add.s	$f8,$f4,$f6
    55c8:	c420076c 	lwc1	$f0,1900(at)
    55cc:	3c013e80 	lui	at,0x3e80
    55d0:	44811000 	mtc1	at,$f2
    55d4:	46085400 	add.s	$f16,$f10,$f8
    55d8:	27a9005c 	addiu	t1,sp,92
    55dc:	8fa40080 	lw	a0,128(sp)
    55e0:	8fa50088 	lw	a1,136(sp)
    55e4:	46008482 	mul.s	$f18,$f16,$f0
    55e8:	02203025 	move	a2,s1
    55ec:	27a70068 	addiu	a3,sp,104
    55f0:	e7b20068 	swc1	$f18,104(sp)
    55f4:	c6260038 	lwc1	$f6,56(s1)
    55f8:	c624002c 	lwc1	$f4,44(s1)
    55fc:	c6280044 	lwc1	$f8,68(s1)
    5600:	46062280 	add.s	$f10,$f4,$f6
    5604:	460a4400 	add.s	$f16,$f8,$f10
    5608:	46008482 	mul.s	$f18,$f16,$f0
    560c:	e7b2006c 	swc1	$f18,108(sp)
    5610:	c626003c 	lwc1	$f6,60(s1)
    5614:	c6240030 	lwc1	$f4,48(s1)
    5618:	c62a0048 	lwc1	$f10,72(s1)
    561c:	46062200 	add.s	$f8,$f4,$f6
    5620:	46085400 	add.s	$f16,$f10,$f8
    5624:	46008482 	mul.s	$f18,$f16,$f0
    5628:	e7b20070 	swc1	$f18,112(sp)
    562c:	c6660064 	lwc1	$f6,100(s3)
    5630:	c6640058 	lwc1	$f4,88(s3)
    5634:	c668004c 	lwc1	$f8,76(s3)
    5638:	c6720040 	lwc1	$f18,64(s3)
    563c:	46062280 	add.s	$f10,$f4,$f6
    5640:	46085400 	add.s	$f16,$f10,$f8
    5644:	46128100 	add.s	$f4,$f16,$f18
    5648:	46022182 	mul.s	$f6,$f4,$f2
    564c:	e7a6005c 	swc1	$f6,92(sp)
    5650:	c6680068 	lwc1	$f8,104(s3)
    5654:	c66a005c 	lwc1	$f10,92(s3)
    5658:	c6720050 	lwc1	$f18,80(s3)
    565c:	c6660044 	lwc1	$f6,68(s3)
    5660:	46085400 	add.s	$f16,$f10,$f8
    5664:	46128100 	add.s	$f4,$f16,$f18
    5668:	46062280 	add.s	$f10,$f4,$f6
    566c:	46025202 	mul.s	$f8,$f10,$f2
    5670:	e7a80060 	swc1	$f8,96(sp)
    5674:	c672006c 	lwc1	$f18,108(s3)
    5678:	c6700060 	lwc1	$f16,96(s3)
    567c:	c6660054 	lwc1	$f6,84(s3)
    5680:	c6680048 	lwc1	$f8,72(s3)
    5684:	46128100 	add.s	$f4,$f16,$f18
    5688:	afb4001c 	sw	s4,28(sp)
    568c:	afa90018 	sw	t1,24(sp)
    5690:	afb60014 	sw	s6,20(sp)
    5694:	46062280 	add.s	$f10,$f4,$f6
    5698:	afb30010 	sw	s3,16(sp)
    569c:	46085400 	add.s	$f16,$f10,$f8
    56a0:	46028482 	mul.s	$f18,$f16,$f2
    56a4:	0c000000 	jal	0 <func_8005B280>
    56a8:	e7b20064 	swc1	$f18,100(sp)
    56ac:	1000000e 	b	56e8 <CollisionCheck_AC_TrisVsQuad+0x264>
    56b0:	8fbf004c 	lw	ra,76(sp)
    56b4:	8eab0018 	lw	t3,24(s5)
    56b8:	8eaa001c 	lw	t2,28(s5)
    56bc:	2631005c 	addiu	s1,s1,92
    56c0:	000b6080 	sll	t4,t3,0x2
    56c4:	018b6023 	subu	t4,t4,t3
    56c8:	000c60c0 	sll	t4,t4,0x3
    56cc:	018b6023 	subu	t4,t4,t3
    56d0:	000c6080 	sll	t4,t4,0x2
    56d4:	014c6821 	addu	t5,t2,t4
    56d8:	022d082b 	sltu	at,s1,t5
    56dc:	1420ffa2 	bnez	at,5568 <CollisionCheck_AC_TrisVsQuad+0xe4>
    56e0:	00000000 	nop
    56e4:	8fbf004c 	lw	ra,76(sp)
    56e8:	8fb00028 	lw	s0,40(sp)
    56ec:	8fb1002c 	lw	s1,44(sp)
    56f0:	8fb20030 	lw	s2,48(sp)
    56f4:	8fb30034 	lw	s3,52(sp)
    56f8:	8fb40038 	lw	s4,56(sp)
    56fc:	8fb5003c 	lw	s5,60(sp)
    5700:	8fb60040 	lw	s6,64(sp)
    5704:	8fb70044 	lw	s7,68(sp)
    5708:	8fbe0048 	lw	s8,72(sp)
    570c:	03e00008 	jr	ra
    5710:	27bd0080 	addiu	sp,sp,128

00005714 <CollisionCheck_AC_QuadVsTris>:
    5714:	27bdff80 	addiu	sp,sp,-128
    5718:	afbf004c 	sw	ra,76(sp)
    571c:	afbe0048 	sw	s8,72(sp)
    5720:	afb70044 	sw	s7,68(sp)
    5724:	afb60040 	sw	s6,64(sp)
    5728:	afb5003c 	sw	s5,60(sp)
    572c:	afb40038 	sw	s4,56(sp)
    5730:	afb30034 	sw	s3,52(sp)
    5734:	afb20030 	sw	s2,48(sp)
    5738:	afb1002c 	sw	s1,44(sp)
    573c:	afb00028 	sw	s0,40(sp)
    5740:	afa40080 	sw	a0,128(sp)
    5744:	afa50084 	sw	a1,132(sp)
    5748:	8cee0018 	lw	t6,24(a3)
    574c:	00c0a025 	move	s4,a2
    5750:	00e0a825 	move	s5,a3
    5754:	59c0008a 	blezl	t6,5980 <CollisionCheck_AC_QuadVsTris+0x26c>
    5758:	8fbf004c 	lw	ra,76(sp)
    575c:	8cef001c 	lw	t7,28(a3)
    5760:	24d70018 	addiu	s7,a2,24
    5764:	02e02025 	move	a0,s7
    5768:	51e00085 	beqzl	t7,5980 <CollisionCheck_AC_QuadVsTris+0x26c>
    576c:	8fbf004c 	lw	ra,76(sp)
    5770:	0c000000 	jal	0 <func_8005B280>
    5774:	afa7008c 	sw	a3,140(sp)
    5778:	24120001 	li	s2,1
    577c:	1052007f 	beq	v0,s2,597c <CollisionCheck_AC_QuadVsTris+0x268>
    5780:	3c1e0000 	lui	s8,0x0
    5784:	27de15c0 	addiu	s8,s8,5568
    5788:	26910058 	addiu	s1,s4,88
    578c:	2690004c 	addiu	s0,s4,76
    5790:	02003825 	move	a3,s0
    5794:	02202825 	move	a1,s1
    5798:	03c02025 	move	a0,s8
    579c:	0c000000 	jal	0 <func_8005B280>
    57a0:	26860064 	addiu	a2,s4,100
    57a4:	3c040000 	lui	a0,0x0
    57a8:	248415f8 	addiu	a0,a0,5624
    57ac:	02002825 	move	a1,s0
    57b0:	26860040 	addiu	a2,s4,64
    57b4:	0c000000 	jal	0 <func_8005B280>
    57b8:	02203825 	move	a3,s1
    57bc:	8fa3008c 	lw	v1,140(sp)
    57c0:	2416005c 	li	s6,92
    57c4:	3c130000 	lui	s3,0x0
    57c8:	8c780018 	lw	t8,24(v1)
    57cc:	8c71001c 	lw	s1,28(v1)
    57d0:	267315b0 	addiu	s3,s3,5552
    57d4:	03160019 	multu	t8,s6
    57d8:	0000c812 	mflo	t9
    57dc:	02394021 	addu	t0,s1,t9
    57e0:	0228082b 	sltu	at,s1,t0
    57e4:	50200066 	beqzl	at,5980 <CollisionCheck_AC_QuadVsTris+0x26c>
    57e8:	8fbf004c 	lw	ra,76(sp)
    57ec:	0c000000 	jal	0 <func_8005B280>
    57f0:	02202025 	move	a0,s1
    57f4:	10520058 	beq	v0,s2,5958 <CollisionCheck_AC_QuadVsTris+0x244>
    57f8:	02e02025 	move	a0,s7
    57fc:	0c000000 	jal	0 <func_8005B280>
    5800:	02202825 	move	a1,s1
    5804:	10520054 	beq	v0,s2,5958 <CollisionCheck_AC_QuadVsTris+0x244>
    5808:	03c02025 	move	a0,s8
    580c:	26300028 	addiu	s0,s1,40
    5810:	02002825 	move	a1,s0
    5814:	0c000000 	jal	0 <func_8005B280>
    5818:	02603025 	move	a2,s3
    581c:	10520007 	beq	v0,s2,583c <CollisionCheck_AC_QuadVsTris+0x128>
    5820:	3c040000 	lui	a0,0x0
    5824:	248415f8 	addiu	a0,a0,5624
    5828:	02002825 	move	a1,s0
    582c:	0c000000 	jal	0 <func_8005B280>
    5830:	02603025 	move	a2,s3
    5834:	54520049 	bnel	v0,s2,595c <CollisionCheck_AC_QuadVsTris+0x248>
    5838:	8eac0018 	lw	t4,24(s5)
    583c:	8fa40080 	lw	a0,128(sp)
    5840:	02802825 	move	a1,s4
    5844:	0c000000 	jal	0 <func_8005B280>
    5848:	02603025 	move	a2,s3
    584c:	50400043 	beqzl	v0,595c <CollisionCheck_AC_QuadVsTris+0x248>
    5850:	8eac0018 	lw	t4,24(s5)
    5854:	c6240028 	lwc1	$f4,40(s1)
    5858:	c6260034 	lwc1	$f6,52(s1)
    585c:	c62a0040 	lwc1	$f10,64(s1)
    5860:	3c010000 	lui	at,0x0
    5864:	46062200 	add.s	$f8,$f4,$f6
    5868:	c4200770 	lwc1	$f0,1904(at)
    586c:	3c013e80 	lui	at,0x3e80
    5870:	44811000 	mtc1	at,$f2
    5874:	46085400 	add.s	$f16,$f10,$f8
    5878:	8fa9008c 	lw	t1,140(sp)
    587c:	27aa005c 	addiu	t2,sp,92
    5880:	8fa40080 	lw	a0,128(sp)
    5884:	46008482 	mul.s	$f18,$f16,$f0
    5888:	02802825 	move	a1,s4
    588c:	02e03025 	move	a2,s7
    5890:	27a70068 	addiu	a3,sp,104
    5894:	e7b2005c 	swc1	$f18,92(sp)
    5898:	c6260038 	lwc1	$f6,56(s1)
    589c:	c624002c 	lwc1	$f4,44(s1)
    58a0:	c6280044 	lwc1	$f8,68(s1)
    58a4:	46062280 	add.s	$f10,$f4,$f6
    58a8:	460a4400 	add.s	$f16,$f8,$f10
    58ac:	46008482 	mul.s	$f18,$f16,$f0
    58b0:	e7b20060 	swc1	$f18,96(sp)
    58b4:	c626003c 	lwc1	$f6,60(s1)
    58b8:	c6240030 	lwc1	$f4,48(s1)
    58bc:	c62a0048 	lwc1	$f10,72(s1)
    58c0:	46062200 	add.s	$f8,$f4,$f6
    58c4:	46085400 	add.s	$f16,$f10,$f8
    58c8:	46008482 	mul.s	$f18,$f16,$f0
    58cc:	e7b20064 	swc1	$f18,100(sp)
    58d0:	c6860064 	lwc1	$f6,100(s4)
    58d4:	c6840058 	lwc1	$f4,88(s4)
    58d8:	c688004c 	lwc1	$f8,76(s4)
    58dc:	c6920040 	lwc1	$f18,64(s4)
    58e0:	46062280 	add.s	$f10,$f4,$f6
    58e4:	46085400 	add.s	$f16,$f10,$f8
    58e8:	46128100 	add.s	$f4,$f16,$f18
    58ec:	46022182 	mul.s	$f6,$f4,$f2
    58f0:	e7a60068 	swc1	$f6,104(sp)
    58f4:	c6880068 	lwc1	$f8,104(s4)
    58f8:	c68a005c 	lwc1	$f10,92(s4)
    58fc:	c6920050 	lwc1	$f18,80(s4)
    5900:	c6860044 	lwc1	$f6,68(s4)
    5904:	46085400 	add.s	$f16,$f10,$f8
    5908:	46128100 	add.s	$f4,$f16,$f18
    590c:	46062280 	add.s	$f10,$f4,$f6
    5910:	46025202 	mul.s	$f8,$f10,$f2
    5914:	e7a8006c 	swc1	$f8,108(sp)
    5918:	c692006c 	lwc1	$f18,108(s4)
    591c:	c6900060 	lwc1	$f16,96(s4)
    5920:	c6860054 	lwc1	$f6,84(s4)
    5924:	c6880048 	lwc1	$f8,72(s4)
    5928:	46128100 	add.s	$f4,$f16,$f18
    592c:	afb3001c 	sw	s3,28(sp)
    5930:	afaa0018 	sw	t2,24(sp)
    5934:	afb10014 	sw	s1,20(sp)
    5938:	46062280 	add.s	$f10,$f4,$f6
    593c:	afa90010 	sw	t1,16(sp)
    5940:	46085400 	add.s	$f16,$f10,$f8
    5944:	46028482 	mul.s	$f18,$f16,$f2
    5948:	0c000000 	jal	0 <func_8005B280>
    594c:	e7b20070 	swc1	$f18,112(sp)
    5950:	1000000b 	b	5980 <CollisionCheck_AC_QuadVsTris+0x26c>
    5954:	8fbf004c 	lw	ra,76(sp)
    5958:	8eac0018 	lw	t4,24(s5)
    595c:	8eab001c 	lw	t3,28(s5)
    5960:	2631005c 	addiu	s1,s1,92
    5964:	01960019 	multu	t4,s6
    5968:	00006812 	mflo	t5
    596c:	016d7021 	addu	t6,t3,t5
    5970:	022e082b 	sltu	at,s1,t6
    5974:	1420ff9d 	bnez	at,57ec <CollisionCheck_AC_QuadVsTris+0xd8>
    5978:	00000000 	nop
    597c:	8fbf004c 	lw	ra,76(sp)
    5980:	8fb00028 	lw	s0,40(sp)
    5984:	8fb1002c 	lw	s1,44(sp)
    5988:	8fb20030 	lw	s2,48(sp)
    598c:	8fb30034 	lw	s3,52(sp)
    5990:	8fb40038 	lw	s4,56(sp)
    5994:	8fb5003c 	lw	s5,60(sp)
    5998:	8fb60040 	lw	s6,64(sp)
    599c:	8fb70044 	lw	s7,68(sp)
    59a0:	8fbe0048 	lw	s8,72(sp)
    59a4:	03e00008 	jr	ra
    59a8:	27bd0080 	addiu	sp,sp,128

000059ac <CollisionCheck_AC_QuadVsQuad>:
    59ac:	27bdff78 	addiu	sp,sp,-136
    59b0:	afb60040 	sw	s6,64(sp)
    59b4:	0080b025 	move	s6,a0
    59b8:	afbf004c 	sw	ra,76(sp)
    59bc:	afb70044 	sw	s7,68(sp)
    59c0:	afb40038 	sw	s4,56(sp)
    59c4:	24c40018 	addiu	a0,a2,24
    59c8:	00c0a025 	move	s4,a2
    59cc:	00e0b825 	move	s7,a3
    59d0:	afbe0048 	sw	s8,72(sp)
    59d4:	afb5003c 	sw	s5,60(sp)
    59d8:	afb30034 	sw	s3,52(sp)
    59dc:	afb20030 	sw	s2,48(sp)
    59e0:	afb1002c 	sw	s1,44(sp)
    59e4:	afb00028 	sw	s0,40(sp)
    59e8:	afa5008c 	sw	a1,140(sp)
    59ec:	0c000000 	jal	0 <func_8005B280>
    59f0:	afa4005c 	sw	a0,92(sp)
    59f4:	24150001 	li	s5,1
    59f8:	10550084 	beq	v0,s5,5c0c <CollisionCheck_AC_QuadVsQuad+0x260>
    59fc:	26e40018 	addiu	a0,s7,24
    5a00:	0c000000 	jal	0 <func_8005B280>
    5a04:	afa40050 	sw	a0,80(sp)
    5a08:	10550080 	beq	v0,s5,5c0c <CollisionCheck_AC_QuadVsQuad+0x260>
    5a0c:	8fa4005c 	lw	a0,92(sp)
    5a10:	0c000000 	jal	0 <func_8005B280>
    5a14:	8fa50050 	lw	a1,80(sp)
    5a18:	1055007c 	beq	v0,s5,5c0c <CollisionCheck_AC_QuadVsQuad+0x260>
    5a1c:	3c040000 	lui	a0,0x0
    5a20:	26900058 	addiu	s0,s4,88
    5a24:	2691004c 	addiu	s1,s4,76
    5a28:	02203825 	move	a3,s1
    5a2c:	02002825 	move	a1,s0
    5a30:	248416a8 	addiu	a0,a0,5800
    5a34:	0c000000 	jal	0 <func_8005B280>
    5a38:	26860064 	addiu	a2,s4,100
    5a3c:	3c040000 	lui	a0,0x0
    5a40:	248416dc 	addiu	a0,a0,5852
    5a44:	02002825 	move	a1,s0
    5a48:	02203025 	move	a2,s1
    5a4c:	0c000000 	jal	0 <func_8005B280>
    5a50:	26870040 	addiu	a3,s4,64
    5a54:	3c040000 	lui	a0,0x0
    5a58:	26f00058 	addiu	s0,s7,88
    5a5c:	26f1004c 	addiu	s1,s7,76
    5a60:	02203825 	move	a3,s1
    5a64:	02002825 	move	a1,s0
    5a68:	24841630 	addiu	a0,a0,5680
    5a6c:	0c000000 	jal	0 <func_8005B280>
    5a70:	26e60064 	addiu	a2,s7,100
    5a74:	3c040000 	lui	a0,0x0
    5a78:	24841664 	addiu	a0,a0,5732
    5a7c:	02002825 	move	a1,s0
    5a80:	02203025 	move	a2,s1
    5a84:	0c000000 	jal	0 <func_8005B280>
    5a88:	26e70040 	addiu	a3,s7,64
    5a8c:	3c120000 	lui	s2,0x0
    5a90:	3c1e0000 	lui	s8,0x0
    5a94:	3c130000 	lui	s3,0x0
    5a98:	3c110000 	lui	s1,0x0
    5a9c:	26311698 	addiu	s1,s1,5784
    5aa0:	26731710 	addiu	s3,s3,5904
    5aa4:	27de1698 	addiu	s8,s8,5784
    5aa8:	26521630 	addiu	s2,s2,5680
    5aac:	3c100000 	lui	s0,0x0
    5ab0:	261016a8 	addiu	s0,s0,5800
    5ab4:	02002025 	move	a0,s0
    5ab8:	02402825 	move	a1,s2
    5abc:	0c000000 	jal	0 <func_8005B280>
    5ac0:	02203025 	move	a2,s1
    5ac4:	1455004b 	bne	v0,s5,5bf4 <CollisionCheck_AC_QuadVsQuad+0x248>
    5ac8:	02c02025 	move	a0,s6
    5acc:	02802825 	move	a1,s4
    5ad0:	0c000000 	jal	0 <func_8005B280>
    5ad4:	02203025 	move	a2,s1
    5ad8:	50400047 	beqzl	v0,5bf8 <CollisionCheck_AC_QuadVsQuad+0x24c>
    5adc:	26100034 	addiu	s0,s0,52
    5ae0:	c6840058 	lwc1	$f4,88(s4)
    5ae4:	c6860064 	lwc1	$f6,100(s4)
    5ae8:	c68a004c 	lwc1	$f10,76(s4)
    5aec:	c6920040 	lwc1	$f18,64(s4)
    5af0:	46062200 	add.s	$f8,$f4,$f6
    5af4:	3c013e80 	lui	at,0x3e80
    5af8:	44810000 	mtc1	at,$f0
    5afc:	8fae0050 	lw	t6,80(sp)
    5b00:	460a4400 	add.s	$f16,$f8,$f10
    5b04:	27af0060 	addiu	t7,sp,96
    5b08:	02c02025 	move	a0,s6
    5b0c:	02802825 	move	a1,s4
    5b10:	46128100 	add.s	$f4,$f16,$f18
    5b14:	8fa6005c 	lw	a2,92(sp)
    5b18:	27a7006c 	addiu	a3,sp,108
    5b1c:	46002182 	mul.s	$f6,$f4,$f0
    5b20:	e7a6006c 	swc1	$f6,108(sp)
    5b24:	c68a0068 	lwc1	$f10,104(s4)
    5b28:	c688005c 	lwc1	$f8,92(s4)
    5b2c:	c6920050 	lwc1	$f18,80(s4)
    5b30:	c6860044 	lwc1	$f6,68(s4)
    5b34:	460a4400 	add.s	$f16,$f8,$f10
    5b38:	46128100 	add.s	$f4,$f16,$f18
    5b3c:	46062200 	add.s	$f8,$f4,$f6
    5b40:	46004282 	mul.s	$f10,$f8,$f0
    5b44:	e7aa0070 	swc1	$f10,112(sp)
    5b48:	c692006c 	lwc1	$f18,108(s4)
    5b4c:	c6900060 	lwc1	$f16,96(s4)
    5b50:	c6860054 	lwc1	$f6,84(s4)
    5b54:	c68a0048 	lwc1	$f10,72(s4)
    5b58:	46128100 	add.s	$f4,$f16,$f18
    5b5c:	46062200 	add.s	$f8,$f4,$f6
    5b60:	460a4400 	add.s	$f16,$f8,$f10
    5b64:	46008482 	mul.s	$f18,$f16,$f0
    5b68:	e7b20074 	swc1	$f18,116(sp)
    5b6c:	c6e60064 	lwc1	$f6,100(s7)
    5b70:	c6e40058 	lwc1	$f4,88(s7)
    5b74:	c6ea004c 	lwc1	$f10,76(s7)
    5b78:	c6f20040 	lwc1	$f18,64(s7)
    5b7c:	46062200 	add.s	$f8,$f4,$f6
    5b80:	460a4400 	add.s	$f16,$f8,$f10
    5b84:	46128100 	add.s	$f4,$f16,$f18
    5b88:	46002182 	mul.s	$f6,$f4,$f0
    5b8c:	e7a60060 	swc1	$f6,96(sp)
    5b90:	c6ea0068 	lwc1	$f10,104(s7)
    5b94:	c6e8005c 	lwc1	$f8,92(s7)
    5b98:	c6f20050 	lwc1	$f18,80(s7)
    5b9c:	c6e60044 	lwc1	$f6,68(s7)
    5ba0:	460a4400 	add.s	$f16,$f8,$f10
    5ba4:	46128100 	add.s	$f4,$f16,$f18
    5ba8:	46062200 	add.s	$f8,$f4,$f6
    5bac:	46004282 	mul.s	$f10,$f8,$f0
    5bb0:	e7aa0064 	swc1	$f10,100(sp)
    5bb4:	c6f2006c 	lwc1	$f18,108(s7)
    5bb8:	c6f00060 	lwc1	$f16,96(s7)
    5bbc:	c6e60054 	lwc1	$f6,84(s7)
    5bc0:	c6ea0048 	lwc1	$f10,72(s7)
    5bc4:	46128100 	add.s	$f4,$f16,$f18
    5bc8:	afb1001c 	sw	s1,28(sp)
    5bcc:	afaf0018 	sw	t7,24(sp)
    5bd0:	afb70010 	sw	s7,16(sp)
    5bd4:	46062200 	add.s	$f8,$f4,$f6
    5bd8:	afae0014 	sw	t6,20(sp)
    5bdc:	460a4400 	add.s	$f16,$f8,$f10
    5be0:	46008482 	mul.s	$f18,$f16,$f0
    5be4:	0c000000 	jal	0 <func_8005B280>
    5be8:	e7b20068 	swc1	$f18,104(sp)
    5bec:	10000008 	b	5c10 <CollisionCheck_AC_QuadVsQuad+0x264>
    5bf0:	8fbf004c 	lw	ra,76(sp)
    5bf4:	26100034 	addiu	s0,s0,52
    5bf8:	5613ffaf 	bnel	s0,s3,5ab8 <CollisionCheck_AC_QuadVsQuad+0x10c>
    5bfc:	02002025 	move	a0,s0
    5c00:	26520034 	addiu	s2,s2,52
    5c04:	165effa9 	bne	s2,s8,5aac <CollisionCheck_AC_QuadVsQuad+0x100>
    5c08:	00000000 	nop
    5c0c:	8fbf004c 	lw	ra,76(sp)
    5c10:	8fb00028 	lw	s0,40(sp)
    5c14:	8fb1002c 	lw	s1,44(sp)
    5c18:	8fb20030 	lw	s2,48(sp)
    5c1c:	8fb30034 	lw	s3,52(sp)
    5c20:	8fb40038 	lw	s4,56(sp)
    5c24:	8fb5003c 	lw	s5,60(sp)
    5c28:	8fb60040 	lw	s6,64(sp)
    5c2c:	8fb70044 	lw	s7,68(sp)
    5c30:	8fbe0048 	lw	s8,72(sp)
    5c34:	03e00008 	jr	ra
    5c38:	27bd0088 	addiu	sp,sp,136

00005c3c <func_80060EBC>:
    5c3c:	27bdffc8 	addiu	sp,sp,-56
    5c40:	afbf001c 	sw	ra,28(sp)
    5c44:	afa40038 	sw	a0,56(sp)
    5c48:	afa5003c 	sw	a1,60(sp)
    5c4c:	8cce0018 	lw	t6,24(a2)
    5c50:	8cc2001c 	lw	v0,28(a2)
    5c54:	00c03825 	move	a3,a2
    5c58:	000e7980 	sll	t7,t6,0x6
    5c5c:	004fc021 	addu	t8,v0,t7
    5c60:	0058082b 	sltu	at,v0,t8
    5c64:	10200027 	beqz	at,5d04 <func_80060EBC+0xc8>
    5c68:	00c02825 	move	a1,a2
    5c6c:	90590016 	lbu	t9,22(v0)
    5c70:	33280080 	andi	t0,t9,0x80
    5c74:	5100001c 	beqzl	t0,5ce8 <func_80060EBC+0xac>
    5c78:	8caf0018 	lw	t7,24(a1)
    5c7c:	8c430024 	lw	v1,36(v0)
    5c80:	50600019 	beqzl	v1,5ce8 <func_80060EBC+0xac>
    5c84:	8caf0018 	lw	t7,24(a1)
    5c88:	90690015 	lbu	t1,21(v1)
    5c8c:	312a0040 	andi	t2,t1,0x40
    5c90:	15400014 	bnez	t2,5ce4 <func_80060EBC+0xa8>
    5c94:	27a40024 	addiu	a0,sp,36
    5c98:	2445000e 	addiu	a1,v0,14
    5c9c:	afa20030 	sw	v0,48(sp)
    5ca0:	0c000000 	jal	0 <func_8005B280>
    5ca4:	afa70040 	sw	a3,64(sp)
    5ca8:	8fa20030 	lw	v0,48(sp)
    5cac:	27ab0024 	addiu	t3,sp,36
    5cb0:	8fa70040 	lw	a3,64(sp)
    5cb4:	8c45001c 	lw	a1,28(v0)
    5cb8:	8c460024 	lw	a2,36(v0)
    5cbc:	afab0014 	sw	t3,20(sp)
    5cc0:	8fa40038 	lw	a0,56(sp)
    5cc4:	0c000000 	jal	0 <func_8005B280>
    5cc8:	afa20010 	sw	v0,16(sp)
    5ccc:	8fa20030 	lw	v0,48(sp)
    5cd0:	8c430024 	lw	v1,36(v0)
    5cd4:	906c0015 	lbu	t4,21(v1)
    5cd8:	358d0040 	ori	t5,t4,0x40
    5cdc:	10000009 	b	5d04 <func_80060EBC+0xc8>
    5ce0:	a06d0015 	sb	t5,21(v1)
    5ce4:	8caf0018 	lw	t7,24(a1)
    5ce8:	8cae001c 	lw	t6,28(a1)
    5cec:	24420040 	addiu	v0,v0,64
    5cf0:	000fc180 	sll	t8,t7,0x6
    5cf4:	01d8c821 	addu	t9,t6,t8
    5cf8:	0059082b 	sltu	at,v0,t9
    5cfc:	5420ffdc 	bnezl	at,5c70 <func_80060EBC+0x34>
    5d00:	90590016 	lbu	t9,22(v0)
    5d04:	8fbf001c 	lw	ra,28(sp)
    5d08:	27bd0038 	addiu	sp,sp,56
    5d0c:	03e00008 	jr	ra
    5d10:	00000000 	nop

00005d14 <func_80060F94>:
    5d14:	27bdffc8 	addiu	sp,sp,-56
    5d18:	afbf001c 	sw	ra,28(sp)
    5d1c:	afa40038 	sw	a0,56(sp)
    5d20:	afa5003c 	sw	a1,60(sp)
    5d24:	90ce002e 	lbu	t6,46(a2)
    5d28:	31cf0080 	andi	t7,t6,0x80
    5d2c:	51e0001b 	beqzl	t7,5d9c <func_80060F94+0x88>
    5d30:	8fbf001c 	lw	ra,28(sp)
    5d34:	8cc2003c 	lw	v0,60(a2)
    5d38:	50400018 	beqzl	v0,5d9c <func_80060F94+0x88>
    5d3c:	8fbf001c 	lw	ra,28(sp)
    5d40:	90580015 	lbu	t8,21(v0)
    5d44:	27a40028 	addiu	a0,sp,40
    5d48:	24c50026 	addiu	a1,a2,38
    5d4c:	33190040 	andi	t9,t8,0x40
    5d50:	57200012 	bnezl	t9,5d9c <func_80060F94+0x88>
    5d54:	8fbf001c 	lw	ra,28(sp)
    5d58:	0c000000 	jal	0 <func_8005B280>
    5d5c:	afa60040 	sw	a2,64(sp)
    5d60:	8fa70040 	lw	a3,64(sp)
    5d64:	27a90028 	addiu	t1,sp,40
    5d68:	8fa40038 	lw	a0,56(sp)
    5d6c:	8ce50034 	lw	a1,52(a3)
    5d70:	8ce6003c 	lw	a2,60(a3)
    5d74:	24e80018 	addiu	t0,a3,24
    5d78:	afa80010 	sw	t0,16(sp)
    5d7c:	0c000000 	jal	0 <func_8005B280>
    5d80:	afa90014 	sw	t1,20(sp)
    5d84:	8fa70040 	lw	a3,64(sp)
    5d88:	8ce2003c 	lw	v0,60(a3)
    5d8c:	904a0015 	lbu	t2,21(v0)
    5d90:	354b0040 	ori	t3,t2,0x40
    5d94:	a04b0015 	sb	t3,21(v0)
    5d98:	8fbf001c 	lw	ra,28(sp)
    5d9c:	27bd0038 	addiu	sp,sp,56
    5da0:	03e00008 	jr	ra
    5da4:	00000000 	nop

00005da8 <func_80061028>:
    5da8:	27bdffc8 	addiu	sp,sp,-56
    5dac:	afbf001c 	sw	ra,28(sp)
    5db0:	afa40038 	sw	a0,56(sp)
    5db4:	afa5003c 	sw	a1,60(sp)
    5db8:	8cce0018 	lw	t6,24(a2)
    5dbc:	2407005c 	li	a3,92
    5dc0:	8cc2001c 	lw	v0,28(a2)
    5dc4:	01c70019 	multu	t6,a3
    5dc8:	00c02825 	move	a1,a2
    5dcc:	00007812 	mflo	t7
    5dd0:	004fc021 	addu	t8,v0,t7
    5dd4:	0058082b 	sltu	at,v0,t8
    5dd8:	50200029 	beqzl	at,5e80 <func_80061028+0xd8>
    5ddc:	8fbf001c 	lw	ra,28(sp)
    5de0:	90590016 	lbu	t9,22(v0)
    5de4:	33280080 	andi	t0,t9,0x80
    5de8:	5100001c 	beqzl	t0,5e5c <func_80061028+0xb4>
    5dec:	8caf0018 	lw	t7,24(a1)
    5df0:	8c430024 	lw	v1,36(v0)
    5df4:	50600019 	beqzl	v1,5e5c <func_80061028+0xb4>
    5df8:	8caf0018 	lw	t7,24(a1)
    5dfc:	90690015 	lbu	t1,21(v1)
    5e00:	312a0040 	andi	t2,t1,0x40
    5e04:	15400014 	bnez	t2,5e58 <func_80061028+0xb0>
    5e08:	27a40024 	addiu	a0,sp,36
    5e0c:	2445000e 	addiu	a1,v0,14
    5e10:	afa20030 	sw	v0,48(sp)
    5e14:	0c000000 	jal	0 <func_8005B280>
    5e18:	afa60040 	sw	a2,64(sp)
    5e1c:	8fa20030 	lw	v0,48(sp)
    5e20:	27ab0024 	addiu	t3,sp,36
    5e24:	8fa40038 	lw	a0,56(sp)
    5e28:	8c45001c 	lw	a1,28(v0)
    5e2c:	8c460024 	lw	a2,36(v0)
    5e30:	afab0014 	sw	t3,20(sp)
    5e34:	8fa70040 	lw	a3,64(sp)
    5e38:	0c000000 	jal	0 <func_8005B280>
    5e3c:	afa20010 	sw	v0,16(sp)
    5e40:	8fa20030 	lw	v0,48(sp)
    5e44:	8c430024 	lw	v1,36(v0)
    5e48:	906c0015 	lbu	t4,21(v1)
    5e4c:	358d0040 	ori	t5,t4,0x40
    5e50:	1000000a 	b	5e7c <func_80061028+0xd4>
    5e54:	a06d0015 	sb	t5,21(v1)
    5e58:	8caf0018 	lw	t7,24(a1)
    5e5c:	8cae001c 	lw	t6,28(a1)
    5e60:	2442005c 	addiu	v0,v0,92
    5e64:	01e70019 	multu	t7,a3
    5e68:	0000c012 	mflo	t8
    5e6c:	01d8c821 	addu	t9,t6,t8
    5e70:	0059082b 	sltu	at,v0,t9
    5e74:	5420ffdb 	bnezl	at,5de4 <func_80061028+0x3c>
    5e78:	90590016 	lbu	t9,22(v0)
    5e7c:	8fbf001c 	lw	ra,28(sp)
    5e80:	27bd0038 	addiu	sp,sp,56
    5e84:	03e00008 	jr	ra
    5e88:	00000000 	nop

00005e8c <func_8006110C>:
    5e8c:	27bdffc8 	addiu	sp,sp,-56
    5e90:	afbf001c 	sw	ra,28(sp)
    5e94:	afa40038 	sw	a0,56(sp)
    5e98:	afa5003c 	sw	a1,60(sp)
    5e9c:	90ce002e 	lbu	t6,46(a2)
    5ea0:	31cf0080 	andi	t7,t6,0x80
    5ea4:	51e0001b 	beqzl	t7,5f14 <func_8006110C+0x88>
    5ea8:	8fbf001c 	lw	ra,28(sp)
    5eac:	8cc2003c 	lw	v0,60(a2)
    5eb0:	50400018 	beqzl	v0,5f14 <func_8006110C+0x88>
    5eb4:	8fbf001c 	lw	ra,28(sp)
    5eb8:	90580015 	lbu	t8,21(v0)
    5ebc:	27a40028 	addiu	a0,sp,40
    5ec0:	24c50026 	addiu	a1,a2,38
    5ec4:	33190040 	andi	t9,t8,0x40
    5ec8:	57200012 	bnezl	t9,5f14 <func_8006110C+0x88>
    5ecc:	8fbf001c 	lw	ra,28(sp)
    5ed0:	0c000000 	jal	0 <func_8005B280>
    5ed4:	afa60040 	sw	a2,64(sp)
    5ed8:	8fa70040 	lw	a3,64(sp)
    5edc:	27a90028 	addiu	t1,sp,40
    5ee0:	8fa40038 	lw	a0,56(sp)
    5ee4:	8ce50034 	lw	a1,52(a3)
    5ee8:	8ce6003c 	lw	a2,60(a3)
    5eec:	24e80018 	addiu	t0,a3,24
    5ef0:	afa80010 	sw	t0,16(sp)
    5ef4:	0c000000 	jal	0 <func_8005B280>
    5ef8:	afa90014 	sw	t1,20(sp)
    5efc:	8fa70040 	lw	a3,64(sp)
    5f00:	8ce2003c 	lw	v0,60(a3)
    5f04:	904a0015 	lbu	t2,21(v0)
    5f08:	354b0040 	ori	t3,t2,0x40
    5f0c:	a04b0015 	sb	t3,21(v0)
    5f10:	8fbf001c 	lw	ra,28(sp)
    5f14:	27bd0038 	addiu	sp,sp,56
    5f18:	03e00008 	jr	ra
    5f1c:	00000000 	nop

00005f20 <func_800611A0>:
    5f20:	27bdffd8 	addiu	sp,sp,-40
    5f24:	afbf0024 	sw	ra,36(sp)
    5f28:	afb30020 	sw	s3,32(sp)
    5f2c:	afb2001c 	sw	s2,28(sp)
    5f30:	afb10018 	sw	s1,24(sp)
    5f34:	afb00014 	sw	s0,20(sp)
    5f38:	8cae00cc 	lw	t6,204(a1)
    5f3c:	24b000d0 	addiu	s0,a1,208
    5f40:	00a08825 	move	s1,a1
    5f44:	000e7880 	sll	t7,t6,0x2
    5f48:	00af1821 	addu	v1,a1,t7
    5f4c:	246300d0 	addiu	v1,v1,208
    5f50:	0203082b 	sltu	at,s0,v1
    5f54:	10200020 	beqz	at,5fd8 <func_800611A0+0xb8>
    5f58:	00809825 	move	s3,a0
    5f5c:	3c120000 	lui	s2,0x0
    5f60:	2652015c 	addiu	s2,s2,348
    5f64:	8e060000 	lw	a2,0(s0)
    5f68:	50c00018 	beqzl	a2,5fcc <func_800611A0+0xac>
    5f6c:	26100004 	addiu	s0,s0,4
    5f70:	90d80011 	lbu	t8,17(a2)
    5f74:	33190001 	andi	t9,t8,0x1
    5f78:	53200014 	beqzl	t9,5fcc <func_800611A0+0xac>
    5f7c:	26100004 	addiu	s0,s0,4
    5f80:	8cc20000 	lw	v0,0(a2)
    5f84:	50400005 	beqzl	v0,5f9c <func_800611A0+0x7c>
    5f88:	90c90015 	lbu	t1,21(a2)
    5f8c:	8c480130 	lw	t0,304(v0)
    5f90:	5100000e 	beqzl	t0,5fcc <func_800611A0+0xac>
    5f94:	26100004 	addiu	s0,s0,4
    5f98:	90c90015 	lbu	t1,21(a2)
    5f9c:	02602025 	move	a0,s3
    5fa0:	02202825 	move	a1,s1
    5fa4:	00095080 	sll	t2,t1,0x2
    5fa8:	024a5821 	addu	t3,s2,t2
    5fac:	8d790000 	lw	t9,0(t3)
    5fb0:	0320f809 	jalr	t9
    5fb4:	00000000 	nop
    5fb8:	8e2c00cc 	lw	t4,204(s1)
    5fbc:	000c6880 	sll	t5,t4,0x2
    5fc0:	022d1821 	addu	v1,s1,t5
    5fc4:	246300d0 	addiu	v1,v1,208
    5fc8:	26100004 	addiu	s0,s0,4
    5fcc:	0203082b 	sltu	at,s0,v1
    5fd0:	5420ffe5 	bnezl	at,5f68 <func_800611A0+0x48>
    5fd4:	8e060000 	lw	a2,0(s0)
    5fd8:	8fbf0024 	lw	ra,36(sp)
    5fdc:	8fb00014 	lw	s0,20(sp)
    5fe0:	8fb10018 	lw	s1,24(sp)
    5fe4:	8fb2001c 	lw	s2,28(sp)
    5fe8:	8fb30020 	lw	s3,32(sp)
    5fec:	03e00008 	jr	ra
    5ff0:	27bd0028 	addiu	sp,sp,40

00005ff4 <CollisionCheck_AC>:
    5ff4:	27bdffd0 	addiu	sp,sp,-48
    5ff8:	afbf002c 	sw	ra,44(sp)
    5ffc:	afb40028 	sw	s4,40(sp)
    6000:	afb30024 	sw	s3,36(sp)
    6004:	afb20020 	sw	s2,32(sp)
    6008:	afb1001c 	sw	s1,28(sp)
    600c:	afb00018 	sw	s0,24(sp)
    6010:	8cae00cc 	lw	t6,204(a1)
    6014:	24b100d0 	addiu	s1,a1,208
    6018:	00c08025 	move	s0,a2
    601c:	000e7880 	sll	t7,t6,0x2
    6020:	00af4021 	addu	t0,a1,t7
    6024:	250800d0 	addiu	t0,t0,208
    6028:	0228082b 	sltu	at,s1,t0
    602c:	00a09025 	move	s2,a1
    6030:	10200032 	beqz	at,60fc <CollisionCheck_AC+0x108>
    6034:	00809825 	move	s3,a0
    6038:	3c140000 	lui	s4,0x0
    603c:	2694016c 	addiu	s4,s4,364
    6040:	8e270000 	lw	a3,0(s1)
    6044:	50e0002a 	beqzl	a3,60f0 <CollisionCheck_AC+0xfc>
    6048:	26310004 	addiu	s1,s1,4
    604c:	90e20011 	lbu	v0,17(a3)
    6050:	30580001 	andi	t8,v0,0x1
    6054:	53000026 	beqzl	t8,60f0 <CollisionCheck_AC+0xfc>
    6058:	26310004 	addiu	s1,s1,4
    605c:	8ce40000 	lw	a0,0(a3)
    6060:	50800005 	beqzl	a0,6078 <CollisionCheck_AC+0x84>
    6064:	92030010 	lbu	v1,16(s0)
    6068:	8c990130 	lw	t9,304(a0)
    606c:	53200020 	beqzl	t9,60f0 <CollisionCheck_AC+0xfc>
    6070:	26310004 	addiu	s1,s1,4
    6074:	92030010 	lbu	v1,16(s0)
    6078:	00434824 	and	t1,v0,v1
    607c:	312a0038 	andi	t2,t1,0x38
    6080:	5140001b 	beqzl	t2,60f0 <CollisionCheck_AC+0xfc>
    6084:	26310004 	addiu	s1,s1,4
    6088:	12070018 	beq	s0,a3,60ec <CollisionCheck_AC+0xf8>
    608c:	306b0040 	andi	t3,v1,0x40
    6090:	55600007 	bnezl	t3,60b0 <CollisionCheck_AC+0xbc>
    6094:	920c0015 	lbu	t4,21(s0)
    6098:	8e020000 	lw	v0,0(s0)
    609c:	50400004 	beqzl	v0,60b0 <CollisionCheck_AC+0xbc>
    60a0:	920c0015 	lbu	t4,21(s0)
    60a4:	50440012 	beql	v0,a0,60f0 <CollisionCheck_AC+0xfc>
    60a8:	26310004 	addiu	s1,s1,4
    60ac:	920c0015 	lbu	t4,21(s0)
    60b0:	90ef0015 	lbu	t7,21(a3)
    60b4:	02602025 	move	a0,s3
    60b8:	000c6900 	sll	t5,t4,0x4
    60bc:	028d7021 	addu	t6,s4,t5
    60c0:	000fc080 	sll	t8,t7,0x2
    60c4:	01d8c821 	addu	t9,t6,t8
    60c8:	8f390000 	lw	t9,0(t9)
    60cc:	02402825 	move	a1,s2
    60d0:	02003025 	move	a2,s0
    60d4:	0320f809 	jalr	t9
    60d8:	00000000 	nop
    60dc:	8e4900cc 	lw	t1,204(s2)
    60e0:	00095080 	sll	t2,t1,0x2
    60e4:	024a4021 	addu	t0,s2,t2
    60e8:	250800d0 	addiu	t0,t0,208
    60ec:	26310004 	addiu	s1,s1,4
    60f0:	0228082b 	sltu	at,s1,t0
    60f4:	5420ffd3 	bnezl	at,6044 <CollisionCheck_AC+0x50>
    60f8:	8e270000 	lw	a3,0(s1)
    60fc:	8fbf002c 	lw	ra,44(sp)
    6100:	8fb00018 	lw	s0,24(sp)
    6104:	8fb1001c 	lw	s1,28(sp)
    6108:	8fb20020 	lw	s2,32(sp)
    610c:	8fb30024 	lw	s3,36(sp)
    6110:	8fb40028 	lw	s4,40(sp)
    6114:	03e00008 	jr	ra
    6118:	27bd0030 	addiu	sp,sp,48

0000611c <func_8006139C>:
    611c:	27bdffd8 	addiu	sp,sp,-40
    6120:	afbf0024 	sw	ra,36(sp)
    6124:	afb20020 	sw	s2,32(sp)
    6128:	afb1001c 	sw	s1,28(sp)
    612c:	afb00018 	sw	s0,24(sp)
    6130:	84a60000 	lh	a2,0(a1)
    6134:	00a08825 	move	s1,a1
    6138:	00809025 	move	s2,a0
    613c:	50c00026 	beqzl	a2,61d8 <func_8006139C+0xbc>
    6140:	8fbf0024 	lw	ra,36(sp)
    6144:	8cae00cc 	lw	t6,204(a1)
    6148:	00067880 	sll	t7,a2,0x2
    614c:	00af1821 	addu	v1,a1,t7
    6150:	11c00020 	beqz	t6,61d4 <func_8006139C+0xb8>
    6154:	24b00004 	addiu	s0,a1,4
    6158:	24630004 	addiu	v1,v1,4
    615c:	0203082b 	sltu	at,s0,v1
    6160:	5020001a 	beqzl	at,61cc <func_8006139C+0xb0>
    6164:	02402025 	move	a0,s2
    6168:	8e060000 	lw	a2,0(s0)
    616c:	50c00013 	beqzl	a2,61bc <func_8006139C+0xa0>
    6170:	26100004 	addiu	s0,s0,4
    6174:	90d80010 	lbu	t8,16(a2)
    6178:	33190001 	andi	t9,t8,0x1
    617c:	5320000f 	beqzl	t9,61bc <func_8006139C+0xa0>
    6180:	26100004 	addiu	s0,s0,4
    6184:	8cc20000 	lw	v0,0(a2)
    6188:	02402025 	move	a0,s2
    618c:	10400004 	beqz	v0,61a0 <func_8006139C+0x84>
    6190:	00000000 	nop
    6194:	8c480130 	lw	t0,304(v0)
    6198:	51000008 	beqzl	t0,61bc <func_8006139C+0xa0>
    619c:	26100004 	addiu	s0,s0,4
    61a0:	0c000000 	jal	0 <func_8005B280>
    61a4:	02202825 	move	a1,s1
    61a8:	86290000 	lh	t1,0(s1)
    61ac:	00095080 	sll	t2,t1,0x2
    61b0:	022a1821 	addu	v1,s1,t2
    61b4:	24630004 	addiu	v1,v1,4
    61b8:	26100004 	addiu	s0,s0,4
    61bc:	0203082b 	sltu	at,s0,v1
    61c0:	5420ffea 	bnezl	at,616c <func_8006139C+0x50>
    61c4:	8e060000 	lw	a2,0(s0)
    61c8:	02402025 	move	a0,s2
    61cc:	0c000000 	jal	0 <func_8005B280>
    61d0:	02202825 	move	a1,s1
    61d4:	8fbf0024 	lw	ra,36(sp)
    61d8:	8fb00018 	lw	s0,24(sp)
    61dc:	8fb1001c 	lw	s1,28(sp)
    61e0:	8fb20020 	lw	s2,32(sp)
    61e4:	03e00008 	jr	ra
    61e8:	27bd0028 	addiu	sp,sp,40

000061ec <func_8006146C>:
    61ec:	308200ff 	andi	v0,a0,0xff
    61f0:	240100ff 	li	at,255
    61f4:	14410003 	bne	v0,at,6204 <func_8006146C+0x18>
    61f8:	afa40000 	sw	a0,0(sp)
    61fc:	03e00008 	jr	ra
    6200:	00001025 	move	v0,zero
    6204:	240100fe 	li	at,254
    6208:	54410004 	bnel	v0,at,621c <func_8006146C+0x30>
    620c:	24020002 	li	v0,2
    6210:	03e00008 	jr	ra
    6214:	24020001 	li	v0,1
    6218:	24020002 	li	v0,2
    621c:	03e00008 	jr	ra
    6220:	00000000 	nop

00006224 <func_800614A4>:
    6224:	27bdffb0 	addiu	sp,sp,-80
    6228:	afbf0014 	sw	ra,20(sp)
    622c:	afa60058 	sw	a2,88(sp)
    6230:	908e0012 	lbu	t6,18(a0)
    6234:	8ce90000 	lw	t1,0(a3)
    6238:	8c880000 	lw	t0,0(a0)
    623c:	35cf0002 	ori	t7,t6,0x2
    6240:	a08f0012 	sb	t7,18(a0)
    6244:	ac89000c 	sw	t1,12(a0)
    6248:	90b80017 	lbu	t8,23(a1)
    624c:	37190002 	ori	t9,t8,0x2
    6250:	a0b90017 	sb	t9,23(a1)
    6254:	90ea0013 	lbu	t2,19(a3)
    6258:	314b0008 	andi	t3,t2,0x8
    625c:	51600005 	beqzl	t3,6274 <func_800614A4+0x50>
    6260:	90ee0012 	lbu	t6,18(a3)
    6264:	908c0013 	lbu	t4,19(a0)
    6268:	358d0001 	ori	t5,t4,0x1
    626c:	a08d0013 	sb	t5,19(a0)
    6270:	90ee0012 	lbu	t6,18(a3)
    6274:	8fa20060 	lw	v0,96(sp)
    6278:	ace8000c 	sw	t0,12(a3)
    627c:	35cf0002 	ori	t7,t6,0x2
    6280:	a0ef0012 	sb	t7,18(a3)
    6284:	90580017 	lbu	t8,23(v0)
    6288:	37190002 	ori	t9,t8,0x2
    628c:	a0590017 	sb	t9,23(v0)
    6290:	908a0013 	lbu	t2,19(a0)
    6294:	314b0008 	andi	t3,t2,0x8
    6298:	11600004 	beqz	t3,62ac <func_800614A4+0x88>
    629c:	00000000 	nop
    62a0:	90ec0013 	lbu	t4,19(a3)
    62a4:	358d0001 	ori	t5,t4,0x1
    62a8:	a0ed0013 	sb	t5,19(a3)
    62ac:	510000a6 	beqzl	t0,6548 <func_800614A4+0x324>
    62b0:	8fbf0014 	lw	ra,20(sp)
    62b4:	512000a4 	beqzl	t1,6548 <func_800614A4+0x324>
    62b8:	8fbf0014 	lw	ra,20(sp)
    62bc:	908e0012 	lbu	t6,18(a0)
    62c0:	31cf0004 	andi	t7,t6,0x4
    62c4:	55e000a0 	bnezl	t7,6548 <func_800614A4+0x324>
    62c8:	8fbf0014 	lw	ra,20(sp)
    62cc:	90f80012 	lbu	t8,18(a3)
    62d0:	33190004 	andi	t9,t8,0x4
    62d4:	5720009c 	bnezl	t9,6548 <func_800614A4+0x324>
    62d8:	8fbf0014 	lw	ra,20(sp)
    62dc:	910400ae 	lbu	a0,174(t0)
    62e0:	afa90020 	sw	t1,32(sp)
    62e4:	0c000000 	jal	0 <func_8005B280>
    62e8:	afa80024 	sw	t0,36(sp)
    62ec:	8fa90020 	lw	t1,32(sp)
    62f0:	912400ae 	lbu	a0,174(t1)
    62f4:	0c000000 	jal	0 <func_8005B280>
    62f8:	afa20018 	sw	v0,24(sp)
    62fc:	8fa80024 	lw	t0,36(sp)
    6300:	8fa30018 	lw	v1,24(sp)
    6304:	8fa90020 	lw	t1,32(sp)
    6308:	910a00ae 	lbu	t2,174(t0)
    630c:	3c014f80 	lui	at,0x4f80
    6310:	448a2000 	mtc1	t2,$f4
    6314:	05410004 	bgez	t2,6328 <func_800614A4+0x104>
    6318:	468024a0 	cvt.s.w	$f18,$f4
    631c:	44813000 	mtc1	at,$f6
    6320:	00000000 	nop
    6324:	46069480 	add.s	$f18,$f18,$f6
    6328:	912b00ae 	lbu	t3,174(t1)
    632c:	3c014f80 	lui	at,0x4f80
    6330:	448b4000 	mtc1	t3,$f8
    6334:	05610004 	bgez	t3,6348 <func_800614A4+0x124>
    6338:	468042a0 	cvt.s.w	$f10,$f8
    633c:	44812000 	mtc1	at,$f4
    6340:	00000000 	nop
    6344:	46045280 	add.s	$f10,$f10,$f4
    6348:	e7aa0038 	swc1	$f10,56(sp)
    634c:	c7a60038 	lwc1	$f6,56(sp)
    6350:	3c010000 	lui	at,0x0
    6354:	c4280774 	lwc1	$f8,1908(at)
    6358:	46069080 	add.s	$f2,$f18,$f6
    635c:	3c013f80 	lui	at,0x3f80
    6360:	46001005 	abs.s	$f0,$f2
    6364:	e7a20034 	swc1	$f2,52(sp)
    6368:	4608003c 	c.lt.s	$f0,$f8
    636c:	00000000 	nop
    6370:	45020007 	bc1fl	6390 <func_800614A4+0x16c>
    6374:	8fa40064 	lw	a0,100(sp)
    6378:	44819000 	mtc1	at,$f18
    637c:	3c014000 	lui	at,0x4000
    6380:	44812000 	mtc1	at,$f4
    6384:	e7b20038 	swc1	$f18,56(sp)
    6388:	e7a40034 	swc1	$f4,52(sp)
    638c:	8fa40064 	lw	a0,100(sp)
    6390:	8fa50058 	lw	a1,88(sp)
    6394:	c48a0000 	lwc1	$f10,0(a0)
    6398:	c4a60000 	lwc1	$f6,0(a1)
    639c:	c4880008 	lwc1	$f8,8(a0)
    63a0:	c4a40008 	lwc1	$f4,8(a1)
    63a4:	46065381 	sub.s	$f14,$f10,$f6
    63a8:	24040001 	li	a0,1
    63ac:	46044401 	sub.s	$f16,$f8,$f4
    63b0:	460e7282 	mul.s	$f10,$f14,$f14
    63b4:	00000000 	nop
    63b8:	46108182 	mul.s	$f6,$f16,$f16
    63bc:	46065000 	add.s	$f0,$f10,$f6
    63c0:	46000004 	sqrt.s	$f0,$f0
    63c4:	14600007 	bnez	v1,63e4 <func_800614A4+0x1c0>
    63c8:	e7a00040 	swc1	$f0,64(sp)
    63cc:	1040005d 	beqz	v0,6544 <func_800614A4+0x320>
    63d0:	3c013f80 	lui	at,0x3f80
    63d4:	44801000 	mtc1	zero,$f2
    63d8:	44816000 	mtc1	at,$f12
    63dc:	10000023 	b	646c <func_800614A4+0x248>
    63e0:	c7a60040 	lwc1	$f6,64(sp)
    63e4:	14640011 	bne	v1,a0,642c <func_800614A4+0x208>
    63e8:	24010002 	li	at,2
    63ec:	14400005 	bnez	v0,6404 <func_800614A4+0x1e0>
    63f0:	3c013f80 	lui	at,0x3f80
    63f4:	44811000 	mtc1	at,$f2
    63f8:	44806000 	mtc1	zero,$f12
    63fc:	1000001b 	b	646c <func_800614A4+0x248>
    6400:	c7a60040 	lwc1	$f6,64(sp)
    6404:	14440005 	bne	v0,a0,641c <func_800614A4+0x1f8>
    6408:	3c013f80 	lui	at,0x3f80
    640c:	3c013f00 	lui	at,0x3f00
    6410:	44816000 	mtc1	at,$f12
    6414:	10000014 	b	6468 <func_800614A4+0x244>
    6418:	46006086 	mov.s	$f2,$f12
    641c:	44801000 	mtc1	zero,$f2
    6420:	44816000 	mtc1	at,$f12
    6424:	10000011 	b	646c <func_800614A4+0x248>
    6428:	c7a60040 	lwc1	$f6,64(sp)
    642c:	1441000a 	bne	v0,at,6458 <func_800614A4+0x234>
    6430:	c7a40034 	lwc1	$f4,52(sp)
    6434:	3c013f80 	lui	at,0x3f80
    6438:	44814000 	mtc1	at,$f8
    643c:	c7aa0038 	lwc1	$f10,56(sp)
    6440:	46044003 	div.s	$f0,$f8,$f4
    6444:	46005082 	mul.s	$f2,$f10,$f0
    6448:	00000000 	nop
    644c:	46009302 	mul.s	$f12,$f18,$f0
    6450:	10000005 	b	6468 <func_800614A4+0x244>
    6454:	00000000 	nop
    6458:	3c013f80 	lui	at,0x3f80
    645c:	44811000 	mtc1	at,$f2
    6460:	44806000 	mtc1	zero,$f12
    6464:	00000000 	nop
    6468:	c7a60040 	lwc1	$f6,64(sp)
    646c:	3c010000 	lui	at,0x0
    6470:	c4280778 	lwc1	$f8,1912(at)
    6474:	46003005 	abs.s	$f0,$f6
    6478:	c7b20068 	lwc1	$f18,104(sp)
    647c:	4608003c 	c.lt.s	$f0,$f8
    6480:	00000000 	nop
    6484:	4503001a 	bc1tl	64f0 <func_800614A4+0x2cc>
    6488:	44804000 	mtc1	zero,$f8
    648c:	c7b20068 	lwc1	$f18,104(sp)
    6490:	c504009c 	lwc1	$f4,156(t0)
    6494:	46069003 	div.s	$f0,$f18,$f6
    6498:	46007382 	mul.s	$f14,$f14,$f0
    649c:	46007287 	neg.s	$f10,$f14
    64a0:	46008402 	mul.s	$f16,$f16,$f0
    64a4:	00000000 	nop
    64a8:	46025202 	mul.s	$f8,$f10,$f2
    64ac:	c50a00a4 	lwc1	$f10,164(t0)
    64b0:	46082180 	add.s	$f6,$f4,$f8
    64b4:	46008107 	neg.s	$f4,$f16
    64b8:	e506009c 	swc1	$f6,156(t0)
    64bc:	46022202 	mul.s	$f8,$f4,$f2
    64c0:	46085180 	add.s	$f6,$f10,$f8
    64c4:	460c7282 	mul.s	$f10,$f14,$f12
    64c8:	e50600a4 	swc1	$f6,164(t0)
    64cc:	c524009c 	lwc1	$f4,156(t1)
    64d0:	c52600a4 	lwc1	$f6,164(t1)
    64d4:	460a2200 	add.s	$f8,$f4,$f10
    64d8:	460c8102 	mul.s	$f4,$f16,$f12
    64dc:	e528009c 	swc1	$f8,156(t1)
    64e0:	46043280 	add.s	$f10,$f6,$f4
    64e4:	10000017 	b	6544 <func_800614A4+0x320>
    64e8:	e52a00a4 	swc1	$f10,164(t1)
    64ec:	44804000 	mtc1	zero,$f8
    64f0:	00000000 	nop
    64f4:	46089032 	c.eq.s	$f18,$f8
    64f8:	00000000 	nop
    64fc:	4503000c 	bc1tl	6530 <func_800614A4+0x30c>
    6500:	c508009c 	lwc1	$f8,156(t0)
    6504:	46009107 	neg.s	$f4,$f18
    6508:	c506009c 	lwc1	$f6,156(t0)
    650c:	46022282 	mul.s	$f10,$f4,$f2
    6510:	460a3200 	add.s	$f8,$f6,$f10
    6514:	460c9182 	mul.s	$f6,$f18,$f12
    6518:	e508009c 	swc1	$f8,156(t0)
    651c:	c524009c 	lwc1	$f4,156(t1)
    6520:	46062280 	add.s	$f10,$f4,$f6
    6524:	10000007 	b	6544 <func_800614A4+0x320>
    6528:	e52a009c 	swc1	$f10,156(t1)
    652c:	c508009c 	lwc1	$f8,156(t0)
    6530:	46024101 	sub.s	$f4,$f8,$f2
    6534:	e504009c 	swc1	$f4,156(t0)
    6538:	c526009c 	lwc1	$f6,156(t1)
    653c:	460c3280 	add.s	$f10,$f6,$f12
    6540:	e52a009c 	swc1	$f10,156(t1)
    6544:	8fbf0014 	lw	ra,20(sp)
    6548:	27bd0050 	addiu	sp,sp,80
    654c:	03e00008 	jr	ra
    6550:	00000000 	nop

00006554 <CollisionCheck_OC_JntSphVsJntSph>:
    6554:	27bdff78 	addiu	sp,sp,-136
    6558:	afbf004c 	sw	ra,76(sp)
    655c:	afbe0048 	sw	s8,72(sp)
    6560:	afb70044 	sw	s7,68(sp)
    6564:	afb60040 	sw	s6,64(sp)
    6568:	afb5003c 	sw	s5,60(sp)
    656c:	afb40038 	sw	s4,56(sp)
    6570:	afb30034 	sw	s3,52(sp)
    6574:	afb20030 	sw	s2,48(sp)
    6578:	afb1002c 	sw	s1,44(sp)
    657c:	afb00028 	sw	s0,40(sp)
    6580:	afa40088 	sw	a0,136(sp)
    6584:	afa5008c 	sw	a1,140(sp)
    6588:	afa60090 	sw	a2,144(sp)
    658c:	afa70094 	sw	a3,148(sp)
    6590:	afa60084 	sw	a2,132(sp)
    6594:	8cc30018 	lw	v1,24(a2)
    6598:	00e09825 	move	s3,a3
    659c:	58600054 	blezl	v1,66f0 <CollisionCheck_OC_JntSphVsJntSph+0x19c>
    65a0:	8fbf004c 	lw	ra,76(sp)
    65a4:	8cc2001c 	lw	v0,28(a2)
    65a8:	50400051 	beqzl	v0,66f0 <CollisionCheck_OC_JntSphVsJntSph+0x19c>
    65ac:	8fbf004c 	lw	ra,76(sp)
    65b0:	8cf80018 	lw	t8,24(a3)
    65b4:	5b00004e 	blezl	t8,66f0 <CollisionCheck_OC_JntSphVsJntSph+0x19c>
    65b8:	8fbf004c 	lw	ra,76(sp)
    65bc:	8cf9001c 	lw	t9,28(a3)
    65c0:	00034180 	sll	t0,v1,0x6
    65c4:	00484821 	addu	t1,v0,t0
    65c8:	13200048 	beqz	t9,66ec <CollisionCheck_OC_JntSphVsJntSph+0x198>
    65cc:	0049082b 	sltu	at,v0,t1
    65d0:	10200046 	beqz	at,66ec <CollisionCheck_OC_JntSphVsJntSph+0x198>
    65d4:	0040a025 	move	s4,v0
    65d8:	241e0001 	li	s8,1
    65dc:	27b70074 	addiu	s7,sp,116
    65e0:	27b6005c 	addiu	s6,sp,92
    65e4:	27b50068 	addiu	s5,sp,104
    65e8:	928a0017 	lbu	t2,23(s4)
    65ec:	8fac0084 	lw	t4,132(sp)
    65f0:	8faf0094 	lw	t7,148(sp)
    65f4:	314b0001 	andi	t3,t2,0x1
    65f8:	55600007 	bnezl	t3,6618 <CollisionCheck_OC_JntSphVsJntSph+0xc4>
    65fc:	8df90018 	lw	t9,24(t7)
    6600:	8d8e0018 	lw	t6,24(t4)
    6604:	8d8d001c 	lw	t5,28(t4)
    6608:	000ec180 	sll	t8,t6,0x6
    660c:	10000033 	b	66dc <CollisionCheck_OC_JntSphVsJntSph+0x188>
    6610:	01b81021 	addu	v0,t5,t8
    6614:	8df90018 	lw	t9,24(t7)
    6618:	8df0001c 	lw	s0,28(t7)
    661c:	00194180 	sll	t0,t9,0x6
    6620:	02084821 	addu	t1,s0,t0
    6624:	0209082b 	sltu	at,s0,t1
    6628:	50200028 	beqzl	at,66cc <CollisionCheck_OC_JntSphVsJntSph+0x178>
    662c:	8fa80084 	lw	t0,132(sp)
    6630:	920a0017 	lbu	t2,23(s0)
    6634:	26910030 	addiu	s1,s4,48
    6638:	02202025 	move	a0,s1
    663c:	314b0001 	andi	t3,t2,0x1
    6640:	15600006 	bnez	t3,665c <CollisionCheck_OC_JntSphVsJntSph+0x108>
    6644:	26120030 	addiu	s2,s0,48
    6648:	8e6e0018 	lw	t6,24(s3)
    664c:	8e6c001c 	lw	t4,28(s3)
    6650:	000e6980 	sll	t5,t6,0x6
    6654:	10000018 	b	66b8 <CollisionCheck_OC_JntSphVsJntSph+0x164>
    6658:	018d1021 	addu	v0,t4,t5
    665c:	02402825 	move	a1,s2
    6660:	0c000000 	jal	0 <func_8005B280>
    6664:	02e03025 	move	a2,s7
    6668:	145e000f 	bne	v0,s8,66a8 <CollisionCheck_OC_JntSphVsJntSph+0x154>
    666c:	02a02025 	move	a0,s5
    6670:	0c000000 	jal	0 <func_8005B280>
    6674:	02202825 	move	a1,s1
    6678:	02c02025 	move	a0,s6
    667c:	0c000000 	jal	0 <func_8005B280>
    6680:	02402825 	move	a1,s2
    6684:	c7a40074 	lwc1	$f4,116(sp)
    6688:	8fa40090 	lw	a0,144(sp)
    668c:	02802825 	move	a1,s4
    6690:	02a03025 	move	a2,s5
    6694:	8fa70094 	lw	a3,148(sp)
    6698:	afb00010 	sw	s0,16(sp)
    669c:	afb60014 	sw	s6,20(sp)
    66a0:	0c000000 	jal	0 <func_8005B280>
    66a4:	e7a40018 	swc1	$f4,24(sp)
    66a8:	8e6f0018 	lw	t7,24(s3)
    66ac:	8e78001c 	lw	t8,28(s3)
    66b0:	000fc980 	sll	t9,t7,0x6
    66b4:	03191021 	addu	v0,t8,t9
    66b8:	26100040 	addiu	s0,s0,64
    66bc:	0202082b 	sltu	at,s0,v0
    66c0:	5420ffdc 	bnezl	at,6634 <CollisionCheck_OC_JntSphVsJntSph+0xe0>
    66c4:	920a0017 	lbu	t2,23(s0)
    66c8:	8fa80084 	lw	t0,132(sp)
    66cc:	8d0a0018 	lw	t2,24(t0)
    66d0:	8d09001c 	lw	t1,28(t0)
    66d4:	000a5980 	sll	t3,t2,0x6
    66d8:	012b1021 	addu	v0,t1,t3
    66dc:	26940040 	addiu	s4,s4,64
    66e0:	0282082b 	sltu	at,s4,v0
    66e4:	5420ffc1 	bnezl	at,65ec <CollisionCheck_OC_JntSphVsJntSph+0x98>
    66e8:	928a0017 	lbu	t2,23(s4)
    66ec:	8fbf004c 	lw	ra,76(sp)
    66f0:	8fb00028 	lw	s0,40(sp)
    66f4:	8fb1002c 	lw	s1,44(sp)
    66f8:	8fb20030 	lw	s2,48(sp)
    66fc:	8fb30034 	lw	s3,52(sp)
    6700:	8fb40038 	lw	s4,56(sp)
    6704:	8fb5003c 	lw	s5,60(sp)
    6708:	8fb60040 	lw	s6,64(sp)
    670c:	8fb70044 	lw	s7,68(sp)
    6710:	8fbe0048 	lw	s8,72(sp)
    6714:	03e00008 	jr	ra
    6718:	27bd0088 	addiu	sp,sp,136

0000671c <CollisionCheck_OC_JntSphVsCyl>:
    671c:	27bdff78 	addiu	sp,sp,-136
    6720:	afbf004c 	sw	ra,76(sp)
    6724:	afbe0048 	sw	s8,72(sp)
    6728:	afb70044 	sw	s7,68(sp)
    672c:	afb60040 	sw	s6,64(sp)
    6730:	afb5003c 	sw	s5,60(sp)
    6734:	afb40038 	sw	s4,56(sp)
    6738:	afb30034 	sw	s3,52(sp)
    673c:	afb20030 	sw	s2,48(sp)
    6740:	afb1002c 	sw	s1,44(sp)
    6744:	afb00028 	sw	s0,40(sp)
    6748:	afa40088 	sw	a0,136(sp)
    674c:	afa5008c 	sw	a1,140(sp)
    6750:	8cc30018 	lw	v1,24(a2)
    6754:	00e09025 	move	s2,a3
    6758:	00c0f025 	move	s8,a2
    675c:	1860003a 	blez	v1,6848 <CollisionCheck_OC_JntSphVsCyl+0x12c>
    6760:	00c0a825 	move	s5,a2
    6764:	8cc2001c 	lw	v0,28(a2)
    6768:	50400038 	beqzl	v0,684c <CollisionCheck_OC_JntSphVsCyl+0x130>
    676c:	8fbf004c 	lw	ra,76(sp)
    6770:	90ee0012 	lbu	t6,18(a3)
    6774:	31cf0001 	andi	t7,t6,0x1
    6778:	51e00034 	beqzl	t7,684c <CollisionCheck_OC_JntSphVsCyl+0x130>
    677c:	8fbf004c 	lw	ra,76(sp)
    6780:	90f8002f 	lbu	t8,47(a3)
    6784:	00034180 	sll	t0,v1,0x6
    6788:	00484821 	addu	t1,v0,t0
    678c:	33190001 	andi	t9,t8,0x1
    6790:	1320002d 	beqz	t9,6848 <CollisionCheck_OC_JntSphVsCyl+0x12c>
    6794:	0049082b 	sltu	at,v0,t1
    6798:	1020002b 	beqz	at,6848 <CollisionCheck_OC_JntSphVsCyl+0x12c>
    679c:	00408025 	move	s0,v0
    67a0:	27b70060 	addiu	s7,sp,96
    67a4:	27b6006c 	addiu	s6,sp,108
    67a8:	920a0017 	lbu	t2,23(s0)
    67ac:	26110030 	addiu	s1,s0,48
    67b0:	02202025 	move	a0,s1
    67b4:	314b0001 	andi	t3,t2,0x1
    67b8:	15600006 	bnez	t3,67d4 <CollisionCheck_OC_JntSphVsCyl+0xb8>
    67bc:	26450040 	addiu	a1,s2,64
    67c0:	8ead0018 	lw	t5,24(s5)
    67c4:	8eac001c 	lw	t4,28(s5)
    67c8:	000d7180 	sll	t6,t5,0x6
    67cc:	1000001a 	b	6838 <CollisionCheck_OC_JntSphVsCyl+0x11c>
    67d0:	018e1021 	addu	v0,t4,t6
    67d4:	0c000000 	jal	0 <func_8005B280>
    67d8:	27a60078 	addiu	a2,sp,120
    67dc:	24010001 	li	at,1
    67e0:	14410011 	bne	v0,at,6828 <CollisionCheck_OC_JntSphVsCyl+0x10c>
    67e4:	02c02025 	move	a0,s6
    67e8:	02202825 	move	a1,s1
    67ec:	26530018 	addiu	s3,s2,24
    67f0:	0c000000 	jal	0 <func_8005B280>
    67f4:	26540046 	addiu	s4,s2,70
    67f8:	02e02025 	move	a0,s7
    67fc:	0c000000 	jal	0 <func_8005B280>
    6800:	02802825 	move	a1,s4
    6804:	c7a40078 	lwc1	$f4,120(sp)
    6808:	03c02025 	move	a0,s8
    680c:	02002825 	move	a1,s0
    6810:	02c03025 	move	a2,s6
    6814:	02403825 	move	a3,s2
    6818:	afb30010 	sw	s3,16(sp)
    681c:	afb70014 	sw	s7,20(sp)
    6820:	0c000000 	jal	0 <func_8005B280>
    6824:	e7a40018 	swc1	$f4,24(sp)
    6828:	8eb80018 	lw	t8,24(s5)
    682c:	8eaf001c 	lw	t7,28(s5)
    6830:	0018c980 	sll	t9,t8,0x6
    6834:	01f91021 	addu	v0,t7,t9
    6838:	26100040 	addiu	s0,s0,64
    683c:	0202082b 	sltu	at,s0,v0
    6840:	5420ffda 	bnezl	at,67ac <CollisionCheck_OC_JntSphVsCyl+0x90>
    6844:	920a0017 	lbu	t2,23(s0)
    6848:	8fbf004c 	lw	ra,76(sp)
    684c:	8fb00028 	lw	s0,40(sp)
    6850:	8fb1002c 	lw	s1,44(sp)
    6854:	8fb20030 	lw	s2,48(sp)
    6858:	8fb30034 	lw	s3,52(sp)
    685c:	8fb40038 	lw	s4,56(sp)
    6860:	8fb5003c 	lw	s5,60(sp)
    6864:	8fb60040 	lw	s6,64(sp)
    6868:	8fb70044 	lw	s7,68(sp)
    686c:	8fbe0048 	lw	s8,72(sp)
    6870:	03e00008 	jr	ra
    6874:	27bd0088 	addiu	sp,sp,136

00006878 <CollisionCheck_OC_CylVsJntSph>:
    6878:	27bdffe8 	addiu	sp,sp,-24
    687c:	afa70024 	sw	a3,36(sp)
    6880:	00c03825 	move	a3,a2
    6884:	afbf0014 	sw	ra,20(sp)
    6888:	afa60020 	sw	a2,32(sp)
    688c:	0c000000 	jal	0 <func_8005B280>
    6890:	8fa60024 	lw	a2,36(sp)
    6894:	8fbf0014 	lw	ra,20(sp)
    6898:	27bd0018 	addiu	sp,sp,24
    689c:	03e00008 	jr	ra
    68a0:	00000000 	nop

000068a4 <CollisionCheck_OC_CylVsCyl>:
    68a4:	27bdffa8 	addiu	sp,sp,-88
    68a8:	afbf002c 	sw	ra,44(sp)
    68ac:	afb10028 	sw	s1,40(sp)
    68b0:	afb00024 	sw	s0,36(sp)
    68b4:	afa40058 	sw	a0,88(sp)
    68b8:	afa5005c 	sw	a1,92(sp)
    68bc:	90ce0012 	lbu	t6,18(a2)
    68c0:	00c08025 	move	s0,a2
    68c4:	00e08825 	move	s1,a3
    68c8:	31cf0001 	andi	t7,t6,0x1
    68cc:	51e00025 	beqzl	t7,6964 <CollisionCheck_OC_CylVsCyl+0xc0>
    68d0:	8fbf002c 	lw	ra,44(sp)
    68d4:	90f80012 	lbu	t8,18(a3)
    68d8:	33190001 	andi	t9,t8,0x1
    68dc:	53200021 	beqzl	t9,6964 <CollisionCheck_OC_CylVsCyl+0xc0>
    68e0:	8fbf002c 	lw	ra,44(sp)
    68e4:	90c8002f 	lbu	t0,47(a2)
    68e8:	31090001 	andi	t1,t0,0x1
    68ec:	5120001d 	beqzl	t1,6964 <CollisionCheck_OC_CylVsCyl+0xc0>
    68f0:	8fbf002c 	lw	ra,44(sp)
    68f4:	90ea002f 	lbu	t2,47(a3)
    68f8:	24c40040 	addiu	a0,a2,64
    68fc:	24e50040 	addiu	a1,a3,64
    6900:	314b0001 	andi	t3,t2,0x1
    6904:	51600017 	beqzl	t3,6964 <CollisionCheck_OC_CylVsCyl+0xc0>
    6908:	8fbf002c 	lw	ra,44(sp)
    690c:	0c000000 	jal	0 <func_8005B280>
    6910:	27a6004c 	addiu	a2,sp,76
    6914:	24010001 	li	at,1
    6918:	14410011 	bne	v0,at,6960 <CollisionCheck_OC_CylVsCyl+0xbc>
    691c:	27a40040 	addiu	a0,sp,64
    6920:	0c000000 	jal	0 <func_8005B280>
    6924:	26050046 	addiu	a1,s0,70
    6928:	27a40034 	addiu	a0,sp,52
    692c:	0c000000 	jal	0 <func_8005B280>
    6930:	26250046 	addiu	a1,s1,70
    6934:	c7a4004c 	lwc1	$f4,76(sp)
    6938:	262c0018 	addiu	t4,s1,24
    693c:	27ad0034 	addiu	t5,sp,52
    6940:	afad0014 	sw	t5,20(sp)
    6944:	afac0010 	sw	t4,16(sp)
    6948:	02002025 	move	a0,s0
    694c:	26050018 	addiu	a1,s0,24
    6950:	27a60040 	addiu	a2,sp,64
    6954:	02203825 	move	a3,s1
    6958:	0c000000 	jal	0 <func_8005B280>
    695c:	e7a40018 	swc1	$f4,24(sp)
    6960:	8fbf002c 	lw	ra,44(sp)
    6964:	8fb00024 	lw	s0,36(sp)
    6968:	8fb10028 	lw	s1,40(sp)
    696c:	03e00008 	jr	ra
    6970:	27bd0058 	addiu	sp,sp,88

00006974 <func_80061BF4>:
    6974:	908e0012 	lbu	t6,18(a0)
    6978:	00001025 	move	v0,zero
    697c:	31cf0001 	andi	t7,t6,0x1
    6980:	15e00003 	bnez	t7,6990 <func_80061BF4+0x1c>
    6984:	00000000 	nop
    6988:	03e00008 	jr	ra
    698c:	24020001 	li	v0,1
    6990:	03e00008 	jr	ra
    6994:	00000000 	nop

00006998 <func_80061C18>:
    6998:	90a20013 	lbu	v0,19(a1)
    699c:	908e0012 	lbu	t6,18(a0)
    69a0:	01c27824 	and	t7,t6,v0
    69a4:	31f80038 	andi	t8,t7,0x38
    69a8:	13000010 	beqz	t8,69ec <func_80061C18+0x54>
    69ac:	00000000 	nop
    69b0:	90830013 	lbu	v1,19(a0)
    69b4:	90b90012 	lbu	t9,18(a1)
    69b8:	306a0002 	andi	t2,v1,0x2
    69bc:	00794024 	and	t0,v1,t9
    69c0:	31090038 	andi	t1,t0,0x38
    69c4:	11200009 	beqz	t1,69ec <func_80061C18+0x54>
    69c8:	00000000 	nop
    69cc:	11400002 	beqz	t2,69d8 <func_80061C18+0x40>
    69d0:	304b0004 	andi	t3,v0,0x4
    69d4:	15600005 	bnez	t3,69ec <func_80061C18+0x54>
    69d8:	304c0002 	andi	t4,v0,0x2
    69dc:	11800005 	beqz	t4,69f4 <func_80061C18+0x5c>
    69e0:	306d0004 	andi	t5,v1,0x4
    69e4:	51a00004 	beqzl	t5,69f8 <func_80061C18+0x60>
    69e8:	8cae0000 	lw	t6,0(a1)
    69ec:	03e00008 	jr	ra
    69f0:	24020001 	li	v0,1
    69f4:	8cae0000 	lw	t6,0(a1)
    69f8:	8c8f0000 	lw	t7,0(a0)
    69fc:	00001025 	move	v0,zero
    6a00:	15cf0003 	bne	t6,t7,6a10 <func_80061C18+0x78>
    6a04:	00000000 	nop
    6a08:	03e00008 	jr	ra
    6a0c:	24020001 	li	v0,1
    6a10:	03e00008 	jr	ra
    6a14:	00000000 	nop

00006a18 <CollisionCheck_OC>:
    6a18:	27bdffc8 	addiu	sp,sp,-56
    6a1c:	afbf0034 	sw	ra,52(sp)
    6a20:	afb70030 	sw	s7,48(sp)
    6a24:	afb6002c 	sw	s6,44(sp)
    6a28:	afb50028 	sw	s5,40(sp)
    6a2c:	afb40024 	sw	s4,36(sp)
    6a30:	afb30020 	sw	s3,32(sp)
    6a34:	afb2001c 	sw	s2,28(sp)
    6a38:	afb10018 	sw	s1,24(sp)
    6a3c:	afb00014 	sw	s0,20(sp)
    6a40:	8cae01c0 	lw	t6,448(a1)
    6a44:	24b201c4 	addiu	s2,a1,452
    6a48:	00a08825 	move	s1,a1
    6a4c:	000e7880 	sll	t7,t6,0x2
    6a50:	00af1021 	addu	v0,a1,t7
    6a54:	244201c4 	addiu	v0,v0,452
    6a58:	0242082b 	sltu	at,s2,v0
    6a5c:	1020004f 	beqz	at,6b9c <CollisionCheck_OC+0x184>
    6a60:	0080a025 	move	s4,a0
    6a64:	3c160000 	lui	s6,0x0
    6a68:	3c150000 	lui	s5,0x0
    6a6c:	26b501ac 	addiu	s5,s5,428
    6a70:	26d606a8 	addiu	s6,s6,1704
    6a74:	24130001 	li	s3,1
    6a78:	8e460000 	lw	a2,0(s2)
    6a7c:	10c00009 	beqz	a2,6aa4 <CollisionCheck_OC+0x8c>
    6a80:	00000000 	nop
    6a84:	0c000000 	jal	0 <func_8005B280>
    6a88:	00c02025 	move	a0,a2
    6a8c:	54530008 	bnel	v0,s3,6ab0 <CollisionCheck_OC+0x98>
    6a90:	8e2901c0 	lw	t1,448(s1)
    6a94:	8e3801c0 	lw	t8,448(s1)
    6a98:	0018c880 	sll	t9,t8,0x2
    6a9c:	02391021 	addu	v0,s1,t9
    6aa0:	244201c4 	addiu	v0,v0,452
    6aa4:	1000003a 	b	6b90 <CollisionCheck_OC+0x178>
    6aa8:	26570004 	addiu	s7,s2,4
    6aac:	8e2901c0 	lw	t1,448(s1)
    6ab0:	26570004 	addiu	s7,s2,4
    6ab4:	02e08025 	move	s0,s7
    6ab8:	00095080 	sll	t2,t1,0x2
    6abc:	022a1021 	addu	v0,s1,t2
    6ac0:	244201c4 	addiu	v0,v0,452
    6ac4:	02e2082b 	sltu	at,s7,v0
    6ac8:	50200032 	beqzl	at,6b94 <CollisionCheck_OC+0x17c>
    6acc:	02e2082b 	sltu	at,s7,v0
    6ad0:	8e070000 	lw	a3,0(s0)
    6ad4:	50e0000b 	beqzl	a3,6b04 <CollisionCheck_OC+0xec>
    6ad8:	8e2b01c0 	lw	t3,448(s1)
    6adc:	0c000000 	jal	0 <func_8005B280>
    6ae0:	00e02025 	move	a0,a3
    6ae4:	50530007 	beql	v0,s3,6b04 <CollisionCheck_OC+0xec>
    6ae8:	8e2b01c0 	lw	t3,448(s1)
    6aec:	8e440000 	lw	a0,0(s2)
    6af0:	0c000000 	jal	0 <func_8005B280>
    6af4:	8e050000 	lw	a1,0(s0)
    6af8:	54530007 	bnel	v0,s3,6b18 <CollisionCheck_OC+0x100>
    6afc:	8e460000 	lw	a2,0(s2)
    6b00:	8e2b01c0 	lw	t3,448(s1)
    6b04:	000b6080 	sll	t4,t3,0x2
    6b08:	022c1021 	addu	v0,s1,t4
    6b0c:	1000001c 	b	6b80 <CollisionCheck_OC+0x168>
    6b10:	244201c4 	addiu	v0,v0,452
    6b14:	8e460000 	lw	a2,0(s2)
    6b18:	8e070000 	lw	a3,0(s0)
    6b1c:	02802025 	move	a0,s4
    6b20:	90c30015 	lbu	v1,21(a2)
    6b24:	90e80015 	lbu	t0,21(a3)
    6b28:	00036900 	sll	t5,v1,0x4
    6b2c:	02ad7021 	addu	t6,s5,t5
    6b30:	00087880 	sll	t7,t0,0x2
    6b34:	01cfc021 	addu	t8,t6,t7
    6b38:	8f020000 	lw	v0,0(t8)
    6b3c:	00602825 	move	a1,v1
    6b40:	14400009 	bnez	v0,6b68 <CollisionCheck_OC+0x150>
    6b44:	00000000 	nop
    6b48:	02c02025 	move	a0,s6
    6b4c:	0c000000 	jal	0 <func_8005B280>
    6b50:	01003025 	move	a2,t0
    6b54:	8e3901c0 	lw	t9,448(s1)
    6b58:	00194880 	sll	t1,t9,0x2
    6b5c:	02291021 	addu	v0,s1,t1
    6b60:	10000007 	b	6b80 <CollisionCheck_OC+0x168>
    6b64:	244201c4 	addiu	v0,v0,452
    6b68:	0040f809 	jalr	v0
    6b6c:	02202825 	move	a1,s1
    6b70:	8e2a01c0 	lw	t2,448(s1)
    6b74:	000a5880 	sll	t3,t2,0x2
    6b78:	022b1021 	addu	v0,s1,t3
    6b7c:	244201c4 	addiu	v0,v0,452
    6b80:	26100004 	addiu	s0,s0,4
    6b84:	0202082b 	sltu	at,s0,v0
    6b88:	5420ffd2 	bnezl	at,6ad4 <CollisionCheck_OC+0xbc>
    6b8c:	8e070000 	lw	a3,0(s0)
    6b90:	02e2082b 	sltu	at,s7,v0
    6b94:	1420ffb8 	bnez	at,6a78 <CollisionCheck_OC+0x60>
    6b98:	02e09025 	move	s2,s7
    6b9c:	8fbf0034 	lw	ra,52(sp)
    6ba0:	8fb00014 	lw	s0,20(sp)
    6ba4:	8fb10018 	lw	s1,24(sp)
    6ba8:	8fb2001c 	lw	s2,28(sp)
    6bac:	8fb30020 	lw	s3,32(sp)
    6bb0:	8fb40024 	lw	s4,36(sp)
    6bb4:	8fb50028 	lw	s5,40(sp)
    6bb8:	8fb6002c 	lw	s6,44(sp)
    6bbc:	8fb70030 	lw	s7,48(sp)
    6bc0:	03e00008 	jr	ra
    6bc4:	27bd0038 	addiu	sp,sp,56

00006bc8 <func_80061E48>:
    6bc8:	3c0e0000 	lui	t6,0x0
    6bcc:	25ce01ec 	addiu	t6,t6,492
    6bd0:	8dd80000 	lw	t8,0(t6)
    6bd4:	ac980000 	sw	t8,0(a0)
    6bd8:	8dcf0004 	lw	t7,4(t6)
    6bdc:	ac8f0004 	sw	t7,4(a0)
    6be0:	8dd80008 	lw	t8,8(t6)
    6be4:	ac980008 	sw	t8,8(a0)
    6be8:	8dcf000c 	lw	t7,12(t6)
    6bec:	ac8f000c 	sw	t7,12(a0)
    6bf0:	8dd80010 	lw	t8,16(t6)
    6bf4:	ac980010 	sw	t8,16(a0)
    6bf8:	8dcf0014 	lw	t7,20(t6)
    6bfc:	ac8f0014 	sw	t7,20(a0)
    6c00:	8dd80018 	lw	t8,24(t6)
    6c04:	03e00008 	jr	ra
    6c08:	ac980018 	sw	t8,24(a0)

00006c0c <func_80061E8C>:
    6c0c:	44800000 	mtc1	zero,$f0
    6c10:	a0800018 	sb	zero,24(a0)
    6c14:	a0800019 	sb	zero,25(a0)
    6c18:	a080001a 	sb	zero,26(a0)
    6c1c:	a080001b 	sb	zero,27(a0)
    6c20:	e480000c 	swc1	$f0,12(a0)
    6c24:	e4800008 	swc1	$f0,8(a0)
    6c28:	03e00008 	jr	ra
    6c2c:	e4800004 	swc1	$f0,4(a0)

00006c30 <func_80061EB0>:
    6c30:	90ae0000 	lbu	t6,0(a1)
    6c34:	a08e0017 	sb	t6,23(a0)
    6c38:	84af0002 	lh	t7,2(a1)
    6c3c:	a48f0010 	sh	t7,16(a0)
    6c40:	84b80004 	lh	t8,4(a1)
    6c44:	a4980012 	sh	t8,18(a0)
    6c48:	90b90006 	lbu	t9,6(a1)
    6c4c:	03e00008 	jr	ra
    6c50:	a0990016 	sb	t9,22(a0)

00006c54 <func_80061ED4>:
    6c54:	90ce0000 	lbu	t6,0(a2)
    6c58:	ac850000 	sw	a1,0(a0)
    6c5c:	a08e0017 	sb	t6,23(a0)
    6c60:	84cf0002 	lh	t7,2(a2)
    6c64:	a48f0010 	sh	t7,16(a0)
    6c68:	84d80004 	lh	t8,4(a2)
    6c6c:	a4980012 	sh	t8,18(a0)
    6c70:	90d90006 	lbu	t9,6(a2)
    6c74:	03e00008 	jr	ra
    6c78:	a0990016 	sb	t9,22(a0)

00006c7c <func_80061EFC>:
    6c7c:	90ce0000 	lbu	t6,0(a2)
    6c80:	ac850000 	sw	a1,0(a0)
    6c84:	a08e0017 	sb	t6,23(a0)
    6c88:	84cf0002 	lh	t7,2(a2)
    6c8c:	a48f0010 	sh	t7,16(a0)
    6c90:	84d80004 	lh	t8,4(a2)
    6c94:	a4980012 	sh	t8,18(a0)
    6c98:	84d90006 	lh	t9,6(a2)
    6c9c:	a4990014 	sh	t9,20(a0)
    6ca0:	90c80008 	lbu	t0,8(a2)
    6ca4:	03e00008 	jr	ra
    6ca8:	a0880016 	sb	t0,22(a0)

00006cac <func_80061F2C>:
    6cac:	27bdffe8 	addiu	sp,sp,-24
    6cb0:	afbf0014 	sw	ra,20(sp)
    6cb4:	afa40018 	sw	a0,24(sp)
    6cb8:	afa60020 	sw	a2,32(sp)
    6cbc:	0c000000 	jal	0 <func_8005B280>
    6cc0:	00a02025 	move	a0,a1
    6cc4:	8fa40018 	lw	a0,24(sp)
    6cc8:	00402825 	move	a1,v0
    6ccc:	0c000000 	jal	0 <func_8005B280>
    6cd0:	8fa60020 	lw	a2,32(sp)
    6cd4:	8fbf0014 	lw	ra,20(sp)
    6cd8:	27bd0018 	addiu	sp,sp,24
    6cdc:	03e00008 	jr	ra
    6ce0:	00000000 	nop

00006ce4 <func_80061F64>:
    6ce4:	27bdffe8 	addiu	sp,sp,-24
    6ce8:	afbf0014 	sw	ra,20(sp)
    6cec:	afa40018 	sw	a0,24(sp)
    6cf0:	afa5001c 	sw	a1,28(sp)
    6cf4:	afa60020 	sw	a2,32(sp)
    6cf8:	8cc80000 	lw	t0,0(a2)
    6cfc:	51000078 	beqzl	t0,6ee0 <func_80061F64+0x1fc>
    6d00:	8fbf0014 	lw	ra,20(sp)
    6d04:	90cf0011 	lbu	t7,17(a2)
    6d08:	31f80002 	andi	t8,t7,0x2
    6d0c:	53000074 	beqzl	t8,6ee0 <func_80061F64+0x1fc>
    6d10:	8fbf0014 	lw	ra,20(sp)
    6d14:	90e20016 	lbu	v0,22(a3)
    6d18:	30590002 	andi	t9,v0,0x2
    6d1c:	1320006f 	beqz	t9,6edc <func_80061F64+0x1f8>
    6d20:	30490010 	andi	t1,v0,0x10
    6d24:	5520006e 	bnezl	t1,6ee0 <func_80061F64+0x1fc>
    6d28:	8fbf0014 	lw	ra,20(sp)
    6d2c:	8ce40024 	lw	a0,36(a3)
    6d30:	3c050000 	lui	a1,0x0
    6d34:	24a506f0 	addiu	a1,a1,1776
    6d38:	14800009 	bnez	a0,6d60 <func_80061F64+0x7c>
    6d3c:	2406195d 	li	a2,6493
    6d40:	3c040000 	lui	a0,0x0
    6d44:	248406cc 	addiu	a0,a0,1740
    6d48:	0c000000 	jal	0 <func_8005B280>
    6d4c:	afa70024 	sw	a3,36(sp)
    6d50:	8fa70024 	lw	a3,36(sp)
    6d54:	8faa0020 	lw	t2,32(sp)
    6d58:	8ce40024 	lw	a0,36(a3)
    6d5c:	8d480000 	lw	t0,0(t2)
    6d60:	8d060098 	lw	a2,152(t0)
    6d64:	00001825 	move	v1,zero
    6d68:	24050020 	li	a1,32
    6d6c:	54c0001b 	bnezl	a2,6ddc <func_80061F64+0xf8>
    6d70:	8c820000 	lw	v0,0(a0)
    6d74:	908b0005 	lbu	t3,5(a0)
    6d78:	44801000 	mtc1	zero,$f2
    6d7c:	3c014f80 	lui	at,0x4f80
    6d80:	448b2000 	mtc1	t3,$f4
    6d84:	05610004 	bgez	t3,6d98 <func_80061F64+0xb4>
    6d88:	468021a0 	cvt.s.w	$f6,$f4
    6d8c:	44814000 	mtc1	at,$f8
    6d90:	00000000 	nop
    6d94:	46083180 	add.s	$f6,$f6,$f8
    6d98:	90ec000d 	lbu	t4,13(a3)
    6d9c:	3c014f80 	lui	at,0x4f80
    6da0:	448c5000 	mtc1	t4,$f10
    6da4:	05810004 	bgez	t4,6db8 <func_80061F64+0xd4>
    6da8:	46805420 	cvt.s.w	$f16,$f10
    6dac:	44819000 	mtc1	at,$f18
    6db0:	00000000 	nop
    6db4:	46128400 	add.s	$f16,$f16,$f18
    6db8:	46103001 	sub.s	$f0,$f6,$f16
    6dbc:	8fad0020 	lw	t5,32(sp)
    6dc0:	4602003c 	c.lt.s	$f0,$f2
    6dc4:	91a50011 	lbu	a1,17(t5)
    6dc8:	45020015 	bc1fl	6e20 <func_80061F64+0x13c>
    6dcc:	30aa0004 	andi	t2,a1,0x4
    6dd0:	10000012 	b	6e1c <func_80061F64+0x138>
    6dd4:	46001006 	mov.s	$f0,$f2
    6dd8:	8c820000 	lw	v0,0(a0)
    6ddc:	24040001 	li	a0,1
    6de0:	50440005 	beql	v0,a0,6df8 <func_80061F64+0x114>
    6de4:	00c37021 	addu	t6,a2,v1
    6de8:	24630001 	addiu	v1,v1,1
    6dec:	1465fffc 	bne	v1,a1,6de0 <func_80061F64+0xfc>
    6df0:	00021042 	srl	v0,v0,0x1
    6df4:	00c37021 	addu	t6,a2,v1
    6df8:	91c20000 	lbu	v0,0(t6)
    6dfc:	0002c103 	sra	t8,v0,0x4
    6e00:	3319000f 	andi	t9,t8,0xf
    6e04:	a11900b1 	sb	t9,177(t0)
    6e08:	304f000f 	andi	t7,v0,0xf
    6e0c:	448f2000 	mtc1	t7,$f4
    6e10:	8fa90020 	lw	t1,32(sp)
    6e14:	46802020 	cvt.s.w	$f0,$f4
    6e18:	91250011 	lbu	a1,17(t1)
    6e1c:	30aa0004 	andi	t2,a1,0x4
    6e20:	1540002e 	bnez	t2,6edc <func_80061F64+0x1f8>
    6e24:	8fab0020 	lw	t3,32(sp)
    6e28:	8d680000 	lw	t0,0(t3)
    6e2c:	3c014f80 	lui	at,0x4f80
    6e30:	910c00b0 	lbu	t4,176(t0)
    6e34:	448c4000 	mtc1	t4,$f8
    6e38:	05810004 	bgez	t4,6e4c <func_80061F64+0x168>
    6e3c:	468042a0 	cvt.s.w	$f10,$f8
    6e40:	44819000 	mtc1	at,$f18
    6e44:	00000000 	nop
    6e48:	46125280 	add.s	$f10,$f10,$f18
    6e4c:	46005180 	add.s	$f6,$f10,$f0
    6e50:	240e0001 	li	t6,1
    6e54:	3c014f00 	lui	at,0x4f00
    6e58:	444df800 	cfc1	t5,$31
    6e5c:	44cef800 	ctc1	t6,$31
    6e60:	00000000 	nop
    6e64:	46003424 	cvt.w.s	$f16,$f6
    6e68:	444ef800 	cfc1	t6,$31
    6e6c:	00000000 	nop
    6e70:	31ce0078 	andi	t6,t6,0x78
    6e74:	51c00013 	beqzl	t6,6ec4 <func_80061F64+0x1e0>
    6e78:	440e8000 	mfc1	t6,$f16
    6e7c:	44818000 	mtc1	at,$f16
    6e80:	240e0001 	li	t6,1
    6e84:	46103401 	sub.s	$f16,$f6,$f16
    6e88:	44cef800 	ctc1	t6,$31
    6e8c:	00000000 	nop
    6e90:	46008424 	cvt.w.s	$f16,$f16
    6e94:	444ef800 	cfc1	t6,$31
    6e98:	00000000 	nop
    6e9c:	31ce0078 	andi	t6,t6,0x78
    6ea0:	15c00005 	bnez	t6,6eb8 <func_80061F64+0x1d4>
    6ea4:	00000000 	nop
    6ea8:	440e8000 	mfc1	t6,$f16
    6eac:	3c018000 	lui	at,0x8000
    6eb0:	10000007 	b	6ed0 <func_80061F64+0x1ec>
    6eb4:	01c17025 	or	t6,t6,at
    6eb8:	10000005 	b	6ed0 <func_80061F64+0x1ec>
    6ebc:	240effff 	li	t6,-1
    6ec0:	440e8000 	mfc1	t6,$f16
    6ec4:	00000000 	nop
    6ec8:	05c0fffb 	bltz	t6,6eb8 <func_80061F64+0x1d4>
    6ecc:	00000000 	nop
    6ed0:	44cdf800 	ctc1	t5,$31
    6ed4:	a10e00b0 	sb	t6,176(t0)
    6ed8:	00000000 	nop
    6edc:	8fbf0014 	lw	ra,20(sp)
    6ee0:	27bd0018 	addiu	sp,sp,24
    6ee4:	03e00008 	jr	ra
    6ee8:	00000000 	nop

00006eec <func_8006216C>:
    6eec:	27bdffd0 	addiu	sp,sp,-48
    6ef0:	afbf002c 	sw	ra,44(sp)
    6ef4:	afb50028 	sw	s5,40(sp)
    6ef8:	afb40024 	sw	s4,36(sp)
    6efc:	afb30020 	sw	s3,32(sp)
    6f00:	afb2001c 	sw	s2,28(sp)
    6f04:	afb10018 	sw	s1,24(sp)
    6f08:	afb00014 	sw	s0,20(sp)
    6f0c:	8cc20018 	lw	v0,24(a2)
    6f10:	00c09025 	move	s2,a2
    6f14:	0080a025 	move	s4,a0
    6f18:	00a0a825 	move	s5,a1
    6f1c:	18400013 	blez	v0,6f6c <func_8006216C+0x80>
    6f20:	00c09825 	move	s3,a2
    6f24:	8cce001c 	lw	t6,28(a2)
    6f28:	51c00011 	beqzl	t6,6f70 <func_8006216C+0x84>
    6f2c:	8fbf002c 	lw	ra,44(sp)
    6f30:	1840000e 	blez	v0,6f6c <func_8006216C+0x80>
    6f34:	00008025 	move	s0,zero
    6f38:	00008825 	move	s1,zero
    6f3c:	8e4f001c 	lw	t7,28(s2)
    6f40:	02802025 	move	a0,s4
    6f44:	02a02825 	move	a1,s5
    6f48:	02403025 	move	a2,s2
    6f4c:	0c000000 	jal	0 <func_8005B280>
    6f50:	01f13821 	addu	a3,t7,s1
    6f54:	8e780018 	lw	t8,24(s3)
    6f58:	26100001 	addiu	s0,s0,1
    6f5c:	26310040 	addiu	s1,s1,64
    6f60:	0218082a 	slt	at,s0,t8
    6f64:	5420fff6 	bnezl	at,6f40 <func_8006216C+0x54>
    6f68:	8e4f001c 	lw	t7,28(s2)
    6f6c:	8fbf002c 	lw	ra,44(sp)
    6f70:	8fb00014 	lw	s0,20(sp)
    6f74:	8fb10018 	lw	s1,24(sp)
    6f78:	8fb2001c 	lw	s2,28(sp)
    6f7c:	8fb30020 	lw	s3,32(sp)
    6f80:	8fb40024 	lw	s4,36(sp)
    6f84:	8fb50028 	lw	s5,40(sp)
    6f88:	03e00008 	jr	ra
    6f8c:	27bd0030 	addiu	sp,sp,48

00006f90 <func_80062210>:
    6f90:	27bdffe8 	addiu	sp,sp,-24
    6f94:	afbf0014 	sw	ra,20(sp)
    6f98:	0c000000 	jal	0 <func_8005B280>
    6f9c:	24c70018 	addiu	a3,a2,24
    6fa0:	8fbf0014 	lw	ra,20(sp)
    6fa4:	27bd0018 	addiu	sp,sp,24
    6fa8:	03e00008 	jr	ra
    6fac:	00000000 	nop

00006fb0 <func_80062230>:
    6fb0:	27bdffd0 	addiu	sp,sp,-48
    6fb4:	afbf002c 	sw	ra,44(sp)
    6fb8:	afb50028 	sw	s5,40(sp)
    6fbc:	afb40024 	sw	s4,36(sp)
    6fc0:	afb30020 	sw	s3,32(sp)
    6fc4:	afb2001c 	sw	s2,28(sp)
    6fc8:	afb10018 	sw	s1,24(sp)
    6fcc:	afb00014 	sw	s0,20(sp)
    6fd0:	8cce0018 	lw	t6,24(a2)
    6fd4:	00c09025 	move	s2,a2
    6fd8:	0080a025 	move	s4,a0
    6fdc:	00a0a825 	move	s5,a1
    6fe0:	00c09825 	move	s3,a2
    6fe4:	19c0000e 	blez	t6,7020 <func_80062230+0x70>
    6fe8:	00008025 	move	s0,zero
    6fec:	00008825 	move	s1,zero
    6ff0:	8e4f001c 	lw	t7,28(s2)
    6ff4:	02802025 	move	a0,s4
    6ff8:	02a02825 	move	a1,s5
    6ffc:	02403025 	move	a2,s2
    7000:	0c000000 	jal	0 <func_8005B280>
    7004:	01f13821 	addu	a3,t7,s1
    7008:	8e780018 	lw	t8,24(s3)
    700c:	26100001 	addiu	s0,s0,1
    7010:	2631005c 	addiu	s1,s1,92
    7014:	0218082a 	slt	at,s0,t8
    7018:	5420fff6 	bnezl	at,6ff4 <func_80062230+0x44>
    701c:	8e4f001c 	lw	t7,28(s2)
    7020:	8fbf002c 	lw	ra,44(sp)
    7024:	8fb00014 	lw	s0,20(sp)
    7028:	8fb10018 	lw	s1,24(sp)
    702c:	8fb2001c 	lw	s2,28(sp)
    7030:	8fb30020 	lw	s3,32(sp)
    7034:	8fb40024 	lw	s4,36(sp)
    7038:	8fb50028 	lw	s5,40(sp)
    703c:	03e00008 	jr	ra
    7040:	27bd0030 	addiu	sp,sp,48

00007044 <func_800622C4>:
    7044:	27bdffe8 	addiu	sp,sp,-24
    7048:	afbf0014 	sw	ra,20(sp)
    704c:	0c000000 	jal	0 <func_8005B280>
    7050:	24c70018 	addiu	a3,a2,24
    7054:	8fbf0014 	lw	ra,20(sp)
    7058:	27bd0018 	addiu	sp,sp,24
    705c:	03e00008 	jr	ra
    7060:	00000000 	nop

00007064 <func_800622E4>:
    7064:	27bdffd8 	addiu	sp,sp,-40
    7068:	afbf0024 	sw	ra,36(sp)
    706c:	afb30020 	sw	s3,32(sp)
    7070:	afb2001c 	sw	s2,28(sp)
    7074:	afb10018 	sw	s1,24(sp)
    7078:	afb00014 	sw	s0,20(sp)
    707c:	8ca300cc 	lw	v1,204(a1)
    7080:	00a08025 	move	s0,a1
    7084:	00809025 	move	s2,a0
    7088:	1860001f 	blez	v1,7108 <func_800622E4+0xa4>
    708c:	00a08825 	move	s1,a1
    7090:	3c130000 	lui	s3,0x0
    7094:	26730208 	addiu	s3,s3,520
    7098:	8e2600d0 	lw	a2,208(s1)
    709c:	00037080 	sll	t6,v1,0x2
    70a0:	54c00004 	bnezl	a2,70b4 <func_800622E4+0x50>
    70a4:	90cf0011 	lbu	t7,17(a2)
    70a8:	10000013 	b	70f8 <func_800622E4+0x94>
    70ac:	01d01021 	addu	v0,t6,s0
    70b0:	90cf0011 	lbu	t7,17(a2)
    70b4:	0003c880 	sll	t9,v1,0x2
    70b8:	31f80040 	andi	t8,t7,0x40
    70bc:	53000004 	beqzl	t8,70d0 <func_800622E4+0x6c>
    70c0:	90c80015 	lbu	t0,21(a2)
    70c4:	1000000c 	b	70f8 <func_800622E4+0x94>
    70c8:	03301021 	addu	v0,t9,s0
    70cc:	90c80015 	lbu	t0,21(a2)
    70d0:	02402025 	move	a0,s2
    70d4:	02002825 	move	a1,s0
    70d8:	00084880 	sll	t1,t0,0x2
    70dc:	02695021 	addu	t2,s3,t1
    70e0:	8d590000 	lw	t9,0(t2)
    70e4:	0320f809 	jalr	t9
    70e8:	00000000 	nop
    70ec:	8e0300cc 	lw	v1,204(s0)
    70f0:	00035880 	sll	t3,v1,0x2
    70f4:	01701021 	addu	v0,t3,s0
    70f8:	26310004 	addiu	s1,s1,4
    70fc:	0222082b 	sltu	at,s1,v0
    7100:	5420ffe6 	bnezl	at,709c <func_800622E4+0x38>
    7104:	8e2600d0 	lw	a2,208(s1)
    7108:	8fbf0024 	lw	ra,36(sp)
    710c:	8fb00014 	lw	s0,20(sp)
    7110:	8fb10018 	lw	s1,24(sp)
    7114:	8fb2001c 	lw	s2,28(sp)
    7118:	8fb30020 	lw	s3,32(sp)
    711c:	03e00008 	jr	ra
    7120:	27bd0028 	addiu	sp,sp,40

00007124 <CollisionCheck_generalLineOcCheck_JntSph>:
    7124:	27bdffc8 	addiu	sp,sp,-56
    7128:	afbf0034 	sw	ra,52(sp)
    712c:	afb70030 	sw	s7,48(sp)
    7130:	afb6002c 	sw	s6,44(sp)
    7134:	afb50028 	sw	s5,40(sp)
    7138:	afb40024 	sw	s4,36(sp)
    713c:	afb30020 	sw	s3,32(sp)
    7140:	afb2001c 	sw	s2,28(sp)
    7144:	afb10018 	sw	s1,24(sp)
    7148:	afb00014 	sw	s0,20(sp)
    714c:	afa40038 	sw	a0,56(sp)
    7150:	afa5003c 	sw	a1,60(sp)
    7154:	8cce0018 	lw	t6,24(a2)
    7158:	00c09825 	move	s3,a2
    715c:	00e0a025 	move	s4,a3
    7160:	19c0002a 	blez	t6,720c <CollisionCheck_generalLineOcCheck_JntSph+0xe8>
    7164:	00c08825 	move	s1,a2
    7168:	3c160000 	lui	s6,0x0
    716c:	3c120000 	lui	s2,0x0
    7170:	26521710 	addiu	s2,s2,5904
    7174:	26d6171c 	addiu	s6,s6,5916
    7178:	00008025 	move	s0,zero
    717c:	24170001 	li	s7,1
    7180:	8fb50048 	lw	s5,72(sp)
    7184:	8e6f001c 	lw	t7,28(s3)
    7188:	01f01021 	addu	v0,t7,s0
    718c:	90580017 	lbu	t8,23(v0)
    7190:	33190001 	andi	t9,t8,0x1
    7194:	57200005 	bnezl	t9,71ac <CollisionCheck_generalLineOcCheck_JntSph+0x88>
    7198:	8e890000 	lw	t1,0(s4)
    719c:	8e220018 	lw	v0,24(s1)
    71a0:	10000016 	b	71fc <CollisionCheck_generalLineOcCheck_JntSph+0xd8>
    71a4:	00021980 	sll	v1,v0,0x6
    71a8:	8e890000 	lw	t1,0(s4)
    71ac:	24440030 	addiu	a0,v0,48
    71b0:	02402825 	move	a1,s2
    71b4:	ae490000 	sw	t1,0(s2)
    71b8:	8e880004 	lw	t0,4(s4)
    71bc:	ae480004 	sw	t0,4(s2)
    71c0:	8e890008 	lw	t1,8(s4)
    71c4:	ae490008 	sw	t1,8(s2)
    71c8:	8eab0000 	lw	t3,0(s5)
    71cc:	aecb0000 	sw	t3,0(s6)
    71d0:	8eaa0004 	lw	t2,4(s5)
    71d4:	aeca0004 	sw	t2,4(s6)
    71d8:	8eab0008 	lw	t3,8(s5)
    71dc:	0c000000 	jal	0 <func_8005B280>
    71e0:	aecb0008 	sw	t3,8(s6)
    71e4:	54570004 	bnel	v0,s7,71f8 <CollisionCheck_generalLineOcCheck_JntSph+0xd4>
    71e8:	8e220018 	lw	v0,24(s1)
    71ec:	10000008 	b	7210 <CollisionCheck_generalLineOcCheck_JntSph+0xec>
    71f0:	24020001 	li	v0,1
    71f4:	8e220018 	lw	v0,24(s1)
    71f8:	00021980 	sll	v1,v0,0x6
    71fc:	26100040 	addiu	s0,s0,64
    7200:	0203082a 	slt	at,s0,v1
    7204:	5420ffe0 	bnezl	at,7188 <CollisionCheck_generalLineOcCheck_JntSph+0x64>
    7208:	8e6f001c 	lw	t7,28(s3)
    720c:	00001025 	move	v0,zero
    7210:	8fbf0034 	lw	ra,52(sp)
    7214:	8fb00014 	lw	s0,20(sp)
    7218:	8fb10018 	lw	s1,24(sp)
    721c:	8fb2001c 	lw	s2,28(sp)
    7220:	8fb30020 	lw	s3,32(sp)
    7224:	8fb40024 	lw	s4,36(sp)
    7228:	8fb50028 	lw	s5,40(sp)
    722c:	8fb6002c 	lw	s6,44(sp)
    7230:	8fb70030 	lw	s7,48(sp)
    7234:	03e00008 	jr	ra
    7238:	27bd0038 	addiu	sp,sp,56

0000723c <CollisionCheck_generalLineOcCheck_Cyl>:
    723c:	27bdffe0 	addiu	sp,sp,-32
    7240:	afbf001c 	sw	ra,28(sp)
    7244:	afa40020 	sw	a0,32(sp)
    7248:	afa50024 	sw	a1,36(sp)
    724c:	afa60028 	sw	a2,40(sp)
    7250:	90cf002f 	lbu	t7,47(a2)
    7254:	8fa40028 	lw	a0,40(sp)
    7258:	00e02825 	move	a1,a3
    725c:	31f80001 	andi	t8,t7,0x1
    7260:	17000003 	bnez	t8,7270 <CollisionCheck_generalLineOcCheck_Cyl+0x34>
    7264:	24840040 	addiu	a0,a0,64
    7268:	1000000d 	b	72a0 <CollisionCheck_generalLineOcCheck_Cyl+0x64>
    726c:	00001025 	move	v0,zero
    7270:	3c190000 	lui	t9,0x0
    7274:	27391738 	addiu	t9,t9,5944
    7278:	3c070000 	lui	a3,0x0
    727c:	24e71728 	addiu	a3,a3,5928
    7280:	afb90010 	sw	t9,16(sp)
    7284:	0c000000 	jal	0 <func_8005B280>
    7288:	8fa60030 	lw	a2,48(sp)
    728c:	50400004 	beqzl	v0,72a0 <CollisionCheck_generalLineOcCheck_Cyl+0x64>
    7290:	00001025 	move	v0,zero
    7294:	10000002 	b	72a0 <CollisionCheck_generalLineOcCheck_Cyl+0x64>
    7298:	24020001 	li	v0,1
    729c:	00001025 	move	v0,zero
    72a0:	8fbf001c 	lw	ra,28(sp)
    72a4:	27bd0020 	addiu	sp,sp,32
    72a8:	03e00008 	jr	ra
    72ac:	00000000 	nop

000072b0 <CollisionCheck_GeneralLineOcCheck>:
    72b0:	27bdffb8 	addiu	sp,sp,-72
    72b4:	afbf0044 	sw	ra,68(sp)
    72b8:	afbe0040 	sw	s8,64(sp)
    72bc:	afb7003c 	sw	s7,60(sp)
    72c0:	afb60038 	sw	s6,56(sp)
    72c4:	afb50034 	sw	s5,52(sp)
    72c8:	afb40030 	sw	s4,48(sp)
    72cc:	afb3002c 	sw	s3,44(sp)
    72d0:	afb20028 	sw	s2,40(sp)
    72d4:	afb10024 	sw	s1,36(sp)
    72d8:	afb00020 	sw	s0,32(sp)
    72dc:	8cae01c0 	lw	t6,448(a1)
    72e0:	24b101c4 	addiu	s1,a1,452
    72e4:	00a09025 	move	s2,a1
    72e8:	000e7880 	sll	t7,t6,0x2
    72ec:	00afc021 	addu	t8,a1,t7
    72f0:	271901c4 	addiu	t9,t8,452
    72f4:	0239082b 	sltu	at,s1,t9
    72f8:	0080b025 	move	s6,a0
    72fc:	00c0b825 	move	s7,a2
    7300:	00e0f025 	move	s8,a3
    7304:	10200034 	beqz	at,73d8 <CollisionCheck_GeneralLineOcCheck+0x128>
    7308:	0000a025 	move	s4,zero
    730c:	8fb50058 	lw	s5,88(sp)
    7310:	24130001 	li	s3,1
    7314:	8fb0005c 	lw	s0,92(sp)
    7318:	0c000000 	jal	0 <func_8005B280>
    731c:	8e240000 	lw	a0,0(s1)
    7320:	10530025 	beq	v0,s3,73b8 <CollisionCheck_GeneralLineOcCheck+0x108>
    7324:	00002825 	move	a1,zero
    7328:	1a00000c 	blez	s0,735c <CollisionCheck_GeneralLineOcCheck+0xac>
    732c:	00001025 	move	v0,zero
    7330:	8e280000 	lw	t0,0(s1)
    7334:	02a01825 	move	v1,s5
    7338:	8d040000 	lw	a0,0(t0)
    733c:	8c690000 	lw	t1,0(v1)
    7340:	24420001 	addiu	v0,v0,1
    7344:	14890003 	bne	a0,t1,7354 <CollisionCheck_GeneralLineOcCheck+0xa4>
    7348:	00000000 	nop
    734c:	10000003 	b	735c <CollisionCheck_GeneralLineOcCheck+0xac>
    7350:	02602825 	move	a1,s3
    7354:	1450fff9 	bne	v0,s0,733c <CollisionCheck_GeneralLineOcCheck+0x8c>
    7358:	24630004 	addiu	v1,v1,4
    735c:	50b30017 	beql	a1,s3,73bc <CollisionCheck_GeneralLineOcCheck+0x10c>
    7360:	8e4b01c0 	lw	t3,448(s2)
    7364:	8e260000 	lw	a2,0(s1)
    7368:	3c020000 	lui	v0,0x0
    736c:	02c02025 	move	a0,s6
    7370:	90c30015 	lbu	v1,21(a2)
    7374:	02402825 	move	a1,s2
    7378:	02e03825 	move	a3,s7
    737c:	00035080 	sll	t2,v1,0x2
    7380:	004a1021 	addu	v0,v0,t2
    7384:	8c420218 	lw	v0,536(v0)
    7388:	14400007 	bnez	v0,73a8 <CollisionCheck_GeneralLineOcCheck+0xf8>
    738c:	00000000 	nop
    7390:	3c040000 	lui	a0,0x0
    7394:	24840708 	addiu	a0,a0,1800
    7398:	0c000000 	jal	0 <func_8005B280>
    739c:	00602825 	move	a1,v1
    73a0:	10000006 	b	73bc <CollisionCheck_GeneralLineOcCheck+0x10c>
    73a4:	8e4b01c0 	lw	t3,448(s2)
    73a8:	0040f809 	jalr	v0
    73ac:	afbe0010 	sw	s8,16(sp)
    73b0:	14400009 	bnez	v0,73d8 <CollisionCheck_GeneralLineOcCheck+0x128>
    73b4:	0040a025 	move	s4,v0
    73b8:	8e4b01c0 	lw	t3,448(s2)
    73bc:	26310004 	addiu	s1,s1,4
    73c0:	000b6080 	sll	t4,t3,0x2
    73c4:	024c6821 	addu	t5,s2,t4
    73c8:	25ae01c4 	addiu	t6,t5,452
    73cc:	022e082b 	sltu	at,s1,t6
    73d0:	1420ffd1 	bnez	at,7318 <CollisionCheck_GeneralLineOcCheck+0x68>
    73d4:	00000000 	nop
    73d8:	8fbf0044 	lw	ra,68(sp)
    73dc:	02801025 	move	v0,s4
    73e0:	8fb40030 	lw	s4,48(sp)
    73e4:	8fb00020 	lw	s0,32(sp)
    73e8:	8fb10024 	lw	s1,36(sp)
    73ec:	8fb20028 	lw	s2,40(sp)
    73f0:	8fb3002c 	lw	s3,44(sp)
    73f4:	8fb50034 	lw	s5,52(sp)
    73f8:	8fb60038 	lw	s6,56(sp)
    73fc:	8fb7003c 	lw	s7,60(sp)
    7400:	8fbe0040 	lw	s8,64(sp)
    7404:	03e00008 	jr	ra
    7408:	27bd0048 	addiu	sp,sp,72

0000740c <func_8006268C>:
    740c:	27bdffe0 	addiu	sp,sp,-32
    7410:	afbf001c 	sw	ra,28(sp)
    7414:	afa00010 	sw	zero,16(sp)
    7418:	0c000000 	jal	0 <func_8005B280>
    741c:	afa00014 	sw	zero,20(sp)
    7420:	8fbf001c 	lw	ra,28(sp)
    7424:	27bd0020 	addiu	sp,sp,32
    7428:	03e00008 	jr	ra
    742c:	00000000 	nop

00007430 <func_800626B0>:
    7430:	27bdffe0 	addiu	sp,sp,-32
    7434:	8fae0030 	lw	t6,48(sp)
    7438:	8faf0034 	lw	t7,52(sp)
    743c:	afbf001c 	sw	ra,28(sp)
    7440:	afae0010 	sw	t6,16(sp)
    7444:	0c000000 	jal	0 <func_8005B280>
    7448:	afaf0014 	sw	t7,20(sp)
    744c:	8fbf001c 	lw	ra,28(sp)
    7450:	27bd0020 	addiu	sp,sp,32
    7454:	03e00008 	jr	ra
    7458:	00000000 	nop

0000745c <Collider_CylinderUpdate>:
    745c:	c4840024 	lwc1	$f4,36(a0)
    7460:	4600218d 	trunc.w.s	$f6,$f4
    7464:	440f3000 	mfc1	t7,$f6
    7468:	00000000 	nop
    746c:	a4af0046 	sh	t7,70(a1)
    7470:	c4880028 	lwc1	$f8,40(a0)
    7474:	4600428d 	trunc.w.s	$f10,$f8
    7478:	44195000 	mfc1	t9,$f10
    747c:	00000000 	nop
    7480:	a4b90048 	sh	t9,72(a1)
    7484:	c490002c 	lwc1	$f16,44(a0)
    7488:	4600848d 	trunc.w.s	$f18,$f16
    748c:	44099000 	mfc1	t1,$f18
    7490:	03e00008 	jr	ra
    7494:	a4a9004a 	sh	t1,74(a1)

00007498 <func_80062718>:
    7498:	84ae0000 	lh	t6,0(a1)
    749c:	a48e0046 	sh	t6,70(a0)
    74a0:	84af0002 	lh	t7,2(a1)
    74a4:	a48f0048 	sh	t7,72(a0)
    74a8:	84b80004 	lh	t8,4(a1)
    74ac:	03e00008 	jr	ra
    74b0:	a498004a 	sh	t8,74(a0)

000074b4 <func_80062734>:
    74b4:	27bdffe0 	addiu	sp,sp,-32
    74b8:	afbf0014 	sw	ra,20(sp)
    74bc:	afa40020 	sw	a0,32(sp)
    74c0:	afa50024 	sw	a1,36(sp)
    74c4:	afa60028 	sw	a2,40(sp)
    74c8:	00e02825 	move	a1,a3
    74cc:	0c000000 	jal	0 <func_8005B280>
    74d0:	24840058 	addiu	a0,a0,88
    74d4:	8fa40020 	lw	a0,32(sp)
    74d8:	8fa50030 	lw	a1,48(sp)
    74dc:	0c000000 	jal	0 <func_8005B280>
    74e0:	24840064 	addiu	a0,a0,100
    74e4:	8fa40020 	lw	a0,32(sp)
    74e8:	8fa50024 	lw	a1,36(sp)
    74ec:	24840040 	addiu	a0,a0,64
    74f0:	0c000000 	jal	0 <func_8005B280>
    74f4:	afa4001c 	sw	a0,28(sp)
    74f8:	8fa40020 	lw	a0,32(sp)
    74fc:	8fa50028 	lw	a1,40(sp)
    7500:	0c000000 	jal	0 <func_8005B280>
    7504:	2484004c 	addiu	a0,a0,76
    7508:	0c000000 	jal	0 <func_8005B280>
    750c:	8fa4001c 	lw	a0,28(sp)
    7510:	8fbf0014 	lw	ra,20(sp)
    7514:	27bd0020 	addiu	sp,sp,32
    7518:	03e00008 	jr	ra
    751c:	00000000 	nop

00007520 <func_800627A0>:
    7520:	27bdffb8 	addiu	sp,sp,-72
    7524:	0005c880 	sll	t9,a1,0x2
    7528:	afbf002c 	sw	ra,44(sp)
    752c:	afb00028 	sw	s0,40(sp)
    7530:	afa40048 	sw	a0,72(sp)
    7534:	afa5004c 	sw	a1,76(sp)
    7538:	afa60050 	sw	a2,80(sp)
    753c:	afa70054 	sw	a3,84(sp)
    7540:	0325c823 	subu	t9,t9,a1
    7544:	8c8f001c 	lw	t7,28(a0)
    7548:	0019c8c0 	sll	t9,t9,0x3
    754c:	0325c823 	subu	t9,t9,a1
    7550:	0019c880 	sll	t9,t9,0x2
    7554:	01f98021 	addu	s0,t7,t9
    7558:	26040028 	addiu	a0,s0,40
    755c:	0c000000 	jal	0 <func_8005B280>
    7560:	00c02825 	move	a1,a2
    7564:	26040034 	addiu	a0,s0,52
    7568:	0c000000 	jal	0 <func_8005B280>
    756c:	8fa50054 	lw	a1,84(sp)
    7570:	26040040 	addiu	a0,s0,64
    7574:	0c000000 	jal	0 <func_8005B280>
    7578:	8fa50058 	lw	a1,88(sp)
    757c:	27a8003c 	addiu	t0,sp,60
    7580:	27a90038 	addiu	t1,sp,56
    7584:	27aa0034 	addiu	t2,sp,52
    7588:	afaa0018 	sw	t2,24(sp)
    758c:	afa90014 	sw	t1,20(sp)
    7590:	afa80010 	sw	t0,16(sp)
    7594:	8fa40050 	lw	a0,80(sp)
    7598:	8fa50054 	lw	a1,84(sp)
    759c:	8fa60058 	lw	a2,88(sp)
    75a0:	0c000000 	jal	0 <func_8005B280>
    75a4:	27a70040 	addiu	a3,sp,64
    75a8:	c7a40040 	lwc1	$f4,64(sp)
    75ac:	e604004c 	swc1	$f4,76(s0)
    75b0:	c7a6003c 	lwc1	$f6,60(sp)
    75b4:	e6060050 	swc1	$f6,80(s0)
    75b8:	c7a80038 	lwc1	$f8,56(sp)
    75bc:	e6080054 	swc1	$f8,84(s0)
    75c0:	c7aa0034 	lwc1	$f10,52(sp)
    75c4:	e60a0058 	swc1	$f10,88(s0)
    75c8:	8fbf002c 	lw	ra,44(sp)
    75cc:	8fb00028 	lw	s0,40(sp)
    75d0:	27bd0048 	addiu	sp,sp,72
    75d4:	03e00008 	jr	ra
    75d8:	00000000 	nop

000075dc <func_8006285C>:
    75dc:	27bdffe8 	addiu	sp,sp,-24
    75e0:	0006c880 	sll	t9,a2,0x2
    75e4:	afbf0014 	sw	ra,20(sp)
    75e8:	afa5001c 	sw	a1,28(sp)
    75ec:	afa60020 	sw	a2,32(sp)
    75f0:	0326c823 	subu	t9,t9,a2
    75f4:	8caf001c 	lw	t7,28(a1)
    75f8:	0019c8c0 	sll	t9,t9,0x3
    75fc:	0326c823 	subu	t9,t9,a2
    7600:	0019c880 	sll	t9,t9,0x2
    7604:	01f91021 	addu	v0,t7,t9
    7608:	24450028 	addiu	a1,v0,40
    760c:	0c000000 	jal	0 <func_8005B280>
    7610:	00e03025 	move	a2,a3
    7614:	8fbf0014 	lw	ra,20(sp)
    7618:	27bd0018 	addiu	sp,sp,24
    761c:	03e00008 	jr	ra
    7620:	00000000 	nop

00007624 <func_800628A4>:
    7624:	27bdffc8 	addiu	sp,sp,-56
    7628:	afbf0034 	sw	ra,52(sp)
    762c:	afb60030 	sw	s6,48(sp)
    7630:	afb5002c 	sw	s5,44(sp)
    7634:	afb40028 	sw	s4,40(sp)
    7638:	afb30024 	sw	s3,36(sp)
    763c:	afb20020 	sw	s2,32(sp)
    7640:	afb1001c 	sw	s1,28(sp)
    7644:	afb00018 	sw	s0,24(sp)
    7648:	8ca20018 	lw	v0,24(a1)
    764c:	00a09025 	move	s2,a1
    7650:	0080b025 	move	s6,a0
    7654:	1840004a 	blez	v0,7780 <func_800628A4+0x15c>
    7658:	00009825 	move	s3,zero
    765c:	3c150000 	lui	s5,0x0
    7660:	3c140000 	lui	s4,0x0
    7664:	26941748 	addiu	s4,s4,5960
    7668:	26b50000 	addiu	s5,s5,0
    766c:	00008025 	move	s0,zero
    7670:	8e4e001c 	lw	t6,28(s2)
    7674:	01d08821 	addu	s1,t6,s0
    7678:	922f003c 	lbu	t7,60(s1)
    767c:	56cf003d 	bnel	s6,t7,7774 <func_800628A4+0x150>
    7680:	26730001 	addiu	s3,s3,1
    7684:	86380028 	lh	t8,40(s1)
    7688:	3c010000 	lui	at,0x0
    768c:	02802025 	move	a0,s4
    7690:	44982000 	mtc1	t8,$f4
    7694:	02a02825 	move	a1,s5
    7698:	468021a0 	cvt.s.w	$f6,$f4
    769c:	e4261748 	swc1	$f6,5960(at)
    76a0:	8e59001c 	lw	t9,28(s2)
    76a4:	03304021 	addu	t0,t9,s0
    76a8:	8509002a 	lh	t1,42(t0)
    76ac:	44894000 	mtc1	t1,$f8
    76b0:	00000000 	nop
    76b4:	468042a0 	cvt.s.w	$f10,$f8
    76b8:	e42a174c 	swc1	$f10,5964(at)
    76bc:	8e4a001c 	lw	t2,28(s2)
    76c0:	3c010000 	lui	at,0x0
    76c4:	01505821 	addu	t3,t2,s0
    76c8:	856c002c 	lh	t4,44(t3)
    76cc:	448c8000 	mtc1	t4,$f16
    76d0:	00000000 	nop
    76d4:	468084a0 	cvt.s.w	$f18,$f16
    76d8:	0c000000 	jal	0 <func_8005B280>
    76dc:	e4321750 	swc1	$f18,5968(at)
    76e0:	3c010000 	lui	at,0x0
    76e4:	c4240000 	lwc1	$f4,0(at)
    76e8:	8e4f001c 	lw	t7,28(s2)
    76ec:	4600218d 	trunc.w.s	$f6,$f4
    76f0:	01f0c021 	addu	t8,t7,s0
    76f4:	440e3000 	mfc1	t6,$f6
    76f8:	00000000 	nop
    76fc:	a70e0030 	sh	t6,48(t8)
    7700:	c4280004 	lwc1	$f8,4(at)
    7704:	8e49001c 	lw	t1,28(s2)
    7708:	3c010000 	lui	at,0x0
    770c:	4600428d 	trunc.w.s	$f10,$f8
    7710:	01305021 	addu	t2,t1,s0
    7714:	44085000 	mfc1	t0,$f10
    7718:	00000000 	nop
    771c:	a5480032 	sh	t0,50(t2)
    7720:	c4300008 	lwc1	$f16,8(at)
    7724:	8e4d001c 	lw	t5,28(s2)
    7728:	4600848d 	trunc.w.s	$f18,$f16
    772c:	01b07821 	addu	t7,t5,s0
    7730:	440c9000 	mfc1	t4,$f18
    7734:	00000000 	nop
    7738:	a5ec0034 	sh	t4,52(t7)
    773c:	8e4e001c 	lw	t6,28(s2)
    7740:	01d08821 	addu	s1,t6,s0
    7744:	8638002e 	lh	t8,46(s1)
    7748:	c6240038 	lwc1	$f4,56(s1)
    774c:	44983000 	mtc1	t8,$f6
    7750:	00000000 	nop
    7754:	46803220 	cvt.s.w	$f8,$f6
    7758:	46082282 	mul.s	$f10,$f4,$f8
    775c:	4600540d 	trunc.w.s	$f16,$f10
    7760:	44098000 	mfc1	t1,$f16
    7764:	00000000 	nop
    7768:	a6290036 	sh	t1,54(s1)
    776c:	8e420018 	lw	v0,24(s2)
    7770:	26730001 	addiu	s3,s3,1
    7774:	0262082a 	slt	at,s3,v0
    7778:	1420ffbd 	bnez	at,7670 <func_800628A4+0x4c>
    777c:	26100040 	addiu	s0,s0,64
    7780:	8fbf0034 	lw	ra,52(sp)
    7784:	8fb00018 	lw	s0,24(sp)
    7788:	8fb1001c 	lw	s1,28(sp)
    778c:	8fb20020 	lw	s2,32(sp)
    7790:	8fb30024 	lw	s3,36(sp)
    7794:	8fb40028 	lw	s4,40(sp)
    7798:	8fb5002c 	lw	s5,44(sp)
    779c:	8fb60030 	lw	s6,48(sp)
    77a0:	03e00008 	jr	ra
    77a4:	27bd0038 	addiu	sp,sp,56

000077a8 <func_80062A28>:
    77a8:	27bdffd8 	addiu	sp,sp,-40
    77ac:	afbf001c 	sw	ra,28(sp)
    77b0:	afa5002c 	sw	a1,44(sp)
    77b4:	c4a40000 	lwc1	$f4,0(a1)
    77b8:	3c010000 	lui	at,0x0
    77bc:	240f0005 	li	t7,5
    77c0:	4600218d 	trunc.w.s	$f6,$f4
    77c4:	3c020000 	lui	v0,0x0
    77c8:	24420010 	addiu	v0,v0,16
    77cc:	24030080 	li	v1,128
    77d0:	44183000 	mfc1	t8,$f6
    77d4:	24080040 	li	t0,64
    77d8:	240900ff 	li	t1,255
    77dc:	a4380010 	sh	t8,16(at)
    77e0:	c4a80004 	lwc1	$f8,4(a1)
    77e4:	24180005 	li	t8,5
    77e8:	240a0020 	li	t2,32
    77ec:	4600428d 	trunc.w.s	$f10,$f8
    77f0:	24190010 	li	t9,16
    77f4:	00003025 	move	a2,zero
    77f8:	00003825 	move	a3,zero
    77fc:	440b5000 	mfc1	t3,$f10
    7800:	00000000 	nop
    7804:	a42b0012 	sh	t3,18(at)
    7808:	c4b00008 	lwc1	$f16,8(a1)
    780c:	240b0001 	li	t3,1
    7810:	afab0010 	sw	t3,16(sp)
    7814:	4600848d 	trunc.w.s	$f18,$f16
    7818:	afa20014 	sw	v0,20(sp)
    781c:	27a50024 	addiu	a1,sp,36
    7820:	440d9000 	mfc1	t5,$f18
    7824:	00000000 	nop
    7828:	a42d0014 	sh	t5,20(at)
    782c:	3c010000 	lui	at,0x0
    7830:	ac2f04a4 	sw	t7,1188(at)
    7834:	3c010000 	lui	at,0x0
    7838:	ac3804a8 	sw	t8,1192(at)
    783c:	a043049c 	sb	v1,1180(v0)
    7840:	a040049d 	sb	zero,1181(v0)
    7844:	a048049e 	sb	t0,1182(v0)
    7848:	a049049f 	sb	t1,1183(v0)
    784c:	a04304a0 	sb	v1,1184(v0)
    7850:	a04004a1 	sb	zero,1185(v0)
    7854:	a04804a2 	sb	t0,1186(v0)
    7858:	a04904a3 	sb	t1,1187(v0)
    785c:	a04904a4 	sb	t1,1188(v0)
    7860:	a04304a5 	sb	v1,1189(v0)
    7864:	a04004a6 	sb	zero,1190(v0)
    7868:	a04904a7 	sb	t1,1191(v0)
    786c:	a04904a8 	sb	t1,1192(v0)
    7870:	a04304a9 	sb	v1,1193(v0)
    7874:	a04004aa 	sb	zero,1194(v0)
    7878:	a04904ab 	sb	t1,1195(v0)
    787c:	a04804ac 	sb	t0,1196(v0)
    7880:	a04004ad 	sb	zero,1197(v0)
    7884:	a04a04ae 	sb	t2,1198(v0)
    7888:	a04004af 	sb	zero,1199(v0)
    788c:	a04804b0 	sb	t0,1200(v0)
    7890:	a04004b1 	sb	zero,1201(v0)
    7894:	a04a04b2 	sb	t2,1202(v0)
    7898:	a04004b3 	sb	zero,1203(v0)
    789c:	a04304b4 	sb	v1,1204(v0)
    78a0:	a04004b5 	sb	zero,1205(v0)
    78a4:	a04804b6 	sb	t0,1206(v0)
    78a8:	a04004b7 	sb	zero,1207(v0)
    78ac:	a04304b8 	sb	v1,1208(v0)
    78b0:	a04004b9 	sb	zero,1209(v0)
    78b4:	a04804ba 	sb	t0,1210(v0)
    78b8:	a04004bb 	sb	zero,1211(v0)
    78bc:	3c010000 	lui	at,0x0
    78c0:	ac2004cc 	sw	zero,1228(at)
    78c4:	3c010000 	lui	at,0x0
    78c8:	ac3904d0 	sw	t9,1232(at)
    78cc:	3c014100 	lui	at,0x4100
    78d0:	44812000 	mtc1	at,$f4
    78d4:	3c010000 	lui	at,0x0
    78d8:	e424049c 	swc1	$f4,1180(at)
    78dc:	3c01bf80 	lui	at,0xbf80
    78e0:	44813000 	mtc1	at,$f6
    78e4:	3c010000 	lui	at,0x0
    78e8:	0c000000 	jal	0 <func_8005B280>
    78ec:	e42604a0 	swc1	$f6,1184(at)
    78f0:	8fbf001c 	lw	ra,28(sp)
    78f4:	27bd0028 	addiu	sp,sp,40
    78f8:	03e00008 	jr	ra
    78fc:	00000000 	nop

00007900 <func_80062B80>:
    7900:	27bdffd8 	addiu	sp,sp,-40
    7904:	afbf001c 	sw	ra,28(sp)
    7908:	afa5002c 	sw	a1,44(sp)
    790c:	c4a40000 	lwc1	$f4,0(a1)
    7910:	3c010000 	lui	at,0x0
    7914:	240d0005 	li	t5,5
    7918:	4600218d 	trunc.w.s	$f6,$f4
    791c:	240f0005 	li	t7,5
    7920:	3c020000 	lui	v0,0x0
    7924:	244204d8 	addiu	v0,v0,1240
    7928:	44183000 	mfc1	t8,$f6
    792c:	24030064 	li	v1,100
    7930:	24080032 	li	t0,50
    7934:	a43804d8 	sh	t8,1240(at)
    7938:	c4a80004 	lwc1	$f8,4(a1)
    793c:	240900ff 	li	t1,255
    7940:	24180010 	li	t8,16
    7944:	4600428d 	trunc.w.s	$f10,$f8
    7948:	24190001 	li	t9,1
    794c:	00003025 	move	a2,zero
    7950:	00003825 	move	a3,zero
    7954:	440a5000 	mfc1	t2,$f10
    7958:	00000000 	nop
    795c:	a42a04da 	sh	t2,1242(at)
    7960:	c4b00008 	lwc1	$f16,8(a1)
    7964:	afa20014 	sw	v0,20(sp)
    7968:	afb90010 	sw	t9,16(sp)
    796c:	4600848d 	trunc.w.s	$f18,$f16
    7970:	27a50024 	addiu	a1,sp,36
    7974:	440c9000 	mfc1	t4,$f18
    7978:	00000000 	nop
    797c:	a42c04dc 	sh	t4,1244(at)
    7980:	3c010000 	lui	at,0x0
    7984:	ac2d096c 	sw	t5,2412(at)
    7988:	3c010000 	lui	at,0x0
    798c:	ac2f0970 	sw	t7,2416(at)
    7990:	a049049c 	sb	t1,1180(v0)
    7994:	a049049d 	sb	t1,1181(v0)
    7998:	a049049e 	sb	t1,1182(v0)
    799c:	a049049f 	sb	t1,1183(v0)
    79a0:	a04304a0 	sb	v1,1184(v0)
    79a4:	a04304a1 	sb	v1,1185(v0)
    79a8:	a04304a2 	sb	v1,1186(v0)
    79ac:	a04304a3 	sb	v1,1187(v0)
    79b0:	a04304a4 	sb	v1,1188(v0)
    79b4:	a04304a5 	sb	v1,1189(v0)
    79b8:	a04304a6 	sb	v1,1190(v0)
    79bc:	a04304a7 	sb	v1,1191(v0)
    79c0:	a04304a8 	sb	v1,1192(v0)
    79c4:	a04304a9 	sb	v1,1193(v0)
    79c8:	a04304aa 	sb	v1,1194(v0)
    79cc:	a04304ab 	sb	v1,1195(v0)
    79d0:	a04804ac 	sb	t0,1196(v0)
    79d4:	a04804ad 	sb	t0,1197(v0)
    79d8:	a04804ae 	sb	t0,1198(v0)
    79dc:	a04804af 	sb	t0,1199(v0)
    79e0:	a04804b0 	sb	t0,1200(v0)
    79e4:	a04804b1 	sb	t0,1201(v0)
    79e8:	a04804b2 	sb	t0,1202(v0)
    79ec:	a04804b3 	sb	t0,1203(v0)
    79f0:	a04804b4 	sb	t0,1204(v0)
    79f4:	a04804b5 	sb	t0,1205(v0)
    79f8:	a04804b6 	sb	t0,1206(v0)
    79fc:	a04804b7 	sb	t0,1207(v0)
    7a00:	a04004b8 	sb	zero,1208(v0)
    7a04:	a04004b9 	sb	zero,1209(v0)
    7a08:	a04004ba 	sb	zero,1210(v0)
    7a0c:	a04004bb 	sb	zero,1211(v0)
    7a10:	3c010000 	lui	at,0x0
    7a14:	ac200994 	sw	zero,2452(at)
    7a18:	3c010000 	lui	at,0x0
    7a1c:	ac380998 	sw	t8,2456(at)
    7a20:	3c014100 	lui	at,0x4100
    7a24:	44812000 	mtc1	at,$f4
    7a28:	3c010000 	lui	at,0x0
    7a2c:	e4240964 	swc1	$f4,2404(at)
    7a30:	3c01bf80 	lui	at,0xbf80
    7a34:	44813000 	mtc1	at,$f6
    7a38:	3c010000 	lui	at,0x0
    7a3c:	0c000000 	jal	0 <func_8005B280>
    7a40:	e4260968 	swc1	$f6,2408(at)
    7a44:	8fbf001c 	lw	ra,28(sp)
    7a48:	27bd0028 	addiu	sp,sp,40
    7a4c:	03e00008 	jr	ra
    7a50:	00000000 	nop

00007a54 <func_80062CD4>:
    7a54:	27bdffd8 	addiu	sp,sp,-40
    7a58:	afbf001c 	sw	ra,28(sp)
    7a5c:	afa5002c 	sw	a1,44(sp)
    7a60:	c4a40000 	lwc1	$f4,0(a1)
    7a64:	3c010000 	lui	at,0x0
    7a68:	3c180000 	lui	t8,0x0
    7a6c:	4600218d 	trunc.w.s	$f6,$f4
    7a70:	27180228 	addiu	t8,t8,552
    7a74:	24090001 	li	t1,1
    7a78:	24060003 	li	a2,3
    7a7c:	440c3000 	mfc1	t4,$f6
    7a80:	00003825 	move	a3,zero
    7a84:	a42c022a 	sh	t4,554(at)
    7a88:	c4a80004 	lwc1	$f8,4(a1)
    7a8c:	4600428d 	trunc.w.s	$f10,$f8
    7a90:	440f5000 	mfc1	t7,$f10
    7a94:	00000000 	nop
    7a98:	a42f022c 	sh	t7,556(at)
    7a9c:	c4b00008 	lwc1	$f16,8(a1)
    7aa0:	afb80014 	sw	t8,20(sp)
    7aa4:	afa90010 	sw	t1,16(sp)
    7aa8:	4600848d 	trunc.w.s	$f18,$f16
    7aac:	27a50024 	addiu	a1,sp,36
    7ab0:	440e9000 	mfc1	t6,$f18
    7ab4:	00000000 	nop
    7ab8:	a42e022e 	sh	t6,558(at)
    7abc:	3c010000 	lui	at,0x0
    7ac0:	a42c0256 	sh	t4,598(at)
    7ac4:	a42f0258 	sh	t7,600(at)
    7ac8:	0c000000 	jal	0 <func_8005B280>
    7acc:	a42e025a 	sh	t6,602(at)
    7ad0:	8fbf001c 	lw	ra,28(sp)
    7ad4:	27bd0028 	addiu	sp,sp,40
    7ad8:	03e00008 	jr	ra
    7adc:	00000000 	nop

00007ae0 <func_80062D60>:
    7ae0:	27bdffe0 	addiu	sp,sp,-32
    7ae4:	afbf001c 	sw	ra,28(sp)
    7ae8:	0c000000 	jal	0 <func_8005B280>
    7aec:	00000000 	nop
    7af0:	3c070000 	lui	a3,0x0
    7af4:	3c0e0000 	lui	t6,0x0
    7af8:	24e70000 	addiu	a3,a3,0
    7afc:	25ce0000 	addiu	t6,t6,0
    7b00:	3c050000 	lui	a1,0x0
    7b04:	24a50000 	addiu	a1,a1,0
    7b08:	afae0014 	sw	t6,20(sp)
    7b0c:	afa70010 	sw	a3,16(sp)
    7b10:	24041808 	li	a0,6152
    7b14:	0c000000 	jal	0 <func_8005B280>
    7b18:	24060004 	li	a2,4
    7b1c:	8fbf001c 	lw	ra,28(sp)
    7b20:	27bd0020 	addiu	sp,sp,32
    7b24:	03e00008 	jr	ra
    7b28:	00000000 	nop

00007b2c <func_80062DAC>:
    7b2c:	27bdffe0 	addiu	sp,sp,-32
    7b30:	afbf001c 	sw	ra,28(sp)
    7b34:	0c000000 	jal	0 <func_8005B280>
    7b38:	afa60028 	sw	a2,40(sp)
    7b3c:	3c070000 	lui	a3,0x0
    7b40:	3c0e0000 	lui	t6,0x0
    7b44:	24e70000 	addiu	a3,a3,0
    7b48:	25ce0000 	addiu	t6,t6,0
    7b4c:	afae0014 	sw	t6,20(sp)
    7b50:	afa70010 	sw	a3,16(sp)
    7b54:	24041808 	li	a0,6152
    7b58:	8fa50028 	lw	a1,40(sp)
    7b5c:	0c000000 	jal	0 <func_8005B280>
    7b60:	24060004 	li	a2,4
    7b64:	8fbf001c 	lw	ra,28(sp)
    7b68:	27bd0020 	addiu	sp,sp,32
    7b6c:	03e00008 	jr	ra
    7b70:	00000000 	nop

00007b74 <func_80062DF4>:
    7b74:	27bdffe8 	addiu	sp,sp,-24
    7b78:	afbf0014 	sw	ra,20(sp)
    7b7c:	0c000000 	jal	0 <func_8005B280>
    7b80:	00000000 	nop
    7b84:	8fbf0014 	lw	ra,20(sp)
    7b88:	27bd0018 	addiu	sp,sp,24
    7b8c:	03e00008 	jr	ra
    7b90:	00000000 	nop

00007b94 <func_80062E14>:
    7b94:	27bdffd8 	addiu	sp,sp,-40
    7b98:	afbf001c 	sw	ra,28(sp)
    7b9c:	afa5002c 	sw	a1,44(sp)
    7ba0:	afa60030 	sw	a2,48(sp)
    7ba4:	c4a40000 	lwc1	$f4,0(a1)
    7ba8:	3c010000 	lui	at,0x0
    7bac:	3c180000 	lui	t8,0x0
    7bb0:	4600218d 	trunc.w.s	$f6,$f4
    7bb4:	27180268 	addiu	t8,t8,616
    7bb8:	24090001 	li	t1,1
    7bbc:	24060003 	li	a2,3
    7bc0:	440c3000 	mfc1	t4,$f6
    7bc4:	00003825 	move	a3,zero
    7bc8:	a42c026a 	sh	t4,618(at)
    7bcc:	c4a80004 	lwc1	$f8,4(a1)
    7bd0:	4600428d 	trunc.w.s	$f10,$f8
    7bd4:	440f5000 	mfc1	t7,$f10
    7bd8:	00000000 	nop
    7bdc:	a42f026c 	sh	t7,620(at)
    7be0:	c4b00008 	lwc1	$f16,8(a1)
    7be4:	afb80014 	sw	t8,20(sp)
    7be8:	afa90010 	sw	t1,16(sp)
    7bec:	4600848d 	trunc.w.s	$f18,$f16
    7bf0:	27a50024 	addiu	a1,sp,36
    7bf4:	440e9000 	mfc1	t6,$f18
    7bf8:	00000000 	nop
    7bfc:	a42e026e 	sh	t6,622(at)
    7c00:	3c010000 	lui	at,0x0
    7c04:	a42c0296 	sh	t4,662(at)
    7c08:	a42f0298 	sh	t7,664(at)
    7c0c:	0c000000 	jal	0 <func_8005B280>
    7c10:	a42e029a 	sh	t6,666(at)
    7c14:	3c070000 	lui	a3,0x0
    7c18:	3c0b0000 	lui	t3,0x0
    7c1c:	24e70000 	addiu	a3,a3,0
    7c20:	256b0000 	addiu	t3,t3,0
    7c24:	afab0014 	sw	t3,20(sp)
    7c28:	afa70010 	sw	a3,16(sp)
    7c2c:	24041837 	li	a0,6199
    7c30:	8fa50030 	lw	a1,48(sp)
    7c34:	0c000000 	jal	0 <func_8005B280>
    7c38:	24060004 	li	a2,4
    7c3c:	8fbf001c 	lw	ra,28(sp)
    7c40:	27bd0028 	addiu	sp,sp,40
    7c44:	03e00008 	jr	ra
    7c48:	00000000 	nop

00007c4c <func_80062ECC>:
    7c4c:	27bdff88 	addiu	sp,sp,-120
    7c50:	8fa40088 	lw	a0,136(sp)
    7c54:	e7ac0078 	swc1	$f12,120(sp)
    7c58:	e7ae007c 	swc1	$f14,124(sp)
    7c5c:	afa60080 	sw	a2,128(sp)
    7c60:	c4e60000 	lwc1	$f6,0(a3)
    7c64:	c4840000 	lwc1	$f4,0(a0)
    7c68:	8fa5008c 	lw	a1,140(sp)
    7c6c:	00001025 	move	v0,zero
    7c70:	46062201 	sub.s	$f8,$f4,$f6
    7c74:	e7a8006c 	swc1	$f8,108(sp)
    7c78:	c4e40004 	lwc1	$f4,4(a3)
    7c7c:	c48a0004 	lwc1	$f10,4(a0)
    7c80:	c7a80080 	lwc1	$f8,128(sp)
    7c84:	46045181 	sub.s	$f6,$f10,$f4
    7c88:	46083381 	sub.s	$f14,$f6,$f8
    7c8c:	e7ae0070 	swc1	$f14,112(sp)
    7c90:	c4e60008 	lwc1	$f6,8(a3)
    7c94:	c4840008 	lwc1	$f4,8(a0)
    7c98:	46062101 	sub.s	$f4,$f4,$f6
    7c9c:	e7a40074 	swc1	$f4,116(sp)
    7ca0:	c4e40000 	lwc1	$f4,0(a3)
    7ca4:	c4a60000 	lwc1	$f6,0(a1)
    7ca8:	46043181 	sub.s	$f6,$f6,$f4
    7cac:	e7a60060 	swc1	$f6,96(sp)
    7cb0:	c4e60004 	lwc1	$f6,4(a3)
    7cb4:	c4a40004 	lwc1	$f4,4(a1)
    7cb8:	46062101 	sub.s	$f4,$f4,$f6
    7cbc:	46082181 	sub.s	$f6,$f4,$f8
    7cc0:	e7a60064 	swc1	$f6,100(sp)
    7cc4:	c4e80008 	lwc1	$f8,8(a3)
    7cc8:	c4a40008 	lwc1	$f4,8(a1)
    7ccc:	46082101 	sub.s	$f4,$f4,$f8
    7cd0:	c7a80060 	lwc1	$f8,96(sp)
    7cd4:	e7a40068 	swc1	$f4,104(sp)
    7cd8:	c7a4006c 	lwc1	$f4,108(sp)
    7cdc:	46044401 	sub.s	$f16,$f8,$f4
    7ce0:	460e3201 	sub.s	$f8,$f6,$f14
    7ce4:	c7a60068 	lwc1	$f6,104(sp)
    7ce8:	e7b00054 	swc1	$f16,84(sp)
    7cec:	e7a80018 	swc1	$f8,24(sp)
    7cf0:	e7a80058 	swc1	$f8,88(sp)
    7cf4:	c7a80074 	lwc1	$f8,116(sp)
    7cf8:	46083481 	sub.s	$f18,$f6,$f8
    7cfc:	44803000 	mtc1	zero,$f6
    7d00:	c7a8007c 	lwc1	$f8,124(sp)
    7d04:	460e303c 	c.lt.s	$f6,$f14
    7d08:	e7b2005c 	swc1	$f18,92(sp)
    7d0c:	45000002 	bc1f	7d18 <func_80062ECC+0xcc>
    7d10:	00000000 	nop
    7d14:	24020001 	li	v0,1
    7d18:	50400013 	beqzl	v0,7d68 <func_80062ECC+0x11c>
    7d1c:	44804000 	mtc1	zero,$f8
    7d20:	4608703c 	c.lt.s	$f14,$f8
    7d24:	c7a80074 	lwc1	$f8,116(sp)
    7d28:	c7a60074 	lwc1	$f6,116(sp)
    7d2c:	4502000e 	bc1fl	7d68 <func_80062ECC+0x11c>
    7d30:	44804000 	mtc1	zero,$f8
    7d34:	46042282 	mul.s	$f10,$f4,$f4
    7d38:	00000000 	nop
    7d3c:	46083102 	mul.s	$f4,$f6,$f8
    7d40:	c7a60078 	lwc1	$f6,120(sp)
    7d44:	46045000 	add.s	$f0,$f10,$f4
    7d48:	46000004 	sqrt.s	$f0,$f0
    7d4c:	4606003c 	c.lt.s	$f0,$f6
    7d50:	00000000 	nop
    7d54:	45000003 	bc1f	7d64 <func_80062ECC+0x118>
    7d58:	00000000 	nop
    7d5c:	1000017a 	b	8348 <func_80062ECC+0x6fc>
    7d60:	24020003 	li	v0,3
    7d64:	44804000 	mtc1	zero,$f8
    7d68:	c7aa0064 	lwc1	$f10,100(sp)
    7d6c:	00001825 	move	v1,zero
    7d70:	c7a4007c 	lwc1	$f4,124(sp)
    7d74:	460a403c 	c.lt.s	$f8,$f10
    7d78:	00000000 	nop
    7d7c:	45000002 	bc1f	7d88 <func_80062ECC+0x13c>
    7d80:	00000000 	nop
    7d84:	24030001 	li	v1,1
    7d88:	50600012 	beqzl	v1,7dd4 <func_80062ECC+0x188>
    7d8c:	c7a60074 	lwc1	$f6,116(sp)
    7d90:	4604503c 	c.lt.s	$f10,$f4
    7d94:	c7a20060 	lwc1	$f2,96(sp)
    7d98:	c7ac0068 	lwc1	$f12,104(sp)
    7d9c:	4502000d 	bc1fl	7dd4 <func_80062ECC+0x188>
    7da0:	c7a60074 	lwc1	$f6,116(sp)
    7da4:	46021182 	mul.s	$f6,$f2,$f2
    7da8:	c7aa0078 	lwc1	$f10,120(sp)
    7dac:	460c6202 	mul.s	$f8,$f12,$f12
    7db0:	46083000 	add.s	$f0,$f6,$f8
    7db4:	46000004 	sqrt.s	$f0,$f0
    7db8:	460a003c 	c.lt.s	$f0,$f10
    7dbc:	00000000 	nop
    7dc0:	45020004 	bc1fl	7dd4 <func_80062ECC+0x188>
    7dc4:	c7a60074 	lwc1	$f6,116(sp)
    7dc8:	1000015f 	b	8348 <func_80062ECC+0x6fc>
    7dcc:	24020003 	li	v0,3
    7dd0:	c7a60074 	lwc1	$f6,116(sp)
    7dd4:	c7a4006c 	lwc1	$f4,108(sp)
    7dd8:	3c010000 	lui	at,0x0
    7ddc:	46063202 	mul.s	$f8,$f6,$f6
    7de0:	00000000 	nop
    7de4:	46042282 	mul.s	$f10,$f4,$f4
    7de8:	46085280 	add.s	$f10,$f10,$f8
    7dec:	c7a80078 	lwc1	$f8,120(sp)
    7df0:	46084202 	mul.s	$f8,$f8,$f8
    7df4:	46085301 	sub.s	$f12,$f10,$f8
    7df8:	46108282 	mul.s	$f10,$f16,$f16
    7dfc:	00000000 	nop
    7e00:	46129202 	mul.s	$f8,$f18,$f18
    7e04:	e7ac0038 	swc1	$f12,56(sp)
    7e08:	46085080 	add.s	$f2,$f10,$f8
    7e0c:	c42a0000 	lwc1	$f10,0(at)
    7e10:	46001005 	abs.s	$f0,$f2
    7e14:	460a003c 	c.lt.s	$f0,$f10
    7e18:	00000000 	nop
    7e1c:	4501002c 	bc1t	7ed0 <func_80062ECC+0x284>
    7e20:	00000000 	nop
    7e24:	46108200 	add.s	$f8,$f16,$f16
    7e28:	3c014080 	lui	at,0x4080
    7e2c:	46044282 	mul.s	$f10,$f8,$f4
    7e30:	46129200 	add.s	$f8,$f18,$f18
    7e34:	46064102 	mul.s	$f4,$f8,$f6
    7e38:	44814000 	mtc1	at,$f8
    7e3c:	46045380 	add.s	$f14,$f10,$f4
    7e40:	c7aa0038 	lwc1	$f10,56(sp)
    7e44:	460e7002 	mul.s	$f0,$f14,$f14
    7e48:	00000000 	nop
    7e4c:	46024182 	mul.s	$f6,$f8,$f2
    7e50:	00000000 	nop
    7e54:	460a3302 	mul.s	$f12,$f6,$f10
    7e58:	460c003c 	c.lt.s	$f0,$f12
    7e5c:	00000000 	nop
    7e60:	45000003 	bc1f	7e70 <func_80062ECC+0x224>
    7e64:	00000000 	nop
    7e68:	10000137 	b	8348 <func_80062ECC+0x6fc>
    7e6c:	00001025 	move	v0,zero
    7e70:	460c0401 	sub.s	$f16,$f0,$f12
    7e74:	44809000 	mtc1	zero,$f18
    7e78:	24030001 	li	v1,1
    7e7c:	46021200 	add.s	$f8,$f2,$f2
    7e80:	4610903c 	c.lt.s	$f18,$f16
    7e84:	46008004 	sqrt.s	$f0,$f16
    7e88:	45000003 	bc1f	7e98 <func_80062ECC+0x24c>
    7e8c:	24020001 	li	v0,1
    7e90:	10000002 	b	7e9c <func_80062ECC+0x250>
    7e94:	24030001 	li	v1,1
    7e98:	00001025 	move	v0,zero
    7e9c:	460e0101 	sub.s	$f4,$f0,$f14
    7ea0:	24080001 	li	t0,1
    7ea4:	46082403 	div.s	$f16,$f4,$f8
    7ea8:	e7b00050 	swc1	$f16,80(sp)
    7eac:	14480006 	bne	v0,t0,7ec8 <func_80062ECC+0x27c>
    7eb0:	c7b00050 	lwc1	$f16,80(sp)
    7eb4:	46007187 	neg.s	$f6,$f14
    7eb8:	46021100 	add.s	$f4,$f2,$f2
    7ebc:	46003281 	sub.s	$f10,$f6,$f0
    7ec0:	46045303 	div.s	$f12,$f10,$f4
    7ec4:	e7ac004c 	swc1	$f12,76(sp)
    7ec8:	1000005f 	b	8048 <func_80062ECC+0x3fc>
    7ecc:	c7ac004c 	lwc1	$f12,76(sp)
    7ed0:	46108200 	add.s	$f8,$f16,$f16
    7ed4:	c7a6006c 	lwc1	$f6,108(sp)
    7ed8:	3c010000 	lui	at,0x0
    7edc:	46129100 	add.s	$f4,$f18,$f18
    7ee0:	46064282 	mul.s	$f10,$f8,$f6
    7ee4:	c7a80074 	lwc1	$f8,116(sp)
    7ee8:	24080001 	li	t0,1
    7eec:	46082182 	mul.s	$f6,$f4,$f8
    7ef0:	c4240000 	lwc1	$f4,0(at)
    7ef4:	46065380 	add.s	$f14,$f10,$f6
    7ef8:	46007005 	abs.s	$f0,$f14
    7efc:	4604003c 	c.lt.s	$f0,$f4
    7f00:	00000000 	nop
    7f04:	45030009 	bc1tl	7f2c <func_80062ECC+0x2e0>
    7f08:	44805000 	mtc1	zero,$f10
    7f0c:	46006207 	neg.s	$f8,$f12
    7f10:	44809000 	mtc1	zero,$f18
    7f14:	24030001 	li	v1,1
    7f18:	00001025 	move	v0,zero
    7f1c:	460e4403 	div.s	$f16,$f8,$f14
    7f20:	10000049 	b	8048 <func_80062ECC+0x3fc>
    7f24:	c7ac004c 	lwc1	$f12,76(sp)
    7f28:	44805000 	mtc1	zero,$f10
    7f2c:	00000000 	nop
    7f30:	460a603e 	c.le.s	$f12,$f10
    7f34:	00000000 	nop
    7f38:	45000041 	bc1f	8040 <func_80062ECC+0x3f4>
    7f3c:	00000000 	nop
    7f40:	10400009 	beqz	v0,7f68 <func_80062ECC+0x31c>
    7f44:	00402025 	move	a0,v0
    7f48:	c7a60070 	lwc1	$f6,112(sp)
    7f4c:	c7a4007c 	lwc1	$f4,124(sp)
    7f50:	00002025 	move	a0,zero
    7f54:	4604303c 	c.lt.s	$f6,$f4
    7f58:	00000000 	nop
    7f5c:	45020003 	bc1fl	7f6c <func_80062ECC+0x320>
    7f60:	00802825 	move	a1,a0
    7f64:	24040001 	li	a0,1
    7f68:	00802825 	move	a1,a0
    7f6c:	10600009 	beqz	v1,7f94 <func_80062ECC+0x348>
    7f70:	00602025 	move	a0,v1
    7f74:	c7a80064 	lwc1	$f8,100(sp)
    7f78:	c7aa007c 	lwc1	$f10,124(sp)
    7f7c:	00002025 	move	a0,zero
    7f80:	460a403c 	c.lt.s	$f8,$f10
    7f84:	00000000 	nop
    7f88:	45000002 	bc1f	7f94 <func_80062ECC+0x348>
    7f8c:	00000000 	nop
    7f90:	24040001 	li	a0,1
    7f94:	10a00014 	beqz	a1,7fe8 <func_80062ECC+0x39c>
    7f98:	00000000 	nop
    7f9c:	10800012 	beqz	a0,7fe8 <func_80062ECC+0x39c>
    7fa0:	8fa30090 	lw	v1,144(sp)
    7fa4:	27ae006c 	addiu	t6,sp,108
    7fa8:	8dd80000 	lw	t8,0(t6)
    7fac:	8fa40094 	lw	a0,148(sp)
    7fb0:	27b90060 	addiu	t9,sp,96
    7fb4:	ac780000 	sw	t8,0(v1)
    7fb8:	8dcf0004 	lw	t7,4(t6)
    7fbc:	24020002 	li	v0,2
    7fc0:	ac6f0004 	sw	t7,4(v1)
    7fc4:	8dd80008 	lw	t8,8(t6)
    7fc8:	ac780008 	sw	t8,8(v1)
    7fcc:	8f2a0000 	lw	t2,0(t9)
    7fd0:	ac8a0000 	sw	t2,0(a0)
    7fd4:	8f290004 	lw	t1,4(t9)
    7fd8:	ac890004 	sw	t1,4(a0)
    7fdc:	8f2a0008 	lw	t2,8(t9)
    7fe0:	100000d9 	b	8348 <func_80062ECC+0x6fc>
    7fe4:	ac8a0008 	sw	t2,8(a0)
    7fe8:	10a0000a 	beqz	a1,8014 <func_80062ECC+0x3c8>
    7fec:	8fa30090 	lw	v1,144(sp)
    7ff0:	27ab006c 	addiu	t3,sp,108
    7ff4:	8d6d0000 	lw	t5,0(t3)
    7ff8:	24020001 	li	v0,1
    7ffc:	ac6d0000 	sw	t5,0(v1)
    8000:	8d6c0004 	lw	t4,4(t3)
    8004:	ac6c0004 	sw	t4,4(v1)
    8008:	8d6d0008 	lw	t5,8(t3)
    800c:	100000ce 	b	8348 <func_80062ECC+0x6fc>
    8010:	ac6d0008 	sw	t5,8(v1)
    8014:	1080000a 	beqz	a0,8040 <func_80062ECC+0x3f4>
    8018:	8fa30090 	lw	v1,144(sp)
    801c:	27ae0060 	addiu	t6,sp,96
    8020:	8dd80000 	lw	t8,0(t6)
    8024:	24020001 	li	v0,1
    8028:	ac780000 	sw	t8,0(v1)
    802c:	8dcf0004 	lw	t7,4(t6)
    8030:	ac6f0004 	sw	t7,4(v1)
    8034:	8dd80008 	lw	t8,8(t6)
    8038:	100000c3 	b	8348 <func_80062ECC+0x6fc>
    803c:	ac780008 	sw	t8,8(v1)
    8040:	100000c1 	b	8348 <func_80062ECC+0x6fc>
    8044:	00001025 	move	v0,zero
    8048:	5440000e 	bnezl	v0,8084 <func_80062ECC+0x438>
    804c:	4612803c 	c.lt.s	$f16,$f18
    8050:	4612803c 	c.lt.s	$f16,$f18
    8054:	3c013f80 	lui	at,0x3f80
    8058:	45010007 	bc1t	8078 <func_80062ECC+0x42c>
    805c:	00000000 	nop
    8060:	44813000 	mtc1	at,$f6
    8064:	00000000 	nop
    8068:	4610303c 	c.lt.s	$f6,$f16
    806c:	00000000 	nop
    8070:	4500002e 	bc1f	812c <func_80062ECC+0x4e0>
    8074:	00000000 	nop
    8078:	100000b3 	b	8348 <func_80062ECC+0x6fc>
    807c:	00001025 	move	v0,zero
    8080:	4612803c 	c.lt.s	$f16,$f18
    8084:	00002825 	move	a1,zero
    8088:	3c013f80 	lui	at,0x3f80
    808c:	45000002 	bc1f	8098 <func_80062ECC+0x44c>
    8090:	00000000 	nop
    8094:	24050001 	li	a1,1
    8098:	14a00008 	bnez	a1,80bc <func_80062ECC+0x470>
    809c:	00a02025 	move	a0,a1
    80a0:	44812000 	mtc1	at,$f4
    80a4:	00002025 	move	a0,zero
    80a8:	4610203c 	c.lt.s	$f4,$f16
    80ac:	00000000 	nop
    80b0:	45020003 	bc1fl	80c0 <func_80062ECC+0x474>
    80b4:	4612603c 	c.lt.s	$f12,$f18
    80b8:	24040001 	li	a0,1
    80bc:	4612603c 	c.lt.s	$f12,$f18
    80c0:	00802825 	move	a1,a0
    80c4:	00003025 	move	a2,zero
    80c8:	3c013f80 	lui	at,0x3f80
    80cc:	45000002 	bc1f	80d8 <func_80062ECC+0x48c>
    80d0:	00000000 	nop
    80d4:	24060001 	li	a2,1
    80d8:	14c00008 	bnez	a2,80fc <func_80062ECC+0x4b0>
    80dc:	00c02025 	move	a0,a2
    80e0:	44814000 	mtc1	at,$f8
    80e4:	00002025 	move	a0,zero
    80e8:	460c403c 	c.lt.s	$f8,$f12
    80ec:	00000000 	nop
    80f0:	45000002 	bc1f	80fc <func_80062ECC+0x4b0>
    80f4:	00000000 	nop
    80f8:	24040001 	li	a0,1
    80fc:	10a00005 	beqz	a1,8114 <func_80062ECC+0x4c8>
    8100:	00000000 	nop
    8104:	10800003 	beqz	a0,8114 <func_80062ECC+0x4c8>
    8108:	00000000 	nop
    810c:	1000008e 	b	8348 <func_80062ECC+0x6fc>
    8110:	00001025 	move	v0,zero
    8114:	10a00002 	beqz	a1,8120 <func_80062ECC+0x4d4>
    8118:	00000000 	nop
    811c:	00001825 	move	v1,zero
    8120:	10800002 	beqz	a0,812c <func_80062ECC+0x4e0>
    8124:	00000000 	nop
    8128:	00001025 	move	v0,zero
    812c:	1468000f 	bne	v1,t0,816c <func_80062ECC+0x520>
    8130:	c7aa0018 	lwc1	$f10,24(sp)
    8134:	460a8182 	mul.s	$f6,$f16,$f10
    8138:	c7a40070 	lwc1	$f4,112(sp)
    813c:	44804000 	mtc1	zero,$f8
    8140:	c7aa007c 	lwc1	$f10,124(sp)
    8144:	46043000 	add.s	$f0,$f6,$f4
    8148:	4608003c 	c.lt.s	$f0,$f8
    814c:	00000000 	nop
    8150:	45030006 	bc1tl	816c <func_80062ECC+0x520>
    8154:	00001825 	move	v1,zero
    8158:	4600503c 	c.lt.s	$f10,$f0
    815c:	00000000 	nop
    8160:	45000002 	bc1f	816c <func_80062ECC+0x520>
    8164:	00000000 	nop
    8168:	00001825 	move	v1,zero
    816c:	1448000f 	bne	v0,t0,81ac <func_80062ECC+0x560>
    8170:	c7a60018 	lwc1	$f6,24(sp)
    8174:	46066102 	mul.s	$f4,$f12,$f6
    8178:	c7a80070 	lwc1	$f8,112(sp)
    817c:	44805000 	mtc1	zero,$f10
    8180:	c7a6007c 	lwc1	$f6,124(sp)
    8184:	46082000 	add.s	$f0,$f4,$f8
    8188:	460a003c 	c.lt.s	$f0,$f10
    818c:	00000000 	nop
    8190:	45030006 	bc1tl	81ac <func_80062ECC+0x560>
    8194:	00001025 	move	v0,zero
    8198:	4600303c 	c.lt.s	$f6,$f0
    819c:	00000000 	nop
    81a0:	45000002 	bc1f	81ac <func_80062ECC+0x560>
    81a4:	00000000 	nop
    81a8:	00001025 	move	v0,zero
    81ac:	14600005 	bnez	v1,81c4 <func_80062ECC+0x578>
    81b0:	00000000 	nop
    81b4:	14400003 	bnez	v0,81c4 <func_80062ECC+0x578>
    81b8:	00000000 	nop
    81bc:	10000062 	b	8348 <func_80062ECC+0x6fc>
    81c0:	00001025 	move	v0,zero
    81c4:	1468002d 	bne	v1,t0,827c <func_80062ECC+0x630>
    81c8:	00000000 	nop
    81cc:	1448002b 	bne	v0,t0,827c <func_80062ECC+0x630>
    81d0:	c7a00054 	lwc1	$f0,84(sp)
    81d4:	46008102 	mul.s	$f4,$f16,$f0
    81d8:	c7a8006c 	lwc1	$f8,108(sp)
    81dc:	c4e60000 	lwc1	$f6,0(a3)
    81e0:	c7a20058 	lwc1	$f2,88(sp)
    81e4:	8fa30090 	lw	v1,144(sp)
    81e8:	8fa40094 	lw	a0,148(sp)
    81ec:	c7ae005c 	lwc1	$f14,92(sp)
    81f0:	46082280 	add.s	$f10,$f4,$f8
    81f4:	46028202 	mul.s	$f8,$f16,$f2
    81f8:	24020002 	li	v0,2
    81fc:	46065100 	add.s	$f4,$f10,$f6
    8200:	e4640000 	swc1	$f4,0(v1)
    8204:	c7aa0070 	lwc1	$f10,112(sp)
    8208:	c4e40004 	lwc1	$f4,4(a3)
    820c:	460a4180 	add.s	$f6,$f8,$f10
    8210:	460e8282 	mul.s	$f10,$f16,$f14
    8214:	46043200 	add.s	$f8,$f6,$f4
    8218:	e4680004 	swc1	$f8,4(v1)
    821c:	c7a60074 	lwc1	$f6,116(sp)
    8220:	c4e80008 	lwc1	$f8,8(a3)
    8224:	46065100 	add.s	$f4,$f10,$f6
    8228:	46006182 	mul.s	$f6,$f12,$f0
    822c:	46082280 	add.s	$f10,$f4,$f8
    8230:	e46a0008 	swc1	$f10,8(v1)
    8234:	c7a4006c 	lwc1	$f4,108(sp)
    8238:	c4ea0000 	lwc1	$f10,0(a3)
    823c:	46043200 	add.s	$f8,$f6,$f4
    8240:	46026102 	mul.s	$f4,$f12,$f2
    8244:	460a4180 	add.s	$f6,$f8,$f10
    8248:	e4860000 	swc1	$f6,0(a0)
    824c:	c7a80070 	lwc1	$f8,112(sp)
    8250:	c4e60004 	lwc1	$f6,4(a3)
    8254:	46082280 	add.s	$f10,$f4,$f8
    8258:	460e6202 	mul.s	$f8,$f12,$f14
    825c:	46065100 	add.s	$f4,$f10,$f6
    8260:	e4840004 	swc1	$f4,4(a0)
    8264:	c7aa0074 	lwc1	$f10,116(sp)
    8268:	c4e40008 	lwc1	$f4,8(a3)
    826c:	460a4180 	add.s	$f6,$f8,$f10
    8270:	46043200 	add.s	$f8,$f6,$f4
    8274:	10000034 	b	8348 <func_80062ECC+0x6fc>
    8278:	e4880008 	swc1	$f8,8(a0)
    827c:	14680018 	bne	v1,t0,82e0 <func_80062ECC+0x694>
    8280:	c7aa0054 	lwc1	$f10,84(sp)
    8284:	460a8182 	mul.s	$f6,$f16,$f10
    8288:	c7a4006c 	lwc1	$f4,108(sp)
    828c:	c4ea0000 	lwc1	$f10,0(a3)
    8290:	8fa30090 	lw	v1,144(sp)
    8294:	24020001 	li	v0,1
    8298:	46043200 	add.s	$f8,$f6,$f4
    829c:	460a4180 	add.s	$f6,$f8,$f10
    82a0:	e4660000 	swc1	$f6,0(v1)
    82a4:	c7a40058 	lwc1	$f4,88(sp)
    82a8:	c7aa0070 	lwc1	$f10,112(sp)
    82ac:	46048202 	mul.s	$f8,$f16,$f4
    82b0:	c4e40004 	lwc1	$f4,4(a3)
    82b4:	460a4180 	add.s	$f6,$f8,$f10
    82b8:	46043200 	add.s	$f8,$f6,$f4
    82bc:	e4680004 	swc1	$f8,4(v1)
    82c0:	c7aa005c 	lwc1	$f10,92(sp)
    82c4:	c7a40074 	lwc1	$f4,116(sp)
    82c8:	460a8182 	mul.s	$f6,$f16,$f10
    82cc:	c4ea0008 	lwc1	$f10,8(a3)
    82d0:	46043200 	add.s	$f8,$f6,$f4
    82d4:	460a4180 	add.s	$f6,$f8,$f10
    82d8:	1000001b 	b	8348 <func_80062ECC+0x6fc>
    82dc:	e4660008 	swc1	$f6,8(v1)
    82e0:	14480018 	bne	v0,t0,8344 <func_80062ECC+0x6f8>
    82e4:	c7a40054 	lwc1	$f4,84(sp)
    82e8:	46046202 	mul.s	$f8,$f12,$f4
    82ec:	c7aa006c 	lwc1	$f10,108(sp)
    82f0:	c4e40000 	lwc1	$f4,0(a3)
    82f4:	8fa30090 	lw	v1,144(sp)
    82f8:	24020001 	li	v0,1
    82fc:	460a4180 	add.s	$f6,$f8,$f10
    8300:	46043200 	add.s	$f8,$f6,$f4
    8304:	e4680000 	swc1	$f8,0(v1)
    8308:	c7aa0058 	lwc1	$f10,88(sp)
    830c:	c7a40070 	lwc1	$f4,112(sp)
    8310:	460a6182 	mul.s	$f6,$f12,$f10
    8314:	c4ea0004 	lwc1	$f10,4(a3)
    8318:	46043200 	add.s	$f8,$f6,$f4
    831c:	460a4180 	add.s	$f6,$f8,$f10
    8320:	e4660004 	swc1	$f6,4(v1)
    8324:	c7a4005c 	lwc1	$f4,92(sp)
    8328:	c7aa0074 	lwc1	$f10,116(sp)
    832c:	46046202 	mul.s	$f8,$f12,$f4
    8330:	c4e40008 	lwc1	$f4,8(a3)
    8334:	460a4180 	add.s	$f6,$f8,$f10
    8338:	46043200 	add.s	$f8,$f6,$f4
    833c:	10000002 	b	8348 <func_80062ECC+0x6fc>
    8340:	e4680008 	swc1	$f8,8(v1)
    8344:	24020001 	li	v0,1
    8348:	03e00008 	jr	ra
    834c:	27bd0078 	addiu	sp,sp,120

00008350 <func_800635D0>:
    8350:	3c010040 	lui	at,0x40
    8354:	34210100 	ori	at,at,0x100
    8358:	00817024 	and	t6,a0,at
    835c:	11c00003 	beqz	t6,836c <func_800635D0+0x1c>
    8360:	00001825 	move	v1,zero
    8364:	10000011 	b	83ac <func_800635D0+0x5c>
    8368:	24030001 	li	v1,1
    836c:	3c010300 	lui	at,0x300
    8370:	34210242 	ori	at,at,0x242
    8374:	00817824 	and	t7,a0,at
    8378:	11e00003 	beqz	t7,8388 <func_800635D0+0x38>
    837c:	3c014880 	lui	at,0x4880
    8380:	1000000a 	b	83ac <func_800635D0+0x5c>
    8384:	24030002 	li	v1,2
    8388:	34210400 	ori	at,at,0x400
    838c:	0081c024 	and	t8,a0,at
    8390:	13000003 	beqz	t8,83a0 <func_800635D0+0x50>
    8394:	0004c940 	sll	t9,a0,0x5
    8398:	10000004 	b	83ac <func_800635D0+0x5c>
    839c:	24030004 	li	v1,4
    83a0:	07210002 	bgez	t9,83ac <func_800635D0+0x5c>
    83a4:	00000000 	nop
    83a8:	24030008 	li	v1,8
    83ac:	3c080000 	lui	t0,0x0
    83b0:	8d080000 	lw	t0,0(t0)
    83b4:	00601025 	move	v0,v1
    83b8:	03e00008 	jr	ra
    83bc:	a50309e2 	sh	v1,2530(t0)
