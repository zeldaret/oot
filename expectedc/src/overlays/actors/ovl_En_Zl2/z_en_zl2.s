
build/src/overlays/actors/ovl_En_Zl2/z_en_zl2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnZl2_Destroy>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	0c000000 	jal	0 <EnZl2_Destroy>
       c:	2484014c 	addiu	a0,a0,332
      10:	8fbf0014 	lw	ra,20(sp)
      14:	27bd0018 	addiu	sp,sp,24
      18:	03e00008 	jr	ra
      1c:	00000000 	nop

00000020 <func_80B4E9B0>:
      20:	27bdffc0 	addiu	sp,sp,-64
      24:	afbf0014 	sw	ra,20(sp)
      28:	848e0192 	lh	t6,402(a0)
      2c:	00803025 	move	a2,a0
      30:	24c30192 	addiu	v1,a2,402
      34:	15c00003 	bnez	t6,44 <func_80B4E9B0+0x24>
      38:	00001025 	move	v0,zero
      3c:	10000005 	b	54 <func_80B4E9B0+0x34>
      40:	24830192 	addiu	v1,a0,402
      44:	846f0000 	lh	t7,0(v1)
      48:	25f8ffff 	addiu	t8,t7,-1
      4c:	a4780000 	sh	t8,0(v1)
      50:	84620000 	lh	v0,0(v1)
      54:	14400008 	bnez	v0,78 <func_80B4E9B0+0x58>
      58:	2404003c 	li	a0,60
      5c:	2405003c 	li	a1,60
      60:	afa3001c 	sw	v1,28(sp)
      64:	0c000000 	jal	0 <EnZl2_Destroy>
      68:	afa60040 	sw	a2,64(sp)
      6c:	8fa3001c 	lw	v1,28(sp)
      70:	8fa60040 	lw	a2,64(sp)
      74:	a4620000 	sh	v0,0(v1)
      78:	84790000 	lh	t9,0(v1)
      7c:	24c20190 	addiu	v0,a2,400
      80:	a4590000 	sh	t9,0(v0)
      84:	84440000 	lh	a0,0(v0)
      88:	28810003 	slti	at,a0,3
      8c:	54200004 	bnezl	at,a0 <func_80B4E9B0+0x80>
      90:	a4c40194 	sh	a0,404(a2)
      94:	a4400000 	sh	zero,0(v0)
      98:	84440000 	lh	a0,0(v0)
      9c:	a4c40194 	sh	a0,404(a2)
      a0:	8fbf0014 	lw	ra,20(sp)
      a4:	27bd0040 	addiu	sp,sp,64
      a8:	03e00008 	jr	ra
      ac:	00000000 	nop

000000b0 <func_80B4EA40>:
      b0:	3c014040 	lui	at,0x4040
      b4:	44813000 	mtc1	at,$f6
      b8:	c484027c 	lwc1	$f4,636(a0)
      bc:	24820190 	addiu	v0,a0,400
      c0:	3c0140c0 	lui	at,0x40c0
      c4:	4606203c 	c.lt.s	$f4,$f6
      c8:	2483027c 	addiu	v1,a0,636
      cc:	45020005 	bc1fl	e4 <func_80B4EA40+0x34>
      d0:	c4600000 	lwc1	$f0,0(v1)
      d4:	a4400000 	sh	zero,0(v0)
      d8:	10000019 	b	140 <func_80B4EA40+0x90>
      dc:	2483027c 	addiu	v1,a0,636
      e0:	c4600000 	lwc1	$f0,0(v1)
      e4:	44814000 	mtc1	at,$f8
      e8:	24820190 	addiu	v0,a0,400
      ec:	240e0001 	li	t6,1
      f0:	4608003c 	c.lt.s	$f0,$f8
      f4:	3c014110 	lui	at,0x4110
      f8:	45020004 	bc1fl	10c <func_80B4EA40+0x5c>
      fc:	44815000 	mtc1	at,$f10
     100:	1000000f 	b	140 <func_80B4EA40+0x90>
     104:	a44e0000 	sh	t6,0(v0)
     108:	44815000 	mtc1	at,$f10
     10c:	240f0002 	li	t7,2
     110:	24820190 	addiu	v0,a0,400
     114:	460a003c 	c.lt.s	$f0,$f10
     118:	24180005 	li	t8,5
     11c:	45020005 	bc1fl	134 <func_80B4EA40+0x84>
     120:	a4580000 	sh	t8,0(v0)
     124:	24820190 	addiu	v0,a0,400
     128:	10000005 	b	140 <func_80B4EA40+0x90>
     12c:	a44f0000 	sh	t7,0(v0)
     130:	a4580000 	sh	t8,0(v0)
     134:	84590000 	lh	t9,0(v0)
     138:	03e00008 	jr	ra
     13c:	a4990194 	sh	t9,404(a0)
     140:	3c013f80 	lui	at,0x3f80
     144:	44819000 	mtc1	at,$f18
     148:	c4700000 	lwc1	$f16,0(v1)
     14c:	46128100 	add.s	$f4,$f16,$f18
     150:	e4640000 	swc1	$f4,0(v1)
     154:	84480000 	lh	t0,0(v0)
     158:	a4880194 	sh	t0,404(a0)
     15c:	03e00008 	jr	ra
     160:	00000000 	nop

00000164 <func_80B4EAF4>:
     164:	27bdffe8 	addiu	sp,sp,-24
     168:	afbf0014 	sw	ra,20(sp)
     16c:	3c014000 	lui	at,0x4000
     170:	44813000 	mtc1	at,$f6
     174:	c484027c 	lwc1	$f4,636(a0)
     178:	24820190 	addiu	v0,a0,400
     17c:	240e0005 	li	t6,5
     180:	4606203c 	c.lt.s	$f4,$f6
     184:	3c014080 	lui	at,0x4080
     188:	2483027c 	addiu	v1,a0,636
     18c:	45020005 	bc1fl	1a4 <func_80B4EAF4+0x40>
     190:	c4600000 	lwc1	$f0,0(v1)
     194:	a44e0000 	sh	t6,0(v0)
     198:	10000018 	b	1fc <func_80B4EAF4+0x98>
     19c:	2483027c 	addiu	v1,a0,636
     1a0:	c4600000 	lwc1	$f0,0(v1)
     1a4:	44814000 	mtc1	at,$f8
     1a8:	24820190 	addiu	v0,a0,400
     1ac:	240f0002 	li	t7,2
     1b0:	4608003c 	c.lt.s	$f0,$f8
     1b4:	3c0140c0 	lui	at,0x40c0
     1b8:	45020004 	bc1fl	1cc <func_80B4EAF4+0x68>
     1bc:	44815000 	mtc1	at,$f10
     1c0:	1000000e 	b	1fc <func_80B4EAF4+0x98>
     1c4:	a44f0000 	sh	t7,0(v0)
     1c8:	44815000 	mtc1	at,$f10
     1cc:	24820190 	addiu	v0,a0,400
     1d0:	24180001 	li	t8,1
     1d4:	460a003c 	c.lt.s	$f0,$f10
     1d8:	00000000 	nop
     1dc:	45000003 	bc1f	1ec <func_80B4EAF4+0x88>
     1e0:	00000000 	nop
     1e4:	10000005 	b	1fc <func_80B4EAF4+0x98>
     1e8:	a4580000 	sh	t8,0(v0)
     1ec:	0c000000 	jal	0 <EnZl2_Destroy>
     1f0:	00000000 	nop
     1f4:	10000009 	b	21c <func_80B4EAF4+0xb8>
     1f8:	8fbf0014 	lw	ra,20(sp)
     1fc:	3c013f80 	lui	at,0x3f80
     200:	44819000 	mtc1	at,$f18
     204:	c4700000 	lwc1	$f16,0(v1)
     208:	46128100 	add.s	$f4,$f16,$f18
     20c:	e4640000 	swc1	$f4,0(v1)
     210:	84590000 	lh	t9,0(v0)
     214:	a4990194 	sh	t9,404(a0)
     218:	8fbf0014 	lw	ra,20(sp)
     21c:	27bd0018 	addiu	sp,sp,24
     220:	03e00008 	jr	ra
     224:	00000000 	nop

00000228 <func_80B4EBB8>:
     228:	3c014000 	lui	at,0x4000
     22c:	44813000 	mtc1	at,$f6
     230:	c484027c 	lwc1	$f4,636(a0)
     234:	24820190 	addiu	v0,a0,400
     238:	3c014080 	lui	at,0x4080
     23c:	4606203c 	c.lt.s	$f4,$f6
     240:	2483027c 	addiu	v1,a0,636
     244:	45020005 	bc1fl	25c <func_80B4EBB8+0x34>
     248:	c4680000 	lwc1	$f8,0(v1)
     24c:	a4400000 	sh	zero,0(v0)
     250:	10000010 	b	294 <func_80B4EBB8+0x6c>
     254:	2483027c 	addiu	v1,a0,636
     258:	c4680000 	lwc1	$f8,0(v1)
     25c:	44815000 	mtc1	at,$f10
     260:	240e0001 	li	t6,1
     264:	24820190 	addiu	v0,a0,400
     268:	460a403c 	c.lt.s	$f8,$f10
     26c:	240f0002 	li	t7,2
     270:	45020005 	bc1fl	288 <func_80B4EBB8+0x60>
     274:	a44f0000 	sh	t7,0(v0)
     278:	24820190 	addiu	v0,a0,400
     27c:	10000005 	b	294 <func_80B4EBB8+0x6c>
     280:	a44e0000 	sh	t6,0(v0)
     284:	a44f0000 	sh	t7,0(v0)
     288:	84580000 	lh	t8,0(v0)
     28c:	03e00008 	jr	ra
     290:	a4980194 	sh	t8,404(a0)
     294:	3c013f80 	lui	at,0x3f80
     298:	44819000 	mtc1	at,$f18
     29c:	c4700000 	lwc1	$f16,0(v1)
     2a0:	46128100 	add.s	$f4,$f16,$f18
     2a4:	e4640000 	swc1	$f4,0(v1)
     2a8:	84590000 	lh	t9,0(v0)
     2ac:	a4990194 	sh	t9,404(a0)
     2b0:	03e00008 	jr	ra
     2b4:	00000000 	nop

000002b8 <func_80B4EC48>:
     2b8:	27bdffe8 	addiu	sp,sp,-24
     2bc:	afbf0014 	sw	ra,20(sp)
     2c0:	3c014000 	lui	at,0x4000
     2c4:	44813000 	mtc1	at,$f6
     2c8:	c484027c 	lwc1	$f4,636(a0)
     2cc:	24820190 	addiu	v0,a0,400
     2d0:	240e0002 	li	t6,2
     2d4:	4606203c 	c.lt.s	$f4,$f6
     2d8:	3c014080 	lui	at,0x4080
     2dc:	2483027c 	addiu	v1,a0,636
     2e0:	45020005 	bc1fl	2f8 <func_80B4EC48+0x40>
     2e4:	c4680000 	lwc1	$f8,0(v1)
     2e8:	a44e0000 	sh	t6,0(v0)
     2ec:	1000000f 	b	32c <func_80B4EC48+0x74>
     2f0:	2483027c 	addiu	v1,a0,636
     2f4:	c4680000 	lwc1	$f8,0(v1)
     2f8:	44815000 	mtc1	at,$f10
     2fc:	24820190 	addiu	v0,a0,400
     300:	240f0001 	li	t7,1
     304:	460a403c 	c.lt.s	$f8,$f10
     308:	00000000 	nop
     30c:	45000003 	bc1f	31c <func_80B4EC48+0x64>
     310:	00000000 	nop
     314:	10000005 	b	32c <func_80B4EC48+0x74>
     318:	a44f0000 	sh	t7,0(v0)
     31c:	0c000000 	jal	0 <EnZl2_Destroy>
     320:	00000000 	nop
     324:	10000009 	b	34c <func_80B4EC48+0x94>
     328:	8fbf0014 	lw	ra,20(sp)
     32c:	3c013f80 	lui	at,0x3f80
     330:	44819000 	mtc1	at,$f18
     334:	c4700000 	lwc1	$f16,0(v1)
     338:	46128100 	add.s	$f4,$f16,$f18
     33c:	e4640000 	swc1	$f4,0(v1)
     340:	84580000 	lh	t8,0(v0)
     344:	a4980194 	sh	t8,404(a0)
     348:	8fbf0014 	lw	ra,20(sp)
     34c:	27bd0018 	addiu	sp,sp,24
     350:	03e00008 	jr	ra
     354:	00000000 	nop

00000358 <func_80B4ECE8>:
     358:	afa50004 	sw	a1,4(sp)
     35c:	00052c00 	sll	a1,a1,0x10
     360:	00052c03 	sra	a1,a1,0x10
     364:	a4850190 	sh	a1,400(a0)
     368:	848e0190 	lh	t6,400(a0)
     36c:	03e00008 	jr	ra
     370:	a48e0194 	sh	t6,404(a0)

00000374 <func_80B4ED04>:
     374:	afa50004 	sw	a1,4(sp)
     378:	00052c00 	sll	a1,a1,0x10
     37c:	00052c03 	sra	a1,a1,0x10
     380:	03e00008 	jr	ra
     384:	a4850194 	sh	a1,404(a0)

00000388 <func_80B4ED18>:
     388:	afa50004 	sw	a1,4(sp)
     38c:	00052c00 	sll	a1,a1,0x10
     390:	00052c03 	sra	a1,a1,0x10
     394:	03e00008 	jr	ra
     398:	a4850198 	sh	a1,408(a0)

0000039c <func_80B4ED2C>:
     39c:	27bdffe0 	addiu	sp,sp,-32
     3a0:	3c0141f0 	lui	at,0x41f0
     3a4:	44810000 	mtc1	at,$f0
     3a8:	afa50024 	sw	a1,36(sp)
     3ac:	00802825 	move	a1,a0
     3b0:	afbf001c 	sw	ra,28(sp)
     3b4:	afa40020 	sw	a0,32(sp)
     3b8:	240e0005 	li	t6,5
     3bc:	44070000 	mfc1	a3,$f0
     3c0:	afae0014 	sw	t6,20(sp)
     3c4:	8fa40024 	lw	a0,36(sp)
     3c8:	3c064296 	lui	a2,0x4296
     3cc:	0c000000 	jal	0 <EnZl2_Destroy>
     3d0:	e7a00010 	swc1	$f0,16(sp)
     3d4:	8fbf001c 	lw	ra,28(sp)
     3d8:	27bd0020 	addiu	sp,sp,32
     3dc:	03e00008 	jr	ra
     3e0:	00000000 	nop

000003e4 <EnZl2_FrameUpdateMatrix>:
     3e4:	27bdffe8 	addiu	sp,sp,-24
     3e8:	afbf0014 	sw	ra,20(sp)
     3ec:	0c000000 	jal	0 <EnZl2_Destroy>
     3f0:	2484014c 	addiu	a0,a0,332
     3f4:	8fbf0014 	lw	ra,20(sp)
     3f8:	27bd0018 	addiu	sp,sp,24
     3fc:	03e00008 	jr	ra
     400:	00000000 	nop

00000404 <EnZl2_GetNpcAction>:
     404:	908e1d6c 	lbu	t6,7532(a0)
     408:	00057880 	sll	t7,a1,0x2
     40c:	008fc021 	addu	t8,a0,t7
     410:	11c00003 	beqz	t6,420 <EnZl2_GetNpcAction+0x1c>
     414:	00001025 	move	v0,zero
     418:	03e00008 	jr	ra
     41c:	8f021d8c 	lw	v0,7564(t8)
     420:	03e00008 	jr	ra
     424:	00000000 	nop

00000428 <func_80B4EDB8>:
     428:	27bdffe8 	addiu	sp,sp,-24
     42c:	00803825 	move	a3,a0
     430:	afbf0014 	sw	ra,20(sp)
     434:	afa5001c 	sw	a1,28(sp)
     438:	00a02025 	move	a0,a1
     43c:	00c02825 	move	a1,a2
     440:	0c000000 	jal	0 <EnZl2_Destroy>
     444:	afa70018 	sw	a3,24(sp)
     448:	10400013 	beqz	v0,498 <func_80B4EDB8+0x70>
     44c:	8fa70018 	lw	a3,24(sp)
     450:	8c4e000c 	lw	t6,12(v0)
     454:	448e2000 	mtc1	t6,$f4
     458:	00000000 	nop
     45c:	468021a0 	cvt.s.w	$f6,$f4
     460:	e4e60024 	swc1	$f6,36(a3)
     464:	8c4f0010 	lw	t7,16(v0)
     468:	448f4000 	mtc1	t7,$f8
     46c:	00000000 	nop
     470:	468042a0 	cvt.s.w	$f10,$f8
     474:	e4ea0028 	swc1	$f10,40(a3)
     478:	8c580014 	lw	t8,20(v0)
     47c:	44988000 	mtc1	t8,$f16
     480:	00000000 	nop
     484:	468084a0 	cvt.s.w	$f18,$f16
     488:	e4f2002c 	swc1	$f18,44(a3)
     48c:	84430008 	lh	v1,8(v0)
     490:	a4e300b6 	sh	v1,182(a3)
     494:	a4e30032 	sh	v1,50(a3)
     498:	8fbf0014 	lw	ra,20(sp)
     49c:	27bd0018 	addiu	sp,sp,24
     4a0:	03e00008 	jr	ra
     4a4:	00000000 	nop

000004a8 <func_80B4EE38>:
     4a8:	afa50004 	sw	a1,4(sp)
     4ac:	8c8e024c 	lw	t6,588(a0)
     4b0:	00052c00 	sll	a1,a1,0x10
     4b4:	00052c03 	sra	a1,a1,0x10
     4b8:	11c00043 	beqz	t6,5c8 <func_80B4EE38+0x120>
     4bc:	00065040 	sll	t2,a2,0x1
     4c0:	00067840 	sll	t7,a2,0x1
     4c4:	008f4021 	addu	t0,a0,t7
     4c8:	8519020c 	lh	t9,524(t0)
     4cc:	851801dc 	lh	t8,476(t0)
     4d0:	850901ac 	lh	t1,428(t0)
     4d4:	00b93823 	subu	a3,a1,t9
     4d8:	44872000 	mtc1	a3,$f4
     4dc:	34018001 	li	at,0x8001
     4e0:	03051821 	addu	v1,t8,a1
     4e4:	46802020 	cvt.s.w	$f0,$f4
     4e8:	00031c00 	sll	v1,v1,0x10
     4ec:	00031c03 	sra	v1,v1,0x10
     4f0:	01201025 	move	v0,t1
     4f4:	46000005 	abs.s	$f0,$f0
     4f8:	4600018d 	trunc.w.s	$f6,$f0
     4fc:	440b3000 	mfc1	t3,$f6
     500:	00000000 	nop
     504:	0161082a 	slt	at,t3,at
     508:	14200007 	bnez	at,528 <func_80B4EE38+0x80>
     50c:	00000000 	nop
     510:	18a00004 	blez	a1,524 <func_80B4EE38+0x7c>
     514:	3c010001 	lui	at,0x1
     518:	3c01ffff 	lui	at,0xffff
     51c:	10000002 	b	528 <func_80B4EE38+0x80>
     520:	00e13821 	addu	a3,a3,at
     524:	00e13821 	addu	a3,a3,at
     528:	10e00006 	beqz	a3,544 <func_80B4EE38+0x9c>
     52c:	00e26023 	subu	t4,a3,v0
     530:	05810003 	bgez	t4,540 <func_80B4EE38+0x98>
     534:	000c6903 	sra	t5,t4,0x4
     538:	2581000f 	addiu	at,t4,15
     53c:	00016903 	sra	t5,at,0x4
     540:	004d1021 	addu	v0,v0,t5
     544:	10400006 	beqz	v0,560 <func_80B4EE38+0xb8>
     548:	00653823 	subu	a3,v1,a1
     54c:	2401000a 	li	at,10
     550:	0041001a 	div	zero,v0,at
     554:	00007012 	mflo	t6
     558:	004e1023 	subu	v0,v0,t6
     55c:	00000000 	nop
     560:	00073c00 	sll	a3,a3,0x10
     564:	00073c03 	sra	a3,a3,0x10
     568:	10e00005 	beqz	a3,580 <func_80B4EE38+0xd8>
     56c:	24010032 	li	at,50
     570:	00e1001a 	div	zero,a3,at
     574:	00007812 	mflo	t7
     578:	004f1023 	subu	v0,v0,t7
     57c:	00000000 	nop
     580:	01220019 	multu	t1,v0
     584:	00621821 	addu	v1,v1,v0
     588:	00653823 	subu	a3,v1,a1
     58c:	00073c00 	sll	a3,a3,0x10
     590:	00073c03 	sra	a3,a3,0x10
     594:	28e1ff9d 	slti	at,a3,-99
     598:	0000c012 	mflo	t8
     59c:	5f000008 	bgtzl	t8,5c0 <func_80B4EE38+0x118>
     5a0:	0065c823 	subu	t9,v1,a1
     5a4:	14200005 	bnez	at,5bc <func_80B4EE38+0x114>
     5a8:	28e10064 	slti	at,a3,100
     5ac:	50200004 	beqzl	at,5c0 <func_80B4EE38+0x118>
     5b0:	0065c823 	subu	t9,v1,a1
     5b4:	00a01825 	move	v1,a1
     5b8:	00001025 	move	v0,zero
     5bc:	0065c823 	subu	t9,v1,a1
     5c0:	a50201ac 	sh	v0,428(t0)
     5c4:	a51901dc 	sh	t9,476(t0)
     5c8:	008a5821 	addu	t3,a0,t2
     5cc:	03e00008 	jr	ra
     5d0:	a565020c 	sh	a1,524(t3)

000005d4 <func_80B4EF64>:
     5d4:	24080002 	li	t0,2
     5d8:	00803825 	move	a3,a0
     5dc:	14c80004 	bne	a2,t0,5f0 <func_80B4EF64+0x1c>
     5e0:	afa50004 	sw	a1,4(sp)
     5e4:	24043a98 	li	a0,15000
     5e8:	1000001c 	b	65c <func_80B4EF64+0x88>
     5ec:	00004825 	move	t1,zero
     5f0:	24010005 	li	at,5
     5f4:	14c10003 	bne	a2,at,604 <func_80B4EF64+0x30>
     5f8:	240432c8 	li	a0,13000
     5fc:	10000017 	b	65c <func_80B4EF64+0x88>
     600:	24090003 	li	t1,3
     604:	24010008 	li	at,8
     608:	14c10003 	bne	a2,at,618 <func_80B4EF64+0x44>
     60c:	24042ee0 	li	a0,12000
     610:	10000012 	b	65c <func_80B4EF64+0x88>
     614:	24090006 	li	t1,6
     618:	2401000b 	li	at,11
     61c:	14c10003 	bne	a2,at,62c <func_80B4EF64+0x58>
     620:	24044000 	li	a0,16384
     624:	1000000d 	b	65c <func_80B4EF64+0x88>
     628:	24090009 	li	t1,9
     62c:	2401000e 	li	at,14
     630:	14c10003 	bne	a2,at,640 <func_80B4EF64+0x6c>
     634:	24044000 	li	a0,16384
     638:	10000008 	b	65c <func_80B4EF64+0x88>
     63c:	2409000c 	li	t1,12
     640:	24010011 	li	at,17
     644:	14c10004 	bne	a2,at,658 <func_80B4EF64+0x84>
     648:	24044000 	li	a0,16384
     64c:	24044000 	li	a0,16384
     650:	10000002 	b	65c <func_80B4EF64+0x88>
     654:	2409000f 	li	t1,15
     658:	24090012 	li	t1,18
     65c:	8cee024c 	lw	t6,588(a3)
     660:	00067840 	sll	t7,a2,0x1
     664:	00ef2821 	addu	a1,a3,t7
     668:	11c00088 	beqz	t6,88c <func_80B4EF64+0x2b8>
     66c:	87b90006 	lh	t9,6(sp)
     670:	84ad020c 	lh	t5,524(a1)
     674:	84b801dc 	lh	t8,476(a1)
     678:	84ac01ac 	lh	t4,428(a1)
     67c:	032d5023 	subu	t2,t9,t5
     680:	448a2000 	mtc1	t2,$f4
     684:	03191821 	addu	v1,t8,t9
     688:	34018001 	li	at,0x8001
     68c:	46802020 	cvt.s.w	$f0,$f4
     690:	00031c00 	sll	v1,v1,0x10
     694:	0009c040 	sll	t8,t1,0x1
     698:	00031c03 	sra	v1,v1,0x10
     69c:	00f86821 	addu	t5,a3,t8
     6a0:	01801025 	move	v0,t4
     6a4:	46000005 	abs.s	$f0,$f0
     6a8:	4600018d 	trunc.w.s	$f6,$f0
     6ac:	440f3000 	mfc1	t7,$f6
     6b0:	00000000 	nop
     6b4:	01e1082a 	slt	at,t7,at
     6b8:	14200007 	bnez	at,6d8 <func_80B4EF64+0x104>
     6bc:	00000000 	nop
     6c0:	1b200004 	blez	t9,6d4 <func_80B4EF64+0x100>
     6c4:	3c010001 	lui	at,0x1
     6c8:	3c01ffff 	lui	at,0xffff
     6cc:	10000002 	b	6d8 <func_80B4EF64+0x104>
     6d0:	01415021 	addu	t2,t2,at
     6d4:	01415021 	addu	t2,t2,at
     6d8:	0520000a 	bltz	t1,704 <func_80B4EF64+0x130>
     6dc:	24010003 	li	at,3
     6e0:	85ab01ac 	lh	t3,428(t5)
     6e4:	05600003 	bltz	t3,6f4 <func_80B4EF64+0x120>
     6e8:	000b4823 	negu	t1,t3
     6ec:	10000001 	b	6f4 <func_80B4EF64+0x120>
     6f0:	01604825 	move	t1,t3
     6f4:	0121001a 	div	zero,t1,at
     6f8:	00007012 	mflo	t6
     6fc:	014e5021 	addu	t2,t2,t6
     700:	00000000 	nop
     704:	11400007 	beqz	t2,724 <func_80B4EF64+0x150>
     708:	00644823 	subu	t1,v1,a0
     70c:	01427823 	subu	t7,t2,v0
     710:	05e10003 	bgez	t7,720 <func_80B4EF64+0x14c>
     714:	000fc903 	sra	t9,t7,0x4
     718:	25e1000f 	addiu	at,t7,15
     71c:	0001c903 	sra	t9,at,0x4
     720:	00591021 	addu	v0,v0,t9
     724:	10400006 	beqz	v0,740 <func_80B4EF64+0x16c>
     728:	00094c00 	sll	t1,t1,0x10
     72c:	2401000a 	li	at,10
     730:	0041001a 	div	zero,v0,at
     734:	0000c012 	mflo	t8
     738:	00581023 	subu	v0,v0,t8
     73c:	00000000 	nop
     740:	00094c03 	sra	t1,t1,0x10
     744:	11200005 	beqz	t1,75c <func_80B4EF64+0x188>
     748:	24010032 	li	at,50
     74c:	0121001a 	div	zero,t1,at
     750:	00006812 	mflo	t5
     754:	004d1023 	subu	v0,v0,t5
     758:	00000000 	nop
     75c:	01820019 	multu	t4,v0
     760:	00621821 	addu	v1,v1,v0
     764:	00644823 	subu	t1,v1,a0
     768:	00094c00 	sll	t1,t1,0x10
     76c:	00094c03 	sra	t1,t1,0x10
     770:	2921ff9d 	slti	at,t1,-99
     774:	00007012 	mflo	t6
     778:	1dc00007 	bgtz	t6,798 <func_80B4EF64+0x1c4>
     77c:	00000000 	nop
     780:	14200005 	bnez	at,798 <func_80B4EF64+0x1c4>
     784:	29210064 	slti	at,t1,100
     788:	10200003 	beqz	at,798 <func_80B4EF64+0x1c4>
     78c:	00000000 	nop
     790:	00801825 	move	v1,a0
     794:	00001025 	move	v0,zero
     798:	54c80039 	bnel	a2,t0,880 <func_80B4EF64+0x2ac>
     79c:	a4a201ac 	sh	v0,428(a1)
     7a0:	8ce8019c 	lw	t0,412(a3)
     7a4:	24010005 	li	at,5
     7a8:	11010002 	beq	t0,at,7b4 <func_80B4EF64+0x1e0>
     7ac:	2401001e 	li	at,30
     7b0:	15010015 	bne	t0,at,808 <func_80B4EF64+0x234>
     7b4:	3c010000 	lui	at,0x0
     7b8:	c4e00164 	lwc1	$f0,356(a3)
     7bc:	c42802b0 	lwc1	$f8,688(at)
     7c0:	c4e20278 	lwc1	$f2,632(a3)
     7c4:	46004282 	mul.s	$f10,$f8,$f0
     7c8:	46025403 	div.s	$f16,$f10,$f2
     7cc:	4600848d 	trunc.w.s	$f18,$f16
     7d0:	44199000 	mfc1	t9,$f18
     7d4:	00000000 	nop
     7d8:	03244021 	addu	t0,t9,a0
     7dc:	0103082a 	slt	at,t0,v1
     7e0:	54200027 	bnezl	at,880 <func_80B4EF64+0x2ac>
     7e4:	a4a201ac 	sh	v0,428(a1)
     7e8:	01001825 	move	v1,t0
     7ec:	04410002 	bgez	v0,7f8 <func_80B4EF64+0x224>
     7f0:	00400821 	move	at,v0
     7f4:	24410001 	addiu	at,v0,1
     7f8:	00011043 	sra	v0,at,0x1
     7fc:	00021023 	negu	v0,v0
     800:	1000001f 	b	880 <func_80B4EF64+0x2ac>
     804:	a4a201ac 	sh	v0,428(a1)
     808:	24010006 	li	at,6
     80c:	11010003 	beq	t0,at,81c <func_80B4EF64+0x248>
     810:	2401001f 	li	at,31
     814:	5501000e 	bnel	t0,at,850 <func_80B4EF64+0x27c>
     818:	24010014 	li	at,20
     81c:	24880dac 	addiu	t0,a0,3500
     820:	0103082a 	slt	at,t0,v1
     824:	54200016 	bnezl	at,880 <func_80B4EF64+0x2ac>
     828:	a4a201ac 	sh	v0,428(a1)
     82c:	01001825 	move	v1,t0
     830:	04410002 	bgez	v0,83c <func_80B4EF64+0x268>
     834:	00400821 	move	at,v0
     838:	24410001 	addiu	at,v0,1
     83c:	00011043 	sra	v0,at,0x1
     840:	00021023 	negu	v0,v0
     844:	1000000e 	b	880 <func_80B4EF64+0x2ac>
     848:	a4a201ac 	sh	v0,428(a1)
     84c:	24010014 	li	at,20
     850:	1501000a 	bne	t0,at,87c <func_80B4EF64+0x2a8>
     854:	2488fc18 	addiu	t0,a0,-1000
     858:	0103082a 	slt	at,t0,v1
     85c:	54200008 	bnezl	at,880 <func_80B4EF64+0x2ac>
     860:	a4a201ac 	sh	v0,428(a1)
     864:	01001825 	move	v1,t0
     868:	04410002 	bgez	v0,874 <func_80B4EF64+0x2a0>
     86c:	00400821 	move	at,v0
     870:	24410001 	addiu	at,v0,1
     874:	00011043 	sra	v0,at,0x1
     878:	00021023 	negu	v0,v0
     87c:	a4a201ac 	sh	v0,428(a1)
     880:	87b80006 	lh	t8,6(sp)
     884:	00786823 	subu	t5,v1,t8
     888:	a4ad01dc 	sh	t5,476(a1)
     88c:	87ae0006 	lh	t6,6(sp)
     890:	00067840 	sll	t7,a2,0x1
     894:	00efc821 	addu	t9,a3,t7
     898:	03e00008 	jr	ra
     89c:	a72e020c 	sh	t6,524(t9)

