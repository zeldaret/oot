
build/src/overlays/actors/ovl_En_Skj/z_en_skj.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AFE2B0>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afa50034 	sw	a1,52(sp)
       8:	93ae0037 	lbu	t6,55(sp)
       c:	3c180000 	lui	t8,0x0
      10:	27180000 	addiu	t8,t8,0
      14:	000e7880 	sll	t7,t6,0x2
      18:	01ee7823 	subu	t7,t7,t6
      1c:	000f7880 	sll	t7,t7,0x2
      20:	afbf0024 	sw	ra,36(sp)
      24:	afa40030 	sw	a0,48(sp)
      28:	01f81821 	addu	v1,t7,t8
      2c:	8c640000 	lw	a0,0(v1)
      30:	0c000000 	jal	0 <func_80AFE2B0>
      34:	afa30028 	sw	v1,40(sp)
      38:	8fa80030 	lw	t0,48(sp)
      3c:	93b90037 	lbu	t9,55(sp)
      40:	44822000 	mtc1	v0,$f4
      44:	8fa30028 	lw	v1,40(sp)
      48:	a11902d0 	sb	t9,720(t0)
      4c:	468021a0 	cvt.s.w	$f6,$f4
      50:	c4680008 	lwc1	$f8,8(v1)
      54:	90690004 	lbu	t1,4(v1)
      58:	3c063f80 	lui	a2,0x3f80
      5c:	24070000 	li	a3,0
      60:	2504014c 	addiu	a0,t0,332
      64:	e7a60010 	swc1	$f6,16(sp)
      68:	8c650000 	lw	a1,0(v1)
      6c:	e7a80018 	swc1	$f8,24(sp)
      70:	0c000000 	jal	0 <func_80AFE2B0>
      74:	afa90014 	sw	t1,20(sp)
      78:	8fbf0024 	lw	ra,36(sp)
      7c:	27bd0030 	addiu	sp,sp,48
      80:	03e00008 	jr	ra
      84:	00000000 	nop

00000088 <func_80AFE338>:
      88:	afa50004 	sw	a1,4(sp)
      8c:	30a500ff 	andi	a1,a1,0xff
      90:	00057080 	sll	t6,a1,0x2
      94:	3c0f0000 	lui	t7,0x0
      98:	a08502d1 	sb	a1,721(a0)
      9c:	01ee7821 	addu	t7,t7,t6
      a0:	8def0000 	lw	t7,0(t7)
      a4:	2ca1001d 	sltiu	at,a1,29
      a8:	10200009 	beqz	at,d0 <L80AFE380>
      ac:	ac8f0274 	sw	t7,628(a0)
      b0:	0005c080 	sll	t8,a1,0x2
      b4:	3c010000 	lui	at,0x0
      b8:	00380821 	addu	at,at,t8
      bc:	8c380000 	lw	t8,0(at)
      c0:	03000008 	jr	t8
      c4:	00000000 	nop

000000c8 <L80AFE378>:
      c8:	03e00008 	jr	ra
      cc:	a08002d3 	sb	zero,723(a0)

000000d0 <L80AFE380>:
      d0:	24190001 	li	t9,1
      d4:	a09902d3 	sb	t9,723(a0)
      d8:	03e00008 	jr	ra
      dc:	00000000 	nop

000000e0 <func_80AFE390>:
      e0:	44800000 	mtc1	zero,$f0
      e4:	27bdffd8 	addiu	sp,sp,-40
      e8:	3c0142f0 	lui	at,0x42f0
      ec:	44812000 	mtc1	at,$f4
      f0:	afbf0014 	sw	ra,20(sp)
      f4:	e7a0001c 	swc1	$f0,28(sp)
      f8:	e7a00020 	swc1	$f0,32(sp)
      fc:	e7a40024 	swc1	$f4,36(sp)
     100:	848e00b6 	lh	t6,182(a0)
     104:	3c014700 	lui	at,0x4700
     108:	44815000 	mtc1	at,$f10
     10c:	448e3000 	mtc1	t6,$f6
     110:	3c010000 	lui	at,0x0
     114:	c4320000 	lwc1	$f18,0(at)
     118:	46803220 	cvt.s.w	$f8,$f6
     11c:	afa40028 	sw	a0,40(sp)
     120:	00002825 	move	a1,zero
     124:	460a4403 	div.s	$f16,$f8,$f10
     128:	46128302 	mul.s	$f12,$f16,$f18
     12c:	0c000000 	jal	0 <func_80AFE2B0>
     130:	00000000 	nop
     134:	8fa60028 	lw	a2,40(sp)
     138:	27a4001c 	addiu	a0,sp,28
     13c:	0c000000 	jal	0 <func_80AFE2B0>
     140:	24c502e0 	addiu	a1,a2,736
     144:	8fa60028 	lw	a2,40(sp)
     148:	c4c402e0 	lwc1	$f4,736(a2)
     14c:	c4c60024 	lwc1	$f6,36(a2)
     150:	c4ca02e8 	lwc1	$f10,744(a2)
     154:	c4d0002c 	lwc1	$f16,44(a2)
     158:	46062200 	add.s	$f8,$f4,$f6
     15c:	46105480 	add.s	$f18,$f10,$f16
     160:	e4c802e0 	swc1	$f8,736(a2)
     164:	e4d202e8 	swc1	$f18,744(a2)
     168:	8fbf0014 	lw	ra,20(sp)
     16c:	27bd0028 	addiu	sp,sp,40
     170:	03e00008 	jr	ra
     174:	00000000 	nop

00000178 <func_80AFE428>:
     178:	8482001c 	lh	v0,28(a0)
     17c:	24010001 	li	at,1
     180:	10400008 	beqz	v0,1a4 <func_80AFE428+0x2c>
     184:	00000000 	nop
     188:	10410019 	beq	v0,at,1f0 <func_80AFE428+0x78>
     18c:	240c003f 	li	t4,63
     190:	24010002 	li	at,2
     194:	10410016 	beq	v0,at,1f0 <func_80AFE428+0x78>
     198:	240e0036 	li	t6,54
     19c:	03e00008 	jr	ra
     1a0:	a08e0117 	sb	t6,279(a0)
     1a4:	3c020000 	lui	v0,0x0
     1a8:	24420000 	addiu	v0,v0,0
     1ac:	944f0ef6 	lhu	t7,3830(v0)
     1b0:	24190041 	li	t9,65
     1b4:	31f80200 	andi	t8,t7,0x200
     1b8:	53000004 	beqzl	t8,1cc <func_80AFE428+0x54>
     1bc:	94480ef2 	lhu	t0,3826(v0)
     1c0:	03e00008 	jr	ra
     1c4:	a0990117 	sb	t9,279(a0)
     1c8:	94480ef2 	lhu	t0,3826(v0)
     1cc:	240a0040 	li	t2,64
     1d0:	240b003f 	li	t3,63
     1d4:	31090040 	andi	t1,t0,0x40
     1d8:	11200003 	beqz	t1,1e8 <func_80AFE428+0x70>
     1dc:	00000000 	nop
     1e0:	03e00008 	jr	ra
     1e4:	a08a0117 	sb	t2,279(a0)
     1e8:	03e00008 	jr	ra
     1ec:	a08b0117 	sb	t3,279(a0)
     1f0:	a08c0117 	sb	t4,279(a0)
     1f4:	03e00008 	jr	ra
     1f8:	00000000 	nop

000001fc <EnSkj_Init>:
     1fc:	27bdffb0 	addiu	sp,sp,-80
     200:	afbf002c 	sw	ra,44(sp)
     204:	afb00028 	sw	s0,40(sp)
     208:	afa50054 	sw	a1,84(sp)
     20c:	8483001c 	lh	v1,28(a0)
     210:	3c050000 	lui	a1,0x0
     214:	00808025 	move	s0,a0
     218:	00031a83 	sra	v1,v1,0xa
     21c:	3063003f 	andi	v1,v1,0x3f
     220:	00031c00 	sll	v1,v1,0x10
     224:	00031c03 	sra	v1,v1,0x10
     228:	a7a3004e 	sh	v1,78(sp)
     22c:	0c000000 	jal	0 <func_80AFE2B0>
     230:	24a50000 	addiu	a1,a1,0
     234:	87a3004e 	lh	v1,78(sp)
     238:	24010005 	li	at,5
     23c:	3c020000 	lui	v0,0x0
     240:	10610006 	beq	v1,at,25c <EnSkj_Init+0x60>
     244:	24420000 	addiu	v0,v0,0
     248:	24010006 	li	at,6
     24c:	10610017 	beq	v1,at,2ac <EnSkj_Init+0xb0>
     250:	3c020000 	lui	v0,0x0
     254:	10000035 	b	32c <EnSkj_Init+0x130>
     258:	24010001 	li	at,1
     25c:	240e0001 	li	t6,1
     260:	a04e0000 	sb	t6,0(v0)
     264:	ac500004 	sw	s0,4(v0)
     268:	8e180004 	lw	t8,4(s0)
     26c:	2401fffa 	li	at,-6
     270:	3c0f0000 	lui	t7,0x0
     274:	0301c824 	and	t9,t8,at
     278:	25ef0000 	addiu	t7,t7,0
     27c:	ae190004 	sw	t9,4(s0)
     280:	ae00012c 	sw	zero,300(s0)
     284:	ae000134 	sw	zero,308(s0)
     288:	ae0f0130 	sw	t7,304(s0)
     28c:	ae190004 	sw	t9,4(s0)
     290:	8fa40054 	lw	a0,84(sp)
     294:	02003025 	move	a2,s0
     298:	24070006 	li	a3,6
     29c:	0c000000 	jal	0 <func_80AFE2B0>
     2a0:	24851c24 	addiu	a1,a0,7204
     2a4:	100000d7 	b	604 <EnSkj_Init+0x408>
     2a8:	8fbf002c 	lw	ra,44(sp)
     2ac:	24420000 	addiu	v0,v0,0
     2b0:	240a0001 	li	t2,1
     2b4:	a04a0000 	sb	t2,0(v0)
     2b8:	ac500004 	sw	s0,4(v0)
     2bc:	8e0c0004 	lw	t4,4(s0)
     2c0:	2401fffa 	li	at,-6
     2c4:	3c0b0000 	lui	t3,0x0
     2c8:	01816824 	and	t5,t4,at
     2cc:	256b0000 	addiu	t3,t3,0
     2d0:	ae0d0004 	sw	t5,4(s0)
     2d4:	ae00012c 	sw	zero,300(s0)
     2d8:	ae000134 	sw	zero,308(s0)
     2dc:	ae0b0130 	sw	t3,304(s0)
     2e0:	ae0d0004 	sw	t5,4(s0)
     2e4:	8fa40054 	lw	a0,84(sp)
     2e8:	02003025 	move	a2,s0
     2ec:	24070006 	li	a3,6
     2f0:	0c000000 	jal	0 <func_80AFE2B0>
     2f4:	24851c24 	addiu	a1,a0,7204
     2f8:	3c010000 	lui	at,0x0
     2fc:	c4240000 	lwc1	$f4,0(at)
     300:	3c01c2b4 	lui	at,0xc2b4
     304:	44813000 	mtc1	at,$f6
     308:	3c0143e1 	lui	at,0x43e1
     30c:	44814000 	mtc1	at,$f8
     310:	3c180000 	lui	t8,0x0
     314:	27180000 	addiu	t8,t8,0
     318:	ae180274 	sw	t8,628(s0)
     31c:	e6040038 	swc1	$f4,56(s0)
     320:	e606003c 	swc1	$f6,60(s0)
     324:	100000b6 	b	600 <EnSkj_Init+0x404>
     328:	e6080040 	swc1	$f8,64(s0)
     32c:	a603001c 	sh	v1,28(s0)
     330:	8602001c 	lh	v0,28(s0)
     334:	02002025 	move	a0,s0
     338:	10400010 	beqz	v0,37c <EnSkj_Init+0x180>
     33c:	00000000 	nop
     340:	1041000e 	beq	v0,at,37c <EnSkj_Init+0x180>
     344:	24010002 	li	at,2
     348:	1041000c 	beq	v0,at,37c <EnSkj_Init+0x180>
     34c:	3c190000 	lui	t9,0x0
     350:	9339002d 	lbu	t9,45(t9)
     354:	3c080000 	lui	t0,0x0
     358:	01194021 	addu	t0,t0,t9
     35c:	91080074 	lbu	t0,116(t0)
     360:	29010032 	slti	at,t0,50
     364:	10200005 	beqz	at,37c <EnSkj_Init+0x180>
     368:	00000000 	nop
     36c:	0c000000 	jal	0 <func_80AFE2B0>
     370:	02002025 	move	a0,s0
     374:	100000a3 	b	604 <EnSkj_Init+0x408>
     378:	8fbf002c 	lw	ra,44(sp)
     37c:	0c000000 	jal	0 <func_80AFE2B0>
     380:	a7a3004e 	sh	v1,78(sp)
     384:	3c060600 	lui	a2,0x600
     388:	3c070600 	lui	a3,0x600
     38c:	26090190 	addiu	t1,s0,400
     390:	260a0202 	addiu	t2,s0,514
     394:	240b0013 	li	t3,19
     398:	afab0018 	sw	t3,24(sp)
     39c:	afaa0014 	sw	t2,20(sp)
     3a0:	afa90010 	sw	t1,16(sp)
     3a4:	24e70e10 	addiu	a3,a3,3600
     3a8:	24c65f40 	addiu	a2,a2,24384
     3ac:	8fa40054 	lw	a0,84(sp)
     3b0:	0c000000 	jal	0 <func_80AFE2B0>
     3b4:	2605014c 	addiu	a1,s0,332
     3b8:	87a3004e 	lh	v1,78(sp)
     3bc:	0460000f 	bltz	v1,3fc <EnSkj_Init+0x200>
     3c0:	28610003 	slti	at,v1,3
     3c4:	1020000d 	beqz	at,3fc <EnSkj_Init+0x200>
     3c8:	8fa40054 	lw	a0,84(sp)
     3cc:	8e0c0004 	lw	t4,4(s0)
     3d0:	2401fffa 	li	at,-6
     3d4:	24851c24 	addiu	a1,a0,7204
     3d8:	01816824 	and	t5,t4,at
     3dc:	ae0d0004 	sw	t5,4(s0)
     3e0:	35af0009 	ori	t7,t5,0x9
     3e4:	ae0f0004 	sw	t7,4(s0)
     3e8:	a7a3004e 	sh	v1,78(sp)
     3ec:	02003025 	move	a2,s0
     3f0:	0c000000 	jal	0 <func_80AFE2B0>
     3f4:	24070004 	li	a3,4
     3f8:	87a3004e 	lh	v1,78(sp)
     3fc:	04600003 	bltz	v1,40c <EnSkj_Init+0x210>
     400:	28610007 	slti	at,v1,7
     404:	14200006 	bnez	at,420 <EnSkj_Init+0x224>
     408:	00000000 	nop
     40c:	8e180004 	lw	t8,4(s0)
     410:	3c01fdff 	lui	at,0xfdff
     414:	3421ffff 	ori	at,at,0xffff
     418:	0301c824 	and	t9,t8,at
     41c:	ae190004 	sw	t9,4(s0)
     420:	18600017 	blez	v1,480 <EnSkj_Init+0x284>
     424:	28610003 	slti	at,v1,3
     428:	10200015 	beqz	at,480 <EnSkj_Init+0x284>
     42c:	24080007 	li	t0,7
     430:	8e0a0024 	lw	t2,36(s0)
     434:	8e090028 	lw	t1,40(s0)
     438:	3c0c0000 	lui	t4,0x0
     43c:	ae0a02f4 	sw	t2,756(s0)
     440:	8e0a002c 	lw	t2,44(s0)
     444:	258c0000 	addiu	t4,t4,0
     448:	000358c0 	sll	t3,v1,0x3
     44c:	a208001f 	sb	t0,31(s0)
     450:	016c1021 	addu	v0,t3,t4
     454:	ae0902f8 	sw	t1,760(s0)
     458:	ae0a02fc 	sw	t2,764(s0)
     45c:	240d0001 	li	t5,1
     460:	a04dfff8 	sb	t5,-8(v0)
     464:	ac50fffc 	sw	s0,-4(v0)
     468:	a20002d8 	sb	zero,728(s0)
     46c:	ae0002dc 	sw	zero,732(s0)
     470:	0c000000 	jal	0 <func_80AFE2B0>
     474:	02002025 	move	a0,s0
     478:	10000005 	b	490 <EnSkj_Init+0x294>
     47c:	00000000 	nop
     480:	240e00ff 	li	t6,255
     484:	ae0e02dc 	sw	t6,732(s0)
     488:	0c000000 	jal	0 <func_80AFE2B0>
     48c:	02002025 	move	a0,s0
     490:	3c0f0000 	lui	t7,0x0
     494:	25ef0000 	addiu	t7,t7,0
     498:	2418000a 	li	t8,10
     49c:	ae0f0098 	sw	t7,152(s0)
     4a0:	a21800af 	sb	t8,175(s0)
     4a4:	26050278 	addiu	a1,s0,632
     4a8:	afa50034 	sw	a1,52(sp)
     4ac:	0c000000 	jal	0 <func_80AFE2B0>
     4b0:	8fa40054 	lw	a0,84(sp)
     4b4:	3c070000 	lui	a3,0x0
     4b8:	8fa50034 	lw	a1,52(sp)
     4bc:	24e70000 	addiu	a3,a3,0
     4c0:	8fa40054 	lw	a0,84(sp)
     4c4:	0c000000 	jal	0 <func_80AFE2B0>
     4c8:	02003025 	move	a2,s0
     4cc:	3c060000 	lui	a2,0x0
     4d0:	24c60000 	addiu	a2,a2,0
     4d4:	260400b4 	addiu	a0,s0,180
     4d8:	24050000 	li	a1,0
     4dc:	0c000000 	jal	0 <func_80AFE2B0>
     4e0:	3c074220 	lui	a3,0x4220
     4e4:	3c053c23 	lui	a1,0x3c23
     4e8:	34a5d70a 	ori	a1,a1,0xd70a
     4ec:	0c000000 	jal	0 <func_80AFE2B0>
     4f0:	02002025 	move	a0,s0
     4f4:	44800000 	mtc1	zero,$f0
     4f8:	3c01bf80 	lui	at,0xbf80
     4fc:	44815000 	mtc1	at,$f10
     500:	24020003 	li	v0,3
     504:	a60002c4 	sh	zero,708(s0)
     508:	a600010e 	sh	zero,270(s0)
     50c:	a60002ca 	sh	zero,714(s0)
     510:	a20002d2 	sb	zero,722(s0)
     514:	a20202d4 	sb	v0,724(s0)
     518:	a20202d5 	sb	v0,725(s0)
     51c:	02002025 	move	a0,s0
     520:	e6000068 	swc1	$f0,104(s0)
     524:	e6000060 	swc1	$f0,96(s0)
     528:	0c000000 	jal	0 <func_80AFE2B0>
     52c:	e60a006c 	swc1	$f10,108(s0)
     530:	8fa80054 	lw	t0,84(sp)
     534:	3c040000 	lui	a0,0x0
     538:	24840000 	addiu	a0,a0,0
     53c:	8d021c44 	lw	v0,7236(t0)
     540:	c4500024 	lwc1	$f16,36(v0)
     544:	afa2003c 	sw	v0,60(sp)
     548:	460084a1 	cvt.d.s	$f18,$f16
     54c:	44079000 	mfc1	a3,$f18
     550:	44069800 	mfc1	a2,$f19
     554:	0c000000 	jal	0 <func_80AFE2B0>
     558:	00000000 	nop
     55c:	8fa2003c 	lw	v0,60(sp)
     560:	3c040000 	lui	a0,0x0
     564:	24840000 	addiu	a0,a0,0
     568:	c444002c 	lwc1	$f4,44(v0)
     56c:	460021a1 	cvt.d.s	$f6,$f4
     570:	44073000 	mfc1	a3,$f6
     574:	44063800 	mfc1	a2,$f7
     578:	0c000000 	jal	0 <func_80AFE2B0>
     57c:	00000000 	nop
     580:	c6080024 	lwc1	$f8,36(s0)
     584:	3c040000 	lui	a0,0x0
     588:	24840000 	addiu	a0,a0,0
     58c:	460042a1 	cvt.d.s	$f10,$f8
     590:	44075000 	mfc1	a3,$f10
     594:	44065800 	mfc1	a2,$f11
     598:	0c000000 	jal	0 <func_80AFE2B0>
     59c:	00000000 	nop
     5a0:	c610002c 	lwc1	$f16,44(s0)
     5a4:	3c040000 	lui	a0,0x0
     5a8:	24840000 	addiu	a0,a0,0
     5ac:	460084a1 	cvt.d.s	$f18,$f16
     5b0:	44079000 	mfc1	a3,$f18
     5b4:	44069800 	mfc1	a2,$f19
     5b8:	0c000000 	jal	0 <func_80AFE2B0>
     5bc:	00000000 	nop
     5c0:	c60402e0 	lwc1	$f4,736(s0)
     5c4:	3c040000 	lui	a0,0x0
     5c8:	24840000 	addiu	a0,a0,0
     5cc:	460021a1 	cvt.d.s	$f6,$f4
     5d0:	44073000 	mfc1	a3,$f6
     5d4:	44063800 	mfc1	a2,$f7
     5d8:	0c000000 	jal	0 <func_80AFE2B0>
     5dc:	00000000 	nop
     5e0:	c60802e8 	lwc1	$f8,744(s0)
     5e4:	3c040000 	lui	a0,0x0
     5e8:	24840000 	addiu	a0,a0,0
     5ec:	460042a1 	cvt.d.s	$f10,$f8
     5f0:	44075000 	mfc1	a3,$f10
     5f4:	44065800 	mfc1	a2,$f11
     5f8:	0c000000 	jal	0 <func_80AFE2B0>
     5fc:	00000000 	nop
     600:	8fbf002c 	lw	ra,44(sp)
     604:	8fb00028 	lw	s0,40(sp)
     608:	27bd0050 	addiu	sp,sp,80
     60c:	03e00008 	jr	ra
     610:	00000000 	nop

00000614 <EnSkj_Destroy>:
     614:	27bdffe8 	addiu	sp,sp,-24
     618:	00803025 	move	a2,a0
     61c:	afbf0014 	sw	ra,20(sp)
     620:	00a02025 	move	a0,a1
     624:	0c000000 	jal	0 <func_80AFE2B0>
     628:	24c50278 	addiu	a1,a2,632
     62c:	8fbf0014 	lw	ra,20(sp)
     630:	27bd0018 	addiu	sp,sp,24
     634:	03e00008 	jr	ra
     638:	00000000 	nop

0000063c <func_80AFE8EC>:
     63c:	c4840024 	lwc1	$f4,36(a0)
     640:	c4a60024 	lwc1	$f6,36(a1)
     644:	c488002c 	lwc1	$f8,44(a0)
     648:	c4aa002c 	lwc1	$f10,44(a1)
     64c:	46062001 	sub.s	$f0,$f4,$f6
     650:	3c014429 	lui	at,0x4429
     654:	c4900028 	lwc1	$f16,40(a0)
     658:	460a4081 	sub.s	$f2,$f8,$f10
     65c:	46000102 	mul.s	$f4,$f0,$f0
     660:	44815000 	mtc1	at,$f10
     664:	c4b20028 	lwc1	$f18,40(a1)
     668:	46021182 	mul.s	$f6,$f2,$f2
     66c:	00001025 	move	v0,zero
     670:	46128301 	sub.s	$f12,$f16,$f18
     674:	46062200 	add.s	$f8,$f4,$f6
     678:	460a403e 	c.le.s	$f8,$f10
     67c:	00000000 	nop
     680:	45000002 	bc1f	68c <func_80AFE8EC+0x50>
     684:	00000000 	nop
     688:	24020001 	li	v0,1
     68c:	10400008 	beqz	v0,6b0 <func_80AFE8EC+0x74>
     690:	00000000 	nop
     694:	44808000 	mtc1	zero,$f16
     698:	00001025 	move	v0,zero
     69c:	460c803e 	c.le.s	$f16,$f12
     6a0:	00000000 	nop
     6a4:	45000002 	bc1f	6b0 <func_80AFE8EC+0x74>
     6a8:	00000000 	nop
     6ac:	24020001 	li	v0,1
     6b0:	03e00008 	jr	ra
     6b4:	00000000 	nop

