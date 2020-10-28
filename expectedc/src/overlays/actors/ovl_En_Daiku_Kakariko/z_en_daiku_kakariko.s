
build/src/overlays/actors/ovl_En_Daiku_Kakariko/z_en_daiku_kakariko.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809E4320>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0024 	sw	ra,36(sp)
       8:	afa40038 	sw	a0,56(sp)
       c:	afa60040 	sw	a2,64(sp)
      10:	8cc20000 	lw	v0,0(a2)
      14:	3c180000 	lui	t8,0x0
      18:	27180000 	addiu	t8,t8,0
      1c:	04400003 	bltz	v0,2c <func_809E4320+0x2c>
      20:	00057900 	sll	t7,a1,0x4
      24:	14a20004 	bne	a1,v0,38 <func_809E4320+0x38>
      28:	0005c900 	sll	t9,a1,0x4
      2c:	44800000 	mtc1	zero,$f0
      30:	10000005 	b	48 <func_809E4320+0x48>
      34:	01f81821 	addu	v1,t7,t8
      38:	3c080000 	lui	t0,0x0
      3c:	25080000 	addiu	t0,t0,0
      40:	03281821 	addu	v1,t9,t0
      44:	c460000c 	lwc1	$f0,12(v1)
      48:	8c640000 	lw	a0,0(v1)
      4c:	afa3002c 	sw	v1,44(sp)
      50:	afa5003c 	sw	a1,60(sp)
      54:	0c000000 	jal	0 <func_809E4320>
      58:	e7a00034 	swc1	$f0,52(sp)
      5c:	44822000 	mtc1	v0,$f4
      60:	8fa3002c 	lw	v1,44(sp)
      64:	c7a00034 	lwc1	$f0,52(sp)
      68:	468021a0 	cvt.s.w	$f6,$f4
      6c:	8fa40038 	lw	a0,56(sp)
      70:	90690008 	lbu	t1,8(v1)
      74:	3c063f80 	lui	a2,0x3f80
      78:	24070000 	li	a3,0
      7c:	8c650000 	lw	a1,0(v1)
      80:	e7a60010 	swc1	$f6,16(sp)
      84:	e7a00018 	swc1	$f0,24(sp)
      88:	2484014c 	addiu	a0,a0,332
      8c:	0c000000 	jal	0 <func_809E4320>
      90:	afa90014 	sw	t1,20(sp)
      94:	8faa003c 	lw	t2,60(sp)
      98:	8fab0040 	lw	t3,64(sp)
      9c:	ad6a0000 	sw	t2,0(t3)
      a0:	8fbf0024 	lw	ra,36(sp)
      a4:	27bd0038 	addiu	sp,sp,56
      a8:	03e00008 	jr	ra
      ac:	00000000 	nop

