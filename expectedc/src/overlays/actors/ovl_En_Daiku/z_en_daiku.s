
build/src/overlays/actors/ovl_En_Daiku/z_en_daiku.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809E2B30>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0024 	sw	ra,36(sp)
       8:	afa40038 	sw	a0,56(sp)
       c:	afa60040 	sw	a2,64(sp)
      10:	8cc20000 	lw	v0,0(a2)
      14:	3c180000 	lui	t8,0x0
      18:	27180000 	addiu	t8,t8,0
      1c:	04400003 	bltz	v0,2c <func_809E2B30+0x2c>
      20:	00057900 	sll	t7,a1,0x4
      24:	14a20004 	bne	a1,v0,38 <func_809E2B30+0x38>
      28:	0005c900 	sll	t9,a1,0x4
      2c:	44800000 	mtc1	zero,$f0
      30:	10000005 	b	48 <func_809E2B30+0x48>
      34:	01f81821 	addu	v1,t7,t8
      38:	3c080000 	lui	t0,0x0
      3c:	25080000 	addiu	t0,t0,0
      40:	03281821 	addu	v1,t9,t0
      44:	c460000c 	lwc1	$f0,12(v1)
      48:	8c640000 	lw	a0,0(v1)
      4c:	afa3002c 	sw	v1,44(sp)
      50:	afa5003c 	sw	a1,60(sp)
      54:	0c000000 	jal	0 <func_809E2B30>
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
      8c:	0c000000 	jal	0 <func_809E2B30>
      90:	afa90014 	sw	t1,20(sp)
      94:	8faa003c 	lw	t2,60(sp)
      98:	8fab0040 	lw	t3,64(sp)
      9c:	ad6a0000 	sw	t2,0(t3)
      a0:	8fbf0024 	lw	ra,36(sp)
      a4:	27bd0038 	addiu	sp,sp,56
      a8:	03e00008 	jr	ra
      ac:	00000000 	nop

000000b0 <EnDaiku_Init>:
      b0:	27bdffb0 	addiu	sp,sp,-80
      b4:	afbf002c 	sw	ra,44(sp)
      b8:	afb00028 	sw	s0,40(sp)
      bc:	afa50054 	sw	a1,84(sp)
      c0:	8482001c 	lh	v0,28(a0)
      c4:	00808025 	move	s0,a0
      c8:	24080001 	li	t0,1
      cc:	30420003 	andi	v0,v0,0x3
      d0:	14400009 	bnez	v0,f8 <EnDaiku_Init+0x48>
      d4:	00001825 	move	v1,zero
      d8:	3c040000 	lui	a0,0x0
      dc:	24840000 	addiu	a0,a0,0
      e0:	948e0ee6 	lhu	t6,3814(a0)
      e4:	31cf0001 	andi	t7,t6,0x1
      e8:	11e00003 	beqz	t7,f8 <EnDaiku_Init+0x48>
      ec:	00000000 	nop
      f0:	1000001c 	b	164 <EnDaiku_Init+0xb4>
      f4:	24030001 	li	v1,1
      f8:	3c040000 	lui	a0,0x0
      fc:	24010001 	li	at,1
     100:	14410007 	bne	v0,at,120 <EnDaiku_Init+0x70>
     104:	24840000 	addiu	a0,a0,0
     108:	94980ee6 	lhu	t8,3814(a0)
     10c:	33190002 	andi	t9,t8,0x2
     110:	53200004 	beqzl	t9,124 <EnDaiku_Init+0x74>
     114:	24010002 	li	at,2
     118:	10000012 	b	164 <EnDaiku_Init+0xb4>
     11c:	24030001 	li	v1,1
     120:	24010002 	li	at,2
     124:	54410008 	bnel	v0,at,148 <EnDaiku_Init+0x98>
     128:	24010003 	li	at,3
     12c:	94890ee6 	lhu	t1,3814(a0)
     130:	312a0004 	andi	t2,t1,0x4
     134:	51400004 	beqzl	t2,148 <EnDaiku_Init+0x98>
     138:	24010003 	li	at,3
     13c:	10000009 	b	164 <EnDaiku_Init+0xb4>
     140:	24030001 	li	v1,1
     144:	24010003 	li	at,3
     148:	54410007 	bnel	v0,at,168 <EnDaiku_Init+0xb8>
     14c:	24010001 	li	at,1
     150:	948b0ee6 	lhu	t3,3814(a0)
     154:	316c0008 	andi	t4,t3,0x8
     158:	51800003 	beqzl	t4,168 <EnDaiku_Init+0xb8>
     15c:	24010001 	li	at,1
     160:	24030001 	li	v1,1
     164:	24010001 	li	at,1
     168:	14610008 	bne	v1,at,18c <EnDaiku_Init+0xdc>
     16c:	260400b4 	addiu	a0,s0,180
     170:	8fad0054 	lw	t5,84(sp)
     174:	2401000c 	li	at,12
     178:	85ae00a4 	lh	t6,164(t5)
     17c:	15c10003 	bne	t6,at,18c <EnDaiku_Init+0xdc>
     180:	00000000 	nop
     184:	10000008 	b	1a8 <EnDaiku_Init+0xf8>
     188:	00004025 	move	t0,zero
     18c:	14600006 	bnez	v1,1a8 <EnDaiku_Init+0xf8>
     190:	8faf0054 	lw	t7,84(sp)
     194:	85f800a4 	lh	t8,164(t7)
     198:	24010039 	li	at,57
     19c:	57010003 	bnel	t8,at,1ac <EnDaiku_Init+0xfc>
     1a0:	861900b8 	lh	t9,184(s0)
     1a4:	00004025 	move	t0,zero
     1a8:	861900b8 	lh	t9,184(s0)
     1ac:	a60000b8 	sh	zero,184(s0)
     1b0:	3c060000 	lui	a2,0x0
     1b4:	3329003f 	andi	t1,t9,0x3f
     1b8:	ae090240 	sw	t1,576(s0)
     1bc:	afa80044 	sw	t0,68(sp)
     1c0:	24c60000 	addiu	a2,a2,0
     1c4:	24050000 	li	a1,0
     1c8:	0c000000 	jal	0 <func_809E2B30>
     1cc:	3c074220 	lui	a3,0x4220
     1d0:	2605014c 	addiu	a1,s0,332
     1d4:	3c060600 	lui	a2,0x600
     1d8:	260a026c 	addiu	t2,s0,620
     1dc:	260b02d2 	addiu	t3,s0,722
     1e0:	240c0011 	li	t4,17
     1e4:	afac0018 	sw	t4,24(sp)
     1e8:	afab0014 	sw	t3,20(sp)
     1ec:	afaa0010 	sw	t2,16(sp)
     1f0:	24c67958 	addiu	a2,a2,31064
     1f4:	afa50038 	sw	a1,56(sp)
     1f8:	8fa40054 	lw	a0,84(sp)
     1fc:	0c000000 	jal	0 <func_809E2B30>
     200:	00003825 	move	a3,zero
     204:	8fa80044 	lw	t0,68(sp)
     208:	8fa40054 	lw	a0,84(sp)
     20c:	26050194 	addiu	a1,s0,404
     210:	15000005 	bnez	t0,228 <EnDaiku_Init+0x178>
     214:	00000000 	nop
     218:	0c000000 	jal	0 <func_809E2B30>
     21c:	02002025 	move	a0,s0
     220:	10000071 	b	3e8 <EnDaiku_Init+0x338>
     224:	8fbf002c 	lw	ra,44(sp)
     228:	0c000000 	jal	0 <func_809E2B30>
     22c:	afa50034 	sw	a1,52(sp)
     230:	3c070000 	lui	a3,0x0
     234:	8fa50034 	lw	a1,52(sp)
     238:	24e70000 	addiu	a3,a3,0
     23c:	8fa40054 	lw	a0,84(sp)
     240:	0c000000 	jal	0 <func_809E2B30>
     244:	02003025 	move	a2,s0
     248:	3c050000 	lui	a1,0x0
     24c:	3c060000 	lui	a2,0x0
     250:	24c60000 	addiu	a2,a2,0
     254:	24a50000 	addiu	a1,a1,0
     258:	0c000000 	jal	0 <func_809E2B30>
     25c:	26040098 	addiu	a0,s0,152
     260:	3c030000 	lui	v1,0x0
     264:	24630000 	addiu	v1,v1,0
     268:	0c000000 	jal	0 <func_809E2B30>
     26c:	8c640000 	lw	a0,0(v1)
     270:	44822000 	mtc1	v0,$f4
     274:	3c030000 	lui	v1,0x0
     278:	24630000 	addiu	v1,v1,0
     27c:	468021a0 	cvt.s.w	$f6,$f4
     280:	906d0008 	lbu	t5,8(v1)
     284:	c468000c 	lwc1	$f8,12(v1)
     288:	8c650000 	lw	a1,0(v1)
     28c:	8fa40038 	lw	a0,56(sp)
     290:	3c063f80 	lui	a2,0x3f80
     294:	e7a60010 	swc1	$f6,16(sp)
     298:	24070000 	li	a3,0
     29c:	afad0014 	sw	t5,20(sp)
     2a0:	0c000000 	jal	0 <func_809E2B30>
     2a4:	e7a80018 	swc1	$f8,24(sp)
     2a8:	44800000 	mtc1	zero,$f0
     2ac:	240e0004 	li	t6,4
     2b0:	afae0014 	sw	t6,20(sp)
     2b4:	44060000 	mfc1	a2,$f0
     2b8:	44070000 	mfc1	a3,$f0
     2bc:	8fa40054 	lw	a0,84(sp)
     2c0:	02002825 	move	a1,s0
     2c4:	0c000000 	jal	0 <func_809E2B30>
     2c8:	e7a00010 	swc1	$f0,16(sp)
     2cc:	8a090030 	lwl	t1,48(s0)
     2d0:	9a090033 	lwr	t1,51(s0)
     2d4:	8e0b0024 	lw	t3,36(s0)
     2d8:	3c0140a0 	lui	at,0x40a0
     2dc:	aa090338 	swl	t1,824(s0)
     2e0:	ba09033b 	swr	t1,827(s0)
     2e4:	ae0b0340 	sw	t3,832(s0)
     2e8:	44815000 	mtc1	at,$f10
     2ec:	96090034 	lhu	t1,52(s0)
     2f0:	8e0b002c 	lw	t3,44(s0)
     2f4:	8e0a0028 	lw	t2,40(s0)
     2f8:	240f0006 	li	t7,6
     2fc:	2418ffff 	li	t8,-1
     300:	a20f001f 	sb	t7,31(s0)
     304:	ae1801f4 	sw	t8,500(s0)
     308:	e60a01f0 	swc1	$f10,496(s0)
     30c:	a609033c 	sh	t1,828(s0)
     310:	ae0b0348 	sw	t3,840(s0)
     314:	ae0a0344 	sw	t2,836(s0)
     318:	8fac0054 	lw	t4,84(sp)
     31c:	2401000c 	li	at,12
     320:	02002025 	move	a0,s0
     324:	858d00a4 	lh	t5,164(t4)
     328:	24050001 	li	a1,1
     32c:	55a1000b 	bnel	t5,at,35c <EnDaiku_Init+0x2ac>
     330:	8602001c 	lh	v0,28(s0)
     334:	0c000000 	jal	0 <func_809E2B30>
     338:	260601f4 	addiu	a2,s0,500
     33c:	8e0e023c 	lw	t6,572(s0)
     340:	3c180000 	lui	t8,0x0
     344:	27180000 	addiu	t8,t8,0
     348:	35cf0006 	ori	t7,t6,0x6
     34c:	ae0f023c 	sw	t7,572(s0)
     350:	10000024 	b	3e4 <EnDaiku_Init+0x334>
     354:	ae180190 	sw	t8,400(s0)
     358:	8602001c 	lh	v0,28(s0)
     35c:	24010001 	li	at,1
     360:	02002025 	move	a0,s0
     364:	30420003 	andi	v0,v0,0x3
     368:	10410004 	beq	v0,at,37c <EnDaiku_Init+0x2cc>
     36c:	24050004 	li	a1,4
     370:	24010003 	li	at,3
     374:	14410007 	bne	v0,at,394 <EnDaiku_Init+0x2e4>
     378:	260601f4 	addiu	a2,s0,500
     37c:	0c000000 	jal	0 <func_809E2B30>
     380:	260601f4 	addiu	a2,s0,500
     384:	8e19023c 	lw	t9,572(s0)
     388:	37290002 	ori	t1,t9,0x2
     38c:	10000007 	b	3ac <EnDaiku_Init+0x2fc>
     390:	ae09023c 	sw	t1,572(s0)
     394:	02002025 	move	a0,s0
     398:	0c000000 	jal	0 <func_809E2B30>
     39c:	00002825 	move	a1,zero
     3a0:	8e0a023c 	lw	t2,572(s0)
     3a4:	354b0006 	ori	t3,t2,0x6
     3a8:	ae0b023c 	sw	t3,572(s0)
     3ac:	0c000000 	jal	0 <func_809E2B30>
     3b0:	00000000 	nop
     3b4:	c610015c 	lwc1	$f16,348(s0)
     3b8:	3c0e0000 	lui	t6,0x0
     3bc:	25ce0000 	addiu	t6,t6,0
     3c0:	46100482 	mul.s	$f18,$f0,$f16
     3c4:	ae0e0190 	sw	t6,400(s0)
     3c8:	4600910d 	trunc.w.s	$f4,$f18
     3cc:	440d2000 	mfc1	t5,$f4
     3d0:	00000000 	nop
     3d4:	448d3000 	mtc1	t5,$f6
     3d8:	00000000 	nop
     3dc:	46803220 	cvt.s.w	$f8,$f6
     3e0:	e6080164 	swc1	$f8,356(s0)
     3e4:	8fbf002c 	lw	ra,44(sp)
     3e8:	8fb00028 	lw	s0,40(sp)
     3ec:	27bd0050 	addiu	sp,sp,80
     3f0:	03e00008 	jr	ra
     3f4:	00000000 	nop