000006b8 <func_80AFE968>:
     6b8:	3c020000 	lui	v0,0x0
     6bc:	8c420000 	lw	v0,0(v0)
     6c0:	c4860024 	lwc1	$f6,36(a0)
     6c4:	c48a002c 	lwc1	$f10,44(a0)
     6c8:	c4440024 	lwc1	$f4,36(v0)
     6cc:	c448002c 	lwc1	$f8,44(v0)
     6d0:	3c0141d0 	lui	at,0x41d0
     6d4:	46062081 	sub.s	$f2,$f4,$f6
     6d8:	44812000 	mtc1	at,$f4
     6dc:	460a4301 	sub.s	$f12,$f8,$f10
     6e0:	46021402 	mul.s	$f16,$f2,$f2
     6e4:	00000000 	nop
     6e8:	460c6482 	mul.s	$f18,$f12,$f12
     6ec:	46128000 	add.s	$f0,$f16,$f18
     6f0:	46000004 	sqrt.s	$f0,$f0
     6f4:	03e00008 	jr	ra
     6f8:	46040000 	add.s	$f0,$f0,$f4

000006fc <func_80AFE9AC>:
     6fc:	3c0e0000 	lui	t6,0x0
     700:	8dce0000 	lw	t6,0(t6)
     704:	c4860028 	lwc1	$f6,40(a0)
     708:	3c014120 	lui	at,0x4120
     70c:	c5c40028 	lwc1	$f4,40(t6)
     710:	44814000 	mtc1	at,$f8
     714:	46062001 	sub.s	$f0,$f4,$f6
     718:	46000005 	abs.s	$f0,$f0
     71c:	03e00008 	jr	ra
     720:	46080000 	add.s	$f0,$f0,$f8

00000724 <func_80AFE9D4>:
     724:	27bdffa8 	addiu	sp,sp,-88
     728:	3c013fc0 	lui	at,0x3fc0
     72c:	44812000 	mtc1	at,$f4
     730:	3c014220 	lui	at,0x4220
     734:	44803000 	mtc1	zero,$f6
     738:	44814000 	mtc1	at,$f8
     73c:	afbf0034 	sw	ra,52(sp)
     740:	afb00030 	sw	s0,48(sp)
     744:	afa5005c 	sw	a1,92(sp)
     748:	e7a40048 	swc1	$f4,72(sp)
     74c:	e7a6004c 	swc1	$f6,76(sp)
     750:	e7a80050 	swc1	$f8,80(sp)
     754:	848e00b6 	lh	t6,182(a0)
     758:	3c014700 	lui	at,0x4700
     75c:	44819000 	mtc1	at,$f18
     760:	448e5000 	mtc1	t6,$f10
     764:	3c010000 	lui	at,0x0
     768:	c4260000 	lwc1	$f6,0(at)
     76c:	46805420 	cvt.s.w	$f16,$f10
     770:	00808025 	move	s0,a0
     774:	00002825 	move	a1,zero
     778:	46128103 	div.s	$f4,$f16,$f18
     77c:	46062302 	mul.s	$f12,$f4,$f6
     780:	0c000000 	jal	0 <func_80AFE2B0>
     784:	00000000 	nop
     788:	27a40048 	addiu	a0,sp,72
     78c:	0c000000 	jal	0 <func_80AFE2B0>
     790:	27a5003c 	addiu	a1,sp,60
     794:	c7a8003c 	lwc1	$f8,60(sp)
     798:	c60a0024 	lwc1	$f10,36(s0)
     79c:	c7b20044 	lwc1	$f18,68(sp)
     7a0:	3c0141d8 	lui	at,0x41d8
     7a4:	460a4400 	add.s	$f16,$f8,$f10
     7a8:	44815000 	mtc1	at,$f10
     7ac:	8fa5005c 	lw	a1,92(sp)
     7b0:	24060116 	li	a2,278
     7b4:	e7b0003c 	swc1	$f16,60(sp)
     7b8:	c604002c 	lwc1	$f4,44(s0)
     7bc:	44078000 	mfc1	a3,$f16
     7c0:	24a41c24 	addiu	a0,a1,7204
     7c4:	46049180 	add.s	$f6,$f18,$f4
     7c8:	e7a60044 	swc1	$f6,68(sp)
     7cc:	c6080028 	lwc1	$f8,40(s0)
     7d0:	e7a60014 	swc1	$f6,20(sp)
     7d4:	460a4480 	add.s	$f18,$f8,$f10
     7d8:	e7b20040 	swc1	$f18,64(sp)
     7dc:	c7a40040 	lwc1	$f4,64(sp)
     7e0:	e7a40010 	swc1	$f4,16(sp)
     7e4:	860f00b4 	lh	t7,180(s0)
     7e8:	afaf0018 	sw	t7,24(sp)
     7ec:	861800b6 	lh	t8,182(s0)
     7f0:	afb8001c 	sw	t8,28(sp)
     7f4:	861900b8 	lh	t9,184(s0)
     7f8:	afa00024 	sw	zero,36(sp)
     7fc:	0c000000 	jal	0 <func_80AFE2B0>
     800:	afb90020 	sw	t9,32(sp)
     804:	10400007 	beqz	v0,824 <func_80AFE9D4+0x100>
     808:	3c0141c0 	lui	at,0x41c0
     80c:	44814000 	mtc1	at,$f8
     810:	24080064 	li	t0,100
     814:	a44801e2 	sh	t0,482(v0)
     818:	e4480068 	swc1	$f8,104(v0)
     81c:	10000002 	b	828 <func_80AFE9D4+0x104>
     820:	24020001 	li	v0,1
     824:	00001025 	move	v0,zero
     828:	8fbf0034 	lw	ra,52(sp)
     82c:	8fb00030 	lw	s0,48(sp)
     830:	27bd0058 	addiu	sp,sp,88
     834:	03e00008 	jr	ra
     838:	00000000 	nop

0000083c <func_80AFEAEC>:
     83c:	27bdfb18 	addiu	sp,sp,-1256
     840:	afbf001c 	sw	ra,28(sp)
     844:	afa504ec 	sw	a1,1260(sp)
     848:	c4a40000 	lwc1	$f4,0(a1)
     84c:	3c014100 	lui	at,0x4100
     850:	240b0005 	li	t3,5
     854:	4600218d 	trunc.w.s	$f6,$f4
     858:	44812000 	mtc1	at,$f4
     85c:	240c0005 	li	t4,5
     860:	240d0080 	li	t5,128
     864:	44183000 	mfc1	t8,$f6
     868:	240f00ff 	li	t7,255
     86c:	241900ff 	li	t9,255
     870:	a7b80024 	sh	t8,36(sp)
     874:	c4a80004 	lwc1	$f8,4(a1)
     878:	24180080 	li	t8,128
     87c:	3c01bf80 	lui	at,0xbf80
     880:	4600428d 	trunc.w.s	$f10,$f8
     884:	44813000 	mtc1	at,$f6
     888:	240e00ff 	li	t6,255
     88c:	24090080 	li	t1,128
     890:	44085000 	mfc1	t0,$f10
     894:	00003025 	move	a2,zero
     898:	00003825 	move	a3,zero
     89c:	a7a80026 	sh	t0,38(sp)
     8a0:	c4b00008 	lwc1	$f16,8(a1)
     8a4:	24080080 	li	t0,128
     8a8:	afab04b8 	sw	t3,1208(sp)
     8ac:	4600848d 	trunc.w.s	$f18,$f16
     8b0:	afac04bc 	sw	t4,1212(sp)
     8b4:	a3ad04c2 	sb	t5,1218(sp)
     8b8:	a3af04c3 	sb	t7,1219(sp)
     8bc:	440a9000 	mfc1	t2,$f18
     8c0:	a3b804c6 	sb	t8,1222(sp)
     8c4:	a3b904c7 	sb	t9,1223(sp)
     8c8:	a3a804ca 	sb	t0,1226(sp)
     8cc:	a7aa0028 	sh	t2,40(sp)
     8d0:	240a00ff 	li	t2,255
     8d4:	240b0020 	li	t3,32
     8d8:	240c0020 	li	t4,32
     8dc:	240d0040 	li	t5,64
     8e0:	240f0040 	li	t7,64
     8e4:	24180008 	li	t8,8
     8e8:	27a80024 	addiu	t0,sp,36
     8ec:	24190001 	li	t9,1
     8f0:	a3a004c0 	sb	zero,1216(sp)
     8f4:	a3a004c1 	sb	zero,1217(sp)
     8f8:	a3a004c4 	sb	zero,1220(sp)
     8fc:	a3a004c5 	sb	zero,1221(sp)
     900:	a3a004c8 	sb	zero,1224(sp)
     904:	a3a004c9 	sb	zero,1225(sp)
     908:	a3ae04cb 	sb	t6,1227(sp)
     90c:	a3a004cc 	sb	zero,1228(sp)
     910:	a3a004cd 	sb	zero,1229(sp)
     914:	a3a904ce 	sb	t1,1230(sp)
     918:	a3aa04cf 	sb	t2,1231(sp)
     91c:	a3a004d0 	sb	zero,1232(sp)
     920:	a3a004d1 	sb	zero,1233(sp)
     924:	a3ab04d2 	sb	t3,1234(sp)
     928:	a3a004d3 	sb	zero,1235(sp)
     92c:	a3a004d4 	sb	zero,1236(sp)
     930:	a3a004d5 	sb	zero,1237(sp)
     934:	a3ac04d6 	sb	t4,1238(sp)
     938:	a3a004d7 	sb	zero,1239(sp)
     93c:	a3a004d8 	sb	zero,1240(sp)
     940:	a3a004d9 	sb	zero,1241(sp)
     944:	a3ad04da 	sb	t5,1242(sp)
     948:	a3a004db 	sb	zero,1243(sp)
     94c:	a3a004dc 	sb	zero,1244(sp)
     950:	a3a004dd 	sb	zero,1245(sp)
     954:	a3af04de 	sb	t7,1246(sp)
     958:	a3a004df 	sb	zero,1247(sp)
     95c:	afa004e0 	sw	zero,1248(sp)
     960:	afb804e4 	sw	t8,1252(sp)
     964:	afb90010 	sw	t9,16(sp)
     968:	afa80014 	sw	t0,20(sp)
     96c:	27a50020 	addiu	a1,sp,32
     970:	e7a404b0 	swc1	$f4,1200(sp)
     974:	0c000000 	jal	0 <func_80AFE2B0>
     978:	e7a604b4 	swc1	$f6,1204(sp)
     97c:	8fbf001c 	lw	ra,28(sp)
     980:	27bd04e8 	addiu	sp,sp,1256
     984:	03e00008 	jr	ra
     988:	00000000 	nop

0000098c <func_80AFEC3C>:
     98c:	27bdffc0 	addiu	sp,sp,-64
     990:	afbf0024 	sw	ra,36(sp)
     994:	afb00020 	sw	s0,32(sp)
     998:	afa50044 	sw	a1,68(sp)
     99c:	908e02d3 	lbu	t6,723(a0)
     9a0:	00808025 	move	s0,a0
     9a4:	3c0f0000 	lui	t7,0x0
     9a8:	51c00062 	beqzl	t6,b34 <func_80AFEC3C+0x1a8>
     9ac:	00001025 	move	v0,zero
     9b0:	8def0000 	lw	t7,0(t7)
     9b4:	55e0005f 	bnezl	t7,b34 <func_80AFEC3C+0x1a8>
     9b8:	00001025 	move	v0,zero
     9bc:	90820289 	lbu	v0,649(a0)
     9c0:	30580002 	andi	t8,v0,0x2
     9c4:	5300005b 	beqzl	t8,b34 <func_80AFEC3C+0x1a8>
     9c8:	00001025 	move	v0,zero
     9cc:	908300b1 	lbu	v1,177(a0)
     9d0:	3059fffd 	andi	t9,v0,0xfffd
     9d4:	a0990289 	sb	t9,649(a0)
     9d8:	10600050 	beqz	v1,b1c <func_80AFEC3C+0x190>
     9dc:	24090001 	li	t1,1
     9e0:	2401000f 	li	at,15
     9e4:	54610053 	bnel	v1,at,b34 <func_80AFEC3C+0x1a8>
     9e8:	00001025 	move	v0,zero
     9ec:	8488029e 	lh	t0,670(a0)
     9f0:	27a50030 	addiu	a1,sp,48
     9f4:	44882000 	mtc1	t0,$f4
     9f8:	00000000 	nop
     9fc:	468021a0 	cvt.s.w	$f6,$f4
     a00:	e7a60030 	swc1	$f6,48(sp)
     a04:	848902a0 	lh	t1,672(a0)
     a08:	44894000 	mtc1	t1,$f8
     a0c:	00000000 	nop
     a10:	468042a0 	cvt.s.w	$f10,$f8
     a14:	e7aa0034 	swc1	$f10,52(sp)
     a18:	848a02a2 	lh	t2,674(a0)
     a1c:	8fa40044 	lw	a0,68(sp)
     a20:	448a8000 	mtc1	t2,$f16
     a24:	00000000 	nop
     a28:	468084a0 	cvt.s.w	$f18,$f16
     a2c:	0c000000 	jal	0 <func_80AFE2B0>
     a30:	e7b20038 	swc1	$f18,56(sp)
     a34:	8fa40044 	lw	a0,68(sp)
     a38:	24050001 	li	a1,1
     a3c:	0c000000 	jal	0 <func_80AFE2B0>
     a40:	27a60030 	addiu	a2,sp,48
     a44:	860b008a 	lh	t3,138(s0)
     a48:	860c0032 	lh	t4,50(s0)
     a4c:	920302d1 	lbu	v1,721(s0)
     a50:	24010002 	li	at,2
     a54:	016c1023 	subu	v0,t3,t4
     a58:	00021400 	sll	v0,v0,0x10
     a5c:	10610003 	beq	v1,at,a6c <func_80AFEC3C+0xe0>
     a60:	00021403 	sra	v0,v0,0x10
     a64:	24010006 	li	at,6
     a68:	1461000f 	bne	v1,at,aa8 <func_80AFEC3C+0x11c>
     a6c:	28416001 	slti	at,v0,24577
     a70:	10200003 	beqz	at,a80 <func_80AFEC3C+0xf4>
     a74:	02002025 	move	a0,s0
     a78:	2841a000 	slti	at,v0,-24576
     a7c:	1020000a 	beqz	at,aa8 <func_80AFEC3C+0x11c>
     a80:	240d0008 	li	t5,8
     a84:	afad0010 	sw	t5,16(sp)
     a88:	24054000 	li	a1,16384
     a8c:	240600ff 	li	a2,255
     a90:	0c000000 	jal	0 <func_80AFE2B0>
     a94:	00003825 	move	a3,zero
     a98:	0c000000 	jal	0 <func_80AFE2B0>
     a9c:	02002025 	move	a0,s0
     aa0:	10000024 	b	b34 <func_80AFEC3C+0x1a8>
     aa4:	24020001 	li	v0,1
     aa8:	0c000000 	jal	0 <func_80AFE2B0>
     aac:	02002025 	move	a0,s0
     ab0:	240e0008 	li	t6,8
     ab4:	afae0010 	sw	t6,16(sp)
     ab8:	02002025 	move	a0,s0
     abc:	24054000 	li	a1,16384
     ac0:	240600ff 	li	a2,255
     ac4:	0c000000 	jal	0 <func_80AFE2B0>
     ac8:	00003825 	move	a3,zero
     acc:	920f00af 	lbu	t7,175(s0)
     ad0:	11e0000e 	beqz	t7,b0c <func_80AFEC3C+0x180>
     ad4:	00000000 	nop
     ad8:	920202d5 	lbu	v0,725(s0)
     adc:	2408003c 	li	t0,60
     ae0:	10400002 	beqz	v0,aec <func_80AFEC3C+0x160>
     ae4:	2458ffff 	addiu	t8,v0,-1
     ae8:	a21802d5 	sb	t8,725(s0)
     aec:	861902ce 	lh	t9,718(s0)
     af0:	17200002 	bnez	t9,afc <func_80AFEC3C+0x170>
     af4:	00000000 	nop
     af8:	a60802ce 	sh	t0,718(s0)
     afc:	0c000000 	jal	0 <func_80AFE2B0>
     b00:	02002025 	move	a0,s0
     b04:	1000000b 	b	b34 <func_80AFEC3C+0x1a8>
     b08:	24020001 	li	v0,1
     b0c:	0c000000 	jal	0 <func_80AFE2B0>
     b10:	02002025 	move	a0,s0
     b14:	10000007 	b	b34 <func_80AFEC3C+0x1a8>
     b18:	24020001 	li	v0,1
     b1c:	a20902d2 	sb	t1,722(s0)
     b20:	0c000000 	jal	0 <func_80AFE2B0>
     b24:	02002025 	move	a0,s0
     b28:	10000002 	b	b34 <func_80AFEC3C+0x1a8>
     b2c:	24020001 	li	v0,1
     b30:	00001025 	move	v0,zero
     b34:	8fbf0024 	lw	ra,36(sp)
     b38:	8fb00020 	lw	s0,32(sp)
     b3c:	27bd0040 	addiu	sp,sp,64
     b40:	03e00008 	jr	ra
     b44:	00000000 	nop

00000b48 <func_80AFEDF8>:
     b48:	27bdffe8 	addiu	sp,sp,-24
     b4c:	afbf0014 	sw	ra,20(sp)
     b50:	c48602ec 	lwc1	$f6,748(a0)
     b54:	c4840090 	lwc1	$f4,144(a0)
     b58:	00803025 	move	a2,a0
     b5c:	00a02025 	move	a0,a1
     b60:	4606203c 	c.lt.s	$f4,$f6
     b64:	00000000 	nop
     b68:	45020008 	bc1fl	b8c <func_80AFEDF8+0x44>
     b6c:	84ce008a 	lh	t6,138(a2)
     b70:	0c000000 	jal	0 <func_80AFE2B0>
     b74:	afa60018 	sw	a2,24(sp)
     b78:	10400003 	beqz	v0,b88 <func_80AFEDF8+0x40>
     b7c:	8fa60018 	lw	a2,24(sp)
     b80:	10000010 	b	bc4 <func_80AFEDF8+0x7c>
     b84:	24020001 	li	v0,1
     b88:	84ce008a 	lh	t6,138(a2)
     b8c:	84cf0032 	lh	t7,50(a2)
     b90:	84c302c8 	lh	v1,712(a2)
     b94:	01cf1023 	subu	v0,t6,t7
     b98:	00021400 	sll	v0,v0,0x10
     b9c:	00021403 	sra	v0,v0,0x10
     ba0:	0043082a 	slt	at,v0,v1
     ba4:	10200006 	beqz	at,bc0 <func_80AFEDF8+0x78>
     ba8:	0003c023 	negu	t8,v1
     bac:	0302082a 	slt	at,t8,v0
     bb0:	50200004 	beqzl	at,bc4 <func_80AFEDF8+0x7c>
     bb4:	00001025 	move	v0,zero
     bb8:	10000002 	b	bc4 <func_80AFEDF8+0x7c>
     bbc:	24020001 	li	v0,1
     bc0:	00001025 	move	v0,zero
     bc4:	8fbf0014 	lw	ra,20(sp)
     bc8:	27bd0018 	addiu	sp,sp,24
     bcc:	03e00008 	jr	ra
     bd0:	00000000 	nop

00000bd4 <func_80AFEE84>:
     bd4:	3c014100 	lui	at,0x4100
     bd8:	44812000 	mtc1	at,$f4
     bdc:	3c01c100 	lui	at,0xc100
     be0:	44813000 	mtc1	at,$f6
     be4:	27bdffe8 	addiu	sp,sp,-24
     be8:	afbf0014 	sw	ra,20(sp)
     bec:	e4840060 	swc1	$f4,96(a0)
     bf0:	e4860068 	swc1	$f6,104(a0)
     bf4:	afa40018 	sw	a0,24(sp)
     bf8:	0c000000 	jal	0 <func_80AFE2B0>
     bfc:	00002825 	move	a1,zero
     c00:	8fa40018 	lw	a0,24(sp)
     c04:	0c000000 	jal	0 <func_80AFE2B0>
     c08:	00002825 	move	a1,zero
     c0c:	8fbf0014 	lw	ra,20(sp)
     c10:	27bd0018 	addiu	sp,sp,24
     c14:	03e00008 	jr	ra
     c18:	00000000 	nop

00000c1c <func_80AFEECC>:
     c1c:	27bdffe8 	addiu	sp,sp,-24
     c20:	afbf0014 	sw	ra,20(sp)
     c24:	908e02d6 	lbu	t6,726(a0)
     c28:	24010002 	li	at,2
     c2c:	44802000 	mtc1	zero,$f4
     c30:	15c10005 	bne	t6,at,c48 <func_80AFEECC+0x2c>
     c34:	8c8202dc 	lw	v0,732(a0)
     c38:	3c010001 	lui	at,0x1
     c3c:	00250821 	addu	at,at,a1
     c40:	a42004c6 	sh	zero,1222(at)
     c44:	a08002d6 	sb	zero,726(a0)
     c48:	908f02d2 	lbu	t7,722(a0)
     c4c:	2442ffec 	addiu	v0,v0,-20
     c50:	2c410100 	sltiu	at,v0,256
     c54:	51e00007 	beqzl	t7,c74 <func_80AFEECC+0x58>
     c58:	c4860060 	lwc1	$f6,96(a0)
     c5c:	54200003 	bnezl	at,c6c <func_80AFEECC+0x50>
     c60:	ac8202dc 	sw	v0,732(a0)
     c64:	00001025 	move	v0,zero
     c68:	ac8202dc 	sw	v0,732(a0)
     c6c:	a08200c8 	sb	v0,200(a0)
     c70:	c4860060 	lwc1	$f6,96(a0)
     c74:	4604303e 	c.le.s	$f6,$f4
     c78:	00000000 	nop
     c7c:	45020008 	bc1fl	ca0 <func_80AFEECC+0x84>
     c80:	8fbf0014 	lw	ra,20(sp)
     c84:	94820088 	lhu	v0,136(a0)
     c88:	30580002 	andi	t8,v0,0x2
     c8c:	13000003 	beqz	t8,c9c <func_80AFEECC+0x80>
     c90:	3059fffd 	andi	t9,v0,0xfffd
     c94:	0c000000 	jal	0 <func_80AFE2B0>
     c98:	a4990088 	sh	t9,136(a0)
     c9c:	8fbf0014 	lw	ra,20(sp)
     ca0:	27bd0018 	addiu	sp,sp,24
     ca4:	03e00008 	jr	ra
     ca8:	00000000 	nop

00000cac <func_80AFEF5C>:
     cac:	27bdffe8 	addiu	sp,sp,-24
     cb0:	afbf0014 	sw	ra,20(sp)
     cb4:	240e0003 	li	t6,3
     cb8:	a08e02d4 	sb	t6,724(a0)
     cbc:	a48002cc 	sh	zero,716(a0)
     cc0:	afa40018 	sw	a0,24(sp)
     cc4:	0c000000 	jal	0 <func_80AFE2B0>
     cc8:	24050001 	li	a1,1
     ccc:	8fa40018 	lw	a0,24(sp)
     cd0:	0c000000 	jal	0 <func_80AFE2B0>
     cd4:	24050001 	li	a1,1
     cd8:	8fbf0014 	lw	ra,20(sp)
     cdc:	27bd0018 	addiu	sp,sp,24
     ce0:	03e00008 	jr	ra
     ce4:	00000000 	nop

00000ce8 <func_80AFEF98>:
     ce8:	27bdffe0 	addiu	sp,sp,-32
     cec:	00803025 	move	a2,a0
     cf0:	afbf0014 	sw	ra,20(sp)
     cf4:	3c040600 	lui	a0,0x600
     cf8:	afa50024 	sw	a1,36(sp)
     cfc:	248407a4 	addiu	a0,a0,1956
     d00:	0c000000 	jal	0 <func_80AFE2B0>
     d04:	afa60020 	sw	a2,32(sp)
     d08:	44822000 	mtc1	v0,$f4
     d0c:	8fa60020 	lw	a2,32(sp)
     d10:	468021a0 	cvt.s.w	$f6,$f4
     d14:	c4c80164 	lwc1	$f8,356(a2)
     d18:	46083032 	c.eq.s	$f6,$f8
     d1c:	00000000 	nop
     d20:	45020016 	bc1fl	d7c <func_80AFEF98+0x94>
     d24:	8fbf0014 	lw	ra,20(sp)
     d28:	84ce02cc 	lh	t6,716(a2)
     d2c:	55c00013 	bnezl	t6,d7c <func_80AFEF98+0x94>
     d30:	8fbf0014 	lw	ra,20(sp)
     d34:	90c302d4 	lbu	v1,724(a2)
     d38:	00c02025 	move	a0,a2
     d3c:	8fa50024 	lw	a1,36(sp)
     d40:	1060000b 	beqz	v1,d70 <func_80AFEF98+0x88>
     d44:	00000000 	nop
     d48:	a3a3001f 	sb	v1,31(sp)
     d4c:	0c000000 	jal	0 <func_80AFE2B0>
     d50:	afa60020 	sw	a2,32(sp)
     d54:	93a3001f 	lbu	v1,31(sp)
     d58:	8fa60020 	lw	a2,32(sp)
     d5c:	240f0004 	li	t7,4
     d60:	2463ffff 	addiu	v1,v1,-1
     d64:	a4cf02cc 	sh	t7,716(a2)
     d68:	10000003 	b	d78 <func_80AFEF98+0x90>
     d6c:	a0c302d4 	sb	v1,724(a2)
     d70:	0c000000 	jal	0 <func_80AFE2B0>
     d74:	00c02025 	move	a0,a2
     d78:	8fbf0014 	lw	ra,20(sp)
     d7c:	27bd0020 	addiu	sp,sp,32
     d80:	03e00008 	jr	ra
     d84:	00000000 	nop

