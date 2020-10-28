
build/src/overlays/actors/ovl_Mir_Ray/z_mir_ray.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B8D050>:
       0:	848e001c 	lh	t6,28(a0)
       4:	c482027c 	lwc1	$f2,636(a0)
       8:	c4840288 	lwc1	$f4,648(a0)
       c:	3c180000 	lui	t8,0x0
      10:	27180000 	addiu	t8,t8,0
      14:	000e7940 	sll	t7,t6,0x5
      18:	46022181 	sub.s	$f6,$f4,$f2
      1c:	01f81021 	addu	v0,t7,t8
      20:	c44c0010 	lwc1	$f12,16(v0)
      24:	c488028c 	lwc1	$f8,652(a0)
      28:	c48a0280 	lwc1	$f10,640(a0)
      2c:	460c3002 	mul.s	$f0,$f6,$f12
      30:	c4860284 	lwc1	$f6,644(a0)
      34:	460a4481 	sub.s	$f18,$f8,$f10
      38:	c4840290 	lwc1	$f4,656(a0)
      3c:	8c890168 	lw	t1,360(a0)
      40:	460c9382 	mul.s	$f14,$f18,$f12
      44:	46001280 	add.s	$f10,$f2,$f0
      48:	46062201 	sub.s	$f8,$f4,$f6
      4c:	4600548d 	trunc.w.s	$f18,$f10
      50:	460c4402 	mul.s	$f16,$f8,$f12
      54:	44089000 	mfc1	t0,$f18
      58:	00000000 	nop
      5c:	a5280030 	sh	t0,48(t1)
      60:	c4840280 	lwc1	$f4,640(a0)
      64:	8c8c0168 	lw	t4,360(a0)
      68:	460e2180 	add.s	$f6,$f4,$f14
      6c:	4600320d 	trunc.w.s	$f8,$f6
      70:	440b4000 	mfc1	t3,$f8
      74:	00000000 	nop
      78:	a58b0032 	sh	t3,50(t4)
      7c:	c48a0284 	lwc1	$f10,644(a0)
      80:	8c8f0168 	lw	t7,360(a0)
      84:	46105480 	add.s	$f18,$f10,$f16
      88:	4600910d 	trunc.w.s	$f4,$f18
      8c:	440e2000 	mfc1	t6,$f4
      90:	00000000 	nop
      94:	a5ee0034 	sh	t6,52(t7)
      98:	84580014 	lh	t8,20(v0)
      9c:	8c830168 	lw	v1,360(a0)
      a0:	44983000 	mtc1	t8,$f6
      a4:	c46a0038 	lwc1	$f10,56(v1)
      a8:	46803220 	cvt.s.w	$f8,$f6
      ac:	460a4482 	mul.s	$f18,$f8,$f10
      b0:	4600910d 	trunc.w.s	$f4,$f18
      b4:	44082000 	mfc1	t0,$f4
      b8:	03e00008 	jr	ra
      bc:	a4680036 	sh	t0,54(v1)

000000c0 <func_80B8D110>:
      c0:	27bdffa8 	addiu	sp,sp,-88
      c4:	afbf002c 	sw	ra,44(sp)
      c8:	afb10028 	sw	s1,40(sp)
      cc:	afb00024 	sw	s0,36(sp)
      d0:	afa5005c 	sw	a1,92(sp)
      d4:	8ca31c44 	lw	v1,7236(a1)
      d8:	848f001c 	lh	t7,28(a0)
      dc:	3c0141f0 	lui	at,0x41f0
      e0:	c46a002c 	lwc1	$f10,44(v1)
      e4:	c4640028 	lwc1	$f4,40(v1)
      e8:	8c660024 	lw	a2,36(v1)
      ec:	44813000 	mtc1	at,$f6
      f0:	00808025 	move	s0,a0
      f4:	e7aa0010 	swc1	$f10,16(sp)
      f8:	86080294 	lh	t0,660(s0)
      fc:	46062200 	add.s	$f8,$f4,$f6
     100:	3c190000 	lui	t9,0x0
     104:	afa80014 	sw	t0,20(sp)
     108:	86090296 	lh	t1,662(s0)
     10c:	27390000 	addiu	t9,t9,0
     110:	44074000 	mfc1	a3,$f8
     114:	26050288 	addiu	a1,s0,648
     118:	2484027c 	addiu	a0,a0,636
     11c:	000fc140 	sll	t8,t7,0x5
     120:	03198821 	addu	s1,t8,t9
     124:	afa40038 	sw	a0,56(sp)
     128:	afa50034 	sw	a1,52(sp)
     12c:	afa30054 	sw	v1,84(sp)
     130:	0c000000 	jal	0 <func_80B8D050>
     134:	afa90018 	sw	t1,24(sp)
     138:	8fa30054 	lw	v1,84(sp)
     13c:	10400038 	beqz	v0,220 <func_80B8D110+0x160>
     140:	8fa50038 	lw	a1,56(sp)
     144:	922a001f 	lbu	t2,31(s1)
     148:	27a60044 	addiu	a2,sp,68
     14c:	8fa40034 	lw	a0,52(sp)
     150:	314b0008 	andi	t3,t2,0x8
     154:	11600005 	beqz	t3,16c <func_80B8D110+0xac>
     158:	00000000 	nop
     15c:	0c000000 	jal	0 <func_80B8D050>
     160:	24640024 	addiu	a0,v1,36
     164:	10000004 	b	178 <func_80B8D110+0xb8>
     168:	c6200018 	lwc1	$f0,24(s1)
     16c:	0c000000 	jal	0 <func_80B8D050>
     170:	27a60044 	addiu	a2,sp,68
     174:	c6200018 	lwc1	$f0,24(s1)
     178:	c7b00044 	lwc1	$f16,68(sp)
     17c:	c604027c 	lwc1	$f4,636(s0)
     180:	c7aa0048 	lwc1	$f10,72(sp)
     184:	46100482 	mul.s	$f18,$f0,$f16
     188:	26040298 	addiu	a0,s0,664
     18c:	24060006 	li	a2,6
     190:	460a0402 	mul.s	$f16,$f0,$f10
     194:	46049180 	add.s	$f6,$f18,$f4
     198:	4600320d 	trunc.w.s	$f8,$f6
     19c:	440d4000 	mfc1	t5,$f8
     1a0:	c7a8004c 	lwc1	$f8,76(sp)
     1a4:	a7ad003c 	sh	t5,60(sp)
     1a8:	c6120280 	lwc1	$f18,640(s0)
     1ac:	46080282 	mul.s	$f10,$f0,$f8
     1b0:	46128100 	add.s	$f4,$f16,$f18
     1b4:	4600218d 	trunc.w.s	$f6,$f4
     1b8:	440f3000 	mfc1	t7,$f6
     1bc:	00000000 	nop
     1c0:	a7af003e 	sh	t7,62(sp)
     1c4:	c6100284 	lwc1	$f16,644(s0)
     1c8:	46105480 	add.s	$f18,$f10,$f16
     1cc:	4600910d 	trunc.w.s	$f4,$f18
     1d0:	44192000 	mfc1	t9,$f4
     1d4:	00000000 	nop
     1d8:	a7b90040 	sh	t9,64(sp)
     1dc:	0c000000 	jal	0 <func_80B8D050>
     1e0:	86250016 	lh	a1,22(s1)
     1e4:	9228001c 	lbu	t0,28(s1)
     1e8:	260402a0 	addiu	a0,s0,672
     1ec:	87a5003c 	lh	a1,60(sp)
     1f0:	afa80010 	sw	t0,16(sp)
     1f4:	9229001d 	lbu	t1,29(s1)
     1f8:	87a6003e 	lh	a2,62(sp)
     1fc:	87a70040 	lh	a3,64(sp)
     200:	afa90014 	sw	t1,20(sp)
     204:	922a001e 	lbu	t2,30(s1)
     208:	afaa0018 	sw	t2,24(sp)
     20c:	860b0298 	lh	t3,664(s0)
     210:	0c000000 	jal	0 <func_80B8D050>
     214:	afab001c 	sw	t3,28(sp)
     218:	1000000d 	b	250 <func_80B8D110+0x190>
     21c:	8fbf002c 	lw	ra,44(sp)
     220:	26040298 	addiu	a0,s0,664
     224:	00002825 	move	a1,zero
     228:	0c000000 	jal	0 <func_80B8D050>
     22c:	24060006 	li	a2,6
     230:	860c0298 	lh	t4,664(s0)
     234:	9225001c 	lbu	a1,28(s1)
     238:	9226001d 	lbu	a2,29(s1)
     23c:	9227001e 	lbu	a3,30(s1)
     240:	260402a0 	addiu	a0,s0,672
     244:	0c000000 	jal	0 <func_80B8D050>
     248:	afac0010 	sw	t4,16(sp)
     24c:	8fbf002c 	lw	ra,44(sp)
     250:	8fb00024 	lw	s0,36(sp)
     254:	8fb10028 	lw	s1,40(sp)
     258:	03e00008 	jr	ra
     25c:	27bd0058 	addiu	sp,sp,88