000000b0 <EnDaikuKakariko_Init>:
      b0:	3c030000 	lui	v1,0x0
      b4:	24630000 	addiu	v1,v1,0
      b8:	8c6e0004 	lw	t6,4(v1)
      bc:	27bdffb8 	addiu	sp,sp,-72
      c0:	afb00028 	sw	s0,40(sp)
      c4:	00808025 	move	s0,a0
      c8:	afbf002c 	sw	ra,44(sp)
      cc:	11c00003 	beqz	t6,dc <EnDaikuKakariko_Init+0x2c>
      d0:	afa5004c 	sw	a1,76(sp)
      d4:	10000002 	b	e0 <EnDaikuKakariko_Init+0x30>
      d8:	24020005 	li	v0,5
      dc:	24020011 	li	v0,17
      e0:	24010005 	li	at,5
      e4:	54410025 	bnel	v0,at,17c <EnDaikuKakariko_Init+0xcc>
      e8:	960b0200 	lhu	t3,512(s0)
      ec:	8faf004c 	lw	t7,76(sp)
      f0:	2401002a 	li	at,42
      f4:	85e200a4 	lh	v0,164(t7)
      f8:	10410014 	beq	v0,at,14c <EnDaikuKakariko_Init+0x9c>
      fc:	24010030 	li	at,48
     100:	1041001a 	beq	v0,at,16c <EnDaikuKakariko_Init+0xbc>
     104:	24010052 	li	at,82
     108:	5441001c 	bnel	v0,at,17c <EnDaikuKakariko_Init+0xcc>
     10c:	960b0200 	lhu	t3,512(s0)
     110:	8c780010 	lw	t8,16(v1)
     114:	57000019 	bnezl	t8,17c <EnDaikuKakariko_Init+0xcc>
     118:	960b0200 	lhu	t3,512(s0)
     11c:	860a001c 	lh	t2,28(s0)
     120:	96190200 	lhu	t9,512(s0)
     124:	3c0d0000 	lui	t5,0x0
     128:	314b0003 	andi	t3,t2,0x3
     12c:	000b6040 	sll	t4,t3,0x1
     130:	37290001 	ori	t1,t9,0x1
     134:	a6090200 	sh	t1,512(s0)
     138:	01ac6821 	addu	t5,t5,t4
     13c:	95ad0000 	lhu	t5,0(t5)
     140:	012d7025 	or	t6,t1,t5
     144:	1000000c 	b	178 <EnDaikuKakariko_Init+0xc8>
     148:	a60e0200 	sh	t6,512(s0)
     14c:	8c6f0010 	lw	t7,16(v1)
     150:	24010001 	li	at,1
     154:	55e10009 	bnel	t7,at,17c <EnDaikuKakariko_Init+0xcc>
     158:	960b0200 	lhu	t3,512(s0)
     15c:	96180200 	lhu	t8,512(s0)
     160:	37190002 	ori	t9,t8,0x2
     164:	10000004 	b	178 <EnDaikuKakariko_Init+0xc8>
     168:	a6190200 	sh	t9,512(s0)
     16c:	96080200 	lhu	t0,512(s0)
     170:	350a0004 	ori	t2,t0,0x4
     174:	a60a0200 	sh	t2,512(s0)
     178:	960b0200 	lhu	t3,512(s0)
     17c:	316c0007 	andi	t4,t3,0x7
     180:	55800006 	bnezl	t4,19c <EnDaikuKakariko_Init+0xec>
     184:	8c690010 	lw	t1,16(v1)
     188:	0c000000 	jal	0 <func_809E4320>
     18c:	02002025 	move	a0,s0
     190:	3c030000 	lui	v1,0x0
     194:	24630000 	addiu	v1,v1,0
     198:	8c690010 	lw	t1,16(v1)
     19c:	24010001 	li	at,1
     1a0:	260400b4 	addiu	a0,s0,180
     1a4:	15210004 	bne	t1,at,1b8 <EnDaikuKakariko_Init+0x108>
     1a8:	24050000 	li	a1,0
     1ac:	960d0200 	lhu	t5,512(s0)
     1b0:	35ae0008 	ori	t6,t5,0x8
     1b4:	a60e0200 	sh	t6,512(s0)
     1b8:	3c060000 	lui	a2,0x0
     1bc:	24c60000 	addiu	a2,a2,0
     1c0:	0c000000 	jal	0 <func_809E4320>
     1c4:	3c074220 	lui	a3,0x4220
     1c8:	2605014c 	addiu	a1,s0,332
     1cc:	3c060600 	lui	a2,0x600
     1d0:	260f022c 	addiu	t7,s0,556
     1d4:	26180292 	addiu	t8,s0,658
     1d8:	24190011 	li	t9,17
     1dc:	afb90018 	sw	t9,24(sp)
     1e0:	afb80014 	sw	t8,20(sp)
     1e4:	afaf0010 	sw	t7,16(sp)
     1e8:	24c67958 	addiu	a2,a2,31064
     1ec:	afa50034 	sw	a1,52(sp)
     1f0:	8fa4004c 	lw	a0,76(sp)
     1f4:	0c000000 	jal	0 <func_809E4320>
     1f8:	00003825 	move	a3,zero
     1fc:	26050194 	addiu	a1,s0,404
     200:	afa50030 	sw	a1,48(sp)
     204:	0c000000 	jal	0 <func_809E4320>
     208:	8fa4004c 	lw	a0,76(sp)
     20c:	3c070000 	lui	a3,0x0
     210:	8fa50030 	lw	a1,48(sp)
     214:	24e70000 	addiu	a3,a3,0
     218:	8fa4004c 	lw	a0,76(sp)
     21c:	0c000000 	jal	0 <func_809E4320>
     220:	02003025 	move	a2,s0
     224:	3c050000 	lui	a1,0x0
     228:	3c060000 	lui	a2,0x0
     22c:	24c60000 	addiu	a2,a2,0
     230:	24a50000 	addiu	a1,a1,0
     234:	0c000000 	jal	0 <func_809E4320>
     238:	26040098 	addiu	a0,s0,152
     23c:	3c030000 	lui	v1,0x0
     240:	24630000 	addiu	v1,v1,0
     244:	0c000000 	jal	0 <func_809E4320>
     248:	8c640000 	lw	a0,0(v1)
     24c:	44822000 	mtc1	v0,$f4
     250:	3c030000 	lui	v1,0x0
     254:	24630000 	addiu	v1,v1,0
     258:	468021a0 	cvt.s.w	$f6,$f4
     25c:	90680008 	lbu	t0,8(v1)
     260:	c468000c 	lwc1	$f8,12(v1)
     264:	8c650000 	lw	a1,0(v1)
     268:	8fa40034 	lw	a0,52(sp)
     26c:	3c063f80 	lui	a2,0x3f80
     270:	e7a60010 	swc1	$f6,16(sp)
     274:	24070000 	li	a3,0
     278:	afa80014 	sw	t0,20(sp)
     27c:	0c000000 	jal	0 <func_809E4320>
     280:	e7a80018 	swc1	$f8,24(sp)
     284:	44800000 	mtc1	zero,$f0
     288:	240a0004 	li	t2,4
     28c:	afaa0014 	sw	t2,20(sp)
     290:	44060000 	mfc1	a2,$f0
     294:	44070000 	mfc1	a3,$f0
     298:	8fa4004c 	lw	a0,76(sp)
     29c:	02002825 	move	a1,s0
     2a0:	0c000000 	jal	0 <func_809E4320>
     2a4:	e7a00010 	swc1	$f0,16(sp)
     2a8:	3c014040 	lui	at,0x4040
     2ac:	44818000 	mtc1	at,$f16
     2b0:	96020200 	lhu	v0,512(s0)
     2b4:	3c014496 	lui	at,0x4496
     2b8:	44805000 	mtc1	zero,$f10
     2bc:	44819000 	mtc1	at,$f18
     2c0:	240b0006 	li	t3,6
     2c4:	240cffff 	li	t4,-1
     2c8:	30490040 	andi	t1,v0,0x40
     2cc:	a20b001f 	sb	t3,31(s0)
     2d0:	ae0c01ec 	sw	t4,492(s0)
     2d4:	e61001e8 	swc1	$f16,488(s0)
     2d8:	e60a006c 	swc1	$f10,108(s0)
     2dc:	11200005 	beqz	t1,2f4 <EnDaikuKakariko_Init+0x244>
     2e0:	e61200f4 	swc1	$f18,244(s0)
     2e4:	3c01bf80 	lui	at,0xbf80
     2e8:	44812000 	mtc1	at,$f4
     2ec:	96020200 	lhu	v0,512(s0)
     2f0:	e604006c 	swc1	$f4,108(s0)
     2f4:	304d0010 	andi	t5,v0,0x10
     2f8:	11a00009 	beqz	t5,320 <EnDaikuKakariko_Init+0x270>
     2fc:	304f0008 	andi	t7,v0,0x8
     300:	02002025 	move	a0,s0
     304:	24050003 	li	a1,3
     308:	0c000000 	jal	0 <func_809E4320>
     30c:	260601ec 	addiu	a2,s0,492
     310:	3c0e0000 	lui	t6,0x0
     314:	25ce0000 	addiu	t6,t6,0
     318:	10000035 	b	3f0 <EnDaikuKakariko_Init+0x340>
     31c:	ae0e0190 	sw	t6,400(s0)
     320:	11e0001f 	beqz	t7,3a0 <EnDaikuKakariko_Init+0x2f0>
     324:	02002025 	move	a0,s0
     328:	8602001c 	lh	v0,28(s0)
     32c:	24010001 	li	at,1
     330:	02002025 	move	a0,s0
     334:	30420003 	andi	v0,v0,0x3
     338:	10410004 	beq	v0,at,34c <EnDaikuKakariko_Init+0x29c>
     33c:	24050005 	li	a1,5
     340:	24010003 	li	at,3
     344:	14410007 	bne	v0,at,364 <EnDaikuKakariko_Init+0x2b4>
     348:	260601ec 	addiu	a2,s0,492
     34c:	0c000000 	jal	0 <func_809E4320>
     350:	260601ec 	addiu	a2,s0,492
     354:	96180200 	lhu	t8,512(s0)
     358:	37190800 	ori	t9,t8,0x800
     35c:	10000004 	b	370 <EnDaikuKakariko_Init+0x2c0>
     360:	a6190200 	sh	t9,512(s0)
     364:	02002025 	move	a0,s0
     368:	0c000000 	jal	0 <func_809E4320>
     36c:	24050001 	li	a1,1
     370:	0c000000 	jal	0 <func_809E4320>
     374:	00000000 	nop
     378:	c606015c 	lwc1	$f6,348(s0)
     37c:	46060202 	mul.s	$f8,$f0,$f6
     380:	4600428d 	trunc.w.s	$f10,$f8
     384:	440a5000 	mfc1	t2,$f10
     388:	00000000 	nop
     38c:	448a8000 	mtc1	t2,$f16
     390:	00000000 	nop
     394:	468084a0 	cvt.s.w	$f18,$f16
     398:	1000000f 	b	3d8 <EnDaikuKakariko_Init+0x328>
     39c:	e6120164 	swc1	$f18,356(s0)
     3a0:	00002825 	move	a1,zero
     3a4:	0c000000 	jal	0 <func_809E4320>
     3a8:	260601ec 	addiu	a2,s0,492
     3ac:	0c000000 	jal	0 <func_809E4320>
     3b0:	00000000 	nop
     3b4:	c604015c 	lwc1	$f4,348(s0)
     3b8:	46040182 	mul.s	$f6,$f0,$f4
     3bc:	4600320d 	trunc.w.s	$f8,$f6
     3c0:	440c4000 	mfc1	t4,$f8
     3c4:	00000000 	nop
     3c8:	448c5000 	mtc1	t4,$f10
     3cc:	00000000 	nop
     3d0:	46805420 	cvt.s.w	$f16,$f10
     3d4:	e6100164 	swc1	$f16,356(s0)
     3d8:	96090200 	lhu	t1,512(s0)
     3dc:	3c0e0000 	lui	t6,0x0
     3e0:	25ce0000 	addiu	t6,t6,0
     3e4:	352d0100 	ori	t5,t1,0x100
     3e8:	a60d0200 	sh	t5,512(s0)
     3ec:	ae0e0190 	sw	t6,400(s0)
     3f0:	8fbf002c 	lw	ra,44(sp)
     3f4:	8fb00028 	lw	s0,40(sp)
     3f8:	27bd0048 	addiu	sp,sp,72
     3fc:	03e00008 	jr	ra
     400:	00000000 	nop

00000404 <EnDaikuKakariko_Destroy>:
     404:	27bdffe8 	addiu	sp,sp,-24
     408:	00803025 	move	a2,a0
     40c:	afbf0014 	sw	ra,20(sp)
     410:	00a02025 	move	a0,a1
     414:	0c000000 	jal	0 <func_809E4320>
     418:	24c50194 	addiu	a1,a2,404
     41c:	8fbf0014 	lw	ra,20(sp)
     420:	27bd0018 	addiu	sp,sp,24
     424:	03e00008 	jr	ra
     428:	00000000 	nop

