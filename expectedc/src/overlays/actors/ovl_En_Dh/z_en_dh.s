
build/src/overlays/actors/ovl_En_Dh/z_en_dh.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809EAD40>:
       0:	03e00008 	jr	ra
       4:	ac850254 	sw	a1,596(a0)

00000008 <EnDh_Init>:
       8:	27bdffc8 	addiu	sp,sp,-56
       c:	afb10028 	sw	s1,40(sp)
      10:	00a08825 	move	s1,a1
      14:	afbf002c 	sw	ra,44(sp)
      18:	afb00024 	sw	s0,36(sp)
      1c:	3c050000 	lui	a1,0x0
      20:	00808025 	move	s0,a0
      24:	0c000000 	jal	0 <func_809EAD40>
      28:	24a50000 	addiu	a1,a1,0
      2c:	3c0e0000 	lui	t6,0x0
      30:	25ce0000 	addiu	t6,t6,0
      34:	ae0e0098 	sw	t6,152(s0)
      38:	3c060600 	lui	a2,0x600
      3c:	3c070600 	lui	a3,0x600
      40:	260f0190 	addiu	t7,s0,400
      44:	261801f0 	addiu	t8,s0,496
      48:	24190010 	li	t9,16
      4c:	afb90018 	sw	t9,24(sp)
      50:	afb80014 	sw	t8,20(sp)
      54:	afaf0010 	sw	t7,16(sp)
      58:	24e75880 	addiu	a3,a3,22656
      5c:	24c67e88 	addiu	a2,a2,32392
      60:	02202025 	move	a0,s1
      64:	0c000000 	jal	0 <func_809EAD40>
      68:	2605014c 	addiu	a1,s0,332
      6c:	3c060000 	lui	a2,0x0
      70:	24c60000 	addiu	a2,a2,0
      74:	260400b4 	addiu	a0,s0,180
      78:	24050000 	li	a1,0
      7c:	0c000000 	jal	0 <func_809EAD40>
      80:	3c074280 	lui	a3,0x4280
      84:	240800fe 	li	t0,254
      88:	a600001c 	sh	zero,28(s0)
      8c:	a20800ae 	sb	t0,174(s0)
      90:	3c090000 	lui	t1,0x0
      94:	8d290004 	lw	t1,4(t1)
      98:	240d00ff 	li	t5,255
      9c:	2401fffe 	li	at,-2
      a0:	15200004 	bnez	t1,b4 <EnDh_Init+0xac>
      a4:	02202025 	move	a0,s1
      a8:	240a000e 	li	t2,14
      ac:	10000003 	b	bc <EnDh_Init+0xb4>
      b0:	a20a00af 	sb	t2,175(s0)
      b4:	240b0014 	li	t3,20
      b8:	a20b00af 	sb	t3,175(s0)
      bc:	8e0e0004 	lw	t6,4(s0)
      c0:	a20d0258 	sb	t5,600(s0)
      c4:	a20d025a 	sb	t5,602(s0)
      c8:	01c17824 	and	t7,t6,at
      cc:	ae0f0004 	sw	t7,4(s0)
      d0:	26050260 	addiu	a1,s0,608
      d4:	0c000000 	jal	0 <func_809EAD40>
      d8:	afa50030 	sw	a1,48(sp)
      dc:	3c070000 	lui	a3,0x0
      e0:	8fa50030 	lw	a1,48(sp)
      e4:	24e70000 	addiu	a3,a3,0
      e8:	02202025 	move	a0,s1
      ec:	0c000000 	jal	0 <func_809EAD40>
      f0:	02003025 	move	a2,s0
      f4:	260502ac 	addiu	a1,s0,684
      f8:	afa50030 	sw	a1,48(sp)
      fc:	0c000000 	jal	0 <func_809EAD40>
     100:	02202025 	move	a0,s1
     104:	3c070000 	lui	a3,0x0
     108:	261802cc 	addiu	t8,s0,716
     10c:	8fa50030 	lw	a1,48(sp)
     110:	afb80010 	sw	t8,16(sp)
     114:	24e70000 	addiu	a3,a3,0
     118:	02202025 	move	a0,s1
     11c:	0c000000 	jal	0 <func_809EAD40>
     120:	02003025 	move	a2,s0
     124:	0c000000 	jal	0 <func_809EAD40>
     128:	02002025 	move	a0,s0
     12c:	8fbf002c 	lw	ra,44(sp)
     130:	8fb00024 	lw	s0,36(sp)
     134:	8fb10028 	lw	s1,40(sp)
     138:	03e00008 	jr	ra
     13c:	27bd0038 	addiu	sp,sp,56

00000140 <EnDh_Destroy>:
     140:	27bdffe8 	addiu	sp,sp,-24
     144:	afbf0014 	sw	ra,20(sp)
     148:	afa40018 	sw	a0,24(sp)
     14c:	0c000000 	jal	0 <func_809EAD40>
     150:	afa5001c 	sw	a1,28(sp)
     154:	8fa50018 	lw	a1,24(sp)
     158:	8fa4001c 	lw	a0,28(sp)
     15c:	0c000000 	jal	0 <func_809EAD40>
     160:	24a50260 	addiu	a1,a1,608
     164:	8fa50018 	lw	a1,24(sp)
     168:	8fa4001c 	lw	a0,28(sp)
     16c:	0c000000 	jal	0 <func_809EAD40>
     170:	24a502ac 	addiu	a1,a1,684
     174:	8fbf0014 	lw	ra,20(sp)
     178:	27bd0018 	addiu	sp,sp,24
     17c:	03e00008 	jr	ra
     180:	00000000 	nop

00000184 <func_809EAEC4>:
     184:	27bdff98 	addiu	sp,sp,-104
     188:	3c0f0000 	lui	t7,0x0
     18c:	afbf002c 	sw	ra,44(sp)
     190:	afa40068 	sw	a0,104(sp)
     194:	afa5006c 	sw	a1,108(sp)
     198:	afa60070 	sw	a2,112(sp)
     19c:	afa70074 	sw	a3,116(sp)
     1a0:	25ef0000 	addiu	t7,t7,0
     1a4:	8df90000 	lw	t9,0(t7)
     1a8:	27ae0050 	addiu	t6,sp,80
     1ac:	8df80004 	lw	t8,4(t7)
     1b0:	add90000 	sw	t9,0(t6)
     1b4:	8df90008 	lw	t9,8(t7)
     1b8:	3c090000 	lui	t1,0x0
     1bc:	25290000 	addiu	t1,t1,0
     1c0:	add80004 	sw	t8,4(t6)
     1c4:	add90008 	sw	t9,8(t6)
     1c8:	8d2b0000 	lw	t3,0(t1)
     1cc:	27a80044 	addiu	t0,sp,68
     1d0:	8d2a0004 	lw	t2,4(t1)
     1d4:	ad0b0000 	sw	t3,0(t0)
     1d8:	8d2b0008 	lw	t3,8(t1)
     1dc:	ad0a0004 	sw	t2,4(t0)
     1e0:	0c000000 	jal	0 <func_809EAD40>
     1e4:	ad0b0008 	sw	t3,8(t0)
     1e8:	3c013f00 	lui	at,0x3f00
     1ec:	44812000 	mtc1	at,$f4
     1f0:	3c010000 	lui	at,0x0
     1f4:	c4280000 	lwc1	$f8,0(at)
     1f8:	46040181 	sub.s	$f6,$f0,$f4
     1fc:	8fac006c 	lw	t4,108(sp)
     200:	46083302 	mul.s	$f12,$f6,$f8
     204:	e7ac0040 	swc1	$f12,64(sp)
     208:	c58a0080 	lwc1	$f10,128(t4)
     20c:	0c000000 	jal	0 <func_809EAD40>
     210:	e7aa0060 	swc1	$f10,96(sp)
     214:	c7b00074 	lwc1	$f16,116(sp)
     218:	8fad0070 	lw	t5,112(sp)
     21c:	c7ac0040 	lwc1	$f12,64(sp)
     220:	46100482 	mul.s	$f18,$f0,$f16
     224:	c5a40000 	lwc1	$f4,0(t5)
     228:	46049180 	add.s	$f6,$f18,$f4
     22c:	0c000000 	jal	0 <func_809EAD40>
     230:	e7a6005c 	swc1	$f6,92(sp)
     234:	c7a80074 	lwc1	$f8,116(sp)
     238:	8fae0070 	lw	t6,112(sp)
     23c:	46080282 	mul.s	$f10,$f0,$f8
     240:	c5d00008 	lwc1	$f16,8(t6)
     244:	46105480 	add.s	$f18,$f10,$f16
     248:	0c000000 	jal	0 <func_809EAD40>
     24c:	e7b20064 	swc1	$f18,100(sp)
     250:	3c013f00 	lui	at,0x3f00
     254:	44812000 	mtc1	at,$f4
     258:	c7a8007c 	lwc1	$f8,124(sp)
     25c:	46040181 	sub.s	$f6,$f0,$f4
     260:	46083282 	mul.s	$f10,$f6,$f8
     264:	0c000000 	jal	0 <func_809EAD40>
     268:	e7aa0044 	swc1	$f10,68(sp)
     26c:	3c013f00 	lui	at,0x3f00
     270:	44818000 	mtc1	at,$f16
     274:	c7a4007c 	lwc1	$f4,124(sp)
     278:	46100481 	sub.s	$f18,$f0,$f16
     27c:	46049182 	mul.s	$f6,$f18,$f4
     280:	0c000000 	jal	0 <func_809EAD40>
     284:	e7a6004c 	swc1	$f6,76(sp)
     288:	3c013f00 	lui	at,0x3f00
     28c:	44814000 	mtc1	at,$f8
     290:	3c014080 	lui	at,0x4080
     294:	44818000 	mtc1	at,$f16
     298:	46080281 	sub.s	$f10,$f0,$f8
     29c:	c7a40054 	lwc1	$f4,84(sp)
     2a0:	46105482 	mul.s	$f18,$f10,$f16
     2a4:	46122180 	add.s	$f6,$f4,$f18
     2a8:	0c000000 	jal	0 <func_809EAD40>
     2ac:	e7a60054 	swc1	$f6,84(sp)
     2b0:	3c0140a0 	lui	at,0x40a0
     2b4:	44814000 	mtc1	at,$f8
     2b8:	3c014140 	lui	at,0x4140
     2bc:	44818000 	mtc1	at,$f16
     2c0:	46080282 	mul.s	$f10,$f0,$f8
     2c4:	c7b20080 	lwc1	$f18,128(sp)
     2c8:	8faf0078 	lw	t7,120(sp)
     2cc:	2408ffff 	li	t0,-1
     2d0:	2409000a 	li	t1,10
     2d4:	afa9001c 	sw	t1,28(sp)
     2d8:	afa80018 	sw	t0,24(sp)
     2dc:	46105100 	add.s	$f4,$f10,$f16
     2e0:	8fa40068 	lw	a0,104(sp)
     2e4:	27a5005c 	addiu	a1,sp,92
     2e8:	27a60050 	addiu	a2,sp,80
     2ec:	46122182 	mul.s	$f6,$f4,$f18
     2f0:	27a70044 	addiu	a3,sp,68
     2f4:	afa00020 	sw	zero,32(sp)
     2f8:	afaf0010 	sw	t7,16(sp)
     2fc:	4600320d 	trunc.w.s	$f8,$f6
     300:	44194000 	mfc1	t9,$f8
     304:	0c000000 	jal	0 <func_809EAD40>
     308:	afb90014 	sw	t9,20(sp)
     30c:	8fbf002c 	lw	ra,44(sp)
     310:	27bd0068 	addiu	sp,sp,104
     314:	03e00008 	jr	ra
     318:	00000000 	nop