00000260 <MirRay_Init>:
     260:	27bdffc0 	addiu	sp,sp,-64
     264:	afbf002c 	sw	ra,44(sp)
     268:	afb10028 	sw	s1,40(sp)
     26c:	afb00024 	sw	s0,36(sp)
     270:	afa50044 	sw	a1,68(sp)
     274:	848e001c 	lh	t6,28(a0)
     278:	3c180000 	lui	t8,0x0
     27c:	27180000 	addiu	t8,t8,0
     280:	3c050000 	lui	a1,0x0
     284:	000e7940 	sll	t7,t6,0x5
     288:	00808025 	move	s0,a0
     28c:	01f88821 	addu	s1,t7,t8
     290:	0c000000 	jal	0 <func_80B8D050>
     294:	24a50000 	addiu	a1,a1,0
     298:	44800000 	mtc1	zero,$f0
     29c:	260400b4 	addiu	a0,s0,180
     2a0:	00003025 	move	a2,zero
     2a4:	44050000 	mfc1	a1,$f0
     2a8:	44070000 	mfc1	a3,$f0
     2ac:	0c000000 	jal	0 <func_80B8D050>
     2b0:	00000000 	nop
     2b4:	3c040000 	lui	a0,0x0
     2b8:	0c000000 	jal	0 <func_80B8D050>
     2bc:	24840000 	addiu	a0,a0,0
     2c0:	3c040000 	lui	a0,0x0
     2c4:	24840000 	addiu	a0,a0,0
     2c8:	0c000000 	jal	0 <func_80B8D050>
     2cc:	24050206 	li	a1,518
     2d0:	3c040000 	lui	a0,0x0
     2d4:	24840000 	addiu	a0,a0,0
     2d8:	0c000000 	jal	0 <func_80B8D050>
     2dc:	8605001c 	lh	a1,28(s0)
     2e0:	8619001c 	lh	t9,28(s0)
     2e4:	3c040000 	lui	a0,0x0
     2e8:	24840000 	addiu	a0,a0,0
     2ec:	2b21000a 	slti	at,t9,10
     2f0:	5420000b 	bnezl	at,320 <MirRay_Init+0xc0>
     2f4:	86280000 	lh	t0,0(s1)
     2f8:	0c000000 	jal	0 <func_80B8D050>
     2fc:	24050209 	li	a1,521
     300:	3c040000 	lui	a0,0x0
     304:	3c050000 	lui	a1,0x0
     308:	24a50000 	addiu	a1,a1,0
     30c:	0c000000 	jal	0 <func_80B8D050>
     310:	24840000 	addiu	a0,a0,0
     314:	0c000000 	jal	0 <func_80B8D050>
     318:	02002025 	move	a0,s0
     31c:	86280000 	lh	t0,0(s1)
     320:	260402a0 	addiu	a0,s0,672
     324:	44882000 	mtc1	t0,$f4
     328:	00000000 	nop
     32c:	468021a0 	cvt.s.w	$f6,$f4
     330:	e606027c 	swc1	$f6,636(s0)
     334:	86290002 	lh	t1,2(s1)
     338:	44894000 	mtc1	t1,$f8
     33c:	240900ff 	li	t1,255
     340:	468042a0 	cvt.s.w	$f10,$f8
     344:	e60a0280 	swc1	$f10,640(s0)
     348:	862a0004 	lh	t2,4(s1)
     34c:	448a8000 	mtc1	t2,$f16
     350:	240a00ff 	li	t2,255
     354:	468084a0 	cvt.s.w	$f18,$f16
     358:	e6120284 	swc1	$f18,644(s0)
     35c:	862b000c 	lh	t3,12(s1)
     360:	a60b0294 	sh	t3,660(s0)
     364:	862c0006 	lh	t4,6(s1)
     368:	240b00ff 	li	t3,255
     36c:	448c2000 	mtc1	t4,$f4
     370:	240c0064 	li	t4,100
     374:	468021a0 	cvt.s.w	$f6,$f4
     378:	c604027c 	lwc1	$f4,636(s0)
     37c:	e6060288 	swc1	$f6,648(s0)
     380:	862d0008 	lh	t5,8(s1)
     384:	4600218d 	trunc.w.s	$f6,$f4
     388:	448d4000 	mtc1	t5,$f8
     38c:	44053000 	mfc1	a1,$f6
     390:	468042a0 	cvt.s.w	$f10,$f8
     394:	c6080280 	lwc1	$f8,640(s0)
     398:	00052c00 	sll	a1,a1,0x10
     39c:	00052c03 	sra	a1,a1,0x10
     3a0:	e60a028c 	swc1	$f10,652(s0)
     3a4:	862e000a 	lh	t6,10(s1)
     3a8:	4600428d 	trunc.w.s	$f10,$f8
     3ac:	448e8000 	mtc1	t6,$f16
     3b0:	44065000 	mfc1	a2,$f10
     3b4:	468084a0 	cvt.s.w	$f18,$f16
     3b8:	c6100284 	lwc1	$f16,644(s0)
     3bc:	00063400 	sll	a2,a2,0x10
     3c0:	00063403 	sra	a2,a2,0x10
     3c4:	e6120290 	swc1	$f18,656(s0)
     3c8:	4600848d 	trunc.w.s	$f18,$f16
     3cc:	862f000e 	lh	t7,14(s1)
     3d0:	44079000 	mfc1	a3,$f18
     3d4:	a60f0296 	sh	t7,662(s0)
     3d8:	afa40030 	sw	a0,48(sp)
     3dc:	00073c00 	sll	a3,a3,0x10
     3e0:	00073c03 	sra	a3,a3,0x10
     3e4:	afac001c 	sw	t4,28(sp)
     3e8:	afab0018 	sw	t3,24(sp)
     3ec:	afaa0014 	sw	t2,20(sp)
     3f0:	0c000000 	jal	0 <func_80B8D050>
     3f4:	afa90010 	sw	t1,16(sp)
     3f8:	8fa40044 	lw	a0,68(sp)
     3fc:	8fa60030 	lw	a2,48(sp)
     400:	0c000000 	jal	0 <func_80B8D050>
     404:	248507a8 	addiu	a1,a0,1960
     408:	3c01c406 	lui	at,0xc406
     40c:	44810000 	mtc1	at,$f0
     410:	3c010000 	lui	at,0x0
     414:	c4220000 	lwc1	$f2,0(at)
     418:	ae02029c 	sw	v0,668(s0)
     41c:	3c010000 	lui	at,0x0
     420:	e6000230 	swc1	$f0,560(s0)
     424:	c4240000 	lwc1	$f4,0(at)
     428:	3c010000 	lui	at,0x0
     42c:	44806000 	mtc1	zero,$f12
     430:	e6040234 	swc1	$f4,564(s0)
     434:	c4260000 	lwc1	$f6,0(at)
     438:	3c010000 	lui	at,0x0
     43c:	e6000248 	swc1	$f0,584(s0)
     440:	e60c0240 	swc1	$f12,576(s0)
     444:	e606023c 	swc1	$f6,572(s0)
     448:	c4280000 	lwc1	$f8,0(at)
     44c:	3c010000 	lui	at,0x0
     450:	2605014c 	addiu	a1,s0,332
     454:	e608024c 	swc1	$f8,588(s0)
     458:	c42a0000 	lwc1	$f10,0(at)
     45c:	3c014448 	lui	at,0x4448
     460:	44818000 	mtc1	at,$f16
     464:	3c01c448 	lui	at,0xc448
     468:	44819000 	mtc1	at,$f18
     46c:	e6020260 	swc1	$f2,608(s0)
     470:	e602026c 	swc1	$f2,620(s0)
     474:	e60c0258 	swc1	$f12,600(s0)
     478:	e60a0254 	swc1	$f10,596(s0)
     47c:	e6100264 	swc1	$f16,612(s0)
     480:	e6120270 	swc1	$f18,624(s0)
     484:	922d001f 	lbu	t5,31(s1)
     488:	8fa40044 	lw	a0,68(sp)
     48c:	31ae0002 	andi	t6,t5,0x2
     490:	51c00012 	beqzl	t6,4dc <MirRay_Init+0x27c>
     494:	261101ac 	addiu	s1,s0,428
     498:	0c000000 	jal	0 <func_80B8D050>
     49c:	afa50030 	sw	a1,48(sp)
     4a0:	3c070000 	lui	a3,0x0
     4a4:	260f016c 	addiu	t7,s0,364
     4a8:	8fa50030 	lw	a1,48(sp)
     4ac:	afaf0010 	sw	t7,16(sp)
     4b0:	24e70000 	addiu	a3,a3,0
     4b4:	8fa40044 	lw	a0,68(sp)
     4b8:	0c000000 	jal	0 <func_80B8D050>
     4bc:	02003025 	move	a2,s0
     4c0:	9238001f 	lbu	t8,31(s1)
     4c4:	33190004 	andi	t9,t8,0x4
     4c8:	57200004 	bnezl	t9,4dc <MirRay_Init+0x27c>
     4cc:	261101ac 	addiu	s1,s0,428
     4d0:	0c000000 	jal	0 <func_80B8D050>
     4d4:	02002025 	move	a0,s0
     4d8:	261101ac 	addiu	s1,s0,428
     4dc:	02202825 	move	a1,s1
     4e0:	0c000000 	jal	0 <func_80B8D050>
     4e4:	8fa40044 	lw	a0,68(sp)
     4e8:	3c070000 	lui	a3,0x0
     4ec:	24e70000 	addiu	a3,a3,0
     4f0:	8fa40044 	lw	a0,68(sp)
     4f4:	02202825 	move	a1,s1
     4f8:	0c000000 	jal	0 <func_80B8D050>
     4fc:	02003025 	move	a2,s0
     500:	8603001c 	lh	v1,28(s0)
     504:	24010005 	li	at,5
     508:	2408ffff 	li	t0,-1
     50c:	10610005 	beq	v1,at,524 <MirRay_Init+0x2c4>
     510:	24010007 	li	at,7
     514:	10610003 	beq	v1,at,524 <MirRay_Init+0x2c4>
     518:	24010008 	li	at,8
     51c:	54610003 	bnel	v1,at,52c <MirRay_Init+0x2cc>
     520:	8fbf002c 	lw	ra,44(sp)
     524:	a2080003 	sb	t0,3(s0)
     528:	8fbf002c 	lw	ra,44(sp)
     52c:	8fb00024 	lw	s0,36(sp)
     530:	8fb10028 	lw	s1,40(sp)
     534:	03e00008 	jr	ra
     538:	27bd0040 	addiu	sp,sp,64

0000053c <MirRay_Destroy>:
     53c:	27bdffe8 	addiu	sp,sp,-24
     540:	afa40018 	sw	a0,24(sp)
     544:	8fae0018 	lw	t6,24(sp)
     548:	afbf0014 	sw	ra,20(sp)
     54c:	00a03825 	move	a3,a1
     550:	00a02025 	move	a0,a1
     554:	8dc6029c 	lw	a2,668(t6)
     558:	afa7001c 	sw	a3,28(sp)
     55c:	0c000000 	jal	0 <func_80B8D050>
     560:	24a507a8 	addiu	a1,a1,1960
     564:	8fa20018 	lw	v0,24(sp)
     568:	3c190000 	lui	t9,0x0
     56c:	8fa4001c 	lw	a0,28(sp)
     570:	844f001c 	lh	t7,28(v0)
     574:	000fc140 	sll	t8,t7,0x5
     578:	0338c821 	addu	t9,t9,t8
     57c:	93390000 	lbu	t9,0(t9)
     580:	33280002 	andi	t0,t9,0x2
     584:	51000005 	beqzl	t0,59c <MirRay_Destroy+0x60>
     588:	8fa4001c 	lw	a0,28(sp)
     58c:	0c000000 	jal	0 <func_80B8D050>
     590:	2445014c 	addiu	a1,v0,332
     594:	8fa20018 	lw	v0,24(sp)
     598:	8fa4001c 	lw	a0,28(sp)
     59c:	0c000000 	jal	0 <func_80B8D050>
     5a0:	244501ac 	addiu	a1,v0,428
     5a4:	8fbf0014 	lw	ra,20(sp)
     5a8:	27bd0018 	addiu	sp,sp,24
     5ac:	03e00008 	jr	ra
     5b0:	00000000 	nop

