
build/src/overlays/actors/ovl_En_Niw/z_en_niw.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnNiw_Init>:
       0:	27bdffb0 	addiu	sp,sp,-80
       4:	afbf0034 	sw	ra,52(sp)
       8:	afb20030 	sw	s2,48(sp)
       c:	afb1002c 	sw	s1,44(sp)
      10:	afb00028 	sw	s0,40(sp)
      14:	afa50054 	sw	a1,84(sp)
      18:	8482001c 	lh	v0,28(a0)
      1c:	00809025 	move	s2,a0
      20:	2401000b 	li	at,11
      24:	04410003 	bgez	v0,34 <EnNiw_Init+0x34>
      28:	3c050000 	lui	a1,0x0
      2c:	a480001c 	sh	zero,28(a0)
      30:	8482001c 	lh	v0,28(a0)
      34:	14410012 	bne	v0,at,80 <EnNiw_Init+0x80>
      38:	02402025 	move	a0,s2
      3c:	3c030000 	lui	v1,0x0
      40:	24630000 	addiu	v1,v1,0
      44:	906e0000 	lbu	t6,0(v1)
      48:	240f0001 	li	t7,1
      4c:	2418ffff 	li	t8,-1
      50:	51c00009 	beqzl	t6,78 <EnNiw_Init+0x78>
      54:	a06f0000 	sb	t7,0(v1)
      58:	0c000000 	jal	0 <EnNiw_Init>
      5c:	02402025 	move	a0,s2
      60:	3c040000 	lui	a0,0x0
      64:	0c000000 	jal	0 <EnNiw_Init>
      68:	24840000 	addiu	a0,a0,0
      6c:	100000f3 	b	43c <L80AB5AF4+0xc8>
      70:	8fbf0034 	lw	ra,52(sp)
      74:	a06f0000 	sb	t7,0(v1)
      78:	8642001c 	lh	v0,28(s2)
      7c:	a2580003 	sb	t8,3(s2)
      80:	2401000c 	li	at,12
      84:	14410010 	bne	v0,at,c8 <EnNiw_Init+0xc8>
      88:	24080001 	li	t0,1
      8c:	3c020000 	lui	v0,0x0
      90:	24420000 	addiu	v0,v0,0
      94:	90590000 	lbu	t9,0(v0)
      98:	2409ffff 	li	t1,-1
      9c:	53200009 	beqzl	t9,c4 <EnNiw_Init+0xc4>
      a0:	a0480000 	sb	t0,0(v0)
      a4:	0c000000 	jal	0 <EnNiw_Init>
      a8:	02402025 	move	a0,s2
      ac:	3c040000 	lui	a0,0x0
      b0:	0c000000 	jal	0 <EnNiw_Init>
      b4:	24840000 	addiu	a0,a0,0
      b8:	100000e0 	b	43c <L80AB5AF4+0xc8>
      bc:	8fbf0034 	lw	ra,52(sp)
      c0:	a0480000 	sb	t0,0(v0)
      c4:	a2490003 	sb	t1,3(s2)
      c8:	0c000000 	jal	0 <EnNiw_Init>
      cc:	24a50000 	addiu	a1,a1,0
      d0:	8e4a0004 	lw	t2,4(s2)
      d4:	3c060000 	lui	a2,0x0
      d8:	24c60000 	addiu	a2,a2,0
      dc:	354b0001 	ori	t3,t2,0x1
      e0:	ae4b0004 	sw	t3,4(s2)
      e4:	264400b4 	addiu	a0,s2,180
      e8:	24050000 	li	a1,0
      ec:	0c000000 	jal	0 <EnNiw_Init>
      f0:	3c0741c8 	lui	a3,0x41c8
      f4:	3c060600 	lui	a2,0x600
      f8:	3c070600 	lui	a3,0x600
      fc:	264c0190 	addiu	t4,s2,400
     100:	264d01f0 	addiu	t5,s2,496
     104:	240e0010 	li	t6,16
     108:	afae0018 	sw	t6,24(sp)
     10c:	afad0014 	sw	t5,20(sp)
     110:	afac0010 	sw	t4,16(sp)
     114:	24e700e8 	addiu	a3,a3,232
     118:	24c62530 	addiu	a2,a2,9520
     11c:	8fa40054 	lw	a0,84(sp)
     120:	0c000000 	jal	0 <EnNiw_Init>
     124:	2645014c 	addiu	a1,s2,332
     128:	8faf0054 	lw	t7,84(sp)
     12c:	24010052 	li	at,82
     130:	00008025 	move	s0,zero
     134:	85f800a4 	lh	t8,164(t7)
     138:	3c020000 	lui	v0,0x0
     13c:	17010033 	bne	t8,at,20c <EnNiw_Init+0x20c>
     140:	3c014220 	lui	at,0x4220
     144:	44811000 	mtc1	at,$f2
     148:	24420000 	addiu	v0,v0,0
     14c:	c6440024 	lwc1	$f4,36(s2)
     150:	c4460000 	lwc1	$f6,0(v0)
     154:	46062001 	sub.s	$f0,$f4,$f6
     158:	46000005 	abs.s	$f0,$f0
     15c:	4602003c 	c.lt.s	$f0,$f2
     160:	00000000 	nop
     164:	45020026 	bc1fl	200 <EnNiw_Init+0x200>
     168:	26100001 	addiu	s0,s0,1
     16c:	c648002c 	lwc1	$f8,44(s2)
     170:	c44a0008 	lwc1	$f10,8(v0)
     174:	3c080000 	lui	t0,0x0
     178:	25080000 	addiu	t0,t0,0
     17c:	460a4001 	sub.s	$f0,$f8,$f10
     180:	3c040000 	lui	a0,0x0
     184:	0010c840 	sll	t9,s0,0x1
     188:	03288821 	addu	s1,t9,t0
     18c:	46000005 	abs.s	$f0,$f0
     190:	24840000 	addiu	a0,a0,0
     194:	4602003c 	c.lt.s	$f0,$f2
     198:	00000000 	nop
     19c:	45020018 	bc1fl	200 <EnNiw_Init+0x200>
     1a0:	26100001 	addiu	s0,s0,1
     1a4:	a65002aa 	sh	s0,682(s2)
     1a8:	864502aa 	lh	a1,682(s2)
     1ac:	0c000000 	jal	0 <EnNiw_Init>
     1b0:	afa2003c 	sw	v0,60(sp)
     1b4:	3c0a0000 	lui	t2,0x0
     1b8:	954a0f2a 	lhu	t2,3882(t2)
     1bc:	86290000 	lh	t1,0(s1)
     1c0:	3c014220 	lui	at,0x4220
     1c4:	44811000 	mtc1	at,$f2
     1c8:	012a5824 	and	t3,t1,t2
     1cc:	1160000b 	beqz	t3,1fc <EnNiw_Init+0x1fc>
     1d0:	8fa2003c 	lw	v0,60(sp)
     1d4:	3c014396 	lui	at,0x4396
     1d8:	44818000 	mtc1	at,$f16
     1dc:	3c0142c8 	lui	at,0x42c8
     1e0:	44819000 	mtc1	at,$f18
     1e4:	3c010000 	lui	at,0x0
     1e8:	e6500024 	swc1	$f16,36(s2)
     1ec:	e6520028 	swc1	$f18,40(s2)
     1f0:	c4240000 	lwc1	$f4,0(at)
     1f4:	a640001c 	sh	zero,28(s2)
     1f8:	e644002c 	swc1	$f4,44(s2)
     1fc:	26100001 	addiu	s0,s0,1
     200:	24010007 	li	at,7
     204:	1601ffd1 	bne	s0,at,14c <EnNiw_Init+0x14c>
     208:	2442000c 	addiu	v0,v0,12
     20c:	26500024 	addiu	s0,s2,36
     210:	02002825 	move	a1,s0
     214:	0c000000 	jal	0 <EnNiw_Init>
     218:	264402ac 	addiu	a0,s2,684
     21c:	3c110000 	lui	s1,0x0
     220:	26310000 	addiu	s1,s1,0
     224:	264402b8 	addiu	a0,s2,696
     228:	0c000000 	jal	0 <EnNiw_Init>
     22c:	02002825 	move	a1,s0
     230:	3c014120 	lui	at,0x4120
     234:	44813000 	mtc1	at,$f6
     238:	3c053c23 	lui	a1,0x3c23
     23c:	34a5d70a 	ori	a1,a1,0xd70a
     240:	02402025 	move	a0,s2
     244:	0c000000 	jal	0 <EnNiw_Init>
     248:	e6460304 	swc1	$f6,772(s2)
     24c:	3c010000 	lui	at,0x0
     250:	0c000000 	jal	0 <EnNiw_Init>
     254:	c42c0000 	lwc1	$f12,0(at)
     258:	4600020d 	trunc.w.s	$f8,$f0
     25c:	24080001 	li	t0,1
     260:	440f4000 	mfc1	t7,$f8
     264:	00000000 	nop
     268:	25f80005 	addiu	t8,t7,5
     26c:	a65802a4 	sh	t8,676(s2)
     270:	865902a4 	lh	t9,676(s2)
     274:	07230003 	bgezl	t9,284 <EnNiw_Init+0x284>
     278:	8649001c 	lh	t1,28(s2)
     27c:	a64802a4 	sh	t0,676(s2)
     280:	8649001c 	lh	t1,28(s2)
     284:	252affff 	addiu	t2,t1,-1
     288:	2d41000e 	sltiu	at,t2,14
     28c:	10200039 	beqz	at,374 <L80AB5AF4>
     290:	000a5080 	sll	t2,t2,0x2
     294:	3c010000 	lui	at,0x0
     298:	002a0821 	addu	at,at,t2
     29c:	8c2a0000 	lw	t2,0(at)
     2a0:	01400008 	jr	t2
     2a4:	00000000 	nop

000002a8 <L80AB5A28>:
     2a8:	8e2b0010 	lw	t3,16(s1)
     2ac:	55600032 	bnezl	t3,378 <L80AB5AF4+0x4>
     2b0:	2650030c 	addiu	s0,s2,780
     2b4:	0c000000 	jal	0 <EnNiw_Init>
     2b8:	02402025 	move	a0,s2
     2bc:	1000002e 	b	378 <L80AB5AF4+0x4>
     2c0:	2650030c 	addiu	s0,s2,780

000002c4 <L80AB5A44>:
     2c4:	962c0ed6 	lhu	t4,3798(s1)
     2c8:	318d0010 	andi	t5,t4,0x10
     2cc:	51a0002a 	beqzl	t5,378 <L80AB5AF4+0x4>
     2d0:	2650030c 	addiu	s0,s2,780
     2d4:	0c000000 	jal	0 <EnNiw_Init>
     2d8:	02402025 	move	a0,s2
     2dc:	10000026 	b	378 <L80AB5AF4+0x4>
     2e0:	2650030c 	addiu	s0,s2,780

000002e4 <L80AB5A64>:
     2e4:	962e0ed6 	lhu	t6,3798(s1)
     2e8:	31cf0010 	andi	t7,t6,0x10
     2ec:	55e00022 	bnezl	t7,378 <L80AB5AF4+0x4>
     2f0:	2650030c 	addiu	s0,s2,780
     2f4:	0c000000 	jal	0 <EnNiw_Init>
     2f8:	02402025 	move	a0,s2
     2fc:	1000001e 	b	378 <L80AB5AF4+0x4>
     300:	2650030c 	addiu	s0,s2,780

00000304 <L80AB5A84>:
     304:	96380ed6 	lhu	t8,3798(s1)
     308:	33190100 	andi	t9,t8,0x100
     30c:	5320001a 	beqzl	t9,378 <L80AB5AF4+0x4>
     310:	2650030c 	addiu	s0,s2,780
     314:	0c000000 	jal	0 <EnNiw_Init>
     318:	02402025 	move	a0,s2
     31c:	10000016 	b	378 <L80AB5AF4+0x4>
     320:	2650030c 	addiu	s0,s2,780

00000324 <L80AB5AA4>:
     324:	96280ed6 	lhu	t0,3798(s1)
     328:	31090100 	andi	t1,t0,0x100
     32c:	55200012 	bnezl	t1,378 <L80AB5AF4+0x4>
     330:	2650030c 	addiu	s0,s2,780
     334:	0c000000 	jal	0 <EnNiw_Init>
     338:	02402025 	move	a0,s2
     33c:	1000000e 	b	378 <L80AB5AF4+0x4>
     340:	2650030c 	addiu	s0,s2,780

00000344 <L80AB5AC4>:
     344:	44805000 	mtc1	zero,$f10
     348:	00000000 	nop
     34c:	e64a006c 	swc1	$f10,108(s2)

00000350 <L80AB5AD0>:
     350:	8e4a0004 	lw	t2,4(s2)
     354:	2401fffe 	li	at,-2
     358:	a24000ae 	sb	zero,174(s2)
     35c:	01415824 	and	t3,t2,at
     360:	10000004 	b	374 <L80AB5AF4>
     364:	ae4b0004 	sw	t3,4(s2)

00000368 <L80AB5AE8>:
     368:	44808000 	mtc1	zero,$f16
     36c:	00000000 	nop
     370:	e650006c 	swc1	$f16,108(s2)

00000374 <L80AB5AF4>:
     374:	2650030c 	addiu	s0,s2,780
     378:	02002825 	move	a1,s0
     37c:	0c000000 	jal	0 <EnNiw_Init>
     380:	8fa40054 	lw	a0,84(sp)
     384:	8642001c 	lh	v0,28(s2)
     388:	2401000a 	li	at,10
     38c:	02002825 	move	a1,s0
     390:	10410008 	beq	v0,at,3b4 <L80AB5AF4+0x40>
     394:	02403025 	move	a2,s2
     398:	2401000d 	li	at,13
     39c:	10410007 	beq	v0,at,3bc <L80AB5AF4+0x48>
     3a0:	2401000e 	li	at,14
     3a4:	10410005 	beq	v0,at,3bc <L80AB5AF4+0x48>
     3a8:	8fa40054 	lw	a0,84(sp)
     3ac:	10000014 	b	400 <L80AB5AF4+0x8c>
     3b0:	02002825 	move	a1,s0
     3b4:	240c00ff 	li	t4,255
     3b8:	a24c00ae 	sb	t4,174(s2)
     3bc:	3c070000 	lui	a3,0x0
     3c0:	24e70000 	addiu	a3,a3,0
     3c4:	0c000000 	jal	0 <EnNiw_Init>
     3c8:	8fa40054 	lw	a0,84(sp)
     3cc:	8fad0054 	lw	t5,84(sp)
     3d0:	24010034 	li	at,52
     3d4:	85ae00a4 	lh	t6,164(t5)
     3d8:	15c1000d 	bne	t6,at,410 <L80AB5AF4+0x9c>
     3dc:	00000000 	nop
     3e0:	962f0ed6 	lhu	t7,3798(s1)
     3e4:	31f84000 	andi	t8,t7,0x4000
     3e8:	17000009 	bnez	t8,410 <L80AB5AF4+0x9c>
     3ec:	00000000 	nop
     3f0:	0c000000 	jal	0 <EnNiw_Init>
     3f4:	02402025 	move	a0,s2
     3f8:	10000005 	b	410 <L80AB5AF4+0x9c>
     3fc:	00000000 	nop
     400:	3c070000 	lui	a3,0x0
     404:	24e70000 	addiu	a3,a3,0
     408:	0c000000 	jal	0 <EnNiw_Init>
     40c:	02403025 	move	a2,s2
     410:	3c040000 	lui	a0,0x0
     414:	24840000 	addiu	a0,a0,0
     418:	0c000000 	jal	0 <EnNiw_Init>
     41c:	8645001c 	lh	a1,28(s2)
     420:	3c040000 	lui	a0,0x0
     424:	0c000000 	jal	0 <EnNiw_Init>
     428:	24840000 	addiu	a0,a0,0
     42c:	3c190000 	lui	t9,0x0
     430:	27390000 	addiu	t9,t9,0
     434:	ae590250 	sw	t9,592(s2)
     438:	8fbf0034 	lw	ra,52(sp)
     43c:	8fb00028 	lw	s0,40(sp)
     440:	8fb1002c 	lw	s1,44(sp)
     444:	8fb20030 	lw	s2,48(sp)
     448:	03e00008 	jr	ra
     44c:	27bd0050 	addiu	sp,sp,80

00000450 <EnNiw_Destroy>:
     450:	27bdffe8 	addiu	sp,sp,-24
     454:	00803025 	move	a2,a0
     458:	afbf0014 	sw	ra,20(sp)
     45c:	00a02025 	move	a0,a1
     460:	0c000000 	jal	0 <EnNiw_Init>
     464:	24c5030c 	addiu	a1,a2,780
     468:	8fbf0014 	lw	ra,20(sp)
     46c:	27bd0018 	addiu	sp,sp,24
     470:	03e00008 	jr	ra
     474:	00000000 	nop

00000478 <func_80AB5BF8>:
     478:	27bdffd8 	addiu	sp,sp,-40
     47c:	afbf001c 	sw	ra,28(sp)
     480:	afb00018 	sw	s0,24(sp)
     484:	afa5002c 	sw	a1,44(sp)
     488:	afa60030 	sw	a2,48(sp)
     48c:	848e001c 	lh	t6,28(a0)
     490:	3c013f80 	lui	at,0x3f80
     494:	44811000 	mtc1	at,$f2
     498:	00063400 	sll	a2,a2,0x10
     49c:	2401000d 	li	at,13
     4a0:	00063403 	sra	a2,a2,0x10
     4a4:	15c10004 	bne	t6,at,4b8 <func_80AB5BF8+0x40>
     4a8:	00808025 	move	s0,a0
     4ac:	3c014000 	lui	at,0x4000
     4b0:	44811000 	mtc1	at,$f2
     4b4:	00000000 	nop
     4b8:	860f0254 	lh	t7,596(s0)
     4bc:	55e00021 	bnezl	t7,544 <func_80AB5BF8+0xcc>
     4c0:	860d0256 	lh	t5,598(s0)
     4c4:	14c00004 	bnez	a2,4d8 <func_80AB5BF8+0x60>
     4c8:	3c010000 	lui	at,0x0
     4cc:	44807000 	mtc1	zero,$f14
     4d0:	10000005 	b	4e8 <func_80AB5BF8+0x70>
     4d4:	e60e026c 	swc1	$f14,620(s0)
     4d8:	c4240000 	lwc1	$f4,0(at)
     4dc:	44807000 	mtc1	zero,$f14
     4e0:	46022182 	mul.s	$f6,$f4,$f2
     4e4:	e606026c 	swc1	$f6,620(s0)
     4e8:	86180298 	lh	t8,664(s0)
     4ec:	24080003 	li	t0,3
     4f0:	a6080254 	sh	t0,596(s0)
     4f4:	27190001 	addiu	t9,t8,1
     4f8:	a6190298 	sh	t9,664(s0)
     4fc:	86090298 	lh	t1,664(s0)
     500:	312a0001 	andi	t2,t1,0x1
     504:	5540000f 	bnezl	t2,544 <func_80AB5BF8+0xcc>
     508:	860d0256 	lh	t5,598(s0)
     50c:	14c0000c 	bnez	a2,540 <func_80AB5BF8+0xc8>
     510:	e60e026c 	swc1	$f14,620(s0)
     514:	3c0141f0 	lui	at,0x41f0
     518:	44816000 	mtc1	at,$f12
     51c:	a7a60032 	sh	a2,50(sp)
     520:	0c000000 	jal	0 <EnNiw_Init>
     524:	e7a20024 	swc1	$f2,36(sp)
     528:	4600020d 	trunc.w.s	$f8,$f0
     52c:	87a60032 	lh	a2,50(sp)
     530:	c7a20024 	lwc1	$f2,36(sp)
     534:	440c4000 	mfc1	t4,$f8
     538:	00000000 	nop
     53c:	a60c0254 	sh	t4,596(s0)
     540:	860d0256 	lh	t5,598(s0)
     544:	44807000 	mtc1	zero,$f14
     548:	55a00053 	bnezl	t5,698 <L80AB5DE4+0x34>
     54c:	c6000290 	lwc1	$f0,656(s0)
     550:	860e029c 	lh	t6,668(s0)
     554:	2cc10006 	sltiu	at,a2,6
     558:	00064080 	sll	t0,a2,0x2
     55c:	25cf0001 	addiu	t7,t6,1
     560:	a60f029c 	sh	t7,668(s0)
     564:	8618029c 	lh	t8,668(s0)
     568:	33190001 	andi	t9,t8,0x1
     56c:	10200049 	beqz	at,694 <L80AB5DE4+0x30>
     570:	a619029c 	sh	t9,668(s0)
     574:	3c010000 	lui	at,0x0
     578:	00280821 	addu	at,at,t0
     57c:	8c280000 	lw	t0,0(at)
     580:	01000008 	jr	t0
     584:	00000000 	nop

00000588 <L80AB5D08>:
     588:	e60e0274 	swc1	$f14,628(s0)
     58c:	10000041 	b	694 <L80AB5DE4+0x30>
     590:	e60e0270 	swc1	$f14,624(s0)

00000594 <L80AB5D14>:
     594:	24090003 	li	t1,3
     598:	a6090256 	sh	t1,598(s0)
     59c:	3c010000 	lui	at,0x0
     5a0:	c42a0000 	lwc1	$f10,0(at)
     5a4:	860a029c 	lh	t2,668(s0)
     5a8:	46025002 	mul.s	$f0,$f10,$f2
     5ac:	e6000274 	swc1	$f0,628(s0)
     5b0:	15400038 	bnez	t2,694 <L80AB5DE4+0x30>
     5b4:	e6000270 	swc1	$f0,624(s0)
     5b8:	e60e0274 	swc1	$f14,628(s0)
     5bc:	10000035 	b	694 <L80AB5DE4+0x30>
     5c0:	e60e0270 	swc1	$f14,624(s0)

