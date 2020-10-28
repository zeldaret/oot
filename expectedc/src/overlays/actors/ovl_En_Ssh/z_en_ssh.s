
build/src/overlays/actors/ovl_En_Ssh/z_en_ssh.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B02270>:
       0:	03e00008 	jr	ra
       4:	ac8502f8 	sw	a1,760(a0)

00000008 <func_80B02278>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	3c0e0000 	lui	t6,0x0
      10:	afbf0024 	sw	ra,36(sp)
      14:	afa40040 	sw	a0,64(sp)
      18:	afa50044 	sw	a1,68(sp)
      1c:	25ce0000 	addiu	t6,t6,0
      20:	8dd80000 	lw	t8,0(t6)
      24:	27a60034 	addiu	a2,sp,52
      28:	24080064 	li	t0,100
      2c:	acd80000 	sw	t8,0(a2)
      30:	8dcf0004 	lw	t7,4(t6)
      34:	240900dc 	li	t1,220
      38:	240a0008 	li	t2,8
      3c:	accf0004 	sw	t7,4(a2)
      40:	8dd80008 	lw	t8,8(t6)
      44:	00c03825 	move	a3,a2
      48:	27a50028 	addiu	a1,sp,40
      4c:	acd80008 	sw	t8,8(a2)
      50:	8fb90040 	lw	t9,64(sp)
      54:	8fa40044 	lw	a0,68(sp)
      58:	c7240024 	lwc1	$f4,36(t9)
      5c:	e7a40028 	swc1	$f4,40(sp)
      60:	c7260080 	lwc1	$f6,128(t9)
      64:	e7a6002c 	swc1	$f6,44(sp)
      68:	c728002c 	lwc1	$f8,44(t9)
      6c:	afaa0018 	sw	t2,24(sp)
      70:	afa90014 	sw	t1,20(sp)
      74:	afa80010 	sw	t0,16(sp)
      78:	0c000000 	jal	0 <func_80B02270>
      7c:	e7a80030 	swc1	$f8,48(sp)
      80:	8fbf0024 	lw	ra,36(sp)
      84:	27bd0040 	addiu	sp,sp,64
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <func_80B02300>:
      90:	27bdfe28 	addiu	sp,sp,-472
      94:	3c0e0000 	lui	t6,0x0
      98:	8dce0000 	lw	t6,0(t6)
      9c:	3c0f0000 	lui	t7,0x0
      a0:	3c180000 	lui	t8,0x0
      a4:	8def0000 	lw	t7,0(t7)
      a8:	8f180000 	lw	t8,0(t8)
      ac:	3c190000 	lui	t9,0x0
      b0:	8f390000 	lw	t9,0(t9)
      b4:	afae0034 	sw	t6,52(sp)
      b8:	afaf0030 	sw	t7,48(sp)
      bc:	afb8002c 	sw	t8,44(sp)
      c0:	afb90028 	sw	t9,40(sp)
      c4:	93ad0031 	lbu	t5,49(sp)
      c8:	93ac0035 	lbu	t4,53(sp)
      cc:	93a80034 	lbu	t0,52(sp)
      d0:	93a90030 	lbu	t1,48(sp)
      d4:	93aa002c 	lbu	t2,44(sp)
      d8:	93ab0028 	lbu	t3,40(sp)
      dc:	93af0029 	lbu	t7,41(sp)
      e0:	93ae002d 	lbu	t6,45(sp)
      e4:	93b80036 	lbu	t8,54(sp)
      e8:	a3ad01c1 	sb	t5,449(sp)
      ec:	a3ac01bd 	sb	t4,445(sp)
      f0:	a3a801bc 	sb	t0,444(sp)
      f4:	a3a901c0 	sb	t1,448(sp)
      f8:	a3aa01c4 	sb	t2,452(sp)
      fc:	a3ab01c8 	sb	t3,456(sp)
     100:	93ab0033 	lbu	t3,51(sp)
     104:	93aa0037 	lbu	t2,55(sp)
     108:	93a9002a 	lbu	t1,42(sp)
     10c:	93a8002e 	lbu	t0,46(sp)
     110:	93ac002f 	lbu	t4,47(sp)
     114:	93ad002b 	lbu	t5,43(sp)
     118:	93b90032 	lbu	t9,50(sp)
     11c:	a3af01c9 	sb	t7,457(sp)
     120:	a3ae01c5 	sb	t6,453(sp)
     124:	a3b801be 	sb	t8,446(sp)
     128:	afbf001c 	sw	ra,28(sp)
     12c:	240e0006 	li	t6,6
     130:	240f0003 	li	t7,3
     134:	27b80038 	addiu	t8,sp,56
     138:	afae01cc 	sw	t6,460(sp)
     13c:	afa001d0 	sw	zero,464(sp)
     140:	afaf01d4 	sw	t7,468(sp)
     144:	afb80014 	sw	t8,20(sp)
     148:	27a50020 	addiu	a1,sp,32
     14c:	afa00010 	sw	zero,16(sp)
     150:	24060001 	li	a2,1
     154:	00003825 	move	a3,zero
     158:	a3ab01c3 	sb	t3,451(sp)
     15c:	a3aa01bf 	sb	t2,447(sp)
     160:	a3a901ca 	sb	t1,458(sp)
     164:	a3a801c6 	sb	t0,454(sp)
     168:	a3ac01c7 	sb	t4,455(sp)
     16c:	a3ad01cb 	sb	t5,459(sp)
     170:	0c000000 	jal	0 <func_80B02270>
     174:	a3b901c2 	sb	t9,450(sp)
     178:	8fbf001c 	lw	ra,28(sp)
     17c:	8fa20020 	lw	v0,32(sp)
     180:	27bd01d8 	addiu	sp,sp,472
     184:	03e00008 	jr	ra
     188:	00000000 	nop

0000018c <func_80B023FC>:
     18c:	27bdffb0 	addiu	sp,sp,-80
     190:	afbf0034 	sw	ra,52(sp)
     194:	afb00030 	sw	s0,48(sp)
     198:	afa50054 	sw	a1,84(sp)
     19c:	c4840024 	lwc1	$f4,36(a0)
     1a0:	3c01447a 	lui	at,0x447a
     1a4:	44814000 	mtc1	at,$f8
     1a8:	e7a4003c 	swc1	$f4,60(sp)
     1ac:	c4860028 	lwc1	$f6,40(a0)
     1b0:	00808025 	move	s0,a0
     1b4:	27ae004c 	addiu	t6,sp,76
     1b8:	46083280 	add.s	$f10,$f6,$f8
     1bc:	27b90048 	addiu	t9,sp,72
     1c0:	240f0001 	li	t7,1
     1c4:	24180001 	li	t8,1
     1c8:	e7aa0040 	swc1	$f10,64(sp)
     1cc:	c490002c 	lwc1	$f16,44(a0)
     1d0:	24a407c0 	addiu	a0,a1,1984
     1d4:	26050024 	addiu	a1,s0,36
     1d8:	afb90024 	sw	t9,36(sp)
     1dc:	afb80020 	sw	t8,32(sp)
     1e0:	afaf001c 	sw	t7,28(sp)
     1e4:	afa00018 	sw	zero,24(sp)
     1e8:	afa00014 	sw	zero,20(sp)
     1ec:	afae0010 	sw	t6,16(sp)
     1f0:	26070544 	addiu	a3,s0,1348
     1f4:	27a6003c 	addiu	a2,sp,60
     1f8:	0c000000 	jal	0 <func_80B02270>
     1fc:	e7b00044 	swc1	$f16,68(sp)
     200:	14400003 	bnez	v0,210 <func_80B023FC+0x84>
     204:	8fbf0034 	lw	ra,52(sp)
     208:	10000002 	b	214 <func_80B023FC+0x88>
     20c:	00001025 	move	v0,zero
     210:	24020001 	li	v0,1
     214:	8fb00030 	lw	s0,48(sp)
     218:	03e00008 	jr	ra
     21c:	27bd0050 	addiu	sp,sp,80

00000220 <func_80B02490>:
     220:	27bdffa8 	addiu	sp,sp,-88
     224:	3c0f0000 	lui	t7,0x0
     228:	afbf001c 	sw	ra,28(sp)
     22c:	afb00018 	sw	s0,24(sp)
     230:	25ef0000 	addiu	t7,t7,0
     234:	8df90000 	lw	t9,0(t7)
     238:	27ae004c 	addiu	t6,sp,76
     23c:	8df80004 	lw	t8,4(t7)
     240:	add90000 	sw	t9,0(t6)
     244:	8df90008 	lw	t9,8(t7)
     248:	3c090000 	lui	t1,0x0
     24c:	25290000 	addiu	t1,t1,0
     250:	add80004 	sw	t8,4(t6)
     254:	add90008 	sw	t9,8(t6)
     258:	8d2b0000 	lw	t3,0(t1)
     25c:	27a80040 	addiu	t0,sp,64
     260:	8d2a0004 	lw	t2,4(t1)
     264:	ad0b0000 	sw	t3,0(t0)
     268:	8d2b0008 	lw	t3,8(t1)
     26c:	ad0a0004 	sw	t2,4(t0)
     270:	00808025 	move	s0,a0
     274:	ad0b0008 	sw	t3,8(t0)
     278:	c486053c 	lwc1	$f6,1340(a0)
     27c:	c7a4004c 	lwc1	$f4,76(sp)
     280:	c7aa0050 	lwc1	$f10,80(sp)
     284:	46062202 	mul.s	$f8,$f4,$f6
     288:	c7a40054 	lwc1	$f4,84(sp)
     28c:	e7a8004c 	swc1	$f8,76(sp)
     290:	c490053c 	lwc1	$f16,1340(a0)
     294:	46105482 	mul.s	$f18,$f10,$f16
     298:	c7aa0040 	lwc1	$f10,64(sp)
     29c:	e7b20050 	swc1	$f18,80(sp)
     2a0:	c486053c 	lwc1	$f6,1340(a0)
     2a4:	46062202 	mul.s	$f8,$f4,$f6
     2a8:	c7a40044 	lwc1	$f4,68(sp)
     2ac:	e7a80054 	swc1	$f8,84(sp)
     2b0:	c490053c 	lwc1	$f16,1340(a0)
     2b4:	46105482 	mul.s	$f18,$f10,$f16
     2b8:	c7aa0048 	lwc1	$f10,72(sp)
     2bc:	e7b20040 	swc1	$f18,64(sp)
     2c0:	c486053c 	lwc1	$f6,1340(a0)
     2c4:	46062202 	mul.s	$f8,$f4,$f6
     2c8:	e7a80044 	swc1	$f8,68(sp)
     2cc:	c490053c 	lwc1	$f16,1340(a0)
     2d0:	46105482 	mul.s	$f18,$f10,$f16
     2d4:	0c000000 	jal	0 <func_80B02270>
     2d8:	e7b20048 	swc1	$f18,72(sp)
     2dc:	27a4004c 	addiu	a0,sp,76
     2e0:	0c000000 	jal	0 <func_80B02270>
     2e4:	27a50034 	addiu	a1,sp,52
     2e8:	27a40040 	addiu	a0,sp,64
     2ec:	0c000000 	jal	0 <func_80B02270>
     2f0:	27a50028 	addiu	a1,sp,40
     2f4:	0c000000 	jal	0 <func_80B02270>
     2f8:	00000000 	nop
     2fc:	0c000000 	jal	0 <func_80B02270>
     300:	8e040538 	lw	a0,1336(s0)
     304:	00402025 	move	a0,v0
     308:	27a50034 	addiu	a1,sp,52
     30c:	0c000000 	jal	0 <func_80B02270>
     310:	27a60028 	addiu	a2,sp,40
     314:	8fbf001c 	lw	ra,28(sp)
     318:	8fb00018 	lw	s0,24(sp)
     31c:	27bd0058 	addiu	sp,sp,88
     320:	03e00008 	jr	ra
     324:	00000000 	nop

00000328 <func_80B02598>:
     328:	27bdffe8 	addiu	sp,sp,-24
     32c:	afbf0014 	sw	ra,20(sp)
     330:	0c000000 	jal	0 <func_80B02270>
     334:	8c840538 	lw	a0,1336(a0)
     338:	0c000000 	jal	0 <func_80B02270>
     33c:	00402025 	move	a0,v0
     340:	8fbf0014 	lw	ra,20(sp)
     344:	27bd0018 	addiu	sp,sp,24
     348:	03e00008 	jr	ra
     34c:	00000000 	nop

00000350 <func_80B025C0>:
     350:	27bdff98 	addiu	sp,sp,-104
     354:	3c0f0000 	lui	t7,0x0
     358:	afbf0034 	sw	ra,52(sp)
     35c:	afb40030 	sw	s4,48(sp)
     360:	afb3002c 	sw	s3,44(sp)
     364:	afb20028 	sw	s2,40(sp)
     368:	afb10024 	sw	s1,36(sp)
     36c:	afb00020 	sw	s0,32(sp)
     370:	25ef0000 	addiu	t7,t7,0
     374:	8df90000 	lw	t9,0(t7)
     378:	8df80004 	lw	t8,4(t7)
     37c:	27ae0050 	addiu	t6,sp,80
     380:	add90000 	sw	t9,0(t6)
     384:	add80004 	sw	t8,4(t6)
     388:	8df8000c 	lw	t8,12(t7)
     38c:	8df90008 	lw	t9,8(t7)
     390:	00a09025 	move	s2,a1
     394:	add8000c 	sw	t8,12(t6)
     398:	add90008 	sw	t9,8(t6)
     39c:	8df90010 	lw	t9,16(t7)
     3a0:	8df80014 	lw	t8,20(t7)
     3a4:	00809825 	move	s3,a0
     3a8:	249002fc 	addiu	s0,a0,764
     3ac:	27b10050 	addiu	s1,sp,80
     3b0:	27b40068 	addiu	s4,sp,104
     3b4:	add90010 	sw	t9,16(t6)
     3b8:	add80014 	sw	t8,20(t6)
     3bc:	02402025 	move	a0,s2
     3c0:	0c000000 	jal	0 <func_80B02270>
     3c4:	02002825 	move	a1,s0
     3c8:	02402025 	move	a0,s2
     3cc:	02002825 	move	a1,s0
     3d0:	02603025 	move	a2,s3
     3d4:	0c000000 	jal	0 <func_80B02270>
     3d8:	8e270000 	lw	a3,0(s1)
     3dc:	26310004 	addiu	s1,s1,4
     3e0:	1634fff6 	bne	s1,s4,3bc <func_80B025C0+0x6c>
     3e4:	2610004c 	addiu	s0,s0,76
     3e8:	3c080003 	lui	t0,0x3
     3ec:	3c09ffc0 	lui	t1,0xffc0
     3f0:	3c0dffcc 	lui	t5,0xffcc
     3f4:	3508f8e9 	ori	t0,t0,0xf8e9
     3f8:	35290716 	ori	t1,t1,0x716
     3fc:	240a0009 	li	t2,9
     400:	240b000d 	li	t3,13
     404:	240c0002 	li	t4,2
     408:	35ad0716 	ori	t5,t5,0x716
     40c:	ae68031c 	sw	t0,796(s3)
     410:	ae690368 	sw	t1,872(s3)
     414:	a26a03a8 	sb	t2,936(s3)
     418:	a26b03c2 	sb	t3,962(s3)
     41c:	a26c03c0 	sb	t4,960(s3)
     420:	ae6d03b4 	sw	t5,948(s3)
     424:	0c000000 	jal	0 <func_80B02270>
     428:	24040002 	li	a0,2
     42c:	3c060000 	lui	a2,0x0
     430:	24c60000 	addiu	a2,a2,0
     434:	26640098 	addiu	a0,s3,152
     438:	0c000000 	jal	0 <func_80B02270>
     43c:	00402825 	move	a1,v0
     440:	267004c4 	addiu	s0,s3,1220
     444:	02002825 	move	a1,s0
     448:	0c000000 	jal	0 <func_80B02270>
     44c:	02402025 	move	a0,s2
     450:	3c070000 	lui	a3,0x0
     454:	266e04e4 	addiu	t6,s3,1252
     458:	afae0010 	sw	t6,16(sp)
     45c:	24e70000 	addiu	a3,a3,0
     460:	02402025 	move	a0,s2
     464:	02002825 	move	a1,s0
     468:	0c000000 	jal	0 <func_80B02270>
     46c:	02603025 	move	a2,s3
     470:	8fbf0034 	lw	ra,52(sp)
     474:	8fb00020 	lw	s0,32(sp)
     478:	8fb10024 	lw	s1,36(sp)
     47c:	8fb20028 	lw	s2,40(sp)
     480:	8fb3002c 	lw	s3,44(sp)
     484:	8fb40030 	lw	s4,48(sp)
     488:	03e00008 	jr	ra
     48c:	27bd0068 	addiu	sp,sp,104

