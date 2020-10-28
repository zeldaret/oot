
build/src/overlays/actors/ovl_En_Zf/z_en_zf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B44050>:
       0:	03e00008 	jr	ra
       4:	ac8503e8 	sw	a1,1000(a0)

00000008 <func_80B44058>:
       8:	44866000 	mtc1	a2,$f12
       c:	44801000 	mtc1	zero,$f2
      10:	27bdffb8 	addiu	sp,sp,-72
      14:	afb00020 	sw	s0,32(sp)
      18:	46026032 	c.eq.s	$f12,$f2
      1c:	00808025 	move	s0,a0
      20:	afbf0024 	sw	ra,36(sp)
      24:	afa5004c 	sw	a1,76(sp)
      28:	4500001b 	bc1f	98 <func_80B44058+0x90>
      2c:	26020024 	addiu	v0,s0,36
      30:	c4840068 	lwc1	$f4,104(a0)
      34:	3c01bf80 	lui	at,0xbf80
      38:	4604103e 	c.le.s	$f2,$f4
      3c:	00000000 	nop
      40:	45020006 	bc1fl	5c <func_80B44058+0x54>
      44:	44816000 	mtc1	at,$f12
      48:	3c013f80 	lui	at,0x3f80
      4c:	44816000 	mtc1	at,$f12
      50:	10000004 	b	64 <func_80B44058+0x5c>
      54:	860e001c 	lh	t6,28(s0)
      58:	44816000 	mtc1	at,$f12
      5c:	00000000 	nop
      60:	860e001c 	lh	t6,28(s0)
      64:	3c0141f0 	lui	at,0x41f0
      68:	05c20008 	bltzl	t6,8c <func_80B44058+0x84>
      6c:	44814000 	mtc1	at,$f8
      70:	3c014234 	lui	at,0x4234
      74:	44813000 	mtc1	at,$f6
      78:	00000000 	nop
      7c:	46066302 	mul.s	$f12,$f12,$f6
      80:	10000006 	b	9c <func_80B44058+0x94>
      84:	8c590000 	lw	t9,0(v0)
      88:	44814000 	mtc1	at,$f8
      8c:	00000000 	nop
      90:	46086302 	mul.s	$f12,$f12,$f8
      94:	00000000 	nop
      98:	8c590000 	lw	t9,0(v0)
      9c:	27af0030 	addiu	t7,sp,48
      a0:	adf90000 	sw	t9,0(t7)
      a4:	8c580004 	lw	t8,4(v0)
      a8:	adf80004 	sw	t8,4(t7)
      ac:	8c590008 	lw	t9,8(v0)
      b0:	adf90008 	sw	t9,8(t7)
      b4:	96080088 	lhu	t0,136(s0)
      b8:	a7a80044 	sh	t0,68(sp)
      bc:	86040032 	lh	a0,50(s0)
      c0:	e7ac0050 	swc1	$f12,80(sp)
      c4:	0c000000 	jal	0 <func_80B44050>
      c8:	afa20028 	sw	v0,40(sp)
      cc:	c7ac0050 	lwc1	$f12,80(sp)
      d0:	460c0282 	mul.s	$f10,$f0,$f12
      d4:	e7aa0040 	swc1	$f10,64(sp)
      d8:	0c000000 	jal	0 <func_80B44050>
      dc:	86040032 	lh	a0,50(s0)
      e0:	c7ac0050 	lwc1	$f12,80(sp)
      e4:	c6100024 	lwc1	$f16,36(s0)
      e8:	c7b20040 	lwc1	$f18,64(sp)
      ec:	460c0202 	mul.s	$f8,$f0,$f12
      f0:	c606002c 	lwc1	$f6,44(s0)
      f4:	46128100 	add.s	$f4,$f16,$f18
      f8:	44801000 	mtc1	zero,$f2
      fc:	2409001c 	li	t1,28
     100:	02002825 	move	a1,s0
     104:	e6040024 	swc1	$f4,36(s0)
     108:	46083280 	add.s	$f10,$f6,$f8
     10c:	44061000 	mfc1	a2,$f2
     110:	44071000 	mfc1	a3,$f2
     114:	e60a002c 	swc1	$f10,44(s0)
     118:	afa90014 	sw	t1,20(sp)
     11c:	8fa4004c 	lw	a0,76(sp)
     120:	0c000000 	jal	0 <func_80B44050>
     124:	e7a20010 	swc1	$f2,16(sp)
     128:	27ab0030 	addiu	t3,sp,48
     12c:	8d6d0000 	lw	t5,0(t3)
     130:	8faa0028 	lw	t2,40(sp)
     134:	ad4d0000 	sw	t5,0(t2)
     138:	8d6c0004 	lw	t4,4(t3)
     13c:	ad4c0004 	sw	t4,4(t2)
     140:	8d6d0008 	lw	t5,8(t3)
     144:	ad4d0008 	sw	t5,8(t2)
     148:	87ae0044 	lh	t6,68(sp)
     14c:	96030088 	lhu	v1,136(s0)
     150:	a60e0088 	sh	t6,136(s0)
     154:	8fbf0024 	lw	ra,36(sp)
     158:	30630001 	andi	v1,v1,0x1
     15c:	2c630001 	sltiu	v1,v1,1
     160:	00031400 	sll	v0,v1,0x10
     164:	8fb00020 	lw	s0,32(sp)
     168:	27bd0048 	addiu	sp,sp,72
     16c:	03e00008 	jr	ra
     170:	00021403 	sra	v0,v0,0x10

00000174 <func_80B441C4>:
     174:	27bdffb8 	addiu	sp,sp,-72
     178:	afbf0024 	sw	ra,36(sp)
     17c:	afb00020 	sw	s0,32(sp)
     180:	afa5004c 	sw	a1,76(sp)
     184:	afa60050 	sw	a2,80(sp)
     188:	c4800068 	lwc1	$f0,104(a0)
     18c:	44802000 	mtc1	zero,$f4
     190:	00808025 	move	s0,a0
     194:	46002032 	c.eq.s	$f4,$f0
     198:	00000000 	nop
     19c:	45030009 	bc1tl	1c4 <func_80B441C4+0x50>
     1a0:	26020024 	addiu	v0,s0,36
     1a4:	44060000 	mfc1	a2,$f0
     1a8:	0c000000 	jal	0 <func_80B44050>
     1ac:	00000000 	nop
     1b0:	50400004 	beqzl	v0,1c4 <func_80B441C4+0x50>
     1b4:	26020024 	addiu	v0,s0,36
     1b8:	10000034 	b	28c <func_80B441C4+0x118>
     1bc:	24020001 	li	v0,1
     1c0:	26020024 	addiu	v0,s0,36
     1c4:	8c580000 	lw	t8,0(v0)
     1c8:	27ae0030 	addiu	t6,sp,48
     1cc:	add80000 	sw	t8,0(t6)
     1d0:	8c4f0004 	lw	t7,4(v0)
     1d4:	adcf0004 	sw	t7,4(t6)
     1d8:	8c580008 	lw	t8,8(v0)
     1dc:	add80008 	sw	t8,8(t6)
     1e0:	96190088 	lhu	t9,136(s0)
     1e4:	a7b90044 	sh	t9,68(sp)
     1e8:	860400b6 	lh	a0,182(s0)
     1ec:	0c000000 	jal	0 <func_80B44050>
     1f0:	afa20028 	sw	v0,40(sp)
     1f4:	c7a60050 	lwc1	$f6,80(sp)
     1f8:	46060202 	mul.s	$f8,$f0,$f6
     1fc:	e7a80040 	swc1	$f8,64(sp)
     200:	0c000000 	jal	0 <func_80B44050>
     204:	860400b6 	lh	a0,182(s0)
     208:	c60a0024 	lwc1	$f10,36(s0)
     20c:	c7b00040 	lwc1	$f16,64(sp)
     210:	c604002c 	lwc1	$f4,44(s0)
     214:	44801000 	mtc1	zero,$f2
     218:	46105480 	add.s	$f18,$f10,$f16
     21c:	2408001c 	li	t0,28
     220:	44061000 	mfc1	a2,$f2
     224:	44071000 	mfc1	a3,$f2
     228:	e6120024 	swc1	$f18,36(s0)
     22c:	c7a60050 	lwc1	$f6,80(sp)
     230:	02002825 	move	a1,s0
     234:	46060202 	mul.s	$f8,$f0,$f6
     238:	46082280 	add.s	$f10,$f4,$f8
     23c:	e60a002c 	swc1	$f10,44(s0)
     240:	afa80014 	sw	t0,20(sp)
     244:	8fa4004c 	lw	a0,76(sp)
     248:	0c000000 	jal	0 <func_80B44050>
     24c:	e7a20010 	swc1	$f2,16(sp)
     250:	27aa0030 	addiu	t2,sp,48
     254:	8d4c0000 	lw	t4,0(t2)
     258:	8fa90028 	lw	t1,40(sp)
     25c:	ad2c0000 	sw	t4,0(t1)
     260:	8d4b0004 	lw	t3,4(t2)
     264:	ad2b0004 	sw	t3,4(t1)
     268:	8d4c0008 	lw	t4,8(t2)
     26c:	ad2c0008 	sw	t4,8(t1)
     270:	96030088 	lhu	v1,136(s0)
     274:	87ad0044 	lh	t5,68(sp)
     278:	30630001 	andi	v1,v1,0x1
     27c:	2c630001 	sltiu	v1,v1,1
     280:	00031400 	sll	v0,v1,0x10
     284:	00021403 	sra	v0,v0,0x10
     288:	a60d0088 	sh	t5,136(s0)
     28c:	8fbf0024 	lw	ra,36(sp)
     290:	8fb00020 	lw	s0,32(sp)
     294:	27bd0048 	addiu	sp,sp,72
     298:	03e00008 	jr	ra
     29c:	00000000 	nop

000002a0 <EnZf_Init>:
     2a0:	27bdfe08 	addiu	sp,sp,-504
     2a4:	afbf002c 	sw	ra,44(sp)
     2a8:	afb10028 	sw	s1,40(sp)
     2ac:	afb00024 	sw	s0,36(sp)
     2b0:	8cae1c44 	lw	t6,7236(a1)
     2b4:	00a08825 	move	s1,a1
     2b8:	3c050000 	lui	a1,0x0
     2bc:	00808025 	move	s0,a0
     2c0:	24a50000 	addiu	a1,a1,0
     2c4:	0c000000 	jal	0 <func_80B44050>
     2c8:	afae01ec 	sw	t6,492(sp)
     2cc:	8609001c 	lh	t1,28(s0)
     2d0:	8618001c 	lh	t8,28(s0)
     2d4:	240f0003 	li	t7,3
     2d8:	312a00ff 	andi	t2,t1,0xff
     2dc:	a60a001c 	sh	t2,28(s0)
     2e0:	8602001c 	lh	v0,28(s0)
     2e4:	3319ff00 	andi	t9,t8,0xff00
     2e8:	00194203 	sra	t0,t9,0x8
     2ec:	304b0080 	andi	t3,v0,0x80
     2f0:	a20f001f 	sb	t7,31(s0)
     2f4:	11600003 	beqz	t3,304 <EnZf_Init+0x64>
     2f8:	a60803fc 	sh	t0,1020(s0)
     2fc:	344cff00 	ori	t4,v0,0xff00
     300:	a60c001c 	sh	t4,28(s0)
     304:	3c060000 	lui	a2,0x0
     308:	24c60000 	addiu	a2,a2,0
     30c:	260400b4 	addiu	a0,s0,180
     310:	24050000 	li	a1,0
     314:	0c000000 	jal	0 <func_80B44050>
     318:	3c0742b4 	lui	a3,0x42b4
     31c:	3c0e0000 	lui	t6,0x0
     320:	240d00fe 	li	t5,254
     324:	25ce0000 	addiu	t6,t6,0
     328:	ae0003e0 	sw	zero,992(s0)
     32c:	a20d00ae 	sb	t5,174(s0)
     330:	ae0e0098 	sw	t6,152(s0)
     334:	240200ff 	li	v0,255
     338:	240f00ff 	li	t7,255
     33c:	24180040 	li	t8,64
     340:	24190008 	li	t9,8
     344:	24080002 	li	t0,2
     348:	27a9004c 	addiu	t1,sp,76
     34c:	a3af01de 	sb	t7,478(sp)
     350:	a3a201dd 	sb	v0,477(sp)
     354:	a3a201dc 	sb	v0,476(sp)
     358:	a3a201da 	sb	v0,474(sp)
     35c:	a3a201d9 	sb	v0,473(sp)
     360:	a3a201d8 	sb	v0,472(sp)
     364:	a3a201d6 	sb	v0,470(sp)
     368:	a3a201d5 	sb	v0,469(sp)
     36c:	a3a201d4 	sb	v0,468(sp)
     370:	a3a201d3 	sb	v0,467(sp)
     374:	a3a201d2 	sb	v0,466(sp)
     378:	a3a201d1 	sb	v0,465(sp)
     37c:	a3a201d0 	sb	v0,464(sp)
     380:	a3b801d7 	sb	t8,471(sp)
     384:	a3a001db 	sb	zero,475(sp)
     388:	a3a001df 	sb	zero,479(sp)
     38c:	afb901e0 	sw	t9,480(sp)
     390:	afa001e4 	sw	zero,484(sp)
     394:	afa801e8 	sw	t0,488(sp)
     398:	afa90014 	sw	t1,20(sp)
     39c:	afa00010 	sw	zero,16(sp)
     3a0:	02202025 	move	a0,s1
     3a4:	26050414 	addiu	a1,s0,1044
     3a8:	24060001 	li	a2,1
     3ac:	0c000000 	jal	0 <func_80B44050>
     3b0:	00003825 	move	a3,zero
     3b4:	3c014234 	lui	at,0x4234
     3b8:	44810000 	mtc1	at,$f0
     3bc:	240a001d 	li	t2,29
     3c0:	afaa0014 	sw	t2,20(sp)
     3c4:	44070000 	mfc1	a3,$f0
     3c8:	02202025 	move	a0,s1
     3cc:	02002825 	move	a1,s0
     3d0:	3c064296 	lui	a2,0x4296
     3d4:	0c000000 	jal	0 <func_80B44050>
     3d8:	e7a00010 	swc1	$f0,16(sp)
     3dc:	240b00ff 	li	t3,255
     3e0:	240c0028 	li	t4,40
     3e4:	240d0064 	li	t5,100
     3e8:	a20b0404 	sb	t3,1028(s0)
     3ec:	a60c00a8 	sh	t4,168(s0)
     3f0:	a60d00aa 	sh	t5,170(s0)
     3f4:	26050418 	addiu	a1,s0,1048
     3f8:	afa50030 	sw	a1,48(sp)
     3fc:	0c000000 	jal	0 <func_80B44050>
     400:	02202025 	move	a0,s1
     404:	3c070000 	lui	a3,0x0
     408:	8fa50030 	lw	a1,48(sp)
     40c:	24e70000 	addiu	a3,a3,0
     410:	02202025 	move	a0,s1
     414:	0c000000 	jal	0 <func_80B44050>
     418:	02003025 	move	a2,s0
     41c:	26050464 	addiu	a1,s0,1124
     420:	afa50030 	sw	a1,48(sp)
     424:	0c000000 	jal	0 <func_80B44050>
     428:	02202025 	move	a0,s1
     42c:	3c070000 	lui	a3,0x0
     430:	8fa50030 	lw	a1,48(sp)
     434:	24e70000 	addiu	a3,a3,0
     438:	02202025 	move	a0,s1
     43c:	0c000000 	jal	0 <func_80B44050>
     440:	02003025 	move	a2,s0
     444:	860e001c 	lh	t6,28(s0)
     448:	2401fffe 	li	at,-2
     44c:	240a0006 	li	t2,6
     450:	15c10014 	bne	t6,at,4a4 <EnZf_Init+0x204>
     454:	240b000f 	li	t3,15
     458:	240f000c 	li	t7,12
     45c:	24180010 	li	t8,16
     460:	a20f00af 	sb	t7,175(s0)
     464:	a2180117 	sb	t8,279(s0)
     468:	3c060600 	lui	a2,0x600
     46c:	3c070601 	lui	a3,0x601
     470:	26190190 	addiu	t9,s0,400
     474:	260802b6 	addiu	t0,s0,694
     478:	24090031 	li	t1,49
     47c:	afa90018 	sw	t1,24(sp)
     480:	afa80014 	sw	t0,20(sp)
     484:	afb90010 	sw	t9,16(sp)
     488:	24e7b10c 	addiu	a3,a3,-20212
     48c:	24c66690 	addiu	a2,a2,26256
     490:	02202025 	move	a0,s1
     494:	0c000000 	jal	0 <func_80B44050>
     498:	2605014c 	addiu	a1,s0,332
     49c:	10000011 	b	4e4 <EnZf_Init+0x244>
     4a0:	860f001c 	lh	t7,28(s0)
     4a4:	a20a00af 	sb	t2,175(s0)
     4a8:	a20b0117 	sb	t3,279(s0)
     4ac:	3c060601 	lui	a2,0x601
     4b0:	3c070601 	lui	a3,0x601
     4b4:	260c0190 	addiu	t4,s0,400
     4b8:	260d02b6 	addiu	t5,s0,694
     4bc:	240e0031 	li	t6,49
     4c0:	afae0018 	sw	t6,24(sp)
     4c4:	afad0014 	sw	t5,20(sp)
     4c8:	afac0010 	sw	t4,16(sp)
     4cc:	24e7b10c 	addiu	a3,a3,-20212
     4d0:	24c604b8 	addiu	a2,a2,1208
     4d4:	02202025 	move	a0,s1
     4d8:	0c000000 	jal	0 <func_80B44050>
     4dc:	2605014c 	addiu	a1,s0,332
     4e0:	860f001c 	lh	t7,28(s0)
     4e4:	2402ffff 	li	v0,-1
     4e8:	8fa901ec 	lw	t1,492(sp)
     4ec:	05e10013 	bgez	t7,53c <EnZf_Init+0x29c>
     4f0:	3c0142c8 	lui	at,0x42c8
     4f4:	a60203fe 	sh	v0,1022(s0)
     4f8:	861803fe 	lh	t8,1022(s0)
     4fc:	3c010000 	lui	at,0x0
     500:	24190001 	li	t9,1
     504:	a6180400 	sh	t8,1024(s0)
     508:	a4220000 	sh	v0,0(at)
     50c:	8608001c 	lh	t0,28(s0)
     510:	ae1903e4 	sw	t9,996(s0)
     514:	14480005 	bne	v0,t0,52c <EnZf_Init+0x28c>
     518:	00000000 	nop
     51c:	0c000000 	jal	0 <func_80B44050>
     520:	02002025 	move	a0,s0
     524:	10000027 	b	5c4 <EnZf_Init+0x324>
     528:	8fbf002c 	lw	ra,44(sp)
     52c:	0c000000 	jal	0 <func_80B44050>
     530:	02002025 	move	a0,s0
     534:	10000023 	b	5c4 <EnZf_Init+0x324>
     538:	8fbf002c 	lw	ra,44(sp)
     53c:	c5240028 	lwc1	$f4,40(t1)
     540:	c6060028 	lwc1	$f6,40(s0)
     544:	44804000 	mtc1	zero,$f8
     548:	44815000 	mtc1	at,$f10
     54c:	46062001 	sub.s	$f0,$f4,$f6
     550:	02202025 	move	a0,s1
     554:	4600403e 	c.le.s	$f8,$f0
     558:	00000000 	nop
     55c:	45020004 	bc1fl	570 <EnZf_Init+0x2d0>
     560:	46000087 	neg.s	$f2,$f0
     564:	10000002 	b	570 <EnZf_Init+0x2d0>
     568:	46000086 	mov.s	$f2,$f0
     56c:	46000087 	neg.s	$f2,$f0
     570:	460a103e 	c.le.s	$f2,$f10
     574:	00000000 	nop
     578:	4500000f 	bc1f	5b8 <EnZf_Init+0x318>
     57c:	00000000 	nop
     580:	0c000000 	jal	0 <func_80B44050>
     584:	860503fc 	lh	a1,1020(s0)
     588:	1440000b 	bnez	v0,5b8 <EnZf_Init+0x318>
     58c:	26040024 	addiu	a0,s0,36
     590:	0c000000 	jal	0 <func_80B44050>
     594:	00002825 	move	a1,zero
     598:	a60203fe 	sh	v0,1022(s0)
     59c:	a6020400 	sh	v0,1024(s0)
     5a0:	0c000000 	jal	0 <func_80B44050>
     5a4:	02002025 	move	a0,s0
     5a8:	240a0001 	li	t2,1
     5ac:	3c010000 	lui	at,0x0
     5b0:	10000003 	b	5c0 <EnZf_Init+0x320>
     5b4:	a42a0000 	sh	t2,0(at)
     5b8:	0c000000 	jal	0 <func_80B44050>
     5bc:	02002025 	move	a0,s0
     5c0:	8fbf002c 	lw	ra,44(sp)
     5c4:	8fb00024 	lw	s0,36(sp)
     5c8:	8fb10028 	lw	s1,40(sp)
     5cc:	03e00008 	jr	ra
     5d0:	27bd01f8 	addiu	sp,sp,504

000005d4 <EnZf_Destroy>:
     5d4:	27bdffd8 	addiu	sp,sp,-40
     5d8:	afbf0024 	sw	ra,36(sp)
     5dc:	afb00020 	sw	s0,32(sp)
     5e0:	afa5002c 	sw	a1,44(sp)
     5e4:	848e001c 	lh	t6,28(a0)
     5e8:	00808025 	move	s0,a0
     5ec:	00a02025 	move	a0,a1
     5f0:	05c0000b 	bltz	t6,620 <EnZf_Destroy+0x4c>
     5f4:	02002825 	move	a1,s0
     5f8:	3c010000 	lui	at,0x0
     5fc:	c4240000 	lwc1	$f4,0(at)
     600:	24060025 	li	a2,37
     604:	24070005 	li	a3,5
     608:	0c000000 	jal	0 <func_80B44050>
     60c:	e7a40010 	swc1	$f4,16(sp)
     610:	54400004 	bnezl	v0,624 <EnZf_Destroy+0x50>
     614:	8fa4002c 	lw	a0,44(sp)
     618:	0c000000 	jal	0 <func_80B44050>
     61c:	00000000 	nop
     620:	8fa4002c 	lw	a0,44(sp)
     624:	0c000000 	jal	0 <func_80B44050>
     628:	8e050414 	lw	a1,1044(s0)
     62c:	8fa4002c 	lw	a0,44(sp)
     630:	0c000000 	jal	0 <func_80B44050>
     634:	26050418 	addiu	a1,s0,1048
     638:	8fa4002c 	lw	a0,44(sp)
     63c:	0c000000 	jal	0 <func_80B44050>
     640:	26050464 	addiu	a1,s0,1124
     644:	8fbf0024 	lw	ra,36(sp)
     648:	8fb00020 	lw	s0,32(sp)
     64c:	27bd0028 	addiu	sp,sp,40
     650:	03e00008 	jr	ra
     654:	00000000 	nop

00000658 <func_80B446A8>:
     658:	3c014352 	lui	at,0x4352
     65c:	44810000 	mtc1	at,$f0
     660:	afa50004 	sw	a1,4(sp)
     664:	3c0143d2 	lui	at,0x43d2
     668:	44812000 	mtc1	at,$f4
     66c:	c4820004 	lwc1	$f2,4(a0)
     670:	00052c00 	sll	a1,a1,0x10
     674:	00052c03 	sra	a1,a1,0x10
     678:	4602203e 	c.le.s	$f4,$f2
     67c:	3c0142dc 	lui	at,0x42dc
     680:	2407000c 	li	a3,12
     684:	24030017 	li	v1,23
     688:	45020004 	bc1fl	69c <func_80B446A8+0x44>
     68c:	2401ffff 	li	at,-1
     690:	44810000 	mtc1	at,$f0
     694:	00000000 	nop
     698:	2401ffff 	li	at,-1
     69c:	50a1002e 	beql	a1,at,758 <func_80B446A8+0x100>
     6a0:	3c014316 	lui	at,0x4316
     6a4:	00a70019 	multu	a1,a3
     6a8:	3c060000 	lui	a2,0x0
     6ac:	24c60000 	addiu	a2,a2,0
     6b0:	3c014316 	lui	at,0x4316
     6b4:	44818000 	mtc1	at,$f16
     6b8:	00007012 	mflo	t6
     6bc:	00ce1021 	addu	v0,a2,t6
     6c0:	c44c0004 	lwc1	$f12,4(v0)
     6c4:	46106181 	sub.s	$f6,$f12,$f16
     6c8:	4602303e 	c.le.s	$f6,$f2
     6cc:	00000000 	nop
     6d0:	45020021 	bc1fl	758 <func_80B446A8+0x100>
     6d4:	3c014316 	lui	at,0x4316
     6d8:	46106200 	add.s	$f8,$f12,$f16
     6dc:	4608103e 	c.le.s	$f2,$f8
     6e0:	00000000 	nop
     6e4:	4502001c 	bc1fl	758 <func_80B446A8+0x100>
     6e8:	3c014316 	lui	at,0x4316
     6ec:	c44e0000 	lwc1	$f14,0(v0)
     6f0:	c48c0000 	lwc1	$f12,0(a0)
     6f4:	46007281 	sub.s	$f10,$f14,$f0
     6f8:	460c503e 	c.le.s	$f10,$f12
     6fc:	00000000 	nop
     700:	45020015 	bc1fl	758 <func_80B446A8+0x100>
     704:	3c014316 	lui	at,0x4316
     708:	46007480 	add.s	$f18,$f14,$f0
     70c:	4612603e 	c.le.s	$f12,$f18
     710:	00000000 	nop
     714:	45020010 	bc1fl	758 <func_80B446A8+0x100>
     718:	3c014316 	lui	at,0x4316
     71c:	c44e0008 	lwc1	$f14,8(v0)
     720:	c48c0008 	lwc1	$f12,8(a0)
     724:	46007101 	sub.s	$f4,$f14,$f0
     728:	460c203e 	c.le.s	$f4,$f12
     72c:	00000000 	nop
     730:	45020009 	bc1fl	758 <func_80B446A8+0x100>
     734:	3c014316 	lui	at,0x4316
     738:	46007180 	add.s	$f6,$f14,$f0
     73c:	4606603e 	c.le.s	$f12,$f6
     740:	00000000 	nop
     744:	45020004 	bc1fl	758 <func_80B446A8+0x100>
     748:	3c014316 	lui	at,0x4316
     74c:	03e00008 	jr	ra
     750:	00a01025 	move	v0,a1
     754:	3c014316 	lui	at,0x4316
     758:	3c060000 	lui	a2,0x0
     75c:	44818000 	mtc1	at,$f16
     760:	24c60000 	addiu	a2,a2,0
     764:	2407000c 	li	a3,12
     768:	00670019 	multu	v1,a3
     76c:	00007812 	mflo	t7
     770:	00cf1021 	addu	v0,a2,t7
     774:	c44c0004 	lwc1	$f12,4(v0)
     778:	46106201 	sub.s	$f8,$f12,$f16
     77c:	4602403e 	c.le.s	$f8,$f2
     780:	00000000 	nop
     784:	4502001f 	bc1fl	804 <func_80B446A8+0x1ac>
     788:	2463ffff 	addiu	v1,v1,-1
     78c:	46106280 	add.s	$f10,$f12,$f16
     790:	460a103e 	c.le.s	$f2,$f10
     794:	00000000 	nop
     798:	4502001a 	bc1fl	804 <func_80B446A8+0x1ac>
     79c:	2463ffff 	addiu	v1,v1,-1
     7a0:	c44e0000 	lwc1	$f14,0(v0)
     7a4:	c48c0000 	lwc1	$f12,0(a0)
     7a8:	46007481 	sub.s	$f18,$f14,$f0
     7ac:	460c903e 	c.le.s	$f18,$f12
     7b0:	00000000 	nop
     7b4:	45020013 	bc1fl	804 <func_80B446A8+0x1ac>
     7b8:	2463ffff 	addiu	v1,v1,-1
     7bc:	46007100 	add.s	$f4,$f14,$f0
     7c0:	4604603e 	c.le.s	$f12,$f4
     7c4:	00000000 	nop
     7c8:	4502000e 	bc1fl	804 <func_80B446A8+0x1ac>
     7cc:	2463ffff 	addiu	v1,v1,-1
     7d0:	c44e0008 	lwc1	$f14,8(v0)
     7d4:	c48c0008 	lwc1	$f12,8(a0)
     7d8:	46007181 	sub.s	$f6,$f14,$f0
     7dc:	460c303e 	c.le.s	$f6,$f12
     7e0:	00000000 	nop
     7e4:	45020007 	bc1fl	804 <func_80B446A8+0x1ac>
     7e8:	2463ffff 	addiu	v1,v1,-1
     7ec:	46007200 	add.s	$f8,$f14,$f0
     7f0:	4608603e 	c.le.s	$f12,$f8
     7f4:	00000000 	nop
     7f8:	45030007 	bc1tl	818 <func_80B446A8+0x1c0>
     7fc:	00601025 	move	v0,v1
     800:	2463ffff 	addiu	v1,v1,-1
     804:	00031c00 	sll	v1,v1,0x10
     808:	00031c03 	sra	v1,v1,0x10
     80c:	0461ffd6 	bgez	v1,768 <func_80B446A8+0x110>
     810:	00000000 	nop
     814:	00601025 	move	v0,v1
     818:	03e00008 	jr	ra
     81c:	00000000 	nop

00000820 <func_80B44870>:
     820:	27bdff68 	addiu	sp,sp,-152
     824:	f7b80028 	sdc1	$f24,40(sp)
     828:	3c010000 	lui	at,0x0
     82c:	f7ba0030 	sdc1	$f26,48(sp)
     830:	c4380000 	lwc1	$f24,0(at)
     834:	afbf005c 	sw	ra,92(sp)
     838:	afbe0058 	sw	s8,88(sp)
     83c:	afb70054 	sw	s7,84(sp)
     840:	afb60050 	sw	s6,80(sp)
     844:	afb5004c 	sw	s5,76(sp)
     848:	afb40048 	sw	s4,72(sp)
     84c:	afb30044 	sw	s3,68(sp)
     850:	afb20040 	sw	s2,64(sp)
     854:	afb1003c 	sw	s1,60(sp)
     858:	afb00038 	sw	s0,56(sp)
     85c:	f7b60020 	sdc1	$f22,32(sp)
     860:	f7b40018 	sdc1	$f20,24(sp)
     864:	afa40098 	sw	a0,152(sp)
     868:	afa5009c 	sw	a1,156(sp)
     86c:	afa600a0 	sw	a2,160(sp)
     870:	3c0143c8 	lui	at,0x43c8
     874:	8ce21c44 	lw	v0,7236(a3)
     878:	4481d000 	mtc1	at,$f26
     87c:	0005f400 	sll	s8,a1,0x10
     880:	3c010000 	lui	at,0x0
     884:	001ef403 	sra	s8,s8,0x10
     888:	c4340000 	lwc1	$f20,0(at)
     88c:	3c010000 	lui	at,0x0
     890:	001e2c00 	sll	a1,s8,0x10
     894:	24440024 	addiu	a0,v0,36
     898:	24100005 	li	s0,5
     89c:	0000b825 	move	s7,zero
     8a0:	c4360000 	lwc1	$f22,0(at)
     8a4:	2414ffff 	li	s4,-1
     8a8:	2415ffff 	li	s5,-1
     8ac:	afa40064 	sw	a0,100(sp)
     8b0:	0c000000 	jal	0 <func_80B44050>
     8b4:	00052c03 	sra	a1,a1,0x10
     8b8:	8fae0098 	lw	t6,152(sp)
     8bc:	3c0143d2 	lui	at,0x43d2
     8c0:	44812000 	mtc1	at,$f4
     8c4:	c5c60004 	lwc1	$f6,4(t6)
     8c8:	00029c00 	sll	s3,v0,0x10
     8cc:	00139c03 	sra	s3,s3,0x10
     8d0:	4606203c 	c.lt.s	$f4,$f6
     8d4:	3c014248 	lui	at,0x4248
     8d8:	2416ffff 	li	s6,-1
     8dc:	2412000c 	li	s2,12
     8e0:	4500000c 	bc1f	914 <func_80B44870+0xf4>
     8e4:	3c110000 	lui	s1,0x0
     8e8:	4481d000 	mtc1	at,$f26
     8ec:	2bc1000f 	slti	at,s8,15
     8f0:	14200005 	bnez	at,908 <func_80B44870+0xe8>
     8f4:	24170008 	li	s7,8
     8f8:	3c0143c8 	lui	at,0x43c8
     8fc:	4481c000 	mtc1	at,$f24
     900:	10000004 	b	914 <func_80B44870+0xf4>
     904:	24100017 	li	s0,23
     908:	3c0143be 	lui	at,0x43be
     90c:	4481c000 	mtc1	at,$f24
     910:	2410000e 	li	s0,14
     914:	0217082a 	slt	at,s0,s7
     918:	14200033 	bnez	at,9e8 <func_80B44870+0x1c8>
     91c:	26310000 	addiu	s1,s1,0
     920:	521e002c 	beql	s0,s8,9d4 <func_80B44870+0x1b4>
     924:	2610ffff 	addiu	s0,s0,-1
     928:	5213002a 	beql	s0,s3,9d4 <func_80B44870+0x1b4>
     92c:	2610ffff 	addiu	s0,s0,-1
     930:	1676000b 	bne	s3,s6,960 <func_80B44870+0x140>
     934:	00000000 	nop
     938:	02120019 	multu	s0,s2
     93c:	8fa40064 	lw	a0,100(sp)
     940:	00007812 	mflo	t7
     944:	022f2821 	addu	a1,s1,t7
     948:	0c000000 	jal	0 <func_80B44050>
     94c:	00000000 	nop
     950:	461a003c 	c.lt.s	$f0,$f26
     954:	00000000 	nop
     958:	4503001e 	bc1tl	9d4 <func_80B44870+0x1b4>
     95c:	2610ffff 	addiu	s0,s0,-1
     960:	02120019 	multu	s0,s2
     964:	8fa40098 	lw	a0,152(sp)
     968:	0000c012 	mflo	t8
     96c:	02382821 	addu	a1,s1,t8
     970:	0c000000 	jal	0 <func_80B44050>
     974:	00000000 	nop
     978:	4600c03c 	c.lt.s	$f24,$f0
     97c:	00000000 	nop
     980:	45030014 	bc1tl	9d4 <func_80B44870+0x1b4>
     984:	2610ffff 	addiu	s0,s0,-1
     988:	4614003c 	c.lt.s	$f0,$f20
     98c:	00000000 	nop
     990:	45020009 	bc1fl	9b8 <func_80B44870+0x198>
     994:	4616003c 	c.lt.s	$f0,$f22
     998:	0015a400 	sll	s4,s5,0x10
     99c:	4600a586 	mov.s	$f22,$f20
     9a0:	0010ac00 	sll	s5,s0,0x10
     9a4:	0014a403 	sra	s4,s4,0x10
     9a8:	46000506 	mov.s	$f20,$f0
     9ac:	10000008 	b	9d0 <func_80B44870+0x1b0>
     9b0:	0015ac03 	sra	s5,s5,0x10
     9b4:	4616003c 	c.lt.s	$f0,$f22
     9b8:	00000000 	nop
     9bc:	45020005 	bc1fl	9d4 <func_80B44870+0x1b4>
     9c0:	2610ffff 	addiu	s0,s0,-1
     9c4:	0010a400 	sll	s4,s0,0x10
     9c8:	46000586 	mov.s	$f22,$f0
     9cc:	0014a403 	sra	s4,s4,0x10
     9d0:	2610ffff 	addiu	s0,s0,-1
     9d4:	00108400 	sll	s0,s0,0x10
     9d8:	00108403 	sra	s0,s0,0x10
     9dc:	0217082a 	slt	at,s0,s7
     9e0:	1020ffcf 	beqz	at,920 <func_80B44870+0x100>
     9e4:	00000000 	nop
     9e8:	2412000c 	li	s2,12
     9ec:	02b20019 	multu	s5,s2
     9f0:	3c110000 	lui	s1,0x0
     9f4:	26310000 	addiu	s1,s1,0
     9f8:	8fa40064 	lw	a0,100(sp)
     9fc:	0000c812 	mflo	t9
     a00:	02398021 	addu	s0,s1,t9
     a04:	0c000000 	jal	0 <func_80B44050>
     a08:	02002825 	move	a1,s0
     a0c:	02920019 	multu	s4,s2
     a10:	8fa40064 	lw	a0,100(sp)
     a14:	00004012 	mflo	t0
     a18:	02282821 	addu	a1,s1,t0
     a1c:	0c000000 	jal	0 <func_80B44050>
     a20:	00000000 	nop
     a24:	1a800014 	blez	s4,a78 <func_80B44870+0x258>
     a28:	8fa40098 	lw	a0,152(sp)
     a2c:	0c000000 	jal	0 <func_80B44050>
     a30:	02002825 	move	a1,s0
     a34:	00028400 	sll	s0,v0,0x10
     a38:	00108403 	sra	s0,s0,0x10
     a3c:	8fa40098 	lw	a0,152(sp)
     a40:	0c000000 	jal	0 <func_80B44050>
     a44:	8fa50064 	lw	a1,100(sp)
     a48:	02021823 	subu	v1,s0,v0
     a4c:	00031c00 	sll	v1,v1,0x10
     a50:	00031c03 	sra	v1,v1,0x10
     a54:	04600003 	bltz	v1,a64 <func_80B44870+0x244>
     a58:	00031023 	negu	v0,v1
     a5c:	10000001 	b	a64 <func_80B44870+0x244>
     a60:	00601025 	move	v0,v1
     a64:	284136b0 	slti	at,v0,14000
     a68:	10200003 	beqz	at,a78 <func_80B44870+0x258>
     a6c:	00000000 	nop
     a70:	0014ac00 	sll	s5,s4,0x10
     a74:	0015ac03 	sra	s5,s5,0x10
     a78:	06a10002 	bgez	s5,a84 <func_80B44870+0x264>
     a7c:	d7b40018 	ldc1	$f20,24(sp)
     a80:	87b500a2 	lh	s5,162(sp)
     a84:	8fbf005c 	lw	ra,92(sp)
     a88:	02a01025 	move	v0,s5
     a8c:	8fb5004c 	lw	s5,76(sp)
     a90:	d7b60020 	ldc1	$f22,32(sp)
     a94:	d7b80028 	ldc1	$f24,40(sp)
     a98:	d7ba0030 	ldc1	$f26,48(sp)
     a9c:	8fb00038 	lw	s0,56(sp)
     aa0:	8fb1003c 	lw	s1,60(sp)
     aa4:	8fb20040 	lw	s2,64(sp)
     aa8:	8fb30044 	lw	s3,68(sp)
     aac:	8fb40048 	lw	s4,72(sp)
     ab0:	8fb60050 	lw	s6,80(sp)
     ab4:	8fb70054 	lw	s7,84(sp)
     ab8:	8fbe0058 	lw	s8,88(sp)
     abc:	03e00008 	jr	ra
     ac0:	27bd0098 	addiu	sp,sp,152

00000ac4 <func_80B44B14>:
     ac4:	27bdffa8 	addiu	sp,sp,-88
     ac8:	afbf0054 	sw	ra,84(sp)
     acc:	afbe0050 	sw	s8,80(sp)
     ad0:	afb7004c 	sw	s7,76(sp)
     ad4:	afb60048 	sw	s6,72(sp)
     ad8:	afb50044 	sw	s5,68(sp)
     adc:	afb40040 	sw	s4,64(sp)
     ae0:	afb3003c 	sw	s3,60(sp)
     ae4:	afb20038 	sw	s2,56(sp)
     ae8:	afb10034 	sw	s1,52(sp)
     aec:	afb00030 	sw	s0,48(sp)
     af0:	f7b80028 	sdc1	$f24,40(sp)
     af4:	f7b60020 	sdc1	$f22,32(sp)
     af8:	f7b40018 	sdc1	$f20,24(sp)
     afc:	afa40058 	sw	a0,88(sp)
     b00:	afa5005c 	sw	a1,92(sp)
     b04:	afa60060 	sw	a2,96(sp)
     b08:	8ce21c44 	lw	v0,7236(a3)
     b0c:	00058400 	sll	s0,a1,0x10
     b10:	0006ac00 	sll	s5,a2,0x10
     b14:	24570024 	addiu	s7,v0,36
     b18:	0015ac03 	sra	s5,s5,0x10
     b1c:	00108403 	sra	s0,s0,0x10
     b20:	24110007 	li	s1,7
     b24:	0000a025 	move	s4,zero
     b28:	02e02025 	move	a0,s7
     b2c:	0c000000 	jal	0 <func_80B44050>
     b30:	2405ffff 	li	a1,-1
     b34:	3c0143fa 	lui	at,0x43fa
     b38:	4481c000 	mtc1	at,$f24
     b3c:	3c010000 	lui	at,0x0
     b40:	c4340000 	lwc1	$f20,0(at)
     b44:	8fa40058 	lw	a0,88(sp)
     b48:	3c010000 	lui	at,0x0
     b4c:	c4360000 	lwc1	$f22,0(at)
     b50:	3c014348 	lui	at,0x4348
     b54:	44812000 	mtc1	at,$f4
     b58:	c4860004 	lwc1	$f6,4(a0)
     b5c:	0002f400 	sll	s8,v0,0x10
     b60:	00109400 	sll	s2,s0,0x10
     b64:	4606203c 	c.lt.s	$f4,$f6
     b68:	00159c00 	sll	s3,s5,0x10
     b6c:	001ef403 	sra	s8,s8,0x10
     b70:	00129403 	sra	s2,s2,0x10
     b74:	45000005 	bc1f	b8c <func_80B44B14+0xc8>
     b78:	00139c03 	sra	s3,s3,0x10
     b7c:	3c014391 	lui	at,0x4391
     b80:	4481c000 	mtc1	at,$f24
     b84:	24110017 	li	s1,23
     b88:	24140008 	li	s4,8
     b8c:	0234082a 	slt	at,s1,s4
     b90:	1420002d 	bnez	at,c48 <func_80B44B14+0x184>
     b94:	2416000c 	li	s6,12
     b98:	3c150000 	lui	s5,0x0
     b9c:	26b50000 	addiu	s5,s5,0
     ba0:	02360019 	multu	s1,s6
     ba4:	8fa40058 	lw	a0,88(sp)
     ba8:	00007012 	mflo	t6
     bac:	02ae8021 	addu	s0,s5,t6
     bb0:	0c000000 	jal	0 <func_80B44050>
     bb4:	02002825 	move	a1,s0
     bb8:	4600c03c 	c.lt.s	$f24,$f0
     bbc:	02e02025 	move	a0,s7
     bc0:	4503001c 	bc1tl	c34 <func_80B44B14+0x170>
     bc4:	2631ffff 	addiu	s1,s1,-1
     bc8:	523e0017 	beql	s1,s8,c28 <func_80B44B14+0x164>
     bcc:	001e9400 	sll	s2,s8,0x10
     bd0:	0c000000 	jal	0 <func_80B44050>
     bd4:	02002825 	move	a1,s0
     bd8:	4614003c 	c.lt.s	$f0,$f20
     bdc:	00000000 	nop
     be0:	45020009 	bc1fl	c08 <func_80B44B14+0x144>
     be4:	4616003c 	c.lt.s	$f0,$f22
     be8:	00129c00 	sll	s3,s2,0x10
     bec:	4600a586 	mov.s	$f22,$f20
     bf0:	00119400 	sll	s2,s1,0x10
     bf4:	00139c03 	sra	s3,s3,0x10
     bf8:	46000506 	mov.s	$f20,$f0
     bfc:	1000000c 	b	c30 <func_80B44B14+0x16c>
     c00:	00129403 	sra	s2,s2,0x10
     c04:	4616003c 	c.lt.s	$f0,$f22
     c08:	00000000 	nop
     c0c:	45020009 	bc1fl	c34 <func_80B44B14+0x170>
     c10:	2631ffff 	addiu	s1,s1,-1
     c14:	00119c00 	sll	s3,s1,0x10
     c18:	46000586 	mov.s	$f22,$f0
     c1c:	10000004 	b	c30 <func_80B44B14+0x16c>
     c20:	00139c03 	sra	s3,s3,0x10
     c24:	001e9400 	sll	s2,s8,0x10
     c28:	10000007 	b	c48 <func_80B44B14+0x184>
     c2c:	00129403 	sra	s2,s2,0x10
     c30:	2631ffff 	addiu	s1,s1,-1
     c34:	00118c00 	sll	s1,s1,0x10
     c38:	00118c03 	sra	s1,s1,0x10
     c3c:	0234082a 	slt	at,s1,s4
     c40:	1020ffd7 	beqz	at,ba0 <func_80B44B14+0xdc>
     c44:	00000000 	nop
     c48:	127e0004 	beq	s3,s8,c5c <func_80B44B14+0x198>
     c4c:	d7b40018 	ldc1	$f20,24(sp)
     c50:	0012f400 	sll	s8,s2,0x10
     c54:	10000003 	b	c64 <func_80B44B14+0x1a0>
     c58:	001ef403 	sra	s8,s8,0x10
     c5c:	0013f400 	sll	s8,s3,0x10
     c60:	001ef403 	sra	s8,s8,0x10
     c64:	8fbf0054 	lw	ra,84(sp)
     c68:	03c01025 	move	v0,s8
     c6c:	8fbe0050 	lw	s8,80(sp)
     c70:	d7b60020 	ldc1	$f22,32(sp)
     c74:	d7b80028 	ldc1	$f24,40(sp)
     c78:	8fb00030 	lw	s0,48(sp)
     c7c:	8fb10034 	lw	s1,52(sp)
     c80:	8fb20038 	lw	s2,56(sp)
     c84:	8fb3003c 	lw	s3,60(sp)
     c88:	8fb40040 	lw	s4,64(sp)
     c8c:	8fb50044 	lw	s5,68(sp)
     c90:	8fb60048 	lw	s6,72(sp)
     c94:	8fb7004c 	lw	s7,76(sp)
     c98:	03e00008 	jr	ra
     c9c:	27bd0058 	addiu	sp,sp,88

00000ca0 <func_80B44CF0>:
     ca0:	27bdffe0 	addiu	sp,sp,-32
     ca4:	afbf0014 	sw	ra,20(sp)
     ca8:	84ae001c 	lh	t6,28(a1)
     cac:	8c831c44 	lw	v1,7236(a0)
     cb0:	05c2000a 	bltzl	t6,cdc <func_80B44CF0+0x3c>
     cb4:	afa30018 	sw	v1,24(sp)
     cb8:	8c6f067c 	lw	t7,1660(v1)
     cbc:	31f86000 	andi	t8,t7,0x6000
     cc0:	13000003 	beqz	t8,cd0 <func_80B44CF0+0x30>
     cc4:	00000000 	nop
     cc8:	10000026 	b	d64 <func_80B44CF0+0xc4>
     ccc:	00001025 	move	v0,zero
     cd0:	10000024 	b	d64 <func_80B44CF0+0xc4>
     cd4:	24020001 	li	v0,1
     cd8:	afa30018 	sw	v1,24(sp)
     cdc:	0c000000 	jal	0 <func_80B44050>
     ce0:	afa50024 	sw	a1,36(sp)
     ce4:	8fa30018 	lw	v1,24(sp)
     ce8:	14400003 	bnez	v0,cf8 <func_80B44CF0+0x58>
     cec:	8fa50024 	lw	a1,36(sp)
     cf0:	1000001c 	b	d64 <func_80B44CF0+0xc4>
     cf4:	24020001 	li	v0,1
     cf8:	84b9001c 	lh	t9,28(a1)
     cfc:	2401fffe 	li	at,-2
     d00:	57210018 	bnel	t9,at,d64 <func_80B44CF0+0xc4>
     d04:	00001025 	move	v0,zero
     d08:	8c620664 	lw	v0,1636(v1)
     d0c:	54400004 	bnezl	v0,d20 <func_80B44CF0+0x80>
     d10:	90480002 	lbu	t0,2(v0)
     d14:	10000013 	b	d64 <func_80B44CF0+0xc4>
     d18:	00001025 	move	v0,zero
     d1c:	90480002 	lbu	t0,2(v0)
     d20:	24010005 	li	at,5
     d24:	51010004 	beql	t0,at,d38 <func_80B44CF0+0x98>
     d28:	84490000 	lh	t1,0(v0)
     d2c:	1000000d 	b	d64 <func_80B44CF0+0xc4>
     d30:	24020001 	li	v0,1
     d34:	84490000 	lh	t1,0(v0)
     d38:	24010025 	li	at,37
     d3c:	51210004 	beql	t1,at,d50 <func_80B44CF0+0xb0>
     d40:	904a0114 	lbu	t2,276(v0)
     d44:	10000007 	b	d64 <func_80B44CF0+0xc4>
     d48:	00001025 	move	v0,zero
     d4c:	904a0114 	lbu	t2,276(v0)
     d50:	51400004 	beqzl	t2,d64 <func_80B44CF0+0xc4>
     d54:	00001025 	move	v0,zero
     d58:	10000002 	b	d64 <func_80B44CF0+0xc4>
     d5c:	24020001 	li	v0,1
     d60:	00001025 	move	v0,zero
     d64:	8fbf0014 	lw	ra,20(sp)
     d68:	27bd0020 	addiu	sp,sp,32
     d6c:	03e00008 	jr	ra
     d70:	00000000 	nop

00000d74 <func_80B44DC4>:
     d74:	27bdffe8 	addiu	sp,sp,-24
     d78:	afbf0014 	sw	ra,20(sp)
     d7c:	848f00b6 	lh	t7,182(a0)
     d80:	848e008a 	lh	t6,138(a0)
     d84:	00803025 	move	a2,a0
     d88:	00a03825 	move	a3,a1
     d8c:	01cf1023 	subu	v0,t6,t7
     d90:	00021400 	sll	v0,v0,0x10
     d94:	00021403 	sra	v0,v0,0x10
     d98:	04410004 	bgez	v0,dac <func_80B44DC4+0x38>
     d9c:	00c02025 	move	a0,a2
     da0:	00021023 	negu	v0,v0
     da4:	00021400 	sll	v0,v0,0x10
     da8:	00021403 	sra	v0,v0,0x10
     dac:	28411b58 	slti	at,v0,7000
     db0:	54200006 	bnezl	at,dcc <func_80B44DC4+0x58>
     db4:	3c0142c8 	lui	at,0x42c8
     db8:	0c000000 	jal	0 <func_80B44050>
     dbc:	00e02825 	move	a1,a3
     dc0:	1000001b 	b	e30 <func_80B44DC4+0xbc>
     dc4:	8fbf0014 	lw	ra,20(sp)
     dc8:	3c0142c8 	lui	at,0x42c8
     dcc:	44812000 	mtc1	at,$f4
     dd0:	c4c60090 	lwc1	$f6,144(a2)
     dd4:	3c180001 	lui	t8,0x1
     dd8:	0307c021 	addu	t8,t8,a3
     ddc:	4604303e 	c.le.s	$f6,$f4
     de0:	00000000 	nop
     de4:	4500000f 	bc1f	e24 <func_80B44DC4+0xb0>
     de8:	00000000 	nop
     dec:	8f181de4 	lw	t8,7652(t8)
     df0:	00e02025 	move	a0,a3
     df4:	00c02825 	move	a1,a2
     df8:	33190007 	andi	t9,t8,0x7
     dfc:	13200009 	beqz	t9,e24 <func_80B44DC4+0xb0>
     e00:	00000000 	nop
     e04:	0c000000 	jal	0 <func_80B44050>
     e08:	afa60018 	sw	a2,24(sp)
     e0c:	10400005 	beqz	v0,e24 <func_80B44DC4+0xb0>
     e10:	8fa60018 	lw	a2,24(sp)
     e14:	0c000000 	jal	0 <func_80B44050>
     e18:	00c02025 	move	a0,a2
     e1c:	10000004 	b	e30 <func_80B44DC4+0xbc>
     e20:	8fbf0014 	lw	ra,20(sp)
     e24:	0c000000 	jal	0 <func_80B44050>
     e28:	00c02025 	move	a0,a2
     e2c:	8fbf0014 	lw	ra,20(sp)
     e30:	27bd0018 	addiu	sp,sp,24
     e34:	03e00008 	jr	ra
     e38:	00000000 	nop

00000e3c <func_80B44E8C>:
     e3c:	27bdffd0 	addiu	sp,sp,-48
     e40:	afbf0024 	sw	ra,36(sp)
     e44:	afb00020 	sw	s0,32(sp)
     e48:	84ae007e 	lh	t6,126(a1)
     e4c:	84a200b6 	lh	v0,182(a1)
     e50:	00a08025 	move	s0,a1
     e54:	02002825 	move	a1,s0
     e58:	01c24023 	subu	t0,t6,v0
     e5c:	00084400 	sll	t0,t0,0x10
     e60:	00084403 	sra	t0,t0,0x10
     e64:	05010004 	bgez	t0,e78 <func_80B44E8C+0x3c>
     e68:	3c0642c8 	lui	a2,0x42c8
     e6c:	00084023 	negu	t0,t0
     e70:	00084400 	sll	t0,t0,0x10
     e74:	00084403 	sra	t0,t0,0x10
     e78:	240f2aa8 	li	t7,10920
     e7c:	afaf0010 	sw	t7,16(sp)
     e80:	24075dc0 	li	a3,24000
     e84:	afa20014 	sw	v0,20(sp)
     e88:	afa40030 	sw	a0,48(sp)
     e8c:	0c000000 	jal	0 <func_80B44050>
     e90:	a7a8002e 	sh	t0,46(sp)
     e94:	8fa40030 	lw	a0,48(sp)
     e98:	1040002d 	beqz	v0,f50 <func_80B44E8C+0x114>
     e9c:	87a8002e 	lh	t0,46(sp)
     ea0:	96180088 	lhu	t8,136(s0)
     ea4:	8603008a 	lh	v1,138(s0)
     ea8:	33190008 	andi	t9,t8,0x8
     eac:	a6030032 	sh	v1,50(s0)
     eb0:	13200012 	beqz	t9,efc <func_80B44E8C+0xc0>
     eb4:	a60300b6 	sh	v1,182(s0)
     eb8:	05000003 	bltz	t0,ec8 <func_80B44E8C+0x8c>
     ebc:	00081023 	negu	v0,t0
     ec0:	10000001 	b	ec8 <func_80B44E8C+0x8c>
     ec4:	01001025 	move	v0,t0
     ec8:	28412ee0 	slti	at,v0,12000
     ecc:	1020000b 	beqz	at,efc <func_80B44E8C+0xc0>
     ed0:	3c0142a0 	lui	at,0x42a0
     ed4:	44813000 	mtc1	at,$f6
     ed8:	c6040090 	lwc1	$f4,144(s0)
     edc:	4606203c 	c.lt.s	$f4,$f6
     ee0:	00000000 	nop
     ee4:	45020006 	bc1fl	f00 <func_80B44E8C+0xc4>
     ee8:	3c0142b4 	lui	at,0x42b4
     eec:	0c000000 	jal	0 <func_80B44050>
     ef0:	02002025 	move	a0,s0
     ef4:	10000054 	b	1048 <func_80B44E8C+0x20c>
     ef8:	24020001 	li	v0,1
     efc:	3c0142b4 	lui	at,0x42b4
     f00:	44815000 	mtc1	at,$f10
     f04:	c6080090 	lwc1	$f8,144(s0)
     f08:	3c090001 	lui	t1,0x1
     f0c:	01244821 	addu	t1,t1,a0
     f10:	460a403c 	c.lt.s	$f8,$f10
     f14:	00000000 	nop
     f18:	45000009 	bc1f	f40 <func_80B44E8C+0x104>
     f1c:	00000000 	nop
     f20:	8d291de4 	lw	t1,7652(t1)
     f24:	312a0001 	andi	t2,t1,0x1
     f28:	11400005 	beqz	t2,f40 <func_80B44E8C+0x104>
     f2c:	00000000 	nop
     f30:	0c000000 	jal	0 <func_80B44050>
     f34:	02002025 	move	a0,s0
     f38:	10000043 	b	1048 <func_80B44E8C+0x20c>
     f3c:	24020001 	li	v0,1
     f40:	0c000000 	jal	0 <func_80B44050>
     f44:	02002025 	move	a0,s0
     f48:	1000003f 	b	1048 <func_80B44E8C+0x20c>
     f4c:	24020001 	li	v0,1
     f50:	3c0142a0 	lui	at,0x42a0
     f54:	44818000 	mtc1	at,$f16
     f58:	02002825 	move	a1,s0
     f5c:	2406ffff 	li	a2,-1
     f60:	24070003 	li	a3,3
     f64:	a7a8002e 	sh	t0,46(sp)
     f68:	0c000000 	jal	0 <func_80B44050>
     f6c:	e7b00010 	swc1	$f16,16(sp)
     f70:	87a8002e 	lh	t0,46(sp)
     f74:	10400033 	beqz	v0,1044 <func_80B44E8C+0x208>
     f78:	00402825 	move	a1,v0
     f7c:	960b0088 	lhu	t3,136(s0)
     f80:	8603008a 	lh	v1,138(s0)
     f84:	29012ee0 	slti	at,t0,12000
     f88:	316c0008 	andi	t4,t3,0x8
     f8c:	a6030032 	sh	v1,50(s0)
     f90:	11800003 	beqz	t4,fa0 <func_80B44E8C+0x164>
     f94:	a60300b6 	sh	v1,182(s0)
     f98:	54200006 	bnezl	at,fb4 <func_80B44E8C+0x178>
     f9c:	844e0000 	lh	t6,0(v0)
     fa0:	844d0000 	lh	t5,0(v0)
     fa4:	240100da 	li	at,218
     fa8:	15a10022 	bne	t5,at,1034 <func_80B44E8C+0x1f8>
     fac:	00000000 	nop
     fb0:	844e0000 	lh	t6,0(v0)
     fb4:	240100da 	li	at,218
     fb8:	02002025 	move	a0,s0
     fbc:	55c10019 	bnel	t6,at,1024 <func_80B44E8C+0x1e8>
     fc0:	02002025 	move	a0,s0
     fc4:	0c000000 	jal	0 <func_80B44050>
     fc8:	afa50028 	sw	a1,40(sp)
     fcc:	3c0142a0 	lui	at,0x42a0
     fd0:	44819000 	mtc1	at,$f18
     fd4:	8fa50028 	lw	a1,40(sp)
     fd8:	4612003c 	c.lt.s	$f0,$f18
     fdc:	00000000 	nop
     fe0:	45020010 	bc1fl	1024 <func_80B44E8C+0x1e8>
     fe4:	02002025 	move	a0,s0
     fe8:	860f00b6 	lh	t7,182(s0)
     fec:	84b80032 	lh	t8,50(a1)
     ff0:	34018000 	li	at,0x8000
     ff4:	01f8c823 	subu	t9,t7,t8
     ff8:	03214821 	addu	t1,t9,at
     ffc:	00095400 	sll	t2,t1,0x10
    1000:	000a5c03 	sra	t3,t2,0x10
    1004:	29613e80 	slti	at,t3,16000
    1008:	50200006 	beqzl	at,1024 <func_80B44E8C+0x1e8>
    100c:	02002025 	move	a0,s0
    1010:	0c000000 	jal	0 <func_80B44050>
    1014:	02002025 	move	a0,s0
    1018:	1000000b 	b	1048 <func_80B44E8C+0x20c>
    101c:	24020001 	li	v0,1
    1020:	02002025 	move	a0,s0
    1024:	0c000000 	jal	0 <func_80B44050>
    1028:	3c054080 	lui	a1,0x4080
    102c:	10000006 	b	1048 <func_80B44E8C+0x20c>
    1030:	24020001 	li	v0,1
    1034:	0c000000 	jal	0 <func_80B44050>
    1038:	02002025 	move	a0,s0
    103c:	10000002 	b	1048 <func_80B44E8C+0x20c>
    1040:	24020001 	li	v0,1
    1044:	00001025 	move	v0,zero
    1048:	8fbf0024 	lw	ra,36(sp)
    104c:	8fb00020 	lw	s0,32(sp)
    1050:	27bd0030 	addiu	sp,sp,48
    1054:	03e00008 	jr	ra
    1058:	00000000 	nop

0000105c <func_80B450AC>:
    105c:	27bdffd0 	addiu	sp,sp,-48
    1060:	afb00028 	sw	s0,40(sp)
    1064:	00808025 	move	s0,a0
    1068:	afbf002c 	sw	ra,44(sp)
    106c:	3c040601 	lui	a0,0x601
    1070:	0c000000 	jal	0 <func_80B44050>
    1074:	24849530 	addiu	a0,a0,-27344
    1078:	44822000 	mtc1	v0,$f4
    107c:	44800000 	mtc1	zero,$f0
    1080:	3c050601 	lui	a1,0x601
    1084:	468021a0 	cvt.s.w	$f6,$f4
    1088:	44060000 	mfc1	a2,$f0
    108c:	24a59530 	addiu	a1,a1,-27344
    1090:	2604014c 	addiu	a0,s0,332
    1094:	3c074110 	lui	a3,0x4110
    1098:	afa00014 	sw	zero,20(sp)
    109c:	e7a60010 	swc1	$f6,16(sp)
    10a0:	0c000000 	jal	0 <func_80B44050>
    10a4:	e7a00018 	swc1	$f0,24(sp)
    10a8:	3c014396 	lui	at,0x4396
    10ac:	44815000 	mtc1	at,$f10
    10b0:	c6080080 	lwc1	$f8,128(s0)
    10b4:	96190088 	lhu	t9,136(s0)
    10b8:	8e090004 	lw	t1,4(s0)
    10bc:	460a4400 	add.s	$f16,$f8,$f10
    10c0:	8602008a 	lh	v0,138(s0)
    10c4:	2401fffe 	li	at,-2
    10c8:	240f000a 	li	t7,10
    10cc:	24180001 	li	t8,1
    10d0:	3c050000 	lui	a1,0x0
    10d4:	3328fffd 	andi	t0,t9,0xfffd
    10d8:	01215024 	and	t2,t1,at
    10dc:	e6100028 	swc1	$f16,40(s0)
    10e0:	a20000c8 	sb	zero,200(s0)
    10e4:	a2000404 	sb	zero,1028(s0)
    10e8:	ae0f03f0 	sw	t7,1008(s0)
    10ec:	ae1803e4 	sw	t8,996(s0)
    10f0:	ae0003dc 	sw	zero,988(s0)
    10f4:	a6080088 	sh	t0,136(s0)
    10f8:	ae0a0004 	sw	t2,4(s0)
    10fc:	24a50000 	addiu	a1,a1,0
    1100:	02002025 	move	a0,s0
    1104:	a6020032 	sh	v0,50(s0)
    1108:	0c000000 	jal	0 <func_80B44050>
    110c:	a60200b6 	sh	v0,182(s0)
    1110:	8fbf002c 	lw	ra,44(sp)
    1114:	8fb00028 	lw	s0,40(sp)
    1118:	27bd0030 	addiu	sp,sp,48
    111c:	03e00008 	jr	ra
    1120:	00000000 	nop

00001124 <func_80B45174>:
    1124:	27bdffc8 	addiu	sp,sp,-56
    1128:	afbf0034 	sw	ra,52(sp)
    112c:	afb00030 	sw	s0,48(sp)
    1130:	afa5003c 	sw	a1,60(sp)
    1134:	8c8e03f0 	lw	t6,1008(a0)
    1138:	24010001 	li	at,1
    113c:	00808025 	move	s0,a0
    1140:	55c1000b 	bnel	t6,at,1170 <func_80B45174+0x4c>
    1144:	8e0203f0 	lw	v0,1008(s0)
    1148:	0c000000 	jal	0 <func_80B44050>
    114c:	24053829 	li	a1,14377
    1150:	8e0f0004 	lw	t7,4(s0)
    1154:	8619001c 	lh	t9,28(s0)
    1158:	35f80001 	ori	t8,t7,0x1
    115c:	17200003 	bnez	t9,116c <func_80B45174+0x48>
    1160:	ae180004 	sw	t8,4(s0)
    1164:	0c000000 	jal	0 <func_80B44050>
    1168:	24040038 	li	a0,56
    116c:	8e0203f0 	lw	v0,1008(s0)
    1170:	5040001d 	beqzl	v0,11e8 <func_80B45174+0xc4>
    1174:	92020404 	lbu	v0,1028(s0)
    1178:	8608001c 	lh	t0,28(s0)
    117c:	2401ffff 	li	at,-1
    1180:	2449ffff 	addiu	t1,v0,-1
    1184:	51010004 	beql	t0,at,1198 <func_80B45174+0x74>
    1188:	3c014320 	lui	at,0x4320
    118c:	1000000f 	b	11cc <func_80B45174+0xa8>
    1190:	ae0903f0 	sw	t1,1008(s0)
    1194:	3c014320 	lui	at,0x4320
    1198:	44812000 	mtc1	at,$f4
    119c:	c6060090 	lwc1	$f6,144(s0)
    11a0:	02002025 	move	a0,s0
    11a4:	4604303e 	c.le.s	$f6,$f4
    11a8:	00000000 	nop
    11ac:	45020008 	bc1fl	11d0 <func_80B45174+0xac>
    11b0:	3c014396 	lui	at,0x4396
    11b4:	8e0a0004 	lw	t2,4(s0)
    11b8:	ae0003f0 	sw	zero,1008(s0)
    11bc:	24053829 	li	a1,14377
    11c0:	354b0001 	ori	t3,t2,0x1
    11c4:	0c000000 	jal	0 <func_80B44050>
    11c8:	ae0b0004 	sw	t3,4(s0)
    11cc:	3c014396 	lui	at,0x4396
    11d0:	44815000 	mtc1	at,$f10
    11d4:	c6080080 	lwc1	$f8,128(s0)
    11d8:	460a4400 	add.s	$f16,$f8,$f10
    11dc:	10000006 	b	11f8 <func_80B45174+0xd4>
    11e0:	e6100028 	swc1	$f16,40(s0)
    11e4:	92020404 	lbu	v0,1028(s0)
    11e8:	284100ff 	slti	at,v0,255
    11ec:	10200002 	beqz	at,11f8 <func_80B45174+0xd4>
    11f0:	244c0033 	addiu	t4,v0,51
    11f4:	a20c0404 	sb	t4,1028(s0)
    11f8:	960d0088 	lhu	t5,136(s0)
    11fc:	31ae0003 	andi	t6,t5,0x3
    1200:	11c00036 	beqz	t6,12dc <func_80B45174+0x1b8>
    1204:	00000000 	nop
    1208:	8e0f03e4 	lw	t7,996(s0)
    120c:	02002025 	move	a0,s0
    1210:	11e00032 	beqz	t7,12dc <func_80B45174+0x1b8>
    1214:	00000000 	nop
    1218:	0c000000 	jal	0 <func_80B44050>
    121c:	24053828 	li	a1,14376
    1220:	44800000 	mtc1	zero,$f0
    1224:	3c014188 	lui	at,0x4188
    1228:	44819000 	mtc1	at,$f18
    122c:	3c050601 	lui	a1,0x601
    1230:	24180002 	li	t8,2
    1234:	44070000 	mfc1	a3,$f0
    1238:	afb80014 	sw	t8,20(sp)
    123c:	24a58c6c 	addiu	a1,a1,-29588
    1240:	2604014c 	addiu	a0,s0,332
    1244:	3c063f80 	lui	a2,0x3f80
    1248:	e7a00018 	swc1	$f0,24(sp)
    124c:	0c000000 	jal	0 <func_80B44050>
    1250:	e7b20010 	swc1	$f18,16(sp)
    1254:	96190088 	lhu	t9,136(s0)
    1258:	c6040080 	lwc1	$f4,128(s0)
    125c:	44803000 	mtc1	zero,$f6
    1260:	3328fffd 	andi	t0,t9,0xfffd
    1264:	ae0003e4 	sw	zero,996(s0)
    1268:	a6080088 	sh	t0,136(s0)
    126c:	e6040028 	swc1	$f4,40(s0)
    1270:	e6060060 	swc1	$f6,96(s0)
    1274:	3c014000 	lui	at,0x4000
    1278:	44814000 	mtc1	at,$f8
    127c:	24090002 	li	t1,2
    1280:	afa90010 	sw	t1,16(sp)
    1284:	afa00020 	sw	zero,32(sp)
    1288:	afa0001c 	sw	zero,28(sp)
    128c:	afa00018 	sw	zero,24(sp)
    1290:	8fa4003c 	lw	a0,60(sp)
    1294:	02002825 	move	a1,s0
    1298:	260604f0 	addiu	a2,s0,1264
    129c:	3c074040 	lui	a3,0x4040
    12a0:	0c000000 	jal	0 <func_80B44050>
    12a4:	e7a80014 	swc1	$f8,20(sp)
    12a8:	3c014000 	lui	at,0x4000
    12ac:	44815000 	mtc1	at,$f10
    12b0:	240a0002 	li	t2,2
    12b4:	afaa0010 	sw	t2,16(sp)
    12b8:	8fa4003c 	lw	a0,60(sp)
    12bc:	02002825 	move	a1,s0
    12c0:	260604e4 	addiu	a2,s0,1252
    12c4:	3c074040 	lui	a3,0x4040
    12c8:	afa00018 	sw	zero,24(sp)
    12cc:	afa0001c 	sw	zero,28(sp)
    12d0:	afa00020 	sw	zero,32(sp)
    12d4:	0c000000 	jal	0 <func_80B44050>
    12d8:	e7aa0014 	swc1	$f10,20(sp)
    12dc:	0c000000 	jal	0 <func_80B44050>
    12e0:	2604014c 	addiu	a0,s0,332
    12e4:	5040000d 	beqzl	v0,131c <func_80B45174+0x1f8>
    12e8:	920d0404 	lbu	t5,1028(s0)
    12ec:	860c001c 	lh	t4,28(s0)
    12f0:	240b00ff 	li	t3,255
    12f4:	a20b0404 	sb	t3,1028(s0)
    12f8:	19800005 	blez	t4,1310 <func_80B45174+0x1ec>
    12fc:	02002025 	move	a0,s0
    1300:	0c000000 	jal	0 <func_80B44050>
    1304:	8fa5003c 	lw	a1,60(sp)
    1308:	10000004 	b	131c <func_80B45174+0x1f8>
    130c:	920d0404 	lbu	t5,1028(s0)
    1310:	0c000000 	jal	0 <func_80B44050>
    1314:	02002025 	move	a0,s0
    1318:	920d0404 	lbu	t5,1028(s0)
    131c:	a20d00c8 	sb	t5,200(s0)
    1320:	8fbf0034 	lw	ra,52(sp)
    1324:	8fb00030 	lw	s0,48(sp)
    1328:	27bd0038 	addiu	sp,sp,56
    132c:	03e00008 	jr	ra
    1330:	00000000 	nop

00001334 <func_80B45384>:
    1334:	27bdffd0 	addiu	sp,sp,-48
    1338:	afb00028 	sw	s0,40(sp)
    133c:	00808025 	move	s0,a0
    1340:	afbf002c 	sw	ra,44(sp)
    1344:	3c040601 	lui	a0,0x601
    1348:	0c000000 	jal	0 <func_80B44050>
    134c:	2484b10c 	addiu	a0,a0,-20212
    1350:	44822000 	mtc1	v0,$f4
    1354:	3c01c080 	lui	at,0xc080
    1358:	44814000 	mtc1	at,$f8
    135c:	468021a0 	cvt.s.w	$f6,$f4
    1360:	3c050601 	lui	a1,0x601
    1364:	240e0001 	li	t6,1
    1368:	afae0014 	sw	t6,20(sp)
    136c:	24a5b10c 	addiu	a1,a1,-20212
    1370:	2604014c 	addiu	a0,s0,332
    1374:	e7a60010 	swc1	$f6,16(sp)
    1378:	3c063f80 	lui	a2,0x3f80
    137c:	24070000 	li	a3,0
    1380:	0c000000 	jal	0 <func_80B44050>
    1384:	e7a80018 	swc1	$f8,24(sp)
    1388:	240f0003 	li	t7,3
    138c:	0c000000 	jal	0 <func_80B44050>
    1390:	ae0f03dc 	sw	t7,988(s0)
    1394:	3c014120 	lui	at,0x4120
    1398:	44815000 	mtc1	at,$f10
    139c:	3c0140a0 	lui	at,0x40a0
    13a0:	44819000 	mtc1	at,$f18
    13a4:	460a0402 	mul.s	$f16,$f0,$f10
    13a8:	44804000 	mtc1	zero,$f8
    13ac:	860800b6 	lh	t0,182(s0)
    13b0:	3c050000 	lui	a1,0x0
    13b4:	24a50000 	addiu	a1,a1,0
    13b8:	02002025 	move	a0,s0
    13bc:	e6080068 	swc1	$f8,104(s0)
    13c0:	46128100 	add.s	$f4,$f16,$f18
    13c4:	a6080032 	sh	t0,50(s0)
    13c8:	4600218d 	trunc.w.s	$f6,$f4
    13cc:	44193000 	mfc1	t9,$f6
    13d0:	0c000000 	jal	0 <func_80B44050>
    13d4:	ae1903f0 	sw	t9,1008(s0)
    13d8:	8fbf002c 	lw	ra,44(sp)
    13dc:	8fb00028 	lw	s0,40(sp)
    13e0:	27bd0030 	addiu	sp,sp,48
    13e4:	03e00008 	jr	ra
    13e8:	00000000 	nop

000013ec <func_80B4543C>:
    13ec:	27bdffd0 	addiu	sp,sp,-48
    13f0:	afbf001c 	sw	ra,28(sp)
    13f4:	afb00018 	sw	s0,24(sp)
    13f8:	afa50034 	sw	a1,52(sp)
    13fc:	8caf1c44 	lw	t7,7236(a1)
    1400:	00808025 	move	s0,a0
    1404:	afaf002c 	sw	t7,44(sp)
    1408:	849903ec 	lh	t9,1004(a0)
    140c:	8498008a 	lh	t8,138(a0)
    1410:	848900b6 	lh	t1,182(a0)
    1414:	2604014c 	addiu	a0,s0,332
    1418:	03194023 	subu	t0,t8,t9
    141c:	01091823 	subu	v1,t0,t1
    1420:	00031c00 	sll	v1,v1,0x10
    1424:	00031c03 	sra	v1,v1,0x10
    1428:	04610004 	bgez	v1,143c <func_80B4543C+0x50>
    142c:	00000000 	nop
    1430:	00031823 	negu	v1,v1
    1434:	00031c00 	sll	v1,v1,0x10
    1438:	00031c03 	sra	v1,v1,0x10
    143c:	0c000000 	jal	0 <func_80B44050>
    1440:	a7a30026 	sh	v1,38(sp)
    1444:	8fa40034 	lw	a0,52(sp)
    1448:	0c000000 	jal	0 <func_80B44050>
    144c:	02002825 	move	a1,s0
    1450:	1440007f 	bnez	v0,1650 <func_80B4543C+0x264>
    1454:	87a30026 	lh	v1,38(sp)
    1458:	860a001c 	lh	t2,28(s0)
    145c:	2401fffe 	li	at,-2
    1460:	5541000f 	bnel	t2,at,14a0 <func_80B4543C+0xb4>
    1464:	8fa2002c 	lw	v0,44(sp)
    1468:	860203f4 	lh	v0,1012(s0)
    146c:	28611ffe 	slti	at,v1,8190
    1470:	8fa40034 	lw	a0,52(sp)
    1474:	10400005 	beqz	v0,148c <func_80B4543C+0xa0>
    1478:	244bffff 	addiu	t3,v0,-1
    147c:	10200074 	beqz	at,1650 <func_80B4543C+0x264>
    1480:	a60b03f4 	sh	t3,1012(s0)
    1484:	10000005 	b	149c <func_80B4543C+0xb0>
    1488:	a60003f4 	sh	zero,1012(s0)
    148c:	0c000000 	jal	0 <func_80B44050>
    1490:	02002825 	move	a1,s0
    1494:	5440006f 	bnezl	v0,1654 <func_80B4543C+0x268>
    1498:	8fbf001c 	lw	ra,28(sp)
    149c:	8fa2002c 	lw	v0,44(sp)
    14a0:	860d00b6 	lh	t5,182(s0)
    14a4:	3c0142c8 	lui	at,0x42c8
    14a8:	844c00b6 	lh	t4,182(v0)
    14ac:	44813000 	mtc1	at,$f6
    14b0:	018d1823 	subu	v1,t4,t5
    14b4:	00031c00 	sll	v1,v1,0x10
    14b8:	00031c03 	sra	v1,v1,0x10
    14bc:	04630005 	bgezl	v1,14d4 <func_80B4543C+0xe8>
    14c0:	c6040090 	lwc1	$f4,144(s0)
    14c4:	00031823 	negu	v1,v1
    14c8:	00031c00 	sll	v1,v1,0x10
    14cc:	00031c03 	sra	v1,v1,0x10
    14d0:	c6040090 	lwc1	$f4,144(s0)
    14d4:	4606203c 	c.lt.s	$f4,$f6
    14d8:	00000000 	nop
    14dc:	45020010 	bc1fl	1520 <func_80B4543C+0x134>
    14e0:	8e0203f0 	lw	v0,1008(s0)
    14e4:	804e0843 	lb	t6,2115(v0)
    14e8:	28611f40 	slti	at,v1,8000
    14ec:	51c0000c 	beqzl	t6,1520 <func_80B4543C+0x134>
    14f0:	8e0203f0 	lw	v0,1008(s0)
    14f4:	5420000a 	bnezl	at,1520 <func_80B4543C+0x134>
    14f8:	8e0203f0 	lw	v0,1008(s0)
    14fc:	8602008a 	lh	v0,138(s0)
    1500:	02002025 	move	a0,s0
    1504:	a6020032 	sh	v0,50(s0)
    1508:	a60200b6 	sh	v0,182(s0)
    150c:	0c000000 	jal	0 <func_80B44050>
    1510:	8fa50034 	lw	a1,52(sp)
    1514:	1000004f 	b	1654 <func_80B4543C+0x268>
    1518:	8fbf001c 	lw	ra,28(sp)
    151c:	8e0203f0 	lw	v0,1008(s0)
    1520:	02002025 	move	a0,s0
    1524:	10400003 	beqz	v0,1534 <func_80B4543C+0x148>
    1528:	244fffff 	addiu	t7,v0,-1
    152c:	10000048 	b	1650 <func_80B4543C+0x264>
    1530:	ae0f03f0 	sw	t7,1008(s0)
    1534:	0c000000 	jal	0 <func_80B44050>
    1538:	24051555 	li	a1,5461
    153c:	10400038 	beqz	v0,1620 <func_80B4543C+0x234>
    1540:	3c014348 	lui	at,0x4348
    1544:	c6000090 	lwc1	$f0,144(s0)
    1548:	44814000 	mtc1	at,$f8
    154c:	3c0142c8 	lui	at,0x42c8
    1550:	4608003c 	c.lt.s	$f0,$f8
    1554:	00000000 	nop
    1558:	4500001f 	bc1f	15d8 <func_80B4543C+0x1ec>
    155c:	00000000 	nop
    1560:	44815000 	mtc1	at,$f10
    1564:	00000000 	nop
    1568:	4600503c 	c.lt.s	$f10,$f0
    156c:	00000000 	nop
    1570:	45000019 	bc1f	15d8 <func_80B4543C+0x1ec>
    1574:	00000000 	nop
    1578:	0c000000 	jal	0 <func_80B44050>
    157c:	00000000 	nop
    1580:	3c010000 	lui	at,0x0
    1584:	c4300000 	lwc1	$f16,0(at)
    1588:	4610003c 	c.lt.s	$f0,$f16
    158c:	00000000 	nop
    1590:	45000011 	bc1f	15d8 <func_80B4543C+0x1ec>
    1594:	00000000 	nop
    1598:	8618001c 	lh	t8,28(s0)
    159c:	2401fffe 	li	at,-2
    15a0:	02002025 	move	a0,s0
    15a4:	17010008 	bne	t8,at,15c8 <func_80B4543C+0x1dc>
    15a8:	00000000 	nop
    15ac:	8602008a 	lh	v0,138(s0)
    15b0:	02002025 	move	a0,s0
    15b4:	a60200b6 	sh	v0,182(s0)
    15b8:	0c000000 	jal	0 <func_80B44050>
    15bc:	a6020032 	sh	v0,50(s0)
    15c0:	1000001a 	b	162c <func_80B4543C+0x240>
    15c4:	8fb90034 	lw	t9,52(sp)
    15c8:	0c000000 	jal	0 <func_80B44050>
    15cc:	8fa50034 	lw	a1,52(sp)
    15d0:	10000016 	b	162c <func_80B4543C+0x240>
    15d4:	8fb90034 	lw	t9,52(sp)
    15d8:	0c000000 	jal	0 <func_80B44050>
    15dc:	00000000 	nop
    15e0:	3c010000 	lui	at,0x0
    15e4:	c4320000 	lwc1	$f18,0(at)
    15e8:	8fa50034 	lw	a1,52(sp)
    15ec:	02002025 	move	a0,s0
    15f0:	4600903c 	c.lt.s	$f18,$f0
    15f4:	00000000 	nop
    15f8:	45000005 	bc1f	1610 <func_80B4543C+0x224>
    15fc:	00000000 	nop
    1600:	0c000000 	jal	0 <func_80B44050>
    1604:	02002025 	move	a0,s0
    1608:	10000008 	b	162c <func_80B4543C+0x240>
    160c:	8fb90034 	lw	t9,52(sp)
    1610:	0c000000 	jal	0 <func_80B44050>
    1614:	8fa50034 	lw	a1,52(sp)
    1618:	10000004 	b	162c <func_80B4543C+0x240>
    161c:	8fb90034 	lw	t9,52(sp)
    1620:	0c000000 	jal	0 <func_80B44050>
    1624:	02002025 	move	a0,s0
    1628:	8fb90034 	lw	t9,52(sp)
    162c:	3c080001 	lui	t0,0x1
    1630:	02002025 	move	a0,s0
    1634:	01194021 	addu	t0,t0,t9
    1638:	8d081de4 	lw	t0,7652(t0)
    163c:	3109005f 	andi	t1,t0,0x5f
    1640:	55200004 	bnezl	t1,1654 <func_80B4543C+0x268>
    1644:	8fbf001c 	lw	ra,28(sp)
    1648:	0c000000 	jal	0 <func_80B44050>
    164c:	24053829 	li	a1,14377
    1650:	8fbf001c 	lw	ra,28(sp)
    1654:	8fb00018 	lw	s0,24(sp)
    1658:	27bd0030 	addiu	sp,sp,48
    165c:	03e00008 	jr	ra
    1660:	00000000 	nop

00001664 <func_80B456B4>:
    1664:	27bdffd8 	addiu	sp,sp,-40
    1668:	afb00018 	sw	s0,24(sp)
    166c:	afa5002c 	sw	a1,44(sp)
    1670:	00808025 	move	s0,a0
    1674:	afbf001c 	sw	ra,28(sp)
    1678:	3c050601 	lui	a1,0x601
    167c:	24a58138 	addiu	a1,a1,-32456
    1680:	2484014c 	addiu	a0,a0,332
    1684:	0c000000 	jal	0 <func_80B44050>
    1688:	3c06c080 	lui	a2,0xc080
    168c:	860f001c 	lh	t7,28(s0)
    1690:	240e0005 	li	t6,5
    1694:	ae0e03dc 	sw	t6,988(s0)
    1698:	05e0000c 	bltz	t7,16cc <func_80B456B4+0x68>
    169c:	26040024 	addiu	a0,s0,36
    16a0:	860503fe 	lh	a1,1022(s0)
    16a4:	0c000000 	jal	0 <func_80B44050>
    16a8:	afa40024 	sw	a0,36(sp)
    16ac:	8fa40024 	lw	a0,36(sp)
    16b0:	a60203fe 	sh	v0,1022(s0)
    16b4:	8fa7002c 	lw	a3,44(sp)
    16b8:	860503fe 	lh	a1,1022(s0)
    16bc:	0c000000 	jal	0 <func_80B44050>
    16c0:	86060400 	lh	a2,1024(s0)
    16c4:	a6020402 	sh	v0,1026(s0)
    16c8:	ae0003e4 	sw	zero,996(s0)
    16cc:	44802000 	mtc1	zero,$f4
    16d0:	3c050000 	lui	a1,0x0
    16d4:	24a50000 	addiu	a1,a1,0
    16d8:	02002025 	move	a0,s0
    16dc:	0c000000 	jal	0 <func_80B44050>
    16e0:	e6040068 	swc1	$f4,104(s0)
    16e4:	8fbf001c 	lw	ra,28(sp)
    16e8:	8fb00018 	lw	s0,24(sp)
    16ec:	27bd0028 	addiu	sp,sp,40
    16f0:	03e00008 	jr	ra
    16f4:	00000000 	nop

000016f8 <func_80B45748>:
    16f8:	27bdffa8 	addiu	sp,sp,-88
    16fc:	3c0143af 	lui	at,0x43af
    1700:	44812000 	mtc1	at,$f4
    1704:	44803000 	mtc1	zero,$f6
    1708:	240effff 	li	t6,-1
    170c:	afbf0024 	sw	ra,36(sp)
    1710:	afb00020 	sw	s0,32(sp)
    1714:	afa5005c 	sw	a1,92(sp)
    1718:	a7ae0048 	sh	t6,72(sp)
    171c:	e7a40044 	swc1	$f4,68(sp)
    1720:	e7a60040 	swc1	$f6,64(sp)
    1724:	8cb81c44 	lw	t8,7236(a1)
    1728:	00808025 	move	s0,a0
    172c:	afb8003c 	sw	t8,60(sp)
    1730:	8499001c 	lh	t9,28(a0)
    1734:	27040024 	addiu	a0,t8,36
    1738:	07220015 	bltzl	t9,1790 <func_80B45748+0x98>
    173c:	8fa4005c 	lw	a0,92(sp)
    1740:	0c000000 	jal	0 <func_80B44050>
    1744:	2405ffff 	li	a1,-1
    1748:	00022c00 	sll	a1,v0,0x10
    174c:	a7a20048 	sh	v0,72(sp)
    1750:	00052c03 	sra	a1,a1,0x10
    1754:	0c000000 	jal	0 <func_80B44050>
    1758:	26040024 	addiu	a0,s0,36
    175c:	3c0143d2 	lui	at,0x43d2
    1760:	44815000 	mtc1	at,$f10
    1764:	c6080028 	lwc1	$f8,40(s0)
    1768:	a60203fe 	sh	v0,1022(s0)
    176c:	3c014387 	lui	at,0x4387
    1770:	4608503e 	c.le.s	$f10,$f8
    1774:	00000000 	nop
    1778:	45020005 	bc1fl	1790 <func_80B45748+0x98>
    177c:	8fa4005c 	lw	a0,92(sp)
    1780:	44818000 	mtc1	at,$f16
    1784:	00000000 	nop
    1788:	e7b00044 	swc1	$f16,68(sp)
    178c:	8fa4005c 	lw	a0,92(sp)
    1790:	0c000000 	jal	0 <func_80B44050>
    1794:	02002825 	move	a1,s0
    1798:	1440018c 	bnez	v0,1dcc <func_80B45748+0x6d4>
    179c:	87a80048 	lh	t0,72(sp)
    17a0:	860503fe 	lh	a1,1022(s0)
    17a4:	26040024 	addiu	a0,s0,36
    17a8:	8fa7005c 	lw	a3,92(sp)
    17ac:	51050069 	beql	t0,a1,1954 <func_80B45748+0x25c>
    17b0:	26180068 	addiu	t8,s0,104
    17b4:	0c000000 	jal	0 <func_80B44050>
    17b8:	86060400 	lh	a2,1024(s0)
    17bc:	a6020402 	sh	v0,1026(s0)
    17c0:	87a90048 	lh	t1,72(sp)
    17c4:	02002025 	move	a0,s0
    17c8:	0523000b 	bgezl	t1,17f8 <func_80B45748+0x100>
    17cc:	860b0402 	lh	t3,1026(s0)
    17d0:	860503fe 	lh	a1,1022(s0)
    17d4:	860a0402 	lh	t2,1026(s0)
    17d8:	54aa0007 	bnel	a1,t2,17f8 <func_80B45748+0x100>
    17dc:	860b0402 	lh	t3,1026(s0)
    17e0:	a7a50048 	sh	a1,72(sp)
    17e4:	8602008a 	lh	v0,138(s0)
    17e8:	a6020032 	sh	v0,50(s0)
    17ec:	10000058 	b	1950 <func_80B45748+0x258>
    17f0:	a60200b6 	sh	v0,182(s0)
    17f4:	860b0402 	lh	t3,1026(s0)
    17f8:	3c0d0000 	lui	t5,0x0
    17fc:	25ad0000 	addiu	t5,t5,0
    1800:	000b6080 	sll	t4,t3,0x2
    1804:	018b6023 	subu	t4,t4,t3
    1808:	000c6080 	sll	t4,t4,0x2
    180c:	0c000000 	jal	0 <func_80B44050>
    1810:	018d2821 	addu	a1,t4,t5
    1814:	a60200b6 	sh	v0,182(s0)
    1818:	860f00b6 	lh	t7,182(s0)
    181c:	860e007e 	lh	t6,126(s0)
    1820:	a602008a 	sh	v0,138(s0)
    1824:	a6020032 	sh	v0,50(s0)
    1828:	01cf1823 	subu	v1,t6,t7
    182c:	00031c00 	sll	v1,v1,0x10
    1830:	00031c03 	sra	v1,v1,0x10
    1834:	04630005 	bgezl	v1,184c <func_80B45748+0x154>
    1838:	861903f8 	lh	t9,1016(s0)
    183c:	00031823 	negu	v1,v1
    1840:	00031c00 	sll	v1,v1,0x10
    1844:	00031c03 	sra	v1,v1,0x10
    1848:	861903f8 	lh	t9,1016(s0)
    184c:	53200008 	beqzl	t9,1870 <func_80B45748+0x178>
    1850:	96180088 	lhu	t8,136(s0)
    1854:	44809000 	mtc1	zero,$f18
    1858:	c6040068 	lwc1	$f4,104(s0)
    185c:	4604903c 	c.lt.s	$f18,$f4
    1860:	00000000 	nop
    1864:	4503000a 	bc1tl	1890 <func_80B45748+0x198>
    1868:	86090402 	lh	t1,1026(s0)
    186c:	96180088 	lhu	t8,136(s0)
    1870:	28615c19 	slti	at,v1,23577
    1874:	26040068 	addiu	a0,s0,104
    1878:	33080008 	andi	t0,t8,0x8
    187c:	1100002c 	beqz	t0,1930 <func_80B45748+0x238>
    1880:	3c054100 	lui	a1,0x4100
    1884:	5420002b 	bnezl	at,1934 <func_80B45748+0x23c>
    1888:	8602008a 	lh	v0,138(s0)
    188c:	86090402 	lh	t1,1026(s0)
    1890:	3c0b0000 	lui	t3,0x0
    1894:	256b0000 	addiu	t3,t3,0
    1898:	00095080 	sll	t2,t1,0x2
    189c:	01495023 	subu	t2,t2,t1
    18a0:	000a5080 	sll	t2,t2,0x2
    18a4:	014b2821 	addu	a1,t2,t3
    18a8:	0c000000 	jal	0 <func_80B44050>
    18ac:	02002025 	move	a0,s0
    18b0:	c7a60044 	lwc1	$f6,68(sp)
    18b4:	02002025 	move	a0,s0
    18b8:	8fa5005c 	lw	a1,92(sp)
    18bc:	4606003c 	c.lt.s	$f0,$f6
    18c0:	3c06433f 	lui	a2,0x433f
    18c4:	45020010 	bc1fl	1908 <func_80B45748+0x210>
    18c8:	860e03fe 	lh	t6,1022(s0)
    18cc:	0c000000 	jal	0 <func_80B44050>
    18d0:	34c6fee0 	ori	a2,a2,0xfee0
    18d4:	5440000c 	bnezl	v0,1908 <func_80B45748+0x210>
    18d8:	860e03fe 	lh	t6,1022(s0)
    18dc:	0c000000 	jal	0 <func_80B44050>
    18e0:	02002025 	move	a0,s0
    18e4:	960c0088 	lhu	t4,136(s0)
    18e8:	3c0141a0 	lui	at,0x41a0
    18ec:	318d0008 	andi	t5,t4,0x8
    18f0:	51a00137 	beqzl	t5,1dd0 <func_80B45748+0x6d8>
    18f4:	8fbf0024 	lw	ra,36(sp)
    18f8:	44814000 	mtc1	at,$f8
    18fc:	10000133 	b	1dcc <func_80B45748+0x6d4>
    1900:	e6080060 	swc1	$f8,96(s0)
    1904:	860e03fe 	lh	t6,1022(s0)
    1908:	3c190000 	lui	t9,0x0
    190c:	27390000 	addiu	t9,t9,0
    1910:	000e7880 	sll	t7,t6,0x2
    1914:	01ee7823 	subu	t7,t7,t6
    1918:	000f7880 	sll	t7,t7,0x2
    191c:	01f92821 	addu	a1,t7,t9
    1920:	0c000000 	jal	0 <func_80B44050>
    1924:	02002025 	move	a0,s0
    1928:	10000009 	b	1950 <func_80B45748+0x258>
    192c:	a6020032 	sh	v0,50(s0)
    1930:	8602008a 	lh	v0,138(s0)
    1934:	44805000 	mtc1	zero,$f10
    1938:	3c063f80 	lui	a2,0x3f80
    193c:	a6020032 	sh	v0,50(s0)
    1940:	a60200b6 	sh	v0,182(s0)
    1944:	3c073fc0 	lui	a3,0x3fc0
    1948:	0c000000 	jal	0 <func_80B44050>
    194c:	e7aa0010 	swc1	$f10,16(sp)
    1950:	26180068 	addiu	t8,s0,104
    1954:	afb8002c 	sw	t8,44(sp)
    1958:	8fa4005c 	lw	a0,92(sp)
    195c:	0c000000 	jal	0 <func_80B44050>
    1960:	02002825 	move	a1,s0
    1964:	10400005 	beqz	v0,197c <func_80B45748+0x284>
    1968:	8fa4002c 	lw	a0,44(sp)
    196c:	3c0142c8 	lui	at,0x42c8
    1970:	44818000 	mtc1	at,$f16
    1974:	00000000 	nop
    1978:	e7b00040 	swc1	$f16,64(sp)
    197c:	3c01428c 	lui	at,0x428c
    1980:	44819000 	mtc1	at,$f18
    1984:	c7a40040 	lwc1	$f4,64(sp)
    1988:	c6080090 	lwc1	$f8,144(s0)
    198c:	3c073f00 	lui	a3,0x3f00
    1990:	46049180 	add.s	$f6,$f18,$f4
    1994:	3c054100 	lui	a1,0x4100
    1998:	3c063f80 	lui	a2,0x3f80
    199c:	4606403e 	c.le.s	$f8,$f6
    19a0:	00000000 	nop
    19a4:	45020009 	bc1fl	19cc <func_80B45748+0x2d4>
    19a8:	44808000 	mtc1	zero,$f16
    19ac:	44805000 	mtc1	zero,$f10
    19b0:	3c05c100 	lui	a1,0xc100
    19b4:	3c063f80 	lui	a2,0x3f80
    19b8:	0c000000 	jal	0 <func_80B44050>
    19bc:	e7aa0010 	swc1	$f10,16(sp)
    19c0:	10000005 	b	19d8 <func_80B45748+0x2e0>
    19c4:	00000000 	nop
    19c8:	44808000 	mtc1	zero,$f16
    19cc:	3c073f00 	lui	a3,0x3f00
    19d0:	0c000000 	jal	0 <func_80B44050>
    19d4:	e7b00010 	swc1	$f16,16(sp)
    19d8:	3c010000 	lui	at,0x0
    19dc:	c4240000 	lwc1	$f4,0(at)
    19e0:	c6120068 	lwc1	$f18,104(s0)
    19e4:	860a00b6 	lh	t2,182(s0)
    19e8:	3c014316 	lui	at,0x4316
    19ec:	46049182 	mul.s	$f6,$f18,$f4
    19f0:	e6060168 	swc1	$f6,360(s0)
    19f4:	8fa8003c 	lw	t0,60(sp)
    19f8:	87ab0048 	lh	t3,72(sp)
    19fc:	850900b6 	lh	t1,182(t0)
    1a00:	012a1823 	subu	v1,t1,t2
    1a04:	00031c00 	sll	v1,v1,0x10
    1a08:	00031c03 	sra	v1,v1,0x10
    1a0c:	04630005 	bgezl	v1,1a24 <func_80B45748+0x32c>
    1a10:	860c03fe 	lh	t4,1022(s0)
    1a14:	00031823 	negu	v1,v1
    1a18:	00031c00 	sll	v1,v1,0x10
    1a1c:	00031c03 	sra	v1,v1,0x10
    1a20:	860c03fe 	lh	t4,1022(s0)
    1a24:	556c001e 	bnel	t3,t4,1aa0 <func_80B45748+0x3a8>
    1a28:	c6120164 	lwc1	$f18,356(s0)
    1a2c:	c6080090 	lwc1	$f8,144(s0)
    1a30:	44815000 	mtc1	at,$f10
    1a34:	8fad003c 	lw	t5,60(sp)
    1a38:	460a403c 	c.lt.s	$f8,$f10
    1a3c:	00000000 	nop
    1a40:	45020017 	bc1fl	1aa0 <func_80B45748+0x3a8>
    1a44:	c6120164 	lwc1	$f18,356(s0)
    1a48:	81ae0843 	lb	t6,2115(t5)
    1a4c:	28611f40 	slti	at,v1,8000
    1a50:	51c00013 	beqzl	t6,1aa0 <func_80B45748+0x3a8>
    1a54:	c6120164 	lwc1	$f18,356(s0)
    1a58:	54200011 	bnezl	at,1aa0 <func_80B45748+0x3a8>
    1a5c:	c6120164 	lwc1	$f18,356(s0)
    1a60:	8602008a 	lh	v0,138(s0)
    1a64:	a6020032 	sh	v0,50(s0)
    1a68:	0c000000 	jal	0 <func_80B44050>
    1a6c:	a60200b6 	sh	v0,182(s0)
    1a70:	3c010000 	lui	at,0x0
    1a74:	c4300000 	lwc1	$f16,0(at)
    1a78:	02002025 	move	a0,s0
    1a7c:	4600803c 	c.lt.s	$f16,$f0
    1a80:	00000000 	nop
    1a84:	45020006 	bc1fl	1aa0 <func_80B45748+0x3a8>
    1a88:	c6120164 	lwc1	$f18,356(s0)
    1a8c:	0c000000 	jal	0 <func_80B44050>
    1a90:	8fa5005c 	lw	a1,92(sp)
    1a94:	100000ce 	b	1dd0 <func_80B45748+0x6d8>
    1a98:	8fbf0024 	lw	ra,36(sp)
    1a9c:	c6120164 	lwc1	$f18,356(s0)
    1aa0:	2604014c 	addiu	a0,s0,332
    1aa4:	4600910d 	trunc.w.s	$f4,$f18
    1aa8:	44192000 	mfc1	t9,$f4
    1aac:	0c000000 	jal	0 <func_80B44050>
    1ab0:	afb90054 	sw	t9,84(sp)
    1ab4:	44801000 	mtc1	zero,$f2
    1ab8:	c6000168 	lwc1	$f0,360(s0)
    1abc:	02002025 	move	a0,s0
    1ac0:	4600103e 	c.le.s	$f2,$f0
    1ac4:	00000000 	nop
    1ac8:	45020004 	bc1fl	1adc <func_80B45748+0x3e4>
    1acc:	46000187 	neg.s	$f6,$f0
    1ad0:	10000003 	b	1ae0 <func_80B45748+0x3e8>
    1ad4:	e7a00030 	swc1	$f0,48(sp)
    1ad8:	46000187 	neg.s	$f6,$f0
    1adc:	e7a60030 	swc1	$f6,48(sp)
    1ae0:	c6080164 	lwc1	$f8,356(s0)
    1ae4:	c7aa0030 	lwc1	$f10,48(sp)
    1ae8:	4600103e 	c.le.s	$f2,$f0
    1aec:	460a4401 	sub.s	$f16,$f8,$f10
    1af0:	4600848d 	trunc.w.s	$f18,$f16
    1af4:	44089000 	mfc1	t0,$f18
    1af8:	45000003 	bc1f	1b08 <func_80B45748+0x410>
    1afc:	afa80050 	sw	t0,80(sp)
    1b00:	10000003 	b	1b10 <func_80B45748+0x418>
    1b04:	e7a00030 	swc1	$f0,48(sp)
    1b08:	46000107 	neg.s	$f4,$f0
    1b0c:	e7a40030 	swc1	$f4,48(sp)
    1b10:	87a90048 	lh	t1,72(sp)
    1b14:	860a03fe 	lh	t2,1022(s0)
    1b18:	552a0052 	bnel	t1,t2,1c64 <func_80B45748+0x56c>
    1b1c:	860c001c 	lh	t4,28(s0)
    1b20:	0c000000 	jal	0 <func_80B44050>
    1b24:	240511c7 	li	a1,4551
    1b28:	14400012 	bnez	v0,1b74 <func_80B45748+0x47c>
    1b2c:	3c0142c8 	lui	at,0x42c8
    1b30:	0c000000 	jal	0 <func_80B44050>
    1b34:	00000000 	nop
    1b38:	3c013f00 	lui	at,0x3f00
    1b3c:	44813000 	mtc1	at,$f6
    1b40:	02002025 	move	a0,s0
    1b44:	4600303c 	c.lt.s	$f6,$f0
    1b48:	00000000 	nop
    1b4c:	45000005 	bc1f	1b64 <func_80B45748+0x46c>
    1b50:	00000000 	nop
    1b54:	0c000000 	jal	0 <func_80B44050>
    1b58:	8fa5005c 	lw	a1,92(sp)
    1b5c:	10000041 	b	1c64 <func_80B45748+0x56c>
    1b60:	860c001c 	lh	t4,28(s0)
    1b64:	0c000000 	jal	0 <func_80B44050>
    1b68:	02002025 	move	a0,s0
    1b6c:	1000003d 	b	1c64 <func_80B45748+0x56c>
    1b70:	860c001c 	lh	t4,28(s0)
    1b74:	c6080090 	lwc1	$f8,144(s0)
    1b78:	44815000 	mtc1	at,$f10
    1b7c:	00000000 	nop
    1b80:	460a403c 	c.lt.s	$f8,$f10
    1b84:	00000000 	nop
    1b88:	45020024 	bc1fl	1c1c <func_80B45748+0x524>
    1b8c:	860b03f8 	lh	t3,1016(s0)
    1b90:	0c000000 	jal	0 <func_80B44050>
    1b94:	00000000 	nop
    1b98:	3c010000 	lui	at,0x0
    1b9c:	c4300000 	lwc1	$f16,0(at)
    1ba0:	8fa4005c 	lw	a0,92(sp)
    1ba4:	4600803c 	c.lt.s	$f16,$f0
    1ba8:	00000000 	nop
    1bac:	45000009 	bc1f	1bd4 <func_80B45748+0x4dc>
    1bb0:	00000000 	nop
    1bb4:	0c000000 	jal	0 <func_80B44050>
    1bb8:	02002825 	move	a1,s0
    1bbc:	10400005 	beqz	v0,1bd4 <func_80B45748+0x4dc>
    1bc0:	00000000 	nop
    1bc4:	0c000000 	jal	0 <func_80B44050>
    1bc8:	02002025 	move	a0,s0
    1bcc:	10000025 	b	1c64 <func_80B45748+0x56c>
    1bd0:	860c001c 	lh	t4,28(s0)
    1bd4:	0c000000 	jal	0 <func_80B44050>
    1bd8:	00000000 	nop
    1bdc:	3c013f00 	lui	at,0x3f00
    1be0:	44819000 	mtc1	at,$f18
    1be4:	02002025 	move	a0,s0
    1be8:	4600903c 	c.lt.s	$f18,$f0
    1bec:	00000000 	nop
    1bf0:	45000005 	bc1f	1c08 <func_80B45748+0x510>
    1bf4:	00000000 	nop
    1bf8:	0c000000 	jal	0 <func_80B44050>
    1bfc:	8fa5005c 	lw	a1,92(sp)
    1c00:	10000018 	b	1c64 <func_80B45748+0x56c>
    1c04:	860c001c 	lh	t4,28(s0)
    1c08:	0c000000 	jal	0 <func_80B44050>
    1c0c:	02002025 	move	a0,s0
    1c10:	10000014 	b	1c64 <func_80B45748+0x56c>
    1c14:	860c001c 	lh	t4,28(s0)
    1c18:	860b03f8 	lh	t3,1016(s0)
    1c1c:	02002025 	move	a0,s0
    1c20:	11600005 	beqz	t3,1c38 <func_80B45748+0x540>
    1c24:	00000000 	nop
    1c28:	0c000000 	jal	0 <func_80B44050>
    1c2c:	8fa5005c 	lw	a1,92(sp)
    1c30:	1000000c 	b	1c64 <func_80B45748+0x56c>
    1c34:	860c001c 	lh	t4,28(s0)
    1c38:	0c000000 	jal	0 <func_80B44050>
    1c3c:	00000000 	nop
    1c40:	3c010000 	lui	at,0x0
    1c44:	c4240000 	lwc1	$f4,0(at)
    1c48:	4604003c 	c.lt.s	$f0,$f4
    1c4c:	00000000 	nop
    1c50:	45020004 	bc1fl	1c64 <func_80B45748+0x56c>
    1c54:	860c001c 	lh	t4,28(s0)
    1c58:	0c000000 	jal	0 <func_80B44050>
    1c5c:	02002025 	move	a0,s0
    1c60:	860c001c 	lh	t4,28(s0)
    1c64:	2401fffe 	li	at,-2
    1c68:	8fa4005c 	lw	a0,92(sp)
    1c6c:	5581002e 	bnel	t4,at,1d28 <func_80B45748+0x630>
    1c70:	8fad005c 	lw	t5,92(sp)
    1c74:	0c000000 	jal	0 <func_80B44050>
    1c78:	02002825 	move	a1,s0
    1c7c:	14400053 	bnez	v0,1dcc <func_80B45748+0x6d4>
    1c80:	3c014334 	lui	at,0x4334
    1c84:	c6000090 	lwc1	$f0,144(s0)
    1c88:	44813000 	mtc1	at,$f6
    1c8c:	3c014320 	lui	at,0x4320
    1c90:	4606003c 	c.lt.s	$f0,$f6
    1c94:	00000000 	nop
    1c98:	45020023 	bc1fl	1d28 <func_80B45748+0x630>
    1c9c:	8fad005c 	lw	t5,92(sp)
    1ca0:	44814000 	mtc1	at,$f8
    1ca4:	02002025 	move	a0,s0
    1ca8:	4600403c 	c.lt.s	$f8,$f0
    1cac:	00000000 	nop
    1cb0:	4502001d 	bc1fl	1d28 <func_80B45748+0x630>
    1cb4:	8fad005c 	lw	t5,92(sp)
    1cb8:	0c000000 	jal	0 <func_80B44050>
    1cbc:	2405071c 	li	a1,1820
    1cc0:	10400018 	beqz	v0,1d24 <func_80B45748+0x62c>
    1cc4:	8fa4005c 	lw	a0,92(sp)
    1cc8:	0c000000 	jal	0 <func_80B44050>
    1ccc:	02002825 	move	a1,s0
    1cd0:	10400010 	beqz	v0,1d14 <func_80B45748+0x61c>
    1cd4:	02002025 	move	a0,s0
    1cd8:	0c000000 	jal	0 <func_80B44050>
    1cdc:	00000000 	nop
    1ce0:	3c010000 	lui	at,0x0
    1ce4:	c42a0000 	lwc1	$f10,0(at)
    1ce8:	460a003c 	c.lt.s	$f0,$f10
    1cec:	00000000 	nop
    1cf0:	4502000d 	bc1fl	1d28 <func_80B45748+0x630>
    1cf4:	8fad005c 	lw	t5,92(sp)
    1cf8:	8602008a 	lh	v0,138(s0)
    1cfc:	02002025 	move	a0,s0
    1d00:	a60200b6 	sh	v0,182(s0)
    1d04:	0c000000 	jal	0 <func_80B44050>
    1d08:	a6020032 	sh	v0,50(s0)
    1d0c:	10000030 	b	1dd0 <func_80B45748+0x6d8>
    1d10:	8fbf0024 	lw	ra,36(sp)
    1d14:	0c000000 	jal	0 <func_80B44050>
    1d18:	8fa5005c 	lw	a1,92(sp)
    1d1c:	1000002c 	b	1dd0 <func_80B45748+0x6d8>
    1d20:	8fbf0024 	lw	ra,36(sp)
    1d24:	8fad005c 	lw	t5,92(sp)
    1d28:	3c0e0001 	lui	t6,0x1
    1d2c:	02002025 	move	a0,s0
    1d30:	01cd7021 	addu	t6,t6,t5
    1d34:	8dce1de4 	lw	t6,7652(t6)
    1d38:	31cf005f 	andi	t7,t6,0x5f
    1d3c:	55e00004 	bnezl	t7,1d50 <func_80B45748+0x658>
    1d40:	c6100164 	lwc1	$f16,356(s0)
    1d44:	0c000000 	jal	0 <func_80B44050>
    1d48:	24053829 	li	a1,14377
    1d4c:	c6100164 	lwc1	$f16,356(s0)
    1d50:	8fa20054 	lw	v0,84(sp)
    1d54:	8fa80050 	lw	t0,80(sp)
    1d58:	4600848d 	trunc.w.s	$f18,$f16
    1d5c:	29010002 	slti	at,t0,2
    1d60:	44189000 	mfc1	t8,$f18
    1d64:	00000000 	nop
    1d68:	50580019 	beql	v0,t8,1dd0 <func_80B45748+0x6d8>
    1d6c:	8fbf0024 	lw	ra,36(sp)
    1d70:	10200008 	beqz	at,1d94 <func_80B45748+0x69c>
    1d74:	c7a40030 	lwc1	$f4,48(sp)
    1d78:	4600218d 	trunc.w.s	$f6,$f4
    1d7c:	440a3000 	mfc1	t2,$f6
    1d80:	00000000 	nop
    1d84:	01425821 	addu	t3,t2,v0
    1d88:	29610004 	slti	at,t3,4
    1d8c:	5020000d 	beqzl	at,1dc4 <func_80B45748+0x6cc>
    1d90:	02002025 	move	a0,s0
    1d94:	8fac0050 	lw	t4,80(sp)
    1d98:	c7a80030 	lwc1	$f8,48(sp)
    1d9c:	29810020 	slti	at,t4,32
    1da0:	5020000b 	beqzl	at,1dd0 <func_80B45748+0x6d8>
    1da4:	8fbf0024 	lw	ra,36(sp)
    1da8:	4600428d 	trunc.w.s	$f10,$f8
    1dac:	440e5000 	mfc1	t6,$f10
    1db0:	00000000 	nop
    1db4:	01c27821 	addu	t7,t6,v0
    1db8:	29e10022 	slti	at,t7,34
    1dbc:	14200003 	bnez	at,1dcc <func_80B45748+0x6d4>
    1dc0:	02002025 	move	a0,s0
    1dc4:	0c000000 	jal	0 <func_80B44050>
    1dc8:	2405382e 	li	a1,14382
    1dcc:	8fbf0024 	lw	ra,36(sp)
    1dd0:	8fb00020 	lw	s0,32(sp)
    1dd4:	27bd0058 	addiu	sp,sp,88
    1dd8:	03e00008 	jr	ra
    1ddc:	00000000 	nop

00001de0 <func_80B45E30>:
    1de0:	3c014040 	lui	at,0x4040
    1de4:	44812000 	mtc1	at,$f4
    1de8:	27bdffd0 	addiu	sp,sp,-48
    1dec:	3c01c040 	lui	at,0xc040
    1df0:	44813000 	mtc1	at,$f6
    1df4:	afb00028 	sw	s0,40(sp)
    1df8:	00808025 	move	s0,a0
    1dfc:	afbf002c 	sw	ra,44(sp)
    1e00:	3c050601 	lui	a1,0x601
    1e04:	240e0002 	li	t6,2
    1e08:	afae0014 	sw	t6,20(sp)
    1e0c:	24a59530 	addiu	a1,a1,-27344
    1e10:	2484014c 	addiu	a0,a0,332
    1e14:	3c063f80 	lui	a2,0x3f80
    1e18:	24070000 	li	a3,0
    1e1c:	e7a40010 	swc1	$f4,16(sp)
    1e20:	0c000000 	jal	0 <func_80B44050>
    1e24:	e7a60018 	swc1	$f6,24(sp)
    1e28:	8618001c 	lh	t8,28(s0)
    1e2c:	3c014170 	lui	at,0x4170
    1e30:	44814000 	mtc1	at,$f8
    1e34:	240f0001 	li	t7,1
    1e38:	ae0003f0 	sw	zero,1008(s0)
    1e3c:	ae0f03e4 	sw	t7,996(s0)
    1e40:	07000005 	bltz	t8,1e58 <func_80B45E30+0x78>
    1e44:	e6080060 	swc1	$f8,96(s0)
    1e48:	3c014180 	lui	at,0x4180
    1e4c:	44815000 	mtc1	at,$f10
    1e50:	10000005 	b	1e68 <func_80B45E30+0x88>
    1e54:	e60a0068 	swc1	$f10,104(s0)
    1e58:	3c014120 	lui	at,0x4120
    1e5c:	44818000 	mtc1	at,$f16
    1e60:	00000000 	nop
    1e64:	e6100068 	swc1	$f16,104(s0)
    1e68:	2419000d 	li	t9,13
    1e6c:	ae1903dc 	sw	t9,988(s0)
    1e70:	02002025 	move	a0,s0
    1e74:	0c000000 	jal	0 <func_80B44050>
    1e78:	2405382f 	li	a1,14383
    1e7c:	3c050000 	lui	a1,0x0
    1e80:	24a50000 	addiu	a1,a1,0
    1e84:	0c000000 	jal	0 <func_80B44050>
    1e88:	02002025 	move	a0,s0
    1e8c:	8fbf002c 	lw	ra,44(sp)
    1e90:	8fb00028 	lw	s0,40(sp)
    1e94:	27bd0030 	addiu	sp,sp,48
    1e98:	03e00008 	jr	ra
    1e9c:	00000000 	nop

00001ea0 <func_80B45EF0>:
    1ea0:	27bdffc8 	addiu	sp,sp,-56
    1ea4:	afbf002c 	sw	ra,44(sp)
    1ea8:	afb00028 	sw	s0,40(sp)
    1eac:	afa5003c 	sw	a1,60(sp)
    1eb0:	8c8e03f0 	lw	t6,1008(a0)
    1eb4:	00808025 	move	s0,a0
    1eb8:	51c0000e 	beqzl	t6,1ef4 <func_80B45EF0+0x54>
    1ebc:	2604014c 	addiu	a0,s0,332
    1ec0:	c4800080 	lwc1	$f0,128(a0)
    1ec4:	c4840028 	lwc1	$f4,40(a0)
    1ec8:	4600203e 	c.le.s	$f4,$f0
    1ecc:	00000000 	nop
    1ed0:	45020008 	bc1fl	1ef4 <func_80B45EF0+0x54>
    1ed4:	2604014c 	addiu	a0,s0,332
    1ed8:	44803000 	mtc1	zero,$f6
    1edc:	44804000 	mtc1	zero,$f8
    1ee0:	e4800028 	swc1	$f0,40(a0)
    1ee4:	ac8003e4 	sw	zero,996(a0)
    1ee8:	e4860060 	swc1	$f6,96(a0)
    1eec:	e4880068 	swc1	$f8,104(a0)
    1ef0:	2604014c 	addiu	a0,s0,332
    1ef4:	0c000000 	jal	0 <func_80B44050>
    1ef8:	afa40034 	sw	a0,52(sp)
    1efc:	44800000 	mtc1	zero,$f0
    1f00:	1040001c 	beqz	v0,1f74 <func_80B45EF0+0xd4>
    1f04:	8fa40034 	lw	a0,52(sp)
    1f08:	8e0f03f0 	lw	t7,1008(s0)
    1f0c:	3c050601 	lui	a1,0x601
    1f10:	24a58c6c 	addiu	a1,a1,-29588
    1f14:	15e00012 	bnez	t7,1f60 <func_80B45EF0+0xc0>
    1f18:	3c064040 	lui	a2,0x4040
    1f1c:	3c014188 	lui	at,0x4188
    1f20:	44815000 	mtc1	at,$f10
    1f24:	3c01c040 	lui	at,0xc040
    1f28:	44818000 	mtc1	at,$f16
    1f2c:	44070000 	mfc1	a3,$f0
    1f30:	24180002 	li	t8,2
    1f34:	afb80014 	sw	t8,20(sp)
    1f38:	e7aa0010 	swc1	$f10,16(sp)
    1f3c:	0c000000 	jal	0 <func_80B44050>
    1f40:	e7b00018 	swc1	$f16,24(sp)
    1f44:	2419000a 	li	t9,10
    1f48:	ae1903f0 	sw	t9,1008(s0)
    1f4c:	02002025 	move	a0,s0
    1f50:	0c000000 	jal	0 <func_80B44050>
    1f54:	2405382f 	li	a1,14383
    1f58:	10000007 	b	1f78 <func_80B45EF0+0xd8>
    1f5c:	8fa8003c 	lw	t0,60(sp)
    1f60:	e6000068 	swc1	$f0,104(s0)
    1f64:	ae0003e4 	sw	zero,996(s0)
    1f68:	8fa5003c 	lw	a1,60(sp)
    1f6c:	0c000000 	jal	0 <func_80B44050>
    1f70:	02002025 	move	a0,s0
    1f74:	8fa8003c 	lw	t0,60(sp)
    1f78:	3c090001 	lui	t1,0x1
    1f7c:	02002025 	move	a0,s0
    1f80:	01284821 	addu	t1,t1,t0
    1f84:	8d291de4 	lw	t1,7652(t1)
    1f88:	312a005f 	andi	t2,t1,0x5f
    1f8c:	55400004 	bnezl	t2,1fa0 <func_80B45EF0+0x100>
    1f90:	860b001c 	lh	t3,28(s0)
    1f94:	0c000000 	jal	0 <func_80B44050>
    1f98:	24053829 	li	a1,14377
    1f9c:	860b001c 	lh	t3,28(s0)
    1fa0:	2401fffe 	li	at,-2
    1fa4:	55610011 	bnel	t3,at,1fec <func_80B45EF0+0x14c>
    1fa8:	8fbf002c 	lw	ra,44(sp)
    1fac:	960c0088 	lhu	t4,136(s0)
    1fb0:	8fa4003c 	lw	a0,60(sp)
    1fb4:	318d0003 	andi	t5,t4,0x3
    1fb8:	51a0000c 	beqzl	t5,1fec <func_80B45EF0+0x14c>
    1fbc:	8fbf002c 	lw	ra,44(sp)
    1fc0:	0c000000 	jal	0 <func_80B44050>
    1fc4:	02002825 	move	a1,s0
    1fc8:	10400005 	beqz	v0,1fe0 <func_80B45EF0+0x140>
    1fcc:	02002025 	move	a0,s0
    1fd0:	0c000000 	jal	0 <func_80B44050>
    1fd4:	02002025 	move	a0,s0
    1fd8:	10000004 	b	1fec <func_80B45EF0+0x14c>
    1fdc:	8fbf002c 	lw	ra,44(sp)
    1fe0:	0c000000 	jal	0 <func_80B44050>
    1fe4:	8fa5003c 	lw	a1,60(sp)
    1fe8:	8fbf002c 	lw	ra,44(sp)
    1fec:	8fb00028 	lw	s0,40(sp)
    1ff0:	27bd0038 	addiu	sp,sp,56
    1ff4:	03e00008 	jr	ra
    1ff8:	00000000 	nop

00001ffc <func_80B4604C>:
    1ffc:	27bdffe8 	addiu	sp,sp,-24
    2000:	afbf0014 	sw	ra,20(sp)
    2004:	00803825 	move	a3,a0
    2008:	3c050601 	lui	a1,0x601
    200c:	24a58138 	addiu	a1,a1,-32456
    2010:	afa70018 	sw	a3,24(sp)
    2014:	2484014c 	addiu	a0,a0,332
    2018:	0c000000 	jal	0 <func_80B44050>
    201c:	3c06c080 	lui	a2,0xc080
    2020:	8fa40018 	lw	a0,24(sp)
    2024:	240e0006 	li	t6,6
    2028:	3c050000 	lui	a1,0x0
    202c:	24a50000 	addiu	a1,a1,0
    2030:	0c000000 	jal	0 <func_80B44050>
    2034:	ac8e03dc 	sw	t6,988(a0)
    2038:	8fbf0014 	lw	ra,20(sp)
    203c:	27bd0018 	addiu	sp,sp,24
    2040:	03e00008 	jr	ra
    2044:	00000000 	nop

00002048 <func_80B46098>:
    2048:	27bdffd0 	addiu	sp,sp,-48
    204c:	afb00018 	sw	s0,24(sp)
    2050:	afbf001c 	sw	ra,28(sp)
    2054:	8cae1c44 	lw	t6,7236(a1)
    2058:	00808025 	move	s0,a0
    205c:	00a03025 	move	a2,a1
    2060:	00a02025 	move	a0,a1
    2064:	02002825 	move	a1,s0
    2068:	afa60034 	sw	a2,52(sp)
    206c:	0c000000 	jal	0 <func_80B44050>
    2070:	afae0024 	sw	t6,36(sp)
    2074:	54400083 	bnezl	v0,2284 <func_80B46098+0x23c>
    2078:	8fbf001c 	lw	ra,28(sp)
    207c:	860f001c 	lh	t7,28(s0)
    2080:	2401fffe 	li	at,-2
    2084:	8fa40034 	lw	a0,52(sp)
    2088:	55e10006 	bnel	t7,at,20a4 <func_80B46098+0x5c>
    208c:	860400b6 	lh	a0,182(s0)
    2090:	0c000000 	jal	0 <func_80B44050>
    2094:	02002825 	move	a1,s0
    2098:	5440007a 	bnezl	v0,2284 <func_80B46098+0x23c>
    209c:	8fbf001c 	lw	ra,28(sp)
    20a0:	860400b6 	lh	a0,182(s0)
    20a4:	8618008a 	lh	t8,138(s0)
    20a8:	03041023 	subu	v0,t8,a0
    20ac:	00021400 	sll	v0,v0,0x10
    20b0:	00021403 	sra	v0,v0,0x10
    20b4:	58400010 	blezl	v0,20f8 <func_80B46098+0xb0>
    20b8:	44823000 	mtc1	v0,$f6
    20bc:	44822000 	mtc1	v0,$f4
    20c0:	3c013e80 	lui	at,0x3e80
    20c4:	44814000 	mtc1	at,$f8
    20c8:	468021a0 	cvt.s.w	$f6,$f4
    20cc:	3c0144fa 	lui	at,0x44fa
    20d0:	44818000 	mtc1	at,$f16
    20d4:	46083282 	mul.s	$f10,$f6,$f8
    20d8:	46105480 	add.s	$f18,$f10,$f16
    20dc:	4600910d 	trunc.w.s	$f4,$f18
    20e0:	44032000 	mfc1	v1,$f4
    20e4:	00000000 	nop
    20e8:	00031c00 	sll	v1,v1,0x10
    20ec:	1000000e 	b	2128 <func_80B46098+0xe0>
    20f0:	00031c03 	sra	v1,v1,0x10
    20f4:	44823000 	mtc1	v0,$f6
    20f8:	3c013e80 	lui	at,0x3e80
    20fc:	44815000 	mtc1	at,$f10
    2100:	46803220 	cvt.s.w	$f8,$f6
    2104:	3c0144fa 	lui	at,0x44fa
    2108:	44819000 	mtc1	at,$f18
    210c:	460a4402 	mul.s	$f16,$f8,$f10
    2110:	46128101 	sub.s	$f4,$f16,$f18
    2114:	4600218d 	trunc.w.s	$f6,$f4
    2118:	44033000 	mfc1	v1,$f6
    211c:	00000000 	nop
    2120:	00031c00 	sll	v1,v1,0x10
    2124:	00031c03 	sra	v1,v1,0x10
    2128:	00834821 	addu	t1,a0,v1
    212c:	a60900b6 	sh	t1,182(s0)
    2130:	860a00b6 	lh	t2,182(s0)
    2134:	2604014c 	addiu	a0,s0,332
    2138:	1840000f 	blez	v0,2178 <func_80B46098+0x130>
    213c:	a60a0032 	sh	t2,50(s0)
    2140:	44834000 	mtc1	v1,$f8
    2144:	3c014000 	lui	at,0x4000
    2148:	44816000 	mtc1	at,$f12
    214c:	468042a0 	cvt.s.w	$f10,$f8
    2150:	3c013fc0 	lui	at,0x3fc0
    2154:	44818000 	mtc1	at,$f16
    2158:	00000000 	nop
    215c:	46105082 	mul.s	$f2,$f10,$f16
    2160:	4602603c 	c.lt.s	$f12,$f2
    2164:	00000000 	nop
    2168:	45020011 	bc1fl	21b0 <func_80B46098+0x168>
    216c:	46001207 	neg.s	$f8,$f2
    2170:	1000000e 	b	21ac <func_80B46098+0x164>
    2174:	46006086 	mov.s	$f2,$f12
    2178:	44839000 	mtc1	v1,$f18
    217c:	3c01c000 	lui	at,0xc000
    2180:	44816000 	mtc1	at,$f12
    2184:	46809120 	cvt.s.w	$f4,$f18
    2188:	3c013fc0 	lui	at,0x3fc0
    218c:	44813000 	mtc1	at,$f6
    2190:	00000000 	nop
    2194:	46062082 	mul.s	$f2,$f4,$f6
    2198:	460c103c 	c.lt.s	$f2,$f12
    219c:	00000000 	nop
    21a0:	45020003 	bc1fl	21b0 <func_80B46098+0x168>
    21a4:	46001207 	neg.s	$f8,$f2
    21a8:	46006086 	mov.s	$f2,$f12
    21ac:	46001207 	neg.s	$f8,$f2
    21b0:	0c000000 	jal	0 <func_80B44050>
    21b4:	e6080168 	swc1	$f8,360(s0)
    21b8:	860b001c 	lh	t3,28(s0)
    21bc:	26040024 	addiu	a0,s0,36
    21c0:	05620011 	bltzl	t3,2208 <func_80B46098+0x1c0>
    21c4:	02002025 	move	a0,s0
    21c8:	0c000000 	jal	0 <func_80B44050>
    21cc:	860503fe 	lh	a1,1022(s0)
    21d0:	a60203fe 	sh	v0,1022(s0)
    21d4:	8fa40024 	lw	a0,36(sp)
    21d8:	2405ffff 	li	a1,-1
    21dc:	0c000000 	jal	0 <func_80B44050>
    21e0:	24840024 	addiu	a0,a0,36
    21e4:	860c03fe 	lh	t4,1022(s0)
    21e8:	02002025 	move	a0,s0
    21ec:	504c0006 	beql	v0,t4,2208 <func_80B46098+0x1c0>
    21f0:	02002025 	move	a0,s0
    21f4:	0c000000 	jal	0 <func_80B44050>
    21f8:	8fa50034 	lw	a1,52(sp)
    21fc:	10000021 	b	2284 <func_80B46098+0x23c>
    2200:	8fbf001c 	lw	ra,28(sp)
    2204:	02002025 	move	a0,s0
    2208:	0c000000 	jal	0 <func_80B44050>
    220c:	24051555 	li	a1,5461
    2210:	50400012 	beqzl	v0,225c <func_80B46098+0x214>
    2214:	8fad0034 	lw	t5,52(sp)
    2218:	0c000000 	jal	0 <func_80B44050>
    221c:	00000000 	nop
    2220:	3c010000 	lui	at,0x0
    2224:	c42a0000 	lwc1	$f10,0(at)
    2228:	8fa50034 	lw	a1,52(sp)
    222c:	02002025 	move	a0,s0
    2230:	4600503c 	c.lt.s	$f10,$f0
    2234:	00000000 	nop
    2238:	45000005 	bc1f	2250 <func_80B46098+0x208>
    223c:	00000000 	nop
    2240:	0c000000 	jal	0 <func_80B44050>
    2244:	02002025 	move	a0,s0
    2248:	10000004 	b	225c <func_80B46098+0x214>
    224c:	8fad0034 	lw	t5,52(sp)
    2250:	0c000000 	jal	0 <func_80B44050>
    2254:	8fa50034 	lw	a1,52(sp)
    2258:	8fad0034 	lw	t5,52(sp)
    225c:	3c0e0001 	lui	t6,0x1
    2260:	02002025 	move	a0,s0
    2264:	01cd7021 	addu	t6,t6,t5
    2268:	8dce1de4 	lw	t6,7652(t6)
    226c:	31cf005f 	andi	t7,t6,0x5f
    2270:	55e00004 	bnezl	t7,2284 <func_80B46098+0x23c>
    2274:	8fbf001c 	lw	ra,28(sp)
    2278:	0c000000 	jal	0 <func_80B44050>
    227c:	24053829 	li	a1,14377
    2280:	8fbf001c 	lw	ra,28(sp)
    2284:	8fb00018 	lw	s0,24(sp)
    2288:	27bd0030 	addiu	sp,sp,48
    228c:	03e00008 	jr	ra
    2290:	00000000 	nop

00002294 <func_80B462E4>:
    2294:	27bdffe0 	addiu	sp,sp,-32
    2298:	afbf001c 	sw	ra,28(sp)
    229c:	afb00018 	sw	s0,24(sp)
    22a0:	afa50024 	sw	a1,36(sp)
    22a4:	848e001c 	lh	t6,28(a0)
    22a8:	00808025 	move	s0,a0
    22ac:	05c00012 	bltz	t6,22f8 <func_80B462E4+0x64>
    22b0:	00000000 	nop
    22b4:	860700b6 	lh	a3,182(s0)
    22b8:	3c064220 	lui	a2,0x4220
    22bc:	24e73fff 	addiu	a3,a3,16383
    22c0:	00073c00 	sll	a3,a3,0x10
    22c4:	0c000000 	jal	0 <func_80B44050>
    22c8:	00073c03 	sra	a3,a3,0x10
    22cc:	1440000a 	bnez	v0,22f8 <func_80B462E4+0x64>
    22d0:	02002025 	move	a0,s0
    22d4:	860700b6 	lh	a3,182(s0)
    22d8:	8fa50024 	lw	a1,36(sp)
    22dc:	3c06c220 	lui	a2,0xc220
    22e0:	24e73fff 	addiu	a3,a3,16383
    22e4:	00073c00 	sll	a3,a3,0x10
    22e8:	0c000000 	jal	0 <func_80B44050>
    22ec:	00073c03 	sra	a3,a3,0x10
    22f0:	10400021 	beqz	v0,2378 <func_80B462E4+0xe4>
    22f4:	02002025 	move	a0,s0
    22f8:	3c050601 	lui	a1,0x601
    22fc:	24a56388 	addiu	a1,a1,25480
    2300:	0c000000 	jal	0 <func_80B44050>
    2304:	2604014c 	addiu	a0,s0,332
    2308:	3c014140 	lui	at,0x4140
    230c:	44816000 	mtc1	at,$f12
    2310:	0c000000 	jal	0 <func_80B44050>
    2314:	00000000 	nop
    2318:	860f00b6 	lh	t7,182(s0)
    231c:	e6000068 	swc1	$f0,104(s0)
    2320:	0c000000 	jal	0 <func_80B44050>
    2324:	a60f0032 	sh	t7,50(s0)
    2328:	3c014120 	lui	at,0x4120
    232c:	44812000 	mtc1	at,$f4
    2330:	3c0141a0 	lui	at,0x41a0
    2334:	44814000 	mtc1	at,$f8
    2338:	46040182 	mul.s	$f6,$f0,$f4
    233c:	44809000 	mtc1	zero,$f18
    2340:	24080007 	li	t0,7
    2344:	3c050000 	lui	a1,0x0
    2348:	ae0003e4 	sw	zero,996(s0)
    234c:	ae0803dc 	sw	t0,988(s0)
    2350:	24a50000 	addiu	a1,a1,0
    2354:	46083280 	add.s	$f10,$f6,$f8
    2358:	02002025 	move	a0,s0
    235c:	e6120408 	swc1	$f18,1032(s0)
    2360:	4600540d 	trunc.w.s	$f16,$f10
    2364:	44198000 	mfc1	t9,$f16
    2368:	0c000000 	jal	0 <func_80B44050>
    236c:	ae1903f0 	sw	t9,1008(s0)
    2370:	10000004 	b	2384 <func_80B462E4+0xf0>
    2374:	8fbf001c 	lw	ra,28(sp)
    2378:	0c000000 	jal	0 <func_80B44050>
    237c:	8fa50024 	lw	a1,36(sp)
    2380:	8fbf001c 	lw	ra,28(sp)
    2384:	8fb00018 	lw	s0,24(sp)
    2388:	27bd0020 	addiu	sp,sp,32
    238c:	03e00008 	jr	ra
    2390:	00000000 	nop

00002394 <func_80B463E4>:
    2394:	27bdffa8 	addiu	sp,sp,-88
    2398:	afbf0024 	sw	ra,36(sp)
    239c:	afb00020 	sw	s0,32(sp)
    23a0:	afa5005c 	sw	a1,92(sp)
    23a4:	8caf1c44 	lw	t7,7236(a1)
    23a8:	44802000 	mtc1	zero,$f4
    23ac:	00808025 	move	s0,a0
    23b0:	afaf0040 	sw	t7,64(sp)
    23b4:	e7a4003c 	swc1	$f4,60(sp)
    23b8:	8605008a 	lh	a1,138(s0)
    23bc:	24180001 	li	t8,1
    23c0:	afb80010 	sw	t8,16(sp)
    23c4:	248400b6 	addiu	a0,a0,182
    23c8:	24060001 	li	a2,1
    23cc:	0c000000 	jal	0 <func_80B44050>
    23d0:	24070fa0 	li	a3,4000
    23d4:	8fa4005c 	lw	a0,92(sp)
    23d8:	0c000000 	jal	0 <func_80B44050>
    23dc:	02002825 	move	a1,s0
    23e0:	54400178 	bnezl	v0,29c4 <func_80B463E4+0x630>
    23e4:	8fbf0024 	lw	ra,36(sp)
    23e8:	8619001c 	lh	t9,28(s0)
    23ec:	2401fffe 	li	at,-2
    23f0:	8fa4005c 	lw	a0,92(sp)
    23f4:	57210006 	bnel	t9,at,2410 <func_80B463E4+0x7c>
    23f8:	860200b6 	lh	v0,182(s0)
    23fc:	0c000000 	jal	0 <func_80B44050>
    2400:	02002825 	move	a1,s0
    2404:	5440016f 	bnezl	v0,29c4 <func_80B463E4+0x630>
    2408:	8fbf0024 	lw	ra,36(sp)
    240c:	860200b6 	lh	v0,182(s0)
    2410:	34018000 	li	at,0x8000
    2414:	24483a98 	addiu	t0,v0,15000
    2418:	a6080032 	sh	t0,50(s0)
    241c:	8fa90040 	lw	t1,64(sp)
    2420:	852300b6 	lh	v1,182(t1)
    2424:	00611821 	addu	v1,v1,at
    2428:	00031c00 	sll	v1,v1,0x10
    242c:	00031c03 	sra	v1,v1,0x10
    2430:	00622023 	subu	a0,v1,v0
    2434:	00042400 	sll	a0,a0,0x10
    2438:	00042403 	sra	a0,a0,0x10
    243c:	0c000000 	jal	0 <func_80B44050>
    2440:	a7a30056 	sh	v1,86(sp)
    2444:	44803000 	mtc1	zero,$f6
    2448:	00000000 	nop
    244c:	4600303e 	c.le.s	$f6,$f0
    2450:	00000000 	nop
    2454:	4500000e 	bc1f	2490 <func_80B463E4+0xfc>
    2458:	3c01c100 	lui	at,0xc100
    245c:	44810000 	mtc1	at,$f0
    2460:	3c013e80 	lui	at,0x3e80
    2464:	44815000 	mtc1	at,$f10
    2468:	c6080068 	lwc1	$f8,104(s0)
    246c:	460a4481 	sub.s	$f18,$f8,$f10
    2470:	e6120068 	swc1	$f18,104(s0)
    2474:	c6040068 	lwc1	$f4,104(s0)
    2478:	4600203c 	c.lt.s	$f4,$f0
    247c:	00000000 	nop
    2480:	4502001c 	bc1fl	24f4 <func_80B463E4+0x160>
    2484:	860c001c 	lh	t4,28(s0)
    2488:	10000019 	b	24f0 <func_80B463E4+0x15c>
    248c:	e6000068 	swc1	$f0,104(s0)
    2490:	87aa0056 	lh	t2,86(sp)
    2494:	860b00b6 	lh	t3,182(s0)
    2498:	014b2023 	subu	a0,t2,t3
    249c:	00042400 	sll	a0,a0,0x10
    24a0:	0c000000 	jal	0 <func_80B44050>
    24a4:	00042403 	sra	a0,a0,0x10
    24a8:	44803000 	mtc1	zero,$f6
    24ac:	3c014100 	lui	at,0x4100
    24b0:	4606003c 	c.lt.s	$f0,$f6
    24b4:	00000000 	nop
    24b8:	4502000e 	bc1fl	24f4 <func_80B463E4+0x160>
    24bc:	860c001c 	lh	t4,28(s0)
    24c0:	44810000 	mtc1	at,$f0
    24c4:	3c013e80 	lui	at,0x3e80
    24c8:	44815000 	mtc1	at,$f10
    24cc:	c6080068 	lwc1	$f8,104(s0)
    24d0:	460a4480 	add.s	$f18,$f8,$f10
    24d4:	e6120068 	swc1	$f18,104(s0)
    24d8:	c6040068 	lwc1	$f4,104(s0)
    24dc:	4604003c 	c.lt.s	$f0,$f4
    24e0:	00000000 	nop
    24e4:	45020003 	bc1fl	24f4 <func_80B463E4+0x160>
    24e8:	860c001c 	lh	t4,28(s0)
    24ec:	e6000068 	swc1	$f0,104(s0)
    24f0:	860c001c 	lh	t4,28(s0)
    24f4:	05820009 	bltzl	t4,251c <func_80B463E4+0x188>
    24f8:	96020088 	lhu	v0,136(s0)
    24fc:	860d03f8 	lh	t5,1016(s0)
    2500:	51a0004e 	beqzl	t5,263c <func_80B463E4+0x2a8>
    2504:	8fa4005c 	lw	a0,92(sp)
    2508:	c6060068 	lwc1	$f6,104(s0)
    250c:	46003207 	neg.s	$f8,$f6
    2510:	10000049 	b	2638 <func_80B463E4+0x2a4>
    2514:	e6080068 	swc1	$f8,104(s0)
    2518:	96020088 	lhu	v0,136(s0)
    251c:	c6000068 	lwc1	$f0,104(s0)
    2520:	02002025 	move	a0,s0
    2524:	30420008 	andi	v0,v0,0x8
    2528:	1440000d 	bnez	v0,2560 <func_80B463E4+0x1cc>
    252c:	00000000 	nop
    2530:	860700b6 	lh	a3,182(s0)
    2534:	44060000 	mfc1	a2,$f0
    2538:	8fa5005c 	lw	a1,92(sp)
    253c:	24e73fff 	addiu	a3,a3,16383
    2540:	00073c00 	sll	a3,a3,0x10
    2544:	0c000000 	jal	0 <func_80B44050>
    2548:	00073c03 	sra	a3,a3,0x10
    254c:	5440003b 	bnezl	v0,263c <func_80B463E4+0x2a8>
    2550:	8fa4005c 	lw	a0,92(sp)
    2554:	96020088 	lhu	v0,136(s0)
    2558:	c6000068 	lwc1	$f0,104(s0)
    255c:	30420008 	andi	v0,v0,0x8
    2560:	10400015 	beqz	v0,25b8 <func_80B463E4+0x224>
    2564:	3c010000 	lui	at,0x0
    2568:	44805000 	mtc1	zero,$f10
    256c:	00000000 	nop
    2570:	4600503e 	c.le.s	$f10,$f0
    2574:	00000000 	nop
    2578:	45020007 	bc1fl	2598 <func_80B463E4+0x204>
    257c:	860200b6 	lh	v0,182(s0)
    2580:	860200b6 	lh	v0,182(s0)
    2584:	24423fff 	addiu	v0,v0,16383
    2588:	00021400 	sll	v0,v0,0x10
    258c:	10000005 	b	25a4 <func_80B463E4+0x210>
    2590:	00021403 	sra	v0,v0,0x10
    2594:	860200b6 	lh	v0,182(s0)
    2598:	2442c001 	addiu	v0,v0,-16383
    259c:	00021400 	sll	v0,v0,0x10
    25a0:	00021403 	sra	v0,v0,0x10
    25a4:	860e007e 	lh	t6,126(s0)
    25a8:	01c21023 	subu	v0,t6,v0
    25ac:	00021400 	sll	v0,v0,0x10
    25b0:	10000005 	b	25c8 <func_80B463E4+0x234>
    25b4:	00021403 	sra	v0,v0,0x10
    25b8:	c4320000 	lwc1	$f18,0(at)
    25bc:	00001025 	move	v0,zero
    25c0:	46120102 	mul.s	$f4,$f0,$f18
    25c4:	e6040068 	swc1	$f4,104(s0)
    25c8:	04400003 	bltz	v0,25d8 <func_80B463E4+0x244>
    25cc:	00021823 	negu	v1,v0
    25d0:	10000001 	b	25d8 <func_80B463E4+0x244>
    25d4:	00401825 	move	v1,v0
    25d8:	28614001 	slti	at,v1,16385
    25dc:	14200016 	bnez	at,2638 <func_80B463E4+0x2a4>
    25e0:	3c010000 	lui	at,0x0
    25e4:	c4280000 	lwc1	$f8,0(at)
    25e8:	c6060068 	lwc1	$f6,104(s0)
    25ec:	44809000 	mtc1	zero,$f18
    25f0:	3c013f00 	lui	at,0x3f00
    25f4:	46083282 	mul.s	$f10,$f6,$f8
    25f8:	e60a0068 	swc1	$f10,104(s0)
    25fc:	c6000068 	lwc1	$f0,104(s0)
    2600:	4612003c 	c.lt.s	$f0,$f18
    2604:	00000000 	nop
    2608:	45020008 	bc1fl	262c <func_80B463E4+0x298>
    260c:	44814000 	mtc1	at,$f8
    2610:	3c013f00 	lui	at,0x3f00
    2614:	44812000 	mtc1	at,$f4
    2618:	00000000 	nop
    261c:	46040181 	sub.s	$f6,$f0,$f4
    2620:	10000005 	b	2638 <func_80B463E4+0x2a4>
    2624:	e6060068 	swc1	$f6,104(s0)
    2628:	44814000 	mtc1	at,$f8
    262c:	00000000 	nop
    2630:	46080280 	add.s	$f10,$f0,$f8
    2634:	e60a0068 	swc1	$f10,104(s0)
    2638:	8fa4005c 	lw	a0,92(sp)
    263c:	0c000000 	jal	0 <func_80B44050>
    2640:	02002825 	move	a1,s0
    2644:	10400004 	beqz	v0,2658 <func_80B463E4+0x2c4>
    2648:	3c0142c8 	lui	at,0x42c8
    264c:	44811000 	mtc1	at,$f2
    2650:	00000000 	nop
    2654:	e7a2003c 	swc1	$f2,60(sp)
    2658:	3c01428c 	lui	at,0x428c
    265c:	c7a2003c 	lwc1	$f2,60(sp)
    2660:	44819000 	mtc1	at,$f18
    2664:	c6000090 	lwc1	$f0,144(s0)
    2668:	46029100 	add.s	$f4,$f18,$f2
    266c:	4604003e 	c.le.s	$f0,$f4
    2670:	00000000 	nop
    2674:	4502000b 	bc1fl	26a4 <func_80B463E4+0x310>
    2678:	3c0142b4 	lui	at,0x42b4
    267c:	44803000 	mtc1	zero,$f6
    2680:	26040408 	addiu	a0,s0,1032
    2684:	3c05c080 	lui	a1,0xc080
    2688:	3c063f80 	lui	a2,0x3f80
    268c:	3c073fc0 	lui	a3,0x3fc0
    2690:	0c000000 	jal	0 <func_80B44050>
    2694:	e7a60010 	swc1	$f6,16(sp)
    2698:	1000001a 	b	2704 <func_80B463E4+0x370>
    269c:	c6020408 	lwc1	$f2,1032(s0)
    26a0:	3c0142b4 	lui	at,0x42b4
    26a4:	44814000 	mtc1	at,$f8
    26a8:	26040408 	addiu	a0,s0,1032
    26ac:	24050000 	li	a1,0
    26b0:	46024280 	add.s	$f10,$f8,$f2
    26b4:	3c063f80 	lui	a2,0x3f80
    26b8:	3c0740b4 	lui	a3,0x40b4
    26bc:	4600503c 	c.lt.s	$f10,$f0
    26c0:	00000000 	nop
    26c4:	4502000b 	bc1fl	26f4 <func_80B463E4+0x360>
    26c8:	44802000 	mtc1	zero,$f4
    26cc:	44809000 	mtc1	zero,$f18
    26d0:	26040408 	addiu	a0,s0,1032
    26d4:	3c054080 	lui	a1,0x4080
    26d8:	3c063f80 	lui	a2,0x3f80
    26dc:	3c073fc0 	lui	a3,0x3fc0
    26e0:	0c000000 	jal	0 <func_80B44050>
    26e4:	e7b20010 	swc1	$f18,16(sp)
    26e8:	10000006 	b	2704 <func_80B463E4+0x370>
    26ec:	c6020408 	lwc1	$f2,1032(s0)
    26f0:	44802000 	mtc1	zero,$f4
    26f4:	34e7cccd 	ori	a3,a3,0xcccd
    26f8:	0c000000 	jal	0 <func_80B44050>
    26fc:	e7a40010 	swc1	$f4,16(sp)
    2700:	c6020408 	lwc1	$f2,1032(s0)
    2704:	44803000 	mtc1	zero,$f6
    2708:	02002025 	move	a0,s0
    270c:	46023032 	c.eq.s	$f6,$f2
    2710:	00000000 	nop
    2714:	45030015 	bc1tl	276c <func_80B463E4+0x3d8>
    2718:	44808000 	mtc1	zero,$f16
    271c:	44061000 	mfc1	a2,$f2
    2720:	0c000000 	jal	0 <func_80B44050>
    2724:	8fa5005c 	lw	a1,92(sp)
    2728:	54400010 	bnezl	v0,276c <func_80B463E4+0x3d8>
    272c:	44808000 	mtc1	zero,$f16
    2730:	0c000000 	jal	0 <func_80B44050>
    2734:	860400b6 	lh	a0,182(s0)
    2738:	c60a0408 	lwc1	$f10,1032(s0)
    273c:	c6080024 	lwc1	$f8,36(s0)
    2740:	860400b6 	lh	a0,182(s0)
    2744:	460a0482 	mul.s	$f18,$f0,$f10
    2748:	46124100 	add.s	$f4,$f8,$f18
    274c:	0c000000 	jal	0 <func_80B44050>
    2750:	e6040024 	swc1	$f4,36(s0)
    2754:	c60a0408 	lwc1	$f10,1032(s0)
    2758:	c606002c 	lwc1	$f6,44(s0)
    275c:	460a0202 	mul.s	$f8,$f0,$f10
    2760:	46083480 	add.s	$f18,$f6,$f8
    2764:	e612002c 	swc1	$f18,44(s0)
    2768:	44808000 	mtc1	zero,$f16
    276c:	c6000068 	lwc1	$f0,104(s0)
    2770:	c6020408 	lwc1	$f2,1032(s0)
    2774:	4600803e 	c.le.s	$f16,$f0
    2778:	00000000 	nop
    277c:	45020004 	bc1fl	2790 <func_80B463E4+0x3fc>
    2780:	46000387 	neg.s	$f14,$f0
    2784:	10000002 	b	2790 <func_80B463E4+0x3fc>
    2788:	46000386 	mov.s	$f14,$f0
    278c:	46000387 	neg.s	$f14,$f0
    2790:	4602803e 	c.le.s	$f16,$f2
    2794:	00000000 	nop
    2798:	45020004 	bc1fl	27ac <func_80B463E4+0x418>
    279c:	46001307 	neg.s	$f12,$f2
    27a0:	10000002 	b	27ac <func_80B463E4+0x418>
    27a4:	46001306 	mov.s	$f12,$f2
    27a8:	46001307 	neg.s	$f12,$f2
    27ac:	460e603e 	c.le.s	$f12,$f14
    27b0:	3c013f40 	lui	at,0x3f40
    27b4:	45020007 	bc1fl	27d4 <func_80B463E4+0x440>
    27b8:	c6060168 	lwc1	$f6,360(s0)
    27bc:	44812000 	mtc1	at,$f4
    27c0:	00000000 	nop
    27c4:	46040282 	mul.s	$f10,$f0,$f4
    27c8:	10000012 	b	2814 <func_80B463E4+0x480>
    27cc:	e60a0168 	swc1	$f10,360(s0)
    27d0:	c6060168 	lwc1	$f6,360(s0)
    27d4:	44804000 	mtc1	zero,$f8
    27d8:	3c013f40 	lui	at,0x3f40
    27dc:	4608303c 	c.lt.s	$f6,$f8
    27e0:	00000000 	nop
    27e4:	45020008 	bc1fl	2808 <func_80B463E4+0x474>
    27e8:	44815000 	mtc1	at,$f10
    27ec:	3c01bf40 	lui	at,0xbf40
    27f0:	44819000 	mtc1	at,$f18
    27f4:	00000000 	nop
    27f8:	46121102 	mul.s	$f4,$f2,$f18
    27fc:	10000005 	b	2814 <func_80B463E4+0x480>
    2800:	e6040168 	swc1	$f4,360(s0)
    2804:	44815000 	mtc1	at,$f10
    2808:	00000000 	nop
    280c:	460a1182 	mul.s	$f6,$f2,$f10
    2810:	e6060168 	swc1	$f6,360(s0)
    2814:	c6080164 	lwc1	$f8,356(s0)
    2818:	2604014c 	addiu	a0,s0,332
    281c:	4600448d 	trunc.w.s	$f18,$f8
    2820:	44039000 	mfc1	v1,$f18
    2824:	0c000000 	jal	0 <func_80B44050>
    2828:	afa3004c 	sw	v1,76(sp)
    282c:	44808000 	mtc1	zero,$f16
    2830:	c6000168 	lwc1	$f0,360(s0)
    2834:	8fa3004c 	lw	v1,76(sp)
    2838:	4600803e 	c.le.s	$f16,$f0
    283c:	00000000 	nop
    2840:	45020004 	bc1fl	2854 <func_80B463E4+0x4c0>
    2844:	46000307 	neg.s	$f12,$f0
    2848:	10000002 	b	2854 <func_80B463E4+0x4c0>
    284c:	46000306 	mov.s	$f12,$f0
    2850:	46000307 	neg.s	$f12,$f0
    2854:	c6020164 	lwc1	$f2,356(s0)
    2858:	4600803e 	c.le.s	$f16,$f0
    285c:	460c1101 	sub.s	$f4,$f2,$f12
    2860:	4600118d 	trunc.w.s	$f6,$f2
    2864:	4600228d 	trunc.w.s	$f10,$f4
    2868:	44083000 	mfc1	t0,$f6
    286c:	44025000 	mfc1	v0,$f10
    2870:	45020004 	bc1fl	2884 <func_80B463E4+0x4f0>
    2874:	46000307 	neg.s	$f12,$f0
    2878:	10000002 	b	2884 <func_80B463E4+0x4f0>
    287c:	46000306 	mov.s	$f12,$f0
    2880:	46000307 	neg.s	$f12,$f0
    2884:	10680015 	beq	v1,t0,28dc <func_80B463E4+0x548>
    2888:	2841000e 	slti	at,v0,14
    288c:	50200008 	beqzl	at,28b0 <func_80B463E4+0x51c>
    2890:	2841001b 	slti	at,v0,27
    2894:	4600620d 	trunc.w.s	$f8,$f12
    2898:	440a4000 	mfc1	t2,$f8
    289c:	00000000 	nop
    28a0:	01435821 	addu	t3,t2,v1
    28a4:	29610010 	slti	at,t3,16
    28a8:	10200009 	beqz	at,28d0 <func_80B463E4+0x53c>
    28ac:	2841001b 	slti	at,v0,27
    28b0:	5020000b 	beqzl	at,28e0 <func_80B463E4+0x54c>
    28b4:	8fa3005c 	lw	v1,92(sp)
    28b8:	4600648d 	trunc.w.s	$f18,$f12
    28bc:	440d9000 	mfc1	t5,$f18
    28c0:	00000000 	nop
    28c4:	01a37021 	addu	t6,t5,v1
    28c8:	29c1001d 	slti	at,t6,29
    28cc:	14200003 	bnez	at,28dc <func_80B463E4+0x548>
    28d0:	02002025 	move	a0,s0
    28d4:	0c000000 	jal	0 <func_80B44050>
    28d8:	2405382e 	li	a1,14382
    28dc:	8fa3005c 	lw	v1,92(sp)
    28e0:	3c010001 	lui	at,0x1
    28e4:	02002025 	move	a0,s0
    28e8:	00611821 	addu	v1,v1,at
    28ec:	8c6f1de4 	lw	t7,7652(v1)
    28f0:	24053829 	li	a1,14377
    28f4:	31f8005f 	andi	t8,t7,0x5f
    28f8:	57000005 	bnezl	t8,2910 <func_80B463E4+0x57c>
    28fc:	87b90056 	lh	t9,86(sp)
    2900:	0c000000 	jal	0 <func_80B44050>
    2904:	afa30028 	sw	v1,40(sp)
    2908:	8fa30028 	lw	v1,40(sp)
    290c:	87b90056 	lh	t9,86(sp)
    2910:	860800b6 	lh	t0,182(s0)
    2914:	afa30028 	sw	v1,40(sp)
    2918:	03282023 	subu	a0,t9,t0
    291c:	00042400 	sll	a0,a0,0x10
    2920:	0c000000 	jal	0 <func_80B44050>
    2924:	00042403 	sra	a0,a0,0x10
    2928:	3c010000 	lui	at,0x0
    292c:	c4240000 	lwc1	$f4,0(at)
    2930:	8fa30028 	lw	v1,40(sp)
    2934:	3c0142c8 	lui	at,0x42c8
    2938:	4604003c 	c.lt.s	$f0,$f4
    293c:	00000000 	nop
    2940:	45030005 	bc1tl	2958 <func_80B463E4+0x5c4>
    2944:	44815000 	mtc1	at,$f10
    2948:	8e0203f0 	lw	v0,1008(s0)
    294c:	14400019 	bnez	v0,29b4 <func_80B463E4+0x620>
    2950:	00000000 	nop
    2954:	44815000 	mtc1	at,$f10
    2958:	c6060090 	lwc1	$f6,144(s0)
    295c:	860900b6 	lh	t1,182(s0)
    2960:	460a303e 	c.le.s	$f6,$f10
    2964:	a6090032 	sh	t1,50(s0)
    2968:	4500000e 	bc1f	29a4 <func_80B463E4+0x610>
    296c:	00000000 	nop
    2970:	8c6a1de4 	lw	t2,7652(v1)
    2974:	8fa4005c 	lw	a0,92(sp)
    2978:	314b0003 	andi	t3,t2,0x3
    297c:	15600009 	bnez	t3,29a4 <func_80B463E4+0x610>
    2980:	00000000 	nop
    2984:	0c000000 	jal	0 <func_80B44050>
    2988:	02002825 	move	a1,s0
    298c:	10400005 	beqz	v0,29a4 <func_80B463E4+0x610>
    2990:	00000000 	nop
    2994:	0c000000 	jal	0 <func_80B44050>
    2998:	02002025 	move	a0,s0
    299c:	10000009 	b	29c4 <func_80B463E4+0x630>
    29a0:	8fbf0024 	lw	ra,36(sp)
    29a4:	0c000000 	jal	0 <func_80B44050>
    29a8:	02002025 	move	a0,s0
    29ac:	10000005 	b	29c4 <func_80B463E4+0x630>
    29b0:	8fbf0024 	lw	ra,36(sp)
    29b4:	10400002 	beqz	v0,29c0 <func_80B463E4+0x62c>
    29b8:	244cffff 	addiu	t4,v0,-1
    29bc:	ae0c03f0 	sw	t4,1008(s0)
    29c0:	8fbf0024 	lw	ra,36(sp)
    29c4:	8fb00020 	lw	s0,32(sp)
    29c8:	27bd0058 	addiu	sp,sp,88
    29cc:	03e00008 	jr	ra
    29d0:	00000000 	nop

000029d4 <func_80B46A24>:
    29d4:	27bdffd0 	addiu	sp,sp,-48
    29d8:	afb00028 	sw	s0,40(sp)
    29dc:	00808025 	move	s0,a0
    29e0:	afbf002c 	sw	ra,44(sp)
    29e4:	3c040601 	lui	a0,0x601
    29e8:	0c000000 	jal	0 <func_80B44050>
    29ec:	2484a3d4 	addiu	a0,a0,-23596
    29f0:	44822000 	mtc1	v0,$f4
    29f4:	3c01c080 	lui	at,0xc080
    29f8:	44814000 	mtc1	at,$f8
    29fc:	468021a0 	cvt.s.w	$f6,$f4
    2a00:	3c050601 	lui	a1,0x601
    2a04:	240e0002 	li	t6,2
    2a08:	afae0014 	sw	t6,20(sp)
    2a0c:	24a5a3d4 	addiu	a1,a1,-23596
    2a10:	2604014c 	addiu	a0,s0,332
    2a14:	e7a60010 	swc1	$f6,16(sp)
    2a18:	3c063fa0 	lui	a2,0x3fa0
    2a1c:	24070000 	li	a3,0
    2a20:	0c000000 	jal	0 <func_80B44050>
    2a24:	e7a80018 	swc1	$f8,24(sp)
    2a28:	860f001c 	lh	t7,28(s0)
    2a2c:	2401fffe 	li	at,-2
    2a30:	24080009 	li	t0,9
    2a34:	15e10005 	bne	t7,at,2a4c <func_80B46A24+0x78>
    2a38:	02002025 	move	a0,s0
    2a3c:	3c013fe0 	lui	at,0x3fe0
    2a40:	44815000 	mtc1	at,$f10
    2a44:	00000000 	nop
    2a48:	e60a0168 	swc1	$f10,360(s0)
    2a4c:	92180474 	lbu	t8,1140(s0)
    2a50:	ae0803dc 	sw	t0,988(s0)
    2a54:	24053829 	li	a1,14377
    2a58:	3319fffb 	andi	t9,t8,0xfffb
    2a5c:	0c000000 	jal	0 <func_80B44050>
    2a60:	a2190474 	sb	t9,1140(s0)
    2a64:	44808000 	mtc1	zero,$f16
    2a68:	3c050000 	lui	a1,0x0
    2a6c:	24a50000 	addiu	a1,a1,0
    2a70:	02002025 	move	a0,s0
    2a74:	0c000000 	jal	0 <func_80B44050>
    2a78:	e6100068 	swc1	$f16,104(s0)
    2a7c:	8fbf002c 	lw	ra,44(sp)
    2a80:	8fb00028 	lw	s0,40(sp)
    2a84:	27bd0030 	addiu	sp,sp,48
    2a88:	03e00008 	jr	ra
    2a8c:	00000000 	nop

00002a90 <func_80B46AE0>:
    2a90:	27bdffd8 	addiu	sp,sp,-40
    2a94:	afbf001c 	sw	ra,28(sp)
    2a98:	afb00018 	sw	s0,24(sp)
    2a9c:	afa5002c 	sw	a1,44(sp)
    2aa0:	8caf1c44 	lw	t7,7236(a1)
    2aa4:	44802000 	mtc1	zero,$f4
    2aa8:	2401000a 	li	at,10
    2aac:	afaf0024 	sw	t7,36(sp)
    2ab0:	c4860164 	lwc1	$f6,356(a0)
    2ab4:	00808025 	move	s0,a0
    2ab8:	e4840068 	swc1	$f4,104(a0)
    2abc:	4600320d 	trunc.w.s	$f8,$f6
    2ac0:	44194000 	mfc1	t9,$f8
    2ac4:	00000000 	nop
    2ac8:	17210003 	bne	t9,at,2ad8 <func_80B46AE0+0x48>
    2acc:	00000000 	nop
    2ad0:	0c000000 	jal	0 <func_80B44050>
    2ad4:	2405382a 	li	a1,14378
    2ad8:	0c000000 	jal	0 <func_80B44050>
    2adc:	2604014c 	addiu	a0,s0,332
    2ae0:	50400088 	beqzl	v0,2d04 <func_80B46AE0+0x274>
    2ae4:	8fbf001c 	lw	ra,28(sp)
    2ae8:	0c000000 	jal	0 <func_80B44050>
    2aec:	8e040414 	lw	a0,1044(s0)
    2af0:	0c000000 	jal	0 <func_80B44050>
    2af4:	00402025 	move	a0,v0
    2af8:	8608001c 	lh	t0,28(s0)
    2afc:	2401fffe 	li	at,-2
    2b00:	02002025 	move	a0,s0
    2b04:	1501001c 	bne	t0,at,2b78 <func_80B46AE0+0xe8>
    2b08:	00000000 	nop
    2b0c:	0c000000 	jal	0 <func_80B44050>
    2b10:	24051554 	li	a1,5460
    2b14:	14400018 	bnez	v0,2b78 <func_80B46AE0+0xe8>
    2b18:	00000000 	nop
    2b1c:	0c000000 	jal	0 <func_80B44050>
    2b20:	02002025 	move	a0,s0
    2b24:	0c000000 	jal	0 <func_80B44050>
    2b28:	00000000 	nop
    2b2c:	3c0140a0 	lui	at,0x40a0
    2b30:	44811000 	mtc1	at,$f2
    2b34:	00000000 	nop
    2b38:	46020282 	mul.s	$f10,$f0,$f2
    2b3c:	46025400 	add.s	$f16,$f10,$f2
    2b40:	4600848d 	trunc.w.s	$f18,$f16
    2b44:	440a9000 	mfc1	t2,$f18
    2b48:	0c000000 	jal	0 <func_80B44050>
    2b4c:	ae0a03f0 	sw	t2,1008(s0)
    2b50:	3c0141a0 	lui	at,0x41a0
    2b54:	44812000 	mtc1	at,$f4
    2b58:	3c0142c8 	lui	at,0x42c8
    2b5c:	44814000 	mtc1	at,$f8
    2b60:	46040182 	mul.s	$f6,$f0,$f4
    2b64:	46083280 	add.s	$f10,$f6,$f8
    2b68:	4600540d 	trunc.w.s	$f16,$f10
    2b6c:	440c8000 	mfc1	t4,$f16
    2b70:	10000063 	b	2d00 <func_80B46AE0+0x270>
    2b74:	a60c03f4 	sh	t4,1012(s0)
    2b78:	0c000000 	jal	0 <func_80B44050>
    2b7c:	00000000 	nop
    2b80:	3c010000 	lui	at,0x0
    2b84:	c4320000 	lwc1	$f18,0(at)
    2b88:	3c0142f0 	lui	at,0x42f0
    2b8c:	4600903c 	c.lt.s	$f18,$f0
    2b90:	00000000 	nop
    2b94:	45010008 	bc1t	2bb8 <func_80B46AE0+0x128>
    2b98:	00000000 	nop
    2b9c:	c6040090 	lwc1	$f4,144(s0)
    2ba0:	44813000 	mtc1	at,$f6
    2ba4:	00000000 	nop
    2ba8:	4604303e 	c.le.s	$f6,$f4
    2bac:	00000000 	nop
    2bb0:	4502000f 	bc1fl	2bf0 <func_80B46AE0+0x160>
    2bb4:	860f008a 	lh	t7,138(s0)
    2bb8:	0c000000 	jal	0 <func_80B44050>
    2bbc:	02002025 	move	a0,s0
    2bc0:	0c000000 	jal	0 <func_80B44050>
    2bc4:	00000000 	nop
    2bc8:	3c0140a0 	lui	at,0x40a0
    2bcc:	44811000 	mtc1	at,$f2
    2bd0:	00000000 	nop
    2bd4:	46020202 	mul.s	$f8,$f0,$f2
    2bd8:	46024280 	add.s	$f10,$f8,$f2
    2bdc:	4600540d 	trunc.w.s	$f16,$f10
    2be0:	440e8000 	mfc1	t6,$f16
    2be4:	10000046 	b	2d00 <func_80B46AE0+0x270>
    2be8:	ae0e03f0 	sw	t6,1008(s0)
    2bec:	860f008a 	lh	t7,138(s0)
    2bf0:	0c000000 	jal	0 <func_80B44050>
    2bf4:	a60f0032 	sh	t7,50(s0)
    2bf8:	3c010000 	lui	at,0x0
    2bfc:	c4320000 	lwc1	$f18,0(at)
    2c00:	02002025 	move	a0,s0
    2c04:	8fb80024 	lw	t8,36(sp)
    2c08:	4600903c 	c.lt.s	$f18,$f0
    2c0c:	00000000 	nop
    2c10:	45020006 	bc1fl	2c2c <func_80B46AE0+0x19c>
    2c14:	860400b6 	lh	a0,182(s0)
    2c18:	0c000000 	jal	0 <func_80B44050>
    2c1c:	8fa5002c 	lw	a1,44(sp)
    2c20:	10000038 	b	2d04 <func_80B46AE0+0x274>
    2c24:	8fbf001c 	lw	ra,28(sp)
    2c28:	860400b6 	lh	a0,182(s0)
    2c2c:	871900b6 	lh	t9,182(t8)
    2c30:	8fa5002c 	lw	a1,44(sp)
    2c34:	03241023 	subu	v0,t9,a0
    2c38:	00021400 	sll	v0,v0,0x10
    2c3c:	00021403 	sra	v0,v0,0x10
    2c40:	04430005 	bgezl	v0,2c58 <func_80B46AE0+0x1c8>
    2c44:	28412711 	slti	at,v0,10001
    2c48:	00021023 	negu	v0,v0
    2c4c:	00021400 	sll	v0,v0,0x10
    2c50:	00021403 	sra	v0,v0,0x10
    2c54:	28412711 	slti	at,v0,10001
    2c58:	10200027 	beqz	at,2cf8 <func_80B46AE0+0x268>
    2c5c:	00000000 	nop
    2c60:	8603008a 	lh	v1,138(s0)
    2c64:	8fa80024 	lw	t0,36(sp)
    2c68:	00641023 	subu	v0,v1,a0
    2c6c:	00021400 	sll	v0,v0,0x10
    2c70:	00021403 	sra	v0,v0,0x10
    2c74:	04410004 	bgez	v0,2c88 <func_80B46AE0+0x1f8>
    2c78:	02002025 	move	a0,s0
    2c7c:	00021023 	negu	v0,v0
    2c80:	00021400 	sll	v0,v0,0x10
    2c84:	00021403 	sra	v0,v0,0x10
    2c88:	28413e81 	slti	at,v0,16001
    2c8c:	54200007 	bnezl	at,2cac <func_80B46AE0+0x21c>
    2c90:	8d09067c 	lw	t1,1660(t0)
    2c94:	a6030032 	sh	v1,50(s0)
    2c98:	0c000000 	jal	0 <func_80B44050>
    2c9c:	8fa5002c 	lw	a1,44(sp)
    2ca0:	10000018 	b	2d04 <func_80B46AE0+0x274>
    2ca4:	8fbf001c 	lw	ra,28(sp)
    2ca8:	8d09067c 	lw	t1,1660(t0)
    2cac:	312a6010 	andi	t2,t1,0x6010
    2cb0:	1140000d 	beqz	t2,2ce8 <func_80B46AE0+0x258>
    2cb4:	00000000 	nop
    2cb8:	920b010c 	lbu	t3,268(s0)
    2cbc:	02002025 	move	a0,s0
    2cc0:	11600005 	beqz	t3,2cd8 <func_80B46AE0+0x248>
    2cc4:	00000000 	nop
    2cc8:	0c000000 	jal	0 <func_80B44050>
    2ccc:	02002025 	move	a0,s0
    2cd0:	1000000c 	b	2d04 <func_80B46AE0+0x274>
    2cd4:	8fbf001c 	lw	ra,28(sp)
    2cd8:	0c000000 	jal	0 <func_80B44050>
    2cdc:	8fa5002c 	lw	a1,44(sp)
    2ce0:	10000008 	b	2d04 <func_80B46AE0+0x274>
    2ce4:	8fbf001c 	lw	ra,28(sp)
    2ce8:	0c000000 	jal	0 <func_80B44050>
    2cec:	02002025 	move	a0,s0
    2cf0:	10000004 	b	2d04 <func_80B46AE0+0x274>
    2cf4:	8fbf001c 	lw	ra,28(sp)
    2cf8:	0c000000 	jal	0 <func_80B44050>
    2cfc:	02002025 	move	a0,s0
    2d00:	8fbf001c 	lw	ra,28(sp)
    2d04:	8fb00018 	lw	s0,24(sp)
    2d08:	27bd0028 	addiu	sp,sp,40
    2d0c:	03e00008 	jr	ra
    2d10:	00000000 	nop

00002d14 <func_80B46D64>:
    2d14:	27bdffd8 	addiu	sp,sp,-40
    2d18:	afbf0024 	sw	ra,36(sp)
    2d1c:	afa40028 	sw	a0,40(sp)
    2d20:	3c014040 	lui	at,0x4040
    2d24:	44813000 	mtc1	at,$f6
    2d28:	c4840164 	lwc1	$f4,356(a0)
    2d2c:	44801000 	mtc1	zero,$f2
    2d30:	3c050601 	lui	a1,0x601
    2d34:	46062001 	sub.s	$f0,$f4,$f6
    2d38:	240f0002 	li	t7,2
    2d3c:	afaf0014 	sw	t7,20(sp)
    2d40:	24a5a3d4 	addiu	a1,a1,-23596
    2d44:	44070000 	mfc1	a3,$f0
    2d48:	2484014c 	addiu	a0,a0,332
    2d4c:	3c06bf80 	lui	a2,0xbf80
    2d50:	e7a20010 	swc1	$f2,16(sp)
    2d54:	0c000000 	jal	0 <func_80B44050>
    2d58:	e7a20018 	swc1	$f2,24(sp)
    2d5c:	8fa40028 	lw	a0,40(sp)
    2d60:	24180008 	li	t8,8
    2d64:	3c050000 	lui	a1,0x0
    2d68:	24a50000 	addiu	a1,a1,0
    2d6c:	0c000000 	jal	0 <func_80B44050>
    2d70:	ac9803dc 	sw	t8,988(a0)
    2d74:	8fbf0024 	lw	ra,36(sp)
    2d78:	27bd0028 	addiu	sp,sp,40
    2d7c:	03e00008 	jr	ra
    2d80:	00000000 	nop

00002d84 <func_80B46DD4>:
    2d84:	27bdffe0 	addiu	sp,sp,-32
    2d88:	afb00018 	sw	s0,24(sp)
    2d8c:	00808025 	move	s0,a0
    2d90:	afbf001c 	sw	ra,28(sp)
    2d94:	afa50024 	sw	a1,36(sp)
    2d98:	0c000000 	jal	0 <func_80B44050>
    2d9c:	2484014c 	addiu	a0,a0,332
    2da0:	50400022 	beqzl	v0,2e2c <func_80B46DD4+0xa8>
    2da4:	8fbf001c 	lw	ra,28(sp)
    2da8:	0c000000 	jal	0 <func_80B44050>
    2dac:	00000000 	nop
    2db0:	3c010000 	lui	at,0x0
    2db4:	c4240000 	lwc1	$f4,0(at)
    2db8:	4600203c 	c.lt.s	$f4,$f0
    2dbc:	00000000 	nop
    2dc0:	45000005 	bc1f	2dd8 <func_80B46DD4+0x54>
    2dc4:	00000000 	nop
    2dc8:	0c000000 	jal	0 <func_80B44050>
    2dcc:	02002025 	move	a0,s0
    2dd0:	10000016 	b	2e2c <func_80B46DD4+0xa8>
    2dd4:	8fbf001c 	lw	ra,28(sp)
    2dd8:	0c000000 	jal	0 <func_80B44050>
    2ddc:	00000000 	nop
    2de0:	3c010000 	lui	at,0x0
    2de4:	c4260000 	lwc1	$f6,0(at)
    2de8:	8fa40024 	lw	a0,36(sp)
    2dec:	4600303c 	c.lt.s	$f6,$f0
    2df0:	00000000 	nop
    2df4:	4502000a 	bc1fl	2e20 <func_80B46DD4+0x9c>
    2df8:	02002025 	move	a0,s0
    2dfc:	0c000000 	jal	0 <func_80B44050>
    2e00:	02002825 	move	a1,s0
    2e04:	50400006 	beqzl	v0,2e20 <func_80B46DD4+0x9c>
    2e08:	02002025 	move	a0,s0
    2e0c:	0c000000 	jal	0 <func_80B44050>
    2e10:	02002025 	move	a0,s0
    2e14:	10000005 	b	2e2c <func_80B46DD4+0xa8>
    2e18:	8fbf001c 	lw	ra,28(sp)
    2e1c:	02002025 	move	a0,s0
    2e20:	0c000000 	jal	0 <func_80B44050>
    2e24:	8fa50024 	lw	a1,36(sp)
    2e28:	8fbf001c 	lw	ra,28(sp)
    2e2c:	8fb00018 	lw	s0,24(sp)
    2e30:	27bd0020 	addiu	sp,sp,32
    2e34:	03e00008 	jr	ra
    2e38:	00000000 	nop

00002e3c <func_80B46E8C>:
    2e3c:	27bdffd0 	addiu	sp,sp,-48
    2e40:	3c01c040 	lui	at,0xc040
    2e44:	44813000 	mtc1	at,$f6
    2e48:	44802000 	mtc1	zero,$f4
    2e4c:	afb00028 	sw	s0,40(sp)
    2e50:	00808025 	move	s0,a0
    2e54:	afbf002c 	sw	ra,44(sp)
    2e58:	3c050601 	lui	a1,0x601
    2e5c:	240e0002 	li	t6,2
    2e60:	afae0014 	sw	t6,20(sp)
    2e64:	24a59530 	addiu	a1,a1,-27344
    2e68:	2484014c 	addiu	a0,a0,332
    2e6c:	3c06bf80 	lui	a2,0xbf80
    2e70:	3c074040 	lui	a3,0x4040
    2e74:	e7a60018 	swc1	$f6,24(sp)
    2e78:	0c000000 	jal	0 <func_80B44050>
    2e7c:	e7a40010 	swc1	$f4,16(sp)
    2e80:	3c014170 	lui	at,0x4170
    2e84:	44814000 	mtc1	at,$f8
    2e88:	3c01c170 	lui	at,0xc170
    2e8c:	44815000 	mtc1	at,$f10
    2e90:	240f0001 	li	t7,1
    2e94:	2418000b 	li	t8,11
    2e98:	ae0003f0 	sw	zero,1008(s0)
    2e9c:	ae0f03e4 	sw	t7,996(s0)
    2ea0:	ae1803dc 	sw	t8,988(s0)
    2ea4:	02002025 	move	a0,s0
    2ea8:	2405382f 	li	a1,14383
    2eac:	e6080060 	swc1	$f8,96(s0)
    2eb0:	0c000000 	jal	0 <func_80B44050>
    2eb4:	e60a0068 	swc1	$f10,104(s0)
    2eb8:	3c050000 	lui	a1,0x0
    2ebc:	24a50000 	addiu	a1,a1,0
    2ec0:	0c000000 	jal	0 <func_80B44050>
    2ec4:	02002025 	move	a0,s0
    2ec8:	8fbf002c 	lw	ra,44(sp)
    2ecc:	8fb00028 	lw	s0,40(sp)
    2ed0:	27bd0030 	addiu	sp,sp,48
    2ed4:	03e00008 	jr	ra
    2ed8:	00000000 	nop

00002edc <func_80B46F2C>:
    2edc:	27bdffc8 	addiu	sp,sp,-56
    2ee0:	afbf002c 	sw	ra,44(sp)
    2ee4:	afb00028 	sw	s0,40(sp)
    2ee8:	afa5003c 	sw	a1,60(sp)
    2eec:	8c8e03f0 	lw	t6,1008(a0)
    2ef0:	00808025 	move	s0,a0
    2ef4:	51c0000e 	beqzl	t6,2f30 <func_80B46F2C+0x54>
    2ef8:	2604014c 	addiu	a0,s0,332
    2efc:	c4800080 	lwc1	$f0,128(a0)
    2f00:	c4840028 	lwc1	$f4,40(a0)
    2f04:	4600203e 	c.le.s	$f4,$f0
    2f08:	00000000 	nop
    2f0c:	45020008 	bc1fl	2f30 <func_80B46F2C+0x54>
    2f10:	2604014c 	addiu	a0,s0,332
    2f14:	44803000 	mtc1	zero,$f6
    2f18:	44804000 	mtc1	zero,$f8
    2f1c:	e4800028 	swc1	$f0,40(a0)
    2f20:	ac8003e4 	sw	zero,996(a0)
    2f24:	e4860060 	swc1	$f6,96(a0)
    2f28:	e4880068 	swc1	$f8,104(a0)
    2f2c:	2604014c 	addiu	a0,s0,332
    2f30:	0c000000 	jal	0 <func_80B44050>
    2f34:	afa40034 	sw	a0,52(sp)
    2f38:	10400024 	beqz	v0,2fcc <func_80B46F2C+0xf0>
    2f3c:	8fa40034 	lw	a0,52(sp)
    2f40:	8e0f03f0 	lw	t7,1008(s0)
    2f44:	8fa5003c 	lw	a1,60(sp)
    2f48:	3c080001 	lui	t0,0x1
    2f4c:	15e00015 	bnez	t7,2fa4 <func_80B46F2C+0xc8>
    2f50:	01054021 	addu	t0,t0,a1
    2f54:	3c014188 	lui	at,0x4188
    2f58:	44815000 	mtc1	at,$f10
    2f5c:	3c01c040 	lui	at,0xc040
    2f60:	44818000 	mtc1	at,$f16
    2f64:	3c050601 	lui	a1,0x601
    2f68:	24180002 	li	t8,2
    2f6c:	afb80014 	sw	t8,20(sp)
    2f70:	24a58c6c 	addiu	a1,a1,-29588
    2f74:	3c064040 	lui	a2,0x4040
    2f78:	24070000 	li	a3,0
    2f7c:	e7aa0010 	swc1	$f10,16(sp)
    2f80:	0c000000 	jal	0 <func_80B44050>
    2f84:	e7b00018 	swc1	$f16,24(sp)
    2f88:	2419000a 	li	t9,10
    2f8c:	ae1903f0 	sw	t9,1008(s0)
    2f90:	02002025 	move	a0,s0
    2f94:	0c000000 	jal	0 <func_80B44050>
    2f98:	2405382f 	li	a1,14383
    2f9c:	1000000c 	b	2fd0 <func_80B46F2C+0xf4>
    2fa0:	8faa003c 	lw	t2,60(sp)
    2fa4:	8d081de4 	lw	t0,7652(t0)
    2fa8:	31090001 	andi	t1,t0,0x1
    2fac:	11200005 	beqz	t1,2fc4 <func_80B46F2C+0xe8>
    2fb0:	00000000 	nop
    2fb4:	0c000000 	jal	0 <func_80B44050>
    2fb8:	02002025 	move	a0,s0
    2fbc:	10000004 	b	2fd0 <func_80B46F2C+0xf4>
    2fc0:	8faa003c 	lw	t2,60(sp)
    2fc4:	0c000000 	jal	0 <func_80B44050>
    2fc8:	02002025 	move	a0,s0
    2fcc:	8faa003c 	lw	t2,60(sp)
    2fd0:	02002025 	move	a0,s0
    2fd4:	8d4b009c 	lw	t3,156(t2)
    2fd8:	316c005f 	andi	t4,t3,0x5f
    2fdc:	55800004 	bnezl	t4,2ff0 <func_80B46F2C+0x114>
    2fe0:	8fbf002c 	lw	ra,44(sp)
    2fe4:	0c000000 	jal	0 <func_80B44050>
    2fe8:	24053829 	li	a1,14377
    2fec:	8fbf002c 	lw	ra,44(sp)
    2ff0:	8fb00028 	lw	s0,40(sp)
    2ff4:	27bd0038 	addiu	sp,sp,56
    2ff8:	03e00008 	jr	ra
    2ffc:	00000000 	nop

00003000 <func_80B47050>:
    3000:	27bdffe8 	addiu	sp,sp,-24
    3004:	afbf0014 	sw	ra,20(sp)
    3008:	948e0088 	lhu	t6,136(a0)
    300c:	00803825 	move	a3,a0
    3010:	24180001 	li	t8,1
    3014:	31cf0001 	andi	t7,t6,0x1
    3018:	11e00011 	beqz	t7,3060 <func_80B47050+0x60>
    301c:	3c050601 	lui	a1,0x601
    3020:	44801000 	mtc1	zero,$f2
    3024:	c4800060 	lwc1	$f0,96(a0)
    3028:	3c01c080 	lui	at,0xc080
    302c:	46001032 	c.eq.s	$f2,$f0
    3030:	00000000 	nop
    3034:	45030008 	bc1tl	3058 <func_80B47050+0x58>
    3038:	e4e20068 	swc1	$f2,104(a3)
    303c:	44812000 	mtc1	at,$f4
    3040:	00000000 	nop
    3044:	46002032 	c.eq.s	$f4,$f0
    3048:	00000000 	nop
    304c:	45020005 	bc1fl	3064 <func_80B47050+0x64>
    3050:	44801000 	mtc1	zero,$f2
    3054:	e4e20068 	swc1	$f2,104(a3)
    3058:	10000003 	b	3068 <func_80B47050+0x68>
    305c:	ace003e4 	sw	zero,996(a3)
    3060:	44801000 	mtc1	zero,$f2
    3064:	acf803e4 	sw	t8,996(a3)
    3068:	90f90410 	lbu	t9,1040(a3)
    306c:	2401000f 	li	at,15
    3070:	24e4014c 	addiu	a0,a3,332
    3074:	17210004 	bne	t9,at,3088 <func_80B47050+0x88>
    3078:	24a557f8 	addiu	a1,a1,22520
    307c:	24080024 	li	t0,36
    3080:	10000005 	b	3098 <func_80B47050+0x98>
    3084:	a4e803f6 	sh	t0,1014(a3)
    3088:	44061000 	mfc1	a2,$f2
    308c:	0c000000 	jal	0 <func_80B44050>
    3090:	afa70018 	sw	a3,24(sp)
    3094:	8fa70018 	lw	a3,24(sp)
    3098:	00e02025 	move	a0,a3
    309c:	2405389e 	li	a1,14494
    30a0:	0c000000 	jal	0 <func_80B44050>
    30a4:	afa70018 	sw	a3,24(sp)
    30a8:	8fa40018 	lw	a0,24(sp)
    30ac:	2409000e 	li	t1,14
    30b0:	3c050000 	lui	a1,0x0
    30b4:	24a50000 	addiu	a1,a1,0
    30b8:	0c000000 	jal	0 <func_80B44050>
    30bc:	ac8903dc 	sw	t1,988(a0)
    30c0:	8fbf0014 	lw	ra,20(sp)
    30c4:	27bd0018 	addiu	sp,sp,24
    30c8:	03e00008 	jr	ra
    30cc:	00000000 	nop

000030d0 <func_80B47120>:
    30d0:	27bdffe8 	addiu	sp,sp,-24
    30d4:	afbf0014 	sw	ra,20(sp)
    30d8:	94820088 	lhu	v0,136(a0)
    30dc:	00803025 	move	a2,a0
    30e0:	00a03825 	move	a3,a1
    30e4:	304e0002 	andi	t6,v0,0x2
    30e8:	51c00005 	beqzl	t6,3100 <func_80B47120+0x30>
    30ec:	304f0001 	andi	t7,v0,0x1
    30f0:	44802000 	mtc1	zero,$f4
    30f4:	94820088 	lhu	v0,136(a0)
    30f8:	e4840068 	swc1	$f4,104(a0)
    30fc:	304f0001 	andi	t7,v0,0x1
    3100:	51e0000d 	beqzl	t7,3138 <func_80B47120+0x68>
    3104:	90d80114 	lbu	t8,276(a2)
    3108:	c4c00068 	lwc1	$f0,104(a2)
    310c:	44803000 	mtc1	zero,$f6
    3110:	3c010000 	lui	at,0x0
    3114:	4606003c 	c.lt.s	$f0,$f6
    3118:	00000000 	nop
    311c:	45020005 	bc1fl	3134 <func_80B47120+0x64>
    3120:	acc003e4 	sw	zero,996(a2)
    3124:	c4280000 	lwc1	$f8,0(at)
    3128:	46080280 	add.s	$f10,$f0,$f8
    312c:	e4ca0068 	swc1	$f10,104(a2)
    3130:	acc003e4 	sw	zero,996(a2)
    3134:	90d80114 	lbu	t8,276(a2)
    3138:	57000072 	bnezl	t8,3304 <func_80B47120+0x234>
    313c:	8fbf0014 	lw	ra,20(sp)
    3140:	94d90088 	lhu	t9,136(a2)
    3144:	33280001 	andi	t0,t9,0x1
    3148:	5100006e 	beqzl	t0,3304 <func_80B47120+0x234>
    314c:	8fbf0014 	lw	ra,20(sp)
    3150:	90c900af 	lbu	t1,175(a2)
    3154:	55200006 	bnezl	t1,3170 <func_80B47120+0xa0>
    3158:	84ca001c 	lh	t2,28(a2)
    315c:	0c000000 	jal	0 <func_80B44050>
    3160:	00c02025 	move	a0,a2
    3164:	10000067 	b	3304 <func_80B47120+0x234>
    3168:	8fbf0014 	lw	ra,20(sp)
    316c:	84ca001c 	lh	t2,28(a2)
    3170:	2401fffe 	li	at,-2
    3174:	00e02025 	move	a0,a3
    3178:	15410007 	bne	t2,at,3198 <func_80B47120+0xc8>
    317c:	00c02825 	move	a1,a2
    3180:	afa60018 	sw	a2,24(sp)
    3184:	0c000000 	jal	0 <func_80B44050>
    3188:	afa7001c 	sw	a3,28(sp)
    318c:	8fa60018 	lw	a2,24(sp)
    3190:	1440005b 	bnez	v0,3300 <func_80B47120+0x230>
    3194:	8fa7001c 	lw	a3,28(sp)
    3198:	3c0b0000 	lui	t3,0x0
    319c:	856b0000 	lh	t3,0(t3)
    31a0:	2401ffff 	li	at,-1
    31a4:	00c02025 	move	a0,a2
    31a8:	51610006 	beql	t3,at,31c4 <func_80B47120+0xf4>
    31ac:	84c500b6 	lh	a1,182(a2)
    31b0:	0c000000 	jal	0 <func_80B44050>
    31b4:	00e02825 	move	a1,a3
    31b8:	10000052 	b	3304 <func_80B47120+0x234>
    31bc:	8fbf0014 	lw	ra,20(sp)
    31c0:	84c500b6 	lh	a1,182(a2)
    31c4:	84cc007e 	lh	t4,126(a2)
    31c8:	84c3001c 	lh	v1,28(a2)
    31cc:	2401fffe 	li	at,-2
    31d0:	01851023 	subu	v0,t4,a1
    31d4:	00021400 	sll	v0,v0,0x10
    31d8:	00021403 	sra	v0,v0,0x10
    31dc:	04410004 	bgez	v0,31f0 <func_80B47120+0x120>
    31e0:	00e02025 	move	a0,a3
    31e4:	00021023 	negu	v0,v0
    31e8:	00021400 	sll	v0,v0,0x10
    31ec:	00021403 	sra	v0,v0,0x10
    31f0:	54610018 	bnel	v1,at,3254 <func_80B47120+0x184>
    31f4:	00c02825 	move	a1,a2
    31f8:	94cd0088 	lhu	t5,136(a2)
    31fc:	31ae0008 	andi	t6,t5,0x8
    3200:	51c00014 	beqzl	t6,3254 <func_80B47120+0x184>
    3204:	00c02825 	move	a1,a2
    3208:	04400003 	bltz	v0,3218 <func_80B47120+0x148>
    320c:	00021823 	negu	v1,v0
    3210:	10000001 	b	3218 <func_80B47120+0x148>
    3214:	00401825 	move	v1,v0
    3218:	28612ee0 	slti	at,v1,12000
    321c:	1020000c 	beqz	at,3250 <func_80B47120+0x180>
    3220:	3c0142b4 	lui	at,0x42b4
    3224:	44819000 	mtc1	at,$f18
    3228:	c4d00090 	lwc1	$f16,144(a2)
    322c:	4612803c 	c.lt.s	$f16,$f18
    3230:	00000000 	nop
    3234:	45020007 	bc1fl	3254 <func_80B47120+0x184>
    3238:	00c02825 	move	a1,a2
    323c:	a4c50032 	sh	a1,50(a2)
    3240:	0c000000 	jal	0 <func_80B44050>
    3244:	00c02025 	move	a0,a2
    3248:	1000002e 	b	3304 <func_80B47120+0x234>
    324c:	8fbf0014 	lw	ra,20(sp)
    3250:	00c02825 	move	a1,a2
    3254:	afa60018 	sw	a2,24(sp)
    3258:	0c000000 	jal	0 <func_80B44050>
    325c:	afa7001c 	sw	a3,28(sp)
    3260:	8fa60018 	lw	a2,24(sp)
    3264:	14400026 	bnez	v0,3300 <func_80B47120+0x230>
    3268:	8fa7001c 	lw	a3,28(sp)
    326c:	84cf001c 	lh	t7,28(a2)
    3270:	2401fffe 	li	at,-2
    3274:	00c02025 	move	a0,a2
    3278:	51e10006 	beql	t7,at,3294 <func_80B47120+0x1c4>
    327c:	3c0142c8 	lui	at,0x42c8
    3280:	0c000000 	jal	0 <func_80B44050>
    3284:	00e02825 	move	a1,a3
    3288:	1000001e 	b	3304 <func_80B47120+0x234>
    328c:	8fbf0014 	lw	ra,20(sp)
    3290:	3c0142c8 	lui	at,0x42c8
    3294:	44812000 	mtc1	at,$f4
    3298:	c4c60090 	lwc1	$f6,144(a2)
    329c:	3c180001 	lui	t8,0x1
    32a0:	0307c021 	addu	t8,t8,a3
    32a4:	4604303e 	c.le.s	$f6,$f4
    32a8:	00000000 	nop
    32ac:	45020012 	bc1fl	32f8 <func_80B47120+0x228>
    32b0:	00c02025 	move	a0,a2
    32b4:	8f181de4 	lw	t8,7652(t8)
    32b8:	00e02025 	move	a0,a3
    32bc:	00c02825 	move	a1,a2
    32c0:	33190003 	andi	t9,t8,0x3
    32c4:	5320000c 	beqzl	t9,32f8 <func_80B47120+0x228>
    32c8:	00c02025 	move	a0,a2
    32cc:	afa60018 	sw	a2,24(sp)
    32d0:	0c000000 	jal	0 <func_80B44050>
    32d4:	afa7001c 	sw	a3,28(sp)
    32d8:	8fa60018 	lw	a2,24(sp)
    32dc:	10400005 	beqz	v0,32f4 <func_80B47120+0x224>
    32e0:	8fa7001c 	lw	a3,28(sp)
    32e4:	0c000000 	jal	0 <func_80B44050>
    32e8:	00c02025 	move	a0,a2
    32ec:	10000005 	b	3304 <func_80B47120+0x234>
    32f0:	8fbf0014 	lw	ra,20(sp)
    32f4:	00c02025 	move	a0,a2
    32f8:	0c000000 	jal	0 <func_80B44050>
    32fc:	00e02825 	move	a1,a3
    3300:	8fbf0014 	lw	ra,20(sp)
    3304:	27bd0018 	addiu	sp,sp,24
    3308:	03e00008 	jr	ra
    330c:	00000000 	nop

00003310 <func_80B47360>:
    3310:	27bdffc0 	addiu	sp,sp,-64
    3314:	afb00028 	sw	s0,40(sp)
    3318:	44800000 	mtc1	zero,$f0
    331c:	00808025 	move	s0,a0
    3320:	afbf002c 	sw	ra,44(sp)
    3324:	3c040601 	lui	a0,0x601
    3328:	afa50044 	sw	a1,68(sp)
    332c:	248419f4 	addiu	a0,a0,6644
    3330:	0c000000 	jal	0 <func_80B44050>
    3334:	e7a0003c 	swc1	$f0,60(sp)
    3338:	8e0e03dc 	lw	t6,988(s0)
    333c:	44822000 	mtc1	v0,$f4
    3340:	c7a0003c 	lwc1	$f0,60(sp)
    3344:	29c10011 	slti	at,t6,17
    3348:	10200004 	beqz	at,335c <func_80B47360+0x4c>
    334c:	468020a0 	cvt.s.w	$f2,$f4
    3350:	3c01c080 	lui	at,0xc080
    3354:	44810000 	mtc1	at,$f0
    3358:	00000000 	nop
    335c:	3c050601 	lui	a1,0x601
    3360:	240f0002 	li	t7,2
    3364:	afaf0014 	sw	t7,20(sp)
    3368:	24a519f4 	addiu	a1,a1,6644
    336c:	2604014c 	addiu	a0,s0,332
    3370:	3c064000 	lui	a2,0x4000
    3374:	24070000 	li	a3,0
    3378:	e7a20010 	swc1	$f2,16(sp)
    337c:	0c000000 	jal	0 <func_80B44050>
    3380:	e7a00018 	swc1	$f0,24(sp)
    3384:	44803000 	mtc1	zero,$f6
    3388:	24180012 	li	t8,18
    338c:	ae1803dc 	sw	t8,988(s0)
    3390:	26040024 	addiu	a0,s0,36
    3394:	860503fe 	lh	a1,1022(s0)
    3398:	e6060068 	swc1	$f6,104(s0)
    339c:	0c000000 	jal	0 <func_80B44050>
    33a0:	afa40034 	sw	a0,52(sp)
    33a4:	8fa40034 	lw	a0,52(sp)
    33a8:	a60203fe 	sh	v0,1022(s0)
    33ac:	8fa70044 	lw	a3,68(sp)
    33b0:	860503fe 	lh	a1,1022(s0)
    33b4:	0c000000 	jal	0 <func_80B44050>
    33b8:	86060400 	lh	a2,1024(s0)
    33bc:	861900b6 	lh	t9,182(s0)
    33c0:	3c050000 	lui	a1,0x0
    33c4:	a6020402 	sh	v0,1026(s0)
    33c8:	24a50000 	addiu	a1,a1,0
    33cc:	02002025 	move	a0,s0
    33d0:	0c000000 	jal	0 <func_80B44050>
    33d4:	a6190032 	sh	t9,50(s0)
    33d8:	8fbf002c 	lw	ra,44(sp)
    33dc:	8fb00028 	lw	s0,40(sp)
    33e0:	27bd0040 	addiu	sp,sp,64
    33e4:	03e00008 	jr	ra
    33e8:	00000000 	nop

000033ec <func_80B4743C>:
    33ec:	27bdffd0 	addiu	sp,sp,-48
    33f0:	afb00020 	sw	s0,32(sp)
    33f4:	00808025 	move	s0,a0
    33f8:	afbf0024 	sw	ra,36(sp)
    33fc:	afa50034 	sw	a1,52(sp)
    3400:	860e0402 	lh	t6,1026(s0)
    3404:	3c180000 	lui	t8,0x0
    3408:	27180000 	addiu	t8,t8,0
    340c:	000e7880 	sll	t7,t6,0x2
    3410:	01ee7823 	subu	t7,t7,t6
    3414:	000f7880 	sll	t7,t7,0x2
    3418:	0c000000 	jal	0 <func_80B44050>
    341c:	01f82821 	addu	a1,t7,t8
    3420:	34018000 	li	at,0x8000
    3424:	00411821 	addu	v1,v0,at
    3428:	00032c00 	sll	a1,v1,0x10
    342c:	a7a3002e 	sh	v1,46(sp)
    3430:	00052c03 	sra	a1,a1,0x10
    3434:	26040032 	addiu	a0,s0,50
    3438:	24060001 	li	a2,1
    343c:	240703e8 	li	a3,1000
    3440:	0c000000 	jal	0 <func_80B44050>
    3444:	afa00010 	sw	zero,16(sp)
    3448:	86190032 	lh	t9,50(s0)
    344c:	2604014c 	addiu	a0,s0,332
    3450:	0c000000 	jal	0 <func_80B44050>
    3454:	a61900b6 	sh	t9,182(s0)
    3458:	10400009 	beqz	v0,3480 <func_80B4743C+0x94>
    345c:	87a8002e 	lh	t0,46(sp)
    3460:	24018000 	li	at,-32768
    3464:	01014821 	addu	t1,t0,at
    3468:	a6090032 	sh	t1,50(s0)
    346c:	8fa50034 	lw	a1,52(sp)
    3470:	0c000000 	jal	0 <func_80B44050>
    3474:	02002025 	move	a0,s0
    3478:	240a0001 	li	t2,1
    347c:	a60a03fa 	sh	t2,1018(s0)
    3480:	8fbf0024 	lw	ra,36(sp)
    3484:	8fb00020 	lw	s0,32(sp)
    3488:	27bd0030 	addiu	sp,sp,48
    348c:	03e00008 	jr	ra
    3490:	00000000 	nop

00003494 <func_80B474E4>:
    3494:	27bdffe8 	addiu	sp,sp,-24
    3498:	afbf0014 	sw	ra,20(sp)
    349c:	00803825 	move	a3,a0
    34a0:	ac8003e4 	sw	zero,996(a0)
    34a4:	3c050000 	lui	a1,0x0
    34a8:	8ca50000 	lw	a1,0(a1)
    34ac:	afa70018 	sw	a3,24(sp)
    34b0:	2484014c 	addiu	a0,a0,332
    34b4:	0c000000 	jal	0 <func_80B44050>
    34b8:	3c06c080 	lui	a2,0xc080
    34bc:	8fa40018 	lw	a0,24(sp)
    34c0:	44800000 	mtc1	zero,$f0
    34c4:	240e0014 	li	t6,20
    34c8:	3c050000 	lui	a1,0x0
    34cc:	24a50000 	addiu	a1,a1,0
    34d0:	ac8e03dc 	sw	t6,988(a0)
    34d4:	e4800068 	swc1	$f0,104(a0)
    34d8:	e480040c 	swc1	$f0,1036(a0)
    34dc:	0c000000 	jal	0 <func_80B44050>
    34e0:	e4800408 	swc1	$f0,1032(a0)
    34e4:	8fbf0014 	lw	ra,20(sp)
    34e8:	27bd0018 	addiu	sp,sp,24
    34ec:	03e00008 	jr	ra
    34f0:	00000000 	nop

000034f4 <func_80B47544>:
    34f4:	44801000 	mtc1	zero,$f2
    34f8:	27bdffb8 	addiu	sp,sp,-72
    34fc:	3c0143c8 	lui	at,0x43c8
    3500:	44812000 	mtc1	at,$f4
    3504:	afb00028 	sw	s0,40(sp)
    3508:	afa5004c 	sw	a1,76(sp)
    350c:	00808025 	move	s0,a0
    3510:	afbf002c 	sw	ra,44(sp)
    3514:	44051000 	mfc1	a1,$f2
    3518:	24840068 	addiu	a0,a0,104
    351c:	3c063f80 	lui	a2,0x3f80
    3520:	3c073f00 	lui	a3,0x3f00
    3524:	e7a20010 	swc1	$f2,16(sp)
    3528:	0c000000 	jal	0 <func_80B44050>
    352c:	e7a40040 	swc1	$f4,64(sp)
    3530:	8605008a 	lh	a1,138(s0)
    3534:	34018000 	li	at,0x8000
    3538:	afa00010 	sw	zero,16(sp)
    353c:	00a12821 	addu	a1,a1,at
    3540:	00052c00 	sll	a1,a1,0x10
    3544:	00052c03 	sra	a1,a1,0x10
    3548:	260400b6 	addiu	a0,s0,182
    354c:	24060001 	li	a2,1
    3550:	0c000000 	jal	0 <func_80B44050>
    3554:	24070fa0 	li	a3,4000
    3558:	3c0143d2 	lui	at,0x43d2
    355c:	44814000 	mtc1	at,$f8
    3560:	c6060028 	lwc1	$f6,40(s0)
    3564:	3c01437a 	lui	at,0x437a
    3568:	4606403e 	c.le.s	$f8,$f6
    356c:	00000000 	nop
    3570:	45020005 	bc1fl	3588 <func_80B47544+0x94>
    3574:	c6100090 	lwc1	$f16,144(s0)
    3578:	44815000 	mtc1	at,$f10
    357c:	00000000 	nop
    3580:	e7aa0040 	swc1	$f10,64(sp)
    3584:	c6100090 	lwc1	$f16,144(s0)
    3588:	c7b20040 	lwc1	$f18,64(sp)
    358c:	4612803c 	c.lt.s	$f16,$f18
    3590:	00000000 	nop
    3594:	4502000d 	bc1fl	35cc <func_80B47544+0xd8>
    3598:	8e1803e4 	lw	t8,996(s0)
    359c:	8e0e03e4 	lw	t6,996(s0)
    35a0:	24010001 	li	at,1
    35a4:	51c10009 	beql	t6,at,35cc <func_80B47544+0xd8>
    35a8:	8e1803e4 	lw	t8,996(s0)
    35ac:	860f0032 	lh	t7,50(s0)
    35b0:	02002025 	move	a0,s0
    35b4:	a60f00b6 	sh	t7,182(s0)
    35b8:	0c000000 	jal	0 <func_80B44050>
    35bc:	8fa5004c 	lw	a1,76(sp)
    35c0:	1000005e 	b	373c <func_80B47544+0x248>
    35c4:	8fbf002c 	lw	ra,44(sp)
    35c8:	8e1803e4 	lw	t8,996(s0)
    35cc:	24010001 	li	at,1
    35d0:	8fa4004c 	lw	a0,76(sp)
    35d4:	53010004 	beql	t8,at,35e8 <func_80B47544+0xf4>
    35d8:	2604014c 	addiu	a0,s0,332
    35dc:	0c000000 	jal	0 <func_80B44050>
    35e0:	02002825 	move	a1,s0
    35e4:	2604014c 	addiu	a0,s0,332
    35e8:	0c000000 	jal	0 <func_80B44050>
    35ec:	afa40034 	sw	a0,52(sp)
    35f0:	44801000 	mtc1	zero,$f2
    35f4:	50400047 	beqzl	v0,3714 <func_80B47544+0x220>
    35f8:	8faf004c 	lw	t7,76(sp)
    35fc:	8e1903e4 	lw	t9,996(s0)
    3600:	240a0001 	li	t2,1
    3604:	27280001 	addiu	t0,t9,1
    3608:	29010003 	slti	at,t0,3
    360c:	14200002 	bnez	at,3618 <func_80B47544+0x124>
    3610:	ae0803e4 	sw	t0,996(s0)
    3614:	ae0003e4 	sw	zero,996(s0)
    3618:	c6040408 	lwc1	$f4,1032(s0)
    361c:	46041032 	c.eq.s	$f2,$f4
    3620:	00000000 	nop
    3624:	45020007 	bc1fl	3644 <func_80B47544+0x150>
    3628:	ae0a03e4 	sw	t2,996(s0)
    362c:	c606040c 	lwc1	$f6,1036(s0)
    3630:	46061032 	c.eq.s	$f2,$f6
    3634:	00000000 	nop
    3638:	45030003 	bc1tl	3648 <func_80B47544+0x154>
    363c:	8e0b03e4 	lw	t3,996(s0)
    3640:	ae0a03e4 	sw	t2,996(s0)
    3644:	8e0b03e4 	lw	t3,996(s0)
    3648:	3c040000 	lui	a0,0x0
    364c:	000b6080 	sll	t4,t3,0x2
    3650:	008c2021 	addu	a0,a0,t4
    3654:	0c000000 	jal	0 <func_80B44050>
    3658:	8c840000 	lw	a0,0(a0)
    365c:	8e0303e4 	lw	v1,996(s0)
    3660:	44824000 	mtc1	v0,$f8
    3664:	44801000 	mtc1	zero,$f2
    3668:	10600008 	beqz	v1,368c <func_80B47544+0x198>
    366c:	46804020 	cvt.s.w	$f0,$f8
    3670:	24010001 	li	at,1
    3674:	1061000a 	beq	v1,at,36a0 <func_80B47544+0x1ac>
    3678:	24010002 	li	at,2
    367c:	50610014 	beql	v1,at,36d0 <func_80B47544+0x1dc>
    3680:	c6080080 	lwc1	$f8,128(s0)
    3684:	10000017 	b	36e4 <func_80B47544+0x1f0>
    3688:	00036880 	sll	t5,v1,0x2
    368c:	c60a0080 	lwc1	$f10,128(s0)
    3690:	e6020060 	swc1	$f2,96(s0)
    3694:	8e0303e4 	lw	v1,996(s0)
    3698:	10000011 	b	36e0 <func_80B47544+0x1ec>
    369c:	e60a0028 	swc1	$f10,40(s0)
    36a0:	3c014120 	lui	at,0x4120
    36a4:	44819000 	mtc1	at,$f18
    36a8:	c610040c 	lwc1	$f16,1036(s0)
    36ac:	c6060408 	lwc1	$f6,1032(s0)
    36b0:	e6020408 	swc1	$f2,1032(s0)
    36b4:	46128100 	add.s	$f4,$f16,$f18
    36b8:	e602040c 	swc1	$f2,1036(s0)
    36bc:	8e0303e4 	lw	v1,996(s0)
    36c0:	e6060068 	swc1	$f6,104(s0)
    36c4:	10000006 	b	36e0 <func_80B47544+0x1ec>
    36c8:	e6040060 	swc1	$f4,96(s0)
    36cc:	c6080080 	lwc1	$f8,128(s0)
    36d0:	3c014040 	lui	at,0x4040
    36d4:	44810000 	mtc1	at,$f0
    36d8:	8e0303e4 	lw	v1,996(s0)
    36dc:	e6080028 	swc1	$f8,40(s0)
    36e0:	00036880 	sll	t5,v1,0x2
    36e4:	3c050000 	lui	a1,0x0
    36e8:	00ad2821 	addu	a1,a1,t5
    36ec:	44071000 	mfc1	a3,$f2
    36f0:	240e0002 	li	t6,2
    36f4:	afae0014 	sw	t6,20(sp)
    36f8:	8ca50000 	lw	a1,0(a1)
    36fc:	8fa40034 	lw	a0,52(sp)
    3700:	3c063fc0 	lui	a2,0x3fc0
    3704:	e7a00010 	swc1	$f0,16(sp)
    3708:	0c000000 	jal	0 <func_80B44050>
    370c:	e7a20018 	swc1	$f2,24(sp)
    3710:	8faf004c 	lw	t7,76(sp)
    3714:	3c180001 	lui	t8,0x1
    3718:	02002025 	move	a0,s0
    371c:	030fc021 	addu	t8,t8,t7
    3720:	8f181de4 	lw	t8,7652(t8)
    3724:	3319005f 	andi	t9,t8,0x5f
    3728:	57200004 	bnezl	t9,373c <func_80B47544+0x248>
    372c:	8fbf002c 	lw	ra,44(sp)
    3730:	0c000000 	jal	0 <func_80B44050>
    3734:	24053829 	li	a1,14377
    3738:	8fbf002c 	lw	ra,44(sp)
    373c:	8fb00028 	lw	s0,40(sp)
    3740:	27bd0048 	addiu	sp,sp,72
    3744:	03e00008 	jr	ra
    3748:	00000000 	nop

0000374c <func_80B4779C>:
    374c:	27bdffd8 	addiu	sp,sp,-40
    3750:	afb00018 	sw	s0,24(sp)
    3754:	afa5002c 	sw	a1,44(sp)
    3758:	afbf001c 	sw	ra,28(sp)
    375c:	00808025 	move	s0,a0
    3760:	ac8003e4 	sw	zero,996(a0)
    3764:	3c050000 	lui	a1,0x0
    3768:	8ca50000 	lw	a1,0(a1)
    376c:	0c000000 	jal	0 <func_80B44050>
    3770:	2484014c 	addiu	a0,a0,332
    3774:	240e0013 	li	t6,19
    3778:	ae0e03dc 	sw	t6,988(s0)
    377c:	26040024 	addiu	a0,s0,36
    3780:	860503fe 	lh	a1,1022(s0)
    3784:	0c000000 	jal	0 <func_80B44050>
    3788:	afa40024 	sw	a0,36(sp)
    378c:	8fa40024 	lw	a0,36(sp)
    3790:	a60203fe 	sh	v0,1022(s0)
    3794:	8fa7002c 	lw	a3,44(sp)
    3798:	860503fe 	lh	a1,1022(s0)
    379c:	0c000000 	jal	0 <func_80B44050>
    37a0:	86060400 	lh	a2,1024(s0)
    37a4:	3c050000 	lui	a1,0x0
    37a8:	a6020402 	sh	v0,1026(s0)
    37ac:	24a50000 	addiu	a1,a1,0
    37b0:	0c000000 	jal	0 <func_80B44050>
    37b4:	02002025 	move	a0,s0
    37b8:	8fbf001c 	lw	ra,28(sp)
    37bc:	8fb00018 	lw	s0,24(sp)
    37c0:	27bd0028 	addiu	sp,sp,40
    37c4:	03e00008 	jr	ra
    37c8:	00000000 	nop

000037cc <func_80B4781C>:
    37cc:	27bdff88 	addiu	sp,sp,-120
    37d0:	3c013f80 	lui	at,0x3f80
    37d4:	44812000 	mtc1	at,$f4
    37d8:	afb00034 	sw	s0,52(sp)
    37dc:	00808025 	move	s0,a0
    37e0:	afbf003c 	sw	ra,60(sp)
    37e4:	afb10038 	sw	s1,56(sp)
    37e8:	f7b40028 	sdc1	$f20,40(sp)
    37ec:	e7a40070 	swc1	$f4,112(sp)
    37f0:	860e0402 	lh	t6,1026(s0)
    37f4:	3c180000 	lui	t8,0x0
    37f8:	00a08825 	move	s1,a1
    37fc:	000e7880 	sll	t7,t6,0x2
    3800:	01ee7823 	subu	t7,t7,t6
    3804:	3c010000 	lui	at,0x0
    3808:	000f7880 	sll	t7,t7,0x2
    380c:	27180000 	addiu	t8,t8,0
    3810:	c4340000 	lwc1	$f20,0(at)
    3814:	0c000000 	jal	0 <func_80B44050>
    3818:	01f82821 	addu	a1,t7,t8
    381c:	e7a00074 	swc1	$f0,116(sp)
    3820:	8e1903e4 	lw	t9,996(s0)
    3824:	3c080001 	lui	t0,0x1
    3828:	01114021 	addu	t0,t0,s1
    382c:	afb90054 	sw	t9,84(sp)
    3830:	8d081de4 	lw	t0,7652(t0)
    3834:	02002025 	move	a0,s0
    3838:	3109005f 	andi	t1,t0,0x5f
    383c:	55200004 	bnezl	t1,3850 <func_80B4781C+0x84>
    3840:	3c0143d2 	lui	at,0x43d2
    3844:	0c000000 	jal	0 <func_80B44050>
    3848:	24053829 	li	a1,14377
    384c:	3c0143d2 	lui	at,0x43d2
    3850:	44814000 	mtc1	at,$f8
    3854:	c6060028 	lwc1	$f6,40(s0)
    3858:	3c01438c 	lui	at,0x438c
    385c:	02002025 	move	a0,s0
    3860:	4606403e 	c.le.s	$f8,$f6
    3864:	00000000 	nop
    3868:	45020004 	bc1fl	387c <func_80B4781C+0xb0>
    386c:	860a0402 	lh	t2,1026(s0)
    3870:	4481a000 	mtc1	at,$f20
    3874:	00000000 	nop
    3878:	860a0402 	lh	t2,1026(s0)
    387c:	3c0c0000 	lui	t4,0x0
    3880:	258c0000 	addiu	t4,t4,0
    3884:	000a5880 	sll	t3,t2,0x2
    3888:	016a5823 	subu	t3,t3,t2
    388c:	000b5880 	sll	t3,t3,0x2
    3890:	0c000000 	jal	0 <func_80B44050>
    3894:	016c2821 	addu	a1,t3,t4
    3898:	a7a2005a 	sh	v0,90(sp)
    389c:	8e0703e4 	lw	a3,996(s0)
    38a0:	3c030000 	lui	v1,0x0
    38a4:	87ad005a 	lh	t5,90(sp)
    38a8:	10e00008 	beqz	a3,38cc <func_80B4781C+0x100>
    38ac:	34018000 	li	at,0x8000
    38b0:	24010001 	li	at,1
    38b4:	10e10066 	beq	a3,at,3a50 <func_80B4781C+0x284>
    38b8:	24010002 	li	at,2
    38bc:	50e100bd 	beql	a3,at,3bb4 <func_80B4781C+0x3e8>
    38c0:	c606015c 	lwc1	$f6,348(s0)
    38c4:	100000c3 	b	3bd4 <func_80B4781C+0x408>
    38c8:	8fab0054 	lw	t3,84(sp)
    38cc:	a60d0032 	sh	t5,50(s0)
    38d0:	87ae005a 	lh	t6,90(sp)
    38d4:	24630000 	addiu	v1,v1,0
    38d8:	02002025 	move	a0,s0
    38dc:	01c17821 	addu	t7,t6,at
    38e0:	a60f00b6 	sh	t7,182(s0)
    38e4:	ac600000 	sw	zero,0(v1)
    38e8:	861803fe 	lh	t8,1022(s0)
    38ec:	02202825 	move	a1,s1
    38f0:	3c0642d6 	lui	a2,0x42d6
    38f4:	0c000000 	jal	0 <func_80B44050>
    38f8:	a6180400 	sh	t8,1024(s0)
    38fc:	2c430001 	sltiu	v1,v0,1
    3900:	afa30050 	sw	v1,80(sp)
    3904:	02002025 	move	a0,s0
    3908:	02202825 	move	a1,s1
    390c:	0c000000 	jal	0 <func_80B44050>
    3910:	3c06435c 	lui	a2,0x435c
    3914:	8fa30050 	lw	v1,80(sp)
    3918:	8e0903e4 	lw	t1,996(s0)
    391c:	2c590001 	sltiu	t9,v0,1
    3920:	00194040 	sll	t0,t9,0x1
    3924:	24010001 	li	at,1
    3928:	00681825 	or	v1,v1,t0
    392c:	252a0001 	addiu	t2,t1,1
    3930:	10610006 	beq	v1,at,394c <func_80B4781C+0x180>
    3934:	ae0a03e4 	sw	t2,996(s0)
    3938:	24010002 	li	at,2
    393c:	10610012 	beq	v1,at,3988 <func_80B4781C+0x1bc>
    3940:	24010003 	li	at,3
    3944:	54610018 	bnel	v1,at,39a8 <func_80B4781C+0x1dc>
    3948:	3c0142d6 	lui	at,0x42d6
    394c:	960b0088 	lhu	t3,136(s0)
    3950:	3c014140 	lui	at,0x4140
    3954:	44815000 	mtc1	at,$f10
    3958:	316c0008 	andi	t4,t3,0x8
    395c:	11800006 	beqz	t4,3978 <func_80B4781C+0x1ac>
    3960:	e60a0060 	swc1	$f10,96(s0)
    3964:	3c014100 	lui	at,0x4100
    3968:	44819000 	mtc1	at,$f18
    396c:	c6100060 	lwc1	$f16,96(s0)
    3970:	46128100 	add.s	$f4,$f16,$f18
    3974:	e6040060 	swc1	$f4,96(s0)
    3978:	3c014100 	lui	at,0x4100
    397c:	44813000 	mtc1	at,$f6
    3980:	10000031 	b	3a48 <func_80B4781C+0x27c>
    3984:	e6060068 	swc1	$f6,104(s0)
    3988:	3c014170 	lui	at,0x4170
    398c:	44814000 	mtc1	at,$f8
    3990:	3c0141a0 	lui	at,0x41a0
    3994:	44815000 	mtc1	at,$f10
    3998:	e6080060 	swc1	$f8,96(s0)
    399c:	1000002a 	b	3a48 <func_80B4781C+0x27c>
    39a0:	e60a0068 	swc1	$f10,104(s0)
    39a4:	3c0142d6 	lui	at,0x42d6
    39a8:	44818000 	mtc1	at,$f16
    39ac:	3c014120 	lui	at,0x4120
    39b0:	44819000 	mtc1	at,$f18
    39b4:	3c014100 	lui	at,0x4100
    39b8:	44812000 	mtc1	at,$f4
    39bc:	3c010000 	lui	at,0x0
    39c0:	c4260000 	lwc1	$f6,0(at)
    39c4:	24030014 	li	v1,20
    39c8:	46128500 	add.s	$f20,$f16,$f18
    39cc:	46062000 	add.s	$f0,$f4,$f6
    39d0:	4406a000 	mfc1	a2,$f20
    39d4:	02002025 	move	a0,s0
    39d8:	02202825 	move	a1,s1
    39dc:	afa3004c 	sw	v1,76(sp)
    39e0:	0c000000 	jal	0 <func_80B44050>
    39e4:	e7a00060 	swc1	$f0,96(sp)
    39e8:	8fa3004c 	lw	v1,76(sp)
    39ec:	14400006 	bnez	v0,3a08 <func_80B4781C+0x23c>
    39f0:	c7a00060 	lwc1	$f0,96(sp)
    39f4:	3c014140 	lui	at,0x4140
    39f8:	44814000 	mtc1	at,$f8
    39fc:	e6000068 	swc1	$f0,104(s0)
    3a00:	10000009 	b	3a28 <func_80B4781C+0x25c>
    3a04:	e6080060 	swc1	$f8,96(s0)
    3a08:	3c014120 	lui	at,0x4120
    3a0c:	44819000 	mtc1	at,$f18
    3a10:	3c010000 	lui	at,0x0
    3a14:	c4300000 	lwc1	$f16,0(at)
    3a18:	4612a500 	add.s	$f20,$f20,$f18
    3a1c:	2463ffff 	addiu	v1,v1,-1
    3a20:	0461ffeb 	bgez	v1,39d0 <func_80B4781C+0x204>
    3a24:	46100000 	add.s	$f0,$f0,$f16
    3a28:	44800000 	mtc1	zero,$f0
    3a2c:	c6120068 	lwc1	$f18,104(s0)
    3a30:	46120032 	c.eq.s	$f0,$f18
    3a34:	00000000 	nop
    3a38:	45000003 	bc1f	3a48 <func_80B4781C+0x27c>
    3a3c:	00000000 	nop
    3a40:	0c000000 	jal	0 <func_80B44050>
    3a44:	02002025 	move	a0,s0
    3a48:	10000061 	b	3bd0 <func_80B4781C+0x404>
    3a4c:	8e0703e4 	lw	a3,996(s0)
    3a50:	96020088 	lhu	v0,136(s0)
    3a54:	02002025 	move	a0,s0
    3a58:	304d0002 	andi	t5,v0,0x2
    3a5c:	15a00003 	bnez	t5,3a6c <func_80B4781C+0x2a0>
    3a60:	304e0001 	andi	t6,v0,0x1
    3a64:	11c00042 	beqz	t6,3b70 <func_80B4781C+0x3a4>
    3a68:	87a5005a 	lh	a1,90(sp)
    3a6c:	0c000000 	jal	0 <func_80B44050>
    3a70:	24053828 	li	a1,14376
    3a74:	44800000 	mtc1	zero,$f0
    3a78:	c6040080 	lwc1	$f4,128(s0)
    3a7c:	3c014000 	lui	at,0x4000
    3a80:	e6000060 	swc1	$f0,96(s0)
    3a84:	e6040028 	swc1	$f4,40(s0)
    3a88:	e6000068 	swc1	$f0,104(s0)
    3a8c:	44813000 	mtc1	at,$f6
    3a90:	240f0002 	li	t7,2
    3a94:	afaf0010 	sw	t7,16(sp)
    3a98:	afa00020 	sw	zero,32(sp)
    3a9c:	afa0001c 	sw	zero,28(sp)
    3aa0:	afa00018 	sw	zero,24(sp)
    3aa4:	02202025 	move	a0,s1
    3aa8:	02002825 	move	a1,s0
    3aac:	260604f0 	addiu	a2,s0,1264
    3ab0:	3c074040 	lui	a3,0x4040
    3ab4:	0c000000 	jal	0 <func_80B44050>
    3ab8:	e7a60014 	swc1	$f6,20(sp)
    3abc:	3c014000 	lui	at,0x4000
    3ac0:	44814000 	mtc1	at,$f8
    3ac4:	24180002 	li	t8,2
    3ac8:	afb80010 	sw	t8,16(sp)
    3acc:	02202025 	move	a0,s1
    3ad0:	02002825 	move	a1,s0
    3ad4:	260604e4 	addiu	a2,s0,1252
    3ad8:	3c074040 	lui	a3,0x4040
    3adc:	afa00018 	sw	zero,24(sp)
    3ae0:	afa0001c 	sw	zero,28(sp)
    3ae4:	afa00020 	sw	zero,32(sp)
    3ae8:	0c000000 	jal	0 <func_80B44050>
    3aec:	e7a80014 	swc1	$f8,20(sp)
    3af0:	c60a0090 	lwc1	$f10,144(s0)
    3af4:	c7b00074 	lwc1	$f16,116(sp)
    3af8:	3c0142a0 	lui	at,0x42a0
    3afc:	460aa03e 	c.le.s	$f20,$f10
    3b00:	00000000 	nop
    3b04:	45020006 	bc1fl	3b20 <func_80B4781C+0x354>
    3b08:	44819000 	mtc1	at,$f18
    3b0c:	0c000000 	jal	0 <func_80B44050>
    3b10:	02002025 	move	a0,s0
    3b14:	10000012 	b	3b60 <func_80B4781C+0x394>
    3b18:	3c014000 	lui	at,0x4000
    3b1c:	44819000 	mtc1	at,$f18
    3b20:	26040024 	addiu	a0,s0,36
    3b24:	4612803c 	c.lt.s	$f16,$f18
    3b28:	00000000 	nop
    3b2c:	4502000c 	bc1fl	3b60 <func_80B4781C+0x394>
    3b30:	3c014000 	lui	at,0x4000
    3b34:	860503fe 	lh	a1,1022(s0)
    3b38:	0c000000 	jal	0 <func_80B44050>
    3b3c:	afa40044 	sw	a0,68(sp)
    3b40:	8fa40044 	lw	a0,68(sp)
    3b44:	a60203fe 	sh	v0,1022(s0)
    3b48:	860503fe 	lh	a1,1022(s0)
    3b4c:	86060400 	lh	a2,1024(s0)
    3b50:	0c000000 	jal	0 <func_80B44050>
    3b54:	02203825 	move	a3,s1
    3b58:	a6020402 	sh	v0,1026(s0)
    3b5c:	3c014000 	lui	at,0x4000
    3b60:	44812000 	mtc1	at,$f4
    3b64:	ae0003e4 	sw	zero,996(s0)
    3b68:	1000000f 	b	3ba8 <func_80B4781C+0x3dc>
    3b6c:	e7a40070 	swc1	$f4,112(sp)
    3b70:	26040032 	addiu	a0,s0,50
    3b74:	24060001 	li	a2,1
    3b78:	24070fa0 	li	a3,4000
    3b7c:	0c000000 	jal	0 <func_80B44050>
    3b80:	afa00010 	sw	zero,16(sp)
    3b84:	86190032 	lh	t9,50(s0)
    3b88:	34018000 	li	at,0x8000
    3b8c:	3c030000 	lui	v1,0x0
    3b90:	03214021 	addu	t0,t9,at
    3b94:	24630000 	addiu	v1,v1,0
    3b98:	a60800b6 	sh	t0,182(s0)
    3b9c:	8c690000 	lw	t1,0(v1)
    3ba0:	252a0001 	addiu	t2,t1,1
    3ba4:	ac6a0000 	sw	t2,0(v1)
    3ba8:	10000009 	b	3bd0 <func_80B4781C+0x404>
    3bac:	8e0703e4 	lw	a3,996(s0)
    3bb0:	c606015c 	lwc1	$f6,348(s0)
    3bb4:	c6080164 	lwc1	$f8,356(s0)
    3bb8:	46083032 	c.eq.s	$f6,$f8
    3bbc:	00000000 	nop
    3bc0:	45020004 	bc1fl	3bd4 <func_80B4781C+0x408>
    3bc4:	8fab0054 	lw	t3,84(sp)
    3bc8:	ae0003e4 	sw	zero,996(s0)
    3bcc:	00003825 	move	a3,zero
    3bd0:	8fab0054 	lw	t3,84(sp)
    3bd4:	2604014c 	addiu	a0,s0,332
    3bd8:	00076080 	sll	t4,a3,0x2
    3bdc:	11670005 	beq	t3,a3,3bf4 <func_80B4781C+0x428>
    3be0:	3c050000 	lui	a1,0x0
    3be4:	00ac2821 	addu	a1,a1,t4
    3be8:	8ca50000 	lw	a1,0(a1)
    3bec:	0c000000 	jal	0 <func_80B44050>
    3bf0:	8fa60070 	lw	a2,112(sp)
    3bf4:	0c000000 	jal	0 <func_80B44050>
    3bf8:	2604014c 	addiu	a0,s0,332
    3bfc:	8fbf003c 	lw	ra,60(sp)
    3c00:	d7b40028 	ldc1	$f20,40(sp)
    3c04:	8fb00034 	lw	s0,52(sp)
    3c08:	8fb10038 	lw	s1,56(sp)
    3c0c:	03e00008 	jr	ra
    3c10:	27bd0078 	addiu	sp,sp,120

00003c14 <func_80B47C64>:
    3c14:	27bdffd8 	addiu	sp,sp,-40
    3c18:	afb00018 	sw	s0,24(sp)
    3c1c:	afa5002c 	sw	a1,44(sp)
    3c20:	00808025 	move	s0,a0
    3c24:	afbf001c 	sw	ra,28(sp)
    3c28:	3c050601 	lui	a1,0x601
    3c2c:	24a5366c 	addiu	a1,a1,13932
    3c30:	0c000000 	jal	0 <func_80B44050>
    3c34:	2484014c 	addiu	a0,a0,332
    3c38:	860e0032 	lh	t6,50(s0)
    3c3c:	44802000 	mtc1	zero,$f4
    3c40:	34018000 	li	at,0x8000
    3c44:	24180015 	li	t8,21
    3c48:	01c17821 	addu	t7,t6,at
    3c4c:	a60f0032 	sh	t7,50(s0)
    3c50:	ae1803dc 	sw	t8,988(s0)
    3c54:	26040024 	addiu	a0,s0,36
    3c58:	860503fe 	lh	a1,1022(s0)
    3c5c:	e6040068 	swc1	$f4,104(s0)
    3c60:	0c000000 	jal	0 <func_80B44050>
    3c64:	afa40024 	sw	a0,36(sp)
    3c68:	8fa40024 	lw	a0,36(sp)
    3c6c:	a60203fe 	sh	v0,1022(s0)
    3c70:	8fa7002c 	lw	a3,44(sp)
    3c74:	860503fe 	lh	a1,1022(s0)
    3c78:	0c000000 	jal	0 <func_80B44050>
    3c7c:	86060400 	lh	a2,1024(s0)
    3c80:	3c050000 	lui	a1,0x0
    3c84:	a6020402 	sh	v0,1026(s0)
    3c88:	24a50000 	addiu	a1,a1,0
    3c8c:	0c000000 	jal	0 <func_80B44050>
    3c90:	02002025 	move	a0,s0
    3c94:	8fbf001c 	lw	ra,28(sp)
    3c98:	8fb00018 	lw	s0,24(sp)
    3c9c:	27bd0028 	addiu	sp,sp,40
    3ca0:	03e00008 	jr	ra
    3ca4:	00000000 	nop

00003ca8 <func_80B47CF8>:
    3ca8:	27bdffd0 	addiu	sp,sp,-48
    3cac:	afbf0024 	sw	ra,36(sp)
    3cb0:	afb00020 	sw	s0,32(sp)
    3cb4:	afa50034 	sw	a1,52(sp)
    3cb8:	848e008a 	lh	t6,138(a0)
    3cbc:	3c0141d0 	lui	at,0x41d0
    3cc0:	44813000 	mtc1	at,$f6
    3cc4:	a7ae002e 	sh	t6,46(sp)
    3cc8:	c4840164 	lwc1	$f4,356(a0)
    3ccc:	00808025 	move	s0,a0
    3cd0:	248400b6 	addiu	a0,a0,182
    3cd4:	4604303e 	c.le.s	$f6,$f4
    3cd8:	87a5002e 	lh	a1,46(sp)
    3cdc:	24060001 	li	a2,1
    3ce0:	24071770 	li	a3,6000
    3ce4:	45000003 	bc1f	3cf4 <func_80B47CF8+0x4c>
    3ce8:	00000000 	nop
    3cec:	0c000000 	jal	0 <func_80B44050>
    3cf0:	afa00010 	sw	zero,16(sp)
    3cf4:	0c000000 	jal	0 <func_80B44050>
    3cf8:	2604014c 	addiu	a0,s0,332
    3cfc:	10400009 	beqz	v0,3d24 <func_80B47CF8+0x7c>
    3d00:	02002025 	move	a0,s0
    3d04:	0c000000 	jal	0 <func_80B44050>
    3d08:	24053829 	li	a1,14377
    3d0c:	87af002e 	lh	t7,46(sp)
    3d10:	2418ffff 	li	t8,-1
    3d14:	ae1803e4 	sw	t8,996(s0)
    3d18:	02002025 	move	a0,s0
    3d1c:	0c000000 	jal	0 <func_80B44050>
    3d20:	a60f0032 	sh	t7,50(s0)
    3d24:	3c0141b0 	lui	at,0x41b0
    3d28:	44814000 	mtc1	at,$f8
    3d2c:	c60a0164 	lwc1	$f10,356(s0)
    3d30:	460a4032 	c.eq.s	$f8,$f10
    3d34:	00000000 	nop
    3d38:	45020003 	bc1fl	3d48 <func_80B47CF8+0xa0>
    3d3c:	8fbf0024 	lw	ra,36(sp)
    3d40:	a60003fa 	sh	zero,1018(s0)
    3d44:	8fbf0024 	lw	ra,36(sp)
    3d48:	8fb00020 	lw	s0,32(sp)
    3d4c:	27bd0030 	addiu	sp,sp,48
    3d50:	03e00008 	jr	ra
    3d54:	00000000 	nop

00003d58 <func_80B47DA8>:
    3d58:	27bdffd0 	addiu	sp,sp,-48
    3d5c:	afb00028 	sw	s0,40(sp)
    3d60:	00808025 	move	s0,a0
    3d64:	afbf002c 	sw	ra,44(sp)
    3d68:	3c040601 	lui	a0,0x601
    3d6c:	0c000000 	jal	0 <func_80B44050>
    3d70:	248457f8 	addiu	a0,a0,22520
    3d74:	44822000 	mtc1	v0,$f4
    3d78:	3c01c080 	lui	at,0xc080
    3d7c:	44814000 	mtc1	at,$f8
    3d80:	468021a0 	cvt.s.w	$f6,$f4
    3d84:	3c050601 	lui	a1,0x601
    3d88:	240e0002 	li	t6,2
    3d8c:	afae0014 	sw	t6,20(sp)
    3d90:	24a557f8 	addiu	a1,a1,22520
    3d94:	2604014c 	addiu	a0,s0,332
    3d98:	e7a60010 	swc1	$f6,16(sp)
    3d9c:	3c063fc0 	lui	a2,0x3fc0
    3da0:	24070000 	li	a3,0
    3da4:	0c000000 	jal	0 <func_80B44050>
    3da8:	e7a80018 	swc1	$f8,24(sp)
    3dac:	960f0088 	lhu	t7,136(s0)
    3db0:	3c01c080 	lui	at,0xc080
    3db4:	44811000 	mtc1	at,$f2
    3db8:	31f80001 	andi	t8,t7,0x1
    3dbc:	1300000f 	beqz	t8,3dfc <func_80B47DA8+0xa4>
    3dc0:	02002025 	move	a0,s0
    3dc4:	c6000060 	lwc1	$f0,96(s0)
    3dc8:	44805000 	mtc1	zero,$f10
    3dcc:	00000000 	nop
    3dd0:	46005032 	c.eq.s	$f10,$f0
    3dd4:	00000000 	nop
    3dd8:	45030006 	bc1tl	3df4 <func_80B47DA8+0x9c>
    3ddc:	e6020068 	swc1	$f2,104(s0)
    3de0:	46001032 	c.eq.s	$f2,$f0
    3de4:	00000000 	nop
    3de8:	45020005 	bc1fl	3e00 <func_80B47DA8+0xa8>
    3dec:	24190001 	li	t9,1
    3df0:	e6020068 	swc1	$f2,104(s0)
    3df4:	10000003 	b	3e04 <func_80B47DA8+0xac>
    3df8:	ae0003e4 	sw	zero,996(s0)
    3dfc:	24190001 	li	t9,1
    3e00:	ae1903e4 	sw	t9,996(s0)
    3e04:	8602001c 	lh	v0,28(s0)
    3e08:	2401fffe 	li	at,-2
    3e0c:	14410004 	bne	v0,at,3e20 <func_80B47DA8+0xc8>
    3e10:	3c014090 	lui	at,0x4090
    3e14:	44818000 	mtc1	at,$f16
    3e18:	8602001c 	lh	v0,28(s0)
    3e1c:	e6100168 	swc1	$f16,360(s0)
    3e20:	04410003 	bgez	v0,3e30 <func_80B47DA8+0xd8>
    3e24:	00000000 	nop
    3e28:	8608008a 	lh	t0,138(s0)
    3e2c:	a6080032 	sh	t0,50(s0)
    3e30:	0c000000 	jal	0 <func_80B44050>
    3e34:	2405382b 	li	a1,14379
    3e38:	24090010 	li	t1,16
    3e3c:	3c050000 	lui	a1,0x0
    3e40:	ae0903dc 	sw	t1,988(s0)
    3e44:	24a50000 	addiu	a1,a1,0
    3e48:	0c000000 	jal	0 <func_80B44050>
    3e4c:	02002025 	move	a0,s0
    3e50:	8fbf002c 	lw	ra,44(sp)
    3e54:	8fb00028 	lw	s0,40(sp)
    3e58:	27bd0030 	addiu	sp,sp,48
    3e5c:	03e00008 	jr	ra
    3e60:	00000000 	nop

00003e64 <func_80B47EB4>:
    3e64:	27bdffd8 	addiu	sp,sp,-40
    3e68:	afbf0024 	sw	ra,36(sp)
    3e6c:	afb00020 	sw	s0,32(sp)
    3e70:	afa5002c 	sw	a1,44(sp)
    3e74:	94830088 	lhu	v1,136(a0)
    3e78:	00808025 	move	s0,a0
    3e7c:	24060001 	li	a2,1
    3e80:	306e0002 	andi	t6,v1,0x2
    3e84:	11c00004 	beqz	t6,3e98 <func_80B47EB4+0x34>
    3e88:	24071194 	li	a3,4500
    3e8c:	44802000 	mtc1	zero,$f4
    3e90:	94830088 	lhu	v1,136(a0)
    3e94:	e4840068 	swc1	$f4,104(a0)
    3e98:	306f0001 	andi	t7,v1,0x1
    3e9c:	11e0000c 	beqz	t7,3ed0 <func_80B47EB4+0x6c>
    3ea0:	260400b6 	addiu	a0,s0,182
    3ea4:	c6000068 	lwc1	$f0,104(s0)
    3ea8:	44803000 	mtc1	zero,$f6
    3eac:	3c010000 	lui	at,0x0
    3eb0:	4606003c 	c.lt.s	$f0,$f6
    3eb4:	00000000 	nop
    3eb8:	45020005 	bc1fl	3ed0 <func_80B47EB4+0x6c>
    3ebc:	ae0003e4 	sw	zero,996(s0)
    3ec0:	c4280000 	lwc1	$f8,0(at)
    3ec4:	46080280 	add.s	$f10,$f0,$f8
    3ec8:	e60a0068 	swc1	$f10,104(s0)
    3ecc:	ae0003e4 	sw	zero,996(s0)
    3ed0:	8605008a 	lh	a1,138(s0)
    3ed4:	0c000000 	jal	0 <func_80B44050>
    3ed8:	afa00010 	sw	zero,16(sp)
    3edc:	8618001c 	lh	t8,28(s0)
    3ee0:	2401fffe 	li	at,-2
    3ee4:	8fa4002c 	lw	a0,44(sp)
    3ee8:	17010005 	bne	t8,at,3f00 <func_80B47EB4+0x9c>
    3eec:	00000000 	nop
    3ef0:	0c000000 	jal	0 <func_80B44050>
    3ef4:	02002825 	move	a1,s0
    3ef8:	544000ad 	bnezl	v0,41b0 <func_80B47EB4+0x34c>
    3efc:	8fbf0024 	lw	ra,36(sp)
    3f00:	0c000000 	jal	0 <func_80B44050>
    3f04:	2604014c 	addiu	a0,s0,332
    3f08:	504000a9 	beqzl	v0,41b0 <func_80B47EB4+0x34c>
    3f0c:	8fbf0024 	lw	ra,36(sp)
    3f10:	96030088 	lhu	v1,136(s0)
    3f14:	3c080000 	lui	t0,0x0
    3f18:	30790001 	andi	t9,v1,0x1
    3f1c:	532000a4 	beqzl	t9,41b0 <func_80B47EB4+0x34c>
    3f20:	8fbf0024 	lw	ra,36(sp)
    3f24:	85080000 	lh	t0,0(t0)
    3f28:	2401ffff 	li	at,-1
    3f2c:	51010033 	beql	t0,at,3ffc <func_80B47EB4+0x198>
    3f30:	8618007e 	lh	t8,126(s0)
    3f34:	92090410 	lbu	t1,1040(s0)
    3f38:	2401000d 	li	at,13
    3f3c:	3c020000 	lui	v0,0x0
    3f40:	15210005 	bne	t1,at,3f58 <func_80B47EB4+0xf4>
    3f44:	24420000 	addiu	v0,v0,0
    3f48:	844a0000 	lh	t2,0(v0)
    3f4c:	254b0001 	addiu	t3,t2,1
    3f50:	10000096 	b	41ac <func_80B47EB4+0x348>
    3f54:	a44b0000 	sh	t3,0(v0)
    3f58:	860c00b6 	lh	t4,182(s0)
    3f5c:	02002025 	move	a0,s0
    3f60:	3c064307 	lui	a2,0x4307
    3f64:	a60c0032 	sh	t4,50(s0)
    3f68:	0c000000 	jal	0 <func_80B44050>
    3f6c:	8fa5002c 	lw	a1,44(sp)
    3f70:	1440000b 	bnez	v0,3fa0 <func_80B47EB4+0x13c>
    3f74:	3c0142b4 	lui	at,0x42b4
    3f78:	44819000 	mtc1	at,$f18
    3f7c:	c6100090 	lwc1	$f16,144(s0)
    3f80:	4612803c 	c.lt.s	$f16,$f18
    3f84:	00000000 	nop
    3f88:	45020006 	bc1fl	3fa4 <func_80B47EB4+0x140>
    3f8c:	3c0142c8 	lui	at,0x42c8
    3f90:	0c000000 	jal	0 <func_80B44050>
    3f94:	02002025 	move	a0,s0
    3f98:	10000085 	b	41b0 <func_80B47EB4+0x34c>
    3f9c:	8fbf0024 	lw	ra,36(sp)
    3fa0:	3c0142c8 	lui	at,0x42c8
    3fa4:	44812000 	mtc1	at,$f4
    3fa8:	c6060090 	lwc1	$f6,144(s0)
    3fac:	8fad002c 	lw	t5,44(sp)
    3fb0:	3c0e0001 	lui	t6,0x1
    3fb4:	4604303e 	c.le.s	$f6,$f4
    3fb8:	02002025 	move	a0,s0
    3fbc:	01cd7021 	addu	t6,t6,t5
    3fc0:	45000009 	bc1f	3fe8 <func_80B47EB4+0x184>
    3fc4:	00000000 	nop
    3fc8:	8dce1de4 	lw	t6,7652(t6)
    3fcc:	31cf0003 	andi	t7,t6,0x3
    3fd0:	15e00005 	bnez	t7,3fe8 <func_80B47EB4+0x184>
    3fd4:	00000000 	nop
    3fd8:	0c000000 	jal	0 <func_80B44050>
    3fdc:	02002025 	move	a0,s0
    3fe0:	10000073 	b	41b0 <func_80B47EB4+0x34c>
    3fe4:	8fbf0024 	lw	ra,36(sp)
    3fe8:	0c000000 	jal	0 <func_80B44050>
    3fec:	8fa5002c 	lw	a1,44(sp)
    3ff0:	1000006f 	b	41b0 <func_80B47EB4+0x34c>
    3ff4:	8fbf0024 	lw	ra,36(sp)
    3ff8:	8618007e 	lh	t8,126(s0)
    3ffc:	861900b6 	lh	t9,182(s0)
    4000:	30690008 	andi	t1,v1,0x8
    4004:	8fa4002c 	lw	a0,44(sp)
    4008:	03191023 	subu	v0,t8,t9
    400c:	00021400 	sll	v0,v0,0x10
    4010:	00021403 	sra	v0,v0,0x10
    4014:	04430005 	bgezl	v0,402c <func_80B47EB4+0x1c8>
    4018:	8608001c 	lh	t0,28(s0)
    401c:	00021023 	negu	v0,v0
    4020:	00021400 	sll	v0,v0,0x10
    4024:	00021403 	sra	v0,v0,0x10
    4028:	8608001c 	lh	t0,28(s0)
    402c:	2401fffe 	li	at,-2
    4030:	15010014 	bne	t0,at,4084 <func_80B47EB4+0x220>
    4034:	00000000 	nop
    4038:	11200012 	beqz	t1,4084 <func_80B47EB4+0x220>
    403c:	00000000 	nop
    4040:	04400003 	bltz	v0,4050 <func_80B47EB4+0x1ec>
    4044:	00021823 	negu	v1,v0
    4048:	10000001 	b	4050 <func_80B47EB4+0x1ec>
    404c:	00401825 	move	v1,v0
    4050:	28612ee0 	slti	at,v1,12000
    4054:	1020000b 	beqz	at,4084 <func_80B47EB4+0x220>
    4058:	3c0142b4 	lui	at,0x42b4
    405c:	44815000 	mtc1	at,$f10
    4060:	c6080090 	lwc1	$f8,144(s0)
    4064:	460a403c 	c.lt.s	$f8,$f10
    4068:	00000000 	nop
    406c:	45000005 	bc1f	4084 <func_80B47EB4+0x220>
    4070:	00000000 	nop
    4074:	0c000000 	jal	0 <func_80B44050>
    4078:	02002025 	move	a0,s0
    407c:	1000004c 	b	41b0 <func_80B47EB4+0x34c>
    4080:	8fbf0024 	lw	ra,36(sp)
    4084:	0c000000 	jal	0 <func_80B44050>
    4088:	02002825 	move	a1,s0
    408c:	54400048 	bnezl	v0,41b0 <func_80B47EB4+0x34c>
    4090:	8fbf0024 	lw	ra,36(sp)
    4094:	860a001c 	lh	t2,28(s0)
    4098:	2401fffe 	li	at,-2
    409c:	5141002b 	beql	t2,at,414c <func_80B47EB4+0x2e8>
    40a0:	3c0142c8 	lui	at,0x42c8
    40a4:	860b00b6 	lh	t3,182(s0)
    40a8:	02002025 	move	a0,s0
    40ac:	3c064307 	lui	a2,0x4307
    40b0:	a60b0032 	sh	t3,50(s0)
    40b4:	0c000000 	jal	0 <func_80B44050>
    40b8:	8fa5002c 	lw	a1,44(sp)
    40bc:	1440000c 	bnez	v0,40f0 <func_80B47EB4+0x28c>
    40c0:	3c0142b4 	lui	at,0x42b4
    40c4:	c6100090 	lwc1	$f16,144(s0)
    40c8:	44819000 	mtc1	at,$f18
    40cc:	00000000 	nop
    40d0:	4612803c 	c.lt.s	$f16,$f18
    40d4:	00000000 	nop
    40d8:	45020006 	bc1fl	40f4 <func_80B47EB4+0x290>
    40dc:	3c0142c8 	lui	at,0x42c8
    40e0:	0c000000 	jal	0 <func_80B44050>
    40e4:	02002025 	move	a0,s0
    40e8:	10000031 	b	41b0 <func_80B47EB4+0x34c>
    40ec:	8fbf0024 	lw	ra,36(sp)
    40f0:	3c0142c8 	lui	at,0x42c8
    40f4:	44812000 	mtc1	at,$f4
    40f8:	c6060090 	lwc1	$f6,144(s0)
    40fc:	8fac002c 	lw	t4,44(sp)
    4100:	3c0d0001 	lui	t5,0x1
    4104:	4604303e 	c.le.s	$f6,$f4
    4108:	02002025 	move	a0,s0
    410c:	01ac6821 	addu	t5,t5,t4
    4110:	45000009 	bc1f	4138 <func_80B47EB4+0x2d4>
    4114:	00000000 	nop
    4118:	8dad1de4 	lw	t5,7652(t5)
    411c:	31ae0003 	andi	t6,t5,0x3
    4120:	15c00005 	bnez	t6,4138 <func_80B47EB4+0x2d4>
    4124:	00000000 	nop
    4128:	0c000000 	jal	0 <func_80B44050>
    412c:	02002025 	move	a0,s0
    4130:	1000001f 	b	41b0 <func_80B47EB4+0x34c>
    4134:	8fbf0024 	lw	ra,36(sp)
    4138:	0c000000 	jal	0 <func_80B44050>
    413c:	8fa5002c 	lw	a1,44(sp)
    4140:	1000001b 	b	41b0 <func_80B47EB4+0x34c>
    4144:	8fbf0024 	lw	ra,36(sp)
    4148:	3c0142c8 	lui	at,0x42c8
    414c:	44814000 	mtc1	at,$f8
    4150:	c60a0090 	lwc1	$f10,144(s0)
    4154:	8faf002c 	lw	t7,44(sp)
    4158:	3c180001 	lui	t8,0x1
    415c:	4608503e 	c.le.s	$f10,$f8
    4160:	030fc021 	addu	t8,t8,t7
    4164:	4502000f 	bc1fl	41a4 <func_80B47EB4+0x340>
    4168:	02002025 	move	a0,s0
    416c:	8f181de4 	lw	t8,7652(t8)
    4170:	01e02025 	move	a0,t7
    4174:	33190003 	andi	t9,t8,0x3
    4178:	5720000a 	bnezl	t9,41a4 <func_80B47EB4+0x340>
    417c:	02002025 	move	a0,s0
    4180:	0c000000 	jal	0 <func_80B44050>
    4184:	02002825 	move	a1,s0
    4188:	50400006 	beqzl	v0,41a4 <func_80B47EB4+0x340>
    418c:	02002025 	move	a0,s0
    4190:	0c000000 	jal	0 <func_80B44050>
    4194:	02002025 	move	a0,s0
    4198:	10000005 	b	41b0 <func_80B47EB4+0x34c>
    419c:	8fbf0024 	lw	ra,36(sp)
    41a0:	02002025 	move	a0,s0
    41a4:	0c000000 	jal	0 <func_80B44050>
    41a8:	8fa5002c 	lw	a1,44(sp)
    41ac:	8fbf0024 	lw	ra,36(sp)
    41b0:	8fb00020 	lw	s0,32(sp)
    41b4:	27bd0028 	addiu	sp,sp,40
    41b8:	03e00008 	jr	ra
    41bc:	00000000 	nop

000041c0 <func_80B48210>:
    41c0:	44800000 	mtc1	zero,$f0
    41c4:	27bdffd0 	addiu	sp,sp,-48
    41c8:	3c014040 	lui	at,0x4040
    41cc:	44812000 	mtc1	at,$f4
    41d0:	afb00028 	sw	s0,40(sp)
    41d4:	00808025 	move	s0,a0
    41d8:	afbf002c 	sw	ra,44(sp)
    41dc:	3c050601 	lui	a1,0x601
    41e0:	240e0002 	li	t6,2
    41e4:	44070000 	mfc1	a3,$f0
    41e8:	afae0014 	sw	t6,20(sp)
    41ec:	24a59530 	addiu	a1,a1,-27344
    41f0:	2484014c 	addiu	a0,a0,332
    41f4:	3c063f80 	lui	a2,0x3f80
    41f8:	e7a00018 	swc1	$f0,24(sp)
    41fc:	0c000000 	jal	0 <func_80B44050>
    4200:	e7a40010 	swc1	$f4,16(sp)
    4204:	3c0141b0 	lui	at,0x41b0
    4208:	44813000 	mtc1	at,$f6
    420c:	3c0140f0 	lui	at,0x40f0
    4210:	44814000 	mtc1	at,$f8
    4214:	240f0001 	li	t7,1
    4218:	24180016 	li	t8,22
    421c:	ae0003f0 	sw	zero,1008(s0)
    4220:	ae0f03e4 	sw	t7,996(s0)
    4224:	ae1803dc 	sw	t8,988(s0)
    4228:	02002025 	move	a0,s0
    422c:	2405382f 	li	a1,14383
    4230:	e6060060 	swc1	$f6,96(s0)
    4234:	0c000000 	jal	0 <func_80B44050>
    4238:	e6080068 	swc1	$f8,104(s0)
    423c:	861900b6 	lh	t9,182(s0)
    4240:	3c050000 	lui	a1,0x0
    4244:	24a50000 	addiu	a1,a1,0
    4248:	02002025 	move	a0,s0
    424c:	0c000000 	jal	0 <func_80B44050>
    4250:	a6190032 	sh	t9,50(s0)
    4254:	8fbf002c 	lw	ra,44(sp)
    4258:	8fb00028 	lw	s0,40(sp)
    425c:	27bd0030 	addiu	sp,sp,48
    4260:	03e00008 	jr	ra
    4264:	00000000 	nop

00004268 <func_80B482B8>:
    4268:	27bdffc8 	addiu	sp,sp,-56
    426c:	afb00028 	sw	s0,40(sp)
    4270:	00808025 	move	s0,a0
    4274:	afbf002c 	sw	ra,44(sp)
    4278:	afa5003c 	sw	a1,60(sp)
    427c:	8605008a 	lh	a1,138(s0)
    4280:	240e0001 	li	t6,1
    4284:	afae0010 	sw	t6,16(sp)
    4288:	248400b6 	addiu	a0,a0,182
    428c:	24060001 	li	a2,1
    4290:	0c000000 	jal	0 <func_80B44050>
    4294:	24070fa0 	li	a3,4000
    4298:	3c0140a0 	lui	at,0x40a0
    429c:	44813000 	mtc1	at,$f6
    42a0:	c6040060 	lwc1	$f4,96(s0)
    42a4:	8fa4003c 	lw	a0,60(sp)
    42a8:	4604303e 	c.le.s	$f6,$f4
    42ac:	00000000 	nop
    42b0:	45020007 	bc1fl	42d0 <func_80B482B8+0x68>
    42b4:	2604014c 	addiu	a0,s0,332
    42b8:	0c000000 	jal	0 <func_80B44050>
    42bc:	260504f0 	addiu	a1,s0,1264
    42c0:	8fa4003c 	lw	a0,60(sp)
    42c4:	0c000000 	jal	0 <func_80B44050>
    42c8:	260504e4 	addiu	a1,s0,1252
    42cc:	2604014c 	addiu	a0,s0,332
    42d0:	0c000000 	jal	0 <func_80B44050>
    42d4:	afa40030 	sw	a0,48(sp)
    42d8:	10400029 	beqz	v0,4380 <func_80B482B8+0x118>
    42dc:	8fa40030 	lw	a0,48(sp)
    42e0:	8e0f03f0 	lw	t7,1008(s0)
    42e4:	3c050601 	lui	a1,0x601
    42e8:	24a5a3d4 	addiu	a1,a1,-23596
    42ec:	15e0000f 	bnez	t7,432c <func_80B482B8+0xc4>
    42f0:	3c064040 	lui	a2,0x4040
    42f4:	3c014150 	lui	at,0x4150
    42f8:	44800000 	mtc1	zero,$f0
    42fc:	44814000 	mtc1	at,$f8
    4300:	3c01c080 	lui	at,0xc080
    4304:	44815000 	mtc1	at,$f10
    4308:	24180002 	li	t8,2
    430c:	44070000 	mfc1	a3,$f0
    4310:	afb80014 	sw	t8,20(sp)
    4314:	e7a80010 	swc1	$f8,16(sp)
    4318:	0c000000 	jal	0 <func_80B44050>
    431c:	e7aa0018 	swc1	$f10,24(sp)
    4320:	2419000a 	li	t9,10
    4324:	10000016 	b	4380 <func_80B482B8+0x118>
    4328:	ae1903f0 	sw	t9,1008(s0)
    432c:	96080088 	lhu	t0,136(s0)
    4330:	02002025 	move	a0,s0
    4334:	31090003 	andi	t1,t0,0x3
    4338:	51200012 	beqzl	t1,4384 <func_80B482B8+0x11c>
    433c:	8fbf002c 	lw	ra,44(sp)
    4340:	44800000 	mtc1	zero,$f0
    4344:	8602008a 	lh	v0,138(s0)
    4348:	c6100080 	lwc1	$f16,128(s0)
    434c:	e6000060 	swc1	$f0,96(s0)
    4350:	a60200b6 	sh	v0,182(s0)
    4354:	a6020032 	sh	v0,50(s0)
    4358:	e6000068 	swc1	$f0,104(s0)
    435c:	0c000000 	jal	0 <func_80B44050>
    4360:	e6100028 	swc1	$f16,40(s0)
    4364:	02002025 	move	a0,s0
    4368:	0c000000 	jal	0 <func_80B44050>
    436c:	2405382a 	li	a1,14378
    4370:	3c014150 	lui	at,0x4150
    4374:	44819000 	mtc1	at,$f18
    4378:	00000000 	nop
    437c:	e6120164 	swc1	$f18,356(s0)
    4380:	8fbf002c 	lw	ra,44(sp)
    4384:	8fb00028 	lw	s0,40(sp)
    4388:	27bd0038 	addiu	sp,sp,56
    438c:	03e00008 	jr	ra
    4390:	00000000 	nop

00004394 <func_80B483E4>:
    4394:	27bdffd0 	addiu	sp,sp,-48
    4398:	afbf0024 	sw	ra,36(sp)
    439c:	afb00020 	sw	s0,32(sp)
    43a0:	afa50034 	sw	a1,52(sp)
    43a4:	848e001c 	lh	t6,28(a0)
    43a8:	00808025 	move	s0,a0
    43ac:	05c00012 	bltz	t6,43f8 <func_80B483E4+0x64>
    43b0:	00000000 	nop
    43b4:	860700b6 	lh	a3,182(s0)
    43b8:	3c064220 	lui	a2,0x4220
    43bc:	24e73fff 	addiu	a3,a3,16383
    43c0:	00073c00 	sll	a3,a3,0x10
    43c4:	0c000000 	jal	0 <func_80B44050>
    43c8:	00073c03 	sra	a3,a3,0x10
    43cc:	1440000a 	bnez	v0,43f8 <func_80B483E4+0x64>
    43d0:	02002025 	move	a0,s0
    43d4:	860700b6 	lh	a3,182(s0)
    43d8:	8fa50034 	lw	a1,52(sp)
    43dc:	3c06c220 	lui	a2,0xc220
    43e0:	24e73fff 	addiu	a3,a3,16383
    43e4:	00073c00 	sll	a3,a3,0x10
    43e8:	0c000000 	jal	0 <func_80B44050>
    43ec:	00073c03 	sra	a3,a3,0x10
    43f0:	10400046 	beqz	v0,450c <func_80B483E4+0x178>
    43f4:	02002025 	move	a0,s0
    43f8:	3c050601 	lui	a1,0x601
    43fc:	24a56388 	addiu	a1,a1,25480
    4400:	0c000000 	jal	0 <func_80B44050>
    4404:	2604014c 	addiu	a0,s0,332
    4408:	8faf0034 	lw	t7,52(sp)
    440c:	24190001 	li	t9,1
    4410:	260400b6 	addiu	a0,s0,182
    4414:	8df81c44 	lw	t8,7236(t7)
    4418:	24060001 	li	a2,1
    441c:	24070fa0 	li	a3,4000
    4420:	afb80028 	sw	t8,40(sp)
    4424:	8605008a 	lh	a1,138(s0)
    4428:	0c000000 	jal	0 <func_80B44050>
    442c:	afb90010 	sw	t9,16(sp)
    4430:	8fa80028 	lw	t0,40(sp)
    4434:	860900b6 	lh	t1,182(s0)
    4438:	850300b6 	lh	v1,182(t0)
    443c:	00692023 	subu	a0,v1,t1
    4440:	00042400 	sll	a0,a0,0x10
    4444:	00042403 	sra	a0,a0,0x10
    4448:	0c000000 	jal	0 <func_80B44050>
    444c:	a7a3002e 	sh	v1,46(sp)
    4450:	44801000 	mtc1	zero,$f2
    4454:	87a3002e 	lh	v1,46(sp)
    4458:	3c01c0c0 	lui	at,0xc0c0
    445c:	4600103e 	c.le.s	$f2,$f0
    4460:	00000000 	nop
    4464:	45020005 	bc1fl	447c <func_80B483E4+0xe8>
    4468:	860a00b6 	lh	t2,182(s0)
    446c:	44812000 	mtc1	at,$f4
    4470:	1000000f 	b	44b0 <func_80B483E4+0x11c>
    4474:	e6040068 	swc1	$f4,104(s0)
    4478:	860a00b6 	lh	t2,182(s0)
    447c:	006a2023 	subu	a0,v1,t2
    4480:	00042400 	sll	a0,a0,0x10
    4484:	0c000000 	jal	0 <func_80B44050>
    4488:	00042403 	sra	a0,a0,0x10
    448c:	44801000 	mtc1	zero,$f2
    4490:	3c0140c0 	lui	at,0x40c0
    4494:	4602003c 	c.lt.s	$f0,$f2
    4498:	00000000 	nop
    449c:	45020005 	bc1fl	44b4 <func_80B483E4+0x120>
    44a0:	860b00b6 	lh	t3,182(s0)
    44a4:	44813000 	mtc1	at,$f6
    44a8:	00000000 	nop
    44ac:	e6060068 	swc1	$f6,104(s0)
    44b0:	860b00b6 	lh	t3,182(s0)
    44b4:	e6020408 	swc1	$f2,1032(s0)
    44b8:	ae0003e4 	sw	zero,996(s0)
    44bc:	256c3fff 	addiu	t4,t3,16383
    44c0:	0c000000 	jal	0 <func_80B44050>
    44c4:	a60c0032 	sh	t4,50(s0)
    44c8:	3c014120 	lui	at,0x4120
    44cc:	44814000 	mtc1	at,$f8
    44d0:	3c0140a0 	lui	at,0x40a0
    44d4:	44818000 	mtc1	at,$f16
    44d8:	46080282 	mul.s	$f10,$f0,$f8
    44dc:	240f000c 	li	t7,12
    44e0:	3c050000 	lui	a1,0x0
    44e4:	ae0f03dc 	sw	t7,988(s0)
    44e8:	24a50000 	addiu	a1,a1,0
    44ec:	02002025 	move	a0,s0
    44f0:	46105480 	add.s	$f18,$f10,$f16
    44f4:	4600910d 	trunc.w.s	$f4,$f18
    44f8:	440e2000 	mfc1	t6,$f4
    44fc:	0c000000 	jal	0 <func_80B44050>
    4500:	ae0e03f0 	sw	t6,1008(s0)
    4504:	10000004 	b	4518 <func_80B483E4+0x184>
    4508:	8fbf0024 	lw	ra,36(sp)
    450c:	0c000000 	jal	0 <func_80B44050>
    4510:	8fa50034 	lw	a1,52(sp)
    4514:	8fbf0024 	lw	ra,36(sp)
    4518:	8fb00020 	lw	s0,32(sp)
    451c:	27bd0030 	addiu	sp,sp,48
    4520:	03e00008 	jr	ra
    4524:	00000000 	nop

00004528 <func_80B48578>:
    4528:	27bdffa8 	addiu	sp,sp,-88
    452c:	afbf0024 	sw	ra,36(sp)
    4530:	afb00020 	sw	s0,32(sp)
    4534:	afa5005c 	sw	a1,92(sp)
    4538:	8caf1c44 	lw	t7,7236(a1)
    453c:	44802000 	mtc1	zero,$f4
    4540:	00808025 	move	s0,a0
    4544:	afaf0050 	sw	t7,80(sp)
    4548:	e7a40040 	swc1	$f4,64(sp)
    454c:	8605008a 	lh	a1,138(s0)
    4550:	24180001 	li	t8,1
    4554:	afb80010 	sw	t8,16(sp)
    4558:	248400b6 	addiu	a0,a0,182
    455c:	24060001 	li	a2,1
    4560:	0c000000 	jal	0 <func_80B44050>
    4564:	24070bb8 	li	a3,3000
    4568:	8609001c 	lh	t1,28(s0)
    456c:	8fb90050 	lw	t9,80(sp)
    4570:	05200008 	bltz	t1,4594 <func_80B48578+0x6c>
    4574:	872800b6 	lh	t0,182(t9)
    4578:	860a03f8 	lh	t2,1016(s0)
    457c:	5140004f 	beqzl	t2,46bc <func_80B48578+0x194>
    4580:	860c00b6 	lh	t4,182(s0)
    4584:	c6060068 	lwc1	$f6,104(s0)
    4588:	46003207 	neg.s	$f8,$f6
    458c:	1000004a 	b	46b8 <func_80B48578+0x190>
    4590:	e6080068 	swc1	$f8,104(s0)
    4594:	96020088 	lhu	v0,136(s0)
    4598:	02002025 	move	a0,s0
    459c:	8fa5005c 	lw	a1,92(sp)
    45a0:	30420008 	andi	v0,v0,0x8
    45a4:	1440000c 	bnez	v0,45d8 <func_80B48578+0xb0>
    45a8:	00000000 	nop
    45ac:	860700b6 	lh	a3,182(s0)
    45b0:	8e060068 	lw	a2,104(s0)
    45b4:	a7a80056 	sh	t0,86(sp)
    45b8:	24e73fff 	addiu	a3,a3,16383
    45bc:	00073c00 	sll	a3,a3,0x10
    45c0:	0c000000 	jal	0 <func_80B44050>
    45c4:	00073c03 	sra	a3,a3,0x10
    45c8:	1440003b 	bnez	v0,46b8 <func_80B48578+0x190>
    45cc:	87a80056 	lh	t0,86(sp)
    45d0:	96020088 	lhu	v0,136(s0)
    45d4:	30420008 	andi	v0,v0,0x8
    45d8:	10400016 	beqz	v0,4634 <func_80B48578+0x10c>
    45dc:	3c010000 	lui	at,0x0
    45e0:	c60a0068 	lwc1	$f10,104(s0)
    45e4:	44808000 	mtc1	zero,$f16
    45e8:	00000000 	nop
    45ec:	460a803e 	c.le.s	$f16,$f10
    45f0:	00000000 	nop
    45f4:	45020007 	bc1fl	4614 <func_80B48578+0xec>
    45f8:	860200b6 	lh	v0,182(s0)
    45fc:	860200b6 	lh	v0,182(s0)
    4600:	24423fff 	addiu	v0,v0,16383
    4604:	00021400 	sll	v0,v0,0x10
    4608:	10000005 	b	4620 <func_80B48578+0xf8>
    460c:	00021403 	sra	v0,v0,0x10
    4610:	860200b6 	lh	v0,182(s0)
    4614:	2442c001 	addiu	v0,v0,-16383
    4618:	00021400 	sll	v0,v0,0x10
    461c:	00021403 	sra	v0,v0,0x10
    4620:	860b007e 	lh	t3,126(s0)
    4624:	01621023 	subu	v0,t3,v0
    4628:	00021400 	sll	v0,v0,0x10
    462c:	10000006 	b	4648 <func_80B48578+0x120>
    4630:	00021403 	sra	v0,v0,0x10
    4634:	c6120068 	lwc1	$f18,104(s0)
    4638:	c4240000 	lwc1	$f4,0(at)
    463c:	00001025 	move	v0,zero
    4640:	46049182 	mul.s	$f6,$f18,$f4
    4644:	e6060068 	swc1	$f6,104(s0)
    4648:	04400003 	bltz	v0,4658 <func_80B48578+0x130>
    464c:	00021823 	negu	v1,v0
    4650:	10000001 	b	4658 <func_80B48578+0x130>
    4654:	00401825 	move	v1,v0
    4658:	28614001 	slti	at,v1,16385
    465c:	14200016 	bnez	at,46b8 <func_80B48578+0x190>
    4660:	3c010000 	lui	at,0x0
    4664:	c42a0000 	lwc1	$f10,0(at)
    4668:	c6080068 	lwc1	$f8,104(s0)
    466c:	44809000 	mtc1	zero,$f18
    4670:	3c013f00 	lui	at,0x3f00
    4674:	460a4402 	mul.s	$f16,$f8,$f10
    4678:	e6100068 	swc1	$f16,104(s0)
    467c:	c6000068 	lwc1	$f0,104(s0)
    4680:	4612003c 	c.lt.s	$f0,$f18
    4684:	00000000 	nop
    4688:	45020008 	bc1fl	46ac <func_80B48578+0x184>
    468c:	44814000 	mtc1	at,$f8
    4690:	3c013f00 	lui	at,0x3f00
    4694:	44812000 	mtc1	at,$f4
    4698:	00000000 	nop
    469c:	46040181 	sub.s	$f6,$f0,$f4
    46a0:	10000005 	b	46b8 <func_80B48578+0x190>
    46a4:	e6060068 	swc1	$f6,104(s0)
    46a8:	44814000 	mtc1	at,$f8
    46ac:	00000000 	nop
    46b0:	46080280 	add.s	$f10,$f0,$f8
    46b4:	e60a0068 	swc1	$f10,104(s0)
    46b8:	860c00b6 	lh	t4,182(s0)
    46bc:	010c2023 	subu	a0,t0,t4
    46c0:	00042400 	sll	a0,a0,0x10
    46c4:	0c000000 	jal	0 <func_80B44050>
    46c8:	00042403 	sra	a0,a0,0x10
    46cc:	44808000 	mtc1	zero,$f16
    46d0:	00000000 	nop
    46d4:	4600803e 	c.le.s	$f16,$f0
    46d8:	00000000 	nop
    46dc:	45000006 	bc1f	46f8 <func_80B48578+0x1d0>
    46e0:	3c013e00 	lui	at,0x3e00
    46e4:	44812000 	mtc1	at,$f4
    46e8:	c6120068 	lwc1	$f18,104(s0)
    46ec:	46049180 	add.s	$f6,$f18,$f4
    46f0:	10000006 	b	470c <func_80B48578+0x1e4>
    46f4:	e6060068 	swc1	$f6,104(s0)
    46f8:	3c013e00 	lui	at,0x3e00
    46fc:	44815000 	mtc1	at,$f10
    4700:	c6080068 	lwc1	$f8,104(s0)
    4704:	460a4401 	sub.s	$f16,$f8,$f10
    4708:	e6100068 	swc1	$f16,104(s0)
    470c:	860d00b6 	lh	t5,182(s0)
    4710:	02002825 	move	a1,s0
    4714:	25ae4000 	addiu	t6,t5,16384
    4718:	a60e0032 	sh	t6,50(s0)
    471c:	0c000000 	jal	0 <func_80B44050>
    4720:	8fa4005c 	lw	a0,92(sp)
    4724:	10400004 	beqz	v0,4738 <func_80B48578+0x210>
    4728:	3c0142c8 	lui	at,0x42c8
    472c:	44811000 	mtc1	at,$f2
    4730:	00000000 	nop
    4734:	e7a20040 	swc1	$f2,64(sp)
    4738:	3c01428c 	lui	at,0x428c
    473c:	c7a20040 	lwc1	$f2,64(sp)
    4740:	44819000 	mtc1	at,$f18
    4744:	c6000090 	lwc1	$f0,144(s0)
    4748:	46029100 	add.s	$f4,$f18,$f2
    474c:	4604003e 	c.le.s	$f0,$f4
    4750:	00000000 	nop
    4754:	4502000b 	bc1fl	4784 <func_80B48578+0x25c>
    4758:	3c0142b4 	lui	at,0x42b4
    475c:	44803000 	mtc1	zero,$f6
    4760:	26040408 	addiu	a0,s0,1032
    4764:	3c05c080 	lui	a1,0xc080
    4768:	3c063f80 	lui	a2,0x3f80
    476c:	3c073fc0 	lui	a3,0x3fc0
    4770:	0c000000 	jal	0 <func_80B44050>
    4774:	e7a60010 	swc1	$f6,16(sp)
    4778:	1000001a 	b	47e4 <func_80B48578+0x2bc>
    477c:	c6020408 	lwc1	$f2,1032(s0)
    4780:	3c0142b4 	lui	at,0x42b4
    4784:	44814000 	mtc1	at,$f8
    4788:	26040408 	addiu	a0,s0,1032
    478c:	24050000 	li	a1,0
    4790:	46024280 	add.s	$f10,$f8,$f2
    4794:	3c063f80 	lui	a2,0x3f80
    4798:	3c0740b4 	lui	a3,0x40b4
    479c:	4600503c 	c.lt.s	$f10,$f0
    47a0:	00000000 	nop
    47a4:	4502000b 	bc1fl	47d4 <func_80B48578+0x2ac>
    47a8:	44809000 	mtc1	zero,$f18
    47ac:	44808000 	mtc1	zero,$f16
    47b0:	26040408 	addiu	a0,s0,1032
    47b4:	3c054080 	lui	a1,0x4080
    47b8:	3c063f80 	lui	a2,0x3f80
    47bc:	3c073fc0 	lui	a3,0x3fc0
    47c0:	0c000000 	jal	0 <func_80B44050>
    47c4:	e7b00010 	swc1	$f16,16(sp)
    47c8:	10000006 	b	47e4 <func_80B48578+0x2bc>
    47cc:	c6020408 	lwc1	$f2,1032(s0)
    47d0:	44809000 	mtc1	zero,$f18
    47d4:	34e7cccd 	ori	a3,a3,0xcccd
    47d8:	0c000000 	jal	0 <func_80B44050>
    47dc:	e7b20010 	swc1	$f18,16(sp)
    47e0:	c6020408 	lwc1	$f2,1032(s0)
    47e4:	44802000 	mtc1	zero,$f4
    47e8:	02002025 	move	a0,s0
    47ec:	46022032 	c.eq.s	$f4,$f2
    47f0:	00000000 	nop
    47f4:	45030015 	bc1tl	484c <func_80B48578+0x324>
    47f8:	44807000 	mtc1	zero,$f14
    47fc:	44061000 	mfc1	a2,$f2
    4800:	0c000000 	jal	0 <func_80B44050>
    4804:	8fa5005c 	lw	a1,92(sp)
    4808:	54400010 	bnezl	v0,484c <func_80B48578+0x324>
    480c:	44807000 	mtc1	zero,$f14
    4810:	0c000000 	jal	0 <func_80B44050>
    4814:	860400b6 	lh	a0,182(s0)
    4818:	c6080408 	lwc1	$f8,1032(s0)
    481c:	c6060024 	lwc1	$f6,36(s0)
    4820:	860400b6 	lh	a0,182(s0)
    4824:	46080282 	mul.s	$f10,$f0,$f8
    4828:	460a3400 	add.s	$f16,$f6,$f10
    482c:	0c000000 	jal	0 <func_80B44050>
    4830:	e6100024 	swc1	$f16,36(s0)
    4834:	c6040408 	lwc1	$f4,1032(s0)
    4838:	c612002c 	lwc1	$f18,44(s0)
    483c:	46040202 	mul.s	$f8,$f0,$f4
    4840:	46089180 	add.s	$f6,$f18,$f8
    4844:	e606002c 	swc1	$f6,44(s0)
    4848:	44807000 	mtc1	zero,$f14
    484c:	c6000068 	lwc1	$f0,104(s0)
    4850:	c6020408 	lwc1	$f2,1032(s0)
    4854:	4600703e 	c.le.s	$f14,$f0
    4858:	00000000 	nop
    485c:	45020004 	bc1fl	4870 <func_80B48578+0x348>
    4860:	46000307 	neg.s	$f12,$f0
    4864:	10000002 	b	4870 <func_80B48578+0x348>
    4868:	46000306 	mov.s	$f12,$f0
    486c:	46000307 	neg.s	$f12,$f0
    4870:	4602703e 	c.le.s	$f14,$f2
    4874:	00000000 	nop
    4878:	45020004 	bc1fl	488c <func_80B48578+0x364>
    487c:	46001287 	neg.s	$f10,$f2
    4880:	10000003 	b	4890 <func_80B48578+0x368>
    4884:	e7a20034 	swc1	$f2,52(sp)
    4888:	46001287 	neg.s	$f10,$f2
    488c:	e7aa0034 	swc1	$f10,52(sp)
    4890:	c7b00034 	lwc1	$f16,52(sp)
    4894:	3c013f40 	lui	at,0x3f40
    4898:	460c803e 	c.le.s	$f16,$f12
    489c:	00000000 	nop
    48a0:	45020007 	bc1fl	48c0 <func_80B48578+0x398>
    48a4:	c6060168 	lwc1	$f6,360(s0)
    48a8:	44819000 	mtc1	at,$f18
    48ac:	46000107 	neg.s	$f4,$f0
    48b0:	46122202 	mul.s	$f8,$f4,$f18
    48b4:	10000012 	b	4900 <func_80B48578+0x3d8>
    48b8:	e6080168 	swc1	$f8,360(s0)
    48bc:	c6060168 	lwc1	$f6,360(s0)
    48c0:	44805000 	mtc1	zero,$f10
    48c4:	3c013f40 	lui	at,0x3f40
    48c8:	460a303c 	c.lt.s	$f6,$f10
    48cc:	00000000 	nop
    48d0:	45020008 	bc1fl	48f4 <func_80B48578+0x3cc>
    48d4:	44819000 	mtc1	at,$f18
    48d8:	3c01bf40 	lui	at,0xbf40
    48dc:	44818000 	mtc1	at,$f16
    48e0:	00000000 	nop
    48e4:	46101102 	mul.s	$f4,$f2,$f16
    48e8:	10000005 	b	4900 <func_80B48578+0x3d8>
    48ec:	e6040168 	swc1	$f4,360(s0)
    48f0:	44819000 	mtc1	at,$f18
    48f4:	00000000 	nop
    48f8:	46121202 	mul.s	$f8,$f2,$f18
    48fc:	e6080168 	swc1	$f8,360(s0)
    4900:	c6060164 	lwc1	$f6,356(s0)
    4904:	2604014c 	addiu	a0,s0,332
    4908:	4600328d 	trunc.w.s	$f10,$f6
    490c:	44185000 	mfc1	t8,$f10
    4910:	0c000000 	jal	0 <func_80B44050>
    4914:	afb8004c 	sw	t8,76(sp)
    4918:	44807000 	mtc1	zero,$f14
    491c:	c6000168 	lwc1	$f0,360(s0)
    4920:	26040024 	addiu	a0,s0,36
    4924:	4600703e 	c.le.s	$f14,$f0
    4928:	00000000 	nop
    492c:	45020004 	bc1fl	4940 <func_80B48578+0x418>
    4930:	46000407 	neg.s	$f16,$f0
    4934:	10000003 	b	4944 <func_80B48578+0x41c>
    4938:	e7a00034 	swc1	$f0,52(sp)
    493c:	46000407 	neg.s	$f16,$f0
    4940:	e7b00034 	swc1	$f16,52(sp)
    4944:	c6040164 	lwc1	$f4,356(s0)
    4948:	c7b20034 	lwc1	$f18,52(sp)
    494c:	4600703e 	c.le.s	$f14,$f0
    4950:	46122201 	sub.s	$f8,$f4,$f18
    4954:	4600418d 	trunc.w.s	$f6,$f8
    4958:	44093000 	mfc1	t1,$f6
    495c:	45000003 	bc1f	496c <func_80B48578+0x444>
    4960:	afa90048 	sw	t1,72(sp)
    4964:	10000003 	b	4974 <func_80B48578+0x44c>
    4968:	e7a00034 	swc1	$f0,52(sp)
    496c:	46000287 	neg.s	$f10,$f0
    4970:	e7aa0034 	swc1	$f10,52(sp)
    4974:	0c000000 	jal	0 <func_80B44050>
    4978:	860503fe 	lh	a1,1022(s0)
    497c:	a60203fe 	sh	v0,1022(s0)
    4980:	8fa40050 	lw	a0,80(sp)
    4984:	2405ffff 	li	a1,-1
    4988:	0c000000 	jal	0 <func_80B44050>
    498c:	24840024 	addiu	a0,a0,36
    4990:	860a03fe 	lh	t2,1022(s0)
    4994:	504a0013 	beql	v0,t2,49e4 <func_80B48578+0x4bc>
    4998:	860c001c 	lh	t4,28(s0)
    499c:	8603001c 	lh	v1,28(s0)
    49a0:	44808000 	mtc1	zero,$f16
    49a4:	3c0b0000 	lui	t3,0x0
    49a8:	04600008 	bltz	v1,49cc <func_80B48578+0x4a4>
    49ac:	e6100068 	swc1	$f16,104(s0)
    49b0:	856b0000 	lh	t3,0(t3)
    49b4:	546b0006 	bnel	v1,t3,49d0 <func_80B48578+0x4a8>
    49b8:	02002025 	move	a0,s0
    49bc:	0c000000 	jal	0 <func_80B44050>
    49c0:	02002025 	move	a0,s0
    49c4:	100000b1 	b	4c8c <func_80B48578+0x764>
    49c8:	8fbf0024 	lw	ra,36(sp)
    49cc:	02002025 	move	a0,s0
    49d0:	0c000000 	jal	0 <func_80B44050>
    49d4:	8fa5005c 	lw	a1,92(sp)
    49d8:	100000ac 	b	4c8c <func_80B48578+0x764>
    49dc:	8fbf0024 	lw	ra,36(sp)
    49e0:	860c001c 	lh	t4,28(s0)
    49e4:	2401fffe 	li	at,-2
    49e8:	8fa4005c 	lw	a0,92(sp)
    49ec:	55810006 	bnel	t4,at,4a08 <func_80B48578+0x4e0>
    49f0:	8e0203f0 	lw	v0,1008(s0)
    49f4:	0c000000 	jal	0 <func_80B44050>
    49f8:	02002825 	move	a1,s0
    49fc:	544000a3 	bnezl	v0,4c8c <func_80B48578+0x764>
    4a00:	8fbf0024 	lw	ra,36(sp)
    4a04:	8e0203f0 	lw	v0,1008(s0)
    4a08:	8fad0050 	lw	t5,80(sp)
    4a0c:	14400074 	bnez	v0,4be0 <func_80B48578+0x6b8>
    4a10:	244effff 	addiu	t6,v0,-1
    4a14:	860400b6 	lh	a0,182(s0)
    4a18:	85ae00b6 	lh	t6,182(t5)
    4a1c:	8603001c 	lh	v1,28(s0)
    4a20:	01c41023 	subu	v0,t6,a0
    4a24:	00021400 	sll	v0,v0,0x10
    4a28:	00021403 	sra	v0,v0,0x10
    4a2c:	04430005 	bgezl	v0,4a44 <func_80B48578+0x51c>
    4a30:	28413a98 	slti	at,v0,15000
    4a34:	00021023 	negu	v0,v0
    4a38:	00021400 	sll	v0,v0,0x10
    4a3c:	00021403 	sra	v0,v0,0x10
    4a40:	28413a98 	slti	at,v0,15000
    4a44:	1420001c 	bnez	at,4ab8 <func_80B48578+0x590>
    4a48:	00000000 	nop
    4a4c:	04600008 	bltz	v1,4a70 <func_80B48578+0x548>
    4a50:	3c0f0000 	lui	t7,0x0
    4a54:	85ef0000 	lh	t7,0(t7)
    4a58:	146f0005 	bne	v1,t7,4a70 <func_80B48578+0x548>
    4a5c:	00000000 	nop
    4a60:	0c000000 	jal	0 <func_80B44050>
    4a64:	02002025 	move	a0,s0
    4a68:	10000010 	b	4aac <func_80B48578+0x584>
    4a6c:	8fa3005c 	lw	v1,92(sp)
    4a70:	0c000000 	jal	0 <func_80B44050>
    4a74:	02002025 	move	a0,s0
    4a78:	0c000000 	jal	0 <func_80B44050>
    4a7c:	00000000 	nop
    4a80:	3c0140a0 	lui	at,0x40a0
    4a84:	44812000 	mtc1	at,$f4
    4a88:	3c013f80 	lui	at,0x3f80
    4a8c:	44814000 	mtc1	at,$f8
    4a90:	46040482 	mul.s	$f18,$f0,$f4
    4a94:	46089180 	add.s	$f6,$f18,$f8
    4a98:	4600328d 	trunc.w.s	$f10,$f6
    4a9c:	44195000 	mfc1	t9,$f10
    4aa0:	00000000 	nop
    4aa4:	ae1903f0 	sw	t9,1008(s0)
    4aa8:	8fa3005c 	lw	v1,92(sp)
    4aac:	3c010001 	lui	at,0x1
    4ab0:	1000004f 	b	4bf0 <func_80B48578+0x6c8>
    4ab4:	00611821 	addu	v1,v1,at
    4ab8:	0460000a 	bltz	v1,4ae4 <func_80B48578+0x5bc>
    4abc:	3c090000 	lui	t1,0x0
    4ac0:	85290000 	lh	t1,0(t1)
    4ac4:	54690008 	bnel	v1,t1,4ae8 <func_80B48578+0x5c0>
    4ac8:	3c0142c8 	lui	at,0x42c8
    4acc:	0c000000 	jal	0 <func_80B44050>
    4ad0:	02002025 	move	a0,s0
    4ad4:	8fa3005c 	lw	v1,92(sp)
    4ad8:	3c010001 	lui	at,0x1
    4adc:	10000044 	b	4bf0 <func_80B48578+0x6c8>
    4ae0:	00611821 	addu	v1,v1,at
    4ae4:	3c0142c8 	lui	at,0x42c8
    4ae8:	44818000 	mtc1	at,$f16
    4aec:	c6040090 	lwc1	$f4,144(s0)
    4af0:	a6040032 	sh	a0,50(s0)
    4af4:	8fa7005c 	lw	a3,92(sp)
    4af8:	4610203e 	c.le.s	$f4,$f16
    4afc:	3c010001 	lui	at,0x1
    4b00:	00e11821 	addu	v1,a3,at
    4b04:	45020011 	bc1fl	4b4c <func_80B48578+0x624>
    4b08:	8fa7005c 	lw	a3,92(sp)
    4b0c:	8c6a1de4 	lw	t2,7652(v1)
    4b10:	00e02025 	move	a0,a3
    4b14:	02002825 	move	a1,s0
    4b18:	314b0003 	andi	t3,t2,0x3
    4b1c:	5560000b 	bnezl	t3,4b4c <func_80B48578+0x624>
    4b20:	8fa7005c 	lw	a3,92(sp)
    4b24:	0c000000 	jal	0 <func_80B44050>
    4b28:	afa30028 	sw	v1,40(sp)
    4b2c:	10400006 	beqz	v0,4b48 <func_80B48578+0x620>
    4b30:	8fa30028 	lw	v1,40(sp)
    4b34:	02002025 	move	a0,s0
    4b38:	0c000000 	jal	0 <func_80B44050>
    4b3c:	afa30028 	sw	v1,40(sp)
    4b40:	1000002b 	b	4bf0 <func_80B48578+0x6c8>
    4b44:	8fa30028 	lw	v1,40(sp)
    4b48:	8fa7005c 	lw	a3,92(sp)
    4b4c:	3c010001 	lui	at,0x1
    4b50:	c6000090 	lwc1	$f0,144(s0)
    4b54:	00e11821 	addu	v1,a3,at
    4b58:	3c01438c 	lui	at,0x438c
    4b5c:	44819000 	mtc1	at,$f18
    4b60:	3c014370 	lui	at,0x4370
    4b64:	4612003c 	c.lt.s	$f0,$f18
    4b68:	00000000 	nop
    4b6c:	45020017 	bc1fl	4bcc <func_80B48578+0x6a4>
    4b70:	8fa5005c 	lw	a1,92(sp)
    4b74:	44814000 	mtc1	at,$f8
    4b78:	3c06433f 	lui	a2,0x433f
    4b7c:	34c6fee0 	ori	a2,a2,0xfee0
    4b80:	4600403c 	c.lt.s	$f8,$f0
    4b84:	02002025 	move	a0,s0
    4b88:	00e02825 	move	a1,a3
    4b8c:	4502000f 	bc1fl	4bcc <func_80B48578+0x6a4>
    4b90:	8fa5005c 	lw	a1,92(sp)
    4b94:	0c000000 	jal	0 <func_80B44050>
    4b98:	afa30028 	sw	v1,40(sp)
    4b9c:	1440000a 	bnez	v0,4bc8 <func_80B48578+0x6a0>
    4ba0:	8fa30028 	lw	v1,40(sp)
    4ba4:	8c6c1de4 	lw	t4,7652(v1)
    4ba8:	02002025 	move	a0,s0
    4bac:	318d0001 	andi	t5,t4,0x1
    4bb0:	55a00006 	bnezl	t5,4bcc <func_80B48578+0x6a4>
    4bb4:	8fa5005c 	lw	a1,92(sp)
    4bb8:	0c000000 	jal	0 <func_80B44050>
    4bbc:	afa30028 	sw	v1,40(sp)
    4bc0:	1000000b 	b	4bf0 <func_80B48578+0x6c8>
    4bc4:	8fa30028 	lw	v1,40(sp)
    4bc8:	8fa5005c 	lw	a1,92(sp)
    4bcc:	02002025 	move	a0,s0
    4bd0:	0c000000 	jal	0 <func_80B44050>
    4bd4:	afa30028 	sw	v1,40(sp)
    4bd8:	10000005 	b	4bf0 <func_80B48578+0x6c8>
    4bdc:	8fa30028 	lw	v1,40(sp)
    4be0:	ae0e03f0 	sw	t6,1008(s0)
    4be4:	8fa3005c 	lw	v1,92(sp)
    4be8:	3c010001 	lui	at,0x1
    4bec:	00611821 	addu	v1,v1,at
    4bf0:	c6060164 	lwc1	$f6,356(s0)
    4bf4:	8fa2004c 	lw	v0,76(sp)
    4bf8:	8fa40048 	lw	a0,72(sp)
    4bfc:	4600328d 	trunc.w.s	$f10,$f6
    4c00:	2881000e 	slti	at,a0,14
    4c04:	44185000 	mfc1	t8,$f10
    4c08:	00000000 	nop
    4c0c:	50580018 	beql	v0,t8,4c70 <func_80B48578+0x748>
    4c10:	8c6e1de4 	lw	t6,7652(v1)
    4c14:	10200007 	beqz	at,4c34 <func_80B48578+0x70c>
    4c18:	c7b00034 	lwc1	$f16,52(sp)
    4c1c:	4600810d 	trunc.w.s	$f4,$f16
    4c20:	44092000 	mfc1	t1,$f4
    4c24:	00000000 	nop
    4c28:	01225021 	addu	t2,t1,v0
    4c2c:	29410010 	slti	at,t2,16
    4c30:	10200009 	beqz	at,4c58 <func_80B48578+0x730>
    4c34:	2881001b 	slti	at,a0,27
    4c38:	1020000c 	beqz	at,4c6c <func_80B48578+0x744>
    4c3c:	c7b20034 	lwc1	$f18,52(sp)
    4c40:	4600920d 	trunc.w.s	$f8,$f18
    4c44:	440c4000 	mfc1	t4,$f8
    4c48:	00000000 	nop
    4c4c:	01826821 	addu	t5,t4,v0
    4c50:	29a1001d 	slti	at,t5,29
    4c54:	14200005 	bnez	at,4c6c <func_80B48578+0x744>
    4c58:	02002025 	move	a0,s0
    4c5c:	2405382e 	li	a1,14382
    4c60:	0c000000 	jal	0 <func_80B44050>
    4c64:	afa30028 	sw	v1,40(sp)
    4c68:	8fa30028 	lw	v1,40(sp)
    4c6c:	8c6e1de4 	lw	t6,7652(v1)
    4c70:	02002025 	move	a0,s0
    4c74:	31cf005f 	andi	t7,t6,0x5f
    4c78:	55e00004 	bnezl	t7,4c8c <func_80B48578+0x764>
    4c7c:	8fbf0024 	lw	ra,36(sp)
    4c80:	0c000000 	jal	0 <func_80B44050>
    4c84:	24053829 	li	a1,14377
    4c88:	8fbf0024 	lw	ra,36(sp)
    4c8c:	8fb00020 	lw	s0,32(sp)
    4c90:	27bd0058 	addiu	sp,sp,88
    4c94:	03e00008 	jr	ra
    4c98:	00000000 	nop

00004c9c <func_80B48CEC>:
    4c9c:	27bdffd0 	addiu	sp,sp,-48
    4ca0:	afb00028 	sw	s0,40(sp)
    4ca4:	00808025 	move	s0,a0
    4ca8:	afbf002c 	sw	ra,44(sp)
    4cac:	3c040601 	lui	a0,0x601
    4cb0:	0c000000 	jal	0 <func_80B44050>
    4cb4:	24844e60 	addiu	a0,a0,20064
    4cb8:	44822000 	mtc1	v0,$f4
    4cbc:	3c01c080 	lui	at,0xc080
    4cc0:	44814000 	mtc1	at,$f8
    4cc4:	468021a0 	cvt.s.w	$f6,$f4
    4cc8:	3c050601 	lui	a1,0x601
    4ccc:	240e0002 	li	t6,2
    4cd0:	afae0014 	sw	t6,20(sp)
    4cd4:	24a54e60 	addiu	a1,a1,20064
    4cd8:	2604014c 	addiu	a0,s0,332
    4cdc:	e7a60010 	swc1	$f6,16(sp)
    4ce0:	3c063fc0 	lui	a2,0x3fc0
    4ce4:	24070000 	li	a3,0
    4ce8:	0c000000 	jal	0 <func_80B44050>
    4cec:	e7a80018 	swc1	$f8,24(sp)
    4cf0:	960f0088 	lhu	t7,136(s0)
    4cf4:	44801000 	mtc1	zero,$f2
    4cf8:	2408000f 	li	t0,15
    4cfc:	31f80001 	andi	t8,t7,0x1
    4d00:	13000010 	beqz	t8,4d44 <func_80B48CEC+0xa8>
    4d04:	3c0b0000 	lui	t3,0x0
    4d08:	c6000060 	lwc1	$f0,96(s0)
    4d0c:	3c01c080 	lui	at,0xc080
    4d10:	46001032 	c.eq.s	$f2,$f0
    4d14:	00000000 	nop
    4d18:	45030008 	bc1tl	4d3c <func_80B48CEC+0xa0>
    4d1c:	e6020068 	swc1	$f2,104(s0)
    4d20:	44815000 	mtc1	at,$f10
    4d24:	00000000 	nop
    4d28:	46005032 	c.eq.s	$f10,$f0
    4d2c:	00000000 	nop
    4d30:	45020005 	bc1fl	4d48 <func_80B48CEC+0xac>
    4d34:	24190001 	li	t9,1
    4d38:	e6020068 	swc1	$f2,104(s0)
    4d3c:	10000003 	b	4d4c <func_80B48CEC+0xb0>
    4d40:	ae0003e4 	sw	zero,996(s0)
    4d44:	24190001 	li	t9,1
    4d48:	ae1903e4 	sw	t9,996(s0)
    4d4c:	8e090004 	lw	t1,4(s0)
    4d50:	2401fffe 	li	at,-2
    4d54:	ae0803dc 	sw	t0,988(s0)
    4d58:	01215024 	and	t2,t1,at
    4d5c:	ae0a0004 	sw	t2,4(s0)
    4d60:	856b0000 	lh	t3,0(t3)
    4d64:	2401ffff 	li	at,-1
    4d68:	02002025 	move	a0,s0
    4d6c:	11610018 	beq	t3,at,4dd0 <func_80B48CEC+0x134>
    4d70:	2405382d 	li	a1,14381
    4d74:	8e020120 	lw	v0,288(s0)
    4d78:	240c005a 	li	t4,90
    4d7c:	5040000b 	beqzl	v0,4dac <func_80B48CEC+0x110>
    4d80:	8e180124 	lw	t8,292(s0)
    4d84:	a44c03f4 	sh	t4,1012(v0)
    4d88:	8e020120 	lw	v0,288(s0)
    4d8c:	240e0003 	li	t6,3
    4d90:	904d00af 	lbu	t5,175(v0)
    4d94:	29a10003 	slti	at,t5,3
    4d98:	1020000d 	beqz	at,4dd0 <func_80B48CEC+0x134>
    4d9c:	00000000 	nop
    4da0:	1000000b 	b	4dd0 <func_80B48CEC+0x134>
    4da4:	a04e00af 	sb	t6,175(v0)
    4da8:	8e180124 	lw	t8,292(s0)
    4dac:	240f005a 	li	t7,90
    4db0:	24080003 	li	t0,3
    4db4:	a70f03f4 	sh	t7,1012(t8)
    4db8:	8e020124 	lw	v0,292(s0)
    4dbc:	905900af 	lbu	t9,175(v0)
    4dc0:	2b210003 	slti	at,t9,3
    4dc4:	10200002 	beqz	at,4dd0 <func_80B48CEC+0x134>
    4dc8:	00000000 	nop
    4dcc:	a04800af 	sb	t0,175(v0)
    4dd0:	3c010000 	lui	at,0x0
    4dd4:	0c000000 	jal	0 <func_80B44050>
    4dd8:	a4200000 	sh	zero,0(at)
    4ddc:	3c050000 	lui	a1,0x0
    4de0:	24a50000 	addiu	a1,a1,0
    4de4:	0c000000 	jal	0 <func_80B44050>
    4de8:	02002025 	move	a0,s0
    4dec:	8fbf002c 	lw	ra,44(sp)
    4df0:	8fb00028 	lw	s0,40(sp)
    4df4:	27bd0030 	addiu	sp,sp,48
    4df8:	03e00008 	jr	ra
    4dfc:	00000000 	nop

00004e00 <func_80B48E50>:
    4e00:	27bdffd8 	addiu	sp,sp,-40
    4e04:	afbf0024 	sw	ra,36(sp)
    4e08:	afb00020 	sw	s0,32(sp)
    4e0c:	afa5002c 	sw	a1,44(sp)
    4e10:	94820088 	lhu	v0,136(a0)
    4e14:	00808025 	move	s0,a0
    4e18:	3c063f80 	lui	a2,0x3f80
    4e1c:	304e0002 	andi	t6,v0,0x2
    4e20:	11c00004 	beqz	t6,4e34 <func_80B48E50+0x34>
    4e24:	3c073e19 	lui	a3,0x3e19
    4e28:	44800000 	mtc1	zero,$f0
    4e2c:	94820088 	lhu	v0,136(a0)
    4e30:	e4800068 	swc1	$f0,104(a0)
    4e34:	44800000 	mtc1	zero,$f0
    4e38:	304f0001 	andi	t7,v0,0x1
    4e3c:	11e00006 	beqz	t7,4e58 <func_80B48E50+0x58>
    4e40:	26040068 	addiu	a0,s0,104
    4e44:	44050000 	mfc1	a1,$f0
    4e48:	34e7999a 	ori	a3,a3,0x999a
    4e4c:	0c000000 	jal	0 <func_80B44050>
    4e50:	e7a00010 	swc1	$f0,16(sp)
    4e54:	ae0003e4 	sw	zero,996(s0)
    4e58:	0c000000 	jal	0 <func_80B44050>
    4e5c:	2604014c 	addiu	a0,s0,332
    4e60:	50400027 	beqzl	v0,4f00 <func_80B48E50+0x100>
    4e64:	c6040164 	lwc1	$f4,356(s0)
    4e68:	92180002 	lbu	t8,2(s0)
    4e6c:	24010006 	li	at,6
    4e70:	53010019 	beql	t8,at,4ed8 <func_80B48E50+0xd8>
    4e74:	92020404 	lbu	v0,1028(s0)
    4e78:	8619001c 	lh	t9,28(s0)
    4e7c:	3c080000 	lui	t0,0x0
    4e80:	2409ffff 	li	t1,-1
    4e84:	0720000c 	bltz	t9,4eb8 <func_80B48E50+0xb8>
    4e88:	00000000 	nop
    4e8c:	85080000 	lh	t0,0(t0)
    4e90:	2401ffff 	li	at,-1
    4e94:	8fa4002c 	lw	a0,44(sp)
    4e98:	15010007 	bne	t0,at,4eb8 <func_80B48E50+0xb8>
    4e9c:	00000000 	nop
    4ea0:	0c000000 	jal	0 <func_80B44050>
    4ea4:	860503fc 	lh	a1,1020(s0)
    4ea8:	0c000000 	jal	0 <func_80B44050>
    4eac:	00000000 	nop
    4eb0:	10000004 	b	4ec4 <func_80B48E50+0xc4>
    4eb4:	8fa4002c 	lw	a0,44(sp)
    4eb8:	3c010000 	lui	at,0x0
    4ebc:	a4290000 	sh	t1,0(at)
    4ec0:	8fa4002c 	lw	a0,44(sp)
    4ec4:	02003025 	move	a2,s0
    4ec8:	24070006 	li	a3,6
    4ecc:	0c000000 	jal	0 <func_80B44050>
    4ed0:	24851c24 	addiu	a1,a0,7204
    4ed4:	92020404 	lbu	v0,1028(s0)
    4ed8:	10400004 	beqz	v0,4eec <func_80B48E50+0xec>
    4edc:	244cfffb 	addiu	t4,v0,-5
    4ee0:	a20c0404 	sb	t4,1028(s0)
    4ee4:	10000011 	b	4f2c <func_80B48E50+0x12c>
    4ee8:	a20c00c8 	sb	t4,200(s0)
    4eec:	0c000000 	jal	0 <func_80B44050>
    4ef0:	02002025 	move	a0,s0
    4ef4:	1000000e 	b	4f30 <func_80B48E50+0x130>
    4ef8:	8fbf0024 	lw	ra,36(sp)
    4efc:	c6040164 	lwc1	$f4,356(s0)
    4f00:	2401000a 	li	at,10
    4f04:	02002025 	move	a0,s0
    4f08:	4600218d 	trunc.w.s	$f6,$f4
    4f0c:	44023000 	mfc1	v0,$f6
    4f10:	00000000 	nop
    4f14:	10410003 	beq	v0,at,4f24 <func_80B48E50+0x124>
    4f18:	24010012 	li	at,18
    4f1c:	54410004 	bnel	v0,at,4f30 <func_80B48E50+0x130>
    4f20:	8fbf0024 	lw	ra,36(sp)
    4f24:	0c000000 	jal	0 <func_80B44050>
    4f28:	2405387a 	li	a1,14458
    4f2c:	8fbf0024 	lw	ra,36(sp)
    4f30:	8fb00020 	lw	s0,32(sp)
    4f34:	27bd0028 	addiu	sp,sp,40
    4f38:	03e00008 	jr	ra
    4f3c:	00000000 	nop

00004f40 <func_80B48F90>:
    4f40:	27bdffe8 	addiu	sp,sp,-24
    4f44:	afbf0014 	sw	ra,20(sp)
    4f48:	afa40018 	sw	a0,24(sp)
    4f4c:	afa5001c 	sw	a1,28(sp)
    4f50:	848e001c 	lh	t6,28(a0)
    4f54:	2401fffe 	li	at,-2
    4f58:	00802825 	move	a1,a0
    4f5c:	55c1001b 	bnel	t6,at,4fcc <func_80B48F90+0x8c>
    4f60:	84a803ec 	lh	t0,1004(a1)
    4f64:	8c8f03dc 	lw	t7,988(a0)
    4f68:	24010003 	li	at,3
    4f6c:	55e10017 	bnel	t7,at,4fcc <func_80B48F90+0x8c>
    4f70:	84a803ec 	lh	t0,1004(a1)
    4f74:	848203f4 	lh	v0,1012(a0)
    4f78:	10400013 	beqz	v0,4fc8 <func_80B48F90+0x88>
    4f7c:	00022080 	sll	a0,v0,0x2
    4f80:	00822023 	subu	a0,a0,v0
    4f84:	00042080 	sll	a0,a0,0x2
    4f88:	00822023 	subu	a0,a0,v0
    4f8c:	00042100 	sll	a0,a0,0x4
    4f90:	00822023 	subu	a0,a0,v0
    4f94:	000420c0 	sll	a0,a0,0x3
    4f98:	00042400 	sll	a0,a0,0x10
    4f9c:	00042403 	sra	a0,a0,0x10
    4fa0:	0c000000 	jal	0 <func_80B44050>
    4fa4:	afa50018 	sw	a1,24(sp)
    4fa8:	3c010000 	lui	at,0x0
    4fac:	c4240000 	lwc1	$f4,0(at)
    4fb0:	8fa50018 	lw	a1,24(sp)
    4fb4:	46040182 	mul.s	$f6,$f0,$f4
    4fb8:	4600320d 	trunc.w.s	$f8,$f6
    4fbc:	44194000 	mfc1	t9,$f8
    4fc0:	10000024 	b	5054 <func_80B48F90+0x114>
    4fc4:	a4b903ec 	sh	t9,1004(a1)
    4fc8:	84a803ec 	lh	t0,1004(a1)
    4fcc:	84a900b6 	lh	t1,182(a1)
    4fd0:	84a2008a 	lh	v0,138(a1)
    4fd4:	240df830 	li	t5,-2000
    4fd8:	01096021 	addu	t4,t0,t1
    4fdc:	004c1023 	subu	v0,v0,t4
    4fe0:	00021400 	sll	v0,v0,0x10
    4fe4:	00021403 	sra	v0,v0,0x10
    4fe8:	2841f830 	slti	at,v0,-2000
    4fec:	10200003 	beqz	at,4ffc <func_80B48F90+0xbc>
    4ff0:	2419e329 	li	t9,-7383
    4ff4:	10000007 	b	5014 <func_80B48F90+0xd4>
    4ff8:	a4ad03ee 	sh	t5,1006(a1)
    4ffc:	284107d1 	slti	at,v0,2001
    5000:	14200003 	bnez	at,5010 <func_80B48F90+0xd0>
    5004:	00401825 	move	v1,v0
    5008:	10000001 	b	5010 <func_80B48F90+0xd0>
    500c:	240307d0 	li	v1,2000
    5010:	a4a303ee 	sh	v1,1006(a1)
    5014:	84ae03ec 	lh	t6,1004(a1)
    5018:	84af03ee 	lh	t7,1006(a1)
    501c:	01cfc021 	addu	t8,t6,t7
    5020:	a4b803ec 	sh	t8,1004(a1)
    5024:	84a203ec 	lh	v0,1004(a1)
    5028:	2841e329 	slti	at,v0,-7383
    502c:	50200004 	beqzl	at,5040 <func_80B48F90+0x100>
    5030:	28411cd8 	slti	at,v0,7384
    5034:	10000007 	b	5054 <func_80B48F90+0x114>
    5038:	a4b903ec 	sh	t9,1004(a1)
    503c:	28411cd8 	slti	at,v0,7384
    5040:	14200003 	bnez	at,5050 <func_80B48F90+0x110>
    5044:	00401825 	move	v1,v0
    5048:	10000001 	b	5050 <func_80B48F90+0x110>
    504c:	24031cd7 	li	v1,7383
    5050:	a4a303ec 	sh	v1,1004(a1)
    5054:	8fbf0014 	lw	ra,20(sp)
    5058:	27bd0018 	addiu	sp,sp,24
    505c:	03e00008 	jr	ra
    5060:	00000000 	nop

00005064 <func_80B490B4>:
    5064:	27bdffd0 	addiu	sp,sp,-48
    5068:	afbf0024 	sw	ra,36(sp)
    506c:	afb00020 	sw	s0,32(sp)
    5070:	afa50034 	sw	a1,52(sp)
    5074:	90820429 	lbu	v0,1065(a0)
    5078:	00808025 	move	s0,a0
    507c:	304e0002 	andi	t6,v0,0x2
    5080:	51c0005a 	beqzl	t6,51ec <func_80B490B4+0x188>
    5084:	8fbf0024 	lw	ra,36(sp)
    5088:	8c8f03dc 	lw	t7,988(a0)
    508c:	29e1000f 	slti	at,t7,15
    5090:	50200056 	beqzl	at,51ec <func_80B490B4+0x188>
    5094:	8fbf0024 	lw	ra,36(sp)
    5098:	8483001c 	lh	v1,28(a0)
    509c:	3058fffd 	andi	t8,v0,0xfffd
    50a0:	a0980429 	sb	t8,1065(a0)
    50a4:	04600004 	bltz	v1,50b8 <func_80B490B4+0x54>
    50a8:	3c190000 	lui	t9,0x0
    50ac:	87390000 	lh	t9,0(t9)
    50b0:	5079004e 	beql	v1,t9,51ec <func_80B490B4+0x188>
    50b4:	8fbf0024 	lw	ra,36(sp)
    50b8:	920200b1 	lbu	v0,177(s0)
    50bc:	24010006 	li	at,6
    50c0:	02002025 	move	a0,s0
    50c4:	10410048 	beq	v0,at,51e8 <func_80B490B4+0x184>
    50c8:	26050430 	addiu	a1,s0,1072
    50cc:	a2020410 	sb	v0,1040(s0)
    50d0:	0c000000 	jal	0 <func_80B44050>
    50d4:	00003025 	move	a2,zero
    50d8:	920200b1 	lbu	v0,177(s0)
    50dc:	24010001 	li	at,1
    50e0:	10410003 	beq	v0,at,50f0 <func_80B490B4+0x8c>
    50e4:	2401000f 	li	at,15
    50e8:	14410011 	bne	v0,at,5130 <func_80B490B4+0xcc>
    50ec:	02002025 	move	a0,s0
    50f0:	8e0803dc 	lw	t0,988(s0)
    50f4:	2401000e 	li	at,14
    50f8:	02002025 	move	a0,s0
    50fc:	1101003a 	beq	t0,at,51e8 <func_80B490B4+0x184>
    5100:	00002825 	move	a1,zero
    5104:	24090050 	li	t1,80
    5108:	afa90010 	sw	t1,16(sp)
    510c:	24060078 	li	a2,120
    5110:	0c000000 	jal	0 <func_80B44050>
    5114:	00003825 	move	a3,zero
    5118:	0c000000 	jal	0 <func_80B44050>
    511c:	02002025 	move	a0,s0
    5120:	0c000000 	jal	0 <func_80B44050>
    5124:	02002025 	move	a0,s0
    5128:	10000030 	b	51ec <func_80B490B4+0x188>
    512c:	8fbf0024 	lw	ra,36(sp)
    5130:	0c000000 	jal	0 <func_80B44050>
    5134:	24053829 	li	a1,14377
    5138:	240a0008 	li	t2,8
    513c:	afaa0010 	sw	t2,16(sp)
    5140:	02002025 	move	a0,s0
    5144:	24054000 	li	a1,16384
    5148:	240600ff 	li	a2,255
    514c:	0c000000 	jal	0 <func_80B44050>
    5150:	00003825 	move	a3,zero
    5154:	0c000000 	jal	0 <func_80B44050>
    5158:	02002025 	move	a0,s0
    515c:	14400013 	bnez	v0,51ac <func_80B490B4+0x148>
    5160:	3c0c0000 	lui	t4,0x0
    5164:	24070040 	li	a3,64
    5168:	a7a7002a 	sh	a3,42(sp)
    516c:	0c000000 	jal	0 <func_80B44050>
    5170:	02002025 	move	a0,s0
    5174:	860b001c 	lh	t3,28(s0)
    5178:	2401fffe 	li	at,-2
    517c:	87a7002a 	lh	a3,42(sp)
    5180:	15610002 	bne	t3,at,518c <func_80B490B4+0x128>
    5184:	8fa40034 	lw	a0,52(sp)
    5188:	240700e0 	li	a3,224
    518c:	02002825 	move	a1,s0
    5190:	0c000000 	jal	0 <func_80B44050>
    5194:	26060024 	addiu	a2,s0,36
    5198:	8fa40034 	lw	a0,52(sp)
    519c:	0c000000 	jal	0 <func_80B44050>
    51a0:	02002825 	move	a1,s0
    51a4:	10000011 	b	51ec <func_80B490B4+0x188>
    51a8:	8fbf0024 	lw	ra,36(sp)
    51ac:	858c0000 	lh	t4,0(t4)
    51b0:	2401ffff 	li	at,-1
    51b4:	1181000a 	beq	t4,at,51e0 <func_80B490B4+0x17c>
    51b8:	00000000 	nop
    51bc:	920200af 	lbu	v0,175(s0)
    51c0:	920d00b0 	lbu	t5,176(s0)
    51c4:	004d7021 	addu	t6,v0,t5
    51c8:	29c10004 	slti	at,t6,4
    51cc:	14200004 	bnez	at,51e0 <func_80B490B4+0x17c>
    51d0:	28410004 	slti	at,v0,4
    51d4:	10200002 	beqz	at,51e0 <func_80B490B4+0x17c>
    51d8:	240f000d 	li	t7,13
    51dc:	a20f0410 	sb	t7,1040(s0)
    51e0:	0c000000 	jal	0 <func_80B44050>
    51e4:	02002025 	move	a0,s0
    51e8:	8fbf0024 	lw	ra,36(sp)
    51ec:	8fb00020 	lw	s0,32(sp)
    51f0:	27bd0030 	addiu	sp,sp,48
    51f4:	03e00008 	jr	ra
    51f8:	00000000 	nop

000051fc <EnZf_Update>:
    51fc:	27bdffc8 	addiu	sp,sp,-56
    5200:	afbf0024 	sw	ra,36(sp)
    5204:	afb00020 	sw	s0,32(sp)
    5208:	00808025 	move	s0,a0
    520c:	0c000000 	jal	0 <func_80B44050>
    5210:	afa5003c 	sw	a1,60(sp)
    5214:	920e00b1 	lbu	t6,177(s0)
    5218:	24010006 	li	at,6
    521c:	51c1003c 	beql	t6,at,5310 <EnZf_Update+0x114>
    5220:	920d00af 	lbu	t5,175(s0)
    5224:	8e0f03e4 	lw	t7,996(s0)
    5228:	24010001 	li	at,1
    522c:	a60003f8 	sh	zero,1016(s0)
    5230:	51e1001d 	beql	t7,at,52a8 <EnZf_Update+0xac>
    5234:	860803f8 	lh	t0,1016(s0)
    5238:	8e1803dc 	lw	t8,988(s0)
    523c:	24010013 	li	at,19
    5240:	53010019 	beql	t8,at,52a8 <EnZf_Update+0xac>
    5244:	860803f8 	lh	t0,1016(s0)
    5248:	c6000068 	lwc1	$f0,104(s0)
    524c:	44802000 	mtc1	zero,$f4
    5250:	3c013fc0 	lui	at,0x3fc0
    5254:	46002032 	c.eq.s	$f4,$f0
    5258:	00000000 	nop
    525c:	4503000a 	bc1tl	5288 <EnZf_Update+0x8c>
    5260:	861903f8 	lh	t9,1016(s0)
    5264:	44813000 	mtc1	at,$f6
    5268:	02002025 	move	a0,s0
    526c:	8fa5003c 	lw	a1,60(sp)
    5270:	46060202 	mul.s	$f8,$f0,$f6
    5274:	44064000 	mfc1	a2,$f8
    5278:	0c000000 	jal	0 <func_80B44050>
    527c:	00000000 	nop
    5280:	a60203f8 	sh	v0,1016(s0)
    5284:	861903f8 	lh	t9,1016(s0)
    5288:	02002025 	move	a0,s0
    528c:	8fa5003c 	lw	a1,60(sp)
    5290:	57200005 	bnezl	t9,52a8 <EnZf_Update+0xac>
    5294:	860803f8 	lh	t0,1016(s0)
    5298:	0c000000 	jal	0 <func_80B44050>
    529c:	24060000 	li	a2,0
    52a0:	a60203f8 	sh	v0,1016(s0)
    52a4:	860803f8 	lh	t0,1016(s0)
    52a8:	55000004 	bnezl	t0,52bc <EnZf_Update+0xc0>
    52ac:	3c014270 	lui	at,0x4270
    52b0:	0c000000 	jal	0 <func_80B44050>
    52b4:	02002025 	move	a0,s0
    52b8:	3c014270 	lui	at,0x4270
    52bc:	44815000 	mtc1	at,$f10
    52c0:	2409001d 	li	t1,29
    52c4:	afa90014 	sw	t1,20(sp)
    52c8:	8fa4003c 	lw	a0,60(sp)
    52cc:	02002825 	move	a1,s0
    52d0:	3c0641c8 	lui	a2,0x41c8
    52d4:	3c0741f0 	lui	a3,0x41f0
    52d8:	0c000000 	jal	0 <func_80B44050>
    52dc:	e7aa0010 	swc1	$f10,16(sp)
    52e0:	960a0088 	lhu	t2,136(s0)
    52e4:	240c0001 	li	t4,1
    52e8:	314b0001 	andi	t3,t2,0x1
    52ec:	55600003 	bnezl	t3,52fc <EnZf_Update+0x100>
    52f0:	8e1903e8 	lw	t9,1000(s0)
    52f4:	ae0c03e4 	sw	t4,996(s0)
    52f8:	8e1903e8 	lw	t9,1000(s0)
    52fc:	02002025 	move	a0,s0
    5300:	8fa5003c 	lw	a1,60(sp)
    5304:	0320f809 	jalr	t9
    5308:	00000000 	nop
    530c:	920d00af 	lbu	t5,175(s0)
    5310:	59a00024 	blezl	t5,53a4 <EnZf_Update+0x1a8>
    5314:	8e0c03dc 	lw	t4,988(s0)
    5318:	8e0203dc 	lw	v0,988(s0)
    531c:	24010009 	li	at,9
    5320:	10410005 	beq	v0,at,5338 <EnZf_Update+0x13c>
    5324:	2401000e 	li	at,14
    5328:	10410003 	beq	v0,at,5338 <EnZf_Update+0x13c>
    532c:	02002025 	move	a0,s0
    5330:	0c000000 	jal	0 <func_80B44050>
    5334:	8fa5003c 	lw	a1,60(sp)
    5338:	3c0e0000 	lui	t6,0x0
    533c:	85ce0000 	lh	t6,0(t6)
    5340:	3c180000 	lui	t8,0x0
    5344:	51c00017 	beqzl	t6,53a4 <EnZf_Update+0x1a8>
    5348:	8e0c03dc 	lw	t4,988(s0)
    534c:	860f001c 	lh	t7,28(s0)
    5350:	87180000 	lh	t8,0(t8)
    5354:	02002025 	move	a0,s0
    5358:	51f80012 	beql	t7,t8,53a4 <EnZf_Update+0x1a8>
    535c:	8e0c03dc 	lw	t4,988(s0)
    5360:	0c000000 	jal	0 <func_80B44050>
    5364:	8fa5003c 	lw	a1,60(sp)
    5368:	8608001c 	lh	t0,28(s0)
    536c:	3c010000 	lui	at,0x0
    5370:	2409005a 	li	t1,90
    5374:	a4280000 	sh	t0,0(at)
    5378:	3c010000 	lui	at,0x0
    537c:	a4200000 	sh	zero,0(at)
    5380:	8e020120 	lw	v0,288(s0)
    5384:	50400004 	beqzl	v0,5398 <EnZf_Update+0x19c>
    5388:	8e0b0124 	lw	t3,292(s0)
    538c:	10000004 	b	53a0 <EnZf_Update+0x1a4>
    5390:	a44903f4 	sh	t1,1012(v0)
    5394:	8e0b0124 	lw	t3,292(s0)
    5398:	240a005a 	li	t2,90
    539c:	a56a03f4 	sh	t2,1012(t3)
    53a0:	8e0c03dc 	lw	t4,988(s0)
    53a4:	260403ec 	addiu	a0,s0,1004
    53a8:	00002825 	move	a1,zero
    53ac:	2981000f 	slti	at,t4,15
    53b0:	1420001e 	bnez	at,542c <EnZf_Update+0x230>
    53b4:	24060001 	li	a2,1
    53b8:	240707d0 	li	a3,2000
    53bc:	0c000000 	jal	0 <func_80B44050>
    53c0:	afa00010 	sw	zero,16(sp)
    53c4:	8e1903dc 	lw	t9,988(s0)
    53c8:	2b210015 	slti	at,t9,21
    53cc:	50200013 	beqzl	at,541c <EnZf_Update+0x220>
    53d0:	860203f4 	lh	v0,1012(s0)
    53d4:	860203f4 	lh	v0,1012(s0)
    53d8:	24010001 	li	at,1
    53dc:	5441000f 	bnel	v0,at,541c <EnZf_Update+0x220>
    53e0:	860203f4 	lh	v0,1012(s0)
    53e4:	960d0088 	lhu	t5,136(s0)
    53e8:	31ae0001 	andi	t6,t5,0x1
    53ec:	51c0000b 	beqzl	t6,541c <EnZf_Update+0x220>
    53f0:	860203f4 	lh	v0,1012(s0)
    53f4:	920f00af 	lbu	t7,175(s0)
    53f8:	02002025 	move	a0,s0
    53fc:	59e00005 	blezl	t7,5414 <EnZf_Update+0x218>
    5400:	2458ffff 	addiu	t8,v0,-1
    5404:	0c000000 	jal	0 <func_80B44050>
    5408:	8fa5003c 	lw	a1,60(sp)
    540c:	860203f4 	lh	v0,1012(s0)
    5410:	2458ffff 	addiu	t8,v0,-1
    5414:	a61803f4 	sh	t8,1012(s0)
    5418:	860203f4 	lh	v0,1012(s0)
    541c:	28410002 	slti	at,v0,2
    5420:	14200002 	bnez	at,542c <EnZf_Update+0x230>
    5424:	2448ffff 	addiu	t0,v0,-1
    5428:	a60803f4 	sh	t0,1012(s0)
    542c:	8e090028 	lw	t1,40(s0)
    5430:	3c014220 	lui	at,0x4220
    5434:	8e0a0024 	lw	t2,36(s0)
    5438:	ae09003c 	sw	t1,60(s0)
    543c:	c610003c 	lwc1	$f16,60(s0)
    5440:	44819000 	mtc1	at,$f18
    5444:	920b00af 	lbu	t3,175(s0)
    5448:	ae0a0038 	sw	t2,56(s0)
    544c:	46128100 	add.s	$f4,$f16,$f18
    5450:	8e0a002c 	lw	t2,44(s0)
    5454:	e604003c 	swc1	$f4,60(s0)
    5458:	19600029 	blez	t3,5500 <EnZf_Update+0x304>
    545c:	ae0a0040 	sw	t2,64(s0)
    5460:	920c0404 	lbu	t4,1028(s0)
    5464:	240100ff 	li	at,255
    5468:	02002025 	move	a0,s0
    546c:	15810024 	bne	t4,at,5500 <EnZf_Update+0x304>
    5470:	26050418 	addiu	a1,s0,1048
    5474:	0c000000 	jal	0 <func_80B44050>
    5478:	afa50028 	sw	a1,40(sp)
    547c:	c6060080 	lwc1	$f6,128(s0)
    5480:	c6080028 	lwc1	$f8,40(s0)
    5484:	46083032 	c.eq.s	$f6,$f8
    5488:	00000000 	nop
    548c:	4502000b 	bc1fl	54bc <EnZf_Update+0x2c0>
    5490:	8602001c 	lh	v0,28(s0)
    5494:	8e1903dc 	lw	t9,988(s0)
    5498:	8fa4003c 	lw	a0,60(sp)
    549c:	8fa60028 	lw	a2,40(sp)
    54a0:	2b210011 	slti	at,t9,17
    54a4:	10200004 	beqz	at,54b8 <EnZf_Update+0x2bc>
    54a8:	3c010001 	lui	at,0x1
    54ac:	34211e60 	ori	at,at,0x1e60
    54b0:	0c000000 	jal	0 <func_80B44050>
    54b4:	00812821 	addu	a1,a0,at
    54b8:	8602001c 	lh	v0,28(s0)
    54bc:	3c0e0000 	lui	t6,0x0
    54c0:	04420005 	bltzl	v0,54d8 <EnZf_Update+0x2dc>
    54c4:	920f0114 	lbu	t7,276(s0)
    54c8:	85ce0000 	lh	t6,0(t6)
    54cc:	504e000d 	beql	v0,t6,5504 <EnZf_Update+0x308>
    54d0:	8e0a03dc 	lw	t2,988(s0)
    54d4:	920f0114 	lbu	t7,276(s0)
    54d8:	3c010001 	lui	at,0x1
    54dc:	34211e60 	ori	at,at,0x1e60
    54e0:	11e00004 	beqz	t7,54f4 <EnZf_Update+0x2f8>
    54e4:	8fa4003c 	lw	a0,60(sp)
    54e8:	96180112 	lhu	t8,274(s0)
    54ec:	33084000 	andi	t0,t8,0x4000
    54f0:	15000003 	bnez	t0,5500 <EnZf_Update+0x304>
    54f4:	00812821 	addu	a1,a0,at
    54f8:	0c000000 	jal	0 <func_80B44050>
    54fc:	8fa60028 	lw	a2,40(sp)
    5500:	8e0a03dc 	lw	t2,988(s0)
    5504:	24010009 	li	at,9
    5508:	15410023 	bne	t2,at,5598 <EnZf_Update+0x39c>
    550c:	3c014160 	lui	at,0x4160
    5510:	44815000 	mtc1	at,$f10
    5514:	c6000164 	lwc1	$f0,356(s0)
    5518:	3c0141a0 	lui	at,0x41a0
    551c:	4600503e 	c.le.s	$f10,$f0
    5520:	00000000 	nop
    5524:	4502001d 	bc1fl	559c <EnZf_Update+0x3a0>
    5528:	8fbf0024 	lw	ra,36(sp)
    552c:	44818000 	mtc1	at,$f16
    5530:	00000000 	nop
    5534:	4610003e 	c.le.s	$f0,$f16
    5538:	00000000 	nop
    553c:	45020017 	bc1fl	559c <EnZf_Update+0x3a0>
    5540:	8fbf0024 	lw	ra,36(sp)
    5544:	92020474 	lbu	v0,1140(s0)
    5548:	304b0004 	andi	t3,v0,0x4
    554c:	1560000c 	bnez	t3,5580 <EnZf_Update+0x384>
    5550:	304efffb 	andi	t6,v0,0xfffb
    5554:	920c0475 	lbu	t4,1141(s0)
    5558:	3c010001 	lui	at,0x1
    555c:	34211e60 	ori	at,at,0x1e60
    5560:	31990002 	andi	t9,t4,0x2
    5564:	17200006 	bnez	t9,5580 <EnZf_Update+0x384>
    5568:	8fa4003c 	lw	a0,60(sp)
    556c:	00812821 	addu	a1,a0,at
    5570:	0c000000 	jal	0 <func_80B44050>
    5574:	26060464 	addiu	a2,s0,1124
    5578:	10000008 	b	559c <EnZf_Update+0x3a0>
    557c:	8fbf0024 	lw	ra,36(sp)
    5580:	920f0475 	lbu	t7,1141(s0)
    5584:	a20e0474 	sb	t6,1140(s0)
    5588:	02002025 	move	a0,s0
    558c:	31f8fffd 	andi	t8,t7,0xfffd
    5590:	0c000000 	jal	0 <func_80B44050>
    5594:	a2180475 	sb	t8,1141(s0)
    5598:	8fbf0024 	lw	ra,36(sp)
    559c:	8fb00020 	lw	s0,32(sp)
    55a0:	27bd0038 	addiu	sp,sp,56
    55a4:	03e00008 	jr	ra
    55a8:	00000000 	nop

000055ac <func_80B495FC>:
    55ac:	24010005 	li	at,5
    55b0:	afa40000 	sw	a0,0(sp)
    55b4:	10a10009 	beq	a1,at,55dc <func_80B495FC+0x30>
    55b8:	afa7000c 	sw	a3,12(sp)
    55bc:	2401000f 	li	at,15
    55c0:	10a1000e 	beq	a1,at,55fc <func_80B495FC+0x50>
    55c4:	8fa80014 	lw	t0,20(sp)
    55c8:	24010021 	li	at,33
    55cc:	10a10012 	beq	a1,at,5618 <func_80B495FC+0x6c>
    55d0:	8fab0014 	lw	t3,20(sp)
    55d4:	03e00008 	jr	ra
    55d8:	00001025 	move	v0,zero
    55dc:	8fa20010 	lw	v0,16(sp)
    55e0:	8faf0014 	lw	t7,20(sp)
    55e4:	844e0002 	lh	t6,2(v0)
    55e8:	85f803ec 	lh	t8,1004(t7)
    55ec:	01d8c823 	subu	t9,t6,t8
    55f0:	a4590002 	sh	t9,2(v0)
    55f4:	03e00008 	jr	ra
    55f8:	00001025 	move	v0,zero
    55fc:	850903fa 	lh	t1,1018(t0)
    5600:	3c0a0601 	lui	t2,0x601
    5604:	254ae198 	addiu	t2,t2,-7784
    5608:	11200009 	beqz	t1,5630 <func_80B495FC+0x84>
    560c:	00001025 	move	v0,zero
    5610:	03e00008 	jr	ra
    5614:	acca0000 	sw	t2,0(a2)
    5618:	856c03fa 	lh	t4,1018(t3)
    561c:	3c0d0601 	lui	t5,0x601
    5620:	25ad0060 	addiu	t5,t5,96
    5624:	11800002 	beqz	t4,5630 <func_80B495FC+0x84>
    5628:	00000000 	nop
    562c:	accd0000 	sw	t5,0(a2)
    5630:	03e00008 	jr	ra
    5634:	00001025 	move	v0,zero

00005638 <func_80B49688>:
    5638:	27bdffa0 	addiu	sp,sp,-96
    563c:	afb10020 	sw	s1,32(sp)
    5640:	2401000f 	li	at,15
    5644:	afbf0024 	sw	ra,36(sp)
    5648:	afb0001c 	sw	s0,28(sp)
    564c:	afa40060 	sw	a0,96(sp)
    5650:	afa50064 	sw	a1,100(sp)
    5654:	afa60068 	sw	a2,104(sp)
    5658:	afa7006c 	sw	a3,108(sp)
    565c:	14a10045 	bne	a1,at,5774 <func_80B49688+0x13c>
    5660:	2411ffff 	li	s1,-1
    5664:	8fb00070 	lw	s0,112(sp)
    5668:	3c040000 	lui	a0,0x0
    566c:	24840000 	addiu	a0,a0,0
    5670:	260504b0 	addiu	a1,s0,1200
    5674:	0c000000 	jal	0 <func_80B44050>
    5678:	afa50034 	sw	a1,52(sp)
    567c:	3c040000 	lui	a0,0x0
    5680:	260504a4 	addiu	a1,s0,1188
    5684:	afa50038 	sw	a1,56(sp)
    5688:	0c000000 	jal	0 <func_80B44050>
    568c:	24840000 	addiu	a0,a0,0
    5690:	3c040000 	lui	a0,0x0
    5694:	260504c8 	addiu	a1,s0,1224
    5698:	afa5002c 	sw	a1,44(sp)
    569c:	0c000000 	jal	0 <func_80B44050>
    56a0:	24840000 	addiu	a0,a0,0
    56a4:	3c040000 	lui	a0,0x0
    56a8:	260704bc 	addiu	a3,s0,1212
    56ac:	00e02825 	move	a1,a3
    56b0:	afa70030 	sw	a3,48(sp)
    56b4:	0c000000 	jal	0 <func_80B44050>
    56b8:	24840000 	addiu	a0,a0,0
    56bc:	8faf002c 	lw	t7,44(sp)
    56c0:	8fa70030 	lw	a3,48(sp)
    56c4:	26040464 	addiu	a0,s0,1124
    56c8:	8fa50038 	lw	a1,56(sp)
    56cc:	8fa60034 	lw	a2,52(sp)
    56d0:	0c000000 	jal	0 <func_80B44050>
    56d4:	afaf0010 	sw	t7,16(sp)
    56d8:	3c040000 	lui	a0,0x0
    56dc:	24840000 	addiu	a0,a0,0
    56e0:	0c000000 	jal	0 <func_80B44050>
    56e4:	27a50054 	addiu	a1,sp,84
    56e8:	3c040000 	lui	a0,0x0
    56ec:	24840000 	addiu	a0,a0,0
    56f0:	0c000000 	jal	0 <func_80B44050>
    56f4:	27a50048 	addiu	a1,sp,72
    56f8:	8e1803dc 	lw	t8,988(s0)
    56fc:	24010009 	li	at,9
    5700:	17010026 	bne	t8,at,579c <func_80B49688+0x164>
    5704:	3c014160 	lui	at,0x4160
    5708:	44812000 	mtc1	at,$f4
    570c:	c6000164 	lwc1	$f0,356(s0)
    5710:	3c0141a0 	lui	at,0x41a0
    5714:	4604003c 	c.lt.s	$f0,$f4
    5718:	00000000 	nop
    571c:	45020008 	bc1fl	5740 <func_80B49688+0x108>
    5720:	44813000 	mtc1	at,$f6
    5724:	0c000000 	jal	0 <func_80B44050>
    5728:	8e040414 	lw	a0,1044(s0)
    572c:	0c000000 	jal	0 <func_80B44050>
    5730:	00402025 	move	a0,v0
    5734:	1000001a 	b	57a0 <func_80B49688+0x168>
    5738:	8fa20064 	lw	v0,100(sp)
    573c:	44813000 	mtc1	at,$f6
    5740:	00000000 	nop
    5744:	4606003c 	c.lt.s	$f0,$f6
    5748:	00000000 	nop
    574c:	45020014 	bc1fl	57a0 <func_80B49688+0x168>
    5750:	8fa20064 	lw	v0,100(sp)
    5754:	0c000000 	jal	0 <func_80B44050>
    5758:	8e040414 	lw	a0,1044(s0)
    575c:	00402025 	move	a0,v0
    5760:	27a50054 	addiu	a1,sp,84
    5764:	0c000000 	jal	0 <func_80B44050>
    5768:	27a60048 	addiu	a2,sp,72
    576c:	1000000c 	b	57a0 <func_80B49688+0x168>
    5770:	8fa20064 	lw	v0,100(sp)
    5774:	8fb00070 	lw	s0,112(sp)
    5778:	3c190000 	lui	t9,0x0
    577c:	27270000 	addiu	a3,t9,0
    5780:	24080026 	li	t0,38
    5784:	afa80010 	sw	t0,16(sp)
    5788:	afa70014 	sw	a3,20(sp)
    578c:	8fa50064 	lw	a1,100(sp)
    5790:	2406002d 	li	a2,45
    5794:	0c000000 	jal	0 <func_80B44050>
    5798:	02002025 	move	a0,s0
    579c:	8fa20064 	lw	v0,100(sp)
    57a0:	24010026 	li	at,38
    57a4:	3c040000 	lui	a0,0x0
    57a8:	10410009 	beq	v0,at,57d0 <func_80B49688+0x198>
    57ac:	24840000 	addiu	a0,a0,0
    57b0:	2401002d 	li	at,45
    57b4:	14410009 	bne	v0,at,57dc <func_80B49688+0x1a4>
    57b8:	3c040000 	lui	a0,0x0
    57bc:	24840000 	addiu	a0,a0,0
    57c0:	0c000000 	jal	0 <func_80B44050>
    57c4:	260504f0 	addiu	a1,s0,1264
    57c8:	10000004 	b	57dc <func_80B49688+0x1a4>
    57cc:	8fa20064 	lw	v0,100(sp)
    57d0:	0c000000 	jal	0 <func_80B44050>
    57d4:	260504e4 	addiu	a1,s0,1252
    57d8:	8fa20064 	lw	v0,100(sp)
    57dc:	860903f6 	lh	t1,1014(s0)
    57e0:	244afff7 	addiu	t2,v0,-9
    57e4:	2d410028 	sltiu	at,t2,40
    57e8:	51200023 	beqzl	t1,5878 <L80B498A0+0x28>
    57ec:	8fbf0024 	lw	ra,36(sp)
    57f0:	10200017 	beqz	at,5850 <L80B498A0>
    57f4:	000a5080 	sll	t2,t2,0x2
    57f8:	3c010000 	lui	at,0x0
    57fc:	002a0821 	addu	at,at,t2
    5800:	8c2a0000 	lw	t2,0(at)
    5804:	01400008 	jr	t2
    5808:	00000000 	nop

0000580c <L80B4985C>:
    580c:	10000010 	b	5850 <L80B498A0>
    5810:	00008825 	move	s1,zero

00005814 <L80B49864>:
    5814:	1000000e 	b	5850 <L80B498A0>
    5818:	24110001 	li	s1,1

0000581c <L80B4986C>:
    581c:	1000000c 	b	5850 <L80B498A0>
    5820:	24110002 	li	s1,2

00005824 <L80B49874>:
    5824:	1000000a 	b	5850 <L80B498A0>
    5828:	24110003 	li	s1,3

0000582c <L80B4987C>:
    582c:	10000008 	b	5850 <L80B498A0>
    5830:	24110004 	li	s1,4

00005834 <L80B49884>:
    5834:	10000006 	b	5850 <L80B498A0>
    5838:	24110005 	li	s1,5

0000583c <L80B4988C>:
    583c:	10000004 	b	5850 <L80B498A0>
    5840:	24110006 	li	s1,6

00005844 <L80B49894>:
    5844:	10000002 	b	5850 <L80B498A0>
    5848:	24110007 	li	s1,7

0000584c <L80B4989C>:
    584c:	24110008 	li	s1,8

00005850 <L80B498A0>:
    5850:	06200008 	bltz	s1,5874 <L80B498A0+0x24>
    5854:	3c040000 	lui	a0,0x0
    5858:	00115880 	sll	t3,s1,0x2
    585c:	01715823 	subu	t3,t3,s1
    5860:	000b5880 	sll	t3,t3,0x2
    5864:	020b2821 	addu	a1,s0,t3
    5868:	24a504fc 	addiu	a1,a1,1276
    586c:	0c000000 	jal	0 <func_80B44050>
    5870:	24840000 	addiu	a0,a0,0
    5874:	8fbf0024 	lw	ra,36(sp)
    5878:	8fb0001c 	lw	s0,28(sp)
    587c:	8fb10020 	lw	s1,32(sp)
    5880:	03e00008 	jr	ra
    5884:	27bd0060 	addiu	sp,sp,96

00005888 <EnZf_Draw>:
    5888:	27bdff80 	addiu	sp,sp,-128
    588c:	afbf003c 	sw	ra,60(sp)
    5890:	afb10038 	sw	s1,56(sp)
    5894:	afb00034 	sw	s0,52(sp)
    5898:	afa50084 	sw	a1,132(sp)
    589c:	8ca50000 	lw	a1,0(a1)
    58a0:	00808025 	move	s0,a0
    58a4:	3c060000 	lui	a2,0x0
    58a8:	24c60000 	addiu	a2,a2,0
    58ac:	27a40064 	addiu	a0,sp,100
    58b0:	24070dcd 	li	a3,3533
    58b4:	0c000000 	jal	0 <func_80B44050>
    58b8:	00a08825 	move	s1,a1
    58bc:	02002025 	move	a0,s0
    58c0:	8fa50084 	lw	a1,132(sp)
    58c4:	0c000000 	jal	0 <func_80B44050>
    58c8:	24060001 	li	a2,1
    58cc:	3c040000 	lui	a0,0x0
    58d0:	3c0fd700 	lui	t7,0xd700
    58d4:	35ef0002 	ori	t7,t7,0x2
    58d8:	24840000 	addiu	a0,a0,0
    58dc:	ac8f0000 	sw	t7,0(a0)
    58e0:	3c020000 	lui	v0,0x0
    58e4:	8c420000 	lw	v0,0(v0)
    58e8:	3c0ddb06 	lui	t5,0xdb06
    58ec:	35ad0020 	ori	t5,t5,0x20
    58f0:	845806d6 	lh	t8,1750(v0)
    58f4:	844906d4 	lh	t1,1748(v0)
    58f8:	240100ff 	li	at,255
    58fc:	3319ffff 	andi	t9,t8,0xffff
    5900:	00095400 	sll	t2,t1,0x10
    5904:	032a5825 	or	t3,t9,t2
    5908:	ac8b0004 	sw	t3,4(a0)
    590c:	8e2202c0 	lw	v0,704(s1)
    5910:	244c0008 	addiu	t4,v0,8
    5914:	ae2c02c0 	sw	t4,704(s1)
    5918:	ac440004 	sw	a0,4(v0)
    591c:	ac4d0000 	sw	t5,0(v0)
    5920:	920e0404 	lbu	t6,1028(s0)
    5924:	8faf0084 	lw	t7,132(sp)
    5928:	8fa90084 	lw	t1,132(sp)
    592c:	15c10047 	bne	t6,at,5a4c <EnZf_Draw+0x1c4>
    5930:	00000000 	nop
    5934:	0c000000 	jal	0 <func_80B44050>
    5938:	8de40000 	lw	a0,0(t7)
    593c:	8e2202c0 	lw	v0,704(s1)
    5940:	3c08fb00 	lui	t0,0xfb00
    5944:	3c0bdb06 	lui	t3,0xdb06
    5948:	24580008 	addiu	t8,v0,8
    594c:	ae3802c0 	sw	t8,704(s1)
    5950:	ac480000 	sw	t0,0(v0)
    5954:	92190404 	lbu	t9,1028(s0)
    5958:	3c0c0000 	lui	t4,0x0
    595c:	258c0010 	addiu	t4,t4,16
    5960:	ac590004 	sw	t9,4(v0)
    5964:	8e2202c0 	lw	v0,704(s1)
    5968:	356b0024 	ori	t3,t3,0x24
    596c:	3c0d0000 	lui	t5,0x0
    5970:	244a0008 	addiu	t2,v0,8
    5974:	ae2a02c0 	sw	t2,704(s1)
    5978:	ac4c0004 	sw	t4,4(v0)
    597c:	ac4b0000 	sw	t3,0(v0)
    5980:	8e06016c 	lw	a2,364(s0)
    5984:	8e050150 	lw	a1,336(s0)
    5988:	25ad0000 	addiu	t5,t5,0
    598c:	afad0010 	sw	t5,16(sp)
    5990:	afb00014 	sw	s0,20(sp)
    5994:	8e2e02c0 	lw	t6,704(s1)
    5998:	3c070000 	lui	a3,0x0
    599c:	24e70000 	addiu	a3,a3,0
    59a0:	8fa40084 	lw	a0,132(sp)
    59a4:	0c000000 	jal	0 <func_80B44050>
    59a8:	afae0018 	sw	t6,24(sp)
    59ac:	ae2202c0 	sw	v0,704(s1)
    59b0:	860f03f6 	lh	t7,1014(s0)
    59b4:	51e0004b 	beqzl	t7,5ae4 <EnZf_Draw+0x25c>
    59b8:	8faa0084 	lw	t2,132(sp)
    59bc:	860903f6 	lh	t1,1014(s0)
    59c0:	92180114 	lbu	t8,276(s0)
    59c4:	02002825 	move	a1,s0
    59c8:	2539ffff 	addiu	t9,t1,-1
    59cc:	a61903f6 	sh	t9,1014(s0)
    59d0:	860303f6 	lh	v1,1014(s0)
    59d4:	27080001 	addiu	t0,t8,1
    59d8:	a2080114 	sb	t0,276(s0)
    59dc:	306a0003 	andi	t2,v1,0x3
    59e0:	1540003f 	bnez	t2,5ae0 <EnZf_Draw+0x258>
    59e4:	00031083 	sra	v0,v1,0x2
    59e8:	00025880 	sll	t3,v0,0x2
    59ec:	01625823 	subu	t3,t3,v0
    59f0:	3c010000 	lui	at,0x0
    59f4:	c4240000 	lwc1	$f4,0(at)
    59f8:	000b5880 	sll	t3,t3,0x2
    59fc:	020b3021 	addu	a2,s0,t3
    5a00:	240c0096 	li	t4,150
    5a04:	240d0096 	li	t5,150
    5a08:	240e00fa 	li	t6,250
    5a0c:	240f00eb 	li	t7,235
    5a10:	241800f5 	li	t8,245
    5a14:	240800ff 	li	t0,255
    5a18:	afa80024 	sw	t0,36(sp)
    5a1c:	afb80020 	sw	t8,32(sp)
    5a20:	afaf001c 	sw	t7,28(sp)
    5a24:	afae0018 	sw	t6,24(sp)
    5a28:	afad0014 	sw	t5,20(sp)
    5a2c:	afac0010 	sw	t4,16(sp)
    5a30:	24c604fc 	addiu	a2,a2,1276
    5a34:	8fa40084 	lw	a0,132(sp)
    5a38:	24070096 	li	a3,150
    5a3c:	0c000000 	jal	0 <func_80B44050>
    5a40:	e7a40028 	swc1	$f4,40(sp)
    5a44:	10000027 	b	5ae4 <EnZf_Draw+0x25c>
    5a48:	8faa0084 	lw	t2,132(sp)
    5a4c:	0c000000 	jal	0 <func_80B44050>
    5a50:	8d240000 	lw	a0,0(t1)
    5a54:	8e2202d0 	lw	v0,720(s1)
    5a58:	3c0ae700 	lui	t2,0xe700
    5a5c:	3c0cfb00 	lui	t4,0xfb00
    5a60:	24590008 	addiu	t9,v0,8
    5a64:	ae3902d0 	sw	t9,720(s1)
    5a68:	ac400004 	sw	zero,4(v0)
    5a6c:	ac4a0000 	sw	t2,0(v0)
    5a70:	8e2202d0 	lw	v0,720(s1)
    5a74:	3c18db06 	lui	t8,0xdb06
    5a78:	3c080000 	lui	t0,0x0
    5a7c:	244b0008 	addiu	t3,v0,8
    5a80:	ae2b02d0 	sw	t3,720(s1)
    5a84:	ac4c0000 	sw	t4,0(v0)
    5a88:	920e0404 	lbu	t6,1028(s0)
    5a8c:	25080000 	addiu	t0,t0,0
    5a90:	37180024 	ori	t8,t8,0x24
    5a94:	ac4e0004 	sw	t6,4(v0)
    5a98:	8e2202d0 	lw	v0,720(s1)
    5a9c:	3c090000 	lui	t1,0x0
    5aa0:	25290000 	addiu	t1,t1,0
    5aa4:	244f0008 	addiu	t7,v0,8
    5aa8:	ae2f02d0 	sw	t7,720(s1)
    5aac:	ac480004 	sw	t0,4(v0)
    5ab0:	ac580000 	sw	t8,0(v0)
    5ab4:	8e06016c 	lw	a2,364(s0)
    5ab8:	8e050150 	lw	a1,336(s0)
    5abc:	afb00014 	sw	s0,20(sp)
    5ac0:	afa90010 	sw	t1,16(sp)
    5ac4:	8e3902d0 	lw	t9,720(s1)
    5ac8:	3c070000 	lui	a3,0x0
    5acc:	24e70000 	addiu	a3,a3,0
    5ad0:	8fa40084 	lw	a0,132(sp)
    5ad4:	0c000000 	jal	0 <func_80B44050>
    5ad8:	afb90018 	sw	t9,24(sp)
    5adc:	ae2202d0 	sw	v0,720(s1)
    5ae0:	8faa0084 	lw	t2,132(sp)
    5ae4:	3c060000 	lui	a2,0x0
    5ae8:	24c60000 	addiu	a2,a2,0
    5aec:	27a40064 	addiu	a0,sp,100
    5af0:	24070e11 	li	a3,3601
    5af4:	0c000000 	jal	0 <func_80B44050>
    5af8:	8d450000 	lw	a1,0(t2)
    5afc:	8fbf003c 	lw	ra,60(sp)
    5b00:	8fb00034 	lw	s0,52(sp)
    5b04:	8fb10038 	lw	s1,56(sp)
    5b08:	03e00008 	jr	ra
    5b0c:	27bd0080 	addiu	sp,sp,128

00005b10 <func_80B49B60>:
    5b10:	27bdffe8 	addiu	sp,sp,-24
    5b14:	afa5001c 	sw	a1,28(sp)
    5b18:	afbf0014 	sw	ra,20(sp)
    5b1c:	00803825 	move	a3,a0
    5b20:	3c050601 	lui	a1,0x601
    5b24:	24a56388 	addiu	a1,a1,25480
    5b28:	afa70018 	sw	a3,24(sp)
    5b2c:	2484014c 	addiu	a0,a0,332
    5b30:	0c000000 	jal	0 <func_80B44050>
    5b34:	3c06bf80 	lui	a2,0xbf80
    5b38:	0c000000 	jal	0 <func_80B44050>
    5b3c:	00000000 	nop
    5b40:	3c014120 	lui	at,0x4120
    5b44:	44812000 	mtc1	at,$f4
    5b48:	3c014100 	lui	at,0x4100
    5b4c:	44814000 	mtc1	at,$f8
    5b50:	46040182 	mul.s	$f6,$f0,$f4
    5b54:	8fa70018 	lw	a3,24(sp)
    5b58:	2401fffe 	li	at,-2
    5b5c:	3c050000 	lui	a1,0x0
    5b60:	84f8001c 	lh	t8,28(a3)
    5b64:	240b000c 	li	t3,12
    5b68:	24a50000 	addiu	a1,a1,0
    5b6c:	46083280 	add.s	$f10,$f6,$f8
    5b70:	00e02025 	move	a0,a3
    5b74:	4600540d 	trunc.w.s	$f16,$f10
    5b78:	440f8000 	mfc1	t7,$f16
    5b7c:	1701000b 	bne	t8,at,5bac <func_80B49B60+0x9c>
    5b80:	acef03f0 	sw	t7,1008(a3)
    5b84:	c7a0001c 	lwc1	$f0,28(sp)
    5b88:	01e0c825 	move	t9,t7
    5b8c:	46000480 	add.s	$f18,$f0,$f0
    5b90:	e4f20068 	swc1	$f18,104(a3)
    5b94:	07210003 	bgez	t9,5ba4 <func_80B49B60+0x94>
    5b98:	00194043 	sra	t0,t9,0x1
    5b9c:	27210001 	addiu	at,t9,1
    5ba0:	00014043 	sra	t0,at,0x1
    5ba4:	10000003 	b	5bb4 <func_80B49B60+0xa4>
    5ba8:	ace803f0 	sw	t0,1008(a3)
    5bac:	c7a4001c 	lwc1	$f4,28(sp)
    5bb0:	e4e40068 	swc1	$f4,104(a3)
    5bb4:	84e900b6 	lh	t1,182(a3)
    5bb8:	ace003e4 	sw	zero,996(a3)
    5bbc:	aceb03dc 	sw	t3,988(a3)
    5bc0:	252a3fff 	addiu	t2,t1,16383
    5bc4:	0c000000 	jal	0 <func_80B44050>
    5bc8:	a4ea0032 	sh	t2,50(a3)
    5bcc:	8fbf0014 	lw	ra,20(sp)
    5bd0:	27bd0018 	addiu	sp,sp,24
    5bd4:	03e00008 	jr	ra
    5bd8:	00000000 	nop

00005bdc <func_80B49C2C>:
    5bdc:	27bdffe0 	addiu	sp,sp,-32
    5be0:	afbf0014 	sw	ra,20(sp)
    5be4:	afa40020 	sw	a0,32(sp)
    5be8:	afa50024 	sw	a1,36(sp)
    5bec:	0c000000 	jal	0 <func_80B44050>
    5bf0:	3c064416 	lui	a2,0x4416
    5bf4:	8fa70024 	lw	a3,36(sp)
    5bf8:	1040007b 	beqz	v0,5de8 <func_80B49C2C+0x20c>
    5bfc:	00402825 	move	a1,v0
    5c00:	00e02025 	move	a0,a3
    5c04:	afa2001c 	sw	v0,28(sp)
    5c08:	0c000000 	jal	0 <func_80B44050>
    5c0c:	afa70024 	sw	a3,36(sp)
    5c10:	8fa40024 	lw	a0,36(sp)
    5c14:	3c06c100 	lui	a2,0xc100
    5c18:	848f00b6 	lh	t7,182(a0)
    5c1c:	004f4823 	subu	t1,v0,t7
    5c20:	25f83fff 	addiu	t8,t7,16383
    5c24:	00094c00 	sll	t1,t1,0x10
    5c28:	a4980032 	sh	t8,50(a0)
    5c2c:	00094c03 	sra	t1,t1,0x10
    5c30:	a7a9001a 	sh	t1,26(sp)
    5c34:	a7a00018 	sh	zero,24(sp)
    5c38:	0c000000 	jal	0 <func_80B44050>
    5c3c:	8fa50020 	lw	a1,32(sp)
    5c40:	8fa70024 	lw	a3,36(sp)
    5c44:	87a80018 	lh	t0,24(sp)
    5c48:	10400002 	beqz	v0,5c54 <func_80B49C2C+0x78>
    5c4c:	87a9001a 	lh	t1,26(sp)
    5c50:	24080001 	li	t0,1
    5c54:	00e02025 	move	a0,a3
    5c58:	8fa50020 	lw	a1,32(sp)
    5c5c:	3c064100 	lui	a2,0x4100
    5c60:	afa70024 	sw	a3,36(sp)
    5c64:	a7a80018 	sh	t0,24(sp)
    5c68:	0c000000 	jal	0 <func_80B44050>
    5c6c:	a7a9001a 	sh	t1,26(sp)
    5c70:	8fa70024 	lw	a3,36(sp)
    5c74:	87a80018 	lh	t0,24(sp)
    5c78:	10400004 	beqz	v0,5c8c <func_80B49C2C+0xb0>
    5c7c:	87a9001a 	lh	t1,26(sp)
    5c80:	35080002 	ori	t0,t0,0x2
    5c84:	00084400 	sll	t0,t0,0x10
    5c88:	00084403 	sra	t0,t0,0x10
    5c8c:	3c0142b4 	lui	at,0x42b4
    5c90:	44813000 	mtc1	at,$f6
    5c94:	c4e40090 	lwc1	$f4,144(a3)
    5c98:	84f900b6 	lh	t9,182(a3)
    5c9c:	24010003 	li	at,3
    5ca0:	4606203c 	c.lt.s	$f4,$f6
    5ca4:	a4f90032 	sh	t9,50(a3)
    5ca8:	8fa50020 	lw	a1,32(sp)
    5cac:	00e02025 	move	a0,a3
    5cb0:	45010003 	bc1t	5cc0 <func_80B49C2C+0xe4>
    5cb4:	3c064307 	lui	a2,0x4307
    5cb8:	5501000a 	bnel	t0,at,5ce4 <func_80B49C2C+0x108>
    5cbc:	8faa001c 	lw	t2,28(sp)
    5cc0:	afa70024 	sw	a3,36(sp)
    5cc4:	a7a80018 	sh	t0,24(sp)
    5cc8:	0c000000 	jal	0 <func_80B44050>
    5ccc:	a7a9001a 	sh	t1,26(sp)
    5cd0:	8fa70024 	lw	a3,36(sp)
    5cd4:	87a80018 	lh	t0,24(sp)
    5cd8:	10400006 	beqz	v0,5cf4 <func_80B49C2C+0x118>
    5cdc:	87a9001a 	lh	t1,26(sp)
    5ce0:	8faa001c 	lw	t2,28(sp)
    5ce4:	24010066 	li	at,102
    5ce8:	854b0000 	lh	t3,0(t2)
    5cec:	55610006 	bnel	t3,at,5d08 <func_80B49C2C+0x12c>
    5cf0:	84ec00b6 	lh	t4,182(a3)
    5cf4:	0c000000 	jal	0 <func_80B44050>
    5cf8:	00e02025 	move	a0,a3
    5cfc:	1000003b 	b	5dec <func_80B49C2C+0x210>
    5d00:	24020001 	li	v0,1
    5d04:	84ec00b6 	lh	t4,182(a3)
    5d08:	00081c00 	sll	v1,t0,0x10
    5d0c:	00031c03 	sra	v1,v1,0x10
    5d10:	258d3fff 	addiu	t5,t4,16383
    5d14:	15000009 	bnez	t0,5d3c <func_80B49C2C+0x160>
    5d18:	a4ed0032 	sh	t5,50(a3)
    5d1c:	8fae0020 	lw	t6,32(sp)
    5d20:	3c030001 	lui	v1,0x1
    5d24:	006e1821 	addu	v1,v1,t6
    5d28:	8c631de4 	lw	v1,7652(v1)
    5d2c:	30630001 	andi	v1,v1,0x1
    5d30:	00031c00 	sll	v1,v1,0x10
    5d34:	10000001 	b	5d3c <func_80B49C2C+0x160>
    5d38:	00031c03 	sra	v1,v1,0x10
    5d3c:	05200003 	bltz	t1,5d4c <func_80B49C2C+0x170>
    5d40:	00091023 	negu	v0,t1
    5d44:	10000001 	b	5d4c <func_80B49C2C+0x170>
    5d48:	01201025 	move	v0,t1
    5d4c:	28412000 	slti	at,v0,8192
    5d50:	14200008 	bnez	at,5d74 <func_80B49C2C+0x198>
    5d54:	306f0001 	andi	t7,v1,0x1
    5d58:	05200003 	bltz	t1,5d68 <func_80B49C2C+0x18c>
    5d5c:	00091023 	negu	v0,t1
    5d60:	10000001 	b	5d68 <func_80B49C2C+0x18c>
    5d64:	01201025 	move	v0,t1
    5d68:	28416000 	slti	at,v0,24576
    5d6c:	1420000c 	bnez	at,5da0 <func_80B49C2C+0x1c4>
    5d70:	00000000 	nop
    5d74:	11e00006 	beqz	t7,5d90 <func_80B49C2C+0x1b4>
    5d78:	00e02025 	move	a0,a3
    5d7c:	00e02025 	move	a0,a3
    5d80:	0c000000 	jal	0 <func_80B44050>
    5d84:	3c054100 	lui	a1,0x4100
    5d88:	10000018 	b	5dec <func_80B49C2C+0x210>
    5d8c:	24020001 	li	v0,1
    5d90:	0c000000 	jal	0 <func_80B44050>
    5d94:	3c05c100 	lui	a1,0xc100
    5d98:	10000014 	b	5dec <func_80B49C2C+0x210>
    5d9c:	24020001 	li	v0,1
    5da0:	05200003 	bltz	t1,5db0 <func_80B49C2C+0x1d4>
    5da4:	00091023 	negu	v0,t1
    5da8:	10000001 	b	5db0 <func_80B49C2C+0x1d4>
    5dac:	01201025 	move	v0,t1
    5db0:	28415fff 	slti	at,v0,24575
    5db4:	1020000a 	beqz	at,5de0 <func_80B49C2C+0x204>
    5db8:	30780001 	andi	t8,v1,0x1
    5dbc:	13000006 	beqz	t8,5dd8 <func_80B49C2C+0x1fc>
    5dc0:	00e02025 	move	a0,a3
    5dc4:	00e02025 	move	a0,a3
    5dc8:	0c000000 	jal	0 <func_80B44050>
    5dcc:	3c054080 	lui	a1,0x4080
    5dd0:	10000006 	b	5dec <func_80B49C2C+0x210>
    5dd4:	24020001 	li	v0,1
    5dd8:	0c000000 	jal	0 <func_80B44050>
    5ddc:	3c05c080 	lui	a1,0xc080
    5de0:	10000002 	b	5dec <func_80B49C2C+0x210>
    5de4:	24020001 	li	v0,1
    5de8:	00001025 	move	v0,zero
    5dec:	8fbf0014 	lw	ra,20(sp)
    5df0:	27bd0020 	addiu	sp,sp,32
    5df4:	03e00008 	jr	ra
    5df8:	00000000 	nop

00005dfc <func_80B49E4C>:
    5dfc:	27bdffd8 	addiu	sp,sp,-40
    5e00:	afbf0014 	sw	ra,20(sp)
    5e04:	afa40028 	sw	a0,40(sp)
    5e08:	afa5002c 	sw	a1,44(sp)
    5e0c:	a7a0001c 	sh	zero,28(sp)
    5e10:	0c000000 	jal	0 <func_80B44050>
    5e14:	3c064416 	lui	a2,0x4416
    5e18:	8fa4002c 	lw	a0,44(sp)
    5e1c:	10400081 	beqz	v0,6024 <func_80B49E4C+0x228>
    5e20:	00402825 	move	a1,v0
    5e24:	0c000000 	jal	0 <func_80B44050>
    5e28:	00000000 	nop
    5e2c:	8fa4002c 	lw	a0,44(sp)
    5e30:	3c06c28c 	lui	a2,0xc28c
    5e34:	848f00b6 	lh	t7,182(a0)
    5e38:	004f3823 	subu	a3,v0,t7
    5e3c:	25f83fff 	addiu	t8,t7,16383
    5e40:	00073c00 	sll	a3,a3,0x10
    5e44:	a4980032 	sh	t8,50(a0)
    5e48:	00073c03 	sra	a3,a3,0x10
    5e4c:	a7a70022 	sh	a3,34(sp)
    5e50:	a7a00020 	sh	zero,32(sp)
    5e54:	0c000000 	jal	0 <func_80B44050>
    5e58:	8fa50028 	lw	a1,40(sp)
    5e5c:	8fa4002c 	lw	a0,44(sp)
    5e60:	87a70022 	lh	a3,34(sp)
    5e64:	10400002 	beqz	v0,5e70 <func_80B49E4C+0x74>
    5e68:	87a80020 	lh	t0,32(sp)
    5e6c:	24080001 	li	t0,1
    5e70:	8fa50028 	lw	a1,40(sp)
    5e74:	3c06428c 	lui	a2,0x428c
    5e78:	a7a70022 	sh	a3,34(sp)
    5e7c:	0c000000 	jal	0 <func_80B44050>
    5e80:	a7a80020 	sh	t0,32(sp)
    5e84:	8fa4002c 	lw	a0,44(sp)
    5e88:	87a70022 	lh	a3,34(sp)
    5e8c:	10400004 	beqz	v0,5ea0 <func_80B49E4C+0xa4>
    5e90:	87a80020 	lh	t0,32(sp)
    5e94:	35080002 	ori	t0,t0,0x2
    5e98:	00084400 	sll	t0,t0,0x10
    5e9c:	00084403 	sra	t0,t0,0x10
    5ea0:	44802000 	mtc1	zero,$f4
    5ea4:	00071023 	negu	v0,a3
    5ea8:	04e00003 	bltz	a3,5eb8 <func_80B49E4C+0xbc>
    5eac:	e4840068 	swc1	$f4,104(a0)
    5eb0:	10000001 	b	5eb8 <func_80B49E4C+0xbc>
    5eb4:	00e01025 	move	v0,a3
    5eb8:	28412000 	slti	at,v0,8192
    5ebc:	14200008 	bnez	at,5ee0 <func_80B49E4C+0xe4>
    5ec0:	00000000 	nop
    5ec4:	04e00003 	bltz	a3,5ed4 <func_80B49E4C+0xd8>
    5ec8:	00071023 	negu	v0,a3
    5ecc:	10000001 	b	5ed4 <func_80B49E4C+0xd8>
    5ed0:	00e01025 	move	v0,a3
    5ed4:	28416000 	slti	at,v0,24576
    5ed8:	14200021 	bnez	at,5f60 <func_80B49E4C+0x164>
    5edc:	00000000 	nop
    5ee0:	1500000d 	bnez	t0,5f18 <func_80B49E4C+0x11c>
    5ee4:	24010001 	li	at,1
    5ee8:	8fb90028 	lw	t9,40(sp)
    5eec:	3c090001 	lui	t1,0x1
    5ef0:	2403fffa 	li	v1,-6
    5ef4:	01394821 	addu	t1,t1,t9
    5ef8:	8d291de4 	lw	t1,7652(t1)
    5efc:	312a0001 	andi	t2,t1,0x1
    5f00:	11400003 	beqz	t2,5f10 <func_80B49E4C+0x114>
    5f04:	00000000 	nop
    5f08:	10000001 	b	5f10 <func_80B49E4C+0x114>
    5f0c:	24030006 	li	v1,6
    5f10:	10000011 	b	5f58 <func_80B49E4C+0x15c>
    5f14:	a7a3001e 	sh	v1,30(sp)
    5f18:	11010009 	beq	t0,at,5f40 <func_80B49E4C+0x144>
    5f1c:	24030006 	li	v1,6
    5f20:	24010002 	li	at,2
    5f24:	11010008 	beq	t0,at,5f48 <func_80B49E4C+0x14c>
    5f28:	2403fffa 	li	v1,-6
    5f2c:	24010003 	li	at,3
    5f30:	11010007 	beq	t0,at,5f50 <func_80B49E4C+0x154>
    5f34:	240b0005 	li	t3,5
    5f38:	10000007 	b	5f58 <func_80B49E4C+0x15c>
    5f3c:	00000000 	nop
    5f40:	10000005 	b	5f58 <func_80B49E4C+0x15c>
    5f44:	a7a3001e 	sh	v1,30(sp)
    5f48:	10000003 	b	5f58 <func_80B49E4C+0x15c>
    5f4c:	a7a3001e 	sh	v1,30(sp)
    5f50:	a7ab001c 	sh	t3,28(sp)
    5f54:	a7a0001e 	sh	zero,30(sp)
    5f58:	10000027 	b	5ff8 <func_80B49E4C+0x1fc>
    5f5c:	87a3001e 	lh	v1,30(sp)
    5f60:	04e00003 	bltz	a3,5f70 <func_80B49E4C+0x174>
    5f64:	00071023 	negu	v0,a3
    5f68:	10000001 	b	5f70 <func_80B49E4C+0x174>
    5f6c:	00e01025 	move	v0,a3
    5f70:	28415fff 	slti	at,v0,24575
    5f74:	50200020 	beqzl	at,5ff8 <func_80B49E4C+0x1fc>
    5f78:	87a3001e 	lh	v1,30(sp)
    5f7c:	1500000d 	bnez	t0,5fb4 <func_80B49E4C+0x1b8>
    5f80:	24010001 	li	at,1
    5f84:	8fac0028 	lw	t4,40(sp)
    5f88:	3c0d0001 	lui	t5,0x1
    5f8c:	2403fffa 	li	v1,-6
    5f90:	01ac6821 	addu	t5,t5,t4
    5f94:	8dad1de4 	lw	t5,7652(t5)
    5f98:	31ae0001 	andi	t6,t5,0x1
    5f9c:	11c00003 	beqz	t6,5fac <func_80B49E4C+0x1b0>
    5fa0:	00000000 	nop
    5fa4:	10000001 	b	5fac <func_80B49E4C+0x1b0>
    5fa8:	24030006 	li	v1,6
    5fac:	10000011 	b	5ff4 <func_80B49E4C+0x1f8>
    5fb0:	a7a3001e 	sh	v1,30(sp)
    5fb4:	11010009 	beq	t0,at,5fdc <func_80B49E4C+0x1e0>
    5fb8:	24030006 	li	v1,6
    5fbc:	24010002 	li	at,2
    5fc0:	11010008 	beq	t0,at,5fe4 <func_80B49E4C+0x1e8>
    5fc4:	2403fffa 	li	v1,-6
    5fc8:	24010003 	li	at,3
    5fcc:	11010007 	beq	t0,at,5fec <func_80B49E4C+0x1f0>
    5fd0:	240f000a 	li	t7,10
    5fd4:	10000008 	b	5ff8 <func_80B49E4C+0x1fc>
    5fd8:	87a3001e 	lh	v1,30(sp)
    5fdc:	10000005 	b	5ff4 <func_80B49E4C+0x1f8>
    5fe0:	a7a3001e 	sh	v1,30(sp)
    5fe4:	10000003 	b	5ff4 <func_80B49E4C+0x1f8>
    5fe8:	a7a3001e 	sh	v1,30(sp)
    5fec:	a7af001c 	sh	t7,28(sp)
    5ff0:	a7a0001e 	sh	zero,30(sp)
    5ff4:	87a3001e 	lh	v1,30(sp)
    5ff8:	24020001 	li	v0,1
    5ffc:	44833000 	mtc1	v1,$f6
    6000:	00000000 	nop
    6004:	46803220 	cvt.s.w	$f8,$f6
    6008:	e4880408 	swc1	$f8,1032(a0)
    600c:	87b8001c 	lh	t8,28(sp)
    6010:	44985000 	mtc1	t8,$f10
    6014:	00000000 	nop
    6018:	46805420 	cvt.s.w	$f16,$f10
    601c:	10000002 	b	6028 <func_80B49E4C+0x22c>
    6020:	e490040c 	swc1	$f16,1036(a0)
    6024:	00001025 	move	v0,zero
    6028:	8fbf0014 	lw	ra,20(sp)
    602c:	27bd0028 	addiu	sp,sp,40
    6030:	03e00008 	jr	ra
    6034:	00000000 	nop
	...