000005c4 <L80AB5D44>:
     5c4:	3c010000 	lui	at,0x0
     5c8:	c4200000 	lwc1	$f0,0(at)
     5cc:	3c010000 	lui	at,0x0
     5d0:	c4220000 	lwc1	$f2,0(at)
     5d4:	240b0002 	li	t3,2
     5d8:	a60b0256 	sh	t3,598(s0)
     5dc:	3c010000 	lui	at,0x0
     5e0:	c4300000 	lwc1	$f16,0(at)
     5e4:	3c010000 	lui	at,0x0
     5e8:	860c029c 	lh	t4,668(s0)
     5ec:	e6100274 	swc1	$f16,628(s0)
     5f0:	c4320000 	lwc1	$f18,0(at)
     5f4:	e6000288 	swc1	$f0,648(s0)
     5f8:	e6000280 	swc1	$f0,640(s0)
     5fc:	e602028c 	swc1	$f2,652(s0)
     600:	e6020284 	swc1	$f2,644(s0)
     604:	15800023 	bnez	t4,694 <L80AB5DE4+0x30>
     608:	e6120270 	swc1	$f18,624(s0)
     60c:	3c0145fa 	lui	at,0x45fa
     610:	44810000 	mtc1	at,$f0
     614:	00000000 	nop
     618:	e6000288 	swc1	$f0,648(s0)
     61c:	1000001d 	b	694 <L80AB5DE4+0x30>
     620:	e6000280 	swc1	$f0,640(s0)

00000624 <L80AB5DA4>:
     624:	3c010000 	lui	at,0x0
     628:	c4200000 	lwc1	$f0,0(at)
     62c:	860e029c 	lh	t6,668(s0)
     630:	240d0002 	li	t5,2
     634:	a60d0256 	sh	t5,598(s0)
     638:	e6000280 	swc1	$f0,640(s0)
     63c:	15c00015 	bnez	t6,694 <L80AB5DE4+0x30>
     640:	e6000288 	swc1	$f0,648(s0)
     644:	3c010000 	lui	at,0x0
     648:	c4200000 	lwc1	$f0,0(at)
     64c:	e6000280 	swc1	$f0,640(s0)
     650:	10000010 	b	694 <L80AB5DE4+0x30>
     654:	e6000288 	swc1	$f0,648(s0)

00000658 <L80AB5DD8>:
     658:	240f0005 	li	t7,5
     65c:	1000000d 	b	694 <L80AB5DE4+0x30>
     660:	a60f0254 	sh	t7,596(s0)

00000664 <L80AB5DE4>:
     664:	3c010000 	lui	at,0x0
     668:	c4200000 	lwc1	$f0,0(at)
     66c:	8619029c 	lh	t9,668(s0)
     670:	24180005 	li	t8,5
     674:	a6180256 	sh	t8,598(s0)
     678:	e6000280 	swc1	$f0,640(s0)
     67c:	17200005 	bnez	t9,694 <L80AB5DE4+0x30>
     680:	e6000288 	swc1	$f0,648(s0)
     684:	3c010000 	lui	at,0x0
     688:	c4200000 	lwc1	$f0,0(at)
     68c:	e6000280 	swc1	$f0,640(s0)
     690:	e6000288 	swc1	$f0,648(s0)
     694:	c6000290 	lwc1	$f0,656(s0)
     698:	c60402e0 	lwc1	$f4,736(s0)
     69c:	260402e0 	addiu	a0,s0,736
     6a0:	3c063f00 	lui	a2,0x3f00
     6a4:	46002032 	c.eq.s	$f4,$f0
     6a8:	00000000 	nop
     6ac:	45030005 	bc1tl	6c4 <L80AB5DE4+0x60>
     6b0:	c600026c 	lwc1	$f0,620(s0)
     6b4:	44050000 	mfc1	a1,$f0
     6b8:	0c000000 	jal	0 <EnNiw_Init>
     6bc:	3c07457a 	lui	a3,0x457a
     6c0:	c600026c 	lwc1	$f0,620(s0)
     6c4:	c60602dc 	lwc1	$f6,732(s0)
     6c8:	260402dc 	addiu	a0,s0,732
     6cc:	3c063f00 	lui	a2,0x3f00
     6d0:	46003032 	c.eq.s	$f6,$f0
     6d4:	00000000 	nop
     6d8:	45030005 	bc1tl	6f0 <L80AB5DE4+0x8c>
     6dc:	c6000274 	lwc1	$f0,628(s0)
     6e0:	44050000 	mfc1	a1,$f0
     6e4:	0c000000 	jal	0 <EnNiw_Init>
     6e8:	3c07457a 	lui	a3,0x457a
     6ec:	c6000274 	lwc1	$f0,628(s0)
     6f0:	c60802c4 	lwc1	$f8,708(s0)
     6f4:	3c063f4c 	lui	a2,0x3f4c
     6f8:	34c6cccd 	ori	a2,a2,0xcccd
     6fc:	46004032 	c.eq.s	$f8,$f0
     700:	260402c4 	addiu	a0,s0,708
     704:	3c0745da 	lui	a3,0x45da
     708:	45030005 	bc1tl	720 <L80AB5DE4+0xbc>
     70c:	c6000288 	lwc1	$f0,648(s0)
     710:	44050000 	mfc1	a1,$f0
     714:	0c000000 	jal	0 <EnNiw_Init>
     718:	34e7c000 	ori	a3,a3,0xc000
     71c:	c6000288 	lwc1	$f0,648(s0)
     720:	c60a02c8 	lwc1	$f10,712(s0)
     724:	3c063f4c 	lui	a2,0x3f4c
     728:	34c6cccd 	ori	a2,a2,0xcccd
     72c:	46005032 	c.eq.s	$f10,$f0
     730:	260402c8 	addiu	a0,s0,712
     734:	3c0745da 	lui	a3,0x45da
     738:	45030005 	bc1tl	750 <L80AB5DE4+0xec>
     73c:	c600028c 	lwc1	$f0,652(s0)
     740:	44050000 	mfc1	a1,$f0
     744:	0c000000 	jal	0 <EnNiw_Init>
     748:	34e7c000 	ori	a3,a3,0xc000
     74c:	c600028c 	lwc1	$f0,652(s0)
     750:	c61002cc 	lwc1	$f16,716(s0)
     754:	3c063f4c 	lui	a2,0x3f4c
     758:	34c6cccd 	ori	a2,a2,0xcccd
     75c:	46008032 	c.eq.s	$f16,$f0
     760:	260402cc 	addiu	a0,s0,716
     764:	3c0745da 	lui	a3,0x45da
     768:	45030005 	bc1tl	780 <L80AB5DE4+0x11c>
     76c:	c6000270 	lwc1	$f0,624(s0)
     770:	44050000 	mfc1	a1,$f0
     774:	0c000000 	jal	0 <EnNiw_Init>
     778:	34e7c000 	ori	a3,a3,0xc000
     77c:	c6000270 	lwc1	$f0,624(s0)
     780:	c61202d0 	lwc1	$f18,720(s0)
     784:	3c063f4c 	lui	a2,0x3f4c
     788:	34c6cccd 	ori	a2,a2,0xcccd
     78c:	46009032 	c.eq.s	$f18,$f0
     790:	260402d0 	addiu	a0,s0,720
     794:	3c0745da 	lui	a3,0x45da
     798:	45030005 	bc1tl	7b0 <L80AB5DE4+0x14c>
     79c:	c6000280 	lwc1	$f0,640(s0)
     7a0:	44050000 	mfc1	a1,$f0
     7a4:	0c000000 	jal	0 <EnNiw_Init>
     7a8:	34e7c000 	ori	a3,a3,0xc000
     7ac:	c6000280 	lwc1	$f0,640(s0)
     7b0:	c60402d4 	lwc1	$f4,724(s0)
     7b4:	3c063f4c 	lui	a2,0x3f4c
     7b8:	34c6cccd 	ori	a2,a2,0xcccd
     7bc:	46002032 	c.eq.s	$f4,$f0
     7c0:	260402d4 	addiu	a0,s0,724
     7c4:	3c0745da 	lui	a3,0x45da
     7c8:	45030005 	bc1tl	7e0 <L80AB5DE4+0x17c>
     7cc:	c6000284 	lwc1	$f0,644(s0)
     7d0:	44050000 	mfc1	a1,$f0
     7d4:	0c000000 	jal	0 <EnNiw_Init>
     7d8:	34e7c000 	ori	a3,a3,0xc000
     7dc:	c6000284 	lwc1	$f0,644(s0)
     7e0:	c60602d8 	lwc1	$f6,728(s0)
     7e4:	3c063f4c 	lui	a2,0x3f4c
     7e8:	34c6cccd 	ori	a2,a2,0xcccd
     7ec:	46003032 	c.eq.s	$f6,$f0
     7f0:	260402d8 	addiu	a0,s0,728
     7f4:	3c0745da 	lui	a3,0x45da
     7f8:	45030005 	bc1tl	810 <L80AB5DE4+0x1ac>
     7fc:	8fbf001c 	lw	ra,28(sp)
     800:	44050000 	mfc1	a1,$f0
     804:	0c000000 	jal	0 <EnNiw_Init>
     808:	34e7c000 	ori	a3,a3,0xc000
     80c:	8fbf001c 	lw	ra,28(sp)
     810:	8fb00018 	lw	s0,24(sp)
     814:	27bd0028 	addiu	sp,sp,40
     818:	03e00008 	jr	ra
     81c:	00000000 	nop

00000820 <func_80AB5FA0>:
     820:	27bdffa8 	addiu	sp,sp,-88
     824:	afbf003c 	sw	ra,60(sp)
     828:	afb10038 	sw	s1,56(sp)
     82c:	afb00034 	sw	s0,52(sp)
     830:	848e025c 	lh	t6,604(a0)
     834:	00a08025 	move	s0,a1
     838:	00808825 	move	s1,a0
     83c:	55c0004c 	bnezl	t6,970 <func_80AB5FA0+0x150>
     840:	8fbf003c 	lw	ra,60(sp)
     844:	848f0296 	lh	t7,662(a0)
     848:	29e10007 	slti	at,t7,7
     84c:	50200048 	beqzl	at,970 <func_80AB5FA0+0x150>
     850:	8fbf003c 	lw	ra,60(sp)
     854:	c4a400ec 	lwc1	$f4,236(a1)
     858:	c4a600e0 	lwc1	$f6,224(a1)
     85c:	46062201 	sub.s	$f8,$f4,$f6
     860:	e7a80054 	swc1	$f8,84(sp)
     864:	c4b000e4 	lwc1	$f16,228(a1)
     868:	c4aa00f0 	lwc1	$f10,240(a1)
     86c:	46105481 	sub.s	$f18,$f10,$f16
     870:	e7b20050 	swc1	$f18,80(sp)
     874:	c4a600e8 	lwc1	$f6,232(a1)
     878:	c4a400f4 	lwc1	$f4,244(a1)
     87c:	46062201 	sub.s	$f8,$f4,$f6
     880:	0c000000 	jal	0 <EnNiw_Init>
     884:	e7a8004c 	swc1	$f8,76(sp)
     888:	3c013f00 	lui	at,0x3f00
     88c:	44815000 	mtc1	at,$f10
     890:	c7b20054 	lwc1	$f18,84(sp)
     894:	c60600e0 	lwc1	$f6,224(s0)
     898:	460a0401 	sub.s	$f16,$f0,$f10
     89c:	3c010000 	lui	at,0x0
     8a0:	c42c0000 	lwc1	$f12,0(at)
     8a4:	46128102 	mul.s	$f4,$f16,$f18
     8a8:	46062200 	add.s	$f8,$f4,$f6
     8ac:	0c000000 	jal	0 <EnNiw_Init>
     8b0:	e7a80040 	swc1	$f8,64(sp)
     8b4:	3c014248 	lui	at,0x4248
     8b8:	44818000 	mtc1	at,$f16
     8bc:	3c013f00 	lui	at,0x3f00
     8c0:	44813000 	mtc1	at,$f6
     8c4:	c7a40050 	lwc1	$f4,80(sp)
     8c8:	c60a00e4 	lwc1	$f10,228(s0)
     8cc:	46062202 	mul.s	$f8,$f4,$f6
     8d0:	46105480 	add.s	$f18,$f10,$f16
     8d4:	46089280 	add.s	$f10,$f18,$f8
     8d8:	460a0400 	add.s	$f16,$f0,$f10
     8dc:	0c000000 	jal	0 <EnNiw_Init>
     8e0:	e7b00044 	swc1	$f16,68(sp)
     8e4:	3c013f00 	lui	at,0x3f00
     8e8:	44812000 	mtc1	at,$f4
     8ec:	c7b2004c 	lwc1	$f18,76(sp)
     8f0:	c60a00e8 	lwc1	$f10,232(s0)
     8f4:	46040181 	sub.s	$f6,$f0,$f4
     8f8:	c7a40044 	lwc1	$f4,68(sp)
     8fc:	c7b00040 	lwc1	$f16,64(sp)
     900:	afa00028 	sw	zero,40(sp)
     904:	46123202 	mul.s	$f8,$f6,$f18
     908:	afa00024 	sw	zero,36(sp)
     90c:	afa00020 	sw	zero,32(sp)
     910:	afa0001c 	sw	zero,28(sp)
     914:	26041c24 	addiu	a0,s0,7204
     918:	02202825 	move	a1,s1
     91c:	02003025 	move	a2,s0
     920:	460a4080 	add.s	$f2,$f8,$f10
     924:	24070144 	li	a3,324
     928:	e7a40014 	swc1	$f4,20(sp)
     92c:	e7b00010 	swc1	$f16,16(sp)
     930:	0c000000 	jal	0 <EnNiw_Init>
     934:	e7a20018 	swc1	$f2,24(sp)
     938:	10400007 	beqz	v0,958 <func_80AB5FA0+0x138>
     93c:	3c040000 	lui	a0,0x0
     940:	86380296 	lh	t8,662(s1)
     944:	2408000a 	li	t0,10
     948:	a628025c 	sh	t0,604(s1)
     94c:	27190001 	addiu	t9,t8,1
     950:	10000006 	b	96c <func_80AB5FA0+0x14c>
     954:	a6390296 	sh	t9,662(s1)
     958:	0c000000 	jal	0 <EnNiw_Init>
     95c:	24840000 	addiu	a0,a0,0
     960:	3c040000 	lui	a0,0x0
     964:	0c000000 	jal	0 <EnNiw_Init>
     968:	24840000 	addiu	a0,a0,0
     96c:	8fbf003c 	lw	ra,60(sp)
     970:	8fb00034 	lw	s0,52(sp)
     974:	8fb10038 	lw	s1,56(sp)
     978:	03e00008 	jr	ra
     97c:	27bd0058 	addiu	sp,sp,88

00000980 <func_80AB6100>:
     980:	27bdffd8 	addiu	sp,sp,-40
     984:	afbf0024 	sw	ra,36(sp)
     988:	afb00020 	sw	s0,32(sp)
     98c:	afa5002c 	sw	a1,44(sp)
     990:	848e025a 	lh	t6,602(a0)
     994:	00808025 	move	s0,a0
     998:	55c0000b 	bnezl	t6,9c8 <func_80AB6100+0x48>
     99c:	86080258 	lh	t0,600(s0)
     9a0:	94980088 	lhu	t8,136(a0)
     9a4:	240f0003 	li	t7,3
     9a8:	a48f025a 	sh	t7,602(a0)
     9ac:	33190001 	andi	t9,t8,0x1
     9b0:	13200004 	beqz	t9,9c4 <func_80AB6100+0x44>
     9b4:	3c014060 	lui	at,0x4060
     9b8:	44812000 	mtc1	at,$f4
     9bc:	00000000 	nop
     9c0:	e4840060 	swc1	$f4,96(a0)
     9c4:	86080258 	lh	t0,600(s0)
     9c8:	00067880 	sll	t7,a2,0x2
     9cc:	3c180000 	lui	t8,0x0
     9d0:	15000009 	bnez	t0,9f8 <func_80AB6100+0x78>
     9d4:	0006c880 	sll	t9,a2,0x2
     9d8:	860902a0 	lh	t1,672(s0)
     9dc:	240d0005 	li	t5,5
     9e0:	a60d0258 	sh	t5,600(s0)
     9e4:	252a0001 	addiu	t2,t1,1
     9e8:	a60a02a0 	sh	t2,672(s0)
     9ec:	860b02a0 	lh	t3,672(s0)
     9f0:	316c0001 	andi	t4,t3,0x1
     9f4:	a60c02a0 	sh	t4,672(s0)
     9f8:	860e02a0 	lh	t6,672(s0)
     9fc:	3c090000 	lui	t1,0x0
     a00:	3c080000 	lui	t0,0x0
     a04:	15c00005 	bnez	t6,a1c <func_80AB6100+0x9c>
     a08:	25290000 	addiu	t1,t1,0
     a0c:	27180000 	addiu	t8,t8,0
     a10:	01f81021 	addu	v0,t7,t8
     a14:	10000005 	b	a2c <func_80AB6100+0xac>
     a18:	c4420000 	lwc1	$f2,0(v0)
     a1c:	25080000 	addiu	t0,t0,0
     a20:	03281021 	addu	v0,t9,t0
     a24:	c4420000 	lwc1	$f2,0(v0)
     a28:	46001087 	neg.s	$f2,$f2
     a2c:	54490012 	bnel	v0,t1,a78 <func_80AB6100+0xf8>
     a30:	861902e4 	lh	t9,740(s0)
     a34:	860a025e 	lh	t2,606(s0)
     a38:	51400006 	beqzl	t2,a54 <func_80AB6100+0xd4>
     a3c:	860e0268 	lh	t6,616(s0)
     a40:	960b0088 	lhu	t3,136(s0)
     a44:	316c0008 	andi	t4,t3,0x8
     a48:	5180000b 	beqzl	t4,a78 <func_80AB6100+0xf8>
     a4c:	861902e4 	lh	t9,740(s0)
     a50:	860e0268 	lh	t6,616(s0)
     a54:	240d0096 	li	t5,150
     a58:	a60d025e 	sh	t5,606(s0)
     a5c:	55c00006 	bnezl	t6,a78 <func_80AB6100+0xf8>
     a60:	861902e4 	lh	t9,740(s0)
     a64:	8618008a 	lh	t8,138(s0)
     a68:	240f0046 	li	t7,70
     a6c:	a60f0268 	sh	t7,616(s0)
     a70:	a61802e4 	sh	t8,740(s0)
     a74:	861902e4 	lh	t9,740(s0)
     a78:	c61002fc 	lwc1	$f16,764(s0)
     a7c:	afa00010 	sw	zero,16(sp)
     a80:	44993000 	mtc1	t9,$f6
     a84:	4600848d 	trunc.w.s	$f18,$f16
     a88:	26040032 	addiu	a0,s0,50
     a8c:	24060003 	li	a2,3
     a90:	46803220 	cvt.s.w	$f8,$f6
     a94:	44079000 	mfc1	a3,$f18
     a98:	00000000 	nop
     a9c:	00073c00 	sll	a3,a3,0x10
     aa0:	00073c03 	sra	a3,a3,0x10
     aa4:	46024000 	add.s	$f0,$f8,$f2
     aa8:	4600028d 	trunc.w.s	$f10,$f0
     aac:	44055000 	mfc1	a1,$f10
     ab0:	00000000 	nop
     ab4:	00052c00 	sll	a1,a1,0x10
     ab8:	0c000000 	jal	0 <EnNiw_Init>
     abc:	00052c03 	sra	a1,a1,0x10
     ac0:	3c05453b 	lui	a1,0x453b
     ac4:	34a58000 	ori	a1,a1,0x8000
     ac8:	260402fc 	addiu	a0,s0,764
     acc:	3c063f80 	lui	a2,0x3f80
     ad0:	0c000000 	jal	0 <EnNiw_Init>
     ad4:	3c0743fa 	lui	a3,0x43fa
     ad8:	02002025 	move	a0,s0
     adc:	8fa5002c 	lw	a1,44(sp)
     ae0:	0c000000 	jal	0 <EnNiw_Init>
     ae4:	24060005 	li	a2,5
     ae8:	8fbf0024 	lw	ra,36(sp)
     aec:	8fb00020 	lw	s0,32(sp)
     af0:	27bd0028 	addiu	sp,sp,40
     af4:	03e00008 	jr	ra
     af8:	00000000 	nop

00000afc <func_80AB627C>:
     afc:	27bdffd0 	addiu	sp,sp,-48
     b00:	afb00028 	sw	s0,40(sp)
     b04:	00808025 	move	s0,a0
     b08:	afbf002c 	sw	ra,44(sp)
     b0c:	3c040600 	lui	a0,0x600
     b10:	afa50034 	sw	a1,52(sp)
     b14:	0c000000 	jal	0 <EnNiw_Init>
     b18:	248400e8 	addiu	a0,a0,232
     b1c:	44822000 	mtc1	v0,$f4
     b20:	3c01c120 	lui	at,0xc120
     b24:	44814000 	mtc1	at,$f8
     b28:	468021a0 	cvt.s.w	$f6,$f4
     b2c:	3c050600 	lui	a1,0x600
     b30:	24a500e8 	addiu	a1,a1,232
     b34:	2604014c 	addiu	a0,s0,332
     b38:	3c063f80 	lui	a2,0x3f80
     b3c:	24070000 	li	a3,0
     b40:	e7a60010 	swc1	$f6,16(sp)
     b44:	afa00014 	sw	zero,20(sp)
     b48:	0c000000 	jal	0 <EnNiw_Init>
     b4c:	e7a80018 	swc1	$f8,24(sp)
     b50:	8602001c 	lh	v0,28(s0)
     b54:	24010004 	li	at,4
     b58:	3c0f0000 	lui	t7,0x0
     b5c:	10410008 	beq	v0,at,b80 <func_80AB627C+0x84>
     b60:	25ef0000 	addiu	t7,t7,0
     b64:	2401000d 	li	at,13
     b68:	10410007 	beq	v0,at,b88 <func_80AB627C+0x8c>
     b6c:	3c180000 	lui	t8,0x0
     b70:	3c0e0000 	lui	t6,0x0
     b74:	25ce0000 	addiu	t6,t6,0
     b78:	10000005 	b	b90 <func_80AB627C+0x94>
     b7c:	ae0e0250 	sw	t6,592(s0)
     b80:	10000003 	b	b90 <func_80AB627C+0x94>
     b84:	ae0f0250 	sw	t7,592(s0)
     b88:	27180000 	addiu	t8,t8,0
     b8c:	ae180250 	sw	t8,592(s0)
     b90:	8fbf002c 	lw	ra,44(sp)
     b94:	8fb00028 	lw	s0,40(sp)
     b98:	27bd0030 	addiu	sp,sp,48
     b9c:	03e00008 	jr	ra
     ba0:	00000000 	nop