00000490 <func_80B02700>:
     490:	27bdff80 	addiu	sp,sp,-128
     494:	3c0e0000 	lui	t6,0x0
     498:	afbf0024 	sw	ra,36(sp)
     49c:	afa40080 	sw	a0,128(sp)
     4a0:	afa50084 	sw	a1,132(sp)
     4a4:	25ce0000 	addiu	t6,t6,0
     4a8:	8dd80000 	lw	t8,0(t6)
     4ac:	27a20064 	addiu	v0,sp,100
     4b0:	3c090000 	lui	t1,0x0
     4b4:	ac580000 	sw	t8,0(v0)
     4b8:	8dcf0004 	lw	t7,4(t6)
     4bc:	25290000 	addiu	t1,t1,0
     4c0:	27b90048 	addiu	t9,sp,72
     4c4:	ac4f0004 	sw	t7,4(v0)
     4c8:	8dd80008 	lw	t8,8(t6)
     4cc:	3c0d0000 	lui	t5,0x0
     4d0:	25ad0000 	addiu	t5,t5,0
     4d4:	ac580008 	sw	t8,8(v0)
     4d8:	8dcf000c 	lw	t7,12(t6)
     4dc:	27ac0040 	addiu	t4,sp,64
     4e0:	ac4f000c 	sw	t7,12(v0)
     4e4:	8dd80010 	lw	t8,16(t6)
     4e8:	ac580010 	sw	t8,16(v0)
     4ec:	8dcf0014 	lw	t7,20(t6)
     4f0:	ac4f0014 	sw	t7,20(v0)
     4f4:	8dd80018 	lw	t8,24(t6)
     4f8:	ac580018 	sw	t8,24(v0)
     4fc:	8d2b0000 	lw	t3,0(t1)
     500:	8d2a0004 	lw	t2,4(t1)
     504:	af2b0000 	sw	t3,0(t9)
     508:	8d2b0008 	lw	t3,8(t1)
     50c:	af2a0004 	sw	t2,4(t9)
     510:	8d2a000c 	lw	t2,12(t1)
     514:	af2b0008 	sw	t3,8(t9)
     518:	8d2b0010 	lw	t3,16(t1)
     51c:	af2a000c 	sw	t2,12(t9)
     520:	8d2a0014 	lw	t2,20(t1)
     524:	af2b0010 	sw	t3,16(t9)
     528:	8d2b0018 	lw	t3,24(t1)
     52c:	af2a0014 	sw	t2,20(t9)
     530:	af2b0018 	sw	t3,24(t9)
     534:	8daf0000 	lw	t7,0(t5)
     538:	ad8f0000 	sw	t7,0(t4)
     53c:	99af0006 	lwr	t7,6(t5)
     540:	b98f0006 	swr	t7,6(t4)
     544:	8fa30084 	lw	v1,132(sp)
     548:	00031880 	sll	v1,v1,0x2
     54c:	00434021 	addu	t0,v0,v1
     550:	8d040000 	lw	a0,0(t0)
     554:	afa80030 	sw	t0,48(sp)
     558:	0c000000 	jal	0 <func_80B02270>
     55c:	afa30034 	sw	v1,52(sp)
     560:	44822000 	mtc1	v0,$f4
     564:	8fa30034 	lw	v1,52(sp)
     568:	8fa80030 	lw	t0,48(sp)
     56c:	46802020 	cvt.s.w	$f0,$f4
     570:	8fb90084 	lw	t9,132(sp)
     574:	03a3c021 	addu	t8,sp,v1
     578:	3c01c0c0 	lui	at,0xc0c0
     57c:	03b94821 	addu	t1,sp,t9
     580:	44813000 	mtc1	at,$f6
     584:	e7a0003c 	swc1	$f0,60(sp)
     588:	8f060048 	lw	a2,72(t8)
     58c:	8d050000 	lw	a1,0(t0)
     590:	e7a00010 	swc1	$f0,16(sp)
     594:	91290040 	lbu	t1,64(t1)
     598:	8fa40080 	lw	a0,128(sp)
     59c:	24070000 	li	a3,0
     5a0:	e7a60018 	swc1	$f6,24(sp)
     5a4:	afa90014 	sw	t1,20(sp)
     5a8:	0c000000 	jal	0 <func_80B02270>
     5ac:	2484014c 	addiu	a0,a0,332
     5b0:	8fbf0024 	lw	ra,36(sp)
     5b4:	c7a0003c 	lwc1	$f0,60(sp)
     5b8:	27bd0080 	addiu	sp,sp,128
     5bc:	03e00008 	jr	ra
     5c0:	00000000 	nop

000005c4 <func_80B02834>:
     5c4:	27bdffe8 	addiu	sp,sp,-24
     5c8:	afbf0014 	sw	ra,20(sp)
     5cc:	0c000000 	jal	0 <func_80B02270>
     5d0:	24050002 	li	a1,2
     5d4:	8fbf0014 	lw	ra,20(sp)
     5d8:	27bd0018 	addiu	sp,sp,24
     5dc:	03e00008 	jr	ra
     5e0:	00000000 	nop

000005e4 <func_80B02854>:
     5e4:	27bdffe8 	addiu	sp,sp,-24
     5e8:	afbf0014 	sw	ra,20(sp)
     5ec:	afa40018 	sw	a0,24(sp)
     5f0:	0c000000 	jal	0 <func_80B02270>
     5f4:	24053869 	li	a1,14441
     5f8:	8fa40018 	lw	a0,24(sp)
     5fc:	0c000000 	jal	0 <func_80B02270>
     600:	24050001 	li	a1,1
     604:	8fbf0014 	lw	ra,20(sp)
     608:	27bd0018 	addiu	sp,sp,24
     60c:	03e00008 	jr	ra
     610:	00000000 	nop

00000614 <func_80B02884>:
     614:	27bdffe8 	addiu	sp,sp,-24
     618:	afbf0014 	sw	ra,20(sp)
     61c:	c4860080 	lwc1	$f6,128(a0)
     620:	c4840540 	lwc1	$f4,1344(a0)
     624:	24050003 	li	a1,3
     628:	46062200 	add.s	$f8,$f4,$f6
     62c:	e4880028 	swc1	$f8,40(a0)
     630:	0c000000 	jal	0 <func_80B02270>
     634:	afa40018 	sw	a0,24(sp)
     638:	4600028d 	trunc.w.s	$f10,$f0
     63c:	8fa40018 	lw	a0,24(sp)
     640:	440f5000 	mfc1	t7,$f10
     644:	00000000 	nop
     648:	a48f0534 	sh	t7,1332(a0)
     64c:	8fbf0014 	lw	ra,20(sp)
     650:	27bd0018 	addiu	sp,sp,24
     654:	03e00008 	jr	ra
     658:	00000000 	nop

0000065c <func_80B028CC>:
     65c:	27bdffe8 	addiu	sp,sp,-24
     660:	afbf0014 	sw	ra,20(sp)
     664:	848e0528 	lh	t6,1320(a0)
     668:	24050004 	li	a1,4
     66c:	55c00009 	bnezl	t6,694 <func_80B028CC+0x38>
     670:	3c01c120 	lui	at,0xc120
     674:	0c000000 	jal	0 <func_80B02270>
     678:	afa40018 	sw	a0,24(sp)
     67c:	4600010d 	trunc.w.s	$f4,$f0
     680:	8fa40018 	lw	a0,24(sp)
     684:	44182000 	mfc1	t8,$f4
     688:	00000000 	nop
     68c:	a4980534 	sh	t8,1332(a0)
     690:	3c01c120 	lui	at,0xc120
     694:	44813000 	mtc1	at,$f6
     698:	00000000 	nop
     69c:	e4860060 	swc1	$f6,96(a0)
     6a0:	8fbf0014 	lw	ra,20(sp)
     6a4:	27bd0018 	addiu	sp,sp,24
     6a8:	03e00008 	jr	ra
     6ac:	00000000 	nop

000006b0 <func_80B02920>:
     6b0:	848e0532 	lh	t6,1330(a0)
     6b4:	24190078 	li	t9,120
     6b8:	15c00006 	bnez	t6,6d4 <func_80B02920+0x24>
     6bc:	00000000 	nop
     6c0:	948f05ca 	lhu	t7,1482(a0)
     6c4:	a4990532 	sh	t9,1330(a0)
     6c8:	a0800114 	sb	zero,276(a0)
     6cc:	35f80008 	ori	t8,t7,0x8
     6d0:	a49805ca 	sh	t8,1482(a0)
     6d4:	03e00008 	jr	ra
     6d8:	00000000 	nop

000006dc <func_80B0294C>:
     6dc:	27bdffe8 	addiu	sp,sp,-24
     6e0:	44857000 	mtc1	a1,$f14
     6e4:	afbf0014 	sw	ra,20(sp)
     6e8:	afa40018 	sw	a0,24(sp)
     6ec:	afa60020 	sw	a2,32(sp)
     6f0:	8c8504e0 	lw	a1,1248(a0)
     6f4:	00803025 	move	a2,a0
     6f8:	00801025 	move	v0,a0
     6fc:	84ae002e 	lh	t6,46(a1)
     700:	240401c8 	li	a0,456
     704:	00001825 	move	v1,zero
     708:	448e2000 	mtc1	t6,$f4
     70c:	00000000 	nop
     710:	46802320 	cvt.s.w	$f12,$f4
     714:	460e6302 	mul.s	$f12,$f12,$f14
     718:	4600618d 	trunc.w.s	$f6,$f12
     71c:	44183000 	mfc1	t8,$f6
     720:	00000000 	nop
     724:	a4b8002e 	sh	t8,46(a1)
     728:	c7a80020 	lwc1	$f8,32(sp)
     72c:	46087402 	mul.s	$f16,$f14,$f8
     730:	00000000 	nop
     734:	2463004c 	addiu	v1,v1,76
     738:	10640019 	beq	v1,a0,7a0 <func_80B0294C+0xc4>
     73c:	84590340 	lh	t9,832(v0)
     740:	8448033c 	lh	t0,828(v0)
     744:	44999000 	mtc1	t9,$f18
     748:	8449033e 	lh	t1,830(v0)
     74c:	44886000 	mtc1	t0,$f12
     750:	468094a0 	cvt.s.w	$f18,$f18
     754:	44895000 	mtc1	t1,$f10
     758:	2463004c 	addiu	v1,v1,76
     75c:	2442004c 	addiu	v0,v0,76
     760:	84590340 	lh	t9,832(v0)
     764:	46806320 	cvt.s.w	$f12,$f12
     768:	460e9482 	mul.s	$f18,$f18,$f14
     76c:	468052a0 	cvt.s.w	$f10,$f10
     770:	46106302 	mul.s	$f12,$f12,$f16
     774:	4600948d 	trunc.w.s	$f18,$f18
     778:	460e5282 	mul.s	$f10,$f10,$f14
     77c:	440b9000 	mfc1	t3,$f18
     780:	4600630d 	trunc.w.s	$f12,$f12
     784:	a44b02f4 	sh	t3,756(v0)
     788:	4600528d 	trunc.w.s	$f10,$f10
     78c:	440d6000 	mfc1	t5,$f12
     790:	440f5000 	mfc1	t7,$f10
     794:	a44d02f0 	sh	t5,752(v0)
     798:	1464ffe9 	bne	v1,a0,740 <func_80B0294C+0x64>
     79c:	a44f02f2 	sh	t7,754(v0)
     7a0:	44999000 	mtc1	t9,$f18
     7a4:	8448033c 	lh	t0,828(v0)
     7a8:	8449033e 	lh	t1,830(v0)
     7ac:	468094a0 	cvt.s.w	$f18,$f18
     7b0:	44886000 	mtc1	t0,$f12
     7b4:	44895000 	mtc1	t1,$f10
     7b8:	2442004c 	addiu	v0,v0,76
     7bc:	46806320 	cvt.s.w	$f12,$f12
     7c0:	460e9482 	mul.s	$f18,$f18,$f14
     7c4:	00000000 	nop
     7c8:	46106302 	mul.s	$f12,$f12,$f16
     7cc:	468052a0 	cvt.s.w	$f10,$f10
     7d0:	4600948d 	trunc.w.s	$f18,$f18
     7d4:	460e5282 	mul.s	$f10,$f10,$f14
     7d8:	440b9000 	mfc1	t3,$f18
     7dc:	4600630d 	trunc.w.s	$f12,$f12
     7e0:	a44b02f4 	sh	t3,756(v0)
     7e4:	4600528d 	trunc.w.s	$f10,$f10
     7e8:	440d6000 	mfc1	t5,$f12
     7ec:	440f5000 	mfc1	t7,$f10
     7f0:	a44d02f0 	sh	t5,752(v0)
     7f4:	a44f02f2 	sh	t7,754(v0)
     7f8:	3c010000 	lui	at,0x0
     7fc:	c4320000 	lwc1	$f18,0(at)
     800:	00c02025 	move	a0,a2
     804:	afa60018 	sw	a2,24(sp)
     808:	460e9102 	mul.s	$f4,$f18,$f14
     80c:	e7ae001c 	swc1	$f14,28(sp)
     810:	44052000 	mfc1	a1,$f4
     814:	0c000000 	jal	0 <func_80B02270>
     818:	00000000 	nop
     81c:	3c014220 	lui	at,0x4220
     820:	c7ae001c 	lwc1	$f14,28(sp)
     824:	44813000 	mtc1	at,$f6
     828:	3c013fc0 	lui	at,0x3fc0
     82c:	44815000 	mtc1	at,$f10
     830:	460e3202 	mul.s	$f8,$f6,$f14
     834:	8fa60018 	lw	a2,24(sp)
     838:	460a7482 	mul.s	$f18,$f14,$f10
     83c:	e4c80540 	swc1	$f8,1344(a2)
     840:	e4d2053c 	swc1	$f18,1340(a2)
     844:	8fbf0014 	lw	ra,20(sp)
     848:	27bd0018 	addiu	sp,sp,24
     84c:	03e00008 	jr	ra
     850:	00000000 	nop