00000d88 <func_80AFF038>:
     d88:	3c014348 	lui	at,0x4348
     d8c:	44812000 	mtc1	at,$f4
     d90:	27bdffe8 	addiu	sp,sp,-24
     d94:	afbf0014 	sw	ra,20(sp)
     d98:	240e0aaa 	li	t6,2730
     d9c:	a48e02c8 	sh	t6,712(a0)
     da0:	e48402ec 	swc1	$f4,748(a0)
     da4:	afa40018 	sw	a0,24(sp)
     da8:	0c000000 	jal	0 <func_80AFE2B0>
     dac:	24050002 	li	a1,2
     db0:	8fa40018 	lw	a0,24(sp)
     db4:	0c000000 	jal	0 <func_80AFE2B0>
     db8:	24050002 	li	a1,2
     dbc:	8fbf0014 	lw	ra,20(sp)
     dc0:	27bd0018 	addiu	sp,sp,24
     dc4:	03e00008 	jr	ra
     dc8:	00000000 	nop

00000dcc <func_80AFF07C>:
     dcc:	27bdffe0 	addiu	sp,sp,-32
     dd0:	afbf0014 	sw	ra,20(sp)
     dd4:	afa50024 	sw	a1,36(sp)
     dd8:	848e001c 	lh	t6,28(a0)
     ddc:	00803825 	move	a3,a0
     de0:	3c0f0000 	lui	t7,0x0
     de4:	15c0002a 	bnez	t6,e90 <func_80AFF07C+0xc4>
     de8:	8fa50024 	lw	a1,36(sp)
     dec:	95ef0ef2 	lhu	t7,3826(t7)
     df0:	3c020000 	lui	v0,0x0
     df4:	3c014348 	lui	at,0x4348
     df8:	31f80040 	andi	t8,t7,0x40
     dfc:	1700000c 	bnez	t8,e30 <func_80AFF07C+0x64>
     e00:	24420000 	addiu	v0,v0,0
     e04:	c4840090 	lwc1	$f4,144(a0)
     e08:	44813000 	mtc1	at,$f6
     e0c:	24190001 	li	t9,1
     e10:	4606203c 	c.lt.s	$f4,$f6
     e14:	00000000 	nop
     e18:	45020006 	bc1fl	e34 <func_80AFF07C+0x68>
     e1c:	90480000 	lbu	t0,0(v0)
     e20:	0c000000 	jal	0 <func_80AFE2B0>
     e24:	a09902d2 	sb	t9,722(a0)
     e28:	10000021 	b	eb0 <func_80AFF07C+0xe4>
     e2c:	8fbf0014 	lw	ra,20(sp)
     e30:	90480000 	lbu	t0,0(v0)
     e34:	8fa90024 	lw	t1,36(sp)
     e38:	5100001d 	beqzl	t0,eb0 <func_80AFF07C+0xe4>
     e3c:	8fbf0014 	lw	ra,20(sp)
     e40:	8d241c44 	lw	a0,7236(t1)
     e44:	afa70020 	sw	a3,32(sp)
     e48:	8c450004 	lw	a1,4(v0)
     e4c:	0c000000 	jal	0 <func_80AFE2B0>
     e50:	afa4001c 	sw	a0,28(sp)
     e54:	8fa6001c 	lw	a2,28(sp)
     e58:	10400014 	beqz	v0,eac <func_80AFF07C+0xe0>
     e5c:	8fa70020 	lw	a3,32(sp)
     e60:	00e02025 	move	a0,a3
     e64:	0c000000 	jal	0 <func_80AFE2B0>
     e68:	afa6001c 	sw	a2,28(sp)
     e6c:	8fa6001c 	lw	a2,28(sp)
     e70:	3c010080 	lui	at,0x80
     e74:	3c0c0000 	lui	t4,0x0
     e78:	8cca0680 	lw	t2,1664(a2)
     e7c:	01415825 	or	t3,t2,at
     e80:	accb0680 	sw	t3,1664(a2)
     e84:	8d8c0000 	lw	t4,0(t4)
     e88:	10000008 	b	eac <func_80AFF07C+0xe0>
     e8c:	accc06a8 	sw	t4,1704(a2)
     e90:	00e02025 	move	a0,a3
     e94:	0c000000 	jal	0 <func_80AFE2B0>
     e98:	afa70020 	sw	a3,32(sp)
     e9c:	10400003 	beqz	v0,eac <func_80AFF07C+0xe0>
     ea0:	8fa70020 	lw	a3,32(sp)
     ea4:	0c000000 	jal	0 <func_80AFE2B0>
     ea8:	00e02025 	move	a0,a3
     eac:	8fbf0014 	lw	ra,20(sp)
     eb0:	27bd0020 	addiu	sp,sp,32
     eb4:	03e00008 	jr	ra
     eb8:	00000000 	nop

00000ebc <func_80AFF16C>:
     ebc:	27bdffe8 	addiu	sp,sp,-24
     ec0:	afbf0014 	sw	ra,20(sp)
     ec4:	afa40018 	sw	a0,24(sp)
     ec8:	0c000000 	jal	0 <func_80AFE2B0>
     ecc:	24050003 	li	a1,3
     ed0:	8fa40018 	lw	a0,24(sp)
     ed4:	0c000000 	jal	0 <func_80AFE2B0>
     ed8:	24050003 	li	a1,3
     edc:	8fbf0014 	lw	ra,20(sp)
     ee0:	27bd0018 	addiu	sp,sp,24
     ee4:	03e00008 	jr	ra
     ee8:	00000000 	nop

00000eec <func_80AFF19C>:
     eec:	27bdffe8 	addiu	sp,sp,-24
     ef0:	afa40018 	sw	a0,24(sp)
     ef4:	afbf0014 	sw	ra,20(sp)
     ef8:	3c040600 	lui	a0,0x600
     efc:	afa5001c 	sw	a1,28(sp)
     f00:	0c000000 	jal	0 <func_80AFE2B0>
     f04:	24846a98 	addiu	a0,a0,27288
     f08:	44822000 	mtc1	v0,$f4
     f0c:	8fa40018 	lw	a0,24(sp)
     f10:	468021a0 	cvt.s.w	$f6,$f4
     f14:	c4880164 	lwc1	$f8,356(a0)
     f18:	46083032 	c.eq.s	$f6,$f8
     f1c:	00000000 	nop
     f20:	45020004 	bc1fl	f34 <func_80AFF19C+0x48>
     f24:	8fbf0014 	lw	ra,20(sp)
     f28:	0c000000 	jal	0 <func_80AFE2B0>
     f2c:	00000000 	nop
     f30:	8fbf0014 	lw	ra,20(sp)
     f34:	27bd0018 	addiu	sp,sp,24
     f38:	03e00008 	jr	ra
     f3c:	00000000 	nop

00000f40 <func_80AFF1F0>:
     f40:	27bdffe8 	addiu	sp,sp,-24
     f44:	afbf0014 	sw	ra,20(sp)
     f48:	afa40018 	sw	a0,24(sp)
     f4c:	0c000000 	jal	0 <func_80AFE2B0>
     f50:	24050004 	li	a1,4
     f54:	8fa40018 	lw	a0,24(sp)
     f58:	0c000000 	jal	0 <func_80AFE2B0>
     f5c:	24050004 	li	a1,4
     f60:	8fbf0014 	lw	ra,20(sp)
     f64:	27bd0018 	addiu	sp,sp,24
     f68:	03e00008 	jr	ra
     f6c:	00000000 	nop

00000f70 <func_80AFF220>:
     f70:	27bdffe8 	addiu	sp,sp,-24
     f74:	afa5001c 	sw	a1,28(sp)
     f78:	00802825 	move	a1,a0
     f7c:	afa40018 	sw	a0,24(sp)
     f80:	afbf0014 	sw	ra,20(sp)
     f84:	3c040600 	lui	a0,0x600
     f88:	24846d84 	addiu	a0,a0,28036
     f8c:	0c000000 	jal	0 <func_80AFE2B0>
     f90:	afa50018 	sw	a1,24(sp)
     f94:	44822000 	mtc1	v0,$f4
     f98:	8fa50018 	lw	a1,24(sp)
     f9c:	468021a0 	cvt.s.w	$f6,$f4
     fa0:	c4a80164 	lwc1	$f8,356(a1)
     fa4:	46083032 	c.eq.s	$f6,$f8
     fa8:	00000000 	nop
     fac:	4502000d 	bc1fl	fe4 <func_80AFF220+0x74>
     fb0:	8fbf0014 	lw	ra,20(sp)
     fb4:	90ae02d5 	lbu	t6,725(a1)
     fb8:	240f0003 	li	t7,3
     fbc:	00a02025 	move	a0,a1
     fc0:	15c00005 	bnez	t6,fd8 <func_80AFF220+0x68>
     fc4:	00000000 	nop
     fc8:	0c000000 	jal	0 <func_80AFE2B0>
     fcc:	a0af02d5 	sb	t7,725(a1)
     fd0:	10000004 	b	fe4 <func_80AFF220+0x74>
     fd4:	8fbf0014 	lw	ra,20(sp)
     fd8:	0c000000 	jal	0 <func_80AFE2B0>
     fdc:	00a02025 	move	a0,a1
     fe0:	8fbf0014 	lw	ra,20(sp)
     fe4:	27bd0018 	addiu	sp,sp,24
     fe8:	03e00008 	jr	ra
     fec:	00000000 	nop

00000ff0 <func_80AFF2A0>:
     ff0:	27bdffe8 	addiu	sp,sp,-24
     ff4:	afbf0014 	sw	ra,20(sp)
     ff8:	0c000000 	jal	0 <func_80AFE2B0>
     ffc:	afa40018 	sw	a0,24(sp)
    1000:	8fa40018 	lw	a0,24(sp)
    1004:	44802000 	mtc1	zero,$f4
    1008:	24050005 	li	a1,5
    100c:	0c000000 	jal	0 <func_80AFE2B0>
    1010:	e4840068 	swc1	$f4,104(a0)
    1014:	8fa40018 	lw	a0,24(sp)
    1018:	0c000000 	jal	0 <func_80AFE2B0>
    101c:	24050005 	li	a1,5
    1020:	8fbf0014 	lw	ra,20(sp)
    1024:	27bd0018 	addiu	sp,sp,24
    1028:	03e00008 	jr	ra
    102c:	00000000 	nop

00001030 <func_80AFF2E0>:
    1030:	27bdffe8 	addiu	sp,sp,-24
    1034:	afa40018 	sw	a0,24(sp)
    1038:	afbf0014 	sw	ra,20(sp)
    103c:	3c040600 	lui	a0,0x600
    1040:	afa5001c 	sw	a1,28(sp)
    1044:	0c000000 	jal	0 <func_80AFE2B0>
    1048:	24847128 	addiu	a0,a0,28968
    104c:	44822000 	mtc1	v0,$f4
    1050:	8fa40018 	lw	a0,24(sp)
    1054:	468021a0 	cvt.s.w	$f6,$f4
    1058:	c4880164 	lwc1	$f8,356(a0)
    105c:	46083032 	c.eq.s	$f6,$f8
    1060:	00000000 	nop
    1064:	45020004 	bc1fl	1078 <func_80AFF2E0+0x48>
    1068:	8fbf0014 	lw	ra,20(sp)
    106c:	0c000000 	jal	0 <func_80AFE2B0>
    1070:	00000000 	nop
    1074:	8fbf0014 	lw	ra,20(sp)
    1078:	27bd0018 	addiu	sp,sp,24
    107c:	03e00008 	jr	ra
    1080:	00000000 	nop

00001084 <func_80AFF334>:
    1084:	27bdffe8 	addiu	sp,sp,-24
    1088:	3c014416 	lui	at,0x4416
    108c:	44812000 	mtc1	at,$f4
    1090:	afbf0014 	sw	ra,20(sp)
    1094:	240e2000 	li	t6,8192
    1098:	240f0190 	li	t7,400
    109c:	a48e02c8 	sh	t6,712(a0)
    10a0:	a48f02ca 	sh	t7,714(a0)
    10a4:	e48402ec 	swc1	$f4,748(a0)
    10a8:	afa40018 	sw	a0,24(sp)
    10ac:	0c000000 	jal	0 <func_80AFE2B0>
    10b0:	24050006 	li	a1,6
    10b4:	8fa40018 	lw	a0,24(sp)
    10b8:	0c000000 	jal	0 <func_80AFE2B0>
    10bc:	24050006 	li	a1,6
    10c0:	8fbf0014 	lw	ra,20(sp)
    10c4:	27bd0018 	addiu	sp,sp,24
    10c8:	03e00008 	jr	ra
    10cc:	00000000 	nop

000010d0 <func_80AFF380>:
    10d0:	27bdffe8 	addiu	sp,sp,-24
    10d4:	afbf0014 	sw	ra,20(sp)
    10d8:	848e02ca 	lh	t6,714(a0)
    10dc:	15c00005 	bnez	t6,10f4 <func_80AFF380+0x24>
    10e0:	00000000 	nop
    10e4:	0c000000 	jal	0 <func_80AFE2B0>
    10e8:	00000000 	nop
    10ec:	10000009 	b	1114 <func_80AFF380+0x44>
    10f0:	8fbf0014 	lw	ra,20(sp)
    10f4:	0c000000 	jal	0 <func_80AFE2B0>
    10f8:	afa40018 	sw	a0,24(sp)
    10fc:	10400004 	beqz	v0,1110 <func_80AFF380+0x40>
    1100:	8fa40018 	lw	a0,24(sp)
    1104:	240f0258 	li	t7,600
    1108:	0c000000 	jal	0 <func_80AFE2B0>
    110c:	a48f02ca 	sh	t7,714(a0)
    1110:	8fbf0014 	lw	ra,20(sp)
    1114:	27bd0018 	addiu	sp,sp,24
    1118:	03e00008 	jr	ra
    111c:	00000000 	nop

00001120 <func_80AFF3D0>:
    1120:	27bdffe8 	addiu	sp,sp,-24
    1124:	afbf0014 	sw	ra,20(sp)
    1128:	3c014416 	lui	at,0x4416
    112c:	44802000 	mtc1	zero,$f4
    1130:	44813000 	mtc1	at,$f6
    1134:	240e003c 	li	t6,60
    1138:	240f2000 	li	t7,8192
    113c:	a48e02cc 	sh	t6,716(a0)
    1140:	a48f02c8 	sh	t7,712(a0)
    1144:	e48402f0 	swc1	$f4,752(a0)
    1148:	e48602ec 	swc1	$f6,748(a0)
    114c:	afa40018 	sw	a0,24(sp)
    1150:	0c000000 	jal	0 <func_80AFE2B0>
    1154:	24050007 	li	a1,7
    1158:	8fa40018 	lw	a0,24(sp)
    115c:	0c000000 	jal	0 <func_80AFE2B0>
    1160:	24050007 	li	a1,7
    1164:	8fbf0014 	lw	ra,20(sp)
    1168:	27bd0018 	addiu	sp,sp,24
    116c:	03e00008 	jr	ra
    1170:	00000000 	nop

00001174 <func_80AFF424>:
    1174:	27bdffa0 	addiu	sp,sp,-96
    1178:	afbf0024 	sw	ra,36(sp)
    117c:	afb00020 	sw	s0,32(sp)
    1180:	848e02cc 	lh	t6,716(a0)
    1184:	00808025 	move	s0,a0
    1188:	55c00006 	bnezl	t6,11a4 <func_80AFF424+0x30>
    118c:	860f02ca 	lh	t7,714(s0)
    1190:	0c000000 	jal	0 <func_80AFE2B0>
    1194:	00000000 	nop
    1198:	10000065 	b	1330 <func_80AFF424+0x1bc>
    119c:	8fbf0024 	lw	ra,36(sp)
    11a0:	860f02ca 	lh	t7,714(s0)
    11a4:	11e00056 	beqz	t7,1300 <func_80AFF424+0x18c>
    11a8:	00000000 	nop
    11ac:	c60402f0 	lwc1	$f4,752(s0)
    11b0:	8605008a 	lh	a1,138(s0)
    11b4:	afa00010 	sw	zero,16(sp)
    11b8:	4600218d 	trunc.w.s	$f6,$f4
    11bc:	260400b6 	addiu	a0,s0,182
    11c0:	24060005 	li	a2,5
    11c4:	44073000 	mfc1	a3,$f6
    11c8:	00000000 	nop
    11cc:	00073c00 	sll	a3,a3,0x10
    11d0:	0c000000 	jal	0 <func_80AFE2B0>
    11d4:	00073c03 	sra	a3,a3,0x10
    11d8:	a7a2002e 	sh	v0,46(sp)
    11dc:	861900b6 	lh	t9,182(s0)
    11e0:	260402f0 	addiu	a0,s0,752
    11e4:	3c0544fa 	lui	a1,0x44fa
    11e8:	3c063f80 	lui	a2,0x3f80
    11ec:	3c074348 	lui	a3,0x4348
    11f0:	0c000000 	jal	0 <func_80AFE2B0>
    11f4:	a6190032 	sh	t9,50(s0)
    11f8:	44800000 	mtc1	zero,$f0
    11fc:	3c01c2f0 	lui	at,0xc2f0
    1200:	44814000 	mtc1	at,$f8
    1204:	e7a00054 	swc1	$f0,84(sp)
    1208:	e7a00058 	swc1	$f0,88(sp)
    120c:	e7a8005c 	swc1	$f8,92(sp)
    1210:	860800b6 	lh	t0,182(s0)
    1214:	3c014700 	lui	at,0x4700
    1218:	44813000 	mtc1	at,$f6
    121c:	44885000 	mtc1	t0,$f10
    1220:	3c010000 	lui	at,0x0
    1224:	00002825 	move	a1,zero
    1228:	46805120 	cvt.s.w	$f4,$f10
    122c:	c42a0000 	lwc1	$f10,0(at)
    1230:	46062203 	div.s	$f8,$f4,$f6
    1234:	460a4302 	mul.s	$f12,$f8,$f10
    1238:	0c000000 	jal	0 <func_80AFE2B0>
    123c:	00000000 	nop
    1240:	27a40054 	addiu	a0,sp,84
    1244:	0c000000 	jal	0 <func_80AFE2B0>
    1248:	27a50048 	addiu	a1,sp,72
    124c:	c60402e0 	lwc1	$f4,736(s0)
    1250:	c7a60048 	lwc1	$f6,72(sp)
    1254:	c6100024 	lwc1	$f16,36(s0)
    1258:	c60a02e8 	lwc1	$f10,744(s0)
    125c:	46062200 	add.s	$f8,$f4,$f6
    1260:	c612002c 	lwc1	$f18,44(s0)
    1264:	3c014120 	lui	at,0x4120
    1268:	e6080024 	swc1	$f8,36(s0)
    126c:	c7a40050 	lwc1	$f4,80(sp)
    1270:	c6080024 	lwc1	$f8,36(s0)
    1274:	46045180 	add.s	$f6,$f10,$f4
    1278:	46104081 	sub.s	$f2,$f8,$f16
    127c:	e606002c 	swc1	$f6,44(s0)
    1280:	c60a002c 	lwc1	$f10,44(s0)
    1284:	44814000 	mtc1	at,$f8
    1288:	46021102 	mul.s	$f4,$f2,$f2
    128c:	46125301 	sub.s	$f12,$f10,$f18
    1290:	3c014120 	lui	at,0x4120
    1294:	87a9002e 	lh	t1,46(sp)
    1298:	460c6182 	mul.s	$f6,$f12,$f12
    129c:	46062000 	add.s	$f0,$f4,$f6
    12a0:	46000384 	sqrt.s	$f14,$f0
    12a4:	460e403c 	c.lt.s	$f8,$f14
    12a8:	00000000 	nop
    12ac:	45020004 	bc1fl	12c0 <func_80AFF424+0x14c>
    12b0:	3c014120 	lui	at,0x4120
    12b4:	44817000 	mtc1	at,$f14
    12b8:	00000000 	nop
    12bc:	3c014120 	lui	at,0x4120
    12c0:	44815000 	mtc1	at,$f10
    12c4:	3c013f80 	lui	at,0x3f80
    12c8:	05210008 	bgez	t1,12ec <func_80AFF424+0x178>
    12cc:	460a7383 	div.s	$f14,$f14,$f10
    12d0:	3c013f80 	lui	at,0x3f80
    12d4:	44812000 	mtc1	at,$f4
    12d8:	00000000 	nop
    12dc:	460e2180 	add.s	$f6,$f4,$f14
    12e0:	46003207 	neg.s	$f8,$f6
    12e4:	10000011 	b	132c <func_80AFF424+0x1b8>
    12e8:	e6080168 	swc1	$f8,360(s0)
    12ec:	44815000 	mtc1	at,$f10
    12f0:	00000000 	nop
    12f4:	460e5100 	add.s	$f4,$f10,$f14
    12f8:	1000000c 	b	132c <func_80AFF424+0x1b8>
    12fc:	e6040168 	swc1	$f4,360(s0)
    1300:	0c000000 	jal	0 <func_80AFE2B0>
    1304:	02002025 	move	a0,s0
    1308:	10400006 	beqz	v0,1324 <func_80AFF424+0x1b0>
    130c:	240a0001 	li	t2,1
    1310:	a20a02d2 	sb	t2,722(s0)
    1314:	0c000000 	jal	0 <func_80AFE2B0>
    1318:	02002025 	move	a0,s0
    131c:	10000004 	b	1330 <func_80AFF424+0x1bc>
    1320:	8fbf0024 	lw	ra,36(sp)
    1324:	0c000000 	jal	0 <func_80AFE2B0>
    1328:	02002025 	move	a0,s0
    132c:	8fbf0024 	lw	ra,36(sp)
    1330:	8fb00020 	lw	s0,32(sp)
    1334:	27bd0060 	addiu	sp,sp,96
    1338:	03e00008 	jr	ra
    133c:	00000000 	nop

00001340 <func_80AFF5F0>:
    1340:	27bdffe8 	addiu	sp,sp,-24
    1344:	afbf0014 	sw	ra,20(sp)
    1348:	afa40018 	sw	a0,24(sp)
    134c:	0c000000 	jal	0 <func_80AFE2B0>
    1350:	2484014c 	addiu	a0,a0,332
    1354:	8fa40018 	lw	a0,24(sp)
    1358:	0c000000 	jal	0 <func_80AFE2B0>
    135c:	24050008 	li	a1,8
    1360:	8fbf0014 	lw	ra,20(sp)
    1364:	27bd0018 	addiu	sp,sp,24
    1368:	03e00008 	jr	ra
    136c:	00000000 	nop

00001370 <func_80AFF620>:
    1370:	27bdffe8 	addiu	sp,sp,-24
    1374:	afbf0014 	sw	ra,20(sp)
    1378:	afa5001c 	sw	a1,28(sp)
    137c:	c4860164 	lwc1	$f6,356(a0)
    1380:	44802000 	mtc1	zero,$f4
    1384:	00000000 	nop
    1388:	46062032 	c.eq.s	$f4,$f6
    138c:	00000000 	nop
    1390:	45020004 	bc1fl	13a4 <func_80AFF620+0x34>
    1394:	8fbf0014 	lw	ra,20(sp)
    1398:	0c000000 	jal	0 <func_80AFE2B0>
    139c:	00000000 	nop
    13a0:	8fbf0014 	lw	ra,20(sp)
    13a4:	27bd0018 	addiu	sp,sp,24
    13a8:	03e00008 	jr	ra
    13ac:	00000000 	nop

000013b0 <func_80AFF660>:
    13b0:	27bdffe8 	addiu	sp,sp,-24
    13b4:	afbf0014 	sw	ra,20(sp)
    13b8:	240e0001 	li	t6,1
    13bc:	a08e02d2 	sb	t6,722(a0)
    13c0:	0c000000 	jal	0 <func_80AFE2B0>
    13c4:	24050009 	li	a1,9
    13c8:	8fbf0014 	lw	ra,20(sp)
    13cc:	27bd0018 	addiu	sp,sp,24
    13d0:	03e00008 	jr	ra
    13d4:	00000000 	nop

