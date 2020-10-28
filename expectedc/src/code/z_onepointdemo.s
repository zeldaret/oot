
build/src/code/z_onepointdemo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8007C680>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa40030 	sw	a0,48(sp)
       c:	00a03825 	move	a3,a1
      10:	afa70034 	sw	a3,52(sp)
      14:	00c02825 	move	a1,a2
      18:	0c000000 	jal	0 <func_8007C680>
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

00000084 <func_8007C704>:
      84:	27bdffe8 	addiu	sp,sp,-24
      88:	afbf0014 	sw	ra,20(sp)
      8c:	c48a0008 	lwc1	$f10,8(a0)
      90:	c4a80008 	lwc1	$f8,8(a1)
      94:	c4860000 	lwc1	$f6,0(a0)
      98:	c4a40000 	lwc1	$f4,0(a1)
      9c:	460a4381 	sub.s	$f14,$f8,$f10
      a0:	0c000000 	jal	0 <func_8007C680>
      a4:	46062301 	sub.s	$f12,$f4,$f6
      a8:	3c010000 	lui	at,0x0
      ac:	c4300000 	lwc1	$f16,0(at)
      b0:	3c010000 	lui	at,0x0
      b4:	c4240000 	lwc1	$f4,0(at)
      b8:	46100482 	mul.s	$f18,$f0,$f16
      bc:	3c013f00 	lui	at,0x3f00
      c0:	44814000 	mtc1	at,$f8
      c4:	8fbf0014 	lw	ra,20(sp)
      c8:	27bd0018 	addiu	sp,sp,24
      cc:	46049182 	mul.s	$f6,$f18,$f4
      d0:	46083280 	add.s	$f10,$f6,$f8
      d4:	4600540d 	trunc.w.s	$f16,$f10
      d8:	44028000 	mfc1	v0,$f16
      dc:	00000000 	nop
      e0:	00021400 	sll	v0,v0,0x10
      e4:	03e00008 	jr	ra
      e8:	00021403 	sra	v0,v0,0x10

000000ec <func_8007C76C>:
      ec:	c4840000 	lwc1	$f4,0(a0)
      f0:	4600218d 	trunc.w.s	$f6,$f4
      f4:	440f3000 	mfc1	t7,$f6
      f8:	00000000 	nop
      fc:	a4af0000 	sh	t7,0(a1)
     100:	c4880004 	lwc1	$f8,4(a0)
     104:	4600428d 	trunc.w.s	$f10,$f8
     108:	44195000 	mfc1	t9,$f10
     10c:	00000000 	nop
     110:	a4b90002 	sh	t9,2(a1)
     114:	c4900008 	lwc1	$f16,8(a0)
     118:	4600848d 	trunc.w.s	$f18,$f16
     11c:	44099000 	mfc1	t1,$f18
     120:	03e00008 	jr	ra
     124:	a4a90004 	sh	t1,4(a1)

00000128 <func_8007C7A8>:
     128:	27bdffb8 	addiu	sp,sp,-72
     12c:	afbf002c 	sw	ra,44(sp)
     130:	27ae0034 	addiu	t6,sp,52
     134:	27a80038 	addiu	t0,sp,56
     138:	240f0001 	li	t7,1
     13c:	24180001 	li	t8,1
     140:	24190001 	li	t9,1
     144:	afa00034 	sw	zero,52(sp)
     148:	afb9001c 	sw	t9,28(sp)
     14c:	afb80018 	sw	t8,24(sp)
     150:	afaf0014 	sw	t7,20(sp)
     154:	afa80024 	sw	t0,36(sp)
     158:	afae0010 	sw	t6,16(sp)
     15c:	27a7003c 	addiu	a3,sp,60
     160:	0c000000 	jal	0 <func_8007C680>
     164:	afa00020 	sw	zero,32(sp)
     168:	8fbf002c 	lw	ra,44(sp)
     16c:	27bd0048 	addiu	sp,sp,72
     170:	03e00008 	jr	ra
     174:	00000000 	nop

00000178 <func_8007C7F8>:
     178:	27bdffe0 	addiu	sp,sp,-32
     17c:	afbf0014 	sw	ra,20(sp)
     180:	00a03825 	move	a3,a1
     184:	27a5001c 	addiu	a1,sp,28
     188:	0c000000 	jal	0 <func_8007C680>
     18c:	27a60018 	addiu	a2,sp,24
     190:	8fbf0014 	lw	ra,20(sp)
     194:	27bd0020 	addiu	sp,sp,32
     198:	03e00008 	jr	ra
     19c:	00000000 	nop

000001a0 <func_8007C820>:
     1a0:	afa50004 	sw	a1,4(sp)
     1a4:	afa60008 	sw	a2,8(sp)
     1a8:	ac870000 	sw	a3,0(a0)
     1ac:	8fae0010 	lw	t6,16(sp)
     1b0:	00063400 	sll	a2,a2,0x10
     1b4:	00052c00 	sll	a1,a1,0x10
     1b8:	00052c03 	sra	a1,a1,0x10
     1bc:	00063403 	sra	a2,a2,0x10
     1c0:	a4850008 	sh	a1,8(a0)
     1c4:	a486000a 	sh	a2,10(a0)
     1c8:	03e00008 	jr	ra
     1cc:	ac8e0004 	sw	t6,4(a0)

