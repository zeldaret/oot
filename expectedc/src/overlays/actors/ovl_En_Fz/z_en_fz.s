
build/src/overlays/actors/ovl_En_Fz/z_en_fz.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnFz_Init>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afb10018 	sw	s1,24(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf001c 	sw	ra,28(sp)
      10:	afb00014 	sw	s0,20(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnFz_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c0e0000 	lui	t6,0x0
      28:	25ce0000 	addiu	t6,t6,0
      2c:	240f0006 	li	t7,6
      30:	ae0e0098 	sw	t6,152(s0)
      34:	a20f00af 	sb	t7,175(s0)
      38:	26050150 	addiu	a1,s0,336
      3c:	afa50020 	sw	a1,32(sp)
      40:	0c000000 	jal	0 <EnFz_Init>
      44:	02202025 	move	a0,s1
      48:	3c070000 	lui	a3,0x0
      4c:	8fa50020 	lw	a1,32(sp)
      50:	24e70000 	addiu	a3,a3,0
      54:	02202025 	move	a0,s1
      58:	0c000000 	jal	0 <EnFz_Init>
      5c:	02003025 	move	a2,s0
      60:	2605019c 	addiu	a1,s0,412
      64:	afa50020 	sw	a1,32(sp)
      68:	0c000000 	jal	0 <EnFz_Init>
      6c:	02202025 	move	a0,s1
      70:	3c070000 	lui	a3,0x0
      74:	8fa50020 	lw	a1,32(sp)
      78:	24e70000 	addiu	a3,a3,0
      7c:	02202025 	move	a0,s1
      80:	0c000000 	jal	0 <EnFz_Init>
      84:	02003025 	move	a2,s0
      88:	260501e8 	addiu	a1,s0,488
      8c:	afa50020 	sw	a1,32(sp)
      90:	0c000000 	jal	0 <EnFz_Init>
      94:	02202025 	move	a0,s1
      98:	3c070000 	lui	a3,0x0
      9c:	8fa50020 	lw	a1,32(sp)
      a0:	24e70000 	addiu	a3,a3,0
      a4:	02202025 	move	a0,s1
      a8:	0c000000 	jal	0 <EnFz_Init>
      ac:	02003025 	move	a2,s0
      b0:	3c053c03 	lui	a1,0x3c03
      b4:	34a5126f 	ori	a1,a1,0x126f
      b8:	0c000000 	jal	0 <EnFz_Init>
      bc:	02002025 	move	a0,s0
      c0:	8e180004 	lw	t8,4(s0)
      c4:	2401fffe 	li	at,-2
      c8:	44801000 	mtc1	zero,$f2
      cc:	0301c824 	and	t9,t8,at
      d0:	c6000028 	lwc1	$f0,40(s0)
      d4:	8608001c 	lh	t0,28(s0)
      d8:	3c014307 	lui	at,0x4307
      dc:	c6040024 	lwc1	$f4,36(s0)
      e0:	c606002c 	lwc1	$f6,44(s0)
      e4:	44814000 	mtc1	at,$f8
      e8:	24020001 	li	v0,1
      ec:	240300ff 	li	v1,255
      f0:	a20300ae 	sb	v1,174(s0)
      f4:	ae190004 	sw	t9,4(s0)
      f8:	a6000242 	sh	zero,578(s0)
      fc:	a2000249 	sb	zero,585(s0)
     100:	a2020246 	sb	v0,582(s0)
     104:	a2000247 	sb	zero,583(s0)
     108:	a2000248 	sb	zero,584(s0)
     10c:	a2020261 	sb	v0,609(s0)
     110:	a2000262 	sb	zero,610(s0)
     114:	e6020068 	swc1	$f2,104(s0)
     118:	e602006c 	swc1	$f2,108(s0)
     11c:	e6020060 	swc1	$f2,96(s0)
     120:	e6000238 	swc1	$f0,568(s0)
     124:	e600024c 	swc1	$f0,588(s0)
     128:	e6040234 	swc1	$f4,564(s0)
     12c:	e606023c 	swc1	$f6,572(s0)
     130:	05010007 	bgez	t0,150 <EnFz_Init+0x150>
     134:	e6080250 	swc1	$f8,592(s0)
     138:	ae000258 	sw	zero,600(s0)
     13c:	e6020054 	swc1	$f2,84(s0)
     140:	0c000000 	jal	0 <EnFz_Init>
     144:	02002025 	move	a0,s0
     148:	10000005 	b	160 <EnFz_Init+0x160>
     14c:	02002025 	move	a0,s0
     150:	ae030258 	sw	v1,600(s0)
     154:	0c000000 	jal	0 <EnFz_Init>
     158:	02002025 	move	a0,s0
     15c:	02002025 	move	a0,s0
     160:	0c000000 	jal	0 <EnFz_Init>
     164:	02202825 	move	a1,s1
     168:	8fbf001c 	lw	ra,28(sp)
     16c:	8fb00014 	lw	s0,20(sp)
     170:	8fb10018 	lw	s1,24(sp)
     174:	03e00008 	jr	ra
     178:	27bd0028 	addiu	sp,sp,40

0000017c <EnFz_Destroy>:
     17c:	27bdffe8 	addiu	sp,sp,-24
     180:	afa40018 	sw	a0,24(sp)
     184:	afa5001c 	sw	a1,28(sp)
     188:	00a02025 	move	a0,a1
     18c:	8fa50018 	lw	a1,24(sp)
     190:	afbf0014 	sw	ra,20(sp)
     194:	0c000000 	jal	0 <EnFz_Init>
     198:	24a50150 	addiu	a1,a1,336
     19c:	8fa50018 	lw	a1,24(sp)
     1a0:	8fa4001c 	lw	a0,28(sp)
     1a4:	0c000000 	jal	0 <EnFz_Init>
     1a8:	24a5019c 	addiu	a1,a1,412
     1ac:	8fa50018 	lw	a1,24(sp)
     1b0:	8fa4001c 	lw	a0,28(sp)
     1b4:	0c000000 	jal	0 <EnFz_Init>
     1b8:	24a501e8 	addiu	a1,a1,488
     1bc:	8fbf0014 	lw	ra,20(sp)
     1c0:	27bd0018 	addiu	sp,sp,24
     1c4:	03e00008 	jr	ra
     1c8:	00000000 	nop

000001cc <func_80A1FF8C>:
     1cc:	27bdff98 	addiu	sp,sp,-104
     1d0:	afbf0034 	sw	ra,52(sp)
     1d4:	afb00030 	sw	s0,48(sp)
     1d8:	afa5006c 	sw	a1,108(sp)
     1dc:	c4840024 	lwc1	$f4,36(a0)
     1e0:	3c0141a0 	lui	at,0x41a0
     1e4:	44814000 	mtc1	at,$f8
     1e8:	e7a4005c 	swc1	$f4,92(sp)
     1ec:	c4860028 	lwc1	$f6,40(a0)
     1f0:	00808025 	move	s0,a0
     1f4:	c7ac005c 	lwc1	$f12,92(sp)
     1f8:	46083280 	add.s	$f10,$f6,$f8
     1fc:	00003825 	move	a3,zero
     200:	e7aa0060 	swc1	$f10,96(sp)
     204:	c490002c 	lwc1	$f16,44(a0)
     208:	c7ae0060 	lwc1	$f14,96(sp)
     20c:	e7b00064 	swc1	$f16,100(sp)
     210:	0c000000 	jal	0 <EnFz_Init>
     214:	8fa60064 	lw	a2,100(sp)
     218:	860400b4 	lh	a0,180(s0)
     21c:	860500b6 	lh	a1,182(s0)
     220:	860600b8 	lh	a2,184(s0)
     224:	0c000000 	jal	0 <EnFz_Init>
     228:	24070001 	li	a3,1
     22c:	44800000 	mtc1	zero,$f0
     230:	3c01435c 	lui	at,0x435c
     234:	44819000 	mtc1	at,$f18
     238:	26050264 	addiu	a1,s0,612
     23c:	afa50038 	sw	a1,56(sp)
     240:	27a40044 	addiu	a0,sp,68
     244:	e7a00048 	swc1	$f0,72(sp)
     248:	e7a00044 	swc1	$f0,68(sp)
     24c:	0c000000 	jal	0 <EnFz_Init>
     250:	e7b2004c 	swc1	$f18,76(sp)
     254:	8fa4006c 	lw	a0,108(sp)
     258:	27ae003c 	addiu	t6,sp,60
     25c:	240f0001 	li	t7,1
     260:	24180001 	li	t8,1
     264:	27b90040 	addiu	t9,sp,64
     268:	afb90024 	sw	t9,36(sp)
     26c:	afb80020 	sw	t8,32(sp)
     270:	afaf0014 	sw	t7,20(sp)
     274:	afae0010 	sw	t6,16(sp)
     278:	27a5005c 	addiu	a1,sp,92
     27c:	8fa60038 	lw	a2,56(sp)
     280:	27a70050 	addiu	a3,sp,80
     284:	afa00018 	sw	zero,24(sp)
     288:	afa0001c 	sw	zero,28(sp)
     28c:	0c000000 	jal	0 <EnFz_Init>
     290:	248407c0 	addiu	a0,a0,1984
     294:	10400003 	beqz	v0,2a4 <func_80A1FF8C+0xd8>
     298:	8fa40038 	lw	a0,56(sp)
     29c:	0c000000 	jal	0 <EnFz_Init>
     2a0:	27a50050 	addiu	a1,sp,80
     2a4:	c6040024 	lwc1	$f4,36(s0)
     2a8:	c6060264 	lwc1	$f6,612(s0)
     2ac:	46062201 	sub.s	$f8,$f4,$f6
     2b0:	e7a8005c 	swc1	$f8,92(sp)
     2b4:	c610026c 	lwc1	$f16,620(s0)
     2b8:	c60a002c 	lwc1	$f10,44(s0)
     2bc:	c7a4005c 	lwc1	$f4,92(sp)
     2c0:	46105481 	sub.s	$f18,$f10,$f16
     2c4:	46042182 	mul.s	$f6,$f4,$f4
     2c8:	e7b20064 	swc1	$f18,100(sp)
     2cc:	c7a80064 	lwc1	$f8,100(sp)
     2d0:	46084282 	mul.s	$f10,$f8,$f8
     2d4:	460a3400 	add.s	$f16,$f6,$f10
     2d8:	e6100270 	swc1	$f16,624(s0)
     2dc:	8fbf0034 	lw	ra,52(sp)
     2e0:	8fb00030 	lw	s0,48(sp)
     2e4:	27bd0068 	addiu	sp,sp,104
     2e8:	03e00008 	jr	ra
     2ec:	00000000 	nop

000002f0 <func_80A200B0>:
     2f0:	c4840024 	lwc1	$f4,36(a0)
     2f4:	c4a60000 	lwc1	$f6,0(a1)
     2f8:	c488002c 	lwc1	$f8,44(a0)
     2fc:	c4aa0008 	lwc1	$f10,8(a1)
     300:	46062001 	sub.s	$f0,$f4,$f6
     304:	c4860270 	lwc1	$f6,624(a0)
     308:	00001025 	move	v0,zero
     30c:	460a4081 	sub.s	$f2,$f8,$f10
     310:	46000402 	mul.s	$f16,$f0,$f0
     314:	00000000 	nop
     318:	46021482 	mul.s	$f18,$f2,$f2
     31c:	46128100 	add.s	$f4,$f16,$f18
     320:	4604303e 	c.le.s	$f6,$f4
     324:	00000000 	nop
     328:	45000003 	bc1f	338 <func_80A200B0+0x48>
     32c:	00000000 	nop
     330:	03e00008 	jr	ra
     334:	24020001 	li	v0,1
     338:	03e00008 	jr	ra
     33c:	00000000 	nop

00000340 <func_80A20100>:
     340:	27bdff48 	addiu	sp,sp,-184
     344:	44800000 	mtc1	zero,$f0
     348:	3c01bf80 	lui	at,0xbf80
     34c:	44812000 	mtc1	at,$f4
     350:	afb30064 	sw	s3,100(sp)
     354:	afb20060 	sw	s2,96(sp)
     358:	afb00058 	sw	s0,88(sp)
     35c:	240e009b 	li	t6,155
     360:	240f00ff 	li	t7,255
     364:	241800ff 	li	t8,255
     368:	241900ff 	li	t9,255
     36c:	240800c8 	li	t0,200
     370:	240900c8 	li	t1,200
     374:	240a00c8 	li	t2,200
     378:	00c09025 	move	s2,a2
     37c:	00e09825 	move	s3,a3
     380:	afbf007c 	sw	ra,124(sp)
     384:	afbe0078 	sw	s8,120(sp)
     388:	afb70074 	sw	s7,116(sp)
     38c:	afb60070 	sw	s6,112(sp)
     390:	afb5006c 	sw	s5,108(sp)
     394:	afb40068 	sw	s4,104(sp)
     398:	afb1005c 	sw	s1,92(sp)
     39c:	f7be0050 	sdc1	$f30,80(sp)
     3a0:	f7bc0048 	sdc1	$f28,72(sp)
     3a4:	f7ba0040 	sdc1	$f26,64(sp)
     3a8:	f7b80038 	sdc1	$f24,56(sp)
     3ac:	f7b60030 	sdc1	$f22,48(sp)
     3b0:	f7b40028 	sdc1	$f20,40(sp)
     3b4:	afa400b8 	sw	a0,184(sp)
     3b8:	afa500bc 	sw	a1,188(sp)
     3bc:	a3ae008c 	sb	t6,140(sp)
     3c0:	a3af008d 	sb	t7,141(sp)
     3c4:	a3b8008e 	sb	t8,142(sp)
     3c8:	a3b9008f 	sb	t9,143(sp)
     3cc:	a3a80088 	sb	t0,136(sp)
     3d0:	a3a90089 	sb	t1,137(sp)
     3d4:	a3aa008a 	sb	t2,138(sp)
     3d8:	00008025 	move	s0,zero
     3dc:	e7a00098 	swc1	$f0,152(sp)
     3e0:	e7a00090 	swc1	$f0,144(sp)
     3e4:	18e0003e 	blez	a3,4e0 <func_80A20100+0x1a0>
     3e8:	e7a40094 	swc1	$f4,148(sp)
     3ec:	3c0140a0 	lui	at,0x40a0
     3f0:	4481f000 	mtc1	at,$f30
     3f4:	3c010000 	lui	at,0x0
     3f8:	c43c0000 	lwc1	$f28,0(at)
     3fc:	3c010000 	lui	at,0x0
     400:	c43a0000 	lwc1	$f26,0(at)
     404:	3c014120 	lui	at,0x4120
     408:	4481b000 	mtc1	at,$f22
     40c:	c7b400c8 	lwc1	$f20,200(sp)
     410:	27be0088 	addiu	s8,sp,136
     414:	27b7008c 	addiu	s7,sp,140
     418:	27b60090 	addiu	s6,sp,144
     41c:	27b5009c 	addiu	s5,sp,156
     420:	27b400a8 	addiu	s4,sp,168
     424:	0c000000 	jal	0 <EnFz_Init>
     428:	4600d306 	mov.s	$f12,$f26
     42c:	461c0600 	add.s	$f24,$f0,$f28
     430:	0c000000 	jal	0 <EnFz_Init>
     434:	4600f306 	mov.s	$f12,$f30
     438:	4600018d 	trunc.w.s	$f6,$f0
     43c:	4600a306 	mov.s	$f12,$f20
     440:	44113000 	mfc1	s1,$f6
     444:	0c000000 	jal	0 <EnFz_Init>
     448:	2631000c 	addiu	s1,s1,12
     44c:	c6480000 	lwc1	$f8,0(s2)
     450:	4600a306 	mov.s	$f12,$f20
     454:	46080280 	add.s	$f10,$f0,$f8
     458:	0c000000 	jal	0 <EnFz_Init>
     45c:	e7aa00a8 	swc1	$f10,168(sp)
     460:	c6500004 	lwc1	$f16,4(s2)
     464:	4600a306 	mov.s	$f12,$f20
     468:	46100480 	add.s	$f18,$f0,$f16
     46c:	0c000000 	jal	0 <EnFz_Init>
     470:	e7b200ac 	swc1	$f18,172(sp)
     474:	c6440008 	lwc1	$f4,8(s2)
     478:	4600b306 	mov.s	$f12,$f22
     47c:	46040180 	add.s	$f6,$f0,$f4
     480:	0c000000 	jal	0 <EnFz_Init>
     484:	e7a600b0 	swc1	$f6,176(sp)
     488:	e7a0009c 	swc1	$f0,156(sp)
     48c:	0c000000 	jal	0 <EnFz_Init>
     490:	4600b306 	mov.s	$f12,$f22
     494:	3c014000 	lui	at,0x4000
     498:	44814000 	mtc1	at,$f8
     49c:	4600b306 	mov.s	$f12,$f22
     4a0:	46080280 	add.s	$f10,$f0,$f8
     4a4:	0c000000 	jal	0 <EnFz_Init>
     4a8:	e7aa00a0 	swc1	$f10,160(sp)
     4ac:	4406c000 	mfc1	a2,$f24
     4b0:	e7a000a4 	swc1	$f0,164(sp)
     4b4:	8fa400bc 	lw	a0,188(sp)
     4b8:	02802825 	move	a1,s4
     4bc:	02a03825 	move	a3,s5
     4c0:	afb60010 	sw	s6,16(sp)
     4c4:	afb70014 	sw	s7,20(sp)
     4c8:	afbe0018 	sw	s8,24(sp)
     4cc:	0c000000 	jal	0 <EnFz_Init>
     4d0:	afb1001c 	sw	s1,28(sp)
     4d4:	26100001 	addiu	s0,s0,1
     4d8:	1613ffd2 	bne	s0,s3,424 <func_80A20100+0xe4>
     4dc:	00000000 	nop
     4e0:	8fa400bc 	lw	a0,188(sp)
     4e4:	0c000000 	jal	0 <EnFz_Init>
     4e8:	02402825 	move	a1,s2
     4ec:	8fbf007c 	lw	ra,124(sp)
     4f0:	d7b40028 	ldc1	$f20,40(sp)
     4f4:	d7b60030 	ldc1	$f22,48(sp)
     4f8:	d7b80038 	ldc1	$f24,56(sp)
     4fc:	d7ba0040 	ldc1	$f26,64(sp)
     500:	d7bc0048 	ldc1	$f28,72(sp)
     504:	d7be0050 	ldc1	$f30,80(sp)
     508:	8fb00058 	lw	s0,88(sp)
     50c:	8fb1005c 	lw	s1,92(sp)
     510:	8fb20060 	lw	s2,96(sp)
     514:	8fb30064 	lw	s3,100(sp)
     518:	8fb40068 	lw	s4,104(sp)
     51c:	8fb5006c 	lw	s5,108(sp)
     520:	8fb60070 	lw	s6,112(sp)
     524:	8fb70074 	lw	s7,116(sp)
     528:	8fbe0078 	lw	s8,120(sp)
     52c:	03e00008 	jr	ra
     530:	27bd00b8 	addiu	sp,sp,184

00000534 <L80A202F4>:
     534:	03e00008 	jr	ra
     538:	afa40000 	sw	a0,0(sp)

0000053c <func_80A202FC>:
     53c:	27bdffb0 	addiu	sp,sp,-80
     540:	afbf0024 	sw	ra,36(sp)
     544:	afb00020 	sw	s0,32(sp)
     548:	848e0240 	lh	t6,576(a0)
     54c:	00808025 	move	s0,a0
     550:	3c014220 	lui	at,0x4220
     554:	31cf000f 	andi	t7,t6,0xf
     558:	55e0002c 	bnezl	t7,60c <func_80A202FC+0xd0>
     55c:	8fbf0024 	lw	ra,36(sp)
     560:	44816000 	mtc1	at,$f12
     564:	0c000000 	jal	0 <EnFz_Init>
     568:	00000000 	nop
     56c:	c6040024 	lwc1	$f4,36(s0)
     570:	3c014220 	lui	at,0x4220
     574:	44816000 	mtc1	at,$f12
     578:	46040180 	add.s	$f6,$f0,$f4
     57c:	0c000000 	jal	0 <EnFz_Init>
     580:	e7a60044 	swc1	$f6,68(sp)
     584:	c6080028 	lwc1	$f8,40(s0)
     588:	3c0141f0 	lui	at,0x41f0
     58c:	44818000 	mtc1	at,$f16
     590:	46080280 	add.s	$f10,$f0,$f8
     594:	3c014220 	lui	at,0x4220
     598:	44816000 	mtc1	at,$f12
     59c:	46105480 	add.s	$f18,$f10,$f16
     5a0:	0c000000 	jal	0 <EnFz_Init>
     5a4:	e7b20048 	swc1	$f18,72(sp)
     5a8:	c604002c 	lwc1	$f4,44(s0)
     5ac:	44801000 	mtc1	zero,$f2
     5b0:	3c010000 	lui	at,0x0
     5b4:	46040180 	add.s	$f6,$f0,$f4
     5b8:	c4280000 	lwc1	$f8,0(at)
     5bc:	3c0140f0 	lui	at,0x40f0
     5c0:	44816000 	mtc1	at,$f12
     5c4:	e7a6004c 	swc1	$f6,76(sp)
     5c8:	e7a20034 	swc1	$f2,52(sp)
     5cc:	e7a2002c 	swc1	$f2,44(sp)
     5d0:	e7a20040 	swc1	$f2,64(sp)
     5d4:	e7a2003c 	swc1	$f2,60(sp)
     5d8:	e7a20038 	swc1	$f2,56(sp)
     5dc:	0c000000 	jal	0 <EnFz_Init>
     5e0:	e7a80030 	swc1	$f8,48(sp)
     5e4:	3c014170 	lui	at,0x4170
     5e8:	44815000 	mtc1	at,$f10
     5ec:	02002025 	move	a0,s0
     5f0:	27a50044 	addiu	a1,sp,68
     5f4:	460a0400 	add.s	$f16,$f0,$f10
     5f8:	27a60038 	addiu	a2,sp,56
     5fc:	27a7002c 	addiu	a3,sp,44
     600:	0c000000 	jal	0 <EnFz_Init>
     604:	e7b00010 	swc1	$f16,16(sp)
     608:	8fbf0024 	lw	ra,36(sp)
     60c:	8fb00020 	lw	s0,32(sp)
     610:	27bd0050 	addiu	sp,sp,80
     614:	03e00008 	jr	ra
     618:	00000000 	nop

0000061c <func_80A203DC>:
     61c:	27bdffb0 	addiu	sp,sp,-80
     620:	afbf0024 	sw	ra,36(sp)
     624:	afb00020 	sw	s0,32(sp)
     628:	848e0240 	lh	t6,576(a0)
     62c:	00808025 	move	s0,a0
     630:	3c014220 	lui	at,0x4220
     634:	31cf0003 	andi	t7,t6,0x3
     638:	55e00025 	bnezl	t7,6d0 <func_80A203DC+0xb4>
     63c:	8fbf0024 	lw	ra,36(sp)
     640:	44816000 	mtc1	at,$f12
     644:	0c000000 	jal	0 <EnFz_Init>
     648:	00000000 	nop
     64c:	c6040024 	lwc1	$f4,36(s0)
     650:	3c014220 	lui	at,0x4220
     654:	44816000 	mtc1	at,$f12
     658:	46040180 	add.s	$f6,$f0,$f4
     65c:	e7a60044 	swc1	$f6,68(sp)
     660:	c608024c 	lwc1	$f8,588(s0)
     664:	0c000000 	jal	0 <EnFz_Init>
     668:	e7a80048 	swc1	$f8,72(sp)
     66c:	c60a002c 	lwc1	$f10,44(s0)
     670:	44801000 	mtc1	zero,$f2
     674:	3c010000 	lui	at,0x0
     678:	460a0400 	add.s	$f16,$f0,$f10
     67c:	c4320000 	lwc1	$f18,0(at)
     680:	3c0140f0 	lui	at,0x40f0
     684:	44816000 	mtc1	at,$f12
     688:	e7b0004c 	swc1	$f16,76(sp)
     68c:	e7a20034 	swc1	$f2,52(sp)
     690:	e7a2002c 	swc1	$f2,44(sp)
     694:	e7a20040 	swc1	$f2,64(sp)
     698:	e7a2003c 	swc1	$f2,60(sp)
     69c:	e7a20038 	swc1	$f2,56(sp)
     6a0:	0c000000 	jal	0 <EnFz_Init>
     6a4:	e7b20030 	swc1	$f18,48(sp)
     6a8:	3c014170 	lui	at,0x4170
     6ac:	44812000 	mtc1	at,$f4
     6b0:	02002025 	move	a0,s0
     6b4:	27a50044 	addiu	a1,sp,68
     6b8:	46040180 	add.s	$f6,$f0,$f4
     6bc:	27a60038 	addiu	a2,sp,56
     6c0:	27a7002c 	addiu	a3,sp,44
     6c4:	0c000000 	jal	0 <EnFz_Init>
     6c8:	e7a60010 	swc1	$f6,16(sp)
     6cc:	8fbf0024 	lw	ra,36(sp)
     6d0:	8fb00020 	lw	s0,32(sp)
     6d4:	27bd0050 	addiu	sp,sp,80
     6d8:	03e00008 	jr	ra
     6dc:	00000000 	nop

000006e0 <func_80A204A0>:
     6e0:	27bdffc0 	addiu	sp,sp,-64
     6e4:	afbf0024 	sw	ra,36(sp)
     6e8:	afb00020 	sw	s0,32(sp)
     6ec:	afa50044 	sw	a1,68(sp)
     6f0:	908e0247 	lbu	t6,583(a0)
     6f4:	00808025 	move	s0,a0
     6f8:	51c00012 	beqzl	t6,744 <func_80A204A0+0x64>
     6fc:	92190248 	lbu	t9,584(s0)
     700:	94820088 	lhu	v0,136(a0)
     704:	3c064270 	lui	a2,0x4270
     708:	304f0008 	andi	t7,v0,0x8
     70c:	55e00007 	bnezl	t7,72c <func_80A204A0+0x4c>
     710:	44800000 	mtc1	zero,$f0
     714:	0c000000 	jal	0 <EnFz_Init>
     718:	86070032 	lh	a3,50(s0)
     71c:	54400009 	bnezl	v0,744 <func_80A204A0+0x64>
     720:	92190248 	lbu	t9,584(s0)
     724:	96020088 	lhu	v0,136(s0)
     728:	44800000 	mtc1	zero,$f0
     72c:	3058fff7 	andi	t8,v0,0xfff7
     730:	a6180088 	sh	t8,136(s0)
     734:	a2000247 	sb	zero,583(s0)
     738:	e6000254 	swc1	$f0,596(s0)
     73c:	e6000068 	swc1	$f0,104(s0)
     740:	92190248 	lbu	t9,584(s0)
     744:	44800000 	mtc1	zero,$f0
     748:	5320007a 	beqzl	t9,934 <func_80A204A0+0x254>
     74c:	8fbf0024 	lw	ra,36(sp)
     750:	8608001c 	lh	t0,28(s0)
     754:	05030012 	bgezl	t0,7a0 <func_80A204A0+0xc0>
     758:	920201ad 	lbu	v0,429(s0)
     75c:	92090160 	lbu	t1,352(s0)
     760:	240d000a 	li	t5,10
     764:	02002025 	move	a0,s0
     768:	312a0002 	andi	t2,t1,0x2
     76c:	5140000c 	beqzl	t2,7a0 <func_80A204A0+0xc0>
     770:	920201ad 	lbu	v0,429(s0)
     774:	920b0161 	lbu	t3,353(s0)
     778:	a2000247 	sb	zero,583(s0)
     77c:	e6000254 	swc1	$f0,596(s0)
     780:	316cfffd 	andi	t4,t3,0xfffd
     784:	a20c0161 	sb	t4,353(s0)
     788:	e6000068 	swc1	$f0,104(s0)
     78c:	0c000000 	jal	0 <EnFz_Init>
     790:	a60d0244 	sh	t5,580(s0)
     794:	10000067 	b	934 <func_80A204A0+0x254>
     798:	8fbf0024 	lw	ra,36(sp)
     79c:	920201ad 	lbu	v0,429(s0)
     7a0:	304e0080 	andi	t6,v0,0x80
     7a4:	51c00008 	beqzl	t6,7c8 <func_80A204A0+0xe8>
     7a8:	92020161 	lbu	v0,353(s0)
     7ac:	92180161 	lbu	t8,353(s0)
     7b0:	304fff7f 	andi	t7,v0,0xff7f
     7b4:	a20f01ad 	sb	t7,429(s0)
     7b8:	3319fffd 	andi	t9,t8,0xfffd
     7bc:	1000005c 	b	930 <func_80A204A0+0x250>
     7c0:	a2190161 	sb	t9,353(s0)
     7c4:	92020161 	lbu	v0,353(s0)
     7c8:	30480002 	andi	t0,v0,0x2
     7cc:	51000059 	beqzl	t0,934 <func_80A204A0+0x254>
     7d0:	8fbf0024 	lw	ra,36(sp)
     7d4:	920300b1 	lbu	v1,177(s0)
     7d8:	3049fffd 	andi	t1,v0,0xfffd
     7dc:	24010002 	li	at,2
     7e0:	1061003d 	beq	v1,at,8d8 <func_80A204A0+0x1f8>
     7e4:	a2090161 	sb	t1,353(s0)
     7e8:	2401000f 	li	at,15
     7ec:	54610051 	bnel	v1,at,934 <func_80A204A0+0x254>
     7f0:	8fbf0024 	lw	ra,36(sp)
     7f4:	0c000000 	jal	0 <EnFz_Init>
     7f8:	02002025 	move	a0,s0
     7fc:	240a0008 	li	t2,8
     800:	afaa0010 	sw	t2,16(sp)
     804:	02002025 	move	a0,s0
     808:	24054000 	li	a1,16384
     80c:	240600ff 	li	a2,255
     810:	0c000000 	jal	0 <EnFz_Init>
     814:	24072000 	li	a3,8192
     818:	920b00af 	lbu	t3,175(s0)
     81c:	240539a5 	li	a1,14757
     820:	02002025 	move	a0,s0
     824:	11600014 	beqz	t3,878 <func_80A204A0+0x198>
     828:	00000000 	nop
     82c:	0c000000 	jal	0 <EnFz_Init>
     830:	02002025 	move	a0,s0
     834:	c6040024 	lwc1	$f4,36(s0)
     838:	44805000 	mtc1	zero,$f10
     83c:	02002025 	move	a0,s0
     840:	e7a40034 	swc1	$f4,52(sp)
     844:	c6060028 	lwc1	$f6,40(s0)
     848:	8fa50044 	lw	a1,68(sp)
     84c:	27a60034 	addiu	a2,sp,52
     850:	e7a60038 	swc1	$f6,56(sp)
     854:	c608002c 	lwc1	$f8,44(s0)
     858:	2407000a 	li	a3,10
     85c:	e7aa0010 	swc1	$f10,16(sp)
     860:	0c000000 	jal	0 <EnFz_Init>
     864:	e7a8003c 	swc1	$f8,60(sp)
     868:	920c0249 	lbu	t4,585(s0)
     86c:	258d0001 	addiu	t5,t4,1
     870:	1000002f 	b	930 <func_80A204A0+0x250>
     874:	a20d0249 	sb	t5,585(s0)
     878:	0c000000 	jal	0 <EnFz_Init>
     87c:	240539a6 	li	a1,14758
     880:	02002025 	move	a0,s0
     884:	0c000000 	jal	0 <EnFz_Init>
     888:	240528cb 	li	a1,10443
     88c:	c6100024 	lwc1	$f16,36(s0)
     890:	3c014120 	lui	at,0x4120
     894:	44813000 	mtc1	at,$f6
     898:	e7b00034 	swc1	$f16,52(sp)
     89c:	c6120028 	lwc1	$f18,40(s0)
     8a0:	02002025 	move	a0,s0
     8a4:	8fa50044 	lw	a1,68(sp)
     8a8:	e7b20038 	swc1	$f18,56(sp)
     8ac:	c604002c 	lwc1	$f4,44(s0)
     8b0:	27a60034 	addiu	a2,sp,52
     8b4:	2407001e 	li	a3,30
     8b8:	e7a60010 	swc1	$f6,16(sp)
     8bc:	0c000000 	jal	0 <EnFz_Init>
     8c0:	e7a4003c 	swc1	$f4,60(sp)
     8c4:	02002025 	move	a0,s0
     8c8:	0c000000 	jal	0 <EnFz_Init>
     8cc:	8fa50044 	lw	a1,68(sp)
     8d0:	10000018 	b	934 <func_80A204A0+0x254>
     8d4:	8fbf0024 	lw	ra,36(sp)
     8d8:	0c000000 	jal	0 <EnFz_Init>
     8dc:	02002025 	move	a0,s0
     8e0:	240e0008 	li	t6,8
     8e4:	afae0010 	sw	t6,16(sp)
     8e8:	02002025 	move	a0,s0
     8ec:	24054000 	li	a1,16384
     8f0:	240600ff 	li	a2,255
     8f4:	0c000000 	jal	0 <EnFz_Init>
     8f8:	24072000 	li	a3,8192
     8fc:	920f00af 	lbu	t7,175(s0)
     900:	240539a6 	li	a1,14758
     904:	02002025 	move	a0,s0
     908:	15e00007 	bnez	t7,928 <func_80A204A0+0x248>
     90c:	00000000 	nop
     910:	0c000000 	jal	0 <EnFz_Init>
     914:	02002025 	move	a0,s0
     918:	0c000000 	jal	0 <EnFz_Init>
     91c:	02002025 	move	a0,s0
     920:	10000004 	b	934 <func_80A204A0+0x254>
     924:	8fbf0024 	lw	ra,36(sp)
     928:	0c000000 	jal	0 <EnFz_Init>
     92c:	240539a5 	li	a1,14757
     930:	8fbf0024 	lw	ra,36(sp)
     934:	8fb00020 	lw	s0,32(sp)
     938:	27bd0040 	addiu	sp,sp,64
     93c:	03e00008 	jr	ra
     940:	00000000 	nop

00000944 <func_80A20704>:
     944:	27bdffe0 	addiu	sp,sp,-32
     948:	afbf001c 	sw	ra,28(sp)
     94c:	afa40020 	sw	a0,32(sp)
     950:	00807025 	move	t6,a0
     954:	85c5008a 	lh	a1,138(t6)
     958:	afa00010 	sw	zero,16(sp)
     95c:	248400b6 	addiu	a0,a0,182
     960:	2406000a 	li	a2,10
     964:	0c000000 	jal	0 <EnFz_Init>
     968:	240707d0 	li	a3,2000
     96c:	8fa20020 	lw	v0,32(sp)
     970:	844f00b6 	lh	t7,182(v0)
     974:	a44f0032 	sh	t7,50(v0)
     978:	8fbf001c 	lw	ra,28(sp)
     97c:	27bd0020 	addiu	sp,sp,32
     980:	03e00008 	jr	ra
     984:	00000000 	nop

00000988 <func_80A20748>:
     988:	8c8f0004 	lw	t7,4(a0)
     98c:	2401fffe 	li	at,-2
     990:	3c190000 	lui	t9,0x0
     994:	240e0002 	li	t6,2
     998:	27390000 	addiu	t9,t9,0
     99c:	01e1c024 	and	t8,t7,at
     9a0:	a08e0260 	sb	t6,608(a0)
     9a4:	a0800248 	sb	zero,584(a0)
     9a8:	ac980004 	sw	t8,4(a0)
     9ac:	03e00008 	jr	ra
     9b0:	ac99014c 	sw	t9,332(a0)

000009b4 <func_80A20774>:
     9b4:	27bdffd8 	addiu	sp,sp,-40
     9b8:	afbf0024 	sw	ra,36(sp)
     9bc:	afb00020 	sw	s0,32(sp)
     9c0:	afa5002c 	sw	a1,44(sp)
     9c4:	8c8e0258 	lw	t6,600(a0)
     9c8:	00808025 	move	s0,a0
     9cc:	24050000 	li	a1,0
     9d0:	25cffff0 	addiu	t7,t6,-16
     9d4:	2de10100 	sltiu	at,t7,256
     9d8:	14200002 	bnez	at,9e4 <func_80A20774+0x30>
     9dc:	ac8f0258 	sw	t7,600(a0)
     9e0:	ac800258 	sw	zero,600(a0)
     9e4:	44802000 	mtc1	zero,$f4
     9e8:	3c073a03 	lui	a3,0x3a03
     9ec:	34e7126f 	ori	a3,a3,0x126f
     9f0:	26040054 	addiu	a0,s0,84
     9f4:	3c063f80 	lui	a2,0x3f80
     9f8:	0c000000 	jal	0 <EnFz_Init>
     9fc:	e7a40010 	swc1	$f4,16(sp)
     a00:	44803000 	mtc1	zero,$f6
     a04:	00000000 	nop
     a08:	46060032 	c.eq.s	$f0,$f6
     a0c:	00000000 	nop
     a10:	45020004 	bc1fl	a24 <func_80A20774+0x70>
     a14:	8fbf0024 	lw	ra,36(sp)
     a18:	0c000000 	jal	0 <EnFz_Init>
     a1c:	02002025 	move	a0,s0
     a20:	8fbf0024 	lw	ra,36(sp)
     a24:	8fb00020 	lw	s0,32(sp)
     a28:	27bd0028 	addiu	sp,sp,40
     a2c:	03e00008 	jr	ra
     a30:	00000000 	nop

00000a34 <func_80A207F4>:
     a34:	c4840234 	lwc1	$f4,564(a0)
     a38:	c4860238 	lwc1	$f6,568(a0)
     a3c:	c488023c 	lwc1	$f8,572(a0)
     a40:	3c0f0000 	lui	t7,0x0
     a44:	240e0064 	li	t6,100
     a48:	25ef0000 	addiu	t7,t7,0
     a4c:	a0800260 	sb	zero,608(a0)
     a50:	a480025e 	sh	zero,606(a0)
     a54:	a480025c 	sh	zero,604(a0)
     a58:	a48e0244 	sh	t6,580(a0)
     a5c:	ac8f014c 	sw	t7,332(a0)
     a60:	e4840024 	swc1	$f4,36(a0)
     a64:	e4860028 	swc1	$f6,40(a0)
     a68:	03e00008 	jr	ra
     a6c:	e488002c 	swc1	$f8,44(a0)

00000a70 <func_80A20830>:
     a70:	27bdffe8 	addiu	sp,sp,-24
     a74:	afbf0014 	sw	ra,20(sp)
     a78:	afa5001c 	sw	a1,28(sp)
     a7c:	848e0244 	lh	t6,580(a0)
     a80:	3c0143c8 	lui	at,0x43c8
     a84:	55c0000b 	bnezl	t6,ab4 <func_80A20830+0x44>
     a88:	8fbf0014 	lw	ra,20(sp)
     a8c:	c4840090 	lwc1	$f4,144(a0)
     a90:	44813000 	mtc1	at,$f6
     a94:	00000000 	nop
     a98:	4606203c 	c.lt.s	$f4,$f6
     a9c:	00000000 	nop
     aa0:	45020004 	bc1fl	ab4 <func_80A20830+0x44>
     aa4:	8fbf0014 	lw	ra,20(sp)
     aa8:	0c000000 	jal	0 <EnFz_Init>
     aac:	00000000 	nop
     ab0:	8fbf0014 	lw	ra,20(sp)
     ab4:	27bd0018 	addiu	sp,sp,24
     ab8:	03e00008 	jr	ra
     abc:	00000000 	nop

00000ac0 <func_80A20880>:
     ac0:	3c190000 	lui	t9,0x0
     ac4:	240e0002 	li	t6,2
     ac8:	240f0014 	li	t7,20
     acc:	24180fa0 	li	t8,4000
     ad0:	27390000 	addiu	t9,t9,0
     ad4:	a08e0260 	sb	t6,608(a0)
     ad8:	a48f0244 	sh	t7,580(a0)
     adc:	a498025e 	sh	t8,606(a0)
     ae0:	03e00008 	jr	ra
     ae4:	ac99014c 	sw	t9,332(a0)

00000ae8 <func_80A208A8>:
     ae8:	27bdffd8 	addiu	sp,sp,-40
     aec:	afbf0024 	sw	ra,36(sp)
     af0:	afb00020 	sw	s0,32(sp)
     af4:	afa5002c 	sw	a1,44(sp)
     af8:	848e0244 	lh	t6,580(a0)
     afc:	3c053c03 	lui	a1,0x3c03
     b00:	00808025 	move	s0,a0
     b04:	15c00017 	bnez	t6,b64 <func_80A208A8+0x7c>
     b08:	34a5126f 	ori	a1,a1,0x126f
     b0c:	8c8f0258 	lw	t7,600(a0)
     b10:	3c063f80 	lui	a2,0x3f80
     b14:	3c073a03 	lui	a3,0x3a03
     b18:	25f80008 	addiu	t8,t7,8
     b1c:	2f010100 	sltiu	at,t8,256
     b20:	14200003 	bnez	at,b30 <func_80A208A8+0x48>
     b24:	ac980258 	sw	t8,600(a0)
     b28:	240800ff 	li	t0,255
     b2c:	ac880258 	sw	t0,600(a0)
     b30:	44802000 	mtc1	zero,$f4
     b34:	26040054 	addiu	a0,s0,84
     b38:	34e7126f 	ori	a3,a3,0x126f
     b3c:	0c000000 	jal	0 <EnFz_Init>
     b40:	e7a40010 	swc1	$f4,16(sp)
     b44:	44803000 	mtc1	zero,$f6
     b48:	00000000 	nop
     b4c:	46060032 	c.eq.s	$f0,$f6
     b50:	00000000 	nop
     b54:	45020004 	bc1fl	b68 <func_80A208A8+0x80>
     b58:	8fbf0024 	lw	ra,36(sp)
     b5c:	0c000000 	jal	0 <EnFz_Init>
     b60:	02002025 	move	a0,s0
     b64:	8fbf0024 	lw	ra,36(sp)
     b68:	8fb00020 	lw	s0,32(sp)
     b6c:	27bd0028 	addiu	sp,sp,40
     b70:	03e00008 	jr	ra
     b74:	00000000 	nop

00000b78 <func_80A20938>:
     b78:	8c8f0004 	lw	t7,4(a0)
     b7c:	3c01bf80 	lui	at,0xbf80
     b80:	44812000 	mtc1	at,$f4
     b84:	24020001 	li	v0,1
     b88:	3c190000 	lui	t9,0x0
     b8c:	240e0028 	li	t6,40
     b90:	27390000 	addiu	t9,t9,0
     b94:	35f80001 	ori	t8,t7,0x1
     b98:	a0820260 	sb	v0,608(a0)
     b9c:	a48e0244 	sh	t6,580(a0)
     ba0:	a0820246 	sb	v0,582(a0)
     ba4:	a0820248 	sb	v0,584(a0)
     ba8:	ac980004 	sw	t8,4(a0)
     bac:	ac99014c 	sw	t9,332(a0)
     bb0:	03e00008 	jr	ra
     bb4:	e484006c 	swc1	$f4,108(a0)

00000bb8 <func_80A20978>:
     bb8:	27bdffe8 	addiu	sp,sp,-24
     bbc:	afbf0014 	sw	ra,20(sp)
     bc0:	afa5001c 	sw	a1,28(sp)
     bc4:	0c000000 	jal	0 <EnFz_Init>
     bc8:	afa40018 	sw	a0,24(sp)
     bcc:	8fa40018 	lw	a0,24(sp)
     bd0:	848e0244 	lh	t6,580(a0)
     bd4:	55c00004 	bnezl	t6,be8 <func_80A20978+0x30>
     bd8:	8fbf0014 	lw	ra,20(sp)
     bdc:	0c000000 	jal	0 <EnFz_Init>
     be0:	00000000 	nop
     be4:	8fbf0014 	lw	ra,20(sp)
     be8:	27bd0018 	addiu	sp,sp,24
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <func_80A209B4>:
     bf4:	3c014080 	lui	at,0x4080
     bf8:	44812000 	mtc1	at,$f4
     bfc:	3c0f0000 	lui	t7,0x0
     c00:	24020001 	li	v0,1
     c04:	240e0064 	li	t6,100
     c08:	25ef0000 	addiu	t7,t7,0
     c0c:	a0820260 	sb	v0,608(a0)
     c10:	a0820247 	sb	v0,583(a0)
     c14:	a48e0244 	sh	t6,580(a0)
     c18:	ac8f014c 	sw	t7,332(a0)
     c1c:	03e00008 	jr	ra
     c20:	e4840254 	swc1	$f4,596(a0)

00000c24 <func_80A209E4>:
     c24:	27bdffe8 	addiu	sp,sp,-24
     c28:	afbf0014 	sw	ra,20(sp)
     c2c:	afa5001c 	sw	a1,28(sp)
     c30:	848e0244 	lh	t6,580(a0)
     c34:	11c00004 	beqz	t6,c48 <func_80A209E4+0x24>
     c38:	00000000 	nop
     c3c:	908f0247 	lbu	t7,583(a0)
     c40:	55e00004 	bnezl	t7,c54 <func_80A209E4+0x30>
     c44:	8fbf0014 	lw	ra,20(sp)
     c48:	0c000000 	jal	0 <EnFz_Init>
     c4c:	00000000 	nop
     c50:	8fbf0014 	lw	ra,20(sp)
     c54:	27bd0018 	addiu	sp,sp,24
     c58:	03e00008 	jr	ra
     c5c:	00000000 	nop

00000c60 <func_80A20A20>:
     c60:	44800000 	mtc1	zero,$f0
     c64:	3c180000 	lui	t8,0x0
     c68:	240e0001 	li	t6,1
     c6c:	240f0028 	li	t7,40
     c70:	27180000 	addiu	t8,t8,0
     c74:	a08e0260 	sb	t6,608(a0)
     c78:	a48f0244 	sh	t7,580(a0)
     c7c:	ac98014c 	sw	t8,332(a0)
     c80:	e4800254 	swc1	$f0,596(a0)
     c84:	03e00008 	jr	ra
     c88:	e4800068 	swc1	$f0,104(a0)

00000c8c <func_80A20A4C>:
     c8c:	27bdffe8 	addiu	sp,sp,-24
     c90:	afbf0014 	sw	ra,20(sp)
     c94:	afa5001c 	sw	a1,28(sp)
     c98:	0c000000 	jal	0 <EnFz_Init>
     c9c:	afa40018 	sw	a0,24(sp)
     ca0:	8fa40018 	lw	a0,24(sp)
     ca4:	848e0244 	lh	t6,580(a0)
     ca8:	55c00004 	bnezl	t6,cbc <func_80A20A4C+0x30>
     cac:	8fbf0014 	lw	ra,20(sp)
     cb0:	0c000000 	jal	0 <EnFz_Init>
     cb4:	8fa5001c 	lw	a1,28(sp)
     cb8:	8fbf0014 	lw	ra,20(sp)
     cbc:	27bd0018 	addiu	sp,sp,24
     cc0:	03e00008 	jr	ra
     cc4:	00000000 	nop

00000cc8 <func_80A20A88>:
     cc8:	27bdffe8 	addiu	sp,sp,-24
     ccc:	afbf0014 	sw	ra,20(sp)
     cd0:	3c180000 	lui	t8,0x0
     cd4:	240e0001 	li	t6,1
     cd8:	240f0050 	li	t7,80
     cdc:	27180000 	addiu	t8,t8,0
     ce0:	a08e0260 	sb	t6,608(a0)
     ce4:	a48f0244 	sh	t7,580(a0)
     ce8:	0c000000 	jal	0 <EnFz_Init>
     cec:	ac98014c 	sw	t8,332(a0)
     cf0:	8fbf0014 	lw	ra,20(sp)
     cf4:	27bd0018 	addiu	sp,sp,24
     cf8:	03e00008 	jr	ra
     cfc:	00000000 	nop

00000d00 <func_80A20AC0>:
     d00:	27bdff98 	addiu	sp,sp,-104
     d04:	afbf002c 	sw	ra,44(sp)
     d08:	afb00028 	sw	s0,40(sp)
     d0c:	afa5006c 	sw	a1,108(sp)
     d10:	84820244 	lh	v0,580(a0)
     d14:	00808025 	move	s0,a0
     d18:	14400005 	bnez	v0,d30 <func_80A20AC0+0x30>
     d1c:	2841000b 	slti	at,v0,11
     d20:	0c000000 	jal	0 <EnFz_Init>
     d24:	00000000 	nop
     d28:	1000006c 	b	edc <func_80A20AC0+0x1dc>
     d2c:	8fbf002c 	lw	ra,44(sp)
     d30:	14200069 	bnez	at,ed8 <func_80A20AC0+0x1d8>
     d34:	240e0096 	li	t6,150
     d38:	a3a00037 	sb	zero,55(sp)
     d3c:	a7ae0034 	sh	t6,52(sp)
     d40:	02002025 	move	a0,s0
     d44:	0c000000 	jal	0 <EnFz_Init>
     d48:	240531a4 	li	a1,12708
     d4c:	86020244 	lh	v0,580(s0)
     d50:	44800000 	mtc1	zero,$f0
     d54:	244ffff6 	addiu	t7,v0,-10
     d58:	29e10010 	slti	at,t7,16
     d5c:	10200005 	beqz	at,d74 <func_80A20AC0+0x74>
     d60:	0002c080 	sll	t8,v0,0x2
     d64:	0302c021 	addu	t8,t8,v0
     d68:	0018c040 	sll	t8,t8,0x1
     d6c:	2719ff9c 	addiu	t9,t8,-100
     d70:	a7b90034 	sh	t9,52(sp)
     d74:	3c010000 	lui	at,0x0
     d78:	c4240000 	lwc1	$f4,0(at)
     d7c:	e7a00040 	swc1	$f0,64(sp)
     d80:	e7a00038 	swc1	$f0,56(sp)
     d84:	e7a4003c 	swc1	$f4,60(sp)
     d88:	c6060024 	lwc1	$f6,36(s0)
     d8c:	3c0141a0 	lui	at,0x41a0
     d90:	44815000 	mtc1	at,$f10
     d94:	e7a60050 	swc1	$f6,80(sp)
     d98:	c6080028 	lwc1	$f8,40(s0)
     d9c:	3c014700 	lui	at,0x4700
     da0:	00002825 	move	a1,zero
     da4:	460a4400 	add.s	$f16,$f8,$f10
     da8:	44814000 	mtc1	at,$f8
     dac:	3c010000 	lui	at,0x0
     db0:	e7b00054 	swc1	$f16,84(sp)
     db4:	c612002c 	lwc1	$f18,44(s0)
     db8:	c4300000 	lwc1	$f16,0(at)
     dbc:	e7b20058 	swc1	$f18,88(sp)
     dc0:	860800b6 	lh	t0,182(s0)
     dc4:	44882000 	mtc1	t0,$f4
     dc8:	00000000 	nop
     dcc:	468021a0 	cvt.s.w	$f6,$f4
     dd0:	46083283 	div.s	$f10,$f6,$f8
     dd4:	46105302 	mul.s	$f12,$f10,$f16
     dd8:	0c000000 	jal	0 <EnFz_Init>
     ddc:	00000000 	nop
     de0:	3c01c000 	lui	at,0xc000
     de4:	44812000 	mtc1	at,$f4
     de8:	3c0141a0 	lui	at,0x41a0
     dec:	44809000 	mtc1	zero,$f18
     df0:	44813000 	mtc1	at,$f6
     df4:	27a4005c 	addiu	a0,sp,92
     df8:	27a50044 	addiu	a1,sp,68
     dfc:	e7a40060 	swc1	$f4,96(sp)
     e00:	e7b2005c 	swc1	$f18,92(sp)
     e04:	0c000000 	jal	0 <EnFz_Init>
     e08:	e7a60064 	swc1	$f6,100(sp)
     e0c:	86090244 	lh	t1,580(s0)
     e10:	02002025 	move	a0,s0
     e14:	27a50050 	addiu	a1,sp,80
     e18:	312a0007 	andi	t2,t1,0x7
     e1c:	15400003 	bnez	t2,e2c <func_80A20AC0+0x12c>
     e20:	27a60044 	addiu	a2,sp,68
     e24:	240b0001 	li	t3,1
     e28:	a3ab0037 	sb	t3,55(sp)
     e2c:	3c014000 	lui	at,0x4000
     e30:	44814000 	mtc1	at,$f8
     e34:	3c0141c8 	lui	at,0x41c8
     e38:	44815000 	mtc1	at,$f10
     e3c:	87ac0034 	lh	t4,52(sp)
     e40:	93ad0037 	lbu	t5,55(sp)
     e44:	27a70038 	addiu	a3,sp,56
     e48:	e7a80010 	swc1	$f8,16(sp)
     e4c:	afac0018 	sw	t4,24(sp)
     e50:	e7aa0014 	swc1	$f10,20(sp)
     e54:	0c000000 	jal	0 <EnFz_Init>
     e58:	afad001c 	sw	t5,28(sp)
     e5c:	c7b20044 	lwc1	$f18,68(sp)
     e60:	c7b00048 	lwc1	$f16,72(sp)
     e64:	c7ae004c 	lwc1	$f14,76(sp)
     e68:	c7ac0050 	lwc1	$f12,80(sp)
     e6c:	c7aa0054 	lwc1	$f10,84(sp)
     e70:	c7a80058 	lwc1	$f8,88(sp)
     e74:	3c013f00 	lui	at,0x3f00
     e78:	44813000 	mtc1	at,$f6
     e7c:	87ae0034 	lh	t6,52(sp)
     e80:	3c014000 	lui	at,0x4000
     e84:	46069482 	mul.s	$f18,$f18,$f6
     e88:	44812000 	mtc1	at,$f4
     e8c:	3c0141c8 	lui	at,0x41c8
     e90:	46068402 	mul.s	$f16,$f16,$f6
     e94:	44811000 	mtc1	at,$f2
     e98:	e7a40010 	swc1	$f4,16(sp)
     e9c:	46067182 	mul.s	$f6,$f14,$f6
     ea0:	02002025 	move	a0,s0
     ea4:	46126480 	add.s	$f18,$f12,$f18
     ea8:	27a50050 	addiu	a1,sp,80
     eac:	27a60044 	addiu	a2,sp,68
     eb0:	46105400 	add.s	$f16,$f10,$f16
     eb4:	e7b20050 	swc1	$f18,80(sp)
     eb8:	27a70038 	addiu	a3,sp,56
     ebc:	46064180 	add.s	$f6,$f8,$f6
     ec0:	e7b00054 	swc1	$f16,84(sp)
     ec4:	e7a20014 	swc1	$f2,20(sp)
     ec8:	afae0018 	sw	t6,24(sp)
     ecc:	e7a60058 	swc1	$f6,88(sp)
     ed0:	0c000000 	jal	0 <EnFz_Init>
     ed4:	afa0001c 	sw	zero,28(sp)
     ed8:	8fbf002c 	lw	ra,44(sp)
     edc:	8fb00028 	lw	s0,40(sp)
     ee0:	27bd0068 	addiu	sp,sp,104
     ee4:	03e00008 	jr	ra
     ee8:	00000000 	nop

00000eec <func_80A20CAC>:
     eec:	27bdffe0 	addiu	sp,sp,-32
     ef0:	afb00018 	sw	s0,24(sp)
     ef4:	afbf001c 	sw	ra,28(sp)
     ef8:	afa50024 	sw	a1,36(sp)
     efc:	44800000 	mtc1	zero,$f0
     f00:	8c8e0004 	lw	t6,4(a0)
     f04:	24020001 	li	v0,1
     f08:	2401fffe 	li	at,-2
     f0c:	2418003c 	li	t8,60
     f10:	01c17824 	and	t7,t6,at
     f14:	00808025 	move	s0,a0
     f18:	a0800260 	sb	zero,608(a0)
     f1c:	a0820246 	sb	v0,582(a0)
     f20:	a0800248 	sb	zero,584(a0)
     f24:	a0820262 	sb	v0,610(a0)
     f28:	ac8f0004 	sw	t7,4(a0)
     f2c:	a0800261 	sb	zero,609(a0)
     f30:	a4980244 	sh	t8,580(a0)
     f34:	e4800254 	swc1	$f0,596(a0)
     f38:	e480006c 	swc1	$f0,108(a0)
     f3c:	e4800060 	swc1	$f0,96(a0)
     f40:	e4800068 	swc1	$f0,104(a0)
     f44:	8fa40024 	lw	a0,36(sp)
     f48:	02003025 	move	a2,s0
     f4c:	24070006 	li	a3,6
     f50:	0c000000 	jal	0 <EnFz_Init>
     f54:	24851c24 	addiu	a1,a0,7204
     f58:	8fa40024 	lw	a0,36(sp)
     f5c:	02002825 	move	a1,s0
     f60:	26060024 	addiu	a2,s0,36
     f64:	0c000000 	jal	0 <EnFz_Init>
     f68:	24070060 	li	a3,96
     f6c:	3c080000 	lui	t0,0x0
     f70:	25080000 	addiu	t0,t0,0
     f74:	ae08014c 	sw	t0,332(s0)
     f78:	8fbf001c 	lw	ra,28(sp)
     f7c:	8fb00018 	lw	s0,24(sp)
     f80:	27bd0020 	addiu	sp,sp,32
     f84:	03e00008 	jr	ra
     f88:	00000000 	nop

00000f8c <func_80A20D4C>:
     f8c:	27bdffe8 	addiu	sp,sp,-24
     f90:	afbf0014 	sw	ra,20(sp)
     f94:	afa5001c 	sw	a1,28(sp)
     f98:	848e0244 	lh	t6,580(a0)
     f9c:	55c00004 	bnezl	t6,fb0 <func_80A20D4C+0x24>
     fa0:	8fbf0014 	lw	ra,20(sp)
     fa4:	0c000000 	jal	0 <EnFz_Init>
     fa8:	00000000 	nop
     fac:	8fbf0014 	lw	ra,20(sp)
     fb0:	27bd0018 	addiu	sp,sp,24
     fb4:	03e00008 	jr	ra
     fb8:	00000000 	nop

00000fbc <func_80A20D7C>:
     fbc:	8c980004 	lw	t8,4(a0)
     fc0:	44800000 	mtc1	zero,$f0
     fc4:	2401fffe 	li	at,-2
     fc8:	3c080000 	lui	t0,0x0
     fcc:	240e0003 	li	t6,3
     fd0:	240f0001 	li	t7,1
     fd4:	25080000 	addiu	t0,t0,0
     fd8:	0301c824 	and	t9,t8,at
     fdc:	a08e0260 	sb	t6,608(a0)
     fe0:	a0800248 	sb	zero,584(a0)
     fe4:	a08f0262 	sb	t7,610(a0)
     fe8:	ac990004 	sw	t9,4(a0)
     fec:	ac88014c 	sw	t0,332(a0)
     ff0:	e4800068 	swc1	$f0,104(a0)
     ff4:	03e00008 	jr	ra
     ff8:	e4800254 	swc1	$f0,596(a0)

00000ffc <func_80A20DBC>:
     ffc:	27bdffe8 	addiu	sp,sp,-24
    1000:	afa5001c 	sw	a1,28(sp)
    1004:	afbf0014 	sw	ra,20(sp)
    1008:	00803825 	move	a3,a0
    100c:	3c053a1d 	lui	a1,0x3a1d
    1010:	3c063951 	lui	a2,0x3951
    1014:	34c6b717 	ori	a2,a2,0xb717
    1018:	34a54952 	ori	a1,a1,0x4952
    101c:	afa70018 	sw	a3,24(sp)
    1020:	0c000000 	jal	0 <EnFz_Init>
    1024:	24840054 	addiu	a0,a0,84
    1028:	8fa70018 	lw	a3,24(sp)
    102c:	3c010000 	lui	at,0x0
    1030:	c4240000 	lwc1	$f4,0(at)
    1034:	c4e00054 	lwc1	$f0,84(a3)
    1038:	3c010000 	lui	at,0x0
    103c:	00e02025 	move	a0,a3
    1040:	4604003c 	c.lt.s	$f0,$f4
    1044:	00000000 	nop
    1048:	45000009 	bc1f	1070 <func_80A20DBC+0x74>
    104c:	00000000 	nop
    1050:	c4220000 	lwc1	$f2,0(at)
    1054:	c4e60050 	lwc1	$f6,80(a3)
    1058:	c4ea0058 	lwc1	$f10,88(a3)
    105c:	c4e00054 	lwc1	$f0,84(a3)
    1060:	46023200 	add.s	$f8,$f6,$f2
    1064:	46025400 	add.s	$f16,$f10,$f2
    1068:	e4e80050 	swc1	$f8,80(a3)
    106c:	e4f00058 	swc1	$f16,88(a3)
    1070:	3c010000 	lui	at,0x0
    1074:	c4320000 	lwc1	$f18,0(at)
    1078:	4612003c 	c.lt.s	$f0,$f18
    107c:	00000000 	nop
    1080:	45020008 	bc1fl	10a4 <func_80A20DBC+0xa8>
    1084:	8cf90258 	lw	t9,600(a3)
    1088:	8cee0258 	lw	t6,600(a3)
    108c:	25cffff8 	addiu	t7,t6,-8
    1090:	2de10100 	sltiu	at,t7,256
    1094:	14200002 	bnez	at,10a0 <func_80A20DBC+0xa4>
    1098:	acef0258 	sw	t7,600(a3)
    109c:	ace00258 	sw	zero,600(a3)
    10a0:	8cf90258 	lw	t9,600(a3)
    10a4:	57200004 	bnezl	t9,10b8 <func_80A20DBC+0xbc>
    10a8:	8fbf0014 	lw	ra,20(sp)
    10ac:	0c000000 	jal	0 <EnFz_Init>
    10b0:	8fa5001c 	lw	a1,28(sp)
    10b4:	8fbf0014 	lw	ra,20(sp)
    10b8:	27bd0018 	addiu	sp,sp,24
    10bc:	03e00008 	jr	ra
    10c0:	00000000 	nop

000010c4 <func_80A20E84>:
    10c4:	8c8f0004 	lw	t7,4(a0)
    10c8:	3c01bf80 	lui	at,0xbf80
    10cc:	44812000 	mtc1	at,$f4
    10d0:	24020001 	li	v0,1
    10d4:	3c190000 	lui	t9,0x0
    10d8:	240e0028 	li	t6,40
    10dc:	27390000 	addiu	t9,t9,0
    10e0:	35f80001 	ori	t8,t7,0x1
    10e4:	a0820260 	sb	v0,608(a0)
    10e8:	a48e0244 	sh	t6,580(a0)
    10ec:	a0820246 	sb	v0,582(a0)
    10f0:	a0820248 	sb	v0,584(a0)
    10f4:	ac980004 	sw	t8,4(a0)
    10f8:	ac99014c 	sw	t9,332(a0)
    10fc:	03e00008 	jr	ra
    1100:	e484006c 	swc1	$f4,108(a0)

00001104 <func_80A20EC4>:
    1104:	27bdff98 	addiu	sp,sp,-104
    1108:	afbf002c 	sw	ra,44(sp)
    110c:	afb00028 	sw	s0,40(sp)
    1110:	afa5006c 	sw	a1,108(sp)
    1114:	848e0240 	lh	t6,576(a0)
    1118:	00808025 	move	s0,a0
    111c:	24180096 	li	t8,150
    1120:	31cf00c0 	andi	t7,t6,0xc0
    1124:	11e00008 	beqz	t7,1148 <func_80A20EC4+0x44>
    1128:	240531a4 	li	a1,12708
    112c:	0c000000 	jal	0 <EnFz_Init>
    1130:	00000000 	nop
    1134:	02002025 	move	a0,s0
    1138:	0c000000 	jal	0 <EnFz_Init>
    113c:	8fa5006c 	lw	a1,108(sp)
    1140:	1000006a 	b	12ec <func_80A20EC4+0x1e8>
    1144:	8fbf002c 	lw	ra,44(sp)
    1148:	a3a00037 	sb	zero,55(sp)
    114c:	a7b80034 	sh	t8,52(sp)
    1150:	0c000000 	jal	0 <EnFz_Init>
    1154:	02002025 	move	a0,s0
    1158:	86020240 	lh	v0,576(s0)
    115c:	44800000 	mtc1	zero,$f0
    1160:	24080276 	li	t0,630
    1164:	3042003f 	andi	v0,v0,0x3f
    1168:	28410030 	slti	at,v0,48
    116c:	14200005 	bnez	at,1184 <func_80A20EC4+0x80>
    1170:	0002c880 	sll	t9,v0,0x2
    1174:	0322c821 	addu	t9,t9,v0
    1178:	0019c840 	sll	t9,t9,0x1
    117c:	01194823 	subu	t1,t0,t9
    1180:	a7a90034 	sh	t1,52(sp)
    1184:	3c010000 	lui	at,0x0
    1188:	c4240000 	lwc1	$f4,0(at)
    118c:	e7a00040 	swc1	$f0,64(sp)
    1190:	e7a00038 	swc1	$f0,56(sp)
    1194:	e7a4003c 	swc1	$f4,60(sp)
    1198:	c6060024 	lwc1	$f6,36(s0)
    119c:	3c0141a0 	lui	at,0x41a0
    11a0:	44815000 	mtc1	at,$f10
    11a4:	e7a60050 	swc1	$f6,80(sp)
    11a8:	c6080028 	lwc1	$f8,40(s0)
    11ac:	3c014700 	lui	at,0x4700
    11b0:	00002825 	move	a1,zero
    11b4:	460a4400 	add.s	$f16,$f8,$f10
    11b8:	44814000 	mtc1	at,$f8
    11bc:	3c010000 	lui	at,0x0
    11c0:	e7b00054 	swc1	$f16,84(sp)
    11c4:	c612002c 	lwc1	$f18,44(s0)
    11c8:	c4300000 	lwc1	$f16,0(at)
    11cc:	e7b20058 	swc1	$f18,88(sp)
    11d0:	860a00b6 	lh	t2,182(s0)
    11d4:	448a2000 	mtc1	t2,$f4
    11d8:	00000000 	nop
    11dc:	468021a0 	cvt.s.w	$f6,$f4
    11e0:	46083283 	div.s	$f10,$f6,$f8
    11e4:	46105302 	mul.s	$f12,$f10,$f16
    11e8:	0c000000 	jal	0 <EnFz_Init>
    11ec:	00000000 	nop
    11f0:	3c01c000 	lui	at,0xc000
    11f4:	44812000 	mtc1	at,$f4
    11f8:	3c0141a0 	lui	at,0x41a0
    11fc:	44809000 	mtc1	zero,$f18
    1200:	44813000 	mtc1	at,$f6
    1204:	27a4005c 	addiu	a0,sp,92
    1208:	27a50044 	addiu	a1,sp,68
    120c:	e7a40060 	swc1	$f4,96(sp)
    1210:	e7b2005c 	swc1	$f18,92(sp)
    1214:	0c000000 	jal	0 <EnFz_Init>
    1218:	e7a60064 	swc1	$f6,100(sp)
    121c:	860b0240 	lh	t3,576(s0)
    1220:	02002025 	move	a0,s0
    1224:	27a50050 	addiu	a1,sp,80
    1228:	316c0007 	andi	t4,t3,0x7
    122c:	15800003 	bnez	t4,123c <func_80A20EC4+0x138>
    1230:	27a60044 	addiu	a2,sp,68
    1234:	240d0001 	li	t5,1
    1238:	a3ad0037 	sb	t5,55(sp)
    123c:	3c014000 	lui	at,0x4000
    1240:	44814000 	mtc1	at,$f8
    1244:	3c0141c8 	lui	at,0x41c8
    1248:	44815000 	mtc1	at,$f10
    124c:	87ae0034 	lh	t6,52(sp)
    1250:	93af0037 	lbu	t7,55(sp)
    1254:	27a70038 	addiu	a3,sp,56
    1258:	e7a80010 	swc1	$f8,16(sp)
    125c:	afae0018 	sw	t6,24(sp)
    1260:	e7aa0014 	swc1	$f10,20(sp)
    1264:	0c000000 	jal	0 <EnFz_Init>
    1268:	afaf001c 	sw	t7,28(sp)
    126c:	c7b20044 	lwc1	$f18,68(sp)
    1270:	c7b00048 	lwc1	$f16,72(sp)
    1274:	c7ae004c 	lwc1	$f14,76(sp)
    1278:	c7ac0050 	lwc1	$f12,80(sp)
    127c:	c7aa0054 	lwc1	$f10,84(sp)
    1280:	c7a80058 	lwc1	$f8,88(sp)
    1284:	3c013f00 	lui	at,0x3f00
    1288:	44813000 	mtc1	at,$f6
    128c:	87b80034 	lh	t8,52(sp)
    1290:	3c014000 	lui	at,0x4000
    1294:	46069482 	mul.s	$f18,$f18,$f6
    1298:	44812000 	mtc1	at,$f4
    129c:	3c0141c8 	lui	at,0x41c8
    12a0:	46068402 	mul.s	$f16,$f16,$f6
    12a4:	44811000 	mtc1	at,$f2
    12a8:	e7a40010 	swc1	$f4,16(sp)
    12ac:	46067182 	mul.s	$f6,$f14,$f6
    12b0:	02002025 	move	a0,s0
    12b4:	46126480 	add.s	$f18,$f12,$f18
    12b8:	27a50050 	addiu	a1,sp,80
    12bc:	27a60044 	addiu	a2,sp,68
    12c0:	46105400 	add.s	$f16,$f10,$f16
    12c4:	e7b20050 	swc1	$f18,80(sp)
    12c8:	27a70038 	addiu	a3,sp,56
    12cc:	46064180 	add.s	$f6,$f8,$f6
    12d0:	e7b00054 	swc1	$f16,84(sp)
    12d4:	e7a20014 	swc1	$f2,20(sp)
    12d8:	afb80018 	sw	t8,24(sp)
    12dc:	e7a60058 	swc1	$f6,88(sp)
    12e0:	0c000000 	jal	0 <EnFz_Init>
    12e4:	afa0001c 	sw	zero,28(sp)
    12e8:	8fbf002c 	lw	ra,44(sp)
    12ec:	8fb00028 	lw	s0,40(sp)
    12f0:	27bd0068 	addiu	sp,sp,104
    12f4:	03e00008 	jr	ra
    12f8:	00000000 	nop

000012fc <EnFz_Update>:
    12fc:	27bdffc0 	addiu	sp,sp,-64
    1300:	afbf0024 	sw	ra,36(sp)
    1304:	afb10020 	sw	s1,32(sp)
    1308:	afb0001c 	sw	s0,28(sp)
    130c:	848e0240 	lh	t6,576(a0)
    1310:	84820242 	lh	v0,578(a0)
    1314:	00808025 	move	s0,a0
    1318:	25cf0001 	addiu	t7,t6,1
    131c:	00a08825 	move	s1,a1
    1320:	10400003 	beqz	v0,1330 <EnFz_Update+0x34>
    1324:	a48f0240 	sh	t7,576(a0)
    1328:	2458ffff 	addiu	t8,v0,-1
    132c:	a4980242 	sh	t8,578(a0)
    1330:	86020244 	lh	v0,580(s0)
    1334:	02002025 	move	a0,s0
    1338:	10400002 	beqz	v0,1344 <EnFz_Update+0x48>
    133c:	2459ffff 	addiu	t9,v0,-1
    1340:	a6190244 	sh	t9,580(s0)
    1344:	92020263 	lbu	v0,611(s0)
    1348:	10400002 	beqz	v0,1354 <EnFz_Update+0x58>
    134c:	2448ffff 	addiu	t0,v0,-1
    1350:	a2080263 	sb	t0,611(s0)
    1354:	0c000000 	jal	0 <EnFz_Init>
    1358:	3c054248 	lui	a1,0x4248
    135c:	02002025 	move	a0,s0
    1360:	0c000000 	jal	0 <EnFz_Init>
    1364:	02202825 	move	a1,s1
    1368:	8e19014c 	lw	t9,332(s0)
    136c:	02002025 	move	a0,s0
    1370:	02202825 	move	a1,s1
    1374:	0320f809 	jalr	t9
    1378:	00000000 	nop
    137c:	92090262 	lbu	t1,610(s0)
    1380:	02002025 	move	a0,s0
    1384:	26050150 	addiu	a1,s0,336
    1388:	5520001e 	bnezl	t1,1404 <EnFz_Update+0x108>
    138c:	3c063e4c 	lui	a2,0x3e4c
    1390:	0c000000 	jal	0 <EnFz_Init>
    1394:	afa50030 	sw	a1,48(sp)
    1398:	2605019c 	addiu	a1,s0,412
    139c:	afa5002c 	sw	a1,44(sp)
    13a0:	0c000000 	jal	0 <EnFz_Init>
    13a4:	02002025 	move	a0,s0
    13a8:	920a0248 	lbu	t2,584(s0)
    13ac:	51400015 	beqzl	t2,1404 <EnFz_Update+0x108>
    13b0:	3c063e4c 	lui	a2,0x3e4c
    13b4:	920b0114 	lbu	t3,276(s0)
    13b8:	3c010001 	lui	at,0x1
    13bc:	34211e60 	ori	at,at,0x1e60
    13c0:	15600009 	bnez	t3,13e8 <EnFz_Update+0xec>
    13c4:	02202025 	move	a0,s1
    13c8:	02212821 	addu	a1,s1,at
    13cc:	afa50034 	sw	a1,52(sp)
    13d0:	0c000000 	jal	0 <EnFz_Init>
    13d4:	8fa60030 	lw	a2,48(sp)
    13d8:	8fa50034 	lw	a1,52(sp)
    13dc:	02202025 	move	a0,s1
    13e0:	0c000000 	jal	0 <EnFz_Init>
    13e4:	8fa6002c 	lw	a2,44(sp)
    13e8:	3c010001 	lui	at,0x1
    13ec:	34211e60 	ori	at,at,0x1e60
    13f0:	02212821 	addu	a1,s1,at
    13f4:	02202025 	move	a0,s1
    13f8:	0c000000 	jal	0 <EnFz_Init>
    13fc:	8fa60030 	lw	a2,48(sp)
    1400:	3c063e4c 	lui	a2,0x3e4c
    1404:	34c6cccd 	ori	a2,a2,0xcccd
    1408:	26040068 	addiu	a0,s0,104
    140c:	0c000000 	jal	0 <EnFz_Init>
    1410:	8e050254 	lw	a1,596(s0)
    1414:	0c000000 	jal	0 <EnFz_Init>
    1418:	02002025 	move	a0,s0
    141c:	920c0246 	lbu	t4,582(s0)
    1420:	3c0141a0 	lui	at,0x41a0
    1424:	02202025 	move	a0,s1
    1428:	11800008 	beqz	t4,144c <EnFz_Update+0x150>
    142c:	02002825 	move	a1,s0
    1430:	44810000 	mtc1	at,$f0
    1434:	240d0005 	li	t5,5
    1438:	afad0014 	sw	t5,20(sp)
    143c:	44060000 	mfc1	a2,$f0
    1440:	44070000 	mfc1	a3,$f0
    1444:	0c000000 	jal	0 <EnFz_Init>
    1448:	e7a00010 	swc1	$f0,16(sp)
    144c:	920e0260 	lbu	t6,608(s0)
    1450:	3c190000 	lui	t9,0x0
    1454:	02002025 	move	a0,s0
    1458:	000e7880 	sll	t7,t6,0x2
    145c:	032fc821 	addu	t9,t9,t7
    1460:	8f390000 	lw	t9,0(t9)
    1464:	0320f809 	jalr	t9
    1468:	00000000 	nop
    146c:	02002025 	move	a0,s0
    1470:	0c000000 	jal	0 <EnFz_Init>
    1474:	02202825 	move	a1,s1
    1478:	8fbf0024 	lw	ra,36(sp)
    147c:	8fb0001c 	lw	s0,28(sp)
    1480:	8fb10020 	lw	s1,32(sp)
    1484:	03e00008 	jr	ra
    1488:	27bd0040 	addiu	sp,sp,64

0000148c <EnFz_Draw>:
    148c:	27bdff80 	addiu	sp,sp,-128
    1490:	afbf003c 	sw	ra,60(sp)
    1494:	afb10038 	sw	s1,56(sp)
    1498:	afb00034 	sw	s0,52(sp)
    149c:	afa40080 	sw	a0,128(sp)
    14a0:	908f00af 	lbu	t7,175(a0)
    14a4:	24180006 	li	t8,6
    14a8:	00a08825 	move	s1,a1
    14ac:	030fc823 	subu	t9,t8,t7
    14b0:	00194843 	sra	t1,t9,0x1
    14b4:	afa90074 	sw	t1,116(sp)
    14b8:	8ca50000 	lw	a1,0(a1)
    14bc:	3c060000 	lui	a2,0x0
    14c0:	24c60000 	addiu	a2,a2,0
    14c4:	27a40060 	addiu	a0,sp,96
    14c8:	2407048f 	li	a3,1167
    14cc:	0c000000 	jal	0 <EnFz_Init>
    14d0:	00a08025 	move	s0,a1
    14d4:	8faa0080 	lw	t2,128(sp)
    14d8:	240c0002 	li	t4,2
    14dc:	02202825 	move	a1,s1
    14e0:	914b00af 	lbu	t3,175(t2)
    14e4:	00003025 	move	a2,zero
    14e8:	55600003 	bnezl	t3,14f8 <EnFz_Draw+0x6c>
    14ec:	8fad0080 	lw	t5,128(sp)
    14f0:	afac0074 	sw	t4,116(sp)
    14f4:	8fad0080 	lw	t5,128(sp)
    14f8:	91ae0261 	lbu	t6,609(t5)
    14fc:	11c00059 	beqz	t6,1664 <EnFz_Draw+0x1d8>
    1500:	00000000 	nop
    1504:	0c000000 	jal	0 <EnFz_Init>
    1508:	01a02025 	move	a0,t5
    150c:	0c000000 	jal	0 <EnFz_Init>
    1510:	8e240000 	lw	a0,0(s1)
    1514:	8e0202d0 	lw	v0,720(s0)
    1518:	3c0fdb06 	lui	t7,0xdb06
    151c:	35ef0020 	ori	t7,t7,0x20
    1520:	24580008 	addiu	t8,v0,8
    1524:	ae1802d0 	sw	t8,720(s0)
    1528:	ac4f0000 	sw	t7,0(v0)
    152c:	8e23009c 	lw	v1,156(s1)
    1530:	8e240000 	lw	a0,0(s1)
    1534:	24190020 	li	t9,32
    1538:	00035840 	sll	t3,v1,0x1
    153c:	316c007f 	andi	t4,t3,0x7f
    1540:	24090020 	li	t1,32
    1544:	240a0001 	li	t2,1
    1548:	240e0020 	li	t6,32
    154c:	240d0020 	li	t5,32
    1550:	afad0028 	sw	t5,40(sp)
    1554:	afae0024 	sw	t6,36(sp)
    1558:	afaa0018 	sw	t2,24(sp)
    155c:	afa90014 	sw	t1,20(sp)
    1560:	afac0020 	sw	t4,32(sp)
    1564:	afb90010 	sw	t9,16(sp)
    1568:	afa0001c 	sw	zero,28(sp)
    156c:	00002825 	move	a1,zero
    1570:	00003025 	move	a2,zero
    1574:	afa2005c 	sw	v0,92(sp)
    1578:	0c000000 	jal	0 <EnFz_Init>
    157c:	3067007f 	andi	a3,v1,0x7f
    1580:	8fa8005c 	lw	t0,92(sp)
    1584:	3c0fda38 	lui	t7,0xda38
    1588:	35ef0003 	ori	t7,t7,0x3
    158c:	ad020004 	sw	v0,4(t0)
    1590:	8e0202d0 	lw	v0,720(s0)
    1594:	3c050000 	lui	a1,0x0
    1598:	24a50000 	addiu	a1,a1,0
    159c:	24580008 	addiu	t8,v0,8
    15a0:	ae1802d0 	sw	t8,720(s0)
    15a4:	ac4f0000 	sw	t7,0(v0)
    15a8:	8e240000 	lw	a0,0(s1)
    15ac:	2406049f 	li	a2,1183
    15b0:	0c000000 	jal	0 <EnFz_Init>
    15b4:	afa20058 	sw	v0,88(sp)
    15b8:	8fa30058 	lw	v1,88(sp)
    15bc:	3c09fc27 	lui	t1,0xfc27
    15c0:	3c0a3514 	lui	t2,0x3514
    15c4:	ac620004 	sw	v0,4(v1)
    15c8:	8e0202d0 	lw	v0,720(s0)
    15cc:	354a937f 	ori	t2,t2,0x937f
    15d0:	35292660 	ori	t1,t1,0x2660
    15d4:	24590008 	addiu	t9,v0,8
    15d8:	ae1902d0 	sw	t9,720(s0)
    15dc:	ac4a0004 	sw	t2,4(v0)
    15e0:	ac490000 	sw	t1,0(v0)
    15e4:	8e0202d0 	lw	v0,720(s0)
    15e8:	3c0cfa00 	lui	t4,0xfa00
    15ec:	3c0e9bff 	lui	t6,0x9bff
    15f0:	244b0008 	addiu	t3,v0,8
    15f4:	ae0b02d0 	sw	t3,720(s0)
    15f8:	35ceffff 	ori	t6,t6,0xffff
    15fc:	358c0080 	ori	t4,t4,0x80
    1600:	ac4c0000 	sw	t4,0(v0)
    1604:	ac4e0004 	sw	t6,4(v0)
    1608:	8e0202d0 	lw	v0,720(s0)
    160c:	3c18fb00 	lui	t8,0xfb00
    1610:	3c01c8c8 	lui	at,0xc8c8
    1614:	244d0008 	addiu	t5,v0,8
    1618:	ae0d02d0 	sw	t5,720(s0)
    161c:	ac580000 	sw	t8,0(v0)
    1620:	8faf0080 	lw	t7,128(sp)
    1624:	3421c800 	ori	at,at,0xc800
    1628:	3c0cde00 	lui	t4,0xde00
    162c:	8df90258 	lw	t9,600(t7)
    1630:	3c180000 	lui	t8,0x0
    1634:	332900ff 	andi	t1,t9,0xff
    1638:	01215025 	or	t2,t1,at
    163c:	ac4a0004 	sw	t2,4(v0)
    1640:	8e0202d0 	lw	v0,720(s0)
    1644:	244b0008 	addiu	t3,v0,8
    1648:	ae0b02d0 	sw	t3,720(s0)
    164c:	ac4c0000 	sw	t4,0(v0)
    1650:	8fae0074 	lw	t6,116(sp)
    1654:	000e6880 	sll	t5,t6,0x2
    1658:	030dc021 	addu	t8,t8,t5
    165c:	8f180000 	lw	t8,0(t8)
    1660:	ac580004 	sw	t8,4(v0)
    1664:	3c060000 	lui	a2,0x0
    1668:	24c60000 	addiu	a2,a2,0
    166c:	27a40060 	addiu	a0,sp,96
    1670:	8e250000 	lw	a1,0(s1)
    1674:	0c000000 	jal	0 <EnFz_Init>
    1678:	240704b0 	li	a3,1200
    167c:	8fa40080 	lw	a0,128(sp)
    1680:	0c000000 	jal	0 <EnFz_Init>
    1684:	02202825 	move	a1,s1
    1688:	8fbf003c 	lw	ra,60(sp)
    168c:	8fb00034 	lw	s0,52(sp)
    1690:	8fb10038 	lw	s1,56(sp)
    1694:	03e00008 	jr	ra
    1698:	27bd0080 	addiu	sp,sp,128

0000169c <func_80A2145C>:
    169c:	24820274 	addiu	v0,a0,628
    16a0:	00001825 	move	v1,zero
    16a4:	904e0000 	lbu	t6,0(v0)
    16a8:	24630001 	addiu	v1,v1,1
    16ac:	00031c00 	sll	v1,v1,0x10
    16b0:	15c0001e 	bnez	t6,172c <func_80A2145C+0x90>
    16b4:	00031c03 	sra	v1,v1,0x10
    16b8:	240f0001 	li	t7,1
    16bc:	a04f0000 	sb	t7,0(v0)
    16c0:	8cb90000 	lw	t9,0(a1)
    16c4:	3c01447a 	lui	at,0x447a
    16c8:	44813000 	mtc1	at,$f6
    16cc:	ac590004 	sw	t9,4(v0)
    16d0:	8cb80004 	lw	t8,4(a1)
    16d4:	ac580008 	sw	t8,8(v0)
    16d8:	8cb90008 	lw	t9,8(a1)
    16dc:	ac59000c 	sw	t9,12(v0)
    16e0:	8cc90000 	lw	t1,0(a2)
    16e4:	ac490010 	sw	t1,16(v0)
    16e8:	8cc80004 	lw	t0,4(a2)
    16ec:	ac480014 	sw	t0,20(v0)
    16f0:	8cc90008 	lw	t1,8(a2)
    16f4:	ac490018 	sw	t1,24(v0)
    16f8:	8ceb0000 	lw	t3,0(a3)
    16fc:	ac4b001c 	sw	t3,28(v0)
    1700:	8cea0004 	lw	t2,4(a3)
    1704:	ac4a0020 	sw	t2,32(v0)
    1708:	8ceb0008 	lw	t3,8(a3)
    170c:	a440002e 	sh	zero,46(v0)
    1710:	ac4b0024 	sw	t3,36(v0)
    1714:	c7a40010 	lwc1	$f4,16(sp)
    1718:	a440002c 	sh	zero,44(v0)
    171c:	a0400001 	sb	zero,1(v0)
    1720:	46062203 	div.s	$f8,$f4,$f6
    1724:	03e00008 	jr	ra
    1728:	e4480030 	swc1	$f8,48(v0)
    172c:	28610028 	slti	at,v1,40
    1730:	1420ffdc 	bnez	at,16a4 <func_80A2145C+0x8>
    1734:	2442003c 	addiu	v0,v0,60
    1738:	03e00008 	jr	ra
    173c:	00000000 	nop

00001740 <func_80A21500>:
    1740:	24820274 	addiu	v0,a0,628
    1744:	00001825 	move	v1,zero
    1748:	904e0000 	lbu	t6,0(v0)
    174c:	24630001 	addiu	v1,v1,1
    1750:	00031c00 	sll	v1,v1,0x10
    1754:	15c00024 	bnez	t6,17e8 <func_80A21500+0xa8>
    1758:	00031c03 	sra	v1,v1,0x10
    175c:	240f0002 	li	t7,2
    1760:	a04f0000 	sb	t7,0(v0)
    1764:	8cb90000 	lw	t9,0(a1)
    1768:	3c01447a 	lui	at,0x447a
    176c:	44810000 	mtc1	at,$f0
    1770:	ac590004 	sw	t9,4(v0)
    1774:	8cb80004 	lw	t8,4(a1)
    1778:	ac580008 	sw	t8,8(v0)
    177c:	8cb90008 	lw	t9,8(a1)
    1780:	ac59000c 	sw	t9,12(v0)
    1784:	8cc90000 	lw	t1,0(a2)
    1788:	ac490010 	sw	t1,16(v0)
    178c:	8cc80004 	lw	t0,4(a2)
    1790:	ac480014 	sw	t0,20(v0)
    1794:	8cc90008 	lw	t1,8(a2)
    1798:	ac490018 	sw	t1,24(v0)
    179c:	8ceb0000 	lw	t3,0(a3)
    17a0:	ac4b001c 	sw	t3,28(v0)
    17a4:	8cea0004 	lw	t2,4(a3)
    17a8:	ac4a0020 	sw	t2,32(v0)
    17ac:	8ceb0008 	lw	t3,8(a3)
    17b0:	a440002e 	sh	zero,46(v0)
    17b4:	ac4b0024 	sw	t3,36(v0)
    17b8:	c7a40010 	lwc1	$f4,16(sp)
    17bc:	46002183 	div.s	$f6,$f4,$f0
    17c0:	e4460030 	swc1	$f6,48(v0)
    17c4:	c7a80014 	lwc1	$f8,20(sp)
    17c8:	46004283 	div.s	$f10,$f8,$f0
    17cc:	e44a0034 	swc1	$f10,52(v0)
    17d0:	87ac001a 	lh	t4,26(sp)
    17d4:	a0400001 	sb	zero,1(v0)
    17d8:	a44c002c 	sh	t4,44(v0)
    17dc:	93ad001f 	lbu	t5,31(sp)
    17e0:	03e00008 	jr	ra
    17e4:	a04d0038 	sb	t5,56(v0)
    17e8:	28610028 	slti	at,v1,40
    17ec:	1420ffd6 	bnez	at,1748 <func_80A21500+0x8>
    17f0:	2442003c 	addiu	v0,v0,60
    17f4:	03e00008 	jr	ra
    17f8:	00000000 	nop

000017fc <func_80A215BC>:
    17fc:	27bdff88 	addiu	sp,sp,-120
    1800:	f7bc0030 	sdc1	$f28,48(sp)
    1804:	3c014000 	lui	at,0x4000
    1808:	4481e000 	mtc1	at,$f28
    180c:	f7ba0028 	sdc1	$f26,40(sp)
    1810:	3c010000 	lui	at,0x0
    1814:	c43a0000 	lwc1	$f26,0(at)
    1818:	f7b80020 	sdc1	$f24,32(sp)
    181c:	3c013f40 	lui	at,0x3f40
    1820:	4481c000 	mtc1	at,$f24
    1824:	afb60054 	sw	s6,84(sp)
    1828:	f7b60018 	sdc1	$f22,24(sp)
    182c:	f7b40010 	sdc1	$f20,16(sp)
    1830:	3c014120 	lui	at,0x4120
    1834:	afb70058 	sw	s7,88(sp)
    1838:	afb50050 	sw	s5,80(sp)
    183c:	afb4004c 	sw	s4,76(sp)
    1840:	afb30048 	sw	s3,72(sp)
    1844:	afb20044 	sw	s2,68(sp)
    1848:	afb10040 	sw	s1,64(sp)
    184c:	afb0003c 	sw	s0,60(sp)
    1850:	3c160001 	lui	s6,0x1
    1854:	4481a000 	mtc1	at,$f20
    1858:	4480b000 	mtc1	zero,$f22
    185c:	00808825 	move	s1,a0
    1860:	00a0a025 	move	s4,a1
    1864:	afbf005c 	sw	ra,92(sp)
    1868:	24900274 	addiu	s0,a0,628
    186c:	36d61e60 	ori	s6,s6,0x1e60
    1870:	00009025 	move	s2,zero
    1874:	24130002 	li	s3,2
    1878:	24150001 	li	s5,1
    187c:	27b70064 	addiu	s7,sp,100
    1880:	920e0000 	lbu	t6,0(s0)
    1884:	51c00083 	beqzl	t6,1a94 <func_80A215BC+0x298>
    1888:	26520001 	addiu	s2,s2,1
    188c:	c6000010 	lwc1	$f0,16(s0)
    1890:	c6040004 	lwc1	$f4,4(s0)
    1894:	c6020014 	lwc1	$f2,20(s0)
    1898:	c6080008 	lwc1	$f8,8(s0)
    189c:	c60c0018 	lwc1	$f12,24(s0)
    18a0:	c610000c 	lwc1	$f16,12(s0)
    18a4:	46002180 	add.s	$f6,$f4,$f0
    18a8:	c604001c 	lwc1	$f4,28(s0)
    18ac:	920f0001 	lbu	t7,1(s0)
    18b0:	46024280 	add.s	$f10,$f8,$f2
    18b4:	c6080020 	lwc1	$f8,32(s0)
    18b8:	e6060004 	swc1	$f6,4(s0)
    18bc:	460c8480 	add.s	$f18,$f16,$f12
    18c0:	c6100024 	lwc1	$f16,36(s0)
    18c4:	e60a0008 	swc1	$f10,8(s0)
    18c8:	46040180 	add.s	$f6,$f0,$f4
    18cc:	e612000c 	swc1	$f18,12(s0)
    18d0:	92020000 	lbu	v0,0(s0)
    18d4:	46081280 	add.s	$f10,$f2,$f8
    18d8:	25f80001 	addiu	t8,t7,1
    18dc:	a2180001 	sb	t8,1(s0)
    18e0:	46106480 	add.s	$f18,$f12,$f16
    18e4:	e6060010 	swc1	$f6,16(s0)
    18e8:	e60a0014 	swc1	$f10,20(s0)
    18ec:	16a20018 	bne	s5,v0,1950 <func_80A215BC+0x154>
    18f0:	e6120018 	swc1	$f18,24(s0)
    18f4:	8619002e 	lh	t9,46(s0)
    18f8:	5720000d 	bnezl	t9,1930 <func_80A215BC+0x134>
    18fc:	860d002c 	lh	t5,44(s0)
    1900:	8608002c 	lh	t0,44(s0)
    1904:	2509000a 	addiu	t1,t0,10
    1908:	a609002c 	sh	t1,44(s0)
    190c:	860a002c 	lh	t2,44(s0)
    1910:	29410064 	slti	at,t2,100
    1914:	5420005f 	bnezl	at,1a94 <func_80A215BC+0x298>
    1918:	26520001 	addiu	s2,s2,1
    191c:	860b002e 	lh	t3,46(s0)
    1920:	256c0001 	addiu	t4,t3,1
    1924:	1000005a 	b	1a90 <func_80A215BC+0x294>
    1928:	a60c002e 	sh	t4,46(s0)
    192c:	860d002c 	lh	t5,44(s0)
    1930:	25aefffd 	addiu	t6,t5,-3
    1934:	a60e002c 	sh	t6,44(s0)
    1938:	860f002c 	lh	t7,44(s0)
    193c:	5de00055 	bgtzl	t7,1a94 <func_80A215BC+0x298>
    1940:	26520001 	addiu	s2,s2,1
    1944:	a600002c 	sh	zero,44(s0)
    1948:	10000051 	b	1a90 <func_80A215BC+0x294>
    194c:	a2000000 	sb	zero,0(s0)
    1950:	56620050 	bnel	s3,v0,1a94 <func_80A215BC+0x298>
    1954:	26520001 	addiu	s2,s2,1
    1958:	c6000034 	lwc1	$f0,52(s0)
    195c:	4406d000 	mfc1	a2,$f26
    1960:	26040030 	addiu	a0,s0,48
    1964:	46140103 	div.s	$f4,$f0,$f20
    1968:	44050000 	mfc1	a1,$f0
    196c:	44072000 	mfc1	a3,$f4
    1970:	0c000000 	jal	0 <EnFz_Init>
    1974:	00000000 	nop
    1978:	8602002e 	lh	v0,46(s0)
    197c:	54400009 	bnezl	v0,19a4 <func_80A215BC+0x1a8>
    1980:	c6060010 	lwc1	$f6,16(s0)
    1984:	92180001 	lbu	t8,1(s0)
    1988:	24590001 	addiu	t9,v0,1
    198c:	2b010007 	slti	at,t8,7
    1990:	54200012 	bnezl	at,19dc <func_80A215BC+0x1e0>
    1994:	922b0263 	lbu	t3,611(s1)
    1998:	1000000f 	b	19d8 <func_80A215BC+0x1dc>
    199c:	a619002e 	sh	t9,46(s0)
    19a0:	c6060010 	lwc1	$f6,16(s0)
    19a4:	c60a0018 	lwc1	$f10,24(s0)
    19a8:	8608002c 	lh	t0,44(s0)
    19ac:	46183202 	mul.s	$f8,$f6,$f24
    19b0:	e61c0020 	swc1	$f28,32(s0)
    19b4:	2509ffef 	addiu	t1,t0,-17
    19b8:	46185402 	mul.s	$f16,$f10,$f24
    19bc:	a609002c 	sh	t1,44(s0)
    19c0:	860a002c 	lh	t2,44(s0)
    19c4:	e6080010 	swc1	$f8,16(s0)
    19c8:	1d400003 	bgtz	t2,19d8 <func_80A215BC+0x1dc>
    19cc:	e6100018 	swc1	$f16,24(s0)
    19d0:	a600002c 	sh	zero,44(s0)
    19d4:	a2000000 	sb	zero,0(s0)
    19d8:	922b0263 	lbu	t3,611(s1)
    19dc:	5560001b 	bnezl	t3,1a4c <func_80A215BC+0x250>
    19e0:	c6120004 	lwc1	$f18,4(s0)
    19e4:	860c002c 	lh	t4,44(s0)
    19e8:	29810065 	slti	at,t4,101
    19ec:	54200017 	bnezl	at,1a4c <func_80A215BC+0x250>
    19f0:	c6120004 	lwc1	$f18,4(s0)
    19f4:	920d0038 	lbu	t5,56(s0)
    19f8:	51a00014 	beqzl	t5,1a4c <func_80A215BC+0x250>
    19fc:	c6120004 	lwc1	$f18,4(s0)
    1a00:	c6120004 	lwc1	$f18,4(s0)
    1a04:	02802025 	move	a0,s4
    1a08:	02962821 	addu	a1,s4,s6
    1a0c:	4600910d 	trunc.w.s	$f4,$f18
    1a10:	262601e8 	addiu	a2,s1,488
    1a14:	440f2000 	mfc1	t7,$f4
    1a18:	00000000 	nop
    1a1c:	a62f022e 	sh	t7,558(s1)
    1a20:	c6060008 	lwc1	$f6,8(s0)
    1a24:	4600320d 	trunc.w.s	$f8,$f6
    1a28:	44194000 	mfc1	t9,$f8
    1a2c:	00000000 	nop
    1a30:	a6390230 	sh	t9,560(s1)
    1a34:	c60a000c 	lwc1	$f10,12(s0)
    1a38:	4600540d 	trunc.w.s	$f16,$f10
    1a3c:	44098000 	mfc1	t1,$f16
    1a40:	0c000000 	jal	0 <EnFz_Init>
    1a44:	a6290232 	sh	t1,562(s1)
    1a48:	c6120004 	lwc1	$f18,4(s0)
    1a4c:	02202025 	move	a0,s1
    1a50:	e7b20064 	swc1	$f18,100(sp)
    1a54:	c6040008 	lwc1	$f4,8(s0)
    1a58:	46142180 	add.s	$f6,$f4,$f20
    1a5c:	e7a60068 	swc1	$f6,104(sp)
    1a60:	c608000c 	lwc1	$f8,12(s0)
    1a64:	e7a8006c 	swc1	$f8,108(sp)
    1a68:	860a002e 	lh	t2,46(s0)
    1a6c:	526a0009 	beql	s3,t2,1a94 <func_80A215BC+0x298>
    1a70:	26520001 	addiu	s2,s2,1
    1a74:	0c000000 	jal	0 <EnFz_Init>
    1a78:	02e02825 	move	a1,s7
    1a7c:	50400005 	beqzl	v0,1a94 <func_80A215BC+0x298>
    1a80:	26520001 	addiu	s2,s2,1
    1a84:	a613002e 	sh	s3,46(s0)
    1a88:	e6160010 	swc1	$f22,16(s0)
    1a8c:	e6160018 	swc1	$f22,24(s0)
    1a90:	26520001 	addiu	s2,s2,1
    1a94:	00129400 	sll	s2,s2,0x10
    1a98:	00129403 	sra	s2,s2,0x10
    1a9c:	2a410028 	slti	at,s2,40
    1aa0:	1420ff77 	bnez	at,1880 <func_80A215BC+0x84>
    1aa4:	2610003c 	addiu	s0,s0,60
    1aa8:	8fbf005c 	lw	ra,92(sp)
    1aac:	d7b40010 	ldc1	$f20,16(sp)
    1ab0:	d7b60018 	ldc1	$f22,24(sp)
    1ab4:	d7b80020 	ldc1	$f24,32(sp)
    1ab8:	d7ba0028 	ldc1	$f26,40(sp)
    1abc:	d7bc0030 	ldc1	$f28,48(sp)
    1ac0:	8fb0003c 	lw	s0,60(sp)
    1ac4:	8fb10040 	lw	s1,64(sp)
    1ac8:	8fb20044 	lw	s2,68(sp)
    1acc:	8fb30048 	lw	s3,72(sp)
    1ad0:	8fb4004c 	lw	s4,76(sp)
    1ad4:	8fb50050 	lw	s5,80(sp)
    1ad8:	8fb60054 	lw	s6,84(sp)
    1adc:	8fb70058 	lw	s7,88(sp)
    1ae0:	03e00008 	jr	ra
    1ae4:	27bd0078 	addiu	sp,sp,120

00001ae8 <func_80A218A8>:
    1ae8:	27bdff40 	addiu	sp,sp,-192
    1aec:	afbf0064 	sw	ra,100(sp)
    1af0:	afbe0060 	sw	s8,96(sp)
    1af4:	afb7005c 	sw	s7,92(sp)
    1af8:	afb60058 	sw	s6,88(sp)
    1afc:	afb50054 	sw	s5,84(sp)
    1b00:	afb40050 	sw	s4,80(sp)
    1b04:	afb3004c 	sw	s3,76(sp)
    1b08:	afb20048 	sw	s2,72(sp)
    1b0c:	afb10044 	sw	s1,68(sp)
    1b10:	afb00040 	sw	s0,64(sp)
    1b14:	f7b40038 	sdc1	$f20,56(sp)
    1b18:	afa500c4 	sw	a1,196(sp)
    1b1c:	8cb00000 	lw	s0,0(a1)
    1b20:	24920274 	addiu	s2,a0,628
    1b24:	3c060000 	lui	a2,0x0
    1b28:	0000a825 	move	s5,zero
    1b2c:	24c60000 	addiu	a2,a2,0
    1b30:	27a4009c 	addiu	a0,sp,156
    1b34:	24070568 	li	a3,1384
    1b38:	0c000000 	jal	0 <EnFz_Init>
    1b3c:	02002825 	move	a1,s0
    1b40:	8faf00c4 	lw	t7,196(sp)
    1b44:	0c000000 	jal	0 <EnFz_Init>
    1b48:	8de40000 	lw	a0,0(t7)
    1b4c:	3c013f80 	lui	at,0x3f80
    1b50:	4481a000 	mtc1	at,$f20
    1b54:	00009825 	move	s3,zero
    1b58:	3c1ede00 	lui	s8,0xde00
    1b5c:	92580000 	lbu	t8,0(s2)
    1b60:	3c010001 	lui	at,0x1
    1b64:	34211da0 	ori	at,at,0x1da0
    1b68:	1b000078 	blez	t8,1d4c <func_80A218A8+0x264>
    1b6c:	8fb400c4 	lw	s4,196(sp)
    1b70:	0281a021 	addu	s4,s4,at
    1b74:	3c020600 	lui	v0,0x600
    1b78:	24423158 	addiu	v0,v0,12632
    1b7c:	3c0100ff 	lui	at,0xff
    1b80:	3421ffff 	ori	at,at,0xffff
    1b84:	0041b824 	and	s7,v0,at
    1b88:	0002c900 	sll	t9,v0,0x4
    1b8c:	8e0202d0 	lw	v0,720(s0)
    1b90:	00194f02 	srl	t1,t9,0x1c
    1b94:	3c0b0000 	lui	t3,0x0
    1b98:	244c0008 	addiu	t4,v0,8
    1b9c:	ae0c02d0 	sw	t4,720(s0)
    1ba0:	256b0000 	addiu	t3,t3,0
    1ba4:	00095080 	sll	t2,t1,0x2
    1ba8:	3c0de700 	lui	t5,0xe700
    1bac:	014bb021 	addu	s6,t2,t3
    1bb0:	ac4d0000 	sw	t5,0(v0)
    1bb4:	16a00017 	bnez	s5,1c14 <func_80A218A8+0x12c>
    1bb8:	ac400004 	sw	zero,4(v0)
    1bbc:	3c020600 	lui	v0,0x600
    1bc0:	244230a0 	addiu	v0,v0,12448
    1bc4:	3c0100ff 	lui	at,0xff
    1bc8:	3421ffff 	ori	at,at,0xffff
    1bcc:	00412824 	and	a1,v0,at
    1bd0:	00027100 	sll	t6,v0,0x4
    1bd4:	8e0202d0 	lw	v0,720(s0)
    1bd8:	000e7f02 	srl	t7,t6,0x1c
    1bdc:	3c190000 	lui	t9,0x0
    1be0:	24490008 	addiu	t1,v0,8
    1be4:	ae0902d0 	sw	t1,720(s0)
    1be8:	27390000 	addiu	t9,t9,0
    1bec:	000fc080 	sll	t8,t7,0x2
    1bf0:	03192021 	addu	a0,t8,t9
    1bf4:	ac5e0000 	sw	s8,0(v0)
    1bf8:	8c8a0000 	lw	t2,0(a0)
    1bfc:	3c018000 	lui	at,0x8000
    1c00:	26b50001 	addiu	s5,s5,1
    1c04:	01455821 	addu	t3,t2,a1
    1c08:	01616021 	addu	t4,t3,at
    1c0c:	32b500ff 	andi	s5,s5,0xff
    1c10:	ac4c0004 	sw	t4,4(v0)
    1c14:	8e0202d0 	lw	v0,720(s0)
    1c18:	3c0efa00 	lui	t6,0xfa00
    1c1c:	3c01c3e1 	lui	at,0xc3e1
    1c20:	244d0008 	addiu	t5,v0,8
    1c24:	ae0d02d0 	sw	t5,720(s0)
    1c28:	ac4e0000 	sw	t6,0(v0)
    1c2c:	864f002c 	lh	t7,44(s2)
    1c30:	24080003 	li	t0,3
    1c34:	02680019 	multu	s3,t0
    1c38:	3421eb00 	ori	at,at,0xeb00
    1c3c:	31f800ff 	andi	t8,t7,0xff
    1c40:	0301c825 	or	t9,t8,at
    1c44:	ac590004 	sw	t9,4(v0)
    1c48:	8e0202d0 	lw	v0,720(s0)
    1c4c:	3c0adb06 	lui	t2,0xdb06
    1c50:	354a0020 	ori	t2,t2,0x20
    1c54:	24490008 	addiu	t1,v0,8
    1c58:	ae0902d0 	sw	t1,720(s0)
    1c5c:	ac4a0000 	sw	t2,0(v0)
    1c60:	924c0001 	lbu	t4,1(s2)
    1c64:	00006812 	mflo	t5
    1c68:	8fab00c4 	lw	t3,196(sp)
    1c6c:	018d1821 	addu	v1,t4,t5
    1c70:	00680019 	multu	v1,t0
    1c74:	8d640000 	lw	a0,0(t3)
    1c78:	00033900 	sll	a3,v1,0x4
    1c7c:	24090020 	li	t1,32
    1c80:	24190020 	li	t9,32
    1c84:	24180001 	li	t8,1
    1c88:	240f0040 	li	t7,64
    1c8c:	240e0020 	li	t6,32
    1c90:	afae0010 	sw	t6,16(sp)
    1c94:	afaf0014 	sw	t7,20(sp)
    1c98:	00003012 	mflo	a2
    1c9c:	afb80018 	sw	t8,24(sp)
    1ca0:	afb90024 	sw	t9,36(sp)
    1ca4:	afa90028 	sw	t1,40(sp)
    1ca8:	00e33823 	subu	a3,a3,v1
    1cac:	afa00020 	sw	zero,32(sp)
    1cb0:	afa0001c 	sw	zero,28(sp)
    1cb4:	00002825 	move	a1,zero
    1cb8:	0c000000 	jal	0 <EnFz_Init>
    1cbc:	00408825 	move	s1,v0
    1cc0:	ae220004 	sw	v0,4(s1)
    1cc4:	8e46000c 	lw	a2,12(s2)
    1cc8:	c64e0008 	lwc1	$f14,8(s2)
    1ccc:	c64c0004 	lwc1	$f12,4(s2)
    1cd0:	0c000000 	jal	0 <EnFz_Init>
    1cd4:	00003825 	move	a3,zero
    1cd8:	0c000000 	jal	0 <EnFz_Init>
    1cdc:	02802025 	move	a0,s4
    1ce0:	c64c0030 	lwc1	$f12,48(s2)
    1ce4:	4406a000 	mfc1	a2,$f20
    1ce8:	24070001 	li	a3,1
    1cec:	0c000000 	jal	0 <EnFz_Init>
    1cf0:	46006386 	mov.s	$f14,$f12
    1cf4:	8e0202d0 	lw	v0,720(s0)
    1cf8:	3c0bda38 	lui	t3,0xda38
    1cfc:	356b0003 	ori	t3,t3,0x3
    1d00:	244a0008 	addiu	t2,v0,8
    1d04:	ae0a02d0 	sw	t2,720(s0)
    1d08:	3c050000 	lui	a1,0x0
    1d0c:	24a50000 	addiu	a1,a1,0
    1d10:	02002025 	move	a0,s0
    1d14:	24060590 	li	a2,1424
    1d18:	ac4b0000 	sw	t3,0(v0)
    1d1c:	0c000000 	jal	0 <EnFz_Init>
    1d20:	00408825 	move	s1,v0
    1d24:	ae220004 	sw	v0,4(s1)
    1d28:	8e0202d0 	lw	v0,720(s0)
    1d2c:	3c018000 	lui	at,0x8000
    1d30:	244c0008 	addiu	t4,v0,8
    1d34:	ae0c02d0 	sw	t4,720(s0)
    1d38:	ac5e0000 	sw	s8,0(v0)
    1d3c:	8ecd0000 	lw	t5,0(s6)
    1d40:	01b77021 	addu	t6,t5,s7
    1d44:	01c17821 	addu	t7,t6,at
    1d48:	ac4f0004 	sw	t7,4(v0)
    1d4c:	26730001 	addiu	s3,s3,1
    1d50:	00139c00 	sll	s3,s3,0x10
    1d54:	00139c03 	sra	s3,s3,0x10
    1d58:	2a610028 	slti	at,s3,40
    1d5c:	1420ff7f 	bnez	at,1b5c <func_80A218A8+0x74>
    1d60:	2652003c 	addiu	s2,s2,60
    1d64:	3c060000 	lui	a2,0x0
    1d68:	24c60000 	addiu	a2,a2,0
    1d6c:	27a4009c 	addiu	a0,sp,156
    1d70:	02002825 	move	a1,s0
    1d74:	0c000000 	jal	0 <EnFz_Init>
    1d78:	24070596 	li	a3,1430
    1d7c:	8fbf0064 	lw	ra,100(sp)
    1d80:	d7b40038 	ldc1	$f20,56(sp)
    1d84:	8fb00040 	lw	s0,64(sp)
    1d88:	8fb10044 	lw	s1,68(sp)
    1d8c:	8fb20048 	lw	s2,72(sp)
    1d90:	8fb3004c 	lw	s3,76(sp)
    1d94:	8fb40050 	lw	s4,80(sp)
    1d98:	8fb50054 	lw	s5,84(sp)
    1d9c:	8fb60058 	lw	s6,88(sp)
    1da0:	8fb7005c 	lw	s7,92(sp)
    1da4:	8fbe0060 	lw	s8,96(sp)
    1da8:	03e00008 	jr	ra
    1dac:	27bd00c0 	addiu	sp,sp,192
