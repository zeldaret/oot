
build/src/overlays/actors/ovl_En_Bw/z_en_bw.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809CE6E0>:
       0:	03e00008 	jr	ra
       4:	ac850228 	sw	a1,552(a0)

00000008 <EnBw_Init>:
       8:	27bdffc8 	addiu	sp,sp,-56
       c:	afa5003c 	sw	a1,60(sp)
      10:	afbf002c 	sw	ra,44(sp)
      14:	afb00028 	sw	s0,40(sp)
      18:	3c053c54 	lui	a1,0x3c54
      1c:	00808025 	move	s0,a0
      20:	0c000000 	jal	0 <func_809CE6E0>
      24:	34a5fdf3 	ori	a1,a1,0xfdf3
      28:	3c01c000 	lui	at,0xc000
      2c:	44812000 	mtc1	at,$f4
      30:	240e0023 	li	t6,35
      34:	a20e0117 	sb	t6,279(s0)
      38:	e604006c 	swc1	$f4,108(s0)
      3c:	3c060600 	lui	a2,0x600
      40:	3c070600 	lui	a3,0x600
      44:	260f0190 	addiu	t7,s0,400
      48:	261801d8 	addiu	t8,s0,472
      4c:	2419000c 	li	t9,12
      50:	afb90018 	sw	t9,24(sp)
      54:	afb80014 	sw	t8,20(sp)
      58:	afaf0010 	sw	t7,16(sp)
      5c:	24e70228 	addiu	a3,a3,552
      60:	24c620f0 	addiu	a2,a2,8432
      64:	8fa4003c 	lw	a0,60(sp)
      68:	0c000000 	jal	0 <func_809CE6E0>
      6c:	2605014c 	addiu	a1,s0,332
      70:	3c060000 	lui	a2,0x0
      74:	24c60000 	addiu	a2,a2,0
      78:	260400b4 	addiu	a0,s0,180
      7c:	24050000 	li	a1,0
      80:	0c000000 	jal	0 <func_809CE6E0>
      84:	3c074220 	lui	a3,0x4220
      88:	8e0c0024 	lw	t4,36(s0)
      8c:	8e0b0028 	lw	t3,40(s0)
      90:	3c080000 	lui	t0,0x0
      94:	ae0c0038 	sw	t4,56(s0)
      98:	8e0c002c 	lw	t4,44(s0)
      9c:	25080000 	addiu	t0,t0,0
      a0:	24090006 	li	t1,6
      a4:	240a00fe 	li	t2,254
      a8:	ae080098 	sw	t0,152(s0)
      ac:	a20900af 	sb	t1,175(s0)
      b0:	a20a00ae 	sb	t2,174(s0)
      b4:	02002025 	move	a0,s0
      b8:	ae0b003c 	sw	t3,60(s0)
      bc:	0c000000 	jal	0 <func_809CE6E0>
      c0:	ae0c0040 	sw	t4,64(s0)
      c4:	240e00ff 	li	t6,255
      c8:	a20e022c 	sb	t6,556(s0)
      cc:	a20e022f 	sb	t6,559(s0)
      d0:	a200022e 	sb	zero,558(s0)
      d4:	a200022d 	sb	zero,557(s0)
      d8:	3c010000 	lui	at,0x0
      dc:	c4260000 	lwc1	$f6,0(at)
      e0:	24180003 	li	t8,3
      e4:	a2180221 	sb	t8,545(s0)
      e8:	26050294 	addiu	a1,s0,660
      ec:	e6060248 	swc1	$f6,584(s0)
      f0:	afa50030 	sw	a1,48(sp)
      f4:	0c000000 	jal	0 <func_809CE6E0>
      f8:	8fa4003c 	lw	a0,60(sp)
      fc:	3c070000 	lui	a3,0x0
     100:	8fa50030 	lw	a1,48(sp)
     104:	24e70000 	addiu	a3,a3,0
     108:	8fa4003c 	lw	a0,60(sp)
     10c:	0c000000 	jal	0 <func_809CE6E0>
     110:	02003025 	move	a2,s0
     114:	3c070000 	lui	a3,0x0
     118:	24e70000 	addiu	a3,a3,0
     11c:	8fa4003c 	lw	a0,60(sp)
     120:	260502e0 	addiu	a1,s0,736
     124:	0c000000 	jal	0 <func_809CE6E0>
     128:	02003025 	move	a2,s0
     12c:	86190032 	lh	t9,50(s0)
     130:	3c020000 	lui	v0,0x0
     134:	24420000 	addiu	v0,v0,0
     138:	a6190236 	sh	t9,566(s0)
     13c:	8c480000 	lw	t0,0(v0)
     140:	a608001c 	sh	t0,28(s0)
     144:	8c490000 	lw	t1,0(v0)
     148:	8fbf002c 	lw	ra,44(sp)
     14c:	8fb00028 	lw	s0,40(sp)
     150:	252a0001 	addiu	t2,t1,1
     154:	314b0003 	andi	t3,t2,0x3
     158:	ac4b0000 	sw	t3,0(v0)
     15c:	03e00008 	jr	ra
     160:	27bd0038 	addiu	sp,sp,56

00000164 <EnBw_Destroy>:
     164:	27bdffe8 	addiu	sp,sp,-24
     168:	afa40018 	sw	a0,24(sp)
     16c:	afa5001c 	sw	a1,28(sp)
     170:	00a02025 	move	a0,a1
     174:	8fa50018 	lw	a1,24(sp)
     178:	afbf0014 	sw	ra,20(sp)
     17c:	0c000000 	jal	0 <func_809CE6E0>
     180:	24a50294 	addiu	a1,a1,660
     184:	8fa50018 	lw	a1,24(sp)
     188:	8fa4001c 	lw	a0,28(sp)
     18c:	0c000000 	jal	0 <func_809CE6E0>
     190:	24a502e0 	addiu	a1,a1,736
     194:	8fbf0014 	lw	ra,20(sp)
     198:	27bd0018 	addiu	sp,sp,24
     19c:	03e00008 	jr	ra
     1a0:	00000000 	nop

000001a4 <func_809CE884>:
     1a4:	44800000 	mtc1	zero,$f0
     1a8:	27bdffd8 	addiu	sp,sp,-40
     1ac:	afb00020 	sw	s0,32(sp)
     1b0:	afa5002c 	sw	a1,44(sp)
     1b4:	00808025 	move	s0,a0
     1b8:	afbf0024 	sw	ra,36(sp)
     1bc:	44050000 	mfc1	a1,$f0
     1c0:	24840068 	addiu	a0,a0,104
     1c4:	3c063f80 	lui	a2,0x3f80
     1c8:	3c073f00 	lui	a3,0x3f00
     1cc:	0c000000 	jal	0 <func_809CE6E0>
     1d0:	e7a00010 	swc1	$f0,16(sp)
     1d4:	860e0222 	lh	t6,546(s0)
     1d8:	3c010000 	lui	at,0x0
     1dc:	25cfff06 	addiu	t7,t6,-250
     1e0:	a60f0222 	sh	t7,546(s0)
     1e4:	86180222 	lh	t8,546(s0)
     1e8:	c4280000 	lwc1	$f8,0(at)
     1ec:	44982000 	mtc1	t8,$f4
     1f0:	00000000 	nop
     1f4:	468021a0 	cvt.s.w	$f6,$f4
     1f8:	46083302 	mul.s	$f12,$f6,$f8
     1fc:	0c000000 	jal	0 <func_809CE6E0>
     200:	00000000 	nop
     204:	3c010000 	lui	at,0x0
     208:	c42a0000 	lwc1	$f10,0(at)
     20c:	86190222 	lh	t9,546(s0)
     210:	3c010000 	lui	at,0x0
     214:	460a0402 	mul.s	$f16,$f0,$f10
     218:	c4320000 	lwc1	$f18,0(at)
     21c:	44993000 	mtc1	t9,$f6
     220:	3c010000 	lui	at,0x0
     224:	46803220 	cvt.s.w	$f8,$f6
     228:	46128100 	add.s	$f4,$f16,$f18
     22c:	e6040050 	swc1	$f4,80(s0)
     230:	c42a0000 	lwc1	$f10,0(at)
     234:	460a4302 	mul.s	$f12,$f8,$f10
     238:	0c000000 	jal	0 <func_809CE6E0>
     23c:	00000000 	nop
     240:	3c010000 	lui	at,0x0
     244:	c4300000 	lwc1	$f16,0(at)
     248:	3c010000 	lui	at,0x0
     24c:	c4320000 	lwc1	$f18,0(at)
     250:	86080222 	lh	t0,546(s0)
     254:	3c010000 	lui	at,0x0
     258:	46120102 	mul.s	$f4,$f0,$f18
     25c:	44884000 	mtc1	t0,$f8
     260:	00000000 	nop
     264:	468042a0 	cvt.s.w	$f10,$f8
     268:	46048181 	sub.s	$f6,$f16,$f4
     26c:	e6060054 	swc1	$f6,84(s0)
     270:	c4320000 	lwc1	$f18,0(at)
     274:	46125302 	mul.s	$f12,$f10,$f18
     278:	0c000000 	jal	0 <func_809CE6E0>
     27c:	00000000 	nop
     280:	3c010000 	lui	at,0x0
     284:	c4300000 	lwc1	$f16,0(at)
     288:	3c010000 	lui	at,0x0
     28c:	c4260000 	lwc1	$f6,0(at)
     290:	46100102 	mul.s	$f4,$f0,$f16
     294:	86090222 	lh	t1,546(s0)
     298:	46062200 	add.s	$f8,$f4,$f6
     29c:	15200005 	bnez	t1,2b4 <func_809CE884+0x110>
     2a0:	e6080058 	swc1	$f8,88(s0)
     2a4:	860a00b6 	lh	t2,182(s0)
     2a8:	02002025 	move	a0,s0
     2ac:	0c000000 	jal	0 <func_809CE6E0>
     2b0:	a60a0032 	sh	t2,50(s0)
     2b4:	8fbf0024 	lw	ra,36(sp)
     2b8:	8fb00020 	lw	s0,32(sp)
     2bc:	27bd0028 	addiu	sp,sp,40
     2c0:	03e00008 	jr	ra
     2c4:	00000000 	nop

000002c8 <func_809CE9A8>:
     2c8:	27bdffe8 	addiu	sp,sp,-24
     2cc:	afbf0014 	sw	ra,20(sp)
     2d0:	00803825 	move	a3,a0
     2d4:	3c050600 	lui	a1,0x600
     2d8:	24a50228 	addiu	a1,a1,552
     2dc:	afa70018 	sw	a3,24(sp)
     2e0:	2484014c 	addiu	a0,a0,332
     2e4:	0c000000 	jal	0 <func_809CE6E0>
     2e8:	3c06c000 	lui	a2,0xc000
     2ec:	8fa70018 	lw	a3,24(sp)
     2f0:	240e0002 	li	t6,2
     2f4:	0c000000 	jal	0 <func_809CE6E0>
     2f8:	a0ee0220 	sb	t6,544(a3)
     2fc:	3c014348 	lui	at,0x4348
     300:	44811000 	mtc1	at,$f2
     304:	8fa40018 	lw	a0,24(sp)
     308:	44805000 	mtc1	zero,$f10
     30c:	46020102 	mul.s	$f4,$f0,$f2
     310:	3c050000 	lui	a1,0x0
     314:	24a50000 	addiu	a1,a1,0
     318:	a0800232 	sb	zero,562(a0)
     31c:	e48a0068 	swc1	$f10,104(a0)
     320:	46022180 	add.s	$f6,$f4,$f2
     324:	4600320d 	trunc.w.s	$f8,$f6
     328:	44184000 	mfc1	t8,$f8
     32c:	0c000000 	jal	0 <func_809CE6E0>
     330:	a4980222 	sh	t8,546(a0)
     334:	8fbf0014 	lw	ra,20(sp)
     338:	27bd0018 	addiu	sp,sp,24
     33c:	03e00008 	jr	ra
     340:	00000000 	nop

00000344 <func_809CEA24>:
     344:	27bdff88 	addiu	sp,sp,-120
     348:	afbf0034 	sw	ra,52(sp)
     34c:	afb00030 	sw	s0,48(sp)
     350:	afa5007c 	sw	a1,124(sp)
     354:	afa00074 	sw	zero,116(sp)
     358:	afa00064 	sw	zero,100(sp)
     35c:	8ca21c44 	lw	v0,7236(a1)
     360:	00808025 	move	s0,a0
     364:	2484014c 	addiu	a0,a0,332
     368:	afa20054 	sw	v0,84(sp)
     36c:	0c000000 	jal	0 <func_809CE6E0>
     370:	afa20050 	sw	v0,80(sp)
     374:	3c010000 	lui	at,0x0
     378:	c4260000 	lwc1	$f6,0(at)
     37c:	c6040250 	lwc1	$f4,592(s0)
     380:	c60c0240 	lwc1	$f12,576(s0)
     384:	46062200 	add.s	$f8,$f4,$f6
     388:	0c000000 	jal	0 <func_809CE6E0>
     38c:	e6080244 	swc1	$f8,580(s0)
     390:	c60a0240 	lwc1	$f10,576(s0)
     394:	c6100244 	lwc1	$f16,580(s0)
     398:	3c010000 	lui	at,0x0
     39c:	c60c024c 	lwc1	$f12,588(s0)
     3a0:	46105480 	add.s	$f18,$f10,$f16
     3a4:	46000086 	mov.s	$f2,$f0
     3a8:	e6120240 	swc1	$f18,576(s0)
     3ac:	c4240000 	lwc1	$f4,0(at)
     3b0:	3c010000 	lui	at,0x0
     3b4:	4604603c 	c.lt.s	$f12,$f4
     3b8:	00000000 	nop
     3bc:	45020005 	bc1fl	3d4 <func_809CEA24+0x90>
     3c0:	c60c0240 	lwc1	$f12,576(s0)
     3c4:	c4260000 	lwc1	$f6,0(at)
     3c8:	46066200 	add.s	$f8,$f12,$f6
     3cc:	e608024c 	swc1	$f8,588(s0)
     3d0:	c60c0240 	lwc1	$f12,576(s0)
     3d4:	0c000000 	jal	0 <func_809CE6E0>
     3d8:	e7a20058 	swc1	$f2,88(sp)
     3dc:	3c010000 	lui	at,0x0
     3e0:	c4300000 	lwc1	$f16,0(at)
     3e4:	c60a024c 	lwc1	$f10,588(s0)
     3e8:	3c010000 	lui	at,0x0
     3ec:	c4260000 	lwc1	$f6,0(at)
     3f0:	46105482 	mul.s	$f18,$f10,$f16
     3f4:	c60c0240 	lwc1	$f12,576(s0)
     3f8:	46120102 	mul.s	$f4,$f0,$f18
     3fc:	46043201 	sub.s	$f8,$f6,$f4
     400:	0c000000 	jal	0 <func_809CE6E0>
     404:	e6080050 	swc1	$f8,80(s0)
     408:	3c010000 	lui	at,0x0
     40c:	c4300000 	lwc1	$f16,0(at)
     410:	c60a024c 	lwc1	$f10,588(s0)
     414:	3c010000 	lui	at,0x0
     418:	c4240000 	lwc1	$f4,0(at)
     41c:	46105482 	mul.s	$f18,$f10,$f16
     420:	c60c0240 	lwc1	$f12,576(s0)
     424:	46120182 	mul.s	$f6,$f0,$f18
     428:	46062201 	sub.s	$f8,$f4,$f6
     42c:	0c000000 	jal	0 <func_809CE6E0>
     430:	e6080054 	swc1	$f8,84(s0)
     434:	3c010000 	lui	at,0x0
     438:	c4300000 	lwc1	$f16,0(at)
     43c:	c60a024c 	lwc1	$f10,588(s0)
     440:	3c010000 	lui	at,0x0
     444:	c4260000 	lwc1	$f6,0(at)
     448:	46105482 	mul.s	$f18,$f10,$f16
     44c:	c60c0240 	lwc1	$f12,576(s0)
     450:	46120102 	mul.s	$f4,$f0,$f18
     454:	46062200 	add.s	$f8,$f4,$f6
     458:	0c000000 	jal	0 <func_809CE6E0>
     45c:	e6080058 	swc1	$f8,88(s0)
     460:	92020232 	lbu	v0,562(s0)
     464:	c7a20058 	lwc1	$f2,88(sp)
     468:	46000386 	mov.s	$f14,$f0
     46c:	54400019 	bnezl	v0,4d4 <func_809CEA24+0x190>
     470:	44809000 	mtc1	zero,$f18
     474:	44805000 	mtc1	zero,$f10
     478:	44808000 	mtc1	zero,$f16
     47c:	244f0001 	addiu	t7,v0,1
     480:	4602503e 	c.le.s	$f10,$f2
     484:	00000000 	nop
     488:	45020004 	bc1fl	49c <func_809CEA24+0x158>
     48c:	46001307 	neg.s	$f12,$f2
     490:	10000002 	b	49c <func_809CEA24+0x158>
     494:	46001306 	mov.s	$f12,$f2
     498:	46001307 	neg.s	$f12,$f2
     49c:	4600803e 	c.le.s	$f16,$f0
     4a0:	00000000 	nop
     4a4:	45020004 	bc1fl	4b8 <func_809CEA24+0x174>
     4a8:	46000087 	neg.s	$f2,$f0
     4ac:	10000002 	b	4b8 <func_809CEA24+0x174>
     4b0:	46000086 	mov.s	$f2,$f0
     4b4:	46000087 	neg.s	$f2,$f0
     4b8:	4602603c 	c.lt.s	$f12,$f2
     4bc:	00000000 	nop
     4c0:	4502001d 	bc1fl	538 <func_809CEA24+0x1f4>
     4c4:	3c014120 	lui	at,0x4120
     4c8:	1000001a 	b	534 <func_809CEA24+0x1f0>
     4cc:	a20f0232 	sb	t7,562(s0)
     4d0:	44809000 	mtc1	zero,$f18
     4d4:	44802000 	mtc1	zero,$f4
     4d8:	02002025 	move	a0,s0
     4dc:	4602903e 	c.le.s	$f18,$f2
     4e0:	24053974 	li	a1,14708
     4e4:	45020004 	bc1fl	4f8 <func_809CEA24+0x1b4>
     4e8:	46001307 	neg.s	$f12,$f2
     4ec:	10000002 	b	4f8 <func_809CEA24+0x1b4>
     4f0:	46001306 	mov.s	$f12,$f2
     4f4:	46001307 	neg.s	$f12,$f2
     4f8:	4600203e 	c.le.s	$f4,$f0
     4fc:	00000000 	nop
     500:	45020004 	bc1fl	514 <func_809CEA24+0x1d0>
     504:	46000087 	neg.s	$f2,$f0
     508:	10000002 	b	514 <func_809CEA24+0x1d0>
     50c:	46000086 	mov.s	$f2,$f0
     510:	46000087 	neg.s	$f2,$f0
     514:	460c103c 	c.lt.s	$f2,$f12
     518:	00000000 	nop
     51c:	45020006 	bc1fl	538 <func_809CEA24+0x1f4>
     520:	3c014120 	lui	at,0x4120
     524:	0c000000 	jal	0 <func_809CE6E0>
     528:	e7ae005c 	swc1	$f14,92(sp)
     52c:	c7ae005c 	lwc1	$f14,92(sp)
     530:	a2000232 	sb	zero,562(s0)
     534:	3c014120 	lui	at,0x4120
     538:	44813000 	mtc1	at,$f6
     53c:	c6080244 	lwc1	$f8,580(s0)
     540:	c610024c 	lwc1	$f16,588(s0)
     544:	44802000 	mtc1	zero,$f4
     548:	46083282 	mul.s	$f10,$f6,$f8
     54c:	00000000 	nop
     550:	460a8482 	mul.s	$f18,$f16,$f10
     554:	00000000 	nop
     558:	46127382 	mul.s	$f14,$f14,$f18
     55c:	460e203e 	c.le.s	$f4,$f14
     560:	00000000 	nop
     564:	45000003 	bc1f	574 <func_809CEA24+0x230>
     568:	00000000 	nop
     56c:	10000003 	b	57c <func_809CEA24+0x238>
     570:	e60e0068 	swc1	$f14,104(s0)
     574:	46007187 	neg.s	$f6,$f14
     578:	e6060068 	swc1	$f6,104(s0)
     57c:	92180221 	lbu	t8,545(s0)
     580:	24010001 	li	at,1
     584:	53010013 	beql	t8,at,5d4 <func_809CEA24+0x290>
     588:	8fab007c 	lw	t3,124(sp)
     58c:	0c000000 	jal	0 <func_809CE6E0>
     590:	c60c0240 	lwc1	$f12,576(s0)
     594:	44804000 	mtc1	zero,$f8
     598:	3c0142aa 	lui	at,0x42aa
     59c:	44818000 	mtc1	at,$f16
     5a0:	4600403e 	c.le.s	$f8,$f0
     5a4:	00000000 	nop
     5a8:	45020004 	bc1fl	5bc <func_809CEA24+0x278>
     5ac:	46000087 	neg.s	$f2,$f0
     5b0:	10000002 	b	5bc <func_809CEA24+0x278>
     5b4:	46000086 	mov.s	$f2,$f0
     5b8:	46000087 	neg.s	$f2,$f0
     5bc:	46101282 	mul.s	$f10,$f2,$f16
     5c0:	4600548d 	trunc.w.s	$f18,$f10
     5c4:	440a9000 	mfc1	t2,$f18
     5c8:	00000000 	nop
     5cc:	a20a022d 	sb	t2,557(s0)
     5d0:	8fab007c 	lw	t3,124(sp)
     5d4:	3c010001 	lui	at,0x1
     5d8:	3c0e0001 	lui	t6,0x1
     5dc:	01616021 	addu	t4,t3,at
     5e0:	afac003c 	sw	t4,60(sp)
     5e4:	01cb7021 	addu	t6,t6,t3
     5e8:	8dce1de4 	lw	t6,7652(t6)
     5ec:	860d001c 	lh	t5,28(s0)
     5f0:	31cf0003 	andi	t7,t6,0x3
     5f4:	55af0015 	bnel	t5,t7,64c <func_809CEA24+0x308>
     5f8:	86090222 	lh	t1,546(s0)
     5fc:	44802000 	mtc1	zero,$f4
     600:	c6060068 	lwc1	$f6,104(s0)
     604:	256407c0 	addiu	a0,t3,1984
     608:	26050024 	addiu	a1,s0,36
     60c:	46062032 	c.eq.s	$f4,$f6
     610:	26060264 	addiu	a2,s0,612
     614:	27a70068 	addiu	a3,sp,104
     618:	27b80074 	addiu	t8,sp,116
     61c:	4501000a 	bc1t	648 <func_809CEA24+0x304>
     620:	24190001 	li	t9,1
     624:	24080001 	li	t0,1
     628:	afa80020 	sw	t0,32(sp)
     62c:	afb80010 	sw	t8,16(sp)
     630:	afb90014 	sw	t9,20(sp)
     634:	afa00018 	sw	zero,24(sp)
     638:	0c000000 	jal	0 <func_809CE6E0>
     63c:	afa0001c 	sw	zero,28(sp)
     640:	14400004 	bnez	v0,654 <func_809CEA24+0x310>
     644:	afa20064 	sw	v0,100(sp)
     648:	86090222 	lh	t1,546(s0)
     64c:	552000ac 	bnezl	t1,900 <L809CEF9C+0x44>
     650:	44808000 	mtc1	zero,$f16
     654:	8faa0074 	lw	t2,116(sp)
     658:	8fac0074 	lw	t4,116(sp)
     65c:	3c0b0000 	lui	t3,0x0
     660:	11400020 	beqz	t2,6e4 <func_809CEA24+0x3a0>
     664:	000c7100 	sll	t6,t4,0x4
     668:	000e6f02 	srl	t5,t6,0x1c
     66c:	000d7880 	sll	t7,t5,0x2
     670:	016f5821 	addu	t3,t3,t7
     674:	3c0100ff 	lui	at,0xff
     678:	8d6b0000 	lw	t3,0(t3)
     67c:	3421ffff 	ori	at,at,0xffff
     680:	0181c024 	and	t8,t4,at
     684:	3c018000 	lui	at,0x8000
     688:	0178c821 	addu	t9,t3,t8
     68c:	03214021 	addu	t0,t9,at
     690:	afa80074 	sw	t0,116(sp)
     694:	3c090000 	lui	t1,0x0
     698:	3c0a0000 	lui	t2,0x0
     69c:	01595021 	addu	t2,t2,t9
     6a0:	01394821 	addu	t1,t1,t9
     6a4:	85290000 	lh	t1,0(t1)
     6a8:	854a0000 	lh	t2,0(t2)
     6ac:	44894000 	mtc1	t1,$f8
     6b0:	448a8000 	mtc1	t2,$f16
     6b4:	46804320 	cvt.s.w	$f12,$f8
     6b8:	0c000000 	jal	0 <func_809CE6E0>
     6bc:	468083a0 	cvt.s.w	$f14,$f16
     6c0:	3c010000 	lui	at,0x0
     6c4:	c42a0000 	lwc1	$f10,0(at)
     6c8:	460a0482 	mul.s	$f18,$f0,$f10
     6cc:	4600910d 	trunc.w.s	$f4,$f18
     6d0:	44032000 	mfc1	v1,$f4
     6d4:	00000000 	nop
     6d8:	00031c00 	sll	v1,v1,0x10
     6dc:	10000006 	b	6f8 <func_809CEA24+0x3b4>
     6e0:	00031c03 	sra	v1,v1,0x10
     6e4:	86030032 	lh	v1,50(s0)
     6e8:	34018000 	li	at,0x8000
     6ec:	00611821 	addu	v1,v1,at
     6f0:	00031c00 	sll	v1,v1,0x10
     6f4:	00031c03 	sra	v1,v1,0x10
     6f8:	860d0236 	lh	t5,566(s0)
     6fc:	8fa4007c 	lw	a0,124(sp)
     700:	8faf0064 	lw	t7,100(sp)
     704:	146d0002 	bne	v1,t5,710 <func_809CEA24+0x3cc>
     708:	248407c0 	addiu	a0,a0,1984
     70c:	15e000fc 	bnez	t7,b00 <L809CEF9C+0x244>
     710:	26050270 	addiu	a1,s0,624
     714:	27ac0074 	addiu	t4,sp,116
     718:	240b0001 	li	t3,1
     71c:	24180001 	li	t8,1
     720:	afb80020 	sw	t8,32(sp)
     724:	afab0014 	sw	t3,20(sp)
     728:	afac0010 	sw	t4,16(sp)
     72c:	afa50038 	sw	a1,56(sp)
     730:	26060288 	addiu	a2,s0,648
     734:	27a70068 	addiu	a3,sp,104
     738:	afa00018 	sw	zero,24(sp)
     73c:	afa0001c 	sw	zero,28(sp)
     740:	a7a30062 	sh	v1,98(sp)
     744:	0c000000 	jal	0 <func_809CE6E0>
     748:	afa40040 	sw	a0,64(sp)
     74c:	87a30062 	lh	v1,98(sp)
     750:	8fa40040 	lw	a0,64(sp)
     754:	10400004 	beqz	v0,768 <func_809CEA24+0x424>
     758:	8fa50038 	lw	a1,56(sp)
     75c:	8fa80064 	lw	t0,100(sp)
     760:	35090002 	ori	t1,t0,0x2
     764:	afa90064 	sw	t1,100(sp)
     768:	27b90074 	addiu	t9,sp,116
     76c:	240a0001 	li	t2,1
     770:	240e0001 	li	t6,1
     774:	afae0020 	sw	t6,32(sp)
     778:	afaa0014 	sw	t2,20(sp)
     77c:	afb90010 	sw	t9,16(sp)
     780:	2606027c 	addiu	a2,s0,636
     784:	27a70068 	addiu	a3,sp,104
     788:	afa00018 	sw	zero,24(sp)
     78c:	afa0001c 	sw	zero,28(sp)
     790:	0c000000 	jal	0 <func_809CE6E0>
     794:	a7a30062 	sh	v1,98(sp)
     798:	10400004 	beqz	v0,7ac <func_809CEA24+0x468>
     79c:	87a30062 	lh	v1,98(sp)
     7a0:	8fad0064 	lw	t5,100(sp)
     7a4:	35af0004 	ori	t7,t5,0x4
     7a8:	afaf0064 	sw	t7,100(sp)
     7ac:	8fac0064 	lw	t4,100(sp)
     7b0:	2d810008 	sltiu	at,t4,8
     7b4:	10200041 	beqz	at,8bc <L809CEF9C>
     7b8:	000c6080 	sll	t4,t4,0x2
     7bc:	3c010000 	lui	at,0x0
     7c0:	002c0821 	addu	at,at,t4
     7c4:	8c2c0000 	lw	t4,0(at)
     7c8:	01800008 	jr	t4
     7cc:	00000000 	nop