0000042c <func_809E474C>:
     42c:	27bdffe0 	addiu	sp,sp,-32
     430:	afbf0014 	sw	ra,20(sp)
     434:	afa40020 	sw	a0,32(sp)
     438:	240e0002 	li	t6,2
     43c:	afa50024 	sw	a1,36(sp)
     440:	afae001c 	sw	t6,28(sp)
     444:	0c000000 	jal	0 <func_809E4320>
     448:	24a420d8 	addiu	a0,a1,8408
     44c:	24010006 	li	at,6
     450:	5441001a 	bnel	v0,at,4bc <func_809E474C+0x90>
     454:	8fbf0014 	lw	ra,20(sp)
     458:	0c000000 	jal	0 <func_809E4320>
     45c:	8fa40024 	lw	a0,36(sp)
     460:	10400015 	beqz	v0,4b8 <func_809E474C+0x8c>
     464:	8faf0020 	lw	t7,32(sp)
     468:	95e2010e 	lhu	v0,270(t7)
     46c:	24016061 	li	at,24673
     470:	10410005 	beq	v0,at,488 <func_809E474C+0x5c>
     474:	24016064 	li	at,24676
     478:	10410009 	beq	v0,at,4a0 <func_809E474C+0x74>
     47c:	00000000 	nop
     480:	1000000d 	b	4b8 <func_809E474C+0x8c>
     484:	afa0001c 	sw	zero,28(sp)
     488:	3c020000 	lui	v0,0x0
     48c:	24420000 	addiu	v0,v0,0
     490:	94580f26 	lhu	t8,3878(v0)
     494:	37190040 	ori	t9,t8,0x40
     498:	10000006 	b	4b4 <func_809E474C+0x88>
     49c:	a4590f26 	sh	t9,3878(v0)
     4a0:	3c020000 	lui	v0,0x0
     4a4:	24420000 	addiu	v0,v0,0
     4a8:	94480f26 	lhu	t0,3878(v0)
     4ac:	35090100 	ori	t1,t0,0x100
     4b0:	a4490f26 	sh	t1,3878(v0)
     4b4:	afa0001c 	sw	zero,28(sp)
     4b8:	8fbf0014 	lw	ra,20(sp)
     4bc:	8fa2001c 	lw	v0,28(sp)
     4c0:	27bd0020 	addiu	sp,sp,32
     4c4:	03e00008 	jr	ra
     4c8:	00000000 	nop

000004cc <func_809E47EC>:
     4cc:	27bdffd8 	addiu	sp,sp,-40
     4d0:	afbf001c 	sw	ra,28(sp)
     4d4:	afb00018 	sw	s0,24(sp)
     4d8:	8c8e01e0 	lw	t6,480(a0)
     4dc:	24010002 	li	at,2
     4e0:	00808025 	move	s0,a0
     4e4:	55c10006 	bnel	t6,at,500 <func_809E47EC+0x34>
     4e8:	02002025 	move	a0,s0
     4ec:	0c000000 	jal	0 <func_809E4320>
     4f0:	00000000 	nop
     4f4:	1000005f 	b	674 <func_809E47EC+0x1a8>
     4f8:	ae0201e0 	sw	v0,480(s0)
     4fc:	02002025 	move	a0,s0
     500:	0c000000 	jal	0 <func_809E4320>
     504:	afa5002c 	sw	a1,44(sp)
     508:	10400004 	beqz	v0,51c <func_809E47EC+0x50>
     50c:	8fa4002c 	lw	a0,44(sp)
     510:	240f0002 	li	t7,2
     514:	10000057 	b	674 <func_809E47EC+0x1a8>
     518:	ae0f01e0 	sw	t7,480(s0)
     51c:	02002825 	move	a1,s0
     520:	27a60026 	addiu	a2,sp,38
     524:	0c000000 	jal	0 <func_809E4320>
     528:	27a70024 	addiu	a3,sp,36
     52c:	87a20026 	lh	v0,38(sp)
     530:	04400050 	bltz	v0,674 <func_809E47EC+0x1a8>
     534:	28410141 	slti	at,v0,321
     538:	1020004e 	beqz	at,674 <func_809E47EC+0x1a8>
     53c:	87a20024 	lh	v0,36(sp)
     540:	0440004c 	bltz	v0,674 <func_809E47EC+0x1a8>
     544:	284100f1 	slti	at,v0,241
     548:	5020004b 	beqzl	at,678 <func_809E47EC+0x1ac>
     54c:	8fbf001c 	lw	ra,28(sp)
     550:	8e1801e0 	lw	t8,480(s0)
     554:	02002025 	move	a0,s0
     558:	8fa5002c 	lw	a1,44(sp)
     55c:	57000046 	bnezl	t8,678 <func_809E47EC+0x1ac>
     560:	8fbf001c 	lw	ra,28(sp)
     564:	0c000000 	jal	0 <func_809E4320>
     568:	3c0642c8 	lui	a2,0x42c8
     56c:	24010001 	li	at,1
     570:	54410041 	bnel	v0,at,678 <func_809E47EC+0x1ac>
     574:	8fbf001c 	lw	ra,28(sp)
     578:	8619001c 	lh	t9,28(s0)
     57c:	3c050000 	lui	a1,0x0
     580:	8fa4002c 	lw	a0,44(sp)
     584:	33280003 	andi	t0,t9,0x3
     588:	00084880 	sll	t1,t0,0x2
     58c:	00a92821 	addu	a1,a1,t1
     590:	0c000000 	jal	0 <func_809E4320>
     594:	8ca50000 	lw	a1,0(a1)
     598:	304affff 	andi	t2,v0,0xffff
     59c:	15400035 	bnez	t2,674 <func_809E47EC+0x1a8>
     5a0:	a602010e 	sh	v0,270(s0)
     5a4:	8602001c 	lh	v0,28(s0)
     5a8:	24010001 	li	at,1
     5ac:	30420003 	andi	v0,v0,0x3
     5b0:	5040000a 	beqzl	v0,5dc <func_809E47EC+0x110>
     5b4:	960b0200 	lhu	t3,512(s0)
     5b8:	10410011 	beq	v0,at,600 <func_809E47EC+0x134>
     5bc:	24010002 	li	at,2
     5c0:	10410019 	beq	v0,at,628 <func_809E47EC+0x15c>
     5c4:	24010003 	li	at,3
     5c8:	50410022 	beql	v0,at,654 <func_809E47EC+0x188>
     5cc:	960d0200 	lhu	t5,512(s0)
     5d0:	10000029 	b	678 <func_809E47EC+0x1ac>
     5d4:	8fbf001c 	lw	ra,28(sp)
     5d8:	960b0200 	lhu	t3,512(s0)
     5dc:	240d5076 	li	t5,20598
     5e0:	240e5075 	li	t6,20597
     5e4:	316c0008 	andi	t4,t3,0x8
     5e8:	11800003 	beqz	t4,5f8 <func_809E47EC+0x12c>
     5ec:	00000000 	nop
     5f0:	10000020 	b	674 <func_809E47EC+0x1a8>
     5f4:	a60d010e 	sh	t5,270(s0)
     5f8:	1000001e 	b	674 <func_809E47EC+0x1a8>
     5fc:	a60e010e 	sh	t6,270(s0)
     600:	960f0200 	lhu	t7,512(s0)
     604:	2419502a 	li	t9,20522
     608:	24085074 	li	t0,20596
     60c:	31f80001 	andi	t8,t7,0x1
     610:	13000003 	beqz	t8,620 <func_809E47EC+0x154>
     614:	00000000 	nop
     618:	10000016 	b	674 <func_809E47EC+0x1a8>
     61c:	a619010e 	sh	t9,270(s0)
     620:	10000014 	b	674 <func_809E47EC+0x1a8>
     624:	a608010e 	sh	t0,270(s0)
     628:	96090200 	lhu	t1,512(s0)
     62c:	240b506a 	li	t3,20586
     630:	240c506b 	li	t4,20587
     634:	312a0001 	andi	t2,t1,0x1
     638:	11400003 	beqz	t2,648 <func_809E47EC+0x17c>
     63c:	00000000 	nop
     640:	1000000c 	b	674 <func_809E47EC+0x1a8>
     644:	a60b010e 	sh	t3,270(s0)
     648:	1000000a 	b	674 <func_809E47EC+0x1a8>
     64c:	a60c010e 	sh	t4,270(s0)
     650:	960d0200 	lhu	t5,512(s0)
     654:	240f5077 	li	t7,20599
     658:	24185078 	li	t8,20600
     65c:	31ae0001 	andi	t6,t5,0x1
     660:	51c00004 	beqzl	t6,674 <func_809E47EC+0x1a8>
     664:	a618010e 	sh	t8,270(s0)
     668:	10000002 	b	674 <func_809E47EC+0x1a8>
     66c:	a60f010e 	sh	t7,270(s0)
     670:	a618010e 	sh	t8,270(s0)
     674:	8fbf001c 	lw	ra,28(sp)
     678:	8fb00018 	lw	s0,24(sp)
     67c:	27bd0028 	addiu	sp,sp,40
     680:	03e00008 	jr	ra
     684:	00000000 	nop