00000ba4 <func_80AB6324>:
     ba4:	27bdffe8 	addiu	sp,sp,-24
     ba8:	afbf0014 	sw	ra,20(sp)
     bac:	afa5001c 	sw	a1,28(sp)
     bb0:	908e0308 	lbu	t6,776(a0)
     bb4:	3c014000 	lui	at,0x4000
     bb8:	51c00015 	beqzl	t6,c10 <func_80AB6324+0x6c>
     bbc:	8fa5001c 	lw	a1,28(sp)
     bc0:	44816000 	mtc1	at,$f12
     bc4:	0c000000 	jal	0 <EnNiw_Init>
     bc8:	afa40018 	sw	a0,24(sp)
     bcc:	3c014080 	lui	at,0x4080
     bd0:	44812000 	mtc1	at,$f4
     bd4:	8fa40018 	lw	a0,24(sp)
     bd8:	3c014000 	lui	at,0x4000
     bdc:	46040180 	add.s	$f6,$f0,$f4
     be0:	44816000 	mtc1	at,$f12
     be4:	0c000000 	jal	0 <EnNiw_Init>
     be8:	e4860060 	swc1	$f6,96(a0)
     bec:	3c014040 	lui	at,0x4040
     bf0:	44814000 	mtc1	at,$f8
     bf4:	8fa40018 	lw	a0,24(sp)
     bf8:	3c0f0000 	lui	t7,0x0
     bfc:	46080280 	add.s	$f10,$f0,$f8
     c00:	25ef0000 	addiu	t7,t7,0
     c04:	ac8f0250 	sw	t7,592(a0)
     c08:	e48a0068 	swc1	$f10,104(a0)
     c0c:	8fa5001c 	lw	a1,28(sp)
     c10:	0c000000 	jal	0 <EnNiw_Init>
     c14:	24060001 	li	a2,1
     c18:	8fbf0014 	lw	ra,20(sp)
     c1c:	27bd0018 	addiu	sp,sp,24
     c20:	03e00008 	jr	ra
     c24:	00000000 	nop

00000c28 <func_80AB63A8>:
     c28:	27bdffe8 	addiu	sp,sp,-24
     c2c:	afbf0014 	sw	ra,20(sp)
     c30:	948e0088 	lhu	t6,136(a0)
     c34:	31cf0001 	andi	t7,t6,0x1
     c38:	11e0001f 	beqz	t7,cb8 <func_80AB63A8+0x90>
     c3c:	00000000 	nop
     c40:	44801000 	mtc1	zero,$f2
     c44:	c4840060 	lwc1	$f4,96(a0)
     c48:	3c180000 	lui	t8,0x0
     c4c:	27180000 	addiu	t8,t8,0
     c50:	4602203c 	c.lt.s	$f4,$f2
     c54:	00000000 	nop
     c58:	45000017 	bc1f	cb8 <func_80AB63A8+0x90>
     c5c:	00000000 	nop
     c60:	c4800024 	lwc1	$f0,36(a0)
     c64:	a480029e 	sh	zero,670(a0)
     c68:	8482029e 	lh	v0,670(a0)
     c6c:	e48002b8 	swc1	$f0,696(a0)
     c70:	e48002ac 	swc1	$f0,684(a0)
     c74:	c4800028 	lwc1	$f0,40(a0)
     c78:	e4820300 	swc1	$f2,768(a0)
     c7c:	e48202fc 	swc1	$f2,764(a0)
     c80:	e48002bc 	swc1	$f0,700(a0)
     c84:	e48002b0 	swc1	$f0,688(a0)
     c88:	c480002c 	lwc1	$f0,44(a0)
     c8c:	e4820068 	swc1	$f2,104(a0)
     c90:	e482028c 	swc1	$f2,652(a0)
     c94:	e4820284 	swc1	$f2,644(a0)
     c98:	e4820280 	swc1	$f2,640(a0)
     c9c:	e4820288 	swc1	$f2,648(a0)
     ca0:	ac980250 	sw	t8,592(a0)
     ca4:	a482025a 	sh	v0,602(a0)
     ca8:	a482025c 	sh	v0,604(a0)
     cac:	e48002c0 	swc1	$f0,704(a0)
     cb0:	10000003 	b	cc0 <func_80AB63A8+0x98>
     cb4:	e48002b4 	swc1	$f0,692(a0)
     cb8:	0c000000 	jal	0 <EnNiw_Init>
     cbc:	24060002 	li	a2,2
     cc0:	8fbf0014 	lw	ra,20(sp)
     cc4:	27bd0018 	addiu	sp,sp,24
     cc8:	03e00008 	jr	ra
     ccc:	00000000 	nop

00000cd0 <func_80AB6450>:
     cd0:	27bdffd8 	addiu	sp,sp,-40
     cd4:	afbf0024 	sw	ra,36(sp)
     cd8:	afb00020 	sw	s0,32(sp)
     cdc:	3c0141f0 	lui	at,0x41f0
     ce0:	44813000 	mtc1	at,$f6
     ce4:	c4840090 	lwc1	$f4,144(a0)
     ce8:	00808025 	move	s0,a0
     cec:	8ca21c44 	lw	v0,7236(a1)
     cf0:	4606203c 	c.lt.s	$f4,$f6
     cf4:	00000000 	nop
     cf8:	45020015 	bc1fl	d50 <func_80AB6450+0x80>
     cfc:	02002025 	move	a0,s0
     d00:	c4880028 	lwc1	$f8,40(a0)
     d04:	c44a0028 	lwc1	$f10,40(v0)
     d08:	3c0140a0 	lui	at,0x40a0
     d0c:	44818000 	mtc1	at,$f16
     d10:	460a4001 	sub.s	$f0,$f8,$f10
     d14:	3c0f0000 	lui	t7,0x0
     d18:	240e0064 	li	t6,100
     d1c:	3c01c000 	lui	at,0xc000
     d20:	46000005 	abs.s	$f0,$f0
     d24:	25ef0000 	addiu	t7,t7,0
     d28:	4610003c 	c.lt.s	$f0,$f16
     d2c:	00000000 	nop
     d30:	45020007 	bc1fl	d50 <func_80AB6450+0x80>
     d34:	02002025 	move	a0,s0
     d38:	44819000 	mtc1	at,$f18
     d3c:	a48e025e 	sh	t6,606(a0)
     d40:	ac8f0250 	sw	t7,592(a0)
     d44:	10000025 	b	ddc <func_80AB6450+0x10c>
     d48:	e492006c 	swc1	$f18,108(a0)
     d4c:	02002025 	move	a0,s0
     d50:	0c000000 	jal	0 <EnNiw_Init>
     d54:	afa5002c 	sw	a1,44(sp)
     d58:	10400015 	beqz	v0,db0 <func_80AB6450+0xe0>
     d5c:	02002025 	move	a0,s0
     d60:	3c01c000 	lui	at,0xc000
     d64:	44812000 	mtc1	at,$f4
     d68:	02002025 	move	a0,s0
     d6c:	24052813 	li	a1,10259
     d70:	0c000000 	jal	0 <EnNiw_Init>
     d74:	e604006c 	swc1	$f4,108(s0)
     d78:	8e180004 	lw	t8,4(s0)
     d7c:	44803000 	mtc1	zero,$f6
     d80:	2401fffe 	li	at,-2
     d84:	3c080000 	lui	t0,0x0
     d88:	2402001e 	li	v0,30
     d8c:	25080000 	addiu	t0,t0,0
     d90:	0301c824 	and	t9,t8,at
     d94:	a6020260 	sh	v0,608(s0)
     d98:	a60002e8 	sh	zero,744(s0)
     d9c:	a602025a 	sh	v0,602(s0)
     da0:	ae190004 	sw	t9,4(s0)
     da4:	ae080250 	sw	t0,592(s0)
     da8:	1000000c 	b	ddc <func_80AB6450+0x10c>
     dac:	e6060068 	swc1	$f6,104(s0)
     db0:	3c014120 	lui	at,0x4120
     db4:	44814000 	mtc1	at,$f8
     db8:	8fa5002c 	lw	a1,44(sp)
     dbc:	00003025 	move	a2,zero
     dc0:	3c0741c8 	lui	a3,0x41c8
     dc4:	0c000000 	jal	0 <EnNiw_Init>
     dc8:	e7a80010 	swc1	$f8,16(sp)
     dcc:	02002025 	move	a0,s0
     dd0:	8fa5002c 	lw	a1,44(sp)
     dd4:	0c000000 	jal	0 <EnNiw_Init>
     dd8:	24060001 	li	a2,1
     ddc:	8fbf0024 	lw	ra,36(sp)
     de0:	8fb00020 	lw	s0,32(sp)
     de4:	27bd0028 	addiu	sp,sp,40
     de8:	03e00008 	jr	ra
     dec:	00000000 	nop

00000df0 <func_80AB6570>:
     df0:	27bdffc0 	addiu	sp,sp,-64
     df4:	3c0142c8 	lui	at,0x42c8
     df8:	afbf0024 	sw	ra,36(sp)
     dfc:	afb00020 	sw	s0,32(sp)
     e00:	44816000 	mtc1	at,$f12
     e04:	00808025 	move	s0,a0
     e08:	0c000000 	jal	0 <EnNiw_Init>
     e0c:	afa50044 	sw	a1,68(sp)
     e10:	3c0142c8 	lui	at,0x42c8
     e14:	44816000 	mtc1	at,$f12
     e18:	0c000000 	jal	0 <EnNiw_Init>
     e1c:	e7a00034 	swc1	$f0,52(sp)
     e20:	860e001c 	lh	t6,28(s0)
     e24:	2401000a 	li	at,10
     e28:	c7a20034 	lwc1	$f2,52(sp)
     e2c:	11c10022 	beq	t6,at,eb8 <func_80AB6570+0xc8>
     e30:	46000386 	mov.s	$f14,$f0
     e34:	02002025 	move	a0,s0
     e38:	8fa50044 	lw	a1,68(sp)
     e3c:	e7a20034 	swc1	$f2,52(sp)
     e40:	0c000000 	jal	0 <EnNiw_Init>
     e44:	e7ae0030 	swc1	$f14,48(sp)
     e48:	c7a20034 	lwc1	$f2,52(sp)
     e4c:	10400012 	beqz	v0,e98 <func_80AB6570+0xa8>
     e50:	c7ae0030 	lwc1	$f14,48(sp)
     e54:	02002025 	move	a0,s0
     e58:	0c000000 	jal	0 <EnNiw_Init>
     e5c:	24052813 	li	a1,10259
     e60:	8e0f0004 	lw	t7,4(s0)
     e64:	44802000 	mtc1	zero,$f4
     e68:	2401fffe 	li	at,-2
     e6c:	3c190000 	lui	t9,0x0
     e70:	2402001e 	li	v0,30
     e74:	27390000 	addiu	t9,t9,0
     e78:	01e1c024 	and	t8,t7,at
     e7c:	a6020260 	sh	v0,608(s0)
     e80:	a60002e8 	sh	zero,744(s0)
     e84:	a602025a 	sh	v0,602(s0)
     e88:	ae180004 	sw	t8,4(s0)
     e8c:	ae190250 	sw	t9,592(s0)
     e90:	10000104 	b	12a4 <func_80AB6570+0x4b4>
     e94:	e6040068 	swc1	$f4,104(s0)
     e98:	02002025 	move	a0,s0
     e9c:	8fa50044 	lw	a1,68(sp)
     ea0:	e7a20034 	swc1	$f2,52(sp)
     ea4:	0c000000 	jal	0 <EnNiw_Init>
     ea8:	e7ae0030 	swc1	$f14,48(sp)
     eac:	c7a20034 	lwc1	$f2,52(sp)
     eb0:	1000001e 	b	f2c <func_80AB6570+0x13c>
     eb4:	c7ae0030 	lwc1	$f14,48(sp)
     eb8:	860802e8 	lh	t0,744(s0)
     ebc:	5100001c 	beqzl	t0,f30 <func_80AB6570+0x140>
     ec0:	a7a0002e 	sh	zero,46(sp)
     ec4:	860a0264 	lh	t2,612(s0)
     ec8:	24090001 	li	t1,1
     ecc:	a60902a6 	sh	t1,678(s0)
     ed0:	15400005 	bnez	t2,ee8 <func_80AB6570+0xf8>
     ed4:	02002025 	move	a0,s0
     ed8:	0c000000 	jal	0 <EnNiw_Init>
     edc:	24052813 	li	a1,10259
     ee0:	240b0064 	li	t3,100
     ee4:	a60b0264 	sh	t3,612(s0)
     ee8:	3c010000 	lui	at,0x0
     eec:	0c000000 	jal	0 <EnNiw_Init>
     ef0:	c42c0000 	lwc1	$f12,0(at)
     ef4:	4600018d 	trunc.w.s	$f6,$f0
     ef8:	3c014080 	lui	at,0x4080
     efc:	44814000 	mtc1	at,$f8
     f00:	44805000 	mtc1	zero,$f10
     f04:	440d3000 	mfc1	t5,$f6
     f08:	44809000 	mtc1	zero,$f18
     f0c:	3c0e0000 	lui	t6,0x0
     f10:	25ce0000 	addiu	t6,t6,0
     f14:	ae0e0250 	sw	t6,592(s0)
     f18:	e6080068 	swc1	$f8,104(s0)
     f1c:	e60a0300 	swc1	$f10,768(s0)
     f20:	a60d02a0 	sh	t5,672(s0)
     f24:	100000df 	b	12a4 <func_80AB6570+0x4b4>
     f28:	e61202fc 	swc1	$f18,764(s0)
     f2c:	a7a0002e 	sh	zero,46(sp)
     f30:	8602025c 	lh	v0,604(s0)
     f34:	3c010000 	lui	at,0x0
     f38:	1040001f 	beqz	v0,fb8 <func_80AB6570+0x1c8>
     f3c:	00000000 	nop
     f40:	c42c0000 	lwc1	$f12,0(at)
     f44:	e7a20034 	swc1	$f2,52(sp)
     f48:	0c000000 	jal	0 <EnNiw_Init>
     f4c:	e7ae0030 	swc1	$f14,48(sp)
     f50:	3c013f80 	lui	at,0x3f80
     f54:	44812000 	mtc1	at,$f4
     f58:	c7a20034 	lwc1	$f2,52(sp)
     f5c:	c7ae0030 	lwc1	$f14,48(sp)
     f60:	4604003c 	c.lt.s	$f0,$f4
     f64:	26040290 	addiu	a0,s0,656
     f68:	3c050000 	lui	a1,0x0
     f6c:	3c063f00 	lui	a2,0x3f00
     f70:	45000007 	bc1f	f90 <func_80AB6570+0x1a0>
     f74:	3c07457a 	lui	a3,0x457a
     f78:	860f02e6 	lh	t7,742(s0)
     f7c:	25f80001 	addiu	t8,t7,1
     f80:	a61802e6 	sh	t8,742(s0)
     f84:	861902e6 	lh	t9,742(s0)
     f88:	33280001 	andi	t0,t9,0x1
     f8c:	a60802e6 	sh	t0,742(s0)
     f90:	860902e6 	lh	t1,742(s0)
     f94:	e7ae0030 	swc1	$f14,48(sp)
     f98:	e7a20034 	swc1	$f2,52(sp)
     f9c:	00095080 	sll	t2,t1,0x2
     fa0:	00aa2821 	addu	a1,a1,t2
     fa4:	0c000000 	jal	0 <EnNiw_Init>
     fa8:	8ca50000 	lw	a1,0(a1)
     fac:	c7a20034 	lwc1	$f2,52(sp)
     fb0:	c7ae0030 	lwc1	$f14,48(sp)
     fb4:	8602025c 	lh	v0,604(s0)
     fb8:	54400066 	bnezl	v0,1154 <func_80AB6570+0x364>
     fbc:	860c025a 	lh	t4,602(s0)
     fc0:	860b025a 	lh	t3,602(s0)
     fc4:	55600063 	bnezl	t3,1154 <func_80AB6570+0x364>
     fc8:	860c025a 	lh	t4,602(s0)
     fcc:	860c029e 	lh	t4,670(s0)
     fd0:	258d0001 	addiu	t5,t4,1
     fd4:	a60d029e 	sh	t5,670(s0)
     fd8:	860e029e 	lh	t6,670(s0)
     fdc:	29c10008 	slti	at,t6,8
     fe0:	14200051 	bnez	at,1128 <func_80AB6570+0x338>
     fe4:	3c0141f0 	lui	at,0x41f0
     fe8:	44816000 	mtc1	at,$f12
     fec:	e7a20034 	swc1	$f2,52(sp)
     ff0:	0c000000 	jal	0 <EnNiw_Init>
     ff4:	e7ae0030 	swc1	$f14,48(sp)
     ff8:	4600018d 	trunc.w.s	$f6,$f0
     ffc:	3c010000 	lui	at,0x0
    1000:	44183000 	mfc1	t8,$f6
    1004:	00000000 	nop
    1008:	a618025c 	sh	t8,604(s0)
    100c:	0c000000 	jal	0 <EnNiw_Init>
    1010:	c42c0000 	lwc1	$f12,0(at)
    1014:	4600020d 	trunc.w.s	$f8,$f0
    1018:	8602001c 	lh	v0,28(s0)
    101c:	c7a20034 	lwc1	$f2,52(sp)
    1020:	c7ae0030 	lwc1	$f14,48(sp)
    1024:	44084000 	mfc1	t0,$f8
    1028:	2401000a 	li	at,10
    102c:	1041001a 	beq	v0,at,1098 <func_80AB6570+0x2a8>
    1030:	a608029e 	sh	t0,670(s0)
    1034:	24010008 	li	at,8
    1038:	50410018 	beql	v0,at,109c <func_80AB6570+0x2ac>
    103c:	3c0141f0 	lui	at,0x41f0
    1040:	44805000 	mtc1	zero,$f10
    1044:	44802000 	mtc1	zero,$f4
    1048:	3c0142c8 	lui	at,0x42c8
    104c:	460a103c 	c.lt.s	$f2,$f10
    1050:	00000000 	nop
    1054:	45020006 	bc1fl	1070 <func_80AB6570+0x280>
    1058:	44819000 	mtc1	at,$f18
    105c:	3c0142c8 	lui	at,0x42c8
    1060:	44810000 	mtc1	at,$f0
    1064:	10000004 	b	1078 <func_80AB6570+0x288>
    1068:	46001081 	sub.s	$f2,$f2,$f0
    106c:	44819000 	mtc1	at,$f18
    1070:	44810000 	mtc1	at,$f0
    1074:	46121080 	add.s	$f2,$f2,$f18
    1078:	4604703c 	c.lt.s	$f14,$f4
    107c:	00000000 	nop
    1080:	45000003 	bc1f	1090 <func_80AB6570+0x2a0>
    1084:	00000000 	nop
    1088:	10000020 	b	110c <func_80AB6570+0x31c>
    108c:	46007381 	sub.s	$f14,$f14,$f0
    1090:	1000001e 	b	110c <func_80AB6570+0x31c>
    1094:	46007380 	add.s	$f14,$f14,$f0
    1098:	3c0141f0 	lui	at,0x41f0
    109c:	44816000 	mtc1	at,$f12
    10a0:	0c000000 	jal	0 <EnNiw_Init>
    10a4:	00000000 	nop
    10a8:	3c0141f0 	lui	at,0x41f0
    10ac:	44816000 	mtc1	at,$f12
    10b0:	0c000000 	jal	0 <EnNiw_Init>
    10b4:	e7a00034 	swc1	$f0,52(sp)
    10b8:	c7a20034 	lwc1	$f2,52(sp)
    10bc:	44808000 	mtc1	zero,$f16
    10c0:	3c0141a0 	lui	at,0x41a0
    10c4:	4610103c 	c.lt.s	$f2,$f16
    10c8:	00000000 	nop
    10cc:	45020006 	bc1fl	10e8 <func_80AB6570+0x2f8>
    10d0:	44816000 	mtc1	at,$f12
    10d4:	3c0141a0 	lui	at,0x41a0
    10d8:	44816000 	mtc1	at,$f12
    10dc:	10000004 	b	10f0 <func_80AB6570+0x300>
    10e0:	460c1081 	sub.s	$f2,$f2,$f12
    10e4:	44816000 	mtc1	at,$f12
    10e8:	00000000 	nop
    10ec:	460c1080 	add.s	$f2,$f2,$f12
    10f0:	4610003c 	c.lt.s	$f0,$f16
    10f4:	00000000 	nop
    10f8:	45020004 	bc1fl	110c <func_80AB6570+0x31c>
    10fc:	460c0380 	add.s	$f14,$f0,$f12
    1100:	10000002 	b	110c <func_80AB6570+0x31c>
    1104:	460c0381 	sub.s	$f14,$f0,$f12
    1108:	460c0380 	add.s	$f14,$f0,$f12
    110c:	c60602ac 	lwc1	$f6,684(s0)
    1110:	c60a02b4 	lwc1	$f10,692(s0)
    1114:	46023200 	add.s	$f8,$f6,$f2
    1118:	460e5480 	add.s	$f18,$f10,$f14
    111c:	e60802b8 	swc1	$f8,696(s0)
    1120:	1000000b 	b	1150 <func_80AB6570+0x360>
    1124:	e61202c0 	swc1	$f18,704(s0)
    1128:	960a0088 	lhu	t2,136(s0)
    112c:	24090004 	li	t1,4
    1130:	a609025a 	sh	t1,602(s0)
    1134:	314b0001 	andi	t3,t2,0x1
    1138:	11600005 	beqz	t3,1150 <func_80AB6570+0x360>
    113c:	3c014060 	lui	at,0x4060
    1140:	44802000 	mtc1	zero,$f4
    1144:	44813000 	mtc1	at,$f6
    1148:	e6040068 	swc1	$f4,104(s0)
    114c:	e6060060 	swc1	$f6,96(s0)
    1150:	860c025a 	lh	t4,602(s0)
    1154:	26040290 	addiu	a0,s0,656
    1158:	3c053f00 	lui	a1,0x3f00
    115c:	5180004e 	beqzl	t4,1298 <func_80AB6570+0x4a8>
    1160:	02002025 	move	a0,s0
    1164:	0c000000 	jal	0 <EnNiw_Init>
    1168:	3c06457a 	lui	a2,0x457a
    116c:	240d0001 	li	t5,1
    1170:	a7ad002e 	sh	t5,46(sp)
    1174:	8e0702fc 	lw	a3,764(s0)
    1178:	8e0502b8 	lw	a1,696(s0)
    117c:	26040024 	addiu	a0,s0,36
    1180:	0c000000 	jal	0 <EnNiw_Init>
    1184:	3c063f80 	lui	a2,0x3f80
    1188:	2604002c 	addiu	a0,s0,44
    118c:	8e0502c0 	lw	a1,704(s0)
    1190:	3c063f80 	lui	a2,0x3f80
    1194:	0c000000 	jal	0 <EnNiw_Init>
    1198:	8e0702fc 	lw	a3,764(s0)
    119c:	3c073e99 	lui	a3,0x3e99
    11a0:	34e7999a 	ori	a3,a3,0x999a
    11a4:	260402fc 	addiu	a0,s0,764
    11a8:	3c054040 	lui	a1,0x4040
    11ac:	0c000000 	jal	0 <EnNiw_Init>
    11b0:	3c063f80 	lui	a2,0x3f80
    11b4:	c60802b8 	lwc1	$f8,696(s0)
    11b8:	c60a0024 	lwc1	$f10,36(s0)
    11bc:	3c014120 	lui	at,0x4120
    11c0:	44811000 	mtc1	at,$f2
    11c4:	460a4301 	sub.s	$f12,$f8,$f10
    11c8:	c61202c0 	lwc1	$f18,704(s0)
    11cc:	c604002c 	lwc1	$f4,44(s0)
    11d0:	46006005 	abs.s	$f0,$f12
    11d4:	46049381 	sub.s	$f14,$f18,$f4
    11d8:	4602003c 	c.lt.s	$f0,$f2
    11dc:	46007005 	abs.s	$f0,$f14
    11e0:	45020004 	bc1fl	11f4 <func_80AB6570+0x404>
    11e4:	4602003c 	c.lt.s	$f0,$f2
    11e8:	44806000 	mtc1	zero,$f12
    11ec:	00000000 	nop
    11f0:	4602003c 	c.lt.s	$f0,$f2
    11f4:	44800000 	mtc1	zero,$f0
    11f8:	45020004 	bc1fl	120c <func_80AB6570+0x41c>
    11fc:	46006032 	c.eq.s	$f12,$f0
    1200:	44807000 	mtc1	zero,$f14
    1204:	00000000 	nop
    1208:	46006032 	c.eq.s	$f12,$f0
    120c:	00000000 	nop
    1210:	45000007 	bc1f	1230 <func_80AB6570+0x440>
    1214:	00000000 	nop
    1218:	46007032 	c.eq.s	$f14,$f0
    121c:	240e0007 	li	t6,7
    1220:	45000003 	bc1f	1230 <func_80AB6570+0x440>
    1224:	00000000 	nop
    1228:	a600025a 	sh	zero,602(s0)
    122c:	a60e029e 	sh	t6,670(s0)
    1230:	0c000000 	jal	0 <EnNiw_Init>
    1234:	00000000 	nop
    1238:	3c010000 	lui	at,0x0
    123c:	c4260000 	lwc1	$f6,0(at)
    1240:	c6120300 	lwc1	$f18,768(s0)
    1244:	afa00010 	sw	zero,16(sp)
    1248:	46060202 	mul.s	$f8,$f0,$f6
    124c:	4600910d 	trunc.w.s	$f4,$f18
    1250:	26040032 	addiu	a0,s0,50
    1254:	24060003 	li	a2,3
    1258:	44072000 	mfc1	a3,$f4
    125c:	4600428d 	trunc.w.s	$f10,$f8
    1260:	00073c00 	sll	a3,a3,0x10
    1264:	00073c03 	sra	a3,a3,0x10
    1268:	44055000 	mfc1	a1,$f10
    126c:	00000000 	nop
    1270:	00052c00 	sll	a1,a1,0x10
    1274:	0c000000 	jal	0 <EnNiw_Init>
    1278:	00052c03 	sra	a1,a1,0x10
    127c:	3c05461c 	lui	a1,0x461c
    1280:	34a54000 	ori	a1,a1,0x4000
    1284:	26040300 	addiu	a0,s0,768
    1288:	3c063f80 	lui	a2,0x3f80
    128c:	0c000000 	jal	0 <EnNiw_Init>
    1290:	3c07447a 	lui	a3,0x447a
    1294:	02002025 	move	a0,s0
    1298:	8fa50044 	lw	a1,68(sp)
    129c:	0c000000 	jal	0 <EnNiw_Init>
    12a0:	87a6002e 	lh	a2,46(sp)
    12a4:	8fbf0024 	lw	ra,36(sp)
    12a8:	8fb00020 	lw	s0,32(sp)
    12ac:	27bd0040 	addiu	sp,sp,64
    12b0:	03e00008 	jr	ra
    12b4:	00000000 	nop