000001d0 <func_8007C850>:
     1d0:	27bdff18 	addiu	sp,sp,-232
     1d4:	afb50040 	sw	s5,64(sp)
     1d8:	0005ac00 	sll	s5,a1,0x10
     1dc:	0015ac03 	sra	s5,s5,0x10
     1e0:	00157080 	sll	t6,s5,0x2
     1e4:	afbf0044 	sw	ra,68(sp)
     1e8:	afb4003c 	sw	s4,60(sp)
     1ec:	afb30038 	sw	s3,56(sp)
     1f0:	afb20034 	sw	s2,52(sp)
     1f4:	afb10030 	sw	s1,48(sp)
     1f8:	afb0002c 	sw	s0,44(sp)
     1fc:	afa500ec 	sw	a1,236(sp)
     200:	afa600f0 	sw	a2,240(sp)
     204:	008e7821 	addu	t7,a0,t6
     208:	8df30790 	lw	s3,1936(t7)
     20c:	8c8e0790 	lw	t6,1936(a0)
     210:	00063400 	sll	a2,a2,0x10
     214:	8678014e 	lh	t8,334(s3)
     218:	00063403 	sra	a2,a2,0x10
     21c:	28c11195 	slti	at,a2,4501
     220:	0018c880 	sll	t9,t8,0x2
     224:	00996821 	addu	t5,a0,t9
     228:	8db00790 	lw	s0,1936(t5)
     22c:	afae00dc 	sw	t6,220(sp)
     230:	8dd40090 	lw	s4,144(t6)
     234:	00e08825 	move	s1,a3
     238:	00809025 	move	s2,a0
     23c:	1420003b 	bnez	at,32c <func_8007C850+0x15c>
     240:	afb30084 	sw	s3,132(sp)
     244:	28c1219c 	slti	at,a2,8604
     248:	1420001c 	bnez	at,2bc <func_8007C850+0xec>
     24c:	28c12583 	slti	at,a2,9603
     250:	1420000d 	bnez	at,288 <func_8007C850+0xb8>
     254:	240125e7 	li	at,9703
     258:	10c10d3e 	beq	a2,at,3754 <L8007FD78+0x5c>
     25c:	240125e8 	li	at,9704
     260:	10c10d64 	beq	a2,at,37f4 <L8007FD78+0xfc>
     264:	240125e9 	li	at,9705
     268:	10c10d81 	beq	a2,at,3870 <L8007FD78+0x178>
     26c:	2401264e 	li	at,9806
     270:	10c10c04 	beq	a2,at,3284 <L8007F6E8+0x21c>
     274:	240126b4 	li	at,9908
     278:	10c10c1c 	beq	a2,at,32ec <L8007F6E8+0x284>
     27c:	00000000 	nop
     280:	10000da9 	b	3928 <L8007FFA8>
     284:	00000000 	nop
     288:	2401219c 	li	at,8604
     28c:	10c10ccc 	beq	a2,at,35c0 <L8007F6E8+0x558>
     290:	240121fc 	li	at,8700
     294:	10c10ba2 	beq	a2,at,3120 <L8007F6E8+0xb8>
     298:	2401251c 	li	at,9500
     29c:	10c10157 	beq	a2,at,7fc <func_8007C850+0x62c>
     2a0:	24012581 	li	at,9601
     2a4:	10c10437 	beq	a2,at,1384 <func_8007C850+0x11b4>
     2a8:	24012582 	li	at,9602
     2ac:	50c10450 	beql	a2,at,13f0 <func_8007C850+0x1220>
     2b0:	00152c00 	sll	a1,s5,0x10
     2b4:	10000d9c 	b	3928 <L8007FFA8>
     2b8:	00000000 	nop
     2bc:	28c11401 	slti	at,a2,5121
     2c0:	1420000d 	bnez	at,2f8 <func_8007C850+0x128>
     2c4:	24011771 	li	at,6001
     2c8:	10c10806 	beq	a2,at,22e4 <L8007E914+0x50>
     2cc:	2401177a 	li	at,6010
     2d0:	10c10784 	beq	a2,at,20e4 <L8007E5DC+0x188>
     2d4:	24011f42 	li	at,8002
     2d8:	10c10b84 	beq	a2,at,30ec <L8007F6E8+0x84>
     2dc:	24011f4a 	li	at,8010
     2e0:	10c10b75 	beq	a2,at,30b8 <L8007F6E8+0x50>
     2e4:	2401219b 	li	at,8603
     2e8:	10c10ca8 	beq	a2,at,358c <L8007F6E8+0x524>
     2ec:	00000000 	nop
     2f0:	10000d8d 	b	3928 <L8007FFA8>
     2f4:	00000000 	nop
     2f8:	2401119e 	li	at,4510
     2fc:	10c1038d 	beq	a2,at,1134 <func_8007C850+0xf64>
     300:	24011388 	li	at,5000
     304:	10c100ec 	beq	a2,at,6b8 <func_8007C850+0x4e8>
     308:	24011392 	li	at,5010
     30c:	10c1012c 	beq	a2,at,7c0 <func_8007C850+0x5f0>
     310:	240113f6 	li	at,5110
     314:	10c10d75 	beq	a2,at,38ec <L8007FD78+0x1f4>
     318:	24011400 	li	at,5120
     31c:	50c10375 	beql	a2,at,10f4 <func_8007C850+0xf24>
     320:	02402025 	move	a0,s2
     324:	10000d80 	b	3928 <L8007FFA8>
     328:	00000000 	nop
     32c:	28c108df 	slti	at,a2,2271
     330:	1420004e 	bnez	at,46c <func_8007C850+0x29c>
     334:	28c10c77 	slti	at,a2,3191
     338:	14200031 	bnez	at,400 <func_8007C850+0x230>
     33c:	28c10fb7 	slti	at,a2,4023
     340:	14200010 	bnez	at,384 <func_8007C850+0x1b4>
     344:	28c1107e 	slti	at,a2,4222
     348:	14200005 	bnez	at,360 <func_8007C850+0x190>
     34c:	24011194 	li	at,4500
     350:	50c10397 	beql	a2,at,11b0 <func_8007C850+0xfe0>
     354:	27b000a0 	addiu	s0,sp,160
     358:	10000d73 	b	3928 <L8007FFA8>
     35c:	00000000 	nop
     360:	24d8effc 	addiu	t8,a2,-4100
     364:	2f01007a 	sltiu	at,t8,122
     368:	10200d6f 	beqz	at,3928 <L8007FFA8>
     36c:	0018c080 	sll	t8,t8,0x2
     370:	3c010000 	lui	at,0x0
     374:	00380821 	addu	at,at,t8
     378:	8c380000 	lw	t8,0(at)
     37c:	03000008 	jr	t8
     380:	00000000 	nop
     384:	28c10d7b 	slti	at,a2,3451
     388:	14200009 	bnez	at,3b0 <func_8007C850+0x1e0>
     38c:	24d9f060 	addiu	t9,a2,-4000
     390:	2f210017 	sltiu	at,t9,23
     394:	10200d64 	beqz	at,3928 <L8007FFA8>
     398:	0019c880 	sll	t9,t9,0x2
     39c:	3c010000 	lui	at,0x0
     3a0:	00390821 	addu	at,at,t9
     3a4:	8c390000 	lw	t9,0(at)
     3a8:	03200008 	jr	t9
     3ac:	00000000 	nop
     3b0:	28c10cbe 	slti	at,a2,3262
     3b4:	14200009 	bnez	at,3dc <func_8007C850+0x20c>
     3b8:	24cdf326 	addiu	t5,a2,-3290
     3bc:	2da100a1 	sltiu	at,t5,161
     3c0:	10200d59 	beqz	at,3928 <L8007FFA8>
     3c4:	000d6880 	sll	t5,t5,0x2
     3c8:	3c010000 	lui	at,0x0
     3cc:	002d0821 	addu	at,at,t5
     3d0:	8c2d0000 	lw	t5,0(at)
     3d4:	01a00008 	jr	t5
     3d8:	00000000 	nop
     3dc:	24cef36c 	addiu	t6,a2,-3220
     3e0:	2dc1002a 	sltiu	at,t6,42
     3e4:	10200d50 	beqz	at,3928 <L8007FFA8>
     3e8:	000e7080 	sll	t6,t6,0x2
     3ec:	3c010000 	lui	at,0x0
     3f0:	002e0821 	addu	at,at,t6
     3f4:	8c2e0000 	lw	t6,0(at)
     3f8:	01c00008 	jr	t6
     3fc:	00000000 	nop
     400:	28c10925 	slti	at,a2,2341
     404:	14200010 	bnez	at,448 <func_8007C850+0x278>
     408:	28c1092f 	slti	at,a2,2351
     40c:	14200009 	bnez	at,434 <func_8007C850+0x264>
     410:	24cff43e 	addiu	t7,a2,-3010
     414:	2de100b5 	sltiu	at,t7,181
     418:	10200d43 	beqz	at,3928 <L8007FFA8>
     41c:	000f7880 	sll	t7,t7,0x2
     420:	3c010000 	lui	at,0x0
     424:	002f0821 	addu	at,at,t7
     428:	8c2f0000 	lw	t7,0(at)
     42c:	01e00008 	jr	t7
     430:	00000000 	nop
     434:	2401092e 	li	at,2350
     438:	10c10261 	beq	a2,at,dc0 <func_8007C850+0xbf0>
     43c:	00000000 	nop
     440:	10000d39 	b	3928 <L8007FFA8>
     444:	00000000 	nop
     448:	240108e8 	li	at,2280
     44c:	10c10196 	beq	a2,at,aa8 <func_8007C850+0x8d8>
     450:	240108f2 	li	at,2290
     454:	10c10311 	beq	a2,at,109c <func_8007C850+0xecc>
     458:	24010924 	li	at,2340
     45c:	10c10236 	beq	a2,at,d38 <func_8007C850+0xb68>
     460:	00000000 	nop
     464:	10000d30 	b	3928 <L8007FFA8>
     468:	00000000 	nop
     46c:	28c10899 	slti	at,a2,2201
     470:	1420000d 	bnez	at,4a8 <func_8007C850+0x2d8>
     474:	240108a2 	li	at,2210
     478:	10c10382 	beq	a2,at,1284 <func_8007C850+0x10b4>
     47c:	240108ac 	li	at,2220
     480:	10c101f0 	beq	a2,at,c44 <func_8007C850+0xa74>
     484:	240108b6 	li	at,2230
     488:	10c10210 	beq	a2,at,ccc <func_8007C850+0xafc>
     48c:	240108d4 	li	at,2260
     490:	10c100e7 	beq	a2,at,830 <func_8007C850+0x660>
     494:	240108de 	li	at,2270
     498:	10c1011c 	beq	a2,at,90c <func_8007C850+0x73c>
     49c:	00000000 	nop
     4a0:	10000d21 	b	3928 <L8007FFA8>
     4a4:	00000000 	nop
     4a8:	240103e8 	li	at,1000
     4ac:	10c10c18 	beq	a2,at,3510 <L8007F6E8+0x4a8>
     4b0:	240103f2 	li	at,1010
     4b4:	10c1039c 	beq	a2,at,1328 <func_8007C850+0x1158>
     4b8:	240103fc 	li	at,1020
     4bc:	10c10009 	beq	a2,at,4e4 <func_8007C850+0x314>
     4c0:	24010406 	li	at,1030
     4c4:	10c1004e 	beq	a2,at,600 <func_8007C850+0x430>
     4c8:	2401044c 	li	at,1100
     4cc:	10c10b40 	beq	a2,at,31d0 <L8007F6E8+0x168>
     4d0:	24010898 	li	at,2200
     4d4:	50c10248 	beql	a2,at,df8 <func_8007C850+0xc28>
     4d8:	02402025 	move	a0,s2
     4dc:	10000d12 	b	3928 <L8007FFA8>
     4e0:	00000000 	nop
     4e4:	87b800fa 	lh	t8,250(sp)
     4e8:	2b010014 	slti	at,t8,20
     4ec:	10200002 	beqz	at,4f8 <func_8007C850+0x328>
     4f0:	24030014 	li	v1,20
     4f4:	a7a300fa 	sh	v1,250(sp)
     4f8:	8e4e00ec 	lw	t6,236(s2)
     4fc:	3c190000 	lui	t9,0x0
     500:	87a300fa 	lh	v1,250(sp)
     504:	27390000 	addiu	t9,t9,0
     508:	af2e0000 	sw	t6,0(t9)
     50c:	8e4d00f0 	lw	t5,240(s2)
     510:	3c0f0000 	lui	t7,0x0
     514:	25ef0000 	addiu	t7,t7,0
     518:	af2d0004 	sw	t5,4(t9)
     51c:	8e4e00f4 	lw	t6,244(s2)
     520:	44835000 	mtc1	v1,$f10
     524:	3c020000 	lui	v0,0x0
     528:	af2e0008 	sw	t6,8(t9)
     52c:	8e5900e0 	lw	t9,224(s2)
     530:	24420000 	addiu	v0,v0,0
     534:	46805420 	cvt.s.w	$f16,$f10
     538:	adf90000 	sw	t9,0(t7)
     53c:	8e5800e4 	lw	t8,228(s2)
     540:	3c013f00 	lui	at,0x3f00
     544:	3c0d0000 	lui	t5,0x0
     548:	adf80004 	sw	t8,4(t7)
     54c:	8e5900e8 	lw	t9,232(s2)
     550:	44810000 	mtc1	at,$f0
     554:	25ad0000 	addiu	t5,t5,0
     558:	adf90008 	sw	t9,8(t7)
     55c:	c64400d0 	lwc1	$f4,208(s2)
     560:	8fae00dc 	lw	t6,220(sp)
     564:	46008482 	mul.s	$f18,$f16,$f0
     568:	e4440008 	swc1	$f4,8(v0)
     56c:	8dd80050 	lw	t8,80(t6)
     570:	3c013f80 	lui	at,0x3f80
     574:	44814000 	mtc1	at,$f8
     578:	adb80000 	sw	t8,0(t5)
     57c:	8dcf0054 	lw	t7,84(t6)
     580:	46124103 	div.s	$f4,$f8,$f18
     584:	3c190000 	lui	t9,0x0
     588:	adaf0004 	sw	t7,4(t5)
     58c:	8dd80058 	lw	t8,88(t6)
     590:	27390000 	addiu	t9,t9,0
     594:	00152c00 	sll	a1,s5,0x10
     598:	adb80008 	sw	t8,8(t5)
     59c:	8fad00dc 	lw	t5,220(sp)
     5a0:	00052c03 	sra	a1,a1,0x10
     5a4:	02402025 	move	a0,s2
     5a8:	8daf005c 	lw	t7,92(t5)
     5ac:	02803025 	move	a2,s4
     5b0:	2407003c 	li	a3,60
     5b4:	af2f0000 	sw	t7,0(t9)
     5b8:	8dae0060 	lw	t6,96(t5)
     5bc:	af2e0004 	sw	t6,4(t9)
     5c0:	8daf0064 	lw	t7,100(t5)
     5c4:	246d0001 	addiu	t5,v1,1
     5c8:	240e0003 	li	t6,3
     5cc:	af2f0008 	sw	t7,8(t9)
     5d0:	8fb800dc 	lw	t8,220(sp)
     5d4:	2479ffff 	addiu	t9,v1,-1
     5d8:	c70600fc 	lwc1	$f6,252(t8)
     5dc:	a459002c 	sh	t9,44(v0)
     5e0:	e4460030 	swc1	$f6,48(v0)
     5e4:	a66d0160 	sh	t5,352(s3)
     5e8:	e4440034 	swc1	$f4,52(v0)
     5ec:	ae620004 	sw	v0,4(s3)
     5f0:	0c000000 	jal	0 <func_8007C680>
     5f4:	ae6e0000 	sw	t6,0(s3)
     5f8:	10000cd0 	b	393c <L8007FFA8+0x14>
     5fc:	8fbf0044 	lw	ra,68(sp)
     600:	8e5900ec 	lw	t9,236(s2)
     604:	3c0f0000 	lui	t7,0x0
     608:	25ef0000 	addiu	t7,t7,0
     60c:	adf90000 	sw	t9,0(t7)
     610:	8e5800f0 	lw	t8,240(s2)
     614:	3c0d0000 	lui	t5,0x0
     618:	25ad0000 	addiu	t5,t5,0
     61c:	adf80004 	sw	t8,4(t7)
     620:	8e5900f4 	lw	t9,244(s2)
     624:	3c100000 	lui	s0,0x0
     628:	26100000 	addiu	s0,s0,0
     62c:	adf90008 	sw	t9,8(t7)
     630:	8e4f00e0 	lw	t7,224(s2)
     634:	27a400d0 	addiu	a0,sp,208
     638:	adaf0000 	sw	t7,0(t5)
     63c:	8e4e00e4 	lw	t6,228(s2)
     640:	adae0004 	sw	t6,4(t5)
     644:	8e4f00e8 	lw	t7,232(s2)
     648:	adaf0008 	sw	t7,8(t5)
     64c:	8fb800dc 	lw	t8,220(sp)
     650:	c64600d0 	lwc1	$f6,208(s2)
     654:	27050050 	addiu	a1,t8,80
     658:	2706005c 	addiu	a2,t8,92
     65c:	0c000000 	jal	0 <func_8007C680>
     660:	e6060008 	swc1	$f6,8(s0)
     664:	87b900d6 	lh	t9,214(sp)
     668:	3c010000 	lui	at,0x0
     66c:	c4280000 	lwc1	$f8,0(at)
     670:	44995000 	mtc1	t9,$f10
     674:	87ad00fa 	lh	t5,250(sp)
     678:	240f0002 	li	t7,2
     67c:	46805420 	cvt.s.w	$f16,$f10
     680:	25aeffff 	addiu	t6,t5,-1
     684:	a60e002c 	sh	t6,44(s0)
     688:	00152c00 	sll	a1,s5,0x10
     68c:	00052c03 	sra	a1,a1,0x10
     690:	02402025 	move	a0,s2
     694:	46088482 	mul.s	$f18,$f16,$f8
     698:	02803025 	move	a2,s4
     69c:	2407003c 	li	a3,60
     6a0:	e6120048 	swc1	$f18,72(s0)
     6a4:	ae700004 	sw	s0,4(s3)
     6a8:	0c000000 	jal	0 <func_8007C680>
     6ac:	ae6f0000 	sw	t7,0(s3)
     6b0:	10000ca2 	b	393c <L8007FFA8+0x14>
     6b4:	8fbf0044 	lw	ra,68(sp)
     6b8:	8e5900ec 	lw	t9,236(s2)
     6bc:	27a20064 	addiu	v0,sp,100
     6c0:	3c0d0000 	lui	t5,0x0
     6c4:	ac590000 	sw	t9,0(v0)
     6c8:	8e5800f0 	lw	t8,240(s2)
     6cc:	8c4f0000 	lw	t7,0(v0)
     6d0:	25ad0000 	addiu	t5,t5,0
     6d4:	ac580004 	sw	t8,4(v0)
     6d8:	8e5900f4 	lw	t9,244(s2)
     6dc:	3c180000 	lui	t8,0x0
     6e0:	27180000 	addiu	t8,t8,0
     6e4:	ac590008 	sw	t9,8(v0)
     6e8:	adaf0000 	sw	t7,0(t5)
     6ec:	8c4e0004 	lw	t6,4(v0)
     6f0:	3c100000 	lui	s0,0x0
     6f4:	26100000 	addiu	s0,s0,0
     6f8:	adae0004 	sw	t6,4(t5)
     6fc:	8c4f0008 	lw	t7,8(v0)
     700:	3c0e0000 	lui	t6,0x0
     704:	25ce0000 	addiu	t6,t6,0
     708:	adaf0008 	sw	t7,8(t5)
     70c:	8c4d0000 	lw	t5,0(v0)
     710:	27a400d0 	addiu	a0,sp,208
     714:	26250038 	addiu	a1,s1,56
     718:	af0d0000 	sw	t5,0(t8)
     71c:	8c590004 	lw	t9,4(v0)
     720:	af190004 	sw	t9,4(t8)
     724:	8c4d0008 	lw	t5,8(v0)
     728:	af0d0008 	sw	t5,8(t8)
     72c:	8e5800e0 	lw	t8,224(s2)
     730:	add80000 	sw	t8,0(t6)
     734:	8e4f00e4 	lw	t7,228(s2)
     738:	adcf0004 	sw	t7,4(t6)
     73c:	8e5800e8 	lw	t8,232(s2)
     740:	add80008 	sw	t8,8(t6)
     744:	c64200d0 	lwc1	$f2,208(s2)
     748:	8fa600dc 	lw	a2,220(sp)
     74c:	e6020058 	swc1	$f2,88(s0)
     750:	e6020008 	swc1	$f2,8(s0)
     754:	0c000000 	jal	0 <func_8007C680>
     758:	24c60050 	addiu	a2,a2,80
     75c:	8fb900dc 	lw	t9,220(sp)
     760:	3c040000 	lui	a0,0x0
     764:	3c050000 	lui	a1,0x0
     768:	c72400dc 	lwc1	$f4,220(t9)
     76c:	24a50000 	addiu	a1,a1,0
     770:	24840000 	addiu	a0,a0,0
     774:	27a600d0 	addiu	a2,sp,208
     778:	0c000000 	jal	0 <func_8007C680>
     77c:	e7a400d0 	swc1	$f4,208(sp)
     780:	3c0141a0 	lui	at,0x41a0
     784:	44815000 	mtc1	at,$f10
     788:	c606003c 	lwc1	$f6,60(s0)
     78c:	240d0004 	li	t5,4
     790:	00152c00 	sll	a1,s5,0x10
     794:	460a3400 	add.s	$f16,$f6,$f10
     798:	00052c03 	sra	a1,a1,0x10
     79c:	02402025 	move	a0,s2
     7a0:	02803025 	move	a2,s4
     7a4:	e610003c 	swc1	$f16,60(s0)
     7a8:	ae700004 	sw	s0,4(s3)
     7ac:	ae6d0000 	sw	t5,0(s3)
     7b0:	0c000000 	jal	0 <func_8007C680>
     7b4:	2407003c 	li	a3,60
     7b8:	10000c60 	b	393c <L8007FFA8+0x14>
     7bc:	8fbf0044 	lw	ra,68(sp)
     7c0:	00152c00 	sll	a1,s5,0x10
     7c4:	00052c03 	sra	a1,a1,0x10
     7c8:	02402025 	move	a0,s2
     7cc:	02803025 	move	a2,s4
     7d0:	0c000000 	jal	0 <func_8007C680>
     7d4:	2407002b 	li	a3,43
     7d8:	8fae00dc 	lw	t6,220(sp)
     7dc:	00152c00 	sll	a1,s5,0x10
     7e0:	00052c03 	sra	a1,a1,0x10
     7e4:	02402025 	move	a0,s2
     7e8:	25c60050 	addiu	a2,t6,80
     7ec:	0c000000 	jal	0 <func_8007C680>
     7f0:	25c7005c 	addiu	a3,t6,92
     7f4:	10000c50 	b	3938 <L8007FFA8+0x10>
     7f8:	a660015a 	sh	zero,346(s3)
     7fc:	3c0f0000 	lui	t7,0x0
     800:	25ef0000 	addiu	t7,t7,0
     804:	24180003 	li	t8,3
     808:	00152c00 	sll	a1,s5,0x10
     80c:	ae6f0004 	sw	t7,4(s3)
     810:	ae780000 	sw	t8,0(s3)
     814:	00052c03 	sra	a1,a1,0x10
     818:	02402025 	move	a0,s2
     81c:	02803025 	move	a2,s4
     820:	0c000000 	jal	0 <func_8007C680>
     824:	2407003c 	li	a3,60
     828:	10000c44 	b	393c <L8007FFA8+0x14>
     82c:	8fbf0044 	lw	ra,68(sp)
     830:	8fb900dc 	lw	t9,220(sp)
     834:	8f2d008c 	lw	t5,140(t9)
     838:	8dae009c 	lw	t6,156(t5)
     83c:	31cf0001 	andi	t7,t6,0x1
     840:	11e00004 	beqz	t7,854 <func_8007C850+0x684>
     844:	3c01c120 	lui	at,0xc120
     848:	44816000 	mtc1	at,$f12
     84c:	10000004 	b	860 <func_8007C850+0x690>
     850:	00000000 	nop
     854:	3c014120 	lui	at,0x4120
     858:	44816000 	mtc1	at,$f12
     85c:	00000000 	nop
     860:	0c000000 	jal	0 <func_8007C680>
     864:	e7ac005c 	swc1	$f12,92(sp)
     868:	3c014100 	lui	at,0x4100
     86c:	44814000 	mtc1	at,$f8
     870:	c7ac005c 	lwc1	$f12,92(sp)
     874:	3c100000 	lui	s0,0x0
     878:	46080482 	mul.s	$f18,$f0,$f8
     87c:	8fb800dc 	lw	t8,220(sp)
     880:	26100000 	addiu	s0,s0,0
     884:	460c9080 	add.s	$f2,$f18,$f12
     888:	e6020060 	swc1	$f2,96(s0)
     88c:	e6020010 	swc1	$f2,16(s0)
     890:	8f19008c 	lw	t9,140(t8)
     894:	8f2d009c 	lw	t5,156(t9)
     898:	31ae0001 	andi	t6,t5,0x1
     89c:	11c00004 	beqz	t6,8b0 <func_8007C850+0x6e0>
     8a0:	3c0141a0 	lui	at,0x41a0
     8a4:	44816000 	mtc1	at,$f12
     8a8:	10000004 	b	8bc <func_8007C850+0x6ec>
     8ac:	00000000 	nop
     8b0:	3c01c1a0 	lui	at,0xc1a0
     8b4:	44816000 	mtc1	at,$f12
     8b8:	00000000 	nop
     8bc:	0c000000 	jal	0 <func_8007C680>
     8c0:	e7ac005c 	swc1	$f12,92(sp)
     8c4:	3c0140a0 	lui	at,0x40a0
     8c8:	44812000 	mtc1	at,$f4
     8cc:	c7ac005c 	lwc1	$f12,92(sp)
     8d0:	240f0005 	li	t7,5
     8d4:	46040182 	mul.s	$f6,$f0,$f4
     8d8:	00152c00 	sll	a1,s5,0x10
     8dc:	00052c03 	sra	a1,a1,0x10
     8e0:	02402025 	move	a0,s2
     8e4:	02803025 	move	a2,s4
     8e8:	2407003c 	li	a3,60
     8ec:	460c3080 	add.s	$f2,$f6,$f12
     8f0:	e602006c 	swc1	$f2,108(s0)
     8f4:	e602001c 	swc1	$f2,28(s0)
     8f8:	ae700004 	sw	s0,4(s3)
     8fc:	0c000000 	jal	0 <func_8007C680>
     900:	ae6f0000 	sw	t7,0(s3)
     904:	10000c0d 	b	393c <L8007FFA8+0x14>
     908:	8fbf0044 	lw	ra,68(sp)
     90c:	3c180000 	lui	t8,0x0
     910:	27180000 	addiu	t8,t8,0
     914:	2419000b 	li	t9,11
     918:	3c100000 	lui	s0,0x0
     91c:	ae780004 	sw	t8,4(s3)
     920:	ae790000 	sw	t9,0(s3)
     924:	26100000 	addiu	s0,s0,0
     928:	00008825 	move	s1,zero
     92c:	920d0000 	lbu	t5,0(s0)
     930:	2401008f 	li	at,143
     934:	51a10021 	beql	t5,at,9bc <func_8007C850+0x7ec>
     938:	8fae0084 	lw	t6,132(sp)
     93c:	0c000000 	jal	0 <func_8007C680>
     940:	00000000 	nop
     944:	3c0140a0 	lui	at,0x40a0
     948:	44815000 	mtc1	at,$f10
     94c:	00000000 	nop
     950:	460a0402 	mul.s	$f16,$f0,$f10
     954:	0c000000 	jal	0 <func_8007C680>
     958:	e6100010 	swc1	$f16,16(s0)
     95c:	3c0141f0 	lui	at,0x41f0
     960:	44814000 	mtc1	at,$f8
     964:	3c014120 	lui	at,0x4120
     968:	44812000 	mtc1	at,$f4
     96c:	46080482 	mul.s	$f18,$f0,$f8
     970:	46049180 	add.s	$f6,$f18,$f4
     974:	0c000000 	jal	0 <func_8007C680>
     978:	e6060018 	swc1	$f6,24(s0)
     97c:	3c0142c8 	lui	at,0x42c8
     980:	44815000 	mtc1	at,$f10
     984:	3c0141a0 	lui	at,0x41a0
     988:	44814000 	mtc1	at,$f8
     98c:	460a0402 	mul.s	$f16,$f0,$f10
     990:	46088480 	add.s	$f18,$f16,$f8
     994:	0c000000 	jal	0 <func_8007C680>
     998:	e612001c 	swc1	$f18,28(s0)
     99c:	3c0142a0 	lui	at,0x42a0
     9a0:	44812000 	mtc1	at,$f4
     9a4:	3c014248 	lui	at,0x4248
     9a8:	44815000 	mtc1	at,$f10
     9ac:	46040182 	mul.s	$f6,$f0,$f4
     9b0:	460a3400 	add.s	$f16,$f6,$f10
     9b4:	e6100024 	swc1	$f16,36(s0)
     9b8:	8fae0084 	lw	t6,132(sp)
     9bc:	26310001 	addiu	s1,s1,1
     9c0:	26100028 	addiu	s0,s0,40
     9c4:	8dcf0000 	lw	t7,0(t6)
     9c8:	25f8fffd 	addiu	t8,t7,-3
     9cc:	0238082a 	slt	at,s1,t8
     9d0:	5420ffd7 	bnezl	at,930 <func_8007C850+0x760>
     9d4:	920d0000 	lbu	t5,0(s0)
     9d8:	8fb900dc 	lw	t9,220(sp)
     9dc:	8f2d008c 	lw	t5,140(t9)
     9e0:	8dae009c 	lw	t6,156(t5)
     9e4:	31cf0001 	andi	t7,t6,0x1
     9e8:	11e00004 	beqz	t7,9fc <func_8007C850+0x82c>
     9ec:	3c014040 	lui	at,0x4040
     9f0:	44811000 	mtc1	at,$f2
     9f4:	10000004 	b	a08 <func_8007C850+0x838>
     9f8:	00000000 	nop
     9fc:	3c01c040 	lui	at,0xc040
     a00:	44811000 	mtc1	at,$f2
     a04:	00000000 	nop
     a08:	0c000000 	jal	0 <func_8007C680>
     a0c:	e7a20060 	swc1	$f2,96(sp)
     a10:	c7a20060 	lwc1	$f2,96(sp)
     a14:	0015c080 	sll	t8,s5,0x2
     a18:	0315c021 	addu	t8,t8,s5
     a1c:	46020200 	add.s	$f8,$f0,$f2
     a20:	0018c0c0 	sll	t8,t8,0x3
     a24:	3c010000 	lui	at,0x0
     a28:	00380821 	addu	at,at,t8
     a2c:	00152c00 	sll	a1,s5,0x10
     a30:	e4280000 	swc1	$f8,0(at)
     a34:	00052c03 	sra	a1,a1,0x10
     a38:	02402025 	move	a0,s2
     a3c:	02803025 	move	a2,s4
     a40:	0c000000 	jal	0 <func_8007C680>
     a44:	2407003c 	li	a3,60
     a48:	02602025 	move	a0,s3
     a4c:	0c000000 	jal	0 <func_8007C680>
     a50:	24050005 	li	a1,5
     a54:	00022400 	sll	a0,v0,0x10
     a58:	00408825 	move	s1,v0
     a5c:	00042403 	sra	a0,a0,0x10
     a60:	0c000000 	jal	0 <func_8007C680>
     a64:	24050190 	li	a1,400
     a68:	00118400 	sll	s0,s1,0x10
     a6c:	00108403 	sra	s0,s0,0x10
     a70:	00102400 	sll	a0,s0,0x10
     a74:	2419003c 	li	t9,60
     a78:	afb90010 	sw	t9,16(sp)
     a7c:	00042403 	sra	a0,a0,0x10
     a80:	24050004 	li	a1,4
     a84:	24060005 	li	a2,5
     a88:	0c000000 	jal	0 <func_8007C680>
     a8c:	24070028 	li	a3,40
     a90:	00102400 	sll	a0,s0,0x10
     a94:	00042403 	sra	a0,a0,0x10
     a98:	0c000000 	jal	0 <func_8007C680>
     a9c:	24050640 	li	a1,1600
     aa0:	10000ba6 	b	393c <L8007FFA8+0x14>
     aa4:	8fbf0044 	lw	ra,68(sp)
     aa8:	3c0d0000 	lui	t5,0x0
     aac:	25ad0000 	addiu	t5,t5,0
     ab0:	240e0007 	li	t6,7
     ab4:	3c100000 	lui	s0,0x0
     ab8:	ae6d0004 	sw	t5,4(s3)
     abc:	ae6e0000 	sw	t6,0(s3)
     ac0:	26100000 	addiu	s0,s0,0
     ac4:	00008825 	move	s1,zero
     ac8:	920f0000 	lbu	t7,0(s0)
     acc:	2401008f 	li	at,143
     ad0:	51e10021 	beql	t7,at,b58 <func_8007C850+0x988>
     ad4:	8fb80084 	lw	t8,132(sp)
     ad8:	0c000000 	jal	0 <func_8007C680>
     adc:	00000000 	nop
     ae0:	3c0141a0 	lui	at,0x41a0
     ae4:	44819000 	mtc1	at,$f18
     ae8:	00000000 	nop
     aec:	46120102 	mul.s	$f4,$f0,$f18
     af0:	0c000000 	jal	0 <func_8007C680>
     af4:	e6040010 	swc1	$f4,16(s0)
     af8:	3c014220 	lui	at,0x4220
     afc:	44813000 	mtc1	at,$f6
     b00:	3c014120 	lui	at,0x4120
     b04:	44818000 	mtc1	at,$f16
     b08:	46060282 	mul.s	$f10,$f0,$f6
     b0c:	46105200 	add.s	$f8,$f10,$f16
     b10:	0c000000 	jal	0 <func_8007C680>
     b14:	e6080018 	swc1	$f8,24(s0)
     b18:	3c014220 	lui	at,0x4220
     b1c:	44819000 	mtc1	at,$f18
     b20:	3c014270 	lui	at,0x4270
     b24:	44813000 	mtc1	at,$f6
     b28:	46120102 	mul.s	$f4,$f0,$f18
     b2c:	46062280 	add.s	$f10,$f4,$f6
     b30:	0c000000 	jal	0 <func_8007C680>
     b34:	e60a001c 	swc1	$f10,28(s0)
     b38:	3c014220 	lui	at,0x4220
     b3c:	44818000 	mtc1	at,$f16
     b40:	3c0142a0 	lui	at,0x42a0
     b44:	44819000 	mtc1	at,$f18
     b48:	46100202 	mul.s	$f8,$f0,$f16
     b4c:	46124100 	add.s	$f4,$f8,$f18
     b50:	e6040024 	swc1	$f4,36(s0)
     b54:	8fb80084 	lw	t8,132(sp)
     b58:	26310001 	addiu	s1,s1,1
     b5c:	26100028 	addiu	s0,s0,40
     b60:	8f190000 	lw	t9,0(t8)
     b64:	272dfffd 	addiu	t5,t9,-3
     b68:	022d082a 	slt	at,s1,t5
     b6c:	5420ffd7 	bnezl	at,acc <func_8007C850+0x8fc>
     b70:	920f0000 	lbu	t7,0(s0)
     b74:	8fae00dc 	lw	t6,220(sp)
     b78:	8dcf008c 	lw	t7,140(t6)
     b7c:	8df8009c 	lw	t8,156(t7)
     b80:	33190001 	andi	t9,t8,0x1
     b84:	13200004 	beqz	t9,b98 <func_8007C850+0x9c8>
     b88:	3c014040 	lui	at,0x4040
     b8c:	44811000 	mtc1	at,$f2
     b90:	10000004 	b	ba4 <func_8007C850+0x9d4>
     b94:	00000000 	nop
     b98:	3c01c040 	lui	at,0xc040
     b9c:	44811000 	mtc1	at,$f2
     ba0:	00000000 	nop
     ba4:	0c000000 	jal	0 <func_8007C680>
     ba8:	e7a20060 	swc1	$f2,96(sp)
     bac:	c7a20060 	lwc1	$f2,96(sp)
     bb0:	00156880 	sll	t5,s5,0x2
     bb4:	01b56821 	addu	t5,t5,s5
     bb8:	46020180 	add.s	$f6,$f0,$f2
     bbc:	000d68c0 	sll	t5,t5,0x3
     bc0:	3c010000 	lui	at,0x0
     bc4:	002d0821 	addu	at,at,t5
     bc8:	00152c00 	sll	a1,s5,0x10
     bcc:	e4260000 	swc1	$f6,0(at)
     bd0:	00052c03 	sra	a1,a1,0x10
     bd4:	02402025 	move	a0,s2
     bd8:	02803025 	move	a2,s4
     bdc:	0c000000 	jal	0 <func_8007C680>
     be0:	2407003c 	li	a3,60
     be4:	02602025 	move	a0,s3
     be8:	0c000000 	jal	0 <func_8007C680>
     bec:	24050005 	li	a1,5
     bf0:	00022400 	sll	a0,v0,0x10
     bf4:	00408825 	move	s1,v0
     bf8:	00042403 	sra	a0,a0,0x10
     bfc:	0c000000 	jal	0 <func_8007C680>
     c00:	24050190 	li	a1,400
     c04:	00118400 	sll	s0,s1,0x10
     c08:	00108403 	sra	s0,s0,0x10
     c0c:	00102400 	sll	a0,s0,0x10
     c10:	240e0032 	li	t6,50
     c14:	afae0010 	sw	t6,16(sp)
     c18:	00042403 	sra	a0,a0,0x10
     c1c:	24050002 	li	a1,2
     c20:	24060003 	li	a2,3
     c24:	0c000000 	jal	0 <func_8007C680>
     c28:	240700c8 	li	a3,200
     c2c:	00102400 	sll	a0,s0,0x10
     c30:	00042403 	sra	a0,a0,0x10
     c34:	0c000000 	jal	0 <func_8007C680>
     c38:	2405270f 	li	a1,9999
     c3c:	10000b3f 	b	393c <L8007FFA8+0x14>
     c40:	8fbf0044 	lw	ra,68(sp)
     c44:	3c0f0000 	lui	t7,0x0
     c48:	25ef0000 	addiu	t7,t7,0
     c4c:	24180008 	li	t8,8
     c50:	00152c00 	sll	a1,s5,0x10
     c54:	ae6f0004 	sw	t7,4(s3)
     c58:	ae780000 	sw	t8,0(s3)
     c5c:	00052c03 	sra	a1,a1,0x10
     c60:	02402025 	move	a0,s2
     c64:	02803025 	move	a2,s4
     c68:	0c000000 	jal	0 <func_8007C680>
     c6c:	2407003c 	li	a3,60
     c70:	02602025 	move	a0,s3
     c74:	0c000000 	jal	0 <func_8007C680>
     c78:	24050005 	li	a1,5
     c7c:	00022400 	sll	a0,v0,0x10
     c80:	00408825 	move	s1,v0
     c84:	00042403 	sra	a0,a0,0x10
     c88:	0c000000 	jal	0 <func_8007C680>
     c8c:	24050190 	li	a1,400
     c90:	00118400 	sll	s0,s1,0x10
     c94:	00108403 	sra	s0,s0,0x10
     c98:	00102400 	sll	a0,s0,0x10
     c9c:	00042403 	sra	a0,a0,0x10
     ca0:	24050002 	li	a1,2
     ca4:	24060002 	li	a2,2
     ca8:	24070032 	li	a3,50
     cac:	0c000000 	jal	0 <func_8007C680>
     cb0:	afa00010 	sw	zero,16(sp)
     cb4:	00102400 	sll	a0,s0,0x10
     cb8:	00042403 	sra	a0,a0,0x10
     cbc:	0c000000 	jal	0 <func_8007C680>
     cc0:	24050118 	li	a1,280
     cc4:	10000b1d 	b	393c <L8007FFA8+0x14>
     cc8:	8fbf0044 	lw	ra,68(sp)
     ccc:	3c01447a 	lui	at,0x447a
     cd0:	44818000 	mtc1	at,$f16
     cd4:	c68a002c 	lwc1	$f10,44(s4)
     cd8:	4610503c 	c.lt.s	$f10,$f16
     cdc:	00000000 	nop
     ce0:	45000008 	bc1f	d04 <func_8007C850+0xb34>
     ce4:	3c020000 	lui	v0,0x0
     ce8:	24420000 	addiu	v0,v0,0
     cec:	c448001c 	lwc1	$f8,28(v0)
     cf0:	c444006c 	lwc1	$f4,108(v0)
     cf4:	46004487 	neg.s	$f18,$f8
     cf8:	46002187 	neg.s	$f6,$f4
     cfc:	e452001c 	swc1	$f18,28(v0)
     d00:	e446006c 	swc1	$f6,108(v0)
     d04:	3c020000 	lui	v0,0x0
     d08:	24420000 	addiu	v0,v0,0
     d0c:	24190006 	li	t9,6
     d10:	00152c00 	sll	a1,s5,0x10
     d14:	ae620004 	sw	v0,4(s3)
     d18:	ae790000 	sw	t9,0(s3)
     d1c:	00052c03 	sra	a1,a1,0x10
     d20:	02402025 	move	a0,s2
     d24:	02803025 	move	a2,s4
     d28:	0c000000 	jal	0 <func_8007C680>
     d2c:	2407003c 	li	a3,60
     d30:	10000b02 	b	393c <L8007FFA8+0x14>
     d34:	8fbf0044 	lw	ra,68(sp)
     d38:	3c0d0000 	lui	t5,0x0
     d3c:	25ad0000 	addiu	t5,t5,0
     d40:	240e0003 	li	t6,3
     d44:	00152c00 	sll	a1,s5,0x10
     d48:	ae6d0004 	sw	t5,4(s3)
     d4c:	ae6e0000 	sw	t6,0(s3)
     d50:	00052c03 	sra	a1,a1,0x10
     d54:	02402025 	move	a0,s2
     d58:	02803025 	move	a2,s4
     d5c:	0c000000 	jal	0 <func_8007C680>
     d60:	2407003c 	li	a3,60
     d64:	02602025 	move	a0,s3
     d68:	0c000000 	jal	0 <func_8007C680>
     d6c:	24050005 	li	a1,5
     d70:	00022400 	sll	a0,v0,0x10
     d74:	00408825 	move	s1,v0
     d78:	00042403 	sra	a0,a0,0x10
     d7c:	0c000000 	jal	0 <func_8007C680>
     d80:	24050190 	li	a1,400
     d84:	00118400 	sll	s0,s1,0x10
     d88:	00108403 	sra	s0,s0,0x10
     d8c:	00102400 	sll	a0,s0,0x10
     d90:	00042403 	sra	a0,a0,0x10
     d94:	24050002 	li	a1,2
     d98:	24060002 	li	a2,2
     d9c:	24070032 	li	a3,50
     da0:	0c000000 	jal	0 <func_8007C680>
     da4:	afa00010 	sw	zero,16(sp)
     da8:	00102400 	sll	a0,s0,0x10
     dac:	00042403 	sra	a0,a0,0x10
     db0:	0c000000 	jal	0 <func_8007C680>
     db4:	2405003c 	li	a1,60
     db8:	10000ae0 	b	393c <L8007FFA8+0x14>
     dbc:	8fbf0044 	lw	ra,68(sp)
     dc0:	3c0f0000 	lui	t7,0x0
     dc4:	25ef0000 	addiu	t7,t7,0
     dc8:	24180003 	li	t8,3
     dcc:	00152c00 	sll	a1,s5,0x10
     dd0:	ae6f0004 	sw	t7,4(s3)
     dd4:	ae780000 	sw	t8,0(s3)
     dd8:	00052c03 	sra	a1,a1,0x10
     ddc:	02402025 	move	a0,s2
     de0:	02803025 	move	a2,s4
     de4:	0c000000 	jal	0 <func_8007C680>
     de8:	2407003c 	li	a3,60
     dec:	10000ad3 	b	393c <L8007FFA8+0x14>
     df0:	8fbf0044 	lw	ra,68(sp)
     df4:	02402025 	move	a0,s2
     df8:	02802825 	move	a1,s4
     dfc:	27a60082 	addiu	a2,sp,130
     e00:	27a7007e 	addiu	a3,sp,126
     e04:	0c000000 	jal	0 <func_8007C680>
     e08:	afb100f4 	sw	s1,244(sp)
     e0c:	02402025 	move	a0,s2
     e10:	8fa500f4 	lw	a1,244(sp)
     e14:	27a60080 	addiu	a2,sp,128
     e18:	0c000000 	jal	0 <func_8007C680>
     e1c:	27a7007c 	addiu	a3,sp,124
     e20:	87a20082 	lh	v0,130(sp)
     e24:	18400044 	blez	v0,f38 <func_8007C850+0xd68>
     e28:	28410140 	slti	at,v0,320
     e2c:	50200043 	beqzl	at,f3c <func_8007C850+0xd6c>
     e30:	8fb900f4 	lw	t9,244(sp)
     e34:	87a2007e 	lh	v0,126(sp)
     e38:	1840003f 	blez	v0,f38 <func_8007C850+0xd68>
     e3c:	284100f0 	slti	at,v0,240
     e40:	5020003e 	beqzl	at,f3c <func_8007C850+0xd6c>
     e44:	8fb900f4 	lw	t9,244(sp)
     e48:	87a20080 	lh	v0,128(sp)
     e4c:	1840003a 	blez	v0,f38 <func_8007C850+0xd68>
     e50:	28410140 	slti	at,v0,320
     e54:	50200039 	beqzl	at,f3c <func_8007C850+0xd6c>
     e58:	8fb900f4 	lw	t9,244(sp)
     e5c:	87a2007c 	lh	v0,124(sp)
     e60:	18400035 	blez	v0,f38 <func_8007C850+0xd68>
     e64:	284100f0 	slti	at,v0,240
     e68:	50200034 	beqzl	at,f3c <func_8007C850+0xd6c>
     e6c:	8fb900f4 	lw	t9,244(sp)
     e70:	8fa500f4 	lw	a1,244(sp)
     e74:	264407c0 	addiu	a0,s2,1984
     e78:	26860038 	addiu	a2,s4,56
     e7c:	0c000000 	jal	0 <func_8007C680>
     e80:	24a50038 	addiu	a1,a1,56
     e84:	5440002d 	bnezl	v0,f3c <func_8007C850+0xd6c>
     e88:	8fb900f4 	lw	t9,244(sp)
     e8c:	8fa300f4 	lw	v1,244(sp)
     e90:	c64a00ec 	lwc1	$f10,236(s2)
     e94:	3c013f00 	lui	at,0x3f00
     e98:	c4700038 	lwc1	$f16,56(v1)
     e9c:	44810000 	mtc1	at,$f0
     ea0:	3c020000 	lui	v0,0x0
     ea4:	46105200 	add.s	$f8,$f10,$f16
     ea8:	24420000 	addiu	v0,v0,0
     eac:	3c190000 	lui	t9,0x0
     eb0:	27390000 	addiu	t9,t9,0
     eb4:	46004482 	mul.s	$f18,$f8,$f0
     eb8:	3c0141a0 	lui	at,0x41a0
     ebc:	24180002 	li	t8,2
     ec0:	e4520010 	swc1	$f18,16(v0)
     ec4:	c64400f0 	lwc1	$f4,240(s2)
     ec8:	c466003c 	lwc1	$f6,60(v1)
     ecc:	46062280 	add.s	$f10,$f4,$f6
     ed0:	46005402 	mul.s	$f16,$f10,$f0
     ed4:	e4500014 	swc1	$f16,20(v0)
     ed8:	c64800f4 	lwc1	$f8,244(s2)
     edc:	c4720040 	lwc1	$f18,64(v1)
     ee0:	44818000 	mtc1	at,$f16
     ee4:	3c013f40 	lui	at,0x3f40
     ee8:	46124100 	add.s	$f4,$f8,$f18
     eec:	46002182 	mul.s	$f6,$f4,$f0
     ef0:	44812000 	mtc1	at,$f4
     ef4:	e4460018 	swc1	$f6,24(v0)
     ef8:	8e4e00e0 	lw	t6,224(s2)
     efc:	af2e0000 	sw	t6,0(t9)
     f00:	8e4d00e4 	lw	t5,228(s2)
     f04:	af2d0004 	sw	t5,4(t9)
     f08:	8e4e00e8 	lw	t6,232(s2)
     f0c:	af2e0008 	sw	t6,8(t9)
     f10:	c68a003c 	lwc1	$f10,60(s4)
     f14:	8faf00dc 	lw	t7,220(sp)
     f18:	46105200 	add.s	$f8,$f10,$f16
     f1c:	e4480020 	swc1	$f8,32(v0)
     f20:	c5f200fc 	lwc1	$f18,252(t7)
     f24:	46049182 	mul.s	$f6,$f18,$f4
     f28:	e4460008 	swc1	$f6,8(v0)
     f2c:	ae620004 	sw	v0,4(s3)
     f30:	1000004e 	b	106c <func_8007C850+0xe9c>
     f34:	ae780000 	sw	t8,0(s3)
     f38:	8fb900f4 	lw	t9,244(sp)
     f3c:	8fad00f4 	lw	t5,244(sp)
     f40:	3c100000 	lui	s0,0x0
     f44:	c72a0038 	lwc1	$f10,56(t9)
     f48:	26100000 	addiu	s0,s0,0
     f4c:	3c0140a0 	lui	at,0x40a0
     f50:	e60a0010 	swc1	$f10,16(s0)
     f54:	44814000 	mtc1	at,$f8
     f58:	c5b0003c 	lwc1	$f16,60(t5)
     f5c:	8fae00f4 	lw	t6,244(sp)
     f60:	8faf00f4 	lw	t7,244(sp)
     f64:	46088481 	sub.s	$f18,$f16,$f8
     f68:	27b100c0 	addiu	s1,sp,192
     f6c:	3c040000 	lui	a0,0x0
     f70:	3c050000 	lui	a1,0x0
     f74:	e6120014 	swc1	$f18,20(s0)
     f78:	c5c40040 	lwc1	$f4,64(t6)
     f7c:	3c070000 	lui	a3,0x0
     f80:	24e70000 	addiu	a3,a3,0
     f84:	e6040018 	swc1	$f4,24(s0)
     f88:	8df90364 	lw	t9,868(t7)
     f8c:	24a50000 	addiu	a1,a1,0
     f90:	24840000 	addiu	a0,a0,0
     f94:	ae390000 	sw	t9,0(s1)
     f98:	8df80368 	lw	t8,872(t7)
     f9c:	24060687 	li	a2,1671
     fa0:	ae380004 	sw	t8,4(s1)
     fa4:	8df9036c 	lw	t9,876(t7)
     fa8:	ae390008 	sw	t9,8(s1)
     fac:	c7b200c8 	lwc1	$f18,200(sp)
     fb0:	c7b000c4 	lwc1	$f16,196(sp)
     fb4:	c7a600c0 	lwc1	$f6,192(sp)
     fb8:	46009121 	cvt.d.s	$f4,$f18
     fbc:	46008221 	cvt.d.s	$f8,$f16
     fc0:	460032a1 	cvt.d.s	$f10,$f6
     fc4:	f7a80018 	sdc1	$f8,24(sp)
     fc8:	f7aa0010 	sdc1	$f10,16(sp)
     fcc:	0c000000 	jal	0 <func_8007C680>
     fd0:	f7a40020 	sdc1	$f4,32(sp)
     fd4:	0c000000 	jal	0 <func_8007C680>
     fd8:	00000000 	nop
     fdc:	3c0142f0 	lui	at,0x42f0
     fe0:	44811000 	mtc1	at,$f2
     fe4:	c7aa00c0 	lwc1	$f10,192(sp)
     fe8:	3c0141a0 	lui	at,0x41a0
     fec:	44819000 	mtc1	at,$f18
     ff0:	460a1402 	mul.s	$f16,$f2,$f10
     ff4:	8fad00f4 	lw	t5,244(sp)
     ff8:	8fae00f4 	lw	t6,244(sp)
     ffc:	46120102 	mul.s	$f4,$f0,$f18
    1000:	c5a60038 	lwc1	$f6,56(t5)
    1004:	46103200 	add.s	$f8,$f6,$f16
    1008:	c7b000c4 	lwc1	$f16,196(sp)
    100c:	46044281 	sub.s	$f10,$f8,$f4
    1010:	46101482 	mul.s	$f18,$f2,$f16
    1014:	44812000 	mtc1	at,$f4
    1018:	e60a001c 	swc1	$f10,28(s0)
    101c:	c5c6003c 	lwc1	$f6,60(t6)
    1020:	46123200 	add.s	$f8,$f6,$f18
    1024:	46044280 	add.s	$f10,$f8,$f4
    1028:	0c000000 	jal	0 <func_8007C680>
    102c:	e60a0020 	swc1	$f10,32(s0)
    1030:	3c0142f0 	lui	at,0x42f0
    1034:	44818000 	mtc1	at,$f16
    1038:	c7a600c8 	lwc1	$f6,200(sp)
    103c:	3c0141a0 	lui	at,0x41a0
    1040:	44815000 	mtc1	at,$f10
    1044:	46068482 	mul.s	$f18,$f16,$f6
    1048:	8faf00f4 	lw	t7,244(sp)
    104c:	24180002 	li	t8,2
    1050:	460a0402 	mul.s	$f16,$f0,$f10
    1054:	c5e80040 	lwc1	$f8,64(t7)
    1058:	46124100 	add.s	$f4,$f8,$f18
    105c:	46102181 	sub.s	$f6,$f4,$f16
    1060:	e6060024 	swc1	$f6,36(s0)
    1064:	ae700004 	sw	s0,4(s3)
    1068:	ae780000 	sw	t8,0(s3)
    106c:	02402025 	move	a0,s2
    1070:	00002825 	move	a1,zero
    1074:	0c000000 	jal	0 <func_8007C680>
    1078:	24060003 	li	a2,3
    107c:	00152c00 	sll	a1,s5,0x10
    1080:	00052c03 	sra	a1,a1,0x10
    1084:	02402025 	move	a0,s2
    1088:	02803025 	move	a2,s4
    108c:	0c000000 	jal	0 <func_8007C680>
    1090:	2407003c 	li	a3,60
    1094:	10000a29 	b	393c <L8007FFA8+0x14>
    1098:	8fbf0044 	lw	ra,68(sp)
    109c:	8e900440 	lw	s0,1088(s4)
    10a0:	02402025 	move	a0,s2
    10a4:	00002825 	move	a1,zero
    10a8:	0c000000 	jal	0 <func_8007C680>
    10ac:	24060008 	li	a2,8
    10b0:	12000002 	beqz	s0,10bc <func_8007C850+0xeec>
    10b4:	241900b4 	li	t9,180
    10b8:	a6190110 	sh	t9,272(s0)
    10bc:	3c0d0000 	lui	t5,0x0
    10c0:	25ad0000 	addiu	t5,t5,0
    10c4:	240e0006 	li	t6,6
    10c8:	00152c00 	sll	a1,s5,0x10
    10cc:	ae6d0004 	sw	t5,4(s3)
    10d0:	ae6e0000 	sw	t6,0(s3)
    10d4:	00052c03 	sra	a1,a1,0x10
    10d8:	02402025 	move	a0,s2
    10dc:	02803025 	move	a2,s4
    10e0:	0c000000 	jal	0 <func_8007C680>
    10e4:	2407003c 	li	a3,60
    10e8:	10000a14 	b	393c <L8007FFA8+0x14>
    10ec:	8fbf0044 	lw	ra,68(sp)
    10f0:	02402025 	move	a0,s2
    10f4:	00002825 	move	a1,zero
    10f8:	0c000000 	jal	0 <func_8007C680>
    10fc:	24060008 	li	a2,8
    1100:	3c0f0000 	lui	t7,0x0
    1104:	25ef0000 	addiu	t7,t7,0
    1108:	24180001 	li	t8,1
    110c:	00152c00 	sll	a1,s5,0x10
    1110:	ae6f0004 	sw	t7,4(s3)
    1114:	ae780000 	sw	t8,0(s3)
    1118:	00052c03 	sra	a1,a1,0x10
    111c:	02402025 	move	a0,s2
    1120:	02803025 	move	a2,s4
    1124:	0c000000 	jal	0 <func_8007C680>
    1128:	2407003c 	li	a3,60
    112c:	10000a03 	b	393c <L8007FFA8+0x14>
    1130:	8fbf0044 	lw	ra,68(sp)
    1134:	8e2e0024 	lw	t6,36(s1)
    1138:	3c190000 	lui	t9,0x0
    113c:	27390000 	addiu	t9,t9,0
    1140:	af2e0000 	sw	t6,0(t9)
    1144:	8e2d0028 	lw	t5,40(s1)
    1148:	3c014220 	lui	at,0x4220
    114c:	44819000 	mtc1	at,$f18
    1150:	af2d0004 	sw	t5,4(t9)
    1154:	8e2e002c 	lw	t6,44(s1)
    1158:	3c100000 	lui	s0,0x0
    115c:	26100000 	addiu	s0,s0,0
    1160:	af2e0008 	sw	t6,8(t9)
    1164:	c6880028 	lwc1	$f8,40(s4)
    1168:	02402025 	move	a0,s2
    116c:	00002825 	move	a1,zero
    1170:	46124280 	add.s	$f10,$f8,$f18
    1174:	24060008 	li	a2,8
    1178:	0c000000 	jal	0 <func_8007C680>
    117c:	e60a0020 	swc1	$f10,32(s0)
    1180:	240f0003 	li	t7,3
    1184:	00152c00 	sll	a1,s5,0x10
    1188:	ae700004 	sw	s0,4(s3)
    118c:	ae6f0000 	sw	t7,0(s3)
    1190:	00052c03 	sra	a1,a1,0x10
    1194:	02402025 	move	a0,s2
    1198:	02803025 	move	a2,s4
    119c:	0c000000 	jal	0 <func_8007C680>
    11a0:	2407003c 	li	a3,60
    11a4:	100009e5 	b	393c <L8007FFA8+0x14>
    11a8:	8fbf0044 	lw	ra,68(sp)
    11ac:	27b000a0 	addiu	s0,sp,160
    11b0:	02002025 	move	a0,s0
    11b4:	0c000000 	jal	0 <func_8007C680>
    11b8:	02202825 	move	a1,s1
    11bc:	8e190000 	lw	t9,0(s0)
    11c0:	27b100c0 	addiu	s1,sp,192
    11c4:	8e180004 	lw	t8,4(s0)
    11c8:	ae390000 	sw	t9,0(s1)
    11cc:	8e190008 	lw	t9,8(s0)
    11d0:	02202825 	move	a1,s1
    11d4:	264407c0 	addiu	a0,s2,1984
    11d8:	ae380004 	sw	t8,4(s1)
    11dc:	0c000000 	jal	0 <func_8007C680>
    11e0:	ae390008 	sw	t9,8(s1)
    11e4:	3c014220 	lui	at,0x4220
    11e8:	44812000 	mtc1	at,$f4
    11ec:	3c014316 	lui	at,0x4316
    11f0:	44813000 	mtc1	at,$f6
    11f4:	46040400 	add.s	$f16,$f0,$f4
    11f8:	87ad00ae 	lh	t5,174(sp)
    11fc:	240e03e8 	li	t6,1000
    1200:	a7ae00d4 	sh	t6,212(sp)
    1204:	e7b000c4 	swc1	$f16,196(sp)
    1208:	27a400b4 	addiu	a0,sp,180
    120c:	02202825 	move	a1,s1
    1210:	27a600d0 	addiu	a2,sp,208
    1214:	e7a600d0 	swc1	$f6,208(sp)
    1218:	0c000000 	jal	0 <func_8007C680>
    121c:	a7ad00d6 	sh	t5,214(sp)
    1220:	00152c00 	sll	a1,s5,0x10
    1224:	00052c03 	sra	a1,a1,0x10
    1228:	02402025 	move	a0,s2
    122c:	0c000000 	jal	0 <func_8007C680>
    1230:	24060022 	li	a2,34
    1234:	00152c00 	sll	a1,s5,0x10
    1238:	00052c03 	sra	a1,a1,0x10
    123c:	02402025 	move	a0,s2
    1240:	02203025 	move	a2,s1
    1244:	0c000000 	jal	0 <func_8007C680>
    1248:	27a700b4 	addiu	a3,sp,180
    124c:	02402025 	move	a0,s2
    1250:	00002825 	move	a1,zero
    1254:	0c000000 	jal	0 <func_8007C680>
    1258:	24060008 	li	a2,8
    125c:	8665014e 	lh	a1,334(s3)
    1260:	3c014248 	lui	at,0x4248
    1264:	44814000 	mtc1	at,$f8
    1268:	a660015a 	sh	zero,346(s3)
    126c:	10a009b2 	beqz	a1,3938 <L8007FFA8+0x10>
    1270:	e66800fc 	swc1	$f8,252(s3)
    1274:	0c000000 	jal	0 <func_8007C680>
    1278:	02402025 	move	a0,s2
    127c:	100009af 	b	393c <L8007FFA8+0x14>
    1280:	8fbf0044 	lw	ra,68(sp)
    1284:	27a400d0 	addiu	a0,sp,208
    1288:	26850024 	addiu	a1,s4,36
    128c:	0c000000 	jal	0 <func_8007C680>
    1290:	26260024 	addiu	a2,s1,36
    1294:	87af00d6 	lh	t7,214(sp)
    1298:	3c010000 	lui	at,0x0
    129c:	c4240000 	lwc1	$f4,0(at)
    12a0:	448f9000 	mtc1	t7,$f18
    12a4:	3c100000 	lui	s0,0x0
    12a8:	26100000 	addiu	s0,s0,0
    12ac:	468092a0 	cvt.s.w	$f10,$f18
    12b0:	46045002 	mul.s	$f0,$f10,$f4
    12b4:	e6000064 	swc1	$f0,100(s0)
    12b8:	e6000070 	swc1	$f0,112(s0)
    12bc:	e6000048 	swc1	$f0,72(s0)
    12c0:	0c000000 	jal	0 <func_8007C680>
    12c4:	e6000020 	swc1	$f0,32(s0)
    12c8:	44808000 	mtc1	zero,$f16
    12cc:	00000000 	nop
    12d0:	4610003c 	c.lt.s	$f0,$f16
    12d4:	00000000 	nop
    12d8:	45020005 	bc1fl	12f0 <func_8007C850+0x1120>
    12dc:	02402025 	move	a0,s2
    12e0:	c6060094 	lwc1	$f6,148(s0)
    12e4:	46003207 	neg.s	$f8,$f6
    12e8:	e6080094 	swc1	$f8,148(s0)
    12ec:	02402025 	move	a0,s2
    12f0:	00002825 	move	a1,zero
    12f4:	0c000000 	jal	0 <func_8007C680>
    12f8:	24060008 	li	a2,8
    12fc:	24180005 	li	t8,5
    1300:	00152c00 	sll	a1,s5,0x10
    1304:	ae700004 	sw	s0,4(s3)
    1308:	ae780000 	sw	t8,0(s3)
    130c:	00052c03 	sra	a1,a1,0x10
    1310:	02402025 	move	a0,s2
    1314:	02803025 	move	a2,s4
    1318:	0c000000 	jal	0 <func_8007C680>
    131c:	2407003c 	li	a3,60
    1320:	10000986 	b	393c <L8007FFA8+0x14>
    1324:	8fbf0044 	lw	ra,68(sp)
    1328:	00152c00 	sll	a1,s5,0x10
    132c:	00052c03 	sra	a1,a1,0x10
    1330:	02402025 	move	a0,s2
    1334:	0c000000 	jal	0 <func_8007C680>
    1338:	24060022 	li	a2,34
    133c:	00152c00 	sll	a1,s5,0x10
    1340:	00052c03 	sra	a1,a1,0x10
    1344:	02402025 	move	a0,s2
    1348:	26060050 	addiu	a2,s0,80
    134c:	0c000000 	jal	0 <func_8007C680>
    1350:	2607005c 	addiu	a3,s0,92
    1354:	00152c00 	sll	a1,s5,0x10
    1358:	00052c03 	sra	a1,a1,0x10
    135c:	02402025 	move	a0,s2
    1360:	0c000000 	jal	0 <func_8007C680>
    1364:	8e0600fc 	lw	a2,252(s0)
    1368:	00152c00 	sll	a1,s5,0x10
    136c:	00052c03 	sra	a1,a1,0x10
    1370:	02402025 	move	a0,s2
    1374:	0c000000 	jal	0 <func_8007C680>
    1378:	8606015a 	lh	a2,346(s0)
    137c:	1000096f 	b	393c <L8007FFA8+0x14>
    1380:	8fbf0044 	lw	ra,68(sp)
    1384:	00152c00 	sll	a1,s5,0x10
    1388:	00052c03 	sra	a1,a1,0x10
    138c:	02402025 	move	a0,s2
    1390:	0c000000 	jal	0 <func_8007C680>
    1394:	2406002a 	li	a2,42
    1398:	8fb900dc 	lw	t9,220(sp)
    139c:	02402025 	move	a0,s2
    13a0:	00002825 	move	a1,zero
    13a4:	0c000000 	jal	0 <func_8007C680>
    13a8:	87260154 	lh	a2,340(t9)
    13ac:	3c050000 	lui	a1,0x0
    13b0:	84a50000 	lh	a1,0(a1)
    13b4:	3c0d0000 	lui	t5,0x0
    13b8:	25ad0000 	addiu	t5,t5,0
    13bc:	34a51000 	ori	a1,a1,0x1000
    13c0:	00052c00 	sll	a1,a1,0x10
    13c4:	3c060000 	lui	a2,0x0
    13c8:	3c070000 	lui	a3,0x0
    13cc:	24e70000 	addiu	a3,a3,0
    13d0:	84c60000 	lh	a2,0(a2)
    13d4:	00052c03 	sra	a1,a1,0x10
    13d8:	afad0010 	sw	t5,16(sp)
    13dc:	0c000000 	jal	0 <func_8007C680>
    13e0:	02602025 	move	a0,s3
    13e4:	10000955 	b	393c <L8007FFA8+0x14>
    13e8:	8fbf0044 	lw	ra,68(sp)
    13ec:	00152c00 	sll	a1,s5,0x10
    13f0:	00052c03 	sra	a1,a1,0x10
    13f4:	02402025 	move	a0,s2
    13f8:	0c000000 	jal	0 <func_8007C680>
    13fc:	2406002a 	li	a2,42
    1400:	8fae00dc 	lw	t6,220(sp)
    1404:	02402025 	move	a0,s2
    1408:	00002825 	move	a1,zero
    140c:	0c000000 	jal	0 <func_8007C680>
    1410:	85c60154 	lh	a2,340(t6)
    1414:	3c050000 	lui	a1,0x0
    1418:	84a50000 	lh	a1,0(a1)
    141c:	3c0f0000 	lui	t7,0x0
    1420:	25ef0000 	addiu	t7,t7,0
    1424:	34a51000 	ori	a1,a1,0x1000
    1428:	00052c00 	sll	a1,a1,0x10
    142c:	3c060000 	lui	a2,0x0
    1430:	3c070000 	lui	a3,0x0
    1434:	24e70000 	addiu	a3,a3,0
    1438:	84c60000 	lh	a2,0(a2)
    143c:	00052c03 	sra	a1,a1,0x10
    1440:	afaf0010 	sw	t7,16(sp)
    1444:	0c000000 	jal	0 <func_8007C680>
    1448:	02602025 	move	a0,s3
    144c:	1000093b 	b	393c <L8007FFA8+0x14>
    1450:	8fbf0044 	lw	ra,68(sp)