0000031c <func_809EB05C>:
     31c:	27bdffe0 	addiu	sp,sp,-32
     320:	afb00018 	sw	s0,24(sp)
     324:	00808025 	move	s0,a0
     328:	afbf001c 	sw	ra,28(sp)
     32c:	3c050600 	lui	a1,0x600
     330:	24a53a8c 	addiu	a1,a1,14988
     334:	0c000000 	jal	0 <func_809EAD40>
     338:	2484014c 	addiu	a0,a0,332
     33c:	3c014416 	lui	at,0x4416
     340:	44816000 	mtc1	at,$f12
     344:	0c000000 	jal	0 <func_809EAD40>
     348:	a200025b 	sb	zero,603(s0)
     34c:	c6040008 	lwc1	$f4,8(s0)
     350:	3c014416 	lui	at,0x4416
     354:	44816000 	mtc1	at,$f12
     358:	46040180 	add.s	$f6,$f0,$f4
     35c:	0c000000 	jal	0 <func_809EAD40>
     360:	e6060024 	swc1	$f6,36(s0)
     364:	c6080010 	lwc1	$f8,16(s0)
     368:	3c010000 	lui	at,0x0
     36c:	8e0f0004 	lw	t7,4(s0)
     370:	46080280 	add.s	$f10,$f0,$f8
     374:	44801000 	mtc1	zero,$f2
     378:	860e00b6 	lh	t6,182(s0)
     37c:	3c050000 	lui	a1,0x0
     380:	e60a002c 	swc1	$f10,44(s0)
     384:	c4300000 	lwc1	$f16,0(at)
     388:	a600001c 	sh	zero,28(s0)
     38c:	9202001d 	lbu	v0,29(s0)
     390:	35f80080 	ori	t8,t7,0x80
     394:	ae180004 	sw	t8,4(s0)
     398:	24a50000 	addiu	a1,a1,0
     39c:	02002025 	move	a0,s0
     3a0:	e6020318 	swc1	$f2,792(s0)
     3a4:	e6020068 	swc1	$f2,104(s0)
     3a8:	a60e0032 	sh	t6,50(s0)
     3ac:	e61000bc 	swc1	$f16,188(s0)
     3b0:	a2020250 	sb	v0,592(s0)
     3b4:	0c000000 	jal	0 <func_809EAD40>
     3b8:	a602025e 	sh	v0,606(s0)
     3bc:	8fbf001c 	lw	ra,28(sp)
     3c0:	8fb00018 	lw	s0,24(sp)
     3c4:	27bd0020 	addiu	sp,sp,32
     3c8:	03e00008 	jr	ra
     3cc:	00000000 	nop

000003d0 <func_809EB110>:
     3d0:	27bdffd0 	addiu	sp,sp,-48
     3d4:	afbf002c 	sw	ra,44(sp)
     3d8:	afb00028 	sw	s0,40(sp)
     3dc:	afa50034 	sw	a1,52(sp)
     3e0:	c4840164 	lwc1	$f4,356(a0)
     3e4:	24010005 	li	at,5
     3e8:	00808025 	move	s0,a0
     3ec:	4600218d 	trunc.w.s	$f6,$f4
     3f0:	440f3000 	mfc1	t7,$f6
     3f4:	00000000 	nop
     3f8:	55e10004 	bnel	t7,at,40c <func_809EB110+0x3c>
     3fc:	8fa40034 	lw	a0,52(sp)
     400:	0c000000 	jal	0 <func_809EAD40>
     404:	24040038 	li	a0,56
     408:	8fa40034 	lw	a0,52(sp)
     40c:	0c000000 	jal	0 <func_809EAD40>
     410:	26050260 	addiu	a1,s0,608
     414:	10400002 	beqz	v0,420 <func_809EB110+0x50>
     418:	24180005 	li	t8,5
     41c:	a618001c 	sh	t8,28(s0)
     420:	8602001c 	lh	v0,28(s0)
     424:	1c400003 	bgtz	v0,434 <func_809EB110+0x64>
     428:	2841fffd 	slti	at,v0,-3
     42c:	5020006d 	beqzl	at,5e4 <func_809EB110+0x214>
     430:	8fbf002c 	lw	ra,44(sp)
     434:	92030250 	lbu	v1,592(s0)
     438:	2401ff7f 	li	at,-129
     43c:	02002025 	move	a0,s0
     440:	10600008 	beqz	v1,464 <func_809EB110+0x94>
     444:	00601025 	move	v0,v1
     448:	24010001 	li	at,1
     44c:	10410013 	beq	v0,at,49c <func_809EB110+0xcc>
     450:	24010002 	li	at,2
     454:	10410051 	beq	v0,at,59c <func_809EB110+0x1cc>
     458:	00000000 	nop
     45c:	10000052 	b	5a8 <func_809EB110+0x1d8>
     460:	8605008a 	lh	a1,138(s0)
     464:	8e190004 	lw	t9,4(s0)
     468:	920d0252 	lbu	t5,594(s0)
     46c:	8609008a 	lh	t1,138(s0)
     470:	37280001 	ori	t0,t9,0x1
     474:	ae080004 	sw	t0,4(s0)
     478:	01015824 	and	t3,t0,at
     47c:	246c0001 	addiu	t4,v1,1
     480:	25ae0001 	addiu	t6,t5,1
     484:	ae0b0004 	sw	t3,4(s0)
     488:	a20c0250 	sb	t4,592(s0)
     48c:	a20e0252 	sb	t6,594(s0)
     490:	240539a8 	li	a1,14760
     494:	0c000000 	jal	0 <func_809EAD40>
     498:	a60900b6 	sh	t1,182(s0)
     49c:	860f025e 	lh	t7,606(s0)
     4a0:	44804000 	mtc1	zero,$f8
     4a4:	26040318 	addiu	a0,s0,792
     4a8:	25f803a7 	addiu	t8,t7,935
     4ac:	a618025e 	sh	t8,606(s0)
     4b0:	3c054396 	lui	a1,0x4396
     4b4:	3c063f80 	lui	a2,0x3f80
     4b8:	3c0740a0 	lui	a3,0x40a0
     4bc:	0c000000 	jal	0 <func_809EAD40>
     4c0:	e7a80010 	swc1	$f8,16(sp)
     4c4:	0c000000 	jal	0 <func_809EAD40>
     4c8:	8604025e 	lh	a0,606(s0)
     4cc:	3c01425c 	lui	at,0x425c
     4d0:	44815000 	mtc1	at,$f10
     4d4:	8604025e 	lh	a0,606(s0)
     4d8:	460a0402 	mul.s	$f16,$f0,$f10
     4dc:	0c000000 	jal	0 <func_809EAD40>
     4e0:	e610031c 	swc1	$f16,796(s0)
     4e4:	3c01437f 	lui	at,0x437f
     4e8:	44819000 	mtc1	at,$f18
     4ec:	3c010000 	lui	at,0x0
     4f0:	8e070318 	lw	a3,792(s0)
     4f4:	46120102 	mul.s	$f4,$f0,$f18
     4f8:	240b0004 	li	t3,4
     4fc:	02002825 	move	a1,s0
     500:	26060024 	addiu	a2,s0,36
     504:	4600218d 	trunc.w.s	$f6,$f4
     508:	44083000 	mfc1	t0,$f6
     50c:	00000000 	nop
     510:	00084c00 	sll	t1,t0,0x10
     514:	00095403 	sra	t2,t1,0x10
     518:	448a4000 	mtc1	t2,$f8
     51c:	00000000 	nop
     520:	468042a0 	cvt.s.w	$f10,$f8
     524:	e60a0320 	swc1	$f10,800(s0)
     528:	c4300000 	lwc1	$f16,0(at)
     52c:	3c010000 	lui	at,0x0
     530:	c4320000 	lwc1	$f18,0(at)
     534:	afab0010 	sw	t3,16(sp)
     538:	8fa40034 	lw	a0,52(sp)
     53c:	e7b00014 	swc1	$f16,20(sp)
     540:	0c000000 	jal	0 <func_809EAD40>
     544:	e7b20018 	swc1	$f18,24(sp)
     548:	c60000bc 	lwc1	$f0,188(s0)
     54c:	44802000 	mtc1	zero,$f4
     550:	00000000 	nop
     554:	46002032 	c.eq.s	$f4,$f0
     558:	00000000 	nop
     55c:	45020007 	bc1fl	57c <func_809EB110+0x1ac>
     560:	860e025e 	lh	t6,606(s0)
     564:	920c0250 	lbu	t4,592(s0)
     568:	a2000252 	sb	zero,594(s0)
     56c:	258d0001 	addiu	t5,t4,1
     570:	1000000c 	b	5a4 <func_809EB110+0x1d4>
     574:	a20d0250 	sb	t5,592(s0)
     578:	860e025e 	lh	t6,606(s0)
     57c:	29c112c1 	slti	at,t6,4801
     580:	14200008 	bnez	at,5a4 <func_809EB110+0x1d4>
     584:	3c0143fa 	lui	at,0x43fa
     588:	44813000 	mtc1	at,$f6
     58c:	00000000 	nop
     590:	46060200 	add.s	$f8,$f0,$f6
     594:	10000003 	b	5a4 <func_809EB110+0x1d4>
     598:	e60800bc 	swc1	$f8,188(s0)
     59c:	0c000000 	jal	0 <func_809EAD40>
     5a0:	02002025 	move	a0,s0
     5a4:	8605008a 	lh	a1,138(s0)
     5a8:	afa00010 	sw	zero,16(sp)
     5ac:	260400b6 	addiu	a0,s0,182
     5b0:	24060001 	li	a2,1
     5b4:	0c000000 	jal	0 <func_809EAD40>
     5b8:	240707d0 	li	a3,2000
     5bc:	0c000000 	jal	0 <func_809EAD40>
     5c0:	2604014c 	addiu	a0,s0,332
     5c4:	860f001c 	lh	t7,28(s0)
     5c8:	24010005 	li	at,5
     5cc:	8fa40034 	lw	a0,52(sp)
     5d0:	51e10004 	beql	t7,at,5e4 <func_809EB110+0x214>
     5d4:	8fbf002c 	lw	ra,44(sp)
     5d8:	0c000000 	jal	0 <func_809EAD40>
     5dc:	02002825 	move	a1,s0
     5e0:	8fbf002c 	lw	ra,44(sp)
     5e4:	8fb00028 	lw	s0,40(sp)
     5e8:	27bd0030 	addiu	sp,sp,48
     5ec:	03e00008 	jr	ra
     5f0:	00000000 	nop