000007d0 <L809CEEB0>:
     7d0:	860b0236 	lh	t3,566(s0)
     7d4:	86180238 	lh	t8,568(s0)
     7d8:	01784021 	addu	t0,t3,t8
     7dc:	a6080236 	sh	t0,566(s0)

000007e0 <L809CEEC0>:
     7e0:	92090221 	lbu	t1,545(s0)
     7e4:	24010003 	li	at,3
     7e8:	8fb9003c 	lw	t9,60(sp)
     7ec:	5521000c 	bnel	t1,at,820 <L809CEEC0+0x40>
     7f0:	860c008a 	lh	t4,138(s0)
     7f4:	8f2a1de4 	lw	t2,7652(t9)
     7f8:	240d4000 	li	t5,16384
     7fc:	240fc000 	li	t7,-16384
     800:	314e0002 	andi	t6,t2,0x2
     804:	11c00003 	beqz	t6,814 <L809CEEC0+0x34>
     808:	00000000 	nop
     80c:	1000002b 	b	8bc <L809CEF9C>
     810:	a60d0238 	sh	t5,568(s0)
     814:	10000029 	b	8bc <L809CEF9C>
     818:	a60f0238 	sh	t7,568(s0)
     81c:	860c008a 	lh	t4,138(s0)
     820:	860b00b6 	lh	t3,182(s0)
     824:	44808000 	mtc1	zero,$f16
     828:	24194000 	li	t9,16384
     82c:	018bc023 	subu	t8,t4,t3
     830:	00184400 	sll	t0,t8,0x10
     834:	00084c03 	sra	t1,t0,0x10
     838:	44893000 	mtc1	t1,$f6
     83c:	240ac000 	li	t2,-16384
     840:	46803220 	cvt.s.w	$f8,$f6
     844:	4608803e 	c.le.s	$f16,$f8
     848:	00000000 	nop
     84c:	45020004 	bc1fl	860 <L809CEEC0+0x80>
     850:	a60a0238 	sh	t2,568(s0)
     854:	10000002 	b	860 <L809CEEC0+0x80>
     858:	a6190238 	sh	t9,568(s0)
     85c:	a60a0238 	sh	t2,568(s0)
     860:	920e0221 	lbu	t6,545(s0)
     864:	24010001 	li	at,1
     868:	55c10015 	bnel	t6,at,8c0 <L809CEF9C+0x4>
     86c:	8fad0064 	lw	t5,100(sp)
     870:	860d0238 	lh	t5,568(s0)
     874:	000d7823 	negu	t7,t5
     878:	10000010 	b	8bc <L809CEF9C>
     87c:	a60f0238 	sh	t7,568(s0)

00000880 <L809CEF60>:
     880:	860c0236 	lh	t4,566(s0)
     884:	860b0238 	lh	t3,568(s0)
     888:	018bc021 	addu	t8,t4,t3
     88c:	a6180236 	sh	t8,566(s0)

00000890 <L809CEF70>:
     890:	24084000 	li	t0,16384
     894:	10000009 	b	8bc <L809CEF9C>
     898:	a6080238 	sh	t0,568(s0)

0000089c <L809CEF7C>:
     89c:	86090236 	lh	t1,566(s0)
     8a0:	86190238 	lh	t9,568(s0)
     8a4:	01395021 	addu	t2,t1,t9
     8a8:	a60a0236 	sh	t2,566(s0)

000008ac <L809CEF8C>:
     8ac:	240ec000 	li	t6,-16384
     8b0:	10000002 	b	8bc <L809CEF9C>
     8b4:	a60e0238 	sh	t6,568(s0)

000008b8 <L809CEF98>:
     8b8:	a6000238 	sh	zero,568(s0)