00000688 <func_809E49A8>:
     688:	27bdffe0 	addiu	sp,sp,-32
     68c:	afb00018 	sw	s0,24(sp)
     690:	00808025 	move	s0,a0
     694:	afbf001c 	sw	ra,28(sp)
     698:	afa50024 	sw	a1,36(sp)
     69c:	0c000000 	jal	0 <func_809E4320>
     6a0:	2484014c 	addiu	a0,a0,332
     6a4:	10400004 	beqz	v0,6b8 <func_809E49A8+0x30>
     6a8:	02002025 	move	a0,s0
     6ac:	24050003 	li	a1,3
     6b0:	0c000000 	jal	0 <func_809E4320>
     6b4:	260601ec 	addiu	a2,s0,492
     6b8:	02002025 	move	a0,s0
     6bc:	0c000000 	jal	0 <func_809E4320>
     6c0:	8fa50024 	lw	a1,36(sp)
     6c4:	8e0e01e0 	lw	t6,480(s0)
     6c8:	55c00020 	bnezl	t6,74c <func_809E49A8+0xc4>
     6cc:	8fbf001c 	lw	ra,28(sp)
     6d0:	96020200 	lhu	v0,512(s0)
     6d4:	02002025 	move	a0,s0
     6d8:	24050003 	li	a1,3
     6dc:	304f0010 	andi	t7,v0,0x10
     6e0:	11e0000a 	beqz	t7,70c <func_809E49A8+0x84>
     6e4:	30490008 	andi	t1,v0,0x8
     6e8:	0c000000 	jal	0 <func_809E4320>
     6ec:	260601ec 	addiu	a2,s0,492
     6f0:	96180200 	lhu	t8,512(s0)
     6f4:	3c080000 	lui	t0,0x0
     6f8:	25080000 	addiu	t0,t0,0
     6fc:	3319fcff 	andi	t9,t8,0xfcff
     700:	a6190200 	sh	t9,512(s0)
     704:	10000010 	b	748 <func_809E49A8+0xc0>
     708:	ae080190 	sw	t0,400(s0)
     70c:	15200005 	bnez	t1,724 <func_809E49A8+0x9c>
     710:	02002025 	move	a0,s0
     714:	00002825 	move	a1,zero
     718:	0c000000 	jal	0 <func_809E4320>
     71c:	260601ec 	addiu	a2,s0,492
     720:	96020200 	lhu	v0,512(s0)
     724:	304a0800 	andi	t2,v0,0x800
     728:	15400005 	bnez	t2,740 <func_809E49A8+0xb8>
     72c:	3c0e0000 	lui	t6,0x0
     730:	304cfdff 	andi	t4,v0,0xfdff
     734:	a60c0200 	sh	t4,512(s0)
     738:	358d0100 	ori	t5,t4,0x100
     73c:	a60d0200 	sh	t5,512(s0)
     740:	25ce0000 	addiu	t6,t6,0
     744:	ae0e0190 	sw	t6,400(s0)
     748:	8fbf001c 	lw	ra,28(sp)
     74c:	8fb00018 	lw	s0,24(sp)
     750:	27bd0020 	addiu	sp,sp,32
     754:	03e00008 	jr	ra
     758:	00000000 	nop

0000075c <func_809E4A7C>:
     75c:	27bdffe0 	addiu	sp,sp,-32
     760:	afbf001c 	sw	ra,28(sp)
     764:	afb00018 	sw	s0,24(sp)
     768:	0c000000 	jal	0 <func_809E4320>
     76c:	00808025 	move	s0,a0
     770:	0c000000 	jal	0 <func_809E4320>
     774:	2604014c 	addiu	a0,s0,332
     778:	10400004 	beqz	v0,78c <func_809E4A7C+0x30>
     77c:	02002025 	move	a0,s0
     780:	00002825 	move	a1,zero
     784:	0c000000 	jal	0 <func_809E4320>
     788:	260601ec 	addiu	a2,s0,492
     78c:	8e0e01e0 	lw	t6,480(s0)
     790:	51c00014 	beqzl	t6,7e4 <func_809E4A7C+0x88>
     794:	8fbf001c 	lw	ra,28(sp)
     798:	96020200 	lhu	v0,512(s0)
     79c:	02002025 	move	a0,s0
     7a0:	24050004 	li	a1,4
     7a4:	304f0008 	andi	t7,v0,0x8
     7a8:	55e00005 	bnezl	t7,7c0 <func_809E4A7C+0x64>
     7ac:	30580800 	andi	t8,v0,0x800
     7b0:	0c000000 	jal	0 <func_809E4320>
     7b4:	260601ec 	addiu	a2,s0,492
     7b8:	96020200 	lhu	v0,512(s0)
     7bc:	30580800 	andi	t8,v0,0x800
     7c0:	17000005 	bnez	t8,7d8 <func_809E4A7C+0x7c>
     7c4:	3c0a0000 	lui	t2,0x0
     7c8:	34480200 	ori	t0,v0,0x200
     7cc:	a6080200 	sh	t0,512(s0)
     7d0:	3109feff 	andi	t1,t0,0xfeff
     7d4:	a6090200 	sh	t1,512(s0)
     7d8:	254a0000 	addiu	t2,t2,0
     7dc:	ae0a0190 	sw	t2,400(s0)
     7e0:	8fbf001c 	lw	ra,28(sp)
     7e4:	8fb00018 	lw	s0,24(sp)
     7e8:	27bd0020 	addiu	sp,sp,32
     7ec:	03e00008 	jr	ra
     7f0:	00000000 	nop

000007f4 <func_809E4B14>:
     7f4:	27bdffe0 	addiu	sp,sp,-32
     7f8:	afb00018 	sw	s0,24(sp)
     7fc:	00808025 	move	s0,a0
     800:	afbf001c 	sw	ra,28(sp)
     804:	afa50024 	sw	a1,36(sp)
     808:	0c000000 	jal	0 <func_809E4320>
     80c:	2484014c 	addiu	a0,a0,332
     810:	50400010 	beqzl	v0,854 <func_809E4B14+0x60>
     814:	02002025 	move	a0,s0
     818:	8e0e02f8 	lw	t6,760(s0)
     81c:	02002025 	move	a0,s0
     820:	24050003 	li	a1,3
     824:	25cfffff 	addiu	t7,t6,-1
     828:	1de00007 	bgtz	t7,848 <func_809E4B14+0x54>
     82c:	ae0f02f8 	sw	t7,760(s0)
     830:	0c000000 	jal	0 <func_809E4320>
     834:	260601ec 	addiu	a2,s0,492
     838:	3c190000 	lui	t9,0x0
     83c:	27390000 	addiu	t9,t9,0
     840:	10000003 	b	850 <func_809E4B14+0x5c>
     844:	ae190190 	sw	t9,400(s0)
     848:	c6040158 	lwc1	$f4,344(s0)
     84c:	e6040164 	swc1	$f4,356(s0)
     850:	02002025 	move	a0,s0
     854:	0c000000 	jal	0 <func_809E4320>
     858:	8fa50024 	lw	a1,36(sp)
     85c:	8e0801e0 	lw	t0,480(s0)
     860:	02002025 	move	a0,s0
     864:	5100000b 	beqzl	t0,894 <func_809E4B14+0xa0>
     868:	8fbf001c 	lw	ra,28(sp)
     86c:	96090200 	lhu	t1,512(s0)
     870:	24050004 	li	a1,4
     874:	260601ec 	addiu	a2,s0,492
     878:	352a0200 	ori	t2,t1,0x200
     87c:	0c000000 	jal	0 <func_809E4320>
     880:	a60a0200 	sh	t2,512(s0)
     884:	3c0b0000 	lui	t3,0x0
     888:	256b0000 	addiu	t3,t3,0
     88c:	ae0b0190 	sw	t3,400(s0)
     890:	8fbf001c 	lw	ra,28(sp)
     894:	8fb00018 	lw	s0,24(sp)
     898:	27bd0020 	addiu	sp,sp,32
     89c:	03e00008 	jr	ra
     8a0:	00000000 	nop