000012b8 <func_80AB6A38>:
    12b8:	27bdffd8 	addiu	sp,sp,-40
    12bc:	afbf0014 	sw	ra,20(sp)
    12c0:	afa5002c 	sw	a1,44(sp)
    12c4:	848202e8 	lh	v0,744(a0)
    12c8:	8faf002c 	lw	t7,44(sp)
    12cc:	3c180001 	lui	t8,0x1
    12d0:	2446ffff 	addiu	a2,v0,-1
    12d4:	00063400 	sll	a2,a2,0x10
    12d8:	1440001a 	bnez	v0,1344 <func_80AB6A38+0x8c>
    12dc:	00063403 	sra	a2,a2,0x10
    12e0:	44809000 	mtc1	zero,$f18
    12e4:	c4900024 	lwc1	$f16,36(a0)
    12e8:	c48e0028 	lwc1	$f14,40(a0)
    12ec:	c48c002c 	lwc1	$f12,44(a0)
    12f0:	a480029e 	sh	zero,670(a0)
    12f4:	8482029e 	lh	v0,670(a0)
    12f8:	3c0e0000 	lui	t6,0x0
    12fc:	25ce0000 	addiu	t6,t6,0
    1300:	e49002b8 	swc1	$f16,696(a0)
    1304:	e49002ac 	swc1	$f16,684(a0)
    1308:	e48e02bc 	swc1	$f14,700(a0)
    130c:	e48e02b0 	swc1	$f14,688(a0)
    1310:	e48c02c0 	swc1	$f12,704(a0)
    1314:	e48c02b4 	swc1	$f12,692(a0)
    1318:	a482025a 	sh	v0,602(a0)
    131c:	a482025c 	sh	v0,604(a0)
    1320:	e4920300 	swc1	$f18,768(a0)
    1324:	e49202fc 	swc1	$f18,764(a0)
    1328:	e4920068 	swc1	$f18,104(a0)
    132c:	e492028c 	swc1	$f18,652(a0)
    1330:	e4920284 	swc1	$f18,644(a0)
    1334:	e4920280 	swc1	$f18,640(a0)
    1338:	e4920288 	swc1	$f18,648(a0)
    133c:	1000004a 	b	1468 <func_80AB6A38+0x1b0>
    1340:	ac8e0250 	sw	t6,592(a0)
    1344:	030fc021 	addu	t8,t8,t7
    1348:	8f181e08 	lw	t8,7688(t8)
    134c:	0006c8c0 	sll	t9,a2,0x3
    1350:	3c0b0000 	lui	t3,0x0
    1354:	03192821 	addu	a1,t8,t9
    1358:	8ca30004 	lw	v1,4(a1)
    135c:	848d02ea 	lh	t5,746(a0)
    1360:	3c0100ff 	lui	at,0xff
    1364:	00034100 	sll	t0,v1,0x4
    1368:	00084f02 	srl	t1,t0,0x1c
    136c:	00095080 	sll	t2,t1,0x2
    1370:	016a5821 	addu	t3,t3,t2
    1374:	8d6b0000 	lw	t3,0(t3)
    1378:	3421ffff 	ori	at,at,0xffff
    137c:	00616024 	and	t4,v1,at
    1380:	000d7080 	sll	t6,t5,0x2
    1384:	3c018000 	lui	at,0x8000
    1388:	01cd7023 	subu	t6,t6,t5
    138c:	016c1021 	addu	v0,t3,t4
    1390:	00411021 	addu	v0,v0,at
    1394:	000e7040 	sll	t6,t6,0x1
    1398:	004e1021 	addu	v0,v0,t6
    139c:	844f0000 	lh	t7,0(v0)
    13a0:	84580004 	lh	t8,4(v0)
    13a4:	c4880024 	lwc1	$f8,36(a0)
    13a8:	448f2000 	mtc1	t7,$f4
    13ac:	44985000 	mtc1	t8,$f10
    13b0:	c492002c 	lwc1	$f18,44(a0)
    13b4:	468021a0 	cvt.s.w	$f6,$f4
    13b8:	afa40028 	sw	a0,40(sp)
    13bc:	46805420 	cvt.s.w	$f16,$f10
    13c0:	46083301 	sub.s	$f12,$f6,$f8
    13c4:	46128381 	sub.s	$f14,$f16,$f18
    13c8:	e7ac001c 	swc1	$f12,28(sp)
    13cc:	0c000000 	jal	0 <EnNiw_Init>
    13d0:	e7ae0018 	swc1	$f14,24(sp)
    13d4:	3c010000 	lui	at,0x0
    13d8:	c4240000 	lwc1	$f4,0(at)
    13dc:	8fa40028 	lw	a0,40(sp)
    13e0:	24060002 	li	a2,2
    13e4:	46040182 	mul.s	$f6,$f0,$f4
    13e8:	4600320d 	trunc.w.s	$f8,$f6
    13ec:	44084000 	mfc1	t0,$f8
    13f0:	00000000 	nop
    13f4:	a48802e4 	sh	t0,740(a0)
    13f8:	0c000000 	jal	0 <EnNiw_Init>
    13fc:	8fa5002c 	lw	a1,44(sp)
    1400:	c7a0001c 	lwc1	$f0,28(sp)
    1404:	3c0141f0 	lui	at,0x41f0
    1408:	44811000 	mtc1	at,$f2
    140c:	46000005 	abs.s	$f0,$f0
    1410:	8fa40028 	lw	a0,40(sp)
    1414:	4602003c 	c.lt.s	$f0,$f2
    1418:	c7a00018 	lwc1	$f0,24(sp)
    141c:	24060002 	li	a2,2
    1420:	4500000f 	bc1f	1460 <func_80AB6A38+0x1a8>
    1424:	00000000 	nop
    1428:	46000005 	abs.s	$f0,$f0
    142c:	4602003c 	c.lt.s	$f0,$f2
    1430:	00000000 	nop
    1434:	4500000a 	bc1f	1460 <func_80AB6A38+0x1a8>
    1438:	00000000 	nop
    143c:	848902ea 	lh	t1,746(a0)
    1440:	848c02ec 	lh	t4,748(a0)
    1444:	252a0001 	addiu	t2,t1,1
    1448:	a48a02ea 	sh	t2,746(a0)
    144c:	848b02ea 	lh	t3,746(a0)
    1450:	016c082a 	slt	at,t3,t4
    1454:	14200002 	bnez	at,1460 <func_80AB6A38+0x1a8>
    1458:	00000000 	nop
    145c:	a48002ea 	sh	zero,746(a0)
    1460:	0c000000 	jal	0 <EnNiw_Init>
    1464:	8fa5002c 	lw	a1,44(sp)
    1468:	8fbf0014 	lw	ra,20(sp)
    146c:	27bd0028 	addiu	sp,sp,40
    1470:	03e00008 	jr	ra
    1474:	00000000 	nop

00001478 <func_80AB6BF8>:
    1478:	27bdffe0 	addiu	sp,sp,-32
    147c:	afbf001c 	sw	ra,28(sp)
    1480:	afb00018 	sw	s0,24(sp)
    1484:	afa50024 	sw	a1,36(sp)
    1488:	848e025a 	lh	t6,602(a0)
    148c:	00808025 	move	s0,a0
    1490:	240f0002 	li	t7,2
    1494:	15c00004 	bnez	t6,14a8 <func_80AB6BF8+0x30>
    1498:	3c010000 	lui	at,0x0
    149c:	2418000a 	li	t8,10
    14a0:	a48f02a6 	sh	t7,678(a0)
    14a4:	a498025a 	sh	t8,602(a0)
    14a8:	0c000000 	jal	0 <EnNiw_Init>
    14ac:	c42c0000 	lwc1	$f12,0(at)
    14b0:	4600010d 	trunc.w.s	$f4,$f0
    14b4:	3c010000 	lui	at,0x0
    14b8:	44082000 	mfc1	t0,$f4
    14bc:	00000000 	nop
    14c0:	a60800b4 	sh	t0,180(s0)
    14c4:	0c000000 	jal	0 <EnNiw_Init>
    14c8:	c42c0000 	lwc1	$f12,0(at)
    14cc:	4600018d 	trunc.w.s	$f6,$f0
    14d0:	3c010000 	lui	at,0x0
    14d4:	440a3000 	mfc1	t2,$f6
    14d8:	00000000 	nop
    14dc:	a60a00b6 	sh	t2,182(s0)
    14e0:	0c000000 	jal	0 <EnNiw_Init>
    14e4:	c42c0000 	lwc1	$f12,0(at)
    14e8:	4600020d 	trunc.w.s	$f8,$f0
    14ec:	02002025 	move	a0,s0
    14f0:	440c4000 	mfc1	t4,$f8
    14f4:	00000000 	nop
    14f8:	a60c00b8 	sh	t4,184(s0)
    14fc:	0c000000 	jal	0 <EnNiw_Init>
    1500:	8fa50024 	lw	a1,36(sp)
    1504:	10400018 	beqz	v0,1568 <func_80AB6BF8+0xf0>
    1508:	02002025 	move	a0,s0
    150c:	860d001c 	lh	t5,28(s0)
    1510:	2401000d 	li	at,13
    1514:	3c080000 	lui	t0,0x0
    1518:	15a1000b 	bne	t5,at,1548 <func_80AB6BF8+0xd0>
    151c:	25080000 	addiu	t0,t0,0
    1520:	3c014080 	lui	at,0x4080
    1524:	44815000 	mtc1	at,$f10
    1528:	3c0f0000 	lui	t7,0x0
    152c:	240e0001 	li	t6,1
    1530:	25ef0000 	addiu	t7,t7,0
    1534:	a6000260 	sh	zero,608(s0)
    1538:	a60e02a6 	sh	t6,678(s0)
    153c:	ae0f0250 	sw	t7,592(s0)
    1540:	1000000c 	b	1574 <func_80AB6BF8+0xfc>
    1544:	e60a0060 	swc1	$f10,96(s0)
    1548:	a60000b8 	sh	zero,184(s0)
    154c:	860200b8 	lh	v0,184(s0)
    1550:	8e180004 	lw	t8,4(s0)
    1554:	ae080250 	sw	t0,592(s0)
    1558:	a60200b6 	sh	v0,182(s0)
    155c:	37190001 	ori	t9,t8,0x1
    1560:	ae190004 	sw	t9,4(s0)
    1564:	a60200b4 	sh	v0,180(s0)
    1568:	8fa50024 	lw	a1,36(sp)
    156c:	0c000000 	jal	0 <EnNiw_Init>
    1570:	24060002 	li	a2,2
    1574:	8fbf001c 	lw	ra,28(sp)
    1578:	8fb00018 	lw	s0,24(sp)
    157c:	27bd0020 	addiu	sp,sp,32
    1580:	03e00008 	jr	ra
    1584:	00000000 	nop

00001588 <func_80AB6D08>:
    1588:	27bdffe0 	addiu	sp,sp,-32
    158c:	afbf001c 	sw	ra,28(sp)
    1590:	afb00018 	sw	s0,24(sp)
    1594:	afa50024 	sw	a1,36(sp)
    1598:	848e02e8 	lh	t6,744(a0)
    159c:	00808025 	move	s0,a0
    15a0:	55c0002c 	bnezl	t6,1654 <func_80AB6D08+0xcc>
    15a4:	960b0088 	lhu	t3,136(s0)
    15a8:	948f0088 	lhu	t7,136(a0)
    15ac:	31f80001 	andi	t8,t7,0x1
    15b0:	5300005c 	beqzl	t8,1724 <func_80AB6D08+0x19c>
    15b4:	8fbf001c 	lw	ra,28(sp)
    15b8:	8499001c 	lh	t9,28(a0)
    15bc:	2401000e 	li	at,14
    15c0:	24090001 	li	t1,1
    15c4:	1721001a 	bne	t9,at,1630 <func_80AB6D08+0xa8>
    15c8:	240a0050 	li	t2,80
    15cc:	44809000 	mtc1	zero,$f18
    15d0:	c4900024 	lwc1	$f16,36(a0)
    15d4:	c48e0028 	lwc1	$f14,40(a0)
    15d8:	c48c002c 	lwc1	$f12,44(a0)
    15dc:	a480029e 	sh	zero,670(a0)
    15e0:	8482029e 	lh	v0,670(a0)
    15e4:	3c080000 	lui	t0,0x0
    15e8:	25080000 	addiu	t0,t0,0
    15ec:	e49002b8 	swc1	$f16,696(a0)
    15f0:	e49002ac 	swc1	$f16,684(a0)
    15f4:	e48e02bc 	swc1	$f14,700(a0)
    15f8:	e48e02b0 	swc1	$f14,688(a0)
    15fc:	e48c02c0 	swc1	$f12,704(a0)
    1600:	e48c02b4 	swc1	$f12,692(a0)
    1604:	a482025a 	sh	v0,602(a0)
    1608:	a482025c 	sh	v0,604(a0)
    160c:	e4920300 	swc1	$f18,768(a0)
    1610:	e49202fc 	swc1	$f18,764(a0)
    1614:	e4920068 	swc1	$f18,104(a0)
    1618:	e492028c 	swc1	$f18,652(a0)
    161c:	e4920284 	swc1	$f18,644(a0)
    1620:	e4920280 	swc1	$f18,640(a0)
    1624:	e4920288 	swc1	$f18,648(a0)
    1628:	1000003d 	b	1720 <func_80AB6D08+0x198>
    162c:	ac880250 	sw	t0,592(a0)
    1630:	3c014080 	lui	at,0x4080
    1634:	44800000 	mtc1	zero,$f0
    1638:	44812000 	mtc1	at,$f4
    163c:	a60902e8 	sh	t1,744(s0)
    1640:	a60a025c 	sh	t2,604(s0)
    1644:	e6000068 	swc1	$f0,104(s0)
    1648:	10000015 	b	16a0 <func_80AB6D08+0x118>
    164c:	e6040060 	swc1	$f4,96(s0)
    1650:	960b0088 	lhu	t3,136(s0)
    1654:	3c014080 	lui	at,0x4080
    1658:	240d0001 	li	t5,1
    165c:	316c0001 	andi	t4,t3,0x1
    1660:	11800005 	beqz	t4,1678 <func_80AB6D08+0xf0>
    1664:	240f0064 	li	t7,100
    1668:	44813000 	mtc1	at,$f6
    166c:	a6000260 	sh	zero,608(s0)
    1670:	a60d02a6 	sh	t5,678(s0)
    1674:	e6060060 	swc1	$f6,96(s0)
    1678:	860e025c 	lh	t6,604(s0)
    167c:	3c180000 	lui	t8,0x0
    1680:	27180000 	addiu	t8,t8,0
    1684:	55c00007 	bnezl	t6,16a4 <func_80AB6D08+0x11c>
    1688:	02002025 	move	a0,s0
    168c:	a60f025e 	sh	t7,606(s0)
    1690:	a600025a 	sh	zero,602(s0)
    1694:	a60002e8 	sh	zero,744(s0)
    1698:	10000021 	b	1720 <func_80AB6D08+0x198>
    169c:	ae180250 	sw	t8,592(s0)
    16a0:	02002025 	move	a0,s0
    16a4:	0c000000 	jal	0 <EnNiw_Init>
    16a8:	8fa50024 	lw	a1,36(sp)
    16ac:	10400011 	beqz	v0,16f4 <func_80AB6D08+0x16c>
    16b0:	02002025 	move	a0,s0
    16b4:	0c000000 	jal	0 <EnNiw_Init>
    16b8:	24052813 	li	a1,10259
    16bc:	8e190004 	lw	t9,4(s0)
    16c0:	44800000 	mtc1	zero,$f0
    16c4:	2401fffe 	li	at,-2
    16c8:	3c090000 	lui	t1,0x0
    16cc:	2402001e 	li	v0,30
    16d0:	25290000 	addiu	t1,t1,0
    16d4:	03214024 	and	t0,t9,at
    16d8:	a6020260 	sh	v0,608(s0)
    16dc:	a60002e8 	sh	zero,744(s0)
    16e0:	a602025a 	sh	v0,602(s0)
    16e4:	ae080004 	sw	t0,4(s0)
    16e8:	ae090250 	sw	t1,592(s0)
    16ec:	1000000c 	b	1720 <func_80AB6D08+0x198>
    16f0:	e6000068 	swc1	$f0,104(s0)
    16f4:	860a025c 	lh	t2,604(s0)
    16f8:	02002025 	move	a0,s0
    16fc:	29410006 	slti	at,t2,6
    1700:	54200004 	bnezl	at,1714 <func_80AB6D08+0x18c>
    1704:	02002025 	move	a0,s0
    1708:	0c000000 	jal	0 <EnNiw_Init>
    170c:	8fa50024 	lw	a1,36(sp)
    1710:	02002025 	move	a0,s0
    1714:	8fa50024 	lw	a1,36(sp)
    1718:	0c000000 	jal	0 <EnNiw_Init>
    171c:	24060002 	li	a2,2
    1720:	8fbf001c 	lw	ra,28(sp)
    1724:	8fb00018 	lw	s0,24(sp)
    1728:	27bd0020 	addiu	sp,sp,32
    172c:	03e00008 	jr	ra
    1730:	00000000 	nop

00001734 <func_80AB6EB4>:
    1734:	27bdffe8 	addiu	sp,sp,-24
    1738:	afbf0014 	sw	ra,20(sp)
    173c:	afa5001c 	sw	a1,28(sp)
    1740:	3c0143c8 	lui	at,0x43c8
    1744:	44812000 	mtc1	at,$f4
    1748:	c4860028 	lwc1	$f6,40(a0)
    174c:	4606203c 	c.lt.s	$f4,$f6
    1750:	00000000 	nop
    1754:	45020005 	bc1fl	176c <func_80AB6EB4+0x38>
    1758:	8fa5001c 	lw	a1,28(sp)
    175c:	0c000000 	jal	0 <EnNiw_Init>
    1760:	afa40018 	sw	a0,24(sp)
    1764:	8fa40018 	lw	a0,24(sp)
    1768:	8fa5001c 	lw	a1,28(sp)
    176c:	0c000000 	jal	0 <EnNiw_Init>
    1770:	24060002 	li	a2,2
    1774:	8fbf0014 	lw	ra,20(sp)
    1778:	27bd0018 	addiu	sp,sp,24
    177c:	03e00008 	jr	ra
    1780:	00000000 	nop