000008bc <L809CEF9C>:
     8bc:	8fad0064 	lw	t5,100(sp)
     8c0:	24010006 	li	at,6
     8c4:	11a10002 	beq	t5,at,8d0 <L809CEF9C+0x14>
     8c8:	00000000 	nop
     8cc:	a6030236 	sh	v1,566(s0)
     8d0:	0c000000 	jal	0 <func_809CE6E0>
     8d4:	00000000 	nop
     8d8:	3c014348 	lui	at,0x4348
     8dc:	44815000 	mtc1	at,$f10
     8e0:	44812000 	mtc1	at,$f4
     8e4:	460a0482 	mul.s	$f18,$f0,$f10
     8e8:	46049180 	add.s	$f6,$f18,$f4
     8ec:	4600320d 	trunc.w.s	$f8,$f6
     8f0:	440c4000 	mfc1	t4,$f8
     8f4:	10000082 	b	b00 <L809CEF9C+0x244>
     8f8:	a60c0222 	sh	t4,546(s0)
     8fc:	44808000 	mtc1	zero,$f16
     900:	c60a0068 	lwc1	$f10,104(s0)
     904:	460a8032 	c.eq.s	$f16,$f10
     908:	00000000 	nop
     90c:	4503007d 	bc1tl	b04 <L809CEF9C+0x248>
     910:	86080222 	lh	t0,546(s0)
     914:	960b0088 	lhu	t3,136(s0)
     918:	31780008 	andi	t8,t3,0x8
     91c:	53000079 	beqzl	t8,b04 <L809CEF9C+0x248>
     920:	86080222 	lh	t0,546(s0)
     924:	8603007e 	lh	v1,126(s0)
     928:	86080236 	lh	t0,566(s0)
     92c:	92020221 	lbu	v0,545(s0)
     930:	24090001 	li	t1,1
     934:	10680030 	beq	v1,t0,9f8 <L809CEF9C+0x13c>
     938:	24010003 	li	at,3
     93c:	afa90064 	sw	t1,100(sp)
     940:	14410019 	bne	v0,at,9a8 <L809CEF9C+0xec>
     944:	a6030236 	sh	v1,566(s0)
     948:	8fb9003c 	lw	t9,60(sp)
     94c:	240d4000 	li	t5,16384
     950:	240fc000 	li	t7,-16384
     954:	8f2a1de4 	lw	t2,7652(t9)
     958:	314e0020 	andi	t6,t2,0x20
     95c:	51c00004 	beqzl	t6,970 <L809CEF9C+0xb4>
     960:	a60f0238 	sh	t7,568(s0)
     964:	10000002 	b	970 <L809CEF9C+0xb4>
     968:	a60d0238 	sh	t5,568(s0)
     96c:	a60f0238 	sh	t7,568(s0)
     970:	960c0088 	lhu	t4,136(s0)
     974:	318bfff7 	andi	t3,t4,0xfff7
     978:	0c000000 	jal	0 <func_809CE6E0>
     97c:	a60b0088 	sh	t3,136(s0)
     980:	3c0141a0 	lui	at,0x41a0
     984:	44819000 	mtc1	at,$f18
     988:	3c014320 	lui	at,0x4320
     98c:	44813000 	mtc1	at,$f6
     990:	46120102 	mul.s	$f4,$f0,$f18
     994:	46062200 	add.s	$f8,$f4,$f6
     998:	4600440d 	trunc.w.s	$f16,$f8
     99c:	44088000 	mfc1	t0,$f16
     9a0:	10000057 	b	b00 <L809CEF9C+0x244>
     9a4:	a6080222 	sh	t0,546(s0)
     9a8:	8609008a 	lh	t1,138(s0)
     9ac:	86190236 	lh	t9,566(s0)
     9b0:	240f4000 	li	t7,16384
     9b4:	240cc000 	li	t4,-16384
     9b8:	01395023 	subu	t2,t1,t9
     9bc:	000a7400 	sll	t6,t2,0x10
     9c0:	000e6c03 	sra	t5,t6,0x10
     9c4:	05a20004 	bltzl	t5,9d8 <L809CEF9C+0x11c>
     9c8:	a60c0238 	sh	t4,568(s0)
     9cc:	10000002 	b	9d8 <L809CEF9C+0x11c>
     9d0:	a60f0238 	sh	t7,568(s0)
     9d4:	a60c0238 	sh	t4,568(s0)
     9d8:	920b0221 	lbu	t3,545(s0)
     9dc:	24010001 	li	at,1
     9e0:	55610048 	bnel	t3,at,b04 <L809CEF9C+0x248>
     9e4:	86080222 	lh	t0,546(s0)
     9e8:	86180238 	lh	t8,568(s0)
     9ec:	00184023 	negu	t0,t8
     9f0:	10000043 	b	b00 <L809CEF9C+0x244>
     9f4:	a6080238 	sh	t0,568(s0)
     9f8:	14400041 	bnez	v0,b00 <L809CEF9C+0x244>
     9fc:	8fa4007c 	lw	a0,124(sp)
     a00:	8fa60054 	lw	a2,84(sp)
     a04:	27a90074 	addiu	t1,sp,116
     a08:	24190001 	li	t9,1
     a0c:	240a0001 	li	t2,1
     a10:	afaa0020 	sw	t2,32(sp)
     a14:	afb90014 	sw	t9,20(sp)
     a18:	afa90010 	sw	t1,16(sp)
     a1c:	248407c0 	addiu	a0,a0,1984
     a20:	26050024 	addiu	a1,s0,36
     a24:	27a70068 	addiu	a3,sp,104
     a28:	afa00018 	sw	zero,24(sp)
     a2c:	afa0001c 	sw	zero,28(sp)
     a30:	0c000000 	jal	0 <func_809CE6E0>
     a34:	24c60024 	addiu	a2,a2,36
     a38:	10400031 	beqz	v0,b00 <L809CEF9C+0x244>
     a3c:	afa20064 	sw	v0,100(sp)
     a40:	8fae0074 	lw	t6,116(sp)
     a44:	3c0b0000 	lui	t3,0x0
     a48:	3c0100ff 	lui	at,0xff
     a4c:	000e6900 	sll	t5,t6,0x4
     a50:	000d7f02 	srl	t7,t5,0x1c
     a54:	000f6080 	sll	t4,t7,0x2
     a58:	016c5821 	addu	t3,t3,t4
     a5c:	8d6b0000 	lw	t3,0(t3)
     a60:	3421ffff 	ori	at,at,0xffff
     a64:	01c1c024 	and	t8,t6,at
     a68:	3c018000 	lui	at,0x8000
     a6c:	01784021 	addu	t0,t3,t8
     a70:	01014821 	addu	t1,t0,at
     a74:	afa90074 	sw	t1,116(sp)
     a78:	3c190000 	lui	t9,0x0
     a7c:	3c0a0000 	lui	t2,0x0
     a80:	01485021 	addu	t2,t2,t0
     a84:	0328c821 	addu	t9,t9,t0
     a88:	87390000 	lh	t9,0(t9)
     a8c:	854a0000 	lh	t2,0(t2)
     a90:	44995000 	mtc1	t9,$f10
     a94:	448a9000 	mtc1	t2,$f18
     a98:	46805320 	cvt.s.w	$f12,$f10
     a9c:	0c000000 	jal	0 <func_809CE6E0>
     aa0:	468093a0 	cvt.s.w	$f14,$f18
     aa4:	3c010000 	lui	at,0x0
     aa8:	c4240000 	lwc1	$f4,0(at)
     aac:	860f0236 	lh	t7,566(s0)
     ab0:	46040182 	mul.s	$f6,$f0,$f4
     ab4:	4600320d 	trunc.w.s	$f8,$f6
     ab8:	44024000 	mfc1	v0,$f8
     abc:	00000000 	nop
     ac0:	00021400 	sll	v0,v0,0x10
     ac4:	00021403 	sra	v0,v0,0x10
     ac8:	504f000e 	beql	v0,t7,b04 <L809CEF9C+0x248>
     acc:	86080222 	lh	t0,546(s0)
     ad0:	860c008a 	lh	t4,138(s0)
     ad4:	24094000 	li	t1,16384
     ad8:	2419c000 	li	t9,-16384
     adc:	01827023 	subu	t6,t4,v0
     ae0:	000e5c00 	sll	t3,t6,0x10
     ae4:	000bc403 	sra	t8,t3,0x10
     ae8:	07020004 	bltzl	t8,afc <L809CEF9C+0x240>
     aec:	a6190238 	sh	t9,568(s0)
     af0:	10000002 	b	afc <L809CEF9C+0x240>
     af4:	a6090238 	sh	t1,568(s0)
     af8:	a6190238 	sh	t9,568(s0)
     afc:	a6020236 	sh	v0,566(s0)
     b00:	86080222 	lh	t0,546(s0)
     b04:	86020224 	lh	v0,548(s0)
     b08:	02002025 	move	a0,s0
     b0c:	250affff 	addiu	t2,t0,-1
     b10:	10400003 	beqz	v0,b20 <L809CEF9C+0x264>
     b14:	a60a0222 	sh	t2,546(s0)
     b18:	244dffff 	addiu	t5,v0,-1
     b1c:	a60d0224 	sh	t5,548(s0)
     b20:	860f0234 	lh	t7,564(s0)
     b24:	55e00014 	bnezl	t7,b78 <L809CEF9C+0x2bc>
     b28:	92030221 	lbu	v1,545(s0)
     b2c:	860c0236 	lh	t4,566(s0)
     b30:	860e0238 	lh	t6,568(s0)
     b34:	8fa5007c 	lw	a1,124(sp)
     b38:	3c064248 	lui	a2,0x4248
     b3c:	018e3821 	addu	a3,t4,t6
     b40:	00073c00 	sll	a3,a3,0x10
     b44:	0c000000 	jal	0 <func_809CE6E0>
     b48:	00073c03 	sra	a3,a3,0x10
     b4c:	5440000a 	bnezl	v0,b78 <L809CEF9C+0x2bc>
     b50:	92030221 	lbu	v1,545(s0)
     b54:	860b0238 	lh	t3,568(s0)
     b58:	24014000 	li	at,16384
     b5c:	24184000 	li	t8,16384
     b60:	11610003 	beq	t3,at,b70 <L809CEF9C+0x2b4>
     b64:	2409c000 	li	t1,-16384
     b68:	10000002 	b	b74 <L809CEF9C+0x2b8>
     b6c:	a6180238 	sh	t8,568(s0)
     b70:	a6090238 	sh	t1,568(s0)
     b74:	92030221 	lbu	v1,545(s0)
     b78:	3c053f19 	lui	a1,0x3f19
     b7c:	34a5999a 	ori	a1,a1,0x999a
     b80:	10600045 	beqz	v1,c98 <L809CEF9C+0x3dc>
     b84:	26040248 	addiu	a0,s0,584
     b88:	24010001 	li	at,1
     b8c:	106100a6 	beq	v1,at,e28 <L809CEF9C+0x56c>
     b90:	8fac0064 	lw	t4,100(sp)
     b94:	24010003 	li	at,3
     b98:	14610125 	bne	v1,at,1030 <L809CEF9C+0x774>
     b9c:	26040248 	addiu	a0,s0,584
     ba0:	44808000 	mtc1	zero,$f16
     ba4:	3c053f19 	lui	a1,0x3f19
     ba8:	3c073d4c 	lui	a3,0x3d4c
     bac:	34e7cccd 	ori	a3,a3,0xcccd
     bb0:	34a5999a 	ori	a1,a1,0x999a
     bb4:	3c063f80 	lui	a2,0x3f80
     bb8:	0c000000 	jal	0 <func_809CE6E0>
     bbc:	e7b00010 	swc1	$f16,16(sp)
     bc0:	86190224 	lh	t9,548(s0)
     bc4:	3c014348 	lui	at,0x4348
     bc8:	57200020 	bnezl	t9,c4c <L809CEF9C+0x390>
     bcc:	3c01447a 	lui	at,0x447a
     bd0:	c60a0090 	lwc1	$f10,144(s0)
     bd4:	44819000 	mtc1	at,$f18
     bd8:	3c014248 	lui	at,0x4248
     bdc:	4612503c 	c.lt.s	$f10,$f18
     be0:	00000000 	nop
     be4:	45020019 	bc1fl	c4c <L809CEF9C+0x390>
     be8:	3c01447a 	lui	at,0x447a
     bec:	c6000094 	lwc1	$f0,148(s0)
     bf0:	44802000 	mtc1	zero,$f4
     bf4:	44813000 	mtc1	at,$f6
     bf8:	02002025 	move	a0,s0
     bfc:	4600203e 	c.le.s	$f4,$f0
     c00:	00000000 	nop
     c04:	45020004 	bc1fl	c18 <L809CEF9C+0x35c>
     c08:	46000087 	neg.s	$f2,$f0
     c0c:	10000002 	b	c18 <L809CEF9C+0x35c>
     c10:	46000086 	mov.s	$f2,$f0
     c14:	46000087 	neg.s	$f2,$f0
     c18:	4606103c 	c.lt.s	$f2,$f6
     c1c:	00000000 	nop
     c20:	4502000a 	bc1fl	c4c <L809CEF9C+0x390>
     c24:	3c01447a 	lui	at,0x447a
     c28:	0c000000 	jal	0 <func_809CE6E0>
     c2c:	24051c70 	li	a1,7280
     c30:	50400006 	beqzl	v0,c4c <L809CEF9C+0x390>
     c34:	3c01447a 	lui	at,0x447a
     c38:	0c000000 	jal	0 <func_809CE6E0>
     c3c:	02002025 	move	a0,s0
     c40:	100000fc 	b	1034 <L809CEF9C+0x778>
     c44:	86090032 	lh	t1,50(s0)
     c48:	3c01447a 	lui	at,0x447a
     c4c:	44818000 	mtc1	at,$f16
     c50:	c6080068 	lwc1	$f8,104(s0)
     c54:	86080236 	lh	t0,566(s0)
     c58:	860a0238 	lh	t2,568(s0)
     c5c:	46104282 	mul.s	$f10,$f8,$f16
     c60:	afa00010 	sw	zero,16(sp)
     c64:	010a2821 	addu	a1,t0,t2
     c68:	00052c00 	sll	a1,a1,0x10
     c6c:	00052c03 	sra	a1,a1,0x10
     c70:	26040032 	addiu	a0,s0,50
     c74:	24060001 	li	a2,1
     c78:	4600548d 	trunc.w.s	$f18,$f10
     c7c:	44079000 	mfc1	a3,$f18
     c80:	00000000 	nop
     c84:	00073c00 	sll	a3,a3,0x10
     c88:	0c000000 	jal	0 <func_809CE6E0>
     c8c:	00073c03 	sra	a3,a3,0x10
     c90:	100000e8 	b	1034 <L809CEF9C+0x778>
     c94:	86090032 	lh	t1,50(s0)
     c98:	44802000 	mtc1	zero,$f4
     c9c:	3c073d4c 	lui	a3,0x3d4c
     ca0:	34e7cccd 	ori	a3,a3,0xcccd
     ca4:	3c063f80 	lui	a2,0x3f80
     ca8:	0c000000 	jal	0 <func_809CE6E0>
     cac:	e7a40010 	swc1	$f4,16(sp)
     cb0:	8faf0064 	lw	t7,100(sp)
     cb4:	3c01447a 	lui	at,0x447a
     cb8:	55e0002e 	bnezl	t7,d74 <L809CEF9C+0x4b8>
     cbc:	c6100068 	lwc1	$f16,104(s0)
     cc0:	3c01447a 	lui	at,0x447a
     cc4:	44814000 	mtc1	at,$f8
     cc8:	c6060068 	lwc1	$f6,104(s0)
     ccc:	8605008a 	lh	a1,138(s0)
     cd0:	afa00010 	sw	zero,16(sp)
     cd4:	46083402 	mul.s	$f16,$f6,$f8
     cd8:	26040032 	addiu	a0,s0,50
     cdc:	24060001 	li	a2,1
     ce0:	4600828d 	trunc.w.s	$f10,$f16
     ce4:	44075000 	mfc1	a3,$f10
     ce8:	00000000 	nop
     cec:	00073c00 	sll	a3,a3,0x10
     cf0:	0c000000 	jal	0 <func_809CE6E0>
     cf4:	00073c03 	sra	a3,a3,0x10
     cf8:	3c0142b4 	lui	at,0x42b4
     cfc:	44812000 	mtc1	at,$f4
     d00:	c6120090 	lwc1	$f18,144(s0)
     d04:	3c014248 	lui	at,0x4248
     d08:	4604903c 	c.lt.s	$f18,$f4
     d0c:	00000000 	nop
     d10:	45020029 	bc1fl	db8 <L809CEF9C+0x4fc>
     d14:	86090224 	lh	t1,548(s0)
     d18:	c6060094 	lwc1	$f6,148(s0)
     d1c:	44814000 	mtc1	at,$f8
     d20:	02002025 	move	a0,s0
     d24:	4608303c 	c.lt.s	$f6,$f8
     d28:	00000000 	nop
     d2c:	45020022 	bc1fl	db8 <L809CEF9C+0x4fc>
     d30:	86090224 	lh	t1,548(s0)
     d34:	0c000000 	jal	0 <func_809CE6E0>
     d38:	24051554 	li	a1,5460
     d3c:	1040001d 	beqz	v0,db4 <L809CEF9C+0x4f8>
     d40:	02002025 	move	a0,s0
     d44:	3c06428e 	lui	a2,0x428e
     d48:	34c67efc 	ori	a2,a2,0x7efc
     d4c:	8fa5007c 	lw	a1,124(sp)
     d50:	0c000000 	jal	0 <func_809CE6E0>
     d54:	8607008a 	lh	a3,138(s0)
     d58:	50400017 	beqzl	v0,db8 <L809CEF9C+0x4fc>
     d5c:	86090224 	lh	t1,548(s0)
     d60:	0c000000 	jal	0 <func_809CE6E0>
     d64:	02002025 	move	a0,s0
     d68:	10000013 	b	db8 <L809CEF9C+0x4fc>
     d6c:	86090224 	lh	t1,548(s0)
     d70:	c6100068 	lwc1	$f16,104(s0)
     d74:	44815000 	mtc1	at,$f10
     d78:	860e0236 	lh	t6,566(s0)
     d7c:	860b0238 	lh	t3,568(s0)
     d80:	460a8482 	mul.s	$f18,$f16,$f10
     d84:	afa00010 	sw	zero,16(sp)
     d88:	01cb2821 	addu	a1,t6,t3
     d8c:	00052c00 	sll	a1,a1,0x10
     d90:	00052c03 	sra	a1,a1,0x10
     d94:	26040032 	addiu	a0,s0,50
     d98:	24060001 	li	a2,1
     d9c:	4600910d 	trunc.w.s	$f4,$f18
     da0:	44072000 	mfc1	a3,$f4
     da4:	00000000 	nop
     da8:	00073c00 	sll	a3,a3,0x10
     dac:	0c000000 	jal	0 <func_809CE6E0>
     db0:	00073c03 	sra	a3,a3,0x10
     db4:	86090224 	lh	t1,548(s0)
     db8:	3c014270 	lui	at,0x4270
     dbc:	240d0003 	li	t5,3
     dc0:	11200014 	beqz	t1,e14 <L809CEF9C+0x558>
     dc4:	240f0096 	li	t7,150
     dc8:	c6000094 	lwc1	$f0,148(s0)
     dcc:	44803000 	mtc1	zero,$f6
     dd0:	44814000 	mtc1	at,$f8
     dd4:	8fb90050 	lw	t9,80(sp)
     dd8:	4600303e 	c.le.s	$f6,$f0
     ddc:	00000000 	nop
     de0:	45020004 	bc1fl	df4 <L809CEF9C+0x538>
     de4:	46000087 	neg.s	$f2,$f0
     de8:	10000002 	b	df4 <L809CEF9C+0x538>
     dec:	46000086 	mov.s	$f2,$f0
     df0:	46000087 	neg.s	$f2,$f0
     df4:	4602403c 	c.lt.s	$f8,$f2
     df8:	00000000 	nop
     dfc:	45030006 	bc1tl	e18 <L809CEF9C+0x55c>
     e00:	44808000 	mtc1	zero,$f16
     e04:	8f28067c 	lw	t0,1660(t9)
     e08:	310a6000 	andi	t2,t0,0x6000
     e0c:	51400089 	beqzl	t2,1034 <L809CEF9C+0x778>
     e10:	86090032 	lh	t1,50(s0)
     e14:	44808000 	mtc1	zero,$f16
     e18:	a20d0221 	sb	t5,545(s0)
     e1c:	a60f0224 	sh	t7,548(s0)
     e20:	10000083 	b	1030 <L809CEF9C+0x774>
     e24:	e6100250 	swc1	$f16,592(s0)
     e28:	15800005 	bnez	t4,e40 <L809CEF9C+0x584>
     e2c:	02002025 	move	a0,s0
     e30:	960e0088 	lhu	t6,136(s0)
     e34:	31cb0008 	andi	t3,t6,0x8
     e38:	51600006 	beqzl	t3,e54 <L809CEF9C+0x598>
     e3c:	02002025 	move	a0,s0
     e40:	0c000000 	jal	0 <func_809CE6E0>
     e44:	24051c70 	li	a1,7280
     e48:	1040001d 	beqz	v0,ec0 <L809CEF9C+0x604>
     e4c:	3c01447a 	lui	at,0x447a
     e50:	02002025 	move	a0,s0
     e54:	0c000000 	jal	0 <func_809CE6E0>
     e58:	24051c70 	li	a1,7280
     e5c:	50400005 	beqzl	v0,e74 <L809CEF9C+0x5b8>
     e60:	8605008a 	lh	a1,138(s0)
     e64:	86180238 	lh	t8,568(s0)
     e68:	00184823 	negu	t1,t8
     e6c:	a6090238 	sh	t1,568(s0)
     e70:	8605008a 	lh	a1,138(s0)
     e74:	24018000 	li	at,-32768
     e78:	c60a0068 	lwc1	$f10,104(s0)
     e7c:	00a12821 	addu	a1,a1,at
     e80:	3c01447a 	lui	at,0x447a
     e84:	44819000 	mtc1	at,$f18
     e88:	00052c00 	sll	a1,a1,0x10
     e8c:	00052c03 	sra	a1,a1,0x10
     e90:	46125102 	mul.s	$f4,$f10,$f18
     e94:	afa00010 	sw	zero,16(sp)
     e98:	26040032 	addiu	a0,s0,50
     e9c:	24060001 	li	a2,1
     ea0:	4600218d 	trunc.w.s	$f6,$f4
     ea4:	44073000 	mfc1	a3,$f6
     ea8:	00000000 	nop
     eac:	00073c00 	sll	a3,a3,0x10
     eb0:	0c000000 	jal	0 <func_809CE6E0>
     eb4:	00073c03 	sra	a3,a3,0x10
     eb8:	10000013 	b	f08 <L809CEF9C+0x64c>
     ebc:	86020224 	lh	v0,548(s0)
     ec0:	c6080068 	lwc1	$f8,104(s0)
     ec4:	44818000 	mtc1	at,$f16
     ec8:	86080236 	lh	t0,566(s0)
     ecc:	860a0238 	lh	t2,568(s0)
     ed0:	46104282 	mul.s	$f10,$f8,$f16
     ed4:	afa00010 	sw	zero,16(sp)
     ed8:	010a2821 	addu	a1,t0,t2
     edc:	00052c00 	sll	a1,a1,0x10
     ee0:	00052c03 	sra	a1,a1,0x10
     ee4:	26040032 	addiu	a0,s0,50
     ee8:	24060001 	li	a2,1
     eec:	4600548d 	trunc.w.s	$f18,$f10
     ef0:	44079000 	mfc1	a3,$f18
     ef4:	00000000 	nop
     ef8:	00073c00 	sll	a3,a3,0x10
     efc:	0c000000 	jal	0 <func_809CE6E0>
     f00:	00073c03 	sra	a3,a3,0x10
     f04:	86020224 	lh	v0,548(s0)
     f08:	240f0960 	li	t7,2400
     f0c:	284100c9 	slti	at,v0,201
     f10:	10200047 	beqz	at,1030 <L809CEF9C+0x774>
     f14:	01e26023 	subu	t4,t7,v0
     f18:	004c0019 	multu	v0,t4
     f1c:	00002012 	mflo	a0
     f20:	00042400 	sll	a0,a0,0x10
     f24:	0c000000 	jal	0 <func_809CE6E0>
     f28:	00042403 	sra	a0,a0,0x10
     f2c:	3c01425c 	lui	at,0x425c
     f30:	44812000 	mtc1	at,$f4
     f34:	00000000 	nop
     f38:	46040182 	mul.s	$f6,$f0,$f4
     f3c:	4600320d 	trunc.w.s	$f8,$f6
     f40:	44024000 	mfc1	v0,$f8
     f44:	00000000 	nop
     f48:	00021400 	sll	v0,v0,0x10
     f4c:	00021403 	sra	v0,v0,0x10
     f50:	04400003 	bltz	v0,f60 <L809CEF9C+0x6a4>
     f54:	00021823 	negu	v1,v0
     f58:	10000001 	b	f60 <L809CEF9C+0x6a4>
     f5c:	00401825 	move	v1,v0
     f60:	86020224 	lh	v0,548(s0)
     f64:	24090960 	li	t1,2400
     f68:	240b00ff 	li	t3,255
     f6c:	0122c823 	subu	t9,t1,v0
     f70:	00590019 	multu	v0,t9
     f74:	0163c023 	subu	t8,t3,v1
     f78:	a218022c 	sb	t8,556(s0)
     f7c:	00002012 	mflo	a0
     f80:	00042400 	sll	a0,a0,0x10
     f84:	0c000000 	jal	0 <func_809CE6E0>
     f88:	00042403 	sra	a0,a0,0x10
     f8c:	3c0142e6 	lui	at,0x42e6
     f90:	44818000 	mtc1	at,$f16
     f94:	240f0960 	li	t7,2400
     f98:	46100282 	mul.s	$f10,$f0,$f16
     f9c:	4600548d 	trunc.w.s	$f18,$f10
     fa0:	44029000 	mfc1	v0,$f18
     fa4:	00000000 	nop
     fa8:	00021400 	sll	v0,v0,0x10
     fac:	00021403 	sra	v0,v0,0x10
     fb0:	04400003 	bltz	v0,fc0 <L809CEF9C+0x704>
     fb4:	00021823 	negu	v1,v0
     fb8:	10000001 	b	fc0 <L809CEF9C+0x704>
     fbc:	00401825 	move	v1,v0
     fc0:	860d0224 	lh	t5,548(s0)
     fc4:	246a0055 	addiu	t2,v1,85
     fc8:	a20a022d 	sb	t2,557(s0)
     fcc:	01ed2023 	subu	a0,t7,t5
     fd0:	00042400 	sll	a0,a0,0x10
     fd4:	0c000000 	jal	0 <func_809CE6E0>
     fd8:	00042403 	sra	a0,a0,0x10
     fdc:	3c01437f 	lui	at,0x437f
     fe0:	44812000 	mtc1	at,$f4
     fe4:	00000000 	nop
     fe8:	46040182 	mul.s	$f6,$f0,$f4
     fec:	4600320d 	trunc.w.s	$f8,$f6
     ff0:	44024000 	mfc1	v0,$f8
     ff4:	00000000 	nop
     ff8:	00021400 	sll	v0,v0,0x10
     ffc:	00021403 	sra	v0,v0,0x10
    1000:	04400003 	bltz	v0,1010 <L809CEF9C+0x754>
    1004:	00027023 	negu	t6,v0
    1008:	10000002 	b	1014 <L809CEF9C+0x758>
    100c:	a202022e 	sb	v0,558(s0)
    1010:	a20e022e 	sb	t6,558(s0)
    1014:	860b0224 	lh	t3,548(s0)
    1018:	55600006 	bnezl	t3,1034 <L809CEF9C+0x778>
    101c:	86090032 	lh	t1,50(s0)
    1020:	44808000 	mtc1	zero,$f16
    1024:	24180003 	li	t8,3
    1028:	a2180221 	sb	t8,545(s0)
    102c:	e6100250 	swc1	$f16,592(s0)
    1030:	86090032 	lh	t1,50(s0)
    1034:	a60900b6 	sh	t1,182(s0)
    1038:	8fbf0034 	lw	ra,52(sp)
    103c:	8fb00030 	lw	s0,48(sp)
    1040:	27bd0078 	addiu	sp,sp,120
    1044:	03e00008 	jr	ra
    1048:	00000000 	nop

0000104c <func_809CF72C>:
    104c:	27bdffe8 	addiu	sp,sp,-24
    1050:	afbf0014 	sw	ra,20(sp)
    1054:	00803825 	move	a3,a0
    1058:	3c050600 	lui	a1,0x600
    105c:	24a521a0 	addiu	a1,a1,8608
    1060:	afa70018 	sw	a3,24(sp)
    1064:	2484014c 	addiu	a0,a0,332
    1068:	0c000000 	jal	0 <func_809CE6E0>
    106c:	3c06c000 	lui	a2,0xc000
    1070:	8fa40018 	lw	a0,24(sp)
    1074:	240e0003 	li	t6,3
    1078:	3c010000 	lui	at,0x0
    107c:	a08e0220 	sb	t6,544(a0)
    1080:	a0800221 	sb	zero,545(a0)
    1084:	c4240000 	lwc1	$f4,0(at)
    1088:	44803000 	mtc1	zero,$f6
    108c:	240f0014 	li	t7,20
    1090:	24180bb8 	li	t8,3000
    1094:	24053975 	li	a1,14709
    1098:	a48f0222 	sh	t7,546(a0)
    109c:	a4980224 	sh	t8,548(a0)
    10a0:	e4840250 	swc1	$f4,592(a0)
    10a4:	0c000000 	jal	0 <func_809CE6E0>
    10a8:	e4860068 	swc1	$f6,104(a0)
    10ac:	3c050000 	lui	a1,0x0
    10b0:	8fa40018 	lw	a0,24(sp)
    10b4:	0c000000 	jal	0 <func_809CE6E0>
    10b8:	24a50000 	addiu	a1,a1,0
    10bc:	8fbf0014 	lw	ra,20(sp)
    10c0:	27bd0018 	addiu	sp,sp,24
    10c4:	03e00008 	jr	ra
    10c8:	00000000 	nop