000003f8 <EnDaiku_Destroy>:
     3f8:	27bdffe8 	addiu	sp,sp,-24
     3fc:	00803025 	move	a2,a0
     400:	afbf0014 	sw	ra,20(sp)
     404:	00a02025 	move	a0,a1
     408:	0c000000 	jal	0 <func_809E2B30>
     40c:	24c50194 	addiu	a1,a2,404
     410:	8fbf0014 	lw	ra,20(sp)
     414:	27bd0018 	addiu	sp,sp,24
     418:	03e00008 	jr	ra
     41c:	00000000 	nop

00000420 <func_809E2F50>:
     420:	27bdffe0 	addiu	sp,sp,-32
     424:	afbf0014 	sw	ra,20(sp)
     428:	afa40020 	sw	a0,32(sp)
     42c:	24030002 	li	v1,2
     430:	afa3001c 	sw	v1,28(sp)
     434:	24a420d8 	addiu	a0,a1,8408
     438:	0c000000 	jal	0 <func_809E2B30>
     43c:	afa50024 	sw	a1,36(sp)
     440:	24010006 	li	at,6
     444:	8fa3001c 	lw	v1,28(sp)
     448:	14410036 	bne	v0,at,524 <func_809E2F50+0x104>
     44c:	8fa60024 	lw	a2,36(sp)
     450:	84c200a4 	lh	v0,164(a2)
     454:	2401000c 	li	at,12
     458:	00c02025 	move	a0,a2
     45c:	54410016 	bnel	v0,at,4b8 <func_809E2F50+0x98>
     460:	24010039 	li	at,57
     464:	afa3001c 	sw	v1,28(sp)
     468:	0c000000 	jal	0 <func_809E2B30>
     46c:	afa60024 	sw	a2,36(sp)
     470:	8fa3001c 	lw	v1,28(sp)
     474:	8fa60024 	lw	a2,36(sp)
     478:	1040002a 	beqz	v0,524 <func_809E2F50+0x104>
     47c:	8fa70020 	lw	a3,32(sp)
     480:	94ee010e 	lhu	t6,270(a3)
     484:	24016007 	li	at,24583
     488:	3c0f0000 	lui	t7,0x0
     48c:	15c10006 	bne	t6,at,4a8 <func_809E2F50+0x88>
     490:	25ef0000 	addiu	t7,t7,0
     494:	00c02025 	move	a0,a2
     498:	0c000000 	jal	0 <func_809E2B30>
     49c:	8ce50240 	lw	a1,576(a3)
     4a0:	10000020 	b	524 <func_809E2F50+0x104>
     4a4:	00001825 	move	v1,zero
     4a8:	acef0190 	sw	t7,400(a3)
     4ac:	1000001d 	b	524 <func_809E2F50+0x104>
     4b0:	24030003 	li	v1,3
     4b4:	24010039 	li	at,57
     4b8:	1441001a 	bne	v0,at,524 <func_809E2F50+0x104>
     4bc:	00c02025 	move	a0,a2
     4c0:	0c000000 	jal	0 <func_809E2B30>
     4c4:	afa3001c 	sw	v1,28(sp)
     4c8:	8fa3001c 	lw	v1,28(sp)
     4cc:	10400015 	beqz	v0,524 <func_809E2F50+0x104>
     4d0:	8fa70020 	lw	a3,32(sp)
     4d4:	94e2010e 	lhu	v0,270(a3)
     4d8:	24016061 	li	at,24673
     4dc:	00001825 	move	v1,zero
     4e0:	10410005 	beq	v0,at,4f8 <func_809E2F50+0xd8>
     4e4:	24016064 	li	at,24676
     4e8:	10410009 	beq	v0,at,510 <func_809E2F50+0xf0>
     4ec:	00000000 	nop
     4f0:	1000000c 	b	524 <func_809E2F50+0x104>
     4f4:	00000000 	nop
     4f8:	3c020000 	lui	v0,0x0
     4fc:	24420000 	addiu	v0,v0,0
     500:	94580f26 	lhu	t8,3878(v0)
     504:	37190040 	ori	t9,t8,0x40
     508:	10000006 	b	524 <func_809E2F50+0x104>
     50c:	a4590f26 	sh	t9,3878(v0)
     510:	3c020000 	lui	v0,0x0
     514:	24420000 	addiu	v0,v0,0
     518:	94480f26 	lhu	t0,3878(v0)
     51c:	35090100 	ori	t1,t0,0x100
     520:	a4490f26 	sh	t1,3878(v0)
     524:	8fbf0014 	lw	ra,20(sp)
     528:	27bd0020 	addiu	sp,sp,32
     52c:	00601025 	move	v0,v1
     530:	03e00008 	jr	ra
     534:	00000000 	nop