000008a0 <func_80B4F230>:
     8a0:	afa50004 	sw	a1,4(sp)
     8a4:	8c8e024c 	lw	t6,588(a0)
     8a8:	00053c00 	sll	a3,a1,0x10
     8ac:	00073c03 	sra	a3,a3,0x10
     8b0:	11c00082 	beqz	t6,abc <func_80B4F230+0x21c>
     8b4:	00067840 	sll	t7,a2,0x1
     8b8:	008f2821 	addu	a1,a0,t7
     8bc:	84b801dc 	lh	t8,476(a1)
     8c0:	84a901ac 	lh	t1,428(a1)
     8c4:	84b9020c 	lh	t9,524(a1)
     8c8:	03071823 	subu	v1,t8,a3
     8cc:	00034400 	sll	t0,v1,0x10
     8d0:	00084403 	sra	t0,t0,0x10
     8d4:	24010001 	li	at,1
     8d8:	01005025 	move	t2,t0
     8dc:	01201025 	move	v0,t1
     8e0:	14c10004 	bne	a2,at,8f4 <func_80B4F230+0x54>
     8e4:	00f95823 	subu	t3,a3,t9
     8e8:	00006025 	move	t4,zero
     8ec:	1000003b 	b	9dc <func_80B4F230+0x13c>
     8f0:	848d01ac 	lh	t5,428(a0)
     8f4:	24010004 	li	at,4
     8f8:	14c10003 	bne	a2,at,908 <func_80B4F230+0x68>
     8fc:	240c0003 	li	t4,3
     900:	10000036 	b	9dc <func_80B4F230+0x13c>
     904:	848d01b2 	lh	t5,434(a0)
     908:	24010007 	li	at,7
     90c:	14c10003 	bne	a2,at,91c <func_80B4F230+0x7c>
     910:	240c0006 	li	t4,6
     914:	10000031 	b	9dc <func_80B4F230+0x13c>
     918:	848d01b8 	lh	t5,440(a0)
     91c:	2401000a 	li	at,10
     920:	54c1000b 	bnel	a2,at,950 <func_80B4F230+0xb0>
     924:	2401000d 	li	at,13
     928:	848e01be 	lh	t6,446(a0)
     92c:	240c0009 	li	t4,9
     930:	05c20004 	bltzl	t6,944 <func_80B4F230+0xa4>
     934:	848d01be 	lh	t5,446(a0)
     938:	10000028 	b	9dc <func_80B4F230+0x13c>
     93c:	848d01be 	lh	t5,446(a0)
     940:	848d01be 	lh	t5,446(a0)
     944:	10000025 	b	9dc <func_80B4F230+0x13c>
     948:	000d6823 	negu	t5,t5
     94c:	2401000d 	li	at,13
     950:	54c1000b 	bnel	a2,at,980 <func_80B4F230+0xe0>
     954:	24010010 	li	at,16
     958:	848f01c4 	lh	t7,452(a0)
     95c:	240c000c 	li	t4,12
     960:	05e20004 	bltzl	t7,974 <func_80B4F230+0xd4>
     964:	848d01c4 	lh	t5,452(a0)
     968:	1000001c 	b	9dc <func_80B4F230+0x13c>
     96c:	848d01c4 	lh	t5,452(a0)
     970:	848d01c4 	lh	t5,452(a0)
     974:	10000019 	b	9dc <func_80B4F230+0x13c>
     978:	000d6823 	negu	t5,t5
     97c:	24010010 	li	at,16
     980:	54c1000d 	bnel	a2,at,9b8 <func_80B4F230+0x118>
     984:	849901d0 	lh	t9,464(a0)
     988:	849801ca 	lh	t8,458(a0)
     98c:	240c000f 	li	t4,15
     990:	07020005 	bltzl	t8,9a8 <func_80B4F230+0x108>
     994:	848d01ca 	lh	t5,458(a0)
     998:	848d01ca 	lh	t5,458(a0)
     99c:	1000000f 	b	9dc <func_80B4F230+0x13c>
     9a0:	000d6823 	negu	t5,t5
     9a4:	848d01ca 	lh	t5,458(a0)
     9a8:	000d6823 	negu	t5,t5
     9ac:	1000000b 	b	9dc <func_80B4F230+0x13c>
     9b0:	000d6823 	negu	t5,t5
     9b4:	849901d0 	lh	t9,464(a0)
     9b8:	240c0012 	li	t4,18
     9bc:	07220005 	bltzl	t9,9d4 <func_80B4F230+0x134>
     9c0:	848d01d0 	lh	t5,464(a0)
     9c4:	848d01d0 	lh	t5,464(a0)
     9c8:	10000004 	b	9dc <func_80B4F230+0x13c>
     9cc:	000d6823 	negu	t5,t5
     9d0:	848d01d0 	lh	t5,464(a0)
     9d4:	000d6823 	negu	t5,t5
     9d8:	000d6823 	negu	t5,t5
     9dc:	448b2000 	mtc1	t3,$f4
     9e0:	34018001 	li	at,0x8001
     9e4:	46802020 	cvt.s.w	$f0,$f4
     9e8:	46000005 	abs.s	$f0,$f0
     9ec:	4600018d 	trunc.w.s	$f6,$f0
     9f0:	440f3000 	mfc1	t7,$f6
     9f4:	00000000 	nop
     9f8:	01e1082a 	slt	at,t7,at
     9fc:	14200007 	bnez	at,a1c <func_80B4F230+0x17c>
     a00:	00000000 	nop
     a04:	18e00004 	blez	a3,a18 <func_80B4F230+0x178>
     a08:	3c010001 	lui	at,0x1
     a0c:	3c01ffff 	lui	at,0xffff
     a10:	10000002 	b	a1c <func_80B4F230+0x17c>
     a14:	01615821 	addu	t3,t3,at
     a18:	01615821 	addu	t3,t3,at
     a1c:	05800005 	bltz	t4,a34 <func_80B4F230+0x194>
     a20:	24010003 	li	at,3
     a24:	01a1001a 	div	zero,t5,at
     a28:	0000c012 	mflo	t8
     a2c:	01785821 	addu	t3,t3,t8
     a30:	00000000 	nop
     a34:	11600006 	beqz	t3,a50 <func_80B4F230+0x1b0>
     a38:	0162c823 	subu	t9,t3,v0
     a3c:	07210003 	bgez	t9,a4c <func_80B4F230+0x1ac>
     a40:	00197103 	sra	t6,t9,0x4
     a44:	2721000f 	addiu	at,t9,15
     a48:	00017103 	sra	t6,at,0x4
     a4c:	004e1021 	addu	v0,v0,t6
     a50:	10400005 	beqz	v0,a68 <func_80B4F230+0x1c8>
     a54:	2401000a 	li	at,10
     a58:	0041001a 	div	zero,v0,at
     a5c:	00007812 	mflo	t7
     a60:	004f1023 	subu	v0,v0,t7
     a64:	00000000 	nop
     a68:	11000005 	beqz	t0,a80 <func_80B4F230+0x1e0>
     a6c:	24010032 	li	at,50
     a70:	0101001a 	div	zero,t0,at
     a74:	0000c012 	mflo	t8
     a78:	00581023 	subu	v0,v0,t8
     a7c:	00000000 	nop
     a80:	01220019 	multu	t1,v0
     a84:	00621821 	addu	v1,v1,v0
     a88:	2941ff9d 	slti	at,t2,-99
     a8c:	0000c812 	mflo	t9
     a90:	5f200008 	bgtzl	t9,ab4 <func_80B4F230+0x214>
     a94:	00e37021 	addu	t6,a3,v1
     a98:	14200005 	bnez	at,ab0 <func_80B4F230+0x210>
     a9c:	29410064 	slti	at,t2,100
     aa0:	50200004 	beqzl	at,ab4 <func_80B4F230+0x214>
     aa4:	00e37021 	addu	t6,a3,v1
     aa8:	00001825 	move	v1,zero
     aac:	00001025 	move	v0,zero
     ab0:	00e37021 	addu	t6,a3,v1
     ab4:	a4a201ac 	sh	v0,428(a1)
     ab8:	a4ae01dc 	sh	t6,476(a1)
     abc:	00067840 	sll	t7,a2,0x1
     ac0:	008fc021 	addu	t8,a0,t7
     ac4:	03e00008 	jr	ra
     ac8:	a707020c 	sh	a3,524(t8)

00000acc <func_80B4F45C>:
     acc:	27bdff80 	addiu	sp,sp,-128
     ad0:	2401000e 	li	at,14
     ad4:	afbf0014 	sw	ra,20(sp)
     ad8:	afa40080 	sw	a0,128(sp)
     adc:	afa60088 	sw	a2,136(sp)
     ae0:	14a101bb 	bne	a1,at,11d0 <func_80B4F45C+0x704>
     ae4:	afa7008c 	sw	a3,140(sp)
     ae8:	8c840000 	lw	a0,0(a0)
     aec:	0c000000 	jal	0 <EnZl2_Destroy>
     af0:	240501c0 	li	a1,448
     af4:	8fa50098 	lw	a1,152(sp)
     af8:	afa20074 	sw	v0,116(sp)
     afc:	3c18db06 	lui	t8,0xdb06
     b00:	8ca40000 	lw	a0,0(a1)
     b04:	37180030 	ori	t8,t8,0x30
     b08:	248f0008 	addiu	t7,a0,8
     b0c:	acaf0000 	sw	t7,0(a1)
     b10:	ac820004 	sw	v0,4(a0)
     b14:	0c000000 	jal	0 <EnZl2_Destroy>
     b18:	ac980000 	sw	t8,0(a0)
     b1c:	8fa8008c 	lw	t0,140(sp)
     b20:	24070001 	li	a3,1
     b24:	c50c0000 	lwc1	$f12,0(t0)
     b28:	c50e0004 	lwc1	$f14,4(t0)
     b2c:	0c000000 	jal	0 <EnZl2_Destroy>
     b30:	8d060008 	lw	a2,8(t0)
     b34:	8fa20090 	lw	v0,144(sp)
     b38:	24070001 	li	a3,1
     b3c:	84440000 	lh	a0,0(v0)
     b40:	84450002 	lh	a1,2(v0)
     b44:	0c000000 	jal	0 <EnZl2_Destroy>
     b48:	84460004 	lh	a2,4(v0)
     b4c:	0c000000 	jal	0 <EnZl2_Destroy>
     b50:	00000000 	nop
     b54:	3c0143b5 	lui	at,0x43b5
     b58:	44816000 	mtc1	at,$f12
     b5c:	3c01c305 	lui	at,0xc305
     b60:	44817000 	mtc1	at,$f14
     b64:	24060000 	li	a2,0
     b68:	0c000000 	jal	0 <EnZl2_Destroy>
     b6c:	24070001 	li	a3,1
     b70:	0c000000 	jal	0 <EnZl2_Destroy>
     b74:	27a40034 	addiu	a0,sp,52
     b78:	27a40034 	addiu	a0,sp,52
     b7c:	27a5002c 	addiu	a1,sp,44
     b80:	0c000000 	jal	0 <EnZl2_Destroy>
     b84:	00003025 	move	a2,zero
     b88:	0c000000 	jal	0 <EnZl2_Destroy>
     b8c:	8fa40080 	lw	a0,128(sp)
     b90:	1440000d 	bnez	v0,bc8 <func_80B4F45C+0xfc>
     b94:	00000000 	nop
     b98:	8fa40094 	lw	a0,148(sp)
     b9c:	87a5002e 	lh	a1,46(sp)
     ba0:	0c000000 	jal	0 <EnZl2_Destroy>
     ba4:	00003025 	move	a2,zero
     ba8:	8fa40094 	lw	a0,148(sp)
     bac:	87a5002c 	lh	a1,44(sp)
     bb0:	0c000000 	jal	0 <EnZl2_Destroy>
     bb4:	24060001 	li	a2,1
     bb8:	8fa40094 	lw	a0,148(sp)
     bbc:	87a50030 	lh	a1,48(sp)
     bc0:	0c000000 	jal	0 <EnZl2_Destroy>
     bc4:	24060002 	li	a2,2
     bc8:	3c020000 	lui	v0,0x0
     bcc:	8c420000 	lw	v0,0(v0)
     bd0:	8fa30094 	lw	v1,148(sp)
     bd4:	24070001 	li	a3,1
     bd8:	84591492 	lh	t9,5266(v0)
     bdc:	844a1494 	lh	t2,5268(v0)
     be0:	844c1496 	lh	t4,5270(v0)
     be4:	846d01e0 	lh	t5,480(v1)
     be8:	846b01de 	lh	t3,478(v1)
     bec:	846901dc 	lh	t1,476(v1)
     bf0:	018d3021 	addu	a2,t4,t5
     bf4:	014b2821 	addu	a1,t2,t3
     bf8:	03292021 	addu	a0,t9,t1
     bfc:	00042400 	sll	a0,a0,0x10
     c00:	00052c00 	sll	a1,a1,0x10
     c04:	00063400 	sll	a2,a2,0x10
     c08:	246301dc 	addiu	v1,v1,476
     c0c:	afa3001c 	sw	v1,28(sp)
     c10:	00063403 	sra	a2,a2,0x10
     c14:	00052c03 	sra	a1,a1,0x10
     c18:	0c000000 	jal	0 <EnZl2_Destroy>
     c1c:	00042403 	sra	a0,a0,0x10
     c20:	3c01c33c 	lui	at,0xc33c
     c24:	44816000 	mtc1	at,$f12
     c28:	3c01c338 	lui	at,0xc338
     c2c:	44817000 	mtc1	at,$f14
     c30:	24060000 	li	a2,0
     c34:	0c000000 	jal	0 <EnZl2_Destroy>
     c38:	24070001 	li	a3,1
     c3c:	3c050000 	lui	a1,0x0
     c40:	24a50000 	addiu	a1,a1,0
     c44:	8fa40074 	lw	a0,116(sp)
     c48:	0c000000 	jal	0 <EnZl2_Destroy>
     c4c:	24060420 	li	a2,1056
     c50:	0c000000 	jal	0 <EnZl2_Destroy>
     c54:	27a40034 	addiu	a0,sp,52
     c58:	27a40034 	addiu	a0,sp,52
     c5c:	27a5002c 	addiu	a1,sp,44
     c60:	0c000000 	jal	0 <EnZl2_Destroy>
     c64:	00003025 	move	a2,zero
     c68:	0c000000 	jal	0 <EnZl2_Destroy>
     c6c:	8fa40080 	lw	a0,128(sp)
     c70:	14400009 	bnez	v0,c98 <func_80B4F45C+0x1cc>
     c74:	00000000 	nop
     c78:	8fa40094 	lw	a0,148(sp)
     c7c:	87a5002e 	lh	a1,46(sp)
     c80:	0c000000 	jal	0 <EnZl2_Destroy>
     c84:	24060003 	li	a2,3
     c88:	8fa40094 	lw	a0,148(sp)
     c8c:	87a5002c 	lh	a1,44(sp)
     c90:	0c000000 	jal	0 <EnZl2_Destroy>
     c94:	24060004 	li	a2,4
     c98:	3c020000 	lui	v0,0x0
     c9c:	8fa3001c 	lw	v1,28(sp)
     ca0:	8c420000 	lw	v0,0(v0)
     ca4:	24070001 	li	a3,1
     ca8:	846f0006 	lh	t7,6(v1)
     cac:	84790008 	lh	t9,8(v1)
     cb0:	846a000a 	lh	t2,10(v1)
     cb4:	844e1498 	lh	t6,5272(v0)
     cb8:	8458149a 	lh	t8,5274(v0)
     cbc:	8449149c 	lh	t1,5276(v0)
     cc0:	01cf2021 	addu	a0,t6,t7
     cc4:	03192821 	addu	a1,t8,t9
     cc8:	012a3021 	addu	a2,t1,t2
     ccc:	00063400 	sll	a2,a2,0x10
     cd0:	00052c00 	sll	a1,a1,0x10
     cd4:	00042400 	sll	a0,a0,0x10
     cd8:	00042403 	sra	a0,a0,0x10
     cdc:	00052c03 	sra	a1,a1,0x10
     ce0:	0c000000 	jal	0 <EnZl2_Destroy>
     ce4:	00063403 	sra	a2,a2,0x10
     ce8:	3c01c3cd 	lui	at,0xc3cd
     cec:	44816000 	mtc1	at,$f12
     cf0:	3c01c338 	lui	at,0xc338
     cf4:	44817000 	mtc1	at,$f14
     cf8:	24060000 	li	a2,0
     cfc:	0c000000 	jal	0 <EnZl2_Destroy>
     d00:	24070001 	li	a3,1
     d04:	8fa40074 	lw	a0,116(sp)
     d08:	3c050000 	lui	a1,0x0
     d0c:	24a50010 	addiu	a1,a1,16
     d10:	2406044c 	li	a2,1100
     d14:	0c000000 	jal	0 <EnZl2_Destroy>
     d18:	24840040 	addiu	a0,a0,64
     d1c:	0c000000 	jal	0 <EnZl2_Destroy>
     d20:	27a40034 	addiu	a0,sp,52
     d24:	27a40034 	addiu	a0,sp,52
     d28:	27a5002c 	addiu	a1,sp,44
     d2c:	0c000000 	jal	0 <EnZl2_Destroy>
     d30:	00003025 	move	a2,zero
     d34:	0c000000 	jal	0 <EnZl2_Destroy>
     d38:	8fa40080 	lw	a0,128(sp)
     d3c:	14400009 	bnez	v0,d64 <func_80B4F45C+0x298>
     d40:	00000000 	nop
     d44:	8fa40094 	lw	a0,148(sp)
     d48:	87a5002e 	lh	a1,46(sp)
     d4c:	0c000000 	jal	0 <EnZl2_Destroy>
     d50:	24060006 	li	a2,6
     d54:	8fa40094 	lw	a0,148(sp)
     d58:	87a5002c 	lh	a1,44(sp)
     d5c:	0c000000 	jal	0 <EnZl2_Destroy>
     d60:	24060007 	li	a2,7
     d64:	3c020000 	lui	v0,0x0
     d68:	8fa3001c 	lw	v1,28(sp)
     d6c:	8c420000 	lw	v0,0(v0)
     d70:	24070001 	li	a3,1
     d74:	846c000c 	lh	t4,12(v1)
     d78:	846e000e 	lh	t6,14(v1)
     d7c:	84780010 	lh	t8,16(v1)
     d80:	844b149e 	lh	t3,5278(v0)
     d84:	844d14a0 	lh	t5,5280(v0)
     d88:	844f14a2 	lh	t7,5282(v0)
     d8c:	016c2021 	addu	a0,t3,t4
     d90:	01ae2821 	addu	a1,t5,t6
     d94:	01f83021 	addu	a2,t7,t8
     d98:	00063400 	sll	a2,a2,0x10
     d9c:	00052c00 	sll	a1,a1,0x10
     da0:	00042400 	sll	a0,a0,0x10
     da4:	00042403 	sra	a0,a0,0x10
     da8:	00052c03 	sra	a1,a1,0x10
     dac:	0c000000 	jal	0 <EnZl2_Destroy>
     db0:	00063403 	sra	a2,a2,0x10
     db4:	3c010000 	lui	at,0x0
     db8:	c42c02b4 	lwc1	$f12,692(at)
     dbc:	3c01c1d0 	lui	at,0xc1d0
     dc0:	44817000 	mtc1	at,$f14
     dc4:	24060000 	li	a2,0
     dc8:	0c000000 	jal	0 <EnZl2_Destroy>
     dcc:	24070001 	li	a3,1
     dd0:	8fa40074 	lw	a0,116(sp)
     dd4:	3c050000 	lui	a1,0x0
     dd8:	24a50020 	addiu	a1,a1,32
     ddc:	24060460 	li	a2,1120
     de0:	0c000000 	jal	0 <EnZl2_Destroy>
     de4:	24840080 	addiu	a0,a0,128
     de8:	0c000000 	jal	0 <EnZl2_Destroy>
     dec:	00000000 	nop
     df0:	0c000000 	jal	0 <EnZl2_Destroy>
     df4:	00000000 	nop
     df8:	3c010000 	lui	at,0x0
     dfc:	c42c02b8 	lwc1	$f12,696(at)
     e00:	3c010000 	lui	at,0x0
     e04:	3c0643c2 	lui	a2,0x43c2
     e08:	34c68000 	ori	a2,a2,0x8000
     e0c:	c42e02bc 	lwc1	$f14,700(at)
     e10:	0c000000 	jal	0 <EnZl2_Destroy>
     e14:	24070001 	li	a3,1
     e18:	0c000000 	jal	0 <EnZl2_Destroy>
     e1c:	27a40034 	addiu	a0,sp,52
     e20:	27a40034 	addiu	a0,sp,52
     e24:	27a5002c 	addiu	a1,sp,44
     e28:	0c000000 	jal	0 <EnZl2_Destroy>
     e2c:	00003025 	move	a2,zero
     e30:	0c000000 	jal	0 <EnZl2_Destroy>
     e34:	8fa40080 	lw	a0,128(sp)
     e38:	1440000d 	bnez	v0,e70 <func_80B4F45C+0x3a4>
     e3c:	00000000 	nop
     e40:	8fa40094 	lw	a0,148(sp)
     e44:	87a5002e 	lh	a1,46(sp)
     e48:	0c000000 	jal	0 <EnZl2_Destroy>
     e4c:	24060009 	li	a2,9
     e50:	8fa40094 	lw	a0,148(sp)
     e54:	87a5002c 	lh	a1,44(sp)
     e58:	0c000000 	jal	0 <EnZl2_Destroy>
     e5c:	2406000a 	li	a2,10
     e60:	8fa40094 	lw	a0,148(sp)
     e64:	87a50030 	lh	a1,48(sp)
     e68:	0c000000 	jal	0 <EnZl2_Destroy>
     e6c:	2406000b 	li	a2,11
     e70:	3c020000 	lui	v0,0x0
     e74:	8fa3001c 	lw	v1,28(sp)
     e78:	8c420000 	lw	v0,0(v0)
     e7c:	24070001 	li	a3,1
     e80:	84690012 	lh	t1,18(v1)
     e84:	846b0014 	lh	t3,20(v1)
     e88:	846d0016 	lh	t5,22(v1)
     e8c:	845914a4 	lh	t9,5284(v0)
     e90:	844a14a6 	lh	t2,5286(v0)
     e94:	844c14a8 	lh	t4,5288(v0)
     e98:	03292021 	addu	a0,t9,t1
     e9c:	014b2821 	addu	a1,t2,t3
     ea0:	018d3021 	addu	a2,t4,t5
     ea4:	00063400 	sll	a2,a2,0x10
     ea8:	00052c00 	sll	a1,a1,0x10
     eac:	00042400 	sll	a0,a0,0x10
     eb0:	00042403 	sra	a0,a0,0x10
     eb4:	00052c03 	sra	a1,a1,0x10
     eb8:	0c000000 	jal	0 <EnZl2_Destroy>
     ebc:	00063403 	sra	a2,a2,0x10
     ec0:	3c010000 	lui	at,0x0
     ec4:	c42c02c0 	lwc1	$f12,704(at)
     ec8:	3c01bf80 	lui	at,0xbf80
     ecc:	44817000 	mtc1	at,$f14
     ed0:	3c06c040 	lui	a2,0xc040
     ed4:	0c000000 	jal	0 <EnZl2_Destroy>
     ed8:	24070001 	li	a3,1
     edc:	8fa40074 	lw	a0,116(sp)
     ee0:	3c050000 	lui	a1,0x0
     ee4:	24a50030 	addiu	a1,a1,48
     ee8:	24060479 	li	a2,1145
     eec:	0c000000 	jal	0 <EnZl2_Destroy>
     ef0:	248400c0 	addiu	a0,a0,192
     ef4:	0c000000 	jal	0 <EnZl2_Destroy>
     ef8:	27a40034 	addiu	a0,sp,52
     efc:	27a40034 	addiu	a0,sp,52
     f00:	27a5002c 	addiu	a1,sp,44
     f04:	0c000000 	jal	0 <EnZl2_Destroy>
     f08:	00003025 	move	a2,zero
     f0c:	0c000000 	jal	0 <EnZl2_Destroy>
     f10:	8fa40080 	lw	a0,128(sp)
     f14:	1440000d 	bnez	v0,f4c <func_80B4F45C+0x480>
     f18:	00000000 	nop
     f1c:	8fa40094 	lw	a0,148(sp)
     f20:	87a5002e 	lh	a1,46(sp)
     f24:	0c000000 	jal	0 <EnZl2_Destroy>
     f28:	2406000c 	li	a2,12
     f2c:	8fa40094 	lw	a0,148(sp)
     f30:	87a5002c 	lh	a1,44(sp)
     f34:	0c000000 	jal	0 <EnZl2_Destroy>
     f38:	2406000d 	li	a2,13
     f3c:	8fa40094 	lw	a0,148(sp)
     f40:	87a50030 	lh	a1,48(sp)
     f44:	0c000000 	jal	0 <EnZl2_Destroy>
     f48:	2406000e 	li	a2,14
     f4c:	3c020000 	lui	v0,0x0
     f50:	8fa3001c 	lw	v1,28(sp)
     f54:	8c420000 	lw	v0,0(v0)
     f58:	24070001 	li	a3,1
     f5c:	846f0018 	lh	t7,24(v1)
     f60:	8479001a 	lh	t9,26(v1)
     f64:	846a001c 	lh	t2,28(v1)
     f68:	844e14aa 	lh	t6,5290(v0)
     f6c:	845814ac 	lh	t8,5292(v0)
     f70:	844914ae 	lh	t1,5294(v0)
     f74:	01cf2021 	addu	a0,t6,t7
     f78:	03192821 	addu	a1,t8,t9
     f7c:	012a3021 	addu	a2,t1,t2
     f80:	00063400 	sll	a2,a2,0x10
     f84:	00052c00 	sll	a1,a1,0x10
     f88:	00042400 	sll	a0,a0,0x10
     f8c:	00042403 	sra	a0,a0,0x10
     f90:	00052c03 	sra	a1,a1,0x10
     f94:	0c000000 	jal	0 <EnZl2_Destroy>
     f98:	00063403 	sra	a2,a2,0x10
     f9c:	3c01c3df 	lui	at,0xc3df
     fa0:	44816000 	mtc1	at,$f12
     fa4:	3c01c250 	lui	at,0xc250
     fa8:	44817000 	mtc1	at,$f14
     fac:	3c0642a8 	lui	a2,0x42a8
     fb0:	0c000000 	jal	0 <EnZl2_Destroy>
     fb4:	24070001 	li	a3,1
     fb8:	8fa40074 	lw	a0,116(sp)
     fbc:	3c050000 	lui	a1,0x0
     fc0:	24a50040 	addiu	a1,a1,64
     fc4:	2406048c 	li	a2,1164
     fc8:	0c000000 	jal	0 <EnZl2_Destroy>
     fcc:	24840100 	addiu	a0,a0,256
     fd0:	0c000000 	jal	0 <EnZl2_Destroy>
     fd4:	00000000 	nop
     fd8:	0c000000 	jal	0 <EnZl2_Destroy>
     fdc:	00000000 	nop
     fe0:	3c010000 	lui	at,0x0
     fe4:	c42c02c4 	lwc1	$f12,708(at)
     fe8:	3c010000 	lui	at,0x0
     fec:	3c06c3c2 	lui	a2,0xc3c2
     ff0:	34c68000 	ori	a2,a2,0x8000
     ff4:	c42e02c8 	lwc1	$f14,712(at)
     ff8:	0c000000 	jal	0 <EnZl2_Destroy>
     ffc:	24070001 	li	a3,1
    1000:	0c000000 	jal	0 <EnZl2_Destroy>
    1004:	27a40034 	addiu	a0,sp,52
    1008:	27a40034 	addiu	a0,sp,52
    100c:	27a5002c 	addiu	a1,sp,44
    1010:	0c000000 	jal	0 <EnZl2_Destroy>
    1014:	00003025 	move	a2,zero
    1018:	0c000000 	jal	0 <EnZl2_Destroy>
    101c:	8fa40080 	lw	a0,128(sp)
    1020:	1440000d 	bnez	v0,1058 <func_80B4F45C+0x58c>
    1024:	00000000 	nop
    1028:	8fa40094 	lw	a0,148(sp)
    102c:	87a5002e 	lh	a1,46(sp)
    1030:	0c000000 	jal	0 <EnZl2_Destroy>
    1034:	2406000f 	li	a2,15
    1038:	8fa40094 	lw	a0,148(sp)
    103c:	87a5002c 	lh	a1,44(sp)
    1040:	0c000000 	jal	0 <EnZl2_Destroy>
    1044:	24060010 	li	a2,16
    1048:	8fa40094 	lw	a0,148(sp)
    104c:	87a50030 	lh	a1,48(sp)
    1050:	0c000000 	jal	0 <EnZl2_Destroy>
    1054:	24060011 	li	a2,17
    1058:	3c020000 	lui	v0,0x0
    105c:	8fa3001c 	lw	v1,28(sp)
    1060:	8c420000 	lw	v0,0(v0)
    1064:	24070001 	li	a3,1
    1068:	846c001e 	lh	t4,30(v1)
    106c:	846e0020 	lh	t6,32(v1)
    1070:	84780022 	lh	t8,34(v1)
    1074:	844b14b0 	lh	t3,5296(v0)
    1078:	844d14b2 	lh	t5,5298(v0)
    107c:	844f14b4 	lh	t7,5300(v0)
    1080:	016c2021 	addu	a0,t3,t4
    1084:	01ae2821 	addu	a1,t5,t6
    1088:	01f83021 	addu	a2,t7,t8
    108c:	00063400 	sll	a2,a2,0x10
    1090:	00052c00 	sll	a1,a1,0x10
    1094:	00042400 	sll	a0,a0,0x10
    1098:	00042403 	sra	a0,a0,0x10
    109c:	00052c03 	sra	a1,a1,0x10
    10a0:	0c000000 	jal	0 <EnZl2_Destroy>
    10a4:	00063403 	sra	a2,a2,0x10
    10a8:	3c010000 	lui	at,0x0
    10ac:	c42c02cc 	lwc1	$f12,716(at)
    10b0:	3c01bf80 	lui	at,0xbf80
    10b4:	44817000 	mtc1	at,$f14
    10b8:	3c064040 	lui	a2,0x4040
    10bc:	0c000000 	jal	0 <EnZl2_Destroy>
    10c0:	24070001 	li	a3,1
    10c4:	8fa40074 	lw	a0,116(sp)
    10c8:	3c050000 	lui	a1,0x0
    10cc:	24a50050 	addiu	a1,a1,80
    10d0:	240604a5 	li	a2,1189
    10d4:	0c000000 	jal	0 <EnZl2_Destroy>
    10d8:	24840140 	addiu	a0,a0,320
    10dc:	0c000000 	jal	0 <EnZl2_Destroy>
    10e0:	27a40034 	addiu	a0,sp,52
    10e4:	27a40034 	addiu	a0,sp,52
    10e8:	27a5002c 	addiu	a1,sp,44
    10ec:	0c000000 	jal	0 <EnZl2_Destroy>
    10f0:	00003025 	move	a2,zero
    10f4:	0c000000 	jal	0 <EnZl2_Destroy>
    10f8:	8fa40080 	lw	a0,128(sp)
    10fc:	1440000c 	bnez	v0,1130 <func_80B4F45C+0x664>
    1100:	8fa40094 	lw	a0,148(sp)
    1104:	87a5002e 	lh	a1,46(sp)
    1108:	0c000000 	jal	0 <EnZl2_Destroy>
    110c:	24060012 	li	a2,18
    1110:	8fa40094 	lw	a0,148(sp)
    1114:	87a5002c 	lh	a1,44(sp)
    1118:	0c000000 	jal	0 <EnZl2_Destroy>
    111c:	24060013 	li	a2,19
    1120:	8fa40094 	lw	a0,148(sp)
    1124:	87a50030 	lh	a1,48(sp)
    1128:	0c000000 	jal	0 <EnZl2_Destroy>
    112c:	24060014 	li	a2,20
    1130:	3c020000 	lui	v0,0x0
    1134:	8c420000 	lw	v0,0(v0)
    1138:	8fa9001c 	lw	t1,28(sp)
    113c:	24070001 	li	a3,1
    1140:	845914b6 	lh	t9,5302(v0)
    1144:	844b14b8 	lh	t3,5304(v0)
    1148:	844d14ba 	lh	t5,5306(v0)
    114c:	852a0024 	lh	t2,36(t1)
    1150:	852c0026 	lh	t4,38(t1)
    1154:	852e0028 	lh	t6,40(t1)
    1158:	032a2021 	addu	a0,t9,t2
    115c:	016c2821 	addu	a1,t3,t4
    1160:	01ae3021 	addu	a2,t5,t6
    1164:	00063400 	sll	a2,a2,0x10
    1168:	00052c00 	sll	a1,a1,0x10
    116c:	00042400 	sll	a0,a0,0x10
    1170:	00042403 	sra	a0,a0,0x10
    1174:	00052c03 	sra	a1,a1,0x10
    1178:	0c000000 	jal	0 <EnZl2_Destroy>
    117c:	00063403 	sra	a2,a2,0x10
    1180:	3c01c3df 	lui	at,0xc3df
    1184:	44816000 	mtc1	at,$f12
    1188:	3c01c250 	lui	at,0xc250
    118c:	44817000 	mtc1	at,$f14
    1190:	3c06c2a8 	lui	a2,0xc2a8
    1194:	0c000000 	jal	0 <EnZl2_Destroy>
    1198:	24070001 	li	a3,1
    119c:	8fa40074 	lw	a0,116(sp)
    11a0:	3c050000 	lui	a1,0x0
    11a4:	24a50060 	addiu	a1,a1,96
    11a8:	240604b8 	li	a2,1208
    11ac:	0c000000 	jal	0 <EnZl2_Destroy>
    11b0:	24840180 	addiu	a0,a0,384
    11b4:	0c000000 	jal	0 <EnZl2_Destroy>
    11b8:	00000000 	nop
    11bc:	0c000000 	jal	0 <EnZl2_Destroy>
    11c0:	00000000 	nop
    11c4:	8fb80094 	lw	t8,148(sp)
    11c8:	240f0001 	li	t7,1
    11cc:	af0f024c 	sw	t7,588(t8)
    11d0:	8fbf0014 	lw	ra,20(sp)
    11d4:	27bd0080 	addiu	sp,sp,128
    11d8:	00001025 	move	v0,zero
    11dc:	03e00008 	jr	ra
    11e0:	00000000 	nop