00000854 <func_80B02AC4>:
     854:	27bdffd8 	addiu	sp,sp,-40
     858:	afbf0024 	sw	ra,36(sp)
     85c:	afb00020 	sw	s0,32(sp)
     860:	84820532 	lh	v0,1330(a0)
     864:	24010078 	li	at,120
     868:	00808025 	move	s0,a0
     86c:	1441000a 	bne	v0,at,898 <func_80B02AC4+0x44>
     870:	00000000 	nop
     874:	948e05ca 	lhu	t6,1482(a0)
     878:	00002825 	move	a1,zero
     87c:	240600c8 	li	a2,200
     880:	31cf0001 	andi	t7,t6,0x1
     884:	11e00004 	beqz	t7,898 <func_80B02AC4+0x44>
     888:	00003825 	move	a3,zero
     88c:	0c000000 	jal	0 <func_80B02270>
     890:	afa20010 	sw	v0,16(sp)
     894:	86020532 	lh	v0,1330(s0)
     898:	14400003 	bnez	v0,8a8 <func_80B02AC4+0x54>
     89c:	2458ffff 	addiu	t8,v0,-1
     8a0:	10000003 	b	8b0 <func_80B02AC4+0x5c>
     8a4:	00001825 	move	v1,zero
     8a8:	a6180532 	sh	t8,1330(s0)
     8ac:	86030532 	lh	v1,1330(s0)
     8b0:	1060000a 	beqz	v1,8dc <func_80B02AC4+0x88>
     8b4:	02002025 	move	a0,s0
     8b8:	24190001 	li	t9,1
     8bc:	afb90010 	sw	t9,16(sp)
     8c0:	26040526 	addiu	a0,s0,1318
     8c4:	24052710 	li	a1,10000
     8c8:	2406000a 	li	a2,10
     8cc:	0c000000 	jal	0 <func_80B02270>
     8d0:	240703e8 	li	a3,1000
     8d4:	10000010 	b	918 <func_80B02AC4+0xc4>
     8d8:	00001025 	move	v0,zero
     8dc:	960805ca 	lhu	t0,1482(s0)
     8e0:	860a0536 	lh	t2,1334(s0)
     8e4:	a6000532 	sh	zero,1330(s0)
     8e8:	3109fffe 	andi	t1,t0,0xfffe
     8ec:	a60905ca 	sh	t1,1482(s0)
     8f0:	15400003 	bnez	t2,900 <func_80B02AC4+0xac>
     8f4:	a600052a 	sh	zero,1322(s0)
     8f8:	240b001e 	li	t3,30
     8fc:	a60b052a 	sh	t3,1322(s0)
     900:	0c000000 	jal	0 <func_80B02270>
     904:	24053884 	li	a1,14468
     908:	02002025 	move	a0,s0
     90c:	0c000000 	jal	0 <func_80B02270>
     910:	24056868 	li	a1,26728
     914:	24020001 	li	v0,1
     918:	8fbf0024 	lw	ra,36(sp)
     91c:	8fb00020 	lw	s0,32(sp)
     920:	27bd0028 	addiu	sp,sp,40
     924:	03e00008 	jr	ra
     928:	00000000 	nop

0000092c <func_80B02B9C>:
     92c:	27bdffd8 	addiu	sp,sp,-40
     930:	afbf0024 	sw	ra,36(sp)
     934:	afb00020 	sw	s0,32(sp)
     938:	afa5002c 	sw	a1,44(sp)
     93c:	8482052c 	lh	v0,1324(a0)
     940:	00808025 	move	s0,a0
     944:	10400002 	beqz	v0,950 <func_80B02B9C+0x24>
     948:	244effff 	addiu	t6,v0,-1
     94c:	a48e052c 	sh	t6,1324(a0)
     950:	8602052a 	lh	v0,1322(s0)
     954:	14400003 	bnez	v0,964 <func_80B02B9C+0x38>
     958:	244fffff 	addiu	t7,v0,-1
     95c:	10000004 	b	970 <func_80B02B9C+0x44>
     960:	00001825 	move	v1,zero
     964:	a60f052a 	sh	t7,1322(s0)
     968:	8602052a 	lh	v0,1322(s0)
     96c:	00401825 	move	v1,v0
     970:	50600012 	beqzl	v1,9bc <func_80B02B9C+0x90>
     974:	86090536 	lh	t1,1334(s0)
     978:	44822000 	mtc1	v0,$f4
     97c:	3c0141f0 	lui	at,0x41f0
     980:	44814000 	mtc1	at,$f8
     984:	468021a0 	cvt.s.w	$f6,$f4
     988:	86180032 	lh	t8,50(s0)
     98c:	3c010000 	lui	at,0x0
     990:	c4300000 	lwc1	$f16,0(at)
     994:	44982000 	mtc1	t8,$f4
     998:	46083283 	div.s	$f10,$f6,$f8
     99c:	468021a0 	cvt.s.w	$f6,$f4
     9a0:	460a8482 	mul.s	$f18,$f16,$f10
     9a4:	46123200 	add.s	$f8,$f6,$f18
     9a8:	4600440d 	trunc.w.s	$f16,$f8
     9ac:	44088000 	mfc1	t0,$f16
     9b0:	1000000d 	b	9e8 <func_80B02B9C+0xbc>
     9b4:	a6080032 	sh	t0,50(s0)
     9b8:	86090536 	lh	t1,1334(s0)
     9bc:	5520000b 	bnezl	t1,9ec <func_80B02B9C+0xc0>
     9c0:	860c0032 	lh	t4,50(s0)
     9c4:	860a0532 	lh	t2,1330(s0)
     9c8:	26040032 	addiu	a0,s0,50
     9cc:	24060004 	li	a2,4
     9d0:	15400005 	bnez	t2,9e8 <func_80B02B9C+0xbc>
     9d4:	24072710 	li	a3,10000
     9d8:	8605008a 	lh	a1,138(s0)
     9dc:	240b0001 	li	t3,1
     9e0:	0c000000 	jal	0 <func_80B02270>
     9e4:	afab0010 	sw	t3,16(sp)
     9e8:	860c0032 	lh	t4,50(s0)
     9ec:	a60c00b6 	sh	t4,182(s0)
     9f0:	8fbf0024 	lw	ra,36(sp)
     9f4:	8fb00020 	lw	s0,32(sp)
     9f8:	27bd0028 	addiu	sp,sp,40
     9fc:	03e00008 	jr	ra
     a00:	00000000 	nop

00000a04 <func_80B02C74>:
     a04:	27bdffd8 	addiu	sp,sp,-40
     a08:	afbf0024 	sw	ra,36(sp)
     a0c:	afb00020 	sw	s0,32(sp)
     a10:	afa5002c 	sw	a1,44(sp)
     a14:	848e0536 	lh	t6,1334(a0)
     a18:	00808025 	move	s0,a0
     a1c:	55c0000e 	bnezl	t6,a58 <func_80B02C74+0x54>
     a20:	86020532 	lh	v0,1330(s0)
     a24:	848f0532 	lh	t7,1330(a0)
     a28:	24840032 	addiu	a0,a0,50
     a2c:	24060004 	li	a2,4
     a30:	15e00008 	bnez	t7,a54 <func_80B02C74+0x50>
     a34:	24180001 	li	t8,1
     a38:	8605008a 	lh	a1,138(s0)
     a3c:	86070526 	lh	a3,1318(s0)
     a40:	afb80010 	sw	t8,16(sp)
     a44:	38a58000 	xori	a1,a1,0x8000
     a48:	00052c00 	sll	a1,a1,0x10
     a4c:	0c000000 	jal	0 <func_80B02270>
     a50:	00052c03 	sra	a1,a1,0x10
     a54:	86020532 	lh	v0,1330(s0)
     a58:	86190032 	lh	t9,50(s0)
     a5c:	2841001e 	slti	at,v0,30
     a60:	1020000b 	beqz	at,a90 <func_80B02C74+0x8c>
     a64:	a61900b6 	sh	t9,182(s0)
     a68:	30480001 	andi	t0,v0,0x1
     a6c:	51000006 	beqzl	t0,a88 <func_80B02C74+0x84>
     a70:	860b00b6 	lh	t3,182(s0)
     a74:	860900b6 	lh	t1,182(s0)
     a78:	252a07d0 	addiu	t2,t1,2000
     a7c:	10000004 	b	a90 <func_80B02C74+0x8c>
     a80:	a60a00b6 	sh	t2,182(s0)
     a84:	860b00b6 	lh	t3,182(s0)
     a88:	256cf830 	addiu	t4,t3,-2000
     a8c:	a60c00b6 	sh	t4,182(s0)
     a90:	8fbf0024 	lw	ra,36(sp)
     a94:	8fb00020 	lw	s0,32(sp)
     a98:	27bd0028 	addiu	sp,sp,40
     a9c:	03e00008 	jr	ra
     aa0:	00000000 	nop

00000aa4 <func_80B02D14>:
     aa4:	27bdffe8 	addiu	sp,sp,-24
     aa8:	afbf0014 	sw	ra,20(sp)
     aac:	848e0532 	lh	t6,1330(a0)
     ab0:	11c00005 	beqz	t6,ac8 <func_80B02D14+0x24>
     ab4:	00000000 	nop
     ab8:	0c000000 	jal	0 <func_80B02270>
     abc:	00000000 	nop
     ac0:	10000004 	b	ad4 <func_80B02D14+0x30>
     ac4:	8fbf0014 	lw	ra,20(sp)
     ac8:	0c000000 	jal	0 <func_80B02270>
     acc:	00000000 	nop
     ad0:	8fbf0014 	lw	ra,20(sp)
     ad4:	27bd0018 	addiu	sp,sp,24
     ad8:	03e00008 	jr	ra
     adc:	00000000 	nop

00000ae0 <func_80B02D50>:
     ae0:	27bdffe0 	addiu	sp,sp,-32
     ae4:	afbf001c 	sw	ra,28(sp)
     ae8:	afa40020 	sw	a0,32(sp)
     aec:	8cae009c 	lw	t6,156(a1)
     af0:	3c013f00 	lui	at,0x3f00
     af4:	44811000 	mtc1	at,$f2
     af8:	31cf0008 	andi	t7,t6,0x8
     afc:	11e00006 	beqz	t7,b18 <func_80B02D50+0x38>
     b00:	46001006 	mov.s	$f0,$f2
     b04:	3c01bf80 	lui	at,0xbf80
     b08:	44812000 	mtc1	at,$f4
     b0c:	00000000 	nop
     b10:	46041002 	mul.s	$f0,$f2,$f4
     b14:	00000000 	nop
     b18:	8fa40020 	lw	a0,32(sp)
     b1c:	44803000 	mtc1	zero,$f6
     b20:	44050000 	mfc1	a1,$f0
     b24:	3c063ecc 	lui	a2,0x3ecc
     b28:	34c6cccd 	ori	a2,a2,0xcccd
     b2c:	3c07447a 	lui	a3,0x447a
     b30:	24840060 	addiu	a0,a0,96
     b34:	0c000000 	jal	0 <func_80B02270>
     b38:	e7a60010 	swc1	$f6,16(sp)
     b3c:	8fbf001c 	lw	ra,28(sp)
     b40:	27bd0020 	addiu	sp,sp,32
     b44:	03e00008 	jr	ra
     b48:	00000000 	nop

00000b4c <func_80B02DBC>:
     b4c:	948e05ca 	lhu	t6,1482(a0)
     b50:	8ca21c44 	lw	v0,7236(a1)
     b54:	31cf0004 	andi	t7,t6,0x4
     b58:	51e00004 	beqzl	t7,b6c <func_80B02DBC+0x20>
     b5c:	84980528 	lh	t8,1320(a0)
     b60:	03e00008 	jr	ra
     b64:	24020001 	li	v0,1
     b68:	84980528 	lh	t8,1320(a0)
     b6c:	53000004 	beqzl	t8,b80 <func_80B02DBC+0x34>
     b70:	84990536 	lh	t9,1334(a0)
     b74:	03e00008 	jr	ra
     b78:	24020001 	li	v0,1
     b7c:	84990536 	lh	t9,1334(a0)
     b80:	53200004 	beqzl	t9,b94 <func_80B02DBC+0x48>
     b84:	84880534 	lh	t0,1332(a0)
     b88:	03e00008 	jr	ra
     b8c:	24020001 	li	v0,1
     b90:	84880534 	lh	t0,1332(a0)
     b94:	3c014320 	lui	at,0x4320
     b98:	51000004 	beqzl	t0,bac <func_80B02DBC+0x60>
     b9c:	44812000 	mtc1	at,$f4
     ba0:	03e00008 	jr	ra
     ba4:	24020001 	li	v0,1
     ba8:	44812000 	mtc1	at,$f4
     bac:	c4860090 	lwc1	$f6,144(a0)
     bb0:	4606203c 	c.lt.s	$f4,$f6
     bb4:	00000000 	nop
     bb8:	45020004 	bc1fl	bcc <func_80B02DBC+0x80>
     bbc:	c4420028 	lwc1	$f2,40(v0)
     bc0:	03e00008 	jr	ra
     bc4:	00001025 	move	v0,zero
     bc8:	c4420028 	lwc1	$f2,40(v0)
     bcc:	c4880028 	lwc1	$f8,40(a0)
     bd0:	44805000 	mtc1	zero,$f10
     bd4:	3c0143c8 	lui	at,0x43c8
     bd8:	46024001 	sub.s	$f0,$f8,$f2
     bdc:	460a003c 	c.lt.s	$f0,$f10
     be0:	00000000 	nop
     be4:	45010007 	bc1t	c04 <func_80B02DBC+0xb8>
     be8:	00000000 	nop
     bec:	44818000 	mtc1	at,$f16
     bf0:	00000000 	nop
     bf4:	4600803c 	c.lt.s	$f16,$f0
     bf8:	00000000 	nop
     bfc:	45020004 	bc1fl	c10 <func_80B02DBC+0xc4>
     c00:	c4920080 	lwc1	$f18,128(a0)
     c04:	03e00008 	jr	ra
     c08:	00001025 	move	v0,zero
     c0c:	c4920080 	lwc1	$f18,128(a0)
     c10:	24020001 	li	v0,1
     c14:	4612103c 	c.lt.s	$f2,$f18
     c18:	00000000 	nop
     c1c:	45000003 	bc1f	c2c <func_80B02DBC+0xe0>
     c20:	00000000 	nop
     c24:	03e00008 	jr	ra
     c28:	00001025 	move	v0,zero
     c2c:	03e00008 	jr	ra
     c30:	00000000 	nop

00000c34 <func_80B02EA4>:
     c34:	c4800060 	lwc1	$f0,96(a0)
     c38:	c4840028 	lwc1	$f4,40(a0)
     c3c:	c488000c 	lwc1	$f8,12(a0)
     c40:	46000180 	add.s	$f6,$f0,$f0
     c44:	00001025 	move	v0,zero
     c48:	46062080 	add.s	$f2,$f4,$f6
     c4c:	4602403e 	c.le.s	$f8,$f2
     c50:	00000000 	nop
     c54:	45000003 	bc1f	c64 <func_80B02EA4+0x30>
     c58:	00000000 	nop
     c5c:	03e00008 	jr	ra
     c60:	24020001 	li	v0,1
     c64:	03e00008 	jr	ra
     c68:	00000000 	nop

00000c6c <func_80B02EDC>:
     c6c:	c4800060 	lwc1	$f0,96(a0)
     c70:	c4840028 	lwc1	$f4,40(a0)
     c74:	c48a0080 	lwc1	$f10,128(a0)
     c78:	46000180 	add.s	$f6,$f0,$f0
     c7c:	c4880540 	lwc1	$f8,1344(a0)
     c80:	00001025 	move	v0,zero
     c84:	46062080 	add.s	$f2,$f4,$f6
     c88:	460a1401 	sub.s	$f16,$f2,$f10
     c8c:	4608803e 	c.le.s	$f16,$f8
     c90:	00000000 	nop
     c94:	45000003 	bc1f	ca4 <func_80B02EDC+0x38>
     c98:	00000000 	nop
     c9c:	03e00008 	jr	ra
     ca0:	24020001 	li	v0,1
     ca4:	03e00008 	jr	ra
     ca8:	00000000 	nop