000005f4 <func_809EB334>:
     5f4:	27bdffd0 	addiu	sp,sp,-48
     5f8:	afb00028 	sw	s0,40(sp)
     5fc:	00808025 	move	s0,a0
     600:	afbf002c 	sw	ra,44(sp)
     604:	3c040600 	lui	a0,0x600
     608:	0c000000 	jal	0 <func_809EAD40>
     60c:	24843a8c 	addiu	a0,a0,14988
     610:	44822000 	mtc1	v0,$f4
     614:	3c014040 	lui	at,0x4040
     618:	44814000 	mtc1	at,$f8
     61c:	468021a0 	cvt.s.w	$f6,$f4
     620:	3c01c0c0 	lui	at,0xc0c0
     624:	44818000 	mtc1	at,$f16
     628:	3c050600 	lui	a1,0x600
     62c:	24a53a8c 	addiu	a1,a1,14988
     630:	2604014c 	addiu	a0,s0,332
     634:	46083281 	sub.s	$f10,$f6,$f8
     638:	3c063f80 	lui	a2,0x3f80
     63c:	24070000 	li	a3,0
     640:	afa00014 	sw	zero,20(sp)
     644:	e7aa0010 	swc1	$f10,16(sp)
     648:	0c000000 	jal	0 <func_809EAD40>
     64c:	e7b00018 	swc1	$f16,24(sp)
     650:	3c013f80 	lui	at,0x3f80
     654:	44819000 	mtc1	at,$f18
     658:	240e0003 	li	t6,3
     65c:	240f012c 	li	t7,300
     660:	3c050000 	lui	a1,0x0
     664:	a20e025b 	sb	t6,603(s0)
     668:	a60f025c 	sh	t7,604(s0)
     66c:	24a50000 	addiu	a1,a1,0
     670:	02002025 	move	a0,s0
     674:	0c000000 	jal	0 <func_809EAD40>
     678:	e6120068 	swc1	$f18,104(s0)
     67c:	8fbf002c 	lw	ra,44(sp)
     680:	8fb00028 	lw	s0,40(sp)
     684:	27bd0030 	addiu	sp,sp,48
     688:	03e00008 	jr	ra
     68c:	00000000 	nop

00000690 <func_809EB3D0>:
     690:	27bdffd8 	addiu	sp,sp,-40
     694:	afb00020 	sw	s0,32(sp)
     698:	00808025 	move	s0,a0
     69c:	afbf0024 	sw	ra,36(sp)
     6a0:	afa5002c 	sw	a1,44(sp)
     6a4:	8605008a 	lh	a1,138(s0)
     6a8:	afa00010 	sw	zero,16(sp)
     6ac:	248400b6 	addiu	a0,a0,182
     6b0:	24060001 	li	a2,1
     6b4:	0c000000 	jal	0 <func_809EAD40>
     6b8:	240700fa 	li	a3,250
     6bc:	860e00b6 	lh	t6,182(s0)
     6c0:	2604014c 	addiu	a0,s0,332
     6c4:	0c000000 	jal	0 <func_809EAD40>
     6c8:	a60e0032 	sh	t6,50(s0)
     6cc:	c6040164 	lwc1	$f4,356(s0)
     6d0:	02002025 	move	a0,s0
     6d4:	4600218d 	trunc.w.s	$f6,$f4
     6d8:	44183000 	mfc1	t8,$f6
     6dc:	00000000 	nop
     6e0:	33190007 	andi	t9,t8,0x7
     6e4:	57200004 	bnezl	t9,6f8 <func_809EB3D0+0x68>
     6e8:	8fa8002c 	lw	t0,44(sp)
     6ec:	0c000000 	jal	0 <func_809EAD40>
     6f0:	24053901 	li	a1,14593
     6f4:	8fa8002c 	lw	t0,44(sp)
     6f8:	3c090001 	lui	t1,0x1
     6fc:	02002025 	move	a0,s0
     700:	01284821 	addu	t1,t1,t0
     704:	8d291de4 	lw	t1,7652(t1)
     708:	312a005f 	andi	t2,t1,0x5f
     70c:	55400004 	bnezl	t2,720 <func_809EB3D0+0x90>
     710:	3c0142c8 	lui	at,0x42c8
     714:	0c000000 	jal	0 <func_809EAD40>
     718:	240539a7 	li	a1,14759
     71c:	3c0142c8 	lui	at,0x42c8
     720:	44814000 	mtc1	at,$f8
     724:	c60a0090 	lwc1	$f10,144(s0)
     728:	02002025 	move	a0,s0
     72c:	4608503e 	c.le.s	$f10,$f8
     730:	00000000 	nop
     734:	4502000c 	bc1fl	768 <func_809EB3D0+0xd8>
     738:	860b025c 	lh	t3,604(s0)
     73c:	44808000 	mtc1	zero,$f16
     740:	24052aaa 	li	a1,10922
     744:	0c000000 	jal	0 <func_809EAD40>
     748:	e6100068 	swc1	$f16,104(s0)
     74c:	5040000e 	beqzl	v0,788 <func_809EB3D0+0xf8>
     750:	8fbf0024 	lw	ra,36(sp)
     754:	0c000000 	jal	0 <func_809EAD40>
     758:	02002025 	move	a0,s0
     75c:	1000000a 	b	788 <func_809EB3D0+0xf8>
     760:	8fbf0024 	lw	ra,36(sp)
     764:	860b025c 	lh	t3,604(s0)
     768:	256cffff 	addiu	t4,t3,-1
     76c:	a60c025c 	sh	t4,604(s0)
     770:	860d025c 	lh	t5,604(s0)
     774:	55a00004 	bnezl	t5,788 <func_809EB3D0+0xf8>
     778:	8fbf0024 	lw	ra,36(sp)
     77c:	0c000000 	jal	0 <func_809EAD40>
     780:	02002025 	move	a0,s0
     784:	8fbf0024 	lw	ra,36(sp)
     788:	8fb00020 	lw	s0,32(sp)
     78c:	27bd0028 	addiu	sp,sp,40
     790:	03e00008 	jr	ra
     794:	00000000 	nop

00000798 <func_809EB4D8>:
     798:	27bdffe8 	addiu	sp,sp,-24
     79c:	afa5001c 	sw	a1,28(sp)
     7a0:	afbf0014 	sw	ra,20(sp)
     7a4:	00803825 	move	a3,a0
     7a8:	3c050600 	lui	a1,0x600
     7ac:	24a55880 	addiu	a1,a1,22656
     7b0:	afa70018 	sw	a3,24(sp)
     7b4:	2484014c 	addiu	a0,a0,332
     7b8:	0c000000 	jal	0 <func_809EAD40>
     7bc:	3c06c080 	lui	a2,0xc080
     7c0:	8fa40018 	lw	a0,24(sp)
     7c4:	3c013f80 	lui	at,0x3f80
     7c8:	44812000 	mtc1	at,$f4
     7cc:	240e0001 	li	t6,1
     7d0:	240f0046 	li	t7,70
     7d4:	3c050000 	lui	a1,0x0
     7d8:	24a50000 	addiu	a1,a1,0
     7dc:	a08e025b 	sb	t6,603(a0)
     7e0:	a48f025c 	sh	t7,604(a0)
     7e4:	0c000000 	jal	0 <func_809EAD40>
     7e8:	e4840068 	swc1	$f4,104(a0)
     7ec:	8fbf0014 	lw	ra,20(sp)
     7f0:	27bd0018 	addiu	sp,sp,24
     7f4:	03e00008 	jr	ra
     7f8:	00000000 	nop

000007fc <func_809EB53C>:
     7fc:	27bdffd8 	addiu	sp,sp,-40
     800:	afbf0024 	sw	ra,36(sp)
     804:	afb00020 	sw	s0,32(sp)
     808:	afa5002c 	sw	a1,44(sp)
     80c:	848e025c 	lh	t6,604(a0)
     810:	00808025 	move	s0,a0
     814:	34018000 	li	at,0x8000
     818:	25cfffff 	addiu	t7,t6,-1
     81c:	a48f025c 	sh	t7,604(a0)
     820:	8498025c 	lh	t8,604(a0)
     824:	24060001 	li	a2,1
     828:	24070bb8 	li	a3,3000
     82c:	57000006 	bnezl	t8,848 <func_809EB53C+0x4c>
     830:	8605008a 	lh	a1,138(s0)
     834:	0c000000 	jal	0 <func_809EAD40>
     838:	a0800251 	sb	zero,593(a0)
     83c:	10000009 	b	864 <func_809EB53C+0x68>
     840:	861900b6 	lh	t9,182(s0)
     844:	8605008a 	lh	a1,138(s0)
     848:	afa00010 	sw	zero,16(sp)
     84c:	260400b6 	addiu	a0,s0,182
     850:	00a12821 	addu	a1,a1,at
     854:	00052c00 	sll	a1,a1,0x10
     858:	0c000000 	jal	0 <func_809EAD40>
     85c:	00052c03 	sra	a1,a1,0x10
     860:	861900b6 	lh	t9,182(s0)
     864:	2604014c 	addiu	a0,s0,332
     868:	0c000000 	jal	0 <func_809EAD40>
     86c:	a6190032 	sh	t9,50(s0)
     870:	8fbf0024 	lw	ra,36(sp)
     874:	8fb00020 	lw	s0,32(sp)
     878:	27bd0028 	addiu	sp,sp,40
     87c:	03e00008 	jr	ra
     880:	00000000 	nop

00000884 <func_809EB5C4>:
     884:	27bdffe8 	addiu	sp,sp,-24
     888:	afbf0014 	sw	ra,20(sp)
     88c:	00803825 	move	a3,a0
     890:	3c050600 	lui	a1,0x600
     894:	24a54658 	addiu	a1,a1,18008
     898:	afa70018 	sw	a3,24(sp)
     89c:	2484014c 	addiu	a0,a0,332
     8a0:	0c000000 	jal	0 <func_809EAD40>
     8a4:	3c06c0c0 	lui	a2,0xc0c0
     8a8:	8fa40018 	lw	a0,24(sp)
     8ac:	44802000 	mtc1	zero,$f4
     8b0:	300e00ff 	andi	t6,zero,0xff
     8b4:	240f0004 	li	t7,4
     8b8:	3c050000 	lui	a1,0x0
     8bc:	24a50000 	addiu	a1,a1,0
     8c0:	a48e025c 	sh	t6,604(a0)
     8c4:	a0800250 	sb	zero,592(a0)
     8c8:	a08f025b 	sb	t7,603(a0)
     8cc:	0c000000 	jal	0 <func_809EAD40>
     8d0:	e4840068 	swc1	$f4,104(a0)
     8d4:	8fbf0014 	lw	ra,20(sp)
     8d8:	27bd0018 	addiu	sp,sp,24
     8dc:	03e00008 	jr	ra
     8e0:	00000000 	nop

