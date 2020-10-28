
build/src/overlays/actors/ovl_En_Po_Relay/z_en_po_relay.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnPoRelay_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb10028 	sw	s1,40(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb00024 	sw	s0,36(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnPoRelay_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c060000 	lui	a2,0x0
      28:	24c60000 	addiu	a2,a2,0
      2c:	260400b4 	addiu	a0,s0,180
      30:	24050000 	li	a1,0
      34:	0c000000 	jal	0 <EnPoRelay_Init>
      38:	3c074228 	lui	a3,0x4228
      3c:	3c060601 	lui	a2,0x601
      40:	3c070600 	lui	a3,0x600
      44:	260e01a0 	addiu	t6,s0,416
      48:	260f020c 	addiu	t7,s0,524
      4c:	24180012 	li	t8,18
      50:	afb80018 	sw	t8,24(sp)
      54:	afaf0014 	sw	t7,20(sp)
      58:	afae0010 	sw	t6,16(sp)
      5c:	24e73768 	addiu	a3,a3,14184
      60:	24c6be40 	addiu	a2,a2,-16832
      64:	02202025 	move	a0,s1
      68:	0c000000 	jal	0 <EnPoRelay_Init>
      6c:	2605014c 	addiu	a1,s0,332
      70:	26050290 	addiu	a1,s0,656
      74:	afa50034 	sw	a1,52(sp)
      78:	0c000000 	jal	0 <EnPoRelay_Init>
      7c:	02202025 	move	a0,s1
      80:	3c070000 	lui	a3,0x0
      84:	8fa50034 	lw	a1,52(sp)
      88:	24e70000 	addiu	a3,a3,0
      8c:	02202025 	move	a0,s1
      90:	0c000000 	jal	0 <EnPoRelay_Init>
      94:	02003025 	move	a2,s0
      98:	26060280 	addiu	a2,s0,640
      9c:	afa60034 	sw	a2,52(sp)
      a0:	02202025 	move	a0,s1
      a4:	0c000000 	jal	0 <EnPoRelay_Init>
      a8:	262507a8 	addiu	a1,s1,1960
      ac:	c6040008 	lwc1	$f4,8(s0)
      b0:	c608000c 	lwc1	$f8,12(s0)
      b4:	c6100010 	lwc1	$f16,16(s0)
      b8:	4600218d 	trunc.w.s	$f6,$f4
      bc:	ae02027c 	sw	v0,636(s0)
      c0:	240a00ff 	li	t2,255
      c4:	4600428d 	trunc.w.s	$f10,$f8
      c8:	44053000 	mfc1	a1,$f6
      cc:	240b00ff 	li	t3,255
      d0:	4600848d 	trunc.w.s	$f18,$f16
      d4:	44065000 	mfc1	a2,$f10
      d8:	240c00ff 	li	t4,255
      dc:	240d00c8 	li	t5,200
      e0:	44079000 	mfc1	a3,$f18
      e4:	00052c00 	sll	a1,a1,0x10
      e8:	00063400 	sll	a2,a2,0x10
      ec:	00073c00 	sll	a3,a3,0x10
      f0:	00073c03 	sra	a3,a3,0x10
      f4:	00063403 	sra	a2,a2,0x10
      f8:	00052c03 	sra	a1,a1,0x10
      fc:	afad001c 	sw	t5,28(sp)
     100:	afac0018 	sw	t4,24(sp)
     104:	afab0014 	sw	t3,20(sp)
     108:	afaa0010 	sw	t2,16(sp)
     10c:	0c000000 	jal	0 <EnPoRelay_Init>
     110:	8fa40034 	lw	a0,52(sp)
     114:	240e00ff 	li	t6,255
     118:	a20e027b 	sb	t6,635(s0)
     11c:	3c0f0000 	lui	t7,0x0
     120:	8def0000 	lw	t7,0(t7)
     124:	24180001 	li	t8,1
     128:	3c010000 	lui	at,0x0
     12c:	11e00005 	beqz	t7,144 <EnPoRelay_Init+0x144>
     130:	02202025 	move	a0,s1
     134:	0c000000 	jal	0 <EnPoRelay_Init>
     138:	02002025 	move	a0,s0
     13c:	1000000a 	b	168 <EnPoRelay_Init+0x168>
     140:	8608001c 	lh	t0,28(s0)
     144:	ac380000 	sw	t8,0(at)
     148:	02002825 	move	a1,s0
     14c:	0c000000 	jal	0 <EnPoRelay_Init>
     150:	24060041 	li	a2,65
     154:	9619010e 	lhu	t9,270(s0)
     158:	02002025 	move	a0,s0
     15c:	0c000000 	jal	0 <EnPoRelay_Init>
     160:	a619019c 	sh	t9,412(s0)
     164:	8608001c 	lh	t0,28(s0)
     168:	3109003f 	andi	t1,t0,0x3f
     16c:	a609001c 	sh	t1,28(s0)
     170:	8fbf002c 	lw	ra,44(sp)
     174:	8fb10028 	lw	s1,40(sp)
     178:	8fb00024 	lw	s0,36(sp)
     17c:	03e00008 	jr	ra
     180:	27bd0040 	addiu	sp,sp,64

00000184 <EnPoRelay_Destroy>:
     184:	27bdffe8 	addiu	sp,sp,-24
     188:	afa40018 	sw	a0,24(sp)
     18c:	8fae0018 	lw	t6,24(sp)
     190:	afbf0014 	sw	ra,20(sp)
     194:	00a03825 	move	a3,a1
     198:	00a02025 	move	a0,a1
     19c:	8dc6027c 	lw	a2,636(t6)
     1a0:	afa7001c 	sw	a3,28(sp)
     1a4:	0c000000 	jal	0 <EnPoRelay_Init>
     1a8:	24a507a8 	addiu	a1,a1,1960
     1ac:	8fa50018 	lw	a1,24(sp)
     1b0:	8fa4001c 	lw	a0,28(sp)
     1b4:	0c000000 	jal	0 <EnPoRelay_Init>
     1b8:	24a50290 	addiu	a1,a1,656
     1bc:	8fbf0014 	lw	ra,20(sp)
     1c0:	27bd0018 	addiu	sp,sp,24
     1c4:	03e00008 	jr	ra
     1c8:	00000000 	nop

000001cc <func_80AD790C>:
     1cc:	3c080000 	lui	t0,0x0
     1d0:	240e0020 	li	t6,32
     1d4:	240fffff 	li	t7,-1
     1d8:	24188000 	li	t8,-32768
     1dc:	241900fe 	li	t9,254
     1e0:	25080000 	addiu	t0,t0,0
     1e4:	a08e0195 	sb	t6,405(a0)
     1e8:	a4800198 	sh	zero,408(a0)
     1ec:	a08f0003 	sb	t7,3(a0)
     1f0:	a48000b6 	sh	zero,182(a0)
     1f4:	a4980032 	sh	t8,50(a0)
     1f8:	a09900ae 	sb	t9,174(a0)
     1fc:	03e00008 	jr	ra
     200:	ac880190 	sw	t0,400(a0)

00000204 <func_80AD7944>:
     204:	84ae0000 	lh	t6,0(a1)
     208:	448e2000 	mtc1	t6,$f4
     20c:	00000000 	nop
     210:	468021a0 	cvt.s.w	$f6,$f4
     214:	e4860000 	swc1	$f6,0(a0)
     218:	84af0002 	lh	t7,2(a1)
     21c:	448f4000 	mtc1	t7,$f8
     220:	00000000 	nop
     224:	468042a0 	cvt.s.w	$f10,$f8
     228:	e48a0004 	swc1	$f10,4(a0)
     22c:	84b80004 	lh	t8,4(a1)
     230:	44988000 	mtc1	t8,$f16
     234:	00000000 	nop
     238:	468084a0 	cvt.s.w	$f18,$f16
     23c:	03e00008 	jr	ra
     240:	e4920008 	swc1	$f18,8(a0)

00000244 <func_80AD7984>:
     244:	27bdffd0 	addiu	sp,sp,-48
     248:	afb00018 	sw	s0,24(sp)
     24c:	00808025 	move	s0,a0
     250:	afbf001c 	sw	ra,28(sp)
     254:	860e0198 	lh	t6,408(s0)
     258:	3c180000 	lui	t8,0x0
     25c:	27180000 	addiu	t8,t8,0
     260:	000e7880 	sll	t7,t6,0x2
     264:	01ee7823 	subu	t7,t7,t6
     268:	000f7840 	sll	t7,t7,0x1
     26c:	01f82821 	addu	a1,t7,t8
     270:	0c000000 	jal	0 <EnPoRelay_Init>
     274:	27a40024 	addiu	a0,sp,36
     278:	861900b6 	lh	t9,182(s0)
     27c:	86080032 	lh	t0,50(s0)
     280:	24018000 	li	at,-32768
     284:	00002025 	move	a0,zero
     288:	03284823 	subu	t1,t9,t0
     28c:	01216021 	addu	t4,t1,at
     290:	000c6ac3 	sra	t5,t4,0xb
     294:	31ae001f 	andi	t6,t5,0x1f
     298:	0c000000 	jal	0 <EnPoRelay_Init>
     29c:	a60e0196 	sh	t6,406(s0)
     2a0:	3c0f0000 	lui	t7,0x0
     2a4:	91ef000a 	lbu	t7,10(t7)
     2a8:	3c180000 	lui	t8,0x0
     2ac:	02002025 	move	a0,s0
     2b0:	030fc021 	addu	t8,t8,t7
     2b4:	93180074 	lbu	t8,116(t8)
     2b8:	27a50024 	addiu	a1,sp,36
     2bc:	3b1900ff 	xori	t9,t8,0xff
     2c0:	0019c82b 	sltu	t9,zero,t9
     2c4:	0c000000 	jal	0 <EnPoRelay_Init>
     2c8:	a2190194 	sb	t9,404(s0)
     2cc:	8e080004 	lw	t0,4(s0)
     2d0:	3c010800 	lui	at,0x800
     2d4:	a602019a 	sh	v0,410(s0)
     2d8:	01014825 	or	t1,t0,at
     2dc:	ae090004 	sw	t1,4(s0)
     2e0:	02002025 	move	a0,s0
     2e4:	0c000000 	jal	0 <EnPoRelay_Init>
     2e8:	240538ec 	li	a1,14572
     2ec:	3c0a0000 	lui	t2,0x0
     2f0:	254a0000 	addiu	t2,t2,0
     2f4:	ae0a0190 	sw	t2,400(s0)
     2f8:	8fbf001c 	lw	ra,28(sp)
     2fc:	8fb00018 	lw	s0,24(sp)
     300:	27bd0030 	addiu	sp,sp,48
     304:	03e00008 	jr	ra
     308:	00000000 	nop

0000030c <func_80AD7A4C>:
     30c:	848e0016 	lh	t6,22(a0)
     310:	3401c000 	li	at,0xc000
     314:	8c980004 	lw	t8,4(a0)
     318:	01c17821 	addu	t7,t6,at
     31c:	3c01f7ff 	lui	at,0xf7ff
     320:	44802000 	mtc1	zero,$f4
     324:	3421ffff 	ori	at,at,0xffff
     328:	3c080000 	lui	t0,0x0
     32c:	25080000 	addiu	t0,t0,0
     330:	0301c824 	and	t9,t8,at
     334:	a48f0032 	sh	t7,50(a0)
     338:	ac990004 	sw	t9,4(a0)
     33c:	ac880190 	sw	t0,400(a0)
     340:	03e00008 	jr	ra
     344:	e4840068 	swc1	$f4,104(a0)

00000348 <func_80AD7A88>:
     348:	27bdffe8 	addiu	sp,sp,-24
     34c:	afbf0014 	sw	ra,20(sp)
     350:	84820198 	lh	v0,408(a0)
     354:	00803825 	move	a3,a0
     358:	3c0f0000 	lui	t7,0x0
     35c:	2841001c 	slti	at,v0,28
     360:	14200003 	bnez	at,370 <func_80AD7A88+0x28>
     364:	00401825 	move	v1,v0
     368:	10000001 	b	370 <func_80AD7A88+0x28>
     36c:	2403001b 	li	v1,27
     370:	00037080 	sll	t6,v1,0x2
     374:	01c37023 	subu	t6,t6,v1
     378:	000e7040 	sll	t6,t6,0x1
     37c:	01ee7821 	addu	t7,t7,t6
     380:	85ef0000 	lh	t7,0(t7)
     384:	3c014234 	lui	at,0x4234
     388:	44814000 	mtc1	at,$f8
     38c:	448f2000 	mtc1	t7,$f4
     390:	24e4000c 	addiu	a0,a3,12
     394:	3c064000 	lui	a2,0x4000
     398:	468021a0 	cvt.s.w	$f6,$f4
     39c:	afa70018 	sw	a3,24(sp)
     3a0:	46083280 	add.s	$f10,$f6,$f8
     3a4:	44055000 	mfc1	a1,$f10
     3a8:	0c000000 	jal	0 <EnPoRelay_Init>
     3ac:	00000000 	nop
     3b0:	8fa70018 	lw	a3,24(sp)
     3b4:	90e40195 	lbu	a0,405(a3)
     3b8:	000422c0 	sll	a0,a0,0xb
     3bc:	00042400 	sll	a0,a0,0x10
     3c0:	0c000000 	jal	0 <EnPoRelay_Init>
     3c4:	00042403 	sra	a0,a0,0x10
     3c8:	3c014100 	lui	at,0x4100
     3cc:	44818000 	mtc1	at,$f16
     3d0:	8fa70018 	lw	a3,24(sp)
     3d4:	46100482 	mul.s	$f18,$f0,$f16
     3d8:	c4e4000c 	lwc1	$f4,12(a3)
     3dc:	46049180 	add.s	$f6,$f18,$f4
     3e0:	e4e60028 	swc1	$f6,40(a3)
     3e4:	8fbf0014 	lw	ra,20(sp)
     3e8:	27bd0018 	addiu	sp,sp,24
     3ec:	03e00008 	jr	ra
     3f0:	00000000 	nop

000003f4 <func_80AD7B34>:
     3f4:	27bdffe0 	addiu	sp,sp,-32
     3f8:	afb00018 	sw	s0,24(sp)
     3fc:	00808025 	move	s0,a0
     400:	afbf001c 	sw	ra,28(sp)
     404:	afa50024 	sw	a1,36(sp)
     408:	8605008a 	lh	a1,138(s0)
     40c:	248400b6 	addiu	a0,a0,182
     410:	0c000000 	jal	0 <EnPoRelay_Init>
     414:	24060100 	li	a2,256
     418:	02002025 	move	a0,s0
     41c:	0c000000 	jal	0 <EnPoRelay_Init>
     420:	8fa50024 	lw	a1,36(sp)
     424:	1040000a 	beqz	v0,450 <func_80AD7B34+0x5c>
     428:	3c01437a 	lui	at,0x437a
     42c:	8e0e0004 	lw	t6,4(s0)
     430:	3c01fffe 	lui	at,0xfffe
     434:	3421ffff 	ori	at,at,0xffff
     438:	3c180000 	lui	t8,0x0
     43c:	27180000 	addiu	t8,t8,0
     440:	01c17824 	and	t7,t6,at
     444:	ae0f0004 	sw	t7,4(s0)
     448:	10000011 	b	490 <func_80AD7B34+0x9c>
     44c:	ae180190 	sw	t8,400(s0)
     450:	44810000 	mtc1	at,$f0
     454:	c6040090 	lwc1	$f4,144(s0)
     458:	3c010001 	lui	at,0x1
     45c:	02002025 	move	a0,s0
     460:	4600203c 	c.lt.s	$f4,$f0
     464:	00000000 	nop
     468:	4502000a 	bc1fl	494 <func_80AD7B34+0xa0>
     46c:	02002025 	move	a0,s0
     470:	8e190004 	lw	t9,4(s0)
     474:	9609019c 	lhu	t1,412(s0)
     478:	44060000 	mfc1	a2,$f0
     47c:	03214025 	or	t0,t9,at
     480:	ae080004 	sw	t0,4(s0)
     484:	a609010e 	sh	t1,270(s0)
     488:	0c000000 	jal	0 <EnPoRelay_Init>
     48c:	8fa50024 	lw	a1,36(sp)
     490:	02002025 	move	a0,s0
     494:	0c000000 	jal	0 <EnPoRelay_Init>
     498:	24053071 	li	a1,12401
     49c:	8fbf001c 	lw	ra,28(sp)
     4a0:	8fb00018 	lw	s0,24(sp)
     4a4:	27bd0020 	addiu	sp,sp,32
     4a8:	03e00008 	jr	ra
     4ac:	00000000 	nop

000004b0 <func_80AD7BF0>:
     4b0:	27bdffe0 	addiu	sp,sp,-32
     4b4:	afb00018 	sw	s0,24(sp)
     4b8:	00808025 	move	s0,a0
     4bc:	afbf001c 	sw	ra,28(sp)
     4c0:	afa50024 	sw	a1,36(sp)
     4c4:	8605008a 	lh	a1,138(s0)
     4c8:	248400b6 	addiu	a0,a0,182
     4cc:	0c000000 	jal	0 <EnPoRelay_Init>
     4d0:	24060100 	li	a2,256
     4d4:	02002025 	move	a0,s0
     4d8:	0c000000 	jal	0 <EnPoRelay_Init>
     4dc:	8fa50024 	lw	a1,36(sp)
     4e0:	10400008 	beqz	v0,504 <func_80AD7BF0+0x54>
     4e4:	8fa40024 	lw	a0,36(sp)
     4e8:	02002825 	move	a1,s0
     4ec:	0c000000 	jal	0 <EnPoRelay_Init>
     4f0:	2406002f 	li	a2,47
     4f4:	960e010e 	lhu	t6,270(s0)
     4f8:	02002025 	move	a0,s0
     4fc:	0c000000 	jal	0 <EnPoRelay_Init>
     500:	a60e019c 	sh	t6,412(s0)
     504:	02002025 	move	a0,s0
     508:	0c000000 	jal	0 <EnPoRelay_Init>
     50c:	24053071 	li	a1,12401
     510:	8fbf001c 	lw	ra,28(sp)
     514:	8fb00018 	lw	s0,24(sp)
     518:	27bd0020 	addiu	sp,sp,32
     51c:	03e00008 	jr	ra
     520:	00000000 	nop

00000524 <func_80AD7C64>:
     524:	27bdffa0 	addiu	sp,sp,-96
     528:	afbf0034 	sw	ra,52(sp)
     52c:	afb00030 	sw	s0,48(sp)
     530:	afa50064 	sw	a1,100(sp)
     534:	84820196 	lh	v0,406(a0)
     538:	00808025 	move	s0,a0
     53c:	8ca31c44 	lw	v1,7236(a1)
     540:	10400003 	beqz	v0,550 <func_80AD7C64+0x2c>
     544:	244fffff 	addiu	t7,v0,-1
     548:	a48f0196 	sh	t7,406(a0)
     54c:	84820196 	lh	v0,406(a0)
     550:	54400056 	bnezl	v0,6ac <func_80AD7C64+0x188>
     554:	8605019a 	lh	a1,410(s0)
     558:	0c000000 	jal	0 <EnPoRelay_Init>
     55c:	afa3005c 	sw	v1,92(sp)
     560:	3c010000 	lui	at,0x0
     564:	c4240000 	lwc1	$f4,0(at)
     568:	8fa3005c 	lw	v1,92(sp)
     56c:	4604003c 	c.lt.s	$f0,$f4
     570:	00000000 	nop
     574:	4502004d 	bc1fl	6ac <func_80AD7C64+0x188>
     578:	8605019a 	lh	a1,410(s0)
     57c:	86190198 	lh	t9,408(s0)
     580:	24180020 	li	t8,32
     584:	a6180196 	sh	t8,406(s0)
     588:	2b210017 	slti	at,t9,23
     58c:	50200047 	beqzl	at,6ac <func_80AD7C64+0x188>
     590:	8605019a 	lh	a1,410(s0)
     594:	0c000000 	jal	0 <EnPoRelay_Init>
     598:	afa3005c 	sw	v1,92(sp)
     59c:	3c013f80 	lui	at,0x3f80
     5a0:	44817000 	mtc1	at,$f14
     5a4:	3c014040 	lui	at,0x4040
     5a8:	44813000 	mtc1	at,$f6
     5ac:	8fa3005c 	lw	v1,92(sp)
     5b0:	3c014000 	lui	at,0x4000
     5b4:	46060082 	mul.s	$f2,$f0,$f6
     5b8:	460e103c 	c.lt.s	$f2,$f14
     5bc:	00000000 	nop
     5c0:	45020004 	bc1fl	5d4 <func_80AD7C64+0xb0>
     5c4:	44814000 	mtc1	at,$f8
     5c8:	1000000c 	b	5fc <func_80AD7C64+0xd8>
     5cc:	46007306 	mov.s	$f12,$f14
     5d0:	44814000 	mtc1	at,$f8
     5d4:	3c01bf80 	lui	at,0xbf80
     5d8:	4608103c 	c.lt.s	$f2,$f8
     5dc:	00000000 	nop
     5e0:	45020005 	bc1fl	5f8 <func_80AD7C64+0xd4>
     5e4:	44806000 	mtc1	zero,$f12
     5e8:	44816000 	mtc1	at,$f12
     5ec:	10000004 	b	600 <func_80AD7C64+0xdc>
     5f0:	8604019a 	lh	a0,410(s0)
     5f4:	44806000 	mtc1	zero,$f12
     5f8:	00000000 	nop
     5fc:	8604019a 	lh	a0,410(s0)
     600:	e7ac0048 	swc1	$f12,72(sp)
     604:	0c000000 	jal	0 <EnPoRelay_Init>
     608:	afa3005c 	sw	v1,92(sp)
     60c:	e7a00040 	swc1	$f0,64(sp)
     610:	0c000000 	jal	0 <EnPoRelay_Init>
     614:	8604019a 	lh	a0,410(s0)
     618:	3c0141f0 	lui	at,0x41f0
     61c:	44815000 	mtc1	at,$f10
     620:	c7ac0048 	lwc1	$f12,72(sp)
     624:	c7b00040 	lwc1	$f16,64(sp)
     628:	c6080028 	lwc1	$f8,40(s0)
     62c:	460c5082 	mul.s	$f2,$f10,$f12
     630:	c6040024 	lwc1	$f4,36(s0)
     634:	e7a80010 	swc1	$f8,16(sp)
     638:	34018000 	li	at,0x8000
     63c:	8fa50064 	lw	a1,100(sp)
     640:	240c0002 	li	t4,2
     644:	2406011c 	li	a2,284
     648:	46028482 	mul.s	$f18,$f16,$f2
     64c:	c610002c 	lwc1	$f16,44(s0)
     650:	afa00018 	sw	zero,24(sp)
     654:	46020282 	mul.s	$f10,$f0,$f2
     658:	24a41c24 	addiu	a0,a1,7204
     65c:	46049180 	add.s	$f6,$f18,$f4
     660:	46105480 	add.s	$f18,$f10,$f16
     664:	44073000 	mfc1	a3,$f6
     668:	e7b20014 	swc1	$f18,20(sp)
     66c:	8608019a 	lh	t0,410(s0)
     670:	afac0024 	sw	t4,36(sp)
     674:	afa00020 	sw	zero,32(sp)
     678:	01014821 	addu	t1,t0,at
     67c:	3c014600 	lui	at,0x4600
     680:	44814000 	mtc1	at,$f8
     684:	44892000 	mtc1	t1,$f4
     688:	460c4282 	mul.s	$f10,$f8,$f12
     68c:	468021a0 	cvt.s.w	$f6,$f4
     690:	460a3401 	sub.s	$f16,$f6,$f10
     694:	4600848d 	trunc.w.s	$f18,$f16
     698:	440b9000 	mfc1	t3,$f18
     69c:	0c000000 	jal	0 <EnPoRelay_Init>
     6a0:	afab001c 	sw	t3,28(sp)
     6a4:	8fa3005c 	lw	v1,92(sp)
     6a8:	8605019a 	lh	a1,410(s0)
     6ac:	240d0100 	li	t5,256
     6b0:	afad0010 	sw	t5,16(sp)
     6b4:	afa3005c 	sw	v1,92(sp)
     6b8:	26040032 	addiu	a0,s0,50
     6bc:	24060002 	li	a2,2
     6c0:	0c000000 	jal	0 <EnPoRelay_Init>
     6c4:	24071000 	li	a3,4096
     6c8:	860f0196 	lh	t7,406(s0)
     6cc:	860e0032 	lh	t6,50(s0)
     6d0:	86090198 	lh	t1,408(s0)
     6d4:	000fc2c0 	sll	t8,t7,0xb
     6d8:	34018000 	li	at,0x8000
     6dc:	01d8c821 	addu	t9,t6,t8
     6e0:	03214021 	addu	t0,t9,at
     6e4:	8fa3005c 	lw	v1,92(sp)
     6e8:	29210017 	slti	at,t1,23
     6ec:	10200086 	beqz	at,908 <func_80AD7C64+0x3e4>
     6f0:	a60800b6 	sh	t0,182(s0)
     6f4:	c4640024 	lwc1	$f4,36(v1)
     6f8:	3c014425 	lui	at,0x4425
     6fc:	44816000 	mtc1	at,$f12
     700:	e7a40010 	swc1	$f4,16(sp)
     704:	c468002c 	lwc1	$f8,44(v1)
     708:	3c014452 	lui	at,0x4452
     70c:	44817000 	mtc1	at,$f14
     710:	afa3005c 	sw	v1,92(sp)
     714:	3c06c58c 	lui	a2,0xc58c
     718:	3c07c56b 	lui	a3,0xc56b
     71c:	0c000000 	jal	0 <EnPoRelay_Init>
     720:	e7a80014 	swc1	$f8,20(sp)
     724:	14400021 	bnez	v0,7ac <func_80AD7C64+0x288>
     728:	8fa3005c 	lw	v1,92(sp)
     72c:	c4660024 	lwc1	$f6,36(v1)
     730:	3c0144c3 	lui	at,0x44c3
     734:	44816000 	mtc1	at,$f12
     738:	e7a60010 	swc1	$f6,16(sp)
     73c:	c46a002c 	lwc1	$f10,44(v1)
     740:	3c010000 	lui	at,0x0
     744:	3c06c57b 	lui	a2,0xc57b
     748:	3c07c565 	lui	a3,0xc565
     74c:	34e76000 	ori	a3,a3,0x6000
     750:	34c6e000 	ori	a2,a2,0xe000
     754:	c42e0000 	lwc1	$f14,0(at)
     758:	afa3005c 	sw	v1,92(sp)
     75c:	0c000000 	jal	0 <EnPoRelay_Init>
     760:	e7aa0014 	swc1	$f10,20(sp)
     764:	14400011 	bnez	v0,7ac <func_80AD7C64+0x288>
     768:	8fa3005c 	lw	v1,92(sp)
     76c:	c4700024 	lwc1	$f16,36(v1)
     770:	3c010000 	lui	at,0x0
     774:	c42c0000 	lwc1	$f12,0(at)
     778:	e7b00010 	swc1	$f16,16(sp)
     77c:	c472002c 	lwc1	$f18,44(v1)
     780:	3c010000 	lui	at,0x0
     784:	3c06c53d 	lui	a2,0xc53d
     788:	3c07c51c 	lui	a3,0xc51c
     78c:	34e74000 	ori	a3,a3,0x4000
     790:	34c66000 	ori	a2,a2,0x6000
     794:	c42e0000 	lwc1	$f14,0(at)
     798:	afa3005c 	sw	v1,92(sp)
     79c:	0c000000 	jal	0 <EnPoRelay_Init>
     7a0:	e7b20014 	swc1	$f18,20(sp)
     7a4:	10400011 	beqz	v0,7ec <func_80AD7C64+0x2c8>
     7a8:	8fa3005c 	lw	v1,92(sp)
     7ac:	920a0194 	lbu	t2,404(s0)
     7b0:	3c010000 	lui	at,0x0
     7b4:	51400008 	beqzl	t2,7d8 <func_80AD7C64+0x2b4>
     7b8:	c4660068 	lwc1	$f6,104(v1)
     7bc:	3c010000 	lui	at,0x0
     7c0:	c4280000 	lwc1	$f8,0(at)
     7c4:	c4640068 	lwc1	$f4,104(v1)
     7c8:	46082002 	mul.s	$f0,$f4,$f8
     7cc:	10000005 	b	7e4 <func_80AD7C64+0x2c0>
     7d0:	00000000 	nop
     7d4:	c4660068 	lwc1	$f6,104(v1)
     7d8:	c42a0000 	lwc1	$f10,0(at)
     7dc:	460a3002 	mul.s	$f0,$f6,$f10
     7e0:	00000000 	nop
     7e4:	1000002f 	b	8a4 <func_80AD7C64+0x380>
     7e8:	c6020090 	lwc1	$f2,144(s0)
     7ec:	3c014316 	lui	at,0x4316
     7f0:	44818000 	mtc1	at,$f16
     7f4:	c6020090 	lwc1	$f2,144(s0)
     7f8:	3c014396 	lui	at,0x4396
     7fc:	4610103c 	c.lt.s	$f2,$f16
     800:	00000000 	nop
     804:	4502000d 	bc1fl	83c <func_80AD7C64+0x318>
     808:	44814000 	mtc1	at,$f8
     80c:	920b0194 	lbu	t3,404(s0)
     810:	3c010000 	lui	at,0x0
     814:	11600006 	beqz	t3,830 <func_80AD7C64+0x30c>
     818:	00000000 	nop
     81c:	c4720068 	lwc1	$f18,104(v1)
     820:	c4240000 	lwc1	$f4,0(at)
     824:	46049002 	mul.s	$f0,$f18,$f4
     828:	1000001f 	b	8a8 <func_80AD7C64+0x384>
     82c:	3c01437a 	lui	at,0x437a
     830:	1000001c 	b	8a4 <func_80AD7C64+0x380>
     834:	c4600068 	lwc1	$f0,104(v1)
     838:	44814000 	mtc1	at,$f8
     83c:	00000000 	nop
     840:	4608103c 	c.lt.s	$f2,$f8
     844:	00000000 	nop
     848:	4502000d 	bc1fl	880 <func_80AD7C64+0x35c>
     84c:	920d0194 	lbu	t5,404(s0)
     850:	920c0194 	lbu	t4,404(s0)
     854:	3c010000 	lui	at,0x0
     858:	51800004 	beqzl	t4,86c <func_80AD7C64+0x348>
     85c:	c4660068 	lwc1	$f6,104(v1)
     860:	10000010 	b	8a4 <func_80AD7C64+0x380>
     864:	c4600068 	lwc1	$f0,104(v1)
     868:	c4660068 	lwc1	$f6,104(v1)
     86c:	c42a0000 	lwc1	$f10,0(at)
     870:	460a3002 	mul.s	$f0,$f6,$f10
     874:	1000000c 	b	8a8 <func_80AD7C64+0x384>
     878:	3c01437a 	lui	at,0x437a
     87c:	920d0194 	lbu	t5,404(s0)
     880:	3c014060 	lui	at,0x4060
     884:	51a00006 	beqzl	t5,8a0 <func_80AD7C64+0x37c>
     888:	44810000 	mtc1	at,$f0
     88c:	3c014090 	lui	at,0x4090
     890:	44810000 	mtc1	at,$f0
     894:	10000004 	b	8a8 <func_80AD7C64+0x384>
     898:	3c01437a 	lui	at,0x437a
     89c:	44810000 	mtc1	at,$f0
     8a0:	00000000 	nop
     8a4:	3c01437a 	lui	at,0x437a
     8a8:	44818000 	mtc1	at,$f16
     8ac:	44809000 	mtc1	zero,$f18
     8b0:	3c010000 	lui	at,0x0
     8b4:	46028301 	sub.s	$f12,$f16,$f2
     8b8:	4612603c 	c.lt.s	$f12,$f18
     8bc:	00000000 	nop
     8c0:	45000003 	bc1f	8d0 <func_80AD7C64+0x3ac>
     8c4:	00000000 	nop
     8c8:	44806000 	mtc1	zero,$f12
     8cc:	00000000 	nop
     8d0:	c4240000 	lwc1	$f4,0(at)
     8d4:	3c013f80 	lui	at,0x3f80
     8d8:	44813000 	mtc1	at,$f6
     8dc:	46046202 	mul.s	$f8,$f12,$f4
     8e0:	26040068 	addiu	a0,s0,104
     8e4:	3c063f00 	lui	a2,0x3f00
     8e8:	3c073fc0 	lui	a3,0x3fc0
     8ec:	46064280 	add.s	$f10,$f8,$f6
     8f0:	460a0000 	add.s	$f0,$f0,$f10
     8f4:	44050000 	mfc1	a1,$f0
     8f8:	0c000000 	jal	0 <EnPoRelay_Init>
     8fc:	00000000 	nop
     900:	10000007 	b	920 <func_80AD7C64+0x3fc>
     904:	860f0198 	lh	t7,408(s0)
     908:	26040068 	addiu	a0,s0,104
     90c:	3c054060 	lui	a1,0x4060
     910:	3c063f00 	lui	a2,0x3f00
     914:	0c000000 	jal	0 <EnPoRelay_Init>
     918:	3c073fc0 	lui	a3,0x3fc0
     91c:	860f0198 	lh	t7,408(s0)
     920:	3c180000 	lui	t8,0x0
     924:	27180000 	addiu	t8,t8,0
     928:	000f7080 	sll	t6,t7,0x2
     92c:	01cf7023 	subu	t6,t6,t7
     930:	000e7040 	sll	t6,t6,0x1
     934:	01d82821 	addu	a1,t6,t8
     938:	0c000000 	jal	0 <EnPoRelay_Init>
     93c:	27a40050 	addiu	a0,sp,80
     940:	02002025 	move	a0,s0
     944:	0c000000 	jal	0 <EnPoRelay_Init>
     948:	27a50050 	addiu	a1,sp,80
     94c:	3c014220 	lui	at,0x4220
     950:	44818000 	mtc1	at,$f16
     954:	00000000 	nop
     958:	4610003c 	c.lt.s	$f0,$f16
     95c:	00000000 	nop
     960:	45020029 	bc1fl	a08 <func_80AD7C64+0x4e4>
     964:	02002025 	move	a0,s0
     968:	86190198 	lh	t9,408(s0)
     96c:	3c0b0000 	lui	t3,0x0
     970:	256b0000 	addiu	t3,t3,0
     974:	27280001 	addiu	t0,t9,1
     978:	a6080198 	sh	t0,408(s0)
     97c:	86090198 	lh	t1,408(s0)
     980:	27a40050 	addiu	a0,sp,80
     984:	00095080 	sll	t2,t1,0x2
     988:	01495023 	subu	t2,t2,t1
     98c:	000a5040 	sll	t2,t2,0x1
     990:	0c000000 	jal	0 <EnPoRelay_Init>
     994:	014b2821 	addu	a1,t2,t3
     998:	86020198 	lh	v0,408(s0)
     99c:	2401001c 	li	at,28
     9a0:	54410006 	bnel	v0,at,9bc <func_80AD7C64+0x498>
     9a4:	24010009 	li	at,9
     9a8:	0c000000 	jal	0 <EnPoRelay_Init>
     9ac:	02002025 	move	a0,s0
     9b0:	10000015 	b	a08 <func_80AD7C64+0x4e4>
     9b4:	02002025 	move	a0,s0
     9b8:	24010009 	li	at,9
     9bc:	14410005 	bne	v0,at,9d4 <func_80AD7C64+0x4b0>
     9c0:	8fa40064 	lw	a0,100(sp)
     9c4:	0c000000 	jal	0 <EnPoRelay_Init>
     9c8:	24050035 	li	a1,53
     9cc:	1000000e 	b	a08 <func_80AD7C64+0x4e4>
     9d0:	02002025 	move	a0,s0
     9d4:	24010011 	li	at,17
     9d8:	14410005 	bne	v0,at,9f0 <func_80AD7C64+0x4cc>
     9dc:	8fa40064 	lw	a0,100(sp)
     9e0:	0c000000 	jal	0 <EnPoRelay_Init>
     9e4:	24050036 	li	a1,54
     9e8:	10000007 	b	a08 <func_80AD7C64+0x4e4>
     9ec:	02002025 	move	a0,s0
     9f0:	24010019 	li	at,25
     9f4:	14410003 	bne	v0,at,a04 <func_80AD7C64+0x4e0>
     9f8:	8fa40064 	lw	a0,100(sp)
     9fc:	0c000000 	jal	0 <EnPoRelay_Init>
     a00:	24050037 	li	a1,55
     a04:	02002025 	move	a0,s0
     a08:	0c000000 	jal	0 <EnPoRelay_Init>
     a0c:	27a50050 	addiu	a1,sp,80
     a10:	a602019a 	sh	v0,410(s0)
     a14:	02002025 	move	a0,s0
     a18:	0c000000 	jal	0 <EnPoRelay_Init>
     a1c:	24053072 	li	a1,12402
     a20:	8fbf0034 	lw	ra,52(sp)
     a24:	8fb00030 	lw	s0,48(sp)
     a28:	27bd0060 	addiu	sp,sp,96
     a2c:	03e00008 	jr	ra
     a30:	00000000 	nop

00000a34 <func_80AD8174>:
     a34:	27bdffe0 	addiu	sp,sp,-32
     a38:	afb00018 	sw	s0,24(sp)
     a3c:	00808025 	move	s0,a0
     a40:	afbf001c 	sw	ra,28(sp)
     a44:	afa50024 	sw	a1,36(sp)
     a48:	2405c000 	li	a1,-16384
     a4c:	248400b6 	addiu	a0,a0,182
     a50:	0c000000 	jal	0 <EnPoRelay_Init>
     a54:	24060800 	li	a2,2048
     a58:	02002025 	move	a0,s0
     a5c:	0c000000 	jal	0 <EnPoRelay_Init>
     a60:	8fa50024 	lw	a1,36(sp)
     a64:	10400005 	beqz	v0,a7c <func_80AD8174+0x48>
     a68:	8faf0024 	lw	t7,36(sp)
     a6c:	3c0e0000 	lui	t6,0x0
     a70:	25ce0000 	addiu	t6,t6,0
     a74:	10000017 	b	ad4 <func_80AD8174+0xa0>
     a78:	ae0e0190 	sw	t6,400(s0)
     a7c:	3c180001 	lui	t8,0x1
     a80:	030fc021 	addu	t8,t8,t7
     a84:	83181cbc 	lb	t8,7356(t8)
     a88:	24010005 	li	at,5
     a8c:	02002025 	move	a0,s0
     a90:	17010006 	bne	t8,at,aac <func_80AD8174+0x78>
     a94:	3c054316 	lui	a1,0x4316
     a98:	0c000000 	jal	0 <EnPoRelay_Init>
     a9c:	02002025 	move	a0,s0
     aa0:	3c010000 	lui	at,0x0
     aa4:	1000000b 	b	ad4 <func_80AD8174+0xa0>
     aa8:	a42013ce 	sh	zero,5070(at)
     aac:	0c000000 	jal	0 <EnPoRelay_Init>
     ab0:	24063000 	li	a2,12288
     ab4:	50400008 	beqzl	v0,ad8 <func_80AD8174+0xa4>
     ab8:	02002025 	move	a0,s0
     abc:	9619019c 	lhu	t9,412(s0)
     ac0:	02002025 	move	a0,s0
     ac4:	3c06437a 	lui	a2,0x437a
     ac8:	a619010e 	sh	t9,270(s0)
     acc:	0c000000 	jal	0 <EnPoRelay_Init>
     ad0:	8fa50024 	lw	a1,36(sp)
     ad4:	02002025 	move	a0,s0
     ad8:	0c000000 	jal	0 <EnPoRelay_Init>
     adc:	24053071 	li	a1,12401
     ae0:	8fbf001c 	lw	ra,28(sp)
     ae4:	8fb00018 	lw	s0,24(sp)
     ae8:	27bd0020 	addiu	sp,sp,32
     aec:	03e00008 	jr	ra
     af0:	00000000 	nop

00000af4 <func_80AD8234>:
     af4:	27bdffe0 	addiu	sp,sp,-32
     af8:	afb10018 	sw	s1,24(sp)
     afc:	afb00014 	sw	s0,20(sp)
     b00:	00808025 	move	s0,a0
     b04:	00a08825 	move	s1,a1
     b08:	afbf001c 	sw	ra,28(sp)
     b0c:	8605008a 	lh	a1,138(s0)
     b10:	248400b6 	addiu	a0,a0,182
     b14:	0c000000 	jal	0 <EnPoRelay_Init>
     b18:	24060100 	li	a2,256
     b1c:	0c000000 	jal	0 <EnPoRelay_Init>
     b20:	262420d8 	addiu	a0,s1,8408
     b24:	24010005 	li	at,5
     b28:	14410017 	bne	v0,at,b88 <func_80AD8234+0x94>
     b2c:	02002025 	move	a0,s0
     b30:	0c000000 	jal	0 <EnPoRelay_Init>
     b34:	02202025 	move	a0,s1
     b38:	5040001d 	beqzl	v0,bb0 <func_80AD8234+0xbc>
     b3c:	02002025 	move	a0,s0
     b40:	920e0194 	lbu	t6,404(s0)
     b44:	2406002e 	li	a2,46
     b48:	02202025 	move	a0,s1
     b4c:	11c00006 	beqz	t6,b68 <func_80AD8234+0x74>
     b50:	02002825 	move	a1,s0
     b54:	02202025 	move	a0,s1
     b58:	0c000000 	jal	0 <EnPoRelay_Init>
     b5c:	02002825 	move	a1,s0
     b60:	10000004 	b	b74 <func_80AD8234+0x80>
     b64:	9605010e 	lhu	a1,270(s0)
     b68:	0c000000 	jal	0 <EnPoRelay_Init>
     b6c:	2406002d 	li	a2,45
     b70:	9605010e 	lhu	a1,270(s0)
     b74:	02202025 	move	a0,s1
     b78:	0c000000 	jal	0 <EnPoRelay_Init>
     b7c:	a605019c 	sh	a1,412(s0)
     b80:	1000000b 	b	bb0 <func_80AD8234+0xbc>
     b84:	02002025 	move	a0,s0
     b88:	0c000000 	jal	0 <EnPoRelay_Init>
     b8c:	02202825 	move	a1,s1
     b90:	10400006 	beqz	v0,bac <func_80AD8234+0xb8>
     b94:	3c010000 	lui	at,0x0
     b98:	a42013ce 	sh	zero,5070(at)
     b9c:	3c0f0000 	lui	t7,0x0
     ba0:	25ef0000 	addiu	t7,t7,0
     ba4:	a6000196 	sh	zero,406(s0)
     ba8:	ae0f0190 	sw	t7,400(s0)
     bac:	02002025 	move	a0,s0
     bb0:	0c000000 	jal	0 <EnPoRelay_Init>
     bb4:	24053071 	li	a1,12401
     bb8:	8fbf001c 	lw	ra,28(sp)
     bbc:	8fb00014 	lw	s0,20(sp)
     bc0:	8fb10018 	lw	s1,24(sp)
     bc4:	03e00008 	jr	ra
     bc8:	27bd0020 	addiu	sp,sp,32

00000bcc <func_80AD830C>:
     bcc:	27bdff80 	addiu	sp,sp,-128
     bd0:	afbf004c 	sw	ra,76(sp)
     bd4:	afb10048 	sw	s1,72(sp)
     bd8:	afb00044 	sw	s0,68(sp)
     bdc:	848e0196 	lh	t6,406(a0)
     be0:	00808025 	move	s0,a0
     be4:	00a08825 	move	s1,a1
     be8:	25cf0001 	addiu	t7,t6,1
     bec:	a48f0196 	sh	t7,406(a0)
     bf0:	84820196 	lh	v0,406(a0)
     bf4:	28410008 	slti	at,v0,8
     bf8:	102000d7 	beqz	at,f58 <func_80AD830C+0x38c>
     bfc:	28410005 	slti	at,v0,5
     c00:	10200037 	beqz	at,ce0 <func_80AD830C+0x114>
     c04:	244cfffb 	addiu	t4,v0,-5
     c08:	00022300 	sll	a0,v0,0xc
     c0c:	2484c000 	addiu	a0,a0,-16384
     c10:	00042400 	sll	a0,a0,0x10
     c14:	0c000000 	jal	0 <EnPoRelay_Init>
     c18:	00042403 	sra	a0,a0,0x10
     c1c:	3c014220 	lui	at,0x4220
     c20:	44813000 	mtc1	at,$f6
     c24:	3c0141b8 	lui	at,0x41b8
     c28:	44815000 	mtc1	at,$f10
     c2c:	c6040028 	lwc1	$f4,40(s0)
     c30:	460a0402 	mul.s	$f16,$f0,$f10
     c34:	46062200 	add.s	$f8,$f4,$f6
     c38:	46088480 	add.s	$f18,$f16,$f8
     c3c:	e7b20078 	swc1	$f18,120(sp)
     c40:	86040196 	lh	a0,406(s0)
     c44:	00042300 	sll	a0,a0,0xc
     c48:	2484c000 	addiu	a0,a0,-16384
     c4c:	00042400 	sll	a0,a0,0x10
     c50:	0c000000 	jal	0 <EnPoRelay_Init>
     c54:	00042403 	sra	a0,a0,0x10
     c58:	3c0141b8 	lui	at,0x41b8
     c5c:	44812000 	mtc1	at,$f4
     c60:	00000000 	nop
     c64:	46040182 	mul.s	$f6,$f0,$f4
     c68:	e7a60070 	swc1	$f6,112(sp)
     c6c:	863807a0 	lh	t8,1952(s1)
     c70:	0018c880 	sll	t9,t8,0x2
     c74:	02394021 	addu	t0,s1,t9
     c78:	0c000000 	jal	0 <EnPoRelay_Init>
     c7c:	8d040790 	lw	a0,1936(t0)
     c80:	24444800 	addiu	a0,v0,18432
     c84:	00042400 	sll	a0,a0,0x10
     c88:	0c000000 	jal	0 <EnPoRelay_Init>
     c8c:	00042403 	sra	a0,a0,0x10
     c90:	c7aa0070 	lwc1	$f10,112(sp)
     c94:	c6080024 	lwc1	$f8,36(s0)
     c98:	460a0402 	mul.s	$f16,$f0,$f10
     c9c:	46088480 	add.s	$f18,$f16,$f8
     ca0:	e7b20074 	swc1	$f18,116(sp)
     ca4:	862907a0 	lh	t1,1952(s1)
     ca8:	00095080 	sll	t2,t1,0x2
     cac:	022a5821 	addu	t3,s1,t2
     cb0:	0c000000 	jal	0 <EnPoRelay_Init>
     cb4:	8d640790 	lw	a0,1936(t3)
     cb8:	24444800 	addiu	a0,v0,18432
     cbc:	00042400 	sll	a0,a0,0x10
     cc0:	0c000000 	jal	0 <EnPoRelay_Init>
     cc4:	00042403 	sra	a0,a0,0x10
     cc8:	c7a40070 	lwc1	$f4,112(sp)
     ccc:	c60a002c 	lwc1	$f10,44(s0)
     cd0:	46040182 	mul.s	$f6,$f0,$f4
     cd4:	460a3400 	add.s	$f16,$f6,$f10
     cd8:	1000002a 	b	d84 <func_80AD830C+0x1b8>
     cdc:	e7b0007c 	swc1	$f16,124(sp)
     ce0:	448c5000 	mtc1	t4,$f10
     ce4:	3c014220 	lui	at,0x4220
     ce8:	44819000 	mtc1	at,$f18
     cec:	46805420 	cvt.s.w	$f16,$f10
     cf0:	c6080028 	lwc1	$f8,40(s0)
     cf4:	3c014170 	lui	at,0x4170
     cf8:	44813000 	mtc1	at,$f6
     cfc:	46124100 	add.s	$f4,$f8,$f18
     d00:	46103202 	mul.s	$f8,$f6,$f16
     d04:	46082480 	add.s	$f18,$f4,$f8
     d08:	e7b20078 	swc1	$f18,120(sp)
     d0c:	862d07a0 	lh	t5,1952(s1)
     d10:	000d7080 	sll	t6,t5,0x2
     d14:	022e7821 	addu	t7,s1,t6
     d18:	0c000000 	jal	0 <EnPoRelay_Init>
     d1c:	8de40790 	lw	a0,1936(t7)
     d20:	24444800 	addiu	a0,v0,18432
     d24:	00042400 	sll	a0,a0,0x10
     d28:	0c000000 	jal	0 <EnPoRelay_Init>
     d2c:	00042403 	sra	a0,a0,0x10
     d30:	3c0141b8 	lui	at,0x41b8
     d34:	44815000 	mtc1	at,$f10
     d38:	c6100024 	lwc1	$f16,36(s0)
     d3c:	460a0182 	mul.s	$f6,$f0,$f10
     d40:	46103100 	add.s	$f4,$f6,$f16
     d44:	e7a40074 	swc1	$f4,116(sp)
     d48:	863807a0 	lh	t8,1952(s1)
     d4c:	0018c880 	sll	t9,t8,0x2
     d50:	02394021 	addu	t0,s1,t9
     d54:	0c000000 	jal	0 <EnPoRelay_Init>
     d58:	8d040790 	lw	a0,1936(t0)
     d5c:	24444800 	addiu	a0,v0,18432
     d60:	00042400 	sll	a0,a0,0x10
     d64:	0c000000 	jal	0 <EnPoRelay_Init>
     d68:	00042403 	sra	a0,a0,0x10
     d6c:	3c0141b8 	lui	at,0x41b8
     d70:	44814000 	mtc1	at,$f8
     d74:	c60a002c 	lwc1	$f10,44(s0)
     d78:	46080482 	mul.s	$f18,$f0,$f8
     d7c:	460a9180 	add.s	$f6,$f18,$f10
     d80:	e7a6007c 	swc1	$f6,124(sp)
     d84:	86090196 	lh	t1,406(s0)
     d88:	3c060000 	lui	a2,0x0
     d8c:	3c070000 	lui	a3,0x0
     d90:	00095080 	sll	t2,t1,0x2
     d94:	01495021 	addu	t2,t2,t1
     d98:	000a5040 	sll	t2,t2,0x1
     d9c:	254b0050 	addiu	t3,t2,80
     da0:	24090001 	li	t1,1
     da4:	240c00ff 	li	t4,255
     da8:	240d00ff 	li	t5,255
     dac:	240e00ff 	li	t6,255
     db0:	240f00ff 	li	t7,255
     db4:	241800ff 	li	t8,255
     db8:	24190001 	li	t9,1
     dbc:	24080009 	li	t0,9
     dc0:	afa80038 	sw	t0,56(sp)
     dc4:	afb90034 	sw	t9,52(sp)
     dc8:	afb80030 	sw	t8,48(sp)
     dcc:	afaf0024 	sw	t7,36(sp)
     dd0:	afae0020 	sw	t6,32(sp)
     dd4:	afad001c 	sw	t5,28(sp)
     dd8:	afac0018 	sw	t4,24(sp)
     ddc:	afa9003c 	sw	t1,60(sp)
     de0:	afab0010 	sw	t3,16(sp)
     de4:	24e70000 	addiu	a3,a3,0
     de8:	24c60000 	addiu	a2,a2,0
     dec:	afa0002c 	sw	zero,44(sp)
     df0:	afa00028 	sw	zero,40(sp)
     df4:	afa00014 	sw	zero,20(sp)
     df8:	02202025 	move	a0,s1
     dfc:	0c000000 	jal	0 <EnPoRelay_Init>
     e00:	27a50074 	addiu	a1,sp,116
     e04:	c6000024 	lwc1	$f0,36(s0)
     e08:	c7a40074 	lwc1	$f4,116(sp)
     e0c:	c7aa007c 	lwc1	$f10,124(sp)
     e10:	46000400 	add.s	$f16,$f0,$f0
     e14:	3c060000 	lui	a2,0x0
     e18:	3c070000 	lui	a3,0x0
     e1c:	240d00ff 	li	t5,255
     e20:	46048201 	sub.s	$f8,$f16,$f4
     e24:	240e00ff 	li	t6,255
     e28:	240f00ff 	li	t7,255
     e2c:	241800ff 	li	t8,255
     e30:	e7a80074 	swc1	$f8,116(sp)
     e34:	c602002c 	lwc1	$f2,44(s0)
     e38:	241900ff 	li	t9,255
     e3c:	24080001 	li	t0,1
     e40:	46021480 	add.s	$f18,$f2,$f2
     e44:	24090009 	li	t1,9
     e48:	24e70000 	addiu	a3,a3,0
     e4c:	24c60000 	addiu	a2,a2,0
     e50:	460a9181 	sub.s	$f6,$f18,$f10
     e54:	02202025 	move	a0,s1
     e58:	27a50074 	addiu	a1,sp,116
     e5c:	e7a6007c 	swc1	$f6,124(sp)
     e60:	860a0196 	lh	t2,406(s0)
     e64:	afa90038 	sw	t1,56(sp)
     e68:	afa80034 	sw	t0,52(sp)
     e6c:	000a5880 	sll	t3,t2,0x2
     e70:	016a5821 	addu	t3,t3,t2
     e74:	000b5840 	sll	t3,t3,0x1
     e78:	256c0050 	addiu	t4,t3,80
     e7c:	240a0001 	li	t2,1
     e80:	afaa003c 	sw	t2,60(sp)
     e84:	afac0010 	sw	t4,16(sp)
     e88:	afb90030 	sw	t9,48(sp)
     e8c:	afa0002c 	sw	zero,44(sp)
     e90:	afa00028 	sw	zero,40(sp)
     e94:	afb80024 	sw	t8,36(sp)
     e98:	afaf0020 	sw	t7,32(sp)
     e9c:	afae001c 	sw	t6,28(sp)
     ea0:	afad0018 	sw	t5,24(sp)
     ea4:	0c000000 	jal	0 <EnPoRelay_Init>
     ea8:	afa00014 	sw	zero,20(sp)
     eac:	c6100024 	lwc1	$f16,36(s0)
     eb0:	3c060000 	lui	a2,0x0
     eb4:	3c070000 	lui	a3,0x0
     eb8:	e7b00074 	swc1	$f16,116(sp)
     ebc:	c604002c 	lwc1	$f4,44(s0)
     ec0:	240e00ff 	li	t6,255
     ec4:	240f00ff 	li	t7,255
     ec8:	e7a4007c 	swc1	$f4,124(sp)
     ecc:	860b0196 	lh	t3,406(s0)
     ed0:	241800ff 	li	t8,255
     ed4:	241900ff 	li	t9,255
     ed8:	000b6080 	sll	t4,t3,0x2
     edc:	018b6021 	addu	t4,t4,t3
     ee0:	000c6040 	sll	t4,t4,0x1
     ee4:	258d0050 	addiu	t5,t4,80
     ee8:	240b0001 	li	t3,1
     eec:	240800ff 	li	t0,255
     ef0:	24090001 	li	t1,1
     ef4:	240a0009 	li	t2,9
     ef8:	afaa0038 	sw	t2,56(sp)
     efc:	afa90034 	sw	t1,52(sp)
     f00:	afa80030 	sw	t0,48(sp)
     f04:	afab003c 	sw	t3,60(sp)
     f08:	afad0010 	sw	t5,16(sp)
     f0c:	afb90024 	sw	t9,36(sp)
     f10:	afb80020 	sw	t8,32(sp)
     f14:	afa0002c 	sw	zero,44(sp)
     f18:	afa00028 	sw	zero,40(sp)
     f1c:	afaf001c 	sw	t7,28(sp)
     f20:	afae0018 	sw	t6,24(sp)
     f24:	afa00014 	sw	zero,20(sp)
     f28:	24e70000 	addiu	a3,a3,0
     f2c:	24c60000 	addiu	a2,a2,0
     f30:	02202025 	move	a0,s1
     f34:	0c000000 	jal	0 <EnPoRelay_Init>
     f38:	27a50074 	addiu	a1,sp,116
     f3c:	860c0196 	lh	t4,406(s0)
     f40:	24010001 	li	at,1
     f44:	02002025 	move	a0,s0
     f48:	55810004 	bnel	t4,at,f5c <func_80AD830C+0x390>
     f4c:	3c063a83 	lui	a2,0x3a83
     f50:	0c000000 	jal	0 <EnPoRelay_Init>
     f54:	24053878 	li	a1,14456
     f58:	3c063a83 	lui	a2,0x3a83
     f5c:	34c6126f 	ori	a2,a2,0x126f
     f60:	26040050 	addiu	a0,s0,80
     f64:	0c000000 	jal	0 <EnPoRelay_Init>
     f68:	24050000 	li	a1,0
     f6c:	5040003f 	beqzl	v0,106c <func_80AD830C+0x4a0>
     f70:	3c014120 	lui	at,0x4120
     f74:	920d0194 	lbu	t5,404(s0)
     f78:	02202025 	move	a0,s1
     f7c:	11a00032 	beqz	t5,1048 <func_80AD830C+0x47c>
     f80:	00000000 	nop
     f84:	c6080024 	lwc1	$f8,36(s0)
     f88:	3c030000 	lui	v1,0x0
     f8c:	24630000 	addiu	v1,v1,0
     f90:	e7a80060 	swc1	$f8,96(sp)
     f94:	c6120080 	lwc1	$f18,128(s0)
     f98:	846213d0 	lh	v0,5072(v1)
     f9c:	8c6e0ed0 	lw	t6,3792(v1)
     fa0:	e7b20064 	swc1	$f18,100(sp)
     fa4:	c60a002c 	lwc1	$f10,44(s0)
     fa8:	004e082a 	slt	at,v0,t6
     fac:	10200002 	beqz	at,fb8 <func_80AD830C+0x3ec>
     fb0:	e7aa0068 	swc1	$f10,104(sp)
     fb4:	ac620ed0 	sw	v0,3792(v1)
     fb8:	02202025 	move	a0,s1
     fbc:	0c000000 	jal	0 <EnPoRelay_Init>
     fc0:	8605001c 	lh	a1,28(s0)
     fc4:	3c030000 	lui	v1,0x0
     fc8:	1440000f 	bnez	v0,1008 <func_80AD830C+0x43c>
     fcc:	24630000 	addiu	v1,v1,0
     fd0:	846f13d0 	lh	t7,5072(v1)
     fd4:	29e1003d 	slti	at,t7,61
     fd8:	5020000c 	beqzl	at,100c <func_80AD830C+0x440>
     fdc:	c7a60064 	lwc1	$f6,100(sp)
     fe0:	8606001c 	lh	a2,28(s0)
     fe4:	02202025 	move	a0,s1
     fe8:	27a50060 	addiu	a1,sp,96
     fec:	00063200 	sll	a2,a2,0x8
     ff0:	24c64006 	addiu	a2,a2,16390
     ff4:	00063400 	sll	a2,a2,0x10
     ff8:	0c000000 	jal	0 <EnPoRelay_Init>
     ffc:	00063403 	sra	a2,a2,0x10
    1000:	10000017 	b	1060 <func_80AD830C+0x494>
    1004:	00000000 	nop
    1008:	c7a60064 	lwc1	$f6,100(sp)
    100c:	c7b00068 	lwc1	$f16,104(sp)
    1010:	24180002 	li	t8,2
    1014:	afb80024 	sw	t8,36(sp)
    1018:	26241c24 	addiu	a0,s1,7204
    101c:	02202825 	move	a1,s1
    1020:	24060015 	li	a2,21
    1024:	8fa70060 	lw	a3,96(sp)
    1028:	afa00018 	sw	zero,24(sp)
    102c:	afa0001c 	sw	zero,28(sp)
    1030:	afa00020 	sw	zero,32(sp)
    1034:	e7a60010 	swc1	$f6,16(sp)
    1038:	0c000000 	jal	0 <EnPoRelay_Init>
    103c:	e7b00014 	swc1	$f16,20(sp)
    1040:	10000007 	b	1060 <func_80AD830C+0x494>
    1044:	00000000 	nop
    1048:	0c000000 	jal	0 <EnPoRelay_Init>
    104c:	24050004 	li	a1,4
    1050:	3c030000 	lui	v1,0x0
    1054:	24630000 	addiu	v1,v1,0
    1058:	847913d0 	lh	t9,5072(v1)
    105c:	ac790ed0 	sw	t9,3792(v1)
    1060:	0c000000 	jal	0 <EnPoRelay_Init>
    1064:	02002025 	move	a0,s0
    1068:	3c014120 	lui	at,0x4120
    106c:	44814000 	mtc1	at,$f8
    1070:	c6040028 	lwc1	$f4,40(s0)
    1074:	c6000050 	lwc1	$f0,80(s0)
    1078:	46082480 	add.s	$f18,$f4,$f8
    107c:	e6000054 	swc1	$f0,84(s0)
    1080:	e6000058 	swc1	$f0,88(s0)
    1084:	e6120028 	swc1	$f18,40(s0)
    1088:	8fbf004c 	lw	ra,76(sp)
    108c:	8fb10048 	lw	s1,72(sp)
    1090:	8fb00044 	lw	s0,68(sp)
    1094:	03e00008 	jr	ra
    1098:	27bd0080 	addiu	sp,sp,128

0000109c <EnPoRelay_Update>:
    109c:	27bdffc8 	addiu	sp,sp,-56
    10a0:	afb00020 	sw	s0,32(sp)
    10a4:	00808025 	move	s0,a0
    10a8:	afbf0024 	sw	ra,36(sp)
    10ac:	afa5003c 	sw	a1,60(sp)
    10b0:	0c000000 	jal	0 <EnPoRelay_Init>
    10b4:	2484014c 	addiu	a0,a0,332
    10b8:	8e190190 	lw	t9,400(s0)
    10bc:	02002025 	move	a0,s0
    10c0:	8fa5003c 	lw	a1,60(sp)
    10c4:	0320f809 	jalr	t9
    10c8:	00000000 	nop
    10cc:	0c000000 	jal	0 <EnPoRelay_Init>
    10d0:	02002025 	move	a0,s0
    10d4:	0c000000 	jal	0 <EnPoRelay_Init>
    10d8:	02002025 	move	a0,s0
    10dc:	3c014270 	lui	at,0x4270
    10e0:	44812000 	mtc1	at,$f4
    10e4:	240e0004 	li	t6,4
    10e8:	afae0014 	sw	t6,20(sp)
    10ec:	8fa4003c 	lw	a0,60(sp)
    10f0:	02002825 	move	a1,s0
    10f4:	24060000 	li	a2,0
    10f8:	3c0741d8 	lui	a3,0x41d8
    10fc:	0c000000 	jal	0 <EnPoRelay_Init>
    1100:	e7a40010 	swc1	$f4,16(sp)
    1104:	26060290 	addiu	a2,s0,656
    1108:	00c02825 	move	a1,a2
    110c:	afa6002c 	sw	a2,44(sp)
    1110:	0c000000 	jal	0 <EnPoRelay_Init>
    1114:	02002025 	move	a0,s0
    1118:	8fa4003c 	lw	a0,60(sp)
    111c:	3c010001 	lui	at,0x1
    1120:	34211e60 	ori	at,at,0x1e60
    1124:	8fa6002c 	lw	a2,44(sp)
    1128:	0c000000 	jal	0 <EnPoRelay_Init>
    112c:	00812821 	addu	a1,a0,at
    1130:	02002025 	move	a0,s0
    1134:	0c000000 	jal	0 <EnPoRelay_Init>
    1138:	3c054248 	lui	a1,0x4248
    113c:	92020195 	lbu	v0,405(s0)
    1140:	24080020 	li	t0,32
    1144:	10400003 	beqz	v0,1154 <EnPoRelay_Update+0xb8>
    1148:	2458ffff 	addiu	t8,v0,-1
    114c:	a2180195 	sb	t8,405(s0)
    1150:	330200ff 	andi	v0,t8,0xff
    1154:	54400003 	bnezl	v0,1164 <EnPoRelay_Update+0xc8>
    1158:	9609019e 	lhu	t1,414(s0)
    115c:	a2080195 	sb	t0,405(s0)
    1160:	9609019e 	lhu	t1,414(s0)
    1164:	24010003 	li	at,3
    1168:	252a0001 	addiu	t2,t1,1
    116c:	314bffff 	andi	t3,t2,0xffff
    1170:	15610002 	bne	t3,at,117c <EnPoRelay_Update+0xe0>
    1174:	a60a019e 	sh	t2,414(s0)
    1178:	a600019e 	sh	zero,414(s0)
    117c:	8fbf0024 	lw	ra,36(sp)
    1180:	8fb00020 	lw	s0,32(sp)
    1184:	27bd0038 	addiu	sp,sp,56
    1188:	03e00008 	jr	ra
    118c:	00000000 	nop

00001190 <func_80AD88D0>:
    1190:	27bdff80 	addiu	sp,sp,-128
    1194:	2401000e 	li	at,14
    1198:	afbf0024 	sw	ra,36(sp)
    119c:	afa40080 	sw	a0,128(sp)
    11a0:	afa60088 	sw	a2,136(sp)
    11a4:	14a10065 	bne	a1,at,133c <func_80AD88D0+0x1ac>
    11a8:	afa7008c 	sw	a3,140(sp)
    11ac:	8c850000 	lw	a1,0(a0)
    11b0:	3c060000 	lui	a2,0x0
    11b4:	24c60000 	addiu	a2,a2,0
    11b8:	27a40058 	addiu	a0,sp,88
    11bc:	24070375 	li	a3,885
    11c0:	0c000000 	jal	0 <EnPoRelay_Init>
    11c4:	afa50068 	sw	a1,104(sp)
    11c8:	0c000000 	jal	0 <EnPoRelay_Init>
    11cc:	00000000 	nop
    11d0:	3c0141f0 	lui	at,0x41f0
    11d4:	44812000 	mtc1	at,$f4
    11d8:	3c0142c8 	lui	at,0x42c8
    11dc:	44815000 	mtc1	at,$f10
    11e0:	46040182 	mul.s	$f6,$f0,$f4
    11e4:	3c014320 	lui	at,0x4320
    11e8:	44812000 	mtc1	at,$f4
    11ec:	460a0402 	mul.s	$f16,$f0,$f10
    11f0:	8fa90090 	lw	t1,144(sp)
    11f4:	8fa80068 	lw	t0,104(sp)
    11f8:	3c19fb00 	lui	t9,0xfb00
    11fc:	3c060000 	lui	a2,0x0
    1200:	24c60000 	addiu	a2,a2,0
    1204:	4600320d 	trunc.w.s	$f8,$f6
    1208:	46040182 	mul.s	$f6,$f0,$f4
    120c:	27a40058 	addiu	a0,sp,88
    1210:	24070385 	li	a3,901
    1214:	440a4000 	mfc1	t2,$f8
    1218:	4600848d 	trunc.w.s	$f18,$f16
    121c:	254b00e1 	addiu	t3,t2,225
    1220:	a12b0278 	sb	t3,632(t1)
    1224:	4600320d 	trunc.w.s	$f8,$f6
    1228:	440f9000 	mfc1	t7,$f18
    122c:	440c4000 	mfc1	t4,$f8
    1230:	25f8009b 	addiu	t8,t7,155
    1234:	a1380279 	sb	t8,633(t1)
    1238:	258d005f 	addiu	t5,t4,95
    123c:	a12d027a 	sb	t5,634(t1)
    1240:	8d0202c0 	lw	v0,704(t0)
    1244:	3c0fe700 	lui	t7,0xe700
    1248:	244e0008 	addiu	t6,v0,8
    124c:	ad0e02c0 	sw	t6,704(t0)
    1250:	ac400004 	sw	zero,4(v0)
    1254:	ac4f0000 	sw	t7,0(v0)
    1258:	8d0202c0 	lw	v0,704(t0)
    125c:	24580008 	addiu	t8,v0,8
    1260:	ad1802c0 	sw	t8,704(t0)
    1264:	ac590000 	sw	t9,0(v0)
    1268:	912b0278 	lbu	t3,632(t1)
    126c:	912e0279 	lbu	t6,633(t1)
    1270:	912a027a 	lbu	t2,634(t1)
    1274:	000b6600 	sll	t4,t3,0x18
    1278:	000e7c00 	sll	t7,t6,0x10
    127c:	018fc025 	or	t8,t4,t7
    1280:	000a5a00 	sll	t3,t2,0x8
    1284:	030b6825 	or	t5,t8,t3
    1288:	35ae0080 	ori	t6,t5,0x80
    128c:	ac4e0004 	sw	t6,4(v0)
    1290:	8d0202c0 	lw	v0,704(t0)
    1294:	3c190601 	lui	t9,0x601
    1298:	2739b838 	addiu	t9,t9,-18376
    129c:	244c0008 	addiu	t4,v0,8
    12a0:	ad0c02c0 	sw	t4,704(t0)
    12a4:	3c0fde00 	lui	t7,0xde00
    12a8:	ac4f0000 	sw	t7,0(v0)
    12ac:	ac590004 	sw	t9,4(v0)
    12b0:	8faa0080 	lw	t2,128(sp)
    12b4:	0c000000 	jal	0 <EnPoRelay_Init>
    12b8:	8d450000 	lw	a1,0(t2)
    12bc:	3c040000 	lui	a0,0x0
    12c0:	24840000 	addiu	a0,a0,0
    12c4:	0c000000 	jal	0 <EnPoRelay_Init>
    12c8:	27a5006c 	addiu	a1,sp,108
    12cc:	8fa90090 	lw	t1,144(sp)
    12d0:	c7aa006c 	lwc1	$f10,108(sp)
    12d4:	c7b20070 	lwc1	$f18,112(sp)
    12d8:	c7a60074 	lwc1	$f6,116(sp)
    12dc:	912e0278 	lbu	t6,632(t1)
    12e0:	4600540d 	trunc.w.s	$f16,$f10
    12e4:	241900c8 	li	t9,200
    12e8:	afae0010 	sw	t6,16(sp)
    12ec:	4600910d 	trunc.w.s	$f4,$f18
    12f0:	912c0279 	lbu	t4,633(t1)
    12f4:	44058000 	mfc1	a1,$f16
    12f8:	4600320d 	trunc.w.s	$f8,$f6
    12fc:	44062000 	mfc1	a2,$f4
    1300:	afac0014 	sw	t4,20(sp)
    1304:	912f027a 	lbu	t7,634(t1)
    1308:	44074000 	mfc1	a3,$f8
    130c:	00052c00 	sll	a1,a1,0x10
    1310:	00063400 	sll	a2,a2,0x10
    1314:	00073c00 	sll	a3,a3,0x10
    1318:	00073c03 	sra	a3,a3,0x10
    131c:	00063403 	sra	a2,a2,0x10
    1320:	00052c03 	sra	a1,a1,0x10
    1324:	afb9001c 	sw	t9,28(sp)
    1328:	25240280 	addiu	a0,t1,640
    132c:	0c000000 	jal	0 <EnPoRelay_Init>
    1330:	afaf0018 	sw	t7,24(sp)
    1334:	1000002d 	b	13ec <func_80AD88D0+0x25c>
    1338:	8fbf0024 	lw	ra,36(sp)
    133c:	24010008 	li	at,8
    1340:	14a10029 	bne	a1,at,13e8 <func_80AD88D0+0x258>
    1344:	8faa0080 	lw	t2,128(sp)
    1348:	8d450000 	lw	a1,0(t2)
    134c:	3c060000 	lui	a2,0x0
    1350:	24c60000 	addiu	a2,a2,0
    1354:	27a40038 	addiu	a0,sp,56
    1358:	24070394 	li	a3,916
    135c:	0c000000 	jal	0 <EnPoRelay_Init>
    1360:	afa50048 	sw	a1,72(sp)
    1364:	8fa80048 	lw	t0,72(sp)
    1368:	3c0bda38 	lui	t3,0xda38
    136c:	356b0003 	ori	t3,t3,0x3
    1370:	8d0202c0 	lw	v0,704(t0)
    1374:	3c050000 	lui	a1,0x0
    1378:	24a50000 	addiu	a1,a1,0
    137c:	24580008 	addiu	t8,v0,8
    1380:	ad1802c0 	sw	t8,704(t0)
    1384:	ac4b0000 	sw	t3,0(v0)
    1388:	8fad0080 	lw	t5,128(sp)
    138c:	24060396 	li	a2,918
    1390:	8da40000 	lw	a0,0(t5)
    1394:	afa80048 	sw	t0,72(sp)
    1398:	0c000000 	jal	0 <EnPoRelay_Init>
    139c:	afa20034 	sw	v0,52(sp)
    13a0:	8fa30034 	lw	v1,52(sp)
    13a4:	8fa80048 	lw	t0,72(sp)
    13a8:	3c0f0601 	lui	t7,0x601
    13ac:	ac620004 	sw	v0,4(v1)
    13b0:	8d0202c0 	lw	v0,704(t0)
    13b4:	25efbba0 	addiu	t7,t7,-17504
    13b8:	3c0cde00 	lui	t4,0xde00
    13bc:	244e0008 	addiu	t6,v0,8
    13c0:	ad0e02c0 	sw	t6,704(t0)
    13c4:	ac4f0004 	sw	t7,4(v0)
    13c8:	ac4c0000 	sw	t4,0(v0)
    13cc:	8fb90080 	lw	t9,128(sp)
    13d0:	3c060000 	lui	a2,0x0
    13d4:	24c60000 	addiu	a2,a2,0
    13d8:	27a40038 	addiu	a0,sp,56
    13dc:	2407039a 	li	a3,922
    13e0:	0c000000 	jal	0 <EnPoRelay_Init>
    13e4:	8f250000 	lw	a1,0(t9)
    13e8:	8fbf0024 	lw	ra,36(sp)
    13ec:	27bd0080 	addiu	sp,sp,128
    13f0:	03e00008 	jr	ra
    13f4:	00000000 	nop

000013f8 <EnPoRelay_Draw>:
    13f8:	27bdffb0 	addiu	sp,sp,-80
    13fc:	afbf002c 	sw	ra,44(sp)
    1400:	afb00028 	sw	s0,40(sp)
    1404:	afa50054 	sw	a1,84(sp)
    1408:	8ca50000 	lw	a1,0(a1)
    140c:	00808025 	move	s0,a0
    1410:	3c060000 	lui	a2,0x0
    1414:	24c60000 	addiu	a2,a2,0
    1418:	27a40038 	addiu	a0,sp,56
    141c:	240703ac 	li	a3,940
    1420:	0c000000 	jal	0 <EnPoRelay_Init>
    1424:	afa50048 	sw	a1,72(sp)
    1428:	8faf0054 	lw	t7,84(sp)
    142c:	0c000000 	jal	0 <EnPoRelay_Init>
    1430:	8de40000 	lw	a0,0(t7)
    1434:	8fa50048 	lw	a1,72(sp)
    1438:	3c19db06 	lui	t9,0xdb06
    143c:	37390020 	ori	t9,t9,0x20
    1440:	8ca302c0 	lw	v1,704(a1)
    1444:	3c040000 	lui	a0,0x0
    1448:	3c0e0000 	lui	t6,0x0
    144c:	24780008 	addiu	t8,v1,8
    1450:	acb802c0 	sw	t8,704(a1)
    1454:	ac790000 	sw	t9,0(v1)
    1458:	9608019e 	lhu	t0,414(s0)
    145c:	3c0100ff 	lui	at,0xff
    1460:	3421ffff 	ori	at,at,0xffff
    1464:	00084880 	sll	t1,t0,0x2
    1468:	00892021 	addu	a0,a0,t1
    146c:	8c840000 	lw	a0,0(a0)
    1470:	3c190000 	lui	t9,0x0
    1474:	27390000 	addiu	t9,t9,0
    1478:	00045900 	sll	t3,a0,0x4
    147c:	000b6702 	srl	t4,t3,0x1c
    1480:	000c6880 	sll	t5,t4,0x2
    1484:	01cd7021 	addu	t6,t6,t5
    1488:	8dce0000 	lw	t6,0(t6)
    148c:	00815024 	and	t2,a0,at
    1490:	3c018000 	lui	at,0x8000
    1494:	014e7821 	addu	t7,t2,t6
    1498:	01e1c021 	addu	t8,t7,at
    149c:	ac780004 	sw	t8,4(v1)
    14a0:	9207014e 	lbu	a3,334(s0)
    14a4:	8e06016c 	lw	a2,364(s0)
    14a8:	8e050150 	lw	a1,336(s0)
    14ac:	afb00018 	sw	s0,24(sp)
    14b0:	afb90014 	sw	t9,20(sp)
    14b4:	afa00010 	sw	zero,16(sp)
    14b8:	0c000000 	jal	0 <EnPoRelay_Init>
    14bc:	8fa40054 	lw	a0,84(sp)
    14c0:	8fa80054 	lw	t0,84(sp)
    14c4:	3c060000 	lui	a2,0x0
    14c8:	24c60000 	addiu	a2,a2,0
    14cc:	27a40038 	addiu	a0,sp,56
    14d0:	240703ba 	li	a3,954
    14d4:	0c000000 	jal	0 <EnPoRelay_Init>
    14d8:	8d050000 	lw	a1,0(t0)
    14dc:	8fbf002c 	lw	ra,44(sp)
    14e0:	8fb00028 	lw	s0,40(sp)
    14e4:	27bd0050 	addiu	sp,sp,80
    14e8:	03e00008 	jr	ra
    14ec:	00000000 	nop