00000cac <func_80B02F1C>:
     cac:	27bdffb0 	addiu	sp,sp,-80
     cb0:	afbf0024 	sw	ra,36(sp)
     cb4:	afb00020 	sw	s0,32(sp)
     cb8:	f7b40018 	sdc1	$f20,24(sp)
     cbc:	84820536 	lh	v0,1334(a0)
     cc0:	00808025 	move	s0,a0
     cc4:	10400045 	beqz	v0,ddc <func_80B02F1C+0x130>
     cc8:	2458ffff 	addiu	t8,v0,-1
     ccc:	848e05c8 	lh	t6,1480(a0)
     cd0:	a4980536 	sh	t8,1334(a0)
     cd4:	84820536 	lh	v0,1334(a0)
     cd8:	25cf0640 	addiu	t7,t6,1600
     cdc:	a48f05c8 	sh	t7,1480(a0)
     ce0:	54400004 	bnezl	v0,cf4 <func_80B02F1C+0x48>
     ce4:	44822000 	mtc1	v0,$f4
     ce8:	a48005c8 	sh	zero,1480(a0)
     cec:	84820536 	lh	v0,1334(a0)
     cf0:	44822000 	mtc1	v0,$f4
     cf4:	3c010000 	lui	at,0x0
     cf8:	c4280000 	lwc1	$f8,0(at)
     cfc:	468021a0 	cvt.s.w	$f6,$f4
     d00:	860405c8 	lh	a0,1480(s0)
     d04:	46083502 	mul.s	$f20,$f6,$f8
     d08:	0c000000 	jal	0 <func_80B02270>
     d0c:	00000000 	nop
     d10:	3c010000 	lui	at,0x0
     d14:	c42a0000 	lwc1	$f10,0(at)
     d18:	c6060028 	lwc1	$f6,40(s0)
     d1c:	c6080548 	lwc1	$f8,1352(s0)
     d20:	460aa402 	mul.s	$f16,$f20,$f10
     d24:	46083501 	sub.s	$f20,$f6,$f8
     d28:	46100482 	mul.s	$f18,$f0,$f16
     d2c:	4600910d 	trunc.w.s	$f4,$f18
     d30:	44042000 	mfc1	a0,$f4
     d34:	00000000 	nop
     d38:	00042400 	sll	a0,a0,0x10
     d3c:	00042403 	sra	a0,a0,0x10
     d40:	0c000000 	jal	0 <func_80B02270>
     d44:	a7a40032 	sh	a0,50(sp)
     d48:	46140282 	mul.s	$f10,$f0,$f20
     d4c:	87a40032 	lh	a0,50(sp)
     d50:	0c000000 	jal	0 <func_80B02270>
     d54:	e7aa0044 	swc1	$f10,68(sp)
     d58:	46140402 	mul.s	$f16,$f0,$f20
     d5c:	44809000 	mtc1	zero,$f18
     d60:	00000000 	nop
     d64:	e7b2004c 	swc1	$f18,76(sp)
     d68:	0c000000 	jal	0 <func_80B02270>
     d6c:	e7b00048 	swc1	$f16,72(sp)
     d70:	c60c0544 	lwc1	$f12,1348(s0)
     d74:	c60e0548 	lwc1	$f14,1352(s0)
     d78:	8e06054c 	lw	a2,1356(s0)
     d7c:	0c000000 	jal	0 <func_80B02270>
     d80:	00003825 	move	a3,zero
     d84:	86080032 	lh	t0,50(s0)
     d88:	3c010000 	lui	at,0x0
     d8c:	c4280000 	lwc1	$f8,0(at)
     d90:	44882000 	mtc1	t0,$f4
     d94:	24050001 	li	a1,1
     d98:	468021a0 	cvt.s.w	$f6,$f4
     d9c:	46083302 	mul.s	$f12,$f6,$f8
     da0:	0c000000 	jal	0 <func_80B02270>
     da4:	00000000 	nop
     da8:	27a40044 	addiu	a0,sp,68
     dac:	0c000000 	jal	0 <func_80B02270>
     db0:	27a50038 	addiu	a1,sp,56
     db4:	0c000000 	jal	0 <func_80B02270>
     db8:	00000000 	nop
     dbc:	87a90032 	lh	t1,50(sp)
     dc0:	00095040 	sll	t2,t1,0x1
     dc4:	000a5823 	negu	t3,t2
     dc8:	a60b00b8 	sh	t3,184(s0)
     dcc:	c7aa0038 	lwc1	$f10,56(sp)
     dd0:	e60a0024 	swc1	$f10,36(s0)
     dd4:	c7b00040 	lwc1	$f16,64(sp)
     dd8:	e610002c 	swc1	$f16,44(s0)
     ddc:	8fbf0024 	lw	ra,36(sp)
     de0:	d7b40018 	ldc1	$f20,24(sp)
     de4:	8fb00020 	lw	s0,32(sp)
     de8:	03e00008 	jr	ra
     dec:	27bd0050 	addiu	sp,sp,80

00000df0 <func_80B03060>:
     df0:	8ca21c44 	lw	v0,7236(a1)
     df4:	844e0860 	lh	t6,2144(v0)
     df8:	24820314 	addiu	v0,a0,788
     dfc:	51c0000e 	beqzl	t6,e38 <func_80B03060+0x48>
     e00:	8c4b0008 	lw	t3,8(v0)
     e04:	24820314 	addiu	v0,a0,788
     e08:	8c4f0008 	lw	t7,8(v0)
     e0c:	2403fffd 	li	v1,-3
     e10:	35f80002 	ori	t8,t7,0x2
     e14:	ac580008 	sw	t8,8(v0)
     e18:	8c990368 	lw	t9,872(a0)
     e1c:	8c8903b4 	lw	t1,948(a0)
     e20:	03234024 	and	t0,t9,v1
     e24:	01235024 	and	t2,t1,v1
     e28:	ac880368 	sw	t0,872(a0)
     e2c:	03e00008 	jr	ra
     e30:	ac8a03b4 	sw	t2,948(a0)
     e34:	8c4b0008 	lw	t3,8(v0)
     e38:	2403fffd 	li	v1,-3
     e3c:	01636024 	and	t4,t3,v1
     e40:	ac4c0008 	sw	t4,8(v0)
     e44:	8c8d0368 	lw	t5,872(a0)
     e48:	8c8f03b4 	lw	t7,948(a0)
     e4c:	35ae0002 	ori	t6,t5,0x2
     e50:	35f80002 	ori	t8,t7,0x2
     e54:	ac8e0368 	sw	t6,872(a0)
     e58:	ac9803b4 	sw	t8,948(a0)
     e5c:	03e00008 	jr	ra
     e60:	00000000 	nop

00000e64 <func_80B030D4>:
     e64:	27bdffd8 	addiu	sp,sp,-40
     e68:	afbf0024 	sw	ra,36(sp)
     e6c:	afb00020 	sw	s0,32(sp)
     e70:	afa5002c 	sw	a1,44(sp)
     e74:	908e05cc 	lbu	t6,1484(a0)
     e78:	00808025 	move	s0,a0
     e7c:	00003825 	move	a3,zero
     e80:	15c00006 	bnez	t6,e9c <func_80B030D4+0x38>
     e84:	00001825 	move	v1,zero
     e88:	848f052a 	lh	t7,1322(a0)
     e8c:	55e00004 	bnezl	t7,ea0 <func_80B030D4+0x3c>
     e90:	02001025 	move	v0,s0
     e94:	10000030 	b	f58 <func_80B030D4+0xf4>
     e98:	00001025 	move	v0,zero
     e9c:	02001025 	move	v0,s0
     ea0:	240600e4 	li	a2,228
     ea4:	2405fffe 	li	a1,-2
     ea8:	904403f3 	lbu	a0,1011(v0)
     eac:	2463004c 	addiu	v1,v1,76
     eb0:	30980001 	andi	t8,a0,0x1
     eb4:	13000003 	beqz	t8,ec4 <func_80B030D4+0x60>
     eb8:	0085c824 	and	t9,a0,a1
     ebc:	a05903f3 	sb	t9,1011(v0)
     ec0:	24070001 	li	a3,1
     ec4:	1466fff8 	bne	v1,a2,ea8 <func_80B030D4+0x44>
     ec8:	2442004c 	addiu	v0,v0,76
     ecc:	14e00003 	bnez	a3,edc <func_80B030D4+0x78>
     ed0:	02002025 	move	a0,s0
     ed4:	10000020 	b	f58 <func_80B030D4+0xf4>
     ed8:	00001025 	move	v0,zero
     edc:	86090536 	lh	t1,1334(s0)
     ee0:	2408001e 	li	t0,30
     ee4:	a608052c 	sh	t0,1324(s0)
     ee8:	15200003 	bnez	t1,ef8 <func_80B030D4+0x94>
     eec:	00000000 	nop
     ef0:	860a052c 	lh	t2,1324(s0)
     ef4:	a60a052a 	sh	t2,1322(s0)
     ef8:	0c000000 	jal	0 <func_80B02270>
     efc:	24053884 	li	a1,14468
     f00:	02002025 	move	a0,s0
     f04:	0c000000 	jal	0 <func_80B02270>
     f08:	24056868 	li	a1,26728
     f0c:	8fa4002c 	lw	a0,44(sp)
     f10:	3c190001 	lui	t9,0x1
     f14:	2405fff8 	li	a1,-8
     f18:	0324c821 	addu	t9,t9,a0
     f1c:	8f391d58 	lw	t9,7512(t9)
     f20:	0320f809 	jalr	t9
     f24:	00000000 	nop
     f28:	3c0140c0 	lui	at,0x40c0
     f2c:	44812000 	mtc1	at,$f4
     f30:	8607008a 	lh	a3,138(s0)
     f34:	8fa4002c 	lw	a0,44(sp)
     f38:	02002825 	move	a1,s0
     f3c:	3c064080 	lui	a2,0x4080
     f40:	0c000000 	jal	0 <func_80B02270>
     f44:	e7a40010 	swc1	$f4,16(sp)
     f48:	920b05cc 	lbu	t3,1484(s0)
     f4c:	24020001 	li	v0,1
     f50:	256cffff 	addiu	t4,t3,-1
     f54:	a20c05cc 	sb	t4,1484(s0)
     f58:	8fbf0024 	lw	ra,36(sp)
     f5c:	8fb00020 	lw	s0,32(sp)
     f60:	27bd0028 	addiu	sp,sp,40
     f64:	03e00008 	jr	ra
     f68:	00000000 	nop

00000f6c <func_80B031DC>:
     f6c:	908203a5 	lbu	v0,933(a0)
     f70:	304e0002 	andi	t6,v0,0x2
     f74:	000e782b 	sltu	t7,zero,t6
     f78:	15e00003 	bnez	t7,f88 <func_80B031DC+0x1c>
     f7c:	3058fffd 	andi	t8,v0,0xfffd
     f80:	03e00008 	jr	ra
     f84:	00001025 	move	v0,zero
     f88:	84880536 	lh	t0,1334(a0)
     f8c:	24190008 	li	t9,8
     f90:	a09803a5 	sb	t8,933(a0)
     f94:	15000009 	bnez	t0,fbc <func_80B031DC+0x50>
     f98:	a499052e 	sh	t9,1326(a0)
     f9c:	8489052c 	lh	t1,1324(a0)
     fa0:	55200007 	bnezl	t1,fc0 <func_80B031DC+0x54>
     fa4:	24020001 	li	v0,1
     fa8:	848a0532 	lh	t2,1330(a0)
     fac:	240b003c 	li	t3,60
     fb0:	55400003 	bnezl	t2,fc0 <func_80B031DC+0x54>
     fb4:	24020001 	li	v0,1
     fb8:	a48b0536 	sh	t3,1334(a0)
     fbc:	24020001 	li	v0,1
     fc0:	03e00008 	jr	ra
     fc4:	00000000 	nop

00000fc8 <func_80B03238>:
     fc8:	27bdffe0 	addiu	sp,sp,-32
     fcc:	afbf001c 	sw	ra,28(sp)
     fd0:	afb00018 	sw	s0,24(sp)
     fd4:	afa50024 	sw	a1,36(sp)
     fd8:	908e030d 	lbu	t6,781(a0)
     fdc:	00808025 	move	s0,a0
     fe0:	00001825 	move	v1,zero
     fe4:	31cf0002 	andi	t7,t6,0x2
     fe8:	11e00005 	beqz	t7,1000 <func_80B03238+0x38>
     fec:	248202fc 	addiu	v0,a0,764
     ff0:	90580011 	lbu	t8,17(v0)
     ff4:	24030001 	li	v1,1
     ff8:	3319fffd 	andi	t9,t8,0xfffd
     ffc:	a0590011 	sb	t9,17(v0)
    1000:	92080359 	lbu	t0,857(s0)
    1004:	26020348 	addiu	v0,s0,840
    1008:	31090002 	andi	t1,t0,0x2
    100c:	11200005 	beqz	t1,1024 <func_80B03238+0x5c>
    1010:	00000000 	nop
    1014:	904a0011 	lbu	t2,17(v0)
    1018:	24030001 	li	v1,1
    101c:	314bfffd 	andi	t3,t2,0xfffd
    1020:	a04b0011 	sb	t3,17(v0)
    1024:	54600004 	bnezl	v1,1038 <func_80B03238+0x70>
    1028:	920205cc 	lbu	v0,1484(s0)
    102c:	10000016 	b	1088 <func_80B03238+0xc0>
    1030:	00001025 	move	v0,zero
    1034:	920205cc 	lbu	v0,1484(s0)
    1038:	240c0008 	li	t4,8
    103c:	a60c052e 	sh	t4,1326(s0)
    1040:	1c400002 	bgtz	v0,104c <func_80B03238+0x84>
    1044:	244d0001 	addiu	t5,v0,1
    1048:	a20d05cc 	sb	t5,1484(s0)
    104c:	860e0532 	lh	t6,1330(s0)
    1050:	02002025 	move	a0,s0
    1054:	15c00006 	bnez	t6,1070 <func_80B03238+0xa8>
    1058:	00000000 	nop
    105c:	0c000000 	jal	0 <func_80B02270>
    1060:	2405389e 	li	a1,14494
    1064:	02002025 	move	a0,s0
    1068:	0c000000 	jal	0 <func_80B02270>
    106c:	24056867 	li	a1,26727
    1070:	0c000000 	jal	0 <func_80B02270>
    1074:	02002025 	move	a0,s0
    1078:	960f05ca 	lhu	t7,1482(s0)
    107c:	00001025 	move	v0,zero
    1080:	35f80001 	ori	t8,t7,0x1
    1084:	a61805ca 	sh	t8,1482(s0)
    1088:	8fbf001c 	lw	ra,28(sp)
    108c:	8fb00018 	lw	s0,24(sp)
    1090:	27bd0020 	addiu	sp,sp,32
    1094:	03e00008 	jr	ra
    1098:	00000000 	nop

0000109c <func_80B0330C>:
    109c:	27bdffe0 	addiu	sp,sp,-32
    10a0:	afbf001c 	sw	ra,28(sp)
    10a4:	afb00018 	sw	s0,24(sp)
    10a8:	afa50024 	sw	a1,36(sp)
    10ac:	848e0532 	lh	t6,1330(a0)
    10b0:	00808025 	move	s0,a0
    10b4:	15c00003 	bnez	t6,10c4 <func_80B0330C+0x28>
    10b8:	00000000 	nop
    10bc:	0c000000 	jal	0 <func_80B02270>
    10c0:	00000000 	nop
    10c4:	0c000000 	jal	0 <func_80B02270>
    10c8:	02002025 	move	a0,s0
    10cc:	10400003 	beqz	v0,10dc <func_80B0330C+0x40>
    10d0:	8faf0024 	lw	t7,36(sp)
    10d4:	10000018 	b	1138 <func_80B0330C+0x9c>
    10d8:	00001025 	move	v0,zero
    10dc:	91f81c26 	lbu	t8,7206(t7)
    10e0:	02002025 	move	a0,s0
    10e4:	13000012 	beqz	t8,1130 <func_80B0330C+0x94>
    10e8:	00000000 	nop
    10ec:	86080532 	lh	t0,1330(s0)
    10f0:	24190008 	li	t9,8
    10f4:	a619052e 	sh	t9,1326(s0)
    10f8:	15000006 	bnez	t0,1114 <func_80B0330C+0x78>
    10fc:	02002025 	move	a0,s0
    1100:	0c000000 	jal	0 <func_80B02270>
    1104:	2405389e 	li	a1,14494
    1108:	02002025 	move	a0,s0
    110c:	0c000000 	jal	0 <func_80B02270>
    1110:	24056867 	li	a1,26727
    1114:	0c000000 	jal	0 <func_80B02270>
    1118:	02002025 	move	a0,s0
    111c:	960905ca 	lhu	t1,1482(s0)
    1120:	00001025 	move	v0,zero
    1124:	352a0001 	ori	t2,t1,0x1
    1128:	10000003 	b	1138 <func_80B0330C+0x9c>
    112c:	a60a05ca 	sh	t2,1482(s0)
    1130:	0c000000 	jal	0 <func_80B02270>
    1134:	8fa50024 	lw	a1,36(sp)
    1138:	8fbf001c 	lw	ra,28(sp)
    113c:	8fb00018 	lw	s0,24(sp)
    1140:	27bd0020 	addiu	sp,sp,32
    1144:	03e00008 	jr	ra
    1148:	00000000 	nop