000008a4 <func_809E4BC4>:
     8a4:	27bdff98 	addiu	sp,sp,-104
     8a8:	3c010001 	lui	at,0x1
     8ac:	afb30038 	sw	s3,56(sp)
     8b0:	afb0002c 	sw	s0,44(sp)
     8b4:	00a13021 	addu	a2,a1,at
     8b8:	00808025 	move	s0,a0
     8bc:	afbf003c 	sw	ra,60(sp)
     8c0:	afb20034 	sw	s2,52(sp)
     8c4:	afb10030 	sw	s1,48(sp)
     8c8:	f7b60020 	sdc1	$f22,32(sp)
     8cc:	f7b40018 	sdc1	$f20,24(sp)
     8d0:	afa5006c 	sw	a1,108(sp)
     8d4:	afa60040 	sw	a2,64(sp)
     8d8:	24130001 	li	s3,1
     8dc:	8fa60040 	lw	a2,64(sp)
     8e0:	860f001c 	lh	t7,28(s0)
     8e4:	3c0c0000 	lui	t4,0x0
     8e8:	8cce1e08 	lw	t6,7688(a2)
     8ec:	000fc203 	sra	t8,t7,0x8
     8f0:	331900ff 	andi	t9,t8,0xff
     8f4:	001940c0 	sll	t0,t9,0x3
     8f8:	01c88821 	addu	s1,t6,t0
     8fc:	8e230004 	lw	v1,4(s1)
     900:	8e1801e4 	lw	t8,484(s0)
     904:	3c0100ff 	lui	at,0xff
     908:	00034900 	sll	t1,v1,0x4
     90c:	00095702 	srl	t2,t1,0x1c
     910:	000a5880 	sll	t3,t2,0x2
     914:	018b6021 	addu	t4,t4,t3
     918:	8d8c0000 	lw	t4,0(t4)
     91c:	3421ffff 	ori	at,at,0xffff
     920:	0018c880 	sll	t9,t8,0x2
     924:	00616824 	and	t5,v1,at
     928:	0338c823 	subu	t9,t9,t8
     92c:	0019c840 	sll	t9,t9,0x1
     930:	018d7821 	addu	t7,t4,t5
     934:	01f91021 	addu	v0,t7,t9
     938:	3c018000 	lui	at,0x8000
     93c:	00411021 	addu	v0,v0,at
     940:	844e0000 	lh	t6,0(v0)
     944:	84480004 	lh	t0,4(v0)
     948:	c6080024 	lwc1	$f8,36(s0)
     94c:	448e2000 	mtc1	t6,$f4
     950:	44885000 	mtc1	t0,$f10
     954:	c612002c 	lwc1	$f18,44(s0)
     958:	468021a0 	cvt.s.w	$f6,$f4
     95c:	00009025 	move	s2,zero
     960:	46805420 	cvt.s.w	$f16,$f10
     964:	46083501 	sub.s	$f20,$f6,$f8
     968:	46128581 	sub.s	$f22,$f16,$f18
     96c:	4600a306 	mov.s	$f12,$f20
     970:	0c000000 	jal	0 <func_809E4320>
     974:	4600b386 	mov.s	$f14,$f22
     978:	3c010000 	lui	at,0x0
     97c:	c4240000 	lwc1	$f4,0(at)
     980:	3c014120 	lui	at,0x4120
     984:	44819000 	mtc1	at,$f18
     988:	46040182 	mul.s	$f6,$f0,$f4
     98c:	00000000 	nop
     990:	4614a282 	mul.s	$f10,$f20,$f20
     994:	00000000 	nop
     998:	4616b402 	mul.s	$f16,$f22,$f22
     99c:	4600320d 	trunc.w.s	$f8,$f6
     9a0:	46105000 	add.s	$f0,$f10,$f16
     9a4:	44054000 	mfc1	a1,$f8
     9a8:	46000084 	sqrt.s	$f2,$f0
     9ac:	00052c00 	sll	a1,a1,0x10
     9b0:	00052c03 	sra	a1,a1,0x10
     9b4:	4612103e 	c.le.s	$f2,$f18
     9b8:	00000000 	nop
     9bc:	45000039 	bc1f	aa4 <func_809E4BC4+0x200>
     9c0:	00000000 	nop
     9c4:	8e0a01f8 	lw	t2,504(s0)
     9c8:	55400022 	bnezl	t2,a54 <func_809E4BC4+0x1b0>
     9cc:	8e0901e4 	lw	t1,484(s0)
     9d0:	8e0b01e4 	lw	t3,484(s0)
     9d4:	256c0001 	addiu	t4,t3,1
     9d8:	ae0c01e4 	sw	t4,484(s0)
     9dc:	92230000 	lbu	v1,0(s1)
     9e0:	0183082a 	slt	at,t4,v1
     9e4:	54200018 	bnezl	at,a48 <func_809E4BC4+0x1a4>
     9e8:	02609025 	move	s2,s3
     9ec:	96020200 	lhu	v0,512(s0)
     9f0:	246ffffe 	addiu	t7,v1,-2
     9f4:	30580020 	andi	t8,v0,0x20
     9f8:	1300000f 	beqz	t8,a38 <func_809E4BC4+0x194>
     9fc:	30590400 	andi	t9,v0,0x400
     a00:	ae0f01e4 	sw	t7,484(s0)
     a04:	ae1301f8 	sw	s3,504(s0)
     a08:	13200026 	beqz	t9,aa4 <func_809E4BC4+0x200>
     a0c:	ae0001fc 	sw	zero,508(s0)
     a10:	240e0002 	li	t6,2
     a14:	ae0e02f8 	sw	t6,760(s0)
     a18:	02002025 	move	a0,s0
     a1c:	00002825 	move	a1,zero
     a20:	0c000000 	jal	0 <func_809E4320>
     a24:	260601ec 	addiu	a2,s0,492
     a28:	3c080000 	lui	t0,0x0
     a2c:	25080000 	addiu	t0,t0,0
     a30:	10000072 	b	bfc <func_809E4BC4+0x358>
     a34:	ae080190 	sw	t0,400(s0)
     a38:	ae0001e4 	sw	zero,484(s0)
     a3c:	10000019 	b	aa4 <func_809E4BC4+0x200>
     a40:	02609025 	move	s2,s3
     a44:	02609025 	move	s2,s3
     a48:	10000016 	b	aa4 <func_809E4BC4+0x200>
     a4c:	ae1301fc 	sw	s3,508(s0)
     a50:	8e0901e4 	lw	t1,484(s0)
     a54:	252affff 	addiu	t2,t1,-1
     a58:	05410011 	bgez	t2,aa0 <func_809E4BC4+0x1fc>
     a5c:	ae0a01e4 	sw	t2,484(s0)
     a60:	960c0200 	lhu	t4,512(s0)
     a64:	ae1301e4 	sw	s3,484(s0)
     a68:	ae0001f8 	sw	zero,504(s0)
     a6c:	318d0400 	andi	t5,t4,0x400
     a70:	11a0000c 	beqz	t5,aa4 <func_809E4BC4+0x200>
     a74:	ae0001fc 	sw	zero,508(s0)
     a78:	24180002 	li	t8,2
     a7c:	ae1802f8 	sw	t8,760(s0)
     a80:	02002025 	move	a0,s0
     a84:	00002825 	move	a1,zero
     a88:	0c000000 	jal	0 <func_809E4320>
     a8c:	260601ec 	addiu	a2,s0,492
     a90:	3c0f0000 	lui	t7,0x0
     a94:	25ef0000 	addiu	t7,t7,0
     a98:	10000058 	b	bfc <func_809E4BC4+0x358>
     a9c:	ae0f0190 	sw	t7,400(s0)
     aa0:	02609025 	move	s2,s3
     aa4:	5640ff8e 	bnezl	s2,8e0 <func_809E4BC4+0x3c>
     aa8:	8fa60040 	lw	a2,64(sp)
     aac:	00133400 	sll	a2,s3,0x10
     ab0:	00063403 	sra	a2,a2,0x10
     ab4:	260400b6 	addiu	a0,s0,182
     ab8:	24071388 	li	a3,5000
     abc:	afa00010 	sw	zero,16(sp)
     ac0:	0c000000 	jal	0 <func_809E4320>
     ac4:	e7a2004c 	swc1	$f2,76(sp)
     ac8:	8e0301fc 	lw	v1,508(s0)
     acc:	861900b6 	lh	t9,182(s0)
     ad0:	c7a2004c 	lwc1	$f2,76(sp)
     ad4:	14600008 	bnez	v1,af8 <func_809E4BC4+0x254>
     ad8:	a6190032 	sh	t9,50(s0)
     adc:	14400003 	bnez	v0,aec <func_809E4BC4+0x248>
     ae0:	02601825 	move	v1,s3
     ae4:	10000004 	b	af8 <func_809E4BC4+0x254>
     ae8:	ae1301fc 	sw	s3,508(s0)
     aec:	4480a000 	mtc1	zero,$f20
     af0:	8e0301fc 	lw	v1,508(s0)
     af4:	e6140068 	swc1	$f20,104(s0)
     af8:	4480a000 	mtc1	zero,$f20
     afc:	16630007 	bne	s3,v1,b1c <func_809E4BC4+0x278>
     b00:	26040068 	addiu	a0,s0,104
     b04:	8e0501e8 	lw	a1,488(s0)
     b08:	3c063f4c 	lui	a2,0x3f4c
     b0c:	44071000 	mfc1	a3,$f2
     b10:	34c6cccd 	ori	a2,a2,0xcccd
     b14:	0c000000 	jal	0 <func_809E4320>
     b18:	e7b40010 	swc1	$f20,16(sp)
     b1c:	0c000000 	jal	0 <func_809E4320>
     b20:	02002025 	move	a0,s0
     b24:	96020200 	lhu	v0,512(s0)
     b28:	8fa4006c 	lw	a0,108(sp)
     b2c:	02002825 	move	a1,s0
     b30:	304e0040 	andi	t6,v0,0x40
     b34:	11c00009 	beqz	t6,b5c <func_809E4BC4+0x2b8>
     b38:	30490080 	andi	t1,v0,0x80
     b3c:	4406a000 	mfc1	a2,$f20
     b40:	4407a000 	mfc1	a3,$f20
     b44:	24080004 	li	t0,4
     b48:	afa80014 	sw	t0,20(sp)
     b4c:	0c000000 	jal	0 <func_809E4320>
     b50:	e7b40010 	swc1	$f20,16(sp)
     b54:	10000017 	b	bb4 <func_809E4BC4+0x310>
     b58:	00000000 	nop
     b5c:	51200008 	beqzl	t1,b80 <func_809E4BC4+0x2dc>
     b60:	960d0202 	lhu	t5,514(s0)
     b64:	960a0202 	lhu	t2,514(s0)
     b68:	304cff7f 	andi	t4,v0,0xff7f
     b6c:	a60c0200 	sh	t4,512(s0)
     b70:	354b0001 	ori	t3,t2,0x1
     b74:	1000000f 	b	bb4 <func_809E4BC4+0x310>
     b78:	a60b0202 	sh	t3,514(s0)
     b7c:	960d0202 	lhu	t5,514(s0)
     b80:	8fa4006c 	lw	a0,108(sp)
     b84:	02002825 	move	a1,s0
     b88:	31b80001 	andi	t8,t5,0x1
     b8c:	13000009 	beqz	t8,bb4 <func_809E4BC4+0x310>
     b90:	240f0004 	li	t7,4
     b94:	4406a000 	mfc1	a2,$f20
     b98:	4407a000 	mfc1	a3,$f20
     b9c:	e7b40010 	swc1	$f20,16(sp)
     ba0:	0c000000 	jal	0 <func_809E4320>
     ba4:	afaf0014 	sw	t7,20(sp)
     ba8:	96190202 	lhu	t9,514(s0)
     bac:	332efffe 	andi	t6,t9,0xfffe
     bb0:	a60e0202 	sh	t6,514(s0)
     bb4:	0c000000 	jal	0 <func_809E4320>
     bb8:	2604014c 	addiu	a0,s0,332
     bbc:	02002025 	move	a0,s0
     bc0:	0c000000 	jal	0 <func_809E4320>
     bc4:	8fa5006c 	lw	a1,108(sp)
     bc8:	8e0801e0 	lw	t0,480(s0)
     bcc:	02002025 	move	a0,s0
     bd0:	5100000b 	beqzl	t0,c00 <func_809E4BC4+0x35c>
     bd4:	8fbf003c 	lw	ra,60(sp)
     bd8:	96090200 	lhu	t1,512(s0)
     bdc:	24050004 	li	a1,4
     be0:	260601ec 	addiu	a2,s0,492
     be4:	352a0200 	ori	t2,t1,0x200
     be8:	0c000000 	jal	0 <func_809E4320>
     bec:	a60a0200 	sh	t2,512(s0)
     bf0:	3c0b0000 	lui	t3,0x0
     bf4:	256b0000 	addiu	t3,t3,0
     bf8:	ae0b0190 	sw	t3,400(s0)
     bfc:	8fbf003c 	lw	ra,60(sp)
     c00:	d7b40018 	ldc1	$f20,24(sp)
     c04:	d7b60020 	ldc1	$f22,32(sp)
     c08:	8fb0002c 	lw	s0,44(sp)
     c0c:	8fb10030 	lw	s1,48(sp)
     c10:	8fb20034 	lw	s2,52(sp)
     c14:	8fb30038 	lw	s3,56(sp)
     c18:	03e00008 	jr	ra
     c1c:	27bd0068 	addiu	sp,sp,104