000010cc <func_809CF7AC>:
    10cc:	27bdffe0 	addiu	sp,sp,-32
    10d0:	afb00018 	sw	s0,24(sp)
    10d4:	00808025 	move	s0,a0
    10d8:	afbf001c 	sw	ra,28(sp)
    10dc:	afa50024 	sw	a1,36(sp)
    10e0:	0c000000 	jal	0 <func_809CE6E0>
    10e4:	2484014c 	addiu	a0,a0,332
    10e8:	50400009 	beqzl	v0,1110 <func_809CF7AC+0x44>
    10ec:	86180222 	lh	t8,546(s0)
    10f0:	86020222 	lh	v0,546(s0)
    10f4:	240f0064 	li	t7,100
    10f8:	18400003 	blez	v0,1108 <func_809CF7AC+0x3c>
    10fc:	244effff 	addiu	t6,v0,-1
    1100:	10000002 	b	110c <func_809CF7AC+0x40>
    1104:	a60e0222 	sh	t6,546(s0)
    1108:	a60f0222 	sh	t7,546(s0)
    110c:	86180222 	lh	t8,546(s0)
    1110:	2b010014 	slti	at,t8,20
    1114:	54200005 	bnezl	at,112c <func_809CF7AC+0x60>
    1118:	86090224 	lh	t1,548(s0)
    111c:	86190224 	lh	t9,548(s0)
    1120:	2728ff06 	addiu	t0,t9,-250
    1124:	a6080224 	sh	t0,548(s0)
    1128:	86090224 	lh	t1,548(s0)
    112c:	3c010000 	lui	at,0x0
    1130:	c4280000 	lwc1	$f8,0(at)
    1134:	44892000 	mtc1	t1,$f4
    1138:	00000000 	nop
    113c:	468021a0 	cvt.s.w	$f6,$f4
    1140:	46083302 	mul.s	$f12,$f6,$f8
    1144:	0c000000 	jal	0 <func_809CE6E0>
    1148:	00000000 	nop
    114c:	3c010000 	lui	at,0x0
    1150:	c42a0000 	lwc1	$f10,0(at)
    1154:	3c010000 	lui	at,0x0
    1158:	c4300000 	lwc1	$f16,0(at)
    115c:	860a0224 	lh	t2,548(s0)
    1160:	3c010000 	lui	at,0x0
    1164:	46100482 	mul.s	$f18,$f0,$f16
    1168:	448a3000 	mtc1	t2,$f6
    116c:	00000000 	nop
    1170:	46803220 	cvt.s.w	$f8,$f6
    1174:	46125101 	sub.s	$f4,$f10,$f18
    1178:	e6040050 	swc1	$f4,80(s0)
    117c:	c4300000 	lwc1	$f16,0(at)
    1180:	46104302 	mul.s	$f12,$f8,$f16
    1184:	0c000000 	jal	0 <func_809CE6E0>
    1188:	00000000 	nop
    118c:	3c010000 	lui	at,0x0
    1190:	c42a0000 	lwc1	$f10,0(at)
    1194:	860b0224 	lh	t3,548(s0)
    1198:	3c010000 	lui	at,0x0
    119c:	460a0482 	mul.s	$f18,$f0,$f10
    11a0:	c4240000 	lwc1	$f4,0(at)
    11a4:	448b4000 	mtc1	t3,$f8
    11a8:	3c010000 	lui	at,0x0
    11ac:	46804420 	cvt.s.w	$f16,$f8
    11b0:	46049180 	add.s	$f6,$f18,$f4
    11b4:	e6060054 	swc1	$f6,84(s0)
    11b8:	c42a0000 	lwc1	$f10,0(at)
    11bc:	460a8302 	mul.s	$f12,$f16,$f10
    11c0:	0c000000 	jal	0 <func_809CE6E0>
    11c4:	00000000 	nop
    11c8:	3c010000 	lui	at,0x0
    11cc:	c4320000 	lwc1	$f18,0(at)
    11d0:	3c010000 	lui	at,0x0
    11d4:	c4240000 	lwc1	$f4,0(at)
    11d8:	860c0224 	lh	t4,548(s0)
    11dc:	46040182 	mul.s	$f6,$f0,$f4
    11e0:	46069201 	sub.s	$f8,$f18,$f6
    11e4:	15800005 	bnez	t4,11fc <func_809CF7AC+0x130>
    11e8:	e6080058 	swc1	$f8,88(s0)
    11ec:	0c000000 	jal	0 <func_809CE6E0>
    11f0:	02002025 	move	a0,s0
    11f4:	240d00c8 	li	t5,200
    11f8:	a60d0224 	sh	t5,548(s0)
    11fc:	8fbf001c 	lw	ra,28(sp)
    1200:	8fb00018 	lw	s0,24(sp)
    1204:	27bd0020 	addiu	sp,sp,32
    1208:	03e00008 	jr	ra
    120c:	00000000 	nop

00001210 <func_809CF8F0>:
    1210:	27bdffe8 	addiu	sp,sp,-24
    1214:	afbf0014 	sw	ra,20(sp)
    1218:	00803825 	move	a3,a0
    121c:	3c050600 	lui	a1,0x600
    1220:	24a52250 	addiu	a1,a1,8784
    1224:	afa70018 	sw	a3,24(sp)
    1228:	2484014c 	addiu	a0,a0,332
    122c:	0c000000 	jal	0 <func_809CE6E0>
    1230:	3c06bf80 	lui	a2,0xbf80
    1234:	8fa40018 	lw	a0,24(sp)
    1238:	3c0140e0 	lui	at,0x40e0
    123c:	44812000 	mtc1	at,$f4
    1240:	8482008a 	lh	v0,138(a0)
    1244:	3c014130 	lui	at,0x4130
    1248:	44813000 	mtc1	at,$f6
    124c:	240e0004 	li	t6,4
    1250:	240f03e8 	li	t7,1000
    1254:	2405386c 	li	a1,14444
    1258:	a08e0220 	sb	t6,544(a0)
    125c:	a48f0222 	sh	t7,546(a0)
    1260:	e4840068 	swc1	$f4,104(a0)
    1264:	a48200b6 	sh	v0,182(a0)
    1268:	a4820032 	sh	v0,50(a0)
    126c:	0c000000 	jal	0 <func_809CE6E0>
    1270:	e4860060 	swc1	$f6,96(a0)
    1274:	8fa40018 	lw	a0,24(sp)
    1278:	3c010100 	lui	at,0x100
    127c:	3c050000 	lui	a1,0x0
    1280:	8c980004 	lw	t8,4(a0)
    1284:	24a50000 	addiu	a1,a1,0
    1288:	0301c825 	or	t9,t8,at
    128c:	0c000000 	jal	0 <func_809CE6E0>
    1290:	ac990004 	sw	t9,4(a0)
    1294:	8fbf0014 	lw	ra,20(sp)
    1298:	27bd0018 	addiu	sp,sp,24
    129c:	03e00008 	jr	ra
    12a0:	00000000 	nop

000012a4 <func_809CF984>:
    12a4:	27bdffc0 	addiu	sp,sp,-64
    12a8:	44800000 	mtc1	zero,$f0
    12ac:	afbf0034 	sw	ra,52(sp)
    12b0:	afb00030 	sw	s0,48(sp)
    12b4:	afa50044 	sw	a1,68(sp)
    12b8:	8caf1c44 	lw	t7,7236(a1)
    12bc:	00808025 	move	s0,a0
    12c0:	44050000 	mfc1	a1,$f0
    12c4:	24840068 	addiu	a0,a0,104
    12c8:	3c063f80 	lui	a2,0x3f80
    12cc:	3c073f00 	lui	a3,0x3f00
    12d0:	e7a00010 	swc1	$f0,16(sp)
    12d4:	0c000000 	jal	0 <func_809CE6E0>
    12d8:	afaf003c 	sw	t7,60(sp)
    12dc:	86180222 	lh	t8,546(s0)
    12e0:	3c010000 	lui	at,0x0
    12e4:	271900fa 	addiu	t9,t8,250
    12e8:	a6190222 	sh	t9,546(s0)
    12ec:	86080222 	lh	t0,546(s0)
    12f0:	c4280000 	lwc1	$f8,0(at)
    12f4:	44882000 	mtc1	t0,$f4
    12f8:	00000000 	nop
    12fc:	468021a0 	cvt.s.w	$f6,$f4
    1300:	46083302 	mul.s	$f12,$f6,$f8
    1304:	0c000000 	jal	0 <func_809CE6E0>
    1308:	00000000 	nop
    130c:	3c010000 	lui	at,0x0
    1310:	c42a0000 	lwc1	$f10,0(at)
    1314:	3c010000 	lui	at,0x0
    1318:	c4300000 	lwc1	$f16,0(at)
    131c:	86090222 	lh	t1,546(s0)
    1320:	3c010000 	lui	at,0x0
    1324:	46100482 	mul.s	$f18,$f0,$f16
    1328:	44893000 	mtc1	t1,$f6
    132c:	00000000 	nop
    1330:	46803220 	cvt.s.w	$f8,$f6
    1334:	46125101 	sub.s	$f4,$f10,$f18
    1338:	e6040050 	swc1	$f4,80(s0)
    133c:	c4300000 	lwc1	$f16,0(at)
    1340:	46104302 	mul.s	$f12,$f8,$f16
    1344:	0c000000 	jal	0 <func_809CE6E0>
    1348:	00000000 	nop
    134c:	3c010000 	lui	at,0x0
    1350:	c42a0000 	lwc1	$f10,0(at)
    1354:	860a0222 	lh	t2,546(s0)
    1358:	3c010000 	lui	at,0x0
    135c:	460a0482 	mul.s	$f18,$f0,$f10
    1360:	c4240000 	lwc1	$f4,0(at)
    1364:	448a4000 	mtc1	t2,$f8
    1368:	3c010000 	lui	at,0x0
    136c:	46804420 	cvt.s.w	$f16,$f8
    1370:	46049180 	add.s	$f6,$f18,$f4
    1374:	e6060054 	swc1	$f6,84(s0)
    1378:	c42a0000 	lwc1	$f10,0(at)
    137c:	460a8302 	mul.s	$f12,$f16,$f10
    1380:	0c000000 	jal	0 <func_809CE6E0>
    1384:	00000000 	nop
    1388:	3c010000 	lui	at,0x0
    138c:	c4320000 	lwc1	$f18,0(at)
    1390:	3c010000 	lui	at,0x0
    1394:	c4240000 	lwc1	$f4,0(at)
    1398:	920202a4 	lbu	v0,676(s0)
    139c:	2401fffd 	li	at,-3
    13a0:	46040182 	mul.s	$f6,$f0,$f4
    13a4:	304b0002 	andi	t3,v0,0x2
    13a8:	00416024 	and	t4,v0,at
    13ac:	3c01c0c0 	lui	at,0xc0c0
    13b0:	46069201 	sub.s	$f8,$f18,$f6
    13b4:	1160000e 	beqz	t3,13f0 <func_809CF984+0x14c>
    13b8:	e6080058 	swc1	$f8,88(s0)
    13bc:	8fa4003c 	lw	a0,60(sp)
    13c0:	8e0e0298 	lw	t6,664(s0)
    13c4:	44818000 	mtc1	at,$f16
    13c8:	860d008a 	lh	t5,138(s0)
    13cc:	a20c02a4 	sb	t4,676(s0)
    13d0:	e6100068 	swc1	$f16,104(s0)
    13d4:	148e0006 	bne	a0,t6,13f0 <func_809CF984+0x14c>
    13d8:	a60d0032 	sh	t5,50(s0)
    13dc:	31980004 	andi	t8,t4,0x4
    13e0:	17000003 	bnez	t8,13f0 <func_809CF984+0x14c>
    13e4:	00000000 	nop
    13e8:	0c000000 	jal	0 <func_809CE6E0>
    13ec:	2405083e 	li	a1,2110
    13f0:	0c000000 	jal	0 <func_809CE6E0>
    13f4:	2604014c 	addiu	a0,s0,332
    13f8:	96190088 	lhu	t9,136(s0)
    13fc:	8fa40044 	lw	a0,68(sp)
    1400:	33280003 	andi	t0,t9,0x3
    1404:	1100002b 	beqz	t0,14b4 <func_809CF984+0x210>
    1408:	248407c0 	addiu	a0,a0,1984
    140c:	8e050078 	lw	a1,120(s0)
    1410:	0c000000 	jal	0 <func_809CE6E0>
    1414:	9206007d 	lbu	a2,125(s0)
    1418:	24010002 	li	at,2
    141c:	10410005 	beq	v0,at,1434 <func_809CF984+0x190>
    1420:	24010003 	li	at,3
    1424:	10410003 	beq	v0,at,1434 <func_809CF984+0x190>
    1428:	24010009 	li	at,9
    142c:	14410005 	bne	v0,at,1444 <func_809CF984+0x1a0>
    1430:	8fa40044 	lw	a0,68(sp)
    1434:	0c000000 	jal	0 <func_809CE6E0>
    1438:	02002025 	move	a0,s0
    143c:	1000001e 	b	14b8 <func_809CF984+0x214>
    1440:	8fbf0034 	lw	ra,52(sp)
    1444:	3c014080 	lui	at,0x4080
    1448:	44815000 	mtc1	at,$f10
    144c:	2409000b 	li	t1,11
    1450:	afa90010 	sw	t1,16(sp)
    1454:	02002825 	move	a1,s0
    1458:	26060024 	addiu	a2,s0,36
    145c:	3c0741f0 	lui	a3,0x41f0
    1460:	afa00018 	sw	zero,24(sp)
    1464:	afa0001c 	sw	zero,28(sp)
    1468:	afa00020 	sw	zero,32(sp)
    146c:	0c000000 	jal	0 <func_809CE6E0>
    1470:	e7aa0014 	swc1	$f10,20(sp)
    1474:	8e0b0004 	lw	t3,4(s0)
    1478:	3c01feff 	lui	at,0xfeff
    147c:	44802000 	mtc1	zero,$f4
    1480:	3421ffff 	ori	at,at,0xffff
    1484:	240a0bb8 	li	t2,3000
    1488:	01616024 	and	t4,t3,at
    148c:	a60a0222 	sh	t2,546(s0)
    1490:	ae0c0004 	sw	t4,4(s0)
    1494:	02002025 	move	a0,s0
    1498:	2405387b 	li	a1,14459
    149c:	0c000000 	jal	0 <func_809CE6E0>
    14a0:	e6040068 	swc1	$f4,104(s0)
    14a4:	3c050000 	lui	a1,0x0
    14a8:	24a50000 	addiu	a1,a1,0
    14ac:	0c000000 	jal	0 <func_809CE6E0>
    14b0:	02002025 	move	a0,s0
    14b4:	8fbf0034 	lw	ra,52(sp)
    14b8:	8fb00030 	lw	s0,48(sp)
    14bc:	27bd0040 	addiu	sp,sp,64
    14c0:	03e00008 	jr	ra
    14c4:	00000000 	nop

000014c8 <func_809CFBA8>:
    14c8:	27bdffe0 	addiu	sp,sp,-32
    14cc:	afb00018 	sw	s0,24(sp)
    14d0:	00808025 	move	s0,a0
    14d4:	afbf001c 	sw	ra,28(sp)
    14d8:	3c050600 	lui	a1,0x600
    14dc:	24a52250 	addiu	a1,a1,8784
    14e0:	2484014c 	addiu	a0,a0,332
    14e4:	0c000000 	jal	0 <func_809CE6E0>
    14e8:	3c06bf80 	lui	a2,0xbf80
    14ec:	44800000 	mtc1	zero,$f0
    14f0:	3c014130 	lui	at,0x4130
    14f4:	44812000 	mtc1	at,$f4
    14f8:	240e0005 	li	t6,5
    14fc:	240f03e8 	li	t7,1000
    1500:	a20e0220 	sb	t6,544(s0)
    1504:	a60f0222 	sh	t7,546(s0)
    1508:	e6000260 	swc1	$f0,608(s0)
    150c:	e6000068 	swc1	$f0,104(s0)
    1510:	0c000000 	jal	0 <func_809CE6E0>
    1514:	e6040060 	swc1	$f4,96(s0)
    1518:	3c013e80 	lui	at,0x3e80
    151c:	44813000 	mtc1	at,$f6
    1520:	3c013f80 	lui	at,0x3f80
    1524:	44815000 	mtc1	at,$f10
    1528:	46060202 	mul.s	$f8,$f0,$f6
    152c:	24180bb8 	li	t8,3000
    1530:	a6180224 	sh	t8,548(s0)
    1534:	02002025 	move	a0,s0
    1538:	24053976 	li	a1,14710
    153c:	460a4400 	add.s	$f16,$f8,$f10
    1540:	0c000000 	jal	0 <func_809CE6E0>
    1544:	e610025c 	swc1	$f16,604(s0)
    1548:	3c050000 	lui	a1,0x0
    154c:	24a50000 	addiu	a1,a1,0
    1550:	0c000000 	jal	0 <func_809CE6E0>
    1554:	02002025 	move	a0,s0
    1558:	8fbf001c 	lw	ra,28(sp)
    155c:	8fb00018 	lw	s0,24(sp)
    1560:	27bd0020 	addiu	sp,sp,32
    1564:	03e00008 	jr	ra
    1568:	00000000 	nop

0000156c <func_809CFC4C>:
    156c:	27bdffc8 	addiu	sp,sp,-56
    1570:	afb00030 	sw	s0,48(sp)
    1574:	00808025 	move	s0,a0
    1578:	afbf0034 	sw	ra,52(sp)
    157c:	afa5003c 	sw	a1,60(sp)
    1580:	24057fff 	li	a1,32767
    1584:	248400b8 	addiu	a0,a0,184
    1588:	afa00010 	sw	zero,16(sp)
    158c:	24060001 	li	a2,1
    1590:	0c000000 	jal	0 <func_809CE6E0>
    1594:	24070fa0 	li	a3,4000
    1598:	44800000 	mtc1	zero,$f0
    159c:	3c073d4c 	lui	a3,0x3d4c
    15a0:	34e7cccd 	ori	a3,a3,0xcccd
    15a4:	44050000 	mfc1	a1,$f0
    15a8:	26040248 	addiu	a0,s0,584
    15ac:	3c063f80 	lui	a2,0x3f80
    15b0:	0c000000 	jal	0 <func_809CE6E0>
    15b4:	e7a00010 	swc1	$f0,16(sp)
    15b8:	0c000000 	jal	0 <func_809CE6E0>
    15bc:	2604014c 	addiu	a0,s0,332
    15c0:	960e0088 	lhu	t6,136(s0)
    15c4:	8fb8003c 	lw	t8,60(sp)
    15c8:	3c190001 	lui	t9,0x1
    15cc:	31cf0003 	andi	t7,t6,0x3
    15d0:	11e0006d 	beqz	t7,1788 <func_809CFC4C+0x21c>
    15d4:	0338c821 	addu	t9,t9,t8
    15d8:	8f391de4 	lw	t9,7652(t9)
    15dc:	3328007f 	andi	t0,t9,0x7f
    15e0:	5500000b 	bnezl	t0,1610 <func_809CFC4C+0xa4>
    15e4:	c6100258 	lwc1	$f16,600(s0)
    15e8:	0c000000 	jal	0 <func_809CE6E0>
    15ec:	00000000 	nop
    15f0:	3c013e80 	lui	at,0x3e80
    15f4:	44812000 	mtc1	at,$f4
    15f8:	3c010000 	lui	at,0x0
    15fc:	c4280000 	lwc1	$f8,0(at)
    1600:	46040182 	mul.s	$f6,$f0,$f4
    1604:	46083280 	add.s	$f10,$f6,$f8
    1608:	e60a025c 	swc1	$f10,604(s0)
    160c:	c6100258 	lwc1	$f16,600(s0)
    1610:	c612025c 	lwc1	$f18,604(s0)
    1614:	44803000 	mtc1	zero,$f6
    1618:	24090004 	li	t1,4
    161c:	46128100 	add.s	$f4,$f16,$f18
    1620:	a2090221 	sb	t1,545(s0)
    1624:	3c053d99 	lui	a1,0x3d99
    1628:	3c073ba3 	lui	a3,0x3ba3
    162c:	e6040258 	swc1	$f4,600(s0)
    1630:	34e7d70a 	ori	a3,a3,0xd70a
    1634:	34a5999a 	ori	a1,a1,0x999a
    1638:	26040260 	addiu	a0,s0,608
    163c:	3c063f80 	lui	a2,0x3f80
    1640:	0c000000 	jal	0 <func_809CE6E0>
    1644:	e7a60010 	swc1	$f6,16(sp)
    1648:	960a0088 	lhu	t2,136(s0)
    164c:	8fa4003c 	lw	a0,60(sp)
    1650:	02002825 	move	a1,s0
    1654:	314b0002 	andi	t3,t2,0x2
    1658:	1160000e 	beqz	t3,1694 <func_809CFC4C+0x128>
    165c:	26060024 	addiu	a2,s0,36
    1660:	3c014080 	lui	at,0x4080
    1664:	44814000 	mtc1	at,$f8
    1668:	240c000b 	li	t4,11
    166c:	afac0010 	sw	t4,16(sp)
    1670:	3c0741f0 	lui	a3,0x41f0
    1674:	afa00018 	sw	zero,24(sp)
    1678:	afa0001c 	sw	zero,28(sp)
    167c:	afa00020 	sw	zero,32(sp)
    1680:	0c000000 	jal	0 <func_809CE6E0>
    1684:	e7a80014 	swc1	$f8,20(sp)
    1688:	02002025 	move	a0,s0
    168c:	0c000000 	jal	0 <func_809CE6E0>
    1690:	2405387b 	li	a1,14459
    1694:	86020224 	lh	v0,548(s0)
    1698:	10400031 	beqz	v0,1760 <func_809CFC4C+0x1f4>
    169c:	244dff06 	addiu	t5,v0,-250
    16a0:	a60d0224 	sh	t5,548(s0)
    16a4:	860e0224 	lh	t6,548(s0)
    16a8:	3c010000 	lui	at,0x0
    16ac:	c4320000 	lwc1	$f18,0(at)
    16b0:	448e5000 	mtc1	t6,$f10
    16b4:	00000000 	nop
    16b8:	46805420 	cvt.s.w	$f16,$f10
    16bc:	46128302 	mul.s	$f12,$f16,$f18
    16c0:	0c000000 	jal	0 <func_809CE6E0>
    16c4:	00000000 	nop
    16c8:	3c010000 	lui	at,0x0
    16cc:	c4240000 	lwc1	$f4,0(at)
    16d0:	860f0224 	lh	t7,548(s0)
    16d4:	3c010000 	lui	at,0x0
    16d8:	46040182 	mul.s	$f6,$f0,$f4
    16dc:	c4280000 	lwc1	$f8,0(at)
    16e0:	448f8000 	mtc1	t7,$f16
    16e4:	3c010000 	lui	at,0x0
    16e8:	468084a0 	cvt.s.w	$f18,$f16
    16ec:	46083280 	add.s	$f10,$f6,$f8
    16f0:	e60a0050 	swc1	$f10,80(s0)
    16f4:	c4240000 	lwc1	$f4,0(at)
    16f8:	46049302 	mul.s	$f12,$f18,$f4
    16fc:	0c000000 	jal	0 <func_809CE6E0>
    1700:	00000000 	nop
    1704:	3c010000 	lui	at,0x0
    1708:	c4260000 	lwc1	$f6,0(at)
    170c:	3c010000 	lui	at,0x0
    1710:	c4280000 	lwc1	$f8,0(at)
    1714:	86180224 	lh	t8,548(s0)
    1718:	3c010000 	lui	at,0x0
    171c:	46080282 	mul.s	$f10,$f0,$f8
    1720:	44989000 	mtc1	t8,$f18
    1724:	00000000 	nop
    1728:	46809120 	cvt.s.w	$f4,$f18
    172c:	460a3401 	sub.s	$f16,$f6,$f10
    1730:	e6100054 	swc1	$f16,84(s0)
    1734:	c4280000 	lwc1	$f8,0(at)
    1738:	46082302 	mul.s	$f12,$f4,$f8
    173c:	0c000000 	jal	0 <func_809CE6E0>
    1740:	00000000 	nop
    1744:	3c010000 	lui	at,0x0
    1748:	c4260000 	lwc1	$f6,0(at)
    174c:	3c010000 	lui	at,0x0
    1750:	c4300000 	lwc1	$f16,0(at)
    1754:	46060282 	mul.s	$f10,$f0,$f6
    1758:	46105480 	add.s	$f18,$f10,$f16
    175c:	e6120058 	swc1	$f18,88(s0)
    1760:	86190222 	lh	t9,546(s0)
    1764:	2728ffff 	addiu	t0,t9,-1
    1768:	a6080222 	sh	t0,546(s0)
    176c:	86090222 	lh	t1,546(s0)
    1770:	5520002b 	bnezl	t1,1820 <func_809CFC4C+0x2b4>
    1774:	8fbf0034 	lw	ra,52(sp)
    1778:	0c000000 	jal	0 <func_809CE6E0>
    177c:	02002025 	move	a0,s0
    1780:	10000027 	b	1820 <func_809CFC4C+0x2b4>
    1784:	8fbf0034 	lw	ra,52(sp)
    1788:	920a022c 	lbu	t2,556(s0)
    178c:	920c022d 	lbu	t4,557(s0)
    1790:	240f00c8 	li	t7,200
    1794:	254bfff8 	addiu	t3,t2,-8
    1798:	316e00ff 	andi	t6,t3,0xff
    179c:	29c100c8 	slti	at,t6,200
    17a0:	258d0020 	addiu	t5,t4,32
    17a4:	a20b022c 	sb	t3,556(s0)
    17a8:	10200002 	beqz	at,17b4 <func_809CFC4C+0x248>
    17ac:	a20d022d 	sb	t5,557(s0)
    17b0:	a20f022c 	sb	t7,556(s0)
    17b4:	9218022d 	lbu	t8,557(s0)
    17b8:	241900c8 	li	t9,200
    17bc:	240800ff 	li	t0,255
    17c0:	2b0100c9 	slti	at,t8,201
    17c4:	54200003 	bnezl	at,17d4 <func_809CFC4C+0x268>
    17c8:	9202022e 	lbu	v0,558(s0)
    17cc:	a219022d 	sb	t9,557(s0)
    17d0:	9202022e 	lbu	v0,558(s0)
    17d4:	284100ec 	slti	at,v0,236
    17d8:	14200003 	bnez	at,17e8 <func_809CFC4C+0x27c>
    17dc:	24490028 	addiu	t1,v0,40
    17e0:	10000002 	b	17ec <func_809CFC4C+0x280>
    17e4:	a208022e 	sb	t0,558(s0)
    17e8:	a209022e 	sb	t1,558(s0)
    17ec:	3c01447a 	lui	at,0x447a
    17f0:	44812000 	mtc1	at,$f4
    17f4:	c60000bc 	lwc1	$f0,188(s0)
    17f8:	3c014348 	lui	at,0x4348
    17fc:	4604003c 	c.lt.s	$f0,$f4
    1800:	00000000 	nop
    1804:	45020006 	bc1fl	1820 <func_809CFC4C+0x2b4>
    1808:	8fbf0034 	lw	ra,52(sp)
    180c:	44814000 	mtc1	at,$f8
    1810:	00000000 	nop
    1814:	46080180 	add.s	$f6,$f0,$f8
    1818:	e60600bc 	swc1	$f6,188(s0)
    181c:	8fbf0034 	lw	ra,52(sp)
    1820:	8fb00030 	lw	s0,48(sp)
    1824:	27bd0038 	addiu	sp,sp,56
    1828:	03e00008 	jr	ra
    182c:	00000000 	nop

