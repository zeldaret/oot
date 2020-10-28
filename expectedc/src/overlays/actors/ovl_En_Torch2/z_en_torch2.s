
build/src/overlays/actors/ovl_En_Torch2/z_en_torch2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTorch2_Init>:
       0:	3c020000 	lui	v0,0x0
       4:	24420000 	addiu	v0,v0,0
       8:	27bdffd0 	addiu	sp,sp,-48
       c:	a0400003 	sb	zero,3(v0)
      10:	80580003 	lb	t8,3(v0)
      14:	afbf001c 	sw	ra,28(sp)
      18:	afb00018 	sw	s0,24(sp)
      1c:	afa50034 	sw	a1,52(sp)
      20:	a4400012 	sh	zero,18(v0)
      24:	a440000c 	sh	zero,12(v0)
      28:	a4400000 	sh	zero,0(v0)
      2c:	a0580002 	sb	t8,2(v0)
      30:	24190002 	li	t9,2
      34:	24090003 	li	t1,3
      38:	00808025 	move	s0,a0
      3c:	a099014e 	sb	t9,334(a0)
      40:	a0890152 	sb	t1,338(a0)
      44:	a0890151 	sb	t1,337(a0)
      48:	0c000000 	jal	0 <EnTorch2_Init>
      4c:	24050002 	li	a1,2
      50:	8fa50034 	lw	a1,52(sp)
      54:	3c010001 	lui	at,0x1
      58:	3c060600 	lui	a2,0x600
      5c:	00a11021 	addu	v0,a1,at
      60:	afa20024 	sw	v0,36(sp)
      64:	8c591d3c 	lw	t9,7484(v0)
      68:	24c64764 	addiu	a2,a2,18276
      6c:	02002025 	move	a0,s0
      70:	0320f809 	jalr	t9
      74:	00000000 	nop
      78:	8fa20024 	lw	v0,36(sp)
      7c:	8fa50034 	lw	a1,52(sp)
      80:	240d0009 	li	t5,9
      84:	24040011 	li	a0,17
      88:	2406000d 	li	a2,13
      8c:	240f0008 	li	t7,8
      90:	24080001 	li	t0,1
      94:	3c090000 	lui	t1,0x0
      98:	240a0026 	li	t2,38
      9c:	25290000 	addiu	t1,t1,0
      a0:	a20a0117 	sb	t2,279(s0)
      a4:	a20d04a9 	sb	t5,1193(s0)
      a8:	a2040574 	sb	a0,1396(s0)
      ac:	a20404f4 	sb	a0,1268(s0)
      b0:	a2060575 	sb	a2,1397(s0)
      b4:	a20604f5 	sb	a2,1269(s0)
      b8:	a20d0578 	sb	t5,1400(s0)
      bc:	a20d04f8 	sb	t5,1272(s0)
      c0:	a20f0581 	sb	t7,1409(s0)
      c4:	a20f0501 	sb	t7,1281(s0)
      c8:	a2080592 	sb	t0,1426(s0)
      cc:	a2080512 	sb	t0,1298(s0)
      d0:	a20405f4 	sb	a0,1524(s0)
      d4:	a20605f5 	sb	a2,1525(s0)
      d8:	ae090098 	sw	t1,152(s0)
      dc:	3c190000 	lui	t9,0x0
      e0:	8739002e 	lh	t9,46(t9)
      e4:	240b003c 	li	t3,60
      e8:	240c0064 	li	t4,100
      ec:	001950c3 	sra	t2,t9,0x3
      f0:	a20a00af 	sb	t2,175(s0)
      f4:	a60b00a8 	sh	t3,168(s0)
      f8:	a60c00aa 	sh	t4,170(s0)
      fc:	8c591d54 	lw	t9,7508(v0)
     100:	02002025 	move	a0,s0
     104:	0320f809 	jalr	t9
     108:	00000000 	nop
     10c:	3c010000 	lui	at,0x0
     110:	a0200000 	sb	zero,0(at)
     114:	44802000 	mtc1	zero,$f4
     118:	3c010000 	lui	at,0x0
     11c:	a0200000 	sb	zero,0(at)
     120:	3c010000 	lui	at,0x0
     124:	e4240000 	swc1	$f4,0(at)
     128:	3c010000 	lui	at,0x0
     12c:	a0200000 	sb	zero,0(at)
     130:	3c010000 	lui	at,0x0
     134:	a0200000 	sb	zero,0(at)
     138:	3c010000 	lui	at,0x0
     13c:	a0200000 	sb	zero,0(at)
     140:	3c020000 	lui	v0,0x0
     144:	3c030000 	lui	v1,0x0
     148:	24630000 	addiu	v1,v1,0
     14c:	24420000 	addiu	v0,v0,0
     150:	a0400000 	sb	zero,0(v0)
     154:	a0600000 	sb	zero,0(v1)
     158:	3c010000 	lui	at,0x0
     15c:	a0200000 	sb	zero,0(at)
     160:	3c010000 	lui	at,0x0
     164:	a0200000 	sb	zero,0(at)
     168:	3c010000 	lui	at,0x0
     16c:	240f005f 	li	t7,95
     170:	a02f0000 	sb	t7,0(at)
     174:	8e090008 	lw	t1,8(s0)
     178:	3c180000 	lui	t8,0x0
     17c:	27180000 	addiu	t8,t8,0
     180:	af090000 	sw	t1,0(t8)
     184:	8e08000c 	lw	t0,12(s0)
     188:	af080004 	sw	t0,4(t8)
     18c:	8e090010 	lw	t1,16(s0)
     190:	af090008 	sw	t1,8(t8)
     194:	8fbf001c 	lw	ra,28(sp)
     198:	8fb00018 	lw	s0,24(sp)
     19c:	27bd0030 	addiu	sp,sp,48
     1a0:	03e00008 	jr	ra
     1a4:	00000000 	nop

000001a8 <EnTorch2_Destroy>:
     1a8:	27bdffe0 	addiu	sp,sp,-32
     1ac:	afb00014 	sw	s0,20(sp)
     1b0:	00808025 	move	s0,a0
     1b4:	afb10018 	sw	s1,24(sp)
     1b8:	00a08825 	move	s1,a1
     1bc:	afbf001c 	sw	ra,28(sp)
     1c0:	00a02025 	move	a0,a1
     1c4:	0c000000 	jal	0 <EnTorch2_Init>
     1c8:	8e050670 	lw	a1,1648(s0)
     1cc:	0c000000 	jal	0 <EnTorch2_Init>
     1d0:	00000000 	nop
     1d4:	02202025 	move	a0,s1
     1d8:	0c000000 	jal	0 <EnTorch2_Init>
     1dc:	26050498 	addiu	a1,s0,1176
     1e0:	02202025 	move	a0,s1
     1e4:	0c000000 	jal	0 <EnTorch2_Init>
     1e8:	260504e4 	addiu	a1,s0,1252
     1ec:	02202025 	move	a0,s1
     1f0:	0c000000 	jal	0 <EnTorch2_Init>
     1f4:	26050564 	addiu	a1,s0,1380
     1f8:	02202025 	move	a0,s1
     1fc:	0c000000 	jal	0 <EnTorch2_Init>
     200:	260505e4 	addiu	a1,s0,1508
     204:	8fbf001c 	lw	ra,28(sp)
     208:	8fb00014 	lw	s0,20(sp)
     20c:	8fb10018 	lw	s1,24(sp)
     210:	03e00008 	jr	ra
     214:	27bd0020 	addiu	sp,sp,32

00000218 <func_80B1DB98>:
     218:	27bdffe8 	addiu	sp,sp,-24
     21c:	afbf0014 	sw	ra,20(sp)
     220:	afa40018 	sw	a0,24(sp)
     224:	afa5001c 	sw	a1,28(sp)
     228:	0c000000 	jal	0 <EnTorch2_Init>
     22c:	3c06457a 	lui	a2,0x457a
     230:	10400003 	beqz	v0,240 <func_80B1DB98+0x28>
     234:	8fa40018 	lw	a0,24(sp)
     238:	10000004 	b	24c <func_80B1DB98+0x34>
     23c:	8fbf0014 	lw	ra,20(sp)
     240:	0c000000 	jal	0 <EnTorch2_Init>
     244:	8fa5001c 	lw	a1,28(sp)
     248:	8fbf0014 	lw	ra,20(sp)
     24c:	27bd0018 	addiu	sp,sp,24
     250:	03e00008 	jr	ra
     254:	00000000 	nop

00000258 <func_80B1DBD8>:
     258:	27bdffe0 	addiu	sp,sp,-32
     25c:	afbf0014 	sw	ra,20(sp)
     260:	afa50024 	sw	a1,36(sp)
     264:	44800000 	mtc1	zero,$f0
     268:	c4c40838 	lwc1	$f4,2104(a2)
     26c:	24020007 	li	v0,7
     270:	8c831c44 	lw	v1,7236(a0)
     274:	4600203c 	c.lt.s	$f4,$f0
     278:	46000086 	mov.s	$f2,$f0
     27c:	45010009 	bc1t	2a4 <func_80B1DBD8+0x4c>
     280:	00000000 	nop
     284:	c4660838 	lwc1	$f6,2104(v1)
     288:	3c180001 	lui	t8,0x1
     28c:	3c0e0000 	lui	t6,0x0
     290:	4600303c 	c.lt.s	$f6,$f0
     294:	3c0f0000 	lui	t7,0x0
     298:	0304c021 	addu	t8,t8,a0
     29c:	45000003 	bc1f	2ac <func_80B1DBD8+0x54>
     2a0:	00000000 	nop
     2a4:	1000004e 	b	3e0 <func_80B1DBD8+0x188>
     2a8:	00001025 	move	v0,zero
     2ac:	85ce0030 	lh	t6,48(t6)
     2b0:	3c080000 	lui	t0,0x0
     2b4:	29c10050 	slti	at,t6,80
     2b8:	10200004 	beqz	at,2cc <func_80B1DBD8+0x74>
     2bc:	3c010000 	lui	at,0x0
     2c0:	c4280000 	lwc1	$f8,0(at)
     2c4:	2402000f 	li	v0,15
     2c8:	46080080 	add.s	$f2,$f0,$f8
     2cc:	91ef0000 	lbu	t7,0(t7)
     2d0:	240100ff 	li	at,255
     2d4:	11e10004 	beq	t7,at,2e8 <func_80B1DBD8+0x90>
     2d8:	3c014000 	lui	at,0x4000
     2dc:	44815000 	mtc1	at,$f10
     2e0:	00000000 	nop
     2e4:	460a1080 	add.s	$f2,$f2,$f10
     2e8:	8f181de4 	lw	t8,7652(t8)
     2ec:	0302c824 	and	t9,t8,v0
     2f0:	13200004 	beqz	t9,304 <func_80B1DBD8+0xac>
     2f4:	00000000 	nop
     2f8:	91080000 	lbu	t0,0(t0)
     2fc:	51000038 	beqzl	t0,3e0 <func_80B1DBD8+0x188>
     300:	00001025 	move	v0,zero
     304:	0c000000 	jal	0 <EnTorch2_Init>
     308:	e7a2001c 	swc1	$f2,28(sp)
     30c:	c7a2001c 	lwc1	$f2,28(sp)
     310:	3c090000 	lui	t1,0x0
     314:	4600103e 	c.le.s	$f2,$f0
     318:	00000000 	nop
     31c:	45020030 	bc1fl	3e0 <func_80B1DBD8+0x188>
     320:	00001025 	move	v0,zero
     324:	91290000 	lbu	t1,0(t1)
     328:	55200028 	bnezl	t1,3cc <func_80B1DBD8+0x174>
     32c:	8fb80024 	lw	t8,36(sp)
     330:	0c000000 	jal	0 <EnTorch2_Init>
     334:	00000000 	nop
     338:	3c0140e0 	lui	at,0x40e0
     33c:	44818000 	mtc1	at,$f16
     340:	24010001 	li	at,1
     344:	46100482 	mul.s	$f18,$f0,$f16
     348:	4600910d 	trunc.w.s	$f4,$f18
     34c:	44022000 	mfc1	v0,$f4
     350:	00000000 	nop
     354:	10410009 	beq	v0,at,37c <func_80B1DBD8+0x124>
     358:	24010002 	li	at,2
     35c:	10410011 	beq	v0,at,3a4 <func_80B1DBD8+0x14c>
     360:	24010005 	li	at,5
     364:	10410005 	beq	v0,at,37c <func_80B1DBD8+0x124>
     368:	24010006 	li	at,6
     36c:	1041000d 	beq	v0,at,3a4 <func_80B1DBD8+0x14c>
     370:	00000000 	nop
     374:	10000015 	b	3cc <func_80B1DBD8+0x174>
     378:	8fb80024 	lw	t8,36(sp)
     37c:	3c020000 	lui	v0,0x0
     380:	24420000 	addiu	v0,v0,0
     384:	844b0000 	lh	t3,0(v0)
     388:	3c0142fe 	lui	at,0x42fe
     38c:	44813000 	mtc1	at,$f6
     390:	256c4000 	addiu	t4,t3,16384
     394:	a44c0000 	sh	t4,0(v0)
     398:	3c010000 	lui	at,0x0
     39c:	1000000a 	b	3c8 <func_80B1DBD8+0x170>
     3a0:	e4260000 	swc1	$f6,0(at)
     3a4:	3c020000 	lui	v0,0x0
     3a8:	24420000 	addiu	v0,v0,0
     3ac:	844d0000 	lh	t5,0(v0)
     3b0:	3c0142fe 	lui	at,0x42fe
     3b4:	44814000 	mtc1	at,$f8
     3b8:	25aec000 	addiu	t6,t5,-16384
     3bc:	a44e0000 	sh	t6,0(v0)
     3c0:	3c010000 	lui	at,0x0
     3c4:	e4280000 	swc1	$f8,0(at)
     3c8:	8fb80024 	lw	t8,36(sp)
     3cc:	240f4000 	li	t7,16384
     3d0:	24020001 	li	v0,1
     3d4:	10000002 	b	3e0 <func_80B1DBD8+0x188>
     3d8:	a70f0000 	sh	t7,0(t8)
     3dc:	00001025 	move	v0,zero
     3e0:	8fbf0014 	lw	ra,20(sp)
     3e4:	27bd0020 	addiu	sp,sp,32
     3e8:	03e00008 	jr	ra
     3ec:	00000000 	nop

000003f0 <func_80B1DD70>:
     3f0:	84c2008a 	lh	v0,138(a2)
     3f4:	34018000 	li	at,0x8000
     3f8:	240f0001 	li	t7,1
     3fc:	00417021 	addu	t6,v0,at
     400:	3c010000 	lui	at,0x0
     404:	a4c200b6 	sh	v0,182(a2)
     408:	a4c20032 	sh	v0,50(a2)
     40c:	a42e0000 	sh	t6,0(at)
     410:	3c0142fe 	lui	at,0x42fe
     414:	44812000 	mtc1	at,$f4
     418:	3c010000 	lui	at,0x0
     41c:	34188000 	li	t8,0x8000
     420:	e4240000 	swc1	$f4,0(at)
     424:	3c010000 	lui	at,0x0
     428:	a02f0000 	sb	t7,0(at)
     42c:	a4b80000 	sh	t8,0(a1)
     430:	2419000a 	li	t9,10
     434:	a0990a78 	sb	t9,2680(a0)
     438:	3c010000 	lui	at,0x0
     43c:	03e00008 	jr	ra
     440:	a0200000 	sb	zero,0(at)