000005b4 <MirRay_Update>:
     5b4:	27bdffd0 	addiu	sp,sp,-48
     5b8:	afbf001c 	sw	ra,28(sp)
     5bc:	afb10018 	sw	s1,24(sp)
     5c0:	afb00014 	sw	s0,20(sp)
     5c4:	8cae1c44 	lw	t6,7236(a1)
     5c8:	3c010000 	lui	at,0x0
     5cc:	a0200000 	sb	zero,0(at)
     5d0:	afae0024 	sw	t6,36(sp)
     5d4:	908f02ae 	lbu	t7,686(a0)
     5d8:	00808025 	move	s0,a0
     5dc:	00a08825 	move	s1,a1
     5e0:	55e0002b 	bnezl	t7,690 <MirRay_Update+0xdc>
     5e4:	8fbf001c 	lw	ra,28(sp)
     5e8:	8498001c 	lh	t8,28(a0)
     5ec:	3c020000 	lui	v0,0x0
     5f0:	0018c940 	sll	t9,t8,0x5
     5f4:	00591021 	addu	v0,v0,t9
     5f8:	90420000 	lbu	v0,0(v0)
     5fc:	30480002 	andi	t0,v0,0x2
     600:	1100000b 	beqz	t0,630 <MirRay_Update+0x7c>
     604:	30490004 	andi	t1,v0,0x4
     608:	51200004 	beqzl	t1,61c <MirRay_Update+0x68>
     60c:	3c010001 	lui	at,0x1
     610:	0c000000 	jal	0 <func_80B8D050>
     614:	00000000 	nop
     618:	3c010001 	lui	at,0x1
     61c:	34211e60 	ori	at,at,0x1e60
     620:	02212821 	addu	a1,s1,at
     624:	02202025 	move	a0,s1
     628:	0c000000 	jal	0 <func_80B8D050>
     62c:	2606014c 	addiu	a2,s0,332
     630:	44802000 	mtc1	zero,$f4
     634:	c606022c 	lwc1	$f6,556(s0)
     638:	3c010001 	lui	at,0x1
     63c:	34211e60 	ori	at,at,0x1e60
     640:	4606203c 	c.lt.s	$f4,$f6
     644:	02212821 	addu	a1,s1,at
     648:	02202025 	move	a0,s1
     64c:	45020004 	bc1fl	660 <MirRay_Update+0xac>
     650:	02002025 	move	a0,s0
     654:	0c000000 	jal	0 <func_80B8D050>
     658:	260601ac 	addiu	a2,s0,428
     65c:	02002025 	move	a0,s0
     660:	0c000000 	jal	0 <func_80B8D050>
     664:	02202825 	move	a1,s1
     668:	44804000 	mtc1	zero,$f8
     66c:	c60a022c 	lwc1	$f10,556(s0)
     670:	8fa40024 	lw	a0,36(sp)
     674:	460a403c 	c.lt.s	$f8,$f10
     678:	00000000 	nop
     67c:	45020004 	bc1fl	690 <MirRay_Update+0xdc>
     680:	8fbf001c 	lw	ra,28(sp)
     684:	0c000000 	jal	0 <func_80B8D050>
     688:	24051049 	li	a1,4169
     68c:	8fbf001c 	lw	ra,28(sp)
     690:	8fb00014 	lw	s0,20(sp)
     694:	8fb10018 	lw	s1,24(sp)
     698:	03e00008 	jr	ra
     69c:	27bd0030 	addiu	sp,sp,48

000006a0 <func_80B8D6F0>:
     6a0:	27bdffa8 	addiu	sp,sp,-88
     6a4:	afbf002c 	sw	ra,44(sp)
     6a8:	afb00028 	sw	s0,40(sp)
     6ac:	afa5005c 	sw	a1,92(sp)
     6b0:	44808000 	mtc1	zero,$f16
     6b4:	8ca31c44 	lw	v1,7236(a1)
     6b8:	00808025 	move	s0,a0
     6bc:	e490022c 	swc1	$f16,556(a0)
     6c0:	c4640a58 	lwc1	$f4,2648(v1)
     6c4:	8c670a54 	lw	a3,2644(v1)
     6c8:	8c660a50 	lw	a2,2640(v1)
     6cc:	e7a40010 	swc1	$f4,16(sp)
     6d0:	860c0294 	lh	t4,660(s0)
     6d4:	26050288 	addiu	a1,s0,648
     6d8:	2484027c 	addiu	a0,a0,636
     6dc:	afac0014 	sw	t4,20(sp)
     6e0:	860d0296 	lh	t5,662(s0)
     6e4:	afa30038 	sw	v1,56(sp)
     6e8:	0c000000 	jal	0 <func_80B8D050>
     6ec:	afad0018 	sw	t5,24(sp)
     6f0:	44808000 	mtc1	zero,$f16
     6f4:	10400051 	beqz	v0,83c <func_80B8D6F0+0x19c>
     6f8:	8fa30038 	lw	v1,56(sp)
     6fc:	24620a20 	addiu	v0,v1,2592
     700:	c4420020 	lwc1	$f2,32(v0)
     704:	c44c0024 	lwc1	$f12,36(v0)
     708:	c44e0028 	lwc1	$f14,40(v0)
     70c:	46021202 	mul.s	$f8,$f2,$f2
     710:	3c013f80 	lui	at,0x3f80
     714:	460c6282 	mul.s	$f10,$f12,$f12
     718:	460a4180 	add.s	$f6,$f8,$f10
     71c:	460e7102 	mul.s	$f4,$f14,$f14
     720:	46062000 	add.s	$f0,$f4,$f6
     724:	46000004 	sqrt.s	$f0,$f0
     728:	46100032 	c.eq.s	$f0,$f16
     72c:	46000486 	mov.s	$f18,$f0
     730:	45020006 	bc1fl	74c <func_80B8D6F0+0xac>
     734:	44811000 	mtc1	at,$f2
     738:	3c013f80 	lui	at,0x3f80
     73c:	44811000 	mtc1	at,$f2
     740:	10000005 	b	758 <func_80B8D6F0+0xb8>
     744:	e6020278 	swc1	$f2,632(s0)
     748:	44811000 	mtc1	at,$f2
     74c:	00000000 	nop
     750:	46001203 	div.s	$f8,$f2,$f0
     754:	e6080278 	swc1	$f8,632(s0)
     758:	860e001c 	lh	t6,28(s0)
     75c:	3c180000 	lui	t8,0x0
     760:	000e7940 	sll	t7,t6,0x5
     764:	030fc021 	addu	t8,t8,t7
     768:	93180000 	lbu	t8,0(t8)
     76c:	33190001 	andi	t9,t8,0x1
     770:	53200004 	beqzl	t9,784 <func_80B8D6F0+0xe4>
     774:	c60a0288 	lwc1	$f10,648(s0)
     778:	10000030 	b	83c <func_80B8D6F0+0x19c>
     77c:	e602022c 	swc1	$f2,556(s0)
     780:	c60a0288 	lwc1	$f10,648(s0)
     784:	c604027c 	lwc1	$f4,636(s0)
     788:	46045181 	sub.s	$f6,$f10,$f4
     78c:	e7a6004c 	swc1	$f6,76(sp)
     790:	c60a0280 	lwc1	$f10,640(s0)
     794:	c608028c 	lwc1	$f8,652(s0)
     798:	460a4101 	sub.s	$f4,$f8,$f10
     79c:	e7a40050 	swc1	$f4,80(sp)
     7a0:	c6080284 	lwc1	$f8,644(s0)
     7a4:	c6060290 	lwc1	$f6,656(s0)
     7a8:	46083281 	sub.s	$f10,$f6,$f8
     7ac:	c7a8004c 	lwc1	$f8,76(sp)
     7b0:	e7aa0054 	swc1	$f10,84(sp)
     7b4:	c4440020 	lwc1	$f4,32(v0)
     7b8:	46002187 	neg.s	$f6,$f4
     7bc:	c4440024 	lwc1	$f4,36(v0)
     7c0:	46083282 	mul.s	$f10,$f6,$f8
     7c4:	c7a60050 	lwc1	$f6,80(sp)
     7c8:	e7a80030 	swc1	$f8,48(sp)
     7cc:	c4480028 	lwc1	$f8,40(v0)
     7d0:	46062102 	mul.s	$f4,$f4,$f6
     7d4:	46045281 	sub.s	$f10,$f10,$f4
     7d8:	c7a40054 	lwc1	$f4,84(sp)
     7dc:	46082202 	mul.s	$f8,$f4,$f8
     7e0:	46085081 	sub.s	$f2,$f10,$f8
     7e4:	c7aa0030 	lwc1	$f10,48(sp)
     7e8:	4610103c 	c.lt.s	$f2,$f16
     7ec:	00000000 	nop
     7f0:	45020013 	bc1fl	840 <func_80B8D6F0+0x1a0>
     7f4:	8fbf002c 	lw	ra,44(sp)
     7f8:	46042202 	mul.s	$f8,$f4,$f4
     7fc:	46109032 	c.eq.s	$f18,$f16
     800:	460a5282 	mul.s	$f10,$f10,$f10
     804:	00000000 	nop
     808:	46063182 	mul.s	$f6,$f6,$f6
     80c:	46065100 	add.s	$f4,$f10,$f6
     810:	46044000 	add.s	$f0,$f8,$f4
     814:	45010009 	bc1t	83c <func_80B8D6F0+0x19c>
     818:	46000004 	sqrt.s	$f0,$f0
     81c:	46100032 	c.eq.s	$f0,$f16
     820:	00000000 	nop
     824:	45030006 	bc1tl	840 <func_80B8D6F0+0x1a0>
     828:	8fbf002c 	lw	ra,44(sp)
     82c:	46009182 	mul.s	$f6,$f18,$f0
     830:	46001287 	neg.s	$f10,$f2
     834:	46065203 	div.s	$f8,$f10,$f6
     838:	e608022c 	swc1	$f8,556(s0)
     83c:	8fbf002c 	lw	ra,44(sp)
     840:	8fb00028 	lw	s0,40(sp)
     844:	27bd0058 	addiu	sp,sp,88
     848:	03e00008 	jr	ra
     84c:	00000000 	nop