00001454 <L8007DAD4>:
    1454:	3c180000 	lui	t8,0x0
    1458:	27180000 	addiu	t8,t8,0
    145c:	24190004 	li	t9,4
    1460:	00152c00 	sll	a1,s5,0x10
    1464:	ae780004 	sw	t8,4(s3)
    1468:	ae790000 	sw	t9,0(s3)
    146c:	00052c03 	sra	a1,a1,0x10
    1470:	02402025 	move	a0,s2
    1474:	02803025 	move	a2,s4
    1478:	0c000000 	jal	0 <func_8007C680>
    147c:	2407003c 	li	a3,60
    1480:	1000092e 	b	393c <L8007FFA8+0x14>
    1484:	8fbf0044 	lw	ra,68(sp)

00001488 <L8007DB08>:
    1488:	3c010000 	lui	at,0x0
    148c:	c4320000 	lwc1	$f18,0(at)
    1490:	3c010000 	lui	at,0x0
    1494:	c42a0000 	lwc1	$f10,0(at)
    1498:	3c01c3a5 	lui	at,0xc3a5
    149c:	44812000 	mtc1	at,$f4
    14a0:	3c010000 	lui	at,0x0
    14a4:	c4300000 	lwc1	$f16,0(at)
    14a8:	3c010000 	lui	at,0x0
    14ac:	c4260000 	lwc1	$f6,0(at)
    14b0:	3c010000 	lui	at,0x0
    14b4:	c4280000 	lwc1	$f8,0(at)
    14b8:	00152c00 	sll	a1,s5,0x10
    14bc:	00052c03 	sra	a1,a1,0x10
    14c0:	02402025 	move	a0,s2
    14c4:	24060022 	li	a2,34
    14c8:	e7b200c0 	swc1	$f18,192(sp)
    14cc:	e7aa00c4 	swc1	$f10,196(sp)
    14d0:	e7a400c8 	swc1	$f4,200(sp)
    14d4:	e7b000b4 	swc1	$f16,180(sp)
    14d8:	e7a600b8 	swc1	$f6,184(sp)
    14dc:	0c000000 	jal	0 <func_8007C680>
    14e0:	e7a800bc 	swc1	$f8,188(sp)
    14e4:	00152c00 	sll	a1,s5,0x10
    14e8:	27a600c0 	addiu	a2,sp,192
    14ec:	00052c03 	sra	a1,a1,0x10
    14f0:	02402025 	move	a0,s2
    14f4:	0c000000 	jal	0 <func_8007C680>
    14f8:	27a700b4 	addiu	a3,sp,180
    14fc:	3c014296 	lui	at,0x4296
    1500:	44819000 	mtc1	at,$f18
    1504:	240d0006 	li	t5,6
    1508:	a66d015a 	sh	t5,346(s3)
    150c:	02402025 	move	a0,s2
    1510:	00002825 	move	a1,zero
    1514:	24060008 	li	a2,8
    1518:	0c000000 	jal	0 <func_8007C680>
    151c:	e67200fc 	swc1	$f18,252(s3)
    1520:	10000906 	b	393c <L8007FFA8+0x14>
    1524:	8fbf0044 	lw	ra,68(sp)

00001528 <L8007DBA8>:
    1528:	02402025 	move	a0,s2
    152c:	00002825 	move	a1,zero
    1530:	0c000000 	jal	0 <func_8007C680>
    1534:	24060008 	li	a2,8
    1538:	87ae00fa 	lh	t6,250(sp)
    153c:	3c030000 	lui	v1,0x0
    1540:	24630000 	addiu	v1,v1,0
    1544:	25cfffff 	addiu	t7,t6,-1
    1548:	a46f0004 	sh	t7,4(v1)
    154c:	24180002 	li	t8,2
    1550:	00152c00 	sll	a1,s5,0x10
    1554:	ae630004 	sw	v1,4(s3)
    1558:	ae780000 	sw	t8,0(s3)
    155c:	00052c03 	sra	a1,a1,0x10
    1560:	02402025 	move	a0,s2
    1564:	02803025 	move	a2,s4
    1568:	0c000000 	jal	0 <func_8007C680>
    156c:	2407003c 	li	a3,60
    1570:	100008f2 	b	393c <L8007FFA8+0x14>
    1574:	8fbf0044 	lw	ra,68(sp)

00001578 <L8007DBF8>:
    1578:	87b900fa 	lh	t9,250(sp)
    157c:	8fae00dc 	lw	t6,220(sp)
    1580:	3c100000 	lui	s0,0x0
    1584:	26100000 	addiu	s0,s0,0
    1588:	272dffff 	addiu	t5,t9,-1
    158c:	a60d002c 	sh	t5,44(s0)
    1590:	8dcf008c 	lw	t7,140(t6)
    1594:	8df8009c 	lw	t8,156(t7)
    1598:	33190001 	andi	t9,t8,0x1
    159c:	1320000d 	beqz	t9,15d4 <L8007DBF8+0x5c>
    15a0:	00000000 	nop
    15a4:	c60a0010 	lwc1	$f10,16(s0)
    15a8:	c610001c 	lwc1	$f16,28(s0)
    15ac:	c6080038 	lwc1	$f8,56(s0)
    15b0:	46005107 	neg.s	$f4,$f10
    15b4:	c60a0044 	lwc1	$f10,68(s0)
    15b8:	e6040010 	swc1	$f4,16(s0)
    15bc:	46008187 	neg.s	$f6,$f16
    15c0:	46004487 	neg.s	$f18,$f8
    15c4:	46005107 	neg.s	$f4,$f10
    15c8:	e606001c 	swc1	$f6,28(s0)
    15cc:	e6120038 	swc1	$f18,56(s0)
    15d0:	e6040044 	swc1	$f4,68(s0)
    15d4:	0c000000 	jal	0 <func_8007C680>
    15d8:	00000000 	nop
    15dc:	3c014170 	lui	at,0x4170
    15e0:	44818000 	mtc1	at,$f16
    15e4:	c606001c 	lwc1	$f6,28(s0)
    15e8:	c6120044 	lwc1	$f18,68(s0)
    15ec:	46100082 	mul.s	$f2,$f0,$f16
    15f0:	240d0002 	li	t5,2
    15f4:	00152c00 	sll	a1,s5,0x10
    15f8:	00052c03 	sra	a1,a1,0x10
    15fc:	02402025 	move	a0,s2
    1600:	02803025 	move	a2,s4
    1604:	2407003c 	li	a3,60
    1608:	46023200 	add.s	$f8,$f6,$f2
    160c:	46029280 	add.s	$f10,$f18,$f2
    1610:	e608001c 	swc1	$f8,28(s0)
    1614:	e60a0044 	swc1	$f10,68(s0)
    1618:	ae700004 	sw	s0,4(s3)
    161c:	0c000000 	jal	0 <func_8007C680>
    1620:	ae6d0000 	sw	t5,0(s3)
    1624:	02402025 	move	a0,s2
    1628:	00002825 	move	a1,zero
    162c:	0c000000 	jal	0 <func_8007C680>
    1630:	24060008 	li	a2,8
    1634:	100008c1 	b	393c <L8007FFA8+0x14>
    1638:	8fbf0044 	lw	ra,68(sp)

0000163c <L8007DCBC>:
    163c:	87ae00fa 	lh	t6,250(sp)
    1640:	3c020000 	lui	v0,0x0
    1644:	24420000 	addiu	v0,v0,0
    1648:	240f0001 	li	t7,1
    164c:	00152c00 	sll	a1,s5,0x10
    1650:	a44e0004 	sh	t6,4(v0)
    1654:	ae620004 	sw	v0,4(s3)
    1658:	ae6f0000 	sw	t7,0(s3)
    165c:	00052c03 	sra	a1,a1,0x10
    1660:	02402025 	move	a0,s2
    1664:	02803025 	move	a2,s4
    1668:	0c000000 	jal	0 <func_8007C680>
    166c:	2407003c 	li	a3,60
    1670:	100008b2 	b	393c <L8007FFA8+0x14>
    1674:	8fbf0044 	lw	ra,68(sp)

00001678 <L8007DCF8>:
    1678:	3c180000 	lui	t8,0x0
    167c:	27180000 	addiu	t8,t8,0
    1680:	2419000a 	li	t9,10
    1684:	00152c00 	sll	a1,s5,0x10
    1688:	ae780004 	sw	t8,4(s3)
    168c:	ae790000 	sw	t9,0(s3)
    1690:	00052c03 	sra	a1,a1,0x10
    1694:	02402025 	move	a0,s2
    1698:	02803025 	move	a2,s4
    169c:	0c000000 	jal	0 <func_8007C680>
    16a0:	2407003c 	li	a3,60
    16a4:	02602025 	move	a0,s3
    16a8:	0c000000 	jal	0 <func_8007C680>
    16ac:	24050003 	li	a1,3
    16b0:	00022400 	sll	a0,v0,0x10
    16b4:	00408825 	move	s1,v0
    16b8:	00042403 	sra	a0,a0,0x10
    16bc:	0c000000 	jal	0 <func_8007C680>
    16c0:	240555f0 	li	a1,22000
    16c4:	00118400 	sll	s0,s1,0x10
    16c8:	00108403 	sra	s0,s0,0x10
    16cc:	00102400 	sll	a0,s0,0x10
    16d0:	00042403 	sra	a0,a0,0x10
    16d4:	24050002 	li	a1,2
    16d8:	00003025 	move	a2,zero
    16dc:	240700c8 	li	a3,200
    16e0:	0c000000 	jal	0 <func_8007C680>
    16e4:	afa00010 	sw	zero,16(sp)
    16e8:	00102400 	sll	a0,s0,0x10
    16ec:	00042403 	sra	a0,a0,0x10
    16f0:	0c000000 	jal	0 <func_8007C680>
    16f4:	2405000a 	li	a1,10
    16f8:	10000890 	b	393c <L8007FFA8+0x14>
    16fc:	8fbf0044 	lw	ra,68(sp)

00001700 <L8007DD80>:
    1700:	3c0d0000 	lui	t5,0x0
    1704:	25ad0000 	addiu	t5,t5,0
    1708:	240e0004 	li	t6,4
    170c:	00152c00 	sll	a1,s5,0x10
    1710:	ae6d0004 	sw	t5,4(s3)
    1714:	ae6e0000 	sw	t6,0(s3)
    1718:	00052c03 	sra	a1,a1,0x10
    171c:	02402025 	move	a0,s2
    1720:	02803025 	move	a2,s4
    1724:	0c000000 	jal	0 <func_8007C680>
    1728:	2407003c 	li	a3,60
    172c:	10000883 	b	393c <L8007FFA8+0x14>
    1730:	8fbf0044 	lw	ra,68(sp)

00001734 <L8007DDB4>:
    1734:	02402025 	move	a0,s2
    1738:	00002825 	move	a1,zero
    173c:	0c000000 	jal	0 <func_8007C680>
    1740:	24060008 	li	a2,8
    1744:	3c0f0000 	lui	t7,0x0
    1748:	25ef0000 	addiu	t7,t7,0
    174c:	24180004 	li	t8,4
    1750:	00152c00 	sll	a1,s5,0x10
    1754:	ae6f0004 	sw	t7,4(s3)
    1758:	ae780000 	sw	t8,0(s3)
    175c:	00052c03 	sra	a1,a1,0x10
    1760:	02402025 	move	a0,s2
    1764:	02803025 	move	a2,s4
    1768:	0c000000 	jal	0 <func_8007C680>
    176c:	2407003c 	li	a3,60
    1770:	10000872 	b	393c <L8007FFA8+0x14>
    1774:	8fbf0044 	lw	ra,68(sp)

00001778 <L8007DDF8>:
    1778:	3c01c38c 	lui	at,0xc38c
    177c:	44818000 	mtc1	at,$f16
    1780:	3c01c4af 	lui	at,0xc4af
    1784:	44813000 	mtc1	at,$f6
    1788:	44802000 	mtc1	zero,$f4
    178c:	27b000a0 	addiu	s0,sp,160
    1790:	02002025 	move	a0,s0
    1794:	02202825 	move	a1,s1
    1798:	e7b000b8 	swc1	$f16,184(sp)
    179c:	e7a600bc 	swc1	$f6,188(sp)
    17a0:	0c000000 	jal	0 <func_8007C680>
    17a4:	e7a400b4 	swc1	$f4,180(sp)
    17a8:	8e0d0000 	lw	t5,0(s0)
    17ac:	27b100c0 	addiu	s1,sp,192
    17b0:	8e190004 	lw	t9,4(s0)
    17b4:	ae2d0000 	sw	t5,0(s1)
    17b8:	8e0d0008 	lw	t5,8(s0)
    17bc:	00152c00 	sll	a1,s5,0x10
    17c0:	00052c03 	sra	a1,a1,0x10
    17c4:	02402025 	move	a0,s2
    17c8:	02803025 	move	a2,s4
    17cc:	24070039 	li	a3,57
    17d0:	ae390004 	sw	t9,4(s1)
    17d4:	0c000000 	jal	0 <func_8007C680>
    17d8:	ae2d0008 	sw	t5,8(s1)
    17dc:	00152c00 	sll	a1,s5,0x10
    17e0:	00052c03 	sra	a1,a1,0x10
    17e4:	02402025 	move	a0,s2
    17e8:	02203025 	move	a2,s1
    17ec:	0c000000 	jal	0 <func_8007C680>
    17f0:	27a700b4 	addiu	a3,sp,180
    17f4:	3c01428c 	lui	at,0x428c
    17f8:	44814000 	mtc1	at,$f8
    17fc:	a660015a 	sh	zero,346(s3)
    1800:	02402025 	move	a0,s2
    1804:	00002825 	move	a1,zero
    1808:	24060008 	li	a2,8
    180c:	0c000000 	jal	0 <func_8007C680>
    1810:	e66800fc 	swc1	$f8,252(s3)
    1814:	10000849 	b	393c <L8007FFA8+0x14>
    1818:	8fbf0044 	lw	ra,68(sp)

0000181c <L8007DE9C>:
    181c:	3c0e0000 	lui	t6,0x0
    1820:	25ce0000 	addiu	t6,t6,0
    1824:	240f0002 	li	t7,2
    1828:	ae6e0004 	sw	t6,4(s3)
    182c:	ae6f0000 	sw	t7,0(s3)
    1830:	02402025 	move	a0,s2
    1834:	00002825 	move	a1,zero
    1838:	0c000000 	jal	0 <func_8007C680>
    183c:	24060008 	li	a2,8
    1840:	00152c00 	sll	a1,s5,0x10
    1844:	00052c03 	sra	a1,a1,0x10
    1848:	02402025 	move	a0,s2
    184c:	02803025 	move	a2,s4
    1850:	0c000000 	jal	0 <func_8007C680>
    1854:	2407003c 	li	a3,60
    1858:	02602025 	move	a0,s3
    185c:	0c000000 	jal	0 <func_8007C680>
    1860:	24050001 	li	a1,1
    1864:	00022400 	sll	a0,v0,0x10
    1868:	00408825 	move	s1,v0
    186c:	00042403 	sra	a0,a0,0x10
    1870:	0c000000 	jal	0 <func_8007C680>
    1874:	24055dc0 	li	a1,24000
    1878:	00118400 	sll	s0,s1,0x10
    187c:	00108403 	sra	s0,s0,0x10
    1880:	00102400 	sll	a0,s0,0x10
    1884:	00042403 	sra	a0,a0,0x10
    1888:	24050002 	li	a1,2
    188c:	00003025 	move	a2,zero
    1890:	00003825 	move	a3,zero
    1894:	0c000000 	jal	0 <func_8007C680>
    1898:	afa00010 	sw	zero,16(sp)
    189c:	00102400 	sll	a0,s0,0x10
    18a0:	00042403 	sra	a0,a0,0x10
    18a4:	0c000000 	jal	0 <func_8007C680>
    18a8:	240500a0 	li	a1,160
    18ac:	10000823 	b	393c <L8007FFA8+0x14>
    18b0:	8fbf0044 	lw	ra,68(sp)

000018b4 <L8007DF34>:
    18b4:	3c180000 	lui	t8,0x0
    18b8:	27180000 	addiu	t8,t8,0
    18bc:	24190002 	li	t9,2
    18c0:	ae780004 	sw	t8,4(s3)
    18c4:	ae790000 	sw	t9,0(s3)
    18c8:	02402025 	move	a0,s2
    18cc:	00002825 	move	a1,zero
    18d0:	0c000000 	jal	0 <func_8007C680>
    18d4:	24060008 	li	a2,8
    18d8:	00152c00 	sll	a1,s5,0x10
    18dc:	00052c03 	sra	a1,a1,0x10
    18e0:	02402025 	move	a0,s2
    18e4:	02803025 	move	a2,s4
    18e8:	0c000000 	jal	0 <func_8007C680>
    18ec:	2407003c 	li	a3,60
    18f0:	10000812 	b	393c <L8007FFA8+0x14>
    18f4:	8fbf0044 	lw	ra,68(sp)