00000444 <EnTorch2_Update>:
     444:	27bdff80 	addiu	sp,sp,-128
     448:	afbf0024 	sw	ra,36(sp)
     44c:	afb00020 	sw	s0,32(sp)
     450:	8ca21c44 	lw	v0,7236(a1)
     454:	848f00b6 	lh	t7,182(a0)
     458:	00808025 	move	s0,a0
     45c:	844e00b6 	lh	t6,182(v0)
     460:	00a03025 	move	a2,a1
     464:	3c010000 	lui	at,0x0
     468:	01cf4023 	subu	t0,t6,t7
     46c:	00084400 	sll	t0,t0,0x10
     470:	00084403 	sra	t0,t0,0x10
     474:	00a02025 	move	a0,a1
     478:	a4200000 	sh	zero,0(at)
     47c:	00002825 	move	a1,zero
     480:	a7a8005a 	sh	t0,90(sp)
     484:	afa60084 	sw	a2,132(sp)
     488:	0c000000 	jal	0 <EnTorch2_Init>
     48c:	afa20078 	sw	v0,120(sp)
     490:	afa20068 	sw	v0,104(sp)
     494:	8fa40084 	lw	a0,132(sp)
     498:	0c000000 	jal	0 <EnTorch2_Init>
     49c:	02002825 	move	a1,s0
     4a0:	3c030000 	lui	v1,0x0
     4a4:	90630000 	lbu	v1,0(v1)
     4a8:	87a8005a 	lh	t0,90(sp)
     4ac:	afa2005c 	sw	v0,92(sp)
     4b0:	1060000d 	beqz	v1,4e8 <EnTorch2_Update+0xa4>
     4b4:	24010001 	li	at,1
     4b8:	10610069 	beq	v1,at,660 <EnTorch2_Update+0x21c>
     4bc:	24010002 	li	at,2
     4c0:	106103ec 	beq	v1,at,1474 <EnTorch2_Update+0x1030>
     4c4:	24010003 	li	at,3
     4c8:	10610358 	beq	v1,at,122c <EnTorch2_Update+0xde8>
     4cc:	26180024 	addiu	t8,s0,36
     4d0:	8fb90084 	lw	t9,132(sp)
     4d4:	3c010001 	lui	at,0x1
     4d8:	afb80034 	sw	t8,52(sp)
     4dc:	03215021 	addu	t2,t9,at
     4e0:	100003f9 	b	14c8 <EnTorch2_Update+0x1084>
     4e4:	afaa002c 	sw	t2,44(sp)
     4e8:	8602008a 	lh	v0,138(s0)
     4ec:	44802000 	mtc1	zero,$f4
     4f0:	44803000 	mtc1	zero,$f6
     4f4:	a6020032 	sh	v0,50(s0)
     4f8:	86040032 	lh	a0,50(s0)
     4fc:	a60200b6 	sh	v0,182(s0)
     500:	e60401cc 	swc1	$f4,460(s0)
     504:	0c000000 	jal	0 <EnTorch2_Init>
     508:	e60601d0 	swc1	$f6,464(s0)
     50c:	3c0141c8 	lui	at,0x41c8
     510:	44814000 	mtc1	at,$f8
     514:	3c010000 	lui	at,0x0
     518:	c4300000 	lwc1	$f16,0(at)
     51c:	46080282 	mul.s	$f10,$f0,$f8
     520:	86040032 	lh	a0,50(s0)
     524:	46105480 	add.s	$f18,$f10,$f16
     528:	0c000000 	jal	0 <EnTorch2_Init>
     52c:	e6120024 	swc1	$f18,36(s0)
     530:	3c0141c8 	lui	at,0x41c8
     534:	44812000 	mtc1	at,$f4
     538:	3c010000 	lui	at,0x0
     53c:	c4280000 	lwc1	$f8,0(at)
     540:	46040182 	mul.s	$f6,$f0,$f4
     544:	3c0142f0 	lui	at,0x42f0
     548:	44818000 	mtc1	at,$f16
     54c:	c6120090 	lwc1	$f18,144(s0)
     550:	02002825 	move	a1,s0
     554:	4610903e 	c.le.s	$f18,$f16
     558:	46083280 	add.s	$f10,$f6,$f8
     55c:	45010007 	bc1t	57c <EnTorch2_Update+0x138>
     560:	e60a002c 	swc1	$f10,44(s0)
     564:	0c000000 	jal	0 <EnTorch2_Init>
     568:	8fa40084 	lw	a0,132(sp)
     56c:	14400003 	bnez	v0,57c <EnTorch2_Update+0x138>
     570:	8fab005c 	lw	t3,92(sp)
     574:	51600034 	beqzl	t3,648 <EnTorch2_Update+0x204>
     578:	8fb80084 	lw	t8,132(sp)
     57c:	8fac005c 	lw	t4,92(sp)
     580:	240d0001 	li	t5,1
     584:	3c010000 	lui	at,0x0
     588:	11800029 	beqz	t4,630 <EnTorch2_Update+0x1ec>
     58c:	340f8000 	li	t7,0x8000
     590:	a02d0000 	sb	t5,0(at)
     594:	860e008a 	lh	t6,138(s0)
     598:	3c010000 	lui	at,0x0
     59c:	8fb80068 	lw	t8,104(sp)
     5a0:	a42e0000 	sh	t6,0(at)
     5a4:	3c0142fe 	lui	at,0x42fe
     5a8:	44812000 	mtc1	at,$f4
     5ac:	3c010000 	lui	at,0x0
     5b0:	3c0a0000 	lui	t2,0x0
     5b4:	e4240000 	swc1	$f4,0(at)
     5b8:	3c010000 	lui	at,0x0
     5bc:	a42f0000 	sh	t7,0(at)
     5c0:	3c010000 	lui	at,0x0
     5c4:	a0200000 	sb	zero,0(at)
     5c8:	854a0000 	lh	t2,0(t2)
     5cc:	8719013c 	lh	t9,316(t8)
     5d0:	032a2023 	subu	a0,t9,t2
     5d4:	00042400 	sll	a0,a0,0x10
     5d8:	00042403 	sra	a0,a0,0x10
     5dc:	0c000000 	jal	0 <EnTorch2_Init>
     5e0:	a7a40066 	sh	a0,102(sp)
     5e4:	3c010000 	lui	at,0x0
     5e8:	c4260000 	lwc1	$f6,0(at)
     5ec:	3c010000 	lui	at,0x0
     5f0:	87a40066 	lh	a0,102(sp)
     5f4:	46060202 	mul.s	$f8,$f0,$f6
     5f8:	4600428d 	trunc.w.s	$f10,$f8
     5fc:	440c5000 	mfc1	t4,$f10
     600:	0c000000 	jal	0 <EnTorch2_Init>
     604:	a02c0000 	sb	t4,0(at)
     608:	3c010000 	lui	at,0x0
     60c:	c4300000 	lwc1	$f16,0(at)
     610:	3c010000 	lui	at,0x0
     614:	46100482 	mul.s	$f18,$f0,$f16
     618:	4600910d 	trunc.w.s	$f4,$f18
     61c:	44032000 	mfc1	v1,$f4
     620:	00000000 	nop
     624:	00031e00 	sll	v1,v1,0x18
     628:	00031e03 	sra	v1,v1,0x18
     62c:	a0230000 	sb	v1,0(at)
     630:	0c000000 	jal	0 <EnTorch2_Init>
     634:	24040038 	li	a0,56
     638:	240e0001 	li	t6,1
     63c:	3c010000 	lui	at,0x0
     640:	a02e0000 	sb	t6,0(at)
     644:	8fb80084 	lw	t8,132(sp)
     648:	3c010001 	lui	at,0x1
     64c:	260f0024 	addiu	t7,s0,36
     650:	0301c821 	addu	t9,t8,at
     654:	afb9002c 	sw	t9,44(sp)
     658:	1000039b 	b	14c8 <EnTorch2_Update+0x1084>
     65c:	afaf0034 	sw	t7,52(sp)
     660:	44803000 	mtc1	zero,$f6
     664:	3c070000 	lui	a3,0x0
     668:	24e70000 	addiu	a3,a3,0
     66c:	e4e60000 	swc1	$f6,0(a3)
     670:	920204f5 	lbu	v0,1269(s0)
     674:	304a0080 	andi	t2,v0,0x80
     678:	15400005 	bnez	t2,690 <EnTorch2_Update+0x24c>
     67c:	304dff7f 	andi	t5,v0,0xff7f
     680:	920b0575 	lbu	t3,1397(s0)
     684:	316c0080 	andi	t4,t3,0x80
     688:	11800028 	beqz	t4,72c <EnTorch2_Update+0x2e8>
     68c:	00000000 	nop
     690:	920e0575 	lbu	t6,1397(s0)
     694:	921804f4 	lbu	t8,1268(s0)
     698:	920a0574 	lbu	t2,1396(s0)
     69c:	920c04a9 	lbu	t4,1193(s0)
     6a0:	a20d04f5 	sb	t5,1269(s0)
     6a4:	31cfff7f 	andi	t7,t6,0xff7f
     6a8:	a20f0575 	sb	t7,1397(s0)
     6ac:	37190004 	ori	t9,t8,0x4
     6b0:	354b0004 	ori	t3,t2,0x4
     6b4:	318dfffd 	andi	t5,t4,0xfffd
     6b8:	a21904f4 	sb	t9,1268(s0)
     6bc:	a20b0574 	sb	t3,1396(s0)
     6c0:	a20d04a9 	sb	t5,1193(s0)
     6c4:	3c0f0000 	lui	t7,0x0
     6c8:	81ef0000 	lb	t7,0(t7)
     6cc:	820e0842 	lb	t6,2114(s0)
     6d0:	3c180000 	lui	t8,0x0
     6d4:	3c0b0000 	lui	t3,0x0
     6d8:	11cf0008 	beq	t6,t7,6fc <EnTorch2_Update+0x2b8>
     6dc:	3c0c0000 	lui	t4,0x0
     6e0:	93180000 	lbu	t8,0(t8)
     6e4:	3c010000 	lui	at,0x0
     6e8:	27190001 	addiu	t9,t8,1
     6ec:	a0390000 	sb	t9,0(at)
     6f0:	820a0842 	lb	t2,2114(s0)
     6f4:	3c010000 	lui	at,0x0
     6f8:	a02a0000 	sb	t2,0(at)
     6fc:	856b0030 	lh	t3,48(t3)
     700:	29610050 	slti	at,t3,80
     704:	10200009 	beqz	at,72c <EnTorch2_Update+0x2e8>
     708:	00000000 	nop
     70c:	918c0000 	lbu	t4,0(t4)
     710:	3c010000 	lui	at,0x0
     714:	240d0032 	li	t5,50
     718:	11800004 	beqz	t4,72c <EnTorch2_Update+0x2e8>
     71c:	00000000 	nop
     720:	a0200000 	sb	zero,0(at)
     724:	3c010000 	lui	at,0x0
     728:	a02d0000 	sb	t5,0(at)
     72c:	3c0e0000 	lui	t6,0x0
     730:	91ce0000 	lbu	t6,0(t6)
     734:	51c00013 	beqzl	t6,784 <EnTorch2_Update+0x340>
     738:	82180a78 	lb	t8,2680(s0)
     73c:	820f0843 	lb	t7,2115(s0)
     740:	3c010001 	lui	at,0x1
     744:	8fa40084 	lw	a0,132(sp)
     748:	11e0000d 	beqz	t7,780 <EnTorch2_Update+0x33c>
     74c:	34211e60 	ori	at,at,0x1e60
     750:	00812821 	addu	a1,a0,at
     754:	afa50038 	sw	a1,56(sp)
     758:	260604e4 	addiu	a2,s0,1252
     75c:	0c000000 	jal	0 <EnTorch2_Init>
     760:	a7a8005a 	sh	t0,90(sp)
     764:	8fa40084 	lw	a0,132(sp)
     768:	8fa50038 	lw	a1,56(sp)
     76c:	0c000000 	jal	0 <EnTorch2_Init>
     770:	26060564 	addiu	a2,s0,1380
     774:	3c070000 	lui	a3,0x0
     778:	24e70000 	addiu	a3,a3,0
     77c:	87a8005a 	lh	t0,90(sp)
     780:	82180a78 	lb	t8,2680(s0)
     784:	3c190000 	lui	t9,0x0
     788:	3c0c0000 	lui	t4,0x0
     78c:	0701000a 	bgez	t8,7b8 <EnTorch2_Update+0x374>
     790:	00000000 	nop
     794:	93390000 	lbu	t9,0(t9)
     798:	24010003 	li	at,3
     79c:	13210006 	beq	t9,at,7b8 <EnTorch2_Update+0x374>
     7a0:	00000000 	nop
     7a4:	920204a9 	lbu	v0,1193(s0)
     7a8:	304a0002 	andi	t2,v0,0x2
     7ac:	11400002 	beqz	t2,7b8 <EnTorch2_Update+0x374>
     7b0:	304bfffd 	andi	t3,v0,0xfffd
     7b4:	a20b04a9 	sb	t3,1193(s0)
     7b8:	918c0000 	lbu	t4,0(t4)
     7bc:	3c0142fe 	lui	at,0x42fe
     7c0:	8fad005c 	lw	t5,92(sp)
     7c4:	11800004 	beqz	t4,7d8 <EnTorch2_Update+0x394>
     7c8:	00000000 	nop
     7cc:	44814000 	mtc1	at,$f8
     7d0:	10000266 	b	116c <EnTorch2_Update+0xd28>
     7d4:	e4e80000 	swc1	$f8,0(a3)
     7d8:	11a0000e 	beqz	t5,814 <EnTorch2_Update+0x3d0>
     7dc:	3c190000 	lui	t9,0x0
     7e0:	240e0001 	li	t6,1
     7e4:	3c010000 	lui	at,0x0
     7e8:	a02e0000 	sb	t6,0(at)
     7ec:	860f008a 	lh	t7,138(s0)
     7f0:	3c010000 	lui	at,0x0
     7f4:	34188000 	li	t8,0x8000
     7f8:	a42f0000 	sh	t7,0(at)
     7fc:	3c0142fe 	lui	at,0x42fe
     800:	44815000 	mtc1	at,$f10
     804:	3c010000 	lui	at,0x0
     808:	e4ea0000 	swc1	$f10,0(a3)
     80c:	10000257 	b	116c <EnTorch2_Update+0xd28>
     810:	a4380000 	sh	t8,0(at)
     814:	93390000 	lbu	t9,0(t9)
     818:	3c040000 	lui	a0,0x0
     81c:	8fa90078 	lw	t1,120(sp)
     820:	1720021b 	bnez	t9,1090 <EnTorch2_Update+0xc4c>
     824:	24840000 	addiu	a0,a0,0
     828:	812a0843 	lb	t2,2115(t1)
     82c:	3c01c040 	lui	at,0xc040
     830:	55400008 	bnezl	t2,854 <EnTorch2_Update+0x410>
     834:	812b0842 	lb	t3,2114(t1)
     838:	44818000 	mtc1	at,$f16
     83c:	c5320060 	lwc1	$f18,96(t1)
     840:	4612803c 	c.lt.s	$f16,$f18
     844:	00000000 	nop
     848:	45000024 	bc1f	8dc <EnTorch2_Update+0x498>
     84c:	00000000 	nop
     850:	812b0842 	lb	t3,2114(t1)
     854:	24010011 	li	at,17
     858:	3c040000 	lui	a0,0x0
     85c:	1561001f 	bne	t3,at,8dc <EnTorch2_Update+0x498>
     860:	24840000 	addiu	a0,a0,0
     864:	8603008a 	lh	v1,138(s0)
     868:	3c0d0001 	lui	t5,0x1
     86c:	3c060000 	lui	a2,0x0
     870:	a60300b6 	sh	v1,182(s0)
     874:	a6030032 	sh	v1,50(s0)
     878:	8fac0084 	lw	t4,132(sp)
     87c:	3c010000 	lui	at,0x0
     880:	2419000f 	li	t9,15
     884:	01ac6821 	addu	t5,t5,t4
     888:	8dad1de4 	lw	t5,7652(t5)
     88c:	246f4000 	addiu	t7,v1,16384
     890:	2478c000 	addiu	t8,v1,-16384
     894:	31ae0001 	andi	t6,t5,0x1
     898:	11c00004 	beqz	t6,8ac <EnTorch2_Update+0x468>
     89c:	00000000 	nop
     8a0:	3c010000 	lui	at,0x0
     8a4:	10000002 	b	8b0 <EnTorch2_Update+0x46c>
     8a8:	a42f0000 	sh	t7,0(at)
     8ac:	a4380000 	sh	t8,0(at)
     8b0:	3c0142fe 	lui	at,0x42fe
     8b4:	44812000 	mtc1	at,$f4
     8b8:	94c60000 	lhu	a2,0(a2)
     8bc:	3c010000 	lui	at,0x0
     8c0:	e4e40000 	swc1	$f4,0(a3)
     8c4:	a0390000 	sb	t9,0(at)
     8c8:	a0800000 	sb	zero,0(a0)
     8cc:	3c010000 	lui	at,0x0
     8d0:	34c68000 	ori	a2,a2,0x8000
     8d4:	100001ec 	b	1088 <EnTorch2_Update+0xc44>
     8d8:	a4260000 	sh	a2,0(at)
     8dc:	3c0a0000 	lui	t2,0x0
     8e0:	914a0000 	lbu	t2,0(t2)
     8e4:	11400072 	beqz	t2,ab0 <EnTorch2_Update+0x66c>
     8e8:	00000000 	nop
     8ec:	44803000 	mtc1	zero,$f6
     8f0:	00000000 	nop
     8f4:	e4e60000 	swc1	$f6,0(a3)
     8f8:	852400b6 	lh	a0,182(t1)
     8fc:	912b0692 	lbu	t3,1682(t1)
     900:	2484fc18 	addiu	a0,a0,-1000
     904:	00042400 	sll	a0,a0,0x10
     908:	356c0004 	ori	t4,t3,0x4
     90c:	a12c0692 	sb	t4,1682(t1)
     910:	0c000000 	jal	0 <EnTorch2_Init>
     914:	00042403 	sra	a0,a0,0x10
     918:	3c014234 	lui	at,0x4234
     91c:	44814000 	mtc1	at,$f8
     920:	8fad0078 	lw	t5,120(sp)
     924:	44802000 	mtc1	zero,$f4
     928:	46080282 	mul.s	$f10,$f0,$f8
     92c:	c5b00024 	lwc1	$f16,36(t5)
     930:	26040024 	addiu	a0,s0,36
     934:	3c063f80 	lui	a2,0x3f80
     938:	3c0740a0 	lui	a3,0x40a0
     93c:	e7a40010 	swc1	$f4,16(sp)
     940:	46105480 	add.s	$f18,$f10,$f16
     944:	44059000 	mfc1	a1,$f18
     948:	0c000000 	jal	0 <EnTorch2_Init>
     94c:	00000000 	nop
     950:	8fae0078 	lw	t6,120(sp)
     954:	85c400b6 	lh	a0,182(t6)
     958:	2484fc18 	addiu	a0,a0,-1000
     95c:	00042400 	sll	a0,a0,0x10
     960:	0c000000 	jal	0 <EnTorch2_Init>
     964:	00042403 	sra	a0,a0,0x10
     968:	3c014234 	lui	at,0x4234
     96c:	44813000 	mtc1	at,$f6
     970:	8faf0078 	lw	t7,120(sp)
     974:	44809000 	mtc1	zero,$f18
     978:	46060202 	mul.s	$f8,$f0,$f6
     97c:	c5ea002c 	lwc1	$f10,44(t7)
     980:	2604002c 	addiu	a0,s0,44
     984:	3c063f80 	lui	a2,0x3f80
     988:	3c0740a0 	lui	a3,0x40a0
     98c:	e7b20010 	swc1	$f18,16(sp)
     990:	460a4400 	add.s	$f16,$f8,$f10
     994:	44058000 	mfc1	a1,$f16
     998:	0c000000 	jal	0 <EnTorch2_Init>
     99c:	00000000 	nop
     9a0:	3c030000 	lui	v1,0x0
     9a4:	24630000 	addiu	v1,v1,0
     9a8:	90780000 	lbu	t8,0(v1)
     9ac:	340c8000 	li	t4,0x8000
     9b0:	2719ffff 	addiu	t9,t8,-1
     9b4:	332200ff 	andi	v0,t9,0xff
     9b8:	10400008 	beqz	v0,9dc <EnTorch2_Update+0x598>
     9bc:	a0790000 	sb	t9,0(v1)
     9c0:	8fa70078 	lw	a3,120(sp)
     9c4:	80ea0a78 	lb	t2,2680(a3)
     9c8:	19400020 	blez	t2,a4c <EnTorch2_Update+0x608>
     9cc:	00000000 	nop
     9d0:	820b0843 	lb	t3,2115(s0)
     9d4:	1560001d 	bnez	t3,a4c <EnTorch2_Update+0x608>
     9d8:	00000000 	nop
     9dc:	8602008a 	lh	v0,138(s0)
     9e0:	8fa70078 	lw	a3,120(sp)
     9e4:	3c010000 	lui	at,0x0
     9e8:	a6020032 	sh	v0,50(s0)
     9ec:	a60200b6 	sh	v0,182(s0)
     9f0:	a42c0000 	sh	t4,0(at)
     9f4:	90ed0692 	lbu	t5,1682(a3)
     9f8:	3c0142fe 	lui	at,0x42fe
     9fc:	44812000 	mtc1	at,$f4
     a00:	31aefffb 	andi	t6,t5,0xfffb
     a04:	3c010000 	lui	at,0x0
     a08:	a0ee0692 	sb	t6,1682(a3)
     a0c:	e4240000 	swc1	$f4,0(at)
     a10:	3c014040 	lui	at,0x4040
     a14:	44813000 	mtc1	at,$f6
     a18:	34018000 	li	at,0x8000
     a1c:	e4e601cc 	swc1	$f6,460(a3)
     a20:	860f008a 	lh	t7,138(s0)
     a24:	01e1c021 	addu	t8,t7,at
     a28:	3c010000 	lui	at,0x0
     a2c:	a4380000 	sh	t8,0(at)
     a30:	3c010000 	lui	at,0x0
     a34:	a0200000 	sb	zero,0(at)
     a38:	a0600000 	sb	zero,0(v1)
     a3c:	8e190004 	lw	t9,4(s0)
     a40:	372a0001 	ori	t2,t9,0x1
     a44:	10000190 	b	1088 <EnTorch2_Update+0xc44>
     a48:	ae0a0004 	sw	t2,4(s0)
     a4c:	3c0b0000 	lui	t3,0x0
     a50:	916b0000 	lbu	t3,0(t3)
     a54:	24010001 	li	at,1
     a58:	1561018b 	bne	t3,at,1088 <EnTorch2_Update+0xc44>
     a5c:	28410010 	slti	at,v0,16
     a60:	1020000c 	beqz	at,a94 <EnTorch2_Update+0x650>
     a64:	00401825 	move	v1,v0
     a68:	3c050000 	lui	a1,0x0
     a6c:	24a50000 	addiu	a1,a1,0
     a70:	8fa40084 	lw	a0,132(sp)
     a74:	0c000000 	jal	0 <EnTorch2_Init>
     a78:	02003025 	move	a2,s0
     a7c:	3c0c0000 	lui	t4,0x0
     a80:	918c0000 	lbu	t4,0(t4)
     a84:	3c010000 	lui	at,0x0
     a88:	258d0001 	addiu	t5,t4,1
     a8c:	1000017e 	b	1088 <EnTorch2_Update+0xc44>
     a90:	a02d0000 	sb	t5,0(at)
     a94:	24010013 	li	at,19
     a98:	1461017b 	bne	v1,at,1088 <EnTorch2_Update+0xc44>
     a9c:	260400e4 	addiu	a0,s0,228
     aa0:	0c000000 	jal	0 <EnTorch2_Init>
     aa4:	24056814 	li	a1,26644
     aa8:	10000177 	b	1088 <EnTorch2_Update+0xc44>
     aac:	00000000 	nop
     ab0:	3c030000 	lui	v1,0x0
     ab4:	24630000 	addiu	v1,v1,0
     ab8:	8c620000 	lw	v0,0(v1)
     abc:	02002825 	move	a1,s0
     ac0:	24077fff 	li	a3,32767
     ac4:	10400006 	beqz	v0,ae0 <EnTorch2_Update+0x69c>
     ac8:	240f7fff 	li	t7,32767
     acc:	244effff 	addiu	t6,v0,-1
     ad0:	ac6e0000 	sw	t6,0(v1)
     ad4:	24060010 	li	a2,16
     ad8:	3c010000 	lui	at,0x0
     adc:	a4260000 	sh	a2,0(at)
     ae0:	afaf0010 	sw	t7,16(sp)
     ae4:	86180032 	lh	t8,50(s0)
     ae8:	a7a8005a 	sh	t0,90(sp)
     aec:	8fa40084 	lw	a0,132(sp)
     af0:	3c0642f0 	lui	a2,0x42f0
     af4:	0c000000 	jal	0 <EnTorch2_Init>
     af8:	afb80014 	sw	t8,20(sp)
     afc:	1040009b 	beqz	v0,d6c <EnTorch2_Update+0x928>
     b00:	87a8005a 	lh	t0,90(sp)
     b04:	8fa70078 	lw	a3,120(sp)
     b08:	2403000c 	li	v1,12
     b0c:	3c0142b4 	lui	at,0x42b4
     b10:	80e20842 	lb	v0,2114(a3)
     b14:	24184000 	li	t8,16384
     b18:	5462004f 	bnel	v1,v0,c58 <EnTorch2_Update+0x814>
     b1c:	860d008a 	lh	t5,138(s0)
     b20:	c6000090 	lwc1	$f0,144(s0)
     b24:	44814000 	mtc1	at,$f8
     b28:	00000000 	nop
     b2c:	4608003c 	c.lt.s	$f0,$f8
     b30:	00000000 	nop
     b34:	45020048 	bc1fl	c58 <EnTorch2_Update+0x814>
     b38:	860d008a 	lh	t5,138(s0)
     b3c:	82190843 	lb	t9,2115(s0)
     b40:	3c0a0000 	lui	t2,0x0
     b44:	1720003c 	bnez	t9,c38 <EnTorch2_Update+0x7f4>
     b48:	00000000 	nop
     b4c:	914a0000 	lbu	t2,0(t2)
     b50:	15400039 	bnez	t2,c38 <EnTorch2_Update+0x7f4>
     b54:	00000000 	nop
     b58:	80eb0a78 	lb	t3,2680(a3)
     b5c:	15600036 	bnez	t3,c38 <EnTorch2_Update+0x7f4>
     b60:	00000000 	nop
     b64:	14620034 	bne	v1,v0,c38 <EnTorch2_Update+0x7f4>
     b68:	3c0142aa 	lui	at,0x42aa
     b6c:	44815000 	mtc1	at,$f10
     b70:	8fa40084 	lw	a0,132(sp)
     b74:	460a003e 	c.le.s	$f0,$f10
     b78:	00000000 	nop
     b7c:	4500002e 	bc1f	c38 <EnTorch2_Update+0x7f4>
     b80:	00000000 	nop
     b84:	0c000000 	jal	0 <EnTorch2_Init>
     b88:	02002825 	move	a1,s0
     b8c:	1040002a 	beqz	v0,c38 <EnTorch2_Update+0x7f4>
     b90:	3c030000 	lui	v1,0x0
     b94:	44808000 	mtc1	zero,$f16
     b98:	3c010000 	lui	at,0x0
     b9c:	8fad0078 	lw	t5,120(sp)
     ba0:	e4300000 	swc1	$f16,0(at)
     ba4:	3c010000 	lui	at,0x0
     ba8:	240c0001 	li	t4,1
     bac:	a02c0000 	sb	t4,0(at)
     bb0:	91ae0692 	lbu	t6,1682(t5)
     bb4:	2401fffe 	li	at,-2
     bb8:	24630000 	addiu	v1,v1,0
     bbc:	35cf0004 	ori	t7,t6,0x4
     bc0:	a1af0692 	sb	t7,1682(t5)
     bc4:	8e180004 	lw	t8,4(s0)
     bc8:	240a001b 	li	t2,27
     bcc:	44809000 	mtc1	zero,$f18
     bd0:	0301c824 	and	t9,t8,at
     bd4:	ae190004 	sw	t9,4(s0)
     bd8:	8fab0078 	lw	t3,120(sp)
     bdc:	a06a0000 	sb	t2,0(v1)
     be0:	44802000 	mtc1	zero,$f4
     be4:	a1600843 	sb	zero,2115(t3)
     be8:	8fac0078 	lw	t4,120(sp)
     bec:	240efff9 	li	t6,-7
     bf0:	3c014000 	lui	at,0x4000
     bf4:	e5920838 	swc1	$f18,2104(t4)
     bf8:	a20e0a78 	sb	t6,2680(s0)
     bfc:	e6040838 	swc1	$f4,2104(s0)
     c00:	8faf0078 	lw	t7,120(sp)
     c04:	44813000 	mtc1	at,$f6
     c08:	00000000 	nop
     c0c:	e5e601cc 	swc1	$f6,460(t7)
     c10:	8fa50078 	lw	a1,120(sp)
     c14:	8fa40084 	lw	a0,132(sp)
     c18:	0c000000 	jal	0 <EnTorch2_Init>
     c1c:	24a501b4 	addiu	a1,a1,436
     c20:	3c010000 	lui	at,0x0
     c24:	ac200000 	sw	zero,0(at)
     c28:	3c010000 	lui	at,0x0
     c2c:	34068000 	li	a2,0x8000
     c30:	10000006 	b	c4c <EnTorch2_Update+0x808>
     c34:	a4260000 	sh	a2,0(at)
     c38:	3c050000 	lui	a1,0x0
     c3c:	24a50000 	addiu	a1,a1,0
     c40:	02002025 	move	a0,s0
     c44:	0c000000 	jal	0 <EnTorch2_Init>
     c48:	02003025 	move	a2,s0
     c4c:	1000010e 	b	1088 <EnTorch2_Update+0xc44>
     c50:	00000000 	nop
     c54:	860d008a 	lh	t5,138(s0)
     c58:	3c030000 	lui	v1,0x0
     c5c:	24630000 	addiu	v1,v1,0
     c60:	3c010000 	lui	at,0x0
     c64:	a46d0000 	sh	t5,0(v1)
     c68:	a4380000 	sh	t8,0(at)
     c6c:	80e20842 	lb	v0,2114(a3)
     c70:	28410004 	slti	at,v0,4
     c74:	50200006 	beqzl	at,c90 <EnTorch2_Update+0x84c>
     c78:	28410008 	slti	at,v0,8
     c7c:	44804000 	mtc1	zero,$f8
     c80:	3c010000 	lui	at,0x0
     c84:	1000002a 	b	d30 <EnTorch2_Update+0x8ec>
     c88:	e4280000 	swc1	$f8,0(at)
     c8c:	28410008 	slti	at,v0,8
     c90:	10200008 	beqz	at,cb4 <EnTorch2_Update+0x870>
     c94:	3c0142fe 	lui	at,0x42fe
     c98:	44815000 	mtc1	at,$f10
     c9c:	3c010000 	lui	at,0x0
     ca0:	e42a0000 	swc1	$f10,0(at)
     ca4:	84790000 	lh	t9,0(v1)
     ca8:	272a4000 	addiu	t2,t9,16384
     cac:	10000020 	b	d30 <EnTorch2_Update+0x8ec>
     cb0:	a46a0000 	sh	t2,0(v1)
     cb4:	2841000c 	slti	at,v0,12
     cb8:	10200008 	beqz	at,cdc <EnTorch2_Update+0x898>
     cbc:	3c0142fe 	lui	at,0x42fe
     cc0:	44818000 	mtc1	at,$f16
     cc4:	3c010000 	lui	at,0x0
     cc8:	e4300000 	swc1	$f16,0(at)
     ccc:	846b0000 	lh	t3,0(v1)
     cd0:	256cc000 	addiu	t4,t3,-16384
     cd4:	10000016 	b	d30 <EnTorch2_Update+0x8ec>
     cd8:	a46c0000 	sh	t4,0(v1)
     cdc:	28410018 	slti	at,v0,24
     ce0:	10200004 	beqz	at,cf4 <EnTorch2_Update+0x8b0>
     ce4:	24060010 	li	a2,16
     ce8:	3c010000 	lui	at,0x0
     cec:	10000010 	b	d30 <EnTorch2_Update+0x8ec>
     cf0:	a4260000 	sh	a2,0(at)
     cf4:	2841001c 	slti	at,v0,28
     cf8:	10200008 	beqz	at,d1c <EnTorch2_Update+0x8d8>
     cfc:	02002025 	move	a0,s0
     d00:	3c050000 	lui	a1,0x0
     d04:	24a50000 	addiu	a1,a1,0
     d08:	02002025 	move	a0,s0
     d0c:	0c000000 	jal	0 <EnTorch2_Init>
     d10:	02003025 	move	a2,s0
     d14:	10000006 	b	d30 <EnTorch2_Update+0x8ec>
     d18:	8fa70078 	lw	a3,120(sp)
     d1c:	3c050000 	lui	a1,0x0
     d20:	24a50000 	addiu	a1,a1,0
     d24:	0c000000 	jal	0 <EnTorch2_Init>
     d28:	02003025 	move	a2,s0
     d2c:	8fa70078 	lw	a3,120(sp)
     d30:	3c060000 	lui	a2,0x0
     d34:	94c60000 	lhu	a2,0(a2)
     d38:	30ce8010 	andi	t6,a2,0x8010
     d3c:	15c000d2 	bnez	t6,1088 <EnTorch2_Update+0xc44>
     d40:	00000000 	nop
     d44:	820f0843 	lb	t7,2115(s0)
     d48:	15e000cf 	bnez	t7,1088 <EnTorch2_Update+0xc44>
     d4c:	00000000 	nop
     d50:	80ed0843 	lb	t5,2115(a3)
     d54:	24180001 	li	t8,1
     d58:	3c010000 	lui	at,0x0
     d5c:	11a000ca 	beqz	t5,1088 <EnTorch2_Update+0xc44>
     d60:	00000000 	nop
     d64:	100000c8 	b	1088 <EnTorch2_Update+0xc44>
     d68:	a0380000 	sb	t8,0(at)
     d6c:	8619008a 	lh	t9,138(s0)
     d70:	3c010000 	lui	at,0x0
     d74:	a4390000 	sh	t9,0(at)
     d78:	3c0142b4 	lui	at,0x42b4
     d7c:	44819000 	mtc1	at,$f18
     d80:	c6000090 	lwc1	$f0,144(s0)
     d84:	3c01428c 	lui	at,0x428c
     d88:	4612003e 	c.le.s	$f0,$f18
     d8c:	00000000 	nop
     d90:	4502001c 	bc1fl	e04 <EnTorch2_Update+0x9c0>
     d94:	3c01428c 	lui	at,0x428c
     d98:	44812000 	mtc1	at,$f4
     d9c:	00000000 	nop
     da0:	4600203c 	c.lt.s	$f4,$f0
     da4:	00000000 	nop
     da8:	45020016 	bc1fl	e04 <EnTorch2_Update+0x9c0>
     dac:	3c01428c 	lui	at,0x428c
     db0:	05000003 	bltz	t0,dc0 <EnTorch2_Update+0x97c>
     db4:	00081823 	negu	v1,t0
     db8:	10000001 	b	dc0 <EnTorch2_Update+0x97c>
     dbc:	01001825 	move	v1,t0
     dc0:	28617800 	slti	at,v1,30720
     dc4:	5420000f 	bnezl	at,e04 <EnTorch2_Update+0x9c0>
     dc8:	3c01428c 	lui	at,0x428c
     dcc:	920a010c 	lbu	t2,268(s0)
     dd0:	8fab0078 	lw	t3,120(sp)
     dd4:	8fa40084 	lw	a0,132(sp)
     dd8:	15400004 	bnez	t2,dec <EnTorch2_Update+0x9a8>
     ddc:	3c050000 	lui	a1,0x0
     de0:	8d6c067c 	lw	t4,1660(t3)
     de4:	000c7240 	sll	t6,t4,0x9
     de8:	05c00005 	bltz	t6,e00 <EnTorch2_Update+0x9bc>
     dec:	24a50000 	addiu	a1,a1,0
     df0:	0c000000 	jal	0 <EnTorch2_Init>
     df4:	02003025 	move	a2,s0
     df8:	100000a3 	b	1088 <EnTorch2_Update+0xc44>
     dfc:	00000000 	nop
     e00:	3c01428c 	lui	at,0x428c
     e04:	44813000 	mtc1	at,$f6
     e08:	3c0142a0 	lui	at,0x42a0
     e0c:	4606003e 	c.le.s	$f0,$f6
     e10:	00000000 	nop
     e14:	4503000d 	bc1tl	e4c <EnTorch2_Update+0xa08>
     e18:	82180843 	lb	t8,2115(s0)
     e1c:	44814000 	mtc1	at,$f8
     e20:	44805000 	mtc1	zero,$f10
     e24:	8faf0078 	lw	t7,120(sp)
     e28:	460a4400 	add.s	$f16,$f8,$f10
     e2c:	4610003e 	c.le.s	$f0,$f16
     e30:	00000000 	nop
     e34:	4502001b 	bc1fl	ea4 <EnTorch2_Update+0xa60>
     e38:	3c014248 	lui	at,0x4248
     e3c:	81ed0843 	lb	t5,2115(t7)
     e40:	51a00018 	beqzl	t5,ea4 <EnTorch2_Update+0xa60>
     e44:	3c014248 	lui	at,0x4248
     e48:	82180843 	lb	t8,2115(s0)
     e4c:	3c050000 	lui	a1,0x0
     e50:	24a50000 	addiu	a1,a1,0
     e54:	17000012 	bnez	t8,ea0 <EnTorch2_Update+0xa5c>
     e58:	8fa40084 	lw	a0,132(sp)
     e5c:	0c000000 	jal	0 <EnTorch2_Init>
     e60:	02003025 	move	a2,s0
     e64:	14400088 	bnez	v0,1088 <EnTorch2_Update+0xc44>
     e68:	00000000 	nop
     e6c:	82190843 	lb	t9,2115(s0)
     e70:	3c0a0000 	lui	t2,0x0
     e74:	17200084 	bnez	t9,1088 <EnTorch2_Update+0xc44>
     e78:	00000000 	nop
     e7c:	914a0000 	lbu	t2,0(t2)
     e80:	3c050000 	lui	a1,0x0
     e84:	24a50000 	addiu	a1,a1,0
     e88:	1540007f 	bnez	t2,1088 <EnTorch2_Update+0xc44>
     e8c:	02002025 	move	a0,s0
     e90:	0c000000 	jal	0 <EnTorch2_Init>
     e94:	02003025 	move	a2,s0
     e98:	1000007b 	b	1088 <EnTorch2_Update+0xc44>
     e9c:	00000000 	nop
     ea0:	3c014248 	lui	at,0x4248
     ea4:	44819000 	mtc1	at,$f18
     ea8:	44802000 	mtc1	zero,$f4
     eac:	3c0142c8 	lui	at,0x42c8
     eb0:	46049180 	add.s	$f6,$f18,$f4
     eb4:	4606003e 	c.le.s	$f0,$f6
     eb8:	00000000 	nop
     ebc:	45020019 	bc1fl	f24 <EnTorch2_Update+0xae0>
     ec0:	44815000 	mtc1	at,$f10
     ec4:	3c0142fe 	lui	at,0x42fe
     ec8:	44814000 	mtc1	at,$f8
     ecc:	3c010000 	lui	at,0x0
     ed0:	3c040000 	lui	a0,0x0
     ed4:	e4280000 	swc1	$f8,0(at)
     ed8:	860b008a 	lh	t3,138(s0)
     edc:	3c010000 	lui	at,0x0
     ee0:	8fae0078 	lw	t6,120(sp)
     ee4:	a42b0000 	sh	t3,0(at)
     ee8:	920c010c 	lbu	t4,268(s0)
     eec:	24060001 	li	a2,1
     ef0:	24072328 	li	a3,9000
     ef4:	15800064 	bnez	t4,1088 <EnTorch2_Update+0xc44>
     ef8:	00000000 	nop
     efc:	85c500b6 	lh	a1,182(t6)
     f00:	afa00010 	sw	zero,16(sp)
     f04:	24840000 	addiu	a0,a0,0
     f08:	24a57fff 	addiu	a1,a1,32767
     f0c:	00052c00 	sll	a1,a1,0x10
     f10:	0c000000 	jal	0 <EnTorch2_Init>
     f14:	00052c03 	sra	a1,a1,0x10
     f18:	1000005b 	b	1088 <EnTorch2_Update+0xc44>
     f1c:	00000000 	nop
     f20:	44815000 	mtc1	at,$f10
     f24:	44808000 	mtc1	zero,$f16
     f28:	8faf0078 	lw	t7,120(sp)
     f2c:	46105480 	add.s	$f18,$f10,$f16
     f30:	4600903c 	c.lt.s	$f18,$f0
     f34:	00000000 	nop
     f38:	4500002b 	bc1f	fe8 <EnTorch2_Update+0xba4>
     f3c:	00000000 	nop
     f40:	81ed0843 	lb	t5,2115(t7)
     f44:	51a0000e 	beqzl	t5,f80 <EnTorch2_Update+0xb3c>
     f48:	3c0142fe 	lui	at,0x42fe
     f4c:	81e20842 	lb	v0,2114(t7)
     f50:	28410018 	slti	at,v0,24
     f54:	14200009 	bnez	at,f7c <EnTorch2_Update+0xb38>
     f58:	2841001c 	slti	at,v0,28
     f5c:	10200007 	beqz	at,f7c <EnTorch2_Update+0xb38>
     f60:	3c01438c 	lui	at,0x438c
     f64:	44812000 	mtc1	at,$f4
     f68:	3c050000 	lui	a1,0x0
     f6c:	24a50000 	addiu	a1,a1,0
     f70:	4600203e 	c.le.s	$f4,$f0
     f74:	02002025 	move	a0,s0
     f78:	45000017 	bc1f	fd8 <EnTorch2_Update+0xb94>
     f7c:	3c0142fe 	lui	at,0x42fe
     f80:	44813000 	mtc1	at,$f6
     f84:	3c010000 	lui	at,0x0
     f88:	3c040000 	lui	a0,0x0
     f8c:	e4260000 	swc1	$f6,0(at)
     f90:	8618008a 	lh	t8,138(s0)
     f94:	3c010000 	lui	at,0x0
     f98:	8faa0078 	lw	t2,120(sp)
     f9c:	a4380000 	sh	t8,0(at)
     fa0:	9219010c 	lbu	t9,268(s0)
     fa4:	24060001 	li	a2,1
     fa8:	24072328 	li	a3,9000
     fac:	17200036 	bnez	t9,1088 <EnTorch2_Update+0xc44>
     fb0:	00000000 	nop
     fb4:	854500b6 	lh	a1,182(t2)
     fb8:	afa00010 	sw	zero,16(sp)
     fbc:	24840000 	addiu	a0,a0,0
     fc0:	24a57fff 	addiu	a1,a1,32767
     fc4:	00052c00 	sll	a1,a1,0x10
     fc8:	0c000000 	jal	0 <EnTorch2_Init>
     fcc:	00052c03 	sra	a1,a1,0x10
     fd0:	1000002d 	b	1088 <EnTorch2_Update+0xc44>
     fd4:	00000000 	nop
     fd8:	0c000000 	jal	0 <EnTorch2_Init>
     fdc:	02003025 	move	a2,s0
     fe0:	10000029 	b	1088 <EnTorch2_Update+0xc44>
     fe4:	00000000 	nop
     fe8:	05000003 	bltz	t0,ff8 <EnTorch2_Update+0xbb4>
     fec:	00081823 	negu	v1,t0
     ff0:	10000001 	b	ff8 <EnTorch2_Update+0xbb4>
     ff4:	01001825 	move	v1,t0
     ff8:	28617800 	slti	at,v1,30720
     ffc:	10200007 	beqz	at,101c <EnTorch2_Update+0xbd8>
    1000:	8fa40084 	lw	a0,132(sp)
    1004:	05000003 	bltz	t0,1014 <EnTorch2_Update+0xbd0>
    1008:	00081023 	negu	v0,t0
    100c:	10000001 	b	1014 <EnTorch2_Update+0xbd0>
    1010:	01001025 	move	v0,t0
    1014:	28413000 	slti	at,v0,12288
    1018:	10200006 	beqz	at,1034 <EnTorch2_Update+0xbf0>
    101c:	3c050000 	lui	a1,0x0
    1020:	24a50000 	addiu	a1,a1,0
    1024:	0c000000 	jal	0 <EnTorch2_Init>
    1028:	02003025 	move	a2,s0
    102c:	14400016 	bnez	v0,1088 <EnTorch2_Update+0xc44>
    1030:	00000000 	nop
    1034:	860b008a 	lh	t3,138(s0)
    1038:	3c010000 	lui	at,0x0
    103c:	3c040000 	lui	a0,0x0
    1040:	a42b0000 	sh	t3,0(at)
    1044:	3c0142fe 	lui	at,0x42fe
    1048:	44814000 	mtc1	at,$f8
    104c:	3c010000 	lui	at,0x0
    1050:	8fae0078 	lw	t6,120(sp)
    1054:	e4280000 	swc1	$f8,0(at)
    1058:	920c010c 	lbu	t4,268(s0)
    105c:	24060001 	li	a2,1
    1060:	24072328 	li	a3,9000
    1064:	15800008 	bnez	t4,1088 <EnTorch2_Update+0xc44>
    1068:	00000000 	nop
    106c:	85c500b6 	lh	a1,182(t6)
    1070:	afa00010 	sw	zero,16(sp)
    1074:	24840000 	addiu	a0,a0,0
    1078:	24a57fff 	addiu	a1,a1,32767
    107c:	00052c00 	sll	a1,a1,0x10
    1080:	0c000000 	jal	0 <EnTorch2_Init>
    1084:	00052c03 	sra	a1,a1,0x10
    1088:	10000039 	b	1170 <EnTorch2_Update+0xd2c>
    108c:	8fb90068 	lw	t9,104(sp)
    1090:	90820000 	lbu	v0,0(a0)
    1094:	3c0d0000 	lui	t5,0x0
    1098:	10400011 	beqz	v0,10e0 <EnTorch2_Update+0xc9c>
    109c:	00000000 	nop
    10a0:	91ad0000 	lbu	t5,0(t5)
    10a4:	240100ff 	li	at,255
    10a8:	15a1000d 	bne	t5,at,10e0 <EnTorch2_Update+0xc9c>
    10ac:	00000000 	nop
    10b0:	44805000 	mtc1	zero,$f10
    10b4:	c6100060 	lwc1	$f16,96(s0)
    10b8:	3c060000 	lui	a2,0x0
    10bc:	4610503c 	c.lt.s	$f10,$f16
    10c0:	00000000 	nop
    10c4:	45000006 	bc1f	10e0 <EnTorch2_Update+0xc9c>
    10c8:	00000000 	nop
    10cc:	94c60000 	lhu	a2,0(a2)
    10d0:	3c010000 	lui	at,0x0
    10d4:	34c64000 	ori	a2,a2,0x4000
    10d8:	10000024 	b	116c <EnTorch2_Update+0xd28>
    10dc:	a4260000 	sh	a2,0(at)
    10e0:	54400023 	bnezl	v0,1170 <EnTorch2_Update+0xd2c>
    10e4:	8fb90068 	lw	t9,104(sp)
    10e8:	960f0088 	lhu	t7,136(s0)
    10ec:	3c0e0000 	lui	t6,0x0
    10f0:	31f80001 	andi	t8,t7,0x1
    10f4:	1300001d 	beqz	t8,116c <EnTorch2_Update+0xd28>
    10f8:	240f0001 	li	t7,1
    10fc:	8602008a 	lh	v0,138(s0)
    1100:	3c190000 	lui	t9,0x0
    1104:	3c010000 	lui	at,0x0
    1108:	a60200b6 	sh	v0,182(s0)
    110c:	a6020032 	sh	v0,50(s0)
    1110:	93390000 	lbu	t9,0(t9)
    1114:	a4220000 	sh	v0,0(at)
    1118:	240100ff 	li	at,255
    111c:	1321000c 	beq	t9,at,1150 <EnTorch2_Update+0xd0c>
    1120:	3c0a0000 	lui	t2,0x0
    1124:	854a0000 	lh	t2,0(t2)
    1128:	34018000 	li	at,0x8000
    112c:	240c0001 	li	t4,1
    1130:	01415821 	addu	t3,t2,at
    1134:	3c010000 	lui	at,0x0
    1138:	a42b0000 	sh	t3,0(at)
    113c:	3c0142fe 	lui	at,0x42fe
    1140:	44819000 	mtc1	at,$f18
    1144:	3c010000 	lui	at,0x0
    1148:	e4f20000 	swc1	$f18,0(a3)
    114c:	a02c0000 	sb	t4,0(at)
    1150:	95ce0000 	lhu	t6,0(t6)
    1154:	3c010000 	lui	at,0x0
    1158:	2418000a 	li	t8,10
    115c:	35cd8000 	ori	t5,t6,0x8000
    1160:	a42d0000 	sh	t5,0(at)
    1164:	a08f0000 	sb	t7,0(a0)
    1168:	a2180a78 	sb	t8,2680(s0)
    116c:	8fb90068 	lw	t9,104(sp)
    1170:	3c0b0000 	lui	t3,0x0
    1174:	856b0000 	lh	t3,0(t3)
    1178:	872a013c 	lh	t2,316(t9)
    117c:	8fae0084 	lw	t6,132(sp)
    1180:	3c010001 	lui	at,0x1
    1184:	014b2023 	subu	a0,t2,t3
    1188:	00042400 	sll	a0,a0,0x10
    118c:	00042403 	sra	a0,a0,0x10
    1190:	260c0024 	addiu	t4,s0,36
    1194:	01c16821 	addu	t5,t6,at
    1198:	afad002c 	sw	t5,44(sp)
    119c:	afac0034 	sw	t4,52(sp)
    11a0:	0c000000 	jal	0 <EnTorch2_Init>
    11a4:	a7a40066 	sh	a0,102(sp)
    11a8:	3c010000 	lui	at,0x0
    11ac:	c4240000 	lwc1	$f4,0(at)
    11b0:	3c010000 	lui	at,0x0
    11b4:	87a40066 	lh	a0,102(sp)
    11b8:	46040182 	mul.s	$f6,$f0,$f4
    11bc:	4600320d 	trunc.w.s	$f8,$f6
    11c0:	44184000 	mfc1	t8,$f8
    11c4:	0c000000 	jal	0 <EnTorch2_Init>
    11c8:	a0380000 	sb	t8,0(at)
    11cc:	3c010000 	lui	at,0x0
    11d0:	c42a0000 	lwc1	$f10,0(at)
    11d4:	3c020000 	lui	v0,0x0
    11d8:	90420000 	lbu	v0,0(v0)
    11dc:	460a0402 	mul.s	$f16,$f0,$f10
    11e0:	3c010000 	lui	at,0x0
    11e4:	8faa002c 	lw	t2,44(sp)
    11e8:	4600848d 	trunc.w.s	$f18,$f16
    11ec:	44039000 	mfc1	v1,$f18
    11f0:	00000000 	nop
    11f4:	00031e00 	sll	v1,v1,0x18
    11f8:	00031e03 	sra	v1,v1,0x18
    11fc:	a0230000 	sb	v1,0(at)
    1200:	240100ff 	li	at,255
    1204:	104100b0 	beq	v0,at,14c8 <EnTorch2_Update+0x1084>
    1208:	00000000 	nop
    120c:	8d4b1de4 	lw	t3,7652(t2)
    1210:	244e0001 	addiu	t6,v0,1
    1214:	3c010000 	lui	at,0x0
    1218:	316c0007 	andi	t4,t3,0x7
    121c:	158000aa 	bnez	t4,14c8 <EnTorch2_Update+0x1084>
    1220:	00000000 	nop
    1224:	100000a8 	b	14c8 <EnTorch2_Update+0x1084>
    1228:	a02e0000 	sb	t6,0(at)
    122c:	a2000843 	sb	zero,2115(s0)
    1230:	3c010000 	lui	at,0x0
    1234:	a0200000 	sb	zero,0(at)
    1238:	a0200000 	sb	zero,0(at)
    123c:	820d0a78 	lb	t5,2680(s0)
    1240:	3c014320 	lui	at,0x4320
    1244:	59a00085 	blezl	t5,145c <EnTorch2_Update+0x1018>
    1248:	8fad0084 	lw	t5,132(sp)
    124c:	c6060080 	lwc1	$f6,128(s0)
    1250:	44814000 	mtc1	at,$f8
    1254:	c6040028 	lwc1	$f4,40(s0)
    1258:	3c010000 	lui	at,0x0
    125c:	46083281 	sub.s	$f10,$f6,$f8
    1260:	460a203c 	c.lt.s	$f4,$f10
    1264:	00000000 	nop
    1268:	4502007c 	bc1fl	145c <EnTorch2_Update+0x1018>
    126c:	8fad0084 	lw	t5,132(sp)
    1270:	920f0692 	lbu	t7,1682(s0)
    1274:	8e190004 	lw	t9,4(s0)
    1278:	44808000 	mtc1	zero,$f16
    127c:	31f8fffe 	andi	t8,t7,0xfffe
    1280:	372a0001 	ori	t2,t9,0x1
    1284:	a2180692 	sb	t8,1682(s0)
    1288:	ae0a0004 	sw	t2,4(s0)
    128c:	a2000a78 	sb	zero,2680(s0)
    1290:	e6100060 	swc1	$f16,96(s0)
    1294:	c4320000 	lwc1	$f18,0(at)
    1298:	3c014220 	lui	at,0x4220
    129c:	44813000 	mtc1	at,$f6
    12a0:	00000000 	nop
    12a4:	46069200 	add.s	$f8,$f18,$f6
    12a8:	e6080028 	swc1	$f8,40(s0)
    12ac:	8fab0078 	lw	t3,120(sp)
    12b0:	0c000000 	jal	0 <EnTorch2_Init>
    12b4:	856400b6 	lh	a0,182(t3)
    12b8:	3c01c2f0 	lui	at,0xc2f0
    12bc:	44812000 	mtc1	at,$f4
    12c0:	8fa20078 	lw	v0,120(sp)
    12c4:	46040282 	mul.s	$f10,$f0,$f4
    12c8:	c4500024 	lwc1	$f16,36(v0)
    12cc:	46105480 	add.s	$f18,$f10,$f16
    12d0:	e6120024 	swc1	$f18,36(s0)
    12d4:	0c000000 	jal	0 <EnTorch2_Init>
    12d8:	844400b6 	lh	a0,182(v0)
    12dc:	3c01c2f0 	lui	at,0xc2f0
    12e0:	44813000 	mtc1	at,$f6
    12e4:	8fac0078 	lw	t4,120(sp)
    12e8:	3c050000 	lui	a1,0x0
    12ec:	46060202 	mul.s	$f8,$f0,$f6
    12f0:	c584002c 	lwc1	$f4,44(t4)
    12f4:	24a50000 	addiu	a1,a1,0
    12f8:	02002025 	move	a0,s0
    12fc:	46044280 	add.s	$f10,$f8,$f4
    1300:	0c000000 	jal	0 <EnTorch2_Init>
    1304:	e60a002c 	swc1	$f10,44(s0)
    1308:	3c014448 	lui	at,0x4448
    130c:	44818000 	mtc1	at,$f16
    1310:	00000000 	nop
    1314:	4600803c 	c.lt.s	$f16,$f0
    1318:	00000000 	nop
    131c:	45020035 	bc1fl	13f4 <EnTorch2_Update+0xfb0>
    1320:	c6120080 	lwc1	$f18,128(s0)
    1324:	0c000000 	jal	0 <EnTorch2_Init>
    1328:	00000000 	nop
    132c:	3c0141a0 	lui	at,0x41a0
    1330:	44819000 	mtc1	at,$f18
    1334:	3c01457a 	lui	at,0x457a
    1338:	44816000 	mtc1	at,$f12
    133c:	46120182 	mul.s	$f6,$f0,$f18
    1340:	0c000000 	jal	0 <EnTorch2_Init>
    1344:	e7a60050 	swc1	$f6,80(sp)
    1348:	4600020d 	trunc.w.s	$f8,$f0
    134c:	8fa50078 	lw	a1,120(sp)
    1350:	3c040000 	lui	a0,0x0
    1354:	24840000 	addiu	a0,a0,0
    1358:	440d4000 	mfc1	t5,$f8
    135c:	24a50024 	addiu	a1,a1,36
    1360:	0c000000 	jal	0 <EnTorch2_Init>
    1364:	a7ad004e 	sh	t5,78(sp)
    1368:	a6020032 	sh	v0,50(s0)
    136c:	a60200b6 	sh	v0,182(s0)
    1370:	87b8004e 	lh	t8,78(sp)
    1374:	860f0032 	lh	t7,50(s0)
    1378:	01f82021 	addu	a0,t7,t8
    137c:	00042400 	sll	a0,a0,0x10
    1380:	0c000000 	jal	0 <EnTorch2_Init>
    1384:	00042403 	sra	a0,a0,0x10
    1388:	3c0141c8 	lui	at,0x41c8
    138c:	44812000 	mtc1	at,$f4
    1390:	c7aa0050 	lwc1	$f10,80(sp)
    1394:	3c010000 	lui	at,0x0
    1398:	c4320000 	lwc1	$f18,0(at)
    139c:	460a2080 	add.s	$f2,$f4,$f10
    13a0:	86190032 	lh	t9,50(s0)
    13a4:	46020402 	mul.s	$f16,$f0,$f2
    13a8:	46128180 	add.s	$f6,$f16,$f18
    13ac:	e6060024 	swc1	$f6,36(s0)
    13b0:	87aa004e 	lh	t2,78(sp)
    13b4:	e7a20038 	swc1	$f2,56(sp)
    13b8:	032a2021 	addu	a0,t9,t2
    13bc:	00042400 	sll	a0,a0,0x10
    13c0:	0c000000 	jal	0 <EnTorch2_Init>
    13c4:	00042403 	sra	a0,a0,0x10
    13c8:	c7a20038 	lwc1	$f2,56(sp)
    13cc:	3c010000 	lui	at,0x0
    13d0:	c4240000 	lwc1	$f4,0(at)
    13d4:	46020202 	mul.s	$f8,$f0,$f2
    13d8:	3c010000 	lui	at,0x0
    13dc:	46044280 	add.s	$f10,$f8,$f4
    13e0:	e60a002c 	swc1	$f10,44(s0)
    13e4:	c4300000 	lwc1	$f16,0(at)
    13e8:	10000003 	b	13f8 <EnTorch2_Update+0xfb4>
    13ec:	e6100028 	swc1	$f16,40(s0)
    13f0:	c6120080 	lwc1	$f18,128(s0)
    13f4:	e6120028 	swc1	$f18,40(s0)
    13f8:	26040008 	addiu	a0,s0,8
    13fc:	0c000000 	jal	0 <EnTorch2_Init>
    1400:	26050024 	addiu	a1,s0,36
    1404:	8fa50084 	lw	a1,132(sp)
    1408:	3c190001 	lui	t9,0x1
    140c:	02002025 	move	a0,s0
    1410:	0325c821 	addu	t9,t9,a1
    1414:	8f391d54 	lw	t9,7508(t9)
    1418:	0320f809 	jalr	t9
    141c:	00000000 	nop
    1420:	44803000 	mtc1	zero,$f6
    1424:	240b0001 	li	t3,1
    1428:	3c010000 	lui	at,0x0
    142c:	a02b0000 	sb	t3,0(at)
    1430:	3c0c0000 	lui	t4,0x0
    1434:	918c0000 	lbu	t4,0(t4)
    1438:	3c010000 	lui	at,0x0
    143c:	e4260000 	swc1	$f6,0(at)
    1440:	240100ff 	li	at,255
    1444:	11810004 	beq	t4,at,1458 <EnTorch2_Update+0x1014>
    1448:	3c010000 	lui	at,0x0
    144c:	a0200000 	sb	zero,0(at)
    1450:	3c010000 	lui	at,0x0
    1454:	a0200000 	sb	zero,0(at)
    1458:	8fad0084 	lw	t5,132(sp)
    145c:	3c010001 	lui	at,0x1
    1460:	260e0024 	addiu	t6,s0,36
    1464:	01a17821 	addu	t7,t5,at
    1468:	afaf002c 	sw	t7,44(sp)
    146c:	10000016 	b	14c8 <EnTorch2_Update+0x1084>
    1470:	afae0034 	sw	t6,52(sp)
    1474:	3c030000 	lui	v1,0x0
    1478:	24630000 	addiu	v1,v1,0
    147c:	90620000 	lbu	v0,0(v1)
    1480:	02002025 	move	a0,s0
    1484:	2442fff3 	addiu	v0,v0,-13
    1488:	5c400006 	bgtzl	v0,14a4 <EnTorch2_Update+0x1060>
    148c:	a0620000 	sb	v0,0(v1)
    1490:	0c000000 	jal	0 <EnTorch2_Init>
    1494:	a0600000 	sb	zero,0(v1)
    1498:	1000025f 	b	1e18 <EnTorch2_Update+0x19d4>
    149c:	8fbf0024 	lw	ra,36(sp)
    14a0:	a0620000 	sb	v0,0(v1)
    14a4:	921800c8 	lbu	t8,200(s0)
    14a8:	3c010001 	lui	at,0x1
    14ac:	26190024 	addiu	t9,s0,36
    14b0:	270afff3 	addiu	t2,t8,-13
    14b4:	a20a00c8 	sb	t2,200(s0)
    14b8:	8fab0084 	lw	t3,132(sp)
    14bc:	afb90034 	sw	t9,52(sp)
    14c0:	01616021 	addu	t4,t3,at
    14c4:	afac002c 	sw	t4,44(sp)
    14c8:	3c0e0000 	lui	t6,0x0
    14cc:	85ce13f0 	lh	t6,5104(t6)
    14d0:	24010003 	li	at,3
    14d4:	3c180000 	lui	t8,0x0
    14d8:	15c10013 	bne	t6,at,1528 <EnTorch2_Update+0x10e4>
    14dc:	3c050000 	lui	a1,0x0
    14e0:	8fa70078 	lw	a3,120(sp)
    14e4:	80ed0843 	lb	t5,2115(a3)
    14e8:	51a00008 	beqzl	t5,150c <EnTorch2_Update+0x10c8>
    14ec:	44804000 	mtc1	zero,$f8
    14f0:	80e20842 	lb	v0,2114(a3)
    14f4:	28410018 	slti	at,v0,24
    14f8:	14200003 	bnez	at,1508 <EnTorch2_Update+0x10c4>
    14fc:	2841001c 	slti	at,v0,28
    1500:	14200009 	bnez	at,1528 <EnTorch2_Update+0x10e4>
    1504:	00000000 	nop
    1508:	44804000 	mtc1	zero,$f8
    150c:	3c010000 	lui	at,0x0
    1510:	24060010 	li	a2,16
    1514:	e4280000 	swc1	$f8,0(at)
    1518:	3c010000 	lui	at,0x0
    151c:	a0200000 	sb	zero,0(at)
    1520:	a0200000 	sb	zero,0(at)
    1524:	a4260000 	sh	a2,0(at)
    1528:	93180000 	lbu	t8,0(t8)
    152c:	3c0f0000 	lui	t7,0x0
    1530:	24010001 	li	at,1
    1534:	1701000f 	bne	t8,at,1574 <EnTorch2_Update+0x1130>
    1538:	95ef0000 	lhu	t7,0(t7)
    153c:	3c010000 	lui	at,0x0
    1540:	c4240000 	lwc1	$f4,0(at)
    1544:	c60a0090 	lwc1	$f10,144(s0)
    1548:	3c0a0000 	lui	t2,0x0
    154c:	4604503e 	c.le.s	$f10,$f4
    1550:	00000000 	nop
    1554:	45000007 	bc1f	1574 <EnTorch2_Update+0x1130>
    1558:	00000000 	nop
    155c:	914a0000 	lbu	t2,0(t2)
    1560:	35e62000 	ori	a2,t7,0x2000
    1564:	3c010000 	lui	at,0x0
    1568:	11400002 	beqz	t2,1574 <EnTorch2_Update+0x1130>
    156c:	00000000 	nop
    1570:	a4260000 	sh	a2,0(at)
    1574:	3c060000 	lui	a2,0x0
    1578:	94c60000 	lhu	a2,0(a2)
    157c:	94a50000 	lhu	a1,0(a1)
    1580:	3c010000 	lui	at,0x0
    1584:	30cb0010 	andi	t3,a2,0x10
    1588:	00a61826 	xor	v1,a1,a2
    158c:	00c3c824 	and	t9,a2,v1
    1590:	a4390000 	sh	t9,0(at)
    1594:	1160000f 	beqz	t3,15d4 <EnTorch2_Update+0x1190>
    1598:	00c01025 	move	v0,a2
    159c:	3c0c0000 	lui	t4,0x0
    15a0:	918c0000 	lbu	t4,0(t4)
    15a4:	3c010000 	lui	at,0x0
    15a8:	a4260000 	sh	a2,0(at)
    15ac:	15800007 	bnez	t4,15cc <EnTorch2_Update+0x1188>
    15b0:	38460010 	xori	a2,v0,0x10
    15b4:	820e0843 	lb	t6,2115(s0)
    15b8:	55c00005 	bnezl	t6,15d0 <EnTorch2_Update+0x118c>
    15bc:	30c6ffff 	andi	a2,a2,0xffff
    15c0:	24060010 	li	a2,16
    15c4:	10000003 	b	15d4 <EnTorch2_Update+0x1190>
    15c8:	24020010 	li	v0,16
    15cc:	30c6ffff 	andi	a2,a2,0xffff
    15d0:	00c01025 	move	v0,a2
    15d4:	00a36824 	and	t5,a1,v1
    15d8:	3c010000 	lui	at,0x0
    15dc:	a42d0000 	sh	t5,0(at)
    15e0:	3c010000 	lui	at,0x0
    15e4:	30583fff 	andi	t8,v0,0x3fff
    15e8:	3c040000 	lui	a0,0x0
    15ec:	a4380000 	sh	t8,0(at)
    15f0:	24840000 	addiu	a0,a0,0
    15f4:	0c000000 	jal	0 <EnTorch2_Init>
    15f8:	a4260000 	sh	a2,0(at)
    15fc:	3c0f0000 	lui	t7,0x0
    1600:	3c0a0000 	lui	t2,0x0
    1604:	814a0000 	lb	t2,0(t2)
    1608:	81ef0000 	lb	t7,0(t7)
    160c:	3c0e0000 	lui	t6,0x0
    1610:	81ce0000 	lb	t6,0(t6)
    1614:	01ea6023 	subu	t4,t7,t2
    1618:	3c010000 	lui	at,0x0
    161c:	01cc6821 	addu	t5,t6,t4
    1620:	a02d0000 	sb	t5,0(at)
    1624:	3c0f0000 	lui	t7,0x0
    1628:	3c180000 	lui	t8,0x0
    162c:	83180000 	lb	t8,0(t8)
    1630:	81ef0000 	lb	t7,0(t7)
    1634:	3c0e0000 	lui	t6,0x0
    1638:	81ce0000 	lb	t6,0(t6)
    163c:	030f5823 	subu	t3,t8,t7
    1640:	01cb6021 	addu	t4,t6,t3
    1644:	a02c0000 	sb	t4,0(at)
    1648:	920d00af 	lbu	t5,175(s0)
    164c:	15a0000c 	bnez	t5,1680 <EnTorch2_Update+0x123c>
    1650:	3c180000 	lui	t8,0x0
    1654:	93180000 	lbu	t8,0(t8)
    1658:	240f0018 	li	t7,24
    165c:	24190001 	li	t9,1
    1660:	53000008 	beqzl	t8,1684 <EnTorch2_Update+0x1240>
    1664:	820e0a78 	lb	t6,2680(s0)
    1668:	a20f0444 	sb	t7,1092(s0)
    166c:	8faa0078 	lw	t2,120(sp)
    1670:	a619046a 	sh	t9,1130(s0)
    1674:	3c010000 	lui	at,0x0
    1678:	ae0a0448 	sw	t2,1096(s0)
    167c:	a0200000 	sb	zero,0(at)
    1680:	820e0a78 	lb	t6,2680(s0)
    1684:	55c0008d 	bnezl	t6,18bc <EnTorch2_Update+0x1478>
    1688:	920f0114 	lbu	t7,276(s0)
    168c:	920b00af 	lbu	t3,175(s0)
    1690:	5160008a 	beqzl	t3,18bc <EnTorch2_Update+0x1478>
    1694:	920f0114 	lbu	t7,276(s0)
    1698:	920c04a9 	lbu	t4,1193(s0)
    169c:	318d0002 	andi	t5,t4,0x2
    16a0:	51a00086 	beqzl	t5,18bc <EnTorch2_Update+0x1478>
    16a4:	920f0114 	lbu	t7,276(s0)
    16a8:	8e18067c 	lw	t8,1660(s0)
    16ac:	00187940 	sll	t7,t8,0x5
    16b0:	05e20082 	bltzl	t7,18bc <EnTorch2_Update+0x1478>
    16b4:	920f0114 	lbu	t7,276(s0)
    16b8:	920a04f4 	lbu	t2,1268(s0)
    16bc:	31590002 	andi	t9,t2,0x2
    16c0:	5720007e 	bnezl	t9,18bc <EnTorch2_Update+0x1478>
    16c4:	920f0114 	lbu	t7,276(s0)
    16c8:	920e0574 	lbu	t6,1396(s0)
    16cc:	31cb0002 	andi	t3,t6,0x2
    16d0:	5560007a 	bnezl	t3,18bc <EnTorch2_Update+0x1478>
    16d4:	920f0114 	lbu	t7,276(s0)
    16d8:	0c000000 	jal	0 <EnTorch2_Init>
    16dc:	02002025 	move	a0,s0
    16e0:	14400026 	bnez	v0,177c <EnTorch2_Update+0x1338>
    16e4:	00000000 	nop
    16e8:	0c000000 	jal	0 <EnTorch2_Init>
    16ec:	00000000 	nop
    16f0:	8e0c0004 	lw	t4,4(s0)
    16f4:	3c0140c0 	lui	at,0x40c0
    16f8:	44810000 	mtc1	at,$f0
    16fc:	860f008a 	lh	t7,138(s0)
    1700:	2401fffa 	li	at,-6
    1704:	921800b0 	lbu	t8,176(s0)
    1708:	01816824 	and	t5,t4,at
    170c:	34018000 	li	at,0x8000
    1710:	3c020000 	lui	v0,0x0
    1714:	24030002 	li	v1,2
    1718:	01e15021 	addu	t2,t7,at
    171c:	24420000 	addiu	v0,v0,0
    1720:	ae0d0004 	sw	t5,4(s0)
    1724:	a20308a1 	sb	v1,2209(s0)
    1728:	a60a08a2 	sh	t2,2210(s0)
    172c:	e60008a4 	swc1	$f0,2212(s0)
    1730:	e60008a8 	swc1	$f0,2216(s0)
    1734:	a21808a0 	sb	t8,2208(s0)
    1738:	90590000 	lbu	t9,0(v0)
    173c:	3c010000 	lui	at,0x0
    1740:	8fa40084 	lw	a0,132(sp)
    1744:	272e0001 	addiu	t6,t9,1
    1748:	a04e0000 	sb	t6,0(v0)
    174c:	a0230000 	sb	v1,0(at)
    1750:	0c000000 	jal	0 <EnTorch2_Init>
    1754:	02002825 	move	a1,s0
    1758:	8fa40084 	lw	a0,132(sp)
    175c:	02002825 	move	a1,s0
    1760:	8fa60034 	lw	a2,52(sp)
    1764:	0c000000 	jal	0 <EnTorch2_Init>
    1768:	240700c0 	li	a3,192
    176c:	920b0692 	lbu	t3,1682(s0)
    1770:	316cfffb 	andi	t4,t3,0xfffb
    1774:	1000004e 	b	18b0 <EnTorch2_Update+0x146c>
    1778:	a20c0692 	sb	t4,1682(s0)
    177c:	0c000000 	jal	0 <EnTorch2_Init>
    1780:	24040038 	li	a0,56
    1784:	920d00b1 	lbu	t5,177(s0)
    1788:	24010001 	li	at,1
    178c:	240c0001 	li	t4,1
    1790:	15a10017 	bne	t5,at,17f0 <EnTorch2_Update+0x13ac>
    1794:	02002025 	move	a0,s0
    1798:	3c180000 	lui	t8,0x0
    179c:	93180000 	lbu	t8,0(t8)
    17a0:	240100ff 	li	at,255
    17a4:	02002025 	move	a0,s0
    17a8:	1701000a 	bne	t8,at,17d4 <EnTorch2_Update+0x1390>
    17ac:	00002825 	move	a1,zero
    17b0:	240f0050 	li	t7,80
    17b4:	afaf0010 	sw	t7,16(sp)
    17b8:	02002025 	move	a0,s0
    17bc:	00002825 	move	a1,zero
    17c0:	240600ff 	li	a2,255
    17c4:	0c000000 	jal	0 <EnTorch2_Init>
    17c8:	00003825 	move	a3,zero
    17cc:	10000039 	b	18b4 <EnTorch2_Update+0x1470>
    17d0:	a20000b0 	sb	zero,176(s0)
    17d4:	240a0050 	li	t2,80
    17d8:	afaa0010 	sw	t2,16(sp)
    17dc:	240600ff 	li	a2,255
    17e0:	0c000000 	jal	0 <EnTorch2_Init>
    17e4:	24072000 	li	a3,8192
    17e8:	10000032 	b	18b4 <EnTorch2_Update+0x1470>
    17ec:	a20000b0 	sb	zero,176(s0)
    17f0:	8e190004 	lw	t9,4(s0)
    17f4:	3c0140c0 	lui	at,0x40c0
    17f8:	44810000 	mtc1	at,$f0
    17fc:	2401fffe 	li	at,-2
    1800:	03217024 	and	t6,t9,at
    1804:	860d008a 	lh	t5,138(s0)
    1808:	3c014100 	lui	at,0x4100
    180c:	44818000 	mtc1	at,$f16
    1810:	920b00b0 	lbu	t3,176(s0)
    1814:	34018000 	li	at,0x8000
    1818:	01a1c021 	addu	t8,t5,at
    181c:	ae0e0004 	sw	t6,4(s0)
    1820:	a20c08a1 	sb	t4,2209(s0)
    1824:	a61808a2 	sh	t8,2210(s0)
    1828:	260504b0 	addiu	a1,s0,1200
    182c:	24060001 	li	a2,1
    1830:	e60008a8 	swc1	$f0,2216(s0)
    1834:	a20b08a0 	sb	t3,2208(s0)
    1838:	0c000000 	jal	0 <EnTorch2_Init>
    183c:	e61008a4 	swc1	$f16,2212(s0)
    1840:	920f0692 	lbu	t7,1682(s0)
    1844:	3c0c0000 	lui	t4,0x0
    1848:	240b0003 	li	t3,3
    184c:	31f9fffb 	andi	t9,t7,0xfffb
    1850:	a2190692 	sb	t9,1682(s0)
    1854:	372e0001 	ori	t6,t9,0x1
    1858:	a20e0692 	sb	t6,1682(s0)
    185c:	918c0000 	lbu	t4,0(t4)
    1860:	3c010000 	lui	at,0x0
    1864:	a02b0000 	sb	t3,0(at)
    1868:	240100ff 	li	at,255
    186c:	1581000a 	bne	t4,at,1898 <EnTorch2_Update+0x1454>
    1870:	02002025 	move	a0,s0
    1874:	240d000c 	li	t5,12
    1878:	afad0010 	sw	t5,16(sp)
    187c:	02002025 	move	a0,s0
    1880:	24054000 	li	a1,16384
    1884:	240600ff 	li	a2,255
    1888:	0c000000 	jal	0 <EnTorch2_Init>
    188c:	00003825 	move	a3,zero
    1890:	10000008 	b	18b4 <EnTorch2_Update+0x1470>
    1894:	a20000b0 	sb	zero,176(s0)
    1898:	2418000c 	li	t8,12
    189c:	afb80010 	sw	t8,16(sp)
    18a0:	24054000 	li	a1,16384
    18a4:	240600ff 	li	a2,255
    18a8:	0c000000 	jal	0 <EnTorch2_Init>
    18ac:	24072000 	li	a3,8192
    18b0:	a20000b0 	sb	zero,176(s0)
    18b4:	a20008a0 	sb	zero,2208(s0)
    18b8:	920f0114 	lbu	t7,276(s0)
    18bc:	51e00008 	beqzl	t7,18e0 <EnTorch2_Update+0x149c>
    18c0:	920e0692 	lbu	t6,1682(s0)
    18c4:	960a0112 	lhu	t2,274(s0)
    18c8:	3c01fbff 	lui	at,0xfbff
    18cc:	3421ffff 	ori	at,at,0xffff
    18d0:	31594000 	andi	t9,t2,0x4000
    18d4:	53200006 	beqzl	t9,18f0 <EnTorch2_Update+0x14ac>
    18d8:	8e18067c 	lw	t8,1660(s0)
    18dc:	920e0692 	lbu	t6,1682(s0)
    18e0:	31cbfffb 	andi	t3,t6,0xfffb
    18e4:	10000011 	b	192c <EnTorch2_Update+0x14e8>
    18e8:	a20b0692 	sb	t3,1682(s0)
    18ec:	8e18067c 	lw	t8,1660(s0)
    18f0:	920c0692 	lbu	t4,1682(s0)
    18f4:	a2000a78 	sb	zero,2680(s0)
    18f8:	03017824 	and	t7,t8,at
    18fc:	358d0004 	ori	t5,t4,0x4
    1900:	a20d0692 	sb	t5,1682(s0)
    1904:	ae0f067c 	sw	t7,1660(s0)
    1908:	3c010000 	lui	at,0x0
    190c:	a0200000 	sb	zero,0(at)
    1910:	a0200000 	sb	zero,0(at)
    1914:	3c010000 	lui	at,0x0
    1918:	44809000 	mtc1	zero,$f18
    191c:	a4200000 	sh	zero,0(at)
    1920:	3c010000 	lui	at,0x0
    1924:	a4200000 	sh	zero,0(at)
    1928:	e6120838 	swc1	$f18,2104(s0)
    192c:	8faa002c 	lw	t2,44(sp)
    1930:	3c060000 	lui	a2,0x0
    1934:	8fa50084 	lw	a1,132(sp)
    1938:	8d591d40 	lw	t9,7488(t2)
    193c:	24c60000 	addiu	a2,a2,0
    1940:	02002025 	move	a0,s0
    1944:	0320f809 	jalr	t9
    1948:	00000000 	nop
    194c:	3c01c190 	lui	at,0xc190
    1950:	44813000 	mtc1	at,$f6
    1954:	c6080838 	lwc1	$f8,2104(s0)
    1958:	3c014000 	lui	at,0x4000
    195c:	46083032 	c.eq.s	$f6,$f8
    1960:	00000000 	nop
    1964:	4502007b 	bc1fl	1b54 <EnTorch2_Update+0x1710>
    1968:	8fa30078 	lw	v1,120(sp)
    196c:	44816000 	mtc1	at,$f12
    1970:	0c000000 	jal	0 <EnTorch2_Init>
    1974:	00000000 	nop
    1978:	444ef800 	cfc1	t6,$31
    197c:	24020001 	li	v0,1
    1980:	44c2f800 	ctc1	v0,$31
    1984:	3c014f00 	lui	at,0x4f00
    1988:	3c0b0000 	lui	t3,0x0
    198c:	46000124 	cvt.w.s	$f4,$f0
    1990:	4442f800 	cfc1	v0,$31
    1994:	00000000 	nop
    1998:	30420078 	andi	v0,v0,0x78
    199c:	50400013 	beqzl	v0,19ec <EnTorch2_Update+0x15a8>
    19a0:	44022000 	mfc1	v0,$f4
    19a4:	44812000 	mtc1	at,$f4
    19a8:	24020001 	li	v0,1
    19ac:	46040101 	sub.s	$f4,$f0,$f4
    19b0:	44c2f800 	ctc1	v0,$31
    19b4:	00000000 	nop
    19b8:	46002124 	cvt.w.s	$f4,$f4
    19bc:	4442f800 	cfc1	v0,$31
    19c0:	00000000 	nop
    19c4:	30420078 	andi	v0,v0,0x78
    19c8:	14400005 	bnez	v0,19e0 <EnTorch2_Update+0x159c>
    19cc:	00000000 	nop
    19d0:	44022000 	mfc1	v0,$f4
    19d4:	3c018000 	lui	at,0x8000
    19d8:	10000007 	b	19f8 <EnTorch2_Update+0x15b4>
    19dc:	00411025 	or	v0,v0,at
    19e0:	10000005 	b	19f8 <EnTorch2_Update+0x15b4>
    19e4:	2402ffff 	li	v0,-1
    19e8:	44022000 	mfc1	v0,$f4
    19ec:	00000000 	nop
    19f0:	0440fffb 	bltz	v0,19e0 <EnTorch2_Update+0x159c>
    19f4:	00000000 	nop
    19f8:	856b0030 	lh	t3,48(t3)
    19fc:	44cef800 	ctc1	t6,$31
    1a00:	24420006 	addiu	v0,v0,6
    1a04:	29610050 	slti	at,t3,80
    1a08:	10200027 	beqz	at,1aa8 <EnTorch2_Update+0x1664>
    1a0c:	304200ff 	andi	v0,v0,0xff
    1a10:	3c014000 	lui	at,0x4000
    1a14:	44816000 	mtc1	at,$f12
    1a18:	0c000000 	jal	0 <EnTorch2_Init>
    1a1c:	00000000 	nop
    1a20:	444cf800 	cfc1	t4,$31
    1a24:	24020001 	li	v0,1
    1a28:	44c2f800 	ctc1	v0,$31
    1a2c:	3c014f00 	lui	at,0x4f00
    1a30:	460002a4 	cvt.w.s	$f10,$f0
    1a34:	4442f800 	cfc1	v0,$31
    1a38:	00000000 	nop
    1a3c:	30420078 	andi	v0,v0,0x78
    1a40:	50400013 	beqzl	v0,1a90 <EnTorch2_Update+0x164c>
    1a44:	44025000 	mfc1	v0,$f10
    1a48:	44815000 	mtc1	at,$f10
    1a4c:	24020001 	li	v0,1
    1a50:	460a0281 	sub.s	$f10,$f0,$f10
    1a54:	44c2f800 	ctc1	v0,$31
    1a58:	00000000 	nop
    1a5c:	460052a4 	cvt.w.s	$f10,$f10
    1a60:	4442f800 	cfc1	v0,$31
    1a64:	00000000 	nop
    1a68:	30420078 	andi	v0,v0,0x78
    1a6c:	14400005 	bnez	v0,1a84 <EnTorch2_Update+0x1640>
    1a70:	00000000 	nop
    1a74:	44025000 	mfc1	v0,$f10
    1a78:	3c018000 	lui	at,0x8000
    1a7c:	10000007 	b	1a9c <EnTorch2_Update+0x1658>
    1a80:	00411025 	or	v0,v0,at
    1a84:	10000005 	b	1a9c <EnTorch2_Update+0x1658>
    1a88:	2402ffff 	li	v0,-1
    1a8c:	44025000 	mfc1	v0,$f10
    1a90:	00000000 	nop
    1a94:	0440fffb 	bltz	v0,1a84 <EnTorch2_Update+0x1640>
    1a98:	00000000 	nop
    1a9c:	44ccf800 	ctc1	t4,$31
    1aa0:	24420003 	addiu	v0,v0,3
    1aa4:	304200ff 	andi	v0,v0,0xff
    1aa8:	3c0142a0 	lui	at,0x42a0
    1aac:	44818000 	mtc1	at,$f16
    1ab0:	c6000090 	lwc1	$f0,144(s0)
    1ab4:	3c01428c 	lui	at,0x428c
    1ab8:	3c0d0000 	lui	t5,0x0
    1abc:	4600803c 	c.lt.s	$f16,$f0
    1ac0:	00000000 	nop
    1ac4:	45020006 	bc1fl	1ae0 <EnTorch2_Update+0x169c>
    1ac8:	44813000 	mtc1	at,$f6
    1acc:	3c010000 	lui	at,0x0
    1ad0:	c4320000 	lwc1	$f18,0(at)
    1ad4:	1000000e 	b	1b10 <EnTorch2_Update+0x16cc>
    1ad8:	e6120838 	swc1	$f18,2104(s0)
    1adc:	44813000 	mtc1	at,$f6
    1ae0:	3c013f80 	lui	at,0x3f80
    1ae4:	4606003c 	c.lt.s	$f0,$f6
    1ae8:	00000000 	nop
    1aec:	45020006 	bc1fl	1b08 <EnTorch2_Update+0x16c4>
    1af0:	44812000 	mtc1	at,$f4
    1af4:	3c01bfc0 	lui	at,0xbfc0
    1af8:	44814000 	mtc1	at,$f8
    1afc:	10000004 	b	1b10 <EnTorch2_Update+0x16cc>
    1b00:	e6080838 	swc1	$f8,2104(s0)
    1b04:	44812000 	mtc1	at,$f4
    1b08:	00000000 	nop
    1b0c:	e6040838 	swc1	$f4,2104(s0)
    1b10:	91ad0000 	lbu	t5,0(t5)
    1b14:	004d082a 	slt	at,v0,t5
    1b18:	1020000d 	beqz	at,1b50 <EnTorch2_Update+0x170c>
    1b1c:	3c010000 	lui	at,0x0
    1b20:	c4300000 	lwc1	$f16,0(at)
    1b24:	c60a01d0 	lwc1	$f10,464(s0)
    1b28:	260400e4 	addiu	a0,s0,228
    1b2c:	2405083f 	li	a1,2111
    1b30:	46105482 	mul.s	$f18,$f10,$f16
    1b34:	0c000000 	jal	0 <EnTorch2_Init>
    1b38:	e61201d0 	swc1	$f18,464(s0)
    1b3c:	3c070000 	lui	a3,0x0
    1b40:	24e70000 	addiu	a3,a3,0
    1b44:	a0e00000 	sb	zero,0(a3)
    1b48:	3c010000 	lui	at,0x0
    1b4c:	a0200000 	sb	zero,0(at)
    1b50:	8fa30078 	lw	v1,120(sp)
    1b54:	3c01c190 	lui	at,0xc190
    1b58:	44813000 	mtc1	at,$f6
    1b5c:	c4680838 	lwc1	$f8,2104(v1)
    1b60:	3c070000 	lui	a3,0x0
    1b64:	3c060000 	lui	a2,0x0
    1b68:	46083032 	c.eq.s	$f6,$f8
    1b6c:	24e70000 	addiu	a3,a3,0
    1b70:	3c0142a0 	lui	at,0x42a0
    1b74:	24c60000 	addiu	a2,a2,0
    1b78:	4502001a 	bc1fl	1be4 <EnTorch2_Update+0x17a0>
    1b7c:	90c20000 	lbu	v0,0(a2)
    1b80:	c6000090 	lwc1	$f0,144(s0)
    1b84:	44812000 	mtc1	at,$f4
    1b88:	3c01428c 	lui	at,0x428c
    1b8c:	4600203c 	c.lt.s	$f4,$f0
    1b90:	00000000 	nop
    1b94:	45020006 	bc1fl	1bb0 <EnTorch2_Update+0x176c>
    1b98:	44818000 	mtc1	at,$f16
    1b9c:	3c010000 	lui	at,0x0
    1ba0:	c42a0000 	lwc1	$f10,0(at)
    1ba4:	1000000e 	b	1be0 <EnTorch2_Update+0x179c>
    1ba8:	e46a0838 	swc1	$f10,2104(v1)
    1bac:	44818000 	mtc1	at,$f16
    1bb0:	3c013f80 	lui	at,0x3f80
    1bb4:	4610003c 	c.lt.s	$f0,$f16
    1bb8:	00000000 	nop
    1bbc:	45020006 	bc1fl	1bd8 <EnTorch2_Update+0x1794>
    1bc0:	44813000 	mtc1	at,$f6
    1bc4:	3c01bfc0 	lui	at,0xbfc0
    1bc8:	44819000 	mtc1	at,$f18
    1bcc:	10000004 	b	1be0 <EnTorch2_Update+0x179c>
    1bd0:	e4720838 	swc1	$f18,2104(v1)
    1bd4:	44813000 	mtc1	at,$f6
    1bd8:	00000000 	nop
    1bdc:	e4660838 	swc1	$f6,2104(v1)
    1be0:	90c20000 	lbu	v0,0(a2)
    1be4:	24010001 	li	at,1
    1be8:	50400024 	beqzl	v0,1c7c <EnTorch2_Update+0x1838>
    1bec:	90e20000 	lbu	v0,0(a3)
    1bf0:	54410022 	bnel	v0,at,1c7c <EnTorch2_Update+0x1838>
    1bf4:	90e20000 	lbu	v0,0(a3)
    1bf8:	82180843 	lb	t8,2115(s0)
    1bfc:	240f0002 	li	t7,2
    1c00:	240a0001 	li	t2,1
    1c04:	57000004 	bnezl	t8,1c18 <EnTorch2_Update+0x17d4>
    1c08:	a0cf0000 	sb	t7,0(a2)
    1c0c:	1000001a 	b	1c78 <EnTorch2_Update+0x1834>
    1c10:	a0c00000 	sb	zero,0(a2)
    1c14:	a0cf0000 	sb	t7,0(a2)
    1c18:	a20a0843 	sb	t2,2115(s0)
    1c1c:	c46401d0 	lwc1	$f4,464(v1)
    1c20:	c46801cc 	lwc1	$f8,460(v1)
    1c24:	26190564 	addiu	t9,s0,1380
    1c28:	260e04e4 	addiu	t6,s0,1252
    1c2c:	46044281 	sub.s	$f10,$f8,$f4
    1c30:	260501b4 	addiu	a1,s0,436
    1c34:	e60a01cc 	swc1	$f10,460(s0)
    1c38:	c47001d0 	lwc1	$f16,464(v1)
    1c3c:	e61001d0 	swc1	$f16,464(s0)
    1c40:	afae0030 	sw	t6,48(sp)
    1c44:	afb90038 	sw	t9,56(sp)
    1c48:	0c000000 	jal	0 <EnTorch2_Init>
    1c4c:	8fa40084 	lw	a0,132(sp)
    1c50:	8fa40084 	lw	a0,132(sp)
    1c54:	0c000000 	jal	0 <EnTorch2_Init>
    1c58:	8fa50030 	lw	a1,48(sp)
    1c5c:	8fa40084 	lw	a0,132(sp)
    1c60:	0c000000 	jal	0 <EnTorch2_Init>
    1c64:	8fa50038 	lw	a1,56(sp)
    1c68:	3c070000 	lui	a3,0x0
    1c6c:	3c060000 	lui	a2,0x0
    1c70:	24c60000 	addiu	a2,a2,0
    1c74:	24e70000 	addiu	a3,a3,0
    1c78:	90e20000 	lbu	v0,0(a3)
    1c7c:	3c030000 	lui	v1,0x0
    1c80:	24630000 	addiu	v1,v1,0
    1c84:	10400007 	beqz	v0,1ca4 <EnTorch2_Update+0x1860>
    1c88:	244bffff 	addiu	t3,v0,-1
    1c8c:	316c00ff 	andi	t4,t3,0xff
    1c90:	15800004 	bnez	t4,1ca4 <EnTorch2_Update+0x1860>
    1c94:	a0eb0000 	sb	t3,0(a3)
    1c98:	a0c00000 	sb	zero,0(a2)
    1c9c:	3c010000 	lui	at,0x0
    1ca0:	a0200000 	sb	zero,0(at)
    1ca4:	90620000 	lbu	v0,0(v1)
    1ca8:	24010001 	li	at,1
    1cac:	240b0005 	li	t3,5
    1cb0:	1040000b 	beqz	v0,1ce0 <EnTorch2_Update+0x189c>
    1cb4:	240c0001 	li	t4,1
    1cb8:	14410002 	bne	v0,at,1cc4 <EnTorch2_Update+0x1880>
    1cbc:	240d0014 	li	t5,20
    1cc0:	a20d0a78 	sb	t5,2680(s0)
    1cc4:	82180a78 	lb	t8,2680(s0)
    1cc8:	240f0002 	li	t7,2
    1ccc:	5b000004 	blezl	t8,1ce0 <EnTorch2_Update+0x189c>
    1cd0:	a0600000 	sb	zero,0(v1)
    1cd4:	10000002 	b	1ce0 <EnTorch2_Update+0x189c>
    1cd8:	a06f0000 	sb	t7,0(v1)
    1cdc:	a0600000 	sb	zero,0(v1)
    1ce0:	820a0a78 	lb	t2,2680(s0)
    1ce4:	2419000a 	li	t9,10
    1ce8:	240e0005 	li	t6,5
    1cec:	11400004 	beqz	t2,1d00 <EnTorch2_Update+0x18bc>
    1cf0:	3c0d0000 	lui	t5,0x0
    1cf4:	a21904ac 	sb	t9,1196(s0)
    1cf8:	10000003 	b	1d08 <EnTorch2_Update+0x18c4>
    1cfc:	a20e04c4 	sb	t6,1220(s0)
    1d00:	a20b04ac 	sb	t3,1196(s0)
    1d04:	a20c04c4 	sb	t4,1220(s0)
    1d08:	91ad0000 	lbu	t5,0(t5)
    1d0c:	3c030000 	lui	v1,0x0
    1d10:	3c040000 	lui	a0,0x0
    1d14:	11a00011 	beqz	t5,1d5c <EnTorch2_Update+0x1918>
    1d18:	24630000 	addiu	v1,v1,0
    1d1c:	44809000 	mtc1	zero,$f18
    1d20:	3c054524 	lui	a1,0x4524
    1d24:	34a56000 	ori	a1,a1,0x6000
    1d28:	24840000 	addiu	a0,a0,0
    1d2c:	3c063f80 	lui	a2,0x3f80
    1d30:	3c0744fa 	lui	a3,0x44fa
    1d34:	0c000000 	jal	0 <EnTorch2_Init>
    1d38:	e7b20010 	swc1	$f18,16(sp)
    1d3c:	3c010000 	lui	at,0x0
    1d40:	c4280000 	lwc1	$f8,0(at)
    1d44:	c6060060 	lwc1	$f6,96(s0)
    1d48:	3c030000 	lui	v1,0x0
    1d4c:	24630000 	addiu	v1,v1,0
    1d50:	46083101 	sub.s	$f4,$f6,$f8
    1d54:	1000000f 	b	1d94 <EnTorch2_Update+0x1950>
    1d58:	e6040060 	swc1	$f4,96(s0)
    1d5c:	c4600000 	lwc1	$f0,0(v1)
    1d60:	44805000 	mtc1	zero,$f10
    1d64:	3c010000 	lui	at,0x0
    1d68:	46005032 	c.eq.s	$f10,$f0
    1d6c:	00000000 	nop
    1d70:	45010008 	bc1t	1d94 <EnTorch2_Update+0x1950>
    1d74:	00000000 	nop
    1d78:	c4320000 	lwc1	$f18,0(at)
    1d7c:	c6100028 	lwc1	$f16,40(s0)
    1d80:	44802000 	mtc1	zero,$f4
    1d84:	46120182 	mul.s	$f6,$f0,$f18
    1d88:	46068200 	add.s	$f8,$f16,$f6
    1d8c:	e6080028 	swc1	$f8,40(s0)
    1d90:	e4640000 	swc1	$f4,0(v1)
    1d94:	3c180000 	lui	t8,0x0
    1d98:	93180000 	lbu	t8,0(t8)
    1d9c:	3c040000 	lui	a0,0x0
    1da0:	3c010000 	lui	at,0x0
    1da4:	13000005 	beqz	t8,1dbc <EnTorch2_Update+0x1978>
    1da8:	24840000 	addiu	a0,a0,0
    1dac:	820f0a78 	lb	t7,2680(s0)
    1db0:	240a0001 	li	t2,1
    1db4:	05e10003 	bgez	t7,1dc4 <EnTorch2_Update+0x1980>
    1db8:	00000000 	nop
    1dbc:	10000003 	b	1dcc <EnTorch2_Update+0x1988>
    1dc0:	a0200000 	sb	zero,0(at)
    1dc4:	3c010000 	lui	at,0x0
    1dc8:	a02a0000 	sb	t2,0(at)
    1dcc:	90820000 	lbu	v0,0(a0)
    1dd0:	10400002 	beqz	v0,1ddc <EnTorch2_Update+0x1998>
    1dd4:	2459ffff 	addiu	t9,v0,-1
    1dd8:	a0990000 	sb	t9,0(a0)
    1ddc:	8fae0034 	lw	t6,52(sp)
    1de0:	3c0141a0 	lui	at,0x41a0
    1de4:	44819000 	mtc1	at,$f18
    1de8:	8dcc0000 	lw	t4,0(t6)
    1dec:	ae0c0038 	sw	t4,56(s0)
    1df0:	8dcb0004 	lw	t3,4(t6)
    1df4:	ae0b003c 	sw	t3,60(s0)
    1df8:	c60a003c 	lwc1	$f10,60(s0)
    1dfc:	8dcc0008 	lw	t4,8(t6)
    1e00:	46125400 	add.s	$f16,$f10,$f18
    1e04:	ae0c0040 	sw	t4,64(s0)
    1e08:	e610003c 	swc1	$f16,60(s0)
    1e0c:	c4660000 	lwc1	$f6,0(v1)
    1e10:	e60600bc 	swc1	$f6,188(s0)
    1e14:	8fbf0024 	lw	ra,36(sp)
    1e18:	8fb00020 	lw	s0,32(sp)
    1e1c:	27bd0080 	addiu	sp,sp,128
    1e20:	03e00008 	jr	ra
    1e24:	00000000 	nop