0000114c <func_80B033BC>:
    114c:	27bdffe0 	addiu	sp,sp,-32
    1150:	afbf0014 	sw	ra,20(sp)
    1154:	afa50024 	sw	a1,36(sp)
    1158:	248602fc 	addiu	a2,a0,764
    115c:	00c02825 	move	a1,a2
    1160:	0c000000 	jal	0 <func_80B02270>
    1164:	afa6001c 	sw	a2,28(sp)
    1168:	8fa40024 	lw	a0,36(sp)
    116c:	3c010001 	lui	at,0x1
    1170:	34211e60 	ori	at,at,0x1e60
    1174:	8fa6001c 	lw	a2,28(sp)
    1178:	0c000000 	jal	0 <func_80B02270>
    117c:	00812821 	addu	a1,a0,at
    1180:	8fbf0014 	lw	ra,20(sp)
    1184:	27bd0020 	addiu	sp,sp,32
    1188:	03e00008 	jr	ra
    118c:	00000000 	nop

00001190 <func_80B03400>:
    1190:	27bdffe0 	addiu	sp,sp,-32
    1194:	afbf0014 	sw	ra,20(sp)
    1198:	848f00b6 	lh	t7,182(a0)
    119c:	848e008a 	lh	t6,138(a0)
    11a0:	00a03825 	move	a3,a1
    11a4:	24860348 	addiu	a2,a0,840
    11a8:	01cf1023 	subu	v0,t6,t7
    11ac:	00021400 	sll	v0,v0,0x10
    11b0:	00021403 	sra	v0,v0,0x10
    11b4:	04400004 	bltz	v0,11c8 <func_80B03400+0x38>
    11b8:	00021823 	negu	v1,v0
    11bc:	00021c00 	sll	v1,v0,0x10
    11c0:	10000003 	b	11d0 <func_80B03400+0x40>
    11c4:	00031c03 	sra	v1,v1,0x10
    11c8:	00031c00 	sll	v1,v1,0x10
    11cc:	00031c03 	sra	v1,v1,0x10
    11d0:	28613ffc 	slti	at,v1,16380
    11d4:	1020000e 	beqz	at,1210 <func_80B03400+0x80>
    11d8:	00c02825 	move	a1,a2
    11dc:	24860394 	addiu	a2,a0,916
    11e0:	00c02825 	move	a1,a2
    11e4:	afa60018 	sw	a2,24(sp)
    11e8:	0c000000 	jal	0 <func_80B02270>
    11ec:	afa70024 	sw	a3,36(sp)
    11f0:	8fa40024 	lw	a0,36(sp)
    11f4:	3c010001 	lui	at,0x1
    11f8:	34211e60 	ori	at,at,0x1e60
    11fc:	8fa60018 	lw	a2,24(sp)
    1200:	0c000000 	jal	0 <func_80B02270>
    1204:	00812821 	addu	a1,a0,at
    1208:	1000000b 	b	1238 <func_80B03400+0xa8>
    120c:	8fbf0014 	lw	ra,20(sp)
    1210:	afa60018 	sw	a2,24(sp)
    1214:	0c000000 	jal	0 <func_80B02270>
    1218:	afa70024 	sw	a3,36(sp)
    121c:	8fa40024 	lw	a0,36(sp)
    1220:	3c010001 	lui	at,0x1
    1224:	34211e60 	ori	at,at,0x1e60
    1228:	8fa60018 	lw	a2,24(sp)
    122c:	0c000000 	jal	0 <func_80B02270>
    1230:	00812821 	addu	a1,a0,at
    1234:	8fbf0014 	lw	ra,20(sp)
    1238:	27bd0020 	addiu	sp,sp,32
    123c:	03e00008 	jr	ra
    1240:	00000000 	nop

00001244 <func_80B034B4>:
    1244:	27bdff60 	addiu	sp,sp,-160
    1248:	3c0f0000 	lui	t7,0x0
    124c:	afb70044 	sw	s7,68(sp)
    1250:	afb20030 	sw	s2,48(sp)
    1254:	25ef0000 	addiu	t7,t7,0
    1258:	00809025 	move	s2,a0
    125c:	00a0b825 	move	s7,a1
    1260:	afbf004c 	sw	ra,76(sp)
    1264:	afbe0048 	sw	s8,72(sp)
    1268:	afb60040 	sw	s6,64(sp)
    126c:	afb5003c 	sw	s5,60(sp)
    1270:	afb40038 	sw	s4,56(sp)
    1274:	afb30034 	sw	s3,52(sp)
    1278:	afb1002c 	sw	s1,44(sp)
    127c:	afb00028 	sw	s0,40(sp)
    1280:	f7b60020 	sdc1	$f22,32(sp)
    1284:	f7b40018 	sdc1	$f20,24(sp)
    1288:	25e80024 	addiu	t0,t7,36
    128c:	27ae007c 	addiu	t6,sp,124
    1290:	8df90000 	lw	t9,0(t7)
    1294:	25ef000c 	addiu	t7,t7,12
    1298:	25ce000c 	addiu	t6,t6,12
    129c:	add9fff4 	sw	t9,-12(t6)
    12a0:	8df8fff8 	lw	t8,-8(t7)
    12a4:	add8fff8 	sw	t8,-8(t6)
    12a8:	8df9fffc 	lw	t9,-4(t7)
    12ac:	15e8fff8 	bne	t7,t0,1290 <func_80B034B4+0x4c>
    12b0:	add9fffc 	sw	t9,-4(t6)
    12b4:	3c010001 	lui	at,0x1
    12b8:	34211e60 	ori	at,at,0x1e60
    12bc:	02e1f021 	addu	s8,s7,at
    12c0:	3c010000 	lui	at,0x0
    12c4:	c4360000 	lwc1	$f22,0(at)
    12c8:	3c014700 	lui	at,0x4700
    12cc:	4481a000 	mtc1	at,$f20
    12d0:	26560024 	addiu	s6,s2,36
    12d4:	27b0007c 	addiu	s0,sp,124
    12d8:	00009825 	move	s3,zero
    12dc:	02408825 	move	s1,s2
    12e0:	265403e0 	addiu	s4,s2,992
    12e4:	27b50070 	addiu	s5,sp,112
    12e8:	8eca0000 	lw	t2,0(s6)
    12ec:	c6040000 	lwc1	$f4,0(s0)
    12f0:	c60a0004 	lwc1	$f10,4(s0)
    12f4:	aeaa0000 	sw	t2,0(s5)
    12f8:	8ec90004 	lw	t1,4(s6)
    12fc:	aea90004 	sw	t1,4(s5)
    1300:	8eca0008 	lw	t2,8(s6)
    1304:	aeaa0008 	sw	t2,8(s5)
    1308:	c646053c 	lwc1	$f6,1340(s2)
    130c:	46062202 	mul.s	$f8,$f4,$f6
    1310:	c6040008 	lwc1	$f4,8(s0)
    1314:	e6080000 	swc1	$f8,0(s0)
    1318:	c650053c 	lwc1	$f16,1340(s2)
    131c:	46105482 	mul.s	$f18,$f10,$f16
    1320:	e6120004 	swc1	$f18,4(s0)
    1324:	c646053c 	lwc1	$f6,1340(s2)
    1328:	46062202 	mul.s	$f8,$f4,$f6
    132c:	0c000000 	jal	0 <func_80B02270>
    1330:	e6080008 	swc1	$f8,8(s0)
    1334:	c7ac0070 	lwc1	$f12,112(sp)
    1338:	c7ae0074 	lwc1	$f14,116(sp)
    133c:	8fa60078 	lw	a2,120(sp)
    1340:	0c000000 	jal	0 <func_80B02270>
    1344:	00003825 	move	a3,zero
    1348:	864b0524 	lh	t3,1316(s2)
    134c:	24050001 	li	a1,1
    1350:	448b5000 	mtc1	t3,$f10
    1354:	00000000 	nop
    1358:	46805420 	cvt.s.w	$f16,$f10
    135c:	46148483 	div.s	$f18,$f16,$f20
    1360:	46169302 	mul.s	$f12,$f18,$f22
    1364:	0c000000 	jal	0 <func_80B02270>
    1368:	00000000 	nop
    136c:	02002025 	move	a0,s0
    1370:	0c000000 	jal	0 <func_80B02270>
    1374:	02a02825 	move	a1,s5
    1378:	0c000000 	jal	0 <func_80B02270>
    137c:	00000000 	nop
    1380:	c7a40070 	lwc1	$f4,112(sp)
    1384:	02e02025 	move	a0,s7
    1388:	03c02825 	move	a1,s8
    138c:	4600218d 	trunc.w.s	$f6,$f4
    1390:	02803025 	move	a2,s4
    1394:	440d3000 	mfc1	t5,$f6
    1398:	00000000 	nop
    139c:	a62d0426 	sh	t5,1062(s1)
    13a0:	c7a80074 	lwc1	$f8,116(sp)
    13a4:	4600428d 	trunc.w.s	$f10,$f8
    13a8:	440f5000 	mfc1	t7,$f10
    13ac:	00000000 	nop
    13b0:	a62f0428 	sh	t7,1064(s1)
    13b4:	c7b00078 	lwc1	$f16,120(sp)
    13b8:	4600848d 	trunc.w.s	$f18,$f16
    13bc:	44189000 	mfc1	t8,$f18
    13c0:	0c000000 	jal	0 <func_80B02270>
    13c4:	a638042a 	sh	t8,1066(s1)
    13c8:	2673004c 	addiu	s3,s3,76
    13cc:	240100e4 	li	at,228
    13d0:	2610000c 	addiu	s0,s0,12
    13d4:	2631004c 	addiu	s1,s1,76
    13d8:	1661ffc3 	bne	s3,at,12e8 <func_80B034B4+0xa4>
    13dc:	2694004c 	addiu	s4,s4,76
    13e0:	8fbf004c 	lw	ra,76(sp)
    13e4:	d7b40018 	ldc1	$f20,24(sp)
    13e8:	d7b60020 	ldc1	$f22,32(sp)
    13ec:	8fb00028 	lw	s0,40(sp)
    13f0:	8fb1002c 	lw	s1,44(sp)
    13f4:	8fb20030 	lw	s2,48(sp)
    13f8:	8fb30034 	lw	s3,52(sp)
    13fc:	8fb40038 	lw	s4,56(sp)
    1400:	8fb5003c 	lw	s5,60(sp)
    1404:	8fb60040 	lw	s6,64(sp)
    1408:	8fb70044 	lw	s7,68(sp)
    140c:	8fbe0048 	lw	s8,72(sp)
    1410:	27bd00a0 	addiu	sp,sp,160
    1414:	03e00008 	jr	ra
    1418:	24020001 	li	v0,1

0000141c <func_80B0368C>:
    141c:	27bdffd0 	addiu	sp,sp,-48
    1420:	afbf001c 	sw	ra,28(sp)
    1424:	afb00018 	sw	s0,24(sp)
    1428:	908e00af 	lbu	t6,175(a0)
    142c:	00803825 	move	a3,a0
    1430:	00a08025 	move	s0,a1
    1434:	15c0000e 	bnez	t6,1470 <func_80B0368C+0x54>
    1438:	00a02025 	move	a0,a1
    143c:	3c010001 	lui	at,0x1
    1440:	34211e60 	ori	at,at,0x1e60
    1444:	00a12821 	addu	a1,a1,at
    1448:	24e604c4 	addiu	a2,a3,1220
    144c:	afa60024 	sw	a2,36(sp)
    1450:	0c000000 	jal	0 <func_80B02270>
    1454:	afa50028 	sw	a1,40(sp)
    1458:	8fa50028 	lw	a1,40(sp)
    145c:	8fa60024 	lw	a2,36(sp)
    1460:	0c000000 	jal	0 <func_80B02270>
    1464:	02002025 	move	a0,s0
    1468:	1000001a 	b	14d4 <func_80B0368C+0xb8>
    146c:	8fbf001c 	lw	ra,28(sp)
    1470:	84ef052c 	lh	t7,1324(a3)
    1474:	00e02025 	move	a0,a3
    1478:	02002825 	move	a1,s0
    147c:	55e00005 	bnezl	t7,1494 <func_80B0368C+0x78>
    1480:	84e2052e 	lh	v0,1326(a3)
    1484:	0c000000 	jal	0 <func_80B02270>
    1488:	afa70030 	sw	a3,48(sp)
    148c:	8fa70030 	lw	a3,48(sp)
    1490:	84e2052e 	lh	v0,1326(a3)
    1494:	00e02025 	move	a0,a3
    1498:	02002825 	move	a1,s0
    149c:	14400003 	bnez	v0,14ac <func_80B0368C+0x90>
    14a0:	2458ffff 	addiu	t8,v0,-1
    14a4:	10000003 	b	14b4 <func_80B0368C+0x98>
    14a8:	00001825 	move	v1,zero
    14ac:	a4f8052e 	sh	t8,1326(a3)
    14b0:	84e3052e 	lh	v1,1326(a3)
    14b4:	54600007 	bnezl	v1,14d4 <func_80B0368C+0xb8>
    14b8:	8fbf001c 	lw	ra,28(sp)
    14bc:	0c000000 	jal	0 <func_80B02270>
    14c0:	afa70030 	sw	a3,48(sp)
    14c4:	8fa40030 	lw	a0,48(sp)
    14c8:	0c000000 	jal	0 <func_80B02270>
    14cc:	02002825 	move	a1,s0
    14d0:	8fbf001c 	lw	ra,28(sp)
    14d4:	8fb00018 	lw	s0,24(sp)
    14d8:	27bd0030 	addiu	sp,sp,48
    14dc:	03e00008 	jr	ra
    14e0:	00000000 	nop