000018f8 <L8007DF78>:
    18f8:	00152c00 	sll	a1,s5,0x10
    18fc:	00052c03 	sra	a1,a1,0x10
    1900:	02402025 	move	a0,s2
    1904:	0c000000 	jal	0 <func_8007C680>
    1908:	2406002a 	li	a2,42
    190c:	02402025 	move	a0,s2
    1910:	02802825 	move	a1,s4
    1914:	0c000000 	jal	0 <func_8007C680>
    1918:	24060005 	li	a2,5
    191c:	3c050000 	lui	a1,0x0
    1920:	84a50000 	lh	a1,0(a1)
    1924:	3c100000 	lui	s0,0x0
    1928:	3c110000 	lui	s1,0x0
    192c:	34a52000 	ori	a1,a1,0x2000
    1930:	26310000 	addiu	s1,s1,0
    1934:	26100000 	addiu	s0,s0,0
    1938:	00052c00 	sll	a1,a1,0x10
    193c:	3c060000 	lui	a2,0x0
    1940:	84c60000 	lh	a2,0(a2)
    1944:	00052c03 	sra	a1,a1,0x10
    1948:	02003825 	move	a3,s0
    194c:	afb10010 	sw	s1,16(sp)
    1950:	0c000000 	jal	0 <func_8007C680>
    1954:	02602025 	move	a0,s3
    1958:	0c000000 	jal	0 <func_8007C680>
    195c:	24044802 	li	a0,18434
    1960:	3c120000 	lui	s2,0x0
    1964:	26520000 	addiu	s2,s2,0
    1968:	864d0000 	lh	t5,0(s2)
    196c:	8fa400dc 	lw	a0,220(sp)
    1970:	000d7100 	sll	t6,t5,0x4
    1974:	020e2821 	addu	a1,s0,t6
    1978:	24a5ffe8 	addiu	a1,a1,-24
    197c:	0c000000 	jal	0 <func_8007C680>
    1980:	24840050 	addiu	a0,a0,80
    1984:	864f0000 	lh	t7,0(s2)
    1988:	8fa400dc 	lw	a0,220(sp)
    198c:	000fc100 	sll	t8,t7,0x4
    1990:	02382821 	addu	a1,s1,t8
    1994:	24a5ffe8 	addiu	a1,a1,-24
    1998:	0c000000 	jal	0 <func_8007C680>
    199c:	2484005c 	addiu	a0,a0,92
    19a0:	86460000 	lh	a2,0(s2)
    19a4:	8fa400dc 	lw	a0,220(sp)
    19a8:	24050003 	li	a1,3
    19ac:	00063100 	sll	a2,a2,0x4
    19b0:	02061021 	addu	v0,s0,a2
    19b4:	8447ffd8 	lh	a3,-40(v0)
    19b8:	8459ffe8 	lh	t9,-24(v0)
    19bc:	8448ffda 	lh	t0,-38(v0)
    19c0:	8458ffea 	lh	t8,-22(v0)
    19c4:	03276823 	subu	t5,t9,a3
    19c8:	05a10003 	bgez	t5,19d8 <L8007DF78+0xe0>
    19cc:	000d7043 	sra	t6,t5,0x1
    19d0:	25a10001 	addiu	at,t5,1
    19d4:	00017043 	sra	t6,at,0x1
    19d8:	00ee7821 	addu	t7,a3,t6
    19dc:	0308c823 	subu	t9,t8,t0
    19e0:	a44fffd8 	sh	t7,-40(v0)
    19e4:	844fffec 	lh	t7,-20(v0)
    19e8:	8449ffdc 	lh	t1,-36(v0)
    19ec:	07210003 	bgez	t9,19fc <L8007DF78+0x104>
    19f0:	00196843 	sra	t5,t9,0x1
    19f4:	27210001 	addiu	at,t9,1
    19f8:	00016843 	sra	t5,at,0x1
    19fc:	02261821 	addu	v1,s1,a2
    1a00:	010d7021 	addu	t6,t0,t5
    1a04:	01e9c023 	subu	t8,t7,t1
    1a08:	a44effda 	sh	t6,-38(v0)
    1a0c:	846effe8 	lh	t6,-24(v1)
    1a10:	846affd8 	lh	t2,-40(v1)
    1a14:	07010003 	bgez	t8,1a24 <L8007DF78+0x12c>
    1a18:	0018c843 	sra	t9,t8,0x1
    1a1c:	27010001 	addiu	at,t8,1
    1a20:	0001c843 	sra	t9,at,0x1
    1a24:	01396821 	addu	t5,t1,t9
    1a28:	01ca7823 	subu	t7,t6,t2
    1a2c:	a44dffdc 	sh	t5,-36(v0)
    1a30:	846dffea 	lh	t5,-22(v1)
    1a34:	846bffda 	lh	t3,-38(v1)
    1a38:	05e10003 	bgez	t7,1a48 <L8007DF78+0x150>
    1a3c:	000fc043 	sra	t8,t7,0x1
    1a40:	25e10001 	addiu	at,t7,1
    1a44:	0001c043 	sra	t8,at,0x1
    1a48:	0158c821 	addu	t9,t2,t8
    1a4c:	01ab7023 	subu	t6,t5,t3
    1a50:	a479ffd8 	sh	t9,-40(v1)
    1a54:	05c10003 	bgez	t6,1a64 <L8007DF78+0x16c>
    1a58:	000e7843 	sra	t7,t6,0x1
    1a5c:	25c10001 	addiu	at,t6,1
    1a60:	00017843 	sra	t7,at,0x1
    1a64:	8479ffec 	lh	t9,-20(v1)
    1a68:	846cffdc 	lh	t4,-36(v1)
    1a6c:	016fc021 	addu	t8,t3,t7
    1a70:	a478ffda 	sh	t8,-38(v1)
    1a74:	032c6823 	subu	t5,t9,t4
    1a78:	05a10003 	bgez	t5,1a88 <L8007DF78+0x190>
    1a7c:	000d7043 	sra	t6,t5,0x1
    1a80:	25a10001 	addiu	at,t5,1
    1a84:	00017043 	sra	t6,at,0x1
    1a88:	018e7821 	addu	t7,t4,t6
    1a8c:	0c000000 	jal	0 <func_8007C680>
    1a90:	a46fffdc 	sh	t7,-36(v1)
    1a94:	00022400 	sll	a0,v0,0x10
    1a98:	00408825 	move	s1,v0
    1a9c:	00042403 	sra	a0,a0,0x10
    1aa0:	0c000000 	jal	0 <func_8007C680>
    1aa4:	24057530 	li	a1,30000
    1aa8:	00118400 	sll	s0,s1,0x10
    1aac:	00108403 	sra	s0,s0,0x10
    1ab0:	00102400 	sll	a0,s0,0x10
    1ab4:	00042403 	sra	a0,a0,0x10
    1ab8:	24050002 	li	a1,2
    1abc:	24060001 	li	a2,1
    1ac0:	24070001 	li	a3,1
    1ac4:	0c000000 	jal	0 <func_8007C680>
    1ac8:	afa00010 	sw	zero,16(sp)
    1acc:	00102400 	sll	a0,s0,0x10
    1ad0:	00042403 	sra	a0,a0,0x10
    1ad4:	0c000000 	jal	0 <func_8007C680>
    1ad8:	240500c8 	li	a1,200
    1adc:	10000797 	b	393c <L8007FFA8+0x14>
    1ae0:	8fbf0044 	lw	ra,68(sp)

00001ae4 <L8007E164>:
    1ae4:	87b800fa 	lh	t8,250(sp)
    1ae8:	3c0f0000 	lui	t7,0x0
    1aec:	25ef0000 	addiu	t7,t7,0
    1af0:	0018c823 	negu	t9,t8
    1af4:	00196880 	sll	t5,t9,0x2
    1af8:	01b96821 	addu	t5,t5,t9
    1afc:	000d6900 	sll	t5,t5,0x4
    1b00:	25aee070 	addiu	t6,t5,-8080
    1b04:	866d014c 	lh	t5,332(s3)
    1b08:	01cfc021 	addu	t8,t6,t7
    1b0c:	24190064 	li	t9,100
    1b10:	240f0002 	li	t7,2
    1b14:	35ae0002 	ori	t6,t5,0x2
    1b18:	ae780004 	sw	t8,4(s3)
    1b1c:	a6790160 	sh	t9,352(s3)
    1b20:	a66e014c 	sh	t6,332(s3)
    1b24:	ae6f0000 	sw	t7,0(s3)
    1b28:	02402025 	move	a0,s2
    1b2c:	00002825 	move	a1,zero
    1b30:	0c000000 	jal	0 <func_8007C680>
    1b34:	24060008 	li	a2,8
    1b38:	00152c00 	sll	a1,s5,0x10
    1b3c:	00052c03 	sra	a1,a1,0x10
    1b40:	02402025 	move	a0,s2
    1b44:	02803025 	move	a2,s4
    1b48:	0c000000 	jal	0 <func_8007C680>
    1b4c:	2407003c 	li	a3,60
    1b50:	1000077a 	b	393c <L8007FFA8+0x14>
    1b54:	8fbf0044 	lw	ra,68(sp)

00001b58 <L8007E1D8>:
    1b58:	3c180000 	lui	t8,0x0
    1b5c:	27180000 	addiu	t8,t8,0
    1b60:	2419000c 	li	t9,12
    1b64:	ae780004 	sw	t8,4(s3)
    1b68:	ae790000 	sw	t9,0(s3)
    1b6c:	02402025 	move	a0,s2
    1b70:	00002825 	move	a1,zero
    1b74:	0c000000 	jal	0 <func_8007C680>
    1b78:	24060008 	li	a2,8
    1b7c:	00152c00 	sll	a1,s5,0x10
    1b80:	00052c03 	sra	a1,a1,0x10
    1b84:	02402025 	move	a0,s2
    1b88:	02803025 	move	a2,s4
    1b8c:	0c000000 	jal	0 <func_8007C680>
    1b90:	2407003c 	li	a3,60
    1b94:	866d014c 	lh	t5,332(s3)
    1b98:	35ae0002 	ori	t6,t5,0x2
    1b9c:	10000766 	b	3938 <L8007FFA8+0x10>
    1ba0:	a66e014c 	sh	t6,332(s3)

00001ba4 <L8007E224>:
    1ba4:	8e5900ec 	lw	t9,236(s2)
    1ba8:	3c0f0000 	lui	t7,0x0
    1bac:	25ef0000 	addiu	t7,t7,0
    1bb0:	adf90000 	sw	t9,0(t7)
    1bb4:	8e5800f0 	lw	t8,240(s2)
    1bb8:	3c0d0000 	lui	t5,0x0
    1bbc:	25ad0000 	addiu	t5,t5,0
    1bc0:	adf80004 	sw	t8,4(t7)
    1bc4:	8e5900f4 	lw	t9,244(s2)
    1bc8:	3c020000 	lui	v0,0x0
    1bcc:	24420000 	addiu	v0,v0,0
    1bd0:	adf90008 	sw	t9,8(t7)
    1bd4:	8e4f00e0 	lw	t7,224(s2)
    1bd8:	24180007 	li	t8,7
    1bdc:	00152c00 	sll	a1,s5,0x10
    1be0:	adaf0000 	sw	t7,0(t5)
    1be4:	8e4e00e4 	lw	t6,228(s2)
    1be8:	00052c03 	sra	a1,a1,0x10
    1bec:	02402025 	move	a0,s2
    1bf0:	adae0004 	sw	t6,4(t5)
    1bf4:	8e4f00e8 	lw	t7,232(s2)
    1bf8:	02803025 	move	a2,s4
    1bfc:	2407003c 	li	a3,60
    1c00:	adaf0008 	sw	t7,8(t5)
    1c04:	c65200d0 	lwc1	$f18,208(s2)
    1c08:	e4520008 	swc1	$f18,8(v0)
    1c0c:	ae620004 	sw	v0,4(s3)
    1c10:	0c000000 	jal	0 <func_8007C680>
    1c14:	ae780000 	sw	t8,0(s3)
    1c18:	10000748 	b	393c <L8007FFA8+0x14>
    1c1c:	8fbf0044 	lw	ra,68(sp)

00001c20 <L8007E2A0>:
    1c20:	3c010000 	lui	at,0x0
    1c24:	c42a0000 	lwc1	$f10,0(at)
    1c28:	3c010000 	lui	at,0x0
    1c2c:	c4240000 	lwc1	$f4,0(at)
    1c30:	3c01c4b3 	lui	at,0xc4b3
    1c34:	44818000 	mtc1	at,$f16
    1c38:	3c010000 	lui	at,0x0
    1c3c:	c4260000 	lwc1	$f6,0(at)
    1c40:	3c010000 	lui	at,0x0
    1c44:	c4280000 	lwc1	$f8,0(at)
    1c48:	3c010000 	lui	at,0x0
    1c4c:	c4320000 	lwc1	$f18,0(at)
    1c50:	00152c00 	sll	a1,s5,0x10
    1c54:	00052c03 	sra	a1,a1,0x10
    1c58:	02402025 	move	a0,s2
    1c5c:	24060022 	li	a2,34
    1c60:	e7aa00c0 	swc1	$f10,192(sp)
    1c64:	e7a400c4 	swc1	$f4,196(sp)
    1c68:	e7b000c8 	swc1	$f16,200(sp)
    1c6c:	e7a600b4 	swc1	$f6,180(sp)
    1c70:	e7a800b8 	swc1	$f8,184(sp)
    1c74:	0c000000 	jal	0 <func_8007C680>
    1c78:	e7b200bc 	swc1	$f18,188(sp)
    1c7c:	00152c00 	sll	a1,s5,0x10
    1c80:	27a600c0 	addiu	a2,sp,192
    1c84:	00052c03 	sra	a1,a1,0x10
    1c88:	02402025 	move	a0,s2
    1c8c:	0c000000 	jal	0 <func_8007C680>
    1c90:	27a700b4 	addiu	a3,sp,180
    1c94:	3c01425c 	lui	at,0x425c
    1c98:	44815000 	mtc1	at,$f10
    1c9c:	24190050 	li	t9,80
    1ca0:	a679015a 	sh	t9,346(s3)
    1ca4:	02402025 	move	a0,s2
    1ca8:	02802825 	move	a1,s4
    1cac:	24060008 	li	a2,8
    1cb0:	0c000000 	jal	0 <func_8007C680>
    1cb4:	e66a00fc 	swc1	$f10,252(s3)
    1cb8:	10000720 	b	393c <L8007FFA8+0x14>
    1cbc:	8fbf0044 	lw	ra,68(sp)

00001cc0 <L8007E340>:
    1cc0:	27b000a0 	addiu	s0,sp,160
    1cc4:	02002025 	move	a0,s0
    1cc8:	02202825 	move	a1,s1
    1ccc:	0c000000 	jal	0 <func_8007C680>
    1cd0:	afb100f4 	sw	s1,244(sp)
    1cd4:	8e0e0000 	lw	t6,0(s0)
    1cd8:	27b100c0 	addiu	s1,sp,192
    1cdc:	8e0d0004 	lw	t5,4(s0)
    1ce0:	ae2e0000 	sw	t6,0(s1)
    1ce4:	8e0e0008 	lw	t6,8(s0)
    1ce8:	3c014248 	lui	at,0x4248
    1cec:	ae2d0004 	sw	t5,4(s1)
    1cf0:	ae2e0008 	sw	t6,8(s1)
    1cf4:	c7a400c4 	lwc1	$f4,196(sp)
    1cf8:	44818000 	mtc1	at,$f16
    1cfc:	3c01437a 	lui	at,0x437a
    1d00:	44814000 	mtc1	at,$f8
    1d04:	46102180 	add.s	$f6,$f4,$f16
    1d08:	240ffa24 	li	t7,-1500
    1d0c:	a7af00d4 	sh	t7,212(sp)
    1d10:	02002025 	move	a0,s0
    1d14:	e7a600c4 	swc1	$f6,196(sp)
    1d18:	02802825 	move	a1,s4
    1d1c:	0c000000 	jal	0 <func_8007C680>
    1d20:	e7a800d0 	swc1	$f8,208(sp)
    1d24:	02202025 	move	a0,s1
    1d28:	0c000000 	jal	0 <func_8007C680>
    1d2c:	02002825 	move	a1,s0
    1d30:	2458f830 	addiu	t8,v0,-2000
    1d34:	a7b800d6 	sh	t8,214(sp)
    1d38:	27a400b4 	addiu	a0,sp,180
    1d3c:	02202825 	move	a1,s1
    1d40:	0c000000 	jal	0 <func_8007C680>
    1d44:	27a600d0 	addiu	a2,sp,208
    1d48:	00152c00 	sll	a1,s5,0x10
    1d4c:	00052c03 	sra	a1,a1,0x10
    1d50:	02402025 	move	a0,s2
    1d54:	0c000000 	jal	0 <func_8007C680>
    1d58:	24060022 	li	a2,34
    1d5c:	00152c00 	sll	a1,s5,0x10
    1d60:	00052c03 	sra	a1,a1,0x10
    1d64:	02402025 	move	a0,s2
    1d68:	02203025 	move	a2,s1
    1d6c:	0c000000 	jal	0 <func_8007C680>
    1d70:	27a700b4 	addiu	a3,sp,180
    1d74:	00153400 	sll	a2,s5,0x10
    1d78:	00063403 	sra	a2,a2,0x10
    1d7c:	02402025 	move	a0,s2
    1d80:	0c000000 	jal	0 <func_8007C680>
    1d84:	00002825 	move	a1,zero
    1d88:	3c01425c 	lui	at,0x425c
    1d8c:	44819000 	mtc1	at,$f18
    1d90:	2419ffff 	li	t9,-1
    1d94:	a679015a 	sh	t9,346(s3)
    1d98:	e67200fc 	swc1	$f18,252(s3)
    1d9c:	8fa500f4 	lw	a1,244(sp)
    1da0:	02402025 	move	a0,s2
    1da4:	0c000000 	jal	0 <func_8007C680>
    1da8:	24060001 	li	a2,1
    1dac:	100006e3 	b	393c <L8007FFA8+0x14>
    1db0:	8fbf0044 	lw	ra,68(sp)

00001db4 <L8007E434>:
    1db4:	27b000a0 	addiu	s0,sp,160
    1db8:	02002025 	move	a0,s0
    1dbc:	0c000000 	jal	0 <func_8007C680>
    1dc0:	02202825 	move	a1,s1
    1dc4:	8e0e0000 	lw	t6,0(s0)
    1dc8:	27b100c0 	addiu	s1,sp,192
    1dcc:	8e0d0004 	lw	t5,4(s0)
    1dd0:	ae2e0000 	sw	t6,0(s1)
    1dd4:	8e0e0008 	lw	t6,8(s0)
    1dd8:	3c014316 	lui	at,0x4316
    1ddc:	ae2d0004 	sw	t5,4(s1)
    1de0:	ae2e0008 	sw	t6,8(s1)
    1de4:	87af00ae 	lh	t7,174(sp)
    1de8:	44815000 	mtc1	at,$f10
    1dec:	a7a000d4 	sh	zero,212(sp)
    1df0:	02202825 	move	a1,s1
    1df4:	27a400b4 	addiu	a0,sp,180
    1df8:	27a600d0 	addiu	a2,sp,208
    1dfc:	a7af00d6 	sh	t7,214(sp)
    1e00:	0c000000 	jal	0 <func_8007C680>
    1e04:	e7aa00d0 	swc1	$f10,208(sp)
    1e08:	00152c00 	sll	a1,s5,0x10
    1e0c:	00052c03 	sra	a1,a1,0x10
    1e10:	02402025 	move	a0,s2
    1e14:	0c000000 	jal	0 <func_8007C680>
    1e18:	24060022 	li	a2,34
    1e1c:	00152c00 	sll	a1,s5,0x10
    1e20:	00052c03 	sra	a1,a1,0x10
    1e24:	02402025 	move	a0,s2
    1e28:	02203025 	move	a2,s1
    1e2c:	0c000000 	jal	0 <func_8007C680>
    1e30:	27a700b4 	addiu	a3,sp,180
    1e34:	3c01425c 	lui	at,0x425c
    1e38:	44812000 	mtc1	at,$f4
    1e3c:	a660015a 	sh	zero,346(s3)
    1e40:	02402025 	move	a0,s2
    1e44:	02802825 	move	a1,s4
    1e48:	24060008 	li	a2,8
    1e4c:	0c000000 	jal	0 <func_8007C680>
    1e50:	e66400fc 	swc1	$f4,252(s3)
    1e54:	100006b9 	b	393c <L8007FFA8+0x14>
    1e58:	8fbf0044 	lw	ra,68(sp)

00001e5c <L8007E4DC>:
    1e5c:	27b000a0 	addiu	s0,sp,160
    1e60:	02002025 	move	a0,s0
    1e64:	02202825 	move	a1,s1
    1e68:	0c000000 	jal	0 <func_8007C680>
    1e6c:	afb100f4 	sw	s1,244(sp)
    1e70:	8e190000 	lw	t9,0(s0)
    1e74:	27b100c0 	addiu	s1,sp,192
    1e78:	8e180004 	lw	t8,4(s0)
    1e7c:	ae390000 	sw	t9,0(s1)
    1e80:	8e190008 	lw	t9,8(s0)
    1e84:	3c0142f0 	lui	at,0x42f0
    1e88:	ae380004 	sw	t8,4(s1)
    1e8c:	ae390008 	sw	t9,8(s1)
    1e90:	c7b000c4 	lwc1	$f16,196(sp)
    1e94:	44813000 	mtc1	at,$f6
    1e98:	3c014396 	lui	at,0x4396
    1e9c:	44819000 	mtc1	at,$f18
    1ea0:	46068200 	add.s	$f8,$f16,$f6
    1ea4:	87ad00ae 	lh	t5,174(sp)
    1ea8:	240ef510 	li	t6,-2800
    1eac:	a7ae00d4 	sh	t6,212(sp)
    1eb0:	e7a800c4 	swc1	$f8,196(sp)
    1eb4:	02202825 	move	a1,s1
    1eb8:	27a400b4 	addiu	a0,sp,180
    1ebc:	27a600d0 	addiu	a2,sp,208
    1ec0:	e7b200d0 	swc1	$f18,208(sp)
    1ec4:	0c000000 	jal	0 <func_8007C680>
    1ec8:	a7ad00d6 	sh	t5,214(sp)
    1ecc:	00152c00 	sll	a1,s5,0x10
    1ed0:	00052c03 	sra	a1,a1,0x10
    1ed4:	02402025 	move	a0,s2
    1ed8:	0c000000 	jal	0 <func_8007C680>
    1edc:	24060022 	li	a2,34
    1ee0:	00152c00 	sll	a1,s5,0x10
    1ee4:	00052c03 	sra	a1,a1,0x10
    1ee8:	02402025 	move	a0,s2
    1eec:	02203025 	move	a2,s1
    1ef0:	0c000000 	jal	0 <func_8007C680>
    1ef4:	27a700b4 	addiu	a3,sp,180
    1ef8:	3c014270 	lui	at,0x4270
    1efc:	44815000 	mtc1	at,$f10
    1f00:	a660015a 	sh	zero,346(s3)
    1f04:	02402025 	move	a0,s2
    1f08:	e66a00fc 	swc1	$f10,252(s3)
    1f0c:	8fa500f4 	lw	a1,244(sp)
    1f10:	0c000000 	jal	0 <func_8007C680>
    1f14:	24060001 	li	a2,1
    1f18:	10000688 	b	393c <L8007FFA8+0x14>
    1f1c:	8fbf0044 	lw	ra,68(sp)

00001f20 <L8007E5A0>:
    1f20:	00152c00 	sll	a1,s5,0x10
    1f24:	00052c03 	sra	a1,a1,0x10
    1f28:	02402025 	move	a0,s2
    1f2c:	24060033 	li	a2,51
    1f30:	0c000000 	jal	0 <func_8007C680>
    1f34:	afb100f4 	sw	s1,244(sp)
    1f38:	8fa400dc 	lw	a0,220(sp)
    1f3c:	0c000000 	jal	0 <func_8007C680>
    1f40:	00002825 	move	a1,zero
    1f44:	02402025 	move	a0,s2
    1f48:	8fa500f4 	lw	a1,244(sp)
    1f4c:	0c000000 	jal	0 <func_8007C680>
    1f50:	2406000c 	li	a2,12
    1f54:	10000679 	b	393c <L8007FFA8+0x14>
    1f58:	8fbf0044 	lw	ra,68(sp)

00001f5c <L8007E5DC>:
    1f5c:	3c0142f0 	lui	at,0x42f0
    1f60:	44812000 	mtc1	at,$f4
    1f64:	3c010000 	lui	at,0x0
    1f68:	c4300000 	lwc1	$f16,0(at)
    1f6c:	3c010000 	lui	at,0x0
    1f70:	c4260000 	lwc1	$f6,0(at)
    1f74:	3c0142a0 	lui	at,0x42a0
    1f78:	44814000 	mtc1	at,$f8
    1f7c:	3c010000 	lui	at,0x0
    1f80:	c4320000 	lwc1	$f18,0(at)
    1f84:	3c010000 	lui	at,0x0
    1f88:	c42a0000 	lwc1	$f10,0(at)
    1f8c:	00152c00 	sll	a1,s5,0x10
    1f90:	00052c03 	sra	a1,a1,0x10
    1f94:	02402025 	move	a0,s2
    1f98:	24060022 	li	a2,34
    1f9c:	afb100f4 	sw	s1,244(sp)
    1fa0:	e7a400c0 	swc1	$f4,192(sp)
    1fa4:	e7b000c4 	swc1	$f16,196(sp)
    1fa8:	e7a600c8 	swc1	$f6,200(sp)
    1fac:	e7a800b4 	swc1	$f8,180(sp)
    1fb0:	e7b200b8 	swc1	$f18,184(sp)
    1fb4:	0c000000 	jal	0 <func_8007C680>
    1fb8:	e7aa00bc 	swc1	$f10,188(sp)
    1fbc:	27b100c0 	addiu	s1,sp,192
    1fc0:	00152c00 	sll	a1,s5,0x10
    1fc4:	00052c03 	sra	a1,a1,0x10
    1fc8:	02203025 	move	a2,s1
    1fcc:	02402025 	move	a0,s2
    1fd0:	0c000000 	jal	0 <func_8007C680>
    1fd4:	27a700b4 	addiu	a3,sp,180
    1fd8:	3c014296 	lui	at,0x4296
    1fdc:	44812000 	mtc1	at,$f4
    1fe0:	240f001e 	li	t7,30
    1fe4:	a66f015a 	sh	t7,346(s3)
    1fe8:	02402025 	move	a0,s2
    1fec:	02802825 	move	a1,s4
    1ff0:	24060008 	li	a2,8
    1ff4:	0c000000 	jal	0 <func_8007C680>
    1ff8:	e66400fc 	swc1	$f4,252(s3)
    1ffc:	27b000a0 	addiu	s0,sp,160
    2000:	02002025 	move	a0,s0
    2004:	0c000000 	jal	0 <func_8007C680>
    2008:	8fa500f4 	lw	a1,244(sp)
    200c:	27b5008c 	addiu	s5,sp,140
    2010:	02a02025 	move	a0,s5
    2014:	0c000000 	jal	0 <func_8007C680>
    2018:	02802825 	move	a1,s4
    201c:	3c01428c 	lui	at,0x428c
    2020:	44814000 	mtc1	at,$f8
    2024:	c7a60090 	lwc1	$f6,144(sp)
    2028:	c7b0008c 	lwc1	$f16,140(sp)
    202c:	c7aa0094 	lwc1	$f10,148(sp)
    2030:	46083480 	add.s	$f18,$f6,$f8
    2034:	27a400d0 	addiu	a0,sp,208
    2038:	02002825 	move	a1,s0
    203c:	02a03025 	move	a2,s5
    2040:	e7b200c4 	swc1	$f18,196(sp)
    2044:	e7b000c0 	swc1	$f16,192(sp)
    2048:	0c000000 	jal	0 <func_8007C680>
    204c:	e7aa00c8 	swc1	$f10,200(sp)
    2050:	3c0142f0 	lui	at,0x42f0
    2054:	44812000 	mtc1	at,$f4
    2058:	241805dc 	li	t8,1500
    205c:	a7b800d4 	sh	t8,212(sp)
    2060:	27a400b4 	addiu	a0,sp,180
    2064:	02202825 	move	a1,s1
    2068:	27a600d0 	addiu	a2,sp,208
    206c:	0c000000 	jal	0 <func_8007C680>
    2070:	e7a400d0 	swc1	$f4,208(sp)
    2074:	02402025 	move	a0,s2
    2078:	00002825 	move	a1,zero
    207c:	02203025 	move	a2,s1
    2080:	0c000000 	jal	0 <func_8007C680>
    2084:	27a700b4 	addiu	a3,sp,180
    2088:	02602025 	move	a0,s3
    208c:	0c000000 	jal	0 <func_8007C680>
    2090:	24050003 	li	a1,3
    2094:	00022400 	sll	a0,v0,0x10
    2098:	00408825 	move	s1,v0
    209c:	00042403 	sra	a0,a0,0x10
    20a0:	0c000000 	jal	0 <func_8007C680>
    20a4:	240555f0 	li	a1,22000
    20a8:	00118400 	sll	s0,s1,0x10
    20ac:	00108403 	sra	s0,s0,0x10
    20b0:	00102400 	sll	a0,s0,0x10
    20b4:	00042403 	sra	a0,a0,0x10
    20b8:	24050001 	li	a1,1
    20bc:	00003025 	move	a2,zero
    20c0:	00003825 	move	a3,zero
    20c4:	0c000000 	jal	0 <func_8007C680>
    20c8:	afa00010 	sw	zero,16(sp)
    20cc:	00102400 	sll	a0,s0,0x10
    20d0:	00042403 	sra	a0,a0,0x10
    20d4:	0c000000 	jal	0 <func_8007C680>
    20d8:	2405005a 	li	a1,90
    20dc:	10000617 	b	393c <L8007FFA8+0x14>
    20e0:	8fbf0044 	lw	ra,68(sp)
    20e4:	27b000a0 	addiu	s0,sp,160
    20e8:	02002025 	move	a0,s0
    20ec:	0c000000 	jal	0 <func_8007C680>
    20f0:	02202825 	move	a1,s1
    20f4:	8e0d0000 	lw	t5,0(s0)
    20f8:	27b100c0 	addiu	s1,sp,192
    20fc:	8e190004 	lw	t9,4(s0)
    2100:	ae2d0000 	sw	t5,0(s1)
    2104:	8e0d0008 	lw	t5,8(s0)
    2108:	3c01428c 	lui	at,0x428c
    210c:	ae390004 	sw	t9,4(s1)
    2110:	ae2d0008 	sw	t5,8(s1)
    2114:	c7b000c4 	lwc1	$f16,196(sp)
    2118:	44813000 	mtc1	at,$f6
    211c:	87ae00ae 	lh	t6,174(sp)
    2120:	3c014396 	lui	at,0x4396
    2124:	46068200 	add.s	$f8,$f16,$f6
    2128:	44819000 	mtc1	at,$f18
    212c:	25cf7fff 	addiu	t7,t6,32767
    2130:	a7a000d4 	sh	zero,212(sp)
    2134:	e7a800c4 	swc1	$f8,196(sp)
    2138:	a7af00d6 	sh	t7,214(sp)
    213c:	02202825 	move	a1,s1
    2140:	27a400b4 	addiu	a0,sp,180
    2144:	27a600d0 	addiu	a2,sp,208
    2148:	0c000000 	jal	0 <func_8007C680>
    214c:	e7b200d0 	swc1	$f18,208(sp)
    2150:	00152c00 	sll	a1,s5,0x10
    2154:	00052c03 	sra	a1,a1,0x10
    2158:	02402025 	move	a0,s2
    215c:	0c000000 	jal	0 <func_8007C680>
    2160:	24060022 	li	a2,34
    2164:	00152c00 	sll	a1,s5,0x10
    2168:	00052c03 	sra	a1,a1,0x10
    216c:	02402025 	move	a0,s2
    2170:	02203025 	move	a2,s1
    2174:	0c000000 	jal	0 <func_8007C680>
    2178:	27a700b4 	addiu	a3,sp,180
    217c:	3c014234 	lui	at,0x4234
    2180:	44815000 	mtc1	at,$f10
    2184:	a660015a 	sh	zero,346(s3)
    2188:	02402025 	move	a0,s2
    218c:	02802825 	move	a1,s4
    2190:	24060008 	li	a2,8
    2194:	0c000000 	jal	0 <func_8007C680>
    2198:	e66a00fc 	swc1	$f10,252(s3)
    219c:	100005e7 	b	393c <L8007FFA8+0x14>
    21a0:	8fbf0044 	lw	ra,68(sp)