00001e28 <func_80B1F7A8>:
    1e28:	27bdffe0 	addiu	sp,sp,-32
    1e2c:	8fae0030 	lw	t6,48(sp)
    1e30:	8faf0034 	lw	t7,52(sp)
    1e34:	afbf001c 	sw	ra,28(sp)
    1e38:	afae0010 	sw	t6,16(sp)
    1e3c:	0c000000 	jal	0 <EnTorch2_Init>
    1e40:	afaf0014 	sw	t7,20(sp)
    1e44:	8fbf001c 	lw	ra,28(sp)
    1e48:	27bd0020 	addiu	sp,sp,32
    1e4c:	03e00008 	jr	ra
    1e50:	00000000 	nop

00001e54 <func_80B1F7D4>:
    1e54:	27bdffe0 	addiu	sp,sp,-32
    1e58:	8fae0030 	lw	t6,48(sp)
    1e5c:	afbf001c 	sw	ra,28(sp)
    1e60:	0c000000 	jal	0 <EnTorch2_Init>
    1e64:	afae0010 	sw	t6,16(sp)
    1e68:	8fbf001c 	lw	ra,28(sp)
    1e6c:	27bd0020 	addiu	sp,sp,32
    1e70:	03e00008 	jr	ra
    1e74:	00000000 	nop