000011e4 <EnZl2_PostLimbDraw>:
    11e4:	27bdffc8 	addiu	sp,sp,-56
    11e8:	2401000a 	li	at,10
    11ec:	afbf0014 	sw	ra,20(sp)
    11f0:	afa60040 	sw	a2,64(sp)
    11f4:	14a1004d 	bne	a1,at,132c <EnZl2_PostLimbDraw+0x148>
    11f8:	afa70044 	sw	a3,68(sp)
    11fc:	8fae0048 	lw	t6,72(sp)
    1200:	8dcf0254 	lw	t7,596(t6)
    1204:	51e0000f 	beqzl	t7,1244 <EnZl2_PostLimbDraw+0x60>
    1208:	8c821c44 	lw	v0,7236(a0)
    120c:	94981d74 	lhu	t8,7540(a0)
    1210:	8fb9004c 	lw	t9,76(sp)
    1214:	3c09de00 	lui	t1,0xde00
    1218:	2b010384 	slti	at,t8,900
    121c:	54200009 	bnezl	at,1244 <EnZl2_PostLimbDraw+0x60>
    1220:	8c821c44 	lw	v0,7236(a0)
    1224:	8f220000 	lw	v0,0(t9)
    1228:	3c0a0000 	lui	t2,0x0
    122c:	254a0000 	addiu	t2,t2,0
    1230:	24480008 	addiu	t0,v0,8
    1234:	af280000 	sw	t0,0(t9)
    1238:	ac4a0004 	sw	t2,4(v0)
    123c:	ac490000 	sw	t1,0(v0)
    1240:	8c821c44 	lw	v0,7236(a0)
    1244:	afa40038 	sw	a0,56(sp)
    1248:	0c000000 	jal	0 <EnZl2_Destroy>
    124c:	afa20024 	sw	v0,36(sp)
    1250:	8fa20024 	lw	v0,36(sp)
    1254:	240100ff 	li	at,255
    1258:	3c0c0000 	lui	t4,0x0
    125c:	904b015d 	lbu	t3,349(v0)
    1260:	258c0000 	addiu	t4,t4,0
    1264:	24440a20 	addiu	a0,v0,2592
    1268:	1561002e 	bne	t3,at,1324 <EnZl2_PostLimbDraw+0x140>
    126c:	00000000 	nop
    1270:	0c000000 	jal	0 <EnZl2_Destroy>
    1274:	afac0018 	sw	t4,24(sp)
    1278:	3c014334 	lui	at,0x4334
    127c:	44816000 	mtc1	at,$f12
    1280:	3c010000 	lui	at,0x0
    1284:	3c06c3bb 	lui	a2,0xc3bb
    1288:	34c68000 	ori	a2,a2,0x8000
    128c:	c42e02d0 	lwc1	$f14,720(at)
    1290:	0c000000 	jal	0 <EnZl2_Destroy>
    1294:	24070001 	li	a3,1
    1298:	2404a219 	li	a0,-24039
    129c:	2405ac17 	li	a1,-21481
    12a0:	24063333 	li	a2,13107
    12a4:	0c000000 	jal	0 <EnZl2_Destroy>
    12a8:	24070001 	li	a3,1
    12ac:	3c010000 	lui	at,0x0
    12b0:	c42c02d4 	lwc1	$f12,724(at)
    12b4:	24070001 	li	a3,1
    12b8:	44066000 	mfc1	a2,$f12
    12bc:	0c000000 	jal	0 <EnZl2_Destroy>
    12c0:	46006386 	mov.s	$f14,$f12
    12c4:	8fa7004c 	lw	a3,76(sp)
    12c8:	3c0eda38 	lui	t6,0xda38
    12cc:	35ce0003 	ori	t6,t6,0x3
    12d0:	8ce20000 	lw	v0,0(a3)
    12d4:	3c050000 	lui	a1,0x0
    12d8:	24a50070 	addiu	a1,a1,112
    12dc:	244d0008 	addiu	t5,v0,8
    12e0:	aced0000 	sw	t5,0(a3)
    12e4:	ac4e0000 	sw	t6,0(v0)
    12e8:	8faf0038 	lw	t7,56(sp)
    12ec:	240604e5 	li	a2,1253
    12f0:	8de40000 	lw	a0,0(t7)
    12f4:	0c000000 	jal	0 <EnZl2_Destroy>
    12f8:	afa20020 	sw	v0,32(sp)
    12fc:	8fa30020 	lw	v1,32(sp)
    1300:	3c19de00 	lui	t9,0xde00
    1304:	ac620004 	sw	v0,4(v1)
    1308:	8fb8004c 	lw	t8,76(sp)
    130c:	8f020000 	lw	v0,0(t8)
    1310:	24480008 	addiu	t0,v0,8
    1314:	af080000 	sw	t0,0(t8)
    1318:	ac590000 	sw	t9,0(v0)
    131c:	8fa90018 	lw	t1,24(sp)
    1320:	ac490004 	sw	t1,4(v0)
    1324:	0c000000 	jal	0 <EnZl2_Destroy>
    1328:	00000000 	nop
    132c:	8fbf0014 	lw	ra,20(sp)
    1330:	27bd0038 	addiu	sp,sp,56
    1334:	03e00008 	jr	ra
    1338:	00000000 	nop

0000133c <func_80B4FCCC>:
    133c:	8c820274 	lw	v0,628(a0)
    1340:	3c180001 	lui	t8,0x1
    1344:	3c018000 	lui	at,0x8000
    1348:	00027100 	sll	t6,v0,0x4
    134c:	01c27021 	addu	t6,t6,v0
    1350:	000e7080 	sll	t6,t6,0x2
    1354:	00ae7821 	addu	t7,a1,t6
    1358:	030fc021 	addu	t8,t8,t7
    135c:	8f1817b4 	lw	t8,6068(t8)
    1360:	0301c821 	addu	t9,t8,at
    1364:	3c010000 	lui	at,0x0
    1368:	03e00008 	jr	ra
    136c:	ac390018 	sw	t9,24(at)

00001370 <func_80B4FD00>:
    1370:	27bdffd8 	addiu	sp,sp,-40
    1374:	afbf0024 	sw	ra,36(sp)
    1378:	afa40028 	sw	a0,40(sp)
    137c:	afa5002c 	sw	a1,44(sp)
    1380:	afa60030 	sw	a2,48(sp)
    1384:	afa70034 	sw	a3,52(sp)
    1388:	0c000000 	jal	0 <EnZl2_Destroy>
    138c:	00a02025 	move	a0,a1
    1390:	8fae0038 	lw	t6,56(sp)
    1394:	8fa40028 	lw	a0,40(sp)
    1398:	8fa5002c 	lw	a1,44(sp)
    139c:	15c00007 	bnez	t6,13bc <func_80B4FD00+0x4c>
    13a0:	2484014c 	addiu	a0,a0,332
    13a4:	44822000 	mtc1	v0,$f4
    13a8:	3c013f80 	lui	at,0x3f80
    13ac:	44800000 	mtc1	zero,$f0
    13b0:	44816000 	mtc1	at,$f12
    13b4:	10000006 	b	13d0 <func_80B4FD00+0x60>
    13b8:	468020a0 	cvt.s.w	$f2,$f4
    13bc:	44823000 	mtc1	v0,$f6
    13c0:	3c01bf80 	lui	at,0xbf80
    13c4:	44801000 	mtc1	zero,$f2
    13c8:	44816000 	mtc1	at,$f12
    13cc:	46803020 	cvt.s.w	$f0,$f6
    13d0:	93af0033 	lbu	t7,51(sp)
    13d4:	c7a80034 	lwc1	$f8,52(sp)
    13d8:	44066000 	mfc1	a2,$f12
    13dc:	44070000 	mfc1	a3,$f0
    13e0:	e7a20010 	swc1	$f2,16(sp)
    13e4:	afaf0014 	sw	t7,20(sp)
    13e8:	0c000000 	jal	0 <EnZl2_Destroy>
    13ec:	e7a80018 	swc1	$f8,24(sp)
    13f0:	8fbf0024 	lw	ra,36(sp)
    13f4:	27bd0028 	addiu	sp,sp,40
    13f8:	03e00008 	jr	ra
    13fc:	00000000 	nop

00001400 <func_80B4FD90>:
    1400:	27bdffe0 	addiu	sp,sp,-32
    1404:	afa50024 	sw	a1,36(sp)
    1408:	afbf001c 	sw	ra,28(sp)
    140c:	3c050000 	lui	a1,0x0
    1410:	afa40020 	sw	a0,32(sp)
    1414:	24a50000 	addiu	a1,a1,0
    1418:	afa00010 	sw	zero,16(sp)
    141c:	00003025 	move	a2,zero
    1420:	0c000000 	jal	0 <EnZl2_Destroy>
    1424:	24070000 	li	a3,0
    1428:	8faf0020 	lw	t7,32(sp)
    142c:	240e0001 	li	t6,1
    1430:	adee019c 	sw	t6,412(t7)
    1434:	8fbf001c 	lw	ra,28(sp)
    1438:	27bd0020 	addiu	sp,sp,32
    143c:	03e00008 	jr	ra
    1440:	00000000 	nop

00001444 <func_80B4FDD4>:
    1444:	27bdffe8 	addiu	sp,sp,-24
    1448:	afbf0014 	sw	ra,20(sp)
    144c:	afa40018 	sw	a0,24(sp)
    1450:	2484014c 	addiu	a0,a0,332
    1454:	0c000000 	jal	0 <EnZl2_Destroy>
    1458:	3c054160 	lui	a1,0x4160
    145c:	10400004 	beqz	v0,1470 <func_80B4FDD4+0x2c>
    1460:	8fa40018 	lw	a0,24(sp)
    1464:	248400e4 	addiu	a0,a0,228
    1468:	0c000000 	jal	0 <EnZl2_Destroy>
    146c:	24050802 	li	a1,2050
    1470:	8fbf0014 	lw	ra,20(sp)
    1474:	27bd0018 	addiu	sp,sp,24
    1478:	03e00008 	jr	ra
    147c:	00000000 	nop

00001480 <func_80B4FE10>:
    1480:	27bdffe8 	addiu	sp,sp,-24
    1484:	afbf0014 	sw	ra,20(sp)
    1488:	94821d74 	lhu	v0,7540(a0)
    148c:	2841033e 	slti	at,v0,830
    1490:	14200005 	bnez	at,14a8 <func_80B4FE10+0x28>
    1494:	28410439 	slti	at,v0,1081
    1498:	50200004 	beqzl	at,14ac <func_80B4FE10+0x2c>
    149c:	8fbf0014 	lw	ra,20(sp)
    14a0:	0c000000 	jal	0 <EnZl2_Destroy>
    14a4:	24042098 	li	a0,8344
    14a8:	8fbf0014 	lw	ra,20(sp)
    14ac:	27bd0018 	addiu	sp,sp,24
    14b0:	03e00008 	jr	ra
    14b4:	00000000 	nop

000014b8 <func_80B4FE48>:
    14b8:	27bdffe8 	addiu	sp,sp,-24
    14bc:	afbf0014 	sw	ra,20(sp)
    14c0:	248400e4 	addiu	a0,a0,228
    14c4:	0c000000 	jal	0 <EnZl2_Destroy>
    14c8:	24052086 	li	a1,8326
    14cc:	8fbf0014 	lw	ra,20(sp)
    14d0:	27bd0018 	addiu	sp,sp,24
    14d4:	03e00008 	jr	ra
    14d8:	00000000 	nop

000014dc <func_80B4FE6C>:
    14dc:	27bdffe8 	addiu	sp,sp,-24
    14e0:	afbf0014 	sw	ra,20(sp)
    14e4:	248400e4 	addiu	a0,a0,228
    14e8:	0c000000 	jal	0 <EnZl2_Destroy>
    14ec:	240539c7 	li	a1,14791
    14f0:	8fbf0014 	lw	ra,20(sp)
    14f4:	27bd0018 	addiu	sp,sp,24
    14f8:	03e00008 	jr	ra
    14fc:	00000000 	nop

00001500 <func_80B4FE90>:
    1500:	27bdffe8 	addiu	sp,sp,-24
    1504:	afbf0014 	sw	ra,20(sp)
    1508:	248400e4 	addiu	a0,a0,228
    150c:	0c000000 	jal	0 <EnZl2_Destroy>
    1510:	24056878 	li	a1,26744
    1514:	8fbf0014 	lw	ra,20(sp)
    1518:	27bd0018 	addiu	sp,sp,24
    151c:	03e00008 	jr	ra
    1520:	00000000 	nop

00001524 <func_80B4FEB4>:
    1524:	27bdffe8 	addiu	sp,sp,-24
    1528:	afbf0014 	sw	ra,20(sp)
    152c:	248400e4 	addiu	a0,a0,228
    1530:	0c000000 	jal	0 <EnZl2_Destroy>
    1534:	24056879 	li	a1,26745
    1538:	8fbf0014 	lw	ra,20(sp)
    153c:	27bd0018 	addiu	sp,sp,24
    1540:	03e00008 	jr	ra
    1544:	00000000 	nop

00001548 <func_80B4FED8>:
    1548:	27bdffe8 	addiu	sp,sp,-24
    154c:	afbf0014 	sw	ra,20(sp)
    1550:	248400e4 	addiu	a0,a0,228
    1554:	0c000000 	jal	0 <EnZl2_Destroy>
    1558:	24056875 	li	a1,26741
    155c:	8fbf0014 	lw	ra,20(sp)
    1560:	27bd0018 	addiu	sp,sp,24
    1564:	03e00008 	jr	ra
    1568:	00000000 	nop

0000156c <EnZl2_GiveLightArrows>:
    156c:	27bdffd0 	addiu	sp,sp,-48
    1570:	afbf002c 	sw	ra,44(sp)
    1574:	afa40030 	sw	a0,48(sp)
    1578:	8c8f0244 	lw	t7,580(a0)
    157c:	3c0142a0 	lui	at,0x42a0
    1580:	24a41c24 	addiu	a0,a1,7204
    1584:	15e00017 	bnez	t7,15e4 <EnZl2_GiveLightArrows+0x78>
    1588:	2406008b 	li	a2,139
    158c:	8ca21c44 	lw	v0,7236(a1)
    1590:	44813000 	mtc1	at,$f6
    1594:	24180017 	li	t8,23
    1598:	c4400024 	lwc1	$f0,36(v0)
    159c:	c4440028 	lwc1	$f4,40(v0)
    15a0:	c44c002c 	lwc1	$f12,44(v0)
    15a4:	44070000 	mfc1	a3,$f0
    15a8:	46062080 	add.s	$f2,$f4,$f6
    15ac:	afa50034 	sw	a1,52(sp)
    15b0:	afb80024 	sw	t8,36(sp)
    15b4:	afa00020 	sw	zero,32(sp)
    15b8:	e7a20010 	swc1	$f2,16(sp)
    15bc:	afa0001c 	sw	zero,28(sp)
    15c0:	afa00018 	sw	zero,24(sp)
    15c4:	0c000000 	jal	0 <EnZl2_Destroy>
    15c8:	e7ac0014 	swc1	$f12,20(sp)
    15cc:	8fa40034 	lw	a0,52(sp)
    15d0:	0c000000 	jal	0 <EnZl2_Destroy>
    15d4:	24050012 	li	a1,18
    15d8:	8fa80030 	lw	t0,48(sp)
    15dc:	24190001 	li	t9,1
    15e0:	ad190244 	sw	t9,580(t0)
    15e4:	8fbf002c 	lw	ra,44(sp)
    15e8:	27bd0030 	addiu	sp,sp,48
    15ec:	03e00008 	jr	ra
    15f0:	00000000 	nop

000015f4 <func_80B4FF84>:
    15f4:	27bdffc8 	addiu	sp,sp,-56
    15f8:	afbf0034 	sw	ra,52(sp)
    15fc:	afb00030 	sw	s0,48(sp)
    1600:	8c8e0250 	lw	t6,592(a0)
    1604:	00808025 	move	s0,a0
    1608:	2406005d 	li	a2,93
    160c:	15c0000f 	bnez	t6,164c <func_80B4FF84+0x58>
    1610:	240f0004 	li	t7,4
    1614:	c4800024 	lwc1	$f0,36(a0)
    1618:	c4820028 	lwc1	$f2,40(a0)
    161c:	c48c002c 	lwc1	$f12,44(a0)
    1620:	44070000 	mfc1	a3,$f0
    1624:	afaf0024 	sw	t7,36(sp)
    1628:	afa00020 	sw	zero,32(sp)
    162c:	afa0001c 	sw	zero,28(sp)
    1630:	afa00018 	sw	zero,24(sp)
    1634:	24a41c24 	addiu	a0,a1,7204
    1638:	e7a20010 	swc1	$f2,16(sp)
    163c:	0c000000 	jal	0 <EnZl2_Destroy>
    1640:	e7ac0014 	swc1	$f12,20(sp)
    1644:	24180001 	li	t8,1
    1648:	ae180250 	sw	t8,592(s0)
    164c:	8fbf0034 	lw	ra,52(sp)
    1650:	8fb00030 	lw	s0,48(sp)
    1654:	27bd0038 	addiu	sp,sp,56
    1658:	03e00008 	jr	ra
    165c:	00000000 	nop

00001660 <func_80B4FFF0>:
    1660:	27bdffc0 	addiu	sp,sp,-64
    1664:	afbf003c 	sw	ra,60(sp)
    1668:	afb00038 	sw	s0,56(sp)
    166c:	8c8e0248 	lw	t6,584(a0)
    1670:	00808025 	move	s0,a0
    1674:	00a03025 	move	a2,a1
    1678:	15c0001b 	bnez	t6,16e8 <func_80B4FFF0+0x88>
    167c:	3c0f0000 	lui	t7,0x0
    1680:	8def0000 	lw	t7,0(t7)
    1684:	3c01c1d0 	lui	at,0xc1d0
    1688:	44814000 	mtc1	at,$f8
    168c:	85f8145e 	lh	t8,5214(t7)
    1690:	c4900028 	lwc1	$f16,40(a0)
    1694:	c4800024 	lwc1	$f0,36(a0)
    1698:	44982000 	mtc1	t8,$f4
    169c:	c48c002c 	lwc1	$f12,44(a0)
    16a0:	24a41c24 	addiu	a0,a1,7204
    16a4:	468021a0 	cvt.s.w	$f6,$f4
    16a8:	24194000 	li	t9,16384
    16ac:	24080003 	li	t0,3
    16b0:	afa80028 	sw	t0,40(sp)
    16b4:	afb90020 	sw	t9,32(sp)
    16b8:	02002825 	move	a1,s0
    16bc:	46083280 	add.s	$f10,$f6,$f8
    16c0:	afa00024 	sw	zero,36(sp)
    16c4:	afa0001c 	sw	zero,28(sp)
    16c8:	2407005d 	li	a3,93
    16cc:	46105080 	add.s	$f2,$f10,$f16
    16d0:	e7a00010 	swc1	$f0,16(sp)
    16d4:	e7ac0018 	swc1	$f12,24(sp)
    16d8:	0c000000 	jal	0 <EnZl2_Destroy>
    16dc:	e7a20014 	swc1	$f2,20(sp)
    16e0:	24090001 	li	t1,1
    16e4:	ae090248 	sw	t1,584(s0)
    16e8:	8fbf003c 	lw	ra,60(sp)
    16ec:	8fb00038 	lw	s0,56(sp)
    16f0:	27bd0040 	addiu	sp,sp,64
    16f4:	03e00008 	jr	ra
    16f8:	00000000 	nop

000016fc <func_80B5008C>:
    16fc:	8c82011c 	lw	v0,284(a0)
    1700:	10400011 	beqz	v0,1748 <func_80B5008C+0x4c>
    1704:	00000000 	nop
    1708:	c4840024 	lwc1	$f4,36(a0)
    170c:	3c0e0000 	lui	t6,0x0
    1710:	3c01c1d0 	lui	at,0xc1d0
    1714:	e4440024 	swc1	$f4,36(v0)
    1718:	8dce0000 	lw	t6,0(t6)
    171c:	44815000 	mtc1	at,$f10
    1720:	c4920028 	lwc1	$f18,40(a0)
    1724:	85cf145e 	lh	t7,5214(t6)
    1728:	448f3000 	mtc1	t7,$f6
    172c:	00000000 	nop
    1730:	46803220 	cvt.s.w	$f8,$f6
    1734:	460a4400 	add.s	$f16,$f8,$f10
    1738:	46128100 	add.s	$f4,$f16,$f18
    173c:	e4440028 	swc1	$f4,40(v0)
    1740:	c486002c 	lwc1	$f6,44(a0)
    1744:	e446002c 	swc1	$f6,44(v0)
    1748:	03e00008 	jr	ra
    174c:	00000000 	nop

00001750 <func_80B500E0>:
    1750:	27bdffc0 	addiu	sp,sp,-64
    1754:	afa40040 	sw	a0,64(sp)
    1758:	afbf001c 	sw	ra,28(sp)
    175c:	afa50044 	sw	a1,68(sp)
    1760:	00a02025 	move	a0,a1
    1764:	0c000000 	jal	0 <EnZl2_Destroy>
    1768:	00002825 	move	a1,zero
    176c:	1040002d 	beqz	v0,1824 <func_80B500E0+0xd4>
    1770:	8fae0044 	lw	t6,68(sp)
    1774:	94440004 	lhu	a0,4(v0)
    1778:	94450002 	lhu	a1,2(v0)
    177c:	95c61d74 	lhu	a2,7540(t6)
    1780:	240f0008 	li	t7,8
    1784:	afaf0010 	sw	t7,16(sp)
    1788:	afa2003c 	sw	v0,60(sp)
    178c:	0c000000 	jal	0 <EnZl2_Destroy>
    1790:	24070008 	li	a3,8
    1794:	8fa3003c 	lw	v1,60(sp)
    1798:	8fa20040 	lw	v0,64(sp)
    179c:	8c790010 	lw	t9,16(v1)
    17a0:	8c78000c 	lw	t8,12(v1)
    17a4:	8c690018 	lw	t1,24(v1)
    17a8:	8c680014 	lw	t0,20(v1)
    17ac:	44993000 	mtc1	t9,$f6
    17b0:	8c6b0020 	lw	t3,32(v1)
    17b4:	44982000 	mtc1	t8,$f4
    17b8:	8c6a001c 	lw	t2,28(v1)
    17bc:	44895000 	mtc1	t1,$f10
    17c0:	46803320 	cvt.s.w	$f12,$f6
    17c4:	44884000 	mtc1	t0,$f8
    17c8:	448b3000 	mtc1	t3,$f6
    17cc:	24420024 	addiu	v0,v0,36
    17d0:	468020a0 	cvt.s.w	$f2,$f4
    17d4:	448a2000 	mtc1	t2,$f4
    17d8:	46805420 	cvt.s.w	$f16,$f10
    17dc:	468043a0 	cvt.s.w	$f14,$f8
    17e0:	46803220 	cvt.s.w	$f8,$f6
    17e4:	468024a0 	cvt.s.w	$f18,$f4
    17e8:	e7a80020 	swc1	$f8,32(sp)
    17ec:	46028281 	sub.s	$f10,$f16,$f2
    17f0:	460c9201 	sub.s	$f8,$f18,$f12
    17f4:	46005102 	mul.s	$f4,$f10,$f0
    17f8:	00000000 	nop
    17fc:	46004282 	mul.s	$f10,$f8,$f0
    1800:	46022180 	add.s	$f6,$f4,$f2
    1804:	460c5100 	add.s	$f4,$f10,$f12
    1808:	e4460000 	swc1	$f6,0(v0)
    180c:	e4440004 	swc1	$f4,4(v0)
    1810:	c7a60020 	lwc1	$f6,32(sp)
    1814:	460e3201 	sub.s	$f8,$f6,$f14
    1818:	46004282 	mul.s	$f10,$f8,$f0
    181c:	460e5100 	add.s	$f4,$f10,$f14
    1820:	e4440008 	swc1	$f4,8(v0)
    1824:	8fbf001c 	lw	ra,28(sp)
    1828:	27bd0040 	addiu	sp,sp,64
    182c:	03e00008 	jr	ra
    1830:	00000000 	nop

