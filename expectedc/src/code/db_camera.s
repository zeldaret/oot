
build/src/code/db_camera.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800B3B50>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa40030 	sw	a0,48(sp)
       c:	00a03825 	move	a3,a1
      10:	afa70034 	sw	a3,52(sp)
      14:	00c02825 	move	a1,a2
      18:	0c000000 	jal	0 <func_800B3B50>
      1c:	27a40018 	addiu	a0,sp,24
      20:	8fa70034 	lw	a3,52(sp)
      24:	c7a60018 	lwc1	$f6,24(sp)
      28:	c7b0001c 	lwc1	$f16,28(sp)
      2c:	c4e40000 	lwc1	$f4,0(a3)
      30:	27ae0024 	addiu	t6,sp,36
      34:	8fa20030 	lw	v0,48(sp)
      38:	46062200 	add.s	$f8,$f4,$f6
      3c:	c7a60020 	lwc1	$f6,32(sp)
      40:	e7a80024 	swc1	$f8,36(sp)
      44:	c4ea0004 	lwc1	$f10,4(a3)
      48:	46105480 	add.s	$f18,$f10,$f16
      4c:	e7b20028 	swc1	$f18,40(sp)
      50:	c4e40008 	lwc1	$f4,8(a3)
      54:	46062200 	add.s	$f8,$f4,$f6
      58:	e7a8002c 	swc1	$f8,44(sp)
      5c:	8dd80000 	lw	t8,0(t6)
      60:	ac580000 	sw	t8,0(v0)
      64:	8dcf0004 	lw	t7,4(t6)
      68:	ac4f0004 	sw	t7,4(v0)
      6c:	8dd80008 	lw	t8,8(t6)
      70:	ac580008 	sw	t8,8(v0)
      74:	8fbf0014 	lw	ra,20(sp)
      78:	27bd0030 	addiu	sp,sp,48
      7c:	03e00008 	jr	ra
      80:	00000000 	nop

00000084 <func_800B3BD4>:
      84:	27bdff40 	addiu	sp,sp,-192
      88:	afbf0024 	sw	ra,36(sp)
      8c:	afa400c0 	sw	a0,192(sp)
      90:	afa500c4 	sw	a1,196(sp)
      94:	f7b60018 	sdc1	$f22,24(sp)
      98:	f7b40010 	sdc1	$f20,16(sp)
      9c:	afa600c8 	sw	a2,200(sp)
      a0:	afa700cc 	sw	a3,204(sp)
      a4:	0c000000 	jal	0 <func_800B3B50>
      a8:	87a400c6 	lh	a0,198(sp)
      ac:	46000586 	mov.s	$f22,$f0
      b0:	0c000000 	jal	0 <func_800B3B50>
      b4:	87a400c6 	lh	a0,198(sp)
      b8:	46000506 	mov.s	$f20,$f0
      bc:	0c000000 	jal	0 <func_800B3B50>
      c0:	87a400ca 	lh	a0,202(sp)
      c4:	e7a000b4 	swc1	$f0,180(sp)
      c8:	0c000000 	jal	0 <func_800B3B50>
      cc:	87a400ca 	lh	a0,202(sp)
      d0:	87a400ce 	lh	a0,206(sp)
      d4:	e7a000b0 	swc1	$f0,176(sp)
      d8:	00042023 	negu	a0,a0
      dc:	00042400 	sll	a0,a0,0x10
      e0:	00042403 	sra	a0,a0,0x10
      e4:	0c000000 	jal	0 <func_800B3B50>
      e8:	afa4005c 	sw	a0,92(sp)
      ec:	8fa4005c 	lw	a0,92(sp)
      f0:	0c000000 	jal	0 <func_800B3B50>
      f4:	e7a000ac 	swc1	$f0,172(sp)
      f8:	4600b287 	neg.s	$f10,$f22
      fc:	c7a400b4 	lwc1	$f4,180(sp)
     100:	e7aa005c 	swc1	$f10,92(sp)
     104:	c7a6005c 	lwc1	$f6,92(sp)
     108:	3c013f80 	lui	at,0x3f80
     10c:	44815000 	mtc1	at,$f10
     110:	46043382 	mul.s	$f14,$f6,$f4
     114:	27b9009c 	addiu	t9,sp,156
     118:	46005481 	sub.s	$f18,$f10,$f0
     11c:	4604a082 	mul.s	$f2,$f20,$f4
     120:	c7aa00b0 	lwc1	$f10,176(sp)
     124:	8fa200c0 	lw	v0,192(sp)
     128:	46021202 	mul.s	$f8,$f2,$f2
     12c:	00000000 	nop
     130:	46161102 	mul.s	$f4,$f2,$f22
     134:	e7a80050 	swc1	$f8,80(sp)
     138:	46049202 	mul.s	$f8,$f18,$f4
     13c:	c7a400ac 	lwc1	$f4,172(sp)
     140:	460aa302 	mul.s	$f12,$f20,$f10
     144:	e7a40028 	swc1	$f4,40(sp)
     148:	e7a80048 	swc1	$f8,72(sp)
     14c:	46046202 	mul.s	$f8,$f12,$f4
     150:	e7a80040 	swc1	$f8,64(sp)
     154:	460a3402 	mul.s	$f16,$f6,$f10
     158:	00000000 	nop
     15c:	46026202 	mul.s	$f8,$f12,$f2
     160:	00000000 	nop
     164:	46089182 	mul.s	$f6,$f18,$f8
     168:	44814000 	mtc1	at,$f8
     16c:	4604b282 	mul.s	$f10,$f22,$f4
     170:	e7a6003c 	swc1	$f6,60(sp)
     174:	c7a60050 	lwc1	$f6,80(sp)
     178:	e7aa0038 	swc1	$f10,56(sp)
     17c:	46064281 	sub.s	$f10,$f8,$f6
     180:	46005202 	mul.s	$f8,$f10,$f0
     184:	46064280 	add.s	$f10,$f8,$f6
     188:	c7a60048 	lwc1	$f6,72(sp)
     18c:	460a7202 	mul.s	$f8,$f14,$f10
     190:	c7aa0040 	lwc1	$f10,64(sp)
     194:	e7a6002c 	swc1	$f6,44(sp)
     198:	e7aa0030 	swc1	$f10,48(sp)
     19c:	460a3101 	sub.s	$f4,$f6,$f10
     1a0:	c7a60038 	lwc1	$f6,56(sp)
     1a4:	4604a102 	mul.s	$f4,$f20,$f4
     1a8:	46044200 	add.s	$f8,$f8,$f4
     1ac:	c7a4003c 	lwc1	$f4,60(sp)
     1b0:	46062280 	add.s	$f10,$f4,$f6
     1b4:	460a8282 	mul.s	$f10,$f16,$f10
     1b8:	460a4200 	add.s	$f8,$f8,$f10
     1bc:	4616b282 	mul.s	$f10,$f22,$f22
     1c0:	e7a8009c 	swc1	$f8,156(sp)
     1c4:	460cb202 	mul.s	$f8,$f22,$f12
     1c8:	e7aa0050 	swc1	$f10,80(sp)
     1cc:	46089282 	mul.s	$f10,$f18,$f8
     1d0:	c7a80028 	lwc1	$f8,40(sp)
     1d4:	e7aa004c 	swc1	$f10,76(sp)
     1d8:	46081282 	mul.s	$f10,$f2,$f8
     1dc:	c7a8002c 	lwc1	$f8,44(sp)
     1e0:	e7aa0054 	swc1	$f10,84(sp)
     1e4:	c7aa0030 	lwc1	$f10,48(sp)
     1e8:	e7a40030 	swc1	$f4,48(sp)
     1ec:	c7a40050 	lwc1	$f4,80(sp)
     1f0:	460a4200 	add.s	$f8,$f8,$f10
     1f4:	46087282 	mul.s	$f10,$f14,$f8
     1f8:	44814000 	mtc1	at,$f8
     1fc:	00000000 	nop
     200:	46044201 	sub.s	$f8,$f8,$f4
     204:	46004102 	mul.s	$f4,$f8,$f0
     208:	c7a80050 	lwc1	$f8,80(sp)
     20c:	46082100 	add.s	$f4,$f4,$f8
     210:	4604a202 	mul.s	$f8,$f20,$f4
     214:	46085100 	add.s	$f4,$f10,$f8
     218:	c7a80054 	lwc1	$f8,84(sp)
     21c:	c7aa004c 	lwc1	$f10,76(sp)
     220:	46085281 	sub.s	$f10,$f10,$f8
     224:	460a8202 	mul.s	$f8,$f16,$f10
     228:	46082280 	add.s	$f10,$f4,$f8
     22c:	460c6102 	mul.s	$f4,$f12,$f12
     230:	c7a80030 	lwc1	$f8,48(sp)
     234:	e7aa00a0 	swc1	$f10,160(sp)
     238:	46064281 	sub.s	$f10,$f8,$f6
     23c:	c7a60054 	lwc1	$f6,84(sp)
     240:	c7a8004c 	lwc1	$f8,76(sp)
     244:	e7a40050 	swc1	$f4,80(sp)
     248:	460a7102 	mul.s	$f4,$f14,$f10
     24c:	46064280 	add.s	$f10,$f8,$f6
     250:	460aa202 	mul.s	$f8,$f20,$f10
     254:	44815000 	mtc1	at,$f10
     258:	46082180 	add.s	$f6,$f4,$f8
     25c:	c7a40050 	lwc1	$f4,80(sp)
     260:	46045201 	sub.s	$f8,$f10,$f4
     264:	c7a40050 	lwc1	$f4,80(sp)
     268:	46004282 	mul.s	$f10,$f8,$f0
     26c:	46045200 	add.s	$f8,$f10,$f4
     270:	46088282 	mul.s	$f10,$f16,$f8
     274:	460a3100 	add.s	$f4,$f6,$f10
     278:	e7a400a4 	swc1	$f4,164(sp)
     27c:	8f290000 	lw	t1,0(t9)
     280:	ac490000 	sw	t1,0(v0)
     284:	8f280004 	lw	t0,4(t9)
     288:	ac480004 	sw	t0,4(v0)
     28c:	8f290008 	lw	t1,8(t9)
     290:	ac490008 	sw	t1,8(v0)
     294:	8fbf0024 	lw	ra,36(sp)
     298:	d7b60018 	ldc1	$f22,24(sp)
     29c:	d7b40010 	ldc1	$f20,16(sp)
     2a0:	03e00008 	jr	ra
     2a4:	27bd00c0 	addiu	sp,sp,192

000002a8 <func_800B3DF8>:
     2a8:	afa60008 	sw	a2,8(sp)
     2ac:	30c600ff 	andi	a2,a2,0xff
     2b0:	afa40000 	sw	a0,0(sp)
     2b4:	00042400 	sll	a0,a0,0x10
     2b8:	00042403 	sra	a0,a0,0x10
     2bc:	00c51821 	addu	v1,a2,a1
     2c0:	00a67021 	addu	t6,a1,a2
     2c4:	2463ffff 	addiu	v1,v1,-1
     2c8:	04800003 	bltz	a0,2d8 <func_800B3DF8+0x30>
     2cc:	a1c00000 	sb	zero,0(t6)
     2d0:	10000005 	b	2e8 <func_800B3DF8+0x40>
     2d4:	24020020 	li	v0,32
     2d8:	00042023 	negu	a0,a0
     2dc:	00042400 	sll	a0,a0,0x10
     2e0:	2402002d 	li	v0,45
     2e4:	00042403 	sra	a0,a0,0x10
     2e8:	2406000a 	li	a2,10
     2ec:	0086001a 	div	zero,a0,a2
     2f0:	14c00002 	bnez	a2,2fc <func_800B3DF8+0x54>
     2f4:	00000000 	nop
     2f8:	0007000d 	break	0x7
     2fc:	2401ffff 	li	at,-1
     300:	14c10004 	bne	a2,at,314 <func_800B3DF8+0x6c>
     304:	3c018000 	lui	at,0x8000
     308:	14810002 	bne	a0,at,314 <func_800B3DF8+0x6c>
     30c:	00000000 	nop
     310:	0006000d 	break	0x6
     314:	00002012 	mflo	a0
     318:	00042400 	sll	a0,a0,0x10
     31c:	00007810 	mfhi	t7
     320:	25f80030 	addiu	t8,t7,48
     324:	00042403 	sra	a0,a0,0x10
     328:	a0780000 	sb	t8,0(v1)
     32c:	1480ffef 	bnez	a0,2ec <func_800B3DF8+0x44>
     330:	2463ffff 	addiu	v1,v1,-1
     334:	2401002d 	li	at,45
     338:	54410004 	bnel	v0,at,34c <func_800B3DF8+0xa4>
     33c:	0065082b 	sltu	at,v1,a1
     340:	a0620000 	sb	v0,0(v1)
     344:	2463ffff 	addiu	v1,v1,-1
     348:	0065082b 	sltu	at,v1,a1
     34c:	14200005 	bnez	at,364 <func_800B3DF8+0xbc>
     350:	24020020 	li	v0,32
     354:	24a50001 	addiu	a1,a1,1
     358:	0065082b 	sltu	at,v1,a1
     35c:	1020fffd 	beqz	at,354 <func_800B3DF8+0xac>
     360:	a0a2ffff 	sb	v0,-1(a1)
     364:	03e00008 	jr	ra
     368:	00601025 	move	v0,v1

0000036c <func_800B3EBC>:
     36c:	848e0000 	lh	t6,0(a0)
     370:	448e2000 	mtc1	t6,$f4
     374:	00000000 	nop
     378:	468021a0 	cvt.s.w	$f6,$f4
     37c:	e4a60000 	swc1	$f6,0(a1)
     380:	848f0002 	lh	t7,2(a0)
     384:	448f4000 	mtc1	t7,$f8
     388:	00000000 	nop
     38c:	468042a0 	cvt.s.w	$f10,$f8
     390:	e4aa0004 	swc1	$f10,4(a1)
     394:	84980004 	lh	t8,4(a0)
     398:	44988000 	mtc1	t8,$f16
     39c:	00000000 	nop
     3a0:	468084a0 	cvt.s.w	$f18,$f16
     3a4:	03e00008 	jr	ra
     3a8:	e4b20008 	swc1	$f18,8(a1)

000003ac <func_800B3EFC>:
     3ac:	c4840000 	lwc1	$f4,0(a0)
     3b0:	4600218d 	trunc.w.s	$f6,$f4
     3b4:	440f3000 	mfc1	t7,$f6
     3b8:	00000000 	nop
     3bc:	a4af0000 	sh	t7,0(a1)
     3c0:	c4880004 	lwc1	$f8,4(a0)
     3c4:	4600428d 	trunc.w.s	$f10,$f8
     3c8:	44195000 	mfc1	t9,$f10
     3cc:	00000000 	nop
     3d0:	a4b90002 	sh	t9,2(a1)
     3d4:	c4900008 	lwc1	$f16,8(a0)
     3d8:	4600848d 	trunc.w.s	$f18,$f16
     3dc:	44099000 	mfc1	t1,$f18
     3e0:	03e00008 	jr	ra
     3e4:	a4a90004 	sh	t1,4(a1)

000003e8 <func_800B3F38>:
     3e8:	c4840000 	lwc1	$f4,0(a0)
     3ec:	e4a40000 	swc1	$f4,0(a1)
     3f0:	c4860004 	lwc1	$f6,4(a0)
     3f4:	e4a60004 	swc1	$f6,4(a1)
     3f8:	c4880008 	lwc1	$f8,8(a0)
     3fc:	03e00008 	jr	ra
     400:	e4a80008 	swc1	$f8,8(a1)

00000404 <func_800B3F54>:
     404:	848e0000 	lh	t6,0(a0)
     408:	448e2000 	mtc1	t6,$f4
     40c:	00000000 	nop
     410:	468021a0 	cvt.s.w	$f6,$f4
     414:	e4a60000 	swc1	$f6,0(a1)
     418:	848f0002 	lh	t7,2(a0)
     41c:	448f4000 	mtc1	t7,$f8
     420:	00000000 	nop
     424:	468042a0 	cvt.s.w	$f10,$f8
     428:	e4aa0004 	swc1	$f10,4(a1)
     42c:	84980004 	lh	t8,4(a0)
     430:	44988000 	mtc1	t8,$f16
     434:	00000000 	nop
     438:	468084a0 	cvt.s.w	$f18,$f16
     43c:	03e00008 	jr	ra
     440:	e4b20008 	swc1	$f18,8(a1)

00000444 <func_800B3F94>:
     444:	27bdffd0 	addiu	sp,sp,-48
     448:	afa60038 	sw	a2,56(sp)
     44c:	00a03025 	move	a2,a1
     450:	afbf0014 	sw	ra,20(sp)
     454:	afa40030 	sw	a0,48(sp)
     458:	afa50034 	sw	a1,52(sp)
     45c:	8fa50030 	lw	a1,48(sp)
     460:	0c000000 	jal	0 <func_800B3B50>
     464:	27a40028 	addiu	a0,sp,40
     468:	8faf0030 	lw	t7,48(sp)
     46c:	87ae002e 	lh	t6,46(sp)
     470:	27a4001c 	addiu	a0,sp,28
     474:	85f8000e 	lh	t8,14(t7)
     478:	27a50028 	addiu	a1,sp,40
     47c:	01d8c823 	subu	t9,t6,t8
     480:	0c000000 	jal	0 <func_800B3B50>
     484:	a7b9002e 	sh	t9,46(sp)
     488:	27a4001c 	addiu	a0,sp,28
     48c:	0c000000 	jal	0 <func_800B3B50>
     490:	8fa50038 	lw	a1,56(sp)
     494:	8fbf0014 	lw	ra,20(sp)
     498:	27bd0030 	addiu	sp,sp,48
     49c:	03e00008 	jr	ra
     4a0:	00000000 	nop

000004a4 <func_800B3FF4>:
     4a4:	27bdffd0 	addiu	sp,sp,-48
     4a8:	afa40030 	sw	a0,48(sp)
     4ac:	afbf0014 	sw	ra,20(sp)
     4b0:	00a02025 	move	a0,a1
     4b4:	afa60038 	sw	a2,56(sp)
     4b8:	0c000000 	jal	0 <func_800B3B50>
     4bc:	27a5001c 	addiu	a1,sp,28
     4c0:	27a40028 	addiu	a0,sp,40
     4c4:	0c000000 	jal	0 <func_800B3B50>
     4c8:	27a5001c 	addiu	a1,sp,28
     4cc:	8fa50030 	lw	a1,48(sp)
     4d0:	87ae002e 	lh	t6,46(sp)
     4d4:	8fa40038 	lw	a0,56(sp)
     4d8:	84af000e 	lh	t7,14(a1)
     4dc:	27a60028 	addiu	a2,sp,40
     4e0:	01cfc021 	addu	t8,t6,t7
     4e4:	0c000000 	jal	0 <func_800B3B50>
     4e8:	a7b8002e 	sh	t8,46(sp)
     4ec:	8fbf0014 	lw	ra,20(sp)
     4f0:	27bd0030 	addiu	sp,sp,48
     4f4:	03e00008 	jr	ra
     4f8:	00000000 	nop

000004fc <func_800B404C>:
     4fc:	27bdffd8 	addiu	sp,sp,-40
     500:	afa40028 	sw	a0,40(sp)
     504:	afbf0014 	sw	ra,20(sp)
     508:	00a02025 	move	a0,a1
     50c:	afa60030 	sw	a2,48(sp)
     510:	0c000000 	jal	0 <func_800B3B50>
     514:	27a5001c 	addiu	a1,sp,28
     518:	8fa40028 	lw	a0,40(sp)
     51c:	27a5001c 	addiu	a1,sp,28
     520:	0c000000 	jal	0 <func_800B3B50>
     524:	8fa60030 	lw	a2,48(sp)
     528:	8fbf0014 	lw	ra,20(sp)
     52c:	27bd0028 	addiu	sp,sp,40
     530:	03e00008 	jr	ra
     534:	00000000 	nop

00000538 <func_800B4088>:
     538:	27bdffc8 	addiu	sp,sp,-56
     53c:	afbf001c 	sw	ra,28(sp)
     540:	afb00018 	sw	s0,24(sp)
     544:	afa5003c 	sw	a1,60(sp)
     548:	848e0082 	lh	t6,130(a0)
     54c:	2418ffff 	li	t8,-1
     550:	2408001e 	li	t0,30
     554:	000e7900 	sll	t7,t6,0x4
     558:	008f3021 	addu	a2,a0,t7
     55c:	24c200a0 	addiu	v0,a2,160
     560:	a0580000 	sb	t8,0(v0)
     564:	80590000 	lb	t9,0(v0)
     568:	24c308b0 	addiu	v1,a2,2224
     56c:	3c013fb4 	lui	at,0x3fb4
     570:	a0790000 	sb	t9,0(v1)
     574:	a4400002 	sh	zero,2(v0)
     578:	a4680002 	sh	t0,2(v1)
     57c:	8489004c 	lh	t1,76(a0)
     580:	44814000 	mtc1	at,$f8
     584:	00808025 	move	s0,a0
     588:	44892000 	mtc1	t1,$f4
     58c:	24010001 	li	at,1
     590:	24840010 	addiu	a0,a0,16
     594:	468021a0 	cvt.s.w	$f6,$f4
     598:	26050004 	addiu	a1,s0,4
     59c:	46083282 	mul.s	$f10,$f6,$f8
     5a0:	4600540d 	trunc.w.s	$f16,$f10
     5a4:	44078000 	mfc1	a3,$f16
     5a8:	00000000 	nop
     5ac:	00073e00 	sll	a3,a3,0x18
     5b0:	00073e03 	sra	a3,a3,0x18
     5b4:	a0470001 	sb	a3,1(v0)
     5b8:	a0670001 	sb	a3,1(v1)
     5bc:	c4800038 	lwc1	$f0,56(a0)
     5c0:	e4400004 	swc1	$f0,4(v0)
     5c4:	e4600004 	swc1	$f0,4(v1)
     5c8:	848b006c 	lh	t3,108(a0)
     5cc:	5161000b 	beql	t3,at,5fc <func_800B4088+0xc4>
     5d0:	8fa4003c 	lw	a0,60(sp)
     5d4:	24450008 	addiu	a1,v0,8
     5d8:	0c000000 	jal	0 <func_800B3B50>
     5dc:	afa30030 	sw	v1,48(sp)
     5e0:	8fa30030 	lw	v1,48(sp)
     5e4:	26040004 	addiu	a0,s0,4
     5e8:	0c000000 	jal	0 <func_800B3B50>
     5ec:	24650008 	addiu	a1,v1,8
     5f0:	1000000d 	b	628 <func_800B4088+0xf0>
     5f4:	860c0080 	lh	t4,128(s0)
     5f8:	8fa4003c 	lw	a0,60(sp)
     5fc:	24660008 	addiu	a2,v1,8
     600:	afa20034 	sw	v0,52(sp)
     604:	24840094 	addiu	a0,a0,148
     608:	0c000000 	jal	0 <func_800B3B50>
     60c:	afa40020 	sw	a0,32(sp)
     610:	8fa20034 	lw	v0,52(sp)
     614:	8fa40020 	lw	a0,32(sp)
     618:	26050010 	addiu	a1,s0,16
     61c:	0c000000 	jal	0 <func_800B3B50>
     620:	24460008 	addiu	a2,v0,8
     624:	860c0080 	lh	t4,128(s0)
     628:	00002025 	move	a0,zero
     62c:	02001825 	move	v1,s0
     630:	258dfffe 	addiu	t5,t4,-2
     634:	19a0000b 	blez	t5,664 <func_800B4088+0x12c>
     638:	2408ffff 	li	t0,-1
     63c:	a06008b0 	sb	zero,2224(v1)
     640:	806e08b0 	lb	t6,2224(v1)
     644:	24840001 	addiu	a0,a0,1
     648:	24630010 	addiu	v1,v1,16
     64c:	a06e0090 	sb	t6,144(v1)
     650:	860f0080 	lh	t7,128(s0)
     654:	25f8fffe 	addiu	t8,t7,-2
     658:	0098082a 	slt	at,a0,t8
     65c:	5420fff8 	bnezl	at,640 <func_800B4088+0x108>
     660:	a06008b0 	sb	zero,2224(v1)
     664:	0004c900 	sll	t9,a0,0x4
     668:	02191821 	addu	v1,s0,t9
     66c:	a06808b0 	sb	t0,2224(v1)
     670:	806908b0 	lb	t1,2224(v1)
     674:	a06900a0 	sb	t1,160(v1)
     678:	8fbf001c 	lw	ra,28(sp)
     67c:	86020082 	lh	v0,130(s0)
     680:	8fb00018 	lw	s0,24(sp)
     684:	03e00008 	jr	ra
     688:	27bd0038 	addiu	sp,sp,56

0000068c <func_800B41DC>:
     68c:	27bdffc8 	addiu	sp,sp,-56
     690:	afbf001c 	sw	ra,28(sp)
     694:	afb10018 	sw	s1,24(sp)
     698:	afb00014 	sw	s0,20(sp)
     69c:	afa5003c 	sw	a1,60(sp)
     6a0:	848e007c 	lh	t6,124(a0)
     6a4:	24010001 	li	at,1
     6a8:	00808025 	move	s0,a0
     6ac:	11c1000f 	beq	t6,at,6ec <func_800B41DC+0x60>
     6b0:	00c03825 	move	a3,a2
     6b4:	87af003e 	lh	t7,62(sp)
     6b8:	26050010 	addiu	a1,s0,16
     6bc:	000fc100 	sll	t8,t7,0x4
     6c0:	00981021 	addu	v0,a0,t8
     6c4:	244400a8 	addiu	a0,v0,168
     6c8:	0c000000 	jal	0 <func_800B3B50>
     6cc:	afa2002c 	sw	v0,44(sp)
     6d0:	8fa2002c 	lw	v0,44(sp)
     6d4:	26050004 	addiu	a1,s0,4
     6d8:	245108b0 	addiu	s1,v0,2224
     6dc:	0c000000 	jal	0 <func_800B3B50>
     6e0:	26240008 	addiu	a0,s1,8
     6e4:	10000011 	b	72c <func_800B41DC+0xa0>
     6e8:	82290001 	lb	t1,1(s1)
     6ec:	87b9003e 	lh	t9,62(sp)
     6f0:	24e40094 	addiu	a0,a3,148
     6f4:	afa40024 	sw	a0,36(sp)
     6f8:	00194100 	sll	t0,t9,0x4
     6fc:	02081021 	addu	v0,s0,t0
     700:	245108b0 	addiu	s1,v0,2224
     704:	26250008 	addiu	a1,s1,8
     708:	afa2002c 	sw	v0,44(sp)
     70c:	0c000000 	jal	0 <func_800B3B50>
     710:	26060004 	addiu	a2,s0,4
     714:	8fa2002c 	lw	v0,44(sp)
     718:	8fa40024 	lw	a0,36(sp)
     71c:	26060010 	addiu	a2,s0,16
     720:	0c000000 	jal	0 <func_800B3B50>
     724:	244500a8 	addiu	a1,v0,168
     728:	82290001 	lb	t1,1(s1)
     72c:	3c013fb4 	lui	at,0x3fb4
     730:	44814000 	mtc1	at,$f8
     734:	a609004c 	sh	t1,76(s0)
     738:	860a004c 	lh	t2,76(s0)
     73c:	448a2000 	mtc1	t2,$f4
     740:	00000000 	nop
     744:	468021a0 	cvt.s.w	$f6,$f4
     748:	46083282 	mul.s	$f10,$f6,$f8
     74c:	e60a0050 	swc1	$f10,80(s0)
     750:	c6300004 	lwc1	$f16,4(s1)
     754:	e6100048 	swc1	$f16,72(s0)
     758:	8fbf001c 	lw	ra,28(sp)
     75c:	8fb10018 	lw	s1,24(sp)
     760:	8fb00014 	lw	s0,20(sp)
     764:	87a2003e 	lh	v0,62(sp)
     768:	03e00008 	jr	ra
     76c:	27bd0038 	addiu	sp,sp,56

00000770 <func_800B42C0>:
     770:	27bdffd0 	addiu	sp,sp,-48
     774:	afbf001c 	sw	ra,28(sp)
     778:	afb00018 	sw	s0,24(sp)
     77c:	afa50034 	sw	a1,52(sp)
     780:	848e0082 	lh	t6,130(a0)
     784:	00808025 	move	s0,a0
     788:	24010001 	li	at,1
     78c:	000e7900 	sll	t7,t6,0x4
     790:	008f1021 	addu	v0,a0,t7
     794:	244308b0 	addiu	v1,v0,2224
     798:	a0600000 	sb	zero,0(v1)
     79c:	80780000 	lb	t8,0(v1)
     7a0:	244700a0 	addiu	a3,v0,160
     7a4:	24840010 	addiu	a0,a0,16
     7a8:	a0f80000 	sb	t8,0(a3)
     7ac:	8499006c 	lh	t9,108(a0)
     7b0:	26050004 	addiu	a1,s0,4
     7b4:	5321000b 	beql	t9,at,7e4 <func_800B42C0+0x74>
     7b8:	8fa40034 	lw	a0,52(sp)
     7bc:	24e50008 	addiu	a1,a3,8
     7c0:	0c000000 	jal	0 <func_800B3B50>
     7c4:	afa30028 	sw	v1,40(sp)
     7c8:	8fa30028 	lw	v1,40(sp)
     7cc:	26040004 	addiu	a0,s0,4
     7d0:	0c000000 	jal	0 <func_800B3B50>
     7d4:	24650008 	addiu	a1,v1,8
     7d8:	1000000d 	b	810 <func_800B42C0+0xa0>
     7dc:	8fbf001c 	lw	ra,28(sp)
     7e0:	8fa40034 	lw	a0,52(sp)
     7e4:	24660008 	addiu	a2,v1,8
     7e8:	afa7002c 	sw	a3,44(sp)
     7ec:	24840094 	addiu	a0,a0,148
     7f0:	0c000000 	jal	0 <func_800B3B50>
     7f4:	afa40024 	sw	a0,36(sp)
     7f8:	8fa7002c 	lw	a3,44(sp)
     7fc:	8fa40024 	lw	a0,36(sp)
     800:	26050010 	addiu	a1,s0,16
     804:	0c000000 	jal	0 <func_800B3B50>
     808:	24e60008 	addiu	a2,a3,8
     80c:	8fbf001c 	lw	ra,28(sp)
     810:	86020082 	lh	v0,130(s0)
     814:	8fb00018 	lw	s0,24(sp)
     818:	03e00008 	jr	ra
     81c:	27bd0030 	addiu	sp,sp,48

00000820 <func_800B4370>:
     820:	27bdffb0 	addiu	sp,sp,-80
     824:	afbf0024 	sw	ra,36(sp)
     828:	afb20020 	sw	s2,32(sp)
     82c:	afb1001c 	sw	s1,28(sp)
     830:	afb00018 	sw	s0,24(sp)
     834:	afa50054 	sw	a1,84(sp)
     838:	848e007c 	lh	t6,124(a0)
     83c:	00059400 	sll	s2,a1,0x10
     840:	24010001 	li	at,1
     844:	00129403 	sra	s2,s2,0x10
     848:	00808025 	move	s0,a0
     84c:	11c10017 	beq	t6,at,8ac <func_800B4370+0x8c>
     850:	00c03825 	move	a3,a2
     854:	8c8f0088 	lw	t7,136(a0)
     858:	0012c900 	sll	t9,s2,0x4
     85c:	02198821 	addu	s1,s0,t9
     860:	11e0000c 	beqz	t7,894 <func_800B4370+0x74>
     864:	263108b0 	addiu	s1,s1,2224
     868:	0012c100 	sll	t8,s2,0x4
     86c:	00981021 	addu	v0,a0,t8
     870:	26050004 	addiu	a1,s0,4
     874:	afa50028 	sw	a1,40(sp)
     878:	244400a8 	addiu	a0,v0,168
     87c:	0c000000 	jal	0 <func_800B3B50>
     880:	afa20030 	sw	v0,48(sp)
     884:	8fa20030 	lw	v0,48(sp)
     888:	8fa50028 	lw	a1,40(sp)
     88c:	10000022 	b	918 <func_800B4370+0xf8>
     890:	245108b0 	addiu	s1,v0,2224
     894:	26050004 	addiu	a1,s0,4
     898:	afa50028 	sw	a1,40(sp)
     89c:	0c000000 	jal	0 <func_800B3B50>
     8a0:	26240008 	addiu	a0,s1,8
     8a4:	1000001c 	b	918 <func_800B4370+0xf8>
     8a8:	8fa50028 	lw	a1,40(sp)
     8ac:	8e080088 	lw	t0,136(s0)
     8b0:	00125100 	sll	t2,s2,0x4
     8b4:	020a8821 	addu	s1,s0,t2
     8b8:	1100000b 	beqz	t0,8e8 <func_800B4370+0xc8>
     8bc:	24e40094 	addiu	a0,a3,148
     8c0:	00124900 	sll	t1,s2,0x4
     8c4:	02091021 	addu	v0,s0,t1
     8c8:	244500a8 	addiu	a1,v0,168
     8cc:	afa20030 	sw	v0,48(sp)
     8d0:	24e40094 	addiu	a0,a3,148
     8d4:	0c000000 	jal	0 <func_800B3B50>
     8d8:	27a60034 	addiu	a2,sp,52
     8dc:	8fa20030 	lw	v0,48(sp)
     8e0:	10000005 	b	8f8 <func_800B4370+0xd8>
     8e4:	245108b0 	addiu	s1,v0,2224
     8e8:	263108b0 	addiu	s1,s1,2224
     8ec:	26250008 	addiu	a1,s1,8
     8f0:	0c000000 	jal	0 <func_800B3B50>
     8f4:	27a60034 	addiu	a2,sp,52
     8f8:	27ab0034 	addiu	t3,sp,52
     8fc:	8d6d0000 	lw	t5,0(t3)
     900:	26050004 	addiu	a1,s0,4
     904:	acad0000 	sw	t5,0(a1)
     908:	8d6c0004 	lw	t4,4(t3)
     90c:	acac0004 	sw	t4,4(a1)
     910:	8d6d0008 	lw	t5,8(t3)
     914:	acad0008 	sw	t5,8(a1)
     918:	87af0046 	lh	t7,70(sp)
     91c:	3c01437a 	lui	at,0x437a
     920:	44812000 	mtc1	at,$f4
     924:	240e2000 	li	t6,8192
     928:	25f88001 	addiu	t8,t7,-32767
     92c:	a7ae0044 	sh	t6,68(sp)
     930:	a7b80046 	sh	t8,70(sp)
     934:	26040010 	addiu	a0,s0,16
     938:	27a60040 	addiu	a2,sp,64
     93c:	0c000000 	jal	0 <func_800B3B50>
     940:	e7a40040 	swc1	$f4,64(sp)
     944:	82390001 	lb	t9,1(s1)
     948:	3c013fb4 	lui	at,0x3fb4
     94c:	44815000 	mtc1	at,$f10
     950:	a619004c 	sh	t9,76(s0)
     954:	8608004c 	lh	t0,76(s0)
     958:	02401025 	move	v0,s2
     95c:	44883000 	mtc1	t0,$f6
     960:	00000000 	nop
     964:	46803220 	cvt.s.w	$f8,$f6
     968:	460a4402 	mul.s	$f16,$f8,$f10
     96c:	e6100050 	swc1	$f16,80(s0)
     970:	c6320004 	lwc1	$f18,4(s1)
     974:	e6120048 	swc1	$f18,72(s0)
     978:	8fbf0024 	lw	ra,36(sp)
     97c:	8fb20020 	lw	s2,32(sp)
     980:	8fb1001c 	lw	s1,28(sp)
     984:	8fb00018 	lw	s0,24(sp)
     988:	03e00008 	jr	ra
     98c:	27bd0050 	addiu	sp,sp,80

00000990 <func_800B44E0>:
     990:	27bdffd0 	addiu	sp,sp,-48
     994:	3c0e0000 	lui	t6,0x0
     998:	8dce0000 	lw	t6,0(t6)
     99c:	afbf0024 	sw	ra,36(sp)
     9a0:	afb10020 	sw	s1,32(sp)
     9a4:	afb0001c 	sw	s0,28(sp)
     9a8:	afa50034 	sw	a1,52(sp)
     9ac:	95cf0050 	lhu	t7,80(t6)
     9b0:	2401fffe 	li	at,-2
     9b4:	00808025 	move	s0,a0
     9b8:	01e1c027 	nor	t8,t7,at
     9bc:	1700001e 	bnez	t8,a38 <func_800B44E0+0xa8>
     9c0:	3c110000 	lui	s1,0x0
     9c4:	26310000 	addiu	s1,s1,0
     9c8:	44802000 	mtc1	zero,$f4
     9cc:	44803000 	mtc1	zero,$f6
     9d0:	24190001 	li	t9,1
     9d4:	a6200008 	sh	zero,8(s1)
     9d8:	a639000a 	sh	t9,10(s1)
     9dc:	e6240000 	swc1	$f4,0(s1)
     9e0:	e6260004 	swc1	$f6,4(s1)
     9e4:	84880080 	lh	t0,128(a0)
     9e8:	00001825 	move	v1,zero
     9ec:	00801025 	move	v0,a0
     9f0:	2509fffe 	addiu	t1,t0,-2
     9f4:	1920000b 	blez	t1,a24 <func_800B44E0+0x94>
     9f8:	240effff 	li	t6,-1
     9fc:	a04008b0 	sb	zero,2224(v0)
     a00:	804a08b0 	lb	t2,2224(v0)
     a04:	24630001 	addiu	v1,v1,1
     a08:	24420010 	addiu	v0,v0,16
     a0c:	a04a0090 	sb	t2,144(v0)
     a10:	860b0080 	lh	t3,128(s0)
     a14:	256cfffe 	addiu	t4,t3,-2
     a18:	006c082a 	slt	at,v1,t4
     a1c:	5420fff8 	bnezl	at,a00 <func_800B44E0+0x70>
     a20:	a04008b0 	sb	zero,2224(v0)
     a24:	00036900 	sll	t5,v1,0x4
     a28:	020d1021 	addu	v0,s0,t5
     a2c:	a04e08b0 	sb	t6,2224(v0)
     a30:	804f08b0 	lb	t7,2224(v0)
     a34:	a04f00a0 	sb	t7,160(v0)
     a38:	86180080 	lh	t8,128(s0)
     a3c:	3c110000 	lui	s1,0x0
     a40:	26310000 	addiu	s1,s1,0
     a44:	2b010006 	slti	at,t8,6
     a48:	10200023 	beqz	at,ad8 <func_800B44E0+0x148>
     a4c:	3c040000 	lui	a0,0x0
     a50:	8639000a 	lh	t9,10(s1)
     a54:	3c070000 	lui	a3,0x0
     a58:	24e70000 	addiu	a3,a3,0
     a5c:	1320000a 	beqz	t9,a88 <func_800B44E0+0xf8>
     a60:	24044806 	li	a0,18438
     a64:	3c080000 	lui	t0,0x0
     a68:	25080000 	addiu	t0,t0,0
     a6c:	3c050000 	lui	a1,0x0
     a70:	24a50000 	addiu	a1,a1,0
     a74:	afa80014 	sw	t0,20(sp)
     a78:	24060004 	li	a2,4
     a7c:	0c000000 	jal	0 <func_800B3B50>
     a80:	afa70010 	sw	a3,16(sp)
     a84:	a620000a 	sh	zero,10(s1)
     a88:	3c070000 	lui	a3,0x0
     a8c:	8ce70000 	lw	a3,0(a3)
     a90:	24040011 	li	a0,17
     a94:	24050017 	li	a1,23
     a98:	0c000000 	jal	0 <func_800B3B50>
     a9c:	24060003 	li	a2,3
     aa0:	3c070000 	lui	a3,0x0
     aa4:	8ce70000 	lw	a3,0(a3)
     aa8:	24040012 	li	a0,18
     aac:	24050018 	li	a1,24
     ab0:	0c000000 	jal	0 <func_800B3B50>
     ab4:	24060003 	li	a2,3
     ab8:	3c070000 	lui	a3,0x0
     abc:	8ce70000 	lw	a3,0(a3)
     ac0:	24040010 	li	a0,16
     ac4:	2405001a 	li	a1,26
     ac8:	0c000000 	jal	0 <func_800B3B50>
     acc:	24060001 	li	a2,1
     ad0:	100000bb 	b	dc0 <func_800B44E0+0x430>
     ad4:	8fbf0024 	lw	ra,36(sp)
     ad8:	3c090000 	lui	t1,0x0
     adc:	25290000 	addiu	t1,t1,0
     ae0:	3c050000 	lui	a1,0x0
     ae4:	3c060000 	lui	a2,0x0
     ae8:	24c60000 	addiu	a2,a2,0
     aec:	24a50000 	addiu	a1,a1,0
     af0:	afa90010 	sw	t1,16(sp)
     af4:	24840000 	addiu	a0,a0,0
     af8:	260700a0 	addiu	a3,s0,160
     afc:	0c000000 	jal	0 <func_800B3B50>
     b00:	afb10014 	sw	s1,20(sp)
     b04:	144000a6 	bnez	v0,da0 <func_800B44E0+0x410>
     b08:	3c040000 	lui	a0,0x0
     b0c:	3c0a0000 	lui	t2,0x0
     b10:	254a0000 	addiu	t2,t2,0
     b14:	3c050000 	lui	a1,0x0
     b18:	3c060000 	lui	a2,0x0
     b1c:	24c60000 	addiu	a2,a2,0
     b20:	24a50000 	addiu	a1,a1,0
     b24:	afaa0010 	sw	t2,16(sp)
     b28:	24840000 	addiu	a0,a0,0
     b2c:	260708b0 	addiu	a3,s0,2224
     b30:	0c000000 	jal	0 <func_800B3B50>
     b34:	afb10014 	sw	s1,20(sp)
     b38:	5440009a 	bnezl	v0,da4 <func_800B44E0+0x414>
     b3c:	a620000a 	sh	zero,10(s1)
     b40:	862b000a 	lh	t3,10(s1)
     b44:	24010001 	li	at,1
     b48:	3c070000 	lui	a3,0x0
     b4c:	15610094 	bne	t3,at,da0 <func_800B44E0+0x410>
     b50:	24e70000 	addiu	a3,a3,0
     b54:	3c0c0000 	lui	t4,0x0
     b58:	258c0000 	addiu	t4,t4,0
     b5c:	3c050000 	lui	a1,0x0
     b60:	24a50000 	addiu	a1,a1,0
     b64:	afac0014 	sw	t4,20(sp)
     b68:	2404480b 	li	a0,18443
     b6c:	24060004 	li	a2,4
     b70:	0c000000 	jal	0 <func_800B3B50>
     b74:	afa70010 	sw	a3,16(sp)
     b78:	3c013f80 	lui	at,0x3f80
     b7c:	44815000 	mtc1	at,$f10
     b80:	c6280004 	lwc1	$f8,4(s1)
     b84:	460a4400 	add.s	$f16,$f8,$f10
     b88:	e6300004 	swc1	$f16,4(s1)
     b8c:	8602007e 	lh	v0,126(s0)
     b90:	58400010 	blezl	v0,bd4 <func_800B44E0+0x244>
     b94:	860d007c 	lh	t5,124(s0)
     b98:	44829000 	mtc1	v0,$f18
     b9c:	c6260004 	lwc1	$f6,4(s1)
     ba0:	2404000f 	li	a0,15
     ba4:	46809120 	cvt.s.w	$f4,$f18
     ba8:	2405001a 	li	a1,26
     bac:	24060001 	li	a2,1
     bb0:	3c070000 	lui	a3,0x0
     bb4:	4606203c 	c.lt.s	$f4,$f6
     bb8:	00000000 	nop
     bbc:	45020005 	bc1fl	bd4 <func_800B44E0+0x244>
     bc0:	860d007c 	lh	t5,124(s0)
     bc4:	a620000a 	sh	zero,10(s1)
     bc8:	0c000000 	jal	0 <func_800B3B50>
     bcc:	8ce70000 	lw	a3,0(a3)
     bd0:	860d007c 	lh	t5,124(s0)
     bd4:	8fa40034 	lw	a0,52(sp)
     bd8:	24010001 	li	at,1
     bdc:	11a1000b 	beq	t5,at,c0c <func_800B44E0+0x27c>
     be0:	24840094 	addiu	a0,a0,148
     be4:	3c040000 	lui	a0,0x0
     be8:	24840000 	addiu	a0,a0,0
     bec:	0c000000 	jal	0 <func_800B3B50>
     bf0:	26050010 	addiu	a1,s0,16
     bf4:	3c040000 	lui	a0,0x0
     bf8:	24840000 	addiu	a0,a0,0
     bfc:	0c000000 	jal	0 <func_800B3B50>
     c00:	26050004 	addiu	a1,s0,4
     c04:	1000000c 	b	c38 <func_800B44E0+0x2a8>
     c08:	c628002c 	lwc1	$f8,44(s1)
     c0c:	3c050000 	lui	a1,0x0
     c10:	24a50000 	addiu	a1,a1,0
     c14:	26060004 	addiu	a2,s0,4
     c18:	0c000000 	jal	0 <func_800B3B50>
     c1c:	afa40028 	sw	a0,40(sp)
     c20:	3c050000 	lui	a1,0x0
     c24:	8fa40028 	lw	a0,40(sp)
     c28:	24a50000 	addiu	a1,a1,0
     c2c:	0c000000 	jal	0 <func_800B3B50>
     c30:	26060010 	addiu	a2,s0,16
     c34:	c628002c 	lwc1	$f8,44(s1)
     c38:	3c013fb4 	lui	at,0x3fb4
     c3c:	44812000 	mtc1	at,$f4
     c40:	e6080048 	swc1	$f8,72(s0)
     c44:	c62a0028 	lwc1	$f10,40(s1)
     c48:	3c050000 	lui	a1,0x0
     c4c:	24a50000 	addiu	a1,a1,0
     c50:	4600540d 	trunc.w.s	$f16,$f10
     c54:	24060004 	li	a2,4
     c58:	440f8000 	mfc1	t7,$f16
     c5c:	00000000 	nop
     c60:	a60f004c 	sh	t7,76(s0)
     c64:	c6320028 	lwc1	$f18,40(s1)
     c68:	46049182 	mul.s	$f6,$f18,$f4
     c6c:	e6060050 	swc1	$f6,80(s0)
     c70:	c6280004 	lwc1	$f8,4(s1)
     c74:	4600428d 	trunc.w.s	$f10,$f8
     c78:	44045000 	mfc1	a0,$f10
     c7c:	00000000 	nop
     c80:	00042400 	sll	a0,a0,0x10
     c84:	0c000000 	jal	0 <func_800B3B50>
     c88:	00042403 	sra	a0,a0,0x10
     c8c:	3c070000 	lui	a3,0x0
     c90:	24e70000 	addiu	a3,a3,0
     c94:	24040010 	li	a0,16
     c98:	24050017 	li	a1,23
     c9c:	0c000000 	jal	0 <func_800B3B50>
     ca0:	24060003 	li	a2,3
     ca4:	86220008 	lh	v0,8(s1)
     ca8:	2403000a 	li	v1,10
     cac:	3c070000 	lui	a3,0x0
     cb0:	24420001 	addiu	v0,v0,1
     cb4:	0043001a 	div	zero,v0,v1
     cb8:	0000c812 	mflo	t9
     cbc:	00004810 	mfhi	t1
     cc0:	24e70000 	addiu	a3,a3,0
     cc4:	27280030 	addiu	t0,t9,48
     cc8:	252a0030 	addiu	t2,t1,48
     ccc:	a0e80005 	sb	t0,5(a3)
     cd0:	a0ea0006 	sb	t2,6(a3)
     cd4:	860b0080 	lh	t3,128(s0)
     cd8:	14600002 	bnez	v1,ce4 <func_800B44E0+0x354>
     cdc:	00000000 	nop
     ce0:	0007000d 	break	0x7
     ce4:	2401ffff 	li	at,-1
     ce8:	14610004 	bne	v1,at,cfc <func_800B44E0+0x36c>
     cec:	3c018000 	lui	at,0x8000
     cf0:	14410002 	bne	v0,at,cfc <func_800B44E0+0x36c>
     cf4:	00000000 	nop
     cf8:	0006000d 	break	0x6
     cfc:	256cfffb 	addiu	t4,t3,-5
     d00:	0183001a 	div	zero,t4,v1
     d04:	00006812 	mflo	t5
     d08:	25ae0030 	addiu	t6,t5,48
     d0c:	a0ee0008 	sb	t6,8(a3)
     d10:	860f0080 	lh	t7,128(s0)
     d14:	14600002 	bnez	v1,d20 <func_800B44E0+0x390>
     d18:	00000000 	nop
     d1c:	0007000d 	break	0x7
     d20:	2401ffff 	li	at,-1
     d24:	14610004 	bne	v1,at,d38 <func_800B44E0+0x3a8>
     d28:	3c018000 	lui	at,0x8000
     d2c:	15810002 	bne	t4,at,d38 <func_800B44E0+0x3a8>
     d30:	00000000 	nop
     d34:	0006000d 	break	0x6
     d38:	25f8fffb 	addiu	t8,t7,-5
     d3c:	0303001a 	div	zero,t8,v1
     d40:	0000c810 	mfhi	t9
     d44:	27280030 	addiu	t0,t9,48
     d48:	14600002 	bnez	v1,d54 <func_800B44E0+0x3c4>
     d4c:	00000000 	nop
     d50:	0007000d 	break	0x7
     d54:	2401ffff 	li	at,-1
     d58:	14610004 	bne	v1,at,d6c <func_800B44E0+0x3dc>
     d5c:	3c018000 	lui	at,0x8000
     d60:	17010002 	bne	t8,at,d6c <func_800B44E0+0x3dc>
     d64:	00000000 	nop
     d68:	0006000d 	break	0x6
     d6c:	a0e80009 	sb	t0,9(a3)
     d70:	24040010 	li	a0,16
     d74:	24050018 	li	a1,24
     d78:	0c000000 	jal	0 <func_800B3B50>
     d7c:	24060003 	li	a2,3
     d80:	3c070000 	lui	a3,0x0
     d84:	8ce70000 	lw	a3,0(a3)
     d88:	24040010 	li	a0,16
     d8c:	2405001a 	li	a1,26
     d90:	0c000000 	jal	0 <func_800B3B50>
     d94:	24060001 	li	a2,1
     d98:	10000009 	b	dc0 <func_800B44E0+0x430>
     d9c:	8fbf0024 	lw	ra,36(sp)
     da0:	a620000a 	sh	zero,10(s1)
     da4:	3c070000 	lui	a3,0x0
     da8:	8ce70000 	lw	a3,0(a3)
     dac:	2404000f 	li	a0,15
     db0:	2405001a 	li	a1,26
     db4:	0c000000 	jal	0 <func_800B3B50>
     db8:	24060001 	li	a2,1
     dbc:	8fbf0024 	lw	ra,36(sp)
     dc0:	8fb0001c 	lw	s0,28(sp)
     dc4:	8fb10020 	lw	s1,32(sp)
     dc8:	03e00008 	jr	ra
     dcc:	27bd0030 	addiu	sp,sp,48

00000dd0 <func_800B4920>:
     dd0:	27bdffc0 	addiu	sp,sp,-64
     dd4:	afa50044 	sw	a1,68(sp)
     dd8:	00802825 	move	a1,a0
     ddc:	afa40040 	sw	a0,64(sp)
     de0:	afbf003c 	sw	ra,60(sp)
     de4:	afb20020 	sw	s2,32(sp)
     de8:	3c040000 	lui	a0,0x0
     dec:	00c09025 	move	s2,a2
     df0:	afbe0038 	sw	s8,56(sp)
     df4:	afb70034 	sw	s7,52(sp)
     df8:	afb60030 	sw	s6,48(sp)
     dfc:	afb5002c 	sw	s5,44(sp)
     e00:	afb40028 	sw	s4,40(sp)
     e04:	afb30024 	sw	s3,36(sp)
     e08:	afb1001c 	sw	s1,28(sp)
     e0c:	afb00018 	sw	s0,24(sp)
     e10:	0c000000 	jal	0 <func_800B3B50>
     e14:	24840000 	addiu	a0,a0,0
     e18:	87ae0046 	lh	t6,70(sp)
     e1c:	00008825 	move	s1,zero
     e20:	02408025 	move	s0,s2
     e24:	19c0002d 	blez	t6,edc <func_800B4920+0x10c>
     e28:	3c170000 	lui	s7,0x0
     e2c:	3c1e0000 	lui	s8,0x0
     e30:	3c160000 	lui	s6,0x0
     e34:	3c150000 	lui	s5,0x0
     e38:	3c140000 	lui	s4,0x0
     e3c:	3c130000 	lui	s3,0x0
     e40:	3c120000 	lui	s2,0x0
     e44:	26520000 	addiu	s2,s2,0
     e48:	26730000 	addiu	s3,s3,0
     e4c:	26940000 	addiu	s4,s4,0
     e50:	26b50000 	addiu	s5,s5,0
     e54:	26d60000 	addiu	s6,s6,0
     e58:	27de0000 	addiu	s8,s8,0
     e5c:	26f70000 	addiu	s7,s7,0
     e60:	02402025 	move	a0,s2
     e64:	0c000000 	jal	0 <func_800B3B50>
     e68:	02202825 	move	a1,s1
     e6c:	02602025 	move	a0,s3
     e70:	0c000000 	jal	0 <func_800B3B50>
     e74:	82050000 	lb	a1,0(s0)
     e78:	02802025 	move	a0,s4
     e7c:	0c000000 	jal	0 <func_800B3B50>
     e80:	82050001 	lb	a1,1(s0)
     e84:	02a02025 	move	a0,s5
     e88:	0c000000 	jal	0 <func_800B3B50>
     e8c:	96050002 	lhu	a1,2(s0)
     e90:	c6040004 	lwc1	$f4,4(s0)
     e94:	02c02025 	move	a0,s6
     e98:	460021a1 	cvt.d.s	$f6,$f4
     e9c:	44073000 	mfc1	a3,$f6
     ea0:	44063800 	mfc1	a2,$f7
     ea4:	0c000000 	jal	0 <func_800B3B50>
     ea8:	00000000 	nop
     eac:	02e02025 	move	a0,s7
     eb0:	86050008 	lh	a1,8(s0)
     eb4:	8606000a 	lh	a2,10(s0)
     eb8:	0c000000 	jal	0 <func_800B3B50>
     ebc:	8607000c 	lh	a3,12(s0)
     ec0:	0c000000 	jal	0 <func_800B3B50>
     ec4:	03c02025 	move	a0,s8
     ec8:	87af0046 	lh	t7,70(sp)
     ecc:	26310001 	addiu	s1,s1,1
     ed0:	26100010 	addiu	s0,s0,16
     ed4:	562fffe3 	bnel	s1,t7,e64 <func_800B4920+0x94>
     ed8:	02402025 	move	a0,s2
     edc:	3c040000 	lui	a0,0x0
     ee0:	0c000000 	jal	0 <func_800B3B50>
     ee4:	24840000 	addiu	a0,a0,0
     ee8:	8fbf003c 	lw	ra,60(sp)
     eec:	8fb00018 	lw	s0,24(sp)
     ef0:	8fb1001c 	lw	s1,28(sp)
     ef4:	8fb20020 	lw	s2,32(sp)
     ef8:	8fb30024 	lw	s3,36(sp)
     efc:	8fb40028 	lw	s4,40(sp)
     f00:	8fb5002c 	lw	s5,44(sp)
     f04:	8fb60030 	lw	s6,48(sp)
     f08:	8fb70034 	lw	s7,52(sp)
     f0c:	8fbe0038 	lw	s8,56(sp)
     f10:	03e00008 	jr	ra
     f14:	27bd0040 	addiu	sp,sp,64

00000f18 <func_800B4A68>:
     f18:	27bdffd8 	addiu	sp,sp,-40
     f1c:	afbf001c 	sw	ra,28(sp)
     f20:	27a20024 	addiu	v0,sp,36
     f24:	e7ac0024 	swc1	$f12,36(sp)
     f28:	904e0003 	lbu	t6,3(v0)
     f2c:	90470002 	lbu	a3,2(v0)
     f30:	90460001 	lbu	a2,1(v0)
     f34:	90450000 	lbu	a1,0(v0)
     f38:	3c040000 	lui	a0,0x0
     f3c:	24840000 	addiu	a0,a0,0
     f40:	0c000000 	jal	0 <func_800B3B50>
     f44:	afae0010 	sw	t6,16(sp)
     f48:	8fbf001c 	lw	ra,28(sp)
     f4c:	27bd0028 	addiu	sp,sp,40
     f50:	03e00008 	jr	ra
     f54:	00000000 	nop

00000f58 <func_800B4AA8>:
     f58:	27bdffe0 	addiu	sp,sp,-32
     f5c:	00803825 	move	a3,a0
     f60:	afbf0014 	sw	ra,20(sp)
     f64:	afa40020 	sw	a0,32(sp)
     f68:	27a2001c 	addiu	v0,sp,28
     f6c:	a7a7001c 	sh	a3,28(sp)
     f70:	3c040000 	lui	a0,0x0
     f74:	24840000 	addiu	a0,a0,0
     f78:	90460001 	lbu	a2,1(v0)
     f7c:	0c000000 	jal	0 <func_800B3B50>
     f80:	90450000 	lbu	a1,0(v0)
     f84:	8fbf0014 	lw	ra,20(sp)
     f88:	27bd0020 	addiu	sp,sp,32
     f8c:	03e00008 	jr	ra
     f90:	00000000 	nop

00000f94 <func_800B4AE4>:
     f94:	27bdffe0 	addiu	sp,sp,-32
     f98:	00803825 	move	a3,a0
     f9c:	afbf0014 	sw	ra,20(sp)
     fa0:	afa40020 	sw	a0,32(sp)
     fa4:	27a2001c 	addiu	v0,sp,28
     fa8:	a7a7001c 	sh	a3,28(sp)
     fac:	3c040000 	lui	a0,0x0
     fb0:	24840000 	addiu	a0,a0,0
     fb4:	90460001 	lbu	a2,1(v0)
     fb8:	0c000000 	jal	0 <func_800B3B50>
     fbc:	90450000 	lbu	a1,0(v0)
     fc0:	8fbf0014 	lw	ra,20(sp)
     fc4:	27bd0020 	addiu	sp,sp,32
     fc8:	03e00008 	jr	ra
     fcc:	00000000 	nop

00000fd0 <func_800B4B20>:
     fd0:	27bdffd0 	addiu	sp,sp,-48
     fd4:	afbf0024 	sw	ra,36(sp)
     fd8:	afb20020 	sw	s2,32(sp)
     fdc:	afb1001c 	sw	s1,28(sp)
     fe0:	afb00018 	sw	s0,24(sp)
     fe4:	8c8e0008 	lw	t6,8(a0)
     fe8:	00809025 	move	s2,a0
     fec:	3c040000 	lui	a0,0x0
     ff0:	24840000 	addiu	a0,a0,0
     ff4:	0c000000 	jal	0 <func_800B3B50>
     ff8:	afae0028 	sw	t6,40(sp)
     ffc:	3c040000 	lui	a0,0x0
    1000:	0c000000 	jal	0 <func_800B3B50>
    1004:	24840000 	addiu	a0,a0,0
    1008:	3c040000 	lui	a0,0x0
    100c:	0c000000 	jal	0 <func_800B3B50>
    1010:	24840000 	addiu	a0,a0,0
    1014:	0c000000 	jal	0 <func_800B3B50>
    1018:	9644000c 	lhu	a0,12(s2)
    101c:	3c040000 	lui	a0,0x0
    1020:	0c000000 	jal	0 <func_800B3B50>
    1024:	24840000 	addiu	a0,a0,0
    1028:	3c040000 	lui	a0,0x0
    102c:	0c000000 	jal	0 <func_800B3B50>
    1030:	24840000 	addiu	a0,a0,0
    1034:	864f000e 	lh	t7,14(s2)
    1038:	00008825 	move	s1,zero
    103c:	8fb00028 	lw	s0,40(sp)
    1040:	19e0002b 	blez	t7,10f0 <func_800B4B20+0x120>
    1044:	3c040000 	lui	a0,0x0
    1048:	24840000 	addiu	a0,a0,0
    104c:	0c000000 	jal	0 <func_800B3B50>
    1050:	82050000 	lb	a1,0(s0)
    1054:	3c040000 	lui	a0,0x0
    1058:	24840000 	addiu	a0,a0,0
    105c:	0c000000 	jal	0 <func_800B3B50>
    1060:	82050001 	lb	a1,1(s0)
    1064:	0c000000 	jal	0 <func_800B3B50>
    1068:	96040002 	lhu	a0,2(s0)
    106c:	3c040000 	lui	a0,0x0
    1070:	0c000000 	jal	0 <func_800B3B50>
    1074:	24840000 	addiu	a0,a0,0
    1078:	0c000000 	jal	0 <func_800B3B50>
    107c:	c60c0004 	lwc1	$f12,4(s0)
    1080:	3c040000 	lui	a0,0x0
    1084:	0c000000 	jal	0 <func_800B3B50>
    1088:	24840000 	addiu	a0,a0,0
    108c:	0c000000 	jal	0 <func_800B3B50>
    1090:	86040008 	lh	a0,8(s0)
    1094:	3c040000 	lui	a0,0x0
    1098:	0c000000 	jal	0 <func_800B3B50>
    109c:	24840000 	addiu	a0,a0,0
    10a0:	0c000000 	jal	0 <func_800B3B50>
    10a4:	8604000a 	lh	a0,10(s0)
    10a8:	3c040000 	lui	a0,0x0
    10ac:	0c000000 	jal	0 <func_800B3B50>
    10b0:	24840000 	addiu	a0,a0,0
    10b4:	0c000000 	jal	0 <func_800B3B50>
    10b8:	8604000c 	lh	a0,12(s0)
    10bc:	3c040000 	lui	a0,0x0
    10c0:	0c000000 	jal	0 <func_800B3B50>
    10c4:	24840000 	addiu	a0,a0,0
    10c8:	3c040000 	lui	a0,0x0
    10cc:	0c000000 	jal	0 <func_800B3B50>
    10d0:	24840000 	addiu	a0,a0,0
    10d4:	8658000e 	lh	t8,14(s2)
    10d8:	26310001 	addiu	s1,s1,1
    10dc:	26100010 	addiu	s0,s0,16
    10e0:	0238082a 	slt	at,s1,t8
    10e4:	1420ffd7 	bnez	at,1044 <func_800B4B20+0x74>
    10e8:	00000000 	nop
    10ec:	00008825 	move	s1,zero
    10f0:	8e590004 	lw	t9,4(s2)
    10f4:	3c040000 	lui	a0,0x0
    10f8:	24840000 	addiu	a0,a0,0
    10fc:	0c000000 	jal	0 <func_800B3B50>
    1100:	afb90028 	sw	t9,40(sp)
    1104:	3c040000 	lui	a0,0x0
    1108:	0c000000 	jal	0 <func_800B3B50>
    110c:	24840000 	addiu	a0,a0,0
    1110:	3c040000 	lui	a0,0x0
    1114:	0c000000 	jal	0 <func_800B3B50>
    1118:	24840000 	addiu	a0,a0,0
    111c:	0c000000 	jal	0 <func_800B3B50>
    1120:	9644000c 	lhu	a0,12(s2)
    1124:	3c040000 	lui	a0,0x0
    1128:	0c000000 	jal	0 <func_800B3B50>
    112c:	24840000 	addiu	a0,a0,0
    1130:	3c040000 	lui	a0,0x0
    1134:	0c000000 	jal	0 <func_800B3B50>
    1138:	24840000 	addiu	a0,a0,0
    113c:	8648000e 	lh	t0,14(s2)
    1140:	8fb00028 	lw	s0,40(sp)
    1144:	1900002a 	blez	t0,11f0 <func_800B4B20+0x220>
    1148:	3c040000 	lui	a0,0x0
    114c:	24840000 	addiu	a0,a0,0
    1150:	0c000000 	jal	0 <func_800B3B50>
    1154:	82050000 	lb	a1,0(s0)
    1158:	3c040000 	lui	a0,0x0
    115c:	24840000 	addiu	a0,a0,0
    1160:	0c000000 	jal	0 <func_800B3B50>
    1164:	82050001 	lb	a1,1(s0)
    1168:	0c000000 	jal	0 <func_800B3B50>
    116c:	96040002 	lhu	a0,2(s0)
    1170:	3c040000 	lui	a0,0x0
    1174:	0c000000 	jal	0 <func_800B3B50>
    1178:	24840000 	addiu	a0,a0,0
    117c:	0c000000 	jal	0 <func_800B3B50>
    1180:	c60c0004 	lwc1	$f12,4(s0)
    1184:	3c040000 	lui	a0,0x0
    1188:	0c000000 	jal	0 <func_800B3B50>
    118c:	24840000 	addiu	a0,a0,0
    1190:	0c000000 	jal	0 <func_800B3B50>
    1194:	86040008 	lh	a0,8(s0)
    1198:	3c040000 	lui	a0,0x0
    119c:	0c000000 	jal	0 <func_800B3B50>
    11a0:	24840000 	addiu	a0,a0,0
    11a4:	0c000000 	jal	0 <func_800B3B50>
    11a8:	8604000a 	lh	a0,10(s0)
    11ac:	3c040000 	lui	a0,0x0
    11b0:	0c000000 	jal	0 <func_800B3B50>
    11b4:	24840000 	addiu	a0,a0,0
    11b8:	0c000000 	jal	0 <func_800B3B50>
    11bc:	8604000c 	lh	a0,12(s0)
    11c0:	3c040000 	lui	a0,0x0
    11c4:	0c000000 	jal	0 <func_800B3B50>
    11c8:	24840000 	addiu	a0,a0,0
    11cc:	3c040000 	lui	a0,0x0
    11d0:	0c000000 	jal	0 <func_800B3B50>
    11d4:	24840000 	addiu	a0,a0,0
    11d8:	8649000e 	lh	t1,14(s2)
    11dc:	26310001 	addiu	s1,s1,1
    11e0:	26100010 	addiu	s0,s0,16
    11e4:	0229082a 	slt	at,s1,t1
    11e8:	1420ffd7 	bnez	at,1148 <func_800B4B20+0x178>
    11ec:	00000000 	nop
    11f0:	8fbf0024 	lw	ra,36(sp)
    11f4:	8fb00018 	lw	s0,24(sp)
    11f8:	8fb1001c 	lw	s1,28(sp)
    11fc:	8fb20020 	lw	s2,32(sp)
    1200:	03e00008 	jr	ra
    1204:	27bd0030 	addiu	sp,sp,48

00001208 <func_800B4D58>:
    1208:	a48010ca 	sh	zero,4298(a0)
    120c:	44800000 	mtc1	zero,$f0
    1210:	848210ca 	lh	v0,4298(a0)
    1214:	2403ffff 	li	v1,-1
    1218:	ac800044 	sw	zero,68(a0)
    121c:	ac800000 	sw	zero,0(a0)
    1220:	ac800034 	sw	zero,52(a0)
    1224:	ac80003c 	sw	zero,60(a0)
    1228:	ac830038 	sw	v1,56(a0)
    122c:	ac830040 	sw	v1,64(a0)
    1230:	a480004c 	sh	zero,76(a0)
    1234:	a48210c8 	sh	v0,4296(a0)
    1238:	a48210c6 	sh	v0,4294(a0)
    123c:	e4800048 	swc1	$f0,72(a0)
    1240:	e4800050 	swc1	$f0,80(a0)
    1244:	8cae008c 	lw	t6,140(a1)
    1248:	3c010000 	lui	at,0x0
    124c:	44800000 	mtc1	zero,$f0
    1250:	ac2e0000 	sw	t6,0(at)
    1254:	240f0001 	li	t7,1
    1258:	a480007c 	sh	zero,124(a0)
    125c:	a483007e 	sh	v1,126(a0)
    1260:	a48f0080 	sh	t7,128(a0)
    1264:	a4800082 	sh	zero,130(a0)
    1268:	a4800084 	sh	zero,132(a0)
    126c:	a4800086 	sh	zero,134(a0)
    1270:	a4800078 	sh	zero,120(a0)
    1274:	a480007a 	sh	zero,122(a0)
    1278:	a48010c0 	sh	zero,4288(a0)
    127c:	a48010c2 	sh	zero,4290(a0)
    1280:	a48010c4 	sh	zero,4292(a0)
    1284:	e480006c 	swc1	$f0,108(a0)
    1288:	e4800070 	swc1	$f0,112(a0)
    128c:	03e00008 	jr	ra
    1290:	e4800074 	swc1	$f0,116(a0)

00001294 <func_800B4DE4>:
    1294:	27bdffe8 	addiu	sp,sp,-24
    1298:	afbf0014 	sw	ra,20(sp)
    129c:	8caf0050 	lw	t7,80(a1)
    12a0:	44803000 	mtc1	zero,$f6
    12a4:	24020001 	li	v0,1
    12a8:	ac8f0004 	sw	t7,4(a0)
    12ac:	8cae0054 	lw	t6,84(a1)
    12b0:	ac8e0008 	sw	t6,8(a0)
    12b4:	8caf0058 	lw	t7,88(a1)
    12b8:	ac8f000c 	sw	t7,12(a0)
    12bc:	8cb9005c 	lw	t9,92(a1)
    12c0:	ac990010 	sw	t9,16(a0)
    12c4:	8cb80060 	lw	t8,96(a1)
    12c8:	ac980014 	sw	t8,20(a0)
    12cc:	8cb90064 	lw	t9,100(a1)
    12d0:	ac990018 	sw	t9,24(a0)
    12d4:	8ca90068 	lw	t1,104(a1)
    12d8:	ac89001c 	sw	t1,28(a0)
    12dc:	8ca8006c 	lw	t0,108(a1)
    12e0:	ac880020 	sw	t0,32(a0)
    12e4:	8ca90070 	lw	t1,112(a1)
    12e8:	ac890024 	sw	t1,36(a0)
    12ec:	c4a400fc 	lwc1	$f4,252(a1)
    12f0:	a480004c 	sh	zero,76(a0)
    12f4:	a4820080 	sh	v0,128(a0)
    12f8:	a4800082 	sh	zero,130(a0)
    12fc:	a4800084 	sh	zero,132(a0)
    1300:	a4820086 	sh	v0,134(a0)
    1304:	ac820088 	sw	v0,136(a0)
    1308:	a4800078 	sh	zero,120(a0)
    130c:	a480007a 	sh	zero,122(a0)
    1310:	e4860050 	swc1	$f6,80(a0)
    1314:	0c000000 	jal	0 <func_800B3B50>
    1318:	e4840048 	swc1	$f4,72(a0)
    131c:	8fbf0014 	lw	ra,20(sp)
    1320:	27bd0018 	addiu	sp,sp,24
    1324:	03e00008 	jr	ra
    1328:	00000000 	nop

0000132c <func_800B4E7C>:
    132c:	27bdfed8 	addiu	sp,sp,-296
    1330:	afb60064 	sw	s6,100(sp)
    1334:	248e0054 	addiu	t6,a0,84
    1338:	afbf006c 	sw	ra,108(sp)
    133c:	afb70068 	sw	s7,104(sp)
    1340:	afb50060 	sw	s5,96(sp)
    1344:	afb4005c 	sw	s4,92(sp)
    1348:	afb30058 	sw	s3,88(sp)
    134c:	afb20054 	sw	s2,84(sp)
    1350:	afb10050 	sw	s1,80(sp)
    1354:	afb0004c 	sw	s0,76(sp)
    1358:	f7b40040 	sdc1	$f20,64(sp)
    135c:	afae0090 	sw	t6,144(sp)
    1360:	24b60094 	addiu	s6,a1,148
    1364:	8ed90000 	lw	t9,0(s6)
    1368:	24b40050 	addiu	s4,a1,80
    136c:	24910060 	addiu	s1,a0,96
    1370:	add90000 	sw	t9,0(t6)
    1374:	8ed80004 	lw	t8,4(s6)
    1378:	3c0b0000 	lui	t3,0x0
    137c:	2401dfff 	li	at,-8193
    1380:	add80004 	sw	t8,4(t6)
    1384:	8ed90008 	lw	t9,8(s6)
    1388:	0080a825 	move	s5,a0
    138c:	00a0b825 	move	s7,a1
    1390:	add90008 	sw	t9,8(t6)
    1394:	8e8a0000 	lw	t2,0(s4)
    1398:	ae2a0000 	sw	t2,0(s1)
    139c:	8e890004 	lw	t1,4(s4)
    13a0:	ae290004 	sw	t1,4(s1)
    13a4:	8e8a0008 	lw	t2,8(s4)
    13a8:	ae2a0008 	sw	t2,8(s1)
    13ac:	8d6b0000 	lw	t3,0(t3)
    13b0:	956c0050 	lhu	t4,80(t3)
    13b4:	01816827 	nor	t5,t4,at
    13b8:	55a0001e 	bnezl	t5,1434 <func_800B4E7C+0x108>
    13bc:	8eac0038 	lw	t4,56(s5)
    13c0:	8c8e0000 	lw	t6,0(a0)
    13c4:	24010003 	li	at,3
    13c8:	24090001 	li	t1,1
    13cc:	25cf0001 	addiu	t7,t6,1
    13d0:	01e1001a 	div	zero,t7,at
    13d4:	ac8f0000 	sw	t7,0(a0)
    13d8:	0000c810 	mfhi	t9
    13dc:	240affff 	li	t2,-1
    13e0:	ac990000 	sw	t9,0(a0)
    13e4:	ac890038 	sw	t1,56(a0)
    13e8:	ac800044 	sw	zero,68(a0)
    13ec:	ac8a0040 	sw	t2,64(a0)
    13f0:	a48010c2 	sh	zero,4290(a0)
    13f4:	3c070000 	lui	a3,0x0
    13f8:	3c0b0000 	lui	t3,0x0
    13fc:	24e70000 	addiu	a3,a3,0
    1400:	3c010000 	lui	at,0x0
    1404:	256b0000 	addiu	t3,t3,0
    1408:	3c050000 	lui	a1,0x0
    140c:	a4200000 	sh	zero,0(at)
    1410:	24a50000 	addiu	a1,a1,0
    1414:	afab0014 	sw	t3,20(sp)
    1418:	afa70010 	sw	a3,16(sp)
    141c:	24044830 	li	a0,18480
    1420:	0c000000 	jal	0 <func_800B3B50>
    1424:	24060004 	li	a2,4
    1428:	10000009 	b	1450 <func_800B4E7C+0x124>
    142c:	8eb00000 	lw	s0,0(s5)
    1430:	8eac0038 	lw	t4,56(s5)
    1434:	2401ffff 	li	at,-1
    1438:	15810003 	bne	t4,at,1448 <func_800B4E7C+0x11c>
    143c:	240d0001 	li	t5,1
    1440:	10000002 	b	144c <func_800B4E7C+0x120>
    1444:	aead0038 	sw	t5,56(s5)
    1448:	aea00038 	sw	zero,56(s5)
    144c:	8eb00000 	lw	s0,0(s5)
    1450:	1200000a 	beqz	s0,147c <func_800B4E7C+0x150>
    1454:	24010001 	li	at,1
    1458:	1201002b 	beq	s0,at,1508 <func_800B4E7C+0x1dc>
    145c:	24010002 	li	at,2
    1460:	12010066 	beq	s0,at,15fc <func_800B4E7C+0x2d0>
    1464:	26ae0010 	addiu	t6,s5,16
    1468:	26af0004 	addiu	t7,s5,4
    146c:	afaf007c 	sw	t7,124(sp)
    1470:	afae0080 	sw	t6,128(sp)
    1474:	10000066 	b	1610 <func_800B4E7C+0x2e4>
    1478:	8fb00124 	lw	s0,292(sp)
    147c:	86b00078 	lh	s0,120(s5)
    1480:	12000007 	beqz	s0,14a0 <func_800B4E7C+0x174>
    1484:	24010001 	li	at,1
    1488:	1201000b 	beq	s0,at,14b8 <func_800B4E7C+0x18c>
    148c:	24010002 	li	at,2
    1490:	52010011 	beql	s0,at,14d8 <func_800B4E7C+0x1ac>
    1494:	8fb00090 	lw	s0,144(sp)
    1498:	10000016 	b	14f4 <func_800B4E7C+0x1c8>
    149c:	26b90010 	addiu	t9,s5,16
    14a0:	3c010000 	lui	at,0x0
    14a4:	ac200000 	sw	zero,0(at)
    14a8:	3c010000 	lui	at,0x0
    14ac:	ac200000 	sw	zero,0(at)
    14b0:	1000000f 	b	14f0 <func_800B4E7C+0x1c4>
    14b4:	afb10124 	sw	s1,292(sp)
    14b8:	3c010000 	lui	at,0x0
    14bc:	ac200000 	sw	zero,0(at)
    14c0:	26b0006c 	addiu	s0,s5,108
    14c4:	3c010000 	lui	at,0x0
    14c8:	ac200000 	sw	zero,0(at)
    14cc:	10000008 	b	14f0 <func_800B4E7C+0x1c4>
    14d0:	afb00124 	sw	s0,292(sp)
    14d4:	8fb00090 	lw	s0,144(sp)
    14d8:	3c010000 	lui	at,0x0
    14dc:	ac200000 	sw	zero,0(at)
    14e0:	3c010000 	lui	at,0x0
    14e4:	24180001 	li	t8,1
    14e8:	ac380000 	sw	t8,0(at)
    14ec:	afb00124 	sw	s0,292(sp)
    14f0:	26b90010 	addiu	t9,s5,16
    14f4:	26a90004 	addiu	t1,s5,4
    14f8:	8fb00124 	lw	s0,292(sp)
    14fc:	afa9007c 	sw	t1,124(sp)
    1500:	10000043 	b	1610 <func_800B4E7C+0x2e4>
    1504:	afb90080 	sw	t9,128(sp)
    1508:	86b00084 	lh	s0,132(s5)
    150c:	12000009 	beqz	s0,1534 <func_800B4E7C+0x208>
    1510:	24010001 	li	at,1
    1514:	1201001a 	beq	s0,at,1580 <func_800B4E7C+0x254>
    1518:	24010002 	li	at,2
    151c:	1201002b 	beq	s0,at,15cc <func_800B4E7C+0x2a0>
    1520:	26aa0010 	addiu	t2,s5,16
    1524:	26ab0004 	addiu	t3,s5,4
    1528:	afab007c 	sw	t3,124(sp)
    152c:	10000031 	b	15f4 <func_800B4E7C+0x2c8>
    1530:	afaa0080 	sw	t2,128(sp)
    1534:	8eac0088 	lw	t4,136(s5)
    1538:	3c010000 	lui	at,0x0
    153c:	3c0d0000 	lui	t5,0x0
    1540:	ac2c0000 	sw	t4,0(at)
    1544:	8dad0000 	lw	t5,0(t5)
    1548:	11a00005 	beqz	t5,1560 <func_800B4E7C+0x234>
    154c:	26b00010 	addiu	s0,s5,16
    1550:	26af0004 	addiu	t7,s5,4
    1554:	afaf007c 	sw	t7,124(sp)
    1558:	10000005 	b	1570 <func_800B4E7C+0x244>
    155c:	afb00080 	sw	s0,128(sp)
    1560:	26b00004 	addiu	s0,s5,4
    1564:	26b80010 	addiu	t8,s5,16
    1568:	afb80080 	sw	t8,128(sp)
    156c:	afb0007c 	sw	s0,124(sp)
    1570:	3c010000 	lui	at,0x0
    1574:	ac200000 	sw	zero,0(at)
    1578:	1000001e 	b	15f4 <func_800B4E7C+0x2c8>
    157c:	afb00124 	sw	s0,292(sp)
    1580:	8eb90088 	lw	t9,136(s5)
    1584:	3c010000 	lui	at,0x0
    1588:	3c090000 	lui	t1,0x0
    158c:	ac390000 	sw	t9,0(at)
    1590:	8d290000 	lw	t1,0(t1)
    1594:	11200005 	beqz	t1,15ac <func_800B4E7C+0x280>
    1598:	26b00010 	addiu	s0,s5,16
    159c:	26ab0004 	addiu	t3,s5,4
    15a0:	afab007c 	sw	t3,124(sp)
    15a4:	10000005 	b	15bc <func_800B4E7C+0x290>
    15a8:	afb00080 	sw	s0,128(sp)
    15ac:	26b00004 	addiu	s0,s5,4
    15b0:	26ac0010 	addiu	t4,s5,16
    15b4:	afac0080 	sw	t4,128(sp)
    15b8:	afb0007c 	sw	s0,124(sp)
    15bc:	3c010000 	lui	at,0x0
    15c0:	ac200000 	sw	zero,0(at)
    15c4:	1000000b 	b	15f4 <func_800B4E7C+0x2c8>
    15c8:	afb00124 	sw	s0,292(sp)
    15cc:	3c010000 	lui	at,0x0
    15d0:	ac200000 	sw	zero,0(at)
    15d4:	26a20004 	addiu	v0,s5,4
    15d8:	3c010000 	lui	at,0x0
    15dc:	240d0001 	li	t5,1
    15e0:	26ae0010 	addiu	t6,s5,16
    15e4:	ac2d0000 	sw	t5,0(at)
    15e8:	afae0080 	sw	t6,128(sp)
    15ec:	afa2007c 	sw	v0,124(sp)
    15f0:	afa20124 	sw	v0,292(sp)
    15f4:	10000006 	b	1610 <func_800B4E7C+0x2e4>
    15f8:	8fb00124 	lw	s0,292(sp)
    15fc:	02a02025 	move	a0,s5
    1600:	0c000000 	jal	0 <func_800B3B50>
    1604:	02e02825 	move	a1,s7
    1608:	10000d6a 	b	4bb4 <func_800B4E7C+0x3888>
    160c:	8fbf006c 	lw	ra,108(sp)
    1610:	3c0f0000 	lui	t7,0x0
    1614:	8def0000 	lw	t7,0(t7)
    1618:	15e00007 	bnez	t7,1638 <func_800B4E7C+0x30c>
    161c:	27b10104 	addiu	s1,sp,260
    1620:	02202025 	move	a0,s1
    1624:	8fa5007c 	lw	a1,124(sp)
    1628:	0c000000 	jal	0 <func_800B3B50>
    162c:	8fa60080 	lw	a2,128(sp)
    1630:	10000007 	b	1650 <func_800B4E7C+0x324>
    1634:	8ea20044 	lw	v0,68(s5)
    1638:	27b10104 	addiu	s1,sp,260
    163c:	02202025 	move	a0,s1
    1640:	8fa50080 	lw	a1,128(sp)
    1644:	0c000000 	jal	0 <func_800B3B50>
    1648:	8fa6007c 	lw	a2,124(sp)
    164c:	8ea20044 	lw	v0,68(s5)
    1650:	28410065 	slti	at,v0,101
    1654:	54200004 	bnezl	at,1668 <func_800B4E7C+0x33c>
    1658:	44822000 	mtc1	v0,$f4
    165c:	24020064 	li	v0,100
    1660:	aea20044 	sw	v0,68(s5)
    1664:	44822000 	mtc1	v0,$f4
    1668:	3c010000 	lui	at,0x0
    166c:	c4280000 	lwc1	$f8,0(at)
    1670:	468021a0 	cvt.s.w	$f6,$f4
    1674:	3c010000 	lui	at,0x0
    1678:	c4240000 	lwc1	$f4,0(at)
    167c:	3c0142c8 	lui	at,0x42c8
    1680:	8eb90038 	lw	t9,56(s5)
    1684:	46083282 	mul.s	$f10,$f6,$f8
    1688:	44814000 	mtc1	at,$f8
    168c:	c7a60104 	lwc1	$f6,260(sp)
    1690:	46045000 	add.s	$f0,$f10,$f4
    1694:	46083283 	div.s	$f10,$f6,$f8
    1698:	46005082 	mul.s	$f2,$f10,$f0
    169c:	17200003 	bnez	t9,16ac <func_800B4E7C+0x380>
    16a0:	46001306 	mov.s	$f12,$f2
    16a4:	8ea9003c 	lw	t1,60(s5)
    16a8:	112000a8 	beqz	t1,194c <func_800B4E7C+0x620>
    16ac:	3c0a0000 	lui	t2,0x0
    16b0:	8d4a0000 	lw	t2,0(t2)
    16b4:	5140000a 	beqzl	t2,16e0 <func_800B4E7C+0x3b4>
    16b8:	8fad007c 	lw	t5,124(sp)
    16bc:	8fa70080 	lw	a3,128(sp)
    16c0:	8e0c0000 	lw	t4,0(s0)
    16c4:	acec0000 	sw	t4,0(a3)
    16c8:	8e0b0004 	lw	t3,4(s0)
    16cc:	aceb0004 	sw	t3,4(a3)
    16d0:	8e0c0008 	lw	t4,8(s0)
    16d4:	10000009 	b	16fc <func_800B4E7C+0x3d0>
    16d8:	acec0008 	sw	t4,8(a3)
    16dc:	8fad007c 	lw	t5,124(sp)
    16e0:	8e0f0000 	lw	t7,0(s0)
    16e4:	adaf0000 	sw	t7,0(t5)
    16e8:	8e0e0004 	lw	t6,4(s0)
    16ec:	adae0004 	sw	t6,4(t5)
    16f0:	8e0f0008 	lw	t7,8(s0)
    16f4:	adaf0008 	sw	t7,8(t5)
    16f8:	8fa70080 	lw	a3,128(sp)
    16fc:	3c180000 	lui	t8,0x0
    1700:	8f180000 	lw	t8,0(t8)
    1704:	3c190000 	lui	t9,0x0
    1708:	2401bfdf 	li	at,-16417
    170c:	aeb8003c 	sw	t8,60(s5)
    1710:	8f390000 	lw	t9,0(t9)
    1714:	97220044 	lhu	v0,68(t9)
    1718:	00414827 	nor	t1,v0,at
    171c:	55200017 	bnezl	t1,177c <func_800B4E7C+0x450>
    1720:	2401bfff 	li	at,-16385
    1724:	c7a00104 	lwc1	$f0,260(sp)
    1728:	3c010000 	lui	at,0x0
    172c:	c4220000 	lwc1	$f2,0(at)
    1730:	460c0000 	add.s	$f0,$f0,$f12
    1734:	4600103c 	c.lt.s	$f2,$f0
    1738:	e7a00104 	swc1	$f0,260(sp)
    173c:	45020003 	bc1fl	174c <func_800B4E7C+0x420>
    1740:	8eaa0040 	lw	t2,64(s5)
    1744:	e7a20104 	swc1	$f2,260(sp)
    1748:	8eaa0040 	lw	t2,64(s5)
    174c:	24020007 	li	v0,7
    1750:	544a0006 	bnel	v0,t2,176c <func_800B4E7C+0x440>
    1754:	aea00044 	sw	zero,68(s5)
    1758:	8eab0044 	lw	t3,68(s5)
    175c:	256c0001 	addiu	t4,t3,1
    1760:	10000002 	b	176c <func_800B4E7C+0x440>
    1764:	aeac0044 	sw	t4,68(s5)
    1768:	aea00044 	sw	zero,68(s5)
    176c:	aea20040 	sw	v0,64(s5)
    1770:	10000218 	b	1fd4 <func_800B4E7C+0xca8>
    1774:	24120008 	li	s2,8
    1778:	2401bfff 	li	at,-16385
    177c:	00416827 	nor	t5,v0,at
    1780:	55a00029 	bnezl	t5,1828 <func_800B4E7C+0x4fc>
    1784:	3c01ffff 	lui	at,0xffff
    1788:	8e2f0000 	lw	t7,0(s1)
    178c:	8e2e0004 	lw	t6,4(s1)
    1790:	27a600fc 	addiu	a2,sp,252
    1794:	3c180000 	lui	t8,0x0
    1798:	accf0000 	sw	t7,0(a2)
    179c:	acce0004 	sw	t6,4(a2)
    17a0:	8f180000 	lw	t8,0(t8)
    17a4:	e7ac00fc 	swc1	$f12,252(sp)
    17a8:	57000009 	bnezl	t8,17d0 <func_800B4E7C+0x4a4>
    17ac:	87a90100 	lh	t1,256(sp)
    17b0:	8fa4007c 	lw	a0,124(sp)
    17b4:	87b9010a 	lh	t9,266(sp)
    17b8:	00802825 	move	a1,a0
    17bc:	0c000000 	jal	0 <func_800B3B50>
    17c0:	a7b90102 	sh	t9,258(sp)
    17c4:	1000000b 	b	17f4 <func_800B4E7C+0x4c8>
    17c8:	8ead0040 	lw	t5,64(s5)
    17cc:	87a90100 	lh	t1,256(sp)
    17d0:	87ab010a 	lh	t3,266(sp)
    17d4:	00e02025 	move	a0,a3
    17d8:	00095023 	negu	t2,t1
    17dc:	256c8001 	addiu	t4,t3,-32767
    17e0:	a7aa0100 	sh	t2,256(sp)
    17e4:	a7ac0102 	sh	t4,258(sp)
    17e8:	0c000000 	jal	0 <func_800B3B50>
    17ec:	00e02825 	move	a1,a3
    17f0:	8ead0040 	lw	t5,64(s5)
    17f4:	2402000b 	li	v0,11
    17f8:	544d0006 	bnel	v0,t5,1814 <func_800B4E7C+0x4e8>
    17fc:	aea00044 	sw	zero,68(s5)
    1800:	8eae0044 	lw	t6,68(s5)
    1804:	25cf0001 	addiu	t7,t6,1
    1808:	10000002 	b	1814 <func_800B4E7C+0x4e8>
    180c:	aeaf0044 	sw	t7,68(s5)
    1810:	aea00044 	sw	zero,68(s5)
    1814:	aea20040 	sw	v0,64(s5)
    1818:	8fa70080 	lw	a3,128(sp)
    181c:	100001ed 	b	1fd4 <func_800B4E7C+0xca8>
    1820:	24120008 	li	s2,8
    1824:	3c01ffff 	lui	at,0xffff
    1828:	34217fdf 	ori	at,at,0x7fdf
    182c:	0041c027 	nor	t8,v0,at
    1830:	57000016 	bnezl	t8,188c <func_800B4E7C+0x560>
    1834:	3c01ffff 	lui	at,0xffff
    1838:	c7a00104 	lwc1	$f0,260(sp)
    183c:	3c014120 	lui	at,0x4120
    1840:	44811000 	mtc1	at,$f2
    1844:	460c0001 	sub.s	$f0,$f0,$f12
    1848:	4602003c 	c.lt.s	$f0,$f2
    184c:	e7a00104 	swc1	$f0,260(sp)
    1850:	45020003 	bc1fl	1860 <func_800B4E7C+0x534>
    1854:	8eb90040 	lw	t9,64(s5)
    1858:	e7a20104 	swc1	$f2,260(sp)
    185c:	8eb90040 	lw	t9,64(s5)
    1860:	24120008 	li	s2,8
    1864:	56590006 	bnel	s2,t9,1880 <func_800B4E7C+0x554>
    1868:	aea00044 	sw	zero,68(s5)
    186c:	8ea90044 	lw	t1,68(s5)
    1870:	252a0001 	addiu	t2,t1,1
    1874:	10000002 	b	1880 <func_800B4E7C+0x554>
    1878:	aeaa0044 	sw	t2,68(s5)
    187c:	aea00044 	sw	zero,68(s5)
    1880:	100001d4 	b	1fd4 <func_800B4E7C+0xca8>
    1884:	aeb20040 	sw	s2,64(s5)
    1888:	3c01ffff 	lui	at,0xffff
    188c:	34217fff 	ori	at,at,0x7fff
    1890:	00415827 	nor	t3,v0,at
    1894:	55600029 	bnezl	t3,193c <func_800B4E7C+0x610>
    1898:	240effff 	li	t6,-1
    189c:	8e2d0000 	lw	t5,0(s1)
    18a0:	8e2c0004 	lw	t4,4(s1)
    18a4:	27a600fc 	addiu	a2,sp,252
    18a8:	3c0e0000 	lui	t6,0x0
    18ac:	accd0000 	sw	t5,0(a2)
    18b0:	accc0004 	sw	t4,4(a2)
    18b4:	8dce0000 	lw	t6,0(t6)
    18b8:	46006107 	neg.s	$f4,$f12
    18bc:	15c00008 	bnez	t6,18e0 <func_800B4E7C+0x5b4>
    18c0:	e7a400fc 	swc1	$f4,252(sp)
    18c4:	8fa4007c 	lw	a0,124(sp)
    18c8:	87af010a 	lh	t7,266(sp)
    18cc:	00802825 	move	a1,a0
    18d0:	0c000000 	jal	0 <func_800B3B50>
    18d4:	a7af0102 	sh	t7,258(sp)
    18d8:	1000000b 	b	1908 <func_800B4E7C+0x5dc>
    18dc:	8eab0040 	lw	t3,64(s5)
    18e0:	87b80100 	lh	t8,256(sp)
    18e4:	87a9010a 	lh	t1,266(sp)
    18e8:	00e02025 	move	a0,a3
    18ec:	0018c823 	negu	t9,t8
    18f0:	252a8001 	addiu	t2,t1,-32767
    18f4:	a7b90100 	sh	t9,256(sp)
    18f8:	a7aa0102 	sh	t2,258(sp)
    18fc:	0c000000 	jal	0 <func_800B3B50>
    1900:	00e02825 	move	a1,a3
    1904:	8eab0040 	lw	t3,64(s5)
    1908:	2402000c 	li	v0,12
    190c:	544b0006 	bnel	v0,t3,1928 <func_800B4E7C+0x5fc>
    1910:	aea00044 	sw	zero,68(s5)
    1914:	8eac0044 	lw	t4,68(s5)
    1918:	258d0001 	addiu	t5,t4,1
    191c:	10000002 	b	1928 <func_800B4E7C+0x5fc>
    1920:	aead0044 	sw	t5,68(s5)
    1924:	aea00044 	sw	zero,68(s5)
    1928:	aea20040 	sw	v0,64(s5)
    192c:	8fa70080 	lw	a3,128(sp)
    1930:	100001a8 	b	1fd4 <func_800B4E7C+0xca8>
    1934:	24120008 	li	s2,8
    1938:	240effff 	li	t6,-1
    193c:	aea00044 	sw	zero,68(s5)
    1940:	aeae0040 	sw	t6,64(s5)
    1944:	100001a3 	b	1fd4 <func_800B4E7C+0xca8>
    1948:	24120008 	li	s2,8
    194c:	3c0f0000 	lui	t7,0x0
    1950:	8def0000 	lw	t7,0(t7)
    1954:	2401fbdf 	li	at,-1057
    1958:	95e20044 	lhu	v0,68(t7)
    195c:	0041c027 	nor	t8,v0,at
    1960:	5700002a 	bnezl	t8,1a0c <func_800B4E7C+0x6e0>
    1964:	2401f7df 	li	at,-2081
    1968:	8e2a0000 	lw	t2,0(s1)
    196c:	27b900fc 	addiu	t9,sp,252
    1970:	3c0b0000 	lui	t3,0x0
    1974:	af2a0000 	sw	t2,0(t9)
    1978:	8e290004 	lw	t1,4(s1)
    197c:	af290004 	sw	t1,4(t9)
    1980:	8d6b0000 	lw	t3,0(t3)
    1984:	e7a200fc 	swc1	$f2,252(sp)
    1988:	a7a00100 	sh	zero,256(sp)
    198c:	5560000a 	bnezl	t3,19b8 <func_800B4E7C+0x68c>
    1990:	87ad010a 	lh	t5,266(sp)
    1994:	8fa4007c 	lw	a0,124(sp)
    1998:	87ac010a 	lh	t4,266(sp)
    199c:	27a600fc 	addiu	a2,sp,252
    19a0:	00802825 	move	a1,a0
    19a4:	0c000000 	jal	0 <func_800B3B50>
    19a8:	a7ac0102 	sh	t4,258(sp)
    19ac:	10000009 	b	19d4 <func_800B4E7C+0x6a8>
    19b0:	8eb80040 	lw	t8,64(s5)
    19b4:	87ad010a 	lh	t5,266(sp)
    19b8:	8fa50080 	lw	a1,128(sp)
    19bc:	27a600fc 	addiu	a2,sp,252
    19c0:	25ae8001 	addiu	t6,t5,-32767
    19c4:	a7ae0102 	sh	t6,258(sp)
    19c8:	0c000000 	jal	0 <func_800B3B50>
    19cc:	00a02025 	move	a0,a1
    19d0:	8eb80040 	lw	t8,64(s5)
    19d4:	24010001 	li	at,1
    19d8:	57010006 	bnel	t8,at,19f4 <func_800B4E7C+0x6c8>
    19dc:	aea00044 	sw	zero,68(s5)
    19e0:	8eb90044 	lw	t9,68(s5)
    19e4:	27290001 	addiu	t1,t9,1
    19e8:	10000002 	b	19f4 <func_800B4E7C+0x6c8>
    19ec:	aea90044 	sw	t1,68(s5)
    19f0:	aea00044 	sw	zero,68(s5)
    19f4:	240a0001 	li	t2,1
    19f8:	aeaa0040 	sw	t2,64(s5)
    19fc:	8fa70080 	lw	a3,128(sp)
    1a00:	10000174 	b	1fd4 <func_800B4E7C+0xca8>
    1a04:	24120008 	li	s2,8
    1a08:	2401f7df 	li	at,-2081
    1a0c:	00415827 	nor	t3,v0,at
    1a10:	5560002b 	bnezl	t3,1ac0 <func_800B4E7C+0x794>
    1a14:	2401f7ff 	li	at,-2049
    1a18:	8e2e0000 	lw	t6,0(s1)
    1a1c:	27ac00fc 	addiu	t4,sp,252
    1a20:	3c0f0000 	lui	t7,0x0
    1a24:	ad8e0000 	sw	t6,0(t4)
    1a28:	8e2d0004 	lw	t5,4(s1)
    1a2c:	46001187 	neg.s	$f6,$f2
    1a30:	ad8d0004 	sw	t5,4(t4)
    1a34:	8def0000 	lw	t7,0(t7)
    1a38:	e7a600fc 	swc1	$f6,252(sp)
    1a3c:	a7a00100 	sh	zero,256(sp)
    1a40:	55e0000a 	bnezl	t7,1a6c <func_800B4E7C+0x740>
    1a44:	87a9010a 	lh	t1,266(sp)
    1a48:	87b8010a 	lh	t8,266(sp)
    1a4c:	8fa5007c 	lw	a1,124(sp)
    1a50:	27a600fc 	addiu	a2,sp,252
    1a54:	a7b80102 	sh	t8,258(sp)
    1a58:	0c000000 	jal	0 <func_800B3B50>
    1a5c:	00a02025 	move	a0,a1
    1a60:	10000009 	b	1a88 <func_800B4E7C+0x75c>
    1a64:	8eac0040 	lw	t4,64(s5)
    1a68:	87a9010a 	lh	t1,266(sp)
    1a6c:	8fa50080 	lw	a1,128(sp)
    1a70:	27a600fc 	addiu	a2,sp,252
    1a74:	252a8001 	addiu	t2,t1,-32767
    1a78:	a7aa0102 	sh	t2,258(sp)
    1a7c:	0c000000 	jal	0 <func_800B3B50>
    1a80:	00a02025 	move	a0,a1
    1a84:	8eac0040 	lw	t4,64(s5)
    1a88:	24010002 	li	at,2
    1a8c:	55810006 	bnel	t4,at,1aa8 <func_800B4E7C+0x77c>
    1a90:	aea00044 	sw	zero,68(s5)
    1a94:	8ead0044 	lw	t5,68(s5)
    1a98:	25ae0001 	addiu	t6,t5,1
    1a9c:	10000002 	b	1aa8 <func_800B4E7C+0x77c>
    1aa0:	aeae0044 	sw	t6,68(s5)
    1aa4:	aea00044 	sw	zero,68(s5)
    1aa8:	240f0002 	li	t7,2
    1aac:	aeaf0040 	sw	t7,64(s5)
    1ab0:	8fa70080 	lw	a3,128(sp)
    1ab4:	10000147 	b	1fd4 <func_800B4E7C+0xca8>
    1ab8:	24120008 	li	s2,8
    1abc:	2401f7ff 	li	at,-2049
    1ac0:	0041c027 	nor	t8,v0,at
    1ac4:	57000027 	bnezl	t8,1b64 <func_800B4E7C+0x838>
    1ac8:	2401fbff 	li	at,-1025
    1acc:	8e2a0000 	lw	t2,0(s1)
    1ad0:	27b900fc 	addiu	t9,sp,252
    1ad4:	3c0d0000 	lui	t5,0x0
    1ad8:	af2a0000 	sw	t2,0(t9)
    1adc:	8e290004 	lw	t1,4(s1)
    1ae0:	240b3fff 	li	t3,16383
    1ae4:	af290004 	sw	t1,4(t9)
    1ae8:	8dad0000 	lw	t5,0(t5)
    1aec:	87ac010a 	lh	t4,266(sp)
    1af0:	e7a200fc 	swc1	$f2,252(sp)
    1af4:	a7ab0100 	sh	t3,256(sp)
    1af8:	15a00007 	bnez	t5,1b18 <func_800B4E7C+0x7ec>
    1afc:	a7ac0102 	sh	t4,258(sp)
    1b00:	8fa5007c 	lw	a1,124(sp)
    1b04:	27a600fc 	addiu	a2,sp,252
    1b08:	0c000000 	jal	0 <func_800B3B50>
    1b0c:	00a02025 	move	a0,a1
    1b10:	10000006 	b	1b2c <func_800B4E7C+0x800>
    1b14:	8eb80040 	lw	t8,64(s5)
    1b18:	8fa50080 	lw	a1,128(sp)
    1b1c:	27a600fc 	addiu	a2,sp,252
    1b20:	0c000000 	jal	0 <func_800B3B50>
    1b24:	00a02025 	move	a0,a1
    1b28:	8eb80040 	lw	t8,64(s5)
    1b2c:	24010003 	li	at,3
    1b30:	57010006 	bnel	t8,at,1b4c <func_800B4E7C+0x820>
    1b34:	aea00044 	sw	zero,68(s5)
    1b38:	8eb90044 	lw	t9,68(s5)
    1b3c:	27290001 	addiu	t1,t9,1
    1b40:	10000002 	b	1b4c <func_800B4E7C+0x820>
    1b44:	aea90044 	sw	t1,68(s5)
    1b48:	aea00044 	sw	zero,68(s5)
    1b4c:	240a0003 	li	t2,3
    1b50:	aeaa0040 	sw	t2,64(s5)
    1b54:	8fa70080 	lw	a3,128(sp)
    1b58:	1000011e 	b	1fd4 <func_800B4E7C+0xca8>
    1b5c:	24120008 	li	s2,8
    1b60:	2401fbff 	li	at,-1025
    1b64:	00415827 	nor	t3,v0,at
    1b68:	55600027 	bnezl	t3,1c08 <func_800B4E7C+0x8dc>
    1b6c:	2401fedf 	li	at,-289
    1b70:	8e2e0000 	lw	t6,0(s1)
    1b74:	27ac00fc 	addiu	t4,sp,252
    1b78:	3c190000 	lui	t9,0x0
    1b7c:	ad8e0000 	sw	t6,0(t4)
    1b80:	8e2d0004 	lw	t5,4(s1)
    1b84:	240fc001 	li	t7,-16383
    1b88:	ad8d0004 	sw	t5,4(t4)
    1b8c:	8f390000 	lw	t9,0(t9)
    1b90:	87b8010a 	lh	t8,266(sp)
    1b94:	e7a200fc 	swc1	$f2,252(sp)
    1b98:	a7af0100 	sh	t7,256(sp)
    1b9c:	17200007 	bnez	t9,1bbc <func_800B4E7C+0x890>
    1ba0:	a7b80102 	sh	t8,258(sp)
    1ba4:	8fa5007c 	lw	a1,124(sp)
    1ba8:	27a600fc 	addiu	a2,sp,252
    1bac:	0c000000 	jal	0 <func_800B3B50>
    1bb0:	00a02025 	move	a0,a1
    1bb4:	10000006 	b	1bd0 <func_800B4E7C+0x8a4>
    1bb8:	8eab0040 	lw	t3,64(s5)
    1bbc:	8fa50080 	lw	a1,128(sp)
    1bc0:	27a600fc 	addiu	a2,sp,252
    1bc4:	0c000000 	jal	0 <func_800B3B50>
    1bc8:	00a02025 	move	a0,a1
    1bcc:	8eab0040 	lw	t3,64(s5)
    1bd0:	24010004 	li	at,4
    1bd4:	55610006 	bnel	t3,at,1bf0 <func_800B4E7C+0x8c4>
    1bd8:	aea00044 	sw	zero,68(s5)
    1bdc:	8eac0044 	lw	t4,68(s5)
    1be0:	258d0001 	addiu	t5,t4,1
    1be4:	10000002 	b	1bf0 <func_800B4E7C+0x8c4>
    1be8:	aead0044 	sw	t5,68(s5)
    1bec:	aea00044 	sw	zero,68(s5)
    1bf0:	240e0004 	li	t6,4
    1bf4:	aeae0040 	sw	t6,64(s5)
    1bf8:	8fa70080 	lw	a3,128(sp)
    1bfc:	100000f5 	b	1fd4 <func_800B4E7C+0xca8>
    1c00:	24120008 	li	s2,8
    1c04:	2401fedf 	li	at,-289
    1c08:	00417827 	nor	t7,v0,at
    1c0c:	11e00004 	beqz	t7,1c20 <func_800B4E7C+0x8f4>
    1c10:	2401feff 	li	at,-257
    1c14:	0041c027 	nor	t8,v0,at
    1c18:	5700002b 	bnezl	t8,1cc8 <func_800B4E7C+0x99c>
    1c1c:	2401fddf 	li	at,-545
    1c20:	8e2a0000 	lw	t2,0(s1)
    1c24:	27b900fc 	addiu	t9,sp,252
    1c28:	3c0b0000 	lui	t3,0x0
    1c2c:	af2a0000 	sw	t2,0(t9)
    1c30:	8e290004 	lw	t1,4(s1)
    1c34:	af290004 	sw	t1,4(t9)
    1c38:	8d6b0000 	lw	t3,0(t3)
    1c3c:	e7a200fc 	swc1	$f2,252(sp)
    1c40:	a7a00100 	sh	zero,256(sp)
    1c44:	5560000b 	bnezl	t3,1c74 <func_800B4E7C+0x948>
    1c48:	87af010a 	lh	t7,266(sp)
    1c4c:	87ac010a 	lh	t4,266(sp)
    1c50:	8fa5007c 	lw	a1,124(sp)
    1c54:	27a600fc 	addiu	a2,sp,252
    1c58:	258d3fff 	addiu	t5,t4,16383
    1c5c:	a7ad0102 	sh	t5,258(sp)
    1c60:	0c000000 	jal	0 <func_800B3B50>
    1c64:	00a02025 	move	a0,a1
    1c68:	10000009 	b	1c90 <func_800B4E7C+0x964>
    1c6c:	8ea90040 	lw	t1,64(s5)
    1c70:	87af010a 	lh	t7,266(sp)
    1c74:	8fa50080 	lw	a1,128(sp)
    1c78:	27a600fc 	addiu	a2,sp,252
    1c7c:	25f8c001 	addiu	t8,t7,-16383
    1c80:	a7b80102 	sh	t8,258(sp)
    1c84:	0c000000 	jal	0 <func_800B3B50>
    1c88:	00a02025 	move	a0,a1
    1c8c:	8ea90040 	lw	t1,64(s5)
    1c90:	24010005 	li	at,5
    1c94:	55210006 	bnel	t1,at,1cb0 <func_800B4E7C+0x984>
    1c98:	aea00044 	sw	zero,68(s5)
    1c9c:	8eaa0044 	lw	t2,68(s5)
    1ca0:	254b0001 	addiu	t3,t2,1
    1ca4:	10000002 	b	1cb0 <func_800B4E7C+0x984>
    1ca8:	aeab0044 	sw	t3,68(s5)
    1cac:	aea00044 	sw	zero,68(s5)
    1cb0:	240c0005 	li	t4,5
    1cb4:	aeac0040 	sw	t4,64(s5)
    1cb8:	8fa70080 	lw	a3,128(sp)
    1cbc:	100000c5 	b	1fd4 <func_800B4E7C+0xca8>
    1cc0:	24120008 	li	s2,8
    1cc4:	2401fddf 	li	at,-545
    1cc8:	00416827 	nor	t5,v0,at
    1ccc:	11a00004 	beqz	t5,1ce0 <func_800B4E7C+0x9b4>
    1cd0:	2401fdff 	li	at,-513
    1cd4:	00417027 	nor	t6,v0,at
    1cd8:	55c0002a 	bnezl	t6,1d84 <func_800B4E7C+0xa58>
    1cdc:	2401bfdf 	li	at,-16417
    1ce0:	8e390000 	lw	t9,0(s1)
    1ce4:	27af00fc 	addiu	t7,sp,252
    1ce8:	3c090000 	lui	t1,0x0
    1cec:	adf90000 	sw	t9,0(t7)
    1cf0:	8e380004 	lw	t8,4(s1)
    1cf4:	adf80004 	sw	t8,4(t7)
    1cf8:	8d290000 	lw	t1,0(t1)
    1cfc:	e7a200fc 	swc1	$f2,252(sp)
    1d00:	a7a00100 	sh	zero,256(sp)
    1d04:	5520000b 	bnezl	t1,1d34 <func_800B4E7C+0xa08>
    1d08:	87ad010a 	lh	t5,266(sp)
    1d0c:	87aa010a 	lh	t2,266(sp)
    1d10:	8fa5007c 	lw	a1,124(sp)
    1d14:	27a600fc 	addiu	a2,sp,252
    1d18:	254bc001 	addiu	t3,t2,-16383
    1d1c:	a7ab0102 	sh	t3,258(sp)
    1d20:	0c000000 	jal	0 <func_800B3B50>
    1d24:	00a02025 	move	a0,a1
    1d28:	10000009 	b	1d50 <func_800B4E7C+0xa24>
    1d2c:	8eb80040 	lw	t8,64(s5)
    1d30:	87ad010a 	lh	t5,266(sp)
    1d34:	8fa50080 	lw	a1,128(sp)
    1d38:	27a600fc 	addiu	a2,sp,252
    1d3c:	25ae3fff 	addiu	t6,t5,16383
    1d40:	a7ae0102 	sh	t6,258(sp)
    1d44:	0c000000 	jal	0 <func_800B3B50>
    1d48:	00a02025 	move	a0,a1
    1d4c:	8eb80040 	lw	t8,64(s5)
    1d50:	24020006 	li	v0,6
    1d54:	54580006 	bnel	v0,t8,1d70 <func_800B4E7C+0xa44>
    1d58:	aea00044 	sw	zero,68(s5)
    1d5c:	8eb90044 	lw	t9,68(s5)
    1d60:	27290001 	addiu	t1,t9,1
    1d64:	10000002 	b	1d70 <func_800B4E7C+0xa44>
    1d68:	aea90044 	sw	t1,68(s5)
    1d6c:	aea00044 	sw	zero,68(s5)
    1d70:	aea20040 	sw	v0,64(s5)
    1d74:	8fa70080 	lw	a3,128(sp)
    1d78:	10000096 	b	1fd4 <func_800B4E7C+0xca8>
    1d7c:	24120008 	li	s2,8
    1d80:	2401bfdf 	li	at,-16417
    1d84:	00415027 	nor	t2,v0,at
    1d88:	55400018 	bnezl	t2,1dec <func_800B4E7C+0xac0>
    1d8c:	2401bfff 	li	at,-16385
    1d90:	c7a00104 	lwc1	$f0,260(sp)
    1d94:	3c010000 	lui	at,0x0
    1d98:	c4220000 	lwc1	$f2,0(at)
    1d9c:	460c0000 	add.s	$f0,$f0,$f12
    1da0:	4600103c 	c.lt.s	$f2,$f0
    1da4:	e7a00104 	swc1	$f0,260(sp)
    1da8:	45020003 	bc1fl	1db8 <func_800B4E7C+0xa8c>
    1dac:	8eab0040 	lw	t3,64(s5)
    1db0:	e7a20104 	swc1	$f2,260(sp)
    1db4:	8eab0040 	lw	t3,64(s5)
    1db8:	24020007 	li	v0,7
    1dbc:	544b0006 	bnel	v0,t3,1dd8 <func_800B4E7C+0xaac>
    1dc0:	aea00044 	sw	zero,68(s5)
    1dc4:	8eac0044 	lw	t4,68(s5)
    1dc8:	258d0001 	addiu	t5,t4,1
    1dcc:	10000002 	b	1dd8 <func_800B4E7C+0xaac>
    1dd0:	aead0044 	sw	t5,68(s5)
    1dd4:	aea00044 	sw	zero,68(s5)
    1dd8:	aea20040 	sw	v0,64(s5)
    1ddc:	8fa70080 	lw	a3,128(sp)
    1de0:	1000007c 	b	1fd4 <func_800B4E7C+0xca8>
    1de4:	24120008 	li	s2,8
    1de8:	2401bfff 	li	at,-16385
    1dec:	00417027 	nor	t6,v0,at
    1df0:	55c0002b 	bnezl	t6,1ea0 <func_800B4E7C+0xb74>
    1df4:	3c01ffff 	lui	at,0xffff
    1df8:	8e390000 	lw	t9,0(s1)
    1dfc:	27af00fc 	addiu	t7,sp,252
    1e00:	3c090000 	lui	t1,0x0
    1e04:	adf90000 	sw	t9,0(t7)
    1e08:	8e380004 	lw	t8,4(s1)
    1e0c:	adf80004 	sw	t8,4(t7)
    1e10:	8d290000 	lw	t1,0(t1)
    1e14:	e7a200fc 	swc1	$f2,252(sp)
    1e18:	5520000a 	bnezl	t1,1e44 <func_800B4E7C+0xb18>
    1e1c:	87ac0100 	lh	t4,256(sp)
    1e20:	87aa010a 	lh	t2,266(sp)
    1e24:	8fa5007c 	lw	a1,124(sp)
    1e28:	27a600fc 	addiu	a2,sp,252
    1e2c:	a7aa0102 	sh	t2,258(sp)
    1e30:	0c000000 	jal	0 <func_800B3B50>
    1e34:	00a02025 	move	a0,a1
    1e38:	1000000c 	b	1e6c <func_800B4E7C+0xb40>
    1e3c:	8eb90040 	lw	t9,64(s5)
    1e40:	87ac0100 	lh	t4,256(sp)
    1e44:	87ae010a 	lh	t6,266(sp)
    1e48:	8fa50080 	lw	a1,128(sp)
    1e4c:	000c6823 	negu	t5,t4
    1e50:	25cf8001 	addiu	t7,t6,-32767
    1e54:	a7ad0100 	sh	t5,256(sp)
    1e58:	a7af0102 	sh	t7,258(sp)
    1e5c:	27a600fc 	addiu	a2,sp,252
    1e60:	0c000000 	jal	0 <func_800B3B50>
    1e64:	00a02025 	move	a0,a1
    1e68:	8eb90040 	lw	t9,64(s5)
    1e6c:	2402000b 	li	v0,11
    1e70:	54590006 	bnel	v0,t9,1e8c <func_800B4E7C+0xb60>
    1e74:	aea00044 	sw	zero,68(s5)
    1e78:	8ea90044 	lw	t1,68(s5)
    1e7c:	252a0001 	addiu	t2,t1,1
    1e80:	10000002 	b	1e8c <func_800B4E7C+0xb60>
    1e84:	aeaa0044 	sw	t2,68(s5)
    1e88:	aea00044 	sw	zero,68(s5)
    1e8c:	aea20040 	sw	v0,64(s5)
    1e90:	8fa70080 	lw	a3,128(sp)
    1e94:	1000004f 	b	1fd4 <func_800B4E7C+0xca8>
    1e98:	24120008 	li	s2,8
    1e9c:	3c01ffff 	lui	at,0xffff
    1ea0:	34217fdf 	ori	at,at,0x7fdf
    1ea4:	00415827 	nor	t3,v0,at
    1ea8:	55600017 	bnezl	t3,1f08 <func_800B4E7C+0xbdc>
    1eac:	3c01ffff 	lui	at,0xffff
    1eb0:	c7a00104 	lwc1	$f0,260(sp)
    1eb4:	3c014120 	lui	at,0x4120
    1eb8:	44811000 	mtc1	at,$f2
    1ebc:	460c0001 	sub.s	$f0,$f0,$f12
    1ec0:	4602003c 	c.lt.s	$f0,$f2
    1ec4:	e7a00104 	swc1	$f0,260(sp)
    1ec8:	45020003 	bc1fl	1ed8 <func_800B4E7C+0xbac>
    1ecc:	8eac0040 	lw	t4,64(s5)
    1ed0:	e7a20104 	swc1	$f2,260(sp)
    1ed4:	8eac0040 	lw	t4,64(s5)
    1ed8:	24120008 	li	s2,8
    1edc:	564c0006 	bnel	s2,t4,1ef8 <func_800B4E7C+0xbcc>
    1ee0:	aea00044 	sw	zero,68(s5)
    1ee4:	8ead0044 	lw	t5,68(s5)
    1ee8:	25ae0001 	addiu	t6,t5,1
    1eec:	10000002 	b	1ef8 <func_800B4E7C+0xbcc>
    1ef0:	aeae0044 	sw	t6,68(s5)
    1ef4:	aea00044 	sw	zero,68(s5)
    1ef8:	aeb20040 	sw	s2,64(s5)
    1efc:	10000035 	b	1fd4 <func_800B4E7C+0xca8>
    1f00:	8fa70080 	lw	a3,128(sp)
    1f04:	3c01ffff 	lui	at,0xffff
    1f08:	34217fff 	ori	at,at,0x7fff
    1f0c:	00417827 	nor	t7,v0,at
    1f10:	55e0002c 	bnezl	t7,1fc4 <func_800B4E7C+0xc98>
    1f14:	240cffff 	li	t4,-1
    1f18:	8e290000 	lw	t1,0(s1)
    1f1c:	27b800fc 	addiu	t8,sp,252
    1f20:	3c0a0000 	lui	t2,0x0
    1f24:	af090000 	sw	t1,0(t8)
    1f28:	8e390004 	lw	t9,4(s1)
    1f2c:	46001207 	neg.s	$f8,$f2
    1f30:	af190004 	sw	t9,4(t8)
    1f34:	8d4a0000 	lw	t2,0(t2)
    1f38:	e7a800fc 	swc1	$f8,252(sp)
    1f3c:	5540000a 	bnezl	t2,1f68 <func_800B4E7C+0xc3c>
    1f40:	87ad0100 	lh	t5,256(sp)
    1f44:	87ab010a 	lh	t3,266(sp)
    1f48:	8fa5007c 	lw	a1,124(sp)
    1f4c:	27a600fc 	addiu	a2,sp,252
    1f50:	a7ab0102 	sh	t3,258(sp)
    1f54:	0c000000 	jal	0 <func_800B3B50>
    1f58:	00a02025 	move	a0,a1
    1f5c:	1000000c 	b	1f90 <func_800B4E7C+0xc64>
    1f60:	8ea90040 	lw	t1,64(s5)
    1f64:	87ad0100 	lh	t5,256(sp)
    1f68:	87af010a 	lh	t7,266(sp)
    1f6c:	8fa50080 	lw	a1,128(sp)
    1f70:	000d7023 	negu	t6,t5
    1f74:	25f88001 	addiu	t8,t7,-32767
    1f78:	a7ae0100 	sh	t6,256(sp)
    1f7c:	a7b80102 	sh	t8,258(sp)
    1f80:	27a600fc 	addiu	a2,sp,252
    1f84:	0c000000 	jal	0 <func_800B3B50>
    1f88:	00a02025 	move	a0,a1
    1f8c:	8ea90040 	lw	t1,64(s5)
    1f90:	2402000c 	li	v0,12
    1f94:	54490006 	bnel	v0,t1,1fb0 <func_800B4E7C+0xc84>
    1f98:	aea00044 	sw	zero,68(s5)
    1f9c:	8eaa0044 	lw	t2,68(s5)
    1fa0:	254b0001 	addiu	t3,t2,1
    1fa4:	10000002 	b	1fb0 <func_800B4E7C+0xc84>
    1fa8:	aeab0044 	sw	t3,68(s5)
    1fac:	aea00044 	sw	zero,68(s5)
    1fb0:	aea20040 	sw	v0,64(s5)
    1fb4:	8fa70080 	lw	a3,128(sp)
    1fb8:	10000006 	b	1fd4 <func_800B4E7C+0xca8>
    1fbc:	24120008 	li	s2,8
    1fc0:	240cffff 	li	t4,-1
    1fc4:	aea00044 	sw	zero,68(s5)
    1fc8:	aeac0040 	sw	t4,64(s5)
    1fcc:	8fa70080 	lw	a3,128(sp)
    1fd0:	24120008 	li	s2,8
    1fd4:	3c030000 	lui	v1,0x0
    1fd8:	8c630000 	lw	v1,0(v1)
    1fdc:	2405ffef 	li	a1,-17
    1fe0:	94620044 	lhu	v0,68(v1)
    1fe4:	00456827 	nor	t5,v0,a1
    1fe8:	55a0007c 	bnezl	t5,21dc <func_800B4E7C+0xeb0>
    1fec:	806c0059 	lb	t4,89(v1)
    1ff0:	8eae0000 	lw	t6,0(s5)
    1ff4:	55c0001c 	bnezl	t6,2068 <func_800B4E7C+0xd3c>
    1ff8:	86ad0084 	lh	t5,132(s5)
    1ffc:	8af80134 	lwl	t8,308(s7)
    2000:	9af80137 	lwr	t8,311(s7)
    2004:	44806000 	mtc1	zero,$f12
    2008:	3c013f80 	lui	at,0x3f80
    200c:	aab810c6 	swl	t8,4294(s5)
    2010:	bab810c9 	swr	t8,4297(s5)
    2014:	96f80138 	lhu	t8,312(s7)
    2018:	44815000 	mtc1	at,$f10
    201c:	a6b810ca 	sh	t8,4298(s5)
    2020:	8e8a0000 	lw	t2,0(s4)
    2024:	8fb9007c 	lw	t9,124(sp)
    2028:	af2a0000 	sw	t2,0(t9)
    202c:	8e890004 	lw	t1,4(s4)
    2030:	af290004 	sw	t1,4(t9)
    2034:	8e8a0008 	lw	t2,8(s4)
    2038:	af2a0008 	sw	t2,8(t9)
    203c:	8eec005c 	lw	t4,92(s7)
    2040:	acec0000 	sw	t4,0(a3)
    2044:	8eeb0060 	lw	t3,96(s7)
    2048:	aceb0004 	sw	t3,4(a3)
    204c:	8eec0064 	lw	t4,100(s7)
    2050:	acec0008 	sw	t4,8(a3)
    2054:	e6ac001c 	swc1	$f12,28(s5)
    2058:	e6ac0024 	swc1	$f12,36(s5)
    205c:	1000005a 	b	21c8 <func_800B4E7C+0xe9c>
    2060:	e6aa0020 	swc1	$f10,32(s5)
    2064:	86ad0084 	lh	t5,132(s5)
    2068:	24010002 	li	at,2
    206c:	15a10012 	bne	t5,at,20b8 <func_800B4E7C+0xd8c>
    2070:	3c0e0000 	lui	t6,0x0
    2074:	3c0f0000 	lui	t7,0x0
    2078:	25ef0000 	addiu	t7,t7,0
    207c:	25c70000 	addiu	a3,t6,0
    2080:	3c050000 	lui	a1,0x0
    2084:	24a50000 	addiu	a1,a1,0
    2088:	afa70010 	sw	a3,16(sp)
    208c:	afaf0014 	sw	t7,20(sp)
    2090:	24044809 	li	a0,18441
    2094:	0c000000 	jal	0 <func_800B3B50>
    2098:	24060004 	li	a2,4
    209c:	a6a00084 	sh	zero,132(s5)
    20a0:	02a02025 	move	a0,s5
    20a4:	86a50082 	lh	a1,130(s5)
    20a8:	0c000000 	jal	0 <func_800B3B50>
    20ac:	02e03025 	move	a2,s7
    20b0:	10000046 	b	21cc <func_800B4E7C+0xea0>
    20b4:	3c013f00 	lui	at,0x3f00
    20b8:	94780050 	lhu	t8,80(v1)
    20bc:	03052027 	nor	a0,t8,a1
    20c0:	14800016 	bnez	a0,211c <func_800B4E7C+0xdf0>
    20c4:	2401ffdf 	li	at,-33
    20c8:	0041c827 	nor	t9,v0,at
    20cc:	17200013 	bnez	t9,211c <func_800B4E7C+0xdf0>
    20d0:	3c090000 	lui	t1,0x0
    20d4:	3c0a0000 	lui	t2,0x0
    20d8:	254a0000 	addiu	t2,t2,0
    20dc:	25270000 	addiu	a3,t1,0
    20e0:	3c050000 	lui	a1,0x0
    20e4:	24a50000 	addiu	a1,a1,0
    20e8:	afa70010 	sw	a3,16(sp)
    20ec:	afaa0014 	sw	t2,20(sp)
    20f0:	2404480a 	li	a0,18442
    20f4:	0c000000 	jal	0 <func_800B3B50>
    20f8:	24060004 	li	a2,4
    20fc:	86ab0082 	lh	t3,130(s5)
    2100:	02a02025 	move	a0,s5
    2104:	02e02825 	move	a1,s7
    2108:	256c0001 	addiu	t4,t3,1
    210c:	0c000000 	jal	0 <func_800B3B50>
    2110:	a6ac0080 	sh	t4,128(s5)
    2114:	1000002d 	b	21cc <func_800B4E7C+0xea0>
    2118:	3c013f00 	lui	at,0x3f00
    211c:	5480002b 	bnezl	a0,21cc <func_800B4E7C+0xea0>
    2120:	3c013f00 	lui	at,0x3f00
    2124:	86ad0082 	lh	t5,130(s5)
    2128:	24010080 	li	at,128
    212c:	15a1000d 	bne	t5,at,2164 <func_800B4E7C+0xe38>
    2130:	3c0e0000 	lui	t6,0x0
    2134:	3c0f0000 	lui	t7,0x0
    2138:	25ef0000 	addiu	t7,t7,0
    213c:	25c70000 	addiu	a3,t6,0
    2140:	3c050000 	lui	a1,0x0
    2144:	24a50000 	addiu	a1,a1,0
    2148:	afa70010 	sw	a3,16(sp)
    214c:	afaf0014 	sw	t7,20(sp)
    2150:	24044806 	li	a0,18438
    2154:	0c000000 	jal	0 <func_800B3B50>
    2158:	24060004 	li	a2,4
    215c:	1000001b 	b	21cc <func_800B4E7C+0xea0>
    2160:	3c013f00 	lui	at,0x3f00
    2164:	3c180000 	lui	t8,0x0
    2168:	3c190000 	lui	t9,0x0
    216c:	27390000 	addiu	t9,t9,0
    2170:	27070000 	addiu	a3,t8,0
    2174:	3c050000 	lui	a1,0x0
    2178:	24a50000 	addiu	a1,a1,0
    217c:	afa70010 	sw	a3,16(sp)
    2180:	afb90014 	sw	t9,20(sp)
    2184:	24041802 	li	a0,6146
    2188:	0c000000 	jal	0 <func_800B3B50>
    218c:	24060004 	li	a2,4
    2190:	02a02025 	move	a0,s5
    2194:	0c000000 	jal	0 <func_800B3B50>
    2198:	02e02825 	move	a1,s7
    219c:	86b00082 	lh	s0,130(s5)
    21a0:	86a30080 	lh	v1,128(s5)
    21a4:	26090001 	addiu	t1,s0,1
    21a8:	14690007 	bne	v1,t1,21c8 <func_800B4E7C+0xe9c>
    21ac:	260a0001 	addiu	t2,s0,1
    21b0:	246b0001 	addiu	t3,v1,1
    21b4:	a6aa0082 	sh	t2,130(s5)
    21b8:	a6ab0080 	sh	t3,128(s5)
    21bc:	02a02025 	move	a0,s5
    21c0:	0c000000 	jal	0 <func_800B3B50>
    21c4:	02e02825 	move	a1,s7
    21c8:	3c013f00 	lui	at,0x3f00
    21cc:	4481a000 	mtc1	at,$f20
    21d0:	100000f0 	b	2594 <func_800B4E7C+0x1268>
    21d4:	8ea20000 	lw	v0,0(s5)
    21d8:	806c0059 	lb	t4,89(v1)
    21dc:	806d0058 	lb	t5,88(v1)
    21e0:	3c0e0000 	lui	t6,0x0
    21e4:	8dce0000 	lw	t6,0(t6)
    21e8:	448c2000 	mtc1	t4,$f4
    21ec:	448d3000 	mtc1	t5,$f6
    21f0:	46802020 	cvt.s.w	$f0,$f4
    21f4:	15c0005a 	bnez	t6,2360 <func_800B4E7C+0x1034>
    21f8:	468030a0 	cvt.s.w	$f2,$f6
    21fc:	44806000 	mtc1	zero,$f12
    2200:	00000000 	nop
    2204:	4600603e 	c.le.s	$f12,$f0
    2208:	00000000 	nop
    220c:	45000015 	bc1f	2264 <func_800B4E7C+0xf38>
    2210:	00000000 	nop
    2214:	46000202 	mul.s	$f8,$f0,$f0
    2218:	3c014416 	lui	at,0x4416
    221c:	44817000 	mtc1	at,$f14
    2220:	3c010000 	lui	at,0x0
    2224:	c4300000 	lwc1	$f16,0(at)
    2228:	3c010000 	lui	at,0x0
    222c:	c4320000 	lwc1	$f18,0(at)
    2230:	460e4283 	div.s	$f10,$f8,$f14
    2234:	3c013f00 	lui	at,0x3f00
    2238:	4481a000 	mtc1	at,$f20
    223c:	46105102 	mul.s	$f4,$f10,$f16
    2240:	00000000 	nop
    2244:	46122182 	mul.s	$f6,$f4,$f18
    2248:	46143200 	add.s	$f8,$f6,$f20
    224c:	4600428d 	trunc.w.s	$f10,$f8
    2250:	44105000 	mfc1	s0,$f10
    2254:	00000000 	nop
    2258:	00108400 	sll	s0,s0,0x10
    225c:	10000015 	b	22b4 <func_800B4E7C+0xf88>
    2260:	00108403 	sra	s0,s0,0x10
    2264:	46000102 	mul.s	$f4,$f0,$f0
    2268:	3c014416 	lui	at,0x4416
    226c:	44817000 	mtc1	at,$f14
    2270:	3c010000 	lui	at,0x0
    2274:	c4300000 	lwc1	$f16,0(at)
    2278:	3c010000 	lui	at,0x0
    227c:	c4320000 	lwc1	$f18,0(at)
    2280:	460e2183 	div.s	$f6,$f4,$f14
    2284:	3c013f00 	lui	at,0x3f00
    2288:	4481a000 	mtc1	at,$f20
    228c:	46103202 	mul.s	$f8,$f6,$f16
    2290:	00000000 	nop
    2294:	46124282 	mul.s	$f10,$f8,$f18
    2298:	46145100 	add.s	$f4,$f10,$f20
    229c:	4600218d 	trunc.w.s	$f6,$f4
    22a0:	44103000 	mfc1	s0,$f6
    22a4:	00000000 	nop
    22a8:	00108400 	sll	s0,s0,0x10
    22ac:	00108403 	sra	s0,s0,0x10
    22b0:	00108023 	negu	s0,s0
    22b4:	4602603e 	c.le.s	$f12,$f2
    22b8:	87b90108 	lh	t9,264(sp)
    22bc:	03305821 	addu	t3,t9,s0
    22c0:	4500000d 	bc1f	22f8 <func_800B4E7C+0xfcc>
    22c4:	a7ab0108 	sh	t3,264(sp)
    22c8:	46021202 	mul.s	$f8,$f2,$f2
    22cc:	460e4283 	div.s	$f10,$f8,$f14
    22d0:	46105102 	mul.s	$f4,$f10,$f16
    22d4:	00000000 	nop
    22d8:	46122182 	mul.s	$f6,$f4,$f18
    22dc:	46143200 	add.s	$f8,$f6,$f20
    22e0:	4600428d 	trunc.w.s	$f10,$f8
    22e4:	44105000 	mfc1	s0,$f10
    22e8:	00000000 	nop
    22ec:	00108400 	sll	s0,s0,0x10
    22f0:	1000000d 	b	2328 <func_800B4E7C+0xffc>
    22f4:	00108403 	sra	s0,s0,0x10
    22f8:	46021102 	mul.s	$f4,$f2,$f2
    22fc:	460e2183 	div.s	$f6,$f4,$f14
    2300:	46103202 	mul.s	$f8,$f6,$f16
    2304:	00000000 	nop
    2308:	46124282 	mul.s	$f10,$f8,$f18
    230c:	46145100 	add.s	$f4,$f10,$f20
    2310:	4600218d 	trunc.w.s	$f6,$f4
    2314:	44103000 	mfc1	s0,$f6
    2318:	00000000 	nop
    231c:	00108400 	sll	s0,s0,0x10
    2320:	00108403 	sra	s0,s0,0x10
    2324:	00108023 	negu	s0,s0
    2328:	87ae010a 	lh	t6,266(sp)
    232c:	8fa40080 	lw	a0,128(sp)
    2330:	8fa5007c 	lw	a1,124(sp)
    2334:	01d04821 	addu	t1,t6,s0
    2338:	a7a9010a 	sh	t1,266(sp)
    233c:	0c000000 	jal	0 <func_800B3B50>
    2340:	02203025 	move	a2,s1
    2344:	87b90108 	lh	t9,264(sp)
    2348:	00195023 	negu	t2,t9
    234c:	a6aa10c6 	sh	t2,4294(s5)
    2350:	87ab010a 	lh	t3,266(sp)
    2354:	256c8001 	addiu	t4,t3,-32767
    2358:	10000057 	b	24b8 <func_800B4E7C+0x118c>
    235c:	a6ac10c8 	sh	t4,4296(s5)
    2360:	44806000 	mtc1	zero,$f12
    2364:	00000000 	nop
    2368:	4600603e 	c.le.s	$f12,$f0
    236c:	00000000 	nop
    2370:	45000016 	bc1f	23cc <func_800B4E7C+0x10a0>
    2374:	00000000 	nop
    2378:	46000202 	mul.s	$f8,$f0,$f0
    237c:	3c014416 	lui	at,0x4416
    2380:	44817000 	mtc1	at,$f14
    2384:	3c010000 	lui	at,0x0
    2388:	c4300000 	lwc1	$f16,0(at)
    238c:	3c010000 	lui	at,0x0
    2390:	c4320000 	lwc1	$f18,0(at)
    2394:	460e4283 	div.s	$f10,$f8,$f14
    2398:	3c013f00 	lui	at,0x3f00
    239c:	4481a000 	mtc1	at,$f20
    23a0:	46105102 	mul.s	$f4,$f10,$f16
    23a4:	00000000 	nop
    23a8:	46122182 	mul.s	$f6,$f4,$f18
    23ac:	46143200 	add.s	$f8,$f6,$f20
    23b0:	4600428d 	trunc.w.s	$f10,$f8
    23b4:	44105000 	mfc1	s0,$f10
    23b8:	00000000 	nop
    23bc:	00108400 	sll	s0,s0,0x10
    23c0:	00108403 	sra	s0,s0,0x10
    23c4:	10000014 	b	2418 <func_800B4E7C+0x10ec>
    23c8:	00108023 	negu	s0,s0
    23cc:	46000102 	mul.s	$f4,$f0,$f0
    23d0:	3c014416 	lui	at,0x4416
    23d4:	44817000 	mtc1	at,$f14
    23d8:	3c010000 	lui	at,0x0
    23dc:	c4300000 	lwc1	$f16,0(at)
    23e0:	3c010000 	lui	at,0x0
    23e4:	c4320000 	lwc1	$f18,0(at)
    23e8:	460e2183 	div.s	$f6,$f4,$f14
    23ec:	3c013f00 	lui	at,0x3f00
    23f0:	4481a000 	mtc1	at,$f20
    23f4:	46103202 	mul.s	$f8,$f6,$f16
    23f8:	00000000 	nop
    23fc:	46124282 	mul.s	$f10,$f8,$f18
    2400:	46145100 	add.s	$f4,$f10,$f20
    2404:	4600218d 	trunc.w.s	$f6,$f4
    2408:	44103000 	mfc1	s0,$f6
    240c:	00000000 	nop
    2410:	00108400 	sll	s0,s0,0x10
    2414:	00108403 	sra	s0,s0,0x10
    2418:	4602603e 	c.le.s	$f12,$f2
    241c:	87ae0108 	lh	t6,264(sp)
    2420:	01d0c821 	addu	t9,t6,s0
    2424:	4500000e 	bc1f	2460 <func_800B4E7C+0x1134>
    2428:	a7b90108 	sh	t9,264(sp)
    242c:	46021202 	mul.s	$f8,$f2,$f2
    2430:	460e4283 	div.s	$f10,$f8,$f14
    2434:	46105102 	mul.s	$f4,$f10,$f16
    2438:	00000000 	nop
    243c:	46122182 	mul.s	$f6,$f4,$f18
    2440:	46143200 	add.s	$f8,$f6,$f20
    2444:	4600428d 	trunc.w.s	$f10,$f8
    2448:	44105000 	mfc1	s0,$f10
    244c:	00000000 	nop
    2450:	00108400 	sll	s0,s0,0x10
    2454:	00108403 	sra	s0,s0,0x10
    2458:	1000000c 	b	248c <func_800B4E7C+0x1160>
    245c:	00108023 	negu	s0,s0
    2460:	46021102 	mul.s	$f4,$f2,$f2
    2464:	460e2183 	div.s	$f6,$f4,$f14
    2468:	46103202 	mul.s	$f8,$f6,$f16
    246c:	00000000 	nop
    2470:	46124282 	mul.s	$f10,$f8,$f18
    2474:	46145100 	add.s	$f4,$f10,$f20
    2478:	4600218d 	trunc.w.s	$f6,$f4
    247c:	44103000 	mfc1	s0,$f6
    2480:	00000000 	nop
    2484:	00108400 	sll	s0,s0,0x10
    2488:	00108403 	sra	s0,s0,0x10
    248c:	87ac010a 	lh	t4,266(sp)
    2490:	8fa4007c 	lw	a0,124(sp)
    2494:	8fa50080 	lw	a1,128(sp)
    2498:	0190c021 	addu	t8,t4,s0
    249c:	a7b8010a 	sh	t8,266(sp)
    24a0:	0c000000 	jal	0 <func_800B3B50>
    24a4:	02203025 	move	a2,s1
    24a8:	87ae0108 	lh	t6,264(sp)
    24ac:	a6ae10c6 	sh	t6,4294(s5)
    24b0:	87a9010a 	lh	t1,266(sp)
    24b4:	a6a910c8 	sh	t1,4296(s5)
    24b8:	27a400f4 	addiu	a0,sp,244
    24bc:	8fa50080 	lw	a1,128(sp)
    24c0:	0c000000 	jal	0 <func_800B3B50>
    24c4:	8fa6007c 	lw	a2,124(sp)
    24c8:	3c010000 	lui	at,0x0
    24cc:	c4320000 	lwc1	$f18,0(at)
    24d0:	c6a80050 	lwc1	$f8,80(s5)
    24d4:	26a4001c 	addiu	a0,s5,28
    24d8:	87a500f8 	lh	a1,248(sp)
    24dc:	46124282 	mul.s	$f10,$f8,$f18
    24e0:	87a600fa 	lh	a2,250(sp)
    24e4:	46145100 	add.s	$f4,$f10,$f20
    24e8:	4600218d 	trunc.w.s	$f6,$f4
    24ec:	44073000 	mfc1	a3,$f6
    24f0:	00000000 	nop
    24f4:	00073c00 	sll	a3,a3,0x10
    24f8:	0c000000 	jal	0 <func_800B3B50>
    24fc:	00073c03 	sra	a3,a3,0x10
    2500:	8ea20000 	lw	v0,0(s5)
    2504:	24010001 	li	at,1
    2508:	14410022 	bne	v0,at,2594 <func_800B4E7C+0x1268>
    250c:	3c0a0000 	lui	t2,0x0
    2510:	8d4a0000 	lw	t2,0(t2)
    2514:	2410fffe 	li	s0,-2
    2518:	954b0044 	lhu	t3,68(t2)
    251c:	01706827 	nor	t5,t3,s0
    2520:	55a0001d 	bnezl	t5,2598 <func_800B4E7C+0x126c>
    2524:	24010001 	li	at,1
    2528:	8aaf10c6 	lwl	t7,4294(s5)
    252c:	9aaf10c9 	lwr	t7,4297(s5)
    2530:	26f3005c 	addiu	s3,s7,92
    2534:	02602825 	move	a1,s3
    2538:	aaef0134 	swl	t7,308(s7)
    253c:	baef0137 	swr	t7,311(s7)
    2540:	96af10ca 	lhu	t7,4298(s5)
    2544:	02802025 	move	a0,s4
    2548:	0c000000 	jal	0 <func_800B3B50>
    254c:	a6ef0138 	sh	t7,312(s7)
    2550:	8fb8007c 	lw	t8,124(sp)
    2554:	27a600fc 	addiu	a2,sp,252
    2558:	02602025 	move	a0,s3
    255c:	8f090000 	lw	t1,0(t8)
    2560:	02802825 	move	a1,s4
    2564:	ae890000 	sw	t1,0(s4)
    2568:	8f0e0004 	lw	t6,4(t8)
    256c:	ae8e0004 	sw	t6,4(s4)
    2570:	8f090008 	lw	t1,8(t8)
    2574:	ae890008 	sw	t1,8(s4)
    2578:	8e390004 	lw	t9,4(s1)
    257c:	8e2a0000 	lw	t2,0(s1)
    2580:	acd90004 	sw	t9,4(a2)
    2584:	acca0000 	sw	t2,0(a2)
    2588:	0c000000 	jal	0 <func_800B3B50>
    258c:	e7a000fc 	swc1	$f0,252(sp)
    2590:	8ea20000 	lw	v0,0(s5)
    2594:	24010001 	li	at,1
    2598:	1441079f 	bne	v0,at,4418 <func_800B4E7C+0x30ec>
    259c:	2410fffe 	li	s0,-2
    25a0:	3c0b0000 	lui	t3,0x0
    25a4:	8d6b0000 	lw	t3,0(t3)
    25a8:	3c070000 	lui	a3,0x0
    25ac:	2404000c 	li	a0,12
    25b0:	a5720194 	sh	s2,404(t3)
    25b4:	8ce70000 	lw	a3,0(a3)
    25b8:	24050005 	li	a1,5
    25bc:	0c000000 	jal	0 <func_800B3B50>
    25c0:	00003025 	move	a2,zero
    25c4:	3c030000 	lui	v1,0x0
    25c8:	8c630000 	lw	v1,0(v1)
    25cc:	94620044 	lhu	v0,68(v1)
    25d0:	00506827 	nor	t5,v0,s0
    25d4:	15a00008 	bnez	t5,25f8 <func_800B4E7C+0x12cc>
    25d8:	2401ffdf 	li	at,-33
    25dc:	00416027 	nor	t4,v0,at
    25e0:	11800005 	beqz	t4,25f8 <func_800B4E7C+0x12cc>
    25e4:	02a02025 	move	a0,s5
    25e8:	0c000000 	jal	0 <func_800B3B50>
    25ec:	02e02825 	move	a1,s7
    25f0:	10000970 	b	4bb4 <func_800B4E7C+0x3888>
    25f4:	8fbf006c 	lw	ra,108(sp)
    25f8:	94640050 	lhu	a0,80(v1)
    25fc:	00907827 	nor	t7,a0,s0
    2600:	15e0002e 	bnez	t7,26bc <func_800B4E7C+0x1390>
    2604:	2401ffdf 	li	at,-33
    2608:	0041c027 	nor	t8,v0,at
    260c:	1700002b 	bnez	t8,26bc <func_800B4E7C+0x1390>
    2610:	3c070000 	lui	a3,0x0
    2614:	3c0e0000 	lui	t6,0x0
    2618:	24e70000 	addiu	a3,a3,0
    261c:	25ce0000 	addiu	t6,t6,0
    2620:	3c050000 	lui	a1,0x0
    2624:	24a50000 	addiu	a1,a1,0
    2628:	afae0014 	sw	t6,20(sp)
    262c:	afa70010 	sw	a3,16(sp)
    2630:	24044803 	li	a0,18435
    2634:	0c000000 	jal	0 <func_800B3B50>
    2638:	24060004 	li	a2,4
    263c:	3c040000 	lui	a0,0x0
    2640:	0c000000 	jal	0 <func_800B3B50>
    2644:	24840000 	addiu	a0,a0,0
    2648:	3c040000 	lui	a0,0x0
    264c:	24840000 	addiu	a0,a0,0
    2650:	86a50080 	lh	a1,128(s5)
    2654:	0c000000 	jal	0 <func_800B3B50>
    2658:	26a608b0 	addiu	a2,s5,2224
    265c:	3c040000 	lui	a0,0x0
    2660:	24840000 	addiu	a0,a0,0
    2664:	86a50080 	lh	a1,128(s5)
    2668:	0c000000 	jal	0 <func_800B3B50>
    266c:	26a600a0 	addiu	a2,s5,160
    2670:	3c040000 	lui	a0,0x0
    2674:	24840000 	addiu	a0,a0,0
    2678:	0c000000 	jal	0 <func_800B3B50>
    267c:	86a50080 	lh	a1,128(s5)
    2680:	3c040000 	lui	a0,0x0
    2684:	24840000 	addiu	a0,a0,0
    2688:	0c000000 	jal	0 <func_800B3B50>
    268c:	86a5007e 	lh	a1,126(s5)
    2690:	3c040000 	lui	a0,0x0
    2694:	24840000 	addiu	a0,a0,0
    2698:	0c000000 	jal	0 <func_800B3B50>
    269c:	86a5007c 	lh	a1,124(s5)
    26a0:	3c040000 	lui	a0,0x0
    26a4:	0c000000 	jal	0 <func_800B3B50>
    26a8:	24840000 	addiu	a0,a0,0
    26ac:	3c030000 	lui	v1,0x0
    26b0:	8c630000 	lw	v1,0(v1)
    26b4:	10000018 	b	2718 <func_800B4E7C+0x13ec>
    26b8:	94640050 	lhu	a0,80(v1)
    26bc:	2401fffd 	li	at,-3
    26c0:	00814827 	nor	t1,a0,at
    26c4:	15200014 	bnez	t1,2718 <func_800B4E7C+0x13ec>
    26c8:	3c190000 	lui	t9,0x0
    26cc:	3c0a0000 	lui	t2,0x0
    26d0:	254a0000 	addiu	t2,t2,0
    26d4:	27270000 	addiu	a3,t9,0
    26d8:	3c050000 	lui	a1,0x0
    26dc:	24a50000 	addiu	a1,a1,0
    26e0:	afa70010 	sw	a3,16(sp)
    26e4:	afaa0014 	sw	t2,20(sp)
    26e8:	24044809 	li	a0,18441
    26ec:	0c000000 	jal	0 <func_800B3B50>
    26f0:	24060004 	li	a2,4
    26f4:	86ab0084 	lh	t3,132(s5)
    26f8:	24010003 	li	at,3
    26fc:	3c030000 	lui	v1,0x0
    2700:	256d0001 	addiu	t5,t3,1
    2704:	01a1001a 	div	zero,t5,at
    2708:	00006010 	mfhi	t4
    270c:	a6ac0084 	sh	t4,132(s5)
    2710:	8c630000 	lw	v1,0(v1)
    2714:	94640050 	lhu	a0,80(v1)
    2718:	2401fff7 	li	at,-9
    271c:	00811027 	nor	v0,a0,at
    2720:	1440001c 	bnez	v0,2794 <func_800B4E7C+0x1468>
    2724:	00000000 	nop
    2728:	946f0044 	lhu	t7,68(v1)
    272c:	2401ffdf 	li	at,-33
    2730:	01e1c027 	nor	t8,t7,at
    2734:	17000017 	bnez	t8,2794 <func_800B4E7C+0x1468>
    2738:	3c070000 	lui	a3,0x0
    273c:	3c0e0000 	lui	t6,0x0
    2740:	24e70000 	addiu	a3,a3,0
    2744:	25ce0000 	addiu	t6,t6,0
    2748:	3c050000 	lui	a1,0x0
    274c:	24a50000 	addiu	a1,a1,0
    2750:	afae0014 	sw	t6,20(sp)
    2754:	afa70010 	sw	a3,16(sp)
    2758:	24041800 	li	a0,6144
    275c:	0c000000 	jal	0 <func_800B3B50>
    2760:	24060004 	li	a2,4
    2764:	86b00082 	lh	s0,130(s5)
    2768:	1a000003 	blez	s0,2778 <func_800B4E7C+0x144c>
    276c:	2609ffff 	addiu	t1,s0,-1
    2770:	10000004 	b	2784 <func_800B4E7C+0x1458>
    2774:	a6a90082 	sh	t1,130(s5)
    2778:	86b90080 	lh	t9,128(s5)
    277c:	272affff 	addiu	t2,t9,-1
    2780:	a6aa0082 	sh	t2,130(s5)
    2784:	3c030000 	lui	v1,0x0
    2788:	8c630000 	lw	v1,0(v1)
    278c:	10000042 	b	2898 <func_800B4E7C+0x156c>
    2790:	94640050 	lhu	a0,80(v1)
    2794:	14400040 	bnez	v0,2898 <func_800B4E7C+0x156c>
    2798:	3c070000 	lui	a3,0x0
    279c:	3c0b0000 	lui	t3,0x0
    27a0:	24e70000 	addiu	a3,a3,0
    27a4:	256b0000 	addiu	t3,t3,0
    27a8:	3c050000 	lui	a1,0x0
    27ac:	24a50000 	addiu	a1,a1,0
    27b0:	afab0014 	sw	t3,20(sp)
    27b4:	afa70010 	sw	a3,16(sp)
    27b8:	24041800 	li	a0,6144
    27bc:	0c000000 	jal	0 <func_800B3B50>
    27c0:	24060004 	li	a2,4
    27c4:	86b00082 	lh	s0,130(s5)
    27c8:	1a000003 	blez	s0,27d8 <func_800B4E7C+0x14ac>
    27cc:	260dffff 	addiu	t5,s0,-1
    27d0:	10000004 	b	27e4 <func_800B4E7C+0x14b8>
    27d4:	a6ad0082 	sh	t5,130(s5)
    27d8:	86ac0080 	lh	t4,128(s5)
    27dc:	258fffff 	addiu	t7,t4,-1
    27e0:	a6af0082 	sh	t7,130(s5)
    27e4:	86b80084 	lh	t8,132(s5)
    27e8:	24010002 	li	at,2
    27ec:	57010015 	bnel	t8,at,2844 <func_800B4E7C+0x1518>
    27f0:	02a02025 	move	a0,s5
    27f4:	86b00082 	lh	s0,130(s5)
    27f8:	86ae0080 	lh	t6,128(s5)
    27fc:	26090001 	addiu	t1,s0,1
    2800:	11c9000f 	beq	t6,t1,2840 <func_800B4E7C+0x1514>
    2804:	00102c00 	sll	a1,s0,0x10
    2808:	00052c03 	sra	a1,a1,0x10
    280c:	02a02025 	move	a0,s5
    2810:	0c000000 	jal	0 <func_800B3B50>
    2814:	02e03025 	move	a2,s7
    2818:	3c014270 	lui	at,0x4270
    281c:	44814000 	mtc1	at,$f8
    2820:	44805000 	mtc1	zero,$f10
    2824:	a6a0004c 	sh	zero,76(s5)
    2828:	3c030000 	lui	v1,0x0
    282c:	e6a80048 	swc1	$f8,72(s5)
    2830:	e6aa0050 	swc1	$f10,80(s5)
    2834:	8c630000 	lw	v1,0(v1)
    2838:	10000017 	b	2898 <func_800B4E7C+0x156c>
    283c:	94640050 	lhu	a0,80(v1)
    2840:	02a02025 	move	a0,s5
    2844:	86a50082 	lh	a1,130(s5)
    2848:	0c000000 	jal	0 <func_800B3B50>
    284c:	02e03025 	move	a2,s7
    2850:	86b90082 	lh	t9,130(s5)
    2854:	3c013fb4 	lui	at,0x3fb4
    2858:	44815000 	mtc1	at,$f10
    285c:	00195100 	sll	t2,t9,0x4
    2860:	02aa1021 	addu	v0,s5,t2
    2864:	c44408b4 	lwc1	$f4,2228(v0)
    2868:	3c030000 	lui	v1,0x0
    286c:	e6a40048 	swc1	$f4,72(s5)
    2870:	804b08b1 	lb	t3,2225(v0)
    2874:	a6ab004c 	sh	t3,76(s5)
    2878:	86ad004c 	lh	t5,76(s5)
    287c:	448d3000 	mtc1	t5,$f6
    2880:	00000000 	nop
    2884:	46803220 	cvt.s.w	$f8,$f6
    2888:	460a4102 	mul.s	$f4,$f8,$f10
    288c:	e6a40050 	swc1	$f4,80(s5)
    2890:	8c630000 	lw	v1,0(v1)
    2894:	94640050 	lhu	a0,80(v1)
    2898:	946c0044 	lhu	t4,68(v1)
    289c:	2401ffdf 	li	at,-33
    28a0:	01817827 	nor	t7,t4,at
    28a4:	15e00018 	bnez	t7,2908 <func_800B4E7C+0x15dc>
    28a8:	2401fffb 	li	at,-5
    28ac:	0081c027 	nor	t8,a0,at
    28b0:	17000015 	bnez	t8,2908 <func_800B4E7C+0x15dc>
    28b4:	3c070000 	lui	a3,0x0
    28b8:	3c0e0000 	lui	t6,0x0
    28bc:	24e70000 	addiu	a3,a3,0
    28c0:	25ce0000 	addiu	t6,t6,0
    28c4:	3c050000 	lui	a1,0x0
    28c8:	24a50000 	addiu	a1,a1,0
    28cc:	afae0014 	sw	t6,20(sp)
    28d0:	afa70010 	sw	a3,16(sp)
    28d4:	24041800 	li	a0,6144
    28d8:	0c000000 	jal	0 <func_800B3B50>
    28dc:	24060004 	li	a2,4
    28e0:	86a90080 	lh	t1,128(s5)
    28e4:	86b00082 	lh	s0,130(s5)
    28e8:	2539ffff 	addiu	t9,t1,-1
    28ec:	0219082a 	slt	at,s0,t9
    28f0:	10200003 	beqz	at,2900 <func_800B4E7C+0x15d4>
    28f4:	260a0001 	addiu	t2,s0,1
    28f8:	10000041 	b	2a00 <func_800B4E7C+0x16d4>
    28fc:	a6aa0082 	sh	t2,130(s5)
    2900:	1000003f 	b	2a00 <func_800B4E7C+0x16d4>
    2904:	a6a00082 	sh	zero,130(s5)
    2908:	2401fffb 	li	at,-5
    290c:	00815827 	nor	t3,a0,at
    2910:	1560003b 	bnez	t3,2a00 <func_800B4E7C+0x16d4>
    2914:	3c070000 	lui	a3,0x0
    2918:	3c0d0000 	lui	t5,0x0
    291c:	24e70000 	addiu	a3,a3,0
    2920:	25ad0000 	addiu	t5,t5,0
    2924:	3c050000 	lui	a1,0x0
    2928:	24a50000 	addiu	a1,a1,0
    292c:	afad0014 	sw	t5,20(sp)
    2930:	afa70010 	sw	a3,16(sp)
    2934:	24041800 	li	a0,6144
    2938:	0c000000 	jal	0 <func_800B3B50>
    293c:	24060004 	li	a2,4
    2940:	86ac0080 	lh	t4,128(s5)
    2944:	86b00082 	lh	s0,130(s5)
    2948:	258fffff 	addiu	t7,t4,-1
    294c:	020f082a 	slt	at,s0,t7
    2950:	10200003 	beqz	at,2960 <func_800B4E7C+0x1634>
    2954:	26180001 	addiu	t8,s0,1
    2958:	10000002 	b	2964 <func_800B4E7C+0x1638>
    295c:	a6b80082 	sh	t8,130(s5)
    2960:	a6a00082 	sh	zero,130(s5)
    2964:	86ae0084 	lh	t6,132(s5)
    2968:	24010002 	li	at,2
    296c:	55c10012 	bnel	t6,at,29b8 <func_800B4E7C+0x168c>
    2970:	02a02025 	move	a0,s5
    2974:	86b00082 	lh	s0,130(s5)
    2978:	86a90080 	lh	t1,128(s5)
    297c:	26190001 	addiu	t9,s0,1
    2980:	1139000c 	beq	t1,t9,29b4 <func_800B4E7C+0x1688>
    2984:	00102c00 	sll	a1,s0,0x10
    2988:	00052c03 	sra	a1,a1,0x10
    298c:	02a02025 	move	a0,s5
    2990:	0c000000 	jal	0 <func_800B3B50>
    2994:	02e03025 	move	a2,s7
    2998:	3c014270 	lui	at,0x4270
    299c:	44813000 	mtc1	at,$f6
    29a0:	44804000 	mtc1	zero,$f8
    29a4:	a6a0004c 	sh	zero,76(s5)
    29a8:	e6a60048 	swc1	$f6,72(s5)
    29ac:	10000014 	b	2a00 <func_800B4E7C+0x16d4>
    29b0:	e6a80050 	swc1	$f8,80(s5)
    29b4:	02a02025 	move	a0,s5
    29b8:	86a50082 	lh	a1,130(s5)
    29bc:	0c000000 	jal	0 <func_800B3B50>
    29c0:	02e03025 	move	a2,s7
    29c4:	86aa0082 	lh	t2,130(s5)
    29c8:	3c013fb4 	lui	at,0x3fb4
    29cc:	44814000 	mtc1	at,$f8
    29d0:	000a5900 	sll	t3,t2,0x4
    29d4:	02ab1021 	addu	v0,s5,t3
    29d8:	c44a08b4 	lwc1	$f10,2228(v0)
    29dc:	e6aa0048 	swc1	$f10,72(s5)
    29e0:	804d08b1 	lb	t5,2225(v0)
    29e4:	a6ad004c 	sh	t5,76(s5)
    29e8:	86ac004c 	lh	t4,76(s5)
    29ec:	448c2000 	mtc1	t4,$f4
    29f0:	00000000 	nop
    29f4:	468021a0 	cvt.s.w	$f6,$f4
    29f8:	46083282 	mul.s	$f10,$f6,$f8
    29fc:	e6aa0050 	swc1	$f10,80(s5)
    2a00:	86af0084 	lh	t7,132(s5)
    2a04:	55e00004 	bnezl	t7,2a18 <func_800B4E7C+0x16ec>
    2a08:	24100004 	li	s0,4
    2a0c:	10000002 	b	2a18 <func_800B4E7C+0x16ec>
    2a10:	24100007 	li	s0,7
    2a14:	24100004 	li	s0,4
    2a18:	3c070000 	lui	a3,0x0
    2a1c:	24e70000 	addiu	a3,a3,0
    2a20:	2404000a 	li	a0,10
    2a24:	24050006 	li	a1,6
    2a28:	0c000000 	jal	0 <func_800B3B50>
    2a2c:	320600ff 	andi	a2,s0,0xff
    2a30:	86b80084 	lh	t8,132(s5)
    2a34:	24010001 	li	at,1
    2a38:	57010004 	bnel	t8,at,2a4c <func_800B4E7C+0x1720>
    2a3c:	24100004 	li	s0,4
    2a40:	10000002 	b	2a4c <func_800B4E7C+0x1720>
    2a44:	24100007 	li	s0,7
    2a48:	24100004 	li	s0,4
    2a4c:	3c070000 	lui	a3,0x0
    2a50:	24e70000 	addiu	a3,a3,0
    2a54:	24040011 	li	a0,17
    2a58:	24050006 	li	a1,6
    2a5c:	0c000000 	jal	0 <func_800B3B50>
    2a60:	320600ff 	andi	a2,s0,0xff
    2a64:	86ae0084 	lh	t6,132(s5)
    2a68:	24010002 	li	at,2
    2a6c:	55c10004 	bnel	t6,at,2a80 <func_800B4E7C+0x1754>
    2a70:	24100004 	li	s0,4
    2a74:	10000002 	b	2a80 <func_800B4E7C+0x1754>
    2a78:	24100007 	li	s0,7
    2a7c:	24100004 	li	s0,4
    2a80:	3c070000 	lui	a3,0x0
    2a84:	24e70000 	addiu	a3,a3,0
    2a88:	24040017 	li	a0,23
    2a8c:	24050006 	li	a1,6
    2a90:	0c000000 	jal	0 <func_800B3B50>
    2a94:	320600ff 	andi	a2,s0,0xff
    2a98:	86b00082 	lh	s0,130(s5)
    2a9c:	24010080 	li	at,128
    2aa0:	5601000a 	bnel	s0,at,2acc <func_800B4E7C+0x17a0>
    2aa4:	86a30080 	lh	v1,128(s5)
    2aa8:	3c070000 	lui	a3,0x0
    2aac:	8ce70000 	lw	a3,0(a3)
    2ab0:	24040010 	li	a0,16
    2ab4:	2405001a 	li	a1,26
    2ab8:	0c000000 	jal	0 <func_800B3B50>
    2abc:	24060001 	li	a2,1
    2ac0:	10000073 	b	2c90 <func_800B4E7C+0x1964>
    2ac4:	86b00084 	lh	s0,132(s5)
    2ac8:	86a30080 	lh	v1,128(s5)
    2acc:	26090001 	addiu	t1,s0,1
    2ad0:	14690027 	bne	v1,t1,2b70 <func_800B4E7C+0x1844>
    2ad4:	2402000a 	li	v0,10
    2ad8:	0062001a 	div	zero,v1,v0
    2adc:	3c080000 	lui	t0,0x0
    2ae0:	25080000 	addiu	t0,t0,0
    2ae4:	8d0b001c 	lw	t3,28(t0)
    2ae8:	0000c812 	mflo	t9
    2aec:	272a0030 	addiu	t2,t9,48
    2af0:	a16a000a 	sb	t2,10(t3)
    2af4:	86ad0080 	lh	t5,128(s5)
    2af8:	14400002 	bnez	v0,2b04 <func_800B4E7C+0x17d8>
    2afc:	00000000 	nop
    2b00:	0007000d 	break	0x7
    2b04:	2401ffff 	li	at,-1
    2b08:	14410004 	bne	v0,at,2b1c <func_800B4E7C+0x17f0>
    2b0c:	3c018000 	lui	at,0x8000
    2b10:	14610002 	bne	v1,at,2b1c <func_800B4E7C+0x17f0>
    2b14:	00000000 	nop
    2b18:	0006000d 	break	0x6
    2b1c:	01a2001a 	div	zero,t5,v0
    2b20:	8d18001c 	lw	t8,28(t0)
    2b24:	00006010 	mfhi	t4
    2b28:	258f0030 	addiu	t7,t4,48
    2b2c:	14400002 	bnez	v0,2b38 <func_800B4E7C+0x180c>
    2b30:	00000000 	nop
    2b34:	0007000d 	break	0x7
    2b38:	2401ffff 	li	at,-1
    2b3c:	14410004 	bne	v0,at,2b50 <func_800B4E7C+0x1824>
    2b40:	3c018000 	lui	at,0x8000
    2b44:	15a10002 	bne	t5,at,2b50 <func_800B4E7C+0x1824>
    2b48:	00000000 	nop
    2b4c:	0006000d 	break	0x6
    2b50:	a30f000b 	sb	t7,11(t8)
    2b54:	8d07001c 	lw	a3,28(t0)
    2b58:	2404000f 	li	a0,15
    2b5c:	2405001a 	li	a1,26
    2b60:	0c000000 	jal	0 <func_800B3B50>
    2b64:	24060001 	li	a2,1
    2b68:	10000049 	b	2c90 <func_800B4E7C+0x1964>
    2b6c:	86b00084 	lh	s0,132(s5)
    2b70:	2402000a 	li	v0,10
    2b74:	260e0001 	addiu	t6,s0,1
    2b78:	01c2001a 	div	zero,t6,v0
    2b7c:	3c030000 	lui	v1,0x0
    2b80:	24630000 	addiu	v1,v1,0
    2b84:	8c6a0020 	lw	t2,32(v1)
    2b88:	00004812 	mflo	t1
    2b8c:	25390030 	addiu	t9,t1,48
    2b90:	a159000a 	sb	t9,10(t2)
    2b94:	86ab0082 	lh	t3,130(s5)
    2b98:	8c780020 	lw	t8,32(v1)
    2b9c:	14400002 	bnez	v0,2ba8 <func_800B4E7C+0x187c>
    2ba0:	00000000 	nop
    2ba4:	0007000d 	break	0x7
    2ba8:	2401ffff 	li	at,-1
    2bac:	14410004 	bne	v0,at,2bc0 <func_800B4E7C+0x1894>
    2bb0:	3c018000 	lui	at,0x8000
    2bb4:	15c10002 	bne	t6,at,2bc0 <func_800B4E7C+0x1894>
    2bb8:	00000000 	nop
    2bbc:	0006000d 	break	0x6
    2bc0:	256d0001 	addiu	t5,t3,1
    2bc4:	01a2001a 	div	zero,t5,v0
    2bc8:	00006010 	mfhi	t4
    2bcc:	258f0030 	addiu	t7,t4,48
    2bd0:	a30f000b 	sb	t7,11(t8)
    2bd4:	86ae0080 	lh	t6,128(s5)
    2bd8:	8c6b0020 	lw	t3,32(v1)
    2bdc:	14400002 	bnez	v0,2be8 <func_800B4E7C+0x18bc>
    2be0:	00000000 	nop
    2be4:	0007000d 	break	0x7
    2be8:	2401ffff 	li	at,-1
    2bec:	14410004 	bne	v0,at,2c00 <func_800B4E7C+0x18d4>
    2bf0:	3c018000 	lui	at,0x8000
    2bf4:	15a10002 	bne	t5,at,2c00 <func_800B4E7C+0x18d4>
    2bf8:	00000000 	nop
    2bfc:	0006000d 	break	0x6
    2c00:	25c9ffff 	addiu	t1,t6,-1
    2c04:	0122001a 	div	zero,t1,v0
    2c08:	0000c812 	mflo	t9
    2c0c:	272a0030 	addiu	t2,t9,48
    2c10:	a16a000d 	sb	t2,13(t3)
    2c14:	86ad0080 	lh	t5,128(s5)
    2c18:	14400002 	bnez	v0,2c24 <func_800B4E7C+0x18f8>
    2c1c:	00000000 	nop
    2c20:	0007000d 	break	0x7
    2c24:	2401ffff 	li	at,-1
    2c28:	14410004 	bne	v0,at,2c3c <func_800B4E7C+0x1910>
    2c2c:	3c018000 	lui	at,0x8000
    2c30:	15210002 	bne	t1,at,2c3c <func_800B4E7C+0x1910>
    2c34:	00000000 	nop
    2c38:	0006000d 	break	0x6
    2c3c:	25acffff 	addiu	t4,t5,-1
    2c40:	0182001a 	div	zero,t4,v0
    2c44:	8c6e0020 	lw	t6,32(v1)
    2c48:	00007810 	mfhi	t7
    2c4c:	25f80030 	addiu	t8,t7,48
    2c50:	14400002 	bnez	v0,2c5c <func_800B4E7C+0x1930>
    2c54:	00000000 	nop
    2c58:	0007000d 	break	0x7
    2c5c:	2401ffff 	li	at,-1
    2c60:	14410004 	bne	v0,at,2c74 <func_800B4E7C+0x1948>
    2c64:	3c018000 	lui	at,0x8000
    2c68:	15810002 	bne	t4,at,2c74 <func_800B4E7C+0x1948>
    2c6c:	00000000 	nop
    2c70:	0006000d 	break	0x6
    2c74:	a1d8000e 	sb	t8,14(t6)
    2c78:	8c670020 	lw	a3,32(v1)
    2c7c:	2404000f 	li	a0,15
    2c80:	2405001a 	li	a1,26
    2c84:	0c000000 	jal	0 <func_800B3B50>
    2c88:	24060001 	li	a2,1
    2c8c:	86b00084 	lh	s0,132(s5)
    2c90:	1200000b 	beqz	s0,2cc0 <func_800B4E7C+0x1994>
    2c94:	24010001 	li	at,1
    2c98:	12010097 	beq	s0,at,2ef8 <func_800B4E7C+0x1bcc>
    2c9c:	24010002 	li	at,2
    2ca0:	12010003 	beq	s0,at,2cb0 <func_800B4E7C+0x1984>
    2ca4:	27b20110 	addiu	s2,sp,272
    2ca8:	10000377 	b	3a88 <func_800B4E7C+0x275c>
    2cac:	27b10111 	addiu	s1,sp,273
    2cb0:	aea0003c 	sw	zero,60(s5)
    2cb4:	27b20110 	addiu	s2,sp,272
    2cb8:	10000373 	b	3a88 <func_800B4E7C+0x275c>
    2cbc:	27b10111 	addiu	s1,sp,273
    2cc0:	86a9007c 	lh	t1,124(s5)
    2cc4:	24010001 	li	at,1
    2cc8:	aea0003c 	sw	zero,60(s5)
    2ccc:	1121004a 	beq	t1,at,2df8 <func_800B4E7C+0x1acc>
    2cd0:	3c190000 	lui	t9,0x0
    2cd4:	8f390000 	lw	t9,0(t9)
    2cd8:	17200003 	bnez	t9,2ce8 <func_800B4E7C+0x19bc>
    2cdc:	3c100000 	lui	s0,0x0
    2ce0:	10000003 	b	2cf0 <func_800B4E7C+0x19c4>
    2ce4:	8e100000 	lw	s0,0(s0)
    2ce8:	3c100000 	lui	s0,0x0
    2cec:	8e100000 	lw	s0,0(s0)
    2cf0:	2404000d 	li	a0,13
    2cf4:	24050018 	li	a1,24
    2cf8:	24060003 	li	a2,3
    2cfc:	0c000000 	jal	0 <func_800B3B50>
    2d00:	02003825 	move	a3,s0
    2d04:	87aa0108 	lh	t2,264(sp)
    2d08:	3c010000 	lui	at,0x0
    2d0c:	c4280000 	lwc1	$f8,0(at)
    2d10:	448a2000 	mtc1	t2,$f4
    2d14:	3c050000 	lui	a1,0x0
    2d18:	24a50000 	addiu	a1,a1,0
    2d1c:	468021a0 	cvt.s.w	$f6,$f4
    2d20:	24060004 	li	a2,4
    2d24:	46083282 	mul.s	$f10,$f6,$f8
    2d28:	4600510d 	trunc.w.s	$f4,$f10
    2d2c:	44042000 	mfc1	a0,$f4
    2d30:	00000000 	nop
    2d34:	00042400 	sll	a0,a0,0x10
    2d38:	0c000000 	jal	0 <func_800B3B50>
    2d3c:	00042403 	sra	a0,a0,0x10
    2d40:	3c070000 	lui	a3,0x0
    2d44:	24e70000 	addiu	a3,a3,0
    2d48:	2404000f 	li	a0,15
    2d4c:	24050017 	li	a1,23
    2d50:	0c000000 	jal	0 <func_800B3B50>
    2d54:	24060003 	li	a2,3
    2d58:	87ad010a 	lh	t5,266(sp)
    2d5c:	3c010000 	lui	at,0x0
    2d60:	c42a0000 	lwc1	$f10,0(at)
    2d64:	448d3000 	mtc1	t5,$f6
    2d68:	3c050000 	lui	a1,0x0
    2d6c:	24a50000 	addiu	a1,a1,0
    2d70:	46803220 	cvt.s.w	$f8,$f6
    2d74:	24060004 	li	a2,4
    2d78:	460a4102 	mul.s	$f4,$f8,$f10
    2d7c:	4600218d 	trunc.w.s	$f6,$f4
    2d80:	44043000 	mfc1	a0,$f6
    2d84:	00000000 	nop
    2d88:	00042400 	sll	a0,a0,0x10
    2d8c:	0c000000 	jal	0 <func_800B3B50>
    2d90:	00042403 	sra	a0,a0,0x10
    2d94:	3c070000 	lui	a3,0x0
    2d98:	24e70000 	addiu	a3,a3,0
    2d9c:	2404000f 	li	a0,15
    2da0:	24050018 	li	a1,24
    2da4:	0c000000 	jal	0 <func_800B3B50>
    2da8:	24060003 	li	a2,3
    2dac:	c7a00104 	lwc1	$f0,260(sp)
    2db0:	3c050000 	lui	a1,0x0
    2db4:	24a50000 	addiu	a1,a1,0
    2db8:	4600020d 	trunc.w.s	$f8,$f0
    2dbc:	24060006 	li	a2,6
    2dc0:	44044000 	mfc1	a0,$f8
    2dc4:	00000000 	nop
    2dc8:	00042400 	sll	a0,a0,0x10
    2dcc:	0c000000 	jal	0 <func_800B3B50>
    2dd0:	00042403 	sra	a0,a0,0x10
    2dd4:	3c070000 	lui	a3,0x0
    2dd8:	24e70000 	addiu	a3,a3,0
    2ddc:	2404000f 	li	a0,15
    2de0:	24050019 	li	a1,25
    2de4:	0c000000 	jal	0 <func_800B3B50>
    2de8:	24060003 	li	a2,3
    2dec:	27b20110 	addiu	s2,sp,272
    2df0:	10000325 	b	3a88 <func_800B4E7C+0x275c>
    2df4:	27b10111 	addiu	s1,sp,273
    2df8:	3c070000 	lui	a3,0x0
    2dfc:	8ce70000 	lw	a3,0(a3)
    2e00:	2404000e 	li	a0,14
    2e04:	24050018 	li	a1,24
    2e08:	0c000000 	jal	0 <func_800B3B50>
    2e0c:	24060003 	li	a2,3
    2e10:	3c070000 	lui	a3,0x0
    2e14:	8ce70000 	lw	a3,0(a3)
    2e18:	24040010 	li	a0,16
    2e1c:	24050016 	li	a1,22
    2e20:	0c000000 	jal	0 <func_800B3B50>
    2e24:	24060003 	li	a2,3
    2e28:	24180058 	li	t8,88
    2e2c:	a3b80110 	sb	t8,272(sp)
    2e30:	c6ca0000 	lwc1	$f10,0(s6)
    2e34:	27b10111 	addiu	s1,sp,273
    2e38:	02202825 	move	a1,s1
    2e3c:	4600510d 	trunc.w.s	$f4,$f10
    2e40:	24060007 	li	a2,7
    2e44:	44042000 	mfc1	a0,$f4
    2e48:	00000000 	nop
    2e4c:	00042400 	sll	a0,a0,0x10
    2e50:	0c000000 	jal	0 <func_800B3B50>
    2e54:	00042403 	sra	a0,a0,0x10
    2e58:	27b20110 	addiu	s2,sp,272
    2e5c:	02403825 	move	a3,s2
    2e60:	24040010 	li	a0,16
    2e64:	24050017 	li	a1,23
    2e68:	0c000000 	jal	0 <func_800B3B50>
    2e6c:	24060003 	li	a2,3
    2e70:	24090059 	li	t1,89
    2e74:	a3a90110 	sb	t1,272(sp)
    2e78:	c6c60004 	lwc1	$f6,4(s6)
    2e7c:	02202825 	move	a1,s1
    2e80:	24060007 	li	a2,7
    2e84:	4600320d 	trunc.w.s	$f8,$f6
    2e88:	44044000 	mfc1	a0,$f8
    2e8c:	00000000 	nop
    2e90:	00042400 	sll	a0,a0,0x10
    2e94:	0c000000 	jal	0 <func_800B3B50>
    2e98:	00042403 	sra	a0,a0,0x10
    2e9c:	24040010 	li	a0,16
    2ea0:	24050018 	li	a1,24
    2ea4:	24060003 	li	a2,3
    2ea8:	0c000000 	jal	0 <func_800B3B50>
    2eac:	02403825 	move	a3,s2
    2eb0:	240a005a 	li	t2,90
    2eb4:	a3aa0110 	sb	t2,272(sp)
    2eb8:	c6ca0008 	lwc1	$f10,8(s6)
    2ebc:	02202825 	move	a1,s1
    2ec0:	24060007 	li	a2,7
    2ec4:	4600510d 	trunc.w.s	$f4,$f10
    2ec8:	44042000 	mfc1	a0,$f4
    2ecc:	00000000 	nop
    2ed0:	00042400 	sll	a0,a0,0x10
    2ed4:	0c000000 	jal	0 <func_800B3B50>
    2ed8:	00042403 	sra	a0,a0,0x10
    2edc:	24040010 	li	a0,16
    2ee0:	24050019 	li	a1,25
    2ee4:	24060003 	li	a2,3
    2ee8:	0c000000 	jal	0 <func_800B3B50>
    2eec:	02403825 	move	a3,s2
    2ef0:	100002e6 	b	3a8c <func_800B4E7C+0x2760>
    2ef4:	86b9007c 	lh	t9,124(s5)
    2ef8:	240d0001 	li	t5,1
    2efc:	aead003c 	sw	t5,60(s5)
    2f00:	3c030000 	lui	v1,0x0
    2f04:	8c630000 	lw	v1,0(v1)
    2f08:	2401f7ff 	li	at,-2049
    2f0c:	94640050 	lhu	a0,80(v1)
    2f10:	00816027 	nor	t4,a0,at
    2f14:	5580001a 	bnezl	t4,2f80 <func_800B4E7C+0x1c54>
    2f18:	2401fbff 	li	at,-1025
    2f1c:	3c070000 	lui	a3,0x0
    2f20:	3c0f0000 	lui	t7,0x0
    2f24:	24e70000 	addiu	a3,a3,0
    2f28:	25ef0000 	addiu	t7,t7,0
    2f2c:	3c050000 	lui	a1,0x0
    2f30:	24a50000 	addiu	a1,a1,0
    2f34:	afaf0014 	sw	t7,20(sp)
    2f38:	afa70010 	sw	a3,16(sp)
    2f3c:	2404480c 	li	a0,18444
    2f40:	0c000000 	jal	0 <func_800B3B50>
    2f44:	24060004 	li	a2,4
    2f48:	86a20086 	lh	v0,134(s5)
    2f4c:	14400006 	bnez	v0,2f68 <func_800B4E7C+0x1c3c>
    2f50:	24180005 	li	t8,5
    2f54:	a6b80086 	sh	t8,134(s5)
    2f58:	3c030000 	lui	v1,0x0
    2f5c:	8c630000 	lw	v1,0(v1)
    2f60:	10000006 	b	2f7c <func_800B4E7C+0x1c50>
    2f64:	94640050 	lhu	a0,80(v1)
    2f68:	244effff 	addiu	t6,v0,-1
    2f6c:	a6ae0086 	sh	t6,134(s5)
    2f70:	3c030000 	lui	v1,0x0
    2f74:	8c630000 	lw	v1,0(v1)
    2f78:	94640050 	lhu	a0,80(v1)
    2f7c:	2401fbff 	li	at,-1025
    2f80:	00814827 	nor	t1,a0,at
    2f84:	5520001b 	bnezl	t1,2ff4 <func_800B4E7C+0x1cc8>
    2f88:	2401fdff 	li	at,-513
    2f8c:	3c070000 	lui	a3,0x0
    2f90:	3c190000 	lui	t9,0x0
    2f94:	24e70000 	addiu	a3,a3,0
    2f98:	27390000 	addiu	t9,t9,0
    2f9c:	3c050000 	lui	a1,0x0
    2fa0:	24a50000 	addiu	a1,a1,0
    2fa4:	afb90014 	sw	t9,20(sp)
    2fa8:	afa70010 	sw	a3,16(sp)
    2fac:	2404480c 	li	a0,18444
    2fb0:	0c000000 	jal	0 <func_800B3B50>
    2fb4:	24060004 	li	a2,4
    2fb8:	86a20086 	lh	v0,134(s5)
    2fbc:	24010005 	li	at,5
    2fc0:	54410007 	bnel	v0,at,2fe0 <func_800B4E7C+0x1cb4>
    2fc4:	244a0001 	addiu	t2,v0,1
    2fc8:	a6a00086 	sh	zero,134(s5)
    2fcc:	3c030000 	lui	v1,0x0
    2fd0:	8c630000 	lw	v1,0(v1)
    2fd4:	10000006 	b	2ff0 <func_800B4E7C+0x1cc4>
    2fd8:	94640050 	lhu	a0,80(v1)
    2fdc:	244a0001 	addiu	t2,v0,1
    2fe0:	a6aa0086 	sh	t2,134(s5)
    2fe4:	3c030000 	lui	v1,0x0
    2fe8:	8c630000 	lw	v1,0(v1)
    2fec:	94640050 	lhu	a0,80(v1)
    2ff0:	2401fdff 	li	at,-513
    2ff4:	00815827 	nor	t3,a0,at
    2ff8:	556000a5 	bnezl	t3,3290 <func_800B4E7C+0x1f64>
    2ffc:	946e0044 	lhu	t6,68(v1)
    3000:	3c070000 	lui	a3,0x0
    3004:	3c0d0000 	lui	t5,0x0
    3008:	24e70000 	addiu	a3,a3,0
    300c:	25ad0000 	addiu	t5,t5,0
    3010:	3c050000 	lui	a1,0x0
    3014:	24a50000 	addiu	a1,a1,0
    3018:	afad0014 	sw	t5,20(sp)
    301c:	afa70010 	sw	a3,16(sp)
    3020:	2404480c 	li	a0,18444
    3024:	0c000000 	jal	0 <func_800B3B50>
    3028:	24060004 	li	a2,4
    302c:	86b00086 	lh	s0,134(s5)
    3030:	24010001 	li	at,1
    3034:	12010009 	beq	s0,at,305c <func_800B4E7C+0x1d30>
    3038:	24010002 	li	at,2
    303c:	1201006c 	beq	s0,at,31f0 <func_800B4E7C+0x1ec4>
    3040:	24010003 	li	at,3
    3044:	1201001c 	beq	s0,at,30b8 <func_800B4E7C+0x1d8c>
    3048:	24010004 	li	at,4
    304c:	12010064 	beq	s0,at,31e0 <func_800B4E7C+0x1eb4>
    3050:	3c030000 	lui	v1,0x0
    3054:	1000008d 	b	328c <func_800B4E7C+0x1f60>
    3058:	8c630000 	lw	v1,0(v1)
    305c:	3c0c0000 	lui	t4,0x0
    3060:	8d8c0000 	lw	t4,0(t4)
    3064:	2401ffdf 	li	at,-33
    3068:	958f0044 	lhu	t7,68(t4)
    306c:	01e1c027 	nor	t8,t7,at
    3070:	57000009 	bnezl	t8,3098 <func_800B4E7C+0x1d6c>
    3074:	86ab0082 	lh	t3,130(s5)
    3078:	86ae0082 	lh	t6,130(s5)
    307c:	000e4900 	sll	t1,t6,0x4
    3080:	02a91021 	addu	v0,s5,t1
    3084:	945908b2 	lhu	t9,2226(v0)
    3088:	272afffb 	addiu	t2,t9,-5
    308c:	10000007 	b	30ac <func_800B4E7C+0x1d80>
    3090:	a44a08b2 	sh	t2,2226(v0)
    3094:	86ab0082 	lh	t3,130(s5)
    3098:	000b6900 	sll	t5,t3,0x4
    309c:	02ad1021 	addu	v0,s5,t5
    30a0:	944c08b2 	lhu	t4,2226(v0)
    30a4:	258fffff 	addiu	t7,t4,-1
    30a8:	a44f08b2 	sh	t7,2226(v0)
    30ac:	3c030000 	lui	v1,0x0
    30b0:	10000076 	b	328c <func_800B4E7C+0x1f60>
    30b4:	8c630000 	lw	v1,0(v1)
    30b8:	86b8007c 	lh	t8,124(s5)
    30bc:	2401ffff 	li	at,-1
    30c0:	270effff 	addiu	t6,t8,-1
    30c4:	a6ae007c 	sh	t6,124(s5)
    30c8:	86a2007c 	lh	v0,124(s5)
    30cc:	14410003 	bne	v0,at,30dc <func_800B4E7C+0x1db0>
    30d0:	24090002 	li	t1,2
    30d4:	a6a9007c 	sh	t1,124(s5)
    30d8:	86a2007c 	lh	v0,124(s5)
    30dc:	24010001 	li	at,1
    30e0:	54410021 	bnel	v0,at,3168 <func_800B4E7C+0x1e3c>
    30e4:	86ad0080 	lh	t5,128(s5)
    30e8:	86aa0080 	lh	t2,128(s5)
    30ec:	24190002 	li	t9,2
    30f0:	a6b90078 	sh	t9,120(s5)
    30f4:	19400019 	blez	t2,315c <func_800B4E7C+0x1e30>
    30f8:	00009025 	move	s2,zero
    30fc:	02a09825 	move	s3,s5
    3100:	26b008b8 	addiu	s0,s5,2232
    3104:	26b100a8 	addiu	s1,s5,168
    3108:	27b400d8 	addiu	s4,sp,216
    310c:	02002025 	move	a0,s0
    3110:	0c000000 	jal	0 <func_800B3B50>
    3114:	02802825 	move	a1,s4
    3118:	02c02025 	move	a0,s6
    311c:	02802825 	move	a1,s4
    3120:	0c000000 	jal	0 <func_800B3B50>
    3124:	02003025 	move	a2,s0
    3128:	02202025 	move	a0,s1
    312c:	0c000000 	jal	0 <func_800B3B50>
    3130:	02802825 	move	a1,s4
    3134:	02c02025 	move	a0,s6
    3138:	02802825 	move	a1,s4
    313c:	0c000000 	jal	0 <func_800B3B50>
    3140:	02203025 	move	a2,s1
    3144:	86ab0080 	lh	t3,128(s5)
    3148:	26520001 	addiu	s2,s2,1
    314c:	26100010 	addiu	s0,s0,16
    3150:	024b082a 	slt	at,s2,t3
    3154:	1420ffed 	bnez	at,310c <func_800B4E7C+0x1de0>
    3158:	26310010 	addiu	s1,s1,16
    315c:	1000001d 	b	31d4 <func_800B4E7C+0x1ea8>
    3160:	00000000 	nop
    3164:	86ad0080 	lh	t5,128(s5)
    3168:	00009025 	move	s2,zero
    316c:	19a00019 	blez	t5,31d4 <func_800B4E7C+0x1ea8>
    3170:	00000000 	nop
    3174:	02a09825 	move	s3,s5
    3178:	26b008b8 	addiu	s0,s5,2232
    317c:	26b100a8 	addiu	s1,s5,168
    3180:	27b400d8 	addiu	s4,sp,216
    3184:	02c02025 	move	a0,s6
    3188:	02002825 	move	a1,s0
    318c:	0c000000 	jal	0 <func_800B3B50>
    3190:	02803025 	move	a2,s4
    3194:	02802025 	move	a0,s4
    3198:	0c000000 	jal	0 <func_800B3B50>
    319c:	02002825 	move	a1,s0
    31a0:	02c02025 	move	a0,s6
    31a4:	02202825 	move	a1,s1
    31a8:	0c000000 	jal	0 <func_800B3B50>
    31ac:	02803025 	move	a2,s4
    31b0:	02802025 	move	a0,s4
    31b4:	0c000000 	jal	0 <func_800B3B50>
    31b8:	02202825 	move	a1,s1
    31bc:	86ac0080 	lh	t4,128(s5)
    31c0:	26520001 	addiu	s2,s2,1
    31c4:	26100010 	addiu	s0,s0,16
    31c8:	024c082a 	slt	at,s2,t4
    31cc:	1420ffed 	bnez	at,3184 <func_800B4E7C+0x1e58>
    31d0:	26310010 	addiu	s1,s1,16
    31d4:	3c030000 	lui	v1,0x0
    31d8:	1000002c 	b	328c <func_800B4E7C+0x1f60>
    31dc:	8c630000 	lw	v1,0(v1)
    31e0:	aea00088 	sw	zero,136(s5)
    31e4:	3c030000 	lui	v1,0x0
    31e8:	10000028 	b	328c <func_800B4E7C+0x1f60>
    31ec:	8c630000 	lw	v1,0(v1)
    31f0:	3c0f0000 	lui	t7,0x0
    31f4:	8def0000 	lw	t7,0(t7)
    31f8:	2401ffdf 	li	at,-33
    31fc:	95f80044 	lhu	t8,68(t7)
    3200:	03017027 	nor	t6,t8,at
    3204:	55c0000e 	bnezl	t6,3240 <func_800B4E7C+0x1f14>
    3208:	86ae0082 	lh	t6,130(s5)
    320c:	86a90082 	lh	t1,130(s5)
    3210:	0009c900 	sll	t9,t1,0x4
    3214:	02b91021 	addu	v0,s5,t9
    3218:	804a08b1 	lb	t2,2225(v0)
    321c:	254bfffb 	addiu	t3,t2,-5
    3220:	a04b08b1 	sb	t3,2225(v0)
    3224:	86ad0082 	lh	t5,130(s5)
    3228:	000d6100 	sll	t4,t5,0x4
    322c:	02ac7821 	addu	t7,s5,t4
    3230:	81f808b1 	lb	t8,2225(t7)
    3234:	1000000c 	b	3268 <func_800B4E7C+0x1f3c>
    3238:	a6b8004c 	sh	t8,76(s5)
    323c:	86ae0082 	lh	t6,130(s5)
    3240:	000e4900 	sll	t1,t6,0x4
    3244:	02a91021 	addu	v0,s5,t1
    3248:	805908b1 	lb	t9,2225(v0)
    324c:	272affff 	addiu	t2,t9,-1
    3250:	a04a08b1 	sb	t2,2225(v0)
    3254:	86ab0082 	lh	t3,130(s5)
    3258:	000b6900 	sll	t5,t3,0x4
    325c:	02ad6021 	addu	t4,s5,t5
    3260:	818f08b1 	lb	t7,2225(t4)
    3264:	a6af004c 	sh	t7,76(s5)
    3268:	86b8004c 	lh	t8,76(s5)
    326c:	3c013fb4 	lui	at,0x3fb4
    3270:	44815000 	mtc1	at,$f10
    3274:	44983000 	mtc1	t8,$f6
    3278:	3c030000 	lui	v1,0x0
    327c:	46803220 	cvt.s.w	$f8,$f6
    3280:	460a4102 	mul.s	$f4,$f8,$f10
    3284:	e6a40050 	swc1	$f4,80(s5)
    3288:	8c630000 	lw	v1,0(v1)
    328c:	946e0044 	lhu	t6,68(v1)
    3290:	2401fdff 	li	at,-513
    3294:	27b400d8 	addiu	s4,sp,216
    3298:	01c14827 	nor	t1,t6,at
    329c:	15200079 	bnez	t1,3484 <func_800B4E7C+0x2158>
    32a0:	3c190000 	lui	t9,0x0
    32a4:	8f390000 	lw	t9,0(t9)
    32a8:	24010005 	li	at,5
    32ac:	0321001a 	div	zero,t9,at
    32b0:	00008010 	mfhi	s0
    32b4:	2e100001 	sltiu	s0,s0,1
    32b8:	3c010000 	lui	at,0x0
    32bc:	272a0001 	addiu	t2,t9,1
    32c0:	1200000e 	beqz	s0,32fc <func_800B4E7C+0x1fd0>
    32c4:	ac2a0000 	sw	t2,0(at)
    32c8:	3c070000 	lui	a3,0x0
    32cc:	3c0b0000 	lui	t3,0x0
    32d0:	24e70000 	addiu	a3,a3,0
    32d4:	256b0000 	addiu	t3,t3,0
    32d8:	3c050000 	lui	a1,0x0
    32dc:	24a50000 	addiu	a1,a1,0
    32e0:	afab0014 	sw	t3,20(sp)
    32e4:	afa70010 	sw	a3,16(sp)
    32e8:	2404480c 	li	a0,18444
    32ec:	0c000000 	jal	0 <func_800B3B50>
    32f0:	24060004 	li	a2,4
    32f4:	3c030000 	lui	v1,0x0
    32f8:	8c630000 	lw	v1,0(v1)
    32fc:	86b00086 	lh	s0,134(s5)
    3300:	12000005 	beqz	s0,3318 <func_800B4E7C+0x1fec>
    3304:	24010005 	li	at,5
    3308:	52010027 	beql	s0,at,33a8 <func_800B4E7C+0x207c>
    330c:	94780044 	lhu	t8,68(v1)
    3310:	1000005d 	b	3488 <func_800B4E7C+0x215c>
    3314:	946c0050 	lhu	t4,80(v1)
    3318:	946d0044 	lhu	t5,68(v1)
    331c:	2401ffdf 	li	at,-33
    3320:	01a16027 	nor	t4,t5,at
    3324:	55800010 	bnezl	t4,3368 <func_800B4E7C+0x203c>
    3328:	86aa0082 	lh	t2,130(s5)
    332c:	86af0082 	lh	t7,130(s5)
    3330:	3c013f80 	lui	at,0x3f80
    3334:	44814000 	mtc1	at,$f8
    3338:	000fc100 	sll	t8,t7,0x4
    333c:	02b81021 	addu	v0,s5,t8
    3340:	c44608b4 	lwc1	$f6,2228(v0)
    3344:	46083281 	sub.s	$f10,$f6,$f8
    3348:	e44a08b4 	swc1	$f10,2228(v0)
    334c:	86ae0082 	lh	t6,130(s5)
    3350:	000e4900 	sll	t1,t6,0x4
    3354:	02a9c821 	addu	t9,s5,t1
    3358:	c72408b4 	lwc1	$f4,2228(t9)
    335c:	1000000e 	b	3398 <func_800B4E7C+0x206c>
    3360:	e6a40048 	swc1	$f4,72(s5)
    3364:	86aa0082 	lh	t2,130(s5)
    3368:	3c010000 	lui	at,0x0
    336c:	c4280000 	lwc1	$f8,0(at)
    3370:	000a5900 	sll	t3,t2,0x4
    3374:	02ab1021 	addu	v0,s5,t3
    3378:	c44608b4 	lwc1	$f6,2228(v0)
    337c:	46083281 	sub.s	$f10,$f6,$f8
    3380:	e44a08b4 	swc1	$f10,2228(v0)
    3384:	86ad0082 	lh	t5,130(s5)
    3388:	000d6100 	sll	t4,t5,0x4
    338c:	02ac7821 	addu	t7,s5,t4
    3390:	c5e408b4 	lwc1	$f4,2228(t7)
    3394:	e6a40048 	swc1	$f4,72(s5)
    3398:	3c030000 	lui	v1,0x0
    339c:	10000039 	b	3484 <func_800B4E7C+0x2158>
    33a0:	8c630000 	lw	v1,0(v1)
    33a4:	94780044 	lhu	t8,68(v1)
    33a8:	2401ffdf 	li	at,-33
    33ac:	03017027 	nor	t6,t8,at
    33b0:	55c00006 	bnezl	t6,33cc <func_800B4E7C+0x20a0>
    33b4:	86aa007e 	lh	t2,126(s5)
    33b8:	86a9007e 	lh	t1,126(s5)
    33bc:	2539fff6 	addiu	t9,t1,-10
    33c0:	10000004 	b	33d4 <func_800B4E7C+0x20a8>
    33c4:	a6b9007e 	sh	t9,126(s5)
    33c8:	86aa007e 	lh	t2,126(s5)
    33cc:	254bffff 	addiu	t3,t2,-1
    33d0:	a6ab007e 	sh	t3,126(s5)
    33d4:	86ad007e 	lh	t5,126(s5)
    33d8:	29a1ffff 	slti	at,t5,-1
    33dc:	10200027 	beqz	at,347c <func_800B4E7C+0x2150>
    33e0:	00000000 	nop
    33e4:	86a30080 	lh	v1,128(s5)
    33e8:	28610005 	slti	at,v1,5
    33ec:	50200005 	beqzl	at,3404 <func_800B4E7C+0x20d8>
    33f0:	a6a0007e 	sh	zero,126(s5)
    33f4:	240cffff 	li	t4,-1
    33f8:	10000020 	b	347c <func_800B4E7C+0x2150>
    33fc:	a6ac007e 	sh	t4,126(s5)
    3400:	a6a0007e 	sh	zero,126(s5)
    3404:	1860000b 	blez	v1,3434 <func_800B4E7C+0x2108>
    3408:	00009025 	move	s2,zero
    340c:	00037900 	sll	t7,v1,0x4
    3410:	01f51021 	addu	v0,t7,s5
    3414:	02a09825 	move	s3,s5
    3418:	86b8007e 	lh	t8,126(s5)
    341c:	966e08b2 	lhu	t6,2226(s3)
    3420:	26730010 	addiu	s3,s3,16
    3424:	0262082b 	sltu	at,s3,v0
    3428:	030e4821 	addu	t1,t8,t6
    342c:	1420fffa 	bnez	at,3418 <func_800B4E7C+0x20ec>
    3430:	a6a9007e 	sh	t1,126(s5)
    3434:	86a2007e 	lh	v0,126(s5)
    3438:	0043001a 	div	zero,v0,v1
    343c:	00009012 	mflo	s2
    3440:	0012c880 	sll	t9,s2,0x2
    3444:	0332c821 	addu	t9,t9,s2
    3448:	00195400 	sll	t2,t9,0x10
    344c:	000a5c03 	sra	t3,t2,0x10
    3450:	004b6823 	subu	t5,v0,t3
    3454:	a6ad007e 	sh	t5,126(s5)
    3458:	14600002 	bnez	v1,3464 <func_800B4E7C+0x2138>
    345c:	00000000 	nop
    3460:	0007000d 	break	0x7
    3464:	2401ffff 	li	at,-1
    3468:	14610004 	bne	v1,at,347c <func_800B4E7C+0x2150>
    346c:	3c018000 	lui	at,0x8000
    3470:	14410002 	bne	v0,at,347c <func_800B4E7C+0x2150>
    3474:	00000000 	nop
    3478:	0006000d 	break	0x6
    347c:	3c030000 	lui	v1,0x0
    3480:	8c630000 	lw	v1,0(v1)
    3484:	946c0050 	lhu	t4,80(v1)
    3488:	2401feff 	li	at,-257
    348c:	01817827 	nor	t7,t4,at
    3490:	15e0009b 	bnez	t7,3700 <func_800B4E7C+0x23d4>
    3494:	3c070000 	lui	a3,0x0
    3498:	3c180000 	lui	t8,0x0
    349c:	24e70000 	addiu	a3,a3,0
    34a0:	27180000 	addiu	t8,t8,0
    34a4:	3c050000 	lui	a1,0x0
    34a8:	24a50000 	addiu	a1,a1,0
    34ac:	afb80014 	sw	t8,20(sp)
    34b0:	afa70010 	sw	a3,16(sp)
    34b4:	2404480c 	li	a0,18444
    34b8:	0c000000 	jal	0 <func_800B3B50>
    34bc:	24060004 	li	a2,4
    34c0:	86b00086 	lh	s0,134(s5)
    34c4:	24010001 	li	at,1
    34c8:	12010009 	beq	s0,at,34f0 <func_800B4E7C+0x21c4>
    34cc:	24010002 	li	at,2
    34d0:	12010064 	beq	s0,at,3664 <func_800B4E7C+0x2338>
    34d4:	24010003 	li	at,3
    34d8:	1201001c 	beq	s0,at,354c <func_800B4E7C+0x2220>
    34dc:	24010004 	li	at,4
    34e0:	1201005b 	beq	s0,at,3650 <func_800B4E7C+0x2324>
    34e4:	3c030000 	lui	v1,0x0
    34e8:	10000085 	b	3700 <func_800B4E7C+0x23d4>
    34ec:	8c630000 	lw	v1,0(v1)
    34f0:	3c0e0000 	lui	t6,0x0
    34f4:	8dce0000 	lw	t6,0(t6)
    34f8:	2401ffdf 	li	at,-33
    34fc:	95c90044 	lhu	t1,68(t6)
    3500:	0121c827 	nor	t9,t1,at
    3504:	57200009 	bnezl	t9,352c <func_800B4E7C+0x2200>
    3508:	86af0082 	lh	t7,130(s5)
    350c:	86aa0082 	lh	t2,130(s5)
    3510:	000a5900 	sll	t3,t2,0x4
    3514:	02ab1021 	addu	v0,s5,t3
    3518:	944d08b2 	lhu	t5,2226(v0)
    351c:	25ac0005 	addiu	t4,t5,5
    3520:	10000007 	b	3540 <func_800B4E7C+0x2214>
    3524:	a44c08b2 	sh	t4,2226(v0)
    3528:	86af0082 	lh	t7,130(s5)
    352c:	000fc100 	sll	t8,t7,0x4
    3530:	02b81021 	addu	v0,s5,t8
    3534:	944e08b2 	lhu	t6,2226(v0)
    3538:	25c90001 	addiu	t1,t6,1
    353c:	a44908b2 	sh	t1,2226(v0)
    3540:	3c030000 	lui	v1,0x0
    3544:	1000006e 	b	3700 <func_800B4E7C+0x23d4>
    3548:	8c630000 	lw	v1,0(v1)
    354c:	86b9007c 	lh	t9,124(s5)
    3550:	24010003 	li	at,3
    3554:	00009025 	move	s2,zero
    3558:	272a0001 	addiu	t2,t9,1
    355c:	a6aa007c 	sh	t2,124(s5)
    3560:	86a2007c 	lh	v0,124(s5)
    3564:	54410004 	bnel	v0,at,3578 <func_800B4E7C+0x224c>
    3568:	24010001 	li	at,1
    356c:	a6a0007c 	sh	zero,124(s5)
    3570:	86a2007c 	lh	v0,124(s5)
    3574:	24010001 	li	at,1
    3578:	5441001e 	bnel	v0,at,35f4 <func_800B4E7C+0x22c8>
    357c:	86af0080 	lh	t7,128(s5)
    3580:	86ad0080 	lh	t5,128(s5)
    3584:	240b0002 	li	t3,2
    3588:	a6ab0078 	sh	t3,120(s5)
    358c:	19a00030 	blez	t5,3650 <func_800B4E7C+0x2324>
    3590:	26b008b8 	addiu	s0,s5,2232
    3594:	26b100a8 	addiu	s1,s5,168
    3598:	02002025 	move	a0,s0
    359c:	0c000000 	jal	0 <func_800B3B50>
    35a0:	02802825 	move	a1,s4
    35a4:	02c02025 	move	a0,s6
    35a8:	02802825 	move	a1,s4
    35ac:	0c000000 	jal	0 <func_800B3B50>
    35b0:	02003025 	move	a2,s0
    35b4:	02202025 	move	a0,s1
    35b8:	0c000000 	jal	0 <func_800B3B50>
    35bc:	02802825 	move	a1,s4
    35c0:	02c02025 	move	a0,s6
    35c4:	02802825 	move	a1,s4
    35c8:	0c000000 	jal	0 <func_800B3B50>
    35cc:	02203025 	move	a2,s1
    35d0:	86ac0080 	lh	t4,128(s5)
    35d4:	26520001 	addiu	s2,s2,1
    35d8:	26100010 	addiu	s0,s0,16
    35dc:	024c082a 	slt	at,s2,t4
    35e0:	1420ffed 	bnez	at,3598 <func_800B4E7C+0x226c>
    35e4:	26310010 	addiu	s1,s1,16
    35e8:	1000001a 	b	3654 <func_800B4E7C+0x2328>
    35ec:	240e0001 	li	t6,1
    35f0:	86af0080 	lh	t7,128(s5)
    35f4:	19e00016 	blez	t7,3650 <func_800B4E7C+0x2324>
    35f8:	26b008b8 	addiu	s0,s5,2232
    35fc:	26b100a8 	addiu	s1,s5,168
    3600:	02c02025 	move	a0,s6
    3604:	02002825 	move	a1,s0
    3608:	0c000000 	jal	0 <func_800B3B50>
    360c:	02803025 	move	a2,s4
    3610:	02802025 	move	a0,s4
    3614:	0c000000 	jal	0 <func_800B3B50>
    3618:	02002825 	move	a1,s0
    361c:	02c02025 	move	a0,s6
    3620:	02202825 	move	a1,s1
    3624:	0c000000 	jal	0 <func_800B3B50>
    3628:	02803025 	move	a2,s4
    362c:	02802025 	move	a0,s4
    3630:	0c000000 	jal	0 <func_800B3B50>
    3634:	02202825 	move	a1,s1
    3638:	86b80080 	lh	t8,128(s5)
    363c:	26520001 	addiu	s2,s2,1
    3640:	26100010 	addiu	s0,s0,16
    3644:	0258082a 	slt	at,s2,t8
    3648:	1420ffed 	bnez	at,3600 <func_800B4E7C+0x22d4>
    364c:	26310010 	addiu	s1,s1,16
    3650:	240e0001 	li	t6,1
    3654:	aeae0088 	sw	t6,136(s5)
    3658:	3c030000 	lui	v1,0x0
    365c:	10000028 	b	3700 <func_800B4E7C+0x23d4>
    3660:	8c630000 	lw	v1,0(v1)
    3664:	3c090000 	lui	t1,0x0
    3668:	8d290000 	lw	t1,0(t1)
    366c:	2401ffdf 	li	at,-33
    3670:	95390044 	lhu	t9,68(t1)
    3674:	03215027 	nor	t2,t9,at
    3678:	5540000e 	bnezl	t2,36b4 <func_800B4E7C+0x2388>
    367c:	86aa0082 	lh	t2,130(s5)
    3680:	86ab0082 	lh	t3,130(s5)
    3684:	000b6900 	sll	t5,t3,0x4
    3688:	02ad1021 	addu	v0,s5,t5
    368c:	804c08b1 	lb	t4,2225(v0)
    3690:	258f0005 	addiu	t7,t4,5
    3694:	a04f08b1 	sb	t7,2225(v0)
    3698:	86b80082 	lh	t8,130(s5)
    369c:	00187100 	sll	t6,t8,0x4
    36a0:	02ae4821 	addu	t1,s5,t6
    36a4:	813908b1 	lb	t9,2225(t1)
    36a8:	1000000c 	b	36dc <func_800B4E7C+0x23b0>
    36ac:	a6b9004c 	sh	t9,76(s5)
    36b0:	86aa0082 	lh	t2,130(s5)
    36b4:	000a5900 	sll	t3,t2,0x4
    36b8:	02ab1021 	addu	v0,s5,t3
    36bc:	804d08b1 	lb	t5,2225(v0)
    36c0:	25ac0001 	addiu	t4,t5,1
    36c4:	a04c08b1 	sb	t4,2225(v0)
    36c8:	86af0082 	lh	t7,130(s5)
    36cc:	000fc100 	sll	t8,t7,0x4
    36d0:	02b87021 	addu	t6,s5,t8
    36d4:	81c908b1 	lb	t1,2225(t6)
    36d8:	a6a9004c 	sh	t1,76(s5)
    36dc:	86b9004c 	lh	t9,76(s5)
    36e0:	3c013fb4 	lui	at,0x3fb4
    36e4:	44815000 	mtc1	at,$f10
    36e8:	44993000 	mtc1	t9,$f6
    36ec:	3c030000 	lui	v1,0x0
    36f0:	46803220 	cvt.s.w	$f8,$f6
    36f4:	460a4102 	mul.s	$f4,$f8,$f10
    36f8:	e6a40050 	swc1	$f4,80(s5)
    36fc:	8c630000 	lw	v1,0(v1)
    3700:	946a0044 	lhu	t2,68(v1)
    3704:	2401feff 	li	at,-257
    3708:	01415827 	nor	t3,t2,at
    370c:	15600047 	bnez	t3,382c <func_800B4E7C+0x2500>
    3710:	3c0d0000 	lui	t5,0x0
    3714:	8dad0000 	lw	t5,0(t5)
    3718:	24010005 	li	at,5
    371c:	01a1001a 	div	zero,t5,at
    3720:	00008010 	mfhi	s0
    3724:	2e100001 	sltiu	s0,s0,1
    3728:	3c010000 	lui	at,0x0
    372c:	25ac0001 	addiu	t4,t5,1
    3730:	1200000c 	beqz	s0,3764 <func_800B4E7C+0x2438>
    3734:	ac2c0000 	sw	t4,0(at)
    3738:	3c070000 	lui	a3,0x0
    373c:	3c0f0000 	lui	t7,0x0
    3740:	24e70000 	addiu	a3,a3,0
    3744:	25ef0000 	addiu	t7,t7,0
    3748:	3c050000 	lui	a1,0x0
    374c:	24a50000 	addiu	a1,a1,0
    3750:	afaf0014 	sw	t7,20(sp)
    3754:	afa70010 	sw	a3,16(sp)
    3758:	2404480c 	li	a0,18444
    375c:	0c000000 	jal	0 <func_800B3B50>
    3760:	24060004 	li	a2,4
    3764:	86b00086 	lh	s0,134(s5)
    3768:	12000005 	beqz	s0,3780 <func_800B4E7C+0x2454>
    376c:	24010005 	li	at,5
    3770:	12010022 	beq	s0,at,37fc <func_800B4E7C+0x24d0>
    3774:	00000000 	nop
    3778:	1000002d 	b	3830 <func_800B4E7C+0x2504>
    377c:	86ac0082 	lh	t4,130(s5)
    3780:	3c090000 	lui	t1,0x0
    3784:	8d290000 	lw	t1,0(t1)
    3788:	86b80082 	lh	t8,130(s5)
    378c:	2401ffdf 	li	at,-33
    3790:	95390044 	lhu	t9,68(t1)
    3794:	00187100 	sll	t6,t8,0x4
    3798:	02ae1021 	addu	v0,s5,t6
    379c:	03215027 	nor	t2,t9,at
    37a0:	1540000b 	bnez	t2,37d0 <func_800B4E7C+0x24a4>
    37a4:	3c013f80 	lui	at,0x3f80
    37a8:	44814000 	mtc1	at,$f8
    37ac:	c44608b4 	lwc1	$f6,2228(v0)
    37b0:	46083280 	add.s	$f10,$f6,$f8
    37b4:	e44a08b4 	swc1	$f10,2228(v0)
    37b8:	86ab0082 	lh	t3,130(s5)
    37bc:	000b6900 	sll	t5,t3,0x4
    37c0:	02ad6021 	addu	t4,s5,t5
    37c4:	c58408b4 	lwc1	$f4,2228(t4)
    37c8:	10000018 	b	382c <func_800B4E7C+0x2500>
    37cc:	e6a40048 	swc1	$f4,72(s5)
    37d0:	3c010000 	lui	at,0x0
    37d4:	c4280000 	lwc1	$f8,0(at)
    37d8:	c44608b4 	lwc1	$f6,2228(v0)
    37dc:	46083280 	add.s	$f10,$f6,$f8
    37e0:	e44a08b4 	swc1	$f10,2228(v0)
    37e4:	86af0082 	lh	t7,130(s5)
    37e8:	000fc100 	sll	t8,t7,0x4
    37ec:	02b87021 	addu	t6,s5,t8
    37f0:	c5c408b4 	lwc1	$f4,2228(t6)
    37f4:	1000000d 	b	382c <func_800B4E7C+0x2500>
    37f8:	e6a40048 	swc1	$f4,72(s5)
    37fc:	3c090000 	lui	t1,0x0
    3800:	8d290000 	lw	t1,0(t1)
    3804:	2401ffdf 	li	at,-33
    3808:	86a2007e 	lh	v0,126(s5)
    380c:	95390044 	lhu	t9,68(t1)
    3810:	03215027 	nor	t2,t9,at
    3814:	15400003 	bnez	t2,3824 <func_800B4E7C+0x24f8>
    3818:	244b000a 	addiu	t3,v0,10
    381c:	10000003 	b	382c <func_800B4E7C+0x2500>
    3820:	a6ab007e 	sh	t3,126(s5)
    3824:	244d0001 	addiu	t5,v0,1
    3828:	a6ad007e 	sh	t5,126(s5)
    382c:	86ac0082 	lh	t4,130(s5)
    3830:	3c050000 	lui	a1,0x0
    3834:	24a50000 	addiu	a1,a1,0
    3838:	000c7900 	sll	t7,t4,0x4
    383c:	02afc021 	addu	t8,s5,t7
    3840:	c70608b4 	lwc1	$f6,2228(t8)
    3844:	24060003 	li	a2,3
    3848:	4600320d 	trunc.w.s	$f8,$f6
    384c:	44044000 	mfc1	a0,$f8
    3850:	00000000 	nop
    3854:	00042400 	sll	a0,a0,0x10
    3858:	0c000000 	jal	0 <func_800B3B50>
    385c:	00042403 	sra	a0,a0,0x10
    3860:	86a90086 	lh	t1,134(s5)
    3864:	55200004 	bnezl	t1,3878 <func_800B4E7C+0x254c>
    3868:	24100004 	li	s0,4
    386c:	10000002 	b	3878 <func_800B4E7C+0x254c>
    3870:	24100007 	li	s0,7
    3874:	24100004 	li	s0,4
    3878:	3c110000 	lui	s1,0x0
    387c:	26310000 	addiu	s1,s1,0
    3880:	02203825 	move	a3,s1
    3884:	24040010 	li	a0,16
    3888:	24050014 	li	a1,20
    388c:	0c000000 	jal	0 <func_800B3B50>
    3890:	320600ff 	andi	a2,s0,0xff
    3894:	86b90082 	lh	t9,130(s5)
    3898:	3c050000 	lui	a1,0x0
    389c:	24a50000 	addiu	a1,a1,0
    38a0:	00195100 	sll	t2,t9,0x4
    38a4:	02aa5821 	addu	t3,s5,t2
    38a8:	856408b2 	lh	a0,2226(t3)
    38ac:	0c000000 	jal	0 <func_800B3B50>
    38b0:	24060003 	li	a2,3
    38b4:	86ad0086 	lh	t5,134(s5)
    38b8:	24010001 	li	at,1
    38bc:	55a10004 	bnel	t5,at,38d0 <func_800B4E7C+0x25a4>
    38c0:	24100004 	li	s0,4
    38c4:	10000002 	b	38d0 <func_800B4E7C+0x25a4>
    38c8:	24100007 	li	s0,7
    38cc:	24100004 	li	s0,4
    38d0:	3c070000 	lui	a3,0x0
    38d4:	24e70000 	addiu	a3,a3,0
    38d8:	24040010 	li	a0,16
    38dc:	24050015 	li	a1,21
    38e0:	0c000000 	jal	0 <func_800B3B50>
    38e4:	320600ff 	andi	a2,s0,0xff
    38e8:	86ac0082 	lh	t4,130(s5)
    38ec:	3c050000 	lui	a1,0x0
    38f0:	24a50000 	addiu	a1,a1,0
    38f4:	000c7900 	sll	t7,t4,0x4
    38f8:	02afc021 	addu	t8,s5,t7
    38fc:	830408b1 	lb	a0,2225(t8)
    3900:	0c000000 	jal	0 <func_800B3B50>
    3904:	24060003 	li	a2,3
    3908:	86ae0086 	lh	t6,134(s5)
    390c:	24010002 	li	at,2
    3910:	55c10004 	bnel	t6,at,3924 <func_800B4E7C+0x25f8>
    3914:	24100004 	li	s0,4
    3918:	10000002 	b	3924 <func_800B4E7C+0x25f8>
    391c:	24100007 	li	s0,7
    3920:	24100004 	li	s0,4
    3924:	3c070000 	lui	a3,0x0
    3928:	24e70000 	addiu	a3,a3,0
    392c:	24040010 	li	a0,16
    3930:	24050016 	li	a1,22
    3934:	0c000000 	jal	0 <func_800B3B50>
    3938:	320600ff 	andi	a2,s0,0xff
    393c:	86a90086 	lh	t1,134(s5)
    3940:	24010003 	li	at,3
    3944:	55210004 	bnel	t1,at,3958 <func_800B4E7C+0x262c>
    3948:	24030004 	li	v1,4
    394c:	10000002 	b	3958 <func_800B4E7C+0x262c>
    3950:	24030007 	li	v1,7
    3954:	24030004 	li	v1,4
    3958:	86a2007c 	lh	v0,124(s5)
    395c:	24010001 	li	at,1
    3960:	14410003 	bne	v0,at,3970 <func_800B4E7C+0x2644>
    3964:	3c100000 	lui	s0,0x0
    3968:	10000008 	b	398c <func_800B4E7C+0x2660>
    396c:	8e100000 	lw	s0,0(s0)
    3970:	14400003 	bnez	v0,3980 <func_800B4E7C+0x2654>
    3974:	3c020000 	lui	v0,0x0
    3978:	10000003 	b	3988 <func_800B4E7C+0x265c>
    397c:	8c420000 	lw	v0,0(v0)
    3980:	3c020000 	lui	v0,0x0
    3984:	8c420000 	lw	v0,0(v0)
    3988:	00408025 	move	s0,v0
    398c:	2404000f 	li	a0,15
    3990:	24050017 	li	a1,23
    3994:	306600ff 	andi	a2,v1,0xff
    3998:	0c000000 	jal	0 <func_800B3B50>
    399c:	02003825 	move	a3,s0
    39a0:	8eb90088 	lw	t9,136(s5)
    39a4:	13200003 	beqz	t9,39b4 <func_800B4E7C+0x2688>
    39a8:	240a003e 	li	t2,62
    39ac:	10000003 	b	39bc <func_800B4E7C+0x2690>
    39b0:	a22a0050 	sb	t2,80(s1)
    39b4:	240b003c 	li	t3,60
    39b8:	a22b0050 	sb	t3,80(s1)
    39bc:	24020020 	li	v0,32
    39c0:	a2220051 	sb	v0,81(s1)
    39c4:	a222005e 	sb	v0,94(s1)
    39c8:	8ead0088 	lw	t5,136(s5)
    39cc:	11a00003 	beqz	t5,39dc <func_800B4E7C+0x26b0>
    39d0:	240c003e 	li	t4,62
    39d4:	10000003 	b	39e4 <func_800B4E7C+0x26b8>
    39d8:	a22c005f 	sb	t4,95(s1)
    39dc:	240f003c 	li	t7,60
    39e0:	a22f005f 	sb	t7,95(s1)
    39e4:	a2200060 	sb	zero,96(s1)
    39e8:	86b80086 	lh	t8,134(s5)
    39ec:	24010004 	li	at,4
    39f0:	57010004 	bnel	t8,at,3a04 <func_800B4E7C+0x26d8>
    39f4:	24100004 	li	s0,4
    39f8:	10000002 	b	3a04 <func_800B4E7C+0x26d8>
    39fc:	24100007 	li	s0,7
    3a00:	24100004 	li	s0,4
    3a04:	3c070000 	lui	a3,0x0
    3a08:	24e70000 	addiu	a3,a3,0
    3a0c:	2404000f 	li	a0,15
    3a10:	24050018 	li	a1,24
    3a14:	0c000000 	jal	0 <func_800B3B50>
    3a18:	320600ff 	andi	a2,s0,0xff
    3a1c:	3c050000 	lui	a1,0x0
    3a20:	24a50000 	addiu	a1,a1,0
    3a24:	86a4007e 	lh	a0,126(s5)
    3a28:	0c000000 	jal	0 <func_800B3B50>
    3a2c:	24060005 	li	a2,5
    3a30:	86ae0086 	lh	t6,134(s5)
    3a34:	24010005 	li	at,5
    3a38:	55c10004 	bnel	t6,at,3a4c <func_800B4E7C+0x2720>
    3a3c:	24020004 	li	v0,4
    3a40:	10000002 	b	3a4c <func_800B4E7C+0x2720>
    3a44:	24020007 	li	v0,7
    3a48:	24020004 	li	v0,4
    3a4c:	86a9007e 	lh	t1,126(s5)
    3a50:	2401ffff 	li	at,-1
    3a54:	15210003 	bne	t1,at,3a64 <func_800B4E7C+0x2738>
    3a58:	3c100000 	lui	s0,0x0
    3a5c:	10000003 	b	3a6c <func_800B4E7C+0x2740>
    3a60:	8e100000 	lw	s0,0(s0)
    3a64:	3c100000 	lui	s0,0x0
    3a68:	26100000 	addiu	s0,s0,0
    3a6c:	2404000f 	li	a0,15
    3a70:	24050019 	li	a1,25
    3a74:	304600ff 	andi	a2,v0,0xff
    3a78:	0c000000 	jal	0 <func_800B3B50>
    3a7c:	02003825 	move	a3,s0
    3a80:	27b20110 	addiu	s2,sp,272
    3a84:	27b10111 	addiu	s1,sp,273
    3a88:	86b9007c 	lh	t9,124(s5)
    3a8c:	24030001 	li	v1,1
    3a90:	50790099 	beql	v1,t9,3cf8 <func_800B4E7C+0x29cc>
    3a94:	27a400fc 	addiu	a0,sp,252
    3a98:	86aa0084 	lh	t2,132(s5)
    3a9c:	146a000a 	bne	v1,t2,3ac8 <func_800B4E7C+0x279c>
    3aa0:	00000000 	nop
    3aa4:	86ab0086 	lh	t3,134(s5)
    3aa8:	24010004 	li	at,4
    3aac:	15610006 	bne	t3,at,3ac8 <func_800B4E7C+0x279c>
    3ab0:	3c0d0000 	lui	t5,0x0
    3ab4:	8dad0000 	lw	t5,0(t5)
    3ab8:	15a00003 	bnez	t5,3ac8 <func_800B4E7C+0x279c>
    3abc:	00000000 	nop
    3ac0:	10000009 	b	3ae8 <func_800B4E7C+0x27bc>
    3ac4:	24100007 	li	s0,7
    3ac8:	3c0c0000 	lui	t4,0x0
    3acc:	8d8c0000 	lw	t4,0(t4)
    3ad0:	55800004 	bnezl	t4,3ae4 <func_800B4E7C+0x27b8>
    3ad4:	24020003 	li	v0,3
    3ad8:	10000002 	b	3ae4 <func_800B4E7C+0x27b8>
    3adc:	24020004 	li	v0,4
    3ae0:	24020003 	li	v0,3
    3ae4:	00408025 	move	s0,v0
    3ae8:	3c070000 	lui	a3,0x0
    3aec:	8ce70000 	lw	a3,0(a3)
    3af0:	24040003 	li	a0,3
    3af4:	24050016 	li	a1,22
    3af8:	0c000000 	jal	0 <func_800B3B50>
    3afc:	320600ff 	andi	a2,s0,0xff
    3b00:	240f0058 	li	t7,88
    3b04:	a3af0110 	sb	t7,272(sp)
    3b08:	c6aa0004 	lwc1	$f10,4(s5)
    3b0c:	02202825 	move	a1,s1
    3b10:	24060006 	li	a2,6
    3b14:	4600510d 	trunc.w.s	$f4,$f10
    3b18:	44042000 	mfc1	a0,$f4
    3b1c:	00000000 	nop
    3b20:	00042400 	sll	a0,a0,0x10
    3b24:	0c000000 	jal	0 <func_800B3B50>
    3b28:	00042403 	sra	a0,a0,0x10
    3b2c:	24040003 	li	a0,3
    3b30:	24050017 	li	a1,23
    3b34:	24060002 	li	a2,2
    3b38:	0c000000 	jal	0 <func_800B3B50>
    3b3c:	02403825 	move	a3,s2
    3b40:	240e0059 	li	t6,89
    3b44:	a3ae0110 	sb	t6,272(sp)
    3b48:	c6a60008 	lwc1	$f6,8(s5)
    3b4c:	02202825 	move	a1,s1
    3b50:	24060006 	li	a2,6
    3b54:	4600320d 	trunc.w.s	$f8,$f6
    3b58:	44044000 	mfc1	a0,$f8
    3b5c:	00000000 	nop
    3b60:	00042400 	sll	a0,a0,0x10
    3b64:	0c000000 	jal	0 <func_800B3B50>
    3b68:	00042403 	sra	a0,a0,0x10
    3b6c:	24040003 	li	a0,3
    3b70:	24050018 	li	a1,24
    3b74:	24060002 	li	a2,2
    3b78:	0c000000 	jal	0 <func_800B3B50>
    3b7c:	02403825 	move	a3,s2
    3b80:	2419005a 	li	t9,90
    3b84:	a3b90110 	sb	t9,272(sp)
    3b88:	c6aa000c 	lwc1	$f10,12(s5)
    3b8c:	02202825 	move	a1,s1
    3b90:	24060006 	li	a2,6
    3b94:	4600510d 	trunc.w.s	$f4,$f10
    3b98:	44042000 	mfc1	a0,$f4
    3b9c:	00000000 	nop
    3ba0:	00042400 	sll	a0,a0,0x10
    3ba4:	0c000000 	jal	0 <func_800B3B50>
    3ba8:	00042403 	sra	a0,a0,0x10
    3bac:	24040003 	li	a0,3
    3bb0:	24050019 	li	a1,25
    3bb4:	24060002 	li	a2,2
    3bb8:	0c000000 	jal	0 <func_800B3B50>
    3bbc:	02403825 	move	a3,s2
    3bc0:	86ab0084 	lh	t3,132(s5)
    3bc4:	24010001 	li	at,1
    3bc8:	1561000a 	bne	t3,at,3bf4 <func_800B4E7C+0x28c8>
    3bcc:	00000000 	nop
    3bd0:	86ad0086 	lh	t5,134(s5)
    3bd4:	24010004 	li	at,4
    3bd8:	15a10006 	bne	t5,at,3bf4 <func_800B4E7C+0x28c8>
    3bdc:	3c0c0000 	lui	t4,0x0
    3be0:	8d8c0000 	lw	t4,0(t4)
    3be4:	11800003 	beqz	t4,3bf4 <func_800B4E7C+0x28c8>
    3be8:	00000000 	nop
    3bec:	10000009 	b	3c14 <func_800B4E7C+0x28e8>
    3bf0:	24100007 	li	s0,7
    3bf4:	3c0f0000 	lui	t7,0x0
    3bf8:	8def0000 	lw	t7,0(t7)
    3bfc:	51e00004 	beqzl	t7,3c10 <func_800B4E7C+0x28e4>
    3c00:	24020003 	li	v0,3
    3c04:	10000002 	b	3c10 <func_800B4E7C+0x28e4>
    3c08:	24020004 	li	v0,4
    3c0c:	24020003 	li	v0,3
    3c10:	00408025 	move	s0,v0
    3c14:	3c070000 	lui	a3,0x0
    3c18:	8ce70000 	lw	a3,0(a3)
    3c1c:	2404001e 	li	a0,30
    3c20:	24050016 	li	a1,22
    3c24:	0c000000 	jal	0 <func_800B3B50>
    3c28:	320600ff 	andi	a2,s0,0xff
    3c2c:	24180058 	li	t8,88
    3c30:	a3b80110 	sb	t8,272(sp)
    3c34:	c6a60010 	lwc1	$f6,16(s5)
    3c38:	02202825 	move	a1,s1
    3c3c:	24060006 	li	a2,6
    3c40:	4600320d 	trunc.w.s	$f8,$f6
    3c44:	44044000 	mfc1	a0,$f8
    3c48:	00000000 	nop
    3c4c:	00042400 	sll	a0,a0,0x10
    3c50:	0c000000 	jal	0 <func_800B3B50>
    3c54:	00042403 	sra	a0,a0,0x10
    3c58:	2404001e 	li	a0,30
    3c5c:	24050017 	li	a1,23
    3c60:	24060002 	li	a2,2
    3c64:	0c000000 	jal	0 <func_800B3B50>
    3c68:	02403825 	move	a3,s2
    3c6c:	24090059 	li	t1,89
    3c70:	a3a90110 	sb	t1,272(sp)
    3c74:	c6aa0014 	lwc1	$f10,20(s5)
    3c78:	02202825 	move	a1,s1
    3c7c:	24060006 	li	a2,6
    3c80:	4600510d 	trunc.w.s	$f4,$f10
    3c84:	44042000 	mfc1	a0,$f4
    3c88:	00000000 	nop
    3c8c:	00042400 	sll	a0,a0,0x10
    3c90:	0c000000 	jal	0 <func_800B3B50>
    3c94:	00042403 	sra	a0,a0,0x10
    3c98:	2404001e 	li	a0,30
    3c9c:	24050018 	li	a1,24
    3ca0:	24060002 	li	a2,2
    3ca4:	0c000000 	jal	0 <func_800B3B50>
    3ca8:	02403825 	move	a3,s2
    3cac:	240a005a 	li	t2,90
    3cb0:	a3aa0110 	sb	t2,272(sp)
    3cb4:	c6a60018 	lwc1	$f6,24(s5)
    3cb8:	02202825 	move	a1,s1
    3cbc:	24060006 	li	a2,6
    3cc0:	4600320d 	trunc.w.s	$f8,$f6
    3cc4:	44044000 	mfc1	a0,$f8
    3cc8:	00000000 	nop
    3ccc:	00042400 	sll	a0,a0,0x10
    3cd0:	0c000000 	jal	0 <func_800B3B50>
    3cd4:	00042403 	sra	a0,a0,0x10
    3cd8:	2404001e 	li	a0,30
    3cdc:	24050019 	li	a1,25
    3ce0:	24060002 	li	a2,2
    3ce4:	0c000000 	jal	0 <func_800B3B50>
    3ce8:	02403825 	move	a3,s2
    3cec:	100000bc 	b	3fe0 <func_800B4E7C+0x2cb4>
    3cf0:	c6aa0008 	lwc1	$f10,8(s5)
    3cf4:	27a400fc 	addiu	a0,sp,252
    3cf8:	8fa50090 	lw	a1,144(sp)
    3cfc:	0c000000 	jal	0 <func_800B3B50>
    3d00:	8fa6007c 	lw	a2,124(sp)
    3d04:	87ad0102 	lh	t5,258(sp)
    3d08:	86ec00a2 	lh	t4,162(s7)
    3d0c:	24010001 	li	at,1
    3d10:	01ac7823 	subu	t7,t5,t4
    3d14:	a7af0102 	sh	t7,258(sp)
    3d18:	86b80084 	lh	t8,132(s5)
    3d1c:	1701000a 	bne	t8,at,3d48 <func_800B4E7C+0x2a1c>
    3d20:	00000000 	nop
    3d24:	86ae0086 	lh	t6,134(s5)
    3d28:	24010004 	li	at,4
    3d2c:	15c10006 	bne	t6,at,3d48 <func_800B4E7C+0x2a1c>
    3d30:	3c090000 	lui	t1,0x0
    3d34:	8d290000 	lw	t1,0(t1)
    3d38:	15200003 	bnez	t1,3d48 <func_800B4E7C+0x2a1c>
    3d3c:	00000000 	nop
    3d40:	10000009 	b	3d68 <func_800B4E7C+0x2a3c>
    3d44:	24100007 	li	s0,7
    3d48:	3c190000 	lui	t9,0x0
    3d4c:	8f390000 	lw	t9,0(t9)
    3d50:	57200004 	bnezl	t9,3d64 <func_800B4E7C+0x2a38>
    3d54:	24020003 	li	v0,3
    3d58:	10000002 	b	3d64 <func_800B4E7C+0x2a38>
    3d5c:	24020004 	li	v0,4
    3d60:	24020003 	li	v0,3
    3d64:	00408025 	move	s0,v0
    3d68:	3c070000 	lui	a3,0x0
    3d6c:	8ce70000 	lw	a3,0(a3)
    3d70:	24040003 	li	a0,3
    3d74:	24050016 	li	a1,22
    3d78:	0c000000 	jal	0 <func_800B3B50>
    3d7c:	320600ff 	andi	a2,s0,0xff
    3d80:	87aa0100 	lh	t2,256(sp)
    3d84:	3c010000 	lui	at,0x0
    3d88:	c4260000 	lwc1	$f6,0(at)
    3d8c:	448a5000 	mtc1	t2,$f10
    3d90:	3c110000 	lui	s1,0x0
    3d94:	26310000 	addiu	s1,s1,0
    3d98:	46805120 	cvt.s.w	$f4,$f10
    3d9c:	02202825 	move	a1,s1
    3da0:	24060004 	li	a2,4
    3da4:	46062202 	mul.s	$f8,$f4,$f6
    3da8:	4600428d 	trunc.w.s	$f10,$f8
    3dac:	44045000 	mfc1	a0,$f10
    3db0:	00000000 	nop
    3db4:	00042400 	sll	a0,a0,0x10
    3db8:	0c000000 	jal	0 <func_800B3B50>
    3dbc:	00042403 	sra	a0,a0,0x10
    3dc0:	3c070000 	lui	a3,0x0
    3dc4:	24e70000 	addiu	a3,a3,0
    3dc8:	24040003 	li	a0,3
    3dcc:	24050017 	li	a1,23
    3dd0:	0c000000 	jal	0 <func_800B3B50>
    3dd4:	24060003 	li	a2,3
    3dd8:	87ad0102 	lh	t5,258(sp)
    3ddc:	3c010000 	lui	at,0x0
    3de0:	c4280000 	lwc1	$f8,0(at)
    3de4:	448d2000 	mtc1	t5,$f4
    3de8:	3c120000 	lui	s2,0x0
    3dec:	26520000 	addiu	s2,s2,0
    3df0:	468021a0 	cvt.s.w	$f6,$f4
    3df4:	02402825 	move	a1,s2
    3df8:	24060004 	li	a2,4
    3dfc:	46083282 	mul.s	$f10,$f6,$f8
    3e00:	4600510d 	trunc.w.s	$f4,$f10
    3e04:	44042000 	mfc1	a0,$f4
    3e08:	00000000 	nop
    3e0c:	00042400 	sll	a0,a0,0x10
    3e10:	0c000000 	jal	0 <func_800B3B50>
    3e14:	00042403 	sra	a0,a0,0x10
    3e18:	3c070000 	lui	a3,0x0
    3e1c:	24e70000 	addiu	a3,a3,0
    3e20:	24040003 	li	a0,3
    3e24:	24050018 	li	a1,24
    3e28:	0c000000 	jal	0 <func_800B3B50>
    3e2c:	24060003 	li	a2,3
    3e30:	c7a600fc 	lwc1	$f6,252(sp)
    3e34:	3c130000 	lui	s3,0x0
    3e38:	26730000 	addiu	s3,s3,0
    3e3c:	4600320d 	trunc.w.s	$f8,$f6
    3e40:	02602825 	move	a1,s3
    3e44:	24060006 	li	a2,6
    3e48:	44044000 	mfc1	a0,$f8
    3e4c:	00000000 	nop
    3e50:	00042400 	sll	a0,a0,0x10
    3e54:	0c000000 	jal	0 <func_800B3B50>
    3e58:	00042403 	sra	a0,a0,0x10
    3e5c:	3c070000 	lui	a3,0x0
    3e60:	24e70000 	addiu	a3,a3,0
    3e64:	24040003 	li	a0,3
    3e68:	24050019 	li	a1,25
    3e6c:	0c000000 	jal	0 <func_800B3B50>
    3e70:	24060003 	li	a2,3
    3e74:	27a400fc 	addiu	a0,sp,252
    3e78:	8fa50090 	lw	a1,144(sp)
    3e7c:	0c000000 	jal	0 <func_800B3B50>
    3e80:	8fa60080 	lw	a2,128(sp)
    3e84:	87b80102 	lh	t8,258(sp)
    3e88:	86ee00a2 	lh	t6,162(s7)
    3e8c:	24010001 	li	at,1
    3e90:	030e4823 	subu	t1,t8,t6
    3e94:	a7a90102 	sh	t1,258(sp)
    3e98:	86b90084 	lh	t9,132(s5)
    3e9c:	1721000a 	bne	t9,at,3ec8 <func_800B4E7C+0x2b9c>
    3ea0:	00000000 	nop
    3ea4:	86aa0086 	lh	t2,134(s5)
    3ea8:	24010004 	li	at,4
    3eac:	15410006 	bne	t2,at,3ec8 <func_800B4E7C+0x2b9c>
    3eb0:	3c0b0000 	lui	t3,0x0
    3eb4:	8d6b0000 	lw	t3,0(t3)
    3eb8:	11600003 	beqz	t3,3ec8 <func_800B4E7C+0x2b9c>
    3ebc:	00000000 	nop
    3ec0:	10000009 	b	3ee8 <func_800B4E7C+0x2bbc>
    3ec4:	24100007 	li	s0,7
    3ec8:	3c0d0000 	lui	t5,0x0
    3ecc:	8dad0000 	lw	t5,0(t5)
    3ed0:	51a00004 	beqzl	t5,3ee4 <func_800B4E7C+0x2bb8>
    3ed4:	24020003 	li	v0,3
    3ed8:	10000002 	b	3ee4 <func_800B4E7C+0x2bb8>
    3edc:	24020004 	li	v0,4
    3ee0:	24020003 	li	v0,3
    3ee4:	00408025 	move	s0,v0
    3ee8:	3c070000 	lui	a3,0x0
    3eec:	8ce70000 	lw	a3,0(a3)
    3ef0:	2404001e 	li	a0,30
    3ef4:	24050016 	li	a1,22
    3ef8:	0c000000 	jal	0 <func_800B3B50>
    3efc:	320600ff 	andi	a2,s0,0xff
    3f00:	87ac0100 	lh	t4,256(sp)
    3f04:	3c010000 	lui	at,0x0
    3f08:	c4260000 	lwc1	$f6,0(at)
    3f0c:	448c5000 	mtc1	t4,$f10
    3f10:	02202825 	move	a1,s1
    3f14:	24060004 	li	a2,4
    3f18:	46805120 	cvt.s.w	$f4,$f10
    3f1c:	46062202 	mul.s	$f8,$f4,$f6
    3f20:	4600428d 	trunc.w.s	$f10,$f8
    3f24:	44045000 	mfc1	a0,$f10
    3f28:	00000000 	nop
    3f2c:	00042400 	sll	a0,a0,0x10
    3f30:	0c000000 	jal	0 <func_800B3B50>
    3f34:	00042403 	sra	a0,a0,0x10
    3f38:	3c070000 	lui	a3,0x0
    3f3c:	24e70000 	addiu	a3,a3,0
    3f40:	2404001c 	li	a0,28
    3f44:	24050017 	li	a1,23
    3f48:	0c000000 	jal	0 <func_800B3B50>
    3f4c:	24060003 	li	a2,3
    3f50:	87b80102 	lh	t8,258(sp)
    3f54:	3c010000 	lui	at,0x0
    3f58:	c4280000 	lwc1	$f8,0(at)
    3f5c:	44982000 	mtc1	t8,$f4
    3f60:	02402825 	move	a1,s2
    3f64:	24060004 	li	a2,4
    3f68:	468021a0 	cvt.s.w	$f6,$f4
    3f6c:	46083282 	mul.s	$f10,$f6,$f8
    3f70:	4600510d 	trunc.w.s	$f4,$f10
    3f74:	44042000 	mfc1	a0,$f4
    3f78:	00000000 	nop
    3f7c:	00042400 	sll	a0,a0,0x10
    3f80:	0c000000 	jal	0 <func_800B3B50>
    3f84:	00042403 	sra	a0,a0,0x10
    3f88:	3c070000 	lui	a3,0x0
    3f8c:	24e70000 	addiu	a3,a3,0
    3f90:	2404001c 	li	a0,28
    3f94:	24050018 	li	a1,24
    3f98:	0c000000 	jal	0 <func_800B3B50>
    3f9c:	24060003 	li	a2,3
    3fa0:	c7a600fc 	lwc1	$f6,252(sp)
    3fa4:	02602825 	move	a1,s3
    3fa8:	24060006 	li	a2,6
    3fac:	4600320d 	trunc.w.s	$f8,$f6
    3fb0:	44044000 	mfc1	a0,$f8
    3fb4:	00000000 	nop
    3fb8:	00042400 	sll	a0,a0,0x10
    3fbc:	0c000000 	jal	0 <func_800B3B50>
    3fc0:	00042403 	sra	a0,a0,0x10
    3fc4:	3c070000 	lui	a3,0x0
    3fc8:	24e70000 	addiu	a3,a3,0
    3fcc:	2404001c 	li	a0,28
    3fd0:	24050019 	li	a1,25
    3fd4:	0c000000 	jal	0 <func_800B3B50>
    3fd8:	24060003 	li	a2,3
    3fdc:	c6aa0008 	lwc1	$f10,8(s5)
    3fe0:	c6ac0004 	lwc1	$f12,4(s5)
    3fe4:	8ea6000c 	lw	a2,12(s5)
    3fe8:	3c010000 	lui	at,0x0
    3fec:	c4200000 	lwc1	$f0,0(at)
    3ff0:	3c013f80 	lui	at,0x3f80
    3ff4:	44812000 	mtc1	at,$f4
    3ff8:	3c014000 	lui	at,0x4000
    3ffc:	44813000 	mtc1	at,$f6
    4000:	241900ff 	li	t9,255
    4004:	240a00ff 	li	t2,255
    4008:	240b007f 	li	t3,127
    400c:	240d0040 	li	t5,64
    4010:	afad0030 	sw	t5,48(sp)
    4014:	afab002c 	sw	t3,44(sp)
    4018:	afaa0028 	sw	t2,40(sp)
    401c:	afb90024 	sw	t9,36(sp)
    4020:	afa00034 	sw	zero,52(sp)
    4024:	afa00014 	sw	zero,20(sp)
    4028:	afa00010 	sw	zero,16(sp)
    402c:	e7a00018 	swc1	$f0,24(sp)
    4030:	e7a00020 	swc1	$f0,32(sp)
    4034:	e7a6001c 	swc1	$f6,28(sp)
    4038:	8eec008c 	lw	t4,140(s7)
    403c:	00003825 	move	a3,zero
    4040:	46045380 	add.s	$f14,$f10,$f4
    4044:	8d8f00bc 	lw	t7,188(t4)
    4048:	0c000000 	jal	0 <func_800B3B50>
    404c:	afaf0038 	sw	t7,56(sp)
    4050:	c6a80008 	lwc1	$f8,8(s5)
    4054:	c6ac0004 	lwc1	$f12,4(s5)
    4058:	8ea6000c 	lw	a2,12(s5)
    405c:	3c010000 	lui	at,0x0
    4060:	c4200000 	lwc1	$f0,0(at)
    4064:	3c013f80 	lui	at,0x3f80
    4068:	44815000 	mtc1	at,$f10
    406c:	3c014000 	lui	at,0x4000
    4070:	44812000 	mtc1	at,$f4
    4074:	2418007f 	li	t8,127
    4078:	240e00ff 	li	t6,255
    407c:	240900ff 	li	t1,255
    4080:	24190040 	li	t9,64
    4084:	afb90030 	sw	t9,48(sp)
    4088:	afa9002c 	sw	t1,44(sp)
    408c:	afae0028 	sw	t6,40(sp)
    4090:	afb80024 	sw	t8,36(sp)
    4094:	afa00034 	sw	zero,52(sp)
    4098:	afa00014 	sw	zero,20(sp)
    409c:	afa00010 	sw	zero,16(sp)
    40a0:	e7a0001c 	swc1	$f0,28(sp)
    40a4:	e7a00020 	swc1	$f0,32(sp)
    40a8:	e7a40018 	swc1	$f4,24(sp)
    40ac:	8eea008c 	lw	t2,140(s7)
    40b0:	00003825 	move	a3,zero
    40b4:	460a4380 	add.s	$f14,$f8,$f10
    40b8:	8d4b00bc 	lw	t3,188(t2)
    40bc:	0c000000 	jal	0 <func_800B3B50>
    40c0:	afab0038 	sw	t3,56(sp)
    40c4:	c6a60008 	lwc1	$f6,8(s5)
    40c8:	c6ac0004 	lwc1	$f12,4(s5)
    40cc:	8ea6000c 	lw	a2,12(s5)
    40d0:	3c010000 	lui	at,0x0
    40d4:	c4200000 	lwc1	$f0,0(at)
    40d8:	3c013f80 	lui	at,0x3f80
    40dc:	44814000 	mtc1	at,$f8
    40e0:	3c014000 	lui	at,0x4000
    40e4:	44815000 	mtc1	at,$f10
    40e8:	240d00ff 	li	t5,255
    40ec:	240c007f 	li	t4,127
    40f0:	240f00ff 	li	t7,255
    40f4:	24180040 	li	t8,64
    40f8:	afb80030 	sw	t8,48(sp)
    40fc:	afaf002c 	sw	t7,44(sp)
    4100:	afac0028 	sw	t4,40(sp)
    4104:	afad0024 	sw	t5,36(sp)
    4108:	afa00034 	sw	zero,52(sp)
    410c:	afa00014 	sw	zero,20(sp)
    4110:	afa00010 	sw	zero,16(sp)
    4114:	e7a00018 	swc1	$f0,24(sp)
    4118:	e7a0001c 	swc1	$f0,28(sp)
    411c:	e7aa0020 	swc1	$f10,32(sp)
    4120:	8eee008c 	lw	t6,140(s7)
    4124:	00003825 	move	a3,zero
    4128:	46083380 	add.s	$f14,$f6,$f8
    412c:	8dc900bc 	lw	t1,188(t6)
    4130:	0c000000 	jal	0 <func_800B3B50>
    4134:	afa90038 	sw	t1,56(sp)
    4138:	86b90084 	lh	t9,132(s5)
    413c:	24010002 	li	at,2
    4140:	5721029c 	bnel	t9,at,4bb4 <func_800B4E7C+0x3888>
    4144:	8fbf006c 	lw	ra,108(sp)
    4148:	86aa0080 	lh	t2,128(s5)
    414c:	00009025 	move	s2,zero
    4150:	254bffff 	addiu	t3,t2,-1
    4154:	19600296 	blez	t3,4bb0 <func_800B4E7C+0x3884>
    4158:	02a09825 	move	s3,s5
    415c:	26b000a8 	addiu	s0,s5,168
    4160:	26b108b8 	addiu	s1,s5,2232
    4164:	27b400ac 	addiu	s4,sp,172
    4168:	86ad007c 	lh	t5,124(s5)
    416c:	24010001 	li	at,1
    4170:	11a10008 	beq	t5,at,4194 <func_800B4E7C+0x2e68>
    4174:	02002025 	move	a0,s0
    4178:	0c000000 	jal	0 <func_800B3B50>
    417c:	02802825 	move	a1,s4
    4180:	02202025 	move	a0,s1
    4184:	0c000000 	jal	0 <func_800B3B50>
    4188:	27a500b8 	addiu	a1,sp,184
    418c:	1000000a 	b	41b8 <func_800B4E7C+0x2e8c>
    4190:	27a400fc 	addiu	a0,sp,252
    4194:	02c02025 	move	a0,s6
    4198:	02202825 	move	a1,s1
    419c:	0c000000 	jal	0 <func_800B3B50>
    41a0:	27a600b8 	addiu	a2,sp,184
    41a4:	02c02025 	move	a0,s6
    41a8:	02002825 	move	a1,s0
    41ac:	0c000000 	jal	0 <func_800B3B50>
    41b0:	02803025 	move	a2,s4
    41b4:	27a400fc 	addiu	a0,sp,252
    41b8:	02802825 	move	a1,s4
    41bc:	0c000000 	jal	0 <func_800B3B50>
    41c0:	27a600b8 	addiu	a2,sp,184
    41c4:	826208b1 	lb	v0,2225(s3)
    41c8:	86ac0082 	lh	t4,130(s5)
    41cc:	00400821 	move	at,v0
    41d0:	00021080 	sll	v0,v0,0x2
    41d4:	00411023 	subu	v0,v0,at
    41d8:	000210c0 	sll	v0,v0,0x3
    41dc:	00411023 	subu	v0,v0,at
    41e0:	00021080 	sll	v0,v0,0x2
    41e4:	00411023 	subu	v0,v0,at
    41e8:	00021040 	sll	v0,v0,0x1
    41ec:	00021400 	sll	v0,v0,0x10
    41f0:	164c0041 	bne	s2,t4,42f8 <func_800B4E7C+0x2fcc>
    41f4:	00021403 	sra	v0,v0,0x10
    41f8:	87af0102 	lh	t7,258(sp)
    41fc:	2418007f 	li	t8,127
    4200:	240e00ff 	li	t6,255
    4204:	2409007f 	li	t1,127
    4208:	24190080 	li	t9,128
    420c:	240a0005 	li	t2,5
    4210:	afaa0034 	sw	t2,52(sp)
    4214:	afb90030 	sw	t9,48(sp)
    4218:	afa9002c 	sw	t1,44(sp)
    421c:	afae0028 	sw	t6,40(sp)
    4220:	afb80024 	sw	t8,36(sp)
    4224:	afa20014 	sw	v0,20(sp)
    4228:	e7b40018 	swc1	$f20,24(sp)
    422c:	e7b4001c 	swc1	$f20,28(sp)
    4230:	e7b40020 	swc1	$f20,32(sp)
    4234:	afaf0010 	sw	t7,16(sp)
    4238:	8eeb008c 	lw	t3,140(s7)
    423c:	87a70100 	lh	a3,256(sp)
    4240:	c7ac00ac 	lwc1	$f12,172(sp)
    4244:	8d6d00bc 	lw	t5,188(t3)
    4248:	00073823 	negu	a3,a3
    424c:	00073c00 	sll	a3,a3,0x10
    4250:	00073c03 	sra	a3,a3,0x10
    4254:	a7a200aa 	sh	v0,170(sp)
    4258:	c7ae00b0 	lwc1	$f14,176(sp)
    425c:	8fa600b4 	lw	a2,180(sp)
    4260:	0c000000 	jal	0 <func_800B3B50>
    4264:	afad0038 	sw	t5,56(sp)
    4268:	3c013fc0 	lui	at,0x3fc0
    426c:	44812000 	mtc1	at,$f4
    4270:	3c014000 	lui	at,0x4000
    4274:	44813000 	mtc1	at,$f6
    4278:	3c013f80 	lui	at,0x3f80
    427c:	87a200aa 	lh	v0,170(sp)
    4280:	44814000 	mtc1	at,$f8
    4284:	87ac0102 	lh	t4,258(sp)
    4288:	240f007f 	li	t7,127
    428c:	241800ff 	li	t8,255
    4290:	240e007f 	li	t6,127
    4294:	24090080 	li	t1,128
    4298:	24190004 	li	t9,4
    429c:	afb90034 	sw	t9,52(sp)
    42a0:	afa90030 	sw	t1,48(sp)
    42a4:	afae002c 	sw	t6,44(sp)
    42a8:	afb80028 	sw	t8,40(sp)
    42ac:	afaf0024 	sw	t7,36(sp)
    42b0:	e7a40018 	swc1	$f4,24(sp)
    42b4:	e7a6001c 	swc1	$f6,28(sp)
    42b8:	afa20014 	sw	v0,20(sp)
    42bc:	afac0010 	sw	t4,16(sp)
    42c0:	e7a80020 	swc1	$f8,32(sp)
    42c4:	8eea008c 	lw	t2,140(s7)
    42c8:	87a70100 	lh	a3,256(sp)
    42cc:	c7ac00b8 	lwc1	$f12,184(sp)
    42d0:	8d4b00bc 	lw	t3,188(t2)
    42d4:	00073823 	negu	a3,a3
    42d8:	00073c00 	sll	a3,a3,0x10
    42dc:	00073c03 	sra	a3,a3,0x10
    42e0:	c7ae00bc 	lwc1	$f14,188(sp)
    42e4:	8fa600c0 	lw	a2,192(sp)
    42e8:	0c000000 	jal	0 <func_800B3B50>
    42ec:	afab0038 	sw	t3,56(sp)
    42f0:	10000040 	b	43f4 <func_800B4E7C+0x30c8>
    42f4:	86aa0080 	lh	t2,128(s5)
    42f8:	87ad0102 	lh	t5,258(sp)
    42fc:	240c00ff 	li	t4,255
    4300:	240f007f 	li	t7,127
    4304:	2418007f 	li	t8,127
    4308:	240e0080 	li	t6,128
    430c:	24090005 	li	t1,5
    4310:	afa90034 	sw	t1,52(sp)
    4314:	afae0030 	sw	t6,48(sp)
    4318:	afb8002c 	sw	t8,44(sp)
    431c:	afaf0028 	sw	t7,40(sp)
    4320:	afac0024 	sw	t4,36(sp)
    4324:	afa20014 	sw	v0,20(sp)
    4328:	e7b40018 	swc1	$f20,24(sp)
    432c:	e7b4001c 	swc1	$f20,28(sp)
    4330:	e7b40020 	swc1	$f20,32(sp)
    4334:	afad0010 	sw	t5,16(sp)
    4338:	8ef9008c 	lw	t9,140(s7)
    433c:	87a70100 	lh	a3,256(sp)
    4340:	c7ac00ac 	lwc1	$f12,172(sp)
    4344:	8f2a00bc 	lw	t2,188(t9)
    4348:	00073823 	negu	a3,a3
    434c:	00073c00 	sll	a3,a3,0x10
    4350:	00073c03 	sra	a3,a3,0x10
    4354:	a7a200aa 	sh	v0,170(sp)
    4358:	c7ae00b0 	lwc1	$f14,176(sp)
    435c:	8fa600b4 	lw	a2,180(sp)
    4360:	0c000000 	jal	0 <func_800B3B50>
    4364:	afaa0038 	sw	t2,56(sp)
    4368:	3c013fc0 	lui	at,0x3fc0
    436c:	44815000 	mtc1	at,$f10
    4370:	3c014000 	lui	at,0x4000
    4374:	44812000 	mtc1	at,$f4
    4378:	3c013f80 	lui	at,0x3f80
    437c:	87a200aa 	lh	v0,170(sp)
    4380:	44813000 	mtc1	at,$f6
    4384:	87ab0102 	lh	t3,258(sp)
    4388:	240d00ff 	li	t5,255
    438c:	240c007f 	li	t4,127
    4390:	240f007f 	li	t7,127
    4394:	24180080 	li	t8,128
    4398:	240e0004 	li	t6,4
    439c:	afae0034 	sw	t6,52(sp)
    43a0:	afb80030 	sw	t8,48(sp)
    43a4:	afaf002c 	sw	t7,44(sp)
    43a8:	afac0028 	sw	t4,40(sp)
    43ac:	afad0024 	sw	t5,36(sp)
    43b0:	e7aa0018 	swc1	$f10,24(sp)
    43b4:	e7a4001c 	swc1	$f4,28(sp)
    43b8:	afa20014 	sw	v0,20(sp)
    43bc:	afab0010 	sw	t3,16(sp)
    43c0:	e7a60020 	swc1	$f6,32(sp)
    43c4:	8ee9008c 	lw	t1,140(s7)
    43c8:	87a70100 	lh	a3,256(sp)
    43cc:	c7ac00b8 	lwc1	$f12,184(sp)
    43d0:	8d3900bc 	lw	t9,188(t1)
    43d4:	00073823 	negu	a3,a3
    43d8:	00073c00 	sll	a3,a3,0x10
    43dc:	00073c03 	sra	a3,a3,0x10
    43e0:	c7ae00bc 	lwc1	$f14,188(sp)
    43e4:	8fa600c0 	lw	a2,192(sp)
    43e8:	0c000000 	jal	0 <func_800B3B50>
    43ec:	afb90038 	sw	t9,56(sp)
    43f0:	86aa0080 	lh	t2,128(s5)
    43f4:	26520001 	addiu	s2,s2,1
    43f8:	26730010 	addiu	s3,s3,16
    43fc:	254bffff 	addiu	t3,t2,-1
    4400:	024b082a 	slt	at,s2,t3
    4404:	26100010 	addiu	s0,s0,16
    4408:	1420ff57 	bnez	at,4168 <func_800B4E7C+0x2e3c>
    440c:	26310010 	addiu	s1,s1,16
    4410:	100001e8 	b	4bb4 <func_800B4E7C+0x3888>
    4414:	8fbf006c 	lw	ra,108(sp)
    4418:	3c0d0000 	lui	t5,0x0
    441c:	8dad0000 	lw	t5,0(t5)
    4420:	3c014270 	lui	at,0x4270
    4424:	44814000 	mtc1	at,$f8
    4428:	a5b20194 	sh	s2,404(t5)
    442c:	a6a0004c 	sh	zero,76(s5)
    4430:	86ac004c 	lh	t4,76(s5)
    4434:	3c013fb4 	lui	at,0x3fb4
    4438:	44813000 	mtc1	at,$f6
    443c:	448c5000 	mtc1	t4,$f10
    4440:	e6a80048 	swc1	$f8,72(s5)
    4444:	3c0f0000 	lui	t7,0x0
    4448:	46805120 	cvt.s.w	$f4,$f10
    444c:	2401fffd 	li	at,-3
    4450:	26f3005c 	addiu	s3,s7,92
    4454:	46062202 	mul.s	$f8,$f4,$f6
    4458:	e6a80050 	swc1	$f8,80(s5)
    445c:	8def0000 	lw	t7,0(t7)
    4460:	95f80050 	lhu	t8,80(t7)
    4464:	03017027 	nor	t6,t8,at
    4468:	15c00013 	bnez	t6,44b8 <func_800B4E7C+0x318c>
    446c:	3c090000 	lui	t1,0x0
    4470:	3c190000 	lui	t9,0x0
    4474:	27390000 	addiu	t9,t9,0
    4478:	25270000 	addiu	a3,t1,0
    447c:	3c050000 	lui	a1,0x0
    4480:	24a50000 	addiu	a1,a1,0
    4484:	afa70010 	sw	a3,16(sp)
    4488:	afb90014 	sw	t9,20(sp)
    448c:	24044809 	li	a0,18441
    4490:	0c000000 	jal	0 <func_800B3B50>
    4494:	24060004 	li	a2,4
    4498:	86aa0078 	lh	t2,120(s5)
    449c:	24010003 	li	at,3
    44a0:	240cffff 	li	t4,-1
    44a4:	254b0001 	addiu	t3,t2,1
    44a8:	0161001a 	div	zero,t3,at
    44ac:	00006810 	mfhi	t5
    44b0:	a6ad0078 	sh	t5,120(s5)
    44b4:	aeac0038 	sw	t4,56(s5)
    44b8:	3c070000 	lui	a3,0x0
    44bc:	8ce70000 	lw	a3,0(a3)
    44c0:	2404000e 	li	a0,14
    44c4:	24050005 	li	a1,5
    44c8:	0c000000 	jal	0 <func_800B3B50>
    44cc:	00003025 	move	a2,zero
    44d0:	86af0078 	lh	t7,120(s5)
    44d4:	55e00004 	bnezl	t7,44e8 <func_800B4E7C+0x31bc>
    44d8:	24100004 	li	s0,4
    44dc:	10000002 	b	44e8 <func_800B4E7C+0x31bc>
    44e0:	24100007 	li	s0,7
    44e4:	24100004 	li	s0,4
    44e8:	3c070000 	lui	a3,0x0
    44ec:	24e70000 	addiu	a3,a3,0
    44f0:	24040009 	li	a0,9
    44f4:	24050006 	li	a1,6
    44f8:	0c000000 	jal	0 <func_800B3B50>
    44fc:	320600ff 	andi	a2,s0,0xff
    4500:	86b80078 	lh	t8,120(s5)
    4504:	24010001 	li	at,1
    4508:	57010004 	bnel	t8,at,451c <func_800B4E7C+0x31f0>
    450c:	24100004 	li	s0,4
    4510:	10000002 	b	451c <func_800B4E7C+0x31f0>
    4514:	24100007 	li	s0,7
    4518:	24100004 	li	s0,4
    451c:	3c070000 	lui	a3,0x0
    4520:	24e70000 	addiu	a3,a3,0
    4524:	24040011 	li	a0,17
    4528:	24050006 	li	a1,6
    452c:	0c000000 	jal	0 <func_800B3B50>
    4530:	320600ff 	andi	a2,s0,0xff
    4534:	86ae0078 	lh	t6,120(s5)
    4538:	24010002 	li	at,2
    453c:	55c10004 	bnel	t6,at,4550 <func_800B4E7C+0x3224>
    4540:	24100004 	li	s0,4
    4544:	10000002 	b	4550 <func_800B4E7C+0x3224>
    4548:	24100007 	li	s0,7
    454c:	24100004 	li	s0,4
    4550:	3c070000 	lui	a3,0x0
    4554:	24e70000 	addiu	a3,a3,0
    4558:	24040018 	li	a0,24
    455c:	24050006 	li	a1,6
    4560:	0c000000 	jal	0 <func_800B3B50>
    4564:	320600ff 	andi	a2,s0,0xff
    4568:	3c090000 	lui	t1,0x0
    456c:	8d290000 	lw	t1,0(t1)
    4570:	51200004 	beqzl	t1,4584 <func_800B4E7C+0x3258>
    4574:	24100004 	li	s0,4
    4578:	10000002 	b	4584 <func_800B4E7C+0x3258>
    457c:	24100003 	li	s0,3
    4580:	24100004 	li	s0,4
    4584:	3c070000 	lui	a3,0x0
    4588:	8ce70000 	lw	a3,0(a3)
    458c:	24040003 	li	a0,3
    4590:	24050016 	li	a1,22
    4594:	0c000000 	jal	0 <func_800B3B50>
    4598:	320600ff 	andi	a2,s0,0xff
    459c:	24190058 	li	t9,88
    45a0:	a3b90110 	sb	t9,272(sp)
    45a4:	c6aa0004 	lwc1	$f10,4(s5)
    45a8:	27b10111 	addiu	s1,sp,273
    45ac:	02202825 	move	a1,s1
    45b0:	4600510d 	trunc.w.s	$f4,$f10
    45b4:	24060006 	li	a2,6
    45b8:	44042000 	mfc1	a0,$f4
    45bc:	00000000 	nop
    45c0:	00042400 	sll	a0,a0,0x10
    45c4:	0c000000 	jal	0 <func_800B3B50>
    45c8:	00042403 	sra	a0,a0,0x10
    45cc:	27b20110 	addiu	s2,sp,272
    45d0:	02403825 	move	a3,s2
    45d4:	24040003 	li	a0,3
    45d8:	24050017 	li	a1,23
    45dc:	0c000000 	jal	0 <func_800B3B50>
    45e0:	24060002 	li	a2,2
    45e4:	240b0059 	li	t3,89
    45e8:	a3ab0110 	sb	t3,272(sp)
    45ec:	c6a60008 	lwc1	$f6,8(s5)
    45f0:	02202825 	move	a1,s1
    45f4:	24060006 	li	a2,6
    45f8:	4600320d 	trunc.w.s	$f8,$f6
    45fc:	44044000 	mfc1	a0,$f8
    4600:	00000000 	nop
    4604:	00042400 	sll	a0,a0,0x10
    4608:	0c000000 	jal	0 <func_800B3B50>
    460c:	00042403 	sra	a0,a0,0x10
    4610:	24040003 	li	a0,3
    4614:	24050018 	li	a1,24
    4618:	24060002 	li	a2,2
    461c:	0c000000 	jal	0 <func_800B3B50>
    4620:	02403825 	move	a3,s2
    4624:	240c005a 	li	t4,90
    4628:	a3ac0110 	sb	t4,272(sp)
    462c:	c6aa000c 	lwc1	$f10,12(s5)
    4630:	02202825 	move	a1,s1
    4634:	24060006 	li	a2,6
    4638:	4600510d 	trunc.w.s	$f4,$f10
    463c:	44042000 	mfc1	a0,$f4
    4640:	00000000 	nop
    4644:	00042400 	sll	a0,a0,0x10
    4648:	0c000000 	jal	0 <func_800B3B50>
    464c:	00042403 	sra	a0,a0,0x10
    4650:	24040003 	li	a0,3
    4654:	24050019 	li	a1,25
    4658:	24060002 	li	a2,2
    465c:	0c000000 	jal	0 <func_800B3B50>
    4660:	02403825 	move	a3,s2
    4664:	3c180000 	lui	t8,0x0
    4668:	8f180000 	lw	t8,0(t8)
    466c:	53000004 	beqzl	t8,4680 <func_800B4E7C+0x3354>
    4670:	24100003 	li	s0,3
    4674:	10000002 	b	4680 <func_800B4E7C+0x3354>
    4678:	24100004 	li	s0,4
    467c:	24100003 	li	s0,3
    4680:	3c070000 	lui	a3,0x0
    4684:	8ce70000 	lw	a3,0(a3)
    4688:	2404001e 	li	a0,30
    468c:	24050016 	li	a1,22
    4690:	0c000000 	jal	0 <func_800B3B50>
    4694:	320600ff 	andi	a2,s0,0xff
    4698:	240e0058 	li	t6,88
    469c:	a3ae0110 	sb	t6,272(sp)
    46a0:	c6a60010 	lwc1	$f6,16(s5)
    46a4:	02202825 	move	a1,s1
    46a8:	24060006 	li	a2,6
    46ac:	4600320d 	trunc.w.s	$f8,$f6
    46b0:	44044000 	mfc1	a0,$f8
    46b4:	00000000 	nop
    46b8:	00042400 	sll	a0,a0,0x10
    46bc:	0c000000 	jal	0 <func_800B3B50>
    46c0:	00042403 	sra	a0,a0,0x10
    46c4:	2404001e 	li	a0,30
    46c8:	24050017 	li	a1,23
    46cc:	24060002 	li	a2,2
    46d0:	0c000000 	jal	0 <func_800B3B50>
    46d4:	02403825 	move	a3,s2
    46d8:	24190059 	li	t9,89
    46dc:	a3b90110 	sb	t9,272(sp)
    46e0:	c6aa0014 	lwc1	$f10,20(s5)
    46e4:	02202825 	move	a1,s1
    46e8:	24060006 	li	a2,6
    46ec:	4600510d 	trunc.w.s	$f4,$f10
    46f0:	44042000 	mfc1	a0,$f4
    46f4:	00000000 	nop
    46f8:	00042400 	sll	a0,a0,0x10
    46fc:	0c000000 	jal	0 <func_800B3B50>
    4700:	00042403 	sra	a0,a0,0x10
    4704:	2404001e 	li	a0,30
    4708:	24050018 	li	a1,24
    470c:	24060002 	li	a2,2
    4710:	0c000000 	jal	0 <func_800B3B50>
    4714:	02403825 	move	a3,s2
    4718:	240b005a 	li	t3,90
    471c:	a3ab0110 	sb	t3,272(sp)
    4720:	c6a60018 	lwc1	$f6,24(s5)
    4724:	02202825 	move	a1,s1
    4728:	24060006 	li	a2,6
    472c:	4600320d 	trunc.w.s	$f8,$f6
    4730:	44044000 	mfc1	a0,$f8
    4734:	00000000 	nop
    4738:	00042400 	sll	a0,a0,0x10
    473c:	0c000000 	jal	0 <func_800B3B50>
    4740:	00042403 	sra	a0,a0,0x10
    4744:	2404001e 	li	a0,30
    4748:	24050019 	li	a1,25
    474c:	24060002 	li	a2,2
    4750:	0c000000 	jal	0 <func_800B3B50>
    4754:	02403825 	move	a3,s2
    4758:	3c0c0000 	lui	t4,0x0
    475c:	8d8c0000 	lw	t4,0(t4)
    4760:	15800003 	bnez	t4,4770 <func_800B4E7C+0x3444>
    4764:	3c100000 	lui	s0,0x0
    4768:	10000003 	b	4778 <func_800B4E7C+0x344c>
    476c:	8e100000 	lw	s0,0(s0)
    4770:	3c100000 	lui	s0,0x0
    4774:	8e100000 	lw	s0,0(s0)
    4778:	2404000d 	li	a0,13
    477c:	24050018 	li	a1,24
    4780:	24060003 	li	a2,3
    4784:	0c000000 	jal	0 <func_800B3B50>
    4788:	02003825 	move	a3,s0
    478c:	87af0108 	lh	t7,264(sp)
    4790:	3c010000 	lui	at,0x0
    4794:	c4260000 	lwc1	$f6,0(at)
    4798:	448f5000 	mtc1	t7,$f10
    479c:	3c050000 	lui	a1,0x0
    47a0:	24a50000 	addiu	a1,a1,0
    47a4:	46805120 	cvt.s.w	$f4,$f10
    47a8:	24060004 	li	a2,4
    47ac:	46062202 	mul.s	$f8,$f4,$f6
    47b0:	4600428d 	trunc.w.s	$f10,$f8
    47b4:	44045000 	mfc1	a0,$f10
    47b8:	00000000 	nop
    47bc:	00042400 	sll	a0,a0,0x10
    47c0:	0c000000 	jal	0 <func_800B3B50>
    47c4:	00042403 	sra	a0,a0,0x10
    47c8:	3c070000 	lui	a3,0x0
    47cc:	24e70000 	addiu	a3,a3,0
    47d0:	2404000f 	li	a0,15
    47d4:	24050017 	li	a1,23
    47d8:	0c000000 	jal	0 <func_800B3B50>
    47dc:	24060003 	li	a2,3
    47e0:	87ae010a 	lh	t6,266(sp)
    47e4:	3c010000 	lui	at,0x0
    47e8:	c4280000 	lwc1	$f8,0(at)
    47ec:	448e2000 	mtc1	t6,$f4
    47f0:	3c050000 	lui	a1,0x0
    47f4:	24a50000 	addiu	a1,a1,0
    47f8:	468021a0 	cvt.s.w	$f6,$f4
    47fc:	24060004 	li	a2,4
    4800:	46083282 	mul.s	$f10,$f6,$f8
    4804:	4600510d 	trunc.w.s	$f4,$f10
    4808:	44042000 	mfc1	a0,$f4
    480c:	00000000 	nop
    4810:	00042400 	sll	a0,a0,0x10
    4814:	0c000000 	jal	0 <func_800B3B50>
    4818:	00042403 	sra	a0,a0,0x10
    481c:	3c070000 	lui	a3,0x0
    4820:	24e70000 	addiu	a3,a3,0
    4824:	2404000f 	li	a0,15
    4828:	24050018 	li	a1,24
    482c:	0c000000 	jal	0 <func_800B3B50>
    4830:	24060003 	li	a2,3
    4834:	c7a00104 	lwc1	$f0,260(sp)
    4838:	3c050000 	lui	a1,0x0
    483c:	24a50000 	addiu	a1,a1,0
    4840:	4600018d 	trunc.w.s	$f6,$f0
    4844:	24060006 	li	a2,6
    4848:	44043000 	mfc1	a0,$f6
    484c:	00000000 	nop
    4850:	00042400 	sll	a0,a0,0x10
    4854:	0c000000 	jal	0 <func_800B3B50>
    4858:	00042403 	sra	a0,a0,0x10
    485c:	3c070000 	lui	a3,0x0
    4860:	24e70000 	addiu	a3,a3,0
    4864:	2404000f 	li	a0,15
    4868:	24050019 	li	a1,25
    486c:	0c000000 	jal	0 <func_800B3B50>
    4870:	24060003 	li	a2,3
    4874:	8eaa003c 	lw	t2,60(s5)
    4878:	11400008 	beqz	t2,489c <func_800B4E7C+0x3570>
    487c:	3c070000 	lui	a3,0x0
    4880:	8ce70000 	lw	a3,0(a3)
    4884:	24040010 	li	a0,16
    4888:	2405001a 	li	a1,26
    488c:	0c000000 	jal	0 <func_800B3B50>
    4890:	24060001 	li	a2,1
    4894:	10000007 	b	48b4 <func_800B4E7C+0x3588>
    4898:	00000000 	nop
    489c:	3c070000 	lui	a3,0x0
    48a0:	8ce70000 	lw	a3,0(a3)
    48a4:	24040010 	li	a0,16
    48a8:	2405001a 	li	a1,26
    48ac:	0c000000 	jal	0 <func_800B3B50>
    48b0:	24060001 	li	a2,1
    48b4:	3c020000 	lui	v0,0x0
    48b8:	8c420000 	lw	v0,0(v0)
    48bc:	24010032 	li	at,50
    48c0:	27b000a0 	addiu	s0,sp,160
    48c4:	24420001 	addiu	v0,v0,1
    48c8:	0041001a 	div	zero,v0,at
    48cc:	00001010 	mfhi	v0
    48d0:	3c010000 	lui	at,0x0
    48d4:	ac220000 	sw	v0,0(at)
    48d8:	02002025 	move	a0,s0
    48dc:	02602825 	move	a1,s3
    48e0:	0c000000 	jal	0 <func_800B3B50>
    48e4:	02803025 	move	a2,s4
    48e8:	c6a80008 	lwc1	$f8,8(s5)
    48ec:	c6ac0004 	lwc1	$f12,4(s5)
    48f0:	8ea6000c 	lw	a2,12(s5)
    48f4:	3c010000 	lui	at,0x0
    48f8:	c4200000 	lwc1	$f0,0(at)
    48fc:	3c013f80 	lui	at,0x3f80
    4900:	44815000 	mtc1	at,$f10
    4904:	3c014000 	lui	at,0x4000
    4908:	44812000 	mtc1	at,$f4
    490c:	240b00ff 	li	t3,255
    4910:	240d00ff 	li	t5,255
    4914:	240c007f 	li	t4,127
    4918:	240f002d 	li	t7,45
    491c:	afaf0030 	sw	t7,48(sp)
    4920:	afac002c 	sw	t4,44(sp)
    4924:	afad0028 	sw	t5,40(sp)
    4928:	afab0024 	sw	t3,36(sp)
    492c:	afa00034 	sw	zero,52(sp)
    4930:	afa00014 	sw	zero,20(sp)
    4934:	afa00010 	sw	zero,16(sp)
    4938:	e7a00018 	swc1	$f0,24(sp)
    493c:	e7a00020 	swc1	$f0,32(sp)
    4940:	e7a4001c 	swc1	$f4,28(sp)
    4944:	8ef8008c 	lw	t8,140(s7)
    4948:	00003825 	move	a3,zero
    494c:	460a4380 	add.s	$f14,$f8,$f10
    4950:	8f0e00bc 	lw	t6,188(t8)
    4954:	0c000000 	jal	0 <func_800B3B50>
    4958:	afae0038 	sw	t6,56(sp)
    495c:	c6a60008 	lwc1	$f6,8(s5)
    4960:	c6ac0004 	lwc1	$f12,4(s5)
    4964:	8ea6000c 	lw	a2,12(s5)
    4968:	3c010000 	lui	at,0x0
    496c:	c4200000 	lwc1	$f0,0(at)
    4970:	3c013f80 	lui	at,0x3f80
    4974:	44814000 	mtc1	at,$f8
    4978:	3c014000 	lui	at,0x4000
    497c:	44815000 	mtc1	at,$f10
    4980:	2409007f 	li	t1,127
    4984:	241900ff 	li	t9,255
    4988:	240a00ff 	li	t2,255
    498c:	240b002d 	li	t3,45
    4990:	afab0030 	sw	t3,48(sp)
    4994:	afaa002c 	sw	t2,44(sp)
    4998:	afb90028 	sw	t9,40(sp)
    499c:	afa90024 	sw	t1,36(sp)
    49a0:	afa00034 	sw	zero,52(sp)
    49a4:	afa00014 	sw	zero,20(sp)
    49a8:	afa00010 	sw	zero,16(sp)
    49ac:	e7a0001c 	swc1	$f0,28(sp)
    49b0:	e7a00020 	swc1	$f0,32(sp)
    49b4:	e7aa0018 	swc1	$f10,24(sp)
    49b8:	8eed008c 	lw	t5,140(s7)
    49bc:	00003825 	move	a3,zero
    49c0:	46083380 	add.s	$f14,$f6,$f8
    49c4:	8dac00bc 	lw	t4,188(t5)
    49c8:	0c000000 	jal	0 <func_800B3B50>
    49cc:	afac0038 	sw	t4,56(sp)
    49d0:	c6a40008 	lwc1	$f4,8(s5)
    49d4:	c6ac0004 	lwc1	$f12,4(s5)
    49d8:	8ea6000c 	lw	a2,12(s5)
    49dc:	3c010000 	lui	at,0x0
    49e0:	c4200000 	lwc1	$f0,0(at)
    49e4:	3c013f80 	lui	at,0x3f80
    49e8:	44813000 	mtc1	at,$f6
    49ec:	3c014000 	lui	at,0x4000
    49f0:	44814000 	mtc1	at,$f8
    49f4:	240f00ff 	li	t7,255
    49f8:	2418007f 	li	t8,127
    49fc:	240e00ff 	li	t6,255
    4a00:	2409002d 	li	t1,45
    4a04:	afa90030 	sw	t1,48(sp)
    4a08:	afae002c 	sw	t6,44(sp)
    4a0c:	afb80028 	sw	t8,40(sp)
    4a10:	afaf0024 	sw	t7,36(sp)
    4a14:	afa00034 	sw	zero,52(sp)
    4a18:	afa00014 	sw	zero,20(sp)
    4a1c:	afa00010 	sw	zero,16(sp)
    4a20:	e7a00018 	swc1	$f0,24(sp)
    4a24:	e7a0001c 	swc1	$f0,28(sp)
    4a28:	e7a80020 	swc1	$f8,32(sp)
    4a2c:	8ef9008c 	lw	t9,140(s7)
    4a30:	00003825 	move	a3,zero
    4a34:	46062380 	add.s	$f14,$f4,$f6
    4a38:	8f2a00bc 	lw	t2,188(t9)
    4a3c:	0c000000 	jal	0 <func_800B3B50>
    4a40:	afaa0038 	sw	t2,56(sp)
    4a44:	c6ec005c 	lwc1	$f12,92(s7)
    4a48:	c6ee0060 	lwc1	$f14,96(s7)
    4a4c:	8ee60064 	lw	a2,100(s7)
    4a50:	87ab00a6 	lh	t3,166(sp)
    4a54:	240d00ff 	li	t5,255
    4a58:	240c007f 	li	t4,127
    4a5c:	240f007f 	li	t7,127
    4a60:	24180080 	li	t8,128
    4a64:	240e0005 	li	t6,5
    4a68:	afae0034 	sw	t6,52(sp)
    4a6c:	afb80030 	sw	t8,48(sp)
    4a70:	afaf002c 	sw	t7,44(sp)
    4a74:	afac0028 	sw	t4,40(sp)
    4a78:	afad0024 	sw	t5,36(sp)
    4a7c:	e7b40020 	swc1	$f20,32(sp)
    4a80:	e7b4001c 	swc1	$f20,28(sp)
    4a84:	e7b40018 	swc1	$f20,24(sp)
    4a88:	afa00014 	sw	zero,20(sp)
    4a8c:	afab0010 	sw	t3,16(sp)
    4a90:	8ee9008c 	lw	t1,140(s7)
    4a94:	87a700a4 	lh	a3,164(sp)
    4a98:	8d3900bc 	lw	t9,188(t1)
    4a9c:	00073823 	negu	a3,a3
    4aa0:	00073c00 	sll	a3,a3,0x10
    4aa4:	00073c03 	sra	a3,a3,0x10
    4aa8:	0c000000 	jal	0 <func_800B3B50>
    4aac:	afb90038 	sw	t9,56(sp)
    4ab0:	c6ec0050 	lwc1	$f12,80(s7)
    4ab4:	c6ee0054 	lwc1	$f14,84(s7)
    4ab8:	8ee60058 	lw	a2,88(s7)
    4abc:	3c013fc0 	lui	at,0x3fc0
    4ac0:	44815000 	mtc1	at,$f10
    4ac4:	3c014000 	lui	at,0x4000
    4ac8:	44812000 	mtc1	at,$f4
    4acc:	3c013f80 	lui	at,0x3f80
    4ad0:	44813000 	mtc1	at,$f6
    4ad4:	87aa00a6 	lh	t2,166(sp)
    4ad8:	240b00ff 	li	t3,255
    4adc:	240d007f 	li	t5,127
    4ae0:	240c007f 	li	t4,127
    4ae4:	240f0080 	li	t7,128
    4ae8:	24180004 	li	t8,4
    4aec:	afb80034 	sw	t8,52(sp)
    4af0:	afaf0030 	sw	t7,48(sp)
    4af4:	afac002c 	sw	t4,44(sp)
    4af8:	afad0028 	sw	t5,40(sp)
    4afc:	afab0024 	sw	t3,36(sp)
    4b00:	afa00014 	sw	zero,20(sp)
    4b04:	e7aa0018 	swc1	$f10,24(sp)
    4b08:	e7a4001c 	swc1	$f4,28(sp)
    4b0c:	afaa0010 	sw	t2,16(sp)
    4b10:	e7a60020 	swc1	$f6,32(sp)
    4b14:	8eee008c 	lw	t6,140(s7)
    4b18:	87a700a4 	lh	a3,164(sp)
    4b1c:	8dc900bc 	lw	t1,188(t6)
    4b20:	00073823 	negu	a3,a3
    4b24:	00073c00 	sll	a3,a3,0x10
    4b28:	00073c03 	sra	a3,a3,0x10
    4b2c:	0c000000 	jal	0 <func_800B3B50>
    4b30:	afa90038 	sw	t1,56(sp)
    4b34:	02002025 	move	a0,s0
    4b38:	26e50074 	addiu	a1,s7,116
    4b3c:	0c000000 	jal	0 <func_800B3B50>
    4b40:	02803025 	move	a2,s4
    4b44:	c6ec0074 	lwc1	$f12,116(s7)
    4b48:	c6ee0078 	lwc1	$f14,120(s7)
    4b4c:	8ee6007c 	lw	a2,124(s7)
    4b50:	87b900a6 	lh	t9,166(sp)
    4b54:	240a00ff 	li	t2,255
    4b58:	240b00c0 	li	t3,192
    4b5c:	240d007f 	li	t5,127
    4b60:	240c0050 	li	t4,80
    4b64:	240f0005 	li	t7,5
    4b68:	afaf0034 	sw	t7,52(sp)
    4b6c:	afac0030 	sw	t4,48(sp)
    4b70:	afad002c 	sw	t5,44(sp)
    4b74:	afab0028 	sw	t3,40(sp)
    4b78:	afaa0024 	sw	t2,36(sp)
    4b7c:	e7b40020 	swc1	$f20,32(sp)
    4b80:	e7b4001c 	swc1	$f20,28(sp)
    4b84:	e7b40018 	swc1	$f20,24(sp)
    4b88:	afa00014 	sw	zero,20(sp)
    4b8c:	afb90010 	sw	t9,16(sp)
    4b90:	8ef8008c 	lw	t8,140(s7)
    4b94:	87a700a4 	lh	a3,164(sp)
    4b98:	8f0e00bc 	lw	t6,188(t8)
    4b9c:	00073823 	negu	a3,a3
    4ba0:	00073c00 	sll	a3,a3,0x10
    4ba4:	00073c03 	sra	a3,a3,0x10
    4ba8:	0c000000 	jal	0 <func_800B3B50>
    4bac:	afae0038 	sw	t6,56(sp)
    4bb0:	8fbf006c 	lw	ra,108(sp)
    4bb4:	d7b40040 	ldc1	$f20,64(sp)
    4bb8:	8fb0004c 	lw	s0,76(sp)
    4bbc:	8fb10050 	lw	s1,80(sp)
    4bc0:	8fb20054 	lw	s2,84(sp)
    4bc4:	8fb30058 	lw	s3,88(sp)
    4bc8:	8fb4005c 	lw	s4,92(sp)
    4bcc:	8fb50060 	lw	s5,96(sp)
    4bd0:	8fb60064 	lw	s6,100(sp)
    4bd4:	8fb70068 	lw	s7,104(sp)
    4bd8:	03e00008 	jr	ra
    4bdc:	27bd0128 	addiu	sp,sp,296

00004be0 <func_800B8730>:
    4be0:	3c0e0000 	lui	t6,0x0
    4be4:	91ce0000 	lbu	t6,0(t6)
    4be8:	2404004f 	li	a0,79
    4bec:	3c0f0000 	lui	t7,0x0
    4bf0:	108e0003 	beq	a0,t6,4c00 <func_800B8730+0x20>
    4bf4:	00000000 	nop
    4bf8:	03e00008 	jr	ra
    4bfc:	24020041 	li	v0,65
    4c00:	91ef0000 	lbu	t7,0(t7)
    4c04:	3c020000 	lui	v0,0x0
    4c08:	24420000 	addiu	v0,v0,0
    4c0c:	108f0003 	beq	a0,t7,4c1c <func_800B8730+0x3c>
    4c10:	24030002 	li	v1,2
    4c14:	03e00008 	jr	ra
    4c18:	24020042 	li	v0,66
    4c1c:	2405001a 	li	a1,26
    4c20:	90580000 	lbu	t8,0(v0)
    4c24:	50980004 	beql	a0,t8,4c38 <func_800B8730+0x58>
    4c28:	90590001 	lbu	t9,1(v0)
    4c2c:	03e00008 	jr	ra
    4c30:	24620041 	addiu	v0,v1,65
    4c34:	90590001 	lbu	t9,1(v0)
    4c38:	50990004 	beql	a0,t9,4c4c <func_800B8730+0x6c>
    4c3c:	90480002 	lbu	t0,2(v0)
    4c40:	03e00008 	jr	ra
    4c44:	24620042 	addiu	v0,v1,66
    4c48:	90480002 	lbu	t0,2(v0)
    4c4c:	50880004 	beql	a0,t0,4c60 <func_800B8730+0x80>
    4c50:	90490003 	lbu	t1,3(v0)
    4c54:	03e00008 	jr	ra
    4c58:	24620043 	addiu	v0,v1,67
    4c5c:	90490003 	lbu	t1,3(v0)
    4c60:	50890004 	beql	a0,t1,4c74 <func_800B8730+0x94>
    4c64:	24630004 	addiu	v1,v1,4
    4c68:	03e00008 	jr	ra
    4c6c:	24620044 	addiu	v0,v1,68
    4c70:	24630004 	addiu	v1,v1,4
    4c74:	1465ffea 	bne	v1,a1,4c20 <func_800B8730+0x40>
    4c78:	24420004 	addiu	v0,v0,4
    4c7c:	2402003f 	li	v0,63
    4c80:	03e00008 	jr	ra
    4c84:	00000000 	nop

00004c88 <func_800B87D8>:
    4c88:	27bdffd8 	addiu	sp,sp,-40
    4c8c:	3c0f0000 	lui	t7,0x0
    4c90:	afb00014 	sw	s0,20(sp)
    4c94:	25ef0000 	addiu	t7,t7,0
    4c98:	00047100 	sll	t6,a0,0x4
    4c9c:	afbf001c 	sw	ra,28(sp)
    4ca0:	afb10018 	sw	s1,24(sp)
    4ca4:	01cf8021 	addu	s0,t6,t7
    4ca8:	24180061 	li	t8,97
    4cac:	00a08825 	move	s1,a1
    4cb0:	0c000000 	jal	0 <func_800B3B50>
    4cb4:	a2180001 	sb	t8,1(s0)
    4cb8:	304800ff 	andi	t0,v0,0xff
    4cbc:	3c010000 	lui	at,0x0
    4cc0:	a2020000 	sb	v0,0(s0)
    4cc4:	00280821 	addu	at,at,t0
    4cc8:	2419004f 	li	t9,79
    4ccc:	a0390000 	sb	t9,0(at)
    4cd0:	86270004 	lh	a3,4(s1)
    4cd4:	3c050000 	lui	a1,0x0
    4cd8:	24a50000 	addiu	a1,a1,0
    4cdc:	00072100 	sll	a0,a3,0x4
    4ce0:	afa40024 	sw	a0,36(sp)
    4ce4:	0c000000 	jal	0 <func_800B3B50>
    4ce8:	24060abc 	li	a2,2748
    4cec:	8fa70024 	lw	a3,36(sp)
    4cf0:	14400009 	bnez	v0,4d18 <func_800B87D8+0x90>
    4cf4:	ae020008 	sw	v0,8(s0)
    4cf8:	3c040000 	lui	a0,0x0
    4cfc:	3c050000 	lui	a1,0x0
    4d00:	24a50000 	addiu	a1,a1,0
    4d04:	24840000 	addiu	a0,a0,0
    4d08:	0c000000 	jal	0 <func_800B3B50>
    4d0c:	24060abf 	li	a2,2751
    4d10:	10000040 	b	4e14 <func_800B87D8+0x18c>
    4d14:	2402003f 	li	v0,63
    4d18:	3c050000 	lui	a1,0x0
    4d1c:	24a50000 	addiu	a1,a1,0
    4d20:	00e02025 	move	a0,a3
    4d24:	0c000000 	jal	0 <func_800B3B50>
    4d28:	24060ac2 	li	a2,2754
    4d2c:	1440000f 	bnez	v0,4d6c <func_800B87D8+0xe4>
    4d30:	ae020004 	sw	v0,4(s0)
    4d34:	3c040000 	lui	a0,0x0
    4d38:	3c050000 	lui	a1,0x0
    4d3c:	24a50000 	addiu	a1,a1,0
    4d40:	24840000 	addiu	a0,a0,0
    4d44:	0c000000 	jal	0 <func_800B3B50>
    4d48:	24060ac5 	li	a2,2757
    4d4c:	3c050000 	lui	a1,0x0
    4d50:	24a50000 	addiu	a1,a1,0
    4d54:	8e040008 	lw	a0,8(s0)
    4d58:	0c000000 	jal	0 <func_800B3B50>
    4d5c:	24060ac6 	li	a2,2758
    4d60:	ae000008 	sw	zero,8(s0)
    4d64:	1000002b 	b	4e14 <func_800B87D8+0x18c>
    4d68:	2402003f 	li	v0,63
    4d6c:	86290000 	lh	t1,0(s1)
    4d70:	00003825 	move	a3,zero
    4d74:	00001025 	move	v0,zero
    4d78:	a6090002 	sh	t1,2(s0)
    4d7c:	862a0002 	lh	t2,2(s1)
    4d80:	26230834 	addiu	v1,s1,2100
    4d84:	26240024 	addiu	a0,s1,36
    4d88:	a60a000c 	sh	t2,12(s0)
    4d8c:	862b0004 	lh	t3,4(s1)
    4d90:	a60b000e 	sh	t3,14(s0)
    4d94:	862c0004 	lh	t4,4(s1)
    4d98:	5980001e 	blezl	t4,4e14 <func_800B87D8+0x18c>
    4d9c:	92020000 	lbu	v0,0(s0)
    4da0:	8e0d0008 	lw	t5,8(s0)
    4da4:	8c780000 	lw	t8,0(v1)
    4da8:	24e70001 	addiu	a3,a3,1
    4dac:	01a27021 	addu	t6,t5,v0
    4db0:	add80000 	sw	t8,0(t6)
    4db4:	8c6f0004 	lw	t7,4(v1)
    4db8:	24630010 	addiu	v1,v1,16
    4dbc:	24840010 	addiu	a0,a0,16
    4dc0:	adcf0004 	sw	t7,4(t6)
    4dc4:	8c78fff8 	lw	t8,-8(v1)
    4dc8:	add80008 	sw	t8,8(t6)
    4dcc:	8c6ffffc 	lw	t7,-4(v1)
    4dd0:	adcf000c 	sw	t7,12(t6)
    4dd4:	8e190004 	lw	t9,4(s0)
    4dd8:	8c8afff0 	lw	t2,-16(a0)
    4ddc:	03224021 	addu	t0,t9,v0
    4de0:	ad0a0000 	sw	t2,0(t0)
    4de4:	8c89fff4 	lw	t1,-12(a0)
    4de8:	24420010 	addiu	v0,v0,16
    4dec:	ad090004 	sw	t1,4(t0)
    4df0:	8c8afff8 	lw	t2,-8(a0)
    4df4:	ad0a0008 	sw	t2,8(t0)
    4df8:	8c89fffc 	lw	t1,-4(a0)
    4dfc:	ad09000c 	sw	t1,12(t0)
    4e00:	862b0004 	lh	t3,4(s1)
    4e04:	00eb082a 	slt	at,a3,t3
    4e08:	5420ffe6 	bnezl	at,4da4 <func_800B87D8+0x11c>
    4e0c:	8e0d0008 	lw	t5,8(s0)
    4e10:	92020000 	lbu	v0,0(s0)
    4e14:	8fbf001c 	lw	ra,28(sp)
    4e18:	8fb00014 	lw	s0,20(sp)
    4e1c:	8fb10018 	lw	s1,24(sp)
    4e20:	03e00008 	jr	ra
    4e24:	27bd0028 	addiu	sp,sp,40

00004e28 <func_800B8978>:
    4e28:	3c0f0000 	lui	t7,0x0
    4e2c:	25ef0000 	addiu	t7,t7,0
    4e30:	00047100 	sll	t6,a0,0x4
    4e34:	01cf1021 	addu	v0,t6,t7
    4e38:	90430000 	lbu	v1,0(v0)
    4e3c:	27bdffe0 	addiu	sp,sp,-32
    4e40:	2401003f 	li	at,63
    4e44:	10610005 	beq	v1,at,4e5c <func_800B8978+0x34>
    4e48:	afbf0014 	sw	ra,20(sp)
    4e4c:	3c010000 	lui	at,0x0
    4e50:	00230821 	addu	at,at,v1
    4e54:	24180058 	li	t8,88
    4e58:	a0380000 	sb	t8,0(at)
    4e5c:	10a0000d 	beqz	a1,4e94 <func_800B8978+0x6c>
    4e60:	24060ae0 	li	a2,2784
    4e64:	3c050000 	lui	a1,0x0
    4e68:	24a50000 	addiu	a1,a1,0
    4e6c:	8c440008 	lw	a0,8(v0)
    4e70:	0c000000 	jal	0 <func_800B3B50>
    4e74:	afa2001c 	sw	v0,28(sp)
    4e78:	8fa2001c 	lw	v0,28(sp)
    4e7c:	3c050000 	lui	a1,0x0
    4e80:	24a50000 	addiu	a1,a1,0
    4e84:	24060ae1 	li	a2,2785
    4e88:	0c000000 	jal	0 <func_800B3B50>
    4e8c:	8c440004 	lw	a0,4(v0)
    4e90:	8fa2001c 	lw	v0,28(sp)
    4e94:	8fbf0014 	lw	ra,20(sp)
    4e98:	2419003f 	li	t9,63
    4e9c:	a0590000 	sb	t9,0(v0)
    4ea0:	ac400008 	sw	zero,8(v0)
    4ea4:	ac400004 	sw	zero,4(v0)
    4ea8:	a4400002 	sh	zero,2(v0)
    4eac:	a440000c 	sh	zero,12(v0)
    4eb0:	a440000e 	sh	zero,14(v0)
    4eb4:	03e00008 	jr	ra
    4eb8:	27bd0020 	addiu	sp,sp,32

00004ebc <func_800B8A0C>:
    4ebc:	3c040000 	lui	a0,0x0
    4ec0:	24840000 	addiu	a0,a0,0
    4ec4:	ac800000 	sw	zero,0(a0)
    4ec8:	3c0e0000 	lui	t6,0x0
    4ecc:	91ce0000 	lbu	t6,0(t6)
    4ed0:	2405003f 	li	a1,63
    4ed4:	3c0c0000 	lui	t4,0x0
    4ed8:	10ae000a 	beq	a1,t6,4f04 <func_800B8A0C+0x48>
    4edc:	3c030000 	lui	v1,0x0
    4ee0:	3c180000 	lui	t8,0x0
    4ee4:	87180000 	lh	t8,0(t8)
    4ee8:	2406ffe0 	li	a2,-32
    4eec:	3c010000 	lui	at,0x0
    4ef0:	0018c900 	sll	t9,t8,0x4
    4ef4:	2728001f 	addiu	t0,t9,31
    4ef8:	01064824 	and	t1,t0,a2
    4efc:	00095040 	sll	t2,t1,0x1
    4f00:	ac2a0000 	sw	t2,0(at)
    4f04:	918c0000 	lbu	t4,0(t4)
    4f08:	2406ffe0 	li	a2,-32
    4f0c:	3c0a0000 	lui	t2,0x0
    4f10:	10ac000b 	beq	a1,t4,4f40 <func_800B8A0C+0x84>
    4f14:	24630000 	addiu	v1,v1,0
    4f18:	3c0e0000 	lui	t6,0x0
    4f1c:	85ce0000 	lh	t6,0(t6)
    4f20:	8c8d0000 	lw	t5,0(a0)
    4f24:	3c010000 	lui	at,0x0
    4f28:	000ec100 	sll	t8,t6,0x4
    4f2c:	2719001f 	addiu	t9,t8,31
    4f30:	03264024 	and	t0,t9,a2
    4f34:	00084840 	sll	t1,t0,0x1
    4f38:	01a97821 	addu	t7,t5,t1
    4f3c:	ac2f0000 	sw	t7,0(at)
    4f40:	914a0000 	lbu	t2,0(t2)
    4f44:	3c020000 	lui	v0,0x0
    4f48:	24420000 	addiu	v0,v0,0
    4f4c:	10aa000a 	beq	a1,t2,4f78 <func_800B8A0C+0xbc>
    4f50:	3c0c0000 	lui	t4,0x0
    4f54:	858c0000 	lh	t4,0(t4)
    4f58:	8c8b0000 	lw	t3,0(a0)
    4f5c:	3c010000 	lui	at,0x0
    4f60:	000c7100 	sll	t6,t4,0x4
    4f64:	25d8001f 	addiu	t8,t6,31
    4f68:	0306c824 	and	t9,t8,a2
    4f6c:	00194040 	sll	t0,t9,0x1
    4f70:	01686821 	addu	t5,t3,t0
    4f74:	ac2d0000 	sw	t5,0(at)
    4f78:	90690000 	lbu	t1,0(v1)
    4f7c:	50a9000a 	beql	a1,t1,4fa8 <func_800B8A0C+0xec>
    4f80:	90680010 	lbu	t0,16(v1)
    4f84:	846a000e 	lh	t2,14(v1)
    4f88:	8c8f0000 	lw	t7,0(a0)
    4f8c:	000a6100 	sll	t4,t2,0x4
    4f90:	258e001f 	addiu	t6,t4,31
    4f94:	01c6c024 	and	t8,t6,a2
    4f98:	0018c840 	sll	t9,t8,0x1
    4f9c:	01f95821 	addu	t3,t7,t9
    4fa0:	ac8b0000 	sw	t3,0(a0)
    4fa4:	90680010 	lbu	t0,16(v1)
    4fa8:	50a8000a 	beql	a1,t0,4fd4 <func_800B8A0C+0x118>
    4fac:	90790020 	lbu	t9,32(v1)
    4fb0:	8469001e 	lh	t1,30(v1)
    4fb4:	8c8d0000 	lw	t5,0(a0)
    4fb8:	00095100 	sll	t2,t1,0x4
    4fbc:	254c001f 	addiu	t4,t2,31
    4fc0:	01867024 	and	t6,t4,a2
    4fc4:	000ec040 	sll	t8,t6,0x1
    4fc8:	01b87821 	addu	t7,t5,t8
    4fcc:	ac8f0000 	sw	t7,0(a0)
    4fd0:	90790020 	lbu	t9,32(v1)
    4fd4:	50b9000a 	beql	a1,t9,5000 <func_800B8A0C+0x144>
    4fd8:	90780030 	lbu	t8,48(v1)
    4fdc:	8468002e 	lh	t0,46(v1)
    4fe0:	8c8b0000 	lw	t3,0(a0)
    4fe4:	00084900 	sll	t1,t0,0x4
    4fe8:	252a001f 	addiu	t2,t1,31
    4fec:	01466024 	and	t4,t2,a2
    4ff0:	000c7040 	sll	t6,t4,0x1
    4ff4:	016e6821 	addu	t5,t3,t6
    4ff8:	ac8d0000 	sw	t5,0(a0)
    4ffc:	90780030 	lbu	t8,48(v1)
    5000:	50b8000a 	beql	a1,t8,502c <func_800B8A0C+0x170>
    5004:	24630040 	addiu	v1,v1,64
    5008:	8479003e 	lh	t9,62(v1)
    500c:	8c8f0000 	lw	t7,0(a0)
    5010:	00194100 	sll	t0,t9,0x4
    5014:	2509001f 	addiu	t1,t0,31
    5018:	01265024 	and	t2,t1,a2
    501c:	000a6040 	sll	t4,t2,0x1
    5020:	01ec5821 	addu	t3,t7,t4
    5024:	ac8b0000 	sw	t3,0(a0)
    5028:	24630040 	addiu	v1,v1,64
    502c:	5462ffd3 	bnel	v1,v0,4f7c <func_800B8A0C+0xc0>
    5030:	90690000 	lbu	t1,0(v1)
    5034:	8c8e0000 	lw	t6,0(a0)
    5038:	2401ff00 	li	at,-256
    503c:	25cd0100 	addiu	t5,t6,256
    5040:	25b900ff 	addiu	t9,t5,255
    5044:	ac8d0000 	sw	t5,0(a0)
    5048:	03211024 	and	v0,t9,at
    504c:	03e00008 	jr	ra
    5050:	ac820000 	sw	v0,0(a0)

00005054 <func_800B8BA4>:
    5054:	3c020000 	lui	v0,0x0
    5058:	03e00008 	jr	ra
    505c:	8c420000 	lw	v0,0(v0)

00005060 <func_800B8BB0>:
    5060:	27bdffb8 	addiu	sp,sp,-72
    5064:	afb00020 	sw	s0,32(sp)
    5068:	afb50034 	sw	s5,52(sp)
    506c:	afb40030 	sw	s4,48(sp)
    5070:	afb3002c 	sw	s3,44(sp)
    5074:	afb10024 	sw	s1,36(sp)
    5078:	3c100000 	lui	s0,0x0
    507c:	0080a025 	move	s4,a0
    5080:	afbf0044 	sw	ra,68(sp)
    5084:	afbe0040 	sw	s8,64(sp)
    5088:	afb7003c 	sw	s7,60(sp)
    508c:	afb60038 	sw	s6,56(sp)
    5090:	afb20028 	sw	s2,40(sp)
    5094:	26100000 	addiu	s0,s0,0
    5098:	00008825 	move	s1,zero
    509c:	24130058 	li	s3,88
    50a0:	2415003f 	li	s5,63
    50a4:	920e0000 	lbu	t6,0(s0)
    50a8:	02202025 	move	a0,s1
    50ac:	24050001 	li	a1,1
    50b0:	12ae0005 	beq	s5,t6,50c8 <func_800B8BB0+0x68>
    50b4:	3c0f0000 	lui	t7,0x0
    50b8:	25ef0000 	addiu	t7,t7,0
    50bc:	0c000000 	jal	0 <func_800B3B50>
    50c0:	022f9021 	addu	s2,s1,t7
    50c4:	a2530000 	sb	s3,0(s2)
    50c8:	26310001 	addiu	s1,s1,1
    50cc:	2a21000f 	slti	at,s1,15
    50d0:	1420fff4 	bnez	at,50a4 <func_800B8BB0+0x44>
    50d4:	26100010 	addiu	s0,s0,16
    50d8:	92850000 	lbu	a1,0(s4)
    50dc:	3c060000 	lui	a2,0x0
    50e0:	24180100 	li	t8,256
    50e4:	afb80010 	sw	t8,16(sp)
    50e8:	24c60000 	addiu	a2,a2,0
    50ec:	24040002 	li	a0,2
    50f0:	0c000000 	jal	0 <func_800B3B50>
    50f4:	00003825 	move	a3,zero
    50f8:	14400003 	bnez	v0,5108 <func_800B8BB0+0xa8>
    50fc:	24120100 	li	s2,256
    5100:	1000004b 	b	5230 <func_800B8BB0+0x1d0>
    5104:	00001025 	move	v0,zero
    5108:	3c100000 	lui	s0,0x0
    510c:	3c1e0000 	lui	s8,0x0
    5110:	3c170000 	lui	s7,0x0
    5114:	26f70000 	addiu	s7,s7,0
    5118:	27de0000 	addiu	s8,s8,0
    511c:	26100000 	addiu	s0,s0,0
    5120:	2416ffe0 	li	s6,-32
    5124:	92190000 	lbu	t9,0(s0)
    5128:	12b9003b 	beq	s5,t9,5218 <func_800B8BB0+0x1b8>
    512c:	00000000 	nop
    5130:	8602000e 	lh	v0,14(s0)
    5134:	02e02825 	move	a1,s7
    5138:	24060b1c 	li	a2,2844
    513c:	00021100 	sll	v0,v0,0x4
    5140:	2448001f 	addiu	t0,v0,31
    5144:	01168824 	and	s1,t0,s6
    5148:	02209825 	move	s3,s1
    514c:	0c000000 	jal	0 <func_800B3B50>
    5150:	02202025 	move	a0,s1
    5154:	14400009 	bnez	v0,517c <func_800B8BB0+0x11c>
    5158:	ae020008 	sw	v0,8(s0)
    515c:	3c040000 	lui	a0,0x0
    5160:	3c050000 	lui	a1,0x0
    5164:	24a50000 	addiu	a1,a1,0
    5168:	24840000 	addiu	a0,a0,0
    516c:	0c000000 	jal	0 <func_800B3B50>
    5170:	24060b1f 	li	a2,2847
    5174:	1000002e 	b	5230 <func_800B8BB0+0x1d0>
    5178:	00001025 	move	v0,zero
    517c:	92850000 	lbu	a1,0(s4)
    5180:	afb10010 	sw	s1,16(sp)
    5184:	24040002 	li	a0,2
    5188:	8e060008 	lw	a2,8(s0)
    518c:	0c000000 	jal	0 <func_800B3B50>
    5190:	02403825 	move	a3,s2
    5194:	14400003 	bnez	v0,51a4 <func_800B8BB0+0x144>
    5198:	02519021 	addu	s2,s2,s1
    519c:	10000024 	b	5230 <func_800B8BB0+0x1d0>
    51a0:	00001025 	move	v0,zero
    51a4:	02602025 	move	a0,s3
    51a8:	03c02825 	move	a1,s8
    51ac:	0c000000 	jal	0 <func_800B3B50>
    51b0:	24060b27 	li	a2,2855
    51b4:	14400009 	bnez	v0,51dc <func_800B8BB0+0x17c>
    51b8:	ae020004 	sw	v0,4(s0)
    51bc:	3c040000 	lui	a0,0x0
    51c0:	3c050000 	lui	a1,0x0
    51c4:	24a50000 	addiu	a1,a1,0
    51c8:	24840000 	addiu	a0,a0,0
    51cc:	0c000000 	jal	0 <func_800B3B50>
    51d0:	24060b2a 	li	a2,2858
    51d4:	10000016 	b	5230 <func_800B8BB0+0x1d0>
    51d8:	00001025 	move	v0,zero
    51dc:	92850000 	lbu	a1,0(s4)
    51e0:	afb10010 	sw	s1,16(sp)
    51e4:	24040002 	li	a0,2
    51e8:	8e060004 	lw	a2,4(s0)
    51ec:	0c000000 	jal	0 <func_800B3B50>
    51f0:	02403825 	move	a3,s2
    51f4:	14400003 	bnez	v0,5204 <func_800B8BB0+0x1a4>
    51f8:	02519021 	addu	s2,s2,s1
    51fc:	1000000c 	b	5230 <func_800B8BB0+0x1d0>
    5200:	00001025 	move	v0,zero
    5204:	920a0000 	lbu	t2,0(s0)
    5208:	3c010000 	lui	at,0x0
    520c:	2409004f 	li	t1,79
    5210:	002a0821 	addu	at,at,t2
    5214:	a0290000 	sb	t1,0(at)
    5218:	3c0b0000 	lui	t3,0x0
    521c:	256b0000 	addiu	t3,t3,0
    5220:	26100010 	addiu	s0,s0,16
    5224:	560bffc0 	bnel	s0,t3,5128 <func_800B8BB0+0xc8>
    5228:	92190000 	lbu	t9,0(s0)
    522c:	24020001 	li	v0,1
    5230:	8fbf0044 	lw	ra,68(sp)
    5234:	8fb00020 	lw	s0,32(sp)
    5238:	8fb10024 	lw	s1,36(sp)
    523c:	8fb20028 	lw	s2,40(sp)
    5240:	8fb3002c 	lw	s3,44(sp)
    5244:	8fb40030 	lw	s4,48(sp)
    5248:	8fb50034 	lw	s5,52(sp)
    524c:	8fb60038 	lw	s6,56(sp)
    5250:	8fb7003c 	lw	s7,60(sp)
    5254:	8fbe0040 	lw	s8,64(sp)
    5258:	03e00008 	jr	ra
    525c:	27bd0048 	addiu	sp,sp,72

00005260 <func_800B8DB0>:
    5260:	27bdffb0 	addiu	sp,sp,-80
    5264:	afb3002c 	sw	s3,44(sp)
    5268:	00809825 	move	s3,a0
    526c:	afbf003c 	sw	ra,60(sp)
    5270:	afb60038 	sw	s6,56(sp)
    5274:	afb50034 	sw	s5,52(sp)
    5278:	afb40030 	sw	s4,48(sp)
    527c:	afb20028 	sw	s2,40(sp)
    5280:	afb10024 	sw	s1,36(sp)
    5284:	afb00020 	sw	s0,32(sp)
    5288:	92650000 	lbu	a1,0(s3)
    528c:	0c000000 	jal	0 <func_800B3B50>
    5290:	24040002 	li	a0,2
    5294:	24040002 	li	a0,2
    5298:	0c000000 	jal	0 <func_800B3B50>
    529c:	afa20044 	sw	v0,68(sp)
    52a0:	8fa30044 	lw	v1,68(sp)
    52a4:	3c060000 	lui	a2,0x0
    52a8:	8cc60000 	lw	a2,0(a2)
    52ac:	00437021 	addu	t6,v0,v1
    52b0:	24040002 	li	a0,2
    52b4:	00ce082b 	sltu	at,a2,t6
    52b8:	1020003f 	beqz	at,53b8 <func_800B8DB0+0x158>
    52bc:	00001025 	move	v0,zero
    52c0:	0c000000 	jal	0 <func_800B3B50>
    52c4:	02602825 	move	a1,s3
    52c8:	14400003 	bnez	v0,52d8 <func_800B8DB0+0x78>
    52cc:	24040002 	li	a0,2
    52d0:	10000039 	b	53b8 <func_800B8DB0+0x158>
    52d4:	00001025 	move	v0,zero
    52d8:	92650000 	lbu	a1,0(s3)
    52dc:	3c060000 	lui	a2,0x0
    52e0:	240f0100 	li	t7,256
    52e4:	afaf0010 	sw	t7,16(sp)
    52e8:	24c60000 	addiu	a2,a2,0
    52ec:	0c000000 	jal	0 <func_800B3B50>
    52f0:	00003825 	move	a3,zero
    52f4:	14400006 	bnez	v0,5310 <func_800B8DB0+0xb0>
    52f8:	24120100 	li	s2,256
    52fc:	24040002 	li	a0,2
    5300:	0c000000 	jal	0 <func_800B3B50>
    5304:	92650000 	lbu	a1,0(s3)
    5308:	1000002b 	b	53b8 <func_800B8DB0+0x158>
    530c:	00001025 	move	v0,zero
    5310:	3c110000 	lui	s1,0x0
    5314:	3c160000 	lui	s6,0x0
    5318:	26d60000 	addiu	s6,s6,0
    531c:	26310000 	addiu	s1,s1,0
    5320:	2415ffe0 	li	s5,-32
    5324:	2414003f 	li	s4,63
    5328:	92380000 	lbu	t8,0(s1)
    532c:	24040002 	li	a0,2
    5330:	02403825 	move	a3,s2
    5334:	52980016 	beql	s4,t8,5390 <func_800B8DB0+0x130>
    5338:	26310010 	addiu	s1,s1,16
    533c:	8622000e 	lh	v0,14(s1)
    5340:	92650000 	lbu	a1,0(s3)
    5344:	8e260008 	lw	a2,8(s1)
    5348:	00021100 	sll	v0,v0,0x4
    534c:	2459001f 	addiu	t9,v0,31
    5350:	03358024 	and	s0,t9,s5
    5354:	0c000000 	jal	0 <func_800B3B50>
    5358:	afb00010 	sw	s0,16(sp)
    535c:	1040000e 	beqz	v0,5398 <func_800B8DB0+0x138>
    5360:	00401825 	move	v1,v0
    5364:	02509021 	addu	s2,s2,s0
    5368:	92650000 	lbu	a1,0(s3)
    536c:	afb00010 	sw	s0,16(sp)
    5370:	02403825 	move	a3,s2
    5374:	24040002 	li	a0,2
    5378:	0c000000 	jal	0 <func_800B3B50>
    537c:	8e260004 	lw	a2,4(s1)
    5380:	10400005 	beqz	v0,5398 <func_800B8DB0+0x138>
    5384:	00401825 	move	v1,v0
    5388:	02509021 	addu	s2,s2,s0
    538c:	26310010 	addiu	s1,s1,16
    5390:	1636ffe5 	bne	s1,s6,5328 <func_800B8DB0+0xc8>
    5394:	24030001 	li	v1,1
    5398:	10600003 	beqz	v1,53a8 <func_800B8DB0+0x148>
    539c:	24040002 	li	a0,2
    53a0:	10000005 	b	53b8 <func_800B8DB0+0x158>
    53a4:	92620000 	lbu	v0,0(s3)
    53a8:	0c000000 	jal	0 <func_800B3B50>
    53ac:	92650000 	lbu	a1,0(s3)
    53b0:	10000001 	b	53b8 <func_800B8DB0+0x158>
    53b4:	00001025 	move	v0,zero
    53b8:	8fbf003c 	lw	ra,60(sp)
    53bc:	8fb00020 	lw	s0,32(sp)
    53c0:	8fb10024 	lw	s1,36(sp)
    53c4:	8fb20028 	lw	s2,40(sp)
    53c8:	8fb3002c 	lw	s3,44(sp)
    53cc:	8fb40030 	lw	s4,48(sp)
    53d0:	8fb50034 	lw	s5,52(sp)
    53d4:	8fb60038 	lw	s6,56(sp)
    53d8:	03e00008 	jr	ra
    53dc:	27bd0050 	addiu	sp,sp,80

000053e0 <func_800B8F30>:
    53e0:	27bdffe8 	addiu	sp,sp,-24
    53e4:	afbf0014 	sw	ra,20(sp)
    53e8:	00803025 	move	a2,a0
    53ec:	90c50000 	lbu	a1,0(a2)
    53f0:	0c000000 	jal	0 <func_800B3B50>
    53f4:	24040002 	li	a0,2
    53f8:	8fbf0014 	lw	ra,20(sp)
    53fc:	27bd0018 	addiu	sp,sp,24
    5400:	03e00008 	jr	ra
    5404:	00000000 	nop

00005408 <func_800B8F58>:
    5408:	27bdffd0 	addiu	sp,sp,-48
    540c:	3c0e0000 	lui	t6,0x0
    5410:	91ce0000 	lbu	t6,0(t6)
    5414:	afbf001c 	sw	ra,28(sp)
    5418:	afb00018 	sw	s0,24(sp)
    541c:	afa50034 	sw	a1,52(sp)
    5420:	afa60038 	sw	a2,56(sp)
    5424:	afa7003c 	sw	a3,60(sp)
    5428:	2408002d 	li	t0,45
    542c:	a0880000 	sb	t0,0(a0)
    5430:	3c0f0000 	lui	t7,0x0
    5434:	a08e0001 	sb	t6,1(a0)
    5438:	91ef0000 	lbu	t7,0(t7)
    543c:	a0880002 	sb	t0,2(a0)
    5440:	3c180000 	lui	t8,0x0
    5444:	a08f0003 	sb	t7,3(a0)
    5448:	93180000 	lbu	t8,0(t8)
    544c:	00808025 	move	s0,a0
    5450:	a0880004 	sb	t0,4(a0)
    5454:	a0980005 	sb	t8,5(a0)
    5458:	3c040000 	lui	a0,0x0
    545c:	3c030000 	lui	v1,0x0
    5460:	24630000 	addiu	v1,v1,0
    5464:	24840000 	addiu	a0,a0,0
    5468:	26020006 	addiu	v0,s0,6
    546c:	90790000 	lbu	t9,0(v1)
    5470:	a0480000 	sb	t0,0(v0)
    5474:	24630040 	addiu	v1,v1,64
    5478:	a0590001 	sb	t9,1(v0)
    547c:	9069ffd0 	lbu	t1,-48(v1)
    5480:	a0480002 	sb	t0,2(v0)
    5484:	24420008 	addiu	v0,v0,8
    5488:	a049fffb 	sb	t1,-5(v0)
    548c:	906affe0 	lbu	t2,-32(v1)
    5490:	a048fffc 	sb	t0,-4(v0)
    5494:	a04afffd 	sb	t2,-3(v0)
    5498:	906bfff0 	lbu	t3,-16(v1)
    549c:	a048fffe 	sb	t0,-2(v0)
    54a0:	1464fff2 	bne	v1,a0,546c <func_800B8F58+0x64>
    54a4:	a04bffff 	sb	t3,-1(v0)
    54a8:	a0400001 	sb	zero,1(v0)
    54ac:	a2000014 	sb	zero,20(s0)
    54b0:	93a6003f 	lbu	a2,63(sp)
    54b4:	93a50037 	lbu	a1,55(sp)
    54b8:	afa20028 	sw	v0,40(sp)
    54bc:	93a4003b 	lbu	a0,59(sp)
    54c0:	02003825 	move	a3,s0
    54c4:	afa60020 	sw	a2,32(sp)
    54c8:	0c000000 	jal	0 <func_800B3B50>
    54cc:	afa50024 	sw	a1,36(sp)
    54d0:	8fa20028 	lw	v0,40(sp)
    54d4:	8fa50024 	lw	a1,36(sp)
    54d8:	8fa60020 	lw	a2,32(sp)
    54dc:	240d002d 	li	t5,45
    54e0:	a04d0000 	sb	t5,0(v0)
    54e4:	a20d0014 	sb	t5,20(s0)
    54e8:	87a4003a 	lh	a0,58(sp)
    54ec:	26070014 	addiu	a3,s0,20
    54f0:	24840014 	addiu	a0,a0,20
    54f4:	0c000000 	jal	0 <func_800B3B50>
    54f8:	308400ff 	andi	a0,a0,0xff
    54fc:	8fbf001c 	lw	ra,28(sp)
    5500:	8fb00018 	lw	s0,24(sp)
    5504:	27bd0030 	addiu	sp,sp,48
    5508:	03e00008 	jr	ra
    550c:	00000000 	nop

00005510 <func_800B9060>:
    5510:	27bdffb8 	addiu	sp,sp,-72
    5514:	3c070000 	lui	a3,0x0
    5518:	3c0e0000 	lui	t6,0x0
    551c:	24e70000 	addiu	a3,a3,0
    5520:	afbf0044 	sw	ra,68(sp)
    5524:	afa40048 	sw	a0,72(sp)
    5528:	25ce0000 	addiu	t6,t6,0
    552c:	3c050000 	lui	a1,0x0
    5530:	afbe0040 	sw	s8,64(sp)
    5534:	afb7003c 	sw	s7,60(sp)
    5538:	afb60038 	sw	s6,56(sp)
    553c:	afb50034 	sw	s5,52(sp)
    5540:	afb40030 	sw	s4,48(sp)
    5544:	afb3002c 	sw	s3,44(sp)
    5548:	afb20028 	sw	s2,40(sp)
    554c:	afb10024 	sw	s1,36(sp)
    5550:	afb00020 	sw	s0,32(sp)
    5554:	24a50000 	addiu	a1,a1,0
    5558:	afae0014 	sw	t6,20(sp)
    555c:	24044803 	li	a0,18435
    5560:	afa70010 	sw	a3,16(sp)
    5564:	0c000000 	jal	0 <func_800B3B50>
    5568:	24060004 	li	a2,4
    556c:	3c040000 	lui	a0,0x0
    5570:	0c000000 	jal	0 <func_800B3B50>
    5574:	24840000 	addiu	a0,a0,0
    5578:	3c100000 	lui	s0,0x0
    557c:	3c170000 	lui	s7,0x0
    5580:	3c160000 	lui	s6,0x0
    5584:	3c150000 	lui	s5,0x0
    5588:	3c140000 	lui	s4,0x0
    558c:	3c130000 	lui	s3,0x0
    5590:	3c120000 	lui	s2,0x0
    5594:	26520000 	addiu	s2,s2,0
    5598:	26730000 	addiu	s3,s3,0
    559c:	26940000 	addiu	s4,s4,0
    55a0:	26b50000 	addiu	s5,s5,0
    55a4:	26d60000 	addiu	s6,s6,0
    55a8:	26f70000 	addiu	s7,s7,0
    55ac:	26100000 	addiu	s0,s0,0
    55b0:	00008825 	move	s1,zero
    55b4:	241e000f 	li	s8,15
    55b8:	8605000e 	lh	a1,14(s0)
    55bc:	50a00017 	beqzl	a1,561c <func_800B9060+0x10c>
    55c0:	26310001 	addiu	s1,s1,1
    55c4:	12200004 	beqz	s1,55d8 <func_800B9060+0xc8>
    55c8:	02402025 	move	a0,s2
    55cc:	0c000000 	jal	0 <func_800B3B50>
    55d0:	02202825 	move	a1,s1
    55d4:	8605000e 	lh	a1,14(s0)
    55d8:	02602025 	move	a0,s3
    55dc:	0c000000 	jal	0 <func_800B3B50>
    55e0:	8e060008 	lw	a2,8(s0)
    55e4:	02802025 	move	a0,s4
    55e8:	8605000e 	lh	a1,14(s0)
    55ec:	0c000000 	jal	0 <func_800B3B50>
    55f0:	8e060004 	lw	a2,4(s0)
    55f4:	02a02025 	move	a0,s5
    55f8:	0c000000 	jal	0 <func_800B3B50>
    55fc:	8605000e 	lh	a1,14(s0)
    5600:	02c02025 	move	a0,s6
    5604:	0c000000 	jal	0 <func_800B3B50>
    5608:	8605000c 	lh	a1,12(s0)
    560c:	02e02025 	move	a0,s7
    5610:	0c000000 	jal	0 <func_800B3B50>
    5614:	86050002 	lh	a1,2(s0)
    5618:	26310001 	addiu	s1,s1,1
    561c:	163effe6 	bne	s1,s8,55b8 <func_800B9060+0xa8>
    5620:	26100010 	addiu	s0,s0,16
    5624:	3c040000 	lui	a0,0x0
    5628:	0c000000 	jal	0 <func_800B3B50>
    562c:	24840000 	addiu	a0,a0,0
    5630:	8fbf0044 	lw	ra,68(sp)
    5634:	8fb00020 	lw	s0,32(sp)
    5638:	8fb10024 	lw	s1,36(sp)
    563c:	8fb20028 	lw	s2,40(sp)
    5640:	8fb3002c 	lw	s3,44(sp)
    5644:	8fb40030 	lw	s4,48(sp)
    5648:	8fb50034 	lw	s5,52(sp)
    564c:	8fb60038 	lw	s6,56(sp)
    5650:	8fb7003c 	lw	s7,60(sp)
    5654:	8fbe0040 	lw	s8,64(sp)
    5658:	03e00008 	jr	ra
    565c:	27bd0048 	addiu	sp,sp,72

00005660 <func_800B91B0>:
    5660:	27bdffd0 	addiu	sp,sp,-48
    5664:	afb00020 	sw	s0,32(sp)
    5668:	3c100000 	lui	s0,0x0
    566c:	26100000 	addiu	s0,s0,0
    5670:	86030000 	lh	v1,0(s0)
    5674:	afb20028 	sw	s2,40(sp)
    5678:	3c120000 	lui	s2,0x0
    567c:	26520000 	addiu	s2,s2,0
    5680:	00037100 	sll	t6,v1,0x4
    5684:	024e1021 	addu	v0,s2,t6
    5688:	904f0000 	lbu	t7,0(v0)
    568c:	2406003f 	li	a2,63
    5690:	afbf002c 	sw	ra,44(sp)
    5694:	afb10024 	sw	s1,36(sp)
    5698:	afa40030 	sw	a0,48(sp)
    569c:	14cf0016 	bne	a2,t7,56f8 <func_800B91B0+0x98>
    56a0:	afa50034 	sw	a1,52(sp)
    56a4:	24780001 	addiu	t8,v1,1
    56a8:	a6180000 	sh	t8,0(s0)
    56ac:	86030000 	lh	v1,0(s0)
    56b0:	3c110000 	lui	s1,0x0
    56b4:	26310000 	addiu	s1,s1,0
    56b8:	2861000f 	slti	at,v1,15
    56bc:	14200009 	bnez	at,56e4 <func_800B91B0+0x84>
    56c0:	00001025 	move	v0,zero
    56c4:	44802000 	mtc1	zero,$f4
    56c8:	44803000 	mtc1	zero,$f6
    56cc:	a6200008 	sh	zero,8(s1)
    56d0:	a620000a 	sh	zero,10(s1)
    56d4:	a6000000 	sh	zero,0(s0)
    56d8:	e6240000 	swc1	$f4,0(s1)
    56dc:	100000d1 	b	5a24 <func_800B91B0+0x3c4>
    56e0:	e6260004 	swc1	$f6,4(s1)
    56e4:	0003c900 	sll	t9,v1,0x4
    56e8:	02591021 	addu	v0,s2,t9
    56ec:	90490000 	lbu	t1,0(v0)
    56f0:	50c9ffed 	beql	a2,t1,56a8 <func_800B91B0+0x48>
    56f4:	24780001 	addiu	t8,v1,1
    56f8:	3c110000 	lui	s1,0x0
    56fc:	3c0a0000 	lui	t2,0x0
    5700:	26310000 	addiu	s1,s1,0
    5704:	254a0000 	addiu	t2,t2,0
    5708:	3c040000 	lui	a0,0x0
    570c:	3c050000 	lui	a1,0x0
    5710:	3c060000 	lui	a2,0x0
    5714:	24c60000 	addiu	a2,a2,0
    5718:	24a50000 	addiu	a1,a1,0
    571c:	24840000 	addiu	a0,a0,0
    5720:	afaa0010 	sw	t2,16(sp)
    5724:	afb10014 	sw	s1,20(sp)
    5728:	0c000000 	jal	0 <func_800B3B50>
    572c:	8c470004 	lw	a3,4(v0)
    5730:	144000ac 	bnez	v0,59e4 <func_800B91B0+0x384>
    5734:	3c040000 	lui	a0,0x0
    5738:	860b0000 	lh	t3,0(s0)
    573c:	3c0e0000 	lui	t6,0x0
    5740:	25ce0000 	addiu	t6,t6,0
    5744:	000b6100 	sll	t4,t3,0x4
    5748:	024c6821 	addu	t5,s2,t4
    574c:	8da70008 	lw	a3,8(t5)
    5750:	3c050000 	lui	a1,0x0
    5754:	3c060000 	lui	a2,0x0
    5758:	24c60000 	addiu	a2,a2,0
    575c:	24a50000 	addiu	a1,a1,0
    5760:	afb10014 	sw	s1,20(sp)
    5764:	afae0010 	sw	t6,16(sp)
    5768:	0c000000 	jal	0 <func_800B3B50>
    576c:	24840000 	addiu	a0,a0,0
    5770:	1440009c 	bnez	v0,59e4 <func_800B91B0+0x384>
    5774:	2407000a 	li	a3,10
    5778:	86220008 	lh	v0,8(s1)
    577c:	860a0000 	lh	t2,0(s0)
    5780:	c6280004 	lwc1	$f8,4(s1)
    5784:	24420001 	addiu	v0,v0,1
    5788:	0047001a 	div	zero,v0,a3
    578c:	000a5900 	sll	t3,t2,0x4
    5790:	024b6021 	addu	t4,s2,t3
    5794:	8583000e 	lh	v1,14(t4)
    5798:	00007812 	mflo	t7
    579c:	0000c810 	mfhi	t9
    57a0:	2463fffb 	addiu	v1,v1,-5
    57a4:	4600428d 	trunc.w.s	$f10,$f8
    57a8:	0067001a 	div	zero,v1,a3
    57ac:	44045000 	mfc1	a0,$f10
    57b0:	3c080000 	lui	t0,0x0
    57b4:	25f80030 	addiu	t8,t7,48
    57b8:	25080000 	addiu	t0,t0,0
    57bc:	14e00002 	bnez	a3,57c8 <func_800B91B0+0x168>
    57c0:	00000000 	nop
    57c4:	0007000d 	break	0x7
    57c8:	2401ffff 	li	at,-1
    57cc:	14e10004 	bne	a3,at,57e0 <func_800B91B0+0x180>
    57d0:	3c018000 	lui	at,0x8000
    57d4:	14410002 	bne	v0,at,57e0 <func_800B91B0+0x180>
    57d8:	00000000 	nop
    57dc:	0006000d 	break	0x6
    57e0:	a1180007 	sb	t8,7(t0)
    57e4:	00006812 	mflo	t5
    57e8:	00007810 	mfhi	t7
    57ec:	27290030 	addiu	t1,t9,48
    57f0:	25ae0030 	addiu	t6,t5,48
    57f4:	25f80030 	addiu	t8,t7,48
    57f8:	3c050000 	lui	a1,0x0
    57fc:	00042400 	sll	a0,a0,0x10
    5800:	a1090008 	sb	t1,8(t0)
    5804:	14e00002 	bnez	a3,5810 <func_800B91B0+0x1b0>
    5808:	00000000 	nop
    580c:	0007000d 	break	0x7
    5810:	2401ffff 	li	at,-1
    5814:	14e10004 	bne	a3,at,5828 <func_800B91B0+0x1c8>
    5818:	3c018000 	lui	at,0x8000
    581c:	14610002 	bne	v1,at,5828 <func_800B91B0+0x1c8>
    5820:	00000000 	nop
    5824:	0006000d 	break	0x6
    5828:	a10e000a 	sb	t6,10(t0)
    582c:	a118000b 	sb	t8,11(t0)
    5830:	00042403 	sra	a0,a0,0x10
    5834:	24a50000 	addiu	a1,a1,0
    5838:	0c000000 	jal	0 <func_800B3B50>
    583c:	24060004 	li	a2,4
    5840:	3c070000 	lui	a3,0x0
    5844:	24e70000 	addiu	a3,a3,0
    5848:	2404000f 	li	a0,15
    584c:	24050016 	li	a1,22
    5850:	0c000000 	jal	0 <func_800B3B50>
    5854:	24060003 	li	a2,3
    5858:	3c050000 	lui	a1,0x0
    585c:	24a50000 	addiu	a1,a1,0
    5860:	8624000c 	lh	a0,12(s1)
    5864:	0c000000 	jal	0 <func_800B3B50>
    5868:	24060004 	li	a2,4
    586c:	3c070000 	lui	a3,0x0
    5870:	24e70000 	addiu	a3,a3,0
    5874:	2404000f 	li	a0,15
    5878:	24050017 	li	a1,23
    587c:	0c000000 	jal	0 <func_800B3B50>
    5880:	24060003 	li	a2,3
    5884:	3c070000 	lui	a3,0x0
    5888:	24e70000 	addiu	a3,a3,0
    588c:	2404000f 	li	a0,15
    5890:	24050018 	li	a1,24
    5894:	0c000000 	jal	0 <func_800B3B50>
    5898:	24060003 	li	a2,3
    589c:	3c070000 	lui	a3,0x0
    58a0:	8ce70000 	lw	a3,0(a3)
    58a4:	24040010 	li	a0,16
    58a8:	2405001a 	li	a1,26
    58ac:	0c000000 	jal	0 <func_800B3B50>
    58b0:	24060001 	li	a2,1
    58b4:	86030000 	lh	v1,0(s0)
    58b8:	3c013f80 	lui	at,0x3f80
    58bc:	44819000 	mtc1	at,$f18
    58c0:	c6300004 	lwc1	$f16,4(s1)
    58c4:	00035900 	sll	t3,v1,0x4
    58c8:	8629000c 	lh	t1,12(s1)
    58cc:	024b1021 	addu	v0,s2,t3
    58d0:	46128100 	add.s	$f4,$f16,$f18
    58d4:	8444000c 	lh	a0,12(v0)
    58d8:	252a0001 	addiu	t2,t1,1
    58dc:	a62a000c 	sh	t2,12(s1)
    58e0:	18800012 	blez	a0,592c <func_800B91B0+0x2cc>
    58e4:	e6240004 	swc1	$f4,4(s1)
    58e8:	44843000 	mtc1	a0,$f6
    58ec:	c62a0004 	lwc1	$f10,4(s1)
    58f0:	246c0001 	addiu	t4,v1,1
    58f4:	46803220 	cvt.s.w	$f8,$f6
    58f8:	460a403c 	c.lt.s	$f8,$f10
    58fc:	00000000 	nop
    5900:	4502000b 	bc1fl	5930 <func_800B91B0+0x2d0>
    5904:	844d0002 	lh	t5,2(v0)
    5908:	a60c0000 	sh	t4,0(s0)
    590c:	44808000 	mtc1	zero,$f16
    5910:	44809000 	mtc1	zero,$f18
    5914:	86020000 	lh	v0,0(s0)
    5918:	a6200008 	sh	zero,8(s1)
    591c:	e6300000 	swc1	$f16,0(s1)
    5920:	e6320004 	swc1	$f18,4(s1)
    5924:	1000003f 	b	5a24 <func_800B91B0+0x3c4>
    5928:	34428000 	ori	v0,v0,0x8000
    592c:	844d0002 	lh	t5,2(v0)
    5930:	24010001 	li	at,1
    5934:	51a1000e 	beql	t5,at,5970 <func_800B91B0+0x310>
    5938:	8fb00030 	lw	s0,48(sp)
    593c:	8fa50034 	lw	a1,52(sp)
    5940:	3c040000 	lui	a0,0x0
    5944:	24840000 	addiu	a0,a0,0
    5948:	0c000000 	jal	0 <func_800B3B50>
    594c:	24a50010 	addiu	a1,a1,16
    5950:	8fa50034 	lw	a1,52(sp)
    5954:	3c040000 	lui	a0,0x0
    5958:	24840000 	addiu	a0,a0,0
    595c:	0c000000 	jal	0 <func_800B3B50>
    5960:	24a50004 	addiu	a1,a1,4
    5964:	10000010 	b	59a8 <func_800B91B0+0x348>
    5968:	8fa20034 	lw	v0,52(sp)
    596c:	8fb00030 	lw	s0,48(sp)
    5970:	8fa60034 	lw	a2,52(sp)
    5974:	3c050000 	lui	a1,0x0
    5978:	26100094 	addiu	s0,s0,148
    597c:	02002025 	move	a0,s0
    5980:	24a50000 	addiu	a1,a1,0
    5984:	0c000000 	jal	0 <func_800B3B50>
    5988:	24c60004 	addiu	a2,a2,4
    598c:	8fa60034 	lw	a2,52(sp)
    5990:	3c050000 	lui	a1,0x0
    5994:	24a50000 	addiu	a1,a1,0
    5998:	02002025 	move	a0,s0
    599c:	0c000000 	jal	0 <func_800B3B50>
    59a0:	24c60010 	addiu	a2,a2,16
    59a4:	8fa20034 	lw	v0,52(sp)
    59a8:	c624002c 	lwc1	$f4,44(s1)
    59ac:	3c013fb4 	lui	at,0x3fb4
    59b0:	44818000 	mtc1	at,$f16
    59b4:	e4440048 	swc1	$f4,72(v0)
    59b8:	c6260028 	lwc1	$f6,40(s1)
    59bc:	3c030000 	lui	v1,0x0
    59c0:	4600320d 	trunc.w.s	$f8,$f6
    59c4:	440f4000 	mfc1	t7,$f8
    59c8:	00000000 	nop
    59cc:	a44f004c 	sh	t7,76(v0)
    59d0:	c62a0028 	lwc1	$f10,40(s1)
    59d4:	46105482 	mul.s	$f18,$f10,$f16
    59d8:	e4520050 	swc1	$f18,80(v0)
    59dc:	10000010 	b	5a20 <func_800B91B0+0x3c0>
    59e0:	84630000 	lh	v1,0(v1)
    59e4:	86180000 	lh	t8,0(s0)
    59e8:	44802000 	mtc1	zero,$f4
    59ec:	44803000 	mtc1	zero,$f6
    59f0:	27190001 	addiu	t9,t8,1
    59f4:	a6190000 	sh	t9,0(s0)
    59f8:	86030000 	lh	v1,0(s0)
    59fc:	2401000f 	li	at,15
    5a00:	a6200008 	sh	zero,8(s1)
    5a04:	e6240000 	swc1	$f4,0(s1)
    5a08:	14610005 	bne	v1,at,5a20 <func_800B91B0+0x3c0>
    5a0c:	e6260004 	swc1	$f6,4(s1)
    5a10:	a6000000 	sh	zero,0(s0)
    5a14:	a620000a 	sh	zero,10(s1)
    5a18:	10000002 	b	5a24 <func_800B91B0+0x3c4>
    5a1c:	2402ffff 	li	v0,-1
    5a20:	34628000 	ori	v0,v1,0x8000
    5a24:	8fbf002c 	lw	ra,44(sp)
    5a28:	8fb00020 	lw	s0,32(sp)
    5a2c:	8fb10024 	lw	s1,36(sp)
    5a30:	8fb20028 	lw	s2,40(sp)
    5a34:	03e00008 	jr	ra
    5a38:	27bd0030 	addiu	sp,sp,48

00005a3c <func_800B958C>:
    5a3c:	27bdffe0 	addiu	sp,sp,-32
    5a40:	afa40020 	sw	a0,32(sp)
    5a44:	240e002a 	li	t6,42
    5a48:	3c010000 	lui	at,0x0
    5a4c:	3c040000 	lui	a0,0x0
    5a50:	3c020000 	lui	v0,0x0
    5a54:	afbf001c 	sw	ra,28(sp)
    5a58:	afb10018 	sw	s1,24(sp)
    5a5c:	afb00014 	sw	s0,20(sp)
    5a60:	afa50024 	sw	a1,36(sp)
    5a64:	a02e0000 	sb	t6,0(at)
    5a68:	24420000 	addiu	v0,v0,0
    5a6c:	24840000 	addiu	a0,a0,0
    5a70:	24030058 	li	v1,88
    5a74:	24420001 	addiu	v0,v0,1
    5a78:	0044082b 	sltu	at,v0,a0
    5a7c:	1420fffd 	bnez	at,5a74 <func_800B958C+0x38>
    5a80:	a043ffff 	sb	v1,-1(v0)
    5a84:	00008025 	move	s0,zero
    5a88:	2411000f 	li	s1,15
    5a8c:	02002025 	move	a0,s0
    5a90:	0c000000 	jal	0 <func_800B3B50>
    5a94:	00002825 	move	a1,zero
    5a98:	26100001 	addiu	s0,s0,1
    5a9c:	5611fffc 	bnel	s0,s1,5a90 <func_800B958C+0x54>
    5aa0:	02002025 	move	a0,s0
    5aa4:	8faf0024 	lw	t7,36(sp)
    5aa8:	3c010000 	lui	at,0x0
    5aac:	8fbf001c 	lw	ra,28(sp)
    5ab0:	ac2f0000 	sw	t7,0(at)
    5ab4:	3c010000 	lui	at,0x0
    5ab8:	a4200000 	sh	zero,0(at)
    5abc:	3c010000 	lui	at,0x0
    5ac0:	a4200000 	sh	zero,0(at)
    5ac4:	3c010000 	lui	at,0x0
    5ac8:	2418ffff 	li	t8,-1
    5acc:	a4380000 	sh	t8,0(at)
    5ad0:	3c010000 	lui	at,0x0
    5ad4:	8fb00014 	lw	s0,20(sp)
    5ad8:	8fb10018 	lw	s1,24(sp)
    5adc:	a4200000 	sh	zero,0(at)
    5ae0:	03e00008 	jr	ra
    5ae4:	27bd0020 	addiu	sp,sp,32

00005ae8 <func_800B9638>:
    5ae8:	27bdff58 	addiu	sp,sp,-168
    5aec:	3c0e0000 	lui	t6,0x0
    5af0:	afbf0034 	sw	ra,52(sp)
    5af4:	afb20030 	sw	s2,48(sp)
    5af8:	afb1002c 	sw	s1,44(sp)
    5afc:	afb00028 	sw	s0,40(sp)
    5b00:	afa500ac 	sw	a1,172(sp)
    5b04:	25ce0000 	addiu	t6,t6,0
    5b08:	8dd80000 	lw	t8,0(t6)
    5b0c:	27b10050 	addiu	s1,sp,80
    5b10:	00809025 	move	s2,a0
    5b14:	ae380000 	sw	t8,0(s1)
    5b18:	8dcf0004 	lw	t7,4(t6)
    5b1c:	3c070000 	lui	a3,0x0
    5b20:	2404000e 	li	a0,14
    5b24:	ae2f0004 	sw	t7,4(s1)
    5b28:	8dd80008 	lw	t8,8(t6)
    5b2c:	24050005 	li	a1,5
    5b30:	00003025 	move	a2,zero
    5b34:	ae380008 	sw	t8,8(s1)
    5b38:	0c000000 	jal	0 <func_800B3B50>
    5b3c:	8ce70000 	lw	a3,0(a3)
    5b40:	3c080000 	lui	t0,0x0
    5b44:	85080000 	lh	t0,0(t0)
    5b48:	3c100000 	lui	s0,0x0
    5b4c:	86100000 	lh	s0,0(s0)
    5b50:	0008c843 	sra	t9,t0,0x1
    5b54:	afb900a0 	sw	t9,160(sp)
    5b58:	864210c2 	lh	v0,4290(s2)
    5b5c:	24010001 	li	at,1
    5b60:	00108043 	sra	s0,s0,0x1
    5b64:	10410005 	beq	v0,at,5b7c <func_800B9638+0x94>
    5b68:	24010002 	li	at,2
    5b6c:	10410003 	beq	v0,at,5b7c <func_800B9638+0x94>
    5b70:	24010003 	li	at,3
    5b74:	14410332 	bne	v0,at,6840 <func_800B9638+0xd58>
    5b78:	3c190000 	lui	t9,0x0
    5b7c:	864410c0 	lh	a0,4288(s2)
    5b80:	288100ca 	slti	at,a0,202
    5b84:	14200010 	bnez	at,5bc8 <func_800B9638+0xe0>
    5b88:	00801025 	move	v0,a0
    5b8c:	240100ca 	li	at,202
    5b90:	10410102 	beq	v0,at,5f9c <func_800B9638+0x4b4>
    5b94:	240100d1 	li	at,209
    5b98:	10410149 	beq	v0,at,60c0 <func_800B9638+0x5d8>
    5b9c:	2401012c 	li	at,300
    5ba0:	1041001a 	beq	v0,at,5c0c <func_800B9638+0x124>
    5ba4:	2401012d 	li	at,301
    5ba8:	104100ce 	beq	v0,at,5ee4 <func_800B9638+0x3fc>
    5bac:	2401012e 	li	at,302
    5bb0:	104100fa 	beq	v0,at,5f9c <func_800B9638+0x4b4>
    5bb4:	24010135 	li	at,309
    5bb8:	50410142 	beql	v0,at,60c4 <func_800B9638+0x5dc>
    5bbc:	864d10c4 	lh	t5,4292(s2)
    5bc0:	10000185 	b	61d8 <func_800B9638+0x6f0>
    5bc4:	00000000 	nop
    5bc8:	24010001 	li	at,1
    5bcc:	104101a4 	beq	v0,at,6260 <func_800B9638+0x778>
    5bd0:	24010064 	li	at,100
    5bd4:	1041000d 	beq	v0,at,5c0c <func_800B9638+0x124>
    5bd8:	24010065 	li	at,101
    5bdc:	104100c1 	beq	v0,at,5ee4 <func_800B9638+0x3fc>
    5be0:	24010066 	li	at,102
    5be4:	104100ed 	beq	v0,at,5f9c <func_800B9638+0x4b4>
    5be8:	2401006d 	li	at,109
    5bec:	10410134 	beq	v0,at,60c0 <func_800B9638+0x5d8>
    5bf0:	240100c8 	li	at,200
    5bf4:	10410005 	beq	v0,at,5c0c <func_800B9638+0x124>
    5bf8:	240100c9 	li	at,201
    5bfc:	104100b9 	beq	v0,at,5ee4 <func_800B9638+0x3fc>
    5c00:	00000000 	nop
    5c04:	10000174 	b	61d8 <func_800B9638+0x6f0>
    5c08:	00000000 	nop
    5c0c:	3c0c0000 	lui	t4,0x0
    5c10:	8d8c0000 	lw	t4,0(t4)
    5c14:	240a0001 	li	t2,1
    5c18:	010a5804 	sllv	t3,t2,t0
    5c1c:	016c6824 	and	t5,t3,t4
    5c20:	11a00075 	beqz	t5,5df8 <func_800B9638+0x310>
    5c24:	24010064 	li	at,100
    5c28:	3c0e0000 	lui	t6,0x0
    5c2c:	8dce0000 	lw	t6,0(t6)
    5c30:	2401fdff 	li	at,-513
    5c34:	3c050000 	lui	a1,0x0
    5c38:	95c30050 	lhu	v1,80(t6)
    5c3c:	24a50000 	addiu	a1,a1,0
    5c40:	24044809 	li	a0,18441
    5c44:	00617827 	nor	t7,v1,at
    5c48:	11e00003 	beqz	t7,5c58 <func_800B9638+0x170>
    5c4c:	2401feff 	li	at,-257
    5c50:	0061c027 	nor	t8,v1,at
    5c54:	1700000d 	bnez	t8,5c8c <func_800B9638+0x1a4>
    5c58:	3c190000 	lui	t9,0x0
    5c5c:	3c0a0000 	lui	t2,0x0
    5c60:	254a0000 	addiu	t2,t2,0
    5c64:	27270000 	addiu	a3,t9,0
    5c68:	afa70010 	sw	a3,16(sp)
    5c6c:	afaa0014 	sw	t2,20(sp)
    5c70:	0c000000 	jal	0 <func_800B3B50>
    5c74:	24060004 	li	a2,4
    5c78:	864b10c4 	lh	t3,4292(s2)
    5c7c:	3c080000 	lui	t0,0x0
    5c80:	396c0001 	xori	t4,t3,0x1
    5c84:	a64c10c4 	sh	t4,4292(s2)
    5c88:	85080000 	lh	t0,0(t0)
    5c8c:	3c020000 	lui	v0,0x0
    5c90:	24420000 	addiu	v0,v0,0
    5c94:	8c4e00a4 	lw	t6,164(v0)
    5c98:	250d0041 	addiu	t5,t0,65
    5c9c:	2404000a 	li	a0,10
    5ca0:	a1cd0009 	sb	t5,9(t6)
    5ca4:	8c4700a4 	lw	a3,164(v0)
    5ca8:	24050007 	li	a1,7
    5cac:	0c000000 	jal	0 <func_800B3B50>
    5cb0:	24060005 	li	a2,5
    5cb4:	864f10c2 	lh	t7,4290(s2)
    5cb8:	3c070000 	lui	a3,0x0
    5cbc:	24040010 	li	a0,16
    5cc0:	000fc080 	sll	t8,t7,0x2
    5cc4:	00f83821 	addu	a3,a3,t8
    5cc8:	8ce70000 	lw	a3,0(a3)
    5ccc:	24050007 	li	a1,7
    5cd0:	0c000000 	jal	0 <func_800B3B50>
    5cd4:	24060005 	li	a2,5
    5cd8:	3c070000 	lui	a3,0x0
    5cdc:	8ce70000 	lw	a3,0(a3)
    5ce0:	24040014 	li	a0,20
    5ce4:	24050007 	li	a1,7
    5ce8:	0c000000 	jal	0 <func_800B3B50>
    5cec:	24060005 	li	a2,5
    5cf0:	865910c4 	lh	t9,4292(s2)
    5cf4:	24040011 	li	a0,17
    5cf8:	24050008 	li	a1,8
    5cfc:	13200003 	beqz	t9,5d0c <func_800B9638+0x224>
    5d00:	3c070000 	lui	a3,0x0
    5d04:	10000002 	b	5d10 <func_800B9638+0x228>
    5d08:	24020004 	li	v0,4
    5d0c:	24020007 	li	v0,7
    5d10:	304600ff 	andi	a2,v0,0xff
    5d14:	0c000000 	jal	0 <func_800B3B50>
    5d18:	8ce70000 	lw	a3,0(a3)
    5d1c:	864a10c4 	lh	t2,4292(s2)
    5d20:	24040015 	li	a0,21
    5d24:	24050008 	li	a1,8
    5d28:	11400003 	beqz	t2,5d38 <func_800B9638+0x250>
    5d2c:	3c070000 	lui	a3,0x0
    5d30:	10000002 	b	5d3c <func_800B9638+0x254>
    5d34:	24020007 	li	v0,7
    5d38:	24020004 	li	v0,4
    5d3c:	304600ff 	andi	a2,v0,0xff
    5d40:	0c000000 	jal	0 <func_800B3B50>
    5d44:	8ce70000 	lw	a3,0(a3)
    5d48:	3c0b0000 	lui	t3,0x0
    5d4c:	8d6b0000 	lw	t3,0(t3)
    5d50:	3c01ffff 	lui	at,0xffff
    5d54:	34217fff 	ori	at,at,0x7fff
    5d58:	95630050 	lhu	v1,80(t3)
    5d5c:	00616027 	nor	t4,v1,at
    5d60:	55800050 	bnezl	t4,5ea4 <func_800B9638+0x3bc>
    5d64:	2401bfff 	li	at,-16385
    5d68:	864d10c4 	lh	t5,4292(s2)
    5d6c:	3c050000 	lui	a1,0x0
    5d70:	24a50000 	addiu	a1,a1,0
    5d74:	15a00013 	bnez	t5,5dc4 <func_800B9638+0x2dc>
    5d78:	2404480a 	li	a0,18442
    5d7c:	3c0e0000 	lui	t6,0x0
    5d80:	3c0f0000 	lui	t7,0x0
    5d84:	25ef0000 	addiu	t7,t7,0
    5d88:	25c70000 	addiu	a3,t6,0
    5d8c:	3c050000 	lui	a1,0x0
    5d90:	24a50000 	addiu	a1,a1,0
    5d94:	afa70010 	sw	a3,16(sp)
    5d98:	afaf0014 	sw	t7,20(sp)
    5d9c:	24044808 	li	a0,18440
    5da0:	0c000000 	jal	0 <func_800B3B50>
    5da4:	24060004 	li	a2,4
    5da8:	865810c0 	lh	t8,4288(s2)
    5dac:	3c0a0000 	lui	t2,0x0
    5db0:	27190001 	addiu	t9,t8,1
    5db4:	a65910c0 	sh	t9,4288(s2)
    5db8:	8d4a0000 	lw	t2,0(t2)
    5dbc:	10000038 	b	5ea0 <func_800B9638+0x3b8>
    5dc0:	95430050 	lhu	v1,80(t2)
    5dc4:	3c0b0000 	lui	t3,0x0
    5dc8:	3c0c0000 	lui	t4,0x0
    5dcc:	258c0000 	addiu	t4,t4,0
    5dd0:	25670000 	addiu	a3,t3,0
    5dd4:	afa70010 	sw	a3,16(sp)
    5dd8:	afac0014 	sw	t4,20(sp)
    5ddc:	0c000000 	jal	0 <func_800B3B50>
    5de0:	24060004 	li	a2,4
    5de4:	a64010c0 	sh	zero,4288(s2)
    5de8:	3c0d0000 	lui	t5,0x0
    5dec:	8dad0000 	lw	t5,0(t5)
    5df0:	1000002b 	b	5ea0 <func_800B9638+0x3b8>
    5df4:	95a30050 	lhu	v1,80(t5)
    5df8:	14810007 	bne	a0,at,5e18 <func_800B9638+0x330>
    5dfc:	3c0a0000 	lui	t2,0x0
    5e00:	248e0001 	addiu	t6,a0,1
    5e04:	a64e10c0 	sh	t6,4288(s2)
    5e08:	3c0f0000 	lui	t7,0x0
    5e0c:	8def0000 	lw	t7,0(t7)
    5e10:	10000023 	b	5ea0 <func_800B9638+0x3b8>
    5e14:	95e30050 	lhu	v1,80(t7)
    5e18:	865810c4 	lh	t8,4292(s2)
    5e1c:	3c0c0000 	lui	t4,0x0
    5e20:	3c070000 	lui	a3,0x0
    5e24:	3b190001 	xori	t9,t8,0x1
    5e28:	a65910c4 	sh	t9,4292(s2)
    5e2c:	854a0000 	lh	t2,0(t2)
    5e30:	8d8c0000 	lw	t4,0(t4)
    5e34:	2404000d 	li	a0,13
    5e38:	254b0041 	addiu	t3,t2,65
    5e3c:	a18b0009 	sb	t3,9(t4)
    5e40:	8ce70000 	lw	a3,0(a3)
    5e44:	24050007 	li	a1,7
    5e48:	0c000000 	jal	0 <func_800B3B50>
    5e4c:	24060005 	li	a2,5
    5e50:	3c070000 	lui	a3,0x0
    5e54:	8ce70000 	lw	a3,0(a3)
    5e58:	24040012 	li	a0,18
    5e5c:	24050007 	li	a1,7
    5e60:	0c000000 	jal	0 <func_800B3B50>
    5e64:	24060005 	li	a2,5
    5e68:	864d10c4 	lh	t5,4292(s2)
    5e6c:	2404000d 	li	a0,13
    5e70:	24050009 	li	a1,9
    5e74:	11a00003 	beqz	t5,5e84 <func_800B9638+0x39c>
    5e78:	3c070000 	lui	a3,0x0
    5e7c:	10000002 	b	5e88 <func_800B9638+0x3a0>
    5e80:	24020001 	li	v0,1
    5e84:	24020006 	li	v0,6
    5e88:	304600ff 	andi	a2,v0,0xff
    5e8c:	0c000000 	jal	0 <func_800B3B50>
    5e90:	24e70000 	addiu	a3,a3,0
    5e94:	3c0e0000 	lui	t6,0x0
    5e98:	8dce0000 	lw	t6,0(t6)
    5e9c:	95c30050 	lhu	v1,80(t6)
    5ea0:	2401bfff 	li	at,-16385
    5ea4:	00617827 	nor	t7,v1,at
    5ea8:	15e000c9 	bnez	t7,61d0 <func_800B9638+0x6e8>
    5eac:	2404480a 	li	a0,18442
    5eb0:	3c180000 	lui	t8,0x0
    5eb4:	3c190000 	lui	t9,0x0
    5eb8:	27390000 	addiu	t9,t9,0
    5ebc:	27070000 	addiu	a3,t8,0
    5ec0:	3c050000 	lui	a1,0x0
    5ec4:	24a50000 	addiu	a1,a1,0
    5ec8:	afa70010 	sw	a3,16(sp)
    5ecc:	afb90014 	sw	t9,20(sp)
    5ed0:	0c000000 	jal	0 <func_800B3B50>
    5ed4:	24060004 	li	a2,4
    5ed8:	a64010c0 	sh	zero,4288(s2)
    5edc:	1000057d 	b	74d4 <func_800B9638+0x19ec>
    5ee0:	24020001 	li	v0,1
    5ee4:	3c020000 	lui	v0,0x0
    5ee8:	24420000 	addiu	v0,v0,0
    5eec:	8c4b00a4 	lw	t3,164(v0)
    5ef0:	250a0041 	addiu	t2,t0,65
    5ef4:	2404000c 	li	a0,12
    5ef8:	a16a0009 	sb	t2,9(t3)
    5efc:	8c4700a4 	lw	a3,164(v0)
    5f00:	24050007 	li	a1,7
    5f04:	0c000000 	jal	0 <func_800B3B50>
    5f08:	24060005 	li	a2,5
    5f0c:	864c10c2 	lh	t4,4290(s2)
    5f10:	3c070000 	lui	a3,0x0
    5f14:	24040012 	li	a0,18
    5f18:	000c6880 	sll	t5,t4,0x2
    5f1c:	00ed3821 	addu	a3,a3,t5
    5f20:	8ce70000 	lw	a3,0(a3)
    5f24:	24050007 	li	a1,7
    5f28:	0c000000 	jal	0 <func_800B3B50>
    5f2c:	24060005 	li	a2,5
    5f30:	3c070000 	lui	a3,0x0
    5f34:	8ce70000 	lw	a3,0(a3)
    5f38:	24040016 	li	a0,22
    5f3c:	24050007 	li	a1,7
    5f40:	0c000000 	jal	0 <func_800B3B50>
    5f44:	24060005 	li	a2,5
    5f48:	864e10c2 	lh	t6,4290(s2)
    5f4c:	3c040000 	lui	a0,0x0
    5f50:	8c840000 	lw	a0,0(a0)
    5f54:	000e7880 	sll	t7,t6,0x2
    5f58:	022fc021 	addu	t8,s1,t7
    5f5c:	8f19fffc 	lw	t9,-4(t8)
    5f60:	24840009 	addiu	a0,a0,9
    5f64:	0320f809 	jalr	t9
    5f68:	00000000 	nop
    5f6c:	50400007 	beqzl	v0,5f8c <func_800B9638+0x4a4>
    5f70:	864c10c0 	lh	t4,4288(s2)
    5f74:	864a10c0 	lh	t2,4288(s2)
    5f78:	24020001 	li	v0,1
    5f7c:	254b0001 	addiu	t3,t2,1
    5f80:	10000554 	b	74d4 <func_800B9638+0x19ec>
    5f84:	a64b10c0 	sh	t3,4288(s2)
    5f88:	864c10c0 	lh	t4,4288(s2)
    5f8c:	24020001 	li	v0,1
    5f90:	258d0008 	addiu	t5,t4,8
    5f94:	1000054f 	b	74d4 <func_800B9638+0x19ec>
    5f98:	a64d10c0 	sh	t5,4288(s2)
    5f9c:	864e10c4 	lh	t6,4292(s2)
    5fa0:	3c020000 	lui	v0,0x0
    5fa4:	3c180000 	lui	t8,0x0
    5fa8:	39cf0001 	xori	t7,t6,0x1
    5fac:	a64f10c4 	sh	t7,4292(s2)
    5fb0:	87180000 	lh	t8,0(t8)
    5fb4:	24420000 	addiu	v0,v0,0
    5fb8:	8c4a00a4 	lw	t2,164(v0)
    5fbc:	27190041 	addiu	t9,t8,65
    5fc0:	2404000d 	li	a0,13
    5fc4:	a1590009 	sb	t9,9(t2)
    5fc8:	8c4700a4 	lw	a3,164(v0)
    5fcc:	24050007 	li	a1,7
    5fd0:	0c000000 	jal	0 <func_800B3B50>
    5fd4:	24060005 	li	a2,5
    5fd8:	864b10c0 	lh	t3,4288(s2)
    5fdc:	24010064 	li	at,100
    5fe0:	3c070000 	lui	a3,0x0
    5fe4:	0161001a 	div	zero,t3,at
    5fe8:	00006012 	mflo	t4
    5fec:	000c6880 	sll	t5,t4,0x2
    5ff0:	00ed3821 	addu	a3,a3,t5
    5ff4:	8ce70000 	lw	a3,0(a3)
    5ff8:	24040013 	li	a0,19
    5ffc:	24050007 	li	a1,7
    6000:	0c000000 	jal	0 <func_800B3B50>
    6004:	24060005 	li	a2,5
    6008:	3c070000 	lui	a3,0x0
    600c:	8ce70000 	lw	a3,0(a3)
    6010:	24040017 	li	a0,23
    6014:	24050007 	li	a1,7
    6018:	0c000000 	jal	0 <func_800B3B50>
    601c:	24060005 	li	a2,5
    6020:	864e10c4 	lh	t6,4292(s2)
    6024:	2404000d 	li	a0,13
    6028:	24050009 	li	a1,9
    602c:	11c00003 	beqz	t6,603c <func_800B9638+0x554>
    6030:	3c070000 	lui	a3,0x0
    6034:	10000002 	b	6040 <func_800B9638+0x558>
    6038:	24020001 	li	v0,1
    603c:	24020006 	li	v0,6
    6040:	304600ff 	andi	a2,v0,0xff
    6044:	0c000000 	jal	0 <func_800B3B50>
    6048:	24e70000 	addiu	a3,a3,0
    604c:	3c0f0000 	lui	t7,0x0
    6050:	8def0000 	lw	t7,0(t7)
    6054:	3c01ffff 	lui	at,0xffff
    6058:	34217fff 	ori	at,at,0x7fff
    605c:	95e30050 	lhu	v1,80(t7)
    6060:	24044808 	li	a0,18440
    6064:	3c050000 	lui	a1,0x0
    6068:	0061c027 	nor	t8,v1,at
    606c:	13000003 	beqz	t8,607c <func_800B9638+0x594>
    6070:	2401bfff 	li	at,-16385
    6074:	0061c827 	nor	t9,v1,at
    6078:	17200055 	bnez	t9,61d0 <func_800B9638+0x6e8>
    607c:	3c0a0000 	lui	t2,0x0
    6080:	3c0b0000 	lui	t3,0x0
    6084:	256b0000 	addiu	t3,t3,0
    6088:	25470000 	addiu	a3,t2,0
    608c:	afa70010 	sw	a3,16(sp)
    6090:	afab0014 	sw	t3,20(sp)
    6094:	24a50000 	addiu	a1,a1,0
    6098:	0c000000 	jal	0 <func_800B3B50>
    609c:	24060004 	li	a2,4
    60a0:	864c10c0 	lh	t4,4288(s2)
    60a4:	240100ca 	li	at,202
    60a8:	24020001 	li	v0,1
    60ac:	15810002 	bne	t4,at,60b8 <func_800B9638+0x5d0>
    60b0:	00000000 	nop
    60b4:	a64010c2 	sh	zero,4290(s2)
    60b8:	10000506 	b	74d4 <func_800B9638+0x19ec>
    60bc:	a64010c0 	sh	zero,4288(s2)
    60c0:	864d10c4 	lh	t5,4292(s2)
    60c4:	3c020000 	lui	v0,0x0
    60c8:	3c0f0000 	lui	t7,0x0
    60cc:	39ae0001 	xori	t6,t5,0x1
    60d0:	a64e10c4 	sh	t6,4292(s2)
    60d4:	85ef0000 	lh	t7,0(t7)
    60d8:	24420000 	addiu	v0,v0,0
    60dc:	8c5900a4 	lw	t9,164(v0)
    60e0:	25f80041 	addiu	t8,t7,65
    60e4:	24010064 	li	at,100
    60e8:	a3380009 	sb	t8,9(t9)
    60ec:	864a10c0 	lh	t2,4288(s2)
    60f0:	2404000d 	li	a0,13
    60f4:	24050007 	li	a1,7
    60f8:	0141001a 	div	zero,t2,at
    60fc:	00005812 	mflo	t3
    6100:	000b6080 	sll	t4,t3,0x2
    6104:	004c6821 	addu	t5,v0,t4
    6108:	8da70080 	lw	a3,128(t5)
    610c:	0c000000 	jal	0 <func_800B3B50>
    6110:	24060005 	li	a2,5
    6114:	3c070000 	lui	a3,0x0
    6118:	8ce70000 	lw	a3,0(a3)
    611c:	24040011 	li	a0,17
    6120:	24050007 	li	a1,7
    6124:	0c000000 	jal	0 <func_800B3B50>
    6128:	24060005 	li	a2,5
    612c:	3c070000 	lui	a3,0x0
    6130:	8ce70000 	lw	a3,0(a3)
    6134:	24040017 	li	a0,23
    6138:	24050007 	li	a1,7
    613c:	0c000000 	jal	0 <func_800B3B50>
    6140:	24060005 	li	a2,5
    6144:	864e10c4 	lh	t6,4292(s2)
    6148:	2404000d 	li	a0,13
    614c:	24050009 	li	a1,9
    6150:	11c00003 	beqz	t6,6160 <func_800B9638+0x678>
    6154:	3c070000 	lui	a3,0x0
    6158:	10000002 	b	6164 <func_800B9638+0x67c>
    615c:	24020001 	li	v0,1
    6160:	24020006 	li	v0,6
    6164:	304600ff 	andi	a2,v0,0xff
    6168:	0c000000 	jal	0 <func_800B3B50>
    616c:	24e70000 	addiu	a3,a3,0
    6170:	3c0f0000 	lui	t7,0x0
    6174:	8def0000 	lw	t7,0(t7)
    6178:	3c01ffff 	lui	at,0xffff
    617c:	34217fff 	ori	at,at,0x7fff
    6180:	95e30050 	lhu	v1,80(t7)
    6184:	24044808 	li	a0,18440
    6188:	3c050000 	lui	a1,0x0
    618c:	0061c027 	nor	t8,v1,at
    6190:	13000003 	beqz	t8,61a0 <func_800B9638+0x6b8>
    6194:	2401bfff 	li	at,-16385
    6198:	0061c827 	nor	t9,v1,at
    619c:	1720000c 	bnez	t9,61d0 <func_800B9638+0x6e8>
    61a0:	3c0a0000 	lui	t2,0x0
    61a4:	3c0b0000 	lui	t3,0x0
    61a8:	256b0000 	addiu	t3,t3,0
    61ac:	25470000 	addiu	a3,t2,0
    61b0:	afa70010 	sw	a3,16(sp)
    61b4:	afab0014 	sw	t3,20(sp)
    61b8:	24a50000 	addiu	a1,a1,0
    61bc:	0c000000 	jal	0 <func_800B3B50>
    61c0:	24060004 	li	a2,4
    61c4:	864c10c0 	lh	t4,4288(s2)
    61c8:	258dfff7 	addiu	t5,t4,-9
    61cc:	a64d10c0 	sh	t5,4288(s2)
    61d0:	100004c0 	b	74d4 <func_800B9638+0x19ec>
    61d4:	24020001 	li	v0,1
    61d8:	0c000000 	jal	0 <func_800B3B50>
    61dc:	24040002 	li	a0,2
    61e0:	10400172 	beqz	v0,67ac <func_800B9638+0xcc4>
    61e4:	2404000c 	li	a0,12
    61e8:	24040002 	li	a0,2
    61ec:	24050041 	li	a1,65
    61f0:	0c000000 	jal	0 <func_800B3B50>
    61f4:	24060045 	li	a2,69
    61f8:	3c010000 	lui	at,0x0
    61fc:	ac220000 	sw	v0,0(at)
    6200:	240e0001 	li	t6,1
    6204:	0c000000 	jal	0 <func_800B3B50>
    6208:	a64e10c0 	sh	t6,4288(s2)
    620c:	3c080000 	lui	t0,0x0
    6210:	85080000 	lh	t0,0(t0)
    6214:	3c190000 	lui	t9,0x0
    6218:	8f390000 	lw	t9,0(t9)
    621c:	240f0001 	li	t7,1
    6220:	010fc004 	sllv	t8,t7,t0
    6224:	03195024 	and	t2,t8,t9
    6228:	1140000a 	beqz	t2,6254 <func_800B9638+0x76c>
    622c:	3c010000 	lui	at,0x0
    6230:	25050041 	addiu	a1,t0,65
    6234:	30a500ff 	andi	a1,a1,0xff
    6238:	0c000000 	jal	0 <func_800B3B50>
    623c:	24040002 	li	a0,2
    6240:	3c010000 	lui	at,0x0
    6244:	ac220000 	sw	v0,0(at)
    6248:	240b0002 	li	t3,2
    624c:	10000004 	b	6260 <func_800B9638+0x778>
    6250:	a64b10c2 	sh	t3,4290(s2)
    6254:	ac200000 	sw	zero,0(at)
    6258:	240c0001 	li	t4,1
    625c:	a64c10c2 	sh	t4,4290(s2)
    6260:	24100001 	li	s0,1
    6264:	00008825 	move	s1,zero
    6268:	27a20074 	addiu	v0,sp,116
    626c:	2408003f 	li	t0,63
    6270:	2404002d 	li	a0,45
    6274:	24030005 	li	v1,5
    6278:	3c0d0000 	lui	t5,0x0
    627c:	8dad0000 	lw	t5,0(t5)
    6280:	262f0041 	addiu	t7,s1,65
    6284:	01b07024 	and	t6,t5,s0
    6288:	11c00003 	beqz	t6,6298 <func_800B9638+0x7b0>
    628c:	00108040 	sll	s0,s0,0x1
    6290:	10000002 	b	629c <func_800B9638+0x7b4>
    6294:	a04f0001 	sb	t7,1(v0)
    6298:	a0480001 	sb	t0,1(v0)
    629c:	26310001 	addiu	s1,s1,1
    62a0:	24420002 	addiu	v0,v0,2
    62a4:	1623fff4 	bne	s1,v1,6278 <func_800B9638+0x790>
    62a8:	a044fffe 	sb	a0,-2(v0)
    62ac:	a0440000 	sb	a0,0(v0)
    62b0:	a0400001 	sb	zero,1(v0)
    62b4:	3c180000 	lui	t8,0x0
    62b8:	8f180000 	lw	t8,0(t8)
    62bc:	2401feff 	li	at,-257
    62c0:	97030050 	lhu	v1,80(t8)
    62c4:	0061c827 	nor	t9,v1,at
    62c8:	17200030 	bnez	t9,638c <func_800B9638+0x8a4>
    62cc:	3c070000 	lui	a3,0x0
    62d0:	3c0a0000 	lui	t2,0x0
    62d4:	24e70000 	addiu	a3,a3,0
    62d8:	254a0000 	addiu	t2,t2,0
    62dc:	3c050000 	lui	a1,0x0
    62e0:	24a50000 	addiu	a1,a1,0
    62e4:	afaa0014 	sw	t2,20(sp)
    62e8:	afa70010 	sw	a3,16(sp)
    62ec:	24044809 	li	a0,18441
    62f0:	0c000000 	jal	0 <func_800B3B50>
    62f4:	24060004 	li	a2,4
    62f8:	3c080000 	lui	t0,0x0
    62fc:	85080000 	lh	t0,0(t0)
    6300:	3c0e0000 	lui	t6,0x0
    6304:	240a0001 	li	t2,1
    6308:	29010004 	slti	at,t0,4
    630c:	14200004 	bnez	at,6320 <func_800B9638+0x838>
    6310:	250b0001 	addiu	t3,t0,1
    6314:	3c010000 	lui	at,0x0
    6318:	10000003 	b	6328 <func_800B9638+0x840>
    631c:	a4200000 	sh	zero,0(at)
    6320:	3c010000 	lui	at,0x0
    6324:	a42b0000 	sh	t3,0(at)
    6328:	3c080000 	lui	t0,0x0
    632c:	85080000 	lh	t0,0(t0)
    6330:	8dce0000 	lw	t6,0(t6)
    6334:	240c0001 	li	t4,1
    6338:	010c6804 	sllv	t5,t4,t0
    633c:	01ae7824 	and	t7,t5,t6
    6340:	11e0000d 	beqz	t7,6378 <func_800B9638+0x890>
    6344:	3c010000 	lui	at,0x0
    6348:	25050041 	addiu	a1,t0,65
    634c:	30a500ff 	andi	a1,a1,0xff
    6350:	0c000000 	jal	0 <func_800B3B50>
    6354:	24040002 	li	a0,2
    6358:	3c010000 	lui	at,0x0
    635c:	ac220000 	sw	v0,0(at)
    6360:	24180002 	li	t8,2
    6364:	a65810c2 	sh	t8,4290(s2)
    6368:	3c190000 	lui	t9,0x0
    636c:	8f390000 	lw	t9,0(t9)
    6370:	10000006 	b	638c <func_800B9638+0x8a4>
    6374:	97230050 	lhu	v1,80(t9)
    6378:	ac200000 	sw	zero,0(at)
    637c:	a64a10c2 	sh	t2,4290(s2)
    6380:	3c0b0000 	lui	t3,0x0
    6384:	8d6b0000 	lw	t3,0(t3)
    6388:	95630050 	lhu	v1,80(t3)
    638c:	2401fdff 	li	at,-513
    6390:	00616027 	nor	t4,v1,at
    6394:	1580002a 	bnez	t4,6440 <func_800B9638+0x958>
    6398:	3c070000 	lui	a3,0x0
    639c:	3c0d0000 	lui	t5,0x0
    63a0:	24e70000 	addiu	a3,a3,0
    63a4:	25ad0000 	addiu	t5,t5,0
    63a8:	3c050000 	lui	a1,0x0
    63ac:	24a50000 	addiu	a1,a1,0
    63b0:	afad0014 	sw	t5,20(sp)
    63b4:	afa70010 	sw	a3,16(sp)
    63b8:	24044809 	li	a0,18441
    63bc:	0c000000 	jal	0 <func_800B3B50>
    63c0:	24060004 	li	a2,4
    63c4:	3c080000 	lui	t0,0x0
    63c8:	85080000 	lh	t0,0(t0)
    63cc:	3c010000 	lui	at,0x0
    63d0:	3c0a0000 	lui	t2,0x0
    63d4:	1d000005 	bgtz	t0,63ec <func_800B9638+0x904>
    63d8:	250fffff 	addiu	t7,t0,-1
    63dc:	240e0004 	li	t6,4
    63e0:	3c010000 	lui	at,0x0
    63e4:	10000002 	b	63f0 <func_800B9638+0x908>
    63e8:	a42e0000 	sh	t6,0(at)
    63ec:	a42f0000 	sh	t7,0(at)
    63f0:	3c080000 	lui	t0,0x0
    63f4:	85080000 	lh	t0,0(t0)
    63f8:	8d4a0000 	lw	t2,0(t2)
    63fc:	24180001 	li	t8,1
    6400:	0118c804 	sllv	t9,t8,t0
    6404:	032a5824 	and	t3,t9,t2
    6408:	1160000a 	beqz	t3,6434 <func_800B9638+0x94c>
    640c:	3c010000 	lui	at,0x0
    6410:	25050041 	addiu	a1,t0,65
    6414:	30a500ff 	andi	a1,a1,0xff
    6418:	0c000000 	jal	0 <func_800B3B50>
    641c:	24040002 	li	a0,2
    6420:	3c010000 	lui	at,0x0
    6424:	ac220000 	sw	v0,0(at)
    6428:	240c0002 	li	t4,2
    642c:	10000004 	b	6440 <func_800B9638+0x958>
    6430:	a64c10c2 	sh	t4,4290(s2)
    6434:	ac200000 	sw	zero,0(at)
    6438:	240d0001 	li	t5,1
    643c:	a64d10c2 	sh	t5,4290(s2)
    6440:	864210c2 	lh	v0,4290(s2)
    6444:	3c070000 	lui	a3,0x0
    6448:	2404000e 	li	a0,14
    644c:	00027080 	sll	t6,v0,0x2
    6450:	00ee3821 	addu	a3,a3,t6
    6454:	8ce70000 	lw	a3,0(a3)
    6458:	24050007 	li	a1,7
    645c:	0c000000 	jal	0 <func_800B3B50>
    6460:	24060005 	li	a2,5
    6464:	2404000f 	li	a0,15
    6468:	24050007 	li	a1,7
    646c:	24060004 	li	a2,4
    6470:	0c000000 	jal	0 <func_800B3B50>
    6474:	27a70074 	addiu	a3,sp,116
    6478:	3c040000 	lui	a0,0x0
    647c:	84840000 	lh	a0,0(a0)
    6480:	3c070000 	lui	a3,0x0
    6484:	24e70000 	addiu	a3,a3,0
    6488:	00042040 	sll	a0,a0,0x1
    648c:	24840010 	addiu	a0,a0,16
    6490:	308400ff 	andi	a0,a0,0xff
    6494:	24050007 	li	a1,7
    6498:	0c000000 	jal	0 <func_800B3B50>
    649c:	24060007 	li	a2,7
    64a0:	0c000000 	jal	0 <func_800B3B50>
    64a4:	00000000 	nop
    64a8:	00022400 	sll	a0,v0,0x10
    64ac:	00042403 	sra	a0,a0,0x10
    64b0:	27a50074 	addiu	a1,sp,116
    64b4:	0c000000 	jal	0 <func_800B3B50>
    64b8:	24060006 	li	a2,6
    64bc:	3c070000 	lui	a3,0x0
    64c0:	8ce70000 	lw	a3,0(a3)
    64c4:	2404000d 	li	a0,13
    64c8:	24050009 	li	a1,9
    64cc:	0c000000 	jal	0 <func_800B3B50>
    64d0:	24060006 	li	a2,6
    64d4:	24040011 	li	a0,17
    64d8:	24050009 	li	a1,9
    64dc:	24060004 	li	a2,4
    64e0:	0c000000 	jal	0 <func_800B3B50>
    64e4:	27a70074 	addiu	a3,sp,116
    64e8:	0c000000 	jal	0 <func_800B3B50>
    64ec:	24040002 	li	a0,2
    64f0:	00022400 	sll	a0,v0,0x10
    64f4:	00042403 	sra	a0,a0,0x10
    64f8:	27a50074 	addiu	a1,sp,116
    64fc:	0c000000 	jal	0 <func_800B3B50>
    6500:	24060006 	li	a2,6
    6504:	3c070000 	lui	a3,0x0
    6508:	8ce70000 	lw	a3,0(a3)
    650c:	2404000d 	li	a0,13
    6510:	2405000a 	li	a1,10
    6514:	0c000000 	jal	0 <func_800B3B50>
    6518:	24060006 	li	a2,6
    651c:	24040011 	li	a0,17
    6520:	2405000a 	li	a1,10
    6524:	24060004 	li	a2,4
    6528:	0c000000 	jal	0 <func_800B3B50>
    652c:	27a70074 	addiu	a3,sp,116
    6530:	3c0f0000 	lui	t7,0x0
    6534:	8def0000 	lw	t7,0(t7)
    6538:	11e00010 	beqz	t7,657c <func_800B9638+0xa94>
    653c:	3c040000 	lui	a0,0x0
    6540:	84840000 	lh	a0,0(a0)
    6544:	27a50074 	addiu	a1,sp,116
    6548:	0c000000 	jal	0 <func_800B3B50>
    654c:	24060006 	li	a2,6
    6550:	3c070000 	lui	a3,0x0
    6554:	8ce70000 	lw	a3,0(a3)
    6558:	2404000d 	li	a0,13
    655c:	2405000b 	li	a1,11
    6560:	0c000000 	jal	0 <func_800B3B50>
    6564:	24060007 	li	a2,7
    6568:	24040011 	li	a0,17
    656c:	2405000b 	li	a1,11
    6570:	24060004 	li	a2,4
    6574:	0c000000 	jal	0 <func_800B3B50>
    6578:	27a70074 	addiu	a3,sp,116
    657c:	865810c2 	lh	t8,4290(s2)
    6580:	3c070000 	lui	a3,0x0
    6584:	8ce70000 	lw	a3,0(a3)
    6588:	27190002 	addiu	t9,t8,2
    658c:	afb900a0 	sw	t9,160(sp)
    6590:	2404000f 	li	a0,15
    6594:	24050016 	li	a1,22
    6598:	0c000000 	jal	0 <func_800B3B50>
    659c:	24060001 	li	a2,1
    65a0:	8fa900a0 	lw	t1,160(sp)
    65a4:	3c0b0000 	lui	t3,0x0
    65a8:	256b0000 	addiu	t3,t3,0
    65ac:	00095080 	sll	t2,t1,0x2
    65b0:	014b8021 	addu	s0,t2,t3
    65b4:	3c070000 	lui	a3,0x0
    65b8:	8ce70000 	lw	a3,0(a3)
    65bc:	92060003 	lbu	a2,3(s0)
    65c0:	24040012 	li	a0,18
    65c4:	0c000000 	jal	0 <func_800B3B50>
    65c8:	24050017 	li	a1,23
    65cc:	3c070000 	lui	a3,0x0
    65d0:	8ce70000 	lw	a3,0(a3)
    65d4:	24040012 	li	a0,18
    65d8:	24050018 	li	a1,24
    65dc:	0c000000 	jal	0 <func_800B3B50>
    65e0:	9206ffff 	lbu	a2,-1(s0)
    65e4:	3c070000 	lui	a3,0x0
    65e8:	8ce70000 	lw	a3,0(a3)
    65ec:	24040012 	li	a0,18
    65f0:	24050019 	li	a1,25
    65f4:	0c000000 	jal	0 <func_800B3B50>
    65f8:	9206fffb 	lbu	a2,-5(s0)
    65fc:	864510c2 	lh	a1,4290(s2)
    6600:	3c070000 	lui	a3,0x0
    6604:	8ce70000 	lw	a3,0(a3)
    6608:	24a50016 	addiu	a1,a1,22
    660c:	30a500ff 	andi	a1,a1,0xff
    6610:	2404000e 	li	a0,14
    6614:	0c000000 	jal	0 <func_800B3B50>
    6618:	24060007 	li	a2,7
    661c:	3c070000 	lui	a3,0x0
    6620:	8ce70000 	lw	a3,0(a3)
    6624:	2404000d 	li	a0,13
    6628:	2405001a 	li	a1,26
    662c:	0c000000 	jal	0 <func_800B3B50>
    6630:	24060005 	li	a2,5
    6634:	3c070000 	lui	a3,0x0
    6638:	8ce70000 	lw	a3,0(a3)
    663c:	24040014 	li	a0,20
    6640:	2405001a 	li	a1,26
    6644:	0c000000 	jal	0 <func_800B3B50>
    6648:	24060005 	li	a2,5
    664c:	3c0c0000 	lui	t4,0x0
    6650:	8d8c0000 	lw	t4,0(t4)
    6654:	2401f7ff 	li	at,-2049
    6658:	3c070000 	lui	a3,0x0
    665c:	95830050 	lhu	v1,80(t4)
    6660:	24e70000 	addiu	a3,a3,0
    6664:	24044809 	li	a0,18441
    6668:	00616827 	nor	t5,v1,at
    666c:	15a0000f 	bnez	t5,66ac <func_800B9638+0xbc4>
    6670:	3c050000 	lui	a1,0x0
    6674:	3c0e0000 	lui	t6,0x0
    6678:	25ce0000 	addiu	t6,t6,0
    667c:	afae0014 	sw	t6,20(sp)
    6680:	24a50000 	addiu	a1,a1,0
    6684:	24060004 	li	a2,4
    6688:	0c000000 	jal	0 <func_800B3B50>
    668c:	afa70010 	sw	a3,16(sp)
    6690:	864f10c2 	lh	t7,4290(s2)
    6694:	3c0a0000 	lui	t2,0x0
    6698:	25f8ffff 	addiu	t8,t7,-1
    669c:	33190003 	andi	t9,t8,0x3
    66a0:	a65910c2 	sh	t9,4290(s2)
    66a4:	8d4a0000 	lw	t2,0(t2)
    66a8:	95430050 	lhu	v1,80(t2)
    66ac:	2401fbff 	li	at,-1025
    66b0:	00615827 	nor	t3,v1,at
    66b4:	15600012 	bnez	t3,6700 <func_800B9638+0xc18>
    66b8:	24044809 	li	a0,18441
    66bc:	3c0c0000 	lui	t4,0x0
    66c0:	3c0d0000 	lui	t5,0x0
    66c4:	25ad0000 	addiu	t5,t5,0
    66c8:	25870000 	addiu	a3,t4,0
    66cc:	3c050000 	lui	a1,0x0
    66d0:	24a50000 	addiu	a1,a1,0
    66d4:	afa70010 	sw	a3,16(sp)
    66d8:	afad0014 	sw	t5,20(sp)
    66dc:	0c000000 	jal	0 <func_800B3B50>
    66e0:	24060004 	li	a2,4
    66e4:	864e10c2 	lh	t6,4290(s2)
    66e8:	3c190000 	lui	t9,0x0
    66ec:	25cf0001 	addiu	t7,t6,1
    66f0:	31f80003 	andi	t8,t7,0x3
    66f4:	a65810c2 	sh	t8,4290(s2)
    66f8:	8f390000 	lw	t9,0(t9)
    66fc:	97230050 	lhu	v1,80(t9)
    6700:	3c01ffff 	lui	at,0xffff
    6704:	34217fff 	ori	at,at,0x7fff
    6708:	00615027 	nor	t2,v1,at
    670c:	15400016 	bnez	t2,6768 <func_800B9638+0xc80>
    6710:	24044808 	li	a0,18440
    6714:	3c0b0000 	lui	t3,0x0
    6718:	3c0c0000 	lui	t4,0x0
    671c:	258c0000 	addiu	t4,t4,0
    6720:	25670000 	addiu	a3,t3,0
    6724:	3c050000 	lui	a1,0x0
    6728:	24a50000 	addiu	a1,a1,0
    672c:	afa70010 	sw	a3,16(sp)
    6730:	afac0014 	sw	t4,20(sp)
    6734:	0c000000 	jal	0 <func_800B3B50>
    6738:	24060004 	li	a2,4
    673c:	864d10c2 	lh	t5,4290(s2)
    6740:	a64010c4 	sh	zero,4292(s2)
    6744:	3c0f0000 	lui	t7,0x0
    6748:	000d7080 	sll	t6,t5,0x2
    674c:	01cd7023 	subu	t6,t6,t5
    6750:	000e70c0 	sll	t6,t6,0x3
    6754:	01cd7021 	addu	t6,t6,t5
    6758:	000e7080 	sll	t6,t6,0x2
    675c:	a64e10c0 	sh	t6,4288(s2)
    6760:	8def0000 	lw	t7,0(t7)
    6764:	95e30050 	lhu	v1,80(t7)
    6768:	2401bfff 	li	at,-16385
    676c:	0061c027 	nor	t8,v1,at
    6770:	1700fe97 	bnez	t8,61d0 <func_800B9638+0x6e8>
    6774:	2404480a 	li	a0,18442
    6778:	3c190000 	lui	t9,0x0
    677c:	3c0a0000 	lui	t2,0x0
    6780:	254a0000 	addiu	t2,t2,0
    6784:	27270000 	addiu	a3,t9,0
    6788:	3c050000 	lui	a1,0x0
    678c:	24a50000 	addiu	a1,a1,0
    6790:	afa70010 	sw	a3,16(sp)
    6794:	afaa0014 	sw	t2,20(sp)
    6798:	0c000000 	jal	0 <func_800B3B50>
    679c:	24060004 	li	a2,4
    67a0:	a64010c2 	sh	zero,4290(s2)
    67a4:	1000034b 	b	74d4 <func_800B9638+0x19ec>
    67a8:	24020001 	li	v0,1
    67ac:	3c070000 	lui	a3,0x0
    67b0:	8ce70000 	lw	a3,0(a3)
    67b4:	2405001a 	li	a1,26
    67b8:	0c000000 	jal	0 <func_800B3B50>
    67bc:	24060004 	li	a2,4
    67c0:	3c070000 	lui	a3,0x0
    67c4:	8ce70000 	lw	a3,0(a3)
    67c8:	24040013 	li	a0,19
    67cc:	2405001a 	li	a1,26
    67d0:	0c000000 	jal	0 <func_800B3B50>
    67d4:	24060004 	li	a2,4
    67d8:	3c0b0000 	lui	t3,0x0
    67dc:	8d6b0000 	lw	t3,0(t3)
    67e0:	2401bfff 	li	at,-16385
    67e4:	3c050000 	lui	a1,0x0
    67e8:	95630050 	lhu	v1,80(t3)
    67ec:	24a50000 	addiu	a1,a1,0
    67f0:	2404480a 	li	a0,18442
    67f4:	00616027 	nor	t4,v1,at
    67f8:	11800006 	beqz	t4,6814 <func_800B9638+0xd2c>
    67fc:	2401f7ff 	li	at,-2049
    6800:	00616827 	nor	t5,v1,at
    6804:	11a00003 	beqz	t5,6814 <func_800B9638+0xd2c>
    6808:	2401fbff 	li	at,-1025
    680c:	00617027 	nor	t6,v1,at
    6810:	15c00009 	bnez	t6,6838 <func_800B9638+0xd50>
    6814:	3c0f0000 	lui	t7,0x0
    6818:	3c180000 	lui	t8,0x0
    681c:	27180000 	addiu	t8,t8,0
    6820:	25e70000 	addiu	a3,t7,0
    6824:	afa70010 	sw	a3,16(sp)
    6828:	afb80014 	sw	t8,20(sp)
    682c:	0c000000 	jal	0 <func_800B3B50>
    6830:	24060004 	li	a2,4
    6834:	a64010c2 	sh	zero,4290(s2)
    6838:	10000326 	b	74d4 <func_800B9638+0x19ec>
    683c:	24020002 	li	v0,2
    6840:	8f390000 	lw	t9,0(t9)
    6844:	2401f7ff 	li	at,-2049
    6848:	3c070000 	lui	a3,0x0
    684c:	97230050 	lhu	v1,80(t9)
    6850:	24e70000 	addiu	a3,a3,0
    6854:	24044809 	li	a0,18441
    6858:	00615027 	nor	t2,v1,at
    685c:	15400012 	bnez	t2,68a8 <func_800B9638+0xdc0>
    6860:	3c050000 	lui	a1,0x0
    6864:	3c0b0000 	lui	t3,0x0
    6868:	256b0000 	addiu	t3,t3,0
    686c:	afab0014 	sw	t3,20(sp)
    6870:	24a50000 	addiu	a1,a1,0
    6874:	24060004 	li	a2,4
    6878:	0c000000 	jal	0 <func_800B3B50>
    687c:	afa70010 	sw	a3,16(sp)
    6880:	864c10c2 	lh	t4,4290(s2)
    6884:	a64010c0 	sh	zero,4288(s2)
    6888:	3c0f0000 	lui	t7,0x0
    688c:	258dffff 	addiu	t5,t4,-1
    6890:	31ae0003 	andi	t6,t5,0x3
    6894:	a64e10c2 	sh	t6,4290(s2)
    6898:	8def0000 	lw	t7,0(t7)
    689c:	3c010000 	lui	at,0x0
    68a0:	a4200000 	sh	zero,0(at)
    68a4:	95e30050 	lhu	v1,80(t7)
    68a8:	2401fbff 	li	at,-1025
    68ac:	0061c027 	nor	t8,v1,at
    68b0:	17000012 	bnez	t8,68fc <func_800B9638+0xe14>
    68b4:	3c070000 	lui	a3,0x0
    68b8:	3c190000 	lui	t9,0x0
    68bc:	24e70000 	addiu	a3,a3,0
    68c0:	27390000 	addiu	t9,t9,0
    68c4:	3c050000 	lui	a1,0x0
    68c8:	24a50000 	addiu	a1,a1,0
    68cc:	afb90014 	sw	t9,20(sp)
    68d0:	afa70010 	sw	a3,16(sp)
    68d4:	24044809 	li	a0,18441
    68d8:	0c000000 	jal	0 <func_800B3B50>
    68dc:	24060004 	li	a2,4
    68e0:	864a10c2 	lh	t2,4290(s2)
    68e4:	a64010c0 	sh	zero,4288(s2)
    68e8:	3c010000 	lui	at,0x0
    68ec:	254b0001 	addiu	t3,t2,1
    68f0:	316c0003 	andi	t4,t3,0x3
    68f4:	a64c10c2 	sh	t4,4290(s2)
    68f8:	a4200000 	sh	zero,0(at)
    68fc:	27a40074 	addiu	a0,sp,116
    6900:	24050007 	li	a1,7
    6904:	24060005 	li	a2,5
    6908:	0c000000 	jal	0 <func_800B3B50>
    690c:	24070004 	li	a3,4
    6910:	3c0d0000 	lui	t5,0x0
    6914:	85ad0000 	lh	t5,0(t5)
    6918:	8fa900a0 	lw	t1,160(sp)
    691c:	3c040000 	lui	a0,0x0
    6920:	11a00070 	beqz	t5,6ae4 <func_800B9638+0xffc>
    6924:	3c070000 	lui	a3,0x0
    6928:	8ce70000 	lw	a3,0(a3)
    692c:	24040004 	li	a0,4
    6930:	24050007 	li	a1,7
    6934:	0c000000 	jal	0 <func_800B3B50>
    6938:	24060005 	li	a2,5
    693c:	3c040000 	lui	a0,0x0
    6940:	84840000 	lh	a0,0(a0)
    6944:	3c070000 	lui	a3,0x0
    6948:	24e70000 	addiu	a3,a3,0
    694c:	00042040 	sll	a0,a0,0x1
    6950:	24840006 	addiu	a0,a0,6
    6954:	308400ff 	andi	a0,a0,0xff
    6958:	24050007 	li	a1,7
    695c:	0c000000 	jal	0 <func_800B3B50>
    6960:	24060007 	li	a2,7
    6964:	3c0e0000 	lui	t6,0x0
    6968:	8dce0000 	lw	t6,0(t6)
    696c:	2401fff7 	li	at,-9
    6970:	95c30050 	lhu	v1,80(t6)
    6974:	00617827 	nor	t7,v1,at
    6978:	55e00010 	bnezl	t7,69bc <func_800B9638+0xed4>
    697c:	2401fffb 	li	at,-5
    6980:	3c030000 	lui	v1,0x0
    6984:	24630000 	addiu	v1,v1,0
    6988:	84620000 	lh	v0,0(v1)
    698c:	44802000 	mtc1	zero,$f4
    6990:	44803000 	mtc1	zero,$f6
    6994:	18400002 	blez	v0,69a0 <func_800B9638+0xeb8>
    6998:	2458ffff 	addiu	t8,v0,-1
    699c:	a4780000 	sh	t8,0(v1)
    69a0:	3c020000 	lui	v0,0x0
    69a4:	24420000 	addiu	v0,v0,0
    69a8:	e4440000 	swc1	$f4,0(v0)
    69ac:	a4400008 	sh	zero,8(v0)
    69b0:	10000022 	b	6a3c <func_800B9638+0xf54>
    69b4:	e4460004 	swc1	$f6,4(v0)
    69b8:	2401fffb 	li	at,-5
    69bc:	0061c827 	nor	t9,v1,at
    69c0:	57200012 	bnezl	t9,6a0c <func_800B9638+0xf24>
    69c4:	2401fffd 	li	at,-3
    69c8:	3c030000 	lui	v1,0x0
    69cc:	24630000 	addiu	v1,v1,0
    69d0:	84620000 	lh	v0,0(v1)
    69d4:	44804000 	mtc1	zero,$f8
    69d8:	44805000 	mtc1	zero,$f10
    69dc:	2841000e 	slti	at,v0,14
    69e0:	10200002 	beqz	at,69ec <func_800B9638+0xf04>
    69e4:	244a0001 	addiu	t2,v0,1
    69e8:	a46a0000 	sh	t2,0(v1)
    69ec:	3c010000 	lui	at,0x0
    69f0:	e4280000 	swc1	$f8,0(at)
    69f4:	3c010000 	lui	at,0x0
    69f8:	a4200000 	sh	zero,0(at)
    69fc:	3c010000 	lui	at,0x0
    6a00:	1000000e 	b	6a3c <func_800B9638+0xf54>
    6a04:	e42a0000 	swc1	$f10,0(at)
    6a08:	2401fffd 	li	at,-3
    6a0c:	00615827 	nor	t3,v1,at
    6a10:	1560000a 	bnez	t3,6a3c <func_800B9638+0xf54>
    6a14:	3c010000 	lui	at,0x0
    6a18:	a4200000 	sh	zero,0(at)
    6a1c:	0c000000 	jal	0 <func_800B3B50>
    6a20:	24040002 	li	a0,2
    6a24:	0c000000 	jal	0 <func_800B3B50>
    6a28:	00002025 	move	a0,zero
    6a2c:	3c010000 	lui	at,0x0
    6a30:	a4200000 	sh	zero,0(at)
    6a34:	100002a7 	b	74d4 <func_800B9638+0x19ec>
    6a38:	24020002 	li	v0,2
    6a3c:	8fa400ac 	lw	a0,172(sp)
    6a40:	0c000000 	jal	0 <func_800B3B50>
    6a44:	02402825 	move	a1,s2
    6a48:	54400011 	bnezl	v0,6a90 <func_800B9638+0xfa8>
    6a4c:	27a4005c 	addiu	a0,sp,92
    6a50:	0c000000 	jal	0 <func_800B3B50>
    6a54:	24040002 	li	a0,2
    6a58:	0c000000 	jal	0 <func_800B3B50>
    6a5c:	00002025 	move	a0,zero
    6a60:	3c070000 	lui	a3,0x0
    6a64:	3c0c0000 	lui	t4,0x0
    6a68:	24e70000 	addiu	a3,a3,0
    6a6c:	258c0000 	addiu	t4,t4,0
    6a70:	3c050000 	lui	a1,0x0
    6a74:	24a50000 	addiu	a1,a1,0
    6a78:	afac0014 	sw	t4,20(sp)
    6a7c:	afa70010 	sw	a3,16(sp)
    6a80:	24044803 	li	a0,18435
    6a84:	0c000000 	jal	0 <func_800B3B50>
    6a88:	24060004 	li	a2,4
    6a8c:	27a4005c 	addiu	a0,sp,92
    6a90:	26450010 	addiu	a1,s2,16
    6a94:	0c000000 	jal	0 <func_800B3B50>
    6a98:	26460004 	addiu	a2,s2,4
    6a9c:	3c010000 	lui	at,0x0
    6aa0:	c4320000 	lwc1	$f18,0(at)
    6aa4:	c6500050 	lwc1	$f16,80(s2)
    6aa8:	3c013f00 	lui	at,0x3f00
    6aac:	44813000 	mtc1	at,$f6
    6ab0:	46128102 	mul.s	$f4,$f16,$f18
    6ab4:	2644001c 	addiu	a0,s2,28
    6ab8:	87a50060 	lh	a1,96(sp)
    6abc:	87a60062 	lh	a2,98(sp)
    6ac0:	46062200 	add.s	$f8,$f4,$f6
    6ac4:	4600428d 	trunc.w.s	$f10,$f8
    6ac8:	44075000 	mfc1	a3,$f10
    6acc:	00000000 	nop
    6ad0:	00073c00 	sll	a3,a3,0x10
    6ad4:	0c000000 	jal	0 <func_800B3B50>
    6ad8:	00073c03 	sra	a3,a3,0x10
    6adc:	1000027d 	b	74d4 <func_800B9638+0x19ec>
    6ae0:	24020002 	li	v0,2
    6ae4:	8c840000 	lw	a0,0(a0)
    6ae8:	2401fffe 	li	at,-2
    6aec:	948e0038 	lhu	t6,56(a0)
    6af0:	01c17827 	nor	t7,t6,at
    6af4:	15e00024 	bnez	t7,6b88 <func_800B9638+0x10a0>
    6af8:	3c010000 	lui	at,0x0
    6afc:	3c020000 	lui	v0,0x0
    6b00:	a0200000 	sb	zero,0(at)
    6b04:	44808000 	mtc1	zero,$f16
    6b08:	24420000 	addiu	v0,v0,0
    6b0c:	3418fffd 	li	t8,0xfffd
    6b10:	24190001 	li	t9,1
    6b14:	ac580008 	sw	t8,8(v0)
    6b18:	a0591414 	sb	t9,5140(v0)
    6b1c:	3c010000 	lui	at,0x0
    6b20:	e4300000 	swc1	$f16,0(at)
    6b24:	44809000 	mtc1	zero,$f18
    6b28:	3c010000 	lui	at,0x0
    6b2c:	a4200000 	sh	zero,0(at)
    6b30:	3c010000 	lui	at,0x0
    6b34:	e4320000 	swc1	$f18,0(at)
    6b38:	3c010000 	lui	at,0x0
    6b3c:	240a0001 	li	t2,1
    6b40:	3c070000 	lui	a3,0x0
    6b44:	a42a0000 	sh	t2,0(at)
    6b48:	a4200000 	sh	zero,0(at)
    6b4c:	3c0b0000 	lui	t3,0x0
    6b50:	24e70000 	addiu	a3,a3,0
    6b54:	3c010000 	lui	at,0x0
    6b58:	256b0000 	addiu	t3,t3,0
    6b5c:	3c050000 	lui	a1,0x0
    6b60:	a4200000 	sh	zero,0(at)
    6b64:	24a50000 	addiu	a1,a1,0
    6b68:	afab0014 	sw	t3,20(sp)
    6b6c:	afa70010 	sw	a3,16(sp)
    6b70:	2404480b 	li	a0,18443
    6b74:	0c000000 	jal	0 <func_800B3B50>
    6b78:	24060004 	li	a2,4
    6b7c:	3c040000 	lui	a0,0x0
    6b80:	8c840000 	lw	a0,0(a0)
    6b84:	8fa900a0 	lw	t1,160(sp)
    6b88:	94830050 	lhu	v1,80(a0)
    6b8c:	2401ffdf 	li	at,-33
    6b90:	00616027 	nor	t4,v1,at
    6b94:	15800018 	bnez	t4,6bf8 <func_800B9638+0x1110>
    6b98:	3c080000 	lui	t0,0x0
    6b9c:	85080000 	lh	t0,0(t0)
    6ba0:	2411003f 	li	s1,63
    6ba4:	3c060000 	lui	a2,0x0
    6ba8:	03a86821 	addu	t5,sp,t0
    6bac:	91ad0074 	lbu	t5,116(t5)
    6bb0:	24c60000 	addiu	a2,a2,0
    6bb4:	3c010000 	lui	at,0x0
    6bb8:	162d0008 	bne	s1,t5,6bdc <func_800B9638+0x10f4>
    6bbc:	0009c100 	sll	t8,t1,0x4
    6bc0:	240effff 	li	t6,-1
    6bc4:	3c010000 	lui	at,0x0
    6bc8:	a42e0000 	sh	t6,0(at)
    6bcc:	3c010000 	lui	at,0x0
    6bd0:	240f002a 	li	t7,42
    6bd4:	10000006 	b	6bf0 <func_800B9638+0x1108>
    6bd8:	a02f0000 	sb	t7,0(at)
    6bdc:	a4280000 	sh	t0,0(at)
    6be0:	00d8c821 	addu	t9,a2,t8
    6be4:	932a0000 	lbu	t2,0(t9)
    6be8:	3c010000 	lui	at,0x0
    6bec:	a02a0000 	sb	t2,0(at)
    6bf0:	100000d4 	b	6f44 <func_800B9638+0x145c>
    6bf4:	94830050 	lhu	v1,80(a0)
    6bf8:	948b0044 	lhu	t3,68(a0)
    6bfc:	2401ffdf 	li	at,-33
    6c00:	3c0d0000 	lui	t5,0x0
    6c04:	01616027 	nor	t4,t3,at
    6c08:	518000cf 	beqzl	t4,6f48 <func_800B9638+0x1460>
    6c0c:	3c01ffff 	lui	at,0xffff
    6c10:	85ad0000 	lh	t5,0(t5)
    6c14:	2401ffff 	li	at,-1
    6c18:	3c0e0000 	lui	t6,0x0
    6c1c:	51a100c6 	beql	t5,at,6f38 <func_800B9638+0x1450>
    6c20:	240fffff 	li	t7,-1
    6c24:	85ce0000 	lh	t6,0(t6)
    6c28:	2401002d 	li	at,45
    6c2c:	3c070000 	lui	a3,0x0
    6c30:	03ae1021 	addu	v0,sp,t6
    6c34:	90420074 	lbu	v0,116(v0)
    6c38:	24e70000 	addiu	a3,a3,0
    6c3c:	24044808 	li	a0,18440
    6c40:	10410029 	beq	v0,at,6ce8 <func_800B9638+0x1200>
    6c44:	3c050000 	lui	a1,0x0
    6c48:	2411003f 	li	s1,63
    6c4c:	145100ad 	bne	v0,s1,6f04 <func_800B9638+0x141c>
    6c50:	3c070000 	lui	a3,0x0
    6c54:	3c070000 	lui	a3,0x0
    6c58:	3c0f0000 	lui	t7,0x0
    6c5c:	24e70000 	addiu	a3,a3,0
    6c60:	25ef0000 	addiu	t7,t7,0
    6c64:	3c050000 	lui	a1,0x0
    6c68:	24a50000 	addiu	a1,a1,0
    6c6c:	afaf0014 	sw	t7,20(sp)
    6c70:	afa70010 	sw	a3,16(sp)
    6c74:	24044808 	li	a0,18440
    6c78:	0c000000 	jal	0 <func_800B3B50>
    6c7c:	24060004 	li	a2,4
    6c80:	3c060000 	lui	a2,0x0
    6c84:	8fa900a0 	lw	t1,160(sp)
    6c88:	24c60000 	addiu	a2,a2,0
    6c8c:	00105100 	sll	t2,s0,0x4
    6c90:	00ca5821 	addu	t3,a2,t2
    6c94:	8d6d0000 	lw	t5,0(t3)
    6c98:	0009c100 	sll	t8,t1,0x4
    6c9c:	00d8c821 	addu	t9,a2,t8
    6ca0:	af2d0000 	sw	t5,0(t9)
    6ca4:	8d6c0004 	lw	t4,4(t3)
    6ca8:	3c0e0000 	lui	t6,0x0
    6cac:	2408003f 	li	t0,63
    6cb0:	af2c0004 	sw	t4,4(t9)
    6cb4:	8d6d0008 	lw	t5,8(t3)
    6cb8:	02002025 	move	a0,s0
    6cbc:	00002825 	move	a1,zero
    6cc0:	af2d0008 	sw	t5,8(t9)
    6cc4:	8d6c000c 	lw	t4,12(t3)
    6cc8:	af2c000c 	sw	t4,12(t9)
    6ccc:	85ce0000 	lh	t6,0(t6)
    6cd0:	03ae7821 	addu	t7,sp,t6
    6cd4:	0c000000 	jal	0 <func_800B3B50>
    6cd8:	a1e80074 	sb	t0,116(t7)
    6cdc:	3c040000 	lui	a0,0x0
    6ce0:	10000094 	b	6f34 <func_800B9638+0x144c>
    6ce4:	8c840000 	lw	a0,0(a0)
    6ce8:	3c180000 	lui	t8,0x0
    6cec:	27180000 	addiu	t8,t8,0
    6cf0:	afb80014 	sw	t8,20(sp)
    6cf4:	24a50000 	addiu	a1,a1,0
    6cf8:	24060004 	li	a2,4
    6cfc:	0c000000 	jal	0 <func_800B3B50>
    6d00:	afa70010 	sw	a3,16(sp)
    6d04:	3c060000 	lui	a2,0x0
    6d08:	24c60000 	addiu	a2,a2,0
    6d0c:	00105100 	sll	t2,s0,0x4
    6d10:	00cac821 	addu	t9,a2,t2
    6d14:	8f2c0000 	lw	t4,0(t9)
    6d18:	8fa900a0 	lw	t1,160(sp)
    6d1c:	27a50064 	addiu	a1,sp,100
    6d20:	acac0000 	sw	t4,0(a1)
    6d24:	8f2b0004 	lw	t3,4(t9)
    6d28:	3c020000 	lui	v0,0x0
    6d2c:	3c080000 	lui	t0,0x0
    6d30:	acab0004 	sw	t3,4(a1)
    6d34:	8f2c0008 	lw	t4,8(t9)
    6d38:	2524ffff 	addiu	a0,t1,-1
    6d3c:	acac0008 	sw	t4,8(a1)
    6d40:	8f2b000c 	lw	t3,12(t9)
    6d44:	acab000c 	sw	t3,12(a1)
    6d48:	85080000 	lh	t0,0(t0)
    6d4c:	84420000 	lh	v0,0(v0)
    6d50:	0048082a 	slt	at,v0,t0
    6d54:	10200027 	beqz	at,6df4 <func_800B9638+0x130c>
    6d58:	0204082a 	slt	at,s0,a0
    6d5c:	1020001a 	beqz	at,6dc8 <func_800B9638+0x12e0>
    6d60:	2a01000f 	slti	at,s0,15
    6d64:	10200018 	beqz	at,6dc8 <func_800B9638+0x12e0>
    6d68:	00106900 	sll	t5,s0,0x4
    6d6c:	00047100 	sll	t6,a0,0x4
    6d70:	3c0f0000 	lui	t7,0x0
    6d74:	25ef0000 	addiu	t7,t7,0
    6d78:	3c040000 	lui	a0,0x0
    6d7c:	00cd8021 	addu	s0,a2,t5
    6d80:	26020010 	addiu	v0,s0,16
    6d84:	24840000 	addiu	a0,a0,0
    6d88:	01cf1821 	addu	v1,t6,t7
    6d8c:	8c4a0000 	lw	t2,0(v0)
    6d90:	24420010 	addiu	v0,v0,16
    6d94:	0043082b 	sltu	at,v0,v1
    6d98:	ae0a0000 	sw	t2,0(s0)
    6d9c:	8c58fff4 	lw	t8,-12(v0)
    6da0:	26100010 	addiu	s0,s0,16
    6da4:	ae18fff4 	sw	t8,-12(s0)
    6da8:	8c4afff8 	lw	t2,-8(v0)
    6dac:	ae0afff8 	sw	t2,-8(s0)
    6db0:	8c58fffc 	lw	t8,-4(v0)
    6db4:	10200004 	beqz	at,6dc8 <func_800B9638+0x12e0>
    6db8:	ae18fffc 	sw	t8,-4(s0)
    6dbc:	0044082b 	sltu	at,v0,a0
    6dc0:	5420fff3 	bnezl	at,6d90 <func_800B9638+0x12a8>
    6dc4:	8c4a0000 	lw	t2,0(v0)
    6dc8:	8cad0000 	lw	t5,0(a1)
    6dcc:	0009c900 	sll	t9,t1,0x4
    6dd0:	00d95821 	addu	t3,a2,t9
    6dd4:	ad6dfff0 	sw	t5,-16(t3)
    6dd8:	8cac0004 	lw	t4,4(a1)
    6ddc:	ad6cfff4 	sw	t4,-12(t3)
    6de0:	8cad0008 	lw	t5,8(a1)
    6de4:	ad6dfff8 	sw	t5,-8(t3)
    6de8:	8cac000c 	lw	t4,12(a1)
    6dec:	10000029 	b	6e94 <func_800B9638+0x13ac>
    6df0:	ad6cfffc 	sw	t4,-4(t3)
    6df4:	0102082a 	slt	at,t0,v0
    6df8:	10200026 	beqz	at,6e94 <func_800B9638+0x13ac>
    6dfc:	0130082a 	slt	at,t1,s0
    6e00:	5020001b 	beqzl	at,6e70 <func_800B9638+0x1388>
    6e04:	8cae0000 	lw	t6,0(a1)
    6e08:	1a000018 	blez	s0,6e6c <func_800B9638+0x1384>
    6e0c:	00107100 	sll	t6,s0,0x4
    6e10:	3c180000 	lui	t8,0x0
    6e14:	27180000 	addiu	t8,t8,0
    6e18:	00ce8021 	addu	s0,a2,t6
    6e1c:	00097900 	sll	t7,t1,0x4
    6e20:	3c040000 	lui	a0,0x0
    6e24:	24840000 	addiu	a0,a0,0
    6e28:	01f81821 	addu	v1,t7,t8
    6e2c:	2602fff0 	addiu	v0,s0,-16
    6e30:	8c590000 	lw	t9,0(v0)
    6e34:	2442fff0 	addiu	v0,v0,-16
    6e38:	0062082b 	sltu	at,v1,v0
    6e3c:	ae190000 	sw	t9,0(s0)
    6e40:	8c4a0014 	lw	t2,20(v0)
    6e44:	2610fff0 	addiu	s0,s0,-16
    6e48:	ae0a0014 	sw	t2,20(s0)
    6e4c:	8c590018 	lw	t9,24(v0)
    6e50:	ae190018 	sw	t9,24(s0)
    6e54:	8c4a001c 	lw	t2,28(v0)
    6e58:	10200004 	beqz	at,6e6c <func_800B9638+0x1384>
    6e5c:	ae0a001c 	sw	t2,28(s0)
    6e60:	0044082b 	sltu	at,v0,a0
    6e64:	5020fff3 	beqzl	at,6e34 <func_800B9638+0x134c>
    6e68:	8c590000 	lw	t9,0(v0)
    6e6c:	8cae0000 	lw	t6,0(a1)
    6e70:	00095900 	sll	t3,t1,0x4
    6e74:	00cb6021 	addu	t4,a2,t3
    6e78:	ad8e0000 	sw	t6,0(t4)
    6e7c:	8cad0004 	lw	t5,4(a1)
    6e80:	ad8d0004 	sw	t5,4(t4)
    6e84:	8cae0008 	lw	t6,8(a1)
    6e88:	ad8e0008 	sw	t6,8(t4)
    6e8c:	8cad000c 	lw	t5,12(a1)
    6e90:	ad8d000c 	sw	t5,12(t4)
    6e94:	3c0f0000 	lui	t7,0x0
    6e98:	3c180000 	lui	t8,0x0
    6e9c:	3c0a0000 	lui	t2,0x0
    6ea0:	914a0000 	lbu	t2,0(t2)
    6ea4:	93180000 	lbu	t8,0(t8)
    6ea8:	91ef0000 	lbu	t7,0(t7)
    6eac:	3c100000 	lui	s0,0x0
    6eb0:	3c030000 	lui	v1,0x0
    6eb4:	24630000 	addiu	v1,v1,0
    6eb8:	26100000 	addiu	s0,s0,0
    6ebc:	27a2007a 	addiu	v0,sp,122
    6ec0:	a3aa0079 	sb	t2,121(sp)
    6ec4:	a3b80077 	sb	t8,119(sp)
    6ec8:	a3af0075 	sb	t7,117(sp)
    6ecc:	920b0010 	lbu	t3,16(s0)
    6ed0:	920c0020 	lbu	t4,32(s0)
    6ed4:	920d0030 	lbu	t5,48(s0)
    6ed8:	92190000 	lbu	t9,0(s0)
    6edc:	26100040 	addiu	s0,s0,64
    6ee0:	24420008 	addiu	v0,v0,8
    6ee4:	a04bfffb 	sb	t3,-5(v0)
    6ee8:	a04cfffd 	sb	t4,-3(v0)
    6eec:	a04dffff 	sb	t5,-1(v0)
    6ef0:	1603fff6 	bne	s0,v1,6ecc <func_800B9638+0x13e4>
    6ef4:	a059fff9 	sb	t9,-7(v0)
    6ef8:	3c040000 	lui	a0,0x0
    6efc:	1000000d 	b	6f34 <func_800B9638+0x144c>
    6f00:	8c840000 	lw	a0,0(a0)
    6f04:	3c0e0000 	lui	t6,0x0
    6f08:	24e70000 	addiu	a3,a3,0
    6f0c:	25ce0000 	addiu	t6,t6,0
    6f10:	3c050000 	lui	a1,0x0
    6f14:	24a50000 	addiu	a1,a1,0
    6f18:	afae0014 	sw	t6,20(sp)
    6f1c:	afa70010 	sw	a3,16(sp)
    6f20:	24044806 	li	a0,18438
    6f24:	0c000000 	jal	0 <func_800B3B50>
    6f28:	24060004 	li	a2,4
    6f2c:	3c040000 	lui	a0,0x0
    6f30:	8c840000 	lw	a0,0(a0)
    6f34:	240fffff 	li	t7,-1
    6f38:	3c010000 	lui	at,0x0
    6f3c:	a42f0000 	sh	t7,0(at)
    6f40:	94830050 	lhu	v1,80(a0)
    6f44:	3c01ffff 	lui	at,0xffff
    6f48:	34217fff 	ori	at,at,0x7fff
    6f4c:	0061c027 	nor	t8,v1,at
    6f50:	17000021 	bnez	t8,6fd8 <func_800B9638+0x14f0>
    6f54:	2411003f 	li	s1,63
    6f58:	3c0a0000 	lui	t2,0x0
    6f5c:	854a0000 	lh	t2,0(t2)
    6f60:	3c070000 	lui	a3,0x0
    6f64:	3c050000 	lui	a1,0x0
    6f68:	03aac821 	addu	t9,sp,t2
    6f6c:	93390074 	lbu	t9,116(t9)
    6f70:	24e70000 	addiu	a3,a3,0
    6f74:	24a50000 	addiu	a1,a1,0
    6f78:	16390017 	bne	s1,t9,6fd8 <func_800B9638+0x14f0>
    6f7c:	24044808 	li	a0,18440
    6f80:	3c0b0000 	lui	t3,0x0
    6f84:	256b0000 	addiu	t3,t3,0
    6f88:	afab0014 	sw	t3,20(sp)
    6f8c:	24060004 	li	a2,4
    6f90:	0c000000 	jal	0 <func_800B3B50>
    6f94:	afa70010 	sw	a3,16(sp)
    6f98:	8fa400a0 	lw	a0,160(sp)
    6f9c:	0c000000 	jal	0 <func_800B3B50>
    6fa0:	2645007c 	addiu	a1,s2,124
    6fa4:	3c0c0000 	lui	t4,0x0
    6fa8:	858c0000 	lh	t4,0(t4)
    6fac:	27ad0074 	addiu	t5,sp,116
    6fb0:	304e00ff 	andi	t6,v0,0xff
    6fb4:	018d1821 	addu	v1,t4,t5
    6fb8:	162e0007 	bne	s1,t6,6fd8 <func_800B9638+0x14f0>
    6fbc:	a0620000 	sb	v0,0(v1)
    6fc0:	3c070000 	lui	a3,0x0
    6fc4:	8ce70000 	lw	a3,0(a3)
    6fc8:	2404000f 	li	a0,15
    6fcc:	24050018 	li	a1,24
    6fd0:	0c000000 	jal	0 <func_800B3B50>
    6fd4:	24060007 	li	a2,7
    6fd8:	3c040000 	lui	a0,0x0
    6fdc:	8c840000 	lw	a0,0(a0)
    6fe0:	2401bfff 	li	at,-16385
    6fe4:	3c180000 	lui	t8,0x0
    6fe8:	94830050 	lhu	v1,80(a0)
    6fec:	00617827 	nor	t7,v1,at
    6ff0:	55e0001f 	bnezl	t7,7070 <func_800B9638+0x1588>
    6ff4:	2401ffef 	li	at,-17
    6ff8:	87180000 	lh	t8,0(t8)
    6ffc:	2401002d 	li	at,45
    7000:	03b81021 	addu	v0,sp,t8
    7004:	90420074 	lbu	v0,116(v0)
    7008:	52220019 	beql	s1,v0,7070 <func_800B9638+0x1588>
    700c:	2401ffef 	li	at,-17
    7010:	10410016 	beq	v0,at,706c <func_800B9638+0x1584>
    7014:	3c070000 	lui	a3,0x0
    7018:	3c0a0000 	lui	t2,0x0
    701c:	24e70000 	addiu	a3,a3,0
    7020:	254a0000 	addiu	t2,t2,0
    7024:	3c050000 	lui	a1,0x0
    7028:	24a50000 	addiu	a1,a1,0
    702c:	afaa0014 	sw	t2,20(sp)
    7030:	afa70010 	sw	a3,16(sp)
    7034:	2404480a 	li	a0,18442
    7038:	0c000000 	jal	0 <func_800B3B50>
    703c:	24060004 	li	a2,4
    7040:	3c0b0000 	lui	t3,0x0
    7044:	856b0000 	lh	t3,0(t3)
    7048:	2419003f 	li	t9,63
    704c:	24050001 	li	a1,1
    7050:	03ab6021 	addu	t4,sp,t3
    7054:	a1990074 	sb	t9,116(t4)
    7058:	0c000000 	jal	0 <func_800B3B50>
    705c:	8fa400a0 	lw	a0,160(sp)
    7060:	3c040000 	lui	a0,0x0
    7064:	8c840000 	lw	a0,0(a0)
    7068:	94830050 	lhu	v1,80(a0)
    706c:	2401ffef 	li	at,-17
    7070:	00616827 	nor	t5,v1,at
    7074:	15a0005b 	bnez	t5,71e4 <func_800B9638+0x16fc>
    7078:	3c0e0000 	lui	t6,0x0
    707c:	85ce0000 	lh	t6,0(t6)
    7080:	2401002d 	li	at,45
    7084:	03ae1021 	addu	v0,sp,t6
    7088:	90420074 	lbu	v0,116(v0)
    708c:	52220056 	beql	s1,v0,71e8 <func_800B9638+0x1700>
    7090:	2401feff 	li	at,-257
    7094:	10410053 	beq	v0,at,71e4 <func_800B9638+0x16fc>
    7098:	3c070000 	lui	a3,0x0
    709c:	8fb800a0 	lw	t8,160(sp)
    70a0:	3c0f0000 	lui	t7,0x0
    70a4:	3c190000 	lui	t9,0x0
    70a8:	24e70000 	addiu	a3,a3,0
    70ac:	27390000 	addiu	t9,t9,0
    70b0:	25ef0000 	addiu	t7,t7,0
    70b4:	3c050000 	lui	a1,0x0
    70b8:	00185100 	sll	t2,t8,0x4
    70bc:	01598021 	addu	s0,t2,t9
    70c0:	24a50000 	addiu	a1,a1,0
    70c4:	afaf0014 	sw	t7,20(sp)
    70c8:	afa70010 	sw	a3,16(sp)
    70cc:	24044808 	li	a0,18440
    70d0:	0c000000 	jal	0 <func_800B3B50>
    70d4:	24060004 	li	a2,4
    70d8:	8604000e 	lh	a0,14(s0)
    70dc:	00008825 	move	s1,zero
    70e0:	00001025 	move	v0,zero
    70e4:	18800013 	blez	a0,7134 <func_800B9638+0x164c>
    70e8:	264308b0 	addiu	v1,s2,2224
    70ec:	8e0b0008 	lw	t3,8(s0)
    70f0:	26310001 	addiu	s1,s1,1
    70f4:	24630010 	addiu	v1,v1,16
    70f8:	01626021 	addu	t4,t3,v0
    70fc:	8d8e0000 	lw	t6,0(t4)
    7100:	24420010 	addiu	v0,v0,16
    7104:	ac6efff0 	sw	t6,-16(v1)
    7108:	8d8d0004 	lw	t5,4(t4)
    710c:	ac6dfff4 	sw	t5,-12(v1)
    7110:	8d8e0008 	lw	t6,8(t4)
    7114:	ac6efff8 	sw	t6,-8(v1)
    7118:	8d8d000c 	lw	t5,12(t4)
    711c:	ac6dfffc 	sw	t5,-4(v1)
    7120:	8604000e 	lh	a0,14(s0)
    7124:	0224082a 	slt	at,s1,a0
    7128:	5420fff1 	bnezl	at,70f0 <func_800B9638+0x1608>
    712c:	8e0b0008 	lw	t3,8(s0)
    7130:	00008825 	move	s1,zero
    7134:	18800013 	blez	a0,7184 <func_800B9638+0x169c>
    7138:	00001025 	move	v0,zero
    713c:	264300a0 	addiu	v1,s2,160
    7140:	8e0f0004 	lw	t7,4(s0)
    7144:	26310001 	addiu	s1,s1,1
    7148:	24630010 	addiu	v1,v1,16
    714c:	01e2c021 	addu	t8,t7,v0
    7150:	8f190000 	lw	t9,0(t8)
    7154:	24420010 	addiu	v0,v0,16
    7158:	ac79fff0 	sw	t9,-16(v1)
    715c:	8f0a0004 	lw	t2,4(t8)
    7160:	ac6afff4 	sw	t2,-12(v1)
    7164:	8f190008 	lw	t9,8(t8)
    7168:	ac79fff8 	sw	t9,-8(v1)
    716c:	8f0a000c 	lw	t2,12(t8)
    7170:	ac6afffc 	sw	t2,-4(v1)
    7174:	860b000e 	lh	t3,14(s0)
    7178:	022b082a 	slt	at,s1,t3
    717c:	5420fff1 	bnezl	at,7144 <func_800B9638+0x165c>
    7180:	8e0f0004 	lw	t7,4(s0)
    7184:	860c0002 	lh	t4,2(s0)
    7188:	02402025 	move	a0,s2
    718c:	a64c007c 	sh	t4,124(s2)
    7190:	860d000c 	lh	t5,12(s0)
    7194:	a64d007e 	sh	t5,126(s2)
    7198:	860e000e 	lh	t6,14(s0)
    719c:	a6400082 	sh	zero,130(s2)
    71a0:	86450082 	lh	a1,130(s2)
    71a4:	a64e0080 	sh	t6,128(s2)
    71a8:	0c000000 	jal	0 <func_800B3B50>
    71ac:	8fa600ac 	lw	a2,172(sp)
    71b0:	3c0f0000 	lui	t7,0x0
    71b4:	85ef0000 	lh	t7,0(t7)
    71b8:	2408003f 	li	t0,63
    71bc:	24050001 	li	a1,1
    71c0:	03afc021 	addu	t8,sp,t7
    71c4:	a3080074 	sb	t0,116(t8)
    71c8:	0c000000 	jal	0 <func_800B3B50>
    71cc:	8fa400a0 	lw	a0,160(sp)
    71d0:	240a0001 	li	t2,1
    71d4:	ae4a0000 	sw	t2,0(s2)
    71d8:	3c040000 	lui	a0,0x0
    71dc:	8c840000 	lw	a0,0(a0)
    71e0:	94830050 	lhu	v1,80(a0)
    71e4:	2401feff 	li	at,-257
    71e8:	0061c827 	nor	t9,v1,at
    71ec:	1720001a 	bnez	t9,7258 <func_800B9638+0x1770>
    71f0:	3c070000 	lui	a3,0x0
    71f4:	3c0b0000 	lui	t3,0x0
    71f8:	24e70000 	addiu	a3,a3,0
    71fc:	256b0000 	addiu	t3,t3,0
    7200:	3c050000 	lui	a1,0x0
    7204:	24a50000 	addiu	a1,a1,0
    7208:	afab0014 	sw	t3,20(sp)
    720c:	afa70010 	sw	a3,16(sp)
    7210:	24044809 	li	a0,18441
    7214:	0c000000 	jal	0 <func_800B3B50>
    7218:	24060004 	li	a2,4
    721c:	3c020000 	lui	v0,0x0
    7220:	24420000 	addiu	v0,v0,0
    7224:	84480000 	lh	t0,0(v0)
    7228:	2401001e 	li	at,30
    722c:	3c040000 	lui	a0,0x0
    7230:	15010006 	bne	t0,at,724c <func_800B9638+0x1764>
    7234:	250c0001 	addiu	t4,t0,1
    7238:	a4400000 	sh	zero,0(v0)
    723c:	3c040000 	lui	a0,0x0
    7240:	8c840000 	lw	a0,0(a0)
    7244:	10000004 	b	7258 <func_800B9638+0x1770>
    7248:	94830050 	lhu	v1,80(a0)
    724c:	a44c0000 	sh	t4,0(v0)
    7250:	8c840000 	lw	a0,0(a0)
    7254:	94830050 	lhu	v1,80(a0)
    7258:	2401fdff 	li	at,-513
    725c:	00616827 	nor	t5,v1,at
    7260:	15a0001a 	bnez	t5,72cc <func_800B9638+0x17e4>
    7264:	3c070000 	lui	a3,0x0
    7268:	3c0e0000 	lui	t6,0x0
    726c:	24e70000 	addiu	a3,a3,0
    7270:	25ce0000 	addiu	t6,t6,0
    7274:	3c050000 	lui	a1,0x0
    7278:	24a50000 	addiu	a1,a1,0
    727c:	afae0014 	sw	t6,20(sp)
    7280:	afa70010 	sw	a3,16(sp)
    7284:	24044809 	li	a0,18441
    7288:	0c000000 	jal	0 <func_800B3B50>
    728c:	24060004 	li	a2,4
    7290:	3c020000 	lui	v0,0x0
    7294:	24420000 	addiu	v0,v0,0
    7298:	84480000 	lh	t0,0(v0)
    729c:	3c040000 	lui	a0,0x0
    72a0:	240f001e 	li	t7,30
    72a4:	15000006 	bnez	t0,72c0 <func_800B9638+0x17d8>
    72a8:	2518ffff 	addiu	t8,t0,-1
    72ac:	a44f0000 	sh	t7,0(v0)
    72b0:	3c040000 	lui	a0,0x0
    72b4:	8c840000 	lw	a0,0(a0)
    72b8:	10000004 	b	72cc <func_800B9638+0x17e4>
    72bc:	94830050 	lhu	v1,80(a0)
    72c0:	a4580000 	sh	t8,0(v0)
    72c4:	8c840000 	lw	a0,0(a0)
    72c8:	94830050 	lhu	v1,80(a0)
    72cc:	94820044 	lhu	v0,68(a0)
    72d0:	2401ffdf 	li	at,-33
    72d4:	00411027 	nor	v0,v0,at
    72d8:	1440001c 	bnez	v0,734c <func_800B9638+0x1864>
    72dc:	2401fffe 	li	at,-2
    72e0:	00615027 	nor	t2,v1,at
    72e4:	15400019 	bnez	t2,734c <func_800B9638+0x1864>
    72e8:	00008825 	move	s1,zero
    72ec:	3c100000 	lui	s0,0x0
    72f0:	26100000 	addiu	s0,s0,0
    72f4:	8e190008 	lw	t9,8(s0)
    72f8:	860b000c 	lh	t3,12(s0)
    72fc:	860c000e 	lh	t4,14(s0)
    7300:	860d0002 	lh	t5,2(s0)
    7304:	3c040000 	lui	a0,0x0
    7308:	24840000 	addiu	a0,a0,0
    730c:	02202825 	move	a1,s1
    7310:	92060000 	lbu	a2,0(s0)
    7314:	8e070004 	lw	a3,4(s0)
    7318:	afb90010 	sw	t9,16(sp)
    731c:	afab0014 	sw	t3,20(sp)
    7320:	afac0018 	sw	t4,24(sp)
    7324:	0c000000 	jal	0 <func_800B3B50>
    7328:	afad001c 	sw	t5,28(sp)
    732c:	26310001 	addiu	s1,s1,1
    7330:	2401000f 	li	at,15
    7334:	1621ffef 	bne	s1,at,72f4 <func_800B9638+0x180c>
    7338:	26100010 	addiu	s0,s0,16
    733c:	0c000000 	jal	0 <func_800B3B50>
    7340:	8fa400ac 	lw	a0,172(sp)
    7344:	10000042 	b	7450 <func_800B9638+0x1968>
    7348:	00000000 	nop
    734c:	14400020 	bnez	v0,73d0 <func_800B9638+0x18e8>
    7350:	2401fffd 	li	at,-3
    7354:	00617027 	nor	t6,v1,at
    7358:	15c0001d 	bnez	t6,73d0 <func_800B9638+0x18e8>
    735c:	3c070000 	lui	a3,0x0
    7360:	3c0f0000 	lui	t7,0x0
    7364:	24e70000 	addiu	a3,a3,0
    7368:	25ef0000 	addiu	t7,t7,0
    736c:	3c050000 	lui	a1,0x0
    7370:	24a50000 	addiu	a1,a1,0
    7374:	afaf0014 	sw	t7,20(sp)
    7378:	afa70010 	sw	a3,16(sp)
    737c:	24044803 	li	a0,18435
    7380:	24060004 	li	a2,4
    7384:	0c000000 	jal	0 <func_800B3B50>
    7388:	00008825 	move	s1,zero
    738c:	3c100000 	lui	s0,0x0
    7390:	26100000 	addiu	s0,s0,0
    7394:	8618000e 	lh	t8,14(s0)
    7398:	3c040000 	lui	a0,0x0
    739c:	24840000 	addiu	a0,a0,0
    73a0:	53000006 	beqzl	t8,73bc <func_800B9638+0x18d4>
    73a4:	26310001 	addiu	s1,s1,1
    73a8:	0c000000 	jal	0 <func_800B3B50>
    73ac:	02202825 	move	a1,s1
    73b0:	0c000000 	jal	0 <func_800B3B50>
    73b4:	02002025 	move	a0,s0
    73b8:	26310001 	addiu	s1,s1,1
    73bc:	2401000f 	li	at,15
    73c0:	1621fff4 	bne	s1,at,7394 <func_800B9638+0x18ac>
    73c4:	26100010 	addiu	s0,s0,16
    73c8:	10000021 	b	7450 <func_800B9638+0x1968>
    73cc:	00000000 	nop
    73d0:	2401fffe 	li	at,-2
    73d4:	00615027 	nor	t2,v1,at
    73d8:	1540001d 	bnez	t2,7450 <func_800B9638+0x1968>
    73dc:	3c010000 	lui	at,0x0
    73e0:	44802000 	mtc1	zero,$f4
    73e4:	44803000 	mtc1	zero,$f6
    73e8:	24190001 	li	t9,1
    73ec:	e4240000 	swc1	$f4,0(at)
    73f0:	3c010000 	lui	at,0x0
    73f4:	a4200000 	sh	zero,0(at)
    73f8:	3c010000 	lui	at,0x0
    73fc:	e4260000 	swc1	$f6,0(at)
    7400:	3c010000 	lui	at,0x0
    7404:	a4390000 	sh	t9,0(at)
    7408:	a4200000 	sh	zero,0(at)
    740c:	0c000000 	jal	0 <func_800B3B50>
    7410:	24040032 	li	a0,50
    7414:	0c000000 	jal	0 <func_800B3B50>
    7418:	24040020 	li	a0,32
    741c:	3c070000 	lui	a3,0x0
    7420:	3c0b0000 	lui	t3,0x0
    7424:	24e70000 	addiu	a3,a3,0
    7428:	3c010000 	lui	at,0x0
    742c:	256b0000 	addiu	t3,t3,0
    7430:	3c050000 	lui	a1,0x0
    7434:	a4200000 	sh	zero,0(at)
    7438:	24a50000 	addiu	a1,a1,0
    743c:	afab0014 	sw	t3,20(sp)
    7440:	afa70010 	sw	a3,16(sp)
    7444:	2404480b 	li	a0,18443
    7448:	0c000000 	jal	0 <func_800B3B50>
    744c:	24060004 	li	a2,4
    7450:	3c070000 	lui	a3,0x0
    7454:	8ce70000 	lw	a3,0(a3)
    7458:	24040004 	li	a0,4
    745c:	24050007 	li	a1,7
    7460:	0c000000 	jal	0 <func_800B3B50>
    7464:	24060005 	li	a2,5
    7468:	3c020000 	lui	v0,0x0
    746c:	84420000 	lh	v0,0(v0)
    7470:	2401ffff 	li	at,-1
    7474:	a3a00075 	sb	zero,117(sp)
    7478:	1041000c 	beq	v0,at,74ac <func_800B9638+0x19c4>
    747c:	240d005f 	li	t5,95
    7480:	3c0c0000 	lui	t4,0x0
    7484:	918c0000 	lbu	t4,0(t4)
    7488:	24440005 	addiu	a0,v0,5
    748c:	308400ff 	andi	a0,a0,0xff
    7490:	24050007 	li	a1,7
    7494:	24060002 	li	a2,2
    7498:	27a70074 	addiu	a3,sp,116
    749c:	0c000000 	jal	0 <func_800B3B50>
    74a0:	a3ac0074 	sb	t4,116(sp)
    74a4:	10000002 	b	74b0 <func_800B9638+0x19c8>
    74a8:	00000000 	nop
    74ac:	a3ad0074 	sb	t5,116(sp)
    74b0:	3c040000 	lui	a0,0x0
    74b4:	84840000 	lh	a0,0(a0)
    74b8:	24050007 	li	a1,7
    74bc:	24060007 	li	a2,7
    74c0:	24840005 	addiu	a0,a0,5
    74c4:	308400ff 	andi	a0,a0,0xff
    74c8:	0c000000 	jal	0 <func_800B3B50>
    74cc:	27a70074 	addiu	a3,sp,116
    74d0:	24020001 	li	v0,1
    74d4:	8fbf0034 	lw	ra,52(sp)
    74d8:	8fb00028 	lw	s0,40(sp)
    74dc:	8fb1002c 	lw	s1,44(sp)
    74e0:	8fb20030 	lw	s2,48(sp)
    74e4:	03e00008 	jr	ra
    74e8:	27bd00a8 	addiu	sp,sp,168
    74ec:	27bdffe8 	addiu	sp,sp,-24
    74f0:	afbf0014 	sw	ra,20(sp)
    74f4:	3c050000 	lui	a1,0x0
    74f8:	0c000000 	jal	0 <func_800B3B50>
    74fc:	8ca50000 	lw	a1,0(a1)
    7500:	8fbf0014 	lw	ra,20(sp)
    7504:	27bd0018 	addiu	sp,sp,24
    7508:	03e00008 	jr	ra
    750c:	00000000 	nop
    7510:	3c010000 	lui	at,0x0
    7514:	03e00008 	jr	ra
    7518:	a4200000 	sh	zero,0(at)
    751c:	3c0e0000 	lui	t6,0x0
    7520:	8dce0000 	lw	t6,0(t6)
    7524:	8dc20000 	lw	v0,0(t6)
    7528:	38420002 	xori	v0,v0,0x2
    752c:	2c420001 	sltiu	v0,v0,1
    7530:	10400004 	beqz	v0,7544 <func_800B9638+0x1a5c>
    7534:	00000000 	nop
    7538:	3c020000 	lui	v0,0x0
    753c:	84420000 	lh	v0,0(v0)
    7540:	0002102b 	sltu	v0,zero,v0
    7544:	03e00008 	jr	ra
    7548:	00000000 	nop
    754c:	00000000 	nop