000014e4 <EnSsh_Init>:
    14e4:	27bdffc0 	addiu	sp,sp,-64
    14e8:	afb00028 	sw	s0,40(sp)
    14ec:	00808025 	move	s0,a0
    14f0:	afbf002c 	sw	ra,44(sp)
    14f4:	3c040600 	lui	a0,0x600
    14f8:	afa50044 	sw	a1,68(sp)
    14fc:	0c000000 	jal	0 <func_80B02270>
    1500:	24840304 	addiu	a0,a0,772
    1504:	44822000 	mtc1	v0,$f4
    1508:	3c0e0000 	lui	t6,0x0
    150c:	3c0f0000 	lui	t7,0x0
    1510:	468021a0 	cvt.s.w	$f6,$f4
    1514:	e7a6003c 	swc1	$f6,60(sp)
    1518:	8603001c 	lh	v1,28(s0)
    151c:	14600009 	bnez	v1,1544 <EnSsh_Init+0x60>
    1520:	0003c080 	sll	t8,v1,0x2
    1524:	85ce00d0 	lh	t6,208(t6)
    1528:	29c10064 	slti	at,t6,100
    152c:	1420000f 	bnez	at,156c <EnSsh_Init+0x88>
    1530:	00000000 	nop
    1534:	0c000000 	jal	0 <func_80B02270>
    1538:	02002025 	move	a0,s0
    153c:	1000004a 	b	1668 <EnSsh_Init+0x184>
    1540:	8fbf002c 	lw	ra,44(sp)
    1544:	85ef00d0 	lh	t7,208(t7)
    1548:	0303c021 	addu	t8,t8,v1
    154c:	0018c040 	sll	t8,t8,0x1
    1550:	01f8082a 	slt	at,t7,t8
    1554:	14200005 	bnez	at,156c <EnSsh_Init+0x88>
    1558:	00000000 	nop
    155c:	0c000000 	jal	0 <func_80B02270>
    1560:	02002025 	move	a0,s0
    1564:	10000040 	b	1668 <EnSsh_Init+0x184>
    1568:	8fbf002c 	lw	ra,44(sp)
    156c:	3c060000 	lui	a2,0x0
    1570:	24c60000 	addiu	a2,a2,0
    1574:	260400b4 	addiu	a0,s0,180
    1578:	24050000 	li	a1,0
    157c:	0c000000 	jal	0 <func_80B02270>
    1580:	3c0741f0 	lui	a3,0x41f0
    1584:	2605014c 	addiu	a1,s0,332
    1588:	3c060600 	lui	a2,0x600
    158c:	26190190 	addiu	t9,s0,400
    1590:	26080244 	addiu	t0,s0,580
    1594:	2409001e 	li	t1,30
    1598:	afa90018 	sw	t1,24(sp)
    159c:	afa80014 	sw	t0,20(sp)
    15a0:	afb90010 	sw	t9,16(sp)
    15a4:	24c652e0 	addiu	a2,a2,21216
    15a8:	afa50030 	sw	a1,48(sp)
    15ac:	8fa40044 	lw	a0,68(sp)
    15b0:	0c000000 	jal	0 <func_80B02270>
    15b4:	00003825 	move	a3,zero
    15b8:	44800000 	mtc1	zero,$f0
    15bc:	c7a8003c 	lwc1	$f8,60(sp)
    15c0:	3c050600 	lui	a1,0x600
    15c4:	240a0001 	li	t2,1
    15c8:	44070000 	mfc1	a3,$f0
    15cc:	afaa0014 	sw	t2,20(sp)
    15d0:	24a50304 	addiu	a1,a1,772
    15d4:	8fa40030 	lw	a0,48(sp)
    15d8:	3c063f80 	lui	a2,0x3f80
    15dc:	e7a80010 	swc1	$f8,16(sp)
    15e0:	0c000000 	jal	0 <func_80B02270>
    15e4:	e7a00018 	swc1	$f0,24(sp)
    15e8:	0c000000 	jal	0 <func_80B02270>
    15ec:	8fa40044 	lw	a0,68(sp)
    15f0:	ae020538 	sw	v0,1336(s0)
    15f4:	8fa50044 	lw	a1,68(sp)
    15f8:	0c000000 	jal	0 <func_80B02270>
    15fc:	02002025 	move	a0,s0
    1600:	a60005ca 	sh	zero,1482(s0)
    1604:	a20005cc 	sb	zero,1484(s0)
    1608:	8fa50044 	lw	a1,68(sp)
    160c:	0c000000 	jal	0 <func_80B02270>
    1610:	02002025 	move	a0,s0
    1614:	860b001c 	lh	t3,28(s0)
    1618:	3c063f80 	lui	a2,0x3f80
    161c:	02002025 	move	a0,s0
    1620:	11600006 	beqz	t3,163c <EnSsh_Init+0x158>
    1624:	3c053f40 	lui	a1,0x3f40
    1628:	02002025 	move	a0,s0
    162c:	0c000000 	jal	0 <func_80B02270>
    1630:	3c053f00 	lui	a1,0x3f00
    1634:	10000004 	b	1648 <EnSsh_Init+0x164>
    1638:	44805000 	mtc1	zero,$f10
    163c:	0c000000 	jal	0 <func_80B02270>
    1640:	3c063f80 	lui	a2,0x3f80
    1644:	44805000 	mtc1	zero,$f10
    1648:	860c0032 	lh	t4,50(s0)
    164c:	3c050000 	lui	a1,0x0
    1650:	24a50000 	addiu	a1,a1,0
    1654:	02002025 	move	a0,s0
    1658:	e60a006c 	swc1	$f10,108(s0)
    165c:	0c000000 	jal	0 <func_80B02270>
    1660:	a60c0524 	sh	t4,1316(s0)
    1664:	8fbf002c 	lw	ra,44(sp)
    1668:	8fb00028 	lw	s0,40(sp)
    166c:	27bd0040 	addiu	sp,sp,64
    1670:	03e00008 	jr	ra
    1674:	00000000 	nop

00001678 <EnSsh_Destroy>:
    1678:	27bdffd0 	addiu	sp,sp,-48
    167c:	afb30024 	sw	s3,36(sp)
    1680:	00809825 	move	s3,a0
    1684:	afb40028 	sw	s4,40(sp)
    1688:	00a0a025 	move	s4,a1
    168c:	afbf002c 	sw	ra,44(sp)
    1690:	afb20020 	sw	s2,32(sp)
    1694:	afb1001c 	sw	s1,28(sp)
    1698:	afb00018 	sw	s0,24(sp)
    169c:	00a02025 	move	a0,a1
    16a0:	0c000000 	jal	0 <func_80B02270>
    16a4:	8e650538 	lw	a1,1336(s3)
    16a8:	00008025 	move	s0,zero
    16ac:	267102fc 	addiu	s1,s3,764
    16b0:	241201c8 	li	s2,456
    16b4:	02802025 	move	a0,s4
    16b8:	0c000000 	jal	0 <func_80B02270>
    16bc:	02202825 	move	a1,s1
    16c0:	2610004c 	addiu	s0,s0,76
    16c4:	1612fffb 	bne	s0,s2,16b4 <EnSsh_Destroy+0x3c>
    16c8:	2631004c 	addiu	s1,s1,76
    16cc:	02802025 	move	a0,s4
    16d0:	0c000000 	jal	0 <func_80B02270>
    16d4:	266504c4 	addiu	a1,s3,1220
    16d8:	8fbf002c 	lw	ra,44(sp)
    16dc:	8fb00018 	lw	s0,24(sp)
    16e0:	8fb1001c 	lw	s1,28(sp)
    16e4:	8fb20020 	lw	s2,32(sp)
    16e8:	8fb30024 	lw	s3,36(sp)
    16ec:	8fb40028 	lw	s4,40(sp)
    16f0:	03e00008 	jr	ra
    16f4:	27bd0030 	addiu	sp,sp,48

000016f8 <func_80B03968>:
    16f8:	27bdffe8 	addiu	sp,sp,-24
    16fc:	afbf0014 	sw	ra,20(sp)
    1700:	afa40018 	sw	a0,24(sp)
    1704:	0c000000 	jal	0 <func_80B02270>
    1708:	afa5001c 	sw	a1,28(sp)
    170c:	10400009 	beqz	v0,1734 <func_80B03968+0x3c>
    1710:	8fa40018 	lw	a0,24(sp)
    1714:	0c000000 	jal	0 <func_80B02270>
    1718:	8fa40018 	lw	a0,24(sp)
    171c:	3c050000 	lui	a1,0x0
    1720:	24a50000 	addiu	a1,a1,0
    1724:	0c000000 	jal	0 <func_80B02270>
    1728:	8fa40018 	lw	a0,24(sp)
    172c:	10000004 	b	1740 <func_80B03968+0x48>
    1730:	8fbf0014 	lw	ra,20(sp)
    1734:	0c000000 	jal	0 <func_80B02270>
    1738:	8fa5001c 	lw	a1,28(sp)
    173c:	8fbf0014 	lw	ra,20(sp)
    1740:	27bd0018 	addiu	sp,sp,24
    1744:	03e00008 	jr	ra
    1748:	00000000 	nop

0000174c <func_80B039BC>:
    174c:	27bdffe8 	addiu	sp,sp,-24
    1750:	afbf0014 	sw	ra,20(sp)
    1754:	afa40018 	sw	a0,24(sp)
    1758:	0c000000 	jal	0 <func_80B02270>
    175c:	afa5001c 	sw	a1,28(sp)
    1760:	8fa40018 	lw	a0,24(sp)
    1764:	0c000000 	jal	0 <func_80B02270>
    1768:	8fa5001c 	lw	a1,28(sp)
    176c:	10400004 	beqz	v0,1780 <func_80B039BC+0x34>
    1770:	8faf0018 	lw	t7,24(sp)
    1774:	3c0e0000 	lui	t6,0x0
    1778:	25ce0000 	addiu	t6,t6,0
    177c:	adee02f8 	sw	t6,760(t7)
    1780:	8fbf0014 	lw	ra,20(sp)
    1784:	27bd0018 	addiu	sp,sp,24
    1788:	03e00008 	jr	ra
    178c:	00000000 	nop

00001790 <func_80B03A00>:
    1790:	27bdffe8 	addiu	sp,sp,-24
    1794:	afbf0014 	sw	ra,20(sp)
    1798:	afa5001c 	sw	a1,28(sp)
    179c:	0c000000 	jal	0 <func_80B02270>
    17a0:	afa40018 	sw	a0,24(sp)
    17a4:	10400020 	beqz	v0,1828 <func_80B03A00+0x98>
    17a8:	8fa70018 	lw	a3,24(sp)
    17ac:	84ef001c 	lh	t7,28(a3)
    17b0:	3c0e0000 	lui	t6,0x0
    17b4:	25ce0000 	addiu	t6,t6,0
    17b8:	15e00006 	bnez	t7,17d4 <func_80B03A00+0x44>
    17bc:	acee02f8 	sw	t6,760(a3)
    17c0:	3c030000 	lui	v1,0x0
    17c4:	24630000 	addiu	v1,v1,0
    17c8:	94780ee6 	lhu	t8,3814(v1)
    17cc:	37190040 	ori	t9,t8,0x40
    17d0:	a4790ee6 	sh	t9,3814(v1)
    17d4:	94e2010e 	lhu	v0,270(a3)
    17d8:	3c030000 	lui	v1,0x0
    17dc:	24010026 	li	at,38
    17e0:	10410004 	beq	v0,at,17f4 <func_80B03A00+0x64>
    17e4:	24630000 	addiu	v1,v1,0
    17e8:	24010027 	li	at,39
    17ec:	54410006 	bnel	v0,at,1808 <func_80B03A00+0x78>
    17f0:	24010024 	li	at,36
    17f4:	94680f2a 	lhu	t0,3882(v1)
    17f8:	35090040 	ori	t1,t0,0x40
    17fc:	a4690f2a 	sh	t1,3882(v1)
    1800:	94e2010e 	lhu	v0,270(a3)
    1804:	24010024 	li	at,36
    1808:	10410003 	beq	v0,at,1818 <func_80B03A00+0x88>
    180c:	24010025 	li	at,37
    1810:	5441007f 	bnel	v0,at,1a10 <func_80B03A00+0x280>
    1814:	8fbf0014 	lw	ra,20(sp)
    1818:	946a0f2a 	lhu	t2,3882(v1)
    181c:	354b0080 	ori	t3,t2,0x80
    1820:	1000007a 	b	1a0c <func_80B03A00+0x27c>
    1824:	a46b0f2a 	sh	t3,3882(v1)
    1828:	84e30528 	lh	v1,1320(a3)
    182c:	5060000e 	beqzl	v1,1868 <func_80B03A00+0xd8>
    1830:	84e30534 	lh	v1,1332(a3)
    1834:	14600003 	bnez	v1,1844 <func_80B03A00+0xb4>
    1838:	246cffff 	addiu	t4,v1,-1
    183c:	10000003 	b	184c <func_80B03A00+0xbc>
    1840:	00001025 	move	v0,zero
    1844:	a4ec0528 	sh	t4,1320(a3)
    1848:	84e20528 	lh	v0,1320(a3)
    184c:	14400005 	bnez	v0,1864 <func_80B03A00+0xd4>
    1850:	00e02025 	move	a0,a3
    1854:	24050002 	li	a1,2
    1858:	0c000000 	jal	0 <func_80B02270>
    185c:	afa70018 	sw	a3,24(sp)
    1860:	8fa70018 	lw	a3,24(sp)
    1864:	84e30534 	lh	v1,1332(a3)
    1868:	5060000e 	beqzl	v1,18a4 <func_80B03A00+0x114>
    186c:	00e02025 	move	a0,a3
    1870:	14600003 	bnez	v1,1880 <func_80B03A00+0xf0>
    1874:	246dffff 	addiu	t5,v1,-1
    1878:	10000003 	b	1888 <func_80B03A00+0xf8>
    187c:	00001025 	move	v0,zero
    1880:	a4ed0534 	sh	t5,1332(a3)
    1884:	84e20534 	lh	v0,1332(a3)
    1888:	14400005 	bnez	v0,18a0 <func_80B03A00+0x110>
    188c:	00e02025 	move	a0,a3
    1890:	24050002 	li	a1,2
    1894:	0c000000 	jal	0 <func_80B02270>
    1898:	afa70018 	sw	a3,24(sp)
    189c:	8fa70018 	lw	a3,24(sp)
    18a0:	00e02025 	move	a0,a3
    18a4:	8fa5001c 	lw	a1,28(sp)
    18a8:	0c000000 	jal	0 <func_80B02270>
    18ac:	afa70018 	sw	a3,24(sp)
    18b0:	1440000a 	bnez	v0,18dc <func_80B03A00+0x14c>
    18b4:	8fa70018 	lw	a3,24(sp)
    18b8:	00e02025 	move	a0,a3
    18bc:	0c000000 	jal	0 <func_80B02270>
    18c0:	afa70018 	sw	a3,24(sp)
    18c4:	3c050000 	lui	a1,0x0
    18c8:	8fa40018 	lw	a0,24(sp)
    18cc:	0c000000 	jal	0 <func_80B02270>
    18d0:	24a50000 	addiu	a1,a1,0
    18d4:	1000004e 	b	1a10 <func_80B03A00+0x280>
    18d8:	8fbf0014 	lw	ra,20(sp)
    18dc:	84e30530 	lh	v1,1328(a3)
    18e0:	00e02025 	move	a0,a3
    18e4:	2405386a 	li	a1,14442
    18e8:	14600003 	bnez	v1,18f8 <func_80B03A00+0x168>
    18ec:	246effff 	addiu	t6,v1,-1
    18f0:	10000003 	b	1900 <func_80B03A00+0x170>
    18f4:	00001025 	move	v0,zero
    18f8:	a4ee0530 	sh	t6,1328(a3)
    18fc:	84e20530 	lh	v0,1328(a3)
    1900:	54400007 	bnezl	v0,1920 <func_80B03A00+0x190>
    1904:	00e02025 	move	a0,a3
    1908:	0c000000 	jal	0 <func_80B02270>
    190c:	afa70018 	sw	a3,24(sp)
    1910:	8fa70018 	lw	a3,24(sp)
    1914:	240f0040 	li	t7,64
    1918:	a4ef0530 	sh	t7,1328(a3)
    191c:	00e02025 	move	a0,a3
    1920:	8fa5001c 	lw	a1,28(sp)
    1924:	0c000000 	jal	0 <func_80B02270>
    1928:	afa70018 	sw	a3,24(sp)
    192c:	8fa70018 	lw	a3,24(sp)
    1930:	84f80528 	lh	t8,1320(a3)
    1934:	57000036 	bnezl	t8,1a10 <func_80B03A00+0x280>
    1938:	8fbf0014 	lw	ra,20(sp)
    193c:	84f90534 	lh	t9,1332(a3)
    1940:	8fa4001c 	lw	a0,28(sp)
    1944:	2405000d 	li	a1,13
    1948:	57200031 	bnezl	t9,1a10 <func_80B03A00+0x280>
    194c:	8fbf0014 	lw	ra,20(sp)
    1950:	0c000000 	jal	0 <func_80B02270>
    1954:	afa70018 	sw	a3,24(sp)
    1958:	8fa70018 	lw	a3,24(sp)
    195c:	3048ffff 	andi	t0,v0,0xffff
    1960:	15000026 	bnez	t0,19fc <func_80B03A00+0x26c>
    1964:	a4e2010e 	sh	v0,270(a3)
    1968:	84e9001c 	lh	t1,28(a3)
    196c:	3c030000 	lui	v1,0x0
    1970:	24630000 	addiu	v1,v1,0
    1974:	55200020 	bnezl	t1,19f8 <func_80B03A00+0x268>
    1978:	24090022 	li	t1,34
    197c:	846200d0 	lh	v0,208(v1)
    1980:	240a0029 	li	t2,41
    1984:	28410032 	slti	at,v0,50
    1988:	54200004 	bnezl	at,199c <func_80B03A00+0x20c>
    198c:	2841000a 	slti	at,v0,10
    1990:	1000001a 	b	19fc <func_80B03A00+0x26c>
    1994:	a4ea010e 	sh	t2,270(a3)
    1998:	2841000a 	slti	at,v0,10
    199c:	5420000c 	bnezl	at,19d0 <func_80B03A00+0x240>
    19a0:	946f0f2a 	lhu	t7,3882(v1)
    19a4:	946b0f2a 	lhu	t3,3882(v1)
    19a8:	240d0024 	li	t5,36
    19ac:	240e0025 	li	t6,37
    19b0:	316c0080 	andi	t4,t3,0x80
    19b4:	11800003 	beqz	t4,19c4 <func_80B03A00+0x234>
    19b8:	00000000 	nop
    19bc:	1000000f 	b	19fc <func_80B03A00+0x26c>
    19c0:	a4ed010e 	sh	t5,270(a3)
    19c4:	1000000d 	b	19fc <func_80B03A00+0x26c>
    19c8:	a4ee010e 	sh	t6,270(a3)
    19cc:	946f0f2a 	lhu	t7,3882(v1)
    19d0:	24190027 	li	t9,39
    19d4:	24080026 	li	t0,38
    19d8:	31f80040 	andi	t8,t7,0x40
    19dc:	13000003 	beqz	t8,19ec <func_80B03A00+0x25c>
    19e0:	00000000 	nop
    19e4:	10000005 	b	19fc <func_80B03A00+0x26c>
    19e8:	a4f9010e 	sh	t9,270(a3)
    19ec:	10000003 	b	19fc <func_80B03A00+0x26c>
    19f0:	a4e8010e 	sh	t0,270(a3)
    19f4:	24090022 	li	t1,34
    19f8:	a4e9010e 	sh	t1,270(a3)
    19fc:	00e02025 	move	a0,a3
    1a00:	8fa5001c 	lw	a1,28(sp)
    1a04:	0c000000 	jal	0 <func_80B02270>
    1a08:	3c0642c8 	lui	a2,0x42c8
    1a0c:	8fbf0014 	lw	ra,20(sp)
    1a10:	27bd0018 	addiu	sp,sp,24
    1a14:	03e00008 	jr	ra
    1a18:	00000000 	nop