00001834 <func_80B501C4>:
    1834:	8c82011c 	lw	v0,284(a0)
    1838:	10400005 	beqz	v0,1850 <func_80B501C4+0x1c>
    183c:	00000000 	nop
    1840:	44852000 	mtc1	a1,$f4
    1844:	00000000 	nop
    1848:	468021a0 	cvt.s.w	$f6,$f4
    184c:	e44601a8 	swc1	$f6,424(v0)
    1850:	03e00008 	jr	ra
    1854:	00000000 	nop

00001858 <func_80B501E8>:
    1858:	27bdffe8 	addiu	sp,sp,-24
    185c:	afa40018 	sw	a0,24(sp)
    1860:	afbf0014 	sw	ra,20(sp)
    1864:	afa5001c 	sw	a1,28(sp)
    1868:	00a02025 	move	a0,a1
    186c:	0c000000 	jal	0 <EnZl2_Destroy>
    1870:	00002825 	move	a1,zero
    1874:	10400012 	beqz	v0,18c0 <func_80B501E8+0x68>
    1878:	8fae001c 	lw	t6,28(sp)
    187c:	94440004 	lhu	a0,4(v0)
    1880:	94450002 	lhu	a1,2(v0)
    1884:	0c000000 	jal	0 <EnZl2_Destroy>
    1888:	95c61d74 	lhu	a2,7540(t6)
    188c:	3c013f80 	lui	at,0x3f80
    1890:	44812000 	mtc1	at,$f4
    1894:	3c01437f 	lui	at,0x437f
    1898:	44814000 	mtc1	at,$f8
    189c:	46002181 	sub.s	$f6,$f4,$f0
    18a0:	8fa40018 	lw	a0,24(sp)
    18a4:	46083282 	mul.s	$f10,$f6,$f8
    18a8:	4600540d 	trunc.w.s	$f16,$f10
    18ac:	44058000 	mfc1	a1,$f16
    18b0:	00000000 	nop
    18b4:	ac8501a8 	sw	a1,424(a0)
    18b8:	0c000000 	jal	0 <EnZl2_Destroy>
    18bc:	a08500c8 	sb	a1,200(a0)
    18c0:	8fbf0014 	lw	ra,20(sp)
    18c4:	27bd0018 	addiu	sp,sp,24
    18c8:	03e00008 	jr	ra
    18cc:	00000000 	nop

000018d0 <func_80B50260>:
    18d0:	afa50004 	sw	a1,4(sp)
    18d4:	240e0001 	li	t6,1
    18d8:	ac8e019c 	sw	t6,412(a0)
    18dc:	ac8001a0 	sw	zero,416(a0)
    18e0:	03e00008 	jr	ra
    18e4:	a08000c8 	sb	zero,200(a0)

000018e8 <func_80B50278>:
    18e8:	27bdffe8 	addiu	sp,sp,-24
    18ec:	00803025 	move	a2,a0
    18f0:	afbf0014 	sw	ra,20(sp)
    18f4:	00a02025 	move	a0,a1
    18f8:	00002825 	move	a1,zero
    18fc:	0c000000 	jal	0 <EnZl2_Destroy>
    1900:	afa60018 	sw	a2,24(sp)
    1904:	8c4e000c 	lw	t6,12(v0)
    1908:	8fa60018 	lw	a2,24(sp)
    190c:	241900ff 	li	t9,255
    1910:	448e2000 	mtc1	t6,$f4
    1914:	24080002 	li	t0,2
    1918:	24090001 	li	t1,1
    191c:	468021a0 	cvt.s.w	$f6,$f4
    1920:	e4c60024 	swc1	$f6,36(a2)
    1924:	8c4f0010 	lw	t7,16(v0)
    1928:	448f4000 	mtc1	t7,$f8
    192c:	00000000 	nop
    1930:	468042a0 	cvt.s.w	$f10,$f8
    1934:	e4ca0028 	swc1	$f10,40(a2)
    1938:	8c580014 	lw	t8,20(v0)
    193c:	44988000 	mtc1	t8,$f16
    1940:	00000000 	nop
    1944:	468084a0 	cvt.s.w	$f18,$f16
    1948:	e4d2002c 	swc1	$f18,44(a2)
    194c:	84430008 	lh	v1,8(v0)
    1950:	a0d900c8 	sb	t9,200(a2)
    1954:	acc8019c 	sw	t0,412(a2)
    1958:	acc901a0 	sw	t1,416(a2)
    195c:	a4c300b6 	sh	v1,182(a2)
    1960:	a4c30032 	sh	v1,50(a2)
    1964:	8fbf0014 	lw	ra,20(sp)
    1968:	27bd0018 	addiu	sp,sp,24
    196c:	03e00008 	jr	ra
    1970:	00000000 	nop

00001974 <func_80B50304>:
    1974:	27bdffb8 	addiu	sp,sp,-72
    1978:	afb00020 	sw	s0,32(sp)
    197c:	00808025 	move	s0,a0
    1980:	afbf0024 	sw	ra,36(sp)
    1984:	00a02025 	move	a0,a1
    1988:	0c000000 	jal	0 <EnZl2_Destroy>
    198c:	00002825 	move	a1,zero
    1990:	8c4e0018 	lw	t6,24(v0)
    1994:	8c4f000c 	lw	t7,12(v0)
    1998:	3c050000 	lui	a1,0x0
    199c:	24a50000 	addiu	a1,a1,0
    19a0:	01cfc023 	subu	t8,t6,t7
    19a4:	44982000 	mtc1	t8,$f4
    19a8:	02002025 	move	a0,s0
    19ac:	00003025 	move	a2,zero
    19b0:	468021a0 	cvt.s.w	$f6,$f4
    19b4:	3c07c140 	lui	a3,0xc140
    19b8:	e7a60034 	swc1	$f6,52(sp)
    19bc:	8c480014 	lw	t0,20(v0)
    19c0:	8c590020 	lw	t9,32(v0)
    19c4:	afa00010 	sw	zero,16(sp)
    19c8:	03284823 	subu	t1,t9,t0
    19cc:	44894000 	mtc1	t1,$f8
    19d0:	00000000 	nop
    19d4:	468042a0 	cvt.s.w	$f10,$f8
    19d8:	0c000000 	jal	0 <EnZl2_Destroy>
    19dc:	e7aa0030 	swc1	$f10,48(sp)
    19e0:	44808000 	mtc1	zero,$f16
    19e4:	240a0003 	li	t2,3
    19e8:	240b0001 	li	t3,1
    19ec:	ae0a019c 	sw	t2,412(s0)
    19f0:	ae0b01a0 	sw	t3,416(s0)
    19f4:	260300b4 	addiu	v1,s0,180
    19f8:	240c00ff 	li	t4,255
    19fc:	e610023c 	swc1	$f16,572(s0)
    1a00:	a06c0014 	sb	t4,20(v1)
    1a04:	afa30028 	sw	v1,40(sp)
    1a08:	c7ae0030 	lwc1	$f14,48(sp)
    1a0c:	0c000000 	jal	0 <EnZl2_Destroy>
    1a10:	c7ac0034 	lwc1	$f12,52(sp)
    1a14:	3c010000 	lui	at,0x0
    1a18:	c43202d8 	lwc1	$f18,728(at)
    1a1c:	8fa30028 	lw	v1,40(sp)
    1a20:	46120102 	mul.s	$f4,$f0,$f18
    1a24:	4600218d 	trunc.w.s	$f6,$f4
    1a28:	44023000 	mfc1	v0,$f6
    1a2c:	00000000 	nop
    1a30:	a4620002 	sh	v0,2(v1)
    1a34:	a6020032 	sh	v0,50(s0)
    1a38:	8fbf0024 	lw	ra,36(sp)
    1a3c:	8fb00020 	lw	s0,32(sp)
    1a40:	27bd0048 	addiu	sp,sp,72
    1a44:	03e00008 	jr	ra
    1a48:	00000000 	nop

00001a4c <func_80B503DC>:
    1a4c:	27bdffe8 	addiu	sp,sp,-24
    1a50:	afa40018 	sw	a0,24(sp)
    1a54:	afbf0014 	sw	ra,20(sp)
    1a58:	afa5001c 	sw	a1,28(sp)
    1a5c:	00a02025 	move	a0,a1
    1a60:	0c000000 	jal	0 <EnZl2_Destroy>
    1a64:	00002825 	move	a1,zero
    1a68:	10400008 	beqz	v0,1a8c <func_80B503DC+0x40>
    1a6c:	8fae001c 	lw	t6,28(sp)
    1a70:	95cf1d74 	lhu	t7,7540(t6)
    1a74:	94580004 	lhu	t8,4(v0)
    1a78:	8fa80018 	lw	t0,24(sp)
    1a7c:	01f8082a 	slt	at,t7,t8
    1a80:	14200002 	bnez	at,1a8c <func_80B503DC+0x40>
    1a84:	24190004 	li	t9,4
    1a88:	ad19019c 	sw	t9,412(t0)
    1a8c:	8fbf0014 	lw	ra,20(sp)
    1a90:	27bd0018 	addiu	sp,sp,24
    1a94:	03e00008 	jr	ra
    1a98:	00000000 	nop

00001a9c <func_80B5042C>:
    1a9c:	27bdffe0 	addiu	sp,sp,-32
    1aa0:	afa50024 	sw	a1,36(sp)
    1aa4:	afbf001c 	sw	ra,28(sp)
    1aa8:	3c050000 	lui	a1,0x0
    1aac:	24a50000 	addiu	a1,a1,0
    1ab0:	afa00010 	sw	zero,16(sp)
    1ab4:	afa40020 	sw	a0,32(sp)
    1ab8:	24060002 	li	a2,2
    1abc:	0c000000 	jal	0 <EnZl2_Destroy>
    1ac0:	3c07c100 	lui	a3,0xc100
    1ac4:	8fa40020 	lw	a0,32(sp)
    1ac8:	44802000 	mtc1	zero,$f4
    1acc:	240e0005 	li	t6,5
    1ad0:	240f0001 	li	t7,1
    1ad4:	241800ff 	li	t8,255
    1ad8:	ac8e019c 	sw	t6,412(a0)
    1adc:	ac8f01a0 	sw	t7,416(a0)
    1ae0:	a09800c8 	sb	t8,200(a0)
    1ae4:	e484027c 	swc1	$f4,636(a0)
    1ae8:	8fbf001c 	lw	ra,28(sp)
    1aec:	27bd0020 	addiu	sp,sp,32
    1af0:	03e00008 	jr	ra
    1af4:	00000000 	nop

00001af8 <func_80B50488>:
    1af8:	27bdffe0 	addiu	sp,sp,-32
    1afc:	10a0000d 	beqz	a1,1b34 <func_80B50488+0x3c>
    1b00:	afbf001c 	sw	ra,28(sp)
    1b04:	3c050000 	lui	a1,0x0
    1b08:	24a50000 	addiu	a1,a1,0
    1b0c:	00003025 	move	a2,zero
    1b10:	24070000 	li	a3,0
    1b14:	afa00010 	sw	zero,16(sp)
    1b18:	0c000000 	jal	0 <EnZl2_Destroy>
    1b1c:	afa40020 	sw	a0,32(sp)
    1b20:	8fa40020 	lw	a0,32(sp)
    1b24:	240e0006 	li	t6,6
    1b28:	240f0001 	li	t7,1
    1b2c:	ac8e019c 	sw	t6,412(a0)
    1b30:	ac8f01a0 	sw	t7,416(a0)
    1b34:	8fbf001c 	lw	ra,28(sp)
    1b38:	27bd0020 	addiu	sp,sp,32
    1b3c:	03e00008 	jr	ra
    1b40:	00000000 	nop

00001b44 <func_80B504D4>:
    1b44:	27bdffe0 	addiu	sp,sp,-32
    1b48:	afa50024 	sw	a1,36(sp)
    1b4c:	afbf001c 	sw	ra,28(sp)
    1b50:	3c050000 	lui	a1,0x0
    1b54:	24a50000 	addiu	a1,a1,0
    1b58:	afa00010 	sw	zero,16(sp)
    1b5c:	afa40020 	sw	a0,32(sp)
    1b60:	24060002 	li	a2,2
    1b64:	0c000000 	jal	0 <EnZl2_Destroy>
    1b68:	3c07c100 	lui	a3,0xc100
    1b6c:	8fa40020 	lw	a0,32(sp)
    1b70:	44802000 	mtc1	zero,$f4
    1b74:	240e0007 	li	t6,7
    1b78:	240f0001 	li	t7,1
    1b7c:	24050001 	li	a1,1
    1b80:	ac8e019c 	sw	t6,412(a0)
    1b84:	ac8f01a0 	sw	t7,416(a0)
    1b88:	0c000000 	jal	0 <EnZl2_Destroy>
    1b8c:	e484027c 	swc1	$f4,636(a0)
    1b90:	8fa40020 	lw	a0,32(sp)
    1b94:	241800ff 	li	t8,255
    1b98:	a09800c8 	sb	t8,200(a0)
    1b9c:	8fbf001c 	lw	ra,28(sp)
    1ba0:	27bd0020 	addiu	sp,sp,32
    1ba4:	03e00008 	jr	ra
    1ba8:	00000000 	nop

00001bac <func_80B5053C>:
    1bac:	27bdffe0 	addiu	sp,sp,-32
    1bb0:	afbf001c 	sw	ra,28(sp)
    1bb4:	10a0000a 	beqz	a1,1be0 <func_80B5053C+0x34>
    1bb8:	afa40020 	sw	a0,32(sp)
    1bbc:	3c050000 	lui	a1,0x0
    1bc0:	24a50000 	addiu	a1,a1,0
    1bc4:	00003025 	move	a2,zero
    1bc8:	24070000 	li	a3,0
    1bcc:	0c000000 	jal	0 <EnZl2_Destroy>
    1bd0:	afa00010 	sw	zero,16(sp)
    1bd4:	8faf0020 	lw	t7,32(sp)
    1bd8:	240e0008 	li	t6,8
    1bdc:	adee019c 	sw	t6,412(t7)
    1be0:	8fbf001c 	lw	ra,28(sp)
    1be4:	27bd0020 	addiu	sp,sp,32
    1be8:	03e00008 	jr	ra
    1bec:	00000000 	nop

00001bf0 <func_80B50580>:
    1bf0:	27bdffe0 	addiu	sp,sp,-32
    1bf4:	afa50024 	sw	a1,36(sp)
    1bf8:	afbf001c 	sw	ra,28(sp)
    1bfc:	3c050000 	lui	a1,0x0
    1c00:	24a50000 	addiu	a1,a1,0
    1c04:	afa00010 	sw	zero,16(sp)
    1c08:	afa40020 	sw	a0,32(sp)
    1c0c:	24060002 	li	a2,2
    1c10:	0c000000 	jal	0 <EnZl2_Destroy>
    1c14:	3c07c100 	lui	a3,0xc100
    1c18:	8fa40020 	lw	a0,32(sp)
    1c1c:	240e0009 	li	t6,9
    1c20:	240f0001 	li	t7,1
    1c24:	241800ff 	li	t8,255
    1c28:	ac8e019c 	sw	t6,412(a0)
    1c2c:	ac8f01a0 	sw	t7,416(a0)
    1c30:	a09800c8 	sb	t8,200(a0)
    1c34:	8fbf001c 	lw	ra,28(sp)
    1c38:	27bd0020 	addiu	sp,sp,32
    1c3c:	03e00008 	jr	ra
    1c40:	00000000 	nop

00001c44 <func_80B505D4>:
    1c44:	27bdffe0 	addiu	sp,sp,-32
    1c48:	afbf001c 	sw	ra,28(sp)
    1c4c:	10a0000a 	beqz	a1,1c78 <func_80B505D4+0x34>
    1c50:	afa40020 	sw	a0,32(sp)
    1c54:	3c050000 	lui	a1,0x0
    1c58:	24a50000 	addiu	a1,a1,0
    1c5c:	00003025 	move	a2,zero
    1c60:	24070000 	li	a3,0
    1c64:	0c000000 	jal	0 <EnZl2_Destroy>
    1c68:	afa00010 	sw	zero,16(sp)
    1c6c:	8faf0020 	lw	t7,32(sp)
    1c70:	240e000a 	li	t6,10
    1c74:	adee019c 	sw	t6,412(t7)
    1c78:	8fbf001c 	lw	ra,28(sp)
    1c7c:	27bd0020 	addiu	sp,sp,32
    1c80:	03e00008 	jr	ra
    1c84:	00000000 	nop

00001c88 <func_80B50618>:
    1c88:	27bdffe8 	addiu	sp,sp,-24
    1c8c:	afbf0014 	sw	ra,20(sp)
    1c90:	0c000000 	jal	0 <EnZl2_Destroy>
    1c94:	afa40018 	sw	a0,24(sp)
    1c98:	8faf0018 	lw	t7,24(sp)
    1c9c:	240e000b 	li	t6,11
    1ca0:	adee019c 	sw	t6,412(t7)
    1ca4:	8fbf0014 	lw	ra,20(sp)
    1ca8:	27bd0018 	addiu	sp,sp,24
    1cac:	03e00008 	jr	ra
    1cb0:	00000000 	nop

00001cb4 <func_80B50644>:
    1cb4:	27bdffe8 	addiu	sp,sp,-24
    1cb8:	afbf0014 	sw	ra,20(sp)
    1cbc:	0c000000 	jal	0 <EnZl2_Destroy>
    1cc0:	afa40018 	sw	a0,24(sp)
    1cc4:	8faf0018 	lw	t7,24(sp)
    1cc8:	240e000c 	li	t6,12
    1ccc:	adee019c 	sw	t6,412(t7)
    1cd0:	8fbf0014 	lw	ra,20(sp)
    1cd4:	27bd0018 	addiu	sp,sp,24
    1cd8:	03e00008 	jr	ra
    1cdc:	00000000 	nop

00001ce0 <func_80B50670>:
    1ce0:	27bdffe0 	addiu	sp,sp,-32
    1ce4:	afa50024 	sw	a1,36(sp)
    1ce8:	afbf001c 	sw	ra,28(sp)
    1cec:	3c050000 	lui	a1,0x0
    1cf0:	24a50000 	addiu	a1,a1,0
    1cf4:	afa00010 	sw	zero,16(sp)
    1cf8:	afa40020 	sw	a0,32(sp)
    1cfc:	00003025 	move	a2,zero
    1d00:	0c000000 	jal	0 <EnZl2_Destroy>
    1d04:	3c07c100 	lui	a3,0xc100
    1d08:	8fa40020 	lw	a0,32(sp)
    1d0c:	240e000d 	li	t6,13
    1d10:	240f0001 	li	t7,1
    1d14:	241800ff 	li	t8,255
    1d18:	ac8e019c 	sw	t6,412(a0)
    1d1c:	ac8f01a0 	sw	t7,416(a0)
    1d20:	a09800c8 	sb	t8,200(a0)
    1d24:	8fbf001c 	lw	ra,28(sp)
    1d28:	27bd0020 	addiu	sp,sp,32
    1d2c:	03e00008 	jr	ra
    1d30:	00000000 	nop

00001d34 <func_80B506C4>:
    1d34:	27bdffd8 	addiu	sp,sp,-40
    1d38:	afa5002c 	sw	a1,44(sp)
    1d3c:	afbf0024 	sw	ra,36(sp)
    1d40:	afb00020 	sw	s0,32(sp)
    1d44:	3c050000 	lui	a1,0x0
    1d48:	00808025 	move	s0,a0
    1d4c:	24a50000 	addiu	a1,a1,0
    1d50:	afa00010 	sw	zero,16(sp)
    1d54:	24060002 	li	a2,2
    1d58:	0c000000 	jal	0 <EnZl2_Destroy>
    1d5c:	3c07c100 	lui	a3,0xc100
    1d60:	240e000e 	li	t6,14
    1d64:	240f0001 	li	t7,1
    1d68:	ae0e019c 	sw	t6,412(s0)
    1d6c:	ae0f01a0 	sw	t7,416(s0)
    1d70:	02002025 	move	a0,s0
    1d74:	0c000000 	jal	0 <EnZl2_Destroy>
    1d78:	24050004 	li	a1,4
    1d7c:	02002025 	move	a0,s0
    1d80:	0c000000 	jal	0 <EnZl2_Destroy>
    1d84:	24050002 	li	a1,2
    1d88:	241800ff 	li	t8,255
    1d8c:	a21800c8 	sb	t8,200(s0)
    1d90:	0c000000 	jal	0 <EnZl2_Destroy>
    1d94:	02002025 	move	a0,s0
    1d98:	8fbf0024 	lw	ra,36(sp)
    1d9c:	8fb00020 	lw	s0,32(sp)
    1da0:	27bd0028 	addiu	sp,sp,40
    1da4:	03e00008 	jr	ra
    1da8:	00000000 	nop

00001dac <func_80B5073C>:
    1dac:	27bdffe0 	addiu	sp,sp,-32
    1db0:	afbf001c 	sw	ra,28(sp)
    1db4:	10a0000a 	beqz	a1,1de0 <func_80B5073C+0x34>
    1db8:	afa40020 	sw	a0,32(sp)
    1dbc:	3c050000 	lui	a1,0x0
    1dc0:	24a50000 	addiu	a1,a1,0
    1dc4:	00003025 	move	a2,zero
    1dc8:	24070000 	li	a3,0
    1dcc:	0c000000 	jal	0 <EnZl2_Destroy>
    1dd0:	afa00010 	sw	zero,16(sp)
    1dd4:	8faf0020 	lw	t7,32(sp)
    1dd8:	240e000f 	li	t6,15
    1ddc:	adee019c 	sw	t6,412(t7)
    1de0:	8fbf001c 	lw	ra,28(sp)
    1de4:	27bd0020 	addiu	sp,sp,32
    1de8:	03e00008 	jr	ra
    1dec:	00000000 	nop

00001df0 <func_80B50780>:
    1df0:	27bdffe0 	addiu	sp,sp,-32
    1df4:	afa50024 	sw	a1,36(sp)
    1df8:	afbf001c 	sw	ra,28(sp)
    1dfc:	3c050000 	lui	a1,0x0
    1e00:	24a50000 	addiu	a1,a1,0
    1e04:	afa00010 	sw	zero,16(sp)
    1e08:	afa40020 	sw	a0,32(sp)
    1e0c:	24060002 	li	a2,2
    1e10:	0c000000 	jal	0 <EnZl2_Destroy>
    1e14:	3c07c100 	lui	a3,0xc100
    1e18:	8fa40020 	lw	a0,32(sp)
    1e1c:	240e0010 	li	t6,16
    1e20:	240f0001 	li	t7,1
    1e24:	241800ff 	li	t8,255
    1e28:	ac8e019c 	sw	t6,412(a0)
    1e2c:	ac8f01a0 	sw	t7,416(a0)
    1e30:	a09800c8 	sb	t8,200(a0)
    1e34:	0c000000 	jal	0 <EnZl2_Destroy>
    1e38:	8fa50024 	lw	a1,36(sp)
    1e3c:	8fa40020 	lw	a0,32(sp)
    1e40:	0c000000 	jal	0 <EnZl2_Destroy>
    1e44:	24050003 	li	a1,3
    1e48:	8fbf001c 	lw	ra,28(sp)
    1e4c:	27bd0020 	addiu	sp,sp,32
    1e50:	03e00008 	jr	ra
    1e54:	00000000 	nop

00001e58 <func_80B507E8>:
    1e58:	27bdffe0 	addiu	sp,sp,-32
    1e5c:	afbf001c 	sw	ra,28(sp)
    1e60:	10a0000a 	beqz	a1,1e8c <func_80B507E8+0x34>
    1e64:	afa40020 	sw	a0,32(sp)
    1e68:	3c050000 	lui	a1,0x0
    1e6c:	24a50000 	addiu	a1,a1,0
    1e70:	00003025 	move	a2,zero
    1e74:	24070000 	li	a3,0
    1e78:	0c000000 	jal	0 <EnZl2_Destroy>
    1e7c:	afa00010 	sw	zero,16(sp)
    1e80:	8faf0020 	lw	t7,32(sp)
    1e84:	240e0011 	li	t6,17
    1e88:	adee019c 	sw	t6,412(t7)
    1e8c:	8fbf001c 	lw	ra,28(sp)
    1e90:	27bd0020 	addiu	sp,sp,32
    1e94:	03e00008 	jr	ra
    1e98:	00000000 	nop

00001e9c <func_80B5082C>:
    1e9c:	27bdffe0 	addiu	sp,sp,-32
    1ea0:	afa50024 	sw	a1,36(sp)
    1ea4:	afbf001c 	sw	ra,28(sp)
    1ea8:	3c050000 	lui	a1,0x0
    1eac:	24a50000 	addiu	a1,a1,0
    1eb0:	afa00010 	sw	zero,16(sp)
    1eb4:	afa40020 	sw	a0,32(sp)
    1eb8:	24060002 	li	a2,2
    1ebc:	0c000000 	jal	0 <EnZl2_Destroy>
    1ec0:	3c07c100 	lui	a3,0xc100
    1ec4:	8fa40020 	lw	a0,32(sp)
    1ec8:	240e0012 	li	t6,18
    1ecc:	240f0001 	li	t7,1
    1ed0:	241800ff 	li	t8,255
    1ed4:	ac8e019c 	sw	t6,412(a0)
    1ed8:	ac8f01a0 	sw	t7,416(a0)
    1edc:	a09800c8 	sb	t8,200(a0)
    1ee0:	8fbf001c 	lw	ra,28(sp)
    1ee4:	27bd0020 	addiu	sp,sp,32
    1ee8:	03e00008 	jr	ra
    1eec:	00000000 	nop

00001ef0 <func_80B50880>:
    1ef0:	27bdffe0 	addiu	sp,sp,-32
    1ef4:	10a0000c 	beqz	a1,1f28 <func_80B50880+0x38>
    1ef8:	afbf001c 	sw	ra,28(sp)
    1efc:	3c050000 	lui	a1,0x0
    1f00:	24a50000 	addiu	a1,a1,0
    1f04:	00003025 	move	a2,zero
    1f08:	24070000 	li	a3,0
    1f0c:	afa00010 	sw	zero,16(sp)
    1f10:	0c000000 	jal	0 <EnZl2_Destroy>
    1f14:	afa40020 	sw	a0,32(sp)
    1f18:	8fa40020 	lw	a0,32(sp)
    1f1c:	240e0013 	li	t6,19
    1f20:	0c000000 	jal	0 <EnZl2_Destroy>
    1f24:	ac8e019c 	sw	t6,412(a0)
    1f28:	8fbf001c 	lw	ra,28(sp)
    1f2c:	27bd0020 	addiu	sp,sp,32
    1f30:	03e00008 	jr	ra
    1f34:	00000000 	nop

00001f38 <func_80B508C8>:
    1f38:	27bdffe0 	addiu	sp,sp,-32
    1f3c:	afa50024 	sw	a1,36(sp)
    1f40:	afbf001c 	sw	ra,28(sp)
    1f44:	3c050000 	lui	a1,0x0
    1f48:	24a50000 	addiu	a1,a1,0
    1f4c:	afa00010 	sw	zero,16(sp)
    1f50:	afa40020 	sw	a0,32(sp)
    1f54:	24060002 	li	a2,2
    1f58:	0c000000 	jal	0 <EnZl2_Destroy>
    1f5c:	3c07c100 	lui	a3,0xc100
    1f60:	8fa40020 	lw	a0,32(sp)
    1f64:	240e0014 	li	t6,20
    1f68:	240f0001 	li	t7,1
    1f6c:	24050006 	li	a1,6
    1f70:	ac8e019c 	sw	t6,412(a0)
    1f74:	0c000000 	jal	0 <EnZl2_Destroy>
    1f78:	ac8f01a0 	sw	t7,416(a0)
    1f7c:	8fa40020 	lw	a0,32(sp)
    1f80:	241800ff 	li	t8,255
    1f84:	a09800c8 	sb	t8,200(a0)
    1f88:	8fbf001c 	lw	ra,28(sp)
    1f8c:	27bd0020 	addiu	sp,sp,32
    1f90:	03e00008 	jr	ra
    1f94:	00000000 	nop