000008e4 <func_809EB624>:
     8e4:	27bdffc0 	addiu	sp,sp,-64
     8e8:	afb00028 	sw	s0,40(sp)
     8ec:	00808025 	move	s0,a0
     8f0:	afbf002c 	sw	ra,44(sp)
     8f4:	2484014c 	addiu	a0,a0,332
     8f8:	afa50044 	sw	a1,68(sp)
     8fc:	0c000000 	jal	0 <func_809EAD40>
     900:	afa40034 	sw	a0,52(sp)
     904:	10400005 	beqz	v0,91c <func_809EB624+0x38>
     908:	3c0142c8 	lui	at,0x42c8
     90c:	920e0250 	lbu	t6,592(s0)
     910:	25cf0001 	addiu	t7,t6,1
     914:	10000023 	b	9a4 <func_809EB624+0xc0>
     918:	a20f0250 	sb	t7,592(s0)
     91c:	44812000 	mtc1	at,$f4
     920:	c6060090 	lwc1	$f6,144(s0)
     924:	02002025 	move	a0,s0
     928:	4606203c 	c.lt.s	$f4,$f6
     92c:	00000000 	nop
     930:	45030005 	bc1tl	948 <func_809EB624+0x64>
     934:	3c01c080 	lui	at,0xc080
     938:	0c000000 	jal	0 <func_809EAD40>
     93c:	24052aaa 	li	a1,10922
     940:	14400018 	bnez	v0,9a4 <func_809EB624+0xc0>
     944:	3c01c080 	lui	at,0xc080
     948:	44815000 	mtc1	at,$f10
     94c:	44804000 	mtc1	zero,$f8
     950:	8e070164 	lw	a3,356(s0)
     954:	3c050600 	lui	a1,0x600
     958:	24180002 	li	t8,2
     95c:	afb80014 	sw	t8,20(sp)
     960:	24a54658 	addiu	a1,a1,18008
     964:	8fa40034 	lw	a0,52(sp)
     968:	3c06bf80 	lui	a2,0xbf80
     96c:	e7aa0018 	swc1	$f10,24(sp)
     970:	0c000000 	jal	0 <func_809EAD40>
     974:	e7a80010 	swc1	$f8,16(sp)
     978:	8e0802c8 	lw	t0,712(s0)
     97c:	24190004 	li	t9,4
     980:	a2190250 	sb	t9,592(s0)
     984:	a1000015 	sb	zero,21(t0)
     988:	8e0202c8 	lw	v0,712(s0)
     98c:	90490015 	lbu	t1,21(v0)
     990:	a20902bc 	sb	t1,700(s0)
     994:	a0400005 	sb	zero,5(v0)
     998:	8e0202c8 	lw	v0,712(s0)
     99c:	904a0005 	lbu	t2,5(v0)
     9a0:	ac4a0000 	sw	t2,0(v0)
     9a4:	920b0250 	lbu	t3,592(s0)
     9a8:	2d610006 	sltiu	at,t3,6
     9ac:	1020008a 	beqz	at,bd8 <L809EB918>
     9b0:	000b5880 	sll	t3,t3,0x2
     9b4:	3c010000 	lui	at,0x0
     9b8:	002b0821 	addu	at,at,t3
     9bc:	8c2b0000 	lw	t3,0(at)
     9c0:	01600008 	jr	t3
     9c4:	00000000 	nop

000009c8 <L809EB708>:
     9c8:	3c050600 	lui	a1,0x600
     9cc:	24a51a3c 	addiu	a1,a1,6716
     9d0:	0c000000 	jal	0 <func_809EAD40>
     9d4:	8fa40034 	lw	a0,52(sp)
     9d8:	920c0250 	lbu	t4,592(s0)
     9dc:	02002025 	move	a0,s0
     9e0:	24053900 	li	a1,14592
     9e4:	258d0001 	addiu	t5,t4,1
     9e8:	0c000000 	jal	0 <func_809EAD40>
     9ec:	a20d0250 	sb	t5,592(s0)

000009f0 <L809EB730>:
     9f0:	8605008a 	lh	a1,138(s0)
     9f4:	afa00010 	sw	zero,16(sp)
     9f8:	260400b6 	addiu	a0,s0,182
     9fc:	24060001 	li	a2,1
     a00:	0c000000 	jal	0 <func_809EAD40>
     a04:	240705dc 	li	a3,1500
     a08:	10000074 	b	bdc <L809EB918+0x4>
     a0c:	861800b6 	lh	t8,182(s0)

00000a10 <L809EB750>:
     a10:	3c014080 	lui	at,0x4080
     a14:	44819000 	mtc1	at,$f18
     a18:	c6100164 	lwc1	$f16,356(s0)
     a1c:	4610903e 	c.le.s	$f18,$f16
     a20:	00000000 	nop
     a24:	4502000e 	bc1fl	a60 <L809EB750+0x50>
     a28:	920302bc 	lbu	v1,700(s0)
     a2c:	8e0f02c8 	lw	t7,712(s0)
     a30:	240e0011 	li	t6,17
     a34:	3c19ffcf 	lui	t9,0xffcf
     a38:	a1ee0015 	sb	t6,21(t7)
     a3c:	8e0202c8 	lw	v0,712(s0)
     a40:	3739ffff 	ori	t9,t9,0xffff
     a44:	24080008 	li	t0,8
     a48:	90580015 	lbu	t8,21(v0)
     a4c:	a21802bc 	sb	t8,700(s0)
     a50:	ac590000 	sw	t9,0(v0)
     a54:	8e0902c8 	lw	t1,712(s0)
     a58:	a1280005 	sb	t0,5(t1)
     a5c:	920302bc 	lbu	v1,700(s0)
     a60:	306a0004 	andi	t2,v1,0x4
     a64:	11400010 	beqz	t2,aa8 <L809EB750+0x98>
     a68:	30790002 	andi	t9,v1,0x2
     a6c:	8e0c02c8 	lw	t4,712(s0)
     a70:	306bfff9 	andi	t3,v1,0xfff9
     a74:	a20b02bc 	sb	t3,700(s0)
     a78:	a1800015 	sb	zero,21(t4)
     a7c:	8e0202c8 	lw	v0,712(s0)
     a80:	904d0015 	lbu	t5,21(v0)
     a84:	a20d02bc 	sb	t5,700(s0)
     a88:	a0400005 	sb	zero,5(v0)
     a8c:	8e0202c8 	lw	v0,712(s0)
     a90:	904e0005 	lbu	t6,5(v0)
     a94:	ac4e0000 	sw	t6,0(v0)
     a98:	920f0250 	lbu	t7,592(s0)
     a9c:	25f80001 	addiu	t8,t7,1
     aa0:	1000004d 	b	bd8 <L809EB918>
     aa4:	a2180250 	sb	t8,592(s0)
     aa8:	1320004b 	beqz	t9,bd8 <L809EB918>
     aac:	3c014100 	lui	at,0x4100
     ab0:	44810000 	mtc1	at,$f0
     ab4:	3068fffd 	andi	t0,v1,0xfffd
     ab8:	a20802bc 	sb	t0,700(s0)
     abc:	860700b6 	lh	a3,182(s0)
     ac0:	44060000 	mfc1	a2,$f0
     ac4:	8fa40044 	lw	a0,68(sp)
     ac8:	02002825 	move	a1,s0
     acc:	0c000000 	jal	0 <func_809EAD40>
     ad0:	e7a00010 	swc1	$f0,16(sp)
     ad4:	10000041 	b	bdc <L809EB918+0x4>
     ad8:	861800b6 	lh	t8,182(s0)

00000adc <L809EB81C>:
     adc:	3c0142c8 	lui	at,0x42c8
     ae0:	44812000 	mtc1	at,$f4
     ae4:	c6060090 	lwc1	$f6,144(s0)
     ae8:	02002025 	move	a0,s0
     aec:	4604303e 	c.le.s	$f6,$f4
     af0:	00000000 	nop
     af4:	45000017 	bc1f	b54 <L809EB81C+0x78>
     af8:	00000000 	nop
     afc:	0c000000 	jal	0 <func_809EAD40>
     b00:	24052aaa 	li	a1,10922
     b04:	10400013 	beqz	v0,b54 <L809EB81C+0x78>
     b08:	3c040600 	lui	a0,0x600
     b0c:	0c000000 	jal	0 <func_809EAD40>
     b10:	24844658 	addiu	a0,a0,18008
     b14:	44824000 	mtc1	v0,$f8
     b18:	3c01c0c0 	lui	at,0xc0c0
     b1c:	44818000 	mtc1	at,$f16
     b20:	468042a0 	cvt.s.w	$f10,$f8
     b24:	3c050600 	lui	a1,0x600
     b28:	24090002 	li	t1,2
     b2c:	afa90014 	sw	t1,20(sp)
     b30:	24a54658 	addiu	a1,a1,18008
     b34:	8fa40034 	lw	a0,52(sp)
     b38:	e7aa0010 	swc1	$f10,16(sp)
     b3c:	3c063f80 	lui	a2,0x3f80
     b40:	3c0741a0 	lui	a3,0x41a0
     b44:	0c000000 	jal	0 <func_809EAD40>
     b48:	e7b00018 	swc1	$f16,24(sp)
     b4c:	10000022 	b	bd8 <L809EB918>
     b50:	a2000250 	sb	zero,592(s0)
     b54:	3c040600 	lui	a0,0x600
     b58:	0c000000 	jal	0 <func_809EAD40>
     b5c:	24844658 	addiu	a0,a0,18008
     b60:	44829000 	mtc1	v0,$f18
     b64:	3c01c080 	lui	at,0xc080
     b68:	44813000 	mtc1	at,$f6
     b6c:	468094a0 	cvt.s.w	$f18,$f18
     b70:	44802000 	mtc1	zero,$f4
     b74:	3c050600 	lui	a1,0x600
     b78:	240a0002 	li	t2,2
     b7c:	afaa0014 	sw	t2,20(sp)
     b80:	24a54658 	addiu	a1,a1,18008
     b84:	44079000 	mfc1	a3,$f18
     b88:	8fa40034 	lw	a0,52(sp)
     b8c:	3c06bf80 	lui	a2,0xbf80
     b90:	e7a60018 	swc1	$f6,24(sp)
     b94:	0c000000 	jal	0 <func_809EAD40>
     b98:	e7a40010 	swc1	$f4,16(sp)
     b9c:	920b0250 	lbu	t3,592(s0)
     ba0:	8e0d02c8 	lw	t5,712(s0)
     ba4:	256c0001 	addiu	t4,t3,1
     ba8:	a20c0250 	sb	t4,592(s0)
     bac:	a1a00015 	sb	zero,21(t5)
     bb0:	8e0202c8 	lw	v0,712(s0)
     bb4:	904e0015 	lbu	t6,21(v0)
     bb8:	a20e02bc 	sb	t6,700(s0)
     bbc:	a0400005 	sb	zero,5(v0)
     bc0:	8e0202c8 	lw	v0,712(s0)
     bc4:	904f0005 	lbu	t7,5(v0)
     bc8:	10000003 	b	bd8 <L809EB918>
     bcc:	ac4f0000 	sw	t7,0(v0)

00000bd0 <L809EB910>:
     bd0:	0c000000 	jal	0 <func_809EAD40>
     bd4:	02002025 	move	a0,s0

00000bd8 <L809EB918>:
     bd8:	861800b6 	lh	t8,182(s0)
     bdc:	a6180032 	sh	t8,50(s0)
     be0:	8fbf002c 	lw	ra,44(sp)
     be4:	8fb00028 	lw	s0,40(sp)
     be8:	27bd0040 	addiu	sp,sp,64
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <func_809EB934>:
     bf4:	27bdffe8 	addiu	sp,sp,-24
     bf8:	afbf0014 	sw	ra,20(sp)
     bfc:	00803825 	move	a3,a0
     c00:	3c050600 	lui	a1,0x600
     c04:	24a52148 	addiu	a1,a1,8520
     c08:	afa70018 	sw	a3,24(sp)
     c0c:	2484014c 	addiu	a0,a0,332
     c10:	0c000000 	jal	0 <func_809EAD40>
     c14:	3c06c0c0 	lui	a2,0xc0c0
     c18:	8fa40018 	lw	a0,24(sp)
     c1c:	44800000 	mtc1	zero,$f0
     c20:	2401fffe 	li	at,-2
     c24:	8c980004 	lw	t8,4(a0)
     c28:	848f00b6 	lh	t7,182(a0)
     c2c:	240e0002 	li	t6,2
     c30:	0301c824 	and	t9,t8,at
     c34:	240539a8 	li	a1,14760
     c38:	a08e025b 	sb	t6,603(a0)
     c3c:	a480025e 	sh	zero,606(a0)
     c40:	a0800250 	sb	zero,592(a0)
     c44:	ac990004 	sw	t9,4(a0)
     c48:	e4800068 	swc1	$f0,104(a0)
     c4c:	e4800318 	swc1	$f0,792(a0)
     c50:	0c000000 	jal	0 <func_809EAD40>
     c54:	a48f0032 	sh	t7,50(a0)
     c58:	3c050000 	lui	a1,0x0
     c5c:	8fa40018 	lw	a0,24(sp)
     c60:	0c000000 	jal	0 <func_809EAD40>
     c64:	24a50000 	addiu	a1,a1,0
     c68:	8fbf0014 	lw	ra,20(sp)
     c6c:	27bd0018 	addiu	sp,sp,24
     c70:	03e00008 	jr	ra
     c74:	00000000 	nop