000021a4 <L8007E824>:
    21a4:	27b000a0 	addiu	s0,sp,160
    21a8:	02002025 	move	a0,s0
    21ac:	0c000000 	jal	0 <func_8007C680>
    21b0:	02202825 	move	a1,s1
    21b4:	8e190000 	lw	t9,0(s0)
    21b8:	27b100c0 	addiu	s1,sp,192
    21bc:	8e180004 	lw	t8,4(s0)
    21c0:	ae390000 	sw	t9,0(s1)
    21c4:	8e190008 	lw	t9,8(s0)
    21c8:	00152c00 	sll	a1,s5,0x10
    21cc:	00052c03 	sra	a1,a1,0x10
    21d0:	02402025 	move	a0,s2
    21d4:	02803025 	move	a2,s4
    21d8:	24070039 	li	a3,57
    21dc:	ae380004 	sw	t8,4(s1)
    21e0:	0c000000 	jal	0 <func_8007C680>
    21e4:	ae390008 	sw	t9,8(s1)
    21e8:	02002025 	move	a0,s0
    21ec:	0c000000 	jal	0 <func_8007C680>
    21f0:	02802825 	move	a1,s4
    21f4:	27a400d0 	addiu	a0,sp,208
    21f8:	02202825 	move	a1,s1
    21fc:	0c000000 	jal	0 <func_8007C680>
    2200:	02003025 	move	a2,s0
    2204:	87ad00d6 	lh	t5,214(sp)
    2208:	3c0143c8 	lui	at,0x43c8
    220c:	44812000 	mtc1	at,$f4
    2210:	25ae03e8 	addiu	t6,t5,1000
    2214:	a7ae00d6 	sh	t6,214(sp)
    2218:	27a400b4 	addiu	a0,sp,180
    221c:	02202825 	move	a1,s1
    2220:	27a600d0 	addiu	a2,sp,208
    2224:	0c000000 	jal	0 <func_8007C680>
    2228:	e7a400d0 	swc1	$f4,208(sp)
    222c:	3c014270 	lui	at,0x4270
    2230:	44813000 	mtc1	at,$f6
    2234:	c7b000a4 	lwc1	$f16,164(sp)
    2238:	00152c00 	sll	a1,s5,0x10
    223c:	00052c03 	sra	a1,a1,0x10
    2240:	46068200 	add.s	$f8,$f16,$f6
    2244:	02402025 	move	a0,s2
    2248:	02203025 	move	a2,s1
    224c:	27a700b4 	addiu	a3,sp,180
    2250:	0c000000 	jal	0 <func_8007C680>
    2254:	e7a800b8 	swc1	$f8,184(sp)
    2258:	3c014296 	lui	at,0x4296
    225c:	44819000 	mtc1	at,$f18
    2260:	a660015a 	sh	zero,346(s3)
    2264:	02402025 	move	a0,s2
    2268:	e67200fc 	swc1	$f18,252(s3)
    226c:	87a700d6 	lh	a3,214(sp)
    2270:	00002825 	move	a1,zero
    2274:	24060008 	li	a2,8
    2278:	24e37fff 	addiu	v1,a3,32767
    227c:	a683083c 	sh	v1,2108(s4)
    2280:	a6830032 	sh	v1,50(s4)
    2284:	0c000000 	jal	0 <func_8007C680>
    2288:	a68300b6 	sh	v1,182(s4)
    228c:	100005ab 	b	393c <L8007FFA8+0x14>
    2290:	8fbf0044 	lw	ra,68(sp)

00002294 <L8007E914>:
    2294:	87af00fa 	lh	t7,250(sp)
    2298:	3c020000 	lui	v0,0x0
    229c:	24420000 	addiu	v0,v0,0
    22a0:	25f8fffb 	addiu	t8,t7,-5
    22a4:	a4580054 	sh	t8,84(v0)
    22a8:	24190003 	li	t9,3
    22ac:	ae620004 	sw	v0,4(s3)
    22b0:	ae790000 	sw	t9,0(s3)
    22b4:	02402025 	move	a0,s2
    22b8:	00002825 	move	a1,zero
    22bc:	0c000000 	jal	0 <func_8007C680>
    22c0:	24060008 	li	a2,8
    22c4:	00152c00 	sll	a1,s5,0x10
    22c8:	00052c03 	sra	a1,a1,0x10
    22cc:	02402025 	move	a0,s2
    22d0:	02803025 	move	a2,s4
    22d4:	0c000000 	jal	0 <func_8007C680>
    22d8:	2407003c 	li	a3,60
    22dc:	10000597 	b	393c <L8007FFA8+0x14>
    22e0:	8fbf0044 	lw	ra,68(sp)
    22e4:	00152c00 	sll	a1,s5,0x10
    22e8:	00052c03 	sra	a1,a1,0x10
    22ec:	02402025 	move	a0,s2
    22f0:	2406002a 	li	a2,42
    22f4:	0c000000 	jal	0 <func_8007C680>
    22f8:	afb100f4 	sw	s1,244(sp)
    22fc:	02402025 	move	a0,s2
    2300:	00002825 	move	a1,zero
    2304:	0c000000 	jal	0 <func_8007C680>
    2308:	24060008 	li	a2,8
    230c:	27a400a0 	addiu	a0,sp,160
    2310:	0c000000 	jal	0 <func_8007C680>
    2314:	8fa500f4 	lw	a1,244(sp)
    2318:	3c010000 	lui	at,0x0
    231c:	c42a0000 	lwc1	$f10,0(at)
    2320:	c7a400a8 	lwc1	$f4,168(sp)
    2324:	4604503c 	c.lt.s	$f10,$f4
    2328:	00000000 	nop
    232c:	4500000e 	bc1f	2368 <L8007E914+0xd4>
    2330:	3c120000 	lui	s2,0x0
    2334:	3c0d0000 	lui	t5,0x0
    2338:	26520000 	addiu	s2,s2,0
    233c:	25ad0000 	addiu	t5,t5,0
    2340:	3c050000 	lui	a1,0x0
    2344:	3c070000 	lui	a3,0x0
    2348:	24e70000 	addiu	a3,a3,0
    234c:	84a50000 	lh	a1,0(a1)
    2350:	afad0010 	sw	t5,16(sp)
    2354:	86460000 	lh	a2,0(s2)
    2358:	0c000000 	jal	0 <func_8007C680>
    235c:	02602025 	move	a0,s3
    2360:	1000000e 	b	239c <L8007E914+0x108>
    2364:	02602025 	move	a0,s3
    2368:	3c120000 	lui	s2,0x0
    236c:	3c0e0000 	lui	t6,0x0
    2370:	26520000 	addiu	s2,s2,0
    2374:	25ce0000 	addiu	t6,t6,0
    2378:	3c050000 	lui	a1,0x0
    237c:	3c070000 	lui	a3,0x0
    2380:	24e70000 	addiu	a3,a3,0
    2384:	84a50000 	lh	a1,0(a1)
    2388:	afae0010 	sw	t6,16(sp)
    238c:	86460000 	lh	a2,0(s2)
    2390:	0c000000 	jal	0 <func_8007C680>
    2394:	02602025 	move	a0,s3
    2398:	02602025 	move	a0,s3
    239c:	0c000000 	jal	0 <func_8007C680>
    23a0:	24050001 	li	a1,1
    23a4:	00022400 	sll	a0,v0,0x10
    23a8:	00408825 	move	s1,v0
    23ac:	00042403 	sra	a0,a0,0x10
    23b0:	0c000000 	jal	0 <func_8007C680>
    23b4:	24057d00 	li	a1,32000
    23b8:	00118400 	sll	s0,s1,0x10
    23bc:	00108403 	sra	s0,s0,0x10
    23c0:	00102400 	sll	a0,s0,0x10
    23c4:	00042403 	sra	a0,a0,0x10
    23c8:	00002825 	move	a1,zero
    23cc:	00003025 	move	a2,zero
    23d0:	24070014 	li	a3,20
    23d4:	0c000000 	jal	0 <func_8007C680>
    23d8:	afa00010 	sw	zero,16(sp)
    23dc:	86450000 	lh	a1,0(s2)
    23e0:	00102400 	sll	a0,s0,0x10
    23e4:	00042403 	sra	a0,a0,0x10
    23e8:	24a5fff6 	addiu	a1,a1,-10
    23ec:	00052c00 	sll	a1,a1,0x10
    23f0:	0c000000 	jal	0 <func_8007C680>
    23f4:	00052c03 	sra	a1,a1,0x10
    23f8:	10000550 	b	393c <L8007FFA8+0x14>
    23fc:	8fbf0044 	lw	ra,68(sp)

00002400 <L8007EA80>:
    2400:	00152c00 	sll	a1,s5,0x10
    2404:	00052c03 	sra	a1,a1,0x10
    2408:	02402025 	move	a0,s2
    240c:	0c000000 	jal	0 <func_8007C680>
    2410:	2406002a 	li	a2,42
    2414:	02402025 	move	a0,s2
    2418:	02802825 	move	a1,s4
    241c:	0c000000 	jal	0 <func_8007C680>
    2420:	24060008 	li	a2,8
    2424:	3c050000 	lui	a1,0x0
    2428:	84a50000 	lh	a1,0(a1)
    242c:	3c100000 	lui	s0,0x0
    2430:	3c110000 	lui	s1,0x0
    2434:	3c140000 	lui	s4,0x0
    2438:	34a52000 	ori	a1,a1,0x2000
    243c:	26940000 	addiu	s4,s4,0
    2440:	26310000 	addiu	s1,s1,0
    2444:	26100000 	addiu	s0,s0,0
    2448:	00052c00 	sll	a1,a1,0x10
    244c:	00052c03 	sra	a1,a1,0x10
    2450:	02003825 	move	a3,s0
    2454:	afb10010 	sw	s1,16(sp)
    2458:	86860000 	lh	a2,0(s4)
    245c:	0c000000 	jal	0 <func_8007C680>
    2460:	02602025 	move	a0,s3
    2464:	3c120000 	lui	s2,0x0
    2468:	26520000 	addiu	s2,s2,0
    246c:	864f0000 	lh	t7,0(s2)
    2470:	8fa400dc 	lw	a0,220(sp)
    2474:	000fc100 	sll	t8,t7,0x4
    2478:	02382821 	addu	a1,s1,t8
    247c:	24a5ffe8 	addiu	a1,a1,-24
    2480:	0c000000 	jal	0 <func_8007C680>
    2484:	2484005c 	addiu	a0,a0,92
    2488:	86590000 	lh	t9,0(s2)
    248c:	8fa400dc 	lw	a0,220(sp)
    2490:	00196900 	sll	t5,t9,0x4
    2494:	020d2821 	addu	a1,s0,t5
    2498:	24a5ffe8 	addiu	a1,a1,-24
    249c:	0c000000 	jal	0 <func_8007C680>
    24a0:	24840050 	addiu	a0,a0,80
    24a4:	02602025 	move	a0,s3
    24a8:	0c000000 	jal	0 <func_8007C680>
    24ac:	24050001 	li	a1,1
    24b0:	00022400 	sll	a0,v0,0x10
    24b4:	00408825 	move	s1,v0
    24b8:	00042403 	sra	a0,a0,0x10
    24bc:	0c000000 	jal	0 <func_8007C680>
    24c0:	24054e20 	li	a1,20000
    24c4:	00118400 	sll	s0,s1,0x10
    24c8:	00108403 	sra	s0,s0,0x10
    24cc:	00102400 	sll	a0,s0,0x10
    24d0:	00042403 	sra	a0,a0,0x10
    24d4:	24050001 	li	a1,1
    24d8:	00003025 	move	a2,zero
    24dc:	24070032 	li	a3,50
    24e0:	0c000000 	jal	0 <func_8007C680>
    24e4:	afa00010 	sw	zero,16(sp)
    24e8:	86850000 	lh	a1,0(s4)
    24ec:	00102400 	sll	a0,s0,0x10
    24f0:	00042403 	sra	a0,a0,0x10
    24f4:	24a5ffec 	addiu	a1,a1,-20
    24f8:	00052c00 	sll	a1,a1,0x10
    24fc:	0c000000 	jal	0 <func_8007C680>
    2500:	00052c03 	sra	a1,a1,0x10
    2504:	1000050d 	b	393c <L8007FFA8+0x14>
    2508:	8fbf0044 	lw	ra,68(sp)

0000250c <L8007EB8C>:
    250c:	240ec027 	li	t6,-16345
    2510:	a68e083c 	sh	t6,2108(s4)
    2514:	8683083c 	lh	v1,2108(s4)
    2518:	3c0f0000 	lui	t7,0x0
    251c:	25ef0000 	addiu	t7,t7,0
    2520:	24180009 	li	t8,9
    2524:	a6830032 	sh	v1,50(s4)
    2528:	a68300b6 	sh	v1,182(s4)
    252c:	ae6f0004 	sw	t7,4(s3)
    2530:	ae780000 	sw	t8,0(s3)
    2534:	02402025 	move	a0,s2
    2538:	00002825 	move	a1,zero
    253c:	0c000000 	jal	0 <func_8007C680>
    2540:	24060008 	li	a2,8
    2544:	00152c00 	sll	a1,s5,0x10
    2548:	00052c03 	sra	a1,a1,0x10
    254c:	02402025 	move	a0,s2
    2550:	02803025 	move	a2,s4
    2554:	0c000000 	jal	0 <func_8007C680>
    2558:	2407003c 	li	a3,60
    255c:	100004f7 	b	393c <L8007FFA8+0x14>
    2560:	8fbf0044 	lw	ra,68(sp)

00002564 <L8007EBE4>:
    2564:	00152c00 	sll	a1,s5,0x10
    2568:	00052c03 	sra	a1,a1,0x10
    256c:	02402025 	move	a0,s2
    2570:	0c000000 	jal	0 <func_8007C680>
    2574:	24060031 	li	a2,49
    2578:	02402025 	move	a0,s2
    257c:	00002825 	move	a1,zero
    2580:	0c000000 	jal	0 <func_8007C680>
    2584:	24060008 	li	a2,8
    2588:	00152c00 	sll	a1,s5,0x10
    258c:	00052c03 	sra	a1,a1,0x10
    2590:	02402025 	move	a0,s2
    2594:	0c000000 	jal	0 <func_8007C680>
    2598:	00003025 	move	a2,zero
    259c:	02602025 	move	a0,s3
    25a0:	0c000000 	jal	0 <func_8007C680>
    25a4:	24050001 	li	a1,1
    25a8:	00022400 	sll	a0,v0,0x10
    25ac:	00408825 	move	s1,v0
    25b0:	00042403 	sra	a0,a0,0x10
    25b4:	0c000000 	jal	0 <func_8007C680>
    25b8:	24057d00 	li	a1,32000
    25bc:	00118400 	sll	s0,s1,0x10
    25c0:	00108403 	sra	s0,s0,0x10
    25c4:	00102400 	sll	a0,s0,0x10
    25c8:	00042403 	sra	a0,a0,0x10
    25cc:	24050002 	li	a1,2
    25d0:	00003025 	move	a2,zero
    25d4:	00003825 	move	a3,zero
    25d8:	0c000000 	jal	0 <func_8007C680>
    25dc:	afa00010 	sw	zero,16(sp)
    25e0:	00102400 	sll	a0,s0,0x10
    25e4:	00042403 	sra	a0,a0,0x10
    25e8:	0c000000 	jal	0 <func_8007C680>
    25ec:	87a500fa 	lh	a1,250(sp)
    25f0:	100004d2 	b	393c <L8007FFA8+0x14>
    25f4:	8fbf0044 	lw	ra,68(sp)

000025f8 <L8007EC78>:
    25f8:	8e4e00ec 	lw	t6,236(s2)
    25fc:	3c190000 	lui	t9,0x0
    2600:	27390000 	addiu	t9,t9,0
    2604:	af2e0000 	sw	t6,0(t9)
    2608:	8e4d00f0 	lw	t5,240(s2)
    260c:	3c0f0000 	lui	t7,0x0
    2610:	25ef0000 	addiu	t7,t7,0
    2614:	af2d0004 	sw	t5,4(t9)
    2618:	8e4e00f4 	lw	t6,244(s2)
    261c:	3c010000 	lui	at,0x0
    2620:	27a400a0 	addiu	a0,sp,160
    2624:	af2e0008 	sw	t6,8(t9)
    2628:	8e5900e0 	lw	t9,224(s2)
    262c:	02202825 	move	a1,s1
    2630:	adf90000 	sw	t9,0(t7)
    2634:	8e5800e4 	lw	t8,228(s2)
    2638:	adf80004 	sw	t8,4(t7)
    263c:	8e5900e8 	lw	t9,232(s2)
    2640:	adf90008 	sw	t9,8(t7)
    2644:	c65000d0 	lwc1	$f16,208(s2)
    2648:	0c000000 	jal	0 <func_8007C680>
    264c:	e4300000 	swc1	$f16,0(at)
    2650:	87ad00ae 	lh	t5,174(sp)
    2654:	3c0e0000 	lui	t6,0x0
    2658:	25ce0000 	addiu	t6,t6,0
    265c:	a68d083c 	sh	t5,2108(s4)
    2660:	8683083c 	lh	v1,2108(s4)
    2664:	240f0004 	li	t7,4
    2668:	00152c00 	sll	a1,s5,0x10
    266c:	a6830032 	sh	v1,50(s4)
    2670:	a68300b6 	sh	v1,182(s4)
    2674:	ae6e0004 	sw	t6,4(s3)
    2678:	ae6f0000 	sw	t7,0(s3)
    267c:	00052c03 	sra	a1,a1,0x10
    2680:	02402025 	move	a0,s2
    2684:	02803025 	move	a2,s4
    2688:	0c000000 	jal	0 <func_8007C680>
    268c:	2407003c 	li	a3,60
    2690:	02602025 	move	a0,s3
    2694:	0c000000 	jal	0 <func_8007C680>
    2698:	24050003 	li	a1,3
    269c:	00022400 	sll	a0,v0,0x10
    26a0:	00408825 	move	s1,v0
    26a4:	00042403 	sra	a0,a0,0x10
    26a8:	0c000000 	jal	0 <func_8007C680>
    26ac:	24052ee0 	li	a1,12000
    26b0:	00118400 	sll	s0,s1,0x10
    26b4:	00108403 	sra	s0,s0,0x10
    26b8:	00102400 	sll	a0,s0,0x10
    26bc:	00042403 	sra	a0,a0,0x10
    26c0:	00002825 	move	a1,zero
    26c4:	00003025 	move	a2,zero
    26c8:	240703e8 	li	a3,1000
    26cc:	0c000000 	jal	0 <func_8007C680>
    26d0:	afa00010 	sw	zero,16(sp)
    26d4:	00102400 	sll	a0,s0,0x10
    26d8:	00042403 	sra	a0,a0,0x10
    26dc:	0c000000 	jal	0 <func_8007C680>
    26e0:	24050005 	li	a1,5
    26e4:	10000495 	b	393c <L8007FFA8+0x14>
    26e8:	8fbf0044 	lw	ra,68(sp)

000026ec <L8007ED6C>:
    26ec:	8e4d00ec 	lw	t5,236(s2)
    26f0:	3c180000 	lui	t8,0x0
    26f4:	27180000 	addiu	t8,t8,0
    26f8:	af0d0000 	sw	t5,0(t8)
    26fc:	8e5900f0 	lw	t9,240(s2)
    2700:	3c0e0000 	lui	t6,0x0
    2704:	25ce0000 	addiu	t6,t6,0
    2708:	af190004 	sw	t9,4(t8)
    270c:	8e4d00f4 	lw	t5,244(s2)
    2710:	3c020000 	lui	v0,0x0
    2714:	24420000 	addiu	v0,v0,0
    2718:	af0d0008 	sw	t5,8(t8)
    271c:	8e5800e0 	lw	t8,224(s2)
    2720:	24190004 	li	t9,4
    2724:	02402025 	move	a0,s2
    2728:	add80000 	sw	t8,0(t6)
    272c:	8e4f00e4 	lw	t7,228(s2)
    2730:	00002825 	move	a1,zero
    2734:	24060008 	li	a2,8
    2738:	adcf0004 	sw	t7,4(t6)
    273c:	8e5800e8 	lw	t8,232(s2)
    2740:	add80008 	sw	t8,8(t6)
    2744:	c64600d0 	lwc1	$f6,208(s2)
    2748:	e4460008 	swc1	$f6,8(v0)
    274c:	ae620004 	sw	v0,4(s3)
    2750:	0c000000 	jal	0 <func_8007C680>
    2754:	ae790000 	sw	t9,0(s3)
    2758:	00152c00 	sll	a1,s5,0x10
    275c:	00052c03 	sra	a1,a1,0x10
    2760:	02402025 	move	a0,s2
    2764:	02803025 	move	a2,s4
    2768:	0c000000 	jal	0 <func_8007C680>
    276c:	2407003c 	li	a3,60
    2770:	02602025 	move	a0,s3
    2774:	0c000000 	jal	0 <func_8007C680>
    2778:	24050003 	li	a1,3
    277c:	00022400 	sll	a0,v0,0x10
    2780:	00408825 	move	s1,v0
    2784:	00042403 	sra	a0,a0,0x10
    2788:	0c000000 	jal	0 <func_8007C680>
    278c:	24052ee0 	li	a1,12000
    2790:	00118400 	sll	s0,s1,0x10
    2794:	00108403 	sra	s0,s0,0x10
    2798:	00102400 	sll	a0,s0,0x10
    279c:	00042403 	sra	a0,a0,0x10
    27a0:	00002825 	move	a1,zero
    27a4:	00003025 	move	a2,zero
    27a8:	240703e8 	li	a3,1000
    27ac:	0c000000 	jal	0 <func_8007C680>
    27b0:	afa00010 	sw	zero,16(sp)
    27b4:	00102400 	sll	a0,s0,0x10
    27b8:	00042403 	sra	a0,a0,0x10
    27bc:	0c000000 	jal	0 <func_8007C680>
    27c0:	24050005 	li	a1,5
    27c4:	1000045d 	b	393c <L8007FFA8+0x14>
    27c8:	8fbf0044 	lw	ra,68(sp)

000027cc <L8007EE4C>:
    27cc:	3c0d0000 	lui	t5,0x0
    27d0:	25ad0000 	addiu	t5,t5,0
    27d4:	240e0003 	li	t6,3
    27d8:	ae6d0004 	sw	t5,4(s3)
    27dc:	ae6e0000 	sw	t6,0(s3)
    27e0:	02402025 	move	a0,s2
    27e4:	02802825 	move	a1,s4
    27e8:	0c000000 	jal	0 <func_8007C680>
    27ec:	24060008 	li	a2,8
    27f0:	00152c00 	sll	a1,s5,0x10
    27f4:	00052c03 	sra	a1,a1,0x10
    27f8:	02402025 	move	a0,s2
    27fc:	02803025 	move	a2,s4
    2800:	0c000000 	jal	0 <func_8007C680>
    2804:	2407003c 	li	a3,60
    2808:	1000044c 	b	393c <L8007FFA8+0x14>
    280c:	8fbf0044 	lw	ra,68(sp)

00002810 <L8007EE90>:
    2810:	8e5900ec 	lw	t9,236(s2)
    2814:	3c0f0000 	lui	t7,0x0
    2818:	25ef0000 	addiu	t7,t7,0
    281c:	adf90000 	sw	t9,0(t7)
    2820:	8e5800f0 	lw	t8,240(s2)
    2824:	3c0d0000 	lui	t5,0x0
    2828:	25ad0000 	addiu	t5,t5,0
    282c:	adf80004 	sw	t8,4(t7)
    2830:	8e5900f4 	lw	t9,244(s2)
    2834:	3c100000 	lui	s0,0x0
    2838:	26100000 	addiu	s0,s0,0
    283c:	adf90008 	sw	t9,8(t7)
    2840:	8e4f00e0 	lw	t7,224(s2)
    2844:	44809000 	mtc1	zero,$f18
    2848:	adaf0000 	sw	t7,0(t5)
    284c:	8e4e00e4 	lw	t6,228(s2)
    2850:	adae0004 	sw	t6,4(t5)
    2854:	8e4f00e8 	lw	t7,232(s2)
    2858:	adaf0008 	sw	t7,8(t5)
    285c:	c64800d0 	lwc1	$f8,208(s2)
    2860:	e6080008 	swc1	$f8,8(s0)
    2864:	c62a0024 	lwc1	$f10,36(s1)
    2868:	460a903c 	c.lt.s	$f18,$f10
    286c:	00000000 	nop
    2870:	45000012 	bc1f	28bc <L8007EE90+0xac>
    2874:	3c014248 	lui	at,0x4248
    2878:	c6040038 	lwc1	$f4,56(s0)
    287c:	44813000 	mtc1	at,$f6
    2880:	c6120044 	lwc1	$f18,68(s0)
    2884:	8618002e 	lh	t8,46(s0)
    2888:	860d0056 	lh	t5,86(s0)
    288c:	3c0142a0 	lui	at,0x42a0
    2890:	44814000 	mtc1	at,$f8
    2894:	46002407 	neg.s	$f16,$f4
    2898:	46009287 	neg.s	$f10,$f18
    289c:	0018c823 	negu	t9,t8
    28a0:	000d7023 	negu	t6,t5
    28a4:	a619002e 	sh	t9,46(s0)
    28a8:	a60e0056 	sh	t6,86(s0)
    28ac:	e6100038 	swc1	$f16,56(s0)
    28b0:	e60a0044 	swc1	$f10,68(s0)
    28b4:	e606003c 	swc1	$f6,60(s0)
    28b8:	e6080048 	swc1	$f8,72(s0)
    28bc:	02402025 	move	a0,s2
    28c0:	00002825 	move	a1,zero
    28c4:	0c000000 	jal	0 <func_8007C680>
    28c8:	24060008 	li	a2,8
    28cc:	240f0005 	li	t7,5
    28d0:	00152c00 	sll	a1,s5,0x10
    28d4:	ae700004 	sw	s0,4(s3)
    28d8:	ae6f0000 	sw	t7,0(s3)
    28dc:	00052c03 	sra	a1,a1,0x10
    28e0:	02402025 	move	a0,s2
    28e4:	02803025 	move	a2,s4
    28e8:	0c000000 	jal	0 <func_8007C680>
    28ec:	2407003c 	li	a3,60
    28f0:	10000412 	b	393c <L8007FFA8+0x14>
    28f4:	8fbf0044 	lw	ra,68(sp)

000028f8 <L8007EF78>:
    28f8:	3c180000 	lui	t8,0x0
    28fc:	27180000 	addiu	t8,t8,0
    2900:	24190007 	li	t9,7
    2904:	ae780004 	sw	t8,4(s3)
    2908:	ae790000 	sw	t9,0(s3)
    290c:	02402025 	move	a0,s2
    2910:	02802825 	move	a1,s4
    2914:	0c000000 	jal	0 <func_8007C680>
    2918:	24060008 	li	a2,8
    291c:	00152c00 	sll	a1,s5,0x10
    2920:	00052c03 	sra	a1,a1,0x10
    2924:	02402025 	move	a0,s2
    2928:	02803025 	move	a2,s4
    292c:	0c000000 	jal	0 <func_8007C680>
    2930:	2407003c 	li	a3,60
    2934:	10000401 	b	393c <L8007FFA8+0x14>
    2938:	8fbf0044 	lw	ra,68(sp)

