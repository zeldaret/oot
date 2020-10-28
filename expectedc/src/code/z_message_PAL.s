
build/src/code/z_message_PAL.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_801069B0>:
       0:	3c050000 	lui	a1,0x0
       4:	24a50000 	addiu	a1,a1,0
       8:	8caf0000 	lw	t7,0(a1)
       c:	240e00bd 	li	t6,189
      10:	241800b8 	li	t8,184
      14:	a5ee0f6e 	sh	t6,3950(t7)
      18:	8cb90000 	lw	t9,0(a1)
      1c:	240800b3 	li	t0,179
      20:	240a00ae 	li	t2,174
      24:	a7380f70 	sh	t8,3952(t9)
      28:	8ca90000 	lw	t1,0(a1)
      2c:	240c00a9 	li	t4,169
      30:	3c030000 	lui	v1,0x0
      34:	a5280f72 	sh	t0,3954(t1)
      38:	8cab0000 	lw	t3,0(a1)
      3c:	240e00ff 	li	t6,255
      40:	3c010000 	lui	at,0x0
      44:	a56a0f74 	sh	t2,3956(t3)
      48:	8cad0000 	lw	t5,0(a1)
      4c:	24630000 	addiu	v1,v1,0
      50:	240f0050 	li	t7,80
      54:	a5ac0f76 	sh	t4,3958(t5)
      58:	a02e0000 	sb	t6,0(at)
      5c:	a4600010 	sh	zero,16(v1)
      60:	84620010 	lh	v0,16(v1)
      64:	3c010000 	lui	at,0x0
      68:	240600ff 	li	a2,255
      6c:	a462000e 	sh	v0,14(v1)
      70:	a462000c 	sh	v0,12(v1)
      74:	a462000a 	sh	v0,10(v1)
      78:	a4620008 	sh	v0,8(v1)
      7c:	a4620006 	sh	v0,6(v1)
      80:	a4620004 	sh	v0,4(v1)
      84:	a4620002 	sh	v0,2(v1)
      88:	a4620000 	sh	v0,0(v1)
      8c:	a42f0000 	sh	t7,0(at)
      90:	3c010000 	lui	at,0x0
      94:	a4260000 	sh	a2,0(at)
      98:	3c010000 	lui	at,0x0
      9c:	24180096 	li	t8,150
      a0:	a4380000 	sh	t8,0(at)
      a4:	2404000a 	li	a0,10
      a8:	3c010000 	lui	at,0x0
      ac:	a4240000 	sh	a0,0(at)
      b0:	3c010000 	lui	at,0x0
      b4:	a4240000 	sh	a0,0(at)
      b8:	3c010000 	lui	at,0x0
      bc:	a4240000 	sh	a0,0(at)
      c0:	3c010000 	lui	at,0x0
      c4:	a4260000 	sh	a2,0(at)
      c8:	3c010000 	lui	at,0x0
      cc:	a4260000 	sh	a2,0(at)
      d0:	3c010000 	lui	at,0x0
      d4:	24190032 	li	t9,50
      d8:	a4390000 	sh	t9,0(at)
      dc:	3c010000 	lui	at,0x0
      e0:	a4240000 	sh	a0,0(at)
      e4:	3c010000 	lui	at,0x0
      e8:	a4240000 	sh	a0,0(at)
      ec:	3c010000 	lui	at,0x0
      f0:	03e00008 	jr	ra
      f4:	a4240000 	sh	a0,0(at)

000000f8 <func_80106AA8>:
      f8:	27bdffd0 	addiu	sp,sp,-48
      fc:	3c010001 	lui	at,0x1
     100:	afbf001c 	sw	ra,28(sp)
     104:	afb00018 	sw	s0,24(sp)
     108:	00811021 	addu	v0,a0,at
     10c:	904e03dc 	lbu	t6,988(v0)
     110:	00240821 	addu	at,at,a0
     114:	00802825 	move	a1,a0
     118:	25cf0001 	addiu	t7,t6,1
     11c:	a02f03dc 	sb	t7,988(at)
     120:	905803dc 	lbu	t8,988(v0)
     124:	2401002e 	li	at,46
     128:	24040001 	li	a0,1
     12c:	17010019 	bne	t8,at,194 <func_80106AA8+0x9c>
     130:	24b020d8 	addiu	s0,a1,8408
     134:	0c000000 	jal	0 <func_801069B0>
     138:	afa50030 	sw	a1,48(sp)
     13c:	0c000000 	jal	0 <func_801069B0>
     140:	00000000 	nop
     144:	8fa50030 	lw	a1,48(sp)
     148:	3c060000 	lui	a2,0x0
     14c:	24c60000 	addiu	a2,a2,0
     150:	24b020d8 	addiu	s0,a1,8408
     154:	26017fff 	addiu	at,s0,32767
     158:	ac2262b9 	sw	v0,25273(at)
     15c:	a4c00000 	sh	zero,0(a2)
     160:	34018000 	li	at,0x8000
     164:	02011821 	addu	v1,s0,at
     168:	8c6862b8 	lw	t0,25272(v1)
     16c:	84d90000 	lh	t9,0(a2)
     170:	3404a000 	li	a0,0xa000
     174:	a1190002 	sb	t9,2(t0)
     178:	0c000000 	jal	0 <func_801069B0>
     17c:	afa30024 	sw	v1,36(sp)
     180:	8fa30024 	lw	v1,36(sp)
     184:	26017fff 	addiu	at,s0,32767
     188:	946963d4 	lhu	t1,25556(v1)
     18c:	1000001b 	b	1fc <func_80106AA8+0x104>
     190:	a42963d3 	sh	t1,25555(at)
     194:	34018000 	li	at,0x8000
     198:	02011821 	addu	v1,s0,at
     19c:	906a6304 	lbu	t2,25348(v1)
     1a0:	2401002c 	li	at,44
     1a4:	24040006 	li	a0,6
     1a8:	15410014 	bne	t2,at,1fc <func_80106AA8+0x104>
     1ac:	00000000 	nop
     1b0:	0c000000 	jal	0 <func_801069B0>
     1b4:	afa30024 	sw	v1,36(sp)
     1b8:	0c000000 	jal	0 <func_801069B0>
     1bc:	00000000 	nop
     1c0:	8fa30024 	lw	v1,36(sp)
     1c4:	3c060000 	lui	a2,0x0
     1c8:	26017fff 	addiu	at,s0,32767
     1cc:	ac2262b9 	sw	v0,25273(at)
     1d0:	24c60000 	addiu	a2,a2,0
     1d4:	a4c00000 	sh	zero,0(a2)
     1d8:	84cb0000 	lh	t3,0(a2)
     1dc:	8c6c62b8 	lw	t4,25272(v1)
     1e0:	2404000e 	li	a0,14
     1e4:	24050001 	li	a1,1
     1e8:	0c000000 	jal	0 <func_801069B0>
     1ec:	a18b0002 	sb	t3,2(t4)
     1f0:	240d0002 	li	t5,2
     1f4:	26017fff 	addiu	at,s0,32767
     1f8:	a02d63e8 	sb	t5,25576(at)
     1fc:	0c000000 	jal	0 <func_801069B0>
     200:	00000000 	nop
     204:	8fbf001c 	lw	ra,28(sp)
     208:	8fb00018 	lw	s0,24(sp)
     20c:	27bd0030 	addiu	sp,sp,48
     210:	03e00008 	jr	ra
     214:	00000000 	nop

00000218 <func_80106BC8>:
     218:	27bdffd0 	addiu	sp,sp,-48
     21c:	afbf001c 	sw	ra,28(sp)
     220:	afa40030 	sw	a0,48(sp)
     224:	948f0020 	lhu	t7,32(a0)
     228:	3c01ffff 	lui	at,0xffff
     22c:	34217fff 	ori	at,at,0x7fff
     230:	01e1c027 	nor	t8,t7,at
     234:	13000008 	beqz	t8,258 <func_80106BC8+0x40>
     238:	2401bfff 	li	at,-16385
     23c:	01e1c827 	nor	t9,t7,at
     240:	13200005 	beqz	t9,258 <func_80106BC8+0x40>
     244:	01e01025 	move	v0,t7
     248:	2401fff7 	li	at,-9
     24c:	01e14027 	nor	t0,t7,at
     250:	55000012 	bnezl	t0,29c <func_80106BC8+0x84>
     254:	3c01ffff 	lui	at,0xffff
     258:	8faa0030 	lw	t2,48(sp)
     25c:	3c070000 	lui	a3,0x0
     260:	3c090000 	lui	t1,0x0
     264:	24e70000 	addiu	a3,a3,0
     268:	25290000 	addiu	t1,t1,0
     26c:	3c050000 	lui	a1,0x0
     270:	254b0014 	addiu	t3,t2,20
     274:	afab0024 	sw	t3,36(sp)
     278:	24a50000 	addiu	a1,a1,0
     27c:	afa90014 	sw	t1,20(sp)
     280:	afa70010 	sw	a3,16(sp)
     284:	24044818 	li	a0,18456
     288:	0c000000 	jal	0 <func_801069B0>
     28c:	24060004 	li	a2,4
     290:	8fac0024 	lw	t4,36(sp)
     294:	9582000c 	lhu	v0,12(t4)
     298:	3c01ffff 	lui	at,0xffff
     29c:	34217fff 	ori	at,at,0x7fff
     2a0:	00411827 	nor	v1,v0,at
     2a4:	2c630001 	sltiu	v1,v1,1
     2a8:	14600008 	bnez	v1,2cc <func_80106BC8+0xb4>
     2ac:	8fbf001c 	lw	ra,28(sp)
     2b0:	2401bfff 	li	at,-16385
     2b4:	00411827 	nor	v1,v0,at
     2b8:	2c630001 	sltiu	v1,v1,1
     2bc:	14600003 	bnez	v1,2cc <func_80106BC8+0xb4>
     2c0:	2401fff7 	li	at,-9
     2c4:	00411827 	nor	v1,v0,at
     2c8:	2c630001 	sltiu	v1,v1,1
     2cc:	306200ff 	andi	v0,v1,0xff
     2d0:	03e00008 	jr	ra
     2d4:	27bd0030 	addiu	sp,sp,48

000002d8 <func_80106C88>:
     2d8:	94830020 	lhu	v1,32(a0)
     2dc:	3c01ffff 	lui	at,0xffff
     2e0:	34217fff 	ori	at,at,0x7fff
     2e4:	00611827 	nor	v1,v1,at
     2e8:	2c630001 	sltiu	v1,v1,1
     2ec:	14600009 	bnez	v1,314 <func_80106C88+0x3c>
     2f0:	00000000 	nop
     2f4:	94820020 	lhu	v0,32(a0)
     2f8:	2401bfff 	li	at,-16385
     2fc:	00411827 	nor	v1,v0,at
     300:	2c630001 	sltiu	v1,v1,1
     304:	14600003 	bnez	v1,314 <func_80106C88+0x3c>
     308:	2401fff7 	li	at,-9
     30c:	00411827 	nor	v1,v0,at
     310:	2c630001 	sltiu	v1,v1,1
     314:	03e00008 	jr	ra
     318:	306200ff 	andi	v0,v1,0xff

0000031c <func_80106CCC>:
     31c:	27bdffe0 	addiu	sp,sp,-32
     320:	3c0f0001 	lui	t7,0x1
     324:	afbf001c 	sw	ra,28(sp)
     328:	afa40020 	sw	a0,32(sp)
     32c:	01e47821 	addu	t7,t7,a0
     330:	8def03d8 	lw	t7,984(t7)
     334:	3c070000 	lui	a3,0x0
     338:	24e70000 	addiu	a3,a3,0
     33c:	11e00010 	beqz	t7,380 <func_80106CCC+0x64>
     340:	248220d8 	addiu	v0,a0,8408
     344:	24417fff 	addiu	at,v0,32767
     348:	24180002 	li	t8,2
     34c:	24190036 	li	t9,54
     350:	3c080000 	lui	t0,0x0
     354:	a03863e8 	sb	t8,25576(at)
     358:	a0396305 	sb	t9,25349(at)
     35c:	a02063e5 	sb	zero,25573(at)
     360:	25080000 	addiu	t0,t0,0
     364:	3c050000 	lui	a1,0x0
     368:	24a50000 	addiu	a1,a1,0
     36c:	afa80014 	sw	t0,20(sp)
     370:	afa70010 	sw	a3,16(sp)
     374:	00002025 	move	a0,zero
     378:	0c000000 	jal	0 <func_801069B0>
     37c:	24060004 	li	a2,4
     380:	8fbf001c 	lw	ra,28(sp)
     384:	27bd0020 	addiu	sp,sp,32
     388:	03e00008 	jr	ra
     38c:	00000000 	nop

00000390 <func_80106D40>:
     390:	27bdffe0 	addiu	sp,sp,-32
     394:	afbf001c 	sw	ra,28(sp)
     398:	afa40020 	sw	a0,32(sp)
     39c:	afa50024 	sw	a1,36(sp)
     3a0:	808f0029 	lb	t7,41(a0)
     3a4:	3c180000 	lui	t8,0x0
     3a8:	8fac0020 	lw	t4,32(sp)
     3ac:	29e1001e 	slti	at,t7,30
     3b0:	54200021 	bnezl	at,438 <func_80106D40+0xa8>
     3b4:	81820029 	lb	v0,41(t4)
     3b8:	87180000 	lh	t8,0(t8)
     3bc:	24190001 	li	t9,1
     3c0:	3c010000 	lui	at,0x0
     3c4:	1700001b 	bnez	t8,434 <func_80106D40+0xa4>
     3c8:	248320d8 	addiu	v1,a0,8408
     3cc:	a4390000 	sh	t9,0(at)
     3d0:	34018000 	li	at,0x8000
     3d4:	00611021 	addu	v0,v1,at
     3d8:	904863e5 	lbu	t0,25573(v0)
     3dc:	24617fff 	addiu	at,v1,32767
     3e0:	3c070000 	lui	a3,0x0
     3e4:	2509ffff 	addiu	t1,t0,-1
     3e8:	a02963e6 	sb	t1,25574(at)
     3ec:	904a63e5 	lbu	t2,25573(v0)
     3f0:	24e70000 	addiu	a3,a3,0
     3f4:	24044809 	li	a0,18441
     3f8:	29410081 	slti	at,t2,129
     3fc:	14200004 	bnez	at,410 <func_80106D40+0x80>
     400:	3c050000 	lui	a1,0x0
     404:	24617fff 	addiu	at,v1,32767
     408:	10000037 	b	4e8 <func_80106D40+0x158>
     40c:	a02063e6 	sb	zero,25574(at)
     410:	3c0b0000 	lui	t3,0x0
     414:	256b0000 	addiu	t3,t3,0
     418:	afab0014 	sw	t3,20(sp)
     41c:	24a50000 	addiu	a1,a1,0
     420:	24060004 	li	a2,4
     424:	0c000000 	jal	0 <func_801069B0>
     428:	afa70010 	sw	a3,16(sp)
     42c:	1000002e 	b	4e8 <func_80106D40+0x158>
     430:	00000000 	nop
     434:	81820029 	lb	v0,41(t4)
     438:	3c0d0000 	lui	t5,0x0
     43c:	2841ffe3 	slti	at,v0,-29
     440:	10200021 	beqz	at,4c8 <func_80106D40+0x138>
     444:	00000000 	nop
     448:	85ad0000 	lh	t5,0(t5)
     44c:	240f0001 	li	t7,1
     450:	3c010000 	lui	at,0x0
     454:	15a0001c 	bnez	t5,4c8 <func_80106D40+0x138>
     458:	258320d8 	addiu	v1,t4,8408
     45c:	a42f0000 	sh	t7,0(at)
     460:	34018000 	li	at,0x8000
     464:	00611021 	addu	v0,v1,at
     468:	905863e5 	lbu	t8,25573(v0)
     46c:	24617fff 	addiu	at,v1,32767
     470:	3c070000 	lui	a3,0x0
     474:	27190001 	addiu	t9,t8,1
     478:	a03963e6 	sb	t9,25574(at)
     47c:	904863e5 	lbu	t0,25573(v0)
     480:	93ae0027 	lbu	t6,39(sp)
     484:	24e70000 	addiu	a3,a3,0
     488:	24044809 	li	a0,18441
     48c:	01c8082a 	slt	at,t6,t0
     490:	10200004 	beqz	at,4a4 <func_80106D40+0x114>
     494:	3c050000 	lui	a1,0x0
     498:	24617fff 	addiu	at,v1,32767
     49c:	10000012 	b	4e8 <func_80106D40+0x158>
     4a0:	a02e63e6 	sb	t6,25574(at)
     4a4:	3c090000 	lui	t1,0x0
     4a8:	25290000 	addiu	t1,t1,0
     4ac:	afa90014 	sw	t1,20(sp)
     4b0:	24a50000 	addiu	a1,a1,0
     4b4:	24060004 	li	a2,4
     4b8:	0c000000 	jal	0 <func_801069B0>
     4bc:	afa70010 	sw	a3,16(sp)
     4c0:	10000009 	b	4e8 <func_80106D40+0x158>
     4c4:	00000000 	nop
     4c8:	04400003 	bltz	v0,4d8 <func_80106D40+0x148>
     4cc:	00021823 	negu	v1,v0
     4d0:	10000001 	b	4d8 <func_80106D40+0x148>
     4d4:	00401825 	move	v1,v0
     4d8:	2861001e 	slti	at,v1,30
     4dc:	10200002 	beqz	at,4e8 <func_80106D40+0x158>
     4e0:	3c010000 	lui	at,0x0
     4e4:	a4200000 	sh	zero,0(at)
     4e8:	3c040000 	lui	a0,0x0
     4ec:	24840000 	addiu	a0,a0,0
     4f0:	8c8a0000 	lw	t2,0(a0)
     4f4:	8fa30020 	lw	v1,32(sp)
     4f8:	854b0b18 	lh	t3,2840(t2)
     4fc:	246320d8 	addiu	v1,v1,8408
     500:	24617fff 	addiu	at,v1,32767
     504:	a42b63d9 	sh	t3,25561(at)
     508:	93ad0027 	lbu	t5,39(sp)
     50c:	34018000 	li	at,0x8000
     510:	00611021 	addu	v0,v1,at
     514:	24010001 	li	at,1
     518:	55a1000a 	bnel	t5,at,544 <func_80106D40+0x1b4>
     51c:	904963e5 	lbu	t1,25573(v0)
     520:	904c63e5 	lbu	t4,25573(v0)
     524:	8c8f0000 	lw	t7,0(a0)
     528:	24617fff 	addiu	at,v1,32767
     52c:	000cc040 	sll	t8,t4,0x1
     530:	01f8c821 	addu	t9,t7,t8
     534:	87280b1c 	lh	t0,2844(t9)
     538:	10000008 	b	55c <func_80106D40+0x1cc>
     53c:	a42863db 	sh	t0,25563(at)
     540:	904963e5 	lbu	t1,25573(v0)
     544:	8c8e0000 	lw	t6,0(a0)
     548:	24617fff 	addiu	at,v1,32767
     54c:	00095040 	sll	t2,t1,0x1
     550:	01ca5821 	addu	t3,t6,t2
     554:	856d0b1a 	lh	t5,2842(t3)
     558:	a42d63db 	sh	t5,25563(at)
     55c:	8fbf001c 	lw	ra,28(sp)
     560:	27bd0020 	addiu	sp,sp,32
     564:	03e00008 	jr	ra
     568:	00000000 	nop

0000056c <func_80106F1C>:
     56c:	afa50004 	sw	a1,4(sp)
     570:	afa60008 	sw	a2,8(sp)
     574:	3c010001 	lui	at,0x1
     578:	8cc20000 	lw	v0,0(a2)
     57c:	00811821 	addu	v1,a0,at
     580:	846704b0 	lh	a3,1200(v1)
     584:	846804b2 	lh	t0,1202(v1)
     588:	00401825 	move	v1,v0
     58c:	3c06e700 	lui	a2,0xe700
     590:	3c050000 	lui	a1,0x0
     594:	24a50000 	addiu	a1,a1,0
     598:	ac660000 	sw	a2,0(v1)
     59c:	ac600004 	sw	zero,4(v1)
     5a0:	8ca30000 	lw	v1,0(a1)
     5a4:	3c0142c8 	lui	at,0x42c8
     5a8:	44810000 	mtc1	at,$f0
     5ac:	846f0b06 	lh	t7,2822(v1)
     5b0:	3c014180 	lui	at,0x4180
     5b4:	44815000 	mtc1	at,$f10
     5b8:	448f2000 	mtc1	t7,$f4
     5bc:	3c090000 	lui	t1,0x0
     5c0:	25290000 	addiu	t1,t1,0
     5c4:	468021a0 	cvt.s.w	$f6,$f4
     5c8:	3c014480 	lui	at,0x4480
     5cc:	44812000 	mtc1	at,$f4
     5d0:	3c0a0000 	lui	t2,0x0
     5d4:	254a0000 	addiu	t2,t2,0
     5d8:	24420008 	addiu	v0,v0,8
     5dc:	46003203 	div.s	$f8,$f6,$f0
     5e0:	3c18fd90 	lui	t8,0xfd90
     5e4:	3c0e0708 	lui	t6,0x708
     5e8:	35ce0200 	ori	t6,t6,0x200
     5ec:	3401a0d8 	li	at,0xa0d8
     5f0:	460a4402 	mul.s	$f16,$f8,$f10
     5f4:	4600848d 	trunc.w.s	$f18,$f16
     5f8:	44199000 	mfc1	t9,$f18
     5fc:	00000000 	nop
     600:	ad390000 	sw	t9,0(t1)
     604:	846d0b06 	lh	t5,2822(v1)
     608:	00401825 	move	v1,v0
     60c:	24420008 	addiu	v0,v0,8
     610:	448d3000 	mtc1	t5,$f6
     614:	3c0df590 	lui	t5,0xf590
     618:	46803220 	cvt.s.w	$f8,$f6
     61c:	46004283 	div.s	$f10,$f8,$f0
     620:	460a2403 	div.s	$f16,$f4,$f10
     624:	4600848d 	trunc.w.s	$f18,$f16
     628:	440f9000 	mfc1	t7,$f18
     62c:	00000000 	nop
     630:	ad4f0000 	sw	t7,0(t2)
     634:	ac780000 	sw	t8,0(v1)
     638:	8fb90004 	lw	t9,4(sp)
     63c:	3c0fe600 	lui	t7,0xe600
     640:	3c18f300 	lui	t8,0xf300
     644:	ac790004 	sw	t9,4(v1)
     648:	00401825 	move	v1,v0
     64c:	ac6d0000 	sw	t5,0(v1)
     650:	ac6e0004 	sw	t6,4(v1)
     654:	24420008 	addiu	v0,v0,8
     658:	00401825 	move	v1,v0
     65c:	ac6f0000 	sw	t7,0(v1)
     660:	ac600004 	sw	zero,4(v1)
     664:	24420008 	addiu	v0,v0,8
     668:	00401825 	move	v1,v0
     66c:	3c190703 	lui	t9,0x703
     670:	3739f800 	ori	t9,t9,0xf800
     674:	ac790004 	sw	t9,4(v1)
     678:	ac780000 	sw	t8,0(v1)
     67c:	24420008 	addiu	v0,v0,8
     680:	00401825 	move	v1,v0
     684:	ac660000 	sw	a2,0(v1)
     688:	ac600004 	sw	zero,4(v1)
     68c:	24420008 	addiu	v0,v0,8
     690:	00401825 	move	v1,v0
     694:	3c0e0008 	lui	t6,0x8
     698:	3c0df580 	lui	t5,0xf580
     69c:	35ad0200 	ori	t5,t5,0x200
     6a0:	35ce0200 	ori	t6,t6,0x200
     6a4:	ac6e0004 	sw	t6,4(v1)
     6a8:	ac6d0000 	sw	t5,0(v1)
     6ac:	24420008 	addiu	v0,v0,8
     6b0:	00401825 	move	v1,v0
     6b4:	3c180003 	lui	t8,0x3
     6b8:	3718c03c 	ori	t8,t8,0xc03c
     6bc:	3c0ff200 	lui	t7,0xf200
     6c0:	ac6f0000 	sw	t7,0(v1)
     6c4:	ac780004 	sw	t8,4(v1)
     6c8:	00811821 	addu	v1,a0,at
     6cc:	907962fd 	lbu	t9,25341(v1)
     6d0:	24420008 	addiu	v0,v0,8
     6d4:	24010005 	li	at,5
     6d8:	13210032 	beq	t9,at,7a4 <func_80106F1C+0x238>
     6dc:	00402025 	move	a0,v0
     6e0:	3c0dfa00 	lui	t5,0xfa00
     6e4:	ac8d0000 	sw	t5,0(a0)
     6e8:	846e63e2 	lh	t6,25570(v1)
     6ec:	3c01e400 	lui	at,0xe400
     6f0:	24420008 	addiu	v0,v0,8
     6f4:	31cf00ff 	andi	t7,t6,0xff
     6f8:	ac8f0004 	sw	t7,4(a0)
     6fc:	8cb80000 	lw	t8,0(a1)
     700:	8d2c0000 	lw	t4,0(t1)
     704:	00402025 	move	a0,v0
     708:	870b0b0c 	lh	t3,2828(t8)
     70c:	24420008 	addiu	v0,v0,8
     710:	0168c821 	addu	t9,t3,t0
     714:	032c6821 	addu	t5,t9,t4
     718:	000d7080 	sll	t6,t5,0x2
     71c:	31cf0fff 	andi	t7,t6,0xfff
     720:	00ebc821 	addu	t9,a3,t3
     724:	032c6821 	addu	t5,t9,t4
     728:	000d7080 	sll	t6,t5,0x2
     72c:	01e1c025 	or	t8,t7,at
     730:	31cf0fff 	andi	t7,t6,0xfff
     734:	000fcb00 	sll	t9,t7,0xc
     738:	03196825 	or	t5,t8,t9
     73c:	ac8d0000 	sw	t5,0(a0)
     740:	8cae0000 	lw	t6,0(a1)
     744:	85cb0b0c 	lh	t3,2828(t6)
     748:	01687821 	addu	t7,t3,t0
     74c:	000fc080 	sll	t8,t7,0x2
     750:	00eb6821 	addu	t5,a3,t3
     754:	000d7080 	sll	t6,t5,0x2
     758:	31cf0fff 	andi	t7,t6,0xfff
     75c:	33190fff 	andi	t9,t8,0xfff
     760:	000fc300 	sll	t8,t7,0xc
     764:	03386825 	or	t5,t9,t8
     768:	ac8d0004 	sw	t5,4(a0)
     76c:	00402025 	move	a0,v0
     770:	3c0ee100 	lui	t6,0xe100
     774:	ac8e0000 	sw	t6,0(a0)
     778:	ac800004 	sw	zero,4(a0)
     77c:	24420008 	addiu	v0,v0,8
     780:	00402025 	move	a0,v0
     784:	3c0ff100 	lui	t7,0xf100
     788:	ac8f0000 	sw	t7,0(a0)
     78c:	8d450000 	lw	a1,0(t2)
     790:	24420008 	addiu	v0,v0,8
     794:	30a5ffff 	andi	a1,a1,0xffff
     798:	0005cc00 	sll	t9,a1,0x10
     79c:	0325c025 	or	t8,t9,a1
     7a0:	ac980004 	sw	t8,4(a0)
     7a4:	00402025 	move	a0,v0
     7a8:	ac860000 	sw	a2,0(a0)
     7ac:	ac800004 	sw	zero,4(a0)
     7b0:	24420008 	addiu	v0,v0,8
     7b4:	00402025 	move	a0,v0
     7b8:	3c0dfa00 	lui	t5,0xfa00
     7bc:	ac8d0000 	sw	t5,0(a0)
     7c0:	847863de 	lh	t8,25566(v1)
     7c4:	846f63dc 	lh	t7,25564(v1)
     7c8:	3c01e400 	lui	at,0xe400
     7cc:	330d00ff 	andi	t5,t8,0xff
     7d0:	847863e0 	lh	t8,25568(v1)
     7d4:	000d7400 	sll	t6,t5,0x10
     7d8:	000fce00 	sll	t9,t7,0x18
     7dc:	330d00ff 	andi	t5,t8,0xff
     7e0:	847863e2 	lh	t8,25570(v1)
     7e4:	032e7825 	or	t7,t9,t6
     7e8:	000dca00 	sll	t9,t5,0x8
     7ec:	01f97025 	or	t6,t7,t9
     7f0:	330d00ff 	andi	t5,t8,0xff
     7f4:	01cd7825 	or	t7,t6,t5
     7f8:	ac8f0004 	sw	t7,4(a0)
     7fc:	8d2c0000 	lw	t4,0(t1)
     800:	24420008 	addiu	v0,v0,8
     804:	00401825 	move	v1,v0
     808:	00ecc821 	addu	t9,a3,t4
     80c:	0019c080 	sll	t8,t9,0x2
     810:	330e0fff 	andi	t6,t8,0xfff
     814:	000e6b00 	sll	t5,t6,0xc
     818:	010cc821 	addu	t9,t0,t4
     81c:	0019c080 	sll	t8,t9,0x2
     820:	330e0fff 	andi	t6,t8,0xfff
     824:	01a17825 	or	t7,t5,at
     828:	01ee6825 	or	t5,t7,t6
     82c:	0007c880 	sll	t9,a3,0x2
     830:	33380fff 	andi	t8,t9,0xfff
     834:	ac6d0000 	sw	t5,0(v1)
     838:	00087080 	sll	t6,t0,0x2
     83c:	31cd0fff 	andi	t5,t6,0xfff
     840:	00187b00 	sll	t7,t8,0xc
     844:	01edc825 	or	t9,t7,t5
     848:	ac790004 	sw	t9,4(v1)
     84c:	24420008 	addiu	v0,v0,8
     850:	00401825 	move	v1,v0
     854:	3c18e100 	lui	t8,0xe100
     858:	ac780000 	sw	t8,0(v1)
     85c:	ac600004 	sw	zero,4(v1)
     860:	24420008 	addiu	v0,v0,8
     864:	00401825 	move	v1,v0
     868:	3c0ef100 	lui	t6,0xf100
     86c:	ac6e0000 	sw	t6,0(v1)
     870:	8d450000 	lw	a1,0(t2)
     874:	24420008 	addiu	v0,v0,8
     878:	30a5ffff 	andi	a1,a1,0xffff
     87c:	00057c00 	sll	t7,a1,0x10
     880:	01e56825 	or	t5,t7,a1
     884:	ac6d0004 	sw	t5,4(v1)
     888:	8fb90008 	lw	t9,8(sp)
     88c:	03e00008 	jr	ra
     890:	af220000 	sw	v0,0(t9)

00000894 <func_80107244>:
     894:	3c070000 	lui	a3,0x0
     898:	24e70000 	addiu	a3,a3,0
     89c:	8ce50000 	lw	a1,0(a3)
     8a0:	34018000 	li	at,0x8000
     8a4:	00811021 	addu	v0,a0,at
     8a8:	904363e7 	lbu	v1,25575(v0)
     8ac:	84ae0b28 	lh	t6,2856(a1)
     8b0:	84af0b2a 	lh	t7,2858(a1)
     8b4:	3c010000 	lui	at,0x0
     8b8:	448e2000 	mtc1	t6,$f4
     8bc:	00031880 	sll	v1,v1,0x2
     8c0:	00230821 	addu	at,at,v1
     8c4:	c4220000 	lwc1	$f2,0(at)
     8c8:	468021a0 	cvt.s.w	$f6,$f4
     8cc:	448f4000 	mtc1	t7,$f8
     8d0:	84b90b2e 	lh	t9,2862(a1)
     8d4:	3c010000 	lui	at,0x0
     8d8:	00230821 	addu	at,at,v1
     8dc:	46021300 	add.s	$f12,$f2,$f2
     8e0:	c4300000 	lwc1	$f16,0(at)
     8e4:	84b80b2c 	lh	t8,2860(a1)
     8e8:	468042a0 	cvt.s.w	$f10,$f8
     8ec:	46066002 	mul.s	$f0,$f12,$f6
     8f0:	44994000 	mtc1	t9,$f8
     8f4:	44982000 	mtc1	t8,$f4
     8f8:	27bdfff0 	addiu	sp,sp,-16
     8fc:	3c013f00 	lui	at,0x3f00
     900:	460a8382 	mul.s	$f14,$f16,$f10
     904:	468042a0 	cvt.s.w	$f10,$f8
     908:	468021a0 	cvt.s.w	$f6,$f4
     90c:	46105103 	div.s	$f4,$f10,$f16
     910:	460c3483 	div.s	$f18,$f6,$f12
     914:	e7a40000 	swc1	$f4,0(sp)
     918:	84a60b26 	lh	a2,2854(a1)
     91c:	44812000 	mtc1	at,$f4
     920:	44863000 	mtc1	a2,$f6
     924:	00000000 	nop
     928:	46803220 	cvt.s.w	$f8,$f6
     92c:	46088282 	mul.s	$f10,$f16,$f8
     930:	46045180 	add.s	$f6,$f10,$f4
     934:	4600320d 	trunc.w.s	$f8,$f6
     938:	44094000 	mfc1	t1,$f8
     93c:	00000000 	nop
     940:	00095400 	sll	t2,t1,0x10
     944:	000a5c03 	sra	t3,t2,0x10
     948:	00cb6023 	subu	t4,a2,t3
     94c:	05810003 	bgez	t4,95c <func_80107244+0xc8>
     950:	000c6843 	sra	t5,t4,0x1
     954:	25810001 	addiu	at,t4,1
     958:	00016843 	sra	t5,at,0x1
     95c:	01a67021 	addu	t6,t5,a2
     960:	a4ae0f16 	sh	t6,3862(a1)
     964:	84586404 	lh	t8,25604(v0)
     968:	844f6406 	lh	t7,25606(v0)
     96c:	07010003 	bgez	t8,97c <func_80107244+0xe8>
     970:	0018c8c3 	sra	t9,t8,0x3
     974:	27010007 	addiu	at,t8,7
     978:	0001c8c3 	sra	t9,at,0x3
     97c:	24817fff 	addiu	at,a0,32767
     980:	01f94021 	addu	t0,t7,t9
     984:	a4286407 	sh	t0,25607(at)
     988:	904963e7 	lbu	t1,25575(v0)
     98c:	252a0001 	addiu	t2,t1,1
     990:	a02a63e8 	sb	t2,25576(at)
     994:	904b63e7 	lbu	t3,25575(v0)
     998:	24010008 	li	at,8
     99c:	5561000d 	bnel	t3,at,9d4 <func_80107244+0x140>
     9a0:	3c013f00 	lui	at,0x3f00
     9a4:	8ce50000 	lw	a1,0(a3)
     9a8:	240e0003 	li	t6,3
     9ac:	24817fff 	addiu	at,a0,32767
     9b0:	84ac0b24 	lh	t4,2852(a1)
     9b4:	a4ac0f14 	sh	t4,3860(a1)
     9b8:	8ce50000 	lw	a1,0(a3)
     9bc:	84ad0b26 	lh	t5,2854(a1)
     9c0:	a4ad0f16 	sh	t5,3862(a1)
     9c4:	a02e6305 	sb	t6,25349(at)
     9c8:	84586404 	lh	t8,25604(v0)
     9cc:	a4386407 	sh	t8,25607(at)
     9d0:	3c013f00 	lui	at,0x3f00
     9d4:	44815000 	mtc1	at,$f10
     9d8:	8ceb0000 	lw	t3,0(a3)
     9dc:	460a0100 	add.s	$f4,$f0,$f10
     9e0:	4600218d 	trunc.w.s	$f6,$f4
     9e4:	44193000 	mfc1	t9,$f6
     9e8:	00000000 	nop
     9ec:	00194400 	sll	t0,t9,0x10
     9f0:	00084c03 	sra	t1,t0,0x10
     9f4:	05210003 	bgez	t1,a04 <func_80107244+0x170>
     9f8:	00095043 	sra	t2,t1,0x1
     9fc:	25210001 	addiu	at,t1,1
     a00:	00015043 	sra	t2,at,0x1
     a04:	3c013f00 	lui	at,0x3f00
     a08:	44814000 	mtc1	at,$f8
     a0c:	44813000 	mtc1	at,$f6
     a10:	a56a04c0 	sh	t2,1216(t3)
     a14:	46087280 	add.s	$f10,$f14,$f8
     a18:	8cee0000 	lw	t6,0(a3)
     a1c:	46069200 	add.s	$f8,$f18,$f6
     a20:	44813000 	mtc1	at,$f6
     a24:	4600510d 	trunc.w.s	$f4,$f10
     a28:	4600428d 	trunc.w.s	$f10,$f8
     a2c:	440d2000 	mfc1	t5,$f4
     a30:	00000000 	nop
     a34:	a5cd04c2 	sh	t5,1218(t6)
     a38:	8cf90000 	lw	t9,0(a3)
     a3c:	440f5000 	mfc1	t7,$f10
     a40:	00000000 	nop
     a44:	a72f04b4 	sh	t7,1204(t9)
     a48:	c7a40000 	lwc1	$f4,0(sp)
     a4c:	8cea0000 	lw	t2,0(a3)
     a50:	46062200 	add.s	$f8,$f4,$f6
     a54:	4600428d 	trunc.w.s	$f10,$f8
     a58:	44095000 	mfc1	t1,$f10
     a5c:	00000000 	nop
     a60:	a54904b6 	sh	t1,1206(t2)
     a64:	8ce50000 	lw	a1,0(a3)
     a68:	84ab0b24 	lh	t3,2852(a1)
     a6c:	84ac0b28 	lh	t4,2856(a1)
     a70:	84ae04c0 	lh	t6,1216(a1)
     a74:	27bd0010 	addiu	sp,sp,16
     a78:	016c6821 	addu	t5,t3,t4
     a7c:	05c10003 	bgez	t6,a8c <func_80107244+0x1f8>
     a80:	000ec043 	sra	t8,t6,0x1
     a84:	25c10001 	addiu	at,t6,1
     a88:	0001c043 	sra	t8,at,0x1
     a8c:	01b87823 	subu	t7,t5,t8
     a90:	03e00008 	jr	ra
     a94:	a4af0f14 	sh	t7,3860(a1)

00000a98 <func_80107448>:
     a98:	3c020000 	lui	v0,0x0
     a9c:	90421409 	lbu	v0,5129(v0)
     aa0:	27bdffc0 	addiu	sp,sp,-64
     aa4:	3c030000 	lui	v1,0x0
     aa8:	afbf0024 	sw	ra,36(sp)
     aac:	afa40040 	sw	a0,64(sp)
     ab0:	afa50044 	sw	a1,68(sp)
     ab4:	30a6ffff 	andi	a2,a1,0xffff
     ab8:	14400021 	bnez	v0,b40 <func_80107448+0xa8>
     abc:	8c630000 	lw	v1,0(v1)
     ac0:	94620000 	lhu	v0,0(v1)
     ac4:	3404ffff 	li	a0,0xffff
     ac8:	8c6b0004 	lw	t3,4(v1)
     acc:	10820042 	beq	a0,v0,bd8 <func_80107448+0x140>
     ad0:	00c02825 	move	a1,a2
     ad4:	54a20015 	bnel	a1,v0,b2c <func_80107448+0x94>
     ad8:	94620008 	lhu	v0,8(v1)
     adc:	8fa20040 	lw	v0,64(sp)
     ae0:	906e0002 	lbu	t6,2(v1)
     ae4:	8c690004 	lw	t1,4(v1)
     ae8:	3c040000 	lui	a0,0x0
     aec:	a04e2208 	sb	t6,8712(v0)
     af0:	8c6a000c 	lw	t2,12(v1)
     af4:	012b3023 	subu	a2,t1,t3
     af8:	ac462200 	sw	a2,8704(v0)
     afc:	01493823 	subu	a3,t2,t1
     b00:	ac472204 	sw	a3,8708(v0)
     b04:	24630008 	addiu	v1,v1,8
     b08:	afab0014 	sw	t3,20(sp)
     b0c:	24840000 	addiu	a0,a0,0
     b10:	24422200 	addiu	v0,v0,8704
     b14:	afa90010 	sw	t1,16(sp)
     b18:	0c000000 	jal	0 <func_801069B0>
     b1c:	afaa0018 	sw	t2,24(sp)
     b20:	10000052 	b	c6c <func_80107448+0x1d4>
     b24:	8fbf0024 	lw	ra,36(sp)
     b28:	94620008 	lhu	v0,8(v1)
     b2c:	24630008 	addiu	v1,v1,8
     b30:	1482ffe8 	bne	a0,v0,ad4 <func_80107448+0x3c>
     b34:	00000000 	nop
     b38:	10000027 	b	bd8 <func_80107448+0x140>
     b3c:	00000000 	nop
     b40:	24010001 	li	at,1
     b44:	14410004 	bne	v0,at,b58 <func_80107448+0xc0>
     b48:	3c080000 	lui	t0,0x0
     b4c:	3c080000 	lui	t0,0x0
     b50:	10000002 	b	b5c <func_80107448+0xc4>
     b54:	8d080000 	lw	t0,0(t0)
     b58:	8d080000 	lw	t0,0(t0)
     b5c:	94620000 	lhu	v0,0(v1)
     b60:	3404ffff 	li	a0,0xffff
     b64:	8c6b0004 	lw	t3,4(v1)
     b68:	1082001b 	beq	a0,v0,bd8 <func_80107448+0x140>
     b6c:	00c02825 	move	a1,a2
     b70:	54a20015 	bnel	a1,v0,bc8 <func_80107448+0x130>
     b74:	94620008 	lhu	v0,8(v1)
     b78:	8fa20040 	lw	v0,64(sp)
     b7c:	906f0002 	lbu	t7,2(v1)
     b80:	8d090000 	lw	t1,0(t0)
     b84:	3c040000 	lui	a0,0x0
     b88:	a04f2208 	sb	t7,8712(v0)
     b8c:	8d0a0004 	lw	t2,4(t0)
     b90:	012b3023 	subu	a2,t1,t3
     b94:	ac462200 	sw	a2,8704(v0)
     b98:	01493823 	subu	a3,t2,t1
     b9c:	ac472204 	sw	a3,8708(v0)
     ba0:	25080004 	addiu	t0,t0,4
     ba4:	afab0014 	sw	t3,20(sp)
     ba8:	24840000 	addiu	a0,a0,0
     bac:	24422200 	addiu	v0,v0,8704
     bb0:	afa90010 	sw	t1,16(sp)
     bb4:	0c000000 	jal	0 <func_801069B0>
     bb8:	afaa0018 	sw	t2,24(sp)
     bbc:	1000002b 	b	c6c <func_80107448+0x1d4>
     bc0:	8fbf0024 	lw	ra,36(sp)
     bc4:	94620008 	lhu	v0,8(v1)
     bc8:	24630008 	addiu	v1,v1,8
     bcc:	25080004 	addiu	t0,t0,4
     bd0:	1482ffe7 	bne	a0,v0,b70 <func_80107448+0xd8>
     bd4:	00000000 	nop
     bd8:	3c040000 	lui	a0,0x0
     bdc:	24840000 	addiu	a0,a0,0
     be0:	00c02825 	move	a1,a2
     be4:	0c000000 	jal	0 <func_801069B0>
     be8:	afab0028 	sw	t3,40(sp)
     bec:	3c020000 	lui	v0,0x0
     bf0:	90421409 	lbu	v0,5129(v0)
     bf4:	3c030000 	lui	v1,0x0
     bf8:	8fa40040 	lw	a0,64(sp)
     bfc:	8fab0028 	lw	t3,40(sp)
     c00:	14400008 	bnez	v0,c24 <func_80107448+0x18c>
     c04:	8c630000 	lw	v1,0(v1)
     c08:	90780002 	lbu	t8,2(v1)
     c0c:	8c690004 	lw	t1,4(v1)
     c10:	24822200 	addiu	v0,a0,8704
     c14:	a0580008 	sb	t8,8(v0)
     c18:	24630008 	addiu	v1,v1,8
     c1c:	1000000e 	b	c58 <func_80107448+0x1c0>
     c20:	8c6a0004 	lw	t2,4(v1)
     c24:	24010001 	li	at,1
     c28:	14410004 	bne	v0,at,c3c <func_80107448+0x1a4>
     c2c:	3c080000 	lui	t0,0x0
     c30:	3c080000 	lui	t0,0x0
     c34:	10000002 	b	c40 <func_80107448+0x1a8>
     c38:	8d080000 	lw	t0,0(t0)
     c3c:	8d080000 	lw	t0,0(t0)
     c40:	90790002 	lbu	t9,2(v1)
     c44:	8d090000 	lw	t1,0(t0)
     c48:	24822200 	addiu	v0,a0,8704
     c4c:	a0590008 	sb	t9,8(v0)
     c50:	25080004 	addiu	t0,t0,4
     c54:	8d0a0000 	lw	t2,0(t0)
     c58:	012b6023 	subu	t4,t1,t3
     c5c:	01496823 	subu	t5,t2,t1
     c60:	ac4c0000 	sw	t4,0(v0)
     c64:	ac4d0004 	sw	t5,4(v0)
     c68:	8fbf0024 	lw	ra,36(sp)
     c6c:	27bd0040 	addiu	sp,sp,64
     c70:	03e00008 	jr	ra
     c74:	00000000 	nop

00000c78 <func_80107628>:
     c78:	27bdffd8 	addiu	sp,sp,-40
     c7c:	3c020000 	lui	v0,0x0
     c80:	8c420000 	lw	v0,0(v0)
     c84:	afbf0024 	sw	ra,36(sp)
     c88:	afa40028 	sw	a0,40(sp)
     c8c:	afa5002c 	sw	a1,44(sp)
     c90:	94430000 	lhu	v1,0(v0)
     c94:	3406ffff 	li	a2,0xffff
     c98:	30a7ffff 	andi	a3,a1,0xffff
     c9c:	10c3001b 	beq	a2,v1,d0c <func_80107628+0x94>
     ca0:	8c4a0004 	lw	t2,4(v0)
     ca4:	00e02825 	move	a1,a3
     ca8:	54a30015 	bnel	a1,v1,d00 <func_80107628+0x88>
     cac:	94430008 	lhu	v1,8(v0)
     cb0:	8fa30028 	lw	v1,40(sp)
     cb4:	904e0002 	lbu	t6,2(v0)
     cb8:	8c480004 	lw	t0,4(v0)
     cbc:	3c040000 	lui	a0,0x0
     cc0:	a06e2208 	sb	t6,8712(v1)
     cc4:	8c49000c 	lw	t1,12(v0)
     cc8:	010a3023 	subu	a2,t0,t2
     ccc:	ac662200 	sw	a2,8704(v1)
     cd0:	01283823 	subu	a3,t1,t0
     cd4:	ac672204 	sw	a3,8708(v1)
     cd8:	24420008 	addiu	v0,v0,8
     cdc:	afaa0014 	sw	t2,20(sp)
     ce0:	24840000 	addiu	a0,a0,0
     ce4:	24632200 	addiu	v1,v1,8704
     ce8:	afa80010 	sw	t0,16(sp)
     cec:	0c000000 	jal	0 <func_801069B0>
     cf0:	afa90018 	sw	t1,24(sp)
     cf4:	10000006 	b	d10 <func_80107628+0x98>
     cf8:	8fbf0024 	lw	ra,36(sp)
     cfc:	94430008 	lhu	v1,8(v0)
     d00:	24420008 	addiu	v0,v0,8
     d04:	14c3ffe8 	bne	a2,v1,ca8 <func_80107628+0x30>
     d08:	00000000 	nop
     d0c:	8fbf0024 	lw	ra,36(sp)
     d10:	27bd0028 	addiu	sp,sp,40
     d14:	03e00008 	jr	ra
     d18:	00000000 	nop

00000d1c <func_801076CC>:
     d1c:	afa50004 	sw	a1,4(sp)
     d20:	30a5ffff 	andi	a1,a1,0xffff
     d24:	2ca10008 	sltiu	at,a1,8
     d28:	10200096 	beqz	at,f84 <L80107934>
     d2c:	00057080 	sll	t6,a1,0x2
     d30:	3c010000 	lui	at,0x0
     d34:	002e0821 	addu	at,at,t6
     d38:	8c2e0000 	lw	t6,0(at)
     d3c:	01c00008 	jr	t6
     d40:	00000000 	nop

00000d44 <L801076F4>:
     d44:	248f7fff 	addiu	t7,a0,32767
     d48:	91ef62fe 	lbu	t7,25342(t7)
     d4c:	24010001 	li	at,1
     d50:	2402003c 	li	v0,60
     d54:	15e10008 	bne	t7,at,d78 <L801076F4+0x34>
     d58:	240500ff 	li	a1,255
     d5c:	24817fff 	addiu	at,a0,32767
     d60:	240500ff 	li	a1,255
     d64:	24180078 	li	t8,120
     d68:	a42563dd 	sh	a1,25565(at)
     d6c:	a43863df 	sh	t8,25567(at)
     d70:	03e00008 	jr	ra
     d74:	a42063e1 	sh	zero,25569(at)
     d78:	24817fff 	addiu	at,a0,32767
     d7c:	a42563dd 	sh	a1,25565(at)
     d80:	a42263df 	sh	v0,25567(at)
     d84:	03e00008 	jr	ra
     d88:	a42263e1 	sh	v0,25569(at)

00000d8c <L8010773C>:
     d8c:	24997fff 	addiu	t9,a0,32767
     d90:	933962fe 	lbu	t9,25342(t9)
     d94:	24010001 	li	at,1
     d98:	3c020000 	lui	v0,0x0
     d9c:	1721000e 	bne	t9,at,dd8 <L8010773C+0x4c>
     da0:	24420000 	addiu	v0,v0,0
     da4:	3c020000 	lui	v0,0x0
     da8:	24420000 	addiu	v0,v0,0
     dac:	8c480000 	lw	t0,0(v0)
     db0:	24817fff 	addiu	at,a0,32767
     db4:	85090f56 	lh	t1,3926(t0)
     db8:	a42963dd 	sh	t1,25565(at)
     dbc:	8c4a0000 	lw	t2,0(v0)
     dc0:	854b0f58 	lh	t3,3928(t2)
     dc4:	a42b63df 	sh	t3,25567(at)
     dc8:	8c4c0000 	lw	t4,0(v0)
     dcc:	858d0f5a 	lh	t5,3930(t4)
     dd0:	03e00008 	jr	ra
     dd4:	a42d63e1 	sh	t5,25569(at)
     dd8:	8c4e0000 	lw	t6,0(v0)
     ddc:	24817fff 	addiu	at,a0,32767
     de0:	85cf0f5c 	lh	t7,3932(t6)
     de4:	a42f63dd 	sh	t7,25565(at)
     de8:	8c580000 	lw	t8,0(v0)
     dec:	87190f5e 	lh	t9,3934(t8)
     df0:	a43963df 	sh	t9,25567(at)
     df4:	8c480000 	lw	t0,0(v0)
     df8:	85090f60 	lh	t1,3936(t0)
     dfc:	03e00008 	jr	ra
     e00:	a42963e1 	sh	t1,25569(at)

00000e04 <L801077B4>:
     e04:	248a7fff 	addiu	t2,a0,32767
     e08:	914a62fe 	lbu	t2,25342(t2)
     e0c:	24010001 	li	at,1
     e10:	240500ff 	li	a1,255
     e14:	15410009 	bne	t2,at,e3c <L801077B4+0x38>
     e18:	240d0050 	li	t5,80
     e1c:	24817fff 	addiu	at,a0,32767
     e20:	240500ff 	li	a1,255
     e24:	240b0050 	li	t3,80
     e28:	240c006e 	li	t4,110
     e2c:	a42b63dd 	sh	t3,25565(at)
     e30:	a42c63df 	sh	t4,25567(at)
     e34:	03e00008 	jr	ra
     e38:	a42563e1 	sh	a1,25569(at)
     e3c:	24817fff 	addiu	at,a0,32767
     e40:	240e005a 	li	t6,90
     e44:	a42d63dd 	sh	t5,25565(at)
     e48:	a42e63df 	sh	t6,25567(at)
     e4c:	03e00008 	jr	ra
     e50:	a42563e1 	sh	a1,25569(at)

00000e54 <L80107804>:
     e54:	24827fff 	addiu	v0,a0,32767
     e58:	904262fe 	lbu	v0,25342(v0)
     e5c:	24010001 	li	at,1
     e60:	240500ff 	li	a1,255
     e64:	14410007 	bne	v0,at,e84 <L80107804+0x30>
     e68:	240f005a 	li	t7,90
     e6c:	24817fff 	addiu	at,a0,32767
     e70:	241800b4 	li	t8,180
     e74:	a42f63dd 	sh	t7,25565(at)
     e78:	a43863df 	sh	t8,25567(at)
     e7c:	03e00008 	jr	ra
     e80:	a42563e1 	sh	a1,25569(at)
     e84:	24010005 	li	at,5
     e88:	14410009 	bne	v0,at,eb0 <L80107804+0x5c>
     e8c:	240500ff 	li	a1,255
     e90:	24817fff 	addiu	at,a0,32767
     e94:	24190050 	li	t9,80
     e98:	24080096 	li	t0,150
     e9c:	240900b4 	li	t1,180
     ea0:	a43963dd 	sh	t9,25565(at)
     ea4:	a42863df 	sh	t0,25567(at)
     ea8:	03e00008 	jr	ra
     eac:	a42963e1 	sh	t1,25569(at)
     eb0:	24817fff 	addiu	at,a0,32767
     eb4:	240a0064 	li	t2,100
     eb8:	240b00b4 	li	t3,180
     ebc:	a42a63dd 	sh	t2,25565(at)
     ec0:	a42b63df 	sh	t3,25567(at)
     ec4:	03e00008 	jr	ra
     ec8:	a42563e1 	sh	a1,25569(at)

00000ecc <L8010787C>:
     ecc:	248c7fff 	addiu	t4,a0,32767
     ed0:	918c62fe 	lbu	t4,25342(t4)
     ed4:	24010001 	li	at,1
     ed8:	240500ff 	li	a1,255
     edc:	15810009 	bne	t4,at,f04 <L8010787C+0x38>
     ee0:	240f0096 	li	t7,150
     ee4:	24817fff 	addiu	at,a0,32767
     ee8:	240500ff 	li	a1,255
     eec:	240d00d2 	li	t5,210
     ef0:	240e0064 	li	t6,100
     ef4:	a42d63dd 	sh	t5,25565(at)
     ef8:	a42e63df 	sh	t6,25567(at)
     efc:	03e00008 	jr	ra
     f00:	a42563e1 	sh	a1,25569(at)
     f04:	24817fff 	addiu	at,a0,32767
     f08:	241800b4 	li	t8,180
     f0c:	a42563dd 	sh	a1,25565(at)
     f10:	a42f63df 	sh	t7,25567(at)
     f14:	03e00008 	jr	ra
     f18:	a43863e1 	sh	t8,25569(at)

00000f1c <L801078CC>:
     f1c:	24997fff 	addiu	t9,a0,32767
     f20:	933962fe 	lbu	t9,25342(t9)
     f24:	24010001 	li	at,1
     f28:	240500ff 	li	a1,255
     f2c:	17210008 	bne	t9,at,f50 <L801078CC+0x34>
     f30:	240900e1 	li	t1,225
     f34:	24817fff 	addiu	at,a0,32767
     f38:	240500ff 	li	a1,255
     f3c:	2408001e 	li	t0,30
     f40:	a42563dd 	sh	a1,25565(at)
     f44:	a42563df 	sh	a1,25567(at)
     f48:	03e00008 	jr	ra
     f4c:	a42863e1 	sh	t0,25569(at)
     f50:	24817fff 	addiu	at,a0,32767
     f54:	240a0032 	li	t2,50
     f58:	a42963dd 	sh	t1,25565(at)
     f5c:	a42563df 	sh	a1,25567(at)
     f60:	03e00008 	jr	ra
     f64:	a42a63e1 	sh	t2,25569(at)

00000f68 <L80107918>:
     f68:	24817fff 	addiu	at,a0,32767
     f6c:	a42063e1 	sh	zero,25569(at)
     f70:	24837fff 	addiu	v1,a0,32767
     f74:	846363e1 	lh	v1,25569(v1)
     f78:	a42363df 	sh	v1,25567(at)
     f7c:	03e00008 	jr	ra
     f80:	a42363dd 	sh	v1,25565(at)

00000f84 <L80107934>:
     f84:	34018000 	li	at,0x8000
     f88:	00811021 	addu	v0,a0,at
     f8c:	904b62fd 	lbu	t3,25341(v0)
     f90:	24010005 	li	at,5
     f94:	240500ff 	li	a1,255
     f98:	15610006 	bne	t3,at,fb4 <L80107934+0x30>
     f9c:	24817fff 	addiu	at,a0,32767
     fa0:	a42063e1 	sh	zero,25569(at)
     fa4:	844363e0 	lh	v1,25568(v0)
     fa8:	a42363df 	sh	v1,25567(at)
     fac:	03e00008 	jr	ra
     fb0:	a42363dd 	sh	v1,25565(at)
     fb4:	24817fff 	addiu	at,a0,32767
     fb8:	a42563e1 	sh	a1,25569(at)
     fbc:	844363e0 	lh	v1,25568(v0)
     fc0:	a42363df 	sh	v1,25567(at)
     fc4:	a42363dd 	sh	v1,25565(at)
     fc8:	03e00008 	jr	ra
     fcc:	00000000 	nop

00000fd0 <func_80107980>:
     fd0:	27bdff90 	addiu	sp,sp,-112
     fd4:	3c0f0000 	lui	t7,0x0
     fd8:	85ef0000 	lh	t7,0(t7)
     fdc:	afa40070 	sw	a0,112(sp)
     fe0:	afa50074 	sw	a1,116(sp)
     fe4:	afa60078 	sw	a2,120(sp)
     fe8:	afa7007c 	sw	a3,124(sp)
     fec:	8ca20000 	lw	v0,0(a1)
     ff0:	15e001c2 	bnez	t7,16fc <func_80107980+0x72c>
     ff4:	00a07025 	move	t6,a1
     ff8:	3c060000 	lui	a2,0x0
     ffc:	84c60000 	lh	a2,0(a2)
    1000:	3c180000 	lui	t8,0x0
    1004:	27180000 	addiu	t8,t8,0
    1008:	00c00821 	move	at,a2
    100c:	00063080 	sll	a2,a2,0x2
    1010:	00c13023 	subu	a2,a2,at
    1014:	00063040 	sll	a2,a2,0x1
    1018:	3c0a0000 	lui	t2,0x0
    101c:	00d82021 	addu	a0,a2,t8
    1020:	854a0000 	lh	t2,0(t2)
    1024:	84850000 	lh	a1,0(a0)
    1028:	3c080000 	lui	t0,0x0
    102c:	3c090000 	lui	t1,0x0
    1030:	01453823 	subu	a3,t2,a1
    1034:	04e20004 	bltzl	a3,1048 <func_80107980+0x78>
    1038:	00071823 	negu	v1,a3
    103c:	10000002 	b	1048 <func_80107980+0x78>
    1040:	00e01825 	move	v1,a3
    1044:	00071823 	negu	v1,a3
    1048:	85080000 	lh	t0,0(t0)
    104c:	85290000 	lh	t1,0(t1)
    1050:	848b0002 	lh	t3,2(a0)
    1054:	0068001a 	div	zero,v1,t0
    1058:	00006812 	mflo	t5
    105c:	000d6c00 	sll	t5,t5,0x10
    1060:	15000002 	bnez	t0,106c <func_80107980+0x9c>
    1064:	00000000 	nop
    1068:	0007000d 	break	0x7
    106c:	2401ffff 	li	at,-1
    1070:	15010004 	bne	t0,at,1084 <func_80107980+0xb4>
    1074:	3c018000 	lui	at,0x8000
    1078:	14610002 	bne	v1,at,1084 <func_80107980+0xb4>
    107c:	00000000 	nop
    1080:	0006000d 	break	0x6
    1084:	012b3823 	subu	a3,t1,t3
    1088:	04e00003 	bltz	a3,1098 <func_80107980+0xc8>
    108c:	000d6c03 	sra	t5,t5,0x10
    1090:	10000002 	b	109c <func_80107980+0xcc>
    1094:	00e01825 	move	v1,a3
    1098:	00071823 	negu	v1,a3
    109c:	0068001a 	div	zero,v1,t0
    10a0:	3c070000 	lui	a3,0x0
    10a4:	84e70000 	lh	a3,0(a3)
    10a8:	848c0004 	lh	t4,4(a0)
    10ac:	15000002 	bnez	t0,10b8 <func_80107980+0xe8>
    10b0:	00000000 	nop
    10b4:	0007000d 	break	0x7
    10b8:	2401ffff 	li	at,-1
    10bc:	15010004 	bne	t0,at,10d0 <func_80107980+0x100>
    10c0:	3c018000 	lui	at,0x8000
    10c4:	14610002 	bne	v1,at,10d0 <func_80107980+0x100>
    10c8:	00000000 	nop
    10cc:	0006000d 	break	0x6
    10d0:	00ec7023 	subu	t6,a3,t4
    10d4:	0000c812 	mflo	t9
    10d8:	a7b90060 	sh	t9,96(sp)
    10dc:	afae0000 	sw	t6,0(sp)
    10e0:	05c00003 	bltz	t6,10f0 <func_80107980+0x120>
    10e4:	01c07825 	move	t7,t6
    10e8:	10000003 	b	10f8 <func_80107980+0x128>
    10ec:	01e01825 	move	v1,t7
    10f0:	8fa30000 	lw	v1,0(sp)
    10f4:	00031823 	negu	v1,v1
    10f8:	0145082a 	slt	at,t2,a1
    10fc:	54200006 	bnezl	at,1118 <func_80107980+0x148>
    1100:	014d5021 	addu	t2,t2,t5
    1104:	014d5023 	subu	t2,t2,t5
    1108:	000a5400 	sll	t2,t2,0x10
    110c:	10000004 	b	1120 <func_80107980+0x150>
    1110:	000a5403 	sra	t2,t2,0x10
    1114:	014d5021 	addu	t2,t2,t5
    1118:	000a5400 	sll	t2,t2,0x10
    111c:	000a5403 	sra	t2,t2,0x10
    1120:	012b082a 	slt	at,t1,t3
    1124:	14200006 	bnez	at,1140 <func_80107980+0x170>
    1128:	3c0d0000 	lui	t5,0x0
    112c:	87b80060 	lh	t8,96(sp)
    1130:	01384823 	subu	t1,t1,t8
    1134:	00094c00 	sll	t1,t1,0x10
    1138:	10000005 	b	1150 <func_80107980+0x180>
    113c:	00094c03 	sra	t1,t1,0x10
    1140:	87b90060 	lh	t9,96(sp)
    1144:	01394821 	addu	t1,t1,t9
    1148:	00094c00 	sll	t1,t1,0x10
    114c:	00094c03 	sra	t1,t1,0x10
    1150:	00ec082a 	slt	at,a3,t4
    1154:	14200013 	bnez	at,11a4 <func_80107980+0x1d4>
    1158:	00000000 	nop
    115c:	0068001a 	div	zero,v1,t0
    1160:	00007012 	mflo	t6
    1164:	000e7c00 	sll	t7,t6,0x10
    1168:	000fc403 	sra	t8,t7,0x10
    116c:	00f83823 	subu	a3,a3,t8
    1170:	00073c00 	sll	a3,a3,0x10
    1174:	15000002 	bnez	t0,1180 <func_80107980+0x1b0>
    1178:	00000000 	nop
    117c:	0007000d 	break	0x7
    1180:	2401ffff 	li	at,-1
    1184:	15010004 	bne	t0,at,1198 <func_80107980+0x1c8>
    1188:	3c018000 	lui	at,0x8000
    118c:	14610002 	bne	v1,at,1198 <func_80107980+0x1c8>
    1190:	00000000 	nop
    1194:	0006000d 	break	0x6
    1198:	00073c03 	sra	a3,a3,0x10
    119c:	10000012 	b	11e8 <func_80107980+0x218>
    11a0:	afa5000c 	sw	a1,12(sp)
    11a4:	0068001a 	div	zero,v1,t0
    11a8:	0000c812 	mflo	t9
    11ac:	00197400 	sll	t6,t9,0x10
    11b0:	000e7c03 	sra	t7,t6,0x10
    11b4:	00ef3821 	addu	a3,a3,t7
    11b8:	00073c00 	sll	a3,a3,0x10
    11bc:	00073c03 	sra	a3,a3,0x10
    11c0:	15000002 	bnez	t0,11cc <func_80107980+0x1fc>
    11c4:	00000000 	nop
    11c8:	0007000d 	break	0x7
    11cc:	2401ffff 	li	at,-1
    11d0:	15010004 	bne	t0,at,11e4 <func_80107980+0x214>
    11d4:	3c018000 	lui	at,0x8000
    11d8:	14610002 	bne	v1,at,11e4 <func_80107980+0x214>
    11dc:	00000000 	nop
    11e0:	0006000d 	break	0x6
    11e4:	afa5000c 	sw	a1,12(sp)
    11e8:	3c180000 	lui	t8,0x0
    11ec:	27180000 	addiu	t8,t8,0
    11f0:	00d82821 	addu	a1,a2,t8
    11f4:	85ad0000 	lh	t5,0(t5)
    11f8:	84b90000 	lh	t9,0(a1)
    11fc:	3c010000 	lui	at,0x0
    1200:	01b92023 	subu	a0,t5,t9
    1204:	afb90000 	sw	t9,0(sp)
    1208:	04800008 	bltz	a0,122c <func_80107980+0x25c>
    120c:	03207025 	move	t6,t9
    1210:	3c010000 	lui	at,0x0
    1214:	a4290000 	sh	t1,0(at)
    1218:	3c010000 	lui	at,0x0
    121c:	a42a0000 	sh	t2,0(at)
    1220:	00801825 	move	v1,a0
    1224:	10000006 	b	1240 <func_80107980+0x270>
    1228:	afab0008 	sw	t3,8(sp)
    122c:	a4290000 	sh	t1,0(at)
    1230:	3c010000 	lui	at,0x0
    1234:	a42a0000 	sh	t2,0(at)
    1238:	00041823 	negu	v1,a0
    123c:	afab0008 	sw	t3,8(sp)
    1240:	0068001a 	div	zero,v1,t0
    1244:	3c090000 	lui	t1,0x0
    1248:	85290000 	lh	t1,0(t1)
    124c:	84ab0002 	lh	t3,2(a1)
    1250:	00003012 	mflo	a2
    1254:	00063400 	sll	a2,a2,0x10
    1258:	15000002 	bnez	t0,1264 <func_80107980+0x294>
    125c:	00000000 	nop
    1260:	0007000d 	break	0x7
    1264:	2401ffff 	li	at,-1
    1268:	15010004 	bne	t0,at,127c <func_80107980+0x2ac>
    126c:	3c018000 	lui	at,0x8000
    1270:	14610002 	bne	v1,at,127c <func_80107980+0x2ac>
    1274:	00000000 	nop
    1278:	0006000d 	break	0x6
    127c:	012b2023 	subu	a0,t1,t3
    1280:	04800006 	bltz	a0,129c <func_80107980+0x2cc>
    1284:	00063403 	sra	a2,a2,0x10
    1288:	3c010000 	lui	at,0x0
    128c:	a4270000 	sh	a3,0(at)
    1290:	00801825 	move	v1,a0
    1294:	10000005 	b	12ac <func_80107980+0x2dc>
    1298:	afac0004 	sw	t4,4(sp)
    129c:	3c010000 	lui	at,0x0
    12a0:	a4270000 	sh	a3,0(at)
    12a4:	00041823 	negu	v1,a0
    12a8:	afac0004 	sw	t4,4(sp)
    12ac:	0068001a 	div	zero,v1,t0
    12b0:	3c0a0000 	lui	t2,0x0
    12b4:	854a0000 	lh	t2,0(t2)
    12b8:	84ac0004 	lh	t4,4(a1)
    12bc:	00003812 	mflo	a3
    12c0:	00073c00 	sll	a3,a3,0x10
    12c4:	15000002 	bnez	t0,12d0 <func_80107980+0x300>
    12c8:	00000000 	nop
    12cc:	0007000d 	break	0x7
    12d0:	2401ffff 	li	at,-1
    12d4:	15010004 	bne	t0,at,12e8 <func_80107980+0x318>
    12d8:	3c018000 	lui	at,0x8000
    12dc:	14610002 	bne	v1,at,12e8 <func_80107980+0x318>
    12e0:	00000000 	nop
    12e4:	0006000d 	break	0x6
    12e8:	014c2023 	subu	a0,t2,t4
    12ec:	04800003 	bltz	a0,12fc <func_80107980+0x32c>
    12f0:	00073c03 	sra	a3,a3,0x10
    12f4:	10000002 	b	1300 <func_80107980+0x330>
    12f8:	00801825 	move	v1,a0
    12fc:	00041823 	negu	v1,a0
    1300:	8fa40000 	lw	a0,0(sp)
    1304:	01a4082a 	slt	at,t5,a0
    1308:	54200006 	bnezl	at,1324 <func_80107980+0x354>
    130c:	01a66821 	addu	t5,t5,a2
    1310:	01a66823 	subu	t5,t5,a2
    1314:	000d6c00 	sll	t5,t5,0x10
    1318:	10000004 	b	132c <func_80107980+0x35c>
    131c:	000d6c03 	sra	t5,t5,0x10
    1320:	01a66821 	addu	t5,t5,a2
    1324:	000d6c00 	sll	t5,t5,0x10
    1328:	000d6c03 	sra	t5,t5,0x10
    132c:	012b082a 	slt	at,t1,t3
    1330:	54200006 	bnezl	at,134c <func_80107980+0x37c>
    1334:	01274821 	addu	t1,t1,a3
    1338:	01274823 	subu	t1,t1,a3
    133c:	00094c00 	sll	t1,t1,0x10
    1340:	10000004 	b	1354 <func_80107980+0x384>
    1344:	00094c03 	sra	t1,t1,0x10
    1348:	01274821 	addu	t1,t1,a3
    134c:	00094c00 	sll	t1,t1,0x10
    1350:	00094c03 	sra	t1,t1,0x10
    1354:	014c082a 	slt	at,t2,t4
    1358:	14200013 	bnez	at,13a8 <func_80107980+0x3d8>
    135c:	00000000 	nop
    1360:	0068001a 	div	zero,v1,t0
    1364:	00007812 	mflo	t7
    1368:	000fc400 	sll	t8,t7,0x10
    136c:	0018cc03 	sra	t9,t8,0x10
    1370:	01595023 	subu	t2,t2,t9
    1374:	000a5400 	sll	t2,t2,0x10
    1378:	15000002 	bnez	t0,1384 <func_80107980+0x3b4>
    137c:	00000000 	nop
    1380:	0007000d 	break	0x7
    1384:	2401ffff 	li	at,-1
    1388:	15010004 	bne	t0,at,139c <func_80107980+0x3cc>
    138c:	3c018000 	lui	at,0x8000
    1390:	14610002 	bne	v1,at,139c <func_80107980+0x3cc>
    1394:	00000000 	nop
    1398:	0006000d 	break	0x6
    139c:	000a5403 	sra	t2,t2,0x10
    13a0:	10000012 	b	13ec <func_80107980+0x41c>
    13a4:	2508ffff 	addiu	t0,t0,-1
    13a8:	0068001a 	div	zero,v1,t0
    13ac:	00007012 	mflo	t6
    13b0:	000e7c00 	sll	t7,t6,0x10
    13b4:	000fc403 	sra	t8,t7,0x10
    13b8:	01585021 	addu	t2,t2,t8
    13bc:	000a5400 	sll	t2,t2,0x10
    13c0:	000a5403 	sra	t2,t2,0x10
    13c4:	15000002 	bnez	t0,13d0 <func_80107980+0x400>
    13c8:	00000000 	nop
    13cc:	0007000d 	break	0x7
    13d0:	2401ffff 	li	at,-1
    13d4:	15010004 	bne	t0,at,13e8 <func_80107980+0x418>
    13d8:	3c018000 	lui	at,0x8000
    13dc:	14610002 	bne	v1,at,13e8 <func_80107980+0x418>
    13e0:	00000000 	nop
    13e4:	0006000d 	break	0x6
    13e8:	2508ffff 	addiu	t0,t0,-1
    13ec:	00084400 	sll	t0,t0,0x10
    13f0:	00084403 	sra	t0,t0,0x10
    13f4:	3c010000 	lui	at,0x0
    13f8:	15000018 	bnez	t0,145c <func_80107980+0x48c>
    13fc:	a4280000 	sh	t0,0(at)
    1400:	8fb9000c 	lw	t9,12(sp)
    1404:	8fae0008 	lw	t6,8(sp)
    1408:	3c010000 	lui	at,0x0
    140c:	a4390000 	sh	t9,0(at)
    1410:	8faf0004 	lw	t7,4(sp)
    1414:	3c010000 	lui	at,0x0
    1418:	3c180000 	lui	t8,0x0
    141c:	87180000 	lh	t8,0(t8)
    1420:	a42e0000 	sh	t6,0(at)
    1424:	3c010000 	lui	at,0x0
    1428:	a42f0000 	sh	t7,0(at)
    142c:	3c010000 	lui	at,0x0
    1430:	3b190001 	xori	t9,t8,0x1
    1434:	a4390000 	sh	t9,0(at)
    1438:	00046c00 	sll	t5,a0,0x10
    143c:	000b4c00 	sll	t1,t3,0x10
    1440:	000c5400 	sll	t2,t4,0x10
    1444:	2408000c 	li	t0,12
    1448:	3c010000 	lui	at,0x0
    144c:	000d6c03 	sra	t5,t5,0x10
    1450:	00094c03 	sra	t1,t1,0x10
    1454:	000a5403 	sra	t2,t2,0x10
    1458:	a4280000 	sh	t0,0(at)
    145c:	00402025 	move	a0,v0
    1460:	3c03e700 	lui	v1,0xe700
    1464:	ac830000 	sw	v1,0(a0)
    1468:	ac800004 	sw	zero,4(a0)
    146c:	24420008 	addiu	v0,v0,8
    1470:	00402025 	move	a0,v0
    1474:	3c0efc30 	lui	t6,0xfc30
    1478:	3c0f552e 	lui	t7,0x552e
    147c:	35efff7f 	ori	t7,t7,0xff7f
    1480:	35ce9661 	ori	t6,t6,0x9661
    1484:	ac8e0000 	sw	t6,0(a0)
    1488:	ac8f0004 	sw	t7,4(a0)
    148c:	24420008 	addiu	v0,v0,8
    1490:	00402025 	move	a0,v0
    1494:	3c18fa00 	lui	t8,0xfa00
    1498:	ac980000 	sw	t8,0(a0)
    149c:	3c180000 	lui	t8,0x0
    14a0:	3c190000 	lui	t9,0x0
    14a4:	872e0000 	lh	t6,0(t9)
    14a8:	87180000 	lh	t8,0(t8)
    14ac:	3c010000 	lui	at,0x0
    14b0:	000e7e00 	sll	t7,t6,0x18
    14b4:	331900ff 	andi	t9,t8,0xff
    14b8:	00197400 	sll	t6,t9,0x10
    14bc:	3c190000 	lui	t9,0x0
    14c0:	87390000 	lh	t9,0(t9)
    14c4:	01eec025 	or	t8,t7,t6
    14c8:	24420008 	addiu	v0,v0,8
    14cc:	332f00ff 	andi	t7,t9,0xff
    14d0:	000f7200 	sll	t6,t7,0x8
    14d4:	030ec825 	or	t9,t8,t6
    14d8:	372f00ff 	ori	t7,t9,0xff
    14dc:	ac8f0004 	sw	t7,4(a0)
    14e0:	3c18fb00 	lui	t8,0xfb00
    14e4:	ac580000 	sw	t8,0(v0)
    14e8:	312f00ff 	andi	t7,t1,0xff
    14ec:	000fc400 	sll	t8,t7,0x10
    14f0:	000dce00 	sll	t9,t5,0x18
    14f4:	03387025 	or	t6,t9,t8
    14f8:	314f00ff 	andi	t7,t2,0xff
    14fc:	000fca00 	sll	t9,t7,0x8
    1500:	01d9c025 	or	t8,t6,t9
    1504:	370f00ff 	ori	t7,t8,0xff
    1508:	ac4f0004 	sw	t7,4(v0)
    150c:	a4290000 	sh	t1,0(at)
    1510:	3c010000 	lui	at,0x0
    1514:	8fa40070 	lw	a0,112(sp)
    1518:	a42a0000 	sh	t2,0(at)
    151c:	3c010000 	lui	at,0x0
    1520:	24450008 	addiu	a1,v0,8
    1524:	a42d0000 	sh	t5,0(at)
    1528:	3c0efd90 	lui	t6,0xfd90
    152c:	24995e08 	addiu	t9,a0,24072
    1530:	acb90004 	sw	t9,4(a1)
    1534:	acae0000 	sw	t6,0(a1)
    1538:	24a20008 	addiu	v0,a1,8
    153c:	00402825 	move	a1,v0
    1540:	3c0f0708 	lui	t7,0x708
    1544:	35ef0200 	ori	t7,t7,0x200
    1548:	3c18f590 	lui	t8,0xf590
    154c:	acb80000 	sw	t8,0(a1)
    1550:	acaf0004 	sw	t7,4(a1)
    1554:	24420008 	addiu	v0,v0,8
    1558:	00402825 	move	a1,v0
    155c:	3c0ee600 	lui	t6,0xe600
    1560:	acae0000 	sw	t6,0(a1)
    1564:	aca00004 	sw	zero,4(a1)
    1568:	24420008 	addiu	v0,v0,8
    156c:	00402825 	move	a1,v0
    1570:	3c180703 	lui	t8,0x703
    1574:	3718f800 	ori	t8,t8,0xf800
    1578:	3c19f300 	lui	t9,0xf300
    157c:	acb90000 	sw	t9,0(a1)
    1580:	acb80004 	sw	t8,4(a1)
    1584:	24420008 	addiu	v0,v0,8
    1588:	00402825 	move	a1,v0
    158c:	aca30000 	sw	v1,0(a1)
    1590:	24420008 	addiu	v0,v0,8
    1594:	00401825 	move	v1,v0
    1598:	aca00004 	sw	zero,4(a1)
    159c:	3c0e0008 	lui	t6,0x8
    15a0:	3c0ff580 	lui	t7,0xf580
    15a4:	35ef0200 	ori	t7,t7,0x200
    15a8:	35ce0200 	ori	t6,t6,0x200
    15ac:	ac6e0004 	sw	t6,4(v1)
    15b0:	ac6f0000 	sw	t7,0(v1)
    15b4:	24420008 	addiu	v0,v0,8
    15b8:	00401825 	move	v1,v0
    15bc:	3c180003 	lui	t8,0x3
    15c0:	3718c03c 	ori	t8,t8,0xc03c
    15c4:	3c19f200 	lui	t9,0xf200
    15c8:	ac790000 	sw	t9,0(v1)
    15cc:	ac780004 	sw	t8,4(v1)
    15d0:	3c030000 	lui	v1,0x0
    15d4:	8c630000 	lw	v1,0(v1)
    15d8:	3c0142c8 	lui	at,0x42c8
    15dc:	44810000 	mtc1	at,$f0
    15e0:	846f0b06 	lh	t7,2822(v1)
    15e4:	3c014180 	lui	at,0x4180
    15e8:	44815000 	mtc1	at,$f10
    15ec:	448f2000 	mtc1	t7,$f4
    15f0:	3c060000 	lui	a2,0x0
    15f4:	24c60000 	addiu	a2,a2,0
    15f8:	468021a0 	cvt.s.w	$f6,$f4
    15fc:	3c014480 	lui	at,0x4480
    1600:	44812000 	mtc1	at,$f4
    1604:	87a8007a 	lh	t0,122(sp)
    1608:	3c070000 	lui	a3,0x0
    160c:	87a9007e 	lh	t1,126(sp)
    1610:	46003203 	div.s	$f8,$f6,$f0
    1614:	24e70000 	addiu	a3,a3,0
    1618:	3c01e400 	lui	at,0xe400
    161c:	24420008 	addiu	v0,v0,8
    1620:	460a4402 	mul.s	$f16,$f8,$f10
    1624:	4600848d 	trunc.w.s	$f18,$f16
    1628:	44059000 	mfc1	a1,$f18
    162c:	00000000 	nop
    1630:	acc50000 	sw	a1,0(a2)
    1634:	84780b06 	lh	t8,2822(v1)
    1638:	0105c821 	addu	t9,t0,a1
    163c:	00401825 	move	v1,v0
    1640:	44983000 	mtc1	t8,$f6
    1644:	0019c080 	sll	t8,t9,0x2
    1648:	330f0fff 	andi	t7,t8,0xfff
    164c:	46803220 	cvt.s.w	$f8,$f6
    1650:	0125c021 	addu	t8,t1,a1
    1654:	24420008 	addiu	v0,v0,8
    1658:	46004283 	div.s	$f10,$f8,$f0
    165c:	460a2403 	div.s	$f16,$f4,$f10
    1660:	4600848d 	trunc.w.s	$f18,$f16
    1664:	440e9000 	mfc1	t6,$f18
    1668:	00000000 	nop
    166c:	acee0000 	sw	t6,0(a3)
    1670:	000f7300 	sll	t6,t7,0xc
    1674:	01c1c825 	or	t9,t6,at
    1678:	00187880 	sll	t7,t8,0x2
    167c:	31ee0fff 	andi	t6,t7,0xfff
    1680:	032ec025 	or	t8,t9,t6
    1684:	00087880 	sll	t7,t0,0x2
    1688:	31f90fff 	andi	t9,t7,0xfff
    168c:	ac780000 	sw	t8,0(v1)
    1690:	0009c080 	sll	t8,t1,0x2
    1694:	330f0fff 	andi	t7,t8,0xfff
    1698:	00197300 	sll	t6,t9,0xc
    169c:	01cfc825 	or	t9,t6,t7
    16a0:	ac790004 	sw	t9,4(v1)
    16a4:	00401825 	move	v1,v0
    16a8:	3c18e100 	lui	t8,0xe100
    16ac:	ac780000 	sw	t8,0(v1)
    16b0:	ac600004 	sw	zero,4(v1)
    16b4:	24420008 	addiu	v0,v0,8
    16b8:	00401825 	move	v1,v0
    16bc:	3c0ef100 	lui	t6,0xf100
    16c0:	ac6e0000 	sw	t6,0(v1)
    16c4:	8ce50000 	lw	a1,0(a3)
    16c8:	24420008 	addiu	v0,v0,8
    16cc:	30a5ffff 	andi	a1,a1,0xffff
    16d0:	00057c00 	sll	t7,a1,0x10
    16d4:	01e5c825 	or	t9,t7,a1
    16d8:	ac790004 	sw	t9,4(v1)
    16dc:	248320d8 	addiu	v1,a0,8408
    16e0:	24787fff 	addiu	t8,v1,32767
    16e4:	931863e8 	lbu	t8,25576(t8)
    16e8:	24617fff 	addiu	at,v1,32767
    16ec:	270e0001 	addiu	t6,t8,1
    16f0:	a02e63e8 	sb	t6,25576(at)
    16f4:	8faf0074 	lw	t7,116(sp)
    16f8:	ade20000 	sw	v0,0(t7)
    16fc:	03e00008 	jr	ra
    1700:	27bd0070 	addiu	sp,sp,112

00001704 <func_801080B4>:
    1704:	27bdffd8 	addiu	sp,sp,-40
    1708:	3c180001 	lui	t8,0x1
    170c:	afbf001c 	sw	ra,28(sp)
    1710:	afa40028 	sw	a0,40(sp)
    1714:	afa5002c 	sw	a1,44(sp)
    1718:	afa60030 	sw	a2,48(sp)
    171c:	afa70034 	sw	a3,52(sp)
    1720:	0304c021 	addu	t8,t8,a0
    1724:	931803dc 	lbu	t8,988(t8)
    1728:	24010006 	li	at,6
    172c:	8cc30000 	lw	v1,0(a2)
    1730:	1701000d 	bne	t8,at,1768 <func_801080B4+0x64>
    1734:	3c070000 	lui	a3,0x0
    1738:	3c190000 	lui	t9,0x0
    173c:	27390000 	addiu	t9,t9,0
    1740:	24e70000 	addiu	a3,a3,0
    1744:	3c050000 	lui	a1,0x0
    1748:	24a50000 	addiu	a1,a1,0
    174c:	afa70010 	sw	a3,16(sp)
    1750:	afb90014 	sw	t9,20(sp)
    1754:	00002025 	move	a0,zero
    1758:	24060004 	li	a2,4
    175c:	0c000000 	jal	0 <func_801069B0>
    1760:	afa30020 	sw	v1,32(sp)
    1764:	8fa30020 	lw	v1,32(sp)
    1768:	00601025 	move	v0,v1
    176c:	3c09e700 	lui	t1,0xe700
    1770:	ac490000 	sw	t1,0(v0)
    1774:	ac400004 	sw	zero,4(v0)
    1778:	24630008 	addiu	v1,v1,8
    177c:	00601025 	move	v0,v1
    1780:	3c0afc11 	lui	t2,0xfc11
    1784:	3c0bff2f 	lui	t3,0xff2f
    1788:	356bffff 	ori	t3,t3,0xffff
    178c:	354a9623 	ori	t2,t2,0x9623
    1790:	ac4a0000 	sw	t2,0(v0)
    1794:	ac4b0004 	sw	t3,4(v0)
    1798:	24630008 	addiu	v1,v1,8
    179c:	00601025 	move	v0,v1
    17a0:	3c0cfa00 	lui	t4,0xfa00
    17a4:	ac4c0000 	sw	t4,0(v0)
    17a8:	8fa80028 	lw	t0,40(sp)
    17ac:	34018000 	li	at,0x8000
    17b0:	24630008 	addiu	v1,v1,8
    17b4:	250820d8 	addiu	t0,t0,8408
    17b8:	01013821 	addu	a3,t0,at
    17bc:	84ed63e2 	lh	t5,25570(a3)
    17c0:	2401ff00 	li	at,-256
    17c4:	3c060000 	lui	a2,0x0
    17c8:	31ae00ff 	andi	t6,t5,0xff
    17cc:	01c17825 	or	t7,t6,at
    17d0:	ac4f0004 	sw	t7,4(v0)
    17d4:	97b8002e 	lhu	t8,46(sp)
    17d8:	00601025 	move	v0,v1
    17dc:	3c0cfd18 	lui	t4,0xfd18
    17e0:	2b010066 	slti	at,t8,102
    17e4:	1420002c 	bnez	at,1898 <func_801080B4+0x194>
    17e8:	24c60000 	addiu	a2,a2,0
    17ec:	00601025 	move	v0,v1
    17f0:	3c19fd18 	lui	t9,0xfd18
    17f4:	ac590000 	sw	t9,0(v0)
    17f8:	8cea62b0 	lw	t2,25264(a3)
    17fc:	24630008 	addiu	v1,v1,8
    1800:	3c0cf518 	lui	t4,0xf518
    1804:	254b1000 	addiu	t3,t2,4096
    1808:	ac4b0004 	sw	t3,4(v0)
    180c:	00601025 	move	v0,v1
    1810:	3c0d0700 	lui	t5,0x700
    1814:	ac4d0004 	sw	t5,4(v0)
    1818:	ac4c0000 	sw	t4,0(v0)
    181c:	24630008 	addiu	v1,v1,8
    1820:	00601025 	move	v0,v1
    1824:	3c0ee600 	lui	t6,0xe600
    1828:	ac4e0000 	sw	t6,0(v0)
    182c:	ac400004 	sw	zero,4(v0)
    1830:	24630008 	addiu	v1,v1,8
    1834:	00601025 	move	v0,v1
    1838:	3c180723 	lui	t8,0x723
    183c:	3718f0ab 	ori	t8,t8,0xf0ab
    1840:	3c0ff300 	lui	t7,0xf300
    1844:	ac4f0000 	sw	t7,0(v0)
    1848:	ac580004 	sw	t8,4(v0)
    184c:	24630008 	addiu	v1,v1,8
    1850:	00601025 	move	v0,v1
    1854:	ac490000 	sw	t1,0(v0)
    1858:	ac400004 	sw	zero,4(v0)
    185c:	24630008 	addiu	v1,v1,8
    1860:	00601025 	move	v0,v1
    1864:	3c19f518 	lui	t9,0xf518
    1868:	37390c00 	ori	t9,t9,0xc00
    186c:	ac590000 	sw	t9,0(v0)
    1870:	ac400004 	sw	zero,4(v0)
    1874:	24630008 	addiu	v1,v1,8
    1878:	00601025 	move	v0,v1
    187c:	3c0b0005 	lui	t3,0x5
    1880:	356bc05c 	ori	t3,t3,0xc05c
    1884:	3c0af200 	lui	t2,0xf200
    1888:	ac4a0000 	sw	t2,0(v0)
    188c:	ac4b0004 	sw	t3,4(v0)
    1890:	10000029 	b	1938 <func_801080B4+0x234>
    1894:	24630008 	addiu	v1,v1,8
    1898:	ac4c0000 	sw	t4,0(v0)
    189c:	8ced62b0 	lw	t5,25264(a3)
    18a0:	24630008 	addiu	v1,v1,8
    18a4:	3c0ff518 	lui	t7,0xf518
    18a8:	25ae1000 	addiu	t6,t5,4096
    18ac:	ac4e0004 	sw	t6,4(v0)
    18b0:	00601025 	move	v0,v1
    18b4:	3c180700 	lui	t8,0x700
    18b8:	ac580004 	sw	t8,4(v0)
    18bc:	ac4f0000 	sw	t7,0(v0)
    18c0:	24630008 	addiu	v1,v1,8
    18c4:	00601025 	move	v0,v1
    18c8:	3c19e600 	lui	t9,0xe600
    18cc:	ac590000 	sw	t9,0(v0)
    18d0:	ac400004 	sw	zero,4(v0)
    18d4:	24630008 	addiu	v1,v1,8
    18d8:	00601025 	move	v0,v1
    18dc:	3c0b073f 	lui	t3,0x73f
    18e0:	356bf080 	ori	t3,t3,0xf080
    18e4:	3c0af300 	lui	t2,0xf300
    18e8:	ac4a0000 	sw	t2,0(v0)
    18ec:	ac4b0004 	sw	t3,4(v0)
    18f0:	24630008 	addiu	v1,v1,8
    18f4:	00601025 	move	v0,v1
    18f8:	ac490000 	sw	t1,0(v0)
    18fc:	ac400004 	sw	zero,4(v0)
    1900:	24630008 	addiu	v1,v1,8
    1904:	00601025 	move	v0,v1
    1908:	3c0cf518 	lui	t4,0xf518
    190c:	358c1000 	ori	t4,t4,0x1000
    1910:	ac4c0000 	sw	t4,0(v0)
    1914:	ac400004 	sw	zero,4(v0)
    1918:	24630008 	addiu	v1,v1,8
    191c:	00601025 	move	v0,v1
    1920:	3c0e0007 	lui	t6,0x7
    1924:	35cec07c 	ori	t6,t6,0xc07c
    1928:	3c0df200 	lui	t5,0xf200
    192c:	ac4d0000 	sw	t5,0(v0)
    1930:	ac4e0004 	sw	t6,4(v0)
    1934:	24630008 	addiu	v1,v1,8
    1938:	8cc20000 	lw	v0,0(a2)
    193c:	84ef63d8 	lh	t7,25560(a3)
    1940:	3c01e400 	lui	at,0xe400
    1944:	84580522 	lh	t8,1314(v0)
    1948:	8445052a 	lh	a1,1322(v0)
    194c:	844e0524 	lh	t6,1316(v0)
    1950:	01f8c821 	addu	t9,t7,t8
    1954:	03255021 	addu	t2,t9,a1
    1958:	00ae7821 	addu	t7,a1,t6
    195c:	000fc080 	sll	t8,t7,0x2
    1960:	000a5880 	sll	t3,t2,0x2
    1964:	316c0fff 	andi	t4,t3,0xfff
    1968:	33190fff 	andi	t9,t8,0xfff
    196c:	03215025 	or	t2,t9,at
    1970:	000c6b00 	sll	t5,t4,0xc
    1974:	014d5825 	or	t3,t2,t5
    1978:	00602025 	move	a0,v1
    197c:	ac8b0000 	sw	t3,0(a0)
    1980:	8cc20000 	lw	v0,0(a2)
    1984:	84ec63d8 	lh	t4,25560(a3)
    1988:	24630008 	addiu	v1,v1,8
    198c:	844e0522 	lh	t6,1314(v0)
    1990:	844d0524 	lh	t5,1316(v0)
    1994:	00601025 	move	v0,v1
    1998:	018e7821 	addu	t7,t4,t6
    199c:	000fc080 	sll	t8,t7,0x2
    19a0:	33190fff 	andi	t9,t8,0xfff
    19a4:	000d5880 	sll	t3,t5,0x2
    19a8:	316c0fff 	andi	t4,t3,0xfff
    19ac:	00195300 	sll	t2,t9,0xc
    19b0:	018a7025 	or	t6,t4,t2
    19b4:	ac8e0004 	sw	t6,4(a0)
    19b8:	3c0fe100 	lui	t7,0xe100
    19bc:	ac4f0000 	sw	t7,0(v0)
    19c0:	ac400004 	sw	zero,4(v0)
    19c4:	24630008 	addiu	v1,v1,8
    19c8:	00601025 	move	v0,v1
    19cc:	97a40036 	lhu	a0,54(sp)
    19d0:	3c190400 	lui	t9,0x400
    19d4:	37390400 	ori	t9,t9,0x400
    19d8:	3c18f100 	lui	t8,0xf100
    19dc:	ac580000 	sw	t8,0(v0)
    19e0:	ac590004 	sw	t9,4(v0)
    19e4:	24630008 	addiu	v1,v1,8
    19e8:	00601025 	move	v0,v1
    19ec:	ac490000 	sw	t1,0(v0)
    19f0:	ac400004 	sw	zero,4(v0)
    19f4:	24630008 	addiu	v1,v1,8
    19f8:	00601025 	move	v0,v1
    19fc:	3c0bff2d 	lui	t3,0xff2d
    1a00:	3c0dfcff 	lui	t5,0xfcff
    1a04:	35ad97ff 	ori	t5,t5,0x97ff
    1a08:	356bfeff 	ori	t3,t3,0xfeff
    1a0c:	ac4b0004 	sw	t3,4(v0)
    1a10:	ac4d0000 	sw	t5,0(v0)
    1a14:	84ec63d8 	lh	t4,25560(a3)
    1a18:	25017fff 	addiu	at,t0,32767
    1a1c:	24630008 	addiu	v1,v1,8
    1a20:	258a0020 	addiu	t2,t4,32
    1a24:	a42a63d9 	sh	t2,25561(at)
    1a28:	8fae0030 	lw	t6,48(sp)
    1a2c:	24840001 	addiu	a0,a0,1
    1a30:	3082ffff 	andi	v0,a0,0xffff
    1a34:	adc30000 	sw	v1,0(t6)
    1a38:	8fbf001c 	lw	ra,28(sp)
    1a3c:	27bd0028 	addiu	sp,sp,40
    1a40:	03e00008 	jr	ra
    1a44:	00000000 	nop

00001a48 <func_801083F8>:
    1a48:	27bdffd0 	addiu	sp,sp,-48
    1a4c:	3c0e0001 	lui	t6,0x1
    1a50:	afbf001c 	sw	ra,28(sp)
    1a54:	afb00018 	sw	s0,24(sp)
    1a58:	01c47021 	addu	t6,t6,a0
    1a5c:	91ce03dc 	lbu	t6,988(t6)
    1a60:	24010006 	li	at,6
    1a64:	240f0001 	li	t7,1
    1a68:	15c100a0 	bne	t6,at,1cec <func_801083F8+0x2a4>
    1a6c:	249020d8 	addiu	s0,a0,8408
    1a70:	3c010001 	lui	at,0x1
    1a74:	00240821 	addu	at,at,a0
    1a78:	a42f04c6 	sh	t7,1222(at)
    1a7c:	34018000 	li	at,0x8000
    1a80:	0201c021 	addu	t8,s0,at
    1a84:	afb80024 	sw	t8,36(sp)
    1a88:	970563f0 	lhu	a1,25584(t8)
    1a8c:	2401002a 	li	at,42
    1a90:	24080021 	li	t0,33
    1a94:	14a10007 	bne	a1,at,1ab4 <func_801083F8+0x6c>
    1a98:	3c040000 	lui	a0,0x0
    1a9c:	26017fff 	addiu	at,s0,32767
    1aa0:	a0286305 	sb	t0,25349(at)
    1aa4:	0c000000 	jal	0 <func_801069B0>
    1aa8:	24840000 	addiu	a0,a0,0
    1aac:	1000008b 	b	1cdc <func_801083F8+0x294>
    1ab0:	8fb90024 	lw	t9,36(sp)
    1ab4:	2401002b 	li	at,43
    1ab8:	14a10021 	bne	a1,at,1b40 <func_801083F8+0xf8>
    1abc:	3c040000 	lui	a0,0x0
    1ac0:	0c000000 	jal	0 <func_801069B0>
    1ac4:	24840000 	addiu	a0,a0,0
    1ac8:	0c000000 	jal	0 <func_801069B0>
    1acc:	24040001 	li	a0,1
    1ad0:	0c000000 	jal	0 <func_801069B0>
    1ad4:	24040001 	li	a0,1
    1ad8:	0c000000 	jal	0 <func_801069B0>
    1adc:	00000000 	nop
    1ae0:	3c030000 	lui	v1,0x0
    1ae4:	26017fff 	addiu	at,s0,32767
    1ae8:	ac2262b9 	sw	v0,25273(at)
    1aec:	24630000 	addiu	v1,v1,0
    1af0:	a4600000 	sh	zero,0(v1)
    1af4:	84690000 	lh	t1,0(v1)
    1af8:	3c040000 	lui	a0,0x0
    1afc:	8fab0024 	lw	t3,36(sp)
    1b00:	24840000 	addiu	a0,a0,0
    1b04:	a4890000 	sh	t1,0(a0)
    1b08:	848a0000 	lh	t2,0(a0)
    1b0c:	8d6c62b8 	lw	t4,25272(t3)
    1b10:	0c000000 	jal	0 <func_801069B0>
    1b14:	a18a0002 	sb	t2,2(t4)
    1b18:	240d0003 	li	t5,3
    1b1c:	26017fff 	addiu	at,s0,32767
    1b20:	240e0023 	li	t6,35
    1b24:	a02d63e8 	sb	t5,25576(at)
    1b28:	a02e6305 	sb	t6,25349(at)
    1b2c:	2404000f 	li	a0,15
    1b30:	0c000000 	jal	0 <func_801069B0>
    1b34:	24050001 	li	a1,1
    1b38:	10000068 	b	1cdc <func_801083F8+0x294>
    1b3c:	8fb90024 	lw	t9,36(sp)
    1b40:	2401002c 	li	at,44
    1b44:	14a10008 	bne	a1,at,1b68 <func_801083F8+0x120>
    1b48:	240f0024 	li	t7,36
    1b4c:	26017fff 	addiu	at,s0,32767
    1b50:	3c040000 	lui	a0,0x0
    1b54:	a02f6305 	sb	t7,25349(at)
    1b58:	0c000000 	jal	0 <func_801069B0>
    1b5c:	24840000 	addiu	a0,a0,0
    1b60:	1000005e 	b	1cdc <func_801083F8+0x294>
    1b64:	8fb90024 	lw	t9,36(sp)
    1b68:	2401002d 	li	at,45
    1b6c:	14a10021 	bne	a1,at,1bf4 <func_801083F8+0x1ac>
    1b70:	3c040000 	lui	a0,0x0
    1b74:	0c000000 	jal	0 <func_801069B0>
    1b78:	24840000 	addiu	a0,a0,0
    1b7c:	0c000000 	jal	0 <func_801069B0>
    1b80:	24040001 	li	a0,1
    1b84:	0c000000 	jal	0 <func_801069B0>
    1b88:	24040001 	li	a0,1
    1b8c:	0c000000 	jal	0 <func_801069B0>
    1b90:	00000000 	nop
    1b94:	3c030000 	lui	v1,0x0
    1b98:	26017fff 	addiu	at,s0,32767
    1b9c:	ac2262b9 	sw	v0,25273(at)
    1ba0:	24630000 	addiu	v1,v1,0
    1ba4:	a4600000 	sh	zero,0(v1)
    1ba8:	84780000 	lh	t8,0(v1)
    1bac:	3c040000 	lui	a0,0x0
    1bb0:	8fa80024 	lw	t0,36(sp)
    1bb4:	24840000 	addiu	a0,a0,0
    1bb8:	a4980000 	sh	t8,0(a0)
    1bbc:	84990000 	lh	t9,0(a0)
    1bc0:	8d0962b8 	lw	t1,25272(t0)
    1bc4:	0c000000 	jal	0 <func_801069B0>
    1bc8:	a1390002 	sb	t9,2(t1)
    1bcc:	240b0003 	li	t3,3
    1bd0:	26017fff 	addiu	at,s0,32767
    1bd4:	240a0028 	li	t2,40
    1bd8:	a02b63e8 	sb	t3,25576(at)
    1bdc:	a02a6305 	sb	t2,25349(at)
    1be0:	2404000d 	li	a0,13
    1be4:	0c000000 	jal	0 <func_801069B0>
    1be8:	24050001 	li	a1,1
    1bec:	1000003b 	b	1cdc <func_801083F8+0x294>
    1bf0:	8fb90024 	lw	t9,36(sp)
    1bf4:	2401002e 	li	at,46
    1bf8:	14a10008 	bne	a1,at,1c1c <func_801083F8+0x1d4>
    1bfc:	240c0029 	li	t4,41
    1c00:	26017fff 	addiu	at,s0,32767
    1c04:	3c040000 	lui	a0,0x0
    1c08:	a02c6305 	sb	t4,25349(at)
    1c0c:	0c000000 	jal	0 <func_801069B0>
    1c10:	24840000 	addiu	a0,a0,0
    1c14:	10000031 	b	1cdc <func_801083F8+0x294>
    1c18:	8fb90024 	lw	t9,36(sp)
    1c1c:	2401002f 	li	at,47
    1c20:	14a10009 	bne	a1,at,1c48 <func_801083F8+0x200>
    1c24:	3c040000 	lui	a0,0x0
    1c28:	240d0031 	li	t5,49
    1c2c:	26017fff 	addiu	at,s0,32767
    1c30:	3c040000 	lui	a0,0x0
    1c34:	a02d6305 	sb	t5,25349(at)
    1c38:	0c000000 	jal	0 <func_801069B0>
    1c3c:	24840000 	addiu	a0,a0,0
    1c40:	10000026 	b	1cdc <func_801083F8+0x294>
    1c44:	8fb90024 	lw	t9,36(sp)
    1c48:	0c000000 	jal	0 <func_801069B0>
    1c4c:	24840000 	addiu	a0,a0,0
    1c50:	8fae0024 	lw	t6,36(sp)
    1c54:	3c040000 	lui	a0,0x0
    1c58:	24010001 	li	at,1
    1c5c:	95c563f0 	lhu	a1,25584(t6)
    1c60:	240f0009 	li	t7,9
    1c64:	24840000 	addiu	a0,a0,0
    1c68:	50a00005 	beqzl	a1,1c80 <func_801083F8+0x238>
    1c6c:	26017fff 	addiu	at,s0,32767
    1c70:	10a10002 	beq	a1,at,1c7c <func_801083F8+0x234>
    1c74:	28a10022 	slti	at,a1,34
    1c78:	14200005 	bnez	at,1c90 <func_801083F8+0x248>
    1c7c:	26017fff 	addiu	at,s0,32767
    1c80:	0c000000 	jal	0 <func_801069B0>
    1c84:	a02f6305 	sb	t7,25349(at)
    1c88:	10000014 	b	1cdc <func_801083F8+0x294>
    1c8c:	8fb90024 	lw	t9,36(sp)
    1c90:	28a10002 	slti	at,a1,2
    1c94:	1420000b 	bnez	at,1cc4 <func_801083F8+0x27c>
    1c98:	2408000b 	li	t0,11
    1c9c:	28a1000e 	slti	at,a1,14
    1ca0:	10200008 	beqz	at,1cc4 <func_801083F8+0x27c>
    1ca4:	2418000a 	li	t8,10
    1ca8:	26017fff 	addiu	at,s0,32767
    1cac:	3c040000 	lui	a0,0x0
    1cb0:	a0386305 	sb	t8,25349(at)
    1cb4:	0c000000 	jal	0 <func_801069B0>
    1cb8:	24840000 	addiu	a0,a0,0
    1cbc:	10000007 	b	1cdc <func_801083F8+0x294>
    1cc0:	8fb90024 	lw	t9,36(sp)
    1cc4:	26017fff 	addiu	at,s0,32767
    1cc8:	3c040000 	lui	a0,0x0
    1ccc:	a0286305 	sb	t0,25349(at)
    1cd0:	0c000000 	jal	0 <func_801069B0>
    1cd4:	24840000 	addiu	a0,a0,0
    1cd8:	8fb90024 	lw	t9,36(sp)
    1cdc:	3c040000 	lui	a0,0x0
    1ce0:	24840000 	addiu	a0,a0,0
    1ce4:	0c000000 	jal	0 <func_801069B0>
    1ce8:	93256304 	lbu	a1,25348(t9)
    1cec:	8fbf001c 	lw	ra,28(sp)
    1cf0:	8fb00018 	lw	s0,24(sp)
    1cf4:	27bd0030 	addiu	sp,sp,48
    1cf8:	03e00008 	jr	ra
    1cfc:	00000000 	nop

00001d00 <func_801086B0>:
    1d00:	27bdfec8 	addiu	sp,sp,-312
    1d04:	afb7003c 	sw	s7,60(sp)
    1d08:	3c170000 	lui	s7,0x0
    1d0c:	afbf0044 	sw	ra,68(sp)
    1d10:	afbe0040 	sw	s8,64(sp)
    1d14:	afb60038 	sw	s6,56(sp)
    1d18:	afb50034 	sw	s5,52(sp)
    1d1c:	afb40030 	sw	s4,48(sp)
    1d20:	afb3002c 	sw	s3,44(sp)
    1d24:	afb20028 	sw	s2,40(sp)
    1d28:	afb10024 	sw	s1,36(sp)
    1d2c:	afb00020 	sw	s0,32(sp)
    1d30:	afa5013c 	sw	a1,316(sp)
    1d34:	8caf0000 	lw	t7,0(a1)
    1d38:	26f70000 	addiu	s7,s7,0
    1d3c:	8ef80000 	lw	t8,0(s7)
    1d40:	afaf0120 	sw	t7,288(sp)
    1d44:	3c010001 	lui	at,0x1
    1d48:	87190b00 	lh	t9,2816(t8)
    1d4c:	00240821 	addu	at,at,a0
    1d50:	3c0e0000 	lui	t6,0x0
    1d54:	a43904b0 	sh	t9,1200(at)
    1d58:	85ce0000 	lh	t6,0(t6)
    1d5c:	249120d8 	addiu	s1,a0,8408
    1d60:	0220b025 	move	s6,s1
    1d64:	15c00006 	bnez	t6,1d80 <func_801086B0+0x80>
    1d68:	34158000 	li	s5,0x8000
    1d6c:	8eef0000 	lw	t7,0(s7)
    1d70:	26217fff 	addiu	at,s1,32767
    1d74:	85f80b02 	lh	t8,2818(t7)
    1d78:	10000005 	b	1d90 <func_801086B0+0x90>
    1d7c:	a43863db 	sh	t8,25563(at)
    1d80:	8ef90000 	lw	t9,0(s7)
    1d84:	26217fff 	addiu	at,s1,32767
    1d88:	872e0496 	lh	t6,1174(t9)
    1d8c:	a42e63db 	sh	t6,25563(at)
    1d90:	02358021 	addu	s0,s1,s5
    1d94:	920f62fd 	lbu	t7,25341(s0)
    1d98:	24010005 	li	at,5
    1d9c:	241800ff 	li	t8,255
    1da0:	15e10007 	bne	t7,at,1dc0 <func_801086B0+0xc0>
    1da4:	241e0002 	li	s8,2
    1da8:	26217fff 	addiu	at,s1,32767
    1dac:	a42063e1 	sh	zero,25569(at)
    1db0:	860763e0 	lh	a3,25568(s0)
    1db4:	a42763df 	sh	a3,25567(at)
    1db8:	10000006 	b	1dd4 <func_801086B0+0xd4>
    1dbc:	a42763dd 	sh	a3,25565(at)
    1dc0:	26217fff 	addiu	at,s1,32767
    1dc4:	a43863e1 	sh	t8,25569(at)
    1dc8:	860763e0 	lh	a3,25568(s0)
    1dcc:	a42763df 	sh	a3,25567(at)
    1dd0:	a42763dd 	sh	a3,25565(at)
    1dd4:	26217fff 	addiu	at,s1,32767
    1dd8:	a42063d1 	sh	zero,25553(at)
    1ddc:	a7a00128 	sh	zero,296(sp)
    1de0:	961963d2 	lhu	t9,25554(s0)
    1de4:	00009025 	move	s2,zero
    1de8:	24140006 	li	s4,6
    1dec:	1b200458 	blez	t9,2f50 <L801097E4+0x11c>
    1df0:	240d0004 	li	t5,4
    1df4:	afa40138 	sw	a0,312(sp)
    1df8:	240c000d 	li	t4,13
    1dfc:	240b000c 	li	t3,12
    1e00:	240a000b 	li	t2,11
    1e04:	2409000a 	li	t1,10
    1e08:	24080009 	li	t0,9
    1e0c:	02327021 	addu	t6,s1,s2
    1e10:	01d57821 	addu	t7,t6,s5
    1e14:	91e26306 	lbu	v0,25350(t7)
    1e18:	2458ffff 	addiu	t8,v0,-1
    1e1c:	2f010020 	sltiu	at,t8,32
    1e20:	10200404 	beqz	at,2e34 <L801097E4>
    1e24:	0018c080 	sll	t8,t8,0x2
    1e28:	3c010000 	lui	at,0x0
    1e2c:	00380821 	addu	at,at,t8
    1e30:	8c380000 	lw	t8,0(at)
    1e34:	03000008 	jr	t8
    1e38:	00000000 	nop

00001e3c <L801087EC>:
    1e3c:	8ef90000 	lw	t9,0(s7)
    1e40:	26217fff 	addiu	at,s1,32767
    1e44:	872e0b00 	lh	t6,2816(t9)
    1e48:	a42e63d9 	sh	t6,25561(at)
    1e4c:	920263e6 	lbu	v0,25574(s0)
    1e50:	34018000 	li	at,0x8000
    1e54:	02c19821 	addu	s3,s6,at
    1e58:	24010001 	li	at,1
    1e5c:	10410003 	beq	v0,at,1e6c <L801087EC+0x30>
    1e60:	24010003 	li	at,3
    1e64:	14410006 	bne	v0,at,1e80 <L801087EC+0x44>
    1e68:	00000000 	nop
    1e6c:	860f63d8 	lh	t7,25560(s0)
    1e70:	26217fff 	addiu	at,s1,32767
    1e74:	25f80020 	addiu	t8,t7,32
    1e78:	a43863d9 	sh	t8,25561(at)
    1e7c:	920263e6 	lbu	v0,25574(s0)
    1e80:	57c2000b 	bnel	s8,v0,1eb0 <L801087EC+0x74>
    1e84:	8eef0000 	lw	t7,0(s7)
    1e88:	8eee0000 	lw	t6,0(s7)
    1e8c:	861963da 	lh	t9,25562(s0)
    1e90:	85cf0b02 	lh	t7,2818(t6)
    1e94:	532f0006 	beql	t9,t7,1eb0 <L801087EC+0x74>
    1e98:	8eef0000 	lw	t7,0(s7)
    1e9c:	861863d8 	lh	t8,25560(s0)
    1ea0:	26217fff 	addiu	at,s1,32767
    1ea4:	270e0020 	addiu	t6,t8,32
    1ea8:	a42e63d9 	sh	t6,25561(at)
    1eac:	8eef0000 	lw	t7,0(s7)
    1eb0:	861963da 	lh	t9,25562(s0)
    1eb4:	26217fff 	addiu	at,s1,32767
    1eb8:	85f80b04 	lh	t8,2820(t7)
    1ebc:	03387021 	addu	t6,t9,t8
    1ec0:	a42e63db 	sh	t6,25563(at)
    1ec4:	1000041d 	b	2f3c <L801097E4+0x108>
    1ec8:	966363d2 	lhu	v1,25554(s3)

00001ecc <L8010887C>:
    1ecc:	26420001 	addiu	v0,s2,1
    1ed0:	3047ffff 	andi	a3,v0,0xffff
    1ed4:	02277821 	addu	t7,s1,a3
    1ed8:	01f5c821 	addu	t9,t7,s5
    1edc:	93256306 	lbu	a1,25350(t9)
    1ee0:	34018000 	li	at,0x8000
    1ee4:	02c19821 	addu	s3,s6,at
    1ee8:	30a5000f 	andi	a1,a1,0xf
    1eec:	30a5ffff 	andi	a1,a1,0xffff
    1ef0:	3052ffff 	andi	s2,v0,0xffff
    1ef4:	0c000000 	jal	0 <func_801069B0>
    1ef8:	02202025 	move	a0,s1
    1efc:	24080009 	li	t0,9
    1f00:	2409000a 	li	t1,10
    1f04:	240a000b 	li	t2,11
    1f08:	240b000c 	li	t3,12
    1f0c:	240c000d 	li	t4,13
    1f10:	240d0004 	li	t5,4
    1f14:	10000409 	b	2f3c <L801097E4+0x108>
    1f18:	966363d2 	lhu	v1,25554(s3)

00001f1c <L801088CC>:
    1f1c:	861863d8 	lh	t8,25560(s0)
    1f20:	26217fff 	addiu	at,s1,32767
    1f24:	26c37fff 	addiu	v1,s6,32767
    1f28:	270e0006 	addiu	t6,t8,6
    1f2c:	a42e63d9 	sh	t6,25561(at)
    1f30:	10000402 	b	2f3c <L801097E4+0x108>
    1f34:	946363d3 	lhu	v1,25555(v1)

00001f38 <L801088E8>:
    1f38:	920f6304 	lbu	t7,25348(s0)
    1f3c:	3c190000 	lui	t9,0x0
    1f40:	568f0021 	bnel	s4,t7,1fc8 <L801088E8+0x90>
    1f44:	8fb80120 	lw	t8,288(sp)
    1f48:	93390000 	lbu	t9,0(t9)
    1f4c:	00002025 	move	a0,zero
    1f50:	240e0004 	li	t6,4
    1f54:	17200016 	bnez	t9,1fb0 <L801088E8+0x78>
    1f58:	26217fff 	addiu	at,s1,32767
    1f5c:	8faf0138 	lw	t7,312(sp)
    1f60:	3c180000 	lui	t8,0x0
    1f64:	3c0e0000 	lui	t6,0x0
    1f68:	25ce0000 	addiu	t6,t6,0
    1f6c:	27070000 	addiu	a3,t8,0
    1f70:	3c050000 	lui	a1,0x0
    1f74:	25f92200 	addiu	t9,t7,8704
    1f78:	afb90058 	sw	t9,88(sp)
    1f7c:	24a50000 	addiu	a1,a1,0
    1f80:	afa70010 	sw	a3,16(sp)
    1f84:	afae0014 	sw	t6,20(sp)
    1f88:	0c000000 	jal	0 <func_801069B0>
    1f8c:	24060004 	li	a2,4
    1f90:	24180034 	li	t8,52
    1f94:	26217fff 	addiu	at,s1,32767
    1f98:	a0386305 	sb	t8,25349(at)
    1f9c:	8fa40058 	lw	a0,88(sp)
    1fa0:	0c000000 	jal	0 <func_801069B0>
    1fa4:	00002825 	move	a1,zero
    1fa8:	10000007 	b	1fc8 <L801088E8+0x90>
    1fac:	8fb80120 	lw	t8,288(sp)
    1fb0:	a02e6305 	sb	t6,25349(at)
    1fb4:	a42063d7 	sh	zero,25559(at)
    1fb8:	960f63ce 	lhu	t7,25550(s0)
    1fbc:	25f90001 	addiu	t9,t7,1
    1fc0:	a43963cf 	sh	t9,25551(at)
    1fc4:	8fb80120 	lw	t8,288(sp)
    1fc8:	8fae013c 	lw	t6,316(sp)
    1fcc:	100003ee 	b	2f88 <L801097E4+0x154>
    1fd0:	add80000 	sw	t8,0(t6)

00001fd4 <L80108984>:
    1fd4:	26420001 	addiu	v0,s2,1
    1fd8:	3047ffff 	andi	a3,v0,0xffff
    1fdc:	0227c821 	addu	t9,s1,a3
    1fe0:	0335c021 	addu	t8,t9,s5
    1fe4:	930e6306 	lbu	t6,25350(t8)
    1fe8:	860f63d8 	lh	t7,25560(s0)
    1fec:	26217fff 	addiu	at,s1,32767
    1ff0:	26c37fff 	addiu	v1,s6,32767
    1ff4:	01eec821 	addu	t9,t7,t6
    1ff8:	a43963d9 	sh	t9,25561(at)
    1ffc:	3052ffff 	andi	s2,v0,0xffff
    2000:	100003ce 	b	2f3c <L801097E4+0x108>
    2004:	946363d3 	lhu	v1,25555(v1)

00002008 <L801089B8>:
    2008:	24180030 	li	t8,48
    200c:	26217fff 	addiu	at,s1,32767
    2010:	a03863e5 	sb	t8,25573(at)
    2014:	920f6304 	lbu	t7,25348(s0)
    2018:	3c050000 	lui	a1,0x0
    201c:	24a50000 	addiu	a1,a1,0
    2020:	168f0012 	bne	s4,t7,206c <L801089B8+0x64>
    2024:	00002025 	move	a0,zero
    2028:	8fb80138 	lw	t8,312(sp)
    202c:	3c0e0000 	lui	t6,0x0
    2030:	3c190000 	lui	t9,0x0
    2034:	27390000 	addiu	t9,t9,0
    2038:	25c70000 	addiu	a3,t6,0
    203c:	270f2200 	addiu	t7,t8,8704
    2040:	afaf0058 	sw	t7,88(sp)
    2044:	afa70010 	sw	a3,16(sp)
    2048:	afb90014 	sw	t9,20(sp)
    204c:	0c000000 	jal	0 <func_801069B0>
    2050:	24060004 	li	a2,4
    2054:	240e0035 	li	t6,53
    2058:	26217fff 	addiu	at,s1,32767
    205c:	a02e6305 	sb	t6,25349(at)
    2060:	8fa40058 	lw	a0,88(sp)
    2064:	0c000000 	jal	0 <func_801069B0>
    2068:	00002825 	move	a1,zero
    206c:	8fb90120 	lw	t9,288(sp)
    2070:	8fb8013c 	lw	t8,316(sp)
    2074:	100003c4 	b	2f88 <L801097E4+0x154>
    2078:	af190000 	sw	t9,0(t8)

0000207c <L80108A2C>:
    207c:	960f63d2 	lhu	t7,25554(s0)
    2080:	264e0001 	addiu	t6,s2,1
    2084:	55ee0028 	bnel	t7,t6,2128 <L80108AD4+0x4>
    2088:	26c37fff 	addiu	v1,s6,32767
    208c:	92026304 	lbu	v0,25348(s0)
    2090:	3244ffff 	andi	a0,s2,0xffff
    2094:	12820005 	beq	s4,v0,20ac <L80108A2C+0x30>
    2098:	28410009 	slti	at,v0,9
    209c:	14200021 	bnez	at,2124 <L80108AD4>
    20a0:	28410021 	slti	at,v0,33
    20a4:	50200020 	beqzl	at,2128 <L80108AD4+0x4>
    20a8:	26c37fff 	addiu	v1,s6,32767
    20ac:	0224c821 	addu	t9,s1,a0
    20b0:	0335c021 	addu	t8,t9,s5
    20b4:	93026306 	lbu	v0,25350(t8)
    20b8:	16820004 	bne	s4,v0,20cc <L80108A2C+0x50>
    20bc:	00000000 	nop
    20c0:	24840002 	addiu	a0,a0,2
    20c4:	1000fff9 	b	20ac <L80108A2C+0x30>
    20c8:	3084ffff 	andi	a0,a0,0xffff
    20cc:	51020011 	beql	t0,v0,2114 <L80108A2C+0x98>
    20d0:	248fffff 	addiu	t7,a0,-1
    20d4:	5122000f 	beql	t1,v0,2114 <L80108A2C+0x98>
    20d8:	248fffff 	addiu	t7,a0,-1
    20dc:	5142000d 	beql	t2,v0,2114 <L80108A2C+0x98>
    20e0:	248fffff 	addiu	t7,a0,-1
    20e4:	5162000b 	beql	t3,v0,2114 <L80108A2C+0x98>
    20e8:	248fffff 	addiu	t7,a0,-1
    20ec:	51820009 	beql	t4,v0,2114 <L80108A2C+0x98>
    20f0:	248fffff 	addiu	t7,a0,-1
    20f4:	51a20007 	beql	t5,v0,2114 <L80108A2C+0x98>
    20f8:	248fffff 	addiu	t7,a0,-1
    20fc:	53c20005 	beql	s8,v0,2114 <L80108A2C+0x98>
    2100:	248fffff 	addiu	t7,a0,-1
    2104:	24840001 	addiu	a0,a0,1
    2108:	1000ffe8 	b	20ac <L80108A2C+0x30>
    210c:	3084ffff 	andi	a0,a0,0xffff
    2110:	248fffff 	addiu	t7,a0,-1
    2114:	25ee0001 	addiu	t6,t7,1
    2118:	26217fff 	addiu	at,s1,32767
    211c:	31f2ffff 	andi	s2,t7,0xffff
    2120:	a42e63d3 	sh	t6,25555(at)

00002124 <L80108AD4>:
    2124:	26c37fff 	addiu	v1,s6,32767
    2128:	10000384 	b	2f3c <L801097E4+0x108>
    212c:	946363d3 	lhu	v1,25555(v1)

00002130 <L80108AE0>:
    2130:	961963d2 	lhu	t9,25554(s0)
    2134:	26580001 	addiu	t8,s2,1
    2138:	26c37fff 	addiu	v1,s6,32767
    213c:	1738000f 	bne	t9,t8,217c <L80108AE0+0x4c>
    2140:	00000000 	nop
    2144:	920f6304 	lbu	t7,25348(s0)
    2148:	240e0007 	li	t6,7
    214c:	26217fff 	addiu	at,s1,32767
    2150:	568f0007 	bnel	s4,t7,2170 <L80108AE0+0x40>
    2154:	8fb90120 	lw	t9,288(sp)
    2158:	a02e6305 	sb	t6,25349(at)
    215c:	8fa40138 	lw	a0,312(sp)
    2160:	00002825 	move	a1,zero
    2164:	0c000000 	jal	0 <func_801069B0>
    2168:	24842200 	addiu	a0,a0,8704
    216c:	8fb90120 	lw	t9,288(sp)
    2170:	8fb8013c 	lw	t8,316(sp)
    2174:	10000384 	b	2f88 <L801097E4+0x154>
    2178:	af190000 	sw	t9,0(t8)
    217c:	1000036f 	b	2f3c <L801097E4+0x108>
    2180:	946363d3 	lhu	v1,25555(v1)

00002184 <L80108B34>:
    2184:	920f6304 	lbu	t7,25348(s0)
    2188:	26470001 	addiu	a3,s2,1
    218c:	30e7ffff 	andi	a3,a3,0xffff
    2190:	168f0007 	bne	s4,t7,21b0 <L80108B34+0x2c>
    2194:	02277021 	addu	t6,s1,a3
    2198:	01d5c821 	addu	t9,t6,s5
    219c:	93386306 	lbu	t8,25350(t9)
    21a0:	26217fff 	addiu	at,s1,32767
    21a4:	240f0008 	li	t7,8
    21a8:	a02f6305 	sb	t7,25349(at)
    21ac:	a03863e8 	sb	t8,25576(at)
    21b0:	8fae0120 	lw	t6,288(sp)
    21b4:	8fb9013c 	lw	t9,316(sp)
    21b8:	10000373 	b	2f88 <L801097E4+0x154>
    21bc:	af2e0000 	sw	t6,0(t9)

000021c0 <L80108B70>:
    21c0:	92186304 	lbu	t8,25348(s0)
    21c4:	240f0035 	li	t7,53
    21c8:	26217fff 	addiu	at,s1,32767
    21cc:	1698001f 	bne	s4,t8,224c <L80108B70+0x8c>
    21d0:	240e0060 	li	t6,96
    21d4:	0232c821 	addu	t9,s1,s2
    21d8:	a02f6305 	sb	t7,25349(at)
    21dc:	a02e63e5 	sb	t6,25573(at)
    21e0:	03351821 	addu	v1,t9,s5
    21e4:	3c040000 	lui	a0,0x0
    21e8:	24840000 	addiu	a0,a0,0
    21ec:	90656307 	lbu	a1,25351(v1)
    21f0:	0c000000 	jal	0 <func_801069B0>
    21f4:	90666308 	lbu	a2,25352(v1)
    21f8:	26420001 	addiu	v0,s2,1
    21fc:	3047ffff 	andi	a3,v0,0xffff
    2200:	0227c021 	addu	t8,s1,a3
    2204:	03157821 	addu	t7,t8,s5
    2208:	91ee6306 	lbu	t6,25350(t7)
    220c:	24470001 	addiu	a3,v0,1
    2210:	26217fff 	addiu	at,s1,32767
    2214:	30e7ffff 	andi	a3,a3,0xffff
    2218:	000eca00 	sll	t9,t6,0x8
    221c:	a03963e8 	sb	t9,25576(at)
    2220:	02277821 	addu	t7,s1,a3
    2224:	01f57021 	addu	t6,t7,s5
    2228:	91d96306 	lbu	t9,25350(t6)
    222c:	921863e7 	lbu	t8,25575(s0)
    2230:	3c040000 	lui	a0,0x0
    2234:	24840000 	addiu	a0,a0,0
    2238:	03197825 	or	t7,t8,t9
    223c:	a02f63e8 	sb	t7,25576(at)
    2240:	920563e7 	lbu	a1,25575(s0)
    2244:	0c000000 	jal	0 <func_801069B0>
    2248:	00a03025 	move	a2,a1
    224c:	8fae0120 	lw	t6,288(sp)
    2250:	8fb8013c 	lw	t8,316(sp)
    2254:	1000034c 	b	2f88 <L801097E4+0x154>
    2258:	af0e0000 	sw	t6,0(t8)

0000225c <L80108C0C>:
    225c:	afb20050 	sw	s2,80(sp)
    2260:	92196304 	lbu	t9,25348(s0)
    2264:	34018000 	li	at,0x8000
    2268:	02c19821 	addu	s3,s6,at
    226c:	16990021 	bne	s4,t9,22f4 <L80108C0C+0x98>
    2270:	3c0f0000 	lui	t7,0x0
    2274:	85ef0000 	lh	t7,0(t7)
    2278:	240e0001 	li	t6,1
    227c:	3c010000 	lui	at,0x0
    2280:	15e0001c 	bnez	t7,22f4 <L80108C0C+0x98>
    2284:	3c040000 	lui	a0,0x0
    2288:	a42e0000 	sh	t6,0(at)
    228c:	0c000000 	jal	0 <func_801069B0>
    2290:	24840000 	addiu	a0,a0,0
    2294:	8fb80050 	lw	t8,80(sp)
    2298:	3c070000 	lui	a3,0x0
    229c:	3c0e0000 	lui	t6,0x0
    22a0:	0238c821 	addu	t9,s1,t8
    22a4:	03351821 	addu	v1,t9,s5
    22a8:	90626307 	lbu	v0,25351(v1)
    22ac:	906f6308 	lbu	t7,25352(v1)
    22b0:	24e70000 	addiu	a3,a3,0
    22b4:	00021200 	sll	v0,v0,0x8
    22b8:	25ce0000 	addiu	t6,t6,0
    22bc:	3c050000 	lui	a1,0x0
    22c0:	01e22025 	or	a0,t7,v0
    22c4:	3084ffff 	andi	a0,a0,0xffff
    22c8:	24a50000 	addiu	a1,a1,0
    22cc:	afae0014 	sw	t6,20(sp)
    22d0:	afa70010 	sw	a3,16(sp)
    22d4:	0c000000 	jal	0 <func_801069B0>
    22d8:	24060004 	li	a2,4
    22dc:	24080009 	li	t0,9
    22e0:	2409000a 	li	t1,10
    22e4:	240a000b 	li	t2,11
    22e8:	240b000c 	li	t3,12
    22ec:	240c000d 	li	t4,13
    22f0:	240d0004 	li	t5,4
    22f4:	8fb20050 	lw	s2,80(sp)
    22f8:	966363d2 	lhu	v1,25554(s3)
    22fc:	26520002 	addiu	s2,s2,2
    2300:	1000030e 	b	2f3c <L801097E4+0x108>
    2304:	3252ffff 	andi	s2,s2,0xffff

00002308 <L80108CB8>:
    2308:	0232c021 	addu	t8,s1,s2
    230c:	0315c821 	addu	t9,t8,s5
    2310:	34018000 	li	at,0x8000
    2314:	02c19821 	addu	s3,s6,at
    2318:	93256307 	lbu	a1,25351(t9)
    231c:	8fa40138 	lw	a0,312(sp)
    2320:	27a60120 	addiu	a2,sp,288
    2324:	0c000000 	jal	0 <func_801069B0>
    2328:	3247ffff 	andi	a3,s2,0xffff
    232c:	24080009 	li	t0,9
    2330:	2409000a 	li	t1,10
    2334:	240a000b 	li	t2,11
    2338:	240b000c 	li	t3,12
    233c:	240c000d 	li	t4,13
    2340:	240d0004 	li	t5,4
    2344:	3052ffff 	andi	s2,v0,0xffff
    2348:	100002fc 	b	2f3c <L801097E4+0x108>
    234c:	966363d2 	lhu	v1,25554(s3)

00002350 <L80108D00>:
    2350:	920f6304 	lbu	t7,25348(s0)
    2354:	34018000 	li	at,0x8000
    2358:	02c19821 	addu	s3,s6,at
    235c:	168f0011 	bne	s4,t7,23a4 <L80108D00+0x54>
    2360:	3c070000 	lui	a3,0x0
    2364:	3c0e0000 	lui	t6,0x0
    2368:	25ce0000 	addiu	t6,t6,0
    236c:	24e70000 	addiu	a3,a3,0
    2370:	3c050000 	lui	a1,0x0
    2374:	24a50000 	addiu	a1,a1,0
    2378:	afa70010 	sw	a3,16(sp)
    237c:	afae0014 	sw	t6,20(sp)
    2380:	00002025 	move	a0,zero
    2384:	0c000000 	jal	0 <func_801069B0>
    2388:	24060004 	li	a2,4
    238c:	24080009 	li	t0,9
    2390:	2409000a 	li	t1,10
    2394:	240a000b 	li	t2,11
    2398:	240b000c 	li	t3,12
    239c:	240c000d 	li	t4,13
    23a0:	240d0004 	li	t5,4
    23a4:	8fb80120 	lw	t8,288(sp)
    23a8:	3c0fe700 	lui	t7,0xe700
    23ac:	3c01e400 	lui	at,0xe400
    23b0:	27190008 	addiu	t9,t8,8
    23b4:	afb90120 	sw	t9,288(sp)
    23b8:	af000004 	sw	zero,4(t8)
    23bc:	af0f0000 	sw	t7,0(t8)
    23c0:	8fae0120 	lw	t6,288(sp)
    23c4:	3c0fff2f 	lui	t7,0xff2f
    23c8:	3c19fc11 	lui	t9,0xfc11
    23cc:	25d80008 	addiu	t8,t6,8
    23d0:	afb80120 	sw	t8,288(sp)
    23d4:	37399623 	ori	t9,t9,0x9623
    23d8:	35efffff 	ori	t7,t7,0xffff
    23dc:	adcf0004 	sw	t7,4(t6)
    23e0:	add90000 	sw	t9,0(t6)
    23e4:	8fa30120 	lw	v1,288(sp)
    23e8:	3c19fa00 	lui	t9,0xfa00
    23ec:	24780008 	addiu	t8,v1,8
    23f0:	afb80120 	sw	t8,288(sp)
    23f4:	ac790000 	sw	t9,0(v1)
    23f8:	920f63f9 	lbu	t7,25593(s0)
    23fc:	3c180000 	lui	t8,0x0
    2400:	27180000 	addiu	t8,t8,0
    2404:	000f7080 	sll	t6,t7,0x2
    2408:	01cf7023 	subu	t6,t6,t7
    240c:	000e7040 	sll	t6,t6,0x1
    2410:	01d81021 	addu	v0,t6,t8
    2414:	84590004 	lh	t9,4(v0)
    2418:	332f00ff 	andi	t7,t9,0xff
    241c:	84590000 	lh	t9,0(v0)
    2420:	000f7200 	sll	t6,t7,0x8
    2424:	00197e00 	sll	t7,t9,0x18
    2428:	84590002 	lh	t9,2(v0)
    242c:	01cfc025 	or	t8,t6,t7
    2430:	332e00ff 	andi	t6,t9,0xff
    2434:	000e7c00 	sll	t7,t6,0x10
    2438:	860e63e2 	lh	t6,25570(s0)
    243c:	030fc825 	or	t9,t8,t7
    2440:	31d800ff 	andi	t8,t6,0xff
    2444:	03387825 	or	t7,t9,t8
    2448:	ac6f0004 	sw	t7,4(v1)
    244c:	8fa20120 	lw	v0,288(sp)
    2450:	3c18fd90 	lui	t8,0xfd90
    2454:	3c030000 	lui	v1,0x0
    2458:	24590008 	addiu	t9,v0,8
    245c:	afb90120 	sw	t9,288(sp)
    2460:	ac580000 	sw	t8,0(v0)
    2464:	8e0f62b0 	lw	t7,25264(s0)
    2468:	24630000 	addiu	v1,v1,0
    246c:	25ee1000 	addiu	t6,t7,4096
    2470:	ac4e0004 	sw	t6,4(v0)
    2474:	8fb90120 	lw	t9,288(sp)
    2478:	3c0e0700 	lui	t6,0x700
    247c:	3c0ff590 	lui	t7,0xf590
    2480:	27380008 	addiu	t8,t9,8
    2484:	afb80120 	sw	t8,288(sp)
    2488:	af2e0004 	sw	t6,4(t9)
    248c:	af2f0000 	sw	t7,0(t9)
    2490:	8fb90120 	lw	t9,288(sp)
    2494:	3c0fe600 	lui	t7,0xe600
    2498:	27380008 	addiu	t8,t9,8
    249c:	afb80120 	sw	t8,288(sp)
    24a0:	af200004 	sw	zero,4(t9)
    24a4:	af2f0000 	sw	t7,0(t9)
    24a8:	8fae0120 	lw	t6,288(sp)
    24ac:	3c0f0747 	lui	t7,0x747
    24b0:	35eff156 	ori	t7,t7,0xf156
    24b4:	25d90008 	addiu	t9,t6,8
    24b8:	afb90120 	sw	t9,288(sp)
    24bc:	3c18f300 	lui	t8,0xf300
    24c0:	add80000 	sw	t8,0(t6)
    24c4:	adcf0004 	sw	t7,4(t6)
    24c8:	8fae0120 	lw	t6,288(sp)
    24cc:	3c18e700 	lui	t8,0xe700
    24d0:	25d90008 	addiu	t9,t6,8
    24d4:	afb90120 	sw	t9,288(sp)
    24d8:	adc00004 	sw	zero,4(t6)
    24dc:	add80000 	sw	t8,0(t6)
    24e0:	8faf0120 	lw	t7,288(sp)
    24e4:	3c19f580 	lui	t9,0xf580
    24e8:	37390c00 	ori	t9,t9,0xc00
    24ec:	25ee0008 	addiu	t6,t7,8
    24f0:	afae0120 	sw	t6,288(sp)
    24f4:	ade00004 	sw	zero,4(t7)
    24f8:	adf90000 	sw	t9,0(t7)
    24fc:	8fb80120 	lw	t8,288(sp)
    2500:	3c190017 	lui	t9,0x17
    2504:	3739c0bc 	ori	t9,t9,0xc0bc
    2508:	270f0008 	addiu	t7,t8,8
    250c:	afaf0120 	sw	t7,288(sp)
    2510:	3c0ef200 	lui	t6,0xf200
    2514:	af0e0000 	sw	t6,0(t8)
    2518:	af190004 	sw	t9,4(t8)
    251c:	8fa20120 	lw	v0,288(sp)
    2520:	244f0008 	addiu	t7,v0,8
    2524:	afaf0120 	sw	t7,288(sp)
    2528:	920e63fa 	lbu	t6,25594(s0)
    252c:	000ec840 	sll	t9,t6,0x1
    2530:	8eee0000 	lw	t6,0(s7)
    2534:	0079c021 	addu	t8,v1,t9
    2538:	870f0000 	lh	t7,0(t8)
    253c:	85d90b0e 	lh	t9,2830(t6)
    2540:	01f9c021 	addu	t8,t7,t9
    2544:	270e0030 	addiu	t6,t8,48
    2548:	000e7880 	sll	t7,t6,0x2
    254c:	860e63d8 	lh	t6,25560(s0)
    2550:	31f90fff 	andi	t9,t7,0xfff
    2554:	0321c025 	or	t8,t9,at
    2558:	25cf0061 	addiu	t7,t6,97
    255c:	000fc880 	sll	t9,t7,0x2
    2560:	332e0fff 	andi	t6,t9,0xfff
    2564:	000e7b00 	sll	t7,t6,0xc
    2568:	030fc825 	or	t9,t8,t7
    256c:	ac590000 	sw	t9,0(v0)
    2570:	920e63fa 	lbu	t6,25594(s0)
    2574:	000ec040 	sll	t8,t6,0x1
    2578:	8eee0000 	lw	t6,0(s7)
    257c:	00787821 	addu	t7,v1,t8
    2580:	85f90000 	lh	t9,0(t7)
    2584:	85d80b0e 	lh	t8,2830(t6)
    2588:	3c030000 	lui	v1,0x0
    258c:	24630000 	addiu	v1,v1,0
    2590:	03387821 	addu	t7,t9,t8
    2594:	861863d8 	lh	t8,25560(s0)
    2598:	000f7080 	sll	t6,t7,0x2
    259c:	31d90fff 	andi	t9,t6,0xfff
    25a0:	270f0001 	addiu	t7,t8,1
    25a4:	000f7080 	sll	t6,t7,0x2
    25a8:	31d80fff 	andi	t8,t6,0xfff
    25ac:	00187b00 	sll	t7,t8,0xc
    25b0:	032f7025 	or	t6,t9,t7
    25b4:	ac4e0004 	sw	t6,4(v0)
    25b8:	8fb80120 	lw	t8,288(sp)
    25bc:	3c0fe100 	lui	t7,0xe100
    25c0:	27190008 	addiu	t9,t8,8
    25c4:	afb90120 	sw	t9,288(sp)
    25c8:	af000004 	sw	zero,4(t8)
    25cc:	af0f0000 	sw	t7,0(t8)
    25d0:	8fae0120 	lw	t6,288(sp)
    25d4:	3c0f0400 	lui	t7,0x400
    25d8:	35ef0400 	ori	t7,t7,0x400
    25dc:	25d80008 	addiu	t8,t6,8
    25e0:	afb80120 	sw	t8,288(sp)
    25e4:	3c19f100 	lui	t9,0xf100
    25e8:	add90000 	sw	t9,0(t6)
    25ec:	adcf0004 	sw	t7,4(t6)
    25f0:	8fa20120 	lw	v0,288(sp)
    25f4:	3c19fd90 	lui	t9,0xfd90
    25f8:	24580008 	addiu	t8,v0,8
    25fc:	afb80120 	sw	t8,288(sp)
    2600:	ac590000 	sw	t9,0(v0)
    2604:	8e0f62b0 	lw	t7,25264(s0)
    2608:	25ee1900 	addiu	t6,t7,6400
    260c:	ac4e0004 	sw	t6,4(v0)
    2610:	8fb80120 	lw	t8,288(sp)
    2614:	3c0e0700 	lui	t6,0x700
    2618:	3c0ff590 	lui	t7,0xf590
    261c:	27190008 	addiu	t9,t8,8
    2620:	afb90120 	sw	t9,288(sp)
    2624:	af0e0004 	sw	t6,4(t8)
    2628:	af0f0000 	sw	t7,0(t8)
    262c:	8fb80120 	lw	t8,288(sp)
    2630:	3c0fe600 	lui	t7,0xe600
    2634:	27190008 	addiu	t9,t8,8
    2638:	afb90120 	sw	t9,288(sp)
    263c:	af000004 	sw	zero,4(t8)
    2640:	af0f0000 	sw	t7,0(t8)
    2644:	8fae0120 	lw	t6,288(sp)
    2648:	3c0f0747 	lui	t7,0x747
    264c:	35eff156 	ori	t7,t7,0xf156
    2650:	25d80008 	addiu	t8,t6,8
    2654:	afb80120 	sw	t8,288(sp)
    2658:	3c19f300 	lui	t9,0xf300
    265c:	add90000 	sw	t9,0(t6)
    2660:	adcf0004 	sw	t7,4(t6)
    2664:	8fae0120 	lw	t6,288(sp)
    2668:	3c19e700 	lui	t9,0xe700
    266c:	25d80008 	addiu	t8,t6,8
    2670:	afb80120 	sw	t8,288(sp)
    2674:	adc00004 	sw	zero,4(t6)
    2678:	add90000 	sw	t9,0(t6)
    267c:	8faf0120 	lw	t7,288(sp)
    2680:	3c18f580 	lui	t8,0xf580
    2684:	37180c00 	ori	t8,t8,0xc00
    2688:	25ee0008 	addiu	t6,t7,8
    268c:	afae0120 	sw	t6,288(sp)
    2690:	ade00004 	sw	zero,4(t7)
    2694:	adf80000 	sw	t8,0(t7)
    2698:	8fb90120 	lw	t9,288(sp)
    269c:	3c180017 	lui	t8,0x17
    26a0:	3718c0bc 	ori	t8,t8,0xc0bc
    26a4:	272f0008 	addiu	t7,t9,8
    26a8:	afaf0120 	sw	t7,288(sp)
    26ac:	3c0ef200 	lui	t6,0xf200
    26b0:	af2e0000 	sw	t6,0(t9)
    26b4:	af380004 	sw	t8,4(t9)
    26b8:	8fa20120 	lw	v0,288(sp)
    26bc:	244f0008 	addiu	t7,v0,8
    26c0:	afaf0120 	sw	t7,288(sp)
    26c4:	920e63fa 	lbu	t6,25594(s0)
    26c8:	000ec040 	sll	t8,t6,0x1
    26cc:	8eee0000 	lw	t6,0(s7)
    26d0:	0078c821 	addu	t9,v1,t8
    26d4:	872f0000 	lh	t7,0(t9)
    26d8:	85d80b0e 	lh	t8,2830(t6)
    26dc:	01f8c821 	addu	t9,t7,t8
    26e0:	272e0030 	addiu	t6,t9,48
    26e4:	000e7880 	sll	t7,t6,0x2
    26e8:	860e63d8 	lh	t6,25560(s0)
    26ec:	31f80fff 	andi	t8,t7,0xfff
    26f0:	0301c825 	or	t9,t8,at
    26f4:	25cf00c2 	addiu	t7,t6,194
    26f8:	000fc080 	sll	t8,t7,0x2
    26fc:	330e0fff 	andi	t6,t8,0xfff
    2700:	000e7b00 	sll	t7,t6,0xc
    2704:	032fc025 	or	t8,t9,t7
    2708:	ac580000 	sw	t8,0(v0)
    270c:	920e63fa 	lbu	t6,25594(s0)
    2710:	000ec840 	sll	t9,t6,0x1
    2714:	8eee0000 	lw	t6,0(s7)
    2718:	00797821 	addu	t7,v1,t9
    271c:	85f80000 	lh	t8,0(t7)
    2720:	85d90b0e 	lh	t9,2830(t6)
    2724:	03197821 	addu	t7,t8,t9
    2728:	861963d8 	lh	t9,25560(s0)
    272c:	000f7080 	sll	t6,t7,0x2
    2730:	31d80fff 	andi	t8,t6,0xfff
    2734:	272f0061 	addiu	t7,t9,97
    2738:	000f7080 	sll	t6,t7,0x2
    273c:	31d90fff 	andi	t9,t6,0xfff
    2740:	00197b00 	sll	t7,t9,0xc
    2744:	030f7025 	or	t6,t8,t7
    2748:	ac4e0004 	sw	t6,4(v0)
    274c:	8fb90120 	lw	t9,288(sp)
    2750:	3c0fe100 	lui	t7,0xe100
    2754:	27380008 	addiu	t8,t9,8
    2758:	afb80120 	sw	t8,288(sp)
    275c:	af200004 	sw	zero,4(t9)
    2760:	af2f0000 	sw	t7,0(t9)
    2764:	8fae0120 	lw	t6,288(sp)
    2768:	3c0f0400 	lui	t7,0x400
    276c:	35ef0400 	ori	t7,t7,0x400
    2770:	25d90008 	addiu	t9,t6,8
    2774:	afb90120 	sw	t9,288(sp)
    2778:	3c18f100 	lui	t8,0xf100
    277c:	add80000 	sw	t8,0(t6)
    2780:	adcf0004 	sw	t7,4(t6)
    2784:	8fae0120 	lw	t6,288(sp)
    2788:	3c18e700 	lui	t8,0xe700
    278c:	25d90008 	addiu	t9,t6,8
    2790:	afb90120 	sw	t9,288(sp)
    2794:	adc00004 	sw	zero,4(t6)
    2798:	add80000 	sw	t8,0(t6)
    279c:	8faf0120 	lw	t7,288(sp)
    27a0:	3c19fa00 	lui	t9,0xfa00
    27a4:	01e01825 	move	v1,t7
    27a8:	25ee0008 	addiu	t6,t7,8
    27ac:	afae0120 	sw	t6,288(sp)
    27b0:	ac790000 	sw	t9,0(v1)
    27b4:	921863f8 	lbu	t8,25592(s0)
    27b8:	3c0e0000 	lui	t6,0x0
    27bc:	25ce0000 	addiu	t6,t6,0
    27c0:	00187880 	sll	t7,t8,0x2
    27c4:	01f87823 	subu	t7,t7,t8
    27c8:	000f7840 	sll	t7,t7,0x1
    27cc:	01ee1021 	addu	v0,t7,t6
    27d0:	84590004 	lh	t9,4(v0)
    27d4:	3c01e400 	lui	at,0xe400
    27d8:	333800ff 	andi	t8,t9,0xff
    27dc:	84590000 	lh	t9,0(v0)
    27e0:	00187a00 	sll	t7,t8,0x8
    27e4:	0019c600 	sll	t8,t9,0x18
    27e8:	84590002 	lh	t9,2(v0)
    27ec:	01f87025 	or	t6,t7,t8
    27f0:	332f00ff 	andi	t7,t9,0xff
    27f4:	000fc400 	sll	t8,t7,0x10
    27f8:	860f63e2 	lh	t7,25570(s0)
    27fc:	01d8c825 	or	t9,t6,t8
    2800:	31ee00ff 	andi	t6,t7,0xff
    2804:	032ec025 	or	t8,t9,t6
    2808:	ac780004 	sw	t8,4(v1)
    280c:	8fa20120 	lw	v0,288(sp)
    2810:	3c0efd90 	lui	t6,0xfd90
    2814:	24590008 	addiu	t9,v0,8
    2818:	afb90120 	sw	t9,288(sp)
    281c:	ac4e0000 	sw	t6,0(v0)
    2820:	8e1862b0 	lw	t8,25264(s0)
    2824:	270f1000 	addiu	t7,t8,4096
    2828:	ac4f0004 	sw	t7,4(v0)
    282c:	8fb90120 	lw	t9,288(sp)
    2830:	3c0f0700 	lui	t7,0x700
    2834:	3c18f590 	lui	t8,0xf590
    2838:	272e0008 	addiu	t6,t9,8
    283c:	afae0120 	sw	t6,288(sp)
    2840:	af2f0004 	sw	t7,4(t9)
    2844:	af380000 	sw	t8,0(t9)
    2848:	8fb90120 	lw	t9,288(sp)
    284c:	3c18e600 	lui	t8,0xe600
    2850:	272e0008 	addiu	t6,t9,8
    2854:	afae0120 	sw	t6,288(sp)
    2858:	af200004 	sw	zero,4(t9)
    285c:	af380000 	sw	t8,0(t9)
    2860:	8faf0120 	lw	t7,288(sp)
    2864:	3c180747 	lui	t8,0x747
    2868:	3718f156 	ori	t8,t8,0xf156
    286c:	25f90008 	addiu	t9,t7,8
    2870:	afb90120 	sw	t9,288(sp)
    2874:	3c0ef300 	lui	t6,0xf300
    2878:	adee0000 	sw	t6,0(t7)
    287c:	adf80004 	sw	t8,4(t7)
    2880:	8faf0120 	lw	t7,288(sp)
    2884:	3c0ee700 	lui	t6,0xe700
    2888:	25f90008 	addiu	t9,t7,8
    288c:	afb90120 	sw	t9,288(sp)
    2890:	ade00004 	sw	zero,4(t7)
    2894:	adee0000 	sw	t6,0(t7)
    2898:	8fb80120 	lw	t8,288(sp)
    289c:	3c19f580 	lui	t9,0xf580
    28a0:	37390c00 	ori	t9,t9,0xc00
    28a4:	270f0008 	addiu	t7,t8,8
    28a8:	afaf0120 	sw	t7,288(sp)
    28ac:	af000004 	sw	zero,4(t8)
    28b0:	af190000 	sw	t9,0(t8)
    28b4:	8fae0120 	lw	t6,288(sp)
    28b8:	3c190017 	lui	t9,0x17
    28bc:	3739c0bc 	ori	t9,t9,0xc0bc
    28c0:	25d80008 	addiu	t8,t6,8
    28c4:	afb80120 	sw	t8,288(sp)
    28c8:	3c0ff200 	lui	t7,0xf200
    28cc:	adcf0000 	sw	t7,0(t6)
    28d0:	add90004 	sw	t9,4(t6)
    28d4:	8fa20120 	lw	v0,288(sp)
    28d8:	8eef0000 	lw	t7,0(s7)
    28dc:	24580008 	addiu	t8,v0,8
    28e0:	afb80120 	sw	t8,288(sp)
    28e4:	85f90b0e 	lh	t9,2830(t7)
    28e8:	272e0030 	addiu	t6,t9,48
    28ec:	000ec080 	sll	t8,t6,0x2
    28f0:	860e63d8 	lh	t6,25560(s0)
    28f4:	330f0fff 	andi	t7,t8,0xfff
    28f8:	01e1c825 	or	t9,t7,at
    28fc:	25d80060 	addiu	t8,t6,96
    2900:	00187880 	sll	t7,t8,0x2
    2904:	31ee0fff 	andi	t6,t7,0xfff
    2908:	000ec300 	sll	t8,t6,0xc
    290c:	03387825 	or	t7,t9,t8
    2910:	ac4f0000 	sw	t7,0(v0)
    2914:	8eee0000 	lw	t6,0(s7)
    2918:	85d90b0e 	lh	t9,2830(t6)
    291c:	860e63d8 	lh	t6,25560(s0)
    2920:	0019c080 	sll	t8,t9,0x2
    2924:	330f0fff 	andi	t7,t8,0xfff
    2928:	000ec880 	sll	t9,t6,0x2
    292c:	33380fff 	andi	t8,t9,0xfff
    2930:	00187300 	sll	t6,t8,0xc
    2934:	01eec825 	or	t9,t7,t6
    2938:	ac590004 	sw	t9,4(v0)
    293c:	8fb80120 	lw	t8,288(sp)
    2940:	3c0ee100 	lui	t6,0xe100
    2944:	270f0008 	addiu	t7,t8,8
    2948:	afaf0120 	sw	t7,288(sp)
    294c:	af000004 	sw	zero,4(t8)
    2950:	af0e0000 	sw	t6,0(t8)
    2954:	8fb90120 	lw	t9,288(sp)
    2958:	3c0e0400 	lui	t6,0x400
    295c:	35ce0400 	ori	t6,t6,0x400
    2960:	27380008 	addiu	t8,t9,8
    2964:	afb80120 	sw	t8,288(sp)
    2968:	3c0ff100 	lui	t7,0xf100
    296c:	af2f0000 	sw	t7,0(t9)
    2970:	af2e0004 	sw	t6,4(t9)
    2974:	8fa20120 	lw	v0,288(sp)
    2978:	3c0ffd90 	lui	t7,0xfd90
    297c:	24580008 	addiu	t8,v0,8
    2980:	afb80120 	sw	t8,288(sp)
    2984:	ac4f0000 	sw	t7,0(v0)
    2988:	8e0e62b0 	lw	t6,25264(s0)
    298c:	25d91900 	addiu	t9,t6,6400
    2990:	ac590004 	sw	t9,4(v0)
    2994:	8fb80120 	lw	t8,288(sp)
    2998:	3c190700 	lui	t9,0x700
    299c:	3c0ef590 	lui	t6,0xf590
    29a0:	270f0008 	addiu	t7,t8,8
    29a4:	afaf0120 	sw	t7,288(sp)
    29a8:	af190004 	sw	t9,4(t8)
    29ac:	af0e0000 	sw	t6,0(t8)
    29b0:	8fb80120 	lw	t8,288(sp)
    29b4:	3c0ee600 	lui	t6,0xe600
    29b8:	270f0008 	addiu	t7,t8,8
    29bc:	afaf0120 	sw	t7,288(sp)
    29c0:	af000004 	sw	zero,4(t8)
    29c4:	af0e0000 	sw	t6,0(t8)
    29c8:	8fb90120 	lw	t9,288(sp)
    29cc:	3c0e0747 	lui	t6,0x747
    29d0:	35cef156 	ori	t6,t6,0xf156
    29d4:	27380008 	addiu	t8,t9,8
    29d8:	afb80120 	sw	t8,288(sp)
    29dc:	3c0ff300 	lui	t7,0xf300
    29e0:	af2f0000 	sw	t7,0(t9)
    29e4:	af2e0004 	sw	t6,4(t9)
    29e8:	8fb90120 	lw	t9,288(sp)
    29ec:	3c0fe700 	lui	t7,0xe700
    29f0:	27380008 	addiu	t8,t9,8
    29f4:	afb80120 	sw	t8,288(sp)
    29f8:	af200004 	sw	zero,4(t9)
    29fc:	af2f0000 	sw	t7,0(t9)
    2a00:	8fae0120 	lw	t6,288(sp)
    2a04:	3c18f580 	lui	t8,0xf580
    2a08:	37180c00 	ori	t8,t8,0xc00
    2a0c:	25d90008 	addiu	t9,t6,8
    2a10:	afb90120 	sw	t9,288(sp)
    2a14:	adc00004 	sw	zero,4(t6)
    2a18:	add80000 	sw	t8,0(t6)
    2a1c:	8faf0120 	lw	t7,288(sp)
    2a20:	3c180017 	lui	t8,0x17
    2a24:	3718c0bc 	ori	t8,t8,0xc0bc
    2a28:	25ee0008 	addiu	t6,t7,8
    2a2c:	afae0120 	sw	t6,288(sp)
    2a30:	3c19f200 	lui	t9,0xf200
    2a34:	adf90000 	sw	t9,0(t7)
    2a38:	adf80004 	sw	t8,4(t7)
    2a3c:	8fa20120 	lw	v0,288(sp)
    2a40:	8ef90000 	lw	t9,0(s7)
    2a44:	244e0008 	addiu	t6,v0,8
    2a48:	afae0120 	sw	t6,288(sp)
    2a4c:	87380b0e 	lh	t8,2830(t9)
    2a50:	270f0030 	addiu	t7,t8,48
    2a54:	000f7080 	sll	t6,t7,0x2
    2a58:	860f63d8 	lh	t7,25560(s0)
    2a5c:	31d90fff 	andi	t9,t6,0xfff
    2a60:	0321c025 	or	t8,t9,at
    2a64:	25ee00c0 	addiu	t6,t7,192
    2a68:	000ec880 	sll	t9,t6,0x2
    2a6c:	332f0fff 	andi	t7,t9,0xfff
    2a70:	000f7300 	sll	t6,t7,0xc
    2a74:	030ec825 	or	t9,t8,t6
    2a78:	ac590000 	sw	t9,0(v0)
    2a7c:	8eef0000 	lw	t7,0(s7)
    2a80:	26217fff 	addiu	at,s1,32767
    2a84:	85f80b0e 	lh	t8,2830(t7)
    2a88:	860f63d8 	lh	t7,25560(s0)
    2a8c:	00187080 	sll	t6,t8,0x2
    2a90:	31d90fff 	andi	t9,t6,0xfff
    2a94:	25f80060 	addiu	t8,t7,96
    2a98:	00187080 	sll	t6,t8,0x2
    2a9c:	31cf0fff 	andi	t7,t6,0xfff
    2aa0:	000fc300 	sll	t8,t7,0xc
    2aa4:	03387025 	or	t6,t9,t8
    2aa8:	ac4e0004 	sw	t6,4(v0)
    2aac:	8faf0120 	lw	t7,288(sp)
    2ab0:	3c18e100 	lui	t8,0xe100
    2ab4:	25f90008 	addiu	t9,t7,8
    2ab8:	afb90120 	sw	t9,288(sp)
    2abc:	ade00004 	sw	zero,4(t7)
    2ac0:	adf80000 	sw	t8,0(t7)
    2ac4:	8fae0120 	lw	t6,288(sp)
    2ac8:	3c180400 	lui	t8,0x400
    2acc:	37180400 	ori	t8,t8,0x400
    2ad0:	25cf0008 	addiu	t7,t6,8
    2ad4:	afaf0120 	sw	t7,288(sp)
    2ad8:	3c19f100 	lui	t9,0xf100
    2adc:	add90000 	sw	t9,0(t6)
    2ae0:	add80004 	sw	t8,4(t6)
    2ae4:	8fae0120 	lw	t6,288(sp)
    2ae8:	3c19e700 	lui	t9,0xe700
    2aec:	25cf0008 	addiu	t7,t6,8
    2af0:	afaf0120 	sw	t7,288(sp)
    2af4:	adc00004 	sw	zero,4(t6)
    2af8:	add90000 	sw	t9,0(t6)
    2afc:	8fb80120 	lw	t8,288(sp)
    2b00:	3c19ff2d 	lui	t9,0xff2d
    2b04:	3c0ffcff 	lui	t7,0xfcff
    2b08:	270e0008 	addiu	t6,t8,8
    2b0c:	afae0120 	sw	t6,288(sp)
    2b10:	35ef97ff 	ori	t7,t7,0x97ff
    2b14:	3739feff 	ori	t9,t9,0xfeff
    2b18:	af190004 	sw	t9,4(t8)
    2b1c:	af0f0000 	sw	t7,0(t8)
    2b20:	861863d8 	lh	t8,25560(s0)
    2b24:	270e0020 	addiu	t6,t8,32
    2b28:	a42e63d9 	sh	t6,25561(at)
    2b2c:	10000103 	b	2f3c <L801097E4+0x108>
    2b30:	966363d2 	lhu	v1,25554(s3)

00002b34 <L801094E4>:
    2b34:	26420001 	addiu	v0,s2,1
    2b38:	3047ffff 	andi	a3,v0,0xffff
    2b3c:	02277821 	addu	t7,s1,a3
    2b40:	01f5c821 	addu	t9,t7,s5
    2b44:	93386306 	lbu	t8,25350(t9)
    2b48:	26217fff 	addiu	at,s1,32767
    2b4c:	26c37fff 	addiu	v1,s6,32767
    2b50:	a43863eb 	sh	t8,25579(at)
    2b54:	3052ffff 	andi	s2,v0,0xffff
    2b58:	100000f8 	b	2f3c <L801097E4+0x108>
    2b5c:	946363d3 	lhu	v1,25555(v1)

00002b60 <L80109510>:
    2b60:	240e0001 	li	t6,1
    2b64:	26217fff 	addiu	at,s1,32767
    2b68:	a42e63d7 	sh	t6,25559(at)
    2b6c:	26c37fff 	addiu	v1,s6,32767
    2b70:	100000f2 	b	2f3c <L801097E4+0x108>
    2b74:	946363d3 	lhu	v1,25555(v1)

00002b78 <L80109528>:
    2b78:	240f0010 	li	t7,16
    2b7c:	26217fff 	addiu	at,s1,32767
    2b80:	a02f63e5 	sb	t7,25573(at)
    2b84:	92196304 	lbu	t9,25348(s0)
    2b88:	34018000 	li	at,0x8000
    2b8c:	02c19821 	addu	s3,s6,at
    2b90:	16990010 	bne	s4,t9,2bd4 <L80109528+0x5c>
    2b94:	26217fff 	addiu	at,s1,32767
    2b98:	961862f8 	lhu	t8,25336(s0)
    2b9c:	240e0004 	li	t6,4
    2ba0:	a02e63e8 	sb	t6,25576(at)
    2ba4:	a02063e6 	sb	zero,25574(at)
    2ba8:	a43862fb 	sh	t8,25339(at)
    2bac:	8fa40138 	lw	a0,312(sp)
    2bb0:	24050002 	li	a1,2
    2bb4:	0c000000 	jal	0 <func_801069B0>
    2bb8:	24842200 	addiu	a0,a0,8704
    2bbc:	24080009 	li	t0,9
    2bc0:	2409000a 	li	t1,10
    2bc4:	240a000b 	li	t2,11
    2bc8:	240b000c 	li	t3,12
    2bcc:	240c000d 	li	t4,13
    2bd0:	240d0004 	li	t5,4
    2bd4:	100000d9 	b	2f3c <L801097E4+0x108>
    2bd8:	966363d2 	lhu	v1,25554(s3)

00002bdc <L8010958C>:
    2bdc:	240f0020 	li	t7,32
    2be0:	26217fff 	addiu	at,s1,32767
    2be4:	a02f63e5 	sb	t7,25573(at)
    2be8:	92196304 	lbu	t9,25348(s0)
    2bec:	34018000 	li	at,0x8000
    2bf0:	02c19821 	addu	s3,s6,at
    2bf4:	16990010 	bne	s4,t9,2c38 <L8010958C+0x5c>
    2bf8:	26217fff 	addiu	at,s1,32767
    2bfc:	961862f8 	lhu	t8,25336(s0)
    2c00:	240e0004 	li	t6,4
    2c04:	a02e63e8 	sb	t6,25576(at)
    2c08:	a02063e6 	sb	zero,25574(at)
    2c0c:	a43862fb 	sh	t8,25339(at)
    2c10:	8fa40138 	lw	a0,312(sp)
    2c14:	24050002 	li	a1,2
    2c18:	0c000000 	jal	0 <func_801069B0>
    2c1c:	24842200 	addiu	a0,a0,8704
    2c20:	24080009 	li	t0,9
    2c24:	2409000a 	li	t1,10
    2c28:	240a000b 	li	t2,11
    2c2c:	240b000c 	li	t3,12
    2c30:	240c000d 	li	t4,13
    2c34:	240d0004 	li	t5,4
    2c38:	100000c0 	b	2f3c <L801097E4+0x108>
    2c3c:	966363d2 	lhu	v1,25554(s3)

00002c40 <L801095F0>:
    2c40:	920f6304 	lbu	t7,25348(s0)
    2c44:	24190035 	li	t9,53
    2c48:	26217fff 	addiu	at,s1,32767
    2c4c:	568f001d 	bnel	s4,t7,2cc4 <L801095F0+0x84>
    2c50:	8fb90120 	lw	t9,288(sp)
    2c54:	a0396305 	sb	t9,25349(at)
    2c58:	921863e4 	lbu	t8,25572(s0)
    2c5c:	3c050000 	lui	a1,0x0
    2c60:	24a50000 	addiu	a1,a1,0
    2c64:	17000016 	bnez	t8,2cc0 <L801095F0+0x80>
    2c68:	2404482e 	li	a0,18478
    2c6c:	8fb90138 	lw	t9,312(sp)
    2c70:	3c0e0000 	lui	t6,0x0
    2c74:	3c0f0000 	lui	t7,0x0
    2c78:	25ef0000 	addiu	t7,t7,0
    2c7c:	25c70000 	addiu	a3,t6,0
    2c80:	27382200 	addiu	t8,t9,8704
    2c84:	afb80058 	sw	t8,88(sp)
    2c88:	afa70010 	sw	a3,16(sp)
    2c8c:	afaf0014 	sw	t7,20(sp)
    2c90:	0c000000 	jal	0 <func_801069B0>
    2c94:	24060004 	li	a2,4
    2c98:	8fa40058 	lw	a0,88(sp)
    2c9c:	0c000000 	jal	0 <func_801069B0>
    2ca0:	24050001 	li	a1,1
    2ca4:	8fae0138 	lw	t6,312(sp)
    2ca8:	91cf1d6c 	lbu	t7,7532(t6)
    2cac:	01c02025 	move	a0,t6
    2cb0:	55e00004 	bnezl	t7,2cc4 <L801095F0+0x84>
    2cb4:	8fb90120 	lw	t9,288(sp)
    2cb8:	0c000000 	jal	0 <func_801069B0>
    2cbc:	24050003 	li	a1,3
    2cc0:	8fb90120 	lw	t9,288(sp)
    2cc4:	8fb8013c 	lw	t8,316(sp)
    2cc8:	100000af 	b	2f88 <L801097E4+0x154>
    2ccc:	af190000 	sw	t9,0(t8)

00002cd0 <L80109680>:
    2cd0:	960f63d2 	lhu	t7,25554(s0)
    2cd4:	264e0001 	addiu	t6,s2,1
    2cd8:	26c37fff 	addiu	v1,s6,32767
    2cdc:	15ee0007 	bne	t7,t6,2cfc <L80109680+0x2c>
    2ce0:	00000000 	nop
    2ce4:	0c000000 	jal	0 <func_801069B0>
    2ce8:	8fa40138 	lw	a0,312(sp)
    2cec:	8fb90120 	lw	t9,288(sp)
    2cf0:	8fb8013c 	lw	t8,316(sp)
    2cf4:	100000a4 	b	2f88 <L801097E4+0x154>
    2cf8:	af190000 	sw	t9,0(t8)
    2cfc:	1000008f 	b	2f3c <L801097E4+0x108>
    2d00:	946363d3 	lhu	v1,25555(v1)

00002d04 <L801096B4>:
    2d04:	920f6304 	lbu	t7,25348(s0)
    2d08:	240e0035 	li	t6,53
    2d0c:	26217fff 	addiu	at,s1,32767
    2d10:	168f0014 	bne	s4,t7,2d64 <L801096B4+0x60>
    2d14:	24190060 	li	t9,96
    2d18:	26470001 	addiu	a3,s2,1
    2d1c:	30e7ffff 	andi	a3,a3,0xffff
    2d20:	0227c021 	addu	t8,s1,a3
    2d24:	a02e6305 	sb	t6,25349(at)
    2d28:	a03963e5 	sb	t9,25573(at)
    2d2c:	03157821 	addu	t7,t8,s5
    2d30:	91ee6306 	lbu	t6,25350(t7)
    2d34:	24050001 	li	a1,1
    2d38:	a02e63e8 	sb	t6,25576(at)
    2d3c:	8fa40138 	lw	a0,312(sp)
    2d40:	0c000000 	jal	0 <func_801069B0>
    2d44:	24842200 	addiu	a0,a0,8704
    2d48:	8fb90138 	lw	t9,312(sp)
    2d4c:	93381d6c 	lbu	t8,7532(t9)
    2d50:	03202025 	move	a0,t9
    2d54:	57000004 	bnezl	t8,2d68 <L801096B4+0x64>
    2d58:	8faf0120 	lw	t7,288(sp)
    2d5c:	0c000000 	jal	0 <func_801069B0>
    2d60:	24050003 	li	a1,3
    2d64:	8faf0120 	lw	t7,288(sp)
    2d68:	8fae013c 	lw	t6,316(sp)
    2d6c:	10000086 	b	2f88 <L801097E4+0x154>
    2d70:	adcf0000 	sw	t7,0(t6)

00002d74 <L80109724>:
    2d74:	92186304 	lbu	t8,25348(s0)
    2d78:	3c050000 	lui	a1,0x0
    2d7c:	24a50000 	addiu	a1,a1,0
    2d80:	1698000e 	bne	s4,t8,2dbc <L80109724+0x48>
    2d84:	00002025 	move	a0,zero
    2d88:	3c190000 	lui	t9,0x0
    2d8c:	3c0f0000 	lui	t7,0x0
    2d90:	25ef0000 	addiu	t7,t7,0
    2d94:	27270000 	addiu	a3,t9,0
    2d98:	afa70010 	sw	a3,16(sp)
    2d9c:	afaf0014 	sw	t7,20(sp)
    2da0:	0c000000 	jal	0 <func_801069B0>
    2da4:	24060004 	li	a2,4
    2da8:	26217fff 	addiu	at,s1,32767
    2dac:	240e0035 	li	t6,53
    2db0:	24180040 	li	t8,64
    2db4:	a02e6305 	sb	t6,25349(at)
    2db8:	a03863e5 	sb	t8,25573(at)
    2dbc:	8fb90120 	lw	t9,288(sp)
    2dc0:	8faf013c 	lw	t7,316(sp)
    2dc4:	10000070 	b	2f88 <L801097E4+0x154>
    2dc8:	adf90000 	sw	t9,0(t7)

00002dcc <L8010977C>:
    2dcc:	920e6304 	lbu	t6,25348(s0)
    2dd0:	24180035 	li	t8,53
    2dd4:	26217fff 	addiu	at,s1,32767
    2dd8:	168e0012 	bne	s4,t6,2e24 <L8010977C+0x58>
    2ddc:	24190050 	li	t9,80
    2de0:	a0386305 	sb	t8,25349(at)
    2de4:	a03963e5 	sb	t9,25573(at)
    2de8:	8fa40138 	lw	a0,312(sp)
    2dec:	00002825 	move	a1,zero
    2df0:	0c000000 	jal	0 <func_801069B0>
    2df4:	24842200 	addiu	a0,a0,8704
    2df8:	3c0f0000 	lui	t7,0x0
    2dfc:	3c0e0000 	lui	t6,0x0
    2e00:	25ce0000 	addiu	t6,t6,0
    2e04:	25e70000 	addiu	a3,t7,0
    2e08:	3c050000 	lui	a1,0x0
    2e0c:	24a50000 	addiu	a1,a1,0
    2e10:	afa70010 	sw	a3,16(sp)
    2e14:	afae0014 	sw	t6,20(sp)
    2e18:	2404482e 	li	a0,18478
    2e1c:	0c000000 	jal	0 <func_801069B0>
    2e20:	24060004 	li	a2,4
    2e24:	8fb80120 	lw	t8,288(sp)
    2e28:	8fb9013c 	lw	t9,316(sp)
    2e2c:	10000056 	b	2f88 <L801097E4+0x154>
    2e30:	af380000 	sw	t8,0(t9)

00002e34 <L801097E4>:
    2e34:	8faf0138 	lw	t7,312(sp)
    2e38:	34018000 	li	at,0x8000
    2e3c:	02c19821 	addu	s3,s6,at
    2e40:	25ee2200 	addiu	t6,t7,8704
    2e44:	afae0058 	sw	t6,88(sp)
    2e48:	92186304 	lbu	t8,25348(s0)
    2e4c:	56980016 	bnel	s4,t8,2ea8 <L801097E4+0x74>
    2e50:	8faf0058 	lw	t7,88(sp)
    2e54:	961963d2 	lhu	t9,25554(s0)
    2e58:	264f0001 	addiu	t7,s2,1
    2e5c:	572f0012 	bnel	t9,t7,2ea8 <L801097E4+0x74>
    2e60:	8faf0058 	lw	t7,88(sp)
    2e64:	960e63ea 	lhu	t6,25578(s0)
    2e68:	961863e8 	lhu	t8,25576(s0)
    2e6c:	3c070000 	lui	a3,0x0
    2e70:	24e70000 	addiu	a3,a3,0
    2e74:	15d8000b 	bne	t6,t8,2ea4 <L801097E4+0x70>
    2e78:	00002025 	move	a0,zero
    2e7c:	3c190000 	lui	t9,0x0
    2e80:	27390000 	addiu	t9,t9,0
    2e84:	3c050000 	lui	a1,0x0
    2e88:	24a50000 	addiu	a1,a1,0
    2e8c:	afb90014 	sw	t9,20(sp)
    2e90:	24060004 	li	a2,4
    2e94:	afa70010 	sw	a3,16(sp)
    2e98:	0c000000 	jal	0 <func_801069B0>
    2e9c:	afa20050 	sw	v0,80(sp)
    2ea0:	8fa20050 	lw	v0,80(sp)
    2ea4:	8faf0058 	lw	t7,88(sp)
    2ea8:	97ae0128 	lhu	t6,296(sp)
    2eac:	8fa40138 	lw	a0,312(sp)
    2eb0:	27a60120 	addiu	a2,sp,288
    2eb4:	01ee2821 	addu	a1,t7,t6
    2eb8:	24a50008 	addiu	a1,a1,8
    2ebc:	0c000000 	jal	0 <func_801069B0>
    2ec0:	afa20050 	sw	v0,80(sp)
    2ec4:	97b80128 	lhu	t8,296(sp)
    2ec8:	8eef0000 	lw	t7,0(s7)
    2ecc:	3c0142c8 	lui	at,0x42c8
    2ed0:	27190080 	addiu	t9,t8,128
    2ed4:	a7b90128 	sh	t9,296(sp)
    2ed8:	85ee0b06 	lh	t6,2822(t7)
    2edc:	44814000 	mtc1	at,$f8
    2ee0:	8fa20050 	lw	v0,80(sp)
    2ee4:	448e2000 	mtc1	t6,$f4
    2ee8:	3c010000 	lui	at,0x0
    2eec:	0002c080 	sll	t8,v0,0x2
    2ef0:	468021a0 	cvt.s.w	$f6,$f4
    2ef4:	00380821 	addu	at,at,t8
    2ef8:	c4300000 	lwc1	$f16,0(at)
    2efc:	860e63d8 	lh	t6,25560(s0)
    2f00:	26217fff 	addiu	at,s1,32767
    2f04:	24080009 	li	t0,9
    2f08:	46083283 	div.s	$f10,$f6,$f8
    2f0c:	2409000a 	li	t1,10
    2f10:	240a000b 	li	t2,11
    2f14:	240b000c 	li	t3,12
    2f18:	240c000d 	li	t4,13
    2f1c:	240d0004 	li	t5,4
    2f20:	460a8482 	mul.s	$f18,$f16,$f10
    2f24:	4600910d 	trunc.w.s	$f4,$f18
    2f28:	440f2000 	mfc1	t7,$f4
    2f2c:	00000000 	nop
    2f30:	01cfc021 	addu	t8,t6,t7
    2f34:	a43863d9 	sh	t8,25561(at)
    2f38:	966363d2 	lhu	v1,25554(s3)
    2f3c:	26520001 	addiu	s2,s2,1
    2f40:	3252ffff 	andi	s2,s2,0xffff
    2f44:	0243082a 	slt	at,s2,v1
    2f48:	5420fbb1 	bnezl	at,1e10 <func_801086B0+0x110>
    2f4c:	02327021 	addu	t6,s1,s2
    2f50:	960263e8 	lhu	v0,25576(s0)
    2f54:	14400006 	bnez	v0,2f70 <L801097E4+0x13c>
    2f58:	26590001 	addiu	t9,s2,1
    2f5c:	26217fff 	addiu	at,s1,32767
    2f60:	a43963d3 	sh	t9,25555(at)
    2f64:	960e63ea 	lhu	t6,25578(s0)
    2f68:	10000004 	b	2f7c <L801097E4+0x148>
    2f6c:	a42e63e9 	sh	t6,25577(at)
    2f70:	244fffff 	addiu	t7,v0,-1
    2f74:	26217fff 	addiu	at,s1,32767
    2f78:	a42f63e9 	sh	t7,25577(at)
    2f7c:	8fb80120 	lw	t8,288(sp)
    2f80:	8fb9013c 	lw	t9,316(sp)
    2f84:	af380000 	sw	t8,0(t9)
    2f88:	8fbf0044 	lw	ra,68(sp)
    2f8c:	8fb00020 	lw	s0,32(sp)
    2f90:	8fb10024 	lw	s1,36(sp)
    2f94:	8fb20028 	lw	s2,40(sp)
    2f98:	8fb3002c 	lw	s3,44(sp)
    2f9c:	8fb40030 	lw	s4,48(sp)
    2fa0:	8fb50034 	lw	s5,52(sp)
    2fa4:	8fb60038 	lw	s6,56(sp)
    2fa8:	8fb7003c 	lw	s7,60(sp)
    2fac:	8fbe0040 	lw	s8,64(sp)
    2fb0:	03e00008 	jr	ra
    2fb4:	27bd0138 	addiu	sp,sp,312

00002fb8 <func_80109968>:
    2fb8:	27bdffd0 	addiu	sp,sp,-48
    2fbc:	afb00020 	sw	s0,32(sp)
    2fc0:	30b0ffff 	andi	s0,a1,0xffff
    2fc4:	24010076 	li	at,118
    2fc8:	afbf002c 	sw	ra,44(sp)
    2fcc:	afb20028 	sw	s2,40(sp)
    2fd0:	afb10024 	sw	s1,36(sp)
    2fd4:	afa40030 	sw	a0,48(sp)
    2fd8:	afa50034 	sw	a1,52(sp)
    2fdc:	16010007 	bne	s0,at,2ffc <func_80109968+0x44>
    2fe0:	afa60038 	sw	a2,56(sp)
    2fe4:	3c010001 	lui	at,0x1
    2fe8:	342104f0 	ori	at,at,0x4f0
    2fec:	240300ff 	li	v1,255
    2ff0:	00811021 	addu	v0,a0,at
    2ff4:	a043015e 	sb	v1,350(v0)
    2ff8:	a043015f 	sb	v1,351(v0)
    2ffc:	2a010066 	slti	at,s0,102
    3000:	10200029 	beqz	at,30a8 <func_80109968+0xf0>
    3004:	3c030000 	lui	v1,0x0
    3008:	3c0f0000 	lui	t7,0x0
    300c:	91ef1409 	lbu	t7,5129(t7)
    3010:	3c030000 	lui	v1,0x0
    3014:	24630000 	addiu	v1,v1,0
    3018:	8c620000 	lw	v0,0(v1)
    301c:	3c190000 	lui	t9,0x0
    3020:	000fc040 	sll	t8,t7,0x1
    3024:	0338c821 	addu	t9,t9,t8
    3028:	87390000 	lh	t9,0(t9)
    302c:	844e0b00 	lh	t6,2816(v0)
    3030:	240c0020 	li	t4,32
    3034:	34018000 	li	at,0x8000
    3038:	01d94023 	subu	t0,t6,t9
    303c:	a4480522 	sh	t0,1314(v0)
    3040:	87a9003a 	lh	t1,58(sp)
    3044:	8c6b0000 	lw	t3,0(v1)
    3048:	3c180000 	lui	t8,0x0
    304c:	252a0006 	addiu	t2,t1,6
    3050:	a56a0524 	sh	t2,1316(t3)
    3054:	8c6d0000 	lw	t5,0(v1)
    3058:	27180000 	addiu	t8,t8,0
    305c:	240e05c1 	li	t6,1473
    3060:	a5ac052a 	sh	t4,1322(t5)
    3064:	8fb10030 	lw	s1,48(sp)
    3068:	00107b00 	sll	t7,s0,0xc
    306c:	3c070000 	lui	a3,0x0
    3070:	263120d8 	addiu	s1,s1,8408
    3074:	02219021 	addu	s2,s1,at
    3078:	8e4462b0 	lw	a0,25264(s2)
    307c:	afae0010 	sw	t6,16(sp)
    3080:	24e70000 	addiu	a3,a3,0
    3084:	01f82821 	addu	a1,t7,t8
    3088:	24061000 	li	a2,4096
    308c:	0c000000 	jal	0 <func_801069B0>
    3090:	24841000 	addiu	a0,a0,4096
    3094:	3c040000 	lui	a0,0x0
    3098:	0c000000 	jal	0 <func_801069B0>
    309c:	24840000 	addiu	a0,a0,0
    30a0:	1000002f 	b	3160 <func_80109968+0x1a8>
    30a4:	964b63ce 	lhu	t3,25550(s2)
    30a8:	3c080000 	lui	t0,0x0
    30ac:	91081409 	lbu	t0,5129(t0)
    30b0:	24630000 	addiu	v1,v1,0
    30b4:	8c620000 	lw	v0,0(v1)
    30b8:	3c0a0000 	lui	t2,0x0
    30bc:	00084840 	sll	t1,t0,0x1
    30c0:	01495021 	addu	t2,t2,t1
    30c4:	854a0000 	lh	t2,0(t2)
    30c8:	84590b00 	lh	t9,2816(v0)
    30cc:	24180018 	li	t8,24
    30d0:	34018000 	li	at,0x8000
    30d4:	032a5823 	subu	t3,t9,t2
    30d8:	a44b0522 	sh	t3,1314(v0)
    30dc:	87ac003a 	lh	t4,58(sp)
    30e0:	8c6f0000 	lw	t7,0(v1)
    30e4:	001040c0 	sll	t0,s0,0x3
    30e8:	258d000a 	addiu	t5,t4,10
    30ec:	a5ed0524 	sh	t5,1316(t7)
    30f0:	8c6e0000 	lw	t6,0(v1)
    30f4:	01104021 	addu	t0,t0,s0
    30f8:	00084200 	sll	t0,t0,0x8
    30fc:	a5d8052a 	sh	t8,1322(t6)
    3100:	8fb10030 	lw	s1,48(sp)
    3104:	3c190000 	lui	t9,0x0
    3108:	27390000 	addiu	t9,t9,0
    310c:	263120d8 	addiu	s1,s1,8408
    3110:	02219021 	addu	s2,s1,at
    3114:	3c01fffc 	lui	at,0xfffc
    3118:	8e4462b0 	lw	a0,25264(s2)
    311c:	34216a00 	ori	at,at,0x6a00
    3120:	01014821 	addu	t1,t0,at
    3124:	240a05ca 	li	t2,1482
    3128:	3c070000 	lui	a3,0x0
    312c:	24e70000 	addiu	a3,a3,0
    3130:	afaa0010 	sw	t2,16(sp)
    3134:	01392821 	addu	a1,t1,t9
    3138:	24060900 	li	a2,2304
    313c:	0c000000 	jal	0 <func_801069B0>
    3140:	24841000 	addiu	a0,a0,4096
    3144:	3c040000 	lui	a0,0x0
    3148:	24840000 	addiu	a0,a0,0
    314c:	02002825 	move	a1,s0
    3150:	2606ff94 	addiu	a2,s0,-108
    3154:	0c000000 	jal	0 <func_801069B0>
    3158:	24070054 	li	a3,84
    315c:	964b63ce 	lhu	t3,25550(s2)
    3160:	26217fff 	addiu	at,s1,32767
    3164:	240d0001 	li	t5,1
    3168:	256c0001 	addiu	t4,t3,1
    316c:	a42c63cf 	sh	t4,25551(at)
    3170:	a02d63e7 	sb	t5,25575(at)
    3174:	8fbf002c 	lw	ra,44(sp)
    3178:	8fb20028 	lw	s2,40(sp)
    317c:	8fb10024 	lw	s1,36(sp)
    3180:	8fb00020 	lw	s0,32(sp)
    3184:	03e00008 	jr	ra
    3188:	27bd0030 	addiu	sp,sp,48

0000318c <func_80109B3C>:
    318c:	27bdff68 	addiu	sp,sp,-152
    3190:	3c010001 	lui	at,0x1
    3194:	afbf0044 	sw	ra,68(sp)
    3198:	afbe0040 	sw	s8,64(sp)
    319c:	afb7003c 	sw	s7,60(sp)
    31a0:	afb60038 	sw	s6,56(sp)
    31a4:	afb50034 	sw	s5,52(sp)
    31a8:	afb40030 	sw	s4,48(sp)
    31ac:	afb3002c 	sw	s3,44(sp)
    31b0:	afb20028 	sw	s2,40(sp)
    31b4:	afb10024 	sw	s1,36(sp)
    31b8:	afb00020 	sw	s0,32(sp)
    31bc:	a7a00086 	sh	zero,134(sp)
    31c0:	00240821 	addu	at,at,a0
    31c4:	3c070001 	lui	a3,0x1
    31c8:	00e43821 	addu	a3,a3,a0
    31cc:	a42004c0 	sh	zero,1216(at)
    31d0:	94e704c0 	lhu	a3,1216(a3)
    31d4:	3c010001 	lui	at,0x1
    31d8:	00240821 	addu	at,at,a0
    31dc:	a42704c2 	sh	a3,1218(at)
    31e0:	3c010001 	lui	at,0x1
    31e4:	00240821 	addu	at,at,a0
    31e8:	a42704ae 	sh	a3,1198(at)
    31ec:	3c010000 	lui	at,0x0
    31f0:	a4200000 	sh	zero,0(at)
    31f4:	34018000 	li	at,0x8000
    31f8:	249720d8 	addiu	s7,a0,8408
    31fc:	02e17021 	addu	t6,s7,at
    3200:	0000a825 	move	s5,zero
    3204:	0000b025 	move	s6,zero
    3208:	afae0054 	sw	t6,84(sp)
    320c:	afa40098 	sw	a0,152(sp)
    3210:	249e2200 	addiu	s8,a0,8704
    3214:	8faf0054 	lw	t7,84(sp)
    3218:	34028000 	li	v0,0x8000
    321c:	02f65021 	addu	t2,s7,s6
    3220:	95f863ce 	lhu	t8,25550(t7)
    3224:	01425821 	addu	t3,t2,v0
    3228:	24010004 	li	at,4
    322c:	03d8c821 	addu	t9,s8,t8
    3230:	03224821 	addu	t1,t9,v0
    3234:	91325c88 	lbu	s2,23688(t1)
    3238:	a1726306 	sb	s2,25350(t3)
    323c:	325100ff 	andi	s1,s2,0xff
    3240:	1241000b 	beq	s2,at,3270 <func_80109B3C+0xe4>
    3244:	02408025 	move	s0,s2
    3248:	24010007 	li	at,7
    324c:	12410008 	beq	s2,at,3270 <func_80109B3C+0xe4>
    3250:	2401000c 	li	at,12
    3254:	12410006 	beq	s2,at,3270 <func_80109B3C+0xe4>
    3258:	2401000b 	li	at,11
    325c:	12410004 	beq	s2,at,3270 <func_80109B3C+0xe4>
    3260:	24140008 	li	s4,8
    3264:	24010002 	li	at,2
    3268:	1641007b 	bne	s2,at,3458 <func_80109B3C+0x2cc>
    326c:	00009825 	move	s3,zero
    3270:	26e17fff 	addiu	at,s7,32767
    3274:	240c0006 	li	t4,6
    3278:	240d0001 	li	t5,1
    327c:	a02c6305 	sb	t4,25349(at)
    3280:	a42d63d3 	sh	t5,25555(at)
    3284:	3c020000 	lui	v0,0x0
    3288:	8c420000 	lw	v0,0(v0)
    328c:	3c040000 	lui	a0,0x0
    3290:	24840000 	addiu	a0,a0,0
    3294:	844e0f16 	lh	t6,3862(v0)
    3298:	25cf0008 	addiu	t7,t6,8
    329c:	a44f0b02 	sh	t7,2818(v0)
    32a0:	0c000000 	jal	0 <func_801069B0>
    32a4:	87a50086 	lh	a1,134(sp)
    32a8:	8fb80054 	lw	t8,84(sp)
    32ac:	24010004 	li	at,4
    32b0:	87a90086 	lh	t1,134(sp)
    32b4:	931962fd 	lbu	t9,25341(t8)
    32b8:	5321001a 	beql	t9,at,3324 <func_80109B3C+0x198>
    32bc:	24010007 	li	at,7
    32c0:	15200007 	bnez	t1,32e0 <func_80109B3C+0x154>
    32c4:	87ac0086 	lh	t4,134(sp)
    32c8:	3c020000 	lui	v0,0x0
    32cc:	8c420000 	lw	v0,0(v0)
    32d0:	844a0f16 	lh	t2,3862(v0)
    32d4:	254b001a 	addiu	t3,t2,26
    32d8:	10000011 	b	3320 <func_80109B3C+0x194>
    32dc:	a44b0b02 	sh	t3,2818(v0)
    32e0:	24010001 	li	at,1
    32e4:	15810007 	bne	t4,at,3304 <func_80109B3C+0x178>
    32e8:	87af0086 	lh	t7,134(sp)
    32ec:	3c020000 	lui	v0,0x0
    32f0:	8c420000 	lw	v0,0(v0)
    32f4:	844d0f16 	lh	t5,3862(v0)
    32f8:	25ae0014 	addiu	t6,t5,20
    32fc:	10000008 	b	3320 <func_80109B3C+0x194>
    3300:	a44e0b02 	sh	t6,2818(v0)
    3304:	24010002 	li	at,2
    3308:	15e10005 	bne	t7,at,3320 <func_80109B3C+0x194>
    330c:	3c020000 	lui	v0,0x0
    3310:	8c420000 	lw	v0,0(v0)
    3314:	84580f16 	lh	t8,3862(v0)
    3318:	27190010 	addiu	t9,t8,16
    331c:	a4590b02 	sh	t9,2818(v0)
    3320:	24010007 	li	at,7
    3324:	1601002d 	bne	s0,at,33dc <func_80109B3C+0x250>
    3328:	8fa90054 	lw	t1,84(sp)
    332c:	952363ce 	lhu	v1,25550(t1)
    3330:	34088000 	li	t0,0x8000
    3334:	3c040000 	lui	a0,0x0
    3338:	03c35021 	addu	t2,s8,v1
    333c:	03c36021 	addu	t4,s8,v1
    3340:	01881021 	addu	v0,t4,t0
    3344:	01485821 	addu	t3,t2,t0
    3348:	91655c88 	lbu	a1,23688(t3)
    334c:	90465c89 	lbu	a2,23689(v0)
    3350:	90475c8a 	lbu	a3,23690(v0)
    3354:	0c000000 	jal	0 <func_801069B0>
    3358:	24840000 	addiu	a0,a0,0
    335c:	8fa40054 	lw	a0,84(sp)
    3360:	34038000 	li	v1,0x8000
    3364:	26c20001 	addiu	v0,s6,1
    3368:	948d63ce 	lhu	t5,25550(a0)
    336c:	00023c00 	sll	a3,v0,0x10
    3370:	00073c03 	sra	a3,a3,0x10
    3374:	03cd7021 	addu	t6,s8,t5
    3378:	01c37821 	addu	t7,t6,v1
    337c:	91f25c89 	lbu	s2,23689(t7)
    3380:	02e7c021 	addu	t8,s7,a3
    3384:	0303c821 	addu	t9,t8,v1
    3388:	a3326306 	sb	s2,25350(t9)
    338c:	948963ce 	lhu	t1,25550(a0)
    3390:	0040b025 	move	s6,v0
    3394:	26c20001 	addiu	v0,s6,1
    3398:	03c95021 	addu	t2,s8,t1
    339c:	01435821 	addu	t3,t2,v1
    33a0:	00023c00 	sll	a3,v0,0x10
    33a4:	916c5c8a 	lbu	t4,23690(t3)
    33a8:	00073c03 	sra	a3,a3,0x10
    33ac:	0002b400 	sll	s6,v0,0x10
    33b0:	0016b403 	sra	s6,s6,0x10
    33b4:	02e76821 	addu	t5,s7,a3
    33b8:	01a37021 	addu	t6,t5,v1
    33bc:	02f67821 	addu	t7,s7,s6
    33c0:	01e3c021 	addu	t8,t7,v1
    33c4:	a1cc6306 	sb	t4,25350(t6)
    33c8:	93196306 	lbu	t9,25350(t8)
    33cc:	00125200 	sll	t2,s2,0x8
    33d0:	3c010000 	lui	at,0x0
    33d4:	032a5825 	or	t3,t9,t2
    33d8:	a42b0000 	sh	t3,0(at)
    33dc:	2401000c 	li	at,12
    33e0:	16210012 	bne	s1,at,342c <func_80109B3C+0x2a0>
    33e4:	34038000 	li	v1,0x8000
    33e8:	8fa40054 	lw	a0,84(sp)
    33ec:	26c20001 	addiu	v0,s6,1
    33f0:	00023c00 	sll	a3,v0,0x10
    33f4:	948d63ce 	lhu	t5,25550(a0)
    33f8:	00073c03 	sra	a3,a3,0x10
    33fc:	02e7c021 	addu	t8,s7,a3
    3400:	03cd6021 	addu	t4,s8,t5
    3404:	01837021 	addu	t6,t4,v1
    3408:	91cf5c89 	lbu	t7,23689(t6)
    340c:	03034821 	addu	t1,t8,v1
    3410:	0002b400 	sll	s6,v0,0x10
    3414:	a12f6306 	sb	t7,25350(t1)
    3418:	949963ce 	lhu	t9,25550(a0)
    341c:	26e17fff 	addiu	at,s7,32767
    3420:	0016b403 	sra	s6,s6,0x10
    3424:	272a0002 	addiu	t2,t9,2
    3428:	a42a63cf 	sh	t2,25551(at)
    342c:	26e17fff 	addiu	at,s7,32767
    3430:	a43663d5 	sh	s6,25557(at)
    3434:	3c0b0000 	lui	t3,0x0
    3438:	916b0000 	lbu	t3,0(t3)
    343c:	8fad0054 	lw	t5,84(sp)
    3440:	516004a8 	beqzl	t3,46e4 <L8010B06C+0x28>
    3444:	8fbf0044 	lw	ra,68(sp)
    3448:	95ac63d4 	lhu	t4,25556(t5)
    344c:	26e17fff 	addiu	at,s7,32767
    3450:	100004a3 	b	46e0 <L8010B06C+0x24>
    3454:	a42c63d3 	sh	t4,25555(at)
    3458:	2401000f 	li	at,15
    345c:	16010057 	bne	s0,at,35bc <func_80109B3C+0x430>
    3460:	3c040000 	lui	a0,0x0
    3464:	3c0e0000 	lui	t6,0x0
    3468:	01d47021 	addu	t6,t6,s4
    346c:	91ce0023 	lbu	t6,35(t6)
    3470:	2401003e 	li	at,62
    3474:	15c10006 	bne	t6,at,3490 <func_80109B3C+0x304>
    3478:	00000000 	nop
    347c:	2694ffff 	addiu	s4,s4,-1
    3480:	0014a400 	sll	s4,s4,0x10
    3484:	0014a403 	sra	s4,s4,0x10
    3488:	1e80fff6 	bgtz	s4,3464 <func_80109B3C+0x2d8>
    348c:	00000000 	nop
    3490:	0c000000 	jal	0 <func_801069B0>
    3494:	24840000 	addiu	a0,a0,0
    3498:	1a800044 	blez	s4,35ac <func_80109B3C+0x420>
    349c:	3c110000 	lui	s1,0x0
    34a0:	02338821 	addu	s1,s1,s3
    34a4:	92310024 	lbu	s1,36(s1)
    34a8:	02f69021 	addu	s2,s7,s6
    34ac:	34018000 	li	at,0x8000
    34b0:	02419021 	addu	s2,s2,at
    34b4:	2401003e 	li	at,62
    34b8:	16210004 	bne	s1,at,34cc <func_80109B3C+0x340>
    34bc:	02208025 	move	s0,s1
    34c0:	24110020 	li	s1,32
    34c4:	10000024 	b	3558 <func_80109B3C+0x3cc>
    34c8:	24100020 	li	s0,32
    34cc:	24010040 	li	at,64
    34d0:	56010005 	bnel	s0,at,34e8 <func_80109B3C+0x35c>
    34d4:	2401003f 	li	at,63
    34d8:	2411002e 	li	s1,46
    34dc:	1000001e 	b	3558 <func_80109B3C+0x3cc>
    34e0:	2410002e 	li	s0,46
    34e4:	2401003f 	li	at,63
    34e8:	56010005 	bnel	s0,at,3500 <func_80109B3C+0x374>
    34ec:	2a01000a 	slti	at,s0,10
    34f0:	2411002d 	li	s1,45
    34f4:	10000018 	b	3558 <func_80109B3C+0x3cc>
    34f8:	2410002d 	li	s0,45
    34fc:	2a01000a 	slti	at,s0,10
    3500:	50200007 	beqzl	at,3520 <func_80109B3C+0x394>
    3504:	2a010024 	slti	at,s0,36
    3508:	02008825 	move	s1,s0
    350c:	26310030 	addiu	s1,s1,48
    3510:	323100ff 	andi	s1,s1,0xff
    3514:	10000010 	b	3558 <func_80109B3C+0x3cc>
    3518:	02208025 	move	s0,s1
    351c:	2a010024 	slti	at,s0,36
    3520:	50200007 	beqzl	at,3540 <func_80109B3C+0x3b4>
    3524:	2a01003e 	slti	at,s0,62
    3528:	02008825 	move	s1,s0
    352c:	26310037 	addiu	s1,s1,55
    3530:	323100ff 	andi	s1,s1,0xff
    3534:	10000008 	b	3558 <func_80109B3C+0x3cc>
    3538:	02208025 	move	s0,s1
    353c:	2a01003e 	slti	at,s0,62
    3540:	50200006 	beqzl	at,355c <func_80109B3C+0x3d0>
    3544:	24010020 	li	at,32
    3548:	02008825 	move	s1,s0
    354c:	2631003d 	addiu	s1,s1,61
    3550:	323100ff 	andi	s1,s1,0xff
    3554:	02208025 	move	s0,s1
    3558:	24010020 	li	at,32
    355c:	12010006 	beq	s0,at,3578 <func_80109B3C+0x3ec>
    3560:	03c02025 	move	a0,s8
    3564:	2605ffe0 	addiu	a1,s0,-32
    3568:	30a500ff 	andi	a1,a1,0xff
    356c:	0c000000 	jal	0 <func_801069B0>
    3570:	32a6ffff 	andi	a2,s5,0xffff
    3574:	26b50080 	addiu	s5,s5,128
    3578:	3c040000 	lui	a0,0x0
    357c:	24840000 	addiu	a0,a0,0
    3580:	0c000000 	jal	0 <func_801069B0>
    3584:	02002825 	move	a1,s0
    3588:	26730001 	addiu	s3,s3,1
    358c:	00139c00 	sll	s3,s3,0x10
    3590:	00139c03 	sra	s3,s3,0x10
    3594:	26d60001 	addiu	s6,s6,1
    3598:	0274082a 	slt	at,s3,s4
    359c:	0016b400 	sll	s6,s6,0x10
    35a0:	a2516306 	sb	s1,25350(s2)
    35a4:	1420ffbd 	bnez	at,349c <func_80109B3C+0x310>
    35a8:	0016b403 	sra	s6,s6,0x10
    35ac:	26d6ffff 	addiu	s6,s6,-1
    35b0:	0016b400 	sll	s6,s6,0x10
    35b4:	10000441 	b	46bc <L8010B06C>
    35b8:	0016b403 	sra	s6,s6,0x10
    35bc:	24010016 	li	at,22
    35c0:	12010003 	beq	s0,at,35d0 <func_80109B3C+0x444>
    35c4:	3c040000 	lui	a0,0x0
    35c8:	24010017 	li	at,23
    35cc:	16010069 	bne	s0,at,3774 <func_80109B3C+0x5e8>
    35d0:	24840000 	addiu	a0,a0,0
    35d4:	0c000000 	jal	0 <func_801069B0>
    35d8:	00009825 	move	s3,zero
    35dc:	00001c00 	sll	v1,zero,0x10
    35e0:	00002400 	sll	a0,zero,0x10
    35e4:	24010017 	li	at,23
    35e8:	00042403 	sra	a0,a0,0x10
    35ec:	00031c03 	sra	v1,v1,0x10
    35f0:	16010004 	bne	s0,at,3604 <func_80109B3C+0x478>
    35f4:	00002825 	move	a1,zero
    35f8:	3c020000 	lui	v0,0x0
    35fc:	10000003 	b	360c <func_80109B3C+0x480>
    3600:	844213d0 	lh	v0,5072(v0)
    3604:	3c020000 	lui	v0,0x0
    3608:	844213d4 	lh	v0,5076(v0)
    360c:	2841003c 	slti	at,v0,60
    3610:	a7a3007e 	sh	v1,126(sp)
    3614:	14200014 	bnez	at,3668 <func_80109B3C+0x4dc>
    3618:	a7a4007c 	sh	a0,124(sp)
    361c:	24630001 	addiu	v1,v1,1
    3620:	00031c00 	sll	v1,v1,0x10
    3624:	00031c03 	sra	v1,v1,0x10
    3628:	2861000a 	slti	at,v1,10
    362c:	14200007 	bnez	at,364c <func_80109B3C+0x4c0>
    3630:	2442ffc4 	addiu	v0,v0,-60
    3634:	24840001 	addiu	a0,a0,1
    3638:	2463fff6 	addiu	v1,v1,-10
    363c:	00042400 	sll	a0,a0,0x10
    3640:	00031c00 	sll	v1,v1,0x10
    3644:	00042403 	sra	a0,a0,0x10
    3648:	00031c03 	sra	v1,v1,0x10
    364c:	00021400 	sll	v0,v0,0x10
    3650:	00021403 	sra	v0,v0,0x10
    3654:	2841003c 	slti	at,v0,60
    3658:	5020fff1 	beqzl	at,3620 <func_80109B3C+0x494>
    365c:	24630001 	addiu	v1,v1,1
    3660:	a7a4007c 	sh	a0,124(sp)
    3664:	a7a3007e 	sh	v1,126(sp)
    3668:	2841000a 	slti	at,v0,10
    366c:	a7a20082 	sh	v0,130(sp)
    3670:	1420000b 	bnez	at,36a0 <func_80109B3C+0x514>
    3674:	a7a50080 	sh	a1,128(sp)
    3678:	2442fff6 	addiu	v0,v0,-10
    367c:	00021400 	sll	v0,v0,0x10
    3680:	24a50001 	addiu	a1,a1,1
    3684:	00021403 	sra	v0,v0,0x10
    3688:	2841000a 	slti	at,v0,10
    368c:	00052c00 	sll	a1,a1,0x10
    3690:	1020fff9 	beqz	at,3678 <func_80109B3C+0x4ec>
    3694:	00052c03 	sra	a1,a1,0x10
    3698:	a7a50080 	sh	a1,128(sp)
    369c:	a7a20082 	sh	v0,130(sp)
    36a0:	0013c040 	sll	t8,s3,0x1
    36a4:	27af007c 	addiu	t7,sp,124
    36a8:	030f8021 	addu	s0,t8,t7
    36ac:	86050000 	lh	a1,0(s0)
    36b0:	02f69021 	addu	s2,s7,s6
    36b4:	34018000 	li	at,0x8000
    36b8:	24a50010 	addiu	a1,a1,16
    36bc:	30a500ff 	andi	a1,a1,0xff
    36c0:	02419021 	addu	s2,s2,at
    36c4:	03c02025 	move	a0,s8
    36c8:	0c000000 	jal	0 <func_801069B0>
    36cc:	32a6ffff 	andi	a2,s5,0xffff
    36d0:	86090000 	lh	t1,0(s0)
    36d4:	26d60001 	addiu	s6,s6,1
    36d8:	0016b400 	sll	s6,s6,0x10
    36dc:	24010001 	li	at,1
    36e0:	25390030 	addiu	t9,t1,48
    36e4:	26b50080 	addiu	s5,s5,128
    36e8:	a2596306 	sb	t9,25350(s2)
    36ec:	1661000e 	bne	s3,at,3728 <func_80109B3C+0x59c>
    36f0:	0016b403 	sra	s6,s6,0x10
    36f4:	03c02025 	move	a0,s8
    36f8:	24050002 	li	a1,2
    36fc:	0c000000 	jal	0 <func_801069B0>
    3700:	32a6ffff 	andi	a2,s5,0xffff
    3704:	02f65821 	addu	t3,s7,s6
    3708:	26d60001 	addiu	s6,s6,1
    370c:	25617fff 	addiu	at,t3,32767
    3710:	240a0022 	li	t2,34
    3714:	0016b400 	sll	s6,s6,0x10
    3718:	26b50080 	addiu	s5,s5,128
    371c:	a02a6307 	sb	t2,25351(at)
    3720:	1000000c 	b	3754 <func_80109B3C+0x5c8>
    3724:	0016b403 	sra	s6,s6,0x10
    3728:	24010003 	li	at,3
    372c:	16610009 	bne	s3,at,3754 <func_80109B3C+0x5c8>
    3730:	03c02025 	move	a0,s8
    3734:	24050002 	li	a1,2
    3738:	0c000000 	jal	0 <func_801069B0>
    373c:	32a6ffff 	andi	a2,s5,0xffff
    3740:	02f66021 	addu	t4,s7,s6
    3744:	25817fff 	addiu	at,t4,32767
    3748:	240d0022 	li	t5,34
    374c:	26b50080 	addiu	s5,s5,128
    3750:	a02d6307 	sb	t5,25351(at)
    3754:	26730001 	addiu	s3,s3,1
    3758:	00139c00 	sll	s3,s3,0x10
    375c:	00139c03 	sra	s3,s3,0x10
    3760:	2a610004 	slti	at,s3,4
    3764:	5420ffcf 	bnezl	at,36a4 <func_80109B3C+0x518>
    3768:	0013c040 	sll	t8,s3,0x1
    376c:	100003d4 	b	46c0 <L8010B06C+0x4>
    3770:	8fb90054 	lw	t9,84(sp)
    3774:	24010018 	li	at,24
    3778:	1601005a 	bne	s0,at,38e4 <func_80109B3C+0x758>
    377c:	3c040000 	lui	a0,0x0
    3780:	3c050000 	lui	a1,0x0
    3784:	94a51406 	lhu	a1,5126(a1)
    3788:	24840000 	addiu	a0,a0,0
    378c:	00009825 	move	s3,zero
    3790:	0c000000 	jal	0 <func_801069B0>
    3794:	00008825 	move	s1,zero
    3798:	3c020000 	lui	v0,0x0
    379c:	84421406 	lh	v0,5126(v0)
    37a0:	00002400 	sll	a0,zero,0x10
    37a4:	00042403 	sra	a0,a0,0x10
    37a8:	00001c00 	sll	v1,zero,0x10
    37ac:	284103e8 	slti	at,v0,1000
    37b0:	00031c03 	sra	v1,v1,0x10
    37b4:	00002825 	move	a1,zero
    37b8:	1420000a 	bnez	at,37e4 <func_80109B3C+0x658>
    37bc:	a7a4007c 	sh	a0,124(sp)
    37c0:	2442fc18 	addiu	v0,v0,-1000
    37c4:	00021400 	sll	v0,v0,0x10
    37c8:	24840001 	addiu	a0,a0,1
    37cc:	00021403 	sra	v0,v0,0x10
    37d0:	284103e8 	slti	at,v0,1000
    37d4:	00042400 	sll	a0,a0,0x10
    37d8:	1020fff9 	beqz	at,37c0 <func_80109B3C+0x634>
    37dc:	00042403 	sra	a0,a0,0x10
    37e0:	a7a4007c 	sh	a0,124(sp)
    37e4:	28410064 	slti	at,v0,100
    37e8:	1420000a 	bnez	at,3814 <func_80109B3C+0x688>
    37ec:	a7a3007e 	sh	v1,126(sp)
    37f0:	2442ff9c 	addiu	v0,v0,-100
    37f4:	00021400 	sll	v0,v0,0x10
    37f8:	24630001 	addiu	v1,v1,1
    37fc:	00021403 	sra	v0,v0,0x10
    3800:	28410064 	slti	at,v0,100
    3804:	00031c00 	sll	v1,v1,0x10
    3808:	1020fff9 	beqz	at,37f0 <func_80109B3C+0x664>
    380c:	00031c03 	sra	v1,v1,0x10
    3810:	a7a3007e 	sh	v1,126(sp)
    3814:	2841000a 	slti	at,v0,10
    3818:	a7a20082 	sh	v0,130(sp)
    381c:	1420000b 	bnez	at,384c <func_80109B3C+0x6c0>
    3820:	a7a50080 	sh	a1,128(sp)
    3824:	2442fff6 	addiu	v0,v0,-10
    3828:	00021400 	sll	v0,v0,0x10
    382c:	24a50001 	addiu	a1,a1,1
    3830:	00021403 	sra	v0,v0,0x10
    3834:	2841000a 	slti	at,v0,10
    3838:	00052c00 	sll	a1,a1,0x10
    383c:	1020fff9 	beqz	at,3824 <func_80109B3C+0x698>
    3840:	00052c03 	sra	a1,a1,0x10
    3844:	a7a50080 	sh	a1,128(sp)
    3848:	a7a20082 	sh	v0,130(sp)
    384c:	24010003 	li	at,3
    3850:	12610005 	beq	s3,at,3868 <func_80109B3C+0x6dc>
    3854:	00137040 	sll	t6,s3,0x1
    3858:	03aec021 	addu	t8,sp,t6
    385c:	8718007c 	lh	t8,124(t8)
    3860:	13000002 	beqz	t8,386c <func_80109B3C+0x6e0>
    3864:	00000000 	nop
    3868:	24110001 	li	s1,1
    386c:	12200013 	beqz	s1,38bc <func_80109B3C+0x730>
    3870:	03c02025 	move	a0,s8
    3874:	00137840 	sll	t7,s3,0x1
    3878:	27a9007c 	addiu	t1,sp,124
    387c:	01e98021 	addu	s0,t7,t1
    3880:	86050000 	lh	a1,0(s0)
    3884:	02f69021 	addu	s2,s7,s6
    3888:	34018000 	li	at,0x8000
    388c:	24a50010 	addiu	a1,a1,16
    3890:	30a500ff 	andi	a1,a1,0xff
    3894:	02419021 	addu	s2,s2,at
    3898:	0c000000 	jal	0 <func_801069B0>
    389c:	32a6ffff 	andi	a2,s5,0xffff
    38a0:	86190000 	lh	t9,0(s0)
    38a4:	26d60001 	addiu	s6,s6,1
    38a8:	0016b400 	sll	s6,s6,0x10
    38ac:	272a0030 	addiu	t2,t9,48
    38b0:	a24a6306 	sb	t2,25350(s2)
    38b4:	26b50080 	addiu	s5,s5,128
    38b8:	0016b403 	sra	s6,s6,0x10
    38bc:	26730001 	addiu	s3,s3,1
    38c0:	00139c00 	sll	s3,s3,0x10
    38c4:	00139c03 	sra	s3,s3,0x10
    38c8:	2a610004 	slti	at,s3,4
    38cc:	5420ffe0 	bnezl	at,3850 <func_80109B3C+0x6c4>
    38d0:	24010003 	li	at,3
    38d4:	26d6ffff 	addiu	s6,s6,-1
    38d8:	0016b400 	sll	s6,s6,0x10
    38dc:	10000377 	b	46bc <L8010B06C>
    38e0:	0016b403 	sra	s6,s6,0x10
    38e4:	24010019 	li	at,25
    38e8:	16010051 	bne	s0,at,3a30 <func_80109B3C+0x8a4>
    38ec:	3c040000 	lui	a0,0x0
    38f0:	3c050000 	lui	a1,0x0
    38f4:	84a500d0 	lh	a1,208(a1)
    38f8:	24840000 	addiu	a0,a0,0
    38fc:	00009825 	move	s3,zero
    3900:	0c000000 	jal	0 <func_801069B0>
    3904:	00008825 	move	s1,zero
    3908:	3c050000 	lui	a1,0x0
    390c:	84a500d0 	lh	a1,208(a1)
    3910:	00002400 	sll	a0,zero,0x10
    3914:	00042403 	sra	a0,a0,0x10
    3918:	28a10064 	slti	at,a1,100
    391c:	00001825 	move	v1,zero
    3920:	1420000a 	bnez	at,394c <func_80109B3C+0x7c0>
    3924:	a7a4007c 	sh	a0,124(sp)
    3928:	24a5ff9c 	addiu	a1,a1,-100
    392c:	00052c00 	sll	a1,a1,0x10
    3930:	24840001 	addiu	a0,a0,1
    3934:	00052c03 	sra	a1,a1,0x10
    3938:	28a10064 	slti	at,a1,100
    393c:	00042400 	sll	a0,a0,0x10
    3940:	1020fff9 	beqz	at,3928 <func_80109B3C+0x79c>
    3944:	00042403 	sra	a0,a0,0x10
    3948:	a7a4007c 	sh	a0,124(sp)
    394c:	28a1000a 	slti	at,a1,10
    3950:	a7a3007e 	sh	v1,126(sp)
    3954:	1420000b 	bnez	at,3984 <func_80109B3C+0x7f8>
    3958:	a7a50080 	sh	a1,128(sp)
    395c:	24a5fff6 	addiu	a1,a1,-10
    3960:	00052c00 	sll	a1,a1,0x10
    3964:	24630001 	addiu	v1,v1,1
    3968:	00052c03 	sra	a1,a1,0x10
    396c:	28a1000a 	slti	at,a1,10
    3970:	00031c00 	sll	v1,v1,0x10
    3974:	1020fff9 	beqz	at,395c <func_80109B3C+0x7d0>
    3978:	00031c03 	sra	v1,v1,0x10
    397c:	a7a50080 	sh	a1,128(sp)
    3980:	a7a3007e 	sh	v1,126(sp)
    3984:	24010002 	li	at,2
    3988:	12610005 	beq	s3,at,39a0 <func_80109B3C+0x814>
    398c:	00135840 	sll	t3,s3,0x1
    3990:	03ab6821 	addu	t5,sp,t3
    3994:	85ad007c 	lh	t5,124(t5)
    3998:	11a00002 	beqz	t5,39a4 <func_80109B3C+0x818>
    399c:	00000000 	nop
    39a0:	24110001 	li	s1,1
    39a4:	12200018 	beqz	s1,3a08 <func_80109B3C+0x87c>
    39a8:	03c02025 	move	a0,s8
    39ac:	00136040 	sll	t4,s3,0x1
    39b0:	27ae007c 	addiu	t6,sp,124
    39b4:	018e8021 	addu	s0,t4,t6
    39b8:	86050000 	lh	a1,0(s0)
    39bc:	02f69021 	addu	s2,s7,s6
    39c0:	34018000 	li	at,0x8000
    39c4:	24a50010 	addiu	a1,a1,16
    39c8:	30a500ff 	andi	a1,a1,0xff
    39cc:	02419021 	addu	s2,s2,at
    39d0:	0c000000 	jal	0 <func_801069B0>
    39d4:	32a6ffff 	andi	a2,s5,0xffff
    39d8:	86180000 	lh	t8,0(s0)
    39dc:	3c040000 	lui	a0,0x0
    39e0:	26b50080 	addiu	s5,s5,128
    39e4:	270f0030 	addiu	t7,t8,48
    39e8:	a24f6306 	sb	t7,25350(s2)
    39ec:	86060000 	lh	a2,0(s0)
    39f0:	24840000 	addiu	a0,a0,0
    39f4:	0c000000 	jal	0 <func_801069B0>
    39f8:	24c50010 	addiu	a1,a2,16
    39fc:	26d60001 	addiu	s6,s6,1
    3a00:	0016b400 	sll	s6,s6,0x10
    3a04:	0016b403 	sra	s6,s6,0x10
    3a08:	26730001 	addiu	s3,s3,1
    3a0c:	00139c00 	sll	s3,s3,0x10
    3a10:	00139c03 	sra	s3,s3,0x10
    3a14:	2a610003 	slti	at,s3,3
    3a18:	5420ffdb 	bnezl	at,3988 <func_80109B3C+0x7fc>
    3a1c:	24010002 	li	at,2
    3a20:	26d6ffff 	addiu	s6,s6,-1
    3a24:	0016b400 	sll	s6,s6,0x10
    3a28:	10000324 	b	46bc <L8010B06C>
    3a2c:	0016b403 	sra	s6,s6,0x10
    3a30:	2401001d 	li	at,29
    3a34:	1601003d 	bne	s0,at,3b2c <func_80109B3C+0x9a0>
    3a38:	3c040000 	lui	a0,0x0
    3a3c:	24840000 	addiu	a0,a0,0
    3a40:	0c000000 	jal	0 <func_801069B0>
    3a44:	00009825 	move	s3,zero
    3a48:	3c030000 	lui	v1,0x0
    3a4c:	84631406 	lh	v1,5126(v1)
    3a50:	00002025 	move	a0,zero
    3a54:	a7a0007c 	sh	zero,124(sp)
    3a58:	2861000a 	slti	at,v1,10
    3a5c:	1420000b 	bnez	at,3a8c <func_80109B3C+0x900>
    3a60:	a7a3007e 	sh	v1,126(sp)
    3a64:	2463fff6 	addiu	v1,v1,-10
    3a68:	00031c00 	sll	v1,v1,0x10
    3a6c:	24840001 	addiu	a0,a0,1
    3a70:	00031c03 	sra	v1,v1,0x10
    3a74:	2861000a 	slti	at,v1,10
    3a78:	00042400 	sll	a0,a0,0x10
    3a7c:	1020fff9 	beqz	at,3a64 <func_80109B3C+0x8d8>
    3a80:	00042403 	sra	a0,a0,0x10
    3a84:	a7a4007c 	sh	a0,124(sp)
    3a88:	a7a3007e 	sh	v1,126(sp)
    3a8c:	24010001 	li	at,1
    3a90:	12610004 	beq	s3,at,3aa4 <func_80109B3C+0x918>
    3a94:	00134840 	sll	t1,s3,0x1
    3a98:	03a9c821 	addu	t9,sp,t1
    3a9c:	8739007c 	lh	t9,124(t9)
    3aa0:	13200018 	beqz	t9,3b04 <func_80109B3C+0x978>
    3aa4:	00135040 	sll	t2,s3,0x1
    3aa8:	27ab007c 	addiu	t3,sp,124
    3aac:	014b8021 	addu	s0,t2,t3
    3ab0:	86050000 	lh	a1,0(s0)
    3ab4:	02f69021 	addu	s2,s7,s6
    3ab8:	34018000 	li	at,0x8000
    3abc:	24a50010 	addiu	a1,a1,16
    3ac0:	30a500ff 	andi	a1,a1,0xff
    3ac4:	02419021 	addu	s2,s2,at
    3ac8:	03c02025 	move	a0,s8
    3acc:	0c000000 	jal	0 <func_801069B0>
    3ad0:	32a6ffff 	andi	a2,s5,0xffff
    3ad4:	860d0000 	lh	t5,0(s0)
    3ad8:	3c040000 	lui	a0,0x0
    3adc:	26b50080 	addiu	s5,s5,128
    3ae0:	25ac0030 	addiu	t4,t5,48
    3ae4:	a24c6306 	sb	t4,25350(s2)
    3ae8:	86060000 	lh	a2,0(s0)
    3aec:	24840000 	addiu	a0,a0,0
    3af0:	0c000000 	jal	0 <func_801069B0>
    3af4:	24c50010 	addiu	a1,a2,16
    3af8:	26d60001 	addiu	s6,s6,1
    3afc:	0016b400 	sll	s6,s6,0x10
    3b00:	0016b403 	sra	s6,s6,0x10
    3b04:	26730001 	addiu	s3,s3,1
    3b08:	00139c00 	sll	s3,s3,0x10
    3b0c:	00139c03 	sra	s3,s3,0x10
    3b10:	2a610002 	slti	at,s3,2
    3b14:	5420ffde 	bnezl	at,3a90 <func_80109B3C+0x904>
    3b18:	24010001 	li	at,1
    3b1c:	26d6ffff 	addiu	s6,s6,-1
    3b20:	0016b400 	sll	s6,s6,0x10
    3b24:	100002e5 	b	46bc <L8010B06C>
    3b28:	0016b403 	sra	s6,s6,0x10
    3b2c:	2401001e 	li	at,30
    3b30:	1601013d 	bne	s0,at,4028 <L8010A850+0x188>
    3b34:	8fa30054 	lw	v1,84(sp)
    3b38:	946763ce 	lhu	a3,25550(v1)
    3b3c:	26e17fff 	addiu	at,s7,32767
    3b40:	34028000 	li	v0,0x8000
    3b44:	24e70001 	addiu	a3,a3,1
    3b48:	30e7ffff 	andi	a3,a3,0xffff
    3b4c:	a42763cf 	sh	a3,25551(at)
    3b50:	03c77021 	addu	t6,s8,a3
    3b54:	01c2c021 	addu	t8,t6,v0
    3b58:	930f5c88 	lbu	t7,23688(t8)
    3b5c:	947963ce 	lhu	t9,25550(v1)
    3b60:	3c100000 	lui	s0,0x0
    3b64:	000f4880 	sll	t1,t7,0x2
    3b68:	03d95021 	addu	t2,s8,t9
    3b6c:	02098021 	addu	s0,s0,t1
    3b70:	01425821 	addu	t3,t2,v0
    3b74:	3c040000 	lui	a0,0x0
    3b78:	96100eba 	lhu	s0,3770(s0)
    3b7c:	24840000 	addiu	a0,a0,0
    3b80:	0c000000 	jal	0 <func_801069B0>
    3b84:	91655c88 	lbu	a1,23688(t3)
    3b88:	8fad0054 	lw	t5,84(sp)
    3b8c:	24010002 	li	at,2
    3b90:	3c0e0000 	lui	t6,0x0
    3b94:	95a363ce 	lhu	v1,25550(t5)
    3b98:	03c36021 	addu	t4,s8,v1
    3b9c:	25827fff 	addiu	v0,t4,32767
    3ba0:	90425c89 	lbu	v0,23689(v0)
    3ba4:	304200ff 	andi	v0,v0,0xff
    3ba8:	54410061 	bnel	v0,at,3d30 <func_80109B3C+0xba4>
    3bac:	2c410007 	sltiu	at,v0,7
    3bb0:	8dce0004 	lw	t6,4(t6)
    3bb4:	24010005 	li	at,5
    3bb8:	24020011 	li	v0,17
    3bbc:	11c00003 	beqz	t6,3bcc <func_80109B3C+0xa40>
    3bc0:	3c040000 	lui	a0,0x0
    3bc4:	10000001 	b	3bcc <func_80109B3C+0xa40>
    3bc8:	24020005 	li	v0,5
    3bcc:	14410004 	bne	v0,at,3be0 <func_80109B3C+0xa54>
    3bd0:	24840000 	addiu	a0,a0,0
    3bd4:	3210007f 	andi	s0,s0,0x7f
    3bd8:	1000001a 	b	3c44 <func_80109B3C+0xab8>
    3bdc:	3210ffff 	andi	s0,s0,0xffff
    3be0:	0003c040 	sll	t8,v1,0x1
    3be4:	03d87821 	addu	t7,s8,t8
    3be8:	25e97fff 	addiu	t1,t7,32767
    3bec:	95295c89 	lhu	t1,23689(t1)
    3bf0:	3c01ff00 	lui	at,0xff00
    3bf4:	3c050000 	lui	a1,0x0
    3bf8:	0121c824 	and	t9,t1,at
    3bfc:	00195080 	sll	t2,t9,0x2
    3c00:	00aa2821 	addu	a1,a1,t2
    3c04:	0c000000 	jal	0 <func_801069B0>
    3c08:	8ca50eb8 	lw	a1,3768(a1)
    3c0c:	8fab0054 	lw	t3,84(sp)
    3c10:	3c100000 	lui	s0,0x0
    3c14:	3c01ff00 	lui	at,0xff00
    3c18:	956d63ce 	lhu	t5,25550(t3)
    3c1c:	03cd6021 	addu	t4,s8,t5
    3c20:	258e7fff 	addiu	t6,t4,32767
    3c24:	91ce5c89 	lbu	t6,23689(t6)
    3c28:	000ec080 	sll	t8,t6,0x2
    3c2c:	02188021 	addu	s0,s0,t8
    3c30:	8e100eb8 	lw	s0,3768(s0)
    3c34:	02018024 	and	s0,s0,at
    3c38:	00108602 	srl	s0,s0,0x18
    3c3c:	3210007f 	andi	s0,s0,0x7f
    3c40:	3210ffff 	andi	s0,s0,0xffff
    3c44:	44902000 	mtc1	s0,$f4
    3c48:	3c040000 	lui	a0,0x0
    3c4c:	06010005 	bgez	s0,3c64 <func_80109B3C+0xad8>
    3c50:	46802020 	cvt.s.w	$f0,$f4
    3c54:	3c014f80 	lui	at,0x4f80
    3c58:	44813000 	mtc1	at,$f6
    3c5c:	00000000 	nop
    3c60:	46060000 	add.s	$f0,$f0,$f6
    3c64:	46000202 	mul.s	$f8,$f0,$f0
    3c68:	3c010000 	lui	at,0x0
    3c6c:	c42a0000 	lwc1	$f10,0(at)
    3c70:	3c013f00 	lui	at,0x3f00
    3c74:	44819000 	mtc1	at,$f18
    3c78:	24100001 	li	s0,1
    3c7c:	3c014f00 	lui	at,0x4f00
    3c80:	460a4402 	mul.s	$f16,$f8,$f10
    3c84:	24840000 	addiu	a0,a0,0
    3c88:	46128100 	add.s	$f4,$f16,$f18
    3c8c:	444ff800 	cfc1	t7,$31
    3c90:	44d0f800 	ctc1	s0,$31
    3c94:	00000000 	nop
    3c98:	460021a4 	cvt.w.s	$f6,$f4
    3c9c:	4450f800 	cfc1	s0,$31
    3ca0:	00000000 	nop
    3ca4:	32100078 	andi	s0,s0,0x78
    3ca8:	52000013 	beqzl	s0,3cf8 <func_80109B3C+0xb6c>
    3cac:	44103000 	mfc1	s0,$f6
    3cb0:	44813000 	mtc1	at,$f6
    3cb4:	24100001 	li	s0,1
    3cb8:	46062181 	sub.s	$f6,$f4,$f6
    3cbc:	44d0f800 	ctc1	s0,$31
    3cc0:	00000000 	nop
    3cc4:	460031a4 	cvt.w.s	$f6,$f6
    3cc8:	4450f800 	cfc1	s0,$31
    3ccc:	00000000 	nop
    3cd0:	32100078 	andi	s0,s0,0x78
    3cd4:	16000005 	bnez	s0,3cec <func_80109B3C+0xb60>
    3cd8:	00000000 	nop
    3cdc:	44103000 	mfc1	s0,$f6
    3ce0:	3c018000 	lui	at,0x8000
    3ce4:	10000007 	b	3d04 <func_80109B3C+0xb78>
    3ce8:	02018025 	or	s0,s0,at
    3cec:	10000005 	b	3d04 <func_80109B3C+0xb78>
    3cf0:	2410ffff 	li	s0,-1
    3cf4:	44103000 	mfc1	s0,$f6
    3cf8:	00000000 	nop
    3cfc:	0600fffb 	bltz	s0,3cec <func_80109B3C+0xb60>
    3d00:	00000000 	nop
    3d04:	44cff800 	ctc1	t7,$31
    3d08:	3210ffff 	andi	s0,s0,0xffff
    3d0c:	0c000000 	jal	0 <func_801069B0>
    3d10:	02002825 	move	a1,s0
    3d14:	8fa90054 	lw	t1,84(sp)
    3d18:	953963ce 	lhu	t9,25550(t1)
    3d1c:	03d95021 	addu	t2,s8,t9
    3d20:	25427fff 	addiu	v0,t2,32767
    3d24:	90425c89 	lbu	v0,23689(v0)
    3d28:	304200ff 	andi	v0,v0,0xff
    3d2c:	2c410007 	sltiu	at,v0,7
    3d30:	10200262 	beqz	at,46bc <L8010B06C>
    3d34:	00025880 	sll	t3,v0,0x2
    3d38:	3c010000 	lui	at,0x0
    3d3c:	002b0821 	addu	at,at,t3
    3d40:	8c2b0000 	lw	t3,0(at)
    3d44:	01600008 	jr	t3
    3d48:	00000000 	nop

00003d4c <L8010A6FC>:
    3d4c:	00101400 	sll	v0,s0,0x10
    3d50:	00002400 	sll	a0,zero,0x10
    3d54:	00021403 	sra	v0,v0,0x10
    3d58:	00042403 	sra	a0,a0,0x10
    3d5c:	00001c00 	sll	v1,zero,0x10
    3d60:	284103e8 	slti	at,v0,1000
    3d64:	00031c03 	sra	v1,v1,0x10
    3d68:	00002825 	move	a1,zero
    3d6c:	a7a4007c 	sh	a0,124(sp)
    3d70:	00009825 	move	s3,zero
    3d74:	1420000a 	bnez	at,3da0 <L8010A6FC+0x54>
    3d78:	00008825 	move	s1,zero
    3d7c:	2442fc18 	addiu	v0,v0,-1000
    3d80:	00021400 	sll	v0,v0,0x10
    3d84:	24840001 	addiu	a0,a0,1
    3d88:	00021403 	sra	v0,v0,0x10
    3d8c:	284103e8 	slti	at,v0,1000
    3d90:	00042400 	sll	a0,a0,0x10
    3d94:	1020fff9 	beqz	at,3d7c <L8010A6FC+0x30>
    3d98:	00042403 	sra	a0,a0,0x10
    3d9c:	a7a4007c 	sh	a0,124(sp)
    3da0:	28410064 	slti	at,v0,100
    3da4:	1420000a 	bnez	at,3dd0 <L8010A6FC+0x84>
    3da8:	a7a3007e 	sh	v1,126(sp)
    3dac:	2442ff9c 	addiu	v0,v0,-100
    3db0:	00021400 	sll	v0,v0,0x10
    3db4:	24630001 	addiu	v1,v1,1
    3db8:	00021403 	sra	v0,v0,0x10
    3dbc:	28410064 	slti	at,v0,100
    3dc0:	00031c00 	sll	v1,v1,0x10
    3dc4:	1020fff9 	beqz	at,3dac <L8010A6FC+0x60>
    3dc8:	00031c03 	sra	v1,v1,0x10
    3dcc:	a7a3007e 	sh	v1,126(sp)
    3dd0:	2841000a 	slti	at,v0,10
    3dd4:	a7a20082 	sh	v0,130(sp)
    3dd8:	1420000b 	bnez	at,3e08 <L8010A6FC+0xbc>
    3ddc:	a7a50080 	sh	a1,128(sp)
    3de0:	2442fff6 	addiu	v0,v0,-10
    3de4:	00021400 	sll	v0,v0,0x10
    3de8:	24a50001 	addiu	a1,a1,1
    3dec:	00021403 	sra	v0,v0,0x10
    3df0:	2841000a 	slti	at,v0,10
    3df4:	00052c00 	sll	a1,a1,0x10
    3df8:	1020fff9 	beqz	at,3de0 <L8010A6FC+0x94>
    3dfc:	00052c03 	sra	a1,a1,0x10
    3e00:	a7a50080 	sh	a1,128(sp)
    3e04:	a7a20082 	sh	v0,130(sp)
    3e08:	24010003 	li	at,3
    3e0c:	12610005 	beq	s3,at,3e24 <L8010A6FC+0xd8>
    3e10:	00136840 	sll	t5,s3,0x1
    3e14:	03ad6021 	addu	t4,sp,t5
    3e18:	858c007c 	lh	t4,124(t4)
    3e1c:	11800002 	beqz	t4,3e28 <L8010A6FC+0xdc>
    3e20:	00000000 	nop
    3e24:	24110001 	li	s1,1
    3e28:	12200013 	beqz	s1,3e78 <L8010A6FC+0x12c>
    3e2c:	03c02025 	move	a0,s8
    3e30:	00137040 	sll	t6,s3,0x1
    3e34:	27b8007c 	addiu	t8,sp,124
    3e38:	01d88021 	addu	s0,t6,t8
    3e3c:	86050000 	lh	a1,0(s0)
    3e40:	02f69021 	addu	s2,s7,s6
    3e44:	34018000 	li	at,0x8000
    3e48:	24a50010 	addiu	a1,a1,16
    3e4c:	30a500ff 	andi	a1,a1,0xff
    3e50:	02419021 	addu	s2,s2,at
    3e54:	0c000000 	jal	0 <func_801069B0>
    3e58:	32a6ffff 	andi	a2,s5,0xffff
    3e5c:	860f0000 	lh	t7,0(s0)
    3e60:	26d60001 	addiu	s6,s6,1
    3e64:	0016b400 	sll	s6,s6,0x10
    3e68:	25e90030 	addiu	t1,t7,48
    3e6c:	a2496306 	sb	t1,25350(s2)
    3e70:	26b50080 	addiu	s5,s5,128
    3e74:	0016b403 	sra	s6,s6,0x10
    3e78:	26730001 	addiu	s3,s3,1
    3e7c:	00139c00 	sll	s3,s3,0x10
    3e80:	00139c03 	sra	s3,s3,0x10
    3e84:	2a610004 	slti	at,s3,4
    3e88:	5420ffe0 	bnezl	at,3e0c <L8010A6FC+0xc0>
    3e8c:	24010003 	li	at,3
    3e90:	26d6ffff 	addiu	s6,s6,-1
    3e94:	0016b400 	sll	s6,s6,0x10
    3e98:	10000208 	b	46bc <L8010B06C>
    3e9c:	0016b403 	sra	s6,s6,0x10

00003ea0 <L8010A850>:
    3ea0:	00101400 	sll	v0,s0,0x10
    3ea4:	00001c00 	sll	v1,zero,0x10
    3ea8:	00002400 	sll	a0,zero,0x10
    3eac:	00021403 	sra	v0,v0,0x10
    3eb0:	00042403 	sra	a0,a0,0x10
    3eb4:	00031c03 	sra	v1,v1,0x10
    3eb8:	2841003c 	slti	at,v0,60
    3ebc:	00002825 	move	a1,zero
    3ec0:	a7a3007e 	sh	v1,126(sp)
    3ec4:	a7a4007c 	sh	a0,124(sp)
    3ec8:	14200014 	bnez	at,3f1c <L8010A850+0x7c>
    3ecc:	00009825 	move	s3,zero
    3ed0:	24630001 	addiu	v1,v1,1
    3ed4:	00031c00 	sll	v1,v1,0x10
    3ed8:	00031c03 	sra	v1,v1,0x10
    3edc:	2861000a 	slti	at,v1,10
    3ee0:	14200007 	bnez	at,3f00 <L8010A850+0x60>
    3ee4:	2442ffc4 	addiu	v0,v0,-60
    3ee8:	24840001 	addiu	a0,a0,1
    3eec:	2463fff6 	addiu	v1,v1,-10
    3ef0:	00042400 	sll	a0,a0,0x10
    3ef4:	00031c00 	sll	v1,v1,0x10
    3ef8:	00042403 	sra	a0,a0,0x10
    3efc:	00031c03 	sra	v1,v1,0x10
    3f00:	00021400 	sll	v0,v0,0x10
    3f04:	00021403 	sra	v0,v0,0x10
    3f08:	2841003c 	slti	at,v0,60
    3f0c:	5020fff1 	beqzl	at,3ed4 <L8010A850+0x34>
    3f10:	24630001 	addiu	v1,v1,1
    3f14:	a7a4007c 	sh	a0,124(sp)
    3f18:	a7a3007e 	sh	v1,126(sp)
    3f1c:	2841000a 	slti	at,v0,10
    3f20:	a7a20082 	sh	v0,130(sp)
    3f24:	1420000b 	bnez	at,3f54 <L8010A850+0xb4>
    3f28:	a7a50080 	sh	a1,128(sp)
    3f2c:	2442fff6 	addiu	v0,v0,-10
    3f30:	00021400 	sll	v0,v0,0x10
    3f34:	24a50001 	addiu	a1,a1,1
    3f38:	00021403 	sra	v0,v0,0x10
    3f3c:	2841000a 	slti	at,v0,10
    3f40:	00052c00 	sll	a1,a1,0x10
    3f44:	1020fff9 	beqz	at,3f2c <L8010A850+0x8c>
    3f48:	00052c03 	sra	a1,a1,0x10
    3f4c:	a7a50080 	sh	a1,128(sp)
    3f50:	a7a20082 	sh	v0,130(sp)
    3f54:	0013c840 	sll	t9,s3,0x1
    3f58:	27aa007c 	addiu	t2,sp,124
    3f5c:	032a8021 	addu	s0,t9,t2
    3f60:	86050000 	lh	a1,0(s0)
    3f64:	02f69021 	addu	s2,s7,s6
    3f68:	34018000 	li	at,0x8000
    3f6c:	24a50010 	addiu	a1,a1,16
    3f70:	30a500ff 	andi	a1,a1,0xff
    3f74:	02419021 	addu	s2,s2,at
    3f78:	03c02025 	move	a0,s8
    3f7c:	0c000000 	jal	0 <func_801069B0>
    3f80:	32a6ffff 	andi	a2,s5,0xffff
    3f84:	860b0000 	lh	t3,0(s0)
    3f88:	26d60001 	addiu	s6,s6,1
    3f8c:	0016b400 	sll	s6,s6,0x10
    3f90:	24010001 	li	at,1
    3f94:	256d0030 	addiu	t5,t3,48
    3f98:	26b50080 	addiu	s5,s5,128
    3f9c:	a24d6306 	sb	t5,25350(s2)
    3fa0:	1661000e 	bne	s3,at,3fdc <L8010A850+0x13c>
    3fa4:	0016b403 	sra	s6,s6,0x10
    3fa8:	03c02025 	move	a0,s8
    3fac:	24050002 	li	a1,2
    3fb0:	0c000000 	jal	0 <func_801069B0>
    3fb4:	32a6ffff 	andi	a2,s5,0xffff
    3fb8:	02f67021 	addu	t6,s7,s6
    3fbc:	26d60001 	addiu	s6,s6,1
    3fc0:	25c17fff 	addiu	at,t6,32767
    3fc4:	240c0022 	li	t4,34
    3fc8:	0016b400 	sll	s6,s6,0x10
    3fcc:	26b50080 	addiu	s5,s5,128
    3fd0:	a02c6307 	sb	t4,25351(at)
    3fd4:	1000000c 	b	4008 <L8010A850+0x168>
    3fd8:	0016b403 	sra	s6,s6,0x10
    3fdc:	24010003 	li	at,3
    3fe0:	16610009 	bne	s3,at,4008 <L8010A850+0x168>
    3fe4:	03c02025 	move	a0,s8
    3fe8:	24050002 	li	a1,2
    3fec:	0c000000 	jal	0 <func_801069B0>
    3ff0:	32a6ffff 	andi	a2,s5,0xffff
    3ff4:	02f67821 	addu	t7,s7,s6
    3ff8:	25e17fff 	addiu	at,t7,32767
    3ffc:	24180022 	li	t8,34
    4000:	26b50080 	addiu	s5,s5,128
    4004:	a0386307 	sb	t8,25351(at)
    4008:	26730001 	addiu	s3,s3,1
    400c:	00139c00 	sll	s3,s3,0x10
    4010:	00139c03 	sra	s3,s3,0x10
    4014:	2a610004 	slti	at,s3,4
    4018:	5420ffcf 	bnezl	at,3f58 <L8010A850+0xb8>
    401c:	0013c840 	sll	t9,s3,0x1
    4020:	100001a7 	b	46c0 <L8010B06C+0x4>
    4024:	8fb90054 	lw	t9,84(sp)
    4028:	2401001f 	li	at,31
    402c:	1601006b 	bne	s0,at,41dc <L8010A850+0x33c>
    4030:	3c040000 	lui	a0,0x0
    4034:	24840000 	addiu	a0,a0,0
    4038:	0c000000 	jal	0 <func_801069B0>
    403c:	00009825 	move	s3,zero
    4040:	3c090000 	lui	t1,0x0
    4044:	9529000c 	lhu	t1,12(t1)
    4048:	00002025 	move	a0,zero
    404c:	3c014f80 	lui	at,0x4f80
    4050:	44894000 	mtc1	t1,$f8
    4054:	05210004 	bgez	t1,4068 <L8010A850+0x1c8>
    4058:	468042a0 	cvt.s.w	$f10,$f8
    405c:	44818000 	mtc1	at,$f16
    4060:	00000000 	nop
    4064:	46105280 	add.s	$f10,$f10,$f16
    4068:	3c013cb4 	lui	at,0x3cb4
    406c:	44819000 	mtc1	at,$f18
    4070:	3c014270 	lui	at,0x4270
    4074:	44812000 	mtc1	at,$f4
    4078:	46125002 	mul.s	$f0,$f10,$f18
    407c:	a7a4007c 	sh	a0,124(sp)
    4080:	46040183 	div.s	$f6,$f0,$f4
    4084:	4600040d 	trunc.w.s	$f16,$f0
    4088:	44028000 	mfc1	v0,$f16
    408c:	00000000 	nop
    4090:	00021400 	sll	v0,v0,0x10
    4094:	00021403 	sra	v0,v0,0x10
    4098:	4600320d 	trunc.w.s	$f8,$f6
    409c:	44034000 	mfc1	v1,$f8
    40a0:	00000000 	nop
    40a4:	00031c00 	sll	v1,v1,0x10
    40a8:	00031c03 	sra	v1,v1,0x10
    40ac:	2861000a 	slti	at,v1,10
    40b0:	1420000b 	bnez	at,40e0 <L8010A850+0x240>
    40b4:	a7a3007e 	sh	v1,126(sp)
    40b8:	2463fff6 	addiu	v1,v1,-10
    40bc:	00031c00 	sll	v1,v1,0x10
    40c0:	24840001 	addiu	a0,a0,1
    40c4:	00031c03 	sra	v1,v1,0x10
    40c8:	2861000a 	slti	at,v1,10
    40cc:	00042400 	sll	a0,a0,0x10
    40d0:	1020fff9 	beqz	at,40b8 <L8010A850+0x218>
    40d4:	00042403 	sra	a0,a0,0x10
    40d8:	a7a4007c 	sh	a0,124(sp)
    40dc:	a7a3007e 	sh	v1,126(sp)
    40e0:	2401003c 	li	at,60
    40e4:	0041001a 	div	zero,v0,at
    40e8:	00001010 	mfhi	v0
    40ec:	00021400 	sll	v0,v0,0x10
    40f0:	00021403 	sra	v0,v0,0x10
    40f4:	2841000a 	slti	at,v0,10
    40f8:	00002825 	move	a1,zero
    40fc:	a7a20082 	sh	v0,130(sp)
    4100:	1420000b 	bnez	at,4130 <L8010A850+0x290>
    4104:	a7a00080 	sh	zero,128(sp)
    4108:	2442fff6 	addiu	v0,v0,-10
    410c:	00021400 	sll	v0,v0,0x10
    4110:	24a50001 	addiu	a1,a1,1
    4114:	00021403 	sra	v0,v0,0x10
    4118:	2841000a 	slti	at,v0,10
    411c:	00052c00 	sll	a1,a1,0x10
    4120:	1020fff9 	beqz	at,4108 <L8010A850+0x268>
    4124:	00052c03 	sra	a1,a1,0x10
    4128:	a7a50080 	sh	a1,128(sp)
    412c:	a7a20082 	sh	v0,130(sp)
    4130:	00135840 	sll	t3,s3,0x1
    4134:	27ad007c 	addiu	t5,sp,124
    4138:	016d8021 	addu	s0,t3,t5
    413c:	86050000 	lh	a1,0(s0)
    4140:	02f69021 	addu	s2,s7,s6
    4144:	34018000 	li	at,0x8000
    4148:	24a50010 	addiu	a1,a1,16
    414c:	30a500ff 	andi	a1,a1,0xff
    4150:	02419021 	addu	s2,s2,at
    4154:	03c02025 	move	a0,s8
    4158:	0c000000 	jal	0 <func_801069B0>
    415c:	32a6ffff 	andi	a2,s5,0xffff
    4160:	860c0000 	lh	t4,0(s0)
    4164:	26d60001 	addiu	s6,s6,1
    4168:	0016b400 	sll	s6,s6,0x10
    416c:	24010001 	li	at,1
    4170:	258e0030 	addiu	t6,t4,48
    4174:	26b50080 	addiu	s5,s5,128
    4178:	a24e6306 	sb	t6,25350(s2)
    417c:	1661000d 	bne	s3,at,41b4 <L8010A850+0x314>
    4180:	0016b403 	sra	s6,s6,0x10
    4184:	03c02025 	move	a0,s8
    4188:	2405001a 	li	a1,26
    418c:	0c000000 	jal	0 <func_801069B0>
    4190:	32a6ffff 	andi	a2,s5,0xffff
    4194:	02f67821 	addu	t7,s7,s6
    4198:	26d60001 	addiu	s6,s6,1
    419c:	25e17fff 	addiu	at,t7,32767
    41a0:	2418003a 	li	t8,58
    41a4:	0016b400 	sll	s6,s6,0x10
    41a8:	26b50080 	addiu	s5,s5,128
    41ac:	a0386307 	sb	t8,25351(at)
    41b0:	0016b403 	sra	s6,s6,0x10
    41b4:	26730001 	addiu	s3,s3,1
    41b8:	00139c00 	sll	s3,s3,0x10
    41bc:	00139c03 	sra	s3,s3,0x10
    41c0:	2a610004 	slti	at,s3,4
    41c4:	5420ffdb 	bnezl	at,4134 <L8010A850+0x294>
    41c8:	00135840 	sll	t3,s3,0x1
    41cc:	26d6ffff 	addiu	s6,s6,-1
    41d0:	0016b400 	sll	s6,s6,0x10
    41d4:	10000139 	b	46bc <L8010B06C>
    41d8:	0016b403 	sra	s6,s6,0x10
    41dc:	24010013 	li	at,19
    41e0:	16010026 	bne	s0,at,427c <L8010A850+0x3dc>
    41e4:	8fa30054 	lw	v1,84(sp)
    41e8:	946963ce 	lhu	t1,25550(v1)
    41ec:	26c20001 	addiu	v0,s6,1
    41f0:	00023c00 	sll	a3,v0,0x10
    41f4:	03c9c821 	addu	t9,s8,t1
    41f8:	272a7fff 	addiu	t2,t9,32767
    41fc:	914a5c8a 	lbu	t2,23690(t2)
    4200:	00073c03 	sra	a3,a3,0x10
    4204:	02e75821 	addu	t3,s7,a3
    4208:	25617fff 	addiu	at,t3,32767
    420c:	a02a6307 	sb	t2,25351(at)
    4210:	946c63ce 	lhu	t4,25550(v1)
    4214:	0002b400 	sll	s6,v0,0x10
    4218:	0016b403 	sra	s6,s6,0x10
    421c:	02f66821 	addu	t5,s7,s6
    4220:	03cc7021 	addu	t6,s8,t4
    4224:	25c67fff 	addiu	a2,t6,32767
    4228:	25a57fff 	addiu	a1,t5,32767
    422c:	3c040000 	lui	a0,0x0
    4230:	24840000 	addiu	a0,a0,0
    4234:	90a56307 	lbu	a1,25351(a1)
    4238:	0c000000 	jal	0 <func_801069B0>
    423c:	90c65c8a 	lbu	a2,23690(a2)
    4240:	3c190000 	lui	t9,0x0
    4244:	8f390000 	lw	t9,0(t9)
    4248:	8fb80054 	lw	t8,84(sp)
    424c:	8fa40098 	lw	a0,152(sp)
    4250:	87260f16 	lh	a2,3862(t9)
    4254:	970f63ce 	lhu	t7,25550(t8)
    4258:	24c6000a 	addiu	a2,a2,10
    425c:	03cf4821 	addu	t1,s8,t7
    4260:	25257fff 	addiu	a1,t1,32767
    4264:	00063400 	sll	a2,a2,0x10
    4268:	00063403 	sra	a2,a2,0x10
    426c:	0c000000 	jal	0 <func_801069B0>
    4270:	90a55c8a 	lbu	a1,23690(a1)
    4274:	10000112 	b	46c0 <L8010B06C+0x4>
    4278:	8fb90054 	lw	t9,84(sp)
    427c:	24010015 	li	at,21
    4280:	16010051 	bne	s0,at,43c8 <L8010A850+0x528>
    4284:	8fa20054 	lw	v0,84(sp)
    4288:	944a63ce 	lhu	t2,25550(v0)
    428c:	26e17fff 	addiu	at,s7,32767
    4290:	3c100000 	lui	s0,0x0
    4294:	03ca5821 	addu	t3,s8,t2
    4298:	256d7fff 	addiu	t5,t3,32767
    429c:	91ad5c8a 	lbu	t5,23690(t5)
    42a0:	26100000 	addiu	s0,s0,0
    42a4:	3c070000 	lui	a3,0x0
    42a8:	000d6040 	sll	t4,t5,0x1
    42ac:	a42c63f7 	sh	t4,25591(at)
    42b0:	944e63ce 	lhu	t6,25550(v0)
    42b4:	24e70000 	addiu	a3,a3,0
    42b8:	24060900 	li	a2,2304
    42bc:	03cec021 	addu	t8,s8,t6
    42c0:	270f7fff 	addiu	t7,t8,32767
    42c4:	91ef5c8b 	lbu	t7,23691(t7)
    42c8:	31e900f0 	andi	t1,t7,0xf0
    42cc:	0009c903 	sra	t9,t1,0x4
    42d0:	a03963f9 	sb	t9,25593(at)
    42d4:	944a63ce 	lhu	t2,25550(v0)
    42d8:	03ca5821 	addu	t3,s8,t2
    42dc:	256d7fff 	addiu	t5,t3,32767
    42e0:	91ad5c8b 	lbu	t5,23691(t5)
    42e4:	31ac000f 	andi	t4,t5,0xf
    42e8:	a02c63fa 	sb	t4,25594(at)
    42ec:	944e63ce 	lhu	t6,25550(v0)
    42f0:	03cec021 	addu	t8,s8,t6
    42f4:	270f7fff 	addiu	t7,t8,32767
    42f8:	91ef5c8c 	lbu	t7,23692(t7)
    42fc:	31e900f0 	andi	t1,t7,0xf0
    4300:	0009c903 	sra	t9,t1,0x4
    4304:	a03963fb 	sb	t9,25595(at)
    4308:	944a63ce 	lhu	t2,25550(v0)
    430c:	24090002 	li	t1,2
    4310:	240f0726 	li	t7,1830
    4314:	03ca5821 	addu	t3,s8,t2
    4318:	256d7fff 	addiu	t5,t3,32767
    431c:	91ad5c8c 	lbu	t5,23692(t5)
    4320:	31ac000f 	andi	t4,t5,0xf
    4324:	a02c63fc 	sb	t4,25596(at)
    4328:	944e63f6 	lhu	t6,25590(v0)
    432c:	8c4462b0 	lw	a0,25264(v0)
    4330:	a7a90086 	sh	t1,134(sp)
    4334:	000ec0c0 	sll	t8,t6,0x3
    4338:	030ec021 	addu	t8,t8,t6
    433c:	0018c200 	sll	t8,t8,0x8
    4340:	02182821 	addu	a1,s0,t8
    4344:	afaf0010 	sw	t7,16(sp)
    4348:	0c000000 	jal	0 <func_801069B0>
    434c:	24841000 	addiu	a0,a0,4096
    4350:	8fa20054 	lw	v0,84(sp)
    4354:	3c070000 	lui	a3,0x0
    4358:	240b072a 	li	t3,1834
    435c:	945963f6 	lhu	t9,25590(v0)
    4360:	8c4462b0 	lw	a0,25264(v0)
    4364:	afab0010 	sw	t3,16(sp)
    4368:	001950c0 	sll	t2,t9,0x3
    436c:	01595021 	addu	t2,t2,t9
    4370:	000a5200 	sll	t2,t2,0x8
    4374:	020a2821 	addu	a1,s0,t2
    4378:	24a50900 	addiu	a1,a1,2304
    437c:	24e70000 	addiu	a3,a3,0
    4380:	24060900 	li	a2,2304
    4384:	0c000000 	jal	0 <func_801069B0>
    4388:	24841900 	addiu	a0,a0,6400
    438c:	8fad0054 	lw	t5,84(sp)
    4390:	26e17fff 	addiu	at,s7,32767
    4394:	3c020000 	lui	v0,0x0
    4398:	95ac63ce 	lhu	t4,25550(t5)
    439c:	3c190000 	lui	t9,0x0
    43a0:	24090032 	li	t1,50
    43a4:	258e0003 	addiu	t6,t4,3
    43a8:	a42e63cf 	sh	t6,25551(at)
    43ac:	8c420000 	lw	v0,0(v0)
    43b0:	84580f16 	lh	t8,3862(v0)
    43b4:	270f0008 	addiu	t7,t8,8
    43b8:	a44f0b0e 	sh	t7,2830(v0)
    43bc:	8f390000 	lw	t9,0(t9)
    43c0:	100000be 	b	46bc <L8010B06C>
    43c4:	a7290b00 	sh	t1,2816(t9)
    43c8:	24010005 	li	at,5
    43cc:	16010012 	bne	s0,at,4418 <L8010A850+0x578>
    43d0:	26c20001 	addiu	v0,s6,1
    43d4:	8faa0054 	lw	t2,84(sp)
    43d8:	00021c00 	sll	v1,v0,0x10
    43dc:	26e17fff 	addiu	at,s7,32767
    43e0:	954763ce 	lhu	a3,25550(t2)
    43e4:	00031c03 	sra	v1,v1,0x10
    43e8:	02e36021 	addu	t4,s7,v1
    43ec:	24e70001 	addiu	a3,a3,1
    43f0:	30e7ffff 	andi	a3,a3,0xffff
    43f4:	03c75821 	addu	t3,s8,a3
    43f8:	256d7fff 	addiu	t5,t3,32767
    43fc:	a42763cf 	sh	a3,25551(at)
    4400:	91ad5c89 	lbu	t5,23689(t5)
    4404:	25817fff 	addiu	at,t4,32767
    4408:	0002b400 	sll	s6,v0,0x10
    440c:	0016b403 	sra	s6,s6,0x10
    4410:	100000aa 	b	46bc <L8010B06C>
    4414:	a02d6307 	sb	t5,25351(at)
    4418:	24010001 	li	at,1
    441c:	16010004 	bne	s0,at,4430 <L8010A850+0x590>
    4420:	87ae0086 	lh	t6,134(sp)
    4424:	25d80001 	addiu	t8,t6,1
    4428:	100000a4 	b	46bc <L8010B06C>
    442c:	a7b80086 	sh	t8,134(sp)
    4430:	24010008 	li	at,8
    4434:	120100a1 	beq	s0,at,46bc <L8010B06C>
    4438:	24010009 	li	at,9
    443c:	1201009f 	beq	s0,at,46bc <L8010B06C>
    4440:	2401000d 	li	at,13
    4444:	1201009d 	beq	s0,at,46bc <L8010B06C>
    4448:	24010010 	li	at,16
    444c:	1201009b 	beq	s0,at,46bc <L8010B06C>
    4450:	2401000a 	li	at,10
    4454:	12010099 	beq	s0,at,46bc <L8010B06C>
    4458:	2401001a 	li	at,26
    445c:	12010097 	beq	s0,at,46bc <L8010B06C>
    4460:	2401000e 	li	at,14
    4464:	1601001a 	bne	s0,at,44d0 <L8010A850+0x630>
    4468:	3c020000 	lui	v0,0x0
    446c:	24420000 	addiu	v0,v0,0
    4470:	240f0001 	li	t7,1
    4474:	a44f0000 	sh	t7,0(v0)
    4478:	3c040000 	lui	a0,0x0
    447c:	24840000 	addiu	a0,a0,0
    4480:	0c000000 	jal	0 <func_801069B0>
    4484:	84450000 	lh	a1,0(v0)
    4488:	8fa90054 	lw	t1,84(sp)
    448c:	26c20001 	addiu	v0,s6,1
    4490:	00021c00 	sll	v1,v0,0x10
    4494:	952763ce 	lhu	a3,25550(t1)
    4498:	26e17fff 	addiu	at,s7,32767
    449c:	00031c03 	sra	v1,v1,0x10
    44a0:	24e70001 	addiu	a3,a3,1
    44a4:	30e7ffff 	andi	a3,a3,0xffff
    44a8:	03c7c821 	addu	t9,s8,a3
    44ac:	272a7fff 	addiu	t2,t9,32767
    44b0:	a42763cf 	sh	a3,25551(at)
    44b4:	914a5c89 	lbu	t2,23689(t2)
    44b8:	02e35821 	addu	t3,s7,v1
    44bc:	25617fff 	addiu	at,t3,32767
    44c0:	0002b400 	sll	s6,v0,0x10
    44c4:	0016b403 	sra	s6,s6,0x10
    44c8:	1000007c 	b	46bc <L8010B06C>
    44cc:	a02a6307 	sb	t2,25351(at)
    44d0:	24010011 	li	at,17
    44d4:	1601002a 	bne	s0,at,4580 <L8010A850+0x6e0>
    44d8:	3c020000 	lui	v0,0x0
    44dc:	24420000 	addiu	v0,v0,0
    44e0:	240d0001 	li	t5,1
    44e4:	a44d0000 	sh	t5,0(v0)
    44e8:	3c040000 	lui	a0,0x0
    44ec:	24840000 	addiu	a0,a0,0
    44f0:	0c000000 	jal	0 <func_801069B0>
    44f4:	84450000 	lh	a1,0(v0)
    44f8:	8fac0054 	lw	t4,84(sp)
    44fc:	26c20001 	addiu	v0,s6,1
    4500:	26e17fff 	addiu	at,s7,32767
    4504:	958763ce 	lhu	a3,25550(t4)
    4508:	00021c00 	sll	v1,v0,0x10
    450c:	00031c03 	sra	v1,v1,0x10
    4510:	24e70001 	addiu	a3,a3,1
    4514:	30e7ffff 	andi	a3,a3,0xffff
    4518:	03c77021 	addu	t6,s8,a3
    451c:	25d87fff 	addiu	t8,t6,32767
    4520:	a42763cf 	sh	a3,25551(at)
    4524:	93185c89 	lbu	t8,23689(t8)
    4528:	02e37821 	addu	t7,s7,v1
    452c:	25e17fff 	addiu	at,t7,32767
    4530:	a0386307 	sb	t8,25351(at)
    4534:	8fa90054 	lw	t1,84(sp)
    4538:	0040b025 	move	s6,v0
    453c:	26c20001 	addiu	v0,s6,1
    4540:	952763ce 	lhu	a3,25550(t1)
    4544:	00021c00 	sll	v1,v0,0x10
    4548:	26e17fff 	addiu	at,s7,32767
    454c:	24e70001 	addiu	a3,a3,1
    4550:	30e7ffff 	andi	a3,a3,0xffff
    4554:	03c7c821 	addu	t9,s8,a3
    4558:	272a7fff 	addiu	t2,t9,32767
    455c:	a42763cf 	sh	a3,25551(at)
    4560:	00031c03 	sra	v1,v1,0x10
    4564:	914a5c89 	lbu	t2,23689(t2)
    4568:	02e35821 	addu	t3,s7,v1
    456c:	25617fff 	addiu	at,t3,32767
    4570:	0002b400 	sll	s6,v0,0x10
    4574:	0016b403 	sra	s6,s6,0x10
    4578:	10000050 	b	46bc <L8010B06C>
    457c:	a02a6307 	sb	t2,25351(at)
    4580:	24010006 	li	at,6
    4584:	12010004 	beq	s0,at,4598 <L8010A850+0x6f8>
    4588:	26c20001 	addiu	v0,s6,1
    458c:	24010014 	li	at,20
    4590:	56010013 	bnel	s0,at,45e0 <L8010A850+0x740>
    4594:	24010012 	li	at,18
    4598:	8fad0054 	lw	t5,84(sp)
    459c:	00021c00 	sll	v1,v0,0x10
    45a0:	26e17fff 	addiu	at,s7,32767
    45a4:	95a763ce 	lhu	a3,25550(t5)
    45a8:	00031c03 	sra	v1,v1,0x10
    45ac:	02e37821 	addu	t7,s7,v1
    45b0:	24e70001 	addiu	a3,a3,1
    45b4:	30e7ffff 	andi	a3,a3,0xffff
    45b8:	03c76021 	addu	t4,s8,a3
    45bc:	258e7fff 	addiu	t6,t4,32767
    45c0:	a42763cf 	sh	a3,25551(at)
    45c4:	91d85c89 	lbu	t8,23689(t6)
    45c8:	25e17fff 	addiu	at,t7,32767
    45cc:	0002b400 	sll	s6,v0,0x10
    45d0:	0016b403 	sra	s6,s6,0x10
    45d4:	10000039 	b	46bc <L8010B06C>
    45d8:	a0386307 	sb	t8,25351(at)
    45dc:	24010012 	li	at,18
    45e0:	16010022 	bne	s0,at,466c <L8010A850+0x7cc>
    45e4:	26c20001 	addiu	v0,s6,1
    45e8:	8fa90054 	lw	t1,84(sp)
    45ec:	26e17fff 	addiu	at,s7,32767
    45f0:	00021c00 	sll	v1,v0,0x10
    45f4:	952763ce 	lhu	a3,25550(t1)
    45f8:	00031c03 	sra	v1,v1,0x10
    45fc:	02e35821 	addu	t3,s7,v1
    4600:	24e70001 	addiu	a3,a3,1
    4604:	30e7ffff 	andi	a3,a3,0xffff
    4608:	03c7c821 	addu	t9,s8,a3
    460c:	272a7fff 	addiu	t2,t9,32767
    4610:	a42763cf 	sh	a3,25551(at)
    4614:	914a5c89 	lbu	t2,23689(t2)
    4618:	25617fff 	addiu	at,t3,32767
    461c:	0040b025 	move	s6,v0
    4620:	a02a6307 	sb	t2,25351(at)
    4624:	8fad0054 	lw	t5,84(sp)
    4628:	26c20001 	addiu	v0,s6,1
    462c:	00021c00 	sll	v1,v0,0x10
    4630:	95a763ce 	lhu	a3,25550(t5)
    4634:	26e17fff 	addiu	at,s7,32767
    4638:	00031c03 	sra	v1,v1,0x10
    463c:	24e70001 	addiu	a3,a3,1
    4640:	30e7ffff 	andi	a3,a3,0xffff
    4644:	03c76021 	addu	t4,s8,a3
    4648:	258e7fff 	addiu	t6,t4,32767
    464c:	a42763cf 	sh	a3,25551(at)
    4650:	91ce5c89 	lbu	t6,23689(t6)
    4654:	02e3c021 	addu	t8,s7,v1
    4658:	27017fff 	addiu	at,t8,32767
    465c:	0002b400 	sll	s6,v0,0x10
    4660:	0016b403 	sra	s6,s6,0x10
    4664:	10000015 	b	46bc <L8010B06C>
    4668:	a02e6307 	sb	t6,25351(at)
    466c:	2401001b 	li	at,27
    4670:	16010004 	bne	s0,at,4684 <L8010A850+0x7e4>
    4674:	240f0002 	li	t7,2
    4678:	26e17fff 	addiu	at,s7,32767
    467c:	1000000f 	b	46bc <L8010B06C>
    4680:	a02f63e7 	sb	t7,25575(at)
    4684:	2401001c 	li	at,28
    4688:	16010004 	bne	s0,at,469c <L8010A850+0x7fc>
    468c:	24090003 	li	t1,3
    4690:	26e17fff 	addiu	at,s7,32767
    4694:	10000009 	b	46bc <L8010B06C>
    4698:	a02963e7 	sb	t1,25575(at)
    469c:	24010020 	li	at,32
    46a0:	12010006 	beq	s0,at,46bc <L8010B06C>
    46a4:	03c02025 	move	a0,s8
    46a8:	2605ffe0 	addiu	a1,s0,-32
    46ac:	30a500ff 	andi	a1,a1,0xff
    46b0:	0c000000 	jal	0 <func_801069B0>
    46b4:	32a6ffff 	andi	a2,s5,0xffff
    46b8:	26b50080 	addiu	s5,s5,128

000046bc <L8010B06C>:
    46bc:	8fb90054 	lw	t9,84(sp)
    46c0:	26d60001 	addiu	s6,s6,1
    46c4:	0016b400 	sll	s6,s6,0x10
    46c8:	972a63ce 	lhu	t2,25550(t9)
    46cc:	26e17fff 	addiu	at,s7,32767
    46d0:	0016b403 	sra	s6,s6,0x10
    46d4:	254b0001 	addiu	t3,t2,1
    46d8:	1000face 	b	3214 <func_80109B3C+0x88>
    46dc:	a42b63cf 	sh	t3,25551(at)
    46e0:	8fbf0044 	lw	ra,68(sp)
    46e4:	8fb00020 	lw	s0,32(sp)
    46e8:	8fb10024 	lw	s1,36(sp)
    46ec:	8fb20028 	lw	s2,40(sp)
    46f0:	8fb3002c 	lw	s3,44(sp)
    46f4:	8fb40030 	lw	s4,48(sp)
    46f8:	8fb50034 	lw	s5,52(sp)
    46fc:	8fb60038 	lw	s6,56(sp)
    4700:	8fb7003c 	lw	s7,60(sp)
    4704:	8fbe0040 	lw	s8,64(sp)
    4708:	03e00008 	jr	ra
    470c:	27bd0098 	addiu	sp,sp,152

00004710 <func_8010B0C0>:
    4710:	27bdffb8 	addiu	sp,sp,-72
    4714:	3c0f0001 	lui	t7,0x1
    4718:	afbf0024 	sw	ra,36(sp)
    471c:	afb00020 	sw	s0,32(sp)
    4720:	afa40048 	sw	a0,72(sp)
    4724:	afa5004c 	sw	a1,76(sp)
    4728:	01e47821 	addu	t7,t7,a0
    472c:	91ef03dc 	lbu	t7,988(t7)
    4730:	3c100000 	lui	s0,0x0
    4734:	30a7ffff 	andi	a3,a1,0xffff
    4738:	15e00005 	bnez	t7,4750 <func_8010B0C0+0x40>
    473c:	26100000 	addiu	s0,s0,0
    4740:	3c050000 	lui	a1,0x0
    4744:	24a50000 	addiu	a1,a1,0
    4748:	94b813ea 	lhu	t8,5098(a1)
    474c:	a4b813ee 	sh	t8,5102(a1)
    4750:	8e030000 	lw	v1,0(s0)
    4754:	3c050000 	lui	a1,0x0
    4758:	24010010 	li	at,16
    475c:	847904b2 	lh	t9,1202(v1)
    4760:	24a50000 	addiu	a1,a1,0
    4764:	24040005 	li	a0,5
    4768:	17210007 	bne	t9,at,4788 <func_8010B0C0+0x78>
    476c:	00000000 	nop
    4770:	0c000000 	jal	0 <func_801069B0>
    4774:	a7a7004e 	sh	a3,78(sp)
    4778:	3c050000 	lui	a1,0x0
    477c:	24a50000 	addiu	a1,a1,0
    4780:	97a7004e 	lhu	a3,78(sp)
    4784:	8e030000 	lw	v1,0(s0)
    4788:	3c080000 	lui	t0,0x0
    478c:	25080000 	addiu	t0,t0,0
    4790:	a5000000 	sh	zero,0(t0)
    4794:	850a0000 	lh	t2,0(t0)
    4798:	3c040000 	lui	a0,0x0
    479c:	3c060000 	lui	a2,0x0
    47a0:	24c60000 	addiu	a2,a2,0
    47a4:	24840000 	addiu	a0,a0,0
    47a8:	3c010000 	lui	at,0x0
    47ac:	a08a0000 	sb	t2,0(a0)
    47b0:	a0ca0000 	sb	t2,0(a2)
    47b4:	314b00ff 	andi	t3,t2,0xff
    47b8:	a42b0000 	sh	t3,0(at)
    47bc:	28e10500 	slti	at,a3,1280
    47c0:	14200011 	bnez	at,4808 <func_8010B0C0+0xf8>
    47c4:	00e01025 	move	v0,a3
    47c8:	28410600 	slti	at,v0,1536
    47cc:	1020000e 	beqz	at,4808 <func_8010B0C0+0xf8>
    47d0:	240c0001 	li	t4,1
    47d4:	a50c0000 	sh	t4,0(t0)
    47d8:	240d0055 	li	t5,85
    47dc:	a46d0b06 	sh	t5,2822(v1)
    47e0:	8e0f0000 	lw	t7,0(s0)
    47e4:	240e0006 	li	t6,6
    47e8:	24180014 	li	t8,20
    47ec:	a5ee0b04 	sh	t6,2820(t7)
    47f0:	8e190000 	lw	t9,0(s0)
    47f4:	24090030 	li	t1,48
    47f8:	a7380b00 	sh	t8,2816(t9)
    47fc:	8e0a0000 	lw	t2,0(s0)
    4800:	10000009 	b	4828 <func_8010B0C0+0x118>
    4804:	a5490496 	sh	t1,1174(t2)
    4808:	240b004b 	li	t3,75
    480c:	a46b0b06 	sh	t3,2822(v1)
    4810:	8e0d0000 	lw	t5,0(s0)
    4814:	240c000c 	li	t4,12
    4818:	240e0041 	li	t6,65
    481c:	a5ac0b04 	sh	t4,2820(t5)
    4820:	8e0f0000 	lw	t7,0(s0)
    4824:	a5ee0b00 	sh	t6,2816(t7)
    4828:	240100c2 	li	at,194
    482c:	10410004 	beq	v0,at,4840 <func_8010B0C0+0x130>
    4830:	3c03f000 	lui	v1,0xf000
    4834:	240100fa 	li	at,250
    4838:	1441000e 	bne	v0,at,4874 <func_8010B0C0+0x164>
    483c:	8fb00048 	lw	s0,72(sp)
    4840:	8cb800a4 	lw	t8,164(a1)
    4844:	8fb00048 	lw	s0,72(sp)
    4848:	34018000 	li	at,0x8000
    484c:	0303c824 	and	t9,t8,v1
    4850:	03234824 	and	t1,t9,v1
    4854:	00095702 	srl	t2,t1,0x1c
    4858:	004a3821 	addu	a3,v0,t2
    485c:	261020d8 	addiu	s0,s0,8408
    4860:	02015821 	addu	t3,s0,at
    4864:	30e7ffff 	andi	a3,a3,0xffff
    4868:	00e01025 	move	v0,a3
    486c:	1000001d 	b	48e4 <func_8010B0C0+0x1d4>
    4870:	afab002c 	sw	t3,44(sp)
    4874:	261020d8 	addiu	s0,s0,8408
    4878:	34018000 	li	at,0x8000
    487c:	02016021 	addu	t4,s0,at
    4880:	afac002c 	sw	t4,44(sp)
    4884:	958362f8 	lhu	v1,25336(t4)
    4888:	2401000c 	li	at,12
    488c:	3c0e0000 	lui	t6,0x0
    4890:	1461000b 	bne	v1,at,48c0 <func_8010B0C0+0x1b0>
    4894:	3c0f0000 	lui	t7,0x0
    4898:	8dce0008 	lw	t6,8(t6)
    489c:	91ef0000 	lbu	t7,0(t7)
    48a0:	94b9009c 	lhu	t9,156(a1)
    48a4:	01eec004 	sllv	t8,t6,t7
    48a8:	03194824 	and	t1,t8,t9
    48ac:	51200005 	beqzl	t1,48c4 <func_8010B0C0+0x1b4>
    48b0:	240100b4 	li	at,180
    48b4:	2407000b 	li	a3,11
    48b8:	1000000a 	b	48e4 <func_8010B0C0+0x1d4>
    48bc:	2402000b 	li	v0,11
    48c0:	240100b4 	li	at,180
    48c4:	54610008 	bnel	v1,at,48e8 <func_8010B0C0+0x1d8>
    48c8:	24014077 	li	at,16503
    48cc:	94aa0ee6 	lhu	t2,3814(a1)
    48d0:	314b0040 	andi	t3,t2,0x40
    48d4:	51600004 	beqzl	t3,48e8 <func_8010B0C0+0x1d8>
    48d8:	24014077 	li	at,16503
    48dc:	240700b5 	li	a3,181
    48e0:	240200b5 	li	v0,181
    48e4:	24014077 	li	at,16503
    48e8:	1041000a 	beq	v0,at,4914 <func_8010B0C0+0x204>
    48ec:	24040001 	li	a0,1
    48f0:	2401407a 	li	at,16506
    48f4:	10410007 	beq	v0,at,4914 <func_8010B0C0+0x204>
    48f8:	24012061 	li	at,8289
    48fc:	10410005 	beq	v0,at,4914 <func_8010B0C0+0x204>
    4900:	24015035 	li	at,20533
    4904:	10410003 	beq	v0,at,4914 <func_8010B0C0+0x204>
    4908:	240140ac 	li	at,16556
    490c:	5441000b 	bnel	v0,at,493c <func_8010B0C0+0x22c>
    4910:	26017fff 	addiu	at,s0,32767
    4914:	afa20030 	sw	v0,48(sp)
    4918:	0c000000 	jal	0 <func_801069B0>
    491c:	a7a7004e 	sh	a3,78(sp)
    4920:	3c050000 	lui	a1,0x0
    4924:	3c080000 	lui	t0,0x0
    4928:	25080000 	addiu	t0,t0,0
    492c:	24a50000 	addiu	a1,a1,0
    4930:	8fa20030 	lw	v0,48(sp)
    4934:	97a7004e 	lhu	a3,78(sp)
    4938:	26017fff 	addiu	at,s0,32767
    493c:	a42762f9 	sh	a3,25337(at)
    4940:	24012030 	li	at,8240
    4944:	14410013 	bne	v0,at,4994 <func_8010B0C0+0x284>
    4948:	3c040000 	lui	a0,0x0
    494c:	24840000 	addiu	a0,a0,0
    4950:	0c000000 	jal	0 <func_801069B0>
    4954:	a7a7004e 	sh	a3,78(sp)
    4958:	3c040000 	lui	a0,0x0
    495c:	0c000000 	jal	0 <func_801069B0>
    4960:	24840000 	addiu	a0,a0,0
    4964:	3c040000 	lui	a0,0x0
    4968:	0c000000 	jal	0 <func_801069B0>
    496c:	24840000 	addiu	a0,a0,0
    4970:	3c050000 	lui	a1,0x0
    4974:	24a50000 	addiu	a1,a1,0
    4978:	3c080000 	lui	t0,0x0
    497c:	97a7004e 	lhu	a3,78(sp)
    4980:	25080000 	addiu	t0,t0,0
    4984:	a4a01400 	sh	zero,5120(a1)
    4988:	a4a013fe 	sh	zero,5118(a1)
    498c:	a4a013fc 	sh	zero,5116(a1)
    4990:	a4a013fa 	sh	zero,5114(a1)
    4994:	850c0000 	lh	t4,0(t0)
    4998:	8fa40048 	lw	a0,72(sp)
    499c:	51800018 	beqzl	t4,4a00 <func_8010B0C0+0x2f0>
    49a0:	90a21409 	lbu	v0,5129(a1)
    49a4:	0c000000 	jal	0 <func_801069B0>
    49a8:	30e5ffff 	andi	a1,a3,0xffff
    49ac:	8fa20048 	lw	v0,72(sp)
    49b0:	26017fff 	addiu	at,s0,32767
    49b4:	3c0f0000 	lui	t7,0x0
    49b8:	8c4d2204 	lw	t5,8708(v0)
    49bc:	25ef0000 	addiu	t7,t7,0
    49c0:	3c070000 	lui	a3,0x0
    49c4:	ac2d6301 	sw	t5,25345(at)
    49c8:	8c4e2200 	lw	t6,8704(v0)
    49cc:	3401dc88 	li	at,0xdc88
    49d0:	241807a2 	li	t8,1954
    49d4:	24422200 	addiu	v0,v0,8704
    49d8:	8c460004 	lw	a2,4(v0)
    49dc:	afa20030 	sw	v0,48(sp)
    49e0:	afb80010 	sw	t8,16(sp)
    49e4:	00412021 	addu	a0,v0,at
    49e8:	24e70000 	addiu	a3,a3,0
    49ec:	0c000000 	jal	0 <func_801069B0>
    49f0:	01cf2821 	addu	a1,t6,t7
    49f4:	1000004a 	b	4b20 <func_8010B0C0+0x410>
    49f8:	8fa20030 	lw	v0,48(sp)
    49fc:	90a21409 	lbu	v0,5129(a1)
    4a00:	8fa40048 	lw	a0,72(sp)
    4a04:	24010001 	li	at,1
    4a08:	14400017 	bnez	v0,4a68 <func_8010B0C0+0x358>
    4a0c:	00000000 	nop
    4a10:	0c000000 	jal	0 <func_801069B0>
    4a14:	30e5ffff 	andi	a1,a3,0xffff
    4a18:	8fa20048 	lw	v0,72(sp)
    4a1c:	26017fff 	addiu	at,s0,32767
    4a20:	3c0a0000 	lui	t2,0x0
    4a24:	8c592204 	lw	t9,8708(v0)
    4a28:	254a0000 	addiu	t2,t2,0
    4a2c:	3c070000 	lui	a3,0x0
    4a30:	ac396301 	sw	t9,25345(at)
    4a34:	8c492200 	lw	t1,8704(v0)
    4a38:	3401dc88 	li	at,0xdc88
    4a3c:	240b07ae 	li	t3,1966
    4a40:	24422200 	addiu	v0,v0,8704
    4a44:	8c460004 	lw	a2,4(v0)
    4a48:	afa20030 	sw	v0,48(sp)
    4a4c:	afab0010 	sw	t3,16(sp)
    4a50:	00412021 	addu	a0,v0,at
    4a54:	24e70000 	addiu	a3,a3,0
    4a58:	0c000000 	jal	0 <func_801069B0>
    4a5c:	012a2821 	addu	a1,t1,t2
    4a60:	1000002f 	b	4b20 <func_8010B0C0+0x410>
    4a64:	8fa20030 	lw	v0,48(sp)
    4a68:	14410018 	bne	v0,at,4acc <func_8010B0C0+0x3bc>
    4a6c:	8fa40048 	lw	a0,72(sp)
    4a70:	8fa40048 	lw	a0,72(sp)
    4a74:	0c000000 	jal	0 <func_801069B0>
    4a78:	30e5ffff 	andi	a1,a3,0xffff
    4a7c:	8fa20048 	lw	v0,72(sp)
    4a80:	26017fff 	addiu	at,s0,32767
    4a84:	3c0e0000 	lui	t6,0x0
    4a88:	8c4c2204 	lw	t4,8708(v0)
    4a8c:	25ce0000 	addiu	t6,t6,0
    4a90:	3c070000 	lui	a3,0x0
    4a94:	ac2c6301 	sw	t4,25345(at)
    4a98:	8c4d2200 	lw	t5,8704(v0)
    4a9c:	3401dc88 	li	at,0xdc88
    4aa0:	240f07ba 	li	t7,1978
    4aa4:	24422200 	addiu	v0,v0,8704
    4aa8:	8c460004 	lw	a2,4(v0)
    4aac:	afa20030 	sw	v0,48(sp)
    4ab0:	afaf0010 	sw	t7,16(sp)
    4ab4:	00412021 	addu	a0,v0,at
    4ab8:	24e70000 	addiu	a3,a3,0
    4abc:	0c000000 	jal	0 <func_801069B0>
    4ac0:	01ae2821 	addu	a1,t5,t6
    4ac4:	10000016 	b	4b20 <func_8010B0C0+0x410>
    4ac8:	8fa20030 	lw	v0,48(sp)
    4acc:	0c000000 	jal	0 <func_801069B0>
    4ad0:	30e5ffff 	andi	a1,a3,0xffff
    4ad4:	8fa20048 	lw	v0,72(sp)
    4ad8:	26017fff 	addiu	at,s0,32767
    4adc:	3c090000 	lui	t1,0x0
    4ae0:	8c582204 	lw	t8,8708(v0)
    4ae4:	25290000 	addiu	t1,t1,0
    4ae8:	3c070000 	lui	a3,0x0
    4aec:	ac386301 	sw	t8,25345(at)
    4af0:	8c592200 	lw	t9,8704(v0)
    4af4:	3401dc88 	li	at,0xdc88
    4af8:	240a07c6 	li	t2,1990
    4afc:	24422200 	addiu	v0,v0,8704
    4b00:	8c460004 	lw	a2,4(v0)
    4b04:	afa20030 	sw	v0,48(sp)
    4b08:	afaa0010 	sw	t2,16(sp)
    4b0c:	00412021 	addu	a0,v0,at
    4b10:	24e70000 	addiu	a3,a3,0
    4b14:	0c000000 	jal	0 <func_801069B0>
    4b18:	03292821 	addu	a1,t9,t1
    4b1c:	8fa20030 	lw	v0,48(sp)
    4b20:	904b0008 	lbu	t3,8(v0)
    4b24:	26017fff 	addiu	at,s0,32767
    4b28:	3c040000 	lui	a0,0x0
    4b2c:	a02b62fd 	sb	t3,25341(at)
    4b30:	8fac002c 	lw	t4,44(sp)
    4b34:	24840000 	addiu	a0,a0,0
    4b38:	918d62fc 	lbu	t5,25340(t4)
    4b3c:	000d7103 	sra	t6,t5,0x4
    4b40:	a02e62fe 	sb	t6,25342(at)
    4b44:	8faf002c 	lw	t7,44(sp)
    4b48:	91f862fc 	lbu	t8,25340(t7)
    4b4c:	3319000f 	andi	t9,t8,0xf
    4b50:	a03962ff 	sb	t9,25343(at)
    4b54:	8fa9002c 	lw	t1,44(sp)
    4b58:	912562fd 	lbu	a1,25341(t1)
    4b5c:	0c000000 	jal	0 <func_801069B0>
    4b60:	a7a5003e 	sh	a1,62(sp)
    4b64:	87a3003e 	lh	v1,62(sp)
    4b68:	8faa002c 	lw	t2,44(sp)
    4b6c:	3c0c0000 	lui	t4,0x0
    4b70:	28610004 	slti	at,v1,4
    4b74:	10200046 	beqz	at,4c90 <func_8010B0C0+0x580>
    4b78:	00035840 	sll	t3,v1,0x1
    4b7c:	258c0000 	addiu	t4,t4,0
    4b80:	016c1021 	addu	v0,t3,t4
    4b84:	844d0000 	lh	t5,0(v0)
    4b88:	3c0f0000 	lui	t7,0x0
    4b8c:	25ef0000 	addiu	t7,t7,0
    4b90:	8d4462b0 	lw	a0,25264(t2)
    4b94:	3c070000 	lui	a3,0x0
    4b98:	241807d6 	li	t8,2006
    4b9c:	000d7300 	sll	t6,t5,0xc
    4ba0:	01cf2821 	addu	a1,t6,t7
    4ba4:	afb80010 	sw	t8,16(sp)
    4ba8:	24e70000 	addiu	a3,a3,0
    4bac:	afa20030 	sw	v0,48(sp)
    4bb0:	0c000000 	jal	0 <func_801069B0>
    4bb4:	24061000 	li	a2,4096
    4bb8:	8fa20030 	lw	v0,48(sp)
    4bbc:	3c190000 	lui	t9,0x0
    4bc0:	27390000 	addiu	t9,t9,0
    4bc4:	14590006 	bne	v0,t9,4be0 <func_8010B0C0+0x4d0>
    4bc8:	3c090000 	lui	t1,0x0
    4bcc:	26017fff 	addiu	at,s0,32767
    4bd0:	a42063ff 	sh	zero,25599(at)
    4bd4:	a4206401 	sh	zero,25601(at)
    4bd8:	1000001a 	b	4c44 <func_8010B0C0+0x534>
    4bdc:	a4206403 	sh	zero,25603(at)
    4be0:	25290000 	addiu	t1,t1,0
    4be4:	14490009 	bne	v0,t1,4c0c <func_8010B0C0+0x4fc>
    4be8:	3c0d0000 	lui	t5,0x0
    4bec:	26017fff 	addiu	at,s0,32767
    4bf0:	240a0046 	li	t2,70
    4bf4:	240b0032 	li	t3,50
    4bf8:	240c001e 	li	t4,30
    4bfc:	a42a63ff 	sh	t2,25599(at)
    4c00:	a42b6401 	sh	t3,25601(at)
    4c04:	1000000f 	b	4c44 <func_8010B0C0+0x534>
    4c08:	a42c6403 	sh	t4,25603(at)
    4c0c:	25ad0000 	addiu	t5,t5,0
    4c10:	144d0008 	bne	v0,t5,4c34 <func_8010B0C0+0x524>
    4c14:	241800ff 	li	t8,255
    4c18:	26017fff 	addiu	at,s0,32767
    4c1c:	240e000a 	li	t6,10
    4c20:	240f0032 	li	t7,50
    4c24:	a42063ff 	sh	zero,25599(at)
    4c28:	a42e6401 	sh	t6,25601(at)
    4c2c:	10000005 	b	4c44 <func_8010B0C0+0x534>
    4c30:	a42f6403 	sh	t7,25603(at)
    4c34:	26017fff 	addiu	at,s0,32767
    4c38:	a43863ff 	sh	t8,25599(at)
    4c3c:	a4206401 	sh	zero,25601(at)
    4c40:	a4206403 	sh	zero,25603(at)
    4c44:	3c190000 	lui	t9,0x0
    4c48:	27390000 	addiu	t9,t9,0
    4c4c:	14590005 	bne	v0,t9,4c64 <func_8010B0C0+0x554>
    4c50:	3c0a0000 	lui	t2,0x0
    4c54:	240900e6 	li	t1,230
    4c58:	26017fff 	addiu	at,s0,32767
    4c5c:	1000000a 	b	4c88 <func_8010B0C0+0x578>
    4c60:	a4296405 	sh	t1,25605(at)
    4c64:	254a0000 	addiu	t2,t2,0
    4c68:	144a0005 	bne	v0,t2,4c80 <func_8010B0C0+0x570>
    4c6c:	240c00aa 	li	t4,170
    4c70:	240b00b4 	li	t3,180
    4c74:	26017fff 	addiu	at,s0,32767
    4c78:	10000003 	b	4c88 <func_8010B0C0+0x578>
    4c7c:	a42b6405 	sh	t3,25605(at)
    4c80:	26017fff 	addiu	at,s0,32767
    4c84:	a42c6405 	sh	t4,25605(at)
    4c88:	26017fff 	addiu	at,s0,32767
    4c8c:	a4206407 	sh	zero,25607(at)
    4c90:	26017fff 	addiu	at,s0,32767
    4c94:	a02063e5 	sb	zero,25573(at)
    4c98:	8fad002c 	lw	t5,44(sp)
    4c9c:	91a263e4 	lbu	v0,25572(t5)
    4ca0:	a42063d3 	sh	zero,25555(at)
    4ca4:	a42263d7 	sh	v0,25559(at)
    4ca8:	a02263e7 	sb	v0,25575(at)
    4cac:	8fae002c 	lw	t6,44(sp)
    4cb0:	95c263d2 	lhu	v0,25554(t6)
    4cb4:	a42263d1 	sh	v0,25553(at)
    4cb8:	a42263cf 	sh	v0,25551(at)
    4cbc:	8fbf0024 	lw	ra,36(sp)
    4cc0:	8fb00020 	lw	s0,32(sp)
    4cc4:	27bd0048 	addiu	sp,sp,72
    4cc8:	03e00008 	jr	ra
    4ccc:	00000000 	nop

00004cd0 <func_8010B680>:
    4cd0:	27bdffe0 	addiu	sp,sp,-32
    4cd4:	afa40020 	sw	a0,32(sp)
    4cd8:	afbf0014 	sw	ra,20(sp)
    4cdc:	3c040000 	lui	a0,0x0
    4ce0:	afa50024 	sw	a1,36(sp)
    4ce4:	afa60028 	sw	a2,40(sp)
    4ce8:	0c000000 	jal	0 <func_801069B0>
    4cec:	24840000 	addiu	a0,a0,0
    4cf0:	3c040000 	lui	a0,0x0
    4cf4:	24840000 	addiu	a0,a0,0
    4cf8:	97a50026 	lhu	a1,38(sp)
    4cfc:	0c000000 	jal	0 <func_801069B0>
    4d00:	8fa60028 	lw	a2,40(sp)
    4d04:	3c040000 	lui	a0,0x0
    4d08:	0c000000 	jal	0 <func_801069B0>
    4d0c:	24840000 	addiu	a0,a0,0
    4d10:	8fa40020 	lw	a0,32(sp)
    4d14:	340effff 	li	t6,0xffff
    4d18:	248220d8 	addiu	v0,a0,8408
    4d1c:	24417fff 	addiu	at,v0,32767
    4d20:	a42e63f1 	sh	t6,25585(at)
    4d24:	afa20018 	sw	v0,24(sp)
    4d28:	0c000000 	jal	0 <func_801069B0>
    4d2c:	97a50026 	lhu	a1,38(sp)
    4d30:	8fa20018 	lw	v0,24(sp)
    4d34:	8faf0028 	lw	t7,40(sp)
    4d38:	24180001 	li	t8,1
    4d3c:	24417fff 	addiu	at,v0,32767
    4d40:	a0386305 	sb	t8,25349(at)
    4d44:	a02063e8 	sb	zero,25576(at)
    4d48:	a42063e9 	sh	zero,25577(at)
    4d4c:	ac2f6409 	sw	t7,25609(at)
    4d50:	8fb90020 	lw	t9,32(sp)
    4d54:	3c010001 	lui	at,0x1
    4d58:	00390821 	addu	at,at,t9
    4d5c:	a42004c6 	sh	zero,1222(at)
    4d60:	8fbf0014 	lw	ra,20(sp)
    4d64:	27bd0020 	addiu	sp,sp,32
    4d68:	03e00008 	jr	ra
    4d6c:	00000000 	nop

00004d70 <func_8010B720>:
    4d70:	27bdffe0 	addiu	sp,sp,-32
    4d74:	afa40020 	sw	a0,32(sp)
    4d78:	afbf001c 	sw	ra,28(sp)
    4d7c:	3c040000 	lui	a0,0x0
    4d80:	afb10018 	sw	s1,24(sp)
    4d84:	afb00014 	sw	s0,20(sp)
    4d88:	afa50024 	sw	a1,36(sp)
    4d8c:	0c000000 	jal	0 <func_801069B0>
    4d90:	24840000 	addiu	a0,a0,0
    4d94:	8fb00020 	lw	s0,32(sp)
    4d98:	34018000 	li	at,0x8000
    4d9c:	3c040000 	lui	a0,0x0
    4da0:	261020d8 	addiu	s0,s0,8408
    4da4:	02018821 	addu	s1,s0,at
    4da8:	8e266300 	lw	a2,25344(s1)
    4dac:	24840000 	addiu	a0,a0,0
    4db0:	0c000000 	jal	0 <func_801069B0>
    4db4:	97a50026 	lhu	a1,38(sp)
    4db8:	3c040000 	lui	a0,0x0
    4dbc:	0c000000 	jal	0 <func_801069B0>
    4dc0:	24840000 	addiu	a0,a0,0
    4dc4:	26017fff 	addiu	at,s0,32767
    4dc8:	ac206301 	sw	zero,25345(at)
    4dcc:	97a50026 	lhu	a1,38(sp)
    4dd0:	0c000000 	jal	0 <func_801069B0>
    4dd4:	8fa40020 	lw	a0,32(sp)
    4dd8:	26017fff 	addiu	at,s0,32767
    4ddc:	a0206305 	sb	zero,25349(at)
    4de0:	862e6404 	lh	t6,25604(s1)
    4de4:	240f0005 	li	t7,5
    4de8:	24180003 	li	t8,3
    4dec:	a02f6305 	sb	t7,25349(at)
    4df0:	a03863e8 	sb	t8,25576(at)
    4df4:	a42063e9 	sh	zero,25577(at)
    4df8:	a42e6407 	sh	t6,25607(at)
    4dfc:	962263e8 	lhu	v0,25576(s1)
    4e00:	241900ff 	li	t9,255
    4e04:	a43963e3 	sh	t9,25571(at)
    4e08:	3c080000 	lui	t0,0x0
    4e0c:	a42263d3 	sh	v0,25555(at)
    4e10:	a42263d1 	sh	v0,25553(at)
    4e14:	a42263cf 	sh	v0,25551(at)
    4e18:	a02263e5 	sb	v0,25573(at)
    4e1c:	8d080000 	lw	t0,0(t0)
    4e20:	8faa0020 	lw	t2,32(sp)
    4e24:	3c0b0001 	lui	t3,0x1
    4e28:	850904d2 	lh	t1,1234(t0)
    4e2c:	016a5821 	addu	t3,t3,t2
    4e30:	55200008 	bnezl	t1,4e54 <func_8010B720+0xe4>
    4e34:	862c6404 	lh	t4,25604(s1)
    4e38:	856b06ea 	lh	t3,1770(t3)
    4e3c:	01402025 	move	a0,t2
    4e40:	55600004 	bnezl	t3,4e54 <func_8010B720+0xe4>
    4e44:	862c6404 	lh	t4,25604(s1)
    4e48:	0c000000 	jal	0 <func_801069B0>
    4e4c:	24050010 	li	a1,16
    4e50:	862c6404 	lh	t4,25604(s1)
    4e54:	26017fff 	addiu	at,s0,32767
    4e58:	a42c6407 	sh	t4,25607(at)
    4e5c:	8fbf001c 	lw	ra,28(sp)
    4e60:	8fb10018 	lw	s1,24(sp)
    4e64:	8fb00014 	lw	s0,20(sp)
    4e68:	03e00008 	jr	ra
    4e6c:	27bd0020 	addiu	sp,sp,32

00004e70 <func_8010B820>:
    4e70:	27bdffa8 	addiu	sp,sp,-88
    4e74:	afa40058 	sw	a0,88(sp)
    4e78:	afbf002c 	sw	ra,44(sp)
    4e7c:	3c040000 	lui	a0,0x0
    4e80:	afb20028 	sw	s2,40(sp)
    4e84:	afb10024 	sw	s1,36(sp)
    4e88:	afb00020 	sw	s0,32(sp)
    4e8c:	afa5005c 	sw	a1,92(sp)
    4e90:	0c000000 	jal	0 <func_801069B0>
    4e94:	24840000 	addiu	a0,a0,0
    4e98:	3005ffff 	andi	a1,zero,0xffff
    4e9c:	00058400 	sll	s0,a1,0x10
    4ea0:	3c020000 	lui	v0,0x0
    4ea4:	00108403 	sra	s0,s0,0x10
    4ea8:	24420000 	addiu	v0,v0,0
    4eac:	2a01000c 	slti	at,s0,12
    4eb0:	1020001f 	beqz	at,4f30 <func_8010B820+0xc0>
    4eb4:	a4400000 	sh	zero,0(v0)
    4eb8:	00107080 	sll	t6,s0,0x2
    4ebc:	3c0f0000 	lui	t7,0x0
    4ec0:	01ee7821 	addu	t7,t7,t6
    4ec4:	3c180000 	lui	t8,0x0
    4ec8:	8f1800a4 	lw	t8,164(t8)
    4ecc:	8def0018 	lw	t7,24(t7)
    4ed0:	3c040000 	lui	a0,0x0
    4ed4:	24840000 	addiu	a0,a0,0
    4ed8:	01f8c824 	and	t9,t7,t8
    4edc:	1320000d 	beqz	t9,4f14 <func_8010B820+0xa4>
    4ee0:	02002825 	move	a1,s0
    4ee4:	3c090000 	lui	t1,0x0
    4ee8:	25290000 	addiu	t1,t1,0
    4eec:	00104040 	sll	t0,s0,0x1
    4ef0:	01098821 	addu	s1,t0,t1
    4ef4:	0c000000 	jal	0 <func_801069B0>
    4ef8:	96260000 	lhu	a2,0(s1)
    4efc:	3c020000 	lui	v0,0x0
    4f00:	24420000 	addiu	v0,v0,0
    4f04:	944a0000 	lhu	t2,0(v0)
    4f08:	962b0000 	lhu	t3,0(s1)
    4f0c:	014b6025 	or	t4,t2,t3
    4f10:	a44c0000 	sh	t4,0(v0)
    4f14:	26100001 	addiu	s0,s0,1
    4f18:	00108400 	sll	s0,s0,0x10
    4f1c:	00108403 	sra	s0,s0,0x10
    4f20:	2a01000c 	slti	at,s0,12
    4f24:	5420ffe5 	bnezl	at,4ebc <func_8010B820+0x4c>
    4f28:	00107080 	sll	t6,s0,0x2
    4f2c:	94450000 	lhu	a1,0(v0)
    4f30:	3c0d0000 	lui	t5,0x0
    4f34:	91ad12c5 	lbu	t5,4805(t5)
    4f38:	3c040000 	lui	a0,0x0
    4f3c:	11a00003 	beqz	t5,4f4c <func_8010B820+0xdc>
    4f40:	34ae1000 	ori	t6,a1,0x1000
    4f44:	a44e0000 	sh	t6,0(v0)
    4f48:	31c5ffff 	andi	a1,t6,0xffff
    4f4c:	0c000000 	jal	0 <func_801069B0>
    4f50:	24840000 	addiu	a0,a0,0
    4f54:	3c040000 	lui	a0,0x0
    4f58:	0c000000 	jal	0 <func_801069B0>
    4f5c:	24840000 	addiu	a0,a0,0
    4f60:	3c0f0000 	lui	t7,0x0
    4f64:	3c180000 	lui	t8,0x0
    4f68:	8f1800a4 	lw	t8,164(t8)
    4f6c:	8def003c 	lw	t7,60(t7)
    4f70:	3c010000 	lui	at,0x0
    4f74:	01f8c824 	and	t9,t7,t8
    4f78:	0c000000 	jal	0 <func_801069B0>
    4f7c:	a4390000 	sh	t9,0(at)
    4f80:	8fb20058 	lw	s2,88(sp)
    4f84:	3c040000 	lui	a0,0x0
    4f88:	24840000 	addiu	a0,a0,0
    4f8c:	265220d8 	addiu	s2,s2,8408
    4f90:	26417fff 	addiu	at,s2,32767
    4f94:	ac2262b9 	sw	v0,25273(at)
    4f98:	a4800000 	sh	zero,0(a0)
    4f9c:	34018000 	li	at,0x8000
    4fa0:	02411821 	addu	v1,s2,at
    4fa4:	8c6962b8 	lw	t1,25272(v1)
    4fa8:	84880000 	lh	t0,0(a0)
    4fac:	3c010000 	lui	at,0x0
    4fb0:	a1280002 	sb	t0,2(t1)
    4fb4:	a4200000 	sh	zero,0(at)
    4fb8:	0c000000 	jal	0 <func_801069B0>
    4fbc:	afa30030 	sw	v1,48(sp)
    4fc0:	240a00ff 	li	t2,255
    4fc4:	26417fff 	addiu	at,s2,32767
    4fc8:	a02a6411 	sb	t2,25617(at)
    4fcc:	8fab0030 	lw	t3,48(sp)
    4fd0:	3c040000 	lui	a0,0x0
    4fd4:	24840000 	addiu	a0,a0,0
    4fd8:	91626410 	lbu	v0,25616(t3)
    4fdc:	24060002 	li	a2,2
    4fe0:	a42263f3 	sh	v0,25587(at)
    4fe4:	97b1005e 	lhu	s1,94(sp)
    4fe8:	3c010000 	lui	at,0x0
    4fec:	a4220000 	sh	v0,0(at)
    4ff0:	0c000000 	jal	0 <func_801069B0>
    4ff4:	02202825 	move	a1,s1
    4ff8:	2a210893 	slti	at,s1,2195
    4ffc:	14200006 	bnez	at,5018 <func_8010B820+0x1a8>
    5000:	a7a0004a 	sh	zero,74(sp)
    5004:	8fa40058 	lw	a0,88(sp)
    5008:	0c000000 	jal	0 <func_801069B0>
    500c:	97a5005e 	lhu	a1,94(sp)
    5010:	10000047 	b	5130 <func_8010B820+0x2c0>
    5014:	2630086e 	addiu	s0,s1,2158
    5018:	2401002e 	li	at,46
    501c:	16210008 	bne	s1,at,5040 <func_8010B820+0x1d0>
    5020:	97ac005e 	lhu	t4,94(sp)
    5024:	26417fff 	addiu	at,s2,32767
    5028:	a42c63f1 	sh	t4,25585(at)
    502c:	8fa40058 	lw	a0,88(sp)
    5030:	0c000000 	jal	0 <func_801069B0>
    5034:	2405086d 	li	a1,2157
    5038:	1000003d 	b	5130 <func_8010B820+0x2c0>
    503c:	2630086e 	addiu	s0,s1,2158
    5040:	24010001 	li	at,1
    5044:	12210004 	beq	s1,at,5058 <func_8010B820+0x1e8>
    5048:	3c040000 	lui	a0,0x0
    504c:	2a210022 	slti	at,s1,34
    5050:	14200022 	bnez	at,50dc <func_8010B820+0x26c>
    5054:	97af005e 	lhu	t7,94(sp)
    5058:	24840000 	addiu	a0,a0,0
    505c:	0c000000 	jal	0 <func_801069B0>
    5060:	02202825 	move	a1,s1
    5064:	97ad005e 	lhu	t5,94(sp)
    5068:	26417fff 	addiu	at,s2,32767
    506c:	a42d63f1 	sh	t5,25585(at)
    5070:	2a210022 	slti	at,s1,34
    5074:	1420000d 	bnez	at,50ac <func_8010B820+0x23c>
    5078:	2a210028 	slti	at,s1,40
    507c:	1020000b 	beqz	at,50ac <func_8010B820+0x23c>
    5080:	3c070000 	lui	a3,0x0
    5084:	3c0e0000 	lui	t6,0x0
    5088:	24e70000 	addiu	a3,a3,0
    508c:	25ce0000 	addiu	t6,t6,0
    5090:	3c050000 	lui	a1,0x0
    5094:	24a50000 	addiu	a1,a1,0
    5098:	afae0014 	sw	t6,20(sp)
    509c:	afa70010 	sw	a3,16(sp)
    50a0:	24044807 	li	a0,18439
    50a4:	0c000000 	jal	0 <func_801069B0>
    50a8:	24060004 	li	a2,4
    50ac:	2401002d 	li	at,45
    50b0:	16210006 	bne	s1,at,50cc <func_8010B820+0x25c>
    50b4:	8fa40058 	lw	a0,88(sp)
    50b8:	8fa40058 	lw	a0,88(sp)
    50bc:	0c000000 	jal	0 <func_801069B0>
    50c0:	2405086f 	li	a1,2159
    50c4:	1000001a 	b	5130 <func_8010B820+0x2c0>
    50c8:	2630086e 	addiu	s0,s1,2158
    50cc:	0c000000 	jal	0 <func_801069B0>
    50d0:	2405086e 	li	a1,2158
    50d4:	10000016 	b	5130 <func_8010B820+0x2c0>
    50d8:	2630086e 	addiu	s0,s1,2158
    50dc:	26417fff 	addiu	at,s2,32767
    50e0:	a42f63f1 	sh	t7,25585(at)
    50e4:	24180001 	li	t8,1
    50e8:	2a21000f 	slti	at,s1,15
    50ec:	14200009 	bnez	at,5114 <func_8010B820+0x2a4>
    50f0:	a7b8004a 	sh	t8,74(sp)
    50f4:	3c040000 	lui	a0,0x0
    50f8:	0c000000 	jal	0 <func_801069B0>
    50fc:	24840000 	addiu	a0,a0,0
    5100:	8fa40058 	lw	a0,88(sp)
    5104:	0c000000 	jal	0 <func_801069B0>
    5108:	2405086d 	li	a1,2157
    510c:	10000008 	b	5130 <func_8010B820+0x2c0>
    5110:	2630086e 	addiu	s0,s1,2158
    5114:	3c040000 	lui	a0,0x0
    5118:	0c000000 	jal	0 <func_801069B0>
    511c:	24840000 	addiu	a0,a0,0
    5120:	2630086e 	addiu	s0,s1,2158
    5124:	3205ffff 	andi	a1,s0,0xffff
    5128:	0c000000 	jal	0 <func_801069B0>
    512c:	8fa40058 	lw	a0,88(sp)
    5130:	26417fff 	addiu	at,s2,32767
    5134:	ac206409 	sw	zero,25609(at)
    5138:	8fb90030 	lw	t9,48(sp)
    513c:	3c040000 	lui	a0,0x0
    5140:	24840000 	addiu	a0,a0,0
    5144:	02003025 	move	a2,s0
    5148:	0c000000 	jal	0 <func_801069B0>
    514c:	972563f0 	lhu	a1,25584(t9)
    5150:	26417fff 	addiu	at,s2,32767
    5154:	a42063e9 	sh	zero,25577(at)
    5158:	8fa80058 	lw	t0,88(sp)
    515c:	3c010001 	lui	at,0x1
    5160:	3c020000 	lui	v0,0x0
    5164:	00280821 	addu	at,at,t0
    5168:	24420000 	addiu	v0,v0,0
    516c:	a42004c6 	sh	zero,1222(at)
    5170:	8c4a0000 	lw	t2,0(v0)
    5174:	24090022 	li	t1,34
    5178:	240b008e 	li	t3,142
    517c:	a5490f14 	sh	t1,3860(t2)
    5180:	8c4c0000 	lw	t4,0(v0)
    5184:	24030200 	li	v1,512
    5188:	240f0100 	li	t7,256
    518c:	a58b0f16 	sh	t3,3862(t4)
    5190:	8c4d0000 	lw	t5,0(v0)
    5194:	24190040 	li	t9,64
    5198:	26417fff 	addiu	at,s2,32767
    519c:	a5a304b4 	sh	v1,1204(t5)
    51a0:	8c4e0000 	lw	t6,0(v0)
    51a4:	240b0004 	li	t3,4
    51a8:	240c0002 	li	t4,2
    51ac:	a5c304b6 	sh	v1,1206(t6)
    51b0:	8c580000 	lw	t8,0(v0)
    51b4:	240d0005 	li	t5,5
    51b8:	24050012 	li	a1,18
    51bc:	a70f04c0 	sh	t7,1216(t8)
    51c0:	8c480000 	lw	t0,0(v0)
    51c4:	a51904c2 	sh	t9,1218(t0)
    51c8:	a02063e8 	sb	zero,25576(at)
    51cc:	8c490000 	lw	t1,0(v0)
    51d0:	26417fff 	addiu	at,s2,32767
    51d4:	852a04ac 	lh	t2,1196(t1)
    51d8:	51400005 	beqzl	t2,51f0 <func_8010B820+0x380>
    51dc:	a02c63e8 	sb	t4,25576(at)
    51e0:	26417fff 	addiu	at,s2,32767
    51e4:	10000003 	b	51f4 <func_8010B820+0x384>
    51e8:	a02b6305 	sb	t3,25349(at)
    51ec:	a02c63e8 	sb	t4,25576(at)
    51f0:	a02d6305 	sb	t5,25349(at)
    51f4:	8fae0030 	lw	t6,48(sp)
    51f8:	26417fff 	addiu	at,s2,32767
    51fc:	85cf6404 	lh	t7,25604(t6)
    5200:	a42f6407 	sh	t7,25607(at)
    5204:	87b8004a 	lh	t8,74(sp)
    5208:	1700000b 	bnez	t8,5238 <func_8010B820+0x3c8>
    520c:	00000000 	nop
    5210:	0c000000 	jal	0 <func_801069B0>
    5214:	8fa40058 	lw	a0,88(sp)
    5218:	3c190000 	lui	t9,0x0
    521c:	973913ea 	lhu	t9,5098(t9)
    5220:	2404000a 	li	a0,10
    5224:	0c000000 	jal	0 <func_801069B0>
    5228:	a7b9004a 	sh	t9,74(sp)
    522c:	87a8004a 	lh	t0,74(sp)
    5230:	3c010000 	lui	at,0x0
    5234:	a42813ea 	sh	t0,5098(at)
    5238:	3c040000 	lui	a0,0x0
    523c:	0c000000 	jal	0 <func_801069B0>
    5240:	24840000 	addiu	a0,a0,0
    5244:	24010001 	li	at,1
    5248:	12210003 	beq	s1,at,5258 <func_8010B820+0x3e8>
    524c:	24090009 	li	t1,9
    5250:	24010030 	li	at,48
    5254:	16210005 	bne	s1,at,526c <func_8010B820+0x3fc>
    5258:	26417fff 	addiu	at,s2,32767
    525c:	240a0063 	li	t2,99
    5260:	a0296305 	sb	t1,25349(at)
    5264:	10000039 	b	534c <func_8010B820+0x4dc>
    5268:	a02a62fe 	sb	t2,25342(at)
    526c:	2401002f 	li	at,47
    5270:	16210006 	bne	s1,at,528c <func_8010B820+0x41c>
    5274:	240b0031 	li	t3,49
    5278:	26417fff 	addiu	at,s2,32767
    527c:	240c0002 	li	t4,2
    5280:	a02b6305 	sb	t3,25349(at)
    5284:	10000031 	b	534c <func_8010B820+0x4dc>
    5288:	a02c62fe 	sb	t4,25342(at)
    528c:	2401002e 	li	at,46
    5290:	5621000a 	bnel	s1,at,52bc <func_8010B820+0x44c>
    5294:	2401002b 	li	at,43
    5298:	0c000000 	jal	0 <func_801069B0>
    529c:	24040001 	li	a0,1
    52a0:	0c000000 	jal	0 <func_801069B0>
    52a4:	8fa40058 	lw	a0,88(sp)
    52a8:	240d0029 	li	t5,41
    52ac:	26417fff 	addiu	at,s2,32767
    52b0:	10000026 	b	534c <func_8010B820+0x4dc>
    52b4:	a02d6305 	sb	t5,25349(at)
    52b8:	2401002b 	li	at,43
    52bc:	16210023 	bne	s1,at,534c <func_8010B820+0x4dc>
    52c0:	3c040000 	lui	a0,0x0
    52c4:	0c000000 	jal	0 <func_801069B0>
    52c8:	24840000 	addiu	a0,a0,0
    52cc:	0c000000 	jal	0 <func_801069B0>
    52d0:	24040001 	li	a0,1
    52d4:	0c000000 	jal	0 <func_801069B0>
    52d8:	24040001 	li	a0,1
    52dc:	0c000000 	jal	0 <func_801069B0>
    52e0:	00000000 	nop
    52e4:	3c040000 	lui	a0,0x0
    52e8:	26417fff 	addiu	at,s2,32767
    52ec:	ac2262b9 	sw	v0,25273(at)
    52f0:	24840000 	addiu	a0,a0,0
    52f4:	a4800000 	sh	zero,0(a0)
    52f8:	848e0000 	lh	t6,0(a0)
    52fc:	3c030000 	lui	v1,0x0
    5300:	8fb80030 	lw	t8,48(sp)
    5304:	24630000 	addiu	v1,v1,0
    5308:	a46e0000 	sh	t6,0(v1)
    530c:	846f0000 	lh	t7,0(v1)
    5310:	8f1962b8 	lw	t9,25272(t8)
    5314:	0c000000 	jal	0 <func_801069B0>
    5318:	a32f0002 	sb	t7,2(t9)
    531c:	24080003 	li	t0,3
    5320:	26417fff 	addiu	at,s2,32767
    5324:	24090023 	li	t1,35
    5328:	a02863e8 	sb	t0,25576(at)
    532c:	a0296305 	sb	t1,25349(at)
    5330:	2404000f 	li	a0,15
    5334:	0c000000 	jal	0 <func_801069B0>
    5338:	24050001 	li	a1,1
    533c:	3c010000 	lui	at,0x0
    5340:	a42013ea 	sh	zero,5098(at)
    5344:	0c000000 	jal	0 <func_801069B0>
    5348:	24040001 	li	a0,1
    534c:	8fb10058 	lw	s1,88(sp)
    5350:	00008025 	move	s0,zero
    5354:	00001025 	move	v0,zero
    5358:	26312200 	addiu	s1,s1,8704
    535c:	02202025 	move	a0,s1
    5360:	34058140 	li	a1,0x8140
    5364:	3206ffff 	andi	a2,s0,0xffff
    5368:	0c000000 	jal	0 <func_801069B0>
    536c:	a7a2004e 	sh	v0,78(sp)
    5370:	87a2004e 	lh	v0,78(sp)
    5374:	26100080 	addiu	s0,s0,128
    5378:	24420001 	addiu	v0,v0,1
    537c:	00021400 	sll	v0,v0,0x10
    5380:	00021403 	sra	v0,v0,0x10
    5384:	28410030 	slti	at,v0,48
    5388:	5420fff5 	bnezl	at,5360 <func_8010B820+0x4f0>
    538c:	02202025 	move	a0,s1
    5390:	8fbf002c 	lw	ra,44(sp)
    5394:	8fb00020 	lw	s0,32(sp)
    5398:	8fb10024 	lw	s1,36(sp)
    539c:	8fb20028 	lw	s2,40(sp)
    53a0:	03e00008 	jr	ra
    53a4:	27bd0058 	addiu	sp,sp,88

000053a8 <func_8010BD58>:
    53a8:	27bdffe8 	addiu	sp,sp,-24
    53ac:	3c010001 	lui	at,0x1
    53b0:	afbf0014 	sw	ra,20(sp)
    53b4:	afa5001c 	sw	a1,28(sp)
    53b8:	00240821 	addu	at,at,a0
    53bc:	30a5ffff 	andi	a1,a1,0xffff
    53c0:	0c000000 	jal	0 <func_801069B0>
    53c4:	a42004e6 	sh	zero,1254(at)
    53c8:	8fbf0014 	lw	ra,20(sp)
    53cc:	27bd0018 	addiu	sp,sp,24
    53d0:	03e00008 	jr	ra
    53d4:	00000000 	nop

000053d8 <func_8010BD88>:
    53d8:	27bdffe8 	addiu	sp,sp,-24
    53dc:	3c010001 	lui	at,0x1
    53e0:	afbf0014 	sw	ra,20(sp)
    53e4:	afa5001c 	sw	a1,28(sp)
    53e8:	00240821 	addu	at,at,a0
    53ec:	240e0001 	li	t6,1
    53f0:	30a5ffff 	andi	a1,a1,0xffff
    53f4:	0c000000 	jal	0 <func_801069B0>
    53f8:	a42e04e6 	sh	t6,1254(at)
    53fc:	8fbf0014 	lw	ra,20(sp)
    5400:	27bd0018 	addiu	sp,sp,24
    5404:	03e00008 	jr	ra
    5408:	00000000 	nop

0000540c <func_8010BDBC>:
    540c:	34018000 	li	at,0x8000
    5410:	00811021 	addu	v0,a0,at
    5414:	8c4e6300 	lw	t6,25344(v0)
    5418:	55c00004 	bnezl	t6,542c <func_8010BDBC+0x20>
    541c:	90436304 	lbu	v1,25348(v0)
    5420:	03e00008 	jr	ra
    5424:	00001025 	move	v0,zero
    5428:	90436304 	lbu	v1,25348(v0)
    542c:	24010035 	li	at,53
    5430:	5461001d 	bnel	v1,at,54a8 <func_8010BDBC+0x9c>
    5434:	24010034 	li	at,52
    5438:	904363e4 	lbu	v1,25572(v0)
    543c:	24010030 	li	at,48
    5440:	54610004 	bnel	v1,at,5454 <func_8010BDBC+0x48>
    5444:	24010010 	li	at,16
    5448:	03e00008 	jr	ra
    544c:	24020001 	li	v0,1
    5450:	24010010 	li	at,16
    5454:	10610003 	beq	v1,at,5464 <func_8010BDBC+0x58>
    5458:	24010020 	li	at,32
    545c:	54610004 	bnel	v1,at,5470 <func_8010BDBC+0x64>
    5460:	24010050 	li	at,80
    5464:	03e00008 	jr	ra
    5468:	24020004 	li	v0,4
    546c:	24010050 	li	at,80
    5470:	10610003 	beq	v1,at,5480 <func_8010BDBC+0x74>
    5474:	24010040 	li	at,64
    5478:	54610004 	bnel	v1,at,548c <func_8010BDBC+0x80>
    547c:	24010060 	li	at,96
    5480:	03e00008 	jr	ra
    5484:	24020005 	li	v0,5
    5488:	24010060 	li	at,96
    548c:	14610003 	bne	v1,at,549c <func_8010BDBC+0x90>
    5490:	00000000 	nop
    5494:	03e00008 	jr	ra
    5498:	24020003 	li	v0,3
    549c:	03e00008 	jr	ra
    54a0:	24020006 	li	v0,6
    54a4:	24010034 	li	at,52
    54a8:	54610004 	bnel	v1,at,54bc <func_8010BDBC+0xb0>
    54ac:	2401001a 	li	at,26
    54b0:	03e00008 	jr	ra
    54b4:	2402000a 	li	v0,10
    54b8:	2401001a 	li	at,26
    54bc:	54610004 	bnel	v1,at,54d0 <func_8010BDBC+0xc4>
    54c0:	944f63ee 	lhu	t7,25582(v0)
    54c4:	03e00008 	jr	ra
    54c8:	24020007 	li	v0,7
    54cc:	944f63ee 	lhu	t7,25582(v0)
    54d0:	24010003 	li	at,3
    54d4:	55e10004 	bnel	t7,at,54e8 <func_8010BDBC+0xdc>
    54d8:	2401001f 	li	at,31
    54dc:	03e00008 	jr	ra
    54e0:	24020008 	li	v0,8
    54e4:	2401001f 	li	at,31
    54e8:	54610004 	bnel	v1,at,54fc <func_8010BDBC+0xf0>
    54ec:	24010036 	li	at,54
    54f0:	03e00008 	jr	ra
    54f4:	24020009 	li	v0,9
    54f8:	24010036 	li	at,54
    54fc:	54610008 	bnel	v1,at,5520 <func_8010BDBC+0x114>
    5500:	24030003 	li	v1,3
    5504:	905863e7 	lbu	t8,25575(v0)
    5508:	24010001 	li	at,1
    550c:	57010004 	bnel	t8,at,5520 <func_8010BDBC+0x114>
    5510:	24030003 	li	v1,3
    5514:	03e00008 	jr	ra
    5518:	24020002 	li	v0,2
    551c:	24030003 	li	v1,3
    5520:	03e00008 	jr	ra
    5524:	00601025 	move	v0,v1

00005528 <func_8010BED8>:
    5528:	27bdffa0 	addiu	sp,sp,-96
    552c:	afa50064 	sw	a1,100(sp)
    5530:	8ca20000 	lw	v0,0(a1)
    5534:	3c05e700 	lui	a1,0xe700
    5538:	3c0cfa00 	lui	t4,0xfa00
    553c:	00401825 	move	v1,v0
    5540:	ac650000 	sw	a1,0(v1)
    5544:	ac600004 	sw	zero,4(v1)
    5548:	24420008 	addiu	v0,v0,8
    554c:	00403025 	move	a2,v0
    5550:	3401a0d8 	li	at,0xa0d8
    5554:	00811821 	addu	v1,a0,at
    5558:	accc0000 	sw	t4,0(a2)
    555c:	846e6400 	lh	t6,25600(v1)
    5560:	847863fe 	lh	t8,25598(v1)
    5564:	24420008 	addiu	v0,v0,8
    5568:	31cf00ff 	andi	t7,t6,0xff
    556c:	0018ce00 	sll	t9,t8,0x18
    5570:	000fc400 	sll	t8,t7,0x10
    5574:	846f6402 	lh	t7,25602(v1)
    5578:	03387025 	or	t6,t9,t8
    557c:	24010002 	li	at,2
    5580:	31f900ff 	andi	t9,t7,0xff
    5584:	0019c200 	sll	t8,t9,0x8
    5588:	84796406 	lh	t9,25606(v1)
    558c:	01d87825 	or	t7,t6,t8
    5590:	3c0ae600 	lui	t2,0xe600
    5594:	332e00ff 	andi	t6,t9,0xff
    5598:	01eec025 	or	t8,t7,t6
    559c:	acd80004 	sw	t8,4(a2)
    55a0:	906462fd 	lbu	a0,25341(v1)
    55a4:	3c180700 	lui	t8,0x700
    55a8:	3c0ef590 	lui	t6,0xf590
    55ac:	10800003 	beqz	a0,55bc <func_8010BED8+0x94>
    55b0:	3c19fd90 	lui	t9,0xfd90
    55b4:	14810029 	bne	a0,at,565c <func_8010BED8+0x134>
    55b8:	00803025 	move	a2,a0
    55bc:	00402025 	move	a0,v0
    55c0:	ac990000 	sw	t9,0(a0)
    55c4:	8c6f62b0 	lw	t7,25264(v1)
    55c8:	24420008 	addiu	v0,v0,8
    55cc:	37180170 	ori	t8,t8,0x170
    55d0:	ac8f0004 	sw	t7,4(a0)
    55d4:	00402025 	move	a0,v0
    55d8:	ac8e0000 	sw	t6,0(a0)
    55dc:	ac980004 	sw	t8,4(a0)
    55e0:	24420008 	addiu	v0,v0,8
    55e4:	00402025 	move	a0,v0
    55e8:	ac8a0000 	sw	t2,0(a0)
    55ec:	ac800004 	sw	zero,4(a0)
    55f0:	24420008 	addiu	v0,v0,8
    55f4:	00402025 	move	a0,v0
    55f8:	3c19077f 	lui	t9,0x77f
    55fc:	3739f100 	ori	t9,t9,0xf100
    5600:	3c0bf300 	lui	t3,0xf300
    5604:	ac8b0000 	sw	t3,0(a0)
    5608:	ac990004 	sw	t9,4(a0)
    560c:	24420008 	addiu	v0,v0,8
    5610:	00402025 	move	a0,v0
    5614:	ac850000 	sw	a1,0(a0)
    5618:	ac800004 	sw	zero,4(a0)
    561c:	24420008 	addiu	v0,v0,8
    5620:	00402025 	move	a0,v0
    5624:	3c0ff580 	lui	t7,0xf580
    5628:	35ef1000 	ori	t7,t7,0x1000
    562c:	240e0170 	li	t6,368
    5630:	ac8e0004 	sw	t6,4(a0)
    5634:	ac8f0000 	sw	t7,0(a0)
    5638:	24420008 	addiu	v0,v0,8
    563c:	00402025 	move	a0,v0
    5640:	3c18001f 	lui	t8,0x1f
    5644:	3718c0fc 	ori	t8,t8,0xc0fc
    5648:	3c06f200 	lui	a2,0xf200
    564c:	ac860000 	sw	a2,0(a0)
    5650:	ac980004 	sw	t8,4(a0)
    5654:	1000003d 	b	574c <func_8010BED8+0x224>
    5658:	24420008 	addiu	v0,v0,8
    565c:	24010003 	li	at,3
    5660:	14c10008 	bne	a2,at,5684 <func_8010BED8+0x15c>
    5664:	3c0ae600 	lui	t2,0xe600
    5668:	00402025 	move	a0,v0
    566c:	3c19fb00 	lui	t9,0xfb00
    5670:	240f00ff 	li	t7,255
    5674:	ac8f0004 	sw	t7,4(a0)
    5678:	ac990000 	sw	t9,0(a0)
    567c:	10000008 	b	56a0 <func_8010BED8+0x178>
    5680:	24420008 	addiu	v0,v0,8
    5684:	00402025 	move	a0,v0
    5688:	3c183214 	lui	t8,0x3214
    568c:	371800ff 	ori	t8,t8,0xff
    5690:	3c0efb00 	lui	t6,0xfb00
    5694:	ac8e0000 	sw	t6,0(a0)
    5698:	ac980004 	sw	t8,4(a0)
    569c:	24420008 	addiu	v0,v0,8
    56a0:	00402025 	move	a0,v0
    56a4:	3c19fd70 	lui	t9,0xfd70
    56a8:	ac990000 	sw	t9,0(a0)
    56ac:	8c6f62b0 	lw	t7,25264(v1)
    56b0:	24420008 	addiu	v0,v0,8
    56b4:	3c180704 	lui	t8,0x704
    56b8:	ac8f0004 	sw	t7,4(a0)
    56bc:	00402025 	move	a0,v0
    56c0:	37180170 	ori	t8,t8,0x170
    56c4:	3c0ef570 	lui	t6,0xf570
    56c8:	ac8e0000 	sw	t6,0(a0)
    56cc:	ac980004 	sw	t8,4(a0)
    56d0:	24420008 	addiu	v0,v0,8
    56d4:	00402025 	move	a0,v0
    56d8:	ac8a0000 	sw	t2,0(a0)
    56dc:	ac800004 	sw	zero,4(a0)
    56e0:	24420008 	addiu	v0,v0,8
    56e4:	00402025 	move	a0,v0
    56e8:	3c19077f 	lui	t9,0x77f
    56ec:	3739f100 	ori	t9,t9,0xf100
    56f0:	3c0bf300 	lui	t3,0xf300
    56f4:	ac8b0000 	sw	t3,0(a0)
    56f8:	ac990004 	sw	t9,4(a0)
    56fc:	24420008 	addiu	v0,v0,8
    5700:	00402025 	move	a0,v0
    5704:	ac850000 	sw	a1,0(a0)
    5708:	ac800004 	sw	zero,4(a0)
    570c:	24420008 	addiu	v0,v0,8
    5710:	00402025 	move	a0,v0
    5714:	3c0e0004 	lui	t6,0x4
    5718:	3c0ff560 	lui	t7,0xf560
    571c:	35ef1000 	ori	t7,t7,0x1000
    5720:	35ce0170 	ori	t6,t6,0x170
    5724:	ac8e0004 	sw	t6,4(a0)
    5728:	ac8f0000 	sw	t7,0(a0)
    572c:	24420008 	addiu	v0,v0,8
    5730:	00402025 	move	a0,v0
    5734:	3c18001f 	lui	t8,0x1f
    5738:	3718c0fc 	ori	t8,t8,0xc0fc
    573c:	3c06f200 	lui	a2,0xf200
    5740:	ac860000 	sw	a2,0(a0)
    5744:	ac980004 	sw	t8,4(a0)
    5748:	24420008 	addiu	v0,v0,8
    574c:	3c040000 	lui	a0,0x0
    5750:	24840000 	addiu	a0,a0,0
    5754:	8c8d0000 	lw	t5,0(a0)
    5758:	3c07e400 	lui	a3,0xe400
    575c:	00404025 	move	t0,v0
    5760:	85b904c2 	lh	t9,1218(t5)
    5764:	85af0f16 	lh	t7,3862(t5)
    5768:	24420008 	addiu	v0,v0,8
    576c:	00404825 	move	t1,v0
    5770:	032f7021 	addu	t6,t9,t7
    5774:	000ec080 	sll	t8,t6,0x2
    5778:	33190fff 	andi	t9,t8,0xfff
    577c:	85b804c0 	lh	t8,1216(t5)
    5780:	85ae0f14 	lh	t6,3860(t5)
    5784:	03277825 	or	t7,t9,a3
    5788:	24420008 	addiu	v0,v0,8
    578c:	01d8c821 	addu	t9,t6,t8
    5790:	00197080 	sll	t6,t9,0x2
    5794:	31d80fff 	andi	t8,t6,0xfff
    5798:	0018cb00 	sll	t9,t8,0xc
    579c:	01f97025 	or	t6,t7,t9
    57a0:	ad0e0000 	sw	t6,0(t0)
    57a4:	8c8d0000 	lw	t5,0(a0)
    57a8:	24010003 	li	at,3
    57ac:	85b80f16 	lh	t8,3862(t5)
    57b0:	85ae0f14 	lh	t6,3860(t5)
    57b4:	00187880 	sll	t7,t8,0x2
    57b8:	31f90fff 	andi	t9,t7,0xfff
    57bc:	000ec080 	sll	t8,t6,0x2
    57c0:	330f0fff 	andi	t7,t8,0xfff
    57c4:	000f7300 	sll	t6,t7,0xc
    57c8:	032ec025 	or	t8,t9,t6
    57cc:	ad180004 	sw	t8,4(t0)
    57d0:	3c08e100 	lui	t0,0xe100
    57d4:	ad280000 	sw	t0,0(t1)
    57d8:	ad200004 	sw	zero,4(t1)
    57dc:	afa20004 	sw	v0,4(sp)
    57e0:	8faf0004 	lw	t7,4(sp)
    57e4:	3c09f100 	lui	t1,0xf100
    57e8:	24420008 	addiu	v0,v0,8
    57ec:	ade90000 	sw	t1,0(t7)
    57f0:	8c8d0000 	lw	t5,0(a0)
    57f4:	85b904b6 	lh	t9,1206(t5)
    57f8:	00197040 	sll	t6,t9,0x1
    57fc:	31d8ffff 	andi	t8,t6,0xffff
    5800:	85ae04b4 	lh	t6,1204(t5)
    5804:	000e7c40 	sll	t7,t6,0x11
    5808:	8fae0004 	lw	t6,4(sp)
    580c:	030fc825 	or	t9,t8,t7
    5810:	3c0ffc61 	lui	t7,0xfc61
    5814:	add90004 	sw	t9,4(t6)
    5818:	907862fd 	lbu	t8,25341(v1)
    581c:	00401825 	move	v1,v0
    5820:	3c19ff2f 	lui	t9,0xff2f
    5824:	1701005c 	bne	t8,at,5998 <func_8010BED8+0x470>
    5828:	35ef96c3 	ori	t7,t7,0x96c3
    582c:	24420008 	addiu	v0,v0,8
    5830:	ac650000 	sw	a1,0(v1)
    5834:	ac600004 	sw	zero,4(v1)
    5838:	00401825 	move	v1,v0
    583c:	3739ffff 	ori	t9,t9,0xffff
    5840:	ac790004 	sw	t9,4(v1)
    5844:	ac6f0000 	sw	t7,0(v1)
    5848:	24420008 	addiu	v0,v0,8
    584c:	00401825 	move	v1,v0
    5850:	3c0eff64 	lui	t6,0xff64
    5854:	35ce00ff 	ori	t6,t6,0xff
    5858:	ac6e0004 	sw	t6,4(v1)
    585c:	ac6c0000 	sw	t4,0(v1)
    5860:	24420008 	addiu	v0,v0,8
    5864:	00401825 	move	v1,v0
    5868:	3c0f0000 	lui	t7,0x0
    586c:	25ef0000 	addiu	t7,t7,0
    5870:	3c18fd90 	lui	t8,0xfd90
    5874:	ac780000 	sw	t8,0(v1)
    5878:	ac6f0004 	sw	t7,4(v1)
    587c:	24420008 	addiu	v0,v0,8
    5880:	00401825 	move	v1,v0
    5884:	3c0e0704 	lui	t6,0x704
    5888:	35ce0100 	ori	t6,t6,0x100
    588c:	3c19f590 	lui	t9,0xf590
    5890:	ac790000 	sw	t9,0(v1)
    5894:	ac6e0004 	sw	t6,4(v1)
    5898:	24420008 	addiu	v0,v0,8
    589c:	00401825 	move	v1,v0
    58a0:	ac6a0000 	sw	t2,0(v1)
    58a4:	ac600004 	sw	zero,4(v1)
    58a8:	24420008 	addiu	v0,v0,8
    58ac:	00401825 	move	v1,v0
    58b0:	3c180707 	lui	t8,0x707
    58b4:	3718f800 	ori	t8,t8,0xf800
    58b8:	ac780004 	sw	t8,4(v1)
    58bc:	ac6b0000 	sw	t3,0(v1)
    58c0:	24420008 	addiu	v0,v0,8
    58c4:	00401825 	move	v1,v0
    58c8:	ac650000 	sw	a1,0(v1)
    58cc:	ac600004 	sw	zero,4(v1)
    58d0:	24420008 	addiu	v0,v0,8
    58d4:	00401825 	move	v1,v0
    58d8:	3c190004 	lui	t9,0x4
    58dc:	3c0ff580 	lui	t7,0xf580
    58e0:	35ef0200 	ori	t7,t7,0x200
    58e4:	37390100 	ori	t9,t9,0x100
    58e8:	ac790004 	sw	t9,4(v1)
    58ec:	ac6f0000 	sw	t7,0(v1)
    58f0:	24420008 	addiu	v0,v0,8
    58f4:	00401825 	move	v1,v0
    58f8:	3c0e0003 	lui	t6,0x3
    58fc:	35cec07c 	ori	t6,t6,0xc07c
    5900:	ac6e0004 	sw	t6,4(v1)
    5904:	ac660000 	sw	a2,0(v1)
    5908:	8c8d0000 	lw	t5,0(a0)
    590c:	24420008 	addiu	v0,v0,8
    5910:	00401825 	move	v1,v0
    5914:	85b80f24 	lh	t8,3876(t5)
    5918:	24420008 	addiu	v0,v0,8
    591c:	270f0020 	addiu	t7,t8,32
    5920:	000fc880 	sll	t9,t7,0x2
    5924:	85af0f22 	lh	t7,3874(t5)
    5928:	332e0fff 	andi	t6,t9,0xfff
    592c:	01c7c025 	or	t8,t6,a3
    5930:	25f90010 	addiu	t9,t7,16
    5934:	00197080 	sll	t6,t9,0x2
    5938:	31cf0fff 	andi	t7,t6,0xfff
    593c:	000fcb00 	sll	t9,t7,0xc
    5940:	03197025 	or	t6,t8,t9
    5944:	ac6e0000 	sw	t6,0(v1)
    5948:	8c8d0000 	lw	t5,0(a0)
    594c:	85af0f24 	lh	t7,3876(t5)
    5950:	85ae0f22 	lh	t6,3874(t5)
    5954:	000fc080 	sll	t8,t7,0x2
    5958:	33190fff 	andi	t9,t8,0xfff
    595c:	000e7880 	sll	t7,t6,0x2
    5960:	31f80fff 	andi	t8,t7,0xfff
    5964:	00187300 	sll	t6,t8,0xc
    5968:	032e7825 	or	t7,t9,t6
    596c:	ac6f0004 	sw	t7,4(v1)
    5970:	00401825 	move	v1,v0
    5974:	ac680000 	sw	t0,0(v1)
    5978:	ac600004 	sw	zero,4(v1)
    597c:	24420008 	addiu	v0,v0,8
    5980:	00401825 	move	v1,v0
    5984:	3c180400 	lui	t8,0x400
    5988:	37180400 	ori	t8,t8,0x400
    598c:	ac780004 	sw	t8,4(v1)
    5990:	ac690000 	sw	t1,0(v1)
    5994:	24420008 	addiu	v0,v0,8
    5998:	8fb90064 	lw	t9,100(sp)
    599c:	27bd0060 	addiu	sp,sp,96
    59a0:	03e00008 	jr	ra
    59a4:	af220000 	sw	v0,0(t9)

000059a8 <func_8010C358>:
    59a8:	27bdffd8 	addiu	sp,sp,-40
    59ac:	afbf0014 	sw	ra,20(sp)
    59b0:	240e00f0 	li	t6,240
    59b4:	240f0140 	li	t7,320
    59b8:	afa40028 	sw	a0,40(sp)
    59bc:	afaf0024 	sw	t7,36(sp)
    59c0:	afae001c 	sw	t6,28(sp)
    59c4:	afa00018 	sw	zero,24(sp)
    59c8:	afa00020 	sw	zero,32(sp)
    59cc:	0c000000 	jal	0 <func_801069B0>
    59d0:	27a50018 	addiu	a1,sp,24
    59d4:	0c000000 	jal	0 <func_801069B0>
    59d8:	8fa40028 	lw	a0,40(sp)
    59dc:	8fbf0014 	lw	ra,20(sp)
    59e0:	27bd0028 	addiu	sp,sp,40
    59e4:	03e00008 	jr	ra
    59e8:	00000000 	nop

000059ec <func_8010C39C>:
    59ec:	27bdfea8 	addiu	sp,sp,-344
    59f0:	afbf003c 	sw	ra,60(sp)
    59f4:	afb20038 	sw	s2,56(sp)
    59f8:	afb10034 	sw	s1,52(sp)
    59fc:	afb00030 	sw	s0,48(sp)
    5a00:	afa5015c 	sw	a1,348(sp)
    5a04:	8c8e1c44 	lw	t6,7236(a0)
    5a08:	3c0fdb06 	lui	t7,0xdb06
    5a0c:	35ef0008 	ori	t7,t7,0x8
    5a10:	afae0148 	sw	t6,328(sp)
    5a14:	8ca20000 	lw	v0,0(a1)
    5a18:	3c010001 	lui	at,0x1
    5a1c:	0081c021 	addu	t8,a0,at
    5a20:	afa20140 	sw	v0,320(sp)
    5a24:	244e0008 	addiu	t6,v0,8
    5a28:	afae0140 	sw	t6,320(sp)
    5a2c:	ac4f0000 	sw	t7,0(v0)
    5a30:	afb8008c 	sw	t8,140(sp)
    5a34:	8f0e0620 	lw	t6,1568(t8)
    5a38:	3c19db06 	lui	t9,0xdb06
    5a3c:	3739001c 	ori	t9,t9,0x1c
    5a40:	ac4e0004 	sw	t6,4(v0)
    5a44:	8faf0140 	lw	t7,320(sp)
    5a48:	34018000 	li	at,0x8000
    5a4c:	249120d8 	addiu	s1,a0,8408
    5a50:	25f80008 	addiu	t8,t7,8
    5a54:	afb80140 	sw	t8,320(sp)
    5a58:	02218021 	addu	s0,s1,at
    5a5c:	adf90000 	sw	t9,0(t7)
    5a60:	8e0e62b0 	lw	t6,25264(s0)
    5a64:	00809025 	move	s2,a0
    5a68:	adee0004 	sw	t6,4(t7)
    5a6c:	8e0f6300 	lw	t7,25344(s0)
    5a70:	51e00ba2 	beqzl	t7,88fc <L8010EC60+0x64c>
    5a74:	8fb80140 	lw	t8,320(sp)
    5a78:	961863f0 	lhu	t8,25584(s0)
    5a7c:	2401002f 	li	at,47
    5a80:	13010014 	beq	t8,at,5ad4 <func_8010C39C+0xe8>
    5a84:	00000000 	nop
    5a88:	92026304 	lbu	v0,25348(s0)
    5a8c:	24010017 	li	at,23
    5a90:	10410010 	beq	v0,at,5ad4 <func_8010C39C+0xe8>
    5a94:	28410002 	slti	at,v0,2
    5a98:	1420000e 	bnez	at,5ad4 <func_8010C39C+0xe8>
    5a9c:	28410036 	slti	at,v0,54
    5aa0:	1020000c 	beqz	at,5ad4 <func_8010C39C+0xe8>
    5aa4:	00000000 	nop
    5aa8:	921962fd 	lbu	t9,25341(s0)
    5aac:	2b210004 	slti	at,t9,4
    5ab0:	10200008 	beqz	at,5ad4 <func_8010C39C+0xe8>
    5ab4:	00000000 	nop
    5ab8:	0c000000 	jal	0 <func_801069B0>
    5abc:	02202025 	move	a0,s1
    5ac0:	0c000000 	jal	0 <func_801069B0>
    5ac4:	27a40140 	addiu	a0,sp,320
    5ac8:	02402025 	move	a0,s2
    5acc:	0c000000 	jal	0 <func_801069B0>
    5ad0:	27a50140 	addiu	a1,sp,320
    5ad4:	0c000000 	jal	0 <func_801069B0>
    5ad8:	27a40140 	addiu	a0,sp,320
    5adc:	8fae0140 	lw	t6,320(sp)
    5ae0:	3c18e200 	lui	t8,0xe200
    5ae4:	37181e01 	ori	t8,t8,0x1e01
    5ae8:	25cf0008 	addiu	t7,t6,8
    5aec:	afaf0140 	sw	t7,320(sp)
    5af0:	adc00004 	sw	zero,4(t6)
    5af4:	add80000 	sw	t8,0(t6)
    5af8:	8fb90140 	lw	t9,320(sp)
    5afc:	3c18ff2d 	lui	t8,0xff2d
    5b00:	3c0ffcff 	lui	t7,0xfcff
    5b04:	272e0008 	addiu	t6,t9,8
    5b08:	afae0140 	sw	t6,320(sp)
    5b0c:	35ef97ff 	ori	t7,t7,0x97ff
    5b10:	3718feff 	ori	t8,t8,0xfeff
    5b14:	af380004 	sw	t8,4(t9)
    5b18:	af2f0000 	sw	t7,0(t9)
    5b1c:	92026304 	lbu	v0,25348(s0)
    5b20:	2459ffff 	addiu	t9,v0,-1
    5b24:	2f210037 	sltiu	at,t9,55
    5b28:	102009e1 	beqz	at,82b0 <L8010EC60>
    5b2c:	0019c880 	sll	t9,t9,0x2
    5b30:	3c010000 	lui	at,0x0
    5b34:	00390821 	addu	at,at,t9
    5b38:	8c390000 	lw	t9,0(at)
    5b3c:	03200008 	jr	t9
    5b40:	00000000 	nop

00005b44 <L8010C4F4>:
    5b44:	100009df 	b	82c4 <L8010EC60+0x14>
    5b48:	2841000c 	slti	at,v0,12

00005b4c <L8010C4FC>:
    5b4c:	920e63e7 	lbu	t6,25575(s0)
    5b50:	24010001 	li	at,1
    5b54:	15c10015 	bne	t6,at,5bac <L8010C4FC+0x60>
    5b58:	26442200 	addiu	a0,s2,8704
    5b5c:	afa40090 	sw	a0,144(sp)
    5b60:	00003025 	move	a2,zero
    5b64:	00003825 	move	a3,zero
    5b68:	8fa40090 	lw	a0,144(sp)
    5b6c:	34058140 	li	a1,0x8140
    5b70:	a7a60132 	sh	a2,306(sp)
    5b74:	0c000000 	jal	0 <func_801069B0>
    5b78:	a7a70138 	sh	a3,312(sp)
    5b7c:	97a70138 	lhu	a3,312(sp)
    5b80:	97a60132 	lhu	a2,306(sp)
    5b84:	24e70001 	addiu	a3,a3,1
    5b88:	30e7ffff 	andi	a3,a3,0xffff
    5b8c:	28e10030 	slti	at,a3,48
    5b90:	24c60080 	addiu	a2,a2,128
    5b94:	1420fff4 	bnez	at,5b68 <L8010C4FC+0x1c>
    5b98:	30c6ffff 	andi	a2,a2,0xffff
    5b9c:	02402025 	move	a0,s2
    5ba0:	0c000000 	jal	0 <func_801069B0>
    5ba4:	27a50140 	addiu	a1,sp,320
    5ba8:	92026304 	lbu	v0,25348(s0)
    5bac:	100009c5 	b	82c4 <L8010EC60+0x14>
    5bb0:	2841000c 	slti	at,v0,12

00005bb4 <L8010C564>:
    5bb4:	02402025 	move	a0,s2
    5bb8:	0c000000 	jal	0 <func_801069B0>
    5bbc:	27a50140 	addiu	a1,sp,320
    5bc0:	100009bf 	b	82c0 <L8010EC60+0x10>
    5bc4:	92026304 	lbu	v0,25348(s0)

00005bc8 <L8010C578>:
    5bc8:	02402025 	move	a0,s2
    5bcc:	0c000000 	jal	0 <func_801069B0>
    5bd0:	27a50140 	addiu	a1,sp,320
    5bd4:	3c090000 	lui	t1,0x0
    5bd8:	25290000 	addiu	t1,t1,0
    5bdc:	8d280000 	lw	t0,0(t1)
    5be0:	02402025 	move	a0,s2
    5be4:	27a50140 	addiu	a1,sp,320
    5be8:	85060b14 	lh	a2,2836(t0)
    5bec:	0c000000 	jal	0 <func_801069B0>
    5bf0:	85070b16 	lh	a3,2838(t0)
    5bf4:	100009b2 	b	82c0 <L8010EC60+0x10>
    5bf8:	92026304 	lbu	v0,25348(s0)

00005bfc <L8010C5AC>:
    5bfc:	0c000000 	jal	0 <func_801069B0>
    5c00:	24040001 	li	a0,1
    5c04:	0c000000 	jal	0 <func_801069B0>
    5c08:	00000000 	nop
    5c0c:	3c080000 	lui	t0,0x0
    5c10:	26217fff 	addiu	at,s1,32767
    5c14:	ac2262b9 	sw	v0,25273(at)
    5c18:	25080000 	addiu	t0,t0,0
    5c1c:	a5000000 	sh	zero,0(t0)
    5c20:	8e1862b8 	lw	t8,25272(s0)
    5c24:	850f0000 	lh	t7,0(t0)
    5c28:	3c010001 	lui	at,0x1
    5c2c:	00320821 	addu	at,at,s2
    5c30:	24190001 	li	t9,1
    5c34:	a30f0002 	sb	t7,2(t8)
    5c38:	0c000000 	jal	0 <func_801069B0>
    5c3c:	a43904c6 	sh	t9,1222(at)
    5c40:	240e0001 	li	t6,1
    5c44:	3c010000 	lui	at,0x0
    5c48:	a42e0000 	sh	t6,0(at)
    5c4c:	92026304 	lbu	v0,25348(s0)
    5c50:	240a0003 	li	t2,3
    5c54:	3c010000 	lui	at,0x0
    5c58:	a42a0000 	sh	t2,0(at)
    5c5c:	24010009 	li	at,9
    5c60:	5441002e 	bnel	v0,at,5d1c <L8010C5AC+0x120>
    5c64:	2401000a 	li	at,10
    5c68:	960263f0 	lhu	v0,25584(s0)
    5c6c:	10400008 	beqz	v0,5c90 <L8010C5AC+0x94>
    5c70:	24010001 	li	at,1
    5c74:	10410006 	beq	v0,at,5c90 <L8010C5AC+0x94>
    5c78:	2401002c 	li	at,44
    5c7c:	10410004 	beq	v0,at,5c90 <L8010C5AC+0x94>
    5c80:	24010030 	li	at,48
    5c84:	10410002 	beq	v0,at,5c90 <L8010C5AC+0x94>
    5c88:	28410022 	slti	at,v0,34
    5c8c:	14200014 	bnez	at,5ce0 <L8010C5AC+0xe4>
    5c90:	24010001 	li	at,1
    5c94:	10410002 	beq	v0,at,5ca0 <L8010C5AC+0xa4>
    5c98:	24010030 	li	at,48
    5c9c:	14410008 	bne	v0,at,5cc0 <L8010C5AC+0xc4>
    5ca0:	3c040000 	lui	a0,0x0
    5ca4:	94840000 	lhu	a0,0(a0)
    5ca8:	3401c000 	li	at,0xc000
    5cac:	00812021 	addu	a0,a0,at
    5cb0:	0c000000 	jal	0 <func_801069B0>
    5cb4:	3084ffff 	andi	a0,a0,0xffff
    5cb8:	10000014 	b	5d0c <L8010C5AC+0x110>
    5cbc:	2419000c 	li	t9,12
    5cc0:	3c040000 	lui	a0,0x0
    5cc4:	0c000000 	jal	0 <func_801069B0>
    5cc8:	24840000 	addiu	a0,a0,0
    5ccc:	3c040000 	lui	a0,0x0
    5cd0:	0c000000 	jal	0 <func_801069B0>
    5cd4:	94840000 	lhu	a0,0(a0)
    5cd8:	1000000c 	b	5d0c <L8010C5AC+0x110>
    5cdc:	2419000c 	li	t9,12
    5ce0:	3c040000 	lui	a0,0x0
    5ce4:	0c000000 	jal	0 <func_801069B0>
    5ce8:	24840000 	addiu	a0,a0,0
    5cec:	960f63f0 	lhu	t7,25584(s0)
    5cf0:	24180001 	li	t8,1
    5cf4:	34018000 	li	at,0x8000
    5cf8:	01f82004 	sllv	a0,t8,t7
    5cfc:	00812021 	addu	a0,a0,at
    5d00:	0c000000 	jal	0 <func_801069B0>
    5d04:	3084ffff 	andi	a0,a0,0xffff
    5d08:	2419000c 	li	t9,12
    5d0c:	26217fff 	addiu	at,s1,32767
    5d10:	10000019 	b	5d78 <L8010C5AC+0x17c>
    5d14:	a0396305 	sb	t9,25349(at)
    5d18:	2401000a 	li	at,10
    5d1c:	14410006 	bne	v0,at,5d38 <L8010C5AC+0x13c>
    5d20:	240e0014 	li	t6,20
    5d24:	26217fff 	addiu	at,s1,32767
    5d28:	24180018 	li	t8,24
    5d2c:	a02e63e8 	sb	t6,25576(at)
    5d30:	10000011 	b	5d78 <L8010C5AC+0x17c>
    5d34:	a0386305 	sb	t8,25349(at)
    5d38:	960f63f0 	lhu	t7,25584(s0)
    5d3c:	240e0001 	li	t6,1
    5d40:	34018000 	li	at,0x8000
    5d44:	25f90011 	addiu	t9,t7,17
    5d48:	032e2004 	sllv	a0,t6,t9
    5d4c:	00812021 	addu	a0,a0,at
    5d50:	0c000000 	jal	0 <func_801069B0>
    5d54:	3084ffff 	andi	a0,a0,0xffff
    5d58:	960563f0 	lhu	a1,25584(s0)
    5d5c:	3c040000 	lui	a0,0x0
    5d60:	24840000 	addiu	a0,a0,0
    5d64:	0c000000 	jal	0 <func_801069B0>
    5d68:	24a5fff1 	addiu	a1,a1,-15
    5d6c:	2418001b 	li	t8,27
    5d70:	26217fff 	addiu	at,s1,32767
    5d74:	a0386305 	sb	t8,25349(at)
    5d78:	960263f0 	lhu	v0,25584(s0)
    5d7c:	24010001 	li	at,1
    5d80:	10410005 	beq	v0,at,5d98 <L8010C5AC+0x19c>
    5d84:	24010030 	li	at,48
    5d88:	10410003 	beq	v0,at,5d98 <L8010C5AC+0x19c>
    5d8c:	02402025 	move	a0,s2
    5d90:	0c000000 	jal	0 <func_801069B0>
    5d94:	27a50140 	addiu	a1,sp,320
    5d98:	10000949 	b	82c0 <L8010EC60+0x10>
    5d9c:	92026304 	lbu	v0,25348(s0)

00005da0 <L8010C750>:
    5da0:	0c000000 	jal	0 <func_801069B0>
    5da4:	00000000 	nop
    5da8:	26217fff 	addiu	at,s1,32767
    5dac:	ac2262b9 	sw	v0,25273(at)
    5db0:	8e0762b8 	lw	a3,25272(s0)
    5db4:	90e30002 	lbu	v1,2(a3)
    5db8:	10600029 	beqz	v1,5e60 <L8010C750+0xc0>
    5dbc:	3c080000 	lui	t0,0x0
    5dc0:	25080000 	addiu	t0,t0,0
    5dc4:	3c040000 	lui	a0,0x0
    5dc8:	24840000 	addiu	a0,a0,0
    5dcc:	85060000 	lh	a2,0(t0)
    5dd0:	0c000000 	jal	0 <func_801069B0>
    5dd4:	00602825 	move	a1,v1
    5dd8:	8e0762b8 	lw	a3,25272(s0)
    5ddc:	3c080000 	lui	t0,0x0
    5de0:	24010001 	li	at,1
    5de4:	90e40002 	lbu	a0,2(a3)
    5de8:	25080000 	addiu	t0,t0,0
    5dec:	54810009 	bnel	a0,at,5e14 <L8010C750+0x74>
    5df0:	850e0000 	lh	t6,0(t0)
    5df4:	850f0000 	lh	t7,0(t0)
    5df8:	24010008 	li	at,8
    5dfc:	55e10005 	bnel	t7,at,5e14 <L8010C750+0x74>
    5e00:	850e0000 	lh	t6,0(t0)
    5e04:	a5000000 	sh	zero,0(t0)
    5e08:	8e0762b8 	lw	a3,25272(s0)
    5e0c:	90e40002 	lbu	a0,2(a3)
    5e10:	850e0000 	lh	t6,0(t0)
    5e14:	25d90001 	addiu	t9,t6,1
    5e18:	54990012 	bnel	a0,t9,5e64 <L8010C750+0xc4>
    5e1c:	90f80001 	lbu	t8,1(a3)
    5e20:	90e20000 	lbu	v0,0(a3)
    5e24:	3c010000 	lui	at,0x0
    5e28:	00240821 	addu	at,at,a0
    5e2c:	a0220000 	sb	v0,0(at)
    5e30:	26217fff 	addiu	at,s1,32767
    5e34:	a0226411 	sb	v0,25617(at)
    5e38:	8e0f62b8 	lw	t7,25272(s0)
    5e3c:	3c010000 	lui	at,0x0
    5e40:	241800ff 	li	t8,255
    5e44:	91ee0002 	lbu	t6,2(t7)
    5e48:	002e0821 	addu	at,at,t6
    5e4c:	a0380000 	sb	t8,0(at)
    5e50:	85190000 	lh	t9,0(t0)
    5e54:	272f0001 	addiu	t7,t9,1
    5e58:	a50f0000 	sh	t7,0(t0)
    5e5c:	8e0762b8 	lw	a3,25272(s0)
    5e60:	90f80001 	lbu	t8,1(a3)
    5e64:	26217fff 	addiu	at,s1,32767
    5e68:	a43863ed 	sh	t8,25581(at)
    5e6c:	8e0e62b8 	lw	t6,25272(s0)
    5e70:	91c40001 	lbu	a0,1(t6)
    5e74:	2881000d 	slti	at,a0,13
    5e78:	102000c7 	beqz	at,6198 <L8010C750+0x3f8>
    5e7c:	00803025 	move	a2,a0
    5e80:	2405000c 	li	a1,12
    5e84:	10a4000c 	beq	a1,a0,5eb8 <L8010C750+0x118>
    5e88:	0004c840 	sll	t9,a0,0x1
    5e8c:	3c0f0000 	lui	t7,0x0
    5e90:	01f97821 	addu	t7,t7,t9
    5e94:	85ef0000 	lh	t7,0(t7)
    5e98:	3c0e0000 	lui	t6,0x0
    5e9c:	3c190000 	lui	t9,0x0
    5ea0:	000fc080 	sll	t8,t7,0x2
    5ea4:	01d87021 	addu	t6,t6,t8
    5ea8:	8dce0018 	lw	t6,24(t6)
    5eac:	8f3900a4 	lw	t9,164(t9)
    5eb0:	01d97824 	and	t7,t6,t9
    5eb4:	11e000a7 	beqz	t7,6154 <L8010C750+0x3b4>
    5eb8:	26217fff 	addiu	at,s1,32767
    5ebc:	a42463ed 	sh	a0,25581(at)
    5ec0:	a42463f3 	sh	a0,25587(at)
    5ec4:	3c010000 	lui	at,0x0
    5ec8:	a4240000 	sh	a0,0(at)
    5ecc:	26217fff 	addiu	at,s1,32767
    5ed0:	2418000d 	li	t8,13
    5ed4:	240e0014 	li	t6,20
    5ed8:	a0386305 	sb	t8,25349(at)
    5edc:	a02e63e8 	sb	t6,25576(at)
    5ee0:	960263f0 	lhu	v0,25584(s0)
    5ee4:	24010030 	li	at,48
    5ee8:	54410037 	bnel	v0,at,5fc8 <L8010C750+0x228>
    5eec:	24010028 	li	at,40
    5ef0:	8e1962b8 	lw	t9,25272(s0)
    5ef4:	93260001 	lbu	a2,1(t9)
    5ef8:	28c10006 	slti	at,a2,6
    5efc:	14200003 	bnez	at,5f0c <L8010C750+0x16c>
    5f00:	00000000 	nop
    5f04:	14a60012 	bne	a1,a2,5f50 <L8010C750+0x1b0>
    5f08:	00000000 	nop
    5f0c:	0c000000 	jal	0 <func_801069B0>
    5f10:	00002025 	move	a0,zero
    5f14:	3c070000 	lui	a3,0x0
    5f18:	3c0f0000 	lui	t7,0x0
    5f1c:	24e70000 	addiu	a3,a3,0
    5f20:	25ef0000 	addiu	t7,t7,0
    5f24:	3c050000 	lui	a1,0x0
    5f28:	24a50000 	addiu	a1,a1,0
    5f2c:	afaf0014 	sw	t7,20(sp)
    5f30:	afa70010 	sw	a3,16(sp)
    5f34:	24044827 	li	a0,18471
    5f38:	0c000000 	jal	0 <func_801069B0>
    5f3c:	24060004 	li	a2,4
    5f40:	24180009 	li	t8,9
    5f44:	26217fff 	addiu	at,s1,32767
    5f48:	1000007e 	b	6144 <L8010C750+0x3a4>
    5f4c:	a0386305 	sb	t8,25349(at)
    5f50:	3c040000 	lui	a0,0x0
    5f54:	24840000 	addiu	a0,a0,0
    5f58:	0c000000 	jal	0 <func_801069B0>
    5f5c:	960563ec 	lhu	a1,25580(s0)
    5f60:	02402025 	move	a0,s2
    5f64:	0c000000 	jal	0 <func_801069B0>
    5f68:	2405086f 	li	a1,2159
    5f6c:	26217fff 	addiu	at,s1,32767
    5f70:	3c070000 	lui	a3,0x0
    5f74:	240e0011 	li	t6,17
    5f78:	24190003 	li	t9,3
    5f7c:	240f000a 	li	t7,10
    5f80:	3c180000 	lui	t8,0x0
    5f84:	24e70000 	addiu	a3,a3,0
    5f88:	a02e6305 	sb	t6,25349(at)
    5f8c:	a03962fe 	sb	t9,25342(at)
    5f90:	a02f63e8 	sb	t7,25576(at)
    5f94:	27180000 	addiu	t8,t8,0
    5f98:	3c050000 	lui	a1,0x0
    5f9c:	24a50000 	addiu	a1,a1,0
    5fa0:	afb80014 	sw	t8,20(sp)
    5fa4:	afa70010 	sw	a3,16(sp)
    5fa8:	24044807 	li	a0,18439
    5fac:	0c000000 	jal	0 <func_801069B0>
    5fb0:	24060004 	li	a2,4
    5fb4:	0c000000 	jal	0 <func_801069B0>
    5fb8:	24040001 	li	a0,1
    5fbc:	10000061 	b	6144 <L8010C750+0x3a4>
    5fc0:	00000000 	nop
    5fc4:	24010028 	li	at,40
    5fc8:	54410037 	bnel	v0,at,60a8 <L8010C750+0x308>
    5fcc:	24010001 	li	at,1
    5fd0:	8e0e62b8 	lw	t6,25272(s0)
    5fd4:	91d90001 	lbu	t9,1(t6)
    5fd8:	2b21000c 	slti	at,t9,12
    5fdc:	10200014 	beqz	at,6030 <L8010C750+0x290>
    5fe0:	00000000 	nop
    5fe4:	0c000000 	jal	0 <func_801069B0>
    5fe8:	00002025 	move	a0,zero
    5fec:	3c070000 	lui	a3,0x0
    5ff0:	3c0f0000 	lui	t7,0x0
    5ff4:	24e70000 	addiu	a3,a3,0
    5ff8:	25ef0000 	addiu	t7,t7,0
    5ffc:	3c050000 	lui	a1,0x0
    6000:	24a50000 	addiu	a1,a1,0
    6004:	afaf0014 	sw	t7,20(sp)
    6008:	afa70010 	sw	a3,16(sp)
    600c:	24044827 	li	a0,18471
    6010:	0c000000 	jal	0 <func_801069B0>
    6014:	24060004 	li	a2,4
    6018:	2418000a 	li	t8,10
    601c:	26217fff 	addiu	at,s1,32767
    6020:	240e000e 	li	t6,14
    6024:	a03863e8 	sb	t8,25576(at)
    6028:	10000046 	b	6144 <L8010C750+0x3a4>
    602c:	a02e6305 	sb	t6,25349(at)
    6030:	3c040000 	lui	a0,0x0
    6034:	24840000 	addiu	a0,a0,0
    6038:	0c000000 	jal	0 <func_801069B0>
    603c:	960563ec 	lhu	a1,25580(s0)
    6040:	02402025 	move	a0,s2
    6044:	0c000000 	jal	0 <func_801069B0>
    6048:	2405086f 	li	a1,2159
    604c:	26217fff 	addiu	at,s1,32767
    6050:	3c070000 	lui	a3,0x0
    6054:	24190011 	li	t9,17
    6058:	240f0003 	li	t7,3
    605c:	2418000a 	li	t8,10
    6060:	3c0e0000 	lui	t6,0x0
    6064:	24e70000 	addiu	a3,a3,0
    6068:	a0396305 	sb	t9,25349(at)
    606c:	a02f62fe 	sb	t7,25342(at)
    6070:	a03863e8 	sb	t8,25576(at)
    6074:	25ce0000 	addiu	t6,t6,0
    6078:	3c050000 	lui	a1,0x0
    607c:	24a50000 	addiu	a1,a1,0
    6080:	afae0014 	sw	t6,20(sp)
    6084:	afa70010 	sw	a3,16(sp)
    6088:	24044807 	li	a0,18439
    608c:	0c000000 	jal	0 <func_801069B0>
    6090:	24060004 	li	a2,4
    6094:	0c000000 	jal	0 <func_801069B0>
    6098:	24040001 	li	a0,1
    609c:	10000029 	b	6144 <L8010C750+0x3a4>
    60a0:	00000000 	nop
    60a4:	24010001 	li	at,1
    60a8:	1441001b 	bne	v0,at,6118 <L8010C750+0x378>
    60ac:	3c040000 	lui	a0,0x0
    60b0:	24840000 	addiu	a0,a0,0
    60b4:	0c000000 	jal	0 <func_801069B0>
    60b8:	960563ec 	lhu	a1,25580(s0)
    60bc:	02402025 	move	a0,s2
    60c0:	0c000000 	jal	0 <func_801069B0>
    60c4:	2405086f 	li	a1,2159
    60c8:	26217fff 	addiu	at,s1,32767
    60cc:	3c070000 	lui	a3,0x0
    60d0:	24190011 	li	t9,17
    60d4:	240f0003 	li	t7,3
    60d8:	2418000a 	li	t8,10
    60dc:	3c0e0000 	lui	t6,0x0
    60e0:	24e70000 	addiu	a3,a3,0
    60e4:	a0396305 	sb	t9,25349(at)
    60e8:	a02f62fe 	sb	t7,25342(at)
    60ec:	a03863e8 	sb	t8,25576(at)
    60f0:	25ce0000 	addiu	t6,t6,0
    60f4:	3c050000 	lui	a1,0x0
    60f8:	24a50000 	addiu	a1,a1,0
    60fc:	afae0014 	sw	t6,20(sp)
    6100:	afa70010 	sw	a3,16(sp)
    6104:	24044807 	li	a0,18439
    6108:	0c000000 	jal	0 <func_801069B0>
    610c:	24060004 	li	a2,4
    6110:	1000000c 	b	6144 <L8010C750+0x3a4>
    6114:	00000000 	nop
    6118:	3c070000 	lui	a3,0x0
    611c:	3c190000 	lui	t9,0x0
    6120:	24e70000 	addiu	a3,a3,0
    6124:	27390000 	addiu	t9,t9,0
    6128:	3c050000 	lui	a1,0x0
    612c:	24a50000 	addiu	a1,a1,0
    6130:	afb90014 	sw	t9,20(sp)
    6134:	afa70010 	sw	a3,16(sp)
    6138:	24044807 	li	a0,18439
    613c:	0c000000 	jal	0 <func_801069B0>
    6140:	24060004 	li	a2,4
    6144:	0c000000 	jal	0 <func_801069B0>
    6148:	24040001 	li	a0,1
    614c:	10000036 	b	6228 <L8010C750+0x488>
    6150:	960263f0 	lhu	v0,25584(s0)
    6154:	0c000000 	jal	0 <func_801069B0>
    6158:	00002025 	move	a0,zero
    615c:	3c0f0000 	lui	t7,0x0
    6160:	3c180000 	lui	t8,0x0
    6164:	27180000 	addiu	t8,t8,0
    6168:	25e70000 	addiu	a3,t7,0
    616c:	3c050000 	lui	a1,0x0
    6170:	24a50000 	addiu	a1,a1,0
    6174:	afa70010 	sw	a3,16(sp)
    6178:	afb80014 	sw	t8,20(sp)
    617c:	24044827 	li	a0,18471
    6180:	0c000000 	jal	0 <func_801069B0>
    6184:	24060004 	li	a2,4
    6188:	240e0009 	li	t6,9
    618c:	26217fff 	addiu	at,s1,32767
    6190:	10000024 	b	6224 <L8010C750+0x484>
    6194:	a02e6305 	sb	t6,25349(at)
    6198:	240100ff 	li	at,255
    619c:	54c10015 	bnel	a2,at,61f4 <L8010C750+0x454>
    61a0:	96590020 	lhu	t9,32(s2)
    61a4:	0c000000 	jal	0 <func_801069B0>
    61a8:	00002025 	move	a0,zero
    61ac:	3c190000 	lui	t9,0x0
    61b0:	3c0f0000 	lui	t7,0x0
    61b4:	25ef0000 	addiu	t7,t7,0
    61b8:	27270000 	addiu	a3,t9,0
    61bc:	3c050000 	lui	a1,0x0
    61c0:	24a50000 	addiu	a1,a1,0
    61c4:	afa70010 	sw	a3,16(sp)
    61c8:	afaf0014 	sw	t7,20(sp)
    61cc:	24044827 	li	a0,18471
    61d0:	0c000000 	jal	0 <func_801069B0>
    61d4:	24060004 	li	a2,4
    61d8:	2418000a 	li	t8,10
    61dc:	26217fff 	addiu	at,s1,32767
    61e0:	240e000e 	li	t6,14
    61e4:	a03863e8 	sb	t8,25576(at)
    61e8:	1000000e 	b	6224 <L8010C750+0x484>
    61ec:	a02e6305 	sb	t6,25349(at)
    61f0:	96590020 	lhu	t9,32(s2)
    61f4:	2401bfff 	li	at,-16385
    61f8:	03217827 	nor	t7,t9,at
    61fc:	55e0000a 	bnezl	t7,6228 <L8010C750+0x488>
    6200:	960263f0 	lhu	v0,25584(s0)
    6204:	0c000000 	jal	0 <func_801069B0>
    6208:	00002025 	move	a0,zero
    620c:	3c010001 	lui	at,0x1
    6210:	00320821 	addu	at,at,s2
    6214:	24180004 	li	t8,4
    6218:	a43804c6 	sh	t8,1222(at)
    621c:	0c000000 	jal	0 <func_801069B0>
    6220:	02402025 	move	a0,s2
    6224:	960263f0 	lhu	v0,25584(s0)
    6228:	24010001 	li	at,1
    622c:	10410005 	beq	v0,at,6244 <L8010C750+0x4a4>
    6230:	24010030 	li	at,48
    6234:	10410003 	beq	v0,at,6244 <L8010C750+0x4a4>
    6238:	02402025 	move	a0,s2
    623c:	0c000000 	jal	0 <func_801069B0>
    6240:	27a50140 	addiu	a1,sp,320
    6244:	1000081e 	b	82c0 <L8010EC60+0x10>
    6248:	92026304 	lbu	v0,25348(s0)

0000624c <L8010CBFC>:
    624c:	3c0e0000 	lui	t6,0x0
    6250:	85ce0000 	lh	t6,0(t6)
    6254:	3c0f0000 	lui	t7,0x0
    6258:	25ef0000 	addiu	t7,t7,0
    625c:	000ec880 	sll	t9,t6,0x2
    6260:	032ec823 	subu	t9,t9,t6
    6264:	0019c840 	sll	t9,t9,0x1
    6268:	032f2821 	addu	a1,t9,t7
    626c:	3c060000 	lui	a2,0x0
    6270:	84c60000 	lh	a2,0(a2)
    6274:	84b80000 	lh	t8,0(a1)
    6278:	afb90088 	sw	t9,136(sp)
    627c:	00d81823 	subu	v1,a2,t8
    6280:	afb80080 	sw	t8,128(sp)
    6284:	04600003 	bltz	v1,6294 <L8010CBFC+0x48>
    6288:	03007025 	move	t6,t8
    628c:	10000002 	b	6298 <L8010CBFC+0x4c>
    6290:	00601025 	move	v0,v1
    6294:	00031023 	negu	v0,v1
    6298:	3c0a0000 	lui	t2,0x0
    629c:	854a0000 	lh	t2,0(t2)
    62a0:	3c070000 	lui	a3,0x0
    62a4:	84e70000 	lh	a3,0(a3)
    62a8:	004a001a 	div	zero,v0,t2
    62ac:	84b90002 	lh	t9,2(a1)
    62b0:	00004012 	mflo	t0
    62b4:	00084400 	sll	t0,t0,0x10
    62b8:	15400002 	bnez	t2,62c4 <L8010CBFC+0x78>
    62bc:	00000000 	nop
    62c0:	0007000d 	break	0x7
    62c4:	2401ffff 	li	at,-1
    62c8:	15410004 	bne	t2,at,62dc <L8010CBFC+0x90>
    62cc:	3c018000 	lui	at,0x8000
    62d0:	14410002 	bne	v0,at,62dc <L8010CBFC+0x90>
    62d4:	00000000 	nop
    62d8:	0006000d 	break	0x6
    62dc:	00f91823 	subu	v1,a3,t9
    62e0:	00084403 	sra	t0,t0,0x10
    62e4:	afb90078 	sw	t9,120(sp)
    62e8:	04600003 	bltz	v1,62f8 <L8010CBFC+0xac>
    62ec:	03207825 	move	t7,t9
    62f0:	10000002 	b	62fc <L8010CBFC+0xb0>
    62f4:	00601025 	move	v0,v1
    62f8:	00031023 	negu	v0,v1
    62fc:	004a001a 	div	zero,v0,t2
    6300:	3c090000 	lui	t1,0x0
    6304:	85290000 	lh	t1,0(t1)
    6308:	84ab0004 	lh	t3,4(a1)
    630c:	00002012 	mflo	a0
    6310:	00042400 	sll	a0,a0,0x10
    6314:	15400002 	bnez	t2,6320 <L8010CBFC+0xd4>
    6318:	00000000 	nop
    631c:	0007000d 	break	0x7
    6320:	2401ffff 	li	at,-1
    6324:	15410004 	bne	t2,at,6338 <L8010CBFC+0xec>
    6328:	3c018000 	lui	at,0x8000
    632c:	14410002 	bne	v0,at,6338 <L8010CBFC+0xec>
    6330:	00000000 	nop
    6334:	0006000d 	break	0x6
    6338:	012b1823 	subu	v1,t1,t3
    633c:	04600003 	bltz	v1,634c <L8010CBFC+0x100>
    6340:	00042403 	sra	a0,a0,0x10
    6344:	10000002 	b	6350 <L8010CBFC+0x104>
    6348:	00601025 	move	v0,v1
    634c:	00031023 	negu	v0,v1
    6350:	8fb80080 	lw	t8,128(sp)
    6354:	00d8082a 	slt	at,a2,t8
    6358:	54200006 	bnezl	at,6374 <L8010CBFC+0x128>
    635c:	00c8c821 	addu	t9,a2,t0
    6360:	00c87023 	subu	t6,a2,t0
    6364:	3c010000 	lui	at,0x0
    6368:	10000004 	b	637c <L8010CBFC+0x130>
    636c:	a42e0000 	sh	t6,0(at)
    6370:	00c8c821 	addu	t9,a2,t0
    6374:	3c010000 	lui	at,0x0
    6378:	a4390000 	sh	t9,0(at)
    637c:	8faf0078 	lw	t7,120(sp)
    6380:	00ef082a 	slt	at,a3,t7
    6384:	54200006 	bnezl	at,63a0 <L8010CBFC+0x154>
    6388:	00e47021 	addu	t6,a3,a0
    638c:	00e4c023 	subu	t8,a3,a0
    6390:	3c010000 	lui	at,0x0
    6394:	10000004 	b	63a8 <L8010CBFC+0x15c>
    6398:	a4380000 	sh	t8,0(at)
    639c:	00e47021 	addu	t6,a3,a0
    63a0:	3c010000 	lui	at,0x0
    63a4:	a42e0000 	sh	t6,0(at)
    63a8:	012b082a 	slt	at,t1,t3
    63ac:	14200013 	bnez	at,63fc <L8010CBFC+0x1b0>
    63b0:	00000000 	nop
    63b4:	004a001a 	div	zero,v0,t2
    63b8:	15400002 	bnez	t2,63c4 <L8010CBFC+0x178>
    63bc:	00000000 	nop
    63c0:	0007000d 	break	0x7
    63c4:	2401ffff 	li	at,-1
    63c8:	15410004 	bne	t2,at,63dc <L8010CBFC+0x190>
    63cc:	3c018000 	lui	at,0x8000
    63d0:	14410002 	bne	v0,at,63dc <L8010CBFC+0x190>
    63d4:	00000000 	nop
    63d8:	0006000d 	break	0x6
    63dc:	0000c812 	mflo	t9
    63e0:	00197c00 	sll	t7,t9,0x10
    63e4:	000fc403 	sra	t8,t7,0x10
    63e8:	01387023 	subu	t6,t1,t8
    63ec:	3c010000 	lui	at,0x0
    63f0:	a42e0000 	sh	t6,0(at)
    63f4:	10000012 	b	6440 <L8010CBFC+0x1f4>
    63f8:	afab0070 	sw	t3,112(sp)
    63fc:	004a001a 	div	zero,v0,t2
    6400:	15400002 	bnez	t2,640c <L8010CBFC+0x1c0>
    6404:	00000000 	nop
    6408:	0007000d 	break	0x7
    640c:	2401ffff 	li	at,-1
    6410:	15410004 	bne	t2,at,6424 <L8010CBFC+0x1d8>
    6414:	3c018000 	lui	at,0x8000
    6418:	14410002 	bne	v0,at,6424 <L8010CBFC+0x1d8>
    641c:	00000000 	nop
    6420:	0006000d 	break	0x6
    6424:	0000c812 	mflo	t9
    6428:	00197c00 	sll	t7,t9,0x10
    642c:	000fc403 	sra	t8,t7,0x10
    6430:	01387021 	addu	t6,t1,t8
    6434:	3c010000 	lui	at,0x0
    6438:	a42e0000 	sh	t6,0(at)
    643c:	afab0070 	sw	t3,112(sp)
    6440:	8fb90088 	lw	t9,136(sp)
    6444:	3c0f0000 	lui	t7,0x0
    6448:	25ef0000 	addiu	t7,t7,0
    644c:	3c060000 	lui	a2,0x0
    6450:	032f2821 	addu	a1,t9,t7
    6454:	84b80000 	lh	t8,0(a1)
    6458:	84c60000 	lh	a2,0(a2)
    645c:	afb8007c 	sw	t8,124(sp)
    6460:	00d81823 	subu	v1,a2,t8
    6464:	04600003 	bltz	v1,6474 <L8010CBFC+0x228>
    6468:	03007025 	move	t6,t8
    646c:	10000002 	b	6478 <L8010CBFC+0x22c>
    6470:	00601025 	move	v0,v1
    6474:	00031023 	negu	v0,v1
    6478:	004a001a 	div	zero,v0,t2
    647c:	3c070000 	lui	a3,0x0
    6480:	84e70000 	lh	a3,0(a3)
    6484:	84b90002 	lh	t9,2(a1)
    6488:	00004012 	mflo	t0
    648c:	00084400 	sll	t0,t0,0x10
    6490:	15400002 	bnez	t2,649c <L8010CBFC+0x250>
    6494:	00000000 	nop
    6498:	0007000d 	break	0x7
    649c:	2401ffff 	li	at,-1
    64a0:	15410004 	bne	t2,at,64b4 <L8010CBFC+0x268>
    64a4:	3c018000 	lui	at,0x8000
    64a8:	14410002 	bne	v0,at,64b4 <L8010CBFC+0x268>
    64ac:	00000000 	nop
    64b0:	0006000d 	break	0x6
    64b4:	00f91823 	subu	v1,a3,t9
    64b8:	00084403 	sra	t0,t0,0x10
    64bc:	afb9006c 	sw	t9,108(sp)
    64c0:	04600003 	bltz	v1,64d0 <L8010CBFC+0x284>
    64c4:	03207825 	move	t7,t9
    64c8:	10000002 	b	64d4 <L8010CBFC+0x288>
    64cc:	00601025 	move	v0,v1
    64d0:	00031023 	negu	v0,v1
    64d4:	004a001a 	div	zero,v0,t2
    64d8:	3c090000 	lui	t1,0x0
    64dc:	85290000 	lh	t1,0(t1)
    64e0:	84ab0004 	lh	t3,4(a1)
    64e4:	00002012 	mflo	a0
    64e8:	00042400 	sll	a0,a0,0x10
    64ec:	15400002 	bnez	t2,64f8 <L8010CBFC+0x2ac>
    64f0:	00000000 	nop
    64f4:	0007000d 	break	0x7
    64f8:	2401ffff 	li	at,-1
    64fc:	15410004 	bne	t2,at,6510 <L8010CBFC+0x2c4>
    6500:	3c018000 	lui	at,0x8000
    6504:	14410002 	bne	v0,at,6510 <L8010CBFC+0x2c4>
    6508:	00000000 	nop
    650c:	0006000d 	break	0x6
    6510:	012b1823 	subu	v1,t1,t3
    6514:	00042403 	sra	a0,a0,0x10
    6518:	04600003 	bltz	v1,6528 <L8010CBFC+0x2dc>
    651c:	afab0064 	sw	t3,100(sp)
    6520:	10000002 	b	652c <L8010CBFC+0x2e0>
    6524:	00601025 	move	v0,v1
    6528:	00031023 	negu	v0,v1
    652c:	3c0b0000 	lui	t3,0x0
    6530:	856b0000 	lh	t3,0(t3)
    6534:	8fb8007c 	lw	t8,124(sp)
    6538:	0178082a 	slt	at,t3,t8
    653c:	54200006 	bnezl	at,6558 <L8010CBFC+0x30c>
    6540:	00c8c821 	addu	t9,a2,t0
    6544:	00c87023 	subu	t6,a2,t0
    6548:	3c010000 	lui	at,0x0
    654c:	10000004 	b	6560 <L8010CBFC+0x314>
    6550:	a42e0000 	sh	t6,0(at)
    6554:	00c8c821 	addu	t9,a2,t0
    6558:	3c010000 	lui	at,0x0
    655c:	a4390000 	sh	t9,0(at)
    6560:	3c0c0000 	lui	t4,0x0
    6564:	858c0000 	lh	t4,0(t4)
    6568:	8faf006c 	lw	t7,108(sp)
    656c:	018f082a 	slt	at,t4,t7
    6570:	54200006 	bnezl	at,658c <L8010CBFC+0x340>
    6574:	00e47021 	addu	t6,a3,a0
    6578:	00e4c023 	subu	t8,a3,a0
    657c:	3c010000 	lui	at,0x0
    6580:	10000004 	b	6594 <L8010CBFC+0x348>
    6584:	a4380000 	sh	t8,0(at)
    6588:	00e47021 	addu	t6,a3,a0
    658c:	3c010000 	lui	at,0x0
    6590:	a42e0000 	sh	t6,0(at)
    6594:	3c0d0000 	lui	t5,0x0
    6598:	85ad0000 	lh	t5,0(t5)
    659c:	8fb90064 	lw	t9,100(sp)
    65a0:	01b9082a 	slt	at,t5,t9
    65a4:	14200012 	bnez	at,65f0 <L8010CBFC+0x3a4>
    65a8:	00000000 	nop
    65ac:	004a001a 	div	zero,v0,t2
    65b0:	15400002 	bnez	t2,65bc <L8010CBFC+0x370>
    65b4:	00000000 	nop
    65b8:	0007000d 	break	0x7
    65bc:	2401ffff 	li	at,-1
    65c0:	15410004 	bne	t2,at,65d4 <L8010CBFC+0x388>
    65c4:	3c018000 	lui	at,0x8000
    65c8:	14410002 	bne	v0,at,65d4 <L8010CBFC+0x388>
    65cc:	00000000 	nop
    65d0:	0006000d 	break	0x6
    65d4:	00007812 	mflo	t7
    65d8:	000fc400 	sll	t8,t7,0x10
    65dc:	00187403 	sra	t6,t8,0x10
    65e0:	012ec823 	subu	t9,t1,t6
    65e4:	3c010000 	lui	at,0x0
    65e8:	10000011 	b	6630 <L8010CBFC+0x3e4>
    65ec:	a4390000 	sh	t9,0(at)
    65f0:	004a001a 	div	zero,v0,t2
    65f4:	15400002 	bnez	t2,6600 <L8010CBFC+0x3b4>
    65f8:	00000000 	nop
    65fc:	0007000d 	break	0x7
    6600:	2401ffff 	li	at,-1
    6604:	15410004 	bne	t2,at,6618 <L8010CBFC+0x3cc>
    6608:	3c018000 	lui	at,0x8000
    660c:	14410002 	bne	v0,at,6618 <L8010CBFC+0x3cc>
    6610:	00000000 	nop
    6614:	0006000d 	break	0x6
    6618:	00007812 	mflo	t7
    661c:	000fc400 	sll	t8,t7,0x10
    6620:	00187403 	sra	t6,t8,0x10
    6624:	012ec821 	addu	t9,t1,t6
    6628:	3c010000 	lui	at,0x0
    662c:	a4390000 	sh	t9,0(at)
    6630:	8faf0088 	lw	t7,136(sp)
    6634:	3c180000 	lui	t8,0x0
    6638:	27180000 	addiu	t8,t8,0
    663c:	3c060000 	lui	a2,0x0
    6640:	01f82821 	addu	a1,t7,t8
    6644:	84a20000 	lh	v0,0(a1)
    6648:	84c60000 	lh	a2,0(a2)
    664c:	afa2005c 	sw	v0,92(sp)
    6650:	00c21823 	subu	v1,a2,v0
    6654:	04620004 	bltzl	v1,6668 <L8010CBFC+0x41c>
    6658:	00031023 	negu	v0,v1
    665c:	10000002 	b	6668 <L8010CBFC+0x41c>
    6660:	00601025 	move	v0,v1
    6664:	00031023 	negu	v0,v1
    6668:	004a001a 	div	zero,v0,t2
    666c:	3c070000 	lui	a3,0x0
    6670:	84e70000 	lh	a3,0(a3)
    6674:	84a40002 	lh	a0,2(a1)
    6678:	00004012 	mflo	t0
    667c:	00084400 	sll	t0,t0,0x10
    6680:	15400002 	bnez	t2,668c <L8010CBFC+0x440>
    6684:	00000000 	nop
    6688:	0007000d 	break	0x7
    668c:	2401ffff 	li	at,-1
    6690:	15410004 	bne	t2,at,66a4 <L8010CBFC+0x458>
    6694:	3c018000 	lui	at,0x8000
    6698:	14410002 	bne	v0,at,66a4 <L8010CBFC+0x458>
    669c:	00000000 	nop
    66a0:	0006000d 	break	0x6
    66a4:	00e41823 	subu	v1,a3,a0
    66a8:	00084403 	sra	t0,t0,0x10
    66ac:	04600003 	bltz	v1,66bc <L8010CBFC+0x470>
    66b0:	afa40054 	sw	a0,84(sp)
    66b4:	10000002 	b	66c0 <L8010CBFC+0x474>
    66b8:	00601025 	move	v0,v1
    66bc:	00031023 	negu	v0,v1
    66c0:	004a001a 	div	zero,v0,t2
    66c4:	3c090000 	lui	t1,0x0
    66c8:	85290000 	lh	t1,0(t1)
    66cc:	84bf0004 	lh	ra,4(a1)
    66d0:	00002012 	mflo	a0
    66d4:	00042400 	sll	a0,a0,0x10
    66d8:	15400002 	bnez	t2,66e4 <L8010CBFC+0x498>
    66dc:	00000000 	nop
    66e0:	0007000d 	break	0x7
    66e4:	2401ffff 	li	at,-1
    66e8:	15410004 	bne	t2,at,66fc <L8010CBFC+0x4b0>
    66ec:	3c018000 	lui	at,0x8000
    66f0:	14410002 	bne	v0,at,66fc <L8010CBFC+0x4b0>
    66f4:	00000000 	nop
    66f8:	0006000d 	break	0x6
    66fc:	013f1823 	subu	v1,t1,ra
    6700:	04600003 	bltz	v1,6710 <L8010CBFC+0x4c4>
    6704:	00042403 	sra	a0,a0,0x10
    6708:	10000002 	b	6714 <L8010CBFC+0x4c8>
    670c:	00601025 	move	v0,v1
    6710:	00031023 	negu	v0,v1
    6714:	8fae005c 	lw	t6,92(sp)
    6718:	00ce082a 	slt	at,a2,t6
    671c:	54200006 	bnezl	at,6738 <L8010CBFC+0x4ec>
    6720:	00c87821 	addu	t7,a2,t0
    6724:	00c8c823 	subu	t9,a2,t0
    6728:	3c010000 	lui	at,0x0
    672c:	10000004 	b	6740 <L8010CBFC+0x4f4>
    6730:	a4390000 	sh	t9,0(at)
    6734:	00c87821 	addu	t7,a2,t0
    6738:	3c010000 	lui	at,0x0
    673c:	a42f0000 	sh	t7,0(at)
    6740:	8fb80054 	lw	t8,84(sp)
    6744:	00f8082a 	slt	at,a3,t8
    6748:	54200006 	bnezl	at,6764 <L8010CBFC+0x518>
    674c:	00e4c821 	addu	t9,a3,a0
    6750:	00e47023 	subu	t6,a3,a0
    6754:	3c010000 	lui	at,0x0
    6758:	10000004 	b	676c <L8010CBFC+0x520>
    675c:	a42e0000 	sh	t6,0(at)
    6760:	00e4c821 	addu	t9,a3,a0
    6764:	3c010000 	lui	at,0x0
    6768:	a4390000 	sh	t9,0(at)
    676c:	013f082a 	slt	at,t1,ra
    6770:	14200012 	bnez	at,67bc <L8010CBFC+0x570>
    6774:	00000000 	nop
    6778:	004a001a 	div	zero,v0,t2
    677c:	15400002 	bnez	t2,6788 <L8010CBFC+0x53c>
    6780:	00000000 	nop
    6784:	0007000d 	break	0x7
    6788:	2401ffff 	li	at,-1
    678c:	15410004 	bne	t2,at,67a0 <L8010CBFC+0x554>
    6790:	3c018000 	lui	at,0x8000
    6794:	14410002 	bne	v0,at,67a0 <L8010CBFC+0x554>
    6798:	00000000 	nop
    679c:	0006000d 	break	0x6
    67a0:	00007812 	mflo	t7
    67a4:	000fc400 	sll	t8,t7,0x10
    67a8:	00187403 	sra	t6,t8,0x10
    67ac:	012ec823 	subu	t9,t1,t6
    67b0:	3c010000 	lui	at,0x0
    67b4:	10000011 	b	67fc <L8010CBFC+0x5b0>
    67b8:	a4390000 	sh	t9,0(at)
    67bc:	004a001a 	div	zero,v0,t2
    67c0:	15400002 	bnez	t2,67cc <L8010CBFC+0x580>
    67c4:	00000000 	nop
    67c8:	0007000d 	break	0x7
    67cc:	2401ffff 	li	at,-1
    67d0:	15410004 	bne	t2,at,67e4 <L8010CBFC+0x598>
    67d4:	3c018000 	lui	at,0x8000
    67d8:	14410002 	bne	v0,at,67e4 <L8010CBFC+0x598>
    67dc:	00000000 	nop
    67e0:	0006000d 	break	0x6
    67e4:	00007812 	mflo	t7
    67e8:	000fc400 	sll	t8,t7,0x10
    67ec:	00187403 	sra	t6,t8,0x10
    67f0:	012ec821 	addu	t9,t1,t6
    67f4:	3c010000 	lui	at,0x0
    67f8:	a4390000 	sh	t9,0(at)
    67fc:	8faf0088 	lw	t7,136(sp)
    6800:	3c180000 	lui	t8,0x0
    6804:	27180000 	addiu	t8,t8,0
    6808:	01f82821 	addu	a1,t7,t8
    680c:	84a90000 	lh	t1,0(a1)
    6810:	01691823 	subu	v1,t3,t1
    6814:	04620004 	bltzl	v1,6828 <L8010CBFC+0x5dc>
    6818:	00031023 	negu	v0,v1
    681c:	10000002 	b	6828 <L8010CBFC+0x5dc>
    6820:	00601025 	move	v0,v1
    6824:	00031023 	negu	v0,v1
    6828:	004a001a 	div	zero,v0,t2
    682c:	84a60002 	lh	a2,2(a1)
    6830:	00004012 	mflo	t0
    6834:	00084400 	sll	t0,t0,0x10
    6838:	15400002 	bnez	t2,6844 <L8010CBFC+0x5f8>
    683c:	00000000 	nop
    6840:	0007000d 	break	0x7
    6844:	2401ffff 	li	at,-1
    6848:	15410004 	bne	t2,at,685c <L8010CBFC+0x610>
    684c:	3c018000 	lui	at,0x8000
    6850:	14410002 	bne	v0,at,685c <L8010CBFC+0x610>
    6854:	00000000 	nop
    6858:	0006000d 	break	0x6
    685c:	01861823 	subu	v1,t4,a2
    6860:	04600003 	bltz	v1,6870 <L8010CBFC+0x624>
    6864:	00084403 	sra	t0,t0,0x10
    6868:	10000002 	b	6874 <L8010CBFC+0x628>
    686c:	00601025 	move	v0,v1
    6870:	00031023 	negu	v0,v1
    6874:	004a001a 	div	zero,v0,t2
    6878:	84a70004 	lh	a3,4(a1)
    687c:	00002012 	mflo	a0
    6880:	00042400 	sll	a0,a0,0x10
    6884:	15400002 	bnez	t2,6890 <L8010CBFC+0x644>
    6888:	00000000 	nop
    688c:	0007000d 	break	0x7
    6890:	2401ffff 	li	at,-1
    6894:	15410004 	bne	t2,at,68a8 <L8010CBFC+0x65c>
    6898:	3c018000 	lui	at,0x8000
    689c:	14410002 	bne	v0,at,68a8 <L8010CBFC+0x65c>
    68a0:	00000000 	nop
    68a4:	0006000d 	break	0x6
    68a8:	01a71823 	subu	v1,t5,a3
    68ac:	04600003 	bltz	v1,68bc <L8010CBFC+0x670>
    68b0:	00042403 	sra	a0,a0,0x10
    68b4:	10000002 	b	68c0 <L8010CBFC+0x674>
    68b8:	00601025 	move	v0,v1
    68bc:	00031023 	negu	v0,v1
    68c0:	0169082a 	slt	at,t3,t1
    68c4:	54200006 	bnezl	at,68e0 <L8010CBFC+0x694>
    68c8:	0168c821 	addu	t9,t3,t0
    68cc:	01687023 	subu	t6,t3,t0
    68d0:	3c010000 	lui	at,0x0
    68d4:	10000004 	b	68e8 <L8010CBFC+0x69c>
    68d8:	a42e0000 	sh	t6,0(at)
    68dc:	0168c821 	addu	t9,t3,t0
    68e0:	3c010000 	lui	at,0x0
    68e4:	a4390000 	sh	t9,0(at)
    68e8:	0186082a 	slt	at,t4,a2
    68ec:	54200006 	bnezl	at,6908 <L8010CBFC+0x6bc>
    68f0:	0184c021 	addu	t8,t4,a0
    68f4:	01847823 	subu	t7,t4,a0
    68f8:	3c010000 	lui	at,0x0
    68fc:	10000004 	b	6910 <L8010CBFC+0x6c4>
    6900:	a42f0000 	sh	t7,0(at)
    6904:	0184c021 	addu	t8,t4,a0
    6908:	3c010000 	lui	at,0x0
    690c:	a4380000 	sh	t8,0(at)
    6910:	01a7082a 	slt	at,t5,a3
    6914:	14200012 	bnez	at,6960 <L8010CBFC+0x714>
    6918:	00000000 	nop
    691c:	004a001a 	div	zero,v0,t2
    6920:	15400002 	bnez	t2,692c <L8010CBFC+0x6e0>
    6924:	00000000 	nop
    6928:	0007000d 	break	0x7
    692c:	2401ffff 	li	at,-1
    6930:	15410004 	bne	t2,at,6944 <L8010CBFC+0x6f8>
    6934:	3c018000 	lui	at,0x8000
    6938:	14410002 	bne	v0,at,6944 <L8010CBFC+0x6f8>
    693c:	00000000 	nop
    6940:	0006000d 	break	0x6
    6944:	00007012 	mflo	t6
    6948:	000ecc00 	sll	t9,t6,0x10
    694c:	00197c03 	sra	t7,t9,0x10
    6950:	01afc023 	subu	t8,t5,t7
    6954:	3c010000 	lui	at,0x0
    6958:	10000011 	b	69a0 <L8010CBFC+0x754>
    695c:	a4380000 	sh	t8,0(at)
    6960:	004a001a 	div	zero,v0,t2
    6964:	15400002 	bnez	t2,6970 <L8010CBFC+0x724>
    6968:	00000000 	nop
    696c:	0007000d 	break	0x7
    6970:	2401ffff 	li	at,-1
    6974:	15410004 	bne	t2,at,6988 <L8010CBFC+0x73c>
    6978:	3c018000 	lui	at,0x8000
    697c:	14410002 	bne	v0,at,6988 <L8010CBFC+0x73c>
    6980:	00000000 	nop
    6984:	0006000d 	break	0x6
    6988:	00007012 	mflo	t6
    698c:	000ecc00 	sll	t9,t6,0x10
    6990:	00197c03 	sra	t7,t9,0x10
    6994:	01afc021 	addu	t8,t5,t7
    6998:	3c010000 	lui	at,0x0
    699c:	a4380000 	sh	t8,0(at)
    69a0:	254affff 	addiu	t2,t2,-1
    69a4:	000a5400 	sll	t2,t2,0x10
    69a8:	000a5403 	sra	t2,t2,0x10
    69ac:	3c010000 	lui	at,0x0
    69b0:	15400029 	bnez	t2,6a58 <L8010CBFC+0x80c>
    69b4:	a42a0000 	sh	t2,0(at)
    69b8:	8fae0080 	lw	t6,128(sp)
    69bc:	8fb90078 	lw	t9,120(sp)
    69c0:	3c010000 	lui	at,0x0
    69c4:	a42e0000 	sh	t6,0(at)
    69c8:	8faf0070 	lw	t7,112(sp)
    69cc:	3c010000 	lui	at,0x0
    69d0:	a4390000 	sh	t9,0(at)
    69d4:	8fb8007c 	lw	t8,124(sp)
    69d8:	3c010000 	lui	at,0x0
    69dc:	a42f0000 	sh	t7,0(at)
    69e0:	8fae006c 	lw	t6,108(sp)
    69e4:	3c010000 	lui	at,0x0
    69e8:	a4380000 	sh	t8,0(at)
    69ec:	8fb90064 	lw	t9,100(sp)
    69f0:	3c010000 	lui	at,0x0
    69f4:	a42e0000 	sh	t6,0(at)
    69f8:	8faf005c 	lw	t7,92(sp)
    69fc:	3c010000 	lui	at,0x0
    6a00:	a4390000 	sh	t9,0(at)
    6a04:	8fb80054 	lw	t8,84(sp)
    6a08:	3c010000 	lui	at,0x0
    6a0c:	a42f0000 	sh	t7,0(at)
    6a10:	3c010000 	lui	at,0x0
    6a14:	a4380000 	sh	t8,0(at)
    6a18:	3c010000 	lui	at,0x0
    6a1c:	a43f0000 	sh	ra,0(at)
    6a20:	3c010000 	lui	at,0x0
    6a24:	a4290000 	sh	t1,0(at)
    6a28:	3c010000 	lui	at,0x0
    6a2c:	3c0e0000 	lui	t6,0x0
    6a30:	85ce0000 	lh	t6,0(t6)
    6a34:	a4260000 	sh	a2,0(at)
    6a38:	3c010000 	lui	at,0x0
    6a3c:	a4270000 	sh	a3,0(at)
    6a40:	3c010000 	lui	at,0x0
    6a44:	39d90001 	xori	t9,t6,0x1
    6a48:	a4390000 	sh	t9,0(at)
    6a4c:	240a0003 	li	t2,3
    6a50:	3c010000 	lui	at,0x0
    6a54:	a42a0000 	sh	t2,0(at)
    6a58:	920f63e7 	lbu	t7,25575(s0)
    6a5c:	26217fff 	addiu	at,s1,32767
    6a60:	25f8ffff 	addiu	t8,t7,-1
    6a64:	a03863e8 	sb	t8,25576(at)
    6a68:	920e63e7 	lbu	t6,25575(s0)
    6a6c:	55c00034 	bnezl	t6,6b40 <L8010CBFC+0x8f4>
    6a70:	02402025 	move	a0,s2
    6a74:	0c000000 	jal	0 <func_801069B0>
    6a78:	00002025 	move	a0,zero
    6a7c:	92026304 	lbu	v0,25348(s0)
    6a80:	2401000d 	li	at,13
    6a84:	1441000f 	bne	v0,at,6ac4 <L8010CBFC+0x878>
    6a88:	3c040000 	lui	a0,0x0
    6a8c:	24840000 	addiu	a0,a0,0
    6a90:	0c000000 	jal	0 <func_801069B0>
    6a94:	960563ec 	lhu	a1,25580(s0)
    6a98:	02402025 	move	a0,s2
    6a9c:	0c000000 	jal	0 <func_801069B0>
    6aa0:	2405086f 	li	a1,2159
    6aa4:	26217fff 	addiu	at,s1,32767
    6aa8:	24190011 	li	t9,17
    6aac:	240f0003 	li	t7,3
    6ab0:	24180001 	li	t8,1
    6ab4:	a0396305 	sb	t9,25349(at)
    6ab8:	a02f62fe 	sb	t7,25342(at)
    6abc:	1000001f 	b	6b3c <L8010CBFC+0x8f0>
    6ac0:	a03863e8 	sb	t8,25576(at)
    6ac4:	2401001c 	li	at,28
    6ac8:	14410016 	bne	v0,at,6b24 <L8010CBFC+0x8d8>
    6acc:	00000000 	nop
    6ad0:	960e63ec 	lhu	t6,25580(s0)
    6ad4:	29c10006 	slti	at,t6,6
    6ad8:	1420000b 	bnez	at,6b08 <L8010CBFC+0x8bc>
    6adc:	02402025 	move	a0,s2
    6ae0:	0c000000 	jal	0 <func_801069B0>
    6ae4:	2405086f 	li	a1,2159
    6ae8:	26217fff 	addiu	at,s1,32767
    6aec:	24190011 	li	t9,17
    6af0:	240f0003 	li	t7,3
    6af4:	24180001 	li	t8,1
    6af8:	a0396305 	sb	t9,25349(at)
    6afc:	a02f62fe 	sb	t7,25342(at)
    6b00:	1000000e 	b	6b3c <L8010CBFC+0x8f0>
    6b04:	a03863e8 	sb	t8,25576(at)
    6b08:	0c000000 	jal	0 <func_801069B0>
    6b0c:	02402025 	move	a0,s2
    6b10:	3c010001 	lui	at,0x1
    6b14:	00320821 	addu	at,at,s2
    6b18:	240e0004 	li	t6,4
    6b1c:	10000007 	b	6b3c <L8010CBFC+0x8f0>
    6b20:	a42e04c6 	sh	t6,1222(at)
    6b24:	0c000000 	jal	0 <func_801069B0>
    6b28:	02402025 	move	a0,s2
    6b2c:	3c010001 	lui	at,0x1
    6b30:	00320821 	addu	at,at,s2
    6b34:	24190003 	li	t9,3
    6b38:	a43904c6 	sh	t9,1222(at)
    6b3c:	02402025 	move	a0,s2
    6b40:	0c000000 	jal	0 <func_801069B0>
    6b44:	27a50140 	addiu	a1,sp,320
    6b48:	100005dd 	b	82c0 <L8010EC60+0x10>
    6b4c:	92026304 	lbu	v0,25348(s0)

00006b50 <L8010D500>:
    6b50:	02402025 	move	a0,s2
    6b54:	0c000000 	jal	0 <func_801069B0>
    6b58:	27a50140 	addiu	a1,sp,320

00006b5c <L8010D50C>:
    6b5c:	920f63e7 	lbu	t7,25575(s0)
    6b60:	26217fff 	addiu	at,s1,32767
    6b64:	25f8ffff 	addiu	t8,t7,-1
    6b68:	a03863e8 	sb	t8,25576(at)
    6b6c:	920e63e7 	lbu	t6,25575(s0)
    6b70:	15c0001a 	bnez	t6,6bdc <L8010D50C+0x80>
    6b74:	3c090000 	lui	t1,0x0
    6b78:	25290000 	addiu	t1,t1,0
    6b7c:	8d2f0000 	lw	t7,0(t1)
    6b80:	24190001 	li	t9,1
    6b84:	2401001d 	li	at,29
    6b88:	a5f90f7a 	sh	t9,3962(t7)
    6b8c:	92186304 	lbu	t8,25348(s0)
    6b90:	1701000c 	bne	t8,at,6bc4 <L8010D50C+0x68>
    6b94:	3c040000 	lui	a0,0x0
    6b98:	0c000000 	jal	0 <func_801069B0>
    6b9c:	24840000 	addiu	a0,a0,0
    6ba0:	02402025 	move	a0,s2
    6ba4:	0c000000 	jal	0 <func_801069B0>
    6ba8:	2405088b 	li	a1,2187
    6bac:	0c000000 	jal	0 <func_801069B0>
    6bb0:	02402025 	move	a0,s2
    6bb4:	240e001e 	li	t6,30
    6bb8:	26217fff 	addiu	at,s1,32767
    6bbc:	10000004 	b	6bd0 <L8010D50C+0x74>
    6bc0:	a02e6305 	sb	t6,25349(at)
    6bc4:	24190010 	li	t9,16
    6bc8:	26217fff 	addiu	at,s1,32767
    6bcc:	a0396305 	sb	t9,25349(at)
    6bd0:	3c040000 	lui	a0,0x0
    6bd4:	0c000000 	jal	0 <func_801069B0>
    6bd8:	24840000 	addiu	a0,a0,0
    6bdc:	100005b8 	b	82c0 <L8010EC60+0x10>
    6be0:	92026304 	lbu	v0,25348(s0)

00006be4 <L8010D594>:
    6be4:	3c090000 	lui	t1,0x0
    6be8:	25290000 	addiu	t1,t1,0
    6bec:	00003825 	move	a3,zero
    6bf0:	00001825 	move	v1,zero
    6bf4:	8d280000 	lw	t0,0(t1)
    6bf8:	00037840 	sll	t7,v1,0x1
    6bfc:	24e70001 	addiu	a3,a3,1
    6c00:	010f1021 	addu	v0,t0,t7
    6c04:	84580f6e 	lh	t8,3950(v0)
    6c08:	850e0f7a 	lh	t6,3962(t0)
    6c0c:	30e7ffff 	andi	a3,a3,0xffff
    6c10:	28e10005 	slti	at,a3,5
    6c14:	030ec821 	addu	t9,t8,t6
    6c18:	00e01825 	move	v1,a3
    6c1c:	1420fff5 	bnez	at,6bf4 <L8010D594+0x10>
    6c20:	a4590f6e 	sh	t9,3950(v0)
    6c24:	8d280000 	lw	t0,0(t1)
    6c28:	85020f7a 	lh	v0,3962(t0)
    6c2c:	00427821 	addu	t7,v0,v0
    6c30:	a50f0f7a 	sh	t7,3962(t0)
    6c34:	8d380000 	lw	t8,0(t1)
    6c38:	870e0f7a 	lh	t6,3962(t8)
    6c3c:	29c10226 	slti	at,t6,550
    6c40:	14200018 	bnez	at,6ca4 <L8010D594+0xc0>
    6c44:	241900ff 	li	t9,255
    6c48:	3c010000 	lui	at,0x0
    6c4c:	a0390000 	sb	t9,0(at)
    6c50:	3c010000 	lui	at,0x0
    6c54:	a4200000 	sh	zero,0(at)
    6c58:	a4200000 	sh	zero,0(at)
    6c5c:	a4200000 	sh	zero,0(at)
    6c60:	a4200000 	sh	zero,0(at)
    6c64:	a4200000 	sh	zero,0(at)
    6c68:	3c010000 	lui	at,0x0
    6c6c:	a4200000 	sh	zero,0(at)
    6c70:	a4200000 	sh	zero,0(at)
    6c74:	a4200000 	sh	zero,0(at)
    6c78:	a4200000 	sh	zero,0(at)
    6c7c:	920f6304 	lbu	t7,25348(s0)
    6c80:	2401001e 	li	at,30
    6c84:	15e10004 	bne	t7,at,6c98 <L8010D594+0xb4>
    6c88:	2418001f 	li	t8,31
    6c8c:	26217fff 	addiu	at,s1,32767
    6c90:	10000004 	b	6ca4 <L8010D594+0xc0>
    6c94:	a0386305 	sb	t8,25349(at)
    6c98:	240e0009 	li	t6,9
    6c9c:	26217fff 	addiu	at,s1,32767
    6ca0:	a02e6305 	sb	t6,25349(at)
    6ca4:	10000586 	b	82c0 <L8010EC60+0x10>
    6ca8:	92026304 	lbu	v0,25348(s0)

00006cac <L8010D65C>:
    6cac:	921963e7 	lbu	t9,25575(s0)
    6cb0:	26217fff 	addiu	at,s1,32767
    6cb4:	272fffff 	addiu	t7,t9,-1
    6cb8:	a02f63e8 	sb	t7,25576(at)
    6cbc:	921863e7 	lbu	t8,25575(s0)
    6cc0:	1700003b 	bnez	t8,6db0 <L8010D65C+0x104>
    6cc4:	00000000 	nop
    6cc8:	0c000000 	jal	0 <func_801069B0>
    6ccc:	00002025 	move	a0,zero
    6cd0:	3c040000 	lui	a0,0x0
    6cd4:	0c000000 	jal	0 <func_801069B0>
    6cd8:	24840000 	addiu	a0,a0,0
    6cdc:	3c040000 	lui	a0,0x0
    6ce0:	0c000000 	jal	0 <func_801069B0>
    6ce4:	24840000 	addiu	a0,a0,0
    6ce8:	3c040000 	lui	a0,0x0
    6cec:	0c000000 	jal	0 <func_801069B0>
    6cf0:	24840000 	addiu	a0,a0,0
    6cf4:	3c040000 	lui	a0,0x0
    6cf8:	0c000000 	jal	0 <func_801069B0>
    6cfc:	24840000 	addiu	a0,a0,0
    6d00:	3c040000 	lui	a0,0x0
    6d04:	0c000000 	jal	0 <func_801069B0>
    6d08:	24840000 	addiu	a0,a0,0
    6d0c:	0c000000 	jal	0 <func_801069B0>
    6d10:	02402025 	move	a0,s2
    6d14:	240e0012 	li	t6,18
    6d18:	26217fff 	addiu	at,s1,32767
    6d1c:	0c000000 	jal	0 <func_801069B0>
    6d20:	a02e6305 	sb	t6,25349(at)
    6d24:	3c080000 	lui	t0,0x0
    6d28:	26217fff 	addiu	at,s1,32767
    6d2c:	ac2262b9 	sw	v0,25273(at)
    6d30:	25080000 	addiu	t0,t0,0
    6d34:	a5000000 	sh	zero,0(t0)
    6d38:	8e0f62b8 	lw	t7,25272(s0)
    6d3c:	85190000 	lh	t9,0(t0)
    6d40:	0c000000 	jal	0 <func_801069B0>
    6d44:	a1f90002 	sb	t9,2(t7)
    6d48:	960363ec 	lhu	v1,25580(s0)
    6d4c:	28610006 	slti	at,v1,6
    6d50:	14200017 	bnez	at,6db0 <L8010D65C+0x104>
    6d54:	2861000d 	slti	at,v1,13
    6d58:	10200015 	beqz	at,6db0 <L8010D65C+0x104>
    6d5c:	00000000 	nop
    6d60:	8fa80148 	lw	t0,328(sp)
    6d64:	00031040 	sll	v0,v1,0x1
    6d68:	3c180000 	lui	t8,0x0
    6d6c:	c5040028 	lwc1	$f4,40(t0)
    6d70:	8d070024 	lw	a3,36(t0)
    6d74:	0302c021 	addu	t8,t8,v0
    6d78:	e7a40010 	swc1	$f4,16(sp)
    6d7c:	c506002c 	lwc1	$f6,44(t0)
    6d80:	87180000 	lh	t8,0(t8)
    6d84:	3c060000 	lui	a2,0x0
    6d88:	00c23021 	addu	a2,a2,v0
    6d8c:	84c60000 	lh	a2,0(a2)
    6d90:	afa00020 	sw	zero,32(sp)
    6d94:	afa0001c 	sw	zero,28(sp)
    6d98:	afa00018 	sw	zero,24(sp)
    6d9c:	26441c24 	addiu	a0,s2,7204
    6da0:	02402825 	move	a1,s2
    6da4:	e7a60014 	swc1	$f6,20(sp)
    6da8:	0c000000 	jal	0 <func_801069B0>
    6dac:	afb80024 	sw	t8,36(sp)
    6db0:	10000543 	b	82c0 <L8010EC60+0x10>
    6db4:	92026304 	lbu	v0,25348(s0)

00006db8 <L8010D768>:
    6db8:	02402025 	move	a0,s2
    6dbc:	0c000000 	jal	0 <func_801069B0>
    6dc0:	27a50140 	addiu	a1,sp,320
    6dc4:	0c000000 	jal	0 <func_801069B0>
    6dc8:	24040001 	li	a0,1
    6dcc:	0c000000 	jal	0 <func_801069B0>
    6dd0:	24040001 	li	a0,1
    6dd4:	960463ec 	lhu	a0,25580(s0)
    6dd8:	24050001 	li	a1,1
    6ddc:	24840001 	addiu	a0,a0,1
    6de0:	00042600 	sll	a0,a0,0x18
    6de4:	0c000000 	jal	0 <func_801069B0>
    6de8:	00042603 	sra	a0,a0,0x18
    6dec:	960263ec 	lhu	v0,25580(s0)
    6df0:	2405000c 	li	a1,12
    6df4:	10a20007 	beq	a1,v0,6e14 <L8010D768+0x5c>
    6df8:	00027040 	sll	t6,v0,0x1
    6dfc:	3c040000 	lui	a0,0x0
    6e00:	008e2021 	addu	a0,a0,t6
    6e04:	0c000000 	jal	0 <func_801069B0>
    6e08:	94840000 	lhu	a0,0(a0)
    6e0c:	0c000000 	jal	0 <func_801069B0>
    6e10:	24040020 	li	a0,32
    6e14:	3c010001 	lui	at,0x1
    6e18:	00320821 	addu	at,at,s2
    6e1c:	24190001 	li	t9,1
    6e20:	a43904c6 	sh	t9,1222(at)
    6e24:	960263f0 	lhu	v0,25584(s0)
    6e28:	24010001 	li	at,1
    6e2c:	14410004 	bne	v0,at,6e40 <L8010D768+0x88>
    6e30:	240f0029 	li	t7,41
    6e34:	26217fff 	addiu	at,s1,32767
    6e38:	a42f63f1 	sh	t7,25585(at)
    6e3c:	960263f0 	lhu	v0,25584(s0)
    6e40:	24010030 	li	at,48
    6e44:	14410003 	bne	v0,at,6e54 <L8010D768+0x9c>
    6e48:	24180031 	li	t8,49
    6e4c:	26217fff 	addiu	at,s1,32767
    6e50:	a43863f1 	sh	t8,25585(at)
    6e54:	3c080000 	lui	t0,0x0
    6e58:	25080000 	addiu	t0,t0,0
    6e5c:	a5000000 	sh	zero,0(t0)
    6e60:	240e0013 	li	t6,19
    6e64:	26217fff 	addiu	at,s1,32767
    6e68:	a02e6305 	sb	t6,25349(at)
    6e6c:	10000514 	b	82c0 <L8010EC60+0x10>
    6e70:	92026304 	lbu	v0,25348(s0)

00006e74 <L8010D824>:
    6e74:	921963e7 	lbu	t9,25575(s0)
    6e78:	26217fff 	addiu	at,s1,32767
    6e7c:	272fffff 	addiu	t7,t9,-1
    6e80:	a02f63e8 	sb	t7,25576(at)
    6e84:	921863e7 	lbu	t8,25575(s0)
    6e88:	17000035 	bnez	t8,6f60 <L8010D824+0xec>
    6e8c:	3c040000 	lui	a0,0x0
    6e90:	24840000 	addiu	a0,a0,0
    6e94:	960563f0 	lhu	a1,25584(s0)
    6e98:	0c000000 	jal	0 <func_801069B0>
    6e9c:	24060016 	li	a2,22
    6ea0:	960263f0 	lhu	v0,25584(s0)
    6ea4:	28410008 	slti	at,v0,8
    6ea8:	50200006 	beqzl	at,6ec4 <L8010D824+0x50>
    6eac:	24010009 	li	at,9
    6eb0:	0c000000 	jal	0 <func_801069B0>
    6eb4:	24040004 	li	a0,4
    6eb8:	10000019 	b	6f20 <L8010D824+0xac>
    6ebc:	960563f0 	lhu	a1,25584(s0)
    6ec0:	24010009 	li	at,9
    6ec4:	54410006 	bnel	v0,at,6ee0 <L8010D824+0x6c>
    6ec8:	2401000a 	li	at,10
    6ecc:	0c000000 	jal	0 <func_801069B0>
    6ed0:	24040002 	li	a0,2
    6ed4:	10000012 	b	6f20 <L8010D824+0xac>
    6ed8:	960563f0 	lhu	a1,25584(s0)
    6edc:	2401000a 	li	at,10
    6ee0:	54410006 	bnel	v0,at,6efc <L8010D824+0x88>
    6ee4:	2401000d 	li	at,13
    6ee8:	0c000000 	jal	0 <func_801069B0>
    6eec:	24040003 	li	a0,3
    6ef0:	1000000b 	b	6f20 <L8010D824+0xac>
    6ef4:	960563f0 	lhu	a1,25584(s0)
    6ef8:	2401000d 	li	at,13
    6efc:	14410005 	bne	v0,at,6f14 <L8010D824+0xa0>
    6f00:	00000000 	nop
    6f04:	0c000000 	jal	0 <func_801069B0>
    6f08:	24040005 	li	a0,5
    6f0c:	10000004 	b	6f20 <L8010D824+0xac>
    6f10:	960563f0 	lhu	a1,25584(s0)
    6f14:	0c000000 	jal	0 <func_801069B0>
    6f18:	24040001 	li	a0,1
    6f1c:	960563f0 	lhu	a1,25584(s0)
    6f20:	3c040000 	lui	a0,0x0
    6f24:	24840000 	addiu	a0,a0,0
    6f28:	0c000000 	jal	0 <func_801069B0>
    6f2c:	24a5fffe 	addiu	a1,a1,-2
    6f30:	960463f0 	lhu	a0,25584(s0)
    6f34:	24050002 	li	a1,2
    6f38:	2484ffff 	addiu	a0,a0,-1
    6f3c:	00042600 	sll	a0,a0,0x18
    6f40:	0c000000 	jal	0 <func_801069B0>
    6f44:	00042603 	sra	a0,a0,0x18
    6f48:	3c080000 	lui	t0,0x0
    6f4c:	25080000 	addiu	t0,t0,0
    6f50:	a5000000 	sh	zero,0(t0)
    6f54:	240e0019 	li	t6,25
    6f58:	26217fff 	addiu	at,s1,32767
    6f5c:	a02e6305 	sb	t6,25349(at)
    6f60:	02402025 	move	a0,s2
    6f64:	0c000000 	jal	0 <func_801069B0>
    6f68:	27a50140 	addiu	a1,sp,320
    6f6c:	100004d4 	b	82c0 <L8010EC60+0x10>
    6f70:	92026304 	lbu	v0,25348(s0)

00006f74 <L8010D924>:
    6f74:	960563ec 	lhu	a1,25580(s0)
    6f78:	02402025 	move	a0,s2
    6f7c:	24a50893 	addiu	a1,a1,2195
    6f80:	0c000000 	jal	0 <func_801069B0>
    6f84:	30a5ffff 	andi	a1,a1,0xffff
    6f88:	0c000000 	jal	0 <func_801069B0>
    6f8c:	02402025 	move	a0,s2
    6f90:	24190015 	li	t9,21
    6f94:	26217fff 	addiu	at,s1,32767
    6f98:	240f0014 	li	t7,20
    6f9c:	a0396305 	sb	t9,25349(at)
    6fa0:	a02f63e8 	sb	t7,25576(at)
    6fa4:	02402025 	move	a0,s2
    6fa8:	0c000000 	jal	0 <func_801069B0>
    6fac:	27a50140 	addiu	a1,sp,320
    6fb0:	100004c3 	b	82c0 <L8010EC60+0x10>
    6fb4:	92026304 	lbu	v0,25348(s0)

00006fb8 <L8010D968>:
    6fb8:	921863e7 	lbu	t8,25575(s0)
    6fbc:	26217fff 	addiu	at,s1,32767
    6fc0:	270effff 	addiu	t6,t8,-1
    6fc4:	a02e63e8 	sb	t6,25576(at)
    6fc8:	921963e7 	lbu	t9,25575(s0)
    6fcc:	17200003 	bnez	t9,6fdc <L8010D968+0x24>
    6fd0:	240f0016 	li	t7,22
    6fd4:	26217fff 	addiu	at,s1,32767
    6fd8:	a02f6305 	sb	t7,25349(at)
    6fdc:	02402025 	move	a0,s2
    6fe0:	0c000000 	jal	0 <func_801069B0>
    6fe4:	27a50140 	addiu	a1,sp,320
    6fe8:	100004b5 	b	82c0 <L8010EC60+0x10>
    6fec:	92026304 	lbu	v0,25348(s0)

00006ff0 <L8010D9A0>:
    6ff0:	0c000000 	jal	0 <func_801069B0>
    6ff4:	00002025 	move	a0,zero
    6ff8:	0c000000 	jal	0 <func_801069B0>
    6ffc:	00000000 	nop
    7000:	24180017 	li	t8,23
    7004:	26217fff 	addiu	at,s1,32767
    7008:	240e0002 	li	t6,2
    700c:	a0386305 	sb	t8,25349(at)
    7010:	a02e63e8 	sb	t6,25576(at)
    7014:	02402025 	move	a0,s2
    7018:	0c000000 	jal	0 <func_801069B0>
    701c:	27a50140 	addiu	a1,sp,320
    7020:	100004a7 	b	82c0 <L8010EC60+0x10>
    7024:	92026304 	lbu	v0,25348(s0)

00007028 <L8010D9D8>:
    7028:	921963e7 	lbu	t9,25575(s0)
    702c:	26217fff 	addiu	at,s1,32767
    7030:	272fffff 	addiu	t7,t9,-1
    7034:	a02f63e8 	sb	t7,25576(at)
    7038:	921863e7 	lbu	t8,25575(s0)
    703c:	17000086 	bnez	t8,7258 <L8010D9D8+0x230>
    7040:	00000000 	nop
    7044:	960363ec 	lhu	v1,25580(s0)
    7048:	28610006 	slti	at,v1,6
    704c:	1020002a 	beqz	at,70f8 <L8010D9D8+0xd0>
    7050:	00000000 	nop
    7054:	960263f0 	lhu	v0,25584(s0)
    7058:	2841000f 	slti	at,v0,15
    705c:	14200003 	bnez	at,706c <L8010D9D8+0x44>
    7060:	28410015 	slti	at,v0,21
    7064:	14200024 	bnez	at,70f8 <L8010D9D8+0xd0>
    7068:	00000000 	nop
    706c:	860e640c 	lh	t6,25612(s0)
    7070:	15c00005 	bnez	t6,7088 <L8010D9D8+0x60>
    7074:	3c190001 	lui	t9,0x1
    7078:	0332c821 	addu	t9,t9,s2
    707c:	93390759 	lbu	t9,1881(t9)
    7080:	24010003 	li	at,3
    7084:	17210009 	bne	t9,at,70ac <L8010D9D8+0x84>
    7088:	02402025 	move	a0,s2
    708c:	2405088c 	li	a1,2188
    7090:	0c000000 	jal	0 <func_801069B0>
    7094:	00003025 	move	a2,zero
    7098:	3c010001 	lui	at,0x1
    709c:	00320821 	addu	at,at,s2
    70a0:	240f0004 	li	t7,4
    70a4:	1000006c 	b	7258 <L8010D9D8+0x230>
    70a8:	a42f04c6 	sh	t7,1222(at)
    70ac:	3c180000 	lui	t8,0x0
    70b0:	971813fa 	lhu	t8,5114(t8)
    70b4:	24010001 	li	at,1
    70b8:	330e000f 	andi	t6,t8,0xf
    70bc:	11c1000a 	beq	t6,at,70e8 <L8010D9D8+0xc0>
    70c0:	2465088d 	addiu	a1,v1,2189
    70c4:	30a5ffff 	andi	a1,a1,0xffff
    70c8:	02402025 	move	a0,s2
    70cc:	0c000000 	jal	0 <func_801069B0>
    70d0:	00003025 	move	a2,zero
    70d4:	3c010001 	lui	at,0x1
    70d8:	00320821 	addu	at,at,s2
    70dc:	24190001 	li	t9,1
    70e0:	1000005d 	b	7258 <L8010D9D8+0x230>
    70e4:	a43904c6 	sh	t9,1222(at)
    70e8:	0c000000 	jal	0 <func_801069B0>
    70ec:	02402025 	move	a0,s2
    70f0:	10000059 	b	7258 <L8010D9D8+0x230>
    70f4:	00000000 	nop
    70f8:	0c000000 	jal	0 <func_801069B0>
    70fc:	02402025 	move	a0,s2
    7100:	960f63ec 	lhu	t7,25580(s0)
    7104:	24010007 	li	at,7
    7108:	15e10005 	bne	t7,at,7120 <L8010D9D8+0xf8>
    710c:	3c090000 	lui	t1,0x0
    7110:	25290000 	addiu	t1,t1,0
    7114:	8d2e0000 	lw	t6,0(t1)
    7118:	24180001 	li	t8,1
    711c:	a5d805be 	sh	t8,1470(t6)
    7120:	3c040000 	lui	a0,0x0
    7124:	0c000000 	jal	0 <func_801069B0>
    7128:	24840000 	addiu	a0,a0,0
    712c:	3c040000 	lui	a0,0x0
    7130:	24840000 	addiu	a0,a0,0
    7134:	960563ec 	lhu	a1,25580(s0)
    7138:	0c000000 	jal	0 <func_801069B0>
    713c:	960663f0 	lhu	a2,25584(s0)
    7140:	960263f0 	lhu	v0,25584(s0)
    7144:	24010029 	li	at,41
    7148:	1441000c 	bne	v0,at,717c <L8010D9D8+0x154>
    714c:	3c010001 	lui	at,0x1
    7150:	00320821 	addu	at,at,s2
    7154:	24190001 	li	t9,1
    7158:	a43904c6 	sh	t9,1222(at)
    715c:	960f63ec 	lhu	t7,25580(s0)
    7160:	2405000c 	li	a1,12
    7164:	14af0034 	bne	a1,t7,7238 <L8010D9D8+0x210>
    7168:	3c010001 	lui	at,0x1
    716c:	00320821 	addu	at,at,s2
    7170:	2418000b 	li	t8,11
    7174:	10000030 	b	7238 <L8010D9D8+0x210>
    7178:	a43804c6 	sh	t8,1222(at)
    717c:	2841001c 	slti	at,v0,28
    7180:	14200017 	bnez	at,71e0 <L8010D9D8+0x1b8>
    7184:	3c040000 	lui	a0,0x0
    7188:	0c000000 	jal	0 <func_801069B0>
    718c:	24840000 	addiu	a0,a0,0
    7190:	960663f0 	lhu	a2,25584(s0)
    7194:	3c040000 	lui	a0,0x0
    7198:	24840000 	addiu	a0,a0,0
    719c:	2405001c 	li	a1,28
    71a0:	0c000000 	jal	0 <func_801069B0>
    71a4:	24c6ffe4 	addiu	a2,a2,-28
    71a8:	960363ec 	lhu	v1,25580(s0)
    71ac:	960e63f0 	lhu	t6,25584(s0)
    71b0:	2479001c 	addiu	t9,v1,28
    71b4:	15d90005 	bne	t6,t9,71cc <L8010D9D8+0x1a4>
    71b8:	3c010001 	lui	at,0x1
    71bc:	00320821 	addu	at,at,s2
    71c0:	240f0003 	li	t7,3
    71c4:	1000001c 	b	7238 <L8010D9D8+0x210>
    71c8:	a42f04c6 	sh	t7,1222(at)
    71cc:	3c010001 	lui	at,0x1
    71d0:	00320821 	addu	at,at,s2
    71d4:	2478ffff 	addiu	t8,v1,-1
    71d8:	10000017 	b	7238 <L8010D9D8+0x210>
    71dc:	a43804c6 	sh	t8,1222(at)
    71e0:	3c040000 	lui	a0,0x0
    71e4:	0c000000 	jal	0 <func_801069B0>
    71e8:	24840000 	addiu	a0,a0,0
    71ec:	960663f0 	lhu	a2,25584(s0)
    71f0:	3c040000 	lui	a0,0x0
    71f4:	24840000 	addiu	a0,a0,0
    71f8:	2405000f 	li	a1,15
    71fc:	0c000000 	jal	0 <func_801069B0>
    7200:	24c6fff1 	addiu	a2,a2,-15
    7204:	961963ec 	lhu	t9,25580(s0)
    7208:	960e63f0 	lhu	t6,25584(s0)
    720c:	272f000f 	addiu	t7,t9,15
    7210:	15cf0005 	bne	t6,t7,7228 <L8010D9D8+0x200>
    7214:	3c010001 	lui	at,0x1
    7218:	00320821 	addu	at,at,s2
    721c:	24180003 	li	t8,3
    7220:	10000005 	b	7238 <L8010D9D8+0x210>
    7224:	a43804c6 	sh	t8,1222(at)
    7228:	3c010001 	lui	at,0x1
    722c:	00320821 	addu	at,at,s2
    7230:	24190004 	li	t9,4
    7234:	a43904c6 	sh	t9,1222(at)
    7238:	3c040000 	lui	a0,0x0
    723c:	0c000000 	jal	0 <func_801069B0>
    7240:	24840000 	addiu	a0,a0,0
    7244:	8fae008c 	lw	t6,140(sp)
    7248:	3c040000 	lui	a0,0x0
    724c:	24840000 	addiu	a0,a0,0
    7250:	0c000000 	jal	0 <func_801069B0>
    7254:	95c504c6 	lhu	a1,1222(t6)
    7258:	10000419 	b	82c0 <L8010EC60+0x10>
    725c:	92026304 	lbu	v0,25348(s0)

00007260 <L8010DC10>:
    7260:	0c000000 	jal	0 <func_801069B0>
    7264:	00000000 	nop
    7268:	26217fff 	addiu	at,s1,32767
    726c:	ac2262b9 	sw	v0,25273(at)
    7270:	8e0762b8 	lw	a3,25272(s0)
    7274:	90ef0001 	lbu	t7,1(a3)
    7278:	15e00016 	bnez	t7,72d4 <L8010DC10+0x74>
    727c:	00000000 	nop
    7280:	92186304 	lbu	t8,25348(s0)
    7284:	24010013 	li	at,19
    7288:	17010004 	bne	t8,at,729c <L8010DC10+0x3c>
    728c:	24190014 	li	t9,20
    7290:	26217fff 	addiu	at,s1,32767
    7294:	10000004 	b	72a8 <L8010DC10+0x48>
    7298:	a0396305 	sb	t9,25349(at)
    729c:	240e001a 	li	t6,26
    72a0:	26217fff 	addiu	at,s1,32767
    72a4:	a02e6305 	sb	t6,25349(at)
    72a8:	8e0f62b8 	lw	t7,25272(s0)
    72ac:	3c060000 	lui	a2,0x0
    72b0:	3c040000 	lui	a0,0x0
    72b4:	91e30002 	lbu	v1,2(t7)
    72b8:	24840000 	addiu	a0,a0,0
    72bc:	00c33021 	addu	a2,a2,v1
    72c0:	90c60000 	lbu	a2,0(a2)
    72c4:	0c000000 	jal	0 <func_801069B0>
    72c8:	00602825 	move	a1,v1
    72cc:	10000023 	b	735c <L8010DD08+0x4>
    72d0:	02402025 	move	a0,s2
    72d4:	3c080000 	lui	t0,0x0
    72d8:	25080000 	addiu	t0,t0,0
    72dc:	85180000 	lh	t8,0(t0)
    72e0:	53000008 	beqzl	t8,7304 <L8010DC10+0xa4>
    72e4:	90e30002 	lbu	v1,2(a3)
    72e8:	90f90002 	lbu	t9,2(a3)
    72ec:	24010001 	li	at,1
    72f0:	57210004 	bnel	t9,at,7304 <L8010DC10+0xa4>
    72f4:	90e30002 	lbu	v1,2(a3)
    72f8:	a5000000 	sh	zero,0(t0)
    72fc:	8e0762b8 	lw	a3,25272(s0)
    7300:	90e30002 	lbu	v1,2(a3)
    7304:	50600015 	beqzl	v1,735c <L8010DD08+0x4>
    7308:	02402025 	move	a0,s2
    730c:	850e0000 	lh	t6,0(t0)
    7310:	25cf0001 	addiu	t7,t6,1
    7314:	546f0011 	bnel	v1,t7,735c <L8010DD08+0x4>
    7318:	02402025 	move	a0,s2
    731c:	90e20000 	lbu	v0,0(a3)
    7320:	3c010000 	lui	at,0x0
    7324:	00230821 	addu	at,at,v1
    7328:	a0220000 	sb	v0,0(at)
    732c:	26217fff 	addiu	at,s1,32767
    7330:	a0226411 	sb	v0,25617(at)
    7334:	8e1962b8 	lw	t9,25272(s0)
    7338:	3c010000 	lui	at,0x0
    733c:	241800ff 	li	t8,255
    7340:	932e0002 	lbu	t6,2(t9)
    7344:	002e0821 	addu	at,at,t6
    7348:	a0380000 	sb	t8,0(at)
    734c:	850f0000 	lh	t7,0(t0)
    7350:	25f90001 	addiu	t9,t7,1
    7354:	a5190000 	sh	t9,0(t0)

00007358 <L8010DD08>:
    7358:	02402025 	move	a0,s2
    735c:	0c000000 	jal	0 <func_801069B0>
    7360:	27a50140 	addiu	a1,sp,320
    7364:	100003d6 	b	82c0 <L8010EC60+0x10>
    7368:	92026304 	lbu	v0,25348(s0)

0000736c <L8010DD1C>:
    736c:	0c000000 	jal	0 <func_801069B0>
    7370:	00000000 	nop
    7374:	26217fff 	addiu	at,s1,32767
    7378:	ac2262b9 	sw	v0,25273(at)
    737c:	8e0762b8 	lw	a3,25272(s0)
    7380:	90e30002 	lbu	v1,2(a3)
    7384:	10600013 	beqz	v1,73d4 <L8010DD1C+0x68>
    7388:	3c080000 	lui	t0,0x0
    738c:	25080000 	addiu	t0,t0,0
    7390:	85050000 	lh	a1,0(t0)
    7394:	24b80001 	addiu	t8,a1,1
    7398:	5478000f 	bnel	v1,t8,73d8 <L8010DD1C+0x6c>
    739c:	90e60001 	lbu	a2,1(a3)
    73a0:	90ee0000 	lbu	t6,0(a3)
    73a4:	3c010000 	lui	at,0x0
    73a8:	00230821 	addu	at,at,v1
    73ac:	a02e0000 	sb	t6,0(at)
    73b0:	8e1962b8 	lw	t9,25272(s0)
    73b4:	3c010000 	lui	at,0x0
    73b8:	240f00ff 	li	t7,255
    73bc:	93380002 	lbu	t8,2(t9)
    73c0:	24ae0001 	addiu	t6,a1,1
    73c4:	00380821 	addu	at,at,t8
    73c8:	a02f0000 	sb	t7,0(at)
    73cc:	a50e0000 	sh	t6,0(t0)
    73d0:	8e0762b8 	lw	a3,25272(s0)
    73d4:	90e60001 	lbu	a2,1(a3)
    73d8:	28c1000d 	slti	at,a2,13
    73dc:	10200030 	beqz	at,74a0 <L8010DD1C+0x134>
    73e0:	3c040000 	lui	a0,0x0
    73e4:	24840000 	addiu	a0,a0,0
    73e8:	0c000000 	jal	0 <func_801069B0>
    73ec:	960563f0 	lhu	a1,25584(s0)
    73f0:	8e1962b8 	lw	t9,25272(s0)
    73f4:	26217fff 	addiu	at,s1,32767
    73f8:	2418001c 	li	t8,28
    73fc:	932f0001 	lbu	t7,1(t9)
    7400:	a0386305 	sb	t8,25349(at)
    7404:	3c050000 	lui	a1,0x0
    7408:	a42f63ed 	sh	t7,25581(at)
    740c:	8e0e62b8 	lw	t6,25272(s0)
    7410:	02402025 	move	a0,s2
    7414:	91d90001 	lbu	t9,1(t6)
    7418:	00197840 	sll	t7,t9,0x1
    741c:	00af2821 	addu	a1,a1,t7
    7420:	84a50000 	lh	a1,0(a1)
    7424:	24a5005a 	addiu	a1,a1,90
    7428:	0c000000 	jal	0 <func_801069B0>
    742c:	30a500ff 	andi	a1,a1,0xff
    7430:	3c040000 	lui	a0,0x0
    7434:	0c000000 	jal	0 <func_801069B0>
    7438:	24840000 	addiu	a0,a0,0
    743c:	8e1862b8 	lw	t8,25272(s0)
    7440:	3c040000 	lui	a0,0x0
    7444:	24840000 	addiu	a0,a0,0
    7448:	93050001 	lbu	a1,1(t8)
    744c:	0c000000 	jal	0 <func_801069B0>
    7450:	24a5005a 	addiu	a1,a1,90
    7454:	3c040000 	lui	a0,0x0
    7458:	0c000000 	jal	0 <func_801069B0>
    745c:	24840000 	addiu	a0,a0,0
    7460:	3c070000 	lui	a3,0x0
    7464:	240e0014 	li	t6,20
    7468:	26217fff 	addiu	at,s1,32767
    746c:	3c190000 	lui	t9,0x0
    7470:	24e70000 	addiu	a3,a3,0
    7474:	a02e63e8 	sb	t6,25576(at)
    7478:	27390000 	addiu	t9,t9,0
    747c:	3c050000 	lui	a1,0x0
    7480:	24a50000 	addiu	a1,a1,0
    7484:	afb90014 	sw	t9,20(sp)
    7488:	afa70010 	sw	a3,16(sp)
    748c:	24044807 	li	a0,18439
    7490:	0c000000 	jal	0 <func_801069B0>
    7494:	24060004 	li	a2,4
    7498:	10000014 	b	74ec <L8010DD1C+0x180>
    749c:	02402025 	move	a0,s2
    74a0:	240100ff 	li	at,255
    74a4:	14c10010 	bne	a2,at,74e8 <L8010DD1C+0x17c>
    74a8:	3c070000 	lui	a3,0x0
    74ac:	3c0f0000 	lui	t7,0x0
    74b0:	24e70000 	addiu	a3,a3,0
    74b4:	25ef0000 	addiu	t7,t7,0
    74b8:	3c050000 	lui	a1,0x0
    74bc:	24a50000 	addiu	a1,a1,0
    74c0:	afaf0014 	sw	t7,20(sp)
    74c4:	afa70010 	sw	a3,16(sp)
    74c8:	24044827 	li	a0,18471
    74cc:	0c000000 	jal	0 <func_801069B0>
    74d0:	24060004 	li	a2,4
    74d4:	26217fff 	addiu	at,s1,32767
    74d8:	2418000a 	li	t8,10
    74dc:	240e001d 	li	t6,29
    74e0:	a03863e8 	sb	t8,25576(at)
    74e4:	a02e6305 	sb	t6,25349(at)
    74e8:	02402025 	move	a0,s2
    74ec:	0c000000 	jal	0 <func_801069B0>
    74f0:	27a50140 	addiu	a1,sp,320
    74f4:	10000372 	b	82c0 <L8010EC60+0x10>
    74f8:	92026304 	lbu	v0,25348(s0)

000074fc <L8010DEAC>:
    74fc:	02402025 	move	a0,s2
    7500:	0c000000 	jal	0 <func_801069B0>
    7504:	27a50140 	addiu	a1,sp,320
    7508:	0c000000 	jal	0 <func_801069B0>
    750c:	02402025 	move	a0,s2
    7510:	10400003 	beqz	v0,7520 <L8010DEAC+0x24>
    7514:	02402025 	move	a0,s2
    7518:	0c000000 	jal	0 <func_801069B0>
    751c:	960563f0 	lhu	a1,25584(s0)
    7520:	10000367 	b	82c0 <L8010EC60+0x10>
    7524:	92026304 	lbu	v0,25348(s0)

00007528 <L8010DED8>:
    7528:	3c040000 	lui	a0,0x0
    752c:	0c000000 	jal	0 <func_801069B0>
    7530:	24840000 	addiu	a0,a0,0
    7534:	0c000000 	jal	0 <func_801069B0>
    7538:	24040001 	li	a0,1
    753c:	0c000000 	jal	0 <func_801069B0>
    7540:	24040001 	li	a0,1
    7544:	0c000000 	jal	0 <func_801069B0>
    7548:	00000000 	nop
    754c:	3c080000 	lui	t0,0x0
    7550:	26217fff 	addiu	at,s1,32767
    7554:	ac2262b9 	sw	v0,25273(at)
    7558:	25080000 	addiu	t0,t0,0
    755c:	a5000000 	sh	zero,0(t0)
    7560:	8e0f62b8 	lw	t7,25272(s0)
    7564:	85190000 	lh	t9,0(t0)
    7568:	3c090000 	lui	t1,0x0
    756c:	25290000 	addiu	t1,t1,0
    7570:	a1f90002 	sb	t9,2(t7)
    7574:	0c000000 	jal	0 <func_801069B0>
    7578:	a5200000 	sh	zero,0(t1)
    757c:	24180022 	li	t8,34
    7580:	26217fff 	addiu	at,s1,32767
    7584:	a0386305 	sb	t8,25349(at)
    7588:	02402025 	move	a0,s2
    758c:	0c000000 	jal	0 <func_801069B0>
    7590:	27a50140 	addiu	a1,sp,320
    7594:	1000034a 	b	82c0 <L8010EC60+0x10>
    7598:	92026304 	lbu	v0,25348(s0)

0000759c <L8010DF4C>:
    759c:	0c000000 	jal	0 <func_801069B0>
    75a0:	00000000 	nop
    75a4:	26217fff 	addiu	at,s1,32767
    75a8:	ac2262b9 	sw	v0,25273(at)
    75ac:	8e0e62b8 	lw	t6,25272(s0)
    75b0:	3c080000 	lui	t0,0x0
    75b4:	25080000 	addiu	t0,t0,0
    75b8:	3c040000 	lui	a0,0x0
    75bc:	24840000 	addiu	a0,a0,0
    75c0:	85050000 	lh	a1,0(t0)
    75c4:	0c000000 	jal	0 <func_801069B0>
    75c8:	91c60002 	lbu	a2,2(t6)
    75cc:	8e0762b8 	lw	a3,25272(s0)
    75d0:	3c080000 	lui	t0,0x0
    75d4:	25080000 	addiu	t0,t0,0
    75d8:	90e30002 	lbu	v1,2(a3)
    75dc:	5060003f 	beqzl	v1,76dc <L8010DF4C+0x140>
    75e0:	90e60001 	lbu	a2,1(a3)
    75e4:	85190000 	lh	t9,0(t0)
    75e8:	272f0001 	addiu	t7,t9,1
    75ec:	146f003a 	bne	v1,t7,76d8 <L8010DF4C+0x13c>
    75f0:	3c090000 	lui	t1,0x0
    75f4:	25290000 	addiu	t1,t1,0
    75f8:	85250000 	lh	a1,0(t1)
    75fc:	28a10008 	slti	at,a1,8
    7600:	14200013 	bnez	at,7650 <L8010DF4C+0xb4>
    7604:	24a2fff8 	addiu	v0,a1,-8
    7608:	3042ffff 	andi	v0,v0,0xffff
    760c:	00003825 	move	a3,zero
    7610:	3c180000 	lui	t8,0x0
    7614:	27180000 	addiu	t8,t8,0
    7618:	24e70001 	addiu	a3,a3,1
    761c:	00587021 	addu	t6,v0,t8
    7620:	91d90001 	lbu	t9,1(t6)
    7624:	30e7ffff 	andi	a3,a3,0xffff
    7628:	00587821 	addu	t7,v0,t8
    762c:	24420001 	addiu	v0,v0,1
    7630:	28e10008 	slti	at,a3,8
    7634:	3042ffff 	andi	v0,v0,0xffff
    7638:	1420fff5 	bnez	at,7610 <L8010DF4C+0x74>
    763c:	a1f90000 	sb	t9,0(t7)
    7640:	24aeffff 	addiu	t6,a1,-1
    7644:	a52e0000 	sh	t6,0(t1)
    7648:	8e0762b8 	lw	a3,25272(s0)
    764c:	85250000 	lh	a1,0(t1)
    7650:	3c040000 	lui	a0,0x0
    7654:	24840000 	addiu	a0,a0,0
    7658:	0c000000 	jal	0 <func_801069B0>
    765c:	90e60000 	lbu	a2,0(a3)
    7660:	8e1862b8 	lw	t8,25272(s0)
    7664:	3c090000 	lui	t1,0x0
    7668:	25290000 	addiu	t1,t1,0
    766c:	85390000 	lh	t9,0(t1)
    7670:	93020000 	lbu	v0,0(t8)
    7674:	3c010000 	lui	at,0x0
    7678:	00390821 	addu	at,at,t9
    767c:	a0220000 	sb	v0,0(at)
    7680:	26217fff 	addiu	at,s1,32767
    7684:	a0226411 	sb	v0,25617(at)
    7688:	852f0000 	lh	t7,0(t1)
    768c:	3c010000 	lui	at,0x0
    7690:	3c080000 	lui	t0,0x0
    7694:	25ee0001 	addiu	t6,t7,1
    7698:	a52e0000 	sh	t6,0(t1)
    769c:	85390000 	lh	t9,0(t1)
    76a0:	241800ff 	li	t8,255
    76a4:	25080000 	addiu	t0,t0,0
    76a8:	00390821 	addu	at,at,t9
    76ac:	a0380000 	sb	t8,0(at)
    76b0:	850f0000 	lh	t7,0(t0)
    76b4:	24010008 	li	at,8
    76b8:	25ee0001 	addiu	t6,t7,1
    76bc:	a50e0000 	sh	t6,0(t0)
    76c0:	8e0762b8 	lw	a3,25272(s0)
    76c4:	90f80002 	lbu	t8,2(a3)
    76c8:	57010004 	bnel	t8,at,76dc <L8010DF4C+0x140>
    76cc:	90e60001 	lbu	a2,1(a3)
    76d0:	a5000000 	sh	zero,0(t0)
    76d4:	8e0762b8 	lw	a3,25272(s0)
    76d8:	90e60001 	lbu	a2,1(a3)
    76dc:	3c090000 	lui	t1,0x0
    76e0:	25290000 	addiu	t1,t1,0
    76e4:	50c00007 	beqzl	a2,7704 <L8010DF4C+0x168>
    76e8:	852e0000 	lh	t6,0(t1)
    76ec:	96590020 	lhu	t9,32(s2)
    76f0:	2401bfff 	li	at,-16385
    76f4:	03217827 	nor	t7,t9,at
    76f8:	55e00047 	bnezl	t7,7818 <L8010DF4C+0x27c>
    76fc:	02402025 	move	a0,s2
    7700:	852e0000 	lh	t6,0(t1)
    7704:	11c00007 	beqz	t6,7724 <L8010DF4C+0x188>
    7708:	3c040000 	lui	a0,0x0
    770c:	24840000 	addiu	a0,a0,0
    7710:	0c000000 	jal	0 <func_801069B0>
    7714:	00c02825 	move	a1,a2
    7718:	24180001 	li	t8,1
    771c:	3c010000 	lui	at,0x0
    7720:	a0380f40 	sb	t8,3904(at)
    7724:	3c070000 	lui	a3,0x0
    7728:	3c190000 	lui	t9,0x0
    772c:	24e70000 	addiu	a3,a3,0
    7730:	27390000 	addiu	t9,t9,0
    7734:	3c050000 	lui	a1,0x0
    7738:	24a50000 	addiu	a1,a1,0
    773c:	afb90014 	sw	t9,20(sp)
    7740:	afa70010 	sw	a3,16(sp)
    7744:	24044827 	li	a0,18471
    7748:	0c000000 	jal	0 <func_801069B0>
    774c:	24060004 	li	a2,4
    7750:	3c040000 	lui	a0,0x0
    7754:	0c000000 	jal	0 <func_801069B0>
    7758:	24840000 	addiu	a0,a0,0
    775c:	0c000000 	jal	0 <func_801069B0>
    7760:	00002025 	move	a0,zero
    7764:	240f000a 	li	t7,10
    7768:	26217fff 	addiu	at,s1,32767
    776c:	a02f63e8 	sb	t7,25576(at)
    7770:	3c010001 	lui	at,0x1
    7774:	00320821 	addu	at,at,s2
    7778:	240e0004 	li	t6,4
    777c:	a42e04c6 	sh	t6,1222(at)
    7780:	0c000000 	jal	0 <func_801069B0>
    7784:	02402025 	move	a0,s2
    7788:	3c040000 	lui	a0,0x0
    778c:	0c000000 	jal	0 <func_801069B0>
    7790:	24840000 	addiu	a0,a0,0
    7794:	3c040000 	lui	a0,0x0
    7798:	0c000000 	jal	0 <func_801069B0>
    779c:	24840000 	addiu	a0,a0,0
    77a0:	3c040000 	lui	a0,0x0
    77a4:	0c000000 	jal	0 <func_801069B0>
    77a8:	24840000 	addiu	a0,a0,0
    77ac:	3c040000 	lui	a0,0x0
    77b0:	3c050000 	lui	a1,0x0
    77b4:	8ca50000 	lw	a1,0(a1)
    77b8:	24840f41 	addiu	a0,a0,3905
    77bc:	0c000000 	jal	0 <func_801069B0>
    77c0:	24060360 	li	a2,864
    77c4:	00003825 	move	a3,zero
    77c8:	3c050000 	lui	a1,0x0
    77cc:	00a72821 	addu	a1,a1,a3
    77d0:	3c040000 	lui	a0,0x0
    77d4:	24840000 	addiu	a0,a0,0
    77d8:	90a50f41 	lbu	a1,3905(a1)
    77dc:	0c000000 	jal	0 <func_801069B0>
    77e0:	a7a70138 	sh	a3,312(sp)
    77e4:	97a70138 	lhu	a3,312(sp)
    77e8:	24e70001 	addiu	a3,a3,1
    77ec:	30e7ffff 	andi	a3,a3,0xffff
    77f0:	28e10360 	slti	at,a3,864
    77f4:	1420fff4 	bnez	at,77c8 <L8010DF4C+0x22c>
    77f8:	00000000 	nop
    77fc:	3c040000 	lui	a0,0x0
    7800:	0c000000 	jal	0 <func_801069B0>
    7804:	24840000 	addiu	a0,a0,0
    7808:	3c040000 	lui	a0,0x0
    780c:	0c000000 	jal	0 <func_801069B0>
    7810:	24840000 	addiu	a0,a0,0
    7814:	02402025 	move	a0,s2
    7818:	0c000000 	jal	0 <func_801069B0>
    781c:	27a50140 	addiu	a1,sp,320
    7820:	100002a7 	b	82c0 <L8010EC60+0x10>
    7824:	92026304 	lbu	v0,25348(s0)

00007828 <L8010E1D8>:
    7828:	0c000000 	jal	0 <func_801069B0>
    782c:	00000000 	nop
    7830:	26217fff 	addiu	at,s1,32767
    7834:	ac2262b9 	sw	v0,25273(at)
    7838:	8e0762b8 	lw	a3,25272(s0)
    783c:	90e30002 	lbu	v1,2(a3)
    7840:	10600033 	beqz	v1,7910 <L8010E1D8+0xe8>
    7844:	3c080000 	lui	t0,0x0
    7848:	25080000 	addiu	t0,t0,0
    784c:	85050000 	lh	a1,0(t0)
    7850:	24b80001 	addiu	t8,a1,1
    7854:	1478002e 	bne	v1,t8,7910 <L8010E1D8+0xe8>
    7858:	3c090000 	lui	t1,0x0
    785c:	25290000 	addiu	t1,t1,0
    7860:	85230000 	lh	v1,0(t1)
    7864:	28610008 	slti	at,v1,8
    7868:	14200013 	bnez	at,78b8 <L8010E1D8+0x90>
    786c:	2462fff8 	addiu	v0,v1,-8
    7870:	3c0a0000 	lui	t2,0x0
    7874:	254a0000 	addiu	t2,t2,0
    7878:	3042ffff 	andi	v0,v0,0xffff
    787c:	00003825 	move	a3,zero
    7880:	24e70001 	addiu	a3,a3,1
    7884:	0142c821 	addu	t9,t2,v0
    7888:	932f0001 	lbu	t7,1(t9)
    788c:	30e7ffff 	andi	a3,a3,0xffff
    7890:	01427021 	addu	t6,t2,v0
    7894:	24420001 	addiu	v0,v0,1
    7898:	28e10008 	slti	at,a3,8
    789c:	3042ffff 	andi	v0,v0,0xffff
    78a0:	1420fff7 	bnez	at,7880 <L8010E1D8+0x58>
    78a4:	a1cf0000 	sb	t7,0(t6)
    78a8:	2478ffff 	addiu	t8,v1,-1
    78ac:	a5380000 	sh	t8,0(t1)
    78b0:	8e0762b8 	lw	a3,25272(s0)
    78b4:	85230000 	lh	v1,0(t1)
    78b8:	90f90000 	lbu	t9,0(a3)
    78bc:	3c0a0000 	lui	t2,0x0
    78c0:	254a0000 	addiu	t2,t2,0
    78c4:	01437821 	addu	t7,t2,v1
    78c8:	246e0001 	addiu	t6,v1,1
    78cc:	a1f90000 	sb	t9,0(t7)
    78d0:	a52e0000 	sh	t6,0(t1)
    78d4:	85390000 	lh	t9,0(t1)
    78d8:	241800ff 	li	t8,255
    78dc:	24ae0001 	addiu	t6,a1,1
    78e0:	01597821 	addu	t7,t2,t9
    78e4:	a1f80000 	sb	t8,0(t7)
    78e8:	a50e0000 	sh	t6,0(t0)
    78ec:	8e0762b8 	lw	a3,25272(s0)
    78f0:	24010008 	li	at,8
    78f4:	90f90002 	lbu	t9,2(a3)
    78f8:	17210005 	bne	t9,at,7910 <L8010E1D8+0xe8>
    78fc:	00000000 	nop
    7900:	a5000000 	sh	zero,0(t0)
    7904:	85180000 	lh	t8,0(t0)
    7908:	a5380000 	sh	t8,0(t1)
    790c:	8e0762b8 	lw	a3,25272(s0)
    7910:	3c040000 	lui	a0,0x0
    7914:	24840000 	addiu	a0,a0,0
    7918:	90e50001 	lbu	a1,1(a3)
    791c:	0c000000 	jal	0 <func_801069B0>
    7920:	00003025 	move	a2,zero
    7924:	920263e7 	lbu	v0,25575(s0)
    7928:	54400012 	bnezl	v0,7974 <L8010E1D8+0x14c>
    792c:	2458ffff 	addiu	t8,v0,-1
    7930:	8e0f62b8 	lw	t7,25272(s0)
    7934:	91ee0001 	lbu	t6,1(t7)
    7938:	15c00010 	bnez	t6,797c <L8010E1D8+0x154>
    793c:	3c040000 	lui	a0,0x0
    7940:	0c000000 	jal	0 <func_801069B0>
    7944:	24840000 	addiu	a0,a0,0
    7948:	0c000000 	jal	0 <func_801069B0>
    794c:	00002025 	move	a0,zero
    7950:	3c010001 	lui	at,0x1
    7954:	00320821 	addu	at,at,s2
    7958:	2419000f 	li	t9,15
    795c:	a43904c6 	sh	t9,1222(at)
    7960:	0c000000 	jal	0 <func_801069B0>
    7964:	02402025 	move	a0,s2
    7968:	10000004 	b	797c <L8010E1D8+0x154>
    796c:	00000000 	nop
    7970:	2458ffff 	addiu	t8,v0,-1
    7974:	26217fff 	addiu	at,s1,32767
    7978:	a03863e8 	sb	t8,25576(at)
    797c:	10000250 	b	82c0 <L8010EC60+0x10>
    7980:	92026304 	lbu	v0,25348(s0)

00007984 <L8010E334>:
    7984:	0c000000 	jal	0 <func_801069B0>
    7988:	24040002 	li	a0,2
    798c:	0c000000 	jal	0 <func_801069B0>
    7990:	24040001 	li	a0,1
    7994:	240f0025 	li	t7,37
    7998:	26217fff 	addiu	at,s1,32767
    799c:	a02f6305 	sb	t7,25349(at)
    79a0:	02402025 	move	a0,s2
    79a4:	0c000000 	jal	0 <func_801069B0>
    79a8:	27a50140 	addiu	a1,sp,320
    79ac:	10000244 	b	82c0 <L8010EC60+0x10>
    79b0:	92026304 	lbu	v0,25348(s0)

000079b4 <L8010E364>:
    79b4:	0c000000 	jal	0 <func_801069B0>
    79b8:	00000000 	nop
    79bc:	26217fff 	addiu	at,s1,32767
    79c0:	ac2262b9 	sw	v0,25273(at)
    79c4:	8e0762b8 	lw	a3,25272(s0)
    79c8:	90e30002 	lbu	v1,2(a3)
    79cc:	10600015 	beqz	v1,7a24 <L8010E364+0x70>
    79d0:	3c080000 	lui	t0,0x0
    79d4:	25080000 	addiu	t0,t0,0
    79d8:	85050000 	lh	a1,0(t0)
    79dc:	24ae0001 	addiu	t6,a1,1
    79e0:	546e0011 	bnel	v1,t6,7a28 <L8010E364+0x74>
    79e4:	90e60001 	lbu	a2,1(a3)
    79e8:	90e20000 	lbu	v0,0(a3)
    79ec:	3c010000 	lui	at,0x0
    79f0:	00250821 	addu	at,at,a1
    79f4:	a0220000 	sb	v0,0(at)
    79f8:	26217fff 	addiu	at,s1,32767
    79fc:	a0226411 	sb	v0,25617(at)
    7a00:	85190000 	lh	t9,0(t0)
    7a04:	3c010000 	lui	at,0x0
    7a08:	240f00ff 	li	t7,255
    7a0c:	27380001 	addiu	t8,t9,1
    7a10:	a5180000 	sh	t8,0(t0)
    7a14:	850e0000 	lh	t6,0(t0)
    7a18:	002e0821 	addu	at,at,t6
    7a1c:	a02f0000 	sb	t7,0(at)
    7a20:	8e0762b8 	lw	a3,25272(s0)
    7a24:	90e60001 	lbu	a2,1(a3)
    7a28:	14c00039 	bnez	a2,7b10 <L8010E364+0x15c>
    7a2c:	3c040000 	lui	a0,0x0
    7a30:	0c000000 	jal	0 <func_801069B0>
    7a34:	24840000 	addiu	a0,a0,0
    7a38:	24190014 	li	t9,20
    7a3c:	26217fff 	addiu	at,s1,32767
    7a40:	a03963e8 	sb	t9,25576(at)
    7a44:	3c010000 	lui	at,0x0
    7a48:	24180001 	li	t8,1
    7a4c:	a03812c5 	sb	t8,4805(at)
    7a50:	3c070000 	lui	a3,0x0
    7a54:	26217fff 	addiu	at,s1,32767
    7a58:	240f0027 	li	t7,39
    7a5c:	3c0e0000 	lui	t6,0x0
    7a60:	24e70000 	addiu	a3,a3,0
    7a64:	a02f6305 	sb	t7,25349(at)
    7a68:	25ce0000 	addiu	t6,t6,0
    7a6c:	3c050000 	lui	a1,0x0
    7a70:	24a50000 	addiu	a1,a1,0
    7a74:	afae0014 	sw	t6,20(sp)
    7a78:	afa70010 	sw	a3,16(sp)
    7a7c:	24044807 	li	a0,18439
    7a80:	0c000000 	jal	0 <func_801069B0>
    7a84:	24060004 	li	a2,4
    7a88:	3c040000 	lui	a0,0x0
    7a8c:	0c000000 	jal	0 <func_801069B0>
    7a90:	24840000 	addiu	a0,a0,0
    7a94:	3c040000 	lui	a0,0x0
    7a98:	0c000000 	jal	0 <func_801069B0>
    7a9c:	24840000 	addiu	a0,a0,0
    7aa0:	3c040000 	lui	a0,0x0
    7aa4:	3c050000 	lui	a1,0x0
    7aa8:	8ca50000 	lw	a1,0(a1)
    7aac:	248412c6 	addiu	a0,a0,4806
    7ab0:	0c000000 	jal	0 <func_801069B0>
    7ab4:	24060080 	li	a2,128
    7ab8:	00003825 	move	a3,zero
    7abc:	3c050000 	lui	a1,0x0
    7ac0:	00a72821 	addu	a1,a1,a3
    7ac4:	3c040000 	lui	a0,0x0
    7ac8:	24840000 	addiu	a0,a0,0
    7acc:	90a512c6 	lbu	a1,4806(a1)
    7ad0:	0c000000 	jal	0 <func_801069B0>
    7ad4:	a7a70138 	sh	a3,312(sp)
    7ad8:	97a70138 	lhu	a3,312(sp)
    7adc:	24e70001 	addiu	a3,a3,1
    7ae0:	30e7ffff 	andi	a3,a3,0xffff
    7ae4:	28e10080 	slti	at,a3,128
    7ae8:	1420fff4 	bnez	at,7abc <L8010E364+0x108>
    7aec:	00000000 	nop
    7af0:	3c040000 	lui	a0,0x0
    7af4:	0c000000 	jal	0 <func_801069B0>
    7af8:	24840000 	addiu	a0,a0,0
    7afc:	3c040000 	lui	a0,0x0
    7b00:	0c000000 	jal	0 <func_801069B0>
    7b04:	24840000 	addiu	a0,a0,0
    7b08:	1000001e 	b	7b84 <L8010E364+0x1d0>
    7b0c:	02402025 	move	a0,s2
    7b10:	240100ff 	li	at,255
    7b14:	10c10005 	beq	a2,at,7b2c <L8010E364+0x178>
    7b18:	00000000 	nop
    7b1c:	96590020 	lhu	t9,32(s2)
    7b20:	2401bfff 	li	at,-16385
    7b24:	0321c027 	nor	t8,t9,at
    7b28:	17000015 	bnez	t8,7b80 <L8010E364+0x1cc>
    7b2c:	3c040000 	lui	a0,0x0
    7b30:	0c000000 	jal	0 <func_801069B0>
    7b34:	24840000 	addiu	a0,a0,0
    7b38:	0c000000 	jal	0 <func_801069B0>
    7b3c:	00002025 	move	a0,zero
    7b40:	3c070000 	lui	a3,0x0
    7b44:	3c0f0000 	lui	t7,0x0
    7b48:	24e70000 	addiu	a3,a3,0
    7b4c:	25ef0000 	addiu	t7,t7,0
    7b50:	3c050000 	lui	a1,0x0
    7b54:	24a50000 	addiu	a1,a1,0
    7b58:	afaf0014 	sw	t7,20(sp)
    7b5c:	afa70010 	sw	a3,16(sp)
    7b60:	24044827 	li	a0,18471
    7b64:	0c000000 	jal	0 <func_801069B0>
    7b68:	24060004 	li	a2,4
    7b6c:	0c000000 	jal	0 <func_801069B0>
    7b70:	02402025 	move	a0,s2
    7b74:	240e0026 	li	t6,38
    7b78:	26217fff 	addiu	at,s1,32767
    7b7c:	a02e6305 	sb	t6,25349(at)
    7b80:	02402025 	move	a0,s2
    7b84:	0c000000 	jal	0 <func_801069B0>
    7b88:	27a50140 	addiu	a1,sp,320
    7b8c:	100001cc 	b	82c0 <L8010EC60+0x10>
    7b90:	92026304 	lbu	v0,25348(s0)

00007b94 <L8010E544>:
    7b94:	3c040000 	lui	a0,0x0
    7b98:	0c000000 	jal	0 <func_801069B0>
    7b9c:	24840000 	addiu	a0,a0,0
    7ba0:	0c000000 	jal	0 <func_801069B0>
    7ba4:	00002025 	move	a0,zero
    7ba8:	02402025 	move	a0,s2
    7bac:	240540ad 	li	a1,16557
    7bb0:	0c000000 	jal	0 <func_801069B0>
    7bb4:	00003025 	move	a2,zero
    7bb8:	3c010001 	lui	at,0x1
    7bbc:	00320821 	addu	at,at,s2
    7bc0:	24190004 	li	t9,4
    7bc4:	a43904c6 	sh	t9,1222(at)
    7bc8:	100001bd 	b	82c0 <L8010EC60+0x10>
    7bcc:	92026304 	lbu	v0,25348(s0)

00007bd0 <L8010E580>:
    7bd0:	0c000000 	jal	0 <func_801069B0>
    7bd4:	24040001 	li	a0,1
    7bd8:	0c000000 	jal	0 <func_801069B0>
    7bdc:	24040006 	li	a0,6
    7be0:	3c040000 	lui	a0,0x0
    7be4:	0c000000 	jal	0 <func_801069B0>
    7be8:	9084003f 	lbu	a0,63(a0)
    7bec:	0c000000 	jal	0 <func_801069B0>
    7bf0:	00000000 	nop
    7bf4:	3c080000 	lui	t0,0x0
    7bf8:	26217fff 	addiu	at,s1,32767
    7bfc:	ac2262b9 	sw	v0,25273(at)
    7c00:	25080000 	addiu	t0,t0,0
    7c04:	a5000000 	sh	zero,0(t0)
    7c08:	8e0f62b8 	lw	t7,25272(s0)
    7c0c:	85180000 	lh	t8,0(t0)
    7c10:	0c000000 	jal	0 <func_801069B0>
    7c14:	a1f80002 	sb	t8,2(t7)
    7c18:	2404000e 	li	a0,14
    7c1c:	0c000000 	jal	0 <func_801069B0>
    7c20:	24050001 	li	a1,1
    7c24:	26217fff 	addiu	at,s1,32767
    7c28:	240e002a 	li	t6,42
    7c2c:	24190002 	li	t9,2
    7c30:	a02e6305 	sb	t6,25349(at)
    7c34:	a03963e8 	sb	t9,25576(at)
    7c38:	100001a1 	b	82c0 <L8010EC60+0x10>
    7c3c:	92026304 	lbu	v0,25348(s0)

00007c40 <L8010E5F0>:
    7c40:	3c070000 	lui	a3,0x0
    7c44:	3c180000 	lui	t8,0x0
    7c48:	24e70000 	addiu	a3,a3,0
    7c4c:	27180000 	addiu	t8,t8,0
    7c50:	3c050000 	lui	a1,0x0
    7c54:	24a50000 	addiu	a1,a1,0
    7c58:	afb80014 	sw	t8,20(sp)
    7c5c:	afa70010 	sw	a3,16(sp)
    7c60:	24044038 	li	a0,16440
    7c64:	0c000000 	jal	0 <func_801069B0>
    7c68:	24060004 	li	a2,4
    7c6c:	0c000000 	jal	0 <func_801069B0>
    7c70:	00000000 	nop
    7c74:	26217fff 	addiu	at,s1,32767
    7c78:	ac2262b9 	sw	v0,25273(at)
    7c7c:	8e0762b8 	lw	a3,25272(s0)
    7c80:	90e30002 	lbu	v1,2(a3)
    7c84:	10600012 	beqz	v1,7cd0 <L8010E5F0+0x90>
    7c88:	3c080000 	lui	t0,0x0
    7c8c:	25080000 	addiu	t0,t0,0
    7c90:	85050000 	lh	a1,0(t0)
    7c94:	24af0001 	addiu	t7,a1,1
    7c98:	546f000e 	bnel	v1,t7,7cd4 <L8010E5F0+0x94>
    7c9c:	920263e7 	lbu	v0,25575(s0)
    7ca0:	90ee0000 	lbu	t6,0(a3)
    7ca4:	3c010000 	lui	at,0x0
    7ca8:	00230821 	addu	at,at,v1
    7cac:	a02e0000 	sb	t6,0(at)
    7cb0:	8e1862b8 	lw	t8,25272(s0)
    7cb4:	3c010000 	lui	at,0x0
    7cb8:	241900ff 	li	t9,255
    7cbc:	930f0002 	lbu	t7,2(t8)
    7cc0:	24ae0001 	addiu	t6,a1,1
    7cc4:	002f0821 	addu	at,at,t7
    7cc8:	a0390000 	sb	t9,0(at)
    7ccc:	a50e0000 	sh	t6,0(t0)
    7cd0:	920263e7 	lbu	v0,25575(s0)
    7cd4:	54400026 	bnezl	v0,7d70 <L8010E5F0+0x130>
    7cd8:	244effff 	addiu	t6,v0,-1
    7cdc:	8e1862b8 	lw	t8,25272(s0)
    7ce0:	93190001 	lbu	t9,1(t8)
    7ce4:	17200024 	bnez	t9,7d78 <L8010E5F0+0x138>
    7ce8:	00000000 	nop
    7cec:	920f6304 	lbu	t7,25348(s0)
    7cf0:	2401002a 	li	at,42
    7cf4:	15e1000d 	bne	t7,at,7d2c <L8010E5F0+0xec>
    7cf8:	3c070000 	lui	a3,0x0
    7cfc:	3c0e0000 	lui	t6,0x0
    7d00:	24e70000 	addiu	a3,a3,0
    7d04:	25ce0000 	addiu	t6,t6,0
    7d08:	3c050000 	lui	a1,0x0
    7d0c:	24a50000 	addiu	a1,a1,0
    7d10:	afae0014 	sw	t6,20(sp)
    7d14:	afa70010 	sw	a3,16(sp)
    7d18:	24044836 	li	a0,18486
    7d1c:	0c000000 	jal	0 <func_801069B0>
    7d20:	24060004 	li	a2,4
    7d24:	1000000d 	b	7d5c <L8010E5F0+0x11c>
    7d28:	92196304 	lbu	t9,25348(s0)
    7d2c:	3c070000 	lui	a3,0x0
    7d30:	3c180000 	lui	t8,0x0
    7d34:	24e70000 	addiu	a3,a3,0
    7d38:	27180000 	addiu	t8,t8,0
    7d3c:	3c050000 	lui	a1,0x0
    7d40:	24a50000 	addiu	a1,a1,0
    7d44:	afb80014 	sw	t8,20(sp)
    7d48:	afa70010 	sw	a3,16(sp)
    7d4c:	24044842 	li	a0,18498
    7d50:	0c000000 	jal	0 <func_801069B0>
    7d54:	24060004 	li	a2,4
    7d58:	92196304 	lbu	t9,25348(s0)
    7d5c:	26217fff 	addiu	at,s1,32767
    7d60:	272f0001 	addiu	t7,t9,1
    7d64:	10000004 	b	7d78 <L8010E5F0+0x138>
    7d68:	a02f6305 	sb	t7,25349(at)
    7d6c:	244effff 	addiu	t6,v0,-1
    7d70:	26217fff 	addiu	at,s1,32767
    7d74:	a02e63e8 	sb	t6,25576(at)
    7d78:	10000151 	b	82c0 <L8010EC60+0x10>
    7d7c:	92026304 	lbu	v0,25348(s0)

00007d80 <L8010E730>:
    7d80:	0c000000 	jal	0 <func_801069B0>
    7d84:	00000000 	nop
    7d88:	26217fff 	addiu	at,s1,32767
    7d8c:	ac2262b9 	sw	v0,25273(at)
    7d90:	8e0762b8 	lw	a3,25272(s0)
    7d94:	90e30002 	lbu	v1,2(a3)
    7d98:	10600012 	beqz	v1,7de4 <L8010E730+0x64>
    7d9c:	3c080000 	lui	t0,0x0
    7da0:	25080000 	addiu	t0,t0,0
    7da4:	85050000 	lh	a1,0(t0)
    7da8:	24b80001 	addiu	t8,a1,1
    7dac:	1478000d 	bne	v1,t8,7de4 <L8010E730+0x64>
    7db0:	00000000 	nop
    7db4:	90f90000 	lbu	t9,0(a3)
    7db8:	3c010000 	lui	at,0x0
    7dbc:	00230821 	addu	at,at,v1
    7dc0:	a0390000 	sb	t9,0(at)
    7dc4:	8e0e62b8 	lw	t6,25272(s0)
    7dc8:	3c010000 	lui	at,0x0
    7dcc:	240f00ff 	li	t7,255
    7dd0:	91d80002 	lbu	t8,2(t6)
    7dd4:	24b90001 	addiu	t9,a1,1
    7dd8:	00380821 	addu	at,at,t8
    7ddc:	a02f0000 	sb	t7,0(at)
    7de0:	a5190000 	sh	t9,0(t0)
    7de4:	10000136 	b	82c0 <L8010EC60+0x10>
    7de8:	92026304 	lbu	v0,25348(s0)

00007dec <L8010E79C>:
    7dec:	3c070000 	lui	a3,0x0
    7df0:	3c0e0000 	lui	t6,0x0
    7df4:	24e70000 	addiu	a3,a3,0
    7df8:	25ce0000 	addiu	t6,t6,0
    7dfc:	3c050000 	lui	a1,0x0
    7e00:	24a50000 	addiu	a1,a1,0
    7e04:	afae0014 	sw	t6,20(sp)
    7e08:	afa70010 	sw	a3,16(sp)
    7e0c:	24044038 	li	a0,16440
    7e10:	0c000000 	jal	0 <func_801069B0>
    7e14:	24060004 	li	a2,4
    7e18:	0c000000 	jal	0 <func_801069B0>
    7e1c:	00000000 	nop
    7e20:	26217fff 	addiu	at,s1,32767
    7e24:	ac2262b9 	sw	v0,25273(at)
    7e28:	8e0762b8 	lw	a3,25272(s0)
    7e2c:	90e30002 	lbu	v1,2(a3)
    7e30:	10600013 	beqz	v1,7e80 <L8010E79C+0x94>
    7e34:	3c080000 	lui	t0,0x0
    7e38:	25080000 	addiu	t0,t0,0
    7e3c:	85050000 	lh	a1,0(t0)
    7e40:	24af0001 	addiu	t7,a1,1
    7e44:	546f000f 	bnel	v1,t7,7e84 <L8010E79C+0x98>
    7e48:	90e60001 	lbu	a2,1(a3)
    7e4c:	90f80000 	lbu	t8,0(a3)
    7e50:	3c010000 	lui	at,0x0
    7e54:	00230821 	addu	at,at,v1
    7e58:	a0380000 	sb	t8,0(at)
    7e5c:	8e0e62b8 	lw	t6,25272(s0)
    7e60:	3c010000 	lui	at,0x0
    7e64:	241900ff 	li	t9,255
    7e68:	91cf0002 	lbu	t7,2(t6)
    7e6c:	24b80001 	addiu	t8,a1,1
    7e70:	002f0821 	addu	at,at,t7
    7e74:	a0390000 	sb	t9,0(at)
    7e78:	a5180000 	sh	t8,0(t0)
    7e7c:	8e0762b8 	lw	a3,25272(s0)
    7e80:	90e60001 	lbu	a2,1(a3)
    7e84:	240100ff 	li	at,255
    7e88:	14c10018 	bne	a2,at,7eec <L8010E79C+0x100>
    7e8c:	3c040000 	lui	a0,0x0
    7e90:	0c000000 	jal	0 <func_801069B0>
    7e94:	24840000 	addiu	a0,a0,0
    7e98:	0c000000 	jal	0 <func_801069B0>
    7e9c:	00002025 	move	a0,zero
    7ea0:	3c070000 	lui	a3,0x0
    7ea4:	3c0e0000 	lui	t6,0x0
    7ea8:	24e70000 	addiu	a3,a3,0
    7eac:	25ce0000 	addiu	t6,t6,0
    7eb0:	3c050000 	lui	a1,0x0
    7eb4:	24a50000 	addiu	a1,a1,0
    7eb8:	afae0014 	sw	t6,20(sp)
    7ebc:	afa70010 	sw	a3,16(sp)
    7ec0:	24044827 	li	a0,18471
    7ec4:	0c000000 	jal	0 <func_801069B0>
    7ec8:	24060004 	li	a2,4
    7ecc:	2419000a 	li	t9,10
    7ed0:	26217fff 	addiu	at,s1,32767
    7ed4:	a03963e8 	sb	t9,25576(at)
    7ed8:	3c010001 	lui	at,0x1
    7edc:	00320821 	addu	at,at,s2
    7ee0:	240f0003 	li	t7,3
    7ee4:	10000016 	b	7f40 <L8010E79C+0x154>
    7ee8:	a42f04c6 	sh	t7,1222(at)
    7eec:	2401000d 	li	at,13
    7ef0:	14c10013 	bne	a2,at,7f40 <L8010E79C+0x154>
    7ef4:	3c040000 	lui	a0,0x0
    7ef8:	0c000000 	jal	0 <func_801069B0>
    7efc:	24840000 	addiu	a0,a0,0
    7f00:	3c070000 	lui	a3,0x0
    7f04:	3c180000 	lui	t8,0x0
    7f08:	24e70000 	addiu	a3,a3,0
    7f0c:	27180000 	addiu	t8,t8,0
    7f10:	3c050000 	lui	a1,0x0
    7f14:	24a50000 	addiu	a1,a1,0
    7f18:	afb80014 	sw	t8,20(sp)
    7f1c:	afa70010 	sw	a3,16(sp)
    7f20:	24044824 	li	a0,18468
    7f24:	0c000000 	jal	0 <func_801069B0>
    7f28:	24060004 	li	a2,4
    7f2c:	26217fff 	addiu	at,s1,32767
    7f30:	240e002f 	li	t6,47
    7f34:	2419001e 	li	t9,30
    7f38:	a02e6305 	sb	t6,25349(at)
    7f3c:	a03963e8 	sb	t9,25576(at)
    7f40:	02402025 	move	a0,s2
    7f44:	0c000000 	jal	0 <func_801069B0>
    7f48:	27a50140 	addiu	a1,sp,320
    7f4c:	100000dc 	b	82c0 <L8010EC60+0x10>
    7f50:	92026304 	lbu	v0,25348(s0)

00007f54 <L8010E904>:
    7f54:	0c000000 	jal	0 <func_801069B0>
    7f58:	00000000 	nop
    7f5c:	26217fff 	addiu	at,s1,32767
    7f60:	ac2262b9 	sw	v0,25273(at)
    7f64:	8e0762b8 	lw	a3,25272(s0)
    7f68:	90e30002 	lbu	v1,2(a3)
    7f6c:	10600012 	beqz	v1,7fb8 <L8010E904+0x64>
    7f70:	3c080000 	lui	t0,0x0
    7f74:	25080000 	addiu	t0,t0,0
    7f78:	85050000 	lh	a1,0(t0)
    7f7c:	24af0001 	addiu	t7,a1,1
    7f80:	546f000e 	bnel	v1,t7,7fbc <L8010E904+0x68>
    7f84:	921963e7 	lbu	t9,25575(s0)
    7f88:	90f80000 	lbu	t8,0(a3)
    7f8c:	3c010000 	lui	at,0x0
    7f90:	00230821 	addu	at,at,v1
    7f94:	a0380000 	sb	t8,0(at)
    7f98:	8e1962b8 	lw	t9,25272(s0)
    7f9c:	3c010000 	lui	at,0x0
    7fa0:	240e00ff 	li	t6,255
    7fa4:	932f0002 	lbu	t7,2(t9)
    7fa8:	24b80001 	addiu	t8,a1,1
    7fac:	002f0821 	addu	at,at,t7
    7fb0:	a02e0000 	sb	t6,0(at)
    7fb4:	a5180000 	sh	t8,0(t0)
    7fb8:	921963e7 	lbu	t9,25575(s0)
    7fbc:	26217fff 	addiu	at,s1,32767
    7fc0:	272effff 	addiu	t6,t9,-1
    7fc4:	a02e63e8 	sb	t6,25576(at)
    7fc8:	920f63e7 	lbu	t7,25575(s0)
    7fcc:	55e00024 	bnezl	t7,8060 <L8010E904+0x10c>
    7fd0:	02402025 	move	a0,s2
    7fd4:	0c000000 	jal	0 <func_801069B0>
    7fd8:	00000000 	nop
    7fdc:	24010001 	li	at,1
    7fe0:	1041001a 	beq	v0,at,804c <L8010E904+0xf8>
    7fe4:	3c070000 	lui	a3,0x0
    7fe8:	3c180000 	lui	t8,0x0
    7fec:	24e70000 	addiu	a3,a3,0
    7ff0:	27180000 	addiu	t8,t8,0
    7ff4:	3c050000 	lui	a1,0x0
    7ff8:	24a50000 	addiu	a1,a1,0
    7ffc:	afb80014 	sw	t8,20(sp)
    8000:	afa70010 	sw	a3,16(sp)
    8004:	24044836 	li	a0,18486
    8008:	0c000000 	jal	0 <func_801069B0>
    800c:	24060004 	li	a2,4
    8010:	0c000000 	jal	0 <func_801069B0>
    8014:	00000000 	nop
    8018:	3c080000 	lui	t0,0x0
    801c:	26217fff 	addiu	at,s1,32767
    8020:	ac2262b9 	sw	v0,25273(at)
    8024:	25080000 	addiu	t0,t0,0
    8028:	a5000000 	sh	zero,0(t0)
    802c:	8e0e62b8 	lw	t6,25272(s0)
    8030:	85190000 	lh	t9,0(t0)
    8034:	0c000000 	jal	0 <func_801069B0>
    8038:	a1d90002 	sb	t9,2(t6)
    803c:	240f0030 	li	t7,48
    8040:	26217fff 	addiu	at,s1,32767
    8044:	10000005 	b	805c <L8010E904+0x108>
    8048:	a02f6305 	sb	t7,25349(at)
    804c:	3c010001 	lui	at,0x1
    8050:	00320821 	addu	at,at,s2
    8054:	2418000f 	li	t8,15
    8058:	a43804c6 	sh	t8,1222(at)
    805c:	02402025 	move	a0,s2
    8060:	0c000000 	jal	0 <func_801069B0>
    8064:	27a50140 	addiu	a1,sp,320
    8068:	10000095 	b	82c0 <L8010EC60+0x10>
    806c:	92026304 	lbu	v0,25348(s0)

00008070 <L8010EA20>:
    8070:	0c000000 	jal	0 <func_801069B0>
    8074:	24044836 	li	a0,18486
    8078:	1440000f 	bnez	v0,80b8 <L8010EA20+0x48>
    807c:	00000000 	nop
    8080:	0c000000 	jal	0 <func_801069B0>
    8084:	00000000 	nop
    8088:	3c080000 	lui	t0,0x0
    808c:	26217fff 	addiu	at,s1,32767
    8090:	ac2262b9 	sw	v0,25273(at)
    8094:	25080000 	addiu	t0,t0,0
    8098:	a5000000 	sh	zero,0(t0)
    809c:	8e0e62b8 	lw	t6,25272(s0)
    80a0:	85190000 	lh	t9,0(t0)
    80a4:	0c000000 	jal	0 <func_801069B0>
    80a8:	a1d90002 	sb	t9,2(t6)
    80ac:	2404000e 	li	a0,14
    80b0:	0c000000 	jal	0 <func_801069B0>
    80b4:	24050001 	li	a1,1
    80b8:	10000081 	b	82c0 <L8010EC60+0x10>
    80bc:	92026304 	lbu	v0,25348(s0)

000080c0 <L8010EA70>:
    80c0:	0c000000 	jal	0 <func_801069B0>
    80c4:	24040001 	li	a0,1
    80c8:	0c000000 	jal	0 <func_801069B0>
    80cc:	00000000 	nop
    80d0:	3c080000 	lui	t0,0x0
    80d4:	26217fff 	addiu	at,s1,32767
    80d8:	ac2262b9 	sw	v0,25273(at)
    80dc:	25080000 	addiu	t0,t0,0
    80e0:	a5000000 	sh	zero,0(t0)
    80e4:	8e1862b8 	lw	t8,25272(s0)
    80e8:	850f0000 	lh	t7,0(t0)
    80ec:	3c010001 	lui	at,0x1
    80f0:	00320821 	addu	at,at,s2
    80f4:	24190001 	li	t9,1
    80f8:	a30f0002 	sb	t7,2(t8)
    80fc:	0c000000 	jal	0 <func_801069B0>
    8100:	a43904c6 	sh	t9,1222(at)
    8104:	3c040000 	lui	a0,0x0
    8108:	94840000 	lhu	a0,0(a0)
    810c:	3401c000 	li	at,0xc000
    8110:	00812021 	addu	a0,a0,at
    8114:	0c000000 	jal	0 <func_801069B0>
    8118:	3084ffff 	andi	a0,a0,0xffff
    811c:	240e0032 	li	t6,50
    8120:	26217fff 	addiu	at,s1,32767
    8124:	a02e6305 	sb	t6,25349(at)
    8128:	10000065 	b	82c0 <L8010EC60+0x10>
    812c:	92026304 	lbu	v0,25348(s0)

00008130 <L8010EAE0>:
    8130:	0c000000 	jal	0 <func_801069B0>
    8134:	00000000 	nop
    8138:	26217fff 	addiu	at,s1,32767
    813c:	ac2262b9 	sw	v0,25273(at)
    8140:	8e0762b8 	lw	a3,25272(s0)
    8144:	90e30002 	lbu	v1,2(a3)
    8148:	10600011 	beqz	v1,8190 <L8010EAE0+0x60>
    814c:	3c080000 	lui	t0,0x0
    8150:	25080000 	addiu	t0,t0,0
    8154:	850f0000 	lh	t7,0(t0)
    8158:	25f80001 	addiu	t8,t7,1
    815c:	5478000d 	bnel	v1,t8,8194 <L8010EB44>
    8160:	92026304 	lbu	v0,25348(s0)
    8164:	90f90000 	lbu	t9,0(a3)
    8168:	26217fff 	addiu	at,s1,32767
    816c:	a0396411 	sb	t9,25617(at)
    8170:	a5000000 	sh	zero,0(t0)
    8174:	8e0f62b8 	lw	t7,25272(s0)
    8178:	850e0000 	lh	t6,0(t0)
    817c:	0c000000 	jal	0 <func_801069B0>
    8180:	a1ee0002 	sb	t6,2(t7)
    8184:	24180033 	li	t8,51
    8188:	26217fff 	addiu	at,s1,32767
    818c:	a0386305 	sb	t8,25349(at)
    8190:	92026304 	lbu	v0,25348(s0)

00008194 <L8010EB44>:
    8194:	1000004b 	b	82c4 <L8010EC60+0x14>
    8198:	2841000c 	slti	at,v0,12

0000819c <L8010EB4C>:
    819c:	02402025 	move	a0,s2
    81a0:	0c000000 	jal	0 <func_801069B0>
    81a4:	27a50140 	addiu	a1,sp,320
    81a8:	920263e4 	lbu	v0,25572(s0)
    81ac:	24010010 	li	at,16
    81b0:	1041000b 	beq	v0,at,81e0 <L8010EB4C+0x44>
    81b4:	24010020 	li	at,32
    81b8:	10410013 	beq	v0,at,8208 <L8010EB4C+0x6c>
    81bc:	24010040 	li	at,64
    81c0:	1041001b 	beq	v0,at,8230 <L8010EB4C+0x94>
    81c4:	24010050 	li	at,80
    81c8:	1041002d 	beq	v0,at,8280 <L8010EB4C+0xe4>
    81cc:	24010060 	li	at,96
    81d0:	10410033 	beq	v0,at,82a0 <L8010EB4C+0x104>
    81d4:	00000000 	nop
    81d8:	10000029 	b	8280 <L8010EB4C+0xe4>
    81dc:	00000000 	nop
    81e0:	02402025 	move	a0,s2
    81e4:	0c000000 	jal	0 <func_801069B0>
    81e8:	24050001 	li	a1,1
    81ec:	02402025 	move	a0,s2
    81f0:	27a50140 	addiu	a1,sp,320
    81f4:	860663d8 	lh	a2,25560(s0)
    81f8:	0c000000 	jal	0 <func_801069B0>
    81fc:	860763da 	lh	a3,25562(s0)
    8200:	10000027 	b	82a0 <L8010EB4C+0x104>
    8204:	00000000 	nop
    8208:	02402025 	move	a0,s2
    820c:	0c000000 	jal	0 <func_801069B0>
    8210:	24050002 	li	a1,2
    8214:	02402025 	move	a0,s2
    8218:	27a50140 	addiu	a1,sp,320
    821c:	860663d8 	lh	a2,25560(s0)
    8220:	0c000000 	jal	0 <func_801069B0>
    8224:	860763da 	lh	a3,25562(s0)
    8228:	1000001d 	b	82a0 <L8010EB4C+0x104>
    822c:	00000000 	nop
    8230:	960262f8 	lhu	v0,25336(s0)
    8234:	2841006d 	slti	at,v0,109
    8238:	1420000f 	bnez	at,8278 <L8010EB4C+0xdc>
    823c:	28410073 	slti	at,v0,115
    8240:	1020000d 	beqz	at,8278 <L8010EB4C+0xdc>
    8244:	00000000 	nop
    8248:	921963e7 	lbu	t9,25575(s0)
    824c:	26217fff 	addiu	at,s1,32767
    8250:	272e0001 	addiu	t6,t9,1
    8254:	a02e63e8 	sb	t6,25576(at)
    8258:	920f63e7 	lbu	t7,25575(s0)
    825c:	29e1001f 	slti	at,t7,31
    8260:	14200005 	bnez	at,8278 <L8010EB4C+0xdc>
    8264:	26217fff 	addiu	at,s1,32767
    8268:	24180002 	li	t8,2
    826c:	24190036 	li	t9,54
    8270:	a03863e8 	sb	t8,25576(at)
    8274:	a0396305 	sb	t9,25349(at)
    8278:	10000009 	b	82a0 <L8010EB4C+0x104>
    827c:	00000000 	nop
    8280:	3c090000 	lui	t1,0x0
    8284:	25290000 	addiu	t1,t1,0
    8288:	8d280000 	lw	t0,0(t1)
    828c:	02402025 	move	a0,s2
    8290:	27a50140 	addiu	a1,sp,320
    8294:	85060b14 	lh	a2,2836(t0)
    8298:	0c000000 	jal	0 <func_801069B0>
    829c:	85070b16 	lh	a3,2838(t0)
    82a0:	10000007 	b	82c0 <L8010EC60+0x10>
    82a4:	92026304 	lbu	v0,25348(s0)

000082a8 <L8010EC58>:
    82a8:	10000006 	b	82c4 <L8010EC60+0x14>
    82ac:	2841000c 	slti	at,v0,12

000082b0 <L8010EC60>:
    82b0:	240e0006 	li	t6,6
    82b4:	26217fff 	addiu	at,s1,32767
    82b8:	a02e6305 	sb	t6,25349(at)
    82bc:	92026304 	lbu	v0,25348(s0)
    82c0:	2841000c 	slti	at,v0,12
    82c4:	1420018c 	bnez	at,88f8 <L8010EC60+0x648>
    82c8:	28410034 	slti	at,v0,52
    82cc:	5020018b 	beqzl	at,88fc <L8010EC60+0x64c>
    82d0:	8fb80140 	lw	t8,320(sp)
    82d4:	960263f0 	lhu	v0,25584(s0)
    82d8:	24010001 	li	at,1
    82dc:	10410186 	beq	v0,at,88f8 <L8010EC60+0x648>
    82e0:	24010030 	li	at,48
    82e4:	50410185 	beql	v0,at,88fc <L8010EC60+0x64c>
    82e8:	8fb80140 	lw	t8,320(sp)
    82ec:	0c000000 	jal	0 <func_801069B0>
    82f0:	27a40140 	addiu	a0,sp,320
    82f4:	8faf0140 	lw	t7,320(sp)
    82f8:	3c19fc30 	lui	t9,0xfc30
    82fc:	3c0e552e 	lui	t6,0x552e
    8300:	25f80008 	addiu	t8,t7,8
    8304:	afb80140 	sw	t8,320(sp)
    8308:	35ceff7f 	ori	t6,t6,0xff7f
    830c:	37399661 	ori	t9,t9,0x9661
    8310:	adf90000 	sw	t9,0(t7)
    8314:	adee0004 	sw	t6,4(t7)
    8318:	92026304 	lbu	v0,25348(s0)
    831c:	3c090000 	lui	t1,0x0
    8320:	2401001b 	li	at,27
    8324:	14410093 	bne	v0,at,8574 <L8010EC60+0x2c4>
    8328:	25290000 	addiu	t1,t1,0
    832c:	960463f0 	lhu	a0,25584(s0)
    8330:	3c180000 	lui	t8,0x0
    8334:	27180000 	addiu	t8,t8,0
    8338:	2484fff1 	addiu	a0,a0,-15
    833c:	00042400 	sll	a0,a0,0x10
    8340:	00042403 	sra	a0,a0,0x10
    8344:	000478c0 	sll	t7,a0,0x3
    8348:	01e47821 	addu	t7,t7,a0
    834c:	01f8c821 	addu	t9,t7,t8
    8350:	93280000 	lbu	t0,0(t9)
    8354:	8d2e0000 	lw	t6,0(t1)
    8358:	00003825 	move	a3,zero
    835c:	19000085 	blez	t0,8574 <L8010EC60+0x2c4>
    8360:	95c50f4c 	lhu	a1,3916(t6)
    8364:	000478c0 	sll	t7,a0,0x3
    8368:	01e47821 	addu	t7,t7,a0
    836c:	3c0d0a0a 	lui	t5,0xa0a
    8370:	3c0c9696 	lui	t4,0x9696
    8374:	358c9696 	ori	t4,t4,0x9696
    8378:	35ad0a00 	ori	t5,t5,0xa00
    837c:	01f8f821 	addu	ra,t7,t8
    8380:	3c11fd70 	lui	s1,0xfd70
    8384:	3c0bfb00 	lui	t3,0xfb00
    8388:	3c0afa00 	lui	t2,0xfa00
    838c:	3c06e700 	lui	a2,0xe700
    8390:	8fb90140 	lw	t9,320(sp)
    8394:	03e72021 	addu	a0,ra,a3
    8398:	3c01e400 	lui	at,0xe400
    839c:	272e0008 	addiu	t6,t9,8
    83a0:	afae0140 	sw	t6,320(sp)
    83a4:	af200004 	sw	zero,4(t9)
    83a8:	af260000 	sw	a2,0(t9)
    83ac:	8faf0140 	lw	t7,320(sp)
    83b0:	24e70001 	addiu	a3,a3,1
    83b4:	30e7ffff 	andi	a3,a3,0xffff
    83b8:	25f80008 	addiu	t8,t7,8
    83bc:	afb80140 	sw	t8,320(sp)
    83c0:	adec0004 	sw	t4,4(t7)
    83c4:	adea0000 	sw	t2,0(t7)
    83c8:	8fb90140 	lw	t9,320(sp)
    83cc:	3c0f0000 	lui	t7,0x0
    83d0:	272e0008 	addiu	t6,t9,8
    83d4:	afae0140 	sw	t6,320(sp)
    83d8:	af2d0004 	sw	t5,4(t9)
    83dc:	af2b0000 	sw	t3,0(t9)
    83e0:	8fa20140 	lw	v0,320(sp)
    83e4:	24580008 	addiu	t8,v0,8
    83e8:	afb80140 	sw	t8,320(sp)
    83ec:	ac510000 	sw	s1,0(v0)
    83f0:	90990001 	lbu	t9,1(a0)
    83f4:	00197080 	sll	t6,t9,0x2
    83f8:	01ee7821 	addu	t7,t7,t6
    83fc:	8def0000 	lw	t7,0(t7)
    8400:	3c0ef570 	lui	t6,0xf570
    8404:	ac4f0004 	sw	t7,4(v0)
    8408:	8fb80140 	lw	t8,320(sp)
    840c:	3c0f0700 	lui	t7,0x700
    8410:	27190008 	addiu	t9,t8,8
    8414:	afb90140 	sw	t9,320(sp)
    8418:	af0f0004 	sw	t7,4(t8)
    841c:	af0e0000 	sw	t6,0(t8)
    8420:	8fb80140 	lw	t8,320(sp)
    8424:	3c0ee600 	lui	t6,0xe600
    8428:	27190008 	addiu	t9,t8,8
    842c:	afb90140 	sw	t9,320(sp)
    8430:	af000004 	sw	zero,4(t8)
    8434:	af0e0000 	sw	t6,0(t8)
    8438:	8faf0140 	lw	t7,320(sp)
    843c:	3c0e0707 	lui	t6,0x707
    8440:	35cef400 	ori	t6,t6,0xf400
    8444:	25f80008 	addiu	t8,t7,8
    8448:	afb80140 	sw	t8,320(sp)
    844c:	3c19f300 	lui	t9,0xf300
    8450:	adf90000 	sw	t9,0(t7)
    8454:	adee0004 	sw	t6,4(t7)
    8458:	8faf0140 	lw	t7,320(sp)
    845c:	25f80008 	addiu	t8,t7,8
    8460:	afb80140 	sw	t8,320(sp)
    8464:	ade00004 	sw	zero,4(t7)
    8468:	ade60000 	sw	a2,0(t7)
    846c:	8fb90140 	lw	t9,320(sp)
    8470:	3c0ff568 	lui	t7,0xf568
    8474:	35ef0400 	ori	t7,t7,0x400
    8478:	272e0008 	addiu	t6,t9,8
    847c:	afae0140 	sw	t6,320(sp)
    8480:	af200004 	sw	zero,4(t9)
    8484:	af2f0000 	sw	t7,0(t9)
    8488:	8fb80140 	lw	t8,320(sp)
    848c:	3c0f0003 	lui	t7,0x3
    8490:	35efc03c 	ori	t7,t7,0xc03c
    8494:	27190008 	addiu	t9,t8,8
    8498:	afb90140 	sw	t9,320(sp)
    849c:	3c0ef200 	lui	t6,0xf200
    84a0:	af0e0000 	sw	t6,0(t8)
    84a4:	af0f0004 	sw	t7,4(t8)
    84a8:	8fa20140 	lw	v0,320(sp)
    84ac:	908f0001 	lbu	t7,1(a0)
    84b0:	8d2e0000 	lw	t6,0(t1)
    84b4:	24590008 	addiu	t9,v0,8
    84b8:	afb90140 	sw	t9,320(sp)
    84bc:	000fc040 	sll	t8,t7,0x1
    84c0:	01d8c821 	addu	t9,t6,t8
    84c4:	872f0f6e 	lh	t7,3950(t9)
    84c8:	25ee0010 	addiu	t6,t7,16
    84cc:	000ec080 	sll	t8,t6,0x2
    84d0:	33190fff 	andi	t9,t8,0xfff
    84d4:	24ae0010 	addiu	t6,a1,16
    84d8:	000ec080 	sll	t8,t6,0x2
    84dc:	03217825 	or	t7,t9,at
    84e0:	33190fff 	andi	t9,t8,0xfff
    84e4:	00197300 	sll	t6,t9,0xc
    84e8:	01eec025 	or	t8,t7,t6
    84ec:	ac580000 	sw	t8,0(v0)
    84f0:	908f0001 	lbu	t7,1(a0)
    84f4:	8d390000 	lw	t9,0(t1)
    84f8:	00e8082a 	slt	at,a3,t0
    84fc:	000f7040 	sll	t6,t7,0x1
    8500:	032ec021 	addu	t8,t9,t6
    8504:	870f0f6e 	lh	t7,3950(t8)
    8508:	0005c080 	sll	t8,a1,0x2
    850c:	000fc880 	sll	t9,t7,0x2
    8510:	332e0fff 	andi	t6,t9,0xfff
    8514:	330f0fff 	andi	t7,t8,0xfff
    8518:	000fcb00 	sll	t9,t7,0xc
    851c:	01d9c025 	or	t8,t6,t9
    8520:	ac580004 	sw	t8,4(v0)
    8524:	8faf0140 	lw	t7,320(sp)
    8528:	3c19e100 	lui	t9,0xe100
    852c:	25ee0008 	addiu	t6,t7,8
    8530:	afae0140 	sw	t6,320(sp)
    8534:	ade00004 	sw	zero,4(t7)
    8538:	adf90000 	sw	t9,0(t7)
    853c:	8fb80140 	lw	t8,320(sp)
    8540:	3c190400 	lui	t9,0x400
    8544:	37390400 	ori	t9,t9,0x400
    8548:	270f0008 	addiu	t7,t8,8
    854c:	afaf0140 	sw	t7,320(sp)
    8550:	3c0ef100 	lui	t6,0xf100
    8554:	af0e0000 	sw	t6,0(t8)
    8558:	af190004 	sw	t9,4(t8)
    855c:	8d380000 	lw	t8,0(t1)
    8560:	870f0f4e 	lh	t7,3918(t8)
    8564:	00af2821 	addu	a1,a1,t7
    8568:	1420ff89 	bnez	at,8390 <L8010EC60+0xe0>
    856c:	30a5ffff 	andi	a1,a1,0xffff
    8570:	92026304 	lbu	v0,25348(s0)
    8574:	24010021 	li	at,33
    8578:	3c06e700 	lui	a2,0xe700
    857c:	3c0afa00 	lui	t2,0xfa00
    8580:	3c0bfb00 	lui	t3,0xfb00
    8584:	104100dc 	beq	v0,at,88f8 <L8010EC60+0x648>
    8588:	3c11fd70 	lui	s1,0xfd70
    858c:	24010029 	li	at,41
    8590:	504100da 	beql	v0,at,88fc <L8010EC60+0x64c>
    8594:	8fb80140 	lw	t8,320(sp)
    8598:	8d280000 	lw	t0,0(t1)
    859c:	00003825 	move	a3,zero
    85a0:	95050f4c 	lhu	a1,3916(t0)
    85a4:	3c0e0000 	lui	t6,0x0
    85a8:	25ce0000 	addiu	t6,t6,0
    85ac:	00ee2021 	addu	a0,a3,t6
    85b0:	90990000 	lbu	t9,0(a0)
    85b4:	240100ff 	li	at,255
    85b8:	132100cf 	beq	t9,at,88f8 <L8010EC60+0x648>
    85bc:	3c0f0000 	lui	t7,0x0
    85c0:	25ef0000 	addiu	t7,t7,0
    85c4:	0007c040 	sll	t8,a3,0x1
    85c8:	030f1821 	addu	v1,t8,t7
    85cc:	84620000 	lh	v0,0(v1)
    85d0:	240c00ff 	li	t4,255
    85d4:	5182000a 	beql	t4,v0,8600 <L8010EC60+0x350>
    85d8:	8faf0140 	lw	t7,320(sp)
    85dc:	850e0f78 	lh	t6,3960(t0)
    85e0:	004ec821 	addu	t9,v0,t6
    85e4:	a4790000 	sh	t9,0(v1)
    85e8:	84780000 	lh	t8,0(v1)
    85ec:	2b0100ff 	slti	at,t8,255
    85f0:	54200003 	bnezl	at,8600 <L8010EC60+0x350>
    85f4:	8faf0140 	lw	t7,320(sp)
    85f8:	a46c0000 	sh	t4,0(v1)
    85fc:	8faf0140 	lw	t7,320(sp)
    8600:	25ee0008 	addiu	t6,t7,8
    8604:	afae0140 	sw	t6,320(sp)
    8608:	ade00004 	sw	zero,4(t7)
    860c:	ade60000 	sw	a2,0(t7)
    8610:	90990000 	lbu	t9,0(a0)
    8614:	5720002a 	bnezl	t9,86c0 <L8010EC60+0x410>
    8618:	8fa20140 	lw	v0,320(sp)
    861c:	8fa20140 	lw	v0,320(sp)
    8620:	3c180000 	lui	t8,0x0
    8624:	244f0008 	addiu	t7,v0,8
    8628:	afaf0140 	sw	t7,320(sp)
    862c:	ac4a0000 	sw	t2,0(v0)
    8630:	846e0000 	lh	t6,0(v1)
    8634:	870f0000 	lh	t7,0(t8)
    8638:	31d900ff 	andi	t9,t6,0xff
    863c:	000f7600 	sll	t6,t7,0x18
    8640:	3c0f0000 	lui	t7,0x0
    8644:	85ef0000 	lh	t7,0(t7)
    8648:	032ec025 	or	t8,t9,t6
    864c:	31f900ff 	andi	t9,t7,0xff
    8650:	00197400 	sll	t6,t9,0x10
    8654:	3c190000 	lui	t9,0x0
    8658:	87390000 	lh	t9,0(t9)
    865c:	030e7825 	or	t7,t8,t6
    8660:	333800ff 	andi	t8,t9,0xff
    8664:	00187200 	sll	t6,t8,0x8
    8668:	01eec825 	or	t9,t7,t6
    866c:	ac590004 	sw	t9,4(v0)
    8670:	8fa20140 	lw	v0,320(sp)
    8674:	3c0e0000 	lui	t6,0x0
    8678:	244f0008 	addiu	t7,v0,8
    867c:	afaf0140 	sw	t7,320(sp)
    8680:	ac4b0000 	sw	t3,0(v0)
    8684:	3c0f0000 	lui	t7,0x0
    8688:	85ef0000 	lh	t7,0(t7)
    868c:	85d90000 	lh	t9,0(t6)
    8690:	31ee00ff 	andi	t6,t7,0xff
    8694:	0019c600 	sll	t8,t9,0x18
    8698:	000ecc00 	sll	t9,t6,0x10
    869c:	3c0e0000 	lui	t6,0x0
    86a0:	85ce0000 	lh	t6,0(t6)
    86a4:	03197825 	or	t7,t8,t9
    86a8:	31d800ff 	andi	t8,t6,0xff
    86ac:	0018ca00 	sll	t9,t8,0x8
    86b0:	01f97025 	or	t6,t7,t9
    86b4:	10000028 	b	8758 <L8010EC60+0x4a8>
    86b8:	ac4e0004 	sw	t6,4(v0)
    86bc:	8fa20140 	lw	v0,320(sp)
    86c0:	3c180000 	lui	t8,0x0
    86c4:	244f0008 	addiu	t7,v0,8
    86c8:	afaf0140 	sw	t7,320(sp)
    86cc:	ac4a0000 	sw	t2,0(v0)
    86d0:	84790000 	lh	t9,0(v1)
    86d4:	870f0000 	lh	t7,0(t8)
    86d8:	332e00ff 	andi	t6,t9,0xff
    86dc:	000fce00 	sll	t9,t7,0x18
    86e0:	3c0f0000 	lui	t7,0x0
    86e4:	85ef0000 	lh	t7,0(t7)
    86e8:	01d9c025 	or	t8,t6,t9
    86ec:	31ee00ff 	andi	t6,t7,0xff
    86f0:	000ecc00 	sll	t9,t6,0x10
    86f4:	3c0e0000 	lui	t6,0x0
    86f8:	85ce0000 	lh	t6,0(t6)
    86fc:	03197825 	or	t7,t8,t9
    8700:	31d800ff 	andi	t8,t6,0xff
    8704:	0018ca00 	sll	t9,t8,0x8
    8708:	01f97025 	or	t6,t7,t9
    870c:	ac4e0004 	sw	t6,4(v0)
    8710:	8fa20140 	lw	v0,320(sp)
    8714:	3c190000 	lui	t9,0x0
    8718:	244f0008 	addiu	t7,v0,8
    871c:	afaf0140 	sw	t7,320(sp)
    8720:	ac4b0000 	sw	t3,0(v0)
    8724:	3c0f0000 	lui	t7,0x0
    8728:	85ef0000 	lh	t7,0(t7)
    872c:	872e0000 	lh	t6,0(t9)
    8730:	31f900ff 	andi	t9,t7,0xff
    8734:	000ec600 	sll	t8,t6,0x18
    8738:	00197400 	sll	t6,t9,0x10
    873c:	3c190000 	lui	t9,0x0
    8740:	87390000 	lh	t9,0(t9)
    8744:	030e7825 	or	t7,t8,t6
    8748:	333800ff 	andi	t8,t9,0xff
    874c:	00187200 	sll	t6,t8,0x8
    8750:	01eec825 	or	t9,t7,t6
    8754:	ac590004 	sw	t9,4(v0)
    8758:	8fa20140 	lw	v0,320(sp)
    875c:	3c180000 	lui	t8,0x0
    8760:	3c01e400 	lui	at,0xe400
    8764:	244f0008 	addiu	t7,v0,8
    8768:	afaf0140 	sw	t7,320(sp)
    876c:	ac510000 	sw	s1,0(v0)
    8770:	908e0000 	lbu	t6,0(a0)
    8774:	24e70001 	addiu	a3,a3,1
    8778:	30e7ffff 	andi	a3,a3,0xffff
    877c:	000ec880 	sll	t9,t6,0x2
    8780:	0319c021 	addu	t8,t8,t9
    8784:	8f180000 	lw	t8,0(t8)
    8788:	3c19f570 	lui	t9,0xf570
    878c:	ac580004 	sw	t8,4(v0)
    8790:	8faf0140 	lw	t7,320(sp)
    8794:	3c180700 	lui	t8,0x700
    8798:	25ee0008 	addiu	t6,t7,8
    879c:	afae0140 	sw	t6,320(sp)
    87a0:	adf80004 	sw	t8,4(t7)
    87a4:	adf90000 	sw	t9,0(t7)
    87a8:	8faf0140 	lw	t7,320(sp)
    87ac:	3c19e600 	lui	t9,0xe600
    87b0:	25ee0008 	addiu	t6,t7,8
    87b4:	afae0140 	sw	t6,320(sp)
    87b8:	ade00004 	sw	zero,4(t7)
    87bc:	adf90000 	sw	t9,0(t7)
    87c0:	8fb80140 	lw	t8,320(sp)
    87c4:	3c190707 	lui	t9,0x707
    87c8:	3739f400 	ori	t9,t9,0xf400
    87cc:	270f0008 	addiu	t7,t8,8
    87d0:	afaf0140 	sw	t7,320(sp)
    87d4:	3c0ef300 	lui	t6,0xf300
    87d8:	af0e0000 	sw	t6,0(t8)
    87dc:	af190004 	sw	t9,4(t8)
    87e0:	8fb80140 	lw	t8,320(sp)
    87e4:	270f0008 	addiu	t7,t8,8
    87e8:	afaf0140 	sw	t7,320(sp)
    87ec:	af000004 	sw	zero,4(t8)
    87f0:	af060000 	sw	a2,0(t8)
    87f4:	8fae0140 	lw	t6,320(sp)
    87f8:	3c18f568 	lui	t8,0xf568
    87fc:	37180400 	ori	t8,t8,0x400
    8800:	25d90008 	addiu	t9,t6,8
    8804:	afb90140 	sw	t9,320(sp)
    8808:	adc00004 	sw	zero,4(t6)
    880c:	add80000 	sw	t8,0(t6)
    8810:	8faf0140 	lw	t7,320(sp)
    8814:	3c180003 	lui	t8,0x3
    8818:	3718c03c 	ori	t8,t8,0xc03c
    881c:	25ee0008 	addiu	t6,t7,8
    8820:	afae0140 	sw	t6,320(sp)
    8824:	3c19f200 	lui	t9,0xf200
    8828:	adf90000 	sw	t9,0(t7)
    882c:	adf80004 	sw	t8,4(t7)
    8830:	8fa20140 	lw	v0,320(sp)
    8834:	90980000 	lbu	t8,0(a0)
    8838:	8d390000 	lw	t9,0(t1)
    883c:	244e0008 	addiu	t6,v0,8
    8840:	afae0140 	sw	t6,320(sp)
    8844:	00187840 	sll	t7,t8,0x1
    8848:	032f7021 	addu	t6,t9,t7
    884c:	85d80f6e 	lh	t8,3950(t6)
    8850:	27190010 	addiu	t9,t8,16
    8854:	00197880 	sll	t7,t9,0x2
    8858:	31ee0fff 	andi	t6,t7,0xfff
    885c:	24b90010 	addiu	t9,a1,16
    8860:	00197880 	sll	t7,t9,0x2
    8864:	01c1c025 	or	t8,t6,at
    8868:	31ee0fff 	andi	t6,t7,0xfff
    886c:	000ecb00 	sll	t9,t6,0xc
    8870:	03197825 	or	t7,t8,t9
    8874:	ac4f0000 	sw	t7,0(v0)
    8878:	90980000 	lbu	t8,0(a0)
    887c:	8d2e0000 	lw	t6,0(t1)
    8880:	28e10008 	slti	at,a3,8
    8884:	0018c840 	sll	t9,t8,0x1
    8888:	01d97821 	addu	t7,t6,t9
    888c:	85f80f6e 	lh	t8,3950(t7)
    8890:	00057880 	sll	t7,a1,0x2
    8894:	00187080 	sll	t6,t8,0x2
    8898:	31d90fff 	andi	t9,t6,0xfff
    889c:	31f80fff 	andi	t8,t7,0xfff
    88a0:	00187300 	sll	t6,t8,0xc
    88a4:	032e7825 	or	t7,t9,t6
    88a8:	ac4f0004 	sw	t7,4(v0)
    88ac:	8fb80140 	lw	t8,320(sp)
    88b0:	3c0ee100 	lui	t6,0xe100
    88b4:	27190008 	addiu	t9,t8,8
    88b8:	afb90140 	sw	t9,320(sp)
    88bc:	af000004 	sw	zero,4(t8)
    88c0:	af0e0000 	sw	t6,0(t8)
    88c4:	8faf0140 	lw	t7,320(sp)
    88c8:	3c0e0400 	lui	t6,0x400
    88cc:	35ce0400 	ori	t6,t6,0x400
    88d0:	25f80008 	addiu	t8,t7,8
    88d4:	afb80140 	sw	t8,320(sp)
    88d8:	3c19f100 	lui	t9,0xf100
    88dc:	adf90000 	sw	t9,0(t7)
    88e0:	adee0004 	sw	t6,4(t7)
    88e4:	8d280000 	lw	t0,0(t1)
    88e8:	850f0f4e 	lh	t7,3918(t0)
    88ec:	00af2821 	addu	a1,a1,t7
    88f0:	1420ff2c 	bnez	at,85a4 <L8010EC60+0x2f4>
    88f4:	30a5ffff 	andi	a1,a1,0xffff
    88f8:	8fb80140 	lw	t8,320(sp)
    88fc:	8fb9015c 	lw	t9,348(sp)
    8900:	af380000 	sw	t8,0(t9)
    8904:	8fbf003c 	lw	ra,60(sp)
    8908:	8fb20038 	lw	s2,56(sp)
    890c:	8fb10034 	lw	s1,52(sp)
    8910:	8fb00030 	lw	s0,48(sp)
    8914:	03e00008 	jr	ra
    8918:	27bd0158 	addiu	sp,sp,344

0000891c <func_8010F2CC>:
    891c:	27bdff98 	addiu	sp,sp,-104
    8920:	afbf0014 	sw	ra,20(sp)
    8924:	afa40068 	sw	a0,104(sp)
    8928:	3c060000 	lui	a2,0x0
    892c:	24c60000 	addiu	a2,a2,0
    8930:	27a40050 	addiu	a0,sp,80
    8934:	afa5006c 	sw	a1,108(sp)
    8938:	0c000000 	jal	0 <func_801069B0>
    893c:	24070d9d 	li	a3,3485
    8940:	8fae0068 	lw	t6,104(sp)
    8944:	3c0f0000 	lui	t7,0x0
    8948:	85ef0000 	lh	t7,0(t7)
    894c:	85c20000 	lh	v0,0(t6)
    8950:	8fa5006c 	lw	a1,108(sp)
    8954:	3c010000 	lui	at,0x0
    8958:	11e20004 	beq	t7,v0,896c <func_8010F2CC+0x50>
    895c:	2403001e 	li	v1,30
    8960:	a4220000 	sh	v0,0(at)
    8964:	3c010000 	lui	at,0x0
    8968:	a4230000 	sh	v1,0(at)
    896c:	3c030000 	lui	v1,0x0
    8970:	84630000 	lh	v1,0(v1)
    8974:	3c010000 	lui	at,0x0
    8978:	3c04e700 	lui	a0,0xe700
    897c:	10600050 	beqz	v1,8ac0 <func_8010F2CC+0x1a4>
    8980:	3c06e300 	lui	a2,0xe300
    8984:	2463ffff 	addiu	v1,v1,-1
    8988:	00031c00 	sll	v1,v1,0x10
    898c:	00031c03 	sra	v1,v1,0x10
    8990:	a4230000 	sh	v1,0(at)
    8994:	8ca202c0 	lw	v0,704(a1)
    8998:	34c60a01 	ori	a2,a2,0xa01
    899c:	3c070030 	lui	a3,0x30
    89a0:	24580008 	addiu	t8,v0,8
    89a4:	acb802c0 	sw	t8,704(a1)
    89a8:	ac400004 	sw	zero,4(v0)
    89ac:	ac440000 	sw	a0,0(v0)
    89b0:	8ca202c0 	lw	v0,704(a1)
    89b4:	3c08e200 	lui	t0,0xe200
    89b8:	3508001c 	ori	t0,t0,0x1c
    89bc:	24590008 	addiu	t9,v0,8
    89c0:	acb902c0 	sw	t9,704(a1)
    89c4:	ac470004 	sw	a3,4(v0)
    89c8:	ac460000 	sw	a2,0(v0)
    89cc:	8ca202c0 	lw	v0,704(a1)
    89d0:	3c0c0001 	lui	t4,0x1
    89d4:	358c0001 	ori	t4,t4,0x1
    89d8:	244a0008 	addiu	t2,v0,8
    89dc:	acaa02c0 	sw	t2,704(a1)
    89e0:	ac400004 	sw	zero,4(v0)
    89e4:	ac480000 	sw	t0,0(v0)
    89e8:	8ca202c0 	lw	v0,704(a1)
    89ec:	3c09f700 	lui	t1,0xf700
    89f0:	3c0ef64f 	lui	t6,0xf64f
    89f4:	244b0008 	addiu	t3,v0,8
    89f8:	acab02c0 	sw	t3,704(a1)
    89fc:	ac4c0004 	sw	t4,4(v0)
    8a00:	ac490000 	sw	t1,0(v0)
    8a04:	8ca202c0 	lw	v0,704(a1)
    8a08:	35cec258 	ori	t6,t6,0xc258
    8a0c:	240f01b8 	li	t7,440
    8a10:	244d0008 	addiu	t5,v0,8
    8a14:	acad02c0 	sw	t5,704(a1)
    8a18:	ac4f0004 	sw	t7,4(v0)
    8a1c:	ac4e0000 	sw	t6,0(v0)
    8a20:	8ca202c0 	lw	v0,704(a1)
    8a24:	240dffff 	li	t5,-1
    8a28:	3c0ff60f 	lui	t7,0xf60f
    8a2c:	24580008 	addiu	t8,v0,8
    8a30:	acb802c0 	sw	t8,704(a1)
    8a34:	ac400004 	sw	zero,4(v0)
    8a38:	ac440000 	sw	a0,0(v0)
    8a3c:	8ca202c0 	lw	v0,704(a1)
    8a40:	3c18000a 	lui	t8,0xa
    8a44:	371801e0 	ori	t8,t8,0x1e0
    8a48:	24590008 	addiu	t9,v0,8
    8a4c:	acb902c0 	sw	t9,704(a1)
    8a50:	ac400004 	sw	zero,4(v0)
    8a54:	ac440000 	sw	a0,0(v0)
    8a58:	8ca202c0 	lw	v0,704(a1)
    8a5c:	35ef0230 	ori	t7,t7,0x230
    8a60:	244a0008 	addiu	t2,v0,8
    8a64:	acaa02c0 	sw	t2,704(a1)
    8a68:	ac470004 	sw	a3,4(v0)
    8a6c:	ac460000 	sw	a2,0(v0)
    8a70:	8ca202c0 	lw	v0,704(a1)
    8a74:	244b0008 	addiu	t3,v0,8
    8a78:	acab02c0 	sw	t3,704(a1)
    8a7c:	ac400004 	sw	zero,4(v0)
    8a80:	ac480000 	sw	t0,0(v0)
    8a84:	8ca202c0 	lw	v0,704(a1)
    8a88:	244c0008 	addiu	t4,v0,8
    8a8c:	acac02c0 	sw	t4,704(a1)
    8a90:	ac4d0004 	sw	t5,4(v0)
    8a94:	ac490000 	sw	t1,0(v0)
    8a98:	8ca202c0 	lw	v0,704(a1)
    8a9c:	244e0008 	addiu	t6,v0,8
    8aa0:	acae02c0 	sw	t6,704(a1)
    8aa4:	ac580004 	sw	t8,4(v0)
    8aa8:	ac4f0000 	sw	t7,0(v0)
    8aac:	8ca202c0 	lw	v0,704(a1)
    8ab0:	24590008 	addiu	t9,v0,8
    8ab4:	acb902c0 	sw	t9,704(a1)
    8ab8:	ac400004 	sw	zero,4(v0)
    8abc:	ac440000 	sw	a0,0(v0)
    8ac0:	3c060000 	lui	a2,0x0
    8ac4:	24c60000 	addiu	a2,a2,0
    8ac8:	27a40050 	addiu	a0,sp,80
    8acc:	0c000000 	jal	0 <func_801069B0>
    8ad0:	24070db9 	li	a3,3513
    8ad4:	8fbf0014 	lw	ra,20(sp)
    8ad8:	27bd0068 	addiu	sp,sp,104
    8adc:	03e00008 	jr	ra
    8ae0:	00000000 	nop

00008ae4 <func_8010F494>:
    8ae4:	27bdffa0 	addiu	sp,sp,-96
    8ae8:	afb00020 	sw	s0,32(sp)
    8aec:	27b0002c 	addiu	s0,sp,44
    8af0:	afbf0024 	sw	ra,36(sp)
    8af4:	afa40060 	sw	a0,96(sp)
    8af8:	afa50064 	sw	a1,100(sp)
    8afc:	0c000000 	jal	0 <func_801069B0>
    8b00:	02002025 	move	a0,s0
    8b04:	8fae0064 	lw	t6,100(sp)
    8b08:	02002025 	move	a0,s0
    8b0c:	0c000000 	jal	0 <func_801069B0>
    8b10:	8dc50000 	lw	a1,0(t6)
    8b14:	02002025 	move	a0,s0
    8b18:	24050006 	li	a1,6
    8b1c:	0c000000 	jal	0 <func_801069B0>
    8b20:	2406001a 	li	a2,26
    8b24:	240f00ff 	li	t7,255
    8b28:	afaf0010 	sw	t7,16(sp)
    8b2c:	02002025 	move	a0,s0
    8b30:	240500ff 	li	a1,255
    8b34:	2406003c 	li	a2,60
    8b38:	0c000000 	jal	0 <func_801069B0>
    8b3c:	00003825 	move	a3,zero
    8b40:	3c050000 	lui	a1,0x0
    8b44:	3c060000 	lui	a2,0x0
    8b48:	24c60000 	addiu	a2,a2,0
    8b4c:	24a50000 	addiu	a1,a1,0
    8b50:	0c000000 	jal	0 <func_801069B0>
    8b54:	02002025 	move	a0,s0
    8b58:	02002025 	move	a0,s0
    8b5c:	2405000e 	li	a1,14
    8b60:	0c000000 	jal	0 <func_801069B0>
    8b64:	2406001a 	li	a2,26
    8b68:	3c050000 	lui	a1,0x0
    8b6c:	3c060000 	lui	a2,0x0
    8b70:	24c60000 	addiu	a2,a2,0
    8b74:	24a50000 	addiu	a1,a1,0
    8b78:	0c000000 	jal	0 <func_801069B0>
    8b7c:	02002025 	move	a0,s0
    8b80:	02002025 	move	a0,s0
    8b84:	24050010 	li	a1,16
    8b88:	0c000000 	jal	0 <func_801069B0>
    8b8c:	2406001a 	li	a2,26
    8b90:	8fb80060 	lw	t8,96(sp)
    8b94:	3c060001 	lui	a2,0x1
    8b98:	3c050000 	lui	a1,0x0
    8b9c:	00d83021 	addu	a2,a2,t8
    8ba0:	94c603d0 	lhu	a2,976(a2)
    8ba4:	24a50000 	addiu	a1,a1,0
    8ba8:	0c000000 	jal	0 <func_801069B0>
    8bac:	02002025 	move	a0,s0
    8bb0:	0c000000 	jal	0 <func_801069B0>
    8bb4:	02002025 	move	a0,s0
    8bb8:	8fb90064 	lw	t9,100(sp)
    8bbc:	02002025 	move	a0,s0
    8bc0:	0c000000 	jal	0 <func_801069B0>
    8bc4:	af220000 	sw	v0,0(t9)
    8bc8:	8fbf0024 	lw	ra,36(sp)
    8bcc:	8fb00020 	lw	s0,32(sp)
    8bd0:	27bd0060 	addiu	sp,sp,96
    8bd4:	03e00008 	jr	ra
    8bd8:	00000000 	nop

00008bdc <func_8010F58C>:
    8bdc:	27bdffa8 	addiu	sp,sp,-88
    8be0:	afbf001c 	sw	ra,28(sp)
    8be4:	afb10018 	sw	s1,24(sp)
    8be8:	afb00014 	sw	s0,20(sp)
    8bec:	8c850000 	lw	a1,0(a0)
    8bf0:	00808825 	move	s1,a0
    8bf4:	3c060000 	lui	a2,0x0
    8bf8:	24c60000 	addiu	a2,a2,0
    8bfc:	27a40038 	addiu	a0,sp,56
    8c00:	24070de2 	li	a3,3554
    8c04:	0c000000 	jal	0 <func_801069B0>
    8c08:	00a08025 	move	s0,a1
    8c0c:	3c0e0000 	lui	t6,0x0
    8c10:	91ce0f40 	lbu	t6,3904(t6)
    8c14:	27a4004e 	addiu	a0,sp,78
    8c18:	a7ae004e 	sh	t6,78(sp)
    8c1c:	0c000000 	jal	0 <func_801069B0>
    8c20:	8e250000 	lw	a1,0(s1)
    8c24:	3c0f0000 	lui	t7,0x0
    8c28:	8def0000 	lw	t7,0(t7)
    8c2c:	3c190001 	lui	t9,0x1
    8c30:	0331c821 	addu	t9,t9,s1
    8c34:	85f812d4 	lh	t8,4820(t7)
    8c38:	5300001e 	beqzl	t8,8cb4 <func_8010F58C+0xd8>
    8c3c:	8e0402c0 	lw	a0,704(s0)
    8c40:	973903d0 	lhu	t9,976(t9)
    8c44:	5320001b 	beqzl	t9,8cb4 <func_8010F58C+0xd8>
    8c48:	8e0402c0 	lw	a0,704(s0)
    8c4c:	8e0402c0 	lw	a0,704(s0)
    8c50:	0c000000 	jal	0 <func_801069B0>
    8c54:	afa40050 	sw	a0,80(sp)
    8c58:	afa20054 	sw	v0,84(sp)
    8c5c:	8e0302b0 	lw	v1,688(s0)
    8c60:	3c09de00 	lui	t1,0xde00
    8c64:	02202025 	move	a0,s1
    8c68:	24680008 	addiu	t0,v1,8
    8c6c:	ae0802b0 	sw	t0,688(s0)
    8c70:	ac690000 	sw	t1,0(v1)
    8c74:	8faa0054 	lw	t2,84(sp)
    8c78:	27a50054 	addiu	a1,sp,84
    8c7c:	0c000000 	jal	0 <func_801069B0>
    8c80:	ac6a0004 	sw	t2,4(v1)
    8c84:	8fab0054 	lw	t3,84(sp)
    8c88:	3c0ddf00 	lui	t5,0xdf00
    8c8c:	256c0008 	addiu	t4,t3,8
    8c90:	afac0054 	sw	t4,84(sp)
    8c94:	ad600004 	sw	zero,4(t3)
    8c98:	ad6d0000 	sw	t5,0(t3)
    8c9c:	8fa50054 	lw	a1,84(sp)
    8ca0:	0c000000 	jal	0 <func_801069B0>
    8ca4:	8fa40050 	lw	a0,80(sp)
    8ca8:	8fae0054 	lw	t6,84(sp)
    8cac:	ae0e02c0 	sw	t6,704(s0)
    8cb0:	8e0402c0 	lw	a0,704(s0)
    8cb4:	0c000000 	jal	0 <func_801069B0>
    8cb8:	afa40050 	sw	a0,80(sp)
    8cbc:	afa20054 	sw	v0,84(sp)
    8cc0:	8e0302b0 	lw	v1,688(s0)
    8cc4:	3c18de00 	lui	t8,0xde00
    8cc8:	02202025 	move	a0,s1
    8ccc:	246f0008 	addiu	t7,v1,8
    8cd0:	ae0f02b0 	sw	t7,688(s0)
    8cd4:	ac780000 	sw	t8,0(v1)
    8cd8:	8fb90054 	lw	t9,84(sp)
    8cdc:	27a50054 	addiu	a1,sp,84
    8ce0:	0c000000 	jal	0 <func_801069B0>
    8ce4:	ac790004 	sw	t9,4(v1)
    8ce8:	8fa80054 	lw	t0,84(sp)
    8cec:	3c0adf00 	lui	t2,0xdf00
    8cf0:	25090008 	addiu	t1,t0,8
    8cf4:	afa90054 	sw	t1,84(sp)
    8cf8:	ad000004 	sw	zero,4(t0)
    8cfc:	ad0a0000 	sw	t2,0(t0)
    8d00:	8fa50054 	lw	a1,84(sp)
    8d04:	0c000000 	jal	0 <func_801069B0>
    8d08:	8fa40050 	lw	a0,80(sp)
    8d0c:	8fab0054 	lw	t3,84(sp)
    8d10:	3c060000 	lui	a2,0x0
    8d14:	24c60000 	addiu	a2,a2,0
    8d18:	ae0b02c0 	sw	t3,704(s0)
    8d1c:	8e250000 	lw	a1,0(s1)
    8d20:	27a40038 	addiu	a0,sp,56
    8d24:	0c000000 	jal	0 <func_801069B0>
    8d28:	24070dfe 	li	a3,3582
    8d2c:	8fbf001c 	lw	ra,28(sp)
    8d30:	8fb00014 	lw	s0,20(sp)
    8d34:	8fb10018 	lw	s1,24(sp)
    8d38:	03e00008 	jr	ra
    8d3c:	27bd0058 	addiu	sp,sp,88

00008d40 <func_8010F6F0>:
    8d40:	27bdffa8 	addiu	sp,sp,-88
    8d44:	afbf001c 	sw	ra,28(sp)
    8d48:	afa40058 	sw	a0,88(sp)
    8d4c:	3c090000 	lui	t1,0x0
    8d50:	8c8f1c44 	lw	t7,7236(a0)
    8d54:	25290000 	addiu	t1,t1,0
    8d58:	8d260000 	lw	a2,0(t1)
    8d5c:	afaf004c 	sw	t7,76(sp)
    8d60:	24820014 	addiu	v0,a0,20
    8d64:	84d812d4 	lh	t8,4820(a2)
    8d68:	5300004e 	beqzl	t8,8ea4 <func_8010F6F0+0x164>
    8d6c:	8fb80058 	lw	t8,88(sp)
    8d70:	9459000c 	lhu	t9,12(v0)
    8d74:	2401fbff 	li	at,-1025
    8d78:	03215027 	nor	t2,t9,at
    8d7c:	5540001d 	bnezl	t2,8df4 <func_8010F6F0+0xb4>
    8d80:	84d90530 	lh	t9,1328(a2)
    8d84:	944b0000 	lhu	t3,0(v0)
    8d88:	2401ffdf 	li	at,-33
    8d8c:	3c040000 	lui	a0,0x0
    8d90:	01616027 	nor	t4,t3,at
    8d94:	15800016 	bnez	t4,8df0 <func_8010F6F0+0xb0>
    8d98:	24840000 	addiu	a0,a0,0
    8d9c:	3c050000 	lui	a1,0x0
    8da0:	0c000000 	jal	0 <func_801069B0>
    8da4:	94a50000 	lhu	a1,0(a1)
    8da8:	3c090000 	lui	t1,0x0
    8dac:	25290000 	addiu	t1,t1,0
    8db0:	8d2d0000 	lw	t5,0(t1)
    8db4:	8fa40058 	lw	a0,88(sp)
    8db8:	00003025 	move	a2,zero
    8dbc:	0c000000 	jal	0 <func_801069B0>
    8dc0:	95a50532 	lhu	a1,1330(t5)
    8dc4:	3c0f0000 	lui	t7,0x0
    8dc8:	95ef0000 	lhu	t7,0(t7)
    8dcc:	2401000a 	li	at,10
    8dd0:	3c090000 	lui	t1,0x0
    8dd4:	25f80001 	addiu	t8,t7,1
    8dd8:	0301001a 	div	zero,t8,at
    8ddc:	00007010 	mfhi	t6
    8de0:	3c010000 	lui	at,0x0
    8de4:	25290000 	addiu	t1,t1,0
    8de8:	a42e0000 	sh	t6,0(at)
    8dec:	8d260000 	lw	a2,0(t1)
    8df0:	84d90530 	lh	t9,1328(a2)
    8df4:	5320002b 	beqzl	t9,8ea4 <func_8010F6F0+0x164>
    8df8:	8fb80058 	lw	t8,88(sp)
    8dfc:	84c50532 	lh	a1,1330(a2)
    8e00:	34078000 	li	a3,0x8000
    8e04:	3c080000 	lui	t0,0x0
    8e08:	10e50025 	beq	a3,a1,8ea0 <func_8010F6F0+0x160>
    8e0c:	25080000 	addiu	t0,t0,0
    8e10:	3404fffd 	li	a0,0xfffd
    8e14:	8d020000 	lw	v0,0(t0)
    8e18:	24af0001 	addiu	t7,a1,1
    8e1c:	94430000 	lhu	v1,0(v0)
    8e20:	5083001b 	beql	a0,v1,8e90 <func_8010F6F0+0x150>
    8e24:	a4cf0532 	sh	t7,1330(a2)
    8e28:	54650015 	bnel	v1,a1,8e80 <func_8010F6F0+0x140>
    8e2c:	94430008 	lhu	v1,8(v0)
    8e30:	3c040000 	lui	a0,0x0
    8e34:	0c000000 	jal	0 <func_801069B0>
    8e38:	24840000 	addiu	a0,a0,0
    8e3c:	3c090000 	lui	t1,0x0
    8e40:	25290000 	addiu	t1,t1,0
    8e44:	8d2a0000 	lw	t2,0(t1)
    8e48:	8fa40058 	lw	a0,88(sp)
    8e4c:	00003025 	move	a2,zero
    8e50:	0c000000 	jal	0 <func_801069B0>
    8e54:	95450532 	lhu	a1,1330(t2)
    8e58:	3c090000 	lui	t1,0x0
    8e5c:	25290000 	addiu	t1,t1,0
    8e60:	8d260000 	lw	a2,0(t1)
    8e64:	84cb0532 	lh	t3,1330(a2)
    8e68:	256c0001 	addiu	t4,t3,1
    8e6c:	a4cc0532 	sh	t4,1330(a2)
    8e70:	8d2d0000 	lw	t5,0(t1)
    8e74:	100002f5 	b	9a4c <L8010FE58+0x5a4>
    8e78:	a5a00530 	sh	zero,1328(t5)
    8e7c:	94430008 	lhu	v1,8(v0)
    8e80:	24420008 	addiu	v0,v0,8
    8e84:	1483ffe8 	bne	a0,v1,8e28 <func_8010F6F0+0xe8>
    8e88:	00000000 	nop
    8e8c:	a4cf0532 	sh	t7,1330(a2)
    8e90:	8d260000 	lw	a2,0(t1)
    8e94:	84c50532 	lh	a1,1330(a2)
    8e98:	54e5ffdf 	bnel	a3,a1,8e18 <func_8010F6F0+0xd8>
    8e9c:	8d020000 	lw	v0,0(t0)
    8ea0:	8fb80058 	lw	t8,88(sp)
    8ea4:	34018000 	li	at,0x8000
    8ea8:	270e20d8 	addiu	t6,t8,8408
    8eac:	afae0030 	sw	t6,48(sp)
    8eb0:	01c14021 	addu	t0,t6,at
    8eb4:	8d196300 	lw	t9,25344(t0)
    8eb8:	532002e5 	beqzl	t9,9a50 <L8010FE58+0x5a8>
    8ebc:	8fbf001c 	lw	ra,28(sp)
    8ec0:	91056304 	lbu	a1,25348(t0)
    8ec4:	28a10036 	slti	at,a1,54
    8ec8:	14200008 	bnez	at,8eec <func_8010F6F0+0x1ac>
    8ecc:	24010036 	li	at,54
    8ed0:	10a1020a 	beq	a1,at,96fc <L8010FE58+0x254>
    8ed4:	8fac0030 	lw	t4,48(sp)
    8ed8:	24010037 	li	at,55
    8edc:	50a102dc 	beql	a1,at,9a50 <L8010FE58+0x5a8>
    8ee0:	8fbf001c 	lw	ra,28(sp)
    8ee4:	100002d6 	b	9a40 <L8010FE58+0x598>
    8ee8:	8fac0030 	lw	t4,48(sp)
    8eec:	28a10035 	slti	at,a1,53
    8ef0:	14200005 	bnez	at,8f08 <func_8010F6F0+0x1c8>
    8ef4:	24010035 	li	at,53
    8ef8:	50a10185 	beql	a1,at,9510 <L8010FE58+0x68>
    8efc:	910263e4 	lbu	v0,25572(t0)
    8f00:	100002cf 	b	9a40 <L8010FE58+0x598>
    8f04:	8fac0030 	lw	t4,48(sp)
    8f08:	28a10009 	slti	at,a1,9
    8f0c:	14200006 	bnez	at,8f28 <func_8010F6F0+0x1e8>
    8f10:	24aaffff 	addiu	t2,a1,-1
    8f14:	24010034 	li	at,52
    8f18:	10a1016f 	beq	a1,at,94d8 <L8010FE58+0x30>
    8f1c:	8fa40058 	lw	a0,88(sp)
    8f20:	100002c7 	b	9a40 <L8010FE58+0x598>
    8f24:	8fac0030 	lw	t4,48(sp)
    8f28:	2d410008 	sltiu	at,t2,8
    8f2c:	102002c3 	beqz	at,9a3c <L8010FE58+0x594>
    8f30:	000a5080 	sll	t2,t2,0x2
    8f34:	3c010000 	lui	at,0x0
    8f38:	002a0821 	addu	at,at,t2
    8f3c:	8c2a0000 	lw	t2,0(at)
    8f40:	01400008 	jr	t2
    8f44:	00000000 	nop

00008f48 <L8010F8F8>:
    8f48:	3c040000 	lui	a0,0x0
    8f4c:	24840000 	addiu	a0,a0,0
    8f50:	908b0000 	lbu	t3,0(a0)
    8f54:	24010040 	li	at,64
    8f58:	00001825 	move	v1,zero
    8f5c:	256c0001 	addiu	t4,t3,1
    8f60:	a08c0000 	sb	t4,0(a0)
    8f64:	84c204b2 	lh	v0,1202(a2)
    8f68:	318d00ff 	andi	t5,t4,0xff
    8f6c:	14410005 	bne	v0,at,8f84 <L8010F8F8+0x3c>
    8f70:	29a10004 	slti	at,t5,4
    8f74:	14200013 	bnez	at,8fc4 <L8010F8F8+0x7c>
    8f78:	00000000 	nop
    8f7c:	10000011 	b	8fc4 <L8010F8F8+0x7c>
    8f80:	24030001 	li	v1,1
    8f84:	14400005 	bnez	v0,8f9c <L8010F8F8+0x54>
    8f88:	8faf0058 	lw	t7,88(sp)
    8f8c:	85f800a4 	lh	t8,164(t7)
    8f90:	24010045 	li	at,69
    8f94:	57010004 	bnel	t8,at,8fa8 <L8010F8F8+0x60>
    8f98:	908e0000 	lbu	t6,0(a0)
    8f9c:	10000009 	b	8fc4 <L8010F8F8+0x7c>
    8fa0:	24030001 	li	v1,1
    8fa4:	908e0000 	lbu	t6,0(a0)
    8fa8:	29c10004 	slti	at,t6,4
    8fac:	50200005 	beqzl	at,8fc4 <L8010F8F8+0x7c>
    8fb0:	24030001 	li	v1,1
    8fb4:	8d196408 	lw	t9,25608(t0)
    8fb8:	17200002 	bnez	t9,8fc4 <L8010F8F8+0x7c>
    8fbc:	00000000 	nop
    8fc0:	24030001 	li	v1,1
    8fc4:	506002a2 	beqzl	v1,9a50 <L8010FE58+0x5a8>
    8fc8:	8fbf001c 	lw	ra,28(sp)
    8fcc:	8d0a6408 	lw	t2,25608(t0)
    8fd0:	8fa40058 	lw	a0,88(sp)
    8fd4:	27a70040 	addiu	a3,sp,64
    8fd8:	5140002e 	beqzl	t2,9094 <L8010F8F8+0x14c>
    8fdc:	84d90b24 	lh	t9,2852(a2)
    8fe0:	8c851c44 	lw	a1,7236(a0)
    8fe4:	afa80024 	sw	t0,36(sp)
    8fe8:	0c000000 	jal	0 <func_801069B0>
    8fec:	27a60044 	addiu	a2,sp,68
    8ff0:	8fa80024 	lw	t0,36(sp)
    8ff4:	8fa40058 	lw	a0,88(sp)
    8ff8:	27a60044 	addiu	a2,sp,68
    8ffc:	27a7003e 	addiu	a3,sp,62
    9000:	0c000000 	jal	0 <func_801069B0>
    9004:	8d056408 	lw	a1,25608(t0)
    9008:	87a2003e 	lh	v0,62(sp)
    900c:	87a70040 	lh	a3,64(sp)
    9010:	8fa80024 	lw	t0,36(sp)
    9014:	00e2082a 	slt	at,a3,v0
    9018:	14200009 	bnez	at,9040 <L8010F8F8+0xf8>
    901c:	0047c023 	subu	t8,v0,a3
    9020:	00e26023 	subu	t4,a3,v0
    9024:	05810003 	bgez	t4,9034 <L8010F8F8+0xec>
    9028:	000c6843 	sra	t5,t4,0x1
    902c:	25810001 	addiu	at,t4,1
    9030:	00016843 	sra	t5,at,0x1
    9034:	01a27821 	addu	t7,t5,v0
    9038:	10000009 	b	9060 <L8010F8F8+0x118>
    903c:	a7af0042 	sh	t7,66(sp)
    9040:	07010003 	bgez	t8,9050 <L8010F8F8+0x108>
    9044:	00187043 	sra	t6,t8,0x1
    9048:	27010001 	addiu	at,t8,1
    904c:	00017043 	sra	t6,at,0x1
    9050:	01c72021 	addu	a0,t6,a3
    9054:	00042400 	sll	a0,a0,0x10
    9058:	00042403 	sra	a0,a0,0x10
    905c:	a7a40042 	sh	a0,66(sp)
    9060:	3c040000 	lui	a0,0x0
    9064:	24840000 	addiu	a0,a0,0
    9068:	87a50044 	lh	a1,68(sp)
    906c:	87a60042 	lh	a2,66(sp)
    9070:	afa20010 	sw	v0,16(sp)
    9074:	0c000000 	jal	0 <func_801069B0>
    9078:	afa80024 	sw	t0,36(sp)
    907c:	3c090000 	lui	t1,0x0
    9080:	25290000 	addiu	t1,t1,0
    9084:	87a40042 	lh	a0,66(sp)
    9088:	10000007 	b	90a8 <L8010F8F8+0x160>
    908c:	8fa80024 	lw	t0,36(sp)
    9090:	84d90b24 	lh	t9,2852(a2)
    9094:	a4d90f14 	sh	t9,3860(a2)
    9098:	8d260000 	lw	a2,0(t1)
    909c:	84ca0b26 	lh	t2,2854(a2)
    90a0:	a4ca0f16 	sh	t2,3862(a2)
    90a4:	87a40042 	lh	a0,66(sp)
    90a8:	910262fe 	lbu	v0,25342(t0)
    90ac:	910362fd 	lbu	v1,25341(t0)
    90b0:	24010001 	li	at,1
    90b4:	1440003e 	bnez	v0,91b0 <L8010F8F8+0x268>
    90b8:	00000000 	nop
    90bc:	8d260000 	lw	a2,0(t1)
    90c0:	8fac0058 	lw	t4,88(sp)
    90c4:	84cb04b2 	lh	t3,1202(a2)
    90c8:	55600006 	bnezl	t3,90e4 <L8010F8F8+0x19c>
    90cc:	84cd0b4c 	lh	t5,2892(a2)
    90d0:	858200a4 	lh	v0,164(t4)
    90d4:	24010045 	li	at,69
    90d8:	54410011 	bnel	v0,at,9120 <L8010F8F8+0x1d8>
    90dc:	24010020 	li	at,32
    90e0:	84cd0b4c 	lh	t5,2892(a2)
    90e4:	00031040 	sll	v0,v1,0x1
    90e8:	3c180000 	lui	t8,0x0
    90ec:	008d082a 	slt	at,a0,t5
    90f0:	10200007 	beqz	at,9110 <L8010F8F8+0x1c8>
    90f4:	0302c021 	addu	t8,t8,v0
    90f8:	00031040 	sll	v0,v1,0x1
    90fc:	3c0f0000 	lui	t7,0x0
    9100:	01e27821 	addu	t7,t7,v0
    9104:	85ef0000 	lh	t7,0(t7)
    9108:	10000041 	b	9210 <L8010F8F8+0x2c8>
    910c:	a4cf0b26 	sh	t7,2854(a2)
    9110:	87180000 	lh	t8,0(t8)
    9114:	1000003e 	b	9210 <L8010F8F8+0x2c8>
    9118:	a4d80b26 	sh	t8,2854(a2)
    911c:	24010020 	li	at,32
    9120:	10410005 	beq	v0,at,9138 <L8010F8F8+0x1f0>
    9124:	24010021 	li	at,33
    9128:	10410003 	beq	v0,at,9138 <L8010F8F8+0x1f0>
    912c:	24010022 	li	at,34
    9130:	54410011 	bnel	v0,at,9178 <L8010F8F8+0x230>
    9134:	84cb0b50 	lh	t3,2896(a2)
    9138:	84ce0b4e 	lh	t6,2894(a2)
    913c:	00031040 	sll	v0,v1,0x1
    9140:	3c0a0000 	lui	t2,0x0
    9144:	008e082a 	slt	at,a0,t6
    9148:	10200007 	beqz	at,9168 <L8010F8F8+0x220>
    914c:	01425021 	addu	t2,t2,v0
    9150:	00031040 	sll	v0,v1,0x1
    9154:	3c190000 	lui	t9,0x0
    9158:	0322c821 	addu	t9,t9,v0
    915c:	87390000 	lh	t9,0(t9)
    9160:	1000002b 	b	9210 <L8010F8F8+0x2c8>
    9164:	a4d90b26 	sh	t9,2854(a2)
    9168:	854a0000 	lh	t2,0(t2)
    916c:	10000028 	b	9210 <L8010F8F8+0x2c8>
    9170:	a4ca0b26 	sh	t2,2854(a2)
    9174:	84cb0b50 	lh	t3,2896(a2)
    9178:	00031040 	sll	v0,v1,0x1
    917c:	3c0d0000 	lui	t5,0x0
    9180:	008b082a 	slt	at,a0,t3
    9184:	10200007 	beqz	at,91a4 <L8010F8F8+0x25c>
    9188:	01a26821 	addu	t5,t5,v0
    918c:	00031040 	sll	v0,v1,0x1
    9190:	3c0c0000 	lui	t4,0x0
    9194:	01826021 	addu	t4,t4,v0
    9198:	858c0000 	lh	t4,0(t4)
    919c:	1000001c 	b	9210 <L8010F8F8+0x2c8>
    91a0:	a4cc0b26 	sh	t4,2854(a2)
    91a4:	85ad0000 	lh	t5,0(t5)
    91a8:	10000019 	b	9210 <L8010F8F8+0x2c8>
    91ac:	a4cd0b26 	sh	t5,2854(a2)
    91b0:	14410008 	bne	v0,at,91d4 <L8010F8F8+0x28c>
    91b4:	00402025 	move	a0,v0
    91b8:	00031040 	sll	v0,v1,0x1
    91bc:	3c0f0000 	lui	t7,0x0
    91c0:	01e27821 	addu	t7,t7,v0
    91c4:	85ef0000 	lh	t7,0(t7)
    91c8:	8d380000 	lw	t8,0(t1)
    91cc:	10000010 	b	9210 <L8010F8F8+0x2c8>
    91d0:	a70f0b26 	sh	t7,2854(t8)
    91d4:	24010002 	li	at,2
    91d8:	14810008 	bne	a0,at,91fc <L8010F8F8+0x2b4>
    91dc:	00031040 	sll	v0,v1,0x1
    91e0:	00031040 	sll	v0,v1,0x1
    91e4:	3c0e0000 	lui	t6,0x0
    91e8:	01c27021 	addu	t6,t6,v0
    91ec:	85ce0000 	lh	t6,0(t6)
    91f0:	8d390000 	lw	t9,0(t1)
    91f4:	10000006 	b	9210 <L8010F8F8+0x2c8>
    91f8:	a72e0b26 	sh	t6,2854(t9)
    91fc:	3c0a0000 	lui	t2,0x0
    9200:	01425021 	addu	t2,t2,v0
    9204:	854a0000 	lh	t2,0(t2)
    9208:	8d2b0000 	lw	t3,0(t1)
    920c:	a56a0b26 	sh	t2,2854(t3)
    9210:	3c0c0000 	lui	t4,0x0
    9214:	01826021 	addu	t4,t4,v0
    9218:	858c0000 	lh	t4,0(t4)
    921c:	8d2d0000 	lw	t5,0(t1)
    9220:	3c180000 	lui	t8,0x0
    9224:	0302c021 	addu	t8,t8,v0
    9228:	a5ac0b24 	sh	t4,2852(t5)
    922c:	8d260000 	lw	a2,0(t1)
    9230:	87180000 	lh	t8,0(t8)
    9234:	3c040000 	lui	a0,0x0
    9238:	84cf0b26 	lh	t7,2854(a2)
    923c:	24840000 	addiu	a0,a0,0
    9240:	01f87021 	addu	t6,t7,t8
    9244:	a4ce0b16 	sh	t6,2838(a2)
    9248:	8d260000 	lw	a2,0(t1)
    924c:	84d90b26 	lh	t9,2854(a2)
    9250:	272a0014 	addiu	t2,t9,20
    9254:	a4ca0b1a 	sh	t2,2842(a2)
    9258:	8d260000 	lw	a2,0(t1)
    925c:	84cb0b26 	lh	t3,2854(a2)
    9260:	256c0020 	addiu	t4,t3,32
    9264:	a4cc0b1c 	sh	t4,2844(a2)
    9268:	8d260000 	lw	a2,0(t1)
    926c:	84cd0b26 	lh	t5,2854(a2)
    9270:	25af002c 	addiu	t7,t5,44
    9274:	a4cf0b1e 	sh	t7,2846(a2)
    9278:	910562fc 	lbu	a1,25340(t0)
    927c:	afa80024 	sw	t0,36(sp)
    9280:	0c000000 	jal	0 <func_801069B0>
    9284:	30a500f0 	andi	a1,a1,0xf0
    9288:	8fa80024 	lw	t0,36(sp)
    928c:	3c090000 	lui	t1,0x0
    9290:	24010004 	li	at,4
    9294:	910262fd 	lbu	v0,25341(t0)
    9298:	25290000 	addiu	t1,t1,0
    929c:	8fae0030 	lw	t6,48(sp)
    92a0:	10410002 	beq	v0,at,92ac <L8010F8F8+0x364>
    92a4:	24010005 	li	at,5
    92a8:	14410015 	bne	v0,at,9300 <L8010F8F8+0x3b8>
    92ac:	24180003 	li	t8,3
    92b0:	25c17fff 	addiu	at,t6,32767
    92b4:	a0386305 	sb	t8,25349(at)
    92b8:	8d260000 	lw	a2,0(t1)
    92bc:	240b0100 	li	t3,256
    92c0:	240d0040 	li	t5,64
    92c4:	84d90b24 	lh	t9,2852(a2)
    92c8:	24020200 	li	v0,512
    92cc:	a4d90f14 	sh	t9,3860(a2)
    92d0:	8d260000 	lw	a2,0(t1)
    92d4:	84ca0b26 	lh	t2,2854(a2)
    92d8:	a4ca0f16 	sh	t2,3862(a2)
    92dc:	8d2c0000 	lw	t4,0(t1)
    92e0:	a58b04c0 	sh	t3,1216(t4)
    92e4:	8d2f0000 	lw	t7,0(t1)
    92e8:	a5ed04c2 	sh	t5,1218(t7)
    92ec:	8d380000 	lw	t8,0(t1)
    92f0:	a70204b4 	sh	v0,1204(t8)
    92f4:	8d2e0000 	lw	t6,0(t1)
    92f8:	100001d4 	b	9a4c <L8010FE58+0x5a4>
    92fc:	a5c204b6 	sh	v0,1206(t6)
    9300:	0c000000 	jal	0 <func_801069B0>
    9304:	8fa40030 	lw	a0,48(sp)
    9308:	0c000000 	jal	0 <func_801069B0>
    930c:	00002025 	move	a0,zero
    9310:	8fb90030 	lw	t9,48(sp)
    9314:	240a0002 	li	t2,2
    9318:	27217fff 	addiu	at,t9,32767
    931c:	a02063e8 	sb	zero,25576(at)
    9320:	8fab0030 	lw	t3,48(sp)
    9324:	25617fff 	addiu	at,t3,32767
    9328:	100001c8 	b	9a4c <L8010FE58+0x5a4>
    932c:	a02a6305 	sb	t2,25349(at)

00009330 <L8010FCE0>:
    9330:	0c000000 	jal	0 <func_801069B0>
    9334:	8fa40030 	lw	a0,48(sp)
    9338:	100001c5 	b	9a50 <L8010FE58+0x5a8>
    933c:	8fbf001c 	lw	ra,28(sp)

00009340 <L8010FCF0>:
    9340:	8fad0030 	lw	t5,48(sp)
    9344:	240c0004 	li	t4,4
    9348:	25a17fff 	addiu	at,t5,32767
    934c:	a02c6305 	sb	t4,25349(at)
    9350:	8d2f0000 	lw	t7,0(t1)
    9354:	8fa40058 	lw	a0,88(sp)
    9358:	85f804d2 	lh	t8,1234(t7)
    935c:	570001bc 	bnezl	t8,9a50 <L8010FE58+0x5a8>
    9360:	8fbf001c 	lw	ra,28(sp)
    9364:	0c000000 	jal	0 <func_801069B0>
    9368:	24050010 	li	a1,16
    936c:	100001b8 	b	9a50 <L8010FE58+0x5a8>
    9370:	8fbf001c 	lw	ra,28(sp)

00009374 <L8010FD24>:
    9374:	8fa40058 	lw	a0,88(sp)
    9378:	0c000000 	jal	0 <func_801069B0>
    937c:	afa80024 	sw	t0,36(sp)
    9380:	3c0e0000 	lui	t6,0x0
    9384:	85ce0000 	lh	t6,0(t6)
    9388:	8fa80024 	lw	t0,36(sp)
    938c:	24040001 	li	a0,1
    9390:	11c00004 	beqz	t6,93a4 <L8010FD24+0x30>
    9394:	00000000 	nop
    9398:	0c000000 	jal	0 <func_801069B0>
    939c:	afa80024 	sw	t0,36(sp)
    93a0:	8fa80024 	lw	t0,36(sp)
    93a4:	3c190000 	lui	t9,0x0
    93a8:	93390000 	lbu	t9,0(t9)
    93ac:	8fab0030 	lw	t3,48(sp)
    93b0:	532001a7 	beqzl	t9,9a50 <L8010FE58+0x5a8>
    93b4:	8fbf001c 	lw	ra,28(sp)
    93b8:	950a63d4 	lhu	t2,25556(t0)
    93bc:	25617fff 	addiu	at,t3,32767
    93c0:	a42a63d3 	sh	t2,25555(at)
    93c4:	3c010000 	lui	at,0x0
    93c8:	100001a0 	b	9a4c <L8010FE58+0x5a4>
    93cc:	a0200000 	sb	zero,0(at)

000093d0 <L8010FD80>:
    93d0:	910c63e7 	lbu	t4,25575(t0)
    93d4:	8faf0030 	lw	t7,48(sp)
    93d8:	258dffff 	addiu	t5,t4,-1
    93dc:	25e17fff 	addiu	at,t7,32767
    93e0:	a02d63e8 	sb	t5,25576(at)
    93e4:	911863e7 	lbu	t8,25575(t0)
    93e8:	57000199 	bnezl	t8,9a50 <L8010FE58+0x5a8>
    93ec:	8fbf001c 	lw	ra,28(sp)
    93f0:	0c000000 	jal	0 <func_801069B0>
    93f4:	8fa40058 	lw	a0,88(sp)
    93f8:	10000195 	b	9a50 <L8010FE58+0x5a8>
    93fc:	8fbf001c 	lw	ra,28(sp)

00009400 <L8010FDB0>:
    9400:	910e62fd 	lbu	t6,25341(t0)
    9404:	24010004 	li	at,4
    9408:	51c10191 	beql	t6,at,9a50 <L8010FE58+0x5a8>
    940c:	8fbf001c 	lw	ra,28(sp)
    9410:	84d904d2 	lh	t9,1234(a2)
    9414:	8faa0058 	lw	t2,88(sp)
    9418:	5720018d 	bnezl	t9,9a50 <L8010FE58+0x5a8>
    941c:	8fbf001c 	lw	ra,28(sp)
    9420:	954b0020 	lhu	t3,32(t2)
    9424:	2401bfff 	li	at,-16385
    9428:	01616027 	nor	t4,t3,at
    942c:	55800188 	bnezl	t4,9a50 <L8010FE58+0x5a8>
    9430:	8fbf001c 	lw	ra,28(sp)
    9434:	950d63d6 	lhu	t5,25558(t0)
    9438:	240f0001 	li	t7,1
    943c:	3c010000 	lui	at,0x0
    9440:	55a00183 	bnezl	t5,9a50 <L8010FE58+0x5a8>
    9444:	8fbf001c 	lw	ra,28(sp)
    9448:	8fae0030 	lw	t6,48(sp)
    944c:	a02f0000 	sb	t7,0(at)
    9450:	951863d4 	lhu	t8,25556(t0)
    9454:	25c17fff 	addiu	at,t6,32767
    9458:	1000017c 	b	9a4c <L8010FE58+0x5a4>
    945c:	a43863d3 	sh	t8,25555(at)

00009460 <L8010FE10>:
    9460:	84d904d2 	lh	t9,1234(a2)
    9464:	8fa40058 	lw	a0,88(sp)
    9468:	57200179 	bnezl	t9,9a50 <L8010FE58+0x5a8>
    946c:	8fbf001c 	lw	ra,28(sp)
    9470:	0c000000 	jal	0 <func_801069B0>
    9474:	afa80024 	sw	t0,36(sp)
    9478:	10400174 	beqz	v0,9a4c <L8010FE58+0x5a4>
    947c:	8fa80024 	lw	t0,36(sp)
    9480:	8fab0030 	lw	t3,48(sp)
    9484:	240a0006 	li	t2,6
    9488:	25617fff 	addiu	at,t3,32767
    948c:	a02a6305 	sb	t2,25349(at)
    9490:	8faf0030 	lw	t7,48(sp)
    9494:	950c63d2 	lhu	t4,25554(t0)
    9498:	25e17fff 	addiu	at,t7,32767
    949c:	258d0001 	addiu	t5,t4,1
    94a0:	1000016a 	b	9a4c <L8010FE58+0x5a4>
    94a4:	a42d63d3 	sh	t5,25555(at)

000094a8 <L8010FE58>:
    94a8:	911863e7 	lbu	t8,25575(t0)
    94ac:	8fb90030 	lw	t9,48(sp)
    94b0:	270effff 	addiu	t6,t8,-1
    94b4:	27217fff 	addiu	at,t9,32767
    94b8:	a02e63e8 	sb	t6,25576(at)
    94bc:	910a63e7 	lbu	t2,25575(t0)
    94c0:	8fac0030 	lw	t4,48(sp)
    94c4:	15400161 	bnez	t2,9a4c <L8010FE58+0x5a4>
    94c8:	25817fff 	addiu	at,t4,32767
    94cc:	240b0004 	li	t3,4
    94d0:	1000015e 	b	9a4c <L8010FE58+0x5a4>
    94d4:	a02b6305 	sb	t3,25349(at)
    94d8:	0c000000 	jal	0 <func_801069B0>
    94dc:	afa80024 	sw	t0,36(sp)
    94e0:	1040015a 	beqz	v0,9a4c <L8010FE58+0x5a4>
    94e4:	8fa80024 	lw	t0,36(sp)
    94e8:	8fa20030 	lw	v0,48(sp)
    94ec:	240d0004 	li	t5,4
    94f0:	24417fff 	addiu	at,v0,32767
    94f4:	a02d6305 	sb	t5,25349(at)
    94f8:	a42063d7 	sh	zero,25559(at)
    94fc:	950f63ce 	lhu	t7,25550(t0)
    9500:	25f80001 	addiu	t8,t7,1
    9504:	10000151 	b	9a4c <L8010FE58+0x5a4>
    9508:	a43863cf 	sh	t8,25551(at)
    950c:	910263e4 	lbu	v0,25572(t0)
    9510:	24010060 	li	at,96
    9514:	8faa0030 	lw	t2,48(sp)
    9518:	5441000d 	bnel	v0,at,9550 <L8010FE58+0xa8>
    951c:	24010040 	li	at,64
    9520:	910e63e7 	lbu	t6,25575(t0)
    9524:	25417fff 	addiu	at,t2,32767
    9528:	25d9ffff 	addiu	t9,t6,-1
    952c:	a03963e8 	sb	t9,25576(at)
    9530:	910b63e7 	lbu	t3,25575(t0)
    9534:	55600146 	bnezl	t3,9a50 <L8010FE58+0x5a8>
    9538:	8fbf001c 	lw	ra,28(sp)
    953c:	0c000000 	jal	0 <func_801069B0>
    9540:	8fa40058 	lw	a0,88(sp)
    9544:	10000142 	b	9a50 <L8010FE58+0x5a8>
    9548:	8fbf001c 	lw	ra,28(sp)
    954c:	24010040 	li	at,64
    9550:	1041013e 	beq	v0,at,9a4c <L8010FE58+0x5a4>
    9554:	24010050 	li	at,80
    9558:	5041013d 	beql	v0,at,9a50 <L8010FE58+0x5a8>
    955c:	8fbf001c 	lw	ra,28(sp)
    9560:	84cc04d2 	lh	t4,1234(a2)
    9564:	24010010 	li	at,16
    9568:	55800139 	bnezl	t4,9a50 <L8010FE58+0x5a8>
    956c:	8fbf001c 	lw	ra,28(sp)
    9570:	14410034 	bne	v0,at,9644 <L8010FE58+0x19c>
    9574:	8fad0058 	lw	t5,88(sp)
    9578:	3c010001 	lui	at,0x1
    957c:	01a11021 	addu	v0,t5,at
    9580:	944f04c6 	lhu	t7,1222(v0)
    9584:	24010001 	li	at,1
    9588:	01a02025 	move	a0,t5
    958c:	55e1002e 	bnel	t7,at,9648 <L8010FE58+0x1a0>
    9590:	8fa40058 	lw	a0,88(sp)
    9594:	afa20030 	sw	v0,48(sp)
    9598:	0c000000 	jal	0 <func_801069B0>
    959c:	afa80024 	sw	t0,36(sp)
    95a0:	1040012a 	beqz	v0,9a4c <L8010FE58+0x5a4>
    95a4:	8fa80024 	lw	t0,36(sp)
    95a8:	8fb80030 	lw	t8,48(sp)
    95ac:	3c040000 	lui	a0,0x0
    95b0:	24840000 	addiu	a0,a0,0
    95b4:	970504c6 	lhu	a1,1222(t8)
    95b8:	0c000000 	jal	0 <func_801069B0>
    95bc:	afa80024 	sw	t0,36(sp)
    95c0:	8fa80024 	lw	t0,36(sp)
    95c4:	3c030000 	lui	v1,0x0
    95c8:	3c040000 	lui	a0,0x0
    95cc:	910e63e5 	lbu	t6,25573(t0)
    95d0:	24630000 	addiu	v1,v1,0
    95d4:	8fac0058 	lw	t4,88(sp)
    95d8:	15c00007 	bnez	t6,95f8 <L8010FE58+0x150>
    95dc:	24840000 	addiu	a0,a0,0
    95e0:	8faa0058 	lw	t2,88(sp)
    95e4:	3c010001 	lui	at,0x1
    95e8:	24190002 	li	t9,2
    95ec:	002a0821 	addu	at,at,t2
    95f0:	10000005 	b	9608 <L8010FE58+0x160>
    95f4:	a43904c6 	sh	t9,1222(at)
    95f8:	3c010001 	lui	at,0x1
    95fc:	002c0821 	addu	at,at,t4
    9600:	240b0004 	li	t3,4
    9604:	a42b04c6 	sh	t3,1222(at)
    9608:	946513fa 	lhu	a1,5114(v1)
    960c:	8faf0030 	lw	t7,48(sp)
    9610:	24060001 	li	a2,1
    9614:	30a5000f 	andi	a1,a1,0xf
    9618:	0c000000 	jal	0 <func_801069B0>
    961c:	95e704c6 	lhu	a3,1222(t7)
    9620:	0c000000 	jal	0 <func_801069B0>
    9624:	8fa40058 	lw	a0,88(sp)
    9628:	8fad0030 	lw	t5,48(sp)
    962c:	3c040000 	lui	a0,0x0
    9630:	24840000 	addiu	a0,a0,0
    9634:	0c000000 	jal	0 <func_801069B0>
    9638:	95a504c6 	lhu	a1,1222(t5)
    963c:	10000104 	b	9a50 <L8010FE58+0x5a8>
    9640:	8fbf001c 	lw	ra,28(sp)
    9644:	8fa40058 	lw	a0,88(sp)
    9648:	0c000000 	jal	0 <func_801069B0>
    964c:	afa80024 	sw	t0,36(sp)
    9650:	104000fe 	beqz	v0,9a4c <L8010FE58+0x5a4>
    9654:	8fa80024 	lw	t0,36(sp)
    9658:	3c040000 	lui	a0,0x0
    965c:	910563e4 	lbu	a1,25572(t0)
    9660:	afa80024 	sw	t0,36(sp)
    9664:	0c000000 	jal	0 <func_801069B0>
    9668:	24840000 	addiu	a0,a0,0
    966c:	8fa80024 	lw	t0,36(sp)
    9670:	24010030 	li	at,48
    9674:	3c070000 	lui	a3,0x0
    9678:	911863e4 	lbu	t8,25572(t0)
    967c:	24e70000 	addiu	a3,a3,0
    9680:	24044808 	li	a0,18440
    9684:	17010012 	bne	t8,at,96d0 <L8010FE58+0x228>
    9688:	3c050000 	lui	a1,0x0
    968c:	3c070000 	lui	a3,0x0
    9690:	3c0e0000 	lui	t6,0x0
    9694:	24e70000 	addiu	a3,a3,0
    9698:	25ce0000 	addiu	t6,t6,0
    969c:	3c050000 	lui	a1,0x0
    96a0:	24a50000 	addiu	a1,a1,0
    96a4:	afae0014 	sw	t6,20(sp)
    96a8:	afa70010 	sw	a3,16(sp)
    96ac:	24044818 	li	a0,18456
    96b0:	0c000000 	jal	0 <func_801069B0>
    96b4:	24060004 	li	a2,4
    96b8:	3c050000 	lui	a1,0x0
    96bc:	94a50000 	lhu	a1,0(a1)
    96c0:	0c000000 	jal	0 <func_801069B0>
    96c4:	8fa40058 	lw	a0,88(sp)
    96c8:	100000e1 	b	9a50 <L8010FE58+0x5a8>
    96cc:	8fbf001c 	lw	ra,28(sp)
    96d0:	3c190000 	lui	t9,0x0
    96d4:	27390000 	addiu	t9,t9,0
    96d8:	afb90014 	sw	t9,20(sp)
    96dc:	24a50000 	addiu	a1,a1,0
    96e0:	24060004 	li	a2,4
    96e4:	0c000000 	jal	0 <func_801069B0>
    96e8:	afa70010 	sw	a3,16(sp)
    96ec:	0c000000 	jal	0 <func_801069B0>
    96f0:	8fa40058 	lw	a0,88(sp)
    96f4:	100000d6 	b	9a50 <L8010FE58+0x5a8>
    96f8:	8fbf001c 	lw	ra,28(sp)
    96fc:	910a63e7 	lbu	t2,25575(t0)
    9700:	25817fff 	addiu	at,t4,32767
    9704:	254bffff 	addiu	t3,t2,-1
    9708:	a02b63e8 	sb	t3,25576(at)
    970c:	910f63e7 	lbu	t7,25575(t0)
    9710:	55e000cf 	bnezl	t7,9a50 <L8010FE58+0x5a8>
    9714:	8fbf001c 	lw	ra,28(sp)
    9718:	950262f8 	lhu	v0,25336(t0)
    971c:	284100c2 	slti	at,v0,194
    9720:	14200002 	bnez	at,972c <L8010FE58+0x284>
    9724:	284100c7 	slti	at,v0,199
    9728:	14200004 	bnez	at,973c <L8010FE58+0x294>
    972c:	284100fa 	slti	at,v0,250
    9730:	14200007 	bnez	at,9750 <L8010FE58+0x2a8>
    9734:	284100fe 	slti	at,v0,254
    9738:	10200005 	beqz	at,9750 <L8010FE58+0x2a8>
    973c:	3c030000 	lui	v1,0x0
    9740:	24630000 	addiu	v1,v1,0
    9744:	240d0140 	li	t5,320
    9748:	a46d1424 	sh	t5,5156(v1)
    974c:	950262f8 	lhu	v0,25336(t0)
    9750:	3c030000 	lui	v1,0x0
    9754:	2401301f 	li	at,12319
    9758:	10410011 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    975c:	24630000 	addiu	v1,v1,0
    9760:	2401000a 	li	at,10
    9764:	1041000e 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    9768:	2401000c 	li	at,12
    976c:	1041000c 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    9770:	240100cf 	li	at,207
    9774:	1041000a 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    9778:	2401021c 	li	at,540
    977c:	10410008 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    9780:	24010009 	li	at,9
    9784:	10410006 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    9788:	24014078 	li	at,16504
    978c:	10410004 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    9790:	24012015 	li	at,8213
    9794:	10410002 	beq	v0,at,97a0 <L8010FE58+0x2f8>
    9798:	24013040 	li	at,12352
    979c:	14410002 	bne	v0,at,97a8 <L8010FE58+0x300>
    97a0:	24180032 	li	t8,50
    97a4:	a47813ee 	sh	t8,5102(v1)
    97a8:	8fae0058 	lw	t6,88(sp)
    97ac:	3c040000 	lui	a0,0x0
    97b0:	24840000 	addiu	a0,a0,0
    97b4:	91d91d6c 	lbu	t9,7532(t6)
    97b8:	1720003e 	bnez	t9,98b4 <L8010FE58+0x40c>
    97bc:	00000000 	nop
    97c0:	0c000000 	jal	0 <func_801069B0>
    97c4:	afa80024 	sw	t0,36(sp)
    97c8:	8faa0058 	lw	t2,88(sp)
    97cc:	3c030000 	lui	v1,0x0
    97d0:	24630000 	addiu	v1,v1,0
    97d4:	3c040000 	lui	a0,0x0
    97d8:	24840000 	addiu	a0,a0,0
    97dc:	8c650008 	lw	a1,8(v1)
    97e0:	0c000000 	jal	0 <func_801069B0>
    97e4:	854607a0 	lh	a2,1952(t2)
    97e8:	8fa80024 	lw	t0,36(sp)
    97ec:	3c030000 	lui	v1,0x0
    97f0:	24012061 	li	at,8289
    97f4:	950262f8 	lhu	v0,25336(t0)
    97f8:	24630000 	addiu	v1,v1,0
    97fc:	1041002d 	beq	v0,at,98b4 <L8010FE58+0x40c>
    9800:	24012025 	li	at,8229
    9804:	1041002b 	beq	v0,at,98b4 <L8010FE58+0x40c>
    9808:	2401208c 	li	at,8332
    980c:	10410029 	beq	v0,at,98b4 <L8010FE58+0x40c>
    9810:	2841088d 	slti	at,v0,2189
    9814:	14200005 	bnez	at,982c <L8010FE58+0x384>
    9818:	28410893 	slti	at,v0,2195
    981c:	50200004 	beqzl	at,9830 <L8010FE58+0x388>
    9820:	24013055 	li	at,12373
    9824:	910b63e5 	lbu	t3,25573(t0)
    9828:	11600022 	beqz	t3,98b4 <L8010FE58+0x40c>
    982c:	24013055 	li	at,12373
    9830:	10410020 	beq	v0,at,98b4 <L8010FE58+0x40c>
    9834:	00000000 	nop
    9838:	8c620008 	lw	v0,8(v1)
    983c:	3401fff0 	li	at,0xfff0
    9840:	3c040000 	lui	a0,0x0
    9844:	0041082a 	slt	at,v0,at
    9848:	1020001a 	beqz	at,98b4 <L8010FE58+0x40c>
    984c:	00402825 	move	a1,v0
    9850:	24840000 	addiu	a0,a0,0
    9854:	0c000000 	jal	0 <func_801069B0>
    9858:	afa80024 	sw	t0,36(sp)
    985c:	8fac0058 	lw	t4,88(sp)
    9860:	3c030000 	lui	v1,0x0
    9864:	24630000 	addiu	v1,v1,0
    9868:	858f07a0 	lh	t7,1952(t4)
    986c:	8fa80024 	lw	t0,36(sp)
    9870:	15e00010 	bnez	t7,98b4 <L8010FE58+0x40c>
    9874:	00000000 	nop
    9878:	946413ee 	lhu	a0,5102(v1)
    987c:	24010001 	li	at,1
    9880:	240d0032 	li	t5,50
    9884:	50800006 	beqzl	a0,98a0 <L8010FE58+0x3f8>
    9888:	a46d13ee 	sh	t5,5102(v1)
    988c:	10810003 	beq	a0,at,989c <L8010FE58+0x3f4>
    9890:	24010002 	li	at,2
    9894:	54810004 	bnel	a0,at,98a8 <L8010FE58+0x400>
    9898:	a46013ea 	sh	zero,5098(v1)
    989c:	a46d13ee 	sh	t5,5102(v1)
    98a0:	31a4ffff 	andi	a0,t5,0xffff
    98a4:	a46013ea 	sh	zero,5098(v1)
    98a8:	0c000000 	jal	0 <func_801069B0>
    98ac:	afa80024 	sw	t0,36(sp)
    98b0:	8fa80024 	lw	t0,36(sp)
    98b4:	3c040000 	lui	a0,0x0
    98b8:	24840000 	addiu	a0,a0,0
    98bc:	0c000000 	jal	0 <func_801069B0>
    98c0:	afa80024 	sw	t0,36(sp)
    98c4:	8fa40030 	lw	a0,48(sp)
    98c8:	8fa70058 	lw	a3,88(sp)
    98cc:	8fa80024 	lw	t0,36(sp)
    98d0:	24817fff 	addiu	at,a0,32767
    98d4:	ac206301 	sw	zero,25345(at)
    98d8:	a0206305 	sb	zero,25349(at)
    98dc:	3c010001 	lui	at,0x1
    98e0:	342104f0 	ori	at,at,0x4f0
    98e4:	00e11021 	addu	v0,a3,at
    98e8:	a44001fc 	sh	zero,508(v0)
    98ec:	845801fc 	lh	t8,508(v0)
    98f0:	24817fff 	addiu	at,a0,32767
    98f4:	3c030000 	lui	v1,0x0
    98f8:	a45801fa 	sh	t8,506(v0)
    98fc:	a02063e8 	sb	zero,25576(at)
    9900:	910e63e7 	lbu	t6,25575(t0)
    9904:	3c050001 	lui	a1,0x1
    9908:	24630000 	addiu	v1,v1,0
    990c:	a42e62f9 	sh	t6,25337(at)
    9910:	911963e4 	lbu	t9,25572(t0)
    9914:	24010040 	li	at,64
    9918:	240a0002 	li	t2,2
    991c:	17210007 	bne	t9,at,993c <L8010FE58+0x494>
    9920:	00a72821 	addu	a1,a1,a3
    9924:	24817fff 	addiu	at,a0,32767
    9928:	a02063e5 	sb	zero,25573(at)
    992c:	3c010001 	lui	at,0x1
    9930:	00270821 	addu	at,at,a3
    9934:	10000003 	b	9944 <L8010FE58+0x49c>
    9938:	a42a04c6 	sh	t2,1222(at)
    993c:	24817fff 	addiu	at,a0,32767
    9940:	a02063e5 	sb	zero,25573(at)
    9944:	8c6200a4 	lw	v0,164(v1)
    9948:	3c01f000 	lui	at,0xf000
    994c:	3c040000 	lui	a0,0x0
    9950:	00415824 	and	t3,v0,at
    9954:	3c014000 	lui	at,0x4000
    9958:	1561000a 	bne	t3,at,9984 <L8010FE58+0x4dc>
    995c:	24840000 	addiu	a0,a0,0
    9960:	846f002e 	lh	t7,46(v1)
    9964:	84780030 	lh	t8,48(v1)
    9968:	3c014000 	lui	at,0x4000
    996c:	00416026 	xor	t4,v0,at
    9970:	25ed0010 	addiu	t5,t7,16
    9974:	270e0010 	addiu	t6,t8,16
    9978:	ac6c00a4 	sw	t4,164(v1)
    997c:	a46d002e 	sh	t5,46(v1)
    9980:	a46e0030 	sh	t6,48(v1)
    9984:	950363f0 	lhu	v1,25584(t0)
    9988:	24010031 	li	at,49
    998c:	3c190000 	lui	t9,0x0
    9990:	50610023 	beql	v1,at,9a20 <L8010FE58+0x578>
    9994:	240a00ff 	li	t2,255
    9998:	87390000 	lh	t9,0(t9)
    999c:	24010006 	li	at,6
    99a0:	8fab004c 	lw	t3,76(sp)
    99a4:	17210009 	bne	t9,at,99cc <L8010FE58+0x524>
    99a8:	240aff20 	li	t2,-224
    99ac:	a56a0690 	sh	t2,1680(t3)
    99b0:	8fac004c 	lw	t4,76(sp)
    99b4:	3c010001 	lui	at,0x1
    99b8:	8d82068c 	lw	v0,1676(t4)
    99bc:	8c4f0004 	lw	t7,4(v0)
    99c0:	01e16825 	or	t5,t7,at
    99c4:	ac4d0004 	sw	t5,4(v0)
    99c8:	950363f0 	lhu	v1,25584(t0)
    99cc:	24010029 	li	at,41
    99d0:	14610012 	bne	v1,at,9a1c <L8010FE58+0x574>
    99d4:	3c020001 	lui	v0,0x1
    99d8:	00471021 	addu	v0,v0,a3
    99dc:	944204c6 	lhu	v0,1222(v0)
    99e0:	24010001 	li	at,1
    99e4:	24180004 	li	t8,4
    99e8:	10410002 	beq	v0,at,99f4 <L8010FE58+0x54c>
    99ec:	2401000b 	li	at,11
    99f0:	1441000a 	bne	v0,at,9a1c <L8010FE58+0x574>
    99f4:	3c010001 	lui	at,0x1
    99f8:	00270821 	addu	at,at,a3
    99fc:	a43804c6 	sh	t8,1222(at)
    9a00:	950e63f2 	lhu	t6,25586(t0)
    9a04:	24010009 	li	at,9
    9a08:	24190001 	li	t9,1
    9a0c:	15c10003 	bne	t6,at,9a1c <L8010FE58+0x574>
    9a10:	3c010001 	lui	at,0x1
    9a14:	00270821 	addu	at,at,a3
    9a18:	a43904c6 	sh	t9,1222(at)
    9a1c:	240a00ff 	li	t2,255
    9a20:	3c010000 	lui	at,0x0
    9a24:	a42a0000 	sh	t2,0(at)
    9a28:	950663f2 	lhu	a2,25586(t0)
    9a2c:	0c000000 	jal	0 <func_801069B0>
    9a30:	94a504c6 	lhu	a1,1222(a1)
    9a34:	10000006 	b	9a50 <L8010FE58+0x5a8>
    9a38:	8fbf001c 	lw	ra,28(sp)
    9a3c:	8fac0030 	lw	t4,48(sp)
    9a40:	240b00ff 	li	t3,255
    9a44:	25817fff 	addiu	at,t4,32767
    9a48:	a02b6411 	sb	t3,25617(at)
    9a4c:	8fbf001c 	lw	ra,28(sp)
    9a50:	27bd0058 	addiu	sp,sp,88
    9a54:	03e00008 	jr	ra
    9a58:	00000000 	nop

00009a5c <func_8011040C>:
    9a5c:	3c0e0000 	lui	t6,0x0
    9a60:	25ce0000 	addiu	t6,t6,0
    9a64:	3c010000 	lui	at,0x0
    9a68:	ac2e0000 	sw	t6,0(at)
    9a6c:	3c0f0000 	lui	t7,0x0
    9a70:	25ef0000 	addiu	t7,t7,0
    9a74:	3c010000 	lui	at,0x0
    9a78:	ac2f0000 	sw	t7,0(at)
    9a7c:	3c180000 	lui	t8,0x0
    9a80:	27180000 	addiu	t8,t8,0
    9a84:	3c010000 	lui	at,0x0
    9a88:	ac380000 	sw	t8,0(at)
    9a8c:	3c190000 	lui	t9,0x0
    9a90:	27390000 	addiu	t9,t9,0
    9a94:	3c010000 	lui	at,0x0
    9a98:	03e00008 	jr	ra
    9a9c:	ac390000 	sw	t9,0(at)