00001e78 <EnTorch2_Draw>:
    1e78:	27bdff90 	addiu	sp,sp,-112
    1e7c:	afb20030 	sw	s2,48(sp)
    1e80:	00a09025 	move	s2,a1
    1e84:	afbf0034 	sw	ra,52(sp)
    1e88:	afb1002c 	sw	s1,44(sp)
    1e8c:	afb00028 	sw	s0,40(sp)
    1e90:	8ca50000 	lw	a1,0(a1)
    1e94:	00808825 	move	s1,a0
    1e98:	3c060000 	lui	a2,0x0
    1e9c:	24c60000 	addiu	a2,a2,0
    1ea0:	27a40050 	addiu	a0,sp,80
    1ea4:	2407041a 	li	a3,1050
    1ea8:	0c000000 	jal	0 <EnTorch2_Init>
    1eac:	00a08025 	move	s0,a1
    1eb0:	0c000000 	jal	0 <EnTorch2_Init>
    1eb4:	02402025 	move	a0,s2
    1eb8:	0c000000 	jal	0 <EnTorch2_Init>
    1ebc:	8e440000 	lw	a0,0(s2)
    1ec0:	3c040000 	lui	a0,0x0
    1ec4:	24840000 	addiu	a0,a0,0
    1ec8:	908e0000 	lbu	t6,0(a0)
    1ecc:	240100ff 	li	at,255
    1ed0:	3c19fb00 	lui	t9,0xfb00
    1ed4:	15c1002b 	bne	t6,at,1f84 <EnTorch2_Draw+0x10c>
    1ed8:	3c0cdb06 	lui	t4,0xdb06
    1edc:	8e0302c0 	lw	v1,704(s0)
    1ee0:	3c18fb00 	lui	t8,0xfb00
    1ee4:	3c01ff00 	lui	at,0xff00
    1ee8:	246f0008 	addiu	t7,v1,8
    1eec:	ae0f02c0 	sw	t7,704(s0)
    1ef0:	ac780000 	sw	t8,0(v1)
    1ef4:	90880000 	lbu	t0,0(a0)
    1ef8:	3c0bdb06 	lui	t3,0xdb06
    1efc:	3c0c0000 	lui	t4,0x0
    1f00:	01014825 	or	t1,t0,at
    1f04:	ac690004 	sw	t1,4(v1)
    1f08:	8e0302c0 	lw	v1,704(s0)
    1f0c:	258c0010 	addiu	t4,t4,16
    1f10:	356b0030 	ori	t3,t3,0x30
    1f14:	246a0008 	addiu	t2,v1,8
    1f18:	ae0a02c0 	sw	t2,704(s0)
    1f1c:	02202025 	move	a0,s1
    1f20:	02402825 	move	a1,s2
    1f24:	00003025 	move	a2,zero
    1f28:	ac6c0004 	sw	t4,4(v1)
    1f2c:	0c000000 	jal	0 <EnTorch2_Init>
    1f30:	ac6b0000 	sw	t3,0(v1)
    1f34:	02202025 	move	a0,s1
    1f38:	02402825 	move	a1,s2
    1f3c:	0c000000 	jal	0 <EnTorch2_Init>
    1f40:	00003025 	move	a2,zero
    1f44:	8e2501b8 	lw	a1,440(s1)
    1f48:	8e2601d4 	lw	a2,468(s1)
    1f4c:	922701b6 	lbu	a3,438(s1)
    1f50:	3c0d0000 	lui	t5,0x0
    1f54:	3c0e0000 	lui	t6,0x0
    1f58:	25ce0000 	addiu	t6,t6,0
    1f5c:	25ad0000 	addiu	t5,t5,0
    1f60:	afad0010 	sw	t5,16(sp)
    1f64:	afae0014 	sw	t6,20(sp)
    1f68:	afb10018 	sw	s1,24(sp)
    1f6c:	8e0f02c0 	lw	t7,704(s0)
    1f70:	02402025 	move	a0,s2
    1f74:	0c000000 	jal	0 <EnTorch2_Init>
    1f78:	afaf001c 	sw	t7,28(sp)
    1f7c:	10000028 	b	2020 <EnTorch2_Draw+0x1a8>
    1f80:	ae0202c0 	sw	v0,704(s0)
    1f84:	8e0302d0 	lw	v1,720(s0)
    1f88:	3c01ff00 	lui	at,0xff00
    1f8c:	3c0d0000 	lui	t5,0x0
    1f90:	24780008 	addiu	t8,v1,8
    1f94:	ae1802d0 	sw	t8,720(s0)
    1f98:	ac790000 	sw	t9,0(v1)
    1f9c:	90890000 	lbu	t1,0(a0)
    1fa0:	25ad0000 	addiu	t5,t5,0
    1fa4:	358c0030 	ori	t4,t4,0x30
    1fa8:	01215025 	or	t2,t1,at
    1fac:	ac6a0004 	sw	t2,4(v1)
    1fb0:	8e0302d0 	lw	v1,720(s0)
    1fb4:	02202025 	move	a0,s1
    1fb8:	02402825 	move	a1,s2
    1fbc:	246b0008 	addiu	t3,v1,8
    1fc0:	ae0b02d0 	sw	t3,720(s0)
    1fc4:	00003025 	move	a2,zero
    1fc8:	ac6d0004 	sw	t5,4(v1)
    1fcc:	0c000000 	jal	0 <EnTorch2_Init>
    1fd0:	ac6c0000 	sw	t4,0(v1)
    1fd4:	02202025 	move	a0,s1
    1fd8:	02402825 	move	a1,s2
    1fdc:	0c000000 	jal	0 <EnTorch2_Init>
    1fe0:	00003025 	move	a2,zero
    1fe4:	8e2501b8 	lw	a1,440(s1)
    1fe8:	8e2601d4 	lw	a2,468(s1)
    1fec:	922701b6 	lbu	a3,438(s1)
    1ff0:	3c0e0000 	lui	t6,0x0
    1ff4:	3c0f0000 	lui	t7,0x0
    1ff8:	25ef0000 	addiu	t7,t7,0
    1ffc:	25ce0000 	addiu	t6,t6,0
    2000:	afae0010 	sw	t6,16(sp)
    2004:	afaf0014 	sw	t7,20(sp)
    2008:	afb10018 	sw	s1,24(sp)
    200c:	8e1802d0 	lw	t8,720(s0)
    2010:	02402025 	move	a0,s2
    2014:	0c000000 	jal	0 <EnTorch2_Init>
    2018:	afb8001c 	sw	t8,28(sp)
    201c:	ae0202d0 	sw	v0,720(s0)
    2020:	3c060000 	lui	a2,0x0
    2024:	24c60000 	addiu	a2,a2,0
    2028:	27a40050 	addiu	a0,sp,80
    202c:	8e450000 	lw	a1,0(s2)
    2030:	0c000000 	jal	0 <EnTorch2_Init>
    2034:	2407045a 	li	a3,1114
    2038:	8fbf0034 	lw	ra,52(sp)
    203c:	8fb00028 	lw	s0,40(sp)
    2040:	8fb1002c 	lw	s1,44(sp)
    2044:	8fb20030 	lw	s2,48(sp)
    2048:	03e00008 	jr	ra
    204c:	27bd0070 	addiu	sp,sp,112