00000538 <func_809E3068>:
     538:	27bdffc8 	addiu	sp,sp,-56
     53c:	afbf001c 	sw	ra,28(sp)
     540:	afb00018 	sw	s0,24(sp)
     544:	8c8e01e4 	lw	t6,484(a0)
     548:	24010002 	li	at,2
     54c:	00808025 	move	s0,a0
     550:	55c10006 	bnel	t6,at,56c <func_809E3068+0x34>
     554:	02002025 	move	a0,s0
     558:	0c000000 	jal	0 <func_809E2B30>
     55c:	00000000 	nop
     560:	100000a4 	b	7f4 <func_809E3068+0x2bc>
     564:	ae0201e4 	sw	v0,484(s0)
     568:	02002025 	move	a0,s0
     56c:	0c000000 	jal	0 <func_809E2B30>
     570:	afa5003c 	sw	a1,60(sp)
     574:	10400004 	beqz	v0,588 <func_809E3068+0x50>
     578:	8fa4003c 	lw	a0,60(sp)
     57c:	240f0002 	li	t7,2
     580:	1000009c 	b	7f4 <func_809E3068+0x2bc>
     584:	ae0f01e4 	sw	t7,484(s0)
     588:	02002825 	move	a1,s0
     58c:	27a6002e 	addiu	a2,sp,46
     590:	0c000000 	jal	0 <func_809E2B30>
     594:	27a7002c 	addiu	a3,sp,44
     598:	87a2002e 	lh	v0,46(sp)
     59c:	04400095 	bltz	v0,7f4 <func_809E3068+0x2bc>
     5a0:	28410141 	slti	at,v0,321
     5a4:	10200093 	beqz	at,7f4 <func_809E3068+0x2bc>
     5a8:	87a2002c 	lh	v0,44(sp)
     5ac:	04400091 	bltz	v0,7f4 <func_809E3068+0x2bc>
     5b0:	284100f1 	slti	at,v0,241
     5b4:	50200090 	beqzl	at,7f8 <func_809E3068+0x2c0>
     5b8:	8fbf001c 	lw	ra,28(sp)
     5bc:	8e1801e4 	lw	t8,484(s0)
     5c0:	02002025 	move	a0,s0
     5c4:	8fa5003c 	lw	a1,60(sp)
     5c8:	5700008b 	bnezl	t8,7f8 <func_809E3068+0x2c0>
     5cc:	8fbf001c 	lw	ra,28(sp)
     5d0:	0c000000 	jal	0 <func_809E2B30>
     5d4:	3c0642c8 	lui	a2,0x42c8
     5d8:	24050001 	li	a1,1
     5dc:	14450085 	bne	v0,a1,7f4 <func_809E3068+0x2bc>
     5e0:	8fb9003c 	lw	t9,60(sp)
     5e4:	872200a4 	lh	v0,164(t9)
     5e8:	2401000c 	li	at,12
     5ec:	54410030 	bnel	v0,at,6b0 <func_809E3068+0x178>
     5f0:	24010039 	li	at,57
     5f4:	8e02023c 	lw	v0,572(s0)
     5f8:	3c040000 	lui	a0,0x0
     5fc:	24840000 	addiu	a0,a0,0
     600:	30480010 	andi	t0,v0,0x10
     604:	11000025 	beqz	t0,69c <func_809E3068+0x164>
     608:	30590018 	andi	t9,v0,0x18
     60c:	94820ee6 	lhu	v0,3814(a0)
     610:	00001825 	move	v1,zero
     614:	240d605b 	li	t5,24667
     618:	30490001 	andi	t1,v0,0x1
     61c:	11200002 	beqz	t1,628 <func_809E3068+0xf0>
     620:	304a0002 	andi	t2,v0,0x2
     624:	00a01825 	move	v1,a1
     628:	11400002 	beqz	t2,634 <func_809E3068+0xfc>
     62c:	304b0004 	andi	t3,v0,0x4
     630:	24630001 	addiu	v1,v1,1
     634:	11600002 	beqz	t3,640 <func_809E3068+0x108>
     638:	304c0008 	andi	t4,v0,0x8
     63c:	24630001 	addiu	v1,v1,1
     640:	11800002 	beqz	t4,64c <func_809E3068+0x114>
     644:	00000000 	nop
     648:	24630001 	addiu	v1,v1,1
     64c:	1060000b 	beqz	v1,67c <func_809E3068+0x144>
     650:	00000000 	nop
     654:	1065000b 	beq	v1,a1,684 <func_809E3068+0x14c>
     658:	240e605c 	li	t6,24668
     65c:	24010002 	li	at,2
     660:	1061000a 	beq	v1,at,68c <func_809E3068+0x154>
     664:	240f605d 	li	t7,24669
     668:	24010003 	li	at,3
     66c:	10610009 	beq	v1,at,694 <func_809E3068+0x15c>
     670:	2418605e 	li	t8,24670
     674:	10000060 	b	7f8 <func_809E3068+0x2c0>
     678:	8fbf001c 	lw	ra,28(sp)
     67c:	1000005d 	b	7f4 <func_809E3068+0x2bc>
     680:	a60d010e 	sh	t5,270(s0)
     684:	1000005b 	b	7f4 <func_809E3068+0x2bc>
     688:	a60e010e 	sh	t6,270(s0)
     68c:	10000059 	b	7f4 <func_809E3068+0x2bc>
     690:	a60f010e 	sh	t7,270(s0)
     694:	10000057 	b	7f4 <func_809E3068+0x2bc>
     698:	a618010e 	sh	t8,270(s0)
     69c:	17200055 	bnez	t9,7f4 <func_809E3068+0x2bc>
     6a0:	24086007 	li	t0,24583
     6a4:	10000053 	b	7f4 <func_809E3068+0x2bc>
     6a8:	a608010e 	sh	t0,270(s0)
     6ac:	24010039 	li	at,57
     6b0:	54410051 	bnel	v0,at,7f8 <func_809E3068+0x2c0>
     6b4:	8fbf001c 	lw	ra,28(sp)
     6b8:	8602001c 	lh	v0,28(s0)
     6bc:	3c040000 	lui	a0,0x0
     6c0:	24840000 	addiu	a0,a0,0
     6c4:	30420003 	andi	v0,v0,0x3
     6c8:	1040000b 	beqz	v0,6f8 <func_809E3068+0x1c0>
     6cc:	3c090000 	lui	t1,0x0
     6d0:	10450014 	beq	v0,a1,724 <func_809E3068+0x1ec>
     6d4:	3c040000 	lui	a0,0x0
     6d8:	24010002 	li	at,2
     6dc:	10410025 	beq	v0,at,774 <func_809E3068+0x23c>
     6e0:	3c040000 	lui	a0,0x0
     6e4:	24010003 	li	at,3
     6e8:	10410036 	beq	v0,at,7c4 <func_809E3068+0x28c>
     6ec:	3c040000 	lui	a0,0x0
     6f0:	10000041 	b	7f8 <func_809E3068+0x2c0>
     6f4:	8fbf001c 	lw	ra,28(sp)
     6f8:	8d29000c 	lw	t1,12(t1)
     6fc:	8c8a00a4 	lw	t2,164(a0)
     700:	240c6060 	li	t4,24672
     704:	240d605f 	li	t5,24671
     708:	012a5824 	and	t3,t1,t2
     70c:	11600003 	beqz	t3,71c <func_809E3068+0x1e4>
     710:	00000000 	nop
     714:	10000037 	b	7f4 <func_809E3068+0x2bc>
     718:	a60c010e 	sh	t4,270(s0)
     71c:	10000035 	b	7f4 <func_809E3068+0x2bc>
     720:	a60d010e 	sh	t5,270(s0)
     724:	24840000 	addiu	a0,a0,0
     728:	3c0e0000 	lui	t6,0x0
     72c:	8dce000c 	lw	t6,12(t6)
     730:	8c8f00a4 	lw	t7,164(a0)
     734:	24196063 	li	t9,24675
     738:	01cfc024 	and	t8,t6,t7
     73c:	53000004 	beqzl	t8,750 <func_809E3068+0x218>
     740:	94880f26 	lhu	t0,3878(a0)
     744:	1000002b 	b	7f4 <func_809E3068+0x2bc>
     748:	a619010e 	sh	t9,270(s0)
     74c:	94880f26 	lhu	t0,3878(a0)
     750:	240a6061 	li	t2,24673
     754:	240b6062 	li	t3,24674
     758:	31090040 	andi	t1,t0,0x40
     75c:	15200003 	bnez	t1,76c <func_809E3068+0x234>
     760:	00000000 	nop
     764:	10000023 	b	7f4 <func_809E3068+0x2bc>
     768:	a60a010e 	sh	t2,270(s0)
     76c:	10000021 	b	7f4 <func_809E3068+0x2bc>
     770:	a60b010e 	sh	t3,270(s0)
     774:	24840000 	addiu	a0,a0,0
     778:	3c0c0000 	lui	t4,0x0
     77c:	8d8c000c 	lw	t4,12(t4)
     780:	8c8d00a4 	lw	t5,164(a0)
     784:	240f6066 	li	t7,24678
     788:	018d7024 	and	t6,t4,t5
     78c:	51c00004 	beqzl	t6,7a0 <func_809E3068+0x268>
     790:	94980f26 	lhu	t8,3878(a0)
     794:	10000017 	b	7f4 <func_809E3068+0x2bc>
     798:	a60f010e 	sh	t7,270(s0)
     79c:	94980f26 	lhu	t8,3878(a0)
     7a0:	24086064 	li	t0,24676
     7a4:	24096065 	li	t1,24677
     7a8:	33190100 	andi	t9,t8,0x100
     7ac:	17200003 	bnez	t9,7bc <func_809E3068+0x284>
     7b0:	00000000 	nop
     7b4:	1000000f 	b	7f4 <func_809E3068+0x2bc>
     7b8:	a608010e 	sh	t0,270(s0)
     7bc:	1000000d 	b	7f4 <func_809E3068+0x2bc>
     7c0:	a609010e 	sh	t1,270(s0)
     7c4:	24840000 	addiu	a0,a0,0
     7c8:	3c0a0000 	lui	t2,0x0
     7cc:	8d4a000c 	lw	t2,12(t2)
     7d0:	8c8b00a4 	lw	t3,164(a0)
     7d4:	240d6068 	li	t5,24680
     7d8:	240e6067 	li	t6,24679
     7dc:	014b6024 	and	t4,t2,t3
     7e0:	51800004 	beqzl	t4,7f4 <func_809E3068+0x2bc>
     7e4:	a60e010e 	sh	t6,270(s0)
     7e8:	10000002 	b	7f4 <func_809E3068+0x2bc>
     7ec:	a60d010e 	sh	t5,270(s0)
     7f0:	a60e010e 	sh	t6,270(s0)
     7f4:	8fbf001c 	lw	ra,28(sp)
     7f8:	8fb00018 	lw	s0,24(sp)
     7fc:	27bd0038 	addiu	sp,sp,56
     800:	03e00008 	jr	ra
     804:	00000000 	nop