000013d8 <func_80AFF688>:
    13d8:	27bdff88 	addiu	sp,sp,-120
    13dc:	afbf004c 	sw	ra,76(sp)
    13e0:	afb00048 	sw	s0,72(sp)
    13e4:	afa5007c 	sw	a1,124(sp)
    13e8:	8c8202dc 	lw	v0,732(a0)
    13ec:	00808025 	move	s0,a0
    13f0:	2442fffc 	addiu	v0,v0,-4
    13f4:	2c410100 	sltiu	at,v0,256
    13f8:	54200003 	bnezl	at,1408 <func_80AFF688+0x30>
    13fc:	3c0141f0 	lui	at,0x41f0
    1400:	00001025 	move	v0,zero
    1404:	3c0141f0 	lui	at,0x41f0
    1408:	44816000 	mtc1	at,$f12
    140c:	ae0202dc 	sw	v0,732(s0)
    1410:	0c000000 	jal	0 <func_80AFE2B0>
    1414:	a20200c8 	sb	v0,200(s0)
    1418:	c6040024 	lwc1	$f4,36(s0)
    141c:	3c0141f0 	lui	at,0x41f0
    1420:	44816000 	mtc1	at,$f12
    1424:	46040180 	add.s	$f6,$f0,$f4
    1428:	0c000000 	jal	0 <func_80AFE2B0>
    142c:	e7a6006c 	swc1	$f6,108(sp)
    1430:	c6080028 	lwc1	$f8,40(s0)
    1434:	3c0141f0 	lui	at,0x41f0
    1438:	44816000 	mtc1	at,$f12
    143c:	46080280 	add.s	$f10,$f0,$f8
    1440:	0c000000 	jal	0 <func_80AFE2B0>
    1444:	e7aa0070 	swc1	$f10,112(sp)
    1448:	c610002c 	lwc1	$f16,44(s0)
    144c:	44801000 	mtc1	zero,$f2
    1450:	240e0064 	li	t6,100
    1454:	46100480 	add.s	$f18,$f0,$f16
    1458:	240f000a 	li	t7,10
    145c:	241800ff 	li	t8,255
    1460:	241900ff 	li	t9,255
    1464:	240800ff 	li	t0,255
    1468:	240900ff 	li	t1,255
    146c:	240a00ff 	li	t2,255
    1470:	240b0001 	li	t3,1
    1474:	240c0009 	li	t4,9
    1478:	240d0001 	li	t5,1
    147c:	e7b20074 	swc1	$f18,116(sp)
    1480:	afad003c 	sw	t5,60(sp)
    1484:	afac0038 	sw	t4,56(sp)
    1488:	afab0034 	sw	t3,52(sp)
    148c:	afaa0030 	sw	t2,48(sp)
    1490:	afa90024 	sw	t1,36(sp)
    1494:	afa80020 	sw	t0,32(sp)
    1498:	afb9001c 	sw	t9,28(sp)
    149c:	afb80018 	sw	t8,24(sp)
    14a0:	afaf0014 	sw	t7,20(sp)
    14a4:	afae0010 	sw	t6,16(sp)
    14a8:	afa0002c 	sw	zero,44(sp)
    14ac:	afa00028 	sw	zero,40(sp)
    14b0:	8fa4007c 	lw	a0,124(sp)
    14b4:	27a5006c 	addiu	a1,sp,108
    14b8:	27a60060 	addiu	a2,sp,96
    14bc:	27a70054 	addiu	a3,sp,84
    14c0:	e7a2005c 	swc1	$f2,92(sp)
    14c4:	e7a20058 	swc1	$f2,88(sp)
    14c8:	e7a20054 	swc1	$f2,84(sp)
    14cc:	e7a20068 	swc1	$f2,104(sp)
    14d0:	e7a20064 	swc1	$f2,100(sp)
    14d4:	0c000000 	jal	0 <func_80AFE2B0>
    14d8:	e7a20060 	swc1	$f2,96(sp)
    14dc:	8fbf004c 	lw	ra,76(sp)
    14e0:	8fb00048 	lw	s0,72(sp)
    14e4:	27bd0078 	addiu	sp,sp,120
    14e8:	03e00008 	jr	ra
    14ec:	00000000 	nop

000014f0 <func_80AFF7A0>:
    14f0:	27bdffe8 	addiu	sp,sp,-24
    14f4:	afbf0014 	sw	ra,20(sp)
    14f8:	240e10bc 	li	t6,4284
    14fc:	a48e02c4 	sh	t6,708(a0)
    1500:	afa40018 	sw	a0,24(sp)
    1504:	0c000000 	jal	0 <func_80AFE2B0>
    1508:	24050009 	li	a1,9
    150c:	8fa40018 	lw	a0,24(sp)
    1510:	0c000000 	jal	0 <func_80AFE2B0>
    1514:	2405000a 	li	a1,10
    1518:	8fbf0014 	lw	ra,20(sp)
    151c:	27bd0018 	addiu	sp,sp,24
    1520:	03e00008 	jr	ra
    1524:	00000000 	nop

00001528 <func_80AFF7D8>:
    1528:	27bdffd8 	addiu	sp,sp,-40
    152c:	afbf001c 	sw	ra,28(sp)
    1530:	afb00018 	sw	s0,24(sp)
    1534:	afa5002c 	sw	a1,44(sp)
    1538:	8ca61c44 	lw	a2,7236(a1)
    153c:	3c020000 	lui	v0,0x0
    1540:	00808025 	move	s0,a0
    1544:	8cc30680 	lw	v1,1664(a2)
    1548:	24420000 	addiu	v0,v0,0
    154c:	3c010200 	lui	at,0x200
    1550:	000379c0 	sll	t7,v1,0x7
    1554:	05e10018 	bgez	t7,15b8 <func_80AFF7D8+0x90>
    1558:	3c0b0000 	lui	t3,0x0
    155c:	0061c025 	or	t8,v1,at
    1560:	acd80680 	sw	t8,1664(a2)
    1564:	8c590004 	lw	t9,4(v0)
    1568:	00c02825 	move	a1,a2
    156c:	acd906a8 	sw	t9,1704(a2)
    1570:	8c480004 	lw	t0,4(v0)
    1574:	c5040024 	lwc1	$f4,36(t0)
    1578:	e4c40024 	swc1	$f4,36(a2)
    157c:	8c490004 	lw	t1,4(v0)
    1580:	c5260028 	lwc1	$f6,40(t1)
    1584:	e4c60028 	swc1	$f6,40(a2)
    1588:	8c4a0004 	lw	t2,4(v0)
    158c:	c548002c 	lwc1	$f8,44(t2)
    1590:	e4c8002c 	swc1	$f8,44(a2)
    1594:	0c000000 	jal	0 <func_80AFE2B0>
    1598:	8c440004 	lw	a0,4(v0)
    159c:	8fa4002c 	lw	a0,44(sp)
    15a0:	0c000000 	jal	0 <func_80AFE2B0>
    15a4:	24050022 	li	a1,34
    15a8:	0c000000 	jal	0 <func_80AFE2B0>
    15ac:	02002025 	move	a0,s0
    15b0:	1000005d 	b	1728 <func_80AFF7D8+0x200>
    15b4:	8fbf001c 	lw	ra,28(sp)
    15b8:	8d6b0000 	lw	t3,0(t3)
    15bc:	3c020000 	lui	v0,0x0
    15c0:	24420000 	addiu	v0,v0,0
    15c4:	11600020 	beqz	t3,1648 <func_80AFF7D8+0x120>
    15c8:	00c02025 	move	a0,a2
    15cc:	3c020000 	lui	v0,0x0
    15d0:	24420000 	addiu	v0,v0,0
    15d4:	8c4c0004 	lw	t4,4(v0)
    15d8:	c58a0024 	lwc1	$f10,36(t4)
    15dc:	e4ca0024 	swc1	$f10,36(a2)
    15e0:	8c4d0004 	lw	t5,4(v0)
    15e4:	c5b00028 	lwc1	$f16,40(t5)
    15e8:	e4d00028 	swc1	$f16,40(a2)
    15ec:	8c4e0004 	lw	t6,4(v0)
    15f0:	c5d2002c 	lwc1	$f18,44(t6)
    15f4:	e4d2002c 	swc1	$f18,44(a2)
    15f8:	0c000000 	jal	0 <func_80AFE2B0>
    15fc:	8fa4002c 	lw	a0,44(sp)
    1600:	24010002 	li	at,2
    1604:	1441000c 	bne	v0,at,1638 <func_80AFF7D8+0x110>
    1608:	3c020000 	lui	v0,0x0
    160c:	24420000 	addiu	v0,v0,0
    1610:	944f0ef6 	lhu	t7,3830(v0)
    1614:	31f80200 	andi	t8,t7,0x200
    1618:	17000007 	bnez	t8,1638 <func_80AFF7D8+0x110>
    161c:	00000000 	nop
    1620:	0c000000 	jal	0 <func_80AFE2B0>
    1624:	24044807 	li	a0,18439
    1628:	0c000000 	jal	0 <func_80AFE2B0>
    162c:	02002025 	move	a0,s0
    1630:	1000003d 	b	1728 <func_80AFF7D8+0x200>
    1634:	8fbf001c 	lw	ra,28(sp)
    1638:	0c000000 	jal	0 <func_80AFE2B0>
    163c:	02002025 	move	a0,s0
    1640:	10000039 	b	1728 <func_80AFF7D8+0x200>
    1644:	8fbf001c 	lw	ra,28(sp)
    1648:	8c450004 	lw	a1,4(v0)
    164c:	0c000000 	jal	0 <func_80AFE2B0>
    1650:	afa60024 	sw	a2,36(sp)
    1654:	14400005 	bnez	v0,166c <func_80AFF7D8+0x144>
    1658:	8fa60024 	lw	a2,36(sp)
    165c:	0c000000 	jal	0 <func_80AFE2B0>
    1660:	02002025 	move	a0,s0
    1664:	10000030 	b	1728 <func_80AFF7D8+0x200>
    1668:	8fbf001c 	lw	ra,28(sp)
    166c:	8cd90680 	lw	t9,1664(a2)
    1670:	3c010080 	lui	at,0x80
    1674:	3c020000 	lui	v0,0x0
    1678:	03214025 	or	t0,t9,at
    167c:	24420000 	addiu	v0,v0,0
    1680:	acc80680 	sw	t0,1664(a2)
    1684:	94490ef2 	lhu	t1,3826(v0)
    1688:	312a0040 	andi	t2,t1,0x40
    168c:	51400026 	beqzl	t2,1728 <func_80AFF7D8+0x200>
    1690:	8fbf001c 	lw	ra,28(sp)
    1694:	944b0ef6 	lhu	t3,3830(v0)
    1698:	8fa4002c 	lw	a0,44(sp)
    169c:	316c0200 	andi	t4,t3,0x200
    16a0:	11800009 	beqz	t4,16c8 <func_80AFF7D8+0x1a0>
    16a4:	00000000 	nop
    16a8:	0c000000 	jal	0 <func_80AFE2B0>
    16ac:	24050015 	li	a1,21
    16b0:	304dffff 	andi	t5,v0,0xffff
    16b4:	15a00015 	bnez	t5,170c <func_80AFF7D8+0x1e4>
    16b8:	a60202c4 	sh	v0,708(s0)
    16bc:	240e1020 	li	t6,4128
    16c0:	10000012 	b	170c <func_80AFF7D8+0x1e4>
    16c4:	a60e02c4 	sh	t6,708(s0)
    16c8:	0c000000 	jal	0 <func_80AFE2B0>
    16cc:	8fa4002c 	lw	a0,44(sp)
    16d0:	14400003 	bnez	v0,16e0 <func_80AFF7D8+0x1b8>
    16d4:	240f10bc 	li	t7,4284
    16d8:	1000000c 	b	170c <func_80AFF7D8+0x1e4>
    16dc:	a60f02c4 	sh	t7,708(s0)
    16e0:	0c000000 	jal	0 <func_80AFE2B0>
    16e4:	8fa4002c 	lw	a0,44(sp)
    16e8:	24010002 	li	at,2
    16ec:	14410004 	bne	v0,at,1700 <func_80AFF7D8+0x1d8>
    16f0:	8fa4002c 	lw	a0,44(sp)
    16f4:	2418101b 	li	t8,4123
    16f8:	10000004 	b	170c <func_80AFF7D8+0x1e4>
    16fc:	a61802c4 	sh	t8,708(s0)
    1700:	0c000000 	jal	0 <func_80AFE2B0>
    1704:	24050015 	li	a1,21
    1708:	a60202c4 	sh	v0,708(s0)
    170c:	0c000000 	jal	0 <func_80AFE2B0>
    1710:	02002025 	move	a0,s0
    1714:	44060000 	mfc1	a2,$f0
    1718:	02002025 	move	a0,s0
    171c:	0c000000 	jal	0 <func_80AFE2B0>
    1720:	8fa5002c 	lw	a1,44(sp)
    1724:	8fbf001c 	lw	ra,28(sp)
    1728:	8fb00018 	lw	s0,24(sp)
    172c:	27bd0028 	addiu	sp,sp,40
    1730:	03e00008 	jr	ra
    1734:	00000000 	nop

00001738 <func_80AFF9E8>:
    1738:	27bdffe8 	addiu	sp,sp,-24
    173c:	afbf0014 	sw	ra,20(sp)
    1740:	a08002d6 	sb	zero,726(a0)
    1744:	0c000000 	jal	0 <func_80AFE2B0>
    1748:	2405000b 	li	a1,11
    174c:	8fbf0014 	lw	ra,20(sp)
    1750:	27bd0018 	addiu	sp,sp,24
    1754:	03e00008 	jr	ra
    1758:	00000000 	nop

0000175c <func_80AFFA0C>:
    175c:	3c070000 	lui	a3,0x0
    1760:	24e70000 	addiu	a3,a3,0
    1764:	94ee0ef2 	lhu	t6,3826(a3)
    1768:	27bdffd0 	addiu	sp,sp,-48
    176c:	afbf001c 	sw	ra,28(sp)
    1770:	afb10018 	sw	s1,24(sp)
    1774:	afb00014 	sw	s0,20(sp)
    1778:	31cf0040 	andi	t7,t6,0x40
    177c:	00808025 	move	s0,a0
    1780:	00a08825 	move	s1,a1
    1784:	15e0001b 	bnez	t7,17f4 <func_80AFFA0C+0x98>
    1788:	8ca31c44 	lw	v1,7236(a1)
    178c:	3c020001 	lui	v0,0x1
    1790:	00451021 	addu	v0,v0,a1
    1794:	904203dc 	lbu	v0,988(v0)
    1798:	2401000e 	li	at,14
    179c:	24180004 	li	t8,4
    17a0:	10410003 	beq	v0,at,17b0 <func_80AFFA0C+0x54>
    17a4:	02202025 	move	a0,s1
    17a8:	2401000f 	li	at,15
    17ac:	14410011 	bne	v0,at,17f4 <func_80AFFA0C+0x98>
    17b0:	3c010001 	lui	at,0x1
    17b4:	00310821 	addu	at,at,s1
    17b8:	a43804c6 	sh	t8,1222(at)
    17bc:	0c000000 	jal	0 <func_80AFE2B0>
    17c0:	afa3002c 	sw	v1,44(sp)
    17c4:	8fa3002c 	lw	v1,44(sp)
    17c8:	02002025 	move	a0,s0
    17cc:	0c000000 	jal	0 <func_80AFE2B0>
    17d0:	ac7006a8 	sw	s0,1704(v1)
    17d4:	44060000 	mfc1	a2,$f0
    17d8:	02002025 	move	a0,s0
    17dc:	0c000000 	jal	0 <func_80AFE2B0>
    17e0:	02202825 	move	a1,s1
    17e4:	0c000000 	jal	0 <func_80AFE2B0>
    17e8:	02002025 	move	a0,s0
    17ec:	1000008c 	b	1a20 <func_80AFFA0C+0x2c4>
    17f0:	8fbf001c 	lw	ra,28(sp)
    17f4:	3c010001 	lui	at,0x1
    17f8:	02213021 	addu	a2,s1,at
    17fc:	90c203dc 	lbu	v0,988(a2)
    1800:	2401000d 	li	at,13
    1804:	54410010 	bnel	v0,at,1848 <func_80AFFA0C+0xec>
    1808:	920902d6 	lbu	t1,726(s0)
    180c:	921902d6 	lbu	t9,726(s0)
    1810:	24080001 	li	t0,1
    1814:	02002025 	move	a0,s0
    1818:	1720000a 	bnez	t9,1844 <func_80AFFA0C+0xe8>
    181c:	24050002 	li	a1,2
    1820:	a20802d6 	sb	t0,726(s0)
    1824:	afa60024 	sw	a2,36(sp)
    1828:	0c000000 	jal	0 <func_80AFE2B0>
    182c:	afa3002c 	sw	v1,44(sp)
    1830:	3c070000 	lui	a3,0x0
    1834:	24e70000 	addiu	a3,a3,0
    1838:	8fa3002c 	lw	v1,44(sp)
    183c:	10000010 	b	1880 <func_80AFFA0C+0x124>
    1840:	8fa60024 	lw	a2,36(sp)
    1844:	920902d6 	lbu	t1,726(s0)
    1848:	2401001a 	li	at,26
    184c:	5120000d 	beqzl	t1,1884 <func_80AFFA0C+0x128>
    1850:	94c204c6 	lhu	v0,1222(a2)
    1854:	1441000a 	bne	v0,at,1880 <func_80AFFA0C+0x124>
    1858:	02002025 	move	a0,s0
    185c:	a20002d6 	sb	zero,726(s0)
    1860:	afa60024 	sw	a2,36(sp)
    1864:	afa3002c 	sw	v1,44(sp)
    1868:	0c000000 	jal	0 <func_80AFE2B0>
    186c:	24050009 	li	a1,9
    1870:	3c070000 	lui	a3,0x0
    1874:	24e70000 	addiu	a3,a3,0
    1878:	8fa3002c 	lw	v1,44(sp)
    187c:	8fa60024 	lw	a2,36(sp)
    1880:	94c204c6 	lhu	v0,1222(a2)
    1884:	24010004 	li	at,4
    1888:	02002025 	move	a0,s0
    188c:	1441000b 	bne	v0,at,18bc <func_80AFFA0C+0x160>
    1890:	24050009 	li	a1,9
    1894:	3c010001 	lui	at,0x1
    1898:	00310821 	addu	at,at,s1
    189c:	a42004c6 	sh	zero,1222(at)
    18a0:	0c000000 	jal	0 <func_80AFE2B0>
    18a4:	a20002d6 	sb	zero,726(s0)
    18a8:	02002025 	move	a0,s0
    18ac:	0c000000 	jal	0 <func_80AFE2B0>
    18b0:	2405000a 	li	a1,10
    18b4:	1000005a 	b	1a20 <func_80AFFA0C+0x2c4>
    18b8:	8fbf001c 	lw	ra,28(sp)
    18bc:	24010003 	li	at,3
    18c0:	5441001f 	bnel	v0,at,1940 <func_80AFFA0C+0x1e4>
    18c4:	24010002 	li	at,2
    18c8:	94ea0ef2 	lhu	t2,3826(a3)
    18cc:	3c010001 	lui	at,0x1
    18d0:	00310821 	addu	at,at,s1
    18d4:	314b0040 	andi	t3,t2,0x40
    18d8:	15600016 	bnez	t3,1934 <func_80AFFA0C+0x1d8>
    18dc:	240e0005 	li	t6,5
    18e0:	3c010001 	lui	at,0x1
    18e4:	00310821 	addu	at,at,s1
    18e8:	240c0004 	li	t4,4
    18ec:	a42c04c6 	sh	t4,1222(at)
    18f0:	afa3002c 	sw	v1,44(sp)
    18f4:	0c000000 	jal	0 <func_80AFE2B0>
    18f8:	24044802 	li	a0,18434
    18fc:	8fa3002c 	lw	v1,44(sp)
    1900:	02002025 	move	a0,s0
    1904:	0c000000 	jal	0 <func_80AFE2B0>
    1908:	ac7006a8 	sw	s0,1704(v1)
    190c:	44060000 	mfc1	a2,$f0
    1910:	02002025 	move	a0,s0
    1914:	0c000000 	jal	0 <func_80AFE2B0>
    1918:	02202825 	move	a1,s1
    191c:	240d10bb 	li	t5,4283
    1920:	a60d02c4 	sh	t5,708(s0)
    1924:	0c000000 	jal	0 <func_80AFE2B0>
    1928:	02002025 	move	a0,s0
    192c:	1000003c 	b	1a20 <func_80AFFA0C+0x2c4>
    1930:	8fbf001c 	lw	ra,28(sp)
    1934:	10000039 	b	1a1c <func_80AFFA0C+0x2c0>
    1938:	a42e04c6 	sh	t6,1222(at)
    193c:	24010002 	li	at,2
    1940:	14410009 	bne	v0,at,1968 <func_80AFFA0C+0x20c>
    1944:	02002025 	move	a0,s0
    1948:	8c6f0680 	lw	t7,1664(v1)
    194c:	3c01feff 	lui	at,0xfeff
    1950:	3421ffff 	ori	at,at,0xffff
    1954:	01e1c024 	and	t8,t7,at
    1958:	0c000000 	jal	0 <func_80AFE2B0>
    195c:	ac780680 	sw	t8,1664(v1)
    1960:	1000002f 	b	1a20 <func_80AFFA0C+0x2c4>
    1964:	8fbf001c 	lw	ra,28(sp)
    1968:	24010001 	li	at,1
    196c:	54410007 	bnel	v0,at,198c <func_80AFFA0C+0x230>
    1970:	28410005 	slti	at,v0,5
    1974:	8c790680 	lw	t9,1664(v1)
    1978:	3c010080 	lui	at,0x80
    197c:	03214025 	or	t0,t9,at
    1980:	10000026 	b	1a1c <func_80AFFA0C+0x2c0>
    1984:	ac680680 	sw	t0,1664(v1)
    1988:	28410005 	slti	at,v0,5
    198c:	54200024 	bnezl	at,1a20 <func_80AFFA0C+0x2c4>
    1990:	8fbf001c 	lw	ra,28(sp)
    1994:	94e90ef2 	lhu	t1,3826(a3)
    1998:	a4e01422 	sh	zero,5154(a3)
    199c:	240d0004 	li	t5,4
    19a0:	312a0040 	andi	t2,t1,0x40
    19a4:	11400012 	beqz	t2,19f0 <func_80AFFA0C+0x294>
    19a8:	3c010001 	lui	at,0x1
    19ac:	3c010001 	lui	at,0x1
    19b0:	00310821 	addu	at,at,s1
    19b4:	240b0004 	li	t3,4
    19b8:	a42b04c6 	sh	t3,1222(at)
    19bc:	ac7006a8 	sw	s0,1704(v1)
    19c0:	0c000000 	jal	0 <func_80AFE2B0>
    19c4:	02002025 	move	a0,s0
    19c8:	44060000 	mfc1	a2,$f0
    19cc:	02002025 	move	a0,s0
    19d0:	0c000000 	jal	0 <func_80AFE2B0>
    19d4:	02202825 	move	a1,s1
    19d8:	240c10bd 	li	t4,4285
    19dc:	a60c02c4 	sh	t4,708(s0)
    19e0:	0c000000 	jal	0 <func_80AFE2B0>
    19e4:	02002025 	move	a0,s0
    19e8:	1000000d 	b	1a20 <func_80AFFA0C+0x2c4>
    19ec:	8fbf001c 	lw	ra,28(sp)
    19f0:	00310821 	addu	at,at,s1
    19f4:	a42d04c6 	sh	t5,1222(at)
    19f8:	ac7006a8 	sw	s0,1704(v1)
    19fc:	0c000000 	jal	0 <func_80AFE2B0>
    1a00:	02002025 	move	a0,s0
    1a04:	44060000 	mfc1	a2,$f0
    1a08:	02002025 	move	a0,s0
    1a0c:	0c000000 	jal	0 <func_80AFE2B0>
    1a10:	02202825 	move	a1,s1
    1a14:	0c000000 	jal	0 <func_80AFE2B0>
    1a18:	02002025 	move	a0,s0
    1a1c:	8fbf001c 	lw	ra,28(sp)
    1a20:	8fb00014 	lw	s0,20(sp)
    1a24:	8fb10018 	lw	s1,24(sp)
    1a28:	03e00008 	jr	ra
    1a2c:	27bd0030 	addiu	sp,sp,48