00001784 <func_80AB6F04>:
    1784:	27bdffc8 	addiu	sp,sp,-56
    1788:	afbf0024 	sw	ra,36(sp)
    178c:	afb00020 	sw	s0,32(sp)
    1790:	afa5003c 	sw	a1,60(sp)
    1794:	848e02a8 	lh	t6,680(a0)
    1798:	00808025 	move	s0,a0
    179c:	51c00004 	beqzl	t6,17b0 <func_80AB6F04+0x2c>
    17a0:	96020088 	lhu	v0,136(s0)
    17a4:	0c000000 	jal	0 <EnNiw_Init>
    17a8:	00000000 	nop
    17ac:	96020088 	lhu	v0,136(s0)
    17b0:	3c014000 	lui	at,0x4000
    17b4:	44810000 	mtc1	at,$f0
    17b8:	304f0020 	andi	t7,v0,0x20
    17bc:	11e0002a 	beqz	t7,1868 <func_80AB6F04+0xe4>
    17c0:	e6000068 	swc1	$f0,104(s0)
    17c4:	3c014170 	lui	at,0x4170
    17c8:	44813000 	mtc1	at,$f6
    17cc:	c6080084 	lwc1	$f8,132(s0)
    17d0:	44802000 	mtc1	zero,$f4
    17d4:	2419001e 	li	t9,30
    17d8:	4608303c 	c.lt.s	$f6,$f8
    17dc:	27a4002c 	addiu	a0,sp,44
    17e0:	26050024 	addiu	a1,s0,36
    17e4:	e604006c 	swc1	$f4,108(s0)
    17e8:	45020005 	bc1fl	1800 <func_80AB6F04+0x7c>
    17ec:	8618025a 	lh	t8,602(s0)
    17f0:	c60a0028 	lwc1	$f10,40(s0)
    17f4:	46005400 	add.s	$f16,$f10,$f0
    17f8:	e6100028 	swc1	$f16,40(s0)
    17fc:	8618025a 	lh	t8,602(s0)
    1800:	5700000f 	bnezl	t8,1840 <func_80AB6F04+0xbc>
    1804:	96090088 	lhu	t1,136(s0)
    1808:	0c000000 	jal	0 <EnNiw_Init>
    180c:	a619025a 	sh	t9,602(s0)
    1810:	c7b20030 	lwc1	$f18,48(sp)
    1814:	c6040084 	lwc1	$f4,132(s0)
    1818:	2408001e 	li	t0,30
    181c:	afa80010 	sw	t0,16(sp)
    1820:	46049180 	add.s	$f6,$f18,$f4
    1824:	8fa4003c 	lw	a0,60(sp)
    1828:	27a5002c 	addiu	a1,sp,44
    182c:	24060064 	li	a2,100
    1830:	e7a60030 	swc1	$f6,48(sp)
    1834:	0c000000 	jal	0 <EnNiw_Init>
    1838:	240701f4 	li	a3,500
    183c:	96090088 	lhu	t1,136(s0)
    1840:	3c014120 	lui	at,0x4120
    1844:	312a0008 	andi	t2,t1,0x8
    1848:	5140002d 	beqzl	t2,1900 <func_80AB6F04+0x17c>
    184c:	02002025 	move	a0,s0
    1850:	44814000 	mtc1	at,$f8
    1854:	3c013f80 	lui	at,0x3f80
    1858:	44815000 	mtc1	at,$f10
    185c:	e6080060 	swc1	$f8,96(s0)
    1860:	10000026 	b	18fc <func_80AB6F04+0x178>
    1864:	e60a0068 	swc1	$f10,104(s0)
    1868:	3c01c000 	lui	at,0xc000
    186c:	44810000 	mtc1	at,$f0
    1870:	304b0008 	andi	t3,v0,0x8
    1874:	1160000a 	beqz	t3,18a0 <func_80AB6F04+0x11c>
    1878:	e600006c 	swc1	$f0,108(s0)
    187c:	3c014120 	lui	at,0x4120
    1880:	44818000 	mtc1	at,$f16
    1884:	3c013f80 	lui	at,0x3f80
    1888:	44819000 	mtc1	at,$f18
    188c:	44802000 	mtc1	zero,$f4
    1890:	e6100060 	swc1	$f16,96(s0)
    1894:	e6120068 	swc1	$f18,104(s0)
    1898:	10000005 	b	18b0 <func_80AB6F04+0x12c>
    189c:	e604006c 	swc1	$f4,108(s0)
    18a0:	3c014080 	lui	at,0x4080
    18a4:	44813000 	mtc1	at,$f6
    18a8:	00000000 	nop
    18ac:	e6060068 	swc1	$f6,104(s0)
    18b0:	960c0088 	lhu	t4,136(s0)
    18b4:	240e0064 	li	t6,100
    18b8:	318d0001 	andi	t5,t4,0x1
    18bc:	51a00010 	beqzl	t5,1900 <func_80AB6F04+0x17c>
    18c0:	02002025 	move	a0,s0
    18c4:	860f02a8 	lh	t7,680(s0)
    18c8:	44804000 	mtc1	zero,$f8
    18cc:	e600006c 	swc1	$f0,108(s0)
    18d0:	a60e025e 	sh	t6,606(s0)
    18d4:	a600025a 	sh	zero,602(s0)
    18d8:	15e00005 	bnez	t7,18f0 <func_80AB6F04+0x16c>
    18dc:	e6080060 	swc1	$f8,96(s0)
    18e0:	3c180000 	lui	t8,0x0
    18e4:	27180000 	addiu	t8,t8,0
    18e8:	10000004 	b	18fc <func_80AB6F04+0x178>
    18ec:	ae180250 	sw	t8,592(s0)
    18f0:	3c190000 	lui	t9,0x0
    18f4:	27390000 	addiu	t9,t9,0
    18f8:	ae190250 	sw	t9,592(s0)
    18fc:	02002025 	move	a0,s0
    1900:	8fa5003c 	lw	a1,60(sp)
    1904:	0c000000 	jal	0 <EnNiw_Init>
    1908:	24060002 	li	a2,2
    190c:	8fbf0024 	lw	ra,36(sp)
    1910:	8fb00020 	lw	s0,32(sp)
    1914:	27bd0038 	addiu	sp,sp,56
    1918:	03e00008 	jr	ra
    191c:	00000000 	nop

00001920 <func_80AB70A0>:
    1920:	27bdffe0 	addiu	sp,sp,-32
    1924:	00803825 	move	a3,a0
    1928:	afbf001c 	sw	ra,28(sp)
    192c:	afa50024 	sw	a1,36(sp)
    1930:	00a02025 	move	a0,a1
    1934:	240508f2 	li	a1,2290
    1938:	afa70020 	sw	a3,32(sp)
    193c:	afa00010 	sw	zero,16(sp)
    1940:	0c000000 	jal	0 <EnNiw_Init>
    1944:	2406ff9d 	li	a2,-99
    1948:	8fa70020 	lw	a3,32(sp)
    194c:	3c180000 	lui	t8,0x0
    1950:	240e0064 	li	t6,100
    1954:	240f0001 	li	t7,1
    1958:	27180000 	addiu	t8,t8,0
    195c:	a4ee025c 	sh	t6,604(a3)
    1960:	a4ef02a2 	sh	t7,674(a3)
    1964:	acf80250 	sw	t8,592(a3)
    1968:	8fbf001c 	lw	ra,28(sp)
    196c:	27bd0020 	addiu	sp,sp,32
    1970:	03e00008 	jr	ra
    1974:	00000000 	nop

00001978 <func_80AB70F8>:
    1978:	27bdffe8 	addiu	sp,sp,-24
    197c:	afbf0014 	sw	ra,20(sp)
    1980:	848f025c 	lh	t7,604(a0)
    1984:	240e0064 	li	t6,100
    1988:	a48e0260 	sh	t6,608(a0)
    198c:	15e00009 	bnez	t7,19b4 <func_80AB70F8+0x3c>
    1990:	2418003c 	li	t8,60
    1994:	3c090000 	lui	t1,0x0
    1998:	2419000a 	li	t9,10
    199c:	24080004 	li	t0,4
    19a0:	25290000 	addiu	t1,t1,0
    19a4:	a498025c 	sh	t8,604(a0)
    19a8:	a4990254 	sh	t9,596(a0)
    19ac:	a48802a2 	sh	t0,674(a0)
    19b0:	ac890250 	sw	t1,592(a0)
    19b4:	0c000000 	jal	0 <EnNiw_Init>
    19b8:	848602a2 	lh	a2,674(a0)
    19bc:	8fbf0014 	lw	ra,20(sp)
    19c0:	27bd0018 	addiu	sp,sp,24
    19c4:	03e00008 	jr	ra
    19c8:	00000000 	nop

000019cc <func_80AB714C>:
    19cc:	27bdffe8 	addiu	sp,sp,-24
    19d0:	afbf0014 	sw	ra,20(sp)
    19d4:	afa5001c 	sw	a1,28(sp)
    19d8:	8482025c 	lh	v0,604(a0)
    19dc:	240e0064 	li	t6,100
    19e0:	24010028 	li	at,40
    19e4:	14410014 	bne	v0,at,1a38 <func_80AB714C+0x6c>
    19e8:	a48e0260 	sh	t6,608(a0)
    19ec:	3c010000 	lui	at,0x0
    19f0:	c4220000 	lwc1	$f2,0(at)
    19f4:	3c010000 	lui	at,0x0
    19f8:	c4240000 	lwc1	$f4,0(at)
    19fc:	44800000 	mtc1	zero,$f0
    1a00:	240f000a 	li	t7,10
    1a04:	a48f0254 	sh	t7,596(a0)
    1a08:	e4820288 	swc1	$f2,648(a0)
    1a0c:	e4820280 	swc1	$f2,640(a0)
    1a10:	e484026c 	swc1	$f4,620(a0)
    1a14:	e4800284 	swc1	$f0,644(a0)
    1a18:	e480028c 	swc1	$f0,652(a0)
    1a1c:	e4800270 	swc1	$f0,624(a0)
    1a20:	e4800274 	swc1	$f0,628(a0)
    1a24:	afa40018 	sw	a0,24(sp)
    1a28:	0c000000 	jal	0 <EnNiw_Init>
    1a2c:	24052813 	li	a1,10259
    1a30:	8fa40018 	lw	a0,24(sp)
    1a34:	8482025c 	lh	v0,604(a0)
    1a38:	1440000b 	bnez	v0,1a68 <func_80AB714C+0x9c>
    1a3c:	2418000a 	li	t8,10
    1a40:	8c880004 	lw	t0,4(a0)
    1a44:	8499008a 	lh	t9,138(a0)
    1a48:	2401fffe 	li	at,-2
    1a4c:	3c0a0000 	lui	t2,0x0
    1a50:	254a0000 	addiu	t2,t2,0
    1a54:	01014824 	and	t1,t0,at
    1a58:	a4980266 	sh	t8,614(a0)
    1a5c:	ac890004 	sw	t1,4(a0)
    1a60:	ac8a0250 	sw	t2,592(a0)
    1a64:	a49902e4 	sh	t9,740(a0)
    1a68:	8fa5001c 	lw	a1,28(sp)
    1a6c:	0c000000 	jal	0 <EnNiw_Init>
    1a70:	848602a2 	lh	a2,674(a0)
    1a74:	8fbf0014 	lw	ra,20(sp)
    1a78:	27bd0018 	addiu	sp,sp,24
    1a7c:	03e00008 	jr	ra
    1a80:	00000000 	nop

00001a84 <func_80AB7204>:
    1a84:	27bdffe8 	addiu	sp,sp,-24
    1a88:	afbf0014 	sw	ra,20(sp)
    1a8c:	afa5001c 	sw	a1,28(sp)
    1a90:	0c000000 	jal	0 <EnNiw_Init>
    1a94:	afa40018 	sw	a0,24(sp)
    1a98:	8fa40018 	lw	a0,24(sp)
    1a9c:	84820266 	lh	v0,614(a0)
    1aa0:	28410002 	slti	at,v0,2
    1aa4:	10200016 	beqz	at,1b00 <func_80AB7204+0x7c>
    1aa8:	24010001 	li	at,1
    1aac:	14410012 	bne	v0,at,1af8 <func_80AB7204+0x74>
    1ab0:	8fa5001c 	lw	a1,28(sp)
    1ab4:	3c014040 	lui	at,0x4040
    1ab8:	44812000 	mtc1	at,$f4
    1abc:	3c010000 	lui	at,0x0
    1ac0:	e4840068 	swc1	$f4,104(a0)
    1ac4:	afa40018 	sw	a0,24(sp)
    1ac8:	0c000000 	jal	0 <EnNiw_Init>
    1acc:	c42c0000 	lwc1	$f12,0(at)
    1ad0:	8fa40018 	lw	a0,24(sp)
    1ad4:	4600018d 	trunc.w.s	$f6,$f0
    1ad8:	a480025a 	sh	zero,602(a0)
    1adc:	8482025a 	lh	v0,602(a0)
    1ae0:	440f3000 	mfc1	t7,$f6
    1ae4:	a4820258 	sh	v0,600(a0)
    1ae8:	a4820256 	sh	v0,598(a0)
    1aec:	a4820254 	sh	v0,596(a0)
    1af0:	10000003 	b	1b00 <func_80AB7204+0x7c>
    1af4:	a48f02a0 	sh	t7,672(a0)
    1af8:	0c000000 	jal	0 <EnNiw_Init>
    1afc:	24060001 	li	a2,1
    1b00:	8fbf0014 	lw	ra,20(sp)
    1b04:	27bd0018 	addiu	sp,sp,24
    1b08:	03e00008 	jr	ra
    1b0c:	00000000 	nop

00001b10 <func_80AB7290>:
    1b10:	27bdffd8 	addiu	sp,sp,-40
    1b14:	afa40028 	sw	a0,40(sp)
    1b18:	afbf0024 	sw	ra,36(sp)
    1b1c:	3c040600 	lui	a0,0x600
    1b20:	afa5002c 	sw	a1,44(sp)
    1b24:	0c000000 	jal	0 <EnNiw_Init>
    1b28:	248400e8 	addiu	a0,a0,232
    1b2c:	44822000 	mtc1	v0,$f4
    1b30:	3c01c120 	lui	at,0xc120
    1b34:	44814000 	mtc1	at,$f8
    1b38:	468021a0 	cvt.s.w	$f6,$f4
    1b3c:	8fa40028 	lw	a0,40(sp)
    1b40:	3c050600 	lui	a1,0x600
    1b44:	24a500e8 	addiu	a1,a1,232
    1b48:	3c063f80 	lui	a2,0x3f80
    1b4c:	24070000 	li	a3,0
    1b50:	e7a60010 	swc1	$f6,16(sp)
    1b54:	afa00014 	sw	zero,20(sp)
    1b58:	e7a80018 	swc1	$f8,24(sp)
    1b5c:	0c000000 	jal	0 <EnNiw_Init>
    1b60:	2484014c 	addiu	a0,a0,332
    1b64:	3c010000 	lui	at,0x0
    1b68:	0c000000 	jal	0 <EnNiw_Init>
    1b6c:	c42c0000 	lwc1	$f12,0(at)
    1b70:	4600028d 	trunc.w.s	$f10,$f0
    1b74:	8fa20028 	lw	v0,40(sp)
    1b78:	3c014080 	lui	at,0x4080
    1b7c:	44818000 	mtc1	at,$f16
    1b80:	440f5000 	mfc1	t7,$f10
    1b84:	3c180000 	lui	t8,0x0
    1b88:	27180000 	addiu	t8,t8,0
    1b8c:	ac580250 	sw	t8,592(v0)
    1b90:	e4500068 	swc1	$f16,104(v0)
    1b94:	a44f02a0 	sh	t7,672(v0)
    1b98:	8fbf0024 	lw	ra,36(sp)
    1b9c:	27bd0028 	addiu	sp,sp,40
    1ba0:	03e00008 	jr	ra
    1ba4:	00000000 	nop

00001ba8 <func_80AB7328>:
    1ba8:	27bdffe8 	addiu	sp,sp,-24
    1bac:	afbf0014 	sw	ra,20(sp)
    1bb0:	afa5001c 	sw	a1,28(sp)
    1bb4:	848f025e 	lh	t7,606(a0)
    1bb8:	8ca21c44 	lw	v0,7236(a1)
    1bbc:	24010004 	li	at,4
    1bc0:	15e0001c 	bnez	t7,1c34 <func_80AB7328+0x8c>
    1bc4:	3c190000 	lui	t9,0x0
    1bc8:	44809000 	mtc1	zero,$f18
    1bcc:	c4900024 	lwc1	$f16,36(a0)
    1bd0:	c48e0028 	lwc1	$f14,40(a0)
    1bd4:	c48c002c 	lwc1	$f12,44(a0)
    1bd8:	8498001c 	lh	t8,28(a0)
    1bdc:	a480029e 	sh	zero,670(a0)
    1be0:	8482029e 	lh	v0,670(a0)
    1be4:	e49002b8 	swc1	$f16,696(a0)
    1be8:	e49002ac 	swc1	$f16,684(a0)
    1bec:	e48e02bc 	swc1	$f14,700(a0)
    1bf0:	e48e02b0 	swc1	$f14,688(a0)
    1bf4:	e48c02c0 	swc1	$f12,704(a0)
    1bf8:	e48c02b4 	swc1	$f12,692(a0)
    1bfc:	a482025a 	sh	v0,602(a0)
    1c00:	a482025c 	sh	v0,604(a0)
    1c04:	e4920300 	swc1	$f18,768(a0)
    1c08:	e49202fc 	swc1	$f18,764(a0)
    1c0c:	e4920068 	swc1	$f18,104(a0)
    1c10:	e492028c 	swc1	$f18,652(a0)
    1c14:	e4920284 	swc1	$f18,644(a0)
    1c18:	e4920280 	swc1	$f18,640(a0)
    1c1c:	17010002 	bne	t8,at,1c28 <func_80AB7328+0x80>
    1c20:	e4920288 	swc1	$f18,648(a0)
    1c24:	a480001c 	sh	zero,28(a0)
    1c28:	27390000 	addiu	t9,t9,0
    1c2c:	10000018 	b	1c90 <func_80AB7328+0xe8>
    1c30:	ac990250 	sw	t9,592(a0)
    1c34:	c4920024 	lwc1	$f18,36(a0)
    1c38:	c4500024 	lwc1	$f16,36(v0)
    1c3c:	c48a002c 	lwc1	$f10,44(a0)
    1c40:	c448002c 	lwc1	$f8,44(v0)
    1c44:	46109301 	sub.s	$f12,$f18,$f16
    1c48:	afa40018 	sw	a0,24(sp)
    1c4c:	0c000000 	jal	0 <EnNiw_Init>
    1c50:	46085381 	sub.s	$f14,$f10,$f8
    1c54:	3c010000 	lui	at,0x0
    1c58:	c4300000 	lwc1	$f16,0(at)
    1c5c:	8fa40018 	lw	a0,24(sp)
    1c60:	00003025 	move	a2,zero
    1c64:	46100482 	mul.s	$f18,$f0,$f16
    1c68:	4600910d 	trunc.w.s	$f4,$f18
    1c6c:	44092000 	mfc1	t1,$f4
    1c70:	00000000 	nop
    1c74:	a48902e4 	sh	t1,740(a0)
    1c78:	0c000000 	jal	0 <EnNiw_Init>
    1c7c:	8fa5001c 	lw	a1,28(sp)
    1c80:	8fa40018 	lw	a0,24(sp)
    1c84:	8fa5001c 	lw	a1,28(sp)
    1c88:	0c000000 	jal	0 <EnNiw_Init>
    1c8c:	24060002 	li	a2,2
    1c90:	8fbf0014 	lw	ra,20(sp)
    1c94:	27bd0018 	addiu	sp,sp,24
    1c98:	03e00008 	jr	ra
    1c9c:	00000000 	nop

00001ca0 <func_80AB7420>:
    1ca0:	27bdffe8 	addiu	sp,sp,-24
    1ca4:	afbf0014 	sw	ra,20(sp)
    1ca8:	afa5001c 	sw	a1,28(sp)
    1cac:	948e0088 	lhu	t6,136(a0)
    1cb0:	3c010000 	lui	at,0x0
    1cb4:	31cf0001 	andi	t7,t6,0x1
    1cb8:	51e0000d 	beqzl	t7,1cf0 <func_80AB7420+0x50>
    1cbc:	8fbf0014 	lw	ra,20(sp)
    1cc0:	c42c0000 	lwc1	$f12,0(at)
    1cc4:	0c000000 	jal	0 <EnNiw_Init>
    1cc8:	afa40018 	sw	a0,24(sp)
    1ccc:	4600010d 	trunc.w.s	$f4,$f0
    1cd0:	8fa40018 	lw	a0,24(sp)
    1cd4:	3c0b0000 	lui	t3,0x0
    1cd8:	256b0000 	addiu	t3,t3,0
    1cdc:	44092000 	mfc1	t1,$f4
    1ce0:	ac8b0250 	sw	t3,592(a0)
    1ce4:	252a0005 	addiu	t2,t1,5
    1ce8:	a48a02a4 	sh	t2,676(a0)
    1cec:	8fbf0014 	lw	ra,20(sp)
    1cf0:	27bd0018 	addiu	sp,sp,24
    1cf4:	03e00008 	jr	ra
    1cf8:	00000000 	nop