0000293c <L8007EFBC>:
    293c:	3c0d0000 	lui	t5,0x0
    2940:	25ad0000 	addiu	t5,t5,0
    2944:	240e0005 	li	t6,5
    2948:	ae6d0004 	sw	t5,4(s3)
    294c:	ae6e0000 	sw	t6,0(s3)
    2950:	02402025 	move	a0,s2
    2954:	00002825 	move	a1,zero
    2958:	0c000000 	jal	0 <func_8007C680>
    295c:	24060008 	li	a2,8
    2960:	00152c00 	sll	a1,s5,0x10
    2964:	00052c03 	sra	a1,a1,0x10
    2968:	02402025 	move	a0,s2
    296c:	02803025 	move	a2,s4
    2970:	0c000000 	jal	0 <func_8007C680>
    2974:	2407003c 	li	a3,60
    2978:	02602025 	move	a0,s3
    297c:	0c000000 	jal	0 <func_8007C680>
    2980:	24050001 	li	a1,1
    2984:	00022400 	sll	a0,v0,0x10
    2988:	00408825 	move	s1,v0
    298c:	00042403 	sra	a0,a0,0x10
    2990:	0c000000 	jal	0 <func_8007C680>
    2994:	24057d00 	li	a1,32000
    2998:	00118400 	sll	s0,s1,0x10
    299c:	00108403 	sra	s0,s0,0x10
    29a0:	00102400 	sll	a0,s0,0x10
    29a4:	00042403 	sra	a0,a0,0x10
    29a8:	24050004 	li	a1,4
    29ac:	00003025 	move	a2,zero
    29b0:	00003825 	move	a3,zero
    29b4:	0c000000 	jal	0 <func_8007C680>
    29b8:	afa00010 	sw	zero,16(sp)
    29bc:	00102400 	sll	a0,s0,0x10
    29c0:	00042403 	sra	a0,a0,0x10
    29c4:	0c000000 	jal	0 <func_8007C680>
    29c8:	24050014 	li	a1,20
    29cc:	100003db 	b	393c <L8007FFA8+0x14>
    29d0:	8fbf0044 	lw	ra,68(sp)

000029d4 <L8007F054>:
    29d4:	3c0f0000 	lui	t7,0x0
    29d8:	25ef0000 	addiu	t7,t7,0
    29dc:	24180002 	li	t8,2
    29e0:	ae6f0004 	sw	t7,4(s3)
    29e4:	ae780000 	sw	t8,0(s3)
    29e8:	02402025 	move	a0,s2
    29ec:	02802825 	move	a1,s4
    29f0:	0c000000 	jal	0 <func_8007C680>
    29f4:	24060008 	li	a2,8
    29f8:	00152c00 	sll	a1,s5,0x10
    29fc:	00052c03 	sra	a1,a1,0x10
    2a00:	02402025 	move	a0,s2
    2a04:	02803025 	move	a2,s4
    2a08:	0c000000 	jal	0 <func_8007C680>
    2a0c:	2407003c 	li	a3,60
    2a10:	02602025 	move	a0,s3
    2a14:	0c000000 	jal	0 <func_8007C680>
    2a18:	24050001 	li	a1,1
    2a1c:	00022400 	sll	a0,v0,0x10
    2a20:	00408825 	move	s1,v0
    2a24:	00042403 	sra	a0,a0,0x10
    2a28:	0c000000 	jal	0 <func_8007C680>
    2a2c:	24057d00 	li	a1,32000
    2a30:	00118400 	sll	s0,s1,0x10
    2a34:	00108403 	sra	s0,s0,0x10
    2a38:	00102400 	sll	a0,s0,0x10
    2a3c:	00042403 	sra	a0,a0,0x10
    2a40:	24050002 	li	a1,2
    2a44:	00003025 	move	a2,zero
    2a48:	00003825 	move	a3,zero
    2a4c:	0c000000 	jal	0 <func_8007C680>
    2a50:	afa00010 	sw	zero,16(sp)
    2a54:	00102400 	sll	a0,s0,0x10
    2a58:	00042403 	sra	a0,a0,0x10
    2a5c:	0c000000 	jal	0 <func_8007C680>
    2a60:	2405000a 	li	a1,10
    2a64:	100003b5 	b	393c <L8007FFA8+0x14>
    2a68:	8fbf0044 	lw	ra,68(sp)

00002a6c <L8007F0EC>:
    2a6c:	3c190000 	lui	t9,0x0
    2a70:	27390000 	addiu	t9,t9,0
    2a74:	240d0006 	li	t5,6
    2a78:	ae790004 	sw	t9,4(s3)
    2a7c:	ae6d0000 	sw	t5,0(s3)
    2a80:	02402025 	move	a0,s2
    2a84:	00002825 	move	a1,zero
    2a88:	0c000000 	jal	0 <func_8007C680>
    2a8c:	24060008 	li	a2,8
    2a90:	00152c00 	sll	a1,s5,0x10
    2a94:	00052c03 	sra	a1,a1,0x10
    2a98:	02402025 	move	a0,s2
    2a9c:	02803025 	move	a2,s4
    2aa0:	0c000000 	jal	0 <func_8007C680>
    2aa4:	2407003c 	li	a3,60
    2aa8:	8e8e067c 	lw	t6,1660(s4)
    2aac:	3c012000 	lui	at,0x2000
    2ab0:	2418005a 	li	t8,90
    2ab4:	01c17825 	or	t7,t6,at
    2ab8:	ae8f067c 	sw	t7,1660(s4)
    2abc:	a6980110 	sh	t8,272(s4)
    2ac0:	02602025 	move	a0,s3
    2ac4:	0c000000 	jal	0 <func_8007C680>
    2ac8:	24050001 	li	a1,1
    2acc:	00022400 	sll	a0,v0,0x10
    2ad0:	00408825 	move	s1,v0
    2ad4:	00042403 	sra	a0,a0,0x10
    2ad8:	0c000000 	jal	0 <func_8007C680>
    2adc:	24057d00 	li	a1,32000
    2ae0:	00118400 	sll	s0,s1,0x10
    2ae4:	00108403 	sra	s0,s0,0x10
    2ae8:	00102400 	sll	a0,s0,0x10
    2aec:	00042403 	sra	a0,a0,0x10
    2af0:	24050002 	li	a1,2
    2af4:	00003025 	move	a2,zero
    2af8:	00003825 	move	a3,zero
    2afc:	0c000000 	jal	0 <func_8007C680>
    2b00:	afa00010 	sw	zero,16(sp)
    2b04:	00102400 	sll	a0,s0,0x10
    2b08:	00042403 	sra	a0,a0,0x10
    2b0c:	0c000000 	jal	0 <func_8007C680>
    2b10:	2405000a 	li	a1,10
    2b14:	10000389 	b	393c <L8007FFA8+0x14>
    2b18:	8fbf0044 	lw	ra,68(sp)

00002b1c <L8007F19C>:
    2b1c:	3c190000 	lui	t9,0x0
    2b20:	27390000 	addiu	t9,t9,0
    2b24:	240d0007 	li	t5,7
    2b28:	ae790004 	sw	t9,4(s3)
    2b2c:	ae6d0000 	sw	t5,0(s3)
    2b30:	02402025 	move	a0,s2
    2b34:	00002825 	move	a1,zero
    2b38:	0c000000 	jal	0 <func_8007C680>
    2b3c:	24060008 	li	a2,8
    2b40:	00152c00 	sll	a1,s5,0x10
    2b44:	00052c03 	sra	a1,a1,0x10
    2b48:	02402025 	move	a0,s2
    2b4c:	02803025 	move	a2,s4
    2b50:	0c000000 	jal	0 <func_8007C680>
    2b54:	2407003c 	li	a3,60
    2b58:	02602025 	move	a0,s3
    2b5c:	0c000000 	jal	0 <func_8007C680>
    2b60:	24050001 	li	a1,1
    2b64:	00022400 	sll	a0,v0,0x10
    2b68:	00408825 	move	s1,v0
    2b6c:	00042403 	sra	a0,a0,0x10
    2b70:	0c000000 	jal	0 <func_8007C680>
    2b74:	24057d00 	li	a1,32000
    2b78:	00118400 	sll	s0,s1,0x10
    2b7c:	00108403 	sra	s0,s0,0x10
    2b80:	00102400 	sll	a0,s0,0x10
    2b84:	00042403 	sra	a0,a0,0x10
    2b88:	24050001 	li	a1,1
    2b8c:	00003025 	move	a2,zero
    2b90:	2407000a 	li	a3,10
    2b94:	0c000000 	jal	0 <func_8007C680>
    2b98:	afa00010 	sw	zero,16(sp)
    2b9c:	00102400 	sll	a0,s0,0x10
    2ba0:	00042403 	sra	a0,a0,0x10
    2ba4:	0c000000 	jal	0 <func_8007C680>
    2ba8:	24050014 	li	a1,20
    2bac:	10000363 	b	393c <L8007FFA8+0x14>
    2bb0:	8fbf0044 	lw	ra,68(sp)

00002bb4 <L8007F234>:
    2bb4:	3c0e0000 	lui	t6,0x0
    2bb8:	25ce0000 	addiu	t6,t6,0
    2bbc:	240f0005 	li	t7,5
    2bc0:	ae6e0004 	sw	t6,4(s3)
    2bc4:	ae6f0000 	sw	t7,0(s3)
    2bc8:	24183ffc 	li	t8,16380
    2bcc:	a698083c 	sh	t8,2108(s4)
    2bd0:	8683083c 	lh	v1,2108(s4)
    2bd4:	00152c00 	sll	a1,s5,0x10
    2bd8:	00052c03 	sra	a1,a1,0x10
    2bdc:	02402025 	move	a0,s2
    2be0:	02803025 	move	a2,s4
    2be4:	2407003c 	li	a3,60
    2be8:	a6830032 	sh	v1,50(s4)
    2bec:	0c000000 	jal	0 <func_8007C680>
    2bf0:	a68300b6 	sh	v1,182(s4)
    2bf4:	02402025 	move	a0,s2
    2bf8:	00002825 	move	a1,zero
    2bfc:	0c000000 	jal	0 <func_8007C680>
    2c00:	24060008 	li	a2,8
    2c04:	1000034d 	b	393c <L8007FFA8+0x14>
    2c08:	8fbf0044 	lw	ra,68(sp)

00002c0c <L8007F28C>:
    2c0c:	3c190000 	lui	t9,0x0
    2c10:	27390000 	addiu	t9,t9,0
    2c14:	240d0003 	li	t5,3
    2c18:	ae790004 	sw	t9,4(s3)
    2c1c:	ae6d0000 	sw	t5,0(s3)
    2c20:	02402025 	move	a0,s2
    2c24:	02802825 	move	a1,s4
    2c28:	0c000000 	jal	0 <func_8007C680>
    2c2c:	24060008 	li	a2,8
    2c30:	00152c00 	sll	a1,s5,0x10
    2c34:	00052c03 	sra	a1,a1,0x10
    2c38:	02402025 	move	a0,s2
    2c3c:	02803025 	move	a2,s4
    2c40:	0c000000 	jal	0 <func_8007C680>
    2c44:	2407003c 	li	a3,60
    2c48:	1000033c 	b	393c <L8007FFA8+0x14>
    2c4c:	8fbf0044 	lw	ra,68(sp)

00002c50 <L8007F2D0>:
    2c50:	02402025 	move	a0,s2
    2c54:	00002825 	move	a1,zero
    2c58:	0c000000 	jal	0 <func_8007C680>
    2c5c:	24060008 	li	a2,8
    2c60:	3c030000 	lui	v1,0x0
    2c64:	24630000 	addiu	v1,v1,0
    2c68:	240e0050 	li	t6,80
    2c6c:	a46e002c 	sh	t6,44(v1)
    2c70:	240f0004 	li	t7,4
    2c74:	00152c00 	sll	a1,s5,0x10
    2c78:	ae630004 	sw	v1,4(s3)
    2c7c:	ae6f0000 	sw	t7,0(s3)
    2c80:	00052c03 	sra	a1,a1,0x10
    2c84:	02402025 	move	a0,s2
    2c88:	02803025 	move	a2,s4
    2c8c:	0c000000 	jal	0 <func_8007C680>
    2c90:	2407003c 	li	a3,60
    2c94:	10000329 	b	393c <L8007FFA8+0x14>
    2c98:	8fbf0044 	lw	ra,68(sp)

00002c9c <L8007F31C>:
    2c9c:	3c180000 	lui	t8,0x0
    2ca0:	27180000 	addiu	t8,t8,0
    2ca4:	24190006 	li	t9,6
    2ca8:	00152c00 	sll	a1,s5,0x10
    2cac:	ae780004 	sw	t8,4(s3)
    2cb0:	ae790000 	sw	t9,0(s3)
    2cb4:	00052c03 	sra	a1,a1,0x10
    2cb8:	02402025 	move	a0,s2
    2cbc:	02803025 	move	a2,s4
    2cc0:	0c000000 	jal	0 <func_8007C680>
    2cc4:	2407003c 	li	a3,60
    2cc8:	8fa400dc 	lw	a0,220(sp)
    2ccc:	0c000000 	jal	0 <func_8007C680>
    2cd0:	00002825 	move	a1,zero
    2cd4:	10000319 	b	393c <L8007FFA8+0x14>
    2cd8:	8fbf0044 	lw	ra,68(sp)

00002cdc <L8007F35C>:
    2cdc:	3c0d0000 	lui	t5,0x0
    2ce0:	25ad0000 	addiu	t5,t5,0
    2ce4:	240e0005 	li	t6,5
    2ce8:	ae6d0004 	sw	t5,4(s3)
    2cec:	ae6e0000 	sw	t6,0(s3)
    2cf0:	02402025 	move	a0,s2
    2cf4:	00002825 	move	a1,zero
    2cf8:	0c000000 	jal	0 <func_8007C680>
    2cfc:	24060008 	li	a2,8
    2d00:	8fa400dc 	lw	a0,220(sp)
    2d04:	0c000000 	jal	0 <func_8007C680>
    2d08:	00002825 	move	a1,zero
    2d0c:	00152c00 	sll	a1,s5,0x10
    2d10:	00052c03 	sra	a1,a1,0x10
    2d14:	02402025 	move	a0,s2
    2d18:	02803025 	move	a2,s4
    2d1c:	0c000000 	jal	0 <func_8007C680>
    2d20:	2407003c 	li	a3,60
    2d24:	10000305 	b	393c <L8007FFA8+0x14>
    2d28:	8fbf0044 	lw	ra,68(sp)

00002d2c <L8007F3AC>:
    2d2c:	3c0f0000 	lui	t7,0x0
    2d30:	25ef0000 	addiu	t7,t7,0
    2d34:	24180004 	li	t8,4
    2d38:	ae6f0004 	sw	t7,4(s3)
    2d3c:	ae780000 	sw	t8,0(s3)
    2d40:	02402025 	move	a0,s2
    2d44:	00002825 	move	a1,zero
    2d48:	0c000000 	jal	0 <func_8007C680>
    2d4c:	24060008 	li	a2,8
    2d50:	8fa400dc 	lw	a0,220(sp)
    2d54:	0c000000 	jal	0 <func_8007C680>
    2d58:	00002825 	move	a1,zero
    2d5c:	00152c00 	sll	a1,s5,0x10
    2d60:	00052c03 	sra	a1,a1,0x10
    2d64:	02402025 	move	a0,s2
    2d68:	02803025 	move	a2,s4
    2d6c:	0c000000 	jal	0 <func_8007C680>
    2d70:	2407003c 	li	a3,60
    2d74:	100002f1 	b	393c <L8007FFA8+0x14>
    2d78:	8fbf0044 	lw	ra,68(sp)

00002d7c <L8007F3FC>:
    2d7c:	3c190000 	lui	t9,0x0
    2d80:	27390000 	addiu	t9,t9,0
    2d84:	240d0002 	li	t5,2
    2d88:	ae790004 	sw	t9,4(s3)
    2d8c:	ae6d0000 	sw	t5,0(s3)
    2d90:	02402025 	move	a0,s2
    2d94:	00002825 	move	a1,zero
    2d98:	0c000000 	jal	0 <func_8007C680>
    2d9c:	24060008 	li	a2,8
    2da0:	8fa400dc 	lw	a0,220(sp)
    2da4:	0c000000 	jal	0 <func_8007C680>
    2da8:	00002825 	move	a1,zero
    2dac:	00152c00 	sll	a1,s5,0x10
    2db0:	00052c03 	sra	a1,a1,0x10
    2db4:	02402025 	move	a0,s2
    2db8:	02803025 	move	a2,s4
    2dbc:	0c000000 	jal	0 <func_8007C680>
    2dc0:	2407003c 	li	a3,60
    2dc4:	100002dd 	b	393c <L8007FFA8+0x14>
    2dc8:	8fbf0044 	lw	ra,68(sp)

00002dcc <L8007F44C>:
    2dcc:	3c0e0000 	lui	t6,0x0
    2dd0:	25ce0000 	addiu	t6,t6,0
    2dd4:	240f0008 	li	t7,8
    2dd8:	ae6e0004 	sw	t6,4(s3)
    2ddc:	ae6f0000 	sw	t7,0(s3)
    2de0:	02402025 	move	a0,s2
    2de4:	02802825 	move	a1,s4
    2de8:	0c000000 	jal	0 <func_8007C680>
    2dec:	24060008 	li	a2,8
    2df0:	8fa400dc 	lw	a0,220(sp)
    2df4:	0c000000 	jal	0 <func_8007C680>
    2df8:	00002825 	move	a1,zero
    2dfc:	00152c00 	sll	a1,s5,0x10
    2e00:	00052c03 	sra	a1,a1,0x10
    2e04:	02402025 	move	a0,s2
    2e08:	02803025 	move	a2,s4
    2e0c:	0c000000 	jal	0 <func_8007C680>
    2e10:	2407003c 	li	a3,60
    2e14:	100002c9 	b	393c <L8007FFA8+0x14>
    2e18:	8fbf0044 	lw	ra,68(sp)

00002e1c <L8007F49C>:
    2e1c:	3c180000 	lui	t8,0x0
    2e20:	27180000 	addiu	t8,t8,0
    2e24:	24190003 	li	t9,3
    2e28:	ae780004 	sw	t8,4(s3)
    2e2c:	ae790000 	sw	t9,0(s3)
    2e30:	02402025 	move	a0,s2
    2e34:	02802825 	move	a1,s4
    2e38:	0c000000 	jal	0 <func_8007C680>
    2e3c:	24060008 	li	a2,8
    2e40:	8fa400dc 	lw	a0,220(sp)
    2e44:	0c000000 	jal	0 <func_8007C680>
    2e48:	00002825 	move	a1,zero
    2e4c:	00152c00 	sll	a1,s5,0x10
    2e50:	00052c03 	sra	a1,a1,0x10
    2e54:	02402025 	move	a0,s2
    2e58:	02803025 	move	a2,s4
    2e5c:	0c000000 	jal	0 <func_8007C680>
    2e60:	2407003c 	li	a3,60
    2e64:	100002b5 	b	393c <L8007FFA8+0x14>
    2e68:	8fbf0044 	lw	ra,68(sp)

00002e6c <L8007F4EC>:
    2e6c:	87ad00fa 	lh	t5,250(sp)
    2e70:	3c0e0000 	lui	t6,0x0
    2e74:	25ce0000 	addiu	t6,t6,0
    2e78:	240f0001 	li	t7,1
    2e7c:	00152c00 	sll	a1,s5,0x10
    2e80:	a68d0110 	sh	t5,272(s4)
    2e84:	ae6e0004 	sw	t6,4(s3)
    2e88:	ae6f0000 	sw	t7,0(s3)
    2e8c:	00052c03 	sra	a1,a1,0x10
    2e90:	02402025 	move	a0,s2
    2e94:	02803025 	move	a2,s4
    2e98:	0c000000 	jal	0 <func_8007C680>
    2e9c:	2407003c 	li	a3,60
    2ea0:	02602025 	move	a0,s3
    2ea4:	0c000000 	jal	0 <func_8007C680>
    2ea8:	24050003 	li	a1,3
    2eac:	00022400 	sll	a0,v0,0x10
    2eb0:	00408825 	move	s1,v0
    2eb4:	00042403 	sra	a0,a0,0x10
    2eb8:	0c000000 	jal	0 <func_8007C680>
    2ebc:	24052ee0 	li	a1,12000
    2ec0:	00118400 	sll	s0,s1,0x10
    2ec4:	00108403 	sra	s0,s0,0x10
    2ec8:	00102400 	sll	a0,s0,0x10
    2ecc:	00042403 	sra	a0,a0,0x10
    2ed0:	00002825 	move	a1,zero
    2ed4:	24060001 	li	a2,1
    2ed8:	24070064 	li	a3,100
    2edc:	0c000000 	jal	0 <func_8007C680>
    2ee0:	afa00010 	sw	zero,16(sp)
    2ee4:	87a500fa 	lh	a1,250(sp)
    2ee8:	00102400 	sll	a0,s0,0x10
    2eec:	00042403 	sra	a0,a0,0x10
    2ef0:	24a5ffb0 	addiu	a1,a1,-80
    2ef4:	00052c00 	sll	a1,a1,0x10
    2ef8:	0c000000 	jal	0 <func_8007C680>
    2efc:	00052c03 	sra	a1,a1,0x10
    2f00:	1000028e 	b	393c <L8007FFA8+0x14>
    2f04:	8fbf0044 	lw	ra,68(sp)

00002f08 <L8007F588>:
    2f08:	3c01c170 	lui	at,0xc170
    2f0c:	44818000 	mtc1	at,$f16
    2f10:	c684002c 	lwc1	$f4,44(s4)
    2f14:	4610203c 	c.lt.s	$f4,$f16
    2f18:	00000000 	nop
    2f1c:	45000004 	bc1f	2f30 <L8007F588+0x28>
    2f20:	3c180000 	lui	t8,0x0
    2f24:	27180000 	addiu	t8,t8,0
    2f28:	10000004 	b	2f3c <L8007F588+0x34>
    2f2c:	ae780004 	sw	t8,4(s3)
    2f30:	3c190000 	lui	t9,0x0
    2f34:	27390000 	addiu	t9,t9,0
    2f38:	ae790004 	sw	t9,4(s3)
    2f3c:	240d0001 	li	t5,1
    2f40:	00152c00 	sll	a1,s5,0x10
    2f44:	ae6d0000 	sw	t5,0(s3)
    2f48:	00052c03 	sra	a1,a1,0x10
    2f4c:	02402025 	move	a0,s2
    2f50:	02803025 	move	a2,s4
    2f54:	0c000000 	jal	0 <func_8007C680>
    2f58:	2407003c 	li	a3,60
    2f5c:	02402025 	move	a0,s2
    2f60:	02802825 	move	a1,s4
    2f64:	0c000000 	jal	0 <func_8007C680>
    2f68:	24060001 	li	a2,1
    2f6c:	02602025 	move	a0,s3
    2f70:	0c000000 	jal	0 <func_8007C680>
    2f74:	24050003 	li	a1,3
    2f78:	00022400 	sll	a0,v0,0x10
    2f7c:	00408825 	move	s1,v0
    2f80:	00042403 	sra	a0,a0,0x10
    2f84:	0c000000 	jal	0 <func_8007C680>
    2f88:	24052ee0 	li	a1,12000
    2f8c:	00118400 	sll	s0,s1,0x10
    2f90:	00108403 	sra	s0,s0,0x10
    2f94:	00102400 	sll	a0,s0,0x10
    2f98:	00042403 	sra	a0,a0,0x10
    2f9c:	00002825 	move	a1,zero
    2fa0:	24060001 	li	a2,1
    2fa4:	2407000a 	li	a3,10
    2fa8:	0c000000 	jal	0 <func_8007C680>
    2fac:	afa00010 	sw	zero,16(sp)
    2fb0:	87a500fa 	lh	a1,250(sp)
    2fb4:	00102400 	sll	a0,s0,0x10
    2fb8:	00042403 	sra	a0,a0,0x10
    2fbc:	24a5fff6 	addiu	a1,a1,-10
    2fc0:	00052c00 	sll	a1,a1,0x10
    2fc4:	0c000000 	jal	0 <func_8007C680>
    2fc8:	00052c03 	sra	a1,a1,0x10
    2fcc:	1000025b 	b	393c <L8007FFA8+0x14>
    2fd0:	8fbf0044 	lw	ra,68(sp)

00002fd4 <L8007F654>:
    2fd4:	3c0e0000 	lui	t6,0x0
    2fd8:	25ce0000 	addiu	t6,t6,0
    2fdc:	240f0001 	li	t7,1
    2fe0:	ae6e0004 	sw	t6,4(s3)
    2fe4:	ae6f0000 	sw	t7,0(s3)
    2fe8:	02402025 	move	a0,s2
    2fec:	00002825 	move	a1,zero
    2ff0:	0c000000 	jal	0 <func_8007C680>
    2ff4:	24060008 	li	a2,8
    2ff8:	00152c00 	sll	a1,s5,0x10
    2ffc:	00052c03 	sra	a1,a1,0x10
    3000:	02402025 	move	a0,s2
    3004:	02803025 	move	a2,s4
    3008:	0c000000 	jal	0 <func_8007C680>
    300c:	2407003c 	li	a3,60
    3010:	1000024a 	b	393c <L8007FFA8+0x14>
    3014:	8fbf0044 	lw	ra,68(sp)

00003018 <L8007F698>:
    3018:	02402025 	move	a0,s2
    301c:	00002825 	move	a1,zero
    3020:	0c000000 	jal	0 <func_8007C680>
    3024:	24060008 	li	a2,8
    3028:	87b800fa 	lh	t8,250(sp)
    302c:	3c030000 	lui	v1,0x0
    3030:	24630000 	addiu	v1,v1,0
    3034:	2719fffb 	addiu	t9,t8,-5
    3038:	a479002c 	sh	t9,44(v1)
    303c:	240d0002 	li	t5,2
    3040:	00152c00 	sll	a1,s5,0x10
    3044:	ae630004 	sw	v1,4(s3)
    3048:	ae6d0000 	sw	t5,0(s3)
    304c:	00052c03 	sra	a1,a1,0x10
    3050:	02402025 	move	a0,s2
    3054:	02803025 	move	a2,s4
    3058:	0c000000 	jal	0 <func_8007C680>
    305c:	2407003c 	li	a3,60
    3060:	10000236 	b	393c <L8007FFA8+0x14>
    3064:	8fbf0044 	lw	ra,68(sp)