00000850 <func_80B8D8A0>:
     850:	27bdff60 	addiu	sp,sp,-160
     854:	afbf0044 	sw	ra,68(sp)
     858:	afbe0040 	sw	s8,64(sp)
     85c:	afb7003c 	sw	s7,60(sp)
     860:	afb60038 	sw	s6,56(sp)
     864:	afb50034 	sw	s5,52(sp)
     868:	afb40030 	sw	s4,48(sp)
     86c:	afb3002c 	sw	s3,44(sp)
     870:	afb20028 	sw	s2,40(sp)
     874:	afb10024 	sw	s1,36(sp)
     878:	afb00020 	sw	s0,32(sp)
     87c:	8ca21c44 	lw	v0,7236(a1)
     880:	c4860278 	lwc1	$f6,632(a0)
     884:	c490022c 	lwc1	$f16,556(a0)
     888:	c4440a40 	lwc1	$f4,2624(v0)
     88c:	3c0143c8 	lui	at,0x43c8
     890:	44810000 	mtc1	at,$f0
     894:	46062202 	mul.s	$f8,$f4,$f6
     898:	00808825 	move	s1,a0
     89c:	00c09025 	move	s2,a2
     8a0:	00009825 	move	s3,zero
     8a4:	24b407c0 	addiu	s4,a1,1984
     8a8:	27b50088 	addiu	s5,sp,136
     8ac:	27b6007c 	addiu	s6,sp,124
     8b0:	46004287 	neg.s	$f10,$f8
     8b4:	27b70070 	addiu	s7,sp,112
     8b8:	46105482 	mul.s	$f18,$f10,$f16
     8bc:	27be006c 	addiu	s8,sp,108
     8c0:	24500a20 	addiu	s0,v0,2592
     8c4:	46009102 	mul.s	$f4,$f18,$f0
     8c8:	e7a40060 	swc1	$f4,96(sp)
     8cc:	c4880278 	lwc1	$f8,632(a0)
     8d0:	c4460a44 	lwc1	$f6,2628(v0)
     8d4:	c492022c 	lwc1	$f18,556(a0)
     8d8:	46083282 	mul.s	$f10,$f6,$f8
     8dc:	46005407 	neg.s	$f16,$f10
     8e0:	46128102 	mul.s	$f4,$f16,$f18
     8e4:	00000000 	nop
     8e8:	46002182 	mul.s	$f6,$f4,$f0
     8ec:	e7a60064 	swc1	$f6,100(sp)
     8f0:	c48a0278 	lwc1	$f10,632(a0)
     8f4:	c4480a48 	lwc1	$f8,2632(v0)
     8f8:	c484022c 	lwc1	$f4,556(a0)
     8fc:	460a4402 	mul.s	$f16,$f8,$f10
     900:	46008487 	neg.s	$f18,$f16
     904:	46049182 	mul.s	$f6,$f18,$f4
     908:	00000000 	nop
     90c:	46003202 	mul.s	$f8,$f6,$f0
     910:	e7a80068 	swc1	$f8,104(sp)
     914:	c60a0010 	lwc1	$f10,16(s0)
     918:	c6300234 	lwc1	$f16,564(s1)
     91c:	c6240230 	lwc1	$f4,560(s1)
     920:	c6060000 	lwc1	$f6,0(s0)
     924:	46105482 	mul.s	$f18,$f10,$f16
     928:	c60a0030 	lwc1	$f10,48(s0)
     92c:	240e0001 	li	t6,1
     930:	46062202 	mul.s	$f8,$f4,$f6
     934:	02802025 	move	a0,s4
     938:	02a02825 	move	a1,s5
     93c:	02c03025 	move	a2,s6
     940:	02e03825 	move	a3,s7
     944:	46085400 	add.s	$f16,$f10,$f8
     948:	46109100 	add.s	$f4,$f18,$f16
     94c:	e7a40088 	swc1	$f4,136(sp)
     950:	c62a0234 	lwc1	$f10,564(s1)
     954:	c6060014 	lwc1	$f6,20(s0)
     958:	c6320230 	lwc1	$f18,560(s1)
     95c:	c6100004 	lwc1	$f16,4(s0)
     960:	460a3202 	mul.s	$f8,$f6,$f10
     964:	c60a0034 	lwc1	$f10,52(s0)
     968:	46109182 	mul.s	$f6,$f18,$f16
     96c:	46065480 	add.s	$f18,$f10,$f6
     970:	46124400 	add.s	$f16,$f8,$f18
     974:	e7b0008c 	swc1	$f16,140(sp)
     978:	c6260234 	lwc1	$f6,564(s1)
     97c:	c60a0018 	lwc1	$f10,24(s0)
     980:	c6320230 	lwc1	$f18,560(s1)
     984:	46065202 	mul.s	$f8,$f10,$f6
     988:	c60a0008 	lwc1	$f10,8(s0)
     98c:	460a9182 	mul.s	$f6,$f18,$f10
     990:	c6120038 	lwc1	$f18,56(s0)
     994:	afae0014 	sw	t6,20(sp)
     998:	afbe0010 	sw	s8,16(sp)
     99c:	46069280 	add.s	$f10,$f18,$f6
     9a0:	c7a60060 	lwc1	$f6,96(sp)
     9a4:	460a4480 	add.s	$f18,$f8,$f10
     9a8:	c7aa0064 	lwc1	$f10,100(sp)
     9ac:	46043200 	add.s	$f8,$f6,$f4
     9b0:	c7a40068 	lwc1	$f4,104(sp)
     9b4:	e7b20090 	swc1	$f18,144(sp)
     9b8:	46105180 	add.s	$f6,$f10,$f16
     9bc:	e7a8007c 	swc1	$f8,124(sp)
     9c0:	46122200 	add.s	$f8,$f4,$f18
     9c4:	e7a60080 	swc1	$f6,128(sp)
     9c8:	0c000000 	jal	0 <func_80B8D050>
     9cc:	e7a80084 	swc1	$f8,132(sp)
     9d0:	10400004 	beqz	v0,9e4 <func_80B8D8A0+0x194>
     9d4:	2631000c 	addiu	s1,s1,12
     9d8:	8faf006c 	lw	t7,108(sp)
     9dc:	10000002 	b	9e8 <func_80B8D8A0+0x198>
     9e0:	ae4f004c 	sw	t7,76(s2)
     9e4:	ae40004c 	sw	zero,76(s2)
     9e8:	26730054 	addiu	s3,s3,84
     9ec:	240101f8 	li	at,504
     9f0:	1661ffc8 	bne	s3,at,914 <func_80B8D8A0+0xc4>
     9f4:	26520054 	addiu	s2,s2,84
     9f8:	8fbf0044 	lw	ra,68(sp)
     9fc:	8fb00020 	lw	s0,32(sp)
     a00:	8fb10024 	lw	s1,36(sp)
     a04:	8fb20028 	lw	s2,40(sp)
     a08:	8fb3002c 	lw	s3,44(sp)
     a0c:	8fb40030 	lw	s4,48(sp)
     a10:	8fb50034 	lw	s5,52(sp)
     a14:	8fb60038 	lw	s6,56(sp)
     a18:	8fb7003c 	lw	s7,60(sp)
     a1c:	8fbe0040 	lw	s8,64(sp)
     a20:	03e00008 	jr	ra
     a24:	27bd00a0 	addiu	sp,sp,160

00000a28 <func_80B8DA78>:
     a28:	00802825 	move	a1,a0
     a2c:	00001025 	move	v0,zero
     a30:	240c0006 	li	t4,6
     a34:	240b0054 	li	t3,84
     a38:	24440001 	addiu	a0,v0,1
     a3c:	28810006 	slti	at,a0,6
     a40:	10200036 	beqz	at,b1c <func_80B8DA78+0xf4>
     a44:	00801825 	move	v1,a0
     a48:	00027080 	sll	t6,v0,0x2
     a4c:	01c27021 	addu	t6,t6,v0
     a50:	000e7080 	sll	t6,t6,0x2
     a54:	01c27021 	addu	t6,t6,v0
     a58:	000e7080 	sll	t6,t6,0x2
     a5c:	00ae3021 	addu	a2,a1,t6
     a60:	8cc2004c 	lw	v0,76(a2)
     a64:	5040002b 	beqzl	v0,b14 <func_80B8DA78+0xec>
     a68:	24630001 	addiu	v1,v1,1
     a6c:	006b0019 	multu	v1,t3
     a70:	00007812 	mflo	t7
     a74:	00af3821 	addu	a3,a1,t7
     a78:	8ce8004c 	lw	t0,76(a3)
     a7c:	51000025 	beqzl	t0,b14 <func_80B8DA78+0xec>
     a80:	24630001 	addiu	v1,v1,1
     a84:	84580008 	lh	t8,8(v0)
     a88:	85190008 	lh	t9,8(t0)
     a8c:	03194823 	subu	t1,t8,t9
     a90:	05200003 	bltz	t1,aa0 <func_80B8DA78+0x78>
     a94:	00095023 	negu	t2,t1
     a98:	10000001 	b	aa0 <func_80B8DA78+0x78>
     a9c:	01205025 	move	t2,t1
     aa0:	29410064 	slti	at,t2,100
     aa4:	5020001b 	beqzl	at,b14 <func_80B8DA78+0xec>
     aa8:	24630001 	addiu	v1,v1,1
     aac:	844d000a 	lh	t5,10(v0)
     ab0:	850e000a 	lh	t6,10(t0)
     ab4:	01ae4823 	subu	t1,t5,t6
     ab8:	05200003 	bltz	t1,ac8 <func_80B8DA78+0xa0>
     abc:	00095023 	negu	t2,t1
     ac0:	10000001 	b	ac8 <func_80B8DA78+0xa0>
     ac4:	01205025 	move	t2,t1
     ac8:	29410064 	slti	at,t2,100
     acc:	50200011 	beqzl	at,b14 <func_80B8DA78+0xec>
     ad0:	24630001 	addiu	v1,v1,1
     ad4:	844f000c 	lh	t7,12(v0)
     ad8:	8518000c 	lh	t8,12(t0)
     adc:	01f84823 	subu	t1,t7,t8
     ae0:	05200003 	bltz	t1,af0 <func_80B8DA78+0xc8>
     ae4:	00095023 	negu	t2,t1
     ae8:	10000001 	b	af0 <func_80B8DA78+0xc8>
     aec:	01205025 	move	t2,t1
     af0:	29410064 	slti	at,t2,100
     af4:	50200007 	beqzl	at,b14 <func_80B8DA78+0xec>
     af8:	24630001 	addiu	v1,v1,1
     afc:	8459000e 	lh	t9,14(v0)
     b00:	850d000e 	lh	t5,14(t0)
     b04:	572d0003 	bnel	t9,t5,b14 <func_80B8DA78+0xec>
     b08:	24630001 	addiu	v1,v1,1
     b0c:	ace0004c 	sw	zero,76(a3)
     b10:	24630001 	addiu	v1,v1,1
     b14:	546cffd3 	bnel	v1,t4,a64 <func_80B8DA78+0x3c>
     b18:	8cc2004c 	lw	v0,76(a2)
     b1c:	148cffc6 	bne	a0,t4,a38 <func_80B8DA78+0x10>
     b20:	00801025 	move	v0,a0
     b24:	03e00008 	jr	ra
     b28:	00000000 	nop