00001a1c <func_80B03C8C>:
    1a1c:	27bdffd8 	addiu	sp,sp,-40
    1a20:	afbf0024 	sw	ra,36(sp)
    1a24:	afb00020 	sw	s0,32(sp)
    1a28:	afa5002c 	sw	a1,44(sp)
    1a2c:	84820528 	lh	v0,1320(a0)
    1a30:	00808025 	move	s0,a0
    1a34:	5040000c 	beqzl	v0,1a68 <func_80B03C8C+0x4c>
    1a38:	86020534 	lh	v0,1332(s0)
    1a3c:	14400003 	bnez	v0,1a4c <func_80B03C8C+0x30>
    1a40:	244effff 	addiu	t6,v0,-1
    1a44:	10000003 	b	1a54 <func_80B03C8C+0x38>
    1a48:	00001825 	move	v1,zero
    1a4c:	a60e0528 	sh	t6,1320(s0)
    1a50:	86030528 	lh	v1,1320(s0)
    1a54:	14600003 	bnez	v1,1a64 <func_80B03C8C+0x48>
    1a58:	02002025 	move	a0,s0
    1a5c:	0c000000 	jal	0 <func_80B02270>
    1a60:	24050002 	li	a1,2
    1a64:	86020534 	lh	v0,1332(s0)
    1a68:	5040000c 	beqzl	v0,1a9c <func_80B03C8C+0x80>
    1a6c:	c6060080 	lwc1	$f6,128(s0)
    1a70:	14400003 	bnez	v0,1a80 <func_80B03C8C+0x64>
    1a74:	244fffff 	addiu	t7,v0,-1
    1a78:	10000003 	b	1a88 <func_80B03C8C+0x6c>
    1a7c:	00001825 	move	v1,zero
    1a80:	a60f0534 	sh	t7,1332(s0)
    1a84:	86030534 	lh	v1,1332(s0)
    1a88:	14600003 	bnez	v1,1a98 <func_80B03C8C+0x7c>
    1a8c:	02002025 	move	a0,s0
    1a90:	0c000000 	jal	0 <func_80B02270>
    1a94:	24050002 	li	a1,2
    1a98:	c6060080 	lwc1	$f6,128(s0)
    1a9c:	c6080540 	lwc1	$f8,1344(s0)
    1aa0:	c6040028 	lwc1	$f4,40(s0)
    1aa4:	3c063f19 	lui	a2,0x3f19
    1aa8:	46083280 	add.s	$f10,$f6,$f8
    1aac:	34c6999a 	ori	a2,a2,0x999a
    1ab0:	26040060 	addiu	a0,s0,96
    1ab4:	3c054000 	lui	a1,0x4000
    1ab8:	4604503e 	c.le.s	$f10,$f4
    1abc:	00000000 	nop
    1ac0:	45020008 	bc1fl	1ae4 <func_80B03C8C+0xc8>
    1ac4:	44808000 	mtc1	zero,$f16
    1ac8:	3c050000 	lui	a1,0x0
    1acc:	24a50000 	addiu	a1,a1,0
    1ad0:	0c000000 	jal	0 <func_80B02270>
    1ad4:	02002025 	move	a0,s0
    1ad8:	10000006 	b	1af4 <func_80B03C8C+0xd8>
    1adc:	8fbf0024 	lw	ra,36(sp)
    1ae0:	44808000 	mtc1	zero,$f16
    1ae4:	3c07447a 	lui	a3,0x447a
    1ae8:	0c000000 	jal	0 <func_80B02270>
    1aec:	e7b00010 	swc1	$f16,16(sp)
    1af0:	8fbf0024 	lw	ra,36(sp)
    1af4:	8fb00020 	lw	s0,32(sp)
    1af8:	27bd0028 	addiu	sp,sp,40
    1afc:	03e00008 	jr	ra
    1b00:	00000000 	nop

00001b04 <func_80B03D74>:
    1b04:	27bdffe0 	addiu	sp,sp,-32
    1b08:	afbf001c 	sw	ra,28(sp)
    1b0c:	afb00018 	sw	s0,24(sp)
    1b10:	afa50024 	sw	a1,36(sp)
    1b14:	84820528 	lh	v0,1320(a0)
    1b18:	00808025 	move	s0,a0
    1b1c:	5040000c 	beqzl	v0,1b50 <func_80B03D74+0x4c>
    1b20:	02002025 	move	a0,s0
    1b24:	14400003 	bnez	v0,1b34 <func_80B03D74+0x30>
    1b28:	244effff 	addiu	t6,v0,-1
    1b2c:	10000003 	b	1b3c <func_80B03D74+0x38>
    1b30:	00001825 	move	v1,zero
    1b34:	a60e0528 	sh	t6,1320(s0)
    1b38:	86030528 	lh	v1,1320(s0)
    1b3c:	14600003 	bnez	v1,1b4c <func_80B03D74+0x48>
    1b40:	02002025 	move	a0,s0
    1b44:	0c000000 	jal	0 <func_80B02270>
    1b48:	24050004 	li	a1,4
    1b4c:	02002025 	move	a0,s0
    1b50:	0c000000 	jal	0 <func_80B02270>
    1b54:	8fa50024 	lw	a1,36(sp)
    1b58:	14400009 	bnez	v0,1b80 <func_80B03D74+0x7c>
    1b5c:	00000000 	nop
    1b60:	0c000000 	jal	0 <func_80B02270>
    1b64:	02002025 	move	a0,s0
    1b68:	3c050000 	lui	a1,0x0
    1b6c:	24a50000 	addiu	a1,a1,0
    1b70:	0c000000 	jal	0 <func_80B02270>
    1b74:	02002025 	move	a0,s0
    1b78:	1000001e 	b	1bf4 <func_80B03D74+0xf0>
    1b7c:	8fbf001c 	lw	ra,28(sp)
    1b80:	0c000000 	jal	0 <func_80B02270>
    1b84:	02002025 	move	a0,s0
    1b88:	1040000b 	beqz	v0,1bb8 <func_80B03D74+0xb4>
    1b8c:	02002025 	move	a0,s0
    1b90:	0c000000 	jal	0 <func_80B02270>
    1b94:	8fa50024 	lw	a1,36(sp)
    1b98:	0c000000 	jal	0 <func_80B02270>
    1b9c:	02002025 	move	a0,s0
    1ba0:	3c050000 	lui	a1,0x0
    1ba4:	24a50000 	addiu	a1,a1,0
    1ba8:	0c000000 	jal	0 <func_80B02270>
    1bac:	02002025 	move	a0,s0
    1bb0:	10000010 	b	1bf4 <func_80B03D74+0xf0>
    1bb4:	8fbf001c 	lw	ra,28(sp)
    1bb8:	86020530 	lh	v0,1328(s0)
    1bbc:	02002025 	move	a0,s0
    1bc0:	14400003 	bnez	v0,1bd0 <func_80B03D74+0xcc>
    1bc4:	244fffff 	addiu	t7,v0,-1
    1bc8:	10000003 	b	1bd8 <func_80B03D74+0xd4>
    1bcc:	00001825 	move	v1,zero
    1bd0:	a60f0530 	sh	t7,1328(s0)
    1bd4:	86030530 	lh	v1,1328(s0)
    1bd8:	54600006 	bnezl	v1,1bf4 <func_80B03D74+0xf0>
    1bdc:	8fbf001c 	lw	ra,28(sp)
    1be0:	0c000000 	jal	0 <func_80B02270>
    1be4:	24053868 	li	a1,14440
    1be8:	24180003 	li	t8,3
    1bec:	a6180530 	sh	t8,1328(s0)
    1bf0:	8fbf001c 	lw	ra,28(sp)
    1bf4:	8fb00018 	lw	s0,24(sp)
    1bf8:	27bd0020 	addiu	sp,sp,32
    1bfc:	03e00008 	jr	ra
    1c00:	00000000 	nop

00001c04 <func_80B03E74>:
    1c04:	27bdffd8 	addiu	sp,sp,-40
    1c08:	afbf001c 	sw	ra,28(sp)
    1c0c:	afb00018 	sw	s0,24(sp)
    1c10:	afa5002c 	sw	a1,44(sp)
    1c14:	3c013f80 	lui	at,0x3f80
    1c18:	44810000 	mtc1	at,$f0
    1c1c:	c4860160 	lwc1	$f6,352(a0)
    1c20:	c4840164 	lwc1	$f4,356(a0)
    1c24:	00808025 	move	s0,a0
    1c28:	46003201 	sub.s	$f8,$f6,$f0
    1c2c:	46082283 	div.s	$f10,$f4,$f8
    1c30:	e7aa0024 	swc1	$f10,36(sp)
    1c34:	c7b00024 	lwc1	$f16,36(sp)
    1c38:	46008032 	c.eq.s	$f16,$f0
    1c3c:	00000000 	nop
    1c40:	45020004 	bc1fl	1c54 <func_80B03E74+0x50>
    1c44:	02002025 	move	a0,s0
    1c48:	0c000000 	jal	0 <func_80B02270>
    1c4c:	00000000 	nop
    1c50:	02002025 	move	a0,s0
    1c54:	0c000000 	jal	0 <func_80B02270>
    1c58:	8fa5002c 	lw	a1,44(sp)
    1c5c:	10400009 	beqz	v0,1c84 <func_80B03E74+0x80>
    1c60:	00000000 	nop
    1c64:	0c000000 	jal	0 <func_80B02270>
    1c68:	02002025 	move	a0,s0
    1c6c:	3c050000 	lui	a1,0x0
    1c70:	24a50000 	addiu	a1,a1,0
    1c74:	0c000000 	jal	0 <func_80B02270>
    1c78:	02002025 	move	a0,s0
    1c7c:	10000012 	b	1cc8 <func_80B03E74+0xc4>
    1c80:	8fbf001c 	lw	ra,28(sp)
    1c84:	0c000000 	jal	0 <func_80B02270>
    1c88:	02002025 	move	a0,s0
    1c8c:	10400009 	beqz	v0,1cb4 <func_80B03E74+0xb0>
    1c90:	3c014080 	lui	at,0x4080
    1c94:	0c000000 	jal	0 <func_80B02270>
    1c98:	02002025 	move	a0,s0
    1c9c:	3c050000 	lui	a1,0x0
    1ca0:	24a50000 	addiu	a1,a1,0
    1ca4:	0c000000 	jal	0 <func_80B02270>
    1ca8:	02002025 	move	a0,s0
    1cac:	10000006 	b	1cc8 <func_80B03E74+0xc4>
    1cb0:	8fbf001c 	lw	ra,28(sp)
    1cb4:	44819000 	mtc1	at,$f18
    1cb8:	c7a60024 	lwc1	$f6,36(sp)
    1cbc:	46069102 	mul.s	$f4,$f18,$f6
    1cc0:	e6040060 	swc1	$f4,96(s0)
    1cc4:	8fbf001c 	lw	ra,28(sp)
    1cc8:	8fb00018 	lw	s0,24(sp)
    1ccc:	27bd0028 	addiu	sp,sp,40
    1cd0:	03e00008 	jr	ra
    1cd4:	00000000 	nop

00001cd8 <func_80B03F48>:
    1cd8:	27bdffe8 	addiu	sp,sp,-24
    1cdc:	afbf0014 	sw	ra,20(sp)
    1ce0:	948205ca 	lhu	v0,1482(a0)
    1ce4:	304e0010 	andi	t6,v0,0x10
    1ce8:	51c00013 	beqzl	t6,1d38 <func_80B03F48+0x60>
    1cec:	8488052a 	lh	t0,1322(a0)
    1cf0:	848f052a 	lh	t7,1322(a0)
    1cf4:	55e0001f 	bnezl	t7,1d74 <func_80B03F48+0x9c>
    1cf8:	8fbf0014 	lw	ra,20(sp)
    1cfc:	8499001c 	lh	t9,28(a0)
    1d00:	3058ffef 	andi	t8,v0,0xffef
    1d04:	a49805ca 	sh	t8,1482(a0)
    1d08:	13200006 	beqz	t9,1d24 <func_80B03F48+0x4c>
    1d0c:	3c053f40 	lui	a1,0x3f40
    1d10:	3c053f00 	lui	a1,0x3f00
    1d14:	0c000000 	jal	0 <func_80B02270>
    1d18:	3c063f80 	lui	a2,0x3f80
    1d1c:	10000015 	b	1d74 <func_80B03F48+0x9c>
    1d20:	8fbf0014 	lw	ra,20(sp)
    1d24:	0c000000 	jal	0 <func_80B02270>
    1d28:	3c063f80 	lui	a2,0x3f80
    1d2c:	10000011 	b	1d74 <func_80B03F48+0x9c>
    1d30:	8fbf0014 	lw	ra,20(sp)
    1d34:	8488052a 	lh	t0,1322(a0)
    1d38:	5100000e 	beqzl	t0,1d74 <func_80B03F48+0x9c>
    1d3c:	8fbf0014 	lw	ra,20(sp)
    1d40:	848a001c 	lh	t2,28(a0)
    1d44:	34490010 	ori	t1,v0,0x10
    1d48:	a48905ca 	sh	t1,1482(a0)
    1d4c:	11400006 	beqz	t2,1d68 <func_80B03F48+0x90>
    1d50:	3c053f40 	lui	a1,0x3f40
    1d54:	3c053f00 	lui	a1,0x3f00
    1d58:	0c000000 	jal	0 <func_80B02270>
    1d5c:	3c064000 	lui	a2,0x4000
    1d60:	10000004 	b	1d74 <func_80B03F48+0x9c>
    1d64:	8fbf0014 	lw	ra,20(sp)
    1d68:	0c000000 	jal	0 <func_80B02270>
    1d6c:	3c064000 	lui	a2,0x4000
    1d70:	8fbf0014 	lw	ra,20(sp)
    1d74:	27bd0018 	addiu	sp,sp,24
    1d78:	03e00008 	jr	ra
    1d7c:	00000000 	nop