00003068 <L8007F6E8>:
    3068:	02402025 	move	a0,s2
    306c:	00002825 	move	a1,zero
    3070:	0c000000 	jal	0 <func_8007C680>
    3074:	24060008 	li	a2,8
    3078:	87ae00fa 	lh	t6,250(sp)
    307c:	3c030000 	lui	v1,0x0
    3080:	24630000 	addiu	v1,v1,0
    3084:	25cffff6 	addiu	t7,t6,-10
    3088:	a46f002c 	sh	t7,44(v1)
    308c:	24180002 	li	t8,2
    3090:	00152c00 	sll	a1,s5,0x10
    3094:	ae630004 	sw	v1,4(s3)
    3098:	ae780000 	sw	t8,0(s3)
    309c:	00052c03 	sra	a1,a1,0x10
    30a0:	02402025 	move	a0,s2
    30a4:	02803025 	move	a2,s4
    30a8:	0c000000 	jal	0 <func_8007C680>
    30ac:	2407003c 	li	a3,60
    30b0:	10000222 	b	393c <L8007FFA8+0x14>
    30b4:	8fbf0044 	lw	ra,68(sp)
    30b8:	3c190000 	lui	t9,0x0
    30bc:	27390000 	addiu	t9,t9,0
    30c0:	240d0003 	li	t5,3
    30c4:	00152c00 	sll	a1,s5,0x10
    30c8:	ae790004 	sw	t9,4(s3)
    30cc:	ae6d0000 	sw	t5,0(s3)
    30d0:	00052c03 	sra	a1,a1,0x10
    30d4:	02402025 	move	a0,s2
    30d8:	02803025 	move	a2,s4
    30dc:	0c000000 	jal	0 <func_8007C680>
    30e0:	2407003c 	li	a3,60
    30e4:	10000215 	b	393c <L8007FFA8+0x14>
    30e8:	8fbf0044 	lw	ra,68(sp)
    30ec:	3c0e0000 	lui	t6,0x0
    30f0:	25ce0000 	addiu	t6,t6,0
    30f4:	240f0003 	li	t7,3
    30f8:	00152c00 	sll	a1,s5,0x10
    30fc:	ae6e0004 	sw	t6,4(s3)
    3100:	ae6f0000 	sw	t7,0(s3)
    3104:	00052c03 	sra	a1,a1,0x10
    3108:	02402025 	move	a0,s2
    310c:	02803025 	move	a2,s4
    3110:	0c000000 	jal	0 <func_8007C680>
    3114:	2407003c 	li	a3,60
    3118:	10000208 	b	393c <L8007FFA8+0x14>
    311c:	8fbf0044 	lw	ra,68(sp)
    3120:	27a400a0 	addiu	a0,sp,160
    3124:	0c000000 	jal	0 <func_8007C680>
    3128:	02202825 	move	a1,s1
    312c:	27a4008c 	addiu	a0,sp,140
    3130:	0c000000 	jal	0 <func_8007C680>
    3134:	02802825 	move	a1,s4
    3138:	c7a600a4 	lwc1	$f6,164(sp)
    313c:	c7a80090 	lwc1	$f8,144(sp)
    3140:	3c014120 	lui	at,0x4120
    3144:	44815000 	mtc1	at,$f10
    3148:	46083481 	sub.s	$f18,$f6,$f8
    314c:	87b800fa 	lh	t8,250(sp)
    3150:	3c0142b4 	lui	at,0x42b4
    3154:	44818000 	mtc1	at,$f16
    3158:	460a9103 	div.s	$f4,$f18,$f10
    315c:	33190001 	andi	t9,t8,0x1
    3160:	001968c0 	sll	t5,t9,0x3
    3164:	01b96821 	addu	t5,t5,t9
    3168:	000d6880 	sll	t5,t5,0x2
    316c:	01b96823 	subu	t5,t5,t9
    3170:	3c0e0000 	lui	t6,0x0
    3174:	8faf00dc 	lw	t7,220(sp)
    3178:	25ce0000 	addiu	t6,t6,0
    317c:	000d68c0 	sll	t5,t5,0x3
    3180:	01ae1821 	addu	v1,t5,t6
    3184:	240d0007 	li	t5,7
    3188:	00152c00 	sll	a1,s5,0x10
    318c:	00052c03 	sra	a1,a1,0x10
    3190:	02402025 	move	a0,s2
    3194:	02803025 	move	a2,s4
    3198:	2407003c 	li	a3,60
    319c:	46102180 	add.s	$f6,$f4,$f16
    31a0:	e4660014 	swc1	$f6,20(v1)
    31a4:	8df90050 	lw	t9,80(t7)
    31a8:	ac7900d8 	sw	t9,216(v1)
    31ac:	8df80054 	lw	t8,84(t7)
    31b0:	ac7800dc 	sw	t8,220(v1)
    31b4:	8df90058 	lw	t9,88(t7)
    31b8:	ac7900e0 	sw	t9,224(v1)
    31bc:	ae630004 	sw	v1,4(s3)
    31c0:	0c000000 	jal	0 <func_8007C680>
    31c4:	ae6d0000 	sw	t5,0(s3)
    31c8:	100001dc 	b	393c <L8007FFA8+0x14>
    31cc:	8fbf0044 	lw	ra,68(sp)
    31d0:	3c100000 	lui	s0,0x0
    31d4:	26100000 	addiu	s0,s0,0
    31d8:	8e0e0000 	lw	t6,0(s0)
    31dc:	8e43009c 	lw	v1,156(s2)
    31e0:	006e1023 	subu	v0,v1,t6
    31e4:	28410e11 	slti	at,v0,3601
    31e8:	10200002 	beqz	at,31f4 <L8007F6E8+0x18c>
    31ec:	2841f1f0 	slti	at,v0,-3600
    31f0:	10200006 	beqz	at,320c <L8007F6E8+0x1a4>
    31f4:	3c0f0000 	lui	t7,0x0
    31f8:	25ef0000 	addiu	t7,t7,0
    31fc:	24180005 	li	t8,5
    3200:	ae6f0004 	sw	t7,4(s3)
    3204:	10000016 	b	3260 <L8007F6E8+0x1f8>
    3208:	ae780000 	sw	t8,0(s3)
    320c:	30790001 	andi	t9,v1,0x1
    3210:	1320000e 	beqz	t9,324c <L8007F6E8+0x1e4>
    3214:	3c020000 	lui	v0,0x0
    3218:	24420000 	addiu	v0,v0,0
    321c:	c4480014 	lwc1	$f8,20(v0)
    3220:	c44a0020 	lwc1	$f10,32(v0)
    3224:	c450003c 	lwc1	$f16,60(v0)
    3228:	844d0006 	lh	t5,6(v0)
    322c:	46004487 	neg.s	$f18,$f8
    3230:	46005107 	neg.s	$f4,$f10
    3234:	46008187 	neg.s	$f6,$f16
    3238:	000d7023 	negu	t6,t5
    323c:	a44e0006 	sh	t6,6(v0)
    3240:	e4520014 	swc1	$f18,20(v0)
    3244:	e4440020 	swc1	$f4,32(v0)
    3248:	e446003c 	swc1	$f6,60(v0)
    324c:	3c020000 	lui	v0,0x0
    3250:	24420000 	addiu	v0,v0,0
    3254:	240f0003 	li	t7,3
    3258:	ae620004 	sw	v0,4(s3)
    325c:	ae6f0000 	sw	t7,0(s3)
    3260:	00152c00 	sll	a1,s5,0x10
    3264:	00052c03 	sra	a1,a1,0x10
    3268:	02402025 	move	a0,s2
    326c:	02803025 	move	a2,s4
    3270:	0c000000 	jal	0 <func_8007C680>
    3274:	2407003c 	li	a3,60
    3278:	8e58009c 	lw	t8,156(s2)
    327c:	100001ae 	b	3938 <L8007FFA8+0x10>
    3280:	ae180000 	sw	t8,0(s0)
    3284:	2419ff9d 	li	t9,-99
    3288:	a6790160 	sh	t9,352(s3)
    328c:	0c000000 	jal	0 <func_8007C680>
    3290:	02402025 	move	a0,s2
    3294:	10400009 	beqz	v0,32bc <L8007F6E8+0x254>
    3298:	00152c00 	sll	a1,s5,0x10
    329c:	00052c03 	sra	a1,a1,0x10
    32a0:	02402025 	move	a0,s2
    32a4:	02803025 	move	a2,s4
    32a8:	0c000000 	jal	0 <func_8007C680>
    32ac:	24070038 	li	a3,56
    32b0:	240d000c 	li	t5,12
    32b4:	100001a0 	b	3938 <L8007FFA8+0x10>
    32b8:	a66d012c 	sh	t5,300(s3)
    32bc:	00152c00 	sll	a1,s5,0x10
    32c0:	00052c03 	sra	a1,a1,0x10
    32c4:	02402025 	move	a0,s2
    32c8:	0c000000 	jal	0 <func_8007C680>
    32cc:	00003025 	move	a2,zero
    32d0:	00152c00 	sll	a1,s5,0x10
    32d4:	00052c03 	sra	a1,a1,0x10
    32d8:	02402025 	move	a0,s2
    32dc:	0c000000 	jal	0 <func_8007C680>
    32e0:	24060022 	li	a2,34
    32e4:	10000195 	b	393c <L8007FFA8+0x14>
    32e8:	8fbf0044 	lw	ra,68(sp)
    32ec:	0c000000 	jal	0 <func_8007C680>
    32f0:	02402025 	move	a0,s2
    32f4:	10400044 	beqz	v0,3408 <L8007F6E8+0x3a0>
    32f8:	3c0e0000 	lui	t6,0x0
    32fc:	8dce0004 	lw	t6,4(t6)
    3300:	11c00004 	beqz	t6,3314 <L8007F6E8+0x2ac>
    3304:	3c0142c8 	lui	at,0x42c8
    3308:	44816000 	mtc1	at,$f12
    330c:	10000004 	b	3320 <L8007F6E8+0x2b8>
    3310:	00000000 	nop
    3314:	3c0142f0 	lui	at,0x42f0
    3318:	44816000 	mtc1	at,$f12
    331c:	00000000 	nop
    3320:	3c110000 	lui	s1,0x0
    3324:	26310000 	addiu	s1,s1,0
    3328:	e62c004c 	swc1	$f12,76(s1)
    332c:	e62c0024 	swc1	$f12,36(s1)
    3330:	8e8f067c 	lw	t7,1660(s4)
    3334:	000fc100 	sll	t8,t7,0x4
    3338:	07030005 	bgezl	t8,3350 <L8007F6E8+0x2e8>
    333c:	27b000a0 	addiu	s0,sp,160
    3340:	44804000 	mtc1	zero,$f8
    3344:	00000000 	nop
    3348:	e6280068 	swc1	$f8,104(s1)
    334c:	27b000a0 	addiu	s0,sp,160
    3350:	02002025 	move	a0,s0
    3354:	0c000000 	jal	0 <func_8007C680>
    3358:	02802825 	move	a1,s4
    335c:	8fa600dc 	lw	a2,220(sp)
    3360:	27a400d0 	addiu	a0,sp,208
    3364:	02002825 	move	a1,s0
    3368:	0c000000 	jal	0 <func_8007C680>
    336c:	24c60050 	addiu	a2,a2,80
    3370:	87b900d6 	lh	t9,214(sp)
    3374:	87ad00ae 	lh	t5,174(sp)
    3378:	3c040000 	lui	a0,0x0
    337c:	24840000 	addiu	a0,a0,0
    3380:	032d7023 	subu	t6,t9,t5
    3384:	a7ae00d6 	sh	t6,214(sp)
    3388:	0c000000 	jal	0 <func_8007C680>
    338c:	27a500d0 	addiu	a1,sp,208
    3390:	8fa600dc 	lw	a2,220(sp)
    3394:	27a400d0 	addiu	a0,sp,208
    3398:	02002825 	move	a1,s0
    339c:	0c000000 	jal	0 <func_8007C680>
    33a0:	24c6005c 	addiu	a2,a2,92
    33a4:	87af00d6 	lh	t7,214(sp)
    33a8:	87b800ae 	lh	t8,174(sp)
    33ac:	3c040000 	lui	a0,0x0
    33b0:	24840000 	addiu	a0,a0,0
    33b4:	01f8c823 	subu	t9,t7,t8
    33b8:	a7b900d6 	sh	t9,214(sp)
    33bc:	0c000000 	jal	0 <func_8007C680>
    33c0:	27a500d0 	addiu	a1,sp,208
    33c4:	8fad00dc 	lw	t5,220(sp)
    33c8:	87ae00fa 	lh	t6,250(sp)
    33cc:	24180004 	li	t8,4
    33d0:	c5b200fc 	lwc1	$f18,252(t5)
    33d4:	25cfffce 	addiu	t7,t6,-50
    33d8:	a62f007c 	sh	t7,124(s1)
    33dc:	00152c00 	sll	a1,s5,0x10
    33e0:	e6320080 	swc1	$f18,128(s1)
    33e4:	ae710004 	sw	s1,4(s3)
    33e8:	ae780000 	sw	t8,0(s3)
    33ec:	00052c03 	sra	a1,a1,0x10
    33f0:	02402025 	move	a0,s2
    33f4:	02803025 	move	a2,s4
    33f8:	0c000000 	jal	0 <func_8007C680>
    33fc:	2407003c 	li	a3,60
    3400:	1000014e 	b	393c <L8007FFA8+0x14>
    3404:	8fbf0044 	lw	ra,68(sp)
    3408:	87b900fa 	lh	t9,250(sp)
    340c:	8fae00dc 	lw	t6,220(sp)
    3410:	3c030000 	lui	v1,0x0
    3414:	24630000 	addiu	v1,v1,0
    3418:	272dffff 	addiu	t5,t9,-1
    341c:	a46d002c 	sh	t5,44(v1)
    3420:	c5ca00fc 	lwc1	$f10,252(t6)
    3424:	8faf00dc 	lw	t7,220(sp)
    3428:	27a20064 	addiu	v0,sp,100
    342c:	e46a0008 	swc1	$f10,8(v1)
    3430:	8df90050 	lw	t9,80(t7)
    3434:	3c0d0000 	lui	t5,0x0
    3438:	25ad0000 	addiu	t5,t5,0
    343c:	ac590000 	sw	t9,0(v0)
    3440:	8df80054 	lw	t8,84(t7)
    3444:	00152c00 	sll	a1,s5,0x10
    3448:	00052c03 	sra	a1,a1,0x10
    344c:	ac580004 	sw	t8,4(v0)
    3450:	8df90058 	lw	t9,88(t7)
    3454:	8c4f0000 	lw	t7,0(v0)
    3458:	3c180000 	lui	t8,0x0
    345c:	ac590008 	sw	t9,8(v0)
    3460:	adaf0000 	sw	t7,0(t5)
    3464:	8c4e0004 	lw	t6,4(v0)
    3468:	27180000 	addiu	t8,t8,0
    346c:	02402025 	move	a0,s2
    3470:	adae0004 	sw	t6,4(t5)
    3474:	8c4f0008 	lw	t7,8(v0)
    3478:	02803025 	move	a2,s4
    347c:	2407003c 	li	a3,60
    3480:	adaf0008 	sw	t7,8(t5)
    3484:	8c4d0000 	lw	t5,0(v0)
    3488:	af0d0000 	sw	t5,0(t8)
    348c:	8c590004 	lw	t9,4(v0)
    3490:	af190004 	sw	t9,4(t8)
    3494:	8c4d0008 	lw	t5,8(v0)
    3498:	3c190000 	lui	t9,0x0
    349c:	27390000 	addiu	t9,t9,0
    34a0:	af0d0008 	sw	t5,8(t8)
    34a4:	8fae00dc 	lw	t6,220(sp)
    34a8:	8dd8005c 	lw	t8,92(t6)
    34ac:	ac580000 	sw	t8,0(v0)
    34b0:	8dcf0060 	lw	t7,96(t6)
    34b4:	ac4f0004 	sw	t7,4(v0)
    34b8:	8dd80064 	lw	t8,100(t6)
    34bc:	8c4e0000 	lw	t6,0(v0)
    34c0:	3c0f0000 	lui	t7,0x0
    34c4:	ac580008 	sw	t8,8(v0)
    34c8:	af2e0000 	sw	t6,0(t9)
    34cc:	8c4d0004 	lw	t5,4(v0)
    34d0:	25ef0000 	addiu	t7,t7,0
    34d4:	af2d0004 	sw	t5,4(t9)
    34d8:	8c4e0008 	lw	t6,8(v0)
    34dc:	240d0002 	li	t5,2
    34e0:	af2e0008 	sw	t6,8(t9)
    34e4:	8c590000 	lw	t9,0(v0)
    34e8:	adf90000 	sw	t9,0(t7)
    34ec:	8c580004 	lw	t8,4(v0)
    34f0:	adf80004 	sw	t8,4(t7)
    34f4:	8c590008 	lw	t9,8(v0)
    34f8:	adf90008 	sw	t9,8(t7)
    34fc:	ae630004 	sw	v1,4(s3)
    3500:	0c000000 	jal	0 <func_8007C680>
    3504:	ae6d0000 	sw	t5,0(s3)
    3508:	1000010c 	b	393c <L8007FFA8+0x14>
    350c:	8fbf0044 	lw	ra,68(sp)
    3510:	8e5800ec 	lw	t8,236(s2)
    3514:	3c0e0000 	lui	t6,0x0
    3518:	25ce0000 	addiu	t6,t6,0
    351c:	add80000 	sw	t8,0(t6)
    3520:	8e4f00f0 	lw	t7,240(s2)
    3524:	3c190000 	lui	t9,0x0
    3528:	27390000 	addiu	t9,t9,0
    352c:	adcf0004 	sw	t7,4(t6)
    3530:	8e5800f4 	lw	t8,244(s2)
    3534:	3c020000 	lui	v0,0x0
    3538:	24420000 	addiu	v0,v0,0
    353c:	add80008 	sw	t8,8(t6)
    3540:	8e4e00e0 	lw	t6,224(s2)
    3544:	240f0001 	li	t7,1
    3548:	00152c00 	sll	a1,s5,0x10
    354c:	af2e0000 	sw	t6,0(t9)
    3550:	8e4d00e4 	lw	t5,228(s2)
    3554:	00052c03 	sra	a1,a1,0x10
    3558:	02402025 	move	a0,s2
    355c:	af2d0004 	sw	t5,4(t9)
    3560:	8e4e00e8 	lw	t6,232(s2)
    3564:	02803025 	move	a2,s4
    3568:	2407003c 	li	a3,60
    356c:	af2e0008 	sw	t6,8(t9)
    3570:	c64400d0 	lwc1	$f4,208(s2)
    3574:	e4440008 	swc1	$f4,8(v0)
    3578:	ae620004 	sw	v0,4(s3)
    357c:	0c000000 	jal	0 <func_8007C680>
    3580:	ae6f0000 	sw	t7,0(s3)
    3584:	100000ed 	b	393c <L8007FFA8+0x14>
    3588:	8fbf0044 	lw	ra,68(sp)
    358c:	3c180000 	lui	t8,0x0
    3590:	27180000 	addiu	t8,t8,0
    3594:	24190005 	li	t9,5
    3598:	00152c00 	sll	a1,s5,0x10
    359c:	ae780004 	sw	t8,4(s3)
    35a0:	ae790000 	sw	t9,0(s3)
    35a4:	00052c03 	sra	a1,a1,0x10
    35a8:	02402025 	move	a0,s2
    35ac:	02803025 	move	a2,s4
    35b0:	0c000000 	jal	0 <func_8007C680>
    35b4:	2407003c 	li	a3,60
    35b8:	100000e0 	b	393c <L8007FFA8+0x14>
    35bc:	8fbf0044 	lw	ra,68(sp)
    35c0:	3c0d0000 	lui	t5,0x0
    35c4:	25ad0000 	addiu	t5,t5,0
    35c8:	240e0005 	li	t6,5
    35cc:	00152c00 	sll	a1,s5,0x10
    35d0:	ae6d0004 	sw	t5,4(s3)
    35d4:	ae6e0000 	sw	t6,0(s3)
    35d8:	00052c03 	sra	a1,a1,0x10
    35dc:	02402025 	move	a0,s2
    35e0:	02803025 	move	a2,s4
    35e4:	0c000000 	jal	0 <func_8007C680>
    35e8:	2407003c 	li	a3,60
    35ec:	100000d3 	b	393c <L8007FFA8+0x14>
    35f0:	8fbf0044 	lw	ra,68(sp)

000035f4 <L8007FC74>:
    35f4:	3c0f0000 	lui	t7,0x0
    35f8:	25ef0000 	addiu	t7,t7,0
    35fc:	24180004 	li	t8,4
    3600:	00152c00 	sll	a1,s5,0x10
    3604:	ae6f0004 	sw	t7,4(s3)
    3608:	ae780000 	sw	t8,0(s3)
    360c:	00052c03 	sra	a1,a1,0x10
    3610:	02402025 	move	a0,s2
    3614:	02803025 	move	a2,s4
    3618:	0c000000 	jal	0 <func_8007C680>
    361c:	2407003c 	li	a3,60
    3620:	100000c6 	b	393c <L8007FFA8+0x14>
    3624:	8fbf0044 	lw	ra,68(sp)

00003628 <L8007FCA8>:
    3628:	3c190000 	lui	t9,0x0
    362c:	27390000 	addiu	t9,t9,0
    3630:	240d0005 	li	t5,5
    3634:	00152c00 	sll	a1,s5,0x10
    3638:	ae790004 	sw	t9,4(s3)
    363c:	ae6d0000 	sw	t5,0(s3)
    3640:	00052c03 	sra	a1,a1,0x10
    3644:	02402025 	move	a0,s2
    3648:	02803025 	move	a2,s4
    364c:	0c000000 	jal	0 <func_8007C680>
    3650:	2407003c 	li	a3,60
    3654:	100000b9 	b	393c <L8007FFA8+0x14>
    3658:	8fbf0044 	lw	ra,68(sp)

0000365c <L8007FCDC>:
    365c:	3c0e0000 	lui	t6,0x0
    3660:	25ce0000 	addiu	t6,t6,0
    3664:	240f0005 	li	t7,5
    3668:	00152c00 	sll	a1,s5,0x10
    366c:	ae6e0004 	sw	t6,4(s3)
    3670:	ae6f0000 	sw	t7,0(s3)
    3674:	00052c03 	sra	a1,a1,0x10
    3678:	02402025 	move	a0,s2
    367c:	02803025 	move	a2,s4
    3680:	0c000000 	jal	0 <func_8007C680>
    3684:	2407003c 	li	a3,60
    3688:	100000ac 	b	393c <L8007FFA8+0x14>
    368c:	8fbf0044 	lw	ra,68(sp)

00003690 <L8007FD10>:
    3690:	3c180000 	lui	t8,0x0
    3694:	27180000 	addiu	t8,t8,0
    3698:	24190004 	li	t9,4
    369c:	00152c00 	sll	a1,s5,0x10
    36a0:	ae780004 	sw	t8,4(s3)
    36a4:	ae790000 	sw	t9,0(s3)
    36a8:	00052c03 	sra	a1,a1,0x10
    36ac:	02402025 	move	a0,s2
    36b0:	02803025 	move	a2,s4
    36b4:	0c000000 	jal	0 <func_8007C680>
    36b8:	2407003c 	li	a3,60
    36bc:	1000009f 	b	393c <L8007FFA8+0x14>
    36c0:	8fbf0044 	lw	ra,68(sp)

000036c4 <L8007FD44>:
    36c4:	3c0d0000 	lui	t5,0x0
    36c8:	25ad0000 	addiu	t5,t5,0
    36cc:	240e0004 	li	t6,4
    36d0:	00152c00 	sll	a1,s5,0x10
    36d4:	ae6d0004 	sw	t5,4(s3)
    36d8:	ae6e0000 	sw	t6,0(s3)
    36dc:	00052c03 	sra	a1,a1,0x10
    36e0:	02402025 	move	a0,s2
    36e4:	02803025 	move	a2,s4
    36e8:	0c000000 	jal	0 <func_8007C680>
    36ec:	2407003c 	li	a3,60
    36f0:	10000092 	b	393c <L8007FFA8+0x14>
    36f4:	8fbf0044 	lw	ra,68(sp)

000036f8 <L8007FD78>:
    36f8:	3c020000 	lui	v0,0x0
    36fc:	24420000 	addiu	v0,v0,0
    3700:	844f00a4 	lh	t7,164(v0)
    3704:	84580004 	lh	t8,4(v0)
    3708:	844d007c 	lh	t5,124(v0)
    370c:	00152c00 	sll	a1,s5,0x10
    3710:	01f8c821 	addu	t9,t7,t8
    3714:	844f002c 	lh	t7,44(v0)
    3718:	032d7021 	addu	t6,t9,t5
    371c:	84590054 	lh	t9,84(v0)
    3720:	01cfc021 	addu	t8,t6,t7
    3724:	240e0005 	li	t6,5
    3728:	03196821 	addu	t5,t8,t9
    372c:	a66d0160 	sh	t5,352(s3)
    3730:	ae620004 	sw	v0,4(s3)
    3734:	ae6e0000 	sw	t6,0(s3)
    3738:	00052c03 	sra	a1,a1,0x10
    373c:	02402025 	move	a0,s2
    3740:	02803025 	move	a2,s4
    3744:	0c000000 	jal	0 <func_8007C680>
    3748:	2407003c 	li	a3,60
    374c:	1000007b 	b	393c <L8007FFA8+0x14>
    3750:	8fbf0044 	lw	ra,68(sp)
    3754:	8e5900ec 	lw	t9,236(s2)
    3758:	3c0f0000 	lui	t7,0x0
    375c:	25ef0000 	addiu	t7,t7,0
    3760:	adf90000 	sw	t9,0(t7)
    3764:	8e5800f0 	lw	t8,240(s2)
    3768:	3c0d0000 	lui	t5,0x0
    376c:	25ad0000 	addiu	t5,t5,0
    3770:	adf80004 	sw	t8,4(t7)
    3774:	8e5900f4 	lw	t9,244(s2)
    3778:	3c020000 	lui	v0,0x0
    377c:	24420000 	addiu	v0,v0,0
    3780:	adf90008 	sw	t9,8(t7)
    3784:	8e4f00e0 	lw	t7,224(s2)
    3788:	3c180000 	lui	t8,0x0
    378c:	adaf0000 	sw	t7,0(t5)
    3790:	8e4e00e4 	lw	t6,228(s2)
    3794:	adae0004 	sw	t6,4(t5)
    3798:	8e4f00e8 	lw	t7,232(s2)
    379c:	adaf0008 	sw	t7,8(t5)
    37a0:	c65000d0 	lwc1	$f16,208(s2)
    37a4:	e4500008 	swc1	$f16,8(v0)
    37a8:	8f180004 	lw	t8,4(t8)
    37ac:	17000006 	bnez	t8,37c8 <L8007FD78+0xd0>
    37b0:	3c014270 	lui	at,0x4270
    37b4:	44813000 	mtc1	at,$f6
    37b8:	3c014250 	lui	at,0x4250
    37bc:	44814000 	mtc1	at,$f8
    37c0:	e446003c 	swc1	$f6,60(v0)
    37c4:	e4480048 	swc1	$f8,72(v0)
    37c8:	24190003 	li	t9,3
    37cc:	00152c00 	sll	a1,s5,0x10
    37d0:	ae620004 	sw	v0,4(s3)
    37d4:	ae790000 	sw	t9,0(s3)
    37d8:	00052c03 	sra	a1,a1,0x10
    37dc:	02402025 	move	a0,s2
    37e0:	02803025 	move	a2,s4
    37e4:	0c000000 	jal	0 <func_8007C680>
    37e8:	2407003c 	li	a3,60
    37ec:	10000053 	b	393c <L8007FFA8+0x14>
    37f0:	8fbf0044 	lw	ra,68(sp)
    37f4:	8e4f00ec 	lw	t7,236(s2)
    37f8:	3c0d0000 	lui	t5,0x0
    37fc:	25ad0000 	addiu	t5,t5,0
    3800:	adaf0000 	sw	t7,0(t5)
    3804:	8e4e00f0 	lw	t6,240(s2)
    3808:	3c180000 	lui	t8,0x0
    380c:	27180000 	addiu	t8,t8,0
    3810:	adae0004 	sw	t6,4(t5)
    3814:	8e4f00f4 	lw	t7,244(s2)
    3818:	3c020000 	lui	v0,0x0
    381c:	24420000 	addiu	v0,v0,0
    3820:	adaf0008 	sw	t7,8(t5)
    3824:	8e4d00e0 	lw	t5,224(s2)
    3828:	240e0002 	li	t6,2
    382c:	00152c00 	sll	a1,s5,0x10
    3830:	af0d0000 	sw	t5,0(t8)
    3834:	8e5900e4 	lw	t9,228(s2)
    3838:	00052c03 	sra	a1,a1,0x10
    383c:	02402025 	move	a0,s2
    3840:	af190004 	sw	t9,4(t8)
    3844:	8e4d00e8 	lw	t5,232(s2)
    3848:	02803025 	move	a2,s4
    384c:	2407003c 	li	a3,60
    3850:	af0d0008 	sw	t5,8(t8)
    3854:	c65200d0 	lwc1	$f18,208(s2)
    3858:	e4520008 	swc1	$f18,8(v0)
    385c:	ae620004 	sw	v0,4(s3)
    3860:	0c000000 	jal	0 <func_8007C680>
    3864:	ae6e0000 	sw	t6,0(s3)
    3868:	10000034 	b	393c <L8007FFA8+0x14>
    386c:	8fbf0044 	lw	ra,68(sp)
    3870:	8e5900ec 	lw	t9,236(s2)
    3874:	3c0f0000 	lui	t7,0x0
    3878:	25ef0000 	addiu	t7,t7,0
    387c:	adf90000 	sw	t9,0(t7)
    3880:	8e5800f0 	lw	t8,240(s2)
    3884:	3c0d0000 	lui	t5,0x0
    3888:	25ad0000 	addiu	t5,t5,0
    388c:	adf80004 	sw	t8,4(t7)
    3890:	8e5900f4 	lw	t9,244(s2)
    3894:	3c020000 	lui	v0,0x0
    3898:	24420000 	addiu	v0,v0,0
    389c:	adf90008 	sw	t9,8(t7)
    38a0:	8e4f00e0 	lw	t7,224(s2)
    38a4:	24180003 	li	t8,3
    38a8:	00152c00 	sll	a1,s5,0x10
    38ac:	adaf0000 	sw	t7,0(t5)
    38b0:	8e4e00e4 	lw	t6,228(s2)
    38b4:	00052c03 	sra	a1,a1,0x10
    38b8:	02402025 	move	a0,s2
    38bc:	adae0004 	sw	t6,4(t5)
    38c0:	8e4f00e8 	lw	t7,232(s2)
    38c4:	02803025 	move	a2,s4
    38c8:	2407003c 	li	a3,60
    38cc:	adaf0008 	sw	t7,8(t5)
    38d0:	c64a00d0 	lwc1	$f10,208(s2)
    38d4:	e44a0008 	swc1	$f10,8(v0)
    38d8:	ae620004 	sw	v0,4(s3)
    38dc:	0c000000 	jal	0 <func_8007C680>
    38e0:	ae780000 	sw	t8,0(s3)
    38e4:	10000015 	b	393c <L8007FFA8+0x14>
    38e8:	8fbf0044 	lw	ra,68(sp)
    38ec:	3c020000 	lui	v0,0x0
    38f0:	24420000 	addiu	v0,v0,0
    38f4:	2419000a 	li	t9,10
    38f8:	a459002c 	sh	t9,44(v0)
    38fc:	240d0003 	li	t5,3
    3900:	00152c00 	sll	a1,s5,0x10
    3904:	ae620004 	sw	v0,4(s3)
    3908:	ae6d0000 	sw	t5,0(s3)
    390c:	00052c03 	sra	a1,a1,0x10
    3910:	02402025 	move	a0,s2
    3914:	02203025 	move	a2,s1
    3918:	0c000000 	jal	0 <func_8007C680>
    391c:	2407003c 	li	a3,60
    3920:	10000006 	b	393c <L8007FFA8+0x14>
    3924:	8fbf0044 	lw	ra,68(sp)

00003928 <L8007FFA8>:
    3928:	3c040000 	lui	a0,0x0
    392c:	24840000 	addiu	a0,a0,0
    3930:	0c000000 	jal	0 <func_8007C680>
    3934:	00c02825 	move	a1,a2
    3938:	8fbf0044 	lw	ra,68(sp)
    393c:	8fb0002c 	lw	s0,44(sp)
    3940:	8fb10030 	lw	s1,48(sp)
    3944:	8fb20034 	lw	s2,52(sp)
    3948:	8fb30038 	lw	s3,56(sp)
    394c:	8fb4003c 	lw	s4,60(sp)
    3950:	8fb50040 	lw	s5,64(sp)
    3954:	27bd00e8 	addiu	sp,sp,232
    3958:	03e00008 	jr	ra
    395c:	00001025 	move	v0,zero