00000c78 <func_809EB9B8>:
     c78:	27bdffd0 	addiu	sp,sp,-48
     c7c:	afbf002c 	sw	ra,44(sp)
     c80:	afb00028 	sw	s0,40(sp)
     c84:	afa50034 	sw	a1,52(sp)
     c88:	90830250 	lbu	v1,592(a0)
     c8c:	00808025 	move	s0,a0
     c90:	24080011 	li	t0,17
     c94:	10600008 	beqz	v1,cb8 <func_809EB9B8+0x40>
     c98:	00601025 	move	v0,v1
     c9c:	24010001 	li	at,1
     ca0:	10410011 	beq	v0,at,ce8 <func_809EB9B8+0x70>
     ca4:	24010002 	li	at,2
     ca8:	10410049 	beq	v0,at,dd0 <func_809EB9B8+0x158>
     cac:	240c0023 	li	t4,35
     cb0:	10000051 	b	df8 <func_809EB9B8+0x180>
     cb4:	8fbf002c 	lw	ra,44(sp)
     cb8:	920f0252 	lbu	t7,594(s0)
     cbc:	3c09ffcf 	lui	t1,0xffcf
     cc0:	246e0001 	addiu	t6,v1,1
     cc4:	3529ffff 	ori	t1,t1,0xffff
     cc8:	240a0004 	li	t2,4
     ccc:	25f80001 	addiu	t8,t7,1
     cd0:	a20e0250 	sb	t6,592(s0)
     cd4:	a2180252 	sb	t8,594(s0)
     cd8:	a208028d 	sb	t0,653(s0)
     cdc:	a2080270 	sb	t0,624(s0)
     ce0:	ae090278 	sw	t1,632(s0)
     ce4:	a20a027d 	sb	t2,637(s0)
     ce8:	860b025e 	lh	t3,606(s0)
     cec:	44802000 	mtc1	zero,$f4
     cf0:	26040318 	addiu	a0,s0,792
     cf4:	256c047e 	addiu	t4,t3,1150
     cf8:	a60c025e 	sh	t4,606(s0)
     cfc:	3c054396 	lui	a1,0x4396
     d00:	3c063f80 	lui	a2,0x3f80
     d04:	3c074100 	lui	a3,0x4100
     d08:	0c000000 	jal	0 <func_809EAD40>
     d0c:	e7a40010 	swc1	$f4,16(sp)
     d10:	0c000000 	jal	0 <func_809EAD40>
     d14:	8604025e 	lh	a0,606(s0)
     d18:	3c01425c 	lui	at,0x425c
     d1c:	44813000 	mtc1	at,$f6
     d20:	8604025e 	lh	a0,606(s0)
     d24:	46060202 	mul.s	$f8,$f0,$f6
     d28:	0c000000 	jal	0 <func_809EAD40>
     d2c:	e608031c 	swc1	$f8,796(s0)
     d30:	3c01437f 	lui	at,0x437f
     d34:	44815000 	mtc1	at,$f10
     d38:	3c010000 	lui	at,0x0
     d3c:	8e070318 	lw	a3,792(s0)
     d40:	460a0402 	mul.s	$f16,$f0,$f10
     d44:	24190004 	li	t9,4
     d48:	02002825 	move	a1,s0
     d4c:	26060024 	addiu	a2,s0,36
     d50:	4600848d 	trunc.w.s	$f18,$f16
     d54:	440e9000 	mfc1	t6,$f18
     d58:	00000000 	nop
     d5c:	000e7c00 	sll	t7,t6,0x10
     d60:	000fc403 	sra	t8,t7,0x10
     d64:	44982000 	mtc1	t8,$f4
     d68:	00000000 	nop
     d6c:	468021a0 	cvt.s.w	$f6,$f4
     d70:	e6060320 	swc1	$f6,800(s0)
     d74:	c4280000 	lwc1	$f8,0(at)
     d78:	3c010000 	lui	at,0x0
     d7c:	c42a0000 	lwc1	$f10,0(at)
     d80:	afb90010 	sw	t9,16(sp)
     d84:	8fa40034 	lw	a0,52(sp)
     d88:	e7a80014 	swc1	$f8,20(sp)
     d8c:	0c000000 	jal	0 <func_809EAD40>
     d90:	e7aa0018 	swc1	$f10,24(sp)
     d94:	3c010000 	lui	at,0x0
     d98:	c4320000 	lwc1	$f18,0(at)
     d9c:	c6100318 	lwc1	$f16,792(s0)
     da0:	2604014c 	addiu	a0,s0,332
     da4:	46128102 	mul.s	$f4,$f16,$f18
     da8:	4600218d 	trunc.w.s	$f6,$f4
     dac:	44093000 	mfc1	t1,$f6
     db0:	0c000000 	jal	0 <func_809EAD40>
     db4:	a60902a0 	sh	t1,672(s0)
     db8:	5040000f 	beqzl	v0,df8 <func_809EB9B8+0x180>
     dbc:	8fbf002c 	lw	ra,44(sp)
     dc0:	920a0250 	lbu	t2,592(s0)
     dc4:	254b0001 	addiu	t3,t2,1
     dc8:	1000000a 	b	df4 <func_809EB9B8+0x17c>
     dcc:	a20b0250 	sb	t3,592(s0)
     dd0:	300e00ff 	andi	t6,zero,0xff
     dd4:	a2000252 	sb	zero,594(s0)
     dd8:	a60c02a0 	sh	t4,672(s0)
     ddc:	a200028d 	sb	zero,653(s0)
     de0:	a2000270 	sb	zero,624(s0)
     de4:	ae0e0278 	sw	t6,632(s0)
     de8:	a200027d 	sb	zero,637(s0)
     dec:	0c000000 	jal	0 <func_809EAD40>
     df0:	02002025 	move	a0,s0
     df4:	8fbf002c 	lw	ra,44(sp)
     df8:	8fb00028 	lw	s0,40(sp)
     dfc:	27bd0030 	addiu	sp,sp,48
     e00:	03e00008 	jr	ra
     e04:	00000000 	nop

00000e08 <func_809EBB48>:
     e08:	27bdffe8 	addiu	sp,sp,-24
     e0c:	afbf0014 	sw	ra,20(sp)
     e10:	00803825 	move	a3,a0
     e14:	3c050600 	lui	a1,0x600
     e18:	24a53d6c 	addiu	a1,a1,15724
     e1c:	afa70018 	sw	a3,24(sp)
     e20:	2484014c 	addiu	a0,a0,332
     e24:	0c000000 	jal	0 <func_809EAD40>
     e28:	3c06c0c0 	lui	a2,0xc0c0
     e2c:	8fa70018 	lw	a3,24(sp)
     e30:	3c01bf80 	lui	at,0xbf80
     e34:	240539a9 	li	a1,14761
     e38:	94ee0088 	lhu	t6,136(a3)
     e3c:	00e02025 	move	a0,a3
     e40:	31cf0001 	andi	t7,t6,0x1
     e44:	11e00004 	beqz	t7,e58 <func_809EBB48+0x50>
     e48:	00000000 	nop
     e4c:	44812000 	mtc1	at,$f4
     e50:	00000000 	nop
     e54:	e4e40068 	swc1	$f4,104(a3)
     e58:	0c000000 	jal	0 <func_809EAD40>
     e5c:	afa70018 	sw	a3,24(sp)
     e60:	8fa40018 	lw	a0,24(sp)
     e64:	24180006 	li	t8,6
     e68:	3c050000 	lui	a1,0x0
     e6c:	24a50000 	addiu	a1,a1,0
     e70:	0c000000 	jal	0 <func_809EAD40>
     e74:	a098025b 	sb	t8,603(a0)
     e78:	8fbf0014 	lw	ra,20(sp)
     e7c:	27bd0018 	addiu	sp,sp,24
     e80:	03e00008 	jr	ra
     e84:	00000000 	nop

00000e88 <func_809EBBC8>:
     e88:	27bdffc8 	addiu	sp,sp,-56
     e8c:	afbf002c 	sw	ra,44(sp)
     e90:	afb00028 	sw	s0,40(sp)
     e94:	afa5003c 	sw	a1,60(sp)
     e98:	c4800068 	lwc1	$f0,104(a0)
     e9c:	44802000 	mtc1	zero,$f4
     ea0:	00808025 	move	s0,a0
     ea4:	3c010000 	lui	at,0x0
     ea8:	4604003c 	c.lt.s	$f0,$f4
     eac:	00000000 	nop
     eb0:	45020005 	bc1fl	ec8 <func_809EBBC8+0x40>
     eb4:	860e008a 	lh	t6,138(s0)
     eb8:	c4260000 	lwc1	$f6,0(at)
     ebc:	46060200 	add.s	$f8,$f0,$f6
     ec0:	e4880068 	swc1	$f8,104(a0)
     ec4:	860e008a 	lh	t6,138(s0)
     ec8:	2604014c 	addiu	a0,s0,332
     ecc:	a60e0032 	sh	t6,50(s0)
     ed0:	0c000000 	jal	0 <func_809EAD40>
     ed4:	afa40030 	sw	a0,48(sp)
     ed8:	50400031 	beqzl	v0,fa0 <func_809EBBC8+0x118>
     edc:	8fbf002c 	lw	ra,44(sp)
     ee0:	92180251 	lbu	t8,593(s0)
     ee4:	860f00b6 	lh	t7,182(s0)
     ee8:	3c0142d2 	lui	at,0x42d2
     eec:	13000006 	beqz	t8,f08 <func_809EBBC8+0x80>
     ef0:	a60f0032 	sh	t7,50(s0)
     ef4:	02002025 	move	a0,s0
     ef8:	0c000000 	jal	0 <func_809EAD40>
     efc:	8fa5003c 	lw	a1,60(sp)
     f00:	10000025 	b	f98 <func_809EBBC8+0x110>
     f04:	240800ff 	li	t0,255
     f08:	44815000 	mtc1	at,$f10
     f0c:	c6100090 	lwc1	$f16,144(s0)
     f10:	02002025 	move	a0,s0
     f14:	460a803e 	c.le.s	$f16,$f10
     f18:	00000000 	nop
     f1c:	4500001b 	bc1f	f8c <func_809EBBC8+0x104>
     f20:	00000000 	nop
     f24:	0c000000 	jal	0 <func_809EAD40>
     f28:	24052aaa 	li	a1,10922
     f2c:	10400017 	beqz	v0,f8c <func_809EBBC8+0x104>
     f30:	3c040600 	lui	a0,0x600
     f34:	0c000000 	jal	0 <func_809EAD40>
     f38:	24844658 	addiu	a0,a0,18008
     f3c:	44829000 	mtc1	v0,$f18
     f40:	02002025 	move	a0,s0
     f44:	46809120 	cvt.s.w	$f4,$f18
     f48:	0c000000 	jal	0 <func_809EAD40>
     f4c:	e7a40034 	swc1	$f4,52(sp)
     f50:	3c01c0c0 	lui	at,0xc0c0
     f54:	44814000 	mtc1	at,$f8
     f58:	c7a60034 	lwc1	$f6,52(sp)
     f5c:	3c050600 	lui	a1,0x600
     f60:	24190002 	li	t9,2
     f64:	afb90014 	sw	t9,20(sp)
     f68:	24a54658 	addiu	a1,a1,18008
     f6c:	8fa40030 	lw	a0,48(sp)
     f70:	3c063f80 	lui	a2,0x3f80
     f74:	3c0741a0 	lui	a3,0x41a0
     f78:	e7a60010 	swc1	$f6,16(sp)
     f7c:	0c000000 	jal	0 <func_809EAD40>
     f80:	e7a80018 	swc1	$f8,24(sp)
     f84:	10000004 	b	f98 <func_809EBBC8+0x110>
     f88:	240800ff 	li	t0,255
     f8c:	0c000000 	jal	0 <func_809EAD40>
     f90:	02002025 	move	a0,s0
     f94:	240800ff 	li	t0,255
     f98:	a2080258 	sb	t0,600(s0)
     f9c:	8fbf002c 	lw	ra,44(sp)
     fa0:	8fb00028 	lw	s0,40(sp)
     fa4:	27bd0038 	addiu	sp,sp,56
     fa8:	03e00008 	jr	ra
     fac:	00000000 	nop