00000b2c <func_80B8DB7C>:
     b2c:	27bdfeb8 	addiu	sp,sp,-328
     b30:	afbf007c 	sw	ra,124(sp)
     b34:	afbe0078 	sw	s8,120(sp)
     b38:	afb70074 	sw	s7,116(sp)
     b3c:	afb60070 	sw	s6,112(sp)
     b40:	afb5006c 	sw	s5,108(sp)
     b44:	afb40068 	sw	s4,104(sp)
     b48:	afb30064 	sw	s3,100(sp)
     b4c:	afb20060 	sw	s2,96(sp)
     b50:	afb1005c 	sw	s1,92(sp)
     b54:	afb00058 	sw	s0,88(sp)
     b58:	f7be0050 	sdc1	$f30,80(sp)
     b5c:	f7bc0048 	sdc1	$f28,72(sp)
     b60:	f7ba0040 	sdc1	$f26,64(sp)
     b64:	f7b80038 	sdc1	$f24,56(sp)
     b68:	f7b60030 	sdc1	$f22,48(sp)
     b6c:	f7b40028 	sdc1	$f20,40(sp)
     b70:	8cb31c44 	lw	s3,7236(a1)
     b74:	c4920278 	lwc1	$f18,632(a0)
     b78:	c48a022c 	lwc1	$f10,556(a0)
     b7c:	c6640a40 	lwc1	$f4,2624(s3)
     b80:	3c014396 	lui	at,0x4396
     b84:	44810000 	mtc1	at,$f0
     b88:	46122402 	mul.s	$f16,$f4,$f18
     b8c:	3c0143c8 	lui	at,0x43c8
     b90:	44811000 	mtc1	at,$f2
     b94:	00c08825 	move	s1,a2
     b98:	0080b825 	move	s7,a0
     b9c:	27be0130 	addiu	s8,sp,304
     ba0:	27ae0124 	addiu	t6,sp,292
     ba4:	46008207 	neg.s	$f8,$f16
     ba8:	03c03025 	move	a2,s8
     bac:	460a4182 	mul.s	$f6,$f8,$f10
     bb0:	248401ac 	addiu	a0,a0,428
     bb4:	27a500cc 	addiu	a1,sp,204
     bb8:	27a700c0 	addiu	a3,sp,192
     bbc:	46023102 	mul.s	$f4,$f6,$f2
     bc0:	e7a400e8 	swc1	$f4,232(sp)
     bc4:	c49000cc 	lwc1	$f16,204(a0)
     bc8:	c6720a44 	lwc1	$f18,2628(s3)
     bcc:	c4860080 	lwc1	$f6,128(a0)
     bd0:	46109202 	mul.s	$f8,$f18,$f16
     bd4:	46004287 	neg.s	$f10,$f8
     bd8:	46065482 	mul.s	$f18,$f10,$f6
     bdc:	00000000 	nop
     be0:	46029402 	mul.s	$f16,$f18,$f2
     be4:	e7b000ec 	swc1	$f16,236(sp)
     be8:	c48a00cc 	lwc1	$f10,204(a0)
     bec:	c6680a48 	lwc1	$f8,2632(s3)
     bf0:	460a4182 	mul.s	$f6,$f8,$f10
     bf4:	c4880080 	lwc1	$f8,128(a0)
     bf8:	46003487 	neg.s	$f18,$f6
     bfc:	46089282 	mul.s	$f10,$f18,$f8
     c00:	00000000 	nop
     c04:	46025182 	mul.s	$f6,$f10,$f2
     c08:	e7a600f0 	swc1	$f6,240(sp)
     c0c:	c6720a50 	lwc1	$f18,2640(s3)
     c10:	e7b20130 	swc1	$f18,304(sp)
     c14:	c6680a54 	lwc1	$f8,2644(s3)
     c18:	c7b20130 	lwc1	$f18,304(sp)
     c1c:	e7a80134 	swc1	$f8,308(sp)
     c20:	c66a0a58 	lwc1	$f10,2648(s3)
     c24:	46122200 	add.s	$f8,$f4,$f18
     c28:	e7b20080 	swc1	$f18,128(sp)
     c2c:	e7aa0138 	swc1	$f10,312(sp)
     c30:	c7aa0134 	lwc1	$f10,308(sp)
     c34:	e7a80124 	swc1	$f8,292(sp)
     c38:	460a8100 	add.s	$f4,$f16,$f10
     c3c:	c7b00138 	lwc1	$f16,312(sp)
     c40:	46103180 	add.s	$f6,$f6,$f16
     c44:	e7a40128 	swc1	$f4,296(sp)
     c48:	e7a6012c 	swc1	$f6,300(sp)
     c4c:	c6720a20 	lwc1	$f18,2592(s3)
     c50:	e7a80084 	swc1	$f8,132(sp)
     c54:	c7a80080 	lwc1	$f8,128(sp)
     c58:	46009482 	mul.s	$f18,$f18,$f0
     c5c:	46089480 	add.s	$f18,$f18,$f8
     c60:	e7b200cc 	swc1	$f18,204(sp)
     c64:	c6680a24 	lwc1	$f8,2596(s3)
     c68:	46004482 	mul.s	$f18,$f8,$f0
     c6c:	460a9200 	add.s	$f8,$f18,$f10
     c70:	e7a800d0 	swc1	$f8,208(sp)
     c74:	c6720a28 	lwc1	$f18,2600(s3)
     c78:	46009282 	mul.s	$f10,$f18,$f0
     c7c:	c7b20084 	lwc1	$f18,132(sp)
     c80:	46105200 	add.s	$f8,$f10,$f16
     c84:	e7a800d4 	swc1	$f8,212(sp)
     c88:	c66a0a20 	lwc1	$f10,2592(s3)
     c8c:	46005402 	mul.s	$f16,$f10,$f0
     c90:	46128200 	add.s	$f8,$f16,$f18
     c94:	e7a800c0 	swc1	$f8,192(sp)
     c98:	c66a0a24 	lwc1	$f10,2596(s3)
     c9c:	46005402 	mul.s	$f16,$f10,$f0
     ca0:	46048480 	add.s	$f18,$f16,$f4
     ca4:	e7b200c4 	swc1	$f18,196(sp)
     ca8:	c6680a28 	lwc1	$f8,2600(s3)
     cac:	afae0010 	sw	t6,16(sp)
     cb0:	46004282 	mul.s	$f10,$f8,$f0
     cb4:	46065400 	add.s	$f16,$f10,$f6
     cb8:	0c000000 	jal	0 <func_80B8D050>
     cbc:	e7b000c8 	swc1	$f16,200(sp)
     cc0:	3c014416 	lui	at,0x4416
     cc4:	4481e000 	mtc1	at,$f28
     cc8:	3c010000 	lui	at,0x0
     ccc:	c43a0000 	lwc1	$f26,0(at)
     cd0:	3c013f80 	lui	at,0x3f80
     cd4:	4481c000 	mtc1	at,$f24
     cd8:	3c014080 	lui	at,0x4080
     cdc:	4481b000 	mtc1	at,$f22
     ce0:	3c0142c8 	lui	at,0x42c8
     ce4:	4481a000 	mtc1	at,$f20
     ce8:	4480f000 	mtc1	zero,$f30
     cec:	00009025 	move	s2,zero
     cf0:	02208025 	move	s0,s1
     cf4:	27b600f4 	addiu	s6,sp,244
     cf8:	27b50100 	addiu	s5,sp,256
     cfc:	27b4010c 	addiu	s4,sp,268
     d00:	8e02004c 	lw	v0,76(s0)
     d04:	504000ce 	beqzl	v0,1040 <func_80B8DB7C+0x514>
     d08:	26520054 	addiu	s2,s2,84
     d0c:	844f0008 	lh	t7,8(v0)
     d10:	27ac0124 	addiu	t4,sp,292
     d14:	27ad0118 	addiu	t5,sp,280
     d18:	448f2000 	mtc1	t7,$f4
     d1c:	240e0001 	li	t6,1
     d20:	468024a0 	cvt.s.w	$f18,$f4
     d24:	461a9302 	mul.s	$f12,$f18,$f26
     d28:	e7ac00dc 	swc1	$f12,220(sp)
     d2c:	8e18004c 	lw	t8,76(s0)
     d30:	8719000a 	lh	t9,10(t8)
     d34:	44995000 	mtc1	t9,$f10
     d38:	00000000 	nop
     d3c:	468051a0 	cvt.s.w	$f6,$f10
     d40:	461a3382 	mul.s	$f14,$f6,$f26
     d44:	e7ae00e0 	swc1	$f14,224(sp)
     d48:	8e08004c 	lw	t0,76(s0)
     d4c:	8509000c 	lh	t1,12(t0)
     d50:	44892000 	mtc1	t1,$f4
     d54:	00000000 	nop
     d58:	468024a0 	cvt.s.w	$f18,$f4
     d5c:	461a9282 	mul.s	$f10,$f18,$f26
     d60:	e7aa00e4 	swc1	$f10,228(sp)
     d64:	8e0a004c 	lw	t2,76(s0)
     d68:	44065000 	mfc1	a2,$f10
     d6c:	854b000e 	lh	t3,14(t2)
     d70:	afae001c 	sw	t6,28(sp)
     d74:	afad0018 	sw	t5,24(sp)
     d78:	448b3000 	mtc1	t3,$f6
     d7c:	afac0014 	sw	t4,20(sp)
     d80:	afbe0010 	sw	s8,16(sp)
     d84:	468031a0 	cvt.s.w	$f6,$f6
     d88:	44073000 	mfc1	a3,$f6
     d8c:	0c000000 	jal	0 <func_80B8D050>
     d90:	00000000 	nop
     d94:	104000a8 	beqz	v0,1038 <func_80B8DB7C+0x50c>
     d98:	c7a40118 	lwc1	$f4,280(sp)
     d9c:	e6040000 	swc1	$f4,0(s0)
     da0:	c7b2011c 	lwc1	$f18,284(sp)
     da4:	26710a20 	addiu	s1,s3,2592
     da8:	240f00c8 	li	t7,200
     dac:	e6120004 	swc1	$f18,4(s0)
     db0:	c7a80120 	lwc1	$f8,288(sp)
     db4:	3c014448 	lui	at,0x4448
     db8:	e6080008 	swc1	$f8,8(s0)
     dbc:	c7aa0130 	lwc1	$f10,304(sp)
     dc0:	c7b00118 	lwc1	$f16,280(sp)
     dc4:	c7a40134 	lwc1	$f4,308(sp)
     dc8:	c7a6011c 	lwc1	$f6,284(sp)
     dcc:	460a8081 	sub.s	$f2,$f16,$f10
     dd0:	c7a80138 	lwc1	$f8,312(sp)
     dd4:	c7b20120 	lwc1	$f18,288(sp)
     dd8:	46043301 	sub.s	$f12,$f6,$f4
     ddc:	46021402 	mul.s	$f16,$f2,$f2
     de0:	46089381 	sub.s	$f14,$f18,$f8
     de4:	460c6282 	mul.s	$f10,$f12,$f12
     de8:	c6f2022c 	lwc1	$f18,556(s7)
     dec:	460e7102 	mul.s	$f4,$f14,$f14
     df0:	00000000 	nop
     df4:	461c9202 	mul.s	$f8,$f18,$f28
     df8:	460a8180 	add.s	$f6,$f16,$f10
     dfc:	46043000 	add.s	$f0,$f6,$f4
     e00:	46000004 	sqrt.s	$f0,$f0
     e04:	4608003c 	c.lt.s	$f0,$f8
     e08:	00000000 	nop
     e0c:	45000003 	bc1f	e1c <func_80B8DB7C+0x2f0>
     e10:	00000000 	nop
     e14:	10000008 	b	e38 <func_80B8DB7C+0x30c>
     e18:	a20f0050 	sb	t7,80(s0)
     e1c:	44818000 	mtc1	at,$f16
     e20:	00000000 	nop
     e24:	46008281 	sub.s	$f10,$f16,$f0
     e28:	4600518d 	trunc.w.s	$f6,$f10
     e2c:	44193000 	mfc1	t9,$f6
     e30:	00000000 	nop
     e34:	a2190050 	sb	t9,80(s0)
     e38:	c6240000 	lwc1	$f4,0(s1)
     e3c:	c7a80130 	lwc1	$f8,304(sp)
     e40:	240a0001 	li	t2,1
     e44:	46142482 	mul.s	$f18,$f4,$f20
     e48:	c7a40134 	lwc1	$f4,308(sp)
     e4c:	46089400 	add.s	$f16,$f18,$f8
     e50:	e7b0010c 	swc1	$f16,268(sp)
     e54:	c62a0004 	lwc1	$f10,4(s1)
     e58:	46145182 	mul.s	$f6,$f10,$f20
     e5c:	46043480 	add.s	$f18,$f6,$f4
     e60:	c7a60138 	lwc1	$f6,312(sp)
     e64:	e7b20110 	swc1	$f18,272(sp)
     e68:	c6280008 	lwc1	$f8,8(s1)
     e6c:	46144282 	mul.s	$f10,$f8,$f20
     e70:	c7a800e8 	lwc1	$f8,232(sp)
     e74:	46065100 	add.s	$f4,$f10,$f6
     e78:	46164282 	mul.s	$f10,$f8,$f22
     e7c:	c7a800ec 	lwc1	$f8,236(sp)
     e80:	e7a40114 	swc1	$f4,276(sp)
     e84:	46105180 	add.s	$f6,$f10,$f16
     e88:	46164282 	mul.s	$f10,$f8,$f22
     e8c:	e7a60100 	swc1	$f6,256(sp)
     e90:	c7a600f0 	lwc1	$f6,240(sp)
     e94:	46163202 	mul.s	$f8,$f6,$f22
     e98:	46125400 	add.s	$f16,$f10,$f18
     e9c:	e7b00104 	swc1	$f16,260(sp)
     ea0:	46044280 	add.s	$f10,$f8,$f4
     ea4:	e7aa0108 	swc1	$f10,264(sp)
     ea8:	e61e0044 	swc1	$f30,68(s0)
     eac:	c6000044 	lwc1	$f0,68(s0)
     eb0:	8e08004c 	lw	t0,76(s0)
     eb4:	e618000c 	swc1	$f24,12(s0)
     eb8:	e6180020 	swc1	$f24,32(s0)
     ebc:	e6180034 	swc1	$f24,52(s0)
     ec0:	e6180048 	swc1	$f24,72(s0)
     ec4:	e6000040 	swc1	$f0,64(s0)
     ec8:	e600003c 	swc1	$f0,60(s0)
     ecc:	e6000038 	swc1	$f0,56(s0)
     ed0:	e6000030 	swc1	$f0,48(s0)
     ed4:	e600002c 	swc1	$f0,44(s0)
     ed8:	e6000028 	swc1	$f0,40(s0)
     edc:	e6000024 	swc1	$f0,36(s0)
     ee0:	e600001c 	swc1	$f0,28(s0)
     ee4:	e6000018 	swc1	$f0,24(s0)
     ee8:	e6000014 	swc1	$f0,20(s0)
     eec:	e6000010 	swc1	$f0,16(s0)
     ef0:	8509000e 	lh	t1,14(t0)
     ef4:	afaa001c 	sw	t2,28(sp)
     ef8:	afb60018 	sw	s6,24(sp)
     efc:	44899000 	mtc1	t1,$f18
     f00:	afb50014 	sw	s5,20(sp)
     f04:	afb40010 	sw	s4,16(sp)
     f08:	468094a0 	cvt.s.w	$f18,$f18
     f0c:	8fa600e4 	lw	a2,228(sp)
     f10:	c7ae00e0 	lwc1	$f14,224(sp)
     f14:	c7ac00dc 	lwc1	$f12,220(sp)
     f18:	44079000 	mfc1	a3,$f18
     f1c:	0c000000 	jal	0 <func_80B8D050>
     f20:	00000000 	nop
     f24:	1040000c 	beqz	v0,f58 <func_80B8DB7C+0x42c>
     f28:	c7b000f4 	lwc1	$f16,244(sp)
     f2c:	c7a60118 	lwc1	$f6,280(sp)
     f30:	46068201 	sub.s	$f8,$f16,$f6
     f34:	e608000c 	swc1	$f8,12(s0)
     f38:	c7aa011c 	lwc1	$f10,284(sp)
     f3c:	c7a400f8 	lwc1	$f4,248(sp)
     f40:	460a2481 	sub.s	$f18,$f4,$f10
     f44:	e6120010 	swc1	$f18,16(s0)
     f48:	c7a60120 	lwc1	$f6,288(sp)
     f4c:	c7b000fc 	lwc1	$f16,252(sp)
     f50:	46068201 	sub.s	$f8,$f16,$f6
     f54:	e6080014 	swc1	$f8,20(s0)
     f58:	c6240010 	lwc1	$f4,16(s1)
     f5c:	c7b20130 	lwc1	$f18,304(sp)
     f60:	240d0001 	li	t5,1
     f64:	46142282 	mul.s	$f10,$f4,$f20
     f68:	c7a40134 	lwc1	$f4,308(sp)
     f6c:	c7ac00dc 	lwc1	$f12,220(sp)
     f70:	c7ae00e0 	lwc1	$f14,224(sp)
     f74:	8fa600e4 	lw	a2,228(sp)
     f78:	46125400 	add.s	$f16,$f10,$f18
     f7c:	e7b0010c 	swc1	$f16,268(sp)
     f80:	c6260014 	lwc1	$f6,20(s1)
     f84:	46143202 	mul.s	$f8,$f6,$f20
     f88:	46044280 	add.s	$f10,$f8,$f4
     f8c:	c7a80138 	lwc1	$f8,312(sp)
     f90:	e7aa0110 	swc1	$f10,272(sp)
     f94:	c6320018 	lwc1	$f18,24(s1)
     f98:	46149182 	mul.s	$f6,$f18,$f20
     f9c:	c7b200e8 	lwc1	$f18,232(sp)
     fa0:	46083100 	add.s	$f4,$f6,$f8
     fa4:	46169182 	mul.s	$f6,$f18,$f22
     fa8:	c7b200ec 	lwc1	$f18,236(sp)
     fac:	e7a40114 	swc1	$f4,276(sp)
     fb0:	46103200 	add.s	$f8,$f6,$f16
     fb4:	46169182 	mul.s	$f6,$f18,$f22
     fb8:	e7a80100 	swc1	$f8,256(sp)
     fbc:	c7a800f0 	lwc1	$f8,240(sp)
     fc0:	46164482 	mul.s	$f18,$f8,$f22
     fc4:	460a3400 	add.s	$f16,$f6,$f10
     fc8:	e7b00104 	swc1	$f16,260(sp)
     fcc:	46049180 	add.s	$f6,$f18,$f4
     fd0:	e7a60108 	swc1	$f6,264(sp)
     fd4:	8e0b004c 	lw	t3,76(s0)
     fd8:	856c000e 	lh	t4,14(t3)
     fdc:	afad001c 	sw	t5,28(sp)
     fe0:	afb60018 	sw	s6,24(sp)
     fe4:	448c5000 	mtc1	t4,$f10
     fe8:	afb50014 	sw	s5,20(sp)
     fec:	afb40010 	sw	s4,16(sp)
     ff0:	468052a0 	cvt.s.w	$f10,$f10
     ff4:	44075000 	mfc1	a3,$f10
     ff8:	0c000000 	jal	0 <func_80B8D050>
     ffc:	00000000 	nop
    1000:	1040000e 	beqz	v0,103c <func_80B8DB7C+0x510>
    1004:	c7b000f4 	lwc1	$f16,244(sp)
    1008:	c7a80118 	lwc1	$f8,280(sp)
    100c:	46088481 	sub.s	$f18,$f16,$f8
    1010:	e612001c 	swc1	$f18,28(s0)
    1014:	c7a6011c 	lwc1	$f6,284(sp)
    1018:	c7a400f8 	lwc1	$f4,248(sp)
    101c:	46062281 	sub.s	$f10,$f4,$f6
    1020:	e60a0020 	swc1	$f10,32(s0)
    1024:	c7a80120 	lwc1	$f8,288(sp)
    1028:	c7b000fc 	lwc1	$f16,252(sp)
    102c:	46088481 	sub.s	$f18,$f16,$f8
    1030:	10000002 	b	103c <func_80B8DB7C+0x510>
    1034:	e6120024 	swc1	$f18,36(s0)
    1038:	ae00004c 	sw	zero,76(s0)
    103c:	26520054 	addiu	s2,s2,84
    1040:	240101f8 	li	at,504
    1044:	1641ff2e 	bne	s2,at,d00 <func_80B8DB7C+0x1d4>
    1048:	26100054 	addiu	s0,s0,84
    104c:	8fbf007c 	lw	ra,124(sp)
    1050:	d7b40028 	ldc1	$f20,40(sp)
    1054:	d7b60030 	ldc1	$f22,48(sp)
    1058:	d7b80038 	ldc1	$f24,56(sp)
    105c:	d7ba0040 	ldc1	$f26,64(sp)
    1060:	d7bc0048 	ldc1	$f28,72(sp)
    1064:	d7be0050 	ldc1	$f30,80(sp)
    1068:	8fb00058 	lw	s0,88(sp)
    106c:	8fb1005c 	lw	s1,92(sp)
    1070:	8fb20060 	lw	s2,96(sp)
    1074:	8fb30064 	lw	s3,100(sp)
    1078:	8fb40068 	lw	s4,104(sp)
    107c:	8fb5006c 	lw	s5,108(sp)
    1080:	8fb60070 	lw	s6,112(sp)
    1084:	8fb70074 	lw	s7,116(sp)
    1088:	8fbe0078 	lw	s8,120(sp)
    108c:	03e00008 	jr	ra
    1090:	27bd0148 	addiu	sp,sp,328