00000808 <func_809E3338>:
     808:	27bdffe8 	addiu	sp,sp,-24
     80c:	afbf0014 	sw	ra,20(sp)
     810:	afa40018 	sw	a0,24(sp)
     814:	afa5001c 	sw	a1,28(sp)
     818:	0c000000 	jal	0 <func_809E2B30>
     81c:	2484014c 	addiu	a0,a0,332
     820:	8fa40018 	lw	a0,24(sp)
     824:	0c000000 	jal	0 <func_809E2B30>
     828:	8fa5001c 	lw	a1,28(sp)
     82c:	8fbf0014 	lw	ra,20(sp)
     830:	27bd0018 	addiu	sp,sp,24
     834:	03e00008 	jr	ra
     838:	00000000 	nop

0000083c <func_809E336C>:
     83c:	27bdffe0 	addiu	sp,sp,-32
     840:	afbf001c 	sw	ra,28(sp)
     844:	afb00018 	sw	s0,24(sp)
     848:	afa50024 	sw	a1,36(sp)
     84c:	8c8e023c 	lw	t6,572(a0)
     850:	00808025 	move	s0,a0
     854:	31cf0008 	andi	t7,t6,0x8
     858:	15e00003 	bnez	t7,868 <func_809E336C+0x2c>
     85c:	00000000 	nop
     860:	0c000000 	jal	0 <func_809E2B30>
     864:	00000000 	nop
     868:	0c000000 	jal	0 <func_809E2B30>
     86c:	2604014c 	addiu	a0,s0,332
     870:	8fa40024 	lw	a0,36(sp)
     874:	24050197 	li	a1,407
     878:	24060005 	li	a2,5
     87c:	0c000000 	jal	0 <func_809E2B30>
     880:	24841c24 	addiu	a0,a0,7204
     884:	1440000e 	bnez	v0,8c0 <func_809E336C+0x84>
     888:	2401fff7 	li	at,-9
     88c:	8e18023c 	lw	t8,572(s0)
     890:	02002025 	move	a0,s0
     894:	24050002 	li	a1,2
     898:	37190010 	ori	t9,t8,0x10
     89c:	ae19023c 	sw	t9,572(s0)
     8a0:	03214824 	and	t1,t9,at
     8a4:	ae09023c 	sw	t1,572(s0)
     8a8:	0c000000 	jal	0 <func_809E2B30>
     8ac:	260601f4 	addiu	a2,s0,500
     8b0:	3c0a0000 	lui	t2,0x0
     8b4:	254a0000 	addiu	t2,t2,0
     8b8:	1000000e 	b	8f4 <func_809E336C+0xb8>
     8bc:	ae0a0190 	sw	t2,400(s0)
     8c0:	8e03023c 	lw	v1,572(s0)
     8c4:	306b0008 	andi	t3,v1,0x8
     8c8:	5560000b 	bnezl	t3,8f8 <func_809E336C+0xbc>
     8cc:	8fbf001c 	lw	ra,28(sp)
     8d0:	844c0318 	lh	t4,792(v0)
     8d4:	346d0008 	ori	t5,v1,0x8
     8d8:	55800007 	bnezl	t4,8f8 <func_809E336C+0xbc>
     8dc:	8fbf001c 	lw	ra,28(sp)
     8e0:	8e0e0004 	lw	t6,4(s0)
     8e4:	2401fff6 	li	at,-10
     8e8:	ae0d023c 	sw	t5,572(s0)
     8ec:	01c17824 	and	t7,t6,at
     8f0:	ae0f0004 	sw	t7,4(s0)
     8f4:	8fbf001c 	lw	ra,28(sp)
     8f8:	8fb00018 	lw	s0,24(sp)
     8fc:	27bd0020 	addiu	sp,sp,32
     900:	03e00008 	jr	ra
     904:	00000000 	nop

00000908 <func_809E3438>:
     908:	27bdffe8 	addiu	sp,sp,-24
     90c:	afbf0014 	sw	ra,20(sp)
     910:	00803025 	move	a2,a0
     914:	afa5001c 	sw	a1,28(sp)
     918:	afa60018 	sw	a2,24(sp)
     91c:	0c000000 	jal	0 <func_809E2B30>
     920:	2484014c 	addiu	a0,a0,332
     924:	8fa60018 	lw	a2,24(sp)
     928:	8fa4001c 	lw	a0,28(sp)
     92c:	84c5001c 	lh	a1,28(a2)
     930:	00052a03 	sra	a1,a1,0x8
     934:	0c000000 	jal	0 <func_809E2B30>
     938:	30a5003f 	andi	a1,a1,0x3f
     93c:	10400007 	beqz	v0,95c <func_809E3438+0x54>
     940:	8fa60018 	lw	a2,24(sp)
     944:	8cce0004 	lw	t6,4(a2)
     948:	00c02025 	move	a0,a2
     94c:	35cf0009 	ori	t7,t6,0x9
     950:	accf0004 	sw	t7,4(a2)
     954:	0c000000 	jal	0 <func_809E2B30>
     958:	8fa5001c 	lw	a1,28(sp)
     95c:	8fbf0014 	lw	ra,20(sp)
     960:	27bd0018 	addiu	sp,sp,24
     964:	03e00008 	jr	ra
     968:	00000000 	nop

0000096c <func_809E349C>:
     96c:	27bdffa8 	addiu	sp,sp,-88
     970:	afb00038 	sw	s0,56(sp)
     974:	00808025 	move	s0,a0
     978:	afbf0054 	sw	ra,84(sp)
     97c:	afb20040 	sw	s2,64(sp)
     980:	00a09025 	move	s2,a1
     984:	afb60050 	sw	s6,80(sp)
     988:	afb5004c 	sw	s5,76(sp)
     98c:	afb40048 	sw	s4,72(sp)
     990:	afb30044 	sw	s3,68(sp)
     994:	afb1003c 	sw	s1,60(sp)
     998:	f7ba0030 	sdc1	$f26,48(sp)
     99c:	f7b80028 	sdc1	$f24,40(sp)
     9a0:	f7b60020 	sdc1	$f22,32(sp)
     9a4:	f7b40018 	sdc1	$f20,24(sp)
     9a8:	0c000000 	jal	0 <func_809E2B30>
     9ac:	24040051 	li	a0,81
     9b0:	02002025 	move	a0,s0
     9b4:	24050003 	li	a1,3
     9b8:	0c000000 	jal	0 <func_809E2B30>
     9bc:	260601f4 	addiu	a2,s0,500
     9c0:	8e0e023c 	lw	t6,572(s0)
     9c4:	2401fff9 	li	at,-7
     9c8:	8619001c 	lh	t9,28(s0)
     9cc:	3c020000 	lui	v0,0x0
     9d0:	01c17824 	and	t7,t6,at
     9d4:	24420000 	addiu	v0,v0,0
     9d8:	ae0f023c 	sw	t7,572(s0)
     9dc:	94580ee6 	lhu	t8,3814(v0)
     9e0:	24090001 	li	t1,1
     9e4:	33280003 	andi	t0,t9,0x3
     9e8:	01095004 	sllv	t2,t1,t0
     9ec:	030a5825 	or	t3,t8,t2
     9f0:	a44b0ee6 	sh	t3,3814(v0)
     9f4:	860c001c 	lh	t4,28(s0)
     9f8:	3c01bf80 	lui	at,0xbf80
     9fc:	44812000 	mtc1	at,$f4
     a00:	318d0003 	andi	t5,t4,0x3
     a04:	000d7100 	sll	t6,t5,0x4
     a08:	3c0f0000 	lui	t7,0x0
     a0c:	01ee7821 	addu	t7,t7,t6
     a10:	e604006c 	swc1	$f4,108(s0)
     a14:	8def0000 	lw	t7,0(t7)
     a18:	02002025 	move	a0,s0
     a1c:	02402825 	move	a1,s2
     a20:	0c000000 	jal	0 <func_809E2B30>
     a24:	ae0f0200 	sw	t7,512(s0)
     a28:	8609001c 	lh	t1,28(s0)
     a2c:	3c190001 	lui	t9,0x1
     a30:	0332c821 	addu	t9,t9,s2
     a34:	8f391e08 	lw	t9,7688(t9)
     a38:	3c014120 	lui	at,0x4120
     a3c:	00094103 	sra	t0,t1,0x4
     a40:	3118000f 	andi	t8,t0,0xf
     a44:	4481d000 	mtc1	at,$f26
     a48:	001850c0 	sll	t2,t8,0x3
     a4c:	3c010000 	lui	at,0x0
     a50:	3c120000 	lui	s2,0x0
     a54:	3c1300ff 	lui	s3,0xff
     a58:	00008825 	move	s1,zero
     a5c:	3673ffff 	ori	s3,s3,0xffff
     a60:	26520000 	addiu	s2,s2,0
     a64:	c4380000 	lwc1	$f24,0(at)
     a68:	24150006 	li	s5,6
     a6c:	3c148000 	lui	s4,0x8000
     a70:	032ab021 	addu	s6,t9,t2
     a74:	8e1901ec 	lw	t9,492(s0)
     a78:	8ec30004 	lw	v1,4(s6)
     a7c:	c60a0024 	lwc1	$f10,36(s0)
     a80:	03350019 	multu	t9,s5
     a84:	00035900 	sll	t3,v1,0x4
     a88:	000b6702 	srl	t4,t3,0x1c
     a8c:	000c6880 	sll	t5,t4,0x2
     a90:	024d7021 	addu	t6,s2,t5
     a94:	8dcf0000 	lw	t7,0(t6)
     a98:	00734824 	and	t1,v1,s3
     a9c:	c604002c 	lwc1	$f4,44(s0)
     aa0:	01e94021 	addu	t0,t7,t1
     aa4:	0114c021 	addu	t8,t0,s4
     aa8:	00005012 	mflo	t2
     aac:	030a1021 	addu	v0,t8,t2
     ab0:	844b0000 	lh	t3,0(v0)
     ab4:	844c0004 	lh	t4,4(v0)
     ab8:	448b3000 	mtc1	t3,$f6
     abc:	448c8000 	mtc1	t4,$f16
     ac0:	46803220 	cvt.s.w	$f8,$f6
     ac4:	468084a0 	cvt.s.w	$f18,$f16
     ac8:	460a4501 	sub.s	$f20,$f8,$f10
     acc:	46049581 	sub.s	$f22,$f18,$f4
     ad0:	4600a306 	mov.s	$f12,$f20
     ad4:	0c000000 	jal	0 <func_809E2B30>
     ad8:	4600b386 	mov.s	$f14,$f22
     adc:	46180182 	mul.s	$f6,$f0,$f24
     ae0:	00000000 	nop
     ae4:	4614a282 	mul.s	$f10,$f20,$f20
     ae8:	00000000 	nop
     aec:	4616b402 	mul.s	$f16,$f22,$f22
     af0:	4600320d 	trunc.w.s	$f8,$f6
     af4:	46105000 	add.s	$f0,$f10,$f16
     af8:	440e4000 	mfc1	t6,$f8
     afc:	46000004 	sqrt.s	$f0,$f0
     b00:	a60e0208 	sh	t6,520(s0)
     b04:	4600d03c 	c.lt.s	$f26,$f0
     b08:	00000000 	nop
     b0c:	45000003 	bc1f	b1c <func_809E349C+0x1b0>
     b10:	00000000 	nop
     b14:	10000004 	b	b28 <func_809E349C+0x1bc>
     b18:	24110001 	li	s1,1
     b1c:	8e0f01ec 	lw	t7,492(s0)
     b20:	25e90001 	addiu	t1,t7,1
     b24:	ae0901ec 	sw	t1,492(s0)
     b28:	5220ffd3 	beqzl	s1,a78 <func_809E349C+0x10c>
     b2c:	8e1901ec 	lw	t9,492(s0)
     b30:	3c080000 	lui	t0,0x0
     b34:	25080000 	addiu	t0,t0,0
     b38:	ae080190 	sw	t0,400(s0)
     b3c:	8fbf0054 	lw	ra,84(sp)
     b40:	8fb60050 	lw	s6,80(sp)
     b44:	8fb5004c 	lw	s5,76(sp)
     b48:	8fb40048 	lw	s4,72(sp)
     b4c:	8fb30044 	lw	s3,68(sp)
     b50:	8fb20040 	lw	s2,64(sp)
     b54:	8fb1003c 	lw	s1,60(sp)
     b58:	8fb00038 	lw	s0,56(sp)
     b5c:	d7ba0030 	ldc1	$f26,48(sp)
     b60:	d7b80028 	ldc1	$f24,40(sp)
     b64:	d7b60020 	ldc1	$f22,32(sp)
     b68:	d7b40018 	ldc1	$f20,24(sp)
     b6c:	03e00008 	jr	ra
     b70:	27bd0058 	addiu	sp,sp,88