00001f98 <func_80B50928>:
    1f98:	27bdffe0 	addiu	sp,sp,-32
    1f9c:	10a0000c 	beqz	a1,1fd0 <func_80B50928+0x38>
    1fa0:	afbf001c 	sw	ra,28(sp)
    1fa4:	3c050000 	lui	a1,0x0
    1fa8:	24a50000 	addiu	a1,a1,0
    1fac:	00003025 	move	a2,zero
    1fb0:	24070000 	li	a3,0
    1fb4:	afa00010 	sw	zero,16(sp)
    1fb8:	0c000000 	jal	0 <EnZl2_Destroy>
    1fbc:	afa40020 	sw	a0,32(sp)
    1fc0:	8fa40020 	lw	a0,32(sp)
    1fc4:	240e0015 	li	t6,21
    1fc8:	0c000000 	jal	0 <EnZl2_Destroy>
    1fcc:	ac8e019c 	sw	t6,412(a0)
    1fd0:	8fbf001c 	lw	ra,28(sp)
    1fd4:	27bd0020 	addiu	sp,sp,32
    1fd8:	03e00008 	jr	ra
    1fdc:	00000000 	nop

00001fe0 <func_80B50970>:
    1fe0:	afa50004 	sw	a1,4(sp)
    1fe4:	240e0016 	li	t6,22
    1fe8:	03e00008 	jr	ra
    1fec:	ac8e019c 	sw	t6,412(a0)

00001ff0 <func_80B50980>:
    1ff0:	afa50004 	sw	a1,4(sp)
    1ff4:	240e0017 	li	t6,23
    1ff8:	240f0002 	li	t7,2
    1ffc:	241800ff 	li	t8,255
    2000:	ac8e019c 	sw	t6,412(a0)
    2004:	ac8f01a0 	sw	t7,416(a0)
    2008:	03e00008 	jr	ra
    200c:	ac9801a8 	sw	t8,424(a0)

00002010 <func_80B509A0>:
    2010:	27bdffe8 	addiu	sp,sp,-24
    2014:	00803025 	move	a2,a0
    2018:	afbf0014 	sw	ra,20(sp)
    201c:	afa5001c 	sw	a1,28(sp)
    2020:	00a02025 	move	a0,a1
    2024:	00002825 	move	a1,zero
    2028:	0c000000 	jal	0 <EnZl2_Destroy>
    202c:	afa60018 	sw	a2,24(sp)
    2030:	1040000c 	beqz	v0,2064 <func_80B509A0+0x54>
    2034:	8fa60018 	lw	a2,24(sp)
    2038:	8fae001c 	lw	t6,28(sp)
    203c:	94580004 	lhu	t8,4(v0)
    2040:	24190018 	li	t9,24
    2044:	95cf1d74 	lhu	t7,7540(t6)
    2048:	00c02025 	move	a0,a2
    204c:	01f8082a 	slt	at,t7,t8
    2050:	54200005 	bnezl	at,2068 <func_80B509A0+0x58>
    2054:	8fbf0014 	lw	ra,20(sp)
    2058:	acd9019c 	sw	t9,412(a2)
    205c:	0c000000 	jal	0 <EnZl2_Destroy>
    2060:	acc001a0 	sw	zero,416(a2)
    2064:	8fbf0014 	lw	ra,20(sp)
    2068:	27bd0018 	addiu	sp,sp,24
    206c:	03e00008 	jr	ra
    2070:	00000000 	nop

00002074 <func_80B50A04>:
    2074:	27bdffd8 	addiu	sp,sp,-40
    2078:	afb00018 	sw	s0,24(sp)
    207c:	00808025 	move	s0,a0
    2080:	afbf001c 	sw	ra,28(sp)
    2084:	00a03025 	move	a2,a1
    2088:	00a02025 	move	a0,a1
    208c:	00002825 	move	a1,zero
    2090:	0c000000 	jal	0 <EnZl2_Destroy>
    2094:	afa6002c 	sw	a2,44(sp)
    2098:	1040005f 	beqz	v0,2218 <func_80B50A04+0x1a4>
    209c:	8fa6002c 	lw	a2,44(sp)
    20a0:	944e0000 	lhu	t6,0(v0)
    20a4:	afae0020 	sw	t6,32(sp)
    20a8:	8e030240 	lw	v1,576(s0)
    20ac:	25d8ffff 	addiu	t8,t6,-1
    20b0:	2f01000f 	sltiu	at,t8,15
    20b4:	51c30059 	beql	t6,v1,221c <func_80B50A04+0x1a8>
    20b8:	8fbf001c 	lw	ra,28(sp)
    20bc:	10200052 	beqz	at,2208 <func_80B50A04+0x194>
    20c0:	3c040000 	lui	a0,0x0
    20c4:	0018c080 	sll	t8,t8,0x2
    20c8:	3c010000 	lui	at,0x0
    20cc:	00380821 	addu	at,at,t8
    20d0:	8c3802dc 	lw	t8,732(at)
    20d4:	03000008 	jr	t8
    20d8:	00000000 	nop
    20dc:	02002025 	move	a0,s0
    20e0:	0c000000 	jal	0 <EnZl2_Destroy>
    20e4:	00c02825 	move	a1,a2
    20e8:	1000004a 	b	2214 <func_80B50A04+0x1a0>
    20ec:	8fb90020 	lw	t9,32(sp)
    20f0:	02002025 	move	a0,s0
    20f4:	0c000000 	jal	0 <EnZl2_Destroy>
    20f8:	00c02825 	move	a1,a2
    20fc:	10000045 	b	2214 <func_80B50A04+0x1a0>
    2100:	8fb90020 	lw	t9,32(sp)
    2104:	02002025 	move	a0,s0
    2108:	0c000000 	jal	0 <EnZl2_Destroy>
    210c:	00c02825 	move	a1,a2
    2110:	10000040 	b	2214 <func_80B50A04+0x1a0>
    2114:	8fb90020 	lw	t9,32(sp)
    2118:	02002025 	move	a0,s0
    211c:	0c000000 	jal	0 <EnZl2_Destroy>
    2120:	00c02825 	move	a1,a2
    2124:	1000003b 	b	2214 <func_80B50A04+0x1a0>
    2128:	8fb90020 	lw	t9,32(sp)
    212c:	02002025 	move	a0,s0
    2130:	0c000000 	jal	0 <EnZl2_Destroy>
    2134:	00c02825 	move	a1,a2
    2138:	10000036 	b	2214 <func_80B50A04+0x1a0>
    213c:	8fb90020 	lw	t9,32(sp)
    2140:	02002025 	move	a0,s0
    2144:	0c000000 	jal	0 <EnZl2_Destroy>
    2148:	00c02825 	move	a1,a2
    214c:	10000031 	b	2214 <func_80B50A04+0x1a0>
    2150:	8fb90020 	lw	t9,32(sp)
    2154:	02002025 	move	a0,s0
    2158:	0c000000 	jal	0 <EnZl2_Destroy>
    215c:	00c02825 	move	a1,a2
    2160:	1000002c 	b	2214 <func_80B50A04+0x1a0>
    2164:	8fb90020 	lw	t9,32(sp)
    2168:	02002025 	move	a0,s0
    216c:	0c000000 	jal	0 <EnZl2_Destroy>
    2170:	00c02825 	move	a1,a2
    2174:	10000027 	b	2214 <func_80B50A04+0x1a0>
    2178:	8fb90020 	lw	t9,32(sp)
    217c:	02002025 	move	a0,s0
    2180:	0c000000 	jal	0 <EnZl2_Destroy>
    2184:	00c02825 	move	a1,a2
    2188:	10000022 	b	2214 <func_80B50A04+0x1a0>
    218c:	8fb90020 	lw	t9,32(sp)
    2190:	02002025 	move	a0,s0
    2194:	0c000000 	jal	0 <EnZl2_Destroy>
    2198:	00c02825 	move	a1,a2
    219c:	1000001d 	b	2214 <func_80B50A04+0x1a0>
    21a0:	8fb90020 	lw	t9,32(sp)
    21a4:	02002025 	move	a0,s0
    21a8:	0c000000 	jal	0 <EnZl2_Destroy>
    21ac:	00c02825 	move	a1,a2
    21b0:	10000018 	b	2214 <func_80B50A04+0x1a0>
    21b4:	8fb90020 	lw	t9,32(sp)
    21b8:	02002025 	move	a0,s0
    21bc:	0c000000 	jal	0 <EnZl2_Destroy>
    21c0:	00c02825 	move	a1,a2
    21c4:	10000013 	b	2214 <func_80B50A04+0x1a0>
    21c8:	8fb90020 	lw	t9,32(sp)
    21cc:	02002025 	move	a0,s0
    21d0:	0c000000 	jal	0 <EnZl2_Destroy>
    21d4:	00c02825 	move	a1,a2
    21d8:	1000000e 	b	2214 <func_80B50A04+0x1a0>
    21dc:	8fb90020 	lw	t9,32(sp)
    21e0:	02002025 	move	a0,s0
    21e4:	0c000000 	jal	0 <EnZl2_Destroy>
    21e8:	00c02825 	move	a1,a2
    21ec:	10000009 	b	2214 <func_80B50A04+0x1a0>
    21f0:	8fb90020 	lw	t9,32(sp)
    21f4:	02002025 	move	a0,s0
    21f8:	0c000000 	jal	0 <EnZl2_Destroy>
    21fc:	00c02825 	move	a1,a2
    2200:	10000004 	b	2214 <func_80B50A04+0x1a0>
    2204:	8fb90020 	lw	t9,32(sp)
    2208:	0c000000 	jal	0 <EnZl2_Destroy>
    220c:	24840080 	addiu	a0,a0,128
    2210:	8fb90020 	lw	t9,32(sp)
    2214:	ae190240 	sw	t9,576(s0)
    2218:	8fbf001c 	lw	ra,28(sp)
    221c:	8fb00018 	lw	s0,24(sp)
    2220:	27bd0028 	addiu	sp,sp,40
    2224:	03e00008 	jr	ra
    2228:	00000000 	nop

0000222c <func_80B50BBC>:
    222c:	27bdffe8 	addiu	sp,sp,-24
    2230:	afbf0014 	sw	ra,20(sp)
    2234:	afa40018 	sw	a0,24(sp)
    2238:	0c000000 	jal	0 <EnZl2_Destroy>
    223c:	afa5001c 	sw	a1,28(sp)
    2240:	8fa40018 	lw	a0,24(sp)
    2244:	0c000000 	jal	0 <EnZl2_Destroy>
    2248:	8fa5001c 	lw	a1,28(sp)
    224c:	8fbf0014 	lw	ra,20(sp)
    2250:	27bd0018 	addiu	sp,sp,24
    2254:	03e00008 	jr	ra
    2258:	00000000 	nop

0000225c <func_80B50BEC>:
    225c:	27bdffe0 	addiu	sp,sp,-32
    2260:	afbf001c 	sw	ra,28(sp)
    2264:	afb00018 	sw	s0,24(sp)
    2268:	00808025 	move	s0,a0
    226c:	0c000000 	jal	0 <EnZl2_Destroy>
    2270:	afa50024 	sw	a1,36(sp)
    2274:	02002025 	move	a0,s0
    2278:	0c000000 	jal	0 <EnZl2_Destroy>
    227c:	8fa50024 	lw	a1,36(sp)
    2280:	0c000000 	jal	0 <EnZl2_Destroy>
    2284:	02002025 	move	a0,s0
    2288:	0c000000 	jal	0 <EnZl2_Destroy>
    228c:	02002025 	move	a0,s0
    2290:	02002025 	move	a0,s0
    2294:	0c000000 	jal	0 <EnZl2_Destroy>
    2298:	8fa50024 	lw	a1,36(sp)
    229c:	8fbf001c 	lw	ra,28(sp)
    22a0:	8fb00018 	lw	s0,24(sp)
    22a4:	27bd0020 	addiu	sp,sp,32
    22a8:	03e00008 	jr	ra
    22ac:	00000000 	nop

000022b0 <func_80B50C40>:
    22b0:	27bdffe0 	addiu	sp,sp,-32
    22b4:	afbf001c 	sw	ra,28(sp)
    22b8:	afb00018 	sw	s0,24(sp)
    22bc:	00808025 	move	s0,a0
    22c0:	0c000000 	jal	0 <EnZl2_Destroy>
    22c4:	afa50024 	sw	a1,36(sp)
    22c8:	0c000000 	jal	0 <EnZl2_Destroy>
    22cc:	02002025 	move	a0,s0
    22d0:	02002025 	move	a0,s0
    22d4:	0c000000 	jal	0 <EnZl2_Destroy>
    22d8:	8fa50024 	lw	a1,36(sp)
    22dc:	0c000000 	jal	0 <EnZl2_Destroy>
    22e0:	02002025 	move	a0,s0
    22e4:	0c000000 	jal	0 <EnZl2_Destroy>
    22e8:	02002025 	move	a0,s0
    22ec:	02002025 	move	a0,s0
    22f0:	0c000000 	jal	0 <EnZl2_Destroy>
    22f4:	8fa50024 	lw	a1,36(sp)
    22f8:	02002025 	move	a0,s0
    22fc:	0c000000 	jal	0 <EnZl2_Destroy>
    2300:	8fa50024 	lw	a1,36(sp)
    2304:	8fbf001c 	lw	ra,28(sp)
    2308:	8fb00018 	lw	s0,24(sp)
    230c:	27bd0020 	addiu	sp,sp,32
    2310:	03e00008 	jr	ra
    2314:	00000000 	nop

00002318 <func_80B50CA8>:
    2318:	27bdffe0 	addiu	sp,sp,-32
    231c:	afbf001c 	sw	ra,28(sp)
    2320:	afb00018 	sw	s0,24(sp)
    2324:	00808025 	move	s0,a0
    2328:	0c000000 	jal	0 <EnZl2_Destroy>
    232c:	afa50024 	sw	a1,36(sp)
    2330:	02002025 	move	a0,s0
    2334:	0c000000 	jal	0 <EnZl2_Destroy>
    2338:	8fa50024 	lw	a1,36(sp)
    233c:	0c000000 	jal	0 <EnZl2_Destroy>
    2340:	02002025 	move	a0,s0
    2344:	0c000000 	jal	0 <EnZl2_Destroy>
    2348:	02002025 	move	a0,s0
    234c:	02002025 	move	a0,s0
    2350:	0c000000 	jal	0 <EnZl2_Destroy>
    2354:	8fa50024 	lw	a1,36(sp)
    2358:	8fbf001c 	lw	ra,28(sp)
    235c:	8fb00018 	lw	s0,24(sp)
    2360:	27bd0020 	addiu	sp,sp,32
    2364:	03e00008 	jr	ra
    2368:	00000000 	nop

0000236c <func_80B50CFC>:
    236c:	27bdffe0 	addiu	sp,sp,-32
    2370:	afbf001c 	sw	ra,28(sp)
    2374:	afb00018 	sw	s0,24(sp)
    2378:	00808025 	move	s0,a0
    237c:	0c000000 	jal	0 <EnZl2_Destroy>
    2380:	afa50024 	sw	a1,36(sp)
    2384:	02002025 	move	a0,s0
    2388:	0c000000 	jal	0 <EnZl2_Destroy>
    238c:	8fa50024 	lw	a1,36(sp)
    2390:	0c000000 	jal	0 <EnZl2_Destroy>
    2394:	02002025 	move	a0,s0
    2398:	0c000000 	jal	0 <EnZl2_Destroy>
    239c:	02002025 	move	a0,s0
    23a0:	02002025 	move	a0,s0
    23a4:	0c000000 	jal	0 <EnZl2_Destroy>
    23a8:	00402825 	move	a1,v0
    23ac:	8fbf001c 	lw	ra,28(sp)
    23b0:	8fb00018 	lw	s0,24(sp)
    23b4:	27bd0020 	addiu	sp,sp,32
    23b8:	03e00008 	jr	ra
    23bc:	00000000 	nop

000023c0 <func_80B50D50>:
    23c0:	27bdffe8 	addiu	sp,sp,-24
    23c4:	afbf0014 	sw	ra,20(sp)
    23c8:	afa40018 	sw	a0,24(sp)
    23cc:	0c000000 	jal	0 <EnZl2_Destroy>
    23d0:	afa5001c 	sw	a1,28(sp)
    23d4:	8fa40018 	lw	a0,24(sp)
    23d8:	0c000000 	jal	0 <EnZl2_Destroy>
    23dc:	8fa5001c 	lw	a1,28(sp)
    23e0:	0c000000 	jal	0 <EnZl2_Destroy>
    23e4:	8fa40018 	lw	a0,24(sp)
    23e8:	8fa40018 	lw	a0,24(sp)
    23ec:	0c000000 	jal	0 <EnZl2_Destroy>
    23f0:	8fa5001c 	lw	a1,28(sp)
    23f4:	8fbf0014 	lw	ra,20(sp)
    23f8:	27bd0018 	addiu	sp,sp,24
    23fc:	03e00008 	jr	ra
    2400:	00000000 	nop

00002404 <func_80B50D94>:
    2404:	27bdffe0 	addiu	sp,sp,-32
    2408:	afbf001c 	sw	ra,28(sp)
    240c:	afb00018 	sw	s0,24(sp)
    2410:	00808025 	move	s0,a0
    2414:	0c000000 	jal	0 <EnZl2_Destroy>
    2418:	afa50024 	sw	a1,36(sp)
    241c:	02002025 	move	a0,s0
    2420:	0c000000 	jal	0 <EnZl2_Destroy>
    2424:	8fa50024 	lw	a1,36(sp)
    2428:	0c000000 	jal	0 <EnZl2_Destroy>
    242c:	02002025 	move	a0,s0
    2430:	0c000000 	jal	0 <EnZl2_Destroy>
    2434:	02002025 	move	a0,s0
    2438:	02002025 	move	a0,s0
    243c:	0c000000 	jal	0 <EnZl2_Destroy>
    2440:	00402825 	move	a1,v0
    2444:	8fbf001c 	lw	ra,28(sp)
    2448:	8fb00018 	lw	s0,24(sp)
    244c:	27bd0020 	addiu	sp,sp,32
    2450:	03e00008 	jr	ra
    2454:	00000000 	nop

00002458 <func_80B50DE8>:
    2458:	27bdffe0 	addiu	sp,sp,-32
    245c:	afbf001c 	sw	ra,28(sp)
    2460:	afb00018 	sw	s0,24(sp)
    2464:	00808025 	move	s0,a0
    2468:	0c000000 	jal	0 <EnZl2_Destroy>
    246c:	afa50024 	sw	a1,36(sp)
    2470:	02002025 	move	a0,s0
    2474:	0c000000 	jal	0 <EnZl2_Destroy>
    2478:	8fa50024 	lw	a1,36(sp)
    247c:	0c000000 	jal	0 <EnZl2_Destroy>
    2480:	02002025 	move	a0,s0
    2484:	0c000000 	jal	0 <EnZl2_Destroy>
    2488:	02002025 	move	a0,s0
    248c:	02002025 	move	a0,s0
    2490:	0c000000 	jal	0 <EnZl2_Destroy>
    2494:	8fa50024 	lw	a1,36(sp)
    2498:	8fbf001c 	lw	ra,28(sp)
    249c:	8fb00018 	lw	s0,24(sp)
    24a0:	27bd0020 	addiu	sp,sp,32
    24a4:	03e00008 	jr	ra
    24a8:	00000000 	nop

000024ac <func_80B50E3C>:
    24ac:	27bdffe0 	addiu	sp,sp,-32
    24b0:	afbf001c 	sw	ra,28(sp)
    24b4:	afb00018 	sw	s0,24(sp)
    24b8:	00808025 	move	s0,a0
    24bc:	0c000000 	jal	0 <EnZl2_Destroy>
    24c0:	afa50024 	sw	a1,36(sp)
    24c4:	02002025 	move	a0,s0
    24c8:	0c000000 	jal	0 <EnZl2_Destroy>
    24cc:	8fa50024 	lw	a1,36(sp)
    24d0:	0c000000 	jal	0 <EnZl2_Destroy>
    24d4:	02002025 	move	a0,s0
    24d8:	0c000000 	jal	0 <EnZl2_Destroy>
    24dc:	02002025 	move	a0,s0
    24e0:	02002025 	move	a0,s0
    24e4:	0c000000 	jal	0 <EnZl2_Destroy>
    24e8:	00402825 	move	a1,v0
    24ec:	8fbf001c 	lw	ra,28(sp)
    24f0:	8fb00018 	lw	s0,24(sp)
    24f4:	27bd0020 	addiu	sp,sp,32
    24f8:	03e00008 	jr	ra
    24fc:	00000000 	nop

00002500 <func_80B50E90>:
    2500:	27bdffe0 	addiu	sp,sp,-32
    2504:	afbf001c 	sw	ra,28(sp)
    2508:	afb00018 	sw	s0,24(sp)
    250c:	00808025 	move	s0,a0
    2510:	0c000000 	jal	0 <EnZl2_Destroy>
    2514:	afa50024 	sw	a1,36(sp)
    2518:	02002025 	move	a0,s0
    251c:	0c000000 	jal	0 <EnZl2_Destroy>
    2520:	8fa50024 	lw	a1,36(sp)
    2524:	0c000000 	jal	0 <EnZl2_Destroy>
    2528:	02002025 	move	a0,s0
    252c:	0c000000 	jal	0 <EnZl2_Destroy>
    2530:	02002025 	move	a0,s0
    2534:	02002025 	move	a0,s0
    2538:	0c000000 	jal	0 <EnZl2_Destroy>
    253c:	8fa50024 	lw	a1,36(sp)
    2540:	8fbf001c 	lw	ra,28(sp)
    2544:	8fb00018 	lw	s0,24(sp)
    2548:	27bd0020 	addiu	sp,sp,32
    254c:	03e00008 	jr	ra
    2550:	00000000 	nop

00002554 <func_80B50EE4>:
    2554:	27bdffe0 	addiu	sp,sp,-32
    2558:	afbf001c 	sw	ra,28(sp)
    255c:	afb00018 	sw	s0,24(sp)
    2560:	00808025 	move	s0,a0
    2564:	0c000000 	jal	0 <EnZl2_Destroy>
    2568:	afa50024 	sw	a1,36(sp)
    256c:	02002025 	move	a0,s0
    2570:	0c000000 	jal	0 <EnZl2_Destroy>
    2574:	8fa50024 	lw	a1,36(sp)
    2578:	0c000000 	jal	0 <EnZl2_Destroy>
    257c:	02002025 	move	a0,s0
    2580:	0c000000 	jal	0 <EnZl2_Destroy>
    2584:	02002025 	move	a0,s0
    2588:	02002025 	move	a0,s0
    258c:	0c000000 	jal	0 <EnZl2_Destroy>
    2590:	8fa50024 	lw	a1,36(sp)
    2594:	8fbf001c 	lw	ra,28(sp)
    2598:	8fb00018 	lw	s0,24(sp)
    259c:	27bd0020 	addiu	sp,sp,32
    25a0:	03e00008 	jr	ra
    25a4:	00000000 	nop

000025a8 <func_80B50F38>:
    25a8:	27bdffe0 	addiu	sp,sp,-32
    25ac:	afbf001c 	sw	ra,28(sp)
    25b0:	afb00018 	sw	s0,24(sp)
    25b4:	00808025 	move	s0,a0
    25b8:	0c000000 	jal	0 <EnZl2_Destroy>
    25bc:	afa50024 	sw	a1,36(sp)
    25c0:	02002025 	move	a0,s0
    25c4:	0c000000 	jal	0 <EnZl2_Destroy>
    25c8:	8fa50024 	lw	a1,36(sp)
    25cc:	0c000000 	jal	0 <EnZl2_Destroy>
    25d0:	02002025 	move	a0,s0
    25d4:	0c000000 	jal	0 <EnZl2_Destroy>
    25d8:	02002025 	move	a0,s0
    25dc:	02002025 	move	a0,s0
    25e0:	0c000000 	jal	0 <EnZl2_Destroy>
    25e4:	8fa50024 	lw	a1,36(sp)
    25e8:	8fbf001c 	lw	ra,28(sp)
    25ec:	8fb00018 	lw	s0,24(sp)
    25f0:	27bd0020 	addiu	sp,sp,32
    25f4:	03e00008 	jr	ra
    25f8:	00000000 	nop

000025fc <func_80B50F8C>:
    25fc:	27bdffe0 	addiu	sp,sp,-32
    2600:	afbf001c 	sw	ra,28(sp)
    2604:	afb00018 	sw	s0,24(sp)
    2608:	00808025 	move	s0,a0
    260c:	0c000000 	jal	0 <EnZl2_Destroy>
    2610:	afa50024 	sw	a1,36(sp)
    2614:	0c000000 	jal	0 <EnZl2_Destroy>
    2618:	8fa40024 	lw	a0,36(sp)
    261c:	02002025 	move	a0,s0
    2620:	0c000000 	jal	0 <EnZl2_Destroy>
    2624:	8fa50024 	lw	a1,36(sp)
    2628:	0c000000 	jal	0 <EnZl2_Destroy>
    262c:	02002025 	move	a0,s0
    2630:	0c000000 	jal	0 <EnZl2_Destroy>
    2634:	02002025 	move	a0,s0
    2638:	02002025 	move	a0,s0
    263c:	0c000000 	jal	0 <EnZl2_Destroy>
    2640:	8fa50024 	lw	a1,36(sp)
    2644:	8fbf001c 	lw	ra,28(sp)
    2648:	8fb00018 	lw	s0,24(sp)
    264c:	27bd0020 	addiu	sp,sp,32
    2650:	03e00008 	jr	ra
    2654:	00000000 	nop

00002658 <func_80B50FE8>:
    2658:	27bdffe8 	addiu	sp,sp,-24
    265c:	afbf0014 	sw	ra,20(sp)
    2660:	afa40018 	sw	a0,24(sp)
    2664:	0c000000 	jal	0 <EnZl2_Destroy>
    2668:	afa5001c 	sw	a1,28(sp)
    266c:	0c000000 	jal	0 <EnZl2_Destroy>
    2670:	8fa4001c 	lw	a0,28(sp)
    2674:	8fa40018 	lw	a0,24(sp)
    2678:	0c000000 	jal	0 <EnZl2_Destroy>
    267c:	8fa5001c 	lw	a1,28(sp)
    2680:	0c000000 	jal	0 <EnZl2_Destroy>
    2684:	8fa40018 	lw	a0,24(sp)
    2688:	8fa40018 	lw	a0,24(sp)
    268c:	0c000000 	jal	0 <EnZl2_Destroy>
    2690:	00402825 	move	a1,v0
    2694:	8fbf0014 	lw	ra,20(sp)
    2698:	27bd0018 	addiu	sp,sp,24
    269c:	03e00008 	jr	ra
    26a0:	00000000 	nop

000026a4 <func_80B51034>:
    26a4:	27bdffe8 	addiu	sp,sp,-24
    26a8:	afbf0014 	sw	ra,20(sp)
    26ac:	afa40018 	sw	a0,24(sp)
    26b0:	0c000000 	jal	0 <EnZl2_Destroy>
    26b4:	afa5001c 	sw	a1,28(sp)
    26b8:	0c000000 	jal	0 <EnZl2_Destroy>
    26bc:	8fa4001c 	lw	a0,28(sp)
    26c0:	8fa40018 	lw	a0,24(sp)
    26c4:	0c000000 	jal	0 <EnZl2_Destroy>
    26c8:	8fa5001c 	lw	a1,28(sp)
    26cc:	0c000000 	jal	0 <EnZl2_Destroy>
    26d0:	8fa40018 	lw	a0,24(sp)
    26d4:	8fa40018 	lw	a0,24(sp)
    26d8:	0c000000 	jal	0 <EnZl2_Destroy>
    26dc:	8fa5001c 	lw	a1,28(sp)
    26e0:	8fbf0014 	lw	ra,20(sp)
    26e4:	27bd0018 	addiu	sp,sp,24
    26e8:	03e00008 	jr	ra
    26ec:	00000000 	nop

000026f0 <func_80B51080>:
    26f0:	27bdffe8 	addiu	sp,sp,-24
    26f4:	afbf0014 	sw	ra,20(sp)
    26f8:	afa40018 	sw	a0,24(sp)
    26fc:	0c000000 	jal	0 <EnZl2_Destroy>
    2700:	afa5001c 	sw	a1,28(sp)
    2704:	0c000000 	jal	0 <EnZl2_Destroy>
    2708:	8fa4001c 	lw	a0,28(sp)
    270c:	8fa40018 	lw	a0,24(sp)
    2710:	0c000000 	jal	0 <EnZl2_Destroy>
    2714:	8fa5001c 	lw	a1,28(sp)
    2718:	0c000000 	jal	0 <EnZl2_Destroy>
    271c:	8fa40018 	lw	a0,24(sp)
    2720:	8fa40018 	lw	a0,24(sp)
    2724:	0c000000 	jal	0 <EnZl2_Destroy>
    2728:	00402825 	move	a1,v0
    272c:	8fbf0014 	lw	ra,20(sp)
    2730:	27bd0018 	addiu	sp,sp,24
    2734:	03e00008 	jr	ra
    2738:	00000000 	nop

0000273c <func_80B510CC>:
    273c:	27bdffe8 	addiu	sp,sp,-24
    2740:	afbf0014 	sw	ra,20(sp)
    2744:	afa40018 	sw	a0,24(sp)
    2748:	0c000000 	jal	0 <EnZl2_Destroy>
    274c:	afa5001c 	sw	a1,28(sp)
    2750:	0c000000 	jal	0 <EnZl2_Destroy>
    2754:	8fa4001c 	lw	a0,28(sp)
    2758:	8fa40018 	lw	a0,24(sp)
    275c:	0c000000 	jal	0 <EnZl2_Destroy>
    2760:	8fa5001c 	lw	a1,28(sp)
    2764:	0c000000 	jal	0 <EnZl2_Destroy>
    2768:	8fa40018 	lw	a0,24(sp)
    276c:	8fa40018 	lw	a0,24(sp)
    2770:	0c000000 	jal	0 <EnZl2_Destroy>
    2774:	8fa5001c 	lw	a1,28(sp)
    2778:	8fbf0014 	lw	ra,20(sp)
    277c:	27bd0018 	addiu	sp,sp,24
    2780:	03e00008 	jr	ra
    2784:	00000000 	nop