00000fb0 <func_809EBCF0>:
     fb0:	27bdffe0 	addiu	sp,sp,-32
     fb4:	afb00018 	sw	s0,24(sp)
     fb8:	00808025 	move	s0,a0
     fbc:	afbf001c 	sw	ra,28(sp)
     fc0:	3c050600 	lui	a1,0x600
     fc4:	24a532bc 	addiu	a1,a1,12988
     fc8:	2484014c 	addiu	a0,a0,332
     fcc:	0c000000 	jal	0 <func_809EAD40>
     fd0:	3c06bf80 	lui	a2,0xbf80
     fd4:	8e180004 	lw	t8,4(s0)
     fd8:	44802000 	mtc1	zero,$f4
     fdc:	2401fffe 	li	at,-2
     fe0:	240e0005 	li	t6,5
     fe4:	240f012c 	li	t7,300
     fe8:	0301c824 	and	t9,t8,at
     fec:	a20e025b 	sb	t6,603(s0)
     ff0:	a60f025c 	sh	t7,604(s0)
     ff4:	ae190004 	sw	t9,4(s0)
     ff8:	0c000000 	jal	0 <func_809EAD40>
     ffc:	e6040068 	swc1	$f4,104(s0)
    1000:	2408000a 	li	t0,10
    1004:	a608001c 	sh	t0,28(s0)
    1008:	02002025 	move	a0,s0
    100c:	0c000000 	jal	0 <func_809EAD40>
    1010:	240539ab 	li	a1,14763
    1014:	3c050000 	lui	a1,0x0
    1018:	24a50000 	addiu	a1,a1,0
    101c:	0c000000 	jal	0 <func_809EAD40>
    1020:	02002025 	move	a0,s0
    1024:	8fbf001c 	lw	ra,28(sp)
    1028:	8fb00018 	lw	s0,24(sp)
    102c:	27bd0020 	addiu	sp,sp,32
    1030:	03e00008 	jr	ra
    1034:	00000000 	nop

00001038 <func_809EBD78>:
    1038:	27bdffe0 	addiu	sp,sp,-32
    103c:	00803025 	move	a2,a0
    1040:	afbf0014 	sw	ra,20(sp)
    1044:	2484014c 	addiu	a0,a0,332
    1048:	afa50024 	sw	a1,36(sp)
    104c:	afa4001c 	sw	a0,28(sp)
    1050:	0c000000 	jal	0 <func_809EAD40>
    1054:	afa60020 	sw	a2,32(sp)
    1058:	8fa4001c 	lw	a0,28(sp)
    105c:	14400005 	bnez	v0,1074 <func_809EBD78+0x3c>
    1060:	8fa60020 	lw	a2,32(sp)
    1064:	84ce025c 	lh	t6,604(a2)
    1068:	2401012c 	li	at,300
    106c:	51c10021 	beql	t6,at,10f4 <func_809EBD78+0xbc>
    1070:	c4ca0164 	lwc1	$f10,356(a2)
    1074:	84c2025c 	lh	v0,604(a2)
    1078:	2401012c 	li	at,300
    107c:	3c050600 	lui	a1,0x600
    1080:	14410005 	bne	v0,at,1098 <func_809EBD78+0x60>
    1084:	24a5375c 	addiu	a1,a1,14172
    1088:	0c000000 	jal	0 <func_809EAD40>
    108c:	afa60020 	sw	a2,32(sp)
    1090:	8fa60020 	lw	a2,32(sp)
    1094:	84c2025c 	lh	v0,604(a2)
    1098:	244fffff 	addiu	t7,v0,-1
    109c:	a4cf025c 	sh	t7,604(a2)
    10a0:	84d8025c 	lh	t8,604(a2)
    10a4:	2b010096 	slti	at,t8,150
    10a8:	5020002c 	beqzl	at,115c <func_809EBD78+0x124>
    10ac:	8fbf0014 	lw	ra,20(sp)
    10b0:	90c2025a 	lbu	v0,602(a2)
    10b4:	3c010000 	lui	at,0x0
    10b8:	10400009 	beqz	v0,10e0 <func_809EBD78+0xa8>
    10bc:	00000000 	nop
    10c0:	c4c40054 	lwc1	$f4,84(a2)
    10c4:	c4260000 	lwc1	$f6,0(at)
    10c8:	2448fffb 	addiu	t0,v0,-5
    10cc:	a0c8025a 	sb	t0,602(a2)
    10d0:	46062201 	sub.s	$f8,$f4,$f6
    10d4:	a0c800c8 	sb	t0,200(a2)
    10d8:	1000001f 	b	1158 <func_809EBD78+0x120>
    10dc:	e4c80054 	swc1	$f8,84(a2)
    10e0:	0c000000 	jal	0 <func_809EAD40>
    10e4:	00c02025 	move	a0,a2
    10e8:	1000001c 	b	115c <func_809EBD78+0x124>
    10ec:	8fbf0014 	lw	ra,20(sp)
    10f0:	c4ca0164 	lwc1	$f10,356(a2)
    10f4:	24010035 	li	at,53
    10f8:	00c02025 	move	a0,a2
    10fc:	4600540d 	trunc.w.s	$f16,$f10
    1100:	2405387a 	li	a1,14458
    1104:	44028000 	mfc1	v0,$f16
    1108:	00000000 	nop
    110c:	10410005 	beq	v0,at,1124 <func_809EBD78+0xec>
    1110:	24010038 	li	at,56
    1114:	10410003 	beq	v0,at,1124 <func_809EBD78+0xec>
    1118:	2401003d 	li	at,61
    111c:	54410009 	bnel	v0,at,1144 <func_809EBD78+0x10c>
    1120:	2401003d 	li	at,61
    1124:	0c000000 	jal	0 <func_809EAD40>
    1128:	afa60020 	sw	a2,32(sp)
    112c:	8fa60020 	lw	a2,32(sp)
    1130:	c4d20164 	lwc1	$f18,356(a2)
    1134:	4600910d 	trunc.w.s	$f4,$f18
    1138:	44022000 	mfc1	v0,$f4
    113c:	00000000 	nop
    1140:	2401003d 	li	at,61
    1144:	14410004 	bne	v0,at,1158 <func_809EBD78+0x120>
    1148:	8fa40024 	lw	a0,36(sp)
    114c:	24851c24 	addiu	a1,a0,7204
    1150:	0c000000 	jal	0 <func_809EAD40>
    1154:	24070006 	li	a3,6
    1158:	8fbf0014 	lw	ra,20(sp)
    115c:	27bd0020 	addiu	sp,sp,32
    1160:	03e00008 	jr	ra
    1164:	00000000 	nop

00001168 <func_809EBEA8>:
    1168:	27bdffc8 	addiu	sp,sp,-56
    116c:	afbf0024 	sw	ra,36(sp)
    1170:	afb00020 	sw	s0,32(sp)
    1174:	afa5003c 	sw	a1,60(sp)
    1178:	908202bd 	lbu	v0,701(a0)
    117c:	00808025 	move	s0,a0
    1180:	8ca61c44 	lw	a2,7236(a1)
    1184:	304f0002 	andi	t7,v0,0x2
    1188:	51e00047 	beqzl	t7,12a8 <func_809EBEA8+0x140>
    118c:	8fbf0024 	lw	ra,36(sp)
    1190:	90980251 	lbu	t8,593(a0)
    1194:	57000044 	bnezl	t8,12a8 <func_809EBEA8+0x140>
    1198:	8fbf0024 	lw	ra,36(sp)
    119c:	908300b1 	lbu	v1,177(a0)
    11a0:	3059fffd 	andi	t9,v0,0xfffd
    11a4:	a09902bd 	sb	t9,701(a0)
    11a8:	1060003e 	beqz	v1,12a4 <func_809EBEA8+0x13c>
    11ac:	24010006 	li	at,6
    11b0:	1061003c 	beq	v1,at,12a4 <func_809EBEA8+0x13c>
    11b4:	24054000 	li	a1,16384
    11b8:	8c8802c8 	lw	t0,712(a0)
    11bc:	00003825 	move	a3,zero
    11c0:	240d0008 	li	t5,8
    11c4:	a1000015 	sb	zero,21(t0)
    11c8:	8c8202c8 	lw	v0,712(a0)
    11cc:	90490015 	lbu	t1,21(v0)
    11d0:	a08902bc 	sb	t1,700(a0)
    11d4:	a0400005 	sb	zero,5(v0)
    11d8:	8c8202c8 	lw	v0,712(a0)
    11dc:	904a0005 	lbu	t2,5(v0)
    11e0:	ac4a0000 	sw	t2,0(v0)
    11e4:	80cb0844 	lb	t3,2116(a2)
    11e8:	51600004 	beqzl	t3,11fc <func_809EBEA8+0x94>
    11ec:	02002025 	move	a0,s0
    11f0:	90cc0845 	lbu	t4,2117(a2)
    11f4:	a08c0258 	sb	t4,600(a0)
    11f8:	02002025 	move	a0,s0
    11fc:	240600ff 	li	a2,255
    1200:	0c000000 	jal	0 <func_809EAD40>
    1204:	afad0010 	sw	t5,16(sp)
    1208:	920300af 	lbu	v1,175(s0)
    120c:	02002025 	move	a0,s0
    1210:	0c000000 	jal	0 <func_809EAD40>
    1214:	afa3002c 	sw	v1,44(sp)
    1218:	1440000a 	bnez	v0,1244 <func_809EBEA8+0xdc>
    121c:	8fa3002c 	lw	v1,44(sp)
    1220:	0c000000 	jal	0 <func_809EAD40>
    1224:	02002025 	move	a0,s0
    1228:	8fa4003c 	lw	a0,60(sp)
    122c:	02002825 	move	a1,s0
    1230:	26060024 	addiu	a2,s0,36
    1234:	0c000000 	jal	0 <func_809EAD40>
    1238:	24070090 	li	a3,144
    123c:	1000001a 	b	12a8 <func_809EBEA8+0x140>
    1240:	8fbf0024 	lw	ra,36(sp)
    1244:	2861000f 	slti	at,v1,15
    1248:	54200005 	bnezl	at,1260 <func_809EBEA8+0xf8>
    124c:	28610009 	slti	at,v1,9
    1250:	920e00af 	lbu	t6,175(s0)
    1254:	29c1000f 	slti	at,t6,15
    1258:	1420000d 	bnez	at,1290 <func_809EBEA8+0x128>
    125c:	28610009 	slti	at,v1,9
    1260:	54200005 	bnezl	at,1278 <func_809EBEA8+0x110>
    1264:	28610003 	slti	at,v1,3
    1268:	920f00af 	lbu	t7,175(s0)
    126c:	29e10009 	slti	at,t7,9
    1270:	14200007 	bnez	at,1290 <func_809EBEA8+0x128>
    1274:	28610003 	slti	at,v1,3
    1278:	14200008 	bnez	at,129c <func_809EBEA8+0x134>
    127c:	00000000 	nop
    1280:	921800af 	lbu	t8,175(s0)
    1284:	2b010003 	slti	at,t8,3
    1288:	10200004 	beqz	at,129c <func_809EBEA8+0x134>
    128c:	00000000 	nop
    1290:	92190251 	lbu	t9,593(s0)
    1294:	27280001 	addiu	t0,t9,1
    1298:	a2080251 	sb	t0,593(s0)
    129c:	0c000000 	jal	0 <func_809EAD40>
    12a0:	02002025 	move	a0,s0
    12a4:	8fbf0024 	lw	ra,36(sp)
    12a8:	8fb00020 	lw	s0,32(sp)
    12ac:	27bd0038 	addiu	sp,sp,56
    12b0:	03e00008 	jr	ra
    12b4:	00000000 	nop