00001a30 <func_80AFFCE0>:
    1a30:	27bdffe8 	addiu	sp,sp,-24
    1a34:	afbf0014 	sw	ra,20(sp)
    1a38:	a08002d6 	sb	zero,726(a0)
    1a3c:	afa40018 	sw	a0,24(sp)
    1a40:	0c000000 	jal	0 <func_80AFE2B0>
    1a44:	24050009 	li	a1,9
    1a48:	8fa40018 	lw	a0,24(sp)
    1a4c:	0c000000 	jal	0 <func_80AFE2B0>
    1a50:	2405000c 	li	a1,12
    1a54:	8fbf0014 	lw	ra,20(sp)
    1a58:	27bd0018 	addiu	sp,sp,24
    1a5c:	03e00008 	jr	ra
    1a60:	00000000 	nop

00001a64 <func_80AFFD14>:
    1a64:	3c0e0000 	lui	t6,0x0
    1a68:	8dce0000 	lw	t6,0(t6)
    1a6c:	27bdffe8 	addiu	sp,sp,-24
    1a70:	afbf0014 	sw	ra,20(sp)
    1a74:	11c00005 	beqz	t6,1a8c <func_80AFFD14+0x28>
    1a78:	afa5001c 	sw	a1,28(sp)
    1a7c:	0c000000 	jal	0 <func_80AFE2B0>
    1a80:	00000000 	nop
    1a84:	10000008 	b	1aa8 <func_80AFFD14+0x44>
    1a88:	8fbf0014 	lw	ra,20(sp)
    1a8c:	0c000000 	jal	0 <func_80AFE2B0>
    1a90:	afa40018 	sw	a0,24(sp)
    1a94:	44060000 	mfc1	a2,$f0
    1a98:	8fa40018 	lw	a0,24(sp)
    1a9c:	0c000000 	jal	0 <func_80AFE2B0>
    1aa0:	8fa5001c 	lw	a1,28(sp)
    1aa4:	8fbf0014 	lw	ra,20(sp)
    1aa8:	27bd0018 	addiu	sp,sp,24
    1aac:	03e00008 	jr	ra
    1ab0:	00000000 	nop

00001ab4 <func_80AFFD64>:
    1ab4:	27bdffe8 	addiu	sp,sp,-24
    1ab8:	afbf0014 	sw	ra,20(sp)
    1abc:	0c000000 	jal	0 <func_80AFE2B0>
    1ac0:	2405000d 	li	a1,13
    1ac4:	8fbf0014 	lw	ra,20(sp)
    1ac8:	27bd0018 	addiu	sp,sp,24
    1acc:	03e00008 	jr	ra
    1ad0:	00000000 	nop

00001ad4 <func_80AFFD84>:
    1ad4:	27bdffc8 	addiu	sp,sp,-56
    1ad8:	afb00020 	sw	s0,32(sp)
    1adc:	00808025 	move	s0,a0
    1ae0:	afbf0024 	sw	ra,36(sp)
    1ae4:	afa5003c 	sw	a1,60(sp)
    1ae8:	0c000000 	jal	0 <func_80AFE2B0>
    1aec:	24a420d8 	addiu	a0,a1,8408
    1af0:	24010006 	li	at,6
    1af4:	5441001b 	bnel	v0,at,1b64 <func_80AFFD84+0x90>
    1af8:	8fbf0024 	lw	ra,36(sp)
    1afc:	0c000000 	jal	0 <func_80AFE2B0>
    1b00:	8fa4003c 	lw	a0,60(sp)
    1b04:	10400016 	beqz	v0,1b60 <func_80AFFD84+0x8c>
    1b08:	3c0e0000 	lui	t6,0x0
    1b0c:	95ce0ef2 	lhu	t6,3826(t6)
    1b10:	31cf0040 	andi	t7,t6,0x40
    1b14:	11e00005 	beqz	t7,1b2c <func_80AFFD84+0x58>
    1b18:	00000000 	nop
    1b1c:	0c000000 	jal	0 <func_80AFE2B0>
    1b20:	02002025 	move	a0,s0
    1b24:	1000000f 	b	1b64 <func_80AFFD84+0x90>
    1b28:	8fbf0024 	lw	ra,36(sp)
    1b2c:	0c000000 	jal	0 <func_80AFE2B0>
    1b30:	02002025 	move	a0,s0
    1b34:	0c000000 	jal	0 <func_80AFE2B0>
    1b38:	02002025 	move	a0,s0
    1b3c:	e7a0002c 	swc1	$f0,44(sp)
    1b40:	0c000000 	jal	0 <func_80AFE2B0>
    1b44:	02002025 	move	a0,s0
    1b48:	02002025 	move	a0,s0
    1b4c:	8fa5003c 	lw	a1,60(sp)
    1b50:	2406003e 	li	a2,62
    1b54:	8fa7002c 	lw	a3,44(sp)
    1b58:	0c000000 	jal	0 <func_80AFE2B0>
    1b5c:	e7a00010 	swc1	$f0,16(sp)
    1b60:	8fbf0024 	lw	ra,36(sp)
    1b64:	8fb00020 	lw	s0,32(sp)
    1b68:	27bd0038 	addiu	sp,sp,56
    1b6c:	03e00008 	jr	ra
    1b70:	00000000 	nop

00001b74 <func_80AFFE24>:
    1b74:	27bdffe8 	addiu	sp,sp,-24
    1b78:	afbf0014 	sw	ra,20(sp)
    1b7c:	0c000000 	jal	0 <func_80AFE2B0>
    1b80:	2405000e 	li	a1,14
    1b84:	8fbf0014 	lw	ra,20(sp)
    1b88:	27bd0018 	addiu	sp,sp,24
    1b8c:	03e00008 	jr	ra
    1b90:	00000000 	nop

00001b94 <func_80AFFE44>:
    1b94:	27bdffd0 	addiu	sp,sp,-48
    1b98:	afbf0024 	sw	ra,36(sp)
    1b9c:	afb00020 	sw	s0,32(sp)
    1ba0:	00808025 	move	s0,a0
    1ba4:	0c000000 	jal	0 <func_80AFE2B0>
    1ba8:	afa50034 	sw	a1,52(sp)
    1bac:	10400005 	beqz	v0,1bc4 <func_80AFFE44+0x30>
    1bb0:	02002025 	move	a0,s0
    1bb4:	0c000000 	jal	0 <func_80AFE2B0>
    1bb8:	ae000118 	sw	zero,280(s0)
    1bbc:	1000000d 	b	1bf4 <func_80AFFE44+0x60>
    1bc0:	8fbf0024 	lw	ra,36(sp)
    1bc4:	0c000000 	jal	0 <func_80AFE2B0>
    1bc8:	02002025 	move	a0,s0
    1bcc:	e7a00028 	swc1	$f0,40(sp)
    1bd0:	0c000000 	jal	0 <func_80AFE2B0>
    1bd4:	02002025 	move	a0,s0
    1bd8:	02002025 	move	a0,s0
    1bdc:	8fa50034 	lw	a1,52(sp)
    1be0:	2406003e 	li	a2,62
    1be4:	8fa70028 	lw	a3,40(sp)
    1be8:	0c000000 	jal	0 <func_80AFE2B0>
    1bec:	e7a00010 	swc1	$f0,16(sp)
    1bf0:	8fbf0024 	lw	ra,36(sp)
    1bf4:	8fb00020 	lw	s0,32(sp)
    1bf8:	27bd0030 	addiu	sp,sp,48
    1bfc:	03e00008 	jr	ra
    1c00:	00000000 	nop

00001c04 <func_80AFFEB4>:
    1c04:	27bdffe8 	addiu	sp,sp,-24
    1c08:	afbf0014 	sw	ra,20(sp)
    1c0c:	0c000000 	jal	0 <func_80AFE2B0>
    1c10:	2405000f 	li	a1,15
    1c14:	8fbf0014 	lw	ra,20(sp)
    1c18:	27bd0018 	addiu	sp,sp,24
    1c1c:	03e00008 	jr	ra
    1c20:	00000000 	nop

00001c24 <func_80AFFED4>:
    1c24:	27bdffe8 	addiu	sp,sp,-24
    1c28:	afbf0014 	sw	ra,20(sp)
    1c2c:	afa40018 	sw	a0,24(sp)
    1c30:	afa5001c 	sw	a1,28(sp)
    1c34:	0c000000 	jal	0 <func_80AFE2B0>
    1c38:	24a420d8 	addiu	a0,a1,8408
    1c3c:	24010006 	li	at,6
    1c40:	5441000e 	bnel	v0,at,1c7c <func_80AFFED4+0x58>
    1c44:	8fbf0014 	lw	ra,20(sp)
    1c48:	0c000000 	jal	0 <func_80AFE2B0>
    1c4c:	8fa4001c 	lw	a0,28(sp)
    1c50:	10400009 	beqz	v0,1c78 <func_80AFFED4+0x54>
    1c54:	3c020000 	lui	v0,0x0
    1c58:	24420000 	addiu	v0,v0,0
    1c5c:	944e0ef2 	lhu	t6,3826(v0)
    1c60:	8fa40018 	lw	a0,24(sp)
    1c64:	35cf0040 	ori	t7,t6,0x40
    1c68:	0c000000 	jal	0 <func_80AFE2B0>
    1c6c:	a44f0ef2 	sh	t7,3826(v0)
    1c70:	0c000000 	jal	0 <func_80AFE2B0>
    1c74:	8fa40018 	lw	a0,24(sp)
    1c78:	8fbf0014 	lw	ra,20(sp)
    1c7c:	27bd0018 	addiu	sp,sp,24
    1c80:	03e00008 	jr	ra
    1c84:	00000000 	nop

00001c88 <func_80AFFF38>:
    1c88:	27bdffe8 	addiu	sp,sp,-24
    1c8c:	afbf0014 	sw	ra,20(sp)
    1c90:	0c000000 	jal	0 <func_80AFE2B0>
    1c94:	24050010 	li	a1,16
    1c98:	8fbf0014 	lw	ra,20(sp)
    1c9c:	27bd0018 	addiu	sp,sp,24
    1ca0:	03e00008 	jr	ra
    1ca4:	00000000 	nop

00001ca8 <func_80AFFF58>:
    1ca8:	27bdffe0 	addiu	sp,sp,-32
    1cac:	afbf0014 	sw	ra,20(sp)
    1cb0:	afa40020 	sw	a0,32(sp)
    1cb4:	afa50024 	sw	a1,36(sp)
    1cb8:	0c000000 	jal	0 <func_80AFE2B0>
    1cbc:	24a420d8 	addiu	a0,a1,8408
    1cc0:	a3a2001f 	sb	v0,31(sp)
    1cc4:	8fa40024 	lw	a0,36(sp)
    1cc8:	8fa50020 	lw	a1,32(sp)
    1ccc:	0c000000 	jal	0 <func_80AFE2B0>
    1cd0:	24060001 	li	a2,1
    1cd4:	93ae001f 	lbu	t6,31(sp)
    1cd8:	24010006 	li	at,6
    1cdc:	55c10008 	bnel	t6,at,1d00 <func_80AFFF58+0x58>
    1ce0:	8fbf0014 	lw	ra,20(sp)
    1ce4:	0c000000 	jal	0 <func_80AFE2B0>
    1ce8:	8fa40024 	lw	a0,36(sp)
    1cec:	50400004 	beqzl	v0,1d00 <func_80AFFF58+0x58>
    1cf0:	8fbf0014 	lw	ra,20(sp)
    1cf4:	0c000000 	jal	0 <func_80AFE2B0>
    1cf8:	8fa40020 	lw	a0,32(sp)
    1cfc:	8fbf0014 	lw	ra,20(sp)
    1d00:	27bd0020 	addiu	sp,sp,32
    1d04:	03e00008 	jr	ra
    1d08:	00000000 	nop

00001d0c <func_80AFFFBC>:
    1d0c:	3c014100 	lui	at,0x4100
    1d10:	44812000 	mtc1	at,$f4
    1d14:	3c014000 	lui	at,0x4000
    1d18:	44813000 	mtc1	at,$f6
    1d1c:	27bdffe8 	addiu	sp,sp,-24
    1d20:	afbf0014 	sw	ra,20(sp)
    1d24:	e4840060 	swc1	$f4,96(a0)
    1d28:	e4860068 	swc1	$f6,104(a0)
    1d2c:	afa40018 	sw	a0,24(sp)
    1d30:	0c000000 	jal	0 <func_80AFE2B0>
    1d34:	00002825 	move	a1,zero
    1d38:	8fa60018 	lw	a2,24(sp)
    1d3c:	0c000000 	jal	0 <func_80AFE2B0>
    1d40:	24c4014c 	addiu	a0,a2,332
    1d44:	8fa40018 	lw	a0,24(sp)
    1d48:	24050011 	li	a1,17
    1d4c:	c4880158 	lwc1	$f8,344(a0)
    1d50:	0c000000 	jal	0 <func_80AFE2B0>
    1d54:	e4880164 	swc1	$f8,356(a0)
    1d58:	8fbf0014 	lw	ra,20(sp)
    1d5c:	27bd0018 	addiu	sp,sp,24
    1d60:	03e00008 	jr	ra
    1d64:	00000000 	nop

00001d68 <func_80B00018>:
    1d68:	27bdffe8 	addiu	sp,sp,-24
    1d6c:	afbf0014 	sw	ra,20(sp)
    1d70:	afa5001c 	sw	a1,28(sp)
    1d74:	44800000 	mtc1	zero,$f0
    1d78:	c4840060 	lwc1	$f4,96(a0)
    1d7c:	4600203e 	c.le.s	$f4,$f0
    1d80:	00000000 	nop
    1d84:	45020009 	bc1fl	1dac <func_80B00018+0x44>
    1d88:	8fbf0014 	lw	ra,20(sp)
    1d8c:	94820088 	lhu	v0,136(a0)
    1d90:	304e0002 	andi	t6,v0,0x2
    1d94:	11c00004 	beqz	t6,1da8 <func_80B00018+0x40>
    1d98:	304ffffd 	andi	t7,v0,0xfffd
    1d9c:	a48f0088 	sh	t7,136(a0)
    1da0:	0c000000 	jal	0 <func_80AFE2B0>
    1da4:	e4800068 	swc1	$f0,104(a0)
    1da8:	8fbf0014 	lw	ra,20(sp)
    1dac:	27bd0018 	addiu	sp,sp,24
    1db0:	03e00008 	jr	ra
    1db4:	00000000 	nop

00001db8 <func_80B00068>:
    1db8:	27bdffe8 	addiu	sp,sp,-24
    1dbc:	afbf0014 	sw	ra,20(sp)
    1dc0:	afa40018 	sw	a0,24(sp)
    1dc4:	0c000000 	jal	0 <func_80AFE2B0>
    1dc8:	24050005 	li	a1,5
    1dcc:	8fa40018 	lw	a0,24(sp)
    1dd0:	0c000000 	jal	0 <func_80AFE2B0>
    1dd4:	24050012 	li	a1,18
    1dd8:	8fbf0014 	lw	ra,20(sp)
    1ddc:	27bd0018 	addiu	sp,sp,24
    1de0:	03e00008 	jr	ra
    1de4:	00000000 	nop

00001de8 <func_80B00098>:
    1de8:	27bdffe8 	addiu	sp,sp,-24
    1dec:	afa40018 	sw	a0,24(sp)
    1df0:	afbf0014 	sw	ra,20(sp)
    1df4:	3c040600 	lui	a0,0x600
    1df8:	afa5001c 	sw	a1,28(sp)
    1dfc:	0c000000 	jal	0 <func_80AFE2B0>
    1e00:	24847128 	addiu	a0,a0,28968
    1e04:	44822000 	mtc1	v0,$f4
    1e08:	8fa40018 	lw	a0,24(sp)
    1e0c:	468021a0 	cvt.s.w	$f6,$f4
    1e10:	c4880164 	lwc1	$f8,356(a0)
    1e14:	46083032 	c.eq.s	$f6,$f8
    1e18:	00000000 	nop
    1e1c:	45020004 	bc1fl	1e30 <func_80B00098+0x48>
    1e20:	8fbf0014 	lw	ra,20(sp)
    1e24:	0c000000 	jal	0 <func_80AFE2B0>
    1e28:	00000000 	nop
    1e2c:	8fbf0014 	lw	ra,20(sp)
    1e30:	27bd0018 	addiu	sp,sp,24
    1e34:	03e00008 	jr	ra
    1e38:	00000000 	nop

00001e3c <func_80B000EC>:
    1e3c:	3c014000 	lui	at,0x4000
    1e40:	44802000 	mtc1	zero,$f4
    1e44:	44813000 	mtc1	at,$f6
    1e48:	27bdffe8 	addiu	sp,sp,-24
    1e4c:	afbf0014 	sw	ra,20(sp)
    1e50:	e48402f0 	swc1	$f4,752(a0)
    1e54:	e4860068 	swc1	$f6,104(a0)
    1e58:	afa40018 	sw	a0,24(sp)
    1e5c:	0c000000 	jal	0 <func_80AFE2B0>
    1e60:	24050008 	li	a1,8
    1e64:	8fa40018 	lw	a0,24(sp)
    1e68:	0c000000 	jal	0 <func_80AFE2B0>
    1e6c:	24050013 	li	a1,19
    1e70:	8fbf0014 	lw	ra,20(sp)
    1e74:	27bd0018 	addiu	sp,sp,24
    1e78:	03e00008 	jr	ra
    1e7c:	00000000 	nop

00001e80 <func_80B00130>:
    1e80:	27bdffd8 	addiu	sp,sp,-40
    1e84:	afb00020 	sw	s0,32(sp)
    1e88:	00808025 	move	s0,a0
    1e8c:	afbf0024 	sw	ra,36(sp)
    1e90:	afa5002c 	sw	a1,44(sp)
    1e94:	c60402f0 	lwc1	$f4,752(s0)
    1e98:	8605008a 	lh	a1,138(s0)
    1e9c:	afa00010 	sw	zero,16(sp)
    1ea0:	4600218d 	trunc.w.s	$f6,$f4
    1ea4:	248400b6 	addiu	a0,a0,182
    1ea8:	2406000a 	li	a2,10
    1eac:	44073000 	mfc1	a3,$f6
    1eb0:	00000000 	nop
    1eb4:	00073c00 	sll	a3,a3,0x10
    1eb8:	0c000000 	jal	0 <func_80AFE2B0>
    1ebc:	00073c03 	sra	a3,a3,0x10
    1ec0:	260402f0 	addiu	a0,s0,752
    1ec4:	3c0544fa 	lui	a1,0x44fa
    1ec8:	3c063f80 	lui	a2,0x3f80
    1ecc:	0c000000 	jal	0 <func_80AFE2B0>
    1ed0:	3c0742c8 	lui	a3,0x42c8
    1ed4:	3c0142f0 	lui	at,0x42f0
    1ed8:	44815000 	mtc1	at,$f10
    1edc:	c6080090 	lwc1	$f8,144(s0)
    1ee0:	860f00b6 	lh	t7,182(s0)
    1ee4:	460a403c 	c.lt.s	$f8,$f10
    1ee8:	a60f0032 	sh	t7,50(s0)
    1eec:	45020007 	bc1fl	1f0c <func_80B00130+0x8c>
    1ef0:	8fbf0024 	lw	ra,36(sp)
    1ef4:	44808000 	mtc1	zero,$f16
    1ef8:	02002025 	move	a0,s0
    1efc:	e6100068 	swc1	$f16,104(s0)
    1f00:	0c000000 	jal	0 <func_80AFE2B0>
    1f04:	8fa5002c 	lw	a1,44(sp)
    1f08:	8fbf0024 	lw	ra,36(sp)
    1f0c:	8fb00020 	lw	s0,32(sp)
    1f10:	27bd0028 	addiu	sp,sp,40
    1f14:	03e00008 	jr	ra
    1f18:	00000000 	nop

00001f1c <func_80B001CC>:
    1f1c:	27bdffe8 	addiu	sp,sp,-24
    1f20:	afa40018 	sw	a0,24(sp)
    1f24:	afbf0014 	sw	ra,20(sp)
    1f28:	00a02025 	move	a0,a1
    1f2c:	2405101c 	li	a1,4124
    1f30:	0c000000 	jal	0 <func_80AFE2B0>
    1f34:	8fa60018 	lw	a2,24(sp)
    1f38:	8fa40018 	lw	a0,24(sp)
    1f3c:	0c000000 	jal	0 <func_80AFE2B0>
    1f40:	24050009 	li	a1,9
    1f44:	8fa40018 	lw	a0,24(sp)
    1f48:	0c000000 	jal	0 <func_80AFE2B0>
    1f4c:	24050014 	li	a1,20
    1f50:	8fbf0014 	lw	ra,20(sp)
    1f54:	27bd0018 	addiu	sp,sp,24
    1f58:	03e00008 	jr	ra
    1f5c:	00000000 	nop

00001f60 <func_80B00210>:
    1f60:	27bdffe8 	addiu	sp,sp,-24
    1f64:	afbf0014 	sw	ra,20(sp)
    1f68:	afa40018 	sw	a0,24(sp)
    1f6c:	24a420d8 	addiu	a0,a1,8408
    1f70:	0c000000 	jal	0 <func_80AFE2B0>
    1f74:	afa5001c 	sw	a1,28(sp)
    1f78:	24010004 	li	at,4
    1f7c:	14410019 	bne	v0,at,1fe4 <func_80B00210+0x84>
    1f80:	8fa6001c 	lw	a2,28(sp)
    1f84:	00c02025 	move	a0,a2
    1f88:	0c000000 	jal	0 <func_80AFE2B0>
    1f8c:	afa6001c 	sw	a2,28(sp)
    1f90:	10400014 	beqz	v0,1fe4 <func_80B00210+0x84>
    1f94:	8fa6001c 	lw	a2,28(sp)
    1f98:	3c020001 	lui	v0,0x1
    1f9c:	00461021 	addu	v0,v0,a2
    1fa0:	904204bd 	lbu	v0,1213(v0)
    1fa4:	24010001 	li	at,1
    1fa8:	8fa40018 	lw	a0,24(sp)
    1fac:	10400005 	beqz	v0,1fc4 <func_80B00210+0x64>
    1fb0:	00000000 	nop
    1fb4:	10410007 	beq	v0,at,1fd4 <func_80B00210+0x74>
    1fb8:	00c02025 	move	a0,a2
    1fbc:	1000000a 	b	1fe8 <func_80B00210+0x88>
    1fc0:	8fbf0014 	lw	ra,20(sp)
    1fc4:	0c000000 	jal	0 <func_80AFE2B0>
    1fc8:	00c02825 	move	a1,a2
    1fcc:	10000006 	b	1fe8 <func_80B00210+0x88>
    1fd0:	8fbf0014 	lw	ra,20(sp)
    1fd4:	0c000000 	jal	0 <func_80AFE2B0>
    1fd8:	2405101d 	li	a1,4125
    1fdc:	0c000000 	jal	0 <func_80AFE2B0>
    1fe0:	8fa40018 	lw	a0,24(sp)
    1fe4:	8fbf0014 	lw	ra,20(sp)
    1fe8:	27bd0018 	addiu	sp,sp,24
    1fec:	03e00008 	jr	ra
    1ff0:	00000000 	nop

00001ff4 <func_80B002A4>:
    1ff4:	27bdffe8 	addiu	sp,sp,-24
    1ff8:	afa40018 	sw	a0,24(sp)
    1ffc:	afbf0014 	sw	ra,20(sp)
    2000:	00a02025 	move	a0,a1
    2004:	0c000000 	jal	0 <func_80AFE2B0>
    2008:	2405101e 	li	a1,4126
    200c:	8fa40018 	lw	a0,24(sp)
    2010:	0c000000 	jal	0 <func_80AFE2B0>
    2014:	24050015 	li	a1,21
    2018:	8fbf0014 	lw	ra,20(sp)
    201c:	27bd0018 	addiu	sp,sp,24
    2020:	03e00008 	jr	ra
    2024:	00000000 	nop