00000c20 <EnDaikuKakariko_Update>:
     c20:	27bdffc0 	addiu	sp,sp,-64
     c24:	afbf0024 	sw	ra,36(sp)
     c28:	afb00020 	sw	s0,32(sp)
     c2c:	afa50044 	sw	a1,68(sp)
     c30:	8caf1c44 	lw	t7,7236(a1)
     c34:	24010003 	li	at,3
     c38:	00808025 	move	s0,a0
     c3c:	afaf0034 	sw	t7,52(sp)
     c40:	8c9801ec 	lw	t8,492(a0)
     c44:	5701000e 	bnel	t8,at,c80 <EnDaikuKakariko_Update+0x60>
     c48:	26060194 	addiu	a2,s0,404
     c4c:	c4840164 	lwc1	$f4,356(a0)
     c50:	24010006 	li	at,6
     c54:	02002025 	move	a0,s0
     c58:	4600218d 	trunc.w.s	$f6,$f4
     c5c:	44023000 	mfc1	v0,$f6
     c60:	00000000 	nop
     c64:	10410003 	beq	v0,at,c74 <EnDaikuKakariko_Update+0x54>
     c68:	2401000f 	li	at,15
     c6c:	54410004 	bnel	v0,at,c80 <EnDaikuKakariko_Update+0x60>
     c70:	26060194 	addiu	a2,s0,404
     c74:	0c000000 	jal	0 <func_809E4320>
     c78:	240538b8 	li	a1,14520
     c7c:	26060194 	addiu	a2,s0,404
     c80:	00c02825 	move	a1,a2
     c84:	afa6002c 	sw	a2,44(sp)
     c88:	0c000000 	jal	0 <func_809E4320>
     c8c:	02002025 	move	a0,s0
     c90:	96080200 	lhu	t0,512(s0)
     c94:	8fa6002c 	lw	a2,44(sp)
     c98:	240e003f 	li	t6,63
     c9c:	31090004 	andi	t1,t0,0x4
     ca0:	11200008 	beqz	t1,cc4 <EnDaikuKakariko_Update+0xa4>
     ca4:	3c010001 	lui	at,0x1
     ca8:	860a01da 	lh	t2,474(s0)
     cac:	860c01de 	lh	t4,478(s0)
     cb0:	a60e01d4 	sh	t6,468(s0)
     cb4:	254bffe5 	addiu	t3,t2,-27
     cb8:	258dffe5 	addiu	t5,t4,-27
     cbc:	a60b01da 	sh	t3,474(s0)
     cc0:	a60d01de 	sh	t5,478(s0)
     cc4:	8fa40044 	lw	a0,68(sp)
     cc8:	34211e60 	ori	at,at,0x1e60
     ccc:	0c000000 	jal	0 <func_809E4320>
     cd0:	00812821 	addu	a1,a0,at
     cd4:	8e190190 	lw	t9,400(s0)
     cd8:	02002025 	move	a0,s0
     cdc:	8fa50044 	lw	a1,68(sp)
     ce0:	0320f809 	jalr	t9
     ce4:	00000000 	nop
     ce8:	8fa30034 	lw	v1,52(sp)
     cec:	96020200 	lhu	v0,512(s0)
     cf0:	2418170c 	li	t8,5900
     cf4:	c4680038 	lwc1	$f8,56(v1)
     cf8:	304f0100 	andi	t7,v0,0x100
     cfc:	02002025 	move	a0,s0
     d00:	e608021c 	swc1	$f8,540(s0)
     d04:	c46a003c 	lwc1	$f10,60(v1)
     d08:	26050204 	addiu	a1,s0,516
     d0c:	34481000 	ori	t0,v0,0x1000
     d10:	e60a0220 	swc1	$f10,544(s0)
     d14:	c4700040 	lwc1	$f16,64(v1)
     d18:	30490200 	andi	t1,v0,0x200
     d1c:	11e00008 	beqz	t7,d40 <EnDaikuKakariko_Update+0x120>
     d20:	e6100224 	swc1	$f16,548(s0)
     d24:	a6180302 	sh	t8,770(s0)
     d28:	a6080200 	sh	t0,512(s0)
     d2c:	00003025 	move	a2,zero
     d30:	0c000000 	jal	0 <func_809E4320>
     d34:	24070002 	li	a3,2
     d38:	1000000c 	b	d6c <EnDaikuKakariko_Update+0x14c>
     d3c:	86050302 	lh	a1,770(s0)
     d40:	11200009 	beqz	t1,d68 <EnDaikuKakariko_Update+0x148>
     d44:	240a170c 	li	t2,5900
     d48:	344b1000 	ori	t3,v0,0x1000
     d4c:	a60a0302 	sh	t2,770(s0)
     d50:	a60b0200 	sh	t3,512(s0)
     d54:	02002025 	move	a0,s0
     d58:	26050204 	addiu	a1,s0,516
     d5c:	00003025 	move	a2,zero
     d60:	0c000000 	jal	0 <func_809E4320>
     d64:	24070004 	li	a3,4
     d68:	86050302 	lh	a1,770(s0)
     d6c:	afa00010 	sw	zero,16(sp)
     d70:	260402fc 	addiu	a0,s0,764
     d74:	24060001 	li	a2,1
     d78:	0c000000 	jal	0 <func_809E4320>
     d7c:	2407071c 	li	a3,1820
     d80:	8fbf0024 	lw	ra,36(sp)
     d84:	8fb00020 	lw	s0,32(sp)
     d88:	27bd0040 	addiu	sp,sp,64
     d8c:	03e00008 	jr	ra
     d90:	00000000 	nop