00001830 <func_809CFF10>:
    1830:	27bdffe8 	addiu	sp,sp,-24
    1834:	afbf0014 	sw	ra,20(sp)
    1838:	00803825 	move	a3,a0
    183c:	3c050600 	lui	a1,0x600
    1840:	24a52250 	addiu	a1,a1,8784
    1844:	afa70018 	sw	a3,24(sp)
    1848:	2484014c 	addiu	a0,a0,332
    184c:	0c000000 	jal	0 <func_809CE6E0>
    1850:	3c06bf80 	lui	a2,0xbf80
    1854:	8fa40018 	lw	a0,24(sp)
    1858:	3c014130 	lui	at,0x4130
    185c:	44802000 	mtc1	zero,$f4
    1860:	44813000 	mtc1	at,$f6
    1864:	240e0006 	li	t6,6
    1868:	240f03e8 	li	t7,1000
    186c:	24180003 	li	t8,3
    1870:	24053976 	li	a1,14710
    1874:	a08e0220 	sb	t6,544(a0)
    1878:	a48f0222 	sh	t7,546(a0)
    187c:	a0980221 	sb	t8,545(a0)
    1880:	e4840068 	swc1	$f4,104(a0)
    1884:	0c000000 	jal	0 <func_809CE6E0>
    1888:	e4860060 	swc1	$f6,96(a0)
    188c:	8fa40018 	lw	a0,24(sp)
    1890:	3c050000 	lui	a1,0x0
    1894:	24a50000 	addiu	a1,a1,0
    1898:	94990088 	lhu	t9,136(a0)
    189c:	3328fffe 	andi	t0,t9,0xfffe
    18a0:	0c000000 	jal	0 <func_809CE6E0>
    18a4:	a4880088 	sh	t0,136(a0)
    18a8:	8fbf0014 	lw	ra,20(sp)
    18ac:	27bd0018 	addiu	sp,sp,24
    18b0:	03e00008 	jr	ra
    18b4:	00000000 	nop

000018b8 <func_809CFF98>:
    18b8:	27bdffc8 	addiu	sp,sp,-56
    18bc:	afb00030 	sw	s0,48(sp)
    18c0:	00808025 	move	s0,a0
    18c4:	afbf0034 	sw	ra,52(sp)
    18c8:	afa5003c 	sw	a1,60(sp)
    18cc:	00002825 	move	a1,zero
    18d0:	248400b8 	addiu	a0,a0,184
    18d4:	afa00010 	sw	zero,16(sp)
    18d8:	24060001 	li	a2,1
    18dc:	0c000000 	jal	0 <func_809CE6E0>
    18e0:	24070fa0 	li	a3,4000
    18e4:	44802000 	mtc1	zero,$f4
    18e8:	3c053f19 	lui	a1,0x3f19
    18ec:	3c073d4c 	lui	a3,0x3d4c
    18f0:	34e7cccd 	ori	a3,a3,0xcccd
    18f4:	34a5999a 	ori	a1,a1,0x999a
    18f8:	26040248 	addiu	a0,s0,584
    18fc:	3c063f80 	lui	a2,0x3f80
    1900:	0c000000 	jal	0 <func_809CE6E0>
    1904:	e7a40010 	swc1	$f4,16(sp)
    1908:	0c000000 	jal	0 <func_809CE6E0>
    190c:	2604014c 	addiu	a0,s0,332
    1910:	960e0088 	lhu	t6,136(s0)
    1914:	8fa4003c 	lw	a0,60(sp)
    1918:	02002825 	move	a1,s0
    191c:	31cf0003 	andi	t7,t6,0x3
    1920:	11e00016 	beqz	t7,197c <func_809CFF98+0xc4>
    1924:	26060024 	addiu	a2,s0,36
    1928:	3c014080 	lui	at,0x4080
    192c:	44813000 	mtc1	at,$f6
    1930:	2418000b 	li	t8,11
    1934:	afb80010 	sw	t8,16(sp)
    1938:	3c0741f0 	lui	a3,0x41f0
    193c:	afa00018 	sw	zero,24(sp)
    1940:	afa0001c 	sw	zero,28(sp)
    1944:	afa00020 	sw	zero,32(sp)
    1948:	0c000000 	jal	0 <func_809CE6E0>
    194c:	e7a60014 	swc1	$f6,20(sp)
    1950:	44804000 	mtc1	zero,$f8
    1954:	24190bb8 	li	t9,3000
    1958:	a6190222 	sh	t9,546(s0)
    195c:	02002025 	move	a0,s0
    1960:	2405387b 	li	a1,14459
    1964:	0c000000 	jal	0 <func_809CE6E0>
    1968:	e6080250 	swc1	$f8,592(s0)
    196c:	3c050000 	lui	a1,0x0
    1970:	24a50000 	addiu	a1,a1,0
    1974:	0c000000 	jal	0 <func_809CE6E0>
    1978:	02002025 	move	a0,s0
    197c:	9202022c 	lbu	v0,556(s0)
    1980:	44805000 	mtc1	zero,$f10
    1984:	240900ff 	li	t1,255
    1988:	284100f7 	slti	at,v0,247
    198c:	10200003 	beqz	at,199c <func_809CFF98+0xe4>
    1990:	24480008 	addiu	t0,v0,8
    1994:	10000002 	b	19a0 <func_809CFF98+0xe8>
    1998:	a208022c 	sb	t0,556(s0)
    199c:	a209022c 	sb	t1,556(s0)
    19a0:	9202022d 	lbu	v0,557(s0)
    19a4:	28410020 	slti	at,v0,32
    19a8:	10200003 	beqz	at,19b8 <func_809CFF98+0x100>
    19ac:	244affe0 	addiu	t2,v0,-32
    19b0:	10000002 	b	19bc <func_809CFF98+0x104>
    19b4:	a200022d 	sb	zero,557(s0)
    19b8:	a20a022d 	sb	t2,557(s0)
    19bc:	9202022e 	lbu	v0,558(s0)
    19c0:	28410028 	slti	at,v0,40
    19c4:	10200003 	beqz	at,19d4 <func_809CFF98+0x11c>
    19c8:	244bffd8 	addiu	t3,v0,-40
    19cc:	10000002 	b	19d8 <func_809CFF98+0x120>
    19d0:	a200022e 	sb	zero,558(s0)
    19d4:	a20b022e 	sb	t3,558(s0)
    19d8:	c60000bc 	lwc1	$f0,188(s0)
    19dc:	3c014348 	lui	at,0x4348
    19e0:	4600503c 	c.lt.s	$f10,$f0
    19e4:	00000000 	nop
    19e8:	45020006 	bc1fl	1a04 <func_809CFF98+0x14c>
    19ec:	8fbf0034 	lw	ra,52(sp)
    19f0:	44818000 	mtc1	at,$f16
    19f4:	00000000 	nop
    19f8:	46100481 	sub.s	$f18,$f0,$f16
    19fc:	e61200bc 	swc1	$f18,188(s0)
    1a00:	8fbf0034 	lw	ra,52(sp)
    1a04:	8fb00030 	lw	s0,48(sp)
    1a08:	27bd0038 	addiu	sp,sp,56
    1a0c:	03e00008 	jr	ra
    1a10:	00000000 	nop

00001a14 <func_809D00F4>:
    1a14:	27bdffe8 	addiu	sp,sp,-24
    1a18:	afbf0014 	sw	ra,20(sp)
    1a1c:	8c8f0004 	lw	t7,4(a0)
    1a20:	44802000 	mtc1	zero,$f4
    1a24:	2401fffe 	li	at,-2
    1a28:	240e0028 	li	t6,40
    1a2c:	01e1c024 	and	t8,t7,at
    1a30:	a0800220 	sb	zero,544(a0)
    1a34:	a48e0222 	sh	t6,546(a0)
    1a38:	ac980004 	sw	t8,4(a0)
    1a3c:	e4840068 	swc1	$f4,104(a0)
    1a40:	afa40018 	sw	a0,24(sp)
    1a44:	0c000000 	jal	0 <func_809CE6E0>
    1a48:	24053978 	li	a1,14712
    1a4c:	3c050000 	lui	a1,0x0
    1a50:	8fa40018 	lw	a0,24(sp)
    1a54:	0c000000 	jal	0 <func_809CE6E0>
    1a58:	24a50000 	addiu	a1,a1,0
    1a5c:	8fbf0014 	lw	ra,20(sp)
    1a60:	27bd0018 	addiu	sp,sp,24
    1a64:	03e00008 	jr	ra
    1a68:	00000000 	nop

00001a6c <func_809D014C>:
    1a6c:	27bdffe8 	addiu	sp,sp,-24
    1a70:	afbf0014 	sw	ra,20(sp)
    1a74:	afa5001c 	sw	a1,28(sp)
    1a78:	908e0230 	lbu	t6,560(a0)
    1a7c:	3c010000 	lui	at,0x0
    1a80:	51c0000c 	beqzl	t6,1ab4 <func_809D014C+0x48>
    1a84:	84880222 	lh	t0,546(a0)
    1a88:	c4200000 	lwc1	$f0,0(at)
    1a8c:	c4840050 	lwc1	$f4,80(a0)
    1a90:	c4880054 	lwc1	$f8,84(a0)
    1a94:	c4900058 	lwc1	$f16,88(a0)
    1a98:	46002180 	add.s	$f6,$f4,$f0
    1a9c:	46004281 	sub.s	$f10,$f8,$f0
    1aa0:	e4860050 	swc1	$f6,80(a0)
    1aa4:	46008480 	add.s	$f18,$f16,$f0
    1aa8:	e48a0054 	swc1	$f10,84(a0)
    1aac:	e4920058 	swc1	$f18,88(a0)
    1ab0:	84880222 	lh	t0,546(a0)
    1ab4:	908f022f 	lbu	t7,559(a0)
    1ab8:	2509ffff 	addiu	t1,t0,-1
    1abc:	a4890222 	sh	t1,546(a0)
    1ac0:	848a0222 	lh	t2,546(a0)
    1ac4:	25f9fffa 	addiu	t9,t7,-6
    1ac8:	a099022f 	sb	t9,559(a0)
    1acc:	1d400003 	bgtz	t2,1adc <func_809D014C+0x70>
    1ad0:	a09900c8 	sb	t9,200(a0)
    1ad4:	0c000000 	jal	0 <func_809CE6E0>
    1ad8:	00000000 	nop
    1adc:	8fbf0014 	lw	ra,20(sp)
    1ae0:	27bd0018 	addiu	sp,sp,24
    1ae4:	03e00008 	jr	ra
    1ae8:	00000000 	nop

00001aec <func_809D01CC>:
    1aec:	44802000 	mtc1	zero,$f4
    1af0:	27bdffe8 	addiu	sp,sp,-24
    1af4:	afbf0014 	sw	ra,20(sp)
    1af8:	240e0001 	li	t6,1
    1afc:	a08e0220 	sb	t6,544(a0)
    1b00:	e4840068 	swc1	$f4,104(a0)
    1b04:	0c000000 	jal	0 <func_809CE6E0>
    1b08:	afa40018 	sw	a0,24(sp)
    1b0c:	3c013e80 	lui	at,0x3e80
    1b10:	44813000 	mtc1	at,$f6
    1b14:	3c013f80 	lui	at,0x3f80
    1b18:	44815000 	mtc1	at,$f10
    1b1c:	46060202 	mul.s	$f8,$f0,$f6
    1b20:	8fa40018 	lw	a0,24(sp)
    1b24:	44809000 	mtc1	zero,$f18
    1b28:	2401000e 	li	at,14
    1b2c:	908f0231 	lbu	t7,561(a0)
    1b30:	24180050 	li	t8,80
    1b34:	240a0050 	li	t2,80
    1b38:	460a4400 	add.s	$f16,$f8,$f10
    1b3c:	3c050000 	lui	a1,0x0
    1b40:	e4920260 	swc1	$f18,608(a0)
    1b44:	15e10002 	bne	t7,at,1b50 <func_809D01CC+0x64>
    1b48:	e490025c 	swc1	$f16,604(a0)
    1b4c:	a098023b 	sb	t8,571(a0)
    1b50:	94990112 	lhu	t9,274(a0)
    1b54:	24090019 	li	t1,25
    1b58:	33284000 	andi	t0,t9,0x4000
    1b5c:	51000004 	beqzl	t0,1b70 <func_809D01CC+0x84>
    1b60:	a48a0222 	sh	t2,546(a0)
    1b64:	10000002 	b	1b70 <func_809D01CC+0x84>
    1b68:	a4890222 	sh	t1,546(a0)
    1b6c:	a48a0222 	sh	t2,546(a0)
    1b70:	0c000000 	jal	0 <func_809CE6E0>
    1b74:	24a50000 	addiu	a1,a1,0
    1b78:	8fbf0014 	lw	ra,20(sp)
    1b7c:	27bd0018 	addiu	sp,sp,24
    1b80:	03e00008 	jr	ra
    1b84:	00000000 	nop

00001b88 <func_809D0268>:
    1b88:	27bdffd8 	addiu	sp,sp,-40
    1b8c:	afbf0024 	sw	ra,36(sp)
    1b90:	afb00020 	sw	s0,32(sp)
    1b94:	908e022c 	lbu	t6,556(a0)
    1b98:	9098022d 	lbu	t8,557(a0)
    1b9c:	9088022e 	lbu	t0,558(a0)
    1ba0:	25cfffff 	addiu	t7,t6,-1
    1ba4:	31ea00ff 	andi	t2,t7,0xff
    1ba8:	294100c8 	slti	at,t2,200
    1bac:	27190004 	addiu	t9,t8,4
    1bb0:	25090005 	addiu	t1,t0,5
    1bb4:	00808025 	move	s0,a0
    1bb8:	a08f022c 	sb	t7,556(a0)
    1bbc:	a099022d 	sb	t9,557(a0)
    1bc0:	10200003 	beqz	at,1bd0 <func_809D0268+0x48>
    1bc4:	a089022e 	sb	t1,558(a0)
    1bc8:	240b00c8 	li	t3,200
    1bcc:	a08b022c 	sb	t3,556(a0)
    1bd0:	920c022d 	lbu	t4,557(s0)
    1bd4:	240d00c8 	li	t5,200
    1bd8:	240f00e6 	li	t7,230
    1bdc:	298100c9 	slti	at,t4,201
    1be0:	14200002 	bnez	at,1bec <func_809D0268+0x64>
    1be4:	3c080001 	lui	t0,0x1
    1be8:	a20d022d 	sb	t5,557(s0)
    1bec:	920e022e 	lbu	t6,558(s0)
    1bf0:	01054021 	addu	t0,t0,a1
    1bf4:	29c100e7 	slti	at,t6,231
    1bf8:	54200003 	bnezl	at,1c08 <func_809D0268+0x80>
    1bfc:	96180112 	lhu	t8,274(s0)
    1c00:	a20f022e 	sb	t7,558(s0)
    1c04:	96180112 	lhu	t8,274(s0)
    1c08:	33194000 	andi	t9,t8,0x4000
    1c0c:	5320001c 	beqzl	t9,1c80 <func_809D0268+0xf8>
    1c10:	860a0222 	lh	t2,546(s0)
    1c14:	8d081de4 	lw	t0,7652(t0)
    1c18:	3109007f 	andi	t1,t0,0x7f
    1c1c:	5520000b 	bnezl	t1,1c4c <func_809D0268+0xc4>
    1c20:	c6100258 	lwc1	$f16,600(s0)
    1c24:	0c000000 	jal	0 <func_809CE6E0>
    1c28:	00000000 	nop
    1c2c:	3c013e80 	lui	at,0x3e80
    1c30:	44812000 	mtc1	at,$f4
    1c34:	3c013f00 	lui	at,0x3f00
    1c38:	44814000 	mtc1	at,$f8
    1c3c:	46040182 	mul.s	$f6,$f0,$f4
    1c40:	46083280 	add.s	$f10,$f6,$f8
    1c44:	e60a025c 	swc1	$f10,604(s0)
    1c48:	c6100258 	lwc1	$f16,600(s0)
    1c4c:	c612025c 	lwc1	$f18,604(s0)
    1c50:	44803000 	mtc1	zero,$f6
    1c54:	3c053d99 	lui	a1,0x3d99
    1c58:	46128100 	add.s	$f4,$f16,$f18
    1c5c:	3c073ba3 	lui	a3,0x3ba3
    1c60:	34e7d70a 	ori	a3,a3,0xd70a
    1c64:	34a5999a 	ori	a1,a1,0x999a
    1c68:	e6040258 	swc1	$f4,600(s0)
    1c6c:	26040260 	addiu	a0,s0,608
    1c70:	3c063f80 	lui	a2,0x3f80
    1c74:	0c000000 	jal	0 <func_809CE6E0>
    1c78:	e7a60010 	swc1	$f6,16(sp)
    1c7c:	860a0222 	lh	t2,546(s0)
    1c80:	254bffff 	addiu	t3,t2,-1
    1c84:	a60b0222 	sh	t3,546(s0)
    1c88:	860c0222 	lh	t4,546(s0)
    1c8c:	55800013 	bnezl	t4,1cdc <func_809D0268+0x154>
    1c90:	8fbf0024 	lw	ra,36(sp)
    1c94:	0c000000 	jal	0 <func_809CE6E0>
    1c98:	02002025 	move	a0,s0
    1c9c:	240e00c8 	li	t6,200
    1ca0:	240f00ff 	li	t7,255
    1ca4:	24180258 	li	t8,600
    1ca8:	24190001 	li	t9,1
    1cac:	86080236 	lh	t0,566(s0)
    1cb0:	a20e022d 	sb	t6,557(s0)
    1cb4:	a20e022c 	sb	t6,556(s0)
    1cb8:	a20f022e 	sb	t7,558(s0)
    1cbc:	a6180224 	sh	t8,548(s0)
    1cc0:	a2190221 	sb	t9,545(s0)
    1cc4:	3c010000 	lui	at,0x0
    1cc8:	c4280000 	lwc1	$f8,0(at)
    1ccc:	25090001 	addiu	t1,t0,1
    1cd0:	a6090236 	sh	t1,566(s0)
    1cd4:	e6080250 	swc1	$f8,592(s0)
    1cd8:	8fbf0024 	lw	ra,36(sp)
    1cdc:	8fb00020 	lw	s0,32(sp)
    1ce0:	27bd0028 	addiu	sp,sp,40
    1ce4:	03e00008 	jr	ra
    1ce8:	00000000 	nop