00002028 <func_80B002D8>:
    2028:	27bdffe0 	addiu	sp,sp,-32
    202c:	afbf001c 	sw	ra,28(sp)
    2030:	afb00018 	sw	s0,24(sp)
    2034:	afa40020 	sw	a0,32(sp)
    2038:	00a08025 	move	s0,a1
    203c:	0c000000 	jal	0 <func_80AFE2B0>
    2040:	24a420d8 	addiu	a0,a1,8408
    2044:	24010006 	li	at,6
    2048:	54410019 	bnel	v0,at,20b0 <func_80B002D8+0x88>
    204c:	8fbf001c 	lw	ra,28(sp)
    2050:	0c000000 	jal	0 <func_80AFE2B0>
    2054:	02002025 	move	a0,s0
    2058:	50400015 	beqzl	v0,20b0 <func_80B002D8+0x88>
    205c:	8fbf001c 	lw	ra,28(sp)
    2060:	0c000000 	jal	0 <func_80AFE2B0>
    2064:	2404000a 	li	a0,10
    2068:	3c020000 	lui	v0,0x0
    206c:	24420000 	addiu	v0,v0,0
    2070:	944e0ef6 	lhu	t6,3830(v0)
    2074:	8fa40020 	lw	a0,32(sp)
    2078:	35cf0200 	ori	t7,t6,0x200
    207c:	0c000000 	jal	0 <func_80AFE2B0>
    2080:	a44f0ef6 	sh	t7,3830(v0)
    2084:	0c000000 	jal	0 <func_80AFE2B0>
    2088:	02002025 	move	a0,s0
    208c:	02002025 	move	a0,s0
    2090:	0c000000 	jal	0 <func_80AFE2B0>
    2094:	2405002c 	li	a1,44
    2098:	02002025 	move	a0,s0
    209c:	0c000000 	jal	0 <func_80AFE2B0>
    20a0:	2405101f 	li	a1,4127
    20a4:	0c000000 	jal	0 <func_80AFE2B0>
    20a8:	8fa40020 	lw	a0,32(sp)
    20ac:	8fbf001c 	lw	ra,28(sp)
    20b0:	8fb00018 	lw	s0,24(sp)
    20b4:	27bd0020 	addiu	sp,sp,32
    20b8:	03e00008 	jr	ra
    20bc:	00000000 	nop

000020c0 <func_80B00370>:
    20c0:	27bdffe8 	addiu	sp,sp,-24
    20c4:	afbf0014 	sw	ra,20(sp)
    20c8:	0c000000 	jal	0 <func_80AFE2B0>
    20cc:	24050016 	li	a1,22
    20d0:	8fbf0014 	lw	ra,20(sp)
    20d4:	27bd0018 	addiu	sp,sp,24
    20d8:	03e00008 	jr	ra
    20dc:	00000000 	nop

000020e0 <func_80B00390>:
    20e0:	27bdffe8 	addiu	sp,sp,-24
    20e4:	afbf0014 	sw	ra,20(sp)
    20e8:	afa40018 	sw	a0,24(sp)
    20ec:	afa5001c 	sw	a1,28(sp)
    20f0:	0c000000 	jal	0 <func_80AFE2B0>
    20f4:	24a420d8 	addiu	a0,a1,8408
    20f8:	24010006 	li	at,6
    20fc:	5441000e 	bnel	v0,at,2138 <func_80B00390+0x58>
    2100:	8fbf0014 	lw	ra,20(sp)
    2104:	0c000000 	jal	0 <func_80AFE2B0>
    2108:	8fa4001c 	lw	a0,28(sp)
    210c:	10400009 	beqz	v0,2134 <func_80B00390+0x54>
    2110:	8fa4001c 	lw	a0,28(sp)
    2114:	8fa50018 	lw	a1,24(sp)
    2118:	0c000000 	jal	0 <func_80AFE2B0>
    211c:	24060007 	li	a2,7
    2120:	8faf0018 	lw	t7,24(sp)
    2124:	240e0001 	li	t6,1
    2128:	a1ee02d2 	sb	t6,722(t7)
    212c:	0c000000 	jal	0 <func_80AFE2B0>
    2130:	8fa40018 	lw	a0,24(sp)
    2134:	8fbf0014 	lw	ra,20(sp)
    2138:	27bd0018 	addiu	sp,sp,24
    213c:	03e00008 	jr	ra
    2140:	00000000 	nop

00002144 <func_80B003F4>:
    2144:	27bdffe8 	addiu	sp,sp,-24
    2148:	afbf0014 	sw	ra,20(sp)
    214c:	240e1041 	li	t6,4161
    2150:	a48e02c4 	sh	t6,708(a0)
    2154:	afa40018 	sw	a0,24(sp)
    2158:	0c000000 	jal	0 <func_80AFE2B0>
    215c:	24050009 	li	a1,9
    2160:	8fa40018 	lw	a0,24(sp)
    2164:	0c000000 	jal	0 <func_80AFE2B0>
    2168:	24050017 	li	a1,23
    216c:	8fbf0014 	lw	ra,20(sp)
    2170:	27bd0018 	addiu	sp,sp,24
    2174:	03e00008 	jr	ra
    2178:	00000000 	nop

0000217c <func_80B0042C>:
    217c:	3c0e0000 	lui	t6,0x0
    2180:	8dce0000 	lw	t6,0(t6)
    2184:	27bdffe8 	addiu	sp,sp,-24
    2188:	afbf0014 	sw	ra,20(sp)
    218c:	11c00005 	beqz	t6,21a4 <func_80B0042C+0x28>
    2190:	afa5001c 	sw	a1,28(sp)
    2194:	0c000000 	jal	0 <func_80AFE2B0>
    2198:	00000000 	nop
    219c:	10000008 	b	21c0 <func_80B0042C+0x44>
    21a0:	8fbf0014 	lw	ra,20(sp)
    21a4:	0c000000 	jal	0 <func_80AFE2B0>
    21a8:	afa40018 	sw	a0,24(sp)
    21ac:	44060000 	mfc1	a2,$f0
    21b0:	8fa40018 	lw	a0,24(sp)
    21b4:	0c000000 	jal	0 <func_80AFE2B0>
    21b8:	8fa5001c 	lw	a1,28(sp)
    21bc:	8fbf0014 	lw	ra,20(sp)
    21c0:	27bd0018 	addiu	sp,sp,24
    21c4:	03e00008 	jr	ra
    21c8:	00000000 	nop

000021cc <func_80B0047C>:
    21cc:	27bdffe8 	addiu	sp,sp,-24
    21d0:	afbf0014 	sw	ra,20(sp)
    21d4:	0c000000 	jal	0 <func_80AFE2B0>
    21d8:	24050018 	li	a1,24
    21dc:	8fbf0014 	lw	ra,20(sp)
    21e0:	27bd0018 	addiu	sp,sp,24
    21e4:	03e00008 	jr	ra
    21e8:	00000000 	nop

000021ec <func_80B0049C>:
    21ec:	27bdffe0 	addiu	sp,sp,-32
    21f0:	afbf0014 	sw	ra,20(sp)
    21f4:	afa40020 	sw	a0,32(sp)
    21f8:	24a420d8 	addiu	a0,a1,8408
    21fc:	0c000000 	jal	0 <func_80AFE2B0>
    2200:	afa50024 	sw	a1,36(sp)
    2204:	8fa50024 	lw	a1,36(sp)
    2208:	24010006 	li	at,6
    220c:	14410011 	bne	v0,at,2254 <func_80B0049C+0x68>
    2210:	8ca31c44 	lw	v1,7236(a1)
    2214:	00a02025 	move	a0,a1
    2218:	0c000000 	jal	0 <func_80AFE2B0>
    221c:	afa30018 	sw	v1,24(sp)
    2220:	1040000c 	beqz	v0,2254 <func_80B0049C+0x68>
    2224:	8fa30018 	lw	v1,24(sp)
    2228:	8fa40020 	lw	a0,32(sp)
    222c:	0c000000 	jal	0 <func_80AFE2B0>
    2230:	afa30018 	sw	v1,24(sp)
    2234:	8fa30018 	lw	v1,24(sp)
    2238:	3c010080 	lui	at,0x80
    223c:	3c180000 	lui	t8,0x0
    2240:	8c6e0680 	lw	t6,1664(v1)
    2244:	01c17825 	or	t7,t6,at
    2248:	ac6f0680 	sw	t7,1664(v1)
    224c:	8f180000 	lw	t8,0(t8)
    2250:	ac7806a8 	sw	t8,1704(v1)
    2254:	8fbf0014 	lw	ra,20(sp)
    2258:	27bd0020 	addiu	sp,sp,32
    225c:	03e00008 	jr	ra
    2260:	00000000 	nop

00002264 <func_80B00514>:
    2264:	27bdffe8 	addiu	sp,sp,-24
    2268:	afbf0014 	sw	ra,20(sp)
    226c:	8c8e0004 	lw	t6,4(a0)
    2270:	2401fffe 	li	at,-2
    2274:	24050009 	li	a1,9
    2278:	01c17824 	and	t7,t6,at
    227c:	ac8f0004 	sw	t7,4(a0)
    2280:	0c000000 	jal	0 <func_80AFE2B0>
    2284:	afa40018 	sw	a0,24(sp)
    2288:	8fa40018 	lw	a0,24(sp)
    228c:	0c000000 	jal	0 <func_80AFE2B0>
    2290:	24050019 	li	a1,25
    2294:	8fbf0014 	lw	ra,20(sp)
    2298:	27bd0018 	addiu	sp,sp,24
    229c:	03e00008 	jr	ra
    22a0:	00000000 	nop

000022a4 <func_80B00554>:
    22a4:	27bdffe8 	addiu	sp,sp,-24
    22a8:	afbf0014 	sw	ra,20(sp)
    22ac:	afa5001c 	sw	a1,28(sp)
    22b0:	908e02d7 	lbu	t6,727(a0)
    22b4:	51c00007 	beqzl	t6,22d4 <func_80B00554+0x30>
    22b8:	8fbf0014 	lw	ra,20(sp)
    22bc:	8c8f0004 	lw	t7,4(a0)
    22c0:	2405001a 	li	a1,26
    22c4:	35f80001 	ori	t8,t7,0x1
    22c8:	0c000000 	jal	0 <func_80AFE2B0>
    22cc:	ac980004 	sw	t8,4(a0)
    22d0:	8fbf0014 	lw	ra,20(sp)
    22d4:	27bd0018 	addiu	sp,sp,24
    22d8:	03e00008 	jr	ra
    22dc:	00000000 	nop

000022e0 <func_80B00590>:
    22e0:	27bdffe8 	addiu	sp,sp,-24
    22e4:	afbf0014 	sw	ra,20(sp)
    22e8:	8482001c 	lh	v0,28(a0)
    22ec:	3c0f0000 	lui	t7,0x0
    22f0:	24010002 	li	at,2
    22f4:	2442ffff 	addiu	v0,v0,-1
    22f8:	000270c0 	sll	t6,v0,0x3
    22fc:	01ee7821 	addu	t7,t7,t6
    2300:	91ef0000 	lbu	t7,0(t7)
    2304:	00001025 	move	v0,zero
    2308:	15e10005 	bne	t7,at,2320 <func_80B00590+0x40>
    230c:	00000000 	nop
    2310:	0c000000 	jal	0 <func_80AFE2B0>
    2314:	00000000 	nop
    2318:	10000001 	b	2320 <func_80B00590+0x40>
    231c:	24020001 	li	v0,1
    2320:	8fbf0014 	lw	ra,20(sp)
    2324:	27bd0018 	addiu	sp,sp,24
    2328:	03e00008 	jr	ra
    232c:	00000000 	nop

00002330 <func_80B005E0>:
    2330:	27bdffe8 	addiu	sp,sp,-24
    2334:	afbf0014 	sw	ra,20(sp)
    2338:	afa40018 	sw	a0,24(sp)
    233c:	0c000000 	jal	0 <func_80AFE2B0>
    2340:	24050009 	li	a1,9
    2344:	8fa40018 	lw	a0,24(sp)
    2348:	0c000000 	jal	0 <func_80AFE2B0>
    234c:	2405001a 	li	a1,26
    2350:	8fbf0014 	lw	ra,20(sp)
    2354:	27bd0018 	addiu	sp,sp,24
    2358:	03e00008 	jr	ra
    235c:	00000000 	nop

00002360 <func_80B00610>:
    2360:	8c8202dc 	lw	v0,732(a0)
    2364:	240300ff 	li	v1,255
    2368:	10620005 	beq	v1,v0,2380 <func_80B00610+0x20>
    236c:	244e0014 	addiu	t6,v0,20
    2370:	2dc10100 	sltiu	at,t6,256
    2374:	14200002 	bnez	at,2380 <func_80B00610+0x20>
    2378:	ac8e02dc 	sw	t6,732(a0)
    237c:	ac8302dc 	sw	v1,732(a0)
    2380:	03e00008 	jr	ra
    2384:	00000000 	nop

00002388 <func_80B00638>:
    2388:	27bdffe8 	addiu	sp,sp,-24
    238c:	afbf0014 	sw	ra,20(sp)
    2390:	afa40018 	sw	a0,24(sp)
    2394:	0c000000 	jal	0 <func_80AFE2B0>
    2398:	afa5001c 	sw	a1,28(sp)
    239c:	0c000000 	jal	0 <func_80AFE2B0>
    23a0:	8fa40018 	lw	a0,24(sp)
    23a4:	14400006 	bnez	v0,23c0 <func_80B00638+0x38>
    23a8:	8fa40018 	lw	a0,24(sp)
    23ac:	908e02d8 	lbu	t6,728(a0)
    23b0:	51c00004 	beqzl	t6,23c4 <func_80B00638+0x3c>
    23b4:	8fbf0014 	lw	ra,20(sp)
    23b8:	0c000000 	jal	0 <func_80AFE2B0>
    23bc:	00000000 	nop
    23c0:	8fbf0014 	lw	ra,20(sp)
    23c4:	27bd0018 	addiu	sp,sp,24
    23c8:	03e00008 	jr	ra
    23cc:	00000000 	nop

000023d0 <func_80B00680>:
    23d0:	27bdffe8 	addiu	sp,sp,-24
    23d4:	afbf0014 	sw	ra,20(sp)
    23d8:	afa40018 	sw	a0,24(sp)
    23dc:	0c000000 	jal	0 <func_80AFE2B0>
    23e0:	24050002 	li	a1,2
    23e4:	8fa40018 	lw	a0,24(sp)
    23e8:	0c000000 	jal	0 <func_80AFE2B0>
    23ec:	2405001b 	li	a1,27
    23f0:	8fbf0014 	lw	ra,20(sp)
    23f4:	27bd0018 	addiu	sp,sp,24
    23f8:	03e00008 	jr	ra
    23fc:	00000000 	nop

00002400 <func_80B006B0>:
    2400:	27bdffe8 	addiu	sp,sp,-24
    2404:	afbf0014 	sw	ra,20(sp)
    2408:	afa40018 	sw	a0,24(sp)
    240c:	0c000000 	jal	0 <func_80AFE2B0>
    2410:	afa5001c 	sw	a1,28(sp)
    2414:	0c000000 	jal	0 <func_80AFE2B0>
    2418:	8fa40018 	lw	a0,24(sp)
    241c:	14400006 	bnez	v0,2438 <func_80B006B0+0x38>
    2420:	8fa40018 	lw	a0,24(sp)
    2424:	908e02d8 	lbu	t6,728(a0)
    2428:	55c00004 	bnezl	t6,243c <func_80B006B0+0x3c>
    242c:	8fbf0014 	lw	ra,20(sp)
    2430:	0c000000 	jal	0 <func_80AFE2B0>
    2434:	00000000 	nop
    2438:	8fbf0014 	lw	ra,20(sp)
    243c:	27bd0018 	addiu	sp,sp,24
    2440:	03e00008 	jr	ra
    2444:	00000000 	nop

00002448 <func_80B006F8>:
    2448:	3c014100 	lui	at,0x4100
    244c:	44812000 	mtc1	at,$f4
    2450:	3c01c100 	lui	at,0xc100
    2454:	44813000 	mtc1	at,$f6
    2458:	27bdffe8 	addiu	sp,sp,-24
    245c:	afbf0014 	sw	ra,20(sp)
    2460:	e4840060 	swc1	$f4,96(a0)
    2464:	e4860068 	swc1	$f6,104(a0)
    2468:	afa40018 	sw	a0,24(sp)
    246c:	0c000000 	jal	0 <func_80AFE2B0>
    2470:	00002825 	move	a1,zero
    2474:	8fa40018 	lw	a0,24(sp)
    2478:	0c000000 	jal	0 <func_80AFE2B0>
    247c:	2405001c 	li	a1,28
    2480:	8fbf0014 	lw	ra,20(sp)
    2484:	27bd0018 	addiu	sp,sp,24
    2488:	03e00008 	jr	ra
    248c:	00000000 	nop

00002490 <func_80B00740>:
    2490:	27bdffe8 	addiu	sp,sp,-24
    2494:	afbf0014 	sw	ra,20(sp)
    2498:	afa5001c 	sw	a1,28(sp)
    249c:	8483001c 	lh	v1,28(a0)
    24a0:	3c0f0000 	lui	t7,0x0
    24a4:	25ef0000 	addiu	t7,t7,0
    24a8:	2463ffff 	addiu	v1,v1,-1
    24ac:	000370c0 	sll	t6,v1,0x3
    24b0:	01cf1021 	addu	v0,t6,t7
    24b4:	a0400000 	sb	zero,0(v0)
    24b8:	ac400004 	sw	zero,4(v0)
    24bc:	24180001 	li	t8,1
    24c0:	0c000000 	jal	0 <func_80AFE2B0>
    24c4:	a09802d2 	sb	t8,722(a0)
    24c8:	8fbf0014 	lw	ra,20(sp)
    24cc:	27bd0018 	addiu	sp,sp,24
    24d0:	03e00008 	jr	ra
    24d4:	00000000 	nop

000024d8 <EnSkj_Update>:
    24d8:	27bdffb8 	addiu	sp,sp,-72
    24dc:	afbf0024 	sw	ra,36(sp)
    24e0:	afb10020 	sw	s1,32(sp)
    24e4:	afb0001c 	sw	s0,28(sp)
    24e8:	00808025 	move	s0,a0
    24ec:	0c000000 	jal	0 <func_80AFE2B0>
    24f0:	00a08825 	move	s1,a1
    24f4:	3c010000 	lui	at,0x0
    24f8:	ac220000 	sw	v0,0(at)
    24fc:	860e02c6 	lh	t6,710(s0)
    2500:	860302ca 	lh	v1,714(s0)
    2504:	24090003 	li	t1,3
    2508:	25cf0001 	addiu	t7,t6,1
    250c:	10600003 	beqz	v1,251c <EnSkj_Update+0x44>
    2510:	a60f02c6 	sh	t7,710(s0)
    2514:	2478ffff 	addiu	t8,v1,-1
    2518:	a61802ca 	sh	t8,714(s0)
    251c:	860202cc 	lh	v0,716(s0)
    2520:	02002025 	move	a0,s0
    2524:	10400002 	beqz	v0,2530 <EnSkj_Update+0x58>
    2528:	2459ffff 	addiu	t9,v0,-1
    252c:	a61902cc 	sh	t9,716(s0)
    2530:	860202ce 	lh	v0,718(s0)
    2534:	10400003 	beqz	v0,2544 <EnSkj_Update+0x6c>
    2538:	2448ffff 	addiu	t0,v0,-1
    253c:	a60802ce 	sh	t0,718(s0)
    2540:	860202ce 	lh	v0,718(s0)
    2544:	54400003 	bnezl	v0,2554 <EnSkj_Update+0x7c>
    2548:	920a02d2 	lbu	t2,722(s0)
    254c:	a20902d5 	sb	t1,725(s0)
    2550:	920a02d2 	lbu	t2,722(s0)
    2554:	11400016 	beqz	t2,25b0 <EnSkj_Update+0xd8>
    2558:	00000000 	nop
    255c:	8e0b02dc 	lw	t3,732(s0)
    2560:	15600013 	bnez	t3,25b0 <EnSkj_Update+0xd8>
    2564:	00000000 	nop
    2568:	920c02d1 	lbu	t4,721(s0)
    256c:	24010009 	li	at,9
    2570:	1581000b 	bne	t4,at,25a0 <EnSkj_Update+0xc8>
    2574:	00000000 	nop
    2578:	c6040024 	lwc1	$f4,36(s0)
    257c:	02202025 	move	a0,s1
    2580:	27a5003c 	addiu	a1,sp,60
    2584:	e7a4003c 	swc1	$f4,60(sp)
    2588:	c6060028 	lwc1	$f6,40(s0)
    258c:	24060013 	li	a2,19
    2590:	e7a60040 	swc1	$f6,64(sp)
    2594:	c608002c 	lwc1	$f8,44(s0)
    2598:	0c000000 	jal	0 <func_80AFE2B0>
    259c:	e7a80044 	swc1	$f8,68(sp)
    25a0:	0c000000 	jal	0 <func_80AFE2B0>
    25a4:	02002025 	move	a0,s0
    25a8:	1000003e 	b	26a4 <EnSkj_Update+0x1cc>
    25ac:	8fbf0024 	lw	ra,36(sp)
    25b0:	0c000000 	jal	0 <func_80AFE2B0>
    25b4:	3c0541f0 	lui	a1,0x41f0
    25b8:	3c053c23 	lui	a1,0x3c23
    25bc:	34a5d70a 	ori	a1,a1,0xd70a
    25c0:	0c000000 	jal	0 <func_80AFE2B0>
    25c4:	02002025 	move	a0,s0
    25c8:	8e190274 	lw	t9,628(s0)
    25cc:	02002025 	move	a0,s0
    25d0:	02202825 	move	a1,s1
    25d4:	0320f809 	jalr	t9
    25d8:	00000000 	nop
    25dc:	960d02c4 	lhu	t5,708(s0)
    25e0:	02002025 	move	a0,s0
    25e4:	02202825 	move	a1,s1
    25e8:	0c000000 	jal	0 <func_80AFE2B0>
    25ec:	a60d010e 	sh	t5,270(s0)
    25f0:	26050278 	addiu	a1,s0,632
    25f4:	afa5002c 	sw	a1,44(sp)
    25f8:	0c000000 	jal	0 <func_80AFE2B0>
    25fc:	02002025 	move	a0,s0
    2600:	920e02d3 	lbu	t6,723(s0)
    2604:	3c0f0000 	lui	t7,0x0
    2608:	51c00012 	beqzl	t6,2654 <EnSkj_Update+0x17c>
    260c:	3c010001 	lui	at,0x1
    2610:	8def0000 	lw	t7,0(t7)
    2614:	3c010001 	lui	at,0x1
    2618:	34211e60 	ori	at,at,0x1e60
    261c:	15e0000c 	bnez	t7,2650 <EnSkj_Update+0x178>
    2620:	02202025 	move	a0,s1
    2624:	02212821 	addu	a1,s1,at
    2628:	afa50030 	sw	a1,48(sp)
    262c:	0c000000 	jal	0 <func_80AFE2B0>
    2630:	8fa6002c 	lw	a2,44(sp)
    2634:	92180114 	lbu	t8,276(s0)
    2638:	8fa50030 	lw	a1,48(sp)
    263c:	02202025 	move	a0,s1
    2640:	57000004 	bnezl	t8,2654 <EnSkj_Update+0x17c>
    2644:	3c010001 	lui	at,0x1
    2648:	0c000000 	jal	0 <func_80AFE2B0>
    264c:	8fa6002c 	lw	a2,44(sp)
    2650:	3c010001 	lui	at,0x1
    2654:	34211e60 	ori	at,at,0x1e60
    2658:	02212821 	addu	a1,s1,at
    265c:	02202025 	move	a0,s1
    2660:	0c000000 	jal	0 <func_80AFE2B0>
    2664:	8fa6002c 	lw	a2,44(sp)
    2668:	0c000000 	jal	0 <func_80AFE2B0>
    266c:	2604014c 	addiu	a0,s0,332
    2670:	0c000000 	jal	0 <func_80AFE2B0>
    2674:	02002025 	move	a0,s0
    2678:	3c0141a0 	lui	at,0x41a0
    267c:	44810000 	mtc1	at,$f0
    2680:	24080007 	li	t0,7
    2684:	afa80014 	sw	t0,20(sp)
    2688:	44060000 	mfc1	a2,$f0
    268c:	44070000 	mfc1	a3,$f0
    2690:	02202025 	move	a0,s1
    2694:	02002825 	move	a1,s0
    2698:	0c000000 	jal	0 <func_80AFE2B0>
    269c:	e7a00010 	swc1	$f0,16(sp)
    26a0:	8fbf0024 	lw	ra,36(sp)
    26a4:	8fb0001c 	lw	s0,28(sp)
    26a8:	8fb10020 	lw	s1,32(sp)
    26ac:	03e00008 	jr	ra
    26b0:	27bd0048 	addiu	sp,sp,72