00000d94 <func_809E50B4>:
     d94:	27bdffd8 	addiu	sp,sp,-40
     d98:	24010008 	li	at,8
     d9c:	afbf0014 	sw	ra,20(sp)
     da0:	afa40028 	sw	a0,40(sp)
     da4:	afa60030 	sw	a2,48(sp)
     da8:	10a10006 	beq	a1,at,dc4 <func_809E50B4+0x30>
     dac:	afa70034 	sw	a3,52(sp)
     db0:	2401000f 	li	at,15
     db4:	50a10020 	beql	a1,at,e38 <func_809E50B4+0xa4>
     db8:	44807000 	mtc1	zero,$f14
     dbc:	10000066 	b	f58 <func_809E50B4+0x1c4>
     dc0:	8fbf0014 	lw	ra,20(sp)
     dc4:	8faf003c 	lw	t7,60(sp)
     dc8:	27ae001c 	addiu	t6,sp,28
     dcc:	3c010000 	lui	at,0x0
     dd0:	89f90212 	lwl	t9,530(t7)
     dd4:	99f90215 	lwr	t9,533(t7)
     dd8:	24050001 	li	a1,1
     ddc:	add90000 	sw	t9,0(t6)
     de0:	95f90216 	lhu	t9,534(t7)
     de4:	a5d90004 	sh	t9,4(t6)
     de8:	87a8001e 	lh	t0,30(sp)
     dec:	c4280000 	lwc1	$f8,0(at)
     df0:	44882000 	mtc1	t0,$f4
     df4:	00000000 	nop
     df8:	468021a0 	cvt.s.w	$f6,$f4
     dfc:	46083302 	mul.s	$f12,$f6,$f8
     e00:	0c000000 	jal	0 <func_809E4320>
     e04:	46006307 	neg.s	$f12,$f12
     e08:	87a9001c 	lh	t1,28(sp)
     e0c:	3c010000 	lui	at,0x0
     e10:	c4320000 	lwc1	$f18,0(at)
     e14:	44895000 	mtc1	t1,$f10
     e18:	24050001 	li	a1,1
     e1c:	46805420 	cvt.s.w	$f16,$f10
     e20:	46128302 	mul.s	$f12,$f16,$f18
     e24:	0c000000 	jal	0 <func_809E4320>
     e28:	46006307 	neg.s	$f12,$f12
     e2c:	1000004a 	b	f58 <func_809E50B4+0x1c4>
     e30:	8fbf0014 	lw	ra,20(sp)
     e34:	44807000 	mtc1	zero,$f14
     e38:	3c0144af 	lui	at,0x44af
     e3c:	44816000 	mtc1	at,$f12
     e40:	44067000 	mfc1	a2,$f14
     e44:	0c000000 	jal	0 <func_809E4320>
     e48:	24070001 	li	a3,1
     e4c:	8fa2003c 	lw	v0,60(sp)
     e50:	27aa001c 	addiu	t2,sp,28
     e54:	3c040000 	lui	a0,0x0
     e58:	884c020c 	lwl	t4,524(v0)
     e5c:	984c020f 	lwr	t4,527(v0)
     e60:	24840000 	addiu	a0,a0,0
     e64:	ad4c0000 	sw	t4,0(t2)
     e68:	944c0210 	lhu	t4,528(v0)
     e6c:	a54c0004 	sh	t4,4(t2)
     e70:	944d0200 	lhu	t5,512(v0)
     e74:	31ae1000 	andi	t6,t5,0x1000
     e78:	11c0001f 	beqz	t6,ef8 <func_809E50B4+0x164>
     e7c:	87ad001e 	lh	t5,30(sp)
     e80:	0c000000 	jal	0 <func_809E4320>
     e84:	844502fc 	lh	a1,764(v0)
     e88:	8fb8003c 	lw	t8,60(sp)
     e8c:	87af001e 	lh	t7,30(sp)
     e90:	3c010000 	lui	at,0x0
     e94:	871902fe 	lh	t9,766(t8)
     e98:	c4280000 	lwc1	$f8,0(at)
     e9c:	24050001 	li	a1,1
     ea0:	01f94021 	addu	t0,t7,t9
     ea4:	44882000 	mtc1	t0,$f4
     ea8:	00000000 	nop
     eac:	468021a0 	cvt.s.w	$f6,$f4
     eb0:	46083302 	mul.s	$f12,$f6,$f8
     eb4:	0c000000 	jal	0 <func_809E4320>
     eb8:	00000000 	nop
     ebc:	8faa003c 	lw	t2,60(sp)
     ec0:	87a9001c 	lh	t1,28(sp)
     ec4:	3c010000 	lui	at,0x0
     ec8:	854b02fc 	lh	t3,764(t2)
     ecc:	c4320000 	lwc1	$f18,0(at)
     ed0:	24050001 	li	a1,1
     ed4:	012b6021 	addu	t4,t1,t3
     ed8:	448c5000 	mtc1	t4,$f10
     edc:	00000000 	nop
     ee0:	46805420 	cvt.s.w	$f16,$f10
     ee4:	46128302 	mul.s	$f12,$f16,$f18
     ee8:	0c000000 	jal	0 <func_809E4320>
     eec:	00000000 	nop
     ef0:	10000013 	b	f40 <func_809E50B4+0x1ac>
     ef4:	44807000 	mtc1	zero,$f14
     ef8:	448d2000 	mtc1	t5,$f4
     efc:	3c010000 	lui	at,0x0
     f00:	c4280000 	lwc1	$f8,0(at)
     f04:	468021a0 	cvt.s.w	$f6,$f4
     f08:	24050001 	li	a1,1
     f0c:	46083302 	mul.s	$f12,$f6,$f8
     f10:	0c000000 	jal	0 <func_809E4320>
     f14:	00000000 	nop
     f18:	87ae001c 	lh	t6,28(sp)
     f1c:	3c010000 	lui	at,0x0
     f20:	c4320000 	lwc1	$f18,0(at)
     f24:	448e5000 	mtc1	t6,$f10
     f28:	24050001 	li	a1,1
     f2c:	46805420 	cvt.s.w	$f16,$f10
     f30:	46128302 	mul.s	$f12,$f16,$f18
     f34:	0c000000 	jal	0 <func_809E4320>
     f38:	00000000 	nop
     f3c:	44807000 	mtc1	zero,$f14
     f40:	3c01c4af 	lui	at,0xc4af
     f44:	44816000 	mtc1	at,$f12
     f48:	44067000 	mfc1	a2,$f14
     f4c:	0c000000 	jal	0 <func_809E4320>
     f50:	24070001 	li	a3,1
     f54:	8fbf0014 	lw	ra,20(sp)
     f58:	27bd0028 	addiu	sp,sp,40
     f5c:	00001025 	move	v0,zero
     f60:	03e00008 	jr	ra
     f64:	00000000 	nop