00000b74 <func_809E36A4>:
     b74:	27bdffd0 	addiu	sp,sp,-48
     b78:	afb00020 	sw	s0,32(sp)
     b7c:	00808025 	move	s0,a0
     b80:	afbf0024 	sw	ra,36(sp)
     b84:	afa50034 	sw	a1,52(sp)
     b88:	86050208 	lh	a1,520(s0)
     b8c:	afa00010 	sw	zero,16(sp)
     b90:	248400b6 	addiu	a0,a0,182
     b94:	24060001 	li	a2,1
     b98:	0c000000 	jal	0 <func_809E2B30>
     b9c:	24071388 	li	a3,5000
     ba0:	a7a2002e 	sh	v0,46(sp)
     ba4:	0c000000 	jal	0 <func_809E2B30>
     ba8:	2604014c 	addiu	a0,s0,332
     bac:	87ae002e 	lh	t6,46(sp)
     bb0:	3c020000 	lui	v0,0x0
     bb4:	24420000 	addiu	v0,v0,0
     bb8:	15c00004 	bnez	t6,bcc <func_809E36A4+0x58>
     bbc:	02002025 	move	a0,s0
     bc0:	ae020190 	sw	v0,400(s0)
     bc4:	0040f809 	jalr	v0
     bc8:	8fa50034 	lw	a1,52(sp)
     bcc:	8fbf0024 	lw	ra,36(sp)
     bd0:	8fb00020 	lw	s0,32(sp)
     bd4:	27bd0030 	addiu	sp,sp,48
     bd8:	03e00008 	jr	ra
     bdc:	00000000 	nop

00000be0 <func_809E3710>:
     be0:	27bdffb8 	addiu	sp,sp,-72
     be4:	afbf001c 	sw	ra,28(sp)
     be8:	afb10018 	sw	s1,24(sp)
     bec:	afb00014 	sw	s0,20(sp)
     bf0:	848f001c 	lh	t7,28(a0)
     bf4:	3c030000 	lui	v1,0x0
     bf8:	24630000 	addiu	v1,v1,0
     bfc:	31f80003 	andi	t8,t7,0x3
     c00:	240e0001 	li	t6,1
     c04:	0018c900 	sll	t9,t8,0x4
     c08:	ac8e01fc 	sw	t6,508(a0)
     c0c:	00791021 	addu	v0,v1,t9
     c10:	8c48000c 	lw	t0,12(v0)
     c14:	3c010000 	lui	at,0x0
     c18:	00a08825 	move	s1,a1
     c1c:	ac880200 	sw	t0,512(a0)
     c20:	c4440000 	lwc1	$f4,0(v0)
     c24:	c4320000 	lwc1	$f18,0(at)
     c28:	00808025 	move	s0,a0
     c2c:	e7a40038 	swc1	$f4,56(sp)
     c30:	8489001c 	lh	t1,28(a0)
     c34:	00002825 	move	a1,zero
     c38:	312a0003 	andi	t2,t1,0x3
     c3c:	000a5900 	sll	t3,t2,0x4
     c40:	006b6021 	addu	t4,v1,t3
     c44:	c5860004 	lwc1	$f6,4(t4)
     c48:	e7a6003c 	swc1	$f6,60(sp)
     c4c:	848d001c 	lh	t5,28(a0)
     c50:	31ae0003 	andi	t6,t5,0x3
     c54:	000e7900 	sll	t7,t6,0x4
     c58:	006fc021 	addu	t8,v1,t7
     c5c:	c7080008 	lwc1	$f8,8(t8)
     c60:	e7a80040 	swc1	$f8,64(sp)
     c64:	84990032 	lh	t9,50(a0)
     c68:	44995000 	mtc1	t9,$f10
     c6c:	00000000 	nop
     c70:	46805420 	cvt.s.w	$f16,$f10
     c74:	46128302 	mul.s	$f12,$f16,$f18
     c78:	0c000000 	jal	0 <func_809E2B30>
     c7c:	00000000 	nop
     c80:	27a40038 	addiu	a0,sp,56
     c84:	0c000000 	jal	0 <func_809E2B30>
     c88:	27a5002c 	addiu	a1,sp,44
     c8c:	c6040024 	lwc1	$f4,36(s0)
     c90:	c7a6002c 	lwc1	$f6,44(sp)
     c94:	c6080028 	lwc1	$f8,40(s0)
     c98:	c610002c 	lwc1	$f16,44(s0)
     c9c:	46062000 	add.s	$f0,$f4,$f6
     ca0:	3c014270 	lui	at,0x4270
     ca4:	44813000 	mtc1	at,$f6
     ca8:	c6040028 	lwc1	$f4,40(s0)
     cac:	e6000224 	swc1	$f0,548(s0)
     cb0:	e600020c 	swc1	$f0,524(s0)
     cb4:	c7aa0030 	lwc1	$f10,48(sp)
     cb8:	02202025 	move	a0,s1
     cbc:	460a4000 	add.s	$f0,$f8,$f10
     cc0:	e6000228 	swc1	$f0,552(s0)
     cc4:	e6000210 	swc1	$f0,528(s0)
     cc8:	c7b20034 	lwc1	$f18,52(sp)
     ccc:	46128000 	add.s	$f0,$f16,$f18
     cd0:	e600022c 	swc1	$f0,556(s0)
     cd4:	e6000214 	swc1	$f0,532(s0)
     cd8:	c6000024 	lwc1	$f0,36(s0)
     cdc:	e6000230 	swc1	$f0,560(s0)
     ce0:	e6000218 	swc1	$f0,536(s0)
     ce4:	46062000 	add.s	$f0,$f4,$f6
     ce8:	e6000234 	swc1	$f0,564(s0)
     cec:	e600021c 	swc1	$f0,540(s0)
     cf0:	c600002c 	lwc1	$f0,44(s0)
     cf4:	e6000238 	swc1	$f0,568(s0)
     cf8:	0c000000 	jal	0 <func_809E2B30>
     cfc:	e6000220 	swc1	$f0,544(s0)
     d00:	ae020204 	sw	v0,516(s0)
     d04:	02202025 	move	a0,s1
     d08:	00002825 	move	a1,zero
     d0c:	0c000000 	jal	0 <func_809E2B30>
     d10:	24060001 	li	a2,1
     d14:	02202025 	move	a0,s1
     d18:	86050206 	lh	a1,518(s0)
     d1c:	0c000000 	jal	0 <func_809E2B30>
     d20:	24060007 	li	a2,7
     d24:	02202025 	move	a0,s1
     d28:	86050206 	lh	a1,518(s0)
     d2c:	26060230 	addiu	a2,s0,560
     d30:	0c000000 	jal	0 <func_809E2B30>
     d34:	26070224 	addiu	a3,s0,548
     d38:	02202025 	move	a0,s1
     d3c:	86050206 	lh	a1,518(s0)
     d40:	0c000000 	jal	0 <func_809E2B30>
     d44:	8e2602dc 	lw	a2,732(s1)
     d48:	02202025 	move	a0,s1
     d4c:	02002825 	move	a1,s0
     d50:	0c000000 	jal	0 <func_809E2B30>
     d54:	24060001 	li	a2,1
     d58:	8fbf001c 	lw	ra,28(sp)
     d5c:	8fb00014 	lw	s0,20(sp)
     d60:	8fb10018 	lw	s1,24(sp)
     d64:	03e00008 	jr	ra
     d68:	27bd0048 	addiu	sp,sp,72