000026b4 <func_80B00964>:
    26b4:	27bdffb8 	addiu	sp,sp,-72
    26b8:	afbf0044 	sw	ra,68(sp)
    26bc:	afa5004c 	sw	a1,76(sp)
    26c0:	0c000000 	jal	0 <func_80AFE2B0>
    26c4:	afa40048 	sw	a0,72(sp)
    26c8:	3c0e0000 	lui	t6,0x0
    26cc:	8dce0000 	lw	t6,0(t6)
    26d0:	3c010000 	lui	at,0x0
    26d4:	ac220000 	sw	v0,0(at)
    26d8:	85cf12d4 	lh	t7,4820(t6)
    26dc:	8fa40048 	lw	a0,72(sp)
    26e0:	3c013f80 	lui	at,0x3f80
    26e4:	11e00018 	beqz	t7,2748 <func_80B00964+0x94>
    26e8:	240800ff 	li	t0,255
    26ec:	84980032 	lh	t8,50(a0)
    26f0:	c48c0024 	lwc1	$f12,36(a0)
    26f4:	c48e0028 	lwc1	$f14,40(a0)
    26f8:	8c86002c 	lw	a2,44(a0)
    26fc:	84870030 	lh	a3,48(a0)
    2700:	afb80010 	sw	t8,16(sp)
    2704:	84990034 	lh	t9,52(a0)
    2708:	44810000 	mtc1	at,$f0
    270c:	8fab004c 	lw	t3,76(sp)
    2710:	240900ff 	li	t1,255
    2714:	240a0004 	li	t2,4
    2718:	afaa0034 	sw	t2,52(sp)
    271c:	afa90030 	sw	t1,48(sp)
    2720:	afa0002c 	sw	zero,44(sp)
    2724:	afa00028 	sw	zero,40(sp)
    2728:	afa80024 	sw	t0,36(sp)
    272c:	afb90014 	sw	t9,20(sp)
    2730:	e7a00018 	swc1	$f0,24(sp)
    2734:	e7a0001c 	swc1	$f0,28(sp)
    2738:	e7a00020 	swc1	$f0,32(sp)
    273c:	8d6c0000 	lw	t4,0(t3)
    2740:	0c000000 	jal	0 <func_80AFE2B0>
    2744:	afac0038 	sw	t4,56(sp)
    2748:	8fbf0044 	lw	ra,68(sp)
    274c:	27bd0048 	addiu	sp,sp,72
    2750:	03e00008 	jr	ra
    2754:	00000000 	nop

00002758 <func_80B00A08>:
    2758:	27bdffe0 	addiu	sp,sp,-32
    275c:	afa40020 	sw	a0,32(sp)
    2760:	8fae0020 	lw	t6,32(sp)
    2764:	afbf001c 	sw	ra,28(sp)
    2768:	afa50024 	sw	a1,36(sp)
    276c:	24a400b6 	addiu	a0,a1,182
    2770:	85c50032 	lh	a1,50(t6)
    2774:	afa00010 	sw	zero,16(sp)
    2778:	24060005 	li	a2,5
    277c:	0c000000 	jal	0 <func_80AFE2B0>
    2780:	240707d0 	li	a3,2000
    2784:	8fa30024 	lw	v1,36(sp)
    2788:	846200b6 	lh	v0,182(v1)
    278c:	a4620032 	sh	v0,50(v1)
    2790:	a462083c 	sh	v0,2108(v1)
    2794:	8fbf001c 	lw	ra,28(sp)
    2798:	27bd0020 	addiu	sp,sp,32
    279c:	03e00008 	jr	ra
    27a0:	00000000 	nop

000027a4 <func_80B00A54>:
    27a4:	27bdffe0 	addiu	sp,sp,-32
    27a8:	afbf001c 	sw	ra,28(sp)
    27ac:	afb10018 	sw	s1,24(sp)
    27b0:	afb00014 	sw	s0,20(sp)
    27b4:	afa50024 	sw	a1,36(sp)
    27b8:	8cb01c44 	lw	s0,7236(a1)
    27bc:	00808825 	move	s1,a0
    27c0:	02202825 	move	a1,s1
    27c4:	0c000000 	jal	0 <func_80AFE2B0>
    27c8:	02002025 	move	a0,s0
    27cc:	1040001e 	beqz	v0,2848 <func_80B00A54+0xa4>
    27d0:	3c030000 	lui	v1,0x0
    27d4:	24630000 	addiu	v1,v1,0
    27d8:	8c6f0004 	lw	t7,4(v1)
    27dc:	24040001 	li	a0,1
    27e0:	3c010200 	lui	at,0x200
    27e4:	a1e402d7 	sb	a0,727(t7)
    27e8:	8c78000c 	lw	t8,12(v1)
    27ec:	3c0a0000 	lui	t2,0x0
    27f0:	254a0000 	addiu	t2,t2,0
    27f4:	a30402d7 	sb	a0,727(t8)
    27f8:	8e020680 	lw	v0,1664(s0)
    27fc:	24040004 	li	a0,4
    2800:	0002c9c0 	sll	t9,v0,0x7
    2804:	0721000f 	bgez	t9,2844 <func_80B00A54+0xa0>
    2808:	00414025 	or	t0,v0,at
    280c:	0c000000 	jal	0 <func_80AFE2B0>
    2810:	ae080680 	sw	t0,1664(s0)
    2814:	02202025 	move	a0,s1
    2818:	0c000000 	jal	0 <func_80AFE2B0>
    281c:	02002825 	move	a1,s0
    2820:	ae1106a8 	sw	s1,1704(s0)
    2824:	8fa40024 	lw	a0,36(sp)
    2828:	240510be 	li	a1,4286
    282c:	0c000000 	jal	0 <func_80AFE2B0>
    2830:	02203025 	move	a2,s1
    2834:	3c090000 	lui	t1,0x0
    2838:	25290000 	addiu	t1,t1,0
    283c:	10000002 	b	2848 <func_80B00A54+0xa4>
    2840:	ae290274 	sw	t1,628(s1)
    2844:	ae2a0274 	sw	t2,628(s1)
    2848:	8fbf001c 	lw	ra,28(sp)
    284c:	8fb00014 	lw	s0,20(sp)
    2850:	8fb10018 	lw	s1,24(sp)
    2854:	03e00008 	jr	ra
    2858:	27bd0020 	addiu	sp,sp,32

0000285c <func_80B00B0C>:
    285c:	27bdffe0 	addiu	sp,sp,-32
    2860:	afbf001c 	sw	ra,28(sp)
    2864:	afb10018 	sw	s1,24(sp)
    2868:	afb00014 	sw	s0,20(sp)
    286c:	afa50024 	sw	a1,36(sp)
    2870:	8cb01c44 	lw	s0,7236(a1)
    2874:	00808825 	move	s1,a0
    2878:	3c010200 	lui	at,0x200
    287c:	8e020680 	lw	v0,1664(s0)
    2880:	02002025 	move	a0,s0
    2884:	000279c0 	sll	t7,v0,0x7
    2888:	05e10010 	bgez	t7,28cc <func_80B00B0C+0x70>
    288c:	0041c025 	or	t8,v0,at
    2890:	ae180680 	sw	t8,1664(s0)
    2894:	0c000000 	jal	0 <func_80AFE2B0>
    2898:	24040004 	li	a0,4
    289c:	02202025 	move	a0,s1
    28a0:	0c000000 	jal	0 <func_80AFE2B0>
    28a4:	02002825 	move	a1,s0
    28a8:	ae1106a8 	sw	s1,1704(s0)
    28ac:	8fa40024 	lw	a0,36(sp)
    28b0:	240510be 	li	a1,4286
    28b4:	0c000000 	jal	0 <func_80AFE2B0>
    28b8:	02203025 	move	a2,s1
    28bc:	3c190000 	lui	t9,0x0
    28c0:	27390000 	addiu	t9,t9,0
    28c4:	10000009 	b	28ec <func_80B00B0C+0x90>
    28c8:	ae390274 	sw	t9,628(s1)
    28cc:	0c000000 	jal	0 <func_80AFE2B0>
    28d0:	02202825 	move	a1,s1
    28d4:	50400006 	beqzl	v0,28f0 <func_80B00B0C+0x94>
    28d8:	8fbf001c 	lw	ra,28(sp)
    28dc:	8e080680 	lw	t0,1664(s0)
    28e0:	3c010080 	lui	at,0x80
    28e4:	01014825 	or	t1,t0,at
    28e8:	ae090680 	sw	t1,1664(s0)
    28ec:	8fbf001c 	lw	ra,28(sp)
    28f0:	8fb00014 	lw	s0,20(sp)
    28f4:	8fb10018 	lw	s1,24(sp)
    28f8:	03e00008 	jr	ra
    28fc:	27bd0020 	addiu	sp,sp,32

00002900 <func_80B00BB0>:
    2900:	27bdffe0 	addiu	sp,sp,-32
    2904:	afbf0014 	sw	ra,20(sp)
    2908:	afa40020 	sw	a0,32(sp)
    290c:	afa50024 	sw	a1,36(sp)
    2910:	0c000000 	jal	0 <func_80AFE2B0>
    2914:	24a420d8 	addiu	a0,a1,8408
    2918:	8fae0024 	lw	t6,36(sp)
    291c:	a3a2001f 	sb	v0,31(sp)
    2920:	8fa40020 	lw	a0,32(sp)
    2924:	0c000000 	jal	0 <func_80AFE2B0>
    2928:	8dc51c44 	lw	a1,7236(t6)
    292c:	93af001f 	lbu	t7,31(sp)
    2930:	24010002 	li	at,2
    2934:	8fa40024 	lw	a0,36(sp)
    2938:	55e10010 	bnel	t7,at,297c <func_80B00BB0+0x7c>
    293c:	8fbf0014 	lw	ra,20(sp)
    2940:	0c000000 	jal	0 <func_80AFE2B0>
    2944:	2405002e 	li	a1,46
    2948:	3c020000 	lui	v0,0x0
    294c:	8c420000 	lw	v0,0(v0)
    2950:	24180001 	li	t8,1
    2954:	241900a0 	li	t9,160
    2958:	50400003 	beqzl	v0,2968 <func_80B00BB0+0x68>
    295c:	8fa20020 	lw	v0,32(sp)
    2960:	a05802d8 	sb	t8,728(v0)
    2964:	8fa20020 	lw	v0,32(sp)
    2968:	3c080000 	lui	t0,0x0
    296c:	25080000 	addiu	t0,t0,0
    2970:	a45902ca 	sh	t9,714(v0)
    2974:	ac480274 	sw	t0,628(v0)
    2978:	8fbf0014 	lw	ra,20(sp)
    297c:	27bd0020 	addiu	sp,sp,32
    2980:	03e00008 	jr	ra
    2984:	00000000 	nop

00002988 <func_80B00C38>:
    2988:	27bdffd8 	addiu	sp,sp,-40
    298c:	afb10018 	sw	s1,24(sp)
    2990:	00a08825 	move	s1,a1
    2994:	afbf001c 	sw	ra,28(sp)
    2998:	afb00014 	sw	s0,20(sp)
    299c:	8ca51c44 	lw	a1,7236(a1)
    29a0:	00808025 	move	s0,a0
    29a4:	0c000000 	jal	0 <func_80AFE2B0>
    29a8:	afa50024 	sw	a1,36(sp)
    29ac:	3c010001 	lui	at,0x1
    29b0:	02211821 	addu	v1,s1,at
    29b4:	946204c6 	lhu	v0,1222(v1)
    29b8:	24010003 	li	at,3
    29bc:	54410014 	bnel	v0,at,2a10 <func_80B00C38+0x88>
    29c0:	2401000f 	li	at,15
    29c4:	0c000000 	jal	0 <func_80AFE2B0>
    29c8:	02202025 	move	a0,s1
    29cc:	3c010001 	lui	at,0x1
    29d0:	00310821 	addu	at,at,s1
    29d4:	240e0004 	li	t6,4
    29d8:	a42e04c6 	sh	t6,1222(at)
    29dc:	8faf0024 	lw	t7,36(sp)
    29e0:	02002025 	move	a0,s0
    29e4:	02202825 	move	a1,s1
    29e8:	3c0641d0 	lui	a2,0x41d0
    29ec:	0c000000 	jal	0 <func_80AFE2B0>
    29f0:	adf006a8 	sw	s0,1704(t7)
    29f4:	3c190000 	lui	t9,0x0
    29f8:	2418102d 	li	t8,4141
    29fc:	27390000 	addiu	t9,t9,0
    2a00:	a61802c4 	sh	t8,708(s0)
    2a04:	10000076 	b	2be0 <func_80B00C38+0x258>
    2a08:	ae190274 	sw	t9,628(s0)
    2a0c:	2401000f 	li	at,15
    2a10:	54410016 	bnel	v0,at,2a6c <func_80B00C38+0xe4>
    2a14:	906203dc 	lbu	v0,988(v1)
    2a18:	0c000000 	jal	0 <func_80AFE2B0>
    2a1c:	24044802 	li	a0,18434
    2a20:	0c000000 	jal	0 <func_80AFE2B0>
    2a24:	02202025 	move	a0,s1
    2a28:	3c010001 	lui	at,0x1
    2a2c:	00310821 	addu	at,at,s1
    2a30:	24080004 	li	t0,4
    2a34:	a42804c6 	sh	t0,1222(at)
    2a38:	8fa90024 	lw	t1,36(sp)
    2a3c:	02002025 	move	a0,s0
    2a40:	02202825 	move	a1,s1
    2a44:	3c0641d0 	lui	a2,0x41d0
    2a48:	0c000000 	jal	0 <func_80AFE2B0>
    2a4c:	ad3006a8 	sw	s0,1704(t1)
    2a50:	3c0b0000 	lui	t3,0x0
    2a54:	240a10bf 	li	t2,4287
    2a58:	256b0000 	addiu	t3,t3,0
    2a5c:	a60a02c4 	sh	t2,708(s0)
    2a60:	1000005f 	b	2be0 <func_80B00C38+0x258>
    2a64:	ae0b0274 	sw	t3,628(s0)
    2a68:	906203dc 	lbu	v0,988(v1)
    2a6c:	2401002b 	li	at,43
    2a70:	10410009 	beq	v0,at,2a98 <func_80B00C38+0x110>
    2a74:	2401002d 	li	at,45
    2a78:	1041001a 	beq	v0,at,2ae4 <func_80B00C38+0x15c>
    2a7c:	2401002e 	li	at,46
    2a80:	10410026 	beq	v0,at,2b1c <func_80B00C38+0x194>
    2a84:	24010030 	li	at,48
    2a88:	1041003d 	beq	v0,at,2b80 <func_80B00C38+0x1f8>
    2a8c:	00000000 	nop
    2a90:	10000054 	b	2be4 <func_80B00C38+0x25c>
    2a94:	8fbf001c 	lw	ra,28(sp)
    2a98:	3c100000 	lui	s0,0x0
    2a9c:	26100000 	addiu	s0,s0,0
    2aa0:	8e020004 	lw	v0,4(s0)
    2aa4:	10400002 	beqz	v0,2ab0 <func_80B00C38+0x128>
    2aa8:	00000000 	nop
    2aac:	a04002d8 	sb	zero,728(v0)
    2ab0:	0c000000 	jal	0 <func_80AFE2B0>
    2ab4:	24044836 	li	a0,18486
    2ab8:	5440004a 	bnezl	v0,2be4 <func_80B00C38+0x25c>
    2abc:	8fbf001c 	lw	ra,28(sp)
    2ac0:	8e02000c 	lw	v0,12(s0)
    2ac4:	240c0001 	li	t4,1
    2ac8:	10400002 	beqz	v0,2ad4 <func_80B00C38+0x14c>
    2acc:	00000000 	nop
    2ad0:	a04c02d8 	sb	t4,728(v0)
    2ad4:	0c000000 	jal	0 <func_80AFE2B0>
    2ad8:	02202025 	move	a0,s1
    2adc:	10000041 	b	2be4 <func_80B00C38+0x25c>
    2ae0:	8fbf001c 	lw	ra,28(sp)
    2ae4:	3c020000 	lui	v0,0x0
    2ae8:	8c420000 	lw	v0,0(v0)
    2aec:	10400002 	beqz	v0,2af8 <func_80B00C38+0x170>
    2af0:	00000000 	nop
    2af4:	a04002d8 	sb	zero,728(v0)
    2af8:	0c000000 	jal	0 <func_80AFE2B0>
    2afc:	24044836 	li	a0,18486
    2b00:	54400038 	bnezl	v0,2be4 <func_80B00C38+0x25c>
    2b04:	8fbf001c 	lw	ra,28(sp)
    2b08:	0c000000 	jal	0 <func_80AFE2B0>
    2b0c:	02202025 	move	a0,s1
    2b10:	240d00a0 	li	t5,160
    2b14:	10000032 	b	2be0 <func_80B00C38+0x258>
    2b18:	a60d02ca 	sh	t5,714(s0)
    2b1c:	860202ca 	lh	v0,714(s0)
    2b20:	10400003 	beqz	v0,2b30 <func_80B00C38+0x1a8>
    2b24:	244effff 	addiu	t6,v0,-1
    2b28:	1000002d 	b	2be0 <func_80B00C38+0x258>
    2b2c:	a60e02ca 	sh	t6,714(s0)
    2b30:	0c000000 	jal	0 <func_80AFE2B0>
    2b34:	24044827 	li	a0,18471
    2b38:	0c000000 	jal	0 <func_80AFE2B0>
    2b3c:	02202025 	move	a0,s1
    2b40:	3c010001 	lui	at,0x1
    2b44:	00310821 	addu	at,at,s1
    2b48:	240f0004 	li	t7,4
    2b4c:	a42f04c6 	sh	t7,1222(at)
    2b50:	8fb80024 	lw	t8,36(sp)
    2b54:	02002025 	move	a0,s0
    2b58:	02202825 	move	a1,s1
    2b5c:	3c0641d0 	lui	a2,0x41d0
    2b60:	0c000000 	jal	0 <func_80AFE2B0>
    2b64:	af1006a8 	sw	s0,1704(t8)
    2b68:	3c080000 	lui	t0,0x0
    2b6c:	2419102d 	li	t9,4141
    2b70:	25080000 	addiu	t0,t0,0
    2b74:	a61902c4 	sh	t9,708(s0)
    2b78:	10000019 	b	2be0 <func_80B00C38+0x258>
    2b7c:	ae080274 	sw	t0,628(s0)
    2b80:	0c000000 	jal	0 <func_80AFE2B0>
    2b84:	24044836 	li	a0,18486
    2b88:	14400015 	bnez	v0,2be0 <func_80B00C38+0x258>
    2b8c:	240a00a0 	li	t2,160
    2b90:	3c020000 	lui	v0,0x0
    2b94:	8c420000 	lw	v0,0(v0)
    2b98:	24090001 	li	t1,1
    2b9c:	24040006 	li	a0,6
    2ba0:	10400002 	beqz	v0,2bac <func_80B00C38+0x224>
    2ba4:	00000000 	nop
    2ba8:	a04902d8 	sb	t1,728(v0)
    2bac:	0c000000 	jal	0 <func_80AFE2B0>
    2bb0:	a60a02ca 	sh	t2,714(s0)
    2bb4:	2404000e 	li	a0,14
    2bb8:	0c000000 	jal	0 <func_80AFE2B0>
    2bbc:	24050001 	li	a1,1
    2bc0:	3c010001 	lui	at,0x1
    2bc4:	00310821 	addu	at,at,s1
    2bc8:	240b002a 	li	t3,42
    2bcc:	a02b03dc 	sb	t3,988(at)
    2bd0:	3c010001 	lui	at,0x1
    2bd4:	00310821 	addu	at,at,s1
    2bd8:	240c0002 	li	t4,2
    2bdc:	a02c04bf 	sb	t4,1215(at)
    2be0:	8fbf001c 	lw	ra,28(sp)
    2be4:	8fb00014 	lw	s0,20(sp)
    2be8:	8fb10018 	lw	s1,24(sp)
    2bec:	03e00008 	jr	ra
    2bf0:	27bd0028 	addiu	sp,sp,40

00002bf4 <func_80B00EA4>:
    2bf4:	3c0e0000 	lui	t6,0x0
    2bf8:	8dce0000 	lw	t6,0(t6)
    2bfc:	27bdffe8 	addiu	sp,sp,-24
    2c00:	afbf0014 	sw	ra,20(sp)
    2c04:	11c00004 	beqz	t6,2c18 <func_80B00EA4+0x24>
    2c08:	3c0f0000 	lui	t7,0x0
    2c0c:	25ef0000 	addiu	t7,t7,0
    2c10:	10000003 	b	2c20 <func_80B00EA4+0x2c>
    2c14:	ac8f0274 	sw	t7,628(a0)
    2c18:	0c000000 	jal	0 <func_80AFE2B0>
    2c1c:	3c0641d0 	lui	a2,0x41d0
    2c20:	8fbf0014 	lw	ra,20(sp)
    2c24:	27bd0018 	addiu	sp,sp,24
    2c28:	03e00008 	jr	ra
    2c2c:	00000000 	nop

00002c30 <func_80B00EE0>:
    2c30:	27bdffe8 	addiu	sp,sp,-24
    2c34:	afbf0014 	sw	ra,20(sp)
    2c38:	afa40018 	sw	a0,24(sp)
    2c3c:	afa5001c 	sw	a1,28(sp)
    2c40:	0c000000 	jal	0 <func_80AFE2B0>
    2c44:	24a420d8 	addiu	a0,a1,8408
    2c48:	24010006 	li	at,6
    2c4c:	54410008 	bnel	v0,at,2c70 <func_80B00EE0+0x40>
    2c50:	8fbf0014 	lw	ra,20(sp)
    2c54:	0c000000 	jal	0 <func_80AFE2B0>
    2c58:	8fa4001c 	lw	a0,28(sp)
    2c5c:	10400003 	beqz	v0,2c6c <func_80B00EE0+0x3c>
    2c60:	8fa40018 	lw	a0,24(sp)
    2c64:	0c000000 	jal	0 <func_80AFE2B0>
    2c68:	8fa5001c 	lw	a1,28(sp)
    2c6c:	8fbf0014 	lw	ra,20(sp)
    2c70:	27bd0018 	addiu	sp,sp,24
    2c74:	03e00008 	jr	ra
    2c78:	00000000 	nop

00002c7c <func_80B00F2C>:
    2c7c:	27bdffe8 	addiu	sp,sp,-24
    2c80:	afa40018 	sw	a0,24(sp)
    2c84:	afbf0014 	sw	ra,20(sp)
    2c88:	00a02025 	move	a0,a1
    2c8c:	0c000000 	jal	0 <func_80AFE2B0>
    2c90:	2405102e 	li	a1,4142
    2c94:	8faf0018 	lw	t7,24(sp)
    2c98:	3c0e0000 	lui	t6,0x0
    2c9c:	25ce0000 	addiu	t6,t6,0
    2ca0:	adee0274 	sw	t6,628(t7)
    2ca4:	8fbf0014 	lw	ra,20(sp)
    2ca8:	27bd0018 	addiu	sp,sp,24
    2cac:	03e00008 	jr	ra
    2cb0:	00000000 	nop

00002cb4 <func_80B00F64>:
    2cb4:	27bdffe8 	addiu	sp,sp,-24
    2cb8:	afbf0014 	sw	ra,20(sp)
    2cbc:	afa40018 	sw	a0,24(sp)
    2cc0:	afa5001c 	sw	a1,28(sp)
    2cc4:	0c000000 	jal	0 <func_80AFE2B0>
    2cc8:	24a420d8 	addiu	a0,a1,8408
    2ccc:	24010004 	li	at,4
    2cd0:	5441001d 	bnel	v0,at,2d48 <func_80B00F64+0x94>
    2cd4:	8fbf0014 	lw	ra,20(sp)
    2cd8:	0c000000 	jal	0 <func_80AFE2B0>
    2cdc:	8fa4001c 	lw	a0,28(sp)
    2ce0:	10400018 	beqz	v0,2d44 <func_80B00F64+0x90>
    2ce4:	8fae001c 	lw	t6,28(sp)
    2ce8:	3c020001 	lui	v0,0x1
    2cec:	004e1021 	addu	v0,v0,t6
    2cf0:	904204bd 	lbu	v0,1213(v0)
    2cf4:	24010001 	li	at,1
    2cf8:	8faf001c 	lw	t7,28(sp)
    2cfc:	50400006 	beqzl	v0,2d18 <func_80B00F64+0x64>
    2d00:	8de21c44 	lw	v0,7236(t7)
    2d04:	1041000c 	beq	v0,at,2d38 <func_80B00F64+0x84>
    2d08:	8fab0018 	lw	t3,24(sp)
    2d0c:	1000000e 	b	2d48 <func_80B00F64+0x94>
    2d10:	8fbf0014 	lw	ra,20(sp)
    2d14:	8de21c44 	lw	v0,7236(t7)
    2d18:	3c080000 	lui	t0,0x0
    2d1c:	25080000 	addiu	t0,t0,0
    2d20:	90580692 	lbu	t8,1682(v0)
    2d24:	37190020 	ori	t9,t8,0x20
    2d28:	a0590692 	sb	t9,1682(v0)
    2d2c:	8fa90018 	lw	t1,24(sp)
    2d30:	10000004 	b	2d44 <func_80B00F64+0x90>
    2d34:	ad280274 	sw	t0,628(t1)
    2d38:	3c0a0000 	lui	t2,0x0
    2d3c:	254a0000 	addiu	t2,t2,0
    2d40:	ad6a0274 	sw	t2,628(t3)
    2d44:	8fbf0014 	lw	ra,20(sp)
    2d48:	27bd0018 	addiu	sp,sp,24
    2d4c:	03e00008 	jr	ra
    2d50:	00000000 	nop