00000f68 <func_809E5288>:
     f68:	27bdffc8 	addiu	sp,sp,-56
     f6c:	afbf0014 	sw	ra,20(sp)
     f70:	afa40038 	sw	a0,56(sp)
     f74:	afa5003c 	sw	a1,60(sp)
     f78:	afa60040 	sw	a2,64(sp)
     f7c:	afa70044 	sw	a3,68(sp)
     f80:	8c850000 	lw	a1,0(a0)
     f84:	3c060000 	lui	a2,0x0
     f88:	24c60000 	addiu	a2,a2,0
     f8c:	27a40020 	addiu	a0,sp,32
     f90:	24070450 	li	a3,1104
     f94:	0c000000 	jal	0 <func_809E4320>
     f98:	afa50030 	sw	a1,48(sp)
     f9c:	8faf003c 	lw	t7,60(sp)
     fa0:	2401000f 	li	at,15
     fa4:	3c040000 	lui	a0,0x0
     fa8:	15e10012 	bne	t7,at,ff4 <func_809E5288+0x8c>
     fac:	8fa50048 	lw	a1,72(sp)
     fb0:	24840000 	addiu	a0,a0,0
     fb4:	0c000000 	jal	0 <func_809E4320>
     fb8:	24a50038 	addiu	a1,a1,56
     fbc:	8fa40030 	lw	a0,48(sp)
     fc0:	3c19de00 	lui	t9,0xde00
     fc4:	3c0c0000 	lui	t4,0x0
     fc8:	8c8302c0 	lw	v1,704(a0)
     fcc:	24780008 	addiu	t8,v1,8
     fd0:	ac9802c0 	sw	t8,704(a0)
     fd4:	ac790000 	sw	t9,0(v1)
     fd8:	8fa80048 	lw	t0,72(sp)
     fdc:	8509001c 	lh	t1,28(t0)
     fe0:	312a0003 	andi	t2,t1,0x3
     fe4:	000a5880 	sll	t3,t2,0x2
     fe8:	018b6021 	addu	t4,t4,t3
     fec:	8d8c0000 	lw	t4,0(t4)
     ff0:	ac6c0004 	sw	t4,4(v1)
     ff4:	8fad0038 	lw	t5,56(sp)
     ff8:	3c060000 	lui	a2,0x0
     ffc:	24c60000 	addiu	a2,a2,0
    1000:	27a40020 	addiu	a0,sp,32
    1004:	24070459 	li	a3,1113
    1008:	0c000000 	jal	0 <func_809E4320>
    100c:	8da50000 	lw	a1,0(t5)
    1010:	8fbf0014 	lw	ra,20(sp)
    1014:	27bd0038 	addiu	sp,sp,56
    1018:	03e00008 	jr	ra
    101c:	00000000 	nop

00001020 <EnDaikuKakariko_Draw>:
    1020:	27bdffa8 	addiu	sp,sp,-88
    1024:	afbf0024 	sw	ra,36(sp)
    1028:	afa40058 	sw	a0,88(sp)
    102c:	afa5005c 	sw	a1,92(sp)
    1030:	8ca50000 	lw	a1,0(a1)
    1034:	3c060000 	lui	a2,0x0
    1038:	24c60000 	addiu	a2,a2,0
    103c:	27a40040 	addiu	a0,sp,64
    1040:	24070464 	li	a3,1124
    1044:	0c000000 	jal	0 <func_809E4320>
    1048:	afa50050 	sw	a1,80(sp)
    104c:	8faf005c 	lw	t7,92(sp)
    1050:	0c000000 	jal	0 <func_809E4320>
    1054:	8de40000 	lw	a0,0(t7)
    1058:	8fa90058 	lw	t1,88(sp)
    105c:	8fa80050 	lw	t0,80(sp)
    1060:	3c19fb00 	lui	t9,0xfb00
    1064:	8522001c 	lh	v0,28(t1)
    1068:	24010001 	li	at,1
    106c:	30420003 	andi	v0,v0,0x3
    1070:	14400009 	bnez	v0,1098 <EnDaikuKakariko_Draw+0x78>
    1074:	00000000 	nop
    1078:	8d0202c0 	lw	v0,704(t0)
    107c:	3c0aaa0a 	lui	t2,0xaa0a
    1080:	354a46ff 	ori	t2,t2,0x46ff
    1084:	24580008 	addiu	t8,v0,8
    1088:	ad1802c0 	sw	t8,704(t0)
    108c:	ac4a0004 	sw	t2,4(v0)
    1090:	10000020 	b	1114 <EnDaikuKakariko_Draw+0xf4>
    1094:	ac590000 	sw	t9,0(v0)
    1098:	14410009 	bne	v0,at,10c0 <EnDaikuKakariko_Draw+0xa0>
    109c:	3c0cfb00 	lui	t4,0xfb00
    10a0:	8d0202c0 	lw	v0,704(t0)
    10a4:	3c0daac8 	lui	t5,0xaac8
    10a8:	35adffff 	ori	t5,t5,0xffff
    10ac:	244b0008 	addiu	t3,v0,8
    10b0:	ad0b02c0 	sw	t3,704(t0)
    10b4:	ac4d0004 	sw	t5,4(v0)
    10b8:	10000016 	b	1114 <EnDaikuKakariko_Draw+0xf4>
    10bc:	ac4c0000 	sw	t4,0(v0)
    10c0:	24010002 	li	at,2
    10c4:	14410009 	bne	v0,at,10ec <EnDaikuKakariko_Draw+0xcc>
    10c8:	3c0ffb00 	lui	t7,0xfb00
    10cc:	8d0202c0 	lw	v0,704(t0)
    10d0:	3c1800e6 	lui	t8,0xe6
    10d4:	371846ff 	ori	t8,t8,0x46ff
    10d8:	244e0008 	addiu	t6,v0,8
    10dc:	ad0e02c0 	sw	t6,704(t0)
    10e0:	ac580004 	sw	t8,4(v0)
    10e4:	1000000b 	b	1114 <EnDaikuKakariko_Draw+0xf4>
    10e8:	ac4f0000 	sw	t7,0(v0)
    10ec:	24010003 	li	at,3
    10f0:	14410008 	bne	v0,at,1114 <EnDaikuKakariko_Draw+0xf4>
    10f4:	3c0afb00 	lui	t2,0xfb00
    10f8:	8d0202c0 	lw	v0,704(t0)
    10fc:	3c0bc800 	lui	t3,0xc800
    1100:	356b96ff 	ori	t3,t3,0x96ff
    1104:	24590008 	addiu	t9,v0,8
    1108:	ad1902c0 	sw	t9,704(t0)
    110c:	ac4b0004 	sw	t3,4(v0)
    1110:	ac4a0000 	sw	t2,0(v0)
    1114:	8d250150 	lw	a1,336(t1)
    1118:	8d26016c 	lw	a2,364(t1)
    111c:	9127014e 	lbu	a3,334(t1)
    1120:	3c0c0000 	lui	t4,0x0
    1124:	3c0d0000 	lui	t5,0x0
    1128:	25ad0000 	addiu	t5,t5,0
    112c:	258c0000 	addiu	t4,t4,0
    1130:	afac0010 	sw	t4,16(sp)
    1134:	afad0014 	sw	t5,20(sp)
    1138:	afa90018 	sw	t1,24(sp)
    113c:	0c000000 	jal	0 <func_809E4320>
    1140:	8fa4005c 	lw	a0,92(sp)
    1144:	8fae005c 	lw	t6,92(sp)
    1148:	3c060000 	lui	a2,0x0
    114c:	24c60000 	addiu	a2,a2,0
    1150:	27a40040 	addiu	a0,sp,64
    1154:	2407047f 	li	a3,1151
    1158:	0c000000 	jal	0 <func_809E4320>
    115c:	8dc50000 	lw	a1,0(t6)
    1160:	8fbf0024 	lw	ra,36(sp)
    1164:	27bd0058 	addiu	sp,sp,88
    1168:	03e00008 	jr	ra
    116c:	00000000 	nop