00001cec <func_809D03CC>:
    1cec:	27bdffe8 	addiu	sp,sp,-24
    1cf0:	afbf0014 	sw	ra,20(sp)
    1cf4:	908e0231 	lbu	t6,561(a0)
    1cf8:	44802000 	mtc1	zero,$f4
    1cfc:	2401000e 	li	at,14
    1d00:	15c10003 	bne	t6,at,1d10 <func_809D03CC+0x24>
    1d04:	e4840068 	swc1	$f4,104(a0)
    1d08:	240f0020 	li	t7,32
    1d0c:	a08f023b 	sb	t7,571(a0)
    1d10:	90980114 	lbu	t8,276(a0)
    1d14:	2405389e 	li	a1,14494
    1d18:	a098023c 	sb	t8,572(a0)
    1d1c:	0c000000 	jal	0 <func_809CE6E0>
    1d20:	afa40018 	sw	a0,24(sp)
    1d24:	3c050000 	lui	a1,0x0
    1d28:	8fa40018 	lw	a0,24(sp)
    1d2c:	0c000000 	jal	0 <func_809CE6E0>
    1d30:	24a50000 	addiu	a1,a1,0
    1d34:	8fbf0014 	lw	ra,20(sp)
    1d38:	27bd0018 	addiu	sp,sp,24
    1d3c:	03e00008 	jr	ra
    1d40:	00000000 	nop

00001d44 <func_809D0424>:
    1d44:	27bdffc0 	addiu	sp,sp,-64
    1d48:	afbf0034 	sw	ra,52(sp)
    1d4c:	afb00030 	sw	s0,48(sp)
    1d50:	afa50044 	sw	a1,68(sp)
    1d54:	908e0114 	lbu	t6,276(a0)
    1d58:	00808025 	move	s0,a0
    1d5c:	55c0004d 	bnezl	t6,1e94 <func_809D0424+0x150>
    1d60:	8fbf0034 	lw	ra,52(sp)
    1d64:	908f00af 	lbu	t7,175(a0)
    1d68:	a080023c 	sb	zero,572(a0)
    1d6c:	260502e0 	addiu	a1,s0,736
    1d70:	11e00025 	beqz	t7,1e08 <func_809D0424+0xc4>
    1d74:	00000000 	nop
    1d78:	90820220 	lbu	v0,544(a0)
    1d7c:	24030005 	li	v1,5
    1d80:	24010006 	li	at,6
    1d84:	10620015 	beq	v1,v0,1ddc <func_809D0424+0x98>
    1d88:	00000000 	nop
    1d8c:	10410013 	beq	v0,at,1ddc <func_809D0424+0x98>
    1d90:	00000000 	nop
    1d94:	0c000000 	jal	0 <func_809CE6E0>
    1d98:	00000000 	nop
    1d9c:	241900c8 	li	t9,200
    1da0:	860b0236 	lh	t3,566(s0)
    1da4:	240800ff 	li	t0,255
    1da8:	24090258 	li	t1,600
    1dac:	240a0001 	li	t2,1
    1db0:	a219022d 	sb	t9,557(s0)
    1db4:	a219022c 	sb	t9,556(s0)
    1db8:	a208022e 	sb	t0,558(s0)
    1dbc:	a6090224 	sh	t1,548(s0)
    1dc0:	a20a0221 	sb	t2,545(s0)
    1dc4:	3c010000 	lui	at,0x0
    1dc8:	c4240000 	lwc1	$f4,0(at)
    1dcc:	256c0001 	addiu	t4,t3,1
    1dd0:	a60c0236 	sh	t4,566(s0)
    1dd4:	1000002e 	b	1e90 <func_809D0424+0x14c>
    1dd8:	e6040250 	swc1	$f4,592(s0)
    1ddc:	10620006 	beq	v1,v0,1df8 <func_809D0424+0xb4>
    1de0:	02002025 	move	a0,s0
    1de4:	3c050000 	lui	a1,0x0
    1de8:	0c000000 	jal	0 <func_809CE6E0>
    1dec:	24a50000 	addiu	a1,a1,0
    1df0:	10000028 	b	1e94 <func_809D0424+0x150>
    1df4:	8fbf0034 	lw	ra,52(sp)
    1df8:	0c000000 	jal	0 <func_809CE6E0>
    1dfc:	02002025 	move	a0,s0
    1e00:	10000024 	b	1e94 <func_809D0424+0x150>
    1e04:	8fbf0034 	lw	ra,52(sp)
    1e08:	0c000000 	jal	0 <func_809CE6E0>
    1e0c:	8fa40044 	lw	a0,68(sp)
    1e10:	10400017 	beqz	v0,1e70 <func_809D0424+0x12c>
    1e14:	240e0001 	li	t6,1
    1e18:	a2000230 	sb	zero,560(s0)
    1e1c:	3c010000 	lui	at,0x0
    1e20:	c4280000 	lwc1	$f8,0(at)
    1e24:	c6060054 	lwc1	$f6,84(s0)
    1e28:	3c014080 	lui	at,0x4080
    1e2c:	44818000 	mtc1	at,$f16
    1e30:	46083281 	sub.s	$f10,$f6,$f8
    1e34:	26060024 	addiu	a2,s0,36
    1e38:	240d000b 	li	t5,11
    1e3c:	02002825 	move	a1,s0
    1e40:	e60a0054 	swc1	$f10,84(s0)
    1e44:	afa6003c 	sw	a2,60(sp)
    1e48:	afa00020 	sw	zero,32(sp)
    1e4c:	afa0001c 	sw	zero,28(sp)
    1e50:	afa00018 	sw	zero,24(sp)
    1e54:	afad0010 	sw	t5,16(sp)
    1e58:	8fa40044 	lw	a0,68(sp)
    1e5c:	3c0741f0 	lui	a3,0x41f0
    1e60:	0c000000 	jal	0 <func_809CE6E0>
    1e64:	e7b00014 	swc1	$f16,20(sp)
    1e68:	10000003 	b	1e78 <func_809D0424+0x134>
    1e6c:	8fa6003c 	lw	a2,60(sp)
    1e70:	a20e0230 	sb	t6,560(s0)
    1e74:	26060024 	addiu	a2,s0,36
    1e78:	8fa40044 	lw	a0,68(sp)
    1e7c:	02002825 	move	a1,s0
    1e80:	0c000000 	jal	0 <func_809CE6E0>
    1e84:	24070090 	li	a3,144
    1e88:	0c000000 	jal	0 <func_809CE6E0>
    1e8c:	02002025 	move	a0,s0
    1e90:	8fbf0034 	lw	ra,52(sp)
    1e94:	8fb00030 	lw	s0,48(sp)
    1e98:	27bd0040 	addiu	sp,sp,64
    1e9c:	03e00008 	jr	ra
    1ea0:	00000000 	nop

00001ea4 <func_809D0584>:
    1ea4:	27bdffc0 	addiu	sp,sp,-64
    1ea8:	afbf0034 	sw	ra,52(sp)
    1eac:	afb00030 	sw	s0,48(sp)
    1eb0:	afa50044 	sw	a1,68(sp)
    1eb4:	94820088 	lhu	v0,136(a0)
    1eb8:	00808025 	move	s0,a0
    1ebc:	304e0010 	andi	t6,v0,0x10
    1ec0:	11c00019 	beqz	t6,1f28 <func_809D0584+0x84>
    1ec4:	304f0001 	andi	t7,v0,0x1
    1ec8:	11e00017 	beqz	t7,1f28 <func_809D0584+0x84>
    1ecc:	3c010000 	lui	at,0x0
    1ed0:	a0800230 	sb	zero,560(a0)
    1ed4:	c4260000 	lwc1	$f6,0(at)
    1ed8:	c4840054 	lwc1	$f4,84(a0)
    1edc:	3c014080 	lui	at,0x4080
    1ee0:	44815000 	mtc1	at,$f10
    1ee4:	46062201 	sub.s	$f8,$f4,$f6
    1ee8:	2418000b 	li	t8,11
    1eec:	02002825 	move	a1,s0
    1ef0:	26060024 	addiu	a2,s0,36
    1ef4:	e4880054 	swc1	$f8,84(a0)
    1ef8:	afa00020 	sw	zero,32(sp)
    1efc:	afa0001c 	sw	zero,28(sp)
    1f00:	afa00018 	sw	zero,24(sp)
    1f04:	afb80010 	sw	t8,16(sp)
    1f08:	8fa40044 	lw	a0,68(sp)
    1f0c:	3c0741f0 	lui	a3,0x41f0
    1f10:	0c000000 	jal	0 <func_809CE6E0>
    1f14:	e7aa0014 	swc1	$f10,20(sp)
    1f18:	0c000000 	jal	0 <func_809CE6E0>
    1f1c:	02002025 	move	a0,s0
    1f20:	1000009f 	b	21a0 <func_809D0584+0x2fc>
    1f24:	8fbf0034 	lw	ra,52(sp)
    1f28:	920202f1 	lbu	v0,753(s0)
    1f2c:	30590002 	andi	t9,v0,0x2
    1f30:	5320007f 	beqzl	t9,2130 <func_809D0584+0x28c>
    1f34:	8fa90044 	lw	t1,68(sp)
    1f38:	920300b1 	lbu	v1,177(s0)
    1f3c:	3048fffd 	andi	t0,v0,0xfffd
    1f40:	a20802f1 	sb	t0,753(s0)
    1f44:	50600096 	beqzl	v1,21a0 <func_809D0584+0x2fc>
    1f48:	8fbf0034 	lw	ra,52(sp)
    1f4c:	92090220 	lbu	t1,544(s0)
    1f50:	24010006 	li	at,6
    1f54:	02002025 	move	a0,s0
    1f58:	11210090 	beq	t1,at,219c <func_809D0584+0x2f8>
    1f5c:	260502f8 	addiu	a1,s0,760
    1f60:	a2030231 	sb	v1,561(s0)
    1f64:	0c000000 	jal	0 <func_809CE6E0>
    1f68:	00003025 	move	a2,zero
    1f6c:	92020231 	lbu	v0,561(s0)
    1f70:	24030001 	li	v1,1
    1f74:	2401000e 	li	at,14
    1f78:	50620004 	beql	v1,v0,1f8c <func_809D0584+0xe8>
    1f7c:	920a023c 	lbu	t2,572(s0)
    1f80:	54410013 	bnel	v0,at,1fd0 <func_809D0584+0x12c>
    1f84:	44809000 	mtc1	zero,$f18
    1f88:	920a023c 	lbu	t2,572(s0)
    1f8c:	55400084 	bnezl	t2,21a0 <func_809D0584+0x2fc>
    1f90:	8fbf0034 	lw	ra,52(sp)
    1f94:	0c000000 	jal	0 <func_809CE6E0>
    1f98:	02002025 	move	a0,s0
    1f9c:	240b0050 	li	t3,80
    1fa0:	afab0010 	sw	t3,16(sp)
    1fa4:	02002025 	move	a0,s0
    1fa8:	00002825 	move	a1,zero
    1fac:	24060078 	li	a2,120
    1fb0:	0c000000 	jal	0 <func_809CE6E0>
    1fb4:	00003825 	move	a3,zero
    1fb8:	0c000000 	jal	0 <func_809CE6E0>
    1fbc:	02002025 	move	a0,s0
    1fc0:	44808000 	mtc1	zero,$f16
    1fc4:	10000075 	b	219c <func_809D0584+0x2f8>
    1fc8:	e6100248 	swc1	$f16,584(s0)
    1fcc:	44809000 	mtc1	zero,$f18
    1fd0:	c6040248 	lwc1	$f4,584(s0)
    1fd4:	46049032 	c.eq.s	$f18,$f4
    1fd8:	00000000 	nop
    1fdc:	45020005 	bc1fl	1ff4 <func_809D0584+0x150>
    1fe0:	92020221 	lbu	v0,545(s0)
    1fe4:	0c000000 	jal	0 <func_809CE6E0>
    1fe8:	02002025 	move	a0,s0
    1fec:	24030001 	li	v1,1
    1ff0:	92020221 	lbu	v0,545(s0)
    1ff4:	24010004 	li	at,4
    1ff8:	50620004 	beql	v1,v0,200c <func_809D0584+0x168>
    1ffc:	920c00af 	lbu	t4,175(s0)
    2000:	54410033 	bnel	v0,at,20d0 <func_809D0584+0x22c>
    2004:	92020220 	lbu	v0,544(s0)
    2008:	920c00af 	lbu	t4,175(s0)
    200c:	55800030 	bnezl	t4,20d0 <func_809D0584+0x22c>
    2010:	92020220 	lbu	v0,544(s0)
    2014:	920d0220 	lbu	t5,544(s0)
    2018:	02002025 	move	a0,s0
    201c:	24054000 	li	a1,16384
    2020:	11a00042 	beqz	t5,212c <func_809D0584+0x288>
    2024:	240600ff 	li	a2,255
    2028:	240e0008 	li	t6,8
    202c:	afae0010 	sw	t6,16(sp)
    2030:	0c000000 	jal	0 <func_809CE6E0>
    2034:	00003825 	move	a3,zero
    2038:	8fa40044 	lw	a0,68(sp)
    203c:	0c000000 	jal	0 <func_809CE6E0>
    2040:	260502e0 	addiu	a1,s0,736
    2044:	10400017 	beqz	v0,20a4 <func_809D0584+0x200>
    2048:	24180001 	li	t8,1
    204c:	a2000230 	sb	zero,560(s0)
    2050:	3c010000 	lui	at,0x0
    2054:	c4280000 	lwc1	$f8,0(at)
    2058:	c6060054 	lwc1	$f6,84(s0)
    205c:	3c014080 	lui	at,0x4080
    2060:	44818000 	mtc1	at,$f16
    2064:	46083281 	sub.s	$f10,$f6,$f8
    2068:	26060024 	addiu	a2,s0,36
    206c:	240f000b 	li	t7,11
    2070:	02002825 	move	a1,s0
    2074:	e60a0054 	swc1	$f10,84(s0)
    2078:	afa6003c 	sw	a2,60(sp)
    207c:	afa00020 	sw	zero,32(sp)
    2080:	afa0001c 	sw	zero,28(sp)
    2084:	afa00018 	sw	zero,24(sp)
    2088:	afaf0010 	sw	t7,16(sp)
    208c:	8fa40044 	lw	a0,68(sp)
    2090:	3c0741f0 	lui	a3,0x41f0
    2094:	0c000000 	jal	0 <func_809CE6E0>
    2098:	e7b00014 	swc1	$f16,20(sp)
    209c:	10000003 	b	20ac <func_809D0584+0x208>
    20a0:	8fa6003c 	lw	a2,60(sp)
    20a4:	a2180230 	sb	t8,560(s0)
    20a8:	26060024 	addiu	a2,s0,36
    20ac:	8fa40044 	lw	a0,68(sp)
    20b0:	02002825 	move	a1,s0
    20b4:	0c000000 	jal	0 <func_809CE6E0>
    20b8:	24070090 	li	a3,144
    20bc:	0c000000 	jal	0 <func_809CE6E0>
    20c0:	02002025 	move	a0,s0
    20c4:	1000001a 	b	2130 <func_809D0584+0x28c>
    20c8:	8fa90044 	lw	t1,68(sp)
    20cc:	92020220 	lbu	v0,544(s0)
    20d0:	24010006 	li	at,6
    20d4:	50620016 	beql	v1,v0,2130 <func_809D0584+0x28c>
    20d8:	8fa90044 	lw	t1,68(sp)
    20dc:	10410013 	beq	v0,at,212c <func_809D0584+0x288>
    20e0:	02002025 	move	a0,s0
    20e4:	0c000000 	jal	0 <func_809CE6E0>
    20e8:	24053977 	li	a1,14711
    20ec:	24190008 	li	t9,8
    20f0:	afb90010 	sw	t9,16(sp)
    20f4:	02002025 	move	a0,s0
    20f8:	24054000 	li	a1,16384
    20fc:	240600ff 	li	a2,255
    2100:	0c000000 	jal	0 <func_809CE6E0>
    2104:	00003825 	move	a3,zero
    2108:	92080220 	lbu	t0,544(s0)
    210c:	24010005 	li	at,5
    2110:	51010004 	beql	t0,at,2124 <func_809D0584+0x280>
    2114:	44809000 	mtc1	zero,$f18
    2118:	0c000000 	jal	0 <func_809CE6E0>
    211c:	02002025 	move	a0,s0
    2120:	44809000 	mtc1	zero,$f18
    2124:	00000000 	nop
    2128:	e6120248 	swc1	$f18,584(s0)
    212c:	8fa90044 	lw	t1,68(sp)
    2130:	3c0143c8 	lui	at,0x43c8
    2134:	912a1c26 	lbu	t2,7206(t1)
    2138:	51400019 	beqzl	t2,21a0 <func_809D0584+0x2fc>
    213c:	8fbf0034 	lw	ra,52(sp)
    2140:	44812000 	mtc1	at,$f4
    2144:	c6060090 	lwc1	$f6,144(s0)
    2148:	4604303e 	c.le.s	$f6,$f4
    214c:	00000000 	nop
    2150:	45020013 	bc1fl	21a0 <func_809D0584+0x2fc>
    2154:	8fbf0034 	lw	ra,52(sp)
    2158:	960b0088 	lhu	t3,136(s0)
    215c:	316c0001 	andi	t4,t3,0x1
    2160:	5180000f 	beqzl	t4,21a0 <func_809D0584+0x2fc>
    2164:	8fbf0034 	lw	ra,52(sp)
    2168:	92020220 	lbu	v0,544(s0)
    216c:	24010005 	li	at,5
    2170:	02002025 	move	a0,s0
    2174:	14410005 	bne	v0,at,218c <func_809D0584+0x2e8>
    2178:	00000000 	nop
    217c:	0c000000 	jal	0 <func_809CE6E0>
    2180:	a200023c 	sb	zero,572(s0)
    2184:	10000006 	b	21a0 <func_809D0584+0x2fc>
    2188:	8fbf0034 	lw	ra,52(sp)
    218c:	10400003 	beqz	v0,219c <func_809D0584+0x2f8>
    2190:	02002025 	move	a0,s0
    2194:	0c000000 	jal	0 <func_809CE6E0>
    2198:	a200023c 	sb	zero,572(s0)
    219c:	8fbf0034 	lw	ra,52(sp)
    21a0:	8fb00030 	lw	s0,48(sp)
    21a4:	27bd0040 	addiu	sp,sp,64
    21a8:	03e00008 	jr	ra
    21ac:	00000000 	nop