00002d54 <func_80B01004>:
    2d54:	3c0e0000 	lui	t6,0x0
    2d58:	8dce0000 	lw	t6,0(t6)
    2d5c:	27bdffe8 	addiu	sp,sp,-24
    2d60:	afbf0014 	sw	ra,20(sp)
    2d64:	11c00004 	beqz	t6,2d78 <func_80B01004+0x24>
    2d68:	3c0f0000 	lui	t7,0x0
    2d6c:	25ef0000 	addiu	t7,t7,0
    2d70:	10000003 	b	2d80 <func_80B01004+0x2c>
    2d74:	ac8f0274 	sw	t7,628(a0)
    2d78:	0c000000 	jal	0 <func_80AFE2B0>
    2d7c:	3c0641d0 	lui	a2,0x41d0
    2d80:	8fbf0014 	lw	ra,20(sp)
    2d84:	27bd0018 	addiu	sp,sp,24
    2d88:	03e00008 	jr	ra
    2d8c:	00000000 	nop

00002d90 <func_80B01040>:
    2d90:	27bdffe0 	addiu	sp,sp,-32
    2d94:	afbf001c 	sw	ra,28(sp)
    2d98:	afa40020 	sw	a0,32(sp)
    2d9c:	afa50024 	sw	a1,36(sp)
    2da0:	0c000000 	jal	0 <func_80AFE2B0>
    2da4:	24a420d8 	addiu	a0,a1,8408
    2da8:	24010006 	li	at,6
    2dac:	54410016 	bnel	v0,at,2e08 <func_80B01040+0x78>
    2db0:	8fbf001c 	lw	ra,28(sp)
    2db4:	0c000000 	jal	0 <func_80AFE2B0>
    2db8:	8fa40024 	lw	a0,36(sp)
    2dbc:	10400011 	beqz	v0,2e04 <func_80B01040+0x74>
    2dc0:	3c0141d0 	lui	at,0x41d0
    2dc4:	3c0e0000 	lui	t6,0x0
    2dc8:	91ce003f 	lbu	t6,63(t6)
    2dcc:	44810000 	mtc1	at,$f0
    2dd0:	3c060000 	lui	a2,0x0
    2dd4:	000e7880 	sll	t7,t6,0x2
    2dd8:	00cf3021 	addu	a2,a2,t7
    2ddc:	44070000 	mfc1	a3,$f0
    2de0:	8cc60000 	lw	a2,0(a2)
    2de4:	8fa40020 	lw	a0,32(sp)
    2de8:	8fa50024 	lw	a1,36(sp)
    2dec:	0c000000 	jal	0 <func_80AFE2B0>
    2df0:	e7a00010 	swc1	$f0,16(sp)
    2df4:	8fb90020 	lw	t9,32(sp)
    2df8:	3c180000 	lui	t8,0x0
    2dfc:	27180000 	addiu	t8,t8,0
    2e00:	af380274 	sw	t8,628(t9)
    2e04:	8fbf001c 	lw	ra,28(sp)
    2e08:	27bd0020 	addiu	sp,sp,32
    2e0c:	03e00008 	jr	ra
    2e10:	00000000 	nop

00002e14 <func_80B010C4>:
    2e14:	27bdffe0 	addiu	sp,sp,-32
    2e18:	afbf001c 	sw	ra,28(sp)
    2e1c:	afa50024 	sw	a1,36(sp)
    2e20:	0c000000 	jal	0 <func_80AFE2B0>
    2e24:	afa40020 	sw	a0,32(sp)
    2e28:	10400006 	beqz	v0,2e44 <func_80B010C4+0x30>
    2e2c:	8fa40020 	lw	a0,32(sp)
    2e30:	3c0e0000 	lui	t6,0x0
    2e34:	25ce0000 	addiu	t6,t6,0
    2e38:	ac800118 	sw	zero,280(a0)
    2e3c:	1000000d 	b	2e74 <func_80B010C4+0x60>
    2e40:	ac8e0274 	sw	t6,628(a0)
    2e44:	3c0f0000 	lui	t7,0x0
    2e48:	91ef003f 	lbu	t7,63(t7)
    2e4c:	3c0141d0 	lui	at,0x41d0
    2e50:	44810000 	mtc1	at,$f0
    2e54:	3c060000 	lui	a2,0x0
    2e58:	000fc080 	sll	t8,t7,0x2
    2e5c:	00d83021 	addu	a2,a2,t8
    2e60:	44070000 	mfc1	a3,$f0
    2e64:	8cc60000 	lw	a2,0(a2)
    2e68:	8fa50024 	lw	a1,36(sp)
    2e6c:	0c000000 	jal	0 <func_80AFE2B0>
    2e70:	e7a00010 	swc1	$f0,16(sp)
    2e74:	8fbf001c 	lw	ra,28(sp)
    2e78:	27bd0020 	addiu	sp,sp,32
    2e7c:	03e00008 	jr	ra
    2e80:	00000000 	nop

00002e84 <func_80B01134>:
    2e84:	27bdffe8 	addiu	sp,sp,-24
    2e88:	afbf0014 	sw	ra,20(sp)
    2e8c:	afa40018 	sw	a0,24(sp)
    2e90:	afa5001c 	sw	a1,28(sp)
    2e94:	0c000000 	jal	0 <func_80AFE2B0>
    2e98:	24a420d8 	addiu	a0,a1,8408
    2e9c:	24010006 	li	at,6
    2ea0:	5441001b 	bnel	v0,at,2f10 <func_80B01134+0x8c>
    2ea4:	8fbf0014 	lw	ra,20(sp)
    2ea8:	0c000000 	jal	0 <func_80AFE2B0>
    2eac:	8fa4001c 	lw	a0,28(sp)
    2eb0:	10400016 	beqz	v0,2f0c <func_80B01134+0x88>
    2eb4:	3c040000 	lui	a0,0x0
    2eb8:	24840000 	addiu	a0,a0,0
    2ebc:	9083003f 	lbu	v1,63(a0)
    2ec0:	3c190000 	lui	t9,0x0
    2ec4:	28610003 	slti	at,v1,3
    2ec8:	10200003 	beqz	at,2ed8 <func_80B01134+0x54>
    2ecc:	00602825 	move	a1,v1
    2ed0:	246e0001 	addiu	t6,v1,1
    2ed4:	a08e003f 	sb	t6,63(a0)
    2ed8:	24010002 	li	at,2
    2edc:	54a10009 	bnel	a1,at,2f04 <func_80B01134+0x80>
    2ee0:	8fa40018 	lw	a0,24(sp)
    2ee4:	948f0ef2 	lhu	t7,3826(a0)
    2ee8:	8fa80018 	lw	t0,24(sp)
    2eec:	27390000 	addiu	t9,t9,0
    2ef0:	35f80080 	ori	t8,t7,0x80
    2ef4:	a4980ef2 	sh	t8,3826(a0)
    2ef8:	10000004 	b	2f0c <func_80B01134+0x88>
    2efc:	ad190274 	sw	t9,628(t0)
    2f00:	8fa40018 	lw	a0,24(sp)
    2f04:	0c000000 	jal	0 <func_80AFE2B0>
    2f08:	8fa5001c 	lw	a1,28(sp)
    2f0c:	8fbf0014 	lw	ra,20(sp)
    2f10:	27bd0018 	addiu	sp,sp,24
    2f14:	03e00008 	jr	ra
    2f18:	00000000 	nop

00002f1c <func_80B011CC>:
    2f1c:	3c020000 	lui	v0,0x0
    2f20:	24420000 	addiu	v0,v0,0
    2f24:	8c4e0004 	lw	t6,4(v0)
    2f28:	27bdffe8 	addiu	sp,sp,-24
    2f2c:	afbf0014 	sw	ra,20(sp)
    2f30:	afa40018 	sw	a0,24(sp)
    2f34:	11c00003 	beqz	t6,2f44 <func_80B011CC+0x28>
    2f38:	afa5001c 	sw	a1,28(sp)
    2f3c:	240f0002 	li	t7,2
    2f40:	a04f0000 	sb	t7,0(v0)
    2f44:	8c58000c 	lw	t8,12(v0)
    2f48:	24190002 	li	t9,2
    2f4c:	53000003 	beqzl	t8,2f5c <func_80B011CC+0x40>
    2f50:	90480000 	lbu	t0,0(v0)
    2f54:	a0590008 	sb	t9,8(v0)
    2f58:	90480000 	lbu	t0,0(v0)
    2f5c:	24030002 	li	v1,2
    2f60:	54680009 	bnel	v1,t0,2f88 <func_80B011CC+0x6c>
    2f64:	8fbf0014 	lw	ra,20(sp)
    2f68:	90490008 	lbu	t1,8(v0)
    2f6c:	54690006 	bnel	v1,t1,2f88 <func_80B011CC+0x6c>
    2f70:	8fbf0014 	lw	ra,20(sp)
    2f74:	0c000000 	jal	0 <func_80AFE2B0>
    2f78:	00000000 	nop
    2f7c:	0c000000 	jal	0 <func_80AFE2B0>
    2f80:	8fa40018 	lw	a0,24(sp)
    2f84:	8fbf0014 	lw	ra,20(sp)
    2f88:	27bd0018 	addiu	sp,sp,24
    2f8c:	03e00008 	jr	ra
    2f90:	00000000 	nop

00002f94 <func_80B01244>:
    2f94:	27bdffb0 	addiu	sp,sp,-80
    2f98:	afbf004c 	sw	ra,76(sp)
    2f9c:	afb00048 	sw	s0,72(sp)
    2fa0:	00808025 	move	s0,a0
    2fa4:	0c000000 	jal	0 <func_80AFE2B0>
    2fa8:	afa50054 	sw	a1,84(sp)
    2fac:	3c010000 	lui	at,0x0
    2fb0:	ac220000 	sw	v0,0(at)
    2fb4:	860e02c6 	lh	t6,710(s0)
    2fb8:	3c010000 	lui	at,0x0
    2fbc:	3c180000 	lui	t8,0x0
    2fc0:	25cf0001 	addiu	t7,t6,1
    2fc4:	a60f02c6 	sh	t7,710(s0)
    2fc8:	c4240000 	lwc1	$f4,0(at)
    2fcc:	3c01c2b4 	lui	at,0xc2b4
    2fd0:	44813000 	mtc1	at,$f6
    2fd4:	3c0143e1 	lui	at,0x43e1
    2fd8:	44814000 	mtc1	at,$f8
    2fdc:	e6040038 	swc1	$f4,56(s0)
    2fe0:	e606003c 	swc1	$f6,60(s0)
    2fe4:	e6080040 	swc1	$f8,64(s0)
    2fe8:	8f180000 	lw	t8,0(t8)
    2fec:	3c013f80 	lui	at,0x3f80
    2ff0:	240a00ff 	li	t2,255
    2ff4:	871912d4 	lh	t9,4820(t8)
    2ff8:	240b00ff 	li	t3,255
    2ffc:	240c0004 	li	t4,4
    3000:	53200017 	beqzl	t9,3060 <func_80B01244+0xcc>
    3004:	8e190274 	lw	t9,628(s0)
    3008:	86080032 	lh	t0,50(s0)
    300c:	c60c0024 	lwc1	$f12,36(s0)
    3010:	c60e0028 	lwc1	$f14,40(s0)
    3014:	8e06002c 	lw	a2,44(s0)
    3018:	86070030 	lh	a3,48(s0)
    301c:	afa80010 	sw	t0,16(sp)
    3020:	86090034 	lh	t1,52(s0)
    3024:	44810000 	mtc1	at,$f0
    3028:	8fad0054 	lw	t5,84(sp)
    302c:	afac0034 	sw	t4,52(sp)
    3030:	afab0030 	sw	t3,48(sp)
    3034:	afa0002c 	sw	zero,44(sp)
    3038:	afa00028 	sw	zero,40(sp)
    303c:	afaa0024 	sw	t2,36(sp)
    3040:	afa90014 	sw	t1,20(sp)
    3044:	e7a00018 	swc1	$f0,24(sp)
    3048:	e7a0001c 	swc1	$f0,28(sp)
    304c:	e7a00020 	swc1	$f0,32(sp)
    3050:	8dae0000 	lw	t6,0(t5)
    3054:	0c000000 	jal	0 <func_80AFE2B0>
    3058:	afae0038 	sw	t6,56(sp)
    305c:	8e190274 	lw	t9,628(s0)
    3060:	02002025 	move	a0,s0
    3064:	8fa50054 	lw	a1,84(sp)
    3068:	0320f809 	jalr	t9
    306c:	00000000 	nop
    3070:	3c014248 	lui	at,0x4248
    3074:	960f02c4 	lhu	t7,708(s0)
    3078:	44815000 	mtc1	at,$f10
    307c:	a60f010e 	sh	t7,270(s0)
    3080:	e60a0090 	swc1	$f10,144(s0)
    3084:	8fbf004c 	lw	ra,76(sp)
    3088:	8fb00048 	lw	s0,72(sp)
    308c:	27bd0050 	addiu	sp,sp,80
    3090:	03e00008 	jr	ra
    3094:	00000000 	nop

00003098 <func_80B01348>:
    3098:	afa40000 	sw	a0,0(sp)
    309c:	afa50004 	sw	a1,4(sp)
    30a0:	afa60008 	sw	a2,8(sp)
    30a4:	afa7000c 	sw	a3,12(sp)
    30a8:	03e00008 	jr	ra
    30ac:	00001025 	move	v0,zero

000030b0 <func_80B01360>:
    30b0:	27bdffc0 	addiu	sp,sp,-64
    30b4:	afbf001c 	sw	ra,28(sp)
    30b8:	afb00018 	sw	s0,24(sp)
    30bc:	afa40040 	sw	a0,64(sp)
    30c0:	afa50044 	sw	a1,68(sp)
    30c4:	afa60048 	sw	a2,72(sp)
    30c8:	afa7004c 	sw	a3,76(sp)
    30cc:	8c850000 	lw	a1,0(a0)
    30d0:	3c060000 	lui	a2,0x0
    30d4:	24c60000 	addiu	a2,a2,0
    30d8:	27a4002c 	addiu	a0,sp,44
    30dc:	24070971 	li	a3,2417
    30e0:	0c000000 	jal	0 <func_80AFE2B0>
    30e4:	00a08025 	move	s0,a1
    30e8:	8faf0044 	lw	t7,68(sp)
    30ec:	2401000b 	li	at,11
    30f0:	3c180000 	lui	t8,0x0
    30f4:	55e10028 	bnel	t7,at,3198 <func_80B01360+0xe8>
    30f8:	8faf0040 	lw	t7,64(sp)
    30fc:	97180ef6 	lhu	t8,3830(t8)
    3100:	8fa80040 	lw	t0,64(sp)
    3104:	33190200 	andi	t9,t8,0x200
    3108:	53200023 	beqzl	t9,3198 <func_80B01360+0xe8>
    310c:	8faf0040 	lw	t7,64(sp)
    3110:	0c000000 	jal	0 <func_80AFE2B0>
    3114:	8d040000 	lw	a0,0(t0)
    3118:	0c000000 	jal	0 <func_80AFE2B0>
    311c:	00000000 	nop
    3120:	2404c000 	li	a0,-16384
    3124:	00002825 	move	a1,zero
    3128:	00003025 	move	a2,zero
    312c:	0c000000 	jal	0 <func_80AFE2B0>
    3130:	24070001 	li	a3,1
    3134:	8e0202c0 	lw	v0,704(s0)
    3138:	3c0ada38 	lui	t2,0xda38
    313c:	354a0003 	ori	t2,t2,0x3
    3140:	24490008 	addiu	t1,v0,8
    3144:	ae0902c0 	sw	t1,704(s0)
    3148:	ac4a0000 	sw	t2,0(v0)
    314c:	8fab0040 	lw	t3,64(sp)
    3150:	3c050000 	lui	a1,0x0
    3154:	24a50000 	addiu	a1,a1,0
    3158:	8d640000 	lw	a0,0(t3)
    315c:	2406097e 	li	a2,2430
    3160:	0c000000 	jal	0 <func_80AFE2B0>
    3164:	afa20028 	sw	v0,40(sp)
    3168:	8fa30028 	lw	v1,40(sp)
    316c:	3c0e0600 	lui	t6,0x600
    3170:	25ce14c8 	addiu	t6,t6,5320
    3174:	ac620004 	sw	v0,4(v1)
    3178:	8e0202c0 	lw	v0,704(s0)
    317c:	3c0dde00 	lui	t5,0xde00
    3180:	244c0008 	addiu	t4,v0,8
    3184:	ae0c02c0 	sw	t4,704(s0)
    3188:	ac4e0004 	sw	t6,4(v0)
    318c:	0c000000 	jal	0 <func_80AFE2B0>
    3190:	ac4d0000 	sw	t5,0(v0)
    3194:	8faf0040 	lw	t7,64(sp)
    3198:	3c060000 	lui	a2,0x0
    319c:	24c60000 	addiu	a2,a2,0
    31a0:	27a4002c 	addiu	a0,sp,44
    31a4:	24070985 	li	a3,2437
    31a8:	0c000000 	jal	0 <func_80AFE2B0>
    31ac:	8de50000 	lw	a1,0(t7)
    31b0:	8fbf001c 	lw	ra,28(sp)
    31b4:	8fb00018 	lw	s0,24(sp)
    31b8:	27bd0040 	addiu	sp,sp,64
    31bc:	03e00008 	jr	ra
    31c0:	00000000 	nop

000031c4 <func_80B01474>:
    31c4:	27bdffe8 	addiu	sp,sp,-24
    31c8:	afbf0014 	sw	ra,20(sp)
    31cc:	afa5001c 	sw	a1,28(sp)
    31d0:	0c000000 	jal	0 <func_80AFE2B0>
    31d4:	24050008 	li	a1,8
    31d8:	3c0ee200 	lui	t6,0xe200
    31dc:	3c0fc810 	lui	t7,0xc810
    31e0:	35ef49d8 	ori	t7,t7,0x49d8
    31e4:	35ce001c 	ori	t6,t6,0x1c
    31e8:	00402825 	move	a1,v0
    31ec:	ac4e0000 	sw	t6,0(v0)
    31f0:	ac4f0004 	sw	t7,4(v0)
    31f4:	24440008 	addiu	a0,v0,8
    31f8:	00801025 	move	v0,a0
    31fc:	3c18fb00 	lui	t8,0xfb00
    3200:	ac580000 	sw	t8,0(v0)
    3204:	8fb9001c 	lw	t9,28(sp)
    3208:	3c09df00 	lui	t1,0xdf00
    320c:	24840008 	addiu	a0,a0,8
    3210:	332800ff 	andi	t0,t9,0xff
    3214:	ac480004 	sw	t0,4(v0)
    3218:	ac800004 	sw	zero,4(a0)
    321c:	ac890000 	sw	t1,0(a0)
    3220:	8fbf0014 	lw	ra,20(sp)
    3224:	27bd0018 	addiu	sp,sp,24
    3228:	00a01025 	move	v0,a1
    322c:	03e00008 	jr	ra
    3230:	00000000 	nop

00003234 <func_80B014E4>:
    3234:	27bdffe8 	addiu	sp,sp,-24
    3238:	afbf0014 	sw	ra,20(sp)
    323c:	afa5001c 	sw	a1,28(sp)
    3240:	0c000000 	jal	0 <func_80AFE2B0>
    3244:	24050008 	li	a1,8
    3248:	3c0efb00 	lui	t6,0xfb00
    324c:	ac4e0000 	sw	t6,0(v0)
    3250:	8faf001c 	lw	t7,28(sp)
    3254:	24440008 	addiu	a0,v0,8
    3258:	3c19df00 	lui	t9,0xdf00
    325c:	31f800ff 	andi	t8,t7,0xff
    3260:	ac580004 	sw	t8,4(v0)
    3264:	ac800004 	sw	zero,4(a0)
    3268:	ac990000 	sw	t9,0(a0)
    326c:	8fbf0014 	lw	ra,20(sp)
    3270:	00402825 	move	a1,v0
    3274:	00a01025 	move	v0,a1
    3278:	03e00008 	jr	ra
    327c:	27bd0018 	addiu	sp,sp,24

00003280 <EnSkj_Draw>:
    3280:	27bdffa8 	addiu	sp,sp,-88
    3284:	afb10028 	sw	s1,40(sp)
    3288:	00a08825 	move	s1,a1
    328c:	afbf002c 	sw	ra,44(sp)
    3290:	afb00024 	sw	s0,36(sp)
    3294:	8ca50000 	lw	a1,0(a1)
    3298:	00808025 	move	s0,a0
    329c:	3c060000 	lui	a2,0x0
    32a0:	24c60000 	addiu	a2,a2,0
    32a4:	27a4003c 	addiu	a0,sp,60
    32a8:	240709ab 	li	a3,2475
    32ac:	0c000000 	jal	0 <func_80AFE2B0>
    32b0:	afa5004c 	sw	a1,76(sp)
    32b4:	0c000000 	jal	0 <func_80AFE2B0>
    32b8:	8e240000 	lw	a0,0(s1)
    32bc:	8e0e02dc 	lw	t6,732(s0)
    32c0:	8fa3004c 	lw	v1,76(sp)
    32c4:	2dc100ff 	sltiu	at,t6,255
    32c8:	5020000f 	beqzl	at,3308 <EnSkj_Draw+0x88>
    32cc:	8c6202c0 	lw	v0,704(v1)
    32d0:	8c6202c0 	lw	v0,704(v1)
    32d4:	3c18db06 	lui	t8,0xdb06
    32d8:	37180030 	ori	t8,t8,0x30
    32dc:	244f0008 	addiu	t7,v0,8
    32e0:	ac6f02c0 	sw	t7,704(v1)
    32e4:	ac580000 	sw	t8,0(v0)
    32e8:	8e0502dc 	lw	a1,732(s0)
    32ec:	8e240000 	lw	a0,0(s1)
    32f0:	0c000000 	jal	0 <func_80AFE2B0>
    32f4:	afa20038 	sw	v0,56(sp)
    32f8:	8fa60038 	lw	a2,56(sp)
    32fc:	1000000d 	b	3334 <EnSkj_Draw+0xb4>
    3300:	acc20004 	sw	v0,4(a2)
    3304:	8c6202c0 	lw	v0,704(v1)
    3308:	3c08db06 	lui	t0,0xdb06
    330c:	35080030 	ori	t0,t0,0x30
    3310:	24590008 	addiu	t9,v0,8
    3314:	ac7902c0 	sw	t9,704(v1)
    3318:	ac480000 	sw	t0,0(v0)
    331c:	8e0502dc 	lw	a1,732(s0)
    3320:	8e240000 	lw	a0,0(s1)
    3324:	0c000000 	jal	0 <func_80AFE2B0>
    3328:	afa20034 	sw	v0,52(sp)
    332c:	8fa60034 	lw	a2,52(sp)
    3330:	acc20004 	sw	v0,4(a2)
    3334:	8e050150 	lw	a1,336(s0)
    3338:	8e06016c 	lw	a2,364(s0)
    333c:	9207014e 	lbu	a3,334(s0)
    3340:	3c090000 	lui	t1,0x0
    3344:	3c0a0000 	lui	t2,0x0
    3348:	254a0000 	addiu	t2,t2,0
    334c:	25290000 	addiu	t1,t1,0
    3350:	afa90010 	sw	t1,16(sp)
    3354:	afaa0014 	sw	t2,20(sp)
    3358:	afb00018 	sw	s0,24(sp)
    335c:	0c000000 	jal	0 <func_80AFE2B0>
    3360:	02202025 	move	a0,s1
    3364:	3c060000 	lui	a2,0x0
    3368:	24c60000 	addiu	a2,a2,0
    336c:	27a4003c 	addiu	a0,sp,60
    3370:	8e250000 	lw	a1,0(s1)
    3374:	0c000000 	jal	0 <func_80AFE2B0>
    3378:	240709bf 	li	a3,2495
    337c:	8fbf002c 	lw	ra,44(sp)
    3380:	8fb00024 	lw	s0,36(sp)
    3384:	8fb10028 	lw	s1,40(sp)
    3388:	03e00008 	jr	ra
    338c:	27bd0058 	addiu	sp,sp,88