00000d6c <func_809E389C>:
     d6c:	27bdffd0 	addiu	sp,sp,-48
     d70:	afbf0024 	sw	ra,36(sp)
     d74:	afb00020 	sw	s0,32(sp)
     d78:	afa50034 	sw	a1,52(sp)
     d7c:	3c014270 	lui	at,0x4270
     d80:	44813000 	mtc1	at,$f6
     d84:	c4840028 	lwc1	$f4,40(a0)
     d88:	c4800024 	lwc1	$f0,36(a0)
     d8c:	c48a002c 	lwc1	$f10,44(a0)
     d90:	46062200 	add.s	$f8,$f4,$f6
     d94:	44808000 	mtc1	zero,$f16
     d98:	00808025 	move	s0,a0
     d9c:	24840230 	addiu	a0,a0,560
     da0:	e488ffec 	swc1	$f8,-20(a0)
     da4:	e480ffe8 	swc1	$f0,-24(a0)
     da8:	44050000 	mfc1	a1,$f0
     dac:	e48afff0 	swc1	$f10,-16(a0)
     db0:	afa40028 	sw	a0,40(sp)
     db4:	3c063f80 	lui	a2,0x3f80
     db8:	3c07447a 	lui	a3,0x447a
     dbc:	0c000000 	jal	0 <func_809E2B30>
     dc0:	e7b00010 	swc1	$f16,16(sp)
     dc4:	44809000 	mtc1	zero,$f18
     dc8:	8e05021c 	lw	a1,540(s0)
     dcc:	26040234 	addiu	a0,s0,564
     dd0:	3c063f80 	lui	a2,0x3f80
     dd4:	3c07447a 	lui	a3,0x447a
     dd8:	0c000000 	jal	0 <func_809E2B30>
     ddc:	e7b20010 	swc1	$f18,16(sp)
     de0:	44802000 	mtc1	zero,$f4
     de4:	8e050220 	lw	a1,544(s0)
     de8:	26040238 	addiu	a0,s0,568
     dec:	3c063f80 	lui	a2,0x3f80
     df0:	3c07447a 	lui	a3,0x447a
     df4:	0c000000 	jal	0 <func_809E2B30>
     df8:	e7a40010 	swc1	$f4,16(sp)
     dfc:	8fa40034 	lw	a0,52(sp)
     e00:	86050206 	lh	a1,518(s0)
     e04:	8fa60028 	lw	a2,40(sp)
     e08:	0c000000 	jal	0 <func_809E2B30>
     e0c:	26070224 	addiu	a3,s0,548
     e10:	8fbf0024 	lw	ra,36(sp)
     e14:	8fb00020 	lw	s0,32(sp)
     e18:	27bd0030 	addiu	sp,sp,48
     e1c:	03e00008 	jr	ra
     e20:	00000000 	nop

00000e24 <func_809E3954>:
     e24:	27bdffb0 	addiu	sp,sp,-80
     e28:	afb0002c 	sw	s0,44(sp)
     e2c:	00808025 	move	s0,a0
     e30:	afb10030 	sw	s1,48(sp)
     e34:	00a08825 	move	s1,a1
     e38:	afbf0034 	sw	ra,52(sp)
     e3c:	00a02025 	move	a0,a1
     e40:	0c000000 	jal	0 <func_809E2B30>
     e44:	86050206 	lh	a1,518(s0)
     e48:	02202025 	move	a0,s1
     e4c:	00002825 	move	a1,zero
     e50:	0c000000 	jal	0 <func_809E2B30>
     e54:	24060007 	li	a2,7
     e58:	ae0001fc 	sw	zero,508(s0)
     e5c:	3c0e0000 	lui	t6,0x0
     e60:	95ce0ee6 	lhu	t6,3814(t6)
     e64:	2401000f 	li	at,15
     e68:	02202025 	move	a0,s1
     e6c:	31cf000f 	andi	t7,t6,0xf
     e70:	15e10033 	bne	t7,at,f40 <func_809E3954+0x11c>
     e74:	02002825 	move	a1,s0
     e78:	8618033a 	lh	t8,826(s0)
     e7c:	3c010000 	lui	at,0x0
     e80:	c4280000 	lwc1	$f8,0(at)
     e84:	44982000 	mtc1	t8,$f4
     e88:	00002825 	move	a1,zero
     e8c:	468021a0 	cvt.s.w	$f6,$f4
     e90:	46083302 	mul.s	$f12,$f6,$f8
     e94:	0c000000 	jal	0 <func_809E2B30>
     e98:	00000000 	nop
     e9c:	3c040000 	lui	a0,0x0
     ea0:	24840000 	addiu	a0,a0,0
     ea4:	0c000000 	jal	0 <func_809E2B30>
     ea8:	27a50040 	addiu	a1,sp,64
     eac:	c7ac0040 	lwc1	$f12,64(sp)
     eb0:	c7ae0048 	lwc1	$f14,72(sp)
     eb4:	46006307 	neg.s	$f12,$f12
     eb8:	0c000000 	jal	0 <func_809E2B30>
     ebc:	46007387 	neg.s	$f14,$f14
     ec0:	c6040344 	lwc1	$f4,836(s0)
     ec4:	c7a60044 	lwc1	$f6,68(sp)
     ec8:	3c010000 	lui	at,0x0
     ecc:	c60a0340 	lwc1	$f10,832(s0)
     ed0:	46062200 	add.s	$f8,$f4,$f6
     ed4:	c4240000 	lwc1	$f4,0(at)
     ed8:	c7b00040 	lwc1	$f16,64(sp)
     edc:	24090002 	li	t1,2
     ee0:	46040182 	mul.s	$f6,$f0,$f4
     ee4:	46105480 	add.s	$f18,$f10,$f16
     ee8:	e7a80010 	swc1	$f8,16(sp)
     eec:	c60a0348 	lwc1	$f10,840(s0)
     ef0:	c7b00048 	lwc1	$f16,72(sp)
     ef4:	44079000 	mfc1	a3,$f18
     ef8:	afa90024 	sw	t1,36(sp)
     efc:	4600320d 	trunc.w.s	$f8,$f6
     f00:	afa00020 	sw	zero,32(sp)
     f04:	afa00018 	sw	zero,24(sp)
     f08:	46105480 	add.s	$f18,$f10,$f16
     f0c:	44084000 	mfc1	t0,$f8
     f10:	26241c24 	addiu	a0,s1,7204
     f14:	02202825 	move	a1,s1
     f18:	e7b20014 	swc1	$f18,20(sp)
     f1c:	240601d0 	li	a2,464
     f20:	0c000000 	jal	0 <func_809E2B30>
     f24:	afa8001c 	sw	t0,28(sp)
     f28:	54400008 	bnezl	v0,f4c <func_809E3954+0x128>
     f2c:	8fbf0034 	lw	ra,52(sp)
     f30:	0c000000 	jal	0 <func_809E2B30>
     f34:	02002025 	move	a0,s0
     f38:	10000004 	b	f4c <func_809E3954+0x128>
     f3c:	8fbf0034 	lw	ra,52(sp)
     f40:	0c000000 	jal	0 <func_809E2B30>
     f44:	24060007 	li	a2,7
     f48:	8fbf0034 	lw	ra,52(sp)
     f4c:	8fb0002c 	lw	s0,44(sp)
     f50:	8fb10030 	lw	s1,48(sp)
     f54:	03e00008 	jr	ra
     f58:	27bd0050 	addiu	sp,sp,80

