
build/src/overlays/actors/ovl_Fishing/z_fishing.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B699A0>:
       0:	c4c40000 	lwc1	$f4,0(a2)
       4:	8cb8001c 	lw	t8,28(a1)
       8:	00041180 	sll	v0,a0,0x6
       c:	4600218d 	trunc.w.s	$f6,$f4
      10:	0302c821 	addu	t9,t8,v0
      14:	44876000 	mtc1	a3,$f12
      18:	3c010000 	lui	at,0x0
      1c:	440f3000 	mfc1	t7,$f6
      20:	00000000 	nop
      24:	a72f0030 	sh	t7,48(t9)
      28:	c4c80004 	lwc1	$f8,4(a2)
      2c:	8caa001c 	lw	t2,28(a1)
      30:	4600428d 	trunc.w.s	$f10,$f8
      34:	01425821 	addu	t3,t2,v0
      38:	44095000 	mfc1	t1,$f10
      3c:	00000000 	nop
      40:	a5690032 	sh	t1,50(t3)
      44:	c4d00008 	lwc1	$f16,8(a2)
      48:	8cae001c 	lw	t6,28(a1)
      4c:	4600848d 	trunc.w.s	$f18,$f16
      50:	01c2c021 	addu	t8,t6,v0
      54:	440d9000 	mfc1	t5,$f18
      58:	00000000 	nop
      5c:	a70d0034 	sh	t5,52(t8)
      60:	8caf001c 	lw	t7,28(a1)
      64:	c4320000 	lwc1	$f18,0(at)
      68:	01e21821 	addu	v1,t7,v0
      6c:	8479002e 	lh	t9,46(v1)
      70:	c4640038 	lwc1	$f4,56(v1)
      74:	44993000 	mtc1	t9,$f6
      78:	00000000 	nop
      7c:	46803220 	cvt.s.w	$f8,$f6
      80:	46082282 	mul.s	$f10,$f4,$f8
      84:	00000000 	nop
      88:	460c5402 	mul.s	$f16,$f10,$f12
      8c:	00000000 	nop
      90:	46128182 	mul.s	$f6,$f16,$f18
      94:	4600310d 	trunc.w.s	$f4,$f6
      98:	440a2000 	mfc1	t2,$f4
      9c:	03e00008 	jr	ra
      a0:	a46a0036 	sh	t2,54(v1)

000000a4 <func_80B69A44>:
      a4:	3c010000 	lui	at,0x0
      a8:	ac240000 	sw	a0,0(at)
      ac:	3c010000 	lui	at,0x0
      b0:	ac250000 	sw	a1,0(at)
      b4:	3c010000 	lui	at,0x0
      b8:	03e00008 	jr	ra
      bc:	ac260000 	sw	a2,0(at)

000000c0 <func_80B69A60>:
      c0:	3c020000 	lui	v0,0x0
      c4:	24420000 	addiu	v0,v0,0
      c8:	8c4e0000 	lw	t6,0(v0)
      cc:	3c013f80 	lui	at,0x3f80
      d0:	44810000 	mtc1	at,$f0
      d4:	000e7880 	sll	t7,t6,0x2
      d8:	01ee7823 	subu	t7,t7,t6
      dc:	000f7880 	sll	t7,t7,0x2
      e0:	01ee7823 	subu	t7,t7,t6
      e4:	000f7880 	sll	t7,t7,0x2
      e8:	01ee7823 	subu	t7,t7,t6
      ec:	000f7880 	sll	t7,t7,0x2
      f0:	2401763d 	li	at,30269
      f4:	01ee7823 	subu	t7,t7,t6
      f8:	01e1001a 	div	zero,t7,at
      fc:	3c030000 	lui	v1,0x0
     100:	24630000 	addiu	v1,v1,0
     104:	8c790000 	lw	t9,0(v1)
     108:	00006810 	mfhi	t5
     10c:	24017663 	li	at,30307
     110:	00194080 	sll	t0,t9,0x2
     114:	01194023 	subu	t0,t0,t9
     118:	00084080 	sll	t0,t0,0x2
     11c:	01194023 	subu	t0,t0,t9
     120:	00084080 	sll	t0,t0,0x2
     124:	01194023 	subu	t0,t0,t9
     128:	00084080 	sll	t0,t0,0x2
     12c:	0101001a 	div	zero,t0,at
     130:	3c040000 	lui	a0,0x0
     134:	24840000 	addiu	a0,a0,0
     138:	8c8a0000 	lw	t2,0(a0)
     13c:	00007010 	mfhi	t6
     140:	24017673 	li	at,30323
     144:	000a5880 	sll	t3,t2,0x2
     148:	016a5821 	addu	t3,t3,t2
     14c:	000b5880 	sll	t3,t3,0x2
     150:	016a5821 	addu	t3,t3,t2
     154:	000b5880 	sll	t3,t3,0x2
     158:	016a5821 	addu	t3,t3,t2
     15c:	000b5840 	sll	t3,t3,0x1
     160:	0161001a 	div	zero,t3,at
     164:	448d2000 	mtc1	t5,$f4
     168:	448e8000 	mtc1	t6,$f16
     16c:	00007810 	mfhi	t7
     170:	468021a0 	cvt.s.w	$f6,$f4
     174:	ac4d0000 	sw	t5,0(v0)
     178:	ac6e0000 	sw	t6,0(v1)
     17c:	ac8f0000 	sw	t7,0(a0)
     180:	3c010000 	lui	at,0x0
     184:	468084a0 	cvt.s.w	$f18,$f16
     188:	c4280000 	lwc1	$f8,0(at)
     18c:	3c010000 	lui	at,0x0
     190:	c4240000 	lwc1	$f4,0(at)
     194:	448f8000 	mtc1	t7,$f16
     198:	46083283 	div.s	$f10,$f6,$f8
     19c:	3c010000 	lui	at,0x0
     1a0:	46049183 	div.s	$f6,$f18,$f4
     1a4:	c4240000 	lwc1	$f4,0(at)
     1a8:	468084a0 	cvt.s.w	$f18,$f16
     1ac:	46065200 	add.s	$f8,$f10,$f6
     1b0:	46049283 	div.s	$f10,$f18,$f4
     1b4:	460a4080 	add.s	$f2,$f8,$f10
     1b8:	4602003e 	c.le.s	$f0,$f2
     1bc:	00000000 	nop
     1c0:	45000006 	bc1f	1dc <func_80B69A60+0x11c>
     1c4:	00000000 	nop
     1c8:	46001081 	sub.s	$f2,$f2,$f0
     1cc:	4602003e 	c.le.s	$f0,$f2
     1d0:	00000000 	nop
     1d4:	4503fffd 	bc1tl	1cc <func_80B69A60+0x10c>
     1d8:	46001081 	sub.s	$f2,$f2,$f0
     1dc:	03e00008 	jr	ra
     1e0:	46001005 	abs.s	$f0,$f2

000001e4 <func_80B69B84>:
     1e4:	afa50004 	sw	a1,4(sp)
     1e8:	afa60008 	sw	a2,8(sp)
     1ec:	afa7000c 	sw	a3,12(sp)
     1f0:	84830000 	lh	v1,0(a0)
     1f4:	00052c00 	sll	a1,a1,0x10
     1f8:	00052c03 	sra	a1,a1,0x10
     1fc:	00a31023 	subu	v0,a1,v1
     200:	00063400 	sll	a2,a2,0x10
     204:	00021400 	sll	v0,v0,0x10
     208:	00063403 	sra	a2,a2,0x10
     20c:	00021403 	sra	v0,v0,0x10
     210:	0046001a 	div	zero,v0,a2
     214:	00004812 	mflo	t1
     218:	00073c00 	sll	a3,a3,0x10
     21c:	00097400 	sll	t6,t1,0x10
     220:	00073c03 	sra	a3,a3,0x10
     224:	14c00002 	bnez	a2,230 <func_80B69B84+0x4c>
     228:	00000000 	nop
     22c:	0007000d 	break	0x7
     230:	2401ffff 	li	at,-1
     234:	14c10004 	bne	a2,at,248 <func_80B69B84+0x64>
     238:	3c018000 	lui	at,0x8000
     23c:	14410002 	bne	v0,at,248 <func_80B69B84+0x64>
     240:	00000000 	nop
     244:	0006000d 	break	0x6
     248:	000e7c03 	sra	t7,t6,0x10
     24c:	00094400 	sll	t0,t1,0x10
     250:	00ef082a 	slt	at,a3,t7
     254:	10200003 	beqz	at,264 <func_80B69B84+0x80>
     258:	00084403 	sra	t0,t0,0x10
     25c:	00074400 	sll	t0,a3,0x10
     260:	00084403 	sra	t0,t0,0x10
     264:	00071023 	negu	v0,a3
     268:	0102082a 	slt	at,t0,v0
     26c:	50200004 	beqzl	at,280 <func_80B69B84+0x9c>
     270:	0068c021 	addu	t8,v1,t0
     274:	00024400 	sll	t0,v0,0x10
     278:	00084403 	sra	t0,t0,0x10
     27c:	0068c021 	addu	t8,v1,t0
     280:	a4980000 	sh	t8,0(a0)
     284:	03e00008 	jr	ra
     288:	01001025 	move	v0,t0

0000028c <func_80B69C2C>:
     28c:	44876000 	mtc1	a3,$f12
     290:	1080000e 	beqz	a0,2cc <func_80B69C2C+0x40>
     294:	3c0143fa 	lui	at,0x43fa
     298:	c4800008 	lwc1	$f0,8(a0)
     29c:	44812000 	mtc1	at,$f4
     2a0:	00000000 	nop
     2a4:	4600203c 	c.lt.s	$f4,$f0
     2a8:	00000000 	nop
     2ac:	4501004c 	bc1t	3e0 <func_80B69C2C+0x154>
     2b0:	00000000 	nop
     2b4:	44803000 	mtc1	zero,$f6
     2b8:	00000000 	nop
     2bc:	4606003c 	c.lt.s	$f0,$f6
     2c0:	00000000 	nop
     2c4:	45010046 	bc1t	3e0 <func_80B69C2C+0x154>
     2c8:	00000000 	nop
     2cc:	87a3001a 	lh	v1,26(sp)
     2d0:	00001025 	move	v0,zero
     2d4:	240f0001 	li	t7,1
     2d8:	18600041 	blez	v1,3e0 <func_80B69C2C+0x154>
     2dc:	00000000 	nop
     2e0:	90ae0024 	lbu	t6,36(a1)
     2e4:	24420001 	addiu	v0,v0,1
     2e8:	00021400 	sll	v0,v0,0x10
     2ec:	15c00039 	bnez	t6,3d4 <func_80B69C2C+0x148>
     2f0:	00021403 	sra	v0,v0,0x10
     2f4:	3c010000 	lui	at,0x0
     2f8:	c4200000 	lwc1	$f0,0(at)
     2fc:	a0af0024 	sb	t7,36(a1)
     300:	8cd90000 	lw	t9,0(a2)
     304:	3c020000 	lui	v0,0x0
     308:	24420000 	addiu	v0,v0,0
     30c:	acb90000 	sw	t9,0(a1)
     310:	8cd80004 	lw	t8,4(a2)
     314:	46006202 	mul.s	$f8,$f12,$f0
     318:	3c014396 	lui	at,0x4396
     31c:	acb80004 	sw	t8,4(a1)
     320:	8cd90008 	lw	t9,8(a2)
     324:	44819000 	mtc1	at,$f18
     328:	240e0001 	li	t6,1
     32c:	acb90008 	sw	t9,8(a1)
     330:	8c490000 	lw	t1,0(v0)
     334:	460c903c 	c.lt.s	$f18,$f12
     338:	3c010000 	lui	at,0x0
     33c:	aca9000c 	sw	t1,12(a1)
     340:	8c480004 	lw	t0,4(v0)
     344:	aca80010 	sw	t0,16(a1)
     348:	8c490008 	lw	t1,8(v0)
     34c:	aca90014 	sw	t1,20(a1)
     350:	8c4b0000 	lw	t3,0(v0)
     354:	acab0018 	sw	t3,24(a1)
     358:	8c4a0004 	lw	t2,4(v0)
     35c:	acaa001c 	sw	t2,28(a1)
     360:	8c4b0008 	lw	t3,8(v0)
     364:	e4a80030 	swc1	$f8,48(a1)
     368:	acab0020 	sw	t3,32(a1)
     36c:	c7aa0010 	lwc1	$f10,16(sp)
     370:	46005402 	mul.s	$f16,$f10,$f0
     374:	4500000d 	bc1f	3ac <func_80B69C2C+0x120>
     378:	e4b00034 	swc1	$f16,52(a1)
     37c:	a4a0002a 	sh	zero,42(a1)
     380:	87ac0016 	lh	t4,22(sp)
     384:	c4a40034 	lwc1	$f4,52(a1)
     388:	c4a60030 	lwc1	$f6,48(a1)
     38c:	a4a0002c 	sh	zero,44(a1)
     390:	3c010000 	lui	at,0x0
     394:	46062201 	sub.s	$f8,$f4,$f6
     398:	a4ac002e 	sh	t4,46(a1)
     39c:	c42a0000 	lwc1	$f10,0(at)
     3a0:	460a4402 	mul.s	$f16,$f8,$f10
     3a4:	03e00008 	jr	ra
     3a8:	e4b00038 	swc1	$f16,56(a1)
     3ac:	87ad0016 	lh	t5,22(sp)
     3b0:	c4b20034 	lwc1	$f18,52(a1)
     3b4:	c4a40030 	lwc1	$f4,48(a1)
     3b8:	a4ae002c 	sh	t6,44(a1)
     3bc:	a4ad002a 	sh	t5,42(a1)
     3c0:	46049181 	sub.s	$f6,$f18,$f4
     3c4:	c4280000 	lwc1	$f8,0(at)
     3c8:	46083282 	mul.s	$f10,$f6,$f8
     3cc:	03e00008 	jr	ra
     3d0:	e4aa0038 	swc1	$f10,56(a1)
     3d4:	0043082a 	slt	at,v0,v1
     3d8:	1420ffc1 	bnez	at,2e0 <func_80B69C2C+0x54>
     3dc:	24a50040 	addiu	a1,a1,64
     3e0:	03e00008 	jr	ra
     3e4:	00000000 	nop

000003e8 <func_80B69D88>:
     3e8:	27bdffd0 	addiu	sp,sp,-48
     3ec:	3c0e0000 	lui	t6,0x0
     3f0:	afbf0014 	sw	ra,20(sp)
     3f4:	afa60038 	sw	a2,56(sp)
     3f8:	afa7003c 	sw	a3,60(sp)
     3fc:	25ce0000 	addiu	t6,t6,0
     400:	8dd80000 	lw	t8,0(t6)
     404:	27a80020 	addiu	t0,sp,32
     408:	3c0143fa 	lui	at,0x43fa
     40c:	ad180000 	sw	t8,0(t0)
     410:	8dcf0004 	lw	t7,4(t6)
     414:	24070008 	li	a3,8
     418:	24060007 	li	a2,7
     41c:	ad0f0004 	sw	t7,4(t0)
     420:	8dd80008 	lw	t8,8(t6)
     424:	00001825 	move	v1,zero
     428:	1080000d 	beqz	a0,460 <func_80B69D88+0x78>
     42c:	ad180008 	sw	t8,8(t0)
     430:	c4800008 	lwc1	$f0,8(a0)
     434:	44812000 	mtc1	at,$f4
     438:	00000000 	nop
     43c:	4600203c 	c.lt.s	$f4,$f0
     440:	00000000 	nop
     444:	45030037 	bc1tl	524 <func_80B69D88+0x13c>
     448:	8fbf0014 	lw	ra,20(sp)
     44c:	44803000 	mtc1	zero,$f6
     450:	00000000 	nop
     454:	4606003c 	c.lt.s	$f0,$f6
     458:	00000000 	nop
     45c:	45010030 	bc1t	520 <func_80B69D88+0x138>
     460:	24040005 	li	a0,5
     464:	90a20024 	lbu	v0,36(a1)
     468:	24630001 	addiu	v1,v1,1
     46c:	00031c00 	sll	v1,v1,0x10
     470:	10400006 	beqz	v0,48c <func_80B69D88+0xa4>
     474:	00031c03 	sra	v1,v1,0x10
     478:	10820004 	beq	a0,v0,48c <func_80B69D88+0xa4>
     47c:	28610064 	slti	at,v1,100
     480:	50c20003 	beql	a2,v0,490 <func_80B69D88+0xa8>
     484:	24190002 	li	t9,2
     488:	14e20023 	bne	a3,v0,518 <func_80B69D88+0x130>
     48c:	24190002 	li	t9,2
     490:	a0b90024 	sb	t9,36(a1)
     494:	8fa90038 	lw	t1,56(sp)
     498:	3c0142c8 	lui	at,0x42c8
     49c:	44816000 	mtc1	at,$f12
     4a0:	8d2b0000 	lw	t3,0(t1)
     4a4:	acab0000 	sw	t3,0(a1)
     4a8:	8d2a0004 	lw	t2,4(t1)
     4ac:	acaa0004 	sw	t2,4(a1)
     4b0:	8d2b0008 	lw	t3,8(t1)
     4b4:	acab0008 	sw	t3,8(a1)
     4b8:	8fac003c 	lw	t4,60(sp)
     4bc:	8d8e0000 	lw	t6,0(t4)
     4c0:	acae000c 	sw	t6,12(a1)
     4c4:	8d8d0004 	lw	t5,4(t4)
     4c8:	acad0010 	sw	t5,16(a1)
     4cc:	8d8e0008 	lw	t6,8(t4)
     4d0:	acae0014 	sw	t6,20(a1)
     4d4:	8d180000 	lw	t8,0(t0)
     4d8:	acb80018 	sw	t8,24(a1)
     4dc:	8d0f0004 	lw	t7,4(t0)
     4e0:	acaf001c 	sw	t7,28(a1)
     4e4:	8d180008 	lw	t8,8(t0)
     4e8:	acb80020 	sw	t8,32(a1)
     4ec:	0c000000 	jal	0 <func_80B699A0>
     4f0:	afa50034 	sw	a1,52(sp)
     4f4:	4600020d 	trunc.w.s	$f8,$f0
     4f8:	8fa50034 	lw	a1,52(sp)
     4fc:	440b4000 	mfc1	t3,$f8
     500:	00000000 	nop
     504:	256c0064 	addiu	t4,t3,100
     508:	a4ac002a 	sh	t4,42(a1)
     50c:	c7aa0040 	lwc1	$f10,64(sp)
     510:	10000003 	b	520 <func_80B69D88+0x138>
     514:	e4aa0030 	swc1	$f10,48(a1)
     518:	1420ffd2 	bnez	at,464 <func_80B69D88+0x7c>
     51c:	24a50040 	addiu	a1,a1,64
     520:	8fbf0014 	lw	ra,20(sp)
     524:	27bd0030 	addiu	sp,sp,48
     528:	03e00008 	jr	ra
     52c:	00000000 	nop

00000530 <func_80B69ED0>:
     530:	27bdffd0 	addiu	sp,sp,-48
     534:	3c0e0000 	lui	t6,0x0
     538:	afbf0014 	sw	ra,20(sp)
     53c:	25ce0000 	addiu	t6,t6,0
     540:	8dd80000 	lw	t8,0(t6)
     544:	27a30020 	addiu	v1,sp,32
     548:	44877000 	mtc1	a3,$f14
     54c:	ac780000 	sw	t8,0(v1)
     550:	8dcf0004 	lw	t7,4(t6)
     554:	3c0143fa 	lui	at,0x43fa
     558:	00001025 	move	v0,zero
     55c:	ac6f0004 	sw	t7,4(v1)
     560:	8dd80008 	lw	t8,8(t6)
     564:	24080003 	li	t0,3
     568:	1080000e 	beqz	a0,5a4 <func_80B69ED0+0x74>
     56c:	ac780008 	sw	t8,8(v1)
     570:	c4800008 	lwc1	$f0,8(a0)
     574:	44812000 	mtc1	at,$f4
     578:	00000000 	nop
     57c:	4600203c 	c.lt.s	$f4,$f0
     580:	00000000 	nop
     584:	45030035 	bc1tl	65c <func_80B69ED0+0x12c>
     588:	8fbf0014 	lw	ra,20(sp)
     58c:	44803000 	mtc1	zero,$f6
     590:	00000000 	nop
     594:	4606003c 	c.lt.s	$f0,$f6
     598:	00000000 	nop
     59c:	4503002f 	bc1tl	65c <func_80B69ED0+0x12c>
     5a0:	8fbf0014 	lw	ra,20(sp)
     5a4:	90b90024 	lbu	t9,36(a1)
     5a8:	24420001 	addiu	v0,v0,1
     5ac:	00021400 	sll	v0,v0,0x10
     5b0:	17200026 	bnez	t9,64c <func_80B69ED0+0x11c>
     5b4:	00021403 	sra	v0,v0,0x10
     5b8:	a0a80024 	sb	t0,36(a1)
     5bc:	8cca0000 	lw	t2,0(a2)
     5c0:	3c0b0000 	lui	t3,0x0
     5c4:	256b0000 	addiu	t3,t3,0
     5c8:	acaa0000 	sw	t2,0(a1)
     5cc:	8cc90004 	lw	t1,4(a2)
     5d0:	241800ff 	li	t8,255
     5d4:	3c0142c8 	lui	at,0x42c8
     5d8:	aca90004 	sw	t1,4(a1)
     5dc:	8cca0008 	lw	t2,8(a2)
     5e0:	44816000 	mtc1	at,$f12
     5e4:	acaa0008 	sw	t2,8(a1)
     5e8:	8d6d0000 	lw	t5,0(t3)
     5ec:	acad000c 	sw	t5,12(a1)
     5f0:	8d6c0004 	lw	t4,4(t3)
     5f4:	acac0010 	sw	t4,16(a1)
     5f8:	8d6d0008 	lw	t5,8(t3)
     5fc:	acad0014 	sw	t5,20(a1)
     600:	8c6f0000 	lw	t7,0(v1)
     604:	acaf0018 	sw	t7,24(a1)
     608:	8c6e0004 	lw	t6,4(v1)
     60c:	acae001c 	sw	t6,28(a1)
     610:	8c6f0008 	lw	t7,8(v1)
     614:	a4b8002a 	sh	t8,42(a1)
     618:	acaf0020 	sw	t7,32(a1)
     61c:	e7ae003c 	swc1	$f14,60(sp)
     620:	0c000000 	jal	0 <func_80B699A0>
     624:	afa50034 	sw	a1,52(sp)
     628:	4600020d 	trunc.w.s	$f8,$f0
     62c:	c7ae003c 	lwc1	$f14,60(sp)
     630:	8fa50034 	lw	a1,52(sp)
     634:	460e7280 	add.s	$f10,$f14,$f14
     638:	440a4000 	mfc1	t2,$f8
     63c:	e4ae0030 	swc1	$f14,48(a1)
     640:	e4aa0034 	swc1	$f10,52(a1)
     644:	10000004 	b	658 <func_80B69ED0+0x128>
     648:	a0aa0025 	sb	t2,37(a1)
     64c:	2841005a 	slti	at,v0,90
     650:	1420ffd4 	bnez	at,5a4 <func_80B69ED0+0x74>
     654:	24a50040 	addiu	a1,a1,64
     658:	8fbf0014 	lw	ra,20(sp)
     65c:	27bd0030 	addiu	sp,sp,48
     660:	03e00008 	jr	ra
     664:	00000000 	nop

00000668 <func_80B6A008>:
     668:	27bdffd0 	addiu	sp,sp,-48
     66c:	3c0e0000 	lui	t6,0x0
     670:	afbf0014 	sw	ra,20(sp)
     674:	afa7003c 	sw	a3,60(sp)
     678:	25ce0000 	addiu	t6,t6,0
     67c:	8dd80000 	lw	t8,0(t6)
     680:	27a30020 	addiu	v1,sp,32
     684:	3c0143fa 	lui	at,0x43fa
     688:	ac780000 	sw	t8,0(v1)
     68c:	8dcf0004 	lw	t7,4(t6)
     690:	00001025 	move	v0,zero
     694:	24080004 	li	t0,4
     698:	ac6f0004 	sw	t7,4(v1)
     69c:	8dd80008 	lw	t8,8(t6)
     6a0:	1080000e 	beqz	a0,6dc <func_80B6A008+0x74>
     6a4:	ac780008 	sw	t8,8(v1)
     6a8:	c4800008 	lwc1	$f0,8(a0)
     6ac:	44812000 	mtc1	at,$f4
     6b0:	00000000 	nop
     6b4:	4600203c 	c.lt.s	$f4,$f0
     6b8:	00000000 	nop
     6bc:	45030033 	bc1tl	78c <func_80B6A008+0x124>
     6c0:	8fbf0014 	lw	ra,20(sp)
     6c4:	44803000 	mtc1	zero,$f6
     6c8:	00000000 	nop
     6cc:	4606003c 	c.lt.s	$f0,$f6
     6d0:	00000000 	nop
     6d4:	4503002d 	bc1tl	78c <func_80B6A008+0x124>
     6d8:	8fbf0014 	lw	ra,20(sp)
     6dc:	90b90024 	lbu	t9,36(a1)
     6e0:	24420001 	addiu	v0,v0,1
     6e4:	00021400 	sll	v0,v0,0x10
     6e8:	17200024 	bnez	t9,77c <func_80B6A008+0x114>
     6ec:	00021403 	sra	v0,v0,0x10
     6f0:	a0a80024 	sb	t0,36(a1)
     6f4:	8cca0000 	lw	t2,0(a2)
     6f8:	3c0d0000 	lui	t5,0x0
     6fc:	25ad0000 	addiu	t5,t5,0
     700:	acaa0000 	sw	t2,0(a1)
     704:	8cc90004 	lw	t1,4(a2)
     708:	3c0142c8 	lui	at,0x42c8
     70c:	44816000 	mtc1	at,$f12
     710:	aca90004 	sw	t1,4(a1)
     714:	8cca0008 	lw	t2,8(a2)
     718:	acaa0008 	sw	t2,8(a1)
     71c:	8c6c0000 	lw	t4,0(v1)
     720:	acac000c 	sw	t4,12(a1)
     724:	8c6b0004 	lw	t3,4(v1)
     728:	acab0010 	sw	t3,16(a1)
     72c:	8c6c0008 	lw	t4,8(v1)
     730:	acac0014 	sw	t4,20(a1)
     734:	8daf0000 	lw	t7,0(t5)
     738:	acaf0018 	sw	t7,24(a1)
     73c:	8dae0004 	lw	t6,4(t5)
     740:	acae001c 	sw	t6,28(a1)
     744:	8daf0008 	lw	t7,8(t5)
     748:	acaf0020 	sw	t7,32(a1)
     74c:	0c000000 	jal	0 <func_80B699A0>
     750:	afa50034 	sw	a1,52(sp)
     754:	4600020d 	trunc.w.s	$f8,$f0
     758:	8fa50034 	lw	a1,52(sp)
     75c:	44094000 	mfc1	t1,$f8
     760:	00000000 	nop
     764:	a0a90025 	sb	t1,37(a1)
     768:	c7aa003c 	lwc1	$f10,60(sp)
     76c:	e4aa0030 	swc1	$f10,48(a1)
     770:	93aa0043 	lbu	t2,67(sp)
     774:	10000004 	b	788 <func_80B6A008+0x120>
     778:	a4aa002c 	sh	t2,44(a1)
     77c:	2841005a 	slti	at,v0,90
     780:	1420ffd6 	bnez	at,6dc <func_80B6A008+0x74>
     784:	24a50040 	addiu	a1,a1,64
     788:	8fbf0014 	lw	ra,20(sp)
     78c:	27bd0030 	addiu	sp,sp,48
     790:	03e00008 	jr	ra
     794:	00000000 	nop

00000798 <func_80B6A138>:
     798:	27bdffd8 	addiu	sp,sp,-40
     79c:	44800000 	mtc1	zero,$f0
     7a0:	3c014396 	lui	at,0x4396
     7a4:	44812000 	mtc1	at,$f4
     7a8:	afbf0014 	sw	ra,20(sp)
     7ac:	afa5002c 	sw	a1,44(sp)
     7b0:	24870780 	addiu	a3,a0,1920
     7b4:	2402001e 	li	v0,30
     7b8:	e7a00018 	swc1	$f0,24(sp)
     7bc:	e7a0001c 	swc1	$f0,28(sp)
     7c0:	e7a40020 	swc1	$f4,32(sp)
     7c4:	90ee0024 	lbu	t6,36(a3)
     7c8:	24420001 	addiu	v0,v0,1
     7cc:	00021400 	sll	v0,v0,0x10
     7d0:	15c00027 	bnez	t6,870 <func_80B6A138+0xd8>
     7d4:	00021403 	sra	v0,v0,0x10
     7d8:	240f0005 	li	t7,5
     7dc:	a0ef0024 	sb	t7,36(a3)
     7e0:	8fb8002c 	lw	t8,44(sp)
     7e4:	3c090000 	lui	t1,0x0
     7e8:	25290000 	addiu	t1,t1,0
     7ec:	8f080000 	lw	t0,0(t8)
     7f0:	00002825 	move	a1,zero
     7f4:	ace80000 	sw	t0,0(a3)
     7f8:	8f190004 	lw	t9,4(t8)
     7fc:	acf90004 	sw	t9,4(a3)
     800:	8f080008 	lw	t0,8(t8)
     804:	ace80008 	sw	t0,8(a3)
     808:	8d2b0000 	lw	t3,0(t1)
     80c:	aceb0018 	sw	t3,24(a3)
     810:	8d2a0004 	lw	t2,4(t1)
     814:	acea001c 	sw	t2,28(a3)
     818:	8d2b0008 	lw	t3,8(t1)
     81c:	aceb0020 	sw	t3,32(a3)
     820:	c4c60000 	lwc1	$f6,0(a2)
     824:	e4e60034 	swc1	$f6,52(a3)
     828:	c4c80004 	lwc1	$f8,4(a2)
     82c:	e4e80038 	swc1	$f8,56(a3)
     830:	c4ca0008 	lwc1	$f10,8(a2)
     834:	e4ea003c 	swc1	$f10,60(a3)
     838:	c4cc0004 	lwc1	$f12,4(a2)
     83c:	afa70028 	sw	a3,40(sp)
     840:	0c000000 	jal	0 <func_80B699A0>
     844:	afa60030 	sw	a2,48(sp)
     848:	8fa60030 	lw	a2,48(sp)
     84c:	24050001 	li	a1,1
     850:	0c000000 	jal	0 <func_80B699A0>
     854:	c4cc0000 	lwc1	$f12,0(a2)
     858:	8fa70028 	lw	a3,40(sp)
     85c:	27a40018 	addiu	a0,sp,24
     860:	0c000000 	jal	0 <func_80B699A0>
     864:	24e5000c 	addiu	a1,a3,12
     868:	10000005 	b	880 <func_80B6A138+0xe8>
     86c:	8fbf0014 	lw	ra,20(sp)
     870:	28410082 	slti	at,v0,130
     874:	1420ffd3 	bnez	at,7c4 <func_80B6A138+0x2c>
     878:	24e70040 	addiu	a3,a3,64
     87c:	8fbf0014 	lw	ra,20(sp)
     880:	27bd0028 	addiu	sp,sp,40
     884:	03e00008 	jr	ra
     888:	00000000 	nop

0000088c <func_80B6A22C>:
     88c:	27bdff70 	addiu	sp,sp,-144
     890:	afb00048 	sw	s0,72(sp)
     894:	afbf006c 	sw	ra,108(sp)
     898:	afa40090 	sw	a0,144(sp)
     89c:	afa50094 	sw	a1,148(sp)
     8a0:	3c100000 	lui	s0,0x0
     8a4:	afbe0068 	sw	s8,104(sp)
     8a8:	afb70064 	sw	s7,100(sp)
     8ac:	afb60060 	sw	s6,96(sp)
     8b0:	afb5005c 	sw	s5,92(sp)
     8b4:	afb40058 	sw	s4,88(sp)
     8b8:	afb30054 	sw	s3,84(sp)
     8bc:	afb20050 	sw	s2,80(sp)
     8c0:	afb1004c 	sw	s1,76(sp)
     8c4:	f7be0040 	sdc1	$f30,64(sp)
     8c8:	f7bc0038 	sdc1	$f28,56(sp)
     8cc:	f7ba0030 	sdc1	$f26,48(sp)
     8d0:	f7b80028 	sdc1	$f24,40(sp)
     8d4:	f7b60020 	sdc1	$f22,32(sp)
     8d8:	f7b40018 	sdc1	$f20,24(sp)
     8dc:	26100000 	addiu	s0,s0,0
     8e0:	240571ac 	li	a1,29100
     8e4:	24040001 	li	a0,1
     8e8:	0c000000 	jal	0 <func_80B699A0>
     8ec:	2406263a 	li	a2,9786
     8f0:	3c0142c8 	lui	at,0x42c8
     8f4:	4481f000 	mtc1	at,$f30
     8f8:	3c010000 	lui	at,0x0
     8fc:	c43c0000 	lwc1	$f28,0(at)
     900:	3c014496 	lui	at,0x4496
     904:	4481d000 	mtc1	at,$f26
     908:	3c010000 	lui	at,0x0
     90c:	c4380000 	lwc1	$f24,0(at)
     910:	3c010000 	lui	at,0x0
     914:	3c170000 	lui	s7,0x0
     918:	3c150000 	lui	s5,0x0
     91c:	3c130000 	lui	s3,0x0
     920:	4480b000 	mtc1	zero,$f22
     924:	26730000 	addiu	s3,s3,0
     928:	26b50000 	addiu	s5,s5,0
     92c:	26f70000 	addiu	s7,s7,0
     930:	c4340000 	lwc1	$f20,0(at)
     934:	00008825 	move	s1,zero
     938:	241e0004 	li	s8,4
     93c:	24160023 	li	s6,35
     940:	27b40080 	addiu	s4,sp,128
     944:	24120001 	li	s2,1
     948:	001170c0 	sll	t6,s1,0x3
     94c:	02ee1021 	addu	v0,s7,t6
     950:	90430000 	lbu	v1,0(v0)
     954:	52c30081 	beql	s6,v1,b5c <func_80B6A22C+0x2d0>
     958:	8fbf006c 	lw	ra,108(sp)
     95c:	a2030030 	sb	v1,48(s0)
     960:	844f0002 	lh	t7,2(v0)
     964:	4600f306 	mov.s	$f12,$f30
     968:	448f2000 	mtc1	t7,$f4
     96c:	00000000 	nop
     970:	468021a0 	cvt.s.w	$f6,$f4
     974:	e6060000 	swc1	$f6,0(s0)
     978:	84580004 	lh	t8,4(v0)
     97c:	44984000 	mtc1	t8,$f8
     980:	00000000 	nop
     984:	468042a0 	cvt.s.w	$f10,$f8
     988:	e60a0004 	swc1	$f10,4(s0)
     98c:	84590006 	lh	t9,6(v0)
     990:	e616000c 	swc1	$f22,12(s0)
     994:	e6160014 	swc1	$f22,20(s0)
     998:	44998000 	mtc1	t9,$f16
     99c:	00000000 	nop
     9a0:	468084a0 	cvt.s.w	$f18,$f16
     9a4:	0c000000 	jal	0 <func_80B699A0>
     9a8:	e6120008 	swc1	$f18,8(s0)
     9ac:	4600010d 	trunc.w.s	$f4,$f0
     9b0:	92020030 	lbu	v0,48(s0)
     9b4:	3c014448 	lui	at,0x4448
     9b8:	44813000 	mtc1	at,$f6
     9bc:	44092000 	mfc1	t1,$f4
     9c0:	e6060038 	swc1	$f6,56(s0)
     9c4:	16420015 	bne	s2,v0,a1c <func_80B6A22C+0x190>
     9c8:	a6090032 	sh	t1,50(s0)
     9cc:	0c000000 	jal	0 <func_80B699A0>
     9d0:	00000000 	nop
     9d4:	3c013e80 	lui	at,0x3e80
     9d8:	44814000 	mtc1	at,$f8
     9dc:	3c013f40 	lui	at,0x3f40
     9e0:	44818000 	mtc1	at,$f16
     9e4:	46080282 	mul.s	$f10,$f0,$f8
     9e8:	4600a306 	mov.s	$f12,$f20
     9ec:	46105480 	add.s	$f18,$f10,$f16
     9f0:	0c000000 	jal	0 <func_80B699A0>
     9f4:	e6120024 	swc1	$f18,36(s0)
     9f8:	e6000014 	swc1	$f0,20(s0)
     9fc:	926a0000 	lbu	t2,0(s3)
     a00:	164a0004 	bne	s2,t2,a14 <func_80B6A22C+0x188>
     a04:	00000000 	nop
     a08:	c6040024 	lwc1	$f4,36(s0)
     a0c:	46182182 	mul.s	$f6,$f4,$f24
     a10:	e6060024 	swc1	$f6,36(s0)
     a14:	1000004a 	b	b40 <func_80B6A22C+0x2b4>
     a18:	e61a0038 	swc1	$f26,56(s0)
     a1c:	17c2001d 	bne	s8,v0,a94 <func_80B6A22C+0x208>
     a20:	24010002 	li	at,2
     a24:	3c010000 	lui	at,0x0
     a28:	c4280000 	lwc1	$f8,0(at)
     a2c:	8e0c0000 	lw	t4,0(s0)
     a30:	e61a0038 	swc1	$f26,56(s0)
     a34:	e6080024 	swc1	$f8,36(s0)
     a38:	ae8c0000 	sw	t4,0(s4)
     a3c:	8e0b0004 	lw	t3,4(s0)
     a40:	3c014248 	lui	at,0x4248
     a44:	44818000 	mtc1	at,$f16
     a48:	ae8b0004 	sw	t3,4(s4)
     a4c:	8e0c0008 	lw	t4,8(s0)
     a50:	3c014060 	lui	at,0x4060
     a54:	44813000 	mtc1	at,$f6
     a58:	ae8c0008 	sw	t4,8(s4)
     a5c:	c7aa0084 	lwc1	$f10,132(sp)
     a60:	8ea50000 	lw	a1,0(s5)
     a64:	02202025 	move	a0,s1
     a68:	46105480 	add.s	$f18,$f10,$f16
     a6c:	02803025 	move	a2,s4
     a70:	24a50230 	addiu	a1,a1,560
     a74:	e7b20084 	swc1	$f18,132(sp)
     a78:	c6040024 	lwc1	$f4,36(s0)
     a7c:	46062202 	mul.s	$f8,$f4,$f6
     a80:	44074000 	mfc1	a3,$f8
     a84:	0c000000 	jal	0 <func_80B699A0>
     a88:	00000000 	nop
     a8c:	1000002d 	b	b44 <func_80B6A22C+0x2b8>
     a90:	26310001 	addiu	s1,s1,1
     a94:	14410017 	bne	v0,at,af4 <func_80B6A22C+0x268>
     a98:	00000000 	nop
     a9c:	0c000000 	jal	0 <func_80B699A0>
     aa0:	00000000 	nop
     aa4:	461c0282 	mul.s	$f10,$f0,$f28
     aa8:	3c013f00 	lui	at,0x3f00
     aac:	44818000 	mtc1	at,$f16
     ab0:	4600a306 	mov.s	$f12,$f20
     ab4:	46105480 	add.s	$f18,$f10,$f16
     ab8:	0c000000 	jal	0 <func_80B699A0>
     abc:	e6120024 	swc1	$f18,36(s0)
     ac0:	e6000010 	swc1	$f0,16(s0)
     ac4:	926d0000 	lbu	t5,0(s3)
     ac8:	322e0003 	andi	t6,s1,0x3
     acc:	564d001d 	bnel	s2,t5,b44 <func_80B6A22C+0x2b8>
     ad0:	26310001 	addiu	s1,s1,1
     ad4:	11c00005 	beqz	t6,aec <func_80B6A22C+0x260>
     ad8:	00000000 	nop
     adc:	c6040024 	lwc1	$f4,36(s0)
     ae0:	46182182 	mul.s	$f6,$f4,$f24
     ae4:	10000016 	b	b40 <func_80B6A22C+0x2b4>
     ae8:	e6060024 	swc1	$f6,36(s0)
     aec:	10000014 	b	b40 <func_80B6A22C+0x2b4>
     af0:	a2000030 	sb	zero,48(s0)
     af4:	0c000000 	jal	0 <func_80B699A0>
     af8:	00000000 	nop
     afc:	3c010000 	lui	at,0x0
     b00:	c4280000 	lwc1	$f8,0(at)
     b04:	4600a306 	mov.s	$f12,$f20
     b08:	46080282 	mul.s	$f10,$f0,$f8
     b0c:	461c5400 	add.s	$f16,$f10,$f28
     b10:	0c000000 	jal	0 <func_80B699A0>
     b14:	e6100024 	swc1	$f16,36(s0)
     b18:	3c01447a 	lui	at,0x447a
     b1c:	44819000 	mtc1	at,$f18
     b20:	e6000010 	swc1	$f0,16(s0)
     b24:	02202025 	move	a0,s1
     b28:	e6120038 	swc1	$f18,56(s0)
     b2c:	8ea50000 	lw	a1,0(s5)
     b30:	02003025 	move	a2,s0
     b34:	8e070024 	lw	a3,36(s0)
     b38:	0c000000 	jal	0 <func_80B699A0>
     b3c:	24a50230 	addiu	a1,a1,560
     b40:	26310001 	addiu	s1,s1,1
     b44:	00118c00 	sll	s1,s1,0x10
     b48:	00118c03 	sra	s1,s1,0x10
     b4c:	2a21008c 	slti	at,s1,140
     b50:	1420ff7d 	bnez	at,948 <func_80B6A22C+0xbc>
     b54:	2610003c 	addiu	s0,s0,60
     b58:	8fbf006c 	lw	ra,108(sp)
     b5c:	d7b40018 	ldc1	$f20,24(sp)
     b60:	d7b60020 	ldc1	$f22,32(sp)
     b64:	d7b80028 	ldc1	$f24,40(sp)
     b68:	d7ba0030 	ldc1	$f26,48(sp)
     b6c:	d7bc0038 	ldc1	$f28,56(sp)
     b70:	d7be0040 	ldc1	$f30,64(sp)
     b74:	8fb00048 	lw	s0,72(sp)
     b78:	8fb1004c 	lw	s1,76(sp)
     b7c:	8fb20050 	lw	s2,80(sp)
     b80:	8fb30054 	lw	s3,84(sp)
     b84:	8fb40058 	lw	s4,88(sp)
     b88:	8fb5005c 	lw	s5,92(sp)
     b8c:	8fb60060 	lw	s6,96(sp)
     b90:	8fb70064 	lw	s7,100(sp)
     b94:	8fbe0068 	lw	s8,104(sp)
     b98:	03e00008 	jr	ra
     b9c:	27bd0090 	addiu	sp,sp,144

00000ba0 <Fishing_Init>:
     ba0:	27bdff88 	addiu	sp,sp,-120
     ba4:	afb30050 	sw	s3,80(sp)
     ba8:	00a09825 	move	s3,a1
     bac:	afbf0054 	sw	ra,84(sp)
     bb0:	afb2004c 	sw	s2,76(sp)
     bb4:	3c050000 	lui	a1,0x0
     bb8:	00809025 	move	s2,a0
     bbc:	afb10048 	sw	s1,72(sp)
     bc0:	afb00044 	sw	s0,68(sp)
     bc4:	f7b60038 	sdc1	$f22,56(sp)
     bc8:	f7b40030 	sdc1	$f20,48(sp)
     bcc:	0c000000 	jal	0 <func_80B699A0>
     bd0:	24a50000 	addiu	a1,a1,0
     bd4:	44800000 	mtc1	zero,$f0
     bd8:	264400b4 	addiu	a0,s2,180
     bdc:	00003025 	move	a2,zero
     be0:	44050000 	mfc1	a1,$f0
     be4:	44070000 	mfc1	a3,$f0
     be8:	0c000000 	jal	0 <func_80B699A0>
     bec:	00000000 	nop
     bf0:	3c0e0000 	lui	t6,0x0
     bf4:	8dce0000 	lw	t6,0(t6)
     bf8:	3c110000 	lui	s1,0x0
     bfc:	26310000 	addiu	s1,s1,0
     c00:	85cf09de 	lh	t7,2526(t6)
     c04:	24180001 	li	t8,1
     c08:	3c010000 	lui	at,0x0
     c0c:	11e00005 	beqz	t7,c24 <Fishing_Init+0x84>
     c10:	3c100000 	lui	s0,0x0
     c14:	3c110000 	lui	s1,0x0
     c18:	26310000 	addiu	s1,s1,0
     c1c:	10000004 	b	c30 <Fishing_Init+0x90>
     c20:	a0380000 	sb	t8,0(at)
     c24:	8e390004 	lw	t9,4(s1)
     c28:	3c010000 	lui	at,0x0
     c2c:	a0390000 	sb	t9,0(at)
     c30:	8642001c 	lh	v0,28(s2)
     c34:	26100000 	addiu	s0,s0,0
     c38:	28410064 	slti	at,v0,100
     c3c:	102001a7 	beqz	at,12dc <Fishing_Init+0x73c>
     c40:	3c010000 	lui	at,0x0
     c44:	a0200000 	sb	zero,0(at)
     c48:	3c010000 	lui	at,0x0
     c4c:	ac320000 	sw	s2,0(at)
     c50:	8e050000 	lw	a1,0(s0)
     c54:	02602025 	move	a0,s3
     c58:	0c000000 	jal	0 <func_80B699A0>
     c5c:	24a50230 	addiu	a1,a1,560
     c60:	8e030000 	lw	v1,0(s0)
     c64:	3c070000 	lui	a3,0x0
     c68:	24e70000 	addiu	a3,a3,0
     c6c:	24680250 	addiu	t0,v1,592
     c70:	afa80010 	sw	t0,16(sp)
     c74:	02602025 	move	a0,s3
     c78:	02403025 	move	a2,s2
     c7c:	0c000000 	jal	0 <func_80B699A0>
     c80:	24650230 	addiu	a1,v1,560
     c84:	24090001 	li	t1,1
     c88:	a649001c 	sh	t1,28(s2)
     c8c:	265001d8 	addiu	s0,s2,472
     c90:	3c060601 	lui	a2,0x601
     c94:	3c070600 	lui	a3,0x600
     c98:	24e7453c 	addiu	a3,a3,17724
     c9c:	24c685f8 	addiu	a2,a2,-31240
     ca0:	02002825 	move	a1,s0
     ca4:	afa00018 	sw	zero,24(sp)
     ca8:	afa00014 	sw	zero,20(sp)
     cac:	afa00010 	sw	zero,16(sp)
     cb0:	0c000000 	jal	0 <func_80B699A0>
     cb4:	02602025 	move	a0,s3
     cb8:	3c050600 	lui	a1,0x600
     cbc:	24a5453c 	addiu	a1,a1,17724
     cc0:	02002025 	move	a0,s0
     cc4:	0c000000 	jal	0 <func_80B699A0>
     cc8:	24060000 	li	a2,0
     ccc:	3c014320 	lui	at,0x4320
     cd0:	44812000 	mtc1	at,$f4
     cd4:	3c01c000 	lui	at,0xc000
     cd8:	44813000 	mtc1	at,$f6
     cdc:	3c014497 	lui	at,0x4497
     ce0:	44814000 	mtc1	at,$f8
     ce4:	3c0a0000 	lui	t2,0x0
     ce8:	3c0b0000 	lui	t3,0x0
     cec:	254a0000 	addiu	t2,t2,0
     cf0:	256b0000 	addiu	t3,t3,0
     cf4:	240ca000 	li	t4,-24576
     cf8:	3c053c34 	lui	a1,0x3c34
     cfc:	ae4a0130 	sw	t2,304(s2)
     d00:	ae4b0134 	sw	t3,308(s2)
     d04:	a64c00b6 	sh	t4,182(s2)
     d08:	34a53958 	ori	a1,a1,0x3958
     d0c:	02402025 	move	a0,s2
     d10:	e6440024 	swc1	$f4,36(s2)
     d14:	e6460028 	swc1	$f6,40(s2)
     d18:	0c000000 	jal	0 <func_80B699A0>
     d1c:	e648002c 	swc1	$f8,44(s2)
     d20:	8e4d0028 	lw	t5,40(s2)
     d24:	3c014296 	lui	at,0x4296
     d28:	8e4e0024 	lw	t6,36(s2)
     d2c:	ae4d003c 	sw	t5,60(s2)
     d30:	c64a003c 	lwc1	$f10,60(s2)
     d34:	44818000 	mtc1	at,$f16
     d38:	8e4f0004 	lw	t7,4(s2)
     d3c:	ae4e0038 	sw	t6,56(s2)
     d40:	46105480 	add.s	$f18,$f10,$f16
     d44:	8e4e002c 	lw	t6,44(s2)
     d48:	35f80009 	ori	t8,t7,0x9
     d4c:	ae580004 	sw	t8,4(s2)
     d50:	e652003c 	swc1	$f18,60(s2)
     d54:	3c190000 	lui	t9,0x0
     d58:	ae4e0040 	sw	t6,64(s2)
     d5c:	93390000 	lbu	t9,0(t9)
     d60:	24010001 	li	at,1
     d64:	2402000a 	li	v0,10
     d68:	1321000c 	beq	t9,at,d9c <Fishing_Init+0x1fc>
     d6c:	3c100000 	lui	s0,0x0
     d70:	8e280ec0 	lw	t0,3776(s1)
     d74:	240a0001 	li	t2,1
     d78:	3c010000 	lui	at,0x0
     d7c:	31091000 	andi	t1,t0,0x1000
     d80:	11200004 	beqz	t1,d94 <Fishing_Init+0x1f4>
     d84:	00000000 	nop
     d88:	3c010000 	lui	at,0x0
     d8c:	10000006 	b	da8 <Fishing_Init+0x208>
     d90:	a0200000 	sb	zero,0(at)
     d94:	10000004 	b	da8 <Fishing_Init+0x208>
     d98:	a02a0000 	sb	t2,0(at)
     d9c:	240b0002 	li	t3,2
     da0:	3c010000 	lui	at,0x0
     da4:	a02b0000 	sb	t3,0(at)
     da8:	240c0014 	li	t4,20
     dac:	3c010000 	lui	at,0x0
     db0:	a42c0000 	sh	t4,0(at)
     db4:	3c010001 	lui	at,0x1
     db8:	26100000 	addiu	s0,s0,0
     dbc:	00330821 	addu	at,at,s3
     dc0:	ac301e10 	sw	s0,7696(at)
     dc4:	3c010000 	lui	at,0x0
     dc8:	240d0001 	li	t5,1
     dcc:	a42d0000 	sh	t5,0(at)
     dd0:	3c010000 	lui	at,0x0
     dd4:	a4200000 	sh	zero,0(at)
     dd8:	3c010000 	lui	at,0x0
     ddc:	3c041001 	lui	a0,0x1001
     de0:	a4220000 	sh	v0,0(at)
     de4:	0c000000 	jal	0 <func_80B699A0>
     de8:	348400ff 	ori	a0,a0,0xff
     dec:	3c0e0000 	lui	t6,0x0
     df0:	91ce0000 	lbu	t6,0(t6)
     df4:	24010001 	li	at,1
     df8:	3c060000 	lui	a2,0x0
     dfc:	15c1000f 	bne	t6,at,e3c <Fishing_Init+0x29c>
     e00:	24c60000 	addiu	a2,a2,0
     e04:	8e220ec0 	lw	v0,3776(s1)
     e08:	3c014220 	lui	at,0x4220
     e0c:	3043007f 	andi	v1,v0,0x7f
     e10:	50600007 	beqzl	v1,e30 <Fishing_Init+0x290>
     e14:	44814000 	mtc1	at,$f8
     e18:	44832000 	mtc1	v1,$f4
     e1c:	3c010000 	lui	at,0x0
     e20:	468021a0 	cvt.s.w	$f6,$f4
     e24:	10000013 	b	e74 <Fishing_Init+0x2d4>
     e28:	e4260000 	swc1	$f6,0(at)
     e2c:	44814000 	mtc1	at,$f8
     e30:	3c010000 	lui	at,0x0
     e34:	1000000f 	b	e74 <Fishing_Init+0x2d4>
     e38:	e4280000 	swc1	$f8,0(at)
     e3c:	8e220ec0 	lw	v0,3776(s1)
     e40:	3c017f00 	lui	at,0x7f00
     e44:	00411824 	and	v1,v0,at
     e48:	10600007 	beqz	v1,e68 <Fishing_Init+0x2c8>
     e4c:	3c014234 	lui	at,0x4234
     e50:	00037e03 	sra	t7,v1,0x18
     e54:	448f5000 	mtc1	t7,$f10
     e58:	3c010000 	lui	at,0x0
     e5c:	46805420 	cvt.s.w	$f16,$f10
     e60:	10000004 	b	e74 <Fishing_Init+0x2d4>
     e64:	e4300000 	swc1	$f16,0(at)
     e68:	44819000 	mtc1	at,$f18
     e6c:	3c010000 	lui	at,0x0
     e70:	e4320000 	swc1	$f18,0(at)
     e74:	3c0100ff 	lui	at,0xff
     e78:	0041c024 	and	t8,v0,at
     e7c:	00184403 	sra	t0,t8,0x10
     e80:	31090007 	andi	t1,t0,0x7
     e84:	24010007 	li	at,7
     e88:	15210009 	bne	t1,at,eb0 <Fishing_Init+0x310>
     e8c:	a0c80000 	sb	t0,0(a2)
     e90:	3c010001 	lui	at,0x1
     e94:	00330821 	addu	at,at,s3
     e98:	240a005a 	li	t2,90
     e9c:	a42a1d30 	sh	t2,7472(at)
     ea0:	24050001 	li	a1,1
     ea4:	3c010000 	lui	at,0x0
     ea8:	10000007 	b	ec8 <Fishing_Init+0x328>
     eac:	a0250000 	sb	a1,0(at)
     eb0:	3c010001 	lui	at,0x1
     eb4:	00330821 	addu	at,at,s3
     eb8:	240b0028 	li	t3,40
     ebc:	a42b1d30 	sh	t3,7472(at)
     ec0:	3c010000 	lui	at,0x0
     ec4:	a0200000 	sb	zero,0(at)
     ec8:	90cc0000 	lbu	t4,0(a2)
     ecc:	24010006 	li	at,6
     ed0:	2403003c 	li	v1,60
     ed4:	318d0007 	andi	t5,t4,0x7
     ed8:	11a10006 	beq	t5,at,ef4 <Fishing_Init+0x354>
     edc:	3c040000 	lui	a0,0x0
     ee0:	3c0e0000 	lui	t6,0x0
     ee4:	8dce0000 	lw	t6,0(t6)
     ee8:	3c010000 	lui	at,0x0
     eec:	85cf09da 	lh	t7,2522(t6)
     ef0:	11e00012 	beqz	t7,f3c <Fishing_Init+0x39c>
     ef4:	3c020000 	lui	v0,0x0
     ef8:	8c420000 	lw	v0,0(v0)
     efc:	24180064 	li	t8,100
     f00:	3c010000 	lui	at,0x0
     f04:	a0380000 	sb	t8,0(at)
     f08:	845909da 	lh	t9,2522(v0)
     f0c:	5320000d 	beqzl	t9,f44 <Fishing_Init+0x3a4>
     f10:	00008825 	move	s1,zero
     f14:	a44009da 	sh	zero,2522(v0)
     f18:	8e280ec0 	lw	t0,3776(s1)
     f1c:	3c01ff00 	lui	at,0xff00
     f20:	3421ffff 	ori	at,at,0xffff
     f24:	01014824 	and	t1,t0,at
     f28:	3c010006 	lui	at,0x6
     f2c:	ae290ec0 	sw	t1,3776(s1)
     f30:	01215825 	or	t3,t1,at
     f34:	10000002 	b	f40 <Fishing_Init+0x3a0>
     f38:	ae2b0ec0 	sw	t3,3776(s1)
     f3c:	a0200000 	sb	zero,0(at)
     f40:	00008825 	move	s1,zero
     f44:	00116180 	sll	t4,s1,0x6
     f48:	26310001 	addiu	s1,s1,1
     f4c:	00118c00 	sll	s1,s1,0x10
     f50:	00118c03 	sra	s1,s1,0x10
     f54:	2a210082 	slti	at,s1,130
     f58:	020c6821 	addu	t5,s0,t4
     f5c:	1420fff9 	bnez	at,f44 <Fishing_Init+0x3a4>
     f60:	a1a00024 	sb	zero,36(t5)
     f64:	3c020000 	lui	v0,0x0
     f68:	24420000 	addiu	v0,v0,0
     f6c:	00008825 	move	s1,zero
     f70:	02230019 	multu	s1,v1
     f74:	26310001 	addiu	s1,s1,1
     f78:	00118c00 	sll	s1,s1,0x10
     f7c:	00118c03 	sra	s1,s1,0x10
     f80:	2a21008c 	slti	at,s1,140
     f84:	00007012 	mflo	t6
     f88:	004e7821 	addu	t7,v0,t6
     f8c:	1420fff8 	bnez	at,f70 <Fishing_Init+0x3d0>
     f90:	a1e00030 	sb	zero,48(t7)
     f94:	3c010000 	lui	at,0x0
     f98:	c4240000 	lwc1	$f4,0(at)
     f9c:	3c020000 	lui	v0,0x0
     fa0:	24420000 	addiu	v0,v0,0
     fa4:	3c010000 	lui	at,0x0
     fa8:	e4440000 	swc1	$f4,0(v0)
     fac:	c4260000 	lwc1	$f6,0(at)
     fb0:	3c030000 	lui	v1,0x0
     fb4:	24630000 	addiu	v1,v1,0
     fb8:	3c010000 	lui	at,0x0
     fbc:	e4660000 	swc1	$f6,0(v1)
     fc0:	c4280000 	lwc1	$f8,0(at)
     fc4:	3c014434 	lui	at,0x4434
     fc8:	24840000 	addiu	a0,a0,0
     fcc:	4481b000 	mtc1	at,$f22
     fd0:	00008825 	move	s1,zero
     fd4:	e4880000 	swc1	$f8,0(a0)
     fd8:	0011c0c0 	sll	t8,s1,0x3
     fdc:	0311c021 	addu	t8,t8,s1
     fe0:	3c190000 	lui	t9,0x0
     fe4:	27390000 	addiu	t9,t9,0
     fe8:	0018c0c0 	sll	t8,t8,0x3
     fec:	3c020000 	lui	v0,0x0
     ff0:	3c030000 	lui	v1,0x0
     ff4:	3c040000 	lui	a0,0x0
     ff8:	24050001 	li	a1,1
     ffc:	03198021 	addu	s0,t8,t9
    1000:	2a210015 	slti	at,s1,21
    1004:	24840000 	addiu	a0,a0,0
    1008:	24630000 	addiu	v1,v1,0
    100c:	24420000 	addiu	v0,v0,0
    1010:	1020000d 	beqz	at,1048 <Fishing_Init+0x4a8>
    1014:	a2050000 	sb	a1,0(s0)
    1018:	0c000000 	jal	0 <func_80B699A0>
    101c:	c44c0000 	lwc1	$f12,0(v0)
    1020:	46160502 	mul.s	$f20,$f0,$f22
    1024:	3c010000 	lui	at,0x0
    1028:	e6140004 	swc1	$f20,4(s0)
    102c:	e6140010 	swc1	$f20,16(s0)
    1030:	0c000000 	jal	0 <func_80B699A0>
    1034:	c42c0000 	lwc1	$f12,0(at)
    1038:	46160502 	mul.s	$f20,$f0,$f22
    103c:	e614000c 	swc1	$f20,12(s0)
    1040:	1000001b 	b	10b0 <Fishing_Init+0x510>
    1044:	e6140018 	swc1	$f20,24(s0)
    1048:	2a210029 	slti	at,s1,41
    104c:	1020000d 	beqz	at,1084 <Fishing_Init+0x4e4>
    1050:	00000000 	nop
    1054:	0c000000 	jal	0 <func_80B699A0>
    1058:	c46c0000 	lwc1	$f12,0(v1)
    105c:	46160502 	mul.s	$f20,$f0,$f22
    1060:	3c010000 	lui	at,0x0
    1064:	e6140004 	swc1	$f20,4(s0)
    1068:	e6140010 	swc1	$f20,16(s0)
    106c:	0c000000 	jal	0 <func_80B699A0>
    1070:	c42c0000 	lwc1	$f12,0(at)
    1074:	46160502 	mul.s	$f20,$f0,$f22
    1078:	e614000c 	swc1	$f20,12(s0)
    107c:	1000000c 	b	10b0 <Fishing_Init+0x510>
    1080:	e6140018 	swc1	$f20,24(s0)
    1084:	0c000000 	jal	0 <func_80B699A0>
    1088:	c48c0000 	lwc1	$f12,0(a0)
    108c:	46160502 	mul.s	$f20,$f0,$f22
    1090:	3c010000 	lui	at,0x0
    1094:	e6140004 	swc1	$f20,4(s0)
    1098:	e6140010 	swc1	$f20,16(s0)
    109c:	0c000000 	jal	0 <func_80B699A0>
    10a0:	c42c0000 	lwc1	$f12,0(at)
    10a4:	46160502 	mul.s	$f20,$f0,$f22
    10a8:	e614000c 	swc1	$f20,12(s0)
    10ac:	e6140018 	swc1	$f20,24(s0)
    10b0:	3c01c20c 	lui	at,0xc20c
    10b4:	44810000 	mtc1	at,$f0
    10b8:	3c0142c8 	lui	at,0x42c8
    10bc:	44816000 	mtc1	at,$f12
    10c0:	e6000008 	swc1	$f0,8(s0)
    10c4:	0c000000 	jal	0 <func_80B699A0>
    10c8:	e6000014 	swc1	$f0,20(s0)
    10cc:	4600028d 	trunc.w.s	$f10,$f0
    10d0:	a600003c 	sh	zero,60(s0)
    10d4:	a600003e 	sh	zero,62(s0)
    10d8:	a6000040 	sh	zero,64(s0)
    10dc:	44095000 	mfc1	t1,$f10
    10e0:	3c0a0000 	lui	t2,0x0
    10e4:	24010001 	li	at,1
    10e8:	a6090002 	sh	t1,2(s0)
    10ec:	914a0000 	lbu	t2,0(t2)
    10f0:	1141000e 	beq	t2,at,112c <Fishing_Init+0x58c>
    10f4:	2a21000f 	slti	at,s1,15
    10f8:	14200002 	bnez	at,1104 <Fishing_Init+0x564>
    10fc:	2a210014 	slti	at,s1,20
    1100:	14200009 	bnez	at,1128 <Fishing_Init+0x588>
    1104:	2a210023 	slti	at,s1,35
    1108:	14200002 	bnez	at,1114 <Fishing_Init+0x574>
    110c:	2a210028 	slti	at,s1,40
    1110:	14200005 	bnez	at,1128 <Fishing_Init+0x588>
    1114:	2a210037 	slti	at,s1,55
    1118:	14200004 	bnez	at,112c <Fishing_Init+0x58c>
    111c:	2a21003c 	slti	at,s1,60
    1120:	50200003 	beqzl	at,1130 <Fishing_Init+0x590>
    1124:	26310001 	addiu	s1,s1,1
    1128:	a2000000 	sb	zero,0(s0)
    112c:	26310001 	addiu	s1,s1,1
    1130:	00118c00 	sll	s1,s1,0x10
    1134:	00118c03 	sra	s1,s1,0x10
    1138:	2a21003c 	slti	at,s1,60
    113c:	5420ffa7 	bnezl	at,fdc <Fishing_Init+0x43c>
    1140:	0011c0c0 	sll	t8,s1,0x3
    1144:	02402025 	move	a0,s2
    1148:	0c000000 	jal	0 <func_80B699A0>
    114c:	02602825 	move	a1,s3
    1150:	3c014254 	lui	at,0x4254
    1154:	44818000 	mtc1	at,$f16
    1158:	3c01c188 	lui	at,0xc188
    115c:	44819000 	mtc1	at,$f18
    1160:	3c010000 	lui	at,0x0
    1164:	c4240000 	lwc1	$f4,0(at)
    1168:	26641c24 	addiu	a0,s3,7204
    116c:	240b0300 	li	t3,768
    1170:	afab0028 	sw	t3,40(sp)
    1174:	afa4005c 	sw	a0,92(sp)
    1178:	02402825 	move	a1,s2
    117c:	02603025 	move	a2,s3
    1180:	24070141 	li	a3,321
    1184:	afa0001c 	sw	zero,28(sp)
    1188:	afa00020 	sw	zero,32(sp)
    118c:	afa00024 	sw	zero,36(sp)
    1190:	e7b00010 	swc1	$f16,16(sp)
    1194:	e7b20014 	swc1	$f18,20(sp)
    1198:	0c000000 	jal	0 <func_80B699A0>
    119c:	e7a40018 	swc1	$f4,24(sp)
    11a0:	44800000 	mtc1	zero,$f0
    11a4:	8fb2005c 	lw	s2,92(sp)
    11a8:	240c00c8 	li	t4,200
    11ac:	44070000 	mfc1	a3,$f0
    11b0:	afac0024 	sw	t4,36(sp)
    11b4:	02602825 	move	a1,s3
    11b8:	240600fe 	li	a2,254
    11bc:	afa00018 	sw	zero,24(sp)
    11c0:	afa0001c 	sw	zero,28(sp)
    11c4:	afa00020 	sw	zero,32(sp)
    11c8:	02402025 	move	a0,s2
    11cc:	e7a00010 	swc1	$f0,16(sp)
    11d0:	0c000000 	jal	0 <func_80B699A0>
    11d4:	e7a00014 	swc1	$f0,20(sp)
    11d8:	3c0d0000 	lui	t5,0x0
    11dc:	8dad0000 	lw	t5,0(t5)
    11e0:	24010001 	li	at,1
    11e4:	3c0f0000 	lui	t7,0x0
    11e8:	85ae09d6 	lh	t6,2518(t5)
    11ec:	3c190000 	lui	t9,0x0
    11f0:	00008825 	move	s1,zero
    11f4:	11c10007 	beq	t6,at,1214 <Fishing_Init+0x674>
    11f8:	00000000 	nop
    11fc:	91ef0000 	lbu	t7,0(t7)
    1200:	24010003 	li	at,3
    1204:	2402000f 	li	v0,15
    1208:	31f80003 	andi	t8,t7,0x3
    120c:	17010009 	bne	t8,at,1234 <Fishing_Init+0x694>
    1210:	00000000 	nop
    1214:	93390000 	lbu	t9,0(t9)
    1218:	24010001 	li	at,1
    121c:	13210003 	beq	t9,at,122c <Fishing_Init+0x68c>
    1220:	00000000 	nop
    1224:	10000003 	b	1234 <Fishing_Init+0x694>
    1228:	24020010 	li	v0,16
    122c:	10000001 	b	1234 <Fishing_Init+0x694>
    1230:	24020011 	li	v0,17
    1234:	184000b0 	blez	v0,14f8 <Fishing_Init+0x958>
    1238:	00408025 	move	s0,v0
    123c:	3c014780 	lui	at,0x4780
    1240:	4481a000 	mtc1	at,$f20
    1244:	00000000 	nop
    1248:	0c000000 	jal	0 <func_80B699A0>
    124c:	4600a306 	mov.s	$f12,$f20
    1250:	3c090000 	lui	t1,0x0
    1254:	25290000 	addiu	t1,t1,0
    1258:	00114100 	sll	t0,s1,0x4
    125c:	01091021 	addu	v0,t0,t1
    1260:	844a0002 	lh	t2,2(v0)
    1264:	844b0004 	lh	t3,4(v0)
    1268:	844c0006 	lh	t4,6(v0)
    126c:	448a3000 	mtc1	t2,$f6
    1270:	448b4000 	mtc1	t3,$f8
    1274:	448c8000 	mtc1	t4,$f16
    1278:	468031a0 	cvt.s.w	$f6,$f6
    127c:	262f0064 	addiu	t7,s1,100
    1280:	afaf0024 	sw	t7,36(sp)
    1284:	02402025 	move	a0,s2
    1288:	02602825 	move	a1,s3
    128c:	4600010d 	trunc.w.s	$f4,$f0
    1290:	44073000 	mfc1	a3,$f6
    1294:	240600fe 	li	a2,254
    1298:	468042a0 	cvt.s.w	$f10,$f8
    129c:	440e2000 	mfc1	t6,$f4
    12a0:	afa00018 	sw	zero,24(sp)
    12a4:	afa00020 	sw	zero,32(sp)
    12a8:	afae001c 	sw	t6,28(sp)
    12ac:	468084a0 	cvt.s.w	$f18,$f16
    12b0:	e7aa0010 	swc1	$f10,16(sp)
    12b4:	0c000000 	jal	0 <func_80B699A0>
    12b8:	e7b20014 	swc1	$f18,20(sp)
    12bc:	26310001 	addiu	s1,s1,1
    12c0:	00118c00 	sll	s1,s1,0x10
    12c4:	00118c03 	sra	s1,s1,0x10
    12c8:	0230082a 	slt	at,s1,s0
    12cc:	1420ffde 	bnez	at,1248 <Fishing_Init+0x6a8>
    12d0:	00000000 	nop
    12d4:	10000089 	b	14fc <Fishing_Init+0x95c>
    12d8:	8fbf0054 	lw	ra,84(sp)
    12dc:	28410073 	slti	at,v0,115
    12e0:	14200004 	bnez	at,12f4 <Fishing_Init+0x754>
    12e4:	3c110600 	lui	s1,0x600
    12e8:	240100c8 	li	at,200
    12ec:	14410012 	bne	v0,at,1338 <Fishing_Init+0x798>
    12f0:	02602025 	move	a0,s3
    12f4:	2631007c 	addiu	s1,s1,124
    12f8:	265001d8 	addiu	s0,s2,472
    12fc:	3c060600 	lui	a2,0x600
    1300:	24c629c0 	addiu	a2,a2,10688
    1304:	02002825 	move	a1,s0
    1308:	02203825 	move	a3,s1
    130c:	02602025 	move	a0,s3
    1310:	afa00010 	sw	zero,16(sp)
    1314:	afa00014 	sw	zero,20(sp)
    1318:	0c000000 	jal	0 <func_80B699A0>
    131c:	afa00018 	sw	zero,24(sp)
    1320:	02002025 	move	a0,s0
    1324:	02202825 	move	a1,s1
    1328:	0c000000 	jal	0 <func_80B699A0>
    132c:	24060000 	li	a2,0
    1330:	10000010 	b	1374 <Fishing_Init+0x7d4>
    1334:	00000000 	nop
    1338:	3c110601 	lui	s1,0x601
    133c:	2631cfe0 	addiu	s1,s1,-12320
    1340:	265001d8 	addiu	s0,s2,472
    1344:	3c060601 	lui	a2,0x601
    1348:	24c61058 	addiu	a2,a2,4184
    134c:	02002825 	move	a1,s0
    1350:	02203825 	move	a3,s1
    1354:	afa00010 	sw	zero,16(sp)
    1358:	afa00014 	sw	zero,20(sp)
    135c:	0c000000 	jal	0 <func_80B699A0>
    1360:	afa00018 	sw	zero,24(sp)
    1364:	02002025 	move	a0,s0
    1368:	02202825 	move	a1,s1
    136c:	0c000000 	jal	0 <func_80B699A0>
    1370:	24060000 	li	a2,0
    1374:	0c000000 	jal	0 <func_80B699A0>
    1378:	02002025 	move	a0,s0
    137c:	8658001c 	lh	t8,28(s2)
    1380:	240100c8 	li	at,200
    1384:	2402000a 	li	v0,10
    1388:	17010012 	bne	t8,at,13d4 <Fishing_Init+0x834>
    138c:	3c0c0000 	lui	t4,0x0
    1390:	24190064 	li	t9,100
    1394:	a6590158 	sh	t9,344(s2)
    1398:	02602025 	move	a0,s3
    139c:	26651c24 	addiu	a1,s3,7204
    13a0:	02403025 	move	a2,s2
    13a4:	0c000000 	jal	0 <func_80B699A0>
    13a8:	24070006 	li	a3,6
    13ac:	8e480004 	lw	t0,4(s2)
    13b0:	a240001f 	sb	zero,31(s2)
    13b4:	02602025 	move	a0,s3
    13b8:	35090009 	ori	t1,t0,0x9
    13bc:	ae490004 	sw	t1,4(s2)
    13c0:	266507a8 	addiu	a1,s3,1960
    13c4:	0c000000 	jal	0 <func_80B699A0>
    13c8:	26460220 	addiu	a2,s2,544
    13cc:	1000004a 	b	14f8 <Fishing_Init+0x958>
    13d0:	ae42021c 	sw	v0,540(s2)
    13d4:	864a001c 	lh	t2,28(s2)
    13d8:	864d001c 	lh	t5,28(s2)
    13dc:	a6420158 	sh	v0,344(s2)
    13e0:	000a5900 	sll	t3,t2,0x4
    13e4:	a642015a 	sh	v0,346(s2)
    13e8:	018b6021 	addu	t4,t4,t3
    13ec:	918c0000 	lbu	t4,0(t4)
    13f0:	3c010000 	lui	at,0x0
    13f4:	000d7100 	sll	t6,t5,0x4
    13f8:	864f001c 	lh	t7,28(s2)
    13fc:	002e0821 	addu	at,at,t6
    1400:	a24c0150 	sb	t4,336(s2)
    1404:	c4260000 	lwc1	$f6,0(at)
    1408:	3c190000 	lui	t9,0x0
    140c:	000fc100 	sll	t8,t7,0x4
    1410:	0338c821 	addu	t9,t9,t8
    1414:	e64601a8 	swc1	$f6,424(s2)
    1418:	93390000 	lbu	t9,0(t9)
    141c:	3c014f80 	lui	at,0x4f80
    1420:	44994000 	mtc1	t9,$f8
    1424:	07210004 	bgez	t9,1438 <Fishing_Init+0x898>
    1428:	468042a0 	cvt.s.w	$f10,$f8
    142c:	44818000 	mtc1	at,$f16
    1430:	00000000 	nop
    1434:	46105280 	add.s	$f10,$f10,$f16
    1438:	e64a01ac 	swc1	$f10,428(s2)
    143c:	3c010000 	lui	at,0x0
    1440:	0c000000 	jal	0 <func_80B699A0>
    1444:	c42c0000 	lwc1	$f12,0(at)
    1448:	c65201ac 	lwc1	$f18,428(s2)
    144c:	3c014282 	lui	at,0x4282
    1450:	44814000 	mtc1	at,$f8
    1454:	46009100 	add.s	$f4,$f18,$f0
    1458:	e64401ac 	swc1	$f4,428(s2)
    145c:	c64601ac 	lwc1	$f6,428(s2)
    1460:	4606403e 	c.le.s	$f8,$f6
    1464:	00000000 	nop
    1468:	4500000f 	bc1f	14a8 <Fishing_Init+0x908>
    146c:	00000000 	nop
    1470:	0c000000 	jal	0 <func_80B699A0>
    1474:	00000000 	nop
    1478:	3c010000 	lui	at,0x0
    147c:	c4300000 	lwc1	$f16,0(at)
    1480:	3c010000 	lui	at,0x0
    1484:	4610003c 	c.lt.s	$f0,$f16
    1488:	00000000 	nop
    148c:	45000006 	bc1f	14a8 <Fishing_Init+0x908>
    1490:	00000000 	nop
    1494:	0c000000 	jal	0 <func_80B699A0>
    1498:	c42c0000 	lwc1	$f12,0(at)
    149c:	c64a01ac 	lwc1	$f10,428(s2)
    14a0:	46005480 	add.s	$f18,$f10,$f0
    14a4:	e65201ac 	swc1	$f18,428(s2)
    14a8:	3c080000 	lui	t0,0x0
    14ac:	8d080000 	lw	t0,0(t0)
    14b0:	3c090000 	lui	t1,0x0
    14b4:	850209e0 	lh	v0,2528(t0)
    14b8:	10400007 	beqz	v0,14d8 <Fishing_Init+0x938>
    14bc:	00000000 	nop
    14c0:	44822000 	mtc1	v0,$f4
    14c4:	3c0142a0 	lui	at,0x42a0
    14c8:	44814000 	mtc1	at,$f8
    14cc:	468021a0 	cvt.s.w	$f6,$f4
    14d0:	46083400 	add.s	$f16,$f6,$f8
    14d4:	e65001ac 	swc1	$f16,428(s2)
    14d8:	91290000 	lbu	t1,0(t1)
    14dc:	24010001 	li	at,1
    14e0:	15210005 	bne	t1,at,14f8 <Fishing_Init+0x958>
    14e4:	3c010000 	lui	at,0x0
    14e8:	c4320000 	lwc1	$f18,0(at)
    14ec:	c64a01ac 	lwc1	$f10,428(s2)
    14f0:	46125102 	mul.s	$f4,$f10,$f18
    14f4:	e64401ac 	swc1	$f4,428(s2)
    14f8:	8fbf0054 	lw	ra,84(sp)
    14fc:	d7b40030 	ldc1	$f20,48(sp)
    1500:	d7b60038 	ldc1	$f22,56(sp)
    1504:	8fb00044 	lw	s0,68(sp)
    1508:	8fb10048 	lw	s1,72(sp)
    150c:	8fb2004c 	lw	s2,76(sp)
    1510:	8fb30050 	lw	s3,80(sp)
    1514:	03e00008 	jr	ra
    1518:	27bd0078 	addiu	sp,sp,120

0000151c <Fishing_Destroy>:
    151c:	27bdffe8 	addiu	sp,sp,-24
    1520:	afbf0014 	sw	ra,20(sp)
    1524:	afa40018 	sw	a0,24(sp)
    1528:	248401d8 	addiu	a0,a0,472
    152c:	0c000000 	jal	0 <func_80B699A0>
    1530:	afa5001c 	sw	a1,28(sp)
    1534:	8fa30018 	lw	v1,24(sp)
    1538:	8fa7001c 	lw	a3,28(sp)
    153c:	240100c8 	li	at,200
    1540:	8462001c 	lh	v0,28(v1)
    1544:	00e02025 	move	a0,a3
    1548:	24e507a8 	addiu	a1,a3,1960
    154c:	54410006 	bnel	v0,at,1568 <Fishing_Destroy+0x4c>
    1550:	24010001 	li	at,1
    1554:	0c000000 	jal	0 <func_80B699A0>
    1558:	8c66021c 	lw	a2,540(v1)
    155c:	10000007 	b	157c <Fishing_Destroy+0x60>
    1560:	8fbf0014 	lw	ra,20(sp)
    1564:	24010001 	li	at,1
    1568:	14410003 	bne	v0,at,1578 <Fishing_Destroy+0x5c>
    156c:	00e02025 	move	a0,a3
    1570:	0c000000 	jal	0 <func_80B699A0>
    1574:	24650230 	addiu	a1,v1,560
    1578:	8fbf0014 	lw	ra,20(sp)
    157c:	27bd0018 	addiu	sp,sp,24
    1580:	03e00008 	jr	ra
    1584:	00000000 	nop

00001588 <func_80B6AF28>:
    1588:	27bdff48 	addiu	sp,sp,-184
    158c:	f7bc0040 	sdc1	$f28,64(sp)
    1590:	3c014466 	lui	at,0x4466
    1594:	4481e000 	mtc1	at,$f28
    1598:	f7ba0038 	sdc1	$f26,56(sp)
    159c:	3c01c1a0 	lui	at,0xc1a0
    15a0:	4481d000 	mtc1	at,$f26
    15a4:	f7b80030 	sdc1	$f24,48(sp)
    15a8:	3c010000 	lui	at,0x0
    15ac:	afb70068 	sw	s7,104(sp)
    15b0:	afb30058 	sw	s3,88(sp)
    15b4:	f7b60028 	sdc1	$f22,40(sp)
    15b8:	c4380000 	lwc1	$f24,0(at)
    15bc:	afb60064 	sw	s6,100(sp)
    15c0:	afb50060 	sw	s5,96(sp)
    15c4:	afb4005c 	sw	s4,92(sp)
    15c8:	afb20054 	sw	s2,84(sp)
    15cc:	afb0004c 	sw	s0,76(sp)
    15d0:	f7b40020 	sdc1	$f20,32(sp)
    15d4:	3c010000 	lui	at,0x0
    15d8:	3c130000 	lui	s3,0x0
    15dc:	3c170000 	lui	s7,0x0
    15e0:	4480b000 	mtc1	zero,$f22
    15e4:	00808025 	move	s0,a0
    15e8:	00a09025 	move	s2,a1
    15ec:	afbf006c 	sw	ra,108(sp)
    15f0:	afb10050 	sw	s1,80(sp)
    15f4:	26f70000 	addiu	s7,s7,0
    15f8:	26730000 	addiu	s3,s3,0
    15fc:	c4340000 	lwc1	$f20,0(at)
    1600:	0000a025 	move	s4,zero
    1604:	3c150001 	lui	s5,0x1
    1608:	24160005 	li	s6,5
    160c:	92030024 	lbu	v1,36(s0)
    1610:	5060019b 	beqzl	v1,1c80 <func_80B6AF28+0x6f8>
    1614:	26940001 	addiu	s4,s4,1
    1618:	c6040000 	lwc1	$f4,0(s0)
    161c:	c606000c 	lwc1	$f6,12(s0)
    1620:	c6000010 	lwc1	$f0,16(s0)
    1624:	c60a0004 	lwc1	$f10,4(s0)
    1628:	46062200 	add.s	$f8,$f4,$f6
    162c:	c6060008 	lwc1	$f6,8(s0)
    1630:	920e0025 	lbu	t6,37(s0)
    1634:	46005100 	add.s	$f4,$f10,$f0
    1638:	e6080000 	swc1	$f8,0(s0)
    163c:	c6080014 	lwc1	$f8,20(s0)
    1640:	24010001 	li	at,1
    1644:	e6040004 	swc1	$f4,4(s0)
    1648:	c604001c 	lwc1	$f4,28(s0)
    164c:	46083280 	add.s	$f10,$f6,$f8
    1650:	25cf0001 	addiu	t7,t6,1
    1654:	a20f0025 	sb	t7,37(s0)
    1658:	46040180 	add.s	$f6,$f0,$f4
    165c:	e60a0008 	swc1	$f10,8(s0)
    1660:	00601025 	move	v0,v1
    1664:	1461001f 	bne	v1,at,16e4 <func_80B6AF28+0x15c>
    1668:	e6060010 	swc1	$f6,16(s0)
    166c:	3c063e4c 	lui	a2,0x3e4c
    1670:	34c6cccd 	ori	a2,a2,0xcccd
    1674:	26040030 	addiu	a0,s0,48
    1678:	8e050034 	lw	a1,52(s0)
    167c:	0c000000 	jal	0 <func_80B699A0>
    1680:	8e070038 	lw	a3,56(s0)
    1684:	8618002c 	lh	t8,44(s0)
    1688:	5700000f 	bnezl	t8,16c8 <func_80B6AF28+0x140>
    168c:	860c002a 	lh	t4,42(s0)
    1690:	8619002a 	lh	t9,42(s0)
    1694:	8602002e 	lh	v0,46(s0)
    1698:	27280014 	addiu	t0,t9,20
    169c:	a608002a 	sh	t0,42(s0)
    16a0:	8609002a 	lh	t1,42(s0)
    16a4:	0122082a 	slt	at,t1,v0
    16a8:	54200175 	bnezl	at,1c80 <func_80B6AF28+0x6f8>
    16ac:	26940001 	addiu	s4,s4,1
    16b0:	860a002c 	lh	t2,44(s0)
    16b4:	a602002a 	sh	v0,42(s0)
    16b8:	254b0001 	addiu	t3,t2,1
    16bc:	1000016f 	b	1c7c <func_80B6AF28+0x6f4>
    16c0:	a60b002c 	sh	t3,44(s0)
    16c4:	860c002a 	lh	t4,42(s0)
    16c8:	258dfff8 	addiu	t5,t4,-8
    16cc:	a60d002a 	sh	t5,42(s0)
    16d0:	860e002a 	lh	t6,42(s0)
    16d4:	5dc0016a 	bgtzl	t6,1c80 <func_80B6AF28+0x6f8>
    16d8:	26940001 	addiu	s4,s4,1
    16dc:	10000167 	b	1c7c <func_80B6AF28+0x6f4>
    16e0:	a2000024 	sb	zero,36(s0)
    16e4:	24010003 	li	at,3
    16e8:	14410020 	bne	v0,at,176c <func_80B6AF28+0x1e4>
    16ec:	26040030 	addiu	a0,s0,48
    16f0:	4406a000 	mfc1	a2,$f20
    16f4:	4407a000 	mfc1	a3,$f20
    16f8:	0c000000 	jal	0 <func_80B699A0>
    16fc:	8e050034 	lw	a1,52(s0)
    1700:	860f002a 	lh	t7,42(s0)
    1704:	3c0140a0 	lui	at,0x40a0
    1708:	44812000 	mtc1	at,$f4
    170c:	25f8fff6 	addiu	t8,t7,-10
    1710:	a618002a 	sh	t8,42(s0)
    1714:	8e5907c0 	lw	t9,1984(s2)
    1718:	8f280028 	lw	t0,40(t9)
    171c:	85090002 	lh	t1,2(t0)
    1720:	44894000 	mtc1	t1,$f8
    1724:	00000000 	nop
    1728:	468042a0 	cvt.s.w	$f10,$f8
    172c:	c6080004 	lwc1	$f8,4(s0)
    1730:	46045181 	sub.s	$f6,$f10,$f4
    1734:	4608303c 	c.lt.s	$f6,$f8
    1738:	00000000 	nop
    173c:	45020007 	bc1fl	175c <func_80B6AF28+0x1d4>
    1740:	860c002a 	lh	t4,42(s0)
    1744:	860a002a 	lh	t2,42(s0)
    1748:	e616001c 	swc1	$f22,28(s0)
    174c:	e6160010 	swc1	$f22,16(s0)
    1750:	254bfffb 	addiu	t3,t2,-5
    1754:	a60b002a 	sh	t3,42(s0)
    1758:	860c002a 	lh	t4,42(s0)
    175c:	5d800148 	bgtzl	t4,1c80 <func_80B6AF28+0x6f8>
    1760:	26940001 	addiu	s4,s4,1
    1764:	10000145 	b	1c7c <func_80B6AF28+0x6f4>
    1768:	a2000024 	sb	zero,36(s0)
    176c:	24010004 	li	at,4
    1770:	54410032 	bnel	v0,at,183c <func_80B6AF28+0x2b4>
    1774:	24010002 	li	at,2
    1778:	860d002c 	lh	t5,44(s0)
    177c:	3c01428a 	lui	at,0x428a
    1780:	55a00008 	bnezl	t5,17a4 <func_80B6AF28+0x21c>
    1784:	44811000 	mtc1	at,$f2
    1788:	8e4e07c0 	lw	t6,1984(s2)
    178c:	8dcf0028 	lw	t7,40(t6)
    1790:	85f80002 	lh	t8,2(t7)
    1794:	44985000 	mtc1	t8,$f10
    1798:	10000003 	b	17a8 <func_80B6AF28+0x220>
    179c:	468050a0 	cvt.s.w	$f2,$f10
    17a0:	44811000 	mtc1	at,$f2
    17a4:	00000000 	nop
    17a8:	c6040004 	lwc1	$f4,4(s0)
    17ac:	4604103e 	c.le.s	$f2,$f4
    17b0:	00000000 	nop
    17b4:	45020132 	bc1fl	1c80 <func_80B6AF28+0x6f8>
    17b8:	26940001 	addiu	s4,s4,1
    17bc:	a2000024 	sb	zero,36(s0)
    17c0:	0c000000 	jal	0 <func_80B699A0>
    17c4:	e7a200b4 	swc1	$f2,180(sp)
    17c8:	3c010000 	lui	at,0x0
    17cc:	c4260000 	lwc1	$f6,0(at)
    17d0:	c7a200b4 	lwc1	$f2,180(sp)
    17d4:	27a600a4 	addiu	a2,sp,164
    17d8:	4606003c 	c.lt.s	$f0,$f6
    17dc:	00002025 	move	a0,zero
    17e0:	45020127 	bc1fl	1c80 <func_80B6AF28+0x6f8>
    17e4:	26940001 	addiu	s4,s4,1
    17e8:	8e080000 	lw	t0,0(s0)
    17ec:	02554821 	addu	t1,s2,s5
    17f0:	3c014270 	lui	at,0x4270
    17f4:	acc80000 	sw	t0,0(a2)
    17f8:	8e190004 	lw	t9,4(s0)
    17fc:	44814000 	mtc1	at,$f8
    1800:	240a0096 	li	t2,150
    1804:	acd90004 	sw	t9,4(a2)
    1808:	8e080008 	lw	t0,8(s0)
    180c:	240b005a 	li	t3,90
    1810:	3c0741a0 	lui	a3,0x41a0
    1814:	acc80008 	sw	t0,8(a2)
    1818:	e7a200a8 	swc1	$f2,168(sp)
    181c:	8d251e10 	lw	a1,7696(t1)
    1820:	afab0018 	sw	t3,24(sp)
    1824:	afaa0014 	sw	t2,20(sp)
    1828:	0c000000 	jal	0 <func_80B699A0>
    182c:	e7a80010 	swc1	$f8,16(sp)
    1830:	10000113 	b	1c80 <func_80B6AF28+0x6f8>
    1834:	26940001 	addiu	s4,s4,1
    1838:	24010002 	li	at,2
    183c:	14410038 	bne	v0,at,1920 <func_80B6AF28+0x398>
    1840:	00000000 	nop
    1844:	c60a0010 	lwc1	$f10,16(s0)
    1848:	461a503c 	c.lt.s	$f10,$f26
    184c:	00000000 	nop
    1850:	45020004 	bc1fl	1864 <func_80B6AF28+0x2dc>
    1854:	8e4c07c0 	lw	t4,1984(s2)
    1858:	e61a0010 	swc1	$f26,16(s0)
    185c:	e616001c 	swc1	$f22,28(s0)
    1860:	8e4c07c0 	lw	t4,1984(s2)
    1864:	c6080004 	lwc1	$f8,4(s0)
    1868:	8d8d0028 	lw	t5,40(t4)
    186c:	85ae0002 	lh	t6,2(t5)
    1870:	448e2000 	mtc1	t6,$f4
    1874:	00000000 	nop
    1878:	468021a0 	cvt.s.w	$f6,$f4
    187c:	4606403e 	c.le.s	$f8,$f6
    1880:	00000000 	nop
    1884:	450200fe 	bc1fl	1c80 <func_80B6AF28+0x6f8>
    1888:	26940001 	addiu	s4,s4,1
    188c:	0c000000 	jal	0 <func_80B699A0>
    1890:	a2000024 	sb	zero,36(s0)
    1894:	3c013f00 	lui	at,0x3f00
    1898:	44815000 	mtc1	at,$f10
    189c:	00000000 	nop
    18a0:	460a003c 	c.lt.s	$f0,$f10
    18a4:	00000000 	nop
    18a8:	450200f5 	bc1fl	1c80 <func_80B6AF28+0x6f8>
    18ac:	26940001 	addiu	s4,s4,1
    18b0:	8e180000 	lw	t8,0(s0)
    18b4:	27a60098 	addiu	a2,sp,152
    18b8:	02555021 	addu	t2,s2,s5
    18bc:	acd80000 	sw	t8,0(a2)
    18c0:	8e0f0004 	lw	t7,4(s0)
    18c4:	3c0142dc 	lui	at,0x42dc
    18c8:	44814000 	mtc1	at,$f8
    18cc:	accf0004 	sw	t7,4(a2)
    18d0:	8e180008 	lw	t8,8(s0)
    18d4:	240b0096 	li	t3,150
    18d8:	240c005a 	li	t4,90
    18dc:	acd80008 	sw	t8,8(a2)
    18e0:	8e5907c0 	lw	t9,1984(s2)
    18e4:	00002025 	move	a0,zero
    18e8:	3c074220 	lui	a3,0x4220
    18ec:	8f280028 	lw	t0,40(t9)
    18f0:	85090002 	lh	t1,2(t0)
    18f4:	44892000 	mtc1	t1,$f4
    18f8:	00000000 	nop
    18fc:	468021a0 	cvt.s.w	$f6,$f4
    1900:	e7a6009c 	swc1	$f6,156(sp)
    1904:	8d451e10 	lw	a1,7696(t2)
    1908:	afac0018 	sw	t4,24(sp)
    190c:	afab0014 	sw	t3,20(sp)
    1910:	0c000000 	jal	0 <func_80B699A0>
    1914:	e7a80010 	swc1	$f8,16(sp)
    1918:	100000d9 	b	1c80 <func_80B6AF28+0x6f8>
    191c:	26940001 	addiu	s4,s4,1
    1920:	16c20055 	bne	s6,v0,1a78 <func_80B6AF28+0x4f0>
    1924:	28410007 	slti	at,v0,7
    1928:	8e4d07c0 	lw	t5,1984(s2)
    192c:	c6040004 	lwc1	$f4,4(s0)
    1930:	8dae0028 	lw	t6,40(t5)
    1934:	85cf0002 	lh	t7,2(t6)
    1938:	448f5000 	mtc1	t7,$f10
    193c:	00000000 	nop
    1940:	468053a0 	cvt.s.w	$f14,$f10
    1944:	460e203c 	c.lt.s	$f4,$f14
    1948:	00000000 	nop
    194c:	450200cc 	bc1fl	1c80 <func_80B6AF28+0x6f8>
    1950:	26940001 	addiu	s4,s4,1
    1954:	c6020000 	lwc1	$f2,0(s0)
    1958:	c60c0008 	lwc1	$f12,8(s0)
    195c:	3c010000 	lui	at,0x0
    1960:	46021182 	mul.s	$f6,$f2,$f2
    1964:	c42a0000 	lwc1	$f10,0(at)
    1968:	3c014040 	lui	at,0x4040
    196c:	460c6202 	mul.s	$f8,$f12,$f12
    1970:	46083400 	add.s	$f16,$f6,$f8
    1974:	4610503c 	c.lt.s	$f10,$f16
    1978:	00000000 	nop
    197c:	45020019 	bc1fl	19e4 <func_80B6AF28+0x45c>
    1980:	44815000 	mtc1	at,$f10
    1984:	46008004 	sqrt.s	$f0,$f16
    1988:	3c010000 	lui	at,0x0
    198c:	c4260000 	lwc1	$f6,0(at)
    1990:	24090008 	li	t1,8
    1994:	2602000c 	addiu	v0,s0,12
    1998:	461c0101 	sub.s	$f4,$f0,$f28
    199c:	46062202 	mul.s	$f8,$f4,$f6
    19a0:	460e4280 	add.s	$f10,$f8,$f14
    19a4:	e60a0004 	swc1	$f10,4(s0)
    19a8:	8e780000 	lw	t8,0(s3)
    19ac:	871909f6 	lh	t9,2550(t8)
    19b0:	a2090024 	sb	t1,36(s0)
    19b4:	27280002 	addiu	t0,t9,2
    19b8:	a2080025 	sb	t0,37(s0)
    19bc:	8e6a0000 	lw	t2,0(s3)
    19c0:	854b09f8 	lh	t3,2552(t2)
    19c4:	256c001e 	addiu	t4,t3,30
    19c8:	448c2000 	mtc1	t4,$f4
    19cc:	00000000 	nop
    19d0:	468021a0 	cvt.s.w	$f6,$f4
    19d4:	46183202 	mul.s	$f8,$f6,$f24
    19d8:	10000020 	b	1a5c <func_80B6AF28+0x4d4>
    19dc:	e6080030 	swc1	$f8,48(s0)
    19e0:	44815000 	mtc1	at,$f10
    19e4:	a2000025 	sb	zero,37(s0)
    19e8:	460a7100 	add.s	$f4,$f14,$f10
    19ec:	0c000000 	jal	0 <func_80B699A0>
    19f0:	e6040004 	swc1	$f4,4(s0)
    19f4:	3c013f40 	lui	at,0x3f40
    19f8:	44813000 	mtc1	at,$f6
    19fc:	240d0007 	li	t5,7
    1a00:	2602000c 	addiu	v0,s0,12
    1a04:	4606003c 	c.lt.s	$f0,$f6
    1a08:	00000000 	nop
    1a0c:	45020013 	bc1fl	1a5c <func_80B6AF28+0x4d4>
    1a10:	a2000024 	sb	zero,36(s0)
    1a14:	a20d0024 	sb	t5,36(s0)
    1a18:	8eef0000 	lw	t7,0(s7)
    1a1c:	2602000c 	addiu	v0,s0,12
    1a20:	ac4f0000 	sw	t7,0(v0)
    1a24:	8eee0004 	lw	t6,4(s7)
    1a28:	ac4e0004 	sw	t6,4(v0)
    1a2c:	8eef0008 	lw	t7,8(s7)
    1a30:	ac4f0008 	sw	t7,8(v0)
    1a34:	8e780000 	lw	t8,0(s3)
    1a38:	871909f8 	lh	t9,2552(t8)
    1a3c:	2728001e 	addiu	t0,t9,30
    1a40:	44884000 	mtc1	t0,$f8
    1a44:	00000000 	nop
    1a48:	468042a0 	cvt.s.w	$f10,$f8
    1a4c:	46185102 	mul.s	$f4,$f10,$f24
    1a50:	10000002 	b	1a5c <func_80B6AF28+0x4d4>
    1a54:	e6040030 	swc1	$f4,48(s0)
    1a58:	a2000024 	sb	zero,36(s0)
    1a5c:	8eea0000 	lw	t2,0(s7)
    1a60:	ac4a0000 	sw	t2,0(v0)
    1a64:	8ee90004 	lw	t1,4(s7)
    1a68:	ac490004 	sw	t1,4(v0)
    1a6c:	8eea0008 	lw	t2,8(s7)
    1a70:	10000082 	b	1c7c <func_80B6AF28+0x6f4>
    1a74:	ac4a0008 	sw	t2,8(v0)
    1a78:	54200011 	bnezl	at,1ac0 <func_80B6AF28+0x538>
    1a7c:	24010006 	li	at,6
    1a80:	8e6b0000 	lw	t3,0(s3)
    1a84:	c6060030 	lwc1	$f6,48(s0)
    1a88:	920e0025 	lbu	t6,37(s0)
    1a8c:	856c09f8 	lh	t4,2552(t3)
    1a90:	29c10006 	slti	at,t6,6
    1a94:	258d001e 	addiu	t5,t4,30
    1a98:	448d4000 	mtc1	t5,$f8
    1a9c:	00000000 	nop
    1aa0:	468042a0 	cvt.s.w	$f10,$f8
    1aa4:	46185102 	mul.s	$f4,$f10,$f24
    1aa8:	46043200 	add.s	$f8,$f6,$f4
    1aac:	14200073 	bnez	at,1c7c <func_80B6AF28+0x6f4>
    1ab0:	e6080030 	swc1	$f8,48(s0)
    1ab4:	10000071 	b	1c7c <func_80B6AF28+0x6f4>
    1ab8:	a2000024 	sb	zero,36(s0)
    1abc:	24010006 	li	at,6
    1ac0:	1441006e 	bne	v0,at,1c7c <func_80B6AF28+0x6f4>
    1ac4:	3c040000 	lui	a0,0x0
    1ac8:	3c010000 	lui	at,0x0
    1acc:	c42a0000 	lwc1	$f10,0(at)
    1ad0:	24840000 	addiu	a0,a0,0
    1ad4:	00002825 	move	a1,zero
    1ad8:	24060014 	li	a2,20
    1adc:	24070064 	li	a3,100
    1ae0:	0c000000 	jal	0 <func_80B699A0>
    1ae4:	e60a0030 	swc1	$f10,48(s0)
    1ae8:	3c040000 	lui	a0,0x0
    1aec:	24840000 	addiu	a0,a0,0
    1af0:	00002825 	move	a1,zero
    1af4:	24060014 	li	a2,20
    1af8:	0c000000 	jal	0 <func_80B699A0>
    1afc:	24070064 	li	a3,100
    1b00:	3c040000 	lui	a0,0x0
    1b04:	24840000 	addiu	a0,a0,0
    1b08:	2405c000 	li	a1,-16384
    1b0c:	24060014 	li	a2,20
    1b10:	0c000000 	jal	0 <func_80B699A0>
    1b14:	24070064 	li	a3,100
    1b18:	c6020000 	lwc1	$f2,0(s0)
    1b1c:	c60c0008 	lwc1	$f12,8(s0)
    1b20:	8e4f07c0 	lw	t7,1984(s2)
    1b24:	46021182 	mul.s	$f6,$f2,$f2
    1b28:	3c010000 	lui	at,0x0
    1b2c:	8df80028 	lw	t8,40(t7)
    1b30:	460c6102 	mul.s	$f4,$f12,$f12
    1b34:	c42a0000 	lwc1	$f10,0(at)
    1b38:	87190002 	lh	t9,2(t8)
    1b3c:	3c014120 	lui	at,0x4120
    1b40:	c6120004 	lwc1	$f18,4(s0)
    1b44:	46043380 	add.s	$f14,$f6,$f4
    1b48:	44992000 	mtc1	t9,$f4
    1b4c:	46007004 	sqrt.s	$f0,$f14
    1b50:	461c0201 	sub.s	$f8,$f0,$f28
    1b54:	460a4182 	mul.s	$f6,$f8,$f10
    1b58:	44815000 	mtc1	at,$f10
    1b5c:	46802220 	cvt.s.w	$f8,$f4
    1b60:	46083400 	add.s	$f16,$f6,$f8
    1b64:	460a8101 	sub.s	$f4,$f16,$f10
    1b68:	4612203c 	c.lt.s	$f4,$f18
    1b6c:	00000000 	nop
    1b70:	45020004 	bc1fl	1b84 <func_80B6AF28+0x5fc>
    1b74:	92080025 	lbu	t0,37(s0)
    1b78:	46149181 	sub.s	$f6,$f18,$f20
    1b7c:	e6060004 	swc1	$f6,4(s0)
    1b80:	92080025 	lbu	t0,37(s0)
    1b84:	3109000f 	andi	t1,t0,0xf
    1b88:	5520001c 	bnezl	t1,1bfc <func_80B6AF28+0x674>
    1b8c:	8602002c 	lh	v0,44(s0)
    1b90:	8e0b0000 	lw	t3,0(s0)
    1b94:	27a60080 	addiu	a2,sp,128
    1b98:	02557821 	addu	t7,s2,s5
    1b9c:	accb0000 	sw	t3,0(a2)
    1ba0:	8e0a0004 	lw	t2,4(s0)
    1ba4:	3c014396 	lui	at,0x4396
    1ba8:	44812000 	mtc1	at,$f4
    1bac:	acca0004 	sw	t2,4(a2)
    1bb0:	8e0b0008 	lw	t3,8(s0)
    1bb4:	24180096 	li	t8,150
    1bb8:	2419005a 	li	t9,90
    1bbc:	accb0008 	sw	t3,8(a2)
    1bc0:	8e4c07c0 	lw	t4,1984(s2)
    1bc4:	00002025 	move	a0,zero
    1bc8:	3c0741f0 	lui	a3,0x41f0
    1bcc:	8d8d0028 	lw	t5,40(t4)
    1bd0:	85ae0002 	lh	t6,2(t5)
    1bd4:	448e4000 	mtc1	t6,$f8
    1bd8:	00000000 	nop
    1bdc:	468042a0 	cvt.s.w	$f10,$f8
    1be0:	e7aa0084 	swc1	$f10,132(sp)
    1be4:	8de51e10 	lw	a1,7696(t7)
    1be8:	afb90018 	sw	t9,24(sp)
    1bec:	afb80014 	sw	t8,20(sp)
    1bf0:	0c000000 	jal	0 <func_80B699A0>
    1bf4:	e7a40010 	swc1	$f4,16(sp)
    1bf8:	8602002c 	lh	v0,44(s0)
    1bfc:	2401001e 	li	at,30
    1c00:	02402025 	move	a0,s2
    1c04:	04400003 	bltz	v0,1c14 <func_80B6AF28+0x68c>
    1c08:	24480001 	addiu	t0,v0,1
    1c0c:	a608002c 	sh	t0,44(s0)
    1c10:	8602002c 	lh	v0,44(s0)
    1c14:	14410004 	bne	v0,at,1c28 <func_80B6AF28+0x6a0>
    1c18:	240540b3 	li	a1,16563
    1c1c:	0c000000 	jal	0 <func_80B699A0>
    1c20:	00003025 	move	a2,zero
    1c24:	8602002c 	lh	v0,44(s0)
    1c28:	28410064 	slti	at,v0,100
    1c2c:	14200013 	bnez	at,1c7c <func_80B6AF28+0x6f4>
    1c30:	265120d8 	addiu	s1,s2,8408
    1c34:	0c000000 	jal	0 <func_80B699A0>
    1c38:	02202025 	move	a0,s1
    1c3c:	56c20010 	bnel	s6,v0,1c80 <func_80B6AF28+0x6f8>
    1c40:	26940001 	addiu	s4,s4,1
    1c44:	0c000000 	jal	0 <func_80B699A0>
    1c48:	02402025 	move	a0,s2
    1c4c:	14400005 	bnez	v0,1c64 <func_80B6AF28+0x6dc>
    1c50:	00000000 	nop
    1c54:	0c000000 	jal	0 <func_80B699A0>
    1c58:	02202025 	move	a0,s1
    1c5c:	54400008 	bnezl	v0,1c80 <func_80B6AF28+0x6f8>
    1c60:	26940001 	addiu	s4,s4,1
    1c64:	0c000000 	jal	0 <func_80B699A0>
    1c68:	02402025 	move	a0,s2
    1c6c:	0c000000 	jal	0 <func_80B699A0>
    1c70:	2404ffce 	li	a0,-50
    1c74:	2409ffff 	li	t1,-1
    1c78:	a609002c 	sh	t1,44(s0)
    1c7c:	26940001 	addiu	s4,s4,1
    1c80:	0014a400 	sll	s4,s4,0x10
    1c84:	0014a403 	sra	s4,s4,0x10
    1c88:	2a810082 	slti	at,s4,130
    1c8c:	1420fe5f 	bnez	at,160c <func_80B6AF28+0x84>
    1c90:	26100040 	addiu	s0,s0,64
    1c94:	8fbf006c 	lw	ra,108(sp)
    1c98:	d7b40020 	ldc1	$f20,32(sp)
    1c9c:	d7b60028 	ldc1	$f22,40(sp)
    1ca0:	d7b80030 	ldc1	$f24,48(sp)
    1ca4:	d7ba0038 	ldc1	$f26,56(sp)
    1ca8:	d7bc0040 	ldc1	$f28,64(sp)
    1cac:	8fb0004c 	lw	s0,76(sp)
    1cb0:	8fb10050 	lw	s1,80(sp)
    1cb4:	8fb20054 	lw	s2,84(sp)
    1cb8:	8fb30058 	lw	s3,88(sp)
    1cbc:	8fb4005c 	lw	s4,92(sp)
    1cc0:	8fb50060 	lw	s5,96(sp)
    1cc4:	8fb60064 	lw	s6,100(sp)
    1cc8:	8fb70068 	lw	s7,104(sp)
    1ccc:	03e00008 	jr	ra
    1cd0:	27bd00b8 	addiu	sp,sp,184

00001cd4 <func_80B6B674>:
    1cd4:	27bdfec8 	addiu	sp,sp,-312
    1cd8:	afb60058 	sw	s6,88(sp)
    1cdc:	00a0b025 	move	s6,a1
    1ce0:	afbf0064 	sw	ra,100(sp)
    1ce4:	afbe0060 	sw	s8,96(sp)
    1ce8:	afb7005c 	sw	s7,92(sp)
    1cec:	afb50054 	sw	s5,84(sp)
    1cf0:	afb40050 	sw	s4,80(sp)
    1cf4:	afb3004c 	sw	s3,76(sp)
    1cf8:	afb20048 	sw	s2,72(sp)
    1cfc:	afb10044 	sw	s1,68(sp)
    1d00:	afb00040 	sw	s0,64(sp)
    1d04:	f7b40038 	sdc1	$f20,56(sp)
    1d08:	afa40124 	sw	a0,292(sp)
    1d0c:	8ca50000 	lw	a1,0(a1)
    1d10:	00808825 	move	s1,a0
    1d14:	3c060000 	lui	a2,0x0
    1d18:	0000a025 	move	s4,zero
    1d1c:	24c60000 	addiu	a2,a2,0
    1d20:	27a40110 	addiu	a0,sp,272
    1d24:	240708df 	li	a3,2271
    1d28:	0c000000 	jal	0 <func_80B699A0>
    1d2c:	00a08025 	move	s0,a1
    1d30:	0c000000 	jal	0 <func_80B699A0>
    1d34:	00000000 	nop
    1d38:	8e0202d0 	lw	v0,720(s0)
    1d3c:	3c013f80 	lui	at,0x3f80
    1d40:	3c0fe700 	lui	t7,0xe700
    1d44:	244e0008 	addiu	t6,v0,8
    1d48:	ae0e02d0 	sw	t6,720(s0)
    1d4c:	3c1eda38 	lui	s8,0xda38
    1d50:	4481a000 	mtc1	at,$f20
    1d54:	37de0003 	ori	s8,s8,0x3
    1d58:	00009825 	move	s3,zero
    1d5c:	3c17fa00 	lui	s7,0xfa00
    1d60:	3c15de00 	lui	s5,0xde00
    1d64:	ac400004 	sw	zero,4(v0)
    1d68:	ac4f0000 	sw	t7,0(v0)
    1d6c:	92380024 	lbu	t8,36(s1)
    1d70:	24010001 	li	at,1
    1d74:	3c120601 	lui	s2,0x601
    1d78:	5701003a 	bnel	t8,at,1e64 <func_80B6B674+0x190>
    1d7c:	26730001 	addiu	s3,s3,1
    1d80:	16800012 	bnez	s4,1dcc <func_80B6B674+0xf8>
    1d84:	26528678 	addiu	s2,s2,-31112
    1d88:	8e0202d0 	lw	v0,720(s0)
    1d8c:	3c040601 	lui	a0,0x601
    1d90:	24848610 	addiu	a0,a0,-31216
    1d94:	24590008 	addiu	t9,v0,8
    1d98:	ae1902d0 	sw	t9,720(s0)
    1d9c:	ac440004 	sw	a0,4(v0)
    1da0:	ac550000 	sw	s5,0(v0)
    1da4:	8e0202d0 	lw	v0,720(s0)
    1da8:	3c0b9b9b 	lui	t3,0x9b9b
    1dac:	356b9b00 	ori	t3,t3,0x9b00
    1db0:	24490008 	addiu	t1,v0,8
    1db4:	ae0902d0 	sw	t1,720(s0)
    1db8:	3c0afb00 	lui	t2,0xfb00
    1dbc:	26940001 	addiu	s4,s4,1
    1dc0:	329400ff 	andi	s4,s4,0xff
    1dc4:	ac4a0000 	sw	t2,0(v0)
    1dc8:	ac4b0004 	sw	t3,4(v0)
    1dcc:	8e0202d0 	lw	v0,720(s0)
    1dd0:	2401ff00 	li	at,-256
    1dd4:	00003825 	move	a3,zero
    1dd8:	244c0008 	addiu	t4,v0,8
    1ddc:	ae0c02d0 	sw	t4,720(s0)
    1de0:	ac570000 	sw	s7,0(v0)
    1de4:	862d002a 	lh	t5,42(s1)
    1de8:	31ae00ff 	andi	t6,t5,0xff
    1dec:	01c17825 	or	t7,t6,at
    1df0:	ac4f0004 	sw	t7,4(v0)
    1df4:	8e260008 	lw	a2,8(s1)
    1df8:	c62e0004 	lwc1	$f14,4(s1)
    1dfc:	0c000000 	jal	0 <func_80B699A0>
    1e00:	c62c0000 	lwc1	$f12,0(s1)
    1e04:	c62c0030 	lwc1	$f12,48(s1)
    1e08:	4600a386 	mov.s	$f14,$f20
    1e0c:	24070001 	li	a3,1
    1e10:	44066000 	mfc1	a2,$f12
    1e14:	0c000000 	jal	0 <func_80B699A0>
    1e18:	00000000 	nop
    1e1c:	8e0202d0 	lw	v0,720(s0)
    1e20:	3c050000 	lui	a1,0x0
    1e24:	24a50000 	addiu	a1,a1,0
    1e28:	24580008 	addiu	t8,v0,8
    1e2c:	ae1802d0 	sw	t8,720(s0)
    1e30:	ac5e0000 	sw	s8,0(v0)
    1e34:	8ec40000 	lw	a0,0(s6)
    1e38:	24060901 	li	a2,2305
    1e3c:	0c000000 	jal	0 <func_80B699A0>
    1e40:	afa200fc 	sw	v0,252(sp)
    1e44:	8fa300fc 	lw	v1,252(sp)
    1e48:	ac620004 	sw	v0,4(v1)
    1e4c:	8e0202d0 	lw	v0,720(s0)
    1e50:	24590008 	addiu	t9,v0,8
    1e54:	ae1902d0 	sw	t9,720(s0)
    1e58:	ac520004 	sw	s2,4(v0)
    1e5c:	ac550000 	sw	s5,0(v0)
    1e60:	26730001 	addiu	s3,s3,1
    1e64:	00139c00 	sll	s3,s3,0x10
    1e68:	00139c03 	sra	s3,s3,0x10
    1e6c:	2a610064 	slti	at,s3,100
    1e70:	1420ffbe 	bnez	at,1d6c <func_80B6B674+0x98>
    1e74:	26310040 	addiu	s1,s1,64
    1e78:	0000a025 	move	s4,zero
    1e7c:	8fb10124 	lw	s1,292(sp)
    1e80:	00009825 	move	s3,zero
    1e84:	92290024 	lbu	t1,36(s1)
    1e88:	24010002 	li	at,2
    1e8c:	3c0a0600 	lui	t2,0x600
    1e90:	1521003f 	bne	t1,at,1f90 <func_80B6B674+0x2bc>
    1e94:	254a3680 	addiu	t2,t2,13952
    1e98:	3c010001 	lui	at,0x1
    1e9c:	34211da0 	ori	at,at,0x1da0
    1ea0:	02c19021 	addu	s2,s6,at
    1ea4:	16800012 	bnez	s4,1ef0 <func_80B6B674+0x21c>
    1ea8:	afaa0070 	sw	t2,112(sp)
    1eac:	8e0202d0 	lw	v0,720(s0)
    1eb0:	3c040600 	lui	a0,0x600
    1eb4:	24843610 	addiu	a0,a0,13840
    1eb8:	244b0008 	addiu	t3,v0,8
    1ebc:	ae0b02d0 	sw	t3,720(s0)
    1ec0:	ac440004 	sw	a0,4(v0)
    1ec4:	ac550000 	sw	s5,0(v0)
    1ec8:	8e0202d0 	lw	v0,720(s0)
    1ecc:	3c0ec8c8 	lui	t6,0xc8c8
    1ed0:	35cec800 	ori	t6,t6,0xc800
    1ed4:	244c0008 	addiu	t4,v0,8
    1ed8:	ae0c02d0 	sw	t4,720(s0)
    1edc:	3c0dfb00 	lui	t5,0xfb00
    1ee0:	26940001 	addiu	s4,s4,1
    1ee4:	329400ff 	andi	s4,s4,0xff
    1ee8:	ac4d0000 	sw	t5,0(v0)
    1eec:	ac4e0004 	sw	t6,4(v0)
    1ef0:	8e0202d0 	lw	v0,720(s0)
    1ef4:	3c01b4b4 	lui	at,0xb4b4
    1ef8:	3421b400 	ori	at,at,0xb400
    1efc:	244f0008 	addiu	t7,v0,8
    1f00:	ae0f02d0 	sw	t7,720(s0)
    1f04:	ac570000 	sw	s7,0(v0)
    1f08:	8638002a 	lh	t8,42(s1)
    1f0c:	00003825 	move	a3,zero
    1f10:	331900ff 	andi	t9,t8,0xff
    1f14:	03214825 	or	t1,t9,at
    1f18:	ac490004 	sw	t1,4(v0)
    1f1c:	8e260008 	lw	a2,8(s1)
    1f20:	c62e0004 	lwc1	$f14,4(s1)
    1f24:	0c000000 	jal	0 <func_80B699A0>
    1f28:	c62c0000 	lwc1	$f12,0(s1)
    1f2c:	0c000000 	jal	0 <func_80B699A0>
    1f30:	02402025 	move	a0,s2
    1f34:	c62c0030 	lwc1	$f12,48(s1)
    1f38:	4406a000 	mfc1	a2,$f20
    1f3c:	24070001 	li	a3,1
    1f40:	0c000000 	jal	0 <func_80B699A0>
    1f44:	46006386 	mov.s	$f14,$f12
    1f48:	8e0202d0 	lw	v0,720(s0)
    1f4c:	3c050000 	lui	a1,0x0
    1f50:	24a50000 	addiu	a1,a1,0
    1f54:	244a0008 	addiu	t2,v0,8
    1f58:	ae0a02d0 	sw	t2,720(s0)
    1f5c:	ac5e0000 	sw	s8,0(v0)
    1f60:	8ec40000 	lw	a0,0(s6)
    1f64:	2406092a 	li	a2,2346
    1f68:	0c000000 	jal	0 <func_80B699A0>
    1f6c:	afa200e8 	sw	v0,232(sp)
    1f70:	8fa300e8 	lw	v1,232(sp)
    1f74:	ac620004 	sw	v0,4(v1)
    1f78:	8e0202d0 	lw	v0,720(s0)
    1f7c:	244b0008 	addiu	t3,v0,8
    1f80:	ae0b02d0 	sw	t3,720(s0)
    1f84:	ac550000 	sw	s5,0(v0)
    1f88:	8fac0070 	lw	t4,112(sp)
    1f8c:	ac4c0004 	sw	t4,4(v0)
    1f90:	26730001 	addiu	s3,s3,1
    1f94:	00139c00 	sll	s3,s3,0x10
    1f98:	00139c03 	sra	s3,s3,0x10
    1f9c:	2a610064 	slti	at,s3,100
    1fa0:	1420ffb8 	bnez	at,1e84 <func_80B6B674+0x1b0>
    1fa4:	26310040 	addiu	s1,s1,64
    1fa8:	0000a025 	move	s4,zero
    1fac:	8fb10124 	lw	s1,292(sp)
    1fb0:	00009825 	move	s3,zero
    1fb4:	922d0024 	lbu	t5,36(s1)
    1fb8:	24010003 	li	at,3
    1fbc:	3c0e0601 	lui	t6,0x601
    1fc0:	15a1005e 	bne	t5,at,213c <func_80B6B674+0x468>
    1fc4:	25ce8970 	addiu	t6,t6,-30352
    1fc8:	3c010001 	lui	at,0x1
    1fcc:	34211da0 	ori	at,at,0x1da0
    1fd0:	02c19021 	addu	s2,s6,at
    1fd4:	16800012 	bnez	s4,2020 <func_80B6B674+0x34c>
    1fd8:	afae0070 	sw	t6,112(sp)
    1fdc:	8e0202c0 	lw	v0,704(s0)
    1fe0:	3c040601 	lui	a0,0x601
    1fe4:	248488c0 	addiu	a0,a0,-30528
    1fe8:	244f0008 	addiu	t7,v0,8
    1fec:	ae0f02c0 	sw	t7,704(s0)
    1ff0:	ac440004 	sw	a0,4(v0)
    1ff4:	ac550000 	sw	s5,0(v0)
    1ff8:	8e0202c0 	lw	v0,704(s0)
    1ffc:	3c09285a 	lui	t1,0x285a
    2000:	35295080 	ori	t1,t1,0x5080
    2004:	24580008 	addiu	t8,v0,8
    2008:	ae1802c0 	sw	t8,704(s0)
    200c:	3c19fb00 	lui	t9,0xfb00
    2010:	26940001 	addiu	s4,s4,1
    2014:	329400ff 	andi	s4,s4,0xff
    2018:	ac590000 	sw	t9,0(v0)
    201c:	ac490004 	sw	t1,4(v0)
    2020:	8e0202c0 	lw	v0,704(s0)
    2024:	3c01285a 	lui	at,0x285a
    2028:	34215000 	ori	at,at,0x5000
    202c:	244a0008 	addiu	t2,v0,8
    2030:	ae0a02c0 	sw	t2,704(s0)
    2034:	ac570000 	sw	s7,0(v0)
    2038:	862b002a 	lh	t3,42(s1)
    203c:	3c0fdb06 	lui	t7,0xdb06
    2040:	35ef0020 	ori	t7,t7,0x20
    2044:	316c00ff 	andi	t4,t3,0xff
    2048:	01816825 	or	t5,t4,at
    204c:	ac4d0004 	sw	t5,4(v0)
    2050:	8e0202c0 	lw	v0,704(s0)
    2054:	0013c880 	sll	t9,s3,0x2
    2058:	0333c823 	subu	t9,t9,s3
    205c:	244e0008 	addiu	t6,v0,8
    2060:	ae0e02c0 	sw	t6,704(s0)
    2064:	ac4f0000 	sw	t7,0(v0)
    2068:	92380025 	lbu	t8,37(s1)
    206c:	8ec40000 	lw	a0,0(s6)
    2070:	240d0020 	li	t5,32
    2074:	03191821 	addu	v1,t8,t9
    2078:	00033880 	sll	a3,v1,0x2
    207c:	240c0020 	li	t4,32
    2080:	240b0001 	li	t3,1
    2084:	240a0040 	li	t2,64
    2088:	24090020 	li	t1,32
    208c:	afa90010 	sw	t1,16(sp)
    2090:	afaa0014 	sw	t2,20(sp)
    2094:	afab0018 	sw	t3,24(sp)
    2098:	afac0024 	sw	t4,36(sp)
    209c:	00e33821 	addu	a3,a3,v1
    20a0:	00603025 	move	a2,v1
    20a4:	afad0028 	sw	t5,40(sp)
    20a8:	afa00020 	sw	zero,32(sp)
    20ac:	afa0001c 	sw	zero,28(sp)
    20b0:	00002825 	move	a1,zero
    20b4:	0c000000 	jal	0 <func_80B699A0>
    20b8:	afa200d4 	sw	v0,212(sp)
    20bc:	8fa800d4 	lw	t0,212(sp)
    20c0:	00003825 	move	a3,zero
    20c4:	ad020004 	sw	v0,4(t0)
    20c8:	8e260008 	lw	a2,8(s1)
    20cc:	c62e0004 	lwc1	$f14,4(s1)
    20d0:	0c000000 	jal	0 <func_80B699A0>
    20d4:	c62c0000 	lwc1	$f12,0(s1)
    20d8:	0c000000 	jal	0 <func_80B699A0>
    20dc:	02402025 	move	a0,s2
    20e0:	c62c0030 	lwc1	$f12,48(s1)
    20e4:	4406a000 	mfc1	a2,$f20
    20e8:	24070001 	li	a3,1
    20ec:	0c000000 	jal	0 <func_80B699A0>
    20f0:	46006386 	mov.s	$f14,$f12
    20f4:	8e0202c0 	lw	v0,704(s0)
    20f8:	3c050000 	lui	a1,0x0
    20fc:	24a50000 	addiu	a1,a1,0
    2100:	244e0008 	addiu	t6,v0,8
    2104:	ae0e02c0 	sw	t6,704(s0)
    2108:	ac5e0000 	sw	s8,0(v0)
    210c:	8ec40000 	lw	a0,0(s6)
    2110:	2406095a 	li	a2,2394
    2114:	0c000000 	jal	0 <func_80B699A0>
    2118:	afa200d0 	sw	v0,208(sp)
    211c:	8fa300d0 	lw	v1,208(sp)
    2120:	ac620004 	sw	v0,4(v1)
    2124:	8e0202c0 	lw	v0,704(s0)
    2128:	244f0008 	addiu	t7,v0,8
    212c:	ae0f02c0 	sw	t7,704(s0)
    2130:	ac550000 	sw	s5,0(v0)
    2134:	8fb80070 	lw	t8,112(sp)
    2138:	ac580004 	sw	t8,4(v0)
    213c:	26730001 	addiu	s3,s3,1
    2140:	00139c00 	sll	s3,s3,0x10
    2144:	00139c03 	sra	s3,s3,0x10
    2148:	2a610064 	slti	at,s3,100
    214c:	1420ff99 	bnez	at,1fb4 <func_80B6B674+0x2e0>
    2150:	26310040 	addiu	s1,s1,64
    2154:	0000a025 	move	s4,zero
    2158:	8fb10124 	lw	s1,292(sp)
    215c:	00009825 	move	s3,zero
    2160:	92390024 	lbu	t9,36(s1)
    2164:	24010004 	li	at,4
    2168:	3c090600 	lui	t1,0x600
    216c:	1721003b 	bne	t9,at,225c <func_80B6B674+0x588>
    2170:	252934c0 	addiu	t1,t1,13504
    2174:	3c010001 	lui	at,0x1
    2178:	34211da0 	ori	at,at,0x1da0
    217c:	02c19021 	addu	s2,s6,at
    2180:	16800018 	bnez	s4,21e4 <func_80B6B674+0x510>
    2184:	afa90070 	sw	t1,112(sp)
    2188:	8e0202d0 	lw	v0,720(s0)
    218c:	3c040600 	lui	a0,0x600
    2190:	24843460 	addiu	a0,a0,13408
    2194:	244a0008 	addiu	t2,v0,8
    2198:	ae0a02d0 	sw	t2,720(s0)
    219c:	ac440004 	sw	a0,4(v0)
    21a0:	ac550000 	sw	s5,0(v0)
    21a4:	8e0202d0 	lw	v0,720(s0)
    21a8:	3c0d9696 	lui	t5,0x9696
    21ac:	35ad9600 	ori	t5,t5,0x9600
    21b0:	244b0008 	addiu	t3,v0,8
    21b4:	ae0b02d0 	sw	t3,720(s0)
    21b8:	3c0cfb00 	lui	t4,0xfb00
    21bc:	ac4c0000 	sw	t4,0(v0)
    21c0:	ac4d0004 	sw	t5,4(v0)
    21c4:	8e0202d0 	lw	v0,720(s0)
    21c8:	240fffff 	li	t7,-1
    21cc:	26940001 	addiu	s4,s4,1
    21d0:	244e0008 	addiu	t6,v0,8
    21d4:	ae0e02d0 	sw	t6,720(s0)
    21d8:	329400ff 	andi	s4,s4,0xff
    21dc:	ac4f0004 	sw	t7,4(v0)
    21e0:	ac570000 	sw	s7,0(v0)
    21e4:	c62c0000 	lwc1	$f12,0(s1)
    21e8:	c62e0004 	lwc1	$f14,4(s1)
    21ec:	8e260008 	lw	a2,8(s1)
    21f0:	0c000000 	jal	0 <func_80B699A0>
    21f4:	00003825 	move	a3,zero
    21f8:	0c000000 	jal	0 <func_80B699A0>
    21fc:	02402025 	move	a0,s2
    2200:	c62c0030 	lwc1	$f12,48(s1)
    2204:	4406a000 	mfc1	a2,$f20
    2208:	24070001 	li	a3,1
    220c:	0c000000 	jal	0 <func_80B699A0>
    2210:	46006386 	mov.s	$f14,$f12
    2214:	8e0202d0 	lw	v0,720(s0)
    2218:	3c050000 	lui	a1,0x0
    221c:	24a50000 	addiu	a1,a1,0
    2220:	24580008 	addiu	t8,v0,8
    2224:	ae1802d0 	sw	t8,720(s0)
    2228:	ac5e0000 	sw	s8,0(v0)
    222c:	8ec40000 	lw	a0,0(s6)
    2230:	24060977 	li	a2,2423
    2234:	0c000000 	jal	0 <func_80B699A0>
    2238:	afa200bc 	sw	v0,188(sp)
    223c:	8fa300bc 	lw	v1,188(sp)
    2240:	ac620004 	sw	v0,4(v1)
    2244:	8e0202d0 	lw	v0,720(s0)
    2248:	24590008 	addiu	t9,v0,8
    224c:	ae1902d0 	sw	t9,720(s0)
    2250:	ac550000 	sw	s5,0(v0)
    2254:	8fa90070 	lw	t1,112(sp)
    2258:	ac490004 	sw	t1,4(v0)
    225c:	26730001 	addiu	s3,s3,1
    2260:	00139c00 	sll	s3,s3,0x10
    2264:	00139c03 	sra	s3,s3,0x10
    2268:	2a610064 	slti	at,s3,100
    226c:	1420ffbc 	bnez	at,2160 <func_80B6B674+0x48c>
    2270:	26310040 	addiu	s1,s1,64
    2274:	8faa0124 	lw	t2,292(sp)
    2278:	0000a025 	move	s4,zero
    227c:	2413001e 	li	s3,30
    2280:	25510780 	addiu	s1,t2,1920
    2284:	afb10070 	sw	s1,112(sp)
    2288:	922c0024 	lbu	t4,36(s1)
    228c:	24010005 	li	at,5
    2290:	3c120600 	lui	s2,0x600
    2294:	5581003f 	bnel	t4,at,2394 <func_80B6B674+0x6c0>
    2298:	26730001 	addiu	s3,s3,1
    229c:	16800016 	bnez	s4,22f8 <func_80B6B674+0x624>
    22a0:	26523760 	addiu	s2,s2,14176
    22a4:	8e0402d0 	lw	a0,720(s0)
    22a8:	0c000000 	jal	0 <func_80B699A0>
    22ac:	24050014 	li	a1,20
    22b0:	ae0202d0 	sw	v0,720(s0)
    22b4:	244d0008 	addiu	t5,v0,8
    22b8:	ae0d02d0 	sw	t5,720(s0)
    22bc:	3c0efcff 	lui	t6,0xfcff
    22c0:	3c0ffffd 	lui	t7,0xfffd
    22c4:	35eff6fb 	ori	t7,t7,0xf6fb
    22c8:	35ceffff 	ori	t6,t6,0xffff
    22cc:	ac4e0000 	sw	t6,0(v0)
    22d0:	ac4f0004 	sw	t7,4(v0)
    22d4:	8e0202d0 	lw	v0,720(s0)
    22d8:	3c1996ff 	lui	t9,0x96ff
    22dc:	3739ff1e 	ori	t9,t9,0xff1e
    22e0:	24580008 	addiu	t8,v0,8
    22e4:	ae1802d0 	sw	t8,720(s0)
    22e8:	26940001 	addiu	s4,s4,1
    22ec:	329400ff 	andi	s4,s4,0xff
    22f0:	ac590004 	sw	t9,4(v0)
    22f4:	ac570000 	sw	s7,0(v0)
    22f8:	c62c0000 	lwc1	$f12,0(s1)
    22fc:	c62e0004 	lwc1	$f14,4(s1)
    2300:	8e260008 	lw	a2,8(s1)
    2304:	0c000000 	jal	0 <func_80B699A0>
    2308:	00003825 	move	a3,zero
    230c:	c62c0038 	lwc1	$f12,56(s1)
    2310:	0c000000 	jal	0 <func_80B699A0>
    2314:	24050001 	li	a1,1
    2318:	c62c0034 	lwc1	$f12,52(s1)
    231c:	0c000000 	jal	0 <func_80B699A0>
    2320:	24050001 	li	a1,1
    2324:	c62c003c 	lwc1	$f12,60(s1)
    2328:	0c000000 	jal	0 <func_80B699A0>
    232c:	24050001 	li	a1,1
    2330:	3c010000 	lui	at,0x0
    2334:	3c063dcc 	lui	a2,0x3dcc
    2338:	34c6cccd 	ori	a2,a2,0xcccd
    233c:	c42c0000 	lwc1	$f12,0(at)
    2340:	4600a386 	mov.s	$f14,$f20
    2344:	0c000000 	jal	0 <func_80B699A0>
    2348:	24070001 	li	a3,1
    234c:	8e0202d0 	lw	v0,720(s0)
    2350:	3c050000 	lui	a1,0x0
    2354:	24a50000 	addiu	a1,a1,0
    2358:	24490008 	addiu	t1,v0,8
    235c:	ae0902d0 	sw	t1,720(s0)
    2360:	ac5e0000 	sw	s8,0(v0)
    2364:	8ec40000 	lw	a0,0(s6)
    2368:	240609a3 	li	a2,2467
    236c:	0c000000 	jal	0 <func_80B699A0>
    2370:	afa200ac 	sw	v0,172(sp)
    2374:	8fa300ac 	lw	v1,172(sp)
    2378:	ac620004 	sw	v0,4(v1)
    237c:	8e0202d0 	lw	v0,720(s0)
    2380:	244a0008 	addiu	t2,v0,8
    2384:	ae0a02d0 	sw	t2,720(s0)
    2388:	ac520004 	sw	s2,4(v0)
    238c:	ac550000 	sw	s5,0(v0)
    2390:	26730001 	addiu	s3,s3,1
    2394:	00139c00 	sll	s3,s3,0x10
    2398:	00139c03 	sra	s3,s3,0x10
    239c:	2a610082 	slti	at,s3,130
    23a0:	1420ffb9 	bnez	at,2288 <func_80B6B674+0x5b4>
    23a4:	26310040 	addiu	s1,s1,64
    23a8:	0000a025 	move	s4,zero
    23ac:	0c000000 	jal	0 <func_80B699A0>
    23b0:	8ec40000 	lw	a0,0(s6)
    23b4:	8fb10070 	lw	s1,112(sp)
    23b8:	2413001e 	li	s3,30
    23bc:	922b0024 	lbu	t3,36(s1)
    23c0:	24010007 	li	at,7
    23c4:	3c120601 	lui	s2,0x601
    23c8:	15610035 	bne	t3,at,24a0 <func_80B6B674+0x7cc>
    23cc:	00003825 	move	a3,zero
    23d0:	16800018 	bnez	s4,2434 <func_80B6B674+0x760>
    23d4:	26528678 	addiu	s2,s2,-31112
    23d8:	8e0202d0 	lw	v0,720(s0)
    23dc:	3c040601 	lui	a0,0x601
    23e0:	24848610 	addiu	a0,a0,-31216
    23e4:	244c0008 	addiu	t4,v0,8
    23e8:	ae0c02d0 	sw	t4,720(s0)
    23ec:	ac440004 	sw	a0,4(v0)
    23f0:	ac550000 	sw	s5,0(v0)
    23f4:	8e0202d0 	lw	v0,720(s0)
    23f8:	3c0f9b9b 	lui	t7,0x9b9b
    23fc:	35ef9b00 	ori	t7,t7,0x9b00
    2400:	244d0008 	addiu	t5,v0,8
    2404:	ae0d02d0 	sw	t5,720(s0)
    2408:	3c0efb00 	lui	t6,0xfb00
    240c:	ac4e0000 	sw	t6,0(v0)
    2410:	ac4f0004 	sw	t7,4(v0)
    2414:	8e0202d0 	lw	v0,720(s0)
    2418:	2419ff82 	li	t9,-126
    241c:	26940001 	addiu	s4,s4,1
    2420:	24580008 	addiu	t8,v0,8
    2424:	ae1802d0 	sw	t8,720(s0)
    2428:	329400ff 	andi	s4,s4,0xff
    242c:	ac590004 	sw	t9,4(v0)
    2430:	ac570000 	sw	s7,0(v0)
    2434:	c62c0000 	lwc1	$f12,0(s1)
    2438:	c62e0004 	lwc1	$f14,4(s1)
    243c:	0c000000 	jal	0 <func_80B699A0>
    2440:	8e260008 	lw	a2,8(s1)
    2444:	c62c0030 	lwc1	$f12,48(s1)
    2448:	4600a386 	mov.s	$f14,$f20
    244c:	24070001 	li	a3,1
    2450:	44066000 	mfc1	a2,$f12
    2454:	0c000000 	jal	0 <func_80B699A0>
    2458:	00000000 	nop
    245c:	8e0202d0 	lw	v0,720(s0)
    2460:	3c050000 	lui	a1,0x0
    2464:	24a50000 	addiu	a1,a1,0
    2468:	24490008 	addiu	t1,v0,8
    246c:	ae0902d0 	sw	t1,720(s0)
    2470:	ac5e0000 	sw	s8,0(v0)
    2474:	8ec40000 	lw	a0,0(s6)
    2478:	240609c8 	li	a2,2504
    247c:	0c000000 	jal	0 <func_80B699A0>
    2480:	afa20098 	sw	v0,152(sp)
    2484:	8fa30098 	lw	v1,152(sp)
    2488:	ac620004 	sw	v0,4(v1)
    248c:	8e0202d0 	lw	v0,720(s0)
    2490:	244a0008 	addiu	t2,v0,8
    2494:	ae0a02d0 	sw	t2,720(s0)
    2498:	ac520004 	sw	s2,4(v0)
    249c:	ac550000 	sw	s5,0(v0)
    24a0:	26730001 	addiu	s3,s3,1
    24a4:	00139c00 	sll	s3,s3,0x10
    24a8:	00139c03 	sra	s3,s3,0x10
    24ac:	2a610082 	slti	at,s3,130
    24b0:	1420ffc2 	bnez	at,23bc <func_80B6B674+0x6e8>
    24b4:	26310040 	addiu	s1,s1,64
    24b8:	0000a025 	move	s4,zero
    24bc:	8fb10070 	lw	s1,112(sp)
    24c0:	2413001e 	li	s3,30
    24c4:	922b0024 	lbu	t3,36(s1)
    24c8:	24010008 	li	at,8
    24cc:	3c0c0600 	lui	t4,0x600
    24d0:	1561004a 	bne	t3,at,25fc <func_80B6B674+0x928>
    24d4:	258c3a18 	addiu	t4,t4,14872
    24d8:	3c010001 	lui	at,0x1
    24dc:	34211da0 	ori	at,at,0x1da0
    24e0:	02c19021 	addu	s2,s6,at
    24e4:	16800016 	bnez	s4,2540 <func_80B6B674+0x86c>
    24e8:	afac0070 	sw	t4,112(sp)
    24ec:	8e0202d0 	lw	v0,720(s0)
    24f0:	3c040600 	lui	a0,0x600
    24f4:	248439a8 	addiu	a0,a0,14760
    24f8:	244d0008 	addiu	t5,v0,8
    24fc:	ae0d02d0 	sw	t5,720(s0)
    2500:	ac440004 	sw	a0,4(v0)
    2504:	ac550000 	sw	s5,0(v0)
    2508:	8e0202d0 	lw	v0,720(s0)
    250c:	3c0f0000 	lui	t7,0x0
    2510:	2401ff00 	li	at,-256
    2514:	244e0008 	addiu	t6,v0,8
    2518:	ae0e02d0 	sw	t6,720(s0)
    251c:	ac570000 	sw	s7,0(v0)
    2520:	8def0000 	lw	t7,0(t7)
    2524:	26940001 	addiu	s4,s4,1
    2528:	329400ff 	andi	s4,s4,0xff
    252c:	85f809fa 	lh	t8,2554(t7)
    2530:	27190050 	addiu	t9,t8,80
    2534:	332900ff 	andi	t1,t9,0xff
    2538:	01215025 	or	t2,t1,at
    253c:	ac4a0004 	sw	t2,4(v0)
    2540:	0c000000 	jal	0 <func_80B699A0>
    2544:	00000000 	nop
    2548:	3c013f00 	lui	at,0x3f00
    254c:	44812000 	mtc1	at,$f4
    2550:	3c010000 	lui	at,0x0
    2554:	00003825 	move	a3,zero
    2558:	4604003c 	c.lt.s	$f0,$f4
    255c:	00000000 	nop
    2560:	45000004 	bc1f	2574 <func_80B6B674+0x8a0>
    2564:	00000000 	nop
    2568:	44803000 	mtc1	zero,$f6
    256c:	10000003 	b	257c <func_80B6B674+0x8a8>
    2570:	e7a60130 	swc1	$f6,304(sp)
    2574:	c4280000 	lwc1	$f8,0(at)
    2578:	e7a80130 	swc1	$f8,304(sp)
    257c:	c62c0000 	lwc1	$f12,0(s1)
    2580:	c62e0004 	lwc1	$f14,4(s1)
    2584:	0c000000 	jal	0 <func_80B699A0>
    2588:	8e260008 	lw	a2,8(s1)
    258c:	0c000000 	jal	0 <func_80B699A0>
    2590:	02402025 	move	a0,s2
    2594:	c7ac0130 	lwc1	$f12,304(sp)
    2598:	0c000000 	jal	0 <func_80B699A0>
    259c:	24050001 	li	a1,1
    25a0:	c62c0030 	lwc1	$f12,48(s1)
    25a4:	4406a000 	mfc1	a2,$f20
    25a8:	24070001 	li	a3,1
    25ac:	0c000000 	jal	0 <func_80B699A0>
    25b0:	46006386 	mov.s	$f14,$f12
    25b4:	8e0202d0 	lw	v0,720(s0)
    25b8:	3c050000 	lui	a1,0x0
    25bc:	24a50000 	addiu	a1,a1,0
    25c0:	244b0008 	addiu	t3,v0,8
    25c4:	ae0b02d0 	sw	t3,720(s0)
    25c8:	ac5e0000 	sw	s8,0(v0)
    25cc:	8ec40000 	lw	a0,0(s6)
    25d0:	240609ed 	li	a2,2541
    25d4:	0c000000 	jal	0 <func_80B699A0>
    25d8:	afa20088 	sw	v0,136(sp)
    25dc:	8fa30088 	lw	v1,136(sp)
    25e0:	ac620004 	sw	v0,4(v1)
    25e4:	8e0202d0 	lw	v0,720(s0)
    25e8:	244c0008 	addiu	t4,v0,8
    25ec:	ae0c02d0 	sw	t4,720(s0)
    25f0:	ac550000 	sw	s5,0(v0)
    25f4:	8fad0070 	lw	t5,112(sp)
    25f8:	ac4d0004 	sw	t5,4(v0)
    25fc:	26730001 	addiu	s3,s3,1
    2600:	00139c00 	sll	s3,s3,0x10
    2604:	00139c03 	sra	s3,s3,0x10
    2608:	2a610082 	slti	at,s3,130
    260c:	1420ffad 	bnez	at,24c4 <func_80B6B674+0x7f0>
    2610:	26310040 	addiu	s1,s1,64
    2614:	8fae0124 	lw	t6,292(sp)
    2618:	24010006 	li	at,6
    261c:	00003825 	move	a3,zero
    2620:	91cf0024 	lbu	t7,36(t6)
    2624:	15e10046 	bne	t7,at,2740 <func_80B6B674+0xa6c>
    2628:	00000000 	nop
    262c:	c5cc0000 	lwc1	$f12,0(t6)
    2630:	c5ce0004 	lwc1	$f14,4(t6)
    2634:	0c000000 	jal	0 <func_80B699A0>
    2638:	8dc60008 	lw	a2,8(t6)
    263c:	3c110000 	lui	s1,0x0
    2640:	26310000 	addiu	s1,s1,0
    2644:	86380002 	lh	t8,2(s1)
    2648:	3c014700 	lui	at,0x4700
    264c:	4481a000 	mtc1	at,$f20
    2650:	44985000 	mtc1	t8,$f10
    2654:	3c010000 	lui	at,0x0
    2658:	c4320000 	lwc1	$f18,0(at)
    265c:	46805420 	cvt.s.w	$f16,$f10
    2660:	24050001 	li	a1,1
    2664:	46128102 	mul.s	$f4,$f16,$f18
    2668:	0c000000 	jal	0 <func_80B699A0>
    266c:	46142303 	div.s	$f12,$f4,$f20
    2670:	86390000 	lh	t9,0(s1)
    2674:	3c010000 	lui	at,0x0
    2678:	c42a0000 	lwc1	$f10,0(at)
    267c:	44993000 	mtc1	t9,$f6
    2680:	24050001 	li	a1,1
    2684:	46803220 	cvt.s.w	$f8,$f6
    2688:	460a4402 	mul.s	$f16,$f8,$f10
    268c:	0c000000 	jal	0 <func_80B699A0>
    2690:	46148303 	div.s	$f12,$f16,$f20
    2694:	86290004 	lh	t1,4(s1)
    2698:	3c010000 	lui	at,0x0
    269c:	c4260000 	lwc1	$f6,0(at)
    26a0:	44899000 	mtc1	t1,$f18
    26a4:	24050001 	li	a1,1
    26a8:	46809120 	cvt.s.w	$f4,$f18
    26ac:	46062202 	mul.s	$f8,$f4,$f6
    26b0:	0c000000 	jal	0 <func_80B699A0>
    26b4:	46144303 	div.s	$f12,$f8,$f20
    26b8:	8faa0124 	lw	t2,292(sp)
    26bc:	24070001 	li	a3,1
    26c0:	c54c0030 	lwc1	$f12,48(t2)
    26c4:	44066000 	mfc1	a2,$f12
    26c8:	0c000000 	jal	0 <func_80B699A0>
    26cc:	46006386 	mov.s	$f14,$f12
    26d0:	3c010000 	lui	at,0x0
    26d4:	44807000 	mtc1	zero,$f14
    26d8:	c42c0000 	lwc1	$f12,0(at)
    26dc:	24060000 	li	a2,0
    26e0:	0c000000 	jal	0 <func_80B699A0>
    26e4:	24070001 	li	a3,1
    26e8:	3c010000 	lui	at,0x0
    26ec:	c42c0000 	lwc1	$f12,0(at)
    26f0:	0c000000 	jal	0 <func_80B699A0>
    26f4:	24050001 	li	a1,1
    26f8:	8e0202c0 	lw	v0,704(s0)
    26fc:	3c050000 	lui	a1,0x0
    2700:	24a50000 	addiu	a1,a1,0
    2704:	244b0008 	addiu	t3,v0,8
    2708:	ae0b02c0 	sw	t3,704(s0)
    270c:	ac5e0000 	sw	s8,0(v0)
    2710:	8ec40000 	lw	a0,0(s6)
    2714:	24060a00 	li	a2,2560
    2718:	0c000000 	jal	0 <func_80B699A0>
    271c:	00408825 	move	s1,v0
    2720:	ae220004 	sw	v0,4(s1)
    2724:	8e0202c0 	lw	v0,704(s0)
    2728:	3c0d0600 	lui	t5,0x600
    272c:	25ad74c8 	addiu	t5,t5,29896
    2730:	244c0008 	addiu	t4,v0,8
    2734:	ae0c02c0 	sw	t4,704(s0)
    2738:	ac4d0004 	sw	t5,4(v0)
    273c:	ac550000 	sw	s5,0(v0)
    2740:	0c000000 	jal	0 <func_80B699A0>
    2744:	00000000 	nop
    2748:	3c060000 	lui	a2,0x0
    274c:	24c60000 	addiu	a2,a2,0
    2750:	27a40110 	addiu	a0,sp,272
    2754:	8ec50000 	lw	a1,0(s6)
    2758:	0c000000 	jal	0 <func_80B699A0>
    275c:	24070a05 	li	a3,2565
    2760:	8fbf0064 	lw	ra,100(sp)
    2764:	d7b40038 	ldc1	$f20,56(sp)
    2768:	8fb00040 	lw	s0,64(sp)
    276c:	8fb10044 	lw	s1,68(sp)
    2770:	8fb20048 	lw	s2,72(sp)
    2774:	8fb3004c 	lw	s3,76(sp)
    2778:	8fb40050 	lw	s4,80(sp)
    277c:	8fb50054 	lw	s5,84(sp)
    2780:	8fb60058 	lw	s6,88(sp)
    2784:	8fb7005c 	lw	s7,92(sp)
    2788:	8fbe0060 	lw	s8,96(sp)
    278c:	03e00008 	jr	ra
    2790:	27bd0138 	addiu	sp,sp,312

00002794 <func_80B6C134>:
    2794:	27bdff90 	addiu	sp,sp,-112
    2798:	afbf003c 	sw	ra,60(sp)
    279c:	afb10038 	sw	s1,56(sp)
    27a0:	afb00034 	sw	s0,52(sp)
    27a4:	8c850000 	lw	a1,0(a0)
    27a8:	00808825 	move	s1,a0
    27ac:	3c060000 	lui	a2,0x0
    27b0:	24c60000 	addiu	a2,a2,0
    27b4:	27a40058 	addiu	a0,sp,88
    27b8:	24070a0c 	li	a3,2572
    27bc:	0c000000 	jal	0 <func_80B699A0>
    27c0:	00a08025 	move	s0,a1
    27c4:	8e0202d0 	lw	v0,720(s0)
    27c8:	3c0fdb06 	lui	t7,0xdb06
    27cc:	35ef0024 	ori	t7,t7,0x24
    27d0:	244e0008 	addiu	t6,v0,8
    27d4:	ae0e02d0 	sw	t6,720(s0)
    27d8:	3c030001 	lui	v1,0x1
    27dc:	00711821 	addu	v1,v1,s1
    27e0:	ac4f0000 	sw	t7,0(v0)
    27e4:	8c631de4 	lw	v1,7652(v1)
    27e8:	8e240000 	lw	a0,0(s1)
    27ec:	24180020 	li	t8,32
    27f0:	00035040 	sll	t2,v1,0x1
    27f4:	000a5823 	negu	t3,t2
    27f8:	24190040 	li	t9,64
    27fc:	24090001 	li	t1,1
    2800:	240c0010 	li	t4,16
    2804:	240d0010 	li	t5,16
    2808:	afad0028 	sw	t5,40(sp)
    280c:	afac0024 	sw	t4,36(sp)
    2810:	afa90018 	sw	t1,24(sp)
    2814:	afb90014 	sw	t9,20(sp)
    2818:	afab001c 	sw	t3,28(sp)
    281c:	afb80010 	sw	t8,16(sp)
    2820:	afa00020 	sw	zero,32(sp)
    2824:	00002825 	move	a1,zero
    2828:	afa20054 	sw	v0,84(sp)
    282c:	00603025 	move	a2,v1
    2830:	0c000000 	jal	0 <func_80B699A0>
    2834:	000338c0 	sll	a3,v1,0x3
    2838:	8fa80054 	lw	t0,84(sp)
    283c:	3c18c3e1 	lui	t8,0xc3e1
    2840:	3718eb32 	ori	t8,t8,0xeb32
    2844:	ad020004 	sw	v0,4(t0)
    2848:	8e0202d0 	lw	v0,720(s0)
    284c:	3c0ffa00 	lui	t7,0xfa00
    2850:	3c010000 	lui	at,0x0
    2854:	244e0008 	addiu	t6,v0,8
    2858:	ae0e02d0 	sw	t6,720(s0)
    285c:	ac580004 	sw	t8,4(v0)
    2860:	ac4f0000 	sw	t7,0(v0)
    2864:	c42c0000 	lwc1	$f12,0(at)
    2868:	3c01c1c0 	lui	at,0xc1c0
    286c:	44817000 	mtc1	at,$f14
    2870:	3c06c416 	lui	a2,0xc416
    2874:	0c000000 	jal	0 <func_80B699A0>
    2878:	00003825 	move	a3,zero
    287c:	3c010000 	lui	at,0x0
    2880:	c42c0000 	lwc1	$f12,0(at)
    2884:	3c013f80 	lui	at,0x3f80
    2888:	44817000 	mtc1	at,$f14
    288c:	44066000 	mfc1	a2,$f12
    2890:	0c000000 	jal	0 <func_80B699A0>
    2894:	24070001 	li	a3,1
    2898:	8e0202d0 	lw	v0,720(s0)
    289c:	3c09da38 	lui	t1,0xda38
    28a0:	35290003 	ori	t1,t1,0x3
    28a4:	24590008 	addiu	t9,v0,8
    28a8:	ae1902d0 	sw	t9,720(s0)
    28ac:	ac490000 	sw	t1,0(v0)
    28b0:	8e240000 	lw	a0,0(s1)
    28b4:	3c050000 	lui	a1,0x0
    28b8:	24a50000 	addiu	a1,a1,0
    28bc:	24060a26 	li	a2,2598
    28c0:	0c000000 	jal	0 <func_80B699A0>
    28c4:	afa2004c 	sw	v0,76(sp)
    28c8:	8fa3004c 	lw	v1,76(sp)
    28cc:	3c040600 	lui	a0,0x600
    28d0:	24843230 	addiu	a0,a0,12848
    28d4:	ac620004 	sw	v0,4(v1)
    28d8:	8e0202d0 	lw	v0,720(s0)
    28dc:	00046100 	sll	t4,a0,0x4
    28e0:	000c6f02 	srl	t5,t4,0x1c
    28e4:	244a0008 	addiu	t2,v0,8
    28e8:	ae0a02d0 	sw	t2,720(s0)
    28ec:	000d7080 	sll	t6,t5,0x2
    28f0:	3c0bde00 	lui	t3,0xde00
    28f4:	3c0f0000 	lui	t7,0x0
    28f8:	01ee7821 	addu	t7,t7,t6
    28fc:	3c0100ff 	lui	at,0xff
    2900:	ac4b0000 	sw	t3,0(v0)
    2904:	8def0000 	lw	t7,0(t7)
    2908:	3421ffff 	ori	at,at,0xffff
    290c:	0081c024 	and	t8,a0,at
    2910:	3c018000 	lui	at,0x8000
    2914:	01f8c821 	addu	t9,t7,t8
    2918:	03214821 	addu	t1,t9,at
    291c:	3c060000 	lui	a2,0x0
    2920:	ac490004 	sw	t1,4(v0)
    2924:	8e250000 	lw	a1,0(s1)
    2928:	24c60000 	addiu	a2,a2,0
    292c:	27a40058 	addiu	a0,sp,88
    2930:	0c000000 	jal	0 <func_80B699A0>
    2934:	24070a35 	li	a3,2613
    2938:	8fbf003c 	lw	ra,60(sp)
    293c:	8fb00034 	lw	s0,52(sp)
    2940:	8fb10038 	lw	s1,56(sp)
    2944:	03e00008 	jr	ra
    2948:	27bd0070 	addiu	sp,sp,112

0000294c <func_80B6C2EC>:
    294c:	3c0142dc 	lui	at,0x42dc
    2950:	44816000 	mtc1	at,$f12
    2954:	c4800000 	lwc1	$f0,0(a0)
    2958:	3c014316 	lui	at,0x4316
    295c:	4600603e 	c.le.s	$f12,$f0
    2960:	00000000 	nop
    2964:	45020015 	bc1fl	29bc <func_80B6C2EC+0x70>
    2968:	4600603e 	c.le.s	$f12,$f0
    296c:	44812000 	mtc1	at,$f4
    2970:	3c0144af 	lui	at,0x44af
    2974:	4604003e 	c.le.s	$f0,$f4
    2978:	00000000 	nop
    297c:	4502000f 	bc1fl	29bc <func_80B6C2EC+0x70>
    2980:	4600603e 	c.le.s	$f12,$f0
    2984:	c4820008 	lwc1	$f2,8(a0)
    2988:	44813000 	mtc1	at,$f6
    298c:	3c014491 	lui	at,0x4491
    2990:	4606103e 	c.le.s	$f2,$f6
    2994:	00000000 	nop
    2998:	45020008 	bc1fl	29bc <func_80B6C2EC+0x70>
    299c:	4600603e 	c.le.s	$f12,$f0
    29a0:	44814000 	mtc1	at,$f8
    29a4:	00000000 	nop
    29a8:	4602403e 	c.le.s	$f8,$f2
    29ac:	00000000 	nop
    29b0:	45030018 	bc1tl	2a14 <func_80B6C2EC+0xc8>
    29b4:	3c014228 	lui	at,0x4228
    29b8:	4600603e 	c.le.s	$f12,$f0
    29bc:	3c014352 	lui	at,0x4352
    29c0:	4502001d 	bc1fl	2a38 <func_80B6C2EC+0xec>
    29c4:	00001025 	move	v0,zero
    29c8:	44815000 	mtc1	at,$f10
    29cc:	3c014496 	lui	at,0x4496
    29d0:	460a003e 	c.le.s	$f0,$f10
    29d4:	00000000 	nop
    29d8:	45020017 	bc1fl	2a38 <func_80B6C2EC+0xec>
    29dc:	00001025 	move	v0,zero
    29e0:	c4820008 	lwc1	$f2,8(a0)
    29e4:	44818000 	mtc1	at,$f16
    29e8:	3c014491 	lui	at,0x4491
    29ec:	4610103e 	c.le.s	$f2,$f16
    29f0:	00000000 	nop
    29f4:	45020010 	bc1fl	2a38 <func_80B6C2EC+0xec>
    29f8:	00001025 	move	v0,zero
    29fc:	44819000 	mtc1	at,$f18
    2a00:	00000000 	nop
    2a04:	4602903e 	c.le.s	$f18,$f2
    2a08:	00000000 	nop
    2a0c:	45000009 	bc1f	2a34 <func_80B6C2EC+0xe8>
    2a10:	3c014228 	lui	at,0x4228
    2a14:	44812000 	mtc1	at,$f4
    2a18:	c4860004 	lwc1	$f6,4(a0)
    2a1c:	4604303e 	c.le.s	$f6,$f4
    2a20:	00000000 	nop
    2a24:	45020004 	bc1fl	2a38 <func_80B6C2EC+0xec>
    2a28:	00001025 	move	v0,zero
    2a2c:	03e00008 	jr	ra
    2a30:	24020001 	li	v0,1
    2a34:	00001025 	move	v0,zero
    2a38:	03e00008 	jr	ra
    2a3c:	00000000 	nop

00002a40 <func_80B6C3E0>:
    2a40:	27bdff08 	addiu	sp,sp,-248
    2a44:	3c0f0000 	lui	t7,0x0
    2a48:	afbf0064 	sw	ra,100(sp)
    2a4c:	afb60060 	sw	s6,96(sp)
    2a50:	afb5005c 	sw	s5,92(sp)
    2a54:	afb40058 	sw	s4,88(sp)
    2a58:	afb30054 	sw	s3,84(sp)
    2a5c:	afb20050 	sw	s2,80(sp)
    2a60:	afb1004c 	sw	s1,76(sp)
    2a64:	afb00048 	sw	s0,72(sp)
    2a68:	f7be0040 	sdc1	$f30,64(sp)
    2a6c:	f7bc0038 	sdc1	$f28,56(sp)
    2a70:	f7ba0030 	sdc1	$f26,48(sp)
    2a74:	f7b80028 	sdc1	$f24,40(sp)
    2a78:	f7b60020 	sdc1	$f22,32(sp)
    2a7c:	f7b40018 	sdc1	$f20,24(sp)
    2a80:	afa500fc 	sw	a1,252(sp)
    2a84:	afa70104 	sw	a3,260(sp)
    2a88:	25ef0000 	addiu	t7,t7,0
    2a8c:	8df90000 	lw	t9,0(t7)
    2a90:	27ae00c0 	addiu	t6,sp,192
    2a94:	8df80004 	lw	t8,4(t7)
    2a98:	add90000 	sw	t9,0(t6)
    2a9c:	8df90008 	lw	t9,8(t7)
    2aa0:	3c080000 	lui	t0,0x0
    2aa4:	add80004 	sw	t8,4(t6)
    2aa8:	add90008 	sw	t9,8(t6)
    2aac:	91080000 	lbu	t0,0(t0)
    2ab0:	00c0a025 	move	s4,a2
    2ab4:	0080b025 	move	s6,a0
    2ab8:	11000035 	beqz	t0,2b90 <func_80B6C3E0+0x150>
    2abc:	00008825 	move	s1,zero
    2ac0:	8faa00fc 	lw	t2,252(sp)
    2ac4:	27a900a4 	addiu	t1,sp,164
    2ac8:	27ad0098 	addiu	t5,sp,152
    2acc:	8d4c0000 	lw	t4,0(t2)
    2ad0:	3c01447a 	lui	at,0x447a
    2ad4:	4481a000 	mtc1	at,$f20
    2ad8:	ad2c0000 	sw	t4,0(t1)
    2adc:	8d4b0004 	lw	t3,4(t2)
    2ae0:	3c010000 	lui	at,0x0
    2ae4:	ad2b0004 	sw	t3,4(t1)
    2ae8:	8d4c0008 	lw	t4,8(t2)
    2aec:	ad2c0008 	sw	t4,8(t1)
    2af0:	8ccf0954 	lw	t7,2388(a2)
    2af4:	adaf0000 	sw	t7,0(t5)
    2af8:	8cce0958 	lw	t6,2392(a2)
    2afc:	adae0004 	sw	t6,4(t5)
    2b00:	8ccf095c 	lw	t7,2396(a2)
    2b04:	adaf0008 	sw	t7,8(t5)
    2b08:	c7a600a4 	lwc1	$f6,164(sp)
    2b0c:	c7a40098 	lwc1	$f4,152(sp)
    2b10:	c7aa00a8 	lwc1	$f10,168(sp)
    2b14:	c7a8009c 	lwc1	$f8,156(sp)
    2b18:	46062681 	sub.s	$f26,$f4,$f6
    2b1c:	c7a600ac 	lwc1	$f6,172(sp)
    2b20:	c7a400a0 	lwc1	$f4,160(sp)
    2b24:	460a4301 	sub.s	$f12,$f8,$f10
    2b28:	461ad202 	mul.s	$f8,$f26,$f26
    2b2c:	46062381 	sub.s	$f14,$f4,$f6
    2b30:	460c6282 	mul.s	$f10,$f12,$f12
    2b34:	e7ac0090 	swc1	$f12,144(sp)
    2b38:	460e7182 	mul.s	$f6,$f14,$f14
    2b3c:	e7ae008c 	swc1	$f14,140(sp)
    2b40:	460a4100 	add.s	$f4,$f8,$f10
    2b44:	c4280000 	lwc1	$f8,0(at)
    2b48:	3c014348 	lui	at,0x4348
    2b4c:	46062000 	add.s	$f0,$f4,$f6
    2b50:	46000004 	sqrt.s	$f0,$f0
    2b54:	46080482 	mul.s	$f18,$f0,$f8
    2b58:	44810000 	mtc1	at,$f0
    2b5c:	4612a03c 	c.lt.s	$f20,$f18
    2b60:	00000000 	nop
    2b64:	45000002 	bc1f	2b70 <func_80B6C3E0+0x130>
    2b68:	00000000 	nop
    2b6c:	4600a486 	mov.s	$f18,$f20
    2b70:	46009282 	mul.s	$f10,$f18,$f0
    2b74:	3c010000 	lui	at,0x0
    2b78:	c4240000 	lwc1	$f4,0(at)
    2b7c:	3c010000 	lui	at,0x0
    2b80:	e7ba0094 	swc1	$f26,148(sp)
    2b84:	46045182 	mul.s	$f6,$f10,$f4
    2b88:	46060201 	sub.s	$f8,$f0,$f6
    2b8c:	e4280000 	swc1	$f8,0(at)
    2b90:	3c010000 	lui	at,0x0
    2b94:	c42a0000 	lwc1	$f10,0(at)
    2b98:	3c0140a0 	lui	at,0x40a0
    2b9c:	44813000 	mtc1	at,$f6
    2ba0:	4600510d 	trunc.w.s	$f4,$f10
    2ba4:	3c0141a0 	lui	at,0x41a0
    2ba8:	4481c000 	mtc1	at,$f24
    2bac:	3c013f80 	lui	at,0x3f80
    2bb0:	44122000 	mfc1	s2,$f4
    2bb4:	4481b000 	mtc1	at,$f22
    2bb8:	c7ba0094 	lwc1	$f26,148(sp)
    2bbc:	00129400 	sll	s2,s2,0x10
    2bc0:	00129403 	sra	s2,s2,0x10
    2bc4:	2413000c 	li	s3,12
    2bc8:	e7a600c8 	swc1	$f6,200(sp)
    2bcc:	0251082a 	slt	at,s2,s1
    2bd0:	1420000c 	bnez	at,2c04 <func_80B6C3E0+0x1c4>
    2bd4:	3c0c0000 	lui	t4,0x0
    2bd8:	02330019 	multu	s1,s3
    2bdc:	8fa900fc 	lw	t1,252(sp)
    2be0:	8d2b0000 	lw	t3,0(t1)
    2be4:	0000c812 	mflo	t9
    2be8:	02994021 	addu	t0,s4,t9
    2bec:	ad0b0000 	sw	t3,0(t0)
    2bf0:	8d2a0004 	lw	t2,4(t1)
    2bf4:	ad0a0004 	sw	t2,4(t0)
    2bf8:	8d2b0008 	lw	t3,8(t1)
    2bfc:	1000002b 	b	2cac <func_80B6C3E0+0x26c>
    2c00:	ad0b0008 	sw	t3,8(t0)
    2c04:	918c0000 	lbu	t4,0(t4)
    2c08:	240f00c9 	li	t7,201
    2c0c:	01f2c023 	subu	t8,t7,s2
    2c10:	11800026 	beqz	t4,2cac <func_80B6C3E0+0x26c>
    2c14:	02327023 	subu	t6,s1,s2
    2c18:	448e4000 	mtc1	t6,$f8
    2c1c:	44982000 	mtc1	t8,$f4
    2c20:	02330019 	multu	s1,s3
    2c24:	468042a0 	cvt.s.w	$f10,$f8
    2c28:	4406b000 	mfc1	a2,$f22
    2c2c:	4407c000 	mfc1	a3,$f24
    2c30:	468021a0 	cvt.s.w	$f6,$f4
    2c34:	c7a400a4 	lwc1	$f4,164(sp)
    2c38:	00006812 	mflo	t5
    2c3c:	01b48021 	addu	s0,t5,s4
    2c40:	46065503 	div.s	$f20,$f10,$f6
    2c44:	02002025 	move	a0,s0
    2c48:	4614d202 	mul.s	$f8,$f26,$f20
    2c4c:	46044280 	add.s	$f10,$f8,$f4
    2c50:	44055000 	mfc1	a1,$f10
    2c54:	0c000000 	jal	0 <func_80B699A0>
    2c58:	00000000 	nop
    2c5c:	c7a60090 	lwc1	$f6,144(sp)
    2c60:	c7a400a8 	lwc1	$f4,168(sp)
    2c64:	4406b000 	mfc1	a2,$f22
    2c68:	46143202 	mul.s	$f8,$f6,$f20
    2c6c:	4407c000 	mfc1	a3,$f24
    2c70:	26040004 	addiu	a0,s0,4
    2c74:	46044280 	add.s	$f10,$f8,$f4
    2c78:	44055000 	mfc1	a1,$f10
    2c7c:	0c000000 	jal	0 <func_80B699A0>
    2c80:	00000000 	nop
    2c84:	c7a6008c 	lwc1	$f6,140(sp)
    2c88:	c7a400ac 	lwc1	$f4,172(sp)
    2c8c:	4406b000 	mfc1	a2,$f22
    2c90:	46143202 	mul.s	$f8,$f6,$f20
    2c94:	4407c000 	mfc1	a3,$f24
    2c98:	26040008 	addiu	a0,s0,8
    2c9c:	46044280 	add.s	$f10,$f8,$f4
    2ca0:	44055000 	mfc1	a1,$f10
    2ca4:	0c000000 	jal	0 <func_80B699A0>
    2ca8:	00000000 	nop
    2cac:	26310001 	addiu	s1,s1,1
    2cb0:	00118c00 	sll	s1,s1,0x10
    2cb4:	00118c03 	sra	s1,s1,0x10
    2cb8:	2a2100c8 	slti	at,s1,200
    2cbc:	5420ffc4 	bnezl	at,2bd0 <func_80B6C3E0+0x190>
    2cc0:	0251082a 	slt	at,s2,s1
    2cc4:	26420001 	addiu	v0,s2,1
    2cc8:	0002cc00 	sll	t9,v0,0x10
    2ccc:	00194403 	sra	t0,t9,0x10
    2cd0:	290100c8 	slti	at,t0,200
    2cd4:	00028c00 	sll	s1,v0,0x10
    2cd8:	00118c03 	sra	s1,s1,0x10
    2cdc:	102000a8 	beqz	at,2f80 <func_80B6C3E0+0x540>
    2ce0:	0000a825 	move	s5,zero
    2ce4:	3c010000 	lui	at,0x0
    2ce8:	c43e0000 	lwc1	$f30,0(at)
    2cec:	3c014466 	lui	at,0x4466
    2cf0:	4481e000 	mtc1	at,$f28
    2cf4:	00000000 	nop
    2cf8:	02330019 	multu	s1,s3
    2cfc:	3c010000 	lui	at,0x0
    2d00:	c4220000 	lwc1	$f2,0(at)
    2d04:	3c010000 	lui	at,0x0
    2d08:	c42a0000 	lwc1	$f10,0(at)
    2d0c:	3c0f0000 	lui	t7,0x0
    2d10:	46021480 	add.s	$f18,$f2,$f2
    2d14:	00009012 	mflo	s2
    2d18:	02548021 	addu	s0,s2,s4
    2d1c:	c6000000 	lwc1	$f0,0(s0)
    2d20:	c60c0008 	lwc1	$f12,8(s0)
    2d24:	c606fff4 	lwc1	$f6,-12(s0)
    2d28:	46000202 	mul.s	$f8,$f0,$f0
    2d2c:	c6100004 	lwc1	$f16,4(s0)
    2d30:	02002025 	move	a0,s0
    2d34:	460c6102 	mul.s	$f4,$f12,$f12
    2d38:	46060681 	sub.s	$f26,$f0,$f6
    2d3c:	46044380 	add.s	$f14,$f8,$f4
    2d40:	460e503c 	c.lt.s	$f10,$f14
    2d44:	00000000 	nop
    2d48:	4502000f 	bc1fl	2d88 <func_80B6C3E0+0x348>
    2d4c:	8ecc07c0 	lw	t4,1984(s6)
    2d50:	46007004 	sqrt.s	$f0,$f14
    2d54:	8ec907c0 	lw	t1,1984(s6)
    2d58:	3c010000 	lui	at,0x0
    2d5c:	c4240000 	lwc1	$f4,0(at)
    2d60:	8d2a0028 	lw	t2,40(t1)
    2d64:	854b0002 	lh	t3,2(t2)
    2d68:	448b3000 	mtc1	t3,$f6
    2d6c:	00000000 	nop
    2d70:	468030a0 	cvt.s.w	$f2,$f6
    2d74:	461c0201 	sub.s	$f8,$f0,$f28
    2d78:	46044282 	mul.s	$f10,$f8,$f4
    2d7c:	10000008 	b	2da0 <func_80B6C3E0+0x360>
    2d80:	46025300 	add.s	$f12,$f10,$f2
    2d84:	8ecc07c0 	lw	t4,1984(s6)
    2d88:	8d8d0028 	lw	t5,40(t4)
    2d8c:	85ae0002 	lh	t6,2(t5)
    2d90:	448e3000 	mtc1	t6,$f6
    2d94:	00000000 	nop
    2d98:	468030a0 	cvt.s.w	$f2,$f6
    2d9c:	46001306 	mov.s	$f12,$f2
    2da0:	91ef0000 	lbu	t7,0(t7)
    2da4:	24010002 	li	at,2
    2da8:	55e10028 	bnel	t7,at,2e4c <func_80B6C3E0+0x40c>
    2dac:	2a2100bf 	slti	at,s1,191
    2db0:	460c803c 	c.lt.s	$f16,$f12
    2db4:	00000000 	nop
    2db8:	45000021 	bc1f	2e40 <func_80B6C3E0+0x400>
    2dbc:	00000000 	nop
    2dc0:	46007004 	sqrt.s	$f0,$f14
    2dc4:	3c010000 	lui	at,0x0
    2dc8:	c4240000 	lwc1	$f4,0(at)
    2dcc:	3c010000 	lui	at,0x0
    2dd0:	461c0201 	sub.s	$f8,$f0,$f28
    2dd4:	46044282 	mul.s	$f10,$f8,$f4
    2dd8:	46025300 	add.s	$f12,$f10,$f2
    2ddc:	4610603c 	c.lt.s	$f12,$f16
    2de0:	00000000 	nop
    2de4:	4500002e 	bc1f	2ea0 <func_80B6C3E0+0x460>
    2de8:	00000000 	nop
    2dec:	460c8181 	sub.s	$f6,$f16,$f12
    2df0:	c4280000 	lwc1	$f8,0(at)
    2df4:	2a210064 	slti	at,s1,100
    2df8:	2638ff9c 	addiu	t8,s1,-100
    2dfc:	46083082 	mul.s	$f2,$f6,$f8
    2e00:	4602f03c 	c.lt.s	$f30,$f2
    2e04:	00000000 	nop
    2e08:	45000002 	bc1f	2e14 <func_80B6C3E0+0x3d4>
    2e0c:	00000000 	nop
    2e10:	4600f086 	mov.s	$f2,$f30
    2e14:	14200022 	bnez	at,2ea0 <func_80B6C3E0+0x460>
    2e18:	00000000 	nop
    2e1c:	44982000 	mtc1	t8,$f4
    2e20:	3c010000 	lui	at,0x0
    2e24:	c4260000 	lwc1	$f6,0(at)
    2e28:	468022a0 	cvt.s.w	$f10,$f4
    2e2c:	46065202 	mul.s	$f8,$f10,$f6
    2e30:	00000000 	nop
    2e34:	46081082 	mul.s	$f2,$f2,$f8
    2e38:	10000019 	b	2ea0 <func_80B6C3E0+0x460>
    2e3c:	46028401 	sub.s	$f16,$f16,$f2
    2e40:	10000017 	b	2ea0 <func_80B6C3E0+0x460>
    2e44:	46128401 	sub.s	$f16,$f16,$f18
    2e48:	2a2100bf 	slti	at,s1,191
    2e4c:	54200010 	bnezl	at,2e90 <func_80B6C3E0+0x450>
    2e50:	4610603c 	c.lt.s	$f12,$f16
    2e54:	4610603c 	c.lt.s	$f12,$f16
    2e58:	3c010000 	lui	at,0x0
    2e5c:	45000010 	bc1f	2ea0 <func_80B6C3E0+0x460>
    2e60:	00000000 	nop
    2e64:	460c8101 	sub.s	$f4,$f16,$f12
    2e68:	c42a0000 	lwc1	$f10,0(at)
    2e6c:	460a2082 	mul.s	$f2,$f4,$f10
    2e70:	4602903c 	c.lt.s	$f18,$f2
    2e74:	00000000 	nop
    2e78:	45000002 	bc1f	2e84 <func_80B6C3E0+0x444>
    2e7c:	00000000 	nop
    2e80:	46009086 	mov.s	$f2,$f18
    2e84:	10000006 	b	2ea0 <func_80B6C3E0+0x460>
    2e88:	46028401 	sub.s	$f16,$f16,$f2
    2e8c:	4610603c 	c.lt.s	$f12,$f16
    2e90:	00000000 	nop
    2e94:	45000002 	bc1f	2ea0 <func_80B6C3E0+0x460>
    2e98:	00000000 	nop
    2e9c:	46128401 	sub.s	$f16,$f16,$f18
    2ea0:	0c000000 	jal	0 <func_80B699A0>
    2ea4:	e7b000d8 	swc1	$f16,216(sp)
    2ea8:	10400004 	beqz	v0,2ebc <func_80B6C3E0+0x47c>
    2eac:	c7b000d8 	lwc1	$f16,216(sp)
    2eb0:	3c014228 	lui	at,0x4228
    2eb4:	44818000 	mtc1	at,$f16
    2eb8:	00000000 	nop
    2ebc:	c6080008 	lwc1	$f8,8(s0)
    2ec0:	c604fffc 	lwc1	$f4,-4(s0)
    2ec4:	c606fff8 	lwc1	$f6,-8(s0)
    2ec8:	4600d386 	mov.s	$f14,$f26
    2ecc:	46044501 	sub.s	$f20,$f8,$f4
    2ed0:	46068601 	sub.s	$f24,$f16,$f6
    2ed4:	0c000000 	jal	0 <func_80B699A0>
    2ed8:	4600a306 	mov.s	$f12,$f20
    2edc:	461ad282 	mul.s	$f10,$f26,$f26
    2ee0:	46000586 	mov.s	$f22,$f0
    2ee4:	4600c386 	mov.s	$f14,$f24
    2ee8:	4614a182 	mul.s	$f6,$f20,$f20
    2eec:	46065000 	add.s	$f0,$f10,$f6
    2ef0:	0c000000 	jal	0 <func_80B699A0>
    2ef4:	46000304 	sqrt.s	$f12,$f0
    2ef8:	8fb90104 	lw	t9,260(sp)
    2efc:	46000507 	neg.s	$f20,$f0
    2f00:	4600b306 	mov.s	$f12,$f22
    2f04:	03321021 	addu	v0,t9,s2
    2f08:	e456fff8 	swc1	$f22,-8(v0)
    2f0c:	e454fff4 	swc1	$f20,-12(v0)
    2f10:	0c000000 	jal	0 <func_80B699A0>
    2f14:	00002825 	move	a1,zero
    2f18:	4600a306 	mov.s	$f12,$f20
    2f1c:	0c000000 	jal	0 <func_80B699A0>
    2f20:	24050001 	li	a1,1
    2f24:	27a400c0 	addiu	a0,sp,192
    2f28:	0c000000 	jal	0 <func_80B699A0>
    2f2c:	27a500b4 	addiu	a1,sp,180
    2f30:	c608fff4 	lwc1	$f8,-12(s0)
    2f34:	c7a400b4 	lwc1	$f4,180(sp)
    2f38:	c606fff8 	lwc1	$f6,-8(s0)
    2f3c:	26310001 	addiu	s1,s1,1
    2f40:	46044280 	add.s	$f10,$f8,$f4
    2f44:	00118c00 	sll	s1,s1,0x10
    2f48:	00118c03 	sra	s1,s1,0x10
    2f4c:	26b50001 	addiu	s5,s5,1
    2f50:	e60a0000 	swc1	$f10,0(s0)
    2f54:	c7a800b8 	lwc1	$f8,184(sp)
    2f58:	c60afffc 	lwc1	$f10,-4(s0)
    2f5c:	0015ac00 	sll	s5,s5,0x10
    2f60:	46083100 	add.s	$f4,$f6,$f8
    2f64:	2a2100c8 	slti	at,s1,200
    2f68:	0015ac03 	sra	s5,s5,0x10
    2f6c:	e6040004 	swc1	$f4,4(s0)
    2f70:	c7a600bc 	lwc1	$f6,188(sp)
    2f74:	46065200 	add.s	$f8,$f10,$f6
    2f78:	1420ff5f 	bnez	at,2cf8 <func_80B6C3E0+0x2b8>
    2f7c:	e6080008 	swc1	$f8,8(s0)
    2f80:	8fbf0064 	lw	ra,100(sp)
    2f84:	d7b40018 	ldc1	$f20,24(sp)
    2f88:	d7b60020 	ldc1	$f22,32(sp)
    2f8c:	d7b80028 	ldc1	$f24,40(sp)
    2f90:	d7ba0030 	ldc1	$f26,48(sp)
    2f94:	d7bc0038 	ldc1	$f28,56(sp)
    2f98:	d7be0040 	ldc1	$f30,64(sp)
    2f9c:	8fb00048 	lw	s0,72(sp)
    2fa0:	8fb1004c 	lw	s1,76(sp)
    2fa4:	8fb20050 	lw	s2,80(sp)
    2fa8:	8fb30054 	lw	s3,84(sp)
    2fac:	8fb40058 	lw	s4,88(sp)
    2fb0:	8fb5005c 	lw	s5,92(sp)
    2fb4:	8fb60060 	lw	s6,96(sp)
    2fb8:	03e00008 	jr	ra
    2fbc:	27bd00f8 	addiu	sp,sp,248

00002fc0 <func_80B6C960>:
    2fc0:	27bdff68 	addiu	sp,sp,-152
    2fc4:	3c0e0000 	lui	t6,0x0
    2fc8:	afbf0054 	sw	ra,84(sp)
    2fcc:	afb60050 	sw	s6,80(sp)
    2fd0:	afb5004c 	sw	s5,76(sp)
    2fd4:	afb40048 	sw	s4,72(sp)
    2fd8:	afb30044 	sw	s3,68(sp)
    2fdc:	afb20040 	sw	s2,64(sp)
    2fe0:	afb1003c 	sw	s1,60(sp)
    2fe4:	afb00038 	sw	s0,56(sp)
    2fe8:	f7ba0030 	sdc1	$f26,48(sp)
    2fec:	f7b80028 	sdc1	$f24,40(sp)
    2ff0:	f7b60020 	sdc1	$f22,32(sp)
    2ff4:	f7b40018 	sdc1	$f20,24(sp)
    2ff8:	25ce0000 	addiu	t6,t6,0
    2ffc:	8dd80000 	lw	t8,0(t6)
    3000:	27b40070 	addiu	s4,sp,112
    3004:	3c010000 	lui	at,0x0
    3008:	ae980000 	sw	t8,0(s4)
    300c:	8dcf0004 	lw	t7,4(t6)
    3010:	00809825 	move	s3,a0
    3014:	241100c6 	li	s1,198
    3018:	ae8f0004 	sw	t7,4(s4)
    301c:	8dd80008 	lw	t8,8(t6)
    3020:	2415000c 	li	s5,12
    3024:	27b60064 	addiu	s6,sp,100
    3028:	ae980008 	sw	t8,8(s4)
    302c:	c4240000 	lwc1	$f4,0(at)
    3030:	3c0140a0 	lui	at,0x40a0
    3034:	44814000 	mtc1	at,$f8
    3038:	4600218d 	trunc.w.s	$f6,$f4
    303c:	e7a80078 	swc1	$f8,120(sp)
    3040:	44123000 	mfc1	s2,$f6
    3044:	00000000 	nop
    3048:	00129400 	sll	s2,s2,0x10
    304c:	00129403 	sra	s2,s2,0x10
    3050:	2a4100c6 	slti	at,s2,198
    3054:	50200033 	beqzl	at,3124 <func_80B6C960+0x164>
    3058:	8fbf0054 	lw	ra,84(sp)
    305c:	02350019 	multu	s1,s5
    3060:	00004012 	mflo	t0
    3064:	01138021 	addu	s0,t0,s3
    3068:	c60a0000 	lwc1	$f10,0(s0)
    306c:	c610000c 	lwc1	$f16,12(s0)
    3070:	c6060008 	lwc1	$f6,8(s0)
    3074:	c6080014 	lwc1	$f8,20(s0)
    3078:	46105501 	sub.s	$f20,$f10,$f16
    307c:	c6120004 	lwc1	$f18,4(s0)
    3080:	c6040010 	lwc1	$f4,16(s0)
    3084:	46083581 	sub.s	$f22,$f6,$f8
    3088:	4600a386 	mov.s	$f14,$f20
    308c:	46049601 	sub.s	$f24,$f18,$f4
    3090:	0c000000 	jal	0 <func_80B699A0>
    3094:	4600b306 	mov.s	$f12,$f22
    3098:	4614a282 	mul.s	$f10,$f20,$f20
    309c:	46000686 	mov.s	$f26,$f0
    30a0:	4600c386 	mov.s	$f14,$f24
    30a4:	4616b402 	mul.s	$f16,$f22,$f22
    30a8:	46105000 	add.s	$f0,$f10,$f16
    30ac:	0c000000 	jal	0 <func_80B699A0>
    30b0:	46000304 	sqrt.s	$f12,$f0
    30b4:	46000507 	neg.s	$f20,$f0
    30b8:	4600d306 	mov.s	$f12,$f26
    30bc:	0c000000 	jal	0 <func_80B699A0>
    30c0:	00002825 	move	a1,zero
    30c4:	4600a306 	mov.s	$f12,$f20
    30c8:	0c000000 	jal	0 <func_80B699A0>
    30cc:	24050001 	li	a1,1
    30d0:	02802025 	move	a0,s4
    30d4:	0c000000 	jal	0 <func_80B699A0>
    30d8:	02c02825 	move	a1,s6
    30dc:	c612000c 	lwc1	$f18,12(s0)
    30e0:	c7a40064 	lwc1	$f4,100(sp)
    30e4:	c6080010 	lwc1	$f8,16(s0)
    30e8:	2631ffff 	addiu	s1,s1,-1
    30ec:	46049180 	add.s	$f6,$f18,$f4
    30f0:	c6120014 	lwc1	$f18,20(s0)
    30f4:	00118c00 	sll	s1,s1,0x10
    30f8:	00118c03 	sra	s1,s1,0x10
    30fc:	e6060000 	swc1	$f6,0(s0)
    3100:	c7aa0068 	lwc1	$f10,104(sp)
    3104:	0251082a 	slt	at,s2,s1
    3108:	460a4400 	add.s	$f16,$f8,$f10
    310c:	e6100004 	swc1	$f16,4(s0)
    3110:	c7a4006c 	lwc1	$f4,108(sp)
    3114:	46049180 	add.s	$f6,$f18,$f4
    3118:	1420ffd0 	bnez	at,305c <func_80B6C960+0x9c>
    311c:	e6060008 	swc1	$f6,8(s0)
    3120:	8fbf0054 	lw	ra,84(sp)
    3124:	d7b40018 	ldc1	$f20,24(sp)
    3128:	d7b60020 	ldc1	$f22,32(sp)
    312c:	d7b80028 	ldc1	$f24,40(sp)
    3130:	d7ba0030 	ldc1	$f26,48(sp)
    3134:	8fb00038 	lw	s0,56(sp)
    3138:	8fb1003c 	lw	s1,60(sp)
    313c:	8fb20040 	lw	s2,64(sp)
    3140:	8fb30044 	lw	s3,68(sp)
    3144:	8fb40048 	lw	s4,72(sp)
    3148:	8fb5004c 	lw	s5,76(sp)
    314c:	8fb60050 	lw	s6,80(sp)
    3150:	03e00008 	jr	ra
    3154:	27bd0098 	addiu	sp,sp,152

00003158 <func_80B6CAF8>:
    3158:	27bdff38 	addiu	sp,sp,-200
    315c:	3c0f0000 	lui	t7,0x0
    3160:	afbf0014 	sw	ra,20(sp)
    3164:	afa400c8 	sw	a0,200(sp)
    3168:	afa500cc 	sw	a1,204(sp)
    316c:	afa600d0 	sw	a2,208(sp)
    3170:	afa700d4 	sw	a3,212(sp)
    3174:	25ef0000 	addiu	t7,t7,0
    3178:	8df90000 	lw	t9,0(t7)
    317c:	27ae00a0 	addiu	t6,sp,160
    3180:	8df80004 	lw	t8,4(t7)
    3184:	add90000 	sw	t9,0(t6)
    3188:	8df90008 	lw	t9,8(t7)
    318c:	add80004 	sw	t8,4(t6)
    3190:	3c060000 	lui	a2,0x0
    3194:	add90008 	sw	t9,8(t6)
    3198:	8fa900c8 	lw	t1,200(sp)
    319c:	24c60000 	addiu	a2,a2,0
    31a0:	24070b93 	li	a3,2963
    31a4:	8d2a1c44 	lw	t2,7236(t1)
    31a8:	27a4007c 	addiu	a0,sp,124
    31ac:	afaa0090 	sw	t2,144(sp)
    31b0:	8d250000 	lw	a1,0(t1)
    31b4:	0c000000 	jal	0 <func_80B699A0>
    31b8:	afa5008c 	sw	a1,140(sp)
    31bc:	0c000000 	jal	0 <func_80B699A0>
    31c0:	00000000 	nop
    31c4:	3c0b0000 	lui	t3,0x0
    31c8:	856b0000 	lh	t3,0(t3)
    31cc:	24010003 	li	at,3
    31d0:	8fa200cc 	lw	v0,204(sp)
    31d4:	15610017 	bne	t3,at,3234 <func_80B6CAF8+0xdc>
    31d8:	8fa300d0 	lw	v1,208(sp)
    31dc:	8fac00c8 	lw	t4,200(sp)
    31e0:	c4420004 	lwc1	$f2,4(v0)
    31e4:	3c180000 	lui	t8,0x0
    31e8:	8d8d07c0 	lw	t5,1984(t4)
    31ec:	8dae0028 	lw	t6,40(t5)
    31f0:	85cf0002 	lh	t7,2(t6)
    31f4:	448f2000 	mtc1	t7,$f4
    31f8:	00000000 	nop
    31fc:	468021a0 	cvt.s.w	$f6,$f4
    3200:	4602303c 	c.lt.s	$f6,$f2
    3204:	00000000 	nop
    3208:	45030008 	bc1tl	322c <func_80B6CAF8+0xd4>
    320c:	44800000 	mtc1	zero,$f0
    3210:	93180000 	lbu	t8,0(t8)
    3214:	93b900d7 	lbu	t9,215(sp)
    3218:	53000007 	beqzl	t8,3238 <func_80B6CAF8+0xe0>
    321c:	8faa00c8 	lw	t2,200(sp)
    3220:	53200005 	beqzl	t9,3238 <func_80B6CAF8+0xe0>
    3224:	8faa00c8 	lw	t2,200(sp)
    3228:	44800000 	mtc1	zero,$f0
    322c:	10000015 	b	3284 <func_80B6CAF8+0x12c>
    3230:	c4660004 	lwc1	$f6,4(v1)
    3234:	8faa00c8 	lw	t2,200(sp)
    3238:	c4420004 	lwc1	$f2,4(v0)
    323c:	3c01c040 	lui	at,0xc040
    3240:	8d4907c0 	lw	t1,1984(t2)
    3244:	8d2b0028 	lw	t3,40(t1)
    3248:	856c0002 	lh	t4,2(t3)
    324c:	448c4000 	mtc1	t4,$f8
    3250:	00000000 	nop
    3254:	468042a0 	cvt.s.w	$f10,$f8
    3258:	460a103c 	c.lt.s	$f2,$f10
    325c:	00000000 	nop
    3260:	45020006 	bc1fl	327c <func_80B6CAF8+0x124>
    3264:	44810000 	mtc1	at,$f0
    3268:	3c01bf80 	lui	at,0xbf80
    326c:	44810000 	mtc1	at,$f0
    3270:	10000004 	b	3284 <func_80B6CAF8+0x12c>
    3274:	c4660004 	lwc1	$f6,4(v1)
    3278:	44810000 	mtc1	at,$f0
    327c:	00000000 	nop
    3280:	c4660004 	lwc1	$f6,4(v1)
    3284:	c4720000 	lwc1	$f18,0(v1)
    3288:	c4440000 	lwc1	$f4,0(v0)
    328c:	46023201 	sub.s	$f8,$f6,$f2
    3290:	46049381 	sub.s	$f14,$f18,$f4
    3294:	46004280 	add.s	$f10,$f8,$f0
    3298:	e7aa00c0 	swc1	$f10,192(sp)
    329c:	c4440008 	lwc1	$f4,8(v0)
    32a0:	c4720008 	lwc1	$f18,8(v1)
    32a4:	e7ae00c4 	swc1	$f14,196(sp)
    32a8:	46049301 	sub.s	$f12,$f18,$f4
    32ac:	0c000000 	jal	0 <func_80B699A0>
    32b0:	e7ac00bc 	swc1	$f12,188(sp)
    32b4:	c7a200c4 	lwc1	$f2,196(sp)
    32b8:	c7b000bc 	lwc1	$f16,188(sp)
    32bc:	e7a000b4 	swc1	$f0,180(sp)
    32c0:	46021182 	mul.s	$f6,$f2,$f2
    32c4:	c7ae00c0 	lwc1	$f14,192(sp)
    32c8:	46108202 	mul.s	$f8,$f16,$f16
    32cc:	46083000 	add.s	$f0,$f6,$f8
    32d0:	0c000000 	jal	0 <func_80B699A0>
    32d4:	46000304 	sqrt.s	$f12,$f0
    32d8:	46000287 	neg.s	$f10,$f0
    32dc:	c7ac00b4 	lwc1	$f12,180(sp)
    32e0:	e7aa00b8 	swc1	$f10,184(sp)
    32e4:	0c000000 	jal	0 <func_80B699A0>
    32e8:	00002825 	move	a1,zero
    32ec:	c7ac00b8 	lwc1	$f12,184(sp)
    32f0:	0c000000 	jal	0 <func_80B699A0>
    32f4:	24050001 	li	a1,1
    32f8:	27a400a0 	addiu	a0,sp,160
    32fc:	0c000000 	jal	0 <func_80B699A0>
    3300:	27a50094 	addiu	a1,sp,148
    3304:	8fa200cc 	lw	v0,204(sp)
    3308:	c7a40094 	lwc1	$f4,148(sp)
    330c:	8fa300d0 	lw	v1,208(sp)
    3310:	c4520000 	lwc1	$f18,0(v0)
    3314:	00003825 	move	a3,zero
    3318:	46049180 	add.s	$f6,$f18,$f4
    331c:	e4660000 	swc1	$f6,0(v1)
    3320:	c7aa0098 	lwc1	$f10,152(sp)
    3324:	c4480004 	lwc1	$f8,4(v0)
    3328:	460a4480 	add.s	$f18,$f8,$f10
    332c:	e4720004 	swc1	$f18,4(v1)
    3330:	c7a6009c 	lwc1	$f6,156(sp)
    3334:	c4440008 	lwc1	$f4,8(v0)
    3338:	46062200 	add.s	$f8,$f4,$f6
    333c:	e4680008 	swc1	$f8,8(v1)
    3340:	8c460008 	lw	a2,8(v0)
    3344:	c44e0004 	lwc1	$f14,4(v0)
    3348:	0c000000 	jal	0 <func_80B699A0>
    334c:	c44c0000 	lwc1	$f12,0(v0)
    3350:	8fad0090 	lw	t5,144(sp)
    3354:	44805000 	mtc1	zero,$f10
    3358:	c5b20068 	lwc1	$f18,104(t5)
    335c:	46125032 	c.eq.s	$f10,$f18
    3360:	00000000 	nop
    3364:	45000013 	bc1f	33b4 <func_80B6CAF8+0x25c>
    3368:	3c010000 	lui	at,0x0
    336c:	c4260000 	lwc1	$f6,0(at)
    3370:	44802000 	mtc1	zero,$f4
    3374:	93ae00d7 	lbu	t6,215(sp)
    3378:	3c180000 	lui	t8,0x0
    337c:	46062032 	c.eq.s	$f4,$f6
    3380:	27180000 	addiu	t8,t8,0
    3384:	000e7880 	sll	t7,t6,0x2
    3388:	01f82021 	addu	a0,t7,t8
    338c:	45000009 	bc1f	33b4 <func_80B6CAF8+0x25c>
    3390:	8fa500b4 	lw	a1,180(sp)
    3394:	3c063dcc 	lui	a2,0x3dcc
    3398:	3c073e99 	lui	a3,0x3e99
    339c:	34e7999a 	ori	a3,a3,0x999a
    33a0:	34c6cccd 	ori	a2,a2,0xcccd
    33a4:	0c000000 	jal	0 <func_80B699A0>
    33a8:	afa4001c 	sw	a0,28(sp)
    33ac:	10000008 	b	33d0 <func_80B6CAF8+0x278>
    33b0:	8fa4001c 	lw	a0,28(sp)
    33b4:	93b900d7 	lbu	t9,215(sp)
    33b8:	c7a800b4 	lwc1	$f8,180(sp)
    33bc:	3c090000 	lui	t1,0x0
    33c0:	25290000 	addiu	t1,t1,0
    33c4:	00195080 	sll	t2,t9,0x2
    33c8:	01492021 	addu	a0,t2,t1
    33cc:	e4880000 	swc1	$f8,0(a0)
    33d0:	c48c0000 	lwc1	$f12,0(a0)
    33d4:	0c000000 	jal	0 <func_80B699A0>
    33d8:	24050001 	li	a1,1
    33dc:	c7ac00b8 	lwc1	$f12,184(sp)
    33e0:	0c000000 	jal	0 <func_80B699A0>
    33e4:	24050001 	li	a1,1
    33e8:	3c010000 	lui	at,0x0
    33ec:	c42c0000 	lwc1	$f12,0(at)
    33f0:	3c063ba3 	lui	a2,0x3ba3
    33f4:	34c6d70a 	ori	a2,a2,0xd70a
    33f8:	24070001 	li	a3,1
    33fc:	0c000000 	jal	0 <func_80B699A0>
    3400:	46006386 	mov.s	$f14,$f12
    3404:	3c010000 	lui	at,0x0
    3408:	c42c0000 	lwc1	$f12,0(at)
    340c:	0c000000 	jal	0 <func_80B699A0>
    3410:	24050001 	li	a1,1
    3414:	8fa7008c 	lw	a3,140(sp)
    3418:	3c0cda38 	lui	t4,0xda38
    341c:	358c0003 	ori	t4,t4,0x3
    3420:	8ce202c0 	lw	v0,704(a3)
    3424:	3c050000 	lui	a1,0x0
    3428:	24a50000 	addiu	a1,a1,0
    342c:	244b0008 	addiu	t3,v0,8
    3430:	aceb02c0 	sw	t3,704(a3)
    3434:	ac4c0000 	sw	t4,0(v0)
    3438:	8fad00c8 	lw	t5,200(sp)
    343c:	24060bd5 	li	a2,3029
    3440:	8da40000 	lw	a0,0(t5)
    3444:	0c000000 	jal	0 <func_80B699A0>
    3448:	afa20078 	sw	v0,120(sp)
    344c:	8fa30078 	lw	v1,120(sp)
    3450:	3c070601 	lui	a3,0x601
    3454:	24e72160 	addiu	a3,a3,8544
    3458:	ac620004 	sw	v0,4(v1)
    345c:	8fa4008c 	lw	a0,140(sp)
    3460:	3c0fde00 	lui	t7,0xde00
    3464:	3c010000 	lui	at,0x0
    3468:	8c8202c0 	lw	v0,704(a0)
    346c:	24050001 	li	a1,1
    3470:	244e0008 	addiu	t6,v0,8
    3474:	ac8e02c0 	sw	t6,704(a0)
    3478:	ac470004 	sw	a3,4(v0)
    347c:	ac4f0000 	sw	t7,0(v0)
    3480:	afa7001c 	sw	a3,28(sp)
    3484:	0c000000 	jal	0 <func_80B699A0>
    3488:	c42c0000 	lwc1	$f12,0(at)
    348c:	8fa8008c 	lw	t0,140(sp)
    3490:	8fa7001c 	lw	a3,28(sp)
    3494:	3c19da38 	lui	t9,0xda38
    3498:	8d0202c0 	lw	v0,704(t0)
    349c:	37390003 	ori	t9,t9,0x3
    34a0:	3c050000 	lui	a1,0x0
    34a4:	24580008 	addiu	t8,v0,8
    34a8:	ad1802c0 	sw	t8,704(t0)
    34ac:	ac590000 	sw	t9,0(v0)
    34b0:	8faa00c8 	lw	t2,200(sp)
    34b4:	24a50000 	addiu	a1,a1,0
    34b8:	24060bda 	li	a2,3034
    34bc:	8d440000 	lw	a0,0(t2)
    34c0:	afa7001c 	sw	a3,28(sp)
    34c4:	0c000000 	jal	0 <func_80B699A0>
    34c8:	afa20070 	sw	v0,112(sp)
    34cc:	8fa30070 	lw	v1,112(sp)
    34d0:	8fa7001c 	lw	a3,28(sp)
    34d4:	3c0bde00 	lui	t3,0xde00
    34d8:	ac620004 	sw	v0,4(v1)
    34dc:	8fa4008c 	lw	a0,140(sp)
    34e0:	24010001 	li	at,1
    34e4:	3c0d0000 	lui	t5,0x0
    34e8:	8c8202c0 	lw	v0,704(a0)
    34ec:	24490008 	addiu	t1,v0,8
    34f0:	ac8902c0 	sw	t1,704(a0)
    34f4:	ac470004 	sw	a3,4(v0)
    34f8:	ac4b0000 	sw	t3,0(v0)
    34fc:	93ac00d7 	lbu	t4,215(sp)
    3500:	1581005f 	bne	t4,at,3680 <func_80B6CAF8+0x528>
    3504:	00000000 	nop
    3508:	91ad0000 	lbu	t5,0(t5)
    350c:	3c014000 	lui	at,0x4000
    3510:	11a0005b 	beqz	t5,3680 <func_80B6CAF8+0x528>
    3514:	00000000 	nop
    3518:	44816000 	mtc1	at,$f12
    351c:	24070001 	li	a3,1
    3520:	44066000 	mfc1	a2,$f12
    3524:	0c000000 	jal	0 <func_80B699A0>
    3528:	46006386 	mov.s	$f14,$f12
    352c:	3c01437a 	lui	at,0x437a
    3530:	44816000 	mtc1	at,$f12
    3534:	44807000 	mtc1	zero,$f14
    3538:	3c06c4af 	lui	a2,0xc4af
    353c:	0c000000 	jal	0 <func_80B699A0>
    3540:	24070001 	li	a3,1
    3544:	0c000000 	jal	0 <func_80B699A0>
    3548:	00000000 	nop
    354c:	3c0e0000 	lui	t6,0x0
    3550:	91ce0000 	lbu	t6,0(t6)
    3554:	8faf00c8 	lw	t7,200(sp)
    3558:	3c070001 	lui	a3,0x1
    355c:	11c00023 	beqz	t6,35ec <func_80B6CAF8+0x494>
    3560:	00ef3821 	addu	a3,a3,t7
    3564:	8ce51e10 	lw	a1,7696(a3)
    3568:	3c040000 	lui	a0,0x0
    356c:	24840000 	addiu	a0,a0,0
    3570:	0c000000 	jal	0 <func_80B699A0>
    3574:	afa50068 	sw	a1,104(sp)
    3578:	0c000000 	jal	0 <func_80B699A0>
    357c:	27a40028 	addiu	a0,sp,40
    3580:	3c050000 	lui	a1,0x0
    3584:	24a50000 	addiu	a1,a1,0
    3588:	27a40028 	addiu	a0,sp,40
    358c:	0c000000 	jal	0 <func_80B699A0>
    3590:	00003025 	move	a2,zero
    3594:	3c010000 	lui	at,0x0
    3598:	8fa70068 	lw	a3,104(sp)
    359c:	a0200000 	sb	zero,0(at)
    35a0:	3c010000 	lui	at,0x0
    35a4:	a0200000 	sb	zero,0(at)
    35a8:	3c020000 	lui	v0,0x0
    35ac:	24180006 	li	t8,6
    35b0:	24420000 	addiu	v0,v0,0
    35b4:	a0f80024 	sb	t8,36(a3)
    35b8:	a4e0002c 	sh	zero,44(a3)
    35bc:	8c4a0000 	lw	t2,0(v0)
    35c0:	acea000c 	sw	t2,12(a3)
    35c4:	8c590004 	lw	t9,4(v0)
    35c8:	acf90010 	sw	t9,16(a3)
    35cc:	8c4a0008 	lw	t2,8(v0)
    35d0:	acea0014 	sw	t2,20(a3)
    35d4:	8c4b0000 	lw	t3,0(v0)
    35d8:	aceb0018 	sw	t3,24(a3)
    35dc:	8c490004 	lw	t1,4(v0)
    35e0:	ace9001c 	sw	t1,28(a3)
    35e4:	8c4b0008 	lw	t3,8(v0)
    35e8:	aceb0020 	sw	t3,32(a3)
    35ec:	0c000000 	jal	0 <func_80B699A0>
    35f0:	00000000 	nop
    35f4:	3c010000 	lui	at,0x0
    35f8:	44807000 	mtc1	zero,$f14
    35fc:	c42c0000 	lwc1	$f12,0(at)
    3600:	24060000 	li	a2,0
    3604:	0c000000 	jal	0 <func_80B699A0>
    3608:	24070001 	li	a3,1
    360c:	3c010000 	lui	at,0x0
    3610:	c42c0000 	lwc1	$f12,0(at)
    3614:	0c000000 	jal	0 <func_80B699A0>
    3618:	24050001 	li	a1,1
    361c:	8fac008c 	lw	t4,140(sp)
    3620:	3c0eda38 	lui	t6,0xda38
    3624:	35ce0003 	ori	t6,t6,0x3
    3628:	8d8202c0 	lw	v0,704(t4)
    362c:	3c050000 	lui	a1,0x0
    3630:	24a50000 	addiu	a1,a1,0
    3634:	244d0008 	addiu	t5,v0,8
    3638:	ad8d02c0 	sw	t5,704(t4)
    363c:	ac4e0000 	sw	t6,0(v0)
    3640:	8faf00c8 	lw	t7,200(sp)
    3644:	24060c0d 	li	a2,3085
    3648:	8de40000 	lw	a0,0(t7)
    364c:	0c000000 	jal	0 <func_80B699A0>
    3650:	afa20024 	sw	v0,36(sp)
    3654:	8fa30024 	lw	v1,36(sp)
    3658:	3c090600 	lui	t1,0x600
    365c:	252974c8 	addiu	t1,t1,29896
    3660:	ac620004 	sw	v0,4(v1)
    3664:	8fb8008c 	lw	t8,140(sp)
    3668:	3c0ade00 	lui	t2,0xde00
    366c:	8f0202c0 	lw	v0,704(t8)
    3670:	24590008 	addiu	t9,v0,8
    3674:	af1902c0 	sw	t9,704(t8)
    3678:	ac490004 	sw	t1,4(v0)
    367c:	ac4a0000 	sw	t2,0(v0)
    3680:	0c000000 	jal	0 <func_80B699A0>
    3684:	00000000 	nop
    3688:	8fab00c8 	lw	t3,200(sp)
    368c:	3c060000 	lui	a2,0x0
    3690:	24c60000 	addiu	a2,a2,0
    3694:	27a4007c 	addiu	a0,sp,124
    3698:	24070c1a 	li	a3,3098
    369c:	0c000000 	jal	0 <func_80B699A0>
    36a0:	8d650000 	lw	a1,0(t3)
    36a4:	8fbf0014 	lw	ra,20(sp)
    36a8:	27bd00c8 	addiu	sp,sp,200
    36ac:	03e00008 	jr	ra
    36b0:	00000000 	nop

000036b4 <func_80B6D054>:
    36b4:	27bdff28 	addiu	sp,sp,-216
    36b8:	3c0e0000 	lui	t6,0x0
    36bc:	afbf006c 	sw	ra,108(sp)
    36c0:	afbe0068 	sw	s8,104(sp)
    36c4:	afb70064 	sw	s7,100(sp)
    36c8:	afb60060 	sw	s6,96(sp)
    36cc:	afb5005c 	sw	s5,92(sp)
    36d0:	afb40058 	sw	s4,88(sp)
    36d4:	afb30054 	sw	s3,84(sp)
    36d8:	afb20050 	sw	s2,80(sp)
    36dc:	afb1004c 	sw	s1,76(sp)
    36e0:	afb00048 	sw	s0,72(sp)
    36e4:	f7be0040 	sdc1	$f30,64(sp)
    36e8:	f7bc0038 	sdc1	$f28,56(sp)
    36ec:	f7ba0030 	sdc1	$f26,48(sp)
    36f0:	f7b80028 	sdc1	$f24,40(sp)
    36f4:	f7b60020 	sdc1	$f22,32(sp)
    36f8:	f7b40018 	sdc1	$f20,24(sp)
    36fc:	25ce0000 	addiu	t6,t6,0
    3700:	8dd80000 	lw	t8,0(t6)
    3704:	27b700ac 	addiu	s7,sp,172
    3708:	3c030000 	lui	v1,0x0
    370c:	aef80000 	sw	t8,0(s7)
    3710:	8dcf0004 	lw	t7,4(t6)
    3714:	24630000 	addiu	v1,v1,0
    3718:	8c680000 	lw	t0,0(v1)
    371c:	aeef0004 	sw	t7,4(s7)
    3720:	8dd80008 	lw	t8,8(t6)
    3724:	3c1e0000 	lui	s8,0x0
    3728:	3c010000 	lui	at,0x0
    372c:	aef80008 	sw	t8,8(s7)
    3730:	c4240000 	lwc1	$f4,0(at)
    3734:	27de0000 	addiu	s8,s8,0
    3738:	8c821c44 	lw	v0,7236(a0)
    373c:	afc80000 	sw	t0,0(s8)
    3740:	8c680008 	lw	t0,8(v1)
    3744:	8c790004 	lw	t9,4(v1)
    3748:	3c090000 	lui	t1,0x0
    374c:	afc80008 	sw	t0,8(s8)
    3750:	afd90004 	sw	t9,4(s8)
    3754:	91290000 	lbu	t1,0(t1)
    3758:	3c160000 	lui	s6,0x0
    375c:	26d60000 	addiu	s6,s6,0
    3760:	11200005 	beqz	t1,3778 <func_80B6D054+0xc4>
    3764:	e7a400b4 	swc1	$f4,180(sp)
    3768:	3c01bf80 	lui	at,0xbf80
    376c:	44813000 	mtc1	at,$f6
    3770:	10000014 	b	37c4 <func_80B6D054+0x110>
    3774:	e7a600b8 	swc1	$f6,184(sp)
    3778:	8c8a07c0 	lw	t2,1984(a0)
    377c:	c4680004 	lwc1	$f8,4(v1)
    3780:	3c01c0a0 	lui	at,0xc0a0
    3784:	8d4b0028 	lw	t3,40(t2)
    3788:	856c0002 	lh	t4,2(t3)
    378c:	448c5000 	mtc1	t4,$f10
    3790:	00000000 	nop
    3794:	468054a0 	cvt.s.w	$f18,$f10
    3798:	4612403c 	c.lt.s	$f8,$f18
    379c:	00000000 	nop
    37a0:	45020006 	bc1fl	37bc <func_80B6D054+0x108>
    37a4:	44813000 	mtc1	at,$f6
    37a8:	3c013f00 	lui	at,0x3f00
    37ac:	44812000 	mtc1	at,$f4
    37b0:	10000004 	b	37c4 <func_80B6D054+0x110>
    37b4:	e7a400b8 	swc1	$f4,184(sp)
    37b8:	44813000 	mtc1	at,$f6
    37bc:	00000000 	nop
    37c0:	e7a600b8 	swc1	$f6,184(sp)
    37c4:	86cd0000 	lh	t5,0(s6)
    37c8:	24150005 	li	s5,5
    37cc:	16ad0015 	bne	s5,t5,3824 <func_80B6D054+0x170>
    37d0:	00000000 	nop
    37d4:	844e00b6 	lh	t6,182(v0)
    37d8:	3c010000 	lui	at,0x0
    37dc:	c4320000 	lwc1	$f18,0(at)
    37e0:	448e5000 	mtc1	t6,$f10
    37e4:	00002825 	move	a1,zero
    37e8:	46805220 	cvt.s.w	$f8,$f10
    37ec:	46124302 	mul.s	$f12,$f8,$f18
    37f0:	0c000000 	jal	0 <func_80B699A0>
    37f4:	00000000 	nop
    37f8:	3c0140a0 	lui	at,0x40a0
    37fc:	44812000 	mtc1	at,$f4
    3800:	3c014040 	lui	at,0x4040
    3804:	4480f000 	mtc1	zero,$f30
    3808:	44813000 	mtc1	at,$f6
    380c:	27a40094 	addiu	a0,sp,148
    3810:	27a50088 	addiu	a1,sp,136
    3814:	e7a40094 	swc1	$f4,148(sp)
    3818:	e7be0098 	swc1	$f30,152(sp)
    381c:	0c000000 	jal	0 <func_80B699A0>
    3820:	e7a6009c 	swc1	$f6,156(sp)
    3824:	3c010000 	lui	at,0x0
    3828:	4480f000 	mtc1	zero,$f30
    382c:	c43c0000 	lwc1	$f28,0(at)
    3830:	24110001 	li	s1,1
    3834:	27b400a0 	addiu	s4,sp,160
    3838:	2413000c 	li	s3,12
    383c:	2412000a 	li	s2,10
    3840:	2a21000a 	slti	at,s1,10
    3844:	50200013 	beqzl	at,3894 <func_80B6D054+0x1e0>
    3848:	4600f406 	mov.s	$f16,$f30
    384c:	86cf0000 	lh	t7,0(s6)
    3850:	0251c023 	subu	t8,s2,s1
    3854:	56af000f 	bnel	s5,t7,3894 <func_80B6D054+0x1e0>
    3858:	4600f406 	mov.s	$f16,$f30
    385c:	44985000 	mtc1	t8,$f10
    3860:	c7a80088 	lwc1	$f8,136(sp)
    3864:	c7a40090 	lwc1	$f4,144(sp)
    3868:	46805020 	cvt.s.w	$f0,$f10
    386c:	46080482 	mul.s	$f18,$f0,$f8
    3870:	00000000 	nop
    3874:	461c9082 	mul.s	$f2,$f18,$f28
    3878:	00000000 	nop
    387c:	46040182 	mul.s	$f6,$f0,$f4
    3880:	00000000 	nop
    3884:	461c3402 	mul.s	$f16,$f6,$f28
    3888:	10000003 	b	3898 <func_80B6D054+0x1e4>
    388c:	00000000 	nop
    3890:	4600f406 	mov.s	$f16,$f30
    3894:	4600f086 	mov.s	$f2,$f30
    3898:	02330019 	multu	s1,s3
    389c:	0000c812 	mflo	t9
    38a0:	033e8021 	addu	s0,t9,s8
    38a4:	c60a0000 	lwc1	$f10,0(s0)
    38a8:	c608fff4 	lwc1	$f8,-12(s0)
    38ac:	c6040004 	lwc1	$f4,4(s0)
    38b0:	c606fff8 	lwc1	$f6,-8(s0)
    38b4:	46085481 	sub.s	$f18,$f10,$f8
    38b8:	c7a800b8 	lwc1	$f8,184(sp)
    38bc:	46062281 	sub.s	$f10,$f4,$f6
    38c0:	c604fffc 	lwc1	$f4,-4(s0)
    38c4:	46029500 	add.s	$f20,$f18,$f2
    38c8:	c6120008 	lwc1	$f18,8(s0)
    38cc:	46085600 	add.s	$f24,$f10,$f8
    38d0:	4600a386 	mov.s	$f14,$f20
    38d4:	46049181 	sub.s	$f6,$f18,$f4
    38d8:	46103580 	add.s	$f22,$f6,$f16
    38dc:	0c000000 	jal	0 <func_80B699A0>
    38e0:	4600b306 	mov.s	$f12,$f22
    38e4:	4614a282 	mul.s	$f10,$f20,$f20
    38e8:	46000686 	mov.s	$f26,$f0
    38ec:	4600c386 	mov.s	$f14,$f24
    38f0:	4616b202 	mul.s	$f8,$f22,$f22
    38f4:	46085000 	add.s	$f0,$f10,$f8
    38f8:	0c000000 	jal	0 <func_80B699A0>
    38fc:	46000304 	sqrt.s	$f12,$f0
    3900:	46000507 	neg.s	$f20,$f0
    3904:	4600d306 	mov.s	$f12,$f26
    3908:	0c000000 	jal	0 <func_80B699A0>
    390c:	00002825 	move	a1,zero
    3910:	4600a306 	mov.s	$f12,$f20
    3914:	0c000000 	jal	0 <func_80B699A0>
    3918:	24050001 	li	a1,1
    391c:	02e02025 	move	a0,s7
    3920:	0c000000 	jal	0 <func_80B699A0>
    3924:	02802825 	move	a1,s4
    3928:	c612fff4 	lwc1	$f18,-12(s0)
    392c:	c7a400a0 	lwc1	$f4,160(sp)
    3930:	c60afff8 	lwc1	$f10,-8(s0)
    3934:	c7a800a4 	lwc1	$f8,164(sp)
    3938:	46049180 	add.s	$f6,$f18,$f4
    393c:	c604fffc 	lwc1	$f4,-4(s0)
    3940:	26310001 	addiu	s1,s1,1
    3944:	46085480 	add.s	$f18,$f10,$f8
    3948:	e6060000 	swc1	$f6,0(s0)
    394c:	c7a600a8 	lwc1	$f6,168(sp)
    3950:	00118c00 	sll	s1,s1,0x10
    3954:	00118c03 	sra	s1,s1,0x10
    3958:	46062280 	add.s	$f10,$f4,$f6
    395c:	2a210014 	slti	at,s1,20
    3960:	e6120004 	swc1	$f18,4(s0)
    3964:	1420ffb6 	bnez	at,3840 <func_80B6D054+0x18c>
    3968:	e60a0008 	swc1	$f10,8(s0)
    396c:	8fbf006c 	lw	ra,108(sp)
    3970:	d7b40018 	ldc1	$f20,24(sp)
    3974:	d7b60020 	ldc1	$f22,32(sp)
    3978:	d7b80028 	ldc1	$f24,40(sp)
    397c:	d7ba0030 	ldc1	$f26,48(sp)
    3980:	d7bc0038 	ldc1	$f28,56(sp)
    3984:	d7be0040 	ldc1	$f30,64(sp)
    3988:	8fb00048 	lw	s0,72(sp)
    398c:	8fb1004c 	lw	s1,76(sp)
    3990:	8fb20050 	lw	s2,80(sp)
    3994:	8fb30054 	lw	s3,84(sp)
    3998:	8fb40058 	lw	s4,88(sp)
    399c:	8fb5005c 	lw	s5,92(sp)
    39a0:	8fb60060 	lw	s6,96(sp)
    39a4:	8fb70064 	lw	s7,100(sp)
    39a8:	8fbe0068 	lw	s8,104(sp)
    39ac:	03e00008 	jr	ra
    39b0:	27bd00d8 	addiu	sp,sp,216

000039b4 <func_80B6D354>:
    39b4:	27bdff78 	addiu	sp,sp,-136
    39b8:	afbf0044 	sw	ra,68(sp)
    39bc:	afbe0040 	sw	s8,64(sp)
    39c0:	afb7003c 	sw	s7,60(sp)
    39c4:	afb60038 	sw	s6,56(sp)
    39c8:	afb50034 	sw	s5,52(sp)
    39cc:	afb40030 	sw	s4,48(sp)
    39d0:	afb3002c 	sw	s3,44(sp)
    39d4:	afb20028 	sw	s2,40(sp)
    39d8:	afb10024 	sw	s1,36(sp)
    39dc:	afb00020 	sw	s0,32(sp)
    39e0:	f7b40018 	sdc1	$f20,24(sp)
    39e4:	8c850000 	lw	a1,0(a0)
    39e8:	0080a825 	move	s5,a0
    39ec:	3c060000 	lui	a2,0x0
    39f0:	24c60000 	addiu	a2,a2,0
    39f4:	27a4006c 	addiu	a0,sp,108
    39f8:	24070c89 	li	a3,3209
    39fc:	0c000000 	jal	0 <func_80B699A0>
    3a00:	00a09025 	move	s2,a1
    3a04:	0c000000 	jal	0 <func_80B699A0>
    3a08:	02a02025 	move	a0,s5
    3a0c:	8eae07c0 	lw	t6,1984(s5)
    3a10:	3c010000 	lui	at,0x0
    3a14:	c4240000 	lwc1	$f4,0(at)
    3a18:	8dcf0028 	lw	t7,40(t6)
    3a1c:	85f80002 	lh	t8,2(t7)
    3a20:	44983000 	mtc1	t8,$f6
    3a24:	00000000 	nop
    3a28:	46803220 	cvt.s.w	$f8,$f6
    3a2c:	4608203c 	c.lt.s	$f4,$f8
    3a30:	00000000 	nop
    3a34:	4500004e 	bc1f	3b70 <func_80B6D354+0x1bc>
    3a38:	00000000 	nop
    3a3c:	0c000000 	jal	0 <func_80B699A0>
    3a40:	8ea40000 	lw	a0,0(s5)
    3a44:	8e4202c0 	lw	v0,704(s2)
    3a48:	3c090601 	lui	t1,0x601
    3a4c:	2529b950 	addiu	t1,t1,-18096
    3a50:	24590008 	addiu	t9,v0,8
    3a54:	ae5902c0 	sw	t9,704(s2)
    3a58:	3c08de00 	lui	t0,0xde00
    3a5c:	3c010000 	lui	at,0x0
    3a60:	3c1e0000 	lui	s8,0x0
    3a64:	3c160000 	lui	s6,0x0
    3a68:	3c140000 	lui	s4,0x0
    3a6c:	ac480000 	sw	t0,0(v0)
    3a70:	ac490004 	sw	t1,4(v0)
    3a74:	c4340000 	lwc1	$f20,0(at)
    3a78:	26940000 	addiu	s4,s4,0
    3a7c:	26d60000 	addiu	s6,s6,0
    3a80:	27de0000 	addiu	s8,s8,0
    3a84:	24100013 	li	s0,19
    3a88:	2417000c 	li	s7,12
    3a8c:	868a0000 	lh	t2,0(s4)
    3a90:	020a5821 	addu	t3,s0,t2
    3a94:	29610014 	slti	at,t3,20
    3a98:	5020002f 	beqzl	at,3b58 <func_80B6D354+0x1a4>
    3a9c:	2610ffff 	addiu	s0,s0,-1
    3aa0:	02170019 	multu	s0,s7
    3aa4:	3c010001 	lui	at,0x1
    3aa8:	34211da0 	ori	at,at,0x1da0
    3aac:	3c130601 	lui	s3,0x601
    3ab0:	2673b9c0 	addiu	s3,s3,-17984
    3ab4:	02a18821 	addu	s1,s5,at
    3ab8:	00003825 	move	a3,zero
    3abc:	00006012 	mflo	t4
    3ac0:	02cc1021 	addu	v0,s6,t4
    3ac4:	c44c0000 	lwc1	$f12,0(v0)
    3ac8:	c44e0004 	lwc1	$f14,4(v0)
    3acc:	0c000000 	jal	0 <func_80B699A0>
    3ad0:	8c460008 	lw	a2,8(v0)
    3ad4:	868f0000 	lh	t7,0(s4)
    3ad8:	00106880 	sll	t5,s0,0x2
    3adc:	03cd7021 	addu	t6,s8,t5
    3ae0:	000fc080 	sll	t8,t7,0x2
    3ae4:	01d8c821 	addu	t9,t6,t8
    3ae8:	c72a0000 	lwc1	$f10,0(t9)
    3aec:	24070001 	li	a3,1
    3af0:	46145302 	mul.s	$f12,$f10,$f20
    3af4:	44066000 	mfc1	a2,$f12
    3af8:	0c000000 	jal	0 <func_80B699A0>
    3afc:	46006386 	mov.s	$f14,$f12
    3b00:	0c000000 	jal	0 <func_80B699A0>
    3b04:	02202025 	move	a0,s1
    3b08:	8e4202c0 	lw	v0,704(s2)
    3b0c:	3c09da38 	lui	t1,0xda38
    3b10:	35290003 	ori	t1,t1,0x3
    3b14:	24480008 	addiu	t0,v0,8
    3b18:	ae4802c0 	sw	t0,704(s2)
    3b1c:	3c050000 	lui	a1,0x0
    3b20:	ac490000 	sw	t1,0(v0)
    3b24:	8ea40000 	lw	a0,0(s5)
    3b28:	24a50000 	addiu	a1,a1,0
    3b2c:	24060ca7 	li	a2,3239
    3b30:	0c000000 	jal	0 <func_80B699A0>
    3b34:	00408825 	move	s1,v0
    3b38:	ae220004 	sw	v0,4(s1)
    3b3c:	8e4202c0 	lw	v0,704(s2)
    3b40:	3c0bde00 	lui	t3,0xde00
    3b44:	244a0008 	addiu	t2,v0,8
    3b48:	ae4a02c0 	sw	t2,704(s2)
    3b4c:	ac530004 	sw	s3,4(v0)
    3b50:	ac4b0000 	sw	t3,0(v0)
    3b54:	2610ffff 	addiu	s0,s0,-1
    3b58:	00108400 	sll	s0,s0,0x10
    3b5c:	00108403 	sra	s0,s0,0x10
    3b60:	0603ffcb 	bgezl	s0,3a90 <func_80B6D354+0xdc>
    3b64:	868a0000 	lh	t2,0(s4)
    3b68:	1000004c 	b	3c9c <func_80B6D354+0x2e8>
    3b6c:	00000000 	nop
    3b70:	0c000000 	jal	0 <func_80B699A0>
    3b74:	8ea40000 	lw	a0,0(s5)
    3b78:	8e4202d0 	lw	v0,720(s2)
    3b7c:	3c0f0601 	lui	t7,0x601
    3b80:	25efb950 	addiu	t7,t7,-18096
    3b84:	244c0008 	addiu	t4,v0,8
    3b88:	ae4c02d0 	sw	t4,720(s2)
    3b8c:	3c0dde00 	lui	t5,0xde00
    3b90:	3c010000 	lui	at,0x0
    3b94:	3c1e0000 	lui	s8,0x0
    3b98:	3c160000 	lui	s6,0x0
    3b9c:	3c140000 	lui	s4,0x0
    3ba0:	ac4d0000 	sw	t5,0(v0)
    3ba4:	ac4f0004 	sw	t7,4(v0)
    3ba8:	c4340000 	lwc1	$f20,0(at)
    3bac:	26940000 	addiu	s4,s4,0
    3bb0:	26d60000 	addiu	s6,s6,0
    3bb4:	27de0000 	addiu	s8,s8,0
    3bb8:	24100013 	li	s0,19
    3bbc:	2417000c 	li	s7,12
    3bc0:	868e0000 	lh	t6,0(s4)
    3bc4:	020ec021 	addu	t8,s0,t6
    3bc8:	2b010014 	slti	at,t8,20
    3bcc:	5020002f 	beqzl	at,3c8c <func_80B6D354+0x2d8>
    3bd0:	2610ffff 	addiu	s0,s0,-1
    3bd4:	02170019 	multu	s0,s7
    3bd8:	3c010001 	lui	at,0x1
    3bdc:	34211da0 	ori	at,at,0x1da0
    3be0:	3c130601 	lui	s3,0x601
    3be4:	2673b9c0 	addiu	s3,s3,-17984
    3be8:	02a18821 	addu	s1,s5,at
    3bec:	00003825 	move	a3,zero
    3bf0:	0000c812 	mflo	t9
    3bf4:	02d91021 	addu	v0,s6,t9
    3bf8:	c44c0000 	lwc1	$f12,0(v0)
    3bfc:	c44e0004 	lwc1	$f14,4(v0)
    3c00:	0c000000 	jal	0 <func_80B699A0>
    3c04:	8c460008 	lw	a2,8(v0)
    3c08:	868a0000 	lh	t2,0(s4)
    3c0c:	00104080 	sll	t0,s0,0x2
    3c10:	03c84821 	addu	t1,s8,t0
    3c14:	000a5880 	sll	t3,t2,0x2
    3c18:	012b6021 	addu	t4,t1,t3
    3c1c:	c5900000 	lwc1	$f16,0(t4)
    3c20:	24070001 	li	a3,1
    3c24:	46148302 	mul.s	$f12,$f16,$f20
    3c28:	44066000 	mfc1	a2,$f12
    3c2c:	0c000000 	jal	0 <func_80B699A0>
    3c30:	46006386 	mov.s	$f14,$f12
    3c34:	0c000000 	jal	0 <func_80B699A0>
    3c38:	02202025 	move	a0,s1
    3c3c:	8e4202d0 	lw	v0,720(s2)
    3c40:	3c0fda38 	lui	t7,0xda38
    3c44:	35ef0003 	ori	t7,t7,0x3
    3c48:	244d0008 	addiu	t5,v0,8
    3c4c:	ae4d02d0 	sw	t5,720(s2)
    3c50:	3c050000 	lui	a1,0x0
    3c54:	ac4f0000 	sw	t7,0(v0)
    3c58:	8ea40000 	lw	a0,0(s5)
    3c5c:	24a50000 	addiu	a1,a1,0
    3c60:	24060cc1 	li	a2,3265
    3c64:	0c000000 	jal	0 <func_80B699A0>
    3c68:	00408825 	move	s1,v0
    3c6c:	ae220004 	sw	v0,4(s1)
    3c70:	8e4202d0 	lw	v0,720(s2)
    3c74:	3c18de00 	lui	t8,0xde00
    3c78:	244e0008 	addiu	t6,v0,8
    3c7c:	ae4e02d0 	sw	t6,720(s2)
    3c80:	ac530004 	sw	s3,4(v0)
    3c84:	ac580000 	sw	t8,0(v0)
    3c88:	2610ffff 	addiu	s0,s0,-1
    3c8c:	00108400 	sll	s0,s0,0x10
    3c90:	00108403 	sra	s0,s0,0x10
    3c94:	0603ffcb 	bgezl	s0,3bc4 <func_80B6D354+0x210>
    3c98:	868e0000 	lh	t6,0(s4)
    3c9c:	3c060000 	lui	a2,0x0
    3ca0:	24c60000 	addiu	a2,a2,0
    3ca4:	27a4006c 	addiu	a0,sp,108
    3ca8:	8ea50000 	lw	a1,0(s5)
    3cac:	0c000000 	jal	0 <func_80B699A0>
    3cb0:	24070cc7 	li	a3,3271
    3cb4:	8fbf0044 	lw	ra,68(sp)
    3cb8:	d7b40018 	ldc1	$f20,24(sp)
    3cbc:	8fb00020 	lw	s0,32(sp)
    3cc0:	8fb10024 	lw	s1,36(sp)
    3cc4:	8fb20028 	lw	s2,40(sp)
    3cc8:	8fb3002c 	lw	s3,44(sp)
    3ccc:	8fb40030 	lw	s4,48(sp)
    3cd0:	8fb50034 	lw	s5,52(sp)
    3cd4:	8fb60038 	lw	s6,56(sp)
    3cd8:	8fb7003c 	lw	s7,60(sp)
    3cdc:	8fbe0040 	lw	s8,64(sp)
    3ce0:	03e00008 	jr	ra
    3ce4:	27bd0088 	addiu	sp,sp,136

00003ce8 <func_80B6D688>:
    3ce8:	3c010000 	lui	at,0x0
    3cec:	c4240000 	lwc1	$f4,0(at)
    3cf0:	27bdff18 	addiu	sp,sp,-232
    3cf4:	afbf001c 	sw	ra,28(sp)
    3cf8:	4600218d 	trunc.w.s	$f6,$f4
    3cfc:	afb10018 	sw	s1,24(sp)
    3d00:	afb00014 	sw	s0,20(sp)
    3d04:	afa500ec 	sw	a1,236(sp)
    3d08:	440f3000 	mfc1	t7,$f6
    3d0c:	afa600f0 	sw	a2,240(sp)
    3d10:	00808025 	move	s0,a0
    3d14:	a7af00b4 	sh	t7,180(sp)
    3d18:	8c981c44 	lw	t8,7236(a0)
    3d1c:	3c060000 	lui	a2,0x0
    3d20:	24c60000 	addiu	a2,a2,0
    3d24:	afb800ac 	sw	t8,172(sp)
    3d28:	8c850000 	lw	a1,0(a0)
    3d2c:	afb000e8 	sw	s0,232(sp)
    3d30:	27a40098 	addiu	a0,sp,152
    3d34:	24070cd7 	li	a3,3287
    3d38:	0c000000 	jal	0 <func_80B699A0>
    3d3c:	00a08825 	move	s1,a1
    3d40:	8fb900e8 	lw	t9,232(sp)
    3d44:	0c000000 	jal	0 <func_80B699A0>
    3d48:	8f240000 	lw	a0,0(t9)
    3d4c:	0c000000 	jal	0 <func_80B699A0>
    3d50:	00000000 	nop
    3d54:	3c080000 	lui	t0,0x0
    3d58:	91080000 	lbu	t0,0(t0)
    3d5c:	3c020000 	lui	v0,0x0
    3d60:	24420000 	addiu	v0,v0,0
    3d64:	11000019 	beqz	t0,3dcc <func_80B6D688+0xe4>
    3d68:	27b0008c 	addiu	s0,sp,140
    3d6c:	8c4a0000 	lw	t2,0(v0)
    3d70:	8c490004 	lw	t1,4(v0)
    3d74:	3c0b0000 	lui	t3,0x0
    3d78:	ae0a0000 	sw	t2,0(s0)
    3d7c:	8c4a0008 	lw	t2,8(v0)
    3d80:	256b0000 	addiu	t3,t3,0
    3d84:	ae090004 	sw	t1,4(s0)
    3d88:	ae0a0008 	sw	t2,8(s0)
    3d8c:	8d6d0000 	lw	t5,0(t3)
    3d90:	8fa400e8 	lw	a0,232(sp)
    3d94:	ac4d0000 	sw	t5,0(v0)
    3d98:	8d6c0004 	lw	t4,4(t3)
    3d9c:	ac4c0004 	sw	t4,4(v0)
    3da0:	8d6d0008 	lw	t5,8(t3)
    3da4:	0c000000 	jal	0 <func_80B699A0>
    3da8:	ac4d0008 	sw	t5,8(v0)
    3dac:	8e0f0000 	lw	t7,0(s0)
    3db0:	3c030000 	lui	v1,0x0
    3db4:	24630000 	addiu	v1,v1,0
    3db8:	ac6f0000 	sw	t7,0(v1)
    3dbc:	8e0f0008 	lw	t7,8(s0)
    3dc0:	8e0e0004 	lw	t6,4(s0)
    3dc4:	ac6f0008 	sw	t7,8(v1)
    3dc8:	ac6e0004 	sw	t6,4(v1)
    3dcc:	3c020000 	lui	v0,0x0
    3dd0:	84420000 	lh	v0,0(v0)
    3dd4:	3c030000 	lui	v1,0x0
    3dd8:	24010004 	li	at,4
    3ddc:	10410003 	beq	v0,at,3dec <func_80B6D688+0x104>
    3de0:	24630000 	addiu	v1,v1,0
    3de4:	24010005 	li	at,5
    3de8:	1441002f 	bne	v0,at,3ea8 <func_80B6D688+0x1c0>
    3dec:	3c180000 	lui	t8,0x0
    3df0:	8f180000 	lw	t8,0(t8)
    3df4:	24010005 	li	at,5
    3df8:	3c090000 	lui	t1,0x0
    3dfc:	8f0801c0 	lw	t0,448(t8)
    3e00:	ac680000 	sw	t0,0(v1)
    3e04:	8f1901c4 	lw	t9,452(t8)
    3e08:	ac790004 	sw	t9,4(v1)
    3e0c:	8f0801c8 	lw	t0,456(t8)
    3e10:	1441004e 	bne	v0,at,3f4c <func_80B6D688+0x264>
    3e14:	ac680008 	sw	t0,8(v1)
    3e18:	91290000 	lbu	t1,0(t1)
    3e1c:	24010002 	li	at,2
    3e20:	8faa00ac 	lw	t2,172(sp)
    3e24:	15210049 	bne	t1,at,3f4c <func_80B6D688+0x264>
    3e28:	00000000 	nop
    3e2c:	854b00b6 	lh	t3,182(t2)
    3e30:	3c010000 	lui	at,0x0
    3e34:	c4240000 	lwc1	$f4,0(at)
    3e38:	448b4000 	mtc1	t3,$f8
    3e3c:	00002825 	move	a1,zero
    3e40:	468042a0 	cvt.s.w	$f10,$f8
    3e44:	46045302 	mul.s	$f12,$f10,$f4
    3e48:	0c000000 	jal	0 <func_80B699A0>
    3e4c:	00000000 	nop
    3e50:	44800000 	mtc1	zero,$f0
    3e54:	3c014000 	lui	at,0x4000
    3e58:	44813000 	mtc1	at,$f6
    3e5c:	27a400dc 	addiu	a0,sp,220
    3e60:	27a500d0 	addiu	a1,sp,208
    3e64:	e7a000e0 	swc1	$f0,224(sp)
    3e68:	e7a000e4 	swc1	$f0,228(sp)
    3e6c:	0c000000 	jal	0 <func_80B699A0>
    3e70:	e7a600dc 	swc1	$f6,220(sp)
    3e74:	3c020000 	lui	v0,0x0
    3e78:	24420000 	addiu	v0,v0,0
    3e7c:	c4480000 	lwc1	$f8,0(v0)
    3e80:	c7aa00d0 	lwc1	$f10,208(sp)
    3e84:	c4460008 	lwc1	$f6,8(v0)
    3e88:	3c030000 	lui	v1,0x0
    3e8c:	460a4100 	add.s	$f4,$f8,$f10
    3e90:	c7a800d8 	lwc1	$f8,216(sp)
    3e94:	24630000 	addiu	v1,v1,0
    3e98:	46083280 	add.s	$f10,$f6,$f8
    3e9c:	e4440000 	swc1	$f4,0(v0)
    3ea0:	1000002a 	b	3f4c <func_80B6D688+0x264>
    3ea4:	e44a0008 	swc1	$f10,8(v0)
    3ea8:	14400028 	bnez	v0,3f4c <func_80B6D688+0x264>
    3eac:	3c0c0000 	lui	t4,0x0
    3eb0:	258c0000 	addiu	t4,t4,0
    3eb4:	8d8e0000 	lw	t6,0(t4)
    3eb8:	3c020000 	lui	v0,0x0
    3ebc:	24420000 	addiu	v0,v0,0
    3ec0:	ac6e0000 	sw	t6,0(v1)
    3ec4:	8d8d0004 	lw	t5,4(t4)
    3ec8:	3c010000 	lui	at,0x0
    3ecc:	c4440948 	lwc1	$f4,2376(v0)
    3ed0:	ac6d0004 	sw	t5,4(v1)
    3ed4:	8d8e0008 	lw	t6,8(t4)
    3ed8:	8faf00ac 	lw	t7,172(sp)
    3edc:	3c100000 	lui	s0,0x0
    3ee0:	ac6e0008 	sw	t6,8(v1)
    3ee4:	c4260000 	lwc1	$f6,0(at)
    3ee8:	26100000 	addiu	s0,s0,0
    3eec:	44805000 	mtc1	zero,$f10
    3ef0:	46062200 	add.s	$f8,$f4,$f6
    3ef4:	3c180000 	lui	t8,0x0
    3ef8:	e6080000 	swc1	$f8,0(s0)
    3efc:	c5e40068 	lwc1	$f4,104(t7)
    3f00:	46045032 	c.eq.s	$f10,$f4
    3f04:	00000000 	nop
    3f08:	4502000f 	bc1fl	3f48 <func_80B6D688+0x260>
    3f0c:	c446094c 	lwc1	$f6,2380(v0)
    3f10:	87180000 	lh	t8,0(t8)
    3f14:	3c040000 	lui	a0,0x0
    3f18:	24840000 	addiu	a0,a0,0
    3f1c:	17000009 	bnez	t8,3f44 <func_80B6D688+0x25c>
    3f20:	3c063dcc 	lui	a2,0x3dcc
    3f24:	3c073e4c 	lui	a3,0x3e4c
    3f28:	34e7cccd 	ori	a3,a3,0xcccd
    3f2c:	8c45094c 	lw	a1,2380(v0)
    3f30:	0c000000 	jal	0 <func_80B699A0>
    3f34:	34c6cccd 	ori	a2,a2,0xcccd
    3f38:	3c030000 	lui	v1,0x0
    3f3c:	10000003 	b	3f4c <func_80B6D688+0x264>
    3f40:	24630000 	addiu	v1,v1,0
    3f44:	c446094c 	lwc1	$f6,2380(v0)
    3f48:	e6060004 	swc1	$f6,4(s0)
    3f4c:	3c190000 	lui	t9,0x0
    3f50:	93390000 	lbu	t9,0(t9)
    3f54:	3c100000 	lui	s0,0x0
    3f58:	24010002 	li	at,2
    3f5c:	13210067 	beq	t9,at,40fc <func_80B6D688+0x414>
    3f60:	26100000 	addiu	s0,s0,0
    3f64:	c46c0000 	lwc1	$f12,0(v1)
    3f68:	c46e0004 	lwc1	$f14,4(v1)
    3f6c:	8c660008 	lw	a2,8(v1)
    3f70:	0c000000 	jal	0 <func_80B699A0>
    3f74:	00003825 	move	a3,zero
    3f78:	3c010000 	lui	at,0x0
    3f7c:	c42a0000 	lwc1	$f10,0(at)
    3f80:	c6080004 	lwc1	$f8,4(s0)
    3f84:	24050001 	li	a1,1
    3f88:	0c000000 	jal	0 <func_80B699A0>
    3f8c:	460a4300 	add.s	$f12,$f8,$f10
    3f90:	c60c0000 	lwc1	$f12,0(s0)
    3f94:	0c000000 	jal	0 <func_80B699A0>
    3f98:	24050001 	li	a1,1
    3f9c:	3c010000 	lui	at,0x0
    3fa0:	c42c0000 	lwc1	$f12,0(at)
    3fa4:	24070001 	li	a3,1
    3fa8:	44066000 	mfc1	a2,$f12
    3fac:	0c000000 	jal	0 <func_80B699A0>
    3fb0:	46006386 	mov.s	$f14,$f12
    3fb4:	44806000 	mtc1	zero,$f12
    3fb8:	3c060000 	lui	a2,0x0
    3fbc:	8cc60000 	lw	a2,0(a2)
    3fc0:	24070001 	li	a3,1
    3fc4:	0c000000 	jal	0 <func_80B699A0>
    3fc8:	46006386 	mov.s	$f14,$f12
    3fcc:	3c010000 	lui	at,0x0
    3fd0:	c42c0000 	lwc1	$f12,0(at)
    3fd4:	0c000000 	jal	0 <func_80B699A0>
    3fd8:	24050001 	li	a1,1
    3fdc:	3c010000 	lui	at,0x0
    3fe0:	c42c0000 	lwc1	$f12,0(at)
    3fe4:	0c000000 	jal	0 <func_80B699A0>
    3fe8:	24050001 	li	a1,1
    3fec:	8fa800e8 	lw	t0,232(sp)
    3ff0:	0c000000 	jal	0 <func_80B699A0>
    3ff4:	8d040000 	lw	a0,0(t0)
    3ff8:	8e2202c0 	lw	v0,704(s1)
    3ffc:	3c0ada38 	lui	t2,0xda38
    4000:	354a0003 	ori	t2,t2,0x3
    4004:	24490008 	addiu	t1,v0,8
    4008:	ae2902c0 	sw	t1,704(s1)
    400c:	ac4a0000 	sw	t2,0(v0)
    4010:	8fab00e8 	lw	t3,232(sp)
    4014:	3c050000 	lui	a1,0x0
    4018:	24a50000 	addiu	a1,a1,0
    401c:	24060d29 	li	a2,3369
    4020:	00408025 	move	s0,v0
    4024:	0c000000 	jal	0 <func_80B699A0>
    4028:	8d640000 	lw	a0,0(t3)
    402c:	ae020004 	sw	v0,4(s0)
    4030:	8e2202c0 	lw	v0,704(s1)
    4034:	3c0e0601 	lui	t6,0x601
    4038:	25ce21f0 	addiu	t6,t6,8688
    403c:	244c0008 	addiu	t4,v0,8
    4040:	ae2c02c0 	sw	t4,704(s1)
    4044:	3c0dde00 	lui	t5,0xde00
    4048:	3c010000 	lui	at,0x0
    404c:	ac4d0000 	sw	t5,0(v0)
    4050:	ac4e0004 	sw	t6,4(v0)
    4054:	c4240000 	lwc1	$f4,0(at)
    4058:	44803000 	mtc1	zero,$f6
    405c:	44804000 	mtc1	zero,$f8
    4060:	3c050000 	lui	a1,0x0
    4064:	24a50000 	addiu	a1,a1,0
    4068:	27a400dc 	addiu	a0,sp,220
    406c:	e7a400dc 	swc1	$f4,220(sp)
    4070:	e7a600e0 	swc1	$f6,224(sp)
    4074:	0c000000 	jal	0 <func_80B699A0>
    4078:	e7a800e4 	swc1	$f8,228(sp)
    407c:	3c0143fa 	lui	at,0x43fa
    4080:	44815000 	mtc1	at,$f10
    4084:	3c01c396 	lui	at,0xc396
    4088:	44812000 	mtc1	at,$f4
    408c:	27b000b8 	addiu	s0,sp,184
    4090:	02002825 	move	a1,s0
    4094:	27a400dc 	addiu	a0,sp,220
    4098:	e7aa00dc 	swc1	$f10,220(sp)
    409c:	0c000000 	jal	0 <func_80B699A0>
    40a0:	e7a400e4 	swc1	$f4,228(sp)
    40a4:	3c060000 	lui	a2,0x0
    40a8:	24c60000 	addiu	a2,a2,0
    40ac:	8fa400e8 	lw	a0,232(sp)
    40b0:	02002825 	move	a1,s0
    40b4:	0c000000 	jal	0 <func_80B699A0>
    40b8:	00003825 	move	a3,zero
    40bc:	3c010000 	lui	at,0x0
    40c0:	c4260000 	lwc1	$f6,0(at)
    40c4:	3c01c248 	lui	at,0xc248
    40c8:	44814000 	mtc1	at,$f8
    40cc:	27b000c4 	addiu	s0,sp,196
    40d0:	02002825 	move	a1,s0
    40d4:	27a400dc 	addiu	a0,sp,220
    40d8:	e7a600dc 	swc1	$f6,220(sp)
    40dc:	0c000000 	jal	0 <func_80B699A0>
    40e0:	e7a800e4 	swc1	$f8,228(sp)
    40e4:	3c060000 	lui	a2,0x0
    40e8:	24c60000 	addiu	a2,a2,0
    40ec:	8fa400e8 	lw	a0,232(sp)
    40f0:	02002825 	move	a1,s0
    40f4:	0c000000 	jal	0 <func_80B699A0>
    40f8:	24070001 	li	a3,1
    40fc:	8e2402d0 	lw	a0,720(s1)
    4100:	0c000000 	jal	0 <func_80B699A0>
    4104:	24050014 	li	a1,20
    4108:	ae2202d0 	sw	v0,720(s1)
    410c:	244f0008 	addiu	t7,v0,8
    4110:	ae2f02d0 	sw	t7,720(s1)
    4114:	3c18fcff 	lui	t8,0xfcff
    4118:	3c19fffd 	lui	t9,0xfffd
    411c:	3739f6fb 	ori	t9,t9,0xf6fb
    4120:	3718ffff 	ori	t8,t8,0xffff
    4124:	ac580000 	sw	t8,0(v0)
    4128:	ac590004 	sw	t9,4(v0)
    412c:	8e2302d0 	lw	v1,720(s1)
    4130:	3c09fa00 	lui	t1,0xfa00
    4134:	240aff37 	li	t2,-201
    4138:	24680008 	addiu	t0,v1,8
    413c:	ae2802d0 	sw	t0,720(s1)
    4140:	3c050000 	lui	a1,0x0
    4144:	24a50000 	addiu	a1,a1,0
    4148:	ac6a0004 	sw	t2,4(v1)
    414c:	ac690000 	sw	t1,0(v1)
    4150:	84ab0000 	lh	t3,0(a1)
    4154:	24010004 	li	at,4
    4158:	3c0c0000 	lui	t4,0x0
    415c:	15610059 	bne	t3,at,42c4 <func_80B6D688+0x5dc>
    4160:	87a200b4 	lh	v0,180(sp)
    4164:	918c0000 	lbu	t4,0(t4)
    4168:	3c040000 	lui	a0,0x0
    416c:	24840000 	addiu	a0,a0,0
    4170:	15800004 	bnez	t4,4184 <func_80B6D688+0x49c>
    4174:	3c100000 	lui	s0,0x0
    4178:	908d0000 	lbu	t5,0(a0)
    417c:	24010002 	li	at,2
    4180:	11a10050 	beq	t5,at,42c4 <func_80B6D688+0x5dc>
    4184:	26100000 	addiu	s0,s0,0
    4188:	3c010000 	lui	at,0x0
    418c:	c42a0000 	lwc1	$f10,0(at)
    4190:	c6040000 	lwc1	$f4,0(s0)
    4194:	c4260000 	lwc1	$f6,0(at)
    4198:	c6080004 	lwc1	$f8,4(s0)
    419c:	46045301 	sub.s	$f12,$f10,$f4
    41a0:	3c010000 	lui	at,0x0
    41a4:	c4240000 	lwc1	$f4,0(at)
    41a8:	46083281 	sub.s	$f10,$f6,$f8
    41ac:	c6060008 	lwc1	$f6,8(s0)
    41b0:	e7ac006c 	swc1	$f12,108(sp)
    41b4:	46062381 	sub.s	$f14,$f4,$f6
    41b8:	e7aa0068 	swc1	$f10,104(sp)
    41bc:	0c000000 	jal	0 <func_80B699A0>
    41c0:	e7ae0064 	swc1	$f14,100(sp)
    41c4:	c7b2006c 	lwc1	$f18,108(sp)
    41c8:	c7a80064 	lwc1	$f8,100(sp)
    41cc:	e7a00074 	swc1	$f0,116(sp)
    41d0:	46129082 	mul.s	$f2,$f18,$f18
    41d4:	c7ac0068 	lwc1	$f12,104(sp)
    41d8:	46084402 	mul.s	$f16,$f8,$f8
    41dc:	e7a20030 	swc1	$f2,48(sp)
    41e0:	46101000 	add.s	$f0,$f2,$f16
    41e4:	e7b0002c 	swc1	$f16,44(sp)
    41e8:	0c000000 	jal	0 <func_80B699A0>
    41ec:	46000384 	sqrt.s	$f14,$f0
    41f0:	c7b20068 	lwc1	$f18,104(sp)
    41f4:	c7a20030 	lwc1	$f2,48(sp)
    41f8:	c7b0002c 	lwc1	$f16,44(sp)
    41fc:	46129102 	mul.s	$f4,$f18,$f18
    4200:	46000287 	neg.s	$f10,$f0
    4204:	3c010000 	lui	at,0x0
    4208:	c4280000 	lwc1	$f8,0(at)
    420c:	e7aa0078 	swc1	$f10,120(sp)
    4210:	c60c0000 	lwc1	$f12,0(s0)
    4214:	c60e0004 	lwc1	$f14,4(s0)
    4218:	46041180 	add.s	$f6,$f2,$f4
    421c:	8e060008 	lw	a2,8(s0)
    4220:	00003825 	move	a3,zero
    4224:	46103000 	add.s	$f0,$f6,$f16
    4228:	46000004 	sqrt.s	$f0,$f0
    422c:	46080282 	mul.s	$f10,$f0,$f8
    4230:	0c000000 	jal	0 <func_80B699A0>
    4234:	e7aa0070 	swc1	$f10,112(sp)
    4238:	c7ac0074 	lwc1	$f12,116(sp)
    423c:	0c000000 	jal	0 <func_80B699A0>
    4240:	24050001 	li	a1,1
    4244:	c7ac0078 	lwc1	$f12,120(sp)
    4248:	0c000000 	jal	0 <func_80B699A0>
    424c:	24050001 	li	a1,1
    4250:	3c010000 	lui	at,0x0
    4254:	c42c0000 	lwc1	$f12,0(at)
    4258:	3c013f80 	lui	at,0x3f80
    425c:	44817000 	mtc1	at,$f14
    4260:	8fa60070 	lw	a2,112(sp)
    4264:	0c000000 	jal	0 <func_80B699A0>
    4268:	24070001 	li	a3,1
    426c:	8e3002d0 	lw	s0,720(s1)
    4270:	3c0fda38 	lui	t7,0xda38
    4274:	35ef0003 	ori	t7,t7,0x3
    4278:	260e0008 	addiu	t6,s0,8
    427c:	ae2e02d0 	sw	t6,720(s1)
    4280:	ae0f0000 	sw	t7,0(s0)
    4284:	8fb800e8 	lw	t8,232(sp)
    4288:	3c050000 	lui	a1,0x0
    428c:	24a50000 	addiu	a1,a1,0
    4290:	24060d74 	li	a2,3444
    4294:	0c000000 	jal	0 <func_80B699A0>
    4298:	8f040000 	lw	a0,0(t8)
    429c:	ae020004 	sw	v0,4(s0)
    42a0:	8e2302d0 	lw	v1,720(s1)
    42a4:	3c090600 	lui	t1,0x600
    42a8:	25293710 	addiu	t1,t1,14096
    42ac:	24790008 	addiu	t9,v1,8
    42b0:	ae3902d0 	sw	t9,720(s1)
    42b4:	3c08de00 	lui	t0,0xde00
    42b8:	ac680000 	sw	t0,0(v1)
    42bc:	100000a3 	b	454c <func_80B6D688+0x864>
    42c0:	ac690004 	sw	t1,4(v1)
    42c4:	00028400 	sll	s0,v0,0x10
    42c8:	284100c7 	slti	at,v0,199
    42cc:	1020009f 	beqz	at,454c <func_80B6D688+0x864>
    42d0:	00108403 	sra	s0,s0,0x10
    42d4:	3c0a0600 	lui	t2,0x600
    42d8:	254a3710 	addiu	t2,t2,14096
    42dc:	afaa0030 	sw	t2,48(sp)
    42e0:	3c040000 	lui	a0,0x0
    42e4:	3c050000 	lui	a1,0x0
    42e8:	240100c5 	li	at,197
    42ec:	24a50000 	addiu	a1,a1,0
    42f0:	1601005d 	bne	s0,at,4468 <func_80B6D688+0x780>
    42f4:	24840000 	addiu	a0,a0,0
    42f8:	908b0000 	lbu	t3,0(a0)
    42fc:	5560005b 	bnezl	t3,446c <func_80B6D688+0x784>
    4300:	8fab00ec 	lw	t3,236(sp)
    4304:	84ac0000 	lh	t4,0(a1)
    4308:	24010003 	li	at,3
    430c:	55810057 	bnel	t4,at,446c <func_80B6D688+0x784>
    4310:	8fab00ec 	lw	t3,236(sp)
    4314:	8fae00ec 	lw	t6,236(sp)
    4318:	00106880 	sll	t5,s0,0x2
    431c:	01b06823 	subu	t5,t5,s0
    4320:	3c030000 	lui	v1,0x0
    4324:	000d6880 	sll	t5,t5,0x2
    4328:	24630000 	addiu	v1,v1,0
    432c:	01ae1021 	addu	v0,t5,t6
    4330:	c4460000 	lwc1	$f6,0(v0)
    4334:	c4640000 	lwc1	$f4,0(v1)
    4338:	c44a0004 	lwc1	$f10,4(v0)
    433c:	c4680004 	lwc1	$f8,4(v1)
    4340:	46062301 	sub.s	$f12,$f4,$f6
    4344:	c4660008 	lwc1	$f6,8(v1)
    4348:	460a4101 	sub.s	$f4,$f8,$f10
    434c:	e7a40048 	swc1	$f4,72(sp)
    4350:	c4480008 	lwc1	$f8,8(v0)
    4354:	e7ac004c 	swc1	$f12,76(sp)
    4358:	afa2002c 	sw	v0,44(sp)
    435c:	46083381 	sub.s	$f14,$f6,$f8
    4360:	0c000000 	jal	0 <func_80B699A0>
    4364:	e7ae0044 	swc1	$f14,68(sp)
    4368:	c7b2004c 	lwc1	$f18,76(sp)
    436c:	c7aa0044 	lwc1	$f10,68(sp)
    4370:	e7a00054 	swc1	$f0,84(sp)
    4374:	46129082 	mul.s	$f2,$f18,$f18
    4378:	c7ac0048 	lwc1	$f12,72(sp)
    437c:	460a5402 	mul.s	$f16,$f10,$f10
    4380:	e7a20028 	swc1	$f2,40(sp)
    4384:	46101000 	add.s	$f0,$f2,$f16
    4388:	e7b00024 	swc1	$f16,36(sp)
    438c:	0c000000 	jal	0 <func_80B699A0>
    4390:	46000384 	sqrt.s	$f14,$f0
    4394:	c7b20048 	lwc1	$f18,72(sp)
    4398:	c7a20028 	lwc1	$f2,40(sp)
    439c:	c7b00024 	lwc1	$f16,36(sp)
    43a0:	46129182 	mul.s	$f6,$f18,$f18
    43a4:	46000107 	neg.s	$f4,$f0
    43a8:	3c010000 	lui	at,0x0
    43ac:	c42a0000 	lwc1	$f10,0(at)
    43b0:	e7a40058 	swc1	$f4,88(sp)
    43b4:	8fa2002c 	lw	v0,44(sp)
    43b8:	00003825 	move	a3,zero
    43bc:	46061200 	add.s	$f8,$f2,$f6
    43c0:	46104000 	add.s	$f0,$f8,$f16
    43c4:	46000004 	sqrt.s	$f0,$f0
    43c8:	460a0102 	mul.s	$f4,$f0,$f10
    43cc:	e7a40050 	swc1	$f4,80(sp)
    43d0:	8c460008 	lw	a2,8(v0)
    43d4:	c44e0004 	lwc1	$f14,4(v0)
    43d8:	0c000000 	jal	0 <func_80B699A0>
    43dc:	c44c0000 	lwc1	$f12,0(v0)
    43e0:	c7ac0054 	lwc1	$f12,84(sp)
    43e4:	0c000000 	jal	0 <func_80B699A0>
    43e8:	24050001 	li	a1,1
    43ec:	c7ac0058 	lwc1	$f12,88(sp)
    43f0:	0c000000 	jal	0 <func_80B699A0>
    43f4:	24050001 	li	a1,1
    43f8:	3c010000 	lui	at,0x0
    43fc:	c42c0000 	lwc1	$f12,0(at)
    4400:	3c013f80 	lui	at,0x3f80
    4404:	44817000 	mtc1	at,$f14
    4408:	8fa60050 	lw	a2,80(sp)
    440c:	0c000000 	jal	0 <func_80B699A0>
    4410:	24070001 	li	a3,1
    4414:	8e3002d0 	lw	s0,720(s1)
    4418:	3c18da38 	lui	t8,0xda38
    441c:	37180003 	ori	t8,t8,0x3
    4420:	260f0008 	addiu	t7,s0,8
    4424:	ae2f02d0 	sw	t7,720(s1)
    4428:	ae180000 	sw	t8,0(s0)
    442c:	8fb900e8 	lw	t9,232(sp)
    4430:	3c050000 	lui	a1,0x0
    4434:	24a50000 	addiu	a1,a1,0
    4438:	24060d93 	li	a2,3475
    443c:	0c000000 	jal	0 <func_80B699A0>
    4440:	8f240000 	lw	a0,0(t9)
    4444:	ae020004 	sw	v0,4(s0)
    4448:	8e2302d0 	lw	v1,720(s1)
    444c:	3c09de00 	lui	t1,0xde00
    4450:	24680008 	addiu	t0,v1,8
    4454:	ae2802d0 	sw	t0,720(s1)
    4458:	ac690000 	sw	t1,0(v1)
    445c:	8faa0030 	lw	t2,48(sp)
    4460:	1000003a 	b	454c <func_80B6D688+0x864>
    4464:	ac6a0004 	sw	t2,4(v1)
    4468:	8fab00ec 	lw	t3,236(sp)
    446c:	00101880 	sll	v1,s0,0x2
    4470:	00701823 	subu	v1,v1,s0
    4474:	00031880 	sll	v1,v1,0x2
    4478:	006b1021 	addu	v0,v1,t3
    447c:	c44c0000 	lwc1	$f12,0(v0)
    4480:	c44e0004 	lwc1	$f14,4(v0)
    4484:	8c460008 	lw	a2,8(v0)
    4488:	afa3002c 	sw	v1,44(sp)
    448c:	0c000000 	jal	0 <func_80B699A0>
    4490:	00003825 	move	a3,zero
    4494:	8fa3002c 	lw	v1,44(sp)
    4498:	8fac00f0 	lw	t4,240(sp)
    449c:	24050001 	li	a1,1
    44a0:	006c1021 	addu	v0,v1,t4
    44a4:	c44c0004 	lwc1	$f12,4(v0)
    44a8:	0c000000 	jal	0 <func_80B699A0>
    44ac:	afa20028 	sw	v0,40(sp)
    44b0:	8fa20028 	lw	v0,40(sp)
    44b4:	24050001 	li	a1,1
    44b8:	0c000000 	jal	0 <func_80B699A0>
    44bc:	c44c0000 	lwc1	$f12,0(v0)
    44c0:	3c010000 	lui	at,0x0
    44c4:	c42c0000 	lwc1	$f12,0(at)
    44c8:	3c013f80 	lui	at,0x3f80
    44cc:	44817000 	mtc1	at,$f14
    44d0:	3c063ba3 	lui	a2,0x3ba3
    44d4:	34c6d70a 	ori	a2,a2,0xd70a
    44d8:	0c000000 	jal	0 <func_80B699A0>
    44dc:	24070001 	li	a3,1
    44e0:	8e2302d0 	lw	v1,720(s1)
    44e4:	3c0eda38 	lui	t6,0xda38
    44e8:	35ce0003 	ori	t6,t6,0x3
    44ec:	246d0008 	addiu	t5,v1,8
    44f0:	ae2d02d0 	sw	t5,720(s1)
    44f4:	ac6e0000 	sw	t6,0(v1)
    44f8:	8faf00e8 	lw	t7,232(sp)
    44fc:	3c050000 	lui	a1,0x0
    4500:	24a50000 	addiu	a1,a1,0
    4504:	8de40000 	lw	a0,0(t7)
    4508:	24060da4 	li	a2,3492
    450c:	0c000000 	jal	0 <func_80B699A0>
    4510:	afa30038 	sw	v1,56(sp)
    4514:	8fa70038 	lw	a3,56(sp)
    4518:	26100001 	addiu	s0,s0,1
    451c:	3c19de00 	lui	t9,0xde00
    4520:	ace20004 	sw	v0,4(a3)
    4524:	8e2302d0 	lw	v1,720(s1)
    4528:	00108400 	sll	s0,s0,0x10
    452c:	00108403 	sra	s0,s0,0x10
    4530:	24780008 	addiu	t8,v1,8
    4534:	ae3802d0 	sw	t8,720(s1)
    4538:	ac790000 	sw	t9,0(v1)
    453c:	8fa80030 	lw	t0,48(sp)
    4540:	2a0100c7 	slti	at,s0,199
    4544:	1420ff66 	bnez	at,42e0 <func_80B6D688+0x5f8>
    4548:	ac680004 	sw	t0,4(v1)
    454c:	0c000000 	jal	0 <func_80B699A0>
    4550:	00000000 	nop
    4554:	8fa900e8 	lw	t1,232(sp)
    4558:	0c000000 	jal	0 <func_80B699A0>
    455c:	8d240000 	lw	a0,0(t1)
    4560:	8faa00e8 	lw	t2,232(sp)
    4564:	3c060000 	lui	a2,0x0
    4568:	24c60000 	addiu	a2,a2,0
    456c:	27a40098 	addiu	a0,sp,152
    4570:	24070dac 	li	a3,3500
    4574:	0c000000 	jal	0 <func_80B699A0>
    4578:	8d450000 	lw	a1,0(t2)
    457c:	8fbf001c 	lw	ra,28(sp)
    4580:	8fb00014 	lw	s0,20(sp)
    4584:	8fb10018 	lw	s1,24(sp)
    4588:	03e00008 	jr	ra
    458c:	27bd00e8 	addiu	sp,sp,232

00004590 <func_80B6DF30>:
    4590:	27bdff30 	addiu	sp,sp,-208
    4594:	afbf0024 	sw	ra,36(sp)
    4598:	afb10020 	sw	s1,32(sp)
    459c:	afb0001c 	sw	s0,28(sp)
    45a0:	8c8e1c44 	lw	t6,7236(a0)
    45a4:	00808825 	move	s1,a0
    45a8:	3c060000 	lui	a2,0x0
    45ac:	afae00b8 	sw	t6,184(sp)
    45b0:	8c850000 	lw	a1,0(a0)
    45b4:	afb100d0 	sw	s1,208(sp)
    45b8:	27a400a0 	addiu	a0,sp,160
    45bc:	24c60000 	addiu	a2,a2,0
    45c0:	24070e10 	li	a3,3600
    45c4:	0c000000 	jal	0 <func_80B699A0>
    45c8:	00a08025 	move	s0,a1
    45cc:	3c030000 	lui	v1,0x0
    45d0:	24630000 	addiu	v1,v1,0
    45d4:	90620000 	lbu	v0,0(v1)
    45d8:	10400018 	beqz	v0,463c <func_80B6DF30+0xac>
    45dc:	244fffff 	addiu	t7,v0,-1
    45e0:	3c040000 	lui	a0,0x0
    45e4:	a06f0000 	sb	t7,0(v1)
    45e8:	24840000 	addiu	a0,a0,0
    45ec:	3c05420c 	lui	a1,0x420c
    45f0:	3c063f80 	lui	a2,0x3f80
    45f4:	0c000000 	jal	0 <func_80B699A0>
    45f8:	3c0742c8 	lui	a3,0x42c8
    45fc:	3c040000 	lui	a0,0x0
    4600:	3c05bf4c 	lui	a1,0xbf4c
    4604:	3c073ecc 	lui	a3,0x3ecc
    4608:	34e7cccd 	ori	a3,a3,0xcccd
    460c:	34a5cccd 	ori	a1,a1,0xcccd
    4610:	24840000 	addiu	a0,a0,0
    4614:	0c000000 	jal	0 <func_80B699A0>
    4618:	3c063f80 	lui	a2,0x3f80
    461c:	8fa400b8 	lw	a0,184(sp)
    4620:	2405f060 	li	a1,-4000
    4624:	24060002 	li	a2,2
    4628:	24073a98 	li	a3,15000
    462c:	0c000000 	jal	0 <func_80B699A0>
    4630:	248400b4 	addiu	a0,a0,180
    4634:	10000031 	b	46fc <func_80B6DF30+0x16c>
    4638:	00000000 	nop
    463c:	3c180000 	lui	t8,0x0
    4640:	87180000 	lh	t8,0(t8)
    4644:	24010004 	li	at,4
    4648:	00008825 	move	s1,zero
    464c:	17010018 	bne	t8,at,46b0 <func_80B6DF30+0x120>
    4650:	3c190000 	lui	t9,0x0
    4654:	93390000 	lbu	t9,0(t9)
    4658:	3c040000 	lui	a0,0x0
    465c:	13200014 	beqz	t9,46b0 <func_80B6DF30+0x120>
    4660:	00000000 	nop
    4664:	84840000 	lh	a0,0(a0)
    4668:	00800821 	move	at,a0
    466c:	00042080 	sll	a0,a0,0x2
    4670:	00812023 	subu	a0,a0,at
    4674:	000420c0 	sll	a0,a0,0x3
    4678:	00812021 	addu	a0,a0,at
    467c:	00042280 	sll	a0,a0,0xa
    4680:	00042400 	sll	a0,a0,0x10
    4684:	0c000000 	jal	0 <func_80B699A0>
    4688:	00042403 	sra	a0,a0,0x10
    468c:	3c010000 	lui	at,0x0
    4690:	c4240000 	lwc1	$f4,0(at)
    4694:	46040182 	mul.s	$f6,$f0,$f4
    4698:	4600320d 	trunc.w.s	$f8,$f6
    469c:	44114000 	mfc1	s1,$f8
    46a0:	00000000 	nop
    46a4:	00118c00 	sll	s1,s1,0x10
    46a8:	1000000d 	b	46e0 <func_80B6DF30+0x150>
    46ac:	00118c03 	sra	s1,s1,0x10
    46b0:	3c040000 	lui	a0,0x0
    46b4:	3c053dcc 	lui	a1,0x3dcc
    46b8:	34a5cccd 	ori	a1,a1,0xcccd
    46bc:	24840000 	addiu	a0,a0,0
    46c0:	0c000000 	jal	0 <func_80B699A0>
    46c4:	3c064120 	lui	a2,0x4120
    46c8:	3c040000 	lui	a0,0x0
    46cc:	3c063d4c 	lui	a2,0x3d4c
    46d0:	34c6cccd 	ori	a2,a2,0xcccd
    46d4:	24840000 	addiu	a0,a0,0
    46d8:	0c000000 	jal	0 <func_80B699A0>
    46dc:	3c053f80 	lui	a1,0x3f80
    46e0:	8fa400b8 	lw	a0,184(sp)
    46e4:	00112c00 	sll	a1,s1,0x10
    46e8:	00052c03 	sra	a1,a1,0x10
    46ec:	24060005 	li	a2,5
    46f0:	240703e8 	li	a3,1000
    46f4:	0c000000 	jal	0 <func_80B699A0>
    46f8:	248400b4 	addiu	a0,a0,180
    46fc:	3c020000 	lui	v0,0x0
    4700:	84420000 	lh	v0,0(v0)
    4704:	24010003 	li	at,3
    4708:	10410003 	beq	v0,at,4718 <func_80B6DF30+0x188>
    470c:	24010004 	li	at,4
    4710:	14410091 	bne	v0,at,4958 <func_80B6DF30+0x3c8>
    4714:	8fa400b8 	lw	a0,184(sp)
    4718:	8fb100d0 	lw	s1,208(sp)
    471c:	82290028 	lb	t1,40(s1)
    4720:	26310014 	addiu	s1,s1,20
    4724:	15200007 	bnez	t1,4744 <func_80B6DF30+0x1b4>
    4728:	3c0a0000 	lui	t2,0x0
    472c:	854a0000 	lh	t2,0(t2)
    4730:	51400005 	beqzl	t2,4748 <func_80B6DF30+0x1b8>
    4734:	82220015 	lb	v0,21(s1)
    4738:	44800000 	mtc1	zero,$f0
    473c:	3c010000 	lui	at,0x0
    4740:	e4200000 	swc1	$f0,0(at)
    4744:	82220015 	lb	v0,21(s1)
    4748:	44800000 	mtc1	zero,$f0
    474c:	14400007 	bnez	v0,476c <func_80B6DF30+0x1dc>
    4750:	3c0b0000 	lui	t3,0x0
    4754:	856b0000 	lh	t3,0(t3)
    4758:	3c010000 	lui	at,0x0
    475c:	51600004 	beqzl	t3,4770 <func_80B6DF30+0x1e0>
    4760:	44828000 	mtc1	v0,$f16
    4764:	e4200000 	swc1	$f0,0(at)
    4768:	82220015 	lb	v0,21(s1)
    476c:	44828000 	mtc1	v0,$f16
    4770:	3c010000 	lui	at,0x0
    4774:	c4240000 	lwc1	$f4,0(at)
    4778:	468084a0 	cvt.s.w	$f18,$f16
    477c:	8fa300b8 	lw	v1,184(sp)
    4780:	3c063e99 	lui	a2,0x3e99
    4784:	34c6999a 	ori	a2,a2,0x999a
    4788:	c46a085c 	lwc1	$f10,2140(v1)
    478c:	e7a00010 	swc1	$f0,16(sp)
    4790:	46049182 	mul.s	$f6,$f18,$f4
    4794:	3c0740a0 	lui	a3,0x40a0
    4798:	2464085c 	addiu	a0,v1,2140
    479c:	e7aa00c8 	swc1	$f10,200(sp)
    47a0:	44053000 	mfc1	a1,$f6
    47a4:	0c000000 	jal	0 <func_80B699A0>
    47a8:	00000000 	nop
    47ac:	8fa200b8 	lw	v0,184(sp)
    47b0:	c7aa00c8 	lwc1	$f10,200(sp)
    47b4:	3c010000 	lui	at,0x0
    47b8:	c448085c 	lwc1	$f8,2140(v0)
    47bc:	c4260000 	lwc1	$f6,0(at)
    47c0:	3c063e99 	lui	a2,0x3e99
    47c4:	460a4401 	sub.s	$f16,$f8,$f10
    47c8:	44805000 	mtc1	zero,$f10
    47cc:	34c6999a 	ori	a2,a2,0x999a
    47d0:	3c0740a0 	lui	a3,0x40a0
    47d4:	e7b000c8 	swc1	$f16,200(sp)
    47d8:	822c0014 	lb	t4,20(s1)
    47dc:	c44c0858 	lwc1	$f12,2136(v0)
    47e0:	24440858 	addiu	a0,v0,2136
    47e4:	448c9000 	mtc1	t4,$f18
    47e8:	e7aa0010 	swc1	$f10,16(sp)
    47ec:	e7ac00c4 	swc1	$f12,196(sp)
    47f0:	46809120 	cvt.s.w	$f4,$f18
    47f4:	46062202 	mul.s	$f8,$f4,$f6
    47f8:	44054000 	mfc1	a1,$f8
    47fc:	0c000000 	jal	0 <func_80B699A0>
    4800:	00000000 	nop
    4804:	8fa200b8 	lw	v0,184(sp)
    4808:	3c013f80 	lui	at,0x3f80
    480c:	44817000 	mtc1	at,$f14
    4810:	c4420858 	lwc1	$f2,2136(v0)
    4814:	3c01bf80 	lui	at,0xbf80
    4818:	44810000 	mtc1	at,$f0
    481c:	4602703c 	c.lt.s	$f14,$f2
    4820:	c7ac00c4 	lwc1	$f12,196(sp)
    4824:	3c01428c 	lui	at,0x428c
    4828:	44813000 	mtc1	at,$f6
    482c:	45000002 	bc1f	4838 <func_80B6DF30+0x2a8>
    4830:	460c1301 	sub.s	$f12,$f2,$f12
    4834:	e44e0858 	swc1	$f14,2136(v0)
    4838:	c450085c 	lwc1	$f16,2140(v0)
    483c:	46066202 	mul.s	$f8,$f12,$f6
    4840:	3c010000 	lui	at,0x0
    4844:	4610703c 	c.lt.s	$f14,$f16
    4848:	00000000 	nop
    484c:	45020003 	bc1fl	485c <func_80B6DF30+0x2cc>
    4850:	c4520858 	lwc1	$f18,2136(v0)
    4854:	e44e085c 	swc1	$f14,2140(v0)
    4858:	c4520858 	lwc1	$f18,2136(v0)
    485c:	4600903c 	c.lt.s	$f18,$f0
    4860:	00000000 	nop
    4864:	45020003 	bc1fl	4874 <func_80B6DF30+0x2e4>
    4868:	c444085c 	lwc1	$f4,2140(v0)
    486c:	e4400858 	swc1	$f0,2136(v0)
    4870:	c444085c 	lwc1	$f4,2140(v0)
    4874:	4600203c 	c.lt.s	$f4,$f0
    4878:	00000000 	nop
    487c:	45000002 	bc1f	4888 <func_80B6DF30+0x2f8>
    4880:	00000000 	nop
    4884:	e440085c 	swc1	$f0,2140(v0)
    4888:	c42a0000 	lwc1	$f10,0(at)
    488c:	3c040000 	lui	a0,0x0
    4890:	44067000 	mfc1	a2,$f14
    4894:	460a4402 	mul.s	$f16,$f8,$f10
    4898:	3c070000 	lui	a3,0x0
    489c:	8ce70000 	lw	a3,0(a3)
    48a0:	24840000 	addiu	a0,a0,0
    48a4:	44058000 	mfc1	a1,$f16
    48a8:	0c000000 	jal	0 <func_80B699A0>
    48ac:	00000000 	nop
    48b0:	3c013f80 	lui	at,0x3f80
    48b4:	44810000 	mtc1	at,$f0
    48b8:	3c040000 	lui	a0,0x0
    48bc:	3c073dcc 	lui	a3,0x3dcc
    48c0:	44050000 	mfc1	a1,$f0
    48c4:	44060000 	mfc1	a2,$f0
    48c8:	34e7cccd 	ori	a3,a3,0xcccd
    48cc:	0c000000 	jal	0 <func_80B699A0>
    48d0:	24840000 	addiu	a0,a0,0
    48d4:	3c01428c 	lui	at,0x428c
    48d8:	44812000 	mtc1	at,$f4
    48dc:	c7b200c8 	lwc1	$f18,200(sp)
    48e0:	3c010000 	lui	at,0x0
    48e4:	c4280000 	lwc1	$f8,0(at)
    48e8:	46049182 	mul.s	$f6,$f18,$f4
    48ec:	3c040000 	lui	a0,0x0
    48f0:	3c070000 	lui	a3,0x0
    48f4:	8ce70000 	lw	a3,0(a3)
    48f8:	24840000 	addiu	a0,a0,0
    48fc:	3c063f80 	lui	a2,0x3f80
    4900:	46083282 	mul.s	$f10,$f6,$f8
    4904:	44055000 	mfc1	a1,$f10
    4908:	0c000000 	jal	0 <func_80B699A0>
    490c:	00000000 	nop
    4910:	3c013f80 	lui	at,0x3f80
    4914:	44810000 	mtc1	at,$f0
    4918:	3c040000 	lui	a0,0x0
    491c:	3c073dcc 	lui	a3,0x3dcc
    4920:	44050000 	mfc1	a1,$f0
    4924:	44060000 	mfc1	a2,$f0
    4928:	34e7cccd 	ori	a3,a3,0xcccd
    492c:	0c000000 	jal	0 <func_80B699A0>
    4930:	24840000 	addiu	a0,a0,0
    4934:	3c110000 	lui	s1,0x0
    4938:	26310000 	addiu	s1,s1,0
    493c:	3c063d4c 	lui	a2,0x3d4c
    4940:	34c6cccd 	ori	a2,a2,0xcccd
    4944:	02202025 	move	a0,s1
    4948:	0c000000 	jal	0 <func_80B699A0>
    494c:	3c053f80 	lui	a1,0x3f80
    4950:	10000047 	b	4a70 <func_80B6DF30+0x4e0>
    4954:	8fad00d0 	lw	t5,208(sp)
    4958:	3c063dcc 	lui	a2,0x3dcc
    495c:	34c6cccd 	ori	a2,a2,0xcccd
    4960:	2484085c 	addiu	a0,a0,2140
    4964:	0c000000 	jal	0 <func_80B699A0>
    4968:	3c053f80 	lui	a1,0x3f80
    496c:	8fa400b8 	lw	a0,184(sp)
    4970:	3c063dcc 	lui	a2,0x3dcc
    4974:	34c6cccd 	ori	a2,a2,0xcccd
    4978:	3c053f80 	lui	a1,0x3f80
    497c:	0c000000 	jal	0 <func_80B699A0>
    4980:	24840858 	addiu	a0,a0,2136
    4984:	3c040000 	lui	a0,0x0
    4988:	84840000 	lh	a0,0(a0)
    498c:	00800821 	move	at,a0
    4990:	00042080 	sll	a0,a0,0x2
    4994:	00812023 	subu	a0,a0,at
    4998:	00042100 	sll	a0,a0,0x4
    499c:	00812023 	subu	a0,a0,at
    49a0:	000420c0 	sll	a0,a0,0x3
    49a4:	00812023 	subu	a0,a0,at
    49a8:	000420c0 	sll	a0,a0,0x3
    49ac:	00042400 	sll	a0,a0,0x10
    49b0:	0c000000 	jal	0 <func_80B699A0>
    49b4:	00042403 	sra	a0,a0,0x10
    49b8:	3c010000 	lui	at,0x0
    49bc:	c4300000 	lwc1	$f16,0(at)
    49c0:	3c010000 	lui	at,0x0
    49c4:	c4240000 	lwc1	$f4,0(at)
    49c8:	46100482 	mul.s	$f18,$f0,$f16
    49cc:	3c040000 	lui	a0,0x0
    49d0:	3c073d4c 	lui	a3,0x3d4c
    49d4:	34e7cccd 	ori	a3,a3,0xcccd
    49d8:	24840000 	addiu	a0,a0,0
    49dc:	3c063f80 	lui	a2,0x3f80
    49e0:	46049180 	add.s	$f6,$f18,$f4
    49e4:	44053000 	mfc1	a1,$f6
    49e8:	0c000000 	jal	0 <func_80B699A0>
    49ec:	00000000 	nop
    49f0:	3c040000 	lui	a0,0x0
    49f4:	3c063d4c 	lui	a2,0x3d4c
    49f8:	34c6cccd 	ori	a2,a2,0xcccd
    49fc:	24840000 	addiu	a0,a0,0
    4a00:	0c000000 	jal	0 <func_80B699A0>
    4a04:	3c053f80 	lui	a1,0x3f80
    4a08:	3c020000 	lui	v0,0x0
    4a0c:	84420000 	lh	v0,0(v0)
    4a10:	3c110000 	lui	s1,0x0
    4a14:	26310000 	addiu	s1,s1,0
    4a18:	28410013 	slti	at,v0,19
    4a1c:	1420000e 	bnez	at,4a58 <func_80B6DF30+0x4c8>
    4a20:	02202025 	move	a0,s1
    4a24:	28410019 	slti	at,v0,25
    4a28:	1020000b 	beqz	at,4a58 <func_80B6DF30+0x4c8>
    4a2c:	3c053f4c 	lui	a1,0x3f4c
    4a30:	3c110000 	lui	s1,0x0
    4a34:	26310000 	addiu	s1,s1,0
    4a38:	3c073e4c 	lui	a3,0x3e4c
    4a3c:	34e7cccd 	ori	a3,a3,0xcccd
    4a40:	02202025 	move	a0,s1
    4a44:	34a5cccd 	ori	a1,a1,0xcccd
    4a48:	0c000000 	jal	0 <func_80B699A0>
    4a4c:	3c063f80 	lui	a2,0x3f80
    4a50:	10000007 	b	4a70 <func_80B6DF30+0x4e0>
    4a54:	8fad00d0 	lw	t5,208(sp)
    4a58:	3c073ecc 	lui	a3,0x3ecc
    4a5c:	34e7cccd 	ori	a3,a3,0xcccd
    4a60:	24050000 	li	a1,0
    4a64:	0c000000 	jal	0 <func_80B699A0>
    4a68:	3c063f80 	lui	a2,0x3f80
    4a6c:	8fad00d0 	lw	t5,208(sp)
    4a70:	0c000000 	jal	0 <func_80B699A0>
    4a74:	8da40000 	lw	a0,0(t5)
    4a78:	8e0202c0 	lw	v0,704(s0)
    4a7c:	3c180601 	lui	t8,0x601
    4a80:	271813d0 	addiu	t8,t8,5072
    4a84:	244e0008 	addiu	t6,v0,8
    4a88:	ae0e02c0 	sw	t6,704(s0)
    4a8c:	3c0fde00 	lui	t7,0xde00
    4a90:	ac4f0000 	sw	t7,0(v0)
    4a94:	ac580004 	sw	t8,4(v0)
    4a98:	8e0202c0 	lw	v0,704(s0)
    4a9c:	3c09ff9b 	lui	t1,0xff9b
    4aa0:	352900ff 	ori	t1,t1,0xff
    4aa4:	24590008 	addiu	t9,v0,8
    4aa8:	ae1902c0 	sw	t9,704(s0)
    4aac:	3c08fa00 	lui	t0,0xfa00
    4ab0:	ac480000 	sw	t0,0(v0)
    4ab4:	ac490004 	sw	t1,4(v0)
    4ab8:	8fa400b8 	lw	a0,184(sp)
    4abc:	00002825 	move	a1,zero
    4ac0:	0c000000 	jal	0 <func_80B699A0>
    4ac4:	248409e0 	addiu	a0,a0,2528
    4ac8:	3c0a0000 	lui	t2,0x0
    4acc:	914a0000 	lbu	t2,0(t2)
    4ad0:	24010001 	li	at,1
    4ad4:	24060000 	li	a2,0
    4ad8:	5141000a 	beql	t2,at,4b04 <func_80B6DF30+0x574>
    4adc:	3c014366 	lui	at,0x4366
    4ae0:	44806000 	mtc1	zero,$f12
    4ae4:	3c0143c8 	lui	at,0x43c8
    4ae8:	44817000 	mtc1	at,$f14
    4aec:	44066000 	mfc1	a2,$f12
    4af0:	0c000000 	jal	0 <func_80B699A0>
    4af4:	24070001 	li	a3,1
    4af8:	10000006 	b	4b14 <func_80B6DF30+0x584>
    4afc:	00000000 	nop
    4b00:	3c014366 	lui	at,0x4366
    4b04:	44817000 	mtc1	at,$f14
    4b08:	44806000 	mtc1	zero,$f12
    4b0c:	0c000000 	jal	0 <func_80B699A0>
    4b10:	24070001 	li	a3,1
    4b14:	3c0b0000 	lui	t3,0x0
    4b18:	856b0000 	lh	t3,0(t3)
    4b1c:	24010005 	li	at,5
    4b20:	24050001 	li	a1,1
    4b24:	15610006 	bne	t3,at,4b40 <func_80B6DF30+0x5b0>
    4b28:	3c010000 	lui	at,0x0
    4b2c:	c42c0000 	lwc1	$f12,0(at)
    4b30:	0c000000 	jal	0 <func_80B699A0>
    4b34:	24050001 	li	a1,1
    4b38:	10000004 	b	4b4c <func_80B6DF30+0x5bc>
    4b3c:	00000000 	nop
    4b40:	3c010000 	lui	at,0x0
    4b44:	0c000000 	jal	0 <func_80B699A0>
    4b48:	c42c0000 	lwc1	$f12,0(at)
    4b4c:	3c010000 	lui	at,0x0
    4b50:	c42c0000 	lwc1	$f12,0(at)
    4b54:	0c000000 	jal	0 <func_80B699A0>
    4b58:	24050001 	li	a1,1
    4b5c:	8fac00b8 	lw	t4,184(sp)
    4b60:	3c013f00 	lui	at,0x3f00
    4b64:	44815000 	mtc1	at,$f10
    4b68:	c5880858 	lwc1	$f8,2136(t4)
    4b6c:	3c010000 	lui	at,0x0
    4b70:	c4320000 	lwc1	$f18,0(at)
    4b74:	460a4402 	mul.s	$f16,$f8,$f10
    4b78:	24050001 	li	a1,1
    4b7c:	0c000000 	jal	0 <func_80B699A0>
    4b80:	46128300 	add.s	$f12,$f16,$f18
    4b84:	3c010000 	lui	at,0x0
    4b88:	c4240000 	lwc1	$f4,0(at)
    4b8c:	3c0141a0 	lui	at,0x41a0
    4b90:	44813000 	mtc1	at,$f6
    4b94:	3c010000 	lui	at,0x0
    4b98:	c42a0000 	lwc1	$f10,0(at)
    4b9c:	46062200 	add.s	$f8,$f4,$f6
    4ba0:	3c010000 	lui	at,0x0
    4ba4:	c4320000 	lwc1	$f18,0(at)
    4ba8:	24050001 	li	a1,1
    4bac:	460a4402 	mul.s	$f16,$f8,$f10
    4bb0:	00000000 	nop
    4bb4:	46128302 	mul.s	$f12,$f16,$f18
    4bb8:	0c000000 	jal	0 <func_80B699A0>
    4bbc:	00000000 	nop
    4bc0:	3c010000 	lui	at,0x0
    4bc4:	c42c0000 	lwc1	$f12,0(at)
    4bc8:	24070001 	li	a3,1
    4bcc:	44066000 	mfc1	a2,$f12
    4bd0:	0c000000 	jal	0 <func_80B699A0>
    4bd4:	46006386 	mov.s	$f14,$f12
    4bd8:	8fad00b8 	lw	t5,184(sp)
    4bdc:	3c013f80 	lui	at,0x3f80
    4be0:	44813000 	mtc1	at,$f6
    4be4:	c5a4085c 	lwc1	$f4,2140(t5)
    4be8:	3c01be80 	lui	at,0xbe80
    4bec:	44815000 	mtc1	at,$f10
    4bf0:	46062201 	sub.s	$f8,$f4,$f6
    4bf4:	3c013f00 	lui	at,0x3f00
    4bf8:	44819000 	mtc1	at,$f18
    4bfc:	3c010000 	lui	at,0x0
    4c00:	460a4402 	mul.s	$f16,$f8,$f10
    4c04:	c4260000 	lwc1	$f6,0(at)
    4c08:	3c010000 	lui	at,0x0
    4c0c:	c42a0000 	lwc1	$f10,0(at)
    4c10:	44806000 	mtc1	zero,$f12
    4c14:	3c06c4a2 	lui	a2,0xc4a2
    4c18:	34c68000 	ori	a2,a2,0x8000
    4c1c:	46128100 	add.s	$f4,$f16,$f18
    4c20:	c6300000 	lwc1	$f16,0(s1)
    4c24:	24070001 	li	a3,1
    4c28:	46006386 	mov.s	$f14,$f12
    4c2c:	46062202 	mul.s	$f8,$f4,$f6
    4c30:	46105480 	add.s	$f18,$f10,$f16
    4c34:	46124100 	add.s	$f4,$f8,$f18
    4c38:	0c000000 	jal	0 <func_80B699A0>
    4c3c:	e7a400c0 	swc1	$f4,192(sp)
    4c40:	3c0e0601 	lui	t6,0x601
    4c44:	25ce1410 	addiu	t6,t6,5136
    4c48:	afae0028 	sw	t6,40(sp)
    4c4c:	00008825 	move	s1,zero
    4c50:	3c0f0000 	lui	t7,0x0
    4c54:	25ef0000 	addiu	t7,t7,0
    4c58:	00111880 	sll	v1,s1,0x2
    4c5c:	006f1021 	addu	v0,v1,t7
    4c60:	3c010000 	lui	at,0x0
    4c64:	c42a0000 	lwc1	$f10,0(at)
    4c68:	c4460000 	lwc1	$f6,0(v0)
    4c6c:	3c013f00 	lui	at,0x3f00
    4c70:	44814000 	mtc1	at,$f8
    4c74:	460a3402 	mul.s	$f16,$f6,$f10
    4c78:	afa2002c 	sw	v0,44(sp)
    4c7c:	afa30030 	sw	v1,48(sp)
    4c80:	24050001 	li	a1,1
    4c84:	46088302 	mul.s	$f12,$f16,$f8
    4c88:	0c000000 	jal	0 <func_80B699A0>
    4c8c:	00000000 	nop
    4c90:	8fa2002c 	lw	v0,44(sp)
    4c94:	c7a400c0 	lwc1	$f4,192(sp)
    4c98:	3c013f00 	lui	at,0x3f00
    4c9c:	c4520000 	lwc1	$f18,0(v0)
    4ca0:	44815000 	mtc1	at,$f10
    4ca4:	24050001 	li	a1,1
    4ca8:	46049182 	mul.s	$f6,$f18,$f4
    4cac:	00000000 	nop
    4cb0:	460a3302 	mul.s	$f12,$f6,$f10
    4cb4:	0c000000 	jal	0 <func_80B699A0>
    4cb8:	00000000 	nop
    4cbc:	0c000000 	jal	0 <func_80B699A0>
    4cc0:	00000000 	nop
    4cc4:	8fb80030 	lw	t8,48(sp)
    4cc8:	3c010000 	lui	at,0x0
    4ccc:	3c063f05 	lui	a2,0x3f05
    4cd0:	00380821 	addu	at,at,t8
    4cd4:	c42c0000 	lwc1	$f12,0(at)
    4cd8:	34c61eb8 	ori	a2,a2,0x1eb8
    4cdc:	24070001 	li	a3,1
    4ce0:	0c000000 	jal	0 <func_80B699A0>
    4ce4:	46006386 	mov.s	$f14,$f12
    4ce8:	8e0202c0 	lw	v0,704(s0)
    4cec:	3c08da38 	lui	t0,0xda38
    4cf0:	35080003 	ori	t0,t0,0x3
    4cf4:	24590008 	addiu	t9,v0,8
    4cf8:	ae1902c0 	sw	t9,704(s0)
    4cfc:	ac480000 	sw	t0,0(v0)
    4d00:	8fa900d0 	lw	t1,208(sp)
    4d04:	3c050000 	lui	a1,0x0
    4d08:	24a50000 	addiu	a1,a1,0
    4d0c:	8d240000 	lw	a0,0(t1)
    4d10:	24060ee1 	li	a2,3809
    4d14:	0c000000 	jal	0 <func_80B699A0>
    4d18:	afa20090 	sw	v0,144(sp)
    4d1c:	8fa30090 	lw	v1,144(sp)
    4d20:	2a210005 	slti	at,s1,5
    4d24:	10200035 	beqz	at,4dfc <func_80B6DF30+0x86c>
    4d28:	ac620004 	sw	v0,4(v1)
    4d2c:	8e0202c0 	lw	v0,704(s0)
    4d30:	3c040601 	lui	a0,0x601
    4d34:	24841170 	addiu	a0,a0,4464
    4d38:	244a0008 	addiu	t2,v0,8
    4d3c:	ae0a02c0 	sw	t2,704(s0)
    4d40:	3c0bfd10 	lui	t3,0xfd10
    4d44:	ac4b0000 	sw	t3,0(v0)
    4d48:	ac440004 	sw	a0,4(v0)
    4d4c:	8e0202c0 	lw	v0,704(s0)
    4d50:	3c0e0700 	lui	t6,0x700
    4d54:	35cec040 	ori	t6,t6,0xc040
    4d58:	244c0008 	addiu	t4,v0,8
    4d5c:	ae0c02c0 	sw	t4,704(s0)
    4d60:	3c0df510 	lui	t5,0xf510
    4d64:	ac4d0000 	sw	t5,0(v0)
    4d68:	ac4e0004 	sw	t6,4(v0)
    4d6c:	8e0202c0 	lw	v0,704(s0)
    4d70:	3c18e600 	lui	t8,0xe600
    4d74:	3c090707 	lui	t1,0x707
    4d78:	244f0008 	addiu	t7,v0,8
    4d7c:	ae0f02c0 	sw	t7,704(s0)
    4d80:	ac400004 	sw	zero,4(v0)
    4d84:	ac580000 	sw	t8,0(v0)
    4d88:	8e0202c0 	lw	v0,704(s0)
    4d8c:	3529f200 	ori	t1,t1,0xf200
    4d90:	3c08f300 	lui	t0,0xf300
    4d94:	24590008 	addiu	t9,v0,8
    4d98:	ae1902c0 	sw	t9,704(s0)
    4d9c:	ac490004 	sw	t1,4(v0)
    4da0:	ac480000 	sw	t0,0(v0)
    4da4:	8e0202c0 	lw	v0,704(s0)
    4da8:	3c0be700 	lui	t3,0xe700
    4dac:	340ec040 	li	t6,0xc040
    4db0:	244a0008 	addiu	t2,v0,8
    4db4:	ae0a02c0 	sw	t2,704(s0)
    4db8:	ac400004 	sw	zero,4(v0)
    4dbc:	ac4b0000 	sw	t3,0(v0)
    4dc0:	8e0202c0 	lw	v0,704(s0)
    4dc4:	35ad0800 	ori	t5,t5,0x800
    4dc8:	3c190003 	lui	t9,0x3
    4dcc:	244c0008 	addiu	t4,v0,8
    4dd0:	ae0c02c0 	sw	t4,704(s0)
    4dd4:	ac4e0004 	sw	t6,4(v0)
    4dd8:	ac4d0000 	sw	t5,0(v0)
    4ddc:	8e0202c0 	lw	v0,704(s0)
    4de0:	3739c01c 	ori	t9,t9,0xc01c
    4de4:	3c18f200 	lui	t8,0xf200
    4de8:	244f0008 	addiu	t7,v0,8
    4dec:	ae0f02c0 	sw	t7,704(s0)
    4df0:	ac590004 	sw	t9,4(v0)
    4df4:	1000006c 	b	4fa8 <func_80B6DF30+0xa18>
    4df8:	ac580000 	sw	t8,0(v0)
    4dfc:	2a210008 	slti	at,s1,8
    4e00:	14200003 	bnez	at,4e10 <func_80B6DF30+0x880>
    4e04:	32280001 	andi	t0,s1,0x1
    4e08:	15000035 	bnez	t0,4ee0 <func_80B6DF30+0x950>
    4e0c:	3c040601 	lui	a0,0x601
    4e10:	8e0202c0 	lw	v0,704(s0)
    4e14:	3c040601 	lui	a0,0x601
    4e18:	24841270 	addiu	a0,a0,4720
    4e1c:	24490008 	addiu	t1,v0,8
    4e20:	ae0902c0 	sw	t1,704(s0)
    4e24:	3c0afd10 	lui	t2,0xfd10
    4e28:	ac4a0000 	sw	t2,0(v0)
    4e2c:	ac440004 	sw	a0,4(v0)
    4e30:	8e0202c0 	lw	v0,704(s0)
    4e34:	3c0d0700 	lui	t5,0x700
    4e38:	35adc040 	ori	t5,t5,0xc040
    4e3c:	244b0008 	addiu	t3,v0,8
    4e40:	ae0b02c0 	sw	t3,704(s0)
    4e44:	3c0cf510 	lui	t4,0xf510
    4e48:	ac4c0000 	sw	t4,0(v0)
    4e4c:	ac4d0004 	sw	t5,4(v0)
    4e50:	8e0202c0 	lw	v0,704(s0)
    4e54:	3c0fe600 	lui	t7,0xe600
    4e58:	3c080707 	lui	t0,0x707
    4e5c:	244e0008 	addiu	t6,v0,8
    4e60:	ae0e02c0 	sw	t6,704(s0)
    4e64:	ac400004 	sw	zero,4(v0)
    4e68:	ac4f0000 	sw	t7,0(v0)
    4e6c:	8e0202c0 	lw	v0,704(s0)
    4e70:	3508f200 	ori	t0,t0,0xf200
    4e74:	3c19f300 	lui	t9,0xf300
    4e78:	24580008 	addiu	t8,v0,8
    4e7c:	ae1802c0 	sw	t8,704(s0)
    4e80:	ac480004 	sw	t0,4(v0)
    4e84:	ac590000 	sw	t9,0(v0)
    4e88:	8e0202c0 	lw	v0,704(s0)
    4e8c:	3c0ae700 	lui	t2,0xe700
    4e90:	340dc040 	li	t5,0xc040
    4e94:	24490008 	addiu	t1,v0,8
    4e98:	ae0902c0 	sw	t1,704(s0)
    4e9c:	ac400004 	sw	zero,4(v0)
    4ea0:	ac4a0000 	sw	t2,0(v0)
    4ea4:	8e0202c0 	lw	v0,704(s0)
    4ea8:	358c0800 	ori	t4,t4,0x800
    4eac:	3c180003 	lui	t8,0x3
    4eb0:	244b0008 	addiu	t3,v0,8
    4eb4:	ae0b02c0 	sw	t3,704(s0)
    4eb8:	ac4d0004 	sw	t5,4(v0)
    4ebc:	ac4c0000 	sw	t4,0(v0)
    4ec0:	8e0202c0 	lw	v0,704(s0)
    4ec4:	3718c01c 	ori	t8,t8,0xc01c
    4ec8:	3c0ff200 	lui	t7,0xf200
    4ecc:	244e0008 	addiu	t6,v0,8
    4ed0:	ae0e02c0 	sw	t6,704(s0)
    4ed4:	ac580004 	sw	t8,4(v0)
    4ed8:	10000033 	b	4fa8 <func_80B6DF30+0xa18>
    4edc:	ac4f0000 	sw	t7,0(v0)
    4ee0:	8e0202c0 	lw	v0,704(s0)
    4ee4:	24841070 	addiu	a0,a0,4208
    4ee8:	3c08fd10 	lui	t0,0xfd10
    4eec:	24590008 	addiu	t9,v0,8
    4ef0:	ae1902c0 	sw	t9,704(s0)
    4ef4:	ac440004 	sw	a0,4(v0)
    4ef8:	ac480000 	sw	t0,0(v0)
    4efc:	8e0202c0 	lw	v0,704(s0)
    4f00:	3c0b0700 	lui	t3,0x700
    4f04:	356bc040 	ori	t3,t3,0xc040
    4f08:	24490008 	addiu	t1,v0,8
    4f0c:	ae0902c0 	sw	t1,704(s0)
    4f10:	3c0af510 	lui	t2,0xf510
    4f14:	ac4a0000 	sw	t2,0(v0)
    4f18:	ac4b0004 	sw	t3,4(v0)
    4f1c:	8e0202c0 	lw	v0,704(s0)
    4f20:	3c0de600 	lui	t5,0xe600
    4f24:	3c180707 	lui	t8,0x707
    4f28:	244c0008 	addiu	t4,v0,8
    4f2c:	ae0c02c0 	sw	t4,704(s0)
    4f30:	ac400004 	sw	zero,4(v0)
    4f34:	ac4d0000 	sw	t5,0(v0)
    4f38:	8e0202c0 	lw	v0,704(s0)
    4f3c:	3718f200 	ori	t8,t8,0xf200
    4f40:	3c0ff300 	lui	t7,0xf300
    4f44:	244e0008 	addiu	t6,v0,8
    4f48:	ae0e02c0 	sw	t6,704(s0)
    4f4c:	ac580004 	sw	t8,4(v0)
    4f50:	ac4f0000 	sw	t7,0(v0)
    4f54:	8e0202c0 	lw	v0,704(s0)
    4f58:	3c08e700 	lui	t0,0xe700
    4f5c:	340bc040 	li	t3,0xc040
    4f60:	24590008 	addiu	t9,v0,8
    4f64:	ae1902c0 	sw	t9,704(s0)
    4f68:	ac400004 	sw	zero,4(v0)
    4f6c:	ac480000 	sw	t0,0(v0)
    4f70:	8e0202c0 	lw	v0,704(s0)
    4f74:	354a0800 	ori	t2,t2,0x800
    4f78:	3c0e0003 	lui	t6,0x3
    4f7c:	24490008 	addiu	t1,v0,8
    4f80:	ae0902c0 	sw	t1,704(s0)
    4f84:	ac4b0004 	sw	t3,4(v0)
    4f88:	ac4a0000 	sw	t2,0(v0)
    4f8c:	8e0202c0 	lw	v0,704(s0)
    4f90:	35cec01c 	ori	t6,t6,0xc01c
    4f94:	3c0df200 	lui	t5,0xf200
    4f98:	244c0008 	addiu	t4,v0,8
    4f9c:	ae0c02c0 	sw	t4,704(s0)
    4fa0:	ac4e0004 	sw	t6,4(v0)
    4fa4:	ac4d0000 	sw	t5,0(v0)
    4fa8:	8e0202c0 	lw	v0,704(s0)
    4fac:	3c18de00 	lui	t8,0xde00
    4fb0:	244f0008 	addiu	t7,v0,8
    4fb4:	ae0f02c0 	sw	t7,704(s0)
    4fb8:	ac580000 	sw	t8,0(v0)
    4fbc:	8fb90028 	lw	t9,40(sp)
    4fc0:	0c000000 	jal	0 <func_80B699A0>
    4fc4:	ac590004 	sw	t9,4(v0)
    4fc8:	44806000 	mtc1	zero,$f12
    4fcc:	3c0643fa 	lui	a2,0x43fa
    4fd0:	24070001 	li	a3,1
    4fd4:	0c000000 	jal	0 <func_80B699A0>
    4fd8:	46006386 	mov.s	$f14,$f12
    4fdc:	24010015 	li	at,21
    4fe0:	16210005 	bne	s1,at,4ff8 <func_80B6DF30+0xa68>
    4fe4:	3c040000 	lui	a0,0x0
    4fe8:	3c050000 	lui	a1,0x0
    4fec:	24a50000 	addiu	a1,a1,0
    4ff0:	0c000000 	jal	0 <func_80B699A0>
    4ff4:	24840000 	addiu	a0,a0,0
    4ff8:	26310001 	addiu	s1,s1,1
    4ffc:	00118c00 	sll	s1,s1,0x10
    5000:	00118c03 	sra	s1,s1,0x10
    5004:	2a210016 	slti	at,s1,22
    5008:	1420ff11 	bnez	at,4c50 <func_80B6DF30+0x6c0>
    500c:	00000000 	nop
    5010:	8fa800d0 	lw	t0,208(sp)
    5014:	3c060000 	lui	a2,0x0
    5018:	24c60000 	addiu	a2,a2,0
    501c:	27a400a0 	addiu	a0,sp,160
    5020:	24070efe 	li	a3,3838
    5024:	0c000000 	jal	0 <func_80B699A0>
    5028:	8d050000 	lw	a1,0(t0)
    502c:	8fbf0024 	lw	ra,36(sp)
    5030:	8fb0001c 	lw	s0,28(sp)
    5034:	8fb10020 	lw	s1,32(sp)
    5038:	03e00008 	jr	ra
    503c:	27bd00d0 	addiu	sp,sp,208

00005040 <func_80B6E9E0>:
    5040:	27bdff18 	addiu	sp,sp,-232
    5044:	afbf002c 	sw	ra,44(sp)
    5048:	afb00028 	sw	s0,40(sp)
    504c:	afa400e8 	sw	a0,232(sp)
    5050:	afa500ec 	sw	a1,236(sp)
    5054:	8caf1c44 	lw	t7,7236(a1)
    5058:	3c180000 	lui	t8,0x0
    505c:	27180000 	addiu	t8,t8,0
    5060:	afaf00c0 	sw	t7,192(sp)
    5064:	8f0e0000 	lw	t6,0(t8)
    5068:	27a600b4 	addiu	a2,sp,180
    506c:	3c0d0000 	lui	t5,0x0
    5070:	acce0000 	sw	t6,0(a2)
    5074:	8f190004 	lw	t9,4(t8)
    5078:	25ad0000 	addiu	t5,t5,0
    507c:	3c090000 	lui	t1,0x0
    5080:	85af0000 	lh	t7,0(t5)
    5084:	25290000 	addiu	t1,t1,0
    5088:	acd90004 	sw	t9,4(a2)
    508c:	8f0e0008 	lw	t6,8(t8)
    5090:	85220000 	lh	v0,0(t1)
    5094:	25f80001 	addiu	t8,t7,1
    5098:	a5b80000 	sh	t8,0(t5)
    509c:	10400003 	beqz	v0,50ac <func_80B6E9E0+0x6c>
    50a0:	acce0008 	sw	t6,8(a2)
    50a4:	2459ffff 	addiu	t9,v0,-1
    50a8:	a5390000 	sh	t9,0(t1)
    50ac:	3c0b0000 	lui	t3,0x0
    50b0:	256b0000 	addiu	t3,t3,0
    50b4:	85620000 	lh	v0,0(t3)
    50b8:	3c0a0000 	lui	t2,0x0
    50bc:	254a0000 	addiu	t2,t2,0
    50c0:	10400003 	beqz	v0,50d0 <func_80B6E9E0+0x90>
    50c4:	3c030000 	lui	v1,0x0
    50c8:	244effff 	addiu	t6,v0,-1
    50cc:	a56e0000 	sh	t6,0(t3)
    50d0:	85420000 	lh	v0,0(t2)
    50d4:	3c040000 	lui	a0,0x0
    50d8:	24630000 	addiu	v1,v1,0
    50dc:	10400003 	beqz	v0,50ec <func_80B6E9E0+0xac>
    50e0:	24840000 	addiu	a0,a0,0
    50e4:	244fffff 	addiu	t7,v0,-1
    50e8:	a54f0000 	sh	t7,0(t2)
    50ec:	84620000 	lh	v0,0(v1)
    50f0:	3c050000 	lui	a1,0x0
    50f4:	24a50000 	addiu	a1,a1,0
    50f8:	10400003 	beqz	v0,5108 <func_80B6E9E0+0xc8>
    50fc:	3c070000 	lui	a3,0x0
    5100:	2458ffff 	addiu	t8,v0,-1
    5104:	a4780000 	sh	t8,0(v1)
    5108:	84820000 	lh	v0,0(a0)
    510c:	3c030000 	lui	v1,0x0
    5110:	24630000 	addiu	v1,v1,0
    5114:	10400003 	beqz	v0,5124 <func_80B6E9E0+0xe4>
    5118:	24e70000 	addiu	a3,a3,0
    511c:	2459ffff 	addiu	t9,v0,-1
    5120:	a4990000 	sh	t9,0(a0)
    5124:	90a20000 	lbu	v0,0(a1)
    5128:	3c080000 	lui	t0,0x0
    512c:	25080000 	addiu	t0,t0,0
    5130:	10400002 	beqz	v0,513c <func_80B6E9E0+0xfc>
    5134:	244effff 	addiu	t6,v0,-1
    5138:	a0ae0000 	sb	t6,0(a1)
    513c:	84620000 	lh	v0,0(v1)
    5140:	240e0002 	li	t6,2
    5144:	3c010000 	lui	at,0x0
    5148:	10400002 	beqz	v0,5154 <func_80B6E9E0+0x114>
    514c:	244fffff 	addiu	t7,v0,-1
    5150:	a46f0000 	sh	t7,0(v1)
    5154:	80e20000 	lb	v0,0(a3)
    5158:	3c030000 	lui	v1,0x0
    515c:	24630000 	addiu	v1,v1,0
    5160:	10400002 	beqz	v0,516c <func_80B6E9E0+0x12c>
    5164:	2458ffff 	addiu	t8,v0,-1
    5168:	a0f80000 	sb	t8,0(a3)
    516c:	84790000 	lh	t9,0(v1)
    5170:	240c0001 	li	t4,1
    5174:	3c020000 	lui	v0,0x0
    5178:	5599009a 	bnel	t4,t9,53e4 <func_80B6E9E0+0x3a4>
    517c:	8fa400ec 	lw	a0,236(sp)
    5180:	a46e0000 	sh	t6,0(v1)
    5184:	a4200000 	sh	zero,0(at)
    5188:	3c010000 	lui	at,0x0
    518c:	a0200000 	sb	zero,0(at)
    5190:	a1000000 	sb	zero,0(t0)
    5194:	90420000 	lbu	v0,0(v0)
    5198:	3c0f0000 	lui	t7,0x0
    519c:	15820005 	bne	t4,v0,51b4 <func_80B6E9E0+0x174>
    51a0:	00000000 	nop
    51a4:	8def0ec0 	lw	t7,3776(t7)
    51a8:	31f80400 	andi	t8,t7,0x400
    51ac:	17000006 	bnez	t8,51c8 <func_80B6E9E0+0x188>
    51b0:	00000000 	nop
    51b4:	11820037 	beq	t4,v0,5294 <func_80B6E9E0+0x254>
    51b8:	3c190000 	lui	t9,0x0
    51bc:	8f390ec0 	lw	t9,3776(t9)
    51c0:	332e0800 	andi	t6,t9,0x800
    51c4:	11c00033 	beqz	t6,5294 <func_80B6E9E0+0x254>
    51c8:	3c010000 	lui	at,0x0
    51cc:	0c000000 	jal	0 <func_80B699A0>
    51d0:	c42c0000 	lwc1	$f12,0(at)
    51d4:	444ff800 	cfc1	t7,$31
    51d8:	24180001 	li	t8,1
    51dc:	44d8f800 	ctc1	t8,$31
    51e0:	3c0a0000 	lui	t2,0x0
    51e4:	3c0d0000 	lui	t5,0x0
    51e8:	46000124 	cvt.w.s	$f4,$f0
    51ec:	3c0b0000 	lui	t3,0x0
    51f0:	256b0000 	addiu	t3,t3,0
    51f4:	25ad0000 	addiu	t5,t5,0
    51f8:	4458f800 	cfc1	t8,$31
    51fc:	254a0000 	addiu	t2,t2,0
    5200:	27a600b4 	addiu	a2,sp,180
    5204:	33180078 	andi	t8,t8,0x78
    5208:	13000013 	beqz	t8,5258 <func_80B6E9E0+0x218>
    520c:	3c090000 	lui	t1,0x0
    5210:	3c014f00 	lui	at,0x4f00
    5214:	44812000 	mtc1	at,$f4
    5218:	24180001 	li	t8,1
    521c:	46040101 	sub.s	$f4,$f0,$f4
    5220:	44d8f800 	ctc1	t8,$31
    5224:	00000000 	nop
    5228:	46002124 	cvt.w.s	$f4,$f4
    522c:	4458f800 	cfc1	t8,$31
    5230:	00000000 	nop
    5234:	33180078 	andi	t8,t8,0x78
    5238:	17000005 	bnez	t8,5250 <func_80B6E9E0+0x210>
    523c:	00000000 	nop
    5240:	44182000 	mfc1	t8,$f4
    5244:	3c018000 	lui	at,0x8000
    5248:	10000007 	b	5268 <func_80B6E9E0+0x228>
    524c:	0301c025 	or	t8,t8,at
    5250:	10000005 	b	5268 <func_80B6E9E0+0x228>
    5254:	2418ffff 	li	t8,-1
    5258:	44182000 	mfc1	t8,$f4
    525c:	00000000 	nop
    5260:	0700fffb 	bltz	t8,5250 <func_80B6E9E0+0x210>
    5264:	00000000 	nop
    5268:	44cff800 	ctc1	t7,$31
    526c:	270e0001 	addiu	t6,t8,1
    5270:	3c010000 	lui	at,0x0
    5274:	3c080000 	lui	t0,0x0
    5278:	3c070000 	lui	a3,0x0
    527c:	3c040000 	lui	a0,0x0
    5280:	24840000 	addiu	a0,a0,0
    5284:	24e70000 	addiu	a3,a3,0
    5288:	25080000 	addiu	t0,t0,0
    528c:	a02e0000 	sb	t6,0(at)
    5290:	25290000 	addiu	t1,t1,0
    5294:	3c014402 	lui	at,0x4402
    5298:	44813000 	mtc1	at,$f6
    529c:	3c010000 	lui	at,0x0
    52a0:	3c0c0000 	lui	t4,0x0
    52a4:	e4260000 	swc1	$f6,0(at)
    52a8:	3c014343 	lui	at,0x4343
    52ac:	44814000 	mtc1	at,$f8
    52b0:	3c010000 	lui	at,0x0
    52b4:	258c0000 	addiu	t4,t4,0
    52b8:	e4280000 	swc1	$f8,0(at)
    52bc:	a4800000 	sh	zero,0(a0)
    52c0:	848f0000 	lh	t7,0(a0)
    52c4:	44805000 	mtc1	zero,$f10
    52c8:	3c050000 	lui	a1,0x0
    52cc:	a0ef0000 	sb	t7,0(a3)
    52d0:	80f80000 	lb	t8,0(a3)
    52d4:	3c010000 	lui	at,0x0
    52d8:	24a50000 	addiu	a1,a1,0
    52dc:	331900ff 	andi	t9,t8,0xff
    52e0:	a5590000 	sh	t9,0(t2)
    52e4:	854e0000 	lh	t6,0(t2)
    52e8:	a1980000 	sb	t8,0(t4)
    52ec:	3c020000 	lui	v0,0x0
    52f0:	a56e0000 	sh	t6,0(t3)
    52f4:	856f0000 	lh	t7,0(t3)
    52f8:	24420000 	addiu	v0,v0,0
    52fc:	3c040000 	lui	a0,0x0
    5300:	a52f0000 	sh	t7,0(t1)
    5304:	85380000 	lh	t8,0(t1)
    5308:	3c0f0000 	lui	t7,0x0
    530c:	25ef0000 	addiu	t7,t7,0
    5310:	a5b80000 	sh	t8,0(t5)
    5314:	85b90000 	lh	t9,0(t5)
    5318:	3c090000 	lui	t1,0x0
    531c:	25290000 	addiu	t1,t1,0
    5320:	a1190000 	sb	t9,0(t0)
    5324:	332e00ff 	andi	t6,t9,0xff
    5328:	a42e0000 	sh	t6,0(at)
    532c:	e4aa0000 	swc1	$f10,0(a1)
    5330:	c4a40000 	lwc1	$f4,0(a1)
    5334:	3c010000 	lui	at,0x0
    5338:	3c080000 	lui	t0,0x0
    533c:	e4440000 	swc1	$f4,0(v0)
    5340:	c4460000 	lwc1	$f6,0(v0)
    5344:	25080000 	addiu	t0,t0,0
    5348:	24840000 	addiu	a0,a0,0
    534c:	e4260000 	swc1	$f6,0(at)
    5350:	8cd90000 	lw	t9,0(a2)
    5354:	00008025 	move	s0,zero
    5358:	2403000c 	li	v1,12
    535c:	adf90000 	sw	t9,0(t7)
    5360:	8cd80004 	lw	t8,4(a2)
    5364:	adf80004 	sw	t8,4(t7)
    5368:	8cd90008 	lw	t9,8(a2)
    536c:	adf90008 	sw	t9,8(t7)
    5370:	02030019 	multu	s0,v1
    5374:	8cd80000 	lw	t8,0(a2)
    5378:	26100001 	addiu	s0,s0,1
    537c:	00108400 	sll	s0,s0,0x10
    5380:	00108403 	sra	s0,s0,0x10
    5384:	2a0100c8 	slti	at,s0,200
    5388:	00001012 	mflo	v0
    538c:	01227021 	addu	t6,t1,v0
    5390:	add80000 	sw	t8,0(t6)
    5394:	8ccf0004 	lw	t7,4(a2)
    5398:	0102c821 	addu	t9,t0,v0
    539c:	adcf0004 	sw	t7,4(t6)
    53a0:	8cd80008 	lw	t8,8(a2)
    53a4:	add80008 	sw	t8,8(t6)
    53a8:	8ccf0000 	lw	t7,0(a2)
    53ac:	0082c021 	addu	t8,a0,v0
    53b0:	af2f0000 	sw	t7,0(t9)
    53b4:	8cce0004 	lw	t6,4(a2)
    53b8:	af2e0004 	sw	t6,4(t9)
    53bc:	8ccf0008 	lw	t7,8(a2)
    53c0:	af2f0008 	sw	t7,8(t9)
    53c4:	8cce0000 	lw	t6,0(a2)
    53c8:	af0e0000 	sw	t6,0(t8)
    53cc:	8cd90004 	lw	t9,4(a2)
    53d0:	af190004 	sw	t9,4(t8)
    53d4:	8cce0008 	lw	t6,8(a2)
    53d8:	1420ffe5 	bnez	at,5370 <func_80B6E9E0+0x330>
    53dc:	af0e0008 	sw	t6,8(t8)
    53e0:	8fa400ec 	lw	a0,236(sp)
    53e4:	3c010001 	lui	at,0x1
    53e8:	3c100000 	lui	s0,0x0
    53ec:	34211d60 	ori	at,at,0x1d60
    53f0:	3c050000 	lui	a1,0x0
    53f4:	3c060000 	lui	a2,0x0
    53f8:	3c070000 	lui	a3,0x0
    53fc:	26100000 	addiu	s0,s0,0
    5400:	24e70000 	addiu	a3,a3,0
    5404:	24c60000 	addiu	a2,a2,0
    5408:	24a50000 	addiu	a1,a1,0
    540c:	0c000000 	jal	0 <func_80B699A0>
    5410:	00812021 	addu	a0,a0,at
    5414:	3c0f0000 	lui	t7,0x0
    5418:	85ef0000 	lh	t7,0(t7)
    541c:	02002025 	move	a0,s0
    5420:	3c054396 	lui	a1,0x4396
    5424:	15e00009 	bnez	t7,544c <func_80B6E9E0+0x40c>
    5428:	3c063f80 	lui	a2,0x3f80
    542c:	02002025 	move	a0,s0
    5430:	3c05c448 	lui	a1,0xc448
    5434:	3c063f80 	lui	a2,0x3f80
    5438:	0c000000 	jal	0 <func_80B699A0>
    543c:	3c0741a0 	lui	a3,0x41a0
    5440:	3c080000 	lui	t0,0x0
    5444:	10000005 	b	545c <func_80B6E9E0+0x41c>
    5448:	25080000 	addiu	t0,t0,0
    544c:	0c000000 	jal	0 <func_80B699A0>
    5450:	3c0741a0 	lui	a3,0x41a0
    5454:	3c080000 	lui	t0,0x0
    5458:	25080000 	addiu	t0,t0,0
    545c:	3c180000 	lui	t8,0x0
    5460:	97180000 	lhu	t8,0(t8)
    5464:	2f010006 	sltiu	at,t8,6
    5468:	10200703 	beqz	at,7078 <L80B709D0+0x48>
    546c:	0018c080 	sll	t8,t8,0x2
    5470:	3c010000 	lui	at,0x0
    5474:	00380821 	addu	at,at,t8
    5478:	8c380000 	lw	t8,0(at)
    547c:	03000008 	jr	t8
    5480:	00000000 	nop

00005484 <L80B6EE24>:
    5484:	3c020000 	lui	v0,0x0
    5488:	8c420000 	lw	v0,0(v0)
    548c:	3c010000 	lui	at,0x0
    5490:	a4200000 	sh	zero,0(at)
    5494:	845909f0 	lh	t9,2544(v0)
    5498:	3c030000 	lui	v1,0x0
    549c:	24630000 	addiu	v1,v1,0
    54a0:	5320000b 	beqzl	t9,54d0 <L80B6EE24+0x4c>
    54a4:	3c013f80 	lui	at,0x3f80
    54a8:	a44009f0 	sh	zero,2544(v0)
    54ac:	906e0000 	lbu	t6,0(v1)
    54b0:	240f0002 	li	t7,2
    54b4:	3c010000 	lui	at,0x0
    54b8:	01eec023 	subu	t8,t7,t6
    54bc:	331900ff 	andi	t9,t8,0xff
    54c0:	13200002 	beqz	t9,54cc <L80B6EE24+0x48>
    54c4:	a0780000 	sb	t8,0(v1)
    54c8:	a0200000 	sb	zero,0(at)
    54cc:	3c013f80 	lui	at,0x3f80
    54d0:	44810000 	mtc1	at,$f0
    54d4:	3c040000 	lui	a0,0x0
    54d8:	24840000 	addiu	a0,a0,0
    54dc:	44060000 	mfc1	a2,$f0
    54e0:	44070000 	mfc1	a3,$f0
    54e4:	0c000000 	jal	0 <func_80B699A0>
    54e8:	3c054343 	lui	a1,0x4343
    54ec:	8fa300c0 	lw	v1,192(sp)
    54f0:	3c080000 	lui	t0,0x0
    54f4:	3c0a0000 	lui	t2,0x0
    54f8:	8c6f067c 	lw	t7,1660(v1)
    54fc:	254a0000 	addiu	t2,t2,0
    5500:	25080000 	addiu	t0,t0,0
    5504:	000f7100 	sll	t6,t7,0x4
    5508:	05c10003 	bgez	t6,5518 <L80B6EE24+0x94>
    550c:	3c100000 	lui	s0,0x0
    5510:	a5400000 	sh	zero,0(t2)
    5514:	a4600860 	sh	zero,2144(v1)
    5518:	85420000 	lh	v0,0(t2)
    551c:	3c180000 	lui	t8,0x0
    5520:	3c010000 	lui	at,0x0
    5524:	1440000e 	bnez	v0,5560 <L80B6EE24+0xdc>
    5528:	00000000 	nop
    552c:	87180000 	lh	t8,0(t8)
    5530:	570006d2 	bnezl	t8,707c <L80B709D0+0x4c>
    5534:	8fbf002c 	lw	ra,44(sp)
    5538:	84790860 	lh	t9,2144(v1)
    553c:	24010001 	li	at,1
    5540:	240f0025 	li	t7,37
    5544:	572106cd 	bnel	t9,at,707c <L80B709D0+0x4c>
    5548:	8fbf002c 	lw	ra,44(sp)
    554c:	a54f0000 	sh	t7,0(t2)
    5550:	0c000000 	jal	0 <func_80B699A0>
    5554:	8fa400ec 	lw	a0,236(sp)
    5558:	100006c8 	b	707c <L80B709D0+0x4c>
    555c:	8fbf002c 	lw	ra,44(sp)
    5560:	c4200000 	lwc1	$f0,0(at)
    5564:	c5080948 	lwc1	$f8,2376(t0)
    5568:	c504094c 	lwc1	$f4,2380(t0)
    556c:	26100000 	addiu	s0,s0,0
    5570:	46004280 	add.s	$f10,$f8,$f0
    5574:	24010012 	li	at,18
    5578:	e6040004 	swc1	$f4,4(s0)
    557c:	144106be 	bne	v0,at,7078 <L80B709D0+0x48>
    5580:	e60a0000 	swc1	$f10,0(s0)
    5584:	3c020000 	lui	v0,0x0
    5588:	240e0001 	li	t6,1
    558c:	3c010000 	lui	at,0x0
    5590:	24420000 	addiu	v0,v0,0
    5594:	a42e0000 	sh	t6,0(at)
    5598:	8c4f0000 	lw	t7,0(v0)
    559c:	3c180000 	lui	t8,0x0
    55a0:	27180000 	addiu	t8,t8,0
    55a4:	af0f0000 	sw	t7,0(t8)
    55a8:	8c590004 	lw	t9,4(v0)
    55ac:	3c014700 	lui	at,0x4700
    55b0:	44815000 	mtc1	at,$f10
    55b4:	af190004 	sw	t9,4(t8)
    55b8:	8c4f0008 	lw	t7,8(v0)
    55bc:	00002825 	move	a1,zero
    55c0:	af0f0008 	sw	t7,8(t8)
    55c4:	846e00b6 	lh	t6,182(v1)
    55c8:	448e3000 	mtc1	t6,$f6
    55cc:	00000000 	nop
    55d0:	46803220 	cvt.s.w	$f8,$f6
    55d4:	460a4103 	div.s	$f4,$f8,$f10
    55d8:	46002302 	mul.s	$f12,$f4,$f0
    55dc:	0c000000 	jal	0 <func_80B699A0>
    55e0:	00000000 	nop
    55e4:	44800000 	mtc1	zero,$f0
    55e8:	3c0141c8 	lui	at,0x41c8
    55ec:	44813000 	mtc1	at,$f6
    55f0:	3c050000 	lui	a1,0x0
    55f4:	24a50000 	addiu	a1,a1,0
    55f8:	27a40090 	addiu	a0,sp,144
    55fc:	e7a00090 	swc1	$f0,144(sp)
    5600:	e7a00094 	swc1	$f0,148(sp)
    5604:	0c000000 	jal	0 <func_80B699A0>
    5608:	e7a60098 	swc1	$f6,152(sp)
    560c:	44800000 	mtc1	zero,$f0
    5610:	3c060000 	lui	a2,0x0
    5614:	3c014170 	lui	at,0x4170
    5618:	44814000 	mtc1	at,$f8
    561c:	24c60000 	addiu	a2,a2,0
    5620:	3c01bf80 	lui	at,0xbf80
    5624:	e4c00008 	swc1	$f0,8(a2)
    5628:	c4ca0008 	lwc1	$f10,8(a2)
    562c:	44812000 	mtc1	at,$f4
    5630:	3c030000 	lui	v1,0x0
    5634:	24630000 	addiu	v1,v1,0
    5638:	3c010000 	lui	at,0x0
    563c:	e4680004 	swc1	$f8,4(v1)
    5640:	e4ca0000 	swc1	$f10,0(a2)
    5644:	e4c40004 	swc1	$f4,4(a2)
    5648:	e4200000 	swc1	$f0,0(at)
    564c:	3c010000 	lui	at,0x0
    5650:	24180005 	li	t8,5
    5654:	a4380000 	sh	t8,0(at)
    5658:	3c013f00 	lui	at,0x3f00
    565c:	44813000 	mtc1	at,$f6
    5660:	3c010000 	lui	at,0x0
    5664:	e4260000 	swc1	$f6,0(at)
    5668:	3c010000 	lui	at,0x0
    566c:	0c000000 	jal	0 <func_80B699A0>
    5670:	c42c0000 	lwc1	$f12,0(at)
    5674:	4459f800 	cfc1	t9,$31
    5678:	240f0001 	li	t7,1
    567c:	44cff800 	ctc1	t7,$31
    5680:	3c040000 	lui	a0,0x0
    5684:	3c014f00 	lui	at,0x4f00
    5688:	46000224 	cvt.w.s	$f8,$f0
    568c:	24840000 	addiu	a0,a0,0
    5690:	24051818 	li	a1,6168
    5694:	444ff800 	cfc1	t7,$31
    5698:	00000000 	nop
    569c:	31ef0078 	andi	t7,t7,0x78
    56a0:	51e00013 	beqzl	t7,56f0 <L80B6EE24+0x26c>
    56a4:	440f4000 	mfc1	t7,$f8
    56a8:	44814000 	mtc1	at,$f8
    56ac:	240f0001 	li	t7,1
    56b0:	46080201 	sub.s	$f8,$f0,$f8
    56b4:	44cff800 	ctc1	t7,$31
    56b8:	00000000 	nop
    56bc:	46004224 	cvt.w.s	$f8,$f8
    56c0:	444ff800 	cfc1	t7,$31
    56c4:	00000000 	nop
    56c8:	31ef0078 	andi	t7,t7,0x78
    56cc:	15e00005 	bnez	t7,56e4 <L80B6EE24+0x260>
    56d0:	00000000 	nop
    56d4:	440f4000 	mfc1	t7,$f8
    56d8:	3c018000 	lui	at,0x8000
    56dc:	10000007 	b	56fc <L80B6EE24+0x278>
    56e0:	01e17825 	or	t7,t7,at
    56e4:	10000005 	b	56fc <L80B6EE24+0x278>
    56e8:	240fffff 	li	t7,-1
    56ec:	440f4000 	mfc1	t7,$f8
    56f0:	00000000 	nop
    56f4:	05e0fffb 	bltz	t7,56e4 <L80B6EE24+0x260>
    56f8:	00000000 	nop
    56fc:	3c010000 	lui	at,0x0
    5700:	a02f0000 	sb	t7,0(at)
    5704:	3c0143fa 	lui	at,0x43fa
    5708:	44815000 	mtc1	at,$f10
    570c:	44d9f800 	ctc1	t9,$31
    5710:	3c010000 	lui	at,0x0
    5714:	0c000000 	jal	0 <func_80B699A0>
    5718:	e42a0000 	swc1	$f10,0(at)
    571c:	10000657 	b	707c <L80B709D0+0x4c>
    5720:	8fbf002c 	lw	ra,44(sp)

00005724 <L80B6F0C4>:
    5724:	3c030000 	lui	v1,0x0
    5728:	24630000 	addiu	v1,v1,0
    572c:	3c010000 	lui	at,0x0
    5730:	c4240000 	lwc1	$f4,0(at)
    5734:	c4600000 	lwc1	$f0,0(v1)
    5738:	c42e0000 	lwc1	$f14,0(at)
    573c:	3c060000 	lui	a2,0x0
    5740:	46002180 	add.s	$f6,$f4,$f0
    5744:	24c60000 	addiu	a2,a2,0
    5748:	8fae00ec 	lw	t6,236(sp)
    574c:	e7ae00e0 	swc1	$f14,224(sp)
    5750:	e4260000 	swc1	$f6,0(at)
    5754:	c4620004 	lwc1	$f2,4(v1)
    5758:	3c0f0000 	lui	t7,0x0
    575c:	46027200 	add.s	$f8,$f14,$f2
    5760:	e4280000 	swc1	$f8,0(at)
    5764:	3c010000 	lui	at,0x0
    5768:	c42a0000 	lwc1	$f10,0(at)
    576c:	c46c0008 	lwc1	$f12,8(v1)
    5770:	460c5100 	add.s	$f4,$f10,$f12
    5774:	e4240000 	swc1	$f4,0(at)
    5778:	c4c60000 	lwc1	$f6,0(a2)
    577c:	c4ca0004 	lwc1	$f10,4(a2)
    5780:	3c01ffff 	lui	at,0xffff
    5784:	46060200 	add.s	$f8,$f0,$f6
    5788:	c4c60008 	lwc1	$f6,8(a2)
    578c:	34217fff 	ori	at,at,0x7fff
    5790:	460a1100 	add.s	$f4,$f2,$f10
    5794:	e4680000 	swc1	$f8,0(v1)
    5798:	46066200 	add.s	$f8,$f12,$f6
    579c:	e4640004 	swc1	$f4,4(v1)
    57a0:	e4680008 	swc1	$f8,8(v1)
    57a4:	95d80014 	lhu	t8,20(t6)
    57a8:	0301c827 	nor	t9,t8,at
    57ac:	13200004 	beqz	t9,57c0 <L80B6F0C4+0x9c>
    57b0:	3c010000 	lui	at,0x0
    57b4:	91ef0000 	lbu	t7,0(t7)
    57b8:	11e00013 	beqz	t7,5808 <L80B6F0C4+0xe4>
    57bc:	00000000 	nop
    57c0:	c4200000 	lwc1	$f0,0(at)
    57c4:	c46a0000 	lwc1	$f10,0(v1)
    57c8:	c4660008 	lwc1	$f6,8(v1)
    57cc:	3c0e0000 	lui	t6,0x0
    57d0:	46005102 	mul.s	$f4,$f10,$f0
    57d4:	00000000 	nop
    57d8:	46003202 	mul.s	$f8,$f6,$f0
    57dc:	e4640000 	swc1	$f4,0(v1)
    57e0:	e4680008 	swc1	$f8,8(v1)
    57e4:	91ce0000 	lbu	t6,0(t6)
    57e8:	15c00007 	bnez	t6,5808 <L80B6F0C4+0xe4>
    57ec:	00000000 	nop
    57f0:	0c000000 	jal	0 <func_80B699A0>
    57f4:	2404103e 	li	a0,4158
    57f8:	3c030000 	lui	v1,0x0
    57fc:	3c080000 	lui	t0,0x0
    5800:	25080000 	addiu	t0,t0,0
    5804:	24630000 	addiu	v1,v1,0
    5808:	3c020000 	lui	v0,0x0
    580c:	24420000 	addiu	v0,v0,0
    5810:	3c010000 	lui	at,0x0
    5814:	c4320000 	lwc1	$f18,0(at)
    5818:	c44a0000 	lwc1	$f10,0(v0)
    581c:	c4240000 	lwc1	$f4,0(at)
    5820:	3c010000 	lui	at,0x0
    5824:	3c180000 	lui	t8,0x0
    5828:	c4280000 	lwc1	$f8,0(at)
    582c:	87180000 	lh	t8,0(t8)
    5830:	460a9381 	sub.s	$f14,$f18,$f10
    5834:	c4460004 	lwc1	$f6,4(v0)
    5838:	c44a0008 	lwc1	$f10,8(v0)
    583c:	e7a80034 	swc1	$f8,52(sp)
    5840:	46062081 	sub.s	$f2,$f4,$f6
    5844:	1300000b 	beqz	t8,5874 <L80B6F0C4+0x150>
    5848:	460a4301 	sub.s	$f12,$f8,$f10
    584c:	3c010000 	lui	at,0x0
    5850:	c4260000 	lwc1	$f6,0(at)
    5854:	c5040948 	lwc1	$f4,2376(t0)
    5858:	c50a094c 	lwc1	$f10,2380(t0)
    585c:	3c100000 	lui	s0,0x0
    5860:	46062200 	add.s	$f8,$f4,$f6
    5864:	26100000 	addiu	s0,s0,0
    5868:	e60a0004 	swc1	$f10,4(s0)
    586c:	10000017 	b	58cc <L80B6F0C4+0x1a8>
    5870:	e6080000 	swc1	$f8,0(s0)
    5874:	44802000 	mtc1	zero,$f4
    5878:	3c100000 	lui	s0,0x0
    587c:	26100000 	addiu	s0,s0,0
    5880:	e7a200d4 	swc1	$f2,212(sp)
    5884:	e7ac00d0 	swc1	$f12,208(sp)
    5888:	e7ae00d8 	swc1	$f14,216(sp)
    588c:	0c000000 	jal	0 <func_80B699A0>
    5890:	e6040000 	swc1	$f4,0(s0)
    5894:	3c010000 	lui	at,0x0
    5898:	c4260000 	lwc1	$f6,0(at)
    589c:	3c010000 	lui	at,0x0
    58a0:	3c030000 	lui	v1,0x0
    58a4:	46060200 	add.s	$f8,$f0,$f6
    58a8:	24630000 	addiu	v1,v1,0
    58ac:	c7a200d4 	lwc1	$f2,212(sp)
    58b0:	c7ac00d0 	lwc1	$f12,208(sp)
    58b4:	e6080004 	swc1	$f8,4(s0)
    58b8:	c4320000 	lwc1	$f18,0(at)
    58bc:	3c010000 	lui	at,0x0
    58c0:	c42a0000 	lwc1	$f10,0(at)
    58c4:	c7ae00d8 	lwc1	$f14,216(sp)
    58c8:	e7aa0034 	swc1	$f10,52(sp)
    58cc:	460e7102 	mul.s	$f4,$f14,$f14
    58d0:	3c01447a 	lui	at,0x447a
    58d4:	3c190000 	lui	t9,0x0
    58d8:	46021182 	mul.s	$f6,$f2,$f2
    58dc:	46062200 	add.s	$f8,$f4,$f6
    58e0:	460c6282 	mul.s	$f10,$f12,$f12
    58e4:	44812000 	mtc1	at,$f4
    58e8:	3c01447a 	lui	at,0x447a
    58ec:	460a4000 	add.s	$f0,$f8,$f10
    58f0:	46000404 	sqrt.s	$f16,$f0
    58f4:	4610203c 	c.lt.s	$f4,$f16
    58f8:	00000000 	nop
    58fc:	45020004 	bc1fl	5910 <L80B6F0C4+0x1ec>
    5900:	3c014348 	lui	at,0x4348
    5904:	44818000 	mtc1	at,$f16
    5908:	00000000 	nop
    590c:	3c014348 	lui	at,0x4348
    5910:	44810000 	mtc1	at,$f0
    5914:	3c010000 	lui	at,0x0
    5918:	c4280000 	lwc1	$f8,0(at)
    591c:	46008182 	mul.s	$f6,$f16,$f0
    5920:	3c010000 	lui	at,0x0
    5924:	8fae00ec 	lw	t6,236(sp)
    5928:	46083282 	mul.s	$f10,$f6,$f8
    592c:	c7a60034 	lwc1	$f6,52(sp)
    5930:	46063202 	mul.s	$f8,$f6,$f6
    5934:	460a0101 	sub.s	$f4,$f0,$f10
    5938:	46129282 	mul.s	$f10,$f18,$f18
    593c:	e4240000 	swc1	$f4,0(at)
    5940:	3c010000 	lui	at,0x0
    5944:	c4240000 	lwc1	$f4,0(at)
    5948:	46085300 	add.s	$f12,$f10,$f8
    594c:	460c203c 	c.lt.s	$f4,$f12
    5950:	00000000 	nop
    5954:	450200ba 	bc1fl	5c40 <L80B6F0C4+0x51c>
    5958:	8dd807c0 	lw	t8,1984(t6)
    595c:	8f390000 	lw	t9,0(t9)
    5960:	8fa500e8 	lw	a1,232(sp)
    5964:	3c010000 	lui	at,0x0
    5968:	872f0a44 	lh	t7,2628(t9)
    596c:	24b00024 	addiu	s0,a1,36
    5970:	55e00029 	bnezl	t7,5a18 <L80B6F0C4+0x2f4>
    5974:	8e190000 	lw	t9,0(s0)
    5978:	c42e0000 	lwc1	$f14,0(at)
    597c:	3c014320 	lui	at,0x4320
    5980:	44815000 	mtc1	at,$f10
    5984:	3c0142a0 	lui	at,0x42a0
    5988:	460e503c 	c.lt.s	$f10,$f14
    598c:	00000000 	nop
    5990:	45030021 	bc1tl	5a18 <L80B6F0C4+0x2f4>
    5994:	8e190000 	lw	t9,0(s0)
    5998:	44814000 	mtc1	at,$f8
    599c:	3c014334 	lui	at,0x4334
    59a0:	4608903c 	c.lt.s	$f18,$f8
    59a4:	00000000 	nop
    59a8:	4503001b 	bc1tl	5a18 <L80B6F0C4+0x2f4>
    59ac:	8e190000 	lw	t9,0(s0)
    59b0:	44812000 	mtc1	at,$f4
    59b4:	3c010000 	lui	at,0x0
    59b8:	4612203c 	c.lt.s	$f4,$f18
    59bc:	00000000 	nop
    59c0:	45030015 	bc1tl	5a18 <L80B6F0C4+0x2f4>
    59c4:	8e190000 	lw	t9,0(s0)
    59c8:	c42a0000 	lwc1	$f10,0(at)
    59cc:	3c010000 	lui	at,0x0
    59d0:	4606503c 	c.lt.s	$f10,$f6
    59d4:	00000000 	nop
    59d8:	4503000f 	bc1tl	5a18 <L80B6F0C4+0x2f4>
    59dc:	8e190000 	lw	t9,0(s0)
    59e0:	c4280000 	lwc1	$f8,0(at)
    59e4:	3c014234 	lui	at,0x4234
    59e8:	4608303c 	c.lt.s	$f6,$f8
    59ec:	00000000 	nop
    59f0:	45030009 	bc1tl	5a18 <L80B6F0C4+0x2f4>
    59f4:	8e190000 	lw	t9,0(s0)
    59f8:	44812000 	mtc1	at,$f4
    59fc:	3c040000 	lui	a0,0x0
    5a00:	24840000 	addiu	a0,a0,0
    5a04:	4604703c 	c.lt.s	$f14,$f4
    5a08:	00000000 	nop
    5a0c:	4500004a 	bc1f	5b38 <L80B6F0C4+0x414>
    5a10:	00000000 	nop
    5a14:	8e190000 	lw	t9,0(s0)
    5a18:	27ae0080 	addiu	t6,sp,128
    5a1c:	3c0f0000 	lui	t7,0x0
    5a20:	add90000 	sw	t9,0(t6)
    5a24:	8e180004 	lw	t8,4(s0)
    5a28:	25ef0000 	addiu	t7,t7,0
    5a2c:	27a20048 	addiu	v0,sp,72
    5a30:	add80004 	sw	t8,4(t6)
    5a34:	8e190008 	lw	t9,8(s0)
    5a38:	3c0141f0 	lui	at,0x41f0
    5a3c:	44815000 	mtc1	at,$f10
    5a40:	add90008 	sw	t9,8(t6)
    5a44:	8df80000 	lw	t8,0(t7)
    5a48:	3c064170 	lui	a2,0x4170
    5a4c:	3c0741f0 	lui	a3,0x41f0
    5a50:	ac580000 	sw	t8,0(v0)
    5a54:	8dee0004 	lw	t6,4(t7)
    5a58:	ac4e0004 	sw	t6,4(v0)
    5a5c:	8df80008 	lw	t8,8(t7)
    5a60:	8c4f0000 	lw	t7,0(v0)
    5a64:	ac580008 	sw	t8,8(v0)
    5a68:	ae0f0000 	sw	t7,0(s0)
    5a6c:	8c590004 	lw	t9,4(v0)
    5a70:	ae190004 	sw	t9,4(s0)
    5a74:	8c4f0008 	lw	t7,8(v0)
    5a78:	24190043 	li	t9,67
    5a7c:	ae0f0008 	sw	t7,8(s0)
    5a80:	8c580000 	lw	t8,0(v0)
    5a84:	acb80100 	sw	t8,256(a1)
    5a88:	8c4e0004 	lw	t6,4(v0)
    5a8c:	acae0104 	sw	t6,260(a1)
    5a90:	8c580008 	lw	t8,8(v0)
    5a94:	acb80108 	sw	t8,264(a1)
    5a98:	e7ac00c8 	swc1	$f12,200(sp)
    5a9c:	afb90014 	sw	t9,20(sp)
    5aa0:	8fa400ec 	lw	a0,236(sp)
    5aa4:	0c000000 	jal	0 <func_80B699A0>
    5aa8:	e7aa0010 	swc1	$f10,16(sp)
    5aac:	27af0080 	addiu	t7,sp,128
    5ab0:	8df80000 	lw	t8,0(t7)
    5ab4:	c7ac00c8 	lwc1	$f12,200(sp)
    5ab8:	3c030000 	lui	v1,0x0
    5abc:	ae180000 	sw	t8,0(s0)
    5ac0:	8dee0004 	lw	t6,4(t7)
    5ac4:	24630000 	addiu	v1,v1,0
    5ac8:	3c01bf00 	lui	at,0xbf00
    5acc:	ae0e0004 	sw	t6,4(s0)
    5ad0:	8df80008 	lw	t8,8(t7)
    5ad4:	ae180008 	sw	t8,8(s0)
    5ad8:	8fb900e8 	lw	t9,232(sp)
    5adc:	97220088 	lhu	v0,136(t9)
    5ae0:	304f0010 	andi	t7,v0,0x10
    5ae4:	51e00006 	beqzl	t7,5b00 <L80B6F0C4+0x3dc>
    5ae8:	30580008 	andi	t8,v0,0x8
    5aec:	44813000 	mtc1	at,$f6
    5af0:	8fae00e8 	lw	t6,232(sp)
    5af4:	e4660004 	swc1	$f6,4(v1)
    5af8:	95c20088 	lhu	v0,136(t6)
    5afc:	30580008 	andi	t8,v0,0x8
    5b00:	1300000b 	beqz	t8,5b30 <L80B6F0C4+0x40c>
    5b04:	00000000 	nop
    5b08:	44801000 	mtc1	zero,$f2
    5b0c:	c4680004 	lwc1	$f8,4(v1)
    5b10:	4608103c 	c.lt.s	$f2,$f8
    5b14:	00000000 	nop
    5b18:	45020003 	bc1fl	5b28 <L80B6F0C4+0x404>
    5b1c:	e4620008 	swc1	$f2,8(v1)
    5b20:	e4620004 	swc1	$f2,4(v1)
    5b24:	e4620008 	swc1	$f2,8(v1)
    5b28:	c4640008 	lwc1	$f4,8(v1)
    5b2c:	e4640000 	swc1	$f4,0(v1)
    5b30:	1000000e 	b	5b6c <L80B6F0C4+0x448>
    5b34:	46006004 	sqrt.s	$f0,$f12
    5b38:	0c000000 	jal	0 <func_80B699A0>
    5b3c:	e7ac00c8 	swc1	$f12,200(sp)
    5b40:	3c030000 	lui	v1,0x0
    5b44:	24630000 	addiu	v1,v1,0
    5b48:	10400007 	beqz	v0,5b68 <L80B6F0C4+0x444>
    5b4c:	c7ac00c8 	lwc1	$f12,200(sp)
    5b50:	44805000 	mtc1	zero,$f10
    5b54:	24190003 	li	t9,3
    5b58:	3c010000 	lui	at,0x0
    5b5c:	a4390000 	sh	t9,0(at)
    5b60:	3c010000 	lui	at,0x0
    5b64:	e42a0000 	swc1	$f10,0(at)
    5b68:	46006004 	sqrt.s	$f0,$f12
    5b6c:	8faf00ec 	lw	t7,236(sp)
    5b70:	3c014466 	lui	at,0x4466
    5b74:	44813000 	mtc1	at,$f6
    5b78:	8dee07c0 	lw	t6,1984(t7)
    5b7c:	3c010000 	lui	at,0x0
    5b80:	c4240000 	lwc1	$f4,0(at)
    5b84:	8dd80028 	lw	t8,40(t6)
    5b88:	3c010000 	lui	at,0x0
    5b8c:	44801000 	mtc1	zero,$f2
    5b90:	87190002 	lh	t9,2(t8)
    5b94:	46060201 	sub.s	$f8,$f0,$f6
    5b98:	44993000 	mtc1	t9,$f6
    5b9c:	46044282 	mul.s	$f10,$f8,$f4
    5ba0:	46803220 	cvt.s.w	$f8,$f6
    5ba4:	c4260000 	lwc1	$f6,0(at)
    5ba8:	3c010000 	lui	at,0x0
    5bac:	46085100 	add.s	$f4,$f10,$f8
    5bb0:	4604303e 	c.le.s	$f6,$f4
    5bb4:	e7a400e4 	swc1	$f4,228(sp)
    5bb8:	4500000e 	bc1f	5bf4 <L80B6F0C4+0x4d0>
    5bbc:	00000000 	nop
    5bc0:	e4240000 	swc1	$f4,0(at)
    5bc4:	e4620008 	swc1	$f2,8(v1)
    5bc8:	c46a0008 	lwc1	$f10,8(v1)
    5bcc:	3c010000 	lui	at,0x0
    5bd0:	240f0003 	li	t7,3
    5bd4:	e46a0004 	swc1	$f10,4(v1)
    5bd8:	c4680004 	lwc1	$f8,4(v1)
    5bdc:	44803000 	mtc1	zero,$f6
    5be0:	e4680000 	swc1	$f8,0(v1)
    5be4:	a42f0000 	sh	t7,0(at)
    5be8:	3c010000 	lui	at,0x0
    5bec:	1000000c 	b	5c20 <L80B6F0C4+0x4fc>
    5bf0:	e4260000 	swc1	$f6,0(at)
    5bf4:	3c040000 	lui	a0,0x0
    5bf8:	44051000 	mfc1	a1,$f2
    5bfc:	3c073d4c 	lui	a3,0x3d4c
    5c00:	34e7cccd 	ori	a3,a3,0xcccd
    5c04:	24840000 	addiu	a0,a0,0
    5c08:	0c000000 	jal	0 <func_80B699A0>
    5c0c:	3c063f80 	lui	a2,0x3f80
    5c10:	3c040000 	lui	a0,0x0
    5c14:	24840000 	addiu	a0,a0,0
    5c18:	0c000000 	jal	0 <func_80B699A0>
    5c1c:	240530a4 	li	a1,12452
    5c20:	3c010000 	lui	at,0x0
    5c24:	c42e0000 	lwc1	$f14,0(at)
    5c28:	c4320000 	lwc1	$f18,0(at)
    5c2c:	3c010000 	lui	at,0x0
    5c30:	c4240000 	lwc1	$f4,0(at)
    5c34:	100000cd 	b	5f6c <L80B6F0C4+0x848>
    5c38:	e7a40034 	swc1	$f4,52(sp)
    5c3c:	8dd807c0 	lw	t8,1984(t6)
    5c40:	3c010000 	lui	at,0x0
    5c44:	c42e0000 	lwc1	$f14,0(at)
    5c48:	8f190028 	lw	t9,40(t8)
    5c4c:	3c040000 	lui	a0,0x0
    5c50:	3c010000 	lui	at,0x0
    5c54:	872f0002 	lh	t7,2(t9)
    5c58:	240e0002 	li	t6,2
    5c5c:	24840000 	addiu	a0,a0,0
    5c60:	448f5000 	mtc1	t7,$f10
    5c64:	3c053f80 	lui	a1,0x3f80
    5c68:	3c063d4c 	lui	a2,0x3d4c
    5c6c:	46805220 	cvt.s.w	$f8,$f10
    5c70:	4608703e 	c.le.s	$f14,$f8
    5c74:	e7a800e4 	swc1	$f8,228(sp)
    5c78:	450000b0 	bc1f	5f3c <L80B6F0C4+0x818>
    5c7c:	00000000 	nop
    5c80:	44803000 	mtc1	zero,$f6
    5c84:	44802000 	mtc1	zero,$f4
    5c88:	a42e0000 	sh	t6,0(at)
    5c8c:	3c010000 	lui	at,0x0
    5c90:	e4260000 	swc1	$f6,0(at)
    5c94:	e4640008 	swc1	$f4,8(v1)
    5c98:	c46a0008 	lwc1	$f10,8(v1)
    5c9c:	3c180000 	lui	t8,0x0
    5ca0:	24010002 	li	at,2
    5ca4:	e46a0000 	swc1	$f10,0(v1)
    5ca8:	93180000 	lbu	t8,0(t8)
    5cac:	3c040000 	lui	a0,0x0
    5cb0:	24840000 	addiu	a0,a0,0
    5cb4:	17010005 	bne	t8,at,5ccc <L80B6F0C4+0x5a8>
    5cb8:	2419000a 	li	t9,10
    5cbc:	3c040000 	lui	a0,0x0
    5cc0:	24840000 	addiu	a0,a0,0
    5cc4:	10000002 	b	5cd0 <L80B6F0C4+0x5ac>
    5cc8:	a0800000 	sb	zero,0(a0)
    5ccc:	a0990000 	sb	t9,0(a0)
    5cd0:	c7a800e4 	lwc1	$f8,228(sp)
    5cd4:	c7a600e0 	lwc1	$f6,224(sp)
    5cd8:	4608703e 	c.le.s	$f14,$f8
    5cdc:	00000000 	nop
    5ce0:	450000a2 	bc1f	5f6c <L80B6F0C4+0x848>
    5ce4:	00000000 	nop
    5ce8:	4606403c 	c.lt.s	$f8,$f6
    5cec:	8faf00ec 	lw	t7,236(sp)
    5cf0:	4500009e 	bc1f	5f6c <L80B6F0C4+0x848>
    5cf4:	00000000 	nop
    5cf8:	8dee07c0 	lw	t6,1984(t7)
    5cfc:	3c040000 	lui	a0,0x0
    5d00:	240f000a 	li	t7,10
    5d04:	8dd80028 	lw	t8,40(t6)
    5d08:	3c010000 	lui	at,0x0
    5d0c:	24840000 	addiu	a0,a0,0
    5d10:	87190002 	lh	t9,2(t8)
    5d14:	24052817 	li	a1,10263
    5d18:	44992000 	mtc1	t9,$f4
    5d1c:	00000000 	nop
    5d20:	468022a0 	cvt.s.w	$f10,$f4
    5d24:	460a4032 	c.eq.s	$f8,$f10
    5d28:	00000000 	nop
    5d2c:	4500008f 	bc1f	5f6c <L80B6F0C4+0x848>
    5d30:	00000000 	nop
    5d34:	0c000000 	jal	0 <func_80B699A0>
    5d38:	a02f0000 	sb	t7,0(at)
    5d3c:	44803000 	mtc1	zero,$f6
    5d40:	3c060000 	lui	a2,0x0
    5d44:	24c60000 	addiu	a2,a2,0
    5d48:	3c030000 	lui	v1,0x0
    5d4c:	24630000 	addiu	v1,v1,0
    5d50:	3c010000 	lui	at,0x0
    5d54:	e4c60004 	swc1	$f6,4(a2)
    5d58:	c4280000 	lwc1	$f8,0(at)
    5d5c:	c4640004 	lwc1	$f4,4(v1)
    5d60:	8fae00ec 	lw	t6,236(sp)
    5d64:	3c010001 	lui	at,0x1
    5d68:	46082282 	mul.s	$f10,$f4,$f8
    5d6c:	01c1c021 	addu	t8,t6,at
    5d70:	afb80040 	sw	t8,64(sp)
    5d74:	00008025 	move	s0,zero
    5d78:	e46a0004 	swc1	$f10,4(v1)
    5d7c:	3c013fc0 	lui	at,0x3fc0
    5d80:	44816000 	mtc1	at,$f12
    5d84:	0c000000 	jal	0 <func_80B699A0>
    5d88:	00000000 	nop
    5d8c:	3c013f00 	lui	at,0x3f00
    5d90:	44813000 	mtc1	at,$f6
    5d94:	3c010000 	lui	at,0x0
    5d98:	c42c0000 	lwc1	$f12,0(at)
    5d9c:	46060100 	add.s	$f4,$f0,$f6
    5da0:	0c000000 	jal	0 <func_80B699A0>
    5da4:	e7a4007c 	swc1	$f4,124(sp)
    5da8:	e7a00078 	swc1	$f0,120(sp)
    5dac:	0c000000 	jal	0 <func_80B699A0>
    5db0:	46000306 	mov.s	$f12,$f0
    5db4:	c7a8007c 	lwc1	$f8,124(sp)
    5db8:	c7ac0078 	lwc1	$f12,120(sp)
    5dbc:	46080282 	mul.s	$f10,$f0,$f8
    5dc0:	0c000000 	jal	0 <func_80B699A0>
    5dc4:	e7aa009c 	swc1	$f10,156(sp)
    5dc8:	c7a6007c 	lwc1	$f6,124(sp)
    5dcc:	3c014040 	lui	at,0x4040
    5dd0:	44816000 	mtc1	at,$f12
    5dd4:	46060102 	mul.s	$f4,$f0,$f6
    5dd8:	0c000000 	jal	0 <func_80B699A0>
    5ddc:	e7a400a4 	swc1	$f4,164(sp)
    5de0:	3c014040 	lui	at,0x4040
    5de4:	44811000 	mtc1	at,$f2
    5de8:	3c0f0000 	lui	t7,0x0
    5dec:	25ef0000 	addiu	t7,t7,0
    5df0:	46020200 	add.s	$f8,$f0,$f2
    5df4:	27b900a8 	addiu	t9,sp,168
    5df8:	3c010000 	lui	at,0x0
    5dfc:	e7a800a0 	swc1	$f8,160(sp)
    5e00:	8df80000 	lw	t8,0(t7)
    5e04:	8dee0004 	lw	t6,4(t7)
    5e08:	af380000 	sw	t8,0(t9)
    5e0c:	8df80008 	lw	t8,8(t7)
    5e10:	af2e0004 	sw	t6,4(t9)
    5e14:	af380008 	sw	t8,8(t9)
    5e18:	c7a6009c 	lwc1	$f6,156(sp)
    5e1c:	c7aa00a8 	lwc1	$f10,168(sp)
    5e20:	8fb900ec 	lw	t9,236(sp)
    5e24:	46023102 	mul.s	$f4,$f6,$f2
    5e28:	c42c0000 	lwc1	$f12,0(at)
    5e2c:	46045200 	add.s	$f8,$f10,$f4
    5e30:	c7a400b0 	lwc1	$f4,176(sp)
    5e34:	e7a800a8 	swc1	$f8,168(sp)
    5e38:	8f2f07c0 	lw	t7,1984(t9)
    5e3c:	c7a800a4 	lwc1	$f8,164(sp)
    5e40:	8dee0028 	lw	t6,40(t7)
    5e44:	85d80002 	lh	t8,2(t6)
    5e48:	44983000 	mtc1	t8,$f6
    5e4c:	00000000 	nop
    5e50:	468032a0 	cvt.s.w	$f10,$f6
    5e54:	46024182 	mul.s	$f6,$f8,$f2
    5e58:	e7aa00ac 	swc1	$f10,172(sp)
    5e5c:	46062280 	add.s	$f10,$f4,$f6
    5e60:	0c000000 	jal	0 <func_80B699A0>
    5e64:	e7aa00b0 	swc1	$f10,176(sp)
    5e68:	3c010000 	lui	at,0x0
    5e6c:	c4280000 	lwc1	$f8,0(at)
    5e70:	8fb90040 	lw	t9,64(sp)
    5e74:	00002025 	move	a0,zero
    5e78:	46080100 	add.s	$f4,$f0,$f8
    5e7c:	8f251e10 	lw	a1,7696(t9)
    5e80:	27a600a8 	addiu	a2,sp,168
    5e84:	27a7009c 	addiu	a3,sp,156
    5e88:	0c000000 	jal	0 <func_80B699A0>
    5e8c:	e7a40010 	swc1	$f4,16(sp)
    5e90:	26100001 	addiu	s0,s0,1
    5e94:	00108400 	sll	s0,s0,0x10
    5e98:	00108403 	sra	s0,s0,0x10
    5e9c:	2a010032 	slti	at,s0,50
    5ea0:	5420ffb7 	bnezl	at,5d80 <L80B6F0C4+0x65c>
    5ea4:	3c013fc0 	lui	at,0x3fc0
    5ea8:	3c0e0000 	lui	t6,0x0
    5eac:	25ce0000 	addiu	t6,t6,0
    5eb0:	8dd90000 	lw	t9,0(t6)
    5eb4:	27af00a8 	addiu	t7,sp,168
    5eb8:	8dd80004 	lw	t8,4(t6)
    5ebc:	adf90000 	sw	t9,0(t7)
    5ec0:	8dd90008 	lw	t9,8(t6)
    5ec4:	adf80004 	sw	t8,4(t7)
    5ec8:	3c014448 	lui	at,0x4448
    5ecc:	adf90008 	sw	t9,8(t7)
    5ed0:	8faf00ec 	lw	t7,236(sp)
    5ed4:	44814000 	mtc1	at,$f8
    5ed8:	00002025 	move	a0,zero
    5edc:	8dee07c0 	lw	t6,1984(t7)
    5ee0:	8faf0040 	lw	t7,64(sp)
    5ee4:	27a600a8 	addiu	a2,sp,168
    5ee8:	8dd80028 	lw	t8,40(t6)
    5eec:	240e0096 	li	t6,150
    5ef0:	3c0742c8 	lui	a3,0x42c8
    5ef4:	87190002 	lh	t9,2(t8)
    5ef8:	2418005a 	li	t8,90
    5efc:	44993000 	mtc1	t9,$f6
    5f00:	00000000 	nop
    5f04:	468032a0 	cvt.s.w	$f10,$f6
    5f08:	e7aa00ac 	swc1	$f10,172(sp)
    5f0c:	8de51e10 	lw	a1,7696(t7)
    5f10:	afb80018 	sw	t8,24(sp)
    5f14:	afae0014 	sw	t6,20(sp)
    5f18:	0c000000 	jal	0 <func_80B699A0>
    5f1c:	e7a80010 	swc1	$f8,16(sp)
    5f20:	3c010000 	lui	at,0x0
    5f24:	c42e0000 	lwc1	$f14,0(at)
    5f28:	c4320000 	lwc1	$f18,0(at)
    5f2c:	3c010000 	lui	at,0x0
    5f30:	c4240000 	lwc1	$f4,0(at)
    5f34:	1000000d 	b	5f6c <L80B6F0C4+0x848>
    5f38:	e7a40034 	swc1	$f4,52(sp)
    5f3c:	0c000000 	jal	0 <func_80B699A0>
    5f40:	34c6cccd 	ori	a2,a2,0xcccd
    5f44:	3c040000 	lui	a0,0x0
    5f48:	24840000 	addiu	a0,a0,0
    5f4c:	0c000000 	jal	0 <func_80B699A0>
    5f50:	240530a4 	li	a1,12452
    5f54:	3c010000 	lui	at,0x0
    5f58:	c42e0000 	lwc1	$f14,0(at)
    5f5c:	c4320000 	lwc1	$f18,0(at)
    5f60:	3c010000 	lui	at,0x0
    5f64:	c4260000 	lwc1	$f6,0(at)
    5f68:	e7a60034 	swc1	$f6,52(sp)
    5f6c:	3c010000 	lui	at,0x0
    5f70:	c7aa0034 	lwc1	$f10,52(sp)
    5f74:	e4320000 	swc1	$f18,0(at)
    5f78:	3c010000 	lui	at,0x0
    5f7c:	e42e0000 	swc1	$f14,0(at)
    5f80:	e42a0000 	swc1	$f10,0(at)
    5f84:	3c013f80 	lui	at,0x3f80
    5f88:	44814000 	mtc1	at,$f8
    5f8c:	3c013f00 	lui	at,0x3f00
    5f90:	44812000 	mtc1	at,$f4
    5f94:	3c020000 	lui	v0,0x0
    5f98:	24420000 	addiu	v0,v0,0
    5f9c:	3c010000 	lui	at,0x0
    5fa0:	e4480000 	swc1	$f8,0(v0)
    5fa4:	10000434 	b	7078 <L80B709D0+0x48>
    5fa8:	e4240000 	swc1	$f4,0(at)

00005fac <L80B6F94C>:
    5fac:	8fb900ec 	lw	t9,236(sp)
    5fb0:	3c020000 	lui	v0,0x0
    5fb4:	24420000 	addiu	v0,v0,0
    5fb8:	8f2f07c0 	lw	t7,1984(t9)
    5fbc:	c44e0004 	lwc1	$f14,4(v0)
    5fc0:	8dee0028 	lw	t6,40(t7)
    5fc4:	85d80002 	lh	t8,2(t6)
    5fc8:	44983000 	mtc1	t8,$f6
    5fcc:	00000000 	nop
    5fd0:	468032a0 	cvt.s.w	$f10,$f6
    5fd4:	460a703e 	c.le.s	$f14,$f10
    5fd8:	00000000 	nop
    5fdc:	4500001d 	bc1f	6054 <L80B6F94C+0xa8>
    5fe0:	3c030000 	lui	v1,0x0
    5fe4:	24630000 	addiu	v1,v1,0
    5fe8:	c4680004 	lwc1	$f8,4(v1)
    5fec:	3c040000 	lui	a0,0x0
    5ff0:	24840000 	addiu	a0,a0,0
    5ff4:	46087100 	add.s	$f4,$f14,$f8
    5ff8:	3c053f80 	lui	a1,0x3f80
    5ffc:	3c063f80 	lui	a2,0x3f80
    6000:	0c000000 	jal	0 <func_80B699A0>
    6004:	e4440004 	swc1	$f4,4(v0)
    6008:	3c190000 	lui	t9,0x0
    600c:	93390000 	lbu	t9,0(t9)
    6010:	24010002 	li	at,2
    6014:	8faf00ec 	lw	t7,236(sp)
    6018:	1321000e 	beq	t9,at,6054 <L80B6F94C+0xa8>
    601c:	00000000 	nop
    6020:	8dee07c0 	lw	t6,1984(t7)
    6024:	3c040000 	lui	a0,0x0
    6028:	24840000 	addiu	a0,a0,0
    602c:	8dd80028 	lw	t8,40(t6)
    6030:	3c063f00 	lui	a2,0x3f00
    6034:	3c073f80 	lui	a3,0x3f80
    6038:	87190002 	lh	t9,2(t8)
    603c:	44993000 	mtc1	t9,$f6
    6040:	00000000 	nop
    6044:	468031a0 	cvt.s.w	$f6,$f6
    6048:	44053000 	mfc1	a1,$f6
    604c:	0c000000 	jal	0 <func_80B699A0>
    6050:	00000000 	nop
    6054:	3c040000 	lui	a0,0x0
    6058:	3c073dcc 	lui	a3,0x3dcc
    605c:	34e7cccd 	ori	a3,a3,0xcccd
    6060:	24840000 	addiu	a0,a0,0
    6064:	3c054000 	lui	a1,0x4000
    6068:	0c000000 	jal	0 <func_80B699A0>
    606c:	3c063f80 	lui	a2,0x3f80
    6070:	3c040000 	lui	a0,0x0
    6074:	24840000 	addiu	a0,a0,0
    6078:	90820000 	lbu	v0,0(a0)
    607c:	14400004 	bnez	v0,6090 <L80B6F94C+0xe4>
    6080:	240f0003 	li	t7,3
    6084:	3c010000 	lui	at,0x0
    6088:	100003fb 	b	7078 <L80B709D0+0x48>
    608c:	a42f0000 	sh	t7,0(at)
    6090:	244effff 	addiu	t6,v0,-1
    6094:	100003f8 	b	7078 <L80B709D0+0x48>
    6098:	a08e0000 	sb	t6,0(a0)

0000609c <L80B6FA3C>:
    609c:	3c180000 	lui	t8,0x0
    60a0:	93180000 	lbu	t8,0(t8)
    60a4:	3c010000 	lui	at,0x0
    60a8:	a4200000 	sh	zero,0(at)
    60ac:	13000010 	beqz	t8,60f0 <L80B6FA3C+0x54>
    60b0:	3c070000 	lui	a3,0x0
    60b4:	24e70000 	addiu	a3,a3,0
    60b8:	c4f20000 	lwc1	$f18,0(a3)
    60bc:	c4e00008 	lwc1	$f0,8(a3)
    60c0:	3c010000 	lui	at,0x0
    60c4:	46129282 	mul.s	$f10,$f18,$f18
    60c8:	c4260000 	lwc1	$f6,0(at)
    60cc:	3c010000 	lui	at,0x0
    60d0:	46000202 	mul.s	$f8,$f0,$f0
    60d4:	24190001 	li	t9,1
    60d8:	46085100 	add.s	$f4,$f10,$f8
    60dc:	4606203c 	c.lt.s	$f4,$f6
    60e0:	00000000 	nop
    60e4:	45020003 	bc1fl	60f4 <L80B6FA3C+0x58>
    60e8:	8fae00c0 	lw	t6,192(sp)
    60ec:	a0390000 	sb	t9,0(at)
    60f0:	8fae00c0 	lw	t6,192(sp)
    60f4:	240f0002 	li	t7,2
    60f8:	3c010000 	lui	at,0x0
    60fc:	a5cf0860 	sh	t7,2144(t6)
    6100:	c42a0000 	lwc1	$f10,0(at)
    6104:	3c014040 	lui	at,0x4040
    6108:	44814000 	mtc1	at,$f8
    610c:	3c070000 	lui	a3,0x0
    6110:	24e70000 	addiu	a3,a3,0
    6114:	4608503c 	c.lt.s	$f10,$f8
    6118:	3c040000 	lui	a0,0x0
    611c:	3c010000 	lui	at,0x0
    6120:	4502002e 	bc1fl	61dc <L80B6FA3C+0x140>
    6124:	44804000 	mtc1	zero,$f8
    6128:	84840000 	lh	a0,0(a0)
    612c:	00800821 	move	at,a0
    6130:	00042140 	sll	a0,a0,0x5
    6134:	00812021 	addu	a0,a0,at
    6138:	00042080 	sll	a0,a0,0x2
    613c:	00812023 	subu	a0,a0,at
    6140:	00042140 	sll	a0,a0,0x5
    6144:	00042400 	sll	a0,a0,0x10
    6148:	0c000000 	jal	0 <func_80B699A0>
    614c:	00042403 	sra	a0,a0,0x10
    6150:	3c010000 	lui	at,0x0
    6154:	c4240000 	lwc1	$f4,0(at)
    6158:	3c010000 	lui	at,0x0
    615c:	c4260000 	lwc1	$f6,0(at)
    6160:	46040302 	mul.s	$f12,$f0,$f4
    6164:	3c100000 	lui	s0,0x0
    6168:	26100000 	addiu	s0,s0,0
    616c:	3c063e99 	lui	a2,0x3e99
    6170:	3c070000 	lui	a3,0x0
    6174:	8ce70000 	lw	a3,0(a3)
    6178:	34c6999a 	ori	a2,a2,0x999a
    617c:	460c3280 	add.s	$f10,$f6,$f12
    6180:	02002025 	move	a0,s0
    6184:	44055000 	mfc1	a1,$f10
    6188:	0c000000 	jal	0 <func_80B699A0>
    618c:	00000000 	nop
    6190:	3c040000 	lui	a0,0x0
    6194:	3c073ca3 	lui	a3,0x3ca3
    6198:	34e7d70a 	ori	a3,a3,0xd70a
    619c:	24840000 	addiu	a0,a0,0
    61a0:	3c053f00 	lui	a1,0x3f00
    61a4:	0c000000 	jal	0 <func_80B699A0>
    61a8:	3c063f80 	lui	a2,0x3f80
    61ac:	3c040000 	lui	a0,0x0
    61b0:	3c063ca3 	lui	a2,0x3ca3
    61b4:	34c6d70a 	ori	a2,a2,0xd70a
    61b8:	24840000 	addiu	a0,a0,0
    61bc:	0c000000 	jal	0 <func_80B699A0>
    61c0:	3c053f80 	lui	a1,0x3f80
    61c4:	3c080000 	lui	t0,0x0
    61c8:	3c070000 	lui	a3,0x0
    61cc:	24e70000 	addiu	a3,a3,0
    61d0:	10000005 	b	61e8 <L80B6FA3C+0x14c>
    61d4:	25080000 	addiu	t0,t0,0
    61d8:	44804000 	mtc1	zero,$f8
    61dc:	3c100000 	lui	s0,0x0
    61e0:	26100000 	addiu	s0,s0,0
    61e4:	e4280000 	swc1	$f8,0(at)
    61e8:	8fa900ec 	lw	t1,236(sp)
    61ec:	24184000 	li	t8,16384
    61f0:	a7b800dc 	sh	t8,220(sp)
    61f4:	8d3907c0 	lw	t9,1984(t1)
    61f8:	c4e60008 	lwc1	$f6,8(a3)
    61fc:	c4f20000 	lwc1	$f18,0(a3)
    6200:	8f2f0028 	lw	t7,40(t9)
    6204:	3c010000 	lui	at,0x0
    6208:	85ee0002 	lh	t6,2(t7)
    620c:	e7a60034 	swc1	$f6,52(sp)
    6210:	c7aa0034 	lwc1	$f10,52(sp)
    6214:	448e2000 	mtc1	t6,$f4
    6218:	c4260000 	lwc1	$f6,0(at)
    621c:	460a5202 	mul.s	$f8,$f10,$f10
    6220:	3c014080 	lui	at,0x4080
    6224:	468020a0 	cvt.s.w	$f2,$f4
    6228:	46129102 	mul.s	$f4,$f18,$f18
    622c:	e7a200e4 	swc1	$f2,228(sp)
    6230:	c7aa00e4 	lwc1	$f10,228(sp)
    6234:	46082300 	add.s	$f12,$f4,$f8
    6238:	4606603c 	c.lt.s	$f12,$f6
    623c:	00000000 	nop
    6240:	45020103 	bc1fl	6650 <L80B6FA3C+0x5b4>
    6244:	46006004 	sqrt.s	$f0,$f12
    6248:	44812000 	mtc1	at,$f4
    624c:	c4ee0004 	lwc1	$f14,4(a3)
    6250:	3c180000 	lui	t8,0x0
    6254:	46045200 	add.s	$f8,$f10,$f4
    6258:	3c010000 	lui	at,0x0
    625c:	4608703e 	c.le.s	$f14,$f8
    6260:	00000000 	nop
    6264:	450000e1 	bc1f	65ec <L80B6FA3C+0x550>
    6268:	00000000 	nop
    626c:	87180000 	lh	t8,0(t8)
    6270:	44808000 	mtc1	zero,$f16
    6274:	25230014 	addiu	v1,t1,20
    6278:	5700002b 	bnezl	t8,6328 <L80B6FA3C+0x28c>
    627c:	3c013f80 	lui	at,0x3f80
    6280:	80620014 	lb	v0,20(v1)
    6284:	3c0141f0 	lui	at,0x41f0
    6288:	44815000 	mtc1	at,$f10
    628c:	44823000 	mtc1	v0,$f6
    6290:	3c190000 	lui	t9,0x0
    6294:	46803020 	cvt.s.w	$f0,$f6
    6298:	46000005 	abs.s	$f0,$f0
    629c:	4600503c 	c.lt.s	$f10,$f0
    62a0:	00000000 	nop
    62a4:	4502000c 	bc1fl	62d8 <L80B6FA3C+0x23c>
    62a8:	80620015 	lb	v0,21(v1)
    62ac:	87390000 	lh	t9,0(t9)
    62b0:	3c010000 	lui	at,0x0
    62b4:	c4260000 	lwc1	$f6,0(at)
    62b8:	00597823 	subu	t7,v0,t9
    62bc:	448f2000 	mtc1	t7,$f4
    62c0:	00000000 	nop
    62c4:	46802220 	cvt.s.w	$f8,$f4
    62c8:	46064002 	mul.s	$f0,$f8,$f6
    62cc:	10000015 	b	6324 <L80B6FA3C+0x288>
    62d0:	46000405 	abs.s	$f16,$f0
    62d4:	80620015 	lb	v0,21(v1)
    62d8:	3c0141f0 	lui	at,0x41f0
    62dc:	44812000 	mtc1	at,$f4
    62e0:	44825000 	mtc1	v0,$f10
    62e4:	3c0e0000 	lui	t6,0x0
    62e8:	46805020 	cvt.s.w	$f0,$f10
    62ec:	46000005 	abs.s	$f0,$f0
    62f0:	4600203c 	c.lt.s	$f4,$f0
    62f4:	00000000 	nop
    62f8:	4502000b 	bc1fl	6328 <L80B6FA3C+0x28c>
    62fc:	3c013f80 	lui	at,0x3f80
    6300:	85ce0000 	lh	t6,0(t6)
    6304:	3c010000 	lui	at,0x0
    6308:	c42a0000 	lwc1	$f10,0(at)
    630c:	004ec023 	subu	t8,v0,t6
    6310:	44984000 	mtc1	t8,$f8
    6314:	00000000 	nop
    6318:	468041a0 	cvt.s.w	$f6,$f8
    631c:	460a3002 	mul.s	$f0,$f6,$f10
    6320:	46000405 	abs.s	$f16,$f0
    6324:	3c013f80 	lui	at,0x3f80
    6328:	44812000 	mtc1	at,$f4
    632c:	25220014 	addiu	v0,t1,20
    6330:	3c013f80 	lui	at,0x3f80
    6334:	4610203c 	c.lt.s	$f4,$f16
    6338:	3c0e0000 	lui	t6,0x0
    633c:	45020004 	bc1fl	6350 <L80B6FA3C+0x2b4>
    6340:	9459000c 	lhu	t9,12(v0)
    6344:	44818000 	mtc1	at,$f16
    6348:	00000000 	nop
    634c:	9459000c 	lhu	t9,12(v0)
    6350:	2401bfff 	li	at,-16385
    6354:	03217827 	nor	t7,t9,at
    6358:	15e00003 	bnez	t7,6368 <L80B6FA3C+0x2cc>
    635c:	3c013f00 	lui	at,0x3f00
    6360:	44818000 	mtc1	at,$f16
    6364:	00000000 	nop
    6368:	91ce0000 	lbu	t6,0(t6)
    636c:	3c010000 	lui	at,0x0
    6370:	11c00008 	beqz	t6,6394 <L80B6FA3C+0x2f8>
    6374:	00000000 	nop
    6378:	c4280000 	lwc1	$f8,0(at)
    637c:	3c010000 	lui	at,0x0
    6380:	4610403c 	c.lt.s	$f8,$f16
    6384:	00000000 	nop
    6388:	45000002 	bc1f	6394 <L80B6FA3C+0x2f8>
    638c:	00000000 	nop
    6390:	c4300000 	lwc1	$f16,0(at)
    6394:	3c010000 	lui	at,0x0
    6398:	c4260000 	lwc1	$f6,0(at)
    639c:	3c010000 	lui	at,0x0
    63a0:	4610303c 	c.lt.s	$f6,$f16
    63a4:	00000000 	nop
    63a8:	4502006f 	bc1fl	6568 <L80B6FA3C+0x4cc>
    63ac:	944e0000 	lhu	t6,0(v0)
    63b0:	c42a0000 	lwc1	$f10,0(at)
    63b4:	3c014080 	lui	at,0x4080
    63b8:	44812000 	mtc1	at,$f4
    63bc:	3c010000 	lui	at,0x0
    63c0:	24180005 	li	t8,5
    63c4:	4604503c 	c.lt.s	$f10,$f4
    63c8:	00000000 	nop
    63cc:	45020066 	bc1fl	6568 <L80B6FA3C+0x4cc>
    63d0:	944e0000 	lhu	t6,0(v0)
    63d4:	a4380000 	sh	t8,0(at)
    63d8:	3c010000 	lui	at,0x0
    63dc:	c4280000 	lwc1	$f8,0(at)
    63e0:	24190002 	li	t9,2
    63e4:	3c010000 	lui	at,0x0
    63e8:	4610403c 	c.lt.s	$f8,$f16
    63ec:	240f0001 	li	t7,1
    63f0:	45000004 	bc1f	6404 <L80B6FA3C+0x368>
    63f4:	00000000 	nop
    63f8:	3c010000 	lui	at,0x0
    63fc:	10000002 	b	6408 <L80B6FA3C+0x36c>
    6400:	a0390000 	sb	t9,0(at)
    6404:	a02f0000 	sb	t7,0(at)
    6408:	8fae00c0 	lw	t6,192(sp)
    640c:	c7a80034 	lwc1	$f8,52(sp)
    6410:	c5c60024 	lwc1	$f6,36(t6)
    6414:	46123381 	sub.s	$f14,$f6,$f18
    6418:	e7ae0090 	swc1	$f14,144(sp)
    641c:	c5c4002c 	lwc1	$f4,44(t6)
    6420:	e7b00070 	swc1	$f16,112(sp)
    6424:	46082301 	sub.s	$f12,$f4,$f8
    6428:	0c000000 	jal	0 <func_80B699A0>
    642c:	e7ac0098 	swc1	$f12,152(sp)
    6430:	3c020000 	lui	v0,0x0
    6434:	24420000 	addiu	v0,v0,0
    6438:	c7b00070 	lwc1	$f16,112(sp)
    643c:	c4420000 	lwc1	$f2,0(v0)
    6440:	3c010000 	lui	at,0x0
    6444:	e7a00094 	swc1	$f0,148(sp)
    6448:	46028102 	mul.s	$f4,$f16,$f2
    644c:	3c180000 	lui	t8,0x0
    6450:	3c030000 	lui	v1,0x0
    6454:	24630000 	addiu	v1,v1,0
    6458:	3c040000 	lui	a0,0x0
    645c:	24840000 	addiu	a0,a0,0
    6460:	240528c3 	li	a1,10435
    6464:	46002200 	add.s	$f8,$f4,$f0
    6468:	46008005 	abs.s	$f0,$f16
    646c:	e4280000 	swc1	$f8,0(at)
    6470:	3c01bf80 	lui	at,0xbf80
    6474:	44813000 	mtc1	at,$f6
    6478:	3c0140c0 	lui	at,0x40c0
    647c:	44812000 	mtc1	at,$f4
    6480:	46061282 	mul.s	$f10,$f2,$f6
    6484:	44803000 	mtc1	zero,$f6
    6488:	3c010000 	lui	at,0x0
    648c:	46040202 	mul.s	$f8,$f0,$f4
    6490:	e44a0000 	swc1	$f10,0(v0)
    6494:	e4280000 	swc1	$f8,0(at)
    6498:	3c013f00 	lui	at,0x3f00
    649c:	44815000 	mtc1	at,$f10
    64a0:	e6060000 	swc1	$f6,0(s0)
    64a4:	8f180000 	lw	t8,0(t8)
    64a8:	3c010000 	lui	at,0x0
    64ac:	e42a0000 	swc1	$f10,0(at)
    64b0:	87190a06 	lh	t9,2566(t8)
    64b4:	3c010000 	lui	at,0x0
    64b8:	c4260000 	lwc1	$f6,0(at)
    64bc:	44992000 	mtc1	t9,$f4
    64c0:	3c0140f0 	lui	at,0x40f0
    64c4:	46802220 	cvt.s.w	$f8,$f4
    64c8:	44812000 	mtc1	at,$f4
    64cc:	3c010000 	lui	at,0x0
    64d0:	46064282 	mul.s	$f10,$f8,$f6
    64d4:	460a2200 	add.s	$f8,$f4,$f10
    64d8:	c4640000 	lwc1	$f4,0(v1)
    64dc:	46080182 	mul.s	$f6,$f0,$f8
    64e0:	46062280 	add.s	$f10,$f4,$f6
    64e4:	e46a0000 	swc1	$f10,0(v1)
    64e8:	c4280000 	lwc1	$f8,0(at)
    64ec:	3c013e80 	lui	at,0x3e80
    64f0:	44813000 	mtc1	at,$f6
    64f4:	46088102 	mul.s	$f4,$f16,$f8
    64f8:	3c013f40 	lui	at,0x3f40
    64fc:	44814000 	mtc1	at,$f8
    6500:	46062282 	mul.s	$f10,$f4,$f6
    6504:	46085100 	add.s	$f4,$f10,$f8
    6508:	44062000 	mfc1	a2,$f4
    650c:	0c000000 	jal	0 <func_80B699A0>
    6510:	00000000 	nop
    6514:	3c0f0000 	lui	t7,0x0
    6518:	91ef0000 	lbu	t7,0(t7)
    651c:	24010002 	li	at,2
    6520:	c7b00070 	lwc1	$f16,112(sp)
    6524:	15e1000d 	bne	t7,at,655c <L80B6FA3C+0x4c0>
    6528:	3c0140a0 	lui	at,0x40a0
    652c:	44813000 	mtc1	at,$f6
    6530:	3c010000 	lui	at,0x0
    6534:	46103282 	mul.s	$f10,$f6,$f16
    6538:	e42a0000 	swc1	$f10,0(at)
    653c:	3c010000 	lui	at,0x0
    6540:	c4280000 	lwc1	$f8,0(at)
    6544:	460a4100 	add.s	$f4,$f8,$f10
    6548:	e4240000 	swc1	$f4,0(at)
    654c:	3c010000 	lui	at,0x0
    6550:	c4260000 	lwc1	$f6,0(at)
    6554:	460a3280 	add.s	$f10,$f6,$f10
    6558:	e42a0000 	swc1	$f10,0(at)
    655c:	1000007c 	b	6750 <L80B6FA3C+0x6b4>
    6560:	8fa900ec 	lw	t1,236(sp)
    6564:	944e0000 	lhu	t6,0(v0)
    6568:	3c01ffff 	lui	at,0xffff
    656c:	34217fff 	ori	at,at,0x7fff
    6570:	01c1c027 	nor	t8,t6,at
    6574:	17000076 	bnez	t8,6750 <L80B6FA3C+0x6b4>
    6578:	3c010000 	lui	at,0x0
    657c:	c508094c 	lwc1	$f8,2380(t0)
    6580:	c4240000 	lwc1	$f4,0(at)
    6584:	3c010000 	lui	at,0x0
    6588:	44805000 	mtc1	zero,$f10
    658c:	46044180 	add.s	$f6,$f8,$f4
    6590:	3c0f0000 	lui	t7,0x0
    6594:	24190500 	li	t9,1280
    6598:	a7b900dc 	sh	t9,220(sp)
    659c:	e4260000 	swc1	$f6,0(at)
    65a0:	3c013f00 	lui	at,0x3f00
    65a4:	44814000 	mtc1	at,$f8
    65a8:	e60a0000 	swc1	$f10,0(s0)
    65ac:	91ef0000 	lbu	t7,0(t7)
    65b0:	3c010000 	lui	at,0x0
    65b4:	e4280000 	swc1	$f8,0(at)
    65b8:	24010002 	li	at,2
    65bc:	15e10064 	bne	t7,at,6750 <L80B6FA3C+0x6b4>
    65c0:	3c010000 	lui	at,0x0
    65c4:	c4240000 	lwc1	$f4,0(at)
    65c8:	3c010000 	lui	at,0x0
    65cc:	e4240000 	swc1	$f4,0(at)
    65d0:	3c010000 	lui	at,0x0
    65d4:	c4260000 	lwc1	$f6,0(at)
    65d8:	46047200 	add.s	$f8,$f14,$f4
    65dc:	46043280 	add.s	$f10,$f6,$f4
    65e0:	e42a0000 	swc1	$f10,0(at)
    65e4:	1000005a 	b	6750 <L80B6FA3C+0x6b4>
    65e8:	e4e80004 	swc1	$f8,4(a3)
    65ec:	c4200000 	lwc1	$f0,0(at)
    65f0:	3c014316 	lui	at,0x4316
    65f4:	44812000 	mtc1	at,$f4
    65f8:	3c010000 	lui	at,0x0
    65fc:	4600203c 	c.lt.s	$f4,$f0
    6600:	00000000 	nop
    6604:	45000052 	bc1f	6750 <L80B6FA3C+0x6b4>
    6608:	00000000 	nop
    660c:	c5060948 	lwc1	$f6,2376(t0)
    6610:	c42a0000 	lwc1	$f10,0(at)
    6614:	3c010000 	lui	at,0x0
    6618:	c504094c 	lwc1	$f4,2380(t0)
    661c:	460a3200 	add.s	$f8,$f6,$f10
    6620:	e6080000 	swc1	$f8,0(s0)
    6624:	c4260000 	lwc1	$f6,0(at)
    6628:	3c010000 	lui	at,0x0
    662c:	46062280 	add.s	$f10,$f4,$f6
    6630:	e42a0000 	swc1	$f10,0(at)
    6634:	3c014000 	lui	at,0x4000
    6638:	44814000 	mtc1	at,$f8
    663c:	3c010000 	lui	at,0x0
    6640:	46080100 	add.s	$f4,$f0,$f8
    6644:	10000042 	b	6750 <L80B6FA3C+0x6b4>
    6648:	e4240000 	swc1	$f4,0(at)
    664c:	46006004 	sqrt.s	$f0,$f12
    6650:	3c014466 	lui	at,0x4466
    6654:	44813000 	mtc1	at,$f6
    6658:	3c010000 	lui	at,0x0
    665c:	c4280000 	lwc1	$f8,0(at)
    6660:	3c010000 	lui	at,0x0
    6664:	46060281 	sub.s	$f10,$f0,$f6
    6668:	46085102 	mul.s	$f4,$f10,$f8
    666c:	c4ea0004 	lwc1	$f10,4(a3)
    6670:	46022180 	add.s	$f6,$f4,$f2
    6674:	4606503e 	c.le.s	$f10,$f6
    6678:	e7a600e4 	swc1	$f6,228(sp)
    667c:	4500001d 	bc1f	66f4 <L80B6FA3C+0x658>
    6680:	00000000 	nop
    6684:	e4e60004 	swc1	$f6,4(a3)
    6688:	3c010000 	lui	at,0x0
    668c:	c4240000 	lwc1	$f4,0(at)
    6690:	c508094c 	lwc1	$f8,2380(t0)
    6694:	44803000 	mtc1	zero,$f6
    6698:	3c010000 	lui	at,0x0
    669c:	46044280 	add.s	$f10,$f8,$f4
    66a0:	240e0500 	li	t6,1280
    66a4:	a7ae00dc 	sh	t6,220(sp)
    66a8:	e42a0000 	swc1	$f10,0(at)
    66ac:	e6060000 	swc1	$f6,0(s0)
    66b0:	95380020 	lhu	t8,32(t1)
    66b4:	2401bfff 	li	at,-16385
    66b8:	0301c827 	nor	t9,t8,at
    66bc:	17200024 	bnez	t9,6750 <L80B6FA3C+0x6b4>
    66c0:	3c010000 	lui	at,0x0
    66c4:	c4280000 	lwc1	$f8,0(at)
    66c8:	3c0140c0 	lui	at,0x40c0
    66cc:	44812000 	mtc1	at,$f4
    66d0:	3c010000 	lui	at,0x0
    66d4:	3c040000 	lui	a0,0x0
    66d8:	46044280 	add.s	$f10,$f8,$f4
    66dc:	24840000 	addiu	a0,a0,0
    66e0:	24050801 	li	a1,2049
    66e4:	0c000000 	jal	0 <func_80B699A0>
    66e8:	e42a0000 	swc1	$f10,0(at)
    66ec:	10000018 	b	6750 <L80B6FA3C+0x6b4>
    66f0:	8fa900ec 	lw	t1,236(sp)
    66f4:	c4200000 	lwc1	$f0,0(at)
    66f8:	3c014316 	lui	at,0x4316
    66fc:	44813000 	mtc1	at,$f6
    6700:	3c010000 	lui	at,0x0
    6704:	4600303c 	c.lt.s	$f6,$f0
    6708:	00000000 	nop
    670c:	45000010 	bc1f	6750 <L80B6FA3C+0x6b4>
    6710:	00000000 	nop
    6714:	c5080948 	lwc1	$f8,2376(t0)
    6718:	c4240000 	lwc1	$f4,0(at)
    671c:	3c010000 	lui	at,0x0
    6720:	c506094c 	lwc1	$f6,2380(t0)
    6724:	46044280 	add.s	$f10,$f8,$f4
    6728:	e60a0000 	swc1	$f10,0(s0)
    672c:	c4280000 	lwc1	$f8,0(at)
    6730:	3c010000 	lui	at,0x0
    6734:	46083100 	add.s	$f4,$f6,$f8
    6738:	e4240000 	swc1	$f4,0(at)
    673c:	3c014000 	lui	at,0x4000
    6740:	44815000 	mtc1	at,$f10
    6744:	3c010000 	lui	at,0x0
    6748:	460a0180 	add.s	$f6,$f0,$f10
    674c:	e4260000 	swc1	$f6,0(at)
    6750:	3c040000 	lui	a0,0x0
    6754:	3c063e99 	lui	a2,0x3e99
    6758:	252f0014 	addiu	t7,t1,20
    675c:	afaf0040 	sw	t7,64(sp)
    6760:	34c6999a 	ori	a2,a2,0x999a
    6764:	24840000 	addiu	a0,a0,0
    6768:	0c000000 	jal	0 <func_80B699A0>
    676c:	3c053f80 	lui	a1,0x3f80
    6770:	3c010000 	lui	at,0x0
    6774:	c4280000 	lwc1	$f8,0(at)
    6778:	3c014700 	lui	at,0x4700
    677c:	44812000 	mtc1	at,$f4
    6780:	3c010000 	lui	at,0x0
    6784:	c4260000 	lwc1	$f6,0(at)
    6788:	46044282 	mul.s	$f10,$f8,$f4
    678c:	3c040000 	lui	a0,0x0
    6790:	24840000 	addiu	a0,a0,0
    6794:	24060003 	li	a2,3
    6798:	87a700dc 	lh	a3,220(sp)
    679c:	46065203 	div.s	$f8,$f10,$f6
    67a0:	4600410d 	trunc.w.s	$f4,$f8
    67a4:	44052000 	mfc1	a1,$f4
    67a8:	00000000 	nop
    67ac:	00052c00 	sll	a1,a1,0x10
    67b0:	0c000000 	jal	0 <func_80B699A0>
    67b4:	00052c03 	sra	a1,a1,0x10
    67b8:	3c180000 	lui	t8,0x0
    67bc:	87180000 	lh	t8,0(t8)
    67c0:	3c014700 	lui	at,0x4700
    67c4:	44814000 	mtc1	at,$f8
    67c8:	44985000 	mtc1	t8,$f10
    67cc:	3c010000 	lui	at,0x0
    67d0:	44800000 	mtc1	zero,$f0
    67d4:	468051a0 	cvt.s.w	$f6,$f10
    67d8:	c42a0000 	lwc1	$f10,0(at)
    67dc:	3c010000 	lui	at,0x0
    67e0:	00002825 	move	a1,zero
    67e4:	e7a00090 	swc1	$f0,144(sp)
    67e8:	e7a00094 	swc1	$f0,148(sp)
    67ec:	46083103 	div.s	$f4,$f6,$f8
    67f0:	460a2182 	mul.s	$f6,$f4,$f10
    67f4:	e6060004 	swc1	$f6,4(s0)
    67f8:	c4280000 	lwc1	$f8,0(at)
    67fc:	c60c0004 	lwc1	$f12,4(s0)
    6800:	0c000000 	jal	0 <func_80B699A0>
    6804:	e7a80098 	swc1	$f8,152(sp)
    6808:	3c190000 	lui	t9,0x0
    680c:	93390000 	lbu	t9,0(t9)
    6810:	24010002 	li	at,2
    6814:	27a40090 	addiu	a0,sp,144
    6818:	1721000c 	bne	t9,at,684c <L80B6FA3C+0x7b0>
    681c:	00000000 	nop
    6820:	0c000000 	jal	0 <func_80B699A0>
    6824:	27a50064 	addiu	a1,sp,100
    6828:	c7a40064 	lwc1	$f4,100(sp)
    682c:	c7aa006c 	lwc1	$f10,108(sp)
    6830:	3c030000 	lui	v1,0x0
    6834:	3c014120 	lui	at,0x4120
    6838:	24630000 	addiu	v1,v1,0
    683c:	44810000 	mtc1	at,$f0
    6840:	e4640000 	swc1	$f4,0(v1)
    6844:	10000008 	b	6868 <L80B6FA3C+0x7cc>
    6848:	e46a0008 	swc1	$f10,8(v1)
    684c:	3c050000 	lui	a1,0x0
    6850:	24a50000 	addiu	a1,a1,0
    6854:	0c000000 	jal	0 <func_80B699A0>
    6858:	27a40090 	addiu	a0,sp,144
    685c:	3c030000 	lui	v1,0x0
    6860:	44800000 	mtc1	zero,$f0
    6864:	24630000 	addiu	v1,v1,0
    6868:	44803000 	mtc1	zero,$f6
    686c:	3c040000 	lui	a0,0x0
    6870:	24840000 	addiu	a0,a0,0
    6874:	3c020000 	lui	v0,0x0
    6878:	e4860000 	swc1	$f6,0(a0)
    687c:	90420000 	lbu	v0,0(v0)
    6880:	24010001 	li	at,1
    6884:	8faf0040 	lw	t7,64(sp)
    6888:	5441001a 	bnel	v0,at,68f4 <L80B6FA3C+0x858>
    688c:	8fae00ec 	lw	t6,236(sp)
    6890:	95ee0000 	lhu	t6,0(t7)
    6894:	3c01ffff 	lui	at,0xffff
    6898:	34217fff 	ori	at,at,0x7fff
    689c:	01c1c027 	nor	t8,t6,at
    68a0:	17000013 	bnez	t8,68f0 <L80B6FA3C+0x854>
    68a4:	3c01c000 	lui	at,0xc000
    68a8:	44814000 	mtc1	at,$f8
    68ac:	3c190000 	lui	t9,0x0
    68b0:	3c01bf00 	lui	at,0xbf00
    68b4:	e4680004 	swc1	$f8,4(v1)
    68b8:	87390000 	lh	t9,0(t9)
    68bc:	332f0001 	andi	t7,t9,0x1
    68c0:	51e00006 	beqzl	t7,68dc <L80B6FA3C+0x840>
    68c4:	44815000 	mtc1	at,$f10
    68c8:	3c013f00 	lui	at,0x3f00
    68cc:	44812000 	mtc1	at,$f4
    68d0:	10000004 	b	68e4 <L80B6FA3C+0x848>
    68d4:	e4840000 	swc1	$f4,0(a0)
    68d8:	44815000 	mtc1	at,$f10
    68dc:	00000000 	nop
    68e0:	e48a0000 	swc1	$f10,0(a0)
    68e4:	3c010000 	lui	at,0x0
    68e8:	1000007c 	b	6adc <L80B6FA3C+0xa40>
    68ec:	c42c0000 	lwc1	$f12,0(at)
    68f0:	8fae00ec 	lw	t6,236(sp)
    68f4:	3c010000 	lui	at,0x0
    68f8:	c42c0000 	lwc1	$f12,0(at)
    68fc:	8dd807c0 	lw	t8,1984(t6)
    6900:	24010002 	li	at,2
    6904:	8f190028 	lw	t9,40(t8)
    6908:	872f0002 	lh	t7,2(t9)
    690c:	448f3000 	mtc1	t7,$f6
    6910:	00000000 	nop
    6914:	468030a0 	cvt.s.w	$f2,$f6
    6918:	46001200 	add.s	$f8,$f2,$f0
    691c:	4608603c 	c.lt.s	$f12,$f8
    6920:	00000000 	nop
    6924:	4500006d 	bc1f	6adc <L80B6FA3C+0xa40>
    6928:	00000000 	nop
    692c:	1441005b 	bne	v0,at,6a9c <L80B6FA3C+0xa00>
    6930:	8fa500e8 	lw	a1,232(sp)
    6934:	24b00024 	addiu	s0,a1,36
    6938:	8e190000 	lw	t9,0(s0)
    693c:	27ae0058 	addiu	t6,sp,88
    6940:	3c0f0000 	lui	t7,0x0
    6944:	add90000 	sw	t9,0(t6)
    6948:	8e180004 	lw	t8,4(s0)
    694c:	25ef0000 	addiu	t7,t7,0
    6950:	27a20048 	addiu	v0,sp,72
    6954:	add80004 	sw	t8,4(t6)
    6958:	8e190008 	lw	t9,8(s0)
    695c:	3c0141f0 	lui	at,0x41f0
    6960:	44810000 	mtc1	at,$f0
    6964:	add90008 	sw	t9,8(t6)
    6968:	8df80000 	lw	t8,0(t7)
    696c:	44070000 	mfc1	a3,$f0
    6970:	3c064170 	lui	a2,0x4170
    6974:	ac580000 	sw	t8,0(v0)
    6978:	8dee0004 	lw	t6,4(t7)
    697c:	ac4e0004 	sw	t6,4(v0)
    6980:	8df80008 	lw	t8,8(t7)
    6984:	8c4f0000 	lw	t7,0(v0)
    6988:	ac580008 	sw	t8,8(v0)
    698c:	ae0f0000 	sw	t7,0(s0)
    6990:	8c590004 	lw	t9,4(v0)
    6994:	ae190004 	sw	t9,4(s0)
    6998:	8c4f0008 	lw	t7,8(v0)
    699c:	24190044 	li	t9,68
    69a0:	ae0f0008 	sw	t7,8(s0)
    69a4:	8c580000 	lw	t8,0(v0)
    69a8:	acb80100 	sw	t8,256(a1)
    69ac:	8c4e0004 	lw	t6,4(v0)
    69b0:	acae0104 	sw	t6,260(a1)
    69b4:	8c580008 	lw	t8,8(v0)
    69b8:	acb80108 	sw	t8,264(a1)
    69bc:	afb90014 	sw	t9,20(sp)
    69c0:	8fa400ec 	lw	a0,236(sp)
    69c4:	0c000000 	jal	0 <func_80B699A0>
    69c8:	e7a00010 	swc1	$f0,16(sp)
    69cc:	27af0058 	addiu	t7,sp,88
    69d0:	8df80000 	lw	t8,0(t7)
    69d4:	3c020000 	lui	v0,0x0
    69d8:	24420000 	addiu	v0,v0,0
    69dc:	ae180000 	sw	t8,0(s0)
    69e0:	8dee0004 	lw	t6,4(t7)
    69e4:	3c01bf00 	lui	at,0xbf00
    69e8:	44815000 	mtc1	at,$f10
    69ec:	ae0e0004 	sw	t6,4(s0)
    69f0:	8df80008 	lw	t8,8(t7)
    69f4:	3c01bf80 	lui	at,0xbf80
    69f8:	3c030000 	lui	v1,0x0
    69fc:	ae180008 	sw	t8,8(s0)
    6a00:	c4440004 	lwc1	$f4,4(v0)
    6a04:	24630000 	addiu	v1,v1,0
    6a08:	240f0001 	li	t7,1
    6a0c:	460a2180 	add.s	$f6,$f4,$f10
    6a10:	44812000 	mtc1	at,$f4
    6a14:	3c01bf80 	lui	at,0xbf80
    6a18:	e4460004 	swc1	$f6,4(v0)
    6a1c:	c4480004 	lwc1	$f8,4(v0)
    6a20:	4604403c 	c.lt.s	$f8,$f4
    6a24:	00000000 	nop
    6a28:	45020005 	bc1fl	6a40 <L80B6FA3C+0x9a4>
    6a2c:	8fb900e8 	lw	t9,232(sp)
    6a30:	44815000 	mtc1	at,$f10
    6a34:	00000000 	nop
    6a38:	e44a0004 	swc1	$f10,4(v0)
    6a3c:	8fb900e8 	lw	t9,232(sp)
    6a40:	3c0140a0 	lui	at,0x40a0
    6a44:	44814000 	mtc1	at,$f8
    6a48:	c7260080 	lwc1	$f6,128(t9)
    6a4c:	3c090000 	lui	t1,0x0
    6a50:	25290000 	addiu	t1,t1,0
    6a54:	46083000 	add.s	$f0,$f6,$f8
    6a58:	c5240004 	lwc1	$f4,4(t1)
    6a5c:	3c010000 	lui	at,0x0
    6a60:	4600203c 	c.lt.s	$f4,$f0
    6a64:	00000000 	nop
    6a68:	45000008 	bc1f	6a8c <L80B6FA3C+0x9f0>
    6a6c:	00000000 	nop
    6a70:	e5200004 	swc1	$f0,4(t1)
    6a74:	c52a0004 	lwc1	$f10,4(t1)
    6a78:	44803000 	mtc1	zero,$f6
    6a7c:	3c010000 	lui	at,0x0
    6a80:	e42a0000 	swc1	$f10,0(at)
    6a84:	10000002 	b	6a90 <L80B6FA3C+0x9f4>
    6a88:	e4460004 	swc1	$f6,4(v0)
    6a8c:	a02f0000 	sb	t7,0(at)
    6a90:	3c010000 	lui	at,0x0
    6a94:	10000011 	b	6adc <L80B6FA3C+0xa40>
    6a98:	c42c0000 	lwc1	$f12,0(at)
    6a9c:	46026001 	sub.s	$f0,$f12,$f2
    6aa0:	3c010000 	lui	at,0x0
    6aa4:	c4280000 	lwc1	$f8,0(at)
    6aa8:	3c013fc0 	lui	at,0x3fc0
    6aac:	46000005 	abs.s	$f0,$f0
    6ab0:	44815000 	mtc1	at,$f10
    6ab4:	46080102 	mul.s	$f4,$f0,$f8
    6ab8:	e4640004 	swc1	$f4,4(v1)
    6abc:	c4660004 	lwc1	$f6,4(v1)
    6ac0:	4606503c 	c.lt.s	$f10,$f6
    6ac4:	00000000 	nop
    6ac8:	45000004 	bc1f	6adc <L80B6FA3C+0xa40>
    6acc:	3c013fc0 	lui	at,0x3fc0
    6ad0:	44814000 	mtc1	at,$f8
    6ad4:	00000000 	nop
    6ad8:	e4680004 	swc1	$f8,4(v1)
    6adc:	3c080000 	lui	t0,0x0
    6ae0:	25080000 	addiu	t0,t0,0
    6ae4:	c5040954 	lwc1	$f4,2388(t0)
    6ae8:	c46a0000 	lwc1	$f10,0(v1)
    6aec:	c4680004 	lwc1	$f8,4(v1)
    6af0:	3c0140c0 	lui	at,0x40c0
    6af4:	460a2180 	add.s	$f6,$f4,$f10
    6af8:	c50a095c 	lwc1	$f10,2396(t0)
    6afc:	46086100 	add.s	$f4,$f12,$f8
    6b00:	e5060954 	swc1	$f6,2388(t0)
    6b04:	c4660008 	lwc1	$f6,8(v1)
    6b08:	e5040958 	swc1	$f4,2392(t0)
    6b0c:	46065200 	add.s	$f8,$f10,$f6
    6b10:	44815000 	mtc1	at,$f10
    6b14:	c7a400e4 	lwc1	$f4,228(sp)
    6b18:	c50c0958 	lwc1	$f12,2392(t0)
    6b1c:	e508095c 	swc1	$f8,2396(t0)
    6b20:	460a2180 	add.s	$f6,$f4,$f10
    6b24:	44805000 	mtc1	zero,$f10
    6b28:	460c303c 	c.lt.s	$f6,$f12
    6b2c:	00000000 	nop
    6b30:	45000005 	bc1f	6b48 <L80B6FA3C+0xaac>
    6b34:	3c0140a0 	lui	at,0x40a0
    6b38:	44814000 	mtc1	at,$f8
    6b3c:	00000000 	nop
    6b40:	46086101 	sub.s	$f4,$f12,$f8
    6b44:	e5040958 	swc1	$f4,2392(t0)
    6b48:	3c060000 	lui	a2,0x0
    6b4c:	24c60000 	addiu	a2,a2,0
    6b50:	e4ca0004 	swc1	$f10,4(a2)
    6b54:	c4c60004 	lwc1	$f6,4(a2)
    6b58:	3c030000 	lui	v1,0x0
    6b5c:	24630000 	addiu	v1,v1,0
    6b60:	e4660008 	swc1	$f6,8(v1)
    6b64:	c4680008 	lwc1	$f8,8(v1)
    6b68:	8fae0040 	lw	t6,64(sp)
    6b6c:	3c01ffff 	lui	at,0xffff
    6b70:	e4680004 	swc1	$f8,4(v1)
    6b74:	c4640004 	lwc1	$f4,4(v1)
    6b78:	34217fff 	ori	at,at,0x7fff
    6b7c:	e4640000 	swc1	$f4,0(v1)
    6b80:	95c20000 	lhu	v0,0(t6)
    6b84:	0041c027 	nor	t8,v0,at
    6b88:	17000048 	bnez	t8,6cac <L80B6FA3C+0xc10>
    6b8c:	2401ffef 	li	at,-17
    6b90:	0041c827 	nor	t9,v0,at
    6b94:	17200012 	bnez	t9,6be0 <L80B6FA3C+0xb44>
    6b98:	3c020000 	lui	v0,0x0
    6b9c:	3c020000 	lui	v0,0x0
    6ba0:	24420000 	addiu	v0,v0,0
    6ba4:	3c013fc0 	lui	at,0x3fc0
    6ba8:	44813000 	mtc1	at,$f6
    6bac:	c44a0000 	lwc1	$f10,0(v0)
    6bb0:	2404103e 	li	a0,4158
    6bb4:	46065200 	add.s	$f8,$f10,$f6
    6bb8:	0c000000 	jal	0 <func_80B699A0>
    6bbc:	e4480000 	swc1	$f8,0(v0)
    6bc0:	3c040000 	lui	a0,0x0
    6bc4:	24840000 	addiu	a0,a0,0
    6bc8:	3c05447a 	lui	a1,0x447a
    6bcc:	3c063f80 	lui	a2,0x3f80
    6bd0:	0c000000 	jal	0 <func_80B699A0>
    6bd4:	3c074000 	lui	a3,0x4000
    6bd8:	10000011 	b	6c20 <L80B6FA3C+0xb84>
    6bdc:	8faf00ec 	lw	t7,236(sp)
    6be0:	24420000 	addiu	v0,v0,0
    6be4:	3c010000 	lui	at,0x0
    6be8:	c42a0000 	lwc1	$f10,0(at)
    6bec:	c4440000 	lwc1	$f4,0(v0)
    6bf0:	2404103d 	li	a0,4157
    6bf4:	460a2180 	add.s	$f6,$f4,$f10
    6bf8:	0c000000 	jal	0 <func_80B699A0>
    6bfc:	e4460000 	swc1	$f6,0(v0)
    6c00:	3c040000 	lui	a0,0x0
    6c04:	3c073e4c 	lui	a3,0x3e4c
    6c08:	34e7cccd 	ori	a3,a3,0xcccd
    6c0c:	24840000 	addiu	a0,a0,0
    6c10:	3c05447a 	lui	a1,0x447a
    6c14:	0c000000 	jal	0 <func_80B699A0>
    6c18:	3c063f80 	lui	a2,0x3f80
    6c1c:	8faf00ec 	lw	t7,236(sp)
    6c20:	3c014080 	lui	at,0x4080
    6c24:	44815000 	mtc1	at,$f10
    6c28:	8dee07c0 	lw	t6,1984(t7)
    6c2c:	3c010000 	lui	at,0x0
    6c30:	3c073e4c 	lui	a3,0x3e4c
    6c34:	8dd80028 	lw	t8,40(t6)
    6c38:	34e7cccd 	ori	a3,a3,0xcccd
    6c3c:	3c054040 	lui	a1,0x4040
    6c40:	87190002 	lh	t9,2(t8)
    6c44:	3c063f80 	lui	a2,0x3f80
    6c48:	3c040000 	lui	a0,0x0
    6c4c:	44994000 	mtc1	t9,$f8
    6c50:	00000000 	nop
    6c54:	46804120 	cvt.s.w	$f4,$f8
    6c58:	c4280000 	lwc1	$f8,0(at)
    6c5c:	3c013f80 	lui	at,0x3f80
    6c60:	460a2180 	add.s	$f6,$f4,$f10
    6c64:	4608303c 	c.lt.s	$f6,$f8
    6c68:	00000000 	nop
    6c6c:	45020007 	bc1fl	6c8c <L80B6FA3C+0xbf0>
    6c70:	44810000 	mtc1	at,$f0
    6c74:	3c040000 	lui	a0,0x0
    6c78:	0c000000 	jal	0 <func_80B699A0>
    6c7c:	24840000 	addiu	a0,a0,0
    6c80:	10000011 	b	6cc8 <L80B6FA3C+0xc2c>
    6c84:	00000000 	nop
    6c88:	44810000 	mtc1	at,$f0
    6c8c:	3c073e4c 	lui	a3,0x3e4c
    6c90:	34e7cccd 	ori	a3,a3,0xcccd
    6c94:	44050000 	mfc1	a1,$f0
    6c98:	44060000 	mfc1	a2,$f0
    6c9c:	0c000000 	jal	0 <func_80B699A0>
    6ca0:	24840000 	addiu	a0,a0,0
    6ca4:	10000008 	b	6cc8 <L80B6FA3C+0xc2c>
    6ca8:	00000000 	nop
    6cac:	3c040000 	lui	a0,0x0
    6cb0:	3c073e4c 	lui	a3,0x3e4c
    6cb4:	34e7cccd 	ori	a3,a3,0xcccd
    6cb8:	24840000 	addiu	a0,a0,0
    6cbc:	3c054000 	lui	a1,0x4000
    6cc0:	0c000000 	jal	0 <func_80B699A0>
    6cc4:	3c063f80 	lui	a2,0x3f80
    6cc8:	3c040000 	lui	a0,0x0
    6ccc:	3c050000 	lui	a1,0x0
    6cd0:	3c070000 	lui	a3,0x0
    6cd4:	8ce70000 	lw	a3,0(a3)
    6cd8:	8ca50000 	lw	a1,0(a1)
    6cdc:	24840000 	addiu	a0,a0,0
    6ce0:	0c000000 	jal	0 <func_80B699A0>
    6ce4:	3c063f80 	lui	a2,0x3f80
    6ce8:	3c040000 	lui	a0,0x0
    6cec:	3c050000 	lui	a1,0x0
    6cf0:	3c070000 	lui	a3,0x0
    6cf4:	8ce70000 	lw	a3,0(a3)
    6cf8:	8ca50000 	lw	a1,0(a1)
    6cfc:	24840000 	addiu	a0,a0,0
    6d00:	0c000000 	jal	0 <func_80B699A0>
    6d04:	3c063f80 	lui	a2,0x3f80
    6d08:	3c040000 	lui	a0,0x0
    6d0c:	3c050000 	lui	a1,0x0
    6d10:	3c070000 	lui	a3,0x0
    6d14:	8ce70000 	lw	a3,0(a3)
    6d18:	8ca50000 	lw	a1,0(a1)
    6d1c:	24840000 	addiu	a0,a0,0
    6d20:	0c000000 	jal	0 <func_80B699A0>
    6d24:	3c063f80 	lui	a2,0x3f80
    6d28:	3c013f80 	lui	at,0x3f80
    6d2c:	44810000 	mtc1	at,$f0
    6d30:	3c010000 	lui	at,0x0
    6d34:	c4240000 	lwc1	$f4,0(at)
    6d38:	4604003c 	c.lt.s	$f0,$f4
    6d3c:	00000000 	nop
    6d40:	45000009 	bc1f	6d68 <L80B6FA3C+0xccc>
    6d44:	3c040000 	lui	a0,0x0
    6d48:	44060000 	mfc1	a2,$f0
    6d4c:	44070000 	mfc1	a3,$f0
    6d50:	24840000 	addiu	a0,a0,0
    6d54:	0c000000 	jal	0 <func_80B699A0>
    6d58:	3c05447a 	lui	a1,0x447a
    6d5c:	3c013f80 	lui	at,0x3f80
    6d60:	44810000 	mtc1	at,$f0
    6d64:	00000000 	nop
    6d68:	3c040000 	lui	a0,0x0
    6d6c:	44060000 	mfc1	a2,$f0
    6d70:	3c073dcc 	lui	a3,0x3dcc
    6d74:	34e7cccd 	ori	a3,a3,0xcccd
    6d78:	24840000 	addiu	a0,a0,0
    6d7c:	0c000000 	jal	0 <func_80B699A0>
    6d80:	3c05447a 	lui	a1,0x447a
    6d84:	3c020000 	lui	v0,0x0
    6d88:	24420000 	addiu	v0,v0,0
    6d8c:	3c014343 	lui	at,0x4343
    6d90:	44810000 	mtc1	at,$f0
    6d94:	c44a0000 	lwc1	$f10,0(v0)
    6d98:	460a003e 	c.le.s	$f0,$f10
    6d9c:	00000000 	nop
    6da0:	4502000c 	bc1fl	6dd4 <L80B6FA3C+0xd38>
    6da4:	8fa300ec 	lw	v1,236(sp)
    6da8:	e4400000 	swc1	$f0,0(v0)
    6dac:	3c010000 	lui	at,0x0
    6db0:	a4200000 	sh	zero,0(at)
    6db4:	3c014402 	lui	at,0x4402
    6db8:	44813000 	mtc1	at,$f6
    6dbc:	3c010000 	lui	at,0x0
    6dc0:	240f0003 	li	t7,3
    6dc4:	e4260000 	swc1	$f6,0(at)
    6dc8:	3c010000 	lui	at,0x0
    6dcc:	a02f0000 	sb	t7,0(at)
    6dd0:	8fa300ec 	lw	v1,236(sp)
    6dd4:	3c014080 	lui	at,0x4080
    6dd8:	44812000 	mtc1	at,$f4
    6ddc:	8c6e07c0 	lw	t6,1984(v1)
    6de0:	3c080000 	lui	t0,0x0
    6de4:	25080000 	addiu	t0,t0,0
    6de8:	8dd80028 	lw	t8,40(t6)
    6dec:	c50e0004 	lwc1	$f14,4(t0)
    6df0:	87190002 	lh	t9,2(t8)
    6df4:	44994000 	mtc1	t9,$f8
    6df8:	00000000 	nop
    6dfc:	468040a0 	cvt.s.w	$f2,$f8
    6e00:	46041280 	add.s	$f10,$f2,$f4
    6e04:	460a703e 	c.le.s	$f14,$f10
    6e08:	00000000 	nop
    6e0c:	4500009a 	bc1f	7078 <L80B709D0+0x48>
    6e10:	3c014080 	lui	at,0x4080
    6e14:	44813000 	mtc1	at,$f6
    6e18:	8faf0040 	lw	t7,64(sp)
    6e1c:	3c190000 	lui	t9,0x0
    6e20:	46061201 	sub.s	$f8,$f2,$f6
    6e24:	460e403e 	c.le.s	$f8,$f14
    6e28:	00000000 	nop
    6e2c:	45020093 	bc1fl	707c <L80B709D0+0x4c>
    6e30:	8fbf002c 	lw	ra,44(sp)
    6e34:	95ee0000 	lhu	t6,0(t7)
    6e38:	3c01ffff 	lui	at,0xffff
    6e3c:	34217fff 	ori	at,at,0x7fff
    6e40:	01c1c027 	nor	t8,t6,at
    6e44:	13000009 	beqz	t8,6e6c <L80B6FA3C+0xdd0>
    6e48:	2402003f 	li	v0,63
    6e4c:	3c013f80 	lui	at,0x3f80
    6e50:	44812000 	mtc1	at,$f4
    6e54:	3c010000 	lui	at,0x0
    6e58:	c42a0000 	lwc1	$f10,0(at)
    6e5c:	460a203c 	c.lt.s	$f4,$f10
    6e60:	00000000 	nop
    6e64:	45000002 	bc1f	6e70 <L80B6FA3C+0xdd4>
    6e68:	00000000 	nop
    6e6c:	24020001 	li	v0,1
    6e70:	87390000 	lh	t9,0(t9)
    6e74:	03227824 	and	t7,t9,v0
    6e78:	55e00080 	bnezl	t7,707c <L80B709D0+0x4c>
    6e7c:	8fbf002c 	lw	ra,44(sp)
    6e80:	8d180000 	lw	t8,0(t0)
    6e84:	27a600a8 	addiu	a2,sp,168
    6e88:	8d0e0004 	lw	t6,4(t0)
    6e8c:	acd80000 	sw	t8,0(a2)
    6e90:	8d180008 	lw	t8,8(t0)
    6e94:	acce0004 	sw	t6,4(a2)
    6e98:	3c050001 	lui	a1,0x1
    6e9c:	acd80008 	sw	t8,8(a2)
    6ea0:	8c7907c0 	lw	t9,1984(v1)
    6ea4:	00a32821 	addu	a1,a1,v1
    6ea8:	3c014396 	lui	at,0x4396
    6eac:	8f2f0028 	lw	t7,40(t9)
    6eb0:	44812000 	mtc1	at,$f4
    6eb4:	2419005a 	li	t9,90
    6eb8:	85ee0002 	lh	t6,2(t7)
    6ebc:	24180096 	li	t8,150
    6ec0:	00002025 	move	a0,zero
    6ec4:	448e3000 	mtc1	t6,$f6
    6ec8:	3c0741f0 	lui	a3,0x41f0
    6ecc:	46803220 	cvt.s.w	$f8,$f6
    6ed0:	e7a800ac 	swc1	$f8,172(sp)
    6ed4:	8ca51e10 	lw	a1,7696(a1)
    6ed8:	afb90018 	sw	t9,24(sp)
    6edc:	afb80014 	sw	t8,20(sp)
    6ee0:	0c000000 	jal	0 <func_80B699A0>
    6ee4:	e7a40010 	swc1	$f4,16(sp)
    6ee8:	10000064 	b	707c <L80B709D0+0x4c>
    6eec:	8fbf002c 	lw	ra,44(sp)

00006ef0 <L80B70890>:
    6ef0:	8fa400e8 	lw	a0,232(sp)
    6ef4:	3c030000 	lui	v1,0x0
    6ef8:	24630000 	addiu	v1,v1,0
    6efc:	90820157 	lbu	v0,343(a0)
    6f00:	3c010000 	lui	at,0x0
    6f04:	10400006 	beqz	v0,6f20 <L80B70890+0x30>
    6f08:	244fffff 	addiu	t7,v0,-1
    6f0c:	a08f0157 	sb	t7,343(a0)
    6f10:	c46a0000 	lwc1	$f10,0(v1)
    6f14:	c4260000 	lwc1	$f6,0(at)
    6f18:	46065200 	add.s	$f8,$f10,$f6
    6f1c:	e4680000 	swc1	$f8,0(v1)
    6f20:	8fae00ec 	lw	t6,236(sp)
    6f24:	3c01ffff 	lui	at,0xffff
    6f28:	34217fff 	ori	at,at,0x7fff
    6f2c:	95d80014 	lhu	t8,20(t6)
    6f30:	3c030000 	lui	v1,0x0
    6f34:	24630000 	addiu	v1,v1,0
    6f38:	0301c827 	nor	t9,t8,at
    6f3c:	17200024 	bnez	t9,6fd0 <L80B70890+0xe0>
    6f40:	3c020000 	lui	v0,0x0
    6f44:	24420000 	addiu	v0,v0,0
    6f48:	c4520000 	lwc1	$f18,0(v0)
    6f4c:	c4400008 	lwc1	$f0,8(v0)
    6f50:	3c010000 	lui	at,0x0
    6f54:	46129282 	mul.s	$f10,$f18,$f18
    6f58:	c4240000 	lwc1	$f4,0(at)
    6f5c:	3c0f0000 	lui	t7,0x0
    6f60:	46000182 	mul.s	$f6,$f0,$f0
    6f64:	3c010000 	lui	at,0x0
    6f68:	46065200 	add.s	$f8,$f10,$f6
    6f6c:	4608203c 	c.lt.s	$f4,$f8
    6f70:	00000000 	nop
    6f74:	45020011 	bc1fl	6fbc <L80B70890+0xcc>
    6f78:	c4680000 	lwc1	$f8,0(v1)
    6f7c:	8def0000 	lw	t7,0(t7)
    6f80:	3c010000 	lui	at,0x0
    6f84:	c4240000 	lwc1	$f4,0(at)
    6f88:	85ee0a56 	lh	t6,2646(t7)
    6f8c:	3c013f80 	lui	at,0x3f80
    6f90:	448e5000 	mtc1	t6,$f10
    6f94:	00000000 	nop
    6f98:	468051a0 	cvt.s.w	$f6,$f10
    6f9c:	44815000 	mtc1	at,$f10
    6fa0:	46043202 	mul.s	$f8,$f6,$f4
    6fa4:	c4640000 	lwc1	$f4,0(v1)
    6fa8:	46085180 	add.s	$f6,$f10,$f8
    6fac:	46062280 	add.s	$f10,$f4,$f6
    6fb0:	10000005 	b	6fc8 <L80B70890+0xd8>
    6fb4:	e46a0000 	swc1	$f10,0(v1)
    6fb8:	c4680000 	lwc1	$f8,0(v1)
    6fbc:	c4240000 	lwc1	$f4,0(at)
    6fc0:	46044180 	add.s	$f6,$f8,$f4
    6fc4:	e4660000 	swc1	$f6,0(v1)
    6fc8:	0c000000 	jal	0 <func_80B699A0>
    6fcc:	2404103d 	li	a0,4157
    6fd0:	3c180000 	lui	t8,0x0
    6fd4:	87180000 	lh	t8,0(t8)
    6fd8:	3c040000 	lui	a0,0x0
    6fdc:	24840000 	addiu	a0,a0,0
    6fe0:	3319001f 	andi	t9,t8,0x1f
    6fe4:	1720000c 	bnez	t9,7018 <L80B70890+0x128>
    6fe8:	24050000 	li	a1,0
    6fec:	3c0f0000 	lui	t7,0x0
    6ff0:	91ef0000 	lbu	t7,0(t7)
    6ff4:	3c0e0000 	lui	t6,0x0
    6ff8:	24180005 	li	t8,5
    6ffc:	15e00004 	bnez	t7,7010 <L80B70890+0x120>
    7000:	00000000 	nop
    7004:	91ce0000 	lbu	t6,0(t6)
    7008:	24010002 	li	at,2
    700c:	11c10002 	beq	t6,at,7018 <L80B70890+0x128>
    7010:	3c010000 	lui	at,0x0
    7014:	a0380000 	sb	t8,0(at)
    7018:	3c073e4c 	lui	a3,0x3e4c
    701c:	34e7cccd 	ori	a3,a3,0xcccd
    7020:	0c000000 	jal	0 <func_80B699A0>
    7024:	3c063f80 	lui	a2,0x3f80
    7028:	10000014 	b	707c <L80B709D0+0x4c>
    702c:	8fbf002c 	lw	ra,44(sp)

00007030 <L80B709D0>:
    7030:	3c010000 	lui	at,0x0
    7034:	c42a0000 	lwc1	$f10,0(at)
    7038:	3c010000 	lui	at,0x0
    703c:	3c020000 	lui	v0,0x0
    7040:	e42a0000 	swc1	$f10,0(at)
    7044:	24420000 	addiu	v0,v0,0
    7048:	3c030000 	lui	v1,0x0
    704c:	c4480000 	lwc1	$f8,0(v0)
    7050:	c4440004 	lwc1	$f4,4(v0)
    7054:	c4460008 	lwc1	$f6,8(v0)
    7058:	24630000 	addiu	v1,v1,0
    705c:	3c014000 	lui	at,0x4000
    7060:	44815000 	mtc1	at,$f10
    7064:	3c010000 	lui	at,0x0
    7068:	e4680954 	swc1	$f8,2388(v1)
    706c:	e4640958 	swc1	$f4,2392(v1)
    7070:	e466095c 	swc1	$f6,2396(v1)
    7074:	e42a0000 	swc1	$f10,0(at)
    7078:	8fbf002c 	lw	ra,44(sp)
    707c:	8fb00028 	lw	s0,40(sp)
    7080:	27bd00e8 	addiu	sp,sp,232
    7084:	03e00008 	jr	ra
    7088:	00000000 	nop

0000708c <func_80B70A2C>:
    708c:	27bdff48 	addiu	sp,sp,-184
    7090:	afbf007c 	sw	ra,124(sp)
    7094:	afbe0078 	sw	s8,120(sp)
    7098:	afb70074 	sw	s7,116(sp)
    709c:	afb60070 	sw	s6,112(sp)
    70a0:	afb5006c 	sw	s5,108(sp)
    70a4:	afb40068 	sw	s4,104(sp)
    70a8:	afb30064 	sw	s3,100(sp)
    70ac:	afb20060 	sw	s2,96(sp)
    70b0:	afb1005c 	sw	s1,92(sp)
    70b4:	afb00058 	sw	s0,88(sp)
    70b8:	f7be0050 	sdc1	$f30,80(sp)
    70bc:	f7bc0048 	sdc1	$f28,72(sp)
    70c0:	f7ba0040 	sdc1	$f26,64(sp)
    70c4:	f7b80038 	sdc1	$f24,56(sp)
    70c8:	f7b60030 	sdc1	$f22,48(sp)
    70cc:	f7b40028 	sdc1	$f20,40(sp)
    70d0:	afa600c0 	sw	a2,192(sp)
    70d4:	8cae07c0 	lw	t6,1984(a1)
    70d8:	3c014120 	lui	at,0x4120
    70dc:	44815000 	mtc1	at,$f10
    70e0:	8dcf0028 	lw	t7,40(t6)
    70e4:	c4840028 	lwc1	$f4,40(a0)
    70e8:	30c600ff 	andi	a2,a2,0xff
    70ec:	85f80002 	lh	t8,2(t7)
    70f0:	00a0b825 	move	s7,a1
    70f4:	0080f025 	move	s8,a0
    70f8:	44983000 	mtc1	t8,$f6
    70fc:	3c014220 	lui	at,0x4220
    7100:	46803220 	cvt.s.w	$f8,$f6
    7104:	460a4401 	sub.s	$f16,$f8,$f10
    7108:	4610203c 	c.lt.s	$f4,$f16
    710c:	00000000 	nop
    7110:	45020006 	bc1fl	712c <func_80B70A2C+0xa0>
    7114:	c7c001ac 	lwc1	$f0,428(s8)
    7118:	54c00004 	bnezl	a2,712c <func_80B70A2C+0xa0>
    711c:	c7c001ac 	lwc1	$f0,428(s8)
    7120:	10000079 	b	7308 <func_80B70A2C+0x27c>
    7124:	00001025 	move	v0,zero
    7128:	c7c001ac 	lwc1	$f0,428(s8)
    712c:	44819000 	mtc1	at,$f18
    7130:	24160028 	li	s6,40
    7134:	3c013f80 	lui	at,0x3f80
    7138:	4600903e 	c.le.s	$f18,$f0
    713c:	27d20024 	addiu	s2,s8,36
    7140:	27d300e4 	addiu	s3,s8,228
    7144:	27b50098 	addiu	s5,sp,152
    7148:	45020005 	bc1fl	7160 <func_80B70A2C+0xd4>
    714c:	4481d000 	mtc1	at,$f26
    7150:	3c010000 	lui	at,0x0
    7154:	10000003 	b	7164 <func_80B70A2C+0xd8>
    7158:	c43a0000 	lwc1	$f26,0(at)
    715c:	4481d000 	mtc1	at,$f26
    7160:	2416001e 	li	s6,30
    7164:	1ac0004a 	blez	s6,7290 <func_80B70A2C+0x204>
    7168:	00008025 	move	s0,zero
    716c:	3c010001 	lui	at,0x1
    7170:	02e1a021 	addu	s4,s7,at
    7174:	3c013f00 	lui	at,0x3f00
    7178:	4481f000 	mtc1	at,$f30
    717c:	3c013fc0 	lui	at,0x3fc0
    7180:	4481e000 	mtc1	at,$f28
    7184:	3c014040 	lui	at,0x4040
    7188:	4481b000 	mtc1	at,$f22
    718c:	27b100a4 	addiu	s1,sp,164
    7190:	0c000000 	jal	0 <func_80B699A0>
    7194:	4600e306 	mov.s	$f12,$f28
    7198:	461e0180 	add.s	$f6,$f0,$f30
    719c:	3c010000 	lui	at,0x0
    71a0:	c42c0000 	lwc1	$f12,0(at)
    71a4:	461a3502 	mul.s	$f20,$f6,$f26
    71a8:	0c000000 	jal	0 <func_80B699A0>
    71ac:	00000000 	nop
    71b0:	46000606 	mov.s	$f24,$f0
    71b4:	0c000000 	jal	0 <func_80B699A0>
    71b8:	46000306 	mov.s	$f12,$f0
    71bc:	46140202 	mul.s	$f8,$f0,$f20
    71c0:	4600c306 	mov.s	$f12,$f24
    71c4:	0c000000 	jal	0 <func_80B699A0>
    71c8:	e7a80098 	swc1	$f8,152(sp)
    71cc:	46140282 	mul.s	$f10,$f0,$f20
    71d0:	4600b306 	mov.s	$f12,$f22
    71d4:	0c000000 	jal	0 <func_80B699A0>
    71d8:	e7aa00a0 	swc1	$f10,160(sp)
    71dc:	46160100 	add.s	$f4,$f0,$f22
    71e0:	3c010000 	lui	at,0x0
    71e4:	461a2402 	mul.s	$f16,$f4,$f26
    71e8:	e7b0009c 	swc1	$f16,156(sp)
    71ec:	8e480000 	lw	t0,0(s2)
    71f0:	ae280000 	sw	t0,0(s1)
    71f4:	8e590004 	lw	t9,4(s2)
    71f8:	ae390004 	sw	t9,4(s1)
    71fc:	8e480008 	lw	t0,8(s2)
    7200:	ae280008 	sw	t0,8(s1)
    7204:	c7a60098 	lwc1	$f6,152(sp)
    7208:	c7b200a4 	lwc1	$f18,164(sp)
    720c:	c42c0000 	lwc1	$f12,0(at)
    7210:	46163202 	mul.s	$f8,$f6,$f22
    7214:	c7a600ac 	lwc1	$f6,172(sp)
    7218:	46089280 	add.s	$f10,$f18,$f8
    721c:	c7b200a0 	lwc1	$f18,160(sp)
    7220:	e7aa00a4 	swc1	$f10,164(sp)
    7224:	8ee907c0 	lw	t1,1984(s7)
    7228:	46169202 	mul.s	$f8,$f18,$f22
    722c:	8d2a0028 	lw	t2,40(t1)
    7230:	854b0002 	lh	t3,2(t2)
    7234:	46083280 	add.s	$f10,$f6,$f8
    7238:	448b2000 	mtc1	t3,$f4
    723c:	00000000 	nop
    7240:	46802420 	cvt.s.w	$f16,$f4
    7244:	e7aa00ac 	swc1	$f10,172(sp)
    7248:	0c000000 	jal	0 <func_80B699A0>
    724c:	e7b000a8 	swc1	$f16,168(sp)
    7250:	3c010000 	lui	at,0x0
    7254:	c4240000 	lwc1	$f4,0(at)
    7258:	8e851e10 	lw	a1,7696(s4)
    725c:	02602025 	move	a0,s3
    7260:	46040400 	add.s	$f16,$f0,$f4
    7264:	02203025 	move	a2,s1
    7268:	02a03825 	move	a3,s5
    726c:	461a8482 	mul.s	$f18,$f16,$f26
    7270:	0c000000 	jal	0 <func_80B699A0>
    7274:	e7b20010 	swc1	$f18,16(sp)
    7278:	26100001 	addiu	s0,s0,1
    727c:	00108400 	sll	s0,s0,0x10
    7280:	00108403 	sra	s0,s0,0x10
    7284:	0216082a 	slt	at,s0,s6
    7288:	1420ffc1 	bnez	at,7190 <func_80B70A2C+0x104>
    728c:	00000000 	nop
    7290:	8fcd0024 	lw	t5,36(s8)
    7294:	27a600a4 	addiu	a2,sp,164
    7298:	3c050001 	lui	a1,0x1
    729c:	accd0000 	sw	t5,0(a2)
    72a0:	8fcc0028 	lw	t4,40(s8)
    72a4:	00b72821 	addu	a1,a1,s7
    72a8:	3c014448 	lui	at,0x4448
    72ac:	accc0004 	sw	t4,4(a2)
    72b0:	8fcd002c 	lw	t5,44(s8)
    72b4:	44815000 	mtc1	at,$f10
    72b8:	24190096 	li	t9,150
    72bc:	accd0008 	sw	t5,8(a2)
    72c0:	8eee07c0 	lw	t6,1984(s7)
    72c4:	2408005a 	li	t0,90
    72c8:	27c400e4 	addiu	a0,s8,228
    72cc:	8dcf0028 	lw	t7,40(t6)
    72d0:	3c0742c8 	lui	a3,0x42c8
    72d4:	85f80002 	lh	t8,2(t7)
    72d8:	44983000 	mtc1	t8,$f6
    72dc:	00000000 	nop
    72e0:	46803220 	cvt.s.w	$f8,$f6
    72e4:	e7a800a8 	swc1	$f8,168(sp)
    72e8:	8ca51e10 	lw	a1,7696(a1)
    72ec:	afa80018 	sw	t0,24(sp)
    72f0:	afb90014 	sw	t9,20(sp)
    72f4:	0c000000 	jal	0 <func_80B699A0>
    72f8:	e7aa0010 	swc1	$f10,16(sp)
    72fc:	2409001e 	li	t1,30
    7300:	a3c90151 	sb	t1,337(s8)
    7304:	24020001 	li	v0,1
    7308:	8fbf007c 	lw	ra,124(sp)
    730c:	d7b40028 	ldc1	$f20,40(sp)
    7310:	d7b60030 	ldc1	$f22,48(sp)
    7314:	d7b80038 	ldc1	$f24,56(sp)
    7318:	d7ba0040 	ldc1	$f26,64(sp)
    731c:	d7bc0048 	ldc1	$f28,72(sp)
    7320:	d7be0050 	ldc1	$f30,80(sp)
    7324:	8fb00058 	lw	s0,88(sp)
    7328:	8fb1005c 	lw	s1,92(sp)
    732c:	8fb20060 	lw	s2,96(sp)
    7330:	8fb30064 	lw	s3,100(sp)
    7334:	8fb40068 	lw	s4,104(sp)
    7338:	8fb5006c 	lw	s5,108(sp)
    733c:	8fb60070 	lw	s6,112(sp)
    7340:	8fb70074 	lw	s7,116(sp)
    7344:	8fbe0078 	lw	s8,120(sp)
    7348:	03e00008 	jr	ra
    734c:	27bd00b8 	addiu	sp,sp,184

00007350 <func_80B70CF0>:
    7350:	27bdff58 	addiu	sp,sp,-168
    7354:	afbf006c 	sw	ra,108(sp)
    7358:	afb60068 	sw	s6,104(sp)
    735c:	afb50064 	sw	s5,100(sp)
    7360:	afb40060 	sw	s4,96(sp)
    7364:	afb3005c 	sw	s3,92(sp)
    7368:	afb20058 	sw	s2,88(sp)
    736c:	afb10054 	sw	s1,84(sp)
    7370:	afb00050 	sw	s0,80(sp)
    7374:	f7be0048 	sdc1	$f30,72(sp)
    7378:	f7bc0040 	sdc1	$f28,64(sp)
    737c:	f7ba0038 	sdc1	$f26,56(sp)
    7380:	f7b80030 	sdc1	$f24,48(sp)
    7384:	f7b60028 	sdc1	$f22,40(sp)
    7388:	f7b40020 	sdc1	$f20,32(sp)
    738c:	3c014234 	lui	at,0x4234
    7390:	c48001ac 	lwc1	$f0,428(a0)
    7394:	44812000 	mtc1	at,$f4
    7398:	24160014 	li	s6,20
    739c:	3c010000 	lui	at,0x0
    73a0:	4600203e 	c.le.s	$f4,$f0
    73a4:	24920024 	addiu	s2,a0,36
    73a8:	249300e4 	addiu	s3,a0,228
    73ac:	27b50088 	addiu	s5,sp,136
    73b0:	45000005 	bc1f	73c8 <func_80B70CF0+0x78>
    73b4:	00000000 	nop
    73b8:	3c013f00 	lui	at,0x3f00
    73bc:	4481e000 	mtc1	at,$f28
    73c0:	10000002 	b	73cc <func_80B70CF0+0x7c>
    73c4:	2416001e 	li	s6,30
    73c8:	c43c0000 	lwc1	$f28,0(at)
    73cc:	1ac00049 	blez	s6,74f4 <func_80B70CF0+0x1a4>
    73d0:	00008025 	move	s0,zero
    73d4:	3c010001 	lui	at,0x1
    73d8:	00a1a021 	addu	s4,a1,at
    73dc:	3c013fc0 	lui	at,0x3fc0
    73e0:	4481f000 	mtc1	at,$f30
    73e4:	3c014000 	lui	at,0x4000
    73e8:	4481d000 	mtc1	at,$f26
    73ec:	3c014040 	lui	at,0x4040
    73f0:	4481c000 	mtc1	at,$f24
    73f4:	27b10094 	addiu	s1,sp,148
    73f8:	0c000000 	jal	0 <func_80B699A0>
    73fc:	4600f306 	mov.s	$f12,$f30
    7400:	3c013f00 	lui	at,0x3f00
    7404:	44813000 	mtc1	at,$f6
    7408:	3c010000 	lui	at,0x0
    740c:	c42c0000 	lwc1	$f12,0(at)
    7410:	46060200 	add.s	$f8,$f0,$f6
    7414:	461c4502 	mul.s	$f20,$f8,$f28
    7418:	0c000000 	jal	0 <func_80B699A0>
    741c:	00000000 	nop
    7420:	46000586 	mov.s	$f22,$f0
    7424:	0c000000 	jal	0 <func_80B699A0>
    7428:	46000306 	mov.s	$f12,$f0
    742c:	46140282 	mul.s	$f10,$f0,$f20
    7430:	4600b306 	mov.s	$f12,$f22
    7434:	0c000000 	jal	0 <func_80B699A0>
    7438:	e7aa0088 	swc1	$f10,136(sp)
    743c:	46140402 	mul.s	$f16,$f0,$f20
    7440:	4600d306 	mov.s	$f12,$f26
    7444:	0c000000 	jal	0 <func_80B699A0>
    7448:	e7b00090 	swc1	$f16,144(sp)
    744c:	461a0480 	add.s	$f18,$f0,$f26
    7450:	3c010000 	lui	at,0x0
    7454:	e7b2008c 	swc1	$f18,140(sp)
    7458:	8e4f0000 	lw	t7,0(s2)
    745c:	ae2f0000 	sw	t7,0(s1)
    7460:	8e4e0004 	lw	t6,4(s2)
    7464:	ae2e0004 	sw	t6,4(s1)
    7468:	8e4f0008 	lw	t7,8(s2)
    746c:	ae2f0008 	sw	t7,8(s1)
    7470:	c7a60088 	lwc1	$f6,136(sp)
    7474:	c7a40094 	lwc1	$f4,148(sp)
    7478:	c7b2008c 	lwc1	$f18,140(sp)
    747c:	46183202 	mul.s	$f8,$f6,$f24
    7480:	c7b00098 	lwc1	$f16,152(sp)
    7484:	c42c0000 	lwc1	$f12,0(at)
    7488:	46189182 	mul.s	$f6,$f18,$f24
    748c:	46082280 	add.s	$f10,$f4,$f8
    7490:	c7a8009c 	lwc1	$f8,156(sp)
    7494:	46068100 	add.s	$f4,$f16,$f6
    7498:	e7aa0094 	swc1	$f10,148(sp)
    749c:	c7aa0090 	lwc1	$f10,144(sp)
    74a0:	e7a40098 	swc1	$f4,152(sp)
    74a4:	46185482 	mul.s	$f18,$f10,$f24
    74a8:	46124400 	add.s	$f16,$f8,$f18
    74ac:	0c000000 	jal	0 <func_80B699A0>
    74b0:	e7b0009c 	swc1	$f16,156(sp)
    74b4:	3c010000 	lui	at,0x0
    74b8:	c4260000 	lwc1	$f6,0(at)
    74bc:	8e851e10 	lw	a1,7696(s4)
    74c0:	02602025 	move	a0,s3
    74c4:	46060100 	add.s	$f4,$f0,$f6
    74c8:	02203025 	move	a2,s1
    74cc:	02a03825 	move	a3,s5
    74d0:	461c2282 	mul.s	$f10,$f4,$f28
    74d4:	0c000000 	jal	0 <func_80B699A0>
    74d8:	e7aa0010 	swc1	$f10,16(sp)
    74dc:	26100001 	addiu	s0,s0,1
    74e0:	00108400 	sll	s0,s0,0x10
    74e4:	00108403 	sra	s0,s0,0x10
    74e8:	0216082a 	slt	at,s0,s6
    74ec:	1420ffc2 	bnez	at,73f8 <func_80B70CF0+0xa8>
    74f0:	00000000 	nop
    74f4:	8fbf006c 	lw	ra,108(sp)
    74f8:	d7b40020 	ldc1	$f20,32(sp)
    74fc:	d7b60028 	ldc1	$f22,40(sp)
    7500:	d7b80030 	ldc1	$f24,48(sp)
    7504:	d7ba0038 	ldc1	$f26,56(sp)
    7508:	d7bc0040 	ldc1	$f28,64(sp)
    750c:	d7be0048 	ldc1	$f30,72(sp)
    7510:	8fb00050 	lw	s0,80(sp)
    7514:	8fb10054 	lw	s1,84(sp)
    7518:	8fb20058 	lw	s2,88(sp)
    751c:	8fb3005c 	lw	s3,92(sp)
    7520:	8fb40060 	lw	s4,96(sp)
    7524:	8fb50064 	lw	s5,100(sp)
    7528:	8fb60068 	lw	s6,104(sp)
    752c:	03e00008 	jr	ra
    7530:	27bd00a8 	addiu	sp,sp,168

00007534 <func_80B70ED4>:
    7534:	27bdffc0 	addiu	sp,sp,-64
    7538:	3c030000 	lui	v1,0x0
    753c:	24630000 	addiu	v1,v1,0
    7540:	afbf0014 	sw	ra,20(sp)
    7544:	afa50044 	sw	a1,68(sp)
    7548:	c4860024 	lwc1	$f6,36(a0)
    754c:	c4640000 	lwc1	$f4,0(v1)
    7550:	c46a0004 	lwc1	$f10,4(v1)
    7554:	3c020000 	lui	v0,0x0
    7558:	46062201 	sub.s	$f8,$f4,$f6
    755c:	c4640008 	lwc1	$f4,8(v1)
    7560:	84420000 	lh	v0,0(v0)
    7564:	24010003 	li	at,3
    7568:	e7a80034 	swc1	$f8,52(sp)
    756c:	c4900028 	lwc1	$f16,40(a0)
    7570:	00803025 	move	a2,a0
    7574:	46105481 	sub.s	$f18,$f10,$f16
    7578:	c7aa0034 	lwc1	$f10,52(sp)
    757c:	e7b20038 	swc1	$f18,56(sp)
    7580:	c486002c 	lwc1	$f6,44(a0)
    7584:	460a5402 	mul.s	$f16,$f10,$f10
    7588:	c7b20038 	lwc1	$f18,56(sp)
    758c:	46062201 	sub.s	$f8,$f4,$f6
    7590:	46129102 	mul.s	$f4,$f18,$f18
    7594:	e7a8003c 	swc1	$f8,60(sp)
    7598:	c7a8003c 	lwc1	$f8,60(sp)
    759c:	46084282 	mul.s	$f10,$f8,$f8
    75a0:	46048180 	add.s	$f6,$f16,$f4
    75a4:	460a3000 	add.s	$f0,$f6,$f10
    75a8:	1441008d 	bne	v0,at,77e0 <func_80B70ED4+0x2ac>
    75ac:	46000086 	mov.s	$f2,$f0
    75b0:	848e01a2 	lh	t6,418(a0)
    75b4:	3c0f0000 	lui	t7,0x0
    75b8:	55c0008a 	bnezl	t6,77e4 <func_80B70ED4+0x2b0>
    75bc:	24010004 	li	at,4
    75c0:	91ef0000 	lbu	t7,0(t7)
    75c4:	55e00087 	bnezl	t7,77e4 <func_80B70ED4+0x2b0>
    75c8:	24010004 	li	at,4
    75cc:	849800b6 	lh	t8,182(a0)
    75d0:	3c014700 	lui	at,0x4700
    75d4:	44812000 	mtc1	at,$f4
    75d8:	0018c823 	negu	t9,t8
    75dc:	44999000 	mtc1	t9,$f18
    75e0:	3c010000 	lui	at,0x0
    75e4:	c4260000 	lwc1	$f6,0(at)
    75e8:	46809420 	cvt.s.w	$f16,$f18
    75ec:	e7a20024 	swc1	$f2,36(sp)
    75f0:	afa40040 	sw	a0,64(sp)
    75f4:	00002825 	move	a1,zero
    75f8:	46048203 	div.s	$f8,$f16,$f4
    75fc:	46064302 	mul.s	$f12,$f8,$f6
    7600:	0c000000 	jal	0 <func_80B699A0>
    7604:	00000000 	nop
    7608:	27a40034 	addiu	a0,sp,52
    760c:	0c000000 	jal	0 <func_80B699A0>
    7610:	27a50028 	addiu	a1,sp,40
    7614:	44805000 	mtc1	zero,$f10
    7618:	c7b20030 	lwc1	$f18,48(sp)
    761c:	3c030000 	lui	v1,0x0
    7620:	24630000 	addiu	v1,v1,0
    7624:	4612503c 	c.lt.s	$f10,$f18
    7628:	8fa60040 	lw	a2,64(sp)
    762c:	c7a20024 	lwc1	$f2,36(sp)
    7630:	3c014220 	lui	at,0x4220
    7634:	45030009 	bc1tl	765c <func_80B70ED4+0x128>
    7638:	84c80158 	lh	t0,344(a2)
    763c:	c4d001ac 	lwc1	$f16,428(a2)
    7640:	44812000 	mtc1	at,$f4
    7644:	00000000 	nop
    7648:	4604803c 	c.lt.s	$f16,$f4
    764c:	00000000 	nop
    7650:	4500007b 	bc1f	7840 <func_80B70ED4+0x30c>
    7654:	00000000 	nop
    7658:	84c80158 	lh	t0,344(a2)
    765c:	24010007 	li	at,7
    7660:	15010015 	bne	t0,at,76b8 <func_80B70ED4+0x184>
    7664:	3c010000 	lui	at,0x0
    7668:	c4280000 	lwc1	$f8,0(at)
    766c:	24090004 	li	t1,4
    7670:	4608103c 	c.lt.s	$f2,$f8
    7674:	00000000 	nop
    7678:	45020010 	bc1fl	76bc <func_80B70ED4+0x188>
    767c:	8fac0044 	lw	t4,68(sp)
    7680:	a4c90158 	sh	t1,344(a2)
    7684:	8c6b0000 	lw	t3,0(v1)
    7688:	3c0146e0 	lui	at,0x46e0
    768c:	44813000 	mtc1	at,$f6
    7690:	accb01b4 	sw	t3,436(a2)
    7694:	8c6a0004 	lw	t2,4(v1)
    7698:	3c0140a0 	lui	at,0x40a0
    769c:	44815000 	mtc1	at,$f10
    76a0:	acca01b8 	sw	t2,440(a2)
    76a4:	8c6b0008 	lw	t3,8(v1)
    76a8:	e4c601b0 	swc1	$f6,432(a2)
    76ac:	e4ca0188 	swc1	$f10,392(a2)
    76b0:	10000063 	b	7840 <func_80B70ED4+0x30c>
    76b4:	accb01bc 	sw	t3,444(a2)
    76b8:	8fac0044 	lw	t4,68(sp)
    76bc:	3c01ffff 	lui	at,0xffff
    76c0:	34217fff 	ori	at,at,0x7fff
    76c4:	958d0000 	lhu	t5,0(t4)
    76c8:	01a17027 	nor	t6,t5,at
    76cc:	11c00007 	beqz	t6,76ec <func_80B70ED4+0x1b8>
    76d0:	3c013f80 	lui	at,0x3f80
    76d4:	44819000 	mtc1	at,$f18
    76d8:	3c010000 	lui	at,0x0
    76dc:	c4300000 	lwc1	$f16,0(at)
    76e0:	4610903c 	c.lt.s	$f18,$f16
    76e4:	00000000 	nop
    76e8:	4500001d 	bc1f	7760 <func_80B70ED4+0x22c>
    76ec:	3c014661 	lui	at,0x4661
    76f0:	44812000 	mtc1	at,$f4
    76f4:	240f0002 	li	t7,2
    76f8:	3c0142c8 	lui	at,0x42c8
    76fc:	4604103c 	c.lt.s	$f2,$f4
    7700:	00000000 	nop
    7704:	45020017 	bc1fl	7764 <func_80B70ED4+0x230>
    7708:	84cd017c 	lh	t5,380(a2)
    770c:	a4cf0158 	sh	t7,344(a2)
    7710:	a4c0015e 	sh	zero,350(a2)
    7714:	a4c0017a 	sh	zero,378(a2)
    7718:	44816000 	mtc1	at,$f12
    771c:	e7a20024 	swc1	$f2,36(sp)
    7720:	0c000000 	jal	0 <func_80B699A0>
    7724:	afa60040 	sw	a2,64(sp)
    7728:	4600020d 	trunc.w.s	$f8,$f0
    772c:	8fa60040 	lw	a2,64(sp)
    7730:	c7a20024 	lwc1	$f2,36(sp)
    7734:	3c010000 	lui	at,0x0
    7738:	44094000 	mfc1	t1,$f8
    773c:	84cb001c 	lh	t3,28(a2)
    7740:	44805000 	mtc1	zero,$f10
    7744:	252a0064 	addiu	t2,t1,100
    7748:	000b6100 	sll	t4,t3,0x4
    774c:	002c0821 	addu	at,at,t4
    7750:	a4ca017e 	sh	t2,382(a2)
    7754:	c4260000 	lwc1	$f6,0(at)
    7758:	e4ca01b0 	swc1	$f10,432(a2)
    775c:	e4c601a8 	swc1	$f6,424(a2)
    7760:	84cd017c 	lh	t5,380(a2)
    7764:	15a00036 	bnez	t5,7840 <func_80B70ED4+0x30c>
    7768:	3c010000 	lui	at,0x0
    776c:	c4320000 	lwc1	$f18,0(at)
    7770:	240e0002 	li	t6,2
    7774:	3c0142c8 	lui	at,0x42c8
    7778:	4612103c 	c.lt.s	$f2,$f18
    777c:	00000000 	nop
    7780:	4500002f 	bc1f	7840 <func_80B70ED4+0x30c>
    7784:	00000000 	nop
    7788:	a4ce0158 	sh	t6,344(a2)
    778c:	a4c0015e 	sh	zero,350(a2)
    7790:	a4c0017a 	sh	zero,378(a2)
    7794:	44816000 	mtc1	at,$f12
    7798:	e7a20024 	swc1	$f2,36(sp)
    779c:	0c000000 	jal	0 <func_80B699A0>
    77a0:	afa60040 	sw	a2,64(sp)
    77a4:	4600040d 	trunc.w.s	$f16,$f0
    77a8:	8fa60040 	lw	a2,64(sp)
    77ac:	c7a20024 	lwc1	$f2,36(sp)
    77b0:	3c010000 	lui	at,0x0
    77b4:	44088000 	mfc1	t0,$f16
    77b8:	84ca001c 	lh	t2,28(a2)
    77bc:	44804000 	mtc1	zero,$f8
    77c0:	25090064 	addiu	t1,t0,100
    77c4:	000a5900 	sll	t3,t2,0x4
    77c8:	002b0821 	addu	at,at,t3
    77cc:	a4c9017e 	sh	t1,382(a2)
    77d0:	c4240000 	lwc1	$f4,0(at)
    77d4:	e4c801b0 	swc1	$f8,432(a2)
    77d8:	10000019 	b	7840 <func_80B70ED4+0x30c>
    77dc:	e4c401a8 	swc1	$f4,424(a2)
    77e0:	24010004 	li	at,4
    77e4:	14410016 	bne	v0,at,7840 <func_80B70ED4+0x30c>
    77e8:	3c0c0000 	lui	t4,0x0
    77ec:	918c0000 	lbu	t4,0(t4)
    77f0:	3c010000 	lui	at,0x0
    77f4:	11800012 	beqz	t4,7840 <func_80B70ED4+0x30c>
    77f8:	00000000 	nop
    77fc:	c4260000 	lwc1	$f6,0(at)
    7800:	4606003c 	c.lt.s	$f0,$f6
    7804:	00000000 	nop
    7808:	4500000d 	bc1f	7840 <func_80B70ED4+0x30c>
    780c:	00000000 	nop
    7810:	84cd0158 	lh	t5,344(a2)
    7814:	240e0001 	li	t6,1
    7818:	240f03e8 	li	t7,1000
    781c:	29a1000a 	slti	at,t5,10
    7820:	14200007 	bnez	at,7840 <func_80B70ED4+0x30c>
    7824:	24180064 	li	t8,100
    7828:	24190032 	li	t9,50
    782c:	a4c0015a 	sh	zero,346(a2)
    7830:	a4ce0158 	sh	t6,344(a2)
    7834:	a4cf01a4 	sh	t7,420(a2)
    7838:	a4d801a2 	sh	t8,418(a2)
    783c:	a4d9017c 	sh	t9,380(a2)
    7840:	3c080000 	lui	t0,0x0
    7844:	91080000 	lbu	t0,0(t0)
    7848:	24010002 	li	at,2
    784c:	1101001e 	beq	t0,at,78c8 <func_80B70ED4+0x394>
    7850:	3c090000 	lui	t1,0x0
    7854:	81290000 	lb	t1,0(t1)
    7858:	3c014270 	lui	at,0x4270
    785c:	5120001b 	beqzl	t1,78cc <func_80B70ED4+0x398>
    7860:	8fbf0014 	lw	ra,20(sp)
    7864:	44815000 	mtc1	at,$f10
    7868:	c4d201ac 	lwc1	$f18,428(a2)
    786c:	3c014461 	lui	at,0x4461
    7870:	4612503c 	c.lt.s	$f10,$f18
    7874:	00000000 	nop
    7878:	45020014 	bc1fl	78cc <func_80B70ED4+0x398>
    787c:	8fbf0014 	lw	ra,20(sp)
    7880:	44818000 	mtc1	at,$f16
    7884:	00000000 	nop
    7888:	4610103c 	c.lt.s	$f2,$f16
    788c:	00000000 	nop
    7890:	4502000e 	bc1fl	78cc <func_80B70ED4+0x398>
    7894:	8fbf0014 	lw	ra,20(sp)
    7898:	84ca0158 	lh	t2,344(a2)
    789c:	240b0001 	li	t3,1
    78a0:	240c03e8 	li	t4,1000
    78a4:	2941000a 	slti	at,t2,10
    78a8:	14200007 	bnez	at,78c8 <func_80B70ED4+0x394>
    78ac:	240d0064 	li	t5,100
    78b0:	240e0032 	li	t6,50
    78b4:	a4c0015a 	sh	zero,346(a2)
    78b8:	a4cb0158 	sh	t3,344(a2)
    78bc:	a4cc01a4 	sh	t4,420(a2)
    78c0:	a4cd01a2 	sh	t5,418(a2)
    78c4:	a4ce017c 	sh	t6,380(a2)
    78c8:	8fbf0014 	lw	ra,20(sp)
    78cc:	27bd0040 	addiu	sp,sp,64
    78d0:	03e00008 	jr	ra
    78d4:	00000000 	nop

000078d8 <func_80B71278>:
    78d8:	27bdffe8 	addiu	sp,sp,-24
    78dc:	afbf0014 	sw	ra,20(sp)
    78e0:	afa5001c 	sw	a1,28(sp)
    78e4:	908e0150 	lbu	t6,336(a0)
    78e8:	30a500ff 	andi	a1,a1,0xff
    78ec:	24030001 	li	v1,1
    78f0:	55c00028 	bnezl	t6,7994 <func_80B71278+0xbc>
    78f4:	c48001ac 	lwc1	$f0,428(a0)
    78f8:	444ff800 	cfc1	t7,$31
    78fc:	44c3f800 	ctc1	v1,$31
    7900:	c48401ac 	lwc1	$f4,428(a0)
    7904:	3c014f00 	lui	at,0x4f00
    7908:	460021a4 	cvt.w.s	$f6,$f4
    790c:	4443f800 	cfc1	v1,$31
    7910:	00000000 	nop
    7914:	30630078 	andi	v1,v1,0x78
    7918:	50600017 	beqzl	v1,7978 <func_80B71278+0xa0>
    791c:	44033000 	mfc1	v1,$f6
    7920:	44813000 	mtc1	at,$f6
    7924:	24030001 	li	v1,1
    7928:	46062181 	sub.s	$f6,$f4,$f6
    792c:	44c3f800 	ctc1	v1,$31
    7930:	00000000 	nop
    7934:	460031a4 	cvt.w.s	$f6,$f6
    7938:	4443f800 	cfc1	v1,$31
    793c:	00000000 	nop
    7940:	30630078 	andi	v1,v1,0x78
    7944:	54600008 	bnezl	v1,7968 <func_80B71278+0x90>
    7948:	2403ffff 	li	v1,-1
    794c:	44033000 	mfc1	v1,$f6
    7950:	3c018000 	lui	at,0x8000
    7954:	44cff800 	ctc1	t7,$31
    7958:	00611825 	or	v1,v1,at
    795c:	10000031 	b	7a24 <func_80B71278+0x14c>
    7960:	306300ff 	andi	v1,v1,0xff
    7964:	2403ffff 	li	v1,-1
    7968:	44cff800 	ctc1	t7,$31
    796c:	1000002d 	b	7a24 <func_80B71278+0x14c>
    7970:	306300ff 	andi	v1,v1,0xff
    7974:	44033000 	mfc1	v1,$f6
    7978:	00000000 	nop
    797c:	0462fffa 	bltzl	v1,7968 <func_80B71278+0x90>
    7980:	2403ffff 	li	v1,-1
    7984:	44cff800 	ctc1	t7,$31
    7988:	10000026 	b	7a24 <func_80B71278+0x14c>
    798c:	306300ff 	andi	v1,v1,0xff
    7990:	c48001ac 	lwc1	$f0,428(a0)
    7994:	24030001 	li	v1,1
    7998:	3c014f00 	lui	at,0x4f00
    799c:	46000200 	add.s	$f8,$f0,$f0
    79a0:	4458f800 	cfc1	t8,$31
    79a4:	44c3f800 	ctc1	v1,$31
    79a8:	00000000 	nop
    79ac:	460042a4 	cvt.w.s	$f10,$f8
    79b0:	4443f800 	cfc1	v1,$31
    79b4:	00000000 	nop
    79b8:	30630078 	andi	v1,v1,0x78
    79bc:	50600013 	beqzl	v1,7a0c <func_80B71278+0x134>
    79c0:	44035000 	mfc1	v1,$f10
    79c4:	44815000 	mtc1	at,$f10
    79c8:	24030001 	li	v1,1
    79cc:	460a4281 	sub.s	$f10,$f8,$f10
    79d0:	44c3f800 	ctc1	v1,$31
    79d4:	00000000 	nop
    79d8:	460052a4 	cvt.w.s	$f10,$f10
    79dc:	4443f800 	cfc1	v1,$31
    79e0:	00000000 	nop
    79e4:	30630078 	andi	v1,v1,0x78
    79e8:	14600005 	bnez	v1,7a00 <func_80B71278+0x128>
    79ec:	00000000 	nop
    79f0:	44035000 	mfc1	v1,$f10
    79f4:	3c018000 	lui	at,0x8000
    79f8:	10000007 	b	7a18 <func_80B71278+0x140>
    79fc:	00611825 	or	v1,v1,at
    7a00:	10000005 	b	7a18 <func_80B71278+0x140>
    7a04:	2403ffff 	li	v1,-1
    7a08:	44035000 	mfc1	v1,$f10
    7a0c:	00000000 	nop
    7a10:	0460fffb 	bltz	v1,7a00 <func_80B71278+0x128>
    7a14:	00000000 	nop
    7a18:	44d8f800 	ctc1	t8,$31
    7a1c:	306300ff 	andi	v1,v1,0xff
    7a20:	00000000 	nop
    7a24:	14a0000d 	bnez	a1,7a5c <func_80B71278+0x184>
    7a28:	28610032 	slti	at,v1,50
    7a2c:	28610032 	slti	at,v1,50
    7a30:	14200003 	bnez	at,7a40 <func_80B71278+0x168>
    7a34:	00601025 	move	v0,v1
    7a38:	10000011 	b	7a80 <func_80B71278+0x1a8>
    7a3c:	24022889 	li	v0,10377
    7a40:	28410028 	slti	at,v0,40
    7a44:	14200003 	bnez	at,7a54 <func_80B71278+0x17c>
    7a48:	00000000 	nop
    7a4c:	1000000c 	b	7a80 <func_80B71278+0x1a8>
    7a50:	24022817 	li	v0,10263
    7a54:	1000000a 	b	7a80 <func_80B71278+0x1a8>
    7a58:	24022817 	li	v0,10263
    7a5c:	14200003 	bnez	at,7a6c <func_80B71278+0x194>
    7a60:	00601025 	move	v0,v1
    7a64:	10000006 	b	7a80 <func_80B71278+0x1a8>
    7a68:	2402288a 	li	v0,10378
    7a6c:	28410028 	slti	at,v0,40
    7a70:	14200003 	bnez	at,7a80 <func_80B71278+0x1a8>
    7a74:	24022808 	li	v0,10248
    7a78:	10000001 	b	7a80 <func_80B71278+0x1a8>
    7a7c:	24022808 	li	v0,10248
    7a80:	0c000000 	jal	0 <func_80B699A0>
    7a84:	3045ffff 	andi	a1,v0,0xffff
    7a88:	8fbf0014 	lw	ra,20(sp)
    7a8c:	27bd0018 	addiu	sp,sp,24
    7a90:	03e00008 	jr	ra
    7a94:	00000000 	nop

00007a98 <func_80B71438>:
    7a98:	3c0e0000 	lui	t6,0x0
    7a9c:	91ce0000 	lbu	t6,0(t6)
    7aa0:	27bdffe8 	addiu	sp,sp,-24
    7aa4:	24010001 	li	at,1
    7aa8:	15c10010 	bne	t6,at,7aec <func_80B71438+0x54>
    7aac:	afbf0014 	sw	ra,20(sp)
    7ab0:	3c020000 	lui	v0,0x0
    7ab4:	8c420ec0 	lw	v0,3776(v0)
    7ab8:	240940ae 	li	t1,16558
    7abc:	304f007f 	andi	t7,v0,0x7f
    7ac0:	11e00008 	beqz	t7,7ae4 <func_80B71438+0x4c>
    7ac4:	30580080 	andi	t8,v0,0x80
    7ac8:	13000004 	beqz	t8,7adc <func_80B71438+0x44>
    7acc:	24084089 	li	t0,16521
    7ad0:	241940b1 	li	t9,16561
    7ad4:	10000014 	b	7b28 <func_80B71438+0x90>
    7ad8:	a499010e 	sh	t9,270(a0)
    7adc:	10000012 	b	7b28 <func_80B71438+0x90>
    7ae0:	a488010e 	sh	t0,270(a0)
    7ae4:	10000010 	b	7b28 <func_80B71438+0x90>
    7ae8:	a489010e 	sh	t1,270(a0)
    7aec:	3c020000 	lui	v0,0x0
    7af0:	8c420ec0 	lw	v0,3776(v0)
    7af4:	3c017f00 	lui	at,0x7f00
    7af8:	240e40ae 	li	t6,16558
    7afc:	00415024 	and	t2,v0,at
    7b00:	11400008 	beqz	t2,7b24 <func_80B71438+0x8c>
    7b04:	00025800 	sll	t3,v0,0x0
    7b08:	05610004 	bgez	t3,7b1c <func_80B71438+0x84>
    7b0c:	240d4089 	li	t5,16521
    7b10:	240c40b1 	li	t4,16561
    7b14:	10000004 	b	7b28 <func_80B71438+0x90>
    7b18:	a48c010e 	sh	t4,270(a0)
    7b1c:	10000002 	b	7b28 <func_80B71438+0x90>
    7b20:	a48d010e 	sh	t5,270(a0)
    7b24:	a48e010e 	sh	t6,270(a0)
    7b28:	908f01d3 	lbu	t7,467(a0)
    7b2c:	15e0003e 	bnez	t7,7c28 <func_80B71438+0x190>
    7b30:	00000000 	nop
    7b34:	908201d4 	lbu	v0,468(a0)
    7b38:	14400035 	bnez	v0,7c10 <func_80B71438+0x178>
    7b3c:	244bffff 	addiu	t3,v0,-1
    7b40:	8c980004 	lw	t8,4(a0)
    7b44:	37190001 	ori	t9,t8,0x1
    7b48:	ac990004 	sw	t9,4(a0)
    7b4c:	afa5001c 	sw	a1,28(sp)
    7b50:	0c000000 	jal	0 <func_80B699A0>
    7b54:	afa40018 	sw	a0,24(sp)
    7b58:	8fa40018 	lw	a0,24(sp)
    7b5c:	10400028 	beqz	v0,7c00 <func_80B71438+0x168>
    7b60:	8fa5001c 	lw	a1,28(sp)
    7b64:	3c010000 	lui	at,0x0
    7b68:	4448f800 	cfc1	t0,$31
    7b6c:	24090001 	li	t1,1
    7b70:	44c9f800 	ctc1	t1,$31
    7b74:	c4240000 	lwc1	$f4,0(at)
    7b78:	3c014f00 	lui	at,0x4f00
    7b7c:	240a0001 	li	t2,1
    7b80:	460021a4 	cvt.w.s	$f6,$f4
    7b84:	4449f800 	cfc1	t1,$31
    7b88:	00000000 	nop
    7b8c:	31290078 	andi	t1,t1,0x78
    7b90:	51200013 	beqzl	t1,7be0 <func_80B71438+0x148>
    7b94:	44093000 	mfc1	t1,$f6
    7b98:	44813000 	mtc1	at,$f6
    7b9c:	24090001 	li	t1,1
    7ba0:	46062181 	sub.s	$f6,$f4,$f6
    7ba4:	44c9f800 	ctc1	t1,$31
    7ba8:	00000000 	nop
    7bac:	460031a4 	cvt.w.s	$f6,$f6
    7bb0:	4449f800 	cfc1	t1,$31
    7bb4:	00000000 	nop
    7bb8:	31290078 	andi	t1,t1,0x78
    7bbc:	15200005 	bnez	t1,7bd4 <func_80B71438+0x13c>
    7bc0:	00000000 	nop
    7bc4:	44093000 	mfc1	t1,$f6
    7bc8:	3c018000 	lui	at,0x8000
    7bcc:	10000007 	b	7bec <func_80B71438+0x154>
    7bd0:	01214825 	or	t1,t1,at
    7bd4:	10000005 	b	7bec <func_80B71438+0x154>
    7bd8:	2409ffff 	li	t1,-1
    7bdc:	44093000 	mfc1	t1,$f6
    7be0:	00000000 	nop
    7be4:	0520fffb 	bltz	t1,7bd4 <func_80B71438+0x13c>
    7be8:	00000000 	nop
    7bec:	3c010000 	lui	at,0x0
    7bf0:	a4290000 	sh	t1,0(at)
    7bf4:	44c8f800 	ctc1	t0,$31
    7bf8:	10000012 	b	7c44 <func_80B71438+0x1ac>
    7bfc:	a08a01d3 	sb	t2,467(a0)
    7c00:	0c000000 	jal	0 <func_80B699A0>
    7c04:	00000000 	nop
    7c08:	1000000f 	b	7c48 <func_80B71438+0x1b0>
    7c0c:	8fbf0014 	lw	ra,20(sp)
    7c10:	8c8c0004 	lw	t4,4(a0)
    7c14:	2401fffe 	li	at,-2
    7c18:	a08b01d4 	sb	t3,468(a0)
    7c1c:	01816824 	and	t5,t4,at
    7c20:	10000008 	b	7c44 <func_80B71438+0x1ac>
    7c24:	ac8d0004 	sw	t5,4(a0)
    7c28:	0c000000 	jal	0 <func_80B699A0>
    7c2c:	afa40018 	sw	a0,24(sp)
    7c30:	10400004 	beqz	v0,7c44 <func_80B71438+0x1ac>
    7c34:	8fa40018 	lw	a0,24(sp)
    7c38:	240e0014 	li	t6,20
    7c3c:	a08001d3 	sb	zero,467(a0)
    7c40:	a08e01d4 	sb	t6,468(a0)
    7c44:	8fbf0014 	lw	ra,20(sp)
    7c48:	27bd0018 	addiu	sp,sp,24
    7c4c:	03e00008 	jr	ra
    7c50:	00000000 	nop

00007c54 <Fishing_Update>:
    7c54:	27bdfec8 	addiu	sp,sp,-312
    7c58:	240e000a 	li	t6,10
    7c5c:	3c01442f 	lui	at,0x442f
    7c60:	44812000 	mtc1	at,$f4
    7c64:	afbf0034 	sw	ra,52(sp)
    7c68:	afb10030 	sw	s1,48(sp)
    7c6c:	afb0002c 	sw	s0,44(sp)
    7c70:	f7b40020 	sdc1	$f20,32(sp)
    7c74:	a7ae0134 	sh	t6,308(sp)
    7c78:	908f0150 	lbu	t7,336(a0)
    7c7c:	3c014248 	lui	at,0x4248
    7c80:	44813000 	mtc1	at,$f6
    7c84:	8ca81c44 	lw	t0,7236(a1)
    7c88:	00808025 	move	s0,a0
    7c8c:	00a08825 	move	s1,a1
    7c90:	e48400f4 	swc1	$f4,244(a0)
    7c94:	15e0000a 	bnez	t7,7cc0 <Fishing_Update+0x6c>
    7c98:	e48600f8 	swc1	$f6,248(a0)
    7c9c:	3c010000 	lui	at,0x0
    7ca0:	c42a0000 	lwc1	$f10,0(at)
    7ca4:	c5080068 	lwc1	$f8,104(t0)
    7ca8:	3c013e80 	lui	at,0x3e80
    7cac:	44813000 	mtc1	at,$f6
    7cb0:	460a4102 	mul.s	$f4,$f8,$f10
    7cb4:	46062200 	add.s	$f8,$f4,$f6
    7cb8:	10000009 	b	7ce0 <Fishing_Update+0x8c>
    7cbc:	e7a80118 	swc1	$f8,280(sp)
    7cc0:	3c010000 	lui	at,0x0
    7cc4:	c4240000 	lwc1	$f4,0(at)
    7cc8:	c50a0068 	lwc1	$f10,104(t0)
    7ccc:	3c013e80 	lui	at,0x3e80
    7cd0:	44814000 	mtc1	at,$f8
    7cd4:	46045182 	mul.s	$f6,$f10,$f4
    7cd8:	46083280 	add.s	$f10,$f6,$f8
    7cdc:	e7aa0118 	swc1	$f10,280(sp)
    7ce0:	3c180000 	lui	t8,0x0
    7ce4:	87180000 	lh	t8,0(t8)
    7ce8:	1700000e 	bnez	t8,7d24 <Fishing_Update+0xd0>
    7cec:	3c190000 	lui	t9,0x0
    7cf0:	87390000 	lh	t9,0(t9)
    7cf4:	1720000b 	bnez	t9,7d24 <Fishing_Update+0xd0>
    7cf8:	3c010000 	lui	at,0x0
    7cfc:	c4240000 	lwc1	$f4,0(at)
    7d00:	c506002c 	lwc1	$f6,44(t0)
    7d04:	4606203c 	c.lt.s	$f4,$f6
    7d08:	00000000 	nop
    7d0c:	4502000b 	bc1fl	7d3c <Fishing_Update+0xe8>
    7d10:	8e0c0004 	lw	t4,4(s0)
    7d14:	86090158 	lh	t1,344(s0)
    7d18:	24010064 	li	at,100
    7d1c:	51210007 	beql	t1,at,7d3c <Fishing_Update+0xe8>
    7d20:	8e0c0004 	lw	t4,4(s0)
    7d24:	8e0a0004 	lw	t2,4(s0)
    7d28:	2401fffe 	li	at,-2
    7d2c:	01415824 	and	t3,t2,at
    7d30:	10000025 	b	7dc8 <Fishing_Update+0x174>
    7d34:	ae0b0004 	sw	t3,4(s0)
    7d38:	8e0c0004 	lw	t4,4(s0)
    7d3c:	3c0e0000 	lui	t6,0x0
    7d40:	358d0001 	ori	t5,t4,0x1
    7d44:	ae0d0004 	sw	t5,4(s0)
    7d48:	85ce0000 	lh	t6,0(t6)
    7d4c:	11c00018 	beqz	t6,7db0 <Fishing_Update+0x15c>
    7d50:	3c020000 	lui	v0,0x0
    7d54:	84420000 	lh	v0,0(v0)
    7d58:	14400009 	bnez	v0,7d80 <Fishing_Update+0x12c>
    7d5c:	3c0f0000 	lui	t7,0x0
    7d60:	25ef0000 	addiu	t7,t7,0
    7d64:	8df90000 	lw	t9,0(t7)
    7d68:	ae190038 	sw	t9,56(s0)
    7d6c:	8df80004 	lw	t8,4(t7)
    7d70:	ae18003c 	sw	t8,60(s0)
    7d74:	8df90008 	lw	t9,8(t7)
    7d78:	1000000d 	b	7db0 <Fishing_Update+0x15c>
    7d7c:	ae190040 	sw	t9,64(s0)
    7d80:	24010001 	li	at,1
    7d84:	5441000b 	bnel	v0,at,7db4 <Fishing_Update+0x160>
    7d88:	8e0c0024 	lw	t4,36(s0)
    7d8c:	44804000 	mtc1	zero,$f8
    7d90:	24090001 	li	t1,1
    7d94:	3c010000 	lui	at,0x0
    7d98:	a0290000 	sb	t1,0(at)
    7d9c:	3c010000 	lui	at,0x0
    7da0:	e4280000 	swc1	$f8,0(at)
    7da4:	3c010000 	lui	at,0x0
    7da8:	240a0002 	li	t2,2
    7dac:	a02a0000 	sb	t2,0(at)
    7db0:	8e0c0024 	lw	t4,36(s0)
    7db4:	8e0b0028 	lw	t3,40(s0)
    7db8:	ae0c0038 	sw	t4,56(s0)
    7dbc:	8e0c002c 	lw	t4,44(s0)
    7dc0:	ae0b003c 	sw	t3,60(s0)
    7dc4:	ae0c0040 	sw	t4,64(s0)
    7dc8:	860d015c 	lh	t5,348(s0)
    7dcc:	00001025 	move	v0,zero
    7dd0:	25ae0001 	addiu	t6,t5,1
    7dd4:	a60e015c 	sh	t6,348(s0)
    7dd8:	00027840 	sll	t7,v0,0x1
    7ddc:	020f1821 	addu	v1,s0,t7
    7de0:	8464017a 	lh	a0,378(v1)
    7de4:	10800002 	beqz	a0,7df0 <Fishing_Update+0x19c>
    7de8:	2498ffff 	addiu	t8,a0,-1
    7dec:	a478017a 	sh	t8,378(v1)
    7df0:	24420001 	addiu	v0,v0,1
    7df4:	00021400 	sll	v0,v0,0x10
    7df8:	00021403 	sra	v0,v0,0x10
    7dfc:	28410004 	slti	at,v0,4
    7e00:	5420fff6 	bnezl	at,7ddc <Fishing_Update+0x188>
    7e04:	00027840 	sll	t7,v0,0x1
    7e08:	860201a4 	lh	v0,420(s0)
    7e0c:	10400002 	beqz	v0,7e18 <Fishing_Update+0x1c4>
    7e10:	2459ffff 	addiu	t9,v0,-1
    7e14:	a61901a4 	sh	t9,420(s0)
    7e18:	860201a2 	lh	v0,418(s0)
    7e1c:	10400002 	beqz	v0,7e28 <Fishing_Update+0x1d4>
    7e20:	2449ffff 	addiu	t1,v0,-1
    7e24:	a60901a2 	sh	t1,418(s0)
    7e28:	860201a0 	lh	v0,416(s0)
    7e2c:	10400002 	beqz	v0,7e38 <Fishing_Update+0x1e4>
    7e30:	244affff 	addiu	t2,v0,-1
    7e34:	a60a01a0 	sh	t2,416(s0)
    7e38:	92020151 	lbu	v0,337(s0)
    7e3c:	10400002 	beqz	v0,7e48 <Fishing_Update+0x1f4>
    7e40:	244bffff 	addiu	t3,v0,-1
    7e44:	a20b0151 	sb	t3,337(s0)
    7e48:	3c013f80 	lui	at,0x3f80
    7e4c:	4481a000 	mtc1	at,$f20
    7e50:	8e050190 	lw	a1,400(s0)
    7e54:	3c073e4c 	lui	a3,0x3e4c
    7e58:	4406a000 	mfc1	a2,$f20
    7e5c:	34e7cccd 	ori	a3,a3,0xcccd
    7e60:	afa800e0 	sw	t0,224(sp)
    7e64:	0c000000 	jal	0 <func_80B699A0>
    7e68:	26040198 	addiu	a0,s0,408
    7e6c:	860c0158 	lh	t4,344(s0)
    7e70:	24010006 	li	at,6
    7e74:	15810008 	bne	t4,at,7e98 <Fishing_Update+0x244>
    7e78:	3c063e4c 	lui	a2,0x3e4c
    7e7c:	34c6cccd 	ori	a2,a2,0xcccd
    7e80:	2604019c 	addiu	a0,s0,412
    7e84:	8e050194 	lw	a1,404(s0)
    7e88:	0c000000 	jal	0 <func_80B699A0>
    7e8c:	3c074348 	lui	a3,0x4348
    7e90:	10000027 	b	7f30 <Fishing_Update+0x2dc>
    7e94:	26040170 	addiu	a0,s0,368
    7e98:	8e2d07c0 	lw	t5,1984(s1)
    7e9c:	c6060028 	lwc1	$f6,40(s0)
    7ea0:	4600a006 	mov.s	$f0,$f20
    7ea4:	8dae0028 	lw	t6,40(t5)
    7ea8:	4600a086 	mov.s	$f2,$f20
    7eac:	85cf0002 	lh	t7,2(t6)
    7eb0:	448f5000 	mtc1	t7,$f10
    7eb4:	00000000 	nop
    7eb8:	46805120 	cvt.s.w	$f4,$f10
    7ebc:	4606203c 	c.lt.s	$f4,$f6
    7ec0:	00000000 	nop
    7ec4:	4500000e 	bc1f	7f00 <Fishing_Update+0x2ac>
    7ec8:	3c180000 	lui	t8,0x0
    7ecc:	8f180000 	lw	t8,0(t8)
    7ed0:	3c010000 	lui	at,0x0
    7ed4:	c4240000 	lwc1	$f4,0(at)
    7ed8:	87190a54 	lh	t9,2644(t8)
    7edc:	3c013fc0 	lui	at,0x3fc0
    7ee0:	44994000 	mtc1	t9,$f8
    7ee4:	00000000 	nop
    7ee8:	468042a0 	cvt.s.w	$f10,$f8
    7eec:	44814000 	mtc1	at,$f8
    7ef0:	3c014040 	lui	at,0x4040
    7ef4:	44811000 	mtc1	at,$f2
    7ef8:	46045182 	mul.s	$f6,$f10,$f4
    7efc:	46083000 	add.s	$f0,$f6,$f8
    7f00:	c60a0194 	lwc1	$f10,404(s0)
    7f04:	3c0143fa 	lui	at,0x43fa
    7f08:	44813000 	mtc1	at,$f6
    7f0c:	46005102 	mul.s	$f4,$f10,$f0
    7f10:	4406a000 	mfc1	a2,$f20
    7f14:	2604019c 	addiu	a0,s0,412
    7f18:	46023202 	mul.s	$f8,$f6,$f2
    7f1c:	44052000 	mfc1	a1,$f4
    7f20:	44074000 	mfc1	a3,$f8
    7f24:	0c000000 	jal	0 <func_80B699A0>
    7f28:	00000000 	nop
    7f2c:	26040170 	addiu	a0,s0,368
    7f30:	afa40040 	sw	a0,64(sp)
    7f34:	00002825 	move	a1,zero
    7f38:	24060005 	li	a2,5
    7f3c:	0c000000 	jal	0 <func_80B699A0>
    7f40:	240701f4 	li	a3,500
    7f44:	92090150 	lbu	t1,336(s0)
    7f48:	1520002a 	bnez	t1,7ff4 <Fishing_Update+0x3a0>
    7f4c:	3c014170 	lui	at,0x4170
    7f50:	44812000 	mtc1	at,$f4
    7f54:	c60a01ac 	lwc1	$f10,428(s0)
    7f58:	3c010000 	lui	at,0x0
    7f5c:	c4280000 	lwc1	$f8,0(at)
    7f60:	46045182 	mul.s	$f6,$f10,$f4
    7f64:	02002025 	move	a0,s0
    7f68:	46083282 	mul.s	$f10,$f6,$f8
    7f6c:	44055000 	mfc1	a1,$f10
    7f70:	0c000000 	jal	0 <func_80B699A0>
    7f74:	00000000 	nop
    7f78:	c604018c 	lwc1	$f4,396(s0)
    7f7c:	c6060198 	lwc1	$f6,408(s0)
    7f80:	46062200 	add.s	$f8,$f4,$f6
    7f84:	e608018c 	swc1	$f8,396(s0)
    7f88:	0c000000 	jal	0 <func_80B699A0>
    7f8c:	c60c018c 	lwc1	$f12,396(s0)
    7f90:	c60a019c 	lwc1	$f10,412(s0)
    7f94:	860a016e 	lh	t2,366(s0)
    7f98:	3c010000 	lui	at,0x0
    7f9c:	460a0102 	mul.s	$f4,$f0,$f10
    7fa0:	c608018c 	lwc1	$f8,396(s0)
    7fa4:	4600218d 	trunc.w.s	$f6,$f4
    7fa8:	440e3000 	mfc1	t6,$f6
    7fac:	00000000 	nop
    7fb0:	014e7821 	addu	t7,t2,t6
    7fb4:	a60f016c 	sh	t7,364(s0)
    7fb8:	c42a0000 	lwc1	$f10,0(at)
    7fbc:	0c000000 	jal	0 <func_80B699A0>
    7fc0:	460a4300 	add.s	$f12,$f8,$f10
    7fc4:	c604019c 	lwc1	$f4,412(s0)
    7fc8:	3c010000 	lui	at,0x0
    7fcc:	c4280000 	lwc1	$f8,0(at)
    7fd0:	46040182 	mul.s	$f6,$f0,$f4
    7fd4:	860c016e 	lh	t4,366(s0)
    7fd8:	46083282 	mul.s	$f10,$f6,$f8
    7fdc:	4600510d 	trunc.w.s	$f4,$f10
    7fe0:	440b2000 	mfc1	t3,$f4
    7fe4:	00000000 	nop
    7fe8:	018b6821 	addu	t5,t4,t3
    7fec:	10000043 	b	80fc <Fishing_Update+0x4a8>
    7ff0:	a60d0176 	sh	t5,374(s0)
    7ff4:	3c014282 	lui	at,0x4282
    7ff8:	44814000 	mtc1	at,$f8
    7ffc:	c60601ac 	lwc1	$f6,428(s0)
    8000:	3c010000 	lui	at,0x0
    8004:	c4240000 	lwc1	$f4,0(at)
    8008:	46083282 	mul.s	$f10,$f6,$f8
    800c:	02002025 	move	a0,s0
    8010:	46045182 	mul.s	$f6,$f10,$f4
    8014:	44053000 	mfc1	a1,$f6
    8018:	0c000000 	jal	0 <func_80B699A0>
    801c:	00000000 	nop
    8020:	3c010000 	lui	at,0x0
    8024:	c42a0000 	lwc1	$f10,0(at)
    8028:	c6080058 	lwc1	$f8,88(s0)
    802c:	3c010000 	lui	at,0x0
    8030:	c6040198 	lwc1	$f4,408(s0)
    8034:	460a4002 	mul.s	$f0,$f8,$f10
    8038:	c60a018c 	lwc1	$f10,396(s0)
    803c:	00001025 	move	v0,zero
    8040:	e6000050 	swc1	$f0,80(s0)
    8044:	e6000054 	swc1	$f0,84(s0)
    8048:	c4260000 	lwc1	$f6,0(at)
    804c:	46062202 	mul.s	$f8,$f4,$f6
    8050:	46085100 	add.s	$f4,$f10,$f8
    8054:	e604018c 	swc1	$f4,396(s0)
    8058:	44823000 	mtc1	v0,$f6
    805c:	3c010000 	lui	at,0x0
    8060:	c4280000 	lwc1	$f8,0(at)
    8064:	468032a0 	cvt.s.w	$f10,$f6
    8068:	c606018c 	lwc1	$f6,396(s0)
    806c:	a7a20136 	sh	v0,310(sp)
    8070:	46085102 	mul.s	$f4,$f10,$f8
    8074:	0c000000 	jal	0 <func_80B699A0>
    8078:	46043300 	add.s	$f12,$f6,$f4
    807c:	c60a019c 	lwc1	$f10,412(s0)
    8080:	87a20136 	lh	v0,310(sp)
    8084:	860a016e 	lh	t2,366(s0)
    8088:	460a0082 	mul.s	$f2,$f0,$f10
    808c:	00026040 	sll	t4,v0,0x1
    8090:	24420001 	addiu	v0,v0,1
    8094:	00021400 	sll	v0,v0,0x10
    8098:	00021403 	sra	v0,v0,0x10
    809c:	28410003 	slti	at,v0,3
    80a0:	020c5821 	addu	t3,s0,t4
    80a4:	46021200 	add.s	$f8,$f2,$f2
    80a8:	4600418d 	trunc.w.s	$f6,$f8
    80ac:	44193000 	mfc1	t9,$f6
    80b0:	00000000 	nop
    80b4:	01594821 	addu	t1,t2,t9
    80b8:	1420ffe7 	bnez	at,8058 <Fishing_Update+0x404>
    80bc:	a56901cc 	sh	t1,460(t3)
    80c0:	3c010000 	lui	at,0x0
    80c4:	c42a0000 	lwc1	$f10,0(at)
    80c8:	c604018c 	lwc1	$f4,396(s0)
    80cc:	0c000000 	jal	0 <func_80B699A0>
    80d0:	460a2300 	add.s	$f12,$f4,$f10
    80d4:	c608019c 	lwc1	$f8,412(s0)
    80d8:	3c010000 	lui	at,0x0
    80dc:	c4240000 	lwc1	$f4,0(at)
    80e0:	46004082 	mul.s	$f2,$f8,$f0
    80e4:	46021180 	add.s	$f6,$f2,$f2
    80e8:	46043282 	mul.s	$f10,$f6,$f4
    80ec:	4600520d 	trunc.w.s	$f8,$f10
    80f0:	440e4000 	mfc1	t6,$f8
    80f4:	00000000 	nop
    80f8:	a60e016c 	sh	t6,364(s0)
    80fc:	c60601b4 	lwc1	$f6,436(s0)
    8100:	c6040024 	lwc1	$f4,36(s0)
    8104:	c60a01b8 	lwc1	$f10,440(s0)
    8108:	c6080028 	lwc1	$f8,40(s0)
    810c:	46043381 	sub.s	$f14,$f6,$f4
    8110:	46085181 	sub.s	$f6,$f10,$f8
    8114:	e7a6012c 	swc1	$f6,300(sp)
    8118:	c60a002c 	lwc1	$f10,44(s0)
    811c:	c60401bc 	lwc1	$f4,444(s0)
    8120:	e7ae0130 	swc1	$f14,304(sp)
    8124:	460a2301 	sub.s	$f12,$f4,$f10
    8128:	0c000000 	jal	0 <func_80B699A0>
    812c:	e7ac0128 	swc1	$f12,296(sp)
    8130:	c7b00130 	lwc1	$f16,304(sp)
    8134:	c7b20128 	lwc1	$f18,296(sp)
    8138:	a7a200fc 	sh	v0,252(sp)
    813c:	46108202 	mul.s	$f8,$f16,$f16
    8140:	c7ae012c 	lwc1	$f14,300(sp)
    8144:	46129182 	mul.s	$f6,$f18,$f18
    8148:	46064080 	add.s	$f2,$f8,$f6
    814c:	46001304 	sqrt.s	$f12,$f2
    8150:	0c000000 	jal	0 <func_80B699A0>
    8154:	e7a2004c 	swc1	$f2,76(sp)
    8158:	c7ac012c 	lwc1	$f12,300(sp)
    815c:	c7a2004c 	lwc1	$f2,76(sp)
    8160:	a7a200fe 	sh	v0,254(sp)
    8164:	460c6102 	mul.s	$f4,$f12,$f12
    8168:	46041000 	add.s	$f0,$f2,$f4
    816c:	46000004 	sqrt.s	$f0,$f0
    8170:	e7a00124 	swc1	$f0,292(sp)
    8174:	860f01a0 	lh	t7,416(s0)
    8178:	51e0001d 	beqzl	t7,81f0 <Fishing_Update+0x59c>
    817c:	86020158 	lh	v0,344(s0)
    8180:	86030158 	lh	v1,344(s0)
    8184:	24010002 	li	at,2
    8188:	10610018 	beq	v1,at,81ec <Fishing_Update+0x598>
    818c:	24010003 	li	at,3
    8190:	10610016 	beq	v1,at,81ec <Fishing_Update+0x598>
    8194:	24010004 	li	at,4
    8198:	50610015 	beql	v1,at,81f0 <Fishing_Update+0x59c>
    819c:	86020158 	lh	v0,344(s0)
    81a0:	8603015c 	lh	v1,348(s0)
    81a4:	30780040 	andi	t8,v1,0x40
    81a8:	53000006 	beqzl	t8,81c4 <Fishing_Update+0x570>
    81ac:	87ac00fc 	lh	t4,252(sp)
    81b0:	87aa00fc 	lh	t2,252(sp)
    81b4:	25594000 	addiu	t9,t2,16384
    81b8:	10000004 	b	81cc <Fishing_Update+0x578>
    81bc:	a7b900fc 	sh	t9,252(sp)
    81c0:	87ac00fc 	lh	t4,252(sp)
    81c4:	2589c000 	addiu	t1,t4,-16384
    81c8:	a7a900fc 	sh	t1,252(sp)
    81cc:	246b0020 	addiu	t3,v1,32
    81d0:	316d0040 	andi	t5,t3,0x40
    81d4:	11a00003 	beqz	t5,81e4 <Fishing_Update+0x590>
    81d8:	244e2000 	addiu	t6,v0,8192
    81dc:	10000003 	b	81ec <Fishing_Update+0x598>
    81e0:	a7ae00fe 	sh	t6,254(sp)
    81e4:	244fe000 	addiu	t7,v0,-8192
    81e8:	a7af00fe 	sh	t7,254(sp)
    81ec:	86020158 	lh	v0,344(s0)
    81f0:	2841000c 	slti	at,v0,12
    81f4:	14200005 	bnez	at,820c <Fishing_Update+0x5b8>
    81f8:	24010064 	li	at,100
    81fc:	5041000d 	beql	v0,at,8234 <Fishing_Update+0x5e0>
    8200:	02002025 	move	a0,s0
    8204:	10000db5 	b	b8dc <L80B75278+0x4>
    8208:	8604015c 	lh	a0,348(s0)
    820c:	24580019 	addiu	t8,v0,25
    8210:	2f010025 	sltiu	at,t8,37
    8214:	10200db0 	beqz	at,b8d8 <L80B75278>
    8218:	0018c080 	sll	t8,t8,0x2
    821c:	3c010000 	lui	at,0x0
    8220:	00380821 	addu	at,at,t8
    8224:	8c380000 	lw	t8,0(at)
    8228:	03000008 	jr	t8
    822c:	00000000 	nop
    8230:	02002025 	move	a0,s0
    8234:	0c000000 	jal	0 <func_80B699A0>
    8238:	02202825 	move	a1,s1
    823c:	3c0143fa 	lui	at,0x43fa
    8240:	44815000 	mtc1	at,$f10
    8244:	3c014396 	lui	at,0x4396
    8248:	44814000 	mtc1	at,$f8
    824c:	e60a00f4 	swc1	$f10,244(s0)
    8250:	c60a0028 	lwc1	$f10,40(s0)
    8254:	e60800f8 	swc1	$f8,248(s0)
    8258:	c6060024 	lwc1	$f6,36(s0)
    825c:	4600520d 	trunc.w.s	$f8,$f10
    8260:	3c0141a0 	lui	at,0x41a0
    8264:	44815000 	mtc1	at,$f10
    8268:	4600310d 	trunc.w.s	$f4,$f6
    826c:	440c4000 	mfc1	t4,$f8
    8270:	3c014248 	lui	at,0x4248
    8274:	240d00ff 	li	t5,255
    8278:	000c4c00 	sll	t1,t4,0x10
    827c:	00095c03 	sra	t3,t1,0x10
    8280:	448b3000 	mtc1	t3,$f6
    8284:	44052000 	mfc1	a1,$f4
    8288:	240b00ff 	li	t3,255
    828c:	46803120 	cvt.s.w	$f4,$f6
    8290:	240900ff 	li	t1,255
    8294:	240c00ff 	li	t4,255
    8298:	00052c00 	sll	a1,a1,0x10
    829c:	00052c03 	sra	a1,a1,0x10
    82a0:	26040220 	addiu	a0,s0,544
    82a4:	460a2200 	add.s	$f8,$f4,$f10
    82a8:	c604002c 	lwc1	$f4,44(s0)
    82ac:	afad001c 	sw	t5,28(sp)
    82b0:	afab0018 	sw	t3,24(sp)
    82b4:	4600228d 	trunc.w.s	$f10,$f4
    82b8:	44812000 	mtc1	at,$f4
    82bc:	afa90014 	sw	t1,20(sp)
    82c0:	4600418d 	trunc.w.s	$f6,$f8
    82c4:	440f5000 	mfc1	t7,$f10
    82c8:	afac0010 	sw	t4,16(sp)
    82cc:	000fc400 	sll	t8,t7,0x10
    82d0:	00185403 	sra	t2,t8,0x10
    82d4:	448a4000 	mtc1	t2,$f8
    82d8:	44063000 	mfc1	a2,$f6
    82dc:	468041a0 	cvt.s.w	$f6,$f8
    82e0:	00063400 	sll	a2,a2,0x10
    82e4:	00063403 	sra	a2,a2,0x10
    82e8:	46043281 	sub.s	$f10,$f6,$f4
    82ec:	4600520d 	trunc.w.s	$f8,$f10
    82f0:	44074000 	mfc1	a3,$f8
    82f4:	00000000 	nop
    82f8:	00073c00 	sll	a3,a3,0x10
    82fc:	0c000000 	jal	0 <func_80B699A0>
    8300:	00073c03 	sra	a3,a3,0x10
    8304:	3c010000 	lui	at,0x0
    8308:	c4260000 	lwc1	$f6,0(at)
    830c:	3c010001 	lui	at,0x1
    8310:	02217021 	addu	t6,s1,at
    8314:	e60601ac 	swc1	$f6,428(s0)
    8318:	afae0048 	sw	t6,72(sp)
    831c:	8dc41de4 	lw	a0,7652(t6)
    8320:	00800821 	move	at,a0
    8324:	00042080 	sll	a0,a0,0x2
    8328:	00812021 	addu	a0,a0,at
    832c:	00042080 	sll	a0,a0,0x2
    8330:	00812023 	subu	a0,a0,at
    8334:	00042080 	sll	a0,a0,0x2
    8338:	00812023 	subu	a0,a0,at
    833c:	00042080 	sll	a0,a0,0x2
    8340:	00042400 	sll	a0,a0,0x10
    8344:	0c000000 	jal	0 <func_80B699A0>
    8348:	00042403 	sra	a0,a0,0x10
    834c:	3c013f80 	lui	at,0x3f80
    8350:	44812000 	mtc1	at,$f4
    8354:	8fb80048 	lw	t8,72(sp)
    8358:	46040282 	mul.s	$f10,$f0,$f4
    835c:	e7aa0104 	swc1	$f10,260(sp)
    8360:	8f041de4 	lw	a0,7652(t8)
    8364:	00800821 	move	at,a0
    8368:	000420c0 	sll	a0,a0,0x3
    836c:	00812023 	subu	a0,a0,at
    8370:	00042080 	sll	a0,a0,0x2
    8374:	00812021 	addu	a0,a0,at
    8378:	00042080 	sll	a0,a0,0x2
    837c:	00812023 	subu	a0,a0,at
    8380:	00042040 	sll	a0,a0,0x1
    8384:	00042400 	sll	a0,a0,0x10
    8388:	0c000000 	jal	0 <func_80B699A0>
    838c:	00042403 	sra	a0,a0,0x10
    8390:	3c014000 	lui	at,0x4000
    8394:	44814000 	mtc1	at,$f8
    8398:	3c014302 	lui	at,0x4302
    839c:	44812000 	mtc1	at,$f4
    83a0:	46080182 	mul.s	$f6,$f0,$f8
    83a4:	3c01425c 	lui	at,0x425c
    83a8:	44815000 	mtc1	at,$f10
    83ac:	3c010000 	lui	at,0x0
    83b0:	240a8000 	li	t2,-32768
    83b4:	e7a60108 	swc1	$f6,264(sp)
    83b8:	e6040024 	swc1	$f4,36(s0)
    83bc:	c7a80104 	lwc1	$f8,260(sp)
    83c0:	c60200ec 	lwc1	$f2,236(s0)
    83c4:	46085180 	add.s	$f6,$f10,$f8
    83c8:	e6060028 	swc1	$f6,40(s0)
    83cc:	c4240000 	lwc1	$f4,0(at)
    83d0:	3c014348 	lui	at,0x4348
    83d4:	44813000 	mtc1	at,$f6
    83d8:	c7aa0108 	lwc1	$f10,264(sp)
    83dc:	a60a00b6 	sh	t2,182(s0)
    83e0:	4606103c 	c.lt.s	$f2,$f6
    83e4:	460a2200 	add.s	$f8,$f4,$f10
    83e8:	45000026 	bc1f	8484 <Fishing_Update+0x830>
    83ec:	e608002c 	swc1	$f8,44(s0)
    83f0:	44802000 	mtc1	zero,$f4
    83f4:	00000000 	nop
    83f8:	4602203c 	c.lt.s	$f4,$f2
    83fc:	00000000 	nop
    8400:	45000020 	bc1f	8484 <Fishing_Update+0x830>
    8404:	3c0140a0 	lui	at,0x40a0
    8408:	44816000 	mtc1	at,$f12
    840c:	0c000000 	jal	0 <func_80B699A0>
    8410:	00000000 	nop
    8414:	3c014302 	lui	at,0x4302
    8418:	44815000 	mtc1	at,$f10
    841c:	3c014220 	lui	at,0x4220
    8420:	44813000 	mtc1	at,$f6
    8424:	460a0200 	add.s	$f8,$f0,$f10
    8428:	3c0140a0 	lui	at,0x40a0
    842c:	44816000 	mtc1	at,$f12
    8430:	e7a600c8 	swc1	$f6,200(sp)
    8434:	0c000000 	jal	0 <func_80B699A0>
    8438:	e7a800c4 	swc1	$f8,196(sp)
    843c:	3c0144a0 	lui	at,0x44a0
    8440:	44812000 	mtc1	at,$f4
    8444:	3c010000 	lui	at,0x0
    8448:	c42c0000 	lwc1	$f12,0(at)
    844c:	46040280 	add.s	$f10,$f0,$f4
    8450:	0c000000 	jal	0 <func_80B699A0>
    8454:	e7aa00cc 	swc1	$f10,204(sp)
    8458:	3c010000 	lui	at,0x0
    845c:	c4280000 	lwc1	$f8,0(at)
    8460:	8fb90048 	lw	t9,72(sp)
    8464:	240c0001 	li	t4,1
    8468:	46080180 	add.s	$f6,$f0,$f8
    846c:	8f251e10 	lw	a1,7696(t9)
    8470:	afac0010 	sw	t4,16(sp)
    8474:	00002025 	move	a0,zero
    8478:	44073000 	mfc1	a3,$f6
    847c:	0c000000 	jal	0 <func_80B699A0>
    8480:	27a600c4 	addiu	a2,sp,196
    8484:	8604015c 	lh	a0,348(s0)
    8488:	000422c0 	sll	a0,a0,0xb
    848c:	00042400 	sll	a0,a0,0x10
    8490:	0c000000 	jal	0 <func_80B699A0>
    8494:	00042403 	sra	a0,a0,0x10
    8498:	3c010000 	lui	at,0x0
    849c:	c4220000 	lwc1	$f2,0(at)
    84a0:	26040172 	addiu	a0,s0,370
    84a4:	24060002 	li	a2,2
    84a8:	46020102 	mul.s	$f4,$f0,$f2
    84ac:	240707d0 	li	a3,2000
    84b0:	46022280 	add.s	$f10,$f4,$f2
    84b4:	4600520d 	trunc.w.s	$f8,$f10
    84b8:	44054000 	mfc1	a1,$f8
    84bc:	00000000 	nop
    84c0:	00052c00 	sll	a1,a1,0x10
    84c4:	0c000000 	jal	0 <func_80B699A0>
    84c8:	00052c03 	sra	a1,a1,0x10
    84cc:	8604015c 	lh	a0,348(s0)
    84d0:	00800821 	move	at,a0
    84d4:	00042080 	sll	a0,a0,0x2
    84d8:	00812021 	addu	a0,a0,at
    84dc:	00042240 	sll	a0,a0,0x9
    84e0:	00042400 	sll	a0,a0,0x10
    84e4:	0c000000 	jal	0 <func_80B699A0>
    84e8:	00042403 	sra	a0,a0,0x10
    84ec:	3c010000 	lui	at,0x0
    84f0:	c4260000 	lwc1	$f6,0(at)
    84f4:	26040174 	addiu	a0,s0,372
    84f8:	24060002 	li	a2,2
    84fc:	46060102 	mul.s	$f4,$f0,$f6
    8500:	240707d0 	li	a3,2000
    8504:	4600228d 	trunc.w.s	$f10,$f4
    8508:	44055000 	mfc1	a1,$f10
    850c:	00000000 	nop
    8510:	00052c00 	sll	a1,a1,0x10
    8514:	0c000000 	jal	0 <func_80B699A0>
    8518:	00052c03 	sra	a1,a1,0x10
    851c:	3c010000 	lui	at,0x0
    8520:	c4280000 	lwc1	$f8,0(at)
    8524:	3c010000 	lui	at,0x0
    8528:	e6080190 	swc1	$f8,400(s0)
    852c:	c4260000 	lwc1	$f6,0(at)
    8530:	10000f30 	b	c1f4 <L80B75278+0x91c>
    8534:	e6060194 	swc1	$f6,404(s0)

00008538 <L80B71ED8>:
    8538:	8e0e0008 	lw	t6,8(s0)
    853c:	8e0d000c 	lw	t5,12(s0)
    8540:	4406a000 	mfc1	a2,$f20
    8544:	ae0e01b4 	sw	t6,436(s0)
    8548:	8e0e0010 	lw	t6,16(s0)
    854c:	26040068 	addiu	a0,s0,104
    8550:	3c054000 	lui	a1,0x4000
    8554:	3c073f00 	lui	a3,0x3f00
    8558:	ae0d01b8 	sw	t5,440(s0)
    855c:	0c000000 	jal	0 <func_80B699A0>
    8560:	ae0e01bc 	sw	t6,444(s0)
    8564:	4406a000 	mfc1	a2,$f20
    8568:	260401b0 	addiu	a0,s0,432
    856c:	3c054580 	lui	a1,0x4580
    8570:	0c000000 	jal	0 <func_80B699A0>
    8574:	3c074380 	lui	a3,0x4380
    8578:	3c014220 	lui	at,0x4220
    857c:	44815000 	mtc1	at,$f10
    8580:	c7a40124 	lwc1	$f4,292(sp)
    8584:	460a203c 	c.lt.s	$f4,$f10
    8588:	00000000 	nop
    858c:	45000008 	bc1f	85b0 <L80B71ED8+0x78>
    8590:	240f000b 	li	t7,11
    8594:	a60f0158 	sh	t7,344(s0)
    8598:	3c010000 	lui	at,0x0
    859c:	c4280000 	lwc1	$f8,0(at)
    85a0:	3c0143fa 	lui	at,0x43fa
    85a4:	44813000 	mtc1	at,$f6
    85a8:	e6080190 	swc1	$f8,400(s0)
    85ac:	e6060194 	swc1	$f6,404(s0)
    85b0:	02002025 	move	a0,s0
    85b4:	0c000000 	jal	0 <func_80B699A0>
    85b8:	26250014 	addiu	a1,s1,20
    85bc:	3c01437a 	lui	at,0x437a
    85c0:	44815000 	mtc1	at,$f10
    85c4:	c7a80118 	lwc1	$f8,280(sp)
    85c8:	c6040090 	lwc1	$f4,144(s0)
    85cc:	46085182 	mul.s	$f6,$f10,$f8
    85d0:	4606203c 	c.lt.s	$f4,$f6
    85d4:	00000000 	nop
    85d8:	45020cc0 	bc1fl	b8dc <L80B75278+0x4>
    85dc:	8604015c 	lh	a0,348(s0)
    85e0:	a6000158 	sh	zero,344(s0)
    85e4:	86180158 	lh	t8,344(s0)
    85e8:	24020032 	li	v0,50
    85ec:	240a03e8 	li	t2,1000
    85f0:	241900c8 	li	t9,200
    85f4:	a60a01a4 	sh	t2,420(s0)
    85f8:	a61901a2 	sh	t9,418(s0)
    85fc:	a602017c 	sh	v0,380(s0)
    8600:	10000cb5 	b	b8d8 <L80B75278>
    8604:	a618015a 	sh	t8,346(s0)

00008608 <L80B71FA8>:
    8608:	8e090008 	lw	t1,8(s0)
    860c:	8e0c000c 	lw	t4,12(s0)
    8610:	4406a000 	mfc1	a2,$f20
    8614:	ae0901b4 	sw	t1,436(s0)
    8618:	8e090010 	lw	t1,16(s0)
    861c:	3c073d4c 	lui	a3,0x3d4c
    8620:	34e7cccd 	ori	a3,a3,0xcccd
    8624:	26040068 	addiu	a0,s0,104
    8628:	24050000 	li	a1,0
    862c:	ae0c01b8 	sw	t4,440(s0)
    8630:	0c000000 	jal	0 <func_80B699A0>
    8634:	ae0901bc 	sw	t1,444(s0)
    8638:	4406a000 	mfc1	a2,$f20
    863c:	260401b0 	addiu	a0,s0,432
    8640:	24050000 	li	a1,0
    8644:	0c000000 	jal	0 <func_80B699A0>
    8648:	3c074380 	lui	a3,0x4380
    864c:	3c014220 	lui	at,0x4220
    8650:	44814000 	mtc1	at,$f8
    8654:	c7aa0124 	lwc1	$f10,292(sp)
    8658:	460a403e 	c.le.s	$f8,$f10
    865c:	00000000 	nop
    8660:	45000006 	bc1f	867c <L80B71FA8+0x74>
    8664:	3c0144fa 	lui	at,0x44fa
    8668:	44812000 	mtc1	at,$f4
    866c:	2402000a 	li	v0,10
    8670:	a6020158 	sh	v0,344(s0)
    8674:	e6140190 	swc1	$f20,400(s0)
    8678:	e6040194 	swc1	$f4,404(s0)
    867c:	02002025 	move	a0,s0
    8680:	0c000000 	jal	0 <func_80B699A0>
    8684:	26250014 	addiu	a1,s1,20
    8688:	3c01437a 	lui	at,0x437a
    868c:	44815000 	mtc1	at,$f10
    8690:	c7a80118 	lwc1	$f8,280(sp)
    8694:	c6060090 	lwc1	$f6,144(s0)
    8698:	46085102 	mul.s	$f4,$f10,$f8
    869c:	4604303c 	c.lt.s	$f6,$f4
    86a0:	00000000 	nop
    86a4:	4500000a 	bc1f	86d0 <L80B71FA8+0xc8>
    86a8:	00000000 	nop
    86ac:	a6000158 	sh	zero,344(s0)
    86b0:	860b0158 	lh	t3,344(s0)
    86b4:	24020032 	li	v0,50
    86b8:	240d03e8 	li	t5,1000
    86bc:	240e00c8 	li	t6,200
    86c0:	a60d01a4 	sh	t5,420(s0)
    86c4:	a60e01a2 	sh	t6,418(s0)
    86c8:	a602017c 	sh	v0,380(s0)
    86cc:	a60b015a 	sh	t3,346(s0)
    86d0:	0c000000 	jal	0 <func_80B699A0>
    86d4:	262420d8 	addiu	a0,s1,8408
    86d8:	14400022 	bnez	v0,8764 <L80B71FA8+0x15c>
    86dc:	3c020000 	lui	v0,0x0
    86e0:	9442000c 	lhu	v0,12(v0)
    86e4:	3401c000 	li	at,0xc000
    86e8:	0041082a 	slt	at,v0,at
    86ec:	1420000f 	bnez	at,872c <L80B71FA8+0x124>
    86f0:	3401c01c 	li	at,0xc01c
    86f4:	0041082a 	slt	at,v0,at
    86f8:	1020000c 	beqz	at,872c <L80B71FA8+0x124>
    86fc:	3c014316 	lui	at,0x4316
    8700:	240f0007 	li	t7,7
    8704:	44816000 	mtc1	at,$f12
    8708:	0c000000 	jal	0 <func_80B699A0>
    870c:	a60f0158 	sh	t7,344(s0)
    8710:	4600028d 	trunc.w.s	$f10,$f0
    8714:	3c020000 	lui	v0,0x0
    8718:	440c5000 	mfc1	t4,$f10
    871c:	00000000 	nop
    8720:	258900c8 	addiu	t1,t4,200
    8724:	a6090180 	sh	t1,384(s0)
    8728:	9442000c 	lhu	v0,12(v0)
    872c:	28413aaa 	slti	at,v0,15018
    8730:	1420000c 	bnez	at,8764 <L80B71FA8+0x15c>
    8734:	28413ac6 	slti	at,v0,15046
    8738:	1020000a 	beqz	at,8764 <L80B71FA8+0x15c>
    873c:	3c014316 	lui	at,0x4316
    8740:	240b0007 	li	t3,7
    8744:	44816000 	mtc1	at,$f12
    8748:	0c000000 	jal	0 <func_80B699A0>
    874c:	a60b0158 	sh	t3,344(s0)
    8750:	4600020d 	trunc.w.s	$f8,$f0
    8754:	44184000 	mfc1	t8,$f8
    8758:	00000000 	nop
    875c:	270a00c8 	addiu	t2,t8,200
    8760:	a60a0180 	sh	t2,384(s0)
    8764:	3c030000 	lui	v1,0x0
    8768:	8c630000 	lw	v1,0(v1)
    876c:	847909f2 	lh	t9,2546(v1)
    8770:	13200c59 	beqz	t9,b8d8 <L80B75278>
    8774:	3c014316 	lui	at,0x4316
    8778:	a46009f2 	sh	zero,2546(v1)
    877c:	240c0007 	li	t4,7
    8780:	44816000 	mtc1	at,$f12
    8784:	0c000000 	jal	0 <func_80B699A0>
    8788:	a60c0158 	sh	t4,344(s0)
    878c:	4600018d 	trunc.w.s	$f6,$f0
    8790:	440e3000 	mfc1	t6,$f6
    8794:	00000000 	nop
    8798:	25cf07d0 	addiu	t7,t6,2000
    879c:	10000c4e 	b	b8d8 <L80B75278>
    87a0:	a60f0180 	sh	t7,384(s0)

000087a4 <L80B72144>:
    87a4:	4405a000 	mfc1	a1,$f20
    87a8:	4406a000 	mfc1	a2,$f20
    87ac:	3c073d4c 	lui	a3,0x3d4c
    87b0:	34e7cccd 	ori	a3,a3,0xcccd
    87b4:	0c000000 	jal	0 <func_80B699A0>
    87b8:	26040068 	addiu	a0,s0,104
    87bc:	4406a000 	mfc1	a2,$f20
    87c0:	260401b0 	addiu	a0,s0,432
    87c4:	24050000 	li	a1,0
    87c8:	0c000000 	jal	0 <func_80B699A0>
    87cc:	3c074380 	lui	a3,0x4380
    87d0:	8618017a 	lh	t8,378(s0)
    87d4:	1700002c 	bnez	t8,8888 <L80B72144+0xe4>
    87d8:	00000000 	nop
    87dc:	860a01a4 	lh	t2,420(s0)
    87e0:	15400005 	bnez	t2,87f8 <L80B72144+0x54>
    87e4:	2402000a 	li	v0,10
    87e8:	a602015a 	sh	v0,346(s0)
    87ec:	8619015a 	lh	t9,346(s0)
    87f0:	10000025 	b	8888 <L80B72144+0xe4>
    87f4:	a6190158 	sh	t9,344(s0)
    87f8:	3c0141f0 	lui	at,0x41f0
    87fc:	240c0001 	li	t4,1
    8800:	44816000 	mtc1	at,$f12
    8804:	0c000000 	jal	0 <func_80B699A0>
    8808:	a60c0158 	sh	t4,344(s0)
    880c:	4600010d 	trunc.w.s	$f4,$f0
    8810:	3c014396 	lui	at,0x4396
    8814:	44816000 	mtc1	at,$f12
    8818:	440e2000 	mfc1	t6,$f4
    881c:	00000000 	nop
    8820:	25cf000a 	addiu	t7,t6,10
    8824:	0c000000 	jal	0 <func_80B699A0>
    8828:	a60f017a 	sh	t7,378(s0)
    882c:	3c014248 	lui	at,0x4248
    8830:	44816000 	mtc1	at,$f12
    8834:	0c000000 	jal	0 <func_80B699A0>
    8838:	e60001b4 	swc1	$f0,436(s0)
    883c:	8e3807c0 	lw	t8,1984(s1)
    8840:	3c014248 	lui	at,0x4248
    8844:	44813000 	mtc1	at,$f6
    8848:	8f0a0028 	lw	t2,40(t8)
    884c:	3c014396 	lui	at,0x4396
    8850:	44816000 	mtc1	at,$f12
    8854:	85590002 	lh	t9,2(t2)
    8858:	44995000 	mtc1	t9,$f10
    885c:	00000000 	nop
    8860:	46805220 	cvt.s.w	$f8,$f10
    8864:	46064101 	sub.s	$f4,$f8,$f6
    8868:	46002281 	sub.s	$f10,$f4,$f0
    886c:	0c000000 	jal	0 <func_80B699A0>
    8870:	e60a01b8 	swc1	$f10,440(s0)
    8874:	3c0144fa 	lui	at,0x44fa
    8878:	44814000 	mtc1	at,$f8
    887c:	e60001bc 	swc1	$f0,444(s0)
    8880:	e6140190 	swc1	$f20,400(s0)
    8884:	e6080194 	swc1	$f8,404(s0)
    8888:	3c0c0000 	lui	t4,0x0
    888c:	918c0000 	lbu	t4,0(t4)
    8890:	24010002 	li	at,2
    8894:	15810005 	bne	t4,at,88ac <L80B72144+0x108>
    8898:	02002025 	move	a0,s0
    889c:	0c000000 	jal	0 <func_80B699A0>
    88a0:	26250014 	addiu	a1,s1,20
    88a4:	10000c0d 	b	b8dc <L80B75278+0x4>
    88a8:	8604015c 	lh	a0,348(s0)
    88ac:	8e090004 	lw	t1,4(s0)
    88b0:	2401fffe 	li	at,-2
    88b4:	01215824 	and	t3,t1,at
    88b8:	10000c07 	b	b8d8 <L80B75278>
    88bc:	ae0b0004 	sw	t3,4(s0)

000088c0 <L80B72260>:
    88c0:	920d0150 	lbu	t5,336(s0)
    88c4:	24010001 	li	at,1
    88c8:	15a1000d 	bne	t5,at,8900 <L80B72260+0x40>
    88cc:	3c01c30c 	lui	at,0xc30c
    88d0:	44803000 	mtc1	zero,$f6
    88d4:	44812000 	mtc1	at,$f4
    88d8:	44805000 	mtc1	zero,$f10
    88dc:	24024e20 	li	v0,20000
    88e0:	240effff 	li	t6,-1
    88e4:	a60e0158 	sh	t6,344(s0)
    88e8:	a60201a4 	sh	v0,420(s0)
    88ec:	a60201a2 	sh	v0,418(s0)
    88f0:	e60601b4 	swc1	$f6,436(s0)
    88f4:	e60401b8 	swc1	$f4,440(s0)
    88f8:	10000bf7 	b	b8d8 <L80B75278>
    88fc:	e60a01bc 	swc1	$f10,444(s0)
    8900:	260401b0 	addiu	a0,s0,432
    8904:	4406a000 	mfc1	a2,$f20
    8908:	afa4004c 	sw	a0,76(sp)
    890c:	3c054580 	lui	a1,0x4580
    8910:	0c000000 	jal	0 <func_80B699A0>
    8914:	3c074380 	lui	a3,0x4380
    8918:	3c01437a 	lui	at,0x437a
    891c:	44813000 	mtc1	at,$f6
    8920:	c7a40118 	lwc1	$f4,280(sp)
    8924:	c6080090 	lwc1	$f8,144(s0)
    8928:	8fa4004c 	lw	a0,76(sp)
    892c:	46043282 	mul.s	$f10,$f6,$f4
    8930:	460a403c 	c.lt.s	$f8,$f10
    8934:	00000000 	nop
    8938:	45030005 	bc1tl	8950 <L80B72260+0x90>
    893c:	4406a000 	mfc1	a2,$f20
    8940:	860f017c 	lh	t7,380(s0)
    8944:	51e00015 	beqzl	t7,899c <L80B72260+0xdc>
    8948:	3c0144fa 	lui	at,0x44fa
    894c:	4406a000 	mfc1	a2,$f20
    8950:	3c054600 	lui	a1,0x4600
    8954:	0c000000 	jal	0 <func_80B699A0>
    8958:	3c074440 	lui	a3,0x4440
    895c:	3c054086 	lui	a1,0x4086
    8960:	4406a000 	mfc1	a2,$f20
    8964:	34a56666 	ori	a1,a1,0x6666
    8968:	26040068 	addiu	a0,s0,104
    896c:	0c000000 	jal	0 <func_80B699A0>
    8970:	3c073f40 	lui	a3,0x3f40
    8974:	3c010000 	lui	at,0x0
    8978:	c4260000 	lwc1	$f6,0(at)
    897c:	3c01457a 	lui	at,0x457a
    8980:	44812000 	mtc1	at,$f4
    8984:	24180014 	li	t8,20
    8988:	a618017a 	sh	t8,378(s0)
    898c:	e6060190 	swc1	$f6,400(s0)
    8990:	1000000b 	b	89c0 <L80B72260+0x100>
    8994:	e6040194 	swc1	$f4,404(s0)
    8998:	3c0144fa 	lui	at,0x44fa
    899c:	44814000 	mtc1	at,$f8
    89a0:	4406a000 	mfc1	a2,$f20
    89a4:	3c073dcc 	lui	a3,0x3dcc
    89a8:	e6140190 	swc1	$f20,400(s0)
    89ac:	34e7cccd 	ori	a3,a3,0xcccd
    89b0:	26040068 	addiu	a0,s0,104
    89b4:	3c053fc0 	lui	a1,0x3fc0
    89b8:	0c000000 	jal	0 <func_80B699A0>
    89bc:	e6080194 	swc1	$f8,404(s0)
    89c0:	860a017a 	lh	t2,378(s0)
    89c4:	11400006 	beqz	t2,89e0 <L80B72260+0x120>
    89c8:	3c014248 	lui	at,0x4248
    89cc:	44813000 	mtc1	at,$f6
    89d0:	c7aa0124 	lwc1	$f10,292(sp)
    89d4:	4606503c 	c.lt.s	$f10,$f6
    89d8:	00000000 	nop
    89dc:	4500000c 	bc1f	8a10 <L80B72260+0x150>
    89e0:	3c0141f0 	lui	at,0x41f0
    89e4:	44816000 	mtc1	at,$f12
    89e8:	0c000000 	jal	0 <func_80B699A0>
    89ec:	a6000158 	sh	zero,344(s0)
    89f0:	4600010d 	trunc.w.s	$f4,$f0
    89f4:	3c0143fa 	lui	at,0x43fa
    89f8:	44814000 	mtc1	at,$f8
    89fc:	e6140190 	swc1	$f20,400(s0)
    8a00:	440b2000 	mfc1	t3,$f4
    8a04:	e6080194 	swc1	$f8,404(s0)
    8a08:	256d0003 	addiu	t5,t3,3
    8a0c:	a60d017a 	sh	t5,378(s0)
    8a10:	3c0e0000 	lui	t6,0x0
    8a14:	91ce0000 	lbu	t6,0(t6)
    8a18:	24010002 	li	at,2
    8a1c:	15c10005 	bne	t6,at,8a34 <L80B72260+0x174>
    8a20:	02002025 	move	a0,s0
    8a24:	0c000000 	jal	0 <func_80B699A0>
    8a28:	26250014 	addiu	a1,s1,20
    8a2c:	10000bab 	b	b8dc <L80B75278+0x4>
    8a30:	8604015c 	lh	a0,348(s0)
    8a34:	8e0f0004 	lw	t7,4(s0)
    8a38:	2401fffe 	li	at,-2
    8a3c:	01e1c024 	and	t8,t7,at
    8a40:	10000ba5 	b	b8d8 <L80B75278>
    8a44:	ae180004 	sw	t8,4(s0)

00008a48 <L80B723E8>:
    8a48:	26040166 	addiu	a0,s0,358
    8a4c:	00002825 	move	a1,zero
    8a50:	24060014 	li	a2,20
    8a54:	0c000000 	jal	0 <func_80B699A0>
    8a58:	24070020 	li	a3,32
    8a5c:	3c01437a 	lui	at,0x437a
    8a60:	44813000 	mtc1	at,$f6
    8a64:	c7a40118 	lwc1	$f4,280(sp)
    8a68:	c60a0090 	lwc1	$f10,144(s0)
    8a6c:	46043202 	mul.s	$f8,$f6,$f4
    8a70:	4608503c 	c.lt.s	$f10,$f8
    8a74:	00000000 	nop
    8a78:	45030005 	bc1tl	8a90 <L80B723E8+0x48>
    8a7c:	4406a000 	mfc1	a2,$f20
    8a80:	860a017c 	lh	t2,380(s0)
    8a84:	51400024 	beqzl	t2,8b18 <L80B723E8+0xd0>
    8a88:	3c014248 	lui	at,0x4248
    8a8c:	4406a000 	mfc1	a2,$f20
    8a90:	26040068 	addiu	a0,s0,104
    8a94:	3c054040 	lui	a1,0x4040
    8a98:	0c000000 	jal	0 <func_80B699A0>
    8a9c:	3c073f40 	lui	a3,0x3f40
    8aa0:	3c01457a 	lui	at,0x457a
    8aa4:	44813000 	mtc1	at,$f6
    8aa8:	24190014 	li	t9,20
    8aac:	4406a000 	mfc1	a2,$f20
    8ab0:	e6140190 	swc1	$f20,400(s0)
    8ab4:	a619017a 	sh	t9,378(s0)
    8ab8:	260401b0 	addiu	a0,s0,432
    8abc:	3c054580 	lui	a1,0x4580
    8ac0:	3c074380 	lui	a3,0x4380
    8ac4:	0c000000 	jal	0 <func_80B699A0>
    8ac8:	e6060194 	swc1	$f6,404(s0)
    8acc:	3c0c0001 	lui	t4,0x1
    8ad0:	01916021 	addu	t4,t4,s1
    8ad4:	8d8c1de4 	lw	t4,7652(t4)
    8ad8:	3189001f 	andi	t1,t4,0x1f
    8adc:	15200036 	bnez	t1,8bb8 <L80B723E8+0x170>
    8ae0:	3c014416 	lui	at,0x4416
    8ae4:	44816000 	mtc1	at,$f12
    8ae8:	0c000000 	jal	0 <func_80B699A0>
    8aec:	00000000 	nop
    8af0:	3c014416 	lui	at,0x4416
    8af4:	44816000 	mtc1	at,$f12
    8af8:	0c000000 	jal	0 <func_80B699A0>
    8afc:	e60001b4 	swc1	$f0,436(s0)
    8b00:	3c01c2f0 	lui	at,0xc2f0
    8b04:	44812000 	mtc1	at,$f4
    8b08:	e60001bc 	swc1	$f0,444(s0)
    8b0c:	1000002a 	b	8bb8 <L80B723E8+0x170>
    8b10:	e60401b8 	swc1	$f4,440(s0)
    8b14:	3c014248 	lui	at,0x4248
    8b18:	44815000 	mtc1	at,$f10
    8b1c:	c7a80124 	lwc1	$f8,292(sp)
    8b20:	4608503c 	c.lt.s	$f10,$f8
    8b24:	00000000 	nop
    8b28:	45000013 	bc1f	8b78 <L80B723E8+0x130>
    8b2c:	3c010000 	lui	at,0x0
    8b30:	c4260000 	lwc1	$f6,0(at)
    8b34:	3c010000 	lui	at,0x0
    8b38:	4405a000 	mfc1	a1,$f20
    8b3c:	e6060190 	swc1	$f6,400(s0)
    8b40:	c4240000 	lwc1	$f4,0(at)
    8b44:	4406a000 	mfc1	a2,$f20
    8b48:	3c073dcc 	lui	a3,0x3dcc
    8b4c:	34e7cccd 	ori	a3,a3,0xcccd
    8b50:	26040068 	addiu	a0,s0,104
    8b54:	0c000000 	jal	0 <func_80B699A0>
    8b58:	e6040194 	swc1	$f4,404(s0)
    8b5c:	4406a000 	mfc1	a2,$f20
    8b60:	260401b0 	addiu	a0,s0,432
    8b64:	3c054500 	lui	a1,0x4500
    8b68:	0c000000 	jal	0 <func_80B699A0>
    8b6c:	3c074300 	lui	a3,0x4300
    8b70:	10000012 	b	8bbc <L80B723E8+0x174>
    8b74:	860201a4 	lh	v0,420(s0)
    8b78:	3c010000 	lui	at,0x0
    8b7c:	c42a0000 	lwc1	$f10,0(at)
    8b80:	3c0143fa 	lui	at,0x43fa
    8b84:	44814000 	mtc1	at,$f8
    8b88:	4405a000 	mfc1	a1,$f20
    8b8c:	3c063ca3 	lui	a2,0x3ca3
    8b90:	34c6d70a 	ori	a2,a2,0xd70a
    8b94:	26040068 	addiu	a0,s0,104
    8b98:	e60a0190 	swc1	$f10,400(s0)
    8b9c:	0c000000 	jal	0 <func_80B699A0>
    8ba0:	e6080194 	swc1	$f8,404(s0)
    8ba4:	4406a000 	mfc1	a2,$f20
    8ba8:	260401b0 	addiu	a0,s0,432
    8bac:	24050000 	li	a1,0
    8bb0:	0c000000 	jal	0 <func_80B699A0>
    8bb4:	3c074380 	lui	a3,0x4380
    8bb8:	860201a4 	lh	v0,420(s0)
    8bbc:	14400005 	bnez	v0,8bd4 <L80B723E8+0x18c>
    8bc0:	00000000 	nop
    8bc4:	2402000a 	li	v0,10
    8bc8:	a6020158 	sh	v0,344(s0)
    8bcc:	10000022 	b	8c58 <L80B723E8+0x210>
    8bd0:	a602015a 	sh	v0,346(s0)
    8bd4:	3c030000 	lui	v1,0x0
    8bd8:	8c630000 	lw	v1,0(v1)
    8bdc:	846b09d8 	lh	t3,2520(v1)
    8be0:	15600005 	bnez	t3,8bf8 <L80B723E8+0x1b0>
    8be4:	304d07ff 	andi	t5,v0,0x7ff
    8be8:	15a0001b 	bnez	t5,8c58 <L80B723E8+0x210>
    8bec:	28413a98 	slti	at,v0,15000
    8bf0:	5020001a 	beqzl	at,8c5c <L80B723E8+0x214>
    8bf4:	8e0c0004 	lw	t4,4(s0)
    8bf8:	a46009d8 	sh	zero,2520(v1)
    8bfc:	a60000b4 	sh	zero,180(s0)
    8c00:	860f00b4 	lh	t7,180(s0)
    8c04:	240efffe 	li	t6,-2
    8c08:	a60e0158 	sh	t6,344(s0)
    8c0c:	a60f0030 	sh	t7,48(s0)
    8c10:	8e3807c0 	lw	t8,1984(s1)
    8c14:	3c014120 	lui	at,0x4120
    8c18:	44815000 	mtc1	at,$f10
    8c1c:	8f0a0028 	lw	t2,40(t8)
    8c20:	3c014248 	lui	at,0x4248
    8c24:	44816000 	mtc1	at,$f12
    8c28:	85590002 	lh	t9,2(t2)
    8c2c:	44993000 	mtc1	t9,$f6
    8c30:	00000000 	nop
    8c34:	46803120 	cvt.s.w	$f4,$f6
    8c38:	460a2200 	add.s	$f8,$f4,$f10
    8c3c:	0c000000 	jal	0 <func_80B699A0>
    8c40:	e60801b8 	swc1	$f8,440(s0)
    8c44:	3c014248 	lui	at,0x4248
    8c48:	44816000 	mtc1	at,$f12
    8c4c:	0c000000 	jal	0 <func_80B699A0>
    8c50:	e60001b4 	swc1	$f0,436(s0)
    8c54:	e60001bc 	swc1	$f0,444(s0)
    8c58:	8e0c0004 	lw	t4,4(s0)
    8c5c:	2401fffe 	li	at,-2
    8c60:	01814824 	and	t1,t4,at
    8c64:	10000b1c 	b	b8d8 <L80B75278>
    8c68:	ae090004 	sw	t1,4(s0)

00008c6c <L80B7260C>:
    8c6c:	3c01437a 	lui	at,0x437a
    8c70:	44812000 	mtc1	at,$f4
    8c74:	c7aa0118 	lwc1	$f10,280(sp)
    8c78:	c6060090 	lwc1	$f6,144(s0)
    8c7c:	460a2202 	mul.s	$f8,$f4,$f10
    8c80:	4608303c 	c.lt.s	$f6,$f8
    8c84:	00000000 	nop
    8c88:	45030004 	bc1tl	8c9c <L80B7260C+0x30>
    8c8c:	3c01c2f0 	lui	at,0xc2f0
    8c90:	860b017c 	lh	t3,380(s0)
    8c94:	11600006 	beqz	t3,8cb0 <L80B7260C+0x44>
    8c98:	3c01c2f0 	lui	at,0xc2f0
    8c9c:	44812000 	mtc1	at,$f4
    8ca0:	240dffff 	li	t5,-1
    8ca4:	a60d0158 	sh	t5,344(s0)
    8ca8:	10000b0b 	b	b8d8 <L80B75278>
    8cac:	e60401b8 	swc1	$f4,440(s0)
    8cb0:	3c010000 	lui	at,0x0
    8cb4:	c42a0000 	lwc1	$f10,0(at)
    8cb8:	3c01447a 	lui	at,0x447a
    8cbc:	44813000 	mtc1	at,$f6
    8cc0:	26040166 	addiu	a0,s0,358
    8cc4:	2405f000 	li	a1,-4096
    8cc8:	24060014 	li	a2,20
    8ccc:	24070100 	li	a3,256
    8cd0:	e60a0190 	swc1	$f10,400(s0)
    8cd4:	0c000000 	jal	0 <func_80B699A0>
    8cd8:	e6060194 	swc1	$f6,404(s0)
    8cdc:	8e2e07c0 	lw	t6,1984(s1)
    8ce0:	3c0141a0 	lui	at,0x41a0
    8ce4:	44813000 	mtc1	at,$f6
    8ce8:	8dcf0028 	lw	t7,40(t6)
    8cec:	c6080028 	lwc1	$f8,40(s0)
    8cf0:	85f80002 	lh	t8,2(t7)
    8cf4:	44982000 	mtc1	t8,$f4
    8cf8:	00000000 	nop
    8cfc:	468022a0 	cvt.s.w	$f10,$f4
    8d00:	46065101 	sub.s	$f4,$f10,$f6
    8d04:	4604403c 	c.lt.s	$f8,$f4
    8d08:	00000000 	nop
    8d0c:	4502000a 	bc1fl	8d38 <L80B7260C+0xcc>
    8d10:	4405a000 	mfc1	a1,$f20
    8d14:	4406a000 	mfc1	a2,$f20
    8d18:	3c073dcc 	lui	a3,0x3dcc
    8d1c:	34e7cccd 	ori	a3,a3,0xcccd
    8d20:	26040068 	addiu	a0,s0,104
    8d24:	0c000000 	jal	0 <func_80B699A0>
    8d28:	3c053f00 	lui	a1,0x3f00
    8d2c:	1000005b 	b	8e9c <L80B7260C+0x230>
    8d30:	4406a000 	mfc1	a2,$f20
    8d34:	4405a000 	mfc1	a1,$f20
    8d38:	3c063c23 	lui	a2,0x3c23
    8d3c:	34c6d70a 	ori	a2,a2,0xd70a
    8d40:	0c000000 	jal	0 <func_80B699A0>
    8d44:	26040068 	addiu	a0,s0,104
    8d48:	44805000 	mtc1	zero,$f10
    8d4c:	c6060068 	lwc1	$f6,104(s0)
    8d50:	46065032 	c.eq.s	$f10,$f6
    8d54:	00000000 	nop
    8d58:	4503000f 	bc1tl	8d98 <L80B7260C+0x12c>
    8d5c:	3c014396 	lui	at,0x4396
    8d60:	8e2a07c0 	lw	t2,1984(s1)
    8d64:	3c0140a0 	lui	at,0x40a0
    8d68:	44815000 	mtc1	at,$f10
    8d6c:	8d590028 	lw	t9,40(t2)
    8d70:	872c0002 	lh	t4,2(t9)
    8d74:	448c4000 	mtc1	t4,$f8
    8d78:	00000000 	nop
    8d7c:	46804120 	cvt.s.w	$f4,$f8
    8d80:	c6080028 	lwc1	$f8,40(s0)
    8d84:	460a2181 	sub.s	$f6,$f4,$f10
    8d88:	4608303c 	c.lt.s	$f6,$f8
    8d8c:	00000000 	nop
    8d90:	45000041 	bc1f	8e98 <L80B7260C+0x22c>
    8d94:	3c014396 	lui	at,0x4396
    8d98:	44816000 	mtc1	at,$f12
    8d9c:	0c000000 	jal	0 <func_80B699A0>
    8da0:	00000000 	nop
    8da4:	3c014396 	lui	at,0x4396
    8da8:	44816000 	mtc1	at,$f12
    8dac:	0c000000 	jal	0 <func_80B699A0>
    8db0:	e60001b4 	swc1	$f0,436(s0)
    8db4:	3c014120 	lui	at,0x4120
    8db8:	44815000 	mtc1	at,$f10
    8dbc:	c6040080 	lwc1	$f4,128(s0)
    8dc0:	44804000 	mtc1	zero,$f8
    8dc4:	8e0d01c0 	lw	t5,448(s0)
    8dc8:	460a2180 	add.s	$f6,$f4,$f10
    8dcc:	2409ffe7 	li	t1,-25
    8dd0:	27a600b8 	addiu	a2,sp,184
    8dd4:	e60001bc 	swc1	$f0,444(s0)
    8dd8:	e60601b8 	swc1	$f6,440(s0)
    8ddc:	a6090158 	sh	t1,344(s0)
    8de0:	e60801b0 	swc1	$f8,432(s0)
    8de4:	accd0000 	sw	t5,0(a2)
    8de8:	8e0b01c4 	lw	t3,452(s0)
    8dec:	3c010001 	lui	at,0x1
    8df0:	0221c821 	addu	t9,s1,at
    8df4:	accb0004 	sw	t3,4(a2)
    8df8:	8e0d01c8 	lw	t5,456(s0)
    8dfc:	260400e4 	addiu	a0,s0,228
    8e00:	3c014396 	lui	at,0x4396
    8e04:	accd0008 	sw	t5,8(a2)
    8e08:	8e2e07c0 	lw	t6,1984(s1)
    8e0c:	44813000 	mtc1	at,$f6
    8e10:	240b005a 	li	t3,90
    8e14:	8dcf0028 	lw	t7,40(t6)
    8e18:	24090096 	li	t1,150
    8e1c:	3c074120 	lui	a3,0x4120
    8e20:	85f80002 	lh	t8,2(t7)
    8e24:	afb90048 	sw	t9,72(sp)
    8e28:	afa4004c 	sw	a0,76(sp)
    8e2c:	44982000 	mtc1	t8,$f4
    8e30:	00000000 	nop
    8e34:	468022a0 	cvt.s.w	$f10,$f4
    8e38:	e7aa00bc 	swc1	$f10,188(sp)
    8e3c:	8f251e10 	lw	a1,7696(t9)
    8e40:	afab0018 	sw	t3,24(sp)
    8e44:	afa90014 	sw	t1,20(sp)
    8e48:	0c000000 	jal	0 <func_80B699A0>
    8e4c:	e7a60010 	swc1	$f6,16(sp)
    8e50:	8fad0048 	lw	t5,72(sp)
    8e54:	3c0143c8 	lui	at,0x43c8
    8e58:	44814000 	mtc1	at,$f8
    8e5c:	8da51e10 	lw	a1,7696(t5)
    8e60:	240e0096 	li	t6,150
    8e64:	240f005a 	li	t7,90
    8e68:	afaf0018 	sw	t7,24(sp)
    8e6c:	afae0014 	sw	t6,20(sp)
    8e70:	8fa4004c 	lw	a0,76(sp)
    8e74:	27a600b8 	addiu	a2,sp,184
    8e78:	3c0741f0 	lui	a3,0x41f0
    8e7c:	0c000000 	jal	0 <func_80B699A0>
    8e80:	e7a80010 	swc1	$f8,16(sp)
    8e84:	02002025 	move	a0,s0
    8e88:	0c000000 	jal	0 <func_80B699A0>
    8e8c:	24050836 	li	a1,2102
    8e90:	10000a92 	b	b8dc <L80B75278+0x4>
    8e94:	8604015c 	lh	a0,348(s0)
    8e98:	4406a000 	mfc1	a2,$f20
    8e9c:	260401b0 	addiu	a0,s0,432
    8ea0:	3c054500 	lui	a1,0x4500
    8ea4:	0c000000 	jal	0 <func_80B699A0>
    8ea8:	3c074300 	lui	a3,0x4300
    8eac:	8e180004 	lw	t8,4(s0)
    8eb0:	2401fffe 	li	at,-2
    8eb4:	03015024 	and	t2,t8,at
    8eb8:	10000a87 	b	b8d8 <L80B75278>
    8ebc:	ae0a0004 	sw	t2,4(s0)

00008ec0 <L80B72860>:
    8ec0:	3c01437a 	lui	at,0x437a
    8ec4:	44815000 	mtc1	at,$f10
    8ec8:	c7a60118 	lwc1	$f6,280(sp)
    8ecc:	c6040090 	lwc1	$f4,144(s0)
    8ed0:	46065202 	mul.s	$f8,$f10,$f6
    8ed4:	4608203c 	c.lt.s	$f4,$f8
    8ed8:	00000000 	nop
    8edc:	45030004 	bc1tl	8ef0 <L80B72860+0x30>
    8ee0:	3c01c2f0 	lui	at,0xc2f0
    8ee4:	8619017c 	lh	t9,380(s0)
    8ee8:	13200006 	beqz	t9,8f04 <L80B72860+0x44>
    8eec:	3c01c2f0 	lui	at,0xc2f0
    8ef0:	44815000 	mtc1	at,$f10
    8ef4:	240cffff 	li	t4,-1
    8ef8:	a60c0158 	sh	t4,344(s0)
    8efc:	10000a76 	b	b8d8 <L80B75278>
    8f00:	e60a01b8 	swc1	$f10,440(s0)
    8f04:	26040166 	addiu	a0,s0,358
    8f08:	24051000 	li	a1,4096
    8f0c:	24060014 	li	a2,20
    8f10:	0c000000 	jal	0 <func_80B699A0>
    8f14:	2407006a 	li	a3,106
    8f18:	3c014220 	lui	at,0x4220
    8f1c:	44813000 	mtc1	at,$f6
    8f20:	c7a40124 	lwc1	$f4,292(sp)
    8f24:	4604303c 	c.lt.s	$f6,$f4
    8f28:	00000000 	nop
    8f2c:	45000013 	bc1f	8f7c <L80B72860+0xbc>
    8f30:	3c010000 	lui	at,0x0
    8f34:	c4280000 	lwc1	$f8,0(at)
    8f38:	3c014496 	lui	at,0x4496
    8f3c:	44815000 	mtc1	at,$f10
    8f40:	4406a000 	mfc1	a2,$f20
    8f44:	3c073c23 	lui	a3,0x3c23
    8f48:	34e7d70a 	ori	a3,a3,0xd70a
    8f4c:	26040068 	addiu	a0,s0,104
    8f50:	3c053f00 	lui	a1,0x3f00
    8f54:	e6080190 	swc1	$f8,400(s0)
    8f58:	0c000000 	jal	0 <func_80B699A0>
    8f5c:	e60a0194 	swc1	$f10,404(s0)
    8f60:	4406a000 	mfc1	a2,$f20
    8f64:	260401b0 	addiu	a0,s0,432
    8f68:	3c054500 	lui	a1,0x4500
    8f6c:	0c000000 	jal	0 <func_80B699A0>
    8f70:	3c074300 	lui	a3,0x4300
    8f74:	10000a59 	b	b8dc <L80B75278+0x4>
    8f78:	8604015c 	lh	a0,348(s0)
    8f7c:	2409ffff 	li	t1,-1
    8f80:	10000a55 	b	b8d8 <L80B75278>
    8f84:	a6090158 	sh	t1,344(s0)

00008f88 <L80B72928>:
    8f88:	3c0d0000 	lui	t5,0x0
    8f8c:	91ad0000 	lbu	t5,0(t5)
    8f90:	860b001c 	lh	t3,28(s0)
    8f94:	016d7021 	addu	t6,t3,t5
    8f98:	31cf0001 	andi	t7,t6,0x1
    8f9c:	11e00004 	beqz	t7,8fb0 <L80B72928+0x28>
    8fa0:	3c014120 	lui	at,0x4120
    8fa4:	44813000 	mtc1	at,$f6
    8fa8:	10000005 	b	8fc0 <L80B72928+0x38>
    8fac:	e7a6010c 	swc1	$f6,268(sp)
    8fb0:	3c01c120 	lui	at,0xc120
    8fb4:	44812000 	mtc1	at,$f4
    8fb8:	00000000 	nop
    8fbc:	e7a4010c 	swc1	$f4,268(sp)
    8fc0:	44804000 	mtc1	zero,$f8
    8fc4:	44805000 	mtc1	zero,$f10
    8fc8:	3c010000 	lui	at,0x0
    8fcc:	c42c0000 	lwc1	$f12,0(at)
    8fd0:	00002825 	move	a1,zero
    8fd4:	e7a80110 	swc1	$f8,272(sp)
    8fd8:	0c000000 	jal	0 <func_80B699A0>
    8fdc:	e7aa0114 	swc1	$f10,276(sp)
    8fe0:	27a4010c 	addiu	a0,sp,268
    8fe4:	0c000000 	jal	0 <func_80B699A0>
    8fe8:	27a50100 	addiu	a1,sp,256
    8fec:	3c020000 	lui	v0,0x0
    8ff0:	24420000 	addiu	v0,v0,0
    8ff4:	c4460000 	lwc1	$f6,0(v0)
    8ff8:	c7a40100 	lwc1	$f4,256(sp)
    8ffc:	3c180000 	lui	t8,0x0
    9000:	24010002 	li	at,2
    9004:	46043200 	add.s	$f8,$f6,$f4
    9008:	e60801b4 	swc1	$f8,436(s0)
    900c:	c7a60108 	lwc1	$f6,264(sp)
    9010:	c44a0008 	lwc1	$f10,8(v0)
    9014:	46065100 	add.s	$f4,$f10,$f6
    9018:	e60401bc 	swc1	$f4,444(s0)
    901c:	93180000 	lbu	t8,0(t8)
    9020:	57010005 	bnel	t8,at,9038 <L80B72928+0xb0>
    9024:	920a0150 	lbu	t2,336(s0)
    9028:	c4480004 	lwc1	$f8,4(v0)
    902c:	1000000e 	b	9068 <L80B72928+0xe0>
    9030:	e60801b8 	swc1	$f8,440(s0)
    9034:	920a0150 	lbu	t2,336(s0)
    9038:	15400006 	bnez	t2,9054 <L80B72928+0xcc>
    903c:	3c014170 	lui	at,0x4170
    9040:	44813000 	mtc1	at,$f6
    9044:	c44a0004 	lwc1	$f10,4(v0)
    9048:	46065101 	sub.s	$f4,$f10,$f6
    904c:	10000006 	b	9068 <L80B72928+0xe0>
    9050:	e60401b8 	swc1	$f4,440(s0)
    9054:	3c0140a0 	lui	at,0x40a0
    9058:	44815000 	mtc1	at,$f10
    905c:	c4480004 	lwc1	$f8,4(v0)
    9060:	460a4181 	sub.s	$f6,$f8,$f10
    9064:	e60601b8 	swc1	$f6,440(s0)
    9068:	c6000080 	lwc1	$f0,128(s0)
    906c:	c60401b8 	lwc1	$f4,440(s0)
    9070:	4600203e 	c.le.s	$f4,$f0
    9074:	00000000 	nop
    9078:	45000005 	bc1f	9090 <L80B72928+0x108>
    907c:	3c014040 	lui	at,0x4040
    9080:	44814000 	mtc1	at,$f8
    9084:	00000000 	nop
    9088:	46080280 	add.s	$f10,$f0,$f8
    908c:	e60a01b8 	swc1	$f10,440(s0)
    9090:	3c190000 	lui	t9,0x0
    9094:	93390000 	lbu	t9,0(t9)
    9098:	24010002 	li	at,2
    909c:	13210012 	beq	t9,at,90e8 <L80B72928+0x160>
    90a0:	00000000 	nop
    90a4:	c60201b8 	lwc1	$f2,440(s0)
    90a8:	c6000028 	lwc1	$f0,40(s0)
    90ac:	4600103c 	c.lt.s	$f2,$f0
    90b0:	00000000 	nop
    90b4:	4500000c 	bc1f	90e8 <L80B72928+0x160>
    90b8:	00000000 	nop
    90bc:	46020181 	sub.s	$f6,$f0,$f2
    90c0:	3c010000 	lui	at,0x0
    90c4:	c4240000 	lwc1	$f4,0(at)
    90c8:	44051000 	mfc1	a1,$f2
    90cc:	3c063dcc 	lui	a2,0x3dcc
    90d0:	46043202 	mul.s	$f8,$f6,$f4
    90d4:	34c6cccd 	ori	a2,a2,0xcccd
    90d8:	26040028 	addiu	a0,s0,40
    90dc:	44074000 	mfc1	a3,$f8
    90e0:	0c000000 	jal	0 <func_80B699A0>
    90e4:	00000000 	nop
    90e8:	3c0c0000 	lui	t4,0x0
    90ec:	8d8c0000 	lw	t4,0(t4)
    90f0:	3c0143c0 	lui	at,0x43c0
    90f4:	44812000 	mtc1	at,$f4
    90f8:	858909f4 	lh	t1,2548(t4)
    90fc:	4406a000 	mfc1	a2,$f20
    9100:	260401b0 	addiu	a0,s0,432
    9104:	000959c0 	sll	t3,t1,0x7
    9108:	448b5000 	mtc1	t3,$f10
    910c:	3c054600 	lui	a1,0x4600
    9110:	468051a0 	cvt.s.w	$f6,$f10
    9114:	46043200 	add.s	$f8,$f6,$f4
    9118:	44074000 	mfc1	a3,$f8
    911c:	0c000000 	jal	0 <func_80B699A0>
    9120:	00000000 	nop
    9124:	262d0014 	addiu	t5,s1,20
    9128:	afad004c 	sw	t5,76(sp)
    912c:	95af000c 	lhu	t7,12(t5)
    9130:	3c01ffff 	lui	at,0xffff
    9134:	34217fff 	ori	at,at,0x7fff
    9138:	01e1c027 	nor	t8,t7,at
    913c:	17000005 	bnez	t8,9154 <L80B72928+0x1cc>
    9140:	3c010000 	lui	at,0x0
    9144:	c4260000 	lwc1	$f6,0(at)
    9148:	c60a01a8 	lwc1	$f10,424(s0)
    914c:	46065100 	add.s	$f4,$f10,$f6
    9150:	e60401a8 	swc1	$f4,424(s0)
    9154:	3c030000 	lui	v1,0x0
    9158:	24630000 	addiu	v1,v1,0
    915c:	90620000 	lbu	v0,0(v1)
    9160:	1040000e 	beqz	v0,919c <L80B72928+0x214>
    9164:	24010001 	li	at,1
    9168:	14410006 	bne	v0,at,9184 <L80B72928+0x1fc>
    916c:	3c010000 	lui	at,0x0
    9170:	c42a0000 	lwc1	$f10,0(at)
    9174:	c60801a8 	lwc1	$f8,424(s0)
    9178:	460a4180 	add.s	$f6,$f8,$f10
    917c:	10000006 	b	9198 <L80B72928+0x210>
    9180:	e60601a8 	swc1	$f6,424(s0)
    9184:	3c010000 	lui	at,0x0
    9188:	c4280000 	lwc1	$f8,0(at)
    918c:	c60401a8 	lwc1	$f4,424(s0)
    9190:	46082280 	add.s	$f10,$f4,$f8
    9194:	e60a01a8 	swc1	$f10,424(s0)
    9198:	a0600000 	sb	zero,0(v1)
    919c:	8faa004c 	lw	t2,76(sp)
    91a0:	2401bfff 	li	at,-16385
    91a4:	9559000c 	lhu	t9,12(t2)
    91a8:	03216027 	nor	t4,t9,at
    91ac:	15800005 	bnez	t4,91c4 <L80B72928+0x23c>
    91b0:	3c010000 	lui	at,0x0
    91b4:	c4240000 	lwc1	$f4,0(at)
    91b8:	c60601a8 	lwc1	$f6,424(s0)
    91bc:	46043200 	add.s	$f8,$f6,$f4
    91c0:	e60801a8 	swc1	$f8,424(s0)
    91c4:	3c013f00 	lui	at,0x3f00
    91c8:	44812000 	mtc1	at,$f4
    91cc:	c60601ac 	lwc1	$f6,428(s0)
    91d0:	3c0141a0 	lui	at,0x41a0
    91d4:	c7aa0124 	lwc1	$f10,292(sp)
    91d8:	46043202 	mul.s	$f8,$f6,$f4
    91dc:	44813000 	mtc1	at,$f6
    91e0:	00000000 	nop
    91e4:	46064100 	add.s	$f4,$f8,$f6
    91e8:	4604503c 	c.lt.s	$f10,$f4
    91ec:	00000000 	nop
    91f0:	4502001a 	bc1fl	925c <L80B72928+0x2d4>
    91f4:	8619015e 	lh	t9,350(s0)
    91f8:	8609015e 	lh	t1,350(s0)
    91fc:	1520000c 	bnez	t1,9230 <L80B72928+0x2a8>
    9200:	3c0143fa 	lui	at,0x43fa
    9204:	44814000 	mtc1	at,$f8
    9208:	3c014120 	lui	at,0x4120
    920c:	44816000 	mtc1	at,$f12
    9210:	e6140190 	swc1	$f20,400(s0)
    9214:	0c000000 	jal	0 <func_80B699A0>
    9218:	e6080194 	swc1	$f8,404(s0)
    921c:	4600018d 	trunc.w.s	$f6,$f0
    9220:	440f3000 	mfc1	t7,$f6
    9224:	00000000 	nop
    9228:	25f80002 	addiu	t8,t7,2
    922c:	a618017a 	sh	t8,378(s0)
    9230:	3c05be4c 	lui	a1,0xbe4c
    9234:	4406a000 	mfc1	a2,$f20
    9238:	3c073dcc 	lui	a3,0x3dcc
    923c:	34e7cccd 	ori	a3,a3,0xcccd
    9240:	34a5cccd 	ori	a1,a1,0xcccd
    9244:	0c000000 	jal	0 <func_80B699A0>
    9248:	26040068 	addiu	a0,s0,104
    924c:	240a0001 	li	t2,1
    9250:	10000011 	b	9298 <L80B72928+0x310>
    9254:	a60a015e 	sh	t2,350(s0)
    9258:	8619015e 	lh	t9,350(s0)
    925c:	53200008 	beqzl	t9,9280 <L80B72928+0x2f8>
    9260:	4406a000 	mfc1	a2,$f20
    9264:	44805000 	mtc1	zero,$f10
    9268:	e6140190 	swc1	$f20,400(s0)
    926c:	3c010000 	lui	at,0x0
    9270:	e60a01b0 	swc1	$f10,432(s0)
    9274:	c4240000 	lwc1	$f4,0(at)
    9278:	e6040194 	swc1	$f4,404(s0)
    927c:	4406a000 	mfc1	a2,$f20
    9280:	3c073e19 	lui	a3,0x3e19
    9284:	34e7999a 	ori	a3,a3,0x999a
    9288:	26040068 	addiu	a0,s0,104
    928c:	0c000000 	jal	0 <func_80B699A0>
    9290:	3c054040 	lui	a1,0x4040
    9294:	a600015e 	sh	zero,350(s0)
    9298:	3c014270 	lui	at,0x4270
    929c:	44814000 	mtc1	at,$f8
    92a0:	c60001ac 	lwc1	$f0,428(s0)
    92a4:	4600403e 	c.le.s	$f8,$f0
    92a8:	00000000 	nop
    92ac:	45000003 	bc1f	92bc <L80B72928+0x334>
    92b0:	3c010000 	lui	at,0x0
    92b4:	1000000b 	b	92e4 <L80B72928+0x35c>
    92b8:	c4220000 	lwc1	$f2,0(at)
    92bc:	3c014234 	lui	at,0x4234
    92c0:	44813000 	mtc1	at,$f6
    92c4:	00000000 	nop
    92c8:	4600303e 	c.le.s	$f6,$f0
    92cc:	00000000 	nop
    92d0:	45000003 	bc1f	92e0 <L80B72928+0x358>
    92d4:	3c010000 	lui	at,0x0
    92d8:	10000002 	b	92e4 <L80B72928+0x35c>
    92dc:	c4220000 	lwc1	$f2,0(at)
    92e0:	4600a086 	mov.s	$f2,$f20
    92e4:	3c020000 	lui	v0,0x0
    92e8:	9442000c 	lhu	v0,12(v0)
    92ec:	3401b555 	li	at,0xb555
    92f0:	0041082a 	slt	at,v0,at
    92f4:	14200009 	bnez	at,931c <L80B72928+0x394>
    92f8:	3401caab 	li	at,0xcaab
    92fc:	0041082a 	slt	at,v0,at
    9300:	10200006 	beqz	at,931c <L80B72928+0x394>
    9304:	3c013fe0 	lui	at,0x3fe0
    9308:	44815000 	mtc1	at,$f10
    930c:	00000000 	nop
    9310:	460a1082 	mul.s	$f2,$f2,$f10
    9314:	1000003c 	b	9408 <L80B72928+0x480>
    9318:	00000000 	nop
    931c:	28413555 	slti	at,v0,13653
    9320:	14200008 	bnez	at,9344 <L80B72928+0x3bc>
    9324:	28414aab 	slti	at,v0,19115
    9328:	10200006 	beqz	at,9344 <L80B72928+0x3bc>
    932c:	3c013fc0 	lui	at,0x3fc0
    9330:	44812000 	mtc1	at,$f4
    9334:	00000000 	nop
    9338:	46041082 	mul.s	$f2,$f2,$f4
    933c:	10000032 	b	9408 <L80B72928+0x480>
    9340:	00000000 	nop
    9344:	3c0c0000 	lui	t4,0x0
    9348:	918c0000 	lbu	t4,0(t4)
    934c:	11800006 	beqz	t4,9368 <L80B72928+0x3e0>
    9350:	3c013fc0 	lui	at,0x3fc0
    9354:	44814000 	mtc1	at,$f8
    9358:	00000000 	nop
    935c:	46081082 	mul.s	$f2,$f2,$f8
    9360:	10000029 	b	9408 <L80B72928+0x480>
    9364:	00000000 	nop
    9368:	3c010000 	lui	at,0x0
    936c:	4449f800 	cfc1	t1,$31
    9370:	240b0001 	li	t3,1
    9374:	44cbf800 	ctc1	t3,$31
    9378:	c4260000 	lwc1	$f6,0(at)
    937c:	460032a4 	cvt.w.s	$f10,$f6
    9380:	444bf800 	cfc1	t3,$31
    9384:	00000000 	nop
    9388:	316b0078 	andi	t3,t3,0x78
    938c:	11600012 	beqz	t3,93d8 <L80B72928+0x450>
    9390:	3c014f00 	lui	at,0x4f00
    9394:	44815000 	mtc1	at,$f10
    9398:	240b0001 	li	t3,1
    939c:	460a3281 	sub.s	$f10,$f6,$f10
    93a0:	44cbf800 	ctc1	t3,$31
    93a4:	00000000 	nop
    93a8:	460052a4 	cvt.w.s	$f10,$f10
    93ac:	444bf800 	cfc1	t3,$31
    93b0:	00000000 	nop
    93b4:	316b0078 	andi	t3,t3,0x78
    93b8:	15600005 	bnez	t3,93d0 <L80B72928+0x448>
    93bc:	00000000 	nop
    93c0:	440b5000 	mfc1	t3,$f10
    93c4:	3c018000 	lui	at,0x8000
    93c8:	10000007 	b	93e8 <L80B72928+0x460>
    93cc:	01615825 	or	t3,t3,at
    93d0:	10000005 	b	93e8 <L80B72928+0x460>
    93d4:	240bffff 	li	t3,-1
    93d8:	440b5000 	mfc1	t3,$f10
    93dc:	00000000 	nop
    93e0:	0560fffb 	bltz	t3,93d0 <L80B72928+0x448>
    93e4:	00000000 	nop
    93e8:	44c9f800 	ctc1	t1,$31
    93ec:	316d00ff 	andi	t5,t3,0xff
    93f0:	11a00005 	beqz	t5,9408 <L80B72928+0x480>
    93f4:	3c014040 	lui	at,0x4040
    93f8:	44812000 	mtc1	at,$f4
    93fc:	00000000 	nop
    9400:	46041082 	mul.s	$f2,$f2,$f4
    9404:	00000000 	nop
    9408:	3c010000 	lui	at,0x0
    940c:	c4280000 	lwc1	$f8,0(at)
    9410:	3c0e0000 	lui	t6,0x0
    9414:	91ce0000 	lbu	t6,0(t6)
    9418:	46024002 	mul.s	$f0,$f8,$f2
    941c:	24010002 	li	at,2
    9420:	15c10006 	bne	t6,at,943c <L80B72928+0x4b4>
    9424:	46000306 	mov.s	$f12,$f0
    9428:	3c0140a0 	lui	at,0x40a0
    942c:	44813000 	mtc1	at,$f6
    9430:	00000000 	nop
    9434:	46060302 	mul.s	$f12,$f0,$f6
    9438:	00000000 	nop
    943c:	860f017a 	lh	t7,378(s0)
    9440:	24010001 	li	at,1
    9444:	11e1000a 	beq	t7,at,9470 <L80B72928+0x4e8>
    9448:	00000000 	nop
    944c:	e7a20120 	swc1	$f2,288(sp)
    9450:	0c000000 	jal	0 <func_80B699A0>
    9454:	e7ac011c 	swc1	$f12,284(sp)
    9458:	c7ac011c 	lwc1	$f12,284(sp)
    945c:	c7a20120 	lwc1	$f2,288(sp)
    9460:	460c003c 	c.lt.s	$f0,$f12
    9464:	00000000 	nop
    9468:	45000040 	bc1f	956c <L80B72928+0x5e4>
    946c:	00000000 	nop
    9470:	0c000000 	jal	0 <func_80B699A0>
    9474:	e7a20120 	swc1	$f2,288(sp)
    9478:	c7a20120 	lwc1	$f2,288(sp)
    947c:	c60a01a8 	lwc1	$f10,424(s0)
    9480:	46025102 	mul.s	$f4,$f10,$f2
    9484:	4604003c 	c.lt.s	$f0,$f4
    9488:	00000000 	nop
    948c:	45010007 	bc1t	94ac <L80B72928+0x524>
    9490:	3c190000 	lui	t9,0x0
    9494:	8f390000 	lw	t9,0(t9)
    9498:	92180150 	lbu	t8,336(s0)
    949c:	872c0a5e 	lh	t4,2654(t9)
    94a0:	270a0001 	addiu	t2,t8,1
    94a4:	154c0031 	bne	t2,t4,956c <L80B72928+0x5e4>
    94a8:	00000000 	nop
    94ac:	92090150 	lbu	t1,336(s0)
    94b0:	1520000f 	bnez	t1,94f0 <L80B72928+0x568>
    94b4:	240b0003 	li	t3,3
    94b8:	a60b0158 	sh	t3,344(s0)
    94bc:	3c010000 	lui	at,0x0
    94c0:	c4280000 	lwc1	$f8,0(at)
    94c4:	3c010000 	lui	at,0x0
    94c8:	e6080190 	swc1	$f8,400(s0)
    94cc:	c4260000 	lwc1	$f6,0(at)
    94d0:	3c014120 	lui	at,0x4120
    94d4:	44816000 	mtc1	at,$f12
    94d8:	0c000000 	jal	0 <func_80B699A0>
    94dc:	e6060194 	swc1	$f6,404(s0)
    94e0:	4600028d 	trunc.w.s	$f10,$f0
    94e4:	440e5000 	mfc1	t6,$f10
    94e8:	10000009 	b	9510 <L80B72928+0x588>
    94ec:	a60e017a 	sh	t6,378(s0)
    94f0:	240ffffd 	li	t7,-3
    94f4:	a60f0158 	sh	t7,344(s0)
    94f8:	e6140190 	swc1	$f20,400(s0)
    94fc:	3c010000 	lui	at,0x0
    9500:	c4240000 	lwc1	$f4,0(at)
    9504:	24180028 	li	t8,40
    9508:	a618017a 	sh	t8,378(s0)
    950c:	e6040194 	swc1	$f4,404(s0)
    9510:	3c190000 	lui	t9,0x0
    9514:	93390000 	lbu	t9,0(t9)
    9518:	24010002 	li	at,2
    951c:	1721000a 	bne	t9,at,9548 <L80B72928+0x5c0>
    9520:	3c013fc0 	lui	at,0x3fc0
    9524:	44816000 	mtc1	at,$f12
    9528:	0c000000 	jal	0 <func_80B699A0>
    952c:	00000000 	nop
    9530:	3c014040 	lui	at,0x4040
    9534:	44814000 	mtc1	at,$f8
    9538:	00000000 	nop
    953c:	46080180 	add.s	$f6,$f0,$f8
    9540:	1000000a 	b	956c <L80B72928+0x5e4>
    9544:	e6060188 	swc1	$f6,392(s0)
    9548:	3c013fc0 	lui	at,0x3fc0
    954c:	44816000 	mtc1	at,$f12
    9550:	0c000000 	jal	0 <func_80B699A0>
    9554:	00000000 	nop
    9558:	3c014090 	lui	at,0x4090
    955c:	44815000 	mtc1	at,$f10
    9560:	00000000 	nop
    9564:	460a0100 	add.s	$f4,$f0,$f10
    9568:	e6040188 	swc1	$f4,392(s0)
    956c:	3c0a0000 	lui	t2,0x0
    9570:	854a0000 	lh	t2,0(t2)
    9574:	24010003 	li	at,3
    9578:	55410011 	bnel	t2,at,95c0 <L80B72928+0x638>
    957c:	8609015a 	lh	t1,346(s0)
    9580:	860c017e 	lh	t4,382(s0)
    9584:	5180000e 	beqzl	t4,95c0 <L80B72928+0x638>
    9588:	8609015a 	lh	t1,346(s0)
    958c:	c6020024 	lwc1	$f2,36(s0)
    9590:	c60c002c 	lwc1	$f12,44(s0)
    9594:	3c014448 	lui	at,0x4448
    9598:	46021202 	mul.s	$f8,$f2,$f2
    959c:	44815000 	mtc1	at,$f10
    95a0:	460c6182 	mul.s	$f6,$f12,$f12
    95a4:	46064000 	add.s	$f0,$f8,$f6
    95a8:	46000004 	sqrt.s	$f0,$f0
    95ac:	4600503c 	c.lt.s	$f10,$f0
    95b0:	00000000 	nop
    95b4:	45020019 	bc1fl	961c <L80B72928+0x694>
    95b8:	3c0142c8 	lui	at,0x42c8
    95bc:	8609015a 	lh	t1,346(s0)
    95c0:	3c0141f0 	lui	at,0x41f0
    95c4:	44816000 	mtc1	at,$f12
    95c8:	0c000000 	jal	0 <func_80B699A0>
    95cc:	a6090158 	sh	t1,344(s0)
    95d0:	4600010d 	trunc.w.s	$f4,$f0
    95d4:	3c014120 	lui	at,0x4120
    95d8:	44816000 	mtc1	at,$f12
    95dc:	440f2000 	mfc1	t7,$f4
    95e0:	00000000 	nop
    95e4:	25f80032 	addiu	t8,t7,50
    95e8:	0c000000 	jal	0 <func_80B699A0>
    95ec:	a618017c 	sh	t8,380(s0)
    95f0:	4600020d 	trunc.w.s	$f8,$f0
    95f4:	3c0144fa 	lui	at,0x44fa
    95f8:	44803000 	mtc1	zero,$f6
    95fc:	44815000 	mtc1	at,$f10
    9600:	44094000 	mfc1	t1,$f8
    9604:	e6140190 	swc1	$f20,400(s0)
    9608:	e60601b0 	swc1	$f6,432(s0)
    960c:	252b0005 	addiu	t3,t1,5
    9610:	a60b017a 	sh	t3,378(s0)
    9614:	e60a0194 	swc1	$f10,404(s0)
    9618:	3c0142c8 	lui	at,0x42c8
    961c:	44814000 	mtc1	at,$f8
    9620:	c7a60118 	lwc1	$f6,280(sp)
    9624:	c6040090 	lwc1	$f4,144(s0)
    9628:	46064282 	mul.s	$f10,$f8,$f6
    962c:	460a203c 	c.lt.s	$f4,$f10
    9630:	00000000 	nop
    9634:	450208a9 	bc1fl	b8dc <L80B75278+0x4>
    9638:	8604015c 	lh	a0,348(s0)
    963c:	a6000158 	sh	zero,344(s0)
    9640:	860d0158 	lh	t5,344(s0)
    9644:	24020032 	li	v0,50
    9648:	240e03e8 	li	t6,1000
    964c:	240f00c8 	li	t7,200
    9650:	a60e01a4 	sh	t6,420(s0)
    9654:	a60f01a2 	sh	t7,418(s0)
    9658:	a602017c 	sh	v0,380(s0)
    965c:	1000089e 	b	b8d8 <L80B75278>
    9660:	a60d015a 	sh	t5,346(s0)

00009664 <L80B73004>:
    9664:	24180006 	li	t8,6
    9668:	a2180151 	sb	t8,337(s0)
    966c:	8faa00e0 	lw	t2,224(sp)
    9670:	24190002 	li	t9,2
    9674:	a7b90134 	sh	t9,308(sp)
    9678:	c5480024 	lwc1	$f8,36(t2)
    967c:	3c0e0000 	lui	t6,0x0
    9680:	91ce0000 	lbu	t6,0(t6)
    9684:	4600418d 	trunc.w.s	$f6,$f8
    9688:	440d3000 	mfc1	t5,$f6
    968c:	00000000 	nop
    9690:	01ae7821 	addu	t7,t5,t6
    9694:	31f80001 	andi	t8,t7,0x1
    9698:	13000004 	beqz	t8,96ac <L80B73004+0x48>
    969c:	3c0141f0 	lui	at,0x41f0
    96a0:	44812000 	mtc1	at,$f4
    96a4:	10000005 	b	96bc <L80B73004+0x58>
    96a8:	e7a4010c 	swc1	$f4,268(sp)
    96ac:	3c01c1f0 	lui	at,0xc1f0
    96b0:	44815000 	mtc1	at,$f10
    96b4:	00000000 	nop
    96b8:	e7aa010c 	swc1	$f10,268(sp)
    96bc:	3c0141f0 	lui	at,0x41f0
    96c0:	44813000 	mtc1	at,$f6
    96c4:	44804000 	mtc1	zero,$f8
    96c8:	3c010000 	lui	at,0x0
    96cc:	c42c0000 	lwc1	$f12,0(at)
    96d0:	00002825 	move	a1,zero
    96d4:	e7a60114 	swc1	$f6,276(sp)
    96d8:	0c000000 	jal	0 <func_80B699A0>
    96dc:	e7a80110 	swc1	$f8,272(sp)
    96e0:	27a4010c 	addiu	a0,sp,268
    96e4:	0c000000 	jal	0 <func_80B699A0>
    96e8:	27a50100 	addiu	a1,sp,256
    96ec:	3c020000 	lui	v0,0x0
    96f0:	24420000 	addiu	v0,v0,0
    96f4:	c4440000 	lwc1	$f4,0(v0)
    96f8:	c7aa0100 	lwc1	$f10,256(sp)
    96fc:	3c014120 	lui	at,0x4120
    9700:	4406a000 	mfc1	a2,$f20
    9704:	460a2200 	add.s	$f8,$f4,$f10
    9708:	4407a000 	mfc1	a3,$f20
    970c:	26040068 	addiu	a0,s0,104
    9710:	e60801b4 	swc1	$f8,436(s0)
    9714:	c7a40108 	lwc1	$f4,264(sp)
    9718:	c4460008 	lwc1	$f6,8(v0)
    971c:	46043280 	add.s	$f10,$f6,$f4
    9720:	44813000 	mtc1	at,$f6
    9724:	3c014580 	lui	at,0x4580
    9728:	e60a01bc 	swc1	$f10,444(s0)
    972c:	c4480004 	lwc1	$f8,4(v0)
    9730:	44815000 	mtc1	at,$f10
    9734:	3c010000 	lui	at,0x0
    9738:	46064101 	sub.s	$f4,$f8,$f6
    973c:	e60a01b0 	swc1	$f10,432(s0)
    9740:	c6080188 	lwc1	$f8,392(s0)
    9744:	e60401b8 	swc1	$f4,440(s0)
    9748:	c4260000 	lwc1	$f6,0(at)
    974c:	46064102 	mul.s	$f4,$f8,$f6
    9750:	44052000 	mfc1	a1,$f4
    9754:	0c000000 	jal	0 <func_80B699A0>
    9758:	00000000 	nop
    975c:	3c190000 	lui	t9,0x0
    9760:	87390000 	lh	t9,0(t9)
    9764:	24010003 	li	at,3
    9768:	5721001d 	bnel	t9,at,97e0 <L80B73004+0x17c>
    976c:	3c0144fa 	lui	at,0x44fa
    9770:	8e2a07c0 	lw	t2,1984(s1)
    9774:	3c0140a0 	lui	at,0x40a0
    9778:	44813000 	mtc1	at,$f6
    977c:	8d4c0028 	lw	t4,40(t2)
    9780:	3c020000 	lui	v0,0x0
    9784:	24420000 	addiu	v0,v0,0
    9788:	85890002 	lh	t1,2(t4)
    978c:	44895000 	mtc1	t1,$f10
    9790:	00000000 	nop
    9794:	46805220 	cvt.s.w	$f8,$f10
    9798:	c44a0004 	lwc1	$f10,4(v0)
    979c:	46064100 	add.s	$f4,$f8,$f6
    97a0:	460a203c 	c.lt.s	$f4,$f10
    97a4:	00000000 	nop
    97a8:	4503000d 	bc1tl	97e0 <L80B73004+0x17c>
    97ac:	3c0144fa 	lui	at,0x44fa
    97b0:	c4420000 	lwc1	$f2,0(v0)
    97b4:	c44c0008 	lwc1	$f12,8(v0)
    97b8:	3c014448 	lui	at,0x4448
    97bc:	46021202 	mul.s	$f8,$f2,$f2
    97c0:	44812000 	mtc1	at,$f4
    97c4:	460c6182 	mul.s	$f6,$f12,$f12
    97c8:	46064000 	add.s	$f0,$f8,$f6
    97cc:	46000004 	sqrt.s	$f0,$f0
    97d0:	4600203c 	c.lt.s	$f4,$f0
    97d4:	00000000 	nop
    97d8:	45000008 	bc1f	97fc <L80B73004+0x198>
    97dc:	3c0144fa 	lui	at,0x44fa
    97e0:	860b015a 	lh	t3,346(s0)
    97e4:	44815000 	mtc1	at,$f10
    97e8:	a600017a 	sh	zero,378(s0)
    97ec:	e6140190 	swc1	$f20,400(s0)
    97f0:	a60b0158 	sh	t3,344(s0)
    97f4:	10000838 	b	b8d8 <L80B75278>
    97f8:	e60a0194 	swc1	$f10,404(s0)
    97fc:	860d017a 	lh	t5,378(s0)
    9800:	11a00006 	beqz	t5,981c <L80B73004+0x1b8>
    9804:	3c0141f0 	lui	at,0x41f0
    9808:	44813000 	mtc1	at,$f6
    980c:	c7a80124 	lwc1	$f8,292(sp)
    9810:	4606403c 	c.lt.s	$f8,$f6
    9814:	00000000 	nop
    9818:	4500082f 	bc1f	b8d8 <L80B75278>
    981c:	240e0004 	li	t6,4
    9820:	a60e0158 	sh	t6,344(s0)
    9824:	8c580000 	lw	t8,0(v0)
    9828:	3c014680 	lui	at,0x4680
    982c:	44812000 	mtc1	at,$f4
    9830:	ae1801b4 	sw	t8,436(s0)
    9834:	8c4f0004 	lw	t7,4(v0)
    9838:	3c010000 	lui	at,0x0
    983c:	24190014 	li	t9,20
    9840:	ae0f01b8 	sw	t7,440(s0)
    9844:	8c580008 	lw	t8,8(v0)
    9848:	e60401b0 	swc1	$f4,432(s0)
    984c:	ae1801bc 	sw	t8,444(s0)
    9850:	c42a0000 	lwc1	$f10,0(at)
    9854:	3c010000 	lui	at,0x0
    9858:	e60a0190 	swc1	$f10,400(s0)
    985c:	c4280000 	lwc1	$f8,0(at)
    9860:	a619017a 	sh	t9,378(s0)
    9864:	1000081c 	b	b8d8 <L80B75278>
    9868:	e6080194 	swc1	$f8,404(s0)

0000986c <L80B7320C>:
    986c:	4406a000 	mfc1	a2,$f20
    9870:	260401b0 	addiu	a0,s0,432
    9874:	3c054680 	lui	a1,0x4680
    9878:	0c000000 	jal	0 <func_80B699A0>
    987c:	3c074580 	lui	a3,0x4580
    9880:	8fa40040 	lw	a0,64(sp)
    9884:	24054e20 	li	a1,20000
    9888:	24060004 	li	a2,4
    988c:	0c000000 	jal	0 <func_80B699A0>
    9890:	24071388 	li	a3,5000
    9894:	240a0032 	li	t2,50
    9898:	a20a0151 	sb	t2,337(s0)
    989c:	240c0002 	li	t4,2
    98a0:	3c090000 	lui	t1,0x0
    98a4:	a7ac0134 	sh	t4,308(sp)
    98a8:	25290000 	addiu	t1,t1,0
    98ac:	8d2d0000 	lw	t5,0(t1)
    98b0:	4406a000 	mfc1	a2,$f20
    98b4:	4407a000 	mfc1	a3,$f20
    98b8:	ae0d01b4 	sw	t5,436(s0)
    98bc:	8d2b0004 	lw	t3,4(t1)
    98c0:	8e050188 	lw	a1,392(s0)
    98c4:	26040068 	addiu	a0,s0,104
    98c8:	ae0b01b8 	sw	t3,440(s0)
    98cc:	8d2d0008 	lw	t5,8(t1)
    98d0:	0c000000 	jal	0 <func_80B699A0>
    98d4:	ae0d01bc 	sw	t5,444(s0)
    98d8:	3c0e0000 	lui	t6,0x0
    98dc:	85ce0000 	lh	t6,0(t6)
    98e0:	24010003 	li	at,3
    98e4:	55c10020 	bnel	t6,at,9968 <L80B7320C+0xfc>
    98e8:	3c0144fa 	lui	at,0x44fa
    98ec:	860f017a 	lh	t7,378(s0)
    98f0:	51e0001d 	beqzl	t7,9968 <L80B7320C+0xfc>
    98f4:	3c0144fa 	lui	at,0x44fa
    98f8:	8e3807c0 	lw	t8,1984(s1)
    98fc:	3c0140a0 	lui	at,0x40a0
    9900:	44815000 	mtc1	at,$f10
    9904:	8f190028 	lw	t9,40(t8)
    9908:	3c020000 	lui	v0,0x0
    990c:	24420000 	addiu	v0,v0,0
    9910:	872a0002 	lh	t2,2(t9)
    9914:	448a3000 	mtc1	t2,$f6
    9918:	00000000 	nop
    991c:	46803120 	cvt.s.w	$f4,$f6
    9920:	c4460004 	lwc1	$f6,4(v0)
    9924:	460a2200 	add.s	$f8,$f4,$f10
    9928:	4606403c 	c.lt.s	$f8,$f6
    992c:	00000000 	nop
    9930:	4503000d 	bc1tl	9968 <L80B7320C+0xfc>
    9934:	3c0144fa 	lui	at,0x44fa
    9938:	c4420000 	lwc1	$f2,0(v0)
    993c:	c44c0008 	lwc1	$f12,8(v0)
    9940:	3c014448 	lui	at,0x4448
    9944:	46021102 	mul.s	$f4,$f2,$f2
    9948:	44814000 	mtc1	at,$f8
    994c:	460c6282 	mul.s	$f10,$f12,$f12
    9950:	460a2000 	add.s	$f0,$f4,$f10
    9954:	46000004 	sqrt.s	$f0,$f0
    9958:	4600403c 	c.lt.s	$f8,$f0
    995c:	00000000 	nop
    9960:	45000008 	bc1f	9984 <L80B7320C+0x118>
    9964:	3c0144fa 	lui	at,0x44fa
    9968:	860c015a 	lh	t4,346(s0)
    996c:	44813000 	mtc1	at,$f6
    9970:	a600017a 	sh	zero,378(s0)
    9974:	e6140190 	swc1	$f20,400(s0)
    9978:	a60c0158 	sh	t4,344(s0)
    997c:	100007d6 	b	b8d8 <L80B75278>
    9980:	e6060194 	swc1	$f6,404(s0)
    9984:	3c014120 	lui	at,0x4120
    9988:	44815000 	mtc1	at,$f10
    998c:	c7a40124 	lwc1	$f4,292(sp)
    9990:	460a203c 	c.lt.s	$f4,$f10
    9994:	00000000 	nop
    9998:	450007cf 	bc1f	b8d8 <L80B75278>
    999c:	02002025 	move	a0,s0
    99a0:	02202825 	move	a1,s1
    99a4:	0c000000 	jal	0 <func_80B699A0>
    99a8:	00003025 	move	a2,zero
    99ac:	10400003 	beqz	v0,99bc <L80B7320C+0x150>
    99b0:	02002025 	move	a0,s0
    99b4:	0c000000 	jal	0 <func_80B699A0>
    99b8:	00002825 	move	a1,zero
    99bc:	24090005 	li	t1,5
    99c0:	a6090158 	sh	t1,344(s0)
    99c4:	3c010000 	lui	at,0x0
    99c8:	c4280000 	lwc1	$f8,0(at)
    99cc:	3c010000 	lui	at,0x0
    99d0:	240b0096 	li	t3,150
    99d4:	e6080190 	swc1	$f8,400(s0)
    99d8:	c4260000 	lwc1	$f6,0(at)
    99dc:	240d0078 	li	t5,120
    99e0:	a60b017c 	sh	t3,380(s0)
    99e4:	a600017a 	sh	zero,378(s0)
    99e8:	a600017e 	sh	zero,382(s0)
    99ec:	a60d0180 	sh	t5,384(s0)
    99f0:	3c010000 	lui	at,0x0
    99f4:	240e0004 	li	t6,4
    99f8:	e6060194 	swc1	$f6,404(s0)
    99fc:	a42e0000 	sh	t6,0(at)
    9a00:	3c010000 	lui	at,0x0
    9a04:	ac300000 	sw	s0,0(at)
    9a08:	3c0143c8 	lui	at,0x43c8
    9a0c:	44816000 	mtc1	at,$f12
    9a10:	0c000000 	jal	0 <func_80B699A0>
    9a14:	00000000 	nop
    9a18:	3c0143fa 	lui	at,0x43fa
    9a1c:	44812000 	mtc1	at,$f4
    9a20:	3c0f0000 	lui	t7,0x0
    9a24:	91ef0000 	lbu	t7,0(t7)
    9a28:	46002281 	sub.s	$f10,$f4,$f0
    9a2c:	3c010000 	lui	at,0x0
    9a30:	e42a0000 	swc1	$f10,0(at)
    9a34:	24010002 	li	at,2
    9a38:	15e10052 	bne	t7,at,9b84 <L80B7320C+0x318>
    9a3c:	3c01428c 	lui	at,0x428c
    9a40:	44814000 	mtc1	at,$f8
    9a44:	c60001ac 	lwc1	$f0,428(s0)
    9a48:	4600403c 	c.lt.s	$f8,$f0
    9a4c:	00000000 	nop
    9a50:	4500000d 	bc1f	9a88 <L80B7320C+0x21c>
    9a54:	3c0141a0 	lui	at,0x41a0
    9a58:	44816000 	mtc1	at,$f12
    9a5c:	0c000000 	jal	0 <func_80B699A0>
    9a60:	00000000 	nop
    9a64:	4600018d 	trunc.w.s	$f6,$f0
    9a68:	44023000 	mfc1	v0,$f6
    9a6c:	00000000 	nop
    9a70:	00021400 	sll	v0,v0,0x10
    9a74:	00021403 	sra	v0,v0,0x10
    9a78:	2442000a 	addiu	v0,v0,10
    9a7c:	00021400 	sll	v0,v0,0x10
    9a80:	10000033 	b	9b50 <L80B7320C+0x2e4>
    9a84:	00021403 	sra	v0,v0,0x10
    9a88:	3c014270 	lui	at,0x4270
    9a8c:	44812000 	mtc1	at,$f4
    9a90:	00000000 	nop
    9a94:	4600203c 	c.lt.s	$f4,$f0
    9a98:	00000000 	nop
    9a9c:	4500000d 	bc1f	9ad4 <L80B7320C+0x268>
    9aa0:	3c0141f0 	lui	at,0x41f0
    9aa4:	44816000 	mtc1	at,$f12
    9aa8:	0c000000 	jal	0 <func_80B699A0>
    9aac:	00000000 	nop
    9ab0:	4600028d 	trunc.w.s	$f10,$f0
    9ab4:	44025000 	mfc1	v0,$f10
    9ab8:	00000000 	nop
    9abc:	00021400 	sll	v0,v0,0x10
    9ac0:	00021403 	sra	v0,v0,0x10
    9ac4:	24420014 	addiu	v0,v0,20
    9ac8:	00021400 	sll	v0,v0,0x10
    9acc:	10000020 	b	9b50 <L80B7320C+0x2e4>
    9ad0:	00021403 	sra	v0,v0,0x10
    9ad4:	3c014248 	lui	at,0x4248
    9ad8:	44814000 	mtc1	at,$f8
    9adc:	00000000 	nop
    9ae0:	4600403c 	c.lt.s	$f8,$f0
    9ae4:	00000000 	nop
    9ae8:	4500000d 	bc1f	9b20 <L80B7320C+0x2b4>
    9aec:	3c0141f0 	lui	at,0x41f0
    9af0:	44816000 	mtc1	at,$f12
    9af4:	0c000000 	jal	0 <func_80B699A0>
    9af8:	00000000 	nop
    9afc:	4600018d 	trunc.w.s	$f6,$f0
    9b00:	44023000 	mfc1	v0,$f6
    9b04:	00000000 	nop
    9b08:	00021400 	sll	v0,v0,0x10
    9b0c:	00021403 	sra	v0,v0,0x10
    9b10:	2442001e 	addiu	v0,v0,30
    9b14:	00021400 	sll	v0,v0,0x10
    9b18:	1000000d 	b	9b50 <L80B7320C+0x2e4>
    9b1c:	00021403 	sra	v0,v0,0x10
    9b20:	3c014220 	lui	at,0x4220
    9b24:	44816000 	mtc1	at,$f12
    9b28:	0c000000 	jal	0 <func_80B699A0>
    9b2c:	00000000 	nop
    9b30:	4600010d 	trunc.w.s	$f4,$f0
    9b34:	44022000 	mfc1	v0,$f4
    9b38:	00000000 	nop
    9b3c:	00021400 	sll	v0,v0,0x10
    9b40:	00021403 	sra	v0,v0,0x10
    9b44:	24420028 	addiu	v0,v0,40
    9b48:	00021400 	sll	v0,v0,0x10
    9b4c:	00021403 	sra	v0,v0,0x10
    9b50:	3c010000 	lui	at,0x0
    9b54:	a4220000 	sh	v0,0(at)
    9b58:	00023080 	sll	a2,v0,0x2
    9b5c:	3c010000 	lui	at,0x0
    9b60:	00c23023 	subu	a2,a2,v0
    9b64:	44806000 	mtc1	zero,$f12
    9b68:	a4220000 	sh	v0,0(at)
    9b6c:	30c600ff 	andi	a2,a2,0xff
    9b70:	2405003c 	li	a1,60
    9b74:	0c000000 	jal	0 <func_80B699A0>
    9b78:	2407000a 	li	a3,10
    9b7c:	10000051 	b	9cc4 <L80B7320C+0x458>
    9b80:	00000000 	nop
    9b84:	3c01428c 	lui	at,0x428c
    9b88:	44815000 	mtc1	at,$f10
    9b8c:	c60001ac 	lwc1	$f0,428(s0)
    9b90:	4600503c 	c.lt.s	$f10,$f0
    9b94:	00000000 	nop
    9b98:	4500000d 	bc1f	9bd0 <L80B7320C+0x364>
    9b9c:	3c0140a0 	lui	at,0x40a0
    9ba0:	44816000 	mtc1	at,$f12
    9ba4:	0c000000 	jal	0 <func_80B699A0>
    9ba8:	00000000 	nop
    9bac:	4600020d 	trunc.w.s	$f8,$f0
    9bb0:	44024000 	mfc1	v0,$f8
    9bb4:	00000000 	nop
    9bb8:	00021400 	sll	v0,v0,0x10
    9bbc:	00021403 	sra	v0,v0,0x10
    9bc0:	2442000a 	addiu	v0,v0,10
    9bc4:	00021400 	sll	v0,v0,0x10
    9bc8:	10000033 	b	9c98 <L80B7320C+0x42c>
    9bcc:	00021403 	sra	v0,v0,0x10
    9bd0:	3c014270 	lui	at,0x4270
    9bd4:	44813000 	mtc1	at,$f6
    9bd8:	00000000 	nop
    9bdc:	4600303c 	c.lt.s	$f6,$f0
    9be0:	00000000 	nop
    9be4:	4500000d 	bc1f	9c1c <L80B7320C+0x3b0>
    9be8:	3c0140a0 	lui	at,0x40a0
    9bec:	44816000 	mtc1	at,$f12
    9bf0:	0c000000 	jal	0 <func_80B699A0>
    9bf4:	00000000 	nop
    9bf8:	4600010d 	trunc.w.s	$f4,$f0
    9bfc:	44022000 	mfc1	v0,$f4
    9c00:	00000000 	nop
    9c04:	00021400 	sll	v0,v0,0x10
    9c08:	00021403 	sra	v0,v0,0x10
    9c0c:	2442000f 	addiu	v0,v0,15
    9c10:	00021400 	sll	v0,v0,0x10
    9c14:	10000020 	b	9c98 <L80B7320C+0x42c>
    9c18:	00021403 	sra	v0,v0,0x10
    9c1c:	3c014248 	lui	at,0x4248
    9c20:	44815000 	mtc1	at,$f10
    9c24:	00000000 	nop
    9c28:	4600503c 	c.lt.s	$f10,$f0
    9c2c:	00000000 	nop
    9c30:	4500000d 	bc1f	9c68 <L80B7320C+0x3fc>
    9c34:	3c0140a0 	lui	at,0x40a0
    9c38:	44816000 	mtc1	at,$f12
    9c3c:	0c000000 	jal	0 <func_80B699A0>
    9c40:	00000000 	nop
    9c44:	4600020d 	trunc.w.s	$f8,$f0
    9c48:	44024000 	mfc1	v0,$f8
    9c4c:	00000000 	nop
    9c50:	00021400 	sll	v0,v0,0x10
    9c54:	00021403 	sra	v0,v0,0x10
    9c58:	24420011 	addiu	v0,v0,17
    9c5c:	00021400 	sll	v0,v0,0x10
    9c60:	1000000d 	b	9c98 <L80B7320C+0x42c>
    9c64:	00021403 	sra	v0,v0,0x10
    9c68:	3c0140a0 	lui	at,0x40a0
    9c6c:	44816000 	mtc1	at,$f12
    9c70:	0c000000 	jal	0 <func_80B699A0>
    9c74:	00000000 	nop
    9c78:	4600018d 	trunc.w.s	$f6,$f0
    9c7c:	44023000 	mfc1	v0,$f6
    9c80:	00000000 	nop
    9c84:	00021400 	sll	v0,v0,0x10
    9c88:	00021403 	sra	v0,v0,0x10
    9c8c:	24420019 	addiu	v0,v0,25
    9c90:	00021400 	sll	v0,v0,0x10
    9c94:	00021403 	sra	v0,v0,0x10
    9c98:	3c010000 	lui	at,0x0
    9c9c:	a4220000 	sh	v0,0(at)
    9ca0:	00023080 	sll	a2,v0,0x2
    9ca4:	3c010000 	lui	at,0x0
    9ca8:	00c23023 	subu	a2,a2,v0
    9cac:	44806000 	mtc1	zero,$f12
    9cb0:	a4220000 	sh	v0,0(at)
    9cb4:	30c600ff 	andi	a2,a2,0xff
    9cb8:	240500b4 	li	a1,180
    9cbc:	0c000000 	jal	0 <func_80B699A0>
    9cc0:	2407000a 	li	a3,10
    9cc4:	3c010000 	lui	at,0x0
    9cc8:	a0200000 	sb	zero,0(at)
    9ccc:	3c010000 	lui	at,0x0
    9cd0:	240f0064 	li	t7,100
    9cd4:	a42f0000 	sh	t7,0(at)
    9cd8:	3c010000 	lui	at,0x0
    9cdc:	100006fe 	b	b8d8 <L80B75278>
    9ce0:	a4200000 	sh	zero,0(at)

00009ce4 <L80B73684>:
    9ce4:	24180032 	li	t8,50
    9ce8:	3c190000 	lui	t9,0x0
    9cec:	a2180151 	sb	t8,337(s0)
    9cf0:	27390000 	addiu	t9,t9,0
    9cf4:	8f2c0000 	lw	t4,0(t9)
    9cf8:	4406a000 	mfc1	a2,$f20
    9cfc:	4407a000 	mfc1	a3,$f20
    9d00:	ae0c01b4 	sw	t4,436(s0)
    9d04:	8f2a0004 	lw	t2,4(t9)
    9d08:	26040068 	addiu	a0,s0,104
    9d0c:	3c054000 	lui	a1,0x4000
    9d10:	ae0a01b8 	sw	t2,440(s0)
    9d14:	8f2c0008 	lw	t4,8(t9)
    9d18:	0c000000 	jal	0 <func_80B699A0>
    9d1c:	ae0c01bc 	sw	t4,444(s0)
    9d20:	3c090000 	lui	t1,0x0
    9d24:	85290000 	lh	t1,0(t1)
    9d28:	24010003 	li	at,3
    9d2c:	55210020 	bnel	t1,at,9db0 <L80B73684+0xcc>
    9d30:	3c0144fa 	lui	at,0x44fa
    9d34:	860b017a 	lh	t3,378(s0)
    9d38:	5160001d 	beqzl	t3,9db0 <L80B73684+0xcc>
    9d3c:	3c0144fa 	lui	at,0x44fa
    9d40:	8e2d07c0 	lw	t5,1984(s1)
    9d44:	3c010000 	lui	at,0x0
    9d48:	c4300000 	lwc1	$f16,0(at)
    9d4c:	8dae0028 	lw	t6,40(t5)
    9d50:	3c0140a0 	lui	at,0x40a0
    9d54:	44815000 	mtc1	at,$f10
    9d58:	85cf0002 	lh	t7,2(t6)
    9d5c:	448f2000 	mtc1	t7,$f4
    9d60:	00000000 	nop
    9d64:	468023a0 	cvt.s.w	$f14,$f4
    9d68:	460a7200 	add.s	$f8,$f14,$f10
    9d6c:	4610403c 	c.lt.s	$f8,$f16
    9d70:	00000000 	nop
    9d74:	4501000d 	bc1t	9dac <L80B73684+0xc8>
    9d78:	3c010000 	lui	at,0x0
    9d7c:	c4220000 	lwc1	$f2,0(at)
    9d80:	3c010000 	lui	at,0x0
    9d84:	c42c0000 	lwc1	$f12,0(at)
    9d88:	46021182 	mul.s	$f6,$f2,$f2
    9d8c:	3c014448 	lui	at,0x4448
    9d90:	44815000 	mtc1	at,$f10
    9d94:	460c6102 	mul.s	$f4,$f12,$f12
    9d98:	46043000 	add.s	$f0,$f6,$f4
    9d9c:	46000004 	sqrt.s	$f0,$f0
    9da0:	4600503c 	c.lt.s	$f10,$f0
    9da4:	00000000 	nop
    9da8:	45000008 	bc1f	9dcc <L80B73684+0xe8>
    9dac:	3c0144fa 	lui	at,0x44fa
    9db0:	8618015a 	lh	t8,346(s0)
    9db4:	44814000 	mtc1	at,$f8
    9db8:	a600017a 	sh	zero,378(s0)
    9dbc:	e6140190 	swc1	$f20,400(s0)
    9dc0:	a6180158 	sh	t8,344(s0)
    9dc4:	100006c4 	b	b8d8 <L80B75278>
    9dc8:	e6080194 	swc1	$f8,404(s0)
    9dcc:	3c014120 	lui	at,0x4120
    9dd0:	44812000 	mtc1	at,$f4
    9dd4:	c7a60124 	lwc1	$f6,292(sp)
    9dd8:	4604303c 	c.lt.s	$f6,$f4
    9ddc:	00000000 	nop
    9de0:	450006bd 	bc1f	b8d8 <L80B75278>
    9de4:	3c014120 	lui	at,0x4120
    9de8:	44815000 	mtc1	at,$f10
    9dec:	00000000 	nop
    9df0:	460a7201 	sub.s	$f8,$f14,$f10
    9df4:	4610403c 	c.lt.s	$f8,$f16
    9df8:	00000000 	nop
    9dfc:	45000005 	bc1f	9e14 <L80B73684+0x130>
    9e00:	02002025 	move	a0,s0
    9e04:	0c000000 	jal	0 <func_80B699A0>
    9e08:	2405288a 	li	a1,10378
    9e0c:	0c000000 	jal	0 <func_80B699A0>
    9e10:	24040836 	li	a0,2102
    9e14:	02002025 	move	a0,s0
    9e18:	02202825 	move	a1,s1
    9e1c:	0c000000 	jal	0 <func_80B699A0>
    9e20:	00003025 	move	a2,zero
    9e24:	24190005 	li	t9,5
    9e28:	a6190158 	sh	t9,344(s0)
    9e2c:	3c010000 	lui	at,0x0
    9e30:	c4260000 	lwc1	$f6,0(at)
    9e34:	3c010000 	lui	at,0x0
    9e38:	240a0096 	li	t2,150
    9e3c:	e6060190 	swc1	$f6,400(s0)
    9e40:	c4240000 	lwc1	$f4,0(at)
    9e44:	240c0078 	li	t4,120
    9e48:	a60a017c 	sh	t2,380(s0)
    9e4c:	a600017a 	sh	zero,378(s0)
    9e50:	a600017e 	sh	zero,382(s0)
    9e54:	a60c0180 	sh	t4,384(s0)
    9e58:	3c010000 	lui	at,0x0
    9e5c:	24090004 	li	t1,4
    9e60:	e6040194 	swc1	$f4,404(s0)
    9e64:	a4290000 	sh	t1,0(at)
    9e68:	3c0b0000 	lui	t3,0x0
    9e6c:	916b0000 	lbu	t3,0(t3)
    9e70:	3c010000 	lui	at,0x0
    9e74:	ac300000 	sw	s0,0(at)
    9e78:	24010002 	li	at,2
    9e7c:	1561000d 	bne	t3,at,9eb4 <L80B73684+0x1d0>
    9e80:	240d001e 	li	t5,30
    9e84:	3c010000 	lui	at,0x0
    9e88:	a42d0000 	sh	t5,0(at)
    9e8c:	3c010000 	lui	at,0x0
    9e90:	240e0064 	li	t6,100
    9e94:	44806000 	mtc1	zero,$f12
    9e98:	a42e0000 	sh	t6,0(at)
    9e9c:	2405003c 	li	a1,60
    9ea0:	2406005a 	li	a2,90
    9ea4:	0c000000 	jal	0 <func_80B699A0>
    9ea8:	2407000a 	li	a3,10
    9eac:	1000000c 	b	9ee0 <L80B73684+0x1fc>
    9eb0:	00000000 	nop
    9eb4:	240f001e 	li	t7,30
    9eb8:	3c010000 	lui	at,0x0
    9ebc:	a42f0000 	sh	t7,0(at)
    9ec0:	3c010000 	lui	at,0x0
    9ec4:	24180028 	li	t8,40
    9ec8:	44806000 	mtc1	zero,$f12
    9ecc:	a4380000 	sh	t8,0(at)
    9ed0:	240500b4 	li	a1,180
    9ed4:	2406005a 	li	a2,90
    9ed8:	0c000000 	jal	0 <func_80B699A0>
    9edc:	2407000a 	li	a3,10
    9ee0:	3c010000 	lui	at,0x0
    9ee4:	a0200000 	sb	zero,0(at)
    9ee8:	3c010000 	lui	at,0x0
    9eec:	24190064 	li	t9,100
    9ef0:	a4390000 	sh	t9,0(at)
    9ef4:	3c010000 	lui	at,0x0
    9ef8:	10000677 	b	b8d8 <L80B75278>
    9efc:	a4200000 	sh	zero,0(at)

00009f00 <L80B738A0>:
    9f00:	3c014496 	lui	at,0x4496
    9f04:	44815000 	mtc1	at,$f10
    9f08:	3c014348 	lui	at,0x4348
    9f0c:	44814000 	mtc1	at,$f8
    9f10:	3c020000 	lui	v0,0x0
    9f14:	24420000 	addiu	v0,v0,0
    9f18:	e60a00f4 	swc1	$f10,244(s0)
    9f1c:	e60800f8 	swc1	$f8,248(s0)
    9f20:	844a0000 	lh	t2,0(v0)
    9f24:	4449f800 	cfc1	t1,$31
    9f28:	24050001 	li	a1,1
    9f2c:	254c0001 	addiu	t4,t2,1
    9f30:	a44c0000 	sh	t4,0(v0)
    9f34:	44c5f800 	ctc1	a1,$31
    9f38:	c60601ac 	lwc1	$f6,428(s0)
    9f3c:	3c040000 	lui	a0,0x0
    9f40:	24840000 	addiu	a0,a0,0
    9f44:	46003124 	cvt.w.s	$f4,$f6
    9f48:	4445f800 	cfc1	a1,$31
    9f4c:	00000000 	nop
    9f50:	30a50078 	andi	a1,a1,0x78
    9f54:	10a00012 	beqz	a1,9fa0 <L80B738A0+0xa0>
    9f58:	3c014f00 	lui	at,0x4f00
    9f5c:	44812000 	mtc1	at,$f4
    9f60:	24050001 	li	a1,1
    9f64:	46043101 	sub.s	$f4,$f6,$f4
    9f68:	44c5f800 	ctc1	a1,$31
    9f6c:	00000000 	nop
    9f70:	46002124 	cvt.w.s	$f4,$f4
    9f74:	4445f800 	cfc1	a1,$31
    9f78:	00000000 	nop
    9f7c:	30a50078 	andi	a1,a1,0x78
    9f80:	14a00005 	bnez	a1,9f98 <L80B738A0+0x98>
    9f84:	00000000 	nop
    9f88:	44052000 	mfc1	a1,$f4
    9f8c:	3c018000 	lui	at,0x8000
    9f90:	10000007 	b	9fb0 <L80B738A0+0xb0>
    9f94:	00a12825 	or	a1,a1,at
    9f98:	10000005 	b	9fb0 <L80B738A0+0xb0>
    9f9c:	2405ffff 	li	a1,-1
    9fa0:	44052000 	mfc1	a1,$f4
    9fa4:	00000000 	nop
    9fa8:	04a0fffb 	bltz	a1,9f98 <L80B738A0+0x98>
    9fac:	00000000 	nop
    9fb0:	44c9f800 	ctc1	t1,$31
    9fb4:	0c000000 	jal	0 <func_80B699A0>
    9fb8:	30a500ff 	andi	a1,a1,0xff
    9fbc:	8fa40040 	lw	a0,64(sp)
    9fc0:	24052af8 	li	a1,11000
    9fc4:	24060004 	li	a2,4
    9fc8:	0c000000 	jal	0 <func_80B699A0>
    9fcc:	24070bb8 	li	a3,3000
    9fd0:	3c010000 	lui	at,0x0
    9fd4:	ac300000 	sw	s0,0(at)
    9fd8:	8605008a 	lh	a1,138(s0)
    9fdc:	34018000 	li	at,0x8000
    9fe0:	8fa400e0 	lw	a0,224(sp)
    9fe4:	00a12821 	addu	a1,a1,at
    9fe8:	00052c00 	sll	a1,a1,0x10
    9fec:	00052c03 	sra	a1,a1,0x10
    9ff0:	24060005 	li	a2,5
    9ff4:	24070500 	li	a3,1280
    9ff8:	0c000000 	jal	0 <func_80B699A0>
    9ffc:	248400b6 	addiu	a0,a0,182
    a000:	3c030000 	lui	v1,0x0
    a004:	90630000 	lbu	v1,0(v1)
    a008:	1460000b 	bnez	v1,a038 <L80B738A0+0x138>
    a00c:	3c040000 	lui	a0,0x0
    a010:	24840000 	addiu	a0,a0,0
    a014:	84820000 	lh	v0,0(a0)
    a018:	28410014 	slti	at,v0,20
    a01c:	10200006 	beqz	at,a038 <L80B738A0+0x138>
    a020:	3c0b0000 	lui	t3,0x0
    a024:	856b0000 	lh	t3,0(t3)
    a028:	316d0003 	andi	t5,t3,0x3
    a02c:	15a00002 	bnez	t5,a038 <L80B738A0+0x138>
    a030:	244e0001 	addiu	t6,v0,1
    a034:	a48e0000 	sh	t6,0(a0)
    a038:	3c0f0000 	lui	t7,0x0
    a03c:	85ef0000 	lh	t7,0(t7)
    a040:	51e0009a 	beqzl	t7,a2ac <L80B738A0+0x3ac>
    a044:	262b0014 	addiu	t3,s1,20
    a048:	14600097 	bnez	v1,a2a8 <L80B738A0+0x3a8>
    a04c:	26230014 	addiu	v1,s1,20
    a050:	80620015 	lb	v0,21(v1)
    a054:	2841ffce 	slti	at,v0,-50
    a058:	10200005 	beqz	at,a070 <L80B738A0+0x170>
    a05c:	3c180000 	lui	t8,0x0
    a060:	87180000 	lh	t8,0(t8)
    a064:	2b01ffd9 	slti	at,t8,-39
    a068:	50200007 	beqzl	at,a088 <L80B738A0+0x188>
    a06c:	2841ffce 	slti	at,v0,-50
    a070:	9479000c 	lhu	t9,12(v1)
    a074:	3c01ffff 	lui	at,0xffff
    a078:	34217fff 	ori	at,at,0x7fff
    a07c:	03215027 	nor	t2,t9,at
    a080:	15400089 	bnez	t2,a2a8 <L80B738A0+0x3a8>
    a084:	2841ffce 	slti	at,v0,-50
    a088:	10200036 	beqz	at,a164 <L80B738A0+0x264>
    a08c:	3c0141f0 	lui	at,0x41f0
    a090:	44814000 	mtc1	at,$f8
    a094:	c60a01ac 	lwc1	$f10,428(s0)
    a098:	3c010000 	lui	at,0x0
    a09c:	c4240000 	lwc1	$f4,0(at)
    a0a0:	46085181 	sub.s	$f6,$f10,$f8
    a0a4:	3c014220 	lui	at,0x4220
    a0a8:	44814000 	mtc1	at,$f8
    a0ac:	46043282 	mul.s	$f10,$f6,$f4
    a0b0:	44803000 	mtc1	zero,$f6
    a0b4:	460a4001 	sub.s	$f0,$f8,$f10
    a0b8:	4600303c 	c.lt.s	$f6,$f0
    a0bc:	00000000 	nop
    a0c0:	45000028 	bc1f	a164 <L80B738A0+0x264>
    a0c4:	00000000 	nop
    a0c8:	444cf800 	cfc1	t4,$31
    a0cc:	24090001 	li	t1,1
    a0d0:	44c9f800 	ctc1	t1,$31
    a0d4:	00000000 	nop
    a0d8:	46000124 	cvt.w.s	$f4,$f0
    a0dc:	4449f800 	cfc1	t1,$31
    a0e0:	00000000 	nop
    a0e4:	31290078 	andi	t1,t1,0x78
    a0e8:	11200012 	beqz	t1,a134 <L80B738A0+0x234>
    a0ec:	3c014f00 	lui	at,0x4f00
    a0f0:	44812000 	mtc1	at,$f4
    a0f4:	24090001 	li	t1,1
    a0f8:	46040101 	sub.s	$f4,$f0,$f4
    a0fc:	44c9f800 	ctc1	t1,$31
    a100:	00000000 	nop
    a104:	46002124 	cvt.w.s	$f4,$f4
    a108:	4449f800 	cfc1	t1,$31
    a10c:	00000000 	nop
    a110:	31290078 	andi	t1,t1,0x78
    a114:	15200005 	bnez	t1,a12c <L80B738A0+0x22c>
    a118:	00000000 	nop
    a11c:	44092000 	mfc1	t1,$f4
    a120:	3c018000 	lui	at,0x8000
    a124:	10000007 	b	a144 <L80B738A0+0x244>
    a128:	01214825 	or	t1,t1,at
    a12c:	10000005 	b	a144 <L80B738A0+0x244>
    a130:	2409ffff 	li	t1,-1
    a134:	44092000 	mfc1	t1,$f4
    a138:	00000000 	nop
    a13c:	0520fffb 	bltz	t1,a12c <L80B738A0+0x22c>
    a140:	00000000 	nop
    a144:	860b008a 	lh	t3,138(s0)
    a148:	860d00b6 	lh	t5,182(s0)
    a14c:	44ccf800 	ctc1	t4,$31
    a150:	240f0001 	li	t7,1
    a154:	016d7023 	subu	t6,t3,t5
    a158:	a2090152 	sb	t1,338(s0)
    a15c:	a60e0154 	sh	t6,340(s0)
    a160:	a20f0156 	sb	t7,342(s0)
    a164:	3c010000 	lui	at,0x0
    a168:	c4280000 	lwc1	$f8,0(at)
    a16c:	3c010000 	lui	at,0x0
    a170:	24180001 	li	t8,1
    a174:	e6080198 	swc1	$f8,408(s0)
    a178:	c42a0000 	lwc1	$f10,0(at)
    a17c:	3c010000 	lui	at,0x0
    a180:	2404081a 	li	a0,2074
    a184:	e60a019c 	swc1	$f10,412(s0)
    a188:	0c000000 	jal	0 <func_80B699A0>
    a18c:	a0380000 	sb	t8,0(at)
    a190:	3c010000 	lui	at,0x0
    a194:	a4200000 	sh	zero,0(at)
    a198:	92190150 	lbu	t9,336(s0)
    a19c:	24010001 	li	at,1
    a1a0:	17210008 	bne	t9,at,a1c4 <L80B738A0+0x2c4>
    a1a4:	3c014040 	lui	at,0x4040
    a1a8:	44812000 	mtc1	at,$f4
    a1ac:	c60601ac 	lwc1	$f6,428(s0)
    a1b0:	3c0142f0 	lui	at,0x42f0
    a1b4:	44815000 	mtc1	at,$f10
    a1b8:	46043202 	mul.s	$f8,$f6,$f4
    a1bc:	10000006 	b	a1d8 <L80B738A0+0x2d8>
    a1c0:	460a4080 	add.s	$f2,$f8,$f10
    a1c4:	c60001ac 	lwc1	$f0,428(s0)
    a1c8:	3c0142f0 	lui	at,0x42f0
    a1cc:	44812000 	mtc1	at,$f4
    a1d0:	46000180 	add.s	$f6,$f0,$f0
    a1d4:	46043080 	add.s	$f2,$f6,$f4
    a1d8:	3c01437f 	lui	at,0x437f
    a1dc:	44810000 	mtc1	at,$f0
    a1e0:	00000000 	nop
    a1e4:	4602003c 	c.lt.s	$f0,$f2
    a1e8:	00000000 	nop
    a1ec:	45020003 	bc1fl	a1fc <L80B738A0+0x2fc>
    a1f0:	444af800 	cfc1	t2,$31
    a1f4:	46000086 	mov.s	$f2,$f0
    a1f8:	444af800 	cfc1	t2,$31
    a1fc:	24050001 	li	a1,1
    a200:	44c5f800 	ctc1	a1,$31
    a204:	44806000 	mtc1	zero,$f12
    a208:	46001224 	cvt.w.s	$f8,$f2
    a20c:	4445f800 	cfc1	a1,$31
    a210:	00000000 	nop
    a214:	30a50078 	andi	a1,a1,0x78
    a218:	10a00012 	beqz	a1,a264 <L80B738A0+0x364>
    a21c:	3c014f00 	lui	at,0x4f00
    a220:	44814000 	mtc1	at,$f8
    a224:	24050001 	li	a1,1
    a228:	46081201 	sub.s	$f8,$f2,$f8
    a22c:	44c5f800 	ctc1	a1,$31
    a230:	00000000 	nop
    a234:	46004224 	cvt.w.s	$f8,$f8
    a238:	4445f800 	cfc1	a1,$31
    a23c:	00000000 	nop
    a240:	30a50078 	andi	a1,a1,0x78
    a244:	14a00005 	bnez	a1,a25c <L80B738A0+0x35c>
    a248:	00000000 	nop
    a24c:	44054000 	mfc1	a1,$f8
    a250:	3c018000 	lui	at,0x8000
    a254:	10000007 	b	a274 <L80B738A0+0x374>
    a258:	00a12825 	or	a1,a1,at
    a25c:	10000005 	b	a274 <L80B738A0+0x374>
    a260:	2405ffff 	li	a1,-1
    a264:	44054000 	mfc1	a1,$f8
    a268:	00000000 	nop
    a26c:	04a0fffb 	bltz	a1,a25c <L80B738A0+0x35c>
    a270:	00000000 	nop
    a274:	44caf800 	ctc1	t2,$31
    a278:	30a500ff 	andi	a1,a1,0xff
    a27c:	24060078 	li	a2,120
    a280:	0c000000 	jal	0 <func_80B699A0>
    a284:	24070005 	li	a3,5
    a288:	240c0028 	li	t4,40
    a28c:	3c010000 	lui	at,0x0
    a290:	a42c0000 	sh	t4,0(at)
    a294:	3c010000 	lui	at,0x0
    a298:	2409000a 	li	t1,10
    a29c:	a0290000 	sb	t1,0(at)
    a2a0:	0c000000 	jal	0 <func_80B699A0>
    a2a4:	2404184a 	li	a0,6218
    a2a8:	262b0014 	addiu	t3,s1,20
    a2ac:	afab004c 	sw	t3,76(sp)
    a2b0:	8e2d07c0 	lw	t5,1984(s1)
    a2b4:	c60a0028 	lwc1	$f10,40(s0)
    a2b8:	8dae0028 	lw	t6,40(t5)
    a2bc:	85cf0002 	lh	t7,2(t6)
    a2c0:	448f3000 	mtc1	t7,$f6
    a2c4:	00000000 	nop
    a2c8:	46803120 	cvt.s.w	$f4,$f6
    a2cc:	4604503c 	c.lt.s	$f10,$f4
    a2d0:	00000000 	nop
    a2d4:	450001b0 	bc1f	a998 <L80B738A0+0xa98>
    a2d8:	00000000 	nop
    a2dc:	8618017c 	lh	t8,380(s0)
    a2e0:	2b01001f 	slti	at,t8,31
    a2e4:	54200004 	bnezl	at,a2f8 <L80B738A0+0x3f8>
    a2e8:	2402000f 	li	v0,15
    a2ec:	10000002 	b	a2f8 <L80B738A0+0x3f8>
    a2f0:	24020007 	li	v0,7
    a2f4:	2402000f 	li	v0,15
    a2f8:	8619015c 	lh	t9,348(s0)
    a2fc:	03225024 	and	t2,t9,v0
    a300:	5540006e 	bnezl	t2,a4bc <L80B738A0+0x5bc>
    a304:	8602017c 	lh	v0,380(s0)
    a308:	0c000000 	jal	0 <func_80B699A0>
    a30c:	afa20048 	sw	v0,72(sp)
    a310:	3c013f40 	lui	at,0x3f40
    a314:	44814000 	mtc1	at,$f8
    a318:	8fa30048 	lw	v1,72(sp)
    a31c:	4608003c 	c.lt.s	$f0,$f8
    a320:	00000000 	nop
    a324:	45000064 	bc1f	a4b8 <L80B738A0+0x5b8>
    a328:	3c0c0000 	lui	t4,0x0
    a32c:	858c0000 	lh	t4,0(t4)
    a330:	15800061 	bnez	t4,a4b8 <L80B738A0+0x5b8>
    a334:	3c01428c 	lui	at,0x428c
    a338:	44813000 	mtc1	at,$f6
    a33c:	c60001ac 	lwc1	$f0,428(s0)
    a340:	4600303e 	c.le.s	$f6,$f0
    a344:	00000000 	nop
    a348:	45000004 	bc1f	a35c <L80B738A0+0x45c>
    a34c:	3c01437f 	lui	at,0x437f
    a350:	44811000 	mtc1	at,$f2
    a354:	10000023 	b	a3e4 <L80B738A0+0x4e4>
    a358:	2401000f 	li	at,15
    a35c:	3c014270 	lui	at,0x4270
    a360:	44815000 	mtc1	at,$f10
    a364:	00000000 	nop
    a368:	4600503e 	c.le.s	$f10,$f0
    a36c:	00000000 	nop
    a370:	45000004 	bc1f	a384 <L80B738A0+0x484>
    a374:	3c014366 	lui	at,0x4366
    a378:	44811000 	mtc1	at,$f2
    a37c:	10000019 	b	a3e4 <L80B738A0+0x4e4>
    a380:	2401000f 	li	at,15
    a384:	3c014248 	lui	at,0x4248
    a388:	44812000 	mtc1	at,$f4
    a38c:	00000000 	nop
    a390:	4600203e 	c.le.s	$f4,$f0
    a394:	00000000 	nop
    a398:	45000004 	bc1f	a3ac <L80B738A0+0x4ac>
    a39c:	3c014348 	lui	at,0x4348
    a3a0:	44811000 	mtc1	at,$f2
    a3a4:	1000000f 	b	a3e4 <L80B738A0+0x4e4>
    a3a8:	2401000f 	li	at,15
    a3ac:	3c014220 	lui	at,0x4220
    a3b0:	44814000 	mtc1	at,$f8
    a3b4:	00000000 	nop
    a3b8:	4600403e 	c.le.s	$f8,$f0
    a3bc:	00000000 	nop
    a3c0:	45000004 	bc1f	a3d4 <L80B738A0+0x4d4>
    a3c4:	3c01432a 	lui	at,0x432a
    a3c8:	44811000 	mtc1	at,$f2
    a3cc:	10000005 	b	a3e4 <L80B738A0+0x4e4>
    a3d0:	2401000f 	li	at,15
    a3d4:	3c01430c 	lui	at,0x430c
    a3d8:	44811000 	mtc1	at,$f2
    a3dc:	00000000 	nop
    a3e0:	2401000f 	li	at,15
    a3e4:	14610005 	bne	v1,at,a3fc <L80B738A0+0x4fc>
    a3e8:	3c013f40 	lui	at,0x3f40
    a3ec:	44813000 	mtc1	at,$f6
    a3f0:	00000000 	nop
    a3f4:	46061082 	mul.s	$f2,$f2,$f6
    a3f8:	00000000 	nop
    a3fc:	3c0140a0 	lui	at,0x40a0
    a400:	44816000 	mtc1	at,$f12
    a404:	0c000000 	jal	0 <func_80B699A0>
    a408:	e7a200a4 	swc1	$f2,164(sp)
    a40c:	4449f800 	cfc1	t1,$31
    a410:	24050001 	li	a1,1
    a414:	44c5f800 	ctc1	a1,$31
    a418:	c7a200a4 	lwc1	$f2,164(sp)
    a41c:	44806000 	mtc1	zero,$f12
    a420:	460012a4 	cvt.w.s	$f10,$f2
    a424:	4445f800 	cfc1	a1,$31
    a428:	00000000 	nop
    a42c:	30a50078 	andi	a1,a1,0x78
    a430:	10a00012 	beqz	a1,a47c <L80B738A0+0x57c>
    a434:	3c014f00 	lui	at,0x4f00
    a438:	44815000 	mtc1	at,$f10
    a43c:	24050001 	li	a1,1
    a440:	460a1281 	sub.s	$f10,$f2,$f10
    a444:	44c5f800 	ctc1	a1,$31
    a448:	00000000 	nop
    a44c:	460052a4 	cvt.w.s	$f10,$f10
    a450:	4445f800 	cfc1	a1,$31
    a454:	00000000 	nop
    a458:	30a50078 	andi	a1,a1,0x78
    a45c:	14a00005 	bnez	a1,a474 <L80B738A0+0x574>
    a460:	00000000 	nop
    a464:	44055000 	mfc1	a1,$f10
    a468:	3c018000 	lui	at,0x8000
    a46c:	10000007 	b	a48c <L80B738A0+0x58c>
    a470:	00a12825 	or	a1,a1,at
    a474:	10000005 	b	a48c <L80B738A0+0x58c>
    a478:	2405ffff 	li	a1,-1
    a47c:	44055000 	mfc1	a1,$f10
    a480:	00000000 	nop
    a484:	04a0fffb 	bltz	a1,a474 <L80B738A0+0x574>
    a488:	00000000 	nop
    a48c:	44c9f800 	ctc1	t1,$31
    a490:	30a500ff 	andi	a1,a1,0xff
    a494:	24070005 	li	a3,5
    a498:	4600010d 	trunc.w.s	$f4,$f0
    a49c:	44062000 	mfc1	a2,$f4
    a4a0:	00000000 	nop
    a4a4:	00063400 	sll	a2,a2,0x10
    a4a8:	00063403 	sra	a2,a2,0x10
    a4ac:	24c6000a 	addiu	a2,a2,10
    a4b0:	0c000000 	jal	0 <func_80B699A0>
    a4b4:	30c600ff 	andi	a2,a2,0xff
    a4b8:	8602017c 	lh	v0,380(s0)
    a4bc:	2841001f 	slti	at,v0,31
    a4c0:	542000cf 	bnezl	at,a800 <L80B738A0+0x900>
    a4c4:	3058000f 	andi	t8,v0,0xf
    a4c8:	860d017a 	lh	t5,378(s0)
    a4cc:	55a00081 	bnezl	t5,a6d4 <L80B738A0+0x7d4>
    a4d0:	860b017e 	lh	t3,382(s0)
    a4d4:	44800000 	mtc1	zero,$f0
    a4d8:	3c014348 	lui	at,0x4348
    a4dc:	44814000 	mtc1	at,$f8
    a4e0:	00001025 	move	v0,zero
    a4e4:	e7a0010c 	swc1	$f0,268(sp)
    a4e8:	e7a00110 	swc1	$f0,272(sp)
    a4ec:	e7a80114 	swc1	$f8,276(sp)
    a4f0:	3c010000 	lui	at,0x0
    a4f4:	c42c0000 	lwc1	$f12,0(at)
    a4f8:	0c000000 	jal	0 <func_80B699A0>
    a4fc:	a7a200a2 	sh	v0,162(sp)
    a500:	860e008a 	lh	t6,138(s0)
    a504:	34018000 	li	at,0x8000
    a508:	00002825 	move	a1,zero
    a50c:	01c17821 	addu	t7,t6,at
    a510:	448f3000 	mtc1	t7,$f6
    a514:	3c014700 	lui	at,0x4700
    a518:	44812000 	mtc1	at,$f4
    a51c:	468032a0 	cvt.s.w	$f10,$f6
    a520:	3c010000 	lui	at,0x0
    a524:	c4260000 	lwc1	$f6,0(at)
    a528:	46045203 	div.s	$f8,$f10,$f4
    a52c:	46064282 	mul.s	$f10,$f8,$f6
    a530:	0c000000 	jal	0 <func_80B699A0>
    a534:	460a0300 	add.s	$f12,$f0,$f10
    a538:	27a4010c 	addiu	a0,sp,268
    a53c:	0c000000 	jal	0 <func_80B699A0>
    a540:	27a50100 	addiu	a1,sp,256
    a544:	c6040024 	lwc1	$f4,36(s0)
    a548:	c7a80100 	lwc1	$f8,256(sp)
    a54c:	97a200a2 	lhu	v0,162(sp)
    a550:	c60a002c 	lwc1	$f10,44(s0)
    a554:	46082180 	add.s	$f6,$f4,$f8
    a558:	3c010000 	lui	at,0x0
    a55c:	e60601b4 	swc1	$f6,436(s0)
    a560:	c7a40108 	lwc1	$f4,264(sp)
    a564:	c60001b4 	lwc1	$f0,436(s0)
    a568:	46045200 	add.s	$f8,$f10,$f4
    a56c:	46000182 	mul.s	$f6,$f0,$f0
    a570:	e60801bc 	swc1	$f8,444(s0)
    a574:	c60201bc 	lwc1	$f2,444(s0)
    a578:	c4280000 	lwc1	$f8,0(at)
    a57c:	46021282 	mul.s	$f10,$f2,$f2
    a580:	460a3100 	add.s	$f4,$f6,$f10
    a584:	4608203c 	c.lt.s	$f4,$f8
    a588:	00000000 	nop
    a58c:	45010005 	bc1t	a5a4 <L80B738A0+0x6a4>
    a590:	24420001 	addiu	v0,v0,1
    a594:	3042ffff 	andi	v0,v0,0xffff
    a598:	28410064 	slti	at,v0,100
    a59c:	1420ffd4 	bnez	at,a4f0 <L80B738A0+0x5f0>
    a5a0:	00000000 	nop
    a5a4:	0c000000 	jal	0 <func_80B699A0>
    a5a8:	00000000 	nop
    a5ac:	3c010000 	lui	at,0x0
    a5b0:	c4260000 	lwc1	$f6,0(at)
    a5b4:	4606003c 	c.lt.s	$f0,$f6
    a5b8:	00000000 	nop
    a5bc:	45020033 	bc1fl	a68c <L80B738A0+0x78c>
    a5c0:	3c014120 	lui	at,0x4120
    a5c4:	86180180 	lh	t8,384(s0)
    a5c8:	1700002f 	bnez	t8,a688 <L80B738A0+0x788>
    a5cc:	3c014270 	lui	at,0x4270
    a5d0:	44815000 	mtc1	at,$f10
    a5d4:	c60001ac 	lwc1	$f0,428(s0)
    a5d8:	4600503e 	c.le.s	$f10,$f0
    a5dc:	00000000 	nop
    a5e0:	45020004 	bc1fl	a5f4 <L80B738A0+0x6f4>
    a5e4:	3c014248 	lui	at,0x4248
    a5e8:	1000000b 	b	a618 <L80B738A0+0x718>
    a5ec:	240500ff 	li	a1,255
    a5f0:	3c014248 	lui	at,0x4248
    a5f4:	44812000 	mtc1	at,$f4
    a5f8:	00000000 	nop
    a5fc:	4600203e 	c.le.s	$f4,$f0
    a600:	00000000 	nop
    a604:	45020004 	bc1fl	a618 <L80B738A0+0x718>
    a608:	240500b4 	li	a1,180
    a60c:	10000002 	b	a618 <L80B738A0+0x718>
    a610:	240500c8 	li	a1,200
    a614:	240500b4 	li	a1,180
    a618:	44806000 	mtc1	zero,$f12
    a61c:	2406005a 	li	a2,90
    a620:	0c000000 	jal	0 <func_80B699A0>
    a624:	24070002 	li	a3,2
    a628:	3c014396 	lui	at,0x4396
    a62c:	44814000 	mtc1	at,$f8
    a630:	24020064 	li	v0,100
    a634:	24190014 	li	t9,20
    a638:	240a0014 	li	t2,20
    a63c:	a619017a 	sh	t9,378(s0)
    a640:	a602017c 	sh	v0,380(s0)
    a644:	a60a017e 	sh	t2,382(s0)
    a648:	a6020180 	sh	v0,384(s0)
    a64c:	3c010000 	lui	at,0x0
    a650:	240c0028 	li	t4,40
    a654:	e60801b8 	swc1	$f8,440(s0)
    a658:	a42c0000 	sh	t4,0(at)
    a65c:	3c0141f0 	lui	at,0x41f0
    a660:	44816000 	mtc1	at,$f12
    a664:	0c000000 	jal	0 <func_80B699A0>
    a668:	00000000 	nop
    a66c:	4600018d 	trunc.w.s	$f6,$f0
    a670:	3c010000 	lui	at,0x0
    a674:	440e3000 	mfc1	t6,$f6
    a678:	00000000 	nop
    a67c:	25cf0014 	addiu	t7,t6,20
    a680:	10000013 	b	a6d0 <L80B738A0+0x7d0>
    a684:	a42f0000 	sh	t7,0(at)
    a688:	3c014120 	lui	at,0x4120
    a68c:	44816000 	mtc1	at,$f12
    a690:	0c000000 	jal	0 <func_80B699A0>
    a694:	00000000 	nop
    a698:	4600028d 	trunc.w.s	$f10,$f0
    a69c:	3c014316 	lui	at,0x4316
    a6a0:	44816000 	mtc1	at,$f12
    a6a4:	a600017e 	sh	zero,382(s0)
    a6a8:	440c5000 	mfc1	t4,$f10
    a6ac:	00000000 	nop
    a6b0:	25890003 	addiu	t1,t4,3
    a6b4:	0c000000 	jal	0 <func_80B699A0>
    a6b8:	a609017a 	sh	t1,378(s0)
    a6bc:	3c01c28c 	lui	at,0xc28c
    a6c0:	44812000 	mtc1	at,$f4
    a6c4:	00000000 	nop
    a6c8:	46002201 	sub.s	$f8,$f4,$f0
    a6cc:	e60801b8 	swc1	$f8,440(s0)
    a6d0:	860b017e 	lh	t3,382(s0)
    a6d4:	11600016 	beqz	t3,a730 <L80B738A0+0x830>
    a6d8:	00000000 	nop
    a6dc:	44803000 	mtc1	zero,$f6
    a6e0:	3c010000 	lui	at,0x0
    a6e4:	4406a000 	mfc1	a2,$f20
    a6e8:	e4260000 	swc1	$f6,0(at)
    a6ec:	3c010000 	lui	at,0x0
    a6f0:	c42a0000 	lwc1	$f10,0(at)
    a6f4:	3c010000 	lui	at,0x0
    a6f8:	4407a000 	mfc1	a3,$f20
    a6fc:	e60a0190 	swc1	$f10,400(s0)
    a700:	c4240000 	lwc1	$f4,0(at)
    a704:	26040068 	addiu	a0,s0,104
    a708:	3c0540f0 	lui	a1,0x40f0
    a70c:	0c000000 	jal	0 <func_80B699A0>
    a710:	e6040194 	swc1	$f4,404(s0)
    a714:	8fa40040 	lw	a0,64(sp)
    a718:	24054e20 	li	a1,20000
    a71c:	24060002 	li	a2,2
    a720:	0c000000 	jal	0 <func_80B699A0>
    a724:	24070fa0 	li	a3,4000
    a728:	1000009b 	b	a998 <L80B738A0+0xa98>
    a72c:	00000000 	nop
    a730:	3c0d0000 	lui	t5,0x0
    a734:	91ad0000 	lbu	t5,0(t5)
    a738:	15a00010 	bnez	t5,a77c <L80B738A0+0x87c>
    a73c:	3c0e0000 	lui	t6,0x0
    a740:	91ce0000 	lbu	t6,0(t6)
    a744:	24010002 	li	at,2
    a748:	15c1000c 	bne	t6,at,a77c <L80B738A0+0x87c>
    a74c:	3c0144fa 	lui	at,0x44fa
    a750:	44814000 	mtc1	at,$f8
    a754:	4406a000 	mfc1	a2,$f20
    a758:	3c073e4c 	lui	a3,0x3e4c
    a75c:	e6140190 	swc1	$f20,400(s0)
    a760:	34e7cccd 	ori	a3,a3,0xcccd
    a764:	26040068 	addiu	a0,s0,104
    a768:	3c054040 	lui	a1,0x4040
    a76c:	0c000000 	jal	0 <func_80B699A0>
    a770:	e6080194 	swc1	$f8,404(s0)
    a774:	1000000d 	b	a7ac <L80B738A0+0x8ac>
    a778:	920f0150 	lbu	t7,336(s0)
    a77c:	3c010000 	lui	at,0x0
    a780:	c4260000 	lwc1	$f6,0(at)
    a784:	3c010000 	lui	at,0x0
    a788:	4406a000 	mfc1	a2,$f20
    a78c:	e6060190 	swc1	$f6,400(s0)
    a790:	c42a0000 	lwc1	$f10,0(at)
    a794:	26040068 	addiu	a0,s0,104
    a798:	3c0540a0 	lui	a1,0x40a0
    a79c:	3c073f00 	lui	a3,0x3f00
    a7a0:	0c000000 	jal	0 <func_80B699A0>
    a7a4:	e60a0194 	swc1	$f10,404(s0)
    a7a8:	920f0150 	lbu	t7,336(s0)
    a7ac:	15e00008 	bnez	t7,a7d0 <L80B738A0+0x8d0>
    a7b0:	3c010000 	lui	at,0x0
    a7b4:	c4280000 	lwc1	$f8,0(at)
    a7b8:	c60401ac 	lwc1	$f4,428(s0)
    a7bc:	3c010000 	lui	at,0x0
    a7c0:	46082182 	mul.s	$f6,$f4,$f8
    a7c4:	4606a281 	sub.s	$f10,$f20,$f6
    a7c8:	10000073 	b	a998 <L80B738A0+0xa98>
    a7cc:	e42a0000 	swc1	$f10,0(at)
    a7d0:	3c010000 	lui	at,0x0
    a7d4:	c4280000 	lwc1	$f8,0(at)
    a7d8:	c60401ac 	lwc1	$f4,428(s0)
    a7dc:	3c010000 	lui	at,0x0
    a7e0:	c42a0000 	lwc1	$f10,0(at)
    a7e4:	46082182 	mul.s	$f6,$f4,$f8
    a7e8:	3c010000 	lui	at,0x0
    a7ec:	460a3102 	mul.s	$f4,$f6,$f10
    a7f0:	4604a201 	sub.s	$f8,$f20,$f4
    a7f4:	10000068 	b	a998 <L80B738A0+0xa98>
    a7f8:	e4280000 	swc1	$f8,0(at)
    a7fc:	3058000f 	andi	t8,v0,0xf
    a800:	5700001e 	bnezl	t8,a87c <L80B738A0+0x97c>
    a804:	92090150 	lbu	t1,336(s0)
    a808:	8fb9004c 	lw	t9,76(sp)
    a80c:	3c01ffff 	lui	at,0xffff
    a810:	34217fff 	ori	at,at,0x7fff
    a814:	972a0000 	lhu	t2,0(t9)
    a818:	01416027 	nor	t4,t2,at
    a81c:	15800016 	bnez	t4,a878 <L80B738A0+0x978>
    a820:	3c014270 	lui	at,0x4270
    a824:	44815000 	mtc1	at,$f10
    a828:	c60601ac 	lwc1	$f6,428(s0)
    a82c:	4606503e 	c.le.s	$f10,$f6
    a830:	00000000 	nop
    a834:	45000004 	bc1f	a848 <L80B738A0+0x948>
    a838:	3c090000 	lui	t1,0x0
    a83c:	85290000 	lh	t1,0(t1)
    a840:	292107d0 	slti	at,t1,2000
    a844:	1420000c 	bnez	at,a878 <L80B738A0+0x978>
    a848:	3c0141f0 	lui	at,0x41f0
    a84c:	44816000 	mtc1	at,$f12
    a850:	0c000000 	jal	0 <func_80B699A0>
    a854:	00000000 	nop
    a858:	4600010d 	trunc.w.s	$f4,$f0
    a85c:	8619008a 	lh	t9,138(s0)
    a860:	860a00b6 	lh	t2,182(s0)
    a864:	440f2000 	mfc1	t7,$f4
    a868:	032a6023 	subu	t4,t9,t2
    a86c:	a60c0154 	sh	t4,340(s0)
    a870:	25f8000f 	addiu	t8,t7,15
    a874:	a2180152 	sb	t8,338(s0)
    a878:	92090150 	lbu	t1,336(s0)
    a87c:	e6140190 	swc1	$f20,400(s0)
    a880:	3c010000 	lui	at,0x0
    a884:	c4280000 	lwc1	$f8,0(at)
    a888:	1520000b 	bnez	t1,a8b8 <L80B738A0+0x9b8>
    a88c:	e6080194 	swc1	$f8,404(s0)
    a890:	3c010000 	lui	at,0x0
    a894:	c42a0000 	lwc1	$f10,0(at)
    a898:	c60601ac 	lwc1	$f6,428(s0)
    a89c:	3c010000 	lui	at,0x0
    a8a0:	c4280000 	lwc1	$f8,0(at)
    a8a4:	460a3102 	mul.s	$f4,$f6,$f10
    a8a8:	3c010000 	lui	at,0x0
    a8ac:	46044181 	sub.s	$f6,$f8,$f4
    a8b0:	1000000d 	b	a8e8 <L80B738A0+0x9e8>
    a8b4:	e4260000 	swc1	$f6,0(at)
    a8b8:	3c010000 	lui	at,0x0
    a8bc:	c4280000 	lwc1	$f8,0(at)
    a8c0:	c60a01ac 	lwc1	$f10,428(s0)
    a8c4:	3c010000 	lui	at,0x0
    a8c8:	c4260000 	lwc1	$f6,0(at)
    a8cc:	46085102 	mul.s	$f4,$f10,$f8
    a8d0:	3c010000 	lui	at,0x0
    a8d4:	c4280000 	lwc1	$f8,0(at)
    a8d8:	3c010000 	lui	at,0x0
    a8dc:	46062282 	mul.s	$f10,$f4,$f6
    a8e0:	460a4101 	sub.s	$f4,$f8,$f10
    a8e4:	e4240000 	swc1	$f4,0(at)
    a8e8:	4406a000 	mfc1	a2,$f20
    a8ec:	26040068 	addiu	a0,s0,104
    a8f0:	3c054000 	lui	a1,0x4000
    a8f4:	0c000000 	jal	0 <func_80B699A0>
    a8f8:	3c073f00 	lui	a3,0x3f00
    a8fc:	860b017c 	lh	t3,380(s0)
    a900:	15600025 	bnez	t3,a998 <L80B738A0+0xa98>
    a904:	00000000 	nop
    a908:	a2000152 	sb	zero,338(s0)
    a90c:	3c020000 	lui	v0,0x0
    a910:	84420000 	lh	v0,0(v0)
    a914:	284107d0 	slti	at,v0,2000
    a918:	1020000a 	beqz	at,a944 <L80B738A0+0xa44>
    a91c:	3c014248 	lui	at,0x4248
    a920:	44816000 	mtc1	at,$f12
    a924:	0c000000 	jal	0 <func_80B699A0>
    a928:	00000000 	nop
    a92c:	4600018d 	trunc.w.s	$f6,$f0
    a930:	44183000 	mfc1	t8,$f6
    a934:	00000000 	nop
    a938:	27190032 	addiu	t9,t8,50
    a93c:	10000016 	b	a998 <L80B738A0+0xa98>
    a940:	a619017c 	sh	t9,380(s0)
    a944:	28410bb8 	slti	at,v0,3000
    a948:	1020000a 	beqz	at,a974 <L80B738A0+0xa74>
    a94c:	3c0141a0 	lui	at,0x41a0
    a950:	44816000 	mtc1	at,$f12
    a954:	0c000000 	jal	0 <func_80B699A0>
    a958:	00000000 	nop
    a95c:	4600020d 	trunc.w.s	$f8,$f0
    a960:	440b4000 	mfc1	t3,$f8
    a964:	00000000 	nop
    a968:	256d001e 	addiu	t5,t3,30
    a96c:	1000000a 	b	a998 <L80B738A0+0xa98>
    a970:	a60d017c 	sh	t5,380(s0)
    a974:	3c014120 	lui	at,0x4120
    a978:	44816000 	mtc1	at,$f12
    a97c:	0c000000 	jal	0 <func_80B699A0>
    a980:	00000000 	nop
    a984:	4600028d 	trunc.w.s	$f10,$f0
    a988:	44195000 	mfc1	t9,$f10
    a98c:	00000000 	nop
    a990:	272a0019 	addiu	t2,t9,25
    a994:	a60a017c 	sh	t2,380(s0)
    a998:	3c0c0000 	lui	t4,0x0
    a99c:	918c0000 	lbu	t4,0(t4)
    a9a0:	3c020000 	lui	v0,0x0
    a9a4:	90420000 	lbu	v0,0(v0)
    a9a8:	11800004 	beqz	t4,a9bc <L80B738A0+0xabc>
    a9ac:	00000000 	nop
    a9b0:	44802000 	mtc1	zero,$f4
    a9b4:	3c010000 	lui	at,0x0
    a9b8:	e4240000 	swc1	$f4,0(at)
    a9bc:	14400004 	bnez	v0,a9d0 <L80B738A0+0xad0>
    a9c0:	3c090000 	lui	t1,0x0
    a9c4:	91290000 	lbu	t1,0(t1)
    a9c8:	24010002 	li	at,2
    a9cc:	1121002a 	beq	t1,at,aa78 <L80B738A0+0xb78>
    a9d0:	3c014040 	lui	at,0x4040
    a9d4:	44814000 	mtc1	at,$f8
    a9d8:	c6060068 	lwc1	$f6,104(s0)
    a9dc:	3c020000 	lui	v0,0x0
    a9e0:	84420000 	lh	v0,0(v0)
    a9e4:	4608303c 	c.lt.s	$f6,$f8
    a9e8:	00000000 	nop
    a9ec:	4500000a 	bc1f	aa18 <L80B738A0+0xb18>
    a9f0:	304b0008 	andi	t3,v0,0x8
    a9f4:	11600004 	beqz	t3,aa08 <L80B738A0+0xb08>
    a9f8:	3c010000 	lui	at,0x0
    a9fc:	c42a0000 	lwc1	$f10,0(at)
    aa00:	1000000e 	b	aa3c <L80B738A0+0xb3c>
    aa04:	e7aa0100 	swc1	$f10,256(sp)
    aa08:	3c01bf40 	lui	at,0xbf40
    aa0c:	44812000 	mtc1	at,$f4
    aa10:	1000000a 	b	aa3c <L80B738A0+0xb3c>
    aa14:	e7a40100 	swc1	$f4,256(sp)
    aa18:	304d0004 	andi	t5,v0,0x4
    aa1c:	11a00004 	beqz	t5,aa30 <L80B738A0+0xb30>
    aa20:	3c010000 	lui	at,0x0
    aa24:	c4260000 	lwc1	$f6,0(at)
    aa28:	10000004 	b	aa3c <L80B738A0+0xb3c>
    aa2c:	e7a60100 	swc1	$f6,256(sp)
    aa30:	3c010000 	lui	at,0x0
    aa34:	c4280000 	lwc1	$f8,0(at)
    aa38:	e7a80100 	swc1	$f8,256(sp)
    aa3c:	3c040000 	lui	a0,0x0
    aa40:	3c063dcc 	lui	a2,0x3dcc
    aa44:	34c6cccd 	ori	a2,a2,0xcccd
    aa48:	24840000 	addiu	a0,a0,0
    aa4c:	3c05420c 	lui	a1,0x420c
    aa50:	0c000000 	jal	0 <func_80B699A0>
    aa54:	3c074060 	lui	a3,0x4060
    aa58:	3c040000 	lui	a0,0x0
    aa5c:	3c063e99 	lui	a2,0x3e99
    aa60:	3c073dcc 	lui	a3,0x3dcc
    aa64:	34e7cccd 	ori	a3,a3,0xcccd
    aa68:	34c6999a 	ori	a2,a2,0x999a
    aa6c:	24840000 	addiu	a0,a0,0
    aa70:	0c000000 	jal	0 <func_80B699A0>
    aa74:	8fa50100 	lw	a1,256(sp)
    aa78:	8e1801c0 	lw	t8,448(s0)
    aa7c:	3c0e0000 	lui	t6,0x0
    aa80:	25ce0000 	addiu	t6,t6,0
    aa84:	add80000 	sw	t8,0(t6)
    aa88:	8e0f01c4 	lw	t7,452(s0)
    aa8c:	3c020000 	lui	v0,0x0
    aa90:	24420000 	addiu	v0,v0,0
    aa94:	adcf0004 	sw	t7,4(t6)
    aa98:	8e1801c8 	lw	t8,456(s0)
    aa9c:	3c0143c8 	lui	at,0x43c8
    aaa0:	add80008 	sw	t8,8(t6)
    aaa4:	c44a0954 	lwc1	$f10,2388(v0)
    aaa8:	c4420948 	lwc1	$f2,2376(v0)
    aaac:	c448094c 	lwc1	$f8,2380(v0)
    aab0:	c4460958 	lwc1	$f6,2392(v0)
    aab4:	46025101 	sub.s	$f4,$f10,$f2
    aab8:	46083281 	sub.s	$f10,$f6,$f8
    aabc:	e7a4010c 	swc1	$f4,268(sp)
    aac0:	c444095c 	lwc1	$f4,2396(v0)
    aac4:	c4460950 	lwc1	$f6,2384(v0)
    aac8:	e7aa0110 	swc1	$f10,272(sp)
    aacc:	44815000 	mtc1	at,$f10
    aad0:	46062201 	sub.s	$f8,$f4,$f6
    aad4:	c7a4010c 	lwc1	$f4,268(sp)
    aad8:	e7a80114 	swc1	$f8,276(sp)
    aadc:	46042182 	mul.s	$f6,$f4,$f4
    aae0:	c7a80110 	lwc1	$f8,272(sp)
    aae4:	46084102 	mul.s	$f4,$f8,$f8
    aae8:	46043200 	add.s	$f8,$f6,$f4
    aaec:	c7a60114 	lwc1	$f6,276(sp)
    aaf0:	46063102 	mul.s	$f4,$f6,$f6
    aaf4:	46044180 	add.s	$f6,$f8,$f4
    aaf8:	4606503c 	c.lt.s	$f10,$f6
    aafc:	00000000 	nop
    ab00:	4500002f 	bc1f	abc0 <L80B738A0+0xcc0>
    ab04:	3c013fc0 	lui	at,0x3fc0
    ab08:	44812000 	mtc1	at,$f4
    ab0c:	c6080068 	lwc1	$f8,104(s0)
    ab10:	44051000 	mfc1	a1,$f2
    ab14:	3c063e4c 	lui	a2,0x3e4c
    ab18:	46044002 	mul.s	$f0,$f8,$f4
    ab1c:	34c6cccd 	ori	a2,a2,0xcccd
    ab20:	26040024 	addiu	a0,s0,36
    ab24:	46000280 	add.s	$f10,$f0,$f0
    ab28:	44075000 	mfc1	a3,$f10
    ab2c:	0c000000 	jal	0 <func_80B699A0>
    ab30:	00000000 	nop
    ab34:	3c013fc0 	lui	at,0x3fc0
    ab38:	44814000 	mtc1	at,$f8
    ab3c:	c6060068 	lwc1	$f6,104(s0)
    ab40:	3c0140a0 	lui	at,0x40a0
    ab44:	44815000 	mtc1	at,$f10
    ab48:	46083002 	mul.s	$f0,$f6,$f8
    ab4c:	3c010000 	lui	at,0x0
    ab50:	c4280000 	lwc1	$f8,0(at)
    ab54:	3c020000 	lui	v0,0x0
    ab58:	24420000 	addiu	v0,v0,0
    ab5c:	3c063e4c 	lui	a2,0x3e4c
    ab60:	34c6cccd 	ori	a2,a2,0xcccd
    ab64:	46000100 	add.s	$f4,$f0,$f0
    ab68:	8c45094c 	lw	a1,2380(v0)
    ab6c:	26040028 	addiu	a0,s0,40
    ab70:	460a2182 	mul.s	$f6,$f4,$f10
    ab74:	00000000 	nop
    ab78:	46083102 	mul.s	$f4,$f6,$f8
    ab7c:	44072000 	mfc1	a3,$f4
    ab80:	0c000000 	jal	0 <func_80B699A0>
    ab84:	00000000 	nop
    ab88:	3c013fc0 	lui	at,0x3fc0
    ab8c:	44813000 	mtc1	at,$f6
    ab90:	c60a0068 	lwc1	$f10,104(s0)
    ab94:	3c020000 	lui	v0,0x0
    ab98:	24420000 	addiu	v0,v0,0
    ab9c:	46065002 	mul.s	$f0,$f10,$f6
    aba0:	3c063e4c 	lui	a2,0x3e4c
    aba4:	34c6cccd 	ori	a2,a2,0xcccd
    aba8:	8c450950 	lw	a1,2384(v0)
    abac:	2604002c 	addiu	a0,s0,44
    abb0:	46000200 	add.s	$f8,$f0,$f0
    abb4:	44074000 	mfc1	a3,$f8
    abb8:	0c000000 	jal	0 <func_80B699A0>
    abbc:	00000000 	nop
    abc0:	8fb9004c 	lw	t9,76(sp)
    abc4:	3c01ffff 	lui	at,0xffff
    abc8:	34217fff 	ori	at,at,0x7fff
    abcc:	972a0000 	lhu	t2,0(t9)
    abd0:	3c030000 	lui	v1,0x0
    abd4:	84630000 	lh	v1,0(v1)
    abd8:	01416027 	nor	t4,t2,at
    abdc:	11800004 	beqz	t4,abf0 <L80B738A0+0xcf0>
    abe0:	00000000 	nop
    abe4:	83290015 	lb	t1,21(t9)
    abe8:	2921ffe2 	slti	at,t1,-30
    abec:	10200008 	beqz	at,ac10 <L80B738A0+0xd10>
    abf0:	3c040000 	lui	a0,0x0
    abf4:	24840000 	addiu	a0,a0,0
    abf8:	84820000 	lh	v0,0(a0)
    abfc:	28410064 	slti	at,v0,100
    ac00:	10200009 	beqz	at,ac28 <L80B738A0+0xd28>
    ac04:	244b0001 	addiu	t3,v0,1
    ac08:	10000007 	b	ac28 <L80B738A0+0xd28>
    ac0c:	a48b0000 	sh	t3,0(a0)
    ac10:	3c020000 	lui	v0,0x0
    ac14:	84420000 	lh	v0,0(v0)
    ac18:	10400003 	beqz	v0,ac28 <L80B738A0+0xd28>
    ac1c:	244dffff 	addiu	t5,v0,-1
    ac20:	3c010000 	lui	at,0x0
    ac24:	a42d0000 	sh	t5,0(at)
    ac28:	3c0e0000 	lui	t6,0x0
    ac2c:	85ce0000 	lh	t6,0(t6)
    ac30:	3c040000 	lui	a0,0x0
    ac34:	24840000 	addiu	a0,a0,0
    ac38:	29c10003 	slti	at,t6,3
    ac3c:	14200029 	bnez	at,ace4 <L80B738A0+0xde4>
    ac40:	3c0f0000 	lui	t7,0x0
    ac44:	91ef0000 	lbu	t7,0(t7)
    ac48:	11e00004 	beqz	t7,ac5c <L80B738A0+0xd5c>
    ac4c:	3c180000 	lui	t8,0x0
    ac50:	87180000 	lh	t8,0(t8)
    ac54:	2b010033 	slti	at,t8,51
    ac58:	10200022 	beqz	at,ace4 <L80B738A0+0xde4>
    ac5c:	3c0a0000 	lui	t2,0x0
    ac60:	854a0000 	lh	t2,0(t2)
    ac64:	29411770 	slti	at,t2,6000
    ac68:	1020001e 	beqz	at,ace4 <L80B738A0+0xde4>
    ac6c:	00000000 	nop
    ac70:	14600004 	bnez	v1,ac84 <L80B738A0+0xd84>
    ac74:	3c0c0000 	lui	t4,0x0
    ac78:	918c0000 	lbu	t4,0(t4)
    ac7c:	11800019 	beqz	t4,ace4 <L80B738A0+0xde4>
    ac80:	00000000 	nop
    ac84:	84990000 	lh	t9,0(a0)
    ac88:	13200016 	beqz	t9,ace4 <L80B738A0+0xde4>
    ac8c:	3c090000 	lui	t1,0x0
    ac90:	85290000 	lh	t1,0(t1)
    ac94:	312b007f 	andi	t3,t1,0x7f
    ac98:	15600056 	bnez	t3,adf4 <L80B738A0+0xef4>
    ac9c:	00000000 	nop
    aca0:	0c000000 	jal	0 <func_80B699A0>
    aca4:	00000000 	nop
    aca8:	3c010000 	lui	at,0x0
    acac:	c4240000 	lwc1	$f4,0(at)
    acb0:	4604003c 	c.lt.s	$f0,$f4
    acb4:	00000000 	nop
    acb8:	4500004e 	bc1f	adf4 <L80B738A0+0xef4>
    acbc:	3c0d0000 	lui	t5,0x0
    acc0:	91ad0000 	lbu	t5,0(t5)
    acc4:	24010002 	li	at,2
    acc8:	11a1004a 	beq	t5,at,adf4 <L80B738A0+0xef4>
    accc:	3c0e0000 	lui	t6,0x0
    acd0:	8dce0000 	lw	t6,0(t6)
    acd4:	85cf0a5e 	lh	t7,2654(t6)
    acd8:	15e00046 	bnez	t7,adf4 <L80B738A0+0xef4>
    acdc:	3c030000 	lui	v1,0x0
    ace0:	84630000 	lh	v1,0(v1)
    ace4:	3c040000 	lui	a0,0x0
    ace8:	24840000 	addiu	a0,a0,0
    acec:	24180014 	li	t8,20
    acf0:	14600018 	bnez	v1,ad54 <L80B738A0+0xe54>
    acf4:	a0980000 	sb	t8,0(a0)
    acf8:	3c0a0000 	lui	t2,0x0
    acfc:	914a0000 	lbu	t2,0(t2)
    ad00:	15400014 	bnez	t2,ad54 <L80B738A0+0xe54>
    ad04:	3c020000 	lui	v0,0x0
    ad08:	90420000 	lbu	v0,0(v0)
    ad0c:	24030001 	li	v1,1
    ad10:	240c4081 	li	t4,16513
    ad14:	3c010000 	lui	at,0x0
    ad18:	14620006 	bne	v1,v0,ad34 <L80B738A0+0xe34>
    ad1c:	a42c0000 	sh	t4,0(at)
    ad20:	3c190000 	lui	t9,0x0
    ad24:	8f390ec0 	lw	t9,3776(t9)
    ad28:	33290400 	andi	t1,t9,0x400
    ad2c:	15200007 	bnez	t1,ad4c <L80B738A0+0xe4c>
    ad30:	00000000 	nop
    ad34:	10620012 	beq	v1,v0,ad80 <L80B738A0+0xe80>
    ad38:	3c0b0000 	lui	t3,0x0
    ad3c:	8d6b0ec0 	lw	t3,3776(t3)
    ad40:	316d0800 	andi	t5,t3,0x800
    ad44:	51a0000f 	beqzl	t5,ad84 <L80B738A0+0xe84>
    ad48:	a600015a 	sh	zero,346(s0)
    ad4c:	1000000c 	b	ad80 <L80B738A0+0xe80>
    ad50:	a0800000 	sb	zero,0(a0)
    ad54:	240e4082 	li	t6,16514
    ad58:	3c010000 	lui	at,0x0
    ad5c:	44806000 	mtc1	zero,$f12
    ad60:	a42e0000 	sh	t6,0(at)
    ad64:	24050001 	li	a1,1
    ad68:	24060003 	li	a2,3
    ad6c:	0c000000 	jal	0 <func_80B699A0>
    ad70:	24070001 	li	a3,1
    ad74:	3c04100a 	lui	a0,0x100a
    ad78:	0c000000 	jal	0 <func_80B699A0>
    ad7c:	348400ff 	ori	a0,a0,0xff
    ad80:	a600015a 	sh	zero,346(s0)
    ad84:	860f015a 	lh	t7,346(s0)
    ad88:	24020032 	li	v0,50
    ad8c:	24182710 	li	t8,10000
    ad90:	240a01f4 	li	t2,500
    ad94:	a61801a4 	sh	t8,420(s0)
    ad98:	a60a01a2 	sh	t2,418(s0)
    ad9c:	a602017c 	sh	v0,380(s0)
    ada0:	a600017a 	sh	zero,378(s0)
    ada4:	e6140190 	swc1	$f20,400(s0)
    ada8:	3c010000 	lui	at,0x0
    adac:	a60f0158 	sh	t7,344(s0)
    adb0:	c42a0000 	lwc1	$f10,0(at)
    adb4:	3c0c0000 	lui	t4,0x0
    adb8:	24010004 	li	at,4
    adbc:	e60a0194 	swc1	$f10,404(s0)
    adc0:	858c0000 	lh	t4,0(t4)
    adc4:	15810003 	bne	t4,at,add4 <L80B738A0+0xed4>
    adc8:	24190003 	li	t9,3
    adcc:	3c010000 	lui	at,0x0
    add0:	a4390000 	sh	t9,0(at)
    add4:	3c010000 	lui	at,0x0
    add8:	a4220000 	sh	v0,0(at)
    addc:	3c013f00 	lui	at,0x3f00
    ade0:	44813000 	mtc1	at,$f6
    ade4:	3c010000 	lui	at,0x0
    ade8:	e4260000 	swc1	$f6,0(at)
    adec:	100002ba 	b	b8d8 <L80B75278>
    adf0:	a2000152 	sb	zero,338(s0)
    adf4:	3c090000 	lui	t1,0x0
    adf8:	8d290000 	lw	t1,0(t1)
    adfc:	3c014248 	lui	at,0x4248
    ae00:	44813000 	mtc1	at,$f6
    ae04:	852b0a4a 	lh	t3,2634(t1)
    ae08:	c6080090 	lwc1	$f8,144(s0)
    ae0c:	448b2000 	mtc1	t3,$f4
    ae10:	00000000 	nop
    ae14:	468022a0 	cvt.s.w	$f10,$f4
    ae18:	46065100 	add.s	$f4,$f10,$f6
    ae1c:	4604403c 	c.lt.s	$f8,$f4
    ae20:	00000000 	nop
    ae24:	450002ac 	bc1f	b8d8 <L80B75278>
    ae28:	240d0006 	li	t5,6
    ae2c:	240e0064 	li	t6,100
    ae30:	a60d0158 	sh	t5,344(s0)
    ae34:	a60e017a 	sh	t6,378(s0)
    ae38:	8fb800e0 	lw	t8,224(sp)
    ae3c:	240f0003 	li	t7,3
    ae40:	44806000 	mtc1	zero,$f12
    ae44:	24050001 	li	a1,1
    ae48:	24060003 	li	a2,3
    ae4c:	24070001 	li	a3,1
    ae50:	0c000000 	jal	0 <func_80B699A0>
    ae54:	a70f0860 	sh	t7,2144(t8)
    ae58:	3c020000 	lui	v0,0x0
    ae5c:	24420000 	addiu	v0,v0,0
    ae60:	944a0000 	lhu	t2,0(v0)
    ae64:	02202025 	move	a0,s1
    ae68:	26251d64 	addiu	a1,s1,7524
    ae6c:	254c0001 	addiu	t4,t2,1
    ae70:	0c000000 	jal	0 <func_80B699A0>
    ae74:	a44c0000 	sh	t4,0(v0)
    ae78:	24190064 	li	t9,100
    ae7c:	3c010000 	lui	at,0x0
    ae80:	a0390000 	sb	t9,0(at)
    ae84:	3c014234 	lui	at,0x4234
    ae88:	44815000 	mtc1	at,$f10
    ae8c:	3c010000 	lui	at,0x0
    ae90:	24090005 	li	t1,5
    ae94:	e42a0000 	swc1	$f10,0(at)
    ae98:	3c010000 	lui	at,0x0
    ae9c:	a4290000 	sh	t1,0(at)
    aea0:	3c0143fa 	lui	at,0x43fa
    aea4:	44813000 	mtc1	at,$f6
    aea8:	e6140190 	swc1	$f20,400(s0)
    aeac:	3c010000 	lui	at,0x0
    aeb0:	e6060194 	swc1	$f6,404(s0)
    aeb4:	c4280000 	lwc1	$f8,0(at)
    aeb8:	c6060028 	lwc1	$f6,40(s0)
    aebc:	e608019c 	swc1	$f8,412(s0)
    aec0:	8e2b07c0 	lw	t3,1984(s1)
    aec4:	8d6d0028 	lw	t5,40(t3)
    aec8:	85ae0002 	lh	t6,2(t5)
    aecc:	448e2000 	mtc1	t6,$f4
    aed0:	00000000 	nop
    aed4:	468022a0 	cvt.s.w	$f10,$f4
    aed8:	460a303e 	c.le.s	$f6,$f10
    aedc:	00000000 	nop
    aee0:	45000007 	bc1f	af00 <L80B748A0>
    aee4:	02002025 	move	a0,s0
    aee8:	0c000000 	jal	0 <func_80B699A0>
    aeec:	24050001 	li	a1,1
    aef0:	02002025 	move	a0,s0
    aef4:	02202825 	move	a1,s1
    aef8:	0c000000 	jal	0 <func_80B699A0>
    aefc:	24060001 	li	a2,1

0000af00 <L80B748A0>:
    af00:	260f0024 	addiu	t7,s0,36
    af04:	26180028 	addiu	t8,s0,40
    af08:	260a002c 	addiu	t2,s0,44
    af0c:	afaa003c 	sw	t2,60(sp)
    af10:	afb80044 	sw	t8,68(sp)
    af14:	afaf0048 	sw	t7,72(sp)
    af18:	8fa40040 	lw	a0,64(sp)
    af1c:	24052af8 	li	a1,11000
    af20:	24060002 	li	a2,2
    af24:	0c000000 	jal	0 <func_80B699A0>
    af28:	24070fa0 	li	a3,4000
    af2c:	3c040000 	lui	a0,0x0
    af30:	3c063d4c 	lui	a2,0x3d4c
    af34:	34c6cccd 	ori	a2,a2,0xcccd
    af38:	24840000 	addiu	a0,a0,0
    af3c:	3c054170 	lui	a1,0x4170
    af40:	0c000000 	jal	0 <func_80B699A0>
    af44:	3c073f40 	lui	a3,0x3f40
    af48:	3c010000 	lui	at,0x0
    af4c:	3c0c0000 	lui	t4,0x0
    af50:	c4280000 	lwc1	$f8,0(at)
    af54:	918c0000 	lbu	t4,0(t4)
    af58:	24010001 	li	at,1
    af5c:	e7a8010c 	swc1	$f8,268(sp)
    af60:	11810007 	beq	t4,at,af80 <L80B748A0+0x80>
    af64:	3c0141f0 	lui	at,0x41f0
    af68:	44812000 	mtc1	at,$f4
    af6c:	3c01425c 	lui	at,0x425c
    af70:	44815000 	mtc1	at,$f10
    af74:	e7a40110 	swc1	$f4,272(sp)
    af78:	10000007 	b	af98 <L80B748A0+0x98>
    af7c:	e7aa0114 	swc1	$f10,276(sp)
    af80:	3c014120 	lui	at,0x4120
    af84:	44813000 	mtc1	at,$f6
    af88:	3c014248 	lui	at,0x4248
    af8c:	44814000 	mtc1	at,$f8
    af90:	e7a60110 	swc1	$f6,272(sp)
    af94:	e7a80114 	swc1	$f8,276(sp)
    af98:	8fb900e0 	lw	t9,224(sp)
    af9c:	3c014700 	lui	at,0x4700
    afa0:	44813000 	mtc1	at,$f6
    afa4:	872900b6 	lh	t1,182(t9)
    afa8:	3c010000 	lui	at,0x0
    afac:	00002825 	move	a1,zero
    afb0:	44892000 	mtc1	t1,$f4
    afb4:	00000000 	nop
    afb8:	468022a0 	cvt.s.w	$f10,$f4
    afbc:	c4240000 	lwc1	$f4,0(at)
    afc0:	46065203 	div.s	$f8,$f10,$f6
    afc4:	46044302 	mul.s	$f12,$f8,$f4
    afc8:	0c000000 	jal	0 <func_80B699A0>
    afcc:	00000000 	nop
    afd0:	3c050000 	lui	a1,0x0
    afd4:	24a50000 	addiu	a1,a1,0
    afd8:	0c000000 	jal	0 <func_80B699A0>
    afdc:	27a4010c 	addiu	a0,sp,268
    afe0:	8fa300e0 	lw	v1,224(sp)
    afe4:	3c050000 	lui	a1,0x0
    afe8:	24a50000 	addiu	a1,a1,0
    afec:	c4aa0000 	lwc1	$f10,0(a1)
    aff0:	c4660024 	lwc1	$f6,36(v1)
    aff4:	c4a40004 	lwc1	$f4,4(a1)
    aff8:	3c020000 	lui	v0,0x0
    affc:	46065200 	add.s	$f8,$f10,$f6
    b000:	24420000 	addiu	v0,v0,0
    b004:	3c0e0000 	lui	t6,0x0
    b008:	24010001 	li	at,1
    b00c:	e4a80000 	swc1	$f8,0(a1)
    b010:	c46a0028 	lwc1	$f10,40(v1)
    b014:	c4a80008 	lwc1	$f8,8(a1)
    b018:	460a2180 	add.s	$f6,$f4,$f10
    b01c:	e4a60004 	swc1	$f6,4(a1)
    b020:	c464002c 	lwc1	$f4,44(v1)
    b024:	46044280 	add.s	$f10,$f8,$f4
    b028:	e4aa0008 	swc1	$f10,8(a1)
    b02c:	8c6d0024 	lw	t5,36(v1)
    b030:	ac4d0000 	sw	t5,0(v0)
    b034:	8c6b0028 	lw	t3,40(v1)
    b038:	ac4b0004 	sw	t3,4(v0)
    b03c:	8c6d002c 	lw	t5,44(v1)
    b040:	ac4d0008 	sw	t5,8(v0)
    b044:	91ce0000 	lbu	t6,0(t6)
    b048:	11c10006 	beq	t6,at,b064 <L80B748A0+0x164>
    b04c:	3c014220 	lui	at,0x4220
    b050:	44814000 	mtc1	at,$f8
    b054:	c4460004 	lwc1	$f6,4(v0)
    b058:	46083100 	add.s	$f4,$f6,$f8
    b05c:	10000006 	b	b078 <L80B748A0+0x178>
    b060:	e4440004 	swc1	$f4,4(v0)
    b064:	3c0141c8 	lui	at,0x41c8
    b068:	44813000 	mtc1	at,$f6
    b06c:	c44a0004 	lwc1	$f10,4(v0)
    b070:	46065200 	add.s	$f8,$f10,$f6
    b074:	e4480004 	swc1	$f8,4(v0)
    b078:	860f017a 	lh	t7,378(s0)
    b07c:	2401005a 	li	at,90
    b080:	55e10068 	bnel	t7,at,b224 <L80B748A0+0x324>
    b084:	240ac000 	li	t2,-16384
    b088:	0c000000 	jal	0 <func_80B699A0>
    b08c:	24040924 	li	a0,2340
    b090:	3c040000 	lui	a0,0x0
    b094:	24840000 	addiu	a0,a0,0
    b098:	24180028 	li	t8,40
    b09c:	a0980000 	sb	t8,0(a0)
    b0a0:	920a0150 	lbu	t2,336(s0)
    b0a4:	55400036 	bnezl	t2,b180 <L80B748A0+0x280>
    b0a8:	c60001ac 	lwc1	$f0,428(s0)
    b0ac:	444cf800 	cfc1	t4,$31
    b0b0:	24190001 	li	t9,1
    b0b4:	44d9f800 	ctc1	t9,$31
    b0b8:	c60401ac 	lwc1	$f4,428(s0)
    b0bc:	460022a4 	cvt.w.s	$f10,$f4
    b0c0:	4459f800 	cfc1	t9,$31
    b0c4:	00000000 	nop
    b0c8:	33390078 	andi	t9,t9,0x78
    b0cc:	13200012 	beqz	t9,b118 <L80B748A0+0x218>
    b0d0:	3c014f00 	lui	at,0x4f00
    b0d4:	44815000 	mtc1	at,$f10
    b0d8:	24190001 	li	t9,1
    b0dc:	460a2281 	sub.s	$f10,$f4,$f10
    b0e0:	44d9f800 	ctc1	t9,$31
    b0e4:	00000000 	nop
    b0e8:	460052a4 	cvt.w.s	$f10,$f10
    b0ec:	4459f800 	cfc1	t9,$31
    b0f0:	00000000 	nop
    b0f4:	33390078 	andi	t9,t9,0x78
    b0f8:	17200005 	bnez	t9,b110 <L80B748A0+0x210>
    b0fc:	00000000 	nop
    b100:	44195000 	mfc1	t9,$f10
    b104:	3c018000 	lui	at,0x8000
    b108:	10000007 	b	b128 <L80B748A0+0x228>
    b10c:	0321c825 	or	t9,t9,at
    b110:	10000005 	b	b128 <L80B748A0+0x228>
    b114:	2419ffff 	li	t9,-1
    b118:	44195000 	mfc1	t9,$f10
    b11c:	00000000 	nop
    b120:	0720fffb 	bltz	t9,b110 <L80B748A0+0x210>
    b124:	00000000 	nop
    b128:	3c010000 	lui	at,0x0
    b12c:	a4390000 	sh	t9,0(at)
    b130:	3c020000 	lui	v0,0x0
    b134:	94420000 	lhu	v0,0(v0)
    b138:	44ccf800 	ctc1	t4,$31
    b13c:	2841004b 	slti	at,v0,75
    b140:	14200004 	bnez	at,b154 <L80B748A0+0x254>
    b144:	2409409f 	li	t1,16543
    b148:	3c010000 	lui	at,0x0
    b14c:	10000032 	b	b218 <L80B748A0+0x318>
    b150:	a4290000 	sh	t1,0(at)
    b154:	28410032 	slti	at,v0,50
    b158:	14200004 	bnez	at,b16c <L80B748A0+0x26c>
    b15c:	240b4091 	li	t3,16529
    b160:	3c010000 	lui	at,0x0
    b164:	1000002c 	b	b218 <L80B748A0+0x318>
    b168:	a42b0000 	sh	t3,0(at)
    b16c:	240d4083 	li	t5,16515
    b170:	3c010000 	lui	at,0x0
    b174:	10000028 	b	b218 <L80B748A0+0x318>
    b178:	a42d0000 	sh	t5,0(at)
    b17c:	c60001ac 	lwc1	$f0,428(s0)
    b180:	240f0001 	li	t7,1
    b184:	46000180 	add.s	$f6,$f0,$f0
    b188:	444ef800 	cfc1	t6,$31
    b18c:	44cff800 	ctc1	t7,$31
    b190:	00000000 	nop
    b194:	46003224 	cvt.w.s	$f8,$f6
    b198:	444ff800 	cfc1	t7,$31
    b19c:	00000000 	nop
    b1a0:	31ef0078 	andi	t7,t7,0x78
    b1a4:	11e00012 	beqz	t7,b1f0 <L80B748A0+0x2f0>
    b1a8:	3c014f00 	lui	at,0x4f00
    b1ac:	44814000 	mtc1	at,$f8
    b1b0:	240f0001 	li	t7,1
    b1b4:	46083201 	sub.s	$f8,$f6,$f8
    b1b8:	44cff800 	ctc1	t7,$31
    b1bc:	00000000 	nop
    b1c0:	46004224 	cvt.w.s	$f8,$f8
    b1c4:	444ff800 	cfc1	t7,$31
    b1c8:	00000000 	nop
    b1cc:	31ef0078 	andi	t7,t7,0x78
    b1d0:	15e00005 	bnez	t7,b1e8 <L80B748A0+0x2e8>
    b1d4:	00000000 	nop
    b1d8:	440f4000 	mfc1	t7,$f8
    b1dc:	3c018000 	lui	at,0x8000
    b1e0:	10000007 	b	b200 <L80B748A0+0x300>
    b1e4:	01e17825 	or	t7,t7,at
    b1e8:	10000005 	b	b200 <L80B748A0+0x300>
    b1ec:	240fffff 	li	t7,-1
    b1f0:	440f4000 	mfc1	t7,$f8
    b1f4:	00000000 	nop
    b1f8:	05e0fffb 	bltz	t7,b1e8 <L80B748A0+0x2e8>
    b1fc:	00000000 	nop
    b200:	3c010000 	lui	at,0x0
    b204:	a42f0000 	sh	t7,0(at)
    b208:	44cef800 	ctc1	t6,$31
    b20c:	3c010000 	lui	at,0x0
    b210:	24184099 	li	t8,16537
    b214:	a4380000 	sh	t8,0(at)
    b218:	a20001d5 	sb	zero,469(s0)
    b21c:	8fa300e0 	lw	v1,224(sp)
    b220:	240ac000 	li	t2,-16384
    b224:	a60a0160 	sh	t2,352(s0)
    b228:	846c00b6 	lh	t4,182(v1)
    b22c:	a600016e 	sh	zero,366(s0)
    b230:	8602016e 	lh	v0,366(s0)
    b234:	3c014080 	lui	at,0x4080
    b238:	44812000 	mtc1	at,$f4
    b23c:	3c01c120 	lui	at,0xc120
    b240:	44815000 	mtc1	at,$f10
    b244:	3c0140a0 	lui	at,0x40a0
    b248:	25995000 	addiu	t9,t4,20480
    b24c:	44813000 	mtc1	at,$f6
    b250:	a61900b6 	sh	t9,182(s0)
    b254:	a6020164 	sh	v0,356(s0)
    b258:	a6020162 	sh	v0,354(s0)
    b25c:	a60200b8 	sh	v0,184(s0)
    b260:	a60200b4 	sh	v0,180(s0)
    b264:	27a4010c 	addiu	a0,sp,268
    b268:	27a50100 	addiu	a1,sp,256
    b26c:	e7a4010c 	swc1	$f4,268(sp)
    b270:	e7aa0110 	swc1	$f10,272(sp)
    b274:	0c000000 	jal	0 <func_80B699A0>
    b278:	e7a60114 	swc1	$f6,276(sp)
    b27c:	8fa900e0 	lw	t1,224(sp)
    b280:	c7a40100 	lwc1	$f4,256(sp)
    b284:	4406a000 	mfc1	a2,$f20
    b288:	c52809bc 	lwc1	$f8,2492(t1)
    b28c:	8fa40048 	lw	a0,72(sp)
    b290:	3c0740c0 	lui	a3,0x40c0
    b294:	46044280 	add.s	$f10,$f8,$f4
    b298:	44055000 	mfc1	a1,$f10
    b29c:	0c000000 	jal	0 <func_80B699A0>
    b2a0:	00000000 	nop
    b2a4:	8fab00e0 	lw	t3,224(sp)
    b2a8:	c7a80104 	lwc1	$f8,260(sp)
    b2ac:	4406a000 	mfc1	a2,$f20
    b2b0:	c56609c0 	lwc1	$f6,2496(t3)
    b2b4:	8fa40044 	lw	a0,68(sp)
    b2b8:	3c0740c0 	lui	a3,0x40c0
    b2bc:	46083100 	add.s	$f4,$f6,$f8
    b2c0:	44052000 	mfc1	a1,$f4
    b2c4:	0c000000 	jal	0 <func_80B699A0>
    b2c8:	00000000 	nop
    b2cc:	8fad00e0 	lw	t5,224(sp)
    b2d0:	c7a60108 	lwc1	$f6,264(sp)
    b2d4:	4406a000 	mfc1	a2,$f20
    b2d8:	c5aa09c4 	lwc1	$f10,2500(t5)
    b2dc:	8fa4003c 	lw	a0,60(sp)
    b2e0:	3c0740c0 	lui	a3,0x40c0
    b2e4:	46065200 	add.s	$f8,$f10,$f6
    b2e8:	44054000 	mfc1	a1,$f8
    b2ec:	0c000000 	jal	0 <func_80B699A0>
    b2f0:	00000000 	nop
    b2f4:	3c01433c 	lui	at,0x433c
    b2f8:	44812000 	mtc1	at,$f4
    b2fc:	3c010000 	lui	at,0x0
    b300:	e4240000 	swc1	$f4,0(at)
    b304:	860e017a 	lh	t6,378(s0)
    b308:	29c10033 	slti	at,t6,51
    b30c:	10200083 	beqz	at,b51c <L80B748A0+0x61c>
    b310:	00000000 	nop
    b314:	920201d5 	lbu	v0,469(s0)
    b318:	10400005 	beqz	v0,b330 <L80B748A0+0x430>
    b31c:	24010001 	li	at,1
    b320:	5041005c 	beql	v0,at,b494 <L80B748A0+0x594>
    b324:	262420d8 	addiu	a0,s1,8408
    b328:	1000007c 	b	b51c <L80B748A0+0x61c>
    b32c:	00000000 	nop
    b330:	262420d8 	addiu	a0,s1,8408
    b334:	0c000000 	jal	0 <func_80B699A0>
    b338:	afa4004c 	sw	a0,76(sp)
    b33c:	24010004 	li	at,4
    b340:	10410005 	beq	v0,at,b358 <L80B748A0+0x458>
    b344:	8fa4004c 	lw	a0,76(sp)
    b348:	0c000000 	jal	0 <func_80B699A0>
    b34c:	00000000 	nop
    b350:	14400072 	bnez	v0,b51c <L80B748A0+0x61c>
    b354:	00000000 	nop
    b358:	0c000000 	jal	0 <func_80B699A0>
    b35c:	02202025 	move	a0,s1
    b360:	1040006e 	beqz	v0,b51c <L80B748A0+0x61c>
    b364:	00000000 	nop
    b368:	0c000000 	jal	0 <func_80B699A0>
    b36c:	02202025 	move	a0,s1
    b370:	3c0f0001 	lui	t7,0x1
    b374:	01f17821 	addu	t7,t7,s1
    b378:	91ef04bd 	lbu	t7,1213(t7)
    b37c:	15e0003f 	bnez	t7,b47c <L80B748A0+0x57c>
    b380:	3c010000 	lui	at,0x0
    b384:	c4200000 	lwc1	$f0,0(at)
    b388:	44805000 	mtc1	zero,$f10
    b38c:	00000000 	nop
    b390:	46005032 	c.eq.s	$f10,$f0
    b394:	00000000 	nop
    b398:	45020010 	bc1fl	b3dc <L80B748A0+0x4dc>
    b39c:	920c0150 	lbu	t4,336(s0)
    b3a0:	c60601ac 	lwc1	$f6,428(s0)
    b3a4:	3c010000 	lui	at,0x0
    b3a8:	3c0a0000 	lui	t2,0x0
    b3ac:	e4260000 	swc1	$f6,0(at)
    b3b0:	92180150 	lbu	t8,336(s0)
    b3b4:	3c010000 	lui	at,0x0
    b3b8:	914a0000 	lbu	t2,0(t2)
    b3bc:	a0380000 	sb	t8,0(at)
    b3c0:	3c010000 	lui	at,0x0
    b3c4:	02002025 	move	a0,s0
    b3c8:	0c000000 	jal	0 <func_80B699A0>
    b3cc:	a02a0000 	sb	t2,0(at)
    b3d0:	1000002b 	b	b480 <L80B748A0+0x580>
    b3d4:	920f01d5 	lbu	t7,469(s0)
    b3d8:	920c0150 	lbu	t4,336(s0)
    b3dc:	15800019 	bnez	t4,b444 <L80B748A0+0x544>
    b3e0:	3c190000 	lui	t9,0x0
    b3e4:	93390000 	lbu	t9,0(t9)
    b3e8:	57200017 	bnezl	t9,b448 <L80B748A0+0x548>
    b3ec:	c60601ac 	lwc1	$f6,428(s0)
    b3f0:	c60801ac 	lwc1	$f8,428(s0)
    b3f4:	4600028d 	trunc.w.s	$f10,$f0
    b3f8:	4600410d 	trunc.w.s	$f4,$f8
    b3fc:	44185000 	mfc1	t8,$f10
    b400:	440b2000 	mfc1	t3,$f4
    b404:	00185400 	sll	t2,t8,0x10
    b408:	000a6403 	sra	t4,t2,0x10
    b40c:	000b6c00 	sll	t5,t3,0x10
    b410:	000d7403 	sra	t6,t5,0x10
    b414:	01cc082a 	slt	at,t6,t4
    b418:	1020000a 	beqz	at,b444 <L80B748A0+0x544>
    b41c:	24190001 	li	t9,1
    b420:	2409003c 	li	t1,60
    b424:	a21901d5 	sb	t9,469(s0)
    b428:	a609017a 	sh	t1,378(s0)
    b42c:	02202025 	move	a0,s1
    b430:	24054098 	li	a1,16536
    b434:	0c000000 	jal	0 <func_80B699A0>
    b438:	00003025 	move	a2,zero
    b43c:	10000010 	b	b480 <L80B748A0+0x580>
    b440:	920f01d5 	lbu	t7,469(s0)
    b444:	c60601ac 	lwc1	$f6,428(s0)
    b448:	3c010000 	lui	at,0x0
    b44c:	3c020000 	lui	v0,0x0
    b450:	e4260000 	swc1	$f6,0(at)
    b454:	920b0150 	lbu	t3,336(s0)
    b458:	3c0d0000 	lui	t5,0x0
    b45c:	90420000 	lbu	v0,0(v0)
    b460:	91ad0000 	lbu	t5,0(t5)
    b464:	3c010000 	lui	at,0x0
    b468:	a02b0000 	sb	t3,0(at)
    b46c:	3c010000 	lui	at,0x0
    b470:	a02d0000 	sb	t5,0(at)
    b474:	e60001ac 	swc1	$f0,428(s0)
    b478:	a2020150 	sb	v0,336(s0)
    b47c:	920f01d5 	lbu	t7,469(s0)
    b480:	15e00026 	bnez	t7,b51c <L80B748A0+0x61c>
    b484:	3c010000 	lui	at,0x0
    b488:	10000024 	b	b51c <L80B748A0+0x61c>
    b48c:	a4200000 	sh	zero,0(at)
    b490:	262420d8 	addiu	a0,s1,8408
    b494:	0c000000 	jal	0 <func_80B699A0>
    b498:	afa4004c 	sw	a0,76(sp)
    b49c:	24010004 	li	at,4
    b4a0:	10410005 	beq	v0,at,b4b8 <L80B748A0+0x5b8>
    b4a4:	8fa4004c 	lw	a0,76(sp)
    b4a8:	0c000000 	jal	0 <func_80B699A0>
    b4ac:	00000000 	nop
    b4b0:	1440001a 	bnez	v0,b51c <L80B748A0+0x61c>
    b4b4:	00000000 	nop
    b4b8:	0c000000 	jal	0 <func_80B699A0>
    b4bc:	02202025 	move	a0,s1
    b4c0:	10400016 	beqz	v0,b51c <L80B748A0+0x61c>
    b4c4:	00000000 	nop
    b4c8:	0c000000 	jal	0 <func_80B699A0>
    b4cc:	02202025 	move	a0,s1
    b4d0:	3c180001 	lui	t8,0x1
    b4d4:	0311c021 	addu	t8,t8,s1
    b4d8:	931804bd 	lbu	t8,1213(t8)
    b4dc:	1300000d 	beqz	t8,b514 <L80B748A0+0x614>
    b4e0:	00000000 	nop
    b4e4:	c60801ac 	lwc1	$f8,428(s0)
    b4e8:	3c010000 	lui	at,0x0
    b4ec:	3c0a0000 	lui	t2,0x0
    b4f0:	c4200000 	lwc1	$f0,0(at)
    b4f4:	914a0000 	lbu	t2,0(t2)
    b4f8:	3c020000 	lui	v0,0x0
    b4fc:	e4280000 	swc1	$f8,0(at)
    b500:	90420000 	lbu	v0,0(v0)
    b504:	3c010000 	lui	at,0x0
    b508:	a02a0000 	sb	t2,0(at)
    b50c:	e60001ac 	swc1	$f0,428(s0)
    b510:	a2020150 	sb	v0,336(s0)
    b514:	3c010000 	lui	at,0x0
    b518:	a4200000 	sh	zero,0(at)
    b51c:	3c0e0000 	lui	t6,0x0
    b520:	85ce0000 	lh	t6,0(t6)
    b524:	55c000ed 	bnezl	t6,b8dc <L80B75278+0x4>
    b528:	8604015c 	lh	a0,348(s0)
    b52c:	8e0c0130 	lw	t4,304(s0)
    b530:	51800036 	beqzl	t4,b60c <L80B748A0+0x70c>
    b534:	3c014402 	lui	at,0x4402
    b538:	a600015a 	sh	zero,346(s0)
    b53c:	3c0144fa 	lui	at,0x44fa
    b540:	8619015a 	lh	t9,346(s0)
    b544:	44812000 	mtc1	at,$f4
    b548:	24020032 	li	v0,50
    b54c:	24092710 	li	t1,10000
    b550:	240b01f4 	li	t3,500
    b554:	a60901a4 	sh	t1,420(s0)
    b558:	a60b01a2 	sh	t3,418(s0)
    b55c:	a602017c 	sh	v0,380(s0)
    b560:	a600017a 	sh	zero,378(s0)
    b564:	e6140190 	swc1	$f20,400(s0)
    b568:	260401d8 	addiu	a0,s0,472
    b56c:	a6190158 	sh	t9,344(s0)
    b570:	e6040194 	swc1	$f4,404(s0)
    b574:	afa4004c 	sw	a0,76(sp)
    b578:	0c000000 	jal	0 <func_80B699A0>
    b57c:	02202825 	move	a1,s1
    b580:	920d0150 	lbu	t5,336(s0)
    b584:	15a00011 	bnez	t5,b5cc <L80B748A0+0x6cc>
    b588:	3c060600 	lui	a2,0x600
    b58c:	3c070600 	lui	a3,0x600
    b590:	24e7007c 	addiu	a3,a3,124
    b594:	24c629c0 	addiu	a2,a2,10688
    b598:	02202025 	move	a0,s1
    b59c:	8fa5004c 	lw	a1,76(sp)
    b5a0:	afa00010 	sw	zero,16(sp)
    b5a4:	afa00014 	sw	zero,20(sp)
    b5a8:	0c000000 	jal	0 <func_80B699A0>
    b5ac:	afa00018 	sw	zero,24(sp)
    b5b0:	3c050600 	lui	a1,0x600
    b5b4:	24a5007c 	addiu	a1,a1,124
    b5b8:	8fa4004c 	lw	a0,76(sp)
    b5bc:	0c000000 	jal	0 <func_80B699A0>
    b5c0:	24060000 	li	a2,0
    b5c4:	10000011 	b	b60c <L80B748A0+0x70c>
    b5c8:	3c014402 	lui	at,0x4402
    b5cc:	3c060601 	lui	a2,0x601
    b5d0:	3c070601 	lui	a3,0x601
    b5d4:	24e7cfe0 	addiu	a3,a3,-12320
    b5d8:	24c61058 	addiu	a2,a2,4184
    b5dc:	02202025 	move	a0,s1
    b5e0:	8fa5004c 	lw	a1,76(sp)
    b5e4:	afa00010 	sw	zero,16(sp)
    b5e8:	afa00014 	sw	zero,20(sp)
    b5ec:	0c000000 	jal	0 <func_80B699A0>
    b5f0:	afa00018 	sw	zero,24(sp)
    b5f4:	3c050601 	lui	a1,0x601
    b5f8:	24a5cfe0 	addiu	a1,a1,-12320
    b5fc:	8fa4004c 	lw	a0,76(sp)
    b600:	0c000000 	jal	0 <func_80B699A0>
    b604:	24060000 	li	a2,0
    b608:	3c014402 	lui	at,0x4402
    b60c:	44815000 	mtc1	at,$f10
    b610:	3c010000 	lui	at,0x0
    b614:	3c04100a 	lui	a0,0x100a
    b618:	e42a0000 	swc1	$f10,0(at)
    b61c:	3c014343 	lui	at,0x4343
    b620:	44813000 	mtc1	at,$f6
    b624:	3c010000 	lui	at,0x0
    b628:	348400ff 	ori	a0,a0,0xff
    b62c:	0c000000 	jal	0 <func_80B699A0>
    b630:	e4260000 	swc1	$f6,0(at)
    b634:	240f0014 	li	t7,20
    b638:	3c010000 	lui	at,0x0
    b63c:	a42f0000 	sh	t7,0(at)
    b640:	3c010000 	lui	at,0x0
    b644:	24180003 	li	t8,3
    b648:	100000a3 	b	b8d8 <L80B75278>
    b64c:	a0380000 	sb	t8,0(at)

0000b650 <L80B74FF0>:
    b650:	240a0032 	li	t2,50
    b654:	a20a0151 	sb	t2,337(s0)
    b658:	240e0005 	li	t6,5
    b65c:	a7ae0134 	sh	t6,308(sp)
    b660:	8602001c 	lh	v0,28(s0)
    b664:	3c014640 	lui	at,0x4640
    b668:	44814000 	mtc1	at,$f8
    b66c:	28410068 	slti	at,v0,104
    b670:	10200013 	beqz	at,b6c0 <L80B74FF0+0x70>
    b674:	e60801b0 	swc1	$f8,432(s0)
    b678:	000260c0 	sll	t4,v0,0x3
    b67c:	01826021 	addu	t4,t4,v0
    b680:	000c60c0 	sll	t4,t4,0x3
    b684:	3c090000 	lui	t1,0x0
    b688:	25290000 	addiu	t1,t1,0
    b68c:	2599e3e4 	addiu	t9,t4,-7196
    b690:	03295821 	addu	t3,t9,t1
    b694:	8d6f0000 	lw	t7,0(t3)
    b698:	3c013f80 	lui	at,0x3f80
    b69c:	44812000 	mtc1	at,$f4
    b6a0:	ae0f01b4 	sw	t7,436(s0)
    b6a4:	8d6d0004 	lw	t5,4(t3)
    b6a8:	3c010000 	lui	at,0x0
    b6ac:	ae0d01b8 	sw	t5,440(s0)
    b6b0:	8d6f0008 	lw	t7,8(t3)
    b6b4:	ae0f01bc 	sw	t7,444(s0)
    b6b8:	10000026 	b	b754 <L80B74FF0+0x104>
    b6bc:	e4240000 	swc1	$f4,0(at)
    b6c0:	2841006c 	slti	at,v0,108
    b6c4:	10200012 	beqz	at,b710 <L80B74FF0+0xc0>
    b6c8:	0002c0c0 	sll	t8,v0,0x3
    b6cc:	0302c021 	addu	t8,t8,v0
    b6d0:	0018c0c0 	sll	t8,t8,0x3
    b6d4:	3c0e0000 	lui	t6,0x0
    b6d8:	25ce0000 	addiu	t6,t6,0
    b6dc:	270ae864 	addiu	t2,t8,-6044
    b6e0:	014e6021 	addu	t4,t2,t6
    b6e4:	8d890000 	lw	t1,0(t4)
    b6e8:	3c014000 	lui	at,0x4000
    b6ec:	44815000 	mtc1	at,$f10
    b6f0:	ae0901b4 	sw	t1,436(s0)
    b6f4:	8d990004 	lw	t9,4(t4)
    b6f8:	3c010000 	lui	at,0x0
    b6fc:	ae1901b8 	sw	t9,440(s0)
    b700:	8d890008 	lw	t1,8(t4)
    b704:	ae0901bc 	sw	t1,444(s0)
    b708:	10000012 	b	b754 <L80B74FF0+0x104>
    b70c:	e42a0000 	swc1	$f10,0(at)
    b710:	000258c0 	sll	t3,v0,0x3
    b714:	01625821 	addu	t3,t3,v0
    b718:	000b58c0 	sll	t3,t3,0x3
    b71c:	3c0f0000 	lui	t7,0x0
    b720:	25ef0000 	addiu	t7,t7,0
    b724:	256dece4 	addiu	t5,t3,-4892
    b728:	01afc021 	addu	t8,t5,t7
    b72c:	8f0e0000 	lw	t6,0(t8)
    b730:	3c014040 	lui	at,0x4040
    b734:	44813000 	mtc1	at,$f6
    b738:	ae0e01b4 	sw	t6,436(s0)
    b73c:	8f0a0004 	lw	t2,4(t8)
    b740:	3c010000 	lui	at,0x0
    b744:	ae0a01b8 	sw	t2,440(s0)
    b748:	8f0e0008 	lw	t6,8(t8)
    b74c:	ae0e01bc 	sw	t6,444(s0)
    b750:	e4260000 	swc1	$f6,0(at)
    b754:	4406a000 	mfc1	a2,$f20
    b758:	4407a000 	mfc1	a3,$f20
    b75c:	26040068 	addiu	a0,s0,104
    b760:	0c000000 	jal	0 <func_80B699A0>
    b764:	3c0540a0 	lui	a1,0x40a0
    b768:	3c0141a0 	lui	at,0x41a0
    b76c:	44812000 	mtc1	at,$f4
    b770:	c7a80124 	lwc1	$f8,292(sp)
    b774:	4604403c 	c.lt.s	$f8,$f4
    b778:	00000000 	nop
    b77c:	4502003c 	bc1fl	b870 <L80B74FF0+0x220>
    b780:	860a0180 	lh	t2,384(s0)
    b784:	8fa40040 	lw	a0,64(sp)
    b788:	24054e20 	li	a1,20000
    b78c:	24060002 	li	a2,2
    b790:	0c000000 	jal	0 <func_80B699A0>
    b794:	24070fa0 	li	a3,4000
    b798:	860c017e 	lh	t4,382(s0)
    b79c:	15800033 	bnez	t4,b86c <L80B74FF0+0x21c>
    b7a0:	02002025 	move	a0,s0
    b7a4:	02202825 	move	a1,s1
    b7a8:	0c000000 	jal	0 <func_80B699A0>
    b7ac:	00003025 	move	a2,zero
    b7b0:	1040002e 	beqz	v0,b86c <L80B74FF0+0x21c>
    b7b4:	3c010000 	lui	at,0x0
    b7b8:	0c000000 	jal	0 <func_80B699A0>
    b7bc:	c42c0000 	lwc1	$f12,0(at)
    b7c0:	4459f800 	cfc1	t9,$31
    b7c4:	24050001 	li	a1,1
    b7c8:	44c5f800 	ctc1	a1,$31
    b7cc:	02002025 	move	a0,s0
    b7d0:	460002a4 	cvt.w.s	$f10,$f0
    b7d4:	4445f800 	cfc1	a1,$31
    b7d8:	00000000 	nop
    b7dc:	30a50078 	andi	a1,a1,0x78
    b7e0:	10a00012 	beqz	a1,b82c <L80B74FF0+0x1dc>
    b7e4:	3c014f00 	lui	at,0x4f00
    b7e8:	44815000 	mtc1	at,$f10
    b7ec:	24050001 	li	a1,1
    b7f0:	460a0281 	sub.s	$f10,$f0,$f10
    b7f4:	44c5f800 	ctc1	a1,$31
    b7f8:	00000000 	nop
    b7fc:	460052a4 	cvt.w.s	$f10,$f10
    b800:	4445f800 	cfc1	a1,$31
    b804:	00000000 	nop
    b808:	30a50078 	andi	a1,a1,0x78
    b80c:	14a00005 	bnez	a1,b824 <L80B74FF0+0x1d4>
    b810:	00000000 	nop
    b814:	44055000 	mfc1	a1,$f10
    b818:	3c018000 	lui	at,0x8000
    b81c:	10000007 	b	b83c <L80B74FF0+0x1ec>
    b820:	00a12825 	or	a1,a1,at
    b824:	10000005 	b	b83c <L80B74FF0+0x1ec>
    b828:	2405ffff 	li	a1,-1
    b82c:	44055000 	mfc1	a1,$f10
    b830:	00000000 	nop
    b834:	04a0fffb 	bltz	a1,b824 <L80B74FF0+0x1d4>
    b838:	00000000 	nop
    b83c:	44d9f800 	ctc1	t9,$31
    b840:	0c000000 	jal	0 <func_80B699A0>
    b844:	30a500ff 	andi	a1,a1,0xff
    b848:	3c0141a0 	lui	at,0x41a0
    b84c:	44816000 	mtc1	at,$f12
    b850:	0c000000 	jal	0 <func_80B699A0>
    b854:	00000000 	nop
    b858:	4600018d 	trunc.w.s	$f6,$f0
    b85c:	440f3000 	mfc1	t7,$f6
    b860:	00000000 	nop
    b864:	25f80014 	addiu	t8,t7,20
    b868:	a618017e 	sh	t8,382(s0)
    b86c:	860a0180 	lh	t2,384(s0)
    b870:	15400004 	bnez	t2,b884 <L80B74FF0+0x234>
    b874:	2402000a 	li	v0,10
    b878:	a6020158 	sh	v0,344(s0)
    b87c:	10000016 	b	b8d8 <L80B75278>
    b880:	a602015a 	sh	v0,346(s0)
    b884:	02002025 	move	a0,s0
    b888:	0c000000 	jal	0 <func_80B699A0>
    b88c:	26250014 	addiu	a1,s1,20
    b890:	3c0142c8 	lui	at,0x42c8
    b894:	44812000 	mtc1	at,$f4
    b898:	c7aa0118 	lwc1	$f10,280(sp)
    b89c:	c6080090 	lwc1	$f8,144(s0)
    b8a0:	460a2182 	mul.s	$f6,$f4,$f10
    b8a4:	4606403c 	c.lt.s	$f8,$f6
    b8a8:	00000000 	nop
    b8ac:	4502000b 	bc1fl	b8dc <L80B75278+0x4>
    b8b0:	8604015c 	lh	a0,348(s0)
    b8b4:	a6000158 	sh	zero,344(s0)
    b8b8:	860e0158 	lh	t6,344(s0)
    b8bc:	24020032 	li	v0,50
    b8c0:	240c01f4 	li	t4,500
    b8c4:	241900c8 	li	t9,200
    b8c8:	a60c01a4 	sh	t4,420(s0)
    b8cc:	a61901a2 	sh	t9,418(s0)
    b8d0:	a602017c 	sh	v0,380(s0)
    b8d4:	a60e015a 	sh	t6,346(s0)

0000b8d8 <L80B75278>:
    b8d8:	8604015c 	lh	a0,348(s0)
    b8dc:	00042300 	sll	a0,a0,0xc
    b8e0:	00042400 	sll	a0,a0,0x10
    b8e4:	0c000000 	jal	0 <func_80B699A0>
    b8e8:	00042403 	sra	a0,a0,0x10
    b8ec:	3c010000 	lui	at,0x0
    b8f0:	c4240000 	lwc1	$f4,0(at)
    b8f4:	3c010000 	lui	at,0x0
    b8f8:	c4280000 	lwc1	$f8,0(at)
    b8fc:	46040282 	mul.s	$f10,$f0,$f4
    b900:	26040172 	addiu	a0,s0,370
    b904:	24060002 	li	a2,2
    b908:	240707d0 	li	a3,2000
    b90c:	46085180 	add.s	$f6,$f10,$f8
    b910:	4600310d 	trunc.w.s	$f4,$f6
    b914:	44052000 	mfc1	a1,$f4
    b918:	00000000 	nop
    b91c:	00052c00 	sll	a1,a1,0x10
    b920:	0c000000 	jal	0 <func_80B699A0>
    b924:	00052c03 	sra	a1,a1,0x10
    b928:	860b0158 	lh	t3,344(s0)
    b92c:	24010006 	li	at,6
    b930:	516101fb 	beql	t3,at,c120 <L80B75278+0x848>
    b934:	920201d2 	lbu	v0,466(s0)
    b938:	8e2d07c0 	lw	t5,1984(s1)
    b93c:	c6060028 	lwc1	$f6,40(s0)
    b940:	8daf0028 	lw	t7,40(t5)
    b944:	85f80002 	lh	t8,2(t7)
    b948:	44985000 	mtc1	t8,$f10
    b94c:	00000000 	nop
    b950:	46805220 	cvt.s.w	$f8,$f10
    b954:	4606403c 	c.lt.s	$f8,$f6
    b958:	00000000 	nop
    b95c:	4500001a 	bc1f	b9c8 <L80B75278+0xf0>
    b960:	3c013fc0 	lui	at,0x3fc0
    b964:	44812000 	mtc1	at,$f4
    b968:	3c010000 	lui	at,0x0
    b96c:	2604016e 	addiu	a0,s0,366
    b970:	e6040190 	swc1	$f4,400(s0)
    b974:	c42a0000 	lwc1	$f10,0(at)
    b978:	00002825 	move	a1,zero
    b97c:	24060005 	li	a2,5
    b980:	240707d0 	li	a3,2000
    b984:	0c000000 	jal	0 <func_80B699A0>
    b988:	e60a0194 	swc1	$f10,404(s0)
    b98c:	240a0003 	li	t2,3
    b990:	240e0003 	li	t6,3
    b994:	240c0003 	li	t4,3
    b998:	24192000 	li	t9,8192
    b99c:	24092000 	li	t1,8192
    b9a0:	a7ac00f4 	sh	t4,244(sp)
    b9a4:	a7ae00f0 	sh	t6,240(sp)
    b9a8:	a7aa00fa 	sh	t2,250(sp)
    b9ac:	a7a900f2 	sh	t1,242(sp)
    b9b0:	a7b900ee 	sh	t9,238(sp)
    b9b4:	c6080184 	lwc1	$f8,388(s0)
    b9b8:	a600017e 	sh	zero,382(s0)
    b9bc:	46144181 	sub.s	$f6,$f8,$f20
    b9c0:	10000057 	b	bb20 <L80B75278+0x248>
    b9c4:	e6060184 	swc1	$f6,388(s0)
    b9c8:	4405a000 	mfc1	a1,$f20
    b9cc:	26040184 	addiu	a0,s0,388
    b9d0:	0c000000 	jal	0 <func_80B699A0>
    b9d4:	3c064000 	lui	a2,0x4000
    b9d8:	86030158 	lh	v1,344(s0)
    b9dc:	2401ffff 	li	at,-1
    b9e0:	10610006 	beq	v1,at,b9fc <L80B75278+0x124>
    b9e4:	2401fffe 	li	at,-2
    b9e8:	10610004 	beq	v1,at,b9fc <L80B75278+0x124>
    b9ec:	2401ffe7 	li	at,-25
    b9f0:	50610003 	beql	v1,at,ba00 <L80B75278+0x128>
    b9f4:	a600016a 	sh	zero,362(s0)
    b9f8:	a6000166 	sh	zero,358(s0)
    b9fc:	a600016a 	sh	zero,362(s0)
    ba00:	860b016a 	lh	t3,362(s0)
    ba04:	240d0004 	li	t5,4
    ba08:	240f0004 	li	t7,4
    ba0c:	a60b0168 	sh	t3,360(s0)
    ba10:	24180004 	li	t8,4
    ba14:	240a2000 	li	t2,8192
    ba18:	240e2000 	li	t6,8192
    ba1c:	a7b800f4 	sh	t8,244(sp)
    ba20:	a7af00f0 	sh	t7,240(sp)
    ba24:	a7ad00fa 	sh	t5,250(sp)
    ba28:	a7ae00f2 	sh	t6,242(sp)
    ba2c:	a7aa00ee 	sh	t2,238(sp)
    ba30:	c60401b0 	lwc1	$f4,432(s0)
    ba34:	87a60134 	lh	a2,308(sp)
    ba38:	87a500fc 	lh	a1,252(sp)
    ba3c:	4600228d 	trunc.w.s	$f10,$f4
    ba40:	26040032 	addiu	a0,s0,50
    ba44:	44075000 	mfc1	a3,$f10
    ba48:	00000000 	nop
    ba4c:	00073c00 	sll	a3,a3,0x10
    ba50:	0c000000 	jal	0 <func_80B699A0>
    ba54:	00073c03 	sra	a3,a3,0x10
    ba58:	44824000 	mtc1	v0,$f8
    ba5c:	3c014040 	lui	at,0x4040
    ba60:	44812000 	mtc1	at,$f4
    ba64:	468041a0 	cvt.s.w	$f6,$f8
    ba68:	3c013f00 	lui	at,0x3f00
    ba6c:	26040030 	addiu	a0,s0,48
    ba70:	87a500fe 	lh	a1,254(sp)
    ba74:	87a60134 	lh	a2,308(sp)
    ba78:	46043282 	mul.s	$f10,$f6,$f4
    ba7c:	44812000 	mtc1	at,$f4
    ba80:	4600520d 	trunc.w.s	$f8,$f10
    ba84:	44094000 	mfc1	t1,$f8
    ba88:	00000000 	nop
    ba8c:	a7a900f6 	sh	t1,246(sp)
    ba90:	c60601b0 	lwc1	$f6,432(s0)
    ba94:	46043282 	mul.s	$f10,$f6,$f4
    ba98:	4600520d 	trunc.w.s	$f8,$f10
    ba9c:	44074000 	mfc1	a3,$f8
    baa0:	00000000 	nop
    baa4:	00073c00 	sll	a3,a3,0x10
    baa8:	0c000000 	jal	0 <func_80B699A0>
    baac:	00073c03 	sra	a3,a3,0x10
    bab0:	87a500f6 	lh	a1,246(sp)
    bab4:	28a11f41 	slti	at,a1,8001
    bab8:	54200004 	bnezl	at,bacc <L80B75278+0x1f4>
    babc:	28a1e0c0 	slti	at,a1,-8000
    bac0:	10000005 	b	bad8 <L80B75278+0x200>
    bac4:	24051f40 	li	a1,8000
    bac8:	28a1e0c0 	slti	at,a1,-8000
    bacc:	10200002 	beqz	at,bad8 <L80B75278+0x200>
    bad0:	00000000 	nop
    bad4:	2405e0c0 	li	a1,-8000
    bad8:	3c010000 	lui	at,0x0
    badc:	c4240000 	lwc1	$f4,0(at)
    bae0:	c6060068 	lwc1	$f6,104(s0)
    bae4:	4606203e 	c.le.s	$f4,$f6
    bae8:	00000000 	nop
    baec:	45000006 	bc1f	bb08 <L80B75278+0x230>
    baf0:	2604016e 	addiu	a0,s0,366
    baf4:	24060002 	li	a2,2
    baf8:	0c000000 	jal	0 <func_80B699A0>
    bafc:	24074e20 	li	a3,20000
    bb00:	10000005 	b	bb18 <L80B75278+0x240>
    bb04:	00000000 	nop
    bb08:	2604016e 	addiu	a0,s0,366
    bb0c:	24060003 	li	a2,3
    bb10:	0c000000 	jal	0 <func_80B699A0>
    bb14:	24070bb8 	li	a3,3000
    bb18:	0c000000 	jal	0 <func_80B699A0>
    bb1c:	02002025 	move	a0,s0
    bb20:	0c000000 	jal	0 <func_80B699A0>
    bb24:	02002025 	move	a0,s0
    bb28:	3c013fc0 	lui	at,0x3fc0
    bb2c:	44814000 	mtc1	at,$f8
    bb30:	c60a0184 	lwc1	$f10,388(s0)
    bb34:	c6040028 	lwc1	$f4,40(s0)
    bb38:	92020152 	lbu	v0,338(s0)
    bb3c:	46085182 	mul.s	$f6,$f10,$f8
    bb40:	46062280 	add.s	$f10,$f4,$f6
    bb44:	10400019 	beqz	v0,bbac <L80B75278+0x2d4>
    bb48:	e60a0028 	swc1	$f10,40(s0)
    bb4c:	92180156 	lbu	t8,342(s0)
    bb50:	860d0154 	lh	t5,340(s0)
    bb54:	244fffff 	addiu	t7,v0,-1
    bb58:	a20f0152 	sb	t7,338(s0)
    bb5c:	13000006 	beqz	t8,bb78 <L80B75278+0x2a0>
    bb60:	a60d0168 	sh	t5,360(s0)
    bb64:	240a0005 	li	t2,5
    bb68:	240e4000 	li	t6,16384
    bb6c:	a7aa00f0 	sh	t2,240(sp)
    bb70:	10000005 	b	bb88 <L80B75278+0x2b0>
    bb74:	a7ae00ee 	sh	t6,238(sp)
    bb78:	240c000a 	li	t4,10
    bb7c:	24190800 	li	t9,2048
    bb80:	a7ac00f0 	sh	t4,240(sp)
    bb84:	a7b900ee 	sh	t9,238(sp)
    bb88:	860900b4 	lh	t1,180(s0)
    bb8c:	240bfb00 	li	t3,-1280
    bb90:	240f0005 	li	t7,5
    bb94:	01696823 	subu	t5,t3,t1
    bb98:	a60d0166 	sh	t5,358(s0)
    bb9c:	24184000 	li	t8,16384
    bba0:	a7af00f4 	sh	t7,244(sp)
    bba4:	10000002 	b	bbb0 <L80B75278+0x2d8>
    bba8:	a7b800f2 	sh	t8,242(sp)
    bbac:	a2000156 	sb	zero,342(s0)
    bbb0:	26040160 	addiu	a0,s0,352
    bbb4:	86050166 	lh	a1,358(s0)
    bbb8:	87a600f4 	lh	a2,244(sp)
    bbbc:	0c000000 	jal	0 <func_80B699A0>
    bbc0:	87a700f2 	lh	a3,242(sp)
    bbc4:	26040162 	addiu	a0,s0,354
    bbc8:	86050168 	lh	a1,360(s0)
    bbcc:	87a600f0 	lh	a2,240(sp)
    bbd0:	0c000000 	jal	0 <func_80B699A0>
    bbd4:	87a700ee 	lh	a3,238(sp)
    bbd8:	26040164 	addiu	a0,s0,356
    bbdc:	8605016a 	lh	a1,362(s0)
    bbe0:	87a600fa 	lh	a2,250(sp)
    bbe4:	0c000000 	jal	0 <func_80B699A0>
    bbe8:	24072000 	li	a3,8192
    bbec:	3c013f00 	lui	at,0x3f00
    bbf0:	44814000 	mtc1	at,$f8
    bbf4:	c6040068 	lwc1	$f4,104(s0)
    bbf8:	4608203e 	c.le.s	$f4,$f8
    bbfc:	00000000 	nop
    bc00:	4500000c 	bc1f	bc34 <L80B75278+0x35c>
    bc04:	260400b4 	addiu	a0,s0,180
    bc08:	00002825 	move	a1,zero
    bc0c:	2406000a 	li	a2,10
    bc10:	0c000000 	jal	0 <func_80B699A0>
    bc14:	86070178 	lh	a3,376(s0)
    bc18:	26040178 	addiu	a0,s0,376
    bc1c:	24050500 	li	a1,1280
    bc20:	24060001 	li	a2,1
    bc24:	0c000000 	jal	0 <func_80B699A0>
    bc28:	24070020 	li	a3,32
    bc2c:	1000000b 	b	bc5c <L80B75278+0x384>
    bc30:	86030158 	lh	v1,344(s0)
    bc34:	86050030 	lh	a1,48(s0)
    bc38:	260400b4 	addiu	a0,s0,180
    bc3c:	2406000a 	li	a2,10
    bc40:	00052823 	negu	a1,a1
    bc44:	00052c00 	sll	a1,a1,0x10
    bc48:	00052c03 	sra	a1,a1,0x10
    bc4c:	0c000000 	jal	0 <func_80B699A0>
    bc50:	24071000 	li	a3,4096
    bc54:	a6000178 	sh	zero,376(s0)
    bc58:	86030158 	lh	v1,344(s0)
    bc5c:	860a0032 	lh	t2,50(s0)
    bc60:	2401ffff 	li	at,-1
    bc64:	10610042 	beq	v1,at,bd70 <L80B75278+0x498>
    bc68:	a60a00b6 	sh	t2,182(s0)
    bc6c:	2401fffe 	li	at,-2
    bc70:	1061003f 	beq	v1,at,bd70 <L80B75278+0x498>
    bc74:	2401ffe7 	li	at,-25
    bc78:	5061003e 	beql	v1,at,bd74 <L80B75278+0x49c>
    bc7c:	8e3807c0 	lw	t8,1984(s1)
    bc80:	8e2e07c0 	lw	t6,1984(s1)
    bc84:	c6000028 	lwc1	$f0,40(s0)
    bc88:	8dcc0028 	lw	t4,40(t6)
    bc8c:	85990002 	lh	t9,2(t4)
    bc90:	44993000 	mtc1	t9,$f6
    bc94:	00000000 	nop
    bc98:	468033a0 	cvt.s.w	$f14,$f6
    bc9c:	4600703c 	c.lt.s	$f14,$f0
    bca0:	00000000 	nop
    bca4:	45020018 	bc1fl	bd08 <L80B75278+0x430>
    bca8:	460e003c 	c.lt.s	$f0,$f14
    bcac:	c60a0104 	lwc1	$f10,260(s0)
    bcb0:	460e503e 	c.le.s	$f10,$f14
    bcb4:	00000000 	nop
    bcb8:	45000012 	bc1f	bd04 <L80B75278+0x42c>
    bcbc:	02002025 	move	a0,s0
    bcc0:	02202825 	move	a1,s1
    bcc4:	0c000000 	jal	0 <func_80B699A0>
    bcc8:	24060001 	li	a2,1
    bccc:	02002025 	move	a0,s0
    bcd0:	0c000000 	jal	0 <func_80B699A0>
    bcd4:	24050001 	li	a1,1
    bcd8:	c6080060 	lwc1	$f8,96(s0)
    bcdc:	44802000 	mtc1	zero,$f4
    bce0:	3c014700 	lui	at,0x4700
    bce4:	44816000 	mtc1	at,$f12
    bce8:	e6080184 	swc1	$f8,388(s0)
    bcec:	0c000000 	jal	0 <func_80B699A0>
    bcf0:	e6040060 	swc1	$f4,96(s0)
    bcf4:	4600018d 	trunc.w.s	$f6,$f0
    bcf8:	44093000 	mfc1	t1,$f6
    bcfc:	1000001c 	b	bd70 <L80B75278+0x498>
    bd00:	a609016a 	sh	t1,362(s0)
    bd04:	460e003c 	c.lt.s	$f0,$f14
    bd08:	00000000 	nop
    bd0c:	45020019 	bc1fl	bd74 <L80B75278+0x49c>
    bd10:	8e3807c0 	lw	t8,1984(s1)
    bd14:	c60a0104 	lwc1	$f10,260(s0)
    bd18:	460a703e 	c.le.s	$f14,$f10
    bd1c:	00000000 	nop
    bd20:	45000013 	bc1f	bd70 <L80B75278+0x498>
    bd24:	3c01c0a0 	lui	at,0xc0a0
    bd28:	44810000 	mtc1	at,$f0
    bd2c:	c6080184 	lwc1	$f8,388(s0)
    bd30:	4600403c 	c.lt.s	$f8,$f0
    bd34:	00000000 	nop
    bd38:	45020003 	bc1fl	bd48 <L80B75278+0x470>
    bd3c:	240df060 	li	t5,-4000
    bd40:	e6000184 	swc1	$f0,388(s0)
    bd44:	240df060 	li	t5,-4000
    bd48:	a60d0030 	sh	t5,48(s0)
    bd4c:	02002025 	move	a0,s0
    bd50:	02202825 	move	a1,s1
    bd54:	0c000000 	jal	0 <func_80B699A0>
    bd58:	24060001 	li	a2,1
    bd5c:	240f0014 	li	t7,20
    bd60:	a20f01d2 	sb	t7,466(s0)
    bd64:	02002025 	move	a0,s0
    bd68:	0c000000 	jal	0 <func_80B699A0>
    bd6c:	00002825 	move	a1,zero
    bd70:	8e3807c0 	lw	t8,1984(s1)
    bd74:	c6000028 	lwc1	$f0,40(s0)
    bd78:	8f0a0028 	lw	t2,40(t8)
    bd7c:	854e0002 	lh	t6,2(t2)
    bd80:	448e2000 	mtc1	t6,$f4
    bd84:	00000000 	nop
    bd88:	468023a0 	cvt.s.w	$f14,$f4
    bd8c:	460e003c 	c.lt.s	$f0,$f14
    bd90:	00000000 	nop
    bd94:	4500002d 	bc1f	be4c <L80B75278+0x574>
    bd98:	3c014120 	lui	at,0x4120
    bd9c:	44813000 	mtc1	at,$f6
    bda0:	00000000 	nop
    bda4:	46067281 	sub.s	$f10,$f14,$f6
    bda8:	4600503c 	c.lt.s	$f10,$f0
    bdac:	00000000 	nop
    bdb0:	45020027 	bc1fl	be50 <L80B75278+0x578>
    bdb4:	44802000 	mtc1	zero,$f4
    bdb8:	860c015c 	lh	t4,348(s0)
    bdbc:	31990001 	andi	t9,t4,0x1
    bdc0:	57200023 	bnezl	t9,be50 <L80B75278+0x578>
    bdc4:	44802000 	mtc1	zero,$f4
    bdc8:	44804000 	mtc1	zero,$f8
    bdcc:	c6040068 	lwc1	$f4,104(s0)
    bdd0:	4604403c 	c.lt.s	$f8,$f4
    bdd4:	00000000 	nop
    bdd8:	4502001d 	bc1fl	be50 <L80B75278+0x578>
    bddc:	44802000 	mtc1	zero,$f4
    bde0:	8e090024 	lw	t1,36(s0)
    bde4:	27a60084 	addiu	a2,sp,132
    bde8:	3c050001 	lui	a1,0x1
    bdec:	acc90000 	sw	t1,0(a2)
    bdf0:	8e0b0028 	lw	t3,40(s0)
    bdf4:	00b12821 	addu	a1,a1,s1
    bdf8:	3c0143fa 	lui	at,0x43fa
    bdfc:	accb0004 	sw	t3,4(a2)
    be00:	8e09002c 	lw	t1,44(s0)
    be04:	44814000 	mtc1	at,$f8
    be08:	240a0096 	li	t2,150
    be0c:	acc90008 	sw	t1,8(a2)
    be10:	8e2d07c0 	lw	t5,1984(s1)
    be14:	240e005a 	li	t6,90
    be18:	260400e4 	addiu	a0,s0,228
    be1c:	8daf0028 	lw	t7,40(t5)
    be20:	3c0742a0 	lui	a3,0x42a0
    be24:	85f80002 	lh	t8,2(t7)
    be28:	44983000 	mtc1	t8,$f6
    be2c:	00000000 	nop
    be30:	468032a0 	cvt.s.w	$f10,$f6
    be34:	e7aa0088 	swc1	$f10,136(sp)
    be38:	8ca51e10 	lw	a1,7696(a1)
    be3c:	afae0018 	sw	t6,24(sp)
    be40:	afaa0014 	sw	t2,20(sp)
    be44:	0c000000 	jal	0 <func_80B699A0>
    be48:	e7a80010 	swc1	$f8,16(sp)
    be4c:	44802000 	mtc1	zero,$f4
    be50:	c6060068 	lwc1	$f6,104(s0)
    be54:	4606203c 	c.lt.s	$f4,$f6
    be58:	00000000 	nop
    be5c:	45030006 	bc1tl	be78 <L80B75278+0x5a0>
    be60:	c60a0060 	lwc1	$f10,96(s0)
    be64:	860c0158 	lh	t4,344(s0)
    be68:	24010005 	li	at,5
    be6c:	558100ac 	bnel	t4,at,c120 <L80B75278+0x848>
    be70:	920201d2 	lbu	v0,466(s0)
    be74:	c60a0060 	lwc1	$f10,96(s0)
    be78:	3c010000 	lui	at,0x0
    be7c:	c4240000 	lwc1	$f4,0(at)
    be80:	e7aa0080 	swc1	$f10,128(sp)
    be84:	c60801ac 	lwc1	$f8,428(s0)
    be88:	c6060028 	lwc1	$f6,40(s0)
    be8c:	3c01bf80 	lui	at,0xbf80
    be90:	46044002 	mul.s	$f0,$f8,$f4
    be94:	c6080104 	lwc1	$f8,260(s0)
    be98:	24190045 	li	t9,69
    be9c:	02202025 	move	a0,s1
    bea0:	02002825 	move	a1,s0
    bea4:	3c0641f0 	lui	a2,0x41f0
    bea8:	3c0741f0 	lui	a3,0x41f0
    beac:	46003281 	sub.s	$f10,$f6,$f0
    beb0:	44813000 	mtc1	at,$f6
    beb4:	3c0142c8 	lui	at,0x42c8
    beb8:	46004101 	sub.s	$f4,$f8,$f0
    bebc:	e60a0028 	swc1	$f10,40(s0)
    bec0:	44815000 	mtc1	at,$f10
    bec4:	e6060060 	swc1	$f6,96(s0)
    bec8:	e6040104 	swc1	$f4,260(s0)
    becc:	e7a000d8 	swc1	$f0,216(sp)
    bed0:	afb90014 	sw	t9,20(sp)
    bed4:	0c000000 	jal	0 <func_80B699A0>
    bed8:	e7aa0010 	swc1	$f10,16(sp)
    bedc:	c7a000d8 	lwc1	$f0,216(sp)
    bee0:	c6080028 	lwc1	$f8,40(s0)
    bee4:	c6060104 	lwc1	$f6,260(s0)
    bee8:	96020088 	lhu	v0,136(s0)
    beec:	46004100 	add.s	$f4,$f8,$f0
    bef0:	304b0008 	andi	t3,v0,0x8
    bef4:	46003280 	add.s	$f10,$f6,$f0
    bef8:	e6040028 	swc1	$f4,40(s0)
    befc:	e60a0104 	swc1	$f10,260(s0)
    bf00:	c7a80080 	lwc1	$f8,128(sp)
    bf04:	11600004 	beqz	t3,bf18 <L80B75278+0x640>
    bf08:	e6080060 	swc1	$f8,96(s0)
    bf0c:	24090014 	li	t1,20
    bf10:	a60901a0 	sh	t1,416(s0)
    bf14:	96020088 	lhu	v0,136(s0)
    bf18:	304d0001 	andi	t5,v0,0x1
    bf1c:	51a00080 	beqzl	t5,c120 <L80B75278+0x848>
    bf20:	920201d2 	lbu	v0,466(s0)
    bf24:	8e2f07c0 	lw	t7,1984(s1)
    bf28:	c60a0028 	lwc1	$f10,40(s0)
    bf2c:	8df80028 	lw	t8,40(t7)
    bf30:	870a0002 	lh	t2,2(t8)
    bf34:	448a2000 	mtc1	t2,$f4
    bf38:	00000000 	nop
    bf3c:	468021a0 	cvt.s.w	$f6,$f4
    bf40:	460a303c 	c.lt.s	$f6,$f10
    bf44:	00000000 	nop
    bf48:	45000048 	bc1f	c06c <L80B75278+0x794>
    bf4c:	3c014040 	lui	at,0x4040
    bf50:	44816000 	mtc1	at,$f12
    bf54:	0c000000 	jal	0 <func_80B699A0>
    bf58:	00000000 	nop
    bf5c:	3c010000 	lui	at,0x0
    bf60:	c4220000 	lwc1	$f2,0(at)
    bf64:	3c014040 	lui	at,0x4040
    bf68:	44814000 	mtc1	at,$f8
    bf6c:	c6060024 	lwc1	$f6,36(s0)
    bf70:	02002025 	move	a0,s0
    bf74:	46080100 	add.s	$f4,$f0,$f8
    bf78:	46023282 	mul.s	$f10,$f6,$f2
    bf7c:	c608002c 	lwc1	$f8,44(s0)
    bf80:	24052869 	li	a1,10345
    bf84:	e6040184 	swc1	$f4,388(s0)
    bf88:	46024102 	mul.s	$f4,$f8,$f2
    bf8c:	e60a005c 	swc1	$f10,92(s0)
    bf90:	0c000000 	jal	0 <func_80B699A0>
    bf94:	e6040064 	swc1	$f4,100(s0)
    bf98:	02002025 	move	a0,s0
    bf9c:	0c000000 	jal	0 <func_80B699A0>
    bfa0:	02202825 	move	a1,s1
    bfa4:	0c000000 	jal	0 <func_80B699A0>
    bfa8:	00000000 	nop
    bfac:	3c013f00 	lui	at,0x3f00
    bfb0:	44813000 	mtc1	at,$f6
    bfb4:	00000000 	nop
    bfb8:	4606003c 	c.lt.s	$f0,$f6
    bfbc:	00000000 	nop
    bfc0:	45000003 	bc1f	bfd0 <L80B75278+0x6f8>
    bfc4:	240e4000 	li	t6,16384
    bfc8:	10000003 	b	bfd8 <L80B75278+0x700>
    bfcc:	a60e016a 	sh	t6,362(s0)
    bfd0:	240cc000 	li	t4,-16384
    bfd4:	a60c016a 	sh	t4,362(s0)
    bfd8:	0c000000 	jal	0 <func_80B699A0>
    bfdc:	00000000 	nop
    bfe0:	3c013f00 	lui	at,0x3f00
    bfe4:	44815000 	mtc1	at,$f10
    bfe8:	00000000 	nop
    bfec:	460a003c 	c.lt.s	$f0,$f10
    bff0:	00000000 	nop
    bff4:	45020004 	bc1fl	c008 <L80B75278+0x730>
    bff8:	3c014200 	lui	at,0x4200
    bffc:	1000000b 	b	c02c <L80B75278+0x754>
    c000:	a6000166 	sh	zero,358(s0)
    c004:	3c014200 	lui	at,0x4200
    c008:	44816000 	mtc1	at,$f12
    c00c:	0c000000 	jal	0 <func_80B699A0>
    c010:	00000000 	nop
    c014:	4600020d 	trunc.w.s	$f8,$f0
    c018:	34018000 	li	at,0x8000
    c01c:	440d4000 	mfc1	t5,$f8
    c020:	00000000 	nop
    c024:	01a17821 	addu	t7,t5,at
    c028:	a60f0166 	sh	t7,358(s0)
    c02c:	3c014680 	lui	at,0x4680
    c030:	44816000 	mtc1	at,$f12
    c034:	0c000000 	jal	0 <func_80B699A0>
    c038:	00000000 	nop
    c03c:	4600010d 	trunc.w.s	$f4,$f0
    c040:	e6140190 	swc1	$f20,400(s0)
    c044:	3c010000 	lui	at,0x0
    c048:	440a2000 	mfc1	t2,$f4
    c04c:	00000000 	nop
    c050:	a60a0168 	sh	t2,360(s0)
    c054:	c4260000 	lwc1	$f6,0(at)
    c058:	3c010000 	lui	at,0x0
    c05c:	e6060194 	swc1	$f6,404(s0)
    c060:	c42a0000 	lwc1	$f10,0(at)
    c064:	1000002d 	b	c11c <L80B75278+0x844>
    c068:	e60a019c 	swc1	$f10,412(s0)
    c06c:	860e0158 	lh	t6,344(s0)
    c070:	44804000 	mtc1	zero,$f8
    c074:	24010005 	li	at,5
    c078:	15c10028 	bne	t6,at,c11c <L80B75278+0x844>
    c07c:	e6080184 	swc1	$f8,388(s0)
    c080:	860c015c 	lh	t4,348(s0)
    c084:	31990001 	andi	t9,t4,0x1
    c088:	17200024 	bnez	t9,c11c <L80B75278+0x844>
    c08c:	3c014120 	lui	at,0x4120
    c090:	44816000 	mtc1	at,$f12
    c094:	3c010001 	lui	at,0x1
    c098:	02214821 	addu	t1,s1,at
    c09c:	260b00e4 	addiu	t3,s0,228
    c0a0:	afab004c 	sw	t3,76(sp)
    c0a4:	0c000000 	jal	0 <func_80B699A0>
    c0a8:	afa90048 	sw	t1,72(sp)
    c0ac:	c6040024 	lwc1	$f4,36(s0)
    c0b0:	3c014120 	lui	at,0x4120
    c0b4:	44816000 	mtc1	at,$f12
    c0b8:	46040180 	add.s	$f6,$f0,$f4
    c0bc:	0c000000 	jal	0 <func_80B699A0>
    c0c0:	e7a60074 	swc1	$f6,116(sp)
    c0c4:	c60a002c 	lwc1	$f10,44(s0)
    c0c8:	3c0140a0 	lui	at,0x40a0
    c0cc:	44813000 	mtc1	at,$f6
    c0d0:	460a0200 	add.s	$f8,$f0,$f10
    c0d4:	3c010000 	lui	at,0x0
    c0d8:	8fad0048 	lw	t5,72(sp)
    c0dc:	8fa4004c 	lw	a0,76(sp)
    c0e0:	e7a8007c 	swc1	$f8,124(sp)
    c0e4:	c6040080 	lwc1	$f4,128(s0)
    c0e8:	27a60074 	addiu	a2,sp,116
    c0ec:	46062280 	add.s	$f10,$f4,$f6
    c0f0:	c4240000 	lwc1	$f4,0(at)
    c0f4:	3c010000 	lui	at,0x0
    c0f8:	e7aa0078 	swc1	$f10,120(sp)
    c0fc:	c60801ac 	lwc1	$f8,428(s0)
    c100:	c42a0000 	lwc1	$f10,0(at)
    c104:	8da51e10 	lw	a1,7696(t5)
    c108:	46044182 	mul.s	$f6,$f8,$f4
    c10c:	460a3200 	add.s	$f8,$f6,$f10
    c110:	44074000 	mfc1	a3,$f8
    c114:	0c000000 	jal	0 <func_80B699A0>
    c118:	00000000 	nop
    c11c:	920201d2 	lbu	v0,466(s0)
    c120:	10400034 	beqz	v0,c1f4 <L80B75278+0x91c>
    c124:	3c010000 	lui	at,0x0
    c128:	c4260000 	lwc1	$f6,0(at)
    c12c:	c60401ac 	lwc1	$f4,428(s0)
    c130:	3c014120 	lui	at,0x4120
    c134:	44814000 	mtc1	at,$f8
    c138:	46062282 	mul.s	$f10,$f4,$f6
    c13c:	244fffff 	addiu	t7,v0,-1
    c140:	a20f01d2 	sb	t7,466(s0)
    c144:	3c010001 	lui	at,0x1
    c148:	02215021 	addu	t2,s1,at
    c14c:	261800e4 	addiu	t8,s0,228
    c150:	afb8004c 	sw	t8,76(sp)
    c154:	46085300 	add.s	$f12,$f10,$f8
    c158:	afaa0048 	sw	t2,72(sp)
    c15c:	a7a00072 	sh	zero,114(sp)
    c160:	e7ac0060 	swc1	$f12,96(sp)
    c164:	0c000000 	jal	0 <func_80B699A0>
    c168:	c7ac0060 	lwc1	$f12,96(sp)
    c16c:	c6040024 	lwc1	$f4,36(s0)
    c170:	c7ac0060 	lwc1	$f12,96(sp)
    c174:	46040180 	add.s	$f6,$f0,$f4
    c178:	0c000000 	jal	0 <func_80B699A0>
    c17c:	e7a60064 	swc1	$f6,100(sp)
    c180:	c60a0028 	lwc1	$f10,40(s0)
    c184:	c7ac0060 	lwc1	$f12,96(sp)
    c188:	460a0200 	add.s	$f8,$f0,$f10
    c18c:	0c000000 	jal	0 <func_80B699A0>
    c190:	e7a80068 	swc1	$f8,104(sp)
    c194:	c604002c 	lwc1	$f4,44(s0)
    c198:	3c010000 	lui	at,0x0
    c19c:	c42c0000 	lwc1	$f12,0(at)
    c1a0:	46040180 	add.s	$f6,$f0,$f4
    c1a4:	0c000000 	jal	0 <func_80B699A0>
    c1a8:	e7a6006c 	swc1	$f6,108(sp)
    c1ac:	3c010000 	lui	at,0x0
    c1b0:	c42a0000 	lwc1	$f10,0(at)
    c1b4:	8fae0048 	lw	t6,72(sp)
    c1b8:	8fa4004c 	lw	a0,76(sp)
    c1bc:	460a0200 	add.s	$f8,$f0,$f10
    c1c0:	8dc51e10 	lw	a1,7696(t6)
    c1c4:	afa00010 	sw	zero,16(sp)
    c1c8:	27a60064 	addiu	a2,sp,100
    c1cc:	44074000 	mfc1	a3,$f8
    c1d0:	0c000000 	jal	0 <func_80B699A0>
    c1d4:	00000000 	nop
    c1d8:	87a20072 	lh	v0,114(sp)
    c1dc:	24420001 	addiu	v0,v0,1
    c1e0:	00021400 	sll	v0,v0,0x10
    c1e4:	00021403 	sra	v0,v0,0x10
    c1e8:	28410002 	slti	at,v0,2
    c1ec:	1420ffdd 	bnez	at,c164 <L80B75278+0x88c>
    c1f0:	a7a20072 	sh	v0,114(sp)
    c1f4:	8fbf0034 	lw	ra,52(sp)
    c1f8:	d7b40020 	ldc1	$f20,32(sp)
    c1fc:	8fb0002c 	lw	s0,44(sp)
    c200:	8fb10030 	lw	s1,48(sp)
    c204:	03e00008 	jr	ra
    c208:	27bd0138 	addiu	sp,sp,312

0000c20c <func_80B75BAC>:
    c20c:	2401000d 	li	at,13
    c210:	afa40000 	sw	a0,0(sp)
    c214:	afa60008 	sw	a2,8(sp)
    c218:	14a1000a 	bne	a1,at,c244 <func_80B75BAC+0x38>
    c21c:	afa7000c 	sw	a3,12(sp)
    c220:	8fa20010 	lw	v0,16(sp)
    c224:	8faf0014 	lw	t7,20(sp)
    c228:	844e0004 	lh	t6,4(v0)
    c22c:	85f80170 	lh	t8,368(t7)
    c230:	01d8c823 	subu	t9,t6,t8
    c234:	27282af8 	addiu	t0,t9,11000
    c238:	a4480004 	sh	t0,4(v0)
    c23c:	03e00008 	jr	ra
    c240:	00001025 	move	v0,zero
    c244:	24010002 	li	at,2
    c248:	10a10004 	beq	a1,at,c25c <func_80B75BAC+0x50>
    c24c:	8fa20010 	lw	v0,16(sp)
    c250:	24010003 	li	at,3
    c254:	54a10009 	bnel	a1,at,c27c <func_80B75BAC+0x70>
    c258:	24010004 	li	at,4
    c25c:	8faa0014 	lw	t2,20(sp)
    c260:	84490002 	lh	t1,2(v0)
    c264:	854b016c 	lh	t3,364(t2)
    c268:	012b6021 	addu	t4,t1,t3
    c26c:	a44c0002 	sh	t4,2(v0)
    c270:	03e00008 	jr	ra
    c274:	00001025 	move	v0,zero
    c278:	24010004 	li	at,4
    c27c:	14a10008 	bne	a1,at,c2a0 <func_80B75BAC+0x94>
    c280:	8fa20010 	lw	v0,16(sp)
    c284:	8faf0014 	lw	t7,20(sp)
    c288:	844d0002 	lh	t5,2(v0)
    c28c:	85ee0176 	lh	t6,374(t7)
    c290:	01aec021 	addu	t8,t5,t6
    c294:	a4580002 	sh	t8,2(v0)
    c298:	03e00008 	jr	ra
    c29c:	00001025 	move	v0,zero
    c2a0:	2401000e 	li	at,14
    c2a4:	14a10008 	bne	a1,at,c2c8 <func_80B75BAC+0xbc>
    c2a8:	8fa20010 	lw	v0,16(sp)
    c2ac:	8fa80014 	lw	t0,20(sp)
    c2b0:	84590002 	lh	t9,2(v0)
    c2b4:	850a0172 	lh	t2,370(t0)
    c2b8:	032a4823 	subu	t1,t9,t2
    c2bc:	a4490002 	sh	t1,2(v0)
    c2c0:	03e00008 	jr	ra
    c2c4:	00001025 	move	v0,zero
    c2c8:	2401000f 	li	at,15
    c2cc:	14a10008 	bne	a1,at,c2f0 <func_80B75BAC+0xe4>
    c2d0:	8fa20010 	lw	v0,16(sp)
    c2d4:	8fac0014 	lw	t4,20(sp)
    c2d8:	844b0002 	lh	t3,2(v0)
    c2dc:	858f0172 	lh	t7,370(t4)
    c2e0:	016f6821 	addu	t5,t3,t7
    c2e4:	a44d0002 	sh	t5,2(v0)
    c2e8:	03e00008 	jr	ra
    c2ec:	00001025 	move	v0,zero
    c2f0:	24010008 	li	at,8
    c2f4:	14a10008 	bne	a1,at,c318 <func_80B75BAC+0x10c>
    c2f8:	8fa20010 	lw	v0,16(sp)
    c2fc:	8fb80014 	lw	t8,20(sp)
    c300:	844e0002 	lh	t6,2(v0)
    c304:	87080174 	lh	t0,372(t8)
    c308:	01c8c821 	addu	t9,t6,t0
    c30c:	a4590002 	sh	t9,2(v0)
    c310:	03e00008 	jr	ra
    c314:	00001025 	move	v0,zero
    c318:	24010009 	li	at,9
    c31c:	14a10006 	bne	a1,at,c338 <func_80B75BAC+0x12c>
    c320:	8fa20010 	lw	v0,16(sp)
    c324:	8fa90014 	lw	t1,20(sp)
    c328:	844a0002 	lh	t2,2(v0)
    c32c:	852c0174 	lh	t4,372(t1)
    c330:	014c5823 	subu	t3,t2,t4
    c334:	a44b0002 	sh	t3,2(v0)
    c338:	03e00008 	jr	ra
    c33c:	00001025 	move	v0,zero

0000c340 <func_80B75CE0>:
    c340:	27bdffe8 	addiu	sp,sp,-24
    c344:	2401000d 	li	at,13
    c348:	afbf0014 	sw	ra,20(sp)
    c34c:	afa40018 	sw	a0,24(sp)
    c350:	afa60020 	sw	a2,32(sp)
    c354:	14a10006 	bne	a1,at,c370 <func_80B75CE0+0x30>
    c358:	afa70024 	sw	a3,36(sp)
    c35c:	8fa50028 	lw	a1,40(sp)
    c360:	3c040000 	lui	a0,0x0
    c364:	24840000 	addiu	a0,a0,0
    c368:	0c000000 	jal	0 <func_80B699A0>
    c36c:	24a501c0 	addiu	a1,a1,448
    c370:	8fbf0014 	lw	ra,20(sp)
    c374:	27bd0018 	addiu	sp,sp,24
    c378:	03e00008 	jr	ra
    c37c:	00000000 	nop

0000c380 <func_80B75D20>:
    c380:	24010003 	li	at,3
    c384:	afa40000 	sw	a0,0(sp)
    c388:	afa60008 	sw	a2,8(sp)
    c38c:	14a10009 	bne	a1,at,c3b4 <func_80B75D20+0x34>
    c390:	afa7000c 	sw	a3,12(sp)
    c394:	8fa20010 	lw	v0,16(sp)
    c398:	8faf0014 	lw	t7,20(sp)
    c39c:	844e0002 	lh	t6,2(v0)
    c3a0:	85f801cc 	lh	t8,460(t7)
    c3a4:	01d8c821 	addu	t9,t6,t8
    c3a8:	a4590002 	sh	t9,2(v0)
    c3ac:	03e00008 	jr	ra
    c3b0:	00001025 	move	v0,zero
    c3b4:	24010004 	li	at,4
    c3b8:	14a10008 	bne	a1,at,c3dc <func_80B75D20+0x5c>
    c3bc:	8fa20010 	lw	v0,16(sp)
    c3c0:	8fa90014 	lw	t1,20(sp)
    c3c4:	84480002 	lh	t0,2(v0)
    c3c8:	852a01ce 	lh	t2,462(t1)
    c3cc:	010a5821 	addu	t3,t0,t2
    c3d0:	a44b0002 	sh	t3,2(v0)
    c3d4:	03e00008 	jr	ra
    c3d8:	00001025 	move	v0,zero
    c3dc:	24010005 	li	at,5
    c3e0:	14a10006 	bne	a1,at,c3fc <func_80B75D20+0x7c>
    c3e4:	8fa20010 	lw	v0,16(sp)
    c3e8:	8fad0014 	lw	t5,20(sp)
    c3ec:	844c0002 	lh	t4,2(v0)
    c3f0:	85af01d0 	lh	t7,464(t5)
    c3f4:	018f7021 	addu	t6,t4,t7
    c3f8:	a44e0002 	sh	t6,2(v0)
    c3fc:	03e00008 	jr	ra
    c400:	00001025 	move	v0,zero

0000c404 <func_80B75DA4>:
    c404:	27bdffe8 	addiu	sp,sp,-24
    c408:	2401000b 	li	at,11
    c40c:	afbf0014 	sw	ra,20(sp)
    c410:	afa40018 	sw	a0,24(sp)
    c414:	afa60020 	sw	a2,32(sp)
    c418:	14a10006 	bne	a1,at,c434 <func_80B75DA4+0x30>
    c41c:	afa70024 	sw	a3,36(sp)
    c420:	8fa50028 	lw	a1,40(sp)
    c424:	3c040000 	lui	a0,0x0
    c428:	24840000 	addiu	a0,a0,0
    c42c:	0c000000 	jal	0 <func_80B699A0>
    c430:	24a501c0 	addiu	a1,a1,448
    c434:	8fbf0014 	lw	ra,20(sp)
    c438:	27bd0018 	addiu	sp,sp,24
    c43c:	03e00008 	jr	ra
    c440:	00000000 	nop

0000c444 <Fishing_Draw>:
    c444:	27bdffd0 	addiu	sp,sp,-48
    c448:	afb00028 	sw	s0,40(sp)
    c44c:	00808025 	move	s0,a0
    c450:	afbf002c 	sw	ra,44(sp)
    c454:	afa50034 	sw	a1,52(sp)
    c458:	0c000000 	jal	0 <func_80B699A0>
    c45c:	8ca40000 	lw	a0,0(a1)
    c460:	c60c0024 	lwc1	$f12,36(s0)
    c464:	c60e0028 	lwc1	$f14,40(s0)
    c468:	8e06002c 	lw	a2,44(s0)
    c46c:	0c000000 	jal	0 <func_80B699A0>
    c470:	00003825 	move	a3,zero
    c474:	860f0162 	lh	t7,354(s0)
    c478:	861800b6 	lh	t8,182(s0)
    c47c:	3c014700 	lui	at,0x4700
    c480:	44814000 	mtc1	at,$f8
    c484:	01f8c821 	addu	t9,t7,t8
    c488:	44992000 	mtc1	t9,$f4
    c48c:	3c010000 	lui	at,0x0
    c490:	c4300000 	lwc1	$f16,0(at)
    c494:	468021a0 	cvt.s.w	$f6,$f4
    c498:	24050001 	li	a1,1
    c49c:	46083283 	div.s	$f10,$f6,$f8
    c4a0:	46105302 	mul.s	$f12,$f10,$f16
    c4a4:	0c000000 	jal	0 <func_80B699A0>
    c4a8:	00000000 	nop
    c4ac:	86080160 	lh	t0,352(s0)
    c4b0:	860900b4 	lh	t1,180(s0)
    c4b4:	3c014700 	lui	at,0x4700
    c4b8:	44813000 	mtc1	at,$f6
    c4bc:	01095021 	addu	t2,t0,t1
    c4c0:	448a9000 	mtc1	t2,$f18
    c4c4:	3c010000 	lui	at,0x0
    c4c8:	c42a0000 	lwc1	$f10,0(at)
    c4cc:	46809120 	cvt.s.w	$f4,$f18
    c4d0:	24050001 	li	a1,1
    c4d4:	46062203 	div.s	$f8,$f4,$f6
    c4d8:	460a4302 	mul.s	$f12,$f8,$f10
    c4dc:	0c000000 	jal	0 <func_80B699A0>
    c4e0:	00000000 	nop
    c4e4:	860b0164 	lh	t3,356(s0)
    c4e8:	860c00b8 	lh	t4,184(s0)
    c4ec:	3c014700 	lui	at,0x4700
    c4f0:	44812000 	mtc1	at,$f4
    c4f4:	016c6821 	addu	t5,t3,t4
    c4f8:	448d8000 	mtc1	t5,$f16
    c4fc:	3c010000 	lui	at,0x0
    c500:	c4280000 	lwc1	$f8,0(at)
    c504:	468084a0 	cvt.s.w	$f18,$f16
    c508:	24050001 	li	a1,1
    c50c:	46049183 	div.s	$f6,$f18,$f4
    c510:	46083302 	mul.s	$f12,$f6,$f8
    c514:	0c000000 	jal	0 <func_80B699A0>
    c518:	00000000 	nop
    c51c:	c60c0050 	lwc1	$f12,80(s0)
    c520:	c60e0054 	lwc1	$f14,84(s0)
    c524:	8e060058 	lw	a2,88(s0)
    c528:	0c000000 	jal	0 <func_80B699A0>
    c52c:	24070001 	li	a3,1
    c530:	920e0150 	lbu	t6,336(s0)
    c534:	3c06453b 	lui	a2,0x453b
    c538:	34c68000 	ori	a2,a2,0x8000
    c53c:	55c0002b 	bnezl	t6,c5ec <Fishing_Draw+0x1a8>
    c540:	44806000 	mtc1	zero,$f12
    c544:	860f016c 	lh	t7,364(s0)
    c548:	3c010000 	lui	at,0x0
    c54c:	c4320000 	lwc1	$f18,0(at)
    c550:	448f5000 	mtc1	t7,$f10
    c554:	3c010000 	lui	at,0x0
    c558:	c4260000 	lwc1	$f6,0(at)
    c55c:	46805420 	cvt.s.w	$f16,$f10
    c560:	24050001 	li	a1,1
    c564:	46128102 	mul.s	$f4,$f16,$f18
    c568:	0c000000 	jal	0 <func_80B699A0>
    c56c:	46062301 	sub.s	$f12,$f4,$f6
    c570:	8618016c 	lh	t8,364(s0)
    c574:	3c014120 	lui	at,0x4120
    c578:	44818000 	mtc1	at,$f16
    c57c:	44984000 	mtc1	t8,$f8
    c580:	3c010000 	lui	at,0x0
    c584:	c4240000 	lwc1	$f4,0(at)
    c588:	468042a0 	cvt.s.w	$f10,$f8
    c58c:	44806000 	mtc1	zero,$f12
    c590:	24070001 	li	a3,1
    c594:	46006386 	mov.s	$f14,$f12
    c598:	46105482 	mul.s	$f18,$f10,$f16
    c59c:	00000000 	nop
    c5a0:	46049182 	mul.s	$f6,$f18,$f4
    c5a4:	44063000 	mfc1	a2,$f6
    c5a8:	0c000000 	jal	0 <func_80B699A0>
    c5ac:	00000000 	nop
    c5b0:	8e0501dc 	lw	a1,476(s0)
    c5b4:	8e0601f8 	lw	a2,504(s0)
    c5b8:	920701da 	lbu	a3,474(s0)
    c5bc:	3c190000 	lui	t9,0x0
    c5c0:	3c080000 	lui	t0,0x0
    c5c4:	25080000 	addiu	t0,t0,0
    c5c8:	27390000 	addiu	t9,t9,0
    c5cc:	afb90010 	sw	t9,16(sp)
    c5d0:	afa80014 	sw	t0,20(sp)
    c5d4:	afb00018 	sw	s0,24(sp)
    c5d8:	0c000000 	jal	0 <func_80B699A0>
    c5dc:	8fa40034 	lw	a0,52(sp)
    c5e0:	10000025 	b	c678 <Fishing_Draw+0x234>
    c5e4:	8fbf002c 	lw	ra,44(sp)
    c5e8:	44806000 	mtc1	zero,$f12
    c5ec:	24070001 	li	a3,1
    c5f0:	0c000000 	jal	0 <func_80B699A0>
    c5f4:	46006386 	mov.s	$f14,$f12
    c5f8:	8609016c 	lh	t1,364(s0)
    c5fc:	3c010000 	lui	at,0x0
    c600:	c4300000 	lwc1	$f16,0(at)
    c604:	44894000 	mtc1	t1,$f8
    c608:	24050001 	li	a1,1
    c60c:	468042a0 	cvt.s.w	$f10,$f8
    c610:	46105302 	mul.s	$f12,$f10,$f16
    c614:	0c000000 	jal	0 <func_80B699A0>
    c618:	00000000 	nop
    c61c:	44806000 	mtc1	zero,$f12
    c620:	3c06c53b 	lui	a2,0xc53b
    c624:	34c68000 	ori	a2,a2,0x8000
    c628:	24070001 	li	a3,1
    c62c:	0c000000 	jal	0 <func_80B699A0>
    c630:	46006386 	mov.s	$f14,$f12
    c634:	3c010000 	lui	at,0x0
    c638:	c42c0000 	lwc1	$f12,0(at)
    c63c:	0c000000 	jal	0 <func_80B699A0>
    c640:	24050001 	li	a1,1
    c644:	8e0501dc 	lw	a1,476(s0)
    c648:	8e0601f8 	lw	a2,504(s0)
    c64c:	920701da 	lbu	a3,474(s0)
    c650:	3c0a0000 	lui	t2,0x0
    c654:	3c0b0000 	lui	t3,0x0
    c658:	256b0000 	addiu	t3,t3,0
    c65c:	254a0000 	addiu	t2,t2,0
    c660:	afaa0010 	sw	t2,16(sp)
    c664:	afab0014 	sw	t3,20(sp)
    c668:	afb00018 	sw	s0,24(sp)
    c66c:	0c000000 	jal	0 <func_80B699A0>
    c670:	8fa40034 	lw	a0,52(sp)
    c674:	8fbf002c 	lw	ra,44(sp)
    c678:	8fb00028 	lw	s0,40(sp)
    c67c:	27bd0030 	addiu	sp,sp,48
    c680:	03e00008 	jr	ra
    c684:	00000000 	nop

0000c688 <func_80B76028>:
    c688:	27bdffd8 	addiu	sp,sp,-40
    c68c:	afbf0014 	sw	ra,20(sp)
    c690:	c4a60000 	lwc1	$f6,0(a1)
    c694:	c4840000 	lwc1	$f4,0(a0)
    c698:	c4aa0008 	lwc1	$f10,8(a1)
    c69c:	c4880008 	lwc1	$f8,8(a0)
    c6a0:	46062381 	sub.s	$f14,$f4,$f6
    c6a4:	3c0141a0 	lui	at,0x41a0
    c6a8:	44812000 	mtc1	at,$f4
    c6ac:	460a4301 	sub.s	$f12,$f8,$f10
    c6b0:	460e7402 	mul.s	$f16,$f14,$f14
    c6b4:	00000000 	nop
    c6b8:	460c6482 	mul.s	$f18,$f12,$f12
    c6bc:	46128000 	add.s	$f0,$f16,$f18
    c6c0:	46000084 	sqrt.s	$f2,$f0
    c6c4:	4604103e 	c.le.s	$f2,$f4
    c6c8:	00000000 	nop
    c6cc:	45000015 	bc1f	c724 <func_80B76028+0x9c>
    c6d0:	00000000 	nop
    c6d4:	afa40028 	sw	a0,40(sp)
    c6d8:	0c000000 	jal	0 <func_80B699A0>
    c6dc:	e7a2001c 	swc1	$f2,28(sp)
    c6e0:	3c010000 	lui	at,0x0
    c6e4:	c42c0000 	lwc1	$f12,0(at)
    c6e8:	3c0141a0 	lui	at,0x41a0
    c6ec:	8fa20028 	lw	v0,40(sp)
    c6f0:	c7a2001c 	lwc1	$f2,28(sp)
    c6f4:	44813000 	mtc1	at,$f6
    c6f8:	3c010000 	lui	at,0x0
    c6fc:	e4400010 	swc1	$f0,16(v0)
    c700:	46023201 	sub.s	$f8,$f6,$f2
    c704:	c42a0000 	lwc1	$f10,0(at)
    c708:	44066000 	mfc1	a2,$f12
    c70c:	44076000 	mfc1	a3,$f12
    c710:	460a4402 	mul.s	$f16,$f8,$f10
    c714:	2444000c 	addiu	a0,v0,12
    c718:	44058000 	mfc1	a1,$f16
    c71c:	0c000000 	jal	0 <func_80B699A0>
    c720:	00000000 	nop
    c724:	8fbf0014 	lw	ra,20(sp)
    c728:	27bd0028 	addiu	sp,sp,40
    c72c:	03e00008 	jr	ra
    c730:	00000000 	nop

0000c734 <func_80B760D4>:
    c734:	27bdffd8 	addiu	sp,sp,-40
    c738:	afbf0014 	sw	ra,20(sp)
    c73c:	afa40028 	sw	a0,40(sp)
    c740:	afa60030 	sw	a2,48(sp)
    c744:	c4a60000 	lwc1	$f6,0(a1)
    c748:	c4840000 	lwc1	$f4,0(a0)
    c74c:	c4aa0008 	lwc1	$f10,8(a1)
    c750:	c4880008 	lwc1	$f8,8(a0)
    c754:	46062381 	sub.s	$f14,$f4,$f6
    c758:	3c014220 	lui	at,0x4220
    c75c:	44812000 	mtc1	at,$f4
    c760:	460a4301 	sub.s	$f12,$f8,$f10
    c764:	460e7402 	mul.s	$f16,$f14,$f14
    c768:	00000000 	nop
    c76c:	460c6482 	mul.s	$f18,$f12,$f12
    c770:	46128000 	add.s	$f0,$f16,$f18
    c774:	46000004 	sqrt.s	$f0,$f0
    c778:	4604003e 	c.le.s	$f0,$f4
    c77c:	e7a0001c 	swc1	$f0,28(sp)
    c780:	4500000a 	bc1f	c7ac <func_80B760D4+0x78>
    c784:	00000000 	nop
    c788:	0c000000 	jal	0 <func_80B699A0>
    c78c:	00000000 	nop
    c790:	8fa40028 	lw	a0,40(sp)
    c794:	00022c00 	sll	a1,v0,0x10
    c798:	00052c03 	sra	a1,a1,0x10
    c79c:	2406000a 	li	a2,10
    c7a0:	24070300 	li	a3,768
    c7a4:	0c000000 	jal	0 <func_80B699A0>
    c7a8:	24840028 	addiu	a0,a0,40
    c7ac:	93af0033 	lbu	t7,51(sp)
    c7b0:	3c014270 	lui	at,0x4270
    c7b4:	c7a8001c 	lwc1	$f8,28(sp)
    c7b8:	51e00014 	beqzl	t7,c80c <func_80B760D4+0xd8>
    c7bc:	8fbf0014 	lw	ra,20(sp)
    c7c0:	44813000 	mtc1	at,$f6
    c7c4:	8fa40028 	lw	a0,40(sp)
    c7c8:	3c063dcc 	lui	a2,0x3dcc
    c7cc:	4606403e 	c.le.s	$f8,$f6
    c7d0:	3c013f80 	lui	at,0x3f80
    c7d4:	34c6cccd 	ori	a2,a2,0xcccd
    c7d8:	3c073e4c 	lui	a3,0x3e4c
    c7dc:	4500000a 	bc1f	c808 <func_80B760D4+0xd4>
    c7e0:	2484002c 	addiu	a0,a0,44
    c7e4:	44810000 	mtc1	at,$f0
    c7e8:	29e10015 	slti	at,t7,21
    c7ec:	14200003 	bnez	at,c7fc <func_80B760D4+0xc8>
    c7f0:	3c013fc0 	lui	at,0x3fc0
    c7f4:	44810000 	mtc1	at,$f0
    c7f8:	00000000 	nop
    c7fc:	44050000 	mfc1	a1,$f0
    c800:	0c000000 	jal	0 <func_80B699A0>
    c804:	34e7cccd 	ori	a3,a3,0xcccd
    c808:	8fbf0014 	lw	ra,20(sp)
    c80c:	27bd0028 	addiu	sp,sp,40
    c810:	03e00008 	jr	ra
    c814:	00000000 	nop

0000c818 <func_80B761B8>:
    c818:	27bdffc0 	addiu	sp,sp,-64
    c81c:	f7b60018 	sdc1	$f22,24(sp)
    c820:	3c010000 	lui	at,0x0
    c824:	c4360000 	lwc1	$f22,0(at)
    c828:	afb40034 	sw	s4,52(sp)
    c82c:	afb30030 	sw	s3,48(sp)
    c830:	afb2002c 	sw	s2,44(sp)
    c834:	afb10028 	sw	s1,40(sp)
    c838:	f7b40010 	sdc1	$f20,16(sp)
    c83c:	3c0142c8 	lui	at,0x42c8
    c840:	afbf003c 	sw	ra,60(sp)
    c844:	afb50038 	sw	s5,56(sp)
    c848:	afb00024 	sw	s0,36(sp)
    c84c:	3c110000 	lui	s1,0x0
    c850:	4481a000 	mtc1	at,$f20
    c854:	00809825 	move	s3,a0
    c858:	26310000 	addiu	s1,s1,0
    c85c:	8c951c44 	lw	s5,7236(a0)
    c860:	241200fe 	li	s2,254
    c864:	0000a025 	move	s4,zero
    c868:	922e0030 	lbu	t6,48(s1)
    c86c:	3c010001 	lui	at,0x1
    c870:	34211d60 	ori	at,at,0x1d60
    c874:	11c0007b 	beqz	t6,ca64 <func_80B761B8+0x24c>
    c878:	02612021 	addu	a0,s3,at
    c87c:	862f0032 	lh	t7,50(s1)
    c880:	3c070000 	lui	a3,0x0
    c884:	a2200034 	sb	zero,52(s1)
    c888:	25f80001 	addiu	t8,t7,1
    c88c:	a6380032 	sh	t8,50(s1)
    c890:	24e70000 	addiu	a3,a3,0
    c894:	02202825 	move	a1,s1
    c898:	0c000000 	jal	0 <func_80B699A0>
    c89c:	26260018 	addiu	a2,s1,24
    c8a0:	c6220020 	lwc1	$f2,32(s1)
    c8a4:	c6240038 	lwc1	$f4,56(s1)
    c8a8:	3c0143fa 	lui	at,0x43fa
    c8ac:	44814000 	mtc1	at,$f8
    c8b0:	4604103c 	c.lt.s	$f2,$f4
    c8b4:	00000000 	nop
    c8b8:	4502000c 	bc1fl	c8ec <func_80B761B8+0xd4>
    c8bc:	4608103c 	c.lt.s	$f2,$f8
    c8c0:	c6200018 	lwc1	$f0,24(s1)
    c8c4:	4602a180 	add.s	$f6,$f20,$f2
    c8c8:	24190001 	li	t9,1
    c8cc:	46000005 	abs.s	$f0,$f0
    c8d0:	4606003c 	c.lt.s	$f0,$f6
    c8d4:	00000000 	nop
    c8d8:	45020004 	bc1fl	c8ec <func_80B761B8+0xd4>
    c8dc:	4608103c 	c.lt.s	$f2,$f8
    c8e0:	a2390034 	sb	t9,52(s1)
    c8e4:	c6220020 	lwc1	$f2,32(s1)
    c8e8:	4608103c 	c.lt.s	$f2,$f8
    c8ec:	00000000 	nop
    c8f0:	4502005d 	bc1fl	ca68 <func_80B761B8+0x250>
    c8f4:	26940001 	addiu	s4,s4,1
    c8f8:	c6200018 	lwc1	$f0,24(s1)
    c8fc:	4602a280 	add.s	$f10,$f20,$f2
    c900:	46000005 	abs.s	$f0,$f0
    c904:	460a003c 	c.lt.s	$f0,$f10
    c908:	00000000 	nop
    c90c:	45020056 	bc1fl	ca68 <func_80B761B8+0x250>
    c910:	26940001 	addiu	s4,s4,1
    c914:	92220030 	lbu	v0,48(s1)
    c918:	24010001 	li	at,1
    c91c:	02202025 	move	a0,s1
    c920:	5441001c 	bnel	v0,at,c994 <func_80B761B8+0x17c>
    c924:	24010002 	li	at,2
    c928:	0c000000 	jal	0 <func_80B699A0>
    c92c:	26a50024 	addiu	a1,s5,36
    c930:	8e701c54 	lw	s0,7252(s3)
    c934:	52000011 	beqzl	s0,c97c <func_80B761B8+0x164>
    c938:	4405b000 	mfc1	a1,$f22
    c93c:	86080000 	lh	t0,0(s0)
    c940:	16480006 	bne	s2,t0,c95c <func_80B761B8+0x144>
    c944:	00000000 	nop
    c948:	8609001c 	lh	t1,28(s0)
    c94c:	02202025 	move	a0,s1
    c950:	29210064 	slti	at,t1,100
    c954:	10200003 	beqz	at,c964 <func_80B761B8+0x14c>
    c958:	00000000 	nop
    c95c:	10000004 	b	c970 <func_80B761B8+0x158>
    c960:	8e100124 	lw	s0,292(s0)
    c964:	0c000000 	jal	0 <func_80B699A0>
    c968:	26050024 	addiu	a1,s0,36
    c96c:	8e100124 	lw	s0,292(s0)
    c970:	5600fff3 	bnezl	s0,c940 <func_80B761B8+0x128>
    c974:	86080000 	lh	t0,0(s0)
    c978:	4405b000 	mfc1	a1,$f22
    c97c:	4406b000 	mfc1	a2,$f22
    c980:	0c000000 	jal	0 <func_80B699A0>
    c984:	2624000c 	addiu	a0,s1,12
    c988:	10000037 	b	ca68 <func_80B761B8+0x250>
    c98c:	26940001 	addiu	s4,s4,1
    c990:	24010002 	li	at,2
    c994:	14410033 	bne	v0,at,ca64 <func_80B761B8+0x24c>
    c998:	02202025 	move	a0,s1
    c99c:	26a50024 	addiu	a1,s5,36
    c9a0:	0c000000 	jal	0 <func_80B699A0>
    c9a4:	00003025 	move	a2,zero
    c9a8:	8e701c54 	lw	s0,7252(s3)
    c9ac:	52000012 	beqzl	s0,c9f8 <func_80B761B8+0x1e0>
    c9b0:	26240028 	addiu	a0,s1,40
    c9b4:	860a0000 	lh	t2,0(s0)
    c9b8:	164a0007 	bne	s2,t2,c9d8 <func_80B761B8+0x1c0>
    c9bc:	00000000 	nop
    c9c0:	860b001c 	lh	t3,28(s0)
    c9c4:	02202025 	move	a0,s1
    c9c8:	26050024 	addiu	a1,s0,36
    c9cc:	29610064 	slti	at,t3,100
    c9d0:	10200003 	beqz	at,c9e0 <func_80B761B8+0x1c8>
    c9d4:	00000000 	nop
    c9d8:	10000004 	b	c9ec <func_80B761B8+0x1d4>
    c9dc:	8e100124 	lw	s0,292(s0)
    c9e0:	0c000000 	jal	0 <func_80B699A0>
    c9e4:	92060151 	lbu	a2,337(s0)
    c9e8:	8e100124 	lw	s0,292(s0)
    c9ec:	5600fff2 	bnezl	s0,c9b8 <func_80B761B8+0x1a0>
    c9f0:	860a0000 	lh	t2,0(s0)
    c9f4:	26240028 	addiu	a0,s1,40
    c9f8:	00002825 	move	a1,zero
    c9fc:	24060014 	li	a2,20
    ca00:	0c000000 	jal	0 <func_80B699A0>
    ca04:	24070050 	li	a3,80
    ca08:	86240032 	lh	a0,50(s1)
    ca0c:	00042300 	sll	a0,a0,0xc
    ca10:	00042400 	sll	a0,a0,0x10
    ca14:	0c000000 	jal	0 <func_80B699A0>
    ca18:	00042403 	sra	a0,a0,0x10
    ca1c:	8e6c07c0 	lw	t4,1984(s3)
    ca20:	c628002c 	lwc1	$f8,44(s1)
    ca24:	3c014000 	lui	at,0x4000
    ca28:	8d8d0028 	lw	t5,40(t4)
    ca2c:	46080282 	mul.s	$f10,$f0,$f8
    ca30:	44812000 	mtc1	at,$f4
    ca34:	85ae0002 	lh	t6,2(t5)
    ca38:	3c053dcc 	lui	a1,0x3dcc
    ca3c:	3c063ca3 	lui	a2,0x3ca3
    ca40:	448e8000 	mtc1	t6,$f16
    ca44:	34c6d70a 	ori	a2,a2,0xd70a
    ca48:	34a5cccd 	ori	a1,a1,0xcccd
    ca4c:	468084a0 	cvt.s.w	$f18,$f16
    ca50:	2624002c 	addiu	a0,s1,44
    ca54:	46049180 	add.s	$f6,$f18,$f4
    ca58:	46065400 	add.s	$f16,$f10,$f6
    ca5c:	0c000000 	jal	0 <func_80B699A0>
    ca60:	e6300004 	swc1	$f16,4(s1)
    ca64:	26940001 	addiu	s4,s4,1
    ca68:	0014a400 	sll	s4,s4,0x10
    ca6c:	0014a403 	sra	s4,s4,0x10
    ca70:	2a81008c 	slti	at,s4,140
    ca74:	1420ff7c 	bnez	at,c868 <func_80B761B8+0x50>
    ca78:	2631003c 	addiu	s1,s1,60
    ca7c:	3c0f0000 	lui	t7,0x0
    ca80:	85ef0000 	lh	t7,0(t7)
    ca84:	3c010001 	lui	at,0x1
    ca88:	34211e60 	ori	at,at,0x1e60
    ca8c:	15e00006 	bnez	t7,caa8 <func_80B761B8+0x290>
    ca90:	02602025 	move	a0,s3
    ca94:	3c060000 	lui	a2,0x0
    ca98:	8cc60000 	lw	a2,0(a2)
    ca9c:	02612821 	addu	a1,s3,at
    caa0:	0c000000 	jal	0 <func_80B699A0>
    caa4:	24c60230 	addiu	a2,a2,560
    caa8:	8fbf003c 	lw	ra,60(sp)
    caac:	d7b40010 	ldc1	$f20,16(sp)
    cab0:	d7b60018 	ldc1	$f22,24(sp)
    cab4:	8fb00024 	lw	s0,36(sp)
    cab8:	8fb10028 	lw	s1,40(sp)
    cabc:	8fb2002c 	lw	s2,44(sp)
    cac0:	8fb30030 	lw	s3,48(sp)
    cac4:	8fb40034 	lw	s4,52(sp)
    cac8:	8fb50038 	lw	s5,56(sp)
    cacc:	03e00008 	jr	ra
    cad0:	27bd0040 	addiu	sp,sp,64

0000cad4 <func_80B76474>:
    cad4:	27bdff60 	addiu	sp,sp,-160
    cad8:	afbf003c 	sw	ra,60(sp)
    cadc:	afbe0038 	sw	s8,56(sp)
    cae0:	afb70034 	sw	s7,52(sp)
    cae4:	afb60030 	sw	s6,48(sp)
    cae8:	afb5002c 	sw	s5,44(sp)
    caec:	afb40028 	sw	s4,40(sp)
    caf0:	afb30024 	sw	s3,36(sp)
    caf4:	afb20020 	sw	s2,32(sp)
    caf8:	afb1001c 	sw	s1,28(sp)
    cafc:	afb00018 	sw	s0,24(sp)
    cb00:	8c850000 	lw	a1,0(a0)
    cb04:	0080f025 	move	s8,a0
    cb08:	3c100000 	lui	s0,0x0
    cb0c:	3c060000 	lui	a2,0x0
    cb10:	0000a825 	move	s5,zero
    cb14:	26100000 	addiu	s0,s0,0
    cb18:	24c60000 	addiu	a2,a2,0
    cb1c:	27a4007c 	addiu	a0,sp,124
    cb20:	24071e18 	li	a3,7704
    cb24:	0c000000 	jal	0 <func_80B699A0>
    cb28:	00a09025 	move	s2,a1
    cb2c:	0c000000 	jal	0 <func_80B699A0>
    cb30:	00000000 	nop
    cb34:	3c17da38 	lui	s7,0xda38
    cb38:	36f70003 	ori	s7,s7,0x3
    cb3c:	00009825 	move	s3,zero
    cb40:	3c16de00 	lui	s6,0xde00
    cb44:	920e0030 	lbu	t6,48(s0)
    cb48:	24010001 	li	at,1
    cb4c:	55c10033 	bnel	t6,at,cc1c <func_80B76474+0x148>
    cb50:	26730001 	addiu	s3,s3,1
    cb54:	16a00009 	bnez	s5,cb7c <func_80B76474+0xa8>
    cb58:	3c040601 	lui	a0,0x601
    cb5c:	8e4202d0 	lw	v0,720(s2)
    cb60:	24844030 	addiu	a0,a0,16432
    cb64:	26b50001 	addiu	s5,s5,1
    cb68:	244f0008 	addiu	t7,v0,8
    cb6c:	ae4f02d0 	sw	t7,720(s2)
    cb70:	32b500ff 	andi	s5,s5,0xff
    cb74:	ac440004 	sw	a0,4(v0)
    cb78:	ac560000 	sw	s6,0(v0)
    cb7c:	92180034 	lbu	t8,52(s0)
    cb80:	3c140601 	lui	s4,0x601
    cb84:	269440b0 	addiu	s4,s4,16560
    cb88:	13000023 	beqz	t8,cc18 <func_80B76474+0x144>
    cb8c:	00003825 	move	a3,zero
    cb90:	c60c0000 	lwc1	$f12,0(s0)
    cb94:	c60e0004 	lwc1	$f14,4(s0)
    cb98:	0c000000 	jal	0 <func_80B699A0>
    cb9c:	8e060008 	lw	a2,8(s0)
    cba0:	c60c0024 	lwc1	$f12,36(s0)
    cba4:	24070001 	li	a3,1
    cba8:	44066000 	mfc1	a2,$f12
    cbac:	0c000000 	jal	0 <func_80B699A0>
    cbb0:	46006386 	mov.s	$f14,$f12
    cbb4:	c60c0010 	lwc1	$f12,16(s0)
    cbb8:	0c000000 	jal	0 <func_80B699A0>
    cbbc:	24050001 	li	a1,1
    cbc0:	c60c000c 	lwc1	$f12,12(s0)
    cbc4:	0c000000 	jal	0 <func_80B699A0>
    cbc8:	24050001 	li	a1,1
    cbcc:	c60c0014 	lwc1	$f12,20(s0)
    cbd0:	0c000000 	jal	0 <func_80B699A0>
    cbd4:	24050001 	li	a1,1
    cbd8:	8e4202d0 	lw	v0,720(s2)
    cbdc:	3c050000 	lui	a1,0x0
    cbe0:	24a50000 	addiu	a1,a1,0
    cbe4:	24590008 	addiu	t9,v0,8
    cbe8:	ae5902d0 	sw	t9,720(s2)
    cbec:	ac570000 	sw	s7,0(v0)
    cbf0:	8fc40000 	lw	a0,0(s8)
    cbf4:	24061e2e 	li	a2,7726
    cbf8:	0c000000 	jal	0 <func_80B699A0>
    cbfc:	00408825 	move	s1,v0
    cc00:	ae220004 	sw	v0,4(s1)
    cc04:	8e4202d0 	lw	v0,720(s2)
    cc08:	24480008 	addiu	t0,v0,8
    cc0c:	ae4802d0 	sw	t0,720(s2)
    cc10:	ac540004 	sw	s4,4(v0)
    cc14:	ac560000 	sw	s6,0(v0)
    cc18:	26730001 	addiu	s3,s3,1
    cc1c:	00139c00 	sll	s3,s3,0x10
    cc20:	00139c03 	sra	s3,s3,0x10
    cc24:	2a61008c 	slti	at,s3,140
    cc28:	1420ffc6 	bnez	at,cb44 <func_80B76474+0x70>
    cc2c:	2610003c 	addiu	s0,s0,60
    cc30:	3c100000 	lui	s0,0x0
    cc34:	0000a825 	move	s5,zero
    cc38:	26100000 	addiu	s0,s0,0
    cc3c:	00009825 	move	s3,zero
    cc40:	92090030 	lbu	t1,48(s0)
    cc44:	24010004 	li	at,4
    cc48:	5521002a 	bnel	t1,at,ccf4 <func_80B76474+0x220>
    cc4c:	26730001 	addiu	s3,s3,1
    cc50:	16a00009 	bnez	s5,cc78 <func_80B76474+0x1a4>
    cc54:	3c040601 	lui	a0,0x601
    cc58:	8e4202c0 	lw	v0,704(s2)
    cc5c:	24843f50 	addiu	a0,a0,16208
    cc60:	26b50001 	addiu	s5,s5,1
    cc64:	244a0008 	addiu	t2,v0,8
    cc68:	ae4a02c0 	sw	t2,704(s2)
    cc6c:	32b500ff 	andi	s5,s5,0xff
    cc70:	ac440004 	sw	a0,4(v0)
    cc74:	ac560000 	sw	s6,0(v0)
    cc78:	920b0034 	lbu	t3,52(s0)
    cc7c:	3c140601 	lui	s4,0x601
    cc80:	26943fd0 	addiu	s4,s4,16336
    cc84:	1160001a 	beqz	t3,ccf0 <func_80B76474+0x21c>
    cc88:	00003825 	move	a3,zero
    cc8c:	c60c0000 	lwc1	$f12,0(s0)
    cc90:	c60e0004 	lwc1	$f14,4(s0)
    cc94:	0c000000 	jal	0 <func_80B699A0>
    cc98:	8e060008 	lw	a2,8(s0)
    cc9c:	c60c0024 	lwc1	$f12,36(s0)
    cca0:	24070001 	li	a3,1
    cca4:	44066000 	mfc1	a2,$f12
    cca8:	0c000000 	jal	0 <func_80B699A0>
    ccac:	46006386 	mov.s	$f14,$f12
    ccb0:	8e4202c0 	lw	v0,704(s2)
    ccb4:	3c050000 	lui	a1,0x0
    ccb8:	24a50000 	addiu	a1,a1,0
    ccbc:	244c0008 	addiu	t4,v0,8
    ccc0:	ae4c02c0 	sw	t4,704(s2)
    ccc4:	ac570000 	sw	s7,0(v0)
    ccc8:	8fc40000 	lw	a0,0(s8)
    cccc:	24061e44 	li	a2,7748
    ccd0:	0c000000 	jal	0 <func_80B699A0>
    ccd4:	00408825 	move	s1,v0
    ccd8:	ae220004 	sw	v0,4(s1)
    ccdc:	8e4202c0 	lw	v0,704(s2)
    cce0:	244d0008 	addiu	t5,v0,8
    cce4:	ae4d02c0 	sw	t5,704(s2)
    cce8:	ac540004 	sw	s4,4(v0)
    ccec:	ac560000 	sw	s6,0(v0)
    ccf0:	26730001 	addiu	s3,s3,1
    ccf4:	00139c00 	sll	s3,s3,0x10
    ccf8:	00139c03 	sra	s3,s3,0x10
    ccfc:	2a61008c 	slti	at,s3,140
    cd00:	1420ffcf 	bnez	at,cc40 <func_80B76474+0x16c>
    cd04:	2610003c 	addiu	s0,s0,60
    cd08:	3c100000 	lui	s0,0x0
    cd0c:	0000a825 	move	s5,zero
    cd10:	26100000 	addiu	s0,s0,0
    cd14:	00009825 	move	s3,zero
    cd18:	920e0030 	lbu	t6,48(s0)
    cd1c:	24010002 	li	at,2
    cd20:	55c1003c 	bnel	t6,at,ce14 <func_80B76474+0x340>
    cd24:	26730001 	addiu	s3,s3,1
    cd28:	16a00009 	bnez	s5,cd50 <func_80B76474+0x27c>
    cd2c:	3c040601 	lui	a0,0x601
    cd30:	8e4202d0 	lw	v0,720(s2)
    cd34:	24843330 	addiu	a0,a0,13104
    cd38:	26b50001 	addiu	s5,s5,1
    cd3c:	244f0008 	addiu	t7,v0,8
    cd40:	ae4f02d0 	sw	t7,720(s2)
    cd44:	32b500ff 	andi	s5,s5,0xff
    cd48:	ac440004 	sw	a0,4(v0)
    cd4c:	ac560000 	sw	s6,0(v0)
    cd50:	92180034 	lbu	t8,52(s0)
    cd54:	3c140601 	lui	s4,0x601
    cd58:	269433b0 	addiu	s4,s4,13232
    cd5c:	1300002c 	beqz	t8,ce10 <func_80B76474+0x33c>
    cd60:	00003825 	move	a3,zero
    cd64:	c60c0000 	lwc1	$f12,0(s0)
    cd68:	c60e0004 	lwc1	$f14,4(s0)
    cd6c:	0c000000 	jal	0 <func_80B699A0>
    cd70:	8e060008 	lw	a2,8(s0)
    cd74:	c60c0024 	lwc1	$f12,36(s0)
    cd78:	3c013f80 	lui	at,0x3f80
    cd7c:	44817000 	mtc1	at,$f14
    cd80:	44066000 	mfc1	a2,$f12
    cd84:	0c000000 	jal	0 <func_80B699A0>
    cd88:	24070001 	li	a3,1
    cd8c:	86190028 	lh	t9,40(s0)
    cd90:	3c010000 	lui	at,0x0
    cd94:	c4280000 	lwc1	$f8,0(at)
    cd98:	44992000 	mtc1	t9,$f4
    cd9c:	24050001 	li	a1,1
    cda0:	468021a0 	cvt.s.w	$f6,$f4
    cda4:	46083302 	mul.s	$f12,$f6,$f8
    cda8:	0c000000 	jal	0 <func_80B699A0>
    cdac:	00000000 	nop
    cdb0:	44806000 	mtc1	zero,$f12
    cdb4:	3c0641a0 	lui	a2,0x41a0
    cdb8:	24070001 	li	a3,1
    cdbc:	0c000000 	jal	0 <func_80B699A0>
    cdc0:	46006386 	mov.s	$f14,$f12
    cdc4:	c60c0010 	lwc1	$f12,16(s0)
    cdc8:	0c000000 	jal	0 <func_80B699A0>
    cdcc:	24050001 	li	a1,1
    cdd0:	8e4202d0 	lw	v0,720(s2)
    cdd4:	3c050000 	lui	a1,0x0
    cdd8:	24a50000 	addiu	a1,a1,0
    cddc:	24480008 	addiu	t0,v0,8
    cde0:	ae4802d0 	sw	t0,720(s2)
    cde4:	ac570000 	sw	s7,0(v0)
    cde8:	8fc40000 	lw	a0,0(s8)
    cdec:	24061e5e 	li	a2,7774
    cdf0:	0c000000 	jal	0 <func_80B699A0>
    cdf4:	00408825 	move	s1,v0
    cdf8:	ae220004 	sw	v0,4(s1)
    cdfc:	8e4202d0 	lw	v0,720(s2)
    ce00:	24490008 	addiu	t1,v0,8
    ce04:	ae4902d0 	sw	t1,720(s2)
    ce08:	ac540004 	sw	s4,4(v0)
    ce0c:	ac560000 	sw	s6,0(v0)
    ce10:	26730001 	addiu	s3,s3,1
    ce14:	00139c00 	sll	s3,s3,0x10
    ce18:	00139c03 	sra	s3,s3,0x10
    ce1c:	2a61008c 	slti	at,s3,140
    ce20:	1420ffbd 	bnez	at,cd18 <func_80B76474+0x244>
    ce24:	2610003c 	addiu	s0,s0,60
    ce28:	3c100000 	lui	s0,0x0
    ce2c:	0000a825 	move	s5,zero
    ce30:	26100000 	addiu	s0,s0,0
    ce34:	00009825 	move	s3,zero
    ce38:	920a0030 	lbu	t2,48(s0)
    ce3c:	24010003 	li	at,3
    ce40:	5541002d 	bnel	t2,at,cef8 <func_80B76474+0x424>
    ce44:	26730001 	addiu	s3,s3,1
    ce48:	16a00009 	bnez	s5,ce70 <func_80B76474+0x39c>
    ce4c:	3c040601 	lui	a0,0x601
    ce50:	8e4202c0 	lw	v0,704(s2)
    ce54:	24843590 	addiu	a0,a0,13712
    ce58:	26b50001 	addiu	s5,s5,1
    ce5c:	244b0008 	addiu	t3,v0,8
    ce60:	ae4b02c0 	sw	t3,704(s2)
    ce64:	32b500ff 	andi	s5,s5,0xff
    ce68:	ac440004 	sw	a0,4(v0)
    ce6c:	ac560000 	sw	s6,0(v0)
    ce70:	920c0034 	lbu	t4,52(s0)
    ce74:	3c140601 	lui	s4,0x601
    ce78:	26943610 	addiu	s4,s4,13840
    ce7c:	1180001d 	beqz	t4,cef4 <func_80B76474+0x420>
    ce80:	00003825 	move	a3,zero
    ce84:	c60c0000 	lwc1	$f12,0(s0)
    ce88:	c60e0004 	lwc1	$f14,4(s0)
    ce8c:	0c000000 	jal	0 <func_80B699A0>
    ce90:	8e060008 	lw	a2,8(s0)
    ce94:	c60c0024 	lwc1	$f12,36(s0)
    ce98:	24070001 	li	a3,1
    ce9c:	44066000 	mfc1	a2,$f12
    cea0:	0c000000 	jal	0 <func_80B699A0>
    cea4:	46006386 	mov.s	$f14,$f12
    cea8:	c60c0010 	lwc1	$f12,16(s0)
    ceac:	0c000000 	jal	0 <func_80B699A0>
    ceb0:	24050001 	li	a1,1
    ceb4:	8e4202c0 	lw	v0,704(s2)
    ceb8:	3c050000 	lui	a1,0x0
    cebc:	24a50000 	addiu	a1,a1,0
    cec0:	244d0008 	addiu	t5,v0,8
    cec4:	ae4d02c0 	sw	t5,704(s2)
    cec8:	ac570000 	sw	s7,0(v0)
    cecc:	8fc40000 	lw	a0,0(s8)
    ced0:	24061e76 	li	a2,7798
    ced4:	0c000000 	jal	0 <func_80B699A0>
    ced8:	00408825 	move	s1,v0
    cedc:	ae220004 	sw	v0,4(s1)
    cee0:	8e4202c0 	lw	v0,704(s2)
    cee4:	244e0008 	addiu	t6,v0,8
    cee8:	ae4e02c0 	sw	t6,704(s2)
    ceec:	ac540004 	sw	s4,4(v0)
    cef0:	ac560000 	sw	s6,0(v0)
    cef4:	26730001 	addiu	s3,s3,1
    cef8:	00139c00 	sll	s3,s3,0x10
    cefc:	00139c03 	sra	s3,s3,0x10
    cf00:	2a61008c 	slti	at,s3,140
    cf04:	1420ffcc 	bnez	at,ce38 <func_80B76474+0x364>
    cf08:	2610003c 	addiu	s0,s0,60
    cf0c:	0c000000 	jal	0 <func_80B699A0>
    cf10:	00000000 	nop
    cf14:	3c060000 	lui	a2,0x0
    cf18:	24c60000 	addiu	a2,a2,0
    cf1c:	27a4007c 	addiu	a0,sp,124
    cf20:	8fc50000 	lw	a1,0(s8)
    cf24:	0c000000 	jal	0 <func_80B699A0>
    cf28:	24071e7d 	li	a3,7805
    cf2c:	8fbf003c 	lw	ra,60(sp)
    cf30:	8fb00018 	lw	s0,24(sp)
    cf34:	8fb1001c 	lw	s1,28(sp)
    cf38:	8fb20020 	lw	s2,32(sp)
    cf3c:	8fb30024 	lw	s3,36(sp)
    cf40:	8fb40028 	lw	s4,40(sp)
    cf44:	8fb5002c 	lw	s5,44(sp)
    cf48:	8fb60030 	lw	s6,48(sp)
    cf4c:	8fb70034 	lw	s7,52(sp)
    cf50:	8fbe0038 	lw	s8,56(sp)
    cf54:	03e00008 	jr	ra
    cf58:	27bd00a0 	addiu	sp,sp,160

0000cf5c <func_80B768FC>:
    cf5c:	27bdff00 	addiu	sp,sp,-256
    cf60:	3c0e0000 	lui	t6,0x0
    cf64:	81ce0000 	lb	t6,0(t6)
    cf68:	afb00058 	sw	s0,88(sp)
    cf6c:	afbf007c 	sw	ra,124(sp)
    cf70:	afbe0078 	sw	s8,120(sp)
    cf74:	afb70074 	sw	s7,116(sp)
    cf78:	afb60070 	sw	s6,112(sp)
    cf7c:	afb5006c 	sw	s5,108(sp)
    cf80:	afb40068 	sw	s4,104(sp)
    cf84:	afb30064 	sw	s3,100(sp)
    cf88:	afb20060 	sw	s2,96(sp)
    cf8c:	afb1005c 	sw	s1,92(sp)
    cf90:	f7be0050 	sdc1	$f30,80(sp)
    cf94:	f7bc0048 	sdc1	$f28,72(sp)
    cf98:	f7ba0040 	sdc1	$f26,64(sp)
    cf9c:	f7b80038 	sdc1	$f24,56(sp)
    cfa0:	f7b60030 	sdc1	$f22,48(sp)
    cfa4:	f7b40028 	sdc1	$f20,40(sp)
    cfa8:	a7a000fe 	sh	zero,254(sp)
    cfac:	3c100000 	lui	s0,0x0
    cfb0:	0080b825 	move	s7,a0
    cfb4:	8c821c44 	lw	v0,7236(a0)
    cfb8:	15c00007 	bnez	t6,cfd8 <func_80B768FC+0x7c>
    cfbc:	26100000 	addiu	s0,s0,0
    cfc0:	3c0f0000 	lui	t7,0x0
    cfc4:	85ef0000 	lh	t7,0(t7)
    cfc8:	24010004 	li	at,4
    cfcc:	24520024 	addiu	s2,v0,36
    cfd0:	15e10004 	bne	t7,at,cfe4 <func_80B768FC+0x88>
    cfd4:	00000000 	nop
    cfd8:	3c120000 	lui	s2,0x0
    cfdc:	10000001 	b	cfe4 <func_80B768FC+0x88>
    cfe0:	26520000 	addiu	s2,s2,0
    cfe4:	3c110000 	lui	s1,0x0
    cfe8:	26310000 	addiu	s1,s1,0
    cfec:	0c000000 	jal	0 <func_80B699A0>
    cff0:	c62c0000 	lwc1	$f12,0(s1)
    cff4:	3c014434 	lui	at,0x4434
    cff8:	4481d000 	mtc1	at,$f26
    cffc:	3c01c20c 	lui	at,0xc20c
    d000:	4481e000 	mtc1	at,$f28
    d004:	461a0102 	mul.s	$f4,$f0,$f26
    d008:	c62c0000 	lwc1	$f12,0(s1)
    d00c:	e7bc00b0 	swc1	$f28,176(sp)
    d010:	0c000000 	jal	0 <func_80B699A0>
    d014:	e7a400ac 	swc1	$f4,172(sp)
    d018:	461a0182 	mul.s	$f6,$f0,$f26
    d01c:	c7aa00ac 	lwc1	$f10,172(sp)
    d020:	3c010000 	lui	at,0x0
    d024:	3c1e0000 	lui	s8,0x0
    d028:	27de0000 	addiu	s8,s8,0
    d02c:	24180001 	li	t8,1
    d030:	e7a600b4 	swc1	$f6,180(sp)
    d034:	c6480000 	lwc1	$f8,0(s2)
    d038:	c7b200b4 	lwc1	$f18,180(sp)
    d03c:	c6500008 	lwc1	$f16,8(s2)
    d040:	460a4501 	sub.s	$f20,$f8,$f10
    d044:	c42a0000 	lwc1	$f10,0(at)
    d048:	3c010000 	lui	at,0x0
    d04c:	46128581 	sub.s	$f22,$f16,$f18
    d050:	4614a102 	mul.s	$f4,$f20,$f20
    d054:	00000000 	nop
    d058:	4616b182 	mul.s	$f6,$f22,$f22
    d05c:	46062200 	add.s	$f8,$f4,$f6
    d060:	460a403c 	c.lt.s	$f8,$f10
    d064:	00000000 	nop
    d068:	4500000c 	bc1f	d09c <func_80B768FC+0x140>
    d06c:	00000000 	nop
    d070:	c6300000 	lwc1	$f16,0(s1)
    d074:	c4320000 	lwc1	$f18,0(at)
    d078:	3c013f80 	lui	at,0x3f80
    d07c:	4481c000 	mtc1	at,$f24
    d080:	46128100 	add.s	$f4,$f16,$f18
    d084:	4480f000 	mtc1	zero,$f30
    d088:	3c1e0000 	lui	s8,0x0
    d08c:	27de0000 	addiu	s8,s8,0
    d090:	e6240000 	swc1	$f4,0(s1)
    d094:	10000021 	b	d11c <func_80B768FC+0x1c0>
    d098:	a7b800fe 	sh	t8,254(sp)
    d09c:	4480f000 	mtc1	zero,$f30
    d0a0:	c7c60000 	lwc1	$f6,0(s8)
    d0a4:	3c013f80 	lui	at,0x3f80
    d0a8:	02202025 	move	a0,s1
    d0ac:	4606f032 	c.eq.s	$f30,$f6
    d0b0:	3c053f33 	lui	a1,0x3f33
    d0b4:	45030014 	bc1tl	d108 <func_80B768FC+0x1ac>
    d0b8:	4481c000 	mtc1	at,$f24
    d0bc:	3c010000 	lui	at,0x0
    d0c0:	c42a0000 	lwc1	$f10,0(at)
    d0c4:	c6280000 	lwc1	$f8,0(s1)
    d0c8:	3c0140a0 	lui	at,0x40a0
    d0cc:	44813000 	mtc1	at,$f6
    d0d0:	460a4400 	add.s	$f16,$f8,$f10
    d0d4:	3c013f80 	lui	at,0x3f80
    d0d8:	4481c000 	mtc1	at,$f24
    d0dc:	e6300000 	swc1	$f16,0(s1)
    d0e0:	8ef907c0 	lw	t9,1984(s7)
    d0e4:	8f280028 	lw	t0,40(t9)
    d0e8:	85090002 	lh	t1,2(t0)
    d0ec:	44899000 	mtc1	t1,$f18
    d0f0:	00000000 	nop
    d0f4:	46809120 	cvt.s.w	$f4,$f18
    d0f8:	46062201 	sub.s	$f8,$f4,$f6
    d0fc:	10000007 	b	d11c <func_80B768FC+0x1c0>
    d100:	e7a800b0 	swc1	$f8,176(sp)
    d104:	4481c000 	mtc1	at,$f24
    d108:	3c073a83 	lui	a3,0x3a83
    d10c:	34e7126f 	ori	a3,a3,0x126f
    d110:	4406c000 	mfc1	a2,$f24
    d114:	0c000000 	jal	0 <func_80B699A0>
    d118:	34a53333 	ori	a1,a1,0x3333
    d11c:	3c110000 	lui	s1,0x0
    d120:	26310000 	addiu	s1,s1,0
    d124:	0c000000 	jal	0 <func_80B699A0>
    d128:	c62c0000 	lwc1	$f12,0(s1)
    d12c:	461a0282 	mul.s	$f10,$f0,$f26
    d130:	e7bc00bc 	swc1	$f28,188(sp)
    d134:	c62c0000 	lwc1	$f12,0(s1)
    d138:	0c000000 	jal	0 <func_80B699A0>
    d13c:	e7aa00b8 	swc1	$f10,184(sp)
    d140:	461a0402 	mul.s	$f16,$f0,$f26
    d144:	c7a400b8 	lwc1	$f4,184(sp)
    d148:	3c010000 	lui	at,0x0
    d14c:	e7b000c0 	swc1	$f16,192(sp)
    d150:	c6520000 	lwc1	$f18,0(s2)
    d154:	c7a800c0 	lwc1	$f8,192(sp)
    d158:	c6460008 	lwc1	$f6,8(s2)
    d15c:	46049501 	sub.s	$f20,$f18,$f4
    d160:	c4240000 	lwc1	$f4,0(at)
    d164:	3c010000 	lui	at,0x0
    d168:	46083581 	sub.s	$f22,$f6,$f8
    d16c:	4614a282 	mul.s	$f10,$f20,$f20
    d170:	00000000 	nop
    d174:	4616b402 	mul.s	$f16,$f22,$f22
    d178:	46105480 	add.s	$f18,$f10,$f16
    d17c:	4604903c 	c.lt.s	$f18,$f4
    d180:	00000000 	nop
    d184:	45000009 	bc1f	d1ac <func_80B768FC+0x250>
    d188:	00000000 	nop
    d18c:	c6260000 	lwc1	$f6,0(s1)
    d190:	c4280000 	lwc1	$f8,0(at)
    d194:	87aa00fe 	lh	t2,254(sp)
    d198:	46083281 	sub.s	$f10,$f6,$f8
    d19c:	354b0002 	ori	t3,t2,0x2
    d1a0:	a7ab00fe 	sh	t3,254(sp)
    d1a4:	1000001c 	b	d218 <func_80B768FC+0x2bc>
    d1a8:	e62a0000 	swc1	$f10,0(s1)
    d1ac:	c7d00000 	lwc1	$f16,0(s8)
    d1b0:	3c054013 	lui	a1,0x4013
    d1b4:	3c010000 	lui	at,0x0
    d1b8:	4610f032 	c.eq.s	$f30,$f16
    d1bc:	34a53333 	ori	a1,a1,0x3333
    d1c0:	02202025 	move	a0,s1
    d1c4:	3c073a83 	lui	a3,0x3a83
    d1c8:	45030011 	bc1tl	d210 <func_80B768FC+0x2b4>
    d1cc:	4406c000 	mfc1	a2,$f24
    d1d0:	c6320000 	lwc1	$f18,0(s1)
    d1d4:	c4240000 	lwc1	$f4,0(at)
    d1d8:	3c0140a0 	lui	at,0x40a0
    d1dc:	44818000 	mtc1	at,$f16
    d1e0:	46049181 	sub.s	$f6,$f18,$f4
    d1e4:	e6260000 	swc1	$f6,0(s1)
    d1e8:	8eec07c0 	lw	t4,1984(s7)
    d1ec:	8d8d0028 	lw	t5,40(t4)
    d1f0:	85ae0002 	lh	t6,2(t5)
    d1f4:	448e4000 	mtc1	t6,$f8
    d1f8:	00000000 	nop
    d1fc:	468042a0 	cvt.s.w	$f10,$f8
    d200:	46105481 	sub.s	$f18,$f10,$f16
    d204:	10000004 	b	d218 <func_80B768FC+0x2bc>
    d208:	e7b200bc 	swc1	$f18,188(sp)
    d20c:	4406c000 	mfc1	a2,$f24
    d210:	0c000000 	jal	0 <func_80B699A0>
    d214:	34e7126f 	ori	a3,a3,0x126f
    d218:	3c110000 	lui	s1,0x0
    d21c:	26310000 	addiu	s1,s1,0
    d220:	0c000000 	jal	0 <func_80B699A0>
    d224:	c62c0000 	lwc1	$f12,0(s1)
    d228:	461a0102 	mul.s	$f4,$f0,$f26
    d22c:	e7bc00c8 	swc1	$f28,200(sp)
    d230:	c62c0000 	lwc1	$f12,0(s1)
    d234:	0c000000 	jal	0 <func_80B699A0>
    d238:	e7a400c4 	swc1	$f4,196(sp)
    d23c:	461a0182 	mul.s	$f6,$f0,$f26
    d240:	c7aa00c4 	lwc1	$f10,196(sp)
    d244:	3c010000 	lui	at,0x0
    d248:	e7a600cc 	swc1	$f6,204(sp)
    d24c:	c6480000 	lwc1	$f8,0(s2)
    d250:	c7b200cc 	lwc1	$f18,204(sp)
    d254:	c6500008 	lwc1	$f16,8(s2)
    d258:	460a4501 	sub.s	$f20,$f8,$f10
    d25c:	c42a0000 	lwc1	$f10,0(at)
    d260:	3c010000 	lui	at,0x0
    d264:	46128581 	sub.s	$f22,$f16,$f18
    d268:	4614a102 	mul.s	$f4,$f20,$f20
    d26c:	00000000 	nop
    d270:	4616b182 	mul.s	$f6,$f22,$f22
    d274:	46062200 	add.s	$f8,$f4,$f6
    d278:	460a403c 	c.lt.s	$f8,$f10
    d27c:	00000000 	nop
    d280:	45000009 	bc1f	d2a8 <func_80B768FC+0x34c>
    d284:	00000000 	nop
    d288:	c6300000 	lwc1	$f16,0(s1)
    d28c:	c4320000 	lwc1	$f18,0(at)
    d290:	87af00fe 	lh	t7,254(sp)
    d294:	46128101 	sub.s	$f4,$f16,$f18
    d298:	35f80004 	ori	t8,t7,0x4
    d29c:	a7b800fe 	sh	t8,254(sp)
    d2a0:	1000001c 	b	d314 <func_80B768FC+0x3b8>
    d2a4:	e6240000 	swc1	$f4,0(s1)
    d2a8:	c7c60000 	lwc1	$f6,0(s8)
    d2ac:	3c054093 	lui	a1,0x4093
    d2b0:	3c010000 	lui	at,0x0
    d2b4:	4606f032 	c.eq.s	$f30,$f6
    d2b8:	34a53333 	ori	a1,a1,0x3333
    d2bc:	02202025 	move	a0,s1
    d2c0:	3c073a83 	lui	a3,0x3a83
    d2c4:	45030011 	bc1tl	d30c <func_80B768FC+0x3b0>
    d2c8:	4406c000 	mfc1	a2,$f24
    d2cc:	c6280000 	lwc1	$f8,0(s1)
    d2d0:	c42a0000 	lwc1	$f10,0(at)
    d2d4:	3c0140a0 	lui	at,0x40a0
    d2d8:	44813000 	mtc1	at,$f6
    d2dc:	460a4401 	sub.s	$f16,$f8,$f10
    d2e0:	e6300000 	swc1	$f16,0(s1)
    d2e4:	8ef907c0 	lw	t9,1984(s7)
    d2e8:	8f280028 	lw	t0,40(t9)
    d2ec:	85090002 	lh	t1,2(t0)
    d2f0:	44899000 	mtc1	t1,$f18
    d2f4:	00000000 	nop
    d2f8:	46809120 	cvt.s.w	$f4,$f18
    d2fc:	46062201 	sub.s	$f8,$f4,$f6
    d300:	10000004 	b	d314 <func_80B768FC+0x3b8>
    d304:	e7a800c8 	swc1	$f8,200(sp)
    d308:	4406c000 	mfc1	a2,$f24
    d30c:	0c000000 	jal	0 <func_80B699A0>
    d310:	34e7126f 	ori	a3,a3,0x126f
    d314:	3c0a0000 	lui	t2,0x0
    d318:	914a0000 	lbu	t2,0(t2)
    d31c:	24010001 	li	at,1
    d320:	15410004 	bne	t2,at,d334 <func_80B768FC+0x3d8>
    d324:	3c010000 	lui	at,0x0
    d328:	c42a0000 	lwc1	$f10,0(at)
    d32c:	10000002 	b	d338 <func_80B768FC+0x3dc>
    d330:	e7aa00d8 	swc1	$f10,216(sp)
    d334:	e7b800d8 	swc1	$f24,216(sp)
    d338:	3c013fc0 	lui	at,0x3fc0
    d33c:	4481e000 	mtc1	at,$f28
    d340:	3c0142c8 	lui	at,0x42c8
    d344:	4481d000 	mtc1	at,$f26
    d348:	0000b025 	move	s6,zero
    d34c:	920b0000 	lbu	t3,0(s0)
    d350:	3c010001 	lui	at,0x1
    d354:	34211d60 	ori	at,at,0x1d60
    d358:	1160011b 	beqz	t3,d7c8 <func_80B768FC+0x86c>
    d35c:	02e12021 	addu	a0,s7,at
    d360:	860c0002 	lh	t4,2(s0)
    d364:	26140004 	addiu	s4,s0,4
    d368:	2615001c 	addiu	s5,s0,28
    d36c:	3c070000 	lui	a3,0x0
    d370:	258d0001 	addiu	t5,t4,1
    d374:	a60d0002 	sh	t5,2(s0)
    d378:	24e70000 	addiu	a3,a3,0
    d37c:	02a03025 	move	a2,s5
    d380:	0c000000 	jal	0 <func_80B699A0>
    d384:	02802825 	move	a1,s4
    d388:	3c0143c8 	lui	at,0x43c8
    d38c:	44818000 	mtc1	at,$f16
    d390:	c6020024 	lwc1	$f2,36(s0)
    d394:	2ac10015 	slti	at,s6,21
    d398:	00009025 	move	s2,zero
    d39c:	4610103c 	c.lt.s	$f2,$f16
    d3a0:	00000000 	nop
    d3a4:	4502000c 	bc1fl	d3d8 <func_80B768FC+0x47c>
    d3a8:	a2000044 	sb	zero,68(s0)
    d3ac:	c600001c 	lwc1	$f0,28(s0)
    d3b0:	4602d480 	add.s	$f18,$f26,$f2
    d3b4:	240e0001 	li	t6,1
    d3b8:	46000005 	abs.s	$f0,$f0
    d3bc:	4612003c 	c.lt.s	$f0,$f18
    d3c0:	00000000 	nop
    d3c4:	45020004 	bc1fl	d3d8 <func_80B768FC+0x47c>
    d3c8:	a2000044 	sb	zero,68(s0)
    d3cc:	10000002 	b	d3d8 <func_80B768FC+0x47c>
    d3d0:	a20e0044 	sb	t6,68(s0)
    d3d4:	a2000044 	sb	zero,68(s0)
    d3d8:	50200004 	beqzl	at,d3ec <func_80B768FC+0x490>
    d3dc:	2ac10029 	slti	at,s6,41
    d3e0:	10000008 	b	d404 <func_80B768FC+0x4a8>
    d3e4:	24130001 	li	s3,1
    d3e8:	2ac10029 	slti	at,s6,41
    d3ec:	10200004 	beqz	at,d400 <func_80B768FC+0x4a4>
    d3f0:	24120002 	li	s2,2
    d3f4:	24120001 	li	s2,1
    d3f8:	10000002 	b	d404 <func_80B768FC+0x4a8>
    d3fc:	24130002 	li	s3,2
    d400:	24130004 	li	s3,4
    d404:	c6080014 	lwc1	$f8,20(s0)
    d408:	c60a0008 	lwc1	$f10,8(s0)
    d40c:	c6040010 	lwc1	$f4,16(s0)
    d410:	c6060004 	lwc1	$f6,4(s0)
    d414:	460a4401 	sub.s	$f16,$f8,$f10
    d418:	46062501 	sub.s	$f20,$f4,$f6
    d41c:	e7b000f0 	swc1	$f16,240(sp)
    d420:	c604000c 	lwc1	$f4,12(s0)
    d424:	c6120018 	lwc1	$f18,24(s0)
    d428:	4600a386 	mov.s	$f14,$f20
    d42c:	46049581 	sub.s	$f22,$f18,$f4
    d430:	0c000000 	jal	0 <func_80B699A0>
    d434:	4600b306 	mov.s	$f12,$f22
    d438:	4614a182 	mul.s	$f6,$f20,$f20
    d43c:	a7a200d4 	sh	v0,212(sp)
    d440:	c7ae00f0 	lwc1	$f14,240(sp)
    d444:	4616b202 	mul.s	$f8,$f22,$f22
    d448:	46083000 	add.s	$f0,$f6,$f8
    d44c:	46000304 	sqrt.s	$f12,$f0
    d450:	0c000000 	jal	0 <func_80B699A0>
    d454:	e7ac00e8 	swc1	$f12,232(sp)
    d458:	3c014120 	lui	at,0x4120
    d45c:	44818000 	mtc1	at,$f16
    d460:	c7aa00e8 	lwc1	$f10,232(sp)
    d464:	a7a200d6 	sh	v0,214(sp)
    d468:	4610503c 	c.lt.s	$f10,$f16
    d46c:	00000000 	nop
    d470:	4503000e 	bc1tl	d4ac <func_80B768FC+0x550>
    d474:	3c014120 	lui	at,0x4120
    d478:	860f0002 	lh	t7,2(s0)
    d47c:	31f8001f 	andi	t8,t7,0x1f
    d480:	5700005a 	bnezl	t8,d5ec <func_80B768FC+0x690>
    d484:	2604003e 	addiu	a0,s0,62
    d488:	0c000000 	jal	0 <func_80B699A0>
    d48c:	00000000 	nop
    d490:	3c013f00 	lui	at,0x3f00
    d494:	44819000 	mtc1	at,$f18
    d498:	00000000 	nop
    d49c:	4600903c 	c.lt.s	$f18,$f0
    d4a0:	00000000 	nop
    d4a4:	45000050 	bc1f	d5e8 <func_80B768FC+0x68c>
    d4a8:	3c014120 	lui	at,0x4120
    d4ac:	44816000 	mtc1	at,$f12
    d4b0:	3c010001 	lui	at,0x1
    d4b4:	02e1c821 	addu	t9,s7,at
    d4b8:	0c000000 	jal	0 <func_80B699A0>
    d4bc:	afb90080 	sw	t9,128(sp)
    d4c0:	00124080 	sll	t0,s2,0x2
    d4c4:	01124023 	subu	t0,t0,s2
    d4c8:	00084080 	sll	t0,t0,0x2
    d4cc:	27a900ac 	addiu	t1,sp,172
    d4d0:	01098821 	addu	s1,t0,t1
    d4d4:	c6240004 	lwc1	$f4,4(s1)
    d4d8:	3c014348 	lui	at,0x4348
    d4dc:	46040180 	add.s	$f6,$f0,$f4
    d4e0:	e6060014 	swc1	$f6,20(s0)
    d4e4:	c7c80000 	lwc1	$f8,0(s8)
    d4e8:	4608f032 	c.eq.s	$f30,$f8
    d4ec:	00000000 	nop
    d4f0:	4501000e 	bc1t	d52c <func_80B768FC+0x5d0>
    d4f4:	00000000 	nop
    d4f8:	44816000 	mtc1	at,$f12
    d4fc:	0c000000 	jal	0 <func_80B699A0>
    d500:	00000000 	nop
    d504:	c62a0000 	lwc1	$f10,0(s1)
    d508:	3c014348 	lui	at,0x4348
    d50c:	44816000 	mtc1	at,$f12
    d510:	460a0400 	add.s	$f16,$f0,$f10
    d514:	0c000000 	jal	0 <func_80B699A0>
    d518:	e6100010 	swc1	$f16,16(s0)
    d51c:	c6320008 	lwc1	$f18,8(s1)
    d520:	46120100 	add.s	$f4,$f0,$f18
    d524:	1000000b 	b	d554 <func_80B768FC+0x5f8>
    d528:	e6040018 	swc1	$f4,24(s0)
    d52c:	0c000000 	jal	0 <func_80B699A0>
    d530:	4600d306 	mov.s	$f12,$f26
    d534:	c6260000 	lwc1	$f6,0(s1)
    d538:	4600d306 	mov.s	$f12,$f26
    d53c:	46060200 	add.s	$f8,$f0,$f6
    d540:	0c000000 	jal	0 <func_80B699A0>
    d544:	e6080010 	swc1	$f8,16(s0)
    d548:	c62a0008 	lwc1	$f10,8(s1)
    d54c:	460a0400 	add.s	$f16,$f0,$f10
    d550:	e6100018 	swc1	$f16,24(s0)
    d554:	8e8c0000 	lw	t4,0(s4)
    d558:	27aa00a0 	addiu	t2,sp,160
    d55c:	3c014248 	lui	at,0x4248
    d560:	ad4c0000 	sw	t4,0(t2)
    d564:	8e8b0004 	lw	t3,4(s4)
    d568:	44816000 	mtc1	at,$f12
    d56c:	ad4b0004 	sw	t3,4(t2)
    d570:	8e8c0008 	lw	t4,8(s4)
    d574:	ad4c0008 	sw	t4,8(t2)
    d578:	8eed07c0 	lw	t5,1984(s7)
    d57c:	8dae0028 	lw	t6,40(t5)
    d580:	85cf0002 	lh	t7,2(t6)
    d584:	448f9000 	mtc1	t7,$f18
    d588:	00000000 	nop
    d58c:	46809120 	cvt.s.w	$f4,$f18
    d590:	0c000000 	jal	0 <func_80B699A0>
    d594:	e7a400a4 	swc1	$f4,164(sp)
    d598:	8fb80080 	lw	t8,128(sp)
    d59c:	461a0180 	add.s	$f6,$f0,$f26
    d5a0:	24190096 	li	t9,150
    d5a4:	8f051e10 	lw	a1,7696(t8)
    d5a8:	2408005a 	li	t0,90
    d5ac:	afa80018 	sw	t0,24(sp)
    d5b0:	afb90014 	sw	t9,20(sp)
    d5b4:	e7a60010 	swc1	$f6,16(sp)
    d5b8:	02a02025 	move	a0,s5
    d5bc:	27a600a0 	addiu	a2,sp,160
    d5c0:	0c000000 	jal	0 <func_80B699A0>
    d5c4:	3c0741a0 	lui	a3,0x41a0
    d5c8:	c6080028 	lwc1	$f8,40(s0)
    d5cc:	461c403c 	c.lt.s	$f8,$f28
    d5d0:	00000000 	nop
    d5d4:	45020003 	bc1fl	d5e4 <func_80B768FC+0x688>
    d5d8:	e61c0034 	swc1	$f28,52(s0)
    d5dc:	e61c0028 	swc1	$f28,40(s0)
    d5e0:	e61c0034 	swc1	$f28,52(s0)
    d5e4:	e6180038 	swc1	$f24,56(s0)
    d5e8:	2604003e 	addiu	a0,s0,62
    d5ec:	87a500d4 	lh	a1,212(sp)
    d5f0:	24060005 	li	a2,5
    d5f4:	0c000000 	jal	0 <func_80B699A0>
    d5f8:	24074000 	li	a3,16384
    d5fc:	44825000 	mtc1	v0,$f10
    d600:	3c014040 	lui	at,0x4040
    d604:	44819000 	mtc1	at,$f18
    d608:	46805420 	cvt.s.w	$f16,$f10
    d60c:	24060003 	li	a2,3
    d610:	24071388 	li	a3,5000
    d614:	46128102 	mul.s	$f4,$f16,$f18
    d618:	4600218d 	trunc.w.s	$f6,$f4
    d61c:	44033000 	mfc1	v1,$f6
    d620:	00000000 	nop
    d624:	00032400 	sll	a0,v1,0x10
    d628:	00042403 	sra	a0,a0,0x10
    d62c:	28811f41 	slti	at,a0,8001
    d630:	00032c00 	sll	a1,v1,0x10
    d634:	14200003 	bnez	at,d644 <func_80B768FC+0x6e8>
    d638:	00052c03 	sra	a1,a1,0x10
    d63c:	10000005 	b	d654 <func_80B768FC+0x6f8>
    d640:	24051f40 	li	a1,8000
    d644:	2881e0c0 	slti	at,a0,-8000
    d648:	10200002 	beqz	at,d654 <func_80B768FC+0x6f8>
    d64c:	00000000 	nop
    d650:	2405e0c0 	li	a1,-8000
    d654:	0c000000 	jal	0 <func_80B699A0>
    d658:	26040042 	addiu	a0,s0,66
    d65c:	860a0042 	lh	t2,66(s0)
    d660:	3c010000 	lui	at,0x0
    d664:	c4300000 	lwc1	$f16,0(at)
    d668:	448a4000 	mtc1	t2,$f8
    d66c:	2604003c 	addiu	a0,s0,60
    d670:	87a500d6 	lh	a1,214(sp)
    d674:	468042a0 	cvt.s.w	$f10,$f8
    d678:	24060005 	li	a2,5
    d67c:	24074000 	li	a3,16384
    d680:	46105482 	mul.s	$f18,$f10,$f16
    d684:	0c000000 	jal	0 <func_80B699A0>
    d688:	e7b200e0 	swc1	$f18,224(sp)
    d68c:	87ab00fe 	lh	t3,254(sp)
    d690:	4406c000 	mfc1	a2,$f24
    d694:	26040028 	addiu	a0,s0,40
    d698:	01736024 	and	t4,t3,s3
    d69c:	11800008 	beqz	t4,d6c0 <func_80B768FC+0x764>
    d6a0:	3c053f40 	lui	a1,0x3f40
    d6a4:	3c0140c0 	lui	at,0x40c0
    d6a8:	44812000 	mtc1	at,$f4
    d6ac:	3c014000 	lui	at,0x4000
    d6b0:	44813000 	mtc1	at,$f6
    d6b4:	e6180038 	swc1	$f24,56(s0)
    d6b8:	e6040028 	swc1	$f4,40(s0)
    d6bc:	e6060034 	swc1	$f6,52(s0)
    d6c0:	c7c80000 	lwc1	$f8,0(s8)
    d6c4:	3c014080 	lui	at,0x4080
    d6c8:	3c073d4c 	lui	a3,0x3d4c
    d6cc:	4608f032 	c.eq.s	$f30,$f8
    d6d0:	00000000 	nop
    d6d4:	45010007 	bc1t	d6f4 <func_80B768FC+0x798>
    d6d8:	00000000 	nop
    d6dc:	44815000 	mtc1	at,$f10
    d6e0:	3c014000 	lui	at,0x4000
    d6e4:	44818000 	mtc1	at,$f16
    d6e8:	e6180038 	swc1	$f24,56(s0)
    d6ec:	e60a0028 	swc1	$f10,40(s0)
    d6f0:	e6100034 	swc1	$f16,52(s0)
    d6f4:	0c000000 	jal	0 <func_80B699A0>
    d6f8:	34e7cccd 	ori	a3,a3,0xcccd
    d6fc:	c6120028 	lwc1	$f18,40(s0)
    d700:	c7a400d8 	lwc1	$f4,216(sp)
    d704:	8604003c 	lh	a0,60(s0)
    d708:	46049502 	mul.s	$f20,$f18,$f4
    d70c:	0c000000 	jal	0 <func_80B699A0>
    d710:	00000000 	nop
    d714:	46140582 	mul.s	$f22,$f0,$f20
    d718:	0c000000 	jal	0 <func_80B699A0>
    d71c:	8604003e 	lh	a0,62(s0)
    d720:	4600b202 	mul.s	$f8,$f22,$f0
    d724:	c6060004 	lwc1	$f6,4(s0)
    d728:	8604003c 	lh	a0,60(s0)
    d72c:	46083280 	add.s	$f10,$f6,$f8
    d730:	0c000000 	jal	0 <func_80B699A0>
    d734:	e60a0004 	swc1	$f10,4(s0)
    d738:	4600a482 	mul.s	$f18,$f20,$f0
    d73c:	c6100008 	lwc1	$f16,8(s0)
    d740:	8604003e 	lh	a0,62(s0)
    d744:	46128100 	add.s	$f4,$f16,$f18
    d748:	0c000000 	jal	0 <func_80B699A0>
    d74c:	e6040008 	swc1	$f4,8(s0)
    d750:	4600b202 	mul.s	$f8,$f22,$f0
    d754:	c606000c 	lwc1	$f6,12(s0)
    d758:	920d0044 	lbu	t5,68(s0)
    d75c:	26040034 	addiu	a0,s0,52
    d760:	3c073dcc 	lui	a3,0x3dcc
    d764:	46083280 	add.s	$f10,$f6,$f8
    d768:	11a00017 	beqz	t5,d7c8 <func_80B768FC+0x86c>
    d76c:	e60a000c 	swc1	$f10,12(s0)
    d770:	4405c000 	mfc1	a1,$f24
    d774:	4406c000 	mfc1	a2,$f24
    d778:	0c000000 	jal	0 <func_80B699A0>
    d77c:	34e7cccd 	ori	a3,a3,0xcccd
    d780:	3c053ecc 	lui	a1,0x3ecc
    d784:	4406c000 	mfc1	a2,$f24
    d788:	3c073d23 	lui	a3,0x3d23
    d78c:	34e7d70a 	ori	a3,a3,0xd70a
    d790:	34a5cccd 	ori	a1,a1,0xcccd
    d794:	0c000000 	jal	0 <func_80B699A0>
    d798:	26040038 	addiu	a0,s0,56
    d79c:	c6100030 	lwc1	$f16,48(s0)
    d7a0:	c6120034 	lwc1	$f18,52(s0)
    d7a4:	46128100 	add.s	$f4,$f16,$f18
    d7a8:	e6040030 	swc1	$f4,48(s0)
    d7ac:	0c000000 	jal	0 <func_80B699A0>
    d7b0:	c60c0030 	lwc1	$f12,48(s0)
    d7b4:	c6060038 	lwc1	$f6,56(s0)
    d7b8:	c7aa00e0 	lwc1	$f10,224(sp)
    d7bc:	46060202 	mul.s	$f8,$f0,$f6
    d7c0:	460a4400 	add.s	$f16,$f8,$f10
    d7c4:	e610002c 	swc1	$f16,44(s0)
    d7c8:	26d60001 	addiu	s6,s6,1
    d7cc:	0016b400 	sll	s6,s6,0x10
    d7d0:	0016b403 	sra	s6,s6,0x10
    d7d4:	2ac1003c 	slti	at,s6,60
    d7d8:	1420fedc 	bnez	at,d34c <func_80B768FC+0x3f0>
    d7dc:	26100048 	addiu	s0,s0,72
    d7e0:	8fbf007c 	lw	ra,124(sp)
    d7e4:	e7de0000 	swc1	$f30,0(s8)
    d7e8:	d7be0050 	ldc1	$f30,80(sp)
    d7ec:	8fbe0078 	lw	s8,120(sp)
    d7f0:	d7b40028 	ldc1	$f20,40(sp)
    d7f4:	d7b60030 	ldc1	$f22,48(sp)
    d7f8:	d7b80038 	ldc1	$f24,56(sp)
    d7fc:	d7ba0040 	ldc1	$f26,64(sp)
    d800:	d7bc0048 	ldc1	$f28,72(sp)
    d804:	8fb00058 	lw	s0,88(sp)
    d808:	8fb1005c 	lw	s1,92(sp)
    d80c:	8fb20060 	lw	s2,96(sp)
    d810:	8fb30064 	lw	s3,100(sp)
    d814:	8fb40068 	lw	s4,104(sp)
    d818:	8fb5006c 	lw	s5,108(sp)
    d81c:	8fb60070 	lw	s6,112(sp)
    d820:	8fb70074 	lw	s7,116(sp)
    d824:	03e00008 	jr	ra
    d828:	27bd0100 	addiu	sp,sp,256

0000d82c <func_80B771CC>:
    d82c:	27bdff68 	addiu	sp,sp,-152
    d830:	3c0e0000 	lui	t6,0x0
    d834:	91ce0000 	lbu	t6,0(t6)
    d838:	afb10034 	sw	s1,52(sp)
    d83c:	afb50044 	sw	s5,68(sp)
    d840:	3c110000 	lui	s1,0x0
    d844:	24010001 	li	at,1
    d848:	afbf0054 	sw	ra,84(sp)
    d84c:	afbe0050 	sw	s8,80(sp)
    d850:	afb7004c 	sw	s7,76(sp)
    d854:	afb60048 	sw	s6,72(sp)
    d858:	afb40040 	sw	s4,64(sp)
    d85c:	afb3003c 	sw	s3,60(sp)
    d860:	afb20038 	sw	s2,56(sp)
    d864:	afb00030 	sw	s0,48(sp)
    d868:	f7b80028 	sdc1	$f24,40(sp)
    d86c:	f7b60020 	sdc1	$f22,32(sp)
    d870:	f7b40018 	sdc1	$f20,24(sp)
    d874:	afa40098 	sw	a0,152(sp)
    d878:	0000a825 	move	s5,zero
    d87c:	15c10004 	bne	t6,at,d890 <func_80B771CC+0x64>
    d880:	26310000 	addiu	s1,s1,0
    d884:	3c010000 	lui	at,0x0
    d888:	10000003 	b	d898 <func_80B771CC+0x6c>
    d88c:	c4340000 	lwc1	$f20,0(at)
    d890:	3c010000 	lui	at,0x0
    d894:	c4340000 	lwc1	$f20,0(at)
    d898:	8faf0098 	lw	t7,152(sp)
    d89c:	3c060000 	lui	a2,0x0
    d8a0:	24c60000 	addiu	a2,a2,0
    d8a4:	8de50000 	lw	a1,0(t7)
    d8a8:	27a40070 	addiu	a0,sp,112
    d8ac:	24071f70 	li	a3,8048
    d8b0:	0c000000 	jal	0 <func_80B699A0>
    d8b4:	00a09025 	move	s2,a1
    d8b8:	3c014700 	lui	at,0x4700
    d8bc:	4481c000 	mtc1	at,$f24
    d8c0:	3c010000 	lui	at,0x0
    d8c4:	3c1e9b9b 	lui	s8,0x9b9b
    d8c8:	37de9bff 	ori	s8,s8,0x9bff
    d8cc:	c4360000 	lwc1	$f22,0(at)
    d8d0:	0000a025 	move	s4,zero
    d8d4:	3c17fa00 	lui	s7,0xfa00
    d8d8:	3c16de00 	lui	s6,0xde00
    d8dc:	92380000 	lbu	t8,0(s1)
    d8e0:	53000045 	beqzl	t8,d9f8 <func_80B771CC+0x1cc>
    d8e4:	26940001 	addiu	s4,s4,1
    d8e8:	16a0000f 	bnez	s5,d928 <func_80B771CC+0xfc>
    d8ec:	00003825 	move	a3,zero
    d8f0:	8e4202c0 	lw	v0,704(s2)
    d8f4:	3c040601 	lui	a0,0x601
    d8f8:	2484c220 	addiu	a0,a0,-15840
    d8fc:	24590008 	addiu	t9,v0,8
    d900:	ae5902c0 	sw	t9,704(s2)
    d904:	ac440004 	sw	a0,4(v0)
    d908:	ac560000 	sw	s6,0(v0)
    d90c:	8e4202c0 	lw	v0,704(s2)
    d910:	26b50001 	addiu	s5,s5,1
    d914:	32b500ff 	andi	s5,s5,0xff
    d918:	24480008 	addiu	t0,v0,8
    d91c:	ae4802c0 	sw	t0,704(s2)
    d920:	ac5e0004 	sw	s8,4(v0)
    d924:	ac570000 	sw	s7,0(v0)
    d928:	92290044 	lbu	t1,68(s1)
    d92c:	3c130601 	lui	s3,0x601
    d930:	2673c298 	addiu	s3,s3,-15720
    d934:	51200030 	beqzl	t1,d9f8 <func_80B771CC+0x1cc>
    d938:	26940001 	addiu	s4,s4,1
    d93c:	c62c0004 	lwc1	$f12,4(s1)
    d940:	c62e0008 	lwc1	$f14,8(s1)
    d944:	0c000000 	jal	0 <func_80B699A0>
    d948:	8e26000c 	lw	a2,12(s1)
    d94c:	862a003e 	lh	t2,62(s1)
    d950:	24050001 	li	a1,1
    d954:	448a2000 	mtc1	t2,$f4
    d958:	00000000 	nop
    d95c:	468021a0 	cvt.s.w	$f6,$f4
    d960:	46163202 	mul.s	$f8,$f6,$f22
    d964:	0c000000 	jal	0 <func_80B699A0>
    d968:	46184303 	div.s	$f12,$f8,$f24
    d96c:	862b003c 	lh	t3,60(s1)
    d970:	24050001 	li	a1,1
    d974:	448b5000 	mtc1	t3,$f10
    d978:	00000000 	nop
    d97c:	46805420 	cvt.s.w	$f16,$f10
    d980:	46008487 	neg.s	$f18,$f16
    d984:	46169102 	mul.s	$f4,$f18,$f22
    d988:	0c000000 	jal	0 <func_80B699A0>
    d98c:	46182303 	div.s	$f12,$f4,$f24
    d990:	c626002c 	lwc1	$f6,44(s1)
    d994:	4406a000 	mfc1	a2,$f20
    d998:	4600a386 	mov.s	$f14,$f20
    d99c:	46143302 	mul.s	$f12,$f6,$f20
    d9a0:	0c000000 	jal	0 <func_80B699A0>
    d9a4:	24070001 	li	a3,1
    d9a8:	8e4202c0 	lw	v0,704(s2)
    d9ac:	3c0dda38 	lui	t5,0xda38
    d9b0:	35ad0003 	ori	t5,t5,0x3
    d9b4:	244c0008 	addiu	t4,v0,8
    d9b8:	ae4c02c0 	sw	t4,704(s2)
    d9bc:	ac4d0000 	sw	t5,0(v0)
    d9c0:	8fae0098 	lw	t6,152(sp)
    d9c4:	3c050000 	lui	a1,0x0
    d9c8:	24a50000 	addiu	a1,a1,0
    d9cc:	24061f9d 	li	a2,8093
    d9d0:	00408025 	move	s0,v0
    d9d4:	0c000000 	jal	0 <func_80B699A0>
    d9d8:	8dc40000 	lw	a0,0(t6)
    d9dc:	ae020004 	sw	v0,4(s0)
    d9e0:	8e4202c0 	lw	v0,704(s2)
    d9e4:	244f0008 	addiu	t7,v0,8
    d9e8:	ae4f02c0 	sw	t7,704(s2)
    d9ec:	ac530004 	sw	s3,4(v0)
    d9f0:	ac560000 	sw	s6,0(v0)
    d9f4:	26940001 	addiu	s4,s4,1
    d9f8:	0014a400 	sll	s4,s4,0x10
    d9fc:	0014a403 	sra	s4,s4,0x10
    da00:	2a81003c 	slti	at,s4,60
    da04:	1420ffb5 	bnez	at,d8dc <func_80B771CC+0xb0>
    da08:	26310048 	addiu	s1,s1,72
    da0c:	8fb80098 	lw	t8,152(sp)
    da10:	3c060000 	lui	a2,0x0
    da14:	24c60000 	addiu	a2,a2,0
    da18:	27a40070 	addiu	a0,sp,112
    da1c:	24071fa3 	li	a3,8099
    da20:	0c000000 	jal	0 <func_80B699A0>
    da24:	8f050000 	lw	a1,0(t8)
    da28:	8fbf0054 	lw	ra,84(sp)
    da2c:	d7b40018 	ldc1	$f20,24(sp)
    da30:	d7b60020 	ldc1	$f22,32(sp)
    da34:	d7b80028 	ldc1	$f24,40(sp)
    da38:	8fb00030 	lw	s0,48(sp)
    da3c:	8fb10034 	lw	s1,52(sp)
    da40:	8fb20038 	lw	s2,56(sp)
    da44:	8fb3003c 	lw	s3,60(sp)
    da48:	8fb40040 	lw	s4,64(sp)
    da4c:	8fb50044 	lw	s5,68(sp)
    da50:	8fb60048 	lw	s6,72(sp)
    da54:	8fb7004c 	lw	s7,76(sp)
    da58:	8fbe0050 	lw	s8,80(sp)
    da5c:	03e00008 	jr	ra
    da60:	27bd0098 	addiu	sp,sp,152

0000da64 <func_80B77404>:
    da64:	27bdffc8 	addiu	sp,sp,-56
    da68:	afbf0024 	sw	ra,36(sp)
    da6c:	afb00020 	sw	s0,32(sp)
    da70:	afa40038 	sw	a0,56(sp)
    da74:	948f015c 	lhu	t7,348(a0)
    da78:	00a08025 	move	s0,a1
    da7c:	2de10019 	sltiu	at,t7,25
    da80:	10200389 	beqz	at,e8a8 <L80B78248>
    da84:	000f7880 	sll	t7,t7,0x2
    da88:	3c010000 	lui	at,0x0
    da8c:	002f0821 	addu	at,at,t7
    da90:	8c2f0000 	lw	t7,0(at)
    da94:	01e00008 	jr	t7
    da98:	00000000 	nop

0000da9c <L80B7743C>:
    da9c:	3c180000 	lui	t8,0x0
    daa0:	87180000 	lh	t8,0(t8)
    daa4:	3c190000 	lui	t9,0x0
    daa8:	17000018 	bnez	t8,db0c <L80B7743C+0x70>
    daac:	00000000 	nop
    dab0:	3c190000 	lui	t9,0x0
    dab4:	93390000 	lbu	t9,0(t9)
    dab8:	24080001 	li	t0,1
    dabc:	3c060000 	lui	a2,0x0
    dac0:	1119000e 	beq	t0,t9,dafc <L80B7743C+0x60>
    dac4:	24c60000 	addiu	a2,a2,0
    dac8:	8cc30ec0 	lw	v1,3776(a2)
    dacc:	8fae0038 	lw	t6,56(sp)
    dad0:	30690100 	andi	t1,v1,0x100
    dad4:	11200006 	beqz	t1,daf0 <L80B7743C+0x54>
    dad8:	306a0200 	andi	t2,v1,0x200
    dadc:	15400004 	bnez	t2,daf0 <L80B7743C+0x54>
    dae0:	8fac0038 	lw	t4,56(sp)
    dae4:	240b4093 	li	t3,16531
    dae8:	10000011 	b	db30 <L80B7743C+0x94>
    daec:	a58b010e 	sh	t3,270(t4)
    daf0:	240d407b 	li	t5,16507
    daf4:	1000000e 	b	db30 <L80B7743C+0x94>
    daf8:	a5cd010e 	sh	t5,270(t6)
    dafc:	8fb80038 	lw	t8,56(sp)
    db00:	240f407b 	li	t7,16507
    db04:	1000000a 	b	db30 <L80B7743C+0x94>
    db08:	a70f010e 	sh	t7,270(t8)
    db0c:	93390000 	lbu	t9,0(t9)
    db10:	8faa0038 	lw	t2,56(sp)
    db14:	8fac0038 	lw	t4,56(sp)
    db18:	17200003 	bnez	t9,db28 <L80B7743C+0x8c>
    db1c:	24094084 	li	t1,16516
    db20:	10000003 	b	db30 <L80B7743C+0x94>
    db24:	a549010e 	sh	t1,270(t2)
    db28:	240b4097 	li	t3,16535
    db2c:	a58b010e 	sh	t3,270(t4)
    db30:	8fa40038 	lw	a0,56(sp)
    db34:	0c000000 	jal	0 <func_80B699A0>
    db38:	02002825 	move	a1,s0
    db3c:	3c060000 	lui	a2,0x0
    db40:	24c60000 	addiu	a2,a2,0
    db44:	10400016 	beqz	v0,dba0 <L80B7743C+0x104>
    db48:	24080001 	li	t0,1
    db4c:	3c0d0000 	lui	t5,0x0
    db50:	85ad0000 	lh	t5,0(t5)
    db54:	8fae0038 	lw	t6,56(sp)
    db58:	3c0f0000 	lui	t7,0x0
    db5c:	15a0000d 	bnez	t5,db94 <L80B7743C+0xf8>
    db60:	8fac0038 	lw	t4,56(sp)
    db64:	a5c8015c 	sh	t0,348(t6)
    db68:	91ef0000 	lbu	t7,0(t7)
    db6c:	510f0006 	beql	t0,t7,db88 <L80B7743C+0xec>
    db70:	8cc90ec0 	lw	t1,3776(a2)
    db74:	8cd80ec0 	lw	t8,3776(a2)
    db78:	37190200 	ori	t9,t8,0x200
    db7c:	1000034a 	b	e8a8 <L80B78248>
    db80:	acd90ec0 	sw	t9,3776(a2)
    db84:	8cc90ec0 	lw	t1,3776(a2)
    db88:	352a0100 	ori	t2,t1,0x100
    db8c:	10000346 	b	e8a8 <L80B78248>
    db90:	acca0ec0 	sw	t2,3776(a2)
    db94:	240b000a 	li	t3,10
    db98:	10000343 	b	e8a8 <L80B78248>
    db9c:	a58b015c 	sh	t3,348(t4)
    dba0:	8fa40038 	lw	a0,56(sp)
    dba4:	02002825 	move	a1,s0
    dba8:	0c000000 	jal	0 <func_80B699A0>
    dbac:	3c0642c8 	lui	a2,0x42c8
    dbb0:	1000033e 	b	e8ac <L80B78248+0x4>
    dbb4:	8fbf0024 	lw	ra,36(sp)

0000dbb8 <L80B77558>:
    dbb8:	0c000000 	jal	0 <func_80B699A0>
    dbbc:	260420d8 	addiu	a0,s0,8408
    dbc0:	24010004 	li	at,4
    dbc4:	54410339 	bnel	v0,at,e8ac <L80B78248+0x4>
    dbc8:	8fbf0024 	lw	ra,36(sp)
    dbcc:	0c000000 	jal	0 <func_80B699A0>
    dbd0:	02002025 	move	a0,s0
    dbd4:	50400335 	beqzl	v0,e8ac <L80B78248+0x4>
    dbd8:	8fbf0024 	lw	ra,36(sp)
    dbdc:	0c000000 	jal	0 <func_80B699A0>
    dbe0:	02002025 	move	a0,s0
    dbe4:	3c020001 	lui	v0,0x1
    dbe8:	00501021 	addu	v0,v0,s0
    dbec:	904204bd 	lbu	v0,1213(v0)
    dbf0:	3c060000 	lui	a2,0x0
    dbf4:	24c60000 	addiu	a2,a2,0
    dbf8:	10400005 	beqz	v0,dc10 <L80B77558+0x58>
    dbfc:	24080001 	li	t0,1
    dc00:	10480022 	beq	v0,t0,dc8c <L80B77558+0xd4>
    dc04:	02002025 	move	a0,s0
    dc08:	10000328 	b	e8ac <L80B78248+0x4>
    dc0c:	8fbf0024 	lw	ra,36(sp)
    dc10:	84cd0034 	lh	t5,52(a2)
    dc14:	02002025 	move	a0,s0
    dc18:	29a10014 	slti	at,t5,20
    dc1c:	14200015 	bnez	at,dc74 <L80B77558+0xbc>
    dc20:	00000000 	nop
    dc24:	0c000000 	jal	0 <func_80B699A0>
    dc28:	2404ffec 	li	a0,-20
    dc2c:	0c000000 	jal	0 <func_80B699A0>
    dc30:	00000000 	nop
    dc34:	14400005 	bnez	v0,dc4c <L80B77558+0x94>
    dc38:	8fb90038 	lw	t9,56(sp)
    dc3c:	8faf0038 	lw	t7,56(sp)
    dc40:	240e407c 	li	t6,16508
    dc44:	10000003 	b	dc54 <L80B77558+0x9c>
    dc48:	a5ee010e 	sh	t6,270(t7)
    dc4c:	2418407d 	li	t8,16509
    dc50:	a738010e 	sh	t8,270(t9)
    dc54:	8fa90038 	lw	t1,56(sp)
    dc58:	02002025 	move	a0,s0
    dc5c:	0c000000 	jal	0 <func_80B699A0>
    dc60:	9525010e 	lhu	a1,270(t1)
    dc64:	8fab0038 	lw	t3,56(sp)
    dc68:	240a0002 	li	t2,2
    dc6c:	1000030e 	b	e8a8 <L80B78248>
    dc70:	a56a015c 	sh	t2,348(t3)
    dc74:	0c000000 	jal	0 <func_80B699A0>
    dc78:	2405407e 	li	a1,16510
    dc7c:	8fad0038 	lw	t5,56(sp)
    dc80:	240c0003 	li	t4,3
    dc84:	10000308 	b	e8a8 <L80B78248>
    dc88:	a5ac015c 	sh	t4,348(t5)
    dc8c:	0c000000 	jal	0 <func_80B699A0>
    dc90:	2405002d 	li	a1,45
    dc94:	8faf0038 	lw	t7,56(sp)
    dc98:	240e0003 	li	t6,3
    dc9c:	10000302 	b	e8a8 <L80B78248>
    dca0:	a5ee015c 	sh	t6,348(t7)

0000dca4 <L80B77644>:
    dca4:	0c000000 	jal	0 <func_80B699A0>
    dca8:	260420d8 	addiu	a0,s0,8408
    dcac:	24010005 	li	at,5
    dcb0:	544102fe 	bnel	v0,at,e8ac <L80B78248+0x4>
    dcb4:	8fbf0024 	lw	ra,36(sp)
    dcb8:	0c000000 	jal	0 <func_80B699A0>
    dcbc:	02002025 	move	a0,s0
    dcc0:	504002fa 	beqzl	v0,e8ac <L80B78248+0x4>
    dcc4:	8fbf0024 	lw	ra,36(sp)
    dcc8:	0c000000 	jal	0 <func_80B699A0>
    dccc:	02002025 	move	a0,s0
    dcd0:	02002025 	move	a0,s0
    dcd4:	0c000000 	jal	0 <func_80B699A0>
    dcd8:	2405407f 	li	a1,16511
    dcdc:	8fb90038 	lw	t9,56(sp)
    dce0:	24180004 	li	t8,4
    dce4:	100002f0 	b	e8a8 <L80B78248>
    dce8:	a738015c 	sh	t8,348(t9)

0000dcec <L80B7768C>:
    dcec:	260420d8 	addiu	a0,s0,8408
    dcf0:	0c000000 	jal	0 <func_80B699A0>
    dcf4:	afa40028 	sw	a0,40(sp)
    dcf8:	24010005 	li	at,5
    dcfc:	14410009 	bne	v0,at,dd24 <L80B7768C+0x38>
    dd00:	00000000 	nop
    dd04:	0c000000 	jal	0 <func_80B699A0>
    dd08:	02002025 	move	a0,s0
    dd0c:	10400005 	beqz	v0,dd24 <L80B7768C+0x38>
    dd10:	00000000 	nop
    dd14:	0c000000 	jal	0 <func_80B699A0>
    dd18:	02002025 	move	a0,s0
    dd1c:	8fa90038 	lw	t1,56(sp)
    dd20:	a520015c 	sh	zero,348(t1)
    dd24:	0c000000 	jal	0 <func_80B699A0>
    dd28:	8fa40028 	lw	a0,40(sp)
    dd2c:	24010006 	li	at,6
    dd30:	144102dd 	bne	v0,at,e8a8 <L80B78248>
    dd34:	8faa0038 	lw	t2,56(sp)
    dd38:	100002db 	b	e8a8 <L80B78248>
    dd3c:	a540015c 	sh	zero,348(t2)

0000dd40 <L80B776E0>:
    dd40:	0c000000 	jal	0 <func_80B699A0>
    dd44:	260420d8 	addiu	a0,s0,8408
    dd48:	24010004 	li	at,4
    dd4c:	544102d7 	bnel	v0,at,e8ac <L80B78248+0x4>
    dd50:	8fbf0024 	lw	ra,36(sp)
    dd54:	0c000000 	jal	0 <func_80B699A0>
    dd58:	02002025 	move	a0,s0
    dd5c:	504002d3 	beqzl	v0,e8ac <L80B78248+0x4>
    dd60:	8fbf0024 	lw	ra,36(sp)
    dd64:	0c000000 	jal	0 <func_80B699A0>
    dd68:	02002025 	move	a0,s0
    dd6c:	3c020001 	lui	v0,0x1
    dd70:	00501021 	addu	v0,v0,s0
    dd74:	904204bd 	lbu	v0,1213(v0)
    dd78:	3c070000 	lui	a3,0x0
    dd7c:	24e70000 	addiu	a3,a3,0
    dd80:	10400006 	beqz	v0,dd9c <L80B776E0+0x5c>
    dd84:	240c0001 	li	t4,1
    dd88:	24080001 	li	t0,1
    dd8c:	1048002c 	beq	v0,t0,de40 <L80B776E0+0x100>
    dd90:	02002025 	move	a0,s0
    dd94:	100002c5 	b	e8ac <L80B78248+0x4>
    dd98:	8fbf0024 	lw	ra,36(sp)
    dd9c:	444bf800 	cfc1	t3,$31
    dda0:	44ccf800 	ctc1	t4,$31
    dda4:	c4e40000 	lwc1	$f4,0(a3)
    dda8:	3c014f00 	lui	at,0x4f00
    ddac:	02002025 	move	a0,s0
    ddb0:	460021a4 	cvt.w.s	$f6,$f4
    ddb4:	24054080 	li	a1,16512
    ddb8:	444cf800 	cfc1	t4,$31
    ddbc:	00000000 	nop
    ddc0:	318c0078 	andi	t4,t4,0x78
    ddc4:	51800013 	beqzl	t4,de14 <L80B776E0+0xd4>
    ddc8:	440c3000 	mfc1	t4,$f6
    ddcc:	44813000 	mtc1	at,$f6
    ddd0:	240c0001 	li	t4,1
    ddd4:	46062181 	sub.s	$f6,$f4,$f6
    ddd8:	44ccf800 	ctc1	t4,$31
    dddc:	00000000 	nop
    dde0:	460031a4 	cvt.w.s	$f6,$f6
    dde4:	444cf800 	cfc1	t4,$31
    dde8:	00000000 	nop
    ddec:	318c0078 	andi	t4,t4,0x78
    ddf0:	15800005 	bnez	t4,de08 <L80B776E0+0xc8>
    ddf4:	00000000 	nop
    ddf8:	440c3000 	mfc1	t4,$f6
    ddfc:	3c018000 	lui	at,0x8000
    de00:	10000007 	b	de20 <L80B776E0+0xe0>
    de04:	01816025 	or	t4,t4,at
    de08:	10000005 	b	de20 <L80B776E0+0xe0>
    de0c:	240cffff 	li	t4,-1
    de10:	440c3000 	mfc1	t4,$f6
    de14:	00000000 	nop
    de18:	0580fffb 	bltz	t4,de08 <L80B776E0+0xc8>
    de1c:	00000000 	nop
    de20:	44cbf800 	ctc1	t3,$31
    de24:	3c010000 	lui	at,0x0
    de28:	0c000000 	jal	0 <func_80B699A0>
    de2c:	a42c0000 	sh	t4,0(at)
    de30:	8fae0038 	lw	t6,56(sp)
    de34:	240d0005 	li	t5,5
    de38:	1000029b 	b	e8a8 <L80B78248>
    de3c:	a5cd015c 	sh	t5,348(t6)
    de40:	0c000000 	jal	0 <func_80B699A0>
    de44:	2405407f 	li	a1,16511
    de48:	10000298 	b	e8ac <L80B78248+0x4>
    de4c:	8fbf0024 	lw	ra,36(sp)

0000de50 <L80B777F0>:
    de50:	0c000000 	jal	0 <func_80B699A0>
    de54:	260420d8 	addiu	a0,s0,8408
    de58:	24010005 	li	at,5
    de5c:	54410293 	bnel	v0,at,e8ac <L80B78248+0x4>
    de60:	8fbf0024 	lw	ra,36(sp)
    de64:	0c000000 	jal	0 <func_80B699A0>
    de68:	02002025 	move	a0,s0
    de6c:	5040028f 	beqzl	v0,e8ac <L80B78248+0x4>
    de70:	8fbf0024 	lw	ra,36(sp)
    de74:	0c000000 	jal	0 <func_80B699A0>
    de78:	02002025 	move	a0,s0
    de7c:	3c010001 	lui	at,0x1
    de80:	00300821 	addu	at,at,s0
    de84:	240f0001 	li	t7,1
    de88:	3c190001 	lui	t9,0x1
    de8c:	a02f0750 	sb	t7,1872(at)
    de90:	0330c821 	addu	t9,t9,s0
    de94:	8f391d48 	lw	t9,7496(t9)
    de98:	02002025 	move	a0,s0
    de9c:	0320f809 	jalr	t9
    dea0:	00000000 	nop
    dea4:	24080001 	li	t0,1
    dea8:	3c010000 	lui	at,0x0
    deac:	8fa90038 	lw	t1,56(sp)
    deb0:	a4280000 	sh	t0,0(at)
    deb4:	3c010000 	lui	at,0x0
    deb8:	24180014 	li	t8,20
    debc:	3c060000 	lui	a2,0x0
    dec0:	a4380000 	sh	t8,0(at)
    dec4:	24c60000 	addiu	a2,a2,0
    dec8:	a520015c 	sh	zero,348(t1)
    decc:	8cc30ec0 	lw	v1,3776(a2)
    ded0:	3c0400ff 	lui	a0,0xff
    ded4:	00645024 	and	t2,v1,a0
    ded8:	0144082a 	slt	at,t2,a0
    dedc:	10200272 	beqz	at,e8a8 <L80B78248>
    dee0:	3c010001 	lui	at,0x1
    dee4:	00615821 	addu	t3,v1,at
    dee8:	1000026f 	b	e8a8 <L80B78248>
    deec:	accb0ec0 	sw	t3,3776(a2)

0000def0 <L80B77890>:
    def0:	3c0c0000 	lui	t4,0x0
    def4:	918c0000 	lbu	t4,0(t4)
    def8:	11800024 	beqz	t4,df8c <L80B77890+0x9c>
    defc:	00000000 	nop
    df00:	0c000000 	jal	0 <func_80B699A0>
    df04:	260420d8 	addiu	a0,s0,8408
    df08:	24010004 	li	at,4
    df0c:	54410267 	bnel	v0,at,e8ac <L80B78248+0x4>
    df10:	8fbf0024 	lw	ra,36(sp)
    df14:	0c000000 	jal	0 <func_80B699A0>
    df18:	02002025 	move	a0,s0
    df1c:	50400263 	beqzl	v0,e8ac <L80B78248+0x4>
    df20:	8fbf0024 	lw	ra,36(sp)
    df24:	0c000000 	jal	0 <func_80B699A0>
    df28:	02002025 	move	a0,s0
    df2c:	3c020001 	lui	v0,0x1
    df30:	00501021 	addu	v0,v0,s0
    df34:	904204bd 	lbu	v0,1213(v0)
    df38:	24080001 	li	t0,1
    df3c:	02002025 	move	a0,s0
    df40:	10400005 	beqz	v0,df58 <L80B77890+0x68>
    df44:	00000000 	nop
    df48:	1048000e 	beq	v0,t0,df84 <L80B77890+0x94>
    df4c:	8fb90038 	lw	t9,56(sp)
    df50:	10000256 	b	e8ac <L80B78248+0x4>
    df54:	8fbf0024 	lw	ra,36(sp)
    df58:	0c000000 	jal	0 <func_80B699A0>
    df5c:	240540b2 	li	a1,16562
    df60:	240d0001 	li	t5,1
    df64:	3c010000 	lui	at,0x0
    df68:	a02d0000 	sb	t5,0(at)
    df6c:	8faf0038 	lw	t7,56(sp)
    df70:	3c010000 	lui	at,0x0
    df74:	a0200000 	sb	zero,0(at)
    df78:	240e0014 	li	t6,20
    df7c:	1000024a 	b	e8a8 <L80B78248>
    df80:	a5ee015c 	sh	t6,348(t7)
    df84:	10000248 	b	e8a8 <L80B78248>
    df88:	a720015c 	sh	zero,348(t9)
    df8c:	0c000000 	jal	0 <func_80B699A0>
    df90:	260420d8 	addiu	a0,s0,8408
    df94:	24010004 	li	at,4
    df98:	54410244 	bnel	v0,at,e8ac <L80B78248+0x4>
    df9c:	8fbf0024 	lw	ra,36(sp)
    dfa0:	0c000000 	jal	0 <func_80B699A0>
    dfa4:	02002025 	move	a0,s0
    dfa8:	50400240 	beqzl	v0,e8ac <L80B78248+0x4>
    dfac:	8fbf0024 	lw	ra,36(sp)
    dfb0:	0c000000 	jal	0 <func_80B699A0>
    dfb4:	02002025 	move	a0,s0
    dfb8:	3c020001 	lui	v0,0x1
    dfbc:	00501021 	addu	v0,v0,s0
    dfc0:	904204bd 	lbu	v0,1213(v0)
    dfc4:	24080001 	li	t0,1
    dfc8:	02002025 	move	a0,s0
    dfcc:	10400007 	beqz	v0,dfec <L80B77890+0xfc>
    dfd0:	00000000 	nop
    dfd4:	10480063 	beq	v0,t0,e164 <L80B77890+0x274>
    dfd8:	24010002 	li	at,2
    dfdc:	104100aa 	beq	v0,at,e288 <L80B77890+0x398>
    dfe0:	3c190000 	lui	t9,0x0
    dfe4:	10000231 	b	e8ac <L80B78248+0x4>
    dfe8:	8fbf0024 	lw	ra,36(sp)
    dfec:	3c020000 	lui	v0,0x0
    dff0:	24420000 	addiu	v0,v0,0
    dff4:	c4400000 	lwc1	$f0,0(v0)
    dff8:	44804000 	mtc1	zero,$f8
    dffc:	8fa20038 	lw	v0,56(sp)
    e000:	2418408c 	li	t8,16524
    e004:	46004032 	c.eq.s	$f8,$f0
    e008:	24090014 	li	t1,20
    e00c:	3c0a0000 	lui	t2,0x0
    e010:	45000004 	bc1f	e024 <L80B77890+0x134>
    e014:	00000000 	nop
    e018:	a458010e 	sh	t8,270(v0)
    e01c:	1000004d 	b	e154 <L80B77890+0x264>
    e020:	a449015c 	sh	t1,348(v0)
    e024:	914a0000 	lbu	t2,0(t2)
    e028:	8fa20038 	lw	v0,56(sp)
    e02c:	240c409b 	li	t4,16539
    e030:	15400046 	bnez	t2,e14c <L80B77890+0x25c>
    e034:	240d000b 	li	t5,11
    e038:	444bf800 	cfc1	t3,$31
    e03c:	240c0001 	li	t4,1
    e040:	44ccf800 	ctc1	t4,$31
    e044:	3c070000 	lui	a3,0x0
    e048:	24e70000 	addiu	a3,a3,0
    e04c:	460002a4 	cvt.w.s	$f10,$f0
    e050:	3c014f00 	lui	at,0x4f00
    e054:	444cf800 	cfc1	t4,$31
    e058:	00000000 	nop
    e05c:	318c0078 	andi	t4,t4,0x78
    e060:	51800013 	beqzl	t4,e0b0 <L80B77890+0x1c0>
    e064:	440c5000 	mfc1	t4,$f10
    e068:	44815000 	mtc1	at,$f10
    e06c:	240c0001 	li	t4,1
    e070:	460a0281 	sub.s	$f10,$f0,$f10
    e074:	44ccf800 	ctc1	t4,$31
    e078:	00000000 	nop
    e07c:	460052a4 	cvt.w.s	$f10,$f10
    e080:	444cf800 	cfc1	t4,$31
    e084:	00000000 	nop
    e088:	318c0078 	andi	t4,t4,0x78
    e08c:	15800005 	bnez	t4,e0a4 <L80B77890+0x1b4>
    e090:	00000000 	nop
    e094:	440c5000 	mfc1	t4,$f10
    e098:	3c018000 	lui	at,0x8000
    e09c:	10000007 	b	e0bc <L80B77890+0x1cc>
    e0a0:	01816025 	or	t4,t4,at
    e0a4:	10000005 	b	e0bc <L80B77890+0x1cc>
    e0a8:	240cffff 	li	t4,-1
    e0ac:	440c5000 	mfc1	t4,$f10
    e0b0:	00000000 	nop
    e0b4:	0580fffb 	bltz	t4,e0a4 <L80B77890+0x1b4>
    e0b8:	00000000 	nop
    e0bc:	3c010000 	lui	at,0x0
    e0c0:	44cbf800 	ctc1	t3,$31
    e0c4:	a42c0000 	sh	t4,0(at)
    e0c8:	c4f00000 	lwc1	$f16,0(a3)
    e0cc:	4600010d 	trunc.w.s	$f4,$f0
    e0d0:	3c0c0000 	lui	t4,0x0
    e0d4:	8fa20038 	lw	v0,56(sp)
    e0d8:	4600848d 	trunc.w.s	$f18,$f16
    e0dc:	44092000 	mfc1	t1,$f4
    e0e0:	440e9000 	mfc1	t6,$f18
    e0e4:	00095400 	sll	t2,t1,0x10
    e0e8:	000a5c03 	sra	t3,t2,0x10
    e0ec:	000e7c00 	sll	t7,t6,0x10
    e0f0:	000fcc03 	sra	t9,t7,0x10
    e0f4:	032b082a 	slt	at,t9,t3
    e0f8:	1020000f 	beqz	at,e138 <L80B77890+0x248>
    e0fc:	2419408b 	li	t9,16523
    e100:	918c0000 	lbu	t4,0(t4)
    e104:	24010002 	li	at,2
    e108:	8fae0038 	lw	t6,56(sp)
    e10c:	15810004 	bne	t4,at,e120 <L80B77890+0x230>
    e110:	8fb80038 	lw	t8,56(sp)
    e114:	240d40b0 	li	t5,16560
    e118:	10000003 	b	e128 <L80B77890+0x238>
    e11c:	a5cd010e 	sh	t5,270(t6)
    e120:	240f4086 	li	t7,16518
    e124:	a70f010e 	sh	t7,270(t8)
    e128:	8faa0038 	lw	t2,56(sp)
    e12c:	2409000b 	li	t1,11
    e130:	10000004 	b	e144 <L80B77890+0x254>
    e134:	a549015c 	sh	t1,348(t2)
    e138:	240b0014 	li	t3,20
    e13c:	a459010e 	sh	t9,270(v0)
    e140:	a44b015c 	sh	t3,348(v0)
    e144:	10000003 	b	e154 <L80B77890+0x264>
    e148:	8fa20038 	lw	v0,56(sp)
    e14c:	a44c010e 	sh	t4,270(v0)
    e150:	a44d015c 	sh	t5,348(v0)
    e154:	0c000000 	jal	0 <func_80B699A0>
    e158:	9445010e 	lhu	a1,270(v0)
    e15c:	100001d3 	b	e8ac <L80B78248+0x4>
    e160:	8fbf0024 	lw	ra,36(sp)
    e164:	3c020000 	lui	v0,0x0
    e168:	24420000 	addiu	v0,v0,0
    e16c:	8c4e0000 	lw	t6,0(v0)
    e170:	34018ca1 	li	at,0x8ca1
    e174:	3c180000 	lui	t8,0x0
    e178:	01c1082a 	slt	at,t6,at
    e17c:	14200008 	bnez	at,e1a0 <L80B77890+0x2b0>
    e180:	3c0a0000 	lui	t2,0x0
    e184:	240f7530 	li	t7,30000
    e188:	ac4f0000 	sw	t7,0(v0)
    e18c:	02002025 	move	a0,s0
    e190:	0c000000 	jal	0 <func_80B699A0>
    e194:	24054088 	li	a1,16520
    e198:	10000039 	b	e280 <L80B77890+0x390>
    e19c:	8faa0038 	lw	t2,56(sp)
    e1a0:	93180000 	lbu	t8,0(t8)
    e1a4:	3c030000 	lui	v1,0x0
    e1a8:	24630000 	addiu	v1,v1,0
    e1ac:	17000005 	bnez	t8,e1c4 <L80B77890+0x2d4>
    e1b0:	24010002 	li	at,2
    e1b4:	90620000 	lbu	v0,0(v1)
    e1b8:	14400002 	bnez	v0,e1c4 <L80B77890+0x2d4>
    e1bc:	24490001 	addiu	t1,v0,1
    e1c0:	a0690000 	sb	t1,0(v1)
    e1c4:	914a0000 	lbu	t2,0(t2)
    e1c8:	3c030000 	lui	v1,0x0
    e1cc:	24630000 	addiu	v1,v1,0
    e1d0:	1541000f 	bne	t2,at,e210 <L80B77890+0x320>
    e1d4:	90620000 	lbu	v0,0(v1)
    e1d8:	0002c840 	sll	t9,v0,0x1
    e1dc:	3c0b0000 	lui	t3,0x0
    e1e0:	01795821 	addu	t3,t3,t9
    e1e4:	956b0000 	lhu	t3,0(t3)
    e1e8:	2401408d 	li	at,16525
    e1ec:	02002025 	move	a0,s0
    e1f0:	55610008 	bnel	t3,at,e214 <L80B77890+0x324>
    e1f4:	00026040 	sll	t4,v0,0x1
    e1f8:	0c000000 	jal	0 <func_80B699A0>
    e1fc:	240540af 	li	a1,16559
    e200:	3c030000 	lui	v1,0x0
    e204:	24630000 	addiu	v1,v1,0
    e208:	1000000a 	b	e234 <L80B77890+0x344>
    e20c:	24080001 	li	t0,1
    e210:	00026040 	sll	t4,v0,0x1
    e214:	3c050000 	lui	a1,0x0
    e218:	00ac2821 	addu	a1,a1,t4
    e21c:	94a50000 	lhu	a1,0(a1)
    e220:	0c000000 	jal	0 <func_80B699A0>
    e224:	02002025 	move	a0,s0
    e228:	3c030000 	lui	v1,0x0
    e22c:	24630000 	addiu	v1,v1,0
    e230:	24080001 	li	t0,1
    e234:	906d0000 	lbu	t5,0(v1)
    e238:	3c0f0000 	lui	t7,0x0
    e23c:	25ae0001 	addiu	t6,t5,1
    e240:	a06e0000 	sb	t6,0(v1)
    e244:	91ef0000 	lbu	t7,0(t7)
    e248:	31d800ff 	andi	t8,t6,0xff
    e24c:	2b010006 	slti	at,t8,6
    e250:	510f0006 	beql	t0,t7,e26c <L80B77890+0x37c>
    e254:	90690000 	lbu	t1,0(v1)
    e258:	54200009 	bnezl	at,e280 <L80B77890+0x390>
    e25c:	8faa0038 	lw	t2,56(sp)
    e260:	10000006 	b	e27c <L80B77890+0x38c>
    e264:	a0600000 	sb	zero,0(v1)
    e268:	90690000 	lbu	t1,0(v1)
    e26c:	29210004 	slti	at,t1,4
    e270:	54200003 	bnezl	at,e280 <L80B77890+0x390>
    e274:	8faa0038 	lw	t2,56(sp)
    e278:	a0600000 	sb	zero,0(v1)
    e27c:	8faa0038 	lw	t2,56(sp)
    e280:	10000189 	b	e8a8 <L80B78248>
    e284:	a540015c 	sh	zero,348(t2)
    e288:	97390000 	lhu	t9,0(t9)
    e28c:	02002025 	move	a0,s0
    e290:	3c0b0000 	lui	t3,0x0
    e294:	17200005 	bnez	t9,e2ac <L80B77890+0x3bc>
    e298:	00000000 	nop
    e29c:	0c000000 	jal	0 <func_80B699A0>
    e2a0:	24054085 	li	a1,16517
    e2a4:	10000008 	b	e2c8 <L80B77890+0x3d8>
    e2a8:	8fad0038 	lw	t5,56(sp)
    e2ac:	916b0000 	lbu	t3,0(t3)
    e2b0:	02002025 	move	a0,s0
    e2b4:	550b0004 	bnel	t0,t3,e2c8 <L80B77890+0x3d8>
    e2b8:	8fad0038 	lw	t5,56(sp)
    e2bc:	0c000000 	jal	0 <func_80B699A0>
    e2c0:	24054092 	li	a1,16530
    e2c4:	8fad0038 	lw	t5,56(sp)
    e2c8:	240c0016 	li	t4,22
    e2cc:	10000176 	b	e8a8 <L80B78248>
    e2d0:	a5ac015c 	sh	t4,348(t5)

0000e2d4 <L80B77C74>:
    e2d4:	260420d8 	addiu	a0,s0,8408
    e2d8:	0c000000 	jal	0 <func_80B699A0>
    e2dc:	afa40028 	sw	a0,40(sp)
    e2e0:	24010005 	li	at,5
    e2e4:	10410005 	beq	v0,at,e2fc <L80B77C74+0x28>
    e2e8:	00000000 	nop
    e2ec:	0c000000 	jal	0 <func_80B699A0>
    e2f0:	8fa40028 	lw	a0,40(sp)
    e2f4:	5440016d 	bnezl	v0,e8ac <L80B78248+0x4>
    e2f8:	8fbf0024 	lw	ra,36(sp)
    e2fc:	0c000000 	jal	0 <func_80B699A0>
    e300:	02002025 	move	a0,s0
    e304:	50400169 	beqzl	v0,e8ac <L80B78248+0x4>
    e308:	8fbf0024 	lw	ra,36(sp)
    e30c:	0c000000 	jal	0 <func_80B699A0>
    e310:	02002025 	move	a0,s0
    e314:	3c0e0000 	lui	t6,0x0
    e318:	91ce0000 	lbu	t6,0(t6)
    e31c:	3c020000 	lui	v0,0x0
    e320:	3c070000 	lui	a3,0x0
    e324:	15c000d7 	bnez	t6,e684 <L80B77C74+0x3b0>
    e328:	24420000 	addiu	v0,v0,0
    e32c:	3c020000 	lui	v0,0x0
    e330:	24420000 	addiu	v0,v0,0
    e334:	c4460000 	lwc1	$f6,0(v0)
    e338:	44804000 	mtc1	zero,$f8
    e33c:	24e70000 	addiu	a3,a3,0
    e340:	3c040000 	lui	a0,0x0
    e344:	e4e60000 	swc1	$f6,0(a3)
    e348:	e4480000 	swc1	$f8,0(v0)
    e34c:	90840000 	lbu	a0,0(a0)
    e350:	24080001 	li	t0,1
    e354:	3c060000 	lui	a2,0x0
    e358:	5504002f 	bnel	t0,a0,e418 <L80B77C74+0x144>
    e35c:	c4e00000 	lwc1	$f0,0(a3)
    e360:	c4e00000 	lwc1	$f0,0(a3)
    e364:	3c060000 	lui	a2,0x0
    e368:	24c60000 	addiu	a2,a2,0
    e36c:	4600028d 	trunc.w.s	$f10,$f0
    e370:	8ccf0ec0 	lw	t7,3776(a2)
    e374:	2401ff00 	li	at,-256
    e378:	3c090000 	lui	t1,0x0
    e37c:	44025000 	mfc1	v0,$f10
    e380:	01e1c024 	and	t8,t7,at
    e384:	3c017f00 	lui	at,0x7f00
    e388:	3042007f 	andi	v0,v0,0x7f
    e38c:	0302c825 	or	t9,t8,v0
    e390:	03215824 	and	t3,t9,at
    e394:	000b6603 	sra	t4,t3,0x18
    e398:	448c8000 	mtc1	t4,$f16
    e39c:	3c0100ff 	lui	at,0xff
    e3a0:	3421ffff 	ori	at,at,0xffff
    e3a4:	468080a0 	cvt.s.w	$f2,$f16
    e3a8:	acd80ec0 	sw	t8,3776(a2)
    e3ac:	03216824 	and	t5,t9,at
    e3b0:	00027e00 	sll	t7,v0,0x18
    e3b4:	acd90ec0 	sw	t9,3776(a2)
    e3b8:	01afc025 	or	t8,t5,t7
    e3bc:	4600103c 	c.lt.s	$f2,$f0
    e3c0:	3c0b0000 	lui	t3,0x0
    e3c4:	45000009 	bc1f	e3ec <L80B77C74+0x118>
    e3c8:	00000000 	nop
    e3cc:	accd0ec0 	sw	t5,3776(a2)
    e3d0:	acd80ec0 	sw	t8,3776(a2)
    e3d4:	91290000 	lbu	t1,0(t1)
    e3d8:	24010002 	li	at,2
    e3dc:	15210003 	bne	t1,at,e3ec <L80B77C74+0x118>
    e3e0:	3c018000 	lui	at,0x8000
    e3e4:	0301c825 	or	t9,t8,at
    e3e8:	acd90ec0 	sw	t9,3776(a2)
    e3ec:	916b0000 	lbu	t3,0(t3)
    e3f0:	24010002 	li	at,2
    e3f4:	5561001f 	bnel	t3,at,e474 <L80B77C74+0x1a0>
    e3f8:	3c014270 	lui	at,0x4270
    e3fc:	8ccc0ec0 	lw	t4,3776(a2)
    e400:	8fae0038 	lw	t6,56(sp)
    e404:	358d0080 	ori	t5,t4,0x80
    e408:	accd0ec0 	sw	t5,3776(a2)
    e40c:	10000126 	b	e8a8 <L80B78248>
    e410:	a5c0015c 	sh	zero,348(t6)
    e414:	c4e00000 	lwc1	$f0,0(a3)
    e418:	24c60000 	addiu	a2,a2,0
    e41c:	8ccf0ec0 	lw	t7,3776(a2)
    e420:	4600048d 	trunc.w.s	$f18,$f0
    e424:	3c0100ff 	lui	at,0xff
    e428:	3421ffff 	ori	at,at,0xffff
    e42c:	01e1c024 	and	t8,t7,at
    e430:	44199000 	mfc1	t9,$f18
    e434:	acd80ec0 	sw	t8,3776(a2)
    e438:	3c0e0000 	lui	t6,0x0
    e43c:	332b007f 	andi	t3,t9,0x7f
    e440:	000b6600 	sll	t4,t3,0x18
    e444:	030c6825 	or	t5,t8,t4
    e448:	accd0ec0 	sw	t5,3776(a2)
    e44c:	91ce0000 	lbu	t6,0(t6)
    e450:	24010002 	li	at,2
    e454:	15c10006 	bne	t6,at,e470 <L80B77C74+0x19c>
    e458:	3c018000 	lui	at,0x8000
    e45c:	8faa0038 	lw	t2,56(sp)
    e460:	01a1c025 	or	t8,t5,at
    e464:	acd80ec0 	sw	t8,3776(a2)
    e468:	1000010f 	b	e8a8 <L80B78248>
    e46c:	a540015c 	sh	zero,348(t2)
    e470:	3c014270 	lui	at,0x4270
    e474:	44811000 	mtc1	at,$f2
    e478:	24190055 	li	t9,85
    e47c:	3c014248 	lui	at,0x4248
    e480:	4600103e 	c.le.s	$f2,$f0
    e484:	00000000 	nop
    e488:	45020004 	bc1fl	e49c <L80B77C74+0x1c8>
    e48c:	44812000 	mtc1	at,$f4
    e490:	10000014 	b	e4e4 <L80B77C74+0x210>
    e494:	afb90034 	sw	t9,52(sp)
    e498:	44812000 	mtc1	at,$f4
    e49c:	240b004e 	li	t3,78
    e4a0:	3c014220 	lui	at,0x4220
    e4a4:	4600203e 	c.le.s	$f4,$f0
    e4a8:	00000000 	nop
    e4ac:	45020004 	bc1fl	e4c0 <L80B77C74+0x1ec>
    e4b0:	44813000 	mtc1	at,$f6
    e4b4:	1000000b 	b	e4e4 <L80B77C74+0x210>
    e4b8:	afab0034 	sw	t3,52(sp)
    e4bc:	44813000 	mtc1	at,$f6
    e4c0:	2409004d 	li	t1,77
    e4c4:	240c004c 	li	t4,76
    e4c8:	4600303e 	c.le.s	$f6,$f0
    e4cc:	00000000 	nop
    e4d0:	45020004 	bc1fl	e4e4 <L80B77C74+0x210>
    e4d4:	afac0034 	sw	t4,52(sp)
    e4d8:	10000002 	b	e4e4 <L80B77C74+0x210>
    e4dc:	afa90034 	sw	t1,52(sp)
    e4e0:	afac0034 	sw	t4,52(sp)
    e4e4:	15040035 	bne	t0,a0,e5bc <L80B77C74+0x2e8>
    e4e8:	3c014248 	lui	at,0x4248
    e4ec:	44814000 	mtc1	at,$f8
    e4f0:	00000000 	nop
    e4f4:	4600403e 	c.le.s	$f8,$f0
    e4f8:	00000000 	nop
    e4fc:	45020066 	bc1fl	e698 <L80B77C74+0x3c4>
    e500:	8fa40038 	lw	a0,56(sp)
    e504:	8cc30ec0 	lw	v1,3776(a2)
    e508:	240f003e 	li	t7,62
    e50c:	3c010000 	lui	at,0x0
    e510:	306d0400 	andi	t5,v1,0x400
    e514:	15a0005f 	bnez	t5,e694 <L80B77C74+0x3c0>
    e518:	346e0400 	ori	t6,v1,0x400
    e51c:	acce0ec0 	sw	t6,3776(a2)
    e520:	afaf0034 	sw	t7,52(sp)
    e524:	0c000000 	jal	0 <func_80B699A0>
    e528:	c42c0000 	lwc1	$f12,0(at)
    e52c:	4458f800 	cfc1	t8,$31
    e530:	240a0001 	li	t2,1
    e534:	44caf800 	ctc1	t2,$31
    e538:	3c014f00 	lui	at,0x4f00
    e53c:	460002a4 	cvt.w.s	$f10,$f0
    e540:	444af800 	cfc1	t2,$31
    e544:	00000000 	nop
    e548:	314a0078 	andi	t2,t2,0x78
    e54c:	51400013 	beqzl	t2,e59c <L80B77C74+0x2c8>
    e550:	440a5000 	mfc1	t2,$f10
    e554:	44815000 	mtc1	at,$f10
    e558:	240a0001 	li	t2,1
    e55c:	460a0281 	sub.s	$f10,$f0,$f10
    e560:	44caf800 	ctc1	t2,$31
    e564:	00000000 	nop
    e568:	460052a4 	cvt.w.s	$f10,$f10
    e56c:	444af800 	cfc1	t2,$31
    e570:	00000000 	nop
    e574:	314a0078 	andi	t2,t2,0x78
    e578:	15400005 	bnez	t2,e590 <L80B77C74+0x2bc>
    e57c:	00000000 	nop
    e580:	440a5000 	mfc1	t2,$f10
    e584:	3c018000 	lui	at,0x8000
    e588:	10000007 	b	e5a8 <L80B77C74+0x2d4>
    e58c:	01415025 	or	t2,t2,at
    e590:	10000005 	b	e5a8 <L80B77C74+0x2d4>
    e594:	240affff 	li	t2,-1
    e598:	440a5000 	mfc1	t2,$f10
    e59c:	00000000 	nop
    e5a0:	0540fffb 	bltz	t2,e590 <L80B77C74+0x2bc>
    e5a4:	00000000 	nop
    e5a8:	44d8f800 	ctc1	t8,$31
    e5ac:	254b0001 	addiu	t3,t2,1
    e5b0:	3c010000 	lui	at,0x0
    e5b4:	10000037 	b	e694 <L80B77C74+0x3c0>
    e5b8:	a02b0000 	sb	t3,0(at)
    e5bc:	4600103e 	c.le.s	$f2,$f0
    e5c0:	00000000 	nop
    e5c4:	45020034 	bc1fl	e698 <L80B77C74+0x3c4>
    e5c8:	8fa40038 	lw	a0,56(sp)
    e5cc:	8cc30ec0 	lw	v1,3776(a2)
    e5d0:	240d0038 	li	t5,56
    e5d4:	3c010000 	lui	at,0x0
    e5d8:	30690800 	andi	t1,v1,0x800
    e5dc:	1520002d 	bnez	t1,e694 <L80B77C74+0x3c0>
    e5e0:	346c0800 	ori	t4,v1,0x800
    e5e4:	accc0ec0 	sw	t4,3776(a2)
    e5e8:	afad0034 	sw	t5,52(sp)
    e5ec:	0c000000 	jal	0 <func_80B699A0>
    e5f0:	c42c0000 	lwc1	$f12,0(at)
    e5f4:	444ef800 	cfc1	t6,$31
    e5f8:	240f0001 	li	t7,1
    e5fc:	44cff800 	ctc1	t7,$31
    e600:	3c014f00 	lui	at,0x4f00
    e604:	46000424 	cvt.w.s	$f16,$f0
    e608:	444ff800 	cfc1	t7,$31
    e60c:	00000000 	nop
    e610:	31ef0078 	andi	t7,t7,0x78
    e614:	51e00013 	beqzl	t7,e664 <L80B77C74+0x390>
    e618:	440f8000 	mfc1	t7,$f16
    e61c:	44818000 	mtc1	at,$f16
    e620:	240f0001 	li	t7,1
    e624:	46100401 	sub.s	$f16,$f0,$f16
    e628:	44cff800 	ctc1	t7,$31
    e62c:	00000000 	nop
    e630:	46008424 	cvt.w.s	$f16,$f16
    e634:	444ff800 	cfc1	t7,$31
    e638:	00000000 	nop
    e63c:	31ef0078 	andi	t7,t7,0x78
    e640:	15e00005 	bnez	t7,e658 <L80B77C74+0x384>
    e644:	00000000 	nop
    e648:	440f8000 	mfc1	t7,$f16
    e64c:	3c018000 	lui	at,0x8000
    e650:	10000007 	b	e670 <L80B77C74+0x39c>
    e654:	01e17825 	or	t7,t7,at
    e658:	10000005 	b	e670 <L80B77C74+0x39c>
    e65c:	240fffff 	li	t7,-1
    e660:	440f8000 	mfc1	t7,$f16
    e664:	00000000 	nop
    e668:	05e0fffb 	bltz	t7,e658 <L80B77C74+0x384>
    e66c:	00000000 	nop
    e670:	44cef800 	ctc1	t6,$31
    e674:	25ea0001 	addiu	t2,t7,1
    e678:	3c010000 	lui	at,0x0
    e67c:	10000005 	b	e694 <L80B77C74+0x3c0>
    e680:	a02a0000 	sb	t2,0(at)
    e684:	44809000 	mtc1	zero,$f18
    e688:	24190055 	li	t9,85
    e68c:	afb90034 	sw	t9,52(sp)
    e690:	e4520000 	swc1	$f18,0(v0)
    e694:	8fa40038 	lw	a0,56(sp)
    e698:	3c01447a 	lui	at,0x447a
    e69c:	44812000 	mtc1	at,$f4
    e6a0:	ac800118 	sw	zero,280(a0)
    e6a4:	8fa60034 	lw	a2,52(sp)
    e6a8:	02002825 	move	a1,s0
    e6ac:	3c0744fa 	lui	a3,0x44fa
    e6b0:	0c000000 	jal	0 <func_80B699A0>
    e6b4:	e7a40010 	swc1	$f4,16(sp)
    e6b8:	8fa90038 	lw	t1,56(sp)
    e6bc:	240b0017 	li	t3,23
    e6c0:	10000079 	b	e8a8 <L80B78248>
    e6c4:	a52b015c 	sh	t3,348(t1)

0000e6c8 <L80B78068>:
    e6c8:	0c000000 	jal	0 <func_80B699A0>
    e6cc:	260420d8 	addiu	a0,s0,8408
    e6d0:	24010005 	li	at,5
    e6d4:	54410075 	bnel	v0,at,e8ac <L80B78248+0x4>
    e6d8:	8fbf0024 	lw	ra,36(sp)
    e6dc:	0c000000 	jal	0 <func_80B699A0>
    e6e0:	02002025 	move	a0,s0
    e6e4:	50400071 	beqzl	v0,e8ac <L80B78248+0x4>
    e6e8:	8fbf0024 	lw	ra,36(sp)
    e6ec:	0c000000 	jal	0 <func_80B699A0>
    e6f0:	02002025 	move	a0,s0
    e6f4:	8fac0038 	lw	t4,56(sp)
    e6f8:	1000006b 	b	e8a8 <L80B78248>
    e6fc:	a580015c 	sh	zero,348(t4)

0000e700 <L80B780A0>:
    e700:	0c000000 	jal	0 <func_80B699A0>
    e704:	260420d8 	addiu	a0,s0,8408
    e708:	24010004 	li	at,4
    e70c:	54410067 	bnel	v0,at,e8ac <L80B78248+0x4>
    e710:	8fbf0024 	lw	ra,36(sp)
    e714:	0c000000 	jal	0 <func_80B699A0>
    e718:	02002025 	move	a0,s0
    e71c:	50400063 	beqzl	v0,e8ac <L80B78248+0x4>
    e720:	8fbf0024 	lw	ra,36(sp)
    e724:	0c000000 	jal	0 <func_80B699A0>
    e728:	02002025 	move	a0,s0
    e72c:	3c020001 	lui	v0,0x1
    e730:	00501021 	addu	v0,v0,s0
    e734:	904204bd 	lbu	v0,1213(v0)
    e738:	24080001 	li	t0,1
    e73c:	8fad0038 	lw	t5,56(sp)
    e740:	10400005 	beqz	v0,e758 <L80B780A0+0x58>
    e744:	00000000 	nop
    e748:	10480005 	beq	v0,t0,e760 <L80B780A0+0x60>
    e74c:	3c0e0000 	lui	t6,0x0
    e750:	10000056 	b	e8ac <L80B78248+0x4>
    e754:	8fbf0024 	lw	ra,36(sp)
    e758:	10000053 	b	e8a8 <L80B78248>
    e75c:	a5a0015c 	sh	zero,348(t5)
    e760:	95ce0000 	lhu	t6,0(t6)
    e764:	02002025 	move	a0,s0
    e768:	3c0f0000 	lui	t7,0x0
    e76c:	15c00005 	bnez	t6,e784 <L80B780A0+0x84>
    e770:	00000000 	nop
    e774:	0c000000 	jal	0 <func_80B699A0>
    e778:	24054085 	li	a1,16517
    e77c:	10000008 	b	e7a0 <L80B780A0+0xa0>
    e780:	8faa0038 	lw	t2,56(sp)
    e784:	91ef0000 	lbu	t7,0(t7)
    e788:	02002025 	move	a0,s0
    e78c:	550f0004 	bnel	t0,t7,e7a0 <L80B780A0+0xa0>
    e790:	8faa0038 	lw	t2,56(sp)
    e794:	0c000000 	jal	0 <func_80B699A0>
    e798:	24054092 	li	a1,16530
    e79c:	8faa0038 	lw	t2,56(sp)
    e7a0:	24180016 	li	t8,22
    e7a4:	10000040 	b	e8a8 <L80B78248>
    e7a8:	a558015c 	sh	t8,348(t2)

0000e7ac <L80B7814C>:
    e7ac:	0c000000 	jal	0 <func_80B699A0>
    e7b0:	260420d8 	addiu	a0,s0,8408
    e7b4:	1440003c 	bnez	v0,e8a8 <L80B78248>
    e7b8:	8fb90038 	lw	t9,56(sp)
    e7bc:	3c020000 	lui	v0,0x0
    e7c0:	24420000 	addiu	v0,v0,0
    e7c4:	a720015c 	sh	zero,348(t9)
    e7c8:	904b0000 	lbu	t3,0(v0)
    e7cc:	24090001 	li	t1,1
    e7d0:	3c010000 	lui	at,0x0
    e7d4:	11600003 	beqz	t3,e7e4 <L80B7814C+0x38>
    e7d8:	00000000 	nop
    e7dc:	a0290000 	sb	t1,0(at)
    e7e0:	a0400000 	sb	zero,0(v0)
    e7e4:	3c010000 	lui	at,0x0
    e7e8:	a4200000 	sh	zero,0(at)
    e7ec:	3c010001 	lui	at,0x1
    e7f0:	00300821 	addu	at,at,s0
    e7f4:	1000002c 	b	e8a8 <L80B78248>
    e7f8:	a0200750 	sb	zero,1872(at)

0000e7fc <L80B7819C>:
    e7fc:	3c010000 	lui	at,0x0
    e800:	a0200000 	sb	zero,0(at)
    e804:	8fa40038 	lw	a0,56(sp)
    e808:	0c000000 	jal	0 <func_80B699A0>
    e80c:	02002825 	move	a1,s0
    e810:	10400005 	beqz	v0,e828 <L80B7819C+0x2c>
    e814:	8fa40038 	lw	a0,56(sp)
    e818:	8fad0038 	lw	t5,56(sp)
    e81c:	240c0018 	li	t4,24
    e820:	10000021 	b	e8a8 <L80B78248>
    e824:	a5ac015c 	sh	t4,348(t5)
    e828:	3c01447a 	lui	at,0x447a
    e82c:	44813000 	mtc1	at,$f6
    e830:	02002825 	move	a1,s0
    e834:	24060038 	li	a2,56
    e838:	3c0744fa 	lui	a3,0x44fa
    e83c:	0c000000 	jal	0 <func_80B699A0>
    e840:	e7a60010 	swc1	$f6,16(sp)
    e844:	10000019 	b	e8ac <L80B78248+0x4>
    e848:	8fbf0024 	lw	ra,36(sp)

0000e84c <L80B781EC>:
    e84c:	3c010000 	lui	at,0x0
    e850:	a0200000 	sb	zero,0(at)
    e854:	0c000000 	jal	0 <func_80B699A0>
    e858:	260420d8 	addiu	a0,s0,8408
    e85c:	24010006 	li	at,6
    e860:	54410012 	bnel	v0,at,e8ac <L80B78248+0x4>
    e864:	8fbf0024 	lw	ra,36(sp)
    e868:	0c000000 	jal	0 <func_80B699A0>
    e86c:	02002025 	move	a0,s0
    e870:	1040000d 	beqz	v0,e8a8 <L80B78248>
    e874:	3c0e0000 	lui	t6,0x0
    e878:	91ce0000 	lbu	t6,0(t6)
    e87c:	8faf0038 	lw	t7,56(sp)
    e880:	02002025 	move	a0,s0
    e884:	15c00003 	bnez	t6,e894 <L80B781EC+0x48>
    e888:	2405409c 	li	a1,16540
    e88c:	10000006 	b	e8a8 <L80B78248>
    e890:	a5e0015c 	sh	zero,348(t7)
    e894:	0c000000 	jal	0 <func_80B699A0>
    e898:	00003025 	move	a2,zero
    e89c:	8faa0038 	lw	t2,56(sp)
    e8a0:	24180014 	li	t8,20
    e8a4:	a558015c 	sh	t8,348(t2)

0000e8a8 <L80B78248>:
    e8a8:	8fbf0024 	lw	ra,36(sp)
    e8ac:	8fb00020 	lw	s0,32(sp)
    e8b0:	27bd0038 	addiu	sp,sp,56
    e8b4:	03e00008 	jr	ra
    e8b8:	00000000 	nop

0000e8bc <func_80B7825C>:
    e8bc:	27bdfed8 	addiu	sp,sp,-296
    e8c0:	afbf0024 	sw	ra,36(sp)
    e8c4:	afb00020 	sw	s0,32(sp)
    e8c8:	afa40128 	sw	a0,296(sp)
    e8cc:	8ca21c44 	lw	v0,7236(a1)
    e8d0:	3c010000 	lui	at,0x0
    e8d4:	c42a0000 	lwc1	$f10,0(at)
    e8d8:	904e00c8 	lbu	t6,200(v0)
    e8dc:	00a08025 	move	s0,a1
    e8e0:	240500c8 	li	a1,200
    e8e4:	a7ae00f8 	sh	t6,248(sp)
    e8e8:	c4400024 	lwc1	$f0,36(v0)
    e8ec:	c442002c 	lwc1	$f2,44(v0)
    e8f0:	27a400f8 	addiu	a0,sp,248
    e8f4:	46000102 	mul.s	$f4,$f0,$f0
    e8f8:	24060001 	li	a2,1
    e8fc:	24070028 	li	a3,40
    e900:	46021182 	mul.s	$f6,$f2,$f2
    e904:	46062200 	add.s	$f8,$f4,$f6
    e908:	460a403c 	c.lt.s	$f8,$f10
    e90c:	00000000 	nop
    e910:	45000009 	bc1f	e938 <func_80B7825C+0x7c>
    e914:	00000000 	nop
    e918:	27a400f8 	addiu	a0,sp,248
    e91c:	00002825 	move	a1,zero
    e920:	24060001 	li	a2,1
    e924:	24070028 	li	a3,40
    e928:	0c000000 	jal	0 <func_80B699A0>
    e92c:	afa200e4 	sw	v0,228(sp)
    e930:	10000004 	b	e944 <func_80B7825C+0x88>
    e934:	87af00f8 	lh	t7,248(sp)
    e938:	0c000000 	jal	0 <func_80B699A0>
    e93c:	afa200e4 	sw	v0,228(sp)
    e940:	87af00f8 	lh	t7,248(sp)
    e944:	8fb800e4 	lw	t8,228(sp)
    e948:	a30f00c8 	sb	t7,200(t8)
    e94c:	8fa40128 	lw	a0,296(sp)
    e950:	0c000000 	jal	0 <func_80B699A0>
    e954:	248401d8 	addiu	a0,a0,472
    e958:	3c190000 	lui	t9,0x0
    e95c:	87390000 	lh	t9,0(t9)
    e960:	57200006 	bnezl	t9,e97c <func_80B7825C+0xc0>
    e964:	8fa20128 	lw	v0,296(sp)
    e968:	0c000000 	jal	0 <func_80B699A0>
    e96c:	260420d8 	addiu	a0,s0,8408
    e970:	10400007 	beqz	v0,e990 <func_80B7825C+0xd4>
    e974:	8fab0128 	lw	t3,296(sp)
    e978:	8fa20128 	lw	v0,296(sp)
    e97c:	2401fffe 	li	at,-2
    e980:	8c490004 	lw	t1,4(v0)
    e984:	01215024 	and	t2,t1,at
    e988:	10000005 	b	e9a0 <func_80B7825C+0xe4>
    e98c:	ac4a0004 	sw	t2,4(v0)
    e990:	8d6c0004 	lw	t4,4(t3)
    e994:	358d0021 	ori	t5,t4,0x21
    e998:	ad6d0004 	sw	t5,4(t3)
    e99c:	8fa20128 	lw	v0,296(sp)
    e9a0:	3c0142f0 	lui	at,0x42f0
    e9a4:	44813000 	mtc1	at,$f6
    e9a8:	c4440090 	lwc1	$f4,144(v0)
    e9ac:	4606203c 	c.lt.s	$f4,$f6
    e9b0:	00000000 	nop
    e9b4:	45030007 	bc1tl	e9d4 <func_80B7825C+0x118>
    e9b8:	844e00b6 	lh	t6,182(v0)
    e9bc:	0c000000 	jal	0 <func_80B699A0>
    e9c0:	260420d8 	addiu	a0,s0,8408
    e9c4:	10400008 	beqz	v0,e9e8 <func_80B7825C+0x12c>
    e9c8:	00002825 	move	a1,zero
    e9cc:	8fa20128 	lw	v0,296(sp)
    e9d0:	844e00b6 	lh	t6,182(v0)
    e9d4:	844f008a 	lh	t7,138(v0)
    e9d8:	01cf2823 	subu	a1,t6,t7
    e9dc:	00052c00 	sll	a1,a1,0x10
    e9e0:	10000002 	b	e9ec <func_80B7825C+0x130>
    e9e4:	00052c03 	sra	a1,a1,0x10
    e9e8:	8fa20128 	lw	v0,296(sp)
    e9ec:	28a12711 	slti	at,a1,10001
    e9f0:	14200003 	bnez	at,ea00 <func_80B7825C+0x144>
    e9f4:	24440164 	addiu	a0,v0,356
    e9f8:	10000005 	b	ea10 <func_80B7825C+0x154>
    e9fc:	24052710 	li	a1,10000
    ea00:	28a1d8f0 	slti	at,a1,-10000
    ea04:	50200003 	beqzl	at,ea14 <func_80B7825C+0x158>
    ea08:	24060003 	li	a2,3
    ea0c:	2405d8f0 	li	a1,-10000
    ea10:	24060003 	li	a2,3
    ea14:	0c000000 	jal	0 <func_80B699A0>
    ea18:	24071388 	li	a3,5000
    ea1c:	3c010001 	lui	at,0x1
    ea20:	0201c021 	addu	t8,s0,at
    ea24:	afb80028 	sw	t8,40(sp)
    ea28:	8f091de4 	lw	t1,7652(t8)
    ea2c:	312a001f 	andi	t2,t1,0x1f
    ea30:	5540000c 	bnezl	t2,ea64 <func_80B7825C+0x1a8>
    ea34:	8fab0128 	lw	t3,296(sp)
    ea38:	0c000000 	jal	0 <func_80B699A0>
    ea3c:	00000000 	nop
    ea40:	3c010000 	lui	at,0x0
    ea44:	c4280000 	lwc1	$f8,0(at)
    ea48:	8fad0128 	lw	t5,296(sp)
    ea4c:	4608003c 	c.lt.s	$f0,$f8
    ea50:	00000000 	nop
    ea54:	45000002 	bc1f	ea60 <func_80B7825C+0x1a4>
    ea58:	240c0004 	li	t4,4
    ea5c:	a5ac0162 	sh	t4,354(t5)
    ea60:	8fab0128 	lw	t3,296(sp)
    ea64:	3c0f0000 	lui	t7,0x0
    ea68:	3c030000 	lui	v1,0x0
    ea6c:	85620162 	lh	v0,354(t3)
    ea70:	24630000 	addiu	v1,v1,0
    ea74:	3c010000 	lui	at,0x0
    ea78:	00027040 	sll	t6,v0,0x1
    ea7c:	01ee7821 	addu	t7,t7,t6
    ea80:	85ef0000 	lh	t7,0(t7)
    ea84:	3c0c0000 	lui	t4,0x0
    ea88:	10400004 	beqz	v0,ea9c <func_80B7825C+0x1e0>
    ea8c:	a56f0160 	sh	t7,352(t3)
    ea90:	8fb90128 	lw	t9,296(sp)
    ea94:	2458ffff 	addiu	t8,v0,-1
    ea98:	a7380162 	sh	t8,354(t9)
    ea9c:	3c020000 	lui	v0,0x0
    eaa0:	84420000 	lh	v0,0(v0)
    eaa4:	10400002 	beqz	v0,eab0 <func_80B7825C+0x1f4>
    eaa8:	2449ffff 	addiu	t1,v0,-1
    eaac:	a4290000 	sh	t1,0(at)
    eab0:	906a0000 	lbu	t2,0(v1)
    eab4:	1540003a 	bnez	t2,eba0 <func_80B7825C+0x2e4>
    eab8:	00000000 	nop
    eabc:	918c0000 	lbu	t4,0(t4)
    eac0:	24010002 	li	at,2
    eac4:	3c0d0000 	lui	t5,0x0
    eac8:	11810035 	beq	t4,at,eba0 <func_80B7825C+0x2e4>
    eacc:	00000000 	nop
    ead0:	85ad0000 	lh	t5,0(t5)
    ead4:	3c070000 	lui	a3,0x0
    ead8:	24e70000 	addiu	a3,a3,0
    eadc:	19a00030 	blez	t5,eba0 <func_80B7825C+0x2e4>
    eae0:	00000000 	nop
    eae4:	90ee0000 	lbu	t6,0(a3)
    eae8:	24010001 	li	at,1
    eaec:	3c0f0000 	lui	t7,0x0
    eaf0:	15c1002b 	bne	t6,at,eba0 <func_80B7825C+0x2e4>
    eaf4:	00000000 	nop
    eaf8:	85ef0000 	lh	t7,0(t7)
    eafc:	3c020000 	lui	v0,0x0
    eb00:	24420000 	addiu	v0,v0,0
    eb04:	15e00026 	bnez	t7,eba0 <func_80B7825C+0x2e4>
    eb08:	3c010000 	lui	at,0x0
    eb0c:	c44a0000 	lwc1	$f10,0(v0)
    eb10:	c4240000 	lwc1	$f4,0(at)
    eb14:	c4460004 	lwc1	$f6,4(v0)
    eb18:	c4280000 	lwc1	$f8,0(at)
    eb1c:	46045081 	sub.s	$f2,$f10,$f4
    eb20:	3c010000 	lui	at,0x0
    eb24:	c4240000 	lwc1	$f4,0(at)
    eb28:	46083301 	sub.s	$f12,$f6,$f8
    eb2c:	46021182 	mul.s	$f6,$f2,$f2
    eb30:	c44a0008 	lwc1	$f10,8(v0)
    eb34:	3c0141c8 	lui	at,0x41c8
    eb38:	460c6202 	mul.s	$f8,$f12,$f12
    eb3c:	3c0b0000 	lui	t3,0x0
    eb40:	46045381 	sub.s	$f14,$f10,$f4
    eb44:	3c190000 	lui	t9,0x0
    eb48:	24090001 	li	t1,1
    eb4c:	02002025 	move	a0,s0
    eb50:	460e7102 	mul.s	$f4,$f14,$f14
    eb54:	46083280 	add.s	$f10,$f6,$f8
    eb58:	44813000 	mtc1	at,$f6
    eb5c:	46045000 	add.s	$f0,$f10,$f4
    eb60:	46000004 	sqrt.s	$f0,$f0
    eb64:	4606003c 	c.lt.s	$f0,$f6
    eb68:	00000000 	nop
    eb6c:	45010005 	bc1t	eb84 <func_80B7825C+0x2c8>
    eb70:	00000000 	nop
    eb74:	8d6b0000 	lw	t3,0(t3)
    eb78:	85780a6e 	lh	t8,2670(t3)
    eb7c:	1b000008 	blez	t8,eba0 <func_80B7825C+0x2e4>
    eb80:	00000000 	nop
    eb84:	8f390000 	lw	t9,0(t9)
    eb88:	24054087 	li	a1,16519
    eb8c:	00003025 	move	a2,zero
    eb90:	a7200a6e 	sh	zero,2670(t9)
    eb94:	a0e00000 	sb	zero,0(a3)
    eb98:	0c000000 	jal	0 <func_80B699A0>
    eb9c:	a0690000 	sb	t1,0(v1)
    eba0:	3c070000 	lui	a3,0x0
    eba4:	24e70000 	addiu	a3,a3,0
    eba8:	90e30000 	lbu	v1,0(a3)
    ebac:	3c020000 	lui	v0,0x0
    ebb0:	8c420000 	lw	v0,0(v0)
    ebb4:	14600007 	bnez	v1,ebd4 <func_80B7825C+0x318>
    ebb8:	24010001 	li	at,1
    ebbc:	3c0a0000 	lui	t2,0x0
    ebc0:	8d4a0ec0 	lw	t2,3776(t2)
    ebc4:	3c010000 	lui	at,0x0
    ebc8:	354c1000 	ori	t4,t2,0x1000
    ebcc:	10000008 	b	ebf0 <func_80B7825C+0x334>
    ebd0:	ac2c0ec0 	sw	t4,3776(at)
    ebd4:	14610006 	bne	v1,at,ebf0 <func_80B7825C+0x334>
    ebd8:	3c0d0000 	lui	t5,0x0
    ebdc:	8dad0ec0 	lw	t5,3776(t5)
    ebe0:	2401efff 	li	at,-4097
    ebe4:	01a17024 	and	t6,t5,at
    ebe8:	3c010000 	lui	at,0x0
    ebec:	ac2e0ec0 	sw	t6,3776(at)
    ebf0:	844f0a6e 	lh	t7,2670(v0)
    ebf4:	3c030000 	lui	v1,0x0
    ebf8:	24630000 	addiu	v1,v1,0
    ebfc:	05e10004 	bgez	t7,ec10 <func_80B7825C+0x354>
    ec00:	240b0001 	li	t3,1
    ec04:	a4400a6e 	sh	zero,2670(v0)
    ec08:	3c010000 	lui	at,0x0
    ec0c:	a02b0000 	sb	t3,0(at)
    ec10:	90620000 	lbu	v0,0(v1)
    ec14:	10400009 	beqz	v0,ec3c <func_80B7825C+0x380>
    ec18:	2458ffff 	addiu	t8,v0,-1
    ec1c:	331900ff 	andi	t9,t8,0xff
    ec20:	17200006 	bnez	t9,ec3c <func_80B7825C+0x380>
    ec24:	a0780000 	sb	t8,0(v1)
    ec28:	3c050000 	lui	a1,0x0
    ec2c:	94a50000 	lhu	a1,0(a1)
    ec30:	02002025 	move	a0,s0
    ec34:	0c000000 	jal	0 <func_80B699A0>
    ec38:	00003025 	move	a2,zero
    ec3c:	8fa40128 	lw	a0,296(sp)
    ec40:	0c000000 	jal	0 <func_80B699A0>
    ec44:	02002825 	move	a1,s0
    ec48:	3c010000 	lui	at,0x0
    ec4c:	c4280000 	lwc1	$f8,0(at)
    ec50:	3c090000 	lui	t1,0x0
    ec54:	8d290000 	lw	t1,0(t1)
    ec58:	3c0c0000 	lui	t4,0x0
    ec5c:	858c0000 	lh	t4,0(t4)
    ec60:	3c010000 	lui	at,0x0
    ec64:	e4280000 	swc1	$f8,0(at)
    ec68:	3c010000 	lui	at,0x0
    ec6c:	252a0001 	addiu	t2,t1,1
    ec70:	11800008 	beqz	t4,ec94 <func_80B7825C+0x3d8>
    ec74:	ac2a0000 	sw	t2,0(at)
    ec78:	3c0d0000 	lui	t5,0x0
    ec7c:	91ad0000 	lbu	t5,0(t5)
    ec80:	8fa40128 	lw	a0,296(sp)
    ec84:	51a00004 	beqzl	t5,ec98 <func_80B7825C+0x3dc>
    ec88:	8fae0028 	lw	t6,40(sp)
    ec8c:	0c000000 	jal	0 <func_80B699A0>
    ec90:	02002825 	move	a1,s0
    ec94:	8fae0028 	lw	t6,40(sp)
    ec98:	02002825 	move	a1,s0
    ec9c:	0c000000 	jal	0 <func_80B699A0>
    eca0:	8dc41e10 	lw	a0,7696(t6)
    eca4:	0c000000 	jal	0 <func_80B699A0>
    eca8:	02002025 	move	a0,s0
    ecac:	0c000000 	jal	0 <func_80B699A0>
    ecb0:	02002025 	move	a0,s0
    ecb4:	3c0f0000 	lui	t7,0x0
    ecb8:	85ef0000 	lh	t7,0(t7)
    ecbc:	3c040000 	lui	a0,0x0
    ecc0:	3c0b0000 	lui	t3,0x0
    ecc4:	11e00020 	beqz	t7,ed48 <func_80B7825C+0x48c>
    ecc8:	24840000 	addiu	a0,a0,0
    eccc:	916b0000 	lbu	t3,0(t3)
    ecd0:	8fa800e4 	lw	t0,228(sp)
    ecd4:	3c0144aa 	lui	at,0x44aa
    ecd8:	5560001c 	bnezl	t3,ed4c <func_80B7825C+0x490>
    ecdc:	90830000 	lbu	v1,0(a0)
    ece0:	44815000 	mtc1	at,$f10
    ece4:	c504002c 	lwc1	$f4,44(t0)
    ece8:	4604503c 	c.lt.s	$f10,$f4
    ecec:	00000000 	nop
    ecf0:	45020016 	bc1fl	ed4c <func_80B7825C+0x490>
    ecf4:	90830000 	lbu	v1,0(a0)
    ecf8:	c5000024 	lwc1	$f0,36(t0)
    ecfc:	3c0141c8 	lui	at,0x41c8
    ed00:	44813000 	mtc1	at,$f6
    ed04:	46000005 	abs.s	$f0,$f0
    ed08:	3c0144aa 	lui	at,0x44aa
    ed0c:	4606003c 	c.lt.s	$f0,$f6
    ed10:	00000000 	nop
    ed14:	4502000d 	bc1fl	ed4c <func_80B7825C+0x490>
    ed18:	90830000 	lbu	v1,0(a0)
    ed1c:	44814000 	mtc1	at,$f8
    ed20:	44805000 	mtc1	zero,$f10
    ed24:	3c180000 	lui	t8,0x0
    ed28:	e508002c 	swc1	$f8,44(t0)
    ed2c:	e50a0068 	swc1	$f10,104(t0)
    ed30:	93180000 	lbu	t8,0(t8)
    ed34:	3c010000 	lui	at,0x0
    ed38:	2419000a 	li	t9,10
    ed3c:	57000003 	bnezl	t8,ed4c <func_80B7825C+0x490>
    ed40:	90830000 	lbu	v1,0(a0)
    ed44:	a0390000 	sb	t9,0(at)
    ed48:	90830000 	lbu	v1,0(a0)
    ed4c:	8fa800e4 	lw	t0,228(sp)
    ed50:	3c0a0000 	lui	t2,0x0
    ed54:	10600038 	beqz	v1,ee38 <func_80B7825C+0x57c>
    ed58:	00034880 	sll	t1,v1,0x2
    ed5c:	01234823 	subu	t1,t1,v1
    ed60:	00094840 	sll	t1,t1,0x1
    ed64:	254a0000 	addiu	t2,t2,0
    ed68:	012a1021 	addu	v0,t1,t2
    ed6c:	844cfffa 	lh	t4,-6(v0)
    ed70:	c5040024 	lwc1	$f4,36(t0)
    ed74:	3c0141c8 	lui	at,0x41c8
    ed78:	448c3000 	mtc1	t4,$f6
    ed7c:	44815000 	mtc1	at,$f10
    ed80:	46803220 	cvt.s.w	$f8,$f6
    ed84:	46082001 	sub.s	$f0,$f4,$f8
    ed88:	46000005 	abs.s	$f0,$f0
    ed8c:	460a003c 	c.lt.s	$f0,$f10
    ed90:	00000000 	nop
    ed94:	45000028 	bc1f	ee38 <func_80B7825C+0x57c>
    ed98:	00000000 	nop
    ed9c:	844dfffc 	lh	t5,-4(v0)
    eda0:	c5060028 	lwc1	$f6,40(t0)
    eda4:	3c014120 	lui	at,0x4120
    eda8:	448d2000 	mtc1	t5,$f4
    edac:	44815000 	mtc1	at,$f10
    edb0:	46802220 	cvt.s.w	$f8,$f4
    edb4:	46083001 	sub.s	$f0,$f6,$f8
    edb8:	46000005 	abs.s	$f0,$f0
    edbc:	460a003c 	c.lt.s	$f0,$f10
    edc0:	00000000 	nop
    edc4:	4500001c 	bc1f	ee38 <func_80B7825C+0x57c>
    edc8:	00000000 	nop
    edcc:	844efffe 	lh	t6,-2(v0)
    edd0:	c504002c 	lwc1	$f4,44(t0)
    edd4:	3c0141c8 	lui	at,0x41c8
    edd8:	448e3000 	mtc1	t6,$f6
    eddc:	44815000 	mtc1	at,$f10
    ede0:	3c010000 	lui	at,0x0
    ede4:	46803220 	cvt.s.w	$f8,$f6
    ede8:	240f0014 	li	t7,20
    edec:	2406000a 	li	a2,10
    edf0:	2407000a 	li	a3,10
    edf4:	46082001 	sub.s	$f0,$f4,$f8
    edf8:	46000005 	abs.s	$f0,$f0
    edfc:	460a003c 	c.lt.s	$f0,$f10
    ee00:	00000000 	nop
    ee04:	4500000c 	bc1f	ee38 <func_80B7825C+0x57c>
    ee08:	00000000 	nop
    ee0c:	a0800000 	sb	zero,0(a0)
    ee10:	44806000 	mtc1	zero,$f12
    ee14:	a02f0000 	sb	t7,0(at)
    ee18:	0c000000 	jal	0 <func_80B699A0>
    ee1c:	24050096 	li	a1,150
    ee20:	0c000000 	jal	0 <func_80B699A0>
    ee24:	24044807 	li	a0,18439
    ee28:	3c041014 	lui	a0,0x1014
    ee2c:	0c000000 	jal	0 <func_80B699A0>
    ee30:	348400ff 	ori	a0,a0,0xff
    ee34:	8fa800e4 	lw	t0,228(sp)
    ee38:	3c020000 	lui	v0,0x0
    ee3c:	8c420000 	lw	v0,0(v0)
    ee40:	3c010000 	lui	at,0x0
    ee44:	24180014 	li	t8,20
    ee48:	844b09d4 	lh	t3,2516(v0)
    ee4c:	2406000a 	li	a2,10
    ee50:	2407000a 	li	a3,10
    ee54:	1160000e 	beqz	t3,ee90 <func_80B7825C+0x5d4>
    ee58:	00000000 	nop
    ee5c:	a44009d4 	sh	zero,2516(v0)
    ee60:	a0200000 	sb	zero,0(at)
    ee64:	3c010000 	lui	at,0x0
    ee68:	44806000 	mtc1	zero,$f12
    ee6c:	a0380000 	sb	t8,0(at)
    ee70:	0c000000 	jal	0 <func_80B699A0>
    ee74:	24050096 	li	a1,150
    ee78:	0c000000 	jal	0 <func_80B699A0>
    ee7c:	24044807 	li	a0,18439
    ee80:	3c041014 	lui	a0,0x1014
    ee84:	0c000000 	jal	0 <func_80B699A0>
    ee88:	348400ff 	ori	a0,a0,0xff
    ee8c:	8fa800e4 	lw	t0,228(sp)
    ee90:	3c020000 	lui	v0,0x0
    ee94:	90420000 	lbu	v0,0(v0)
    ee98:	3c030000 	lui	v1,0x0
    ee9c:	90630000 	lbu	v1,0(v1)
    eea0:	10400003 	beqz	v0,eeb0 <func_80B7825C+0x5f4>
    eea4:	2459ffff 	addiu	t9,v0,-1
    eea8:	3c010000 	lui	at,0x0
    eeac:	a0390000 	sb	t9,0(at)
    eeb0:	28610017 	slti	at,v1,23
    eeb4:	14200006 	bnez	at,eed0 <func_80B7825C+0x614>
    eeb8:	00601025 	move	v0,v1
    eebc:	24010064 	li	at,100
    eec0:	1061033e 	beq	v1,at,fbbc <L80B7955C>
    eec4:	00000000 	nop
    eec8:	1000033c 	b	fbbc <L80B7955C>
    eecc:	00000000 	nop
    eed0:	2c410017 	sltiu	at,v0,23
    eed4:	10200339 	beqz	at,fbbc <L80B7955C>
    eed8:	00024880 	sll	t1,v0,0x2
    eedc:	3c010000 	lui	at,0x0
    eee0:	00290821 	addu	at,at,t1
    eee4:	8c290000 	lw	t1,0(at)
    eee8:	01200008 	jr	t1
    eeec:	00000000 	nop

0000eef0 <L80B78890>:
    eef0:	0c000000 	jal	0 <func_80B699A0>
    eef4:	02002025 	move	a0,s0
    eef8:	3c010000 	lui	at,0x0
    eefc:	a4220000 	sh	v0,0(at)
    ef00:	02002025 	move	a0,s0
    ef04:	00002825 	move	a1,zero
    ef08:	0c000000 	jal	0 <func_80B699A0>
    ef0c:	24060001 	li	a2,1
    ef10:	3c050000 	lui	a1,0x0
    ef14:	84a50000 	lh	a1,0(a1)
    ef18:	02002025 	move	a0,s0
    ef1c:	0c000000 	jal	0 <func_80B699A0>
    ef20:	24060007 	li	a2,7
    ef24:	02002025 	move	a0,s0
    ef28:	0c000000 	jal	0 <func_80B699A0>
    ef2c:	00002825 	move	a1,zero
    ef30:	c446005c 	lwc1	$f6,92(v0)
    ef34:	3c010000 	lui	at,0x0
    ef38:	240a0002 	li	t2,2
    ef3c:	e4260000 	swc1	$f6,0(at)
    ef40:	c4440060 	lwc1	$f4,96(v0)
    ef44:	2404000c 	li	a0,12
    ef48:	e4240000 	swc1	$f4,0(at)
    ef4c:	c4480064 	lwc1	$f8,100(v0)
    ef50:	3c010000 	lui	at,0x0
    ef54:	e4280000 	swc1	$f8,0(at)
    ef58:	c44a0050 	lwc1	$f10,80(v0)
    ef5c:	3c010000 	lui	at,0x0
    ef60:	e42a0000 	swc1	$f10,0(at)
    ef64:	c4460054 	lwc1	$f6,84(v0)
    ef68:	e4260000 	swc1	$f6,0(at)
    ef6c:	c4440058 	lwc1	$f4,88(v0)
    ef70:	3c010000 	lui	at,0x0
    ef74:	e4240000 	swc1	$f4,0(at)
    ef78:	3c010000 	lui	at,0x0
    ef7c:	0c000000 	jal	0 <func_80B699A0>
    ef80:	a02a0000 	sb	t2,0(at)
    ef84:	44804000 	mtc1	zero,$f8
    ef88:	3c010000 	lui	at,0x0
    ef8c:	e4280000 	swc1	$f8,0(at)

0000ef90 <L80B78930>:
    ef90:	0c000000 	jal	0 <func_80B699A0>
    ef94:	2404001b 	li	a0,27
    ef98:	8fac00e4 	lw	t4,228(sp)
    ef9c:	3c020000 	lui	v0,0x0
    efa0:	24420000 	addiu	v0,v0,0
    efa4:	c44a0000 	lwc1	$f10,0(v0)
    efa8:	c5860024 	lwc1	$f6,36(t4)
    efac:	c4480008 	lwc1	$f8,8(v0)
    efb0:	46065101 	sub.s	$f4,$f10,$f6
    efb4:	e7a400fc 	swc1	$f4,252(sp)
    efb8:	c58a002c 	lwc1	$f10,44(t4)
    efbc:	c7ae00fc 	lwc1	$f14,252(sp)
    efc0:	460a4181 	sub.s	$f6,$f8,$f10
    efc4:	460e7202 	mul.s	$f8,$f14,$f14
    efc8:	e7a60104 	swc1	$f6,260(sp)
    efcc:	c7ac0104 	lwc1	$f12,260(sp)
    efd0:	460c6182 	mul.s	$f6,$f12,$f12
    efd4:	46064000 	add.s	$f0,$f8,$f6
    efd8:	46000004 	sqrt.s	$f0,$f0
    efdc:	0c000000 	jal	0 <func_80B699A0>
    efe0:	e7a000ec 	swc1	$f0,236(sp)
    efe4:	46000306 	mov.s	$f12,$f0
    efe8:	0c000000 	jal	0 <func_80B699A0>
    efec:	00002825 	move	a1,zero
    eff0:	3c0142c8 	lui	at,0x42c8
    eff4:	44804000 	mtc1	zero,$f8
    eff8:	44801000 	mtc1	zero,$f2
    effc:	44813000 	mtc1	at,$f6
    f000:	27a40114 	addiu	a0,sp,276
    f004:	27a500fc 	addiu	a1,sp,252
    f008:	e7a80114 	swc1	$f8,276(sp)
    f00c:	e7a20118 	swc1	$f2,280(sp)
    f010:	0c000000 	jal	0 <func_80B699A0>
    f014:	e7a6011c 	swc1	$f6,284(sp)
    f018:	3c0d0000 	lui	t5,0x0
    f01c:	85ad0000 	lh	t5,0(t5)
    f020:	24010001 	li	at,1
    f024:	c7ae00fc 	lwc1	$f14,252(sp)
    f028:	15a10003 	bne	t5,at,f038 <L80B78930+0xa8>
    f02c:	3c010000 	lui	at,0x0
    f030:	10000003 	b	f040 <L80B78930+0xb0>
    f034:	c4220000 	lwc1	$f2,0(at)
    f038:	3c010000 	lui	at,0x0
    f03c:	c4220000 	lwc1	$f2,0(at)
    f040:	3c010000 	lui	at,0x0
    f044:	c42a0000 	lwc1	$f10,0(at)
    f048:	46007005 	abs.s	$f0,$f14
    f04c:	3c040000 	lui	a0,0x0
    f050:	460a0102 	mul.s	$f4,$f0,$f10
    f054:	3c050000 	lui	a1,0x0
    f058:	44061000 	mfc1	a2,$f2
    f05c:	8ca50000 	lw	a1,0(a1)
    f060:	24840000 	addiu	a0,a0,0
    f064:	e7a200f0 	swc1	$f2,240(sp)
    f068:	44072000 	mfc1	a3,$f4
    f06c:	0c000000 	jal	0 <func_80B699A0>
    f070:	00000000 	nop
    f074:	3c014248 	lui	at,0x4248
    f078:	44814000 	mtc1	at,$f8
    f07c:	3c010000 	lui	at,0x0
    f080:	c4260000 	lwc1	$f6,0(at)
    f084:	c7a200f0 	lwc1	$f2,240(sp)
    f088:	3c040000 	lui	a0,0x0
    f08c:	46064282 	mul.s	$f10,$f8,$f6
    f090:	3c050000 	lui	a1,0x0
    f094:	44061000 	mfc1	a2,$f2
    f098:	8ca50000 	lw	a1,0(a1)
    f09c:	24840000 	addiu	a0,a0,0
    f0a0:	44075000 	mfc1	a3,$f10
    f0a4:	0c000000 	jal	0 <func_80B699A0>
    f0a8:	00000000 	nop
    f0ac:	c7b00104 	lwc1	$f16,260(sp)
    f0b0:	3c010000 	lui	at,0x0
    f0b4:	c4240000 	lwc1	$f4,0(at)
    f0b8:	46008005 	abs.s	$f0,$f16
    f0bc:	c7a200f0 	lwc1	$f2,240(sp)
    f0c0:	46040202 	mul.s	$f8,$f0,$f4
    f0c4:	3c040000 	lui	a0,0x0
    f0c8:	3c050000 	lui	a1,0x0
    f0cc:	44061000 	mfc1	a2,$f2
    f0d0:	8ca50000 	lw	a1,0(a1)
    f0d4:	24840000 	addiu	a0,a0,0
    f0d8:	44074000 	mfc1	a3,$f8
    f0dc:	0c000000 	jal	0 <func_80B699A0>
    f0e0:	00000000 	nop
    f0e4:	3c010000 	lui	at,0x0
    f0e8:	c42a0000 	lwc1	$f10,0(at)
    f0ec:	44803000 	mtc1	zero,$f6
    f0f0:	3c0e0000 	lui	t6,0x0
    f0f4:	91ce0000 	lbu	t6,0(t6)
    f0f8:	460a3101 	sub.s	$f4,$f6,$f10
    f0fc:	24010001 	li	at,1
    f100:	27a40114 	addiu	a0,sp,276
    f104:	11c10005 	beq	t6,at,f11c <L80B78930+0x18c>
    f108:	e7a40114 	swc1	$f4,276(sp)
    f10c:	3c0142a0 	lui	at,0x42a0
    f110:	44811000 	mtc1	at,$f2
    f114:	10000005 	b	f12c <L80B78930+0x19c>
    f118:	e7a20118 	swc1	$f2,280(sp)
    f11c:	3c01425c 	lui	at,0x425c
    f120:	44811000 	mtc1	at,$f2
    f124:	00000000 	nop
    f128:	e7a20118 	swc1	$f2,280(sp)
    f12c:	3c01c2a0 	lui	at,0xc2a0
    f130:	44814000 	mtc1	at,$f8
    f134:	27a50108 	addiu	a1,sp,264
    f138:	0c000000 	jal	0 <func_80B699A0>
    f13c:	e7a8011c 	swc1	$f8,284(sp)
    f140:	8faf00e4 	lw	t7,228(sp)
    f144:	c7a60108 	lwc1	$f6,264(sp)
    f148:	c7a8010c 	lwc1	$f8,268(sp)
    f14c:	c5ea0024 	lwc1	$f10,36(t7)
    f150:	3c040000 	lui	a0,0x0
    f154:	3c063dcc 	lui	a2,0x3dcc
    f158:	460a3100 	add.s	$f4,$f6,$f10
    f15c:	3c073ecc 	lui	a3,0x3ecc
    f160:	34e7cccd 	ori	a3,a3,0xcccd
    f164:	34c6cccd 	ori	a2,a2,0xcccd
    f168:	e7a40108 	swc1	$f4,264(sp)
    f16c:	c5e60028 	lwc1	$f6,40(t7)
    f170:	c7a40110 	lwc1	$f4,272(sp)
    f174:	24840000 	addiu	a0,a0,0
    f178:	46064280 	add.s	$f10,$f8,$f6
    f17c:	3c0541f0 	lui	a1,0x41f0
    f180:	e7aa010c 	swc1	$f10,268(sp)
    f184:	c5e8002c 	lwc1	$f8,44(t7)
    f188:	46082180 	add.s	$f6,$f4,$f8
    f18c:	0c000000 	jal	0 <func_80B699A0>
    f190:	e7a60110 	swc1	$f6,272(sp)
    f194:	960b0020 	lhu	t3,32(s0)
    f198:	2401dfff 	li	at,-8193
    f19c:	3c030000 	lui	v1,0x0
    f1a0:	0161c027 	nor	t8,t3,at
    f1a4:	1700001a 	bnez	t8,f210 <L80B78930+0x280>
    f1a8:	24630000 	addiu	v1,v1,0
    f1ac:	80620000 	lb	v0,0(v1)
    f1b0:	3c190000 	lui	t9,0x0
    f1b4:	04400016 	bltz	v0,f210 <L80B78930+0x280>
    f1b8:	00000000 	nop
    f1bc:	87390000 	lh	t9,0(t9)
    f1c0:	24490001 	addiu	t1,v0,1
    f1c4:	17200012 	bnez	t9,f210 <L80B78930+0x280>
    f1c8:	00000000 	nop
    f1cc:	a0690000 	sb	t1,0(v1)
    f1d0:	80620000 	lb	v0,0(v1)
    f1d4:	28410004 	slti	at,v0,4
    f1d8:	14200003 	bnez	at,f1e8 <L80B78930+0x258>
    f1dc:	00000000 	nop
    f1e0:	a0600000 	sb	zero,0(v1)
    f1e4:	80620000 	lb	v0,0(v1)
    f1e8:	10400003 	beqz	v0,f1f8 <L80B78930+0x268>
    f1ec:	24010003 	li	at,3
    f1f0:	14410005 	bne	v0,at,f208 <L80B78930+0x278>
    f1f4:	00000000 	nop
    f1f8:	0c000000 	jal	0 <func_80B699A0>
    f1fc:	24044814 	li	a0,18452
    f200:	10000003 	b	f210 <L80B78930+0x280>
    f204:	00000000 	nop
    f208:	0c000000 	jal	0 <func_80B699A0>
    f20c:	24044813 	li	a0,18451
    f210:	3c0a0000 	lui	t2,0x0
    f214:	854a0000 	lh	t2,0(t2)
    f218:	3c030000 	lui	v1,0x0
    f21c:	24630000 	addiu	v1,v1,0
    f220:	29410003 	slti	at,t2,3
    f224:	14200016 	bnez	at,f280 <L80B78930+0x2f0>
    f228:	27a40114 	addiu	a0,sp,276
    f22c:	3c0142dc 	lui	at,0x42dc
    f230:	c7a000ec 	lwc1	$f0,236(sp)
    f234:	44815000 	mtc1	at,$f10
    f238:	240cffff 	li	t4,-1
    f23c:	3c014396 	lui	at,0x4396
    f240:	460a003c 	c.lt.s	$f0,$f10
    f244:	00000000 	nop
    f248:	45020004 	bc1fl	f25c <L80B78930+0x2cc>
    f24c:	44812000 	mtc1	at,$f4
    f250:	1000000b 	b	f280 <L80B78930+0x2f0>
    f254:	a06c0000 	sb	t4,0(v1)
    f258:	44812000 	mtc1	at,$f4
    f25c:	00000000 	nop
    f260:	4600203c 	c.lt.s	$f4,$f0
    f264:	00000000 	nop
    f268:	45020006 	bc1fl	f284 <L80B78930+0x2f4>
    f26c:	80620000 	lb	v0,0(v1)
    f270:	806d0000 	lb	t5,0(v1)
    f274:	05a30003 	bgezl	t5,f284 <L80B78930+0x2f4>
    f278:	80620000 	lb	v0,0(v1)
    f27c:	a0600000 	sb	zero,0(v1)
    f280:	80620000 	lb	v0,0(v1)
    f284:	c7ae00fc 	lwc1	$f14,252(sp)
    f288:	c7b00104 	lwc1	$f16,260(sp)
    f28c:	1840003a 	blez	v0,f378 <L80B78930+0x3e8>
    f290:	27a500fc 	addiu	a1,sp,252
    f294:	460e7202 	mul.s	$f8,$f14,$f14
    f298:	3c010000 	lui	at,0x0
    f29c:	c42a0000 	lwc1	$f10,0(at)
    f2a0:	46108182 	mul.s	$f6,$f16,$f16
    f2a4:	3c013f80 	lui	at,0x3f80
    f2a8:	44812000 	mtc1	at,$f4
    f2ac:	3c013f80 	lui	at,0x3f80
    f2b0:	46064000 	add.s	$f0,$f8,$f6
    f2b4:	46000004 	sqrt.s	$f0,$f0
    f2b8:	460a0302 	mul.s	$f12,$f0,$f10
    f2bc:	460c203c 	c.lt.s	$f4,$f12
    f2c0:	00000000 	nop
    f2c4:	45020004 	bc1fl	f2d8 <L80B78930+0x348>
    f2c8:	24010002 	li	at,2
    f2cc:	44816000 	mtc1	at,$f12
    f2d0:	00000000 	nop
    f2d4:	24010002 	li	at,2
    f2d8:	14410003 	bne	v0,at,f2e8 <L80B78930+0x358>
    f2dc:	3c010000 	lui	at,0x0
    f2e0:	10000003 	b	f2f0 <L80B78930+0x360>
    f2e4:	c4220000 	lwc1	$f2,0(at)
    f2e8:	3c010000 	lui	at,0x0
    f2ec:	c4220000 	lwc1	$f2,0(at)
    f2f0:	3c010000 	lui	at,0x0
    f2f4:	c4280000 	lwc1	$f8,0(at)
    f2f8:	3c010000 	lui	at,0x0
    f2fc:	c42a0000 	lwc1	$f10,0(at)
    f300:	46024180 	add.s	$f6,$f8,$f2
    f304:	3c010000 	lui	at,0x0
    f308:	460a6102 	mul.s	$f4,$f12,$f10
    f30c:	c7b00108 	lwc1	$f16,264(sp)
    f310:	c4280000 	lwc1	$f8,0(at)
    f314:	c7ae010c 	lwc1	$f14,268(sp)
    f318:	c7b20110 	lwc1	$f18,272(sp)
    f31c:	46104281 	sub.s	$f10,$f8,$f16
    f320:	46043000 	add.s	$f0,$f6,$f4
    f324:	c4240000 	lwc1	$f4,0(at)
    f328:	3c0141a0 	lui	at,0x41a0
    f32c:	46005182 	mul.s	$f6,$f10,$f0
    f330:	460e2201 	sub.s	$f8,$f4,$f14
    f334:	46004282 	mul.s	$f10,$f8,$f0
    f338:	46068400 	add.s	$f16,$f16,$f6
    f33c:	44813000 	mtc1	at,$f6
    f340:	3c010000 	lui	at,0x0
    f344:	c4280000 	lwc1	$f8,0(at)
    f348:	3c010000 	lui	at,0x0
    f34c:	46065100 	add.s	$f4,$f10,$f6
    f350:	e7b00108 	swc1	$f16,264(sp)
    f354:	46124281 	sub.s	$f10,$f8,$f18
    f358:	46047380 	add.s	$f14,$f14,$f4
    f35c:	46005182 	mul.s	$f6,$f10,$f0
    f360:	c4240000 	lwc1	$f4,0(at)
    f364:	3c010000 	lui	at,0x0
    f368:	e7ae010c 	swc1	$f14,268(sp)
    f36c:	e4240000 	swc1	$f4,0(at)
    f370:	46069480 	add.s	$f18,$f18,$f6
    f374:	e7b20110 	swc1	$f18,272(sp)
    f378:	3c0142c8 	lui	at,0x42c8
    f37c:	44804000 	mtc1	zero,$f8
    f380:	44801000 	mtc1	zero,$f2
    f384:	44815000 	mtc1	at,$f10
    f388:	e7a80114 	swc1	$f8,276(sp)
    f38c:	e7a20118 	swc1	$f2,280(sp)
    f390:	0c000000 	jal	0 <func_80B699A0>
    f394:	e7aa011c 	swc1	$f10,284(sp)
    f398:	c7ae00fc 	lwc1	$f14,252(sp)
    f39c:	3c010000 	lui	at,0x0
    f3a0:	c4260000 	lwc1	$f6,0(at)
    f3a4:	46007005 	abs.s	$f0,$f14
    f3a8:	c7b00108 	lwc1	$f16,264(sp)
    f3ac:	46060102 	mul.s	$f4,$f0,$f6
    f3b0:	3c040000 	lui	a0,0x0
    f3b4:	3c063e99 	lui	a2,0x3e99
    f3b8:	44058000 	mfc1	a1,$f16
    f3bc:	34c6999a 	ori	a2,a2,0x999a
    f3c0:	24840000 	addiu	a0,a0,0
    f3c4:	44072000 	mfc1	a3,$f4
    f3c8:	0c000000 	jal	0 <func_80B699A0>
    f3cc:	00000000 	nop
    f3d0:	3c0141a0 	lui	at,0x41a0
    f3d4:	44814000 	mtc1	at,$f8
    f3d8:	3c010000 	lui	at,0x0
    f3dc:	c42a0000 	lwc1	$f10,0(at)
    f3e0:	c7ae010c 	lwc1	$f14,268(sp)
    f3e4:	3c040000 	lui	a0,0x0
    f3e8:	460a4182 	mul.s	$f6,$f8,$f10
    f3ec:	3c063e99 	lui	a2,0x3e99
    f3f0:	44057000 	mfc1	a1,$f14
    f3f4:	34c6999a 	ori	a2,a2,0x999a
    f3f8:	24840000 	addiu	a0,a0,0
    f3fc:	44073000 	mfc1	a3,$f6
    f400:	0c000000 	jal	0 <func_80B699A0>
    f404:	00000000 	nop
    f408:	c7b00104 	lwc1	$f16,260(sp)
    f40c:	3c010000 	lui	at,0x0
    f410:	c4240000 	lwc1	$f4,0(at)
    f414:	46008005 	abs.s	$f0,$f16
    f418:	c7b20110 	lwc1	$f18,272(sp)
    f41c:	46040202 	mul.s	$f8,$f0,$f4
    f420:	3c040000 	lui	a0,0x0
    f424:	3c063e99 	lui	a2,0x3e99
    f428:	44059000 	mfc1	a1,$f18
    f42c:	34c6999a 	ori	a2,a2,0x999a
    f430:	24840000 	addiu	a0,a0,0
    f434:	44074000 	mfc1	a3,$f8
    f438:	0c000000 	jal	0 <func_80B699A0>
    f43c:	00000000 	nop
    f440:	100001de 	b	fbbc <L80B7955C>
    f444:	8fa800e4 	lw	t0,228(sp)

0000f448 <L80B78DE8>:
    f448:	02002025 	move	a0,s0
    f44c:	0c000000 	jal	0 <func_80B699A0>
    f450:	00002825 	move	a1,zero
    f454:	3c0e0000 	lui	t6,0x0
    f458:	25ce0000 	addiu	t6,t6,0
    f45c:	8dcb0000 	lw	t3,0(t6)
    f460:	3c180000 	lui	t8,0x0
    f464:	27180000 	addiu	t8,t8,0
    f468:	ac4b005c 	sw	t3,92(v0)
    f46c:	8dcf0004 	lw	t7,4(t6)
    f470:	3c0a0000 	lui	t2,0x0
    f474:	254a0000 	addiu	t2,t2,0
    f478:	ac4f0060 	sw	t7,96(v0)
    f47c:	8dcb0008 	lw	t3,8(t6)
    f480:	3c050000 	lui	a1,0x0
    f484:	02002025 	move	a0,s0
    f488:	ac4b0064 	sw	t3,100(v0)
    f48c:	8f090000 	lw	t1,0(t8)
    f490:	00003025 	move	a2,zero
    f494:	ac490074 	sw	t1,116(v0)
    f498:	8f190004 	lw	t9,4(t8)
    f49c:	ac590078 	sw	t9,120(v0)
    f4a0:	8f090008 	lw	t1,8(t8)
    f4a4:	ac49007c 	sw	t1,124(v0)
    f4a8:	8d4d0000 	lw	t5,0(t2)
    f4ac:	ac4d0050 	sw	t5,80(v0)
    f4b0:	8d4c0004 	lw	t4,4(t2)
    f4b4:	ac4c0054 	sw	t4,84(v0)
    f4b8:	8d4d0008 	lw	t5,8(t2)
    f4bc:	ac4d0058 	sw	t5,88(v0)
    f4c0:	0c000000 	jal	0 <func_80B699A0>
    f4c4:	84a50000 	lh	a1,0(a1)
    f4c8:	02002025 	move	a0,s0
    f4cc:	0c000000 	jal	0 <func_80B699A0>
    f4d0:	26051d64 	addiu	a1,s0,7524
    f4d4:	3c010000 	lui	at,0x0
    f4d8:	a0200000 	sb	zero,0(at)
    f4dc:	3c010000 	lui	at,0x0
    f4e0:	a4200000 	sh	zero,0(at)
    f4e4:	02002025 	move	a0,s0
    f4e8:	0c000000 	jal	0 <func_80B699A0>
    f4ec:	00002825 	move	a1,zero
    f4f0:	3c010001 	lui	at,0x1
    f4f4:	00300821 	addu	at,at,s0
    f4f8:	a4200ac2 	sh	zero,2754(at)
    f4fc:	8faf00e4 	lw	t7,228(sp)
    f500:	240efffb 	li	t6,-5
    f504:	3c010000 	lui	at,0x0
    f508:	240b0005 	li	t3,5
    f50c:	a5ee0860 	sh	t6,2144(t7)
    f510:	a42b0000 	sh	t3,0(at)
    f514:	100001a9 	b	fbbc <L80B7955C>
    f518:	8fa800e4 	lw	t0,228(sp)

0000f51c <L80B78EBC>:
    f51c:	02002025 	move	a0,s0
    f520:	0c000000 	jal	0 <func_80B699A0>
    f524:	26051d64 	addiu	a1,s0,7524
    f528:	0c000000 	jal	0 <func_80B699A0>
    f52c:	02002025 	move	a0,s0
    f530:	3c010000 	lui	at,0x0
    f534:	a4220000 	sh	v0,0(at)
    f538:	02002025 	move	a0,s0
    f53c:	00002825 	move	a1,zero
    f540:	0c000000 	jal	0 <func_80B699A0>
    f544:	24060001 	li	a2,1
    f548:	3c050000 	lui	a1,0x0
    f54c:	84a50000 	lh	a1,0(a1)
    f550:	02002025 	move	a0,s0
    f554:	0c000000 	jal	0 <func_80B699A0>
    f558:	24060007 	li	a2,7
    f55c:	02002025 	move	a0,s0
    f560:	8fa50128 	lw	a1,296(sp)
    f564:	0c000000 	jal	0 <func_80B699A0>
    f568:	24060005 	li	a2,5
    f56c:	02002025 	move	a0,s0
    f570:	0c000000 	jal	0 <func_80B699A0>
    f574:	00002825 	move	a1,zero
    f578:	c44a005c 	lwc1	$f10,92(v0)
    f57c:	3c010000 	lui	at,0x0
    f580:	02002025 	move	a0,s0
    f584:	e42a0000 	swc1	$f10,0(at)
    f588:	c4460060 	lwc1	$f6,96(v0)
    f58c:	2405409e 	li	a1,16542
    f590:	00003025 	move	a2,zero
    f594:	e4260000 	swc1	$f6,0(at)
    f598:	c4440064 	lwc1	$f4,100(v0)
    f59c:	3c010000 	lui	at,0x0
    f5a0:	e4240000 	swc1	$f4,0(at)
    f5a4:	c4480050 	lwc1	$f8,80(v0)
    f5a8:	3c010000 	lui	at,0x0
    f5ac:	e4280000 	swc1	$f8,0(at)
    f5b0:	c44a0054 	lwc1	$f10,84(v0)
    f5b4:	e42a0000 	swc1	$f10,0(at)
    f5b8:	c4460058 	lwc1	$f6,88(v0)
    f5bc:	3c010000 	lui	at,0x0
    f5c0:	0c000000 	jal	0 <func_80B699A0>
    f5c4:	e4260000 	swc1	$f6,0(at)
    f5c8:	2418000b 	li	t8,11
    f5cc:	3c010000 	lui	at,0x0
    f5d0:	44806000 	mtc1	zero,$f12
    f5d4:	a0380000 	sb	t8,0(at)
    f5d8:	24050096 	li	a1,150
    f5dc:	2406000a 	li	a2,10
    f5e0:	0c000000 	jal	0 <func_80B699A0>
    f5e4:	2407000a 	li	a3,10
    f5e8:	8fa800e4 	lw	t0,228(sp)

0000f5ec <L80B78F8C>:
    f5ec:	3c0144aa 	lui	at,0x44aa
    f5f0:	44812000 	mtc1	at,$f4
    f5f4:	44804000 	mtc1	zero,$f8
    f5f8:	260420d8 	addiu	a0,s0,8408
    f5fc:	e504002c 	swc1	$f4,44(t0)
    f600:	0c000000 	jal	0 <func_80B699A0>
    f604:	e5080068 	swc1	$f8,104(t0)
    f608:	14400034 	bnez	v0,f6dc <L80B78F8C+0xf0>
    f60c:	02002025 	move	a0,s0
    f610:	26191d64 	addiu	t9,s0,7524
    f614:	afb90038 	sw	t9,56(sp)
    f618:	0c000000 	jal	0 <func_80B699A0>
    f61c:	00002825 	move	a1,zero
    f620:	3c030000 	lui	v1,0x0
    f624:	24630000 	addiu	v1,v1,0
    f628:	8c6a0000 	lw	t2,0(v1)
    f62c:	3c0e0000 	lui	t6,0x0
    f630:	25ce0000 	addiu	t6,t6,0
    f634:	ac4a005c 	sw	t2,92(v0)
    f638:	8c690004 	lw	t1,4(v1)
    f63c:	3c050000 	lui	a1,0x0
    f640:	02002025 	move	a0,s0
    f644:	ac490060 	sw	t1,96(v0)
    f648:	8c6a0008 	lw	t2,8(v1)
    f64c:	00003025 	move	a2,zero
    f650:	ac4a0064 	sw	t2,100(v0)
    f654:	8c6d0000 	lw	t5,0(v1)
    f658:	ac4d0074 	sw	t5,116(v0)
    f65c:	8c6c0004 	lw	t4,4(v1)
    f660:	ac4c0078 	sw	t4,120(v0)
    f664:	8c6d0008 	lw	t5,8(v1)
    f668:	ac4d007c 	sw	t5,124(v0)
    f66c:	8dcb0000 	lw	t3,0(t6)
    f670:	ac4b0050 	sw	t3,80(v0)
    f674:	8dcf0004 	lw	t7,4(t6)
    f678:	ac4f0054 	sw	t7,84(v0)
    f67c:	8dcb0008 	lw	t3,8(t6)
    f680:	ac4b0058 	sw	t3,88(v0)
    f684:	0c000000 	jal	0 <func_80B699A0>
    f688:	84a50000 	lh	a1,0(a1)
    f68c:	02002025 	move	a0,s0
    f690:	0c000000 	jal	0 <func_80B699A0>
    f694:	8fa50038 	lw	a1,56(sp)
    f698:	02002025 	move	a0,s0
    f69c:	8fa50128 	lw	a1,296(sp)
    f6a0:	0c000000 	jal	0 <func_80B699A0>
    f6a4:	24060007 	li	a2,7
    f6a8:	3c010000 	lui	at,0x0
    f6ac:	a0200000 	sb	zero,0(at)
    f6b0:	3c010000 	lui	at,0x0
    f6b4:	a4200000 	sh	zero,0(at)
    f6b8:	3c010000 	lui	at,0x0
    f6bc:	2418001e 	li	t8,30
    f6c0:	a0380000 	sb	t8,0(at)
    f6c4:	02002025 	move	a0,s0
    f6c8:	0c000000 	jal	0 <func_80B699A0>
    f6cc:	00002825 	move	a1,zero
    f6d0:	3c010001 	lui	at,0x1
    f6d4:	00300821 	addu	at,at,s0
    f6d8:	a4200ac2 	sh	zero,2754(at)
    f6dc:	10000137 	b	fbbc <L80B7955C>
    f6e0:	8fa800e4 	lw	t0,228(sp)

0000f6e4 <L80B79084>:
    f6e4:	02002025 	move	a0,s0
    f6e8:	0c000000 	jal	0 <func_80B699A0>
    f6ec:	26051d64 	addiu	a1,s0,7524
    f6f0:	0c000000 	jal	0 <func_80B699A0>
    f6f4:	02002025 	move	a0,s0
    f6f8:	3c010000 	lui	at,0x0
    f6fc:	a4220000 	sh	v0,0(at)
    f700:	02002025 	move	a0,s0
    f704:	00002825 	move	a1,zero
    f708:	0c000000 	jal	0 <func_80B699A0>
    f70c:	24060001 	li	a2,1
    f710:	3c050000 	lui	a1,0x0
    f714:	84a50000 	lh	a1,0(a1)
    f718:	02002025 	move	a0,s0
    f71c:	0c000000 	jal	0 <func_80B699A0>
    f720:	24060007 	li	a2,7
    f724:	02002025 	move	a0,s0
    f728:	8fa50128 	lw	a1,296(sp)
    f72c:	0c000000 	jal	0 <func_80B699A0>
    f730:	24060005 	li	a2,5
    f734:	02002025 	move	a0,s0
    f738:	0c000000 	jal	0 <func_80B699A0>
    f73c:	00002825 	move	a1,zero
    f740:	c44a005c 	lwc1	$f10,92(v0)
    f744:	3c030000 	lui	v1,0x0
    f748:	24630000 	addiu	v1,v1,0
    f74c:	e46a0000 	swc1	$f10,0(v1)
    f750:	c4460060 	lwc1	$f6,96(v0)
    f754:	3c070000 	lui	a3,0x0
    f758:	24e70000 	addiu	a3,a3,0
    f75c:	e4660004 	swc1	$f6,4(v1)
    f760:	c4440064 	lwc1	$f4,100(v0)
    f764:	02002025 	move	a0,s0
    f768:	2405409a 	li	a1,16538
    f76c:	e4640008 	swc1	$f4,8(v1)
    f770:	c4480050 	lwc1	$f8,80(v0)
    f774:	00003025 	move	a2,zero
    f778:	e4e80000 	swc1	$f8,0(a3)
    f77c:	c44a0054 	lwc1	$f10,84(v0)
    f780:	e4ea0004 	swc1	$f10,4(a3)
    f784:	c4460058 	lwc1	$f6,88(v0)
    f788:	0c000000 	jal	0 <func_80B699A0>
    f78c:	e4e60008 	swc1	$f6,8(a3)
    f790:	24190015 	li	t9,21
    f794:	3c010000 	lui	at,0x0
    f798:	a0390000 	sb	t9,0(at)
    f79c:	3c014234 	lui	at,0x4234
    f7a0:	44812000 	mtc1	at,$f4
    f7a4:	3c010000 	lui	at,0x0
    f7a8:	2409000a 	li	t1,10
    f7ac:	e4240000 	swc1	$f4,0(at)
    f7b0:	3c010000 	lui	at,0x0
    f7b4:	a0290000 	sb	t1,0(at)

0000f7b8 <L80B79158>:
    f7b8:	3c0a0000 	lui	t2,0x0
    f7bc:	914a0000 	lbu	t2,0(t2)
    f7c0:	15400011 	bnez	t2,f808 <L80B79158+0x50>
    f7c4:	00000000 	nop
    f7c8:	0c000000 	jal	0 <func_80B699A0>
    f7cc:	02002025 	move	a0,s0
    f7d0:	1040000d 	beqz	v0,f808 <L80B79158+0x50>
    f7d4:	240c0016 	li	t4,22
    f7d8:	3c010000 	lui	at,0x0
    f7dc:	a02c0000 	sb	t4,0(at)
    f7e0:	3c010000 	lui	at,0x0
    f7e4:	240d0028 	li	t5,40
    f7e8:	a02d0000 	sb	t5,0(at)
    f7ec:	02002025 	move	a0,s0
    f7f0:	8fa50128 	lw	a1,296(sp)
    f7f4:	0c000000 	jal	0 <func_80B699A0>
    f7f8:	2406001c 	li	a2,28
    f7fc:	44804000 	mtc1	zero,$f8
    f800:	3c010000 	lui	at,0x0
    f804:	e4280000 	swc1	$f8,0(at)
    f808:	100000ec 	b	fbbc <L80B7955C>
    f80c:	8fa800e4 	lw	t0,228(sp)

0000f810 <L80B791B0>:
    f810:	3c0e0000 	lui	t6,0x0
    f814:	91ce0000 	lbu	t6,0(t6)
    f818:	2401001e 	li	at,30
    f81c:	55c10004 	bnel	t6,at,f830 <L80B791B0+0x20>
    f820:	240f0001 	li	t7,1
    f824:	0c000000 	jal	0 <func_80B699A0>
    f828:	24040922 	li	a0,2338
    f82c:	240f0001 	li	t7,1
    f830:	3c010000 	lui	at,0x0
    f834:	3c040000 	lui	a0,0x0
    f838:	a02f0000 	sb	t7,0(at)
    f83c:	24840000 	addiu	a0,a0,0
    f840:	3c05428e 	lui	a1,0x428e
    f844:	3c063f00 	lui	a2,0x3f00
    f848:	0c000000 	jal	0 <func_80B699A0>
    f84c:	3c074040 	lui	a3,0x4040
    f850:	8fab00e4 	lw	t3,228(sp)
    f854:	3c014700 	lui	at,0x4700
    f858:	44812000 	mtc1	at,$f4
    f85c:	857800b6 	lh	t8,182(t3)
    f860:	3c010000 	lui	at,0x0
    f864:	00002825 	move	a1,zero
    f868:	44985000 	mtc1	t8,$f10
    f86c:	00000000 	nop
    f870:	468051a0 	cvt.s.w	$f6,$f10
    f874:	c42a0000 	lwc1	$f10,0(at)
    f878:	46043203 	div.s	$f8,$f6,$f4
    f87c:	460a4302 	mul.s	$f12,$f8,$f10
    f880:	0c000000 	jal	0 <func_80B699A0>
    f884:	00000000 	nop
    f888:	8fb90028 	lw	t9,40(sp)
    f88c:	8f241de4 	lw	a0,7652(t9)
    f890:	00042300 	sll	a0,a0,0xc
    f894:	00042400 	sll	a0,a0,0x10
    f898:	0c000000 	jal	0 <func_80B699A0>
    f89c:	00042403 	sra	a0,a0,0x10
    f8a0:	3c010000 	lui	at,0x0
    f8a4:	c4220000 	lwc1	$f2,0(at)
    f8a8:	3c01c0a0 	lui	at,0xc0a0
    f8ac:	3c090000 	lui	t1,0x0
    f8b0:	44813000 	mtc1	at,$f6
    f8b4:	91290000 	lbu	t1,0(t1)
    f8b8:	24010001 	li	at,1
    f8bc:	e7a00114 	swc1	$f0,276(sp)
    f8c0:	e7a20118 	swc1	$f2,280(sp)
    f8c4:	15210006 	bne	t1,at,f8e0 <L80B791B0+0xd0>
    f8c8:	e7a6011c 	swc1	$f6,284(sp)
    f8cc:	3c0141a0 	lui	at,0x41a0
    f8d0:	44812000 	mtc1	at,$f4
    f8d4:	00000000 	nop
    f8d8:	46041081 	sub.s	$f2,$f2,$f4
    f8dc:	e7a20118 	swc1	$f2,280(sp)
    f8e0:	27a40114 	addiu	a0,sp,276
    f8e4:	0c000000 	jal	0 <func_80B699A0>
    f8e8:	27a50108 	addiu	a1,sp,264
    f8ec:	8faa00e4 	lw	t2,228(sp)
    f8f0:	c7aa0108 	lwc1	$f10,264(sp)
    f8f4:	8fac00e4 	lw	t4,228(sp)
    f8f8:	c5480024 	lwc1	$f8,36(t2)
    f8fc:	3c020000 	lui	v0,0x0
    f900:	24420000 	addiu	v0,v0,0
    f904:	460a4180 	add.s	$f6,$f8,$f10
    f908:	c7a8010c 	lwc1	$f8,268(sp)
    f90c:	8fad00e4 	lw	t5,228(sp)
    f910:	3c040000 	lui	a0,0x0
    f914:	e4460000 	swc1	$f6,0(v0)
    f918:	c5840028 	lwc1	$f4,40(t4)
    f91c:	3c063dcc 	lui	a2,0x3dcc
    f920:	34c6cccd 	ori	a2,a2,0xcccd
    f924:	46082280 	add.s	$f10,$f4,$f8
    f928:	c7a40110 	lwc1	$f4,272(sp)
    f92c:	24840000 	addiu	a0,a0,0
    f930:	3c054170 	lui	a1,0x4170
    f934:	e44a0004 	swc1	$f10,4(v0)
    f938:	c5a6002c 	lwc1	$f6,44(t5)
    f93c:	3c073f40 	lui	a3,0x3f40
    f940:	46043200 	add.s	$f8,$f6,$f4
    f944:	0c000000 	jal	0 <func_80B699A0>
    f948:	e4480008 	swc1	$f8,8(v0)
    f94c:	3c010000 	lui	at,0x0
    f950:	c42a0000 	lwc1	$f10,0(at)
    f954:	3c014170 	lui	at,0x4170
    f958:	44813000 	mtc1	at,$f6
    f95c:	3c0e0000 	lui	t6,0x0
    f960:	91ce0000 	lbu	t6,0(t6)
    f964:	46065101 	sub.s	$f4,$f10,$f6
    f968:	24010001 	li	at,1
    f96c:	27a40114 	addiu	a0,sp,276
    f970:	11c10008 	beq	t6,at,f994 <L80B791B0+0x184>
    f974:	e7a40114 	swc1	$f4,276(sp)
    f978:	3c014270 	lui	at,0x4270
    f97c:	44811000 	mtc1	at,$f2
    f980:	3c01c1f0 	lui	at,0xc1f0
    f984:	44814000 	mtc1	at,$f8
    f988:	e7a20118 	swc1	$f2,280(sp)
    f98c:	10000007 	b	f9ac <L80B791B0+0x19c>
    f990:	e7a8011c 	swc1	$f8,284(sp)
    f994:	3c014220 	lui	at,0x4220
    f998:	44811000 	mtc1	at,$f2
    f99c:	3c01c20c 	lui	at,0xc20c
    f9a0:	44815000 	mtc1	at,$f10
    f9a4:	e7a20118 	swc1	$f2,280(sp)
    f9a8:	e7aa011c 	swc1	$f10,284(sp)
    f9ac:	3c050000 	lui	a1,0x0
    f9b0:	0c000000 	jal	0 <func_80B699A0>
    f9b4:	24a50000 	addiu	a1,a1,0
    f9b8:	8faf00e4 	lw	t7,228(sp)
    f9bc:	3c020000 	lui	v0,0x0
    f9c0:	24420000 	addiu	v0,v0,0
    f9c4:	c4460000 	lwc1	$f6,0(v0)
    f9c8:	c5e40024 	lwc1	$f4,36(t7)
    f9cc:	8fab00e4 	lw	t3,228(sp)
    f9d0:	c44a0004 	lwc1	$f10,4(v0)
    f9d4:	46043200 	add.s	$f8,$f6,$f4
    f9d8:	8fb800e4 	lw	t8,228(sp)
    f9dc:	8fb900e4 	lw	t9,228(sp)
    f9e0:	3c030000 	lui	v1,0x0
    f9e4:	e4480000 	swc1	$f8,0(v0)
    f9e8:	c5660028 	lwc1	$f6,40(t3)
    f9ec:	c4480008 	lwc1	$f8,8(v0)
    f9f0:	24630000 	addiu	v1,v1,0
    f9f4:	46065100 	add.s	$f4,$f10,$f6
    f9f8:	3c0c0000 	lui	t4,0x0
    f9fc:	24010001 	li	at,1
    fa00:	3c0d0000 	lui	t5,0x0
    fa04:	e4440004 	swc1	$f4,4(v0)
    fa08:	c70a002c 	lwc1	$f10,44(t8)
    fa0c:	260420d8 	addiu	a0,s0,8408
    fa10:	460a4180 	add.s	$f6,$f8,$f10
    fa14:	e4460008 	swc1	$f6,8(v0)
    fa18:	8f2a0024 	lw	t2,36(t9)
    fa1c:	ac6a0000 	sw	t2,0(v1)
    fa20:	8f290028 	lw	t1,40(t9)
    fa24:	ac690004 	sw	t1,4(v1)
    fa28:	8f2a002c 	lw	t2,44(t9)
    fa2c:	ac6a0008 	sw	t2,8(v1)
    fa30:	918c0000 	lbu	t4,0(t4)
    fa34:	11810006 	beq	t4,at,fa50 <L80B791B0+0x240>
    fa38:	3c014278 	lui	at,0x4278
    fa3c:	44814000 	mtc1	at,$f8
    fa40:	c4640004 	lwc1	$f4,4(v1)
    fa44:	46082280 	add.s	$f10,$f4,$f8
    fa48:	10000006 	b	fa64 <L80B791B0+0x254>
    fa4c:	e46a0004 	swc1	$f10,4(v1)
    fa50:	3c014220 	lui	at,0x4220
    fa54:	44812000 	mtc1	at,$f4
    fa58:	c4660004 	lwc1	$f6,4(v1)
    fa5c:	46043200 	add.s	$f8,$f6,$f4
    fa60:	e4680004 	swc1	$f8,4(v1)
    fa64:	91ad0000 	lbu	t5,0(t5)
    fa68:	55a00054 	bnezl	t5,fbbc <L80B7955C>
    fa6c:	8fa800e4 	lw	t0,228(sp)
    fa70:	0c000000 	jal	0 <func_80B699A0>
    fa74:	afa40038 	sw	a0,56(sp)
    fa78:	24010004 	li	at,4
    fa7c:	10410005 	beq	v0,at,fa94 <L80B791B0+0x284>
    fa80:	8fa40038 	lw	a0,56(sp)
    fa84:	0c000000 	jal	0 <func_80B699A0>
    fa88:	00000000 	nop
    fa8c:	5440004b 	bnezl	v0,fbbc <L80B7955C>
    fa90:	8fa800e4 	lw	t0,228(sp)
    fa94:	0c000000 	jal	0 <func_80B699A0>
    fa98:	02002025 	move	a0,s0
    fa9c:	10400046 	beqz	v0,fbb8 <L80B791B0+0x3a8>
    faa0:	02002025 	move	a0,s0
    faa4:	0c000000 	jal	0 <func_80B699A0>
    faa8:	00002825 	move	a1,zero
    faac:	02002025 	move	a0,s0
    fab0:	0c000000 	jal	0 <func_80B699A0>
    fab4:	afa200b0 	sw	v0,176(sp)
    fab8:	8fae0028 	lw	t6,40(sp)
    fabc:	3c020000 	lui	v0,0x0
    fac0:	8fa300b0 	lw	v1,176(sp)
    fac4:	91cf04bd 	lbu	t7,1213(t6)
    fac8:	240b0002 	li	t3,2
    facc:	3c010000 	lui	at,0x0
    fad0:	15e00004 	bnez	t7,fae4 <L80B791B0+0x2d4>
    fad4:	24420000 	addiu	v0,v0,0
    fad8:	a02b0000 	sb	t3,0(at)
    fadc:	3c010000 	lui	at,0x0
    fae0:	a0200000 	sb	zero,0(at)
    fae4:	8c590000 	lw	t9,0(v0)
    fae8:	3c0c0000 	lui	t4,0x0
    faec:	258c0000 	addiu	t4,t4,0
    faf0:	ac79005c 	sw	t9,92(v1)
    faf4:	8c580004 	lw	t8,4(v0)
    faf8:	3c050000 	lui	a1,0x0
    fafc:	02002025 	move	a0,s0
    fb00:	ac780060 	sw	t8,96(v1)
    fb04:	8c590008 	lw	t9,8(v0)
    fb08:	00003025 	move	a2,zero
    fb0c:	ac790064 	sw	t9,100(v1)
    fb10:	8c4a0000 	lw	t2,0(v0)
    fb14:	ac6a0074 	sw	t2,116(v1)
    fb18:	8c490004 	lw	t1,4(v0)
    fb1c:	ac690078 	sw	t1,120(v1)
    fb20:	8c4a0008 	lw	t2,8(v0)
    fb24:	ac6a007c 	sw	t2,124(v1)
    fb28:	8d8e0000 	lw	t6,0(t4)
    fb2c:	ac6e0050 	sw	t6,80(v1)
    fb30:	8d8d0004 	lw	t5,4(t4)
    fb34:	ac6d0054 	sw	t5,84(v1)
    fb38:	8d8e0008 	lw	t6,8(t4)
    fb3c:	ac6e0058 	sw	t6,88(v1)
    fb40:	0c000000 	jal	0 <func_80B699A0>
    fb44:	84a50000 	lh	a1,0(a1)
    fb48:	02002025 	move	a0,s0
    fb4c:	0c000000 	jal	0 <func_80B699A0>
    fb50:	26051d64 	addiu	a1,s0,7524
    fb54:	02002025 	move	a0,s0
    fb58:	8fa50128 	lw	a1,296(sp)
    fb5c:	0c000000 	jal	0 <func_80B699A0>
    fb60:	24060007 	li	a2,7
    fb64:	3c010000 	lui	at,0x0
    fb68:	a0200000 	sb	zero,0(at)
    fb6c:	8fab00e4 	lw	t3,228(sp)
    fb70:	3c010000 	lui	at,0x0
    fb74:	a4200000 	sh	zero,0(at)
    fb78:	240ffffb 	li	t7,-5
    fb7c:	3c010000 	lui	at,0x0
    fb80:	24180005 	li	t8,5
    fb84:	a56f0860 	sh	t7,2144(t3)
    fb88:	a4380000 	sh	t8,0(at)
    fb8c:	3c010000 	lui	at,0x0
    fb90:	a0200000 	sb	zero,0(at)
    fb94:	3c010000 	lui	at,0x0
    fb98:	24190014 	li	t9,20
    fb9c:	a4390000 	sh	t9,0(at)
    fba0:	02002025 	move	a0,s0
    fba4:	0c000000 	jal	0 <func_80B699A0>
    fba8:	00002825 	move	a1,zero
    fbac:	3c010001 	lui	at,0x1
    fbb0:	00300821 	addu	at,at,s0
    fbb4:	a4200ac2 	sh	zero,2754(at)
    fbb8:	8fa800e4 	lw	t0,228(sp)

0000fbbc <L80B7955C>:
    fbbc:	3c050000 	lui	a1,0x0
    fbc0:	84a50000 	lh	a1,0(a1)
    fbc4:	10a00036 	beqz	a1,fca0 <L80B7955C+0xe4>
    fbc8:	3c060000 	lui	a2,0x0
    fbcc:	3c070000 	lui	a3,0x0
    fbd0:	24e70000 	addiu	a3,a3,0
    fbd4:	24c60000 	addiu	a2,a2,0
    fbd8:	0c000000 	jal	0 <func_80B699A0>
    fbdc:	02002025 	move	a0,s0
    fbe0:	3c013f80 	lui	at,0x3f80
    fbe4:	44810000 	mtc1	at,$f0
    fbe8:	3c040000 	lui	a0,0x0
    fbec:	3c073ca3 	lui	a3,0x3ca3
    fbf0:	44050000 	mfc1	a1,$f0
    fbf4:	44060000 	mfc1	a2,$f0
    fbf8:	34e7d70a 	ori	a3,a3,0xd70a
    fbfc:	0c000000 	jal	0 <func_80B699A0>
    fc00:	24840000 	addiu	a0,a0,0
    fc04:	8e0907c0 	lw	t1,1984(s0)
    fc08:	3c013f80 	lui	at,0x3f80
    fc0c:	44812000 	mtc1	at,$f4
    fc10:	8d2a0028 	lw	t2,40(t1)
    fc14:	3c010000 	lui	at,0x0
    fc18:	24050001 	li	a1,1
    fc1c:	854c0002 	lh	t4,2(t2)
    fc20:	02002025 	move	a0,s0
    fc24:	448c5000 	mtc1	t4,$f10
    fc28:	00000000 	nop
    fc2c:	468051a0 	cvt.s.w	$f6,$f10
    fc30:	c42a0000 	lwc1	$f10,0(at)
    fc34:	46043200 	add.s	$f8,$f6,$f4
    fc38:	4608503e 	c.le.s	$f10,$f8
    fc3c:	00000000 	nop
    fc40:	45000011 	bc1f	fc88 <L80B7955C+0xcc>
    fc44:	00000000 	nop
    fc48:	0c000000 	jal	0 <func_80B699A0>
    fc4c:	02002025 	move	a0,s0
    fc50:	3c0d0000 	lui	t5,0x0
    fc54:	91ad0000 	lbu	t5,0(t5)
    fc58:	3c010001 	lui	at,0x1
    fc5c:	00300821 	addu	at,at,s0
    fc60:	11a00006 	beqz	t5,fc7c <L80B7955C+0xc0>
    fc64:	240fffd2 	li	t7,-46
    fc68:	3c010001 	lui	at,0x1
    fc6c:	00300821 	addu	at,at,s0
    fc70:	240eff4e 	li	t6,-178
    fc74:	10000002 	b	fc80 <L80B7955C+0xc4>
    fc78:	a42e0ac2 	sh	t6,2754(at)
    fc7c:	a42f0ac2 	sh	t7,2754(at)
    fc80:	10000007 	b	fca0 <L80B7955C+0xe4>
    fc84:	8fa800e4 	lw	t0,228(sp)
    fc88:	0c000000 	jal	0 <func_80B699A0>
    fc8c:	00002825 	move	a1,zero
    fc90:	3c010001 	lui	at,0x1
    fc94:	00300821 	addu	at,at,s0
    fc98:	a4200ac2 	sh	zero,2754(at)
    fc9c:	8fa800e4 	lw	t0,228(sp)
    fca0:	8e0b07c0 	lw	t3,1984(s0)
    fca4:	3c014040 	lui	at,0x4040
    fca8:	44812000 	mtc1	at,$f4
    fcac:	8d780028 	lw	t8,40(t3)
    fcb0:	c5000080 	lwc1	$f0,128(t0)
    fcb4:	87190002 	lh	t9,2(t8)
    fcb8:	44993000 	mtc1	t9,$f6
    fcbc:	00000000 	nop
    fcc0:	468030a0 	cvt.s.w	$f2,$f6
    fcc4:	46041201 	sub.s	$f8,$f2,$f4
    fcc8:	4608003c 	c.lt.s	$f0,$f8
    fccc:	00000000 	nop
    fcd0:	45000036 	bc1f	fdac <L80B7955C+0x1f0>
    fcd4:	3c014040 	lui	at,0x4040
    fcd8:	44813000 	mtc1	at,$f6
    fcdc:	c50a0028 	lwc1	$f10,40(t0)
    fce0:	3c013f80 	lui	at,0x3f80
    fce4:	46060100 	add.s	$f4,$f0,$f6
    fce8:	4604503c 	c.lt.s	$f10,$f4
    fcec:	00000000 	nop
    fcf0:	4502002f 	bc1fl	fdb0 <L80B7955C+0x1f4>
    fcf4:	4602003c 	c.lt.s	$f0,$f2
    fcf8:	44814000 	mtc1	at,$f8
    fcfc:	c5060068 	lwc1	$f6,104(t0)
    fd00:	8fa90028 	lw	t1,40(sp)
    fd04:	4606403c 	c.lt.s	$f8,$f6
    fd08:	00000000 	nop
    fd0c:	45020028 	bc1fl	fdb0 <L80B7955C+0x1f4>
    fd10:	4602003c 	c.lt.s	$f0,$f2
    fd14:	8d2a1de4 	lw	t2,7652(t1)
    fd18:	3c0141a0 	lui	at,0x41a0
    fd1c:	314c0001 	andi	t4,t2,0x1
    fd20:	55800023 	bnezl	t4,fdb0 <L80B7955C+0x1f4>
    fd24:	4602003c 	c.lt.s	$f0,$f2
    fd28:	44816000 	mtc1	at,$f12
    fd2c:	0c000000 	jal	0 <func_80B699A0>
    fd30:	00000000 	nop
    fd34:	8fad00e4 	lw	t5,228(sp)
    fd38:	3c0141a0 	lui	at,0x41a0
    fd3c:	44816000 	mtc1	at,$f12
    fd40:	c5aa0024 	lwc1	$f10,36(t5)
    fd44:	460a0100 	add.s	$f4,$f0,$f10
    fd48:	0c000000 	jal	0 <func_80B699A0>
    fd4c:	e7a400a4 	swc1	$f4,164(sp)
    fd50:	8fa200e4 	lw	v0,228(sp)
    fd54:	3c0140a0 	lui	at,0x40a0
    fd58:	44812000 	mtc1	at,$f4
    fd5c:	c448002c 	lwc1	$f8,44(v0)
    fd60:	8fae0028 	lw	t6,40(sp)
    fd64:	00002025 	move	a0,zero
    fd68:	46080180 	add.s	$f6,$f0,$f8
    fd6c:	27a600a4 	addiu	a2,sp,164
    fd70:	3c073f00 	lui	a3,0x3f00
    fd74:	e7a600ac 	swc1	$f6,172(sp)
    fd78:	c44a0080 	lwc1	$f10,128(v0)
    fd7c:	46045200 	add.s	$f8,$f10,$f4
    fd80:	e7a800a8 	swc1	$f8,168(sp)
    fd84:	0c000000 	jal	0 <func_80B699A0>
    fd88:	8dc51e10 	lw	a1,7696(t6)
    fd8c:	8e0b07c0 	lw	t3,1984(s0)
    fd90:	8fa800e4 	lw	t0,228(sp)
    fd94:	8d780028 	lw	t8,40(t3)
    fd98:	c5000080 	lwc1	$f0,128(t0)
    fd9c:	87190002 	lh	t9,2(t8)
    fda0:	44993000 	mtc1	t9,$f6
    fda4:	00000000 	nop
    fda8:	468030a0 	cvt.s.w	$f2,$f6
    fdac:	4602003c 	c.lt.s	$f0,$f2
    fdb0:	00000000 	nop
    fdb4:	45000060 	bc1f	ff38 <L80B7955C+0x37c>
    fdb8:	3c014120 	lui	at,0x4120
    fdbc:	44815000 	mtc1	at,$f10
    fdc0:	3c014080 	lui	at,0x4080
    fdc4:	460a1101 	sub.s	$f4,$f2,$f10
    fdc8:	4600203c 	c.lt.s	$f4,$f0
    fdcc:	00000000 	nop
    fdd0:	45000059 	bc1f	ff38 <L80B7955C+0x37c>
    fdd4:	00000000 	nop
    fdd8:	c5080068 	lwc1	$f8,104(t0)
    fddc:	44813000 	mtc1	at,$f6
    fde0:	8fa90028 	lw	t1,40(sp)
    fde4:	4608303e 	c.le.s	$f6,$f8
    fde8:	00000000 	nop
    fdec:	45000052 	bc1f	ff38 <L80B7955C+0x37c>
    fdf0:	00000000 	nop
    fdf4:	8d2a1de4 	lw	t2,7652(t1)
    fdf8:	250d0024 	addiu	t5,t0,36
    fdfc:	314c0003 	andi	t4,t2,0x3
    fe00:	1580004d 	bnez	t4,ff38 <L80B7955C+0x37c>
    fe04:	00000000 	nop
    fe08:	a7a000a2 	sh	zero,162(sp)
    fe0c:	afad0038 	sw	t5,56(sp)
    fe10:	3c013fc0 	lui	at,0x3fc0
    fe14:	44816000 	mtc1	at,$f12
    fe18:	0c000000 	jal	0 <func_80B699A0>
    fe1c:	00000000 	nop
    fe20:	3c013fc0 	lui	at,0x3fc0
    fe24:	44815000 	mtc1	at,$f10
    fe28:	3c010000 	lui	at,0x0
    fe2c:	c42c0000 	lwc1	$f12,0(at)
    fe30:	460a0100 	add.s	$f4,$f0,$f10
    fe34:	0c000000 	jal	0 <func_80B699A0>
    fe38:	e7a40084 	swc1	$f4,132(sp)
    fe3c:	e7a00080 	swc1	$f0,128(sp)
    fe40:	0c000000 	jal	0 <func_80B699A0>
    fe44:	46000306 	mov.s	$f12,$f0
    fe48:	c7a80084 	lwc1	$f8,132(sp)
    fe4c:	c7ac0080 	lwc1	$f12,128(sp)
    fe50:	46080182 	mul.s	$f6,$f0,$f8
    fe54:	0c000000 	jal	0 <func_80B699A0>
    fe58:	e7a60088 	swc1	$f6,136(sp)
    fe5c:	c7aa0084 	lwc1	$f10,132(sp)
    fe60:	3c014040 	lui	at,0x4040
    fe64:	44816000 	mtc1	at,$f12
    fe68:	460a0102 	mul.s	$f4,$f0,$f10
    fe6c:	0c000000 	jal	0 <func_80B699A0>
    fe70:	e7a40090 	swc1	$f4,144(sp)
    fe74:	3c014000 	lui	at,0x4000
    fe78:	44814000 	mtc1	at,$f8
    fe7c:	8fab0038 	lw	t3,56(sp)
    fe80:	27ae0094 	addiu	t6,sp,148
    fe84:	46080180 	add.s	$f6,$f0,$f8
    fe88:	3c010000 	lui	at,0x0
    fe8c:	e7a6008c 	swc1	$f6,140(sp)
    fe90:	8d790000 	lw	t9,0(t3)
    fe94:	add90000 	sw	t9,0(t6)
    fe98:	8d780004 	lw	t8,4(t3)
    fe9c:	add80004 	sw	t8,4(t6)
    fea0:	8d790008 	lw	t9,8(t3)
    fea4:	add90008 	sw	t9,8(t6)
    fea8:	c7aa0088 	lwc1	$f10,136(sp)
    feac:	c7a80094 	lwc1	$f8,148(sp)
    feb0:	c42c0000 	lwc1	$f12,0(at)
    feb4:	460a5100 	add.s	$f4,$f10,$f10
    feb8:	46044180 	add.s	$f6,$f8,$f4
    febc:	c7a40090 	lwc1	$f4,144(sp)
    fec0:	e7a60094 	swc1	$f6,148(sp)
    fec4:	8e0f07c0 	lw	t7,1984(s0)
    fec8:	46042180 	add.s	$f6,$f4,$f4
    fecc:	8de90028 	lw	t1,40(t7)
    fed0:	852a0002 	lh	t2,2(t1)
    fed4:	448a5000 	mtc1	t2,$f10
    fed8:	00000000 	nop
    fedc:	46805220 	cvt.s.w	$f8,$f10
    fee0:	c7aa009c 	lwc1	$f10,156(sp)
    fee4:	e7a80098 	swc1	$f8,152(sp)
    fee8:	46065200 	add.s	$f8,$f10,$f6
    feec:	0c000000 	jal	0 <func_80B699A0>
    fef0:	e7a8009c 	swc1	$f8,156(sp)
    fef4:	3c010000 	lui	at,0x0
    fef8:	c4240000 	lwc1	$f4,0(at)
    fefc:	8fac0028 	lw	t4,40(sp)
    ff00:	00002025 	move	a0,zero
    ff04:	46040280 	add.s	$f10,$f0,$f4
    ff08:	8d851e10 	lw	a1,7696(t4)
    ff0c:	27a60094 	addiu	a2,sp,148
    ff10:	27a70088 	addiu	a3,sp,136
    ff14:	0c000000 	jal	0 <func_80B699A0>
    ff18:	e7aa0010 	swc1	$f10,16(sp)
    ff1c:	87a200a2 	lh	v0,162(sp)
    ff20:	24420001 	addiu	v0,v0,1
    ff24:	00021400 	sll	v0,v0,0x10
    ff28:	00021403 	sra	v0,v0,0x10
    ff2c:	2841000a 	slti	at,v0,10
    ff30:	1420ffb7 	bnez	at,fe10 <L80B7955C+0x254>
    ff34:	a7a200a2 	sh	v0,162(sp)
    ff38:	3c020000 	lui	v0,0x0
    ff3c:	8c420000 	lw	v0,0(v0)
    ff40:	84440c32 	lh	a0,3122(v0)
    ff44:	10800019 	beqz	a0,ffac <L80B7955C+0x3f0>
    ff48:	3c050000 	lui	a1,0x0
    ff4c:	90a50000 	lbu	a1,0(a1)
    ff50:	2483ffff 	addiu	v1,a0,-1
    ff54:	10a30013 	beq	a1,v1,ffa4 <L80B7955C+0x3e8>
    ff58:	00000000 	nop
    ff5c:	14a0000a 	bnez	a1,ff88 <L80B7955C+0x3cc>
    ff60:	240e0002 	li	t6,2
    ff64:	3c010001 	lui	at,0x1
    ff68:	00300821 	addu	at,at,s0
    ff6c:	240d0001 	li	t5,1
    ff70:	a02d0b01 	sb	t5,2817(at)
    ff74:	3c020000 	lui	v0,0x0
    ff78:	8c420000 	lw	v0,0(v0)
    ff7c:	84430c32 	lh	v1,3122(v0)
    ff80:	10000008 	b	ffa4 <L80B7955C+0x3e8>
    ff84:	2463ffff 	addiu	v1,v1,-1
    ff88:	3c010001 	lui	at,0x1
    ff8c:	00300821 	addu	at,at,s0
    ff90:	a02e0b01 	sb	t6,2817(at)
    ff94:	3c020000 	lui	v0,0x0
    ff98:	8c420000 	lw	v0,0(v0)
    ff9c:	84430c32 	lh	v1,3122(v0)
    ffa0:	2463ffff 	addiu	v1,v1,-1
    ffa4:	3c010000 	lui	at,0x0
    ffa8:	a0230000 	sb	v1,0(at)
    ffac:	84430c30 	lh	v1,3120(v0)
    ffb0:	24010001 	li	at,1
    ffb4:	3c040000 	lui	a0,0x0
    ffb8:	14610008 	bne	v1,at,ffdc <L80B7955C+0x420>
    ffbc:	24840000 	addiu	a0,a0,0
    ffc0:	3c010001 	lui	at,0x1
    ffc4:	00300821 	addu	at,at,s0
    ffc8:	240b0001 	li	t3,1
    ffcc:	a02b0b01 	sb	t3,2817(at)
    ffd0:	3c020000 	lui	v0,0x0
    ffd4:	8c420000 	lw	v0,0(v0)
    ffd8:	84430c30 	lh	v1,3120(v0)
    ffdc:	2401ffff 	li	at,-1
    ffe0:	14610006 	bne	v1,at,fffc <L80B7955C+0x440>
    ffe4:	3c010001 	lui	at,0x1
    ffe8:	00300821 	addu	at,at,s0
    ffec:	24180002 	li	t8,2
    fff0:	a0380b01 	sb	t8,2817(at)
    fff4:	3c020000 	lui	v0,0x0
    fff8:	8c420000 	lw	v0,0(v0)
    fffc:	0c000000 	jal	0 <func_80B699A0>
   10000:	a4400c30 	sh	zero,3120(v0)
   10004:	3c020000 	lui	v0,0x0
   10008:	3c040000 	lui	a0,0x0
   1000c:	24840000 	addiu	a0,a0,0
   10010:	0c000000 	jal	0 <func_80B699A0>
   10014:	9445000c 	lhu	a1,12(v0)
   10018:	3c040000 	lui	a0,0x0
   1001c:	0c000000 	jal	0 <func_80B699A0>
   10020:	24840000 	addiu	a0,a0,0
   10024:	3c050000 	lui	a1,0x0
   10028:	24a50000 	addiu	a1,a1,0
   1002c:	90a30000 	lbu	v1,0(a1)
   10030:	28610002 	slti	at,v1,2
   10034:	14200004 	bnez	at,10048 <L80B7955C+0x48c>
   10038:	00601025 	move	v0,v1
   1003c:	2479ffff 	addiu	t9,v1,-1
   10040:	a0b90000 	sb	t9,0(a1)
   10044:	332200ff 	andi	v0,t9,0xff
   10048:	24010001 	li	at,1
   1004c:	14410047 	bne	v0,at,1016c <L80B7955C+0x5b0>
   10050:	00000000 	nop
   10054:	0c000000 	jal	0 <func_80B699A0>
   10058:	260420d8 	addiu	a0,s0,8408
   1005c:	3c050000 	lui	a1,0x0
   10060:	14400042 	bnez	v0,1016c <L80B7955C+0x5b0>
   10064:	24a50000 	addiu	a1,a1,0
   10068:	3c0f0000 	lui	t7,0x0
   1006c:	8def0000 	lw	t7,0(t7)
   10070:	24010fff 	li	at,4095
   10074:	240a00c8 	li	t2,200
   10078:	31e90fff 	andi	t1,t7,0xfff
   1007c:	1521003b 	bne	t1,at,1016c <L80B7955C+0x5b0>
   10080:	00000000 	nop
   10084:	0c000000 	jal	0 <func_80B699A0>
   10088:	a0aa0000 	sb	t2,0(a1)
   1008c:	3c013f00 	lui	at,0x3f00
   10090:	44813000 	mtc1	at,$f6
   10094:	3c010000 	lui	at,0x0
   10098:	24190002 	li	t9,2
   1009c:	4606003c 	c.lt.s	$f0,$f6
   100a0:	00000000 	nop
   100a4:	4500002d 	bc1f	1015c <L80B7955C+0x5a0>
   100a8:	00000000 	nop
   100ac:	3c014120 	lui	at,0x4120
   100b0:	44816000 	mtc1	at,$f12
   100b4:	0c000000 	jal	0 <func_80B699A0>
   100b8:	00000000 	nop
   100bc:	444cf800 	cfc1	t4,$31
   100c0:	240d0001 	li	t5,1
   100c4:	44cdf800 	ctc1	t5,$31
   100c8:	3c014f00 	lui	at,0x4f00
   100cc:	24180001 	li	t8,1
   100d0:	46000224 	cvt.w.s	$f8,$f0
   100d4:	444df800 	cfc1	t5,$31
   100d8:	00000000 	nop
   100dc:	31ad0078 	andi	t5,t5,0x78
   100e0:	51a00013 	beqzl	t5,10130 <L80B7955C+0x574>
   100e4:	440d4000 	mfc1	t5,$f8
   100e8:	44814000 	mtc1	at,$f8
   100ec:	240d0001 	li	t5,1
   100f0:	46080201 	sub.s	$f8,$f0,$f8
   100f4:	44cdf800 	ctc1	t5,$31
   100f8:	00000000 	nop
   100fc:	46004224 	cvt.w.s	$f8,$f8
   10100:	444df800 	cfc1	t5,$31
   10104:	00000000 	nop
   10108:	31ad0078 	andi	t5,t5,0x78
   1010c:	15a00005 	bnez	t5,10124 <L80B7955C+0x568>
   10110:	00000000 	nop
   10114:	440d4000 	mfc1	t5,$f8
   10118:	3c018000 	lui	at,0x8000
   1011c:	10000007 	b	1013c <L80B7955C+0x580>
   10120:	01a16825 	or	t5,t5,at
   10124:	10000005 	b	1013c <L80B7955C+0x580>
   10128:	240dffff 	li	t5,-1
   1012c:	440d4000 	mfc1	t5,$f8
   10130:	00000000 	nop
   10134:	05a0fffb 	bltz	t5,10124 <L80B7955C+0x568>
   10138:	00000000 	nop
   1013c:	25ab0005 	addiu	t3,t5,5
   10140:	3c010000 	lui	at,0x0
   10144:	a02b0000 	sb	t3,0(at)
   10148:	3c010001 	lui	at,0x1
   1014c:	44ccf800 	ctc1	t4,$31
   10150:	00300821 	addu	at,at,s0
   10154:	10000005 	b	1016c <L80B7955C+0x5b0>
   10158:	a0380b01 	sb	t8,2817(at)
   1015c:	a0200000 	sb	zero,0(at)
   10160:	3c010001 	lui	at,0x1
   10164:	00300821 	addu	at,at,s0
   10168:	a0390b01 	sb	t9,2817(at)
   1016c:	3c0f0000 	lui	t7,0x0
   10170:	91ef0000 	lbu	t7,0(t7)
   10174:	3c040000 	lui	a0,0x0
   10178:	24840000 	addiu	a0,a0,0
   1017c:	448f2000 	mtc1	t7,$f4
   10180:	3c063f80 	lui	a2,0x3f80
   10184:	05e10005 	bgez	t7,1019c <L80B7955C+0x5e0>
   10188:	46802120 	cvt.s.w	$f4,$f4
   1018c:	3c014f80 	lui	at,0x4f80
   10190:	44815000 	mtc1	at,$f10
   10194:	00000000 	nop
   10198:	460a2100 	add.s	$f4,$f4,$f10
   1019c:	44052000 	mfc1	a1,$f4
   101a0:	3c073d4c 	lui	a3,0x3d4c
   101a4:	0c000000 	jal	0 <func_80B699A0>
   101a8:	34e7cccd 	ori	a3,a3,0xcccd
   101ac:	3c010000 	lui	at,0x0
   101b0:	c4200000 	lwc1	$f0,0(at)
   101b4:	44803000 	mtc1	zero,$f6
   101b8:	00000000 	nop
   101bc:	4600303c 	c.lt.s	$f6,$f0
   101c0:	00000000 	nop
   101c4:	45000016 	bc1f	10220 <L80B7955C+0x664>
   101c8:	3c010000 	lui	at,0x0
   101cc:	c42c0000 	lwc1	$f12,0(at)
   101d0:	3c010000 	lui	at,0x0
   101d4:	c4280000 	lwc1	$f8,0(at)
   101d8:	3c010000 	lui	at,0x0
   101dc:	c42a0000 	lwc1	$f10,0(at)
   101e0:	46080102 	mul.s	$f4,$f0,$f8
   101e4:	3c040000 	lui	a0,0x0
   101e8:	24840000 	addiu	a0,a0,0
   101ec:	3c063f80 	lui	a2,0x3f80
   101f0:	3c073c23 	lui	a3,0x3c23
   101f4:	460a2080 	add.s	$f2,$f4,$f10
   101f8:	4602603c 	c.lt.s	$f12,$f2
   101fc:	00000000 	nop
   10200:	45020003 	bc1fl	10210 <L80B7955C+0x654>
   10204:	44051000 	mfc1	a1,$f2
   10208:	46006086 	mov.s	$f2,$f12
   1020c:	44051000 	mfc1	a1,$f2
   10210:	0c000000 	jal	0 <func_80B699A0>
   10214:	34e7d70a 	ori	a3,a3,0xd70a
   10218:	3c010000 	lui	at,0x0
   1021c:	c4200000 	lwc1	$f0,0(at)
   10220:	3c014120 	lui	at,0x4120
   10224:	44813000 	mtc1	at,$f6
   10228:	3c010000 	lui	at,0x0
   1022c:	c4240000 	lwc1	$f4,0(at)
   10230:	46003201 	sub.s	$f8,$f6,$f0
   10234:	44805000 	mtc1	zero,$f10
   10238:	3c040000 	lui	a0,0x0
   1023c:	24840000 	addiu	a0,a0,0
   10240:	46044082 	mul.s	$f2,$f8,$f4
   10244:	3c063f80 	lui	a2,0x3f80
   10248:	460a103c 	c.lt.s	$f2,$f10
   1024c:	00000000 	nop
   10250:	45020004 	bc1fl	10264 <L80B7955C+0x6a8>
   10254:	44051000 	mfc1	a1,$f2
   10258:	44801000 	mtc1	zero,$f2
   1025c:	00000000 	nop
   10260:	44051000 	mfc1	a1,$f2
   10264:	0c000000 	jal	0 <func_80B699A0>
   10268:	3c0740a0 	lui	a3,0x40a0
   1026c:	3c040000 	lui	a0,0x0
   10270:	24840000 	addiu	a0,a0,0
   10274:	3c010000 	lui	at,0x0
   10278:	c4280000 	lwc1	$f8,0(at)
   1027c:	c4860008 	lwc1	$f6,8(a0)
   10280:	240520da 	li	a1,8410
   10284:	3c060000 	lui	a2,0x0
   10288:	4608303c 	c.lt.s	$f6,$f8
   1028c:	00000000 	nop
   10290:	45000003 	bc1f	102a0 <L80B7955C+0x6e4>
   10294:	00000000 	nop
   10298:	0c000000 	jal	0 <func_80B699A0>
   1029c:	8cc60000 	lw	a2,0(a2)
   102a0:	3c090000 	lui	t1,0x0
   102a4:	91290000 	lbu	t1,0(t1)
   102a8:	3c040000 	lui	a0,0x0
   102ac:	24840000 	addiu	a0,a0,0
   102b0:	11200009 	beqz	t1,102d8 <L80B7955C+0x71c>
   102b4:	3c053f80 	lui	a1,0x3f80
   102b8:	3c040000 	lui	a0,0x0
   102bc:	24840000 	addiu	a0,a0,0
   102c0:	3c05c348 	lui	a1,0xc348
   102c4:	3c063f80 	lui	a2,0x3f80
   102c8:	0c000000 	jal	0 <func_80B699A0>
   102cc:	3c074000 	lui	a3,0x4000
   102d0:	10000003 	b	102e0 <L80B7955C+0x724>
   102d4:	00000000 	nop
   102d8:	0c000000 	jal	0 <func_80B699A0>
   102dc:	3c064000 	lui	a2,0x4000
   102e0:	3c010000 	lui	at,0x0
   102e4:	c4240000 	lwc1	$f4,0(at)
   102e8:	8fac0028 	lw	t4,40(sp)
   102ec:	3c010000 	lui	at,0x0
   102f0:	4600228d 	trunc.w.s	$f10,$f4
   102f4:	24180001 	li	t8,1
   102f8:	02002025 	move	a0,s0
   102fc:	44025000 	mfc1	v0,$f10
   10300:	444bf800 	cfc1	t3,$31
   10304:	44d8f800 	ctc1	t8,$31
   10308:	00021400 	sll	v0,v0,0x10
   1030c:	00021403 	sra	v0,v0,0x10
   10310:	a5820aba 	sh	v0,2746(t4)
   10314:	8fad0028 	lw	t5,40(sp)
   10318:	a5a20ab8 	sh	v0,2744(t5)
   1031c:	8fae0028 	lw	t6,40(sp)
   10320:	a5c20ab6 	sh	v0,2742(t6)
   10324:	c4260000 	lwc1	$f6,0(at)
   10328:	3c014f00 	lui	at,0x4f00
   1032c:	46003224 	cvt.w.s	$f8,$f6
   10330:	4458f800 	cfc1	t8,$31
   10334:	00000000 	nop
   10338:	33180078 	andi	t8,t8,0x78
   1033c:	53000013 	beqzl	t8,1038c <L80B7955C+0x7d0>
   10340:	44184000 	mfc1	t8,$f8
   10344:	44814000 	mtc1	at,$f8
   10348:	24180001 	li	t8,1
   1034c:	46083201 	sub.s	$f8,$f6,$f8
   10350:	44d8f800 	ctc1	t8,$31
   10354:	00000000 	nop
   10358:	46004224 	cvt.w.s	$f8,$f8
   1035c:	4458f800 	cfc1	t8,$31
   10360:	00000000 	nop
   10364:	33180078 	andi	t8,t8,0x78
   10368:	17000005 	bnez	t8,10380 <L80B7955C+0x7c4>
   1036c:	00000000 	nop
   10370:	44184000 	mfc1	t8,$f8
   10374:	3c018000 	lui	at,0x8000
   10378:	10000007 	b	10398 <L80B7955C+0x7dc>
   1037c:	0301c025 	or	t8,t8,at
   10380:	10000005 	b	10398 <L80B7955C+0x7dc>
   10384:	2418ffff 	li	t8,-1
   10388:	44184000 	mfc1	t8,$f8
   1038c:	00000000 	nop
   10390:	0700fffb 	bltz	t8,10380 <L80B7955C+0x7c4>
   10394:	00000000 	nop
   10398:	44cbf800 	ctc1	t3,$31
   1039c:	331900ff 	andi	t9,t8,0xff
   103a0:	5b20009a 	blezl	t9,1060c <L80B7955C+0xa50>
   103a4:	3c010001 	lui	at,0x1
   103a8:	0c000000 	jal	0 <func_80B699A0>
   103ac:	00002825 	move	a1,zero
   103b0:	3c010000 	lui	at,0x0
   103b4:	c4240000 	lwc1	$f4,0(at)
   103b8:	3c013f80 	lui	at,0x3f80
   103bc:	44815000 	mtc1	at,$f10
   103c0:	00402025 	move	a0,v0
   103c4:	e7a40058 	swc1	$f4,88(sp)
   103c8:	0c000000 	jal	0 <func_80B699A0>
   103cc:	e7aa005c 	swc1	$f10,92(sp)
   103d0:	44823000 	mtc1	v0,$f6
   103d4:	3c010000 	lui	at,0x0
   103d8:	c4240000 	lwc1	$f4,0(at)
   103dc:	46803220 	cvt.s.w	$f8,$f6
   103e0:	c7a6005c 	lwc1	$f6,92(sp)
   103e4:	3c010000 	lui	at,0x0
   103e8:	24090001 	li	t1,1
   103ec:	00001825 	move	v1,zero
   103f0:	46044282 	mul.s	$f10,$f8,$f4
   103f4:	c4240000 	lwc1	$f4,0(at)
   103f8:	3c014f00 	lui	at,0x4f00
   103fc:	46065200 	add.s	$f8,$f10,$f6
   10400:	444ff800 	cfc1	t7,$31
   10404:	44c9f800 	ctc1	t1,$31
   10408:	e7a80060 	swc1	$f8,96(sp)
   1040c:	460022a4 	cvt.w.s	$f10,$f4
   10410:	4449f800 	cfc1	t1,$31
   10414:	00000000 	nop
   10418:	31290078 	andi	t1,t1,0x78
   1041c:	51200013 	beqzl	t1,1046c <L80B7955C+0x8b0>
   10420:	44095000 	mfc1	t1,$f10
   10424:	44815000 	mtc1	at,$f10
   10428:	24090001 	li	t1,1
   1042c:	460a2281 	sub.s	$f10,$f4,$f10
   10430:	44c9f800 	ctc1	t1,$31
   10434:	00000000 	nop
   10438:	460052a4 	cvt.w.s	$f10,$f10
   1043c:	4449f800 	cfc1	t1,$31
   10440:	00000000 	nop
   10444:	31290078 	andi	t1,t1,0x78
   10448:	15200005 	bnez	t1,10460 <L80B7955C+0x8a4>
   1044c:	00000000 	nop
   10450:	44095000 	mfc1	t1,$f10
   10454:	3c018000 	lui	at,0x8000
   10458:	10000007 	b	10478 <L80B7955C+0x8bc>
   1045c:	01214825 	or	t1,t1,at
   10460:	10000005 	b	10478 <L80B7955C+0x8bc>
   10464:	2409ffff 	li	t1,-1
   10468:	44095000 	mfc1	t1,$f10
   1046c:	00000000 	nop
   10470:	0520fffb 	bltz	t1,10460 <L80B7955C+0x8a4>
   10474:	00000000 	nop
   10478:	44cff800 	ctc1	t7,$31
   1047c:	312a00ff 	andi	t2,t1,0xff
   10480:	19400061 	blez	t2,10608 <L80B7955C+0xa4c>
   10484:	3c01442f 	lui	at,0x442f
   10488:	44816000 	mtc1	at,$f12
   1048c:	0c000000 	jal	0 <func_80B699A0>
   10490:	a7a30076 	sh	v1,118(sp)
   10494:	c60600e0 	lwc1	$f6,224(s0)
   10498:	3c0142c8 	lui	at,0x42c8
   1049c:	44816000 	mtc1	at,$f12
   104a0:	46060200 	add.s	$f8,$f0,$f6
   104a4:	0c000000 	jal	0 <func_80B699A0>
   104a8:	e7a80064 	swc1	$f8,100(sp)
   104ac:	3c014316 	lui	at,0x4316
   104b0:	44812000 	mtc1	at,$f4
   104b4:	3c01432a 	lui	at,0x432a
   104b8:	44813000 	mtc1	at,$f6
   104bc:	46040280 	add.s	$f10,$f0,$f4
   104c0:	3c01442f 	lui	at,0x442f
   104c4:	44816000 	mtc1	at,$f12
   104c8:	46065201 	sub.s	$f8,$f10,$f6
   104cc:	0c000000 	jal	0 <func_80B699A0>
   104d0:	e7a80068 	swc1	$f8,104(sp)
   104d4:	c60400e8 	lwc1	$f4,232(s0)
   104d8:	3c014491 	lui	at,0x4491
   104dc:	44814000 	mtc1	at,$f8
   104e0:	46040280 	add.s	$f10,$f0,$f4
   104e4:	3c010001 	lui	at,0x1
   104e8:	34211d60 	ori	at,at,0x1d60
   104ec:	3c070000 	lui	a3,0x0
   104f0:	e7aa006c 	swc1	$f10,108(sp)
   104f4:	c7a6006c 	lwc1	$f6,108(sp)
   104f8:	87a30076 	lh	v1,118(sp)
   104fc:	24e70000 	addiu	a3,a3,0
   10500:	4608303c 	c.lt.s	$f6,$f8
   10504:	02012021 	addu	a0,s0,at
   10508:	27a50064 	addiu	a1,sp,100
   1050c:	27a6004c 	addiu	a2,sp,76
   10510:	45000014 	bc1f	10564 <L80B7955C+0x9a8>
   10514:	00000000 	nop
   10518:	0c000000 	jal	0 <func_80B699A0>
   1051c:	a7a30076 	sh	v1,118(sp)
   10520:	c7a40054 	lwc1	$f4,84(sp)
   10524:	44805000 	mtc1	zero,$f10
   10528:	87a30076 	lh	v1,118(sp)
   1052c:	8fac0028 	lw	t4,40(sp)
   10530:	460a203c 	c.lt.s	$f4,$f10
   10534:	27a50064 	addiu	a1,sp,100
   10538:	27a60058 	addiu	a2,sp,88
   1053c:	45020006 	bc1fl	10558 <L80B7955C+0x99c>
   10540:	8d841e10 	lw	a0,7696(t4)
   10544:	2463ffff 	addiu	v1,v1,-1
   10548:	00031c00 	sll	v1,v1,0x10
   1054c:	10000005 	b	10564 <L80B7955C+0x9a8>
   10550:	00031c03 	sra	v1,v1,0x10
   10554:	8d841e10 	lw	a0,7696(t4)
   10558:	0c000000 	jal	0 <func_80B699A0>
   1055c:	a7a30076 	sh	v1,118(sp)
   10560:	87a30076 	lh	v1,118(sp)
   10564:	3c010000 	lui	at,0x0
   10568:	444df800 	cfc1	t5,$31
   1056c:	240e0001 	li	t6,1
   10570:	44cef800 	ctc1	t6,$31
   10574:	c4260000 	lwc1	$f6,0(at)
   10578:	24630001 	addiu	v1,v1,1
   1057c:	00031c00 	sll	v1,v1,0x10
   10580:	46003224 	cvt.w.s	$f8,$f6
   10584:	00031c03 	sra	v1,v1,0x10
   10588:	3c014f00 	lui	at,0x4f00
   1058c:	444ef800 	cfc1	t6,$31
   10590:	00000000 	nop
   10594:	31ce0078 	andi	t6,t6,0x78
   10598:	51c00013 	beqzl	t6,105e8 <L80B7955C+0xa2c>
   1059c:	440e4000 	mfc1	t6,$f8
   105a0:	44814000 	mtc1	at,$f8
   105a4:	240e0001 	li	t6,1
   105a8:	46083201 	sub.s	$f8,$f6,$f8
   105ac:	44cef800 	ctc1	t6,$31
   105b0:	00000000 	nop
   105b4:	46004224 	cvt.w.s	$f8,$f8
   105b8:	444ef800 	cfc1	t6,$31
   105bc:	00000000 	nop
   105c0:	31ce0078 	andi	t6,t6,0x78
   105c4:	15c00005 	bnez	t6,105dc <L80B7955C+0xa20>
   105c8:	00000000 	nop
   105cc:	440e4000 	mfc1	t6,$f8
   105d0:	3c018000 	lui	at,0x8000
   105d4:	10000007 	b	105f4 <L80B7955C+0xa38>
   105d8:	01c17025 	or	t6,t6,at
   105dc:	10000005 	b	105f4 <L80B7955C+0xa38>
   105e0:	240effff 	li	t6,-1
   105e4:	440e4000 	mfc1	t6,$f8
   105e8:	00000000 	nop
   105ec:	05c0fffb 	bltz	t6,105dc <L80B7955C+0xa20>
   105f0:	00000000 	nop
   105f4:	31cb00ff 	andi	t3,t6,0xff
   105f8:	006b082a 	slt	at,v1,t3
   105fc:	44cdf800 	ctc1	t5,$31
   10600:	5420ffa1 	bnezl	at,10488 <L80B7955C+0x8cc>
   10604:	3c01442f 	lui	at,0x442f
   10608:	3c010001 	lui	at,0x1
   1060c:	34211d60 	ori	at,at,0x1d60
   10610:	3c050000 	lui	a1,0x0
   10614:	3c060000 	lui	a2,0x0
   10618:	3c070000 	lui	a3,0x0
   1061c:	24e70000 	addiu	a3,a3,0
   10620:	24c60000 	addiu	a2,a2,0
   10624:	24a50000 	addiu	a1,a1,0
   10628:	0c000000 	jal	0 <func_80B699A0>
   1062c:	02012021 	addu	a0,s0,at
   10630:	3c040000 	lui	a0,0x0
   10634:	24840000 	addiu	a0,a0,0
   10638:	0c000000 	jal	0 <func_80B699A0>
   1063c:	24052028 	li	a1,8232
   10640:	3c180000 	lui	t8,0x0
   10644:	97180000 	lhu	t8,0(t8)
   10648:	3c014f80 	lui	at,0x4f80
   1064c:	3c020000 	lui	v0,0x0
   10650:	44982000 	mtc1	t8,$f4
   10654:	3c0a0000 	lui	t2,0x0
   10658:	07010004 	bgez	t8,1066c <L80B7955C+0xab0>
   1065c:	46802020 	cvt.s.w	$f0,$f4
   10660:	44815000 	mtc1	at,$f10
   10664:	00000000 	nop
   10668:	460a0000 	add.s	$f0,$f0,$f10
   1066c:	46000182 	mul.s	$f6,$f0,$f0
   10670:	3c010000 	lui	at,0x0
   10674:	c4280000 	lwc1	$f8,0(at)
   10678:	3c013f00 	lui	at,0x3f00
   1067c:	44815000 	mtc1	at,$f10
   10680:	240f0001 	li	t7,1
   10684:	3c014f00 	lui	at,0x4f00
   10688:	46083102 	mul.s	$f4,$f6,$f8
   1068c:	460a2180 	add.s	$f6,$f4,$f10
   10690:	4459f800 	cfc1	t9,$31
   10694:	44cff800 	ctc1	t7,$31
   10698:	00000000 	nop
   1069c:	46003224 	cvt.w.s	$f8,$f6
   106a0:	444ff800 	cfc1	t7,$31
   106a4:	00000000 	nop
   106a8:	31ef0078 	andi	t7,t7,0x78
   106ac:	51e00013 	beqzl	t7,106fc <L80B7955C+0xb40>
   106b0:	440f4000 	mfc1	t7,$f8
   106b4:	44814000 	mtc1	at,$f8
   106b8:	240f0001 	li	t7,1
   106bc:	46083201 	sub.s	$f8,$f6,$f8
   106c0:	44cff800 	ctc1	t7,$31
   106c4:	00000000 	nop
   106c8:	46004224 	cvt.w.s	$f8,$f8
   106cc:	444ff800 	cfc1	t7,$31
   106d0:	00000000 	nop
   106d4:	31ef0078 	andi	t7,t7,0x78
   106d8:	15e00005 	bnez	t7,106f0 <L80B7955C+0xb34>
   106dc:	00000000 	nop
   106e0:	440f4000 	mfc1	t7,$f8
   106e4:	3c018000 	lui	at,0x8000
   106e8:	10000007 	b	10708 <L80B7955C+0xb4c>
   106ec:	01e17825 	or	t7,t7,at
   106f0:	10000005 	b	10708 <L80B7955C+0xb4c>
   106f4:	240fffff 	li	t7,-1
   106f8:	440f4000 	mfc1	t7,$f8
   106fc:	00000000 	nop
   10700:	05e0fffb 	bltz	t7,106f0 <L80B7955C+0xb34>
   10704:	00000000 	nop
   10708:	8c420000 	lw	v0,0(v0)
   1070c:	3c010000 	lui	at,0x0
   10710:	a42f1406 	sh	t7,5126(at)
   10714:	84491308 	lh	t1,4872(v0)
   10718:	44d9f800 	ctc1	t9,$31
   1071c:	11200009 	beqz	t1,10744 <L80B7955C+0xb88>
   10720:	00000000 	nop
   10724:	a4401308 	sh	zero,4872(v0)
   10728:	8d4a0000 	lw	t2,0(t2)
   1072c:	02002025 	move	a0,s0
   10730:	00003025 	move	a2,zero
   10734:	8545130a 	lh	a1,4874(t2)
   10738:	24a5407b 	addiu	a1,a1,16507
   1073c:	0c000000 	jal	0 <func_80B699A0>
   10740:	30a5ffff 	andi	a1,a1,0xffff
   10744:	3c040000 	lui	a0,0x0
   10748:	3c050000 	lui	a1,0x0
   1074c:	8ca50ec0 	lw	a1,3776(a1)
   10750:	0c000000 	jal	0 <func_80B699A0>
   10754:	24840000 	addiu	a0,a0,0
   10758:	8fbf0024 	lw	ra,36(sp)
   1075c:	8fb00020 	lw	s0,32(sp)
   10760:	27bd0128 	addiu	sp,sp,296
   10764:	03e00008 	jr	ra
   10768:	00000000 	nop

0001076c <func_80B7A10C>:
   1076c:	24010008 	li	at,8
   10770:	afa40000 	sw	a0,0(sp)
   10774:	afa60008 	sw	a2,8(sp)
   10778:	14a10007 	bne	a1,at,10798 <func_80B7A10C+0x2c>
   1077c:	afa7000c 	sw	a3,12(sp)
   10780:	8fa20010 	lw	v0,16(sp)
   10784:	8faf0014 	lw	t7,20(sp)
   10788:	844e0000 	lh	t6,0(v0)
   1078c:	85f80164 	lh	t8,356(t7)
   10790:	01d8c823 	subu	t9,t6,t8
   10794:	a4590000 	sh	t9,0(v0)
   10798:	03e00008 	jr	ra
   1079c:	00001025 	move	v0,zero

000107a0 <func_80B7A140>:
   107a0:	27bdffc8 	addiu	sp,sp,-56
   107a4:	24010008 	li	at,8
   107a8:	afbf0014 	sw	ra,20(sp)
   107ac:	afa40038 	sw	a0,56(sp)
   107b0:	afa60040 	sw	a2,64(sp)
   107b4:	14a10044 	bne	a1,at,108c8 <func_80B7A140+0x128>
   107b8:	afa70044 	sw	a3,68(sp)
   107bc:	8c850000 	lw	a1,0(a0)
   107c0:	3c060000 	lui	a2,0x0
   107c4:	24c60000 	addiu	a2,a2,0
   107c8:	27a40024 	addiu	a0,sp,36
   107cc:	240723ae 	li	a3,9134
   107d0:	0c000000 	jal	0 <func_80B699A0>
   107d4:	afa50034 	sw	a1,52(sp)
   107d8:	3c040000 	lui	a0,0x0
   107dc:	3c050000 	lui	a1,0x0
   107e0:	24a50000 	addiu	a1,a1,0
   107e4:	0c000000 	jal	0 <func_80B699A0>
   107e8:	24840000 	addiu	a0,a0,0
   107ec:	3c020000 	lui	v0,0x0
   107f0:	90420000 	lbu	v0,0(v0)
   107f4:	24010001 	li	at,1
   107f8:	8fa80034 	lw	t0,52(sp)
   107fc:	14410016 	bne	v0,at,10858 <func_80B7A140+0xb8>
   10800:	3c060000 	lui	a2,0x0
   10804:	8d0302c0 	lw	v1,704(t0)
   10808:	3c040600 	lui	a0,0x600
   1080c:	248474c8 	addiu	a0,a0,29896
   10810:	0004c900 	sll	t9,a0,0x4
   10814:	00194f02 	srl	t1,t9,0x1c
   10818:	246f0008 	addiu	t7,v1,8
   1081c:	ad0f02c0 	sw	t7,704(t0)
   10820:	00095080 	sll	t2,t1,0x2
   10824:	3c18de00 	lui	t8,0xde00
   10828:	3c0b0000 	lui	t3,0x0
   1082c:	016a5821 	addu	t3,t3,t2
   10830:	3c0100ff 	lui	at,0xff
   10834:	ac780000 	sw	t8,0(v1)
   10838:	8d6b0000 	lw	t3,0(t3)
   1083c:	3421ffff 	ori	at,at,0xffff
   10840:	00816024 	and	t4,a0,at
   10844:	3c018000 	lui	at,0x8000
   10848:	016c6821 	addu	t5,t3,t4
   1084c:	01a17021 	addu	t6,t5,at
   10850:	10000017 	b	108b0 <func_80B7A140+0x110>
   10854:	ac6e0004 	sw	t6,4(v1)
   10858:	24010002 	li	at,2
   1085c:	14410014 	bne	v0,at,108b0 <func_80B7A140+0x110>
   10860:	3c18de00 	lui	t8,0xde00
   10864:	8d0302c0 	lw	v1,704(t0)
   10868:	3c040600 	lui	a0,0x600
   1086c:	24847350 	addiu	a0,a0,29520
   10870:	0004c900 	sll	t9,a0,0x4
   10874:	00194f02 	srl	t1,t9,0x1c
   10878:	246f0008 	addiu	t7,v1,8
   1087c:	ad0f02c0 	sw	t7,704(t0)
   10880:	00095080 	sll	t2,t1,0x2
   10884:	3c0b0000 	lui	t3,0x0
   10888:	016a5821 	addu	t3,t3,t2
   1088c:	3c0100ff 	lui	at,0xff
   10890:	ac780000 	sw	t8,0(v1)
   10894:	8d6b0000 	lw	t3,0(t3)
   10898:	3421ffff 	ori	at,at,0xffff
   1089c:	00816024 	and	t4,a0,at
   108a0:	3c018000 	lui	at,0x8000
   108a4:	016c6821 	addu	t5,t3,t4
   108a8:	01a17021 	addu	t6,t5,at
   108ac:	ac6e0004 	sw	t6,4(v1)
   108b0:	8faf0038 	lw	t7,56(sp)
   108b4:	27a40024 	addiu	a0,sp,36
   108b8:	24c60000 	addiu	a2,a2,0
   108bc:	240723b6 	li	a3,9142
   108c0:	0c000000 	jal	0 <func_80B699A0>
   108c4:	8de50000 	lw	a1,0(t7)
   108c8:	8fbf0014 	lw	ra,20(sp)
   108cc:	27bd0038 	addiu	sp,sp,56
   108d0:	03e00008 	jr	ra
   108d4:	00000000 	nop

000108d8 <func_80B7A278>:
   108d8:	27bdff98 	addiu	sp,sp,-104
   108dc:	afb00028 	sw	s0,40(sp)
   108e0:	00a08025 	move	s0,a1
   108e4:	afbf002c 	sw	ra,44(sp)
   108e8:	afa40068 	sw	a0,104(sp)
   108ec:	8ca50000 	lw	a1,0(a1)
   108f0:	3c060000 	lui	a2,0x0
   108f4:	24c60000 	addiu	a2,a2,0
   108f8:	27a40048 	addiu	a0,sp,72
   108fc:	240723c4 	li	a3,9156
   10900:	0c000000 	jal	0 <func_80B699A0>
   10904:	afa50058 	sw	a1,88(sp)
   10908:	0c000000 	jal	0 <func_80B699A0>
   1090c:	8e040000 	lw	a0,0(s0)
   10910:	0c000000 	jal	0 <func_80B699A0>
   10914:	8e040000 	lw	a0,0(s0)
   10918:	8fa80068 	lw	t0,104(sp)
   1091c:	3c010000 	lui	at,0x0
   10920:	c4240000 	lwc1	$f4,0(at)
   10924:	c50200ec 	lwc1	$f2,236(t0)
   10928:	4604103c 	c.lt.s	$f2,$f4
   1092c:	00000000 	nop
   10930:	4500002e 	bc1f	109ec <func_80B7A278+0x114>
   10934:	3c0142c8 	lui	at,0x42c8
   10938:	44813000 	mtc1	at,$f6
   1093c:	c50000e4 	lwc1	$f0,228(t0)
   10940:	3c0fdb06 	lui	t7,0xdb06
   10944:	46023200 	add.s	$f8,$f6,$f2
   10948:	35ef0020 	ori	t7,t7,0x20
   1094c:	8fa90058 	lw	t1,88(sp)
   10950:	46000005 	abs.s	$f0,$f0
   10954:	4608003c 	c.lt.s	$f0,$f8
   10958:	00000000 	nop
   1095c:	45000023 	bc1f	109ec <func_80B7A278+0x114>
   10960:	00000000 	nop
   10964:	8d2202c0 	lw	v0,704(t1)
   10968:	3c040000 	lui	a0,0x0
   1096c:	3c0100ff 	lui	at,0xff
   10970:	244e0008 	addiu	t6,v0,8
   10974:	ad2e02c0 	sw	t6,704(t1)
   10978:	ac4f0000 	sw	t7,0(v0)
   1097c:	85180160 	lh	t8,352(t0)
   10980:	3c0e0000 	lui	t6,0x0
   10984:	3421ffff 	ori	at,at,0xffff
   10988:	0018c880 	sll	t9,t8,0x2
   1098c:	00992021 	addu	a0,a0,t9
   10990:	8c840000 	lw	a0,0(a0)
   10994:	3c190000 	lui	t9,0x0
   10998:	27390000 	addiu	t9,t9,0
   1099c:	00045900 	sll	t3,a0,0x4
   109a0:	000b6702 	srl	t4,t3,0x1c
   109a4:	000c6880 	sll	t5,t4,0x2
   109a8:	01cd7021 	addu	t6,t6,t5
   109ac:	8dce0000 	lw	t6,0(t6)
   109b0:	00815024 	and	t2,a0,at
   109b4:	3c018000 	lui	at,0x8000
   109b8:	014e7821 	addu	t7,t2,t6
   109bc:	01e1c021 	addu	t8,t7,at
   109c0:	ac580004 	sw	t8,4(v0)
   109c4:	910701da 	lbu	a3,474(t0)
   109c8:	8d0601f8 	lw	a2,504(t0)
   109cc:	8d0501dc 	lw	a1,476(t0)
   109d0:	3c0b0000 	lui	t3,0x0
   109d4:	256b0000 	addiu	t3,t3,0
   109d8:	afab0014 	sw	t3,20(sp)
   109dc:	afa80018 	sw	t0,24(sp)
   109e0:	afb90010 	sw	t9,16(sp)
   109e4:	0c000000 	jal	0 <func_80B699A0>
   109e8:	02002025 	move	a0,s0
   109ec:	0c000000 	jal	0 <func_80B699A0>
   109f0:	02002025 	move	a0,s0
   109f4:	3c040001 	lui	a0,0x1
   109f8:	00902021 	addu	a0,a0,s0
   109fc:	8c841e10 	lw	a0,7696(a0)
   10a00:	0c000000 	jal	0 <func_80B699A0>
   10a04:	02002825 	move	a1,s0
   10a08:	0c000000 	jal	0 <func_80B699A0>
   10a0c:	02002025 	move	a0,s0
   10a10:	0c000000 	jal	0 <func_80B699A0>
   10a14:	02002025 	move	a0,s0
   10a18:	3c030000 	lui	v1,0x0
   10a1c:	24630000 	addiu	v1,v1,0
   10a20:	84620000 	lh	v0,0(v1)
   10a24:	1040001b 	beqz	v0,10a94 <func_80B7A278+0x1bc>
   10a28:	244cffff 	addiu	t4,v0,-1
   10a2c:	a46c0000 	sh	t4,0(v1)
   10a30:	846d0000 	lh	t5,0(v1)
   10a34:	3c0a0000 	lui	t2,0x0
   10a38:	15a00016 	bnez	t5,10a94 <func_80B7A278+0x1bc>
   10a3c:	00000000 	nop
   10a40:	914a0000 	lbu	t2,0(t2)
   10a44:	24010001 	li	at,1
   10a48:	11410005 	beq	t2,at,10a60 <func_80B7A278+0x188>
   10a4c:	00000000 	nop
   10a50:	0c000000 	jal	0 <func_80B699A0>
   10a54:	24040019 	li	a0,25
   10a58:	10000003 	b	10a68 <func_80B7A278+0x190>
   10a5c:	00000000 	nop
   10a60:	0c000000 	jal	0 <func_80B699A0>
   10a64:	24040027 	li	a0,39
   10a68:	3c0e0000 	lui	t6,0x0
   10a6c:	91ce0000 	lbu	t6,0(t6)
   10a70:	24010001 	li	at,1
   10a74:	11c10005 	beq	t6,at,10a8c <func_80B7A278+0x1b4>
   10a78:	00000000 	nop
   10a7c:	0c000000 	jal	0 <func_80B699A0>
   10a80:	24040019 	li	a0,25
   10a84:	10000003 	b	10a94 <func_80B7A278+0x1bc>
   10a88:	00000000 	nop
   10a8c:	0c000000 	jal	0 <func_80B699A0>
   10a90:	24040027 	li	a0,39
   10a94:	3c0f0000 	lui	t7,0x0
   10a98:	85ef0000 	lh	t7,0(t7)
   10a9c:	3c180000 	lui	t8,0x0
   10aa0:	51e00022 	beqzl	t7,10b2c <func_80B7A278+0x254>
   10aa4:	240d0001 	li	t5,1
   10aa8:	93180000 	lbu	t8,0(t8)
   10aac:	5300001f 	beqzl	t8,10b2c <func_80B7A278+0x254>
   10ab0:	240d0001 	li	t5,1
   10ab4:	0c000000 	jal	0 <func_80B699A0>
   10ab8:	02002025 	move	a0,s0
   10abc:	3c040000 	lui	a0,0x0
   10ac0:	0c000000 	jal	0 <func_80B699A0>
   10ac4:	24840000 	addiu	a0,a0,0
   10ac8:	3c190000 	lui	t9,0x0
   10acc:	27390000 	addiu	t9,t9,0
   10ad0:	3c050000 	lui	a1,0x0
   10ad4:	3c060000 	lui	a2,0x0
   10ad8:	3c070000 	lui	a3,0x0
   10adc:	24e70000 	addiu	a3,a3,0
   10ae0:	24c60000 	addiu	a2,a2,0
   10ae4:	24a50000 	addiu	a1,a1,0
   10ae8:	afb90010 	sw	t9,16(sp)
   10aec:	0c000000 	jal	0 <func_80B699A0>
   10af0:	02002025 	move	a0,s0
   10af4:	3c050000 	lui	a1,0x0
   10af8:	3c060000 	lui	a2,0x0
   10afc:	24c60000 	addiu	a2,a2,0
   10b00:	24a50000 	addiu	a1,a1,0
   10b04:	0c000000 	jal	0 <func_80B699A0>
   10b08:	02002025 	move	a0,s0
   10b0c:	26020014 	addiu	v0,s0,20
   10b10:	804b0014 	lb	t3,20(v0)
   10b14:	3c010000 	lui	at,0x0
   10b18:	a42b0000 	sh	t3,0(at)
   10b1c:	804c0015 	lb	t4,21(v0)
   10b20:	3c010000 	lui	at,0x0
   10b24:	a42c0000 	sh	t4,0(at)
   10b28:	240d0001 	li	t5,1
   10b2c:	3c010000 	lui	at,0x0
   10b30:	a02d0000 	sb	t5,0(at)
   10b34:	3c014302 	lui	at,0x4302
   10b38:	44816000 	mtc1	at,$f12
   10b3c:	3c014220 	lui	at,0x4220
   10b40:	44817000 	mtc1	at,$f14
   10b44:	3c0644a2 	lui	a2,0x44a2
   10b48:	34c68000 	ori	a2,a2,0x8000
   10b4c:	0c000000 	jal	0 <func_80B699A0>
   10b50:	00003825 	move	a3,zero
   10b54:	3c010000 	lui	at,0x0
   10b58:	c42c0000 	lwc1	$f12,0(at)
   10b5c:	3c010000 	lui	at,0x0
   10b60:	3c063e0f 	lui	a2,0x3e0f
   10b64:	34c65c29 	ori	a2,a2,0x5c29
   10b68:	c42e0000 	lwc1	$f14,0(at)
   10b6c:	0c000000 	jal	0 <func_80B699A0>
   10b70:	24070001 	li	a3,1
   10b74:	8fa70058 	lw	a3,88(sp)
   10b78:	3c0eda38 	lui	t6,0xda38
   10b7c:	35ce0003 	ori	t6,t6,0x3
   10b80:	8ce202c0 	lw	v0,704(a3)
   10b84:	3c050000 	lui	a1,0x0
   10b88:	24a50000 	addiu	a1,a1,0
   10b8c:	244a0008 	addiu	t2,v0,8
   10b90:	acea02c0 	sw	t2,704(a3)
   10b94:	ac4e0000 	sw	t6,0(v0)
   10b98:	8e040000 	lw	a0,0(s0)
   10b9c:	24062451 	li	a2,9297
   10ba0:	0c000000 	jal	0 <func_80B699A0>
   10ba4:	afa20040 	sw	v0,64(sp)
   10ba8:	8fa30040 	lw	v1,64(sp)
   10bac:	3c18da38 	lui	t8,0xda38
   10bb0:	37180003 	ori	t8,t8,0x3
   10bb4:	ac620004 	sw	v0,4(v1)
   10bb8:	8fa70058 	lw	a3,88(sp)
   10bbc:	3c050000 	lui	a1,0x0
   10bc0:	24a50000 	addiu	a1,a1,0
   10bc4:	8ce202d0 	lw	v0,720(a3)
   10bc8:	24062452 	li	a2,9298
   10bcc:	244f0008 	addiu	t7,v0,8
   10bd0:	acef02d0 	sw	t7,720(a3)
   10bd4:	ac580000 	sw	t8,0(v0)
   10bd8:	8e040000 	lw	a0,0(s0)
   10bdc:	0c000000 	jal	0 <func_80B699A0>
   10be0:	afa2003c 	sw	v0,60(sp)
   10be4:	8fa3003c 	lw	v1,60(sp)
   10be8:	3c0c0601 	lui	t4,0x601
   10bec:	258c53d0 	addiu	t4,t4,21456
   10bf0:	ac620004 	sw	v0,4(v1)
   10bf4:	8fb90058 	lw	t9,88(sp)
   10bf8:	3c04de00 	lui	a0,0xde00
   10bfc:	3c0e0601 	lui	t6,0x601
   10c00:	8f2202c0 	lw	v0,704(t9)
   10c04:	25ce5470 	addiu	t6,t6,21616
   10c08:	3c0f0000 	lui	t7,0x0
   10c0c:	244b0008 	addiu	t3,v0,8
   10c10:	af2b02c0 	sw	t3,704(t9)
   10c14:	ac4c0004 	sw	t4,4(v0)
   10c18:	ac440000 	sw	a0,0(v0)
   10c1c:	8fad0058 	lw	t5,88(sp)
   10c20:	3c180000 	lui	t8,0x0
   10c24:	8da202d0 	lw	v0,720(t5)
   10c28:	244a0008 	addiu	t2,v0,8
   10c2c:	adaa02d0 	sw	t2,720(t5)
   10c30:	ac4e0004 	sw	t6,4(v0)
   10c34:	ac440000 	sw	a0,0(v0)
   10c38:	85ef0000 	lh	t7,0(t7)
   10c3c:	11e00007 	beqz	t7,10c5c <func_80B7A278+0x384>
   10c40:	00000000 	nop
   10c44:	93180000 	lbu	t8,0(t8)
   10c48:	24010002 	li	at,2
   10c4c:	17010003 	bne	t8,at,10c5c <func_80B7A278+0x384>
   10c50:	00000000 	nop
   10c54:	0c000000 	jal	0 <func_80B699A0>
   10c58:	02002025 	move	a0,s0
   10c5c:	3c060000 	lui	a2,0x0
   10c60:	24c60000 	addiu	a2,a2,0
   10c64:	27a40048 	addiu	a0,sp,72
   10c68:	8e050000 	lw	a1,0(s0)
   10c6c:	0c000000 	jal	0 <func_80B699A0>
   10c70:	24072459 	li	a3,9305
   10c74:	8fbf002c 	lw	ra,44(sp)
   10c78:	8fb00028 	lw	s0,40(sp)
   10c7c:	27bd0068 	addiu	sp,sp,104
   10c80:	03e00008 	jr	ra
   10c84:	00000000 	nop
	...