000021b0 <EnBw_Update>:
    21b0:	27bdff80 	addiu	sp,sp,-128
    21b4:	3c0f0000 	lui	t7,0x0
    21b8:	afbf0034 	sw	ra,52(sp)
    21bc:	afb10030 	sw	s1,48(sp)
    21c0:	afb0002c 	sw	s0,44(sp)
    21c4:	25ef0000 	addiu	t7,t7,0
    21c8:	8df90000 	lw	t9,0(t7)
    21cc:	27ae006c 	addiu	t6,sp,108
    21d0:	8df80004 	lw	t8,4(t7)
    21d4:	add90000 	sw	t9,0(t6)
    21d8:	8df90008 	lw	t9,8(t7)
    21dc:	3c090000 	lui	t1,0x0
    21e0:	25290000 	addiu	t1,t1,0
    21e4:	add80004 	sw	t8,4(t6)
    21e8:	add90008 	sw	t9,8(t6)
    21ec:	8d2b0000 	lw	t3,0(t1)
    21f0:	27a80060 	addiu	t0,sp,96
    21f4:	8d2a0004 	lw	t2,4(t1)
    21f8:	ad0b0000 	sw	t3,0(t0)
    21fc:	8d2b0008 	lw	t3,8(t1)
    2200:	ad0a0004 	sw	t2,4(t0)
    2204:	3c0c0000 	lui	t4,0x0
    2208:	ad0b0008 	sw	t3,8(t0)
    220c:	3c0d0000 	lui	t5,0x0
    2210:	3c0e0000 	lui	t6,0x0
    2214:	3c0f0000 	lui	t7,0x0
    2218:	8d8c0000 	lw	t4,0(t4)
    221c:	8dad0000 	lw	t5,0(t5)
    2220:	8dce0000 	lw	t6,0(t6)
    2224:	8def0000 	lw	t7,0(t7)
    2228:	00808025 	move	s0,a0
    222c:	00a08825 	move	s1,a1
    2230:	afac0050 	sw	t4,80(sp)
    2234:	afad004c 	sw	t5,76(sp)
    2238:	afae0048 	sw	t6,72(sp)
    223c:	0c000000 	jal	0 <func_809CE6E0>
    2240:	afaf0044 	sw	t7,68(sp)
    2244:	921800b1 	lbu	t8,177(s0)
    2248:	24010006 	li	at,6
    224c:	530100b9 	beql	t8,at,2534 <EnBw_Update+0x384>
    2250:	260502e0 	addiu	a1,s0,736
    2254:	8e190228 	lw	t9,552(s0)
    2258:	02002025 	move	a0,s0
    225c:	02202825 	move	a1,s1
    2260:	0320f809 	jalr	t9
    2264:	00000000 	nop
    2268:	9208023c 	lbu	t0,572(s0)
    226c:	3c010001 	lui	at,0x1
    2270:	02216021 	addu	t4,s1,at
    2274:	15000005 	bnez	t0,228c <EnBw_Update+0xdc>
    2278:	3c01c040 	lui	at,0xc040
    227c:	9209023a 	lbu	t1,570(s0)
    2280:	252a0004 	addiu	t2,t1,4
    2284:	314b007f 	andi	t3,t2,0x7f
    2288:	a20b023a 	sb	t3,570(s0)
    228c:	afac0040 	sw	t4,64(sp)
    2290:	920f0221 	lbu	t7,545(s0)
    2294:	8d8e1de4 	lw	t6,7652(t4)
    2298:	01cfc024 	and	t8,t6,t7
    229c:	1700002b 	bnez	t8,234c <EnBw_Update+0x19c>
    22a0:	00000000 	nop
    22a4:	44812000 	mtc1	at,$f4
    22a8:	3c0141c0 	lui	at,0x41c0
    22ac:	44814000 	mtc1	at,$f8
    22b0:	e7a40064 	swc1	$f4,100(sp)
    22b4:	c6060248 	lwc1	$f6,584(s0)
    22b8:	46083302 	mul.s	$f12,$f6,$f8
    22bc:	0c000000 	jal	0 <func_809CE6E0>
    22c0:	00000000 	nop
    22c4:	e7a0006c 	swc1	$f0,108(sp)
    22c8:	3c0141f0 	lui	at,0x41f0
    22cc:	44818000 	mtc1	at,$f16
    22d0:	c60a0248 	lwc1	$f10,584(s0)
    22d4:	3c0141c0 	lui	at,0x41c0
    22d8:	44813000 	mtc1	at,$f6
    22dc:	46105482 	mul.s	$f18,$f10,$f16
    22e0:	e7b20070 	swc1	$f18,112(sp)
    22e4:	c6040248 	lwc1	$f4,584(s0)
    22e8:	46062302 	mul.s	$f12,$f4,$f6
    22ec:	0c000000 	jal	0 <func_809CE6E0>
    22f0:	00000000 	nop
    22f4:	3c010000 	lui	at,0x0
    22f8:	c4220000 	lwc1	$f2,0(at)
    22fc:	c7a8006c 	lwc1	$f8,108(sp)
    2300:	27b90050 	addiu	t9,sp,80
    2304:	27a8004c 	addiu	t0,sp,76
    2308:	46024282 	mul.s	$f10,$f8,$f2
    230c:	2409003c 	li	t1,60
    2310:	240a0014 	li	t2,20
    2314:	46020402 	mul.s	$f16,$f0,$f2
    2318:	e7a00074 	swc1	$f0,116(sp)
    231c:	afaa0020 	sw	t2,32(sp)
    2320:	afa90018 	sw	t1,24(sp)
    2324:	e7aa0060 	swc1	$f10,96(sp)
    2328:	afa80014 	sw	t0,20(sp)
    232c:	afb90010 	sw	t9,16(sp)
    2330:	e7b00068 	swc1	$f16,104(sp)
    2334:	02202025 	move	a0,s1
    2338:	26050024 	addiu	a1,s0,36
    233c:	27a6006c 	addiu	a2,sp,108
    2340:	27a70060 	addiu	a3,sp,96
    2344:	0c000000 	jal	0 <func_809CE6E0>
    2348:	afa0001c 	sw	zero,28(sp)
    234c:	3c010000 	lui	at,0x0
    2350:	c4320000 	lwc1	$f18,0(at)
    2354:	c6040248 	lwc1	$f4,584(s0)
    2358:	240f0001 	li	t7,1
    235c:	4612203e 	c.le.s	$f4,$f18
    2360:	00000000 	nop
    2364:	45020053 	bc1fl	24b4 <EnBw_Update+0x304>
    2368:	a20f02b0 	sb	t7,688(s0)
    236c:	a20002b0 	sb	zero,688(s0)
    2370:	8fab0040 	lw	t3,64(sp)
    2374:	8d6c1de4 	lw	t4,7652(t3)
    2378:	318d0001 	andi	t5,t4,0x1
    237c:	55a0004e 	bnezl	t5,24b8 <EnBw_Update+0x308>
    2380:	02002025 	move	a0,s0
    2384:	920e0220 	lbu	t6,544(s0)
    2388:	29c10005 	slti	at,t6,5
    238c:	5020004a 	beqzl	at,24b8 <EnBw_Update+0x308>
    2390:	02002025 	move	a0,s0
    2394:	920f023c 	lbu	t7,572(s0)
    2398:	3c010000 	lui	at,0x0
    239c:	26180024 	addiu	t8,s0,36
    23a0:	55e00045 	bnezl	t7,24b8 <EnBw_Update+0x308>
    23a4:	02002025 	move	a0,s0
    23a8:	c4260000 	lwc1	$f6,0(at)
    23ac:	3c014080 	lui	at,0x4080
    23b0:	44816000 	mtc1	at,$f12
    23b4:	afb80040 	sw	t8,64(sp)
    23b8:	0c000000 	jal	0 <func_809CE6E0>
    23bc:	e7a60064 	swc1	$f6,100(sp)
    23c0:	3c014000 	lui	at,0x4000
    23c4:	44816000 	mtc1	at,$f12
    23c8:	0c000000 	jal	0 <func_809CE6E0>
    23cc:	e7a0006c 	swc1	$f0,108(sp)
    23d0:	3c0140c0 	lui	at,0x40c0
    23d4:	44814000 	mtc1	at,$f8
    23d8:	3c014080 	lui	at,0x4080
    23dc:	44816000 	mtc1	at,$f12
    23e0:	46080280 	add.s	$f10,$f0,$f8
    23e4:	0c000000 	jal	0 <func_809CE6E0>
    23e8:	e7aa0070 	swc1	$f10,112(sp)
    23ec:	3c010000 	lui	at,0x0
    23f0:	c4220000 	lwc1	$f2,0(at)
    23f4:	c7b0006c 	lwc1	$f16,108(sp)
    23f8:	3c014080 	lui	at,0x4080
    23fc:	44816000 	mtc1	at,$f12
    2400:	46028482 	mul.s	$f18,$f16,$f2
    2404:	e7a00074 	swc1	$f0,116(sp)
    2408:	46020102 	mul.s	$f4,$f0,$f2
    240c:	e7b20060 	swc1	$f18,96(sp)
    2410:	0c000000 	jal	0 <func_809CE6E0>
    2414:	e7a40068 	swc1	$f4,104(sp)
    2418:	3c014080 	lui	at,0x4080
    241c:	44816000 	mtc1	at,$f12
    2420:	0c000000 	jal	0 <func_809CE6E0>
    2424:	00000000 	nop
    2428:	9219022f 	lbu	t9,559(s0)
    242c:	27a90048 	addiu	t1,sp,72
    2430:	27aa0044 	addiu	t2,sp,68
    2434:	332200ff 	andi	v0,t9,0xff
    2438:	2841001e 	slti	at,v0,30
    243c:	14200004 	bnez	at,2450 <EnBw_Update+0x2a0>
    2440:	a3b9004b 	sb	t9,75(sp)
    2444:	2448ffe2 	addiu	t0,v0,-30
    2448:	10000002 	b	2454 <EnBw_Update+0x2a4>
    244c:	a3a80047 	sb	t0,71(sp)
    2450:	a3a00047 	sb	zero,71(sp)
    2454:	240b00b4 	li	t3,180
    2458:	240c0028 	li	t4,40
    245c:	afac001c 	sw	t4,28(sp)
    2460:	afab0018 	sw	t3,24(sp)
    2464:	afa90010 	sw	t1,16(sp)
    2468:	afaa0014 	sw	t2,20(sp)
    246c:	3c014220 	lui	at,0x4220
    2470:	44814000 	mtc1	at,$f8
    2474:	c6060248 	lwc1	$f6,584(s0)
    2478:	3c0141a0 	lui	at,0x41a0
    247c:	44818000 	mtc1	at,$f16
    2480:	46083282 	mul.s	$f10,$f6,$f8
    2484:	02202025 	move	a0,s1
    2488:	8fa50040 	lw	a1,64(sp)
    248c:	27a6006c 	addiu	a2,sp,108
    2490:	27a70060 	addiu	a3,sp,96
    2494:	460a8481 	sub.s	$f18,$f16,$f10
    2498:	4600910d 	trunc.w.s	$f4,$f18
    249c:	440e2000 	mfc1	t6,$f4
    24a0:	0c000000 	jal	0 <func_809CE6E0>
    24a4:	afae0020 	sw	t6,32(sp)
    24a8:	10000003 	b	24b8 <EnBw_Update+0x308>
    24ac:	02002025 	move	a0,s0
    24b0:	a20f02b0 	sb	t7,688(s0)
    24b4:	02002025 	move	a0,s0
    24b8:	02202825 	move	a1,s1
    24bc:	3c064248 	lui	a2,0x4248
    24c0:	0c000000 	jal	0 <func_809CE6E0>
    24c4:	86070032 	lh	a3,50(s0)
    24c8:	92030220 	lbu	v1,544(s0)
    24cc:	24010004 	li	at,4
    24d0:	a6020234 	sh	v0,564(s0)
    24d4:	1061000a 	beq	v1,at,2500 <EnBw_Update+0x350>
    24d8:	24010006 	li	at,6
    24dc:	10610008 	beq	v1,at,2500 <EnBw_Update+0x350>
    24e0:	24010005 	li	at,5
    24e4:	10610006 	beq	v1,at,2500 <EnBw_Update+0x350>
    24e8:	24010001 	li	at,1
    24ec:	10610004 	beq	v1,at,2500 <EnBw_Update+0x350>
    24f0:	00000000 	nop
    24f4:	86180234 	lh	t8,564(s0)
    24f8:	53000004 	beqzl	t8,250c <EnBw_Update+0x35c>
    24fc:	3c0141a8 	lui	at,0x41a8
    2500:	0c000000 	jal	0 <func_809CE6E0>
    2504:	02002025 	move	a0,s0
    2508:	3c0141a8 	lui	at,0x41a8
    250c:	44813000 	mtc1	at,$f6
    2510:	2419001f 	li	t9,31
    2514:	afb90014 	sw	t9,20(sp)
    2518:	02202025 	move	a0,s1
    251c:	02002825 	move	a1,s0
    2520:	3c0641a0 	lui	a2,0x41a0
    2524:	3c0741f0 	lui	a3,0x41f0
    2528:	0c000000 	jal	0 <func_809CE6E0>
    252c:	e7a60010 	swc1	$f6,16(sp)
    2530:	260502e0 	addiu	a1,s0,736
    2534:	26080024 	addiu	t0,s0,36
    2538:	afa80040 	sw	t0,64(sp)
    253c:	afa50038 	sw	a1,56(sp)
    2540:	0c000000 	jal	0 <func_809CE6E0>
    2544:	02002025 	move	a0,s0
    2548:	3c010001 	lui	at,0x1
    254c:	34211e60 	ori	at,at,0x1e60
    2550:	02212821 	addu	a1,s1,at
    2554:	afa5003c 	sw	a1,60(sp)
    2558:	02202025 	move	a0,s1
    255c:	0c000000 	jal	0 <func_809CE6E0>
    2560:	8fa60038 	lw	a2,56(sp)
    2564:	92090220 	lbu	t1,544(s0)
    2568:	5120000d 	beqzl	t1,25a0 <EnBw_Update+0x3f0>
    256c:	920d0221 	lbu	t5,545(s0)
    2570:	920a0114 	lbu	t2,276(s0)
    2574:	02202025 	move	a0,s1
    2578:	8fa5003c 	lw	a1,60(sp)
    257c:	11400005 	beqz	t2,2594 <EnBw_Update+0x3e4>
    2580:	00000000 	nop
    2584:	960b0112 	lhu	t3,274(s0)
    2588:	316c4000 	andi	t4,t3,0x4000
    258c:	55800004 	bnezl	t4,25a0 <EnBw_Update+0x3f0>
    2590:	920d0221 	lbu	t5,545(s0)
    2594:	0c000000 	jal	0 <func_809CE6E0>
    2598:	8fa60038 	lw	a2,56(sp)
    259c:	920d0221 	lbu	t5,545(s0)
    25a0:	24010001 	li	at,1
    25a4:	51a10014 	beql	t5,at,25f8 <EnBw_Update+0x448>
    25a8:	8faf0040 	lw	t7,64(sp)
    25ac:	920e0220 	lbu	t6,544(s0)
    25b0:	29c10005 	slti	at,t6,5
    25b4:	1020000f 	beqz	at,25f4 <EnBw_Update+0x444>
    25b8:	3c010000 	lui	at,0x0
    25bc:	c4280000 	lwc1	$f8,0(at)
    25c0:	c6100248 	lwc1	$f16,584(s0)
    25c4:	26060294 	addiu	a2,s0,660
    25c8:	00c02825 	move	a1,a2
    25cc:	4610403c 	c.lt.s	$f8,$f16
    25d0:	02002025 	move	a0,s0
    25d4:	45020008 	bc1fl	25f8 <EnBw_Update+0x448>
    25d8:	8faf0040 	lw	t7,64(sp)
    25dc:	0c000000 	jal	0 <func_809CE6E0>
    25e0:	afa60038 	sw	a2,56(sp)
    25e4:	8fa60038 	lw	a2,56(sp)
    25e8:	02202025 	move	a0,s1
    25ec:	0c000000 	jal	0 <func_809CE6E0>
    25f0:	8fa5003c 	lw	a1,60(sp)
    25f4:	8faf0040 	lw	t7,64(sp)
    25f8:	3c0140a0 	lui	at,0x40a0
    25fc:	44819000 	mtc1	at,$f18
    2600:	8df90000 	lw	t9,0(t7)
    2604:	ae190038 	sw	t9,56(s0)
    2608:	8df80004 	lw	t8,4(t7)
    260c:	ae18003c 	sw	t8,60(s0)
    2610:	c60a003c 	lwc1	$f10,60(s0)
    2614:	8df90008 	lw	t9,8(t7)
    2618:	46125100 	add.s	$f4,$f10,$f18
    261c:	ae190040 	sw	t9,64(s0)
    2620:	e604003c 	swc1	$f4,60(s0)
    2624:	8fbf0034 	lw	ra,52(sp)
    2628:	8fb10030 	lw	s1,48(sp)
    262c:	8fb0002c 	lw	s0,44(sp)
    2630:	03e00008 	jr	ra
    2634:	27bd0080 	addiu	sp,sp,128

00002638 <func_809D0D18>:
    2638:	27bdffb8 	addiu	sp,sp,-72
    263c:	24010001 	li	at,1
    2640:	afbf003c 	sw	ra,60(sp)
    2644:	afb00038 	sw	s0,56(sp)
    2648:	afa40048 	sw	a0,72(sp)
    264c:	afa60050 	sw	a2,80(sp)
    2650:	14a1007b 	bne	a1,at,2840 <func_809D0D18+0x208>
    2654:	afa70054 	sw	a3,84(sp)
    2658:	8fa80060 	lw	t0,96(sp)
    265c:	8fb0005c 	lw	s0,92(sp)
    2660:	3c0fdb06 	lui	t7,0xdb06
    2664:	8d020000 	lw	v0,0(t0)
    2668:	35ef0024 	ori	t7,t7,0x24
    266c:	24190020 	li	t9,32
    2670:	244e0008 	addiu	t6,v0,8
    2674:	ad0e0000 	sw	t6,0(t0)
    2678:	ac4f0000 	sw	t7,0(v0)
    267c:	8fb80048 	lw	t8,72(sp)
    2680:	24090020 	li	t1,32
    2684:	240a0001 	li	t2,1
    2688:	8f040000 	lw	a0,0(t8)
    268c:	afa0001c 	sw	zero,28(sp)
    2690:	afaa0018 	sw	t2,24(sp)
    2694:	afa90014 	sw	t1,20(sp)
    2698:	afb90010 	sw	t9,16(sp)
    269c:	920b023a 	lbu	t3,570(s0)
    26a0:	240c0020 	li	t4,32
    26a4:	240d0020 	li	t5,32
    26a8:	afad0028 	sw	t5,40(sp)
    26ac:	afac0024 	sw	t4,36(sp)
    26b0:	00002825 	move	a1,zero
    26b4:	00003025 	move	a2,zero
    26b8:	00003825 	move	a3,zero
    26bc:	afa20040 	sw	v0,64(sp)
    26c0:	0c000000 	jal	0 <func_809CE6E0>
    26c4:	afab0020 	sw	t3,32(sp)
    26c8:	8fa30040 	lw	v1,64(sp)
    26cc:	24010001 	li	at,1
    26d0:	ac620004 	sw	v0,4(v1)
    26d4:	92020220 	lbu	v0,544(s0)
    26d8:	10410003 	beq	v0,at,26e8 <func_809D0D18+0xb0>
    26dc:	24010005 	li	at,5
    26e0:	54410058 	bnel	v0,at,2844 <func_809D0D18+0x20c>
    26e4:	00001025 	move	v0,zero
    26e8:	0c000000 	jal	0 <func_809CE6E0>
    26ec:	00000000 	nop
    26f0:	3c013f80 	lui	at,0x3f80
    26f4:	44816000 	mtc1	at,$f12
    26f8:	24070001 	li	a3,1
    26fc:	44066000 	mfc1	a2,$f12
    2700:	0c000000 	jal	0 <func_809CE6E0>
    2704:	46006386 	mov.s	$f14,$f12
    2708:	3c010000 	lui	at,0x0
    270c:	c4260000 	lwc1	$f6,0(at)
    2710:	c6040258 	lwc1	$f4,600(s0)
    2714:	24050001 	li	a1,1
    2718:	46062302 	mul.s	$f12,$f4,$f6
    271c:	0c000000 	jal	0 <func_809CE6E0>
    2720:	00000000 	nop
    2724:	3c010000 	lui	at,0x0
    2728:	c42a0000 	lwc1	$f10,0(at)
    272c:	c6080258 	lwc1	$f8,600(s0)
    2730:	24050001 	li	a1,1
    2734:	460a4302 	mul.s	$f12,$f8,$f10
    2738:	0c000000 	jal	0 <func_809CE6E0>
    273c:	00000000 	nop
    2740:	3c010000 	lui	at,0x0
    2744:	c4320000 	lwc1	$f18,0(at)
    2748:	c6100258 	lwc1	$f16,600(s0)
    274c:	24050001 	li	a1,1
    2750:	46128302 	mul.s	$f12,$f16,$f18
    2754:	0c000000 	jal	0 <func_809CE6E0>
    2758:	00000000 	nop
    275c:	3c013f80 	lui	at,0x3f80
    2760:	44811000 	mtc1	at,$f2
    2764:	c6000260 	lwc1	$f0,608(s0)
    2768:	24070001 	li	a3,1
    276c:	46001301 	sub.s	$f12,$f2,$f0
    2770:	46020380 	add.s	$f14,$f0,$f2
    2774:	44066000 	mfc1	a2,$f12
    2778:	0c000000 	jal	0 <func_809CE6E0>
    277c:	00000000 	nop
    2780:	3c010000 	lui	at,0x0
    2784:	c4260000 	lwc1	$f6,0(at)
    2788:	c6040258 	lwc1	$f4,600(s0)
    278c:	24050001 	li	a1,1
    2790:	46062302 	mul.s	$f12,$f4,$f6
    2794:	0c000000 	jal	0 <func_809CE6E0>
    2798:	46006307 	neg.s	$f12,$f12
    279c:	3c010000 	lui	at,0x0
    27a0:	c42a0000 	lwc1	$f10,0(at)
    27a4:	c6080258 	lwc1	$f8,600(s0)
    27a8:	24050001 	li	a1,1
    27ac:	460a4302 	mul.s	$f12,$f8,$f10
    27b0:	0c000000 	jal	0 <func_809CE6E0>
    27b4:	46006307 	neg.s	$f12,$f12
    27b8:	3c010000 	lui	at,0x0
    27bc:	c4320000 	lwc1	$f18,0(at)
    27c0:	c6100258 	lwc1	$f16,600(s0)
    27c4:	24050001 	li	a1,1
    27c8:	46128302 	mul.s	$f12,$f16,$f18
    27cc:	0c000000 	jal	0 <func_809CE6E0>
    27d0:	46006307 	neg.s	$f12,$f12
    27d4:	8fa30060 	lw	v1,96(sp)
    27d8:	3c0fda38 	lui	t7,0xda38
    27dc:	35ef0003 	ori	t7,t7,0x3
    27e0:	8c620000 	lw	v0,0(v1)
    27e4:	3c050000 	lui	a1,0x0
    27e8:	24a50000 	addiu	a1,a1,0
    27ec:	244e0008 	addiu	t6,v0,8
    27f0:	ac6e0000 	sw	t6,0(v1)
    27f4:	ac4f0000 	sw	t7,0(v0)
    27f8:	8fb80048 	lw	t8,72(sp)
    27fc:	2406056c 	li	a2,1388
    2800:	00408025 	move	s0,v0
    2804:	0c000000 	jal	0 <func_809CE6E0>
    2808:	8f040000 	lw	a0,0(t8)
    280c:	ae020004 	sw	v0,4(s0)
    2810:	8fb90060 	lw	t9,96(sp)
    2814:	3c0ade00 	lui	t2,0xde00
    2818:	8f220000 	lw	v0,0(t9)
    281c:	24490008 	addiu	t1,v0,8
    2820:	af290000 	sw	t1,0(t9)
    2824:	ac4a0000 	sw	t2,0(v0)
    2828:	8fab0050 	lw	t3,80(sp)
    282c:	8d6c0000 	lw	t4,0(t3)
    2830:	0c000000 	jal	0 <func_809CE6E0>
    2834:	ac4c0004 	sw	t4,4(v0)
    2838:	10000002 	b	2844 <func_809D0D18+0x20c>
    283c:	24020001 	li	v0,1
    2840:	00001025 	move	v0,zero
    2844:	8fbf003c 	lw	ra,60(sp)
    2848:	8fb00038 	lw	s0,56(sp)
    284c:	27bd0048 	addiu	sp,sp,72
    2850:	03e00008 	jr	ra
    2854:	00000000 	nop