00002788 <func_80B51118>:
    2788:	27bdffe8 	addiu	sp,sp,-24
    278c:	afbf0014 	sw	ra,20(sp)
    2790:	afa40018 	sw	a0,24(sp)
    2794:	0c000000 	jal	0 <EnZl2_Destroy>
    2798:	afa5001c 	sw	a1,28(sp)
    279c:	0c000000 	jal	0 <EnZl2_Destroy>
    27a0:	8fa4001c 	lw	a0,28(sp)
    27a4:	8fa40018 	lw	a0,24(sp)
    27a8:	0c000000 	jal	0 <EnZl2_Destroy>
    27ac:	8fa5001c 	lw	a1,28(sp)
    27b0:	0c000000 	jal	0 <EnZl2_Destroy>
    27b4:	8fa40018 	lw	a0,24(sp)
    27b8:	8fa40018 	lw	a0,24(sp)
    27bc:	0c000000 	jal	0 <EnZl2_Destroy>
    27c0:	00402825 	move	a1,v0
    27c4:	8fbf0014 	lw	ra,20(sp)
    27c8:	27bd0018 	addiu	sp,sp,24
    27cc:	03e00008 	jr	ra
    27d0:	00000000 	nop

000027d4 <func_80B51164>:
    27d4:	27bdffe8 	addiu	sp,sp,-24
    27d8:	afbf0014 	sw	ra,20(sp)
    27dc:	afa40018 	sw	a0,24(sp)
    27e0:	0c000000 	jal	0 <EnZl2_Destroy>
    27e4:	afa5001c 	sw	a1,28(sp)
    27e8:	0c000000 	jal	0 <EnZl2_Destroy>
    27ec:	8fa4001c 	lw	a0,28(sp)
    27f0:	8fa40018 	lw	a0,24(sp)
    27f4:	0c000000 	jal	0 <EnZl2_Destroy>
    27f8:	8fa5001c 	lw	a1,28(sp)
    27fc:	0c000000 	jal	0 <EnZl2_Destroy>
    2800:	8fa40018 	lw	a0,24(sp)
    2804:	8fa40018 	lw	a0,24(sp)
    2808:	0c000000 	jal	0 <EnZl2_Destroy>
    280c:	8fa5001c 	lw	a1,28(sp)
    2810:	8fbf0014 	lw	ra,20(sp)
    2814:	27bd0018 	addiu	sp,sp,24
    2818:	03e00008 	jr	ra
    281c:	00000000 	nop

00002820 <func_80B511B0>:
    2820:	27bdffe8 	addiu	sp,sp,-24
    2824:	afbf0014 	sw	ra,20(sp)
    2828:	afa40018 	sw	a0,24(sp)
    282c:	0c000000 	jal	0 <EnZl2_Destroy>
    2830:	afa5001c 	sw	a1,28(sp)
    2834:	0c000000 	jal	0 <EnZl2_Destroy>
    2838:	8fa4001c 	lw	a0,28(sp)
    283c:	8fa40018 	lw	a0,24(sp)
    2840:	0c000000 	jal	0 <EnZl2_Destroy>
    2844:	8fa5001c 	lw	a1,28(sp)
    2848:	0c000000 	jal	0 <EnZl2_Destroy>
    284c:	8fa40018 	lw	a0,24(sp)
    2850:	8fa40018 	lw	a0,24(sp)
    2854:	0c000000 	jal	0 <EnZl2_Destroy>
    2858:	00402825 	move	a1,v0
    285c:	8fbf0014 	lw	ra,20(sp)
    2860:	27bd0018 	addiu	sp,sp,24
    2864:	03e00008 	jr	ra
    2868:	00000000 	nop

0000286c <func_80B511FC>:
    286c:	27bdffe0 	addiu	sp,sp,-32
    2870:	afbf001c 	sw	ra,28(sp)
    2874:	afb00018 	sw	s0,24(sp)
    2878:	00808025 	move	s0,a0
    287c:	0c000000 	jal	0 <EnZl2_Destroy>
    2880:	afa50024 	sw	a1,36(sp)
    2884:	02002025 	move	a0,s0
    2888:	0c000000 	jal	0 <EnZl2_Destroy>
    288c:	8fa50024 	lw	a1,36(sp)
    2890:	0c000000 	jal	0 <EnZl2_Destroy>
    2894:	02002025 	move	a0,s0
    2898:	0c000000 	jal	0 <EnZl2_Destroy>
    289c:	02002025 	move	a0,s0
    28a0:	02002025 	move	a0,s0
    28a4:	0c000000 	jal	0 <EnZl2_Destroy>
    28a8:	8fa50024 	lw	a1,36(sp)
    28ac:	8fbf001c 	lw	ra,28(sp)
    28b0:	8fb00018 	lw	s0,24(sp)
    28b4:	27bd0020 	addiu	sp,sp,32
    28b8:	03e00008 	jr	ra
    28bc:	00000000 	nop

000028c0 <func_80B51250>:
    28c0:	27bdffe0 	addiu	sp,sp,-32
    28c4:	afbf001c 	sw	ra,28(sp)
    28c8:	afb00018 	sw	s0,24(sp)
    28cc:	00808025 	move	s0,a0
    28d0:	0c000000 	jal	0 <EnZl2_Destroy>
    28d4:	afa50024 	sw	a1,36(sp)
    28d8:	0c000000 	jal	0 <EnZl2_Destroy>
    28dc:	02002025 	move	a0,s0
    28e0:	02002025 	move	a0,s0
    28e4:	0c000000 	jal	0 <EnZl2_Destroy>
    28e8:	8fa50024 	lw	a1,36(sp)
    28ec:	0c000000 	jal	0 <EnZl2_Destroy>
    28f0:	02002025 	move	a0,s0
    28f4:	02002025 	move	a0,s0
    28f8:	0c000000 	jal	0 <EnZl2_Destroy>
    28fc:	8fa50024 	lw	a1,36(sp)
    2900:	0c000000 	jal	0 <EnZl2_Destroy>
    2904:	02002025 	move	a0,s0
    2908:	02002025 	move	a0,s0
    290c:	0c000000 	jal	0 <EnZl2_Destroy>
    2910:	8fa50024 	lw	a1,36(sp)
    2914:	8fbf001c 	lw	ra,28(sp)
    2918:	8fb00018 	lw	s0,24(sp)
    291c:	27bd0020 	addiu	sp,sp,32
    2920:	03e00008 	jr	ra
    2924:	00000000 	nop

00002928 <func_80B512B8>:
    2928:	27bdffe0 	addiu	sp,sp,-32
    292c:	afbf001c 	sw	ra,28(sp)
    2930:	afb00018 	sw	s0,24(sp)
    2934:	00808025 	move	s0,a0
    2938:	0c000000 	jal	0 <EnZl2_Destroy>
    293c:	afa50024 	sw	a1,36(sp)
    2940:	02002025 	move	a0,s0
    2944:	0c000000 	jal	0 <EnZl2_Destroy>
    2948:	8fa50024 	lw	a1,36(sp)
    294c:	0c000000 	jal	0 <EnZl2_Destroy>
    2950:	02002025 	move	a0,s0
    2954:	02002025 	move	a0,s0
    2958:	0c000000 	jal	0 <EnZl2_Destroy>
    295c:	8fa50024 	lw	a1,36(sp)
    2960:	02002025 	move	a0,s0
    2964:	0c000000 	jal	0 <EnZl2_Destroy>
    2968:	8fa50024 	lw	a1,36(sp)
    296c:	8fbf001c 	lw	ra,28(sp)
    2970:	8fb00018 	lw	s0,24(sp)
    2974:	27bd0020 	addiu	sp,sp,32
    2978:	03e00008 	jr	ra
    297c:	00000000 	nop

00002980 <func_80B51310>:
    2980:	27bdffe8 	addiu	sp,sp,-24
    2984:	afa40018 	sw	a0,24(sp)
    2988:	afbf0014 	sw	ra,20(sp)
    298c:	00a02025 	move	a0,a1
    2990:	0c000000 	jal	0 <EnZl2_Destroy>
    2994:	00002825 	move	a1,zero
    2998:	14400008 	bnez	v0,29bc <func_80B51310+0x3c>
    299c:	8fae0018 	lw	t6,24(sp)
    29a0:	8dc4011c 	lw	a0,284(t6)
    29a4:	10800003 	beqz	a0,29b4 <func_80B51310+0x34>
    29a8:	00000000 	nop
    29ac:	0c000000 	jal	0 <EnZl2_Destroy>
    29b0:	00000000 	nop
    29b4:	0c000000 	jal	0 <EnZl2_Destroy>
    29b8:	8fa40018 	lw	a0,24(sp)
    29bc:	8fbf0014 	lw	ra,20(sp)
    29c0:	27bd0018 	addiu	sp,sp,24
    29c4:	03e00008 	jr	ra
    29c8:	00000000 	nop

000029cc <func_80B5135C>:
    29cc:	27bdffe0 	addiu	sp,sp,-32
    29d0:	afa50024 	sw	a1,36(sp)
    29d4:	afbf001c 	sw	ra,28(sp)
    29d8:	3c050000 	lui	a1,0x0
    29dc:	24a50000 	addiu	a1,a1,0
    29e0:	afa00010 	sw	zero,16(sp)
    29e4:	afa40020 	sw	a0,32(sp)
    29e8:	00003025 	move	a2,zero
    29ec:	0c000000 	jal	0 <EnZl2_Destroy>
    29f0:	24070000 	li	a3,0
    29f4:	8fa40020 	lw	a0,32(sp)
    29f8:	240e0019 	li	t6,25
    29fc:	240f0001 	li	t7,1
    2a00:	ac8e019c 	sw	t6,412(a0)
    2a04:	ac8f0254 	sw	t7,596(a0)
    2a08:	8fbf001c 	lw	ra,28(sp)
    2a0c:	27bd0020 	addiu	sp,sp,32
    2a10:	03e00008 	jr	ra
    2a14:	00000000 	nop

00002a18 <func_80B513A8>:
    2a18:	27bdffd0 	addiu	sp,sp,-48
    2a1c:	afbf002c 	sw	ra,44(sp)
    2a20:	afa40030 	sw	a0,48(sp)
    2a24:	8c8f0250 	lw	t7,592(a0)
    2a28:	24a41c24 	addiu	a0,a1,7204
    2a2c:	55e00013 	bnezl	t7,2a7c <func_80B513A8+0x64>
    2a30:	8fbf002c 	lw	ra,44(sp)
    2a34:	8ca21c44 	lw	v0,7236(a1)
    2a38:	24180007 	li	t8,7
    2a3c:	2406005d 	li	a2,93
    2a40:	c4400024 	lwc1	$f0,36(v0)
    2a44:	c4420028 	lwc1	$f2,40(v0)
    2a48:	c44c002c 	lwc1	$f12,44(v0)
    2a4c:	44070000 	mfc1	a3,$f0
    2a50:	afb80024 	sw	t8,36(sp)
    2a54:	afa00020 	sw	zero,32(sp)
    2a58:	afa0001c 	sw	zero,28(sp)
    2a5c:	afa00018 	sw	zero,24(sp)
    2a60:	e7a20010 	swc1	$f2,16(sp)
    2a64:	0c000000 	jal	0 <EnZl2_Destroy>
    2a68:	e7ac0014 	swc1	$f12,20(sp)
    2a6c:	8fa80030 	lw	t0,48(sp)
    2a70:	24190001 	li	t9,1
    2a74:	ad190250 	sw	t9,592(t0)
    2a78:	8fbf002c 	lw	ra,44(sp)
    2a7c:	27bd0030 	addiu	sp,sp,48
    2a80:	03e00008 	jr	ra
    2a84:	00000000 	nop

00002a88 <func_80B51418>:
    2a88:	27bdffe8 	addiu	sp,sp,-24
    2a8c:	afbf0014 	sw	ra,20(sp)
    2a90:	afa5001c 	sw	a1,28(sp)
    2a94:	0c000000 	jal	0 <EnZl2_Destroy>
    2a98:	afa40018 	sw	a0,24(sp)
    2a9c:	8fae001c 	lw	t6,28(sp)
    2aa0:	8fa40018 	lw	a0,24(sp)
    2aa4:	95cf1d74 	lhu	t7,7540(t6)
    2aa8:	29e101af 	slti	at,t7,431
    2aac:	10200005 	beqz	at,2ac4 <func_80B51418+0x3c>
    2ab0:	00000000 	nop
    2ab4:	0c000000 	jal	0 <EnZl2_Destroy>
    2ab8:	24050001 	li	a1,1
    2abc:	10000004 	b	2ad0 <func_80B51418+0x48>
    2ac0:	8fbf0014 	lw	ra,20(sp)
    2ac4:	0c000000 	jal	0 <EnZl2_Destroy>
    2ac8:	00002825 	move	a1,zero
    2acc:	8fbf0014 	lw	ra,20(sp)
    2ad0:	27bd0018 	addiu	sp,sp,24
    2ad4:	03e00008 	jr	ra
    2ad8:	00000000 	nop

00002adc <func_80B5146C>:
    2adc:	27bdffe8 	addiu	sp,sp,-24
    2ae0:	afbf0014 	sw	ra,20(sp)
    2ae4:	afa40018 	sw	a0,24(sp)
    2ae8:	0c000000 	jal	0 <EnZl2_Destroy>
    2aec:	afa5001c 	sw	a1,28(sp)
    2af0:	8fa40018 	lw	a0,24(sp)
    2af4:	0c000000 	jal	0 <EnZl2_Destroy>
    2af8:	00002825 	move	a1,zero
    2afc:	8fbf0014 	lw	ra,20(sp)
    2b00:	27bd0018 	addiu	sp,sp,24
    2b04:	03e00008 	jr	ra
    2b08:	00000000 	nop

00002b0c <func_80B5149C>:
    2b0c:	27bdffe8 	addiu	sp,sp,-24
    2b10:	afbf0014 	sw	ra,20(sp)
    2b14:	afa40018 	sw	a0,24(sp)
    2b18:	94ae1d74 	lhu	t6,7540(a1)
    2b1c:	29c103dc 	slti	at,t6,988
    2b20:	10200008 	beqz	at,2b44 <func_80B5149C+0x38>
    2b24:	00000000 	nop
    2b28:	0c000000 	jal	0 <EnZl2_Destroy>
    2b2c:	24050007 	li	a1,7
    2b30:	8fa40018 	lw	a0,24(sp)
    2b34:	0c000000 	jal	0 <EnZl2_Destroy>
    2b38:	24050008 	li	a1,8
    2b3c:	10000004 	b	2b50 <func_80B5149C+0x44>
    2b40:	8fa40018 	lw	a0,24(sp)
    2b44:	0c000000 	jal	0 <EnZl2_Destroy>
    2b48:	8fa40018 	lw	a0,24(sp)
    2b4c:	8fa40018 	lw	a0,24(sp)
    2b50:	0c000000 	jal	0 <EnZl2_Destroy>
    2b54:	00002825 	move	a1,zero
    2b58:	8fbf0014 	lw	ra,20(sp)
    2b5c:	27bd0018 	addiu	sp,sp,24
    2b60:	03e00008 	jr	ra
    2b64:	00000000 	nop

00002b68 <func_80B514F8>:
    2b68:	27bdffe8 	addiu	sp,sp,-24
    2b6c:	afbf0014 	sw	ra,20(sp)
    2b70:	afa5001c 	sw	a1,28(sp)
    2b74:	0c000000 	jal	0 <EnZl2_Destroy>
    2b78:	afa40018 	sw	a0,24(sp)
    2b7c:	8fae001c 	lw	t6,28(sp)
    2b80:	8fa40018 	lw	a0,24(sp)
    2b84:	95cf1d74 	lhu	t7,7540(t6)
    2b88:	29e104a6 	slti	at,t7,1190
    2b8c:	10200005 	beqz	at,2ba4 <func_80B514F8+0x3c>
    2b90:	00000000 	nop
    2b94:	0c000000 	jal	0 <EnZl2_Destroy>
    2b98:	24050001 	li	a1,1
    2b9c:	10000004 	b	2bb0 <func_80B514F8+0x48>
    2ba0:	8fbf0014 	lw	ra,20(sp)
    2ba4:	0c000000 	jal	0 <EnZl2_Destroy>
    2ba8:	00002825 	move	a1,zero
    2bac:	8fbf0014 	lw	ra,20(sp)
    2bb0:	27bd0018 	addiu	sp,sp,24
    2bb4:	03e00008 	jr	ra
    2bb8:	00000000 	nop

00002bbc <func_80B5154C>:
    2bbc:	27bdffe8 	addiu	sp,sp,-24
    2bc0:	afbf0014 	sw	ra,20(sp)
    2bc4:	908e014d 	lbu	t6,333(a0)
    2bc8:	51c00006 	beqzl	t6,2be4 <func_80B5154C+0x28>
    2bcc:	94af1d74 	lhu	t7,7540(a1)
    2bd0:	0c000000 	jal	0 <EnZl2_Destroy>
    2bd4:	00000000 	nop
    2bd8:	10000013 	b	2c28 <func_80B5154C+0x6c>
    2bdc:	8fbf0014 	lw	ra,20(sp)
    2be0:	94af1d74 	lhu	t7,7540(a1)
    2be4:	29e105f0 	slti	at,t7,1520
    2be8:	50200006 	beqzl	at,2c04 <func_80B5154C+0x48>
    2bec:	94b81d74 	lhu	t8,7540(a1)
    2bf0:	0c000000 	jal	0 <EnZl2_Destroy>
    2bf4:	00000000 	nop
    2bf8:	1000000b 	b	2c28 <func_80B5154C+0x6c>
    2bfc:	8fbf0014 	lw	ra,20(sp)
    2c00:	94b81d74 	lhu	t8,7540(a1)
    2c04:	240105f0 	li	at,1520
    2c08:	17010004 	bne	t8,at,2c1c <func_80B5154C+0x60>
    2c0c:	00000000 	nop
    2c10:	44802000 	mtc1	zero,$f4
    2c14:	10000003 	b	2c24 <func_80B5154C+0x68>
    2c18:	e484027c 	swc1	$f4,636(a0)
    2c1c:	0c000000 	jal	0 <EnZl2_Destroy>
    2c20:	00000000 	nop
    2c24:	8fbf0014 	lw	ra,20(sp)
    2c28:	27bd0018 	addiu	sp,sp,24
    2c2c:	03e00008 	jr	ra
    2c30:	00000000 	nop

00002c34 <func_80B515C4>:
    2c34:	240e0019 	li	t6,25
    2c38:	ac8e019c 	sw	t6,412(a0)
    2c3c:	ac8001a0 	sw	zero,416(a0)
    2c40:	03e00008 	jr	ra
    2c44:	a08000c8 	sb	zero,200(a0)

00002c48 <func_80B515D8>:
    2c48:	27bdffe0 	addiu	sp,sp,-32
    2c4c:	afa50024 	sw	a1,36(sp)
    2c50:	afbf001c 	sw	ra,28(sp)
    2c54:	3c050000 	lui	a1,0x0
    2c58:	24a50000 	addiu	a1,a1,0
    2c5c:	afa00010 	sw	zero,16(sp)
    2c60:	afa40020 	sw	a0,32(sp)
    2c64:	00003025 	move	a2,zero
    2c68:	0c000000 	jal	0 <EnZl2_Destroy>
    2c6c:	3c07c100 	lui	a3,0xc100
    2c70:	8fa40020 	lw	a0,32(sp)
    2c74:	8fa50024 	lw	a1,36(sp)
    2c78:	0c000000 	jal	0 <EnZl2_Destroy>
    2c7c:	00003025 	move	a2,zero
    2c80:	8fa40020 	lw	a0,32(sp)
    2c84:	44802000 	mtc1	zero,$f4
    2c88:	240e001a 	li	t6,26
    2c8c:	240f0001 	li	t7,1
    2c90:	241800ff 	li	t8,255
    2c94:	ac8e019c 	sw	t6,412(a0)
    2c98:	ac8f01a0 	sw	t7,416(a0)
    2c9c:	a09800c8 	sb	t8,200(a0)
    2ca0:	e484027c 	swc1	$f4,636(a0)
    2ca4:	8fbf001c 	lw	ra,28(sp)
    2ca8:	27bd0020 	addiu	sp,sp,32
    2cac:	03e00008 	jr	ra
    2cb0:	00000000 	nop

00002cb4 <func_80B51644>:
    2cb4:	27bdffe0 	addiu	sp,sp,-32
    2cb8:	10a00007 	beqz	a1,2cd8 <func_80B51644+0x24>
    2cbc:	afbf001c 	sw	ra,28(sp)
    2cc0:	3c050000 	lui	a1,0x0
    2cc4:	24a50000 	addiu	a1,a1,0
    2cc8:	00003025 	move	a2,zero
    2ccc:	3c07c100 	lui	a3,0xc100
    2cd0:	0c000000 	jal	0 <EnZl2_Destroy>
    2cd4:	afa00010 	sw	zero,16(sp)
    2cd8:	8fbf001c 	lw	ra,28(sp)
    2cdc:	27bd0020 	addiu	sp,sp,32
    2ce0:	03e00008 	jr	ra
    2ce4:	00000000 	nop

00002ce8 <func_80B51678>:
    2ce8:	27bdffe0 	addiu	sp,sp,-32
    2cec:	afbf001c 	sw	ra,28(sp)
    2cf0:	3c050000 	lui	a1,0x0
    2cf4:	24a50000 	addiu	a1,a1,0
    2cf8:	afa00010 	sw	zero,16(sp)
    2cfc:	afa40020 	sw	a0,32(sp)
    2d00:	24060002 	li	a2,2
    2d04:	0c000000 	jal	0 <EnZl2_Destroy>
    2d08:	3c07c100 	lui	a3,0xc100
    2d0c:	8fa40020 	lw	a0,32(sp)
    2d10:	44802000 	mtc1	zero,$f4
    2d14:	240e001b 	li	t6,27
    2d18:	240f0001 	li	t7,1
    2d1c:	241800ff 	li	t8,255
    2d20:	ac8e019c 	sw	t6,412(a0)
    2d24:	ac8f01a0 	sw	t7,416(a0)
    2d28:	a09800c8 	sb	t8,200(a0)
    2d2c:	e484027c 	swc1	$f4,636(a0)
    2d30:	8fbf001c 	lw	ra,28(sp)
    2d34:	27bd0020 	addiu	sp,sp,32
    2d38:	03e00008 	jr	ra
    2d3c:	00000000 	nop

00002d40 <func_80B516D0>:
    2d40:	27bdffe0 	addiu	sp,sp,-32
    2d44:	10a00007 	beqz	a1,2d64 <func_80B516D0+0x24>
    2d48:	afbf001c 	sw	ra,28(sp)
    2d4c:	3c050000 	lui	a1,0x0
    2d50:	24a50000 	addiu	a1,a1,0
    2d54:	00003025 	move	a2,zero
    2d58:	3c07c100 	lui	a3,0xc100
    2d5c:	0c000000 	jal	0 <EnZl2_Destroy>
    2d60:	afa00010 	sw	zero,16(sp)
    2d64:	8fbf001c 	lw	ra,28(sp)
    2d68:	27bd0020 	addiu	sp,sp,32
    2d6c:	03e00008 	jr	ra
    2d70:	00000000 	nop

00002d74 <func_80B51704>:
    2d74:	27bdffe0 	addiu	sp,sp,-32
    2d78:	afbf001c 	sw	ra,28(sp)
    2d7c:	3c050000 	lui	a1,0x0
    2d80:	24a50000 	addiu	a1,a1,0
    2d84:	afa00010 	sw	zero,16(sp)
    2d88:	afa40020 	sw	a0,32(sp)
    2d8c:	24060002 	li	a2,2
    2d90:	0c000000 	jal	0 <EnZl2_Destroy>
    2d94:	3c07c100 	lui	a3,0xc100
    2d98:	8fa40020 	lw	a0,32(sp)
    2d9c:	44802000 	mtc1	zero,$f4
    2da0:	240e001c 	li	t6,28
    2da4:	240f0001 	li	t7,1
    2da8:	241800ff 	li	t8,255
    2dac:	ac8e019c 	sw	t6,412(a0)
    2db0:	ac8f01a0 	sw	t7,416(a0)
    2db4:	a09800c8 	sb	t8,200(a0)
    2db8:	e484027c 	swc1	$f4,636(a0)
    2dbc:	8fbf001c 	lw	ra,28(sp)
    2dc0:	27bd0020 	addiu	sp,sp,32
    2dc4:	03e00008 	jr	ra
    2dc8:	00000000 	nop

00002dcc <func_80B5175C>:
    2dcc:	27bdffe0 	addiu	sp,sp,-32
    2dd0:	10a00007 	beqz	a1,2df0 <func_80B5175C+0x24>
    2dd4:	afbf001c 	sw	ra,28(sp)
    2dd8:	3c050000 	lui	a1,0x0
    2ddc:	24a50000 	addiu	a1,a1,0
    2de0:	00003025 	move	a2,zero
    2de4:	3c07c100 	lui	a3,0xc100
    2de8:	0c000000 	jal	0 <EnZl2_Destroy>
    2dec:	afa00010 	sw	zero,16(sp)
    2df0:	8fbf001c 	lw	ra,28(sp)
    2df4:	27bd0020 	addiu	sp,sp,32
    2df8:	03e00008 	jr	ra
    2dfc:	00000000 	nop

00002e00 <func_80B51790>:
    2e00:	27bdffe0 	addiu	sp,sp,-32
    2e04:	afbf001c 	sw	ra,28(sp)
    2e08:	3c050000 	lui	a1,0x0
    2e0c:	24a50000 	addiu	a1,a1,0
    2e10:	afa00010 	sw	zero,16(sp)
    2e14:	afa40020 	sw	a0,32(sp)
    2e18:	24060002 	li	a2,2
    2e1c:	0c000000 	jal	0 <EnZl2_Destroy>
    2e20:	3c07c100 	lui	a3,0xc100
    2e24:	8fa40020 	lw	a0,32(sp)
    2e28:	240e001d 	li	t6,29
    2e2c:	240f0001 	li	t7,1
    2e30:	241800ff 	li	t8,255
    2e34:	ac8e019c 	sw	t6,412(a0)
    2e38:	ac8f01a0 	sw	t7,416(a0)
    2e3c:	a09800c8 	sb	t8,200(a0)
    2e40:	8fbf001c 	lw	ra,28(sp)
    2e44:	27bd0020 	addiu	sp,sp,32
    2e48:	03e00008 	jr	ra
    2e4c:	00000000 	nop

00002e50 <func_80B517E0>:
    2e50:	27bdffe0 	addiu	sp,sp,-32
    2e54:	afbf001c 	sw	ra,28(sp)
    2e58:	10a0000a 	beqz	a1,2e84 <func_80B517E0+0x34>
    2e5c:	afa40020 	sw	a0,32(sp)
    2e60:	3c050000 	lui	a1,0x0
    2e64:	24a50000 	addiu	a1,a1,0
    2e68:	00003025 	move	a2,zero
    2e6c:	3c07c100 	lui	a3,0xc100
    2e70:	0c000000 	jal	0 <EnZl2_Destroy>
    2e74:	afa00010 	sw	zero,16(sp)
    2e78:	8faf0020 	lw	t7,32(sp)
    2e7c:	240e001f 	li	t6,31
    2e80:	adee019c 	sw	t6,412(t7)
    2e84:	8fbf001c 	lw	ra,28(sp)
    2e88:	27bd0020 	addiu	sp,sp,32
    2e8c:	03e00008 	jr	ra
    2e90:	00000000 	nop

00002e94 <func_80B51824>:
    2e94:	27bdffe0 	addiu	sp,sp,-32
    2e98:	afbf001c 	sw	ra,28(sp)
    2e9c:	3c050000 	lui	a1,0x0
    2ea0:	24a50000 	addiu	a1,a1,0
    2ea4:	afa00010 	sw	zero,16(sp)
    2ea8:	afa40020 	sw	a0,32(sp)
    2eac:	24060002 	li	a2,2
    2eb0:	0c000000 	jal	0 <EnZl2_Destroy>
    2eb4:	3c07c100 	lui	a3,0xc100
    2eb8:	8fa40020 	lw	a0,32(sp)
    2ebc:	44802000 	mtc1	zero,$f4
    2ec0:	240e001e 	li	t6,30
    2ec4:	240f0001 	li	t7,1
    2ec8:	241800ff 	li	t8,255
    2ecc:	ac8e019c 	sw	t6,412(a0)
    2ed0:	ac8f01a0 	sw	t7,416(a0)
    2ed4:	a09800c8 	sb	t8,200(a0)
    2ed8:	e484027c 	swc1	$f4,636(a0)
    2edc:	8fbf001c 	lw	ra,28(sp)
    2ee0:	27bd0020 	addiu	sp,sp,32
    2ee4:	03e00008 	jr	ra
    2ee8:	00000000 	nop

00002eec <func_80B5187C>:
    2eec:	27bdffe0 	addiu	sp,sp,-32
    2ef0:	afbf001c 	sw	ra,28(sp)
    2ef4:	10a0000a 	beqz	a1,2f20 <func_80B5187C+0x34>
    2ef8:	afa40020 	sw	a0,32(sp)
    2efc:	3c050000 	lui	a1,0x0
    2f00:	24a50000 	addiu	a1,a1,0
    2f04:	00003025 	move	a2,zero
    2f08:	3c07c100 	lui	a3,0xc100
    2f0c:	0c000000 	jal	0 <EnZl2_Destroy>
    2f10:	afa00010 	sw	zero,16(sp)
    2f14:	44802000 	mtc1	zero,$f4
    2f18:	8fae0020 	lw	t6,32(sp)
    2f1c:	e5c4027c 	swc1	$f4,636(t6)
    2f20:	8fbf001c 	lw	ra,28(sp)
    2f24:	27bd0020 	addiu	sp,sp,32
    2f28:	03e00008 	jr	ra
    2f2c:	00000000 	nop