00001cfc <func_80AB747C>:
    1cfc:	27bdffe8 	addiu	sp,sp,-24
    1d00:	afbf0014 	sw	ra,20(sp)
    1d04:	afa5001c 	sw	a1,28(sp)
    1d08:	848e02a8 	lh	t6,680(a0)
    1d0c:	55c00026 	bnezl	t6,1da8 <func_80AB747C+0xac>
    1d10:	8fbf0014 	lw	ra,20(sp)
    1d14:	848f001c 	lh	t7,28(a0)
    1d18:	2401000a 	li	at,10
    1d1c:	51e10022 	beql	t7,at,1da8 <func_80AB747C+0xac>
    1d20:	8fbf0014 	lw	ra,20(sp)
    1d24:	8c990250 	lw	t9,592(a0)
    1d28:	3c180000 	lui	t8,0x0
    1d2c:	27180000 	addiu	t8,t8,0
    1d30:	5319001d 	beql	t8,t9,1da8 <func_80AB747C+0xac>
    1d34:	8fbf0014 	lw	ra,20(sp)
    1d38:	9082031d 	lbu	v0,797(a0)
    1d3c:	240d0001 	li	t5,1
    1d40:	24052813 	li	a1,10259
    1d44:	30480002 	andi	t0,v0,0x2
    1d48:	11000016 	beqz	t0,1da4 <func_80AB747C+0xa8>
    1d4c:	3049fffd 	andi	t1,v0,0xfffd
    1d50:	848302a4 	lh	v1,676(a0)
    1d54:	240a001e 	li	t2,30
    1d58:	a089031d 	sb	t1,797(a0)
    1d5c:	18600007 	blez	v1,1d7c <func_80AB747C+0x80>
    1d60:	a48a0260 	sh	t2,608(a0)
    1d64:	3c0b0000 	lui	t3,0x0
    1d68:	856b0000 	lh	t3,0(t3)
    1d6c:	246cffff 	addiu	t4,v1,-1
    1d70:	55600003 	bnezl	t3,1d80 <func_80AB747C+0x84>
    1d74:	a48d02a6 	sh	t5,678(a0)
    1d78:	a48c02a4 	sh	t4,676(a0)
    1d7c:	a48d02a6 	sh	t5,678(a0)
    1d80:	0c000000 	jal	0 <EnNiw_Init>
    1d84:	afa40018 	sw	a0,24(sp)
    1d88:	8fa40018 	lw	a0,24(sp)
    1d8c:	3c0f0000 	lui	t7,0x0
    1d90:	240e0064 	li	t6,100
    1d94:	25ef0000 	addiu	t7,t7,0
    1d98:	a48e025e 	sh	t6,606(a0)
    1d9c:	a48002e8 	sh	zero,744(a0)
    1da0:	ac8f0250 	sw	t7,592(a0)
    1da4:	8fbf0014 	lw	ra,20(sp)
    1da8:	27bd0018 	addiu	sp,sp,24
    1dac:	03e00008 	jr	ra
    1db0:	00000000 	nop

00001db4 <EnNiw_Update>:
    1db4:	27bdff20 	addiu	sp,sp,-224
    1db8:	afbf002c 	sw	ra,44(sp)
    1dbc:	afb10028 	sw	s1,40(sp)
    1dc0:	afb00024 	sw	s0,36(sp)
    1dc4:	f7b40018 	sdc1	$f20,24(sp)
    1dc8:	afa500e4 	sw	a1,228(sp)
    1dcc:	8caf1c44 	lw	t7,7236(a1)
    1dd0:	3c190000 	lui	t9,0x0
    1dd4:	27390000 	addiu	t9,t9,0
    1dd8:	afaf00d4 	sw	t7,212(sp)
    1ddc:	8f290000 	lw	t1,0(t9)
    1de0:	27b800c4 	addiu	t8,sp,196
    1de4:	8f280004 	lw	t0,4(t9)
    1de8:	af090000 	sw	t1,0(t8)
    1dec:	8f290008 	lw	t1,8(t9)
    1df0:	3c0b0000 	lui	t3,0x0
    1df4:	256b0000 	addiu	t3,t3,0
    1df8:	af080004 	sw	t0,4(t8)
    1dfc:	af090008 	sw	t1,8(t8)
    1e00:	8d6d0000 	lw	t5,0(t3)
    1e04:	27aa00b8 	addiu	t2,sp,184
    1e08:	8d6c0004 	lw	t4,4(t3)
    1e0c:	ad4d0000 	sw	t5,0(t2)
    1e10:	8d6d0008 	lw	t5,8(t3)
    1e14:	ad4c0004 	sw	t4,4(t2)
    1e18:	3c180000 	lui	t8,0x0
    1e1c:	ad4d0008 	sw	t5,8(t2)
    1e20:	848e0294 	lh	t6,660(a0)
    1e24:	27180000 	addiu	t8,t8,0
    1e28:	00808825 	move	s1,a0
    1e2c:	25cf0001 	addiu	t7,t6,1
    1e30:	a48f0294 	sh	t7,660(a0)
    1e34:	afb8003c 	sw	t8,60(sp)
    1e38:	8c990250 	lw	t9,592(a0)
    1e3c:	53190005 	beql	t8,t9,1e54 <EnNiw_Update+0xa0>
    1e40:	862202a6 	lh	v0,678(s1)
    1e44:	4480a000 	mtc1	zero,$f20
    1e48:	00000000 	nop
    1e4c:	e4940290 	swc1	$f20,656(a0)
    1e50:	862202a6 	lh	v0,678(s1)
    1e54:	4480a000 	mtc1	zero,$f20
    1e58:	10400069 	beqz	v0,2000 <EnNiw_Update+0x24c>
    1e5c:	24010002 	li	at,2
    1e60:	14410002 	bne	v0,at,1e6c <EnNiw_Update+0xb8>
    1e64:	24030014 	li	v1,20
    1e68:	24030004 	li	v1,4
    1e6c:	18600063 	blez	v1,1ffc <EnNiw_Update+0x248>
    1e70:	00008025 	move	s0,zero
    1e74:	a7a300d0 	sh	v1,208(sp)
    1e78:	3c014120 	lui	at,0x4120
    1e7c:	44816000 	mtc1	at,$f12
    1e80:	0c000000 	jal	0 <EnNiw_Init>
    1e84:	00000000 	nop
    1e88:	c6240024 	lwc1	$f4,36(s1)
    1e8c:	3c014120 	lui	at,0x4120
    1e90:	44816000 	mtc1	at,$f12
    1e94:	46040180 	add.s	$f6,$f0,$f4
    1e98:	0c000000 	jal	0 <EnNiw_Init>
    1e9c:	e7a600ac 	swc1	$f6,172(sp)
    1ea0:	c6280028 	lwc1	$f8,40(s1)
    1ea4:	c62a0304 	lwc1	$f10,772(s1)
    1ea8:	3c014120 	lui	at,0x4120
    1eac:	44816000 	mtc1	at,$f12
    1eb0:	460a4400 	add.s	$f16,$f8,$f10
    1eb4:	46100480 	add.s	$f18,$f0,$f16
    1eb8:	0c000000 	jal	0 <EnNiw_Init>
    1ebc:	e7b200b0 	swc1	$f18,176(sp)
    1ec0:	c624002c 	lwc1	$f4,44(s1)
    1ec4:	3c0140c0 	lui	at,0x40c0
    1ec8:	44816000 	mtc1	at,$f12
    1ecc:	46040180 	add.s	$f6,$f0,$f4
    1ed0:	0c000000 	jal	0 <EnNiw_Init>
    1ed4:	e7a600b4 	swc1	$f6,180(sp)
    1ed8:	3c0140c0 	lui	at,0x40c0
    1edc:	44814000 	mtc1	at,$f8
    1ee0:	24010002 	li	at,2
    1ee4:	46080280 	add.s	$f10,$f0,$f8
    1ee8:	e7aa008c 	swc1	$f10,140(sp)
    1eec:	862802a6 	lh	t0,678(s1)
    1ef0:	44805000 	mtc1	zero,$f10
    1ef4:	5501000e 	bnel	t0,at,1f30 <EnNiw_Update+0x17c>
    1ef8:	c6300304 	lwc1	$f16,772(s1)
    1efc:	44808000 	mtc1	zero,$f16
    1f00:	c6320304 	lwc1	$f18,772(s1)
    1f04:	c7a400b0 	lwc1	$f4,176(sp)
    1f08:	3c014120 	lui	at,0x4120
    1f0c:	46128032 	c.eq.s	$f16,$f18
    1f10:	00000000 	nop
    1f14:	45030006 	bc1tl	1f30 <EnNiw_Update+0x17c>
    1f18:	c6300304 	lwc1	$f16,772(s1)
    1f1c:	44813000 	mtc1	at,$f6
    1f20:	00000000 	nop
    1f24:	46062200 	add.s	$f8,$f4,$f6
    1f28:	e7a800b0 	swc1	$f8,176(sp)
    1f2c:	c6300304 	lwc1	$f16,772(s1)
    1f30:	3c014000 	lui	at,0x4000
    1f34:	46105032 	c.eq.s	$f10,$f16
    1f38:	00000000 	nop
    1f3c:	4502000a 	bc1fl	1f68 <EnNiw_Update+0x1b4>
    1f40:	3c014040 	lui	at,0x4040
    1f44:	44816000 	mtc1	at,$f12
    1f48:	0c000000 	jal	0 <EnNiw_Init>
    1f4c:	00000000 	nop
    1f50:	3c014000 	lui	at,0x4000
    1f54:	44819000 	mtc1	at,$f18
    1f58:	00000000 	nop
    1f5c:	46120100 	add.s	$f4,$f0,$f18
    1f60:	e7a4008c 	swc1	$f4,140(sp)
    1f64:	3c014040 	lui	at,0x4040
    1f68:	44816000 	mtc1	at,$f12
    1f6c:	0c000000 	jal	0 <EnNiw_Init>
    1f70:	00000000 	nop
    1f74:	3c014000 	lui	at,0x4000
    1f78:	44816000 	mtc1	at,$f12
    1f7c:	0c000000 	jal	0 <EnNiw_Init>
    1f80:	e7a000a0 	swc1	$f0,160(sp)
    1f84:	3c013f00 	lui	at,0x3f00
    1f88:	44813000 	mtc1	at,$f6
    1f8c:	3c014000 	lui	at,0x4000
    1f90:	44815000 	mtc1	at,$f10
    1f94:	46060202 	mul.s	$f8,$f0,$f6
    1f98:	3c014040 	lui	at,0x4040
    1f9c:	44816000 	mtc1	at,$f12
    1fa0:	460a4400 	add.s	$f16,$f8,$f10
    1fa4:	0c000000 	jal	0 <EnNiw_Init>
    1fa8:	e7b000a4 	swc1	$f16,164(sp)
    1fac:	3c010000 	lui	at,0x0
    1fb0:	c4320000 	lwc1	$f18,0(at)
    1fb4:	c7a4008c 	lwc1	$f4,140(sp)
    1fb8:	e7a000a8 	swc1	$f0,168(sp)
    1fbc:	e7b40094 	swc1	$f20,148(sp)
    1fc0:	e7b4009c 	swc1	$f20,156(sp)
    1fc4:	02202025 	move	a0,s1
    1fc8:	27a500ac 	addiu	a1,sp,172
    1fcc:	27a600a0 	addiu	a2,sp,160
    1fd0:	27a70094 	addiu	a3,sp,148
    1fd4:	e7b20098 	swc1	$f18,152(sp)
    1fd8:	0c000000 	jal	0 <EnNiw_Init>
    1fdc:	e7a40010 	swc1	$f4,16(sp)
    1fe0:	87a900d0 	lh	t1,208(sp)
    1fe4:	26100001 	addiu	s0,s0,1
    1fe8:	00108400 	sll	s0,s0,0x10
    1fec:	00108403 	sra	s0,s0,0x10
    1ff0:	0209082a 	slt	at,s0,t1
    1ff4:	5420ffa1 	bnezl	at,1e7c <EnNiw_Update+0xc8>
    1ff8:	3c014120 	lui	at,0x4120
    1ffc:	a62002a6 	sh	zero,678(s1)
    2000:	02202025 	move	a0,s1
    2004:	0c000000 	jal	0 <EnNiw_Init>
    2008:	8fa500e4 	lw	a1,228(sp)
    200c:	86220254 	lh	v0,596(s1)
    2010:	10400002 	beqz	v0,201c <EnNiw_Update+0x268>
    2014:	244affff 	addiu	t2,v0,-1
    2018:	a62a0254 	sh	t2,596(s1)
    201c:	86220256 	lh	v0,598(s1)
    2020:	3c014170 	lui	at,0x4170
    2024:	10400002 	beqz	v0,2030 <EnNiw_Update+0x27c>
    2028:	244bffff 	addiu	t3,v0,-1
    202c:	a62b0256 	sh	t3,598(s1)
    2030:	86220258 	lh	v0,600(s1)
    2034:	10400002 	beqz	v0,2040 <EnNiw_Update+0x28c>
    2038:	244cffff 	addiu	t4,v0,-1
    203c:	a62c0258 	sh	t4,600(s1)
    2040:	8622025a 	lh	v0,602(s1)
    2044:	10400002 	beqz	v0,2050 <EnNiw_Update+0x29c>
    2048:	244dffff 	addiu	t5,v0,-1
    204c:	a62d025a 	sh	t5,602(s1)
    2050:	8622025c 	lh	v0,604(s1)
    2054:	10400002 	beqz	v0,2060 <EnNiw_Update+0x2ac>
    2058:	244effff 	addiu	t6,v0,-1
    205c:	a62e025c 	sh	t6,604(s1)
    2060:	86220266 	lh	v0,614(s1)
    2064:	10400002 	beqz	v0,2070 <EnNiw_Update+0x2bc>
    2068:	244fffff 	addiu	t7,v0,-1
    206c:	a62f0266 	sh	t7,614(s1)
    2070:	8622025e 	lh	v0,606(s1)
    2074:	10400002 	beqz	v0,2080 <EnNiw_Update+0x2cc>
    2078:	2458ffff 	addiu	t8,v0,-1
    207c:	a638025e 	sh	t8,606(s1)
    2080:	86220260 	lh	v0,608(s1)
    2084:	10400002 	beqz	v0,2090 <EnNiw_Update+0x2dc>
    2088:	2459ffff 	addiu	t9,v0,-1
    208c:	a6390260 	sh	t9,608(s1)
    2090:	86220262 	lh	v0,610(s1)
    2094:	10400002 	beqz	v0,20a0 <EnNiw_Update+0x2ec>
    2098:	2448ffff 	addiu	t0,v0,-1
    209c:	a6280262 	sh	t0,610(s1)
    20a0:	86220264 	lh	v0,612(s1)
    20a4:	10400002 	beqz	v0,20b0 <EnNiw_Update+0x2fc>
    20a8:	2449ffff 	addiu	t1,v0,-1
    20ac:	a6290264 	sh	t1,612(s1)
    20b0:	86220268 	lh	v0,616(s1)
    20b4:	10400002 	beqz	v0,20c0 <EnNiw_Update+0x30c>
    20b8:	244affff 	addiu	t2,v0,-1
    20bc:	a62a0268 	sh	t2,616(s1)
    20c0:	8622026a 	lh	v0,618(s1)
    20c4:	10400002 	beqz	v0,20d0 <EnNiw_Update+0x31c>
    20c8:	244bffff 	addiu	t3,v0,-1
    20cc:	a62b026a 	sh	t3,618(s1)
    20d0:	8a2d0030 	lwl	t5,48(s1)
    20d4:	9a2d0033 	lwr	t5,51(s1)
    20d8:	44813000 	mtc1	at,$f6
    20dc:	8e390250 	lw	t9,592(s1)
    20e0:	aa2d00b4 	swl	t5,180(s1)
    20e4:	ba2d00b7 	swr	t5,183(s1)
    20e8:	962d0034 	lhu	t5,52(s1)
    20ec:	e62600c4 	swc1	$f6,196(s1)
    20f0:	02202025 	move	a0,s1
    20f4:	a62d00b8 	sh	t5,184(s1)
    20f8:	0320f809 	jalr	t9
    20fc:	8fa500e4 	lw	a1,228(sp)
    2100:	02202025 	move	a0,s1
    2104:	0c000000 	jal	0 <EnNiw_Init>
    2108:	8e250304 	lw	a1,772(s1)
    210c:	0c000000 	jal	0 <EnNiw_Init>
    2110:	02202025 	move	a0,s1
    2114:	8e220250 	lw	v0,592(s1)
    2118:	3c0e0000 	lui	t6,0x0
    211c:	25ce0000 	addiu	t6,t6,0
    2120:	11c20013 	beq	t6,v0,2170 <EnNiw_Update+0x3bc>
    2124:	3c0f0000 	lui	t7,0x0
    2128:	25ef0000 	addiu	t7,t7,0
    212c:	11e20010 	beq	t7,v0,2170 <EnNiw_Update+0x3bc>
    2130:	8fb800e4 	lw	t8,228(sp)
    2134:	870800a4 	lh	t0,164(t8)
    2138:	24010054 	li	at,84
    213c:	03002025 	move	a0,t8
    2140:	1101000b 	beq	t0,at,2170 <EnNiw_Update+0x3bc>
    2144:	02202825 	move	a1,s1
    2148:	3c0141a0 	lui	at,0x41a0
    214c:	44810000 	mtc1	at,$f0
    2150:	3c014270 	lui	at,0x4270
    2154:	44814000 	mtc1	at,$f8
    2158:	2409001f 	li	t1,31
    215c:	44060000 	mfc1	a2,$f0
    2160:	44070000 	mfc1	a3,$f0
    2164:	afa90014 	sw	t1,20(sp)
    2168:	0c000000 	jal	0 <EnNiw_Init>
    216c:	e7a80010 	swc1	$f8,16(sp)
    2170:	8faa00e4 	lw	t2,228(sp)
    2174:	24010054 	li	at,84
    2178:	02202825 	move	a1,s1
    217c:	854b00a4 	lh	t3,164(t2)
    2180:	240c001d 	li	t4,29
    2184:	01402025 	move	a0,t2
    2188:	15610009 	bne	t3,at,21b0 <EnNiw_Update+0x3fc>
    218c:	3c0141a0 	lui	at,0x41a0
    2190:	44810000 	mtc1	at,$f0
    2194:	3c014270 	lui	at,0x4270
    2198:	44815000 	mtc1	at,$f10
    219c:	44060000 	mfc1	a2,$f0
    21a0:	44070000 	mfc1	a3,$f0
    21a4:	afac0014 	sw	t4,20(sp)
    21a8:	0c000000 	jal	0 <EnNiw_Init>
    21ac:	e7aa0010 	swc1	$f10,16(sp)
    21b0:	3c01c6fa 	lui	at,0xc6fa
    21b4:	44818000 	mtc1	at,$f16
    21b8:	c6200080 	lwc1	$f0,128(s1)
    21bc:	3c0146fa 	lui	at,0x46fa
    21c0:	3c040000 	lui	a0,0x0
    21c4:	4610003e 	c.le.s	$f0,$f16
    21c8:	00000000 	nop
    21cc:	45030008 	bc1tl	21f0 <EnNiw_Update+0x43c>
    21d0:	46000121 	cvt.d.s	$f4,$f0
    21d4:	44819000 	mtc1	at,$f18
    21d8:	00000000 	nop
    21dc:	4600903e 	c.le.s	$f18,$f0
    21e0:	00000000 	nop
    21e4:	450200ab 	bc1fl	2494 <EnNiw_Update+0x6e0>
    21e8:	96380088 	lhu	t8,136(s1)
    21ec:	46000121 	cvt.d.s	$f4,$f0
    21f0:	24840000 	addiu	a0,a0,0
    21f4:	44072000 	mfc1	a3,$f4
    21f8:	44062800 	mfc1	a2,$f5
    21fc:	0c000000 	jal	0 <EnNiw_Init>
    2200:	00008025 	move	s0,zero
    2204:	8fad00e4 	lw	t5,228(sp)
    2208:	3c040000 	lui	a0,0x0
    220c:	24840000 	addiu	a0,a0,0
    2210:	c5a600ec 	lwc1	$f6,236(t5)
    2214:	c5a800e0 	lwc1	$f8,224(t5)
    2218:	c5aa00f0 	lwc1	$f10,240(t5)
    221c:	c5b000e4 	lwc1	$f16,228(t5)
    2220:	46083301 	sub.s	$f12,$f6,$f8
    2224:	c5b200f4 	lwc1	$f18,244(t5)
    2228:	c5a400e8 	lwc1	$f4,232(t5)
    222c:	46105081 	sub.s	$f2,$f10,$f16
    2230:	460c6182 	mul.s	$f6,$f12,$f12
    2234:	46049381 	sub.s	$f14,$f18,$f4
    2238:	46021202 	mul.s	$f8,$f2,$f2
    223c:	46083280 	add.s	$f10,$f6,$f8
    2240:	460e7402 	mul.s	$f16,$f14,$f14
    2244:	46105000 	add.s	$f0,$f10,$f16
    2248:	46000004 	sqrt.s	$f0,$f0
    224c:	46001483 	div.s	$f18,$f2,$f0
    2250:	e7b20078 	swc1	$f18,120(sp)
    2254:	c6240024 	lwc1	$f4,36(s1)
    2258:	460021a1 	cvt.d.s	$f6,$f4
    225c:	44073000 	mfc1	a3,$f6
    2260:	44063800 	mfc1	a2,$f7
    2264:	0c000000 	jal	0 <EnNiw_Init>
    2268:	00000000 	nop
    226c:	c6280028 	lwc1	$f8,40(s1)
    2270:	3c040000 	lui	a0,0x0
    2274:	24840000 	addiu	a0,a0,0
    2278:	460042a1 	cvt.d.s	$f10,$f8
    227c:	44075000 	mfc1	a3,$f10
    2280:	44065800 	mfc1	a2,$f11
    2284:	0c000000 	jal	0 <EnNiw_Init>
    2288:	00000000 	nop
    228c:	c630002c 	lwc1	$f16,44(s1)
    2290:	3c040000 	lui	a0,0x0
    2294:	24840000 	addiu	a0,a0,0
    2298:	460084a1 	cvt.d.s	$f18,$f16
    229c:	44079000 	mfc1	a3,$f18
    22a0:	44069800 	mfc1	a2,$f19
    22a4:	0c000000 	jal	0 <EnNiw_Init>
    22a8:	00000000 	nop
    22ac:	c6240008 	lwc1	$f4,8(s1)
    22b0:	3c040000 	lui	a0,0x0
    22b4:	24840000 	addiu	a0,a0,0
    22b8:	460021a1 	cvt.d.s	$f6,$f4
    22bc:	44073000 	mfc1	a3,$f6
    22c0:	44063800 	mfc1	a2,$f7
    22c4:	0c000000 	jal	0 <EnNiw_Init>
    22c8:	00000000 	nop
    22cc:	c628000c 	lwc1	$f8,12(s1)
    22d0:	3c040000 	lui	a0,0x0
    22d4:	24840000 	addiu	a0,a0,0
    22d8:	460042a1 	cvt.d.s	$f10,$f8
    22dc:	44075000 	mfc1	a3,$f10
    22e0:	44065800 	mfc1	a2,$f11
    22e4:	0c000000 	jal	0 <EnNiw_Init>
    22e8:	00000000 	nop
    22ec:	c6300010 	lwc1	$f16,16(s1)
    22f0:	3c040000 	lui	a0,0x0
    22f4:	24840000 	addiu	a0,a0,0
    22f8:	460084a1 	cvt.d.s	$f18,$f16
    22fc:	44079000 	mfc1	a3,$f18
    2300:	44069800 	mfc1	a2,$f19
    2304:	0c000000 	jal	0 <EnNiw_Init>
    2308:	00000000 	nop
    230c:	c6240008 	lwc1	$f4,8(s1)
    2310:	c6260010 	lwc1	$f6,16(s1)
    2314:	3c014320 	lui	at,0x4320
    2318:	e6240024 	swc1	$f4,36(s1)
    231c:	e626002c 	swc1	$f6,44(s1)
    2320:	8fb900e4 	lw	t9,228(sp)
    2324:	c7a80078 	lwc1	$f8,120(sp)
    2328:	44815000 	mtc1	at,$f10
    232c:	c620000c 	lwc1	$f0,12(s1)
    2330:	c73200e4 	lwc1	$f18,228(t9)
    2334:	460a4402 	mul.s	$f16,$f8,$f10
    2338:	3c014396 	lui	at,0x4396
    233c:	46120100 	add.s	$f4,$f0,$f18
    2340:	46102180 	add.s	$f6,$f4,$f16
    2344:	e6260028 	swc1	$f6,40(s1)
    2348:	c6280028 	lwc1	$f8,40(s1)
    234c:	4600403c 	c.lt.s	$f8,$f0
    2350:	00000000 	nop
    2354:	45020006 	bc1fl	2370 <EnNiw_Update+0x5bc>
    2358:	c6240024 	lwc1	$f4,36(s1)
    235c:	44815000 	mtc1	at,$f10
    2360:	00000000 	nop
    2364:	460a0480 	add.s	$f18,$f0,$f10
    2368:	e6320028 	swc1	$f18,40(s1)
    236c:	c6240024 	lwc1	$f4,36(s1)
    2370:	3c040000 	lui	a0,0x0
    2374:	24840000 	addiu	a0,a0,0
    2378:	46002421 	cvt.d.s	$f16,$f4
    237c:	44078000 	mfc1	a3,$f16
    2380:	44068800 	mfc1	a2,$f17
    2384:	0c000000 	jal	0 <EnNiw_Init>
    2388:	00000000 	nop
    238c:	c6260028 	lwc1	$f6,40(s1)
    2390:	3c040000 	lui	a0,0x0
    2394:	24840000 	addiu	a0,a0,0
    2398:	46003221 	cvt.d.s	$f8,$f6
    239c:	44074000 	mfc1	a3,$f8
    23a0:	44064800 	mfc1	a2,$f9
    23a4:	0c000000 	jal	0 <EnNiw_Init>
    23a8:	00000000 	nop
    23ac:	c62a002c 	lwc1	$f10,44(s1)
    23b0:	3c040000 	lui	a0,0x0
    23b4:	24840000 	addiu	a0,a0,0
    23b8:	460054a1 	cvt.d.s	$f18,$f10
    23bc:	44079000 	mfc1	a3,$f18
    23c0:	44069800 	mfc1	a2,$f19
    23c4:	0c000000 	jal	0 <EnNiw_Init>
    23c8:	00000000 	nop
    23cc:	3c040000 	lui	a0,0x0
    23d0:	0c000000 	jal	0 <EnNiw_Init>
    23d4:	24840000 	addiu	a0,a0,0
    23d8:	3c01c000 	lui	at,0xc000
    23dc:	44812000 	mtc1	at,$f4
    23e0:	e6340068 	swc1	$f20,104(s1)
    23e4:	26250008 	addiu	a1,s1,8
    23e8:	e624006c 	swc1	$f4,108(s1)
    23ec:	afa5003c 	sw	a1,60(sp)
    23f0:	0c000000 	jal	0 <EnNiw_Init>
    23f4:	262402ac 	addiu	a0,s1,684
    23f8:	8fa5003c 	lw	a1,60(sp)
    23fc:	0c000000 	jal	0 <EnNiw_Init>
    2400:	262402b8 	addiu	a0,s1,696
    2404:	a62002a2 	sh	zero,674(s1)
    2408:	862202a2 	lh	v0,674(s1)
    240c:	e6340300 	swc1	$f20,768(s1)
    2410:	e63402fc 	swc1	$f20,764(s1)
    2414:	e63402f8 	swc1	$f20,760(s1)
    2418:	e63402f4 	swc1	$f20,756(s1)
    241c:	e63402f0 	swc1	$f20,752(s1)
    2420:	e63402d8 	swc1	$f20,728(s1)
    2424:	e63402d4 	swc1	$f20,724(s1)
    2428:	e63402d0 	swc1	$f20,720(s1)
    242c:	e63402cc 	swc1	$f20,716(s1)
    2430:	e63402c8 	swc1	$f20,712(s1)
    2434:	e63402c4 	swc1	$f20,708(s1)
    2438:	e63402dc 	swc1	$f20,732(s1)
    243c:	e63402e0 	swc1	$f20,736(s1)
    2440:	a62202a0 	sh	v0,672(s1)
    2444:	a622029e 	sh	v0,670(s1)
    2448:	a62202a6 	sh	v0,678(s1)
    244c:	a6220298 	sh	v0,664(s1)
    2450:	a6220294 	sh	v0,660(s1)
    2454:	a62202a8 	sh	v0,680(s1)
    2458:	00107080 	sll	t6,s0,0x2
    245c:	26100001 	addiu	s0,s0,1
    2460:	00108400 	sll	s0,s0,0x10
    2464:	44808000 	mtc1	zero,$f16
    2468:	00108403 	sra	s0,s0,0x10
    246c:	2a01000a 	slti	at,s0,10
    2470:	022e7821 	addu	t7,s1,t6
    2474:	1420fff8 	bnez	at,2458 <EnNiw_Update+0x6a4>
    2478:	e5f0026c 	swc1	$f16,620(t7)
    247c:	3c080000 	lui	t0,0x0
    2480:	25080000 	addiu	t0,t0,0
    2484:	a62002a8 	sh	zero,680(s1)
    2488:	100000cf 	b	27c8 <EnNiw_Update+0xa14>
    248c:	ae280250 	sw	t0,592(s1)
    2490:	96380088 	lhu	t8,136(s1)
    2494:	3c040000 	lui	a0,0x0
    2498:	3c014170 	lui	at,0x4170
    249c:	33090020 	andi	t1,t8,0x20
    24a0:	11200032 	beqz	t1,256c <EnNiw_Update+0x7b8>
    24a4:	24840000 	addiu	a0,a0,0
    24a8:	44813000 	mtc1	at,$f6
    24ac:	c6280084 	lwc1	$f8,132(s1)
    24b0:	4608303c 	c.lt.s	$f6,$f8
    24b4:	00000000 	nop
    24b8:	4502002d 	bc1fl	2570 <EnNiw_Update+0x7bc>
    24bc:	848d0000 	lh	t5,0(a0)
    24c0:	8e2b0250 	lw	t3,592(s1)
    24c4:	3c100000 	lui	s0,0x0
    24c8:	26100000 	addiu	s0,s0,0
    24cc:	520b0028 	beql	s0,t3,2570 <EnNiw_Update+0x7bc>
    24d0:	848d0000 	lh	t5,0(a0)
    24d4:	8622001c 	lh	v0,28(s1)
    24d8:	2401000d 	li	at,13
    24dc:	10410023 	beq	v0,at,256c <EnNiw_Update+0x7b8>
    24e0:	2401000e 	li	at,14
    24e4:	10410021 	beq	v0,at,256c <EnNiw_Update+0x7b8>
    24e8:	2401000a 	li	at,10
    24ec:	1041001f 	beq	v0,at,256c <EnNiw_Update+0x7b8>
    24f0:	26250024 	addiu	a1,s1,36
    24f4:	e6340060 	swc1	$f20,96(s1)
    24f8:	e634006c 	swc1	$f20,108(s1)
    24fc:	0c000000 	jal	0 <EnNiw_Init>
    2500:	27a400ac 	addiu	a0,sp,172
    2504:	c7aa00b0 	lwc1	$f10,176(sp)
    2508:	c6320084 	lwc1	$f18,132(s1)
    250c:	240a001e 	li	t2,30
    2510:	240c0190 	li	t4,400
    2514:	46125100 	add.s	$f4,$f10,$f18
    2518:	27a500ac 	addiu	a1,sp,172
    251c:	00003025 	move	a2,zero
    2520:	00003825 	move	a3,zero
    2524:	e7a400b0 	swc1	$f4,176(sp)
    2528:	a62a025a 	sh	t2,602(s1)
    252c:	afac0014 	sw	t4,20(sp)
    2530:	afa00010 	sw	zero,16(sp)
    2534:	0c000000 	jal	0 <EnNiw_Init>
    2538:	8fa400e4 	lw	a0,228(sp)
    253c:	3c040000 	lui	a0,0x0
    2540:	a620025c 	sh	zero,604(s1)
    2544:	0c000000 	jal	0 <EnNiw_Init>
    2548:	24840000 	addiu	a0,a0,0
    254c:	3c040000 	lui	a0,0x0
    2550:	0c000000 	jal	0 <EnNiw_Init>
    2554:	24840000 	addiu	a0,a0,0
    2558:	3c040000 	lui	a0,0x0
    255c:	0c000000 	jal	0 <EnNiw_Init>
    2560:	24840000 	addiu	a0,a0,0
    2564:	10000098 	b	27c8 <EnNiw_Update+0xa14>
    2568:	ae300250 	sw	s0,592(s1)
    256c:	848d0000 	lh	t5,0(a0)
    2570:	55a00030 	bnezl	t5,2634 <EnNiw_Update+0x880>
    2574:	863802a8 	lh	t8,680(s1)
    2578:	863902a4 	lh	t9,676(s1)
    257c:	5f20002d 	bgtzl	t9,2634 <EnNiw_Update+0x880>
    2580:	863802a8 	lh	t8,680(s1)
    2584:	8622001c 	lh	v0,28(s1)
    2588:	2401000d 	li	at,13
    258c:	10410028 	beq	v0,at,2630 <EnNiw_Update+0x87c>
    2590:	2401000e 	li	at,14
    2594:	10410026 	beq	v0,at,2630 <EnNiw_Update+0x87c>
    2598:	2401000a 	li	at,10
    259c:	10410024 	beq	v0,at,2630 <EnNiw_Update+0x87c>
    25a0:	3c014120 	lui	at,0x4120
    25a4:	44818000 	mtc1	at,$f16
    25a8:	c6260090 	lwc1	$f6,144(s1)
    25ac:	240e0064 	li	t6,100
    25b0:	3c080000 	lui	t0,0x0
    25b4:	4606803c 	c.lt.s	$f16,$f6
    25b8:	a62e025e 	sh	t6,606(s1)
    25bc:	24030001 	li	v1,1
    25c0:	240f2710 	li	t7,10000
    25c4:	4500001a 	bc1f	2630 <EnNiw_Update+0x87c>
    25c8:	25080000 	addiu	t0,t0,0
    25cc:	a4830000 	sh	v1,0(a0)
    25d0:	c6200024 	lwc1	$f0,36(s1)
    25d4:	a620029e 	sh	zero,670(s1)
    25d8:	8622029e 	lh	v0,670(s1)
    25dc:	e62002b8 	swc1	$f0,696(s1)
    25e0:	e62002ac 	swc1	$f0,684(s1)
    25e4:	c6200028 	lwc1	$f0,40(s1)
    25e8:	e6340068 	swc1	$f20,104(s1)
    25ec:	e63402fc 	swc1	$f20,764(s1)
    25f0:	e62002bc 	swc1	$f0,700(s1)
    25f4:	e62002b0 	swc1	$f0,688(s1)
    25f8:	c620002c 	lwc1	$f0,44(s1)
    25fc:	e6340300 	swc1	$f20,768(s1)
    2600:	e6340288 	swc1	$f20,648(s1)
    2604:	e6340280 	swc1	$f20,640(s1)
    2608:	e6340284 	swc1	$f20,644(s1)
    260c:	e634028c 	swc1	$f20,652(s1)
    2610:	a62f0260 	sh	t7,608(s1)
    2614:	a62302a8 	sh	v1,680(s1)
    2618:	ae280250 	sw	t0,592(s1)
    261c:	a622025a 	sh	v0,602(s1)
    2620:	a622025c 	sh	v0,604(s1)
    2624:	e62002c0 	swc1	$f0,704(s1)
    2628:	10000067 	b	27c8 <EnNiw_Update+0xa14>
    262c:	e62002b4 	swc1	$f0,692(s1)
    2630:	863802a8 	lh	t8,680(s1)
    2634:	3c0141a0 	lui	at,0x41a0
    2638:	53000015 	beqzl	t8,2690 <EnNiw_Update+0x8dc>
    263c:	02202025 	move	a0,s1
    2640:	44815000 	mtc1	at,$f10
    2644:	44819000 	mtc1	at,$f18
    2648:	c628008c 	lwc1	$f8,140(s1)
    264c:	8fa900d4 	lw	t1,212(sp)
    2650:	46125102 	mul.s	$f4,$f10,$f18
    2654:	4604403c 	c.lt.s	$f8,$f4
    2658:	00000000 	nop
    265c:	4502000c 	bc1fl	2690 <EnNiw_Update+0x8dc>
    2660:	02202025 	move	a0,s1
    2664:	812b0a78 	lb	t3,2680(t1)
    2668:	8fa400e4 	lw	a0,228(sp)
    266c:	02202825 	move	a1,s1
    2670:	15600006 	bnez	t3,268c <EnNiw_Update+0x8d8>
    2674:	3c064000 	lui	a2,0x4000
    2678:	86270032 	lh	a3,50(s1)
    267c:	240a0010 	li	t2,16
    2680:	afaa0014 	sw	t2,20(sp)
    2684:	0c000000 	jal	0 <EnNiw_Init>
    2688:	e7b40010 	swc1	$f20,16(sp)
    268c:	02202025 	move	a0,s1
    2690:	0c000000 	jal	0 <EnNiw_Init>
    2694:	8fa500e4 	lw	a1,228(sp)
    2698:	862c0262 	lh	t4,610(s1)
    269c:	5580000b 	bnezl	t4,26cc <EnNiw_Update+0x918>
    26a0:	862f0260 	lh	t7,608(s1)
    26a4:	8e390250 	lw	t9,592(s1)
    26a8:	3c0d0000 	lui	t5,0x0
    26ac:	25ad0000 	addiu	t5,t5,0
    26b0:	15b90005 	bne	t5,t9,26c8 <EnNiw_Update+0x914>
    26b4:	240e0007 	li	t6,7
    26b8:	a62e0262 	sh	t6,610(s1)
    26bc:	02202025 	move	a0,s1
    26c0:	0c000000 	jal	0 <EnNiw_Init>
    26c4:	240538ff 	li	a1,14591
    26c8:	862f0260 	lh	t7,608(s1)
    26cc:	8fa8003c 	lw	t0,60(sp)
    26d0:	55e00010 	bnezl	t7,2714 <EnNiw_Update+0x960>
    26d4:	862a02a8 	lh	t2,680(s1)
    26d8:	8e380250 	lw	t8,592(s1)
    26dc:	240b012c 	li	t3,300
    26e0:	02202025 	move	a0,s1
    26e4:	11180008 	beq	t0,t8,2708 <EnNiw_Update+0x954>
    26e8:	24052811 	li	a1,10257
    26ec:	2409001e 	li	t1,30
    26f0:	a6290260 	sh	t1,608(s1)
    26f4:	02202025 	move	a0,s1
    26f8:	0c000000 	jal	0 <EnNiw_Init>
    26fc:	24052812 	li	a1,10258
    2700:	10000004 	b	2714 <EnNiw_Update+0x960>
    2704:	862a02a8 	lh	t2,680(s1)
    2708:	0c000000 	jal	0 <EnNiw_Init>
    270c:	a62b0260 	sh	t3,608(s1)
    2710:	862a02a8 	lh	t2,680(s1)
    2714:	2630030c 	addiu	s0,s1,780
    2718:	02002825 	move	a1,s0
    271c:	1540002a 	bnez	t2,27c8 <EnNiw_Update+0xa14>
    2720:	02202025 	move	a0,s1
    2724:	3c0c0000 	lui	t4,0x0
    2728:	258c0000 	addiu	t4,t4,0
    272c:	0c000000 	jal	0 <EnNiw_Init>
    2730:	afac003c 	sw	t4,60(sp)
    2734:	8622001c 	lh	v0,28(s1)
    2738:	2401000a 	li	at,10
    273c:	1041000c 	beq	v0,at,2770 <EnNiw_Update+0x9bc>
    2740:	2401000d 	li	at,13
    2744:	1041000a 	beq	v0,at,2770 <EnNiw_Update+0x9bc>
    2748:	2401000e 	li	at,14
    274c:	10410008 	beq	v0,at,2770 <EnNiw_Update+0x9bc>
    2750:	24010004 	li	at,4
    2754:	10410006 	beq	v0,at,2770 <EnNiw_Update+0x9bc>
    2758:	8fa400e4 	lw	a0,228(sp)
    275c:	3c010001 	lui	at,0x1
    2760:	34211e60 	ori	at,at,0x1e60
    2764:	00812821 	addu	a1,a0,at
    2768:	0c000000 	jal	0 <EnNiw_Init>
    276c:	02003025 	move	a2,s0
    2770:	8e220250 	lw	v0,592(s1)
    2774:	8fb9003c 	lw	t9,60(sp)
    2778:	3c0e0000 	lui	t6,0x0
    277c:	25ce0000 	addiu	t6,t6,0
    2780:	53220012 	beql	t9,v0,27cc <EnNiw_Update+0xa18>
    2784:	8fbf002c 	lw	ra,44(sp)
    2788:	11c2000f 	beq	t6,v0,27c8 <EnNiw_Update+0xa14>
    278c:	3c0f0000 	lui	t7,0x0
    2790:	25ef0000 	addiu	t7,t7,0
    2794:	11e2000c 	beq	t7,v0,27c8 <EnNiw_Update+0xa14>
    2798:	3c080000 	lui	t0,0x0
    279c:	25080000 	addiu	t0,t0,0
    27a0:	11020009 	beq	t0,v0,27c8 <EnNiw_Update+0xa14>
    27a4:	3c180000 	lui	t8,0x0
    27a8:	27180000 	addiu	t8,t8,0
    27ac:	13020006 	beq	t8,v0,27c8 <EnNiw_Update+0xa14>
    27b0:	8fa400e4 	lw	a0,228(sp)
    27b4:	3c010001 	lui	at,0x1
    27b8:	34211e60 	ori	at,at,0x1e60
    27bc:	00812821 	addu	a1,a0,at
    27c0:	0c000000 	jal	0 <EnNiw_Init>
    27c4:	02003025 	move	a2,s0
    27c8:	8fbf002c 	lw	ra,44(sp)
    27cc:	d7b40018 	ldc1	$f20,24(sp)
    27d0:	8fb00024 	lw	s0,36(sp)
    27d4:	8fb10028 	lw	s1,40(sp)
    27d8:	03e00008 	jr	ra
    27dc:	27bd00e0 	addiu	sp,sp,224

