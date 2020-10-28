
build/src/overlays/actors/ovl_En_Gs/z_en_gs.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGs_Init>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afa5002c 	sw	a1,44(sp)
       8:	afbf001c 	sw	ra,28(sp)
       c:	afb00018 	sw	s0,24(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnGs_Init>
      1c:	24a50078 	addiu	a1,a1,120
      20:	2605014c 	addiu	a1,s0,332
      24:	afa50020 	sw	a1,32(sp)
      28:	0c000000 	jal	0 <EnGs_Init>
      2c:	8fa4002c 	lw	a0,44(sp)
      30:	3c070000 	lui	a3,0x0
      34:	8fa50020 	lw	a1,32(sp)
      38:	24e70020 	addiu	a3,a3,32
      3c:	8fa4002c 	lw	a0,44(sp)
      40:	0c000000 	jal	0 <EnGs_Init>
      44:	02003025 	move	a2,s0
      48:	3c050000 	lui	a1,0x0
      4c:	3c060000 	lui	a2,0x0
      50:	24c60000 	addiu	a2,a2,0
      54:	24a50000 	addiu	a1,a1,0
      58:	0c000000 	jal	0 <EnGs_Init>
      5c:	26040098 	addiu	a0,s0,152
      60:	3c013f80 	lui	at,0x3f80
      64:	44810000 	mtc1	at,$f0
      68:	8e180024 	lw	t8,36(s0)
      6c:	8e0f0028 	lw	t7,40(s0)
      70:	3c190000 	lui	t9,0x0
      74:	ae1801d8 	sw	t8,472(s0)
      78:	8e18002c 	lw	t8,44(s0)
      7c:	240e0006 	li	t6,6
      80:	27390000 	addiu	t9,t9,0
      84:	a20e001f 	sb	t6,31(s0)
      88:	ae190198 	sw	t9,408(s0)
      8c:	e60001b4 	swc1	$f0,436(s0)
      90:	e60001b8 	swc1	$f0,440(s0)
      94:	e60001bc 	swc1	$f0,444(s0)
      98:	e60001c0 	swc1	$f0,448(s0)
      9c:	e60001c4 	swc1	$f0,452(s0)
      a0:	e60001c8 	swc1	$f0,456(s0)
      a4:	ae0f01dc 	sw	t7,476(s0)
      a8:	ae1801e0 	sw	t8,480(s0)
      ac:	8fbf001c 	lw	ra,28(sp)
      b0:	8fb00018 	lw	s0,24(sp)
      b4:	27bd0028 	addiu	sp,sp,40
      b8:	03e00008 	jr	ra
      bc:	00000000 	nop

000000c0 <EnGs_Destroy>:
      c0:	afa40000 	sw	a0,0(sp)
      c4:	03e00008 	jr	ra
      c8:	afa50004 	sw	a1,4(sp)

000000cc <func_80A4E3EC>:
      cc:	27bdffe0 	addiu	sp,sp,-32
      d0:	afbf0014 	sw	ra,20(sp)
      d4:	afa40020 	sw	a0,32(sp)
      d8:	24030002 	li	v1,2
      dc:	afa50024 	sw	a1,36(sp)
      e0:	afa3001c 	sw	v1,28(sp)
      e4:	0c000000 	jal	0 <EnGs_Init>
      e8:	24a420d8 	addiu	a0,a1,8408
      ec:	24010006 	li	at,6
      f0:	14410012 	bne	v0,at,13c <func_80A4E3EC+0x70>
      f4:	8fa3001c 	lw	v1,28(sp)
      f8:	8fa40024 	lw	a0,36(sp)
      fc:	0c000000 	jal	0 <EnGs_Init>
     100:	afa3001c 	sw	v1,28(sp)
     104:	8fa3001c 	lw	v1,28(sp)
     108:	1040000c 	beqz	v0,13c <func_80A4E3EC+0x70>
     10c:	8fa50020 	lw	a1,32(sp)
     110:	94ae010e 	lhu	t6,270(a1)
     114:	24012054 	li	at,8276
     118:	00001825 	move	v1,zero
     11c:	15c10007 	bne	t6,at,13c <func_80A4E3EC+0x70>
     120:	00000000 	nop
     124:	84af001c 	lh	t7,28(a1)
     128:	24030001 	li	v1,1
     12c:	31f800ff 	andi	t8,t7,0xff
     130:	27190400 	addiu	t9,t8,1024
     134:	10000001 	b	13c <func_80A4E3EC+0x70>
     138:	a4b9010e 	sh	t9,270(a1)
     13c:	8fbf0014 	lw	ra,20(sp)
     140:	27bd0020 	addiu	sp,sp,32
     144:	00601025 	move	v0,v1
     148:	03e00008 	jr	ra
     14c:	00000000 	nop

00000150 <func_80A4E470>:
     150:	27bdffc8 	addiu	sp,sp,-56
     154:	3c060000 	lui	a2,0x0
     158:	24c60000 	addiu	a2,a2,0
     15c:	8cce0000 	lw	t6,0(a2)
     160:	afbf0034 	sw	ra,52(sp)
     164:	afb10030 	sw	s1,48(sp)
     168:	afb0002c 	sw	s0,44(sp)
     16c:	8ca21c44 	lw	v0,7236(a1)
     170:	3c0142c8 	lui	at,0x42c8
     174:	a5c01532 	sh	zero,5426(t6)
     178:	c4860090 	lwc1	$f6,144(a0)
     17c:	44812000 	mtc1	at,$f4
     180:	00808025 	move	s0,a0
     184:	00a08825 	move	s1,a1
     188:	4604303e 	c.le.s	$f6,$f4
     18c:	00000000 	nop
     190:	45020061 	bc1fl	318 <func_80A4E470+0x1c8>
     194:	8fbf0034 	lw	ra,52(sp)
     198:	8ccf0000 	lw	t7,0(a2)
     19c:	24050001 	li	a1,1
     1a0:	a5e51532 	sh	a1,5426(t7)
     1a4:	9083019d 	lbu	v1,413(a0)
     1a8:	1460000e 	bnez	v1,1e4 <func_80A4E470+0x94>
     1ac:	306c0001 	andi	t4,v1,0x1
     1b0:	8c580680 	lw	t8,1664(v0)
     1b4:	3c010080 	lui	at,0x80
     1b8:	02202025 	move	a0,s1
     1bc:	0301c825 	or	t9,t8,at
     1c0:	001949c0 	sll	t1,t9,0x7
     1c4:	05210053 	bgez	t1,314 <func_80A4E470+0x1c4>
     1c8:	ac590680 	sw	t9,1664(v0)
     1cc:	0c000000 	jal	0 <EnGs_Init>
     1d0:	24050001 	li	a1,1
     1d4:	920a019d 	lbu	t2,413(s0)
     1d8:	354b0001 	ori	t3,t2,0x1
     1dc:	1000004d 	b	314 <func_80A4E470+0x1c4>
     1e0:	a20b019d 	sb	t3,413(s0)
     1e4:	1180004b 	beqz	t4,314 <func_80A4E470+0x1c4>
     1e8:	3c010001 	lui	at,0x1
     1ec:	02211821 	addu	v1,s1,at
     1f0:	946404c6 	lhu	a0,1222(v1)
     1f4:	24010004 	li	at,4
     1f8:	14810040 	bne	a0,at,2fc <func_80A4E470+0x1ac>
     1fc:	00000000 	nop
     200:	946204ca 	lhu	v0,1226(v1)
     204:	24010006 	li	at,6
     208:	10410008 	beq	v0,at,22c <func_80A4E470+0xdc>
     20c:	24010007 	li	at,7
     210:	10410006 	beq	v0,at,22c <func_80A4E470+0xdc>
     214:	24010008 	li	at,8
     218:	10410004 	beq	v0,at,22c <func_80A4E470+0xdc>
     21c:	24010009 	li	at,9
     220:	10410002 	beq	v0,at,22c <func_80A4E470+0xdc>
     224:	2401000a 	li	at,10
     228:	14410016 	bne	v0,at,284 <func_80A4E470+0x134>
     22c:	3c014220 	lui	at,0x4220
     230:	44815000 	mtc1	at,$f10
     234:	c6080028 	lwc1	$f8,40(s0)
     238:	8e070024 	lw	a3,36(s0)
     23c:	240d0002 	li	t5,2
     240:	460a4400 	add.s	$f16,$f8,$f10
     244:	26241c24 	addiu	a0,s1,7204
     248:	02202825 	move	a1,s1
     24c:	24060018 	li	a2,24
     250:	e7b00010 	swc1	$f16,16(sp)
     254:	c612002c 	lwc1	$f18,44(s0)
     258:	afad0024 	sw	t5,36(sp)
     25c:	afa00020 	sw	zero,32(sp)
     260:	afa0001c 	sw	zero,28(sp)
     264:	afa00018 	sw	zero,24(sp)
     268:	0c000000 	jal	0 <EnGs_Init>
     26c:	e7b20014 	swc1	$f18,20(sp)
     270:	02002025 	move	a0,s0
     274:	0c000000 	jal	0 <EnGs_Init>
     278:	240528e7 	li	a1,10471
     27c:	10000018 	b	2e0 <func_80A4E470+0x190>
     280:	8605001c 	lh	a1,28(s0)
     284:	2401000b 	li	at,11
     288:	14410014 	bne	v0,at,2dc <func_80A4E470+0x18c>
     28c:	3c014220 	lui	at,0x4220
     290:	44813000 	mtc1	at,$f6
     294:	c6040028 	lwc1	$f4,40(s0)
     298:	8e070024 	lw	a3,36(s0)
     29c:	240e0007 	li	t6,7
     2a0:	46062200 	add.s	$f8,$f4,$f6
     2a4:	26241c24 	addiu	a0,s1,7204
     2a8:	02202825 	move	a1,s1
     2ac:	24060018 	li	a2,24
     2b0:	e7a80010 	swc1	$f8,16(sp)
     2b4:	c60a002c 	lwc1	$f10,44(s0)
     2b8:	afae0024 	sw	t6,36(sp)
     2bc:	afa00020 	sw	zero,32(sp)
     2c0:	afa0001c 	sw	zero,28(sp)
     2c4:	afa00018 	sw	zero,24(sp)
     2c8:	0c000000 	jal	0 <EnGs_Init>
     2cc:	e7aa0014 	swc1	$f10,20(sp)
     2d0:	02002025 	move	a0,s0
     2d4:	0c000000 	jal	0 <EnGs_Init>
     2d8:	240528e7 	li	a1,10471
     2dc:	8605001c 	lh	a1,28(s0)
     2e0:	a200019d 	sb	zero,413(s0)
     2e4:	02202025 	move	a0,s1
     2e8:	00052a03 	sra	a1,a1,0x8
     2ec:	0c000000 	jal	0 <EnGs_Init>
     2f0:	30a5003f 	andi	a1,a1,0x3f
     2f4:	10000008 	b	318 <func_80A4E470+0x1c8>
     2f8:	8fbf0034 	lw	ra,52(sp)
     2fc:	54a40006 	bnel	a1,a0,318 <func_80A4E470+0x1c8>
     300:	8fbf0034 	lw	ra,52(sp)
     304:	8c4f0680 	lw	t7,1664(v0)
     308:	3c010080 	lui	at,0x80
     30c:	01e1c025 	or	t8,t7,at
     310:	ac580680 	sw	t8,1664(v0)
     314:	8fbf0034 	lw	ra,52(sp)
     318:	8fb0002c 	lw	s0,44(sp)
     31c:	8fb10030 	lw	s1,48(sp)
     320:	03e00008 	jr	ra
     324:	27bd0038 	addiu	sp,sp,56

00000328 <func_80A4E648>:
     328:	27bdffd8 	addiu	sp,sp,-40
     32c:	afbf001c 	sw	ra,28(sp)
     330:	afb00018 	sw	s0,24(sp)
     334:	9082019c 	lbu	v0,412(a0)
     338:	24010001 	li	at,1
     33c:	00808025 	move	s0,a0
     340:	14410007 	bne	v0,at,360 <func_80A4E648+0x38>
     344:	00a03025 	move	a2,a1
     348:	00a02025 	move	a0,a1
     34c:	0c000000 	jal	0 <EnGs_Init>
     350:	9605010e 	lhu	a1,270(s0)
     354:	240e0002 	li	t6,2
     358:	10000031 	b	420 <func_80A4E648+0xf8>
     35c:	a20e019c 	sb	t6,412(s0)
     360:	24010002 	li	at,2
     364:	14410006 	bne	v0,at,380 <func_80A4E648+0x58>
     368:	02002025 	move	a0,s0
     36c:	02002025 	move	a0,s0
     370:	0c000000 	jal	0 <EnGs_Init>
     374:	00c02825 	move	a1,a2
     378:	10000029 	b	420 <func_80A4E648+0xf8>
     37c:	a202019c 	sb	v0,412(s0)
     380:	00c02825 	move	a1,a2
     384:	0c000000 	jal	0 <EnGs_Init>
     388:	afa6002c 	sw	a2,44(sp)
     38c:	10400004 	beqz	v0,3a0 <func_80A4E648+0x78>
     390:	8fa4002c 	lw	a0,44(sp)
     394:	240f0002 	li	t7,2
     398:	10000021 	b	420 <func_80A4E648+0xf8>
     39c:	a20f019c 	sb	t7,412(s0)
     3a0:	02002825 	move	a1,s0
     3a4:	27a60026 	addiu	a2,sp,38
     3a8:	0c000000 	jal	0 <EnGs_Init>
     3ac:	27a70024 	addiu	a3,sp,36
     3b0:	87a20026 	lh	v0,38(sp)
     3b4:	0440001a 	bltz	v0,420 <func_80A4E648+0xf8>
     3b8:	28410141 	slti	at,v0,321
     3bc:	10200018 	beqz	at,420 <func_80A4E648+0xf8>
     3c0:	87a20024 	lh	v0,36(sp)
     3c4:	04400016 	bltz	v0,420 <func_80A4E648+0xf8>
     3c8:	284100f1 	slti	at,v0,241
     3cc:	50200015 	beqzl	at,424 <func_80A4E648+0xfc>
     3d0:	8fbf001c 	lw	ra,28(sp)
     3d4:	9218019c 	lbu	t8,412(s0)
     3d8:	24010003 	li	at,3
     3dc:	02002025 	move	a0,s0
     3e0:	1301000f 	beq	t8,at,420 <func_80A4E648+0xf8>
     3e4:	8fa5002c 	lw	a1,44(sp)
     3e8:	0c000000 	jal	0 <EnGs_Init>
     3ec:	3c064220 	lui	a2,0x4220
     3f0:	24010001 	li	at,1
     3f4:	5441000b 	bnel	v0,at,424 <func_80A4E648+0xfc>
     3f8:	8fbf001c 	lw	ra,28(sp)
     3fc:	0c000000 	jal	0 <EnGs_Init>
     400:	8fa4002c 	lw	a0,44(sp)
     404:	24010008 	li	at,8
     408:	14410004 	bne	v0,at,41c <func_80A4E648+0xf4>
     40c:	24082053 	li	t0,8275
     410:	24192054 	li	t9,8276
     414:	10000002 	b	420 <func_80A4E648+0xf8>
     418:	a619010e 	sh	t9,270(s0)
     41c:	a608010e 	sh	t0,270(s0)
     420:	8fbf001c 	lw	ra,28(sp)
     424:	8fb00018 	lw	s0,24(sp)
     428:	27bd0028 	addiu	sp,sp,40
     42c:	03e00008 	jr	ra
     430:	00000000 	nop

00000434 <func_80A4E754>:
     434:	27bdffd0 	addiu	sp,sp,-48
     438:	afa40030 	sw	a0,48(sp)
     43c:	c7a4004c 	lwc1	$f4,76(sp)
     440:	afbf001c 	sw	ra,28(sp)
     444:	afa50034 	sw	a1,52(sp)
     448:	afa60038 	sw	a2,56(sp)
     44c:	afa7003c 	sw	a3,60(sp)
     450:	8ce50000 	lw	a1,0(a3)
     454:	00c02025 	move	a0,a2
     458:	8fa60044 	lw	a2,68(sp)
     45c:	8fa70048 	lw	a3,72(sp)
     460:	0c000000 	jal	0 <EnGs_Init>
     464:	e7a40010 	swc1	$f4,16(sp)
     468:	8faf0054 	lw	t7,84(sp)
     46c:	e7a0002c 	swc1	$f0,44(sp)
     470:	8fa40038 	lw	a0,56(sp)
     474:	15e00059 	bnez	t7,5dc <func_80A4E754+0x1a8>
     478:	8fb8003c 	lw	t8,60(sp)
     47c:	c7a6004c 	lwc1	$f6,76(sp)
     480:	8f050000 	lw	a1,0(t8)
     484:	8fa60044 	lw	a2,68(sp)
     488:	8fa70048 	lw	a3,72(sp)
     48c:	0c000000 	jal	0 <EnGs_Init>
     490:	e7a60010 	swc1	$f6,16(sp)
     494:	8fa20050 	lw	v0,80(sp)
     498:	8fb90040 	lw	t9,64(sp)
     49c:	e7a0002c 	swc1	$f0,44(sp)
     4a0:	44825000 	mtc1	v0,$f10
     4a4:	97280000 	lhu	t0,0(t9)
     4a8:	3c013f80 	lui	at,0x3f80
     4ac:	46805420 	cvt.s.w	$f16,$f10
     4b0:	0102001a 	div	zero,t0,v0
     4b4:	44814000 	mtc1	at,$f8
     4b8:	00004810 	mfhi	t1
     4bc:	44899000 	mtc1	t1,$f18
     4c0:	46104083 	div.s	$f2,$f8,$f16
     4c4:	14400002 	bnez	v0,4d0 <func_80A4E754+0x9c>
     4c8:	00000000 	nop
     4cc:	0007000d 	break	0x7
     4d0:	2401ffff 	li	at,-1
     4d4:	14410004 	bne	v0,at,4e8 <func_80A4E754+0xb4>
     4d8:	3c018000 	lui	at,0x8000
     4dc:	15010002 	bne	t0,at,4e8 <func_80A4E754+0xb4>
     4e0:	00000000 	nop
     4e4:	0006000d 	break	0x6
     4e8:	3c0143b4 	lui	at,0x43b4
     4ec:	44815000 	mtc1	at,$f10
     4f0:	3c010000 	lui	at,0x0
     4f4:	c4300040 	lwc1	$f16,64(at)
     4f8:	46809120 	cvt.s.w	$f4,$f18
     4fc:	e7a20024 	swc1	$f2,36(sp)
     500:	46022182 	mul.s	$f6,$f4,$f2
     504:	00000000 	nop
     508:	460a3202 	mul.s	$f8,$f6,$f10
     50c:	00000000 	nop
     510:	46104302 	mul.s	$f12,$f8,$f16
     514:	0c000000 	jal	0 <EnGs_Init>
     518:	00000000 	nop
     51c:	8faa0038 	lw	t2,56(sp)
     520:	3c013f80 	lui	at,0x3f80
     524:	44813000 	mtc1	at,$f6
     528:	c5520000 	lwc1	$f18,0(t2)
     52c:	8fab0030 	lw	t3,48(sp)
     530:	c7a20024 	lwc1	$f2,36(sp)
     534:	46009102 	mul.s	$f4,$f18,$f0
     538:	46062280 	add.s	$f10,$f4,$f6
     53c:	e56a01b4 	swc1	$f10,436(t3)
     540:	8fac0040 	lw	t4,64(sp)
     544:	8fae0050 	lw	t6,80(sp)
     548:	958d0000 	lhu	t5,0(t4)
     54c:	01ae001a 	div	zero,t5,t6
     550:	00007810 	mfhi	t7
     554:	448f4000 	mtc1	t7,$f8
     558:	15c00002 	bnez	t6,564 <func_80A4E754+0x130>
     55c:	00000000 	nop
     560:	0007000d 	break	0x7
     564:	2401ffff 	li	at,-1
     568:	15c10004 	bne	t6,at,57c <func_80A4E754+0x148>
     56c:	3c018000 	lui	at,0x8000
     570:	15a10002 	bne	t5,at,57c <func_80A4E754+0x148>
     574:	00000000 	nop
     578:	0006000d 	break	0x6
     57c:	46804420 	cvt.s.w	$f16,$f8
     580:	3c0143b4 	lui	at,0x43b4
     584:	44812000 	mtc1	at,$f4
     588:	3c010000 	lui	at,0x0
     58c:	c42a0044 	lwc1	$f10,68(at)
     590:	46028482 	mul.s	$f18,$f16,$f2
     594:	00000000 	nop
     598:	46049182 	mul.s	$f6,$f18,$f4
     59c:	00000000 	nop
     5a0:	460a3302 	mul.s	$f12,$f6,$f10
     5a4:	0c000000 	jal	0 <EnGs_Init>
     5a8:	00000000 	nop
     5ac:	8fb80038 	lw	t8,56(sp)
     5b0:	3c013f80 	lui	at,0x3f80
     5b4:	44814000 	mtc1	at,$f8
     5b8:	c7100000 	lwc1	$f16,0(t8)
     5bc:	8fb90030 	lw	t9,48(sp)
     5c0:	8fa20040 	lw	v0,64(sp)
     5c4:	46008482 	mul.s	$f18,$f16,$f0
     5c8:	46124101 	sub.s	$f4,$f8,$f18
     5cc:	e72401b8 	swc1	$f4,440(t9)
     5d0:	94480000 	lhu	t0,0(v0)
     5d4:	25090001 	addiu	t1,t0,1
     5d8:	a4490000 	sh	t1,0(v0)
     5dc:	8fbf001c 	lw	ra,28(sp)
     5e0:	c7a0002c 	lwc1	$f0,44(sp)
     5e4:	27bd0030 	addiu	sp,sp,48
     5e8:	03e00008 	jr	ra
     5ec:	00000000 	nop

000005f0 <func_80A4E910>:
     5f0:	27bdffc8 	addiu	sp,sp,-56
     5f4:	afbf0034 	sw	ra,52(sp)
     5f8:	afb00030 	sw	s0,48(sp)
     5fc:	afa5003c 	sw	a1,60(sp)
     600:	9082019f 	lbu	v0,415(a0)
     604:	00808025 	move	s0,a0
     608:	24010001 	li	at,1
     60c:	1440000c 	bnez	v0,640 <func_80A4E910+0x50>
     610:	00000000 	nop
     614:	0c000000 	jal	0 <EnGs_Init>
     618:	24053831 	li	a1,14385
     61c:	3c013f00 	lui	at,0x3f00
     620:	44812000 	mtc1	at,$f4
     624:	44803000 	mtc1	zero,$f6
     628:	240e0001 	li	t6,1
     62c:	a6000200 	sh	zero,512(s0)
     630:	a20e019f 	sb	t6,415(s0)
     634:	e60401e8 	swc1	$f4,488(s0)
     638:	10000026 	b	6d4 <func_80A4E910+0xe4>
     63c:	e60601ec 	swc1	$f6,492(s0)
     640:	14410024 	bne	v0,at,6d4 <func_80A4E910+0xe4>
     644:	02002025 	move	a0,s0
     648:	3c010000 	lui	at,0x0
     64c:	c4280048 	lwc1	$f8,72(at)
     650:	3c010000 	lui	at,0x0
     654:	c42a004c 	lwc1	$f10,76(at)
     658:	3c010000 	lui	at,0x0
     65c:	c4300050 	lwc1	$f16,80(at)
     660:	260f0200 	addiu	t7,s0,512
     664:	24180007 	li	t8,7
     668:	afb80020 	sw	t8,32(sp)
     66c:	afaf0010 	sw	t7,16(sp)
     670:	8fa5003c 	lw	a1,60(sp)
     674:	260601e8 	addiu	a2,s0,488
     678:	260701ec 	addiu	a3,s0,492
     67c:	afa00024 	sw	zero,36(sp)
     680:	e7a80014 	swc1	$f8,20(sp)
     684:	e7aa0018 	swc1	$f10,24(sp)
     688:	0c000000 	jal	0 <EnGs_Init>
     68c:	e7b0001c 	swc1	$f16,28(sp)
     690:	44809000 	mtc1	zero,$f18
     694:	00000000 	nop
     698:	46120032 	c.eq.s	$f0,$f18
     69c:	00000000 	nop
     6a0:	4502000d 	bc1fl	6d8 <func_80A4E910+0xe8>
     6a4:	8fbf0034 	lw	ra,52(sp)
     6a8:	0c000000 	jal	0 <EnGs_Init>
     6ac:	8fa4003c 	lw	a0,60(sp)
     6b0:	14400004 	bnez	v0,6c4 <func_80A4E910+0xd4>
     6b4:	8fa4003c 	lw	a0,60(sp)
     6b8:	240571b1 	li	a1,29105
     6bc:	0c000000 	jal	0 <EnGs_Init>
     6c0:	00003025 	move	a2,zero
     6c4:	3c190000 	lui	t9,0x0
     6c8:	27390000 	addiu	t9,t9,0
     6cc:	a200019c 	sb	zero,412(s0)
     6d0:	ae190198 	sw	t9,408(s0)
     6d4:	8fbf0034 	lw	ra,52(sp)
     6d8:	8fb00030 	lw	s0,48(sp)
     6dc:	27bd0038 	addiu	sp,sp,56
     6e0:	03e00008 	jr	ra
     6e4:	00000000 	nop

000006e8 <func_80A4EA08>:
     6e8:	27bdffd0 	addiu	sp,sp,-48
     6ec:	afbf002c 	sw	ra,44(sp)
     6f0:	9082019f 	lbu	v0,415(a0)
     6f4:	24010001 	li	at,1
     6f8:	1440000e 	bnez	v0,734 <func_80A4EA08+0x4c>
     6fc:	00000000 	nop
     700:	24053831 	li	a1,14385
     704:	0c000000 	jal	0 <EnGs_Init>
     708:	afa40030 	sw	a0,48(sp)
     70c:	8fa40030 	lw	a0,48(sp)
     710:	3c010000 	lui	at,0x0
     714:	c4240054 	lwc1	$f4,84(at)
     718:	44803000 	mtc1	zero,$f6
     71c:	240e0001 	li	t6,1
     720:	a4800200 	sh	zero,512(a0)
     724:	a08e019f 	sb	t6,415(a0)
     728:	e48401e8 	swc1	$f4,488(a0)
     72c:	10000037 	b	80c <func_80A4EA08+0x124>
     730:	e48601ec 	swc1	$f6,492(a0)
     734:	54410036 	bnel	v0,at,810 <func_80A4EA08+0x128>
     738:	8fbf002c 	lw	ra,44(sp)
     73c:	948f0200 	lhu	t7,512(a0)
     740:	3c013e00 	lui	at,0x3e00
     744:	44818000 	mtc1	at,$f16
     748:	05e10004 	bgez	t7,75c <func_80A4EA08+0x74>
     74c:	31f80007 	andi	t8,t7,0x7
     750:	13000002 	beqz	t8,75c <func_80A4EA08+0x74>
     754:	00000000 	nop
     758:	2718fff8 	addiu	t8,t8,-8
     75c:	44984000 	mtc1	t8,$f8
     760:	3c0143b4 	lui	at,0x43b4
     764:	44812000 	mtc1	at,$f4
     768:	468042a0 	cvt.s.w	$f10,$f8
     76c:	3c010000 	lui	at,0x0
     770:	c4280058 	lwc1	$f8,88(at)
     774:	3c010000 	lui	at,0x0
     778:	248b0200 	addiu	t3,a0,512
     77c:	240c0007 	li	t4,7
     780:	46105482 	mul.s	$f18,$f10,$f16
     784:	248601e8 	addiu	a2,a0,488
     788:	248701ec 	addiu	a3,a0,492
     78c:	46049182 	mul.s	$f6,$f18,$f4
     790:	00000000 	nop
     794:	46083282 	mul.s	$f10,$f6,$f8
     798:	4600540d 	trunc.w.s	$f16,$f10
     79c:	44088000 	mfc1	t0,$f16
     7a0:	00000000 	nop
     7a4:	a48801a4 	sh	t0,420(a0)
     7a8:	848901a4 	lh	t1,420(a0)
     7ac:	00095023 	negu	t2,t1
     7b0:	a48a01aa 	sh	t2,426(a0)
     7b4:	c432005c 	lwc1	$f18,92(at)
     7b8:	3c010000 	lui	at,0x0
     7bc:	c4240060 	lwc1	$f4,96(at)
     7c0:	3c010000 	lui	at,0x0
     7c4:	c4260064 	lwc1	$f6,100(at)
     7c8:	afa40030 	sw	a0,48(sp)
     7cc:	afa00024 	sw	zero,36(sp)
     7d0:	afac0020 	sw	t4,32(sp)
     7d4:	afab0010 	sw	t3,16(sp)
     7d8:	e7b20014 	swc1	$f18,20(sp)
     7dc:	e7a40018 	swc1	$f4,24(sp)
     7e0:	0c000000 	jal	0 <EnGs_Init>
     7e4:	e7a6001c 	swc1	$f6,28(sp)
     7e8:	44804000 	mtc1	zero,$f8
     7ec:	3c0d0000 	lui	t5,0x0
     7f0:	8fa40030 	lw	a0,48(sp)
     7f4:	46080032 	c.eq.s	$f0,$f8
     7f8:	25ad0000 	addiu	t5,t5,0
     7fc:	45020004 	bc1fl	810 <func_80A4EA08+0x128>
     800:	8fbf002c 	lw	ra,44(sp)
     804:	a080019c 	sb	zero,412(a0)
     808:	ac8d0198 	sw	t5,408(a0)
     80c:	8fbf002c 	lw	ra,44(sp)
     810:	27bd0030 	addiu	sp,sp,48
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <func_80A4EB3C>:
     81c:	27bdffc8 	addiu	sp,sp,-56
     820:	afbf0034 	sw	ra,52(sp)
     824:	afb00030 	sw	s0,48(sp)
     828:	9083019f 	lbu	v1,415(a0)
     82c:	00808025 	move	s0,a0
     830:	24010001 	li	at,1
     834:	1460000c 	bnez	v1,868 <func_80A4EB3C+0x4c>
     838:	00601025 	move	v0,v1
     83c:	3c013f80 	lui	at,0x3f80
     840:	44813000 	mtc1	at,$f6
     844:	c48401b8 	lwc1	$f4,440(a0)
     848:	3c010000 	lui	at,0x0
     84c:	246e0001 	addiu	t6,v1,1
     850:	46062201 	sub.s	$f8,$f4,$f6
     854:	e48801e8 	swc1	$f8,488(a0)
     858:	c42a0068 	lwc1	$f10,104(at)
     85c:	a08e019f 	sb	t6,415(a0)
     860:	10000067 	b	a00 <func_80A4EB3C+0x1e4>
     864:	e48a01ec 	swc1	$f10,492(a0)
     868:	14410016 	bne	v0,at,8c4 <func_80A4EB3C+0xa8>
     86c:	260401e8 	addiu	a0,s0,488
     870:	3c010000 	lui	at,0x0
     874:	c430006c 	lwc1	$f16,108(at)
     878:	8e0501ec 	lw	a1,492(s0)
     87c:	3c073ecc 	lui	a3,0x3ecc
     880:	34e7cccd 	ori	a3,a3,0xcccd
     884:	3c063f80 	lui	a2,0x3f80
     888:	0c000000 	jal	0 <EnGs_Init>
     88c:	e7b00010 	swc1	$f16,16(sp)
     890:	44801000 	mtc1	zero,$f2
     894:	3c013f80 	lui	at,0x3f80
     898:	44812000 	mtc1	at,$f4
     89c:	c61201e8 	lwc1	$f18,488(s0)
     8a0:	46020032 	c.eq.s	$f0,$f2
     8a4:	46049180 	add.s	$f6,$f18,$f4
     8a8:	45000055 	bc1f	a00 <func_80A4EB3C+0x1e4>
     8ac:	e60601b8 	swc1	$f6,440(s0)
     8b0:	920f019f 	lbu	t7,415(s0)
     8b4:	a6000200 	sh	zero,512(s0)
     8b8:	25f80001 	addiu	t8,t7,1
     8bc:	10000050 	b	a00 <func_80A4EB3C+0x1e4>
     8c0:	a218019f 	sb	t8,415(s0)
     8c4:	24010002 	li	at,2
     8c8:	54410013 	bnel	v0,at,918 <func_80A4EB3C+0xfc>
     8cc:	24010003 	li	at,3
     8d0:	96190200 	lhu	t9,512(s0)
     8d4:	27280001 	addiu	t0,t9,1
     8d8:	3109ffff 	andi	t1,t0,0xffff
     8dc:	29210064 	slti	at,t1,100
     8e0:	14200047 	bnez	at,a00 <func_80A4EB3C+0x1e4>
     8e4:	a6080200 	sh	t0,512(s0)
     8e8:	3c013f80 	lui	at,0x3f80
     8ec:	44815000 	mtc1	at,$f10
     8f0:	c60801b8 	lwc1	$f8,440(s0)
     8f4:	920a019f 	lbu	t2,415(s0)
     8f8:	44801000 	mtc1	zero,$f2
     8fc:	460a4401 	sub.s	$f16,$f8,$f10
     900:	254b0001 	addiu	t3,t2,1
     904:	a20b019f 	sb	t3,415(s0)
     908:	e60201ec 	swc1	$f2,492(s0)
     90c:	1000003c 	b	a00 <func_80A4EB3C+0x1e4>
     910:	e61001e8 	swc1	$f16,488(s0)
     914:	24010003 	li	at,3
     918:	1441001c 	bne	v0,at,98c <func_80A4EB3C+0x170>
     91c:	260401e8 	addiu	a0,s0,488
     920:	3c010000 	lui	at,0x0
     924:	c4320070 	lwc1	$f18,112(at)
     928:	8e0501ec 	lw	a1,492(s0)
     92c:	3c063f80 	lui	a2,0x3f80
     930:	3c073f00 	lui	a3,0x3f00
     934:	0c000000 	jal	0 <EnGs_Init>
     938:	e7b20010 	swc1	$f18,16(sp)
     93c:	44801000 	mtc1	zero,$f2
     940:	3c013f80 	lui	at,0x3f80
     944:	44813000 	mtc1	at,$f6
     948:	c60401e8 	lwc1	$f4,488(s0)
     94c:	46020032 	c.eq.s	$f0,$f2
     950:	3c013f00 	lui	at,0x3f00
     954:	46062200 	add.s	$f8,$f4,$f6
     958:	02002025 	move	a0,s0
     95c:	24053831 	li	a1,14385
     960:	45000027 	bc1f	a00 <func_80A4EB3C+0x1e4>
     964:	e60801b8 	swc1	$f8,440(s0)
     968:	44815000 	mtc1	at,$f10
     96c:	e60201ec 	swc1	$f2,492(s0)
     970:	a6000200 	sh	zero,512(s0)
     974:	0c000000 	jal	0 <EnGs_Init>
     978:	e60a01e8 	swc1	$f10,488(s0)
     97c:	920c019f 	lbu	t4,415(s0)
     980:	258d0001 	addiu	t5,t4,1
     984:	1000001e 	b	a00 <func_80A4EB3C+0x1e4>
     988:	a20d019f 	sb	t5,415(s0)
     98c:	24010004 	li	at,4
     990:	1441001b 	bne	v0,at,a00 <func_80A4EB3C+0x1e4>
     994:	02002025 	move	a0,s0
     998:	3c013f80 	lui	at,0x3f80
     99c:	44818000 	mtc1	at,$f16
     9a0:	3c010000 	lui	at,0x0
     9a4:	c4320074 	lwc1	$f18,116(at)
     9a8:	3c010000 	lui	at,0x0
     9ac:	c4240078 	lwc1	$f4,120(at)
     9b0:	260e0200 	addiu	t6,s0,512
     9b4:	240f0005 	li	t7,5
     9b8:	afaf0020 	sw	t7,32(sp)
     9bc:	afae0010 	sw	t6,16(sp)
     9c0:	260601e8 	addiu	a2,s0,488
     9c4:	260701ec 	addiu	a3,s0,492
     9c8:	afa00024 	sw	zero,36(sp)
     9cc:	e7b00014 	swc1	$f16,20(sp)
     9d0:	e7b20018 	swc1	$f18,24(sp)
     9d4:	0c000000 	jal	0 <EnGs_Init>
     9d8:	e7a4001c 	swc1	$f4,28(sp)
     9dc:	44801000 	mtc1	zero,$f2
     9e0:	3c180000 	lui	t8,0x0
     9e4:	27180000 	addiu	t8,t8,0
     9e8:	46020032 	c.eq.s	$f0,$f2
     9ec:	00000000 	nop
     9f0:	45020004 	bc1fl	a04 <func_80A4EB3C+0x1e8>
     9f4:	8fbf0034 	lw	ra,52(sp)
     9f8:	a200019c 	sb	zero,412(s0)
     9fc:	ae180198 	sw	t8,408(s0)
     a00:	8fbf0034 	lw	ra,52(sp)
     a04:	8fb00030 	lw	s0,48(sp)
     a08:	27bd0038 	addiu	sp,sp,56
     a0c:	03e00008 	jr	ra
     a10:	00000000 	nop

00000a14 <func_80A4ED34>:
     a14:	27bdff88 	addiu	sp,sp,-120
     a18:	afbf003c 	sw	ra,60(sp)
     a1c:	afb10038 	sw	s1,56(sp)
     a20:	afb00034 	sw	s0,52(sp)
     a24:	f7b40028 	sdc1	$f20,40(sp)
     a28:	afa5007c 	sw	a1,124(sp)
     a2c:	9083019f 	lbu	v1,415(a0)
     a30:	00808825 	move	s1,a0
     a34:	24010001 	li	at,1
     a38:	14600006 	bnez	v1,a54 <func_80A4ED34+0x40>
     a3c:	00601025 	move	v0,v1
     a40:	246f0001 	addiu	t7,v1,1
     a44:	240e0028 	li	t6,40
     a48:	a48e0200 	sh	t6,512(a0)
     a4c:	a08f019f 	sb	t7,415(a0)
     a50:	31e200ff 	andi	v0,t7,0xff
     a54:	1441000e 	bne	v0,at,a90 <func_80A4ED34+0x7c>
     a58:	263001e4 	addiu	s0,s1,484
     a5c:	96220200 	lhu	v0,512(s1)
     a60:	24190050 	li	t9,80
     a64:	2c430001 	sltiu	v1,v0,1
     a68:	2458ffff 	addiu	t8,v0,-1
     a6c:	10600008 	beqz	v1,a90 <func_80A4ED34+0x7c>
     a70:	a6380200 	sh	t8,512(s1)
     a74:	9228019e 	lbu	t0,414(s1)
     a78:	922a019f 	lbu	t2,415(s1)
     a7c:	a6390200 	sh	t9,512(s1)
     a80:	35090004 	ori	t1,t0,0x4
     a84:	254b0001 	addiu	t3,t2,1
     a88:	a229019e 	sb	t1,414(s1)
     a8c:	a22b019f 	sb	t3,415(s1)
     a90:	922c019f 	lbu	t4,415(s1)
     a94:	24010002 	li	at,2
     a98:	02002025 	move	a0,s0
     a9c:	55810048 	bnel	t4,at,bc0 <func_80A4ED34+0x1ac>
     aa0:	922e019f 	lbu	t6,415(s1)
     aa4:	962d0200 	lhu	t5,512(s1)
     aa8:	3c050000 	lui	a1,0x0
     aac:	24a50084 	addiu	a1,a1,132
     ab0:	25aeffff 	addiu	t6,t5,-1
     ab4:	0c000000 	jal	0 <EnGs_Init>
     ab8:	a62e0200 	sh	t6,512(s1)
     abc:	96220200 	lhu	v0,512(s1)
     ac0:	28410050 	slti	at,v0,80
     ac4:	10200034 	beqz	at,b98 <func_80A4ED34+0x184>
     ac8:	24010014 	li	at,20
     acc:	0041001a 	div	zero,v0,at
     ad0:	00007810 	mfhi	t7
     ad4:	29e10008 	slti	at,t7,8
     ad8:	1020002f 	beqz	at,b98 <func_80A4ED34+0x184>
     adc:	28410014 	slti	at,v0,20
     ae0:	10200018 	beqz	at,b44 <func_80A4ED34+0x130>
     ae4:	02002025 	move	a0,s0
     ae8:	3c050000 	lui	a1,0x0
     aec:	24a5007c 	addiu	a1,a1,124
     af0:	0c000000 	jal	0 <EnGs_Init>
     af4:	02002025 	move	a0,s0
     af8:	96220200 	lhu	v0,512(s1)
     afc:	24010014 	li	at,20
     b00:	3c070000 	lui	a3,0x0
     b04:	0041001a 	div	zero,v0,at
     b08:	0000c010 	mfhi	t8
     b0c:	24010007 	li	at,7
     b10:	17010021 	bne	t8,at,b98 <func_80A4ED34+0x184>
     b14:	24e70000 	addiu	a3,a3,0
     b18:	3c190000 	lui	t9,0x0
     b1c:	27390000 	addiu	t9,t9,0
     b20:	3c050000 	lui	a1,0x0
     b24:	24a50000 	addiu	a1,a1,0
     b28:	afb90014 	sw	t9,20(sp)
     b2c:	2404481a 	li	a0,18458
     b30:	24060004 	li	a2,4
     b34:	0c000000 	jal	0 <EnGs_Init>
     b38:	afa70010 	sw	a3,16(sp)
     b3c:	10000016 	b	b98 <func_80A4ED34+0x184>
     b40:	96220200 	lhu	v0,512(s1)
     b44:	3c050000 	lui	a1,0x0
     b48:	0c000000 	jal	0 <EnGs_Init>
     b4c:	24a50080 	addiu	a1,a1,128
     b50:	96220200 	lhu	v0,512(s1)
     b54:	24010014 	li	at,20
     b58:	3c070000 	lui	a3,0x0
     b5c:	0041001a 	div	zero,v0,at
     b60:	00004010 	mfhi	t0
     b64:	24010007 	li	at,7
     b68:	1501000b 	bne	t0,at,b98 <func_80A4ED34+0x184>
     b6c:	24e70000 	addiu	a3,a3,0
     b70:	3c090000 	lui	t1,0x0
     b74:	25290000 	addiu	t1,t1,0
     b78:	3c050000 	lui	a1,0x0
     b7c:	24a50000 	addiu	a1,a1,0
     b80:	afa90014 	sw	t1,20(sp)
     b84:	24044819 	li	a0,18457
     b88:	24060004 	li	a2,4
     b8c:	0c000000 	jal	0 <EnGs_Init>
     b90:	afa70010 	sw	a3,16(sp)
     b94:	96220200 	lhu	v0,512(s1)
     b98:	5c400009 	bgtzl	v0,bc0 <func_80A4ED34+0x1ac>
     b9c:	922e019f 	lbu	t6,415(s1)
     ba0:	922a019e 	lbu	t2,414(s1)
     ba4:	922c019f 	lbu	t4,415(s1)
     ba8:	a6200200 	sh	zero,512(s1)
     bac:	314bfffb 	andi	t3,t2,0xfffb
     bb0:	258d0001 	addiu	t5,t4,1
     bb4:	a22b019e 	sb	t3,414(s1)
     bb8:	a22d019f 	sb	t5,415(s1)
     bbc:	922e019f 	lbu	t6,415(s1)
     bc0:	24010003 	li	at,3
     bc4:	15c10051 	bne	t6,at,d0c <func_80A4ED34+0x2f8>
     bc8:	3c014170 	lui	at,0x4170
     bcc:	4481a000 	mtc1	at,$f20
     bd0:	00008025 	move	s0,zero
     bd4:	0c000000 	jal	0 <EnGs_Init>
     bd8:	4600a306 	mov.s	$f12,$f20
     bdc:	3c01bf80 	lui	at,0xbf80
     be0:	44816000 	mtc1	at,$f12
     be4:	0c000000 	jal	0 <EnGs_Init>
     be8:	e7a0005c 	swc1	$f0,92(sp)
     bec:	e7a00060 	swc1	$f0,96(sp)
     bf0:	0c000000 	jal	0 <EnGs_Init>
     bf4:	4600a306 	mov.s	$f12,$f20
     bf8:	c7a4005c 	lwc1	$f4,92(sp)
     bfc:	e7a00064 	swc1	$f0,100(sp)
     c00:	c6280024 	lwc1	$f8,36(s1)
     c04:	46042180 	add.s	$f6,$f4,$f4
     c08:	3c0140e0 	lui	at,0x40e0
     c0c:	44819000 	mtc1	at,$f18
     c10:	3c014248 	lui	at,0x4248
     c14:	46064280 	add.s	$f10,$f8,$f6
     c18:	44816000 	mtc1	at,$f12
     c1c:	46000180 	add.s	$f6,$f0,$f0
     c20:	e7aa0068 	swc1	$f10,104(sp)
     c24:	c6300028 	lwc1	$f16,40(s1)
     c28:	46128100 	add.s	$f4,$f16,$f18
     c2c:	e7a4006c 	swc1	$f4,108(sp)
     c30:	c628002c 	lwc1	$f8,44(s1)
     c34:	46064280 	add.s	$f10,$f8,$f6
     c38:	0c000000 	jal	0 <EnGs_Init>
     c3c:	e7aa0070 	swc1	$f10,112(sp)
     c40:	4600040d 	trunc.w.s	$f16,$f0
     c44:	3c0f0000 	lui	t7,0x0
     c48:	3c180000 	lui	t8,0x0
     c4c:	27180098 	addiu	t8,t8,152
     c50:	44088000 	mfc1	t0,$f16
     c54:	25ef0094 	addiu	t7,t7,148
     c58:	3c070000 	lui	a3,0x0
     c5c:	00084c00 	sll	t1,t0,0x10
     c60:	00095403 	sra	t2,t1,0x10
     c64:	254b00c8 	addiu	t3,t2,200
     c68:	240c0028 	li	t4,40
     c6c:	240d000f 	li	t5,15
     c70:	afad0020 	sw	t5,32(sp)
     c74:	afac001c 	sw	t4,28(sp)
     c78:	afab0018 	sw	t3,24(sp)
     c7c:	24e70088 	addiu	a3,a3,136
     c80:	afaf0010 	sw	t7,16(sp)
     c84:	afb80014 	sw	t8,20(sp)
     c88:	8fa4007c 	lw	a0,124(sp)
     c8c:	27a50068 	addiu	a1,sp,104
     c90:	0c000000 	jal	0 <EnGs_Init>
     c94:	27a6005c 	addiu	a2,sp,92
     c98:	26100001 	addiu	s0,s0,1
     c9c:	321000ff 	andi	s0,s0,0xff
     ca0:	2a010003 	slti	at,s0,3
     ca4:	1420ffcb 	bnez	at,bd4 <func_80A4ED34+0x1c0>
     ca8:	00000000 	nop
     cac:	02202025 	move	a0,s1
     cb0:	0c000000 	jal	0 <EnGs_Init>
     cb4:	24052033 	li	a1,8243
     cb8:	96220200 	lhu	v0,512(s1)
     cbc:	28430028 	slti	v1,v0,40
     cc0:	38630001 	xori	v1,v1,0x1
     cc4:	244e0001 	addiu	t6,v0,1
     cc8:	10600010 	beqz	v1,d0c <func_80A4ED34+0x2f8>
     ccc:	a62e0200 	sh	t6,512(s1)
     cd0:	922f019e 	lbu	t7,414(s1)
     cd4:	8e390004 	lw	t9,4(s1)
     cd8:	3c010000 	lui	at,0x0
     cdc:	35f80010 	ori	t8,t7,0x10
     ce0:	37280010 	ori	t0,t9,0x10
     ce4:	a238019e 	sb	t8,414(s1)
     ce8:	ae280004 	sw	t0,4(s1)
     cec:	c432007c 	lwc1	$f18,124(at)
     cf0:	9229019f 	lbu	t1,415(s1)
     cf4:	3c010000 	lui	at,0x0
     cf8:	e63200f4 	swc1	$f18,244(s1)
     cfc:	c4240080 	lwc1	$f4,128(at)
     d00:	252a0001 	addiu	t2,t1,1
     d04:	a22a019f 	sb	t2,415(s1)
     d08:	e624006c 	swc1	$f4,108(s1)
     d0c:	922b019f 	lbu	t3,415(s1)
     d10:	24010004 	li	at,4
     d14:	8fa4007c 	lw	a0,124(sp)
     d18:	1561003a 	bne	t3,at,e04 <func_80A4ED34+0x3f0>
     d1c:	02202825 	move	a1,s1
     d20:	3c0141a0 	lui	at,0x41a0
     d24:	44810000 	mtc1	at,$f0
     d28:	3c014270 	lui	at,0x4270
     d2c:	44814000 	mtc1	at,$f8
     d30:	240c0003 	li	t4,3
     d34:	44060000 	mfc1	a2,$f0
     d38:	44070000 	mfc1	a3,$f0
     d3c:	afac0014 	sw	t4,20(sp)
     d40:	0c000000 	jal	0 <EnGs_Init>
     d44:	e7a80010 	swc1	$f8,16(sp)
     d48:	962d0088 	lhu	t5,136(s1)
     d4c:	02202025 	move	a0,s1
     d50:	31ae0018 	andi	t6,t5,0x18
     d54:	11c0001e 	beqz	t6,dd0 <func_80A4ED34+0x3bc>
     d58:	00000000 	nop
     d5c:	c6260024 	lwc1	$f6,36(s1)
     d60:	02202025 	move	a0,s1
     d64:	2405180e 	li	a1,6158
     d68:	e7a60050 	swc1	$f6,80(sp)
     d6c:	c62a0028 	lwc1	$f10,40(s1)
     d70:	e7aa0054 	swc1	$f10,84(sp)
     d74:	c630002c 	lwc1	$f16,44(s1)
     d78:	0c000000 	jal	0 <EnGs_Init>
     d7c:	e7b00058 	swc1	$f16,88(sp)
     d80:	3c060000 	lui	a2,0x0
     d84:	3c070000 	lui	a3,0x0
     d88:	240f0064 	li	t7,100
     d8c:	24180014 	li	t8,20
     d90:	afb80014 	sw	t8,20(sp)
     d94:	afaf0010 	sw	t7,16(sp)
     d98:	24e700a8 	addiu	a3,a3,168
     d9c:	24c6009c 	addiu	a2,a2,156
     da0:	8fa4007c 	lw	a0,124(sp)
     da4:	0c000000 	jal	0 <EnGs_Init>
     da8:	27a50050 	addiu	a1,sp,80
     dac:	9228019e 	lbu	t0,414(s1)
     db0:	3c0a0000 	lui	t2,0x0
     db4:	2419000a 	li	t9,10
     db8:	254a0000 	addiu	t2,t2,0
     dbc:	35090008 	ori	t1,t0,0x8
     dc0:	a6390200 	sh	t9,512(s1)
     dc4:	a229019e 	sb	t1,414(s1)
     dc8:	10000003 	b	dd8 <func_80A4ED34+0x3c4>
     dcc:	ae2a0198 	sw	t2,408(s1)
     dd0:	0c000000 	jal	0 <EnGs_Init>
     dd4:	240520ea 	li	a1,8426
     dd8:	0c000000 	jal	0 <EnGs_Init>
     ddc:	02202025 	move	a0,s1
     de0:	3c010000 	lui	at,0x0
     de4:	c4240084 	lwc1	$f4,132(at)
     de8:	c6320094 	lwc1	$f18,148(s1)
     dec:	4604903c 	c.lt.s	$f18,$f4
     df0:	00000000 	nop
     df4:	45020004 	bc1fl	e08 <func_80A4ED34+0x3f4>
     df8:	8fbf003c 	lw	ra,60(sp)
     dfc:	0c000000 	jal	0 <EnGs_Init>
     e00:	02202025 	move	a0,s1
     e04:	8fbf003c 	lw	ra,60(sp)
     e08:	d7b40028 	ldc1	$f20,40(sp)
     e0c:	8fb00034 	lw	s0,52(sp)
     e10:	8fb10038 	lw	s1,56(sp)
     e14:	03e00008 	jr	ra
     e18:	27bd0078 	addiu	sp,sp,120

00000e1c <func_80A4F13C>:
     e1c:	27bdffb8 	addiu	sp,sp,-72
     e20:	afbf0024 	sw	ra,36(sp)
     e24:	afb00020 	sw	s0,32(sp)
     e28:	afa5004c 	sw	a1,76(sp)
     e2c:	848e01a2 	lh	t6,418(a0)
     e30:	00808025 	move	s0,a0
     e34:	3c0142b4 	lui	at,0x42b4
     e38:	a7ae0036 	sh	t6,54(sp)
     e3c:	9082019f 	lbu	v0,415(a0)
     e40:	240f0001 	li	t7,1
     e44:	3c063f80 	lui	a2,0x3f80
     e48:	1440000f 	bnez	v0,e88 <func_80A4F13C+0x6c>
     e4c:	3c073dcc 	lui	a3,0x3dcc
     e50:	44802000 	mtc1	zero,$f4
     e54:	44813000 	mtc1	at,$f6
     e58:	3c010000 	lui	at,0x0
     e5c:	e48401e8 	swc1	$f4,488(a0)
     e60:	e48601ec 	swc1	$f6,492(a0)
     e64:	c4280088 	lwc1	$f8,136(at)
     e68:	3c014000 	lui	at,0x4000
     e6c:	44815000 	mtc1	at,$f10
     e70:	44808000 	mtc1	zero,$f16
     e74:	a08f019f 	sb	t7,415(a0)
     e78:	31e200ff 	andi	v0,t7,0xff
     e7c:	e48801f0 	swc1	$f8,496(a0)
     e80:	e48a01f4 	swc1	$f10,500(a0)
     e84:	e49001f8 	swc1	$f16,504(a0)
     e88:	24010001 	li	at,1
     e8c:	1441001f 	bne	v0,at,f0c <func_80A4F13C+0xf0>
     e90:	260401f0 	addiu	a0,s0,496
     e94:	3c010000 	lui	at,0x0
     e98:	c432008c 	lwc1	$f18,140(at)
     e9c:	8e0501f4 	lw	a1,500(s0)
     ea0:	34e7cccd 	ori	a3,a3,0xcccd
     ea4:	0c000000 	jal	0 <EnGs_Init>
     ea8:	e7b20010 	swc1	$f18,16(sp)
     eac:	3c010000 	lui	at,0x0
     eb0:	c4240090 	lwc1	$f4,144(at)
     eb4:	8e0501ec 	lw	a1,492(s0)
     eb8:	8e0701f0 	lw	a3,496(s0)
     ebc:	260401e8 	addiu	a0,s0,488
     ec0:	3c063f80 	lui	a2,0x3f80
     ec4:	0c000000 	jal	0 <EnGs_Init>
     ec8:	e7a40010 	swc1	$f4,16(sp)
     ecc:	3c010000 	lui	at,0x0
     ed0:	c4280094 	lwc1	$f8,148(at)
     ed4:	c60601e8 	lwc1	$f6,488(s0)
     ed8:	44809000 	mtc1	zero,$f18
     edc:	860801a2 	lh	t0,418(s0)
     ee0:	46083282 	mul.s	$f10,$f6,$f8
     ee4:	46120032 	c.eq.s	$f0,$f18
     ee8:	240a0002 	li	t2,2
     eec:	4600540d 	trunc.w.s	$f16,$f10
     ef0:	44198000 	mfc1	t9,$f16
     ef4:	00000000 	nop
     ef8:	01194821 	addu	t1,t0,t9
     efc:	45000003 	bc1f	f0c <func_80A4F13C+0xf0>
     f00:	a60901a2 	sh	t1,418(s0)
     f04:	a6000200 	sh	zero,512(s0)
     f08:	a20a019f 	sb	t2,415(s0)
     f0c:	920b019f 	lbu	t3,415(s0)
     f10:	24010002 	li	at,2
     f14:	15610023 	bne	t3,at,fa4 <func_80A4F13C+0x188>
     f18:	3c010000 	lui	at,0x0
     f1c:	c4260098 	lwc1	$f6,152(at)
     f20:	c60401e8 	lwc1	$f4,488(s0)
     f24:	96020200 	lhu	v0,512(s0)
     f28:	860e01a2 	lh	t6,418(s0)
     f2c:	46062202 	mul.s	$f8,$f4,$f6
     f30:	28430029 	slti	v1,v0,41
     f34:	38630001 	xori	v1,v1,0x1
     f38:	24580001 	addiu	t8,v0,1
     f3c:	a6180200 	sh	t8,512(s0)
     f40:	3c013f80 	lui	at,0x3f80
     f44:	4600428d 	trunc.w.s	$f10,$f8
     f48:	440d5000 	mfc1	t5,$f10
     f4c:	00000000 	nop
     f50:	01cd7821 	addu	t7,t6,t5
     f54:	10600013 	beqz	v1,fa4 <func_80A4F13C+0x188>
     f58:	a60f01a2 	sh	t7,418(s0)
     f5c:	44810000 	mtc1	at,$f0
     f60:	c61001b8 	lwc1	$f16,440(s0)
     f64:	c60601c4 	lwc1	$f6,452(s0)
     f68:	3c013fc0 	lui	at,0x3fc0
     f6c:	46008481 	sub.s	$f18,$f16,$f0
     f70:	44812000 	mtc1	at,$f4
     f74:	3c010000 	lui	at,0x0
     f78:	46003201 	sub.s	$f8,$f6,$f0
     f7c:	e61201e8 	swc1	$f18,488(s0)
     f80:	e60401ec 	swc1	$f4,492(s0)
     f84:	02002025 	move	a0,s0
     f88:	e60801f0 	swc1	$f8,496(s0)
     f8c:	c42a009c 	lwc1	$f10,156(at)
     f90:	240528e9 	li	a1,10473
     f94:	0c000000 	jal	0 <EnGs_Init>
     f98:	e60a01f4 	swc1	$f10,500(s0)
     f9c:	24080003 	li	t0,3
     fa0:	a208019f 	sb	t0,415(s0)
     fa4:	9219019f 	lbu	t9,415(s0)
     fa8:	24010003 	li	at,3
     fac:	260401e8 	addiu	a0,s0,488
     fb0:	17210030 	bne	t9,at,1074 <func_80A4F13C+0x258>
     fb4:	3c063f4c 	lui	a2,0x3f4c
     fb8:	860901a2 	lh	t1,418(s0)
     fbc:	3c010000 	lui	at,0x0
     fc0:	8e0501ec 	lw	a1,492(s0)
     fc4:	252a4000 	addiu	t2,t1,16384
     fc8:	a60a01a2 	sh	t2,418(s0)
     fcc:	c43000a0 	lwc1	$f16,160(at)
     fd0:	3c073e4c 	lui	a3,0x3e4c
     fd4:	260b01f0 	addiu	t3,s0,496
     fd8:	afab0028 	sw	t3,40(sp)
     fdc:	34e7cccd 	ori	a3,a3,0xcccd
     fe0:	34c6cccd 	ori	a2,a2,0xcccd
     fe4:	0c000000 	jal	0 <EnGs_Init>
     fe8:	e7b00010 	swc1	$f16,16(sp)
     fec:	3c010000 	lui	at,0x0
     ff0:	c43200a4 	lwc1	$f18,164(at)
     ff4:	e7a00044 	swc1	$f0,68(sp)
     ff8:	8e0501f4 	lw	a1,500(s0)
     ffc:	3c063f4c 	lui	a2,0x3f4c
    1000:	3c073e4c 	lui	a3,0x3e4c
    1004:	34e7cccd 	ori	a3,a3,0xcccd
    1008:	34c6cccd 	ori	a2,a2,0xcccd
    100c:	8fa40028 	lw	a0,40(sp)
    1010:	0c000000 	jal	0 <EnGs_Init>
    1014:	e7b20010 	swc1	$f18,16(sp)
    1018:	3c013f80 	lui	at,0x3f80
    101c:	44813000 	mtc1	at,$f6
    1020:	c60401f0 	lwc1	$f4,496(s0)
    1024:	44818000 	mtc1	at,$f16
    1028:	c60a01e8 	lwc1	$f10,488(s0)
    102c:	46062200 	add.s	$f8,$f4,$f6
    1030:	44803000 	mtc1	zero,$f6
    1034:	3c010000 	lui	at,0x0
    1038:	46105480 	add.s	$f18,$f10,$f16
    103c:	e60801b4 	swc1	$f8,436(s0)
    1040:	e61201b8 	swc1	$f18,440(s0)
    1044:	c7a40044 	lwc1	$f4,68(sp)
    1048:	46062032 	c.eq.s	$f4,$f6
    104c:	00000000 	nop
    1050:	45020009 	bc1fl	1078 <func_80A4F13C+0x25c>
    1054:	920e019f 	lbu	t6,415(s0)
    1058:	c42800a8 	lwc1	$f8,168(at)
    105c:	3c010000 	lui	at,0x0
    1060:	240c0004 	li	t4,4
    1064:	e60801e8 	swc1	$f8,488(s0)
    1068:	c42a00ac 	lwc1	$f10,172(at)
    106c:	a20c019f 	sb	t4,415(s0)
    1070:	e60a01ec 	swc1	$f10,492(s0)
    1074:	920e019f 	lbu	t6,415(s0)
    1078:	24010004 	li	at,4
    107c:	260401e8 	addiu	a0,s0,488
    1080:	15c1001e 	bne	t6,at,10fc <func_80A4F13C+0x2e0>
    1084:	3c063f4c 	lui	a2,0x3f4c
    1088:	3c010000 	lui	at,0x0
    108c:	c43000b0 	lwc1	$f16,176(at)
    1090:	8e0501ec 	lw	a1,492(s0)
    1094:	34c6cccd 	ori	a2,a2,0xcccd
    1098:	3c074680 	lui	a3,0x4680
    109c:	0c000000 	jal	0 <EnGs_Init>
    10a0:	e7b00010 	swc1	$f16,16(sp)
    10a4:	c61201e8 	lwc1	$f18,488(s0)
    10a8:	44803000 	mtc1	zero,$f6
    10ac:	860d01a2 	lh	t5,418(s0)
    10b0:	4600910d 	trunc.w.s	$f4,$f18
    10b4:	46060032 	c.eq.s	$f0,$f6
    10b8:	44192000 	mfc1	t9,$f4
    10bc:	00000000 	nop
    10c0:	01b94821 	addu	t1,t5,t9
    10c4:	4500000d 	bc1f	10fc <func_80A4F13C+0x2e0>
    10c8:	a60901a2 	sh	t1,418(s0)
    10cc:	860201a2 	lh	v0,418(s0)
    10d0:	3c01ffff 	lui	at,0xffff
    10d4:	58400003 	blezl	v0,10e4 <func_80A4F13C+0x2c8>
    10d8:	44824000 	mtc1	v0,$f8
    10dc:	00411021 	addu	v0,v0,at
    10e0:	44824000 	mtc1	v0,$f8
    10e4:	44808000 	mtc1	zero,$f16
    10e8:	240a0005 	li	t2,5
    10ec:	468042a0 	cvt.s.w	$f10,$f8
    10f0:	a20a019f 	sb	t2,415(s0)
    10f4:	e61001ec 	swc1	$f16,492(s0)
    10f8:	e60a01e8 	swc1	$f10,488(s0)
    10fc:	920b019f 	lbu	t3,415(s0)
    1100:	24010005 	li	at,5
    1104:	55610034 	bnel	t3,at,11d8 <func_80A4F13C+0x3bc>
    1108:	9218019f 	lbu	t8,415(s0)
    110c:	860201a2 	lh	v0,418(s0)
    1110:	3c01ffff 	lui	at,0xffff
    1114:	260401e8 	addiu	a0,s0,488
    1118:	18400002 	blez	v0,1124 <func_80A4F13C+0x308>
    111c:	34210001 	ori	at,at,0x1
    1120:	00411021 	addu	v0,v0,at
    1124:	44829000 	mtc1	v0,$f18
    1128:	3c010000 	lui	at,0x0
    112c:	8e0501ec 	lw	a1,492(s0)
    1130:	46809120 	cvt.s.w	$f4,$f18
    1134:	3c063f4c 	lui	a2,0x3f4c
    1138:	3c074563 	lui	a3,0x4563
    113c:	34e78000 	ori	a3,a3,0x8000
    1140:	34c6cccd 	ori	a2,a2,0xcccd
    1144:	e60401e8 	swc1	$f4,488(s0)
    1148:	c42600b4 	lwc1	$f6,180(at)
    114c:	0c000000 	jal	0 <EnGs_Init>
    1150:	e7a60010 	swc1	$f6,16(sp)
    1154:	c60801e8 	lwc1	$f8,488(s0)
    1158:	44808000 	mtc1	zero,$f16
    115c:	3c013f80 	lui	at,0x3f80
    1160:	4600428d 	trunc.w.s	$f10,$f8
    1164:	02002025 	move	a0,s0
    1168:	24053831 	li	a1,14385
    116c:	46100032 	c.eq.s	$f0,$f16
    1170:	440e5000 	mfc1	t6,$f10
    1174:	45000017 	bc1f	11d4 <func_80A4F13C+0x3b8>
    1178:	a60e01a2 	sh	t6,418(s0)
    117c:	c61201b8 	lwc1	$f18,440(s0)
    1180:	44812000 	mtc1	at,$f4
    1184:	44804000 	mtc1	zero,$f8
    1188:	c60a01b4 	lwc1	$f10,436(s0)
    118c:	46049181 	sub.s	$f6,$f18,$f4
    1190:	44818000 	mtc1	at,$f16
    1194:	3c013f00 	lui	at,0x3f00
    1198:	e60801ec 	swc1	$f8,492(s0)
    119c:	46105481 	sub.s	$f18,$f10,$f16
    11a0:	e60601e8 	swc1	$f6,488(s0)
    11a4:	44802000 	mtc1	zero,$f4
    11a8:	44813000 	mtc1	at,$f6
    11ac:	44804000 	mtc1	zero,$f8
    11b0:	a60001a2 	sh	zero,418(s0)
    11b4:	a6000200 	sh	zero,512(s0)
    11b8:	e61201f0 	swc1	$f18,496(s0)
    11bc:	e60401f4 	swc1	$f4,500(s0)
    11c0:	e60601f8 	swc1	$f6,504(s0)
    11c4:	0c000000 	jal	0 <EnGs_Init>
    11c8:	e60801fc 	swc1	$f8,508(s0)
    11cc:	240f0006 	li	t7,6
    11d0:	a20f019f 	sb	t7,415(s0)
    11d4:	9218019f 	lbu	t8,415(s0)
    11d8:	24010006 	li	at,6
    11dc:	260401e8 	addiu	a0,s0,488
    11e0:	17010072 	bne	t8,at,13ac <func_80A4F13C+0x590>
    11e4:	3c063f4c 	lui	a2,0x3f4c
    11e8:	3c010000 	lui	at,0x0
    11ec:	c42a00b8 	lwc1	$f10,184(at)
    11f0:	8e0501ec 	lw	a1,492(s0)
    11f4:	3c073dcc 	lui	a3,0x3dcc
    11f8:	260801f0 	addiu	t0,s0,496
    11fc:	afa80028 	sw	t0,40(sp)
    1200:	34e7cccd 	ori	a3,a3,0xcccd
    1204:	34c6cccd 	ori	a2,a2,0xcccd
    1208:	0c000000 	jal	0 <EnGs_Init>
    120c:	e7aa0010 	swc1	$f10,16(sp)
    1210:	3c010000 	lui	at,0x0
    1214:	c43000bc 	lwc1	$f16,188(at)
    1218:	e7a00044 	swc1	$f0,68(sp)
    121c:	8e0501f4 	lw	a1,500(s0)
    1220:	3c063f4c 	lui	a2,0x3f4c
    1224:	3c073dcc 	lui	a3,0x3dcc
    1228:	34e7cccd 	ori	a3,a3,0xcccd
    122c:	34c6cccd 	ori	a2,a2,0xcccd
    1230:	8fa40028 	lw	a0,40(sp)
    1234:	0c000000 	jal	0 <EnGs_Init>
    1238:	e7b00010 	swc1	$f16,16(sp)
    123c:	3c010000 	lui	at,0x0
    1240:	c43200c0 	lwc1	$f18,192(at)
    1244:	e7a00040 	swc1	$f0,64(sp)
    1248:	8e0501fc 	lw	a1,508(s0)
    124c:	3c063f4c 	lui	a2,0x3f4c
    1250:	3c073ca3 	lui	a3,0x3ca3
    1254:	34e7d70a 	ori	a3,a3,0xd70a
    1258:	34c6cccd 	ori	a2,a2,0xcccd
    125c:	260401f8 	addiu	a0,s0,504
    1260:	0c000000 	jal	0 <EnGs_Init>
    1264:	e7b20010 	swc1	$f18,16(sp)
    1268:	e7a0003c 	swc1	$f0,60(sp)
    126c:	3c013f80 	lui	at,0x3f80
    1270:	960d0200 	lhu	t5,512(s0)
    1274:	44813000 	mtc1	at,$f6
    1278:	44818000 	mtc1	at,$f16
    127c:	2401000a 	li	at,10
    1280:	01a1001a 	div	zero,t5,at
    1284:	c60401f0 	lwc1	$f4,496(s0)
    1288:	c60a01e8 	lwc1	$f10,488(s0)
    128c:	0000c810 	mfhi	t9
    1290:	46062200 	add.s	$f8,$f4,$f6
    1294:	44992000 	mtc1	t9,$f4
    1298:	3c010000 	lui	at,0x0
    129c:	46105480 	add.s	$f18,$f10,$f16
    12a0:	e60801b4 	swc1	$f8,436(s0)
    12a4:	468021a0 	cvt.s.w	$f6,$f4
    12a8:	e61201b8 	swc1	$f18,440(s0)
    12ac:	c42800c4 	lwc1	$f8,196(at)
    12b0:	3c0143b4 	lui	at,0x43b4
    12b4:	44818000 	mtc1	at,$f16
    12b8:	3c010000 	lui	at,0x0
    12bc:	46083282 	mul.s	$f10,$f6,$f8
    12c0:	c42400c8 	lwc1	$f4,200(at)
    12c4:	46105482 	mul.s	$f18,$f10,$f16
    12c8:	00000000 	nop
    12cc:	46049302 	mul.s	$f12,$f18,$f4
    12d0:	0c000000 	jal	0 <EnGs_Init>
    12d4:	00000000 	nop
    12d8:	96090200 	lhu	t1,512(s0)
    12dc:	2401000a 	li	at,10
    12e0:	c60801f8 	lwc1	$f8,504(s0)
    12e4:	0121001a 	div	zero,t1,at
    12e8:	46080282 	mul.s	$f10,$f0,$f8
    12ec:	c60601b4 	lwc1	$f6,436(s0)
    12f0:	00005010 	mfhi	t2
    12f4:	448a9000 	mtc1	t2,$f18
    12f8:	3c010000 	lui	at,0x0
    12fc:	46809120 	cvt.s.w	$f4,$f18
    1300:	460a3400 	add.s	$f16,$f6,$f10
    1304:	e61001b4 	swc1	$f16,436(s0)
    1308:	c42800cc 	lwc1	$f8,204(at)
    130c:	3c0143b4 	lui	at,0x43b4
    1310:	44815000 	mtc1	at,$f10
    1314:	46082182 	mul.s	$f6,$f4,$f8
    1318:	3c010000 	lui	at,0x0
    131c:	c43200d0 	lwc1	$f18,208(at)
    1320:	460a3402 	mul.s	$f16,$f6,$f10
    1324:	00000000 	nop
    1328:	46128302 	mul.s	$f12,$f16,$f18
    132c:	0c000000 	jal	0 <EnGs_Init>
    1330:	00000000 	nop
    1334:	c60801f8 	lwc1	$f8,504(s0)
    1338:	c60401b8 	lwc1	$f4,440(s0)
    133c:	960b0200 	lhu	t3,512(s0)
    1340:	46080182 	mul.s	$f6,$f0,$f8
    1344:	44809000 	mtc1	zero,$f18
    1348:	256c0001 	addiu	t4,t3,1
    134c:	a60c0200 	sh	t4,512(s0)
    1350:	46062280 	add.s	$f10,$f4,$f6
    1354:	e60a01b8 	swc1	$f10,440(s0)
    1358:	c7b00044 	lwc1	$f16,68(sp)
    135c:	c7a80040 	lwc1	$f8,64(sp)
    1360:	46128032 	c.eq.s	$f16,$f18
    1364:	00000000 	nop
    1368:	45020011 	bc1fl	13b0 <func_80A4F13C+0x594>
    136c:	960f01a2 	lhu	t7,418(s0)
    1370:	44802000 	mtc1	zero,$f4
    1374:	c7a6003c 	lwc1	$f6,60(sp)
    1378:	46044032 	c.eq.s	$f8,$f4
    137c:	00000000 	nop
    1380:	4502000b 	bc1fl	13b0 <func_80A4F13C+0x594>
    1384:	960f01a2 	lhu	t7,418(s0)
    1388:	44805000 	mtc1	zero,$f10
    138c:	3c0e0000 	lui	t6,0x0
    1390:	25ce0000 	addiu	t6,t6,0
    1394:	460a3032 	c.eq.s	$f6,$f10
    1398:	00000000 	nop
    139c:	45020004 	bc1fl	13b0 <func_80A4F13C+0x594>
    13a0:	960f01a2 	lhu	t7,418(s0)
    13a4:	a200019c 	sb	zero,412(s0)
    13a8:	ae0e0198 	sw	t6,408(s0)
    13ac:	960f01a2 	lhu	t7,418(s0)
    13b0:	97b80036 	lhu	t8,54(sp)
    13b4:	02002025 	move	a0,s0
    13b8:	01f8082a 	slt	at,t7,t8
    13bc:	50200004 	beqzl	at,13d0 <func_80A4F13C+0x5b4>
    13c0:	8fbf0024 	lw	ra,36(sp)
    13c4:	0c000000 	jal	0 <EnGs_Init>
    13c8:	240528eb 	li	a1,10475
    13cc:	8fbf0024 	lw	ra,36(sp)
    13d0:	8fb00020 	lw	s0,32(sp)
    13d4:	27bd0048 	addiu	sp,sp,72
    13d8:	03e00008 	jr	ra
    13dc:	00000000 	nop

000013e0 <func_80A4F700>:
    13e0:	27bdffe8 	addiu	sp,sp,-24
    13e4:	afbf0014 	sw	ra,20(sp)
    13e8:	afa5001c 	sw	a1,28(sp)
    13ec:	94820200 	lhu	v0,512(a0)
    13f0:	244effff 	addiu	t6,v0,-1
    13f4:	1c400003 	bgtz	v0,1404 <func_80A4F700+0x24>
    13f8:	a48e0200 	sh	t6,512(a0)
    13fc:	0c000000 	jal	0 <EnGs_Init>
    1400:	00000000 	nop
    1404:	8fbf0014 	lw	ra,20(sp)
    1408:	27bd0018 	addiu	sp,sp,24
    140c:	03e00008 	jr	ra
    1410:	00000000 	nop

00001414 <func_80A4F734>:
    1414:	27bdffe8 	addiu	sp,sp,-24
    1418:	afa40018 	sw	a0,24(sp)
    141c:	8fae0018 	lw	t6,24(sp)
    1420:	afbf0014 	sw	ra,20(sp)
    1424:	afa5001c 	sw	a1,28(sp)
    1428:	00a02025 	move	a0,a1
    142c:	85c5001c 	lh	a1,28(t6)
    1430:	00052a03 	sra	a1,a1,0x8
    1434:	0c000000 	jal	0 <EnGs_Init>
    1438:	30a5003f 	andi	a1,a1,0x3f
    143c:	14400003 	bnez	v0,144c <func_80A4F734+0x38>
    1440:	8fa40018 	lw	a0,24(sp)
    1444:	0c000000 	jal	0 <EnGs_Init>
    1448:	8fa5001c 	lw	a1,28(sp)
    144c:	8fbf0014 	lw	ra,20(sp)
    1450:	27bd0018 	addiu	sp,sp,24
    1454:	03e00008 	jr	ra
    1458:	00000000 	nop

0000145c <func_80A4F77C>:
    145c:	3c050000 	lui	a1,0x0
    1460:	24a500b4 	addiu	a1,a1,180
    1464:	00001025 	move	v0,zero
    1468:	248301a0 	addiu	v1,a0,416
    146c:	8caf0000 	lw	t7,0(a1)
    1470:	24420001 	addiu	v0,v0,1
    1474:	28410003 	slti	at,v0,3
    1478:	a86f0000 	swl	t7,0(v1)
    147c:	b86f0003 	swr	t7,3(v1)
    1480:	94af0004 	lhu	t7,4(a1)
    1484:	24630006 	addiu	v1,v1,6
    1488:	1420fff8 	bnez	at,146c <func_80A4F77C+0x10>
    148c:	a46ffffe 	sh	t7,-2(v1)
    1490:	3c050000 	lui	a1,0x0
    1494:	24a500bc 	addiu	a1,a1,188
    1498:	00001025 	move	v0,zero
    149c:	248301b4 	addiu	v1,a0,436
    14a0:	24060002 	li	a2,2
    14a4:	8cb90000 	lw	t9,0(a1)
    14a8:	24420001 	addiu	v0,v0,1
    14ac:	2463000c 	addiu	v1,v1,12
    14b0:	ac79fff4 	sw	t9,-12(v1)
    14b4:	8cb80004 	lw	t8,4(a1)
    14b8:	ac78fff8 	sw	t8,-8(v1)
    14bc:	8cb90008 	lw	t9,8(a1)
    14c0:	1446fff8 	bne	v0,a2,14a4 <func_80A4F77C+0x48>
    14c4:	ac79fffc 	sw	t9,-4(v1)
    14c8:	24080003 	li	t0,3
    14cc:	03e00008 	jr	ra
    14d0:	a088019c 	sb	t0,412(a0)

000014d4 <EnGs_Update>:
    14d4:	27bdffd0 	addiu	sp,sp,-48
    14d8:	afb10018 	sw	s1,24(sp)
    14dc:	00a08825 	move	s1,a1
    14e0:	afbf001c 	sw	ra,28(sp)
    14e4:	afb00014 	sw	s0,20(sp)
    14e8:	00808025 	move	s0,a0
    14ec:	0c000000 	jal	0 <EnGs_Init>
    14f0:	3c0541b8 	lui	a1,0x41b8
    14f4:	920e019e 	lbu	t6,414(s0)
    14f8:	31cf0010 	andi	t7,t6,0x10
    14fc:	55e0004e 	bnezl	t7,1638 <EnGs_Update+0x164>
    1500:	8e190198 	lw	t9,408(s0)
    1504:	9202015d 	lbu	v0,349(s0)
    1508:	30580002 	andi	t8,v0,0x2
    150c:	5300003b 	beqzl	t8,15fc <EnGs_Update+0x128>
    1510:	2605014c 	addiu	a1,s0,332
    1514:	920800b1 	lbu	t0,177(s0)
    1518:	3059fffd 	andi	t9,v0,0xfffd
    151c:	a200019f 	sb	zero,415(s0)
    1520:	2509fff5 	addiu	t1,t0,-11
    1524:	2d210005 	sltiu	at,t1,5
    1528:	10200033 	beqz	at,15f8 <EnGs_Update+0x124>
    152c:	a219015d 	sb	t9,349(s0)
    1530:	00094880 	sll	t1,t1,0x2
    1534:	3c010000 	lui	at,0x0
    1538:	00290821 	addu	at,at,t1
    153c:	8c2900d4 	lw	t1,212(at)
    1540:	01200008 	jr	t1
    1544:	00000000 	nop
    1548:	920a019e 	lbu	t2,414(s0)
    154c:	02002025 	move	a0,s0
    1550:	354b0001 	ori	t3,t2,0x1
    1554:	0c000000 	jal	0 <EnGs_Init>
    1558:	a20b019e 	sb	t3,414(s0)
    155c:	3c0c0000 	lui	t4,0x0
    1560:	258c0000 	addiu	t4,t4,0
    1564:	10000024 	b	15f8 <EnGs_Update+0x124>
    1568:	ae0c0198 	sw	t4,408(s0)
    156c:	920d019e 	lbu	t5,414(s0)
    1570:	02002025 	move	a0,s0
    1574:	35ae0001 	ori	t6,t5,0x1
    1578:	0c000000 	jal	0 <EnGs_Init>
    157c:	a20e019e 	sb	t6,414(s0)
    1580:	3c0f0000 	lui	t7,0x0
    1584:	25ef0000 	addiu	t7,t7,0
    1588:	1000001b 	b	15f8 <EnGs_Update+0x124>
    158c:	ae0f0198 	sw	t7,408(s0)
    1590:	9218019e 	lbu	t8,414(s0)
    1594:	02002025 	move	a0,s0
    1598:	37190001 	ori	t9,t8,0x1
    159c:	0c000000 	jal	0 <EnGs_Init>
    15a0:	a219019e 	sb	t9,414(s0)
    15a4:	3c080000 	lui	t0,0x0
    15a8:	25080000 	addiu	t0,t0,0
    15ac:	10000012 	b	15f8 <EnGs_Update+0x124>
    15b0:	ae080198 	sw	t0,408(s0)
    15b4:	9209019e 	lbu	t1,414(s0)
    15b8:	02002025 	move	a0,s0
    15bc:	352a0002 	ori	t2,t1,0x2
    15c0:	0c000000 	jal	0 <EnGs_Init>
    15c4:	a20a019e 	sb	t2,414(s0)
    15c8:	3c0b0000 	lui	t3,0x0
    15cc:	256b0000 	addiu	t3,t3,0
    15d0:	10000009 	b	15f8 <EnGs_Update+0x124>
    15d4:	ae0b0198 	sw	t3,408(s0)
    15d8:	920c019e 	lbu	t4,414(s0)
    15dc:	02002025 	move	a0,s0
    15e0:	358d0001 	ori	t5,t4,0x1
    15e4:	0c000000 	jal	0 <EnGs_Init>
    15e8:	a20d019e 	sb	t5,414(s0)
    15ec:	3c0e0000 	lui	t6,0x0
    15f0:	25ce0000 	addiu	t6,t6,0
    15f4:	ae0e0198 	sw	t6,408(s0)
    15f8:	2605014c 	addiu	a1,s0,332
    15fc:	afa50020 	sw	a1,32(sp)
    1600:	0c000000 	jal	0 <EnGs_Init>
    1604:	02002025 	move	a0,s0
    1608:	3c010001 	lui	at,0x1
    160c:	34211e60 	ori	at,at,0x1e60
    1610:	02212821 	addu	a1,s1,at
    1614:	afa50024 	sw	a1,36(sp)
    1618:	02202025 	move	a0,s1
    161c:	0c000000 	jal	0 <EnGs_Init>
    1620:	8fa60020 	lw	a2,32(sp)
    1624:	8fa50024 	lw	a1,36(sp)
    1628:	02202025 	move	a0,s1
    162c:	0c000000 	jal	0 <EnGs_Init>
    1630:	8fa60020 	lw	a2,32(sp)
    1634:	8e190198 	lw	t9,408(s0)
    1638:	02002025 	move	a0,s0
    163c:	02202825 	move	a1,s1
    1640:	0320f809 	jalr	t9
    1644:	00000000 	nop
    1648:	02002025 	move	a0,s0
    164c:	0c000000 	jal	0 <EnGs_Init>
    1650:	02202825 	move	a1,s1
    1654:	8fbf001c 	lw	ra,28(sp)
    1658:	8fb00014 	lw	s0,20(sp)
    165c:	8fb10018 	lw	s1,24(sp)
    1660:	03e00008 	jr	ra
    1664:	27bd0030 	addiu	sp,sp,48

00001668 <EnGs_Draw>:
    1668:	27bdff70 	addiu	sp,sp,-144
    166c:	afbf003c 	sw	ra,60(sp)
    1670:	afb10038 	sw	s1,56(sp)
    1674:	afb00034 	sw	s0,52(sp)
    1678:	afa50094 	sw	a1,148(sp)
    167c:	908e019e 	lbu	t6,414(a0)
    1680:	00808825 	move	s1,a0
    1684:	27a40070 	addiu	a0,sp,112
    1688:	31cf0008 	andi	t7,t6,0x8
    168c:	15e000ef 	bnez	t7,1a4c <EnGs_Draw+0x3e4>
    1690:	3c060000 	lui	a2,0x0
    1694:	8ca50000 	lw	a1,0(a1)
    1698:	24c60000 	addiu	a2,a2,0
    169c:	24070416 	li	a3,1046
    16a0:	0c000000 	jal	0 <EnGs_Init>
    16a4:	00a08025 	move	s0,a1
    16a8:	8fa20094 	lw	v0,148(sp)
    16ac:	3c190001 	lui	t9,0x1
    16b0:	0322c821 	addu	t9,t9,v0
    16b4:	8f391de4 	lw	t9,7652(t9)
    16b8:	afb90084 	sw	t9,132(sp)
    16bc:	0c000000 	jal	0 <EnGs_Init>
    16c0:	8c440000 	lw	a0,0(v0)
    16c4:	0c000000 	jal	0 <EnGs_Init>
    16c8:	00000000 	nop
    16cc:	9228019e 	lbu	t0,414(s1)
    16d0:	31090001 	andi	t1,t0,0x1
    16d4:	5120003d 	beqzl	t1,17cc <EnGs_Draw+0x164>
    16d8:	8e0202c0 	lw	v0,704(s0)
    16dc:	862a01a2 	lh	t2,418(s1)
    16e0:	3c010000 	lui	at,0x0
    16e4:	c42800e8 	lwc1	$f8,232(at)
    16e8:	448a2000 	mtc1	t2,$f4
    16ec:	24050001 	li	a1,1
    16f0:	468021a0 	cvt.s.w	$f6,$f4
    16f4:	46083302 	mul.s	$f12,$f6,$f8
    16f8:	0c000000 	jal	0 <EnGs_Init>
    16fc:	00000000 	nop
    1700:	862b01a0 	lh	t3,416(s1)
    1704:	3c010000 	lui	at,0x0
    1708:	c43200ec 	lwc1	$f18,236(at)
    170c:	448b5000 	mtc1	t3,$f10
    1710:	24050001 	li	a1,1
    1714:	46805420 	cvt.s.w	$f16,$f10
    1718:	46128302 	mul.s	$f12,$f16,$f18
    171c:	0c000000 	jal	0 <EnGs_Init>
    1720:	00000000 	nop
    1724:	862c01a4 	lh	t4,420(s1)
    1728:	3c010000 	lui	at,0x0
    172c:	c42800f0 	lwc1	$f8,240(at)
    1730:	448c2000 	mtc1	t4,$f4
    1734:	24050001 	li	a1,1
    1738:	468021a0 	cvt.s.w	$f6,$f4
    173c:	46083302 	mul.s	$f12,$f6,$f8
    1740:	0c000000 	jal	0 <EnGs_Init>
    1744:	00000000 	nop
    1748:	c62c01b4 	lwc1	$f12,436(s1)
    174c:	c62e01b8 	lwc1	$f14,440(s1)
    1750:	8e2601bc 	lw	a2,444(s1)
    1754:	0c000000 	jal	0 <EnGs_Init>
    1758:	24070001 	li	a3,1
    175c:	862d01a8 	lh	t5,424(s1)
    1760:	3c010000 	lui	at,0x0
    1764:	c43200f4 	lwc1	$f18,244(at)
    1768:	448d5000 	mtc1	t5,$f10
    176c:	24050001 	li	a1,1
    1770:	46805420 	cvt.s.w	$f16,$f10
    1774:	46128302 	mul.s	$f12,$f16,$f18
    1778:	0c000000 	jal	0 <EnGs_Init>
    177c:	00000000 	nop
    1780:	862e01a6 	lh	t6,422(s1)
    1784:	3c010000 	lui	at,0x0
    1788:	c42800f8 	lwc1	$f8,248(at)
    178c:	448e2000 	mtc1	t6,$f4
    1790:	24050001 	li	a1,1
    1794:	468021a0 	cvt.s.w	$f6,$f4
    1798:	46083302 	mul.s	$f12,$f6,$f8
    179c:	0c000000 	jal	0 <EnGs_Init>
    17a0:	00000000 	nop
    17a4:	862f01aa 	lh	t7,426(s1)
    17a8:	3c010000 	lui	at,0x0
    17ac:	c43200fc 	lwc1	$f18,252(at)
    17b0:	448f5000 	mtc1	t7,$f10
    17b4:	24050001 	li	a1,1
    17b8:	46805420 	cvt.s.w	$f16,$f10
    17bc:	46128302 	mul.s	$f12,$f16,$f18
    17c0:	0c000000 	jal	0 <EnGs_Init>
    17c4:	00000000 	nop
    17c8:	8e0202c0 	lw	v0,704(s0)
    17cc:	3c19da38 	lui	t9,0xda38
    17d0:	37390003 	ori	t9,t9,0x3
    17d4:	24580008 	addiu	t8,v0,8
    17d8:	ae1802c0 	sw	t8,704(s0)
    17dc:	ac590000 	sw	t9,0(v0)
    17e0:	8fa80094 	lw	t0,148(sp)
    17e4:	3c050000 	lui	a1,0x0
    17e8:	24a50010 	addiu	a1,a1,16
    17ec:	8d040000 	lw	a0,0(t0)
    17f0:	24060428 	li	a2,1064
    17f4:	0c000000 	jal	0 <EnGs_Init>
    17f8:	afa2006c 	sw	v0,108(sp)
    17fc:	8fa3006c 	lw	v1,108(sp)
    1800:	3c0a0000 	lui	t2,0x0
    1804:	254a0000 	addiu	t2,t2,0
    1808:	ac620004 	sw	v0,4(v1)
    180c:	8e0202c0 	lw	v0,704(s0)
    1810:	3c04de00 	lui	a0,0xde00
    1814:	24490008 	addiu	t1,v0,8
    1818:	ae0902c0 	sw	t1,704(s0)
    181c:	ac4a0004 	sw	t2,4(v0)
    1820:	ac440000 	sw	a0,0(v0)
    1824:	922b019e 	lbu	t3,414(s1)
    1828:	316c0004 	andi	t4,t3,0x4
    182c:	51800013 	beqzl	t4,187c <EnGs_Draw+0x214>
    1830:	8e0202c0 	lw	v0,704(s0)
    1834:	8e0202c0 	lw	v0,704(s0)
    1838:	3c0efa00 	lui	t6,0xfa00
    183c:	244d0008 	addiu	t5,v0,8
    1840:	ae0d02c0 	sw	t5,704(s0)
    1844:	ac4e0000 	sw	t6,0(v0)
    1848:	922901e5 	lbu	t1,485(s1)
    184c:	923801e4 	lbu	t8,484(s1)
    1850:	922d01e6 	lbu	t5,486(s1)
    1854:	922801e7 	lbu	t0,487(s1)
    1858:	00095400 	sll	t2,t1,0x10
    185c:	0018ce00 	sll	t9,t8,0x18
    1860:	032a5825 	or	t3,t9,t2
    1864:	000d7200 	sll	t6,t5,0x8
    1868:	016e7825 	or	t7,t3,t6
    186c:	01e84825 	or	t1,t7,t0
    1870:	10000008 	b	1894 <EnGs_Draw+0x22c>
    1874:	ac490004 	sw	t1,4(v0)
    1878:	8e0202c0 	lw	v0,704(s0)
    187c:	3c0afa00 	lui	t2,0xfa00
    1880:	240cffff 	li	t4,-1
    1884:	24590008 	addiu	t9,v0,8
    1888:	ae1902c0 	sw	t9,704(s0)
    188c:	ac4c0004 	sw	t4,4(v0)
    1890:	ac4a0000 	sw	t2,0(v0)
    1894:	8e0202c0 	lw	v0,704(s0)
    1898:	3c0b0000 	lui	t3,0x0
    189c:	256b0000 	addiu	t3,t3,0
    18a0:	244d0008 	addiu	t5,v0,8
    18a4:	ae0d02c0 	sw	t5,704(s0)
    18a8:	ac4b0004 	sw	t3,4(v0)
    18ac:	ac440000 	sw	a0,0(v0)
    18b0:	8e0202c0 	lw	v0,704(s0)
    18b4:	3c180000 	lui	t8,0x0
    18b8:	27180000 	addiu	t8,t8,0
    18bc:	244e0008 	addiu	t6,v0,8
    18c0:	ae0e02c0 	sw	t6,704(s0)
    18c4:	ac580004 	sw	t8,4(v0)
    18c8:	0c000000 	jal	0 <EnGs_Init>
    18cc:	ac440000 	sw	a0,0(v0)
    18d0:	922f019e 	lbu	t7,414(s1)
    18d4:	8fa90094 	lw	t1,148(sp)
    18d8:	31e80002 	andi	t0,t7,0x2
    18dc:	51000055 	beqzl	t0,1a34 <EnGs_Draw+0x3cc>
    18e0:	8fad0094 	lw	t5,148(sp)
    18e4:	0c000000 	jal	0 <EnGs_Init>
    18e8:	8d240000 	lw	a0,0(t1)
    18ec:	8fa40094 	lw	a0,148(sp)
    18f0:	3c010001 	lui	at,0x1
    18f4:	34211da0 	ori	at,at,0x1da0
    18f8:	0c000000 	jal	0 <EnGs_Init>
    18fc:	00812021 	addu	a0,a0,at
    1900:	3c010000 	lui	at,0x0
    1904:	c42c0100 	lwc1	$f12,256(at)
    1908:	3c010000 	lui	at,0x0
    190c:	c42e0104 	lwc1	$f14,260(at)
    1910:	3c063f80 	lui	a2,0x3f80
    1914:	0c000000 	jal	0 <EnGs_Init>
    1918:	24070001 	li	a3,1
    191c:	8e0202d0 	lw	v0,720(s0)
    1920:	3c0ada38 	lui	t2,0xda38
    1924:	354a0003 	ori	t2,t2,0x3
    1928:	24590008 	addiu	t9,v0,8
    192c:	ae1902d0 	sw	t9,720(s0)
    1930:	ac4a0000 	sw	t2,0(v0)
    1934:	8fac0094 	lw	t4,148(sp)
    1938:	3c050000 	lui	a1,0x0
    193c:	24a50020 	addiu	a1,a1,32
    1940:	2406043f 	li	a2,1087
    1944:	00408825 	move	s1,v0
    1948:	0c000000 	jal	0 <EnGs_Init>
    194c:	8d840000 	lw	a0,0(t4)
    1950:	ae220004 	sw	v0,4(s1)
    1954:	8e0202d0 	lw	v0,720(s0)
    1958:	3c0bdb06 	lui	t3,0xdb06
    195c:	356b0020 	ori	t3,t3,0x20
    1960:	244d0008 	addiu	t5,v0,8
    1964:	ae0d02d0 	sw	t5,720(s0)
    1968:	ac4b0000 	sw	t3,0(v0)
    196c:	8fae0094 	lw	t6,148(sp)
    1970:	8fa90084 	lw	t1,132(sp)
    1974:	240d0080 	li	t5,128
    1978:	8dc40000 	lw	a0,0(t6)
    197c:	0009c823 	negu	t9,t1
    1980:	00195080 	sll	t2,t9,0x2
    1984:	01595021 	addu	t2,t2,t9
    1988:	000a5080 	sll	t2,t2,0x2
    198c:	24180020 	li	t8,32
    1990:	240f0040 	li	t7,64
    1994:	24080001 	li	t0,1
    1998:	240c0020 	li	t4,32
    199c:	afac0024 	sw	t4,36(sp)
    19a0:	afa80018 	sw	t0,24(sp)
    19a4:	afaf0014 	sw	t7,20(sp)
    19a8:	afb80010 	sw	t8,16(sp)
    19ac:	afaa0020 	sw	t2,32(sp)
    19b0:	afad0028 	sw	t5,40(sp)
    19b4:	afa0001c 	sw	zero,28(sp)
    19b8:	00002825 	move	a1,zero
    19bc:	00003025 	move	a2,zero
    19c0:	00003825 	move	a3,zero
    19c4:	0c000000 	jal	0 <EnGs_Init>
    19c8:	00408825 	move	s1,v0
    19cc:	ae220004 	sw	v0,4(s1)
    19d0:	8e0202d0 	lw	v0,720(s0)
    19d4:	3c0efa00 	lui	t6,0xfa00
    19d8:	3c18ffff 	lui	t8,0xffff
    19dc:	244b0008 	addiu	t3,v0,8
    19e0:	ae0b02d0 	sw	t3,720(s0)
    19e4:	371800ff 	ori	t8,t8,0xff
    19e8:	35ce8080 	ori	t6,t6,0x8080
    19ec:	ac4e0000 	sw	t6,0(v0)
    19f0:	ac580004 	sw	t8,4(v0)
    19f4:	8e0202d0 	lw	v0,720(s0)
    19f8:	3c08fb00 	lui	t0,0xfb00
    19fc:	3c09ff00 	lui	t1,0xff00
    1a00:	244f0008 	addiu	t7,v0,8
    1a04:	ae0f02d0 	sw	t7,720(s0)
    1a08:	ac490004 	sw	t1,4(v0)
    1a0c:	ac480000 	sw	t0,0(v0)
    1a10:	8e0202d0 	lw	v0,720(s0)
    1a14:	3c0c0000 	lui	t4,0x0
    1a18:	258c0000 	addiu	t4,t4,0
    1a1c:	24590008 	addiu	t9,v0,8
    1a20:	ae1902d0 	sw	t9,720(s0)
    1a24:	3c0ade00 	lui	t2,0xde00
    1a28:	ac4a0000 	sw	t2,0(v0)
    1a2c:	ac4c0004 	sw	t4,4(v0)
    1a30:	8fad0094 	lw	t5,148(sp)
    1a34:	3c060000 	lui	a2,0x0
    1a38:	24c60030 	addiu	a2,a2,48
    1a3c:	27a40070 	addiu	a0,sp,112
    1a40:	2407044d 	li	a3,1101
    1a44:	0c000000 	jal	0 <EnGs_Init>
    1a48:	8da50000 	lw	a1,0(t5)
    1a4c:	8fbf003c 	lw	ra,60(sp)
    1a50:	8fb00034 	lw	s0,52(sp)
    1a54:	8fb10038 	lw	s1,56(sp)
    1a58:	03e00008 	jr	ra
    1a5c:	27bd0090 	addiu	sp,sp,144