00001094 <MirRay_Draw>:
    1094:	27bdfd80 	addiu	sp,sp,-640
    1098:	f7b40018 	sdc1	$f20,24(sp)
    109c:	4480a000 	mtc1	zero,$f20
    10a0:	afbf0034 	sw	ra,52(sp)
    10a4:	afb40030 	sw	s4,48(sp)
    10a8:	afb3002c 	sw	s3,44(sp)
    10ac:	afb20028 	sw	s2,40(sp)
    10b0:	afb10024 	sw	s1,36(sp)
    10b4:	afb00020 	sw	s0,32(sp)
    10b8:	8cb01c44 	lw	s0,7236(a1)
    10bc:	3c0e0000 	lui	t6,0x0
    10c0:	e494022c 	swc1	$f20,556(a0)
    10c4:	91ce0000 	lbu	t6,0(t6)
    10c8:	00808825 	move	s1,a0
    10cc:	00a0a025 	move	s4,a1
    10d0:	55c000b0 	bnezl	t6,1394 <MirRay_Draw+0x300>
    10d4:	8fbf0034 	lw	ra,52(sp)
    10d8:	908f02ae 	lbu	t7,686(a0)
    10dc:	55e000ad 	bnezl	t7,1394 <MirRay_Draw+0x300>
    10e0:	8fbf0034 	lw	ra,52(sp)
    10e4:	0c000000 	jal	0 <func_80B8D050>
    10e8:	00a02025 	move	a0,a1
    10ec:	104000a8 	beqz	v0,1390 <MirRay_Draw+0x2fc>
    10f0:	26040a20 	addiu	a0,s0,2592
    10f4:	0c000000 	jal	0 <func_80B8D050>
    10f8:	00002825 	move	a1,zero
    10fc:	02202025 	move	a0,s1
    1100:	0c000000 	jal	0 <func_80B8D050>
    1104:	02802825 	move	a1,s4
    1108:	c624022c 	lwc1	$f4,556(s1)
    110c:	3c060000 	lui	a2,0x0
    1110:	24c60000 	addiu	a2,a2,0
    1114:	4614203e 	c.le.s	$f4,$f20
    1118:	27a40064 	addiu	a0,sp,100
    111c:	4503009d 	bc1tl	1394 <MirRay_Draw+0x300>
    1120:	8fbf0034 	lw	ra,52(sp)
    1124:	8e850000 	lw	a1,0(s4)
    1128:	240703c6 	li	a3,966
    112c:	0c000000 	jal	0 <func_80B8D050>
    1130:	00a09025 	move	s2,a1
    1134:	0c000000 	jal	0 <func_80B8D050>
    1138:	8e840000 	lw	a0,0(s4)
    113c:	3c013f80 	lui	at,0x3f80
    1140:	44816000 	mtc1	at,$f12
    1144:	3c0140a0 	lui	at,0x40a0
    1148:	44814000 	mtc1	at,$f8
    114c:	c626022c 	lwc1	$f6,556(s1)
    1150:	24070001 	li	a3,1
    1154:	46006386 	mov.s	$f14,$f12
    1158:	46083282 	mul.s	$f10,$f6,$f8
    115c:	44065000 	mfc1	a2,$f10
    1160:	0c000000 	jal	0 <func_80B8D050>
    1164:	00000000 	nop
    1168:	8e4202d0 	lw	v0,720(s2)
    116c:	3c19da38 	lui	t9,0xda38
    1170:	37390003 	ori	t9,t9,0x3
    1174:	24580008 	addiu	t8,v0,8
    1178:	ae5802d0 	sw	t8,720(s2)
    117c:	3c050000 	lui	a1,0x0
    1180:	ac590000 	sw	t9,0(v0)
    1184:	8e840000 	lw	a0,0(s4)
    1188:	24a50000 	addiu	a1,a1,0
    118c:	240603cc 	li	a2,972
    1190:	0c000000 	jal	0 <func_80B8D050>
    1194:	00408025 	move	s0,v0
    1198:	ae020004 	sw	v0,4(s0)
    119c:	8e4202d0 	lw	v0,720(s2)
    11a0:	3c09fa00 	lui	t1,0xfa00
    11a4:	3c0142c8 	lui	at,0x42c8
    11a8:	24480008 	addiu	t0,v0,8
    11ac:	ae4802d0 	sw	t0,720(s2)
    11b0:	ac490000 	sw	t1,0(v0)
    11b4:	c630022c 	lwc1	$f16,556(s1)
    11b8:	44819000 	mtc1	at,$f18
    11bc:	24019600 	li	at,-27136
    11c0:	3c190600 	lui	t9,0x600
    11c4:	46128102 	mul.s	$f4,$f16,$f18
    11c8:	27390c50 	addiu	t9,t9,3152
    11cc:	27b0007c 	addiu	s0,sp,124
    11d0:	3c18de00 	lui	t8,0xde00
    11d4:	02003025 	move	a2,s0
    11d8:	02202025 	move	a0,s1
    11dc:	02802825 	move	a1,s4
    11e0:	4600218d 	trunc.w.s	$f6,$f4
    11e4:	440c3000 	mfc1	t4,$f6
    11e8:	00000000 	nop
    11ec:	318d00ff 	andi	t5,t4,0xff
    11f0:	01a17025 	or	t6,t5,at
    11f4:	ac4e0004 	sw	t6,4(v0)
    11f8:	8e4202d0 	lw	v0,720(s2)
    11fc:	244f0008 	addiu	t7,v0,8
    1200:	ae4f02d0 	sw	t7,720(s2)
    1204:	ac590004 	sw	t9,4(v0)
    1208:	0c000000 	jal	0 <func_80B8D050>
    120c:	ac580000 	sw	t8,0(v0)
    1210:	0c000000 	jal	0 <func_80B8D050>
    1214:	02002025 	move	a0,s0
    1218:	02202025 	move	a0,s1
    121c:	02802825 	move	a1,s4
    1220:	0c000000 	jal	0 <func_80B8D050>
    1224:	02003025 	move	a2,s0
    1228:	8fa800c8 	lw	t0,200(sp)
    122c:	27b000d0 	addiu	s0,sp,208
    1230:	27a30274 	addiu	v1,sp,628
    1234:	15000002 	bnez	t0,1240 <MirRay_Draw+0x1ac>
    1238:	00000000 	nop
    123c:	a3a000cc 	sb	zero,204(sp)
    1240:	8e09004c 	lw	t1,76(s0)
    1244:	93aa00cc 	lbu	t2,204(sp)
    1248:	51200007 	beqzl	t1,1268 <MirRay_Draw+0x1d4>
    124c:	26100054 	addiu	s0,s0,84
    1250:	92020050 	lbu	v0,80(s0)
    1254:	0142082a 	slt	at,t2,v0
    1258:	50200003 	beqzl	at,1268 <MirRay_Draw+0x1d4>
    125c:	26100054 	addiu	s0,s0,84
    1260:	a3a200cc 	sb	v0,204(sp)
    1264:	26100054 	addiu	s0,s0,84
    1268:	0203082b 	sltu	at,s0,v1
    126c:	5420fff5 	bnezl	at,1244 <MirRay_Draw+0x1b0>
    1270:	8e09004c 	lw	t1,76(s0)
    1274:	3c010000 	lui	at,0x0
    1278:	c4340000 	lwc1	$f20,0(at)
    127c:	27b0007c 	addiu	s0,sp,124
    1280:	8e0b004c 	lw	t3,76(s0)
    1284:	00003825 	move	a3,zero
    1288:	2611000c 	addiu	s1,s0,12
    128c:	11600033 	beqz	t3,135c <MirRay_Draw+0x2c8>
    1290:	3c130600 	lui	s3,0x600
    1294:	c60c0000 	lwc1	$f12,0(s0)
    1298:	c60e0004 	lwc1	$f14,4(s0)
    129c:	8e060008 	lw	a2,8(s0)
    12a0:	0c000000 	jal	0 <func_80B8D050>
    12a4:	267300b0 	addiu	s3,s3,176
    12a8:	4406a000 	mfc1	a2,$f20
    12ac:	4600a306 	mov.s	$f12,$f20
    12b0:	4600a386 	mov.s	$f14,$f20
    12b4:	0c000000 	jal	0 <func_80B8D050>
    12b8:	24070001 	li	a3,1
    12bc:	02202025 	move	a0,s1
    12c0:	0c000000 	jal	0 <func_80B8D050>
    12c4:	24050001 	li	a1,1
    12c8:	8e4202d0 	lw	v0,720(s2)
    12cc:	3c0dda38 	lui	t5,0xda38
    12d0:	35ad0003 	ori	t5,t5,0x3
    12d4:	244c0008 	addiu	t4,v0,8
    12d8:	ae4c02d0 	sw	t4,720(s2)
    12dc:	3c050000 	lui	a1,0x0
    12e0:	ac4d0000 	sw	t5,0(v0)
    12e4:	8e840000 	lw	a0,0(s4)
    12e8:	24a50000 	addiu	a1,a1,0
    12ec:	240603ee 	li	a2,1006
    12f0:	0c000000 	jal	0 <func_80B8D050>
    12f4:	00408825 	move	s1,v0
    12f8:	ae220004 	sw	v0,4(s1)
    12fc:	8e4202d0 	lw	v0,720(s2)
    1300:	3c0fe200 	lui	t7,0xe200
    1304:	3c18c810 	lui	t8,0xc810
    1308:	244e0008 	addiu	t6,v0,8
    130c:	ae4e02d0 	sw	t6,720(s2)
    1310:	37184dd8 	ori	t8,t8,0x4dd8
    1314:	35ef001c 	ori	t7,t7,0x1c
    1318:	ac4f0000 	sw	t7,0(v0)
    131c:	ac580004 	sw	t8,4(v0)
    1320:	8e4202d0 	lw	v0,720(s2)
    1324:	3c08fa00 	lui	t0,0xfa00
    1328:	24019600 	li	at,-27136
    132c:	24590008 	addiu	t9,v0,8
    1330:	ae5902d0 	sw	t9,720(s2)
    1334:	ac480000 	sw	t0,0(v0)
    1338:	93aa00cc 	lbu	t2,204(sp)
    133c:	3c0dde00 	lui	t5,0xde00
    1340:	01415825 	or	t3,t2,at
    1344:	ac4b0004 	sw	t3,4(v0)
    1348:	8e4202d0 	lw	v0,720(s2)
    134c:	244c0008 	addiu	t4,v0,8
    1350:	ae4c02d0 	sw	t4,720(s2)
    1354:	ac530004 	sw	s3,4(v0)
    1358:	ac4d0000 	sw	t5,0(v0)
    135c:	26100054 	addiu	s0,s0,84
    1360:	27ae0274 	addiu	t6,sp,628
    1364:	560effc7 	bnel	s0,t6,1284 <MirRay_Draw+0x1f0>
    1368:	8e0b004c 	lw	t3,76(s0)
    136c:	240f0001 	li	t7,1
    1370:	3c010000 	lui	at,0x0
    1374:	a02f0000 	sb	t7,0(at)
    1378:	3c060000 	lui	a2,0x0
    137c:	24c60000 	addiu	a2,a2,0
    1380:	8e850000 	lw	a1,0(s4)
    1384:	27a40064 	addiu	a0,sp,100
    1388:	0c000000 	jal	0 <func_80B8D050>
    138c:	24070403 	li	a3,1027
    1390:	8fbf0034 	lw	ra,52(sp)
    1394:	d7b40018 	ldc1	$f20,24(sp)
    1398:	8fb00020 	lw	s0,32(sp)
    139c:	8fb10024 	lw	s1,36(sp)
    13a0:	8fb20028 	lw	s2,40(sp)
    13a4:	8fb3002c 	lw	s3,44(sp)
    13a8:	8fb40030 	lw	s4,48(sp)
    13ac:	03e00008 	jr	ra
    13b0:	27bd0280 	addiu	sp,sp,640