00000f5c <func_809E3A8C>:
     f5c:	27bdffb8 	addiu	sp,sp,-72
     f60:	afbf0024 	sw	ra,36(sp)
     f64:	afb00020 	sw	s0,32(sp)
     f68:	afa5004c 	sw	a1,76(sp)
     f6c:	8498001c 	lh	t8,28(a0)
     f70:	3c0f0001 	lui	t7,0x1
     f74:	01e57821 	addu	t7,t7,a1
     f78:	8def1e08 	lw	t7,7688(t7)
     f7c:	0018c903 	sra	t9,t8,0x4
     f80:	3328000f 	andi	t0,t9,0xf
     f84:	000848c0 	sll	t1,t0,0x3
     f88:	01e93021 	addu	a2,t7,t1
     f8c:	8cc30004 	lw	v1,4(a2)
     f90:	8c9901ec 	lw	t9,492(a0)
     f94:	3c0d0000 	lui	t5,0x0
     f98:	00035100 	sll	t2,v1,0x4
     f9c:	000a5f02 	srl	t3,t2,0x1c
     fa0:	000b6080 	sll	t4,t3,0x2
     fa4:	01ac6821 	addu	t5,t5,t4
     fa8:	8dad0000 	lw	t5,0(t5)
     fac:	3c0100ff 	lui	at,0xff
     fb0:	3421ffff 	ori	at,at,0xffff
     fb4:	00194080 	sll	t0,t9,0x2
     fb8:	00617024 	and	t6,v1,at
     fbc:	01194023 	subu	t0,t0,t9
     fc0:	00084040 	sll	t0,t0,0x1
     fc4:	01aec021 	addu	t8,t5,t6
     fc8:	03081021 	addu	v0,t8,t0
     fcc:	3c018000 	lui	at,0x8000
     fd0:	00411021 	addu	v0,v0,at
     fd4:	844f0000 	lh	t7,0(v0)
     fd8:	84490004 	lh	t1,4(v0)
     fdc:	c4880024 	lwc1	$f8,36(a0)
     fe0:	448f2000 	mtc1	t7,$f4
     fe4:	44895000 	mtc1	t1,$f10
     fe8:	c492002c 	lwc1	$f18,44(a0)
     fec:	468021a0 	cvt.s.w	$f6,$f4
     ff0:	00808025 	move	s0,a0
     ff4:	afa60040 	sw	a2,64(sp)
     ff8:	46805420 	cvt.s.w	$f16,$f10
     ffc:	46083301 	sub.s	$f12,$f6,$f8
    1000:	46128381 	sub.s	$f14,$f16,$f18
    1004:	e7ac0038 	swc1	$f12,56(sp)
    1008:	0c000000 	jal	0 <func_809E2B30>
    100c:	e7ae0034 	swc1	$f14,52(sp)
    1010:	3c010000 	lui	at,0x0
    1014:	c4240000 	lwc1	$f4,0(at)
    1018:	c7ac0038 	lwc1	$f12,56(sp)
    101c:	c7ae0034 	lwc1	$f14,52(sp)
    1020:	46040182 	mul.s	$f6,$f0,$f4
    1024:	3c010000 	lui	at,0x0
    1028:	c4320000 	lwc1	$f18,0(at)
    102c:	460c6282 	mul.s	$f10,$f12,$f12
    1030:	8fa60040 	lw	a2,64(sp)
    1034:	260400b6 	addiu	a0,s0,182
    1038:	460e7402 	mul.s	$f16,$f14,$f14
    103c:	24070fa0 	li	a3,4000
    1040:	4600320d 	trunc.w.s	$f8,$f6
    1044:	46105000 	add.s	$f0,$f10,$f16
    1048:	44054000 	mfc1	a1,$f8
    104c:	46000084 	sqrt.s	$f2,$f0
    1050:	00052c00 	sll	a1,a1,0x10
    1054:	00052c03 	sra	a1,a1,0x10
    1058:	4612103e 	c.le.s	$f2,$f18
    105c:	00000000 	nop
    1060:	45020013 	bc1fl	10b0 <func_809E3A8C+0x154>
    1064:	24060001 	li	a2,1
    1068:	8e0b01ec 	lw	t3,492(s0)
    106c:	256c0001 	addiu	t4,t3,1
    1070:	ae0c01ec 	sw	t4,492(s0)
    1074:	90ce0000 	lbu	t6,0(a2)
    1078:	018e082a 	slt	at,t4,t6
    107c:	5420000c 	bnezl	at,10b0 <func_809E3A8C+0x154>
    1080:	24060001 	li	a2,1
    1084:	8e1901fc 	lw	t9,508(s0)
    1088:	02002025 	move	a0,s0
    108c:	13200003 	beqz	t9,109c <func_809E3A8C+0x140>
    1090:	00000000 	nop
    1094:	0c000000 	jal	0 <func_809E2B30>
    1098:	8fa5004c 	lw	a1,76(sp)
    109c:	0c000000 	jal	0 <func_809E2B30>
    10a0:	02002025 	move	a0,s0
    10a4:	1000002b 	b	1154 <func_809E3A8C+0x1f8>
    10a8:	8fbf0024 	lw	ra,36(sp)
    10ac:	24060001 	li	a2,1
    10b0:	afa00010 	sw	zero,16(sp)
    10b4:	0c000000 	jal	0 <func_809E2B30>
    10b8:	e7a2002c 	swc1	$f2,44(sp)
    10bc:	c7a2002c 	lwc1	$f2,44(sp)
    10c0:	861800b6 	lh	t8,182(s0)
    10c4:	44802000 	mtc1	zero,$f4
    10c8:	8e0501f0 	lw	a1,496(s0)
    10cc:	3c063f19 	lui	a2,0x3f19
    10d0:	44071000 	mfc1	a3,$f2
    10d4:	a6180032 	sh	t8,50(s0)
    10d8:	34c6999a 	ori	a2,a2,0x999a
    10dc:	26040068 	addiu	a0,s0,104
    10e0:	0c000000 	jal	0 <func_809E2B30>
    10e4:	e7a40010 	swc1	$f4,16(sp)
    10e8:	0c000000 	jal	0 <func_809E2B30>
    10ec:	02002025 	move	a0,s0
    10f0:	44800000 	mtc1	zero,$f0
    10f4:	24080004 	li	t0,4
    10f8:	afa80014 	sw	t0,20(sp)
    10fc:	44060000 	mfc1	a2,$f0
    1100:	44070000 	mfc1	a3,$f0
    1104:	8fa4004c 	lw	a0,76(sp)
    1108:	02002825 	move	a1,s0
    110c:	0c000000 	jal	0 <func_809E2B30>
    1110:	e7a00010 	swc1	$f0,16(sp)
    1114:	8e0f01fc 	lw	t7,508(s0)
    1118:	02002025 	move	a0,s0
    111c:	11e0000a 	beqz	t7,1148 <func_809E3A8C+0x1ec>
    1120:	00000000 	nop
    1124:	0c000000 	jal	0 <func_809E2B30>
    1128:	8fa5004c 	lw	a1,76(sp)
    112c:	8e020200 	lw	v0,512(s0)
    1130:	02002025 	move	a0,s0
    1134:	2449ffff 	addiu	t1,v0,-1
    1138:	1c400003 	bgtz	v0,1148 <func_809E3A8C+0x1ec>
    113c:	ae090200 	sw	t1,512(s0)
    1140:	0c000000 	jal	0 <func_809E2B30>
    1144:	8fa5004c 	lw	a1,76(sp)
    1148:	0c000000 	jal	0 <func_809E2B30>
    114c:	2604014c 	addiu	a0,s0,332
    1150:	8fbf0024 	lw	ra,36(sp)
    1154:	8fb00020 	lw	s0,32(sp)
    1158:	27bd0048 	addiu	sp,sp,72
    115c:	03e00008 	jr	ra
    1160:	00000000 	nop

00001164 <EnDaiku_Update>:
    1164:	27bdffd0 	addiu	sp,sp,-48
    1168:	afbf001c 	sw	ra,28(sp)
    116c:	afb00018 	sw	s0,24(sp)
    1170:	afa50034 	sw	a1,52(sp)
    1174:	8caf1c44 	lw	t7,7236(a1)
    1178:	24010003 	li	at,3
    117c:	00808025 	move	s0,a0
    1180:	afaf0024 	sw	t7,36(sp)
    1184:	8c9801f4 	lw	t8,500(a0)
    1188:	5701000e 	bnel	t8,at,11c4 <EnDaiku_Update+0x60>
    118c:	26060194 	addiu	a2,s0,404
    1190:	c4840164 	lwc1	$f4,356(a0)
    1194:	24010006 	li	at,6
    1198:	02002025 	move	a0,s0
    119c:	4600218d 	trunc.w.s	$f6,$f4
    11a0:	44023000 	mfc1	v0,$f6
    11a4:	00000000 	nop
    11a8:	10410003 	beq	v0,at,11b8 <EnDaiku_Update+0x54>
    11ac:	2401000f 	li	at,15
    11b0:	54410004 	bnel	v0,at,11c4 <EnDaiku_Update+0x60>
    11b4:	26060194 	addiu	a2,s0,404
    11b8:	0c000000 	jal	0 <func_809E2B30>
    11bc:	240538b8 	li	a1,14520
    11c0:	26060194 	addiu	a2,s0,404
    11c4:	00c02825 	move	a1,a2
    11c8:	afa60020 	sw	a2,32(sp)
    11cc:	0c000000 	jal	0 <func_809E2B30>
    11d0:	02002025 	move	a0,s0
    11d4:	8fa40034 	lw	a0,52(sp)
    11d8:	3c010001 	lui	at,0x1
    11dc:	34211e60 	ori	at,at,0x1e60
    11e0:	8fa60020 	lw	a2,32(sp)
    11e4:	0c000000 	jal	0 <func_809E2B30>
    11e8:	00812821 	addu	a1,a0,at
    11ec:	8e190190 	lw	t9,400(s0)
    11f0:	02002025 	move	a0,s0
    11f4:	8fa50034 	lw	a1,52(sp)
    11f8:	0320f809 	jalr	t9
    11fc:	00000000 	nop
    1200:	8e02023c 	lw	v0,572(s0)
    1204:	8fa30024 	lw	v1,36(sp)
    1208:	30480002 	andi	t0,v0,0x2
    120c:	51000016 	beqzl	t0,1268 <EnDaiku_Update+0x104>
    1210:	8fbf001c 	lw	ra,28(sp)
    1214:	c4680038 	lwc1	$f8,56(v1)
    1218:	30490004 	andi	t1,v0,0x4
    121c:	24070004 	li	a3,4
    1220:	e608025c 	swc1	$f8,604(s0)
    1224:	c46a003c 	lwc1	$f10,60(v1)
    1228:	02002025 	move	a0,s0
    122c:	26050244 	addiu	a1,s0,580
    1230:	e60a0260 	swc1	$f10,608(s0)
    1234:	c4700040 	lwc1	$f16,64(v1)
    1238:	00003025 	move	a2,zero
    123c:	11200007 	beqz	t1,125c <EnDaiku_Update+0xf8>
    1240:	e6100264 	swc1	$f16,612(s0)
    1244:	02002025 	move	a0,s0
    1248:	26050244 	addiu	a1,s0,580
    124c:	0c000000 	jal	0 <func_809E2B30>
    1250:	00003025 	move	a2,zero
    1254:	10000004 	b	1268 <EnDaiku_Update+0x104>
    1258:	8fbf001c 	lw	ra,28(sp)
    125c:	0c000000 	jal	0 <func_809E2B30>
    1260:	24070002 	li	a3,2
    1264:	8fbf001c 	lw	ra,28(sp)
    1268:	8fb00018 	lw	s0,24(sp)
    126c:	27bd0030 	addiu	sp,sp,48
    1270:	03e00008 	jr	ra
    1274:	00000000 	nop