000027e0 <func_80AB7F60>:
    27e0:	27bdfff0 	addiu	sp,sp,-16
    27e4:	3c0f0000 	lui	t7,0x0
    27e8:	afa40010 	sw	a0,16(sp)
    27ec:	afa60018 	sw	a2,24(sp)
    27f0:	afa7001c 	sw	a3,28(sp)
    27f4:	25ef0000 	addiu	t7,t7,0
    27f8:	8df90000 	lw	t9,0(t7)
    27fc:	27ae0000 	addiu	t6,sp,0
    2800:	8df80004 	lw	t8,4(t7)
    2804:	add90000 	sw	t9,0(t6)
    2808:	8df90008 	lw	t9,8(t7)
    280c:	2401000d 	li	at,13
    2810:	add80004 	sw	t8,4(t6)
    2814:	14a1000a 	bne	a1,at,2840 <func_80AB7F60+0x60>
    2818:	add90008 	sw	t9,8(t6)
    281c:	8fa20024 	lw	v0,36(sp)
    2820:	8fa30020 	lw	v1,32(sp)
    2824:	c44402dc 	lwc1	$f4,732(v0)
    2828:	84680002 	lh	t0,2(v1)
    282c:	4600218d 	trunc.w.s	$f6,$f4
    2830:	440c3000 	mfc1	t4,$f6
    2834:	00000000 	nop
    2838:	010c6821 	addu	t5,t0,t4
    283c:	a46d0002 	sh	t5,2(v1)
    2840:	2401000f 	li	at,15
    2844:	8fa20024 	lw	v0,36(sp)
    2848:	14a10008 	bne	a1,at,286c <func_80AB7F60+0x8c>
    284c:	8fa30020 	lw	v1,32(sp)
    2850:	c44802e0 	lwc1	$f8,736(v0)
    2854:	846e0002 	lh	t6,2(v1)
    2858:	4600428d 	trunc.w.s	$f10,$f8
    285c:	44095000 	mfc1	t1,$f10
    2860:	00000000 	nop
    2864:	01c95021 	addu	t2,t6,t1
    2868:	a46a0002 	sh	t2,2(v1)
    286c:	2401000b 	li	at,11
    2870:	54a10017 	bnel	a1,at,28d0 <func_80AB7F60+0xf0>
    2874:	24010007 	li	at,7
    2878:	c45002d8 	lwc1	$f16,728(v0)
    287c:	846b0000 	lh	t3,0(v1)
    2880:	84790002 	lh	t9,2(v1)
    2884:	4600848d 	trunc.w.s	$f18,$f16
    2888:	846d0004 	lh	t5,4(v1)
    288c:	440f9000 	mfc1	t7,$f18
    2890:	00000000 	nop
    2894:	016fc021 	addu	t8,t3,t7
    2898:	a4780000 	sh	t8,0(v1)
    289c:	c44402d4 	lwc1	$f4,724(v0)
    28a0:	4600218d 	trunc.w.s	$f6,$f4
    28a4:	44083000 	mfc1	t0,$f6
    28a8:	00000000 	nop
    28ac:	03286021 	addu	t4,t9,t0
    28b0:	a46c0002 	sh	t4,2(v1)
    28b4:	c44802d0 	lwc1	$f8,720(v0)
    28b8:	4600428d 	trunc.w.s	$f10,$f8
    28bc:	440e5000 	mfc1	t6,$f10
    28c0:	00000000 	nop
    28c4:	01ae4821 	addu	t1,t5,t6
    28c8:	a4690004 	sh	t1,4(v1)
    28cc:	24010007 	li	at,7
    28d0:	54a10017 	bnel	a1,at,2930 <func_80AB7F60+0x150>
    28d4:	00001025 	move	v0,zero
    28d8:	c45002cc 	lwc1	$f16,716(v0)
    28dc:	846a0000 	lh	t2,0(v1)
    28e0:	84780002 	lh	t8,2(v1)
    28e4:	4600848d 	trunc.w.s	$f18,$f16
    28e8:	846c0004 	lh	t4,4(v1)
    28ec:	440b9000 	mfc1	t3,$f18
    28f0:	00000000 	nop
    28f4:	014b7821 	addu	t7,t2,t3
    28f8:	a46f0000 	sh	t7,0(v1)
    28fc:	c44402c8 	lwc1	$f4,712(v0)
    2900:	4600218d 	trunc.w.s	$f6,$f4
    2904:	44193000 	mfc1	t9,$f6
    2908:	00000000 	nop
    290c:	03194021 	addu	t0,t8,t9
    2910:	a4680002 	sh	t0,2(v1)
    2914:	c44802c4 	lwc1	$f8,708(v0)
    2918:	4600428d 	trunc.w.s	$f10,$f8
    291c:	440d5000 	mfc1	t5,$f10
    2920:	00000000 	nop
    2924:	018d7021 	addu	t6,t4,t5
    2928:	a46e0004 	sh	t6,4(v1)
    292c:	00001025 	move	v0,zero
    2930:	03e00008 	jr	ra
    2934:	27bd0010 	addiu	sp,sp,16