000012b8 <EnDh_Update>:
    12b8:	27bdffb0 	addiu	sp,sp,-80
    12bc:	afbf002c 	sw	ra,44(sp)
    12c0:	afb20028 	sw	s2,40(sp)
    12c4:	afb10024 	sw	s1,36(sp)
    12c8:	afb00020 	sw	s0,32(sp)
    12cc:	8cae1c44 	lw	t6,7236(a1)
    12d0:	00808025 	move	s0,a0
    12d4:	00a08825 	move	s1,a1
    12d8:	0c000000 	jal	0 <func_809EAD40>
    12dc:	afae0044 	sw	t6,68(sp)
    12e0:	8e190254 	lw	t9,596(s0)
    12e4:	02002025 	move	a0,s0
    12e8:	02202825 	move	a1,s1
    12ec:	0320f809 	jalr	t9
    12f0:	00000000 	nop
    12f4:	0c000000 	jal	0 <func_809EAD40>
    12f8:	02002025 	move	a0,s0
    12fc:	3c014234 	lui	at,0x4234
    1300:	44810000 	mtc1	at,$f0
    1304:	240f001d 	li	t7,29
    1308:	afaf0014 	sw	t7,20(sp)
    130c:	44070000 	mfc1	a3,$f0
    1310:	02202025 	move	a0,s1
    1314:	02002825 	move	a1,s0
    1318:	3c0641a0 	lui	a2,0x41a0
    131c:	0c000000 	jal	0 <func_809EAD40>
    1320:	e7a00010 	swc1	$f0,16(sp)
    1324:	8e08030c 	lw	t0,780(s0)
    1328:	8e180310 	lw	t8,784(s0)
    132c:	26050260 	addiu	a1,s0,608
    1330:	ae080038 	sw	t0,56(s0)
    1334:	8e080314 	lw	t0,788(s0)
    1338:	ae18003c 	sw	t8,60(s0)
    133c:	02002025 	move	a0,s0
    1340:	ae080040 	sw	t0,64(s0)
    1344:	0c000000 	jal	0 <func_809EAD40>
    1348:	afa50034 	sw	a1,52(sp)
    134c:	920900af 	lbu	t1,175(s0)
    1350:	3c010001 	lui	at,0x1
    1354:	34211e60 	ori	at,at,0x1e60
    1358:	19200033 	blez	t1,1428 <EnDh_Update+0x170>
    135c:	02202025 	move	a0,s1
    1360:	920a025b 	lbu	t2,603(s0)
    1364:	3c010001 	lui	at,0x1
    1368:	34211e60 	ori	at,at,0x1e60
    136c:	1540000a 	bnez	t2,1398 <EnDh_Update+0xe0>
    1370:	02202025 	move	a0,s1
    1374:	3c010001 	lui	at,0x1
    1378:	34211e60 	ori	at,at,0x1e60
    137c:	02219021 	addu	s2,s1,at
    1380:	02402825 	move	a1,s2
    1384:	02202025 	move	a0,s1
    1388:	0c000000 	jal	0 <func_809EAD40>
    138c:	8fa60034 	lw	a2,52(sp)
    1390:	10000006 	b	13ac <EnDh_Update+0xf4>
    1394:	920b025b 	lbu	t3,603(s0)
    1398:	02219021 	addu	s2,s1,at
    139c:	02402825 	move	a1,s2
    13a0:	0c000000 	jal	0 <func_809EAD40>
    13a4:	8fa60034 	lw	a2,52(sp)
    13a8:	920b025b 	lbu	t3,603(s0)
    13ac:	24010006 	li	at,6
    13b0:	8fa20044 	lw	v0,68(sp)
    13b4:	51610008 	beql	t3,at,13d8 <EnDh_Update+0x120>
    13b8:	804c0844 	lb	t4,2116(v0)
    13bc:	44802000 	mtc1	zero,$f4
    13c0:	c60600bc 	lwc1	$f6,188(s0)
    13c4:	46062032 	c.eq.s	$f4,$f6
    13c8:	00000000 	nop
    13cc:	45030008 	bc1tl	13f0 <EnDh_Update+0x138>
    13d0:	260602ac 	addiu	a2,s0,684
    13d4:	804c0844 	lb	t4,2116(v0)
    13d8:	5180001c 	beqzl	t4,144c <EnDh_Update+0x194>
    13dc:	8fbf002c 	lw	ra,44(sp)
    13e0:	920d0258 	lbu	t5,600(s0)
    13e4:	904e0845 	lbu	t6,2117(v0)
    13e8:	11ae0017 	beq	t5,t6,1448 <EnDh_Update+0x190>
    13ec:	260602ac 	addiu	a2,s0,684
    13f0:	afa60038 	sw	a2,56(sp)
    13f4:	02202025 	move	a0,s1
    13f8:	0c000000 	jal	0 <func_809EAD40>
    13fc:	02402825 	move	a1,s2
    1400:	8fa60038 	lw	a2,56(sp)
    1404:	02202025 	move	a0,s1
    1408:	0c000000 	jal	0 <func_809EAD40>
    140c:	02402825 	move	a1,s2
    1410:	02202025 	move	a0,s1
    1414:	02402825 	move	a1,s2
    1418:	0c000000 	jal	0 <func_809EAD40>
    141c:	8fa60034 	lw	a2,52(sp)
    1420:	1000000a 	b	144c <EnDh_Update+0x194>
    1424:	8fbf002c 	lw	ra,44(sp)
    1428:	02219021 	addu	s2,s1,at
    142c:	02402825 	move	a1,s2
    1430:	0c000000 	jal	0 <func_809EAD40>
    1434:	8fa60034 	lw	a2,52(sp)
    1438:	02202025 	move	a0,s1
    143c:	02402825 	move	a1,s2
    1440:	0c000000 	jal	0 <func_809EAD40>
    1444:	260602ac 	addiu	a2,s0,684
    1448:	8fbf002c 	lw	ra,44(sp)
    144c:	8fb00020 	lw	s0,32(sp)
    1450:	8fb10024 	lw	s1,36(sp)
    1454:	8fb20028 	lw	s2,40(sp)
    1458:	03e00008 	jr	ra
    145c:	27bd0050 	addiu	sp,sp,80

00001460 <func_809EC1A0>:
    1460:	27bdffd8 	addiu	sp,sp,-40
    1464:	3c0e0000 	lui	t6,0x0
    1468:	afbf0014 	sw	ra,20(sp)
    146c:	afa40028 	sw	a0,40(sp)
    1470:	afa60030 	sw	a2,48(sp)
    1474:	afa70034 	sw	a3,52(sp)
    1478:	25ce0000 	addiu	t6,t6,0
    147c:	8dd80000 	lw	t8,0(t6)
    1480:	27a4001c 	addiu	a0,sp,28
    1484:	2401000d 	li	at,13
    1488:	ac980000 	sw	t8,0(a0)
    148c:	8dcf0004 	lw	t7,4(t6)
    1490:	ac8f0004 	sw	t7,4(a0)
    1494:	8dd80008 	lw	t8,8(t6)
    1498:	14a10011 	bne	a1,at,14e0 <func_809EC1A0+0x80>
    149c:	ac980008 	sw	t8,8(a0)
    14a0:	8fa50038 	lw	a1,56(sp)
    14a4:	0c000000 	jal	0 <func_809EAD40>
    14a8:	24a5030c 	addiu	a1,a1,780
    14ac:	0c000000 	jal	0 <func_809EAD40>
    14b0:	00000000 	nop
    14b4:	c7ac001c 	lwc1	$f12,28(sp)
    14b8:	c7ae0020 	lwc1	$f14,32(sp)
    14bc:	8fa60024 	lw	a2,36(sp)
    14c0:	0c000000 	jal	0 <func_809EAD40>
    14c4:	24070001 	li	a3,1
    14c8:	8fa50038 	lw	a1,56(sp)
    14cc:	24040001 	li	a0,1
    14d0:	0c000000 	jal	0 <func_809EAD40>
    14d4:	24a502ac 	addiu	a1,a1,684
    14d8:	0c000000 	jal	0 <func_809EAD40>
    14dc:	00000000 	nop
    14e0:	8fbf0014 	lw	ra,20(sp)
    14e4:	27bd0028 	addiu	sp,sp,40
    14e8:	03e00008 	jr	ra
    14ec:	00000000 	nop