00002f30 <func_80B518C0>:
    2f30:	3c020000 	lui	v0,0x0
    2f34:	24420000 	addiu	v0,v0,0
    2f38:	00027100 	sll	t6,v0,0x4
    2f3c:	000e7f02 	srl	t7,t6,0x1c
    2f40:	000fc080 	sll	t8,t7,0x2
    2f44:	3c190000 	lui	t9,0x0
    2f48:	0338c821 	addu	t9,t9,t8
    2f4c:	3c0100ff 	lui	at,0xff
    2f50:	8f390000 	lw	t9,0(t9)
    2f54:	3421ffff 	ori	at,at,0xffff
    2f58:	00414024 	and	t0,v0,at
    2f5c:	27bdffe0 	addiu	sp,sp,-32
    2f60:	afbf001c 	sw	ra,28(sp)
    2f64:	3c018000 	lui	at,0x8000
    2f68:	03282821 	addu	a1,t9,t0
    2f6c:	00a12821 	addu	a1,a1,at
    2f70:	afa00010 	sw	zero,16(sp)
    2f74:	afa40020 	sw	a0,32(sp)
    2f78:	24060002 	li	a2,2
    2f7c:	0c000000 	jal	0 <EnZl2_Destroy>
    2f80:	3c07c100 	lui	a3,0xc100
    2f84:	8fa40020 	lw	a0,32(sp)
    2f88:	44802000 	mtc1	zero,$f4
    2f8c:	24090020 	li	t1,32
    2f90:	240a0001 	li	t2,1
    2f94:	240b00ff 	li	t3,255
    2f98:	ac89019c 	sw	t1,412(a0)
    2f9c:	ac8a01a0 	sw	t2,416(a0)
    2fa0:	a08b00c8 	sb	t3,200(a0)
    2fa4:	e484027c 	swc1	$f4,636(a0)
    2fa8:	8fbf001c 	lw	ra,28(sp)
    2fac:	27bd0020 	addiu	sp,sp,32
    2fb0:	03e00008 	jr	ra
    2fb4:	00000000 	nop

00002fb8 <func_80B51948>:
    2fb8:	27bdffd8 	addiu	sp,sp,-40
    2fbc:	afb00018 	sw	s0,24(sp)
    2fc0:	00808025 	move	s0,a0
    2fc4:	afbf001c 	sw	ra,28(sp)
    2fc8:	00a03025 	move	a2,a1
    2fcc:	00a02025 	move	a0,a1
    2fd0:	00002825 	move	a1,zero
    2fd4:	0c000000 	jal	0 <EnZl2_Destroy>
    2fd8:	afa6002c 	sw	a2,44(sp)
    2fdc:	10400036 	beqz	v0,30b8 <func_80B51948+0x100>
    2fe0:	8fa6002c 	lw	a2,44(sp)
    2fe4:	944e0000 	lhu	t6,0(v0)
    2fe8:	afae0020 	sw	t6,32(sp)
    2fec:	8e030240 	lw	v1,576(s0)
    2ff0:	25d8ffff 	addiu	t8,t6,-1
    2ff4:	2f010015 	sltiu	at,t8,21
    2ff8:	51c30030 	beql	t6,v1,30bc <func_80B51948+0x104>
    2ffc:	8fbf001c 	lw	ra,28(sp)
    3000:	10200028 	beqz	at,30a4 <func_80B51948+0xec>
    3004:	0018c080 	sll	t8,t8,0x2
    3008:	3c010000 	lui	at,0x0
    300c:	00380821 	addu	at,at,t8
    3010:	8c380318 	lw	t8,792(at)
    3014:	03000008 	jr	t8
    3018:	00000000 	nop
    301c:	0c000000 	jal	0 <EnZl2_Destroy>
    3020:	02002025 	move	a0,s0
    3024:	10000023 	b	30b4 <func_80B51948+0xfc>
    3028:	8fb90020 	lw	t9,32(sp)
    302c:	02002025 	move	a0,s0
    3030:	0c000000 	jal	0 <EnZl2_Destroy>
    3034:	00c02825 	move	a1,a2
    3038:	1000001e 	b	30b4 <func_80B51948+0xfc>
    303c:	8fb90020 	lw	t9,32(sp)
    3040:	0c000000 	jal	0 <EnZl2_Destroy>
    3044:	02002025 	move	a0,s0
    3048:	1000001a 	b	30b4 <func_80B51948+0xfc>
    304c:	8fb90020 	lw	t9,32(sp)
    3050:	0c000000 	jal	0 <EnZl2_Destroy>
    3054:	02002025 	move	a0,s0
    3058:	10000016 	b	30b4 <func_80B51948+0xfc>
    305c:	8fb90020 	lw	t9,32(sp)
    3060:	0c000000 	jal	0 <EnZl2_Destroy>
    3064:	02002025 	move	a0,s0
    3068:	10000012 	b	30b4 <func_80B51948+0xfc>
    306c:	8fb90020 	lw	t9,32(sp)
    3070:	0c000000 	jal	0 <EnZl2_Destroy>
    3074:	02002025 	move	a0,s0
    3078:	1000000e 	b	30b4 <func_80B51948+0xfc>
    307c:	8fb90020 	lw	t9,32(sp)
    3080:	0c000000 	jal	0 <EnZl2_Destroy>
    3084:	02002025 	move	a0,s0
    3088:	1000000a 	b	30b4 <func_80B51948+0xfc>
    308c:	8fb90020 	lw	t9,32(sp)
    3090:	02002025 	move	a0,s0
    3094:	0c000000 	jal	0 <EnZl2_Destroy>
    3098:	00c02825 	move	a1,a2
    309c:	10000005 	b	30b4 <func_80B51948+0xfc>
    30a0:	8fb90020 	lw	t9,32(sp)
    30a4:	3c040000 	lui	a0,0x0
    30a8:	0c000000 	jal	0 <EnZl2_Destroy>
    30ac:	248400b8 	addiu	a0,a0,184
    30b0:	8fb90020 	lw	t9,32(sp)
    30b4:	ae190240 	sw	t9,576(s0)
    30b8:	8fbf001c 	lw	ra,28(sp)
    30bc:	8fb00018 	lw	s0,24(sp)
    30c0:	27bd0028 	addiu	sp,sp,40
    30c4:	03e00008 	jr	ra
    30c8:	00000000 	nop

000030cc <func_80B51A5C>:
    30cc:	27bdffe8 	addiu	sp,sp,-24
    30d0:	afbf0014 	sw	ra,20(sp)
    30d4:	afa40018 	sw	a0,24(sp)
    30d8:	0c000000 	jal	0 <EnZl2_Destroy>
    30dc:	afa5001c 	sw	a1,28(sp)
    30e0:	8fa40018 	lw	a0,24(sp)
    30e4:	0c000000 	jal	0 <EnZl2_Destroy>
    30e8:	8fa5001c 	lw	a1,28(sp)
    30ec:	8fbf0014 	lw	ra,20(sp)
    30f0:	27bd0018 	addiu	sp,sp,24
    30f4:	03e00008 	jr	ra
    30f8:	00000000 	nop

000030fc <func_80B51A8C>:
    30fc:	27bdffe0 	addiu	sp,sp,-32
    3100:	afbf001c 	sw	ra,28(sp)
    3104:	afb00018 	sw	s0,24(sp)
    3108:	00808025 	move	s0,a0
    310c:	0c000000 	jal	0 <EnZl2_Destroy>
    3110:	afa50024 	sw	a1,36(sp)
    3114:	02002025 	move	a0,s0
    3118:	0c000000 	jal	0 <EnZl2_Destroy>
    311c:	8fa50024 	lw	a1,36(sp)
    3120:	02002025 	move	a0,s0
    3124:	0c000000 	jal	0 <EnZl2_Destroy>
    3128:	8fa50024 	lw	a1,36(sp)
    312c:	0c000000 	jal	0 <EnZl2_Destroy>
    3130:	02002025 	move	a0,s0
    3134:	02002025 	move	a0,s0
    3138:	0c000000 	jal	0 <EnZl2_Destroy>
    313c:	8fa50024 	lw	a1,36(sp)
    3140:	8fbf001c 	lw	ra,28(sp)
    3144:	8fb00018 	lw	s0,24(sp)
    3148:	27bd0020 	addiu	sp,sp,32
    314c:	03e00008 	jr	ra
    3150:	00000000 	nop

00003154 <func_80B51AE4>:
    3154:	27bdffe0 	addiu	sp,sp,-32
    3158:	afbf001c 	sw	ra,28(sp)
    315c:	afb00018 	sw	s0,24(sp)
    3160:	00808025 	move	s0,a0
    3164:	0c000000 	jal	0 <EnZl2_Destroy>
    3168:	afa50024 	sw	a1,36(sp)
    316c:	02002025 	move	a0,s0
    3170:	0c000000 	jal	0 <EnZl2_Destroy>
    3174:	8fa50024 	lw	a1,36(sp)
    3178:	0c000000 	jal	0 <EnZl2_Destroy>
    317c:	02002025 	move	a0,s0
    3180:	0c000000 	jal	0 <EnZl2_Destroy>
    3184:	02002025 	move	a0,s0
    3188:	02002025 	move	a0,s0
    318c:	0c000000 	jal	0 <EnZl2_Destroy>
    3190:	00402825 	move	a1,v0
    3194:	02002025 	move	a0,s0
    3198:	0c000000 	jal	0 <EnZl2_Destroy>
    319c:	8fa50024 	lw	a1,36(sp)
    31a0:	8fbf001c 	lw	ra,28(sp)
    31a4:	8fb00018 	lw	s0,24(sp)
    31a8:	27bd0020 	addiu	sp,sp,32
    31ac:	03e00008 	jr	ra
    31b0:	00000000 	nop

000031b4 <func_80B51B44>:
    31b4:	27bdffe0 	addiu	sp,sp,-32
    31b8:	afbf001c 	sw	ra,28(sp)
    31bc:	afb00018 	sw	s0,24(sp)
    31c0:	00808025 	move	s0,a0
    31c4:	0c000000 	jal	0 <EnZl2_Destroy>
    31c8:	afa50024 	sw	a1,36(sp)
    31cc:	02002025 	move	a0,s0
    31d0:	0c000000 	jal	0 <EnZl2_Destroy>
    31d4:	8fa50024 	lw	a1,36(sp)
    31d8:	02002025 	move	a0,s0
    31dc:	0c000000 	jal	0 <EnZl2_Destroy>
    31e0:	8fa50024 	lw	a1,36(sp)
    31e4:	0c000000 	jal	0 <EnZl2_Destroy>
    31e8:	02002025 	move	a0,s0
    31ec:	02002025 	move	a0,s0
    31f0:	0c000000 	jal	0 <EnZl2_Destroy>
    31f4:	00402825 	move	a1,v0
    31f8:	02002025 	move	a0,s0
    31fc:	0c000000 	jal	0 <EnZl2_Destroy>
    3200:	8fa50024 	lw	a1,36(sp)
    3204:	8fbf001c 	lw	ra,28(sp)
    3208:	8fb00018 	lw	s0,24(sp)
    320c:	27bd0020 	addiu	sp,sp,32
    3210:	03e00008 	jr	ra
    3214:	00000000 	nop

00003218 <func_80B51BA8>:
    3218:	27bdffe0 	addiu	sp,sp,-32
    321c:	afbf001c 	sw	ra,28(sp)
    3220:	afb00018 	sw	s0,24(sp)
    3224:	00808025 	move	s0,a0
    3228:	0c000000 	jal	0 <EnZl2_Destroy>
    322c:	afa50024 	sw	a1,36(sp)
    3230:	02002025 	move	a0,s0
    3234:	0c000000 	jal	0 <EnZl2_Destroy>
    3238:	8fa50024 	lw	a1,36(sp)
    323c:	02002025 	move	a0,s0
    3240:	0c000000 	jal	0 <EnZl2_Destroy>
    3244:	8fa50024 	lw	a1,36(sp)
    3248:	0c000000 	jal	0 <EnZl2_Destroy>
    324c:	02002025 	move	a0,s0
    3250:	02002025 	move	a0,s0
    3254:	0c000000 	jal	0 <EnZl2_Destroy>
    3258:	00402825 	move	a1,v0
    325c:	02002025 	move	a0,s0
    3260:	0c000000 	jal	0 <EnZl2_Destroy>
    3264:	8fa50024 	lw	a1,36(sp)
    3268:	8fbf001c 	lw	ra,28(sp)
    326c:	8fb00018 	lw	s0,24(sp)
    3270:	27bd0020 	addiu	sp,sp,32
    3274:	03e00008 	jr	ra
    3278:	00000000 	nop

0000327c <func_80B51C0C>:
    327c:	27bdffe0 	addiu	sp,sp,-32
    3280:	afbf001c 	sw	ra,28(sp)
    3284:	afb00018 	sw	s0,24(sp)
    3288:	00808025 	move	s0,a0
    328c:	0c000000 	jal	0 <EnZl2_Destroy>
    3290:	afa50024 	sw	a1,36(sp)
    3294:	02002025 	move	a0,s0
    3298:	0c000000 	jal	0 <EnZl2_Destroy>
    329c:	8fa50024 	lw	a1,36(sp)
    32a0:	02002025 	move	a0,s0
    32a4:	0c000000 	jal	0 <EnZl2_Destroy>
    32a8:	8fa50024 	lw	a1,36(sp)
    32ac:	0c000000 	jal	0 <EnZl2_Destroy>
    32b0:	02002025 	move	a0,s0
    32b4:	02002025 	move	a0,s0
    32b8:	0c000000 	jal	0 <EnZl2_Destroy>
    32bc:	00402825 	move	a1,v0
    32c0:	8fbf001c 	lw	ra,28(sp)
    32c4:	8fb00018 	lw	s0,24(sp)
    32c8:	27bd0020 	addiu	sp,sp,32
    32cc:	03e00008 	jr	ra
    32d0:	00000000 	nop

000032d4 <func_80B51C64>:
    32d4:	27bdffe8 	addiu	sp,sp,-24
    32d8:	afbf0014 	sw	ra,20(sp)
    32dc:	afa40018 	sw	a0,24(sp)
    32e0:	0c000000 	jal	0 <EnZl2_Destroy>
    32e4:	afa5001c 	sw	a1,28(sp)
    32e8:	8fa40018 	lw	a0,24(sp)
    32ec:	0c000000 	jal	0 <EnZl2_Destroy>
    32f0:	8fa5001c 	lw	a1,28(sp)
    32f4:	0c000000 	jal	0 <EnZl2_Destroy>
    32f8:	8fa40018 	lw	a0,24(sp)
    32fc:	8fa40018 	lw	a0,24(sp)
    3300:	0c000000 	jal	0 <EnZl2_Destroy>
    3304:	8fa5001c 	lw	a1,28(sp)
    3308:	8fbf0014 	lw	ra,20(sp)
    330c:	27bd0018 	addiu	sp,sp,24
    3310:	03e00008 	jr	ra
    3314:	00000000 	nop

00003318 <func_80B51CA8>:
    3318:	27bdffe0 	addiu	sp,sp,-32
    331c:	afbf001c 	sw	ra,28(sp)
    3320:	afb00018 	sw	s0,24(sp)
    3324:	00808025 	move	s0,a0
    3328:	0c000000 	jal	0 <EnZl2_Destroy>
    332c:	afa50024 	sw	a1,36(sp)
    3330:	02002025 	move	a0,s0
    3334:	0c000000 	jal	0 <EnZl2_Destroy>
    3338:	8fa50024 	lw	a1,36(sp)
    333c:	02002025 	move	a0,s0
    3340:	0c000000 	jal	0 <EnZl2_Destroy>
    3344:	8fa50024 	lw	a1,36(sp)
    3348:	0c000000 	jal	0 <EnZl2_Destroy>
    334c:	02002025 	move	a0,s0
    3350:	02002025 	move	a0,s0
    3354:	0c000000 	jal	0 <EnZl2_Destroy>
    3358:	00402825 	move	a1,v0
    335c:	02002025 	move	a0,s0
    3360:	0c000000 	jal	0 <EnZl2_Destroy>
    3364:	8fa50024 	lw	a1,36(sp)
    3368:	8fbf001c 	lw	ra,28(sp)
    336c:	8fb00018 	lw	s0,24(sp)
    3370:	27bd0020 	addiu	sp,sp,32
    3374:	03e00008 	jr	ra
    3378:	00000000 	nop

0000337c <func_80B51D0C>:
    337c:	afa50004 	sw	a1,4(sp)
    3380:	240e0021 	li	t6,33
    3384:	ac8e019c 	sw	t6,412(a0)
    3388:	ac8001a0 	sw	zero,416(a0)
    338c:	03e00008 	jr	ra
    3390:	a08000c8 	sb	zero,200(a0)

00003394 <func_80B51D24>:
    3394:	27bdffc8 	addiu	sp,sp,-56
    3398:	afb00018 	sw	s0,24(sp)
    339c:	00808025 	move	s0,a0
    33a0:	afbf001c 	sw	ra,28(sp)
    33a4:	afa5003c 	sw	a1,60(sp)
    33a8:	2484014c 	addiu	a0,a0,332
    33ac:	afa40020 	sw	a0,32(sp)
    33b0:	0c000000 	jal	0 <EnZl2_Destroy>
    33b4:	3c0540c0 	lui	a1,0x40c0
    33b8:	14400005 	bnez	v0,33d0 <func_80B51D24+0x3c>
    33bc:	8fa40020 	lw	a0,32(sp)
    33c0:	0c000000 	jal	0 <EnZl2_Destroy>
    33c4:	24050000 	li	a1,0
    33c8:	5040000e 	beqzl	v0,3404 <func_80B51D24+0x70>
    33cc:	8fbf001c 	lw	ra,28(sp)
    33d0:	960e0088 	lhu	t6,136(s0)
    33d4:	8fa4003c 	lw	a0,60(sp)
    33d8:	31cf0001 	andi	t7,t6,0x1
    33dc:	11e00008 	beqz	t7,3400 <func_80B51D24+0x6c>
    33e0:	248407c0 	addiu	a0,a0,1984
    33e4:	8e050078 	lw	a1,120(s0)
    33e8:	0c000000 	jal	0 <EnZl2_Destroy>
    33ec:	9206007d 	lbu	a2,125(s0)
    33f0:	24430800 	addiu	v1,v0,2048
    33f4:	3065ffff 	andi	a1,v1,0xffff
    33f8:	0c000000 	jal	0 <EnZl2_Destroy>
    33fc:	260400e4 	addiu	a0,s0,228
    3400:	8fbf001c 	lw	ra,28(sp)
    3404:	8fb00018 	lw	s0,24(sp)
    3408:	27bd0038 	addiu	sp,sp,56
    340c:	03e00008 	jr	ra
    3410:	00000000 	nop

00003414 <func_80B51DA4>:
    3414:	27bdffc0 	addiu	sp,sp,-64
    3418:	afa40040 	sw	a0,64(sp)
    341c:	afbf001c 	sw	ra,28(sp)
    3420:	afa50044 	sw	a1,68(sp)
    3424:	00a02025 	move	a0,a1
    3428:	0c000000 	jal	0 <EnZl2_Destroy>
    342c:	00002825 	move	a1,zero
    3430:	10400035 	beqz	v0,3508 <func_80B51DA4+0xf4>
    3434:	8fae0044 	lw	t6,68(sp)
    3438:	94440004 	lhu	a0,4(v0)
    343c:	94450002 	lhu	a1,2(v0)
    3440:	95c61d74 	lhu	a2,7540(t6)
    3444:	240f0008 	li	t7,8
    3448:	afaf0010 	sw	t7,16(sp)
    344c:	afa2003c 	sw	v0,60(sp)
    3450:	0c000000 	jal	0 <EnZl2_Destroy>
    3454:	00003825 	move	a3,zero
    3458:	8fa3003c 	lw	v1,60(sp)
    345c:	8fa40040 	lw	a0,64(sp)
    3460:	8c790010 	lw	t9,16(v1)
    3464:	8c78000c 	lw	t8,12(v1)
    3468:	8c690018 	lw	t1,24(v1)
    346c:	8c680014 	lw	t0,20(v1)
    3470:	44993000 	mtc1	t9,$f6
    3474:	8c6b0020 	lw	t3,32(v1)
    3478:	44982000 	mtc1	t8,$f4
    347c:	8c6a001c 	lw	t2,28(v1)
    3480:	44895000 	mtc1	t1,$f10
    3484:	46803320 	cvt.s.w	$f12,$f6
    3488:	44884000 	mtc1	t0,$f8
    348c:	448b3000 	mtc1	t3,$f6
    3490:	24820024 	addiu	v0,a0,36
    3494:	468020a0 	cvt.s.w	$f2,$f4
    3498:	448a2000 	mtc1	t2,$f4
    349c:	46805420 	cvt.s.w	$f16,$f10
    34a0:	468043a0 	cvt.s.w	$f14,$f8
    34a4:	46803220 	cvt.s.w	$f8,$f6
    34a8:	468024a0 	cvt.s.w	$f18,$f4
    34ac:	e7a80020 	swc1	$f8,32(sp)
    34b0:	46028281 	sub.s	$f10,$f16,$f2
    34b4:	460c9201 	sub.s	$f8,$f18,$f12
    34b8:	46005102 	mul.s	$f4,$f10,$f0
    34bc:	00000000 	nop
    34c0:	46004282 	mul.s	$f10,$f8,$f0
    34c4:	46022180 	add.s	$f6,$f4,$f2
    34c8:	460c5100 	add.s	$f4,$f10,$f12
    34cc:	e4460000 	swc1	$f6,0(v0)
    34d0:	e4440004 	swc1	$f4,4(v0)
    34d4:	c7a60020 	lwc1	$f6,32(sp)
    34d8:	460e3201 	sub.s	$f8,$f6,$f14
    34dc:	46004282 	mul.s	$f10,$f8,$f0
    34e0:	460e5100 	add.s	$f4,$f10,$f14
    34e4:	e4440008 	swc1	$f4,8(v0)
    34e8:	8fad0044 	lw	t5,68(sp)
    34ec:	946c0004 	lhu	t4,4(v1)
    34f0:	95ae1d74 	lhu	t6,7540(t5)
    34f4:	018e082a 	slt	at,t4,t6
    34f8:	10200003 	beqz	at,3508 <func_80B51DA4+0xf4>
    34fc:	00000000 	nop
    3500:	0c000000 	jal	0 <EnZl2_Destroy>
    3504:	00000000 	nop
    3508:	8fbf001c 	lw	ra,28(sp)
    350c:	27bd0040 	addiu	sp,sp,64
    3510:	03e00008 	jr	ra
    3514:	00000000 	nop

00003518 <func_80B51EA8>:
    3518:	240e0021 	li	t6,33
    351c:	ac8e019c 	sw	t6,412(a0)
    3520:	ac8001a0 	sw	zero,416(a0)
    3524:	03e00008 	jr	ra
    3528:	a08000c8 	sb	zero,200(a0)

0000352c <func_80B51EBC>:
    352c:	27bdffc0 	addiu	sp,sp,-64
    3530:	afb00020 	sw	s0,32(sp)
    3534:	00808025 	move	s0,a0
    3538:	afbf0024 	sw	ra,36(sp)
    353c:	00a02025 	move	a0,a1
    3540:	0c000000 	jal	0 <EnZl2_Destroy>
    3544:	00002825 	move	a1,zero
    3548:	84430008 	lh	v1,8(v0)
    354c:	260800b4 	addiu	t0,s0,180
    3550:	3c050000 	lui	a1,0x0
    3554:	a5030002 	sh	v1,2(t0)
    3558:	a6030032 	sh	v1,50(s0)
    355c:	afa80028 	sw	t0,40(sp)
    3560:	afa00010 	sw	zero,16(sp)
    3564:	24a50000 	addiu	a1,a1,0
    3568:	02002025 	move	a0,s0
    356c:	00003025 	move	a2,zero
    3570:	0c000000 	jal	0 <EnZl2_Destroy>
    3574:	24070000 	li	a3,0
    3578:	8fa80028 	lw	t0,40(sp)
    357c:	240e0022 	li	t6,34
    3580:	240f0001 	li	t7,1
    3584:	ae0e019c 	sw	t6,412(s0)
    3588:	ae0f01a0 	sw	t7,416(s0)
    358c:	241800ff 	li	t8,255
    3590:	a1180014 	sb	t8,20(t0)
    3594:	8fbf0024 	lw	ra,36(sp)
    3598:	8fb00020 	lw	s0,32(sp)
    359c:	27bd0040 	addiu	sp,sp,64
    35a0:	03e00008 	jr	ra
    35a4:	00000000 	nop

000035a8 <func_80B51F38>:
    35a8:	27bdffe0 	addiu	sp,sp,-32
    35ac:	afa40020 	sw	a0,32(sp)
    35b0:	afbf001c 	sw	ra,28(sp)
    35b4:	afa50024 	sw	a1,36(sp)
    35b8:	00a02025 	move	a0,a1
    35bc:	0c000000 	jal	0 <EnZl2_Destroy>
    35c0:	00002825 	move	a1,zero
    35c4:	10400010 	beqz	v0,3608 <func_80B51F38+0x60>
    35c8:	8faf0024 	lw	t7,36(sp)
    35cc:	95f81d74 	lhu	t8,7540(t7)
    35d0:	944e0004 	lhu	t6,4(v0)
    35d4:	8fa40020 	lw	a0,32(sp)
    35d8:	2719fff8 	addiu	t9,t8,-8
    35dc:	032e082a 	slt	at,t9,t6
    35e0:	14200009 	bnez	at,3608 <func_80B51F38+0x60>
    35e4:	3c050000 	lui	a1,0x0
    35e8:	24a50000 	addiu	a1,a1,0
    35ec:	00003025 	move	a2,zero
    35f0:	3c07c100 	lui	a3,0xc100
    35f4:	0c000000 	jal	0 <EnZl2_Destroy>
    35f8:	afa00010 	sw	zero,16(sp)
    35fc:	8fa90020 	lw	t1,32(sp)
    3600:	24080023 	li	t0,35
    3604:	ad28019c 	sw	t0,412(t1)
    3608:	8fbf001c 	lw	ra,28(sp)
    360c:	27bd0020 	addiu	sp,sp,32
    3610:	03e00008 	jr	ra
    3614:	00000000 	nop

00003618 <func_80B51FA8>:
    3618:	27bdffd8 	addiu	sp,sp,-40
    361c:	afb00018 	sw	s0,24(sp)
    3620:	00808025 	move	s0,a0
    3624:	afbf001c 	sw	ra,28(sp)
    3628:	afa5002c 	sw	a1,44(sp)
    362c:	00a02025 	move	a0,a1
    3630:	0c000000 	jal	0 <EnZl2_Destroy>
    3634:	00002825 	move	a1,zero
    3638:	50400023 	beqzl	v0,36c8 <func_80B51FA8+0xb0>
    363c:	8fbf001c 	lw	ra,28(sp)
    3640:	94460000 	lhu	a2,0(v0)
    3644:	8e030240 	lw	v1,576(s0)
    3648:	24010001 	li	at,1
    364c:	50c3001e 	beql	a2,v1,36c8 <func_80B51FA8+0xb0>
    3650:	8fbf001c 	lw	ra,28(sp)
    3654:	10c10009 	beq	a2,at,367c <func_80B51FA8+0x64>
    3658:	02002025 	move	a0,s0
    365c:	24010002 	li	at,2
    3660:	10c1000a 	beq	a2,at,368c <func_80B51FA8+0x74>
    3664:	02002025 	move	a0,s0
    3668:	2401000e 	li	at,14
    366c:	10c1000c 	beq	a2,at,36a0 <func_80B51FA8+0x88>
    3670:	02002025 	move	a0,s0
    3674:	1000000e 	b	36b0 <func_80B51FA8+0x98>
    3678:	3c040000 	lui	a0,0x0
    367c:	0c000000 	jal	0 <EnZl2_Destroy>
    3680:	afa60020 	sw	a2,32(sp)
    3684:	1000000e 	b	36c0 <func_80B51FA8+0xa8>
    3688:	8fa60020 	lw	a2,32(sp)
    368c:	8fa5002c 	lw	a1,44(sp)
    3690:	0c000000 	jal	0 <EnZl2_Destroy>
    3694:	afa60020 	sw	a2,32(sp)
    3698:	10000009 	b	36c0 <func_80B51FA8+0xa8>
    369c:	8fa60020 	lw	a2,32(sp)
    36a0:	0c000000 	jal	0 <EnZl2_Destroy>
    36a4:	afa60020 	sw	a2,32(sp)
    36a8:	10000005 	b	36c0 <func_80B51FA8+0xa8>
    36ac:	8fa60020 	lw	a2,32(sp)
    36b0:	248400f4 	addiu	a0,a0,244
    36b4:	0c000000 	jal	0 <EnZl2_Destroy>
    36b8:	afa60020 	sw	a2,32(sp)
    36bc:	8fa60020 	lw	a2,32(sp)
    36c0:	ae060240 	sw	a2,576(s0)
    36c4:	8fbf001c 	lw	ra,28(sp)
    36c8:	8fb00018 	lw	s0,24(sp)
    36cc:	27bd0028 	addiu	sp,sp,40
    36d0:	03e00008 	jr	ra
    36d4:	00000000 	nop