00002938 <EnNiw_Draw>:
    2938:	27bdffb8 	addiu	sp,sp,-72
    293c:	3c0f0000 	lui	t7,0x0
    2940:	afbf002c 	sw	ra,44(sp)
    2944:	afb00028 	sw	s0,40(sp)
    2948:	afa5004c 	sw	a1,76(sp)
    294c:	25ef0000 	addiu	t7,t7,0
    2950:	8df90000 	lw	t9,0(t7)
    2954:	27ae0038 	addiu	t6,sp,56
    2958:	8df80004 	lw	t8,4(t7)
    295c:	add90000 	sw	t9,0(t6)
    2960:	8df90008 	lw	t9,8(t7)
    2964:	add80004 	sw	t8,4(t6)
    2968:	00808025 	move	s0,a0
    296c:	add90008 	sw	t9,8(t6)
    2970:	8fa8004c 	lw	t0,76(sp)
    2974:	0c000000 	jal	0 <EnNiw_Init>
    2978:	8d040000 	lw	a0,0(t0)
    297c:	8e050150 	lw	a1,336(s0)
    2980:	8e06016c 	lw	a2,364(s0)
    2984:	9207014e 	lbu	a3,334(s0)
    2988:	3c090000 	lui	t1,0x0
    298c:	25290000 	addiu	t1,t1,0
    2990:	afa90010 	sw	t1,16(sp)
    2994:	afb00018 	sw	s0,24(sp)
    2998:	afa00014 	sw	zero,20(sp)
    299c:	0c000000 	jal	0 <EnNiw_Init>
    29a0:	8fa4004c 	lw	a0,76(sp)
    29a4:	8e0b0250 	lw	t3,592(s0)
    29a8:	3c0a0000 	lui	t2,0x0
    29ac:	254a0000 	addiu	t2,t2,0
    29b0:	154b0005 	bne	t2,t3,29c8 <EnNiw_Draw+0x90>
    29b4:	26040024 	addiu	a0,s0,36
    29b8:	27a50038 	addiu	a1,sp,56
    29bc:	240600ff 	li	a2,255
    29c0:	0c000000 	jal	0 <EnNiw_Init>
    29c4:	8fa7004c 	lw	a3,76(sp)
    29c8:	02002025 	move	a0,s0
    29cc:	0c000000 	jal	0 <EnNiw_Init>
    29d0:	8fa5004c 	lw	a1,76(sp)
    29d4:	8fbf002c 	lw	ra,44(sp)
    29d8:	8fb00028 	lw	s0,40(sp)
    29dc:	27bd0048 	addiu	sp,sp,72
    29e0:	03e00008 	jr	ra
    29e4:	00000000 	nop

000029e8 <func_80AB8168>:
    29e8:	27bdffe0 	addiu	sp,sp,-32
    29ec:	afbf0014 	sw	ra,20(sp)
    29f0:	24830358 	addiu	v1,a0,856
    29f4:	00001025 	move	v0,zero
    29f8:	906e0000 	lbu	t6,0(v1)
    29fc:	24420001 	addiu	v0,v0,1
    2a00:	00021400 	sll	v0,v0,0x10
    2a04:	15c0002d 	bnez	t6,2abc <func_80AB8168+0xd4>
    2a08:	00021403 	sra	v0,v0,0x10
    2a0c:	240f0001 	li	t7,1
    2a10:	a06f0000 	sb	t7,0(v1)
    2a14:	8cb90000 	lw	t9,0(a1)
    2a18:	3c01447a 	lui	at,0x447a
    2a1c:	44813000 	mtc1	at,$f6
    2a20:	ac790004 	sw	t9,4(v1)
    2a24:	8cb80004 	lw	t8,4(a1)
    2a28:	3c0141a0 	lui	at,0x41a0
    2a2c:	44816000 	mtc1	at,$f12
    2a30:	ac780008 	sw	t8,8(v1)
    2a34:	8cb90008 	lw	t9,8(a1)
    2a38:	ac79000c 	sw	t9,12(v1)
    2a3c:	8cc90000 	lw	t1,0(a2)
    2a40:	ac690010 	sw	t1,16(v1)
    2a44:	8cc80004 	lw	t0,4(a2)
    2a48:	ac680014 	sw	t0,20(v1)
    2a4c:	8cc90008 	lw	t1,8(a2)
    2a50:	ac690018 	sw	t1,24(v1)
    2a54:	8ceb0000 	lw	t3,0(a3)
    2a58:	ac6b001c 	sw	t3,28(v1)
    2a5c:	8cea0004 	lw	t2,4(a3)
    2a60:	ac6a0020 	sw	t2,32(v1)
    2a64:	8ceb0008 	lw	t3,8(a3)
    2a68:	a0600034 	sb	zero,52(v1)
    2a6c:	ac6b0024 	sw	t3,36(v1)
    2a70:	c7a40030 	lwc1	$f4,48(sp)
    2a74:	46062203 	div.s	$f8,$f4,$f6
    2a78:	e468002c 	swc1	$f8,44(v1)
    2a7c:	0c000000 	jal	0 <EnNiw_Init>
    2a80:	afa30018 	sw	v1,24(sp)
    2a84:	4600028d 	trunc.w.s	$f10,$f0
    2a88:	8fa30018 	lw	v1,24(sp)
    2a8c:	3c01447a 	lui	at,0x447a
    2a90:	44816000 	mtc1	at,$f12
    2a94:	440f5000 	mfc1	t7,$f10
    2a98:	00000000 	nop
    2a9c:	25f80028 	addiu	t8,t7,40
    2aa0:	0c000000 	jal	0 <EnNiw_Init>
    2aa4:	a4780028 	sh	t8,40(v1)
    2aa8:	4600040d 	trunc.w.s	$f16,$f0
    2aac:	8fa30018 	lw	v1,24(sp)
    2ab0:	44088000 	mfc1	t0,$f16
    2ab4:	10000004 	b	2ac8 <func_80AB8168+0xe0>
    2ab8:	a468002a 	sh	t0,42(v1)
    2abc:	28410014 	slti	at,v0,20
    2ac0:	1420ffcd 	bnez	at,29f8 <func_80AB8168+0x10>
    2ac4:	24630038 	addiu	v1,v1,56
    2ac8:	8fbf0014 	lw	ra,20(sp)
    2acc:	27bd0020 	addiu	sp,sp,32
    2ad0:	03e00008 	jr	ra
    2ad4:	00000000 	nop

00002ad8 <func_80AB8258>:
    2ad8:	27bdffa8 	addiu	sp,sp,-88
    2adc:	f7be0038 	sdc1	$f30,56(sp)
    2ae0:	3c010000 	lui	at,0x0
    2ae4:	c43e0000 	lwc1	$f30,0(at)
    2ae8:	f7bc0030 	sdc1	$f28,48(sp)
    2aec:	3c010000 	lui	at,0x0
    2af0:	c43c0000 	lwc1	$f28,0(at)
    2af4:	f7ba0028 	sdc1	$f26,40(sp)
    2af8:	3c01bf00 	lui	at,0xbf00
    2afc:	4481d000 	mtc1	at,$f26
    2b00:	f7b80020 	sdc1	$f24,32(sp)
    2b04:	3c010000 	lui	at,0x0
    2b08:	c4380000 	lwc1	$f24,0(at)
    2b0c:	f7b60018 	sdc1	$f22,24(sp)
    2b10:	f7b40010 	sdc1	$f20,16(sp)
    2b14:	3c013f80 	lui	at,0x3f80
    2b18:	afb30050 	sw	s3,80(sp)
    2b1c:	afb2004c 	sw	s2,76(sp)
    2b20:	afb10048 	sw	s1,72(sp)
    2b24:	afb00044 	sw	s0,68(sp)
    2b28:	4481b000 	mtc1	at,$f22
    2b2c:	4480a000 	mtc1	zero,$f20
    2b30:	afbf0054 	sw	ra,84(sp)
    2b34:	afa5005c 	sw	a1,92(sp)
    2b38:	24900358 	addiu	s0,a0,856
    2b3c:	00008825 	move	s1,zero
    2b40:	24120001 	li	s2,1
    2b44:	24130bb8 	li	s3,3000
    2b48:	920e0000 	lbu	t6,0(s0)
    2b4c:	51c0003d 	beqzl	t6,2c44 <func_80AB8258+0x16c>
    2b50:	26310001 	addiu	s1,s1,1
    2b54:	c6000010 	lwc1	$f0,16(s0)
    2b58:	c6040004 	lwc1	$f4,4(s0)
    2b5c:	c6020014 	lwc1	$f2,20(s0)
    2b60:	c6080008 	lwc1	$f8,8(s0)
    2b64:	c60c0018 	lwc1	$f12,24(s0)
    2b68:	c610000c 	lwc1	$f16,12(s0)
    2b6c:	46002180 	add.s	$f6,$f4,$f0
    2b70:	c604001c 	lwc1	$f4,28(s0)
    2b74:	920f0034 	lbu	t7,52(s0)
    2b78:	46024280 	add.s	$f10,$f8,$f2
    2b7c:	c6080020 	lwc1	$f8,32(s0)
    2b80:	e6060004 	swc1	$f6,4(s0)
    2b84:	460c8480 	add.s	$f18,$f16,$f12
    2b88:	c6100024 	lwc1	$f16,36(s0)
    2b8c:	e60a0008 	swc1	$f10,8(s0)
    2b90:	46040180 	add.s	$f6,$f0,$f4
    2b94:	e612000c 	swc1	$f18,12(s0)
    2b98:	92190000 	lbu	t9,0(s0)
    2b9c:	46081280 	add.s	$f10,$f2,$f8
    2ba0:	25f80001 	addiu	t8,t7,1
    2ba4:	a2180034 	sb	t8,52(s0)
    2ba8:	46106480 	add.s	$f18,$f12,$f16
    2bac:	e6060010 	swc1	$f6,16(s0)
    2bb0:	e60a0014 	swc1	$f10,20(s0)
    2bb4:	16590022 	bne	s2,t9,2c40 <func_80AB8258+0x168>
    2bb8:	e6120018 	swc1	$f18,24(s0)
    2bbc:	8608002a 	lh	t0,42(s0)
    2bc0:	4405a000 	mfc1	a1,$f20
    2bc4:	4406b000 	mfc1	a2,$f22
    2bc8:	4407c000 	mfc1	a3,$f24
    2bcc:	25090001 	addiu	t1,t0,1
    2bd0:	a609002a 	sh	t1,42(s0)
    2bd4:	0c000000 	jal	0 <EnNiw_Init>
    2bd8:	26040010 	addiu	a0,s0,16
    2bdc:	4405a000 	mfc1	a1,$f20
    2be0:	4406b000 	mfc1	a2,$f22
    2be4:	4407c000 	mfc1	a3,$f24
    2be8:	0c000000 	jal	0 <EnNiw_Init>
    2bec:	26040018 	addiu	a0,s0,24
    2bf0:	c6040014 	lwc1	$f4,20(s0)
    2bf4:	461a203c 	c.lt.s	$f4,$f26
    2bf8:	00000000 	nop
    2bfc:	45020003 	bc1fl	2c0c <func_80AB8258+0x134>
    2c00:	860a002a 	lh	t2,42(s0)
    2c04:	e61a0014 	swc1	$f26,20(s0)
    2c08:	860a002a 	lh	t2,42(s0)
    2c0c:	01530019 	multu	t2,s3
    2c10:	00002012 	mflo	a0
    2c14:	00042400 	sll	a0,a0,0x10
    2c18:	0c000000 	jal	0 <EnNiw_Init>
    2c1c:	00042403 	sra	a0,a0,0x10
    2c20:	461c0182 	mul.s	$f6,$f0,$f28
    2c24:	860b0028 	lh	t3,40(s0)
    2c28:	920c0034 	lbu	t4,52(s0)
    2c2c:	016c082a 	slt	at,t3,t4
    2c30:	461e3202 	mul.s	$f8,$f6,$f30
    2c34:	10200002 	beqz	at,2c40 <func_80AB8258+0x168>
    2c38:	e6080030 	swc1	$f8,48(s0)
    2c3c:	a2000000 	sb	zero,0(s0)
    2c40:	26310001 	addiu	s1,s1,1
    2c44:	00118c00 	sll	s1,s1,0x10
    2c48:	00118c03 	sra	s1,s1,0x10
    2c4c:	2a210014 	slti	at,s1,20
    2c50:	1420ffbd 	bnez	at,2b48 <func_80AB8258+0x70>
    2c54:	26100038 	addiu	s0,s0,56
    2c58:	8fbf0054 	lw	ra,84(sp)
    2c5c:	d7b40010 	ldc1	$f20,16(sp)
    2c60:	d7b60018 	ldc1	$f22,24(sp)
    2c64:	d7b80020 	ldc1	$f24,32(sp)
    2c68:	d7ba0028 	ldc1	$f26,40(sp)
    2c6c:	d7bc0030 	ldc1	$f28,48(sp)
    2c70:	d7be0038 	ldc1	$f30,56(sp)
    2c74:	8fb00044 	lw	s0,68(sp)
    2c78:	8fb10048 	lw	s1,72(sp)
    2c7c:	8fb2004c 	lw	s2,76(sp)
    2c80:	8fb30050 	lw	s3,80(sp)
    2c84:	03e00008 	jr	ra
    2c88:	27bd0058 	addiu	sp,sp,88

00002c8c <func_80AB840C>:
    2c8c:	27bdff68 	addiu	sp,sp,-152
    2c90:	afbf0054 	sw	ra,84(sp)
    2c94:	afbe0050 	sw	s8,80(sp)
    2c98:	afb7004c 	sw	s7,76(sp)
    2c9c:	afb60048 	sw	s6,72(sp)
    2ca0:	afb50044 	sw	s5,68(sp)
    2ca4:	afb40040 	sw	s4,64(sp)
    2ca8:	afb3003c 	sw	s3,60(sp)
    2cac:	afb20038 	sw	s2,56(sp)
    2cb0:	afb10034 	sw	s1,52(sp)
    2cb4:	afb00030 	sw	s0,48(sp)
    2cb8:	f7b80028 	sdc1	$f24,40(sp)
    2cbc:	f7b60020 	sdc1	$f22,32(sp)
    2cc0:	f7b40018 	sdc1	$f20,24(sp)
    2cc4:	8cb20000 	lw	s2,0(a1)
    2cc8:	00a0b825 	move	s7,a1
    2ccc:	24910358 	addiu	s1,a0,856
    2cd0:	3c060000 	lui	a2,0x0
    2cd4:	0000a025 	move	s4,zero
    2cd8:	24c60000 	addiu	a2,a2,0
    2cdc:	27a40074 	addiu	a0,sp,116
    2ce0:	24070769 	li	a3,1897
    2ce4:	0c000000 	jal	0 <EnNiw_Init>
    2ce8:	02402825 	move	a1,s2
    2cec:	0c000000 	jal	0 <EnNiw_Init>
    2cf0:	8ee40000 	lw	a0,0(s7)
    2cf4:	3c01c47a 	lui	at,0xc47a
    2cf8:	4481c000 	mtc1	at,$f24
    2cfc:	3c013f80 	lui	at,0x3f80
    2d00:	4481b000 	mtc1	at,$f22
    2d04:	4480a000 	mtc1	zero,$f20
    2d08:	00009825 	move	s3,zero
    2d0c:	241e0001 	li	s8,1
    2d10:	3c16de00 	lui	s6,0xde00
    2d14:	922e0000 	lbu	t6,0(s1)
    2d18:	3c010001 	lui	at,0x1
    2d1c:	34211da0 	ori	at,at,0x1da0
    2d20:	17ce0033 	bne	s8,t6,2df0 <func_80AB840C+0x164>
    2d24:	02e18021 	addu	s0,s7,at
    2d28:	3c150600 	lui	s5,0x600
    2d2c:	1680000a 	bnez	s4,2d58 <func_80AB840C+0xcc>
    2d30:	26b52428 	addiu	s5,s5,9256
    2d34:	8e4202d0 	lw	v0,720(s2)
    2d38:	3c040600 	lui	a0,0x600
    2d3c:	248423b0 	addiu	a0,a0,9136
    2d40:	244f0008 	addiu	t7,v0,8
    2d44:	ae4f02d0 	sw	t7,720(s2)
    2d48:	26940001 	addiu	s4,s4,1
    2d4c:	329400ff 	andi	s4,s4,0xff
    2d50:	ac440004 	sw	a0,4(v0)
    2d54:	ac560000 	sw	s6,0(v0)
    2d58:	c62c0004 	lwc1	$f12,4(s1)
    2d5c:	c62e0008 	lwc1	$f14,8(s1)
    2d60:	8e26000c 	lw	a2,12(s1)
    2d64:	0c000000 	jal	0 <EnNiw_Init>
    2d68:	00003825 	move	a3,zero
    2d6c:	0c000000 	jal	0 <EnNiw_Init>
    2d70:	02002025 	move	a0,s0
    2d74:	c62c002c 	lwc1	$f12,44(s1)
    2d78:	4406b000 	mfc1	a2,$f22
    2d7c:	24070001 	li	a3,1
    2d80:	0c000000 	jal	0 <EnNiw_Init>
    2d84:	46006386 	mov.s	$f14,$f12
    2d88:	c62c0030 	lwc1	$f12,48(s1)
    2d8c:	0c000000 	jal	0 <EnNiw_Init>
    2d90:	24050001 	li	a1,1
    2d94:	4406a000 	mfc1	a2,$f20
    2d98:	4600a306 	mov.s	$f12,$f20
    2d9c:	4600c386 	mov.s	$f14,$f24
    2da0:	0c000000 	jal	0 <EnNiw_Init>
    2da4:	24070001 	li	a3,1
    2da8:	8e4202d0 	lw	v0,720(s2)
    2dac:	3c19da38 	lui	t9,0xda38
    2db0:	37390003 	ori	t9,t9,0x3
    2db4:	24580008 	addiu	t8,v0,8
    2db8:	ae5802d0 	sw	t8,720(s2)
    2dbc:	3c050000 	lui	a1,0x0
    2dc0:	24a50000 	addiu	a1,a1,0
    2dc4:	02402025 	move	a0,s2
    2dc8:	24060779 	li	a2,1913
    2dcc:	ac590000 	sw	t9,0(v0)
    2dd0:	0c000000 	jal	0 <EnNiw_Init>
    2dd4:	00408025 	move	s0,v0
    2dd8:	ae020004 	sw	v0,4(s0)
    2ddc:	8e4202d0 	lw	v0,720(s2)
    2de0:	24480008 	addiu	t0,v0,8
    2de4:	ae4802d0 	sw	t0,720(s2)
    2de8:	ac550004 	sw	s5,4(v0)
    2dec:	ac560000 	sw	s6,0(v0)
    2df0:	26730001 	addiu	s3,s3,1
    2df4:	00139c00 	sll	s3,s3,0x10
    2df8:	00139c03 	sra	s3,s3,0x10
    2dfc:	2a610014 	slti	at,s3,20
    2e00:	1420ffc4 	bnez	at,2d14 <func_80AB840C+0x88>
    2e04:	26310038 	addiu	s1,s1,56
    2e08:	3c060000 	lui	a2,0x0
    2e0c:	24c60000 	addiu	a2,a2,0
    2e10:	27a40074 	addiu	a0,sp,116
    2e14:	02402825 	move	a1,s2
    2e18:	0c000000 	jal	0 <EnNiw_Init>
    2e1c:	2407077f 	li	a3,1919
    2e20:	8fbf0054 	lw	ra,84(sp)
    2e24:	d7b40018 	ldc1	$f20,24(sp)
    2e28:	d7b60020 	ldc1	$f22,32(sp)
    2e2c:	d7b80028 	ldc1	$f24,40(sp)
    2e30:	8fb00030 	lw	s0,48(sp)
    2e34:	8fb10034 	lw	s1,52(sp)
    2e38:	8fb20038 	lw	s2,56(sp)
    2e3c:	8fb3003c 	lw	s3,60(sp)
    2e40:	8fb40040 	lw	s4,64(sp)
    2e44:	8fb50044 	lw	s5,68(sp)
    2e48:	8fb60048 	lw	s6,72(sp)
    2e4c:	8fb7004c 	lw	s7,76(sp)
    2e50:	8fbe0050 	lw	s8,80(sp)
    2e54:	03e00008 	jr	ra
    2e58:	27bd0098 	addiu	sp,sp,152
    2e5c:	00000000 	nop
