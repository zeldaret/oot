
build/src/overlays/actors/ovl_Boss_Ganon2/z_boss_ganon2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808FCF40>:
       0:	3c010000 	lui	at,0x0
       4:	ac240000 	sw	a0,0(at)
       8:	3c010000 	lui	at,0x0
       c:	ac250000 	sw	a1,0(at)
      10:	3c010000 	lui	at,0x0
      14:	03e00008 	jr	ra
      18:	ac260000 	sw	a2,0(at)

0000001c <func_808FCF5C>:
      1c:	3c020000 	lui	v0,0x0
      20:	24420000 	addiu	v0,v0,0
      24:	8c4e0000 	lw	t6,0(v0)
      28:	3c013f80 	lui	at,0x3f80
      2c:	44810000 	mtc1	at,$f0
      30:	000e7880 	sll	t7,t6,0x2
      34:	01ee7823 	subu	t7,t7,t6
      38:	000f7880 	sll	t7,t7,0x2
      3c:	01ee7823 	subu	t7,t7,t6
      40:	000f7880 	sll	t7,t7,0x2
      44:	01ee7823 	subu	t7,t7,t6
      48:	000f7880 	sll	t7,t7,0x2
      4c:	2401763d 	li	at,30269
      50:	01ee7823 	subu	t7,t7,t6
      54:	01e1001a 	div	zero,t7,at
      58:	3c030000 	lui	v1,0x0
      5c:	24630000 	addiu	v1,v1,0
      60:	8c790000 	lw	t9,0(v1)
      64:	00006810 	mfhi	t5
      68:	24017663 	li	at,30307
      6c:	00194080 	sll	t0,t9,0x2
      70:	01194023 	subu	t0,t0,t9
      74:	00084080 	sll	t0,t0,0x2
      78:	01194023 	subu	t0,t0,t9
      7c:	00084080 	sll	t0,t0,0x2
      80:	01194023 	subu	t0,t0,t9
      84:	00084080 	sll	t0,t0,0x2
      88:	0101001a 	div	zero,t0,at
      8c:	3c040000 	lui	a0,0x0
      90:	24840000 	addiu	a0,a0,0
      94:	8c8a0000 	lw	t2,0(a0)
      98:	00007010 	mfhi	t6
      9c:	24017673 	li	at,30323
      a0:	000a5880 	sll	t3,t2,0x2
      a4:	016a5821 	addu	t3,t3,t2
      a8:	000b5880 	sll	t3,t3,0x2
      ac:	016a5821 	addu	t3,t3,t2
      b0:	000b5880 	sll	t3,t3,0x2
      b4:	016a5821 	addu	t3,t3,t2
      b8:	000b5840 	sll	t3,t3,0x1
      bc:	0161001a 	div	zero,t3,at
      c0:	448d2000 	mtc1	t5,$f4
      c4:	448e8000 	mtc1	t6,$f16
      c8:	00007810 	mfhi	t7
      cc:	468021a0 	cvt.s.w	$f6,$f4
      d0:	ac4d0000 	sw	t5,0(v0)
      d4:	ac6e0000 	sw	t6,0(v1)
      d8:	ac8f0000 	sw	t7,0(a0)
      dc:	3c010000 	lui	at,0x0
      e0:	468084a0 	cvt.s.w	$f18,$f16
      e4:	c4280000 	lwc1	$f8,0(at)
      e8:	3c010000 	lui	at,0x0
      ec:	c4240000 	lwc1	$f4,0(at)
      f0:	448f8000 	mtc1	t7,$f16
      f4:	46083283 	div.s	$f10,$f6,$f8
      f8:	3c010000 	lui	at,0x0
      fc:	46049183 	div.s	$f6,$f18,$f4
     100:	c4240000 	lwc1	$f4,0(at)
     104:	468084a0 	cvt.s.w	$f18,$f16
     108:	46065200 	add.s	$f8,$f10,$f6
     10c:	46049283 	div.s	$f10,$f18,$f4
     110:	460a4080 	add.s	$f2,$f8,$f10
     114:	4602003e 	c.le.s	$f0,$f2
     118:	00000000 	nop
     11c:	45000006 	bc1f	138 <func_808FCF5C+0x11c>
     120:	00000000 	nop
     124:	46001081 	sub.s	$f2,$f2,$f0
     128:	4602003e 	c.le.s	$f0,$f2
     12c:	00000000 	nop
     130:	4503fffd 	bc1tl	128 <func_808FCF5C+0x10c>
     134:	46001081 	sub.s	$f2,$f2,$f0
     138:	03e00008 	jr	ra
     13c:	46001005 	abs.s	$f0,$f2

00000140 <func_808FD080>:
     140:	c4c40000 	lwc1	$f4,0(a2)
     144:	8cb8001c 	lw	t8,28(a1)
     148:	00041180 	sll	v0,a0,0x6
     14c:	4600218d 	trunc.w.s	$f6,$f4
     150:	0302c821 	addu	t9,t8,v0
     154:	440f3000 	mfc1	t7,$f6
     158:	00000000 	nop
     15c:	a72f0030 	sh	t7,48(t9)
     160:	c4c80004 	lwc1	$f8,4(a2)
     164:	8caa001c 	lw	t2,28(a1)
     168:	4600428d 	trunc.w.s	$f10,$f8
     16c:	01425821 	addu	t3,t2,v0
     170:	44095000 	mfc1	t1,$f10
     174:	00000000 	nop
     178:	a5690032 	sh	t1,50(t3)
     17c:	c4d00008 	lwc1	$f16,8(a2)
     180:	8cae001c 	lw	t6,28(a1)
     184:	4600848d 	trunc.w.s	$f18,$f16
     188:	01c2c021 	addu	t8,t6,v0
     18c:	440d9000 	mfc1	t5,$f18
     190:	00000000 	nop
     194:	a70d0034 	sh	t5,52(t8)
     198:	8caf001c 	lw	t7,28(a1)
     19c:	01e21821 	addu	v1,t7,v0
     1a0:	8479002e 	lh	t9,46(v1)
     1a4:	c4640038 	lwc1	$f4,56(v1)
     1a8:	44993000 	mtc1	t9,$f6
     1ac:	00000000 	nop
     1b0:	46803220 	cvt.s.w	$f8,$f6
     1b4:	46082282 	mul.s	$f10,$f4,$f8
     1b8:	4600540d 	trunc.w.s	$f16,$f10
     1bc:	440a8000 	mfc1	t2,$f16
     1c0:	03e00008 	jr	ra
     1c4:	a46a0036 	sh	t2,54(v1)

000001c8 <func_808FD108>:
     1c8:	27bdffb0 	addiu	sp,sp,-80
     1cc:	3c010001 	lui	at,0x1
     1d0:	afb00018 	sw	s0,24(sp)
     1d4:	afa40050 	sw	a0,80(sp)
     1d8:	342117a4 	ori	at,at,0x17a4
     1dc:	00a08025 	move	s0,a1
     1e0:	00a12021 	addu	a0,a1,at
     1e4:	afbf001c 	sw	ra,28(sp)
     1e8:	00062c00 	sll	a1,a2,0x10
     1ec:	afa7005c 	sw	a3,92(sp)
     1f0:	0c000000 	jal	0 <func_808FCF40>
     1f4:	00052c03 	sra	a1,a1,0x10
     1f8:	00027100 	sll	t6,v0,0x4
     1fc:	01c27021 	addu	t6,t6,v0
     200:	000e7080 	sll	t6,t6,0x2
     204:	020e7821 	addu	t7,s0,t6
     208:	3c180001 	lui	t8,0x1
     20c:	030fc021 	addu	t8,t8,t7
     210:	8f1817b4 	lw	t8,6068(t8)
     214:	93aa005f 	lbu	t2,95(sp)
     218:	3c018000 	lui	at,0x8000
     21c:	0301c821 	addu	t9,t8,at
     220:	3c010000 	lui	at,0x0
     224:	11400025 	beqz	t2,2bc <func_808FD108+0xf4>
     228:	ac390018 	sw	t9,24(at)
     22c:	8e050000 	lw	a1,0(s0)
     230:	3c060000 	lui	a2,0x0
     234:	24c60000 	addiu	a2,a2,0
     238:	afa20048 	sw	v0,72(sp)
     23c:	27a40034 	addiu	a0,sp,52
     240:	24070316 	li	a3,790
     244:	0c000000 	jal	0 <func_808FCF40>
     248:	afa50044 	sw	a1,68(sp)
     24c:	8fa80044 	lw	t0,68(sp)
     250:	8fa90048 	lw	t1,72(sp)
     254:	3c05db06 	lui	a1,0xdb06
     258:	8d0302c0 	lw	v1,704(t0)
     25c:	00096100 	sll	t4,t1,0x4
     260:	01896021 	addu	t4,t4,t1
     264:	000c6080 	sll	t4,t4,0x2
     268:	246b0008 	addiu	t3,v1,8
     26c:	020c2021 	addu	a0,s0,t4
     270:	34a50018 	ori	a1,a1,0x18
     274:	3c010001 	lui	at,0x1
     278:	ad0b02c0 	sw	t3,704(t0)
     27c:	00812021 	addu	a0,a0,at
     280:	ac650000 	sw	a1,0(v1)
     284:	8c8d17b4 	lw	t5,6068(a0)
     288:	3c060000 	lui	a2,0x0
     28c:	24c60000 	addiu	a2,a2,0
     290:	ac6d0004 	sw	t5,4(v1)
     294:	8d0302d0 	lw	v1,720(t0)
     298:	2407031f 	li	a3,799
     29c:	246e0008 	addiu	t6,v1,8
     2a0:	ad0e02d0 	sw	t6,720(t0)
     2a4:	ac650000 	sw	a1,0(v1)
     2a8:	8c8f17b4 	lw	t7,6068(a0)
     2ac:	27a40034 	addiu	a0,sp,52
     2b0:	ac6f0004 	sw	t7,4(v1)
     2b4:	0c000000 	jal	0 <func_808FCF40>
     2b8:	8e050000 	lw	a1,0(s0)
     2bc:	8fbf001c 	lw	ra,28(sp)
     2c0:	8fb00018 	lw	s0,24(sp)
     2c4:	27bd0050 	addiu	sp,sp,80
     2c8:	03e00008 	jr	ra
     2cc:	00000000 	nop

000002d0 <func_808FD210>:
     2d0:	3c020001 	lui	v0,0x1
     2d4:	00441021 	addu	v0,v0,a0
     2d8:	8c421e10 	lw	v0,7696(v0)
     2dc:	240e0001 	li	t6,1
     2e0:	3c0141c8 	lui	at,0x41c8
     2e4:	a04e0000 	sb	t6,0(v0)
     2e8:	8cb80000 	lw	t8,0(a1)
     2ec:	44812000 	mtc1	at,$f4
     2f0:	3c014170 	lui	at,0x4170
     2f4:	ac580004 	sw	t8,4(v0)
     2f8:	8caf0004 	lw	t7,4(a1)
     2fc:	44800000 	mtc1	zero,$f0
     300:	44813000 	mtc1	at,$f6
     304:	ac4f0008 	sw	t7,8(v0)
     308:	8cb80008 	lw	t8,8(a1)
     30c:	3c01bf80 	lui	at,0xbf80
     310:	44814000 	mtc1	at,$f8
     314:	a440002e 	sh	zero,46(v0)
     318:	a0400001 	sb	zero,1(v0)
     31c:	e4440010 	swc1	$f4,16(v0)
     320:	e4400018 	swc1	$f0,24(v0)
     324:	e440001c 	swc1	$f0,28(v0)
     328:	e4400024 	swc1	$f0,36(v0)
     32c:	e4460014 	swc1	$f6,20(v0)
     330:	ac58000c 	sw	t8,12(v0)
     334:	03e00008 	jr	ra
     338:	e4480020 	swc1	$f8,32(v0)

0000033c <func_808FD27C>:
     33c:	27bdffe0 	addiu	sp,sp,-32
     340:	afb00018 	sw	s0,24(sp)
     344:	3c100001 	lui	s0,0x1
     348:	afbf001c 	sw	ra,28(sp)
     34c:	afa7002c 	sw	a3,44(sp)
     350:	02048021 	addu	s0,s0,a0
     354:	8e101e10 	lw	s0,7696(s0)
     358:	00001025 	move	v0,zero
     35c:	920e0000 	lbu	t6,0(s0)
     360:	24420001 	addiu	v0,v0,1
     364:	00021400 	sll	v0,v0,0x10
     368:	15c00024 	bnez	t6,3fc <func_808FD27C+0xc0>
     36c:	00021403 	sra	v0,v0,0x10
     370:	240f0002 	li	t7,2
     374:	a20f0000 	sb	t7,0(s0)
     378:	8cb90000 	lw	t9,0(a1)
     37c:	44800000 	mtc1	zero,$f0
     380:	3c01bf80 	lui	at,0xbf80
     384:	ae190004 	sw	t9,4(s0)
     388:	8cb80004 	lw	t8,4(a1)
     38c:	44812000 	mtc1	at,$f4
     390:	3c010000 	lui	at,0x0
     394:	ae180008 	sw	t8,8(s0)
     398:	8cb90008 	lw	t9,8(a1)
     39c:	ae19000c 	sw	t9,12(s0)
     3a0:	8cc90000 	lw	t1,0(a2)
     3a4:	ae090010 	sw	t1,16(s0)
     3a8:	8cc80004 	lw	t0,4(a2)
     3ac:	ae080014 	sw	t0,20(s0)
     3b0:	8cc90008 	lw	t1,8(a2)
     3b4:	e600001c 	swc1	$f0,28(s0)
     3b8:	e6000024 	swc1	$f0,36(s0)
     3bc:	e6040020 	swc1	$f4,32(s0)
     3c0:	ae090018 	sw	t1,24(s0)
     3c4:	0c000000 	jal	0 <func_808FCF40>
     3c8:	c42c0000 	lwc1	$f12,0(at)
     3cc:	e6000040 	swc1	$f0,64(s0)
     3d0:	3c010000 	lui	at,0x0
     3d4:	0c000000 	jal	0 <func_808FCF40>
     3d8:	c42c0000 	lwc1	$f12,0(at)
     3dc:	e600003c 	swc1	$f0,60(s0)
     3e0:	3c010000 	lui	at,0x0
     3e4:	0c000000 	jal	0 <func_808FCF40>
     3e8:	c42c0000 	lwc1	$f12,0(at)
     3ec:	e6000038 	swc1	$f0,56(s0)
     3f0:	c7a6002c 	lwc1	$f6,44(sp)
     3f4:	10000004 	b	408 <func_808FD27C+0xcc>
     3f8:	e6060034 	swc1	$f6,52(s0)
     3fc:	28410064 	slti	at,v0,100
     400:	1420ffd6 	bnez	at,35c <func_808FD27C+0x20>
     404:	26100044 	addiu	s0,s0,68
     408:	8fbf001c 	lw	ra,28(sp)
     40c:	8fb00018 	lw	s0,24(sp)
     410:	27bd0020 	addiu	sp,sp,32
     414:	03e00008 	jr	ra
     418:	00000000 	nop

0000041c <BossGanon2_Init>:
     41c:	27bdffc0 	addiu	sp,sp,-64
     420:	afb10028 	sw	s1,40(sp)
     424:	afb00024 	sw	s0,36(sp)
     428:	3c060000 	lui	a2,0x0
     42c:	3c010001 	lui	at,0x1
     430:	24c60000 	addiu	a2,a2,0
     434:	afbf002c 	sw	ra,44(sp)
     438:	00250821 	addu	at,at,a1
     43c:	00808025 	move	s0,a0
     440:	00a08825 	move	s1,a1
     444:	ac261e10 	sw	a2,7696(at)
     448:	00001025 	move	v0,zero
     44c:	24030044 	li	v1,68
     450:	00430019 	multu	v0,v1
     454:	24420001 	addiu	v0,v0,1
     458:	00021400 	sll	v0,v0,0x10
     45c:	00021403 	sra	v0,v0,0x10
     460:	28410064 	slti	at,v0,100
     464:	00007012 	mflo	t6
     468:	00ce7821 	addu	t7,a2,t6
     46c:	1420fff8 	bnez	at,450 <BossGanon2_Init+0x34>
     470:	a1e00000 	sb	zero,0(t7)
     474:	241800ff 	li	t8,255
     478:	2419001e 	li	t9,30
     47c:	a21800ae 	sb	t8,174(s0)
     480:	a21900af 	sb	t9,175(s0)
     484:	26050424 	addiu	a1,s0,1060
     488:	afa50030 	sw	a1,48(sp)
     48c:	0c000000 	jal	0 <func_808FCF40>
     490:	02202025 	move	a0,s1
     494:	3c070000 	lui	a3,0x0
     498:	26080464 	addiu	t0,s0,1124
     49c:	8fa50030 	lw	a1,48(sp)
     4a0:	afa80010 	sw	t0,16(sp)
     4a4:	24e70000 	addiu	a3,a3,0
     4a8:	02202025 	move	a0,s1
     4ac:	0c000000 	jal	0 <func_808FCF40>
     4b0:	02003025 	move	a2,s0
     4b4:	26050444 	addiu	a1,s0,1092
     4b8:	afa50030 	sw	a1,48(sp)
     4bc:	0c000000 	jal	0 <func_808FCF40>
     4c0:	02202025 	move	a0,s1
     4c4:	3c070000 	lui	a3,0x0
     4c8:	26090864 	addiu	t1,s0,2148
     4cc:	8fa50030 	lw	a1,48(sp)
     4d0:	afa90010 	sw	t1,16(sp)
     4d4:	24e70000 	addiu	a3,a3,0
     4d8:	02202025 	move	a0,s1
     4dc:	0c000000 	jal	0 <func_808FCF40>
     4e0:	02003025 	move	a2,s0
     4e4:	02002025 	move	a0,s0
     4e8:	02202825 	move	a1,s1
     4ec:	240600e1 	li	a2,225
     4f0:	0c000000 	jal	0 <func_808FCF40>
     4f4:	00003825 	move	a3,zero
     4f8:	3c060601 	lui	a2,0x601
     4fc:	24c614e8 	addiu	a2,a2,5352
     500:	02202025 	move	a0,s1
     504:	2605014c 	addiu	a1,s0,332
     508:	00003825 	move	a3,zero
     50c:	afa00010 	sw	zero,16(sp)
     510:	afa00014 	sw	zero,20(sp)
     514:	0c000000 	jal	0 <func_808FCF40>
     518:	afa00018 	sw	zero,24(sp)
     51c:	02002025 	move	a0,s0
     520:	0c000000 	jal	0 <func_808FCF40>
     524:	02202825 	move	a1,s1
     528:	44802000 	mtc1	zero,$f4
     52c:	240a003e 	li	t2,62
     530:	a20a0117 	sb	t2,279(s0)
     534:	e604006c 	swc1	$f4,108(s0)
     538:	8fbf002c 	lw	ra,44(sp)
     53c:	8fb10028 	lw	s1,40(sp)
     540:	8fb00024 	lw	s0,36(sp)
     544:	03e00008 	jr	ra
     548:	27bd0040 	addiu	sp,sp,64

0000054c <BossGanon2_Destroy>:
     54c:	27bdffe8 	addiu	sp,sp,-24
     550:	afbf0014 	sw	ra,20(sp)
     554:	afa40018 	sw	a0,24(sp)
     558:	afa5001c 	sw	a1,28(sp)
     55c:	0c000000 	jal	0 <func_808FCF40>
     560:	2484014c 	addiu	a0,a0,332
     564:	8fa50018 	lw	a1,24(sp)
     568:	8fa4001c 	lw	a0,28(sp)
     56c:	0c000000 	jal	0 <func_808FCF40>
     570:	24a50424 	addiu	a1,a1,1060
     574:	8fa50018 	lw	a1,24(sp)
     578:	8fa4001c 	lw	a0,28(sp)
     57c:	0c000000 	jal	0 <func_808FCF40>
     580:	24a50444 	addiu	a1,a1,1092
     584:	8fbf0014 	lw	ra,20(sp)
     588:	27bd0018 	addiu	sp,sp,24
     58c:	03e00008 	jr	ra
     590:	00000000 	nop

00000594 <func_808FD4D4>:
     594:	27bdffc8 	addiu	sp,sp,-56
     598:	afa60040 	sw	a2,64(sp)
     59c:	87ae0042 	lh	t6,66(sp)
     5a0:	afb00030 	sw	s0,48(sp)
     5a4:	00808025 	move	s0,a0
     5a8:	afbf0034 	sw	ra,52(sp)
     5ac:	afa5003c 	sw	a1,60(sp)
     5b0:	11c00003 	beqz	t6,5c0 <func_808FD4D4+0x2c>
     5b4:	afa70044 	sw	a3,68(sp)
     5b8:	24010001 	li	at,1
     5bc:	15c10010 	bne	t6,at,600 <func_808FD4D4+0x6c>
     5c0:	3c014100 	lui	at,0x4100
     5c4:	44812000 	mtc1	at,$f4
     5c8:	87af0046 	lh	t7,70(sp)
     5cc:	241801f4 	li	t8,500
     5d0:	2419000a 	li	t9,10
     5d4:	24080001 	li	t0,1
     5d8:	afa80020 	sw	t0,32(sp)
     5dc:	afb9001c 	sw	t9,28(sp)
     5e0:	afb80018 	sw	t8,24(sp)
     5e4:	8fa4003c 	lw	a0,60(sp)
     5e8:	02002825 	move	a1,s0
     5ec:	260601d0 	addiu	a2,s0,464
     5f0:	3c0741c8 	lui	a3,0x41c8
     5f4:	afaf0010 	sw	t7,16(sp)
     5f8:	0c000000 	jal	0 <func_808FCF40>
     5fc:	e7a40014 	swc1	$f4,20(sp)
     600:	87a90042 	lh	t1,66(sp)
     604:	24010002 	li	at,2
     608:	8fa4003c 	lw	a0,60(sp)
     60c:	11200002 	beqz	t1,618 <func_808FD4D4+0x84>
     610:	02002825 	move	a1,s0
     614:	1521000e 	bne	t1,at,650 <func_808FD4D4+0xbc>
     618:	3c014100 	lui	at,0x4100
     61c:	44813000 	mtc1	at,$f6
     620:	87aa0046 	lh	t2,70(sp)
     624:	240b01f4 	li	t3,500
     628:	240c000a 	li	t4,10
     62c:	240d0001 	li	t5,1
     630:	afad0020 	sw	t5,32(sp)
     634:	afac001c 	sw	t4,28(sp)
     638:	afab0018 	sw	t3,24(sp)
     63c:	260601dc 	addiu	a2,s0,476
     640:	3c0741c8 	lui	a3,0x41c8
     644:	afaa0010 	sw	t2,16(sp)
     648:	0c000000 	jal	0 <func_808FCF40>
     64c:	e7a60014 	swc1	$f6,20(sp)
     650:	02002025 	move	a0,s0
     654:	0c000000 	jal	0 <func_808FCF40>
     658:	240539d7 	li	a1,14807
     65c:	02002025 	move	a0,s0
     660:	8fa5003c 	lw	a1,60(sp)
     664:	24060002 	li	a2,2
     668:	0c000000 	jal	0 <func_808FCF40>
     66c:	2407000a 	li	a3,10
     670:	8fbf0034 	lw	ra,52(sp)
     674:	8fb00030 	lw	s0,48(sp)
     678:	27bd0038 	addiu	sp,sp,56
     67c:	03e00008 	jr	ra
     680:	00000000 	nop

00000684 <func_808FD5C4>:
     684:	afa50004 	sw	a1,4(sp)
     688:	8c8f0004 	lw	t7,4(a0)
     68c:	2401fffe 	li	at,-2
     690:	3c0e0000 	lui	t6,0x0
     694:	01e1c024 	and	t8,t7,at
     698:	25ce0000 	addiu	t6,t6,0
     69c:	ac8e0190 	sw	t6,400(a0)
     6a0:	ac980004 	sw	t8,4(a0)
     6a4:	3c010000 	lui	at,0x0
     6a8:	c4240000 	lwc1	$f4,0(at)
     6ac:	03e00008 	jr	ra
     6b0:	e4840028 	swc1	$f4,40(a0)

000006b4 <func_808FD5F4>:
     6b4:	27bdff70 	addiu	sp,sp,-144
     6b8:	afbf003c 	sw	ra,60(sp)
     6bc:	afb10038 	sw	s1,56(sp)
     6c0:	afb00034 	sw	s0,52(sp)
     6c4:	a3a0008d 	sb	zero,141(sp)
     6c8:	8c8e0398 	lw	t6,920(a0)
     6cc:	9498039c 	lhu	t8,924(a0)
     6d0:	8ca91c44 	lw	t1,7236(a1)
     6d4:	25cf0001 	addiu	t7,t6,1
     6d8:	2f01001e 	sltiu	at,t8,30
     6dc:	00808025 	move	s0,a0
     6e0:	00a08825 	move	s1,a1
     6e4:	1020087a 	beqz	at,28d0 <L808FF810>
     6e8:	ac8f0398 	sw	t7,920(a0)
     6ec:	0018c080 	sll	t8,t8,0x2
     6f0:	3c010000 	lui	at,0x0
     6f4:	00380821 	addu	at,at,t8
     6f8:	8c380000 	lw	t8,0(at)
     6fc:	03000008 	jr	t8
     700:	00000000 	nop

00000704 <L808FD644>:
     704:	3c010001 	lui	at,0x1
     708:	342117a4 	ori	at,at,0x17a4
     70c:	02212021 	addu	a0,s1,at
     710:	afa40054 	sw	a0,84(sp)
     714:	2405017e 	li	a1,382
     718:	0c000000 	jal	0 <func_808FCF40>
     71c:	afa90088 	sw	t1,136(sp)
     720:	8fa40054 	lw	a0,84(sp)
     724:	0c000000 	jal	0 <func_808FCF40>
     728:	00402825 	move	a1,v0
     72c:	10400868 	beqz	v0,28d0 <L808FF810>
     730:	8fa90088 	lw	t1,136(sp)
     734:	02202025 	move	a0,s1
     738:	26251d64 	addiu	a1,s1,7524
     73c:	0c000000 	jal	0 <func_808FCF40>
     740:	afa90088 	sw	t1,136(sp)
     744:	02202025 	move	a0,s1
     748:	02002825 	move	a1,s0
     74c:	0c000000 	jal	0 <func_808FCF40>
     750:	24060008 	li	a2,8
     754:	0c000000 	jal	0 <func_808FCF40>
     758:	02202025 	move	a0,s1
     75c:	a602039e 	sh	v0,926(s0)
     760:	02202025 	move	a0,s1
     764:	00002825 	move	a1,zero
     768:	0c000000 	jal	0 <func_808FCF40>
     76c:	24060001 	li	a2,1
     770:	02202025 	move	a0,s1
     774:	8605039e 	lh	a1,926(s0)
     778:	0c000000 	jal	0 <func_808FCF40>
     77c:	24060007 	li	a2,7
     780:	24190001 	li	t9,1
     784:	a619039c 	sh	t9,924(s0)
     788:	3c010000 	lui	at,0x0
     78c:	c4240000 	lwc1	$f4,0(at)
     790:	3c010000 	lui	at,0x0
     794:	c4260000 	lwc1	$f6,0(at)
     798:	3c01c348 	lui	at,0xc348
     79c:	44814000 	mtc1	at,$f8
     7a0:	240b0001 	li	t3,1
     7a4:	afab0028 	sw	t3,40(sp)
     7a8:	afa00024 	sw	zero,36(sp)
     7ac:	afa00020 	sw	zero,32(sp)
     7b0:	afa0001c 	sw	zero,28(sp)
     7b4:	26241c24 	addiu	a0,s1,7204
     7b8:	02002825 	move	a1,s0
     7bc:	02203025 	move	a2,s1
     7c0:	24070179 	li	a3,377
     7c4:	e7a40010 	swc1	$f4,16(sp)
     7c8:	e7a60014 	swc1	$f6,20(sp)
     7cc:	0c000000 	jal	0 <func_808FCF40>
     7d0:	e7a80018 	swc1	$f8,24(sp)
     7d4:	3c010000 	lui	at,0x0
     7d8:	ac220000 	sw	v0,0(at)
     7dc:	3c0c0000 	lui	t4,0x0
     7e0:	8d8c0000 	lw	t4,0(t4)
     7e4:	8fa90088 	lw	t1,136(sp)
     7e8:	3c010000 	lui	at,0x0
     7ec:	a18003c8 	sb	zero,968(t4)
     7f0:	3c0d0000 	lui	t5,0x0
     7f4:	8dad0000 	lw	t5,0(t5)
     7f8:	c42a0000 	lwc1	$f10,0(at)
     7fc:	3c010000 	lui	at,0x0
     800:	3c0e0000 	lui	t6,0x0
     804:	e5aa0024 	swc1	$f10,36(t5)
     808:	8dce0000 	lw	t6,0(t6)
     80c:	c4240000 	lwc1	$f4,0(at)
     810:	3c01c356 	lui	at,0xc356
     814:	3c0f0000 	lui	t7,0x0
     818:	e5c40028 	swc1	$f4,40(t6)
     81c:	8def0000 	lw	t7,0(t7)
     820:	44813000 	mtc1	at,$f6
     824:	3c190000 	lui	t9,0x0
     828:	44804000 	mtc1	zero,$f8
     82c:	e5e6002c 	swc1	$f6,44(t7)
     830:	8f390000 	lw	t9,0(t9)
     834:	3c013f80 	lui	at,0x3f80
     838:	44815000 	mtc1	at,$f10
     83c:	24189000 	li	t8,-28672
     840:	a73800b6 	sh	t8,182(t9)
     844:	3c0144af 	lui	at,0x44af
     848:	e60803bc 	swc1	$f8,956(s0)
     84c:	44814000 	mtc1	at,$f8
     850:	3c0144c8 	lui	at,0x44c8
     854:	e60a03c0 	swc1	$f10,960(s0)
     858:	44802000 	mtc1	zero,$f4
     85c:	44803000 	mtc1	zero,$f6
     860:	44815000 	mtc1	at,$f10
     864:	ae000398 	sw	zero,920(s0)
     868:	3c010000 	lui	at,0x0
     86c:	e60803a8 	swc1	$f8,936(s0)
     870:	e60403c4 	swc1	$f4,964(s0)
     874:	e60603a4 	swc1	$f6,932(s0)
     878:	e60a03ac 	swc1	$f10,940(s0)
     87c:	c4240000 	lwc1	$f4,0(at)
     880:	3c010000 	lui	at,0x0
     884:	240bb000 	li	t3,-20480
     888:	e5240024 	swc1	$f4,36(t1)
     88c:	c4260000 	lwc1	$f6,0(at)
     890:	3c01c33a 	lui	at,0xc33a
     894:	44814000 	mtc1	at,$f8
     898:	3c050600 	lui	a1,0x600
     89c:	24a52168 	addiu	a1,a1,8552
     8a0:	2604014c 	addiu	a0,s0,332
     8a4:	24060000 	li	a2,0
     8a8:	a52b00b6 	sh	t3,182(t1)
     8ac:	e5260028 	swc1	$f6,40(t1)
     8b0:	0c000000 	jal	0 <func_808FCF40>
     8b4:	e528002c 	swc1	$f8,44(t1)
     8b8:	44805000 	mtc1	zero,$f10
     8bc:	3c010001 	lui	at,0x1
     8c0:	8fa90088 	lw	t1,136(sp)
     8c4:	00310821 	addu	at,at,s1
     8c8:	e42a0afc 	swc1	$f10,2812(at)

000008cc <L808FD80C>:
     8cc:	8e0c0398 	lw	t4,920(s0)
     8d0:	2d810046 	sltiu	at,t4,70
     8d4:	10200005 	beqz	at,8ec <L808FD80C+0x20>
     8d8:	00000000 	nop
     8dc:	44802000 	mtc1	zero,$f4
     8e0:	3c010001 	lui	at,0x1
     8e4:	00310821 	addu	at,at,s1
     8e8:	e4240afc 	swc1	$f4,2812(at)
     8ec:	3c010000 	lui	at,0x0
     8f0:	c4200000 	lwc1	$f0,0(at)
     8f4:	c6060410 	lwc1	$f6,1040(s0)
     8f8:	240d0003 	li	t5,3
     8fc:	a20d0339 	sb	t5,825(s0)
     900:	46003202 	mul.s	$f8,$f6,$f0
     904:	3c063dcc 	lui	a2,0x3dcc
     908:	44050000 	mfc1	a1,$f0
     90c:	34c6cccd 	ori	a2,a2,0xcccd
     910:	afa90088 	sw	t1,136(sp)
     914:	260403a4 	addiu	a0,s0,932
     918:	44074000 	mfc1	a3,$f8
     91c:	0c000000 	jal	0 <func_808FCF40>
     920:	00000000 	nop
     924:	3c0144dc 	lui	at,0x44dc
     928:	44812000 	mtc1	at,$f4
     92c:	c60a0410 	lwc1	$f10,1040(s0)
     930:	3c063dcc 	lui	a2,0x3dcc
     934:	34c6cccd 	ori	a2,a2,0xcccd
     938:	46045182 	mul.s	$f6,$f10,$f4
     93c:	260403ac 	addiu	a0,s0,940
     940:	3c05c320 	lui	a1,0xc320
     944:	44073000 	mfc1	a3,$f6
     948:	0c000000 	jal	0 <func_808FCF40>
     94c:	00000000 	nop
     950:	3c053bf5 	lui	a1,0x3bf5
     954:	3c0738d1 	lui	a3,0x38d1
     958:	34e7b717 	ori	a3,a3,0xb717
     95c:	34a5c28f 	ori	a1,a1,0xc28f
     960:	26040410 	addiu	a0,s0,1040
     964:	0c000000 	jal	0 <func_808FCF40>
     968:	3c063f80 	lui	a2,0x3f80
     96c:	3c01c348 	lui	at,0xc348
     970:	44814000 	mtc1	at,$f8
     974:	8fa90088 	lw	t1,136(sp)
     978:	3c010000 	lui	at,0x0
     97c:	e60803b0 	swc1	$f8,944(s0)
     980:	c42a0000 	lwc1	$f10,0(at)
     984:	3c01c348 	lui	at,0xc348
     988:	44812000 	mtc1	at,$f4
     98c:	8e030398 	lw	v1,920(s0)
     990:	24010096 	li	at,150
     994:	e60a03b4 	swc1	$f10,948(s0)
     998:	14610008 	bne	v1,at,9bc <L808FD80C+0xf0>
     99c:	e60403b8 	swc1	$f4,952(s0)
     9a0:	02202025 	move	a0,s1
     9a4:	240570d3 	li	a1,28883
     9a8:	00003025 	move	a2,zero
     9ac:	0c000000 	jal	0 <func_808FCF40>
     9b0:	afa90088 	sw	t1,136(sp)
     9b4:	8fa90088 	lw	t1,136(sp)
     9b8:	8e030398 	lw	v1,920(s0)
     9bc:	2c6100fb 	sltiu	at,v1,251
     9c0:	142007c3 	bnez	at,28d0 <L808FF810>
     9c4:	262420d8 	addiu	a0,s1,8408
     9c8:	0c000000 	jal	0 <func_808FCF40>
     9cc:	afa90088 	sw	t1,136(sp)
     9d0:	144007bf 	bnez	v0,28d0 <L808FF810>
     9d4:	8fa90088 	lw	t1,136(sp)
     9d8:	3c013f80 	lui	at,0x3f80
     9dc:	44803000 	mtc1	zero,$f6
     9e0:	44814000 	mtc1	at,$f8
     9e4:	240e0002 	li	t6,2
     9e8:	3c010001 	lui	at,0x1
     9ec:	a60e039c 	sh	t6,924(s0)
     9f0:	ae000398 	sw	zero,920(s0)
     9f4:	00310821 	addu	at,at,s1
     9f8:	e6060410 	swc1	$f6,1040(s0)
     9fc:	e4280afc 	swc1	$f8,2812(at)

00000a00 <L808FD940>:
     a00:	240f0004 	li	t7,4
     a04:	a20f0339 	sb	t7,825(s0)
     a08:	3c010000 	lui	at,0x0
     a0c:	c42a0000 	lwc1	$f10,0(at)
     a10:	3c010000 	lui	at,0x0
     a14:	3c180000 	lui	t8,0x0
     a18:	e52a0024 	swc1	$f10,36(t1)
     a1c:	c4240000 	lwc1	$f4,0(at)
     a20:	3c01c326 	lui	at,0xc326
     a24:	44813000 	mtc1	at,$f6
     a28:	e5240028 	swc1	$f4,40(t1)
     a2c:	3c010000 	lui	at,0x0
     a30:	e526002c 	swc1	$f6,44(t1)
     a34:	8f180000 	lw	t8,0(t8)
     a38:	c4280000 	lwc1	$f8,0(at)
     a3c:	3c010000 	lui	at,0x0
     a40:	3c190000 	lui	t9,0x0
     a44:	e7080024 	swc1	$f8,36(t8)
     a48:	8f390000 	lw	t9,0(t9)
     a4c:	c42a0000 	lwc1	$f10,0(at)
     a50:	3c01c33a 	lui	at,0xc33a
     a54:	3c0b0000 	lui	t3,0x0
     a58:	e72a0028 	swc1	$f10,40(t9)
     a5c:	8d6b0000 	lw	t3,0(t3)
     a60:	44812000 	mtc1	at,$f4
     a64:	240cb000 	li	t4,-20480
     a68:	3c0e0000 	lui	t6,0x0
     a6c:	e564002c 	swc1	$f4,44(t3)
     a70:	a52c00b6 	sh	t4,182(t1)
     a74:	8dce0000 	lw	t6,0(t6)
     a78:	240db000 	li	t5,-20480
     a7c:	2401003c 	li	at,60
     a80:	a5cd00b6 	sh	t5,182(t6)
     a84:	8e030398 	lw	v1,920(s0)
     a88:	02202025 	move	a0,s1
     a8c:	240570d4 	li	a1,28884
     a90:	14610005 	bne	v1,at,aa8 <L808FD940+0xa8>
     a94:	00003025 	move	a2,zero
     a98:	0c000000 	jal	0 <func_808FCF40>
     a9c:	afa90088 	sw	t1,136(sp)
     aa0:	8fa90088 	lw	t1,136(sp)
     aa4:	8e030398 	lw	v1,920(s0)
     aa8:	24010028 	li	at,40
     aac:	1461000b 	bne	v1,at,adc <L808FD940+0xdc>
     ab0:	240a0001 	li	t2,1
     ab4:	3c0f0000 	lui	t7,0x0
     ab8:	8def0000 	lw	t7,0(t7)
     abc:	02202025 	move	a0,s1
     ac0:	02002825 	move	a1,s0
     ac4:	a1ea03c8 	sb	t2,968(t7)
     ac8:	afa90088 	sw	t1,136(sp)
     acc:	0c000000 	jal	0 <func_808FCF40>
     ad0:	2406004e 	li	a2,78
     ad4:	8fa90088 	lw	t1,136(sp)
     ad8:	8e030398 	lw	v1,920(s0)
     adc:	24010055 	li	at,85
     ae0:	1461000b 	bne	v1,at,b10 <L808FD940+0x110>
     ae4:	24180002 	li	t8,2
     ae8:	3c190000 	lui	t9,0x0
     aec:	8f390000 	lw	t9,0(t9)
     af0:	02202025 	move	a0,s1
     af4:	02002825 	move	a1,s0
     af8:	a33803c8 	sb	t8,968(t9)
     afc:	afa90088 	sw	t1,136(sp)
     b00:	0c000000 	jal	0 <func_808FCF40>
     b04:	2406004f 	li	a2,79
     b08:	8fa90088 	lw	t1,136(sp)
     b0c:	8e030398 	lw	v1,920(s0)
     b10:	3c014170 	lui	at,0x4170
     b14:	44817000 	mtc1	at,$f14
     b18:	3c010000 	lui	at,0x0
     b1c:	c4260000 	lwc1	$f6,0(at)
     b20:	3c010000 	lui	at,0x0
     b24:	e60603a4 	swc1	$f6,932(s0)
     b28:	c4280000 	lwc1	$f8,0(at)
     b2c:	3c01c335 	lui	at,0xc335
     b30:	44815000 	mtc1	at,$f10
     b34:	e60803a8 	swc1	$f8,936(s0)
     b38:	3c0140a0 	lui	at,0x40a0
     b3c:	e60a03ac 	swc1	$f10,940(s0)
     b40:	c5240024 	lwc1	$f4,36(t1)
     b44:	44815000 	mtc1	at,$f10
     b48:	2c610069 	sltiu	at,v1,105
     b4c:	e60403b0 	swc1	$f4,944(s0)
     b50:	c526002c 	lwc1	$f6,44(t1)
     b54:	460e3201 	sub.s	$f8,$f6,$f14
     b58:	460a4100 	add.s	$f4,$f8,$f10
     b5c:	1420001c 	bnez	at,bd0 <L808FD940+0x1d0>
     b60:	e60403b8 	swc1	$f4,952(s0)
     b64:	3c01423c 	lui	at,0x423c
     b68:	44814000 	mtc1	at,$f8
     b6c:	c5260028 	lwc1	$f6,40(t1)
     b70:	3c0140e0 	lui	at,0x40e0
     b74:	44812000 	mtc1	at,$f4
     b78:	46083280 	add.s	$f10,$f6,$f8
     b7c:	3c063dcc 	lui	a2,0x3dcc
     b80:	8e070410 	lw	a3,1040(s0)
     b84:	260b0410 	addiu	t3,s0,1040
     b88:	46045180 	add.s	$f6,$f10,$f4
     b8c:	afab0054 	sw	t3,84(sp)
     b90:	34c6cccd 	ori	a2,a2,0xcccd
     b94:	260403b4 	addiu	a0,s0,948
     b98:	460e3200 	add.s	$f8,$f6,$f14
     b9c:	44054000 	mfc1	a1,$f8
     ba0:	0c000000 	jal	0 <func_808FCF40>
     ba4:	00000000 	nop
     ba8:	3c014000 	lui	at,0x4000
     bac:	44810000 	mtc1	at,$f0
     bb0:	3c073dcc 	lui	a3,0x3dcc
     bb4:	34e7cccd 	ori	a3,a3,0xcccd
     bb8:	44050000 	mfc1	a1,$f0
     bbc:	8fa40054 	lw	a0,84(sp)
     bc0:	0c000000 	jal	0 <func_808FCF40>
     bc4:	3c063f80 	lui	a2,0x3f80
     bc8:	1000000a 	b	bf4 <L808FD940+0x1f4>
     bcc:	8e0c0398 	lw	t4,920(s0)
     bd0:	3c01423c 	lui	at,0x423c
     bd4:	44812000 	mtc1	at,$f4
     bd8:	c52a0028 	lwc1	$f10,40(t1)
     bdc:	3c0140e0 	lui	at,0x40e0
     be0:	44814000 	mtc1	at,$f8
     be4:	46045180 	add.s	$f6,$f10,$f4
     be8:	46083280 	add.s	$f10,$f6,$f8
     bec:	e60a03b4 	swc1	$f10,948(s0)
     bf0:	8e0c0398 	lw	t4,920(s0)
     bf4:	2d8100ab 	sltiu	at,t4,171
     bf8:	54200736 	bnezl	at,28d4 <L808FF810+0x4>
     bfc:	3c014080 	lui	at,0x4080
     c00:	0c000000 	jal	0 <func_808FCF40>
     c04:	262420d8 	addiu	a0,s1,8408
     c08:	14400731 	bnez	v0,28d0 <L808FF810>
     c0c:	240d0003 	li	t5,3
     c10:	44802000 	mtc1	zero,$f4
     c14:	a60d039c 	sh	t5,924(s0)
     c18:	ae000398 	sw	zero,920(s0)
     c1c:	1000072c 	b	28d0 <L808FF810>
     c20:	e6040410 	swc1	$f4,1040(s0)

00000c24 <L808FDB64>:
     c24:	3c014000 	lui	at,0x4000
     c28:	44810000 	mtc1	at,$f0
     c2c:	3c01423c 	lui	at,0x423c
     c30:	44814000 	mtc1	at,$f8
     c34:	c5260028 	lwc1	$f6,40(t1)
     c38:	3c0140e0 	lui	at,0x40e0
     c3c:	44812000 	mtc1	at,$f4
     c40:	46083280 	add.s	$f10,$f6,$f8
     c44:	3c063dcc 	lui	a2,0x3dcc
     c48:	44070000 	mfc1	a3,$f0
     c4c:	34c6cccd 	ori	a2,a2,0xcccd
     c50:	46045180 	add.s	$f6,$f10,$f4
     c54:	260403b4 	addiu	a0,s0,948
     c58:	44053000 	mfc1	a1,$f6
     c5c:	0c000000 	jal	0 <func_808FCF40>
     c60:	00000000 	nop
     c64:	8e030398 	lw	v1,920(s0)
     c68:	240e0004 	li	t6,4
     c6c:	2401000a 	li	at,10
     c70:	14610009 	bne	v1,at,c98 <L808FDB64+0x74>
     c74:	a20e0339 	sb	t6,825(s0)
     c78:	3c040000 	lui	a0,0x0
     c7c:	24840000 	addiu	a0,a0,0
     c80:	0c000000 	jal	0 <func_808FCF40>
     c84:	2405281d 	li	a1,10269
     c88:	3c041000 	lui	a0,0x1000
     c8c:	0c000000 	jal	0 <func_808FCF40>
     c90:	348400ff 	ori	a0,a0,0xff
     c94:	8e030398 	lw	v1,920(s0)
     c98:	24010014 	li	at,20
     c9c:	14610009 	bne	v1,at,cc4 <L808FDB64+0xa0>
     ca0:	240f0003 	li	t7,3
     ca4:	3c180000 	lui	t8,0x0
     ca8:	8f180000 	lw	t8,0(t8)
     cac:	02202025 	move	a0,s1
     cb0:	02002825 	move	a1,s0
     cb4:	24060050 	li	a2,80
     cb8:	0c000000 	jal	0 <func_808FCF40>
     cbc:	a30f03c8 	sb	t7,968(t8)
     cc0:	8e030398 	lw	v1,920(s0)
     cc4:	24010037 	li	at,55
     cc8:	14610701 	bne	v1,at,28d0 <L808FF810>
     ccc:	24190004 	li	t9,4
     cd0:	44804000 	mtc1	zero,$f8
     cd4:	a619039c 	sh	t9,924(s0)
     cd8:	ae000398 	sw	zero,920(s0)
     cdc:	3c0c0000 	lui	t4,0x0
     ce0:	e6080410 	swc1	$f8,1040(s0)
     ce4:	8d8c0000 	lw	t4,0(t4)
     ce8:	240b0004 	li	t3,4
     cec:	02202025 	move	a0,s1
     cf0:	02002825 	move	a1,s0
     cf4:	24060050 	li	a2,80
     cf8:	0c000000 	jal	0 <func_808FCF40>
     cfc:	a18b03c8 	sb	t3,968(t4)
     d00:	100006f4 	b	28d4 <L808FF810+0x4>
     d04:	3c014080 	lui	at,0x4080

00000d08 <L808FDC48>:
     d08:	240d0004 	li	t5,4
     d0c:	a20d0339 	sb	t5,825(s0)
     d10:	3c010000 	lui	at,0x0
     d14:	c4240000 	lwc1	$f4,0(at)
     d18:	c60a0410 	lwc1	$f10,1040(s0)
     d1c:	260403a4 	addiu	a0,s0,932
     d20:	3c063dcc 	lui	a2,0x3dcc
     d24:	46045182 	mul.s	$f6,$f10,$f4
     d28:	34c6cccd 	ori	a2,a2,0xcccd
     d2c:	afa4004c 	sw	a0,76(sp)
     d30:	3c05c3b4 	lui	a1,0xc3b4
     d34:	44073000 	mfc1	a3,$f6
     d38:	0c000000 	jal	0 <func_808FCF40>
     d3c:	00000000 	nop
     d40:	3c01432a 	lui	at,0x432a
     d44:	44815000 	mtc1	at,$f10
     d48:	c6080410 	lwc1	$f8,1040(s0)
     d4c:	3c063dcc 	lui	a2,0x3dcc
     d50:	34c6cccd 	ori	a2,a2,0xcccd
     d54:	460a4102 	mul.s	$f4,$f8,$f10
     d58:	260403ac 	addiu	a0,s0,940
     d5c:	3c05c1a0 	lui	a1,0xc1a0
     d60:	44072000 	mfc1	a3,$f4
     d64:	0c000000 	jal	0 <func_808FCF40>
     d68:	00000000 	nop
     d6c:	3c053d23 	lui	a1,0x3d23
     d70:	3c073a03 	lui	a3,0x3a03
     d74:	34e7126f 	ori	a3,a3,0x126f
     d78:	34a5d70a 	ori	a1,a1,0xd70a
     d7c:	26040410 	addiu	a0,s0,1040
     d80:	0c000000 	jal	0 <func_808FCF40>
     d84:	3c063f80 	lui	a2,0x3f80
     d88:	8e0e0398 	lw	t6,920(s0)
     d8c:	24010064 	li	at,100
     d90:	02202025 	move	a0,s1
     d94:	55c106cf 	bnel	t6,at,28d4 <L808FF810+0x4>
     d98:	3c014080 	lui	at,0x4080
     d9c:	0c000000 	jal	0 <func_808FCF40>
     da0:	00002825 	move	a1,zero
     da4:	8faf004c 	lw	t7,76(sp)
     da8:	02202025 	move	a0,s1
     dac:	00003025 	move	a2,zero
     db0:	8df90000 	lw	t9,0(t7)
     db4:	ac59005c 	sw	t9,92(v0)
     db8:	8df80004 	lw	t8,4(t7)
     dbc:	ac580060 	sw	t8,96(v0)
     dc0:	8df90008 	lw	t9,8(t7)
     dc4:	ac590064 	sw	t9,100(v0)
     dc8:	8fab004c 	lw	t3,76(sp)
     dcc:	8d6d0000 	lw	t5,0(t3)
     dd0:	ac4d0074 	sw	t5,116(v0)
     dd4:	8d6c0004 	lw	t4,4(t3)
     dd8:	ac4c0078 	sw	t4,120(v0)
     ddc:	8d6d0008 	lw	t5,8(t3)
     de0:	ac4d007c 	sw	t5,124(v0)
     de4:	8e0f03b0 	lw	t7,944(s0)
     de8:	ac4f0050 	sw	t7,80(v0)
     dec:	8e0e03b4 	lw	t6,948(s0)
     df0:	ac4e0054 	sw	t6,84(v0)
     df4:	8e0f03b8 	lw	t7,952(s0)
     df8:	ac4f0058 	sw	t7,88(v0)
     dfc:	0c000000 	jal	0 <func_808FCF40>
     e00:	8605039e 	lh	a1,926(s0)
     e04:	a600039e 	sh	zero,926(s0)
     e08:	02202025 	move	a0,s1
     e0c:	0c000000 	jal	0 <func_808FCF40>
     e10:	26251d64 	addiu	a1,s1,7524
     e14:	02202025 	move	a0,s1
     e18:	02002825 	move	a1,s0
     e1c:	0c000000 	jal	0 <func_808FCF40>
     e20:	24060007 	li	a2,7
     e24:	24180005 	li	t8,5
     e28:	a618039c 	sh	t8,924(s0)
     e2c:	100006a8 	b	28d0 <L808FF810>
     e30:	ae000398 	sw	zero,920(s0)

00000e34 <L808FDD74>:
     e34:	3c0143fa 	lui	at,0x43fa
     e38:	44814000 	mtc1	at,$f8
     e3c:	c6060090 	lwc1	$f6,144(s0)
     e40:	24190004 	li	t9,4
     e44:	a2190339 	sb	t9,825(s0)
     e48:	4608303c 	c.lt.s	$f6,$f8
     e4c:	02202025 	move	a0,s1
     e50:	450206a0 	bc1fl	28d4 <L808FF810+0x4>
     e54:	3c014080 	lui	at,0x4080
     e58:	0c000000 	jal	0 <func_808FCF40>
     e5c:	afa90088 	sw	t1,136(sp)
     e60:	240b000a 	li	t3,10
     e64:	a60b039c 	sh	t3,924(s0)
     e68:	ae000398 	sw	zero,920(s0)
     e6c:	02202025 	move	a0,s1
     e70:	0c000000 	jal	0 <func_808FCF40>
     e74:	26251d64 	addiu	a1,s1,7524
     e78:	0c000000 	jal	0 <func_808FCF40>
     e7c:	02202025 	move	a0,s1
     e80:	a602039e 	sh	v0,926(s0)
     e84:	02202025 	move	a0,s1
     e88:	00002825 	move	a1,zero
     e8c:	0c000000 	jal	0 <func_808FCF40>
     e90:	24060001 	li	a2,1
     e94:	02202025 	move	a0,s1
     e98:	8605039e 	lh	a1,926(s0)
     e9c:	0c000000 	jal	0 <func_808FCF40>
     ea0:	24060007 	li	a2,7
     ea4:	8fa90088 	lw	t1,136(sp)

00000ea8 <L808FDDE8>:
     ea8:	3c014120 	lui	at,0x4120
     eac:	44817000 	mtc1	at,$f14
     eb0:	3c0143f5 	lui	at,0x43f5
     eb4:	44815000 	mtc1	at,$f10
     eb8:	3c010000 	lui	at,0x0
     ebc:	3c020000 	lui	v0,0x0
     ec0:	e52a0024 	swc1	$f10,36(t1)
     ec4:	c4240000 	lwc1	$f4,0(at)
     ec8:	3c01c326 	lui	at,0xc326
     ecc:	44813000 	mtc1	at,$f6
     ed0:	24420000 	addiu	v0,v0,0
     ed4:	3c014435 	lui	at,0x4435
     ed8:	e5240028 	swc1	$f4,40(t1)
     edc:	e526002c 	swc1	$f6,44(t1)
     ee0:	8c4c0000 	lw	t4,0(v0)
     ee4:	44814000 	mtc1	at,$f8
     ee8:	3c010000 	lui	at,0x0
     eec:	240fc000 	li	t7,-16384
     ef0:	e5880024 	swc1	$f8,36(t4)
     ef4:	8c4d0000 	lw	t5,0(v0)
     ef8:	c42a0000 	lwc1	$f10,0(at)
     efc:	3c01c33a 	lui	at,0xc33a
     f00:	44812000 	mtc1	at,$f4
     f04:	e5aa0028 	swc1	$f10,40(t5)
     f08:	8c4e0000 	lw	t6,0(v0)
     f0c:	3c0143cd 	lui	at,0x43cd
     f10:	44813000 	mtc1	at,$f6
     f14:	e5c4002c 	swc1	$f4,44(t6)
     f18:	a52f00b6 	sh	t7,182(t1)
     f1c:	8c590000 	lw	t9,0(v0)
     f20:	3c014489 	lui	at,0x4489
     f24:	44814000 	mtc1	at,$f8
     f28:	2418b000 	li	t8,-20480
     f2c:	3c01c2dc 	lui	at,0xc2dc
     f30:	44815000 	mtc1	at,$f10
     f34:	a73800b6 	sh	t8,182(t9)
     f38:	e60603a4 	swc1	$f6,932(s0)
     f3c:	e60803a8 	swc1	$f8,936(s0)
     f40:	e60a03ac 	swc1	$f10,940(s0)
     f44:	c5240024 	lwc1	$f4,36(t1)
     f48:	3c014348 	lui	at,0x4348
     f4c:	44815000 	mtc1	at,$f10
     f50:	460e2180 	add.s	$f6,$f4,$f14
     f54:	3c014320 	lui	at,0x4320
     f58:	8e0b0398 	lw	t3,920(s0)
     f5c:	240d0004 	li	t5,4
     f60:	e60603b0 	swc1	$f6,944(s0)
     f64:	c5280028 	lwc1	$f8,40(t1)
     f68:	44813000 	mtc1	at,$f6
     f6c:	2d610014 	sltiu	at,t3,20
     f70:	460a4100 	add.s	$f4,$f8,$f10
     f74:	46062201 	sub.s	$f8,$f4,$f6
     f78:	e60803b4 	swc1	$f8,948(s0)
     f7c:	c52a002c 	lwc1	$f10,44(t1)
     f80:	14200019 	bnez	at,fe8 <L808FDDE8+0x140>
     f84:	e60a03b8 	swc1	$f10,952(s0)
     f88:	0c000000 	jal	0 <func_808FCF40>
     f8c:	2404301c 	li	a0,12316
     f90:	3c014120 	lui	at,0x4120
     f94:	44817000 	mtc1	at,$f14
     f98:	26040324 	addiu	a0,s0,804
     f9c:	3c05437f 	lui	a1,0x437f
     fa0:	44077000 	mfc1	a3,$f14
     fa4:	0c000000 	jal	0 <func_808FCF40>
     fa8:	3c063f80 	lui	a2,0x3f80
     fac:	8e030398 	lw	v1,920(s0)
     fb0:	240c0005 	li	t4,5
     fb4:	24010014 	li	at,20
     fb8:	14610008 	bne	v1,at,fdc <L808FDDE8+0x134>
     fbc:	a20c0339 	sb	t4,825(s0)
     fc0:	44802000 	mtc1	zero,$f4
     fc4:	44803000 	mtc1	zero,$f6
     fc8:	3c010001 	lui	at,0x1
     fcc:	00310821 	addu	at,at,s1
     fd0:	e604033c 	swc1	$f4,828(s0)
     fd4:	e4260afc 	swc1	$f6,2812(at)
     fd8:	8e030398 	lw	v1,920(s0)
     fdc:	3c020000 	lui	v0,0x0
     fe0:	10000003 	b	ff0 <L808FDDE8+0x148>
     fe4:	24420000 	addiu	v0,v0,0
     fe8:	a20d0339 	sb	t5,825(s0)
     fec:	8e030398 	lw	v1,920(s0)
     ff0:	2401001e 	li	at,30
     ff4:	14610008 	bne	v1,at,1018 <L808FDDE8+0x170>
     ff8:	240e0005 	li	t6,5
     ffc:	8c4f0000 	lw	t7,0(v0)
    1000:	02202025 	move	a0,s1
    1004:	02002825 	move	a1,s0
    1008:	24060051 	li	a2,81
    100c:	0c000000 	jal	0 <func_808FCF40>
    1010:	a1ee03c8 	sb	t6,968(t7)
    1014:	8e030398 	lw	v1,920(s0)
    1018:	24010032 	li	at,50
    101c:	1461062c 	bne	v1,at,28d0 <L808FF810>
    1020:	2418000b 	li	t8,11
    1024:	ae000398 	sw	zero,920(s0)
    1028:	10000629 	b	28d0 <L808FF810>
    102c:	a618039c 	sh	t8,924(s0)

00001030 <L808FDF70>:
    1030:	24190005 	li	t9,5
    1034:	a2190339 	sb	t9,825(s0)
    1038:	afa90088 	sw	t1,136(sp)
    103c:	0c000000 	jal	0 <func_808FCF40>
    1040:	2404301c 	li	a0,12316
    1044:	3c014000 	lui	at,0x4000
    1048:	44810000 	mtc1	at,$f0
    104c:	3c0141a0 	lui	at,0x41a0
    1050:	44811000 	mtc1	at,$f2
    1054:	3c0143f5 	lui	at,0x43f5
    1058:	8fa90088 	lw	t1,136(sp)
    105c:	44814000 	mtc1	at,$f8
    1060:	3c010000 	lui	at,0x0
    1064:	3c0b0000 	lui	t3,0x0
    1068:	e5280024 	swc1	$f8,36(t1)
    106c:	c42a0000 	lwc1	$f10,0(at)
    1070:	3c01c326 	lui	at,0xc326
    1074:	44812000 	mtc1	at,$f4
    1078:	3c014435 	lui	at,0x4435
    107c:	e52a0028 	swc1	$f10,40(t1)
    1080:	e524002c 	swc1	$f4,44(t1)
    1084:	8d6b0000 	lw	t3,0(t3)
    1088:	44813000 	mtc1	at,$f6
    108c:	3c010000 	lui	at,0x0
    1090:	3c0c0000 	lui	t4,0x0
    1094:	e5660024 	swc1	$f6,36(t3)
    1098:	8d8c0000 	lw	t4,0(t4)
    109c:	c4280000 	lwc1	$f8,0(at)
    10a0:	3c01c33a 	lui	at,0xc33a
    10a4:	3c0d0000 	lui	t5,0x0
    10a8:	e5880028 	swc1	$f8,40(t4)
    10ac:	8dad0000 	lw	t5,0(t5)
    10b0:	44815000 	mtc1	at,$f10
    10b4:	240ec000 	li	t6,-16384
    10b8:	3c180000 	lui	t8,0x0
    10bc:	e5aa002c 	swc1	$f10,44(t5)
    10c0:	a52e00b6 	sh	t6,182(t1)
    10c4:	8f180000 	lw	t8,0(t8)
    10c8:	3c0143e1 	lui	at,0x43e1
    10cc:	44812000 	mtc1	at,$f4
    10d0:	240fb000 	li	t7,-20480
    10d4:	a70f00b6 	sh	t7,182(t8)
    10d8:	3c010000 	lui	at,0x0
    10dc:	e60403a4 	swc1	$f4,932(s0)
    10e0:	c4260000 	lwc1	$f6,0(at)
    10e4:	3c01c31e 	lui	at,0xc31e
    10e8:	44814000 	mtc1	at,$f8
    10ec:	e60603a8 	swc1	$f6,936(s0)
    10f0:	3c014348 	lui	at,0x4348
    10f4:	e60803ac 	swc1	$f8,940(s0)
    10f8:	c52a0024 	lwc1	$f10,36(t1)
    10fc:	8e030398 	lw	v1,920(s0)
    1100:	3c040000 	lui	a0,0x0
    1104:	46025101 	sub.s	$f4,$f10,$f2
    1108:	44815000 	mtc1	at,$f10
    110c:	3c014317 	lui	at,0x4317
    1110:	24840000 	addiu	a0,a0,0
    1114:	46002180 	add.s	$f6,$f4,$f0
    1118:	2405281d 	li	a1,10269
    111c:	e60603b0 	swc1	$f6,944(s0)
    1120:	c5280028 	lwc1	$f8,40(t1)
    1124:	44813000 	mtc1	at,$f6
    1128:	2401000a 	li	at,10
    112c:	460a4100 	add.s	$f4,$f8,$f10
    1130:	46062201 	sub.s	$f8,$f4,$f6
    1134:	46004281 	sub.s	$f10,$f8,$f0
    1138:	e60a03b4 	swc1	$f10,948(s0)
    113c:	c524002c 	lwc1	$f4,44(t1)
    1140:	46002180 	add.s	$f6,$f4,$f0
    1144:	14610005 	bne	v1,at,115c <L808FDF70+0x12c>
    1148:	e60603b8 	swc1	$f6,952(s0)
    114c:	0c000000 	jal	0 <func_808FCF40>
    1150:	afa90088 	sw	t1,136(sp)
    1154:	8fa90088 	lw	t1,136(sp)
    1158:	8e030398 	lw	v1,920(s0)
    115c:	24010014 	li	at,20
    1160:	14610005 	bne	v1,at,1178 <L808FDF70+0x148>
    1164:	2404281d 	li	a0,10269
    1168:	0c000000 	jal	0 <func_808FCF40>
    116c:	afa90088 	sw	t1,136(sp)
    1170:	8fa90088 	lw	t1,136(sp)
    1174:	8e030398 	lw	v1,920(s0)
    1178:	2401001e 	li	at,30
    117c:	14610007 	bne	v1,at,119c <L808FDF70+0x16c>
    1180:	02202025 	move	a0,s1
    1184:	02002825 	move	a1,s0
    1188:	24060052 	li	a2,82
    118c:	0c000000 	jal	0 <func_808FCF40>
    1190:	afa90088 	sw	t1,136(sp)
    1194:	8fa90088 	lw	t1,136(sp)
    1198:	8e030398 	lw	v1,920(s0)
    119c:	24010032 	li	at,50
    11a0:	146105cb 	bne	v1,at,28d0 <L808FF810>
    11a4:	2419000c 	li	t9,12
    11a8:	ae000398 	sw	zero,920(s0)
    11ac:	a619039c 	sh	t9,924(s0)
    11b0:	3c050600 	lui	a1,0x600
    11b4:	24a52168 	addiu	a1,a1,8552
    11b8:	afa90088 	sw	t1,136(sp)
    11bc:	2604014c 	addiu	a0,s0,332
    11c0:	0c000000 	jal	0 <func_808FCF40>
    11c4:	24060000 	li	a2,0
    11c8:	3c040600 	lui	a0,0x600
    11cc:	0c000000 	jal	0 <func_808FCF40>
    11d0:	24842168 	addiu	a0,a0,8552
    11d4:	44824000 	mtc1	v0,$f8
    11d8:	3c010000 	lui	at,0x0
    11dc:	c4200000 	lwc1	$f0,0(at)
    11e0:	468042a0 	cvt.s.w	$f10,$f8
    11e4:	3c01c348 	lui	at,0xc348
    11e8:	44811000 	mtc1	at,$f2
    11ec:	8fa90088 	lw	t1,136(sp)
    11f0:	3c010000 	lui	at,0x0
    11f4:	e6000028 	swc1	$f0,40(s0)
    11f8:	e60a0194 	swc1	$f10,404(s0)
    11fc:	e6020024 	swc1	$f2,36(s0)
    1200:	e602002c 	swc1	$f2,44(s0)
    1204:	c4240000 	lwc1	$f4,0(at)
    1208:	3c01c270 	lui	at,0xc270
    120c:	44813000 	mtc1	at,$f6
    1210:	240b5000 	li	t3,20480
    1214:	a60b0032 	sh	t3,50(s0)
    1218:	3c010000 	lui	at,0x0
    121c:	e60400bc 	swc1	$f4,188(s0)
    1220:	e60603a4 	swc1	$f6,932(s0)
    1224:	c4280000 	lwc1	$f8,0(at)
    1228:	3c01428c 	lui	at,0x428c
    122c:	44815000 	mtc1	at,$f10
    1230:	44803000 	mtc1	zero,$f6
    1234:	3c010001 	lui	at,0x1
    1238:	460a0100 	add.s	$f4,$f0,$f10
    123c:	00310821 	addu	at,at,s1
    1240:	e60203ac 	swc1	$f2,940(s0)
    1244:	e60203b0 	swc1	$f2,944(s0)
    1248:	e60403b4 	swc1	$f4,948(s0)
    124c:	e60203b8 	swc1	$f2,952(s0)
    1250:	e60803a8 	swc1	$f8,936(s0)
    1254:	e4260afc 	swc1	$f6,2812(at)
    1258:	3c010001 	lui	at,0x1
    125c:	00310821 	addu	at,at,s1
    1260:	3c0c0001 	lui	t4,0x1
    1264:	01916021 	addu	t4,t4,s1
    1268:	a0200ae1 	sb	zero,2785(at)
    126c:	918c0ae1 	lbu	t4,2785(t4)
    1270:	3c010001 	lui	at,0x1
    1274:	00310821 	addu	at,at,s1
    1278:	a02c0ae2 	sb	t4,2786(at)
    127c:	a2000339 	sb	zero,825(s0)

00001280 <L808FE1C0>:
    1280:	2604014c 	addiu	a0,s0,332
    1284:	afa40050 	sw	a0,80(sp)
    1288:	0c000000 	jal	0 <func_808FCF40>
    128c:	afa90088 	sw	t1,136(sp)
    1290:	8e030398 	lw	v1,920(s0)
    1294:	2401001e 	li	at,30
    1298:	8fa90088 	lw	t1,136(sp)
    129c:	1461000c 	bne	v1,at,12d0 <L808FE1C0+0x50>
    12a0:	240a0001 	li	t2,1
    12a4:	3c010000 	lui	at,0x0
    12a8:	a02a0000 	sb	t2,0(at)
    12ac:	a20a0314 	sb	t2,788(s0)
    12b0:	44806000 	mtc1	zero,$f12
    12b4:	afa90088 	sw	t1,136(sp)
    12b8:	240500c8 	li	a1,200
    12bc:	24060014 	li	a2,20
    12c0:	0c000000 	jal	0 <func_808FCF40>
    12c4:	24070014 	li	a3,20
    12c8:	8fa90088 	lw	t1,136(sp)
    12cc:	8e030398 	lw	v1,920(s0)
    12d0:	2401001e 	li	at,30
    12d4:	14610005 	bne	v1,at,12ec <L808FE1C0+0x6c>
    12d8:	240428c2 	li	a0,10434
    12dc:	0c000000 	jal	0 <func_808FCF40>
    12e0:	afa90088 	sw	t1,136(sp)
    12e4:	8fa90088 	lw	t1,136(sp)
    12e8:	8e030398 	lw	v1,920(s0)
    12ec:	2c61001e 	sltiu	at,v1,30
    12f0:	14200010 	bnez	at,1334 <L808FE1C0+0xb4>
    12f4:	26040028 	addiu	a0,s0,40
    12f8:	3c014120 	lui	at,0x4120
    12fc:	44817000 	mtc1	at,$f14
    1300:	3c0544a1 	lui	a1,0x44a1
    1304:	3c063dcc 	lui	a2,0x3dcc
    1308:	44077000 	mfc1	a3,$f14
    130c:	34c6cccd 	ori	a2,a2,0xcccd
    1310:	34a52000 	ori	a1,a1,0x2000
    1314:	0c000000 	jal	0 <func_808FCF40>
    1318:	afa90088 	sw	t1,136(sp)
    131c:	3c01428c 	lui	at,0x428c
    1320:	44815000 	mtc1	at,$f10
    1324:	c6080028 	lwc1	$f8,40(s0)
    1328:	8fa90088 	lw	t1,136(sp)
    132c:	460a4100 	add.s	$f4,$f8,$f10
    1330:	e60403b4 	swc1	$f4,948(s0)
    1334:	8e050194 	lw	a1,404(s0)
    1338:	afa90088 	sw	t1,136(sp)
    133c:	0c000000 	jal	0 <func_808FCF40>
    1340:	8fa40050 	lw	a0,80(sp)
    1344:	10400562 	beqz	v0,28d0 <L808FF810>
    1348:	8fa90088 	lw	t1,136(sp)
    134c:	3c050600 	lui	a1,0x600
    1350:	24a52e6c 	addiu	a1,a1,11884
    1354:	8fa40050 	lw	a0,80(sp)
    1358:	24060000 	li	a2,0
    135c:	0c000000 	jal	0 <func_808FCF40>
    1360:	afa90088 	sw	t1,136(sp)
    1364:	3c01c348 	lui	at,0xc348
    1368:	44810000 	mtc1	at,$f0
    136c:	3c0141f0 	lui	at,0x41f0
    1370:	44818000 	mtc1	at,$f16
    1374:	c6060028 	lwc1	$f6,40(s0)
    1378:	240d000e 	li	t5,14
    137c:	a60d039c 	sh	t5,924(s0)
    1380:	46103201 	sub.s	$f8,$f6,$f16
    1384:	ae000398 	sw	zero,920(s0)
    1388:	24040023 	li	a0,35
    138c:	e6000024 	swc1	$f0,36(s0)
    1390:	e6080028 	swc1	$f8,40(s0)
    1394:	0c000000 	jal	0 <func_808FCF40>
    1398:	e600002c 	swc1	$f0,44(s0)
    139c:	8fa90088 	lw	t1,136(sp)

000013a0 <L808FE2E0>:
    13a0:	3c010001 	lui	at,0x1
    13a4:	02214021 	addu	t0,s1,at
    13a8:	260e0028 	addiu	t6,s0,40
    13ac:	afae0054 	sw	t6,84(sp)
    13b0:	afa80050 	sw	t0,80(sp)
    13b4:	2604014c 	addiu	a0,s0,332
    13b8:	0c000000 	jal	0 <func_808FCF40>
    13bc:	afa90088 	sw	t1,136(sp)
    13c0:	3c0544a1 	lui	a1,0x44a1
    13c4:	3c063d4c 	lui	a2,0x3d4c
    13c8:	34c6cccd 	ori	a2,a2,0xcccd
    13cc:	34a52000 	ori	a1,a1,0x2000
    13d0:	8fa40054 	lw	a0,84(sp)
    13d4:	0c000000 	jal	0 <func_808FCF40>
    13d8:	3c073f80 	lui	a3,0x3f80
    13dc:	3c010000 	lui	at,0x0
    13e0:	c4200000 	lwc1	$f0,0(at)
    13e4:	3c014248 	lui	at,0x4248
    13e8:	44818000 	mtc1	at,$f16
    13ec:	8fa90088 	lw	t1,136(sp)
    13f0:	3c01437a 	lui	at,0x437a
    13f4:	44819000 	mtc1	at,$f18
    13f8:	8fa80050 	lw	t0,80(sp)
    13fc:	3c01c385 	lui	at,0xc385
    1400:	44815000 	mtc1	at,$f10
    1404:	3c020000 	lui	v0,0x0
    1408:	240fc000 	li	t7,-16384
    140c:	24420000 	addiu	v0,v0,0
    1410:	3c014435 	lui	at,0x4435
    1414:	e5200028 	swc1	$f0,40(t1)
    1418:	a52f00b6 	sh	t7,182(t1)
    141c:	e5320024 	swc1	$f18,36(t1)
    1420:	e52a002c 	swc1	$f10,44(t1)
    1424:	8c580000 	lw	t8,0(v0)
    1428:	44812000 	mtc1	at,$f4
    142c:	3c01c33a 	lui	at,0xc33a
    1430:	44813000 	mtc1	at,$f6
    1434:	e7040024 	swc1	$f4,36(t8)
    1438:	8c590000 	lw	t9,0(v0)
    143c:	3c01c120 	lui	at,0xc120
    1440:	44815000 	mtc1	at,$f10
    1444:	e7200028 	swc1	$f0,40(t9)
    1448:	8c4b0000 	lw	t3,0(v0)
    144c:	3c0142a0 	lui	at,0x42a0
    1450:	02202025 	move	a0,s1
    1454:	e566002c 	swc1	$f6,44(t3)
    1458:	c6080024 	lwc1	$f8,36(s0)
    145c:	c6060028 	lwc1	$f6,40(s0)
    1460:	8e030398 	lw	v1,920(s0)
    1464:	460a4100 	add.s	$f4,$f8,$f10
    1468:	44814000 	mtc1	at,$f8
    146c:	3c014348 	lui	at,0x4348
    1470:	02002825 	move	a1,s0
    1474:	e60403a4 	swc1	$f4,932(s0)
    1478:	c604002c 	lwc1	$f4,44(s0)
    147c:	46083280 	add.s	$f10,$f6,$f8
    1480:	2406001e 	li	a2,30
    1484:	46102180 	add.s	$f6,$f4,$f16
    1488:	e60a03a8 	swc1	$f10,936(s0)
    148c:	e60603ac 	swc1	$f6,940(s0)
    1490:	c5280024 	lwc1	$f8,36(t1)
    1494:	44813000 	mtc1	at,$f6
    1498:	24010014 	li	at,20
    149c:	e60803b0 	swc1	$f8,944(s0)
    14a0:	c52a0028 	lwc1	$f10,40(t1)
    14a4:	e60a03b4 	swc1	$f10,948(s0)
    14a8:	c524002c 	lwc1	$f4,44(t1)
    14ac:	46062201 	sub.s	$f8,$f4,$f6
    14b0:	14610005 	bne	v1,at,14c8 <L808FE2E0+0x128>
    14b4:	e60803b8 	swc1	$f8,952(s0)
    14b8:	0c000000 	jal	0 <func_808FCF40>
    14bc:	afa80050 	sw	t0,80(sp)
    14c0:	8fa80050 	lw	t0,80(sp)
    14c4:	8e030398 	lw	v1,920(s0)
    14c8:	2401003c 	li	at,60
    14cc:	14610023 	bne	v1,at,155c <L808FE2E0+0x1bc>
    14d0:	240c000f 	li	t4,15
    14d4:	3c014170 	lui	at,0x4170
    14d8:	44817000 	mtc1	at,$f14
    14dc:	3c014348 	lui	at,0x4348
    14e0:	44815000 	mtc1	at,$f10
    14e4:	c6000024 	lwc1	$f0,36(s0)
    14e8:	3c01431a 	lui	at,0x431a
    14ec:	44813000 	mtc1	at,$f6
    14f0:	460a0100 	add.s	$f4,$f0,$f10
    14f4:	3c014270 	lui	at,0x4270
    14f8:	44815000 	mtc1	at,$f10
    14fc:	c60c0028 	lwc1	$f12,40(s0)
    1500:	46062201 	sub.s	$f8,$f4,$f6
    1504:	c602002c 	lwc1	$f2,44(s0)
    1508:	3c01429a 	lui	at,0x429a
    150c:	460a6100 	add.s	$f4,$f12,$f10
    1510:	e60803a4 	swc1	$f8,932(s0)
    1514:	44814000 	mtc1	at,$f8
    1518:	460e1181 	sub.s	$f6,$f2,$f14
    151c:	e60403a8 	swc1	$f4,936(s0)
    1520:	3c0142c8 	lui	at,0x42c8
    1524:	46086280 	add.s	$f10,$f12,$f8
    1528:	44812000 	mtc1	at,$f4
    152c:	3c0140a0 	lui	at,0x40a0
    1530:	44814000 	mtc1	at,$f8
    1534:	e60603ac 	swc1	$f6,940(s0)
    1538:	46045180 	add.s	$f6,$f10,$f4
    153c:	240d0002 	li	t5,2
    1540:	a60c039c 	sh	t4,924(s0)
    1544:	46081280 	add.s	$f10,$f2,$f8
    1548:	ae000398 	sw	zero,920(s0)
    154c:	e60603b4 	swc1	$f6,948(s0)
    1550:	a20d0314 	sb	t5,788(s0)
    1554:	e60a03b8 	swc1	$f10,952(s0)
    1558:	e60003b0 	swc1	$f0,944(s0)
    155c:	8d0e1de4 	lw	t6,7652(t0)
    1560:	02002025 	move	a0,s0
    1564:	31cf001f 	andi	t7,t6,0x1f
    1568:	55e004da 	bnezl	t7,28d4 <L808FF810+0x4>
    156c:	3c014080 	lui	at,0x4080
    1570:	0c000000 	jal	0 <func_808FCF40>
    1574:	240539d1 	li	a1,14801
    1578:	100004d6 	b	28d4 <L808FF810+0x4>
    157c:	3c014080 	lui	at,0x4080

00001580 <L808FE4C0>:
    1580:	3c180001 	lui	t8,0x1
    1584:	0311c021 	addu	t8,t8,s1
    1588:	8f181de4 	lw	t8,7652(t8)
    158c:	3319001f 	andi	t9,t8,0x1f
    1590:	57200009 	bnezl	t9,15b8 <L808FE4C0+0x38>
    1594:	2604014c 	addiu	a0,s0,332
    1598:	8e0b0398 	lw	t3,920(s0)
    159c:	02002025 	move	a0,s0
    15a0:	2d610064 	sltiu	at,t3,100
    15a4:	50200004 	beqzl	at,15b8 <L808FE4C0+0x38>
    15a8:	2604014c 	addiu	a0,s0,332
    15ac:	0c000000 	jal	0 <func_808FCF40>
    15b0:	240539d1 	li	a1,14801
    15b4:	2604014c 	addiu	a0,s0,332
    15b8:	0c000000 	jal	0 <func_808FCF40>
    15bc:	afa40050 	sw	a0,80(sp)
    15c0:	3c01429a 	lui	at,0x429a
    15c4:	44813000 	mtc1	at,$f6
    15c8:	c6040028 	lwc1	$f4,40(s0)
    15cc:	3c063d4c 	lui	a2,0x3d4c
    15d0:	34c6cccd 	ori	a2,a2,0xcccd
    15d4:	46062200 	add.s	$f8,$f4,$f6
    15d8:	260403b4 	addiu	a0,s0,948
    15dc:	3c0740a0 	lui	a3,0x40a0
    15e0:	44054000 	mfc1	a1,$f8
    15e4:	0c000000 	jal	0 <func_808FCF40>
    15e8:	00000000 	nop
    15ec:	8e030398 	lw	v1,920(s0)
    15f0:	2c610032 	sltiu	at,v1,50
    15f4:	1420001c 	bnez	at,1668 <L808FE4C0+0xe8>
    15f8:	24010032 	li	at,50
    15fc:	1461000d 	bne	v1,at,1634 <L808FE4C0+0xb4>
    1600:	8fa40050 	lw	a0,80(sp)
    1604:	3c050600 	lui	a1,0x600
    1608:	24a50bfc 	addiu	a1,a1,3068
    160c:	0c000000 	jal	0 <func_808FCF40>
    1610:	24060000 	li	a2,0
    1614:	3c040600 	lui	a0,0x600
    1618:	0c000000 	jal	0 <func_808FCF40>
    161c:	24840bfc 	addiu	a0,a0,3068
    1620:	44825000 	mtc1	v0,$f10
    1624:	240c0003 	li	t4,3
    1628:	a20c0314 	sb	t4,788(s0)
    162c:	46805120 	cvt.s.w	$f4,$f10
    1630:	e6040194 	swc1	$f4,404(s0)
    1634:	8fa40050 	lw	a0,80(sp)
    1638:	0c000000 	jal	0 <func_808FCF40>
    163c:	8e050194 	lw	a1,404(s0)
    1640:	10400009 	beqz	v0,1668 <L808FE4C0+0xe8>
    1644:	8fa40050 	lw	a0,80(sp)
    1648:	3c050600 	lui	a1,0x600
    164c:	24a53f38 	addiu	a1,a1,16184
    1650:	0c000000 	jal	0 <func_808FCF40>
    1654:	24060000 	li	a2,0
    1658:	3c01447a 	lui	at,0x447a
    165c:	44813000 	mtc1	at,$f6
    1660:	00000000 	nop
    1664:	e6060194 	swc1	$f6,404(s0)
    1668:	8e030398 	lw	v1,920(s0)
    166c:	2c610047 	sltiu	at,v1,71
    1670:	14200008 	bnez	at,1694 <L808FE4C0+0x114>
    1674:	3c014120 	lui	at,0x4120
    1678:	44817000 	mtc1	at,$f14
    167c:	260401b4 	addiu	a0,s0,436
    1680:	3c05437f 	lui	a1,0x437f
    1684:	44077000 	mfc1	a3,$f14
    1688:	0c000000 	jal	0 <func_808FCF40>
    168c:	3c063f80 	lui	a2,0x3f80
    1690:	8e030398 	lw	v1,920(s0)
    1694:	2401008c 	li	at,140
    1698:	1461048d 	bne	v1,at,28d0 <L808FF810>
    169c:	240d0010 	li	t5,16
    16a0:	a60d039c 	sh	t5,924(s0)
    16a4:	ae000398 	sw	zero,920(s0)
    16a8:	3c050600 	lui	a1,0x600
    16ac:	24a53754 	addiu	a1,a1,14164
    16b0:	8fa40050 	lw	a0,80(sp)
    16b4:	0c000000 	jal	0 <func_808FCF40>
    16b8:	24060000 	li	a2,0
    16bc:	3c040600 	lui	a0,0x600
    16c0:	0c000000 	jal	0 <func_808FCF40>
    16c4:	24843754 	addiu	a0,a0,14164
    16c8:	44824000 	mtc1	v0,$f8
    16cc:	3c013f80 	lui	at,0x3f80
    16d0:	44812000 	mtc1	at,$f4
    16d4:	468042a0 	cvt.s.w	$f10,$f8
    16d8:	240e0037 	li	t6,55
    16dc:	3c010001 	lui	at,0x1
    16e0:	a20e0339 	sb	t6,825(s0)
    16e4:	00310821 	addu	at,at,s1
    16e8:	02002025 	move	a0,s0
    16ec:	e60a0194 	swc1	$f10,404(s0)
    16f0:	240539d3 	li	a1,14803
    16f4:	0c000000 	jal	0 <func_808FCF40>
    16f8:	e4240afc 	swc1	$f4,2812(at)

000016fc <L808FE63C>:
    16fc:	260f014c 	addiu	t7,s0,332
    1700:	261803b4 	addiu	t8,s0,948
    1704:	afb80048 	sw	t8,72(sp)
    1708:	afaf0050 	sw	t7,80(sp)
    170c:	8e190398 	lw	t9,920(s0)
    1710:	240b0037 	li	t3,55
    1714:	2f210019 	sltiu	at,t9,25
    1718:	50200004 	beqzl	at,172c <L808FE63C+0x30>
    171c:	3c0142c8 	lui	at,0x42c8
    1720:	10000019 	b	1788 <L808FE63C+0x8c>
    1724:	a20b0339 	sb	t3,825(s0)
    1728:	3c0142c8 	lui	at,0x42c8
    172c:	44813000 	mtc1	at,$f6
    1730:	c6080194 	lwc1	$f8,404(s0)
    1734:	240c0006 	li	t4,6
    1738:	a20c0339 	sb	t4,825(s0)
    173c:	4608303c 	c.lt.s	$f6,$f8
    1740:	2604030c 	addiu	a0,s0,780
    1744:	3c0540e0 	lui	a1,0x40e0
    1748:	3c063f80 	lui	a2,0x3f80
    174c:	4500000c 	bc1f	1780 <L808FE63C+0x84>
    1750:	3c073e4c 	lui	a3,0x3e4c
    1754:	3c014000 	lui	at,0x4000
    1758:	44810000 	mtc1	at,$f0
    175c:	3c014170 	lui	at,0x4170
    1760:	44817000 	mtc1	at,$f14
    1764:	44070000 	mfc1	a3,$f0
    1768:	2604030c 	addiu	a0,s0,780
    176c:	44057000 	mfc1	a1,$f14
    1770:	0c000000 	jal	0 <func_808FCF40>
    1774:	3c063f80 	lui	a2,0x3f80
    1778:	10000004 	b	178c <L808FE63C+0x90>
    177c:	44805000 	mtc1	zero,$f10
    1780:	0c000000 	jal	0 <func_808FCF40>
    1784:	34e7cccd 	ori	a3,a3,0xcccd
    1788:	44805000 	mtc1	zero,$f10
    178c:	00000000 	nop
    1790:	e60a01b4 	swc1	$f10,436(s0)
    1794:	0c000000 	jal	0 <func_808FCF40>
    1798:	8fa40050 	lw	a0,80(sp)
    179c:	8fa40050 	lw	a0,80(sp)
    17a0:	0c000000 	jal	0 <func_808FCF40>
    17a4:	8e050194 	lw	a1,404(s0)
    17a8:	10400009 	beqz	v0,17d0 <L808FE63C+0xd4>
    17ac:	8fa40050 	lw	a0,80(sp)
    17b0:	3c050600 	lui	a1,0x600
    17b4:	24a528a8 	addiu	a1,a1,10408
    17b8:	0c000000 	jal	0 <func_808FCF40>
    17bc:	24060000 	li	a2,0
    17c0:	3c01447a 	lui	at,0x447a
    17c4:	44812000 	mtc1	at,$f4
    17c8:	00000000 	nop
    17cc:	e6040194 	swc1	$f4,404(s0)
    17d0:	3c014348 	lui	at,0x4348
    17d4:	44814000 	mtc1	at,$f8
    17d8:	c6060024 	lwc1	$f6,36(s0)
    17dc:	3c0142b4 	lui	at,0x42b4
    17e0:	44812000 	mtc1	at,$f4
    17e4:	46083280 	add.s	$f10,$f6,$f8
    17e8:	260403a4 	addiu	a0,s0,932
    17ec:	3c063dcc 	lui	a2,0x3dcc
    17f0:	3c0740cc 	lui	a3,0x40cc
    17f4:	46045181 	sub.s	$f6,$f10,$f4
    17f8:	34e7cccc 	ori	a3,a3,0xcccc
    17fc:	34c6cccd 	ori	a2,a2,0xcccd
    1800:	afa4004c 	sw	a0,76(sp)
    1804:	44053000 	mfc1	a1,$f6
    1808:	0c000000 	jal	0 <func_808FCF40>
    180c:	00000000 	nop
    1810:	3c014270 	lui	at,0x4270
    1814:	44815000 	mtc1	at,$f10
    1818:	c6080028 	lwc1	$f8,40(s0)
    181c:	44813000 	mtc1	at,$f6
    1820:	3c01428c 	lui	at,0x428c
    1824:	460a4100 	add.s	$f4,$f8,$f10
    1828:	44815000 	mtc1	at,$f10
    182c:	3c063dcc 	lui	a2,0x3dcc
    1830:	34c6cccd 	ori	a2,a2,0xcccd
    1834:	46062201 	sub.s	$f8,$f4,$f6
    1838:	260403a8 	addiu	a0,s0,936
    183c:	3c074150 	lui	a3,0x4150
    1840:	460a4101 	sub.s	$f4,$f8,$f10
    1844:	44052000 	mfc1	a1,$f4
    1848:	0c000000 	jal	0 <func_808FCF40>
    184c:	00000000 	nop
    1850:	3c014220 	lui	at,0x4220
    1854:	44816000 	mtc1	at,$f12
    1858:	c6060028 	lwc1	$f6,40(s0)
    185c:	3c063dcc 	lui	a2,0x3dcc
    1860:	3c07406c 	lui	a3,0x406c
    1864:	460c3200 	add.s	$f8,$f6,$f12
    1868:	34e7cccc 	ori	a3,a3,0xcccc
    186c:	34c6cccd 	ori	a2,a2,0xcccd
    1870:	8fa40048 	lw	a0,72(sp)
    1874:	44054000 	mfc1	a1,$f8
    1878:	0c000000 	jal	0 <func_808FCF40>
    187c:	00000000 	nop
    1880:	8e030398 	lw	v1,920(s0)
    1884:	2401001e 	li	at,30
    1888:	02002025 	move	a0,s0
    188c:	54610008 	bnel	v1,at,18b0 <L808FE63C+0x1b4>
    1890:	2c610033 	sltiu	at,v1,51
    1894:	0c000000 	jal	0 <func_808FCF40>
    1898:	240539d4 	li	a1,14804
    189c:	02002025 	move	a0,s0
    18a0:	0c000000 	jal	0 <func_808FCF40>
    18a4:	2405396d 	li	a1,14701
    18a8:	8e030398 	lw	v1,920(s0)
    18ac:	2c610033 	sltiu	at,v1,51
    18b0:	10200002 	beqz	at,18bc <L808FE63C+0x1c0>
    18b4:	240d0001 	li	t5,1
    18b8:	a3ad008d 	sb	t5,141(sp)
    18bc:	2c61003c 	sltiu	at,v1,60
    18c0:	14200403 	bnez	at,28d0 <L808FF810>
    18c4:	02202025 	move	a0,s1
    18c8:	0c000000 	jal	0 <func_808FCF40>
    18cc:	00002825 	move	a1,zero
    18d0:	8fa3004c 	lw	v1,76(sp)
    18d4:	240d0011 	li	t5,17
    18d8:	02002025 	move	a0,s0
    18dc:	8c6f0000 	lw	t7,0(v1)
    18e0:	02202825 	move	a1,s1
    18e4:	24060153 	li	a2,339
    18e8:	ac4f005c 	sw	t7,92(v0)
    18ec:	8c6e0004 	lw	t6,4(v1)
    18f0:	00003825 	move	a3,zero
    18f4:	ac4e0060 	sw	t6,96(v0)
    18f8:	8c6f0008 	lw	t7,8(v1)
    18fc:	240e0002 	li	t6,2
    1900:	ac4f0064 	sw	t7,100(v0)
    1904:	8c790000 	lw	t9,0(v1)
    1908:	ac590074 	sw	t9,116(v0)
    190c:	8c780004 	lw	t8,4(v1)
    1910:	ac580078 	sw	t8,120(v0)
    1914:	8c790008 	lw	t9,8(v1)
    1918:	ac59007c 	sw	t9,124(v0)
    191c:	8e0c03b0 	lw	t4,944(s0)
    1920:	ac4c0050 	sw	t4,80(v0)
    1924:	8e0b03b4 	lw	t3,948(s0)
    1928:	ac4b0054 	sw	t3,84(v0)
    192c:	8e0c03b8 	lw	t4,952(s0)
    1930:	ac4c0058 	sw	t4,88(v0)
    1934:	a60d039c 	sh	t5,924(s0)
    1938:	ae000398 	sw	zero,920(s0)
    193c:	0c000000 	jal	0 <func_808FCF40>
    1940:	a20e0337 	sb	t6,823(s0)
    1944:	8fa40050 	lw	a0,80(sp)
    1948:	0c000000 	jal	0 <func_808FCF40>
    194c:	02202825 	move	a1,s1
    1950:	3c060602 	lui	a2,0x602
    1954:	24c65970 	addiu	a2,a2,22896
    1958:	02202025 	move	a0,s1
    195c:	8fa50050 	lw	a1,80(sp)
    1960:	00003825 	move	a3,zero
    1964:	afa00010 	sw	zero,16(sp)
    1968:	afa00014 	sw	zero,20(sp)
    196c:	0c000000 	jal	0 <func_808FCF40>
    1970:	afa00018 	sw	zero,24(sp)
    1974:	02002025 	move	a0,s0
    1978:	02202825 	move	a1,s1
    197c:	2406017e 	li	a2,382
    1980:	0c000000 	jal	0 <func_808FCF40>
    1984:	00003825 	move	a3,zero
    1988:	02202025 	move	a0,s1
    198c:	02002825 	move	a1,s0
    1990:	0c000000 	jal	0 <func_808FCF40>
    1994:	24060054 	li	a2,84
    1998:	240f0003 	li	t7,3
    199c:	100003cc 	b	28d0 <L808FF810>
    19a0:	a20f0314 	sb	t7,788(s0)

000019a4 <L808FE8E4>:
    19a4:	24180006 	li	t8,6
    19a8:	a2180339 	sb	t8,825(s0)
    19ac:	2604014c 	addiu	a0,s0,332
    19b0:	afa40050 	sw	a0,80(sp)
    19b4:	0c000000 	jal	0 <func_808FCF40>
    19b8:	afa90088 	sw	t1,136(sp)
    19bc:	8fa90088 	lw	t1,136(sp)
    19c0:	3c0141a0 	lui	at,0x41a0
    19c4:	44811000 	mtc1	at,$f2
    19c8:	3c014220 	lui	at,0x4220
    19cc:	44816000 	mtc1	at,$f12
    19d0:	c52a0024 	lwc1	$f10,36(t1)
    19d4:	3c014120 	lui	at,0x4120
    19d8:	44817000 	mtc1	at,$f14
    19dc:	460c5101 	sub.s	$f4,$f10,$f12
    19e0:	3c0141f0 	lui	at,0x41f0
    19e4:	44818000 	mtc1	at,$f16
    19e8:	3c014270 	lui	at,0x4270
    19ec:	e60403a4 	swc1	$f4,932(s0)
    19f0:	c5260028 	lwc1	$f6,40(t1)
    19f4:	8e190398 	lw	t9,920(s0)
    19f8:	3c050601 	lui	a1,0x601
    19fc:	460c3200 	add.s	$f8,$f6,$f12
    1a00:	240b0012 	li	t3,18
    1a04:	24a50380 	addiu	a1,a1,896
    1a08:	24060000 	li	a2,0
    1a0c:	e60803a8 	swc1	$f8,936(s0)
    1a10:	c52a002c 	lwc1	$f10,44(t1)
    1a14:	46025100 	add.s	$f4,$f10,$f2
    1a18:	e60403ac 	swc1	$f4,940(s0)
    1a1c:	c5260024 	lwc1	$f6,36(t1)
    1a20:	44812000 	mtc1	at,$f4
    1a24:	24010019 	li	at,25
    1a28:	e60603b0 	swc1	$f6,944(s0)
    1a2c:	c5280028 	lwc1	$f8,40(t1)
    1a30:	460e4280 	add.s	$f10,$f8,$f14
    1a34:	46045180 	add.s	$f6,$f10,$f4
    1a38:	46103201 	sub.s	$f8,$f6,$f16
    1a3c:	e60803b4 	swc1	$f8,948(s0)
    1a40:	c52a002c 	lwc1	$f10,44(t1)
    1a44:	172103a2 	bne	t9,at,28d0 <L808FF810>
    1a48:	e60a03b8 	swc1	$f10,952(s0)
    1a4c:	a60b039c 	sh	t3,924(s0)
    1a50:	ae000398 	sw	zero,920(s0)
    1a54:	0c000000 	jal	0 <func_808FCF40>
    1a58:	8fa40050 	lw	a0,80(sp)
    1a5c:	3c014248 	lui	at,0x4248
    1a60:	44818000 	mtc1	at,$f16
    1a64:	3c0143fa 	lui	at,0x43fa
    1a68:	44813000 	mtc1	at,$f6
    1a6c:	c6000024 	lwc1	$f0,36(s0)
    1a70:	44802000 	mtc1	zero,$f4
    1a74:	3c0143af 	lui	at,0x43af
    1a78:	46060200 	add.s	$f8,$f0,$f6
    1a7c:	44815000 	mtc1	at,$f10
    1a80:	e6040168 	swc1	$f4,360(s0)
    1a84:	3c014270 	lui	at,0x4270
    1a88:	460a4101 	sub.s	$f4,$f8,$f10
    1a8c:	c60c0028 	lwc1	$f12,40(s0)
    1a90:	44815000 	mtc1	at,$f10
    1a94:	46100200 	add.s	$f8,$f0,$f16
    1a98:	c602002c 	lwc1	$f2,44(s0)
    1a9c:	240c4000 	li	t4,16384
    1aa0:	46102181 	sub.s	$f6,$f4,$f16
    1aa4:	e60803b0 	swc1	$f8,944(s0)
    1aa8:	a60c0032 	sh	t4,50(s0)
    1aac:	460a6100 	add.s	$f4,$f12,$f10
    1ab0:	e60603a4 	swc1	$f6,932(s0)
    1ab4:	e60c03a8 	swc1	$f12,936(s0)
    1ab8:	e60203ac 	swc1	$f2,940(s0)
    1abc:	e60403b4 	swc1	$f4,948(s0)
    1ac0:	10000383 	b	28d0 <L808FF810>
    1ac4:	e60203b8 	swc1	$f2,952(s0)

00001ac8 <L808FEA08>:
    1ac8:	8e0e0398 	lw	t6,920(s0)
    1acc:	240d0006 	li	t5,6
    1ad0:	2401001e 	li	at,30
    1ad4:	15c10003 	bne	t6,at,1ae4 <L808FEA08+0x1c>
    1ad8:	a20d0339 	sb	t5,825(s0)
    1adc:	0c000000 	jal	0 <func_808FCF40>
    1ae0:	24040065 	li	a0,101
    1ae4:	3c073dcc 	lui	a3,0x3dcc
    1ae8:	34e7cccd 	ori	a3,a3,0xcccd
    1aec:	2604030c 	addiu	a0,s0,780
    1af0:	3c0540e0 	lui	a1,0x40e0
    1af4:	0c000000 	jal	0 <func_808FCF40>
    1af8:	3c063f80 	lui	a2,0x3f80
    1afc:	3c0143fa 	lui	at,0x43fa
    1b00:	44814000 	mtc1	at,$f8
    1b04:	c6060024 	lwc1	$f6,36(s0)
    1b08:	3c0143af 	lui	at,0x43af
    1b0c:	44812000 	mtc1	at,$f4
    1b10:	46083280 	add.s	$f10,$f6,$f8
    1b14:	3c063dcc 	lui	a2,0x3dcc
    1b18:	34c6cccd 	ori	a2,a2,0xcccd
    1b1c:	260403a4 	addiu	a0,s0,932
    1b20:	46045181 	sub.s	$f6,$f10,$f4
    1b24:	3c073f80 	lui	a3,0x3f80
    1b28:	44053000 	mfc1	a1,$f6
    1b2c:	0c000000 	jal	0 <func_808FCF40>
    1b30:	00000000 	nop
    1b34:	3c063dcc 	lui	a2,0x3dcc
    1b38:	34c6cccd 	ori	a2,a2,0xcccd
    1b3c:	260403b0 	addiu	a0,s0,944
    1b40:	8e050024 	lw	a1,36(s0)
    1b44:	0c000000 	jal	0 <func_808FCF40>
    1b48:	3c073f80 	lui	a3,0x3f80
    1b4c:	3c063dcc 	lui	a2,0x3dcc
    1b50:	3c073ca3 	lui	a3,0x3ca3
    1b54:	34e7d70a 	ori	a3,a3,0xd70a
    1b58:	34c6cccd 	ori	a2,a2,0xcccd
    1b5c:	26040228 	addiu	a0,s0,552
    1b60:	0c000000 	jal	0 <func_808FCF40>
    1b64:	3c053f80 	lui	a1,0x3f80
    1b68:	8e0f0398 	lw	t7,920(s0)
    1b6c:	24010041 	li	at,65
    1b70:	24180013 	li	t8,19
    1b74:	55e10357 	bnel	t7,at,28d4 <L808FF810+0x4>
    1b78:	3c014080 	lui	at,0x4080
    1b7c:	a618039c 	sh	t8,924(s0)
    1b80:	10000353 	b	28d0 <L808FF810>
    1b84:	ae000398 	sw	zero,920(s0)

00001b88 <L808FEAC8>:
    1b88:	3c013f00 	lui	at,0x3f00
    1b8c:	44815000 	mtc1	at,$f10
    1b90:	c6080394 	lwc1	$f8,916(s0)
    1b94:	c6000060 	lwc1	$f0,96(s0)
    1b98:	3c013f80 	lui	at,0x3f80
    1b9c:	460a4100 	add.s	$f4,$f8,$f10
    1ba0:	c6060028 	lwc1	$f6,40(s0)
    1ba4:	44815000 	mtc1	at,$f10
    1ba8:	8e0b0398 	lw	t3,920(s0)
    1bac:	e6040394 	swc1	$f4,916(s0)
    1bb0:	46003200 	add.s	$f8,$f6,$f0
    1bb4:	24190006 	li	t9,6
    1bb8:	2401000a 	li	at,10
    1bbc:	460a0101 	sub.s	$f4,$f0,$f10
    1bc0:	a2190339 	sb	t9,825(s0)
    1bc4:	e6080028 	swc1	$f8,40(s0)
    1bc8:	15610341 	bne	t3,at,28d0 <L808FF810>
    1bcc:	e6040060 	swc1	$f4,96(s0)
    1bd0:	3c01437a 	lui	at,0x437a
    1bd4:	44814000 	mtc1	at,$f8
    1bd8:	c6060024 	lwc1	$f6,36(s0)
    1bdc:	240c0014 	li	t4,20
    1be0:	a60c039c 	sh	t4,924(s0)
    1be4:	46083280 	add.s	$f10,$f6,$f8
    1be8:	ae000398 	sw	zero,920(s0)
    1bec:	3c010000 	lui	at,0x0
    1bf0:	44803000 	mtc1	zero,$f6
    1bf4:	e60a0024 	swc1	$f10,36(s0)
    1bf8:	c4240000 	lwc1	$f4,0(at)
    1bfc:	02202025 	move	a0,s1
    1c00:	02002825 	move	a1,s0
    1c04:	24060053 	li	a2,83
    1c08:	e6060394 	swc1	$f6,916(s0)
    1c0c:	0c000000 	jal	0 <func_808FCF40>
    1c10:	e6040028 	swc1	$f4,40(s0)
    1c14:	3c0140a0 	lui	at,0x40a0
    1c18:	44814000 	mtc1	at,$f8
    1c1c:	3c013f80 	lui	at,0x3f80
    1c20:	44815000 	mtc1	at,$f10
    1c24:	e608030c 	swc1	$f8,780(s0)
    1c28:	10000329 	b	28d0 <L808FF810>
    1c2c:	e60a0228 	swc1	$f10,552(s0)

00001c30 <L808FEB70>:
    1c30:	240d0006 	li	t5,6
    1c34:	a20d0339 	sb	t5,825(s0)
    1c38:	2604014c 	addiu	a0,s0,332
    1c3c:	afa40050 	sw	a0,80(sp)
    1c40:	0c000000 	jal	0 <func_808FCF40>
    1c44:	afa90088 	sw	t1,136(sp)
    1c48:	3c0141a0 	lui	at,0x41a0
    1c4c:	44811000 	mtc1	at,$f2
    1c50:	3c014220 	lui	at,0x4220
    1c54:	44816000 	mtc1	at,$f12
    1c58:	3c014120 	lui	at,0x4120
    1c5c:	44817000 	mtc1	at,$f14
    1c60:	3c0141f0 	lui	at,0x41f0
    1c64:	44818000 	mtc1	at,$f16
    1c68:	3c01437a 	lui	at,0x437a
    1c6c:	44819000 	mtc1	at,$f18
    1c70:	c6000060 	lwc1	$f0,96(s0)
    1c74:	3c013f80 	lui	at,0x3f80
    1c78:	c6040028 	lwc1	$f4,40(s0)
    1c7c:	44814000 	mtc1	at,$f8
    1c80:	8fa90088 	lw	t1,136(sp)
    1c84:	46002180 	add.s	$f6,$f4,$f0
    1c88:	3c010000 	lui	at,0x0
    1c8c:	240ec000 	li	t6,-16384
    1c90:	46080281 	sub.s	$f10,$f0,$f8
    1c94:	e6060028 	swc1	$f6,40(s0)
    1c98:	3c050601 	lui	a1,0x601
    1c9c:	460c9201 	sub.s	$f8,$f18,$f12
    1ca0:	e60a0060 	swc1	$f10,96(s0)
    1ca4:	e5320024 	swc1	$f18,36(t1)
    1ca8:	c4240000 	lwc1	$f4,0(at)
    1cac:	3c01c385 	lui	at,0xc385
    1cb0:	44813000 	mtc1	at,$f6
    1cb4:	3c014348 	lui	at,0x4348
    1cb8:	44815000 	mtc1	at,$f10
    1cbc:	e5240028 	swc1	$f4,40(t1)
    1cc0:	a52e00b6 	sh	t6,182(t1)
    1cc4:	460a4101 	sub.s	$f4,$f8,$f10
    1cc8:	e526002c 	swc1	$f6,44(t1)
    1ccc:	3c0142c8 	lui	at,0x42c8
    1cd0:	240f0015 	li	t7,21
    1cd4:	e60403a4 	swc1	$f4,932(s0)
    1cd8:	c5260028 	lwc1	$f6,40(t1)
    1cdc:	24a50380 	addiu	a1,a1,896
    1ce0:	460c3200 	add.s	$f8,$f6,$f12
    1ce4:	46104281 	sub.s	$f10,$f8,$f16
    1ce8:	44814000 	mtc1	at,$f8
    1cec:	3c014270 	lui	at,0x4270
    1cf0:	e60a03a8 	swc1	$f10,936(s0)
    1cf4:	c524002c 	lwc1	$f4,44(t1)
    1cf8:	46022181 	sub.s	$f6,$f4,$f2
    1cfc:	46083280 	add.s	$f10,$f6,$f8
    1d00:	e60a03ac 	swc1	$f10,940(s0)
    1d04:	c5240024 	lwc1	$f4,36(t1)
    1d08:	44815000 	mtc1	at,$f10
    1d0c:	3c010000 	lui	at,0x0
    1d10:	e60403b0 	swc1	$f4,944(s0)
    1d14:	c5260028 	lwc1	$f6,40(t1)
    1d18:	460e3200 	add.s	$f8,$f6,$f14
    1d1c:	460a4100 	add.s	$f4,$f8,$f10
    1d20:	46022181 	sub.s	$f6,$f4,$f2
    1d24:	46103200 	add.s	$f8,$f6,$f16
    1d28:	c6060028 	lwc1	$f6,40(s0)
    1d2c:	e60803b4 	swc1	$f8,948(s0)
    1d30:	c52a002c 	lwc1	$f10,44(t1)
    1d34:	e60a03b8 	swc1	$f10,952(s0)
    1d38:	c4200000 	lwc1	$f0,0(at)
    1d3c:	3c010000 	lui	at,0x0
    1d40:	c4240000 	lwc1	$f4,0(at)
    1d44:	4600303e 	c.le.s	$f6,$f0
    1d48:	e60403bc 	swc1	$f4,956(s0)
    1d4c:	450202e1 	bc1fl	28d4 <L808FF810+0x4>
    1d50:	3c014080 	lui	at,0x4080
    1d54:	44801000 	mtc1	zero,$f2
    1d58:	e6000028 	swc1	$f0,40(s0)
    1d5c:	a60f039c 	sh	t7,924(s0)
    1d60:	ae000398 	sw	zero,920(s0)
    1d64:	e60e0420 	swc1	$f14,1056(s0)
    1d68:	e6020060 	swc1	$f2,96(s0)
    1d6c:	44061000 	mfc1	a2,$f2
    1d70:	0c000000 	jal	0 <func_808FCF40>
    1d74:	8fa40050 	lw	a0,80(sp)
    1d78:	02002025 	move	a0,s0
    1d7c:	02202825 	move	a1,s1
    1d80:	00003025 	move	a2,zero
    1d84:	0c000000 	jal	0 <func_808FCF40>
    1d88:	24070003 	li	a3,3
    1d8c:	44806000 	mtc1	zero,$f12
    1d90:	240500c8 	li	a1,200
    1d94:	24060014 	li	a2,20
    1d98:	0c000000 	jal	0 <func_808FCF40>
    1d9c:	24070014 	li	a3,20
    1da0:	100002cc 	b	28d4 <L808FF810+0x4>
    1da4:	3c014080 	lui	at,0x4080

00001da8 <L808FECE8>:
    1da8:	24180006 	li	t8,6
    1dac:	a2180339 	sb	t8,825(s0)
    1db0:	0c000000 	jal	0 <func_808FCF40>
    1db4:	2604014c 	addiu	a0,s0,332
    1db8:	3c040001 	lui	a0,0x1
    1dbc:	00912021 	addu	a0,a0,s1
    1dc0:	8c841de4 	lw	a0,7652(a0)
    1dc4:	000423c0 	sll	a0,a0,0xf
    1dc8:	00042400 	sll	a0,a0,0x10
    1dcc:	0c000000 	jal	0 <func_808FCF40>
    1dd0:	00042403 	sra	a0,a0,0x10
    1dd4:	c6080420 	lwc1	$f8,1056(s0)
    1dd8:	26040420 	addiu	a0,s0,1056
    1ddc:	3c053f80 	lui	a1,0x3f80
    1de0:	46080282 	mul.s	$f10,$f0,$f8
    1de4:	3c063f40 	lui	a2,0x3f40
    1de8:	0c000000 	jal	0 <func_808FCF40>
    1dec:	e60a041c 	swc1	$f10,1052(s0)
    1df0:	8e190398 	lw	t9,920(s0)
    1df4:	2401001e 	li	at,30
    1df8:	172102b5 	bne	t9,at,28d0 <L808FF810>
    1dfc:	3c014120 	lui	at,0x4120
    1e00:	44817000 	mtc1	at,$f14
    1e04:	240b0016 	li	t3,22
    1e08:	a60b039c 	sh	t3,924(s0)
    1e0c:	e60e030c 	swc1	$f14,780(s0)

00001e10 <L808FED50>:
    1e10:	8e0c0398 	lw	t4,920(s0)
    1e14:	2604014c 	addiu	a0,s0,332
    1e18:	240d0007 	li	t5,7
    1e1c:	2d81003c 	sltiu	at,t4,60
    1e20:	50200003 	beqzl	at,1e30 <L808FED50+0x20>
    1e24:	44809000 	mtc1	zero,$f18
    1e28:	a20d0339 	sb	t5,825(s0)
    1e2c:	44809000 	mtc1	zero,$f18
    1e30:	3c010000 	lui	at,0x0
    1e34:	c4300000 	lwc1	$f16,0(at)
    1e38:	e61203bc 	swc1	$f18,956(s0)
    1e3c:	0c000000 	jal	0 <func_808FCF40>
    1e40:	e6100028 	swc1	$f16,40(s0)
    1e44:	3c063dcc 	lui	a2,0x3dcc
    1e48:	34c6cccd 	ori	a2,a2,0xcccd
    1e4c:	2604030c 	addiu	a0,s0,780
    1e50:	0c000000 	jal	0 <func_808FCF40>
    1e54:	3c053f80 	lui	a1,0x3f80
    1e58:	8e030398 	lw	v1,920(s0)
    1e5c:	2c610033 	sltiu	at,v1,51
    1e60:	14200009 	bnez	at,1e88 <L808FED50+0x78>
    1e64:	3c013f80 	lui	at,0x3f80
    1e68:	44810000 	mtc1	at,$f0
    1e6c:	3c073ccc 	lui	a3,0x3ccc
    1e70:	34e7cccd 	ori	a3,a3,0xcccd
    1e74:	44050000 	mfc1	a1,$f0
    1e78:	44060000 	mfc1	a2,$f0
    1e7c:	0c000000 	jal	0 <func_808FCF40>
    1e80:	26040224 	addiu	a0,s0,548
    1e84:	8e030398 	lw	v1,920(s0)
    1e88:	2401003c 	li	at,60
    1e8c:	14610003 	bne	v1,at,1e9c <L808FED50+0x8c>
    1e90:	240e0002 	li	t6,2
    1e94:	a20e0336 	sb	t6,822(s0)
    1e98:	8e030398 	lw	v1,920(s0)
    1e9c:	24010050 	li	at,80
    1ea0:	1461001e 	bne	v1,at,1f1c <L808FED50+0x10c>
    1ea4:	02002025 	move	a0,s0
    1ea8:	02202825 	move	a1,s1
    1eac:	24060153 	li	a2,339
    1eb0:	0c000000 	jal	0 <func_808FCF40>
    1eb4:	00003825 	move	a3,zero
    1eb8:	3c020602 	lui	v0,0x602
    1ebc:	24421a90 	addiu	v0,v0,6800
    1ec0:	00027900 	sll	t7,v0,0x4
    1ec4:	000fc702 	srl	t8,t7,0x1c
    1ec8:	0018c880 	sll	t9,t8,0x2
    1ecc:	3c0b0000 	lui	t3,0x0
    1ed0:	01795821 	addu	t3,t3,t9
    1ed4:	3c0100ff 	lui	at,0xff
    1ed8:	8d6b0000 	lw	t3,0(t3)
    1edc:	3421ffff 	ori	at,at,0xffff
    1ee0:	00416024 	and	t4,v0,at
    1ee4:	3c018000 	lui	at,0x8000
    1ee8:	240f0028 	li	t7,40
    1eec:	240d00b4 	li	t5,180
    1ef0:	240e0080 	li	t6,128
    1ef4:	016c3021 	addu	a2,t3,t4
    1ef8:	00c13021 	addu	a2,a2,at
    1efc:	afae0014 	sw	t6,20(sp)
    1f00:	afad0010 	sw	t5,16(sp)
    1f04:	afaf0018 	sw	t7,24(sp)
    1f08:	02202025 	move	a0,s1
    1f0c:	26251d4c 	addiu	a1,s1,7500
    1f10:	0c000000 	jal	0 <func_808FCF40>
    1f14:	240700a0 	li	a3,160
    1f18:	8e030398 	lw	v1,920(s0)
    1f1c:	3c014220 	lui	at,0x4220
    1f20:	44816000 	mtc1	at,$f12
    1f24:	3c0143fa 	lui	at,0x43fa
    1f28:	44813000 	mtc1	at,$f6
    1f2c:	c6000024 	lwc1	$f0,36(s0)
    1f30:	3c0143af 	lui	at,0x43af
    1f34:	44815000 	mtc1	at,$f10
    1f38:	46060200 	add.s	$f8,$f0,$f6
    1f3c:	3c0142c8 	lui	at,0x42c8
    1f40:	44813000 	mtc1	at,$f6
    1f44:	3c014270 	lui	at,0x4270
    1f48:	460a4101 	sub.s	$f4,$f8,$f10
    1f4c:	c60a0028 	lwc1	$f10,40(s0)
    1f50:	c602002c 	lwc1	$f2,44(s0)
    1f54:	e60003b0 	swc1	$f0,944(s0)
    1f58:	46062200 	add.s	$f8,$f4,$f6
    1f5c:	44813000 	mtc1	at,$f6
    1f60:	c60401bc 	lwc1	$f4,444(s0)
    1f64:	e60a03a8 	swc1	$f10,936(s0)
    1f68:	e60803a4 	swc1	$f8,932(s0)
    1f6c:	46062200 	add.s	$f8,$f4,$f6
    1f70:	2c6100a7 	sltiu	at,v1,167
    1f74:	e60203ac 	swc1	$f2,940(s0)
    1f78:	e60203b8 	swc1	$f2,952(s0)
    1f7c:	460c4281 	sub.s	$f10,$f8,$f12
    1f80:	14200006 	bnez	at,1f9c <L808FED50+0x18c>
    1f84:	e60a03b4 	swc1	$f10,948(s0)
    1f88:	2c6100ad 	sltiu	at,v1,173
    1f8c:	10200003 	beqz	at,1f9c <L808FED50+0x18c>
    1f90:	24180002 	li	t8,2
    1f94:	a2180312 	sb	t8,786(s0)
    1f98:	8e030398 	lw	v1,920(s0)
    1f9c:	2c6100bb 	sltiu	at,v1,187
    1fa0:	14200005 	bnez	at,1fb8 <L808FED50+0x1a8>
    1fa4:	2c6100c4 	sltiu	at,v1,196
    1fa8:	10200003 	beqz	at,1fb8 <L808FED50+0x1a8>
    1fac:	240a0001 	li	t2,1
    1fb0:	a20a0312 	sb	t2,786(s0)
    1fb4:	8e030398 	lw	v1,920(s0)
    1fb8:	2c6100cb 	sltiu	at,v1,203
    1fbc:	14200005 	bnez	at,1fd4 <L808FED50+0x1c4>
    1fc0:	2c6100d2 	sltiu	at,v1,210
    1fc4:	10200003 	beqz	at,1fd4 <L808FED50+0x1c4>
    1fc8:	24190002 	li	t9,2
    1fcc:	a2190312 	sb	t9,786(s0)
    1fd0:	8e030398 	lw	v1,920(s0)
    1fd4:	240100a6 	li	at,166
    1fd8:	10610005 	beq	v1,at,1ff0 <L808FED50+0x1e0>
    1fdc:	240100b9 	li	at,185
    1fe0:	10610003 	beq	v1,at,1ff0 <L808FED50+0x1e0>
    1fe4:	240100c8 	li	at,200
    1fe8:	54610007 	bnel	v1,at,2008 <L808FED50+0x1f8>
    1fec:	240100d7 	li	at,215
    1ff0:	0c000000 	jal	0 <func_808FCF40>
    1ff4:	24043997 	li	a0,14743
    1ff8:	0c000000 	jal	0 <func_808FCF40>
    1ffc:	2404398f 	li	a0,14735
    2000:	8e030398 	lw	v1,920(s0)
    2004:	240100d7 	li	at,215
    2008:	14610231 	bne	v1,at,28d0 <L808FF810>
    200c:	240b0017 	li	t3,23
    2010:	44802000 	mtc1	zero,$f4
    2014:	a60b039c 	sh	t3,924(s0)
    2018:	02202025 	move	a0,s1
    201c:	02002825 	move	a1,s0
    2020:	24060055 	li	a2,85
    2024:	0c000000 	jal	0 <func_808FCF40>
    2028:	e6040224 	swc1	$f4,548(s0)
    202c:	10000229 	b	28d4 <L808FF810+0x4>
    2030:	3c014080 	lui	at,0x4080

00002034 <L808FEF74>:
    2034:	2604014c 	addiu	a0,s0,332
    2038:	0c000000 	jal	0 <func_808FCF40>
    203c:	afa90088 	sw	t1,136(sp)
    2040:	8e030398 	lw	v1,920(s0)
    2044:	8fa90088 	lw	t1,136(sp)
    2048:	24043997 	li	a0,14743
    204c:	2c6100df 	sltiu	at,v1,223
    2050:	14200005 	bnez	at,2068 <L808FEF74+0x34>
    2054:	2c6100e8 	sltiu	at,v1,232
    2058:	10200003 	beqz	at,2068 <L808FEF74+0x34>
    205c:	240c0002 	li	t4,2
    2060:	a20c0312 	sb	t4,786(s0)
    2064:	8e030398 	lw	v1,920(s0)
    2068:	240100de 	li	at,222
    206c:	54610008 	bnel	v1,at,2090 <L808FEF74+0x5c>
    2070:	3c014000 	lui	at,0x4000
    2074:	0c000000 	jal	0 <func_808FCF40>
    2078:	afa90088 	sw	t1,136(sp)
    207c:	0c000000 	jal	0 <func_808FCF40>
    2080:	2404398f 	li	a0,14735
    2084:	8fa90088 	lw	t1,136(sp)
    2088:	8e030398 	lw	v1,920(s0)
    208c:	3c014000 	lui	at,0x4000
    2090:	44810000 	mtc1	at,$f0
    2094:	3c0141a0 	lui	at,0x41a0
    2098:	44811000 	mtc1	at,$f2
    209c:	3c014220 	lui	at,0x4220
    20a0:	44816000 	mtc1	at,$f12
    20a4:	c5260024 	lwc1	$f6,36(t1)
    20a8:	3c014120 	lui	at,0x4120
    20ac:	44817000 	mtc1	at,$f14
    20b0:	460c3201 	sub.s	$f8,$f6,$f12
    20b4:	3c0140c0 	lui	at,0x40c0
    20b8:	44815000 	mtc1	at,$f10
    20bc:	3c0140e0 	lui	at,0x40e0
    20c0:	24041808 	li	a0,6152
    20c4:	460a4100 	add.s	$f4,$f8,$f10
    20c8:	e60403a4 	swc1	$f4,932(s0)
    20cc:	c5260028 	lwc1	$f6,40(t1)
    20d0:	460c3200 	add.s	$f8,$f6,$f12
    20d4:	44813000 	mtc1	at,$f6
    20d8:	3c014270 	lui	at,0x4270
    20dc:	e60803a8 	swc1	$f8,936(s0)
    20e0:	c52a002c 	lwc1	$f10,44(t1)
    20e4:	46025100 	add.s	$f4,$f10,$f2
    20e8:	46062201 	sub.s	$f8,$f4,$f6
    20ec:	e60803ac 	swc1	$f8,940(s0)
    20f0:	c52a0024 	lwc1	$f10,36(t1)
    20f4:	44814000 	mtc1	at,$f8
    20f8:	240100e4 	li	at,228
    20fc:	e60a03b0 	swc1	$f10,944(s0)
    2100:	c5240028 	lwc1	$f4,40(t1)
    2104:	460e2180 	add.s	$f6,$f4,$f14
    2108:	46083280 	add.s	$f10,$f6,$f8
    210c:	46025101 	sub.s	$f4,$f10,$f2
    2110:	46002181 	sub.s	$f6,$f4,$f0
    2114:	e60603b4 	swc1	$f6,948(s0)
    2118:	c528002c 	lwc1	$f8,44(t1)
    211c:	1461000e 	bne	v1,at,2158 <L808FEF74+0x124>
    2120:	e60803b8 	swc1	$f8,952(s0)
    2124:	0c000000 	jal	0 <func_808FCF40>
    2128:	afa90088 	sw	t1,136(sp)
    212c:	02202025 	move	a0,s1
    2130:	02002825 	move	a1,s0
    2134:	0c000000 	jal	0 <func_808FCF40>
    2138:	24060056 	li	a2,86
    213c:	44806000 	mtc1	zero,$f12
    2140:	240500ff 	li	a1,255
    2144:	2406000a 	li	a2,10
    2148:	0c000000 	jal	0 <func_808FCF40>
    214c:	24070032 	li	a3,50
    2150:	8fa90088 	lw	t1,136(sp)
    2154:	8e030398 	lw	v1,920(s0)
    2158:	2c6100e5 	sltiu	at,v1,229
    215c:	142001dc 	bnez	at,28d0 <L808FF810>
    2160:	240a0001 	li	t2,1
    2164:	3c010001 	lui	at,0x1
    2168:	00310821 	addu	at,at,s1
    216c:	a02a0b05 	sb	t2,2821(at)
    2170:	3c010001 	lui	at,0x1
    2174:	02214021 	addu	t0,s1,at
    2178:	240200ff 	li	v0,255
    217c:	240e0064 	li	t6,100
    2180:	a1020b08 	sb	v0,2824(t0)
    2184:	a1020b07 	sb	v0,2823(t0)
    2188:	a1020b06 	sb	v0,2822(t0)
    218c:	a10e0b09 	sb	t6,2825(t0)
    2190:	8e0f0398 	lw	t7,920(s0)
    2194:	240100ea 	li	at,234
    2198:	24060018 	li	a2,24
    219c:	15e101cc 	bne	t7,at,28d0 <L808FF810>
    21a0:	3c010001 	lui	at,0x1
    21a4:	00310821 	addu	at,at,s1
    21a8:	a0200b05 	sb	zero,2821(at)
    21ac:	a606039c 	sh	a2,924(s0)
    21b0:	ae000398 	sw	zero,920(s0)
    21b4:	8d390024 	lw	t9,36(t1)
    21b8:	27a50068 	addiu	a1,sp,104
    21bc:	3c014270 	lui	at,0x4270
    21c0:	acb90000 	sw	t9,0(a1)
    21c4:	8d380028 	lw	t8,40(t1)
    21c8:	44812000 	mtc1	at,$f4
    21cc:	02202025 	move	a0,s1
    21d0:	acb80004 	sw	t8,4(a1)
    21d4:	8d39002c 	lw	t9,44(t1)
    21d8:	acb90008 	sw	t9,8(a1)
    21dc:	c7aa006c 	lwc1	$f10,108(sp)
    21e0:	46045180 	add.s	$f6,$f10,$f4
    21e4:	0c000000 	jal	0 <func_808FCF40>
    21e8:	e7a6006c 	swc1	$f6,108(sp)
    21ec:	44804000 	mtc1	zero,$f8
    21f0:	3c010001 	lui	at,0x1
    21f4:	00310821 	addu	at,at,s1
    21f8:	e4280afc 	swc1	$f8,2812(at)
    21fc:	3c010001 	lui	at,0x1
    2200:	00310821 	addu	at,at,s1
    2204:	a0200ae2 	sb	zero,2786(at)
    2208:	100001b1 	b	28d0 <L808FF810>
    220c:	a2000339 	sb	zero,825(s0)

00002210 <L808FF150>:
    2210:	0c000000 	jal	0 <func_808FCF40>
    2214:	2604014c 	addiu	a0,s0,332
    2218:	3c020001 	lui	v0,0x1
    221c:	00511021 	addu	v0,v0,s1
    2220:	8c421e10 	lw	v0,7696(v0)
    2224:	3c0141f0 	lui	at,0x41f0
    2228:	44818000 	mtc1	at,$f16
    222c:	8c4c0004 	lw	t4,4(v0)
    2230:	3c01428c 	lui	at,0x428c
    2234:	44812000 	mtc1	at,$f4
    2238:	ae0c03b0 	sw	t4,944(s0)
    223c:	8c4b0008 	lw	t3,8(v0)
    2240:	8e030398 	lw	v1,920(s0)
    2244:	ae0b03b4 	sw	t3,948(s0)
    2248:	8c4c000c 	lw	t4,12(v0)
    224c:	306d0003 	andi	t5,v1,0x3
    2250:	ae0c03b8 	sw	t4,952(s0)
    2254:	c44a0004 	lwc1	$f10,4(v0)
    2258:	46045180 	add.s	$f6,$f10,$f4
    225c:	e60603a4 	swc1	$f6,932(s0)
    2260:	c4480008 	lwc1	$f8,8(v0)
    2264:	44813000 	mtc1	at,$f6
    2268:	46104281 	sub.s	$f10,$f8,$f16
    226c:	e60a03a8 	swc1	$f10,936(s0)
    2270:	c444000c 	lwc1	$f4,12(v0)
    2274:	46062200 	add.s	$f8,$f4,$f6
    2278:	15a00004 	bnez	t5,228c <L808FF150+0x7c>
    227c:	e60803ac 	swc1	$f8,940(s0)
    2280:	0c000000 	jal	0 <func_808FCF40>
    2284:	24041801 	li	a0,6145
    2288:	8e030398 	lw	v1,920(s0)
    228c:	24010019 	li	at,25
    2290:	1461018f 	bne	v1,at,28d0 <L808FF810>
    2294:	02202025 	move	a0,s1
    2298:	02002825 	move	a1,s0
    229c:	0c000000 	jal	0 <func_808FCF40>
    22a0:	24060057 	li	a2,87
    22a4:	240e0019 	li	t6,25
    22a8:	a60e039c 	sh	t6,924(s0)
    22ac:	10000188 	b	28d0 <L808FF810>
    22b0:	ae000398 	sw	zero,920(s0)

000022b4 <L808FF1F4>:
    22b4:	2604014c 	addiu	a0,s0,332
    22b8:	0c000000 	jal	0 <func_808FCF40>
    22bc:	afa90088 	sw	t1,136(sp)
    22c0:	3c0141a0 	lui	at,0x41a0
    22c4:	44811000 	mtc1	at,$f2
    22c8:	8fa90088 	lw	t1,136(sp)
    22cc:	3c014220 	lui	at,0x4220
    22d0:	44816000 	mtc1	at,$f12
    22d4:	c52a0024 	lwc1	$f10,36(t1)
    22d8:	3c014120 	lui	at,0x4120
    22dc:	44817000 	mtc1	at,$f14
    22e0:	460c5101 	sub.s	$f4,$f10,$f12
    22e4:	3c0142a0 	lui	at,0x42a0
    22e8:	44813000 	mtc1	at,$f6
    22ec:	3c014270 	lui	at,0x4270
    22f0:	8e0f0398 	lw	t7,920(s0)
    22f4:	46062200 	add.s	$f8,$f4,$f6
    22f8:	3c020001 	lui	v0,0x1
    22fc:	3c030000 	lui	v1,0x0
    2300:	00511021 	addu	v0,v0,s1
    2304:	e60803a4 	swc1	$f8,932(s0)
    2308:	c52a0028 	lwc1	$f10,40(t1)
    230c:	460c5100 	add.s	$f4,$f10,$f12
    2310:	460e2180 	add.s	$f6,$f4,$f14
    2314:	e60603a8 	swc1	$f6,936(s0)
    2318:	c528002c 	lwc1	$f8,44(t1)
    231c:	46024280 	add.s	$f10,$f8,$f2
    2320:	460e5100 	add.s	$f4,$f10,$f14
    2324:	e60403ac 	swc1	$f4,940(s0)
    2328:	c5260024 	lwc1	$f6,36(t1)
    232c:	46023201 	sub.s	$f8,$f6,$f2
    2330:	44813000 	mtc1	at,$f6
    2334:	3c014040 	lui	at,0x4040
    2338:	e60803b0 	swc1	$f8,944(s0)
    233c:	c52a0028 	lwc1	$f10,40(t1)
    2340:	460e5100 	add.s	$f4,$f10,$f14
    2344:	46062200 	add.s	$f8,$f4,$f6
    2348:	44812000 	mtc1	at,$f4
    234c:	2401000a 	li	at,10
    2350:	46024281 	sub.s	$f10,$f8,$f2
    2354:	46045181 	sub.s	$f6,$f10,$f4
    2358:	e60603b4 	swc1	$f6,948(s0)
    235c:	c528002c 	lwc1	$f8,44(t1)
    2360:	460c4281 	sub.s	$f10,$f8,$f12
    2364:	460e5101 	sub.s	$f4,$f10,$f14
    2368:	15e10159 	bne	t7,at,28d0 <L808FF810>
    236c:	e60403b8 	swc1	$f4,952(s0)
    2370:	8c421e10 	lw	v0,7696(v0)
    2374:	24180001 	li	t8,1
    2378:	24630000 	addiu	v1,v1,0
    237c:	a458002e 	sh	t8,46(v0)
    2380:	8c790000 	lw	t9,0(v1)
    2384:	3c014248 	lui	at,0x4248
    2388:	44818000 	mtc1	at,$f16
    238c:	c7260024 	lwc1	$f6,36(t9)
    2390:	3c0143af 	lui	at,0x43af
    2394:	44800000 	mtc1	zero,$f0
    2398:	46103200 	add.s	$f8,$f6,$f16
    239c:	44813000 	mtc1	at,$f6
    23a0:	3c0141c8 	lui	at,0x41c8
    23a4:	240d001a 	li	t5,26
    23a8:	460e4280 	add.s	$f10,$f8,$f14
    23ac:	e44a0004 	swc1	$f10,4(v0)
    23b0:	8c6b0000 	lw	t3,0(v1)
    23b4:	c5640028 	lwc1	$f4,40(t3)
    23b8:	46062200 	add.s	$f8,$f4,$f6
    23bc:	44812000 	mtc1	at,$f4
    23c0:	3c01c1f0 	lui	at,0xc1f0
    23c4:	e4480008 	swc1	$f8,8(v0)
    23c8:	8c6c0000 	lw	t4,0(v1)
    23cc:	44814000 	mtc1	at,$f8
    23d0:	c58a002c 	lwc1	$f10,44(t4)
    23d4:	e4400010 	swc1	$f0,16(v0)
    23d8:	e4400018 	swc1	$f0,24(v0)
    23dc:	46045181 	sub.s	$f6,$f10,$f4
    23e0:	e4480014 	swc1	$f8,20(v0)
    23e4:	e446000c 	swc1	$f6,12(v0)
    23e8:	a60d039c 	sh	t5,924(s0)
    23ec:	ae000398 	sw	zero,920(s0)

000023f0 <L808FF330>:
    23f0:	3c0141a0 	lui	at,0x41a0
    23f4:	44811000 	mtc1	at,$f2
    23f8:	3c014120 	lui	at,0x4120
    23fc:	3c020000 	lui	v0,0x0
    2400:	44817000 	mtc1	at,$f14
    2404:	24420000 	addiu	v0,v0,0
    2408:	8c4e0000 	lw	t6,0(v0)
    240c:	3c0141f0 	lui	at,0x41f0
    2410:	44818000 	mtc1	at,$f16
    2414:	3c0142c8 	lui	at,0x42c8
    2418:	44812000 	mtc1	at,$f4
    241c:	c5ca0024 	lwc1	$f10,36(t6)
    2420:	3c0140a0 	lui	at,0x40a0
    2424:	8e030398 	lw	v1,920(s0)
    2428:	46045180 	add.s	$f6,$f10,$f4
    242c:	46103200 	add.s	$f8,$f6,$f16
    2430:	e60803a4 	swc1	$f8,932(s0)
    2434:	8c4f0000 	lw	t7,0(v0)
    2438:	44814000 	mtc1	at,$f8
    243c:	3c01bf00 	lui	at,0xbf00
    2440:	c5ea0028 	lwc1	$f10,40(t7)
    2444:	240f001b 	li	t7,27
    2448:	460e5100 	add.s	$f4,$f10,$f14
    244c:	e60403a8 	swc1	$f4,936(s0)
    2450:	8c580000 	lw	t8,0(v0)
    2454:	c706002c 	lwc1	$f6,44(t8)
    2458:	46083280 	add.s	$f10,$f6,$f8
    245c:	e60a03ac 	swc1	$f10,940(s0)
    2460:	8c590000 	lw	t9,0(v0)
    2464:	c7240024 	lwc1	$f4,36(t9)
    2468:	e60403b0 	swc1	$f4,944(s0)
    246c:	8c4b0000 	lw	t3,0(v0)
    2470:	c5660028 	lwc1	$f6,40(t3)
    2474:	46103200 	add.s	$f8,$f6,$f16
    2478:	44813000 	mtc1	at,$f6
    247c:	2401000d 	li	at,13
    2480:	e60803b4 	swc1	$f8,948(s0)
    2484:	8c4c0000 	lw	t4,0(v0)
    2488:	c58a002c 	lwc1	$f10,44(t4)
    248c:	e60603c4 	swc1	$f6,964(s0)
    2490:	46025101 	sub.s	$f4,$f10,$f2
    2494:	14610005 	bne	v1,at,24ac <L808FF330+0xbc>
    2498:	e60403b8 	swc1	$f4,952(s0)
    249c:	8c4e0000 	lw	t6,0(v0)
    24a0:	240d0006 	li	t5,6
    24a4:	a1cd03c8 	sb	t5,968(t6)
    24a8:	8e030398 	lw	v1,920(s0)
    24ac:	24010032 	li	at,50
    24b0:	54610108 	bnel	v1,at,28d4 <L808FF810+0x4>
    24b4:	3c014080 	lui	at,0x4080
    24b8:	a60f039c 	sh	t7,924(s0)
    24bc:	10000104 	b	28d0 <L808FF810>
    24c0:	ae000398 	sw	zero,920(s0)

000024c4 <L808FF404>:
    24c4:	8e030398 	lw	v1,920(s0)
    24c8:	44804000 	mtc1	zero,$f8
    24cc:	24010004 	li	at,4
    24d0:	14610008 	bne	v1,at,24f4 <L808FF404+0x30>
    24d4:	e60803c4 	swc1	$f8,964(s0)
    24d8:	02202025 	move	a0,s1
    24dc:	02002825 	move	a1,s0
    24e0:	24060058 	li	a2,88
    24e4:	0c000000 	jal	0 <func_808FCF40>
    24e8:	afa90088 	sw	t1,136(sp)
    24ec:	8fa90088 	lw	t1,136(sp)
    24f0:	8e030398 	lw	v1,920(s0)
    24f4:	3c0141a0 	lui	at,0x41a0
    24f8:	44811000 	mtc1	at,$f2
    24fc:	c52a0024 	lwc1	$f10,36(t1)
    2500:	3c014248 	lui	at,0x4248
    2504:	44818000 	mtc1	at,$f16
    2508:	46025101 	sub.s	$f4,$f10,$f2
    250c:	2401001a 	li	at,26
    2510:	e60403a4 	swc1	$f4,932(s0)
    2514:	c5260028 	lwc1	$f6,40(t1)
    2518:	46103200 	add.s	$f8,$f6,$f16
    251c:	e60803a8 	swc1	$f8,936(s0)
    2520:	c52a002c 	lwc1	$f10,44(t1)
    2524:	e60a03ac 	swc1	$f10,940(s0)
    2528:	c5240024 	lwc1	$f4,36(t1)
    252c:	e60403b0 	swc1	$f4,944(s0)
    2530:	c5260028 	lwc1	$f6,40(t1)
    2534:	46103200 	add.s	$f8,$f6,$f16
    2538:	e60803b4 	swc1	$f8,948(s0)
    253c:	c52a002c 	lwc1	$f10,44(t1)
    2540:	146100e3 	bne	v1,at,28d0 <L808FF810>
    2544:	e60a03b8 	swc1	$f10,952(s0)
    2548:	8e221c6c 	lw	v0,7276(s1)
    254c:	3c030000 	lui	v1,0x0
    2550:	24630000 	addiu	v1,v1,0
    2554:	1040001d 	beqz	v0,25cc <L808FF404+0x108>
    2558:	ac620000 	sw	v0,0(v1)
    255c:	24060018 	li	a2,24
    2560:	84590000 	lh	t9,0(v0)
    2564:	14d90015 	bne	a2,t9,25bc <L808FF404+0xf8>
    2568:	3c0141f0 	lui	at,0x41f0
    256c:	44818000 	mtc1	at,$f16
    2570:	c4440024 	lwc1	$f4,36(v0)
    2574:	46102181 	sub.s	$f6,$f4,$f16
    2578:	e60603a4 	swc1	$f6,932(s0)
    257c:	8c6b0000 	lw	t3,0(v1)
    2580:	c5680028 	lwc1	$f8,40(t3)
    2584:	e60803a8 	swc1	$f8,936(s0)
    2588:	8c6c0000 	lw	t4,0(v1)
    258c:	c58a002c 	lwc1	$f10,44(t4)
    2590:	e60a03ac 	swc1	$f10,940(s0)
    2594:	8c6d0000 	lw	t5,0(v1)
    2598:	c5a40024 	lwc1	$f4,36(t5)
    259c:	e60403b0 	swc1	$f4,944(s0)
    25a0:	8c6e0000 	lw	t6,0(v1)
    25a4:	c5c60028 	lwc1	$f6,40(t6)
    25a8:	e60603b4 	swc1	$f6,948(s0)
    25ac:	8c6f0000 	lw	t7,0(v1)
    25b0:	c5e8002c 	lwc1	$f8,44(t7)
    25b4:	10000005 	b	25cc <L808FF404+0x108>
    25b8:	e60803b8 	swc1	$f8,952(s0)
    25bc:	8c580124 	lw	t8,292(v0)
    25c0:	03001025 	move	v0,t8
    25c4:	1700ffe6 	bnez	t8,2560 <L808FF404+0x9c>
    25c8:	ac780000 	sw	t8,0(v1)
    25cc:	2419001c 	li	t9,28
    25d0:	a619039c 	sh	t9,924(s0)
    25d4:	100000be 	b	28d0 <L808FF810>
    25d8:	ae000398 	sw	zero,920(s0)

000025dc <L808FF51C>:
    25dc:	8e0b0398 	lw	t3,920(s0)
    25e0:	24010005 	li	at,5
    25e4:	02202025 	move	a0,s1
    25e8:	15610003 	bne	t3,at,25f8 <L808FF51C+0x1c>
    25ec:	240570d6 	li	a1,28886
    25f0:	0c000000 	jal	0 <func_808FCF40>
    25f4:	00003025 	move	a2,zero
    25f8:	3c030000 	lui	v1,0x0
    25fc:	24630000 	addiu	v1,v1,0
    2600:	8c620000 	lw	v0,0(v1)
    2604:	3c0141a0 	lui	at,0x41a0
    2608:	504000b2 	beqzl	v0,28d4 <L808FF810+0x4>
    260c:	3c014080 	lui	at,0x4080
    2610:	44811000 	mtc1	at,$f2
    2614:	c44a0024 	lwc1	$f10,36(v0)
    2618:	3c063e4c 	lui	a2,0x3e4c
    261c:	34c6cccd 	ori	a2,a2,0xcccd
    2620:	46025101 	sub.s	$f4,$f10,$f2
    2624:	260403b0 	addiu	a0,s0,944
    2628:	3c074248 	lui	a3,0x4248
    262c:	e60403a4 	swc1	$f4,932(s0)
    2630:	8c6c0000 	lw	t4,0(v1)
    2634:	c5860028 	lwc1	$f6,40(t4)
    2638:	e60603a8 	swc1	$f6,936(s0)
    263c:	8c6d0000 	lw	t5,0(v1)
    2640:	c5a8002c 	lwc1	$f8,44(t5)
    2644:	e60803ac 	swc1	$f8,940(s0)
    2648:	8c6e0000 	lw	t6,0(v1)
    264c:	0c000000 	jal	0 <func_808FCF40>
    2650:	8dc50024 	lw	a1,36(t6)
    2654:	3c014248 	lui	at,0x4248
    2658:	44818000 	mtc1	at,$f16
    265c:	3c030000 	lui	v1,0x0
    2660:	24630000 	addiu	v1,v1,0
    2664:	8c6f0000 	lw	t7,0(v1)
    2668:	3c063e4c 	lui	a2,0x3e4c
    266c:	44078000 	mfc1	a3,$f16
    2670:	34c6cccd 	ori	a2,a2,0xcccd
    2674:	260403b4 	addiu	a0,s0,948
    2678:	0c000000 	jal	0 <func_808FCF40>
    267c:	8de50028 	lw	a1,40(t7)
    2680:	3c014248 	lui	at,0x4248
    2684:	44818000 	mtc1	at,$f16
    2688:	3c030000 	lui	v1,0x0
    268c:	24630000 	addiu	v1,v1,0
    2690:	8c780000 	lw	t8,0(v1)
    2694:	3c063e4c 	lui	a2,0x3e4c
    2698:	44078000 	mfc1	a3,$f16
    269c:	34c6cccd 	ori	a2,a2,0xcccd
    26a0:	260403b8 	addiu	a0,s0,952
    26a4:	0c000000 	jal	0 <func_808FCF40>
    26a8:	8f05002c 	lw	a1,44(t8)
    26ac:	8e190398 	lw	t9,920(s0)
    26b0:	2f210029 	sltiu	at,t9,41
    26b4:	54200087 	bnezl	at,28d4 <L808FF810+0x4>
    26b8:	3c014080 	lui	at,0x4080
    26bc:	0c000000 	jal	0 <func_808FCF40>
    26c0:	262420d8 	addiu	a0,s1,8408
    26c4:	14400082 	bnez	v0,28d0 <L808FF810>
    26c8:	240b001d 	li	t3,29
    26cc:	3c050601 	lui	a1,0x601
    26d0:	a60b039c 	sh	t3,924(s0)
    26d4:	ae000398 	sw	zero,920(s0)
    26d8:	24a547e0 	addiu	a1,a1,18400
    26dc:	2604014c 	addiu	a0,s0,332
    26e0:	0c000000 	jal	0 <func_808FCF40>
    26e4:	24060000 	li	a2,0
    26e8:	3c040601 	lui	a0,0x601
    26ec:	0c000000 	jal	0 <func_808FCF40>
    26f0:	248447e0 	addiu	a0,a0,18400
    26f4:	44825000 	mtc1	v0,$f10
    26f8:	44803000 	mtc1	zero,$f6
    26fc:	3c010000 	lui	at,0x0
    2700:	46805120 	cvt.s.w	$f4,$f10
    2704:	e60600bc 	swc1	$f6,188(s0)
    2708:	240a0001 	li	t2,1
    270c:	e6040194 	swc1	$f4,404(s0)
    2710:	c4280000 	lwc1	$f8,0(at)
    2714:	3c01bf80 	lui	at,0xbf80
    2718:	44815000 	mtc1	at,$f10
    271c:	3c013f80 	lui	at,0x3f80
    2720:	44812000 	mtc1	at,$f4
    2724:	a20a0335 	sb	t2,821(s0)
    2728:	e6080028 	swc1	$f8,40(s0)
    272c:	e60a006c 	swc1	$f10,108(s0)
    2730:	10000067 	b	28d0 <L808FF810>
    2734:	e6040224 	swc1	$f4,548(s0)

00002738 <L808FF678>:
    2738:	2604014c 	addiu	a0,s0,332
    273c:	afa40050 	sw	a0,80(sp)
    2740:	0c000000 	jal	0 <func_808FCF40>
    2744:	afa90088 	sw	t1,136(sp)
    2748:	3c014220 	lui	at,0x4220
    274c:	44816000 	mtc1	at,$f12
    2750:	3c014120 	lui	at,0x4120
    2754:	44817000 	mtc1	at,$f14
    2758:	3c014270 	lui	at,0x4270
    275c:	44818000 	mtc1	at,$f16
    2760:	3c0143fa 	lui	at,0x43fa
    2764:	44813000 	mtc1	at,$f6
    2768:	c6000024 	lwc1	$f0,36(s0)
    276c:	3c0143af 	lui	at,0x43af
    2770:	44815000 	mtc1	at,$f10
    2774:	46060200 	add.s	$f8,$f0,$f6
    2778:	3c0142c8 	lui	at,0x42c8
    277c:	44813000 	mtc1	at,$f6
    2780:	8fa90088 	lw	t1,136(sp)
    2784:	460a4101 	sub.s	$f4,$f8,$f10
    2788:	c602002c 	lwc1	$f2,44(s0)
    278c:	3c01430c 	lui	at,0x430c
    2790:	e60003b0 	swc1	$f0,944(s0)
    2794:	46062200 	add.s	$f8,$f4,$f6
    2798:	c6040028 	lwc1	$f4,40(s0)
    279c:	e60203b8 	swc1	$f2,952(s0)
    27a0:	460e1180 	add.s	$f6,$f2,$f14
    27a4:	e60403a8 	swc1	$f4,936(s0)
    27a8:	240cc000 	li	t4,-16384
    27ac:	46104281 	sub.s	$f10,$f8,$f16
    27b0:	c60801bc 	lwc1	$f8,444(s0)
    27b4:	e60603ac 	swc1	$f6,940(s0)
    27b8:	44813000 	mtc1	at,$f6
    27bc:	e60a03a4 	swc1	$f10,932(s0)
    27c0:	46104280 	add.s	$f10,$f8,$f16
    27c4:	3c01c344 	lui	at,0xc344
    27c8:	44814000 	mtc1	at,$f8
    27cc:	24010032 	li	at,50
    27d0:	460c5101 	sub.s	$f4,$f10,$f12
    27d4:	02002025 	move	a0,s0
    27d8:	e60403b4 	swc1	$f4,948(s0)
    27dc:	a52c00b6 	sh	t4,182(t1)
    27e0:	e5260024 	swc1	$f6,36(t1)
    27e4:	e528002c 	swc1	$f8,44(t1)
    27e8:	8e0d0398 	lw	t5,920(s0)
    27ec:	55a10004 	bnel	t5,at,2800 <L808FF678+0xc8>
    27f0:	8fa40050 	lw	a0,80(sp)
    27f4:	0c000000 	jal	0 <func_808FCF40>
    27f8:	2405398f 	li	a1,14735
    27fc:	8fa40050 	lw	a0,80(sp)
    2800:	0c000000 	jal	0 <func_808FCF40>
    2804:	8e050194 	lw	a1,404(s0)
    2808:	10400031 	beqz	v0,28d0 <L808FF810>
    280c:	02202025 	move	a0,s1
    2810:	0c000000 	jal	0 <func_808FCF40>
    2814:	00002825 	move	a1,zero
    2818:	260303a4 	addiu	v1,s0,932
    281c:	8c6f0000 	lw	t7,0(v1)
    2820:	02202025 	move	a0,s1
    2824:	00003025 	move	a2,zero
    2828:	ac4f005c 	sw	t7,92(v0)
    282c:	8c6e0004 	lw	t6,4(v1)
    2830:	ac4e0060 	sw	t6,96(v0)
    2834:	8c6f0008 	lw	t7,8(v1)
    2838:	ac4f0064 	sw	t7,100(v0)
    283c:	8c790000 	lw	t9,0(v1)
    2840:	ac590074 	sw	t9,116(v0)
    2844:	8c780004 	lw	t8,4(v1)
    2848:	ac580078 	sw	t8,120(v0)
    284c:	8c790008 	lw	t9,8(v1)
    2850:	ac59007c 	sw	t9,124(v0)
    2854:	8e0c03b0 	lw	t4,944(s0)
    2858:	ac4c0050 	sw	t4,80(v0)
    285c:	8e0b03b4 	lw	t3,948(s0)
    2860:	ac4b0054 	sw	t3,84(v0)
    2864:	8e0c03b8 	lw	t4,952(s0)
    2868:	ac4c0058 	sw	t4,88(v0)
    286c:	0c000000 	jal	0 <func_808FCF40>
    2870:	8605039e 	lh	a1,926(s0)
    2874:	a600039e 	sh	zero,926(s0)
    2878:	02202025 	move	a0,s1
    287c:	0c000000 	jal	0 <func_808FCF40>
    2880:	26251d64 	addiu	a1,s1,7524
    2884:	02202025 	move	a0,s1
    2888:	02002825 	move	a1,s0
    288c:	0c000000 	jal	0 <func_808FCF40>
    2890:	24060007 	li	a2,7
    2894:	240a0001 	li	t2,1
    2898:	a600039c 	sh	zero,924(s0)
    289c:	a20a0337 	sb	t2,823(s0)
    28a0:	02002025 	move	a0,s0
    28a4:	0c000000 	jal	0 <func_808FCF40>
    28a8:	02202825 	move	a1,s1
    28ac:	8e0e0004 	lw	t6,4(s0)
    28b0:	240d0032 	li	t5,50
    28b4:	a60d01a4 	sh	t5,420(s0)
    28b8:	35cf0001 	ori	t7,t6,0x1
    28bc:	ae0f0004 	sw	t7,4(s0)
    28c0:	3c190000 	lui	t9,0x0
    28c4:	8f390000 	lw	t9,0(t9)
    28c8:	24180007 	li	t8,7
    28cc:	a33803c8 	sb	t8,968(t9)

000028d0 <L808FF810>:
    28d0:	3c014080 	lui	at,0x4080
    28d4:	44815000 	mtc1	at,$f10
    28d8:	c604030c 	lwc1	$f4,780(s0)
    28dc:	93ab008d 	lbu	t3,141(sp)
    28e0:	4604503c 	c.lt.s	$f10,$f4
    28e4:	00000000 	nop
    28e8:	45020006 	bc1fl	2904 <L808FF810+0x34>
    28ec:	8605039e 	lh	a1,926(s0)
    28f0:	15600003 	bnez	t3,2900 <L808FF810+0x30>
    28f4:	02002025 	move	a0,s0
    28f8:	0c000000 	jal	0 <func_808FCF40>
    28fc:	24053163 	li	a1,12643
    2900:	8605039e 	lh	a1,926(s0)
    2904:	260c03a4 	addiu	t4,s0,932
    2908:	260d03b0 	addiu	t5,s0,944
    290c:	50a0000e 	beqzl	a1,2948 <L808FF810+0x78>
    2910:	8fbf003c 	lw	ra,60(sp)
    2914:	afac004c 	sw	t4,76(sp)
    2918:	afad0050 	sw	t5,80(sp)
    291c:	c60603b4 	lwc1	$f6,948(s0)
    2920:	c608041c 	lwc1	$f8,1052(s0)
    2924:	260e03bc 	addiu	t6,s0,956
    2928:	02202025 	move	a0,s1
    292c:	46083280 	add.s	$f10,$f6,$f8
    2930:	e60a03b4 	swc1	$f10,948(s0)
    2934:	afae0010 	sw	t6,16(sp)
    2938:	8fa7004c 	lw	a3,76(sp)
    293c:	0c000000 	jal	0 <func_808FCF40>
    2940:	8fa60050 	lw	a2,80(sp)
    2944:	8fbf003c 	lw	ra,60(sp)
    2948:	8fb00034 	lw	s0,52(sp)
    294c:	8fb10038 	lw	s1,56(sp)
    2950:	03e00008 	jr	ra
    2954:	27bd0090 	addiu	sp,sp,144

00002958 <func_808FF898>:
    2958:	27bdffc0 	addiu	sp,sp,-64
    295c:	afbf001c 	sw	ra,28(sp)
    2960:	afb00018 	sw	s0,24(sp)
    2964:	908e0312 	lbu	t6,786(a0)
    2968:	00808025 	move	s0,a0
    296c:	51c00059 	beqzl	t6,2ad4 <func_808FF898+0x17c>
    2970:	8fbf001c 	lw	ra,28(sp)
    2974:	848f039e 	lh	t7,926(a0)
    2978:	55e00056 	bnezl	t7,2ad4 <func_808FF898+0x17c>
    297c:	8fbf001c 	lw	ra,28(sp)
    2980:	8ca31c64 	lw	v1,7268(a1)
    2984:	3c010000 	lui	at,0x0
    2988:	24070016 	li	a3,22
    298c:	10600044 	beqz	v1,2aa0 <func_808FF898+0x148>
    2990:	24060011 	li	a2,17
    2994:	c42c0000 	lwc1	$f12,0(at)
    2998:	24050010 	li	a1,16
    299c:	240401b1 	li	a0,433
    29a0:	84780000 	lh	t8,0(v1)
    29a4:	5498003c 	bnel	a0,t8,2a98 <func_808FF898+0x140>
    29a8:	8c630124 	lw	v1,292(v1)
    29ac:	8462001c 	lh	v0,28(v1)
    29b0:	304200ff 	andi	v0,v0,0xff
    29b4:	50a20006 	beql	a1,v0,29d0 <func_808FF898+0x78>
    29b8:	c6040218 	lwc1	$f4,536(s0)
    29bc:	50c20004 	beql	a2,v0,29d0 <func_808FF898+0x78>
    29c0:	c6040218 	lwc1	$f4,536(s0)
    29c4:	54e20034 	bnel	a3,v0,2a98 <func_808FF898+0x140>
    29c8:	8c630124 	lw	v1,292(v1)
    29cc:	c6040218 	lwc1	$f4,536(s0)
    29d0:	c4660024 	lwc1	$f6,36(v1)
    29d4:	c6080220 	lwc1	$f8,544(s0)
    29d8:	c46a002c 	lwc1	$f10,44(v1)
    29dc:	46062001 	sub.s	$f0,$f4,$f6
    29e0:	460a4081 	sub.s	$f2,$f8,$f10
    29e4:	46000402 	mul.s	$f16,$f0,$f0
    29e8:	00000000 	nop
    29ec:	46021482 	mul.s	$f18,$f2,$f2
    29f0:	46128100 	add.s	$f4,$f16,$f18
    29f4:	460c203c 	c.lt.s	$f4,$f12
    29f8:	00000000 	nop
    29fc:	45000025 	bc1f	2a94 <func_808FF898+0x13c>
    2a00:	00000000 	nop
    2a04:	861900b6 	lh	t9,182(s0)
    2a08:	3c014700 	lui	at,0x4700
    2a0c:	44815000 	mtc1	at,$f10
    2a10:	44993000 	mtc1	t9,$f6
    2a14:	3c010000 	lui	at,0x0
    2a18:	c4320000 	lwc1	$f18,0(at)
    2a1c:	46803220 	cvt.s.w	$f8,$f6
    2a20:	3c013f00 	lui	at,0x3f00
    2a24:	44813000 	mtc1	at,$f6
    2a28:	afa3003c 	sw	v1,60(sp)
    2a2c:	00002825 	move	a1,zero
    2a30:	460a4403 	div.s	$f16,$f8,$f10
    2a34:	46128102 	mul.s	$f4,$f16,$f18
    2a38:	0c000000 	jal	0 <func_808FCF40>
    2a3c:	46062300 	add.s	$f12,$f4,$f6
    2a40:	44800000 	mtc1	zero,$f0
    2a44:	3c013f80 	lui	at,0x3f80
    2a48:	8fa3003c 	lw	v1,60(sp)
    2a4c:	44814000 	mtc1	at,$f8
    2a50:	27a40028 	addiu	a0,sp,40
    2a54:	e7a00028 	swc1	$f0,40(sp)
    2a58:	e7a0002c 	swc1	$f0,44(sp)
    2a5c:	2465026c 	addiu	a1,v1,620
    2a60:	0c000000 	jal	0 <func_808FCF40>
    2a64:	e7a80030 	swc1	$f8,48(sp)
    2a68:	8fa3003c 	lw	v1,60(sp)
    2a6c:	24080001 	li	t0,1
    2a70:	44806000 	mtc1	zero,$f12
    2a74:	24050096 	li	a1,150
    2a78:	24060014 	li	a2,20
    2a7c:	24070032 	li	a3,50
    2a80:	0c000000 	jal	0 <func_808FCF40>
    2a84:	ac680268 	sw	t0,616(v1)
    2a88:	24090006 	li	t1,6
    2a8c:	10000010 	b	2ad0 <func_808FF898+0x178>
    2a90:	a6090392 	sh	t1,914(s0)
    2a94:	8c630124 	lw	v1,292(v1)
    2a98:	5460ffc2 	bnezl	v1,29a4 <func_808FF898+0x4c>
    2a9c:	84780000 	lh	t8,0(v1)
    2aa0:	86020392 	lh	v0,914(s0)
    2aa4:	24010004 	li	at,4
    2aa8:	54410005 	bnel	v0,at,2ac0 <func_808FF898+0x168>
    2aac:	24010003 	li	at,3
    2ab0:	0c000000 	jal	0 <func_808FCF40>
    2ab4:	240428c2 	li	a0,10434
    2ab8:	86020392 	lh	v0,914(s0)
    2abc:	24010003 	li	at,3
    2ac0:	54410004 	bnel	v0,at,2ad4 <func_808FF898+0x17c>
    2ac4:	8fbf001c 	lw	ra,28(sp)
    2ac8:	0c000000 	jal	0 <func_808FCF40>
    2acc:	240439df 	li	a0,14815
    2ad0:	8fbf001c 	lw	ra,28(sp)
    2ad4:	8fb00018 	lw	s0,24(sp)
    2ad8:	27bd0040 	addiu	sp,sp,64
    2adc:	03e00008 	jr	ra
    2ae0:	00000000 	nop

00002ae4 <func_808FFA24>:
    2ae4:	8ca21c64 	lw	v0,7268(a1)
    2ae8:	3c010000 	lui	at,0x0
    2aec:	24080016 	li	t0,22
    2af0:	10400022 	beqz	v0,2b7c <func_808FFA24+0x98>
    2af4:	24070011 	li	a3,17
    2af8:	c42c0000 	lwc1	$f12,0(at)
    2afc:	24060010 	li	a2,16
    2b00:	240501b1 	li	a1,433
    2b04:	844e0000 	lh	t6,0(v0)
    2b08:	54ae001a 	bnel	a1,t6,2b74 <func_808FFA24+0x90>
    2b0c:	8c420124 	lw	v0,292(v0)
    2b10:	8443001c 	lh	v1,28(v0)
    2b14:	306300ff 	andi	v1,v1,0xff
    2b18:	50c30006 	beql	a2,v1,2b34 <func_808FFA24+0x50>
    2b1c:	c4840024 	lwc1	$f4,36(a0)
    2b20:	50e30004 	beql	a3,v1,2b34 <func_808FFA24+0x50>
    2b24:	c4840024 	lwc1	$f4,36(a0)
    2b28:	55030012 	bnel	t0,v1,2b74 <func_808FFA24+0x90>
    2b2c:	8c420124 	lw	v0,292(v0)
    2b30:	c4840024 	lwc1	$f4,36(a0)
    2b34:	c4460024 	lwc1	$f6,36(v0)
    2b38:	c488002c 	lwc1	$f8,44(a0)
    2b3c:	c44a002c 	lwc1	$f10,44(v0)
    2b40:	46062001 	sub.s	$f0,$f4,$f6
    2b44:	460a4081 	sub.s	$f2,$f8,$f10
    2b48:	46000402 	mul.s	$f16,$f0,$f0
    2b4c:	00000000 	nop
    2b50:	46021482 	mul.s	$f18,$f2,$f2
    2b54:	46128100 	add.s	$f4,$f16,$f18
    2b58:	460c203c 	c.lt.s	$f4,$f12
    2b5c:	00000000 	nop
    2b60:	45000003 	bc1f	2b70 <func_808FFA24+0x8c>
    2b64:	00000000 	nop
    2b68:	03e00008 	jr	ra
    2b6c:	24020001 	li	v0,1
    2b70:	8c420124 	lw	v0,292(v0)
    2b74:	5440ffe4 	bnezl	v0,2b08 <func_808FFA24+0x24>
    2b78:	844e0000 	lh	t6,0(v0)
    2b7c:	00001025 	move	v0,zero
    2b80:	03e00008 	jr	ra
    2b84:	00000000 	nop

00002b88 <func_808FFAC8>:
    2b88:	27bdffe0 	addiu	sp,sp,-32
    2b8c:	afbf001c 	sw	ra,28(sp)
    2b90:	afb00018 	sw	s0,24(sp)
    2b94:	afa50024 	sw	a1,36(sp)
    2b98:	afa60028 	sw	a2,40(sp)
    2b9c:	908e0313 	lbu	t6,787(a0)
    2ba0:	00808025 	move	s0,a0
    2ba4:	30c600ff 	andi	a2,a2,0xff
    2ba8:	15c00003 	bnez	t6,2bb8 <func_808FFAC8+0x30>
    2bac:	2604031a 	addiu	a0,s0,794
    2bb0:	50c00011 	beqzl	a2,2bf8 <func_808FFAC8+0x70>
    2bb4:	8619019c 	lh	t9,412(s0)
    2bb8:	860f00b6 	lh	t7,182(s0)
    2bbc:	8618008a 	lh	t8,138(s0)
    2bc0:	01f82823 	subu	a1,t7,t8
    2bc4:	00052c00 	sll	a1,a1,0x10
    2bc8:	00052c03 	sra	a1,a1,0x10
    2bcc:	28a13001 	slti	at,a1,12289
    2bd0:	54200004 	bnezl	at,2be4 <func_808FFAC8+0x5c>
    2bd4:	28a1d000 	slti	at,a1,-12288
    2bd8:	1000000d 	b	2c10 <func_808FFAC8+0x88>
    2bdc:	24053000 	li	a1,12288
    2be0:	28a1d000 	slti	at,a1,-12288
    2be4:	5020000b 	beqzl	at,2c14 <func_808FFAC8+0x8c>
    2be8:	24060005 	li	a2,5
    2bec:	10000008 	b	2c10 <func_808FFAC8+0x88>
    2bf0:	2405d000 	li	a1,-12288
    2bf4:	8619019c 	lh	t9,412(s0)
    2bf8:	2405d000 	li	a1,-12288
    2bfc:	33280020 	andi	t0,t9,0x20
    2c00:	11000003 	beqz	t0,2c10 <func_808FFAC8+0x88>
    2c04:	00000000 	nop
    2c08:	10000001 	b	2c10 <func_808FFAC8+0x88>
    2c0c:	24053000 	li	a1,12288
    2c10:	24060005 	li	a2,5
    2c14:	0c000000 	jal	0 <func_808FCF40>
    2c18:	240707d0 	li	a3,2000
    2c1c:	3c014316 	lui	at,0x4316
    2c20:	44817000 	mtc1	at,$f14
    2c24:	0c000000 	jal	0 <func_808FCF40>
    2c28:	c60c0090 	lwc1	$f12,144(s0)
    2c2c:	2443f448 	addiu	v1,v0,-3000
    2c30:	00034c00 	sll	t1,v1,0x10
    2c34:	00095403 	sra	t2,t1,0x10
    2c38:	00032c00 	sll	a1,v1,0x10
    2c3c:	29411b59 	slti	at,t2,7001
    2c40:	14200002 	bnez	at,2c4c <func_808FFAC8+0xc4>
    2c44:	00052c03 	sra	a1,a1,0x10
    2c48:	24051b58 	li	a1,7000
    2c4c:	28a1e4a8 	slti	at,a1,-7000
    2c50:	10200002 	beqz	at,2c5c <func_808FFAC8+0xd4>
    2c54:	2604031c 	addiu	a0,s0,796
    2c58:	2405e4a8 	li	a1,-7000
    2c5c:	24060005 	li	a2,5
    2c60:	0c000000 	jal	0 <func_808FCF40>
    2c64:	240707d0 	li	a3,2000
    2c68:	8fbf001c 	lw	ra,28(sp)
    2c6c:	8fb00018 	lw	s0,24(sp)
    2c70:	27bd0020 	addiu	sp,sp,32
    2c74:	03e00008 	jr	ra
    2c78:	00000000 	nop

00002c7c <func_808FFBBC>:
    2c7c:	27bdffe0 	addiu	sp,sp,-32
    2c80:	afa60028 	sw	a2,40(sp)
    2c84:	30c600ff 	andi	a2,a2,0xff
    2c88:	afb00018 	sw	s0,24(sp)
    2c8c:	00808025 	move	s0,a0
    2c90:	afbf001c 	sw	ra,28(sp)
    2c94:	14c00004 	bnez	a2,2ca8 <func_808FFBBC+0x2c>
    2c98:	afa50024 	sw	a1,36(sp)
    2c9c:	908e0313 	lbu	t6,787(a0)
    2ca0:	51c00021 	beqzl	t6,2d28 <func_808FFBBC+0xac>
    2ca4:	44804000 	mtc1	zero,$f8
    2ca8:	c6040320 	lwc1	$f4,800(s0)
    2cac:	26040032 	addiu	a0,s0,50
    2cb0:	8605008a 	lh	a1,138(s0)
    2cb4:	4600218d 	trunc.w.s	$f6,$f4
    2cb8:	24060005 	li	a2,5
    2cbc:	44073000 	mfc1	a3,$f6
    2cc0:	00000000 	nop
    2cc4:	00073c00 	sll	a3,a3,0x10
    2cc8:	0c000000 	jal	0 <func_808FCF40>
    2ccc:	00073c03 	sra	a3,a3,0x10
    2cd0:	92180334 	lbu	t8,820(s0)
    2cd4:	3c010000 	lui	at,0x0
    2cd8:	26040320 	addiu	a0,s0,800
    2cdc:	13000007 	beqz	t8,2cfc <func_808FFBBC+0x80>
    2ce0:	00000000 	nop
    2ce4:	3c010000 	lui	at,0x0
    2ce8:	c4200000 	lwc1	$f0,0(at)
    2cec:	3c014348 	lui	at,0x4348
    2cf0:	44811000 	mtc1	at,$f2
    2cf4:	10000006 	b	2d10 <func_808FFBBC+0x94>
    2cf8:	44050000 	mfc1	a1,$f0
    2cfc:	c4200000 	lwc1	$f0,0(at)
    2d00:	3c0141f0 	lui	at,0x41f0
    2d04:	44811000 	mtc1	at,$f2
    2d08:	00000000 	nop
    2d0c:	44050000 	mfc1	a1,$f0
    2d10:	44071000 	mfc1	a3,$f2
    2d14:	0c000000 	jal	0 <func_808FCF40>
    2d18:	3c063f80 	lui	a2,0x3f80
    2d1c:	10000005 	b	2d34 <func_808FFBBC+0xb8>
    2d20:	8fbf001c 	lw	ra,28(sp)
    2d24:	44804000 	mtc1	zero,$f8
    2d28:	00000000 	nop
    2d2c:	e6080320 	swc1	$f8,800(s0)
    2d30:	8fbf001c 	lw	ra,28(sp)
    2d34:	8fb00018 	lw	s0,24(sp)
    2d38:	27bd0020 	addiu	sp,sp,32
    2d3c:	03e00008 	jr	ra
    2d40:	00000000 	nop

00002d44 <func_808FFC84>:
    2d44:	848e008a 	lh	t6,138(a0)
    2d48:	848f00b6 	lh	t7,182(a0)
    2d4c:	24180001 	li	t8,1
    2d50:	01cf1023 	subu	v0,t6,t7
    2d54:	00021400 	sll	v0,v0,0x10
    2d58:	00021403 	sra	v0,v0,0x10
    2d5c:	04400003 	bltz	v0,2d6c <func_808FFC84+0x28>
    2d60:	00021823 	negu	v1,v0
    2d64:	10000001 	b	2d6c <func_808FFC84+0x28>
    2d68:	00401825 	move	v1,v0
    2d6c:	28612800 	slti	at,v1,10240
    2d70:	5020000a 	beqzl	at,2d9c <func_808FFC84+0x58>
    2d74:	8c8a01c4 	lw	t2,452(a0)
    2d78:	8c8801b8 	lw	t0,440(a0)
    2d7c:	8c9901bc 	lw	t9,444(a0)
    2d80:	a0980313 	sb	t8,787(a0)
    2d84:	ac880038 	sw	t0,56(a0)
    2d88:	8c8801c0 	lw	t0,448(a0)
    2d8c:	ac99003c 	sw	t9,60(a0)
    2d90:	03e00008 	jr	ra
    2d94:	ac880040 	sw	t0,64(a0)
    2d98:	8c8a01c4 	lw	t2,452(a0)
    2d9c:	8c8901c8 	lw	t1,456(a0)
    2da0:	a0800313 	sb	zero,787(a0)
    2da4:	ac8a0038 	sw	t2,56(a0)
    2da8:	8c8a01cc 	lw	t2,460(a0)
    2dac:	ac89003c 	sw	t1,60(a0)
    2db0:	ac8a0040 	sw	t2,64(a0)
    2db4:	03e00008 	jr	ra
    2db8:	00000000 	nop

00002dbc <func_808FFCFC>:
    2dbc:	27bdffe8 	addiu	sp,sp,-24
    2dc0:	afbf0014 	sw	ra,20(sp)
    2dc4:	3c014316 	lui	at,0x4316
    2dc8:	44813000 	mtc1	at,$f6
    2dcc:	c4840090 	lwc1	$f4,144(a0)
    2dd0:	4606203c 	c.lt.s	$f4,$f6
    2dd4:	00000000 	nop
    2dd8:	45020014 	bc1fl	2e2c <func_808FFCFC+0x70>
    2ddc:	94980088 	lhu	t8,136(a0)
    2de0:	848e008a 	lh	t6,138(a0)
    2de4:	848f00b6 	lh	t7,182(a0)
    2de8:	01cf1023 	subu	v0,t6,t7
    2dec:	00021400 	sll	v0,v0,0x10
    2df0:	00021403 	sra	v0,v0,0x10
    2df4:	04400003 	bltz	v0,2e04 <func_808FFCFC+0x48>
    2df8:	00021823 	negu	v1,v0
    2dfc:	10000001 	b	2e04 <func_808FFCFC+0x48>
    2e00:	00401825 	move	v1,v0
    2e04:	28612800 	slti	at,v1,10240
    2e08:	50200008 	beqzl	at,2e2c <func_808FFCFC+0x70>
    2e0c:	94980088 	lhu	t8,136(a0)
    2e10:	0c000000 	jal	0 <func_808FCF40>
    2e14:	a0800311 	sb	zero,785(a0)
    2e18:	0c000000 	jal	0 <func_808FCF40>
    2e1c:	240439d9 	li	a0,14809
    2e20:	10000010 	b	2e64 <func_808FFCFC+0xa8>
    2e24:	8fbf0014 	lw	ra,20(sp)
    2e28:	94980088 	lhu	t8,136(a0)
    2e2c:	33190008 	andi	t9,t8,0x8
    2e30:	5320000c 	beqzl	t9,2e64 <func_808FFCFC+0xa8>
    2e34:	8fbf0014 	lw	ra,20(sp)
    2e38:	afa40018 	sw	a0,24(sp)
    2e3c:	0c000000 	jal	0 <func_808FCF40>
    2e40:	afa5001c 	sw	a1,28(sp)
    2e44:	8fa40018 	lw	a0,24(sp)
    2e48:	10400005 	beqz	v0,2e60 <func_808FFCFC+0xa4>
    2e4c:	8fa5001c 	lw	a1,28(sp)
    2e50:	0c000000 	jal	0 <func_808FCF40>
    2e54:	a0800311 	sb	zero,785(a0)
    2e58:	0c000000 	jal	0 <func_808FCF40>
    2e5c:	240439d9 	li	a0,14809
    2e60:	8fbf0014 	lw	ra,20(sp)
    2e64:	27bd0018 	addiu	sp,sp,24
    2e68:	03e00008 	jr	ra
    2e6c:	00000000 	nop

00002e70 <func_808FFDB0>:
    2e70:	27bdffd0 	addiu	sp,sp,-48
    2e74:	afb00018 	sw	s0,24(sp)
    2e78:	3c010001 	lui	at,0x1
    2e7c:	00808025 	move	s0,a0
    2e80:	342117a4 	ori	at,at,0x17a4
    2e84:	afbf001c 	sw	ra,28(sp)
    2e88:	afa50034 	sw	a1,52(sp)
    2e8c:	00a12021 	addu	a0,a1,at
    2e90:	afa40024 	sw	a0,36(sp)
    2e94:	0c000000 	jal	0 <func_808FCF40>
    2e98:	24050153 	li	a1,339
    2e9c:	8fa40024 	lw	a0,36(sp)
    2ea0:	afa20028 	sw	v0,40(sp)
    2ea4:	0c000000 	jal	0 <func_808FCF40>
    2ea8:	00402825 	move	a1,v0
    2eac:	1040002c 	beqz	v0,2f60 <func_808FFDB0+0xf0>
    2eb0:	3c080000 	lui	t0,0x0
    2eb4:	8faf0028 	lw	t7,40(sp)
    2eb8:	8fae0034 	lw	t6,52(sp)
    2ebc:	3c080001 	lui	t0,0x1
    2ec0:	000fc100 	sll	t8,t7,0x4
    2ec4:	030fc021 	addu	t8,t8,t7
    2ec8:	0018c080 	sll	t8,t8,0x2
    2ecc:	01d8c821 	addu	t9,t6,t8
    2ed0:	01194021 	addu	t0,t0,t9
    2ed4:	8d0817b4 	lw	t0,6068(t0)
    2ed8:	3c018000 	lui	at,0x8000
    2edc:	3c050601 	lui	a1,0x601
    2ee0:	01014821 	addu	t1,t0,at
    2ee4:	3c010000 	lui	at,0x0
    2ee8:	ac290018 	sw	t1,24(at)
    2eec:	24a5ffe4 	addiu	a1,a1,-28
    2ef0:	2604014c 	addiu	a0,s0,332
    2ef4:	0c000000 	jal	0 <func_808FCF40>
    2ef8:	3c06c120 	lui	a2,0xc120
    2efc:	920b0334 	lbu	t3,820(s0)
    2f00:	3c0a0000 	lui	t2,0x0
    2f04:	254a0000 	addiu	t2,t2,0
    2f08:	11600009 	beqz	t3,2f30 <func_808FFDB0+0xc0>
    2f0c:	ae0a0190 	sw	t2,400(s0)
    2f10:	3c0141f0 	lui	at,0x41f0
    2f14:	44816000 	mtc1	at,$f12
    2f18:	0c000000 	jal	0 <func_808FCF40>
    2f1c:	00000000 	nop
    2f20:	4600010d 	trunc.w.s	$f4,$f0
    2f24:	440d2000 	mfc1	t5,$f4
    2f28:	10000003 	b	2f38 <func_808FFDB0+0xc8>
    2f2c:	a60d01a2 	sh	t5,418(s0)
    2f30:	240f0028 	li	t7,40
    2f34:	a60f01a2 	sh	t7,418(s0)
    2f38:	8e180004 	lw	t8,4(s0)
    2f3c:	3c013f80 	lui	at,0x3f80
    2f40:	44810000 	mtc1	at,$f0
    2f44:	240e0001 	li	t6,1
    2f48:	37190001 	ori	t9,t8,0x1
    2f4c:	a20e0336 	sb	t6,822(s0)
    2f50:	ae190004 	sw	t9,4(s0)
    2f54:	e6000228 	swc1	$f0,552(s0)
    2f58:	10000003 	b	2f68 <func_808FFDB0+0xf8>
    2f5c:	e6000224 	swc1	$f0,548(s0)
    2f60:	25080000 	addiu	t0,t0,0
    2f64:	ae080190 	sw	t0,400(s0)
    2f68:	8fbf001c 	lw	ra,28(sp)
    2f6c:	8fb00018 	lw	s0,24(sp)
    2f70:	27bd0030 	addiu	sp,sp,48
    2f74:	03e00008 	jr	ra
    2f78:	00000000 	nop

00002f7c <func_808FFEBC>:
    2f7c:	27bdffe0 	addiu	sp,sp,-32
    2f80:	afbf001c 	sw	ra,28(sp)
    2f84:	afb00018 	sw	s0,24(sp)
    2f88:	afa50024 	sw	a1,36(sp)
    2f8c:	848e0390 	lh	t6,912(a0)
    2f90:	00808025 	move	s0,a0
    2f94:	3c014248 	lui	at,0x4248
    2f98:	15c0000c 	bnez	t6,2fcc <func_808FFEBC+0x50>
    2f9c:	00000000 	nop
    2fa0:	44816000 	mtc1	at,$f12
    2fa4:	0c000000 	jal	0 <func_808FCF40>
    2fa8:	00000000 	nop
    2fac:	4600010d 	trunc.w.s	$f4,$f0
    2fb0:	02002025 	move	a0,s0
    2fb4:	240539d9 	li	a1,14809
    2fb8:	44082000 	mfc1	t0,$f4
    2fbc:	00000000 	nop
    2fc0:	2509001e 	addiu	t1,t0,30
    2fc4:	0c000000 	jal	0 <func_808FCF40>
    2fc8:	a6090390 	sh	t1,912(s0)
    2fcc:	0c000000 	jal	0 <func_808FCF40>
    2fd0:	2604014c 	addiu	a0,s0,332
    2fd4:	26040068 	addiu	a0,s0,104
    2fd8:	3c053f00 	lui	a1,0x3f00
    2fdc:	0c000000 	jal	0 <func_808FCF40>
    2fe0:	3c063f80 	lui	a2,0x3f80
    2fe4:	860a01a2 	lh	t2,418(s0)
    2fe8:	02002025 	move	a0,s0
    2fec:	55400006 	bnezl	t2,3008 <func_808FFEBC+0x8c>
    2ff0:	860b01a4 	lh	t3,420(s0)
    2ff4:	0c000000 	jal	0 <func_808FCF40>
    2ff8:	8fa50024 	lw	a1,36(sp)
    2ffc:	10000008 	b	3020 <func_808FFEBC+0xa4>
    3000:	02002025 	move	a0,s0
    3004:	860b01a4 	lh	t3,420(s0)
    3008:	02002025 	move	a0,s0
    300c:	55600004 	bnezl	t3,3020 <func_808FFEBC+0xa4>
    3010:	02002025 	move	a0,s0
    3014:	0c000000 	jal	0 <func_808FCF40>
    3018:	8fa50024 	lw	a1,36(sp)
    301c:	02002025 	move	a0,s0
    3020:	8fa50024 	lw	a1,36(sp)
    3024:	0c000000 	jal	0 <func_808FCF40>
    3028:	00003025 	move	a2,zero
    302c:	02002025 	move	a0,s0
    3030:	8fa50024 	lw	a1,36(sp)
    3034:	0c000000 	jal	0 <func_808FCF40>
    3038:	00003025 	move	a2,zero
    303c:	8fbf001c 	lw	ra,28(sp)
    3040:	8fb00018 	lw	s0,24(sp)
    3044:	27bd0020 	addiu	sp,sp,32
    3048:	03e00008 	jr	ra
    304c:	00000000 	nop

00003050 <func_808FFF90>:
    3050:	27bdffe8 	addiu	sp,sp,-24
    3054:	afa5001c 	sw	a1,28(sp)
    3058:	afbf0014 	sw	ra,20(sp)
    305c:	00803825 	move	a3,a0
    3060:	3c050601 	lui	a1,0x601
    3064:	24a5ffe4 	addiu	a1,a1,-28
    3068:	afa70018 	sw	a3,24(sp)
    306c:	2484014c 	addiu	a0,a0,332
    3070:	0c000000 	jal	0 <func_808FCF40>
    3074:	3c06c120 	lui	a2,0xc120
    3078:	8fa70018 	lw	a3,24(sp)
    307c:	3c0e0000 	lui	t6,0x0
    3080:	25ce0000 	addiu	t6,t6,0
    3084:	240f0028 	li	t7,40
    3088:	acee0190 	sw	t6,400(a3)
    308c:	a4ef01a2 	sh	t7,418(a3)
    3090:	8fbf0014 	lw	ra,20(sp)
    3094:	27bd0018 	addiu	sp,sp,24
    3098:	03e00008 	jr	ra
    309c:	00000000 	nop

000030a0 <func_808FFFE0>:
    30a0:	27bdffe0 	addiu	sp,sp,-32
    30a4:	afb00018 	sw	s0,24(sp)
    30a8:	00808025 	move	s0,a0
    30ac:	afbf001c 	sw	ra,28(sp)
    30b0:	afa50024 	sw	a1,36(sp)
    30b4:	0c000000 	jal	0 <func_808FCF40>
    30b8:	2484014c 	addiu	a0,a0,332
    30bc:	26040068 	addiu	a0,s0,104
    30c0:	3c053f00 	lui	a1,0x3f00
    30c4:	0c000000 	jal	0 <func_808FCF40>
    30c8:	3c063f80 	lui	a2,0x3f80
    30cc:	860201a2 	lh	v0,418(s0)
    30d0:	02002025 	move	a0,s0
    30d4:	54400005 	bnezl	v0,30ec <func_808FFFE0+0x4c>
    30d8:	2841001e 	slti	at,v0,30
    30dc:	0c000000 	jal	0 <func_808FCF40>
    30e0:	8fa50024 	lw	a1,36(sp)
    30e4:	860201a2 	lh	v0,418(s0)
    30e8:	2841001e 	slti	at,v0,30
    30ec:	10200013 	beqz	at,313c <func_808FFFE0+0x9c>
    30f0:	00002825 	move	a1,zero
    30f4:	2841000a 	slti	at,v0,10
    30f8:	14200010 	bnez	at,313c <func_808FFFE0+0x9c>
    30fc:	00022080 	sll	a0,v0,0x2
    3100:	00822023 	subu	a0,a0,v0
    3104:	00042300 	sll	a0,a0,0xc
    3108:	00042400 	sll	a0,a0,0x10
    310c:	0c000000 	jal	0 <func_808FCF40>
    3110:	00042403 	sra	a0,a0,0x10
    3114:	3c014600 	lui	at,0x4600
    3118:	44812000 	mtc1	at,$f4
    311c:	00000000 	nop
    3120:	46040182 	mul.s	$f6,$f0,$f4
    3124:	4600320d 	trunc.w.s	$f8,$f6
    3128:	44054000 	mfc1	a1,$f8
    312c:	00000000 	nop
    3130:	00052c00 	sll	a1,a1,0x10
    3134:	10000001 	b	313c <func_808FFFE0+0x9c>
    3138:	00052c03 	sra	a1,a1,0x10
    313c:	2604031a 	addiu	a0,s0,794
    3140:	24060002 	li	a2,2
    3144:	0c000000 	jal	0 <func_808FCF40>
    3148:	24074000 	li	a3,16384
    314c:	8fbf001c 	lw	ra,28(sp)
    3150:	8fb00018 	lw	s0,24(sp)
    3154:	27bd0020 	addiu	sp,sp,32
    3158:	03e00008 	jr	ra
    315c:	00000000 	nop

00003160 <func_809000A0>:
    3160:	27bdffe8 	addiu	sp,sp,-24
    3164:	afa5001c 	sw	a1,28(sp)
    3168:	afbf0014 	sw	ra,20(sp)
    316c:	00803825 	move	a3,a0
    3170:	3c050602 	lui	a1,0x602
    3174:	24a56510 	addiu	a1,a1,25872
    3178:	afa70018 	sw	a3,24(sp)
    317c:	2484014c 	addiu	a0,a0,332
    3180:	0c000000 	jal	0 <func_808FCF40>
    3184:	3c06c000 	lui	a2,0xc000
    3188:	3c040602 	lui	a0,0x602
    318c:	0c000000 	jal	0 <func_808FCF40>
    3190:	24846510 	addiu	a0,a0,25872
    3194:	44822000 	mtc1	v0,$f4
    3198:	8fa70018 	lw	a3,24(sp)
    319c:	3c0e0000 	lui	t6,0x0
    31a0:	468021a0 	cvt.s.w	$f6,$f4
    31a4:	25ce0000 	addiu	t6,t6,0
    31a8:	a4e001ac 	sh	zero,428(a3)
    31ac:	acee0190 	sw	t6,400(a3)
    31b0:	e4e60194 	swc1	$f6,404(a3)
    31b4:	8fbf0014 	lw	ra,20(sp)
    31b8:	27bd0018 	addiu	sp,sp,24
    31bc:	03e00008 	jr	ra
    31c0:	00000000 	nop

000031c4 <func_80900104>:
    31c4:	27bdffd8 	addiu	sp,sp,-40
    31c8:	afb00018 	sw	s0,24(sp)
    31cc:	00808025 	move	s0,a0
    31d0:	afbf001c 	sw	ra,28(sp)
    31d4:	2487014c 	addiu	a3,a0,332
    31d8:	afa5002c 	sw	a1,44(sp)
    31dc:	00e02025 	move	a0,a3
    31e0:	0c000000 	jal	0 <func_808FCF40>
    31e4:	afa70020 	sw	a3,32(sp)
    31e8:	26040068 	addiu	a0,s0,104
    31ec:	3c053f00 	lui	a1,0x3f00
    31f0:	0c000000 	jal	0 <func_808FCF40>
    31f4:	3c063f80 	lui	a2,0x3f80
    31f8:	860201ac 	lh	v0,428(s0)
    31fc:	8fa70020 	lw	a3,32(sp)
    3200:	24010001 	li	at,1
    3204:	10400007 	beqz	v0,3224 <func_80900104+0x60>
    3208:	00e02025 	move	a0,a3
    320c:	10410014 	beq	v0,at,3260 <func_80900104+0x9c>
    3210:	24010002 	li	at,2
    3214:	10410023 	beq	v0,at,32a4 <func_80900104+0xe0>
    3218:	00e02025 	move	a0,a3
    321c:	10000028 	b	32c0 <func_80900104+0xfc>
    3220:	8fbf001c 	lw	ra,28(sp)
    3224:	8e050194 	lw	a1,404(s0)
    3228:	0c000000 	jal	0 <func_808FCF40>
    322c:	afa70020 	sw	a3,32(sp)
    3230:	10400022 	beqz	v0,32bc <func_80900104+0xf8>
    3234:	8fa70020 	lw	a3,32(sp)
    3238:	240e0001 	li	t6,1
    323c:	3c050602 	lui	a1,0x602
    3240:	a60e01ac 	sh	t6,428(s0)
    3244:	24a56af4 	addiu	a1,a1,27380
    3248:	00e02025 	move	a0,a3
    324c:	0c000000 	jal	0 <func_808FCF40>
    3250:	24060000 	li	a2,0
    3254:	240f0050 	li	t7,80
    3258:	10000018 	b	32bc <func_80900104+0xf8>
    325c:	a60f01a2 	sh	t7,418(s0)
    3260:	861801a2 	lh	t8,418(s0)
    3264:	24190002 	li	t9,2
    3268:	00e02025 	move	a0,a3
    326c:	17000013 	bnez	t8,32bc <func_80900104+0xf8>
    3270:	3c050602 	lui	a1,0x602
    3274:	a61901ac 	sh	t9,428(s0)
    3278:	24a57824 	addiu	a1,a1,30756
    327c:	0c000000 	jal	0 <func_808FCF40>
    3280:	3c06c0a0 	lui	a2,0xc0a0
    3284:	3c040602 	lui	a0,0x602
    3288:	0c000000 	jal	0 <func_808FCF40>
    328c:	24847824 	addiu	a0,a0,30756
    3290:	44822000 	mtc1	v0,$f4
    3294:	00000000 	nop
    3298:	468021a0 	cvt.s.w	$f6,$f4
    329c:	10000007 	b	32bc <func_80900104+0xf8>
    32a0:	e6060194 	swc1	$f6,404(s0)
    32a4:	0c000000 	jal	0 <func_808FCF40>
    32a8:	8e050194 	lw	a1,404(s0)
    32ac:	10400003 	beqz	v0,32bc <func_80900104+0xf8>
    32b0:	02002025 	move	a0,s0
    32b4:	0c000000 	jal	0 <func_808FCF40>
    32b8:	8fa5002c 	lw	a1,44(sp)
    32bc:	8fbf001c 	lw	ra,28(sp)
    32c0:	8fb00018 	lw	s0,24(sp)
    32c4:	27bd0028 	addiu	sp,sp,40
    32c8:	03e00008 	jr	ra
    32cc:	00000000 	nop

000032d0 <func_80900210>:
    32d0:	27bdffe8 	addiu	sp,sp,-24
    32d4:	afa5001c 	sw	a1,28(sp)
    32d8:	afbf0014 	sw	ra,20(sp)
    32dc:	afa40018 	sw	a0,24(sp)
    32e0:	3c050601 	lui	a1,0x601
    32e4:	24a5dff0 	addiu	a1,a1,-8208
    32e8:	2484014c 	addiu	a0,a0,332
    32ec:	0c000000 	jal	0 <func_808FCF40>
    32f0:	3c06c040 	lui	a2,0xc040
    32f4:	3c040601 	lui	a0,0x601
    32f8:	0c000000 	jal	0 <func_808FCF40>
    32fc:	2484dff0 	addiu	a0,a0,-8208
    3300:	44822000 	mtc1	v0,$f4
    3304:	8fa30018 	lw	v1,24(sp)
    3308:	3c0e0000 	lui	t6,0x0
    330c:	468021a0 	cvt.s.w	$f6,$f4
    3310:	25ce0000 	addiu	t6,t6,0
    3314:	ac6e0190 	sw	t6,400(v1)
    3318:	e4660194 	swc1	$f6,404(v1)
    331c:	8fbf0014 	lw	ra,20(sp)
    3320:	27bd0018 	addiu	sp,sp,24
    3324:	03e00008 	jr	ra
    3328:	00000000 	nop

0000332c <func_8090026C>:
    332c:	27bdffe0 	addiu	sp,sp,-32
    3330:	afa40020 	sw	a0,32(sp)
    3334:	afbf0014 	sw	ra,20(sp)
    3338:	2484014c 	addiu	a0,a0,332
    333c:	afa50024 	sw	a1,36(sp)
    3340:	0c000000 	jal	0 <func_808FCF40>
    3344:	afa4001c 	sw	a0,28(sp)
    3348:	8fa40020 	lw	a0,32(sp)
    334c:	3c053f00 	lui	a1,0x3f00
    3350:	3c064000 	lui	a2,0x4000
    3354:	0c000000 	jal	0 <func_808FCF40>
    3358:	24840068 	addiu	a0,a0,104
    335c:	8fae0020 	lw	t6,32(sp)
    3360:	8fa4001c 	lw	a0,28(sp)
    3364:	0c000000 	jal	0 <func_808FCF40>
    3368:	8dc50194 	lw	a1,404(t6)
    336c:	10400003 	beqz	v0,337c <func_8090026C+0x50>
    3370:	8fa40020 	lw	a0,32(sp)
    3374:	0c000000 	jal	0 <func_808FCF40>
    3378:	8fa50024 	lw	a1,36(sp)
    337c:	8fbf0014 	lw	ra,20(sp)
    3380:	27bd0020 	addiu	sp,sp,32
    3384:	03e00008 	jr	ra
    3388:	00000000 	nop

0000338c <func_809002CC>:
    338c:	27bdffe8 	addiu	sp,sp,-24
    3390:	afa5001c 	sw	a1,28(sp)
    3394:	afbf0014 	sw	ra,20(sp)
    3398:	00803825 	move	a3,a0
    339c:	3c050601 	lui	a1,0x601
    33a0:	24a5e8ec 	addiu	a1,a1,-5908
    33a4:	afa70018 	sw	a3,24(sp)
    33a8:	2484014c 	addiu	a0,a0,332
    33ac:	0c000000 	jal	0 <func_808FCF40>
    33b0:	3c06c120 	lui	a2,0xc120
    33b4:	8fa70018 	lw	a3,24(sp)
    33b8:	3c0e0000 	lui	t6,0x0
    33bc:	3c014248 	lui	at,0x4248
    33c0:	25ce0000 	addiu	t6,t6,0
    33c4:	240f0064 	li	t7,100
    33c8:	44816000 	mtc1	at,$f12
    33cc:	acee0190 	sw	t6,400(a3)
    33d0:	a0e00338 	sb	zero,824(a3)
    33d4:	0c000000 	jal	0 <func_808FCF40>
    33d8:	a4ef01a2 	sh	t7,418(a3)
    33dc:	4600010d 	trunc.w.s	$f4,$f0
    33e0:	8fa70018 	lw	a3,24(sp)
    33e4:	44092000 	mfc1	t1,$f4
    33e8:	00000000 	nop
    33ec:	252a0032 	addiu	t2,t1,50
    33f0:	a4ea0390 	sh	t2,912(a3)
    33f4:	8fbf0014 	lw	ra,20(sp)
    33f8:	27bd0018 	addiu	sp,sp,24
    33fc:	03e00008 	jr	ra
    3400:	00000000 	nop

00003404 <func_80900344>:
    3404:	27bdffd8 	addiu	sp,sp,-40
    3408:	afbf001c 	sw	ra,28(sp)
    340c:	afb00018 	sw	s0,24(sp)
    3410:	afa5002c 	sw	a1,44(sp)
    3414:	848e0390 	lh	t6,912(a0)
    3418:	00808025 	move	s0,a0
    341c:	3c014248 	lui	at,0x4248
    3420:	55c0000d 	bnezl	t6,3458 <func_80900344+0x54>
    3424:	26040324 	addiu	a0,s0,804
    3428:	44816000 	mtc1	at,$f12
    342c:	0c000000 	jal	0 <func_808FCF40>
    3430:	00000000 	nop
    3434:	4600010d 	trunc.w.s	$f4,$f0
    3438:	02002025 	move	a0,s0
    343c:	240539d9 	li	a1,14809
    3440:	44082000 	mfc1	t0,$f4
    3444:	00000000 	nop
    3448:	2509001e 	addiu	t1,t0,30
    344c:	0c000000 	jal	0 <func_808FCF40>
    3450:	a6090390 	sh	t1,912(s0)
    3454:	26040324 	addiu	a0,s0,804
    3458:	3c05437f 	lui	a1,0x437f
    345c:	3c063f80 	lui	a2,0x3f80
    3460:	0c000000 	jal	0 <func_808FCF40>
    3464:	3c074120 	lui	a3,0x4120
    3468:	920a0338 	lbu	t2,824(s0)
    346c:	2604014c 	addiu	a0,s0,332
    3470:	3c054150 	lui	a1,0x4150
    3474:	11400041 	beqz	t2,357c <func_80900344+0x178>
    3478:	3c014000 	lui	at,0x4000
    347c:	0c000000 	jal	0 <func_808FCF40>
    3480:	afa40020 	sw	a0,32(sp)
    3484:	10400008 	beqz	v0,34a8 <func_80900344+0xa4>
    3488:	8fa40020 	lw	a0,32(sp)
    348c:	02002025 	move	a0,s0
    3490:	8fa5002c 	lw	a1,44(sp)
    3494:	24060001 	li	a2,1
    3498:	0c000000 	jal	0 <func_808FCF40>
    349c:	24070003 	li	a3,3
    34a0:	1000000a 	b	34cc <func_80900344+0xc8>
    34a4:	3c014348 	lui	at,0x4348
    34a8:	0c000000 	jal	0 <func_808FCF40>
    34ac:	3c0541e0 	lui	a1,0x41e0
    34b0:	10400005 	beqz	v0,34c8 <func_80900344+0xc4>
    34b4:	02002025 	move	a0,s0
    34b8:	8fa5002c 	lw	a1,44(sp)
    34bc:	24060002 	li	a2,2
    34c0:	0c000000 	jal	0 <func_808FCF40>
    34c4:	24070003 	li	a3,3
    34c8:	3c014348 	lui	at,0x4348
    34cc:	44813000 	mtc1	at,$f6
    34d0:	c6020090 	lwc1	$f2,144(s0)
    34d4:	3c050601 	lui	a1,0x601
    34d8:	24a5e8ec 	addiu	a1,a1,-5908
    34dc:	4606103c 	c.lt.s	$f2,$f6
    34e0:	3c014000 	lui	at,0x4000
    34e4:	3c06c120 	lui	a2,0xc120
    34e8:	45020007 	bc1fl	3508 <func_80900344+0x104>
    34ec:	44816000 	mtc1	at,$f12
    34f0:	a2000338 	sb	zero,824(s0)
    34f4:	0c000000 	jal	0 <func_808FCF40>
    34f8:	8fa40020 	lw	a0,32(sp)
    34fc:	1000001a 	b	3568 <func_80900344+0x164>
    3500:	3c014040 	lui	at,0x4040
    3504:	44816000 	mtc1	at,$f12
    3508:	3c014396 	lui	at,0x4396
    350c:	44814000 	mtc1	at,$f8
    3510:	3c010000 	lui	at,0x0
    3514:	c4300000 	lwc1	$f16,0(at)
    3518:	46081281 	sub.s	$f10,$f2,$f8
    351c:	3c013f80 	lui	at,0x3f80
    3520:	44812000 	mtc1	at,$f4
    3524:	3c013fc0 	lui	at,0x3fc0
    3528:	46105482 	mul.s	$f18,$f10,$f16
    352c:	46049000 	add.s	$f0,$f18,$f4
    3530:	4600603c 	c.lt.s	$f12,$f0
    3534:	e6000168 	swc1	$f0,360(s0)
    3538:	45020003 	bc1fl	3548 <func_80900344+0x144>
    353c:	920b0334 	lbu	t3,820(s0)
    3540:	e60c0168 	swc1	$f12,360(s0)
    3544:	920b0334 	lbu	t3,820(s0)
    3548:	51600007 	beqzl	t3,3568 <func_80900344+0x164>
    354c:	3c014040 	lui	at,0x4040
    3550:	c6060168 	lwc1	$f6,360(s0)
    3554:	44814000 	mtc1	at,$f8
    3558:	00000000 	nop
    355c:	46083282 	mul.s	$f10,$f6,$f8
    3560:	e60a0168 	swc1	$f10,360(s0)
    3564:	3c014040 	lui	at,0x4040
    3568:	44819000 	mtc1	at,$f18
    356c:	c6100168 	lwc1	$f16,360(s0)
    3570:	46128002 	mul.s	$f0,$f16,$f18
    3574:	10000012 	b	35c0 <func_80900344+0x1bc>
    3578:	2604014c 	addiu	a0,s0,332
    357c:	44810000 	mtc1	at,$f0
    3580:	3c014348 	lui	at,0x4348
    3584:	44813000 	mtc1	at,$f6
    3588:	c6040090 	lwc1	$f4,144(s0)
    358c:	3c050603 	lui	a1,0x603
    3590:	240c0001 	li	t4,1
    3594:	4604303e 	c.le.s	$f6,$f4
    3598:	24a553c0 	addiu	a1,a1,21440
    359c:	2604014c 	addiu	a0,s0,332
    35a0:	3c06c120 	lui	a2,0xc120
    35a4:	45020006 	bc1fl	35c0 <func_80900344+0x1bc>
    35a8:	2604014c 	addiu	a0,s0,332
    35ac:	a20c0338 	sb	t4,824(s0)
    35b0:	0c000000 	jal	0 <func_808FCF40>
    35b4:	e7a00024 	swc1	$f0,36(sp)
    35b8:	c7a00024 	lwc1	$f0,36(sp)
    35bc:	2604014c 	addiu	a0,s0,332
    35c0:	0c000000 	jal	0 <func_808FCF40>
    35c4:	e7a00024 	swc1	$f0,36(sp)
    35c8:	c7a00024 	lwc1	$f0,36(sp)
    35cc:	26040068 	addiu	a0,s0,104
    35d0:	3c063f00 	lui	a2,0x3f00
    35d4:	44050000 	mfc1	a1,$f0
    35d8:	0c000000 	jal	0 <func_808FCF40>
    35dc:	3c073f80 	lui	a3,0x3f80
    35e0:	860d01a2 	lh	t5,418(s0)
    35e4:	8fa5002c 	lw	a1,44(sp)
    35e8:	02002025 	move	a0,s0
    35ec:	15a00005 	bnez	t5,3604 <func_80900344+0x200>
    35f0:	00000000 	nop
    35f4:	0c000000 	jal	0 <func_808FCF40>
    35f8:	02002025 	move	a0,s0
    35fc:	10000004 	b	3610 <func_80900344+0x20c>
    3600:	02002025 	move	a0,s0
    3604:	0c000000 	jal	0 <func_808FCF40>
    3608:	8fa5002c 	lw	a1,44(sp)
    360c:	02002025 	move	a0,s0
    3610:	8fa5002c 	lw	a1,44(sp)
    3614:	0c000000 	jal	0 <func_808FCF40>
    3618:	24060001 	li	a2,1
    361c:	02002025 	move	a0,s0
    3620:	8fa5002c 	lw	a1,44(sp)
    3624:	0c000000 	jal	0 <func_808FCF40>
    3628:	24060001 	li	a2,1
    362c:	8fbf001c 	lw	ra,28(sp)
    3630:	8fb00018 	lw	s0,24(sp)
    3634:	27bd0028 	addiu	sp,sp,40
    3638:	03e00008 	jr	ra
    363c:	00000000 	nop

00003640 <func_80900580>:
    3640:	27bdffe0 	addiu	sp,sp,-32
    3644:	afbf001c 	sw	ra,28(sp)
    3648:	afb00018 	sw	s0,24(sp)
    364c:	afa50024 	sw	a1,36(sp)
    3650:	908e0311 	lbu	t6,785(a0)
    3654:	3c050601 	lui	a1,0x601
    3658:	00808025 	move	s0,a0
    365c:	15c00014 	bnez	t6,36b0 <func_80900580+0x70>
    3660:	24a5caf8 	addiu	a1,a1,-13576
    3664:	3c050601 	lui	a1,0x601
    3668:	24a5add0 	addiu	a1,a1,-21040
    366c:	2484014c 	addiu	a0,a0,332
    3670:	0c000000 	jal	0 <func_808FCF40>
    3674:	3c06c0a0 	lui	a2,0xc0a0
    3678:	3c040601 	lui	a0,0x601
    367c:	0c000000 	jal	0 <func_808FCF40>
    3680:	2484add0 	addiu	a0,a0,-21040
    3684:	44822000 	mtc1	v0,$f4
    3688:	3c014170 	lui	at,0x4170
    368c:	44813000 	mtc1	at,$f6
    3690:	46802020 	cvt.s.w	$f0,$f4
    3694:	3c0140a0 	lui	at,0x40a0
    3698:	44815000 	mtc1	at,$f10
    369c:	46060201 	sub.s	$f8,$f0,$f6
    36a0:	e6000194 	swc1	$f0,404(s0)
    36a4:	460a4401 	sub.s	$f16,$f8,$f10
    36a8:	10000011 	b	36f0 <func_80900580+0xb0>
    36ac:	e6100198 	swc1	$f16,408(s0)
    36b0:	2604014c 	addiu	a0,s0,332
    36b4:	0c000000 	jal	0 <func_808FCF40>
    36b8:	3c06c0a0 	lui	a2,0xc0a0
    36bc:	3c040601 	lui	a0,0x601
    36c0:	0c000000 	jal	0 <func_808FCF40>
    36c4:	2484caf8 	addiu	a0,a0,-13576
    36c8:	44829000 	mtc1	v0,$f18
    36cc:	3c014170 	lui	at,0x4170
    36d0:	44812000 	mtc1	at,$f4
    36d4:	46809020 	cvt.s.w	$f0,$f18
    36d8:	3c0140a0 	lui	at,0x40a0
    36dc:	44814000 	mtc1	at,$f8
    36e0:	46040181 	sub.s	$f6,$f0,$f4
    36e4:	e6000194 	swc1	$f0,404(s0)
    36e8:	46083281 	sub.s	$f10,$f6,$f8
    36ec:	e60a0198 	swc1	$f10,408(s0)
    36f0:	3c0f0000 	lui	t7,0x0
    36f4:	25ef0000 	addiu	t7,t7,0
    36f8:	ae0f0190 	sw	t7,400(s0)
    36fc:	8fbf001c 	lw	ra,28(sp)
    3700:	8fb00018 	lw	s0,24(sp)
    3704:	27bd0020 	addiu	sp,sp,32
    3708:	03e00008 	jr	ra
    370c:	00000000 	nop

00003710 <func_80900650>:
    3710:	27bdffd8 	addiu	sp,sp,-40
    3714:	afb00018 	sw	s0,24(sp)
    3718:	00808025 	move	s0,a0
    371c:	afbf001c 	sw	ra,28(sp)
    3720:	2484014c 	addiu	a0,a0,332
    3724:	afa5002c 	sw	a1,44(sp)
    3728:	0c000000 	jal	0 <func_808FCF40>
    372c:	afa40024 	sw	a0,36(sp)
    3730:	8fa40024 	lw	a0,36(sp)
    3734:	0c000000 	jal	0 <func_808FCF40>
    3738:	8e050198 	lw	a1,408(s0)
    373c:	10400006 	beqz	v0,3758 <func_80900650+0x48>
    3740:	02002025 	move	a0,s0
    3744:	0c000000 	jal	0 <func_808FCF40>
    3748:	24053997 	li	a1,14743
    374c:	02002025 	move	a0,s0
    3750:	0c000000 	jal	0 <func_808FCF40>
    3754:	2405398f 	li	a1,14735
    3758:	920e0311 	lbu	t6,785(s0)
    375c:	3c014080 	lui	at,0x4080
    3760:	26040068 	addiu	a0,s0,104
    3764:	15c00014 	bnez	t6,37b8 <func_80900650+0xa8>
    3768:	3c053f00 	lui	a1,0x3f00
    376c:	3c014080 	lui	at,0x4080
    3770:	44816000 	mtc1	at,$f12
    3774:	c6000198 	lwc1	$f0,408(s0)
    3778:	c6020164 	lwc1	$f2,356(s0)
    377c:	3c0140c0 	lui	at,0x40c0
    3780:	460c0101 	sub.s	$f4,$f0,$f12
    3784:	4602203c 	c.lt.s	$f4,$f2
    3788:	00000000 	nop
    378c:	4500001c 	bc1f	3800 <func_80900650+0xf0>
    3790:	00000000 	nop
    3794:	44813000 	mtc1	at,$f6
    3798:	240f0001 	li	t7,1
    379c:	46060200 	add.s	$f8,$f0,$f6
    37a0:	4608103c 	c.lt.s	$f2,$f8
    37a4:	00000000 	nop
    37a8:	45000015 	bc1f	3800 <func_80900650+0xf0>
    37ac:	00000000 	nop
    37b0:	10000013 	b	3800 <func_80900650+0xf0>
    37b4:	a20f0312 	sb	t7,786(s0)
    37b8:	44816000 	mtc1	at,$f12
    37bc:	c6000198 	lwc1	$f0,408(s0)
    37c0:	c6020164 	lwc1	$f2,356(s0)
    37c4:	3c0140c0 	lui	at,0x40c0
    37c8:	460c0281 	sub.s	$f10,$f0,$f12
    37cc:	460c5400 	add.s	$f16,$f10,$f12
    37d0:	4602803c 	c.lt.s	$f16,$f2
    37d4:	00000000 	nop
    37d8:	45000009 	bc1f	3800 <func_80900650+0xf0>
    37dc:	00000000 	nop
    37e0:	44819000 	mtc1	at,$f18
    37e4:	24180002 	li	t8,2
    37e8:	46120100 	add.s	$f4,$f0,$f18
    37ec:	4604103c 	c.lt.s	$f2,$f4
    37f0:	00000000 	nop
    37f4:	45000002 	bc1f	3800 <func_80900650+0xf0>
    37f8:	00000000 	nop
    37fc:	a2180312 	sb	t8,786(s0)
    3800:	0c000000 	jal	0 <func_808FCF40>
    3804:	3c063f80 	lui	a2,0x3f80
    3808:	8fa40024 	lw	a0,36(sp)
    380c:	0c000000 	jal	0 <func_808FCF40>
    3810:	8e050194 	lw	a1,404(s0)
    3814:	5040001b 	beqzl	v0,3884 <func_80900650+0x174>
    3818:	02002025 	move	a0,s0
    381c:	92190311 	lbu	t9,785(s0)
    3820:	24020001 	li	v0,1
    3824:	3c01437a 	lui	at,0x437a
    3828:	00594023 	subu	t0,v0,t9
    382c:	310900ff 	andi	t1,t0,0xff
    3830:	14490010 	bne	v0,t1,3874 <func_80900650+0x164>
    3834:	a2080311 	sb	t0,785(s0)
    3838:	c6060090 	lwc1	$f6,144(s0)
    383c:	44814000 	mtc1	at,$f8
    3840:	00000000 	nop
    3844:	4608303c 	c.lt.s	$f6,$f8
    3848:	00000000 	nop
    384c:	4502000a 	bc1fl	3878 <func_80900650+0x168>
    3850:	02002025 	move	a0,s0
    3854:	920a0313 	lbu	t2,787(s0)
    3858:	02002025 	move	a0,s0
    385c:	51400006 	beqzl	t2,3878 <func_80900650+0x168>
    3860:	02002025 	move	a0,s0
    3864:	0c000000 	jal	0 <func_808FCF40>
    3868:	8fa5002c 	lw	a1,44(sp)
    386c:	10000005 	b	3884 <func_80900650+0x174>
    3870:	02002025 	move	a0,s0
    3874:	02002025 	move	a0,s0
    3878:	0c000000 	jal	0 <func_808FCF40>
    387c:	8fa5002c 	lw	a1,44(sp)
    3880:	02002025 	move	a0,s0
    3884:	8fa5002c 	lw	a1,44(sp)
    3888:	0c000000 	jal	0 <func_808FCF40>
    388c:	00003025 	move	a2,zero
    3890:	920b0334 	lbu	t3,820(s0)
    3894:	02002025 	move	a0,s0
    3898:	8fa5002c 	lw	a1,44(sp)
    389c:	15600007 	bnez	t3,38bc <func_80900650+0x1ac>
    38a0:	00000000 	nop
    38a4:	920c0311 	lbu	t4,785(s0)
    38a8:	15800004 	bnez	t4,38bc <func_80900650+0x1ac>
    38ac:	00000000 	nop
    38b0:	44805000 	mtc1	zero,$f10
    38b4:	10000003 	b	38c4 <func_80900650+0x1b4>
    38b8:	e60a0320 	swc1	$f10,800(s0)
    38bc:	0c000000 	jal	0 <func_808FCF40>
    38c0:	00003025 	move	a2,zero
    38c4:	8fbf001c 	lw	ra,28(sp)
    38c8:	8fb00018 	lw	s0,24(sp)
    38cc:	27bd0028 	addiu	sp,sp,40
    38d0:	03e00008 	jr	ra
    38d4:	00000000 	nop

000038d8 <func_80900818>:
    38d8:	27bdffe0 	addiu	sp,sp,-32
    38dc:	afb00018 	sw	s0,24(sp)
    38e0:	afa50024 	sw	a1,36(sp)
    38e4:	00808025 	move	s0,a0
    38e8:	afbf001c 	sw	ra,28(sp)
    38ec:	3c050603 	lui	a1,0x603
    38f0:	24a5a848 	addiu	a1,a1,-22456
    38f4:	2484014c 	addiu	a0,a0,332
    38f8:	0c000000 	jal	0 <func_808FCF40>
    38fc:	3c06c0a0 	lui	a2,0xc0a0
    3900:	3c040603 	lui	a0,0x603
    3904:	0c000000 	jal	0 <func_808FCF40>
    3908:	2484a848 	addiu	a0,a0,-22456
    390c:	44822000 	mtc1	v0,$f4
    3910:	3c0e0000 	lui	t6,0x0
    3914:	25ce0000 	addiu	t6,t6,0
    3918:	468021a0 	cvt.s.w	$f6,$f4
    391c:	ae0e0190 	sw	t6,400(s0)
    3920:	a60001ac 	sh	zero,428(s0)
    3924:	a600039c 	sh	zero,924(s0)
    3928:	02002025 	move	a0,s0
    392c:	2405399e 	li	a1,14750
    3930:	0c000000 	jal	0 <func_808FCF40>
    3934:	e6060194 	swc1	$f6,404(s0)
    3938:	a2000336 	sb	zero,822(s0)
    393c:	8fbf001c 	lw	ra,28(sp)
    3940:	8fb00018 	lw	s0,24(sp)
    3944:	27bd0020 	addiu	sp,sp,32
    3948:	03e00008 	jr	ra
    394c:	00000000 	nop

00003950 <func_80900890>:
    3950:	27bdff98 	addiu	sp,sp,-104
    3954:	afb00014 	sw	s0,20(sp)
    3958:	00808025 	move	s0,a0
    395c:	afb10018 	sw	s1,24(sp)
    3960:	00a08825 	move	s1,a1
    3964:	afbf001c 	sw	ra,28(sp)
    3968:	00a02025 	move	a0,a1
    396c:	0c000000 	jal	0 <func_808FCF40>
    3970:	00002825 	move	a1,zero
    3974:	afa2004c 	sw	v0,76(sp)
    3978:	8e2e1c44 	lw	t6,7236(s1)
    397c:	2604014c 	addiu	a0,s0,332
    3980:	afa4002c 	sw	a0,44(sp)
    3984:	0c000000 	jal	0 <func_808FCF40>
    3988:	afae0048 	sw	t6,72(sp)
    398c:	8e0f0398 	lw	t7,920(s0)
    3990:	9608039c 	lhu	t0,924(s0)
    3994:	24190014 	li	t9,20
    3998:	25f80001 	addiu	t8,t7,1
    399c:	2d01000c 	sltiu	at,t0,12
    39a0:	ae180398 	sw	t8,920(s0)
    39a4:	10200159 	beqz	at,3f0c <L80900E4C>
    39a8:	a2190339 	sb	t9,825(s0)
    39ac:	00084080 	sll	t0,t0,0x2
    39b0:	3c010000 	lui	at,0x0
    39b4:	00280821 	addu	at,at,t0
    39b8:	8c280000 	lw	t0,0(at)
    39bc:	01000008 	jr	t0
    39c0:	00000000 	nop

000039c4 <L80900904>:
    39c4:	02202025 	move	a0,s1
    39c8:	0c000000 	jal	0 <func_808FCF40>
    39cc:	26251d64 	addiu	a1,s1,7524
    39d0:	0c000000 	jal	0 <func_808FCF40>
    39d4:	02202025 	move	a0,s1
    39d8:	a602039e 	sh	v0,926(s0)
    39dc:	02202025 	move	a0,s1
    39e0:	00002825 	move	a1,zero
    39e4:	0c000000 	jal	0 <func_808FCF40>
    39e8:	24060001 	li	a2,1
    39ec:	02202025 	move	a0,s1
    39f0:	8605039e 	lh	a1,926(s0)
    39f4:	0c000000 	jal	0 <func_808FCF40>
    39f8:	24060007 	li	a2,7
    39fc:	02202025 	move	a0,s1
    3a00:	02002825 	move	a1,s0
    3a04:	0c000000 	jal	0 <func_808FCF40>
    3a08:	24060008 	li	a2,8
    3a0c:	8fa3004c 	lw	v1,76(sp)
    3a10:	24090001 	li	t1,1
    3a14:	a609039c 	sh	t1,924(s0)
    3a18:	8c6b005c 	lw	t3,92(v1)
    3a1c:	44802000 	mtc1	zero,$f4
    3a20:	240e012c 	li	t6,300
    3a24:	ae0b03a4 	sw	t3,932(s0)
    3a28:	8c6a0060 	lw	t2,96(v1)
    3a2c:	240f0064 	li	t7,100
    3a30:	3c010001 	lui	at,0x1
    3a34:	ae0a03a8 	sw	t2,936(s0)
    3a38:	8c6b0064 	lw	t3,100(v1)
    3a3c:	00310821 	addu	at,at,s1
    3a40:	ae0b03ac 	sw	t3,940(s0)
    3a44:	8c6d0050 	lw	t5,80(v1)
    3a48:	ae0d03b0 	sw	t5,944(s0)
    3a4c:	8c6c0054 	lw	t4,84(v1)
    3a50:	ae0c03b4 	sw	t4,948(s0)
    3a54:	8c6d0058 	lw	t5,88(v1)
    3a58:	a60e01a2 	sh	t6,418(s0)
    3a5c:	a60f01a4 	sh	t7,420(s0)
    3a60:	ae0d03b8 	sw	t5,952(s0)
    3a64:	e4240afc 	swc1	$f4,2812(at)

00003a68 <L809009A8>:
    3a68:	261803a4 	addiu	t8,s0,932
    3a6c:	261903b0 	addiu	t9,s0,944
    3a70:	afb90024 	sw	t9,36(sp)
    3a74:	afb80028 	sw	t8,40(sp)
    3a78:	860801a4 	lh	t0,420(s0)
    3a7c:	24010032 	li	at,50
    3a80:	55010004 	bnel	t0,at,3a94 <L809009A8+0x2c>
    3a84:	860900b6 	lh	t1,182(s0)
    3a88:	0c000000 	jal	0 <func_808FCF40>
    3a8c:	240439d7 	li	a0,14807
    3a90:	860900b6 	lh	t1,182(s0)
    3a94:	3c014700 	lui	at,0x4700
    3a98:	44815000 	mtc1	at,$f10
    3a9c:	44893000 	mtc1	t1,$f6
    3aa0:	3c010000 	lui	at,0x0
    3aa4:	c4320000 	lwc1	$f18,0(at)
    3aa8:	46803220 	cvt.s.w	$f8,$f6
    3aac:	3c010000 	lui	at,0x0
    3ab0:	c4260000 	lwc1	$f6,0(at)
    3ab4:	00002825 	move	a1,zero
    3ab8:	460a4403 	div.s	$f16,$f8,$f10
    3abc:	46128102 	mul.s	$f4,$f16,$f18
    3ac0:	0c000000 	jal	0 <func_808FCF40>
    3ac4:	46062300 	add.s	$f12,$f4,$f6
    3ac8:	44800000 	mtc1	zero,$f0
    3acc:	3c01437a 	lui	at,0x437a
    3ad0:	44814000 	mtc1	at,$f8
    3ad4:	27a4005c 	addiu	a0,sp,92
    3ad8:	27a50050 	addiu	a1,sp,80
    3adc:	e7a0005c 	swc1	$f0,92(sp)
    3ae0:	e7a00060 	swc1	$f0,96(sp)
    3ae4:	0c000000 	jal	0 <func_808FCF40>
    3ae8:	e7a80064 	swc1	$f8,100(sp)
    3aec:	c60a0024 	lwc1	$f10,36(s0)
    3af0:	c7b00050 	lwc1	$f16,80(sp)
    3af4:	3c063e4c 	lui	a2,0x3e4c
    3af8:	34c6cccd 	ori	a2,a2,0xcccd
    3afc:	46105480 	add.s	$f18,$f10,$f16
    3b00:	8fa40028 	lw	a0,40(sp)
    3b04:	3c0742c8 	lui	a3,0x42c8
    3b08:	44059000 	mfc1	a1,$f18
    3b0c:	0c000000 	jal	0 <func_808FCF40>
    3b10:	00000000 	nop
    3b14:	3c063e4c 	lui	a2,0x3e4c
    3b18:	34c6cccd 	ori	a2,a2,0xcccd
    3b1c:	260403a8 	addiu	a0,s0,936
    3b20:	3c05448e 	lui	a1,0x448e
    3b24:	0c000000 	jal	0 <func_808FCF40>
    3b28:	3c0742c8 	lui	a3,0x42c8
    3b2c:	c604002c 	lwc1	$f4,44(s0)
    3b30:	c7a60058 	lwc1	$f6,88(sp)
    3b34:	3c063e4c 	lui	a2,0x3e4c
    3b38:	34c6cccd 	ori	a2,a2,0xcccd
    3b3c:	46062200 	add.s	$f8,$f4,$f6
    3b40:	260403ac 	addiu	a0,s0,940
    3b44:	3c0742c8 	lui	a3,0x42c8
    3b48:	44054000 	mfc1	a1,$f8
    3b4c:	0c000000 	jal	0 <func_808FCF40>
    3b50:	00000000 	nop
    3b54:	3c063e4c 	lui	a2,0x3e4c
    3b58:	34c6cccd 	ori	a2,a2,0xcccd
    3b5c:	8fa40024 	lw	a0,36(sp)
    3b60:	8e0501b8 	lw	a1,440(s0)
    3b64:	0c000000 	jal	0 <func_808FCF40>
    3b68:	3c0742c8 	lui	a3,0x42c8
    3b6c:	3c063e4c 	lui	a2,0x3e4c
    3b70:	34c6cccd 	ori	a2,a2,0xcccd
    3b74:	260403b4 	addiu	a0,s0,948
    3b78:	8e0501bc 	lw	a1,444(s0)
    3b7c:	0c000000 	jal	0 <func_808FCF40>
    3b80:	3c0742c8 	lui	a3,0x42c8
    3b84:	3c063e4c 	lui	a2,0x3e4c
    3b88:	34c6cccd 	ori	a2,a2,0xcccd
    3b8c:	260403b8 	addiu	a0,s0,952
    3b90:	8e0501c0 	lw	a1,448(s0)
    3b94:	0c000000 	jal	0 <func_808FCF40>
    3b98:	3c0742c8 	lui	a3,0x42c8
    3b9c:	860a01a4 	lh	t2,420(s0)
    3ba0:	240b0002 	li	t3,2
    3ba4:	240c005a 	li	t4,90
    3ba8:	554000d9 	bnezl	t2,3f10 <L80900E4C+0x4>
    3bac:	8605039e 	lh	a1,926(s0)
    3bb0:	a60b039c 	sh	t3,924(s0)
    3bb4:	100000d5 	b	3f0c <L80900E4C>
    3bb8:	a60c01a4 	sh	t4,420(s0)

00003bbc <L80900AFC>:
    3bbc:	3c020000 	lui	v0,0x0
    3bc0:	3c0141f0 	lui	at,0x41f0
    3bc4:	240d012c 	li	t5,300
    3bc8:	44810000 	mtc1	at,$f0
    3bcc:	24420000 	addiu	v0,v0,0
    3bd0:	a60d01a2 	sh	t5,418(s0)
    3bd4:	8c4e0000 	lw	t6,0(v0)
    3bd8:	3c014270 	lui	at,0x4270
    3bdc:	44811000 	mtc1	at,$f2
    3be0:	3c0142c8 	lui	at,0x42c8
    3be4:	44818000 	mtc1	at,$f16
    3be8:	c5ca0024 	lwc1	$f10,36(t6)
    3bec:	3c014120 	lui	at,0x4120
    3bf0:	26040324 	addiu	a0,s0,804
    3bf4:	46105481 	sub.s	$f18,$f10,$f16
    3bf8:	3c053f80 	lui	a1,0x3f80
    3bfc:	3c0640a0 	lui	a2,0x40a0
    3c00:	e61203a4 	swc1	$f18,932(s0)
    3c04:	8c4f0000 	lw	t7,0(v0)
    3c08:	c5e40028 	lwc1	$f4,40(t7)
    3c0c:	46002180 	add.s	$f6,$f4,$f0
    3c10:	e60603a8 	swc1	$f6,936(s0)
    3c14:	8c580000 	lw	t8,0(v0)
    3c18:	c708002c 	lwc1	$f8,44(t8)
    3c1c:	46004280 	add.s	$f10,$f8,$f0
    3c20:	46025401 	sub.s	$f16,$f10,$f2
    3c24:	44815000 	mtc1	at,$f10
    3c28:	e61003ac 	swc1	$f16,940(s0)
    3c2c:	8c590000 	lw	t9,0(v0)
    3c30:	c7320024 	lwc1	$f18,36(t9)
    3c34:	e61203b0 	swc1	$f18,944(s0)
    3c38:	8c480000 	lw	t0,0(v0)
    3c3c:	c5040028 	lwc1	$f4,40(t0)
    3c40:	46002180 	add.s	$f6,$f4,$f0
    3c44:	e60603b4 	swc1	$f6,948(s0)
    3c48:	8c490000 	lw	t1,0(v0)
    3c4c:	c528002c 	lwc1	$f8,44(t1)
    3c50:	460a4401 	sub.s	$f16,$f8,$f10
    3c54:	0c000000 	jal	0 <func_808FCF40>
    3c58:	e61003b8 	swc1	$f16,952(s0)
    3c5c:	3c010001 	lui	at,0x1
    3c60:	34210afc 	ori	at,at,0xafc
    3c64:	3c073ca0 	lui	a3,0x3ca0
    3c68:	34e7a0a1 	ori	a3,a3,0xa0a1
    3c6c:	02212021 	addu	a0,s1,at
    3c70:	3c053f80 	lui	a1,0x3f80
    3c74:	0c000000 	jal	0 <func_808FCF40>
    3c78:	3c063f80 	lui	a2,0x3f80
    3c7c:	860201a4 	lh	v0,420(s0)
    3c80:	24010050 	li	at,80
    3c84:	02202025 	move	a0,s1
    3c88:	14410004 	bne	v0,at,3c9c <L80900AFC+0xe0>
    3c8c:	240570d7 	li	a1,28887
    3c90:	0c000000 	jal	0 <func_808FCF40>
    3c94:	00003025 	move	a2,zero
    3c98:	860201a4 	lh	v0,420(s0)
    3c9c:	2841001e 	slti	at,v0,30
    3ca0:	5020009b 	beqzl	at,3f10 <L80900E4C+0x4>
    3ca4:	8605039e 	lh	a1,926(s0)
    3ca8:	0c000000 	jal	0 <func_808FCF40>
    3cac:	262420d8 	addiu	a0,s1,8408
    3cb0:	14400096 	bnez	v0,3f0c <L80900E4C>
    3cb4:	02202025 	move	a0,s1
    3cb8:	0c000000 	jal	0 <func_808FCF40>
    3cbc:	00002825 	move	a1,zero
    3cc0:	260303a4 	addiu	v1,s0,932
    3cc4:	8c6b0000 	lw	t3,0(v1)
    3cc8:	02202025 	move	a0,s1
    3ccc:	00003025 	move	a2,zero
    3cd0:	ac4b005c 	sw	t3,92(v0)
    3cd4:	8c6a0004 	lw	t2,4(v1)
    3cd8:	ac4a0060 	sw	t2,96(v0)
    3cdc:	8c6b0008 	lw	t3,8(v1)
    3ce0:	ac4b0064 	sw	t3,100(v0)
    3ce4:	8c6d0000 	lw	t5,0(v1)
    3ce8:	ac4d0074 	sw	t5,116(v0)
    3cec:	8c6c0004 	lw	t4,4(v1)
    3cf0:	ac4c0078 	sw	t4,120(v0)
    3cf4:	8c6d0008 	lw	t5,8(v1)
    3cf8:	ac4d007c 	sw	t5,124(v0)
    3cfc:	8e0f03b0 	lw	t7,944(s0)
    3d00:	ac4f0050 	sw	t7,80(v0)
    3d04:	8e0e03b4 	lw	t6,948(s0)
    3d08:	ac4e0054 	sw	t6,84(v0)
    3d0c:	8e0f03b8 	lw	t7,952(s0)
    3d10:	ac4f0058 	sw	t7,88(v0)
    3d14:	0c000000 	jal	0 <func_808FCF40>
    3d18:	8605039e 	lh	a1,926(s0)
    3d1c:	a600039e 	sh	zero,926(s0)
    3d20:	02202025 	move	a0,s1
    3d24:	0c000000 	jal	0 <func_808FCF40>
    3d28:	26251d64 	addiu	a1,s1,7524
    3d2c:	02202025 	move	a0,s1
    3d30:	02002825 	move	a1,s0
    3d34:	0c000000 	jal	0 <func_808FCF40>
    3d38:	24060007 	li	a2,7
    3d3c:	24180003 	li	t8,3
    3d40:	10000072 	b	3f0c <L80900E4C>
    3d44:	a618039c 	sh	t8,924(s0)

00003d48 <L80900C88>:
    3d48:	02202025 	move	a0,s1
    3d4c:	0c000000 	jal	0 <func_808FCF40>
    3d50:	26251d64 	addiu	a1,s1,7524
    3d54:	0c000000 	jal	0 <func_808FCF40>
    3d58:	02202025 	move	a0,s1
    3d5c:	a602039e 	sh	v0,926(s0)
    3d60:	02202025 	move	a0,s1
    3d64:	00002825 	move	a1,zero
    3d68:	0c000000 	jal	0 <func_808FCF40>
    3d6c:	24060001 	li	a2,1
    3d70:	02202025 	move	a0,s1
    3d74:	8605039e 	lh	a1,926(s0)
    3d78:	0c000000 	jal	0 <func_808FCF40>
    3d7c:	24060007 	li	a2,7
    3d80:	2419000b 	li	t9,11
    3d84:	24080001 	li	t0,1
    3d88:	a619039c 	sh	t9,924(s0)
    3d8c:	a2080334 	sb	t0,820(s0)
    3d90:	02202025 	move	a0,s1
    3d94:	02002825 	move	a1,s0
    3d98:	0c000000 	jal	0 <func_808FCF40>
    3d9c:	24060060 	li	a2,96
    3da0:	ae000398 	sw	zero,920(s0)

00003da4 <L80900CE4>:
    3da4:	3c020000 	lui	v0,0x0
    3da8:	3c0141c8 	lui	at,0x41c8
    3dac:	44810000 	mtc1	at,$f0
    3db0:	24420000 	addiu	v0,v0,0
    3db4:	8c490000 	lw	t1,0(v0)
    3db8:	3c014270 	lui	at,0x4270
    3dbc:	44811000 	mtc1	at,$f2
    3dc0:	3c014248 	lui	at,0x4248
    3dc4:	44812000 	mtc1	at,$f4
    3dc8:	c5320024 	lwc1	$f18,36(t1)
    3dcc:	3c014120 	lui	at,0x4120
    3dd0:	44814000 	mtc1	at,$f8
    3dd4:	46049180 	add.s	$f6,$f18,$f4
    3dd8:	8fa30048 	lw	v1,72(sp)
    3ddc:	3c0142c8 	lui	at,0x42c8
    3de0:	240b8000 	li	t3,-32768
    3de4:	46083280 	add.s	$f10,$f6,$f8
    3de8:	44813000 	mtc1	at,$f6
    3dec:	3c0142a0 	lui	at,0x42a0
    3df0:	02202025 	move	a0,s1
    3df4:	e46a0024 	swc1	$f10,36(v1)
    3df8:	8c4a0000 	lw	t2,0(v0)
    3dfc:	c4640024 	lwc1	$f4,36(v1)
    3e00:	44815000 	mtc1	at,$f10
    3e04:	c550002c 	lwc1	$f16,44(t2)
    3e08:	46062200 	add.s	$f8,$f4,$f6
    3e0c:	a46b00b6 	sh	t3,182(v1)
    3e10:	3c014220 	lui	at,0x4220
    3e14:	46008481 	sub.s	$f18,$f16,$f0
    3e18:	44813000 	mtc1	at,$f6
    3e1c:	3c0142dc 	lui	at,0x42dc
    3e20:	460a4401 	sub.s	$f16,$f8,$f10
    3e24:	e472002c 	swc1	$f18,44(v1)
    3e28:	8e0c0398 	lw	t4,920(s0)
    3e2c:	00002825 	move	a1,zero
    3e30:	e61003a4 	swc1	$f16,932(s0)
    3e34:	c4720028 	lwc1	$f18,40(v1)
    3e38:	44818000 	mtc1	at,$f16
    3e3c:	24010050 	li	at,80
    3e40:	46029100 	add.s	$f4,$f18,$f2
    3e44:	262d1d64 	addiu	t5,s1,7524
    3e48:	46062201 	sub.s	$f8,$f4,$f6
    3e4c:	e60803a8 	swc1	$f8,936(s0)
    3e50:	c46a002c 	lwc1	$f10,44(v1)
    3e54:	46105481 	sub.s	$f18,$f10,$f16
    3e58:	e61203ac 	swc1	$f18,940(s0)
    3e5c:	c4640024 	lwc1	$f4,36(v1)
    3e60:	e60403b0 	swc1	$f4,944(s0)
    3e64:	c4660028 	lwc1	$f6,40(v1)
    3e68:	46023200 	add.s	$f8,$f6,$f2
    3e6c:	46004281 	sub.s	$f10,$f8,$f0
    3e70:	e60a03b4 	swc1	$f10,948(s0)
    3e74:	c470002c 	lwc1	$f16,44(v1)
    3e78:	15810024 	bne	t4,at,3f0c <L80900E4C>
    3e7c:	e61003b8 	swc1	$f16,952(s0)
    3e80:	0c000000 	jal	0 <func_808FCF40>
    3e84:	afad0028 	sw	t5,40(sp)
    3e88:	260303a4 	addiu	v1,s0,932
    3e8c:	8c6f0000 	lw	t7,0(v1)
    3e90:	240a0003 	li	t2,3
    3e94:	02202025 	move	a0,s1
    3e98:	ac4f005c 	sw	t7,92(v0)
    3e9c:	8c6e0004 	lw	t6,4(v1)
    3ea0:	00003025 	move	a2,zero
    3ea4:	ac4e0060 	sw	t6,96(v0)
    3ea8:	8c6f0008 	lw	t7,8(v1)
    3eac:	ac4f0064 	sw	t7,100(v0)
    3eb0:	8c790000 	lw	t9,0(v1)
    3eb4:	ac590074 	sw	t9,116(v0)
    3eb8:	8c780004 	lw	t8,4(v1)
    3ebc:	ac580078 	sw	t8,120(v0)
    3ec0:	8c790008 	lw	t9,8(v1)
    3ec4:	ac59007c 	sw	t9,124(v0)
    3ec8:	8e0903b0 	lw	t1,944(s0)
    3ecc:	ac490050 	sw	t1,80(v0)
    3ed0:	8e0803b4 	lw	t0,948(s0)
    3ed4:	ac480054 	sw	t0,84(v0)
    3ed8:	8e0903b8 	lw	t1,952(s0)
    3edc:	ac490058 	sw	t1,88(v0)
    3ee0:	a60a039c 	sh	t2,924(s0)
    3ee4:	0c000000 	jal	0 <func_808FCF40>
    3ee8:	8605039e 	lh	a1,926(s0)
    3eec:	a600039e 	sh	zero,926(s0)
    3ef0:	8fa50028 	lw	a1,40(sp)
    3ef4:	0c000000 	jal	0 <func_808FCF40>
    3ef8:	02202025 	move	a0,s1
    3efc:	02202025 	move	a0,s1
    3f00:	02002825 	move	a1,s0
    3f04:	0c000000 	jal	0 <func_808FCF40>
    3f08:	24060007 	li	a2,7

00003f0c <L80900E4C>:
    3f0c:	8605039e 	lh	a1,926(s0)
    3f10:	02202025 	move	a0,s1
    3f14:	260603b0 	addiu	a2,s0,944
    3f18:	50a00004 	beqzl	a1,3f2c <L80900E4C+0x20>
    3f1c:	860201ac 	lh	v0,428(s0)
    3f20:	0c000000 	jal	0 <func_808FCF40>
    3f24:	260703a4 	addiu	a3,s0,932
    3f28:	860201ac 	lh	v0,428(s0)
    3f2c:	24010001 	li	at,1
    3f30:	8fa4002c 	lw	a0,44(sp)
    3f34:	10400008 	beqz	v0,3f58 <L80900E4C+0x4c>
    3f38:	00000000 	nop
    3f3c:	10410011 	beq	v0,at,3f84 <L80900E4C+0x78>
    3f40:	3c0c0001 	lui	t4,0x1
    3f44:	24010002 	li	at,2
    3f48:	10410041 	beq	v0,at,4050 <L80900E4C+0x144>
    3f4c:	26040324 	addiu	a0,s0,804
    3f50:	1000005b 	b	40c0 <L80900E4C+0x1b4>
    3f54:	26040068 	addiu	a0,s0,104
    3f58:	0c000000 	jal	0 <func_808FCF40>
    3f5c:	8e050194 	lw	a1,404(s0)
    3f60:	10400056 	beqz	v0,40bc <L80900E4C+0x1b0>
    3f64:	8fa4002c 	lw	a0,44(sp)
    3f68:	3c050603 	lui	a1,0x603
    3f6c:	24a54278 	addiu	a1,a1,17016
    3f70:	0c000000 	jal	0 <func_808FCF40>
    3f74:	24060000 	li	a2,0
    3f78:	240b0001 	li	t3,1
    3f7c:	1000004f 	b	40bc <L80900E4C+0x1b0>
    3f80:	a60b01ac 	sh	t3,428(s0)
    3f84:	01916021 	addu	t4,t4,s1
    3f88:	8d8c1de4 	lw	t4,7652(t4)
    3f8c:	02002025 	move	a0,s0
    3f90:	318d001f 	andi	t5,t4,0x1f
    3f94:	55a00004 	bnezl	t5,3fa8 <L80900E4C+0x9c>
    3f98:	860e01a2 	lh	t6,418(s0)
    3f9c:	0c000000 	jal	0 <func_808FCF40>
    3fa0:	240539af 	li	a1,14767
    3fa4:	860e01a2 	lh	t6,418(s0)
    3fa8:	8fa20048 	lw	v0,72(sp)
    3fac:	3c01c348 	lui	at,0xc348
    3fb0:	51c00005 	beqzl	t6,3fc8 <L80900E4C+0xbc>
    3fb4:	44817000 	mtc1	at,$f14
    3fb8:	920f0334 	lbu	t7,820(s0)
    3fbc:	51e00040 	beqzl	t7,40c0 <L80900E4C+0x1b4>
    3fc0:	26040068 	addiu	a0,s0,104
    3fc4:	44817000 	mtc1	at,$f14
    3fc8:	c4520024 	lwc1	$f18,36(v0)
    3fcc:	c444002c 	lwc1	$f4,44(v0)
    3fd0:	3c014444 	lui	at,0x4444
    3fd4:	46127081 	sub.s	$f2,$f14,$f18
    3fd8:	44815000 	mtc1	at,$f10
    3fdc:	3c110603 	lui	s1,0x603
    3fe0:	46047301 	sub.s	$f12,$f14,$f4
    3fe4:	46021182 	mul.s	$f6,$f2,$f2
    3fe8:	263134f8 	addiu	s1,s1,13560
    3fec:	02202825 	move	a1,s1
    3ff0:	460c6202 	mul.s	$f8,$f12,$f12
    3ff4:	8fa4002c 	lw	a0,44(sp)
    3ff8:	46083000 	add.s	$f0,$f6,$f8
    3ffc:	46000004 	sqrt.s	$f0,$f0
    4000:	460a003e 	c.le.s	$f0,$f10
    4004:	00000000 	nop
    4008:	4502002d 	bc1fl	40c0 <L80900E4C+0x1b4>
    400c:	26040068 	addiu	a0,s0,104
    4010:	0c000000 	jal	0 <func_808FCF40>
    4014:	24060000 	li	a2,0
    4018:	0c000000 	jal	0 <func_808FCF40>
    401c:	02202025 	move	a0,s1
    4020:	44828000 	mtc1	v0,$f16
    4024:	24180002 	li	t8,2
    4028:	24190028 	li	t9,40
    402c:	468084a0 	cvt.s.w	$f18,$f16
    4030:	a61801ac 	sh	t8,428(s0)
    4034:	a61901a2 	sh	t9,418(s0)
    4038:	02002025 	move	a0,s0
    403c:	2405398f 	li	a1,14735
    4040:	0c000000 	jal	0 <func_808FCF40>
    4044:	e6120194 	swc1	$f18,404(s0)
    4048:	1000001d 	b	40c0 <L80900E4C+0x1b4>
    404c:	26040068 	addiu	a0,s0,104
    4050:	3c010001 	lui	at,0x1
    4054:	34210afc 	ori	at,at,0xafc
    4058:	02214021 	addu	t0,s1,at
    405c:	afa80028 	sw	t0,40(sp)
    4060:	3c05437f 	lui	a1,0x437f
    4064:	3c063f80 	lui	a2,0x3f80
    4068:	0c000000 	jal	0 <func_808FCF40>
    406c:	3c074120 	lui	a3,0x4120
    4070:	3c063d20 	lui	a2,0x3d20
    4074:	34c6a0a1 	ori	a2,a2,0xa0a1
    4078:	8fa40028 	lw	a0,40(sp)
    407c:	0c000000 	jal	0 <func_808FCF40>
    4080:	3c053f80 	lui	a1,0x3f80
    4084:	8fa4002c 	lw	a0,44(sp)
    4088:	0c000000 	jal	0 <func_808FCF40>
    408c:	8e050194 	lw	a1,404(s0)
    4090:	1040000a 	beqz	v0,40bc <L80900E4C+0x1b0>
    4094:	02002025 	move	a0,s0
    4098:	0c000000 	jal	0 <func_808FCF40>
    409c:	02202825 	move	a1,s1
    40a0:	92090334 	lbu	t1,820(s0)
    40a4:	240a0019 	li	t2,25
    40a8:	240b0001 	li	t3,1
    40ac:	55200003 	bnezl	t1,40bc <L80900E4C+0x1b0>
    40b0:	a20b0336 	sb	t3,822(s0)
    40b4:	a20a00af 	sb	t2,175(s0)
    40b8:	a20b0336 	sb	t3,822(s0)
    40bc:	26040068 	addiu	a0,s0,104
    40c0:	3c053f00 	lui	a1,0x3f00
    40c4:	0c000000 	jal	0 <func_808FCF40>
    40c8:	3c063f80 	lui	a2,0x3f80
    40cc:	8fbf001c 	lw	ra,28(sp)
    40d0:	8fb00014 	lw	s0,20(sp)
    40d4:	8fb10018 	lw	s1,24(sp)
    40d8:	03e00008 	jr	ra
    40dc:	27bd0068 	addiu	sp,sp,104

000040e0 <func_80901020>:
    40e0:	27bdffe0 	addiu	sp,sp,-32
    40e4:	afb00018 	sw	s0,24(sp)
    40e8:	afa50024 	sw	a1,36(sp)
    40ec:	00808025 	move	s0,a0
    40f0:	afbf001c 	sw	ra,28(sp)
    40f4:	3c050603 	lui	a1,0x603
    40f8:	24a5a848 	addiu	a1,a1,-22456
    40fc:	2484014c 	addiu	a0,a0,332
    4100:	0c000000 	jal	0 <func_808FCF40>
    4104:	3c06c0a0 	lui	a2,0xc0a0
    4108:	3c040603 	lui	a0,0x603
    410c:	0c000000 	jal	0 <func_808FCF40>
    4110:	2484a848 	addiu	a0,a0,-22456
    4114:	44822000 	mtc1	v0,$f4
    4118:	3c0e0000 	lui	t6,0x0
    411c:	25ce0000 	addiu	t6,t6,0
    4120:	468021a0 	cvt.s.w	$f6,$f4
    4124:	ae0e0190 	sw	t6,400(s0)
    4128:	a60001ac 	sh	zero,428(s0)
    412c:	a600039c 	sh	zero,924(s0)
    4130:	02002025 	move	a0,s0
    4134:	2405399e 	li	a1,14750
    4138:	0c000000 	jal	0 <func_808FCF40>
    413c:	e6060194 	swc1	$f6,404(s0)
    4140:	240f0004 	li	t7,4
    4144:	a20f0314 	sb	t7,788(s0)
    4148:	8fbf001c 	lw	ra,28(sp)
    414c:	8fb00018 	lw	s0,24(sp)
    4150:	27bd0020 	addiu	sp,sp,32
    4154:	03e00008 	jr	ra
    4158:	00000000 	nop

0000415c <func_8090109C>:
    415c:	27bdff58 	addiu	sp,sp,-168
    4160:	f7bc0048 	sdc1	$f28,72(sp)
    4164:	3c01bf80 	lui	at,0xbf80
    4168:	4481e000 	mtc1	at,$f28
    416c:	f7ba0040 	sdc1	$f26,64(sp)
    4170:	3c0140a0 	lui	at,0x40a0
    4174:	4481d000 	mtc1	at,$f26
    4178:	f7b80038 	sdc1	$f24,56(sp)
    417c:	3c014120 	lui	at,0x4120
    4180:	4481c000 	mtc1	at,$f24
    4184:	afb70070 	sw	s7,112(sp)
    4188:	afb6006c 	sw	s6,108(sp)
    418c:	f7b60030 	sdc1	$f22,48(sp)
    4190:	f7b40028 	sdc1	$f20,40(sp)
    4194:	3c014248 	lui	at,0x4248
    4198:	afb50068 	sw	s5,104(sp)
    419c:	afb40064 	sw	s4,100(sp)
    41a0:	afb30060 	sw	s3,96(sp)
    41a4:	afb2005c 	sw	s2,92(sp)
    41a8:	afb10058 	sw	s1,88(sp)
    41ac:	afb00054 	sw	s0,84(sp)
    41b0:	3c160000 	lui	s6,0x0
    41b4:	3c170000 	lui	s7,0x0
    41b8:	4481a000 	mtc1	at,$f20
    41bc:	4480b000 	mtc1	zero,$f22
    41c0:	00808825 	move	s1,a0
    41c4:	00a09025 	move	s2,a1
    41c8:	afbf0074 	sw	ra,116(sp)
    41cc:	26f70000 	addiu	s7,s7,0
    41d0:	26d60000 	addiu	s6,s6,0
    41d4:	00008025 	move	s0,zero
    41d8:	27b30080 	addiu	s3,sp,128
    41dc:	27b40098 	addiu	s4,sp,152
    41e0:	27b5008c 	addiu	s5,sp,140
    41e4:	0c000000 	jal	0 <func_808FCF40>
    41e8:	4600a306 	mov.s	$f12,$f20
    41ec:	e7a00098 	swc1	$f0,152(sp)
    41f0:	0c000000 	jal	0 <func_808FCF40>
    41f4:	4600c306 	mov.s	$f12,$f24
    41f8:	461a0100 	add.s	$f4,$f0,$f26
    41fc:	4600a306 	mov.s	$f12,$f20
    4200:	0c000000 	jal	0 <func_808FCF40>
    4204:	e7a4009c 	swc1	$f4,156(sp)
    4208:	e7a000a0 	swc1	$f0,160(sp)
    420c:	e7b6008c 	swc1	$f22,140(sp)
    4210:	e7bc0090 	swc1	$f28,144(sp)
    4214:	e7b60094 	swc1	$f22,148(sp)
    4218:	c62601b8 	lwc1	$f6,440(s1)
    421c:	4600a306 	mov.s	$f12,$f20
    4220:	e7a60080 	swc1	$f6,128(sp)
    4224:	c62801bc 	lwc1	$f8,444(s1)
    4228:	e7a80084 	swc1	$f8,132(sp)
    422c:	c62a01c0 	lwc1	$f10,448(s1)
    4230:	0c000000 	jal	0 <func_808FCF40>
    4234:	e7aa0088 	swc1	$f10,136(sp)
    4238:	4600040d 	trunc.w.s	$f16,$f0
    423c:	24090011 	li	t1,17
    4240:	afa90020 	sw	t1,32(sp)
    4244:	02402025 	move	a0,s2
    4248:	440f8000 	mfc1	t7,$f16
    424c:	02602825 	move	a1,s3
    4250:	02803025 	move	a2,s4
    4254:	000fc400 	sll	t8,t7,0x10
    4258:	0018cc03 	sra	t9,t8,0x10
    425c:	27280032 	addiu	t0,t9,50
    4260:	afa80018 	sw	t0,24(sp)
    4264:	02a03825 	move	a3,s5
    4268:	afb60010 	sw	s6,16(sp)
    426c:	afb70014 	sw	s7,20(sp)
    4270:	0c000000 	jal	0 <func_808FCF40>
    4274:	afa0001c 	sw	zero,28(sp)
    4278:	26100001 	addiu	s0,s0,1
    427c:	321000ff 	andi	s0,s0,0xff
    4280:	2a010046 	slti	at,s0,70
    4284:	1420ffd7 	bnez	at,41e4 <func_8090109C+0x88>
    4288:	00000000 	nop
    428c:	8fbf0074 	lw	ra,116(sp)
    4290:	d7b40028 	ldc1	$f20,40(sp)
    4294:	d7b60030 	ldc1	$f22,48(sp)
    4298:	d7b80038 	ldc1	$f24,56(sp)
    429c:	d7ba0040 	ldc1	$f26,64(sp)
    42a0:	d7bc0048 	ldc1	$f28,72(sp)
    42a4:	8fb00054 	lw	s0,84(sp)
    42a8:	8fb10058 	lw	s1,88(sp)
    42ac:	8fb2005c 	lw	s2,92(sp)
    42b0:	8fb30060 	lw	s3,96(sp)
    42b4:	8fb40064 	lw	s4,100(sp)
    42b8:	8fb50068 	lw	s5,104(sp)
    42bc:	8fb6006c 	lw	s6,108(sp)
    42c0:	8fb70070 	lw	s7,112(sp)
    42c4:	03e00008 	jr	ra
    42c8:	27bd00a8 	addiu	sp,sp,168

000042cc <func_8090120C>:
    42cc:	27bdffb0 	addiu	sp,sp,-80
    42d0:	afbf0024 	sw	ra,36(sp)
    42d4:	afb00020 	sw	s0,32(sp)
    42d8:	afa50054 	sw	a1,84(sp)
    42dc:	8caf1c44 	lw	t7,7236(a1)
    42e0:	00808025 	move	s0,a0
    42e4:	2484014c 	addiu	a0,a0,332
    42e8:	afaf004c 	sw	t7,76(sp)
    42ec:	8c98024c 	lw	t8,588(a0)
    42f0:	27190001 	addiu	t9,t8,1
    42f4:	ac99024c 	sw	t9,588(a0)
    42f8:	0c000000 	jal	0 <func_808FCF40>
    42fc:	afa40028 	sw	a0,40(sp)
    4300:	8603039c 	lh	v1,924(s0)
    4304:	3c013f80 	lui	at,0x3f80
    4308:	44810000 	mtc1	at,$f0
    430c:	44802000 	mtc1	zero,$f4
    4310:	44803000 	mtc1	zero,$f6
    4314:	28610015 	slti	at,v1,21
    4318:	e60003c0 	swc1	$f0,960(s0)
    431c:	e60403bc 	swc1	$f4,956(s0)
    4320:	14200006 	bnez	at,433c <func_8090120C+0x70>
    4324:	e60603c4 	swc1	$f6,964(s0)
    4328:	2401004b 	li	at,75
    432c:	506102cc 	beql	v1,at,4e60 <L80901AB0+0x2f0>
    4330:	8e190398 	lw	t9,920(s0)
    4334:	10000407 	b	5354 <L80902290+0x4>
    4338:	8605039e 	lh	a1,926(s0)
    433c:	2c610015 	sltiu	at,v1,21
    4340:	10200403 	beqz	at,5350 <L80902290>
    4344:	00034080 	sll	t0,v1,0x2
    4348:	3c010000 	lui	at,0x0
    434c:	00280821 	addu	at,at,t0
    4350:	8c280000 	lw	t0,0(at)
    4354:	01000008 	jr	t0
    4358:	00000000 	nop

0000435c <L8090129C>:
    435c:	8fa40054 	lw	a0,84(sp)
    4360:	0c000000 	jal	0 <func_808FCF40>
    4364:	24851d64 	addiu	a1,a0,7524
    4368:	0c000000 	jal	0 <func_808FCF40>
    436c:	8fa40054 	lw	a0,84(sp)
    4370:	a602039e 	sh	v0,926(s0)
    4374:	8fa40054 	lw	a0,84(sp)
    4378:	00002825 	move	a1,zero
    437c:	0c000000 	jal	0 <func_808FCF40>
    4380:	24060001 	li	a2,1
    4384:	8fa40054 	lw	a0,84(sp)
    4388:	8605039e 	lh	a1,926(s0)
    438c:	0c000000 	jal	0 <func_808FCF40>
    4390:	24060007 	li	a2,7
    4394:	8fa40054 	lw	a0,84(sp)
    4398:	02002825 	move	a1,s0
    439c:	0c000000 	jal	0 <func_808FCF40>
    43a0:	24060008 	li	a2,8
    43a4:	24090001 	li	t1,1
    43a8:	a609039c 	sh	t1,924(s0)
    43ac:	ae000398 	sw	zero,920(s0)
    43b0:	3c0b0000 	lui	t3,0x0
    43b4:	8d6b0000 	lw	t3,0(t3)
    43b8:	240a0009 	li	t2,9
    43bc:	44804000 	mtc1	zero,$f8
    43c0:	a16a03c8 	sb	t2,968(t3)
    43c4:	a600031c 	sh	zero,796(s0)
    43c8:	44805000 	mtc1	zero,$f10
    43cc:	860c031c 	lh	t4,796(s0)
    43d0:	a60001a6 	sh	zero,422(s0)
    43d4:	a2000336 	sb	zero,822(s0)
    43d8:	e6080324 	swc1	$f8,804(s0)
    43dc:	e60a0068 	swc1	$f10,104(s0)
    43e0:	a60c031a 	sh	t4,794(s0)
    43e4:	8fad0054 	lw	t5,84(sp)
    43e8:	44808000 	mtc1	zero,$f16
    43ec:	3c010001 	lui	at,0x1
    43f0:	002d0821 	addu	at,at,t5
    43f4:	e4300afc 	swc1	$f16,2812(at)
    43f8:	3c013f80 	lui	at,0x3f80
    43fc:	44810000 	mtc1	at,$f0
    4400:	00000000 	nop

00004404 <L80901344>:
    4404:	8e030398 	lw	v1,920(s0)
    4408:	3c073dcc 	lui	a3,0x3dcc
    440c:	240e0014 	li	t6,20
    4410:	2c61005a 	sltiu	at,v1,90
    4414:	1020000d 	beqz	at,444c <L80901344+0x48>
    4418:	34e7cccd 	ori	a3,a3,0xcccd
    441c:	a20e0339 	sb	t6,825(s0)
    4420:	8fa40054 	lw	a0,84(sp)
    4424:	3c010001 	lui	at,0x1
    4428:	34210afc 	ori	at,at,0xafc
    442c:	44050000 	mfc1	a1,$f0
    4430:	44060000 	mfc1	a2,$f0
    4434:	0c000000 	jal	0 <func_808FCF40>
    4438:	00812021 	addu	a0,a0,at
    443c:	3c013f80 	lui	at,0x3f80
    4440:	44810000 	mtc1	at,$f0
    4444:	10000010 	b	4488 <L80901344+0x84>
    4448:	8e030398 	lw	v1,920(s0)
    444c:	2c61005a 	sltiu	at,v1,90
    4450:	1420000d 	bnez	at,4488 <L80901344+0x84>
    4454:	240f0015 	li	t7,21
    4458:	a20f0339 	sb	t7,825(s0)
    445c:	8fa40054 	lw	a0,84(sp)
    4460:	3c010001 	lui	at,0x1
    4464:	34210afc 	ori	at,at,0xafc
    4468:	44050000 	mfc1	a1,$f0
    446c:	3c063da3 	lui	a2,0x3da3
    4470:	34c6d70a 	ori	a2,a2,0xd70a
    4474:	0c000000 	jal	0 <func_808FCF40>
    4478:	00812021 	addu	a0,a0,at
    447c:	3c013f80 	lui	at,0x3f80
    4480:	44810000 	mtc1	at,$f0
    4484:	8e030398 	lw	v1,920(s0)
    4488:	24010032 	li	at,50
    448c:	54610007 	bnel	v1,at,44ac <L80901344+0xa8>
    4490:	2c61005b 	sltiu	at,v1,91
    4494:	0c000000 	jal	0 <func_808FCF40>
    4498:	240439d7 	li	a0,14807
    449c:	3c013f80 	lui	at,0x3f80
    44a0:	44810000 	mtc1	at,$f0
    44a4:	8e030398 	lw	v1,920(s0)
    44a8:	2c61005b 	sltiu	at,v1,91
    44ac:	1420000c 	bnez	at,44e0 <L80901344+0xdc>
    44b0:	26040380 	addiu	a0,s0,896
    44b4:	44060000 	mfc1	a2,$f0
    44b8:	3c073c4c 	lui	a3,0x3c4c
    44bc:	34e7cccd 	ori	a3,a3,0xcccd
    44c0:	0c000000 	jal	0 <func_808FCF40>
    44c4:	3c053e80 	lui	a1,0x3e80
    44c8:	3c014348 	lui	at,0x4348
    44cc:	44819000 	mtc1	at,$f18
    44d0:	2404209d 	li	a0,8349
    44d4:	0c000000 	jal	0 <func_808FCF40>
    44d8:	e612037c 	swc1	$f18,892(s0)
    44dc:	8e030398 	lw	v1,920(s0)
    44e0:	2c61006e 	sltiu	at,v1,110
    44e4:	14200012 	bnez	at,4530 <L80901344+0x12c>
    44e8:	2401006e 	li	at,110
    44ec:	14610006 	bne	v1,at,4508 <L80901344+0x104>
    44f0:	02002025 	move	a0,s0
    44f4:	0c000000 	jal	0 <func_808FCF40>
    44f8:	2405390b 	li	a1,14603
    44fc:	02002025 	move	a0,s0
    4500:	0c000000 	jal	0 <func_808FCF40>
    4504:	2405399b 	li	a1,14747
    4508:	3c063e4c 	lui	a2,0x3e4c
    450c:	34c6cccd 	ori	a2,a2,0xcccd
    4510:	2604030c 	addiu	a0,s0,780
    4514:	3c054120 	lui	a1,0x4120
    4518:	0c000000 	jal	0 <func_808FCF40>
    451c:	3c0740a0 	lui	a3,0x40a0
    4520:	3c014040 	lui	at,0x4040
    4524:	44812000 	mtc1	at,$f4
    4528:	8e030398 	lw	v1,920(s0)
    452c:	e6040168 	swc1	$f4,360(s0)
    4530:	24010078 	li	at,120
    4534:	14610004 	bne	v1,at,4548 <L80901344+0x144>
    4538:	8fa40054 	lw	a0,84(sp)
    453c:	02002825 	move	a1,s0
    4540:	0c000000 	jal	0 <func_808FCF40>
    4544:	24060063 	li	a2,99
    4548:	8fa3004c 	lw	v1,76(sp)
    454c:	44803000 	mtc1	zero,$f6
    4550:	44804000 	mtc1	zero,$f8
    4554:	3c014348 	lui	at,0x4348
    4558:	44815000 	mtc1	at,$f10
    455c:	24184000 	li	t8,16384
    4560:	3c0141f0 	lui	at,0x41f0
    4564:	44818000 	mtc1	at,$f16
    4568:	a6180032 	sh	t8,50(s0)
    456c:	e606002c 	swc1	$f6,44(s0)
    4570:	e6080024 	swc1	$f8,36(s0)
    4574:	2419c000 	li	t9,-16384
    4578:	3c0143aa 	lui	at,0x43aa
    457c:	3c080000 	lui	t0,0x0
    4580:	a47900b6 	sh	t9,182(v1)
    4584:	e46a0024 	swc1	$f10,36(v1)
    4588:	e470002c 	swc1	$f16,44(v1)
    458c:	8d080000 	lw	t0,0(t0)
    4590:	44819000 	mtc1	at,$f18
    4594:	3c01c37a 	lui	at,0xc37a
    4598:	3c090000 	lui	t1,0x0
    459c:	e5120024 	swc1	$f18,36(t0)
    45a0:	8d290000 	lw	t1,0(t1)
    45a4:	44812000 	mtc1	at,$f4
    45a8:	3c0b0000 	lui	t3,0x0
    45ac:	240ae000 	li	t2,-8192
    45b0:	e524002c 	swc1	$f4,44(t1)
    45b4:	8d6b0000 	lw	t3,0(t3)
    45b8:	3c020000 	lui	v0,0x0
    45bc:	3c01437a 	lui	at,0x437a
    45c0:	a56a00b6 	sh	t2,182(t3)
    45c4:	8c420000 	lw	v0,0(v0)
    45c8:	44813000 	mtc1	at,$f6
    45cc:	3c010000 	lui	at,0x0
    45d0:	844c00b6 	lh	t4,182(v0)
    45d4:	44805000 	mtc1	zero,$f10
    45d8:	240e0002 	li	t6,2
    45dc:	a44c0032 	sh	t4,50(v0)
    45e0:	e60603a4 	swc1	$f6,932(s0)
    45e4:	c4280000 	lwc1	$f8,0(at)
    45e8:	8e0d0398 	lw	t5,920(s0)
    45ec:	c61001b8 	lwc1	$f16,440(s0)
    45f0:	c61201bc 	lwc1	$f18,444(s0)
    45f4:	c60401c0 	lwc1	$f4,448(s0)
    45f8:	2da10088 	sltiu	at,t5,136
    45fc:	e60a03ac 	swc1	$f10,940(s0)
    4600:	e60803a8 	swc1	$f8,936(s0)
    4604:	e61003b0 	swc1	$f16,944(s0)
    4608:	e61203b4 	swc1	$f18,948(s0)
    460c:	14200350 	bnez	at,5350 <L80902290>
    4610:	e60403b8 	swc1	$f4,952(s0)
    4614:	a60e039c 	sh	t6,924(s0)
    4618:	1000034d 	b	5350 <L80902290>
    461c:	ae000398 	sw	zero,920(s0)

00004620 <L80901560>:
    4620:	240f0016 	li	t7,22
    4624:	a20f0339 	sb	t7,825(s0)
    4628:	8fa40054 	lw	a0,84(sp)
    462c:	3c010001 	lui	at,0x1
    4630:	34210afc 	ori	at,at,0xafc
    4634:	44050000 	mfc1	a1,$f0
    4638:	44060000 	mfc1	a2,$f0
    463c:	3c073dcc 	lui	a3,0x3dcc
    4640:	34e7cccd 	ori	a3,a3,0xcccd
    4644:	0c000000 	jal	0 <func_808FCF40>
    4648:	00812021 	addu	a0,a0,at
    464c:	0c000000 	jal	0 <func_808FCF40>
    4650:	2404209d 	li	a0,8349
    4654:	3c01437a 	lui	at,0x437a
    4658:	44813000 	mtc1	at,$f6
    465c:	3c010000 	lui	at,0x0
    4660:	44805000 	mtc1	zero,$f10
    4664:	e60603a4 	swc1	$f6,932(s0)
    4668:	c4280000 	lwc1	$f8,0(at)
    466c:	3c180000 	lui	t8,0x0
    4670:	e60a03ac 	swc1	$f10,940(s0)
    4674:	e60803a8 	swc1	$f8,936(s0)
    4678:	8f180000 	lw	t8,0(t8)
    467c:	3c063e4c 	lui	a2,0x3e4c
    4680:	34c6cccd 	ori	a2,a2,0xcccd
    4684:	260403b0 	addiu	a0,s0,944
    4688:	3c0741a0 	lui	a3,0x41a0
    468c:	0c000000 	jal	0 <func_808FCF40>
    4690:	8f050024 	lw	a1,36(t8)
    4694:	3c190000 	lui	t9,0x0
    4698:	8f390000 	lw	t9,0(t9)
    469c:	3c014248 	lui	at,0x4248
    46a0:	44810000 	mtc1	at,$f0
    46a4:	c7300028 	lwc1	$f16,40(t9)
    46a8:	3c063e4c 	lui	a2,0x3e4c
    46ac:	34c6cccd 	ori	a2,a2,0xcccd
    46b0:	46008480 	add.s	$f18,$f16,$f0
    46b4:	260403b4 	addiu	a0,s0,948
    46b8:	3c074120 	lui	a3,0x4120
    46bc:	44059000 	mfc1	a1,$f18
    46c0:	0c000000 	jal	0 <func_808FCF40>
    46c4:	00000000 	nop
    46c8:	3c080000 	lui	t0,0x0
    46cc:	8d080000 	lw	t0,0(t0)
    46d0:	3c063e4c 	lui	a2,0x3e4c
    46d4:	34c6cccd 	ori	a2,a2,0xcccd
    46d8:	260403b8 	addiu	a0,s0,952
    46dc:	3c0741a0 	lui	a3,0x41a0
    46e0:	0c000000 	jal	0 <func_808FCF40>
    46e4:	8d05002c 	lw	a1,44(t0)
    46e8:	8e090398 	lw	t1,920(s0)
    46ec:	24010032 	li	at,50
    46f0:	240a0003 	li	t2,3
    46f4:	55210317 	bnel	t1,at,5354 <L80902290+0x4>
    46f8:	8605039e 	lh	a1,926(s0)
    46fc:	a60a039c 	sh	t2,924(s0)
    4700:	10000313 	b	5350 <L80902290>
    4704:	ae000398 	sw	zero,920(s0)

00004708 <L80901648>:
    4708:	240b0016 	li	t3,22
    470c:	a20b0339 	sb	t3,825(s0)
    4710:	0c000000 	jal	0 <func_808FCF40>
    4714:	2404209d 	li	a0,8349
    4718:	3c014220 	lui	at,0x4220
    471c:	44811000 	mtc1	at,$f2
    4720:	3c0143a5 	lui	at,0x43a5
    4724:	44812000 	mtc1	at,$f4
    4728:	3c01448c 	lui	at,0x448c
    472c:	44813000 	mtc1	at,$f6
    4730:	3c01c316 	lui	at,0xc316
    4734:	44814000 	mtc1	at,$f8
    4738:	3c0c0000 	lui	t4,0x0
    473c:	e60403a4 	swc1	$f4,932(s0)
    4740:	e60603a8 	swc1	$f6,936(s0)
    4744:	e60803ac 	swc1	$f8,940(s0)
    4748:	8d8c0000 	lw	t4,0(t4)
    474c:	3c0d0000 	lui	t5,0x0
    4750:	3c0e0000 	lui	t6,0x0
    4754:	c58a0024 	lwc1	$f10,36(t4)
    4758:	8e030398 	lw	v1,920(s0)
    475c:	2401000a 	li	at,10
    4760:	e60a03b0 	swc1	$f10,944(s0)
    4764:	8dad0000 	lw	t5,0(t5)
    4768:	240570d8 	li	a1,28888
    476c:	00003025 	move	a2,zero
    4770:	c5b00028 	lwc1	$f16,40(t5)
    4774:	46028480 	add.s	$f18,$f16,$f2
    4778:	e61203b4 	swc1	$f18,948(s0)
    477c:	8dce0000 	lw	t6,0(t6)
    4780:	c5c4002c 	lwc1	$f4,44(t6)
    4784:	14610004 	bne	v1,at,4798 <L80901648+0x90>
    4788:	e60403b8 	swc1	$f4,952(s0)
    478c:	0c000000 	jal	0 <func_808FCF40>
    4790:	8fa40054 	lw	a0,84(sp)
    4794:	8e030398 	lw	v1,920(s0)
    4798:	2c610051 	sltiu	at,v1,81
    479c:	142002ec 	bnez	at,5350 <L80902290>
    47a0:	8fa40054 	lw	a0,84(sp)
    47a4:	0c000000 	jal	0 <func_808FCF40>
    47a8:	248420d8 	addiu	a0,a0,8408
    47ac:	144002e8 	bnez	v0,5350 <L80902290>
    47b0:	240f0004 	li	t7,4
    47b4:	a60f039c 	sh	t7,924(s0)
    47b8:	100002e5 	b	5350 <L80902290>
    47bc:	ae000398 	sw	zero,920(s0)

000047c0 <L80901700>:
    47c0:	8e180398 	lw	t8,920(s0)
    47c4:	2604037c 	addiu	a0,s0,892
    47c8:	240b0016 	li	t3,22
    47cc:	2f01000b 	sltiu	at,t8,11
    47d0:	5420001a 	bnezl	at,483c <L80901700+0x7c>
    47d4:	a20b0339 	sb	t3,825(s0)
    47d8:	44050000 	mfc1	a1,$f0
    47dc:	0c000000 	jal	0 <func_808FCF40>
    47e0:	3c064120 	lui	a2,0x4120
    47e4:	8e190398 	lw	t9,920(s0)
    47e8:	2401001e 	li	at,30
    47ec:	240a0017 	li	t2,23
    47f0:	17210005 	bne	t9,at,4808 <L80901700+0x48>
    47f4:	3c053f80 	lui	a1,0x3f80
    47f8:	3c090000 	lui	t1,0x0
    47fc:	8d290000 	lw	t1,0(t1)
    4800:	2408000a 	li	t0,10
    4804:	a12803c8 	sb	t0,968(t1)
    4808:	a20a0339 	sb	t2,825(s0)
    480c:	8fa40054 	lw	a0,84(sp)
    4810:	3c010001 	lui	at,0x1
    4814:	34210afc 	ori	at,at,0xafc
    4818:	3c063d4c 	lui	a2,0x3d4c
    481c:	34c6cccd 	ori	a2,a2,0xcccd
    4820:	0c000000 	jal	0 <func_808FCF40>
    4824:	00812021 	addu	a0,a0,at
    4828:	3c013f80 	lui	at,0x3f80
    482c:	44810000 	mtc1	at,$f0
    4830:	10000003 	b	4840 <L80901700+0x80>
    4834:	8e0c0398 	lw	t4,920(s0)
    4838:	a20b0339 	sb	t3,825(s0)
    483c:	8e0c0398 	lw	t4,920(s0)
    4840:	24010064 	li	at,100
    4844:	240d0005 	li	t5,5
    4848:	158102c1 	bne	t4,at,5350 <L80902290>
    484c:	240e0028 	li	t6,40
    4850:	a60d039c 	sh	t5,924(s0)
    4854:	ae0e0398 	sw	t6,920(s0)
    4858:	e6000168 	swc1	$f0,360(s0)
    485c:	8fa40054 	lw	a0,84(sp)
    4860:	02002825 	move	a1,s0
    4864:	0c000000 	jal	0 <func_808FCF40>
    4868:	24060064 	li	a2,100
    486c:	100002b9 	b	5354 <L80902290+0x4>
    4870:	8605039e 	lh	a1,926(s0)

00004874 <L809017B4>:
    4874:	8e030398 	lw	v1,920(s0)
    4878:	240f0017 	li	t7,23
    487c:	a20f0339 	sb	t7,825(s0)
    4880:	2c61003c 	sltiu	at,v1,60
    4884:	14200012 	bnez	at,48d0 <L809017B4+0x5c>
    4888:	2604038c 	addiu	a0,s0,908
    488c:	2c61005b 	sltiu	at,v1,91
    4890:	1020000f 	beqz	at,48d0 <L809017B4+0x5c>
    4894:	2401003e 	li	at,62
    4898:	54610007 	bnel	v1,at,48b8 <L809017B4+0x44>
    489c:	44060000 	mfc1	a2,$f0
    48a0:	0c000000 	jal	0 <func_808FCF40>
    48a4:	2404286f 	li	a0,10351
    48a8:	3c013f80 	lui	at,0x3f80
    48ac:	44810000 	mtc1	at,$f0
    48b0:	00000000 	nop
    48b4:	44060000 	mfc1	a2,$f0
    48b8:	2604038c 	addiu	a0,s0,908
    48bc:	3c054348 	lui	a1,0x4348
    48c0:	0c000000 	jal	0 <func_808FCF40>
    48c4:	3c074100 	lui	a3,0x4100
    48c8:	10000005 	b	48e0 <L809017B4+0x6c>
    48cc:	8e030398 	lw	v1,920(s0)
    48d0:	44050000 	mfc1	a1,$f0
    48d4:	0c000000 	jal	0 <func_808FCF40>
    48d8:	3c064100 	lui	a2,0x4100
    48dc:	8e030398 	lw	v1,920(s0)
    48e0:	24010046 	li	at,70
    48e4:	8fa40054 	lw	a0,84(sp)
    48e8:	14610004 	bne	v1,at,48fc <L809017B4+0x88>
    48ec:	02002825 	move	a1,s0
    48f0:	0c000000 	jal	0 <func_808FCF40>
    48f4:	24060065 	li	a2,101
    48f8:	8e030398 	lw	v1,920(s0)
    48fc:	24010096 	li	at,150
    4900:	14610004 	bne	v1,at,4914 <L809017B4+0xa0>
    4904:	8fa40054 	lw	a0,84(sp)
    4908:	02002825 	move	a1,s0
    490c:	0c000000 	jal	0 <func_808FCF40>
    4910:	24060066 	li	a2,102
    4914:	3c014248 	lui	at,0x4248
    4918:	44810000 	mtc1	at,$f0
    491c:	3c014220 	lui	at,0x4220
    4920:	44811000 	mtc1	at,$f2
    4924:	3c01437a 	lui	at,0x437a
    4928:	44816000 	mtc1	at,$f12
    492c:	3c014120 	lui	at,0x4120
    4930:	44813000 	mtc1	at,$f6
    4934:	8fa2004c 	lw	v0,76(sp)
    4938:	3c0141f0 	lui	at,0x41f0
    493c:	46006281 	sub.s	$f10,$f12,$f0
    4940:	44814000 	mtc1	at,$f8
    4944:	e606030c 	swc1	$f6,780(s0)
    4948:	e44c0024 	swc1	$f12,36(v0)
    494c:	e448002c 	swc1	$f8,44(v0)
    4950:	e60a03a4 	swc1	$f10,932(s0)
    4954:	c4500028 	lwc1	$f16,40(v0)
    4958:	8e180398 	lw	t8,920(s0)
    495c:	240100a6 	li	at,166
    4960:	46008480 	add.s	$f18,$f16,$f0
    4964:	00002825 	move	a1,zero
    4968:	e61203a8 	swc1	$f18,936(s0)
    496c:	c444002c 	lwc1	$f4,44(v0)
    4970:	46022180 	add.s	$f6,$f4,$f2
    4974:	e60603ac 	swc1	$f6,940(s0)
    4978:	c4480024 	lwc1	$f8,36(v0)
    497c:	e60803b0 	swc1	$f8,944(s0)
    4980:	c44a0028 	lwc1	$f10,40(v0)
    4984:	46025400 	add.s	$f16,$f10,$f2
    4988:	e61003b4 	swc1	$f16,948(s0)
    498c:	c452002c 	lwc1	$f18,44(v0)
    4990:	1701026f 	bne	t8,at,5350 <L80902290>
    4994:	e61203b8 	swc1	$f18,952(s0)
    4998:	0c000000 	jal	0 <func_808FCF40>
    499c:	8fa40054 	lw	a0,84(sp)
    49a0:	260303a4 	addiu	v1,s0,932
    49a4:	8c680000 	lw	t0,0(v1)
    49a8:	00003025 	move	a2,zero
    49ac:	ac48005c 	sw	t0,92(v0)
    49b0:	8c790004 	lw	t9,4(v1)
    49b4:	ac590060 	sw	t9,96(v0)
    49b8:	8c680008 	lw	t0,8(v1)
    49bc:	ac480064 	sw	t0,100(v0)
    49c0:	8c6a0000 	lw	t2,0(v1)
    49c4:	ac4a0074 	sw	t2,116(v0)
    49c8:	8c690004 	lw	t1,4(v1)
    49cc:	ac490078 	sw	t1,120(v0)
    49d0:	8c6a0008 	lw	t2,8(v1)
    49d4:	ac4a007c 	sw	t2,124(v0)
    49d8:	8e0c03b0 	lw	t4,944(s0)
    49dc:	ac4c0050 	sw	t4,80(v0)
    49e0:	8e0b03b4 	lw	t3,948(s0)
    49e4:	ac4b0054 	sw	t3,84(v0)
    49e8:	8e0c03b8 	lw	t4,952(s0)
    49ec:	ac4c0058 	sw	t4,88(v0)
    49f0:	8605039e 	lh	a1,926(s0)
    49f4:	0c000000 	jal	0 <func_808FCF40>
    49f8:	8fa40054 	lw	a0,84(sp)
    49fc:	a600039e 	sh	zero,926(s0)
    4a00:	8fa40054 	lw	a0,84(sp)
    4a04:	0c000000 	jal	0 <func_808FCF40>
    4a08:	24851d64 	addiu	a1,a0,7524
    4a0c:	8fa40054 	lw	a0,84(sp)
    4a10:	02002825 	move	a1,s0
    4a14:	0c000000 	jal	0 <func_808FCF40>
    4a18:	24060007 	li	a2,7
    4a1c:	240e0006 	li	t6,6
    4a20:	1000024b 	b	5350 <L80902290>
    4a24:	a60e039c 	sh	t6,924(s0)

00004a28 <L80901968>:
    4a28:	8fa2004c 	lw	v0,76(sp)
    4a2c:	240f0017 	li	t7,23
    4a30:	a20f0339 	sb	t7,825(s0)
    4a34:	c60401b8 	lwc1	$f4,440(s0)
    4a38:	c60801c0 	lwc1	$f8,448(s0)
    4a3c:	c4460024 	lwc1	$f6,36(v0)
    4a40:	c44a002c 	lwc1	$f10,44(v0)
    4a44:	46062381 	sub.s	$f14,$f4,$f6
    4a48:	460a4301 	sub.s	$f12,$f8,$f10
    4a4c:	e7ae0048 	swc1	$f14,72(sp)
    4a50:	0c000000 	jal	0 <func_808FCF40>
    4a54:	e7ac0044 	swc1	$f12,68(sp)
    4a58:	8fa6004c 	lw	a2,76(sp)
    4a5c:	c7ac0044 	lwc1	$f12,68(sp)
    4a60:	c7ae0048 	lwc1	$f14,72(sp)
    4a64:	84d800b6 	lh	t8,182(a2)
    4a68:	00582023 	subu	a0,v0,t8
    4a6c:	00042400 	sll	a0,a0,0x10
    4a70:	00042403 	sra	a0,a0,0x10
    4a74:	04800003 	bltz	a0,4a84 <L80901968+0x5c>
    4a78:	00041823 	negu	v1,a0
    4a7c:	10000001 	b	4a84 <L80901968+0x5c>
    4a80:	00801825 	move	v1,a0
    4a84:	28612000 	slti	at,v1,8192
    4a88:	50200232 	beqzl	at,5354 <L80902290+0x4>
    4a8c:	8605039e 	lh	a1,926(s0)
    4a90:	460e7402 	mul.s	$f16,$f14,$f14
    4a94:	3c01428c 	lui	at,0x428c
    4a98:	44812000 	mtc1	at,$f4
    4a9c:	460c6482 	mul.s	$f18,$f12,$f12
    4aa0:	46128000 	add.s	$f0,$f16,$f18
    4aa4:	46000004 	sqrt.s	$f0,$f0
    4aa8:	4604003c 	c.lt.s	$f0,$f4
    4aac:	00000000 	nop
    4ab0:	45020228 	bc1fl	5354 <L80902290+0x4>
    4ab4:	8605039e 	lh	a1,926(s0)
    4ab8:	80d90843 	lb	t9,2115(a2)
    4abc:	53200225 	beqzl	t9,5354 <L80902290+0x4>
    4ac0:	8605039e 	lh	a1,926(s0)
    4ac4:	80c80151 	lb	t0,337(a2)
    4ac8:	24010003 	li	at,3
    4acc:	8fa40054 	lw	a0,84(sp)
    4ad0:	55010220 	bnel	t0,at,5354 <L80902290+0x4>
    4ad4:	8605039e 	lh	a1,926(s0)
    4ad8:	0c000000 	jal	0 <func_808FCF40>
    4adc:	24851d64 	addiu	a1,a0,7524
    4ae0:	0c000000 	jal	0 <func_808FCF40>
    4ae4:	8fa40054 	lw	a0,84(sp)
    4ae8:	a602039e 	sh	v0,926(s0)
    4aec:	8fa40054 	lw	a0,84(sp)
    4af0:	00002825 	move	a1,zero
    4af4:	0c000000 	jal	0 <func_808FCF40>
    4af8:	24060001 	li	a2,1
    4afc:	8fa40054 	lw	a0,84(sp)
    4b00:	8605039e 	lh	a1,926(s0)
    4b04:	0c000000 	jal	0 <func_808FCF40>
    4b08:	24060007 	li	a2,7
    4b0c:	24090007 	li	t1,7
    4b10:	a609039c 	sh	t1,924(s0)
    4b14:	ae000398 	sw	zero,920(s0)
    4b18:	3c050600 	lui	a1,0x600
    4b1c:	24a53b1c 	addiu	a1,a1,15132
    4b20:	8fa40028 	lw	a0,40(sp)
    4b24:	0c000000 	jal	0 <func_808FCF40>
    4b28:	24060000 	li	a2,0
    4b2c:	3c040600 	lui	a0,0x600
    4b30:	0c000000 	jal	0 <func_808FCF40>
    4b34:	24843b1c 	addiu	a0,a0,15132
    4b38:	44823000 	mtc1	v0,$f6
    4b3c:	3c190001 	lui	t9,0x1
    4b40:	02002825 	move	a1,s0
    4b44:	46803220 	cvt.s.w	$f8,$f6
    4b48:	24060061 	li	a2,97
    4b4c:	e6080194 	swc1	$f8,404(s0)
    4b50:	8fa40054 	lw	a0,84(sp)
    4b54:	0324c821 	addu	t9,t9,a0
    4b58:	8f391d50 	lw	t9,7504(t9)
    4b5c:	0320f809 	jalr	t9
    4b60:	00000000 	nop
    4b64:	3c013f80 	lui	at,0x3f80
    4b68:	44810000 	mtc1	at,$f0
    4b6c:	00000000 	nop

00004b70 <L80901AB0>:
    4b70:	240b0017 	li	t3,23
    4b74:	a20b0339 	sb	t3,825(s0)
    4b78:	8fa40054 	lw	a0,84(sp)
    4b7c:	3c010001 	lui	at,0x1
    4b80:	34210afc 	ori	at,at,0xafc
    4b84:	44050000 	mfc1	a1,$f0
    4b88:	3c063e4c 	lui	a2,0x3e4c
    4b8c:	34c6cccd 	ori	a2,a2,0xcccd
    4b90:	0c000000 	jal	0 <func_808FCF40>
    4b94:	00812021 	addu	a0,a0,at
    4b98:	3c01437a 	lui	at,0x437a
    4b9c:	44816000 	mtc1	at,$f12
    4ba0:	8fa6004c 	lw	a2,76(sp)
    4ba4:	3c0141f0 	lui	at,0x41f0
    4ba8:	44815000 	mtc1	at,$f10
    4bac:	240cc000 	li	t4,-16384
    4bb0:	e4cc0024 	swc1	$f12,36(a2)
    4bb4:	a4cc00b6 	sh	t4,182(a2)
    4bb8:	e4ca002c 	swc1	$f10,44(a2)
    4bbc:	8e030398 	lw	v1,920(s0)
    4bc0:	24010014 	li	at,20
    4bc4:	10610007 	beq	v1,at,4be4 <L80901AB0+0x74>
    4bc8:	2401001e 	li	at,30
    4bcc:	10610005 	beq	v1,at,4be4 <L80901AB0+0x74>
    4bd0:	24010041 	li	at,65
    4bd4:	10610003 	beq	v1,at,4be4 <L80901AB0+0x74>
    4bd8:	24010028 	li	at,40
    4bdc:	54610008 	bnel	v1,at,4c00 <L80901AB0+0x90>
    4be0:	24010016 	li	at,22
    4be4:	0c000000 	jal	0 <func_808FCF40>
    4be8:	24046800 	li	a0,26624
    4bec:	0c000000 	jal	0 <func_808FCF40>
    4bf0:	24041818 	li	a0,6168
    4bf4:	8e030398 	lw	v1,920(s0)
    4bf8:	8fa6004c 	lw	a2,76(sp)
    4bfc:	24010016 	li	at,22
    4c00:	10610007 	beq	v1,at,4c20 <L80901AB0+0xb0>
    4c04:	24010023 	li	at,35
    4c08:	10610005 	beq	v1,at,4c20 <L80901AB0+0xb0>
    4c0c:	24010048 	li	at,72
    4c10:	10610003 	beq	v1,at,4c20 <L80901AB0+0xb0>
    4c14:	2401002d 	li	at,45
    4c18:	5461000e 	bnel	v1,at,4c54 <L80901AB0+0xe4>
    4c1c:	24010016 	li	at,22
    4c20:	0c000000 	jal	0 <func_808FCF40>
    4c24:	2404399b 	li	a0,14747
    4c28:	0c000000 	jal	0 <func_808FCF40>
    4c2c:	24041806 	li	a0,6150
    4c30:	3c013f80 	lui	at,0x3f80
    4c34:	44818000 	mtc1	at,$f16
    4c38:	8fad0054 	lw	t5,84(sp)
    4c3c:	3c010001 	lui	at,0x1
    4c40:	002d0821 	addu	at,at,t5
    4c44:	e4300afc 	swc1	$f16,2812(at)
    4c48:	8fa6004c 	lw	a2,76(sp)
    4c4c:	8e030398 	lw	v1,920(s0)
    4c50:	24010016 	li	at,22
    4c54:	10610008 	beq	v1,at,4c78 <L80901AB0+0x108>
    4c58:	02002025 	move	a0,s0
    4c5c:	24010023 	li	at,35
    4c60:	10610005 	beq	v1,at,4c78 <L80901AB0+0x108>
    4c64:	24010048 	li	at,72
    4c68:	10610003 	beq	v1,at,4c78 <L80901AB0+0x108>
    4c6c:	2401002d 	li	at,45
    4c70:	54610006 	bnel	v1,at,4c8c <L80901AB0+0x11c>
    4c74:	2c610022 	sltiu	at,v1,34
    4c78:	0c000000 	jal	0 <func_808FCF40>
    4c7c:	8fa50054 	lw	a1,84(sp)
    4c80:	8e030398 	lw	v1,920(s0)
    4c84:	8fa6004c 	lw	a2,76(sp)
    4c88:	2c610022 	sltiu	at,v1,34
    4c8c:	14200016 	bnez	at,4ce8 <L80901AB0+0x178>
    4c90:	3c0e0000 	lui	t6,0x0
    4c94:	2c610028 	sltiu	at,v1,40
    4c98:	10200013 	beqz	at,4ce8 <L80901AB0+0x178>
    4c9c:	3c010000 	lui	at,0x0
    4ca0:	c4320000 	lwc1	$f18,0(at)
    4ca4:	3c01448b 	lui	at,0x448b
    4ca8:	44812000 	mtc1	at,$f4
    4cac:	3c01c1e0 	lui	at,0xc1e0
    4cb0:	44813000 	mtc1	at,$f6
    4cb4:	3c01436a 	lui	at,0x436a
    4cb8:	44814000 	mtc1	at,$f8
    4cbc:	3c010000 	lui	at,0x0
    4cc0:	e61203a4 	swc1	$f18,932(s0)
    4cc4:	e60403a8 	swc1	$f4,936(s0)
    4cc8:	e60603ac 	swc1	$f6,940(s0)
    4ccc:	e60803b0 	swc1	$f8,944(s0)
    4cd0:	c42a0000 	lwc1	$f10,0(at)
    4cd4:	3c01c130 	lui	at,0xc130
    4cd8:	44818000 	mtc1	at,$f16
    4cdc:	e60a03b4 	swc1	$f10,948(s0)
    4ce0:	1000003b 	b	4dd0 <L80901AB0+0x260>
    4ce4:	e61003b8 	swc1	$f16,952(s0)
    4ce8:	2c61001e 	sltiu	at,v1,30
    4cec:	10200003 	beqz	at,4cfc <L80901AB0+0x18c>
    4cf0:	25ce0000 	addiu	t6,t6,0
    4cf4:	1000000f 	b	4d34 <L80901AB0+0x1c4>
    4cf8:	00002825 	move	a1,zero
    4cfc:	2c61002b 	sltiu	at,v1,43
    4d00:	10200003 	beqz	at,4d10 <L80901AB0+0x1a0>
    4d04:	24050002 	li	a1,2
    4d08:	1000000a 	b	4d34 <L80901AB0+0x1c4>
    4d0c:	24050001 	li	a1,1
    4d10:	3c010000 	lui	at,0x0
    4d14:	c4320000 	lwc1	$f18,0(at)
    4d18:	3c014348 	lui	at,0x4348
    4d1c:	44812000 	mtc1	at,$f4
    4d20:	3c014120 	lui	at,0x4120
    4d24:	44813000 	mtc1	at,$f6
    4d28:	e61203c4 	swc1	$f18,964(s0)
    4d2c:	e4c40024 	swc1	$f4,36(a2)
    4d30:	e4c6002c 	swc1	$f6,44(a2)
    4d34:	3c014248 	lui	at,0x4248
    4d38:	44810000 	mtc1	at,$f0
    4d3c:	c4ca0024 	lwc1	$f10,36(a2)
    4d40:	00052080 	sll	a0,a1,0x2
    4d44:	00852023 	subu	a0,a0,a1
    4d48:	00042080 	sll	a0,a0,0x2
    4d4c:	46005401 	sub.s	$f16,$f10,$f0
    4d50:	008e1021 	addu	v0,a0,t6
    4d54:	c4480000 	lwc1	$f8,0(v0)
    4d58:	3c014220 	lui	at,0x4220
    4d5c:	44811000 	mtc1	at,$f2
    4d60:	46104480 	add.s	$f18,$f8,$f16
    4d64:	3c0f0000 	lui	t7,0x0
    4d68:	25ef0000 	addiu	t7,t7,0
    4d6c:	008f1821 	addu	v1,a0,t7
    4d70:	e61203a4 	swc1	$f18,932(s0)
    4d74:	c4c60028 	lwc1	$f6,40(a2)
    4d78:	c4440004 	lwc1	$f4,4(v0)
    4d7c:	46003280 	add.s	$f10,$f6,$f0
    4d80:	460a2200 	add.s	$f8,$f4,$f10
    4d84:	e60803a8 	swc1	$f8,936(s0)
    4d88:	c4d2002c 	lwc1	$f18,44(a2)
    4d8c:	c4500008 	lwc1	$f16,8(v0)
    4d90:	46029180 	add.s	$f6,$f18,$f2
    4d94:	46068100 	add.s	$f4,$f16,$f6
    4d98:	e60403ac 	swc1	$f4,940(s0)
    4d9c:	c4c80024 	lwc1	$f8,36(a2)
    4da0:	c46a0000 	lwc1	$f10,0(v1)
    4da4:	46085480 	add.s	$f18,$f10,$f8
    4da8:	e61203b0 	swc1	$f18,944(s0)
    4dac:	c4c60028 	lwc1	$f6,40(a2)
    4db0:	c4700004 	lwc1	$f16,4(v1)
    4db4:	46023100 	add.s	$f4,$f6,$f2
    4db8:	46048280 	add.s	$f10,$f16,$f4
    4dbc:	e60a03b4 	swc1	$f10,948(s0)
    4dc0:	c4d2002c 	lwc1	$f18,44(a2)
    4dc4:	c4680008 	lwc1	$f8,8(v1)
    4dc8:	46124180 	add.s	$f6,$f8,$f18
    4dcc:	e60603b8 	swc1	$f6,952(s0)
    4dd0:	8e180398 	lw	t8,920(s0)
    4dd4:	3c041001 	lui	a0,0x1001
    4dd8:	2f010051 	sltiu	at,t8,81
    4ddc:	5420015d 	bnezl	at,5354 <L80902290+0x4>
    4de0:	8605039e 	lh	a1,926(s0)
    4de4:	0c000000 	jal	0 <func_808FCF40>
    4de8:	348400ff 	ori	a0,a0,0xff
    4dec:	3c0142e0 	lui	at,0x42e0
    4df0:	44818000 	mtc1	at,$f16
    4df4:	2408004b 	li	t0,75
    4df8:	a608039c 	sh	t0,924(s0)
    4dfc:	ae000398 	sw	zero,920(s0)
    4e00:	3c010000 	lui	at,0x0
    4e04:	e61003a4 	swc1	$f16,932(s0)
    4e08:	c4240000 	lwc1	$f4,0(at)
    4e0c:	3c01434a 	lui	at,0x434a
    4e10:	44815000 	mtc1	at,$f10
    4e14:	3c0142dc 	lui	at,0x42dc
    4e18:	44814000 	mtc1	at,$f8
    4e1c:	3c01448f 	lui	at,0x448f
    4e20:	44819000 	mtc1	at,$f18
    4e24:	3c014331 	lui	at,0x4331
    4e28:	44813000 	mtc1	at,$f6
    4e2c:	3c014348 	lui	at,0x4348
    4e30:	e60403a8 	swc1	$f4,936(s0)
    4e34:	e60a03ac 	swc1	$f10,940(s0)
    4e38:	e60803b0 	swc1	$f8,944(s0)
    4e3c:	e61203b4 	swc1	$f18,948(s0)
    4e40:	e60603b8 	swc1	$f6,952(s0)
    4e44:	8fa9004c 	lw	t1,76(sp)
    4e48:	44818000 	mtc1	at,$f16
    4e4c:	44802000 	mtc1	zero,$f4
    4e50:	e5300024 	swc1	$f16,36(t1)
    4e54:	1000013e 	b	5350 <L80902290>
    4e58:	e60403c4 	swc1	$f4,964(s0)
    4e5c:	8e190398 	lw	t9,920(s0)
    4e60:	240a0017 	li	t2,23
    4e64:	24010037 	li	at,55
    4e68:	17210139 	bne	t9,at,5350 <L80902290>
    4e6c:	a20a0339 	sb	t2,825(s0)
    4e70:	3c050600 	lui	a1,0x600
    4e74:	24a57288 	addiu	a1,a1,29320
    4e78:	8fa40028 	lw	a0,40(sp)
    4e7c:	0c000000 	jal	0 <func_808FCF40>
    4e80:	24060000 	li	a2,0
    4e84:	3c040600 	lui	a0,0x600
    4e88:	0c000000 	jal	0 <func_808FCF40>
    4e8c:	24847288 	addiu	a0,a0,29320
    4e90:	44825000 	mtc1	v0,$f10
    4e94:	02002825 	move	a1,s0
    4e98:	24060062 	li	a2,98
    4e9c:	46805220 	cvt.s.w	$f8,$f10
    4ea0:	e6080194 	swc1	$f8,404(s0)
    4ea4:	0c000000 	jal	0 <func_808FCF40>
    4ea8:	8fa40054 	lw	a0,84(sp)
    4eac:	240b0008 	li	t3,8
    4eb0:	240c03e8 	li	t4,1000
    4eb4:	a60b039c 	sh	t3,924(s0)
    4eb8:	10000125 	b	5350 <L80902290>
    4ebc:	ae0c0398 	sw	t4,920(s0)

00004ec0 <L80901E00>:
    4ec0:	8e030398 	lw	v1,920(s0)
    4ec4:	24010401 	li	at,1025
    4ec8:	02002025 	move	a0,s0
    4ecc:	54610007 	bnel	v1,at,4eec <L80901E00+0x2c>
    4ed0:	2c6103e8 	sltiu	at,v1,1000
    4ed4:	0c000000 	jal	0 <func_808FCF40>
    4ed8:	240539d8 	li	a1,14808
    4edc:	3c013f80 	lui	at,0x3f80
    4ee0:	44810000 	mtc1	at,$f0
    4ee4:	8e030398 	lw	v1,920(s0)
    4ee8:	2c6103e8 	sltiu	at,v1,1000
    4eec:	1420000d 	bnez	at,4f24 <L80901E00+0x64>
    4ef0:	2c610410 	sltiu	at,v1,1040
    4ef4:	1020000b 	beqz	at,4f24 <L80901E00+0x64>
    4ef8:	240d0017 	li	t5,23
    4efc:	a20d0339 	sb	t5,825(s0)
    4f00:	8fa40054 	lw	a0,84(sp)
    4f04:	3c010001 	lui	at,0x1
    4f08:	34210afc 	ori	at,at,0xafc
    4f0c:	44050000 	mfc1	a1,$f0
    4f10:	3c063e4c 	lui	a2,0x3e4c
    4f14:	34c6cccd 	ori	a2,a2,0xcccd
    4f18:	0c000000 	jal	0 <func_808FCF40>
    4f1c:	00812021 	addu	a0,a0,at
    4f20:	8e030398 	lw	v1,920(s0)
    4f24:	24010410 	li	at,1040
    4f28:	1461000f 	bne	v1,at,4f68 <L80901E00+0xa8>
    4f2c:	02002025 	move	a0,s0
    4f30:	0c000000 	jal	0 <func_808FCF40>
    4f34:	240539a1 	li	a1,14753
    4f38:	240e0002 	li	t6,2
    4f3c:	a20e0336 	sb	t6,822(s0)
    4f40:	a2000339 	sb	zero,825(s0)
    4f44:	8faf0054 	lw	t7,84(sp)
    4f48:	3c010001 	lui	at,0x1
    4f4c:	44809000 	mtc1	zero,$f18
    4f50:	002f0821 	addu	at,at,t7
    4f54:	a0200ae2 	sb	zero,2786(at)
    4f58:	8fb80054 	lw	t8,84(sp)
    4f5c:	3c010001 	lui	at,0x1
    4f60:	00380821 	addu	at,at,t8
    4f64:	e4320afc 	swc1	$f18,2812(at)
    4f68:	8fa40028 	lw	a0,40(sp)
    4f6c:	0c000000 	jal	0 <func_808FCF40>
    4f70:	8e050194 	lw	a1,404(s0)
    4f74:	10400009 	beqz	v0,4f9c <L80901E00+0xdc>
    4f78:	8fa40028 	lw	a0,40(sp)
    4f7c:	3c050601 	lui	a1,0x601
    4f80:	24a58eb8 	addiu	a1,a1,-29000
    4f84:	0c000000 	jal	0 <func_808FCF40>
    4f88:	24060000 	li	a2,0
    4f8c:	3c01447a 	lui	at,0x447a
    4f90:	44813000 	mtc1	at,$f6
    4f94:	ae000398 	sw	zero,920(s0)
    4f98:	e6060194 	swc1	$f6,404(s0)
    4f9c:	3c01437a 	lui	at,0x437a
    4fa0:	44818000 	mtc1	at,$f16
    4fa4:	3c010000 	lui	at,0x0
    4fa8:	8e030398 	lw	v1,920(s0)
    4fac:	e61003a4 	swc1	$f16,932(s0)
    4fb0:	c4240000 	lwc1	$f4,0(at)
    4fb4:	44805000 	mtc1	zero,$f10
    4fb8:	c60801b8 	lwc1	$f8,440(s0)
    4fbc:	c61201bc 	lwc1	$f18,444(s0)
    4fc0:	c60601c0 	lwc1	$f6,448(s0)
    4fc4:	2c6103e8 	sltiu	at,v1,1000
    4fc8:	e60403a8 	swc1	$f4,936(s0)
    4fcc:	e60a03ac 	swc1	$f10,940(s0)
    4fd0:	e60803b0 	swc1	$f8,944(s0)
    4fd4:	e61203b4 	swc1	$f18,948(s0)
    4fd8:	10200007 	beqz	at,4ff8 <L80901E00+0x138>
    4fdc:	e60603b8 	swc1	$f6,952(s0)
    4fe0:	3068000f 	andi	t0,v1,0xf
    4fe4:	15000004 	bnez	t0,4ff8 <L80901E00+0x138>
    4fe8:	02002025 	move	a0,s0
    4fec:	0c000000 	jal	0 <func_808FCF40>
    4ff0:	24053997 	li	a1,14743
    4ff4:	8e030398 	lw	v1,920(s0)
    4ff8:	24010028 	li	at,40
    4ffc:	146100d4 	bne	v1,at,5350 <L80902290>
    5000:	24090009 	li	t1,9
    5004:	a609039c 	sh	t1,924(s0)
    5008:	ae000398 	sw	zero,920(s0)
    500c:	3c190000 	lui	t9,0x0
    5010:	8f390000 	lw	t9,0(t9)
    5014:	240a000b 	li	t2,11
    5018:	240570d9 	li	a1,28889
    501c:	a32a03c8 	sb	t2,968(t9)
    5020:	8fa40054 	lw	a0,84(sp)
    5024:	0c000000 	jal	0 <func_808FCF40>
    5028:	00003025 	move	a2,zero
    502c:	a2000336 	sb	zero,822(s0)
    5030:	8fab0054 	lw	t3,84(sp)
    5034:	44808000 	mtc1	zero,$f16
    5038:	3c010001 	lui	at,0x1
    503c:	002b0821 	addu	at,at,t3
    5040:	100000c3 	b	5350 <L80902290>
    5044:	e4300afc 	swc1	$f16,2812(at)

00005048 <L80901F88>:
    5048:	3c014220 	lui	at,0x4220
    504c:	44811000 	mtc1	at,$f2
    5050:	3c0143a5 	lui	at,0x43a5
    5054:	44812000 	mtc1	at,$f4
    5058:	3c01448c 	lui	at,0x448c
    505c:	44815000 	mtc1	at,$f10
    5060:	3c01c316 	lui	at,0xc316
    5064:	44814000 	mtc1	at,$f8
    5068:	240c0018 	li	t4,24
    506c:	a20c0339 	sb	t4,825(s0)
    5070:	3c0d0000 	lui	t5,0x0
    5074:	e60403a4 	swc1	$f4,932(s0)
    5078:	e60a03a8 	swc1	$f10,936(s0)
    507c:	e60803ac 	swc1	$f8,940(s0)
    5080:	8dad0000 	lw	t5,0(t5)
    5084:	3c0e0000 	lui	t6,0x0
    5088:	3c0f0000 	lui	t7,0x0
    508c:	c5b20024 	lwc1	$f18,36(t5)
    5090:	8e180398 	lw	t8,920(s0)
    5094:	2408000a 	li	t0,10
    5098:	e61203b0 	swc1	$f18,944(s0)
    509c:	8dce0000 	lw	t6,0(t6)
    50a0:	2f01003d 	sltiu	at,t8,61
    50a4:	c5c60028 	lwc1	$f6,40(t6)
    50a8:	46023400 	add.s	$f16,$f6,$f2
    50ac:	e61003b4 	swc1	$f16,948(s0)
    50b0:	8def0000 	lw	t7,0(t7)
    50b4:	c5e4002c 	lwc1	$f4,44(t7)
    50b8:	142000a5 	bnez	at,5350 <L80902290>
    50bc:	e60403b8 	swc1	$f4,952(s0)
    50c0:	44805000 	mtc1	zero,$f10
    50c4:	a608039c 	sh	t0,924(s0)
    50c8:	ae000398 	sw	zero,920(s0)
    50cc:	100000a0 	b	5350 <L80902290>
    50d0:	e60a0410 	swc1	$f10,1040(s0)

000050d4 <L80902014>:
    50d4:	24090018 	li	t1,24
    50d8:	3c063d4c 	lui	a2,0x3d4c
    50dc:	a2090339 	sb	t1,825(s0)
    50e0:	34c6cccd 	ori	a2,a2,0xcccd
    50e4:	260403a4 	addiu	a0,s0,932
    50e8:	3c054391 	lui	a1,0x4391
    50ec:	0c000000 	jal	0 <func_808FCF40>
    50f0:	8e070410 	lw	a3,1040(s0)
    50f4:	3c013e80 	lui	at,0x3e80
    50f8:	44819000 	mtc1	at,$f18
    50fc:	c6080410 	lwc1	$f8,1040(s0)
    5100:	3c05448d 	lui	a1,0x448d
    5104:	3c063d4c 	lui	a2,0x3d4c
    5108:	46124182 	mul.s	$f6,$f8,$f18
    510c:	34c6cccd 	ori	a2,a2,0xcccd
    5110:	34a54000 	ori	a1,a1,0x4000
    5114:	260403a8 	addiu	a0,s0,936
    5118:	44073000 	mfc1	a3,$f6
    511c:	0c000000 	jal	0 <func_808FCF40>
    5120:	00000000 	nop
    5124:	3c013fa0 	lui	at,0x3fa0
    5128:	44812000 	mtc1	at,$f4
    512c:	c6100410 	lwc1	$f16,1040(s0)
    5130:	3c063d4c 	lui	a2,0x3d4c
    5134:	34c6cccd 	ori	a2,a2,0xcccd
    5138:	46048282 	mul.s	$f10,$f16,$f4
    513c:	260403ac 	addiu	a0,s0,940
    5140:	3c05c382 	lui	a1,0xc382
    5144:	44075000 	mfc1	a3,$f10
    5148:	0c000000 	jal	0 <func_808FCF40>
    514c:	00000000 	nop
    5150:	8e030398 	lw	v1,920(s0)
    5154:	26040384 	addiu	a0,s0,900
    5158:	3c053f80 	lui	a1,0x3f80
    515c:	2c610028 	sltiu	at,v1,40
    5160:	14200019 	bnez	at,51c8 <L80902014+0xf4>
    5164:	3c063e4c 	lui	a2,0x3e4c
    5168:	2c61006f 	sltiu	at,v1,111
    516c:	10200016 	beqz	at,51c8 <L80902014+0xf4>
    5170:	3c073ca3 	lui	a3,0x3ca3
    5174:	8fa40054 	lw	a0,84(sp)
    5178:	3c010001 	lui	at,0x1
    517c:	34210afc 	ori	at,at,0xafc
    5180:	3c053f80 	lui	a1,0x3f80
    5184:	3c063f80 	lui	a2,0x3f80
    5188:	34e7d70a 	ori	a3,a3,0xd70a
    518c:	0c000000 	jal	0 <func_808FCF40>
    5190:	00812021 	addu	a0,a0,at
    5194:	3c063dcc 	lui	a2,0x3dcc
    5198:	3c073e4c 	lui	a3,0x3e4c
    519c:	34e7cccd 	ori	a3,a3,0xcccd
    51a0:	34c6cccd 	ori	a2,a2,0xcccd
    51a4:	26040384 	addiu	a0,s0,900
    51a8:	0c000000 	jal	0 <func_808FCF40>
    51ac:	3c054120 	lui	a1,0x4120
    51b0:	3c040000 	lui	a0,0x0
    51b4:	8c840000 	lw	a0,0(a0)
    51b8:	0c000000 	jal	0 <func_808FCF40>
    51bc:	2405209a 	li	a1,8346
    51c0:	10000004 	b	51d4 <L80902014+0x100>
    51c4:	8e0a0398 	lw	t2,920(s0)
    51c8:	0c000000 	jal	0 <func_808FCF40>
    51cc:	34c6cccd 	ori	a2,a2,0xcccd
    51d0:	8e0a0398 	lw	t2,920(s0)
    51d4:	3c190000 	lui	t9,0x0
    51d8:	3c0b0000 	lui	t3,0x0
    51dc:	2d410083 	sltiu	at,t2,131
    51e0:	14200015 	bnez	at,5238 <L80902014+0x164>
    51e4:	00000000 	nop
    51e8:	8f390000 	lw	t9,0(t9)
    51ec:	3c014220 	lui	at,0x4220
    51f0:	44811000 	mtc1	at,$f2
    51f4:	c7280028 	lwc1	$f8,40(t9)
    51f8:	3c014120 	lui	at,0x4120
    51fc:	44813000 	mtc1	at,$f6
    5200:	46024480 	add.s	$f18,$f8,$f2
    5204:	3c0141a0 	lui	at,0x41a0
    5208:	44812000 	mtc1	at,$f4
    520c:	3c063dcc 	lui	a2,0x3dcc
    5210:	46069400 	add.s	$f16,$f18,$f6
    5214:	34c6cccd 	ori	a2,a2,0xcccd
    5218:	260403b4 	addiu	a0,s0,948
    521c:	8e070410 	lw	a3,1040(s0)
    5220:	46048281 	sub.s	$f10,$f16,$f4
    5224:	44055000 	mfc1	a1,$f10
    5228:	0c000000 	jal	0 <func_808FCF40>
    522c:	00000000 	nop
    5230:	10000015 	b	5288 <L80902014+0x1b4>
    5234:	3c073c23 	lui	a3,0x3c23
    5238:	8d6b0000 	lw	t3,0(t3)
    523c:	3c014220 	lui	at,0x4220
    5240:	44811000 	mtc1	at,$f2
    5244:	3c014120 	lui	at,0x4120
    5248:	44813000 	mtc1	at,$f6
    524c:	c5680028 	lwc1	$f8,40(t3)
    5250:	3c013e80 	lui	at,0x3e80
    5254:	44815000 	mtc1	at,$f10
    5258:	c6040410 	lwc1	$f4,1040(s0)
    525c:	46024480 	add.s	$f18,$f8,$f2
    5260:	3c063d4c 	lui	a2,0x3d4c
    5264:	460a2202 	mul.s	$f8,$f4,$f10
    5268:	34c6cccd 	ori	a2,a2,0xcccd
    526c:	46069400 	add.s	$f16,$f18,$f6
    5270:	260403b4 	addiu	a0,s0,948
    5274:	44058000 	mfc1	a1,$f16
    5278:	44074000 	mfc1	a3,$f8
    527c:	0c000000 	jal	0 <func_808FCF40>
    5280:	00000000 	nop
    5284:	3c073c23 	lui	a3,0x3c23
    5288:	34e7d70a 	ori	a3,a3,0xd70a
    528c:	26040410 	addiu	a0,s0,1040
    5290:	3c053f80 	lui	a1,0x3f80
    5294:	0c000000 	jal	0 <func_808FCF40>
    5298:	3c063f80 	lui	a2,0x3f80
    529c:	8e030398 	lw	v1,920(s0)
    52a0:	2401000a 	li	at,10
    52a4:	3c0d0000 	lui	t5,0x0
    52a8:	14610005 	bne	v1,at,52c0 <L80902014+0x1ec>
    52ac:	3c0f0000 	lui	t7,0x0
    52b0:	8dad0000 	lw	t5,0(t5)
    52b4:	240c000c 	li	t4,12
    52b8:	a1ac03c8 	sb	t4,968(t5)
    52bc:	8e030398 	lw	v1,920(s0)
    52c0:	2401006e 	li	at,110
    52c4:	14610005 	bne	v1,at,52dc <L80902014+0x208>
    52c8:	3c040000 	lui	a0,0x0
    52cc:	8def0000 	lw	t7,0(t7)
    52d0:	240e000d 	li	t6,13
    52d4:	a1ee03c8 	sb	t6,968(t7)
    52d8:	8e030398 	lw	v1,920(s0)
    52dc:	2401008c 	li	at,140
    52e0:	14610004 	bne	v1,at,52f4 <L80902014+0x220>
    52e4:	24052896 	li	a1,10390
    52e8:	0c000000 	jal	0 <func_808FCF40>
    52ec:	8c840000 	lw	a0,0(a0)
    52f0:	8e030398 	lw	v1,920(s0)
    52f4:	2c6100a0 	sltiu	at,v1,160
    52f8:	54200016 	bnezl	at,5354 <L80902290+0x4>
    52fc:	8605039e 	lh	a1,926(s0)

00005300 <L80902240>:
    5300:	8fa20054 	lw	v0,84(sp)
    5304:	3c010001 	lui	at,0x1
    5308:	2418006b 	li	t8,107
    530c:	00220821 	addu	at,at,v0
    5310:	a4381e1a 	sh	t8,7706(at)
    5314:	3c010000 	lui	at,0x0
    5318:	3408fff2 	li	t0,0xfff2
    531c:	a4281412 	sh	t0,5138(at)
    5320:	3c010001 	lui	at,0x1
    5324:	24090014 	li	t1,20
    5328:	00220821 	addu	at,at,v0
    532c:	a0291e15 	sb	t1,7701(at)
    5330:	3c010001 	lui	at,0x1
    5334:	240a0003 	li	t2,3
    5338:	00220821 	addu	at,at,v0
    533c:	a02a1e5e 	sb	t2,7774(at)
    5340:	3c010001 	lui	at,0x1
    5344:	24190001 	li	t9,1
    5348:	00220821 	addu	at,at,v0
    534c:	a0391de8 	sb	t9,7656(at)

00005350 <L80902290>:
    5350:	8605039e 	lh	a1,926(s0)
    5354:	8fa40054 	lw	a0,84(sp)
    5358:	260603b0 	addiu	a2,s0,944
    535c:	10a00004 	beqz	a1,5370 <L80902290+0x20>
    5360:	260703a4 	addiu	a3,s0,932
    5364:	260b03bc 	addiu	t3,s0,956
    5368:	0c000000 	jal	0 <func_808FCF40>
    536c:	afab0010 	sw	t3,16(sp)
    5370:	860301ac 	lh	v1,428(s0)
    5374:	24010001 	li	at,1
    5378:	8fa40028 	lw	a0,40(sp)
    537c:	10600005 	beqz	v1,5394 <L80902290+0x44>
    5380:	00000000 	nop
    5384:	5061000f 	beql	v1,at,53c4 <L80902290+0x74>
    5388:	860d039c 	lh	t5,924(s0)
    538c:	1000001a 	b	53f8 <L80902290+0xa8>
    5390:	8fbf0024 	lw	ra,36(sp)
    5394:	0c000000 	jal	0 <func_808FCF40>
    5398:	8e050194 	lw	a1,404(s0)
    539c:	10400015 	beqz	v0,53f4 <L80902290+0xa4>
    53a0:	8fa40028 	lw	a0,40(sp)
    53a4:	3c050603 	lui	a1,0x603
    53a8:	24a54278 	addiu	a1,a1,17016
    53ac:	0c000000 	jal	0 <func_808FCF40>
    53b0:	24060000 	li	a2,0
    53b4:	240c0001 	li	t4,1
    53b8:	1000000e 	b	53f4 <L80902290+0xa4>
    53bc:	a60c01ac 	sh	t4,428(s0)
    53c0:	860d039c 	lh	t5,924(s0)
    53c4:	8fae0054 	lw	t6,84(sp)
    53c8:	3c0f0001 	lui	t7,0x1
    53cc:	29a10007 	slti	at,t5,7
    53d0:	10200008 	beqz	at,53f4 <L80902290+0xa4>
    53d4:	01ee7821 	addu	t7,t7,t6
    53d8:	8def1de4 	lw	t7,7652(t7)
    53dc:	02002025 	move	a0,s0
    53e0:	31f8001f 	andi	t8,t7,0x1f
    53e4:	57000004 	bnezl	t8,53f8 <L80902290+0xa8>
    53e8:	8fbf0024 	lw	ra,36(sp)
    53ec:	0c000000 	jal	0 <func_808FCF40>
    53f0:	240539af 	li	a1,14767
    53f4:	8fbf0024 	lw	ra,36(sp)
    53f8:	8fb00020 	lw	s0,32(sp)
    53fc:	27bd0050 	addiu	sp,sp,80
    5400:	03e00008 	jr	ra
    5404:	00000000 	nop

00005408 <func_80902348>:
    5408:	27bdffc0 	addiu	sp,sp,-64
    540c:	afbf002c 	sw	ra,44(sp)
    5410:	afb20028 	sw	s2,40(sp)
    5414:	afb10024 	sw	s1,36(sp)
    5418:	afb00020 	sw	s0,32(sp)
    541c:	afa50044 	sw	a1,68(sp)
    5420:	848e0316 	lh	t6,790(a0)
    5424:	00809025 	move	s2,a0
    5428:	2405fffd 	li	a1,-3
    542c:	15c0002e 	bnez	t6,54e8 <func_80902348+0xe0>
    5430:	00001025 	move	v0,zero
    5434:	8e4f0460 	lw	t7,1120(s2)
    5438:	0002c180 	sll	t8,v0,0x6
    543c:	24420001 	addiu	v0,v0,1
    5440:	01f81821 	addu	v1,t7,t8
    5444:	90640016 	lbu	a0,22(v1)
    5448:	00021400 	sll	v0,v0,0x10
    544c:	00021403 	sra	v0,v0,0x10
    5450:	30990002 	andi	t9,a0,0x2
    5454:	13200004 	beqz	t9,5468 <func_80902348+0x60>
    5458:	28410002 	slti	at,v0,2
    545c:	00854024 	and	t0,a0,a1
    5460:	1000001f 	b	54e0 <func_80902348+0xd8>
    5464:	a0680016 	sb	t0,22(v1)
    5468:	90640015 	lbu	a0,21(v1)
    546c:	30890002 	andi	t1,a0,0x2
    5470:	1120001b 	beqz	t1,54e0 <func_80902348+0xd8>
    5474:	00855024 	and	t2,a0,a1
    5478:	a06a0015 	sb	t2,21(v1)
    547c:	924b0312 	lbu	t3,786(s2)
    5480:	24010001 	li	at,1
    5484:	8fa40044 	lw	a0,68(sp)
    5488:	15610003 	bne	t3,at,5498 <func_80902348+0x90>
    548c:	02402825 	move	a1,s2
    5490:	10000002 	b	549c <func_80902348+0x94>
    5494:	24021800 	li	v0,6144
    5498:	00001025 	move	v0,zero
    549c:	864c008a 	lh	t4,138(s2)
    54a0:	3c014000 	lui	at,0x4000
    54a4:	44812000 	mtc1	at,$f4
    54a8:	01823821 	addu	a3,t4,v0
    54ac:	00073c00 	sll	a3,a3,0x10
    54b0:	00073c03 	sra	a3,a3,0x10
    54b4:	afa00014 	sw	zero,20(sp)
    54b8:	3c064170 	lui	a2,0x4170
    54bc:	0c000000 	jal	0 <func_808FCF40>
    54c0:	e7a40010 	swc1	$f4,16(sp)
    54c4:	3c0e0000 	lui	t6,0x0
    54c8:	8dce0000 	lw	t6,0(t6)
    54cc:	240d0008 	li	t5,8
    54d0:	240f000a 	li	t7,10
    54d4:	a1cd03c8 	sb	t5,968(t6)
    54d8:	10000003 	b	54e8 <func_80902348+0xe0>
    54dc:	a64f0316 	sh	t7,790(s2)
    54e0:	5420ffd5 	bnezl	at,5438 <func_80902348+0x30>
    54e4:	8e4f0460 	lw	t7,1120(s2)
    54e8:	44803000 	mtc1	zero,$f6
    54ec:	c6480324 	lwc1	$f8,804(s2)
    54f0:	8fb80044 	lw	t8,68(sp)
    54f4:	4608303c 	c.lt.s	$f6,$f8
    54f8:	00000000 	nop
    54fc:	45020034 	bc1fl	55d0 <func_80902348+0x1c8>
    5500:	8fbf002c 	lw	ra,44(sp)
    5504:	8f111c44 	lw	s1,7236(t8)
    5508:	3c01c348 	lui	at,0xc348
    550c:	44817000 	mtc1	at,$f14
    5510:	c62a0024 	lwc1	$f10,36(s1)
    5514:	c630002c 	lwc1	$f16,44(s1)
    5518:	3c014444 	lui	at,0x4444
    551c:	460a7081 	sub.s	$f2,$f14,$f10
    5520:	44813000 	mtc1	at,$f6
    5524:	00008025 	move	s0,zero
    5528:	46107301 	sub.s	$f12,$f14,$f16
    552c:	46021482 	mul.s	$f18,$f2,$f2
    5530:	00000000 	nop
    5534:	460c6102 	mul.s	$f4,$f12,$f12
    5538:	46049000 	add.s	$f0,$f18,$f4
    553c:	46000004 	sqrt.s	$f0,$f0
    5540:	4600303c 	c.lt.s	$f6,$f0
    5544:	00000000 	nop
    5548:	45000020 	bc1f	55cc <func_80902348+0x1c4>
    554c:	00000000 	nop
    5550:	e7a20038 	swc1	$f2,56(sp)
    5554:	e7ac0034 	swc1	$f12,52(sp)
    5558:	00002025 	move	a0,zero
    555c:	0c000000 	jal	0 <func_808FCF40>
    5560:	240500c8 	li	a1,200
    5564:	0230c821 	addu	t9,s1,s0
    5568:	26100001 	addiu	s0,s0,1
    556c:	00108400 	sll	s0,s0,0x10
    5570:	00108403 	sra	s0,s0,0x10
    5574:	2a010012 	slti	at,s0,18
    5578:	1420fff7 	bnez	at,5558 <func_80902348+0x150>
    557c:	a3220a61 	sb	v0,2657(t9)
    5580:	24080001 	li	t0,1
    5584:	a2280a60 	sb	t0,2656(s1)
    5588:	c7ae0038 	lwc1	$f14,56(sp)
    558c:	0c000000 	jal	0 <func_808FCF40>
    5590:	c7ac0034 	lwc1	$f12,52(sp)
    5594:	44804000 	mtc1	zero,$f8
    5598:	00023c00 	sll	a3,v0,0x10
    559c:	24090010 	li	t1,16
    55a0:	afa90014 	sw	t1,20(sp)
    55a4:	00073c03 	sra	a3,a3,0x10
    55a8:	8fa40044 	lw	a0,68(sp)
    55ac:	02402825 	move	a1,s2
    55b0:	3c064120 	lui	a2,0x4120
    55b4:	0c000000 	jal	0 <func_808FCF40>
    55b8:	e7a80010 	swc1	$f8,16(sp)
    55bc:	3c0b0000 	lui	t3,0x0
    55c0:	8d6b0000 	lw	t3,0(t3)
    55c4:	240a0008 	li	t2,8
    55c8:	a16a03c8 	sb	t2,968(t3)
    55cc:	8fbf002c 	lw	ra,44(sp)
    55d0:	8fb00020 	lw	s0,32(sp)
    55d4:	8fb10024 	lw	s1,36(sp)
    55d8:	8fb20028 	lw	s2,40(sp)
    55dc:	03e00008 	jr	ra
    55e0:	27bd0040 	addiu	sp,sp,64

000055e4 <func_80902524>:
    55e4:	27bdffd8 	addiu	sp,sp,-40
    55e8:	afb00018 	sw	s0,24(sp)
    55ec:	00808025 	move	s0,a0
    55f0:	afbf001c 	sw	ra,28(sp)
    55f4:	afa5002c 	sw	a1,44(sp)
    55f8:	3c040000 	lui	a0,0x0
    55fc:	24840000 	addiu	a0,a0,0
    5600:	0c000000 	jal	0 <func_808FCF40>
    5604:	86050316 	lh	a1,790(s0)
    5608:	860e0316 	lh	t6,790(s0)
    560c:	3c040000 	lui	a0,0x0
    5610:	00001825 	move	v1,zero
    5614:	15c00008 	bnez	t6,5638 <func_80902524+0x54>
    5618:	24840000 	addiu	a0,a0,0
    561c:	920f0334 	lbu	t7,820(s0)
    5620:	15e00011 	bnez	t7,5668 <func_80902524+0x84>
    5624:	00000000 	nop
    5628:	8e190190 	lw	t9,400(s0)
    562c:	3c180000 	lui	t8,0x0
    5630:	27180000 	addiu	t8,t8,0
    5634:	1719000c 	bne	t8,t9,5668 <func_80902524+0x84>
    5638:	2406fffd 	li	a2,-3
    563c:	8e080440 	lw	t0,1088(s0)
    5640:	00034980 	sll	t1,v1,0x6
    5644:	24630001 	addiu	v1,v1,1
    5648:	01091021 	addu	v0,t0,t1
    564c:	904a0016 	lbu	t2,22(v0)
    5650:	00031c00 	sll	v1,v1,0x10
    5654:	00031c03 	sra	v1,v1,0x10
    5658:	28610010 	slti	at,v1,16
    565c:	01465824 	and	t3,t2,a2
    5660:	1420fff6 	bnez	at,563c <func_80902524+0x58>
    5664:	a04b0016 	sb	t3,22(v0)
    5668:	0c000000 	jal	0 <func_808FCF40>
    566c:	92050313 	lbu	a1,787(s0)
    5670:	920c0313 	lbu	t4,787(s0)
    5674:	2406fffd 	li	a2,-3
    5678:	51800057 	beqzl	t4,57d8 <func_80902524+0x1f4>
    567c:	8e020440 	lw	v0,1088(s0)
    5680:	8e0e0190 	lw	t6,400(s0)
    5684:	3c0d0000 	lui	t5,0x0
    5688:	25ad0000 	addiu	t5,t5,0
    568c:	51ae0090 	beql	t5,t6,58d0 <func_80902524+0x2ec>
    5690:	8fbf001c 	lw	ra,28(sp)
    5694:	8e020440 	lw	v0,1088(s0)
    5698:	90450016 	lbu	a1,22(v0)
    569c:	30af0002 	andi	t7,a1,0x2
    56a0:	11e0008a 	beqz	t7,58cc <func_80902524+0x2e8>
    56a4:	00a6c024 	and	t8,a1,a2
    56a8:	a0580016 	sb	t8,22(v0)
    56ac:	8e190440 	lw	t9,1088(s0)
    56b0:	3c030000 	lui	v1,0x0
    56b4:	24630000 	addiu	v1,v1,0
    56b8:	8f270024 	lw	a3,36(t9)
    56bc:	8ce40000 	lw	a0,0(a3)
    56c0:	30882000 	andi	t0,a0,0x2000
    56c4:	51000012 	beqzl	t0,5710 <func_80902524+0x12c>
    56c8:	8e020190 	lw	v0,400(s0)
    56cc:	8e090190 	lw	t1,400(s0)
    56d0:	8fa5002c 	lw	a1,44(sp)
    56d4:	5069000e 	beql	v1,t1,5710 <func_80902524+0x12c>
    56d8:	8e020190 	lw	v0,400(s0)
    56dc:	0c000000 	jal	0 <func_808FCF40>
    56e0:	02002025 	move	a0,s0
    56e4:	02002025 	move	a0,s0
    56e8:	0c000000 	jal	0 <func_808FCF40>
    56ec:	240538a8 	li	a1,14504
    56f0:	02002025 	move	a0,s0
    56f4:	0c000000 	jal	0 <func_808FCF40>
    56f8:	2405399b 	li	a1,14747
    56fc:	0c000000 	jal	0 <func_808FCF40>
    5700:	240439d9 	li	a0,14809
    5704:	10000072 	b	58d0 <func_80902524+0x2ec>
    5708:	8fbf001c 	lw	ra,28(sp)
    570c:	8e020190 	lw	v0,400(s0)
    5710:	3c010900 	lui	at,0x900
    5714:	34210200 	ori	at,at,0x200
    5718:	14620025 	bne	v1,v0,57b0 <func_80902524+0x1cc>
    571c:	00815024 	and	t2,a0,at
    5720:	11400023 	beqz	t2,57b0 <func_80902524+0x1cc>
    5724:	240b003c 	li	t3,60
    5728:	240c0005 	li	t4,5
    572c:	a60b0316 	sh	t3,790(s0)
    5730:	a60c0342 	sh	t4,834(s0)
    5734:	02002025 	move	a0,s0
    5738:	0c000000 	jal	0 <func_808FCF40>
    573c:	2405399b 	li	a1,14747
    5740:	0c000000 	jal	0 <func_808FCF40>
    5744:	240439d9 	li	a0,14809
    5748:	920d00af 	lbu	t5,175(s0)
    574c:	25aefffe 	addiu	t6,t5,-2
    5750:	a20e00af 	sb	t6,175(s0)
    5754:	820200af 	lb	v0,175(s0)
    5758:	28410015 	slti	at,v0,21
    575c:	10200009 	beqz	at,5784 <func_80902524+0x1a0>
    5760:	00000000 	nop
    5764:	920f0334 	lbu	t7,820(s0)
    5768:	02002025 	move	a0,s0
    576c:	15e00005 	bnez	t7,5784 <func_80902524+0x1a0>
    5770:	00000000 	nop
    5774:	0c000000 	jal	0 <func_808FCF40>
    5778:	8fa5002c 	lw	a1,44(sp)
    577c:	10000054 	b	58d0 <func_80902524+0x2ec>
    5780:	8fbf001c 	lw	ra,28(sp)
    5784:	1c400006 	bgtz	v0,57a0 <func_80902524+0x1bc>
    5788:	02002025 	move	a0,s0
    578c:	02002025 	move	a0,s0
    5790:	0c000000 	jal	0 <func_808FCF40>
    5794:	8fa5002c 	lw	a1,44(sp)
    5798:	1000004d 	b	58d0 <func_80902524+0x2ec>
    579c:	8fbf001c 	lw	ra,28(sp)
    57a0:	0c000000 	jal	0 <func_808FCF40>
    57a4:	8fa5002c 	lw	a1,44(sp)
    57a8:	10000049 	b	58d0 <func_80902524+0x2ec>
    57ac:	8fbf001c 	lw	ra,28(sp)
    57b0:	10620046 	beq	v1,v0,58cc <func_80902524+0x2e8>
    57b4:	02002025 	move	a0,s0
    57b8:	0c000000 	jal	0 <func_808FCF40>
    57bc:	8fa5002c 	lw	a1,44(sp)
    57c0:	02002025 	move	a0,s0
    57c4:	0c000000 	jal	0 <func_808FCF40>
    57c8:	24051813 	li	a1,6163
    57cc:	10000040 	b	58d0 <func_80902524+0x2ec>
    57d0:	8fbf001c 	lw	ra,28(sp)
    57d4:	8e020440 	lw	v0,1088(s0)
    57d8:	2409003c 	li	t1,60
    57dc:	240a0032 	li	t2,50
    57e0:	904303d6 	lbu	v1,982(v0)
    57e4:	240b0005 	li	t3,5
    57e8:	30780002 	andi	t8,v1,0x2
    57ec:	13000037 	beqz	t8,58cc <func_80902524+0x2e8>
    57f0:	0066c824 	and	t9,v1,a2
    57f4:	a05903d6 	sb	t9,982(v0)
    57f8:	8e080440 	lw	t0,1088(s0)
    57fc:	02002025 	move	a0,s0
    5800:	2405399b 	li	a1,14747
    5804:	8d0703e4 	lw	a3,996(t0)
    5808:	a6090316 	sh	t1,790(s0)
    580c:	a60a0344 	sh	t2,836(s0)
    5810:	a60b0342 	sh	t3,834(s0)
    5814:	0c000000 	jal	0 <func_808FCF40>
    5818:	afa70020 	sw	a3,32(sp)
    581c:	0c000000 	jal	0 <func_808FCF40>
    5820:	240439d9 	li	a0,14809
    5824:	8fa70020 	lw	a3,32(sp)
    5828:	3c010900 	lui	at,0x900
    582c:	34210200 	ori	at,at,0x200
    5830:	8ce40000 	lw	a0,0(a3)
    5834:	24030001 	li	v1,1
    5838:	00816024 	and	t4,a0,at
    583c:	11800005 	beqz	t4,5854 <func_80902524+0x270>
    5840:	00046900 	sll	t5,a0,0x4
    5844:	05a10003 	bgez	t5,5854 <func_80902524+0x270>
    5848:	24030002 	li	v1,2
    584c:	10000001 	b	5854 <func_80902524+0x270>
    5850:	24030004 	li	v1,4
    5854:	920e00af 	lbu	t6,175(s0)
    5858:	00602025 	move	a0,v1
    585c:	01c37823 	subu	t7,t6,v1
    5860:	a20f00af 	sb	t7,175(s0)
    5864:	820200af 	lb	v0,175(s0)
    5868:	28410015 	slti	at,v0,21
    586c:	10200009 	beqz	at,5894 <func_80902524+0x2b0>
    5870:	00000000 	nop
    5874:	92180334 	lbu	t8,820(s0)
    5878:	8fa5002c 	lw	a1,44(sp)
    587c:	17000005 	bnez	t8,5894 <func_80902524+0x2b0>
    5880:	00000000 	nop
    5884:	0c000000 	jal	0 <func_808FCF40>
    5888:	02002025 	move	a0,s0
    588c:	10000010 	b	58d0 <func_80902524+0x2ec>
    5890:	8fbf001c 	lw	ra,28(sp)
    5894:	1c400007 	bgtz	v0,58b4 <func_80902524+0x2d0>
    5898:	28810002 	slti	at,a0,2
    589c:	14200005 	bnez	at,58b4 <func_80902524+0x2d0>
    58a0:	02002025 	move	a0,s0
    58a4:	0c000000 	jal	0 <func_808FCF40>
    58a8:	8fa5002c 	lw	a1,44(sp)
    58ac:	10000008 	b	58d0 <func_80902524+0x2ec>
    58b0:	8fbf001c 	lw	ra,28(sp)
    58b4:	1c400003 	bgtz	v0,58c4 <func_80902524+0x2e0>
    58b8:	02002025 	move	a0,s0
    58bc:	24190001 	li	t9,1
    58c0:	a21900af 	sb	t9,175(s0)
    58c4:	0c000000 	jal	0 <func_808FCF40>
    58c8:	8fa5002c 	lw	a1,44(sp)
    58cc:	8fbf001c 	lw	ra,28(sp)
    58d0:	8fb00018 	lw	s0,24(sp)
    58d4:	27bd0028 	addiu	sp,sp,40
    58d8:	03e00008 	jr	ra
    58dc:	00000000 	nop

000058e0 <BossGanon2_Update>:
    58e0:	27bdff88 	addiu	sp,sp,-120
    58e4:	afbf002c 	sw	ra,44(sp)
    58e8:	afb20028 	sw	s2,40(sp)
    58ec:	afb10024 	sw	s1,36(sp)
    58f0:	afb00020 	sw	s0,32(sp)
    58f4:	90820337 	lbu	v0,823(a0)
    58f8:	00808825 	move	s1,a0
    58fc:	00a09025 	move	s2,a1
    5900:	10400003 	beqz	v0,5910 <BossGanon2_Update+0x30>
    5904:	24010002 	li	at,2
    5908:	14410008 	bne	v0,at,592c <BossGanon2_Update+0x4c>
    590c:	02202025 	move	a0,s1
    5910:	02202025 	move	a0,s1
    5914:	02402825 	move	a1,s2
    5918:	2406017e 	li	a2,382
    591c:	0c000000 	jal	0 <func_808FCF40>
    5920:	00003825 	move	a3,zero
    5924:	10000009 	b	594c <BossGanon2_Update+0x6c>
    5928:	00000000 	nop
    592c:	02402825 	move	a1,s2
    5930:	24060153 	li	a2,339
    5934:	0c000000 	jal	0 <func_808FCF40>
    5938:	00003825 	move	a3,zero
    593c:	2624030c 	addiu	a0,s1,780
    5940:	3c053f80 	lui	a1,0x3f80
    5944:	0c000000 	jal	0 <func_808FCF40>
    5948:	3c063f00 	lui	a2,0x3f00
    594c:	0c000000 	jal	0 <func_808FCF40>
    5950:	02202025 	move	a0,s1
    5954:	862e019c 	lh	t6,412(s1)
    5958:	3c053c23 	lui	a1,0x3c23
    595c:	a2200312 	sb	zero,786(s1)
    5960:	25cf0001 	addiu	t7,t6,1
    5964:	a62f019c 	sh	t7,412(s1)
    5968:	34a5d70a 	ori	a1,a1,0xd70a
    596c:	0c000000 	jal	0 <func_808FCF40>
    5970:	02202025 	move	a0,s1
    5974:	8e390190 	lw	t9,400(s1)
    5978:	02202025 	move	a0,s1
    597c:	02402825 	move	a1,s2
    5980:	0320f809 	jalr	t9
    5984:	00000000 	nop
    5988:	00008025 	move	s0,zero
    598c:	0010c040 	sll	t8,s0,0x1
    5990:	02381021 	addu	v0,s1,t8
    5994:	844301a2 	lh	v1,418(v0)
    5998:	26100001 	addiu	s0,s0,1
    599c:	00108400 	sll	s0,s0,0x10
    59a0:	10600003 	beqz	v1,59b0 <BossGanon2_Update+0xd0>
    59a4:	00108403 	sra	s0,s0,0x10
    59a8:	2469ffff 	addiu	t1,v1,-1
    59ac:	a44901a2 	sh	t1,418(v0)
    59b0:	2a010005 	slti	at,s0,5
    59b4:	5420fff6 	bnezl	at,5990 <BossGanon2_Update+0xb0>
    59b8:	0010c040 	sll	t8,s0,0x1
    59bc:	86220316 	lh	v0,790(s1)
    59c0:	10400002 	beqz	v0,59cc <BossGanon2_Update+0xec>
    59c4:	244affff 	addiu	t2,v0,-1
    59c8:	a62a0316 	sh	t2,790(s1)
    59cc:	86220342 	lh	v0,834(s1)
    59d0:	10400002 	beqz	v0,59dc <BossGanon2_Update+0xfc>
    59d4:	244bffff 	addiu	t3,v0,-1
    59d8:	a62b0342 	sh	t3,834(s1)
    59dc:	86220390 	lh	v0,912(s1)
    59e0:	10400002 	beqz	v0,59ec <BossGanon2_Update+0x10c>
    59e4:	244cffff 	addiu	t4,v0,-1
    59e8:	a62c0390 	sh	t4,912(s1)
    59ec:	86220392 	lh	v0,914(s1)
    59f0:	10400002 	beqz	v0,59fc <BossGanon2_Update+0x11c>
    59f4:	244dffff 	addiu	t5,v0,-1
    59f8:	a62d0392 	sh	t5,914(s1)
    59fc:	0c000000 	jal	0 <func_808FCF40>
    5a00:	02202025 	move	a0,s1
    5a04:	8a2f0030 	lwl	t7,48(s1)
    5a08:	9a2f0033 	lwr	t7,51(s1)
    5a0c:	92390335 	lbu	t9,821(s1)
    5a10:	3c014270 	lui	at,0x4270
    5a14:	aa2f00b4 	swl	t7,180(s1)
    5a18:	ba2f00b7 	swr	t7,183(s1)
    5a1c:	962f0034 	lhu	t7,52(s1)
    5a20:	02402025 	move	a0,s2
    5a24:	1320001f 	beqz	t9,5aa4 <BossGanon2_Update+0x1c4>
    5a28:	a62f00b8 	sh	t7,184(s1)
    5a2c:	44810000 	mtc1	at,$f0
    5a30:	3c0142c8 	lui	at,0x42c8
    5a34:	44812000 	mtc1	at,$f4
    5a38:	24180005 	li	t8,5
    5a3c:	44060000 	mfc1	a2,$f0
    5a40:	44070000 	mfc1	a3,$f0
    5a44:	afb80014 	sw	t8,20(sp)
    5a48:	02202825 	move	a1,s1
    5a4c:	0c000000 	jal	0 <func_808FCF40>
    5a50:	e7a40010 	swc1	$f4,16(sp)
    5a54:	96290088 	lhu	t1,136(s1)
    5a58:	3c01c0a0 	lui	at,0xc0a0
    5a5c:	312a0001 	andi	t2,t1,0x1
    5a60:	51400011 	beqzl	t2,5aa8 <BossGanon2_Update+0x1c8>
    5a64:	862b019c 	lh	t3,412(s1)
    5a68:	c6260060 	lwc1	$f6,96(s1)
    5a6c:	44814000 	mtc1	at,$f8
    5a70:	02202025 	move	a0,s1
    5a74:	02402825 	move	a1,s2
    5a78:	4608303c 	c.lt.s	$f6,$f8
    5a7c:	24060005 	li	a2,5
    5a80:	45020006 	bc1fl	5a9c <BossGanon2_Update+0x1bc>
    5a84:	44805000 	mtc1	zero,$f10
    5a88:	0c000000 	jal	0 <func_808FCF40>
    5a8c:	24070014 	li	a3,20
    5a90:	0c000000 	jal	0 <func_808FCF40>
    5a94:	2404180e 	li	a0,6158
    5a98:	44805000 	mtc1	zero,$f10
    5a9c:	00000000 	nop
    5aa0:	e62a0060 	swc1	$f10,96(s1)
    5aa4:	862b019c 	lh	t3,412(s1)
    5aa8:	316c001f 	andi	t4,t3,0x1f
    5aac:	5580000c 	bnezl	t4,5ae0 <BossGanon2_Update+0x200>
    5ab0:	86220318 	lh	v0,792(s1)
    5ab4:	0c000000 	jal	0 <func_808FCF40>
    5ab8:	00000000 	nop
    5abc:	3c010000 	lui	at,0x0
    5ac0:	c4300000 	lwc1	$f16,0(at)
    5ac4:	240d0004 	li	t5,4
    5ac8:	4610003c 	c.lt.s	$f0,$f16
    5acc:	00000000 	nop
    5ad0:	45020003 	bc1fl	5ae0 <BossGanon2_Update+0x200>
    5ad4:	86220318 	lh	v0,792(s1)
    5ad8:	a62d0318 	sh	t5,792(s1)
    5adc:	86220318 	lh	v0,792(s1)
    5ae0:	3c0f0000 	lui	t7,0x0
    5ae4:	00027040 	sll	t6,v0,0x1
    5ae8:	01ee7821 	addu	t7,t7,t6
    5aec:	85ef0000 	lh	t7,0(t7)
    5af0:	2459ffff 	addiu	t9,v0,-1
    5af4:	10400002 	beqz	v0,5b00 <BossGanon2_Update+0x220>
    5af8:	a22f0310 	sb	t7,784(s1)
    5afc:	a6390318 	sh	t9,792(s1)
    5b00:	8624019c 	lh	a0,412(s1)
    5b04:	24012aaa 	li	at,10922
    5b08:	00810019 	multu	a0,at
    5b0c:	00002012 	mflo	a0
    5b10:	00042400 	sll	a0,a0,0x10
    5b14:	0c000000 	jal	0 <func_808FCF40>
    5b18:	00042403 	sra	a0,a0,0x10
    5b1c:	3c014280 	lui	at,0x4280
    5b20:	44819000 	mtc1	at,$f18
    5b24:	3c01433f 	lui	at,0x433f
    5b28:	44813000 	mtc1	at,$f6
    5b2c:	46120102 	mul.s	$f4,$f0,$f18
    5b30:	86220344 	lh	v0,836(s1)
    5b34:	3c063dcc 	lui	a2,0x3dcc
    5b38:	3c07453b 	lui	a3,0x453b
    5b3c:	3c010000 	lui	at,0x0
    5b40:	34c6cccd 	ori	a2,a2,0xcccd
    5b44:	26240360 	addiu	a0,s1,864
    5b48:	46062200 	add.s	$f8,$f4,$f6
    5b4c:	3c0544fa 	lui	a1,0x44fa
    5b50:	2458ffff 	addiu	t8,v0,-1
    5b54:	10400022 	beqz	v0,5be0 <BossGanon2_Update+0x300>
    5b58:	e62801b0 	swc1	$f8,432(s1)
    5b5c:	3c05459c 	lui	a1,0x459c
    5b60:	a6380344 	sh	t8,836(s1)
    5b64:	34a54000 	ori	a1,a1,0x4000
    5b68:	26240360 	addiu	a0,s1,864
    5b6c:	3c063f00 	lui	a2,0x3f00
    5b70:	0c000000 	jal	0 <func_808FCF40>
    5b74:	34e78000 	ori	a3,a3,0x8000
    5b78:	3c0545ab 	lui	a1,0x45ab
    5b7c:	3c07453b 	lui	a3,0x453b
    5b80:	34e78000 	ori	a3,a3,0x8000
    5b84:	34a5e000 	ori	a1,a1,0xe000
    5b88:	26240370 	addiu	a0,s1,880
    5b8c:	0c000000 	jal	0 <func_808FCF40>
    5b90:	3c063f00 	lui	a2,0x3f00
    5b94:	3c063dcc 	lui	a2,0x3dcc
    5b98:	34c6cccd 	ori	a2,a2,0xcccd
    5b9c:	26240368 	addiu	a0,s1,872
    5ba0:	3c0545fa 	lui	a1,0x45fa
    5ba4:	0c000000 	jal	0 <func_808FCF40>
    5ba8:	3c07457a 	lui	a3,0x457a
    5bac:	3c063dcc 	lui	a2,0x3dcc
    5bb0:	34c6cccd 	ori	a2,a2,0xcccd
    5bb4:	26240378 	addiu	a0,s1,888
    5bb8:	3c0545fa 	lui	a1,0x45fa
    5bbc:	0c000000 	jal	0 <func_808FCF40>
    5bc0:	3c07457a 	lui	a3,0x457a
    5bc4:	26240346 	addiu	a0,s1,838
    5bc8:	24050fa0 	li	a1,4000
    5bcc:	2406000a 	li	a2,10
    5bd0:	0c000000 	jal	0 <func_808FCF40>
    5bd4:	240707d0 	li	a3,2000
    5bd8:	10000040 	b	5cdc <BossGanon2_Update+0x3fc>
    5bdc:	862c039c 	lh	t4,924(s1)
    5be0:	c42a0000 	lwc1	$f10,0(at)
    5be4:	3c0742c8 	lui	a3,0x42c8
    5be8:	0c000000 	jal	0 <func_808FCF40>
    5bec:	e62a0364 	swc1	$f10,868(s1)
    5bf0:	3c010000 	lui	at,0x0
    5bf4:	c4300000 	lwc1	$f16,0(at)
    5bf8:	3c0544bb 	lui	a1,0x44bb
    5bfc:	3c063dcc 	lui	a2,0x3dcc
    5c00:	34c6cccd 	ori	a2,a2,0xcccd
    5c04:	34a58000 	ori	a1,a1,0x8000
    5c08:	26240370 	addiu	a0,s1,880
    5c0c:	3c0742c8 	lui	a3,0x42c8
    5c10:	0c000000 	jal	0 <func_808FCF40>
    5c14:	e6300374 	swc1	$f16,884(s1)
    5c18:	8e220190 	lw	v0,400(s1)
    5c1c:	3c090000 	lui	t1,0x0
    5c20:	25290000 	addiu	t1,t1,0
    5c24:	11220007 	beq	t1,v0,5c44 <BossGanon2_Update+0x364>
    5c28:	3c0a0000 	lui	t2,0x0
    5c2c:	254a0000 	addiu	t2,t2,0
    5c30:	11420004 	beq	t2,v0,5c44 <BossGanon2_Update+0x364>
    5c34:	3c0b0000 	lui	t3,0x0
    5c38:	256b0000 	addiu	t3,t3,0
    5c3c:	15620014 	bne	t3,v0,5c90 <BossGanon2_Update+0x3b0>
    5c40:	26240368 	addiu	a0,s1,872
    5c44:	3c063dcc 	lui	a2,0x3dcc
    5c48:	34c6cccd 	ori	a2,a2,0xcccd
    5c4c:	26240368 	addiu	a0,s1,872
    5c50:	3c05447a 	lui	a1,0x447a
    5c54:	0c000000 	jal	0 <func_808FCF40>
    5c58:	3c0742c8 	lui	a3,0x42c8
    5c5c:	3c063dcc 	lui	a2,0x3dcc
    5c60:	34c6cccd 	ori	a2,a2,0xcccd
    5c64:	26240378 	addiu	a0,s1,888
    5c68:	3c05447a 	lui	a1,0x447a
    5c6c:	0c000000 	jal	0 <func_808FCF40>
    5c70:	3c0742c8 	lui	a3,0x42c8
    5c74:	26240346 	addiu	a0,s1,838
    5c78:	2405f060 	li	a1,-4000
    5c7c:	2406000a 	li	a2,10
    5c80:	0c000000 	jal	0 <func_808FCF40>
    5c84:	24070064 	li	a3,100
    5c88:	10000014 	b	5cdc <BossGanon2_Update+0x3fc>
    5c8c:	862c039c 	lh	t4,924(s1)
    5c90:	3c05459c 	lui	a1,0x459c
    5c94:	3c063dcc 	lui	a2,0x3dcc
    5c98:	34c6cccd 	ori	a2,a2,0xcccd
    5c9c:	34a54000 	ori	a1,a1,0x4000
    5ca0:	0c000000 	jal	0 <func_808FCF40>
    5ca4:	3c074348 	lui	a3,0x4348
    5ca8:	3c05459c 	lui	a1,0x459c
    5cac:	3c063dcc 	lui	a2,0x3dcc
    5cb0:	34c6cccd 	ori	a2,a2,0xcccd
    5cb4:	34a54000 	ori	a1,a1,0x4000
    5cb8:	26240378 	addiu	a0,s1,888
    5cbc:	0c000000 	jal	0 <func_808FCF40>
    5cc0:	3c074348 	lui	a3,0x4348
    5cc4:	26240346 	addiu	a0,s1,838
    5cc8:	00002825 	move	a1,zero
    5ccc:	2406000a 	li	a2,10
    5cd0:	0c000000 	jal	0 <func_808FCF40>
    5cd4:	24070064 	li	a3,100
    5cd8:	862c039c 	lh	t4,924(s1)
    5cdc:	2401004b 	li	at,75
    5ce0:	00008025 	move	s0,zero
    5ce4:	5181000a 	beql	t4,at,5d10 <BossGanon2_Update+0x430>
    5ce8:	922d0337 	lbu	t5,823(s1)
    5cec:	c632035c 	lwc1	$f18,860(s1)
    5cf0:	c6240360 	lwc1	$f4,864(s1)
    5cf4:	c628036c 	lwc1	$f8,876(s1)
    5cf8:	c62a0370 	lwc1	$f10,880(s1)
    5cfc:	46049180 	add.s	$f6,$f18,$f4
    5d00:	460a4400 	add.s	$f16,$f8,$f10
    5d04:	e626035c 	swc1	$f6,860(s1)
    5d08:	e630036c 	swc1	$f16,876(s1)
    5d0c:	922d0337 	lbu	t5,823(s1)
    5d10:	24010002 	li	at,2
    5d14:	15a10005 	bne	t5,at,5d2c <BossGanon2_Update+0x44c>
    5d18:	00000000 	nop
    5d1c:	44809000 	mtc1	zero,$f18
    5d20:	44802000 	mtc1	zero,$f4
    5d24:	e6320378 	swc1	$f18,888(s1)
    5d28:	e6240368 	swc1	$f4,872(s1)
    5d2c:	16000004 	bnez	s0,5d40 <BossGanon2_Update+0x460>
    5d30:	24010001 	li	at,1
    5d34:	3c010000 	lui	at,0x0
    5d38:	10000009 	b	5d60 <BossGanon2_Update+0x480>
    5d3c:	c4220000 	lwc1	$f2,0(at)
    5d40:	16010004 	bne	s0,at,5d54 <BossGanon2_Update+0x474>
    5d44:	3c013f00 	lui	at,0x3f00
    5d48:	44811000 	mtc1	at,$f2
    5d4c:	10000005 	b	5d64 <BossGanon2_Update+0x484>
    5d50:	c62a0364 	lwc1	$f10,868(s1)
    5d54:	3c013f80 	lui	at,0x3f80
    5d58:	44811000 	mtc1	at,$f2
    5d5c:	00000000 	nop
    5d60:	c62a0364 	lwc1	$f10,868(s1)
    5d64:	c626035c 	lwc1	$f6,860(s1)
    5d68:	e7a20068 	swc1	$f2,104(sp)
    5d6c:	4600540d 	trunc.w.s	$f16,$f10
    5d70:	4600320d 	trunc.w.s	$f8,$f6
    5d74:	440a8000 	mfc1	t2,$f16
    5d78:	00000000 	nop
    5d7c:	000a5c00 	sll	t3,t2,0x10
    5d80:	000b6403 	sra	t4,t3,0x10
    5d84:	020c0019 	multu	s0,t4
    5d88:	44184000 	mfc1	t8,$f8
    5d8c:	00006812 	mflo	t5
    5d90:	030d2021 	addu	a0,t8,t5
    5d94:	00042400 	sll	a0,a0,0x10
    5d98:	0c000000 	jal	0 <func_808FCF40>
    5d9c:	00042403 	sra	a0,a0,0x10
    5da0:	c7a20068 	lwc1	$f2,104(sp)
    5da4:	c6240368 	lwc1	$f4,872(s1)
    5da8:	00107040 	sll	t6,s0,0x1
    5dac:	46020482 	mul.s	$f18,$f0,$f2
    5db0:	022e1021 	addu	v0,s1,t6
    5db4:	46049182 	mul.s	$f6,$f18,$f4
    5db8:	4600320d 	trunc.w.s	$f8,$f6
    5dbc:	44194000 	mfc1	t9,$f8
    5dc0:	00000000 	nop
    5dc4:	a4590348 	sh	t9,840(v0)
    5dc8:	c6320374 	lwc1	$f18,884(s1)
    5dcc:	c62a036c 	lwc1	$f10,876(s1)
    5dd0:	afa20038 	sw	v0,56(sp)
    5dd4:	4600910d 	trunc.w.s	$f4,$f18
    5dd8:	4600540d 	trunc.w.s	$f16,$f10
    5ddc:	440d2000 	mfc1	t5,$f4
    5de0:	00000000 	nop
    5de4:	000d7400 	sll	t6,t5,0x10
    5de8:	000e7c03 	sra	t7,t6,0x10
    5dec:	020f0019 	multu	s0,t7
    5df0:	440c8000 	mfc1	t4,$f16
    5df4:	0000c812 	mflo	t9
    5df8:	01992021 	addu	a0,t4,t9
    5dfc:	00042400 	sll	a0,a0,0x10
    5e00:	0c000000 	jal	0 <func_808FCF40>
    5e04:	00042403 	sra	a0,a0,0x10
    5e08:	c7a20068 	lwc1	$f2,104(sp)
    5e0c:	c6280378 	lwc1	$f8,888(s1)
    5e10:	26100001 	addiu	s0,s0,1
    5e14:	46020182 	mul.s	$f6,$f0,$f2
    5e18:	00108400 	sll	s0,s0,0x10
    5e1c:	8fa20038 	lw	v0,56(sp)
    5e20:	00108403 	sra	s0,s0,0x10
    5e24:	2a010005 	slti	at,s0,5
    5e28:	46083282 	mul.s	$f10,$f6,$f8
    5e2c:	4600540d 	trunc.w.s	$f16,$f10
    5e30:	440a8000 	mfc1	t2,$f16
    5e34:	1420ffbd 	bnez	at,5d2c <BossGanon2_Update+0x44c>
    5e38:	a44a0352 	sh	t2,850(v0)
    5e3c:	02202025 	move	a0,s1
    5e40:	0c000000 	jal	0 <func_808FCF40>
    5e44:	02402825 	move	a1,s2
    5e48:	02202025 	move	a0,s1
    5e4c:	0c000000 	jal	0 <func_808FCF40>
    5e50:	02402825 	move	a1,s2
    5e54:	3c010001 	lui	at,0x1
    5e58:	34211e60 	ori	at,at,0x1e60
    5e5c:	02418021 	addu	s0,s2,at
    5e60:	26260424 	addiu	a2,s1,1060
    5e64:	afa60034 	sw	a2,52(sp)
    5e68:	02002825 	move	a1,s0
    5e6c:	0c000000 	jal	0 <func_808FCF40>
    5e70:	02402025 	move	a0,s2
    5e74:	8e380190 	lw	t8,400(s1)
    5e78:	3c0b0000 	lui	t3,0x0
    5e7c:	256b0000 	addiu	t3,t3,0
    5e80:	51780019 	beql	t3,t8,5ee8 <BossGanon2_Update+0x608>
    5e84:	86220332 	lh	v0,818(s1)
    5e88:	02202025 	move	a0,s1
    5e8c:	0c000000 	jal	0 <func_808FCF40>
    5e90:	02402825 	move	a1,s2
    5e94:	02402025 	move	a0,s2
    5e98:	02002825 	move	a1,s0
    5e9c:	0c000000 	jal	0 <func_808FCF40>
    5ea0:	8fa60034 	lw	a2,52(sp)
    5ea4:	26260444 	addiu	a2,s1,1092
    5ea8:	afa60034 	sw	a2,52(sp)
    5eac:	02402025 	move	a0,s2
    5eb0:	0c000000 	jal	0 <func_808FCF40>
    5eb4:	02002825 	move	a1,s0
    5eb8:	02402025 	move	a0,s2
    5ebc:	02002825 	move	a1,s0
    5ec0:	0c000000 	jal	0 <func_808FCF40>
    5ec4:	8fa60034 	lw	a2,52(sp)
    5ec8:	862d039e 	lh	t5,926(s1)
    5ecc:	8fa60034 	lw	a2,52(sp)
    5ed0:	55a00005 	bnezl	t5,5ee8 <BossGanon2_Update+0x608>
    5ed4:	86220332 	lh	v0,818(s1)
    5ed8:	02402025 	move	a0,s2
    5edc:	0c000000 	jal	0 <func_808FCF40>
    5ee0:	02002825 	move	a1,s0
    5ee4:	86220332 	lh	v0,818(s1)
    5ee8:	1440004f 	bnez	v0,6028 <BossGanon2_Update+0x748>
    5eec:	00000000 	nop
    5ef0:	92230336 	lbu	v1,822(s1)
    5ef4:	24010002 	li	at,2
    5ef8:	1060004b 	beqz	v1,6028 <BossGanon2_Update+0x748>
    5efc:	00000000 	nop
    5f00:	1461000a 	bne	v1,at,5f2c <BossGanon2_Update+0x64c>
    5f04:	3c0141f0 	lui	at,0x41f0
    5f08:	44816000 	mtc1	at,$f12
    5f0c:	0c000000 	jal	0 <func_808FCF40>
    5f10:	00000000 	nop
    5f14:	4600048d 	trunc.w.s	$f18,$f0
    5f18:	44199000 	mfc1	t9,$f18
    5f1c:	00000000 	nop
    5f20:	27290008 	addiu	t1,t9,8
    5f24:	1000000a 	b	5f50 <BossGanon2_Update+0x670>
    5f28:	a6290332 	sh	t1,818(s1)
    5f2c:	3c014270 	lui	at,0x4270
    5f30:	44816000 	mtc1	at,$f12
    5f34:	0c000000 	jal	0 <func_808FCF40>
    5f38:	00000000 	nop
    5f3c:	4600010d 	trunc.w.s	$f4,$f0
    5f40:	440d2000 	mfc1	t5,$f4
    5f44:	00000000 	nop
    5f48:	25ae000a 	addiu	t6,t5,10
    5f4c:	a62e0332 	sh	t6,818(s1)
    5f50:	3c010001 	lui	at,0x1
    5f54:	a2200339 	sb	zero,825(s1)
    5f58:	00320821 	addu	at,at,s2
    5f5c:	a0200ae2 	sb	zero,2786(at)
    5f60:	3c010000 	lui	at,0x0
    5f64:	0c000000 	jal	0 <func_808FCF40>
    5f68:	c42c0000 	lwc1	$f12,0(at)
    5f6c:	4600018d 	trunc.w.s	$f6,$f0
    5f70:	3c010001 	lui	at,0x1
    5f74:	00320821 	addu	at,at,s2
    5f78:	44805000 	mtc1	zero,$f10
    5f7c:	44093000 	mfc1	t1,$f6
    5f80:	3c100000 	lui	s0,0x0
    5f84:	26100000 	addiu	s0,s0,0
    5f88:	252a0001 	addiu	t2,t1,1
    5f8c:	a02a0ae1 	sb	t2,2785(at)
    5f90:	3c013f80 	lui	at,0x3f80
    5f94:	44814000 	mtc1	at,$f8
    5f98:	3c010001 	lui	at,0x1
    5f9c:	00320821 	addu	at,at,s2
    5fa0:	e4280afc 	swc1	$f8,2812(at)
    5fa4:	e60a0004 	swc1	$f10,4(s0)
    5fa8:	c6100004 	lwc1	$f16,4(s0)
    5fac:	e6100000 	swc1	$f16,0(s0)
    5fb0:	c6120000 	lwc1	$f18,0(s0)
    5fb4:	0c000000 	jal	0 <func_808FCF40>
    5fb8:	e6120008 	swc1	$f18,8(s0)
    5fbc:	3c013f00 	lui	at,0x3f00
    5fc0:	44812000 	mtc1	at,$f4
    5fc4:	3c01447a 	lui	at,0x447a
    5fc8:	4604003c 	c.lt.s	$f0,$f4
    5fcc:	00000000 	nop
    5fd0:	45020006 	bc1fl	5fec <BossGanon2_Update+0x70c>
    5fd4:	02002025 	move	a0,s0
    5fd8:	44816000 	mtc1	at,$f12
    5fdc:	0c000000 	jal	0 <func_808FCF40>
    5fe0:	00000000 	nop
    5fe4:	e6000008 	swc1	$f0,8(s0)
    5fe8:	02002025 	move	a0,s0
    5fec:	0c000000 	jal	0 <func_808FCF40>
    5ff0:	2405282e 	li	a1,10286
    5ff4:	44803000 	mtc1	zero,$f6
    5ff8:	240b00ff 	li	t3,255
    5ffc:	24180005 	li	t8,5
    6000:	a62b0328 	sh	t3,808(s1)
    6004:	a6380330 	sh	t8,816(s1)
    6008:	3c010000 	lui	at,0x0
    600c:	e626032c 	swc1	$f6,812(s1)
    6010:	0c000000 	jal	0 <func_808FCF40>
    6014:	c42c0000 	lwc1	$f12,0(at)
    6018:	4600020d 	trunc.w.s	$f8,$f0
    601c:	440e4000 	mfc1	t6,$f8
    6020:	10000004 	b	6034 <BossGanon2_Update+0x754>
    6024:	a62e0340 	sh	t6,832(s1)
    6028:	10400002 	beqz	v0,6034 <BossGanon2_Update+0x754>
    602c:	244fffff 	addiu	t7,v0,-1
    6030:	a62f0332 	sh	t7,818(s1)
    6034:	3c010001 	lui	at,0x1
    6038:	02418021 	addu	s0,s2,at
    603c:	c6100afc 	lwc1	$f16,2812(s0)
    6040:	44805000 	mtc1	zero,$f10
    6044:	3c010001 	lui	at,0x1
    6048:	00320821 	addu	at,at,s2
    604c:	4610503c 	c.lt.s	$f10,$f16
    6050:	24080002 	li	t0,2
    6054:	45020015 	bc1fl	60ac <BossGanon2_Update+0x7cc>
    6058:	a0200b0d 	sb	zero,2829(at)
    605c:	922c0336 	lbu	t4,822(s1)
    6060:	24190001 	li	t9,1
    6064:	51800011 	beqzl	t4,60ac <BossGanon2_Update+0x7cc>
    6068:	a0200b0d 	sb	zero,2829(at)
    606c:	3c010001 	lui	at,0x1
    6070:	00320821 	addu	at,at,s2
    6074:	a0390b0d 	sb	t9,2829(at)
    6078:	3c014348 	lui	at,0x4348
    607c:	44812000 	mtc1	at,$f4
    6080:	c6120afc 	lwc1	$f18,2812(s0)
    6084:	240200ff 	li	v0,255
    6088:	a2020b0e 	sb	v0,2830(s0)
    608c:	46049182 	mul.s	$f6,$f18,$f4
    6090:	a2020b0f 	sb	v0,2831(s0)
    6094:	a2020b10 	sb	v0,2832(s0)
    6098:	4600320d 	trunc.w.s	$f8,$f6
    609c:	44184000 	mfc1	t8,$f8
    60a0:	10000002 	b	60ac <BossGanon2_Update+0x7cc>
    60a4:	a2180b11 	sb	t8,2833(s0)
    60a8:	a0200b0d 	sb	zero,2829(at)
    60ac:	3c010001 	lui	at,0x1
    60b0:	00320821 	addu	at,at,s2
    60b4:	a0200ae3 	sb	zero,2787(at)
    60b8:	3c010001 	lui	at,0x1
    60bc:	00320821 	addu	at,at,s2
    60c0:	a0280b00 	sb	t0,2816(at)
    60c4:	82220339 	lb	v0,825(s1)
    60c8:	28410019 	slti	at,v0,25
    60cc:	14200006 	bnez	at,60e8 <BossGanon2_Update+0x808>
    60d0:	00401825 	move	v1,v0
    60d4:	24010037 	li	at,55
    60d8:	10610061 	beq	v1,at,6260 <L80903110+0x90>
    60dc:	3c053f80 	lui	a1,0x3f80
    60e0:	100000cf 	b	6420 <L80903360>
    60e4:	00000000 	nop
    60e8:	246d0001 	addiu	t5,v1,1
    60ec:	2da1001a 	sltiu	at,t5,26
    60f0:	102000cb 	beqz	at,6420 <L80903360>
    60f4:	000d6880 	sll	t5,t5,0x2
    60f8:	3c010000 	lui	at,0x0
    60fc:	002d0821 	addu	at,at,t5
    6100:	8c2d0000 	lw	t5,0(at)
    6104:	01a00008 	jr	t5
    6108:	00000000 	nop

0000610c <L8090304C>:
    610c:	3c010001 	lui	at,0x1
    6110:	34210afc 	ori	at,at,0xafc
    6114:	3c063dcc 	lui	a2,0x3dcc
    6118:	34c6cccd 	ori	a2,a2,0xcccd
    611c:	02412021 	addu	a0,s2,at
    6120:	0c000000 	jal	0 <func_808FCF40>
    6124:	3c053f80 	lui	a1,0x3f80
    6128:	100000bd 	b	6420 <L80903360>
    612c:	82220339 	lb	v0,825(s1)

00006130 <L80903070>:
    6130:	3c013f80 	lui	at,0x3f80
    6134:	44810000 	mtc1	at,$f0
    6138:	3c010001 	lui	at,0x1
    613c:	00320821 	addu	at,at,s2
    6140:	240e0003 	li	t6,3
    6144:	a02e0ae2 	sb	t6,2786(at)
    6148:	3c010001 	lui	at,0x1
    614c:	00320821 	addu	at,at,s2
    6150:	240f0004 	li	t7,4
    6154:	a02f0ae1 	sb	t7,2785(at)
    6158:	3c010001 	lui	at,0x1
    615c:	34210afc 	ori	at,at,0xafc
    6160:	3c073c4c 	lui	a3,0x3c4c
    6164:	44050000 	mfc1	a1,$f0
    6168:	44060000 	mfc1	a2,$f0
    616c:	34e7cccd 	ori	a3,a3,0xcccd
    6170:	0c000000 	jal	0 <func_808FCF40>
    6174:	02412021 	addu	a0,s2,at
    6178:	100000a9 	b	6420 <L80903360>
    617c:	82220339 	lb	v0,825(s1)

00006180 <L809030C0>:
    6180:	3c013f80 	lui	at,0x3f80
    6184:	44810000 	mtc1	at,$f0
    6188:	3c010001 	lui	at,0x1
    618c:	00320821 	addu	at,at,s2
    6190:	240c0005 	li	t4,5
    6194:	a02c0ae2 	sb	t4,2786(at)
    6198:	3c010001 	lui	at,0x1
    619c:	00320821 	addu	at,at,s2
    61a0:	24190006 	li	t9,6
    61a4:	a0390ae1 	sb	t9,2785(at)
    61a8:	3c010001 	lui	at,0x1
    61ac:	34210afc 	ori	at,at,0xafc
    61b0:	3c073c4c 	lui	a3,0x3c4c
    61b4:	44050000 	mfc1	a1,$f0
    61b8:	44060000 	mfc1	a2,$f0
    61bc:	34e7cccd 	ori	a3,a3,0xcccd
    61c0:	0c000000 	jal	0 <func_808FCF40>
    61c4:	02412021 	addu	a0,s2,at
    61c8:	10000095 	b	6420 <L80903360>
    61cc:	82220339 	lb	v0,825(s1)

000061d0 <L80903110>:
    61d0:	3c010001 	lui	at,0x1
    61d4:	00320821 	addu	at,at,s2
    61d8:	24090006 	li	t1,6
    61dc:	a0290ae2 	sb	t1,2786(at)
    61e0:	3c010001 	lui	at,0x1
    61e4:	00320821 	addu	at,at,s2
    61e8:	240a0007 	li	t2,7
    61ec:	3c053f30 	lui	a1,0x3f30
    61f0:	3c073d4c 	lui	a3,0x3d4c
    61f4:	a02a0ae1 	sb	t2,2785(at)
    61f8:	34e7cccd 	ori	a3,a3,0xcccd
    61fc:	34a5a3d7 	ori	a1,a1,0xa3d7
    6200:	2624033c 	addiu	a0,s1,828
    6204:	0c000000 	jal	0 <func_808FCF40>
    6208:	3c063f80 	lui	a2,0x3f80
    620c:	8e041de4 	lw	a0,7652(s0)
    6210:	00800821 	move	at,a0
    6214:	00042080 	sll	a0,a0,0x2
    6218:	00812021 	addu	a0,a0,at
    621c:	00042300 	sll	a0,a0,0xc
    6220:	00042400 	sll	a0,a0,0x10
    6224:	0c000000 	jal	0 <func_808FCF40>
    6228:	00042403 	sra	a0,a0,0x10
    622c:	3c010000 	lui	at,0x0
    6230:	c42a0000 	lwc1	$f10,0(at)
    6234:	3c010000 	lui	at,0x0
    6238:	c4240000 	lwc1	$f4,0(at)
    623c:	c630033c 	lwc1	$f16,828(s1)
    6240:	3c010001 	lui	at,0x1
    6244:	46040182 	mul.s	$f6,$f0,$f4
    6248:	46105480 	add.s	$f18,$f10,$f16
    624c:	00320821 	addu	at,at,s2
    6250:	46123200 	add.s	$f8,$f6,$f18
    6254:	e4280afc 	swc1	$f8,2812(at)
    6258:	10000071 	b	6420 <L80903360>
    625c:	82220339 	lb	v0,825(s1)
    6260:	3c010001 	lui	at,0x1
    6264:	00320821 	addu	at,at,s2
    6268:	a0280ae2 	sb	t0,2786(at)
    626c:	3c010001 	lui	at,0x1
    6270:	00320821 	addu	at,at,s2
    6274:	a0200ae1 	sb	zero,2785(at)
    6278:	3c010001 	lui	at,0x1
    627c:	34210afc 	ori	at,at,0xafc
    6280:	3c063d4c 	lui	a2,0x3d4c
    6284:	34c6cccd 	ori	a2,a2,0xcccd
    6288:	0c000000 	jal	0 <func_808FCF40>
    628c:	02412021 	addu	a0,s2,at
    6290:	10000063 	b	6420 <L80903360>
    6294:	82220339 	lb	v0,825(s1)

00006298 <L809031D8>:
    6298:	3c010001 	lui	at,0x1
    629c:	00320821 	addu	at,at,s2
    62a0:	a0280ae2 	sb	t0,2786(at)
    62a4:	3c010001 	lui	at,0x1
    62a8:	00320821 	addu	at,at,s2
    62ac:	240b0008 	li	t3,8
    62b0:	3c053f30 	lui	a1,0x3f30
    62b4:	3c073d4c 	lui	a3,0x3d4c
    62b8:	a02b0ae1 	sb	t3,2785(at)
    62bc:	34e7cccd 	ori	a3,a3,0xcccd
    62c0:	34a5a3d7 	ori	a1,a1,0xa3d7
    62c4:	2624033c 	addiu	a0,s1,828
    62c8:	0c000000 	jal	0 <func_808FCF40>
    62cc:	3c063f80 	lui	a2,0x3f80
    62d0:	8e041de4 	lw	a0,7652(s0)
    62d4:	00800821 	move	at,a0
    62d8:	000420c0 	sll	a0,a0,0x3
    62dc:	00812023 	subu	a0,a0,at
    62e0:	00042300 	sll	a0,a0,0xc
    62e4:	00042400 	sll	a0,a0,0x10
    62e8:	0c000000 	jal	0 <func_808FCF40>
    62ec:	00042403 	sra	a0,a0,0x10
    62f0:	3c010000 	lui	at,0x0
    62f4:	c42a0000 	lwc1	$f10,0(at)
    62f8:	3c010000 	lui	at,0x0
    62fc:	c4260000 	lwc1	$f6,0(at)
    6300:	c630033c 	lwc1	$f16,828(s1)
    6304:	3c010001 	lui	at,0x1
    6308:	46060482 	mul.s	$f18,$f0,$f6
    630c:	46105100 	add.s	$f4,$f10,$f16
    6310:	00320821 	addu	at,at,s2
    6314:	46049200 	add.s	$f8,$f18,$f4
    6318:	e4280afc 	swc1	$f8,2812(at)
    631c:	10000040 	b	6420 <L80903360>
    6320:	82220339 	lb	v0,825(s1)

00006324 <L80903264>:
    6324:	3c010001 	lui	at,0x1
    6328:	00320821 	addu	at,at,s2
    632c:	a0200ae2 	sb	zero,2786(at)
    6330:	3c010001 	lui	at,0x1
    6334:	00320821 	addu	at,at,s2
    6338:	24180008 	li	t8,8
    633c:	a0380ae1 	sb	t8,2785(at)
    6340:	3c010001 	lui	at,0x1
    6344:	34210afc 	ori	at,at,0xafc
    6348:	3c063ca3 	lui	a2,0x3ca3
    634c:	34c6d70a 	ori	a2,a2,0xd70a
    6350:	02412021 	addu	a0,s2,at
    6354:	0c000000 	jal	0 <func_808FCF40>
    6358:	3c053f80 	lui	a1,0x3f80
    635c:	10000030 	b	6420 <L80903360>
    6360:	82220339 	lb	v0,825(s1)

00006364 <L809032A4>:
    6364:	3c010001 	lui	at,0x1
    6368:	00320821 	addu	at,at,s2
    636c:	a0200ae2 	sb	zero,2786(at)
    6370:	3c010001 	lui	at,0x1
    6374:	00320821 	addu	at,at,s2
    6378:	240d0009 	li	t5,9
    637c:	a02d0ae1 	sb	t5,2785(at)
    6380:	10000027 	b	6420 <L80903360>
    6384:	82220339 	lb	v0,825(s1)

00006388 <L809032C8>:
    6388:	3c010001 	lui	at,0x1
    638c:	00320821 	addu	at,at,s2
    6390:	240e000a 	li	t6,10
    6394:	a02e0ae2 	sb	t6,2786(at)
    6398:	3c010001 	lui	at,0x1
    639c:	00320821 	addu	at,at,s2
    63a0:	240f0009 	li	t7,9
    63a4:	a02f0ae1 	sb	t7,2785(at)
    63a8:	1000001d 	b	6420 <L80903360>
    63ac:	82220339 	lb	v0,825(s1)

000063b0 <L809032F0>:
    63b0:	3c010001 	lui	at,0x1
    63b4:	00320821 	addu	at,at,s2
    63b8:	240c000a 	li	t4,10
    63bc:	a02c0ae2 	sb	t4,2786(at)
    63c0:	3c010001 	lui	at,0x1
    63c4:	00320821 	addu	at,at,s2
    63c8:	2419000b 	li	t9,11
    63cc:	a0390ae1 	sb	t9,2785(at)
    63d0:	10000013 	b	6420 <L80903360>
    63d4:	82220339 	lb	v0,825(s1)

000063d8 <L80903318>:
    63d8:	3c010001 	lui	at,0x1
    63dc:	00320821 	addu	at,at,s2
    63e0:	24090009 	li	t1,9
    63e4:	a0290ae2 	sb	t1,2786(at)
    63e8:	3c010001 	lui	at,0x1
    63ec:	00320821 	addu	at,at,s2
    63f0:	240a000b 	li	t2,11
    63f4:	a02a0ae1 	sb	t2,2785(at)
    63f8:	10000009 	b	6420 <L80903360>
    63fc:	82220339 	lb	v0,825(s1)

00006400 <L80903340>:
    6400:	3c010001 	lui	at,0x1
    6404:	00320821 	addu	at,at,s2
    6408:	a0200ae2 	sb	zero,2786(at)
    640c:	3c010001 	lui	at,0x1
    6410:	00320821 	addu	at,at,s2
    6414:	240b000c 	li	t3,12
    6418:	a02b0ae1 	sb	t3,2785(at)
    641c:	82220339 	lb	v0,825(s1)

00006420 <L80903360>:
    6420:	04400002 	bltz	v0,642c <L80903360+0xc>
    6424:	00008025 	move	s0,zero
    6428:	a2200339 	sb	zero,825(s1)
    642c:	3c020000 	lui	v0,0x0
    6430:	24420000 	addiu	v0,v0,0
    6434:	90580000 	lbu	t8,0(v0)
    6438:	262d0024 	addiu	t5,s1,36
    643c:	1300004b 	beqz	t8,656c <L80903360+0x14c>
    6440:	00000000 	nop
    6444:	a0400000 	sb	zero,0(v0)
    6448:	afad0038 	sw	t5,56(sp)
    644c:	3c010000 	lui	at,0x0
    6450:	0c000000 	jal	0 <func_808FCF40>
    6454:	c42c0000 	lwc1	$f12,0(at)
    6458:	3c014220 	lui	at,0x4220
    645c:	44816000 	mtc1	at,$f12
    6460:	0c000000 	jal	0 <func_808FCF40>
    6464:	e7a00048 	swc1	$f0,72(sp)
    6468:	3c014120 	lui	at,0x4120
    646c:	44815000 	mtc1	at,$f10
    6470:	8faf0038 	lw	t7,56(sp)
    6474:	27ae0058 	addiu	t6,sp,88
    6478:	460a0400 	add.s	$f16,$f0,$f10
    647c:	3c014496 	lui	at,0x4496
    6480:	44813000 	mtc1	at,$f6
    6484:	e7b00044 	swc1	$f16,68(sp)
    6488:	8df90000 	lw	t9,0(t7)
    648c:	add90000 	sw	t9,0(t6)
    6490:	8dec0004 	lw	t4,4(t7)
    6494:	adcc0004 	sw	t4,4(t6)
    6498:	8df90008 	lw	t9,8(t7)
    649c:	add90008 	sw	t9,8(t6)
    64a0:	c7ac0048 	lwc1	$f12,72(sp)
    64a4:	0c000000 	jal	0 <func_808FCF40>
    64a8:	e7a6005c 	swc1	$f6,92(sp)
    64ac:	c7b20044 	lwc1	$f18,68(sp)
    64b0:	c7ac0048 	lwc1	$f12,72(sp)
    64b4:	46120102 	mul.s	$f4,$f0,$f18
    64b8:	0c000000 	jal	0 <func_808FCF40>
    64bc:	e7a4004c 	swc1	$f4,76(sp)
    64c0:	c7a80044 	lwc1	$f8,68(sp)
    64c4:	3c014170 	lui	at,0x4170
    64c8:	44816000 	mtc1	at,$f12
    64cc:	46080282 	mul.s	$f10,$f0,$f8
    64d0:	0c000000 	jal	0 <func_808FCF40>
    64d4:	e7aa0054 	swc1	$f10,84(sp)
    64d8:	3c014120 	lui	at,0x4120
    64dc:	44811000 	mtc1	at,$f2
    64e0:	c7a4004c 	lwc1	$f4,76(sp)
    64e4:	3c010000 	lui	at,0x0
    64e8:	c42e0000 	lwc1	$f14,0(at)
    64ec:	46022202 	mul.s	$f8,$f4,$f2
    64f0:	c7a40054 	lwc1	$f4,84(sp)
    64f4:	3c014170 	lui	at,0x4170
    64f8:	44818000 	mtc1	at,$f16
    64fc:	c7b20058 	lwc1	$f18,88(sp)
    6500:	3c010000 	lui	at,0x0
    6504:	46100180 	add.s	$f6,$f0,$f16
    6508:	460e4282 	mul.s	$f10,$f8,$f14
    650c:	c42c0000 	lwc1	$f12,0(at)
    6510:	46022202 	mul.s	$f8,$f4,$f2
    6514:	e7a60050 	swc1	$f6,80(sp)
    6518:	c7a60060 	lwc1	$f6,96(sp)
    651c:	460a9400 	add.s	$f16,$f18,$f10
    6520:	460e4482 	mul.s	$f18,$f8,$f14
    6524:	e7b00058 	swc1	$f16,88(sp)
    6528:	46123280 	add.s	$f10,$f6,$f18
    652c:	0c000000 	jal	0 <func_808FCF40>
    6530:	e7aa0060 	swc1	$f10,96(sp)
    6534:	3c010000 	lui	at,0x0
    6538:	c4300000 	lwc1	$f16,0(at)
    653c:	02402025 	move	a0,s2
    6540:	27a50058 	addiu	a1,sp,88
    6544:	46100100 	add.s	$f4,$f0,$f16
    6548:	27a6004c 	addiu	a2,sp,76
    654c:	44072000 	mfc1	a3,$f4
    6550:	0c000000 	jal	0 <func_808FCF40>
    6554:	00000000 	nop
    6558:	26100001 	addiu	s0,s0,1
    655c:	3210ffff 	andi	s0,s0,0xffff
    6560:	2a010064 	slti	at,s0,100
    6564:	1420ffb9 	bnez	at,644c <L80903360+0x2c>
    6568:	00000000 	nop
    656c:	3c010000 	lui	at,0x0
    6570:	c4260000 	lwc1	$f6,0(at)
    6574:	c6280388 	lwc1	$f8,904(s1)
    6578:	02202025 	move	a0,s1
    657c:	02402825 	move	a1,s2
    6580:	46064480 	add.s	$f18,$f8,$f6
    6584:	0c000000 	jal	0 <func_808FCF40>
    6588:	e6320388 	swc1	$f18,904(s1)
    658c:	8fbf002c 	lw	ra,44(sp)
    6590:	8fb00020 	lw	s0,32(sp)
    6594:	8fb10024 	lw	s1,36(sp)
    6598:	8fb20028 	lw	s2,40(sp)
    659c:	03e00008 	jr	ra
    65a0:	27bd0078 	addiu	sp,sp,120

000065a4 <func_809034E4>:
    65a4:	27bdfd20 	addiu	sp,sp,-736
    65a8:	afbe0068 	sw	s8,104(sp)
    65ac:	afb70064 	sw	s7,100(sp)
    65b0:	afb60060 	sw	s6,96(sp)
    65b4:	afbf006c 	sw	ra,108(sp)
    65b8:	afb5005c 	sw	s5,92(sp)
    65bc:	afb40058 	sw	s4,88(sp)
    65c0:	afb30054 	sw	s3,84(sp)
    65c4:	afb20050 	sw	s2,80(sp)
    65c8:	afb1004c 	sw	s1,76(sp)
    65cc:	afb00048 	sw	s0,72(sp)
    65d0:	f7be0040 	sdc1	$f30,64(sp)
    65d4:	f7bc0038 	sdc1	$f28,56(sp)
    65d8:	f7ba0030 	sdc1	$f26,48(sp)
    65dc:	f7b80028 	sdc1	$f24,40(sp)
    65e0:	f7b60020 	sdc1	$f22,32(sp)
    65e4:	f7b40018 	sdc1	$f20,24(sp)
    65e8:	27b6018c 	addiu	s6,sp,396
    65ec:	2417000c 	li	s7,12
    65f0:	27be009c 	addiu	s8,sp,156
    65f4:	00001025 	move	v0,zero
    65f8:	00570019 	multu	v0,s7
    65fc:	8c980000 	lw	t8,0(a0)
    6600:	24420001 	addiu	v0,v0,1
    6604:	00021400 	sll	v0,v0,0x10
    6608:	00021403 	sra	v0,v0,0x10
    660c:	28410014 	slti	at,v0,20
    6610:	00001812 	mflo	v1
    6614:	02c37021 	addu	t6,s6,v1
    6618:	add80000 	sw	t8,0(t6)
    661c:	8c8f0004 	lw	t7,4(a0)
    6620:	03c3c821 	addu	t9,s8,v1
    6624:	adcf0004 	sw	t7,4(t6)
    6628:	8c980008 	lw	t8,8(a0)
    662c:	add80008 	sw	t8,8(t6)
    6630:	8caa0000 	lw	t2,0(a1)
    6634:	af2a0000 	sw	t2,0(t9)
    6638:	8ca90004 	lw	t1,4(a1)
    663c:	af290004 	sw	t1,4(t9)
    6640:	8caa0008 	lw	t2,8(a1)
    6644:	1420ffec 	bnez	at,65f8 <func_809034E4+0x54>
    6648:	af2a0008 	sw	t2,8(t9)
    664c:	3c020000 	lui	v0,0x0
    6650:	24420000 	addiu	v0,v0,0
    6654:	8c4d0000 	lw	t5,0(v0)
    6658:	3c0b0000 	lui	t3,0x0
    665c:	256b0000 	addiu	t3,t3,0
    6660:	ad6d0000 	sw	t5,0(t3)
    6664:	8c4c0004 	lw	t4,4(v0)
    6668:	3c030000 	lui	v1,0x0
    666c:	24630000 	addiu	v1,v1,0
    6670:	ad6c0004 	sw	t4,4(t3)
    6674:	8c4d0008 	lw	t5,8(v0)
    6678:	3c100000 	lui	s0,0x0
    667c:	26100000 	addiu	s0,s0,0
    6680:	ad6d0008 	sw	t5,8(t3)
    6684:	8c6f0000 	lw	t7,0(v1)
    6688:	27ab02d0 	addiu	t3,sp,720
    668c:	0000a025 	move	s4,zero
    6690:	ac4f0000 	sw	t7,0(v0)
    6694:	8c6e0004 	lw	t6,4(v1)
    6698:	ac4e0004 	sw	t6,4(v0)
    669c:	8c6f0008 	lw	t7,8(v1)
    66a0:	ac4f0008 	sw	t7,8(v0)
    66a4:	8e190000 	lw	t9,0(s0)
    66a8:	ac790000 	sw	t9,0(v1)
    66ac:	8e180004 	lw	t8,4(s0)
    66b0:	ac780004 	sw	t8,4(v1)
    66b4:	8e190008 	lw	t9,8(s0)
    66b8:	ac790008 	sw	t9,8(v1)
    66bc:	8c8a0000 	lw	t2,0(a0)
    66c0:	ae0a0000 	sw	t2,0(s0)
    66c4:	8c890004 	lw	t1,4(a0)
    66c8:	8e0d0000 	lw	t5,0(s0)
    66cc:	ae090004 	sw	t1,4(s0)
    66d0:	8c8a0008 	lw	t2,8(a0)
    66d4:	ae0a0008 	sw	t2,8(s0)
    66d8:	ad6d0000 	sw	t5,0(t3)
    66dc:	8e0c0004 	lw	t4,4(s0)
    66e0:	ad6c0004 	sw	t4,4(t3)
    66e4:	8e0d0008 	lw	t5,8(s0)
    66e8:	ad6d0008 	sw	t5,8(t3)
    66ec:	c7a602d0 	lwc1	$f6,720(sp)
    66f0:	c604000c 	lwc1	$f4,12(s0)
    66f4:	c7aa02d4 	lwc1	$f10,724(sp)
    66f8:	c6080010 	lwc1	$f8,16(s0)
    66fc:	46062501 	sub.s	$f20,$f4,$f6
    6700:	c7a602d8 	lwc1	$f6,728(sp)
    6704:	c6040014 	lwc1	$f4,20(s0)
    6708:	afa502e4 	sw	a1,740(sp)
    670c:	4600a386 	mov.s	$f14,$f20
    6710:	46062581 	sub.s	$f22,$f4,$f6
    6714:	460a4601 	sub.s	$f24,$f8,$f10
    6718:	0c000000 	jal	0 <func_808FCF40>
    671c:	4600b306 	mov.s	$f12,$f22
    6720:	4614a682 	mul.s	$f26,$f20,$f20
    6724:	a7a202ca 	sh	v0,714(sp)
    6728:	4600c386 	mov.s	$f14,$f24
    672c:	4616b702 	mul.s	$f28,$f22,$f22
    6730:	461cd000 	add.s	$f0,$f26,$f28
    6734:	0c000000 	jal	0 <func_808FCF40>
    6738:	46000304 	sqrt.s	$f12,$f0
    673c:	c60c0018 	lwc1	$f12,24(s0)
    6740:	c608000c 	lwc1	$f8,12(s0)
    6744:	c610001c 	lwc1	$f16,28(s0)
    6748:	c60a0010 	lwc1	$f10,16(s0)
    674c:	46086081 	sub.s	$f2,$f12,$f8
    6750:	c6060024 	lwc1	$f6,36(s0)
    6754:	c6140020 	lwc1	$f20,32(s0)
    6758:	460a8381 	sub.s	$f14,$f16,$f10
    675c:	c6040014 	lwc1	$f4,20(s0)
    6760:	c6080028 	lwc1	$f8,40(s0)
    6764:	460c3581 	sub.s	$f22,$f6,$f12
    6768:	c60a002c 	lwc1	$f10,44(s0)
    676c:	46021182 	mul.s	$f6,$f2,$f2
    6770:	4604a481 	sub.s	$f18,$f20,$f4
    6774:	3c013f80 	lui	at,0x3f80
    6778:	a7a202c8 	sh	v0,712(sp)
    677c:	46104781 	sub.s	$f30,$f8,$f16
    6780:	460e7202 	mul.s	$f8,$f14,$f14
    6784:	44817000 	mtc1	at,$f14
    6788:	46145101 	sub.s	$f4,$f10,$f20
    678c:	3c013f00 	lui	at,0x3f00
    6790:	44811000 	mtc1	at,$f2
    6794:	e7a402a0 	swc1	$f4,672(sp)
    6798:	46129102 	mul.s	$f4,$f18,$f18
    679c:	46083280 	add.s	$f10,$f6,$f8
    67a0:	c7a802a0 	lwc1	$f8,672(sp)
    67a4:	46045180 	add.s	$f6,$f10,$f4
    67a8:	4618c282 	mul.s	$f10,$f24,$f24
    67ac:	46003004 	sqrt.s	$f0,$f6
    67b0:	460ad100 	add.s	$f4,$f26,$f10
    67b4:	e7a00088 	swc1	$f0,136(sp)
    67b8:	e7a00094 	swc1	$f0,148(sp)
    67bc:	4616b282 	mul.s	$f10,$f22,$f22
    67c0:	461c2180 	add.s	$f6,$f4,$f28
    67c4:	461ef102 	mul.s	$f4,$f30,$f30
    67c8:	46003004 	sqrt.s	$f0,$f6
    67cc:	46045180 	add.s	$f6,$f10,$f4
    67d0:	46084282 	mul.s	$f10,$f8,$f8
    67d4:	e7a00084 	swc1	$f0,132(sp)
    67d8:	e7a00098 	swc1	$f0,152(sp)
    67dc:	c7a40098 	lwc1	$f4,152(sp)
    67e0:	c7a80094 	lwc1	$f8,148(sp)
    67e4:	460a3000 	add.s	$f0,$f6,$f10
    67e8:	46082180 	add.s	$f6,$f4,$f8
    67ec:	46000004 	sqrt.s	$f0,$f0
    67f0:	46060300 	add.s	$f12,$f0,$f6
    67f4:	c7a00084 	lwc1	$f0,132(sp)
    67f8:	460e603e 	c.le.s	$f12,$f14
    67fc:	46020782 	mul.s	$f30,$f0,$f2
    6800:	c7a00088 	lwc1	$f0,136(sp)
    6804:	45000002 	bc1f	6810 <func_809034E4+0x26c>
    6808:	00000000 	nop
    680c:	46007306 	mov.s	$f12,$f14
    6810:	46020282 	mul.s	$f10,$f0,$f2
    6814:	3c0e0000 	lui	t6,0x0
    6818:	25d00000 	addiu	s0,t6,0
    681c:	c7a602d0 	lwc1	$f6,720(sp)
    6820:	3c010000 	lui	at,0x0
    6824:	c4240000 	lwc1	$f4,0(at)
    6828:	24120001 	li	s2,1
    682c:	e7aa0294 	swc1	$f10,660(sp)
    6830:	c6080000 	lwc1	$f8,0(s0)
    6834:	46046702 	mul.s	$f28,$f12,$f4
    6838:	c7a402d4 	lwc1	$f4,724(sp)
    683c:	46064501 	sub.s	$f20,$f8,$f6
    6840:	c7a602d8 	lwc1	$f6,728(sp)
    6844:	c6080008 	lwc1	$f8,8(s0)
    6848:	c60a0004 	lwc1	$f10,4(s0)
    684c:	24130001 	li	s3,1
    6850:	46064581 	sub.s	$f22,$f8,$f6
    6854:	46045601 	sub.s	$f24,$f10,$f4
    6858:	4600b306 	mov.s	$f12,$f22
    685c:	0c000000 	jal	0 <func_808FCF40>
    6860:	4600a386 	mov.s	$f14,$f20
    6864:	4614a282 	mul.s	$f10,$f20,$f20
    6868:	00028c00 	sll	s1,v0,0x10
    686c:	00118c03 	sra	s1,s1,0x10
    6870:	4616b102 	mul.s	$f4,$f22,$f22
    6874:	4600c386 	mov.s	$f14,$f24
    6878:	46045000 	add.s	$f0,$f10,$f4
    687c:	0c000000 	jal	0 <func_808FCF40>
    6880:	46000304 	sqrt.s	$f12,$f0
    6884:	00022c00 	sll	a1,v0,0x10
    6888:	00052c03 	sra	a1,a1,0x10
    688c:	27a402c8 	addiu	a0,sp,712
    6890:	24060001 	li	a2,1
    6894:	0c000000 	jal	0 <func_808FCF40>
    6898:	24071000 	li	a3,4096
    689c:	00112c00 	sll	a1,s1,0x10
    68a0:	00052c03 	sra	a1,a1,0x10
    68a4:	27a402ca 	addiu	a0,sp,714
    68a8:	24060001 	li	a2,1
    68ac:	0c000000 	jal	0 <func_808FCF40>
    68b0:	24071000 	li	a3,4096
    68b4:	0c000000 	jal	0 <func_808FCF40>
    68b8:	87a402c8 	lh	a0,712(sp)
    68bc:	00147880 	sll	t7,s4,0x2
    68c0:	27b902d0 	addiu	t9,sp,720
    68c4:	8f2a0000 	lw	t2,0(t9)
    68c8:	01f47823 	subu	t7,t7,s4
    68cc:	000f7880 	sll	t7,t7,0x2
    68d0:	02cfc021 	addu	t8,s6,t7
    68d4:	af0a0000 	sw	t2,0(t8)
    68d8:	8f290004 	lw	t1,4(t9)
    68dc:	461c0682 	mul.s	$f26,$f0,$f28
    68e0:	af090004 	sw	t1,4(t8)
    68e4:	8f2a0008 	lw	t2,8(t9)
    68e8:	af0a0008 	sw	t2,8(t8)
    68ec:	0c000000 	jal	0 <func_808FCF40>
    68f0:	87a402ca 	lh	a0,714(sp)
    68f4:	4600d182 	mul.s	$f6,$f26,$f0
    68f8:	c7a802d0 	lwc1	$f8,720(sp)
    68fc:	87a402c8 	lh	a0,712(sp)
    6900:	46064280 	add.s	$f10,$f8,$f6
    6904:	0c000000 	jal	0 <func_808FCF40>
    6908:	e7aa02d0 	swc1	$f10,720(sp)
    690c:	4600e202 	mul.s	$f8,$f28,$f0
    6910:	c7a402d4 	lwc1	$f4,724(sp)
    6914:	87a402ca 	lh	a0,714(sp)
    6918:	46082180 	add.s	$f6,$f4,$f8
    691c:	0c000000 	jal	0 <func_808FCF40>
    6920:	e7a602d4 	swc1	$f6,724(sp)
    6924:	4600d102 	mul.s	$f4,$f26,$f0
    6928:	c7aa02d8 	lwc1	$f10,728(sp)
    692c:	c6060000 	lwc1	$f6,0(s0)
    6930:	3c0c0000 	lui	t4,0x0
    6934:	2a610003 	slti	at,s3,3
    6938:	26940001 	addiu	s4,s4,1
    693c:	258c0000 	addiu	t4,t4,0
    6940:	46045200 	add.s	$f8,$f10,$f4
    6944:	c7aa02d0 	lwc1	$f10,720(sp)
    6948:	c6040004 	lwc1	$f4,4(s0)
    694c:	329400ff 	andi	s4,s4,0xff
    6950:	460a3501 	sub.s	$f20,$f6,$f10
    6954:	c7a602d4 	lwc1	$f6,724(sp)
    6958:	c60a0008 	lwc1	$f10,8(s0)
    695c:	e7a802d8 	swc1	$f8,728(sp)
    6960:	46062601 	sub.s	$f24,$f4,$f6
    6964:	10200010 	beqz	at,69a8 <func_809034E4+0x404>
    6968:	46085581 	sub.s	$f22,$f10,$f8
    696c:	4614a102 	mul.s	$f4,$f20,$f20
    6970:	00000000 	nop
    6974:	4618c182 	mul.s	$f6,$f24,$f24
    6978:	46062280 	add.s	$f10,$f4,$f6
    697c:	4616b202 	mul.s	$f8,$f22,$f22
    6980:	46085000 	add.s	$f0,$f10,$f8
    6984:	46000004 	sqrt.s	$f0,$f0
    6988:	461e003e 	c.le.s	$f0,$f30
    698c:	00000000 	nop
    6990:	45000015 	bc1f	69e8 <func_809034E4+0x444>
    6994:	00000000 	nop
    6998:	26520001 	addiu	s2,s2,1
    699c:	c7be0294 	lwc1	$f30,660(sp)
    69a0:	10000011 	b	69e8 <func_809034E4+0x444>
    69a4:	325200ff 	andi	s2,s2,0xff
    69a8:	4614a102 	mul.s	$f4,$f20,$f20
    69ac:	3c013f80 	lui	at,0x3f80
    69b0:	4618c182 	mul.s	$f6,$f24,$f24
    69b4:	46062280 	add.s	$f10,$f4,$f6
    69b8:	4616b202 	mul.s	$f8,$f22,$f22
    69bc:	44812000 	mtc1	at,$f4
    69c0:	00000000 	nop
    69c4:	4604e180 	add.s	$f6,$f28,$f4
    69c8:	46085000 	add.s	$f0,$f10,$f8
    69cc:	46000004 	sqrt.s	$f0,$f0
    69d0:	4606003e 	c.le.s	$f0,$f6
    69d4:	00000000 	nop
    69d8:	45020004 	bc1fl	69ec <func_809034E4+0x448>
    69dc:	2a810014 	slti	at,s4,20
    69e0:	26520001 	addiu	s2,s2,1
    69e4:	325200ff 	andi	s2,s2,0xff
    69e8:	2a810014 	slti	at,s4,20
    69ec:	10200004 	beqz	at,6a00 <func_809034E4+0x45c>
    69f0:	0280a825 	move	s5,s4
    69f4:	2a410004 	slti	at,s2,4
    69f8:	14200003 	bnez	at,6a08 <func_809034E4+0x464>
    69fc:	02409825 	move	s3,s2
    6a00:	1000000f 	b	6a40 <func_809034E4+0x49c>
    6a04:	24120001 	li	s2,1
    6a08:	00125880 	sll	t3,s2,0x2
    6a0c:	01725823 	subu	t3,t3,s2
    6a10:	000b5880 	sll	t3,t3,0x2
    6a14:	016c8021 	addu	s0,t3,t4
    6a18:	c60a0000 	lwc1	$f10,0(s0)
    6a1c:	c7a802d0 	lwc1	$f8,720(sp)
    6a20:	c6040004 	lwc1	$f4,4(s0)
    6a24:	c7a602d4 	lwc1	$f6,724(sp)
    6a28:	46085501 	sub.s	$f20,$f10,$f8
    6a2c:	c7a802d8 	lwc1	$f8,728(sp)
    6a30:	c60a0008 	lwc1	$f10,8(s0)
    6a34:	46062601 	sub.s	$f24,$f4,$f6
    6a38:	1000ff87 	b	6858 <func_809034E4+0x2b4>
    6a3c:	46085581 	sub.s	$f22,$f10,$f8
    6a40:	3c020000 	lui	v0,0x0
    6a44:	24420000 	addiu	v0,v0,0
    6a48:	8c4f0000 	lw	t7,0(v0)
    6a4c:	3c0d0000 	lui	t5,0x0
    6a50:	25ad0000 	addiu	t5,t5,0
    6a54:	adaf0000 	sw	t7,0(t5)
    6a58:	8c4e0004 	lw	t6,4(v0)
    6a5c:	3c030000 	lui	v1,0x0
    6a60:	24630000 	addiu	v1,v1,0
    6a64:	adae0004 	sw	t6,4(t5)
    6a68:	8c4f0008 	lw	t7,8(v0)
    6a6c:	3c100000 	lui	s0,0x0
    6a70:	26100000 	addiu	s0,s0,0
    6a74:	adaf0008 	sw	t7,8(t5)
    6a78:	8c790000 	lw	t9,0(v1)
    6a7c:	8fab02e4 	lw	t3,740(sp)
    6a80:	27ae02d0 	addiu	t6,sp,720
    6a84:	ac590000 	sw	t9,0(v0)
    6a88:	8c780004 	lw	t8,4(v1)
    6a8c:	0000a025 	move	s4,zero
    6a90:	ac580004 	sw	t8,4(v0)
    6a94:	8c790008 	lw	t9,8(v1)
    6a98:	ac590008 	sw	t9,8(v0)
    6a9c:	8e0a0000 	lw	t2,0(s0)
    6aa0:	ac6a0000 	sw	t2,0(v1)
    6aa4:	8e090004 	lw	t1,4(s0)
    6aa8:	ac690004 	sw	t1,4(v1)
    6aac:	8e0a0008 	lw	t2,8(s0)
    6ab0:	ac6a0008 	sw	t2,8(v1)
    6ab4:	8d6d0000 	lw	t5,0(t3)
    6ab8:	ae0d0000 	sw	t5,0(s0)
    6abc:	8d6c0004 	lw	t4,4(t3)
    6ac0:	8e180000 	lw	t8,0(s0)
    6ac4:	ae0c0004 	sw	t4,4(s0)
    6ac8:	8d6d0008 	lw	t5,8(t3)
    6acc:	ae0d0008 	sw	t5,8(s0)
    6ad0:	add80000 	sw	t8,0(t6)
    6ad4:	8e0f0004 	lw	t7,4(s0)
    6ad8:	adcf0004 	sw	t7,4(t6)
    6adc:	8e180008 	lw	t8,8(s0)
    6ae0:	add80008 	sw	t8,8(t6)
    6ae4:	c7a602d0 	lwc1	$f6,720(sp)
    6ae8:	c604000c 	lwc1	$f4,12(s0)
    6aec:	c7a802d4 	lwc1	$f8,724(sp)
    6af0:	c60a0010 	lwc1	$f10,16(s0)
    6af4:	46062501 	sub.s	$f20,$f4,$f6
    6af8:	c7a602d8 	lwc1	$f6,728(sp)
    6afc:	c6040014 	lwc1	$f4,20(s0)
    6b00:	46085601 	sub.s	$f24,$f10,$f8
    6b04:	4600a386 	mov.s	$f14,$f20
    6b08:	46062581 	sub.s	$f22,$f4,$f6
    6b0c:	0c000000 	jal	0 <func_808FCF40>
    6b10:	4600b306 	mov.s	$f12,$f22
    6b14:	4614a682 	mul.s	$f26,$f20,$f20
    6b18:	a7a202ca 	sh	v0,714(sp)
    6b1c:	4600c386 	mov.s	$f14,$f24
    6b20:	4616b702 	mul.s	$f28,$f22,$f22
    6b24:	461cd000 	add.s	$f0,$f26,$f28
    6b28:	0c000000 	jal	0 <func_808FCF40>
    6b2c:	46000304 	sqrt.s	$f12,$f0
    6b30:	c614001c 	lwc1	$f20,28(s0)
    6b34:	c6080010 	lwc1	$f8,16(s0)
    6b38:	c6100018 	lwc1	$f16,24(s0)
    6b3c:	c60a000c 	lwc1	$f10,12(s0)
    6b40:	c6040020 	lwc1	$f4,32(s0)
    6b44:	4608a381 	sub.s	$f14,$f20,$f8
    6b48:	c6080024 	lwc1	$f8,36(s0)
    6b4c:	e7a40074 	swc1	$f4,116(sp)
    6b50:	460a8081 	sub.s	$f2,$f16,$f10
    6b54:	c60a0014 	lwc1	$f10,20(s0)
    6b58:	c7a60074 	lwc1	$f6,116(sp)
    6b5c:	46104581 	sub.s	$f22,$f8,$f16
    6b60:	c6040028 	lwc1	$f4,40(s0)
    6b64:	46021202 	mul.s	$f8,$f2,$f2
    6b68:	460a3481 	sub.s	$f18,$f6,$f10
    6b6c:	c60a002c 	lwc1	$f10,44(s0)
    6b70:	3c013f80 	lui	at,0x3f80
    6b74:	a7a202c8 	sh	v0,712(sp)
    6b78:	46142781 	sub.s	$f30,$f4,$f20
    6b7c:	460e7102 	mul.s	$f4,$f14,$f14
    6b80:	44817000 	mtc1	at,$f14
    6b84:	46065301 	sub.s	$f12,$f10,$f6
    6b88:	46129182 	mul.s	$f6,$f18,$f18
    6b8c:	3c013f00 	lui	at,0x3f00
    6b90:	44811000 	mtc1	at,$f2
    6b94:	46044280 	add.s	$f10,$f8,$f4
    6b98:	46065200 	add.s	$f8,$f10,$f6
    6b9c:	4618c282 	mul.s	$f10,$f24,$f24
    6ba0:	46004004 	sqrt.s	$f0,$f8
    6ba4:	460ad180 	add.s	$f6,$f26,$f10
    6ba8:	e7a00088 	swc1	$f0,136(sp)
    6bac:	e7a00094 	swc1	$f0,148(sp)
    6bb0:	4616b282 	mul.s	$f10,$f22,$f22
    6bb4:	461c3200 	add.s	$f8,$f6,$f28
    6bb8:	461ef182 	mul.s	$f6,$f30,$f30
    6bbc:	00000000 	nop
    6bc0:	460c6102 	mul.s	$f4,$f12,$f12
    6bc4:	46004004 	sqrt.s	$f0,$f8
    6bc8:	46065200 	add.s	$f8,$f10,$f6
    6bcc:	e7a00084 	swc1	$f0,132(sp)
    6bd0:	e7a00098 	swc1	$f0,152(sp)
    6bd4:	c7aa0098 	lwc1	$f10,152(sp)
    6bd8:	46044000 	add.s	$f0,$f8,$f4
    6bdc:	c7a60094 	lwc1	$f6,148(sp)
    6be0:	46000004 	sqrt.s	$f0,$f0
    6be4:	46065200 	add.s	$f8,$f10,$f6
    6be8:	46080300 	add.s	$f12,$f0,$f8
    6bec:	c7a00084 	lwc1	$f0,132(sp)
    6bf0:	460e603e 	c.le.s	$f12,$f14
    6bf4:	46020782 	mul.s	$f30,$f0,$f2
    6bf8:	c7a00088 	lwc1	$f0,136(sp)
    6bfc:	45000002 	bc1f	6c08 <func_809034E4+0x664>
    6c00:	00000000 	nop
    6c04:	46007306 	mov.s	$f12,$f14
    6c08:	46020102 	mul.s	$f4,$f0,$f2
    6c0c:	3c190000 	lui	t9,0x0
    6c10:	27300000 	addiu	s0,t9,0
    6c14:	c7a802d0 	lwc1	$f8,720(sp)
    6c18:	3c010000 	lui	at,0x0
    6c1c:	c42a0000 	lwc1	$f10,0(at)
    6c20:	24130001 	li	s3,1
    6c24:	e7a40294 	swc1	$f4,660(sp)
    6c28:	c6060000 	lwc1	$f6,0(s0)
    6c2c:	460a6702 	mul.s	$f28,$f12,$f10
    6c30:	c7aa02d4 	lwc1	$f10,724(sp)
    6c34:	46083501 	sub.s	$f20,$f6,$f8
    6c38:	c7a802d8 	lwc1	$f8,728(sp)
    6c3c:	c6060008 	lwc1	$f6,8(s0)
    6c40:	c6040004 	lwc1	$f4,4(s0)
    6c44:	46083581 	sub.s	$f22,$f6,$f8
    6c48:	460a2601 	sub.s	$f24,$f4,$f10
    6c4c:	4600b306 	mov.s	$f12,$f22
    6c50:	0c000000 	jal	0 <func_808FCF40>
    6c54:	4600a386 	mov.s	$f14,$f20
    6c58:	4614a102 	mul.s	$f4,$f20,$f20
    6c5c:	00028c00 	sll	s1,v0,0x10
    6c60:	00118c03 	sra	s1,s1,0x10
    6c64:	4616b282 	mul.s	$f10,$f22,$f22
    6c68:	4600c386 	mov.s	$f14,$f24
    6c6c:	460a2000 	add.s	$f0,$f4,$f10
    6c70:	0c000000 	jal	0 <func_808FCF40>
    6c74:	46000304 	sqrt.s	$f12,$f0
    6c78:	00022c00 	sll	a1,v0,0x10
    6c7c:	00052c03 	sra	a1,a1,0x10
    6c80:	27a402c8 	addiu	a0,sp,712
    6c84:	24060001 	li	a2,1
    6c88:	0c000000 	jal	0 <func_808FCF40>
    6c8c:	24071000 	li	a3,4096
    6c90:	00112c00 	sll	a1,s1,0x10
    6c94:	00052c03 	sra	a1,a1,0x10
    6c98:	27a402ca 	addiu	a0,sp,714
    6c9c:	24060001 	li	a2,1
    6ca0:	0c000000 	jal	0 <func_808FCF40>
    6ca4:	24071000 	li	a3,4096
    6ca8:	0c000000 	jal	0 <func_808FCF40>
    6cac:	87a402c8 	lh	a0,712(sp)
    6cb0:	00144880 	sll	t1,s4,0x2
    6cb4:	27ab02d0 	addiu	t3,sp,720
    6cb8:	8d6d0000 	lw	t5,0(t3)
    6cbc:	01344823 	subu	t1,t1,s4
    6cc0:	00094880 	sll	t1,t1,0x2
    6cc4:	03c95021 	addu	t2,s8,t1
    6cc8:	ad4d0000 	sw	t5,0(t2)
    6ccc:	8d6c0004 	lw	t4,4(t3)
    6cd0:	461c0682 	mul.s	$f26,$f0,$f28
    6cd4:	ad4c0004 	sw	t4,4(t2)
    6cd8:	8d6d0008 	lw	t5,8(t3)
    6cdc:	ad4d0008 	sw	t5,8(t2)
    6ce0:	0c000000 	jal	0 <func_808FCF40>
    6ce4:	87a402ca 	lh	a0,714(sp)
    6ce8:	4600d202 	mul.s	$f8,$f26,$f0
    6cec:	c7a602d0 	lwc1	$f6,720(sp)
    6cf0:	87a402c8 	lh	a0,712(sp)
    6cf4:	46083100 	add.s	$f4,$f6,$f8
    6cf8:	0c000000 	jal	0 <func_808FCF40>
    6cfc:	e7a402d0 	swc1	$f4,720(sp)
    6d00:	4600e182 	mul.s	$f6,$f28,$f0
    6d04:	c7aa02d4 	lwc1	$f10,724(sp)
    6d08:	87a402ca 	lh	a0,714(sp)
    6d0c:	46065200 	add.s	$f8,$f10,$f6
    6d10:	0c000000 	jal	0 <func_808FCF40>
    6d14:	e7a802d4 	swc1	$f8,724(sp)
    6d18:	4600d282 	mul.s	$f10,$f26,$f0
    6d1c:	c7a402d8 	lwc1	$f4,728(sp)
    6d20:	c6080000 	lwc1	$f8,0(s0)
    6d24:	3c0f0000 	lui	t7,0x0
    6d28:	2a610003 	slti	at,s3,3
    6d2c:	26940001 	addiu	s4,s4,1
    6d30:	25ef0000 	addiu	t7,t7,0
    6d34:	460a2180 	add.s	$f6,$f4,$f10
    6d38:	c7a402d0 	lwc1	$f4,720(sp)
    6d3c:	c60a0004 	lwc1	$f10,4(s0)
    6d40:	329400ff 	andi	s4,s4,0xff
    6d44:	46044501 	sub.s	$f20,$f8,$f4
    6d48:	c7a802d4 	lwc1	$f8,724(sp)
    6d4c:	c6040008 	lwc1	$f4,8(s0)
    6d50:	e7a602d8 	swc1	$f6,728(sp)
    6d54:	46085601 	sub.s	$f24,$f10,$f8
    6d58:	10200010 	beqz	at,6d9c <func_809034E4+0x7f8>
    6d5c:	46062581 	sub.s	$f22,$f4,$f6
    6d60:	4614a282 	mul.s	$f10,$f20,$f20
    6d64:	00000000 	nop
    6d68:	4618c202 	mul.s	$f8,$f24,$f24
    6d6c:	46085100 	add.s	$f4,$f10,$f8
    6d70:	4616b182 	mul.s	$f6,$f22,$f22
    6d74:	46062000 	add.s	$f0,$f4,$f6
    6d78:	46000004 	sqrt.s	$f0,$f0
    6d7c:	461e003e 	c.le.s	$f0,$f30
    6d80:	00000000 	nop
    6d84:	45000015 	bc1f	6ddc <func_809034E4+0x838>
    6d88:	00000000 	nop
    6d8c:	26520001 	addiu	s2,s2,1
    6d90:	c7be0294 	lwc1	$f30,660(sp)
    6d94:	10000011 	b	6ddc <func_809034E4+0x838>
    6d98:	325200ff 	andi	s2,s2,0xff
    6d9c:	4614a282 	mul.s	$f10,$f20,$f20
    6da0:	3c013f80 	lui	at,0x3f80
    6da4:	4618c202 	mul.s	$f8,$f24,$f24
    6da8:	46085100 	add.s	$f4,$f10,$f8
    6dac:	4616b182 	mul.s	$f6,$f22,$f22
    6db0:	44815000 	mtc1	at,$f10
    6db4:	00000000 	nop
    6db8:	460ae200 	add.s	$f8,$f28,$f10
    6dbc:	46062000 	add.s	$f0,$f4,$f6
    6dc0:	46000004 	sqrt.s	$f0,$f0
    6dc4:	4608003e 	c.le.s	$f0,$f8
    6dc8:	00000000 	nop
    6dcc:	45020004 	bc1fl	6de0 <func_809034E4+0x83c>
    6dd0:	2a810014 	slti	at,s4,20
    6dd4:	26520001 	addiu	s2,s2,1
    6dd8:	325200ff 	andi	s2,s2,0xff
    6ddc:	2a810014 	slti	at,s4,20
    6de0:	10200012 	beqz	at,6e2c <func_809034E4+0x888>
    6de4:	02803025 	move	a2,s4
    6de8:	2a410004 	slti	at,s2,4
    6dec:	1020000f 	beqz	at,6e2c <func_809034E4+0x888>
    6df0:	02409825 	move	s3,s2
    6df4:	00127080 	sll	t6,s2,0x2
    6df8:	01d27023 	subu	t6,t6,s2
    6dfc:	000e7080 	sll	t6,t6,0x2
    6e00:	01cf8021 	addu	s0,t6,t7
    6e04:	c6040000 	lwc1	$f4,0(s0)
    6e08:	c7a602d0 	lwc1	$f6,720(sp)
    6e0c:	c60a0004 	lwc1	$f10,4(s0)
    6e10:	c7a802d4 	lwc1	$f8,724(sp)
    6e14:	46062501 	sub.s	$f20,$f4,$f6
    6e18:	c7a602d8 	lwc1	$f6,728(sp)
    6e1c:	c6040008 	lwc1	$f4,8(s0)
    6e20:	46085601 	sub.s	$f24,$f10,$f8
    6e24:	1000ff89 	b	6c4c <func_809034E4+0x6a8>
    6e28:	46062581 	sub.s	$f22,$f4,$f6
    6e2c:	3c030000 	lui	v1,0x0
    6e30:	24630000 	addiu	v1,v1,0
    6e34:	0003c100 	sll	t8,v1,0x4
    6e38:	0018cf02 	srl	t9,t8,0x1c
    6e3c:	00194880 	sll	t1,t9,0x2
    6e40:	3c0a0000 	lui	t2,0x0
    6e44:	01495021 	addu	t2,t2,t1
    6e48:	3c0100ff 	lui	at,0xff
    6e4c:	8d4a0000 	lw	t2,0(t2)
    6e50:	3421ffff 	ori	at,at,0xffff
    6e54:	00615824 	and	t3,v1,at
    6e58:	3c018000 	lui	at,0x8000
    6e5c:	3c080000 	lui	t0,0x0
    6e60:	3c070000 	lui	a3,0x0
    6e64:	014b2821 	addu	a1,t2,t3
    6e68:	00a12821 	addu	a1,a1,at
    6e6c:	24e70000 	addiu	a3,a3,0
    6e70:	25080000 	addiu	t0,t0,0
    6e74:	00001025 	move	v0,zero
    6e78:	02a26023 	subu	t4,s5,v0
    6e7c:	59800023 	blezl	t4,6f0c <func_809034E4+0x968>
    6e80:	00c27023 	subu	t6,a2,v0
    6e84:	00570019 	multu	v0,s7
    6e88:	00156880 	sll	t5,s5,0x2
    6e8c:	01b56823 	subu	t5,t5,s5
    6e90:	000d6880 	sll	t5,t5,0x2
    6e94:	02cd7021 	addu	t6,s6,t5
    6e98:	00e21821 	addu	v1,a3,v0
    6e9c:	906a0000 	lbu	t2,0(v1)
    6ea0:	000a5900 	sll	t3,t2,0x4
    6ea4:	00007812 	mflo	t7
    6ea8:	000fc023 	negu	t8,t7
    6eac:	01d82021 	addu	a0,t6,t8
    6eb0:	c48afff4 	lwc1	$f10,-12(a0)
    6eb4:	00ab6021 	addu	t4,a1,t3
    6eb8:	4600520d 	trunc.w.s	$f8,$f10
    6ebc:	44094000 	mfc1	t1,$f8
    6ec0:	00000000 	nop
    6ec4:	a5890000 	sh	t1,0(t4)
    6ec8:	c484fff8 	lwc1	$f4,-8(a0)
    6ecc:	906e0000 	lbu	t6,0(v1)
    6ed0:	4600218d 	trunc.w.s	$f6,$f4
    6ed4:	000ec100 	sll	t8,t6,0x4
    6ed8:	00b8c821 	addu	t9,a1,t8
    6edc:	440f3000 	mfc1	t7,$f6
    6ee0:	00000000 	nop
    6ee4:	a72f0002 	sh	t7,2(t9)
    6ee8:	c48afffc 	lwc1	$f10,-4(a0)
    6eec:	90690000 	lbu	t1,0(v1)
    6ef0:	4600520d 	trunc.w.s	$f8,$f10
    6ef4:	00096100 	sll	t4,t1,0x4
    6ef8:	00ac6821 	addu	t5,a1,t4
    6efc:	440b4000 	mfc1	t3,$f8
    6f00:	00000000 	nop
    6f04:	a5ab0004 	sh	t3,4(t5)
    6f08:	00c27023 	subu	t6,a2,v0
    6f0c:	59c00023 	blezl	t6,6f9c <func_809034E4+0x9f8>
    6f10:	24420001 	addiu	v0,v0,1
    6f14:	00570019 	multu	v0,s7
    6f18:	0006c080 	sll	t8,a2,0x2
    6f1c:	0306c023 	subu	t8,t8,a2
    6f20:	0018c080 	sll	t8,t8,0x2
    6f24:	03d87821 	addu	t7,s8,t8
    6f28:	01021821 	addu	v1,t0,v0
    6f2c:	906b0000 	lbu	t3,0(v1)
    6f30:	000b6900 	sll	t5,t3,0x4
    6f34:	0000c812 	mflo	t9
    6f38:	00195023 	negu	t2,t9
    6f3c:	01ea2021 	addu	a0,t7,t2
    6f40:	c484fff4 	lwc1	$f4,-12(a0)
    6f44:	00ad7021 	addu	t6,a1,t5
    6f48:	4600218d 	trunc.w.s	$f6,$f4
    6f4c:	440c3000 	mfc1	t4,$f6
    6f50:	00000000 	nop
    6f54:	a5cc0000 	sh	t4,0(t6)
    6f58:	c48afff8 	lwc1	$f10,-8(a0)
    6f5c:	906f0000 	lbu	t7,0(v1)
    6f60:	4600520d 	trunc.w.s	$f8,$f10
    6f64:	000f5100 	sll	t2,t7,0x4
    6f68:	00aa4821 	addu	t1,a1,t2
    6f6c:	44194000 	mfc1	t9,$f8
    6f70:	00000000 	nop
    6f74:	a5390002 	sh	t9,2(t1)
    6f78:	c484fffc 	lwc1	$f4,-4(a0)
    6f7c:	906c0000 	lbu	t4,0(v1)
    6f80:	4600218d 	trunc.w.s	$f6,$f4
    6f84:	000c7100 	sll	t6,t4,0x4
    6f88:	00aec021 	addu	t8,a1,t6
    6f8c:	440d3000 	mfc1	t5,$f6
    6f90:	00000000 	nop
    6f94:	a70d0004 	sh	t5,4(t8)
    6f98:	24420001 	addiu	v0,v0,1
    6f9c:	00021400 	sll	v0,v0,0x10
    6fa0:	00021403 	sra	v0,v0,0x10
    6fa4:	2841000b 	slti	at,v0,11
    6fa8:	5420ffb4 	bnezl	at,6e7c <func_809034E4+0x8d8>
    6fac:	02a26023 	subu	t4,s5,v0
    6fb0:	8fbf006c 	lw	ra,108(sp)
    6fb4:	d7b40018 	ldc1	$f20,24(sp)
    6fb8:	d7b60020 	ldc1	$f22,32(sp)
    6fbc:	d7b80028 	ldc1	$f24,40(sp)
    6fc0:	d7ba0030 	ldc1	$f26,48(sp)
    6fc4:	d7bc0038 	ldc1	$f28,56(sp)
    6fc8:	d7be0040 	ldc1	$f30,64(sp)
    6fcc:	8fb00048 	lw	s0,72(sp)
    6fd0:	8fb1004c 	lw	s1,76(sp)
    6fd4:	8fb20050 	lw	s2,80(sp)
    6fd8:	8fb30054 	lw	s3,84(sp)
    6fdc:	8fb40058 	lw	s4,88(sp)
    6fe0:	8fb5005c 	lw	s5,92(sp)
    6fe4:	8fb60060 	lw	s6,96(sp)
    6fe8:	8fb70064 	lw	s7,100(sp)
    6fec:	8fbe0068 	lw	s8,104(sp)
    6ff0:	03e00008 	jr	ra
    6ff4:	27bd02e0 	addiu	sp,sp,736

00006ff8 <func_80903F38>:
    6ff8:	27bdff90 	addiu	sp,sp,-112
    6ffc:	afbf003c 	sw	ra,60(sp)
    7000:	afb00038 	sw	s0,56(sp)
    7004:	afa40070 	sw	a0,112(sp)
    7008:	afa50074 	sw	a1,116(sp)
    700c:	8ca50000 	lw	a1,0(a1)
    7010:	3c060000 	lui	a2,0x0
    7014:	24c60000 	addiu	a2,a2,0
    7018:	27a4005c 	addiu	a0,sp,92
    701c:	240713db 	li	a3,5083
    7020:	0c000000 	jal	0 <func_808FCF40>
    7024:	00a08025 	move	s0,a1
    7028:	8fa20070 	lw	v0,112(sp)
    702c:	904f0312 	lbu	t7,786(v0)
    7030:	24440200 	addiu	a0,v0,512
    7034:	11e00006 	beqz	t7,7050 <func_80903F38+0x58>
    7038:	00000000 	nop
    703c:	0c000000 	jal	0 <func_808FCF40>
    7040:	2445020c 	addiu	a1,v0,524
    7044:	241800ff 	li	t8,255
    7048:	3c010000 	lui	at,0x0
    704c:	a4380000 	sh	t8,0(at)
    7050:	3c190000 	lui	t9,0x0
    7054:	83390000 	lb	t9,0(t9)
    7058:	3c0adb06 	lui	t2,0xdb06
    705c:	354a0020 	ori	t2,t2,0x20
    7060:	2b210004 	slti	at,t9,4
    7064:	1420004c 	bnez	at,7198 <func_80903F38+0x1a0>
    7068:	8fa80074 	lw	t0,116(sp)
    706c:	8e0202d0 	lw	v0,720(s0)
    7070:	240b0020 	li	t3,32
    7074:	240c0020 	li	t4,32
    7078:	24490008 	addiu	t1,v0,8
    707c:	ae0902d0 	sw	t1,720(s0)
    7080:	ac4a0000 	sw	t2,0(v0)
    7084:	8d040000 	lw	a0,0(t0)
    7088:	240d0001 	li	t5,1
    708c:	3c0e0001 	lui	t6,0x1
    7090:	01c87021 	addu	t6,t6,t0
    7094:	afad0018 	sw	t5,24(sp)
    7098:	afac0014 	sw	t4,20(sp)
    709c:	afab0010 	sw	t3,16(sp)
    70a0:	8dce1de4 	lw	t6,7652(t6)
    70a4:	24180020 	li	t8,32
    70a8:	24190020 	li	t9,32
    70ac:	000e78c0 	sll	t7,t6,0x3
    70b0:	01ee7821 	addu	t7,t7,t6
    70b4:	000f7840 	sll	t7,t7,0x1
    70b8:	afaf001c 	sw	t7,28(sp)
    70bc:	afb90028 	sw	t9,40(sp)
    70c0:	afb80024 	sw	t8,36(sp)
    70c4:	afa00020 	sw	zero,32(sp)
    70c8:	00002825 	move	a1,zero
    70cc:	00003025 	move	a2,zero
    70d0:	00003825 	move	a3,zero
    70d4:	0c000000 	jal	0 <func_808FCF40>
    70d8:	afa20058 	sw	v0,88(sp)
    70dc:	8fa30058 	lw	v1,88(sp)
    70e0:	3c0ae700 	lui	t2,0xe700
    70e4:	3c0cfa00 	lui	t4,0xfa00
    70e8:	ac620004 	sw	v0,4(v1)
    70ec:	8e0202d0 	lw	v0,720(s0)
    70f0:	3c0d0000 	lui	t5,0x0
    70f4:	44806000 	mtc1	zero,$f12
    70f8:	24490008 	addiu	t1,v0,8
    70fc:	ae0902d0 	sw	t1,720(s0)
    7100:	ac400004 	sw	zero,4(v0)
    7104:	ac4a0000 	sw	t2,0(v0)
    7108:	8e0202d0 	lw	v0,720(s0)
    710c:	2401ff00 	li	at,-256
    7110:	44066000 	mfc1	a2,$f12
    7114:	244b0008 	addiu	t3,v0,8
    7118:	ae0b02d0 	sw	t3,720(s0)
    711c:	ac4c0000 	sw	t4,0(v0)
    7120:	85ad0000 	lh	t5,0(t5)
    7124:	00003825 	move	a3,zero
    7128:	46006386 	mov.s	$f14,$f12
    712c:	31ae00ff 	andi	t6,t5,0xff
    7130:	01c17825 	or	t7,t6,at
    7134:	0c000000 	jal	0 <func_808FCF40>
    7138:	ac4f0004 	sw	t7,4(v0)
    713c:	8e0202d0 	lw	v0,720(s0)
    7140:	3c19da38 	lui	t9,0xda38
    7144:	37390003 	ori	t9,t9,0x3
    7148:	24580008 	addiu	t8,v0,8
    714c:	ae1802d0 	sw	t8,720(s0)
    7150:	ac590000 	sw	t9,0(v0)
    7154:	8fa90074 	lw	t1,116(sp)
    7158:	3c050000 	lui	a1,0x0
    715c:	24a50000 	addiu	a1,a1,0
    7160:	8d240000 	lw	a0,0(t1)
    7164:	240613fd 	li	a2,5117
    7168:	0c000000 	jal	0 <func_808FCF40>
    716c:	afa2004c 	sw	v0,76(sp)
    7170:	8fa3004c 	lw	v1,76(sp)
    7174:	3c0c0000 	lui	t4,0x0
    7178:	258c0000 	addiu	t4,t4,0
    717c:	ac620004 	sw	v0,4(v1)
    7180:	8e0202d0 	lw	v0,720(s0)
    7184:	3c0bde00 	lui	t3,0xde00
    7188:	244a0008 	addiu	t2,v0,8
    718c:	ae0a02d0 	sw	t2,720(s0)
    7190:	ac4c0004 	sw	t4,4(v0)
    7194:	ac4b0000 	sw	t3,0(v0)
    7198:	8fad0074 	lw	t5,116(sp)
    719c:	3c060000 	lui	a2,0x0
    71a0:	24c60000 	addiu	a2,a2,0
    71a4:	27a4005c 	addiu	a0,sp,92
    71a8:	24071402 	li	a3,5122
    71ac:	0c000000 	jal	0 <func_808FCF40>
    71b0:	8da50000 	lw	a1,0(t5)
    71b4:	8fbf003c 	lw	ra,60(sp)
    71b8:	8fb00038 	lw	s0,56(sp)
    71bc:	27bd0070 	addiu	sp,sp,112
    71c0:	03e00008 	jr	ra
    71c4:	00000000 	nop

000071c8 <func_80904108>:
    71c8:	27bdff88 	addiu	sp,sp,-120
    71cc:	afbf003c 	sw	ra,60(sp)
    71d0:	afb00038 	sw	s0,56(sp)
    71d4:	afa40078 	sw	a0,120(sp)
    71d8:	afa5007c 	sw	a1,124(sp)
    71dc:	c4860324 	lwc1	$f6,804(a0)
    71e0:	44802000 	mtc1	zero,$f4
    71e4:	3c060000 	lui	a2,0x0
    71e8:	24c60000 	addiu	a2,a2,0
    71ec:	4606203c 	c.lt.s	$f4,$f6
    71f0:	27a40060 	addiu	a0,sp,96
    71f4:	4502007e 	bc1fl	73f0 <func_80904108+0x228>
    71f8:	8fbf003c 	lw	ra,60(sp)
    71fc:	8ca50000 	lw	a1,0(a1)
    7200:	2407140b 	li	a3,5131
    7204:	0c000000 	jal	0 <func_808FCF40>
    7208:	00a08025 	move	s0,a1
    720c:	0c000000 	jal	0 <func_808FCF40>
    7210:	00000000 	nop
    7214:	8e0202d0 	lw	v0,720(s0)
    7218:	3c19e700 	lui	t9,0xe700
    721c:	3c0cdb06 	lui	t4,0xdb06
    7220:	24580008 	addiu	t8,v0,8
    7224:	ae1802d0 	sw	t8,720(s0)
    7228:	ac590000 	sw	t9,0(v0)
    722c:	ac400004 	sw	zero,4(v0)
    7230:	8e0202d0 	lw	v0,720(s0)
    7234:	8faa007c 	lw	t2,124(sp)
    7238:	358c0020 	ori	t4,t4,0x20
    723c:	244b0008 	addiu	t3,v0,8
    7240:	ae0b02d0 	sw	t3,720(s0)
    7244:	3c030001 	lui	v1,0x1
    7248:	ac4c0000 	sw	t4,0(v0)
    724c:	006a1821 	addu	v1,v1,t2
    7250:	8c631de4 	lw	v1,7652(v1)
    7254:	8d440000 	lw	a0,0(t2)
    7258:	240c0020 	li	t4,32
    725c:	00034023 	negu	t0,v1
    7260:	0008c040 	sll	t8,t0,0x1
    7264:	0008c8c0 	sll	t9,t0,0x3
    7268:	240b0020 	li	t3,32
    726c:	240d0020 	li	t5,32
    7270:	240e0040 	li	t6,64
    7274:	240f0001 	li	t7,1
    7278:	afaf0018 	sw	t7,24(sp)
    727c:	afae0014 	sw	t6,20(sp)
    7280:	afad0010 	sw	t5,16(sp)
    7284:	afab0024 	sw	t3,36(sp)
    7288:	afb90020 	sw	t9,32(sp)
    728c:	afb8001c 	sw	t8,28(sp)
    7290:	afac0028 	sw	t4,40(sp)
    7294:	00002825 	move	a1,zero
    7298:	00003825 	move	a3,zero
    729c:	afa20058 	sw	v0,88(sp)
    72a0:	0c000000 	jal	0 <func_808FCF40>
    72a4:	00603025 	move	a2,v1
    72a8:	8fa90058 	lw	t1,88(sp)
    72ac:	3c0efa00 	lui	t6,0xfa00
    72b0:	3c01ffc8 	lui	at,0xffc8
    72b4:	ad220004 	sw	v0,4(t1)
    72b8:	8e0202d0 	lw	v0,720(s0)
    72bc:	3c19ff00 	lui	t9,0xff00
    72c0:	37390080 	ori	t9,t9,0x80
    72c4:	244d0008 	addiu	t5,v0,8
    72c8:	ae0d02d0 	sw	t5,720(s0)
    72cc:	ac4e0000 	sw	t6,0(v0)
    72d0:	8faf0078 	lw	t7,120(sp)
    72d4:	3c18fb00 	lui	t8,0xfb00
    72d8:	00003825 	move	a3,zero
    72dc:	c5e80324 	lwc1	$f8,804(t7)
    72e0:	4600428d 	trunc.w.s	$f10,$f8
    72e4:	440c5000 	mfc1	t4,$f10
    72e8:	00000000 	nop
    72ec:	318d00ff 	andi	t5,t4,0xff
    72f0:	01a17025 	or	t6,t5,at
    72f4:	ac4e0004 	sw	t6,4(v0)
    72f8:	8e0202d0 	lw	v0,720(s0)
    72fc:	3c01c348 	lui	at,0xc348
    7300:	44816000 	mtc1	at,$f12
    7304:	244f0008 	addiu	t7,v0,8
    7308:	ae0f02d0 	sw	t7,720(s0)
    730c:	3c010000 	lui	at,0x0
    7310:	ac590004 	sw	t9,4(v0)
    7314:	ac580000 	sw	t8,0(v0)
    7318:	44066000 	mfc1	a2,$f12
    731c:	0c000000 	jal	0 <func_808FCF40>
    7320:	c42e0000 	lwc1	$f14,0(at)
    7324:	3c010000 	lui	at,0x0
    7328:	c42c0000 	lwc1	$f12,0(at)
    732c:	3c010000 	lui	at,0x0
    7330:	c42e0000 	lwc1	$f14,0(at)
    7334:	44066000 	mfc1	a2,$f12
    7338:	0c000000 	jal	0 <func_808FCF40>
    733c:	24070001 	li	a3,1
    7340:	8e0202d0 	lw	v0,720(s0)
    7344:	3c0cda38 	lui	t4,0xda38
    7348:	358c0003 	ori	t4,t4,0x3
    734c:	244b0008 	addiu	t3,v0,8
    7350:	ae0b02d0 	sw	t3,720(s0)
    7354:	ac4c0000 	sw	t4,0(v0)
    7358:	8fad007c 	lw	t5,124(sp)
    735c:	3c050000 	lui	a1,0x0
    7360:	24a50000 	addiu	a1,a1,0
    7364:	8da40000 	lw	a0,0(t5)
    7368:	2406143f 	li	a2,5183
    736c:	0c000000 	jal	0 <func_808FCF40>
    7370:	afa2004c 	sw	v0,76(sp)
    7374:	8fa3004c 	lw	v1,76(sp)
    7378:	3c040000 	lui	a0,0x0
    737c:	24840000 	addiu	a0,a0,0
    7380:	ac620004 	sw	v0,4(v1)
    7384:	8e0202d0 	lw	v0,720(s0)
    7388:	0004c100 	sll	t8,a0,0x4
    738c:	0018cf02 	srl	t9,t8,0x1c
    7390:	244e0008 	addiu	t6,v0,8
    7394:	ae0e02d0 	sw	t6,720(s0)
    7398:	00195880 	sll	t3,t9,0x2
    739c:	3c0fde00 	lui	t7,0xde00
    73a0:	3c0c0000 	lui	t4,0x0
    73a4:	018b6021 	addu	t4,t4,t3
    73a8:	3c0100ff 	lui	at,0xff
    73ac:	ac4f0000 	sw	t7,0(v0)
    73b0:	8d8c0000 	lw	t4,0(t4)
    73b4:	3421ffff 	ori	at,at,0xffff
    73b8:	00816824 	and	t5,a0,at
    73bc:	3c018000 	lui	at,0x8000
    73c0:	018d7021 	addu	t6,t4,t5
    73c4:	01c17821 	addu	t7,t6,at
    73c8:	0c000000 	jal	0 <func_808FCF40>
    73cc:	ac4f0004 	sw	t7,4(v0)
    73d0:	8fb8007c 	lw	t8,124(sp)
    73d4:	3c060000 	lui	a2,0x0
    73d8:	24c60000 	addiu	a2,a2,0
    73dc:	27a40060 	addiu	a0,sp,96
    73e0:	24071442 	li	a3,5186
    73e4:	0c000000 	jal	0 <func_808FCF40>
    73e8:	8f050000 	lw	a1,0(t8)
    73ec:	8fbf003c 	lw	ra,60(sp)
    73f0:	8fb00038 	lw	s0,56(sp)
    73f4:	27bd0078 	addiu	sp,sp,120
    73f8:	03e00008 	jr	ra
    73fc:	00000000 	nop

00007400 <func_80904340>:
    7400:	27bdff48 	addiu	sp,sp,-184
    7404:	afb60060 	sw	s6,96(sp)
    7408:	00a0b025 	move	s6,a1
    740c:	afbf0064 	sw	ra,100(sp)
    7410:	afb5005c 	sw	s5,92(sp)
    7414:	afb40058 	sw	s4,88(sp)
    7418:	afb30054 	sw	s3,84(sp)
    741c:	afb20050 	sw	s2,80(sp)
    7420:	afb1004c 	sw	s1,76(sp)
    7424:	afb00048 	sw	s0,72(sp)
    7428:	f7be0040 	sdc1	$f30,64(sp)
    742c:	f7bc0038 	sdc1	$f28,56(sp)
    7430:	f7ba0030 	sdc1	$f26,48(sp)
    7434:	f7b80028 	sdc1	$f24,40(sp)
    7438:	f7b60020 	sdc1	$f22,32(sp)
    743c:	f7b40018 	sdc1	$f20,24(sp)
    7440:	8ca50000 	lw	a1,0(a1)
    7444:	00809825 	move	s3,a0
    7448:	3c060000 	lui	a2,0x0
    744c:	24c60000 	addiu	a2,a2,0
    7450:	27a40090 	addiu	a0,sp,144
    7454:	2407144c 	li	a3,5196
    7458:	0c000000 	jal	0 <func_808FCF40>
    745c:	00a09025 	move	s2,a1
    7460:	0c000000 	jal	0 <func_808FCF40>
    7464:	00000000 	nop
    7468:	86620330 	lh	v0,816(s3)
    746c:	3c053e05 	lui	a1,0x3e05
    7470:	34a51eb8 	ori	a1,a1,0x1eb8
    7474:	14400004 	bnez	v0,7488 <func_80904340+0x88>
    7478:	2664032c 	addiu	a0,s3,812
    747c:	866e0328 	lh	t6,808(s3)
    7480:	11c0008a 	beqz	t6,76ac <func_80904340+0x2ac>
    7484:	00000000 	nop
    7488:	10400004 	beqz	v0,749c <func_80904340+0x9c>
    748c:	3c063f80 	lui	a2,0x3f80
    7490:	244fffff 	addiu	t7,v0,-1
    7494:	10000008 	b	74b8 <func_80904340+0xb8>
    7498:	a66f0330 	sh	t7,816(s3)
    749c:	86780328 	lh	t8,808(s3)
    74a0:	2719ffba 	addiu	t9,t8,-70
    74a4:	a6790328 	sh	t9,808(s3)
    74a8:	86680328 	lh	t0,808(s3)
    74ac:	05030003 	bgezl	t0,74bc <func_80904340+0xbc>
    74b0:	3c073d85 	lui	a3,0x3d85
    74b4:	a6600328 	sh	zero,808(s3)
    74b8:	3c073d85 	lui	a3,0x3d85
    74bc:	0c000000 	jal	0 <func_808FCF40>
    74c0:	34e71eb8 	ori	a3,a3,0x1eb8
    74c4:	8e4202d0 	lw	v0,720(s2)
    74c8:	3c0ae700 	lui	t2,0xe700
    74cc:	3c0cfa00 	lui	t4,0xfa00
    74d0:	24490008 	addiu	t1,v0,8
    74d4:	ae4902d0 	sw	t1,720(s2)
    74d8:	ac400004 	sw	zero,4(v0)
    74dc:	ac4a0000 	sw	t2,0(v0)
    74e0:	8e4202d0 	lw	v0,720(s2)
    74e4:	2401ff00 	li	at,-256
    74e8:	241871ac 	li	t8,29100
    74ec:	244b0008 	addiu	t3,v0,8
    74f0:	ae4b02d0 	sw	t3,720(s2)
    74f4:	ac4c0000 	sw	t4,0(v0)
    74f8:	866d0328 	lh	t5,808(s3)
    74fc:	2406263a 	li	a2,9786
    7500:	31ae00ff 	andi	t6,t5,0xff
    7504:	01c17825 	or	t7,t6,at
    7508:	ac4f0004 	sw	t7,4(v0)
    750c:	86620340 	lh	v0,832(s3)
    7510:	24440001 	addiu	a0,v0,1
    7514:	0c000000 	jal	0 <func_808FCF40>
    7518:	03022823 	subu	a1,t8,v0
    751c:	0c000000 	jal	0 <func_808FCF40>
    7520:	00000000 	nop
    7524:	3c010000 	lui	at,0x0
    7528:	c4240000 	lwc1	$f4,0(at)
    752c:	3c0100ff 	lui	at,0xff
    7530:	3c020000 	lui	v0,0x0
    7534:	24420000 	addiu	v0,v0,0
    7538:	3421ffff 	ori	at,at,0xffff
    753c:	0041a824 	and	s5,v0,at
    7540:	3c013f00 	lui	at,0x3f00
    7544:	4481e000 	mtc1	at,$f28
    7548:	3c01c348 	lui	at,0xc348
    754c:	0002c900 	sll	t9,v0,0x4
    7550:	00194702 	srl	t0,t9,0x1c
    7554:	4481d000 	mtc1	at,$f26
    7558:	3c0a0000 	lui	t2,0x0
    755c:	254a0000 	addiu	t2,t2,0
    7560:	3c010000 	lui	at,0x0
    7564:	00084880 	sll	t1,t0,0x2
    7568:	46040782 	mul.s	$f30,$f0,$f4
    756c:	012aa021 	addu	s4,t1,t2
    7570:	c4380000 	lwc1	$f24,0(at)
    7574:	00008825 	move	s1,zero
    7578:	44913000 	mtc1	s1,$f6
    757c:	3c010000 	lui	at,0x0
    7580:	c42a0000 	lwc1	$f10,0(at)
    7584:	46803220 	cvt.s.w	$f8,$f6
    7588:	460a4402 	mul.s	$f16,$f8,$f10
    758c:	461e8500 	add.s	$f20,$f16,$f30
    7590:	0c000000 	jal	0 <func_808FCF40>
    7594:	4600a306 	mov.s	$f12,$f20
    7598:	46180582 	mul.s	$f22,$f0,$f24
    759c:	0c000000 	jal	0 <func_808FCF40>
    75a0:	4600a306 	mov.s	$f12,$f20
    75a4:	46180482 	mul.s	$f18,$f0,$f24
    75a8:	3c010000 	lui	at,0x0
    75ac:	c42e0000 	lwc1	$f14,0(at)
    75b0:	00003825 	move	a3,zero
    75b4:	4616d300 	add.s	$f12,$f26,$f22
    75b8:	4612d100 	add.s	$f4,$f26,$f18
    75bc:	44062000 	mfc1	a2,$f4
    75c0:	0c000000 	jal	0 <func_808FCF40>
    75c4:	00000000 	nop
    75c8:	c66c032c 	lwc1	$f12,812(s3)
    75cc:	24070001 	li	a3,1
    75d0:	44066000 	mfc1	a2,$f12
    75d4:	0c000000 	jal	0 <func_808FCF40>
    75d8:	46006386 	mov.s	$f14,$f12
    75dc:	4600a306 	mov.s	$f12,$f20
    75e0:	0c000000 	jal	0 <func_808FCF40>
    75e4:	24050001 	li	a1,1
    75e8:	0c000000 	jal	0 <func_808FCF40>
    75ec:	00000000 	nop
    75f0:	461c0181 	sub.s	$f6,$f0,$f28
    75f4:	3c0142c8 	lui	at,0x42c8
    75f8:	44814000 	mtc1	at,$f8
    75fc:	3c010000 	lui	at,0x0
    7600:	c4300000 	lwc1	$f16,0(at)
    7604:	46083282 	mul.s	$f10,$f6,$f8
    7608:	24050001 	li	a1,1
    760c:	46105302 	mul.s	$f12,$f10,$f16
    7610:	0c000000 	jal	0 <func_808FCF40>
    7614:	00000000 	nop
    7618:	0c000000 	jal	0 <func_808FCF40>
    761c:	00000000 	nop
    7620:	461c003c 	c.lt.s	$f0,$f28
    7624:	3c010000 	lui	at,0x0
    7628:	24050001 	li	a1,1
    762c:	45020004 	bc1fl	7640 <func_80904340+0x240>
    7630:	8e4202d0 	lw	v0,720(s2)
    7634:	0c000000 	jal	0 <func_808FCF40>
    7638:	c42c0000 	lwc1	$f12,0(at)
    763c:	8e4202d0 	lw	v0,720(s2)
    7640:	3c0cda38 	lui	t4,0xda38
    7644:	358c0003 	ori	t4,t4,0x3
    7648:	244b0008 	addiu	t3,v0,8
    764c:	ae4b02d0 	sw	t3,720(s2)
    7650:	3c050000 	lui	a1,0x0
    7654:	ac4c0000 	sw	t4,0(v0)
    7658:	8ec40000 	lw	a0,0(s6)
    765c:	24a50000 	addiu	a1,a1,0
    7660:	24061482 	li	a2,5250
    7664:	0c000000 	jal	0 <func_808FCF40>
    7668:	00408025 	move	s0,v0
    766c:	ae020004 	sw	v0,4(s0)
    7670:	8e4202d0 	lw	v0,720(s2)
    7674:	3c0ede00 	lui	t6,0xde00
    7678:	26310001 	addiu	s1,s1,1
    767c:	244d0008 	addiu	t5,v0,8
    7680:	ae4d02d0 	sw	t5,720(s2)
    7684:	ac4e0000 	sw	t6,0(v0)
    7688:	8e8f0000 	lw	t7,0(s4)
    768c:	00118c00 	sll	s1,s1,0x10
    7690:	3c018000 	lui	at,0x8000
    7694:	01f5c021 	addu	t8,t7,s5
    7698:	00118c03 	sra	s1,s1,0x10
    769c:	0301c821 	addu	t9,t8,at
    76a0:	2a210005 	slti	at,s1,5
    76a4:	1420ffb4 	bnez	at,7578 <func_80904340+0x178>
    76a8:	ac590004 	sw	t9,4(v0)
    76ac:	0c000000 	jal	0 <func_808FCF40>
    76b0:	00000000 	nop
    76b4:	3c060000 	lui	a2,0x0
    76b8:	24c60000 	addiu	a2,a2,0
    76bc:	27a40090 	addiu	a0,sp,144
    76c0:	8ec50000 	lw	a1,0(s6)
    76c4:	0c000000 	jal	0 <func_808FCF40>
    76c8:	24071487 	li	a3,5255
    76cc:	8fbf0064 	lw	ra,100(sp)
    76d0:	d7b40018 	ldc1	$f20,24(sp)
    76d4:	d7b60020 	ldc1	$f22,32(sp)
    76d8:	d7b80028 	ldc1	$f24,40(sp)
    76dc:	d7ba0030 	ldc1	$f26,48(sp)
    76e0:	d7bc0038 	ldc1	$f28,56(sp)
    76e4:	d7be0040 	ldc1	$f30,64(sp)
    76e8:	8fb00048 	lw	s0,72(sp)
    76ec:	8fb1004c 	lw	s1,76(sp)
    76f0:	8fb20050 	lw	s2,80(sp)
    76f4:	8fb30054 	lw	s3,84(sp)
    76f8:	8fb40058 	lw	s4,88(sp)
    76fc:	8fb5005c 	lw	s5,92(sp)
    7700:	8fb60060 	lw	s6,96(sp)
    7704:	03e00008 	jr	ra
    7708:	27bd00b8 	addiu	sp,sp,184

0000770c <func_8090464C>:
    770c:	27bdffb0 	addiu	sp,sp,-80
    7710:	afbf001c 	sw	ra,28(sp)
    7714:	afb00018 	sw	s0,24(sp)
    7718:	afa40050 	sw	a0,80(sp)
    771c:	afa50054 	sw	a1,84(sp)
    7720:	c48601b4 	lwc1	$f6,436(a0)
    7724:	44802000 	mtc1	zero,$f4
    7728:	3c060000 	lui	a2,0x0
    772c:	24c60000 	addiu	a2,a2,0
    7730:	4606203c 	c.lt.s	$f4,$f6
    7734:	27a40038 	addiu	a0,sp,56
    7738:	45020063 	bc1fl	78c8 <func_8090464C+0x1bc>
    773c:	8fbf001c 	lw	ra,28(sp)
    7740:	8ca50000 	lw	a1,0(a1)
    7744:	24071490 	li	a3,5264
    7748:	0c000000 	jal	0 <func_808FCF40>
    774c:	00a08025 	move	s0,a1
    7750:	0c000000 	jal	0 <func_808FCF40>
    7754:	00000000 	nop
    7758:	8e0202d0 	lw	v0,720(s0)
    775c:	8fa40050 	lw	a0,80(sp)
    7760:	3c19e700 	lui	t9,0xe700
    7764:	24580008 	addiu	t8,v0,8
    7768:	ae1802d0 	sw	t8,720(s0)
    776c:	ac400004 	sw	zero,4(v0)
    7770:	ac590000 	sw	t9,0(v0)
    7774:	8e0202d0 	lw	v0,720(s0)
    7778:	3c09fa00 	lui	t1,0xfa00
    777c:	2401aa00 	li	at,-22016
    7780:	24480008 	addiu	t0,v0,8
    7784:	ae0802d0 	sw	t0,720(s0)
    7788:	ac490000 	sw	t1,0(v0)
    778c:	c48801b4 	lwc1	$f8,436(a0)
    7790:	3c08ffc8 	lui	t0,0xffc8
    7794:	35080080 	ori	t0,t0,0x80
    7798:	4600428d 	trunc.w.s	$f10,$f8
    779c:	3c19fb00 	lui	t9,0xfb00
    77a0:	00003825 	move	a3,zero
    77a4:	440d5000 	mfc1	t5,$f10
    77a8:	00000000 	nop
    77ac:	31ae00ff 	andi	t6,t5,0xff
    77b0:	01c17825 	or	t7,t6,at
    77b4:	ac4f0004 	sw	t7,4(v0)
    77b8:	8e0202d0 	lw	v0,720(s0)
    77bc:	24580008 	addiu	t8,v0,8
    77c0:	ae1802d0 	sw	t8,720(s0)
    77c4:	ac480004 	sw	t0,4(v0)
    77c8:	ac590000 	sw	t9,0(v0)
    77cc:	8c8601c0 	lw	a2,448(a0)
    77d0:	c48e01bc 	lwc1	$f14,444(a0)
    77d4:	0c000000 	jal	0 <func_808FCF40>
    77d8:	c48c01b8 	lwc1	$f12,440(a0)
    77dc:	8fa40054 	lw	a0,84(sp)
    77e0:	3c010001 	lui	at,0x1
    77e4:	34211da0 	ori	at,at,0x1da0
    77e8:	0c000000 	jal	0 <func_808FCF40>
    77ec:	00812021 	addu	a0,a0,at
    77f0:	3c010000 	lui	at,0x0
    77f4:	c42c0000 	lwc1	$f12,0(at)
    77f8:	0c000000 	jal	0 <func_808FCF40>
    77fc:	24050001 	li	a1,1
    7800:	3c010000 	lui	at,0x0
    7804:	c42c0000 	lwc1	$f12,0(at)
    7808:	3c063f80 	lui	a2,0x3f80
    780c:	24070001 	li	a3,1
    7810:	0c000000 	jal	0 <func_808FCF40>
    7814:	46006386 	mov.s	$f14,$f12
    7818:	8e0202d0 	lw	v0,720(s0)
    781c:	3c0ada38 	lui	t2,0xda38
    7820:	354a0003 	ori	t2,t2,0x3
    7824:	24490008 	addiu	t1,v0,8
    7828:	ae0902d0 	sw	t1,720(s0)
    782c:	ac4a0000 	sw	t2,0(v0)
    7830:	8fab0054 	lw	t3,84(sp)
    7834:	3c050000 	lui	a1,0x0
    7838:	24a50000 	addiu	a1,a1,0
    783c:	8d640000 	lw	a0,0(t3)
    7840:	240614aa 	li	a2,5290
    7844:	0c000000 	jal	0 <func_808FCF40>
    7848:	afa20028 	sw	v0,40(sp)
    784c:	8fa30028 	lw	v1,40(sp)
    7850:	3c040000 	lui	a0,0x0
    7854:	24840000 	addiu	a0,a0,0
    7858:	ac620004 	sw	v0,4(v1)
    785c:	8e0202d0 	lw	v0,720(s0)
    7860:	00047100 	sll	t6,a0,0x4
    7864:	000e7f02 	srl	t7,t6,0x1c
    7868:	244c0008 	addiu	t4,v0,8
    786c:	ae0c02d0 	sw	t4,720(s0)
    7870:	000fc080 	sll	t8,t7,0x2
    7874:	3c0dde00 	lui	t5,0xde00
    7878:	3c190000 	lui	t9,0x0
    787c:	0338c821 	addu	t9,t9,t8
    7880:	3c0100ff 	lui	at,0xff
    7884:	ac4d0000 	sw	t5,0(v0)
    7888:	8f390000 	lw	t9,0(t9)
    788c:	3421ffff 	ori	at,at,0xffff
    7890:	00814024 	and	t0,a0,at
    7894:	3c018000 	lui	at,0x8000
    7898:	03284821 	addu	t1,t9,t0
    789c:	01215021 	addu	t2,t1,at
    78a0:	0c000000 	jal	0 <func_808FCF40>
    78a4:	ac4a0004 	sw	t2,4(v0)
    78a8:	8fab0054 	lw	t3,84(sp)
    78ac:	3c060000 	lui	a2,0x0
    78b0:	24c60000 	addiu	a2,a2,0
    78b4:	27a40038 	addiu	a0,sp,56
    78b8:	240714ad 	li	a3,5293
    78bc:	0c000000 	jal	0 <func_808FCF40>
    78c0:	8d650000 	lw	a1,0(t3)
    78c4:	8fbf001c 	lw	ra,28(sp)
    78c8:	8fb00018 	lw	s0,24(sp)
    78cc:	27bd0050 	addiu	sp,sp,80
    78d0:	03e00008 	jr	ra
    78d4:	00000000 	nop

000078d8 <func_80904818>:
    78d8:	27bdffb8 	addiu	sp,sp,-72
    78dc:	afb00018 	sw	s0,24(sp)
    78e0:	00a08025 	move	s0,a1
    78e4:	afbf001c 	sw	ra,28(sp)
    78e8:	afa40048 	sw	a0,72(sp)
    78ec:	afa60050 	sw	a2,80(sp)
    78f0:	afa70054 	sw	a3,84(sp)
    78f4:	8c850000 	lw	a1,0(a0)
    78f8:	3c060000 	lui	a2,0x0
    78fc:	24c60000 	addiu	a2,a2,0
    7900:	27a4002c 	addiu	a0,sp,44
    7904:	240714eb 	li	a3,5355
    7908:	0c000000 	jal	0 <func_808FCF40>
    790c:	afa5003c 	sw	a1,60(sp)
    7910:	2401000f 	li	at,15
    7914:	1601000b 	bne	s0,at,7944 <func_80904818+0x6c>
    7918:	8fa8003c 	lw	t0,60(sp)
    791c:	8fa20058 	lw	v0,88(sp)
    7920:	8fa5005c 	lw	a1,92(sp)
    7924:	844f0002 	lh	t7,2(v0)
    7928:	84b8031a 	lh	t8,794(a1)
    792c:	84490004 	lh	t1,4(v0)
    7930:	01f8c821 	addu	t9,t7,t8
    7934:	a4590002 	sh	t9,2(v0)
    7938:	84aa031c 	lh	t2,796(a1)
    793c:	012a5821 	addu	t3,t1,t2
    7940:	a44b0004 	sh	t3,4(v0)
    7944:	2a01002a 	slti	at,s0,42
    7948:	8fa20058 	lw	v0,88(sp)
    794c:	1420002d 	bnez	at,7a04 <func_80904818+0x12c>
    7950:	8fa5005c 	lw	a1,92(sp)
    7954:	00106040 	sll	t4,s0,0x1
    7958:	00ac1821 	addu	v1,a1,t4
    795c:	846e02f4 	lh	t6,756(v1)
    7960:	844d0000 	lh	t5,0(v0)
    7964:	84b80346 	lh	t8,838(a1)
    7968:	84490002 	lh	t1,2(v0)
    796c:	01ae7821 	addu	t7,t5,t6
    7970:	01f8c821 	addu	t9,t7,t8
    7974:	a4590000 	sh	t9,0(v0)
    7978:	846a02fe 	lh	t2,766(v1)
    797c:	3c0ffb00 	lui	t7,0xfb00
    7980:	012a5821 	addu	t3,t1,t2
    7984:	a44b0002 	sh	t3,2(v0)
    7988:	84ac0342 	lh	t4,834(a1)
    798c:	318d0001 	andi	t5,t4,0x1
    7990:	51a0000a 	beqzl	t5,79bc <func_80904818+0xe4>
    7994:	8d0302c0 	lw	v1,704(t0)
    7998:	8d0302c0 	lw	v1,704(t0)
    799c:	3c18ff00 	lui	t8,0xff00
    79a0:	371800ff 	ori	t8,t8,0xff
    79a4:	246e0008 	addiu	t6,v1,8
    79a8:	ad0e02c0 	sw	t6,704(t0)
    79ac:	ac780004 	sw	t8,4(v1)
    79b0:	10000014 	b	7a04 <func_80904818+0x12c>
    79b4:	ac6f0000 	sw	t7,0(v1)
    79b8:	8d0302c0 	lw	v1,704(t0)
    79bc:	3c09fb00 	lui	t1,0xfb00
    79c0:	24790008 	addiu	t9,v1,8
    79c4:	ad1902c0 	sw	t9,704(t0)
    79c8:	ac690000 	sw	t1,0(v1)
    79cc:	c4a401b0 	lwc1	$f4,432(a1)
    79d0:	4600218d 	trunc.w.s	$f6,$f4
    79d4:	44023000 	mfc1	v0,$f6
    79d8:	00000000 	nop
    79dc:	00021400 	sll	v0,v0,0x10
    79e0:	00021403 	sra	v0,v0,0x10
    79e4:	304200ff 	andi	v0,v0,0xff
    79e8:	00025a00 	sll	t3,v0,0x8
    79ec:	00026600 	sll	t4,v0,0x18
    79f0:	016c6825 	or	t5,t3,t4
    79f4:	00027400 	sll	t6,v0,0x10
    79f8:	01ae7825 	or	t7,t5,t6
    79fc:	35f800ff 	ori	t8,t7,0xff
    7a00:	ac780004 	sw	t8,4(v1)
    7a04:	24010007 	li	at,7
    7a08:	12010008 	beq	s0,at,7a2c <func_80904818+0x154>
    7a0c:	27a4002c 	addiu	a0,sp,44
    7a10:	2401000d 	li	at,13
    7a14:	12010005 	beq	s0,at,7a2c <func_80904818+0x154>
    7a18:	24010021 	li	at,33
    7a1c:	12010003 	beq	s0,at,7a2c <func_80904818+0x154>
    7a20:	24010022 	li	at,34
    7a24:	56010004 	bnel	s0,at,7a38 <func_80904818+0x160>
    7a28:	8fa90048 	lw	t1,72(sp)
    7a2c:	8fb90050 	lw	t9,80(sp)
    7a30:	af200000 	sw	zero,0(t9)
    7a34:	8fa90048 	lw	t1,72(sp)
    7a38:	3c060000 	lui	a2,0x0
    7a3c:	24c60000 	addiu	a2,a2,0
    7a40:	24071537 	li	a3,5431
    7a44:	0c000000 	jal	0 <func_808FCF40>
    7a48:	8d250000 	lw	a1,0(t1)
    7a4c:	8fbf001c 	lw	ra,28(sp)
    7a50:	8fb00018 	lw	s0,24(sp)
    7a54:	27bd0048 	addiu	sp,sp,72
    7a58:	03e00008 	jr	ra
    7a5c:	00001025 	move	v0,zero

00007a60 <func_809049A0>:
    7a60:	27bdffa0 	addiu	sp,sp,-96
    7a64:	afbf001c 	sw	ra,28(sp)
    7a68:	afb00018 	sw	s0,24(sp)
    7a6c:	afa40060 	sw	a0,96(sp)
    7a70:	afa50064 	sw	a1,100(sp)
    7a74:	afa60068 	sw	a2,104(sp)
    7a78:	afa7006c 	sw	a3,108(sp)
    7a7c:	8c850000 	lw	a1,0(a0)
    7a80:	3c060000 	lui	a2,0x0
    7a84:	24c60000 	addiu	a2,a2,0
    7a88:	27a40038 	addiu	a0,sp,56
    7a8c:	24071553 	li	a3,5459
    7a90:	0c000000 	jal	0 <func_808FCF40>
    7a94:	afa50048 	sw	a1,72(sp)
    7a98:	3c010000 	lui	at,0x0
    7a9c:	c4240000 	lwc1	$f4,0(at)
    7aa0:	8fa30064 	lw	v1,100(sp)
    7aa4:	3c010000 	lui	at,0x0
    7aa8:	3c020000 	lui	v0,0x0
    7aac:	e4240000 	swc1	$f4,0(at)
    7ab0:	3c010000 	lui	at,0x0
    7ab4:	00431021 	addu	v0,v0,v1
    7ab8:	c4260000 	lwc1	$f6,0(at)
    7abc:	80420000 	lb	v0,0(v0)
    7ac0:	3c010000 	lui	at,0x0
    7ac4:	8fb00070 	lw	s0,112(sp)
    7ac8:	0440000a 	bltz	v0,7af4 <func_809049A0+0x94>
    7acc:	e4260000 	swc1	$f6,0(at)
    7ad0:	00027880 	sll	t7,v0,0x2
    7ad4:	01e27823 	subu	t7,t7,v0
    7ad8:	000f7880 	sll	t7,t7,0x2
    7adc:	020f2821 	addu	a1,s0,t7
    7ae0:	3c040000 	lui	a0,0x0
    7ae4:	24840000 	addiu	a0,a0,0
    7ae8:	0c000000 	jal	0 <func_808FCF40>
    7aec:	24a50234 	addiu	a1,a1,564
    7af0:	8fa30064 	lw	v1,100(sp)
    7af4:	2401000f 	li	at,15
    7af8:	14610007 	bne	v1,at,7b18 <func_809049A0+0xb8>
    7afc:	8fb00070 	lw	s0,112(sp)
    7b00:	3c040000 	lui	a0,0x0
    7b04:	24840000 	addiu	a0,a0,0
    7b08:	0c000000 	jal	0 <func_808FCF40>
    7b0c:	260501b8 	addiu	a1,s0,440
    7b10:	10000028 	b	7bb4 <func_809049A0+0x154>
    7b14:	8fa30064 	lw	v1,100(sp)
    7b18:	24010003 	li	at,3
    7b1c:	14610006 	bne	v1,at,7b38 <func_809049A0+0xd8>
    7b20:	3c040000 	lui	a0,0x0
    7b24:	24840000 	addiu	a0,a0,0
    7b28:	0c000000 	jal	0 <func_808FCF40>
    7b2c:	260501f4 	addiu	a1,s0,500
    7b30:	10000020 	b	7bb4 <func_809049A0+0x154>
    7b34:	8fa30064 	lw	v1,100(sp)
    7b38:	24010009 	li	at,9
    7b3c:	14610006 	bne	v1,at,7b58 <func_809049A0+0xf8>
    7b40:	3c040000 	lui	a0,0x0
    7b44:	24840000 	addiu	a0,a0,0
    7b48:	0c000000 	jal	0 <func_808FCF40>
    7b4c:	260501e8 	addiu	a1,s0,488
    7b50:	10000018 	b	7bb4 <func_809049A0+0x154>
    7b54:	8fa30064 	lw	v1,100(sp)
    7b58:	24010026 	li	at,38
    7b5c:	14610006 	bne	v1,at,7b78 <func_809049A0+0x118>
    7b60:	3c040000 	lui	a0,0x0
    7b64:	24840000 	addiu	a0,a0,0
    7b68:	0c000000 	jal	0 <func_808FCF40>
    7b6c:	260501dc 	addiu	a1,s0,476
    7b70:	10000010 	b	7bb4 <func_809049A0+0x154>
    7b74:	8fa30064 	lw	v1,100(sp)
    7b78:	24010029 	li	at,41
    7b7c:	14610006 	bne	v1,at,7b98 <func_809049A0+0x138>
    7b80:	3c040000 	lui	a0,0x0
    7b84:	24840000 	addiu	a0,a0,0
    7b88:	0c000000 	jal	0 <func_808FCF40>
    7b8c:	260501d0 	addiu	a1,s0,464
    7b90:	10000008 	b	7bb4 <func_809049A0+0x154>
    7b94:	8fa30064 	lw	v1,100(sp)
    7b98:	2401002d 	li	at,45
    7b9c:	14610005 	bne	v1,at,7bb4 <func_809049A0+0x154>
    7ba0:	3c040000 	lui	a0,0x0
    7ba4:	24840000 	addiu	a0,a0,0
    7ba8:	0c000000 	jal	0 <func_808FCF40>
    7bac:	260501c4 	addiu	a1,s0,452
    7bb0:	8fa30064 	lw	v1,100(sp)
    7bb4:	3c180000 	lui	t8,0x0
    7bb8:	27180000 	addiu	t8,t8,0
    7bbc:	00781021 	addu	v0,v1,t8
    7bc0:	80470000 	lb	a3,0(v0)
    7bc4:	3c040000 	lui	a0,0x0
    7bc8:	24840000 	addiu	a0,a0,0
    7bcc:	04e00009 	bltz	a3,7bf4 <func_809049A0+0x194>
    7bd0:	27a5004c 	addiu	a1,sp,76
    7bd4:	afa20024 	sw	v0,36(sp)
    7bd8:	0c000000 	jal	0 <func_808FCF40>
    7bdc:	a3a7005e 	sb	a3,94(sp)
    7be0:	83a4005e 	lb	a0,94(sp)
    7be4:	26050424 	addiu	a1,s0,1060
    7be8:	0c000000 	jal	0 <func_808FCF40>
    7bec:	27a6004c 	addiu	a2,sp,76
    7bf0:	8fa20024 	lw	v0,36(sp)
    7bf4:	3c190000 	lui	t9,0x0
    7bf8:	27390000 	addiu	t9,t9,0
    7bfc:	10590004 	beq	v0,t9,7c10 <func_809049A0+0x1b0>
    7c00:	3c080000 	lui	t0,0x0
    7c04:	25080000 	addiu	t0,t0,0
    7c08:	14480024 	bne	v0,t0,7c9c <func_809049A0+0x23c>
    7c0c:	3c180000 	lui	t8,0x0
    7c10:	0c000000 	jal	0 <func_808FCF40>
    7c14:	afa20024 	sw	v0,36(sp)
    7c18:	c60c0224 	lwc1	$f12,548(s0)
    7c1c:	24070001 	li	a3,1
    7c20:	44066000 	mfc1	a2,$f12
    7c24:	0c000000 	jal	0 <func_808FCF40>
    7c28:	46006386 	mov.s	$f14,$f12
    7c2c:	8fa70048 	lw	a3,72(sp)
    7c30:	3c0ada38 	lui	t2,0xda38
    7c34:	354a0003 	ori	t2,t2,0x3
    7c38:	8ce202c0 	lw	v0,704(a3)
    7c3c:	3c050000 	lui	a1,0x0
    7c40:	24a50000 	addiu	a1,a1,0
    7c44:	24490008 	addiu	t1,v0,8
    7c48:	ace902c0 	sw	t1,704(a3)
    7c4c:	ac4a0000 	sw	t2,0(v0)
    7c50:	8fab0060 	lw	t3,96(sp)
    7c54:	24061592 	li	a2,5522
    7c58:	8d640000 	lw	a0,0(t3)
    7c5c:	0c000000 	jal	0 <func_808FCF40>
    7c60:	afa20034 	sw	v0,52(sp)
    7c64:	8fa30034 	lw	v1,52(sp)
    7c68:	3c0dde00 	lui	t5,0xde00
    7c6c:	ac620004 	sw	v0,4(v1)
    7c70:	8fa40048 	lw	a0,72(sp)
    7c74:	8c8202c0 	lw	v0,704(a0)
    7c78:	244c0008 	addiu	t4,v0,8
    7c7c:	ac8c02c0 	sw	t4,704(a0)
    7c80:	ac4d0000 	sw	t5,0(v0)
    7c84:	8fae0068 	lw	t6,104(sp)
    7c88:	8dcf0000 	lw	t7,0(t6)
    7c8c:	0c000000 	jal	0 <func_808FCF40>
    7c90:	ac4f0004 	sw	t7,4(v0)
    7c94:	10000029 	b	7d3c <func_809049A0+0x2dc>
    7c98:	8fa20024 	lw	v0,36(sp)
    7c9c:	27180000 	addiu	t8,t8,0
    7ca0:	10580004 	beq	v0,t8,7cb4 <func_809049A0+0x254>
    7ca4:	3c190000 	lui	t9,0x0
    7ca8:	27390000 	addiu	t9,t9,0
    7cac:	54590024 	bnel	v0,t9,7d40 <func_809049A0+0x2e0>
    7cb0:	8fb80068 	lw	t8,104(sp)
    7cb4:	0c000000 	jal	0 <func_808FCF40>
    7cb8:	afa20024 	sw	v0,36(sp)
    7cbc:	c60c0228 	lwc1	$f12,552(s0)
    7cc0:	24070001 	li	a3,1
    7cc4:	44066000 	mfc1	a2,$f12
    7cc8:	0c000000 	jal	0 <func_808FCF40>
    7ccc:	46006386 	mov.s	$f14,$f12
    7cd0:	8fa70048 	lw	a3,72(sp)
    7cd4:	3c09da38 	lui	t1,0xda38
    7cd8:	35290003 	ori	t1,t1,0x3
    7cdc:	8ce202c0 	lw	v0,704(a3)
    7ce0:	3c050000 	lui	a1,0x0
    7ce4:	24a50000 	addiu	a1,a1,0
    7ce8:	24480008 	addiu	t0,v0,8
    7cec:	ace802c0 	sw	t0,704(a3)
    7cf0:	ac490000 	sw	t1,0(v0)
    7cf4:	8faa0060 	lw	t2,96(sp)
    7cf8:	2406159d 	li	a2,5533
    7cfc:	8d440000 	lw	a0,0(t2)
    7d00:	0c000000 	jal	0 <func_808FCF40>
    7d04:	afa2002c 	sw	v0,44(sp)
    7d08:	8fa3002c 	lw	v1,44(sp)
    7d0c:	3c0dde00 	lui	t5,0xde00
    7d10:	ac620004 	sw	v0,4(v1)
    7d14:	8fab0048 	lw	t3,72(sp)
    7d18:	8d6202c0 	lw	v0,704(t3)
    7d1c:	244c0008 	addiu	t4,v0,8
    7d20:	ad6c02c0 	sw	t4,704(t3)
    7d24:	ac4d0000 	sw	t5,0(v0)
    7d28:	8fae0068 	lw	t6,104(sp)
    7d2c:	8dcf0000 	lw	t7,0(t6)
    7d30:	0c000000 	jal	0 <func_808FCF40>
    7d34:	ac4f0004 	sw	t7,4(v0)
    7d38:	8fa20024 	lw	v0,36(sp)
    7d3c:	8fb80068 	lw	t8,104(sp)
    7d40:	3c080000 	lui	t0,0x0
    7d44:	25080000 	addiu	t0,t0,0
    7d48:	8f190000 	lw	t9,0(t8)
    7d4c:	53200033 	beqzl	t9,7e1c <func_809049A0+0x3bc>
    7d50:	8fab0060 	lw	t3,96(sp)
    7d54:	14480018 	bne	v0,t0,7db8 <func_809049A0+0x358>
    7d58:	3c0a0000 	lui	t2,0x0
    7d5c:	92090312 	lbu	t1,786(s0)
    7d60:	24010001 	li	at,1
    7d64:	3c040000 	lui	a0,0x0
    7d68:	15210013 	bne	t1,at,7db8 <func_809049A0+0x358>
    7d6c:	24840000 	addiu	a0,a0,0
    7d70:	26060218 	addiu	a2,s0,536
    7d74:	00c02825 	move	a1,a2
    7d78:	0c000000 	jal	0 <func_808FCF40>
    7d7c:	afa60024 	sw	a2,36(sp)
    7d80:	8fa60024 	lw	a2,36(sp)
    7d84:	00002025 	move	a0,zero
    7d88:	0c000000 	jal	0 <func_808FCF40>
    7d8c:	26050444 	addiu	a1,s0,1092
    7d90:	3c040000 	lui	a0,0x0
    7d94:	24840000 	addiu	a0,a0,0
    7d98:	0c000000 	jal	0 <func_808FCF40>
    7d9c:	26050200 	addiu	a1,s0,512
    7da0:	3c040000 	lui	a0,0x0
    7da4:	24840000 	addiu	a0,a0,0
    7da8:	0c000000 	jal	0 <func_808FCF40>
    7dac:	2605020c 	addiu	a1,s0,524
    7db0:	1000001a 	b	7e1c <func_809049A0+0x3bc>
    7db4:	8fab0060 	lw	t3,96(sp)
    7db8:	254a0000 	addiu	t2,t2,0
    7dbc:	544a0017 	bnel	v0,t2,7e1c <func_809049A0+0x3bc>
    7dc0:	8fab0060 	lw	t3,96(sp)
    7dc4:	920c0312 	lbu	t4,786(s0)
    7dc8:	24010002 	li	at,2
    7dcc:	3c040000 	lui	a0,0x0
    7dd0:	15810011 	bne	t4,at,7e18 <func_809049A0+0x3b8>
    7dd4:	24840000 	addiu	a0,a0,0
    7dd8:	26060218 	addiu	a2,s0,536
    7ddc:	00c02825 	move	a1,a2
    7de0:	0c000000 	jal	0 <func_808FCF40>
    7de4:	afa60024 	sw	a2,36(sp)
    7de8:	8fa60024 	lw	a2,36(sp)
    7dec:	24040001 	li	a0,1
    7df0:	0c000000 	jal	0 <func_808FCF40>
    7df4:	26050444 	addiu	a1,s0,1092
    7df8:	3c040000 	lui	a0,0x0
    7dfc:	24840000 	addiu	a0,a0,0
    7e00:	0c000000 	jal	0 <func_808FCF40>
    7e04:	26050200 	addiu	a1,s0,512
    7e08:	3c040000 	lui	a0,0x0
    7e0c:	24840000 	addiu	a0,a0,0
    7e10:	0c000000 	jal	0 <func_808FCF40>
    7e14:	2605020c 	addiu	a1,s0,524
    7e18:	8fab0060 	lw	t3,96(sp)
    7e1c:	3c060000 	lui	a2,0x0
    7e20:	24c60000 	addiu	a2,a2,0
    7e24:	27a40038 	addiu	a0,sp,56
    7e28:	240715be 	li	a3,5566
    7e2c:	0c000000 	jal	0 <func_808FCF40>
    7e30:	8d650000 	lw	a1,0(t3)
    7e34:	8fbf001c 	lw	ra,28(sp)
    7e38:	8fb00018 	lw	s0,24(sp)
    7e3c:	27bd0060 	addiu	sp,sp,96
    7e40:	03e00008 	jr	ra
    7e44:	00000000 	nop

00007e48 <func_80904D88>:
    7e48:	27bdff70 	addiu	sp,sp,-144
    7e4c:	afbf0044 	sw	ra,68(sp)
    7e50:	afbe0040 	sw	s8,64(sp)
    7e54:	afb7003c 	sw	s7,60(sp)
    7e58:	afb60038 	sw	s6,56(sp)
    7e5c:	afb50034 	sw	s5,52(sp)
    7e60:	afb40030 	sw	s4,48(sp)
    7e64:	afb3002c 	sw	s3,44(sp)
    7e68:	afb20028 	sw	s2,40(sp)
    7e6c:	afb10024 	sw	s1,36(sp)
    7e70:	afb00020 	sw	s0,32(sp)
    7e74:	f7b40018 	sdc1	$f20,24(sp)
    7e78:	afa50094 	sw	a1,148(sp)
    7e7c:	8ca50000 	lw	a1,0(a1)
    7e80:	00809825 	move	s3,a0
    7e84:	3c060000 	lui	a2,0x0
    7e88:	24c60000 	addiu	a2,a2,0
    7e8c:	27a40074 	addiu	a0,sp,116
    7e90:	240715c7 	li	a3,5575
    7e94:	0c000000 	jal	0 <func_808FCF40>
    7e98:	00a09025 	move	s2,a1
    7e9c:	4480a000 	mtc1	zero,$f20
    7ea0:	c664030c 	lwc1	$f4,780(s3)
    7ea4:	8faf0094 	lw	t7,148(sp)
    7ea8:	4604a03c 	c.lt.s	$f20,$f4
    7eac:	00000000 	nop
    7eb0:	45020062 	bc1fl	803c <func_80904D88+0x1f4>
    7eb4:	8fae0094 	lw	t6,148(sp)
    7eb8:	0c000000 	jal	0 <func_808FCF40>
    7ebc:	8de40000 	lw	a0,0(t7)
    7ec0:	c6660380 	lwc1	$f6,896(s3)
    7ec4:	3c010001 	lui	at,0x1
    7ec8:	3c150000 	lui	s5,0x0
    7ecc:	4606a03c 	c.lt.s	$f20,$f6
    7ed0:	3c16de00 	lui	s6,0xde00
    7ed4:	26b50000 	addiu	s5,s5,0
    7ed8:	34211da0 	ori	at,at,0x1da0
    7edc:	45000010 	bc1f	7f20 <func_80904D88+0xd8>
    7ee0:	00008825 	move	s1,zero
    7ee4:	8e4302d0 	lw	v1,720(s2)
    7ee8:	3c19fa00 	lui	t9,0xfa00
    7eec:	2408aaff 	li	t0,-21761
    7ef0:	24780008 	addiu	t8,v1,8
    7ef4:	ae5802d0 	sw	t8,720(s2)
    7ef8:	ac680004 	sw	t0,4(v1)
    7efc:	ac790000 	sw	t9,0(v1)
    7f00:	8e4302d0 	lw	v1,720(s2)
    7f04:	3c0afb00 	lui	t2,0xfb00
    7f08:	3c0bffc8 	lui	t3,0xffc8
    7f0c:	24690008 	addiu	t1,v1,8
    7f10:	ae4902d0 	sw	t1,720(s2)
    7f14:	ac6b0004 	sw	t3,4(v1)
    7f18:	10000010 	b	7f5c <func_80904D88+0x114>
    7f1c:	ac6a0000 	sw	t2,0(v1)
    7f20:	8e4302d0 	lw	v1,720(s2)
    7f24:	3c0dfa00 	lui	t5,0xfa00
    7f28:	240effff 	li	t6,-1
    7f2c:	246c0008 	addiu	t4,v1,8
    7f30:	ae4c02d0 	sw	t4,720(s2)
    7f34:	ac6e0004 	sw	t6,4(v1)
    7f38:	ac6d0000 	sw	t5,0(v1)
    7f3c:	8e4302d0 	lw	v1,720(s2)
    7f40:	3c1964ff 	lui	t9,0x64ff
    7f44:	3739ff00 	ori	t9,t9,0xff00
    7f48:	246f0008 	addiu	t7,v1,8
    7f4c:	ae4f02d0 	sw	t7,720(s2)
    7f50:	3c18fb00 	lui	t8,0xfb00
    7f54:	ac780000 	sw	t8,0(v1)
    7f58:	ac790004 	sw	t9,4(v1)
    7f5c:	8e4302d0 	lw	v1,720(s2)
    7f60:	3c090000 	lui	t1,0x0
    7f64:	25290000 	addiu	t1,t1,0
    7f68:	24680008 	addiu	t0,v1,8
    7f6c:	ae4802d0 	sw	t0,720(s2)
    7f70:	ac690004 	sw	t1,4(v1)
    7f74:	ac760000 	sw	s6,0(v1)
    7f78:	8fb40094 	lw	s4,148(sp)
    7f7c:	3c1eda38 	lui	s8,0xda38
    7f80:	37de0003 	ori	s8,s8,0x3
    7f84:	0281a021 	addu	s4,s4,at
    7f88:	3c010000 	lui	at,0x0
    7f8c:	c4340000 	lwc1	$f20,0(at)
    7f90:	2417000c 	li	s7,12
    7f94:	02370019 	multu	s1,s7
    7f98:	00003825 	move	a3,zero
    7f9c:	00005012 	mflo	t2
    7fa0:	026a1021 	addu	v0,s3,t2
    7fa4:	c44c0234 	lwc1	$f12,564(v0)
    7fa8:	c44e0238 	lwc1	$f14,568(v0)
    7fac:	0c000000 	jal	0 <func_808FCF40>
    7fb0:	8c46023c 	lw	a2,572(v0)
    7fb4:	0c000000 	jal	0 <func_808FCF40>
    7fb8:	02802025 	move	a0,s4
    7fbc:	c66c030c 	lwc1	$f12,780(s3)
    7fc0:	24070001 	li	a3,1
    7fc4:	44066000 	mfc1	a2,$f12
    7fc8:	0c000000 	jal	0 <func_808FCF40>
    7fcc:	46006386 	mov.s	$f14,$f12
    7fd0:	0c000000 	jal	0 <func_808FCF40>
    7fd4:	4600a306 	mov.s	$f12,$f20
    7fd8:	46000306 	mov.s	$f12,$f0
    7fdc:	0c000000 	jal	0 <func_808FCF40>
    7fe0:	24050001 	li	a1,1
    7fe4:	8e5002d0 	lw	s0,720(s2)
    7fe8:	3c050000 	lui	a1,0x0
    7fec:	24a50000 	addiu	a1,a1,0
    7ff0:	260b0008 	addiu	t3,s0,8
    7ff4:	ae4b02d0 	sw	t3,720(s2)
    7ff8:	ae1e0000 	sw	s8,0(s0)
    7ffc:	8fac0094 	lw	t4,148(sp)
    8000:	240615f2 	li	a2,5618
    8004:	0c000000 	jal	0 <func_808FCF40>
    8008:	8d840000 	lw	a0,0(t4)
    800c:	ae020004 	sw	v0,4(s0)
    8010:	8e4302d0 	lw	v1,720(s2)
    8014:	26310001 	addiu	s1,s1,1
    8018:	00118c00 	sll	s1,s1,0x10
    801c:	00118c03 	sra	s1,s1,0x10
    8020:	246d0008 	addiu	t5,v1,8
    8024:	2a21000f 	slti	at,s1,15
    8028:	ae4d02d0 	sw	t5,720(s2)
    802c:	ac750004 	sw	s5,4(v1)
    8030:	1420ffd8 	bnez	at,7f94 <func_80904D88+0x14c>
    8034:	ac760000 	sw	s6,0(v1)
    8038:	8fae0094 	lw	t6,148(sp)
    803c:	3c060000 	lui	a2,0x0
    8040:	24c60000 	addiu	a2,a2,0
    8044:	27a40074 	addiu	a0,sp,116
    8048:	240715f6 	li	a3,5622
    804c:	0c000000 	jal	0 <func_808FCF40>
    8050:	8dc50000 	lw	a1,0(t6)
    8054:	8fbf0044 	lw	ra,68(sp)
    8058:	d7b40018 	ldc1	$f20,24(sp)
    805c:	8fb00020 	lw	s0,32(sp)
    8060:	8fb10024 	lw	s1,36(sp)
    8064:	8fb20028 	lw	s2,40(sp)
    8068:	8fb3002c 	lw	s3,44(sp)
    806c:	8fb40030 	lw	s4,48(sp)
    8070:	8fb50034 	lw	s5,52(sp)
    8074:	8fb60038 	lw	s6,56(sp)
    8078:	8fb7003c 	lw	s7,60(sp)
    807c:	8fbe0040 	lw	s8,64(sp)
    8080:	03e00008 	jr	ra
    8084:	27bd0090 	addiu	sp,sp,144

00008088 <func_80904FC8>:
    8088:	27bdffa0 	addiu	sp,sp,-96
    808c:	afbf001c 	sw	ra,28(sp)
    8090:	afb00018 	sw	s0,24(sp)
    8094:	afa40060 	sw	a0,96(sp)
    8098:	afa50064 	sw	a1,100(sp)
    809c:	8ca50000 	lw	a1,0(a1)
    80a0:	3c060000 	lui	a2,0x0
    80a4:	24c60000 	addiu	a2,a2,0
    80a8:	27a40048 	addiu	a0,sp,72
    80ac:	24071600 	li	a3,5632
    80b0:	0c000000 	jal	0 <func_808FCF40>
    80b4:	00a08025 	move	s0,a1
    80b8:	8faf0060 	lw	t7,96(sp)
    80bc:	44802000 	mtc1	zero,$f4
    80c0:	8fb80064 	lw	t8,100(sp)
    80c4:	c5e60384 	lwc1	$f6,900(t7)
    80c8:	4606203c 	c.lt.s	$f4,$f6
    80cc:	00000000 	nop
    80d0:	4502007f 	bc1fl	82d0 <func_80904FC8+0x248>
    80d4:	8fad0064 	lw	t5,100(sp)
    80d8:	0c000000 	jal	0 <func_808FCF40>
    80dc:	8f040000 	lw	a0,0(t8)
    80e0:	8e0202d0 	lw	v0,720(s0)
    80e4:	3c09fa00 	lui	t1,0xfa00
    80e8:	240affc8 	li	t2,-56
    80ec:	24590008 	addiu	t9,v0,8
    80f0:	ae1902d0 	sw	t9,720(s0)
    80f4:	ac4a0004 	sw	t2,4(v0)
    80f8:	ac490000 	sw	t1,0(v0)
    80fc:	8e0202d0 	lw	v0,720(s0)
    8100:	3c0cfb00 	lui	t4,0xfb00
    8104:	3c0dffc8 	lui	t5,0xffc8
    8108:	244b0008 	addiu	t3,v0,8
    810c:	ae0b02d0 	sw	t3,720(s0)
    8110:	ac4d0004 	sw	t5,4(v0)
    8114:	ac4c0000 	sw	t4,0(v0)
    8118:	8e0202d0 	lw	v0,720(s0)
    811c:	3c180000 	lui	t8,0x0
    8120:	27180000 	addiu	t8,t8,0
    8124:	244e0008 	addiu	t6,v0,8
    8128:	ae0e02d0 	sw	t6,720(s0)
    812c:	3c0fde00 	lui	t7,0xde00
    8130:	ac4f0000 	sw	t7,0(v0)
    8134:	ac580004 	sw	t8,4(v0)
    8138:	3c020000 	lui	v0,0x0
    813c:	8c420000 	lw	v0,0(v0)
    8140:	3c0142a0 	lui	at,0x42a0
    8144:	44815000 	mtc1	at,$f10
    8148:	c4480028 	lwc1	$f8,40(v0)
    814c:	00003825 	move	a3,zero
    8150:	c44c0024 	lwc1	$f12,36(v0)
    8154:	8c46002c 	lw	a2,44(v0)
    8158:	0c000000 	jal	0 <func_808FCF40>
    815c:	460a4380 	add.s	$f14,$f8,$f10
    8160:	8fa40064 	lw	a0,100(sp)
    8164:	3c010001 	lui	at,0x1
    8168:	34211da0 	ori	at,at,0x1da0
    816c:	0c000000 	jal	0 <func_808FCF40>
    8170:	00812021 	addu	a0,a0,at
    8174:	8fb90060 	lw	t9,96(sp)
    8178:	24070001 	li	a3,1
    817c:	c72c0384 	lwc1	$f12,900(t9)
    8180:	44066000 	mfc1	a2,$f12
    8184:	0c000000 	jal	0 <func_808FCF40>
    8188:	46006386 	mov.s	$f14,$f12
    818c:	8fa90060 	lw	t1,96(sp)
    8190:	24050001 	li	a1,1
    8194:	0c000000 	jal	0 <func_808FCF40>
    8198:	c52c0388 	lwc1	$f12,904(t1)
    819c:	8e0202d0 	lw	v0,720(s0)
    81a0:	3c0bda38 	lui	t3,0xda38
    81a4:	356b0003 	ori	t3,t3,0x3
    81a8:	244a0008 	addiu	t2,v0,8
    81ac:	ae0a02d0 	sw	t2,720(s0)
    81b0:	ac4b0000 	sw	t3,0(v0)
    81b4:	8fac0064 	lw	t4,100(sp)
    81b8:	3c050000 	lui	a1,0x0
    81bc:	24a50000 	addiu	a1,a1,0
    81c0:	8d840000 	lw	a0,0(t4)
    81c4:	2406161d 	li	a2,5661
    81c8:	0c000000 	jal	0 <func_808FCF40>
    81cc:	afa20038 	sw	v0,56(sp)
    81d0:	8fa30038 	lw	v1,56(sp)
    81d4:	3c040000 	lui	a0,0x0
    81d8:	24840000 	addiu	a0,a0,0
    81dc:	ac620004 	sw	v0,4(v1)
    81e0:	8e0202d0 	lw	v0,720(s0)
    81e4:	00047900 	sll	t7,a0,0x4
    81e8:	000fc702 	srl	t8,t7,0x1c
    81ec:	3c090000 	lui	t1,0x0
    81f0:	244d0008 	addiu	t5,v0,8
    81f4:	ae0d02d0 	sw	t5,720(s0)
    81f8:	25290000 	addiu	t1,t1,0
    81fc:	0018c880 	sll	t9,t8,0x2
    8200:	3c0ede00 	lui	t6,0xde00
    8204:	03293821 	addu	a3,t9,t1
    8208:	3c0100ff 	lui	at,0xff
    820c:	ac4e0000 	sw	t6,0(v0)
    8210:	8cea0000 	lw	t2,0(a3)
    8214:	3421ffff 	ori	at,at,0xffff
    8218:	00814024 	and	t0,a0,at
    821c:	3c018000 	lui	at,0x8000
    8220:	01485821 	addu	t3,t2,t0
    8224:	01616021 	addu	t4,t3,at
    8228:	ac4c0004 	sw	t4,4(v0)
    822c:	8fad0060 	lw	t5,96(sp)
    8230:	3c01c000 	lui	at,0xc000
    8234:	44819000 	mtc1	at,$f18
    8238:	c5b00388 	lwc1	$f16,904(t5)
    823c:	afa80024 	sw	t0,36(sp)
    8240:	afa70028 	sw	a3,40(sp)
    8244:	46128302 	mul.s	$f12,$f16,$f18
    8248:	0c000000 	jal	0 <func_808FCF40>
    824c:	24050001 	li	a1,1
    8250:	8e0202d0 	lw	v0,720(s0)
    8254:	8fa70028 	lw	a3,40(sp)
    8258:	8fa80024 	lw	t0,36(sp)
    825c:	3c0fda38 	lui	t7,0xda38
    8260:	244e0008 	addiu	t6,v0,8
    8264:	ae0e02d0 	sw	t6,720(s0)
    8268:	35ef0003 	ori	t7,t7,0x3
    826c:	ac4f0000 	sw	t7,0(v0)
    8270:	8fb80064 	lw	t8,100(sp)
    8274:	3c050000 	lui	a1,0x0
    8278:	24a50000 	addiu	a1,a1,0
    827c:	8f040000 	lw	a0,0(t8)
    8280:	24061620 	li	a2,5664
    8284:	afa20030 	sw	v0,48(sp)
    8288:	afa70028 	sw	a3,40(sp)
    828c:	0c000000 	jal	0 <func_808FCF40>
    8290:	afa80024 	sw	t0,36(sp)
    8294:	8fa30030 	lw	v1,48(sp)
    8298:	8fa70028 	lw	a3,40(sp)
    829c:	8fa80024 	lw	t0,36(sp)
    82a0:	ac620004 	sw	v0,4(v1)
    82a4:	8e0202d0 	lw	v0,720(s0)
    82a8:	3c09de00 	lui	t1,0xde00
    82ac:	3c018000 	lui	at,0x8000
    82b0:	24590008 	addiu	t9,v0,8
    82b4:	ae1902d0 	sw	t9,720(s0)
    82b8:	ac490000 	sw	t1,0(v0)
    82bc:	8cea0000 	lw	t2,0(a3)
    82c0:	01485821 	addu	t3,t2,t0
    82c4:	01616021 	addu	t4,t3,at
    82c8:	ac4c0004 	sw	t4,4(v0)
    82cc:	8fad0064 	lw	t5,100(sp)
    82d0:	3c060000 	lui	a2,0x0
    82d4:	24c60000 	addiu	a2,a2,0
    82d8:	27a40048 	addiu	a0,sp,72
    82dc:	24071623 	li	a3,5667
    82e0:	0c000000 	jal	0 <func_808FCF40>
    82e4:	8da50000 	lw	a1,0(t5)
    82e8:	8fbf001c 	lw	ra,28(sp)
    82ec:	8fb00018 	lw	s0,24(sp)
    82f0:	27bd0060 	addiu	sp,sp,96
    82f4:	03e00008 	jr	ra
    82f8:	00000000 	nop

000082fc <func_8090523C>:
    82fc:	27bdff40 	addiu	sp,sp,-192
    8300:	afbf006c 	sw	ra,108(sp)
    8304:	afbe0068 	sw	s8,104(sp)
    8308:	afb70064 	sw	s7,100(sp)
    830c:	afb60060 	sw	s6,96(sp)
    8310:	afb5005c 	sw	s5,92(sp)
    8314:	afb40058 	sw	s4,88(sp)
    8318:	afb30054 	sw	s3,84(sp)
    831c:	afb20050 	sw	s2,80(sp)
    8320:	afb1004c 	sw	s1,76(sp)
    8324:	afb00048 	sw	s0,72(sp)
    8328:	f7be0040 	sdc1	$f30,64(sp)
    832c:	f7bc0038 	sdc1	$f28,56(sp)
    8330:	f7ba0030 	sdc1	$f26,48(sp)
    8334:	f7b80028 	sdc1	$f24,40(sp)
    8338:	f7b60020 	sdc1	$f22,32(sp)
    833c:	f7b40018 	sdc1	$f20,24(sp)
    8340:	afa500c4 	sw	a1,196(sp)
    8344:	8ca50000 	lw	a1,0(a1)
    8348:	00808025 	move	s0,a0
    834c:	3c060000 	lui	a2,0x0
    8350:	24c60000 	addiu	a2,a2,0
    8354:	27a400a4 	addiu	a0,sp,164
    8358:	2407162b 	li	a3,5675
    835c:	0c000000 	jal	0 <func_808FCF40>
    8360:	00a09025 	move	s2,a1
    8364:	44802000 	mtc1	zero,$f4
    8368:	c606038c 	lwc1	$f6,908(s0)
    836c:	8fa200c4 	lw	v0,196(sp)
    8370:	4606203c 	c.lt.s	$f4,$f6
    8374:	00000000 	nop
    8378:	4502007b 	bc1fl	8568 <func_8090523C+0x26c>
    837c:	8fa900c4 	lw	t1,196(sp)
    8380:	8c5e1c44 	lw	s8,7236(v0)
    8384:	0c000000 	jal	0 <func_808FCF40>
    8388:	8c440000 	lw	a0,0(v0)
    838c:	8e4202d0 	lw	v0,720(s2)
    8390:	3c18fa00 	lui	t8,0xfa00
    8394:	2401ff00 	li	at,-256
    8398:	244f0008 	addiu	t7,v0,8
    839c:	ae4f02d0 	sw	t7,720(s2)
    83a0:	ac580000 	sw	t8,0(v0)
    83a4:	c608038c 	lwc1	$f8,908(s0)
    83a8:	3c0f00ff 	lui	t7,0xff
    83ac:	35efff00 	ori	t7,t7,0xff00
    83b0:	4600428d 	trunc.w.s	$f10,$f8
    83b4:	3c0efb00 	lui	t6,0xfb00
    83b8:	3c190000 	lui	t9,0x0
    83bc:	27390000 	addiu	t9,t9,0
    83c0:	440a5000 	mfc1	t2,$f10
    83c4:	3c17de00 	lui	s7,0xde00
    83c8:	27d309e0 	addiu	s3,s8,2528
    83cc:	314b00ff 	andi	t3,t2,0xff
    83d0:	01616025 	or	t4,t3,at
    83d4:	ac4c0004 	sw	t4,4(v0)
    83d8:	8e4202d0 	lw	v0,720(s2)
    83dc:	3c010001 	lui	at,0x1
    83e0:	34211da0 	ori	at,at,0x1da0
    83e4:	244d0008 	addiu	t5,v0,8
    83e8:	ae4d02d0 	sw	t5,720(s2)
    83ec:	ac4f0004 	sw	t7,4(v0)
    83f0:	ac4e0000 	sw	t6,0(v0)
    83f4:	8e4202d0 	lw	v0,720(s2)
    83f8:	3c0b0000 	lui	t3,0x0
    83fc:	256b0000 	addiu	t3,t3,0
    8400:	24580008 	addiu	t8,v0,8
    8404:	ae5802d0 	sw	t8,720(s2)
    8408:	ac590004 	sw	t9,4(v0)
    840c:	ac570000 	sw	s7,0(v0)
    8410:	8fb400c4 	lw	s4,196(sp)
    8414:	3c020000 	lui	v0,0x0
    8418:	24420000 	addiu	v0,v0,0
    841c:	0281a021 	addu	s4,s4,at
    8420:	3c0100ff 	lui	at,0xff
    8424:	3421ffff 	ori	at,at,0xffff
    8428:	0041b024 	and	s6,v0,at
    842c:	3c014348 	lui	at,0x4348
    8430:	4481f000 	mtc1	at,$f30
    8434:	3c0143af 	lui	at,0x43af
    8438:	4481e000 	mtc1	at,$f28
    843c:	3c014461 	lui	at,0x4461
    8440:	4481d000 	mtc1	at,$f26
    8444:	3c01437a 	lui	at,0x437a
    8448:	4481c000 	mtc1	at,$f24
    844c:	00024100 	sll	t0,v0,0x4
    8450:	00084f02 	srl	t1,t0,0x1c
    8454:	3c013f80 	lui	at,0x3f80
    8458:	00095080 	sll	t2,t1,0x2
    845c:	3c1eda38 	lui	s8,0xda38
    8460:	4481b000 	mtc1	at,$f22
    8464:	37de0003 	ori	s8,s8,0x3
    8468:	014ba821 	addu	s5,t2,t3
    846c:	00008825 	move	s1,zero
    8470:	02602025 	move	a0,s3
    8474:	0c000000 	jal	0 <func_808FCF40>
    8478:	00002825 	move	a1,zero
    847c:	44918000 	mtc1	s1,$f16
    8480:	4600e386 	mov.s	$f14,$f28
    8484:	24060000 	li	a2,0
    8488:	468084a0 	cvt.s.w	$f18,$f16
    848c:	24070001 	li	a3,1
    8490:	46189102 	mul.s	$f4,$f18,$f24
    8494:	0c000000 	jal	0 <func_808FCF40>
    8498:	461a2300 	add.s	$f12,$f4,$f26
    849c:	2a210007 	slti	at,s1,7
    84a0:	10200003 	beqz	at,84b0 <func_8090523C+0x1b4>
    84a4:	262cfff9 	addiu	t4,s1,-7
    84a8:	10000007 	b	84c8 <func_8090523C+0x1cc>
    84ac:	4600b506 	mov.s	$f20,$f22
    84b0:	448c3000 	mtc1	t4,$f6
    84b4:	3c010000 	lui	at,0x0
    84b8:	c42a0000 	lwc1	$f10,0(at)
    84bc:	46803220 	cvt.s.w	$f8,$f6
    84c0:	460a4402 	mul.s	$f16,$f8,$f10
    84c4:	4610b501 	sub.s	$f20,$f22,$f16
    84c8:	0c000000 	jal	0 <func_808FCF40>
    84cc:	02802025 	move	a0,s4
    84d0:	4614f302 	mul.s	$f12,$f30,$f20
    84d4:	4406b000 	mfc1	a2,$f22
    84d8:	24070001 	li	a3,1
    84dc:	0c000000 	jal	0 <func_808FCF40>
    84e0:	46006386 	mov.s	$f14,$f12
    84e4:	3c010000 	lui	at,0x0
    84e8:	0c000000 	jal	0 <func_808FCF40>
    84ec:	c42c0000 	lwc1	$f12,0(at)
    84f0:	46000306 	mov.s	$f12,$f0
    84f4:	0c000000 	jal	0 <func_808FCF40>
    84f8:	24050001 	li	a1,1
    84fc:	8e4202d0 	lw	v0,720(s2)
    8500:	3c050000 	lui	a1,0x0
    8504:	24a50000 	addiu	a1,a1,0
    8508:	244d0008 	addiu	t5,v0,8
    850c:	ae4d02d0 	sw	t5,720(s2)
    8510:	ac5e0000 	sw	s8,0(v0)
    8514:	8fae00c4 	lw	t6,196(sp)
    8518:	24061659 	li	a2,5721
    851c:	00408025 	move	s0,v0
    8520:	0c000000 	jal	0 <func_808FCF40>
    8524:	8dc40000 	lw	a0,0(t6)
    8528:	ae020004 	sw	v0,4(s0)
    852c:	8e4202d0 	lw	v0,720(s2)
    8530:	26310001 	addiu	s1,s1,1
    8534:	00118e00 	sll	s1,s1,0x18
    8538:	244f0008 	addiu	t7,v0,8
    853c:	ae4f02d0 	sw	t7,720(s2)
    8540:	ac570000 	sw	s7,0(v0)
    8544:	8eb80000 	lw	t8,0(s5)
    8548:	3c018000 	lui	at,0x8000
    854c:	00118e03 	sra	s1,s1,0x18
    8550:	0316c821 	addu	t9,t8,s6
    8554:	03214021 	addu	t0,t9,at
    8558:	2a21000b 	slti	at,s1,11
    855c:	1420ffc4 	bnez	at,8470 <func_8090523C+0x174>
    8560:	ac480004 	sw	t0,4(v0)
    8564:	8fa900c4 	lw	t1,196(sp)
    8568:	3c060000 	lui	a2,0x0
    856c:	24c60000 	addiu	a2,a2,0
    8570:	27a400a4 	addiu	a0,sp,164
    8574:	2407165d 	li	a3,5725
    8578:	0c000000 	jal	0 <func_808FCF40>
    857c:	8d250000 	lw	a1,0(t1)
    8580:	8fbf006c 	lw	ra,108(sp)
    8584:	d7b40018 	ldc1	$f20,24(sp)
    8588:	d7b60020 	ldc1	$f22,32(sp)
    858c:	d7b80028 	ldc1	$f24,40(sp)
    8590:	d7ba0030 	ldc1	$f26,48(sp)
    8594:	d7bc0038 	ldc1	$f28,56(sp)
    8598:	d7be0040 	ldc1	$f30,64(sp)
    859c:	8fb00048 	lw	s0,72(sp)
    85a0:	8fb1004c 	lw	s1,76(sp)
    85a4:	8fb20050 	lw	s2,80(sp)
    85a8:	8fb30054 	lw	s3,84(sp)
    85ac:	8fb40058 	lw	s4,88(sp)
    85b0:	8fb5005c 	lw	s5,92(sp)
    85b4:	8fb60060 	lw	s6,96(sp)
    85b8:	8fb70064 	lw	s7,100(sp)
    85bc:	8fbe0068 	lw	s8,104(sp)
    85c0:	03e00008 	jr	ra
    85c4:	27bd00c0 	addiu	sp,sp,192

000085c8 <func_80905508>:
    85c8:	3c0e0000 	lui	t6,0x0
    85cc:	25ce0000 	addiu	t6,t6,0
    85d0:	00ae1021 	addu	v0,a1,t6
    85d4:	80430000 	lb	v1,0(v0)
    85d8:	27bdffc0 	addiu	sp,sp,-64
    85dc:	afbf0014 	sw	ra,20(sp)
    85e0:	afa40040 	sw	a0,64(sp)
    85e4:	afa60048 	sw	a2,72(sp)
    85e8:	0460000c 	bltz	v1,861c <func_80905508+0x54>
    85ec:	afa7004c 	sw	a3,76(sp)
    85f0:	8faf0050 	lw	t7,80(sp)
    85f4:	0003c080 	sll	t8,v1,0x2
    85f8:	0303c023 	subu	t8,t8,v1
    85fc:	0018c080 	sll	t8,t8,0x2
    8600:	3c040000 	lui	a0,0x0
    8604:	01f82821 	addu	a1,t7,t8
    8608:	24a50234 	addiu	a1,a1,564
    860c:	24840000 	addiu	a0,a0,0
    8610:	0c000000 	jal	0 <func_808FCF40>
    8614:	afa20018 	sw	v0,24(sp)
    8618:	8fa20018 	lw	v0,24(sp)
    861c:	3c190000 	lui	t9,0x0
    8620:	27390000 	addiu	t9,t9,0
    8624:	14590038 	bne	v0,t9,8708 <func_80905508+0x140>
    8628:	3c0e0000 	lui	t6,0x0
    862c:	8fa90040 	lw	t1,64(sp)
    8630:	3c060000 	lui	a2,0x0
    8634:	24c60000 	addiu	a2,a2,0
    8638:	8d250000 	lw	a1,0(t1)
    863c:	27a40024 	addiu	a0,sp,36
    8640:	24071675 	li	a3,5749
    8644:	0c000000 	jal	0 <func_808FCF40>
    8648:	afa50034 	sw	a1,52(sp)
    864c:	8fa80034 	lw	t0,52(sp)
    8650:	3c0bda38 	lui	t3,0xda38
    8654:	356b0003 	ori	t3,t3,0x3
    8658:	8d0202d0 	lw	v0,720(t0)
    865c:	3c050000 	lui	a1,0x0
    8660:	24a50000 	addiu	a1,a1,0
    8664:	244a0008 	addiu	t2,v0,8
    8668:	ad0a02d0 	sw	t2,720(t0)
    866c:	ac4b0000 	sw	t3,0(v0)
    8670:	8fac0040 	lw	t4,64(sp)
    8674:	24061678 	li	a2,5752
    8678:	8d840000 	lw	a0,0(t4)
    867c:	afa80034 	sw	t0,52(sp)
    8680:	0c000000 	jal	0 <func_808FCF40>
    8684:	afa20020 	sw	v0,32(sp)
    8688:	8fa30020 	lw	v1,32(sp)
    868c:	8fa80034 	lw	t0,52(sp)
    8690:	3c040601 	lui	a0,0x601
    8694:	ac620004 	sw	v0,4(v1)
    8698:	8d0202d0 	lw	v0,720(t0)
    869c:	2484be90 	addiu	a0,a0,-16752
    86a0:	00047900 	sll	t7,a0,0x4
    86a4:	000fc702 	srl	t8,t7,0x1c
    86a8:	244d0008 	addiu	t5,v0,8
    86ac:	0018c880 	sll	t9,t8,0x2
    86b0:	3c0ede00 	lui	t6,0xde00
    86b4:	3c090000 	lui	t1,0x0
    86b8:	ad0d02d0 	sw	t5,720(t0)
    86bc:	01394821 	addu	t1,t1,t9
    86c0:	3c0100ff 	lui	at,0xff
    86c4:	ac4e0000 	sw	t6,0(v0)
    86c8:	8d290000 	lw	t1,0(t1)
    86cc:	3421ffff 	ori	at,at,0xffff
    86d0:	00815024 	and	t2,a0,at
    86d4:	3c018000 	lui	at,0x8000
    86d8:	012a5821 	addu	t3,t1,t2
    86dc:	01616021 	addu	t4,t3,at
    86e0:	ac4c0004 	sw	t4,4(v0)
    86e4:	8fad0040 	lw	t5,64(sp)
    86e8:	3c060000 	lui	a2,0x0
    86ec:	24c60000 	addiu	a2,a2,0
    86f0:	27a40024 	addiu	a0,sp,36
    86f4:	2407167a 	li	a3,5754
    86f8:	0c000000 	jal	0 <func_808FCF40>
    86fc:	8da50000 	lw	a1,0(t5)
    8700:	10000009 	b	8728 <func_80905508+0x160>
    8704:	8fbf0014 	lw	ra,20(sp)
    8708:	25ce0000 	addiu	t6,t6,0
    870c:	144e0005 	bne	v0,t6,8724 <func_80905508+0x15c>
    8710:	3c040000 	lui	a0,0x0
    8714:	8fa50050 	lw	a1,80(sp)
    8718:	24840000 	addiu	a0,a0,0
    871c:	0c000000 	jal	0 <func_808FCF40>
    8720:	24a501b8 	addiu	a1,a1,440
    8724:	8fbf0014 	lw	ra,20(sp)
    8728:	27bd0040 	addiu	sp,sp,64
    872c:	03e00008 	jr	ra
    8730:	00000000 	nop

00008734 <func_80905674>:
    8734:	27bdff88 	addiu	sp,sp,-120
    8738:	afbf003c 	sw	ra,60(sp)
    873c:	afb00038 	sw	s0,56(sp)
    8740:	afa40078 	sw	a0,120(sp)
    8744:	afa5007c 	sw	a1,124(sp)
    8748:	c4860380 	lwc1	$f6,896(a0)
    874c:	44802000 	mtc1	zero,$f4
    8750:	3c060000 	lui	a2,0x0
    8754:	24c60000 	addiu	a2,a2,0
    8758:	4606203c 	c.lt.s	$f4,$f6
    875c:	27a40060 	addiu	a0,sp,96
    8760:	4502008f 	bc1fl	89a0 <func_80905674+0x26c>
    8764:	8fbf003c 	lw	ra,60(sp)
    8768:	8ca50000 	lw	a1,0(a1)
    876c:	2407168c 	li	a3,5772
    8770:	0c000000 	jal	0 <func_808FCF40>
    8774:	00a08025 	move	s0,a1
    8778:	0c000000 	jal	0 <func_808FCF40>
    877c:	00000000 	nop
    8780:	8e0202d0 	lw	v0,720(s0)
    8784:	3c19e700 	lui	t9,0xe700
    8788:	3c0adb06 	lui	t2,0xdb06
    878c:	24580008 	addiu	t8,v0,8
    8790:	ae1802d0 	sw	t8,720(s0)
    8794:	ac590000 	sw	t9,0(v0)
    8798:	ac400004 	sw	zero,4(v0)
    879c:	8e0202d0 	lw	v0,720(s0)
    87a0:	354a0020 	ori	t2,t2,0x20
    87a4:	24190020 	li	t9,32
    87a8:	24490008 	addiu	t1,v0,8
    87ac:	ae0902d0 	sw	t1,720(s0)
    87b0:	ac4a0000 	sw	t2,0(v0)
    87b4:	8fac0078 	lw	t4,120(sp)
    87b8:	8fab007c 	lw	t3,124(sp)
    87bc:	24090020 	li	t1,32
    87c0:	8583019c 	lh	v1,412(t4)
    87c4:	8d640000 	lw	a0,0(t3)
    87c8:	240d0020 	li	t5,32
    87cc:	00030823 	negu	at,v1
    87d0:	000130c0 	sll	a2,at,0x3
    87d4:	0001c080 	sll	t8,at,0x2
    87d8:	240e0040 	li	t6,64
    87dc:	240f0001 	li	t7,1
    87e0:	afaf0018 	sw	t7,24(sp)
    87e4:	afae0014 	sw	t6,20(sp)
    87e8:	afb8001c 	sw	t8,28(sp)
    87ec:	afa60020 	sw	a2,32(sp)
    87f0:	afad0010 	sw	t5,16(sp)
    87f4:	afa90028 	sw	t1,40(sp)
    87f8:	afb90024 	sw	t9,36(sp)
    87fc:	00002825 	move	a1,zero
    8800:	00003825 	move	a3,zero
    8804:	0c000000 	jal	0 <func_808FCF40>
    8808:	afa20058 	sw	v0,88(sp)
    880c:	8fa80058 	lw	t0,88(sp)
    8810:	3c0bfa00 	lui	t3,0xfa00
    8814:	2401aa00 	li	at,-22016
    8818:	ad020004 	sw	v0,4(t0)
    881c:	8e0202d0 	lw	v0,720(s0)
    8820:	00003825 	move	a3,zero
    8824:	244a0008 	addiu	t2,v0,8
    8828:	ae0a02d0 	sw	t2,720(s0)
    882c:	ac4b0000 	sw	t3,0(v0)
    8830:	8fac0078 	lw	t4,120(sp)
    8834:	3c0bfb00 	lui	t3,0xfb00
    8838:	c588037c 	lwc1	$f8,892(t4)
    883c:	3c0cffc8 	lui	t4,0xffc8
    8840:	358c0080 	ori	t4,t4,0x80
    8844:	4600428d 	trunc.w.s	$f10,$f8
    8848:	44185000 	mfc1	t8,$f10
    884c:	00000000 	nop
    8850:	331900ff 	andi	t9,t8,0xff
    8854:	03214825 	or	t1,t9,at
    8858:	ac490004 	sw	t1,4(v0)
    885c:	8e0202d0 	lw	v0,720(s0)
    8860:	3c0142c8 	lui	at,0x42c8
    8864:	44810000 	mtc1	at,$f0
    8868:	244a0008 	addiu	t2,v0,8
    886c:	ae0a02d0 	sw	t2,720(s0)
    8870:	ac4c0004 	sw	t4,4(v0)
    8874:	ac4b0000 	sw	t3,0(v0)
    8878:	3c020000 	lui	v0,0x0
    887c:	8c420000 	lw	v0,0(v0)
    8880:	3c01420c 	lui	at,0x420c
    8884:	44812000 	mtc1	at,$f4
    8888:	c4500024 	lwc1	$f16,36(v0)
    888c:	c44a002c 	lwc1	$f10,44(v0)
    8890:	c4520028 	lwc1	$f18,40(v0)
    8894:	46008300 	add.s	$f12,$f16,$f0
    8898:	3c0140e0 	lui	at,0x40e0
    889c:	44814000 	mtc1	at,$f8
    88a0:	46005401 	sub.s	$f16,$f10,$f0
    88a4:	46049180 	add.s	$f6,$f18,$f4
    88a8:	44068000 	mfc1	a2,$f16
    88ac:	0c000000 	jal	0 <func_808FCF40>
    88b0:	46083380 	add.s	$f14,$f6,$f8
    88b4:	3c010000 	lui	at,0x0
    88b8:	c42c0000 	lwc1	$f12,0(at)
    88bc:	0c000000 	jal	0 <func_808FCF40>
    88c0:	24050001 	li	a1,1
    88c4:	3c010000 	lui	at,0x0
    88c8:	c42c0000 	lwc1	$f12,0(at)
    88cc:	8fad0078 	lw	t5,120(sp)
    88d0:	24070001 	li	a3,1
    88d4:	46006386 	mov.s	$f14,$f12
    88d8:	0c000000 	jal	0 <func_808FCF40>
    88dc:	8da60380 	lw	a2,896(t5)
    88e0:	3c010000 	lui	at,0x0
    88e4:	c42c0000 	lwc1	$f12,0(at)
    88e8:	0c000000 	jal	0 <func_808FCF40>
    88ec:	24050001 	li	a1,1
    88f0:	8e0202d0 	lw	v0,720(s0)
    88f4:	3c0fda38 	lui	t7,0xda38
    88f8:	35ef0003 	ori	t7,t7,0x3
    88fc:	244e0008 	addiu	t6,v0,8
    8900:	ae0e02d0 	sw	t6,720(s0)
    8904:	ac4f0000 	sw	t7,0(v0)
    8908:	8fb8007c 	lw	t8,124(sp)
    890c:	3c050000 	lui	a1,0x0
    8910:	24a50000 	addiu	a1,a1,0
    8914:	8f040000 	lw	a0,0(t8)
    8918:	240616b6 	li	a2,5814
    891c:	0c000000 	jal	0 <func_808FCF40>
    8920:	afa2004c 	sw	v0,76(sp)
    8924:	8fa3004c 	lw	v1,76(sp)
    8928:	3c040000 	lui	a0,0x0
    892c:	24840000 	addiu	a0,a0,0
    8930:	ac620004 	sw	v0,4(v1)
    8934:	8e0202d0 	lw	v0,720(s0)
    8938:	00045100 	sll	t2,a0,0x4
    893c:	000a5f02 	srl	t3,t2,0x1c
    8940:	24590008 	addiu	t9,v0,8
    8944:	ae1902d0 	sw	t9,720(s0)
    8948:	000b6080 	sll	t4,t3,0x2
    894c:	3c09de00 	lui	t1,0xde00
    8950:	3c0d0000 	lui	t5,0x0
    8954:	01ac6821 	addu	t5,t5,t4
    8958:	3c0100ff 	lui	at,0xff
    895c:	ac490000 	sw	t1,0(v0)
    8960:	8dad0000 	lw	t5,0(t5)
    8964:	3421ffff 	ori	at,at,0xffff
    8968:	00817024 	and	t6,a0,at
    896c:	3c018000 	lui	at,0x8000
    8970:	01ae7821 	addu	t7,t5,t6
    8974:	01e1c021 	addu	t8,t7,at
    8978:	0c000000 	jal	0 <func_808FCF40>
    897c:	ac580004 	sw	t8,4(v0)
    8980:	8fb9007c 	lw	t9,124(sp)
    8984:	3c060000 	lui	a2,0x0
    8988:	24c60000 	addiu	a2,a2,0
    898c:	27a40060 	addiu	a0,sp,96
    8990:	240716b9 	li	a3,5817
    8994:	0c000000 	jal	0 <func_808FCF40>
    8998:	8f250000 	lw	a1,0(t9)
    899c:	8fbf003c 	lw	ra,60(sp)
    89a0:	8fb00038 	lw	s0,56(sp)
    89a4:	27bd0078 	addiu	sp,sp,120
    89a8:	03e00008 	jr	ra
    89ac:	00000000 	nop

000089b0 <BossGanon2_Draw>:
    89b0:	27bdff88 	addiu	sp,sp,-120
    89b4:	afb10028 	sw	s1,40(sp)
    89b8:	afb00024 	sw	s0,36(sp)
    89bc:	00808025 	move	s0,a0
    89c0:	afbf002c 	sw	ra,44(sp)
    89c4:	00a08825 	move	s1,a1
    89c8:	8ca40000 	lw	a0,0(a1)
    89cc:	0c000000 	jal	0 <func_808FCF40>
    89d0:	24051000 	li	a1,4096
    89d4:	afa20074 	sw	v0,116(sp)
    89d8:	8e250000 	lw	a1,0(s1)
    89dc:	3c060000 	lui	a2,0x0
    89e0:	24c60000 	addiu	a2,a2,0
    89e4:	27a40058 	addiu	a0,sp,88
    89e8:	240716d0 	li	a3,5840
    89ec:	0c000000 	jal	0 <func_808FCF40>
    89f0:	afa50068 	sw	a1,104(sp)
    89f4:	0c000000 	jal	0 <func_808FCF40>
    89f8:	8e240000 	lw	a0,0(s1)
    89fc:	0c000000 	jal	0 <func_808FCF40>
    8a00:	8e240000 	lw	a0,0(s1)
    8a04:	92020337 	lbu	v0,823(s0)
    8a08:	02002025 	move	a0,s0
    8a0c:	02202825 	move	a1,s1
    8a10:	10400009 	beqz	v0,8a38 <BossGanon2_Draw+0x88>
    8a14:	240600e1 	li	a2,225
    8a18:	24010001 	li	at,1
    8a1c:	10410036 	beq	v0,at,8af8 <BossGanon2_Draw+0x148>
    8a20:	02002025 	move	a0,s0
    8a24:	24010002 	li	at,2
    8a28:	50410034 	beql	v0,at,8afc <BossGanon2_Draw+0x14c>
    8a2c:	02202825 	move	a1,s1
    8a30:	100000ab 	b	8ce0 <BossGanon2_Draw+0x330>
    8a34:	02002025 	move	a0,s0
    8a38:	0c000000 	jal	0 <func_808FCF40>
    8a3c:	24070001 	li	a3,1
    8a40:	8fae0068 	lw	t6,104(sp)
    8a44:	3c040601 	lui	a0,0x601
    8a48:	2484a8e0 	addiu	a0,a0,-22304
    8a4c:	8dc302d0 	lw	v1,720(t6)
    8a50:	0004c900 	sll	t9,a0,0x4
    8a54:	00194f02 	srl	t1,t9,0x1c
    8a58:	3c18db06 	lui	t8,0xdb06
    8a5c:	3c0b0000 	lui	t3,0x0
    8a60:	246f0008 	addiu	t7,v1,8
    8a64:	256b0000 	addiu	t3,t3,0
    8a68:	37180020 	ori	t8,t8,0x20
    8a6c:	00095080 	sll	t2,t1,0x2
    8a70:	adcf02d0 	sw	t7,720(t6)
    8a74:	014b2821 	addu	a1,t2,t3
    8a78:	ac780000 	sw	t8,0(v1)
    8a7c:	8cac0000 	lw	t4,0(a1)
    8a80:	3c0100ff 	lui	at,0xff
    8a84:	3421ffff 	ori	at,at,0xffff
    8a88:	00813024 	and	a2,a0,at
    8a8c:	3c078000 	lui	a3,0x8000
    8a90:	01866821 	addu	t5,t4,a2
    8a94:	01a77821 	addu	t7,t5,a3
    8a98:	ac6f0004 	sw	t7,4(v1)
    8a9c:	8fae0068 	lw	t6,104(sp)
    8aa0:	3c19db06 	lui	t9,0xdb06
    8aa4:	37390024 	ori	t9,t9,0x24
    8aa8:	8dc302d0 	lw	v1,720(t6)
    8aac:	3c0c0000 	lui	t4,0x0
    8ab0:	258c0000 	addiu	t4,t4,0
    8ab4:	24780008 	addiu	t8,v1,8
    8ab8:	add802d0 	sw	t8,720(t6)
    8abc:	ac790000 	sw	t9,0(v1)
    8ac0:	8ca90000 	lw	t1,0(a1)
    8ac4:	02202025 	move	a0,s1
    8ac8:	01265021 	addu	t2,t1,a2
    8acc:	01475821 	addu	t3,t2,a3
    8ad0:	ac6b0004 	sw	t3,4(v1)
    8ad4:	9207014e 	lbu	a3,334(s0)
    8ad8:	8e06016c 	lw	a2,364(s0)
    8adc:	8e050150 	lw	a1,336(s0)
    8ae0:	afb00018 	sw	s0,24(sp)
    8ae4:	afac0014 	sw	t4,20(sp)
    8ae8:	0c000000 	jal	0 <func_808FCF40>
    8aec:	afa00010 	sw	zero,16(sp)
    8af0:	1000007b 	b	8ce0 <BossGanon2_Draw+0x330>
    8af4:	02002025 	move	a0,s0
    8af8:	02202825 	move	a1,s1
    8afc:	24060153 	li	a2,339
    8b00:	0c000000 	jal	0 <func_808FCF40>
    8b04:	24070001 	li	a3,1
    8b08:	8fa80068 	lw	t0,104(sp)
    8b0c:	3c0fdb06 	lui	t7,0xdb06
    8b10:	35ef0020 	ori	t7,t7,0x20
    8b14:	8d0302c0 	lw	v1,704(t0)
    8b18:	3c040000 	lui	a0,0x0
    8b1c:	3c0c0000 	lui	t4,0x0
    8b20:	246d0008 	addiu	t5,v1,8
    8b24:	ad0d02c0 	sw	t5,704(t0)
    8b28:	ac6f0000 	sw	t7,0(v1)
    8b2c:	92180310 	lbu	t8,784(s0)
    8b30:	3c0100ff 	lui	at,0xff
    8b34:	3421ffff 	ori	at,at,0xffff
    8b38:	00187080 	sll	t6,t8,0x2
    8b3c:	008e2021 	addu	a0,a0,t6
    8b40:	8c840000 	lw	a0,0(a0)
    8b44:	3c078000 	lui	a3,0x8000
    8b48:	26050444 	addiu	a1,s0,1092
    8b4c:	00044900 	sll	t1,a0,0x4
    8b50:	00095702 	srl	t2,t1,0x1c
    8b54:	000a5880 	sll	t3,t2,0x2
    8b58:	018b6021 	addu	t4,t4,t3
    8b5c:	8d8c0000 	lw	t4,0(t4)
    8b60:	0081c824 	and	t9,a0,at
    8b64:	3c060000 	lui	a2,0x0
    8b68:	032c6821 	addu	t5,t9,t4
    8b6c:	01a77821 	addu	t7,t5,a3
    8b70:	ac6f0004 	sw	t7,4(v1)
    8b74:	afa5003c 	sw	a1,60(sp)
    8b78:	24c60000 	addiu	a2,a2,0
    8b7c:	0c000000 	jal	0 <func_808FCF40>
    8b80:	00002025 	move	a0,zero
    8b84:	3c060000 	lui	a2,0x0
    8b88:	8fa5003c 	lw	a1,60(sp)
    8b8c:	24c60000 	addiu	a2,a2,0
    8b90:	0c000000 	jal	0 <func_808FCF40>
    8b94:	24040001 	li	a0,1
    8b98:	3c180000 	lui	t8,0x0
    8b9c:	27180000 	addiu	t8,t8,0
    8ba0:	8f090000 	lw	t1,0(t8)
    8ba4:	860a0342 	lh	t2,834(s0)
    8ba8:	240500ff 	li	a1,255
    8bac:	ae090218 	sw	t1,536(s0)
    8bb0:	8f0e0004 	lw	t6,4(t8)
    8bb4:	314b0001 	andi	t3,t2,0x1
    8bb8:	00003025 	move	a2,zero
    8bbc:	ae0e021c 	sw	t6,540(s0)
    8bc0:	8f090008 	lw	t1,8(t8)
    8bc4:	00003825 	move	a3,zero
    8bc8:	1160000c 	beqz	t3,8bfc <BossGanon2_Draw+0x24c>
    8bcc:	ae090220 	sw	t1,544(s0)
    8bd0:	8fb90068 	lw	t9,104(sp)
    8bd4:	240c00ff 	li	t4,255
    8bd8:	240d0384 	li	t5,900
    8bdc:	8f2402c0 	lw	a0,704(t9)
    8be0:	240f044b 	li	t7,1099
    8be4:	afaf0018 	sw	t7,24(sp)
    8be8:	afad0014 	sw	t5,20(sp)
    8bec:	0c000000 	jal	0 <func_808FCF40>
    8bf0:	afac0010 	sw	t4,16(sp)
    8bf4:	8fb80068 	lw	t8,104(sp)
    8bf8:	af0202c0 	sw	v0,704(t8)
    8bfc:	3c01c57a 	lui	at,0xc57a
    8c00:	44817000 	mtc1	at,$f14
    8c04:	44806000 	mtc1	zero,$f12
    8c08:	3c06457a 	lui	a2,0x457a
    8c0c:	0c000000 	jal	0 <func_808FCF40>
    8c10:	24070001 	li	a3,1
    8c14:	c60c0394 	lwc1	$f12,916(s0)
    8c18:	0c000000 	jal	0 <func_808FCF40>
    8c1c:	24050001 	li	a1,1
    8c20:	3c01457a 	lui	at,0x457a
    8c24:	44817000 	mtc1	at,$f14
    8c28:	44806000 	mtc1	zero,$f12
    8c2c:	3c06c57a 	lui	a2,0xc57a
    8c30:	0c000000 	jal	0 <func_808FCF40>
    8c34:	24070001 	li	a3,1
    8c38:	8fa20068 	lw	v0,104(sp)
    8c3c:	3c09da38 	lui	t1,0xda38
    8c40:	35290003 	ori	t1,t1,0x3
    8c44:	8c4302c0 	lw	v1,704(v0)
    8c48:	3c050000 	lui	a1,0x0
    8c4c:	24a50000 	addiu	a1,a1,0
    8c50:	246e0008 	addiu	t6,v1,8
    8c54:	ac4e02c0 	sw	t6,704(v0)
    8c58:	ac690000 	sw	t1,0(v1)
    8c5c:	8e240000 	lw	a0,0(s1)
    8c60:	24061716 	li	a2,5910
    8c64:	0c000000 	jal	0 <func_808FCF40>
    8c68:	afa30048 	sw	v1,72(sp)
    8c6c:	8fa70048 	lw	a3,72(sp)
    8c70:	3c0a0000 	lui	t2,0x0
    8c74:	3c0b0000 	lui	t3,0x0
    8c78:	ace20004 	sw	v0,4(a3)
    8c7c:	9207014e 	lbu	a3,334(s0)
    8c80:	8e06016c 	lw	a2,364(s0)
    8c84:	8e050150 	lw	a1,336(s0)
    8c88:	256b0000 	addiu	t3,t3,0
    8c8c:	254a0000 	addiu	t2,t2,0
    8c90:	afaa0010 	sw	t2,16(sp)
    8c94:	afab0014 	sw	t3,20(sp)
    8c98:	afb00018 	sw	s0,24(sp)
    8c9c:	0c000000 	jal	0 <func_808FCF40>
    8ca0:	02202025 	move	a0,s1
    8ca4:	8fb90068 	lw	t9,104(sp)
    8ca8:	02202025 	move	a0,s1
    8cac:	0c000000 	jal	0 <func_808FCF40>
    8cb0:	8f2502c0 	lw	a1,704(t9)
    8cb4:	8fac0068 	lw	t4,104(sp)
    8cb8:	02002825 	move	a1,s0
    8cbc:	02203025 	move	a2,s1
    8cc0:	ad8202c0 	sw	v0,704(t4)
    8cc4:	0c000000 	jal	0 <func_808FCF40>
    8cc8:	8fa40074 	lw	a0,116(sp)
    8ccc:	8fa40074 	lw	a0,116(sp)
    8cd0:	02002825 	move	a1,s0
    8cd4:	0c000000 	jal	0 <func_808FCF40>
    8cd8:	02203025 	move	a2,s1
    8cdc:	02002025 	move	a0,s0
    8ce0:	02202825 	move	a1,s1
    8ce4:	24060153 	li	a2,339
    8ce8:	0c000000 	jal	0 <func_808FCF40>
    8cec:	24070001 	li	a3,1
    8cf0:	02002025 	move	a0,s0
    8cf4:	0c000000 	jal	0 <func_808FCF40>
    8cf8:	02202825 	move	a1,s1
    8cfc:	02002025 	move	a0,s0
    8d00:	0c000000 	jal	0 <func_808FCF40>
    8d04:	02202825 	move	a1,s1
    8d08:	02002025 	move	a0,s0
    8d0c:	0c000000 	jal	0 <func_808FCF40>
    8d10:	02202825 	move	a1,s1
    8d14:	02002025 	move	a0,s0
    8d18:	0c000000 	jal	0 <func_808FCF40>
    8d1c:	02202825 	move	a1,s1
    8d20:	02002025 	move	a0,s0
    8d24:	0c000000 	jal	0 <func_808FCF40>
    8d28:	02202825 	move	a1,s1
    8d2c:	02002025 	move	a0,s0
    8d30:	0c000000 	jal	0 <func_808FCF40>
    8d34:	02202825 	move	a1,s1
    8d38:	02002025 	move	a0,s0
    8d3c:	0c000000 	jal	0 <func_808FCF40>
    8d40:	02202825 	move	a1,s1
    8d44:	920d0312 	lbu	t5,786(s0)
    8d48:	3c020000 	lui	v0,0x0
    8d4c:	24420000 	addiu	v0,v0,0
    8d50:	15a00004 	bnez	t5,8d64 <BossGanon2_Draw+0x3b4>
    8d54:	02002025 	move	a0,s0
    8d58:	844f0000 	lh	t7,0(v0)
    8d5c:	11e00015 	beqz	t7,8db4 <BossGanon2_Draw+0x404>
    8d60:	00000000 	nop
    8d64:	0c000000 	jal	0 <func_808FCF40>
    8d68:	02202825 	move	a1,s1
    8d6c:	92180312 	lbu	t8,786(s0)
    8d70:	3c020000 	lui	v0,0x0
    8d74:	24420000 	addiu	v0,v0,0
    8d78:	17000008 	bnez	t8,8d9c <BossGanon2_Draw+0x3ec>
    8d7c:	00000000 	nop
    8d80:	844e0000 	lh	t6,0(v0)
    8d84:	25c9ffd8 	addiu	t1,t6,-40
    8d88:	a4490000 	sh	t1,0(v0)
    8d8c:	844a0000 	lh	t2,0(v0)
    8d90:	1d400002 	bgtz	t2,8d9c <BossGanon2_Draw+0x3ec>
    8d94:	00000000 	nop
    8d98:	a4400000 	sh	zero,0(v0)
    8d9c:	3c020000 	lui	v0,0x0
    8da0:	24420000 	addiu	v0,v0,0
    8da4:	804b0000 	lb	t3,0(v0)
    8da8:	25790001 	addiu	t9,t3,1
    8dac:	10000021 	b	8e34 <BossGanon2_Draw+0x484>
    8db0:	a0590000 	sb	t9,0(v0)
    8db4:	3c060000 	lui	a2,0x0
    8db8:	3c040000 	lui	a0,0x0
    8dbc:	24840000 	addiu	a0,a0,0
    8dc0:	24c60000 	addiu	a2,a2,0
    8dc4:	00001825 	move	v1,zero
    8dc8:	26070200 	addiu	a3,s0,512
    8dcc:	2608020c 	addiu	t0,s0,524
    8dd0:	2405000c 	li	a1,12
    8dd4:	00650019 	multu	v1,a1
    8dd8:	8cef0000 	lw	t7,0(a3)
    8ddc:	24630001 	addiu	v1,v1,1
    8de0:	00031c00 	sll	v1,v1,0x10
    8de4:	00031c03 	sra	v1,v1,0x10
    8de8:	28610003 	slti	at,v1,3
    8dec:	00001012 	mflo	v0
    8df0:	00826021 	addu	t4,a0,v0
    8df4:	ad8f0000 	sw	t7,0(t4)
    8df8:	8ced0004 	lw	t5,4(a3)
    8dfc:	00c2c021 	addu	t8,a2,v0
    8e00:	ad8d0004 	sw	t5,4(t4)
    8e04:	8cef0008 	lw	t7,8(a3)
    8e08:	ad8f0008 	sw	t7,8(t4)
    8e0c:	8d090000 	lw	t1,0(t0)
    8e10:	af090000 	sw	t1,0(t8)
    8e14:	8d0e0004 	lw	t6,4(t0)
    8e18:	af0e0004 	sw	t6,4(t8)
    8e1c:	8d090008 	lw	t1,8(t0)
    8e20:	1420ffec 	bnez	at,8dd4 <BossGanon2_Draw+0x424>
    8e24:	af090008 	sw	t1,8(t8)
    8e28:	3c020000 	lui	v0,0x0
    8e2c:	24420000 	addiu	v0,v0,0
    8e30:	a0400000 	sb	zero,0(v0)
    8e34:	3c060000 	lui	a2,0x0
    8e38:	24c60000 	addiu	a2,a2,0
    8e3c:	27a40058 	addiu	a0,sp,88
    8e40:	8e250000 	lw	a1,0(s1)
    8e44:	0c000000 	jal	0 <func_808FCF40>
    8e48:	2407175f 	li	a3,5983
    8e4c:	0c000000 	jal	0 <func_808FCF40>
    8e50:	02202025 	move	a0,s1
    8e54:	8fbf002c 	lw	ra,44(sp)
    8e58:	8fb00024 	lw	s0,36(sp)
    8e5c:	8fb10028 	lw	s1,40(sp)
    8e60:	03e00008 	jr	ra
    8e64:	27bd0078 	addiu	sp,sp,120

00008e68 <func_80905DA8>:
    8e68:	27bdff60 	addiu	sp,sp,-160
    8e6c:	f7be0040 	sdc1	$f30,64(sp)
    8e70:	3c013f80 	lui	at,0x3f80
    8e74:	4481f000 	mtc1	at,$f30
    8e78:	f7bc0038 	sdc1	$f28,56(sp)
    8e7c:	3c013f40 	lui	at,0x3f40
    8e80:	4481e000 	mtc1	at,$f28
    8e84:	f7ba0030 	sdc1	$f26,48(sp)
    8e88:	3c010000 	lui	at,0x0
    8e8c:	c43a0000 	lwc1	$f26,0(at)
    8e90:	afbe0068 	sw	s8,104(sp)
    8e94:	afb70064 	sw	s7,100(sp)
    8e98:	afb60060 	sw	s6,96(sp)
    8e9c:	afb5005c 	sw	s5,92(sp)
    8ea0:	afb40058 	sw	s4,88(sp)
    8ea4:	afb30054 	sw	s3,84(sp)
    8ea8:	afb1004c 	sw	s1,76(sp)
    8eac:	afb00048 	sw	s0,72(sp)
    8eb0:	f7b80028 	sdc1	$f24,40(sp)
    8eb4:	f7b60020 	sdc1	$f22,32(sp)
    8eb8:	f7b40018 	sdc1	$f20,24(sp)
    8ebc:	3c01c348 	lui	at,0xc348
    8ec0:	afbf006c 	sw	ra,108(sp)
    8ec4:	afb20050 	sw	s2,80(sp)
    8ec8:	3c100001 	lui	s0,0x1
    8ecc:	4481c000 	mtc1	at,$f24
    8ed0:	02058021 	addu	s0,s0,a1
    8ed4:	3c010000 	lui	at,0x0
    8ed8:	4480a000 	mtc1	zero,$f20
    8edc:	00a0a025 	move	s4,a1
    8ee0:	0080a825 	move	s5,a0
    8ee4:	8cb21c44 	lw	s2,7236(a1)
    8ee8:	8e101e10 	lw	s0,7696(s0)
    8eec:	c4360000 	lwc1	$f22,0(at)
    8ef0:	00008825 	move	s1,zero
    8ef4:	27b30078 	addiu	s3,sp,120
    8ef8:	24160001 	li	s6,1
    8efc:	2417000a 	li	s7,10
    8f00:	241e0002 	li	s8,2
    8f04:	920e0000 	lbu	t6,0(s0)
    8f08:	51c00090 	beqzl	t6,914c <func_80905DA8+0x2e4>
    8f0c:	26310001 	addiu	s1,s1,1
    8f10:	c6000010 	lwc1	$f0,16(s0)
    8f14:	c6040004 	lwc1	$f4,4(s0)
    8f18:	c6020014 	lwc1	$f2,20(s0)
    8f1c:	c6080008 	lwc1	$f8,8(s0)
    8f20:	c60c0018 	lwc1	$f12,24(s0)
    8f24:	c610000c 	lwc1	$f16,12(s0)
    8f28:	46002180 	add.s	$f6,$f4,$f0
    8f2c:	c604001c 	lwc1	$f4,28(s0)
    8f30:	920f0001 	lbu	t7,1(s0)
    8f34:	46024280 	add.s	$f10,$f8,$f2
    8f38:	c6080020 	lwc1	$f8,32(s0)
    8f3c:	e6060004 	swc1	$f6,4(s0)
    8f40:	460c8480 	add.s	$f18,$f16,$f12
    8f44:	c6100024 	lwc1	$f16,36(s0)
    8f48:	e60a0008 	swc1	$f10,8(s0)
    8f4c:	46040180 	add.s	$f6,$f0,$f4
    8f50:	e612000c 	swc1	$f18,12(s0)
    8f54:	92020000 	lbu	v0,0(s0)
    8f58:	46081280 	add.s	$f10,$f2,$f8
    8f5c:	25f80001 	addiu	t8,t7,1
    8f60:	a2180001 	sb	t8,1(s0)
    8f64:	46106480 	add.s	$f18,$f12,$f16
    8f68:	e6060010 	swc1	$f6,16(s0)
    8f6c:	e60a0014 	swc1	$f10,20(s0)
    8f70:	16c2003d 	bne	s6,v0,9068 <func_80905DA8+0x200>
    8f74:	e6120018 	swc1	$f18,24(s0)
    8f78:	8619002e 	lh	t9,46(s0)
    8f7c:	57200009 	bnezl	t9,8fa4 <func_80905DA8+0x13c>
    8f80:	c6100008 	lwc1	$f16,8(s0)
    8f84:	c6040040 	lwc1	$f4,64(s0)
    8f88:	3c010000 	lui	at,0x0
    8f8c:	461e2180 	add.s	$f6,$f4,$f30
    8f90:	e6060040 	swc1	$f6,64(s0)
    8f94:	c4280000 	lwc1	$f8,0(at)
    8f98:	1000006b 	b	9148 <func_80905DA8+0x2e0>
    8f9c:	e608003c 	swc1	$f8,60(s0)
    8fa0:	c6100008 	lwc1	$f16,8(s0)
    8fa4:	3c010000 	lui	at,0x0
    8fa8:	c42a0000 	lwc1	$f10,0(at)
    8fac:	4616803e 	c.le.s	$f16,$f22
    8fb0:	e614003c 	swc1	$f20,60(s0)
    8fb4:	3c01c120 	lui	at,0xc120
    8fb8:	e60a0040 	swc1	$f10,64(s0)
    8fbc:	45020018 	bc1fl	9020 <func_80905DA8+0x1b8>
    8fc0:	c6480024 	lwc1	$f8,36(s2)
    8fc4:	c6120014 	lwc1	$f18,20(s0)
    8fc8:	44812000 	mtc1	at,$f4
    8fcc:	e6160008 	swc1	$f22,8(s0)
    8fd0:	4604903c 	c.lt.s	$f18,$f4
    8fd4:	00000000 	nop
    8fd8:	45020010 	bc1fl	901c <func_80905DA8+0x1b4>
    8fdc:	e6140014 	swc1	$f20,20(s0)
    8fe0:	8e090004 	lw	t1,4(s0)
    8fe4:	3c010000 	lui	at,0x0
    8fe8:	24041808 	li	a0,6152
    8fec:	ae690000 	sw	t1,0(s3)
    8ff0:	8e080008 	lw	t0,8(s0)
    8ff4:	ae680004 	sw	t0,4(s3)
    8ff8:	8e09000c 	lw	t1,12(s0)
    8ffc:	ae690008 	sw	t1,8(s3)
    9000:	c4260000 	lwc1	$f6,0(at)
    9004:	0c000000 	jal	0 <func_808FCF40>
    9008:	e7a6007c 	swc1	$f6,124(sp)
    900c:	02802025 	move	a0,s4
    9010:	0c000000 	jal	0 <func_808FCF40>
    9014:	02602825 	move	a1,s3
    9018:	e6140014 	swc1	$f20,20(s0)
    901c:	c6480024 	lwc1	$f8,36(s2)
    9020:	c60a0004 	lwc1	$f10,4(s0)
    9024:	c650002c 	lwc1	$f16,44(s2)
    9028:	c612000c 	lwc1	$f18,12(s0)
    902c:	460a4001 	sub.s	$f0,$f8,$f10
    9030:	3c010000 	lui	at,0x0
    9034:	c42a0000 	lwc1	$f10,0(at)
    9038:	46128081 	sub.s	$f2,$f16,$f18
    903c:	46000102 	mul.s	$f4,$f0,$f0
    9040:	00000000 	nop
    9044:	46021182 	mul.s	$f6,$f2,$f2
    9048:	46062200 	add.s	$f8,$f4,$f6
    904c:	460a403c 	c.lt.s	$f8,$f10
    9050:	00000000 	nop
    9054:	4500003c 	bc1f	9148 <func_80905DA8+0x2e0>
    9058:	00000000 	nop
    905c:	a2000000 	sb	zero,0(s0)
    9060:	10000039 	b	9148 <func_80905DA8+0x2e0>
    9064:	a6b7039c 	sh	s7,924(s5)
    9068:	17c20037 	bne	s8,v0,9148 <func_80905DA8+0x2e0>
    906c:	3c010000 	lui	at,0x0
    9070:	c6100038 	lwc1	$f16,56(s0)
    9074:	c4320000 	lwc1	$f18,0(at)
    9078:	3c010000 	lui	at,0x0
    907c:	c606003c 	lwc1	$f6,60(s0)
    9080:	46128100 	add.s	$f4,$f16,$f18
    9084:	c6100004 	lwc1	$f16,4(s0)
    9088:	c612000c 	lwc1	$f18,12(s0)
    908c:	4610c081 	sub.s	$f2,$f24,$f16
    9090:	e6040038 	swc1	$f4,56(s0)
    9094:	c4280000 	lwc1	$f8,0(at)
    9098:	4612c301 	sub.s	$f12,$f24,$f18
    909c:	46021102 	mul.s	$f4,$f2,$f2
    90a0:	3c01447a 	lui	at,0x447a
    90a4:	46083280 	add.s	$f10,$f6,$f8
    90a8:	460c6182 	mul.s	$f6,$f12,$f12
    90ac:	44814000 	mtc1	at,$f8
    90b0:	e60a003c 	swc1	$f10,60(s0)
    90b4:	46062000 	add.s	$f0,$f4,$f6
    90b8:	46000004 	sqrt.s	$f0,$f0
    90bc:	4608003c 	c.lt.s	$f0,$f8
    90c0:	00000000 	nop
    90c4:	4502001b 	bc1fl	9134 <func_80905DA8+0x2cc>
    90c8:	c6120008 	lwc1	$f18,8(s0)
    90cc:	c60a0008 	lwc1	$f10,8(s0)
    90d0:	461a503c 	c.lt.s	$f10,$f26
    90d4:	00000000 	nop
    90d8:	4502001c 	bc1fl	914c <func_80905DA8+0x2e4>
    90dc:	26310001 	addiu	s1,s1,1
    90e0:	8602002e 	lh	v0,46(s0)
    90e4:	14400010 	bnez	v0,9128 <func_80905DA8+0x2c0>
    90e8:	00000000 	nop
    90ec:	c6100010 	lwc1	$f16,16(s0)
    90f0:	c6040018 	lwc1	$f4,24(s0)
    90f4:	244a0001 	addiu	t2,v0,1
    90f8:	461c8482 	mul.s	$f18,$f16,$f28
    90fc:	a60a002e 	sh	t2,46(s0)
    9100:	e61a0008 	swc1	$f26,8(s0)
    9104:	461c2182 	mul.s	$f6,$f4,$f28
    9108:	3c010000 	lui	at,0x0
    910c:	c6080014 	lwc1	$f8,20(s0)
    9110:	e6120010 	swc1	$f18,16(s0)
    9114:	e6060018 	swc1	$f6,24(s0)
    9118:	c42a0000 	lwc1	$f10,0(at)
    911c:	460a4402 	mul.s	$f16,$f8,$f10
    9120:	10000009 	b	9148 <func_80905DA8+0x2e0>
    9124:	e6100014 	swc1	$f16,20(s0)
    9128:	10000007 	b	9148 <func_80905DA8+0x2e0>
    912c:	a2000000 	sb	zero,0(s0)
    9130:	c6120008 	lwc1	$f18,8(s0)
    9134:	4614903c 	c.lt.s	$f18,$f20
    9138:	00000000 	nop
    913c:	45020003 	bc1fl	914c <func_80905DA8+0x2e4>
    9140:	26310001 	addiu	s1,s1,1
    9144:	a2000000 	sb	zero,0(s0)
    9148:	26310001 	addiu	s1,s1,1
    914c:	00118c00 	sll	s1,s1,0x10
    9150:	00118c03 	sra	s1,s1,0x10
    9154:	2a210064 	slti	at,s1,100
    9158:	1420ff6a 	bnez	at,8f04 <func_80905DA8+0x9c>
    915c:	26100044 	addiu	s0,s0,68
    9160:	8fbf006c 	lw	ra,108(sp)
    9164:	d7b40018 	ldc1	$f20,24(sp)
    9168:	d7b60020 	ldc1	$f22,32(sp)
    916c:	d7b80028 	ldc1	$f24,40(sp)
    9170:	d7ba0030 	ldc1	$f26,48(sp)
    9174:	d7bc0038 	ldc1	$f28,56(sp)
    9178:	d7be0040 	ldc1	$f30,64(sp)
    917c:	8fb00048 	lw	s0,72(sp)
    9180:	8fb1004c 	lw	s1,76(sp)
    9184:	8fb20050 	lw	s2,80(sp)
    9188:	8fb30054 	lw	s3,84(sp)
    918c:	8fb40058 	lw	s4,88(sp)
    9190:	8fb5005c 	lw	s5,92(sp)
    9194:	8fb60060 	lw	s6,96(sp)
    9198:	8fb70064 	lw	s7,100(sp)
    919c:	8fbe0068 	lw	s8,104(sp)
    91a0:	03e00008 	jr	ra
    91a4:	27bd00a0 	addiu	sp,sp,160

000091a8 <func_809060E8>:
    91a8:	27bdff30 	addiu	sp,sp,-208
    91ac:	afb40048 	sw	s4,72(sp)
    91b0:	3c010001 	lui	at,0x1
    91b4:	afbf005c 	sw	ra,92(sp)
    91b8:	afbe0058 	sw	s8,88(sp)
    91bc:	afb70054 	sw	s7,84(sp)
    91c0:	afb60050 	sw	s6,80(sp)
    91c4:	afb5004c 	sw	s5,76(sp)
    91c8:	afb30044 	sw	s3,68(sp)
    91cc:	afb20040 	sw	s2,64(sp)
    91d0:	afb1003c 	sw	s1,60(sp)
    91d4:	afb00038 	sw	s0,56(sp)
    91d8:	f7b80030 	sdc1	$f24,48(sp)
    91dc:	f7b60028 	sdc1	$f22,40(sp)
    91e0:	f7b40020 	sdc1	$f20,32(sp)
    91e4:	a3a000cd 	sb	zero,205(sp)
    91e8:	0081a021 	addu	s4,a0,at
    91ec:	8e911e10 	lw	s1,7696(s4)
    91f0:	0080a825 	move	s5,a0
    91f4:	3c060000 	lui	a2,0x0
    91f8:	afb100c0 	sw	s1,192(sp)
    91fc:	8c850000 	lw	a1,0(a0)
    9200:	27a400ac 	addiu	a0,sp,172
    9204:	24c60000 	addiu	a2,a2,0
    9208:	240717c6 	li	a3,6086
    920c:	0c000000 	jal	0 <func_808FCF40>
    9210:	00a09025 	move	s2,a1
    9214:	0c000000 	jal	0 <func_808FCF40>
    9218:	8ea40000 	lw	a0,0(s5)
    921c:	3c013f80 	lui	at,0x3f80
    9220:	4481c000 	mtc1	at,$f24
    9224:	3c010000 	lui	at,0x0
    9228:	c4360000 	lwc1	$f22,0(at)
    922c:	0000b025 	move	s6,zero
    9230:	922e0000 	lbu	t6,0(s1)
    9234:	24010001 	li	at,1
    9238:	26300004 	addiu	s0,s1,4
    923c:	15c10096 	bne	t6,at,9498 <func_809060E8+0x2f0>
    9240:	26b300e0 	addiu	s3,s5,224
    9244:	3c170000 	lui	s7,0x0
    9248:	3c1e0000 	lui	s8,0x0
    924c:	27de0000 	addiu	s8,s8,0
    9250:	26f70000 	addiu	s7,s7,0
    9254:	0c000000 	jal	0 <func_808FCF40>
    9258:	8ea40000 	lw	a0,0(s5)
    925c:	828f0a4e 	lb	t7,2638(s4)
    9260:	02002025 	move	a0,s0
    9264:	02602825 	move	a1,s3
    9268:	448f2000 	mtc1	t7,$f4
    926c:	27a600a0 	addiu	a2,sp,160
    9270:	468021a0 	cvt.s.w	$f6,$f4
    9274:	e7a600a0 	swc1	$f6,160(sp)
    9278:	82980a4f 	lb	t8,2639(s4)
    927c:	44984000 	mtc1	t8,$f8
    9280:	00000000 	nop
    9284:	468042a0 	cvt.s.w	$f10,$f8
    9288:	e7aa00a4 	swc1	$f10,164(sp)
    928c:	82990a50 	lb	t9,2640(s4)
    9290:	44998000 	mtc1	t9,$f16
    9294:	00000000 	nop
    9298:	468084a0 	cvt.s.w	$f18,$f16
    929c:	e7b200a8 	swc1	$f18,168(sp)
    92a0:	0c000000 	jal	0 <func_808FCF40>
    92a4:	8ea70000 	lw	a3,0(s5)
    92a8:	c62c0004 	lwc1	$f12,4(s1)
    92ac:	c62e0008 	lwc1	$f14,8(s1)
    92b0:	8e26000c 	lw	a2,12(s1)
    92b4:	0c000000 	jal	0 <func_808FCF40>
    92b8:	00003825 	move	a3,zero
    92bc:	4406b000 	mfc1	a2,$f22
    92c0:	4600b306 	mov.s	$f12,$f22
    92c4:	4600b386 	mov.s	$f14,$f22
    92c8:	0c000000 	jal	0 <func_808FCF40>
    92cc:	24070001 	li	a3,1
    92d0:	c62c0040 	lwc1	$f12,64(s1)
    92d4:	0c000000 	jal	0 <func_808FCF40>
    92d8:	24050001 	li	a1,1
    92dc:	c62c003c 	lwc1	$f12,60(s1)
    92e0:	0c000000 	jal	0 <func_808FCF40>
    92e4:	24050001 	li	a1,1
    92e8:	8e4202c0 	lw	v0,704(s2)
    92ec:	3c09da38 	lui	t1,0xda38
    92f0:	35290003 	ori	t1,t1,0x3
    92f4:	24480008 	addiu	t0,v0,8
    92f8:	ae4802c0 	sw	t0,704(s2)
    92fc:	3c050000 	lui	a1,0x0
    9300:	ac490000 	sw	t1,0(v0)
    9304:	8ea40000 	lw	a0,0(s5)
    9308:	24a50000 	addiu	a1,a1,0
    930c:	240617e4 	li	a2,6116
    9310:	0c000000 	jal	0 <func_808FCF40>
    9314:	00408025 	move	s0,v0
    9318:	ae020004 	sw	v0,4(s0)
    931c:	8e4202c0 	lw	v0,704(s2)
    9320:	3c0bdb06 	lui	t3,0xdb06
    9324:	356b0020 	ori	t3,t3,0x20
    9328:	244a0008 	addiu	t2,v0,8
    932c:	ae4a02c0 	sw	t2,704(s2)
    9330:	ac4b0000 	sw	t3,0(v0)
    9334:	8e861de4 	lw	a2,7652(s4)
    9338:	8ea40000 	lw	a0,0(s5)
    933c:	240c0020 	li	t4,32
    9340:	30c6007f 	andi	a2,a2,0x7f
    9344:	00063023 	negu	a2,a2
    9348:	afac0010 	sw	t4,16(sp)
    934c:	00002825 	move	a1,zero
    9350:	24070020 	li	a3,32
    9354:	0c000000 	jal	0 <func_808FCF40>
    9358:	00408025 	move	s0,v0
    935c:	ae020004 	sw	v0,4(s0)
    9360:	8e4202c0 	lw	v0,704(s2)
    9364:	3c0ede00 	lui	t6,0xde00
    9368:	24010001 	li	at,1
    936c:	244d0008 	addiu	t5,v0,8
    9370:	ae4d02c0 	sw	t5,704(s2)
    9374:	ac570004 	sw	s7,4(v0)
    9378:	ac4e0000 	sw	t6,0(v0)
    937c:	92820ae1 	lbu	v0,2785(s4)
    9380:	3c19fa00 	lui	t9,0xfa00
    9384:	10410003 	beq	v0,at,9394 <func_809060E8+0x1ec>
    9388:	24010002 	li	at,2
    938c:	14410010 	bne	v0,at,93d0 <func_809060E8+0x228>
    9390:	24040064 	li	a0,100
    9394:	3c014316 	lui	at,0x4316
    9398:	44813000 	mtc1	at,$f6
    939c:	c6840afc 	lwc1	$f4,2812(s4)
    93a0:	3c010000 	lui	at,0x0
    93a4:	c4340000 	lwc1	$f20,0(at)
    93a8:	46062202 	mul.s	$f8,$f4,$f6
    93ac:	4600428d 	trunc.w.s	$f10,$f8
    93b0:	44045000 	mfc1	a0,$f10
    93b4:	00000000 	nop
    93b8:	00042400 	sll	a0,a0,0x10
    93bc:	00042403 	sra	a0,a0,0x10
    93c0:	24840032 	addiu	a0,a0,50
    93c4:	00042400 	sll	a0,a0,0x10
    93c8:	10000003 	b	93d8 <func_809060E8+0x230>
    93cc:	00042403 	sra	a0,a0,0x10
    93d0:	3c010000 	lui	at,0x0
    93d4:	c4340000 	lwc1	$f20,0(at)
    93d8:	8e4202d0 	lw	v0,720(s2)
    93dc:	308800ff 	andi	t0,a0,0xff
    93e0:	3c010000 	lui	at,0x0
    93e4:	24580008 	addiu	t8,v0,8
    93e8:	ae5802d0 	sw	t8,720(s2)
    93ec:	ac480004 	sw	t0,4(v0)
    93f0:	ac590000 	sw	t9,0(v0)
    93f4:	c4320000 	lwc1	$f18,0(at)
    93f8:	c6300008 	lwc1	$f16,8(s1)
    93fc:	c626000c 	lwc1	$f6,12(s1)
    9400:	c6240004 	lwc1	$f4,4(s1)
    9404:	46128001 	sub.s	$f0,$f16,$f18
    9408:	3c010000 	lui	at,0x0
    940c:	c42e0000 	lwc1	$f14,0(at)
    9410:	46183201 	sub.s	$f8,$f6,$f24
    9414:	00003825 	move	a3,zero
    9418:	46002300 	add.s	$f12,$f4,$f0
    941c:	46004280 	add.s	$f10,$f8,$f0
    9420:	44065000 	mfc1	a2,$f10
    9424:	0c000000 	jal	0 <func_808FCF40>
    9428:	00000000 	nop
    942c:	4600a306 	mov.s	$f12,$f20
    9430:	0c000000 	jal	0 <func_808FCF40>
    9434:	24050001 	li	a1,1
    9438:	44807000 	mtc1	zero,$f14
    943c:	4406c000 	mfc1	a2,$f24
    9440:	4600c306 	mov.s	$f12,$f24
    9444:	0c000000 	jal	0 <func_808FCF40>
    9448:	24070001 	li	a3,1
    944c:	8e4202d0 	lw	v0,720(s2)
    9450:	3c0ada38 	lui	t2,0xda38
    9454:	354a0003 	ori	t2,t2,0x3
    9458:	24490008 	addiu	t1,v0,8
    945c:	ae4902d0 	sw	t1,720(s2)
    9460:	3c050000 	lui	a1,0x0
    9464:	ac4a0000 	sw	t2,0(v0)
    9468:	8ea40000 	lw	a0,0(s5)
    946c:	24a50000 	addiu	a1,a1,0
    9470:	2406180b 	li	a2,6155
    9474:	0c000000 	jal	0 <func_808FCF40>
    9478:	00408025 	move	s0,v0
    947c:	ae020004 	sw	v0,4(s0)
    9480:	8e4202d0 	lw	v0,720(s2)
    9484:	3c0cde00 	lui	t4,0xde00
    9488:	244b0008 	addiu	t3,v0,8
    948c:	ae4b02d0 	sw	t3,720(s2)
    9490:	ac5e0004 	sw	s8,4(v0)
    9494:	ac4c0000 	sw	t4,0(v0)
    9498:	26d60001 	addiu	s6,s6,1
    949c:	0016b400 	sll	s6,s6,0x10
    94a0:	0016b403 	sra	s6,s6,0x10
    94a4:	5ac0ff63 	blezl	s6,9234 <func_809060E8+0x8c>
    94a8:	922e0000 	lbu	t6,0(s1)
    94ac:	3c140000 	lui	s4,0x0
    94b0:	8fb100c0 	lw	s1,192(sp)
    94b4:	26940000 	addiu	s4,s4,0
    94b8:	0000b025 	move	s6,zero
    94bc:	922d0000 	lbu	t5,0(s1)
    94c0:	24010002 	li	at,2
    94c4:	93ae00cd 	lbu	t6,205(sp)
    94c8:	15a10030 	bne	t5,at,958c <func_809060E8+0x3e4>
    94cc:	3c130600 	lui	s3,0x600
    94d0:	15c00009 	bnez	t6,94f8 <func_809060E8+0x350>
    94d4:	26730ea0 	addiu	s3,s3,3744
    94d8:	00002025 	move	a0,zero
    94dc:	02a02825 	move	a1,s5
    94e0:	24060186 	li	a2,390
    94e4:	0c000000 	jal	0 <func_808FCF40>
    94e8:	24070001 	li	a3,1
    94ec:	93af00cd 	lbu	t7,205(sp)
    94f0:	25f80001 	addiu	t8,t7,1
    94f4:	a3b800cd 	sb	t8,205(sp)
    94f8:	c62c0004 	lwc1	$f12,4(s1)
    94fc:	c62e0008 	lwc1	$f14,8(s1)
    9500:	8e26000c 	lw	a2,12(s1)
    9504:	0c000000 	jal	0 <func_808FCF40>
    9508:	00003825 	move	a3,zero
    950c:	c62c0034 	lwc1	$f12,52(s1)
    9510:	24070001 	li	a3,1
    9514:	44066000 	mfc1	a2,$f12
    9518:	0c000000 	jal	0 <func_808FCF40>
    951c:	46006386 	mov.s	$f14,$f12
    9520:	c62c0040 	lwc1	$f12,64(s1)
    9524:	0c000000 	jal	0 <func_808FCF40>
    9528:	24050001 	li	a1,1
    952c:	c62c003c 	lwc1	$f12,60(s1)
    9530:	0c000000 	jal	0 <func_808FCF40>
    9534:	24050001 	li	a1,1
    9538:	c62c0038 	lwc1	$f12,56(s1)
    953c:	0c000000 	jal	0 <func_808FCF40>
    9540:	24050001 	li	a1,1
    9544:	8e4202c0 	lw	v0,704(s2)
    9548:	3c08da38 	lui	t0,0xda38
    954c:	35080003 	ori	t0,t0,0x3
    9550:	24590008 	addiu	t9,v0,8
    9554:	ae5902c0 	sw	t9,704(s2)
    9558:	ac480000 	sw	t0,0(v0)
    955c:	8ea40000 	lw	a0,0(s5)
    9560:	02802825 	move	a1,s4
    9564:	24061823 	li	a2,6179
    9568:	0c000000 	jal	0 <func_808FCF40>
    956c:	00408025 	move	s0,v0
    9570:	ae020004 	sw	v0,4(s0)
    9574:	8e4202c0 	lw	v0,704(s2)
    9578:	3c0ade00 	lui	t2,0xde00
    957c:	24490008 	addiu	t1,v0,8
    9580:	ae4902c0 	sw	t1,704(s2)
    9584:	ac530004 	sw	s3,4(v0)
    9588:	ac4a0000 	sw	t2,0(v0)
    958c:	26d60001 	addiu	s6,s6,1
    9590:	0016b400 	sll	s6,s6,0x10
    9594:	0016b403 	sra	s6,s6,0x10
    9598:	2ac10064 	slti	at,s6,100
    959c:	1420ffc7 	bnez	at,94bc <func_809060E8+0x314>
    95a0:	26310044 	addiu	s1,s1,68
    95a4:	3c060000 	lui	a2,0x0
    95a8:	24c60000 	addiu	a2,a2,0
    95ac:	27a400ac 	addiu	a0,sp,172
    95b0:	8ea50000 	lw	a1,0(s5)
    95b4:	0c000000 	jal	0 <func_808FCF40>
    95b8:	24071829 	li	a3,6185
    95bc:	8fbf005c 	lw	ra,92(sp)
    95c0:	d7b40020 	ldc1	$f20,32(sp)
    95c4:	d7b60028 	ldc1	$f22,40(sp)
    95c8:	d7b80030 	ldc1	$f24,48(sp)
    95cc:	8fb00038 	lw	s0,56(sp)
    95d0:	8fb1003c 	lw	s1,60(sp)
    95d4:	8fb20040 	lw	s2,64(sp)
    95d8:	8fb30044 	lw	s3,68(sp)
    95dc:	8fb40048 	lw	s4,72(sp)
    95e0:	8fb5004c 	lw	s5,76(sp)
    95e4:	8fb60050 	lw	s6,80(sp)
    95e8:	8fb70054 	lw	s7,84(sp)
    95ec:	8fbe0058 	lw	s8,88(sp)
    95f0:	03e00008 	jr	ra
    95f4:	27bd00d0 	addiu	sp,sp,208

000095f8 <func_80906538>:
    95f8:	27bdff68 	addiu	sp,sp,-152
    95fc:	f7be0038 	sdc1	$f30,56(sp)
    9600:	3c010000 	lui	at,0x0
    9604:	c43e0000 	lwc1	$f30,0(at)
    9608:	f7bc0030 	sdc1	$f28,48(sp)
    960c:	3c0142c8 	lui	at,0x42c8
    9610:	4481e000 	mtc1	at,$f28
    9614:	f7ba0028 	sdc1	$f26,40(sp)
    9618:	3c014298 	lui	at,0x4298
    961c:	4481d000 	mtc1	at,$f26
    9620:	f7b80020 	sdc1	$f24,32(sp)
    9624:	f7b60018 	sdc1	$f22,24(sp)
    9628:	f7b40010 	sdc1	$f20,16(sp)
    962c:	3c0141f0 	lui	at,0x41f0
    9630:	afb30050 	sw	s3,80(sp)
    9634:	afb2004c 	sw	s2,76(sp)
    9638:	afb10048 	sw	s1,72(sp)
    963c:	afb00044 	sw	s0,68(sp)
    9640:	4486a000 	mtc1	a2,$f20
    9644:	4481b000 	mtc1	at,$f22
    9648:	4480c000 	mtc1	zero,$f24
    964c:	00a08025 	move	s0,a1
    9650:	00808825 	move	s1,a0
    9654:	afbf0054 	sw	ra,84(sp)
    9658:	00009025 	move	s2,zero
    965c:	2413000c 	li	s3,12
    9660:	87aa0086 	lh	t2,134(sp)
    9664:	4618a032 	c.eq.s	$f20,$f24
    9668:	00127040 	sll	t6,s2,0x1
    966c:	27a40070 	addiu	a0,sp,112
    9670:	45030007 	bc1tl	9690 <func_80906538+0x98>
    9674:	4614c03c 	c.lt.s	$f24,$f20
    9678:	3c0a0000 	lui	t2,0x0
    967c:	014e5021 	addu	t2,t2,t6
    9680:	854a0000 	lh	t2,0(t2)
    9684:	054200f9 	bltzl	t2,9a6c <func_80906538+0x474>
    9688:	26520001 	addiu	s2,s2,1
    968c:	4614c03c 	c.lt.s	$f24,$f20
    9690:	00000000 	nop
    9694:	45000024 	bc1f	9728 <func_80906538+0x130>
    9698:	00000000 	nop
    969c:	01530019 	multu	t2,s3
    96a0:	00007812 	mflo	t7
    96a4:	022f1021 	addu	v0,s1,t7
    96a8:	c4440234 	lwc1	$f4,564(v0)
    96ac:	02530019 	multu	s2,s3
    96b0:	c44a0238 	lwc1	$f10,568(v0)
    96b4:	0000c012 	mflo	t8
    96b8:	02381821 	addu	v1,s1,t8
    96bc:	c4600234 	lwc1	$f0,564(v1)
    96c0:	c4620238 	lwc1	$f2,568(v1)
    96c4:	c46c023c 	lwc1	$f12,572(v1)
    96c8:	46002181 	sub.s	$f6,$f4,$f0
    96cc:	46025101 	sub.s	$f4,$f10,$f2
    96d0:	46143202 	mul.s	$f8,$f6,$f20
    96d4:	46004380 	add.s	$f14,$f8,$f0
    96d8:	46142182 	mul.s	$f6,$f4,$f20
    96dc:	c448023c 	lwc1	$f8,572(v0)
    96e0:	460c4281 	sub.s	$f10,$f8,$f12
    96e4:	46023400 	add.s	$f16,$f6,$f2
    96e8:	c6260024 	lwc1	$f6,36(s1)
    96ec:	46145102 	mul.s	$f4,$f10,$f20
    96f0:	46067201 	sub.s	$f8,$f14,$f6
    96f4:	e7a80070 	swc1	$f8,112(sp)
    96f8:	c62a0028 	lwc1	$f10,40(s1)
    96fc:	460c2480 	add.s	$f18,$f4,$f12
    9700:	460a8101 	sub.s	$f4,$f16,$f10
    9704:	461a2180 	add.s	$f6,$f4,$f26
    9708:	46163200 	add.s	$f8,$f6,$f22
    970c:	46164280 	add.s	$f10,$f8,$f22
    9710:	461c5100 	add.s	$f4,$f10,$f28
    9714:	e7a40074 	swc1	$f4,116(sp)
    9718:	c626002c 	lwc1	$f6,44(s1)
    971c:	46069201 	sub.s	$f8,$f18,$f6
    9720:	10000014 	b	9774 <func_80906538+0x17c>
    9724:	e7a80078 	swc1	$f8,120(sp)
    9728:	02530019 	multu	s2,s3
    972c:	c6240024 	lwc1	$f4,36(s1)
    9730:	0000c812 	mflo	t9
    9734:	02391821 	addu	v1,s1,t9
    9738:	c46a0234 	lwc1	$f10,564(v1)
    973c:	46045181 	sub.s	$f6,$f10,$f4
    9740:	e7a60070 	swc1	$f6,112(sp)
    9744:	c62a0028 	lwc1	$f10,40(s1)
    9748:	c4680238 	lwc1	$f8,568(v1)
    974c:	460a4101 	sub.s	$f4,$f8,$f10
    9750:	461a2180 	add.s	$f6,$f4,$f26
    9754:	46163200 	add.s	$f8,$f6,$f22
    9758:	46164280 	add.s	$f10,$f8,$f22
    975c:	461c5100 	add.s	$f4,$f10,$f28
    9760:	e7a40074 	swc1	$f4,116(sp)
    9764:	c628002c 	lwc1	$f8,44(s1)
    9768:	c466023c 	lwc1	$f6,572(v1)
    976c:	46083281 	sub.s	$f10,$f6,$f8
    9770:	e7aa0078 	swc1	$f10,120(sp)
    9774:	0c000000 	jal	0 <func_808FCF40>
    9778:	27a50064 	addiu	a1,sp,100
    977c:	c7a00064 	lwc1	$f0,100(sp)
    9780:	c7a20068 	lwc1	$f2,104(sp)
    9784:	3c014200 	lui	at,0x4200
    9788:	461e0002 	mul.s	$f0,$f0,$f30
    978c:	44812000 	mtc1	at,$f4
    9790:	3c020000 	lui	v0,0x0
    9794:	461e1082 	mul.s	$f2,$f2,$f30
    9798:	00521021 	addu	v0,v0,s2
    979c:	90420000 	lbu	v0,0(v0)
    97a0:	3c0b0000 	lui	t3,0x0
    97a4:	3c0c0000 	lui	t4,0x0
    97a8:	46040180 	add.s	$f6,$f0,$f4
    97ac:	3c0d0000 	lui	t5,0x0
    97b0:	3c1f0000 	lui	ra,0x0
    97b4:	4600128d 	trunc.w.s	$f10,$f2
    97b8:	24010002 	li	at,2
    97bc:	27ff0000 	addiu	ra,ra,0
    97c0:	4600320d 	trunc.w.s	$f8,$f6
    97c4:	44085000 	mfc1	t0,$f10
    97c8:	25ad0000 	addiu	t5,t5,0
    97cc:	258c0000 	addiu	t4,t4,0
    97d0:	44074000 	mfc1	a3,$f8
    97d4:	00084400 	sll	t0,t0,0x10
    97d8:	00084403 	sra	t0,t0,0x10
    97dc:	00084180 	sll	t0,t0,0x6
    97e0:	00084400 	sll	t0,t0,0x10
    97e4:	00073c00 	sll	a3,a3,0x10
    97e8:	256b0000 	addiu	t3,t3,0
    97ec:	240900ff 	li	t1,255
    97f0:	00073c03 	sra	a3,a3,0x10
    97f4:	00084403 	sra	t0,t0,0x10
    97f8:	e7a20068 	swc1	$f2,104(sp)
    97fc:	14410026 	bne	v0,at,9898 <func_80906538+0x2a0>
    9800:	e7a00064 	swc1	$f0,100(sp)
    9804:	00005025 	move	t2,zero
    9808:	2405fe80 	li	a1,-384
    980c:	000ac040 	sll	t8,t2,0x1
    9810:	01783021 	addu	a2,t3,t8
    9814:	84c40000 	lh	a0,0(a2)
    9818:	254a0001 	addiu	t2,t2,1
    981c:	000a5400 	sll	t2,t2,0x10
    9820:	00041823 	negu	v1,a0
    9824:	00031c00 	sll	v1,v1,0x10
    9828:	00031c03 	sra	v1,v1,0x10
    982c:	0064082a 	slt	at,v1,a0
    9830:	10200012 	beqz	at,987c <func_80906538+0x284>
    9834:	000a5403 	sra	t2,t2,0x10
    9838:	00e3c821 	addu	t9,a3,v1
    983c:	03287021 	addu	t6,t9,t0
    9840:	01c51021 	addu	v0,t6,a1
    9844:	00021400 	sll	v0,v0,0x10
    9848:	00021403 	sra	v0,v0,0x10
    984c:	04400006 	bltz	v0,9868 <func_80906538+0x270>
    9850:	24630001 	addiu	v1,v1,1
    9854:	28411000 	slti	at,v0,4096
    9858:	10200003 	beqz	at,9868 <func_80906538+0x270>
    985c:	02027821 	addu	t7,s0,v0
    9860:	a1e90000 	sb	t1,0(t7)
    9864:	84c40000 	lh	a0,0(a2)
    9868:	00031c00 	sll	v1,v1,0x10
    986c:	00031c03 	sra	v1,v1,0x10
    9870:	0064082a 	slt	at,v1,a0
    9874:	5420fff1 	bnezl	at,983c <func_80906538+0x244>
    9878:	00e3c821 	addu	t9,a3,v1
    987c:	24a50040 	addiu	a1,a1,64
    9880:	00052c00 	sll	a1,a1,0x10
    9884:	2941000c 	slti	at,t2,12
    9888:	1420ffe0 	bnez	at,980c <func_80906538+0x214>
    988c:	00052c03 	sra	a1,a1,0x10
    9890:	10000076 	b	9a6c <func_80906538+0x474>
    9894:	26520001 	addiu	s2,s2,1
    9898:	24010001 	li	at,1
    989c:	14410025 	bne	v0,at,9934 <func_80906538+0x33c>
    98a0:	00005025 	move	t2,zero
    98a4:	2405ff00 	li	a1,-256
    98a8:	000ac040 	sll	t8,t2,0x1
    98ac:	01983021 	addu	a2,t4,t8
    98b0:	84c40000 	lh	a0,0(a2)
    98b4:	254a0001 	addiu	t2,t2,1
    98b8:	000a5400 	sll	t2,t2,0x10
    98bc:	00041823 	negu	v1,a0
    98c0:	00031c00 	sll	v1,v1,0x10
    98c4:	00031c03 	sra	v1,v1,0x10
    98c8:	0064082a 	slt	at,v1,a0
    98cc:	10200012 	beqz	at,9918 <func_80906538+0x320>
    98d0:	000a5403 	sra	t2,t2,0x10
    98d4:	00e3c821 	addu	t9,a3,v1
    98d8:	03287021 	addu	t6,t9,t0
    98dc:	01c51021 	addu	v0,t6,a1
    98e0:	00021400 	sll	v0,v0,0x10
    98e4:	00021403 	sra	v0,v0,0x10
    98e8:	04400006 	bltz	v0,9904 <func_80906538+0x30c>
    98ec:	24630001 	addiu	v1,v1,1
    98f0:	28411000 	slti	at,v0,4096
    98f4:	10200003 	beqz	at,9904 <func_80906538+0x30c>
    98f8:	02027821 	addu	t7,s0,v0
    98fc:	a1e90000 	sb	t1,0(t7)
    9900:	84c40000 	lh	a0,0(a2)
    9904:	00031c00 	sll	v1,v1,0x10
    9908:	00031c03 	sra	v1,v1,0x10
    990c:	0064082a 	slt	at,v1,a0
    9910:	5420fff1 	bnezl	at,98d8 <func_80906538+0x2e0>
    9914:	00e3c821 	addu	t9,a3,v1
    9918:	24a50040 	addiu	a1,a1,64
    991c:	00052c00 	sll	a1,a1,0x10
    9920:	29410008 	slti	at,t2,8
    9924:	1420ffe0 	bnez	at,98a8 <func_80906538+0x2b0>
    9928:	00052c03 	sra	a1,a1,0x10
    992c:	1000004f 	b	9a6c <func_80906538+0x474>
    9930:	26520001 	addiu	s2,s2,1
    9934:	14400028 	bnez	v0,99d8 <func_80906538+0x3e0>
    9938:	00005025 	move	t2,zero
    993c:	00005025 	move	t2,zero
    9940:	2405ff40 	li	a1,-192
    9944:	000ac040 	sll	t8,t2,0x1
    9948:	01b83021 	addu	a2,t5,t8
    994c:	84c20000 	lh	v0,0(a2)
    9950:	254a0001 	addiu	t2,t2,1
    9954:	000a5400 	sll	t2,t2,0x10
    9958:	00021823 	negu	v1,v0
    995c:	00031c00 	sll	v1,v1,0x10
    9960:	00031c03 	sra	v1,v1,0x10
    9964:	2444ffff 	addiu	a0,v0,-1
    9968:	0064082a 	slt	at,v1,a0
    996c:	10200013 	beqz	at,99bc <func_80906538+0x3c4>
    9970:	000a5403 	sra	t2,t2,0x10
    9974:	00e3c821 	addu	t9,a3,v1
    9978:	03287021 	addu	t6,t9,t0
    997c:	01c51021 	addu	v0,t6,a1
    9980:	00021400 	sll	v0,v0,0x10
    9984:	00021403 	sra	v0,v0,0x10
    9988:	04400007 	bltz	v0,99a8 <func_80906538+0x3b0>
    998c:	24630001 	addiu	v1,v1,1
    9990:	28411000 	slti	at,v0,4096
    9994:	10200004 	beqz	at,99a8 <func_80906538+0x3b0>
    9998:	02027821 	addu	t7,s0,v0
    999c:	a1e90000 	sb	t1,0(t7)
    99a0:	84c40000 	lh	a0,0(a2)
    99a4:	2484ffff 	addiu	a0,a0,-1
    99a8:	00031c00 	sll	v1,v1,0x10
    99ac:	00031c03 	sra	v1,v1,0x10
    99b0:	0064082a 	slt	at,v1,a0
    99b4:	5420fff0 	bnezl	at,9978 <func_80906538+0x380>
    99b8:	00e3c821 	addu	t9,a3,v1
    99bc:	24a50040 	addiu	a1,a1,64
    99c0:	00052c00 	sll	a1,a1,0x10
    99c4:	29410007 	slti	at,t2,7
    99c8:	1420ffde 	bnez	at,9944 <func_80906538+0x34c>
    99cc:	00052c03 	sra	a1,a1,0x10
    99d0:	10000026 	b	9a6c <func_80906538+0x474>
    99d4:	26520001 	addiu	s2,s2,1
    99d8:	2405ff80 	li	a1,-128
    99dc:	000ac040 	sll	t8,t2,0x1
    99e0:	03f83021 	addu	a2,ra,t8
    99e4:	84c20000 	lh	v0,0(a2)
    99e8:	254a0001 	addiu	t2,t2,1
    99ec:	000a5400 	sll	t2,t2,0x10
    99f0:	00021823 	negu	v1,v0
    99f4:	00031c00 	sll	v1,v1,0x10
    99f8:	00031c03 	sra	v1,v1,0x10
    99fc:	2444ffff 	addiu	a0,v0,-1
    9a00:	0064082a 	slt	at,v1,a0
    9a04:	10200013 	beqz	at,9a54 <func_80906538+0x45c>
    9a08:	000a5403 	sra	t2,t2,0x10
    9a0c:	00e3c821 	addu	t9,a3,v1
    9a10:	03287021 	addu	t6,t9,t0
    9a14:	01c51021 	addu	v0,t6,a1
    9a18:	00021400 	sll	v0,v0,0x10
    9a1c:	00021403 	sra	v0,v0,0x10
    9a20:	04400007 	bltz	v0,9a40 <func_80906538+0x448>
    9a24:	24630001 	addiu	v1,v1,1
    9a28:	28411000 	slti	at,v0,4096
    9a2c:	10200004 	beqz	at,9a40 <func_80906538+0x448>
    9a30:	02027821 	addu	t7,s0,v0
    9a34:	a1e90000 	sb	t1,0(t7)
    9a38:	84c40000 	lh	a0,0(a2)
    9a3c:	2484ffff 	addiu	a0,a0,-1
    9a40:	00031c00 	sll	v1,v1,0x10
    9a44:	00031c03 	sra	v1,v1,0x10
    9a48:	0064082a 	slt	at,v1,a0
    9a4c:	5420fff0 	bnezl	at,9a10 <func_80906538+0x418>
    9a50:	00e3c821 	addu	t9,a3,v1
    9a54:	24a50040 	addiu	a1,a1,64
    9a58:	00052c00 	sll	a1,a1,0x10
    9a5c:	29410006 	slti	at,t2,6
    9a60:	1420ffde 	bnez	at,99dc <func_80906538+0x3e4>
    9a64:	00052c03 	sra	a1,a1,0x10
    9a68:	26520001 	addiu	s2,s2,1
    9a6c:	00129400 	sll	s2,s2,0x10
    9a70:	00129403 	sra	s2,s2,0x10
    9a74:	2a41000f 	slti	at,s2,15
    9a78:	5420fefb 	bnezl	at,9668 <func_80906538+0x70>
    9a7c:	4618a032 	c.eq.s	$f20,$f24
    9a80:	8fbf0054 	lw	ra,84(sp)
    9a84:	a7aa0086 	sh	t2,134(sp)
    9a88:	d7b40010 	ldc1	$f20,16(sp)
    9a8c:	d7b60018 	ldc1	$f22,24(sp)
    9a90:	d7b80020 	ldc1	$f24,32(sp)
    9a94:	d7ba0028 	ldc1	$f26,40(sp)
    9a98:	d7bc0030 	ldc1	$f28,48(sp)
    9a9c:	d7be0038 	ldc1	$f30,56(sp)
    9aa0:	8fb00044 	lw	s0,68(sp)
    9aa4:	8fb10048 	lw	s1,72(sp)
    9aa8:	8fb2004c 	lw	s2,76(sp)
    9aac:	8fb30050 	lw	s3,80(sp)
    9ab0:	03e00008 	jr	ra
    9ab4:	27bd0098 	addiu	sp,sp,152

00009ab8 <func_809069F8>:
    9ab8:	27bdffd0 	addiu	sp,sp,-48
    9abc:	afb20028 	sw	s2,40(sp)
    9ac0:	afb10024 	sw	s1,36(sp)
    9ac4:	afb00020 	sw	s0,32(sp)
    9ac8:	00808825 	move	s1,a0
    9acc:	00a09025 	move	s2,a1
    9ad0:	afbf002c 	sw	ra,44(sp)
    9ad4:	f7b40018 	sdc1	$f20,24(sp)
    9ad8:	afa60038 	sw	a2,56(sp)
    9adc:	00801025 	move	v0,a0
    9ae0:	00008025 	move	s0,zero
    9ae4:	26100001 	addiu	s0,s0,1
    9ae8:	00108400 	sll	s0,s0,0x10
    9aec:	00108403 	sra	s0,s0,0x10
    9af0:	2a010400 	slti	at,s0,1024
    9af4:	24420004 	addiu	v0,v0,4
    9af8:	1420fffa 	bnez	at,9ae4 <func_809069F8+0x2c>
    9afc:	ac40fffc 	sw	zero,-4(v0)
    9b00:	3c013f80 	lui	at,0x3f80
    9b04:	44816000 	mtc1	at,$f12
    9b08:	0c000000 	jal	0 <func_808FCF40>
    9b0c:	00002825 	move	a1,zero
    9b10:	3c0140a0 	lui	at,0x40a0
    9b14:	4481a000 	mtc1	at,$f20
    9b18:	00008025 	move	s0,zero
    9b1c:	44902000 	mtc1	s0,$f4
    9b20:	02402025 	move	a0,s2
    9b24:	02202825 	move	a1,s1
    9b28:	468021a0 	cvt.s.w	$f6,$f4
    9b2c:	46143203 	div.s	$f8,$f6,$f20
    9b30:	44064000 	mfc1	a2,$f8
    9b34:	0c000000 	jal	0 <func_808FCF40>
    9b38:	00000000 	nop
    9b3c:	26100001 	addiu	s0,s0,1
    9b40:	00108400 	sll	s0,s0,0x10
    9b44:	00108403 	sra	s0,s0,0x10
    9b48:	2a010006 	slti	at,s0,6
    9b4c:	5420fff4 	bnezl	at,9b20 <func_809069F8+0x68>
    9b50:	44902000 	mtc1	s0,$f4
    9b54:	8fbf002c 	lw	ra,44(sp)
    9b58:	d7b40018 	ldc1	$f20,24(sp)
    9b5c:	8fb00020 	lw	s0,32(sp)
    9b60:	8fb10024 	lw	s1,36(sp)
    9b64:	8fb20028 	lw	s2,40(sp)
    9b68:	03e00008 	jr	ra
    9b6c:	27bd0030 	addiu	sp,sp,48

00009b70 <func_80906AB0>:
    9b70:	27bdff88 	addiu	sp,sp,-120
    9b74:	afbf001c 	sw	ra,28(sp)
    9b78:	afb00018 	sw	s0,24(sp)
    9b7c:	afa40078 	sw	a0,120(sp)
    9b80:	afa5007c 	sw	a1,124(sp)
    9b84:	afa60080 	sw	a2,128(sp)
    9b88:	8cd00000 	lw	s0,0(a2)
    9b8c:	3c060000 	lui	a2,0x0
    9b90:	24c60000 	addiu	a2,a2,0
    9b94:	27a40058 	addiu	a0,sp,88
    9b98:	2407191e 	li	a3,6430
    9b9c:	0c000000 	jal	0 <func_808FCF40>
    9ba0:	02002825 	move	a1,s0
    9ba4:	8faf0080 	lw	t7,128(sp)
    9ba8:	0c000000 	jal	0 <func_808FCF40>
    9bac:	8de40000 	lw	a0,0(t7)
    9bb0:	8fa20080 	lw	v0,128(sp)
    9bb4:	3c010001 	lui	at,0x1
    9bb8:	00411021 	addu	v0,v0,at
    9bbc:	90430ae1 	lbu	v1,2785(v0)
    9bc0:	24010001 	li	at,1
    9bc4:	10610003 	beq	v1,at,9bd4 <func_80906AB0+0x64>
    9bc8:	24010002 	li	at,2
    9bcc:	1461000e 	bne	v1,at,9c08 <func_80906AB0+0x98>
    9bd0:	24040078 	li	a0,120
    9bd4:	3c014334 	lui	at,0x4334
    9bd8:	44813000 	mtc1	at,$f6
    9bdc:	c4440afc 	lwc1	$f4,2812(v0)
    9be0:	46062202 	mul.s	$f8,$f4,$f6
    9be4:	4600428d 	trunc.w.s	$f10,$f8
    9be8:	44045000 	mfc1	a0,$f10
    9bec:	00000000 	nop
    9bf0:	00042400 	sll	a0,a0,0x10
    9bf4:	00042403 	sra	a0,a0,0x10
    9bf8:	2484001e 	addiu	a0,a0,30
    9bfc:	00042400 	sll	a0,a0,0x10
    9c00:	10000001 	b	9c08 <func_80906AB0+0x98>
    9c04:	00042403 	sra	a0,a0,0x10
    9c08:	8e0202c0 	lw	v0,704(s0)
    9c0c:	3c08fa00 	lui	t0,0xfa00
    9c10:	308900ff 	andi	t1,a0,0xff
    9c14:	24590008 	addiu	t9,v0,8
    9c18:	ae1902c0 	sw	t9,704(s0)
    9c1c:	ac490004 	sw	t1,4(v0)
    9c20:	ac480000 	sw	t0,0(v0)
    9c24:	8e0202c0 	lw	v0,704(s0)
    9c28:	3c0bfb00 	lui	t3,0xfb00
    9c2c:	3c0141a0 	lui	at,0x41a0
    9c30:	244a0008 	addiu	t2,v0,8
    9c34:	ae0a02c0 	sw	t2,704(s0)
    9c38:	ac400004 	sw	zero,4(v0)
    9c3c:	ac4b0000 	sw	t3,0(v0)
    9c40:	8fa2007c 	lw	v0,124(sp)
    9c44:	44819000 	mtc1	at,$f18
    9c48:	00003825 	move	a3,zero
    9c4c:	c450002c 	lwc1	$f16,44(v0)
    9c50:	c44c0024 	lwc1	$f12,36(v0)
    9c54:	c44e0080 	lwc1	$f14,128(v0)
    9c58:	46128101 	sub.s	$f4,$f16,$f18
    9c5c:	44062000 	mfc1	a2,$f4
    9c60:	0c000000 	jal	0 <func_808FCF40>
    9c64:	00000000 	nop
    9c68:	3c010000 	lui	at,0x0
    9c6c:	c42c0000 	lwc1	$f12,0(at)
    9c70:	3c013f80 	lui	at,0x3f80
    9c74:	44817000 	mtc1	at,$f14
    9c78:	44066000 	mfc1	a2,$f12
    9c7c:	0c000000 	jal	0 <func_808FCF40>
    9c80:	24070001 	li	a3,1
    9c84:	8e0202c0 	lw	v0,704(s0)
    9c88:	3c0dda38 	lui	t5,0xda38
    9c8c:	35ad0003 	ori	t5,t5,0x3
    9c90:	244c0008 	addiu	t4,v0,8
    9c94:	ae0c02c0 	sw	t4,704(s0)
    9c98:	ac4d0000 	sw	t5,0(v0)
    9c9c:	8fae0080 	lw	t6,128(sp)
    9ca0:	3c050000 	lui	a1,0x0
    9ca4:	24a50000 	addiu	a1,a1,0
    9ca8:	8dc40000 	lw	a0,0(t6)
    9cac:	24061939 	li	a2,6457
    9cb0:	0c000000 	jal	0 <func_808FCF40>
    9cb4:	afa2004c 	sw	v0,76(sp)
    9cb8:	8fa3004c 	lw	v1,76(sp)
    9cbc:	3c180000 	lui	t8,0x0
    9cc0:	27180000 	addiu	t8,t8,0
    9cc4:	ac620004 	sw	v0,4(v1)
    9cc8:	8e0202c0 	lw	v0,704(s0)
    9ccc:	3c04de00 	lui	a0,0xde00
    9cd0:	3c08fd90 	lui	t0,0xfd90
    9cd4:	244f0008 	addiu	t7,v0,8
    9cd8:	ae0f02c0 	sw	t7,704(s0)
    9cdc:	ac580004 	sw	t8,4(v0)
    9ce0:	ac440000 	sw	a0,0(v0)
    9ce4:	8e0202c0 	lw	v0,704(s0)
    9ce8:	3c0c0709 	lui	t4,0x709
    9cec:	358c8260 	ori	t4,t4,0x8260
    9cf0:	24590008 	addiu	t9,v0,8
    9cf4:	ae1902c0 	sw	t9,704(s0)
    9cf8:	ac480000 	sw	t0,0(v0)
    9cfc:	8fa90078 	lw	t1,120(sp)
    9d00:	3c0bf590 	lui	t3,0xf590
    9d04:	3c0ee600 	lui	t6,0xe600
    9d08:	ac490004 	sw	t1,4(v0)
    9d0c:	8e0202c0 	lw	v0,704(s0)
    9d10:	3c19077f 	lui	t9,0x77f
    9d14:	3739f100 	ori	t9,t9,0xf100
    9d18:	244a0008 	addiu	t2,v0,8
    9d1c:	ae0a02c0 	sw	t2,704(s0)
    9d20:	ac4c0004 	sw	t4,4(v0)
    9d24:	ac4b0000 	sw	t3,0(v0)
    9d28:	8e0202c0 	lw	v0,704(s0)
    9d2c:	3c18f300 	lui	t8,0xf300
    9d30:	3c09e700 	lui	t1,0xe700
    9d34:	244d0008 	addiu	t5,v0,8
    9d38:	ae0d02c0 	sw	t5,704(s0)
    9d3c:	ac400004 	sw	zero,4(v0)
    9d40:	ac4e0000 	sw	t6,0(v0)
    9d44:	8e0202c0 	lw	v0,704(s0)
    9d48:	3c0bf588 	lui	t3,0xf588
    9d4c:	3c0c0009 	lui	t4,0x9
    9d50:	244f0008 	addiu	t7,v0,8
    9d54:	ae0f02c0 	sw	t7,704(s0)
    9d58:	ac590004 	sw	t9,4(v0)
    9d5c:	ac580000 	sw	t8,0(v0)
    9d60:	8e0202c0 	lw	v0,704(s0)
    9d64:	358c8260 	ori	t4,t4,0x8260
    9d68:	356b1000 	ori	t3,t3,0x1000
    9d6c:	24480008 	addiu	t0,v0,8
    9d70:	ae0802c0 	sw	t0,704(s0)
    9d74:	ac400004 	sw	zero,4(v0)
    9d78:	ac490000 	sw	t1,0(v0)
    9d7c:	8e0202c0 	lw	v0,704(s0)
    9d80:	3c0f000f 	lui	t7,0xf
    9d84:	35efc0fc 	ori	t7,t7,0xc0fc
    9d88:	244a0008 	addiu	t2,v0,8
    9d8c:	ae0a02c0 	sw	t2,704(s0)
    9d90:	ac4c0004 	sw	t4,4(v0)
    9d94:	ac4b0000 	sw	t3,0(v0)
    9d98:	8e0202c0 	lw	v0,704(s0)
    9d9c:	3c0ef200 	lui	t6,0xf200
    9da0:	3c190000 	lui	t9,0x0
    9da4:	244d0008 	addiu	t5,v0,8
    9da8:	ae0d02c0 	sw	t5,704(s0)
    9dac:	ac4f0004 	sw	t7,4(v0)
    9db0:	ac4e0000 	sw	t6,0(v0)
    9db4:	8e0202c0 	lw	v0,704(s0)
    9db8:	27390000 	addiu	t9,t9,0
    9dbc:	3c060000 	lui	a2,0x0
    9dc0:	24580008 	addiu	t8,v0,8
    9dc4:	ae1802c0 	sw	t8,704(s0)
    9dc8:	ac440000 	sw	a0,0(v0)
    9dcc:	27a40058 	addiu	a0,sp,88
    9dd0:	24c60000 	addiu	a2,a2,0
    9dd4:	02002825 	move	a1,s0
    9dd8:	2407194f 	li	a3,6479
    9ddc:	0c000000 	jal	0 <func_808FCF40>
    9de0:	ac590004 	sw	t9,4(v0)
    9de4:	8fbf001c 	lw	ra,28(sp)
    9de8:	8fb00018 	lw	s0,24(sp)
    9dec:	27bd0078 	addiu	sp,sp,120
    9df0:	03e00008 	jr	ra
    9df4:	00000000 	nop
	...