000036d8 <func_80B52068>:
    36d8:	27bdffe8 	addiu	sp,sp,-24
    36dc:	afbf0014 	sw	ra,20(sp)
    36e0:	afa40018 	sw	a0,24(sp)
    36e4:	0c000000 	jal	0 <EnZl2_Destroy>
    36e8:	afa5001c 	sw	a1,28(sp)
    36ec:	8fa40018 	lw	a0,24(sp)
    36f0:	0c000000 	jal	0 <EnZl2_Destroy>
    36f4:	8fa5001c 	lw	a1,28(sp)
    36f8:	8fbf0014 	lw	ra,20(sp)
    36fc:	27bd0018 	addiu	sp,sp,24
    3700:	03e00008 	jr	ra
    3704:	00000000 	nop

00003708 <func_80B52098>:
    3708:	27bdffe0 	addiu	sp,sp,-32
    370c:	afbf001c 	sw	ra,28(sp)
    3710:	afb10018 	sw	s1,24(sp)
    3714:	afb00014 	sw	s0,20(sp)
    3718:	00808025 	move	s0,a0
    371c:	0c000000 	jal	0 <EnZl2_Destroy>
    3720:	00a08825 	move	s1,a1
    3724:	02002025 	move	a0,s0
    3728:	0c000000 	jal	0 <EnZl2_Destroy>
    372c:	02202825 	move	a1,s1
    3730:	0c000000 	jal	0 <EnZl2_Destroy>
    3734:	02002025 	move	a0,s0
    3738:	0c000000 	jal	0 <EnZl2_Destroy>
    373c:	02002025 	move	a0,s0
    3740:	02002025 	move	a0,s0
    3744:	0c000000 	jal	0 <EnZl2_Destroy>
    3748:	02202825 	move	a1,s1
    374c:	02002025 	move	a0,s0
    3750:	0c000000 	jal	0 <EnZl2_Destroy>
    3754:	02202825 	move	a1,s1
    3758:	02002025 	move	a0,s0
    375c:	0c000000 	jal	0 <EnZl2_Destroy>
    3760:	02202825 	move	a1,s1
    3764:	8fbf001c 	lw	ra,28(sp)
    3768:	8fb00014 	lw	s0,20(sp)
    376c:	8fb10018 	lw	s1,24(sp)
    3770:	03e00008 	jr	ra
    3774:	27bd0020 	addiu	sp,sp,32

00003778 <func_80B52108>:
    3778:	afa40000 	sw	a0,0(sp)
    377c:	03e00008 	jr	ra
    3780:	afa50004 	sw	a1,4(sp)

00003784 <func_80B52114>:
    3784:	27bdffe8 	addiu	sp,sp,-24
    3788:	afbf0014 	sw	ra,20(sp)
    378c:	8482001c 	lh	v0,28(a0)
    3790:	00803025 	move	a2,a0
    3794:	24010001 	li	at,1
    3798:	1040000f 	beqz	v0,37d8 <func_80B52114+0x54>
    379c:	00000000 	nop
    37a0:	10410005 	beq	v0,at,37b8 <func_80B52114+0x34>
    37a4:	24010004 	li	at,4
    37a8:	10410007 	beq	v0,at,37c8 <func_80B52114+0x44>
    37ac:	3c040000 	lui	a0,0x0
    37b0:	1000000d 	b	37e8 <func_80B52114+0x64>
    37b4:	24840130 	addiu	a0,a0,304
    37b8:	0c000000 	jal	0 <EnZl2_Destroy>
    37bc:	00c02025 	move	a0,a2
    37c0:	10000010 	b	3804 <func_80B52114+0x80>
    37c4:	8fbf0014 	lw	ra,20(sp)
    37c8:	0c000000 	jal	0 <EnZl2_Destroy>
    37cc:	00c02025 	move	a0,a2
    37d0:	1000000c 	b	3804 <func_80B52114+0x80>
    37d4:	8fbf0014 	lw	ra,20(sp)
    37d8:	0c000000 	jal	0 <EnZl2_Destroy>
    37dc:	00c02025 	move	a0,a2
    37e0:	10000008 	b	3804 <func_80B52114+0x80>
    37e4:	8fbf0014 	lw	ra,20(sp)
    37e8:	afa5001c 	sw	a1,28(sp)
    37ec:	0c000000 	jal	0 <EnZl2_Destroy>
    37f0:	afa60018 	sw	a2,24(sp)
    37f4:	8fa5001c 	lw	a1,28(sp)
    37f8:	0c000000 	jal	0 <EnZl2_Destroy>
    37fc:	8fa40018 	lw	a0,24(sp)
    3800:	8fbf0014 	lw	ra,20(sp)
    3804:	27bd0018 	addiu	sp,sp,24
    3808:	03e00008 	jr	ra
    380c:	00000000 	nop

00003810 <func_80B521A0>:
    3810:	27bdffd0 	addiu	sp,sp,-48
    3814:	3c010001 	lui	at,0x1
    3818:	afa40030 	sw	a0,48(sp)
    381c:	342117a4 	ori	at,at,0x17a4
    3820:	afbf0014 	sw	ra,20(sp)
    3824:	afa50034 	sw	a1,52(sp)
    3828:	00a12021 	addu	a0,a1,at
    382c:	afa4001c 	sw	a0,28(sp)
    3830:	0c000000 	jal	0 <EnZl2_Destroy>
    3834:	2405014e 	li	a1,334
    3838:	8fa4001c 	lw	a0,28(sp)
    383c:	04410006 	bgez	v0,3858 <func_80B521A0+0x48>
    3840:	00403025 	move	a2,v0
    3844:	3c040000 	lui	a0,0x0
    3848:	0c000000 	jal	0 <EnZl2_Destroy>
    384c:	24840174 	addiu	a0,a0,372
    3850:	10000015 	b	38a8 <func_80B521A0+0x98>
    3854:	8fbf0014 	lw	ra,20(sp)
    3858:	00c02825 	move	a1,a2
    385c:	0c000000 	jal	0 <EnZl2_Destroy>
    3860:	afa60024 	sw	a2,36(sp)
    3864:	1040000f 	beqz	v0,38a4 <func_80B521A0+0x94>
    3868:	8fa60024 	lw	a2,36(sp)
    386c:	8fa40030 	lw	a0,48(sp)
    3870:	ac860274 	sw	a2,628(a0)
    3874:	0c000000 	jal	0 <EnZl2_Destroy>
    3878:	8fa50034 	lw	a1,52(sp)
    387c:	3c040000 	lui	a0,0x0
    3880:	0c000000 	jal	0 <EnZl2_Destroy>
    3884:	24840000 	addiu	a0,a0,0
    3888:	44822000 	mtc1	v0,$f4
    388c:	8fae0030 	lw	t6,48(sp)
    3890:	468021a0 	cvt.s.w	$f6,$f4
    3894:	e5c60278 	swc1	$f6,632(t6)
    3898:	8fa50034 	lw	a1,52(sp)
    389c:	0c000000 	jal	0 <EnZl2_Destroy>
    38a0:	8fa40030 	lw	a0,48(sp)
    38a4:	8fbf0014 	lw	ra,20(sp)
    38a8:	27bd0030 	addiu	sp,sp,48
    38ac:	03e00008 	jr	ra
    38b0:	00000000 	nop

000038b4 <EnZl2_Update>:
    38b4:	27bdffe8 	addiu	sp,sp,-24
    38b8:	afbf0014 	sw	ra,20(sp)
    38bc:	8c82019c 	lw	v0,412(a0)
    38c0:	04400008 	bltz	v0,38e4 <EnZl2_Update+0x30>
    38c4:	28410024 	slti	at,v0,36
    38c8:	10200006 	beqz	at,38e4 <EnZl2_Update+0x30>
    38cc:	00027080 	sll	t6,v0,0x2
    38d0:	3c030000 	lui	v1,0x0
    38d4:	006e1821 	addu	v1,v1,t6
    38d8:	8c630030 	lw	v1,48(v1)
    38dc:	14600006 	bnez	v1,38f8 <EnZl2_Update+0x44>
    38e0:	00000000 	nop
    38e4:	3c040000 	lui	a0,0x0
    38e8:	0c000000 	jal	0 <EnZl2_Destroy>
    38ec:	248401bc 	addiu	a0,a0,444
    38f0:	10000004 	b	3904 <EnZl2_Update+0x50>
    38f4:	8fbf0014 	lw	ra,20(sp)
    38f8:	0060f809 	jalr	v1
    38fc:	00000000 	nop
    3900:	8fbf0014 	lw	ra,20(sp)
    3904:	27bd0018 	addiu	sp,sp,24
    3908:	03e00008 	jr	ra
    390c:	00000000 	nop

00003910 <EnZl2_Init>:
    3910:	27bdffc0 	addiu	sp,sp,-64
    3914:	afa40040 	sw	a0,64(sp)
    3918:	afbf0024 	sw	ra,36(sp)
    391c:	afa50044 	sw	a1,68(sp)
    3920:	248400b4 	addiu	a0,a0,180
    3924:	3c060000 	lui	a2,0x0
    3928:	24c60000 	addiu	a2,a2,0
    392c:	afa4002c 	sw	a0,44(sp)
    3930:	24050000 	li	a1,0
    3934:	0c000000 	jal	0 <EnZl2_Destroy>
    3938:	3c0741f0 	lui	a3,0x41f0
    393c:	8fae002c 	lw	t6,44(sp)
    3940:	3c060000 	lui	a2,0x0
    3944:	24c60000 	addiu	a2,a2,0
    3948:	a1c00014 	sb	zero,20(t6)
    394c:	8fa50040 	lw	a1,64(sp)
    3950:	afa00018 	sw	zero,24(sp)
    3954:	afa00014 	sw	zero,20(sp)
    3958:	afa00010 	sw	zero,16(sp)
    395c:	8fa40044 	lw	a0,68(sp)
    3960:	00003825 	move	a3,zero
    3964:	0c000000 	jal	0 <EnZl2_Destroy>
    3968:	24a5014c 	addiu	a1,a1,332
    396c:	8faf0040 	lw	t7,64(sp)
    3970:	24010001 	li	at,1
    3974:	85e2001c 	lh	v0,28(t7)
    3978:	10410005 	beq	v0,at,3990 <EnZl2_Init+0x80>
    397c:	24010004 	li	at,4
    3980:	10410007 	beq	v0,at,39a0 <EnZl2_Init+0x90>
    3984:	00000000 	nop
    3988:	10000008 	b	39ac <EnZl2_Init+0x9c>
    398c:	8fbf0024 	lw	ra,36(sp)
    3990:	0c000000 	jal	0 <EnZl2_Destroy>
    3994:	2404006f 	li	a0,111
    3998:	10000004 	b	39ac <EnZl2_Init+0x9c>
    399c:	8fbf0024 	lw	ra,36(sp)
    39a0:	3c010000 	lui	at,0x0
    39a4:	a42013d2 	sh	zero,5074(at)
    39a8:	8fbf0024 	lw	ra,36(sp)
    39ac:	27bd0040 	addiu	sp,sp,64
    39b0:	03e00008 	jr	ra
    39b4:	00000000 	nop

000039b8 <EnZl2_OverrideLimbDraw>:
    39b8:	27bdffd8 	addiu	sp,sp,-40
    39bc:	8fae003c 	lw	t6,60(sp)
    39c0:	afbf0024 	sw	ra,36(sp)
    39c4:	8dc20264 	lw	v0,612(t6)
    39c8:	04400009 	bltz	v0,39f0 <EnZl2_OverrideLimbDraw+0x38>
    39cc:	00000000 	nop
    39d0:	1c400007 	bgtz	v0,39f0 <EnZl2_OverrideLimbDraw+0x38>
    39d4:	00027880 	sll	t7,v0,0x2
    39d8:	3c030000 	lui	v1,0x0
    39dc:	006f1821 	addu	v1,v1,t7
    39e0:	8c6300c0 	lw	v1,192(v1)
    39e4:	8fb80038 	lw	t8,56(sp)
    39e8:	54600007 	bnezl	v1,3a08 <EnZl2_OverrideLimbDraw+0x50>
    39ec:	8fb9003c 	lw	t9,60(sp)
    39f0:	3c040000 	lui	a0,0x0
    39f4:	0c000000 	jal	0 <EnZl2_Destroy>
    39f8:	248401f8 	addiu	a0,a0,504
    39fc:	10000007 	b	3a1c <EnZl2_OverrideLimbDraw+0x64>
    3a00:	00001025 	move	v0,zero
    3a04:	8fb9003c 	lw	t9,60(sp)
    3a08:	8fa80040 	lw	t0,64(sp)
    3a0c:	afb80010 	sw	t8,16(sp)
    3a10:	afb90014 	sw	t9,20(sp)
    3a14:	0060f809 	jalr	v1
    3a18:	afa80018 	sw	t0,24(sp)
    3a1c:	8fbf0024 	lw	ra,36(sp)
    3a20:	27bd0028 	addiu	sp,sp,40
    3a24:	03e00008 	jr	ra
    3a28:	00000000 	nop

00003a2c <func_80B523BC>:
    3a2c:	afa40000 	sw	a0,0(sp)
    3a30:	03e00008 	jr	ra
    3a34:	afa50004 	sw	a1,4(sp)

00003a38 <func_80B523C8>:
    3a38:	27bdff78 	addiu	sp,sp,-136
    3a3c:	afbf002c 	sw	ra,44(sp)
    3a40:	afb10028 	sw	s1,40(sp)
    3a44:	afb00024 	sw	s0,36(sp)
    3a48:	afa5008c 	sw	a1,140(sp)
    3a4c:	84820190 	lh	v0,400(a0)
    3a50:	84830194 	lh	v1,404(a0)
    3a54:	3c090000 	lui	t1,0x0
    3a58:	25290000 	addiu	t1,t1,0
    3a5c:	00027080 	sll	t6,v0,0x2
    3a60:	0003c880 	sll	t9,v1,0x2
    3a64:	012e7821 	addu	t7,t1,t6
    3a68:	01395021 	addu	t2,t1,t9
    3a6c:	8df80000 	lw	t8,0(t7)
    3a70:	8d4b0000 	lw	t3,0(t2)
    3a74:	3c0d0000 	lui	t5,0x0
    3a78:	afb80074 	sw	t8,116(sp)
    3a7c:	afab0070 	sw	t3,112(sp)
    3a80:	84880198 	lh	t0,408(a0)
    3a84:	00808825 	move	s1,a0
    3a88:	3c060000 	lui	a2,0x0
    3a8c:	00086080 	sll	t4,t0,0x2
    3a90:	01ac6821 	addu	t5,t5,t4
    3a94:	8dad0000 	lw	t5,0(t5)
    3a98:	24c60238 	addiu	a2,a2,568
    3a9c:	27a4004c 	addiu	a0,sp,76
    3aa0:	afad0064 	sw	t5,100(sp)
    3aa4:	8ca50000 	lw	a1,0(a1)
    3aa8:	24070657 	li	a3,1623
    3aac:	0c000000 	jal	0 <EnZl2_Destroy>
    3ab0:	00a08025 	move	s0,a1
    3ab4:	8faf008c 	lw	t7,140(sp)
    3ab8:	0c000000 	jal	0 <EnZl2_Destroy>
    3abc:	8de40000 	lw	a0,0(t7)
    3ac0:	8fa70074 	lw	a3,116(sp)
    3ac4:	8e0202c0 	lw	v0,704(s0)
    3ac8:	3c040000 	lui	a0,0x0
    3acc:	00075100 	sll	t2,a3,0x4
    3ad0:	000a5f02 	srl	t3,t2,0x1c
    3ad4:	3c19db06 	lui	t9,0xdb06
    3ad8:	24580008 	addiu	t8,v0,8
    3adc:	ae1802c0 	sw	t8,704(s0)
    3ae0:	37390020 	ori	t9,t9,0x20
    3ae4:	000b6080 	sll	t4,t3,0x2
    3ae8:	24840000 	addiu	a0,a0,0
    3aec:	008c6821 	addu	t5,a0,t4
    3af0:	ac590000 	sw	t9,0(v0)
    3af4:	8dae0000 	lw	t6,0(t5)
    3af8:	3c0500ff 	lui	a1,0xff
    3afc:	34a5ffff 	ori	a1,a1,0xffff
    3b00:	00e57824 	and	t7,a3,a1
    3b04:	3c068000 	lui	a2,0x8000
    3b08:	01cfc021 	addu	t8,t6,t7
    3b0c:	0306c821 	addu	t9,t8,a2
    3b10:	ac590004 	sw	t9,4(v0)
    3b14:	8fa70070 	lw	a3,112(sp)
    3b18:	8e0202c0 	lw	v0,704(s0)
    3b1c:	3c0bdb06 	lui	t3,0xdb06
    3b20:	00076100 	sll	t4,a3,0x4
    3b24:	000c6f02 	srl	t5,t4,0x1c
    3b28:	244a0008 	addiu	t2,v0,8
    3b2c:	ae0a02c0 	sw	t2,704(s0)
    3b30:	000d7080 	sll	t6,t5,0x2
    3b34:	356b0024 	ori	t3,t3,0x24
    3b38:	008e7821 	addu	t7,a0,t6
    3b3c:	ac4b0000 	sw	t3,0(v0)
    3b40:	8df80000 	lw	t8,0(t7)
    3b44:	00e5c824 	and	t9,a3,a1
    3b48:	3c0ddb06 	lui	t5,0xdb06
    3b4c:	03195021 	addu	t2,t8,t9
    3b50:	01465821 	addu	t3,t2,a2
    3b54:	ac4b0004 	sw	t3,4(v0)
    3b58:	8fa70064 	lw	a3,100(sp)
    3b5c:	8e0202c0 	lw	v0,704(s0)
    3b60:	35ad0028 	ori	t5,t5,0x28
    3b64:	00077100 	sll	t6,a3,0x4
    3b68:	000e7f02 	srl	t7,t6,0x1c
    3b6c:	244c0008 	addiu	t4,v0,8
    3b70:	ae0c02c0 	sw	t4,704(s0)
    3b74:	000fc080 	sll	t8,t7,0x2
    3b78:	0098c821 	addu	t9,a0,t8
    3b7c:	ac4d0000 	sw	t5,0(v0)
    3b80:	8f2a0000 	lw	t2,0(t9)
    3b84:	00e55824 	and	t3,a3,a1
    3b88:	241800ff 	li	t8,255
    3b8c:	014b6021 	addu	t4,t2,t3
    3b90:	01866821 	addu	t5,t4,a2
    3b94:	ac4d0004 	sw	t5,4(v0)
    3b98:	8e0202c0 	lw	v0,704(s0)
    3b9c:	3c0ffb00 	lui	t7,0xfb00
    3ba0:	3c0b0000 	lui	t3,0x0
    3ba4:	244e0008 	addiu	t6,v0,8
    3ba8:	ae0e02c0 	sw	t6,704(s0)
    3bac:	ac580004 	sw	t8,4(v0)
    3bb0:	ac4f0000 	sw	t7,0(v0)
    3bb4:	8e0202c0 	lw	v0,704(s0)
    3bb8:	3c0adb06 	lui	t2,0xdb06
    3bbc:	354a002c 	ori	t2,t2,0x2c
    3bc0:	24590008 	addiu	t9,v0,8
    3bc4:	ae1902c0 	sw	t9,704(s0)
    3bc8:	256b0010 	addiu	t3,t3,16
    3bcc:	ac4b0004 	sw	t3,4(v0)
    3bd0:	ac4a0000 	sw	t2,0(v0)
    3bd4:	2622014c 	addiu	v0,s1,332
    3bd8:	8c450004 	lw	a1,4(v0)
    3bdc:	8c460020 	lw	a2,32(v0)
    3be0:	90470002 	lbu	a3,2(v0)
    3be4:	3c0d0000 	lui	t5,0x0
    3be8:	3c0c0000 	lui	t4,0x0
    3bec:	258c0000 	addiu	t4,t4,0
    3bf0:	25ad0000 	addiu	t5,t5,0
    3bf4:	afad0014 	sw	t5,20(sp)
    3bf8:	afac0010 	sw	t4,16(sp)
    3bfc:	afb10018 	sw	s1,24(sp)
    3c00:	8e0e02c0 	lw	t6,704(s0)
    3c04:	8fa4008c 	lw	a0,140(sp)
    3c08:	0c000000 	jal	0 <EnZl2_Destroy>
    3c0c:	afae001c 	sw	t6,28(sp)
    3c10:	ae0202c0 	sw	v0,704(s0)
    3c14:	8faf008c 	lw	t7,140(sp)
    3c18:	3c060000 	lui	a2,0x0
    3c1c:	24c60248 	addiu	a2,a2,584
    3c20:	27a4004c 	addiu	a0,sp,76
    3c24:	24070670 	li	a3,1648
    3c28:	0c000000 	jal	0 <EnZl2_Destroy>
    3c2c:	8de50000 	lw	a1,0(t7)
    3c30:	8fbf002c 	lw	ra,44(sp)
    3c34:	8fb00024 	lw	s0,36(sp)
    3c38:	8fb10028 	lw	s1,40(sp)
    3c3c:	03e00008 	jr	ra
    3c40:	27bd0088 	addiu	sp,sp,136

00003c44 <func_80B525D4>:
    3c44:	27bdff78 	addiu	sp,sp,-136
    3c48:	afbf002c 	sw	ra,44(sp)
    3c4c:	afb10028 	sw	s1,40(sp)
    3c50:	afb00024 	sw	s0,36(sp)
    3c54:	afa5008c 	sw	a1,140(sp)
    3c58:	84820190 	lh	v0,400(a0)
    3c5c:	3c0f0000 	lui	t7,0x0
    3c60:	3c190000 	lui	t9,0x0
    3c64:	00027080 	sll	t6,v0,0x2
    3c68:	01ee7821 	addu	t7,t7,t6
    3c6c:	8def0000 	lw	t7,0(t7)
    3c70:	00808825 	move	s1,a0
    3c74:	3c060000 	lui	a2,0x0
    3c78:	afaf0078 	sw	t7,120(sp)
    3c7c:	84830198 	lh	v1,408(a0)
    3c80:	27a40054 	addiu	a0,sp,84
    3c84:	24c60258 	addiu	a2,a2,600
    3c88:	0003c080 	sll	t8,v1,0x2
    3c8c:	0338c821 	addu	t9,t9,t8
    3c90:	8f390000 	lw	t9,0(t9)
    3c94:	2407067f 	li	a3,1663
    3c98:	afb9006c 	sw	t9,108(sp)
    3c9c:	8ca50000 	lw	a1,0(a1)
    3ca0:	0c000000 	jal	0 <EnZl2_Destroy>
    3ca4:	00a08025 	move	s0,a1
    3ca8:	8fab008c 	lw	t3,140(sp)
    3cac:	0c000000 	jal	0 <EnZl2_Destroy>
    3cb0:	8d640000 	lw	a0,0(t3)
    3cb4:	8fa90078 	lw	t1,120(sp)
    3cb8:	8e0202d0 	lw	v0,720(s0)
    3cbc:	3c070000 	lui	a3,0x0
    3cc0:	00097100 	sll	t6,t1,0x4
    3cc4:	000e7f02 	srl	t7,t6,0x1c
    3cc8:	3c0ddb06 	lui	t5,0xdb06
    3ccc:	244c0008 	addiu	t4,v0,8
    3cd0:	ae0c02d0 	sw	t4,720(s0)
    3cd4:	35ad0020 	ori	t5,t5,0x20
    3cd8:	000fc080 	sll	t8,t7,0x2
    3cdc:	24e70000 	addiu	a3,a3,0
    3ce0:	00f82021 	addu	a0,a3,t8
    3ce4:	ac4d0000 	sw	t5,0(v0)
    3ce8:	8c990000 	lw	t9,0(a0)
    3cec:	3c0800ff 	lui	t0,0xff
    3cf0:	3508ffff 	ori	t0,t0,0xffff
    3cf4:	01282824 	and	a1,t1,t0
    3cf8:	3c068000 	lui	a2,0x8000
    3cfc:	03255021 	addu	t2,t9,a1
    3d00:	01465821 	addu	t3,t2,a2
    3d04:	ac4b0004 	sw	t3,4(v0)
    3d08:	8e0202d0 	lw	v0,720(s0)
    3d0c:	3c0ddb06 	lui	t5,0xdb06
    3d10:	35ad0024 	ori	t5,t5,0x24
    3d14:	244c0008 	addiu	t4,v0,8
    3d18:	ae0c02d0 	sw	t4,720(s0)
    3d1c:	ac4d0000 	sw	t5,0(v0)
    3d20:	8c8e0000 	lw	t6,0(a0)
    3d24:	3c0adb06 	lui	t2,0xdb06
    3d28:	354a0028 	ori	t2,t2,0x28
    3d2c:	01c57821 	addu	t7,t6,a1
    3d30:	01e6c021 	addu	t8,t7,a2
    3d34:	ac580004 	sw	t8,4(v0)
    3d38:	8fa4006c 	lw	a0,108(sp)
    3d3c:	8e0202d0 	lw	v0,720(s0)
    3d40:	00045900 	sll	t3,a0,0x4
    3d44:	000b6702 	srl	t4,t3,0x1c
    3d48:	24590008 	addiu	t9,v0,8
    3d4c:	ae1902d0 	sw	t9,720(s0)
    3d50:	000c6880 	sll	t5,t4,0x2
    3d54:	00ed7021 	addu	t6,a3,t5
    3d58:	ac4a0000 	sw	t2,0(v0)
    3d5c:	8dcf0000 	lw	t7,0(t6)
    3d60:	0088c024 	and	t8,a0,t0
    3d64:	3c0cfb00 	lui	t4,0xfb00
    3d68:	01f8c821 	addu	t9,t7,t8
    3d6c:	03265021 	addu	t2,t9,a2
    3d70:	ac4a0004 	sw	t2,4(v0)
    3d74:	8e0202d0 	lw	v0,720(s0)
    3d78:	3c190000 	lui	t9,0x0
    3d7c:	3c18db06 	lui	t8,0xdb06
    3d80:	244b0008 	addiu	t3,v0,8
    3d84:	ae0b02d0 	sw	t3,720(s0)
    3d88:	ac4c0000 	sw	t4,0(v0)
    3d8c:	8e2d01a8 	lw	t5,424(s1)
    3d90:	3718002c 	ori	t8,t8,0x2c
    3d94:	27390000 	addiu	t9,t9,0
    3d98:	31ae00ff 	andi	t6,t5,0xff
    3d9c:	ac4e0004 	sw	t6,4(v0)
    3da0:	8e0202d0 	lw	v0,720(s0)
    3da4:	3c0a0000 	lui	t2,0x0
    3da8:	254a0000 	addiu	t2,t2,0
    3dac:	244f0008 	addiu	t7,v0,8
    3db0:	ae0f02d0 	sw	t7,720(s0)
    3db4:	ac590004 	sw	t9,4(v0)
    3db8:	ac580000 	sw	t8,0(v0)
    3dbc:	2622014c 	addiu	v0,s1,332
    3dc0:	8c450004 	lw	a1,4(v0)
    3dc4:	8c460020 	lw	a2,32(v0)
    3dc8:	90470002 	lbu	a3,2(v0)
    3dcc:	afb10018 	sw	s1,24(sp)
    3dd0:	afa00014 	sw	zero,20(sp)
    3dd4:	afaa0010 	sw	t2,16(sp)
    3dd8:	8e0b02d0 	lw	t3,720(s0)
    3ddc:	8fa4008c 	lw	a0,140(sp)
    3de0:	0c000000 	jal	0 <EnZl2_Destroy>
    3de4:	afab001c 	sw	t3,28(sp)
    3de8:	ae0202d0 	sw	v0,720(s0)
    3dec:	8fac008c 	lw	t4,140(sp)
    3df0:	3c060000 	lui	a2,0x0
    3df4:	24c60268 	addiu	a2,a2,616
    3df8:	27a40054 	addiu	a0,sp,84
    3dfc:	2407069c 	li	a3,1692
    3e00:	0c000000 	jal	0 <EnZl2_Destroy>
    3e04:	8d850000 	lw	a1,0(t4)
    3e08:	8fbf002c 	lw	ra,44(sp)
    3e0c:	8fb00024 	lw	s0,36(sp)
    3e10:	8fb10028 	lw	s1,40(sp)
    3e14:	03e00008 	jr	ra
    3e18:	27bd0088 	addiu	sp,sp,136

00003e1c <EnZl2_Draw>:
    3e1c:	27bdffe8 	addiu	sp,sp,-24
    3e20:	afbf0014 	sw	ra,20(sp)
    3e24:	8c8201a0 	lw	v0,416(a0)
    3e28:	04400008 	bltz	v0,3e4c <EnZl2_Draw+0x30>
    3e2c:	28410003 	slti	at,v0,3
    3e30:	10200006 	beqz	at,3e4c <EnZl2_Draw+0x30>
    3e34:	00027080 	sll	t6,v0,0x2
    3e38:	3c030000 	lui	v1,0x0
    3e3c:	006e1821 	addu	v1,v1,t6
    3e40:	8c6300c4 	lw	v1,196(v1)
    3e44:	14600006 	bnez	v1,3e60 <EnZl2_Draw+0x44>
    3e48:	00000000 	nop
    3e4c:	3c040000 	lui	a0,0x0
    3e50:	0c000000 	jal	0 <EnZl2_Destroy>
    3e54:	24840278 	addiu	a0,a0,632
    3e58:	10000004 	b	3e6c <EnZl2_Draw+0x50>
    3e5c:	8fbf0014 	lw	ra,20(sp)
    3e60:	0060f809 	jalr	v1
    3e64:	00000000 	nop
    3e68:	8fbf0014 	lw	ra,20(sp)
    3e6c:	27bd0018 	addiu	sp,sp,24
    3e70:	03e00008 	jr	ra
    3e74:	00000000 	nop
	...