00002858 <EnBw_Draw>:
    2858:	27bdff48 	addiu	sp,sp,-184
    285c:	3c0f0000 	lui	t7,0x0
    2860:	afbf0044 	sw	ra,68(sp)
    2864:	afb20040 	sw	s2,64(sp)
    2868:	afb1003c 	sw	s1,60(sp)
    286c:	afb00038 	sw	s0,56(sp)
    2870:	25ef0000 	addiu	t7,t7,0
    2874:	8df90000 	lw	t9,0(t7)
    2878:	27ae00ac 	addiu	t6,sp,172
    287c:	8df80004 	lw	t8,4(t7)
    2880:	add90000 	sw	t9,0(t6)
    2884:	8df90008 	lw	t9,8(t7)
    2888:	00a09025 	move	s2,a1
    288c:	add80004 	sw	t8,4(t6)
    2890:	add90008 	sw	t9,8(t6)
    2894:	8ca50000 	lw	a1,0(a1)
    2898:	00808025 	move	s0,a0
    289c:	3c060000 	lui	a2,0x0
    28a0:	24c60000 	addiu	a2,a2,0
    28a4:	27a40080 	addiu	a0,sp,128
    28a8:	2407058f 	li	a3,1423
    28ac:	0c000000 	jal	0 <func_809CE6E0>
    28b0:	00a08825 	move	s1,a1
    28b4:	9209022f 	lbu	t1,559(s0)
    28b8:	240100ff 	li	at,255
    28bc:	15210028 	bne	t1,at,2960 <EnBw_Draw+0x108>
    28c0:	00000000 	nop
    28c4:	0c000000 	jal	0 <func_809CE6E0>
    28c8:	8e440000 	lw	a0,0(s2)
    28cc:	8e2302c0 	lw	v1,704(s1)
    28d0:	3c0bfb00 	lui	t3,0xfb00
    28d4:	3c070000 	lui	a3,0x0
    28d8:	246a0008 	addiu	t2,v1,8
    28dc:	ae2a02c0 	sw	t2,704(s1)
    28e0:	ac6b0000 	sw	t3,0(v1)
    28e4:	9218022d 	lbu	t8,557(s0)
    28e8:	920d022c 	lbu	t5,556(s0)
    28ec:	920b022e 	lbu	t3,558(s0)
    28f0:	0018cc00 	sll	t9,t8,0x10
    28f4:	9218022f 	lbu	t8,559(s0)
    28f8:	000d7600 	sll	t6,t5,0x18
    28fc:	01d94825 	or	t1,t6,t9
    2900:	000b6200 	sll	t4,t3,0x8
    2904:	012c6825 	or	t5,t1,t4
    2908:	01b87025 	or	t6,t5,t8
    290c:	ac6e0004 	sw	t6,4(v1)
    2910:	8e2302c0 	lw	v1,704(s1)
    2914:	3c0b0000 	lui	t3,0x0
    2918:	3c0adb06 	lui	t2,0xdb06
    291c:	24790008 	addiu	t9,v1,8
    2920:	ae3902c0 	sw	t9,704(s1)
    2924:	354a0020 	ori	t2,t2,0x20
    2928:	256b0010 	addiu	t3,t3,16
    292c:	ac6b0004 	sw	t3,4(v1)
    2930:	ac6a0000 	sw	t2,0(v1)
    2934:	8e06016c 	lw	a2,364(s0)
    2938:	8e050150 	lw	a1,336(s0)
    293c:	afb00014 	sw	s0,20(sp)
    2940:	afa00010 	sw	zero,16(sp)
    2944:	8e2902c0 	lw	t1,704(s1)
    2948:	24e70000 	addiu	a3,a3,0
    294c:	02402025 	move	a0,s2
    2950:	0c000000 	jal	0 <func_809CE6E0>
    2954:	afa90018 	sw	t1,24(sp)
    2958:	10000035 	b	2a30 <EnBw_Draw+0x1d8>
    295c:	ae2202c0 	sw	v0,704(s1)
    2960:	0c000000 	jal	0 <func_809CE6E0>
    2964:	8e440000 	lw	a0,0(s2)
    2968:	8e2202d0 	lw	v0,720(s1)
    296c:	3c0fe700 	lui	t7,0xe700
    2970:	3c18fa00 	lui	t8,0xfa00
    2974:	244c0008 	addiu	t4,v0,8
    2978:	ae2c02d0 	sw	t4,720(s1)
    297c:	ac400004 	sw	zero,4(v0)
    2980:	ac4f0000 	sw	t7,0(v0)
    2984:	8e2202d0 	lw	v0,720(s1)
    2988:	37188080 	ori	t8,t8,0x8080
    298c:	3c0bfb00 	lui	t3,0xfb00
    2990:	244d0008 	addiu	t5,v0,8
    2994:	ae2d02d0 	sw	t5,720(s1)
    2998:	ac580000 	sw	t8,0(v0)
    299c:	9219022f 	lbu	t9,559(s0)
    29a0:	3c070000 	lui	a3,0x0
    29a4:	24e70000 	addiu	a3,a3,0
    29a8:	ac590004 	sw	t9,4(v0)
    29ac:	8e2202d0 	lw	v0,720(s1)
    29b0:	02402025 	move	a0,s2
    29b4:	244a0008 	addiu	t2,v0,8
    29b8:	ae2a02d0 	sw	t2,720(s1)
    29bc:	ac4b0000 	sw	t3,0(v0)
    29c0:	9218022d 	lbu	t8,557(s0)
    29c4:	920c022c 	lbu	t4,556(s0)
    29c8:	920b022e 	lbu	t3,558(s0)
    29cc:	00187400 	sll	t6,t8,0x10
    29d0:	9218022f 	lbu	t8,559(s0)
    29d4:	000c7e00 	sll	t7,t4,0x18
    29d8:	01eec825 	or	t9,t7,t6
    29dc:	000b4a00 	sll	t1,t3,0x8
    29e0:	03296025 	or	t4,t9,t1
    29e4:	01987825 	or	t7,t4,t8
    29e8:	ac4f0004 	sw	t7,4(v0)
    29ec:	8e2202d0 	lw	v0,720(s1)
    29f0:	3c0b0000 	lui	t3,0x0
    29f4:	3c0adb06 	lui	t2,0xdb06
    29f8:	244e0008 	addiu	t6,v0,8
    29fc:	ae2e02d0 	sw	t6,720(s1)
    2a00:	354a0020 	ori	t2,t2,0x20
    2a04:	256b0000 	addiu	t3,t3,0
    2a08:	ac4b0004 	sw	t3,4(v0)
    2a0c:	ac4a0000 	sw	t2,0(v0)
    2a10:	8e06016c 	lw	a2,364(s0)
    2a14:	8e050150 	lw	a1,336(s0)
    2a18:	afb00014 	sw	s0,20(sp)
    2a1c:	afa00010 	sw	zero,16(sp)
    2a20:	8e3902d0 	lw	t9,720(s1)
    2a24:	0c000000 	jal	0 <func_809CE6E0>
    2a28:	afb90018 	sw	t9,24(sp)
    2a2c:	ae2202d0 	sw	v0,720(s1)
    2a30:	3c010001 	lui	at,0x1
    2a34:	02414821 	addu	t1,s2,at
    2a38:	afa90050 	sw	t1,80(sp)
    2a3c:	8d381de4 	lw	t8,7652(t1)
    2a40:	860d001c 	lh	t5,28(s0)
    2a44:	3c010000 	lui	at,0x0
    2a48:	270f0001 	addiu	t7,t8,1
    2a4c:	31ee0003 	andi	t6,t7,0x3
    2a50:	15ae001e 	bne	t5,t6,2acc <EnBw_Draw+0x274>
    2a54:	00000000 	nop
    2a58:	c6040058 	lwc1	$f4,88(s0)
    2a5c:	c4260000 	lwc1	$f6,0(at)
    2a60:	27a400ac 	addiu	a0,sp,172
    2a64:	26050264 	addiu	a1,s0,612
    2a68:	46062202 	mul.s	$f8,$f4,$f6
    2a6c:	0c000000 	jal	0 <func_809CE6E0>
    2a70:	e7a800b4 	swc1	$f8,180(sp)
    2a74:	3c010000 	lui	at,0x0
    2a78:	c4300000 	lwc1	$f16,0(at)
    2a7c:	c60a0058 	lwc1	$f10,88(s0)
    2a80:	27a400ac 	addiu	a0,sp,172
    2a84:	26050270 	addiu	a1,s0,624
    2a88:	46105482 	mul.s	$f18,$f10,$f16
    2a8c:	0c000000 	jal	0 <func_809CE6E0>
    2a90:	e7b200b4 	swc1	$f18,180(sp)
    2a94:	3c010000 	lui	at,0x0
    2a98:	c4260000 	lwc1	$f6,0(at)
    2a9c:	c6040050 	lwc1	$f4,80(s0)
    2aa0:	27a400ac 	addiu	a0,sp,172
    2aa4:	26050288 	addiu	a1,s0,648
    2aa8:	46062202 	mul.s	$f8,$f4,$f6
    2aac:	0c000000 	jal	0 <func_809CE6E0>
    2ab0:	e7a800ac 	swc1	$f8,172(sp)
    2ab4:	c7aa00ac 	lwc1	$f10,172(sp)
    2ab8:	27a400ac 	addiu	a0,sp,172
    2abc:	2605027c 	addiu	a1,s0,636
    2ac0:	46005407 	neg.s	$f16,$f10
    2ac4:	0c000000 	jal	0 <func_809CE6E0>
    2ac8:	e7b000ac 	swc1	$f16,172(sp)
    2acc:	3c010000 	lui	at,0x0
    2ad0:	c4240000 	lwc1	$f4,0(at)
    2ad4:	c6120054 	lwc1	$f18,84(s0)
    2ad8:	3c01447a 	lui	at,0x447a
    2adc:	44814000 	mtc1	at,$f8
    2ae0:	46049181 	sub.s	$f6,$f18,$f4
    2ae4:	c6100028 	lwc1	$f16,40(s0)
    2ae8:	c60c0024 	lwc1	$f12,36(s0)
    2aec:	8e06002c 	lw	a2,44(s0)
    2af0:	46083282 	mul.s	$f10,$f6,$f8
    2af4:	00003825 	move	a3,zero
    2af8:	0c000000 	jal	0 <func_809CE6E0>
    2afc:	460a8380 	add.s	$f14,$f16,$f10
    2b00:	0c000000 	jal	0 <func_809CE6E0>
    2b04:	8e440000 	lw	a0,0(s2)
    2b08:	8e2202d0 	lw	v0,720(s1)
    2b0c:	3c0bfb00 	lui	t3,0xfb00
    2b10:	3c19ff00 	lui	t9,0xff00
    2b14:	244a0008 	addiu	t2,v0,8
    2b18:	ae2a02d0 	sw	t2,720(s1)
    2b1c:	ac4b0000 	sw	t3,0(v0)
    2b20:	ac590004 	sw	t9,4(v0)
    2b24:	8e2202d0 	lw	v0,720(s1)
    2b28:	3c0cdb06 	lui	t4,0xdb06
    2b2c:	358c0020 	ori	t4,t4,0x20
    2b30:	24490008 	addiu	t1,v0,8
    2b34:	ae2902d0 	sw	t1,720(s1)
    2b38:	ac4c0000 	sw	t4,0(v0)
    2b3c:	8e440000 	lw	a0,0(s2)
    2b40:	8fae0050 	lw	t6,80(sp)
    2b44:	24180020 	li	t8,32
    2b48:	240f0040 	li	t7,64
    2b4c:	240d0001 	li	t5,1
    2b50:	afad0018 	sw	t5,24(sp)
    2b54:	afaf0014 	sw	t7,20(sp)
    2b58:	afb80010 	sw	t8,16(sp)
    2b5c:	afa0001c 	sw	zero,28(sp)
    2b60:	8dca1de4 	lw	t2,7652(t6)
    2b64:	240c0080 	li	t4,128
    2b68:	24090020 	li	t1,32
    2b6c:	000a0823 	negu	at,t2
    2b70:	00015880 	sll	t3,at,0x2
    2b74:	01615821 	addu	t3,t3,at
    2b78:	000b5880 	sll	t3,t3,0x2
    2b7c:	317901ff 	andi	t9,t3,0x1ff
    2b80:	afb90020 	sw	t9,32(sp)
    2b84:	afa90024 	sw	t1,36(sp)
    2b88:	afac0028 	sw	t4,40(sp)
    2b8c:	00002825 	move	a1,zero
    2b90:	00003025 	move	a2,zero
    2b94:	00003825 	move	a3,zero
    2b98:	0c000000 	jal	0 <func_809CE6E0>
    2b9c:	afa20060 	sw	v0,96(sp)
    2ba0:	8fa30060 	lw	v1,96(sp)
    2ba4:	3c0ffa00 	lui	t7,0xfa00
    2ba8:	3c0dffff 	lui	t5,0xffff
    2bac:	ac620004 	sw	v0,4(v1)
    2bb0:	8e2202d0 	lw	v0,720(s1)
    2bb4:	35ad00ff 	ori	t5,t5,0xff
    2bb8:	35ef8080 	ori	t7,t7,0x8080
    2bbc:	24580008 	addiu	t8,v0,8
    2bc0:	ae3802d0 	sw	t8,720(s1)
    2bc4:	ac4d0004 	sw	t5,4(v0)
    2bc8:	ac4f0000 	sw	t7,0(v0)
    2bcc:	3c010000 	lui	at,0x0
    2bd0:	c4240000 	lwc1	$f4,0(at)
    2bd4:	c6120248 	lwc1	$f18,584(s0)
    2bd8:	24070001 	li	a3,1
    2bdc:	46049302 	mul.s	$f12,$f18,$f4
    2be0:	44066000 	mfc1	a2,$f12
    2be4:	0c000000 	jal	0 <func_809CE6E0>
    2be8:	46006386 	mov.s	$f14,$f12
    2bec:	3c010001 	lui	at,0x1
    2bf0:	34211da0 	ori	at,at,0x1da0
    2bf4:	0c000000 	jal	0 <func_809CE6E0>
    2bf8:	02412021 	addu	a0,s2,at
    2bfc:	8e2202d0 	lw	v0,720(s1)
    2c00:	3c0ada38 	lui	t2,0xda38
    2c04:	354a0003 	ori	t2,t2,0x3
    2c08:	244e0008 	addiu	t6,v0,8
    2c0c:	ae2e02d0 	sw	t6,720(s1)
    2c10:	ac4a0000 	sw	t2,0(v0)
    2c14:	8e440000 	lw	a0,0(s2)
    2c18:	3c050000 	lui	a1,0x0
    2c1c:	24a50000 	addiu	a1,a1,0
    2c20:	240605dc 	li	a2,1500
    2c24:	0c000000 	jal	0 <func_809CE6E0>
    2c28:	afa20058 	sw	v0,88(sp)
    2c2c:	8fa30058 	lw	v1,88(sp)
    2c30:	3c090405 	lui	t1,0x405
    2c34:	2529d4e0 	addiu	t1,t1,-11040
    2c38:	ac620004 	sw	v0,4(v1)
    2c3c:	8e2202d0 	lw	v0,720(s1)
    2c40:	3c19de00 	lui	t9,0xde00
    2c44:	244b0008 	addiu	t3,v0,8
    2c48:	ae2b02d0 	sw	t3,720(s1)
    2c4c:	ac490004 	sw	t1,4(v0)
    2c50:	ac590000 	sw	t9,0(v0)
    2c54:	920c023b 	lbu	t4,571(s0)
    2c58:	11800031 	beqz	t4,2d20 <EnBw_Draw+0x4c8>
    2c5c:	00000000 	nop
    2c60:	920d023b 	lbu	t5,571(s0)
    2c64:	92180114 	lbu	t8,276(s0)
    2c68:	3c190000 	lui	t9,0x0
    2c6c:	25aeffff 	addiu	t6,t5,-1
    2c70:	31c800ff 	andi	t0,t6,0xff
    2c74:	310a0003 	andi	t2,t0,0x3
    2c78:	270f0001 	addiu	t7,t8,1
    2c7c:	a20f0114 	sb	t7,276(s0)
    2c80:	15400027 	bnez	t2,2d20 <EnBw_Draw+0x4c8>
    2c84:	a20e023b 	sb	t6,571(s0)
    2c88:	00081883 	sra	v1,t0,0x2
    2c8c:	00035880 	sll	t3,v1,0x2
    2c90:	01635823 	subu	t3,t3,v1
    2c94:	000b5880 	sll	t3,t3,0x2
    2c98:	27390000 	addiu	t9,t9,0
    2c9c:	01791021 	addu	v0,t3,t9
    2ca0:	c4460000 	lwc1	$f6,0(v0)
    2ca4:	c6080024 	lwc1	$f8,36(s0)
    2ca8:	c44a0004 	lwc1	$f10,4(v0)
    2cac:	3c010000 	lui	at,0x0
    2cb0:	46083400 	add.s	$f16,$f6,$f8
    2cb4:	c4460008 	lwc1	$f6,8(v0)
    2cb8:	24090096 	li	t1,150
    2cbc:	240c0096 	li	t4,150
    2cc0:	e7b00098 	swc1	$f16,152(sp)
    2cc4:	c6120028 	lwc1	$f18,40(s0)
    2cc8:	241800fa 	li	t8,250
    2ccc:	240f00eb 	li	t7,235
    2cd0:	46125100 	add.s	$f4,$f10,$f18
    2cd4:	c42a0000 	lwc1	$f10,0(at)
    2cd8:	240d00f5 	li	t5,245
    2cdc:	240e00ff 	li	t6,255
    2ce0:	e7a4009c 	swc1	$f4,156(sp)
    2ce4:	c608002c 	lwc1	$f8,44(s0)
    2ce8:	afae0024 	sw	t6,36(sp)
    2cec:	afad0020 	sw	t5,32(sp)
    2cf0:	46083400 	add.s	$f16,$f6,$f8
    2cf4:	afaf001c 	sw	t7,28(sp)
    2cf8:	afb80018 	sw	t8,24(sp)
    2cfc:	afac0014 	sw	t4,20(sp)
    2d00:	e7b000a0 	swc1	$f16,160(sp)
    2d04:	afa90010 	sw	t1,16(sp)
    2d08:	02402025 	move	a0,s2
    2d0c:	02002825 	move	a1,s0
    2d10:	27a60098 	addiu	a2,sp,152
    2d14:	24070096 	li	a3,150
    2d18:	0c000000 	jal	0 <func_809CE6E0>
    2d1c:	e7aa0028 	swc1	$f10,40(sp)
    2d20:	3c060000 	lui	a2,0x0
    2d24:	24c60000 	addiu	a2,a2,0
    2d28:	27a40080 	addiu	a0,sp,128
    2d2c:	8e450000 	lw	a1,0(s2)
    2d30:	0c000000 	jal	0 <func_809CE6E0>
    2d34:	240705f1 	li	a3,1521
    2d38:	8fbf0044 	lw	ra,68(sp)
    2d3c:	8fb00038 	lw	s0,56(sp)
    2d40:	8fb1003c 	lw	s1,60(sp)
    2d44:	8fb20040 	lw	s2,64(sp)
    2d48:	03e00008 	jr	ra
    2d4c:	27bd00b8 	addiu	sp,sp,184