000013b4 <func_80B8E404>:
    13b4:	27bdff78 	addiu	sp,sp,-136
    13b8:	afbf001c 	sw	ra,28(sp)
    13bc:	afb00018 	sw	s0,24(sp)
    13c0:	afa40088 	sw	a0,136(sp)
    13c4:	afa60090 	sw	a2,144(sp)
    13c8:	afa70094 	sw	a3,148(sp)
    13cc:	c4a60000 	lwc1	$f6,0(a1)
    13d0:	c4900000 	lwc1	$f16,0(a0)
    13d4:	c4aa0004 	lwc1	$f10,4(a1)
    13d8:	c4920004 	lwc1	$f18,4(a0)
    13dc:	c4880008 	lwc1	$f8,8(a0)
    13e0:	46103081 	sub.s	$f2,$f6,$f16
    13e4:	00803825 	move	a3,a0
    13e8:	e7a80038 	swc1	$f8,56(sp)
    13ec:	46125301 	sub.s	$f12,$f10,$f18
    13f0:	46021282 	mul.s	$f10,$f2,$f2
    13f4:	c7a60038 	lwc1	$f6,56(sp)
    13f8:	c4a40008 	lwc1	$f4,8(a1)
    13fc:	460c6202 	mul.s	$f8,$f12,$f12
    1400:	00a08025 	move	s0,a1
    1404:	46062381 	sub.s	$f14,$f4,$f6
    1408:	460e7182 	mul.s	$f6,$f14,$f14
    140c:	46085100 	add.s	$f4,$f10,$f8
    1410:	44804000 	mtc1	zero,$f8
    1414:	46062280 	add.s	$f10,$f4,$f6
    1418:	c7a40090 	lwc1	$f4,144(sp)
    141c:	460a4032 	c.eq.s	$f8,$f10
    1420:	e7aa0034 	swc1	$f10,52(sp)
    1424:	45020004 	bc1fl	1438 <func_80B8E404+0x84>
    1428:	46102181 	sub.s	$f6,$f4,$f16
    142c:	1000006d 	b	15e4 <func_80B8E404+0x230>
    1430:	00001025 	move	v0,zero
    1434:	46102181 	sub.s	$f6,$f4,$f16
    1438:	c7aa0094 	lwc1	$f10,148(sp)
    143c:	e7a40020 	swc1	$f4,32(sp)
    1440:	c7a40038 	lwc1	$f4,56(sp)
    1444:	46023202 	mul.s	$f8,$f6,$f2
    1448:	46125181 	sub.s	$f6,$f10,$f18
    144c:	e7aa0024 	swc1	$f10,36(sp)
    1450:	87a2009e 	lh	v0,158(sp)
    1454:	87b800a2 	lh	t8,162(sp)
    1458:	460c3182 	mul.s	$f6,$f6,$f12
    145c:	02002025 	move	a0,s0
    1460:	0302c823 	subu	t9,t8,v0
    1464:	00e02825 	move	a1,a3
    1468:	27a6005c 	addiu	a2,sp,92
    146c:	46064200 	add.s	$f8,$f8,$f6
    1470:	c7a60098 	lwc1	$f6,152(sp)
    1474:	46043281 	sub.s	$f10,$f6,$f4
    1478:	e7a60028 	swc1	$f6,40(sp)
    147c:	460e5282 	mul.s	$f10,$f10,$f14
    1480:	460a4200 	add.s	$f8,$f8,$f10
    1484:	c7aa0034 	lwc1	$f10,52(sp)
    1488:	460a4003 	div.s	$f0,$f8,$f10
    148c:	46001202 	mul.s	$f8,$f2,$f0
    1490:	46104280 	add.s	$f10,$f8,$f16
    1494:	46006202 	mul.s	$f8,$f12,$f0
    1498:	00000000 	nop
    149c:	46007182 	mul.s	$f6,$f14,$f0
    14a0:	e7aa0080 	swc1	$f10,128(sp)
    14a4:	e7aa002c 	swc1	$f10,44(sp)
    14a8:	44825000 	mtc1	v0,$f10
    14ac:	00001025 	move	v0,zero
    14b0:	46124200 	add.s	$f8,$f8,$f18
    14b4:	46043180 	add.s	$f6,$f6,$f4
    14b8:	44992000 	mtc1	t9,$f4
    14bc:	e7a8007c 	swc1	$f8,124(sp)
    14c0:	468052a0 	cvt.s.w	$f10,$f10
    14c4:	e7a60078 	swc1	$f6,120(sp)
    14c8:	46802120 	cvt.s.w	$f4,$f4
    14cc:	46002102 	mul.s	$f4,$f4,$f0
    14d0:	460a2080 	add.s	$f2,$f4,$f10
    14d4:	c7aa0020 	lwc1	$f10,32(sp)
    14d8:	c7a4002c 	lwc1	$f4,44(sp)
    14dc:	460a2301 	sub.s	$f12,$f4,$f10
    14e0:	c7a40024 	lwc1	$f4,36(sp)
    14e4:	c7aa0028 	lwc1	$f10,40(sp)
    14e8:	46044381 	sub.s	$f14,$f8,$f4
    14ec:	46021202 	mul.s	$f8,$f2,$f2
    14f0:	460a3401 	sub.s	$f16,$f6,$f10
    14f4:	460c6102 	mul.s	$f4,$f12,$f12
    14f8:	00000000 	nop
    14fc:	460e7182 	mul.s	$f6,$f14,$f14
    1500:	46062280 	add.s	$f10,$f4,$f6
    1504:	46108102 	mul.s	$f4,$f16,$f16
    1508:	46045180 	add.s	$f6,$f10,$f4
    150c:	4608303e 	c.le.s	$f6,$f8
    1510:	00000000 	nop
    1514:	45000033 	bc1f	15e4 <func_80B8E404+0x230>
    1518:	00000000 	nop
    151c:	0c000000 	jal	0 <func_80B8D050>
    1520:	afa70088 	sw	a3,136(sp)
    1524:	8fa70088 	lw	a3,136(sp)
    1528:	c7aa0090 	lwc1	$f10,144(sp)
    152c:	c7a60094 	lwc1	$f6,148(sp)
    1530:	c4e40000 	lwc1	$f4,0(a3)
    1534:	27a4005c 	addiu	a0,sp,92
    1538:	27a50050 	addiu	a1,sp,80
    153c:	46045201 	sub.s	$f8,$f10,$f4
    1540:	e7a80050 	swc1	$f8,80(sp)
    1544:	c4ea0004 	lwc1	$f10,4(a3)
    1548:	c7a80098 	lwc1	$f8,152(sp)
    154c:	460a3101 	sub.s	$f4,$f6,$f10
    1550:	e7a40054 	swc1	$f4,84(sp)
    1554:	c4e60008 	lwc1	$f6,8(a3)
    1558:	46064281 	sub.s	$f10,$f8,$f6
    155c:	0c000000 	jal	0 <func_80B8D050>
    1560:	e7aa0058 	swc1	$f10,88(sp)
    1564:	44802000 	mtc1	zero,$f4
    1568:	c7a80090 	lwc1	$f8,144(sp)
    156c:	4604003c 	c.lt.s	$f0,$f4
    1570:	00000000 	nop
    1574:	45020004 	bc1fl	1588 <func_80B8E404+0x1d4>
    1578:	c6060000 	lwc1	$f6,0(s0)
    157c:	10000019 	b	15e4 <func_80B8E404+0x230>
    1580:	00001025 	move	v0,zero
    1584:	c6060000 	lwc1	$f6,0(s0)
    1588:	c7a40094 	lwc1	$f4,148(sp)
    158c:	27a4005c 	addiu	a0,sp,92
    1590:	46064281 	sub.s	$f10,$f8,$f6
    1594:	27a50044 	addiu	a1,sp,68
    1598:	e7aa0044 	swc1	$f10,68(sp)
    159c:	c6080004 	lwc1	$f8,4(s0)
    15a0:	c7aa0098 	lwc1	$f10,152(sp)
    15a4:	46082181 	sub.s	$f6,$f4,$f8
    15a8:	e7a60048 	swc1	$f6,72(sp)
    15ac:	c6040008 	lwc1	$f4,8(s0)
    15b0:	46045201 	sub.s	$f8,$f10,$f4
    15b4:	0c000000 	jal	0 <func_80B8D050>
    15b8:	e7a8004c 	swc1	$f8,76(sp)
    15bc:	44803000 	mtc1	zero,$f6
    15c0:	00000000 	nop
    15c4:	4600303c 	c.lt.s	$f6,$f0
    15c8:	00000000 	nop
    15cc:	45000003 	bc1f	15dc <func_80B8E404+0x228>
    15d0:	00000000 	nop
    15d4:	10000003 	b	15e4 <func_80B8E404+0x230>
    15d8:	00001025 	move	v0,zero
    15dc:	10000001 	b	15e4 <func_80B8E404+0x230>
    15e0:	24020001 	li	v0,1
    15e4:	8fbf001c 	lw	ra,28(sp)
    15e8:	8fb00018 	lw	s0,24(sp)
    15ec:	27bd0088 	addiu	sp,sp,136
    15f0:	03e00008 	jr	ra
    15f4:	00000000 	nop
	...