00001278 <EnDaiku_Draw>:
    1278:	27bdffa8 	addiu	sp,sp,-88
    127c:	afbf0024 	sw	ra,36(sp)
    1280:	afa40058 	sw	a0,88(sp)
    1284:	afa5005c 	sw	a1,92(sp)
    1288:	8ca50000 	lw	a1,0(a1)
    128c:	3c060000 	lui	a2,0x0
    1290:	24c60000 	addiu	a2,a2,0
    1294:	27a40040 	addiu	a0,sp,64
    1298:	240704cb 	li	a3,1227
    129c:	0c000000 	jal	0 <func_809E2B30>
    12a0:	afa50050 	sw	a1,80(sp)
    12a4:	8faf005c 	lw	t7,92(sp)
    12a8:	0c000000 	jal	0 <func_809E2B30>
    12ac:	8de40000 	lw	a0,0(t7)
    12b0:	8fa90058 	lw	t1,88(sp)
    12b4:	8fa80050 	lw	t0,80(sp)
    12b8:	3c19fb00 	lui	t9,0xfb00
    12bc:	8522001c 	lh	v0,28(t1)
    12c0:	24010001 	li	at,1
    12c4:	30420003 	andi	v0,v0,0x3
    12c8:	14400009 	bnez	v0,12f0 <EnDaiku_Draw+0x78>
    12cc:	00000000 	nop
    12d0:	8d0202c0 	lw	v0,704(t0)
    12d4:	3c0aaa0a 	lui	t2,0xaa0a
    12d8:	354a46ff 	ori	t2,t2,0x46ff
    12dc:	24580008 	addiu	t8,v0,8
    12e0:	ad1802c0 	sw	t8,704(t0)
    12e4:	ac4a0004 	sw	t2,4(v0)
    12e8:	10000020 	b	136c <EnDaiku_Draw+0xf4>
    12ec:	ac590000 	sw	t9,0(v0)
    12f0:	14410009 	bne	v0,at,1318 <EnDaiku_Draw+0xa0>
    12f4:	3c0cfb00 	lui	t4,0xfb00
    12f8:	8d0202c0 	lw	v0,704(t0)
    12fc:	3c0daac8 	lui	t5,0xaac8
    1300:	35adffff 	ori	t5,t5,0xffff
    1304:	244b0008 	addiu	t3,v0,8
    1308:	ad0b02c0 	sw	t3,704(t0)
    130c:	ac4d0004 	sw	t5,4(v0)
    1310:	10000016 	b	136c <EnDaiku_Draw+0xf4>
    1314:	ac4c0000 	sw	t4,0(v0)
    1318:	24010002 	li	at,2
    131c:	14410009 	bne	v0,at,1344 <EnDaiku_Draw+0xcc>
    1320:	3c0ffb00 	lui	t7,0xfb00
    1324:	8d0202c0 	lw	v0,704(t0)
    1328:	3c1800e6 	lui	t8,0xe6
    132c:	371846ff 	ori	t8,t8,0x46ff
    1330:	244e0008 	addiu	t6,v0,8
    1334:	ad0e02c0 	sw	t6,704(t0)
    1338:	ac580004 	sw	t8,4(v0)
    133c:	1000000b 	b	136c <EnDaiku_Draw+0xf4>
    1340:	ac4f0000 	sw	t7,0(v0)
    1344:	24010003 	li	at,3
    1348:	14410008 	bne	v0,at,136c <EnDaiku_Draw+0xf4>
    134c:	3c0afb00 	lui	t2,0xfb00
    1350:	8d0202c0 	lw	v0,704(t0)
    1354:	3c0bc800 	lui	t3,0xc800
    1358:	356b96ff 	ori	t3,t3,0x96ff
    135c:	24590008 	addiu	t9,v0,8
    1360:	ad1902c0 	sw	t9,704(t0)
    1364:	ac4b0004 	sw	t3,4(v0)
    1368:	ac4a0000 	sw	t2,0(v0)
    136c:	8d250150 	lw	a1,336(t1)
    1370:	8d26016c 	lw	a2,364(t1)
    1374:	9127014e 	lbu	a3,334(t1)
    1378:	3c0c0000 	lui	t4,0x0
    137c:	3c0d0000 	lui	t5,0x0
    1380:	25ad0000 	addiu	t5,t5,0
    1384:	258c0000 	addiu	t4,t4,0
    1388:	afac0010 	sw	t4,16(sp)
    138c:	afad0014 	sw	t5,20(sp)
    1390:	afa90018 	sw	t1,24(sp)
    1394:	0c000000 	jal	0 <func_809E2B30>
    1398:	8fa4005c 	lw	a0,92(sp)
    139c:	8fae005c 	lw	t6,92(sp)
    13a0:	3c060000 	lui	a2,0x0
    13a4:	24c60000 	addiu	a2,a2,0
    13a8:	27a40040 	addiu	a0,sp,64
    13ac:	240704e7 	li	a3,1255
    13b0:	0c000000 	jal	0 <func_809E2B30>
    13b4:	8dc50000 	lw	a1,0(t6)
    13b8:	8fbf0024 	lw	ra,36(sp)
    13bc:	27bd0058 	addiu	sp,sp,88
    13c0:	03e00008 	jr	ra
    13c4:	00000000 	nop

000013c8 <func_809E3EF8>:
    13c8:	24010008 	li	at,8
    13cc:	afa40000 	sw	a0,0(sp)
    13d0:	afa60008 	sw	a2,8(sp)
    13d4:	10a10006 	beq	a1,at,13f0 <func_809E3EF8+0x28>
    13d8:	afa7000c 	sw	a3,12(sp)
    13dc:	2401000f 	li	at,15
    13e0:	10a1000f 	beq	a1,at,1420 <func_809E3EF8+0x58>
    13e4:	8fa20014 	lw	v0,20(sp)
    13e8:	03e00008 	jr	ra
    13ec:	00001025 	move	v0,zero
    13f0:	8fa20014 	lw	v0,20(sp)
    13f4:	8fa30010 	lw	v1,16(sp)
    13f8:	844f0254 	lh	t7,596(v0)
    13fc:	846e0000 	lh	t6,0(v1)
    1400:	84790002 	lh	t9,2(v1)
    1404:	01cfc021 	addu	t8,t6,t7
    1408:	a4780000 	sh	t8,0(v1)
    140c:	84480252 	lh	t0,594(v0)
    1410:	00001025 	move	v0,zero
    1414:	03284823 	subu	t1,t9,t0
    1418:	03e00008 	jr	ra
    141c:	a4690002 	sh	t1,2(v1)
    1420:	8fa30010 	lw	v1,16(sp)
    1424:	844b024e 	lh	t3,590(v0)
    1428:	846a0000 	lh	t2,0(v1)
    142c:	846d0004 	lh	t5,4(v1)
    1430:	014b6021 	addu	t4,t2,t3
    1434:	a46c0000 	sh	t4,0(v1)
    1438:	844e024c 	lh	t6,588(v0)
    143c:	01ae7821 	addu	t7,t5,t6
    1440:	a46f0004 	sh	t7,4(v1)
    1444:	03e00008 	jr	ra
    1448:	00001025 	move	v0,zero

0000144c <func_809E3F7C>:
    144c:	27bdffc8 	addiu	sp,sp,-56
    1450:	afbf0014 	sw	ra,20(sp)
    1454:	afa40038 	sw	a0,56(sp)
    1458:	afa5003c 	sw	a1,60(sp)
    145c:	afa60040 	sw	a2,64(sp)
    1460:	afa70044 	sw	a3,68(sp)
    1464:	8c850000 	lw	a1,0(a0)
    1468:	3c060000 	lui	a2,0x0
    146c:	24c60000 	addiu	a2,a2,0
    1470:	27a40020 	addiu	a0,sp,32
    1474:	2407052b 	li	a3,1323
    1478:	0c000000 	jal	0 <func_809E2B30>
    147c:	afa50030 	sw	a1,48(sp)
    1480:	8faf003c 	lw	t7,60(sp)
    1484:	2401000f 	li	at,15
    1488:	3c040000 	lui	a0,0x0
    148c:	15e10012 	bne	t7,at,14d8 <func_809E3F7C+0x8c>
    1490:	8fa50048 	lw	a1,72(sp)
    1494:	24840000 	addiu	a0,a0,0
    1498:	0c000000 	jal	0 <func_809E2B30>
    149c:	24a50038 	addiu	a1,a1,56
    14a0:	8fa40030 	lw	a0,48(sp)
    14a4:	3c19de00 	lui	t9,0xde00
    14a8:	3c0c0000 	lui	t4,0x0
    14ac:	8c8302c0 	lw	v1,704(a0)
    14b0:	24780008 	addiu	t8,v1,8
    14b4:	ac9802c0 	sw	t8,704(a0)
    14b8:	ac790000 	sw	t9,0(v1)
    14bc:	8fa80048 	lw	t0,72(sp)
    14c0:	8509001c 	lh	t1,28(t0)
    14c4:	312a0003 	andi	t2,t1,0x3
    14c8:	000a5880 	sll	t3,t2,0x2
    14cc:	018b6021 	addu	t4,t4,t3
    14d0:	8d8c0000 	lw	t4,0(t4)
    14d4:	ac6c0004 	sw	t4,4(v1)
    14d8:	8fad0038 	lw	t5,56(sp)
    14dc:	3c060000 	lui	a2,0x0
    14e0:	24c60000 	addiu	a2,a2,0
    14e4:	27a40020 	addiu	a0,sp,32
    14e8:	24070532 	li	a3,1330
    14ec:	0c000000 	jal	0 <func_809E2B30>
    14f0:	8da50000 	lw	a1,0(t5)
    14f4:	8fbf0014 	lw	ra,20(sp)
    14f8:	27bd0038 	addiu	sp,sp,56
    14fc:	03e00008 	jr	ra
    1500:	00000000 	nop
	...