00001d80 <func_80B03FF0>:
    1d80:	27bdffe0 	addiu	sp,sp,-32
    1d84:	afbf001c 	sw	ra,28(sp)
    1d88:	afb00018 	sw	s0,24(sp)
    1d8c:	00808025 	move	s0,a0
    1d90:	0c000000 	jal	0 <func_80B02270>
    1d94:	afa50024 	sw	a1,36(sp)
    1d98:	14400009 	bnez	v0,1dc0 <func_80B03FF0+0x40>
    1d9c:	02002025 	move	a0,s0
    1da0:	3c050000 	lui	a1,0x0
    1da4:	0c000000 	jal	0 <func_80B02270>
    1da8:	24a50000 	addiu	a1,a1,0
    1dac:	02002025 	move	a0,s0
    1db0:	0c000000 	jal	0 <func_80B02270>
    1db4:	8fa50024 	lw	a1,36(sp)
    1db8:	1000000e 	b	1df4 <func_80B03FF0+0x74>
    1dbc:	8fbf001c 	lw	ra,28(sp)
    1dc0:	0c000000 	jal	0 <func_80B02270>
    1dc4:	02002025 	move	a0,s0
    1dc8:	960e05ca 	lhu	t6,1482(s0)
    1dcc:	3c050000 	lui	a1,0x0
    1dd0:	24a50000 	addiu	a1,a1,0
    1dd4:	35cf0004 	ori	t7,t6,0x4
    1dd8:	a60f05ca 	sh	t7,1482(s0)
    1ddc:	0c000000 	jal	0 <func_80B02270>
    1de0:	02002025 	move	a0,s0
    1de4:	02002025 	move	a0,s0
    1de8:	0c000000 	jal	0 <func_80B02270>
    1dec:	8fa50024 	lw	a1,36(sp)
    1df0:	8fbf001c 	lw	ra,28(sp)
    1df4:	8fb00018 	lw	s0,24(sp)
    1df8:	27bd0020 	addiu	sp,sp,32
    1dfc:	03e00008 	jr	ra
    1e00:	00000000 	nop

00001e04 <EnSsh_Update>:
    1e04:	27bdffd8 	addiu	sp,sp,-40
    1e08:	afbf0024 	sw	ra,36(sp)
    1e0c:	afb00020 	sw	s0,32(sp)
    1e10:	00808025 	move	s0,a0
    1e14:	0c000000 	jal	0 <func_80B02270>
    1e18:	afa5002c 	sw	a1,44(sp)
    1e1c:	02002025 	move	a0,s0
    1e20:	0c000000 	jal	0 <func_80B02270>
    1e24:	8fa5002c 	lw	a1,44(sp)
    1e28:	54400039 	bnezl	v0,1f10 <EnSsh_Update+0x10c>
    1e2c:	8fbf0024 	lw	ra,36(sp)
    1e30:	860e0532 	lh	t6,1330(s0)
    1e34:	11c00005 	beqz	t6,1e4c <EnSsh_Update+0x48>
    1e38:	00000000 	nop
    1e3c:	0c000000 	jal	0 <func_80B02270>
    1e40:	02002025 	move	a0,s0
    1e44:	10000014 	b	1e98 <EnSsh_Update+0x94>
    1e48:	02002025 	move	a0,s0
    1e4c:	0c000000 	jal	0 <func_80B02270>
    1e50:	2604014c 	addiu	a0,s0,332
    1e54:	0c000000 	jal	0 <func_80B02270>
    1e58:	02002025 	move	a0,s0
    1e5c:	44800000 	mtc1	zero,$f0
    1e60:	240f0004 	li	t7,4
    1e64:	afaf0014 	sw	t7,20(sp)
    1e68:	44060000 	mfc1	a2,$f0
    1e6c:	44070000 	mfc1	a3,$f0
    1e70:	8fa4002c 	lw	a0,44(sp)
    1e74:	02002825 	move	a1,s0
    1e78:	0c000000 	jal	0 <func_80B02270>
    1e7c:	e7a00010 	swc1	$f0,16(sp)
    1e80:	8e1902f8 	lw	t9,760(s0)
    1e84:	02002025 	move	a0,s0
    1e88:	8fa5002c 	lw	a1,44(sp)
    1e8c:	0320f809 	jalr	t9
    1e90:	00000000 	nop
    1e94:	02002025 	move	a0,s0
    1e98:	0c000000 	jal	0 <func_80B02270>
    1e9c:	8fa5002c 	lw	a1,44(sp)
    1ea0:	860305d0 	lh	v1,1488(s0)
    1ea4:	2404003c 	li	a0,60
    1ea8:	14600003 	bnez	v1,1eb8 <EnSsh_Update+0xb4>
    1eac:	2478ffff 	addiu	t8,v1,-1
    1eb0:	10000004 	b	1ec4 <EnSsh_Update+0xc0>
    1eb4:	00001025 	move	v0,zero
    1eb8:	a61805d0 	sh	t8,1488(s0)
    1ebc:	860305d0 	lh	v1,1488(s0)
    1ec0:	00601025 	move	v0,v1
    1ec4:	54400006 	bnezl	v0,1ee0 <EnSsh_Update+0xdc>
    1ec8:	a60305ce 	sh	v1,1486(s0)
    1ecc:	0c000000 	jal	0 <func_80B02270>
    1ed0:	2405003c 	li	a1,60
    1ed4:	a60205d0 	sh	v0,1488(s0)
    1ed8:	860305d0 	lh	v1,1488(s0)
    1edc:	a60305ce 	sh	v1,1486(s0)
    1ee0:	860805ce 	lh	t0,1486(s0)
    1ee4:	02002025 	move	a0,s0
    1ee8:	29010003 	slti	at,t0,3
    1eec:	14200002 	bnez	at,1ef8 <EnSsh_Update+0xf4>
    1ef0:	00000000 	nop
    1ef4:	a60005ce 	sh	zero,1486(s0)
    1ef8:	0c000000 	jal	0 <func_80B02270>
    1efc:	8fa5002c 	lw	a1,44(sp)
    1f00:	02002025 	move	a0,s0
    1f04:	0c000000 	jal	0 <func_80B02270>
    1f08:	24050000 	li	a1,0
    1f0c:	8fbf0024 	lw	ra,36(sp)
    1f10:	8fb00020 	lw	s0,32(sp)
    1f14:	27bd0028 	addiu	sp,sp,40
    1f18:	03e00008 	jr	ra
    1f1c:	00000000 	nop

00001f20 <func_80B04190>:
    1f20:	27bdffe8 	addiu	sp,sp,-24
    1f24:	24010001 	li	at,1
    1f28:	afbf0014 	sw	ra,20(sp)
    1f2c:	afa40018 	sw	a0,24(sp)
    1f30:	10a1000c 	beq	a1,at,1f64 <func_80B04190+0x44>
    1f34:	afa70024 	sw	a3,36(sp)
    1f38:	24010004 	li	at,4
    1f3c:	10a1001b 	beq	a1,at,1fac <func_80B04190+0x8c>
    1f40:	8fa4002c 	lw	a0,44(sp)
    1f44:	24010005 	li	at,5
    1f48:	10a1001f 	beq	a1,at,1fc8 <func_80B04190+0xa8>
    1f4c:	8fa4002c 	lw	a0,44(sp)
    1f50:	24010008 	li	at,8
    1f54:	10a10023 	beq	a1,at,1fe4 <func_80B04190+0xc4>
    1f58:	8fa4002c 	lw	a0,44(sp)
    1f5c:	10000028 	b	2000 <func_80B04190+0xe0>
    1f60:	8fbf0014 	lw	ra,20(sp)
    1f64:	8fa4002c 	lw	a0,44(sp)
    1f68:	8482052a 	lh	v0,1322(a0)
    1f6c:	50400024 	beqzl	v0,2000 <func_80B04190+0xe0>
    1f70:	8fbf0014 	lw	ra,20(sp)
    1f74:	848e0536 	lh	t6,1334(a0)
    1f78:	28410002 	slti	at,v0,2
    1f7c:	55c00020 	bnezl	t6,2000 <func_80B04190+0xe0>
    1f80:	8fbf0014 	lw	ra,20(sp)
    1f84:	14200005 	bnez	at,1f9c <func_80B04190+0x7c>
    1f88:	00000000 	nop
    1f8c:	0c000000 	jal	0 <func_80B02270>
    1f90:	00000000 	nop
    1f94:	1000001a 	b	2000 <func_80B04190+0xe0>
    1f98:	8fbf0014 	lw	ra,20(sp)
    1f9c:	0c000000 	jal	0 <func_80B02270>
    1fa0:	00000000 	nop
    1fa4:	10000016 	b	2000 <func_80B04190+0xe0>
    1fa8:	8fbf0014 	lw	ra,20(sp)
    1fac:	848f001c 	lh	t7,28(a0)
    1fb0:	3c180600 	lui	t8,0x600
    1fb4:	271846c0 	addiu	t8,t8,18112
    1fb8:	55e00011 	bnezl	t7,2000 <func_80B04190+0xe0>
    1fbc:	8fbf0014 	lw	ra,20(sp)
    1fc0:	1000000e 	b	1ffc <func_80B04190+0xdc>
    1fc4:	acd80000 	sw	t8,0(a2)
    1fc8:	8499001c 	lh	t9,28(a0)
    1fcc:	3c080600 	lui	t0,0x600
    1fd0:	25084080 	addiu	t0,t0,16512
    1fd4:	5720000a 	bnezl	t9,2000 <func_80B04190+0xe0>
    1fd8:	8fbf0014 	lw	ra,20(sp)
    1fdc:	10000007 	b	1ffc <func_80B04190+0xdc>
    1fe0:	acc80000 	sw	t0,0(a2)
    1fe4:	8489001c 	lh	t1,28(a0)
    1fe8:	3c0a0600 	lui	t2,0x600
    1fec:	254a4de8 	addiu	t2,t2,19944
    1ff0:	55200003 	bnezl	t1,2000 <func_80B04190+0xe0>
    1ff4:	8fbf0014 	lw	ra,20(sp)
    1ff8:	acca0000 	sw	t2,0(a2)
    1ffc:	8fbf0014 	lw	ra,20(sp)
    2000:	27bd0018 	addiu	sp,sp,24
    2004:	00001025 	move	v0,zero
    2008:	03e00008 	jr	ra
    200c:	00000000 	nop

00002010 <func_80B04280>:
    2010:	27bdffe8 	addiu	sp,sp,-24
    2014:	afa40018 	sw	a0,24(sp)
    2018:	afa5001c 	sw	a1,28(sp)
    201c:	00a02025 	move	a0,a1
    2020:	8fa50028 	lw	a1,40(sp)
    2024:	afbf0014 	sw	ra,20(sp)
    2028:	afa60020 	sw	a2,32(sp)
    202c:	afa70024 	sw	a3,36(sp)
    2030:	0c000000 	jal	0 <func_80B02270>
    2034:	24a504c4 	addiu	a1,a1,1220
    2038:	8fbf0014 	lw	ra,20(sp)
    203c:	27bd0018 	addiu	sp,sp,24
    2040:	03e00008 	jr	ra
    2044:	00000000 	nop

00002048 <EnSsh_Draw>:
    2048:	27bdffb0 	addiu	sp,sp,-80
    204c:	afbf0024 	sw	ra,36(sp)
    2050:	afb00020 	sw	s0,32(sp)
    2054:	00808025 	move	s0,a0
    2058:	0c000000 	jal	0 <func_80B02270>
    205c:	afa50054 	sw	a1,84(sp)
    2060:	0c000000 	jal	0 <func_80B02270>
    2064:	02002025 	move	a0,s0
    2068:	8fae0054 	lw	t6,84(sp)
    206c:	3c060000 	lui	a2,0x0
    2070:	24c60000 	addiu	a2,a2,0
    2074:	8dc50000 	lw	a1,0(t6)
    2078:	27a40034 	addiu	a0,sp,52
    207c:	2407091d 	li	a3,2333
    2080:	0c000000 	jal	0 <func_80B02270>
    2084:	afa50044 	sw	a1,68(sp)
    2088:	8fa80044 	lw	t0,68(sp)
    208c:	3c18db06 	lui	t8,0xdb06
    2090:	37180020 	ori	t8,t8,0x20
    2094:	8d0302c0 	lw	v1,704(t0)
    2098:	3c040000 	lui	a0,0x0
    209c:	3c0e0000 	lui	t6,0x0
    20a0:	246f0008 	addiu	t7,v1,8
    20a4:	ad0f02c0 	sw	t7,704(t0)
    20a8:	ac780000 	sw	t8,0(v1)
    20ac:	861905ce 	lh	t9,1486(s0)
    20b0:	3c0100ff 	lui	at,0xff
    20b4:	3421ffff 	ori	at,at,0xffff
    20b8:	00194880 	sll	t1,t9,0x2
    20bc:	00892021 	addu	a0,a0,t1
    20c0:	8c840000 	lw	a0,0(a0)
    20c4:	3c060000 	lui	a2,0x0
    20c8:	24c60000 	addiu	a2,a2,0
    20cc:	00045900 	sll	t3,a0,0x4
    20d0:	000b6702 	srl	t4,t3,0x1c
    20d4:	000c6880 	sll	t5,t4,0x2
    20d8:	01cd7021 	addu	t6,t6,t5
    20dc:	8dce0000 	lw	t6,0(t6)
    20e0:	00815024 	and	t2,a0,at
    20e4:	3c018000 	lui	at,0x8000
    20e8:	014e7821 	addu	t7,t2,t6
    20ec:	01e1c021 	addu	t8,t7,at
    20f0:	ac780004 	sw	t8,4(v1)
    20f4:	8fb90054 	lw	t9,84(sp)
    20f8:	27a40034 	addiu	a0,sp,52
    20fc:	24070920 	li	a3,2336
    2100:	0c000000 	jal	0 <func_80B02270>
    2104:	8f250000 	lw	a1,0(t9)
    2108:	3c090000 	lui	t1,0x0
    210c:	25290000 	addiu	t1,t1,0
    2110:	8e050150 	lw	a1,336(s0)
    2114:	8e06016c 	lw	a2,364(s0)
    2118:	3c070000 	lui	a3,0x0
    211c:	24e70000 	addiu	a3,a3,0
    2120:	afb00014 	sw	s0,20(sp)
    2124:	afa90010 	sw	t1,16(sp)
    2128:	0c000000 	jal	0 <func_80B02270>
    212c:	8fa40054 	lw	a0,84(sp)
    2130:	8fbf0024 	lw	ra,36(sp)
    2134:	8fb00020 	lw	s0,32(sp)
    2138:	27bd0050 	addiu	sp,sp,80
    213c:	03e00008 	jr	ra
    2140:	00000000 	nop
	...