000014f0 <EnDh_Draw>:
    14f0:	27bdff70 	addiu	sp,sp,-144
    14f4:	afb20040 	sw	s2,64(sp)
    14f8:	00a09025 	move	s2,a1
    14fc:	afbf0044 	sw	ra,68(sp)
    1500:	afb1003c 	sw	s1,60(sp)
    1504:	afb00038 	sw	s0,56(sp)
    1508:	8ca50000 	lw	a1,0(a1)
    150c:	00808825 	move	s1,a0
    1510:	3c060000 	lui	a2,0x0
    1514:	24c60000 	addiu	a2,a2,0
    1518:	27a40074 	addiu	a0,sp,116
    151c:	2407044b 	li	a3,1099
    1520:	0c000000 	jal	0 <func_809EAD40>
    1524:	00a08025 	move	s0,a1
    1528:	922e025a 	lbu	t6,602(s1)
    152c:	240100ff 	li	at,255
    1530:	15c10021 	bne	t6,at,15b8 <EnDh_Draw+0xc8>
    1534:	00000000 	nop
    1538:	0c000000 	jal	0 <func_809EAD40>
    153c:	8e440000 	lw	a0,0(s2)
    1540:	8e0302c0 	lw	v1,704(s0)
    1544:	3c18fb00 	lui	t8,0xfb00
    1548:	3c0bdb06 	lui	t3,0xdb06
    154c:	246f0008 	addiu	t7,v1,8
    1550:	ae0f02c0 	sw	t7,704(s0)
    1554:	ac780000 	sw	t8,0(v1)
    1558:	9229025a 	lbu	t1,602(s1)
    155c:	3c0c0000 	lui	t4,0x0
    1560:	258c0010 	addiu	t4,t4,16
    1564:	ac690004 	sw	t1,4(v1)
    1568:	8e0302c0 	lw	v1,704(s0)
    156c:	356b0020 	ori	t3,t3,0x20
    1570:	3c0d0000 	lui	t5,0x0
    1574:	246a0008 	addiu	t2,v1,8
    1578:	ae0a02c0 	sw	t2,704(s0)
    157c:	ac6c0004 	sw	t4,4(v1)
    1580:	ac6b0000 	sw	t3,0(v1)
    1584:	9227014e 	lbu	a3,334(s1)
    1588:	8e26016c 	lw	a2,364(s1)
    158c:	8e250150 	lw	a1,336(s1)
    1590:	25ad0000 	addiu	t5,t5,0
    1594:	afad0014 	sw	t5,20(sp)
    1598:	afb10018 	sw	s1,24(sp)
    159c:	afa00010 	sw	zero,16(sp)
    15a0:	8e0e02c0 	lw	t6,704(s0)
    15a4:	02402025 	move	a0,s2
    15a8:	0c000000 	jal	0 <func_809EAD40>
    15ac:	afae001c 	sw	t6,28(sp)
    15b0:	1000001e 	b	162c <EnDh_Draw+0x13c>
    15b4:	ae0202c0 	sw	v0,704(s0)
    15b8:	0c000000 	jal	0 <func_809EAD40>
    15bc:	8e440000 	lw	a0,0(s2)
    15c0:	8e0202d0 	lw	v0,720(s0)
    15c4:	3c18fb00 	lui	t8,0xfb00
    15c8:	3c0bdb06 	lui	t3,0xdb06
    15cc:	244f0008 	addiu	t7,v0,8
    15d0:	ae0f02d0 	sw	t7,720(s0)
    15d4:	ac580000 	sw	t8,0(v0)
    15d8:	9229025a 	lbu	t1,602(s1)
    15dc:	3c0c0000 	lui	t4,0x0
    15e0:	258c0000 	addiu	t4,t4,0
    15e4:	ac490004 	sw	t1,4(v0)
    15e8:	8e0202d0 	lw	v0,720(s0)
    15ec:	356b0020 	ori	t3,t3,0x20
    15f0:	02402025 	move	a0,s2
    15f4:	244a0008 	addiu	t2,v0,8
    15f8:	ae0a02d0 	sw	t2,720(s0)
    15fc:	ac4c0004 	sw	t4,4(v0)
    1600:	ac4b0000 	sw	t3,0(v0)
    1604:	9227014e 	lbu	a3,334(s1)
    1608:	8e26016c 	lw	a2,364(s1)
    160c:	8e250150 	lw	a1,336(s1)
    1610:	afb10018 	sw	s1,24(sp)
    1614:	afa00014 	sw	zero,20(sp)
    1618:	afa00010 	sw	zero,16(sp)
    161c:	8e0d02d0 	lw	t5,720(s0)
    1620:	0c000000 	jal	0 <func_809EAD40>
    1624:	afad001c 	sw	t5,28(sp)
    1628:	ae0202d0 	sw	v0,720(s0)
    162c:	922e0252 	lbu	t6,594(s1)
    1630:	11c0007f 	beqz	t6,1830 <EnDh_Draw+0x340>
    1634:	00000000 	nop
    1638:	0c000000 	jal	0 <func_809EAD40>
    163c:	8e440000 	lw	a0,0(s2)
    1640:	8e0202d0 	lw	v0,720(s0)
    1644:	3c195537 	lui	t9,0x5537
    1648:	37390082 	ori	t9,t9,0x82
    164c:	244f0008 	addiu	t7,v0,8
    1650:	ae0f02d0 	sw	t7,720(s0)
    1654:	3c18fb00 	lui	t8,0xfb00
    1658:	ac580000 	sw	t8,0(v0)
    165c:	ac590004 	sw	t9,4(v0)
    1660:	8e0202d0 	lw	v0,720(s0)
    1664:	3c0adb06 	lui	t2,0xdb06
    1668:	354a0020 	ori	t2,t2,0x20
    166c:	24490008 	addiu	t1,v0,8
    1670:	ae0902d0 	sw	t1,720(s0)
    1674:	ac4a0000 	sw	t2,0(v0)
    1678:	8e43009c 	lw	v1,156(s2)
    167c:	8e440000 	lw	a0,0(s2)
    1680:	240a0040 	li	t2,64
    1684:	00030823 	negu	at,v1
    1688:	00017080 	sll	t6,at,0x2
    168c:	0001c080 	sll	t8,at,0x2
    1690:	0301c021 	addu	t8,t8,at
    1694:	01c17021 	addu	t6,t6,at
    1698:	000e7040 	sll	t6,t6,0x1
    169c:	0018c080 	sll	t8,t8,0x2
    16a0:	00013080 	sll	a2,at,0x2
    16a4:	00c13023 	subu	a2,a2,at
    16a8:	331900ff 	andi	t9,t8,0xff
    16ac:	31cf007f 	andi	t7,t6,0x7f
    16b0:	24090020 	li	t1,32
    16b4:	240b0020 	li	t3,32
    16b8:	240c0040 	li	t4,64
    16bc:	240d0001 	li	t5,1
    16c0:	afad0018 	sw	t5,24(sp)
    16c4:	afac0014 	sw	t4,20(sp)
    16c8:	afab0010 	sw	t3,16(sp)
    16cc:	afa90024 	sw	t1,36(sp)
    16d0:	afaf001c 	sw	t7,28(sp)
    16d4:	afb90020 	sw	t9,32(sp)
    16d8:	30c6007f 	andi	a2,a2,0x7f
    16dc:	afaa0028 	sw	t2,40(sp)
    16e0:	00002825 	move	a1,zero
    16e4:	00003825 	move	a3,zero
    16e8:	0c000000 	jal	0 <func_809EAD40>
    16ec:	afa2005c 	sw	v0,92(sp)
    16f0:	8fa8005c 	lw	t0,92(sp)
    16f4:	3c0cfa00 	lui	t4,0xfa00
    16f8:	358c8080 	ori	t4,t4,0x8080
    16fc:	ad020004 	sw	v0,4(t0)
    1700:	8e0302d0 	lw	v1,720(s0)
    1704:	444df800 	cfc1	t5,$31
    1708:	240e0001 	li	t6,1
    170c:	246b0008 	addiu	t3,v1,8
    1710:	ae0b02d0 	sw	t3,720(s0)
    1714:	ac6c0000 	sw	t4,0(v1)
    1718:	44cef800 	ctc1	t6,$31
    171c:	c6240320 	lwc1	$f4,800(s1)
    1720:	3c014f00 	lui	at,0x4f00
    1724:	24070001 	li	a3,1
    1728:	460021a4 	cvt.w.s	$f6,$f4
    172c:	444ef800 	cfc1	t6,$31
    1730:	00000000 	nop
    1734:	31ce0078 	andi	t6,t6,0x78
    1738:	51c00013 	beqzl	t6,1788 <EnDh_Draw+0x298>
    173c:	440e3000 	mfc1	t6,$f6
    1740:	44813000 	mtc1	at,$f6
    1744:	240e0001 	li	t6,1
    1748:	46062181 	sub.s	$f6,$f4,$f6
    174c:	44cef800 	ctc1	t6,$31
    1750:	00000000 	nop
    1754:	460031a4 	cvt.w.s	$f6,$f6
    1758:	444ef800 	cfc1	t6,$31
    175c:	00000000 	nop
    1760:	31ce0078 	andi	t6,t6,0x78
    1764:	15c00005 	bnez	t6,177c <EnDh_Draw+0x28c>
    1768:	00000000 	nop
    176c:	440e3000 	mfc1	t6,$f6
    1770:	3c018000 	lui	at,0x8000
    1774:	10000007 	b	1794 <EnDh_Draw+0x2a4>
    1778:	01c17025 	or	t6,t6,at
    177c:	10000005 	b	1794 <EnDh_Draw+0x2a4>
    1780:	240effff 	li	t6,-1
    1784:	440e3000 	mfc1	t6,$f6
    1788:	00000000 	nop
    178c:	05c0fffb 	bltz	t6,177c <EnDh_Draw+0x28c>
    1790:	00000000 	nop
    1794:	44806000 	mtc1	zero,$f12
    1798:	31cf00ff 	andi	t7,t6,0xff
    179c:	ac6f0004 	sw	t7,4(v1)
    17a0:	44cdf800 	ctc1	t5,$31
    17a4:	c62e00bc 	lwc1	$f14,188(s1)
    17a8:	44066000 	mfc1	a2,$f12
    17ac:	0c000000 	jal	0 <func_809EAD40>
    17b0:	46007387 	neg.s	$f14,$f14
    17b4:	3c010000 	lui	at,0x0
    17b8:	c4200000 	lwc1	$f0,0(at)
    17bc:	c6280318 	lwc1	$f8,792(s1)
    17c0:	c62a031c 	lwc1	$f10,796(s1)
    17c4:	24070001 	li	a3,1
    17c8:	46004302 	mul.s	$f12,$f8,$f0
    17cc:	44066000 	mfc1	a2,$f12
    17d0:	46005382 	mul.s	$f14,$f10,$f0
    17d4:	0c000000 	jal	0 <func_809EAD40>
    17d8:	00000000 	nop
    17dc:	8e0202d0 	lw	v0,720(s0)
    17e0:	3c19da38 	lui	t9,0xda38
    17e4:	37390003 	ori	t9,t9,0x3
    17e8:	24580008 	addiu	t8,v0,8
    17ec:	ae1802d0 	sw	t8,720(s0)
    17f0:	3c050000 	lui	a1,0x0
    17f4:	ac590000 	sw	t9,0(v0)
    17f8:	8e440000 	lw	a0,0(s2)
    17fc:	24a50000 	addiu	a1,a1,0
    1800:	24060488 	li	a2,1160
    1804:	0c000000 	jal	0 <func_809EAD40>
    1808:	00408825 	move	s1,v0
    180c:	ae220004 	sw	v0,4(s1)
    1810:	8e0202d0 	lw	v0,720(s0)
    1814:	3c0b0600 	lui	t3,0x600
    1818:	256b7fc0 	addiu	t3,t3,32704
    181c:	24490008 	addiu	t1,v0,8
    1820:	ae0902d0 	sw	t1,720(s0)
    1824:	3c0ade00 	lui	t2,0xde00
    1828:	ac4a0000 	sw	t2,0(v0)
    182c:	ac4b0004 	sw	t3,4(v0)
    1830:	3c060000 	lui	a2,0x0
    1834:	24c60000 	addiu	a2,a2,0
    1838:	27a40074 	addiu	a0,sp,116
    183c:	8e450000 	lw	a1,0(s2)
    1840:	0c000000 	jal	0 <func_809EAD40>
    1844:	2407048e 	li	a3,1166
    1848:	8fbf0044 	lw	ra,68(sp)
    184c:	8fb00038 	lw	s0,56(sp)
    1850:	8fb1003c 	lw	s1,60(sp)
    1854:	8fb20040 	lw	s2,64(sp)
    1858:	03e00008 	jr	ra
    185c:	27bd0090 	addiu	sp,sp,144