00003960 <func_8007FFE0>:
    3960:	afa60008 	sw	a2,8(sp)
    3964:	00063400 	sll	a2,a2,0x10
    3968:	afa50004 	sw	a1,4(sp)
    396c:	00052c00 	sll	a1,a1,0x10
    3970:	00063403 	sra	a2,a2,0x10
    3974:	00052c03 	sra	a1,a1,0x10
    3978:	00067080 	sll	t6,a2,0x2
    397c:	008e3821 	addu	a3,a0,t6
    3980:	0005c080 	sll	t8,a1,0x2
    3984:	8cef0790 	lw	t7,1936(a3)
    3988:	0098c821 	addu	t9,a0,t8
    398c:	8f280790 	lw	t0,1936(t9)
    3990:	85e2014e 	lh	v0,334(t7)
    3994:	a5060162 	sh	a2,354(t0)
    3998:	8ce90790 	lw	t1,1936(a3)
    399c:	03e00008 	jr	ra
    39a0:	a525014e 	sh	a1,334(t1)

000039a4 <func_80080024>:
    39a4:	27bdffe0 	addiu	sp,sp,-32
    39a8:	afa50024 	sw	a1,36(sp)
    39ac:	00052c00 	sll	a1,a1,0x10
    39b0:	00052c03 	sra	a1,a1,0x10
    39b4:	00057080 	sll	t6,a1,0x2
    39b8:	afbf0014 	sw	ra,20(sp)
    39bc:	008e7821 	addu	t7,a0,t6
    39c0:	8de20790 	lw	v0,1936(t7)
    39c4:	8458014e 	lh	t8,334(v0)
    39c8:	8c47008c 	lw	a3,140(v0)
    39cc:	84460164 	lh	a2,356(v0)
    39d0:	0018c880 	sll	t9,t8,0x2
    39d4:	00f94021 	addu	t0,a3,t9
    39d8:	8d030790 	lw	v1,1936(t0)
    39dc:	2408ffff 	li	t0,-1
    39e0:	84690162 	lh	t1,354(v1)
    39e4:	54c90006 	bnel	a2,t1,3a00 <func_80080024+0x5c>
    39e8:	844b0162 	lh	t3,354(v0)
    39ec:	844a0162 	lh	t2,354(v0)
    39f0:	a46a0162 	sh	t2,354(v1)
    39f4:	8c47008c 	lw	a3,140(v0)
    39f8:	84460164 	lh	a2,356(v0)
    39fc:	844b0162 	lh	t3,354(v0)
    3a00:	000b6080 	sll	t4,t3,0x2
    3a04:	00ec6821 	addu	t5,a3,t4
    3a08:	8da30790 	lw	v1,1936(t5)
    3a0c:	846e014e 	lh	t6,334(v1)
    3a10:	54ce0006 	bnel	a2,t6,3a2c <func_80080024+0x88>
    3a14:	849807a0 	lh	t8,1952(a0)
    3a18:	844f014e 	lh	t7,334(v0)
    3a1c:	a46f014e 	sh	t7,334(v1)
    3a20:	8c47008c 	lw	a3,140(v0)
    3a24:	84460164 	lh	a2,356(v0)
    3a28:	849807a0 	lh	t8,1952(a0)
    3a2c:	2403ffff 	li	v1,-1
    3a30:	00e02025 	move	a0,a3
    3a34:	14b80003 	bne	a1,t8,3a44 <func_80080024+0xa0>
    3a38:	00000000 	nop
    3a3c:	10000001 	b	3a44 <func_80080024+0xa0>
    3a40:	84430162 	lh	v1,354(v0)
    3a44:	a4400162 	sh	zero,354(v0)
    3a48:	84590162 	lh	t9,354(v0)
    3a4c:	a4480160 	sh	t0,352(v0)
    3a50:	00062c00 	sll	a1,a2,0x10
    3a54:	a459014e 	sh	t9,334(v0)
    3a58:	afa30018 	sw	v1,24(sp)
    3a5c:	0c000000 	jal	0 <func_8007C680>
    3a60:	00052c03 	sra	a1,a1,0x10
    3a64:	8fbf0014 	lw	ra,20(sp)
    3a68:	8fa20018 	lw	v0,24(sp)
    3a6c:	27bd0020 	addiu	sp,sp,32
    3a70:	03e00008 	jr	ra
    3a74:	00000000 	nop

00003a78 <func_800800F8>:
    3a78:	27bdffb8 	addiu	sp,sp,-72
    3a7c:	afb10020 	sw	s1,32(sp)
    3a80:	87b1005a 	lh	s1,90(sp)
    3a84:	afb70038 	sw	s7,56(sp)
    3a88:	afb50030 	sw	s5,48(sp)
    3a8c:	afb4002c 	sw	s4,44(sp)
    3a90:	0005a400 	sll	s4,a1,0x10
    3a94:	0006ac00 	sll	s5,a2,0x10
    3a98:	2417ffff 	li	s7,-1
    3a9c:	afb30028 	sw	s3,40(sp)
    3aa0:	00809825 	move	s3,a0
    3aa4:	0015ac03 	sra	s5,s5,0x10
    3aa8:	0014a403 	sra	s4,s4,0x10
    3aac:	afbf003c 	sw	ra,60(sp)
    3ab0:	afb60034 	sw	s6,52(sp)
    3ab4:	afb20024 	sw	s2,36(sp)
    3ab8:	afb0001c 	sw	s0,28(sp)
    3abc:	afa5004c 	sw	a1,76(sp)
    3ac0:	afa60050 	sw	a2,80(sp)
    3ac4:	16370002 	bne	s1,s7,3ad0 <func_800800F8+0x58>
    3ac8:	afa70054 	sw	a3,84(sp)
    3acc:	849107a0 	lh	s1,1952(a0)
    3ad0:	0c000000 	jal	0 <func_8007C680>
    3ad4:	02602025 	move	a0,s3
    3ad8:	14570007 	bne	v0,s7,3af8 <func_800800F8+0x80>
    3adc:	a7a20042 	sh	v0,66(sp)
    3ae0:	3c040000 	lui	a0,0x0
    3ae4:	24840000 	addiu	a0,a0,0
    3ae8:	0c000000 	jal	0 <func_8007C680>
    3aec:	02802825 	move	a1,s4
    3af0:	10000094 	b	3d44 <func_800800F8+0x2cc>
    3af4:	2402ffff 	li	v0,-1
    3af8:	00117080 	sll	t6,s1,0x2
    3afc:	026e7821 	addu	t7,s3,t6
    3b00:	8df80790 	lw	t8,1936(t7)
    3b04:	24100007 	li	s0,7
    3b08:	02602025 	move	a0,s3
    3b0c:	8712014e 	lh	s2,334(t8)
    3b10:	87a60042 	lh	a2,66(sp)
    3b14:	1a400005 	blez	s2,3b2c <func_800800F8+0xb4>
    3b18:	00122c00 	sll	a1,s2,0x10
    3b1c:	0c000000 	jal	0 <func_8007C680>
    3b20:	00052c03 	sra	a1,a1,0x10
    3b24:	10000003 	b	3b34 <func_800800F8+0xbc>
    3b28:	24100001 	li	s0,1
    3b2c:	0c000000 	jal	0 <func_8007C680>
    3b30:	24040002 	li	a0,2
    3b34:	00113400 	sll	a2,s1,0x10
    3b38:	00063403 	sra	a2,a2,0x10
    3b3c:	02602025 	move	a0,s3
    3b40:	0c000000 	jal	0 <func_8007C680>
    3b44:	87a50042 	lh	a1,66(sp)
    3b48:	87b90042 	lh	t9,66(sp)
    3b4c:	00112c00 	sll	a1,s1,0x10
    3b50:	24060003 	li	a2,3
    3b54:	00194080 	sll	t0,t9,0x2
    3b58:	0268b021 	addu	s6,s3,t0
    3b5c:	8ec30790 	lw	v1,1936(s6)
    3b60:	00052c03 	sra	a1,a1,0x10
    3b64:	02602025 	move	a0,s3
    3b68:	a4750160 	sh	s5,352(v1)
    3b6c:	8fa90054 	lw	t1,84(sp)
    3b70:	ac6900a8 	sw	t1,168(v1)
    3b74:	8e6b00ec 	lw	t3,236(s3)
    3b78:	ac6b0050 	sw	t3,80(v1)
    3b7c:	8e6a00f0 	lw	t2,240(s3)
    3b80:	ac6a0054 	sw	t2,84(v1)
    3b84:	8e6b00f4 	lw	t3,244(s3)
    3b88:	ac6b0058 	sw	t3,88(v1)
    3b8c:	8e6d00e0 	lw	t5,224(s3)
    3b90:	ac6d005c 	sw	t5,92(v1)
    3b94:	8e6c00e4 	lw	t4,228(s3)
    3b98:	ac6c0060 	sw	t4,96(v1)
    3b9c:	8e6d00e8 	lw	t5,232(s3)
    3ba0:	ac6d0064 	sw	t5,100(v1)
    3ba4:	c66400d0 	lwc1	$f4,208(s3)
    3ba8:	a4740168 	sh	s4,360(v1)
    3bac:	16200007 	bnez	s1,3bcc <func_800800F8+0x154>
    3bb0:	e46400fc 	swc1	$f4,252(v1)
    3bb4:	00112c00 	sll	a1,s1,0x10
    3bb8:	00052c03 	sra	a1,a1,0x10
    3bbc:	0c000000 	jal	0 <func_8007C680>
    3bc0:	02602025 	move	a0,s3
    3bc4:	10000004 	b	3bd8 <func_800800F8+0x160>
    3bc8:	00143400 	sll	a2,s4,0x10
    3bcc:	0c000000 	jal	0 <func_8007C680>
    3bd0:	24060001 	li	a2,1
    3bd4:	00143400 	sll	a2,s4,0x10
    3bd8:	00063403 	sra	a2,a2,0x10
    3bdc:	02602025 	move	a0,s3
    3be0:	87a50042 	lh	a1,66(sp)
    3be4:	8fa70054 	lw	a3,84(sp)
    3be8:	0c000000 	jal	0 <func_8007C680>
    3bec:	afb50010 	sw	s5,16(sp)
    3bf0:	00103400 	sll	a2,s0,0x10
    3bf4:	00063403 	sra	a2,a2,0x10
    3bf8:	02602025 	move	a0,s3
    3bfc:	0c000000 	jal	0 <func_8007C680>
    3c00:	87a50042 	lh	a1,66(sp)
    3c04:	8ece0790 	lw	t6,1936(s6)
    3c08:	87b20042 	lh	s2,66(sp)
    3c0c:	24151392 	li	s5,5010
    3c10:	85d0014e 	lh	s0,334(t6)
    3c14:	24140064 	li	s4,100
    3c18:	1a000049 	blez	s0,3d40 <func_800800F8+0x2c8>
    3c1c:	00107880 	sll	t7,s0,0x2
    3c20:	026f8821 	addu	s1,s3,t7
    3c24:	8e380790 	lw	t8,1936(s1)
    3c28:	8ed90790 	lw	t9,1936(s6)
    3c2c:	87060168 	lh	a2,360(t8)
    3c30:	87270168 	lh	a3,360(t9)
    3c34:	00d4001a 	div	zero,a2,s4
    3c38:	00004012 	mflo	t0
    3c3c:	16800002 	bnez	s4,3c48 <func_800800F8+0x1d0>
    3c40:	00000000 	nop
    3c44:	0007000d 	break	0x7
    3c48:	2401ffff 	li	at,-1
    3c4c:	16810004 	bne	s4,at,3c60 <func_800800F8+0x1e8>
    3c50:	3c018000 	lui	at,0x8000
    3c54:	14c10002 	bne	a2,at,3c60 <func_800800F8+0x1e8>
    3c58:	00000000 	nop
    3c5c:	0006000d 	break	0x6
    3c60:	00f4001a 	div	zero,a3,s4
    3c64:	16800002 	bnez	s4,3c70 <func_800800F8+0x1f8>
    3c68:	00000000 	nop
    3c6c:	0007000d 	break	0x7
    3c70:	2401ffff 	li	at,-1
    3c74:	16810004 	bne	s4,at,3c88 <func_800800F8+0x210>
    3c78:	3c018000 	lui	at,0x8000
    3c7c:	14e10002 	bne	a3,at,3c88 <func_800800F8+0x210>
    3c80:	00000000 	nop
    3c84:	0006000d 	break	0x6
    3c88:	00004812 	mflo	t1
    3c8c:	0109082a 	slt	at,t0,t1
    3c90:	50200024 	beqzl	at,3d24 <func_800800F8+0x2ac>
    3c94:	00109400 	sll	s2,s0,0x10
    3c98:	3c040000 	lui	a0,0x0
    3c9c:	24840000 	addiu	a0,a0,0
    3ca0:	0c000000 	jal	0 <func_8007C680>
    3ca4:	02002825 	move	a1,s0
    3ca8:	8e2a0790 	lw	t2,1936(s1)
    3cac:	00126080 	sll	t4,s2,0x2
    3cb0:	00102c00 	sll	a1,s0,0x10
    3cb4:	854b0168 	lh	t3,360(t2)
    3cb8:	026c8821 	addu	s1,s3,t4
    3cbc:	00052c03 	sra	a1,a1,0x10
    3cc0:	12ab0011 	beq	s5,t3,3d08 <func_800800F8+0x290>
    3cc4:	02602025 	move	a0,s3
    3cc8:	00102c00 	sll	a1,s0,0x10
    3ccc:	00052c03 	sra	a1,a1,0x10
    3cd0:	0c000000 	jal	0 <func_8007C680>
    3cd4:	02602025 	move	a0,s3
    3cd8:	00026c00 	sll	t5,v0,0x10
    3cdc:	000d7403 	sra	t6,t5,0x10
    3ce0:	00028400 	sll	s0,v0,0x10
    3ce4:	12ee0012 	beq	s7,t6,3d30 <func_800800F8+0x2b8>
    3ce8:	00108403 	sra	s0,s0,0x10
    3cec:	00102c00 	sll	a1,s0,0x10
    3cf0:	00052c03 	sra	a1,a1,0x10
    3cf4:	02602025 	move	a0,s3
    3cf8:	0c000000 	jal	0 <func_8007C680>
    3cfc:	24060007 	li	a2,7
    3d00:	1000000c 	b	3d34 <func_800800F8+0x2bc>
    3d04:	8e390790 	lw	t9,1936(s1)
    3d08:	00109400 	sll	s2,s0,0x10
    3d0c:	0c000000 	jal	0 <func_8007C680>
    3d10:	00129403 	sra	s2,s2,0x10
    3d14:	00127880 	sll	t7,s2,0x2
    3d18:	10000005 	b	3d30 <func_800800F8+0x2b8>
    3d1c:	026f8821 	addu	s1,s3,t7
    3d20:	00109400 	sll	s2,s0,0x10
    3d24:	00129403 	sra	s2,s2,0x10
    3d28:	0012c080 	sll	t8,s2,0x2
    3d2c:	02788821 	addu	s1,s3,t8
    3d30:	8e390790 	lw	t9,1936(s1)
    3d34:	8730014e 	lh	s0,334(t9)
    3d38:	5e00ffb9 	bgtzl	s0,3c20 <func_800800F8+0x1a8>
    3d3c:	00107880 	sll	t7,s0,0x2
    3d40:	87a20042 	lh	v0,66(sp)
    3d44:	8fbf003c 	lw	ra,60(sp)
    3d48:	8fb0001c 	lw	s0,28(sp)
    3d4c:	8fb10020 	lw	s1,32(sp)
    3d50:	8fb20024 	lw	s2,36(sp)
    3d54:	8fb30028 	lw	s3,40(sp)
    3d58:	8fb4002c 	lw	s4,44(sp)
    3d5c:	8fb50030 	lw	s5,48(sp)
    3d60:	8fb60034 	lw	s6,52(sp)
    3d64:	8fb70038 	lw	s7,56(sp)
    3d68:	03e00008 	jr	ra
    3d6c:	27bd0048 	addiu	sp,sp,72

00003d70 <func_800803F0>:
    3d70:	27bdffe0 	addiu	sp,sp,-32
    3d74:	afa50024 	sw	a1,36(sp)
    3d78:	00052c00 	sll	a1,a1,0x10
    3d7c:	00052c03 	sra	a1,a1,0x10
    3d80:	2401ffff 	li	at,-1
    3d84:	14a10002 	bne	a1,at,3d90 <func_800803F0+0x20>
    3d88:	afbf0014 	sw	ra,20(sp)
    3d8c:	848507a0 	lh	a1,1952(a0)
    3d90:	00057080 	sll	t6,a1,0x2
    3d94:	008e1821 	addu	v1,a0,t6
    3d98:	8c620790 	lw	v0,1936(v1)
    3d9c:	3c040000 	lui	a0,0x0
    3da0:	24840000 	addiu	a0,a0,0
    3da4:	50400012 	beqzl	v0,3df0 <func_800803F0+0x80>
    3da8:	8fbf0014 	lw	ra,20(sp)
    3dac:	84460160 	lh	a2,352(v0)
    3db0:	84470162 	lh	a3,354(v0)
    3db4:	a7a50026 	sh	a1,38(sp)
    3db8:	0c000000 	jal	0 <func_8007C680>
    3dbc:	afa3001c 	sw	v1,28(sp)
    3dc0:	8fa3001c 	lw	v1,28(sp)
    3dc4:	24011392 	li	at,5010
    3dc8:	87a50026 	lh	a1,38(sp)
    3dcc:	8c620790 	lw	v0,1936(v1)
    3dd0:	24180005 	li	t8,5
    3dd4:	844f0168 	lh	t7,360(v0)
    3dd8:	55e10004 	bnel	t7,at,3dec <func_800803F0+0x7c>
    3ddc:	a4400160 	sh	zero,352(v0)
    3de0:	10000002 	b	3dec <func_800803F0+0x7c>
    3de4:	a4580160 	sh	t8,352(v0)
    3de8:	a4400160 	sh	zero,352(v0)
    3dec:	8fbf0014 	lw	ra,20(sp)
    3df0:	27bd0020 	addiu	sp,sp,32
    3df4:	00a01025 	move	v0,a1
    3df8:	03e00008 	jr	ra
    3dfc:	00000000 	nop

00003e00 <func_80080480>:
    3e00:	3c0e0000 	lui	t6,0x0
    3e04:	85ce0000 	lh	t6,0(t6)
    3e08:	27bdffc0 	addiu	sp,sp,-64
    3e0c:	afb10020 	sw	s1,32(sp)
    3e10:	afb0001c 	sw	s0,28(sp)
    3e14:	00a08025 	move	s0,a1
    3e18:	00808825 	move	s1,a0
    3e1c:	11c00006 	beqz	t6,3e38 <func_80080480+0x38>
    3e20:	afbf0024 	sw	ra,36(sp)
    3e24:	3c040000 	lui	a0,0x0
    3e28:	0c000000 	jal	0 <func_8007C680>
    3e2c:	24840000 	addiu	a0,a0,0
    3e30:	1000007d 	b	4028 <L800805B0+0xf8>
    3e34:	2402ffff 	li	v0,-1
    3e38:	2408ffff 	li	t0,-1
    3e3c:	3c010000 	lui	at,0x0
    3e40:	a4280000 	sh	t0,0(at)
    3e44:	8e260790 	lw	a2,1936(s1)
    3e48:	24010014 	li	at,20
    3e4c:	3c040000 	lui	a0,0x0
    3e50:	84cf0144 	lh	t7,324(a2)
    3e54:	24840000 	addiu	a0,a0,0
    3e58:	55e10009 	bnel	t7,at,3e80 <func_80080480+0x80>
    3e5c:	84c2014e 	lh	v0,334(a2)
    3e60:	0c000000 	jal	0 <func_8007C680>
    3e64:	afa6003c 	sw	a2,60(sp)
    3e68:	8fa4003c 	lw	a0,60(sp)
    3e6c:	0c000000 	jal	0 <func_8007C680>
    3e70:	00002825 	move	a1,zero
    3e74:	8fa6003c 	lw	a2,60(sp)
    3e78:	2408ffff 	li	t0,-1
    3e7c:	84c2014e 	lh	v0,334(a2)
    3e80:	01003825 	move	a3,t0
    3e84:	2403002b 	li	v1,43
    3e88:	10400016 	beqz	v0,3ee4 <func_80080480+0xe4>
    3e8c:	0002c080 	sll	t8,v0,0x2
    3e90:	0238c821 	addu	t9,s1,t8
    3e94:	8f260790 	lw	a2,1936(t9)
    3e98:	50c00013 	beqzl	a2,3ee8 <func_80080480+0xe8>
    3e9c:	920c0002 	lbu	t4,2(s0)
    3ea0:	84c90142 	lh	t1,322(a2)
    3ea4:	50690006 	beql	v1,t1,3ec0 <func_80080480+0xc0>
    3ea8:	8cca00a8 	lw	t2,168(a2)
    3eac:	54e8000e 	bnel	a3,t0,3ee8 <func_80080480+0xe8>
    3eb0:	920c0002 	lbu	t4,2(s0)
    3eb4:	10000009 	b	3edc <func_80080480+0xdc>
    3eb8:	84c2014e 	lh	v0,334(a2)
    3ebc:	8cca00a8 	lw	t2,168(a2)
    3ec0:	920b0002 	lbu	t3,2(s0)
    3ec4:	91420002 	lbu	v0,2(t2)
    3ec8:	004b082a 	slt	at,v0,t3
    3ecc:	54200006 	bnezl	at,3ee8 <func_80080480+0xe8>
    3ed0:	920c0002 	lbu	t4,2(s0)
    3ed4:	00403825 	move	a3,v0
    3ed8:	84c2014e 	lh	v0,334(a2)
    3edc:	5440ffec 	bnezl	v0,3e90 <func_80080480+0x90>
    3ee0:	0002c080 	sll	t8,v0,0x2
    3ee4:	920c0002 	lbu	t4,2(s0)
    3ee8:	afac0028 	sw	t4,40(sp)
    3eec:	14e80003 	bne	a3,t0,3efc <func_80080480+0xfc>
    3ef0:	8fad0028 	lw	t5,40(sp)
    3ef4:	10000002 	b	3f00 <func_80080480+0x100>
    3ef8:	00001025 	move	v0,zero
    3efc:	84c20164 	lh	v0,356(a2)
    3f00:	2da1000c 	sltiu	at,t5,12
    3f04:	1020000a 	beqz	at,3f30 <L800805B0>
    3f08:	000d6880 	sll	t5,t5,0x2
    3f0c:	3c010000 	lui	at,0x0
    3f10:	002d0821 	addu	at,at,t5
    3f14:	8c2d0000 	lw	t5,0(at)
    3f18:	01a00008 	jr	t5
    3f1c:	00000000 	nop

00003f20 <L800805A0>:
    3f20:	1000000f 	b	3f60 <L800805B0+0x30>
    3f24:	2403001e 	li	v1,30

00003f28 <L800805A8>:
    3f28:	1000000d 	b	3f60 <L800805B0+0x30>
    3f2c:	24030064 	li	v1,100

00003f30 <L800805B0>:
    3f30:	3c040000 	lui	a0,0x0
    3f34:	8e25009c 	lw	a1,156(s1)
    3f38:	afa70034 	sw	a3,52(sp)
    3f3c:	afa20038 	sw	v0,56(sp)
    3f40:	24840000 	addiu	a0,a0,0
    3f44:	0c000000 	jal	0 <func_8007C680>
    3f48:	8fa60028 	lw	a2,40(sp)
    3f4c:	920e0002 	lbu	t6,2(s0)
    3f50:	8fa20038 	lw	v0,56(sp)
    3f54:	8fa70034 	lw	a3,52(sp)
    3f58:	2403001e 	li	v1,30
    3f5c:	afae0028 	sw	t6,40(sp)
    3f60:	8e25009c 	lw	a1,156(s1)
    3f64:	3c040000 	lui	a0,0x0
    3f68:	24840000 	addiu	a0,a0,0
    3f6c:	afa70034 	sw	a3,52(sp)
    3f70:	afa30030 	sw	v1,48(sp)
    3f74:	afa20038 	sw	v0,56(sp)
    3f78:	0c000000 	jal	0 <func_8007C680>
    3f7c:	8fa60028 	lw	a2,40(sp)
    3f80:	8fa70034 	lw	a3,52(sp)
    3f84:	920f0002 	lbu	t7,2(s0)
    3f88:	8fa20038 	lw	v0,56(sp)
    3f8c:	8fa30030 	lw	v1,48(sp)
    3f90:	14ef0007 	bne	a3,t7,3fb0 <L800805B0+0x80>
    3f94:	3c040000 	lui	a0,0x0
    3f98:	3c040000 	lui	a0,0x0
    3f9c:	24840000 	addiu	a0,a0,0
    3fa0:	0c000000 	jal	0 <func_8007C680>
    3fa4:	86050000 	lh	a1,0(s0)
    3fa8:	1000001f 	b	4028 <L800805B0+0xf8>
    3fac:	2402ffff 	li	v0,-1
    3fb0:	86050000 	lh	a1,0(s0)
    3fb4:	afa30030 	sw	v1,48(sp)
    3fb8:	afa20038 	sw	v0,56(sp)
    3fbc:	0c000000 	jal	0 <func_8007C680>
    3fc0:	24840000 	addiu	a0,a0,0
    3fc4:	8fa30030 	lw	v1,48(sp)
    3fc8:	8fa20038 	lw	v0,56(sp)
    3fcc:	02202025 	move	a0,s1
    3fd0:	00033400 	sll	a2,v1,0x10
    3fd4:	00063403 	sra	a2,a2,0x10
    3fd8:	24051392 	li	a1,5010
    3fdc:	02003825 	move	a3,s0
    3fe0:	0c000000 	jal	0 <func_8007C680>
    3fe4:	afa20010 	sw	v0,16(sp)
    3fe8:	2408ffff 	li	t0,-1
    3fec:	14480007 	bne	v0,t0,400c <L800805B0+0xdc>
    3ff0:	00403825 	move	a3,v0
    3ff4:	3c040000 	lui	a0,0x0
    3ff8:	24840000 	addiu	a0,a0,0
    3ffc:	0c000000 	jal	0 <func_8007C680>
    4000:	86050000 	lh	a1,0(s0)
    4004:	10000008 	b	4028 <L800805B0+0xf8>
    4008:	2402ffff 	li	v0,-1
    400c:	0007c080 	sll	t8,a3,0x2
    4010:	0238c821 	addu	t9,s1,t8
    4014:	8f230790 	lw	v1,1936(t9)
    4018:	24094802 	li	t1,18434
    401c:	00e01025 	move	v0,a3
    4020:	24630128 	addiu	v1,v1,296
    4024:	ac690000 	sw	t1,0(v1)
    4028:	8fbf0024 	lw	ra,36(sp)
    402c:	8fb0001c 	lw	s0,28(sp)
    4030:	8fb10020 	lw	s1,32(sp)
    4034:	03e00008 	jr	ra
    4038:	27bd0040 	addiu	sp,sp,64

0000403c <func_800806BC>:
    403c:	27bdffe8 	addiu	sp,sp,-24
    4040:	afbf0014 	sw	ra,20(sp)
    4044:	afa40018 	sw	a0,24(sp)
    4048:	0c000000 	jal	0 <func_8007C680>
    404c:	afa60020 	sw	a2,32(sp)
    4050:	2401ffff 	li	at,-1
    4054:	10410008 	beq	v0,at,4078 <func_800806BC+0x3c>
    4058:	00402025 	move	a0,v0
    405c:	8fae0018 	lw	t6,24(sp)
    4060:	00027880 	sll	t7,v0,0x2
    4064:	8fb90020 	lw	t9,32(sp)
    4068:	01cfc021 	addu	t8,t6,t7
    406c:	8f030790 	lw	v1,1936(t8)
    4070:	24630128 	addiu	v1,v1,296
    4074:	ac790000 	sw	t9,0(v1)
    4078:	8fbf0014 	lw	ra,20(sp)
    407c:	27bd0018 	addiu	sp,sp,24
    4080:	00801025 	move	v0,a0
    4084:	03e00008 	jr	ra
    4088:	00000000 	nop

0000408c <func_8008070C>:
    408c:	3c010000 	lui	at,0x0
    4090:	03e00008 	jr	ra
    4094:	a4200000 	sh	zero,0(at)

00004098 <func_80080718>:
    4098:	240e0001 	li	t6,1
    409c:	3c010000 	lui	at,0x0
    40a0:	03e00008 	jr	ra
    40a4:	a42e0000 	sh	t6,0(at)

000040a8 <func_80080728>:
    40a8:	8c820790 	lw	v0,1936(a0)
    40ac:	2406002b 	li	a2,43
    40b0:	8443014e 	lh	v1,334(v0)
    40b4:	10600011 	beqz	v1,40fc <func_80080728+0x54>
    40b8:	00037080 	sll	t6,v1,0x2
    40bc:	008e7821 	addu	t7,a0,t6
    40c0:	8de20790 	lw	v0,1936(t7)
    40c4:	5040000e 	beqzl	v0,4100 <func_80080728+0x58>
    40c8:	00001025 	move	v0,zero
    40cc:	84580142 	lh	t8,322(v0)
    40d0:	54d8000b 	bnel	a2,t8,4100 <func_80080728+0x58>
    40d4:	00001025 	move	v0,zero
    40d8:	8c5900a8 	lw	t9,168(v0)
    40dc:	93280002 	lbu	t0,2(t9)
    40e0:	54a80004 	bnel	a1,t0,40f4 <func_80080728+0x4c>
    40e4:	8443014e 	lh	v1,334(v0)
    40e8:	03e00008 	jr	ra
    40ec:	24020001 	li	v0,1
    40f0:	8443014e 	lh	v1,334(v0)
    40f4:	5460fff1 	bnezl	v1,40bc <func_80080728+0x14>
    40f8:	00037080 	sll	t6,v1,0x2
    40fc:	00001025 	move	v0,zero
    4100:	03e00008 	jr	ra
    4104:	00000000 	nop

00004108 <func_80080788>:
    4108:	afa40000 	sw	a0,0(sp)
    410c:	03e00008 	jr	ra
    4110:	afa50004 	sw	a1,4(sp)
	...
