
build/src/overlays/actors/ovl_En_Dnt_Nomal/z_en_dnt_nomal.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDntNomal_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa50034 	sw	a1,52(sp)
      10:	848e001c 	lh	t6,28(a0)
      14:	00808025 	move	s0,a0
      18:	2401fffe 	li	at,-2
      1c:	a48e026a 	sh	t6,618(a0)
      20:	8482026a 	lh	v0,618(a0)
      24:	241900ff 	li	t9,255
      28:	2408ffff 	li	t0,-1
      2c:	04430004 	bgezl	v0,40 <EnDntNomal_Init+0x40>
      30:	8e0f0004 	lw	t7,4(s0)
      34:	a480026a 	sh	zero,618(a0)
      38:	8482026a 	lh	v0,618(a0)
      3c:	8e0f0004 	lw	t7,4(s0)
      40:	a21900ae 	sb	t9,174(s0)
      44:	a6080266 	sh	t0,614(s0)
      48:	01e1c024 	and	t8,t7,at
      4c:	14400017 	bnez	v0,ac <EnDntNomal_Init+0xac>
      50:	ae180004 	sw	t8,4(s0)
      54:	3c040000 	lui	a0,0x0
      58:	0c000000 	jal	0 <EnDntNomal_Init>
      5c:	24840000 	addiu	a0,a0,0
      60:	3c040000 	lui	a0,0x0
      64:	0c000000 	jal	0 <EnDntNomal_Init>
      68:	24840000 	addiu	a0,a0,0
      6c:	26050294 	addiu	a1,s0,660
      70:	afa50020 	sw	a1,32(sp)
      74:	0c000000 	jal	0 <EnDntNomal_Init>
      78:	8fa40034 	lw	a0,52(sp)
      7c:	3c070000 	lui	a3,0x0
      80:	8fa50020 	lw	a1,32(sp)
      84:	24e70000 	addiu	a3,a3,0
      88:	8fa40034 	lw	a0,52(sp)
      8c:	0c000000 	jal	0 <EnDntNomal_Init>
      90:	02003025 	move	a2,s0
      94:	8603008a 	lh	v1,138(s0)
      98:	24090164 	li	t1,356
      9c:	a6090266 	sh	t1,614(s0)
      a0:	a60300b6 	sh	v1,182(s0)
      a4:	10000013 	b	f4 <EnDntNomal_Init+0xf4>
      a8:	a6030032 	sh	v1,50(s0)
      ac:	3c040000 	lui	a0,0x0
      b0:	0c000000 	jal	0 <EnDntNomal_Init>
      b4:	24840000 	addiu	a0,a0,0
      b8:	3c040000 	lui	a0,0x0
      bc:	0c000000 	jal	0 <EnDntNomal_Init>
      c0:	24840000 	addiu	a0,a0,0
      c4:	26050314 	addiu	a1,s0,788
      c8:	afa50020 	sw	a1,32(sp)
      cc:	0c000000 	jal	0 <EnDntNomal_Init>
      d0:	8fa40034 	lw	a0,52(sp)
      d4:	3c070000 	lui	a3,0x0
      d8:	8fa50020 	lw	a1,32(sp)
      dc:	24e70000 	addiu	a3,a3,0
      e0:	8fa40034 	lw	a0,52(sp)
      e4:	0c000000 	jal	0 <EnDntNomal_Init>
      e8:	02003025 	move	a2,s0
      ec:	240a0172 	li	t2,370
      f0:	a60a0266 	sh	t2,614(s0)
      f4:	86050266 	lh	a1,614(s0)
      f8:	3c010001 	lui	at,0x1
      fc:	342117a4 	ori	at,at,0x17a4
     100:	04a00013 	bltz	a1,150 <EnDntNomal_Init+0x150>
     104:	8fa40034 	lw	a0,52(sp)
     108:	0c000000 	jal	0 <EnDntNomal_Init>
     10c:	00812021 	addu	a0,a0,at
     110:	a2020279 	sb	v0,633(s0)
     114:	820b0279 	lb	t3,633(s0)
     118:	0561000f 	bgez	t3,158 <EnDntNomal_Init+0x158>
     11c:	00000000 	nop
     120:	0c000000 	jal	0 <EnDntNomal_Init>
     124:	02002025 	move	a0,s0
     128:	3c040000 	lui	a0,0x0
     12c:	24840000 	addiu	a0,a0,0
     130:	0c000000 	jal	0 <EnDntNomal_Init>
     134:	82050279 	lb	a1,633(s0)
     138:	3c040000 	lui	a0,0x0
     13c:	24840000 	addiu	a0,a0,0
     140:	0c000000 	jal	0 <EnDntNomal_Init>
     144:	8605001c 	lh	a1,28(s0)
     148:	10000007 	b	168 <EnDntNomal_Init+0x168>
     14c:	8fbf001c 	lw	ra,28(sp)
     150:	0c000000 	jal	0 <EnDntNomal_Init>
     154:	02002025 	move	a0,s0
     158:	3c0c0000 	lui	t4,0x0
     15c:	258c0000 	addiu	t4,t4,0
     160:	ae0c0214 	sw	t4,532(s0)
     164:	8fbf001c 	lw	ra,28(sp)
     168:	8fb00018 	lw	s0,24(sp)
     16c:	27bd0030 	addiu	sp,sp,48
     170:	03e00008 	jr	ra
     174:	00000000 	nop

00000178 <EnDntNomal_Destroy>:
     178:	27bdffe8 	addiu	sp,sp,-24
     17c:	afbf0014 	sw	ra,20(sp)
     180:	848e026a 	lh	t6,618(a0)
     184:	00803025 	move	a2,a0
     188:	00a03825 	move	a3,a1
     18c:	15c00006 	bnez	t6,1a8 <EnDntNomal_Destroy+0x30>
     190:	00e02025 	move	a0,a3
     194:	00a02025 	move	a0,a1
     198:	0c000000 	jal	0 <EnDntNomal_Init>
     19c:	24c50294 	addiu	a1,a2,660
     1a0:	10000004 	b	1b4 <EnDntNomal_Destroy+0x3c>
     1a4:	8fbf0014 	lw	ra,20(sp)
     1a8:	0c000000 	jal	0 <EnDntNomal_Init>
     1ac:	24c50314 	addiu	a1,a2,788
     1b0:	8fbf0014 	lw	ra,20(sp)
     1b4:	27bd0018 	addiu	sp,sp,24
     1b8:	03e00008 	jr	ra
     1bc:	00000000 	nop

000001c0 <func_809F3480>:
     1c0:	27bdffd0 	addiu	sp,sp,-48
     1c4:	afb00028 	sw	s0,40(sp)
     1c8:	3c010001 	lui	at,0x1
     1cc:	00808025 	move	s0,a0
     1d0:	342117a4 	ori	at,at,0x17a4
     1d4:	afbf002c 	sw	ra,44(sp)
     1d8:	afa50034 	sw	a1,52(sp)
     1dc:	00a12021 	addu	a0,a1,at
     1e0:	0c000000 	jal	0 <EnDntNomal_Init>
     1e4:	82050279 	lb	a1,633(s0)
     1e8:	10400043 	beqz	v0,2f8 <func_809F3480+0x138>
     1ec:	8fae0034 	lw	t6,52(sp)
     1f0:	820f0279 	lb	t7,633(s0)
     1f4:	3c080001 	lui	t0,0x1
     1f8:	3c018000 	lui	at,0x8000
     1fc:	000fc100 	sll	t8,t7,0x4
     200:	030fc021 	addu	t8,t8,t7
     204:	0018c080 	sll	t8,t8,0x2
     208:	01d8c821 	addu	t9,t6,t8
     20c:	01194021 	addu	t0,t0,t9
     210:	8d0817b4 	lw	t0,6068(t0)
     214:	44800000 	mtc1	zero,$f0
     218:	3c060000 	lui	a2,0x0
     21c:	01014821 	addu	t1,t0,at
     220:	3c010000 	lui	at,0x0
     224:	ac290018 	sw	t1,24(at)
     228:	820a0279 	lb	t2,633(s0)
     22c:	44050000 	mfc1	a1,$f0
     230:	44070000 	mfc1	a3,$f0
     234:	24c60000 	addiu	a2,a2,0
     238:	260400b4 	addiu	a0,s0,180
     23c:	0c000000 	jal	0 <EnDntNomal_Init>
     240:	a20a001e 	sb	t2,30(s0)
     244:	3c01c000 	lui	at,0xc000
     248:	44812000 	mtc1	at,$f4
     24c:	3c053c23 	lui	a1,0x3c23
     250:	34a5d70a 	ori	a1,a1,0xd70a
     254:	02002025 	move	a0,s0
     258:	0c000000 	jal	0 <EnDntNomal_Init>
     25c:	e604006c 	swc1	$f4,108(s0)
     260:	860b026a 	lh	t3,618(s0)
     264:	8fa40034 	lw	a0,52(sp)
     268:	2605014c 	addiu	a1,s0,332
     26c:	15600012 	bnez	t3,2b8 <func_809F3480+0xf8>
     270:	3c060600 	lui	a2,0x600
     274:	3c060600 	lui	a2,0x600
     278:	3c070600 	lui	a3,0x600
     27c:	260c0190 	addiu	t4,s0,400
     280:	260d01d2 	addiu	t5,s0,466
     284:	240f000a 	li	t7,10
     288:	afaf0018 	sw	t7,24(sp)
     28c:	afad0014 	sw	t5,20(sp)
     290:	afac0010 	sw	t4,16(sp)
     294:	24e724cc 	addiu	a3,a3,9420
     298:	24c623b8 	addiu	a2,a2,9144
     29c:	8fa40034 	lw	a0,52(sp)
     2a0:	0c000000 	jal	0 <EnDntNomal_Init>
     2a4:	2605014c 	addiu	a1,s0,332
     2a8:	3c0e0000 	lui	t6,0x0
     2ac:	25ce0000 	addiu	t6,t6,0
     2b0:	1000000e 	b	2ec <func_809F3480+0x12c>
     2b4:	ae0e0134 	sw	t6,308(s0)
     2b8:	3c070600 	lui	a3,0x600
     2bc:	26180190 	addiu	t8,s0,400
     2c0:	261901d2 	addiu	t9,s0,466
     2c4:	2408000b 	li	t0,11
     2c8:	afa80018 	sw	t0,24(sp)
     2cc:	afb90014 	sw	t9,20(sp)
     2d0:	afb80010 	sw	t8,16(sp)
     2d4:	24e70430 	addiu	a3,a3,1072
     2d8:	0c000000 	jal	0 <EnDntNomal_Init>
     2dc:	24c62af0 	addiu	a2,a2,10992
     2e0:	3c090000 	lui	t1,0x0
     2e4:	25290000 	addiu	t1,t1,0
     2e8:	ae090134 	sw	t1,308(s0)
     2ec:	3c0a0000 	lui	t2,0x0
     2f0:	254a0000 	addiu	t2,t2,0
     2f4:	ae0a0214 	sw	t2,532(s0)
     2f8:	8fbf002c 	lw	ra,44(sp)
     2fc:	8fb00028 	lw	s0,40(sp)
     300:	27bd0030 	addiu	sp,sp,48
     304:	03e00008 	jr	ra
     308:	00000000 	nop

0000030c <func_809F35CC>:
     30c:	afa50004 	sw	a1,4(sp)
     310:	948e0088 	lhu	t6,136(a0)
     314:	31cf0001 	andi	t7,t6,0x1
     318:	11e00010 	beqz	t7,35c <func_809F35CC+0x50>
     31c:	00000000 	nop
     320:	8c990024 	lw	t9,36(a0)
     324:	8488026a 	lh	t0,618(a0)
     328:	8c980028 	lw	t8,40(a0)
     32c:	ac99021c 	sw	t9,540(a0)
     330:	8c99002c 	lw	t9,44(a0)
     334:	ac980220 	sw	t8,544(a0)
     338:	15000005 	bnez	t0,350 <func_809F35CC+0x44>
     33c:	ac990224 	sw	t9,548(a0)
     340:	3c090000 	lui	t1,0x0
     344:	25290000 	addiu	t1,t1,0
     348:	03e00008 	jr	ra
     34c:	ac890214 	sw	t1,532(a0)
     350:	3c0a0000 	lui	t2,0x0
     354:	254a0000 	addiu	t2,t2,0
     358:	ac8a0214 	sw	t2,532(a0)
     35c:	03e00008 	jr	ra
     360:	00000000 	nop

00000364 <func_809F3624>:
     364:	27bdffd0 	addiu	sp,sp,-48
     368:	afb00028 	sw	s0,40(sp)
     36c:	00808025 	move	s0,a0
     370:	afbf002c 	sw	ra,44(sp)
     374:	3c040600 	lui	a0,0x600
     378:	afa50034 	sw	a1,52(sp)
     37c:	0c000000 	jal	0 <EnDntNomal_Init>
     380:	248424cc 	addiu	a0,a0,9420
     384:	44822000 	mtc1	v0,$f4
     388:	44800000 	mtc1	zero,$f0
     38c:	3c01c120 	lui	at,0xc120
     390:	468021a0 	cvt.s.w	$f6,$f4
     394:	44819000 	mtc1	at,$f18
     398:	3c050600 	lui	a1,0x600
     39c:	24190002 	li	t9,2
     3a0:	44060000 	mfc1	a2,$f0
     3a4:	44070000 	mfc1	a3,$f0
     3a8:	4600320d 	trunc.w.s	$f8,$f6
     3ac:	24a524cc 	addiu	a1,a1,9420
     3b0:	2604014c 	addiu	a0,s0,332
     3b4:	440f4000 	mfc1	t7,$f8
     3b8:	00000000 	nop
     3bc:	a60f026e 	sh	t7,622(s0)
     3c0:	8618026e 	lh	t8,622(s0)
     3c4:	afb90014 	sw	t9,20(sp)
     3c8:	e7b20018 	swc1	$f18,24(sp)
     3cc:	44985000 	mtc1	t8,$f10
     3d0:	00000000 	nop
     3d4:	46805420 	cvt.s.w	$f16,$f10
     3d8:	0c000000 	jal	0 <EnDntNomal_Init>
     3dc:	e7b00010 	swc1	$f16,16(sp)
     3e0:	3c014100 	lui	at,0x4100
     3e4:	44812000 	mtc1	at,$f4
     3e8:	3c080000 	lui	t0,0x0
     3ec:	25080000 	addiu	t0,t0,0
     3f0:	ae080214 	sw	t0,532(s0)
     3f4:	e6040164 	swc1	$f4,356(s0)
     3f8:	8fbf002c 	lw	ra,44(sp)
     3fc:	8fb00028 	lw	s0,40(sp)
     400:	27bd0030 	addiu	sp,sp,48
     404:	03e00008 	jr	ra
     408:	00000000 	nop

0000040c <func_809F36CC>:
     40c:	27bdff88 	addiu	sp,sp,-120
     410:	3c0f0000 	lui	t7,0x0
     414:	afbf0024 	sw	ra,36(sp)
     418:	afb00020 	sw	s0,32(sp)
     41c:	afa5007c 	sw	a1,124(sp)
     420:	25ef0000 	addiu	t7,t7,0
     424:	8df90000 	lw	t9,0(t7)
     428:	3c010000 	lui	at,0x0
     42c:	c4300000 	lwc1	$f16,0(at)
     430:	27ae0048 	addiu	t6,sp,72
     434:	add90000 	sw	t9,0(t6)
     438:	8df90008 	lw	t9,8(t7)
     43c:	8df80004 	lw	t8,4(t7)
     440:	3c090000 	lui	t1,0x0
     444:	25290000 	addiu	t1,t1,0
     448:	add90008 	sw	t9,8(t6)
     44c:	add80004 	sw	t8,4(t6)
     450:	8d2b0000 	lw	t3,0(t1)
     454:	27a8003c 	addiu	t0,sp,60
     458:	3c0141c0 	lui	at,0x41c0
     45c:	ad0b0000 	sw	t3,0(t0)
     460:	44819000 	mtc1	at,$f18
     464:	8d2b0008 	lw	t3,8(t1)
     468:	8d2a0004 	lw	t2,4(t1)
     46c:	3c014248 	lui	at,0x4248
     470:	44812000 	mtc1	at,$f4
     474:	3c01c1f0 	lui	at,0xc1f0
     478:	ad0b0008 	sw	t3,8(t0)
     47c:	ad0a0004 	sw	t2,4(t0)
     480:	44813000 	mtc1	at,$f6
     484:	44814000 	mtc1	at,$f8
     488:	3c014248 	lui	at,0x4248
     48c:	44815000 	mtc1	at,$f10
     490:	46122001 	sub.s	$f0,$f4,$f18
     494:	00808025 	move	s0,a0
     498:	2484014c 	addiu	a0,a0,332
     49c:	46123080 	add.s	$f2,$f6,$f18
     4a0:	e48000e0 	swc1	$f0,224(a0)
     4a4:	e48000ec 	swc1	$f0,236(a0)
     4a8:	46124301 	sub.s	$f12,$f8,$f18
     4ac:	e48200e4 	swc1	$f2,228(a0)
     4b0:	e48200fc 	swc1	$f2,252(a0)
     4b4:	46125380 	add.s	$f14,$f10,$f18
     4b8:	e48c00f0 	swc1	$f12,240(a0)
     4bc:	e48c0108 	swc1	$f12,264(a0)
     4c0:	e49000dc 	swc1	$f16,220(a0)
     4c4:	e48e00f8 	swc1	$f14,248(a0)
     4c8:	e48e0104 	swc1	$f14,260(a0)
     4cc:	e49000e8 	swc1	$f16,232(a0)
     4d0:	e49000f4 	swc1	$f16,244(a0)
     4d4:	0c000000 	jal	0 <EnDntNomal_Init>
     4d8:	e4900100 	swc1	$f16,256(a0)
     4dc:	920202a5 	lbu	v0,677(s0)
     4e0:	3c010000 	lui	at,0x0
     4e4:	c4300000 	lwc1	$f16,0(at)
     4e8:	304c0002 	andi	t4,v0,0x2
     4ec:	27a6003c 	addiu	a2,sp,60
     4f0:	15800006 	bnez	t4,50c <func_809F36CC+0x100>
     4f4:	27a70048 	addiu	a3,sp,72
     4f8:	3c0d0000 	lui	t5,0x0
     4fc:	8dad0000 	lw	t5,0(t5)
     500:	85ae12d4 	lh	t6,4820(t5)
     504:	51c00078 	beqzl	t6,6e8 <func_809F36CC+0x2dc>
     508:	8fbf0024 	lw	ra,36(sp)
     50c:	861802ba 	lh	t8,698(s0)
     510:	861902bc 	lh	t9,700(s0)
     514:	860802be 	lh	t0,702(s0)
     518:	44982000 	mtc1	t8,$f4
     51c:	44995000 	mtc1	t9,$f10
     520:	3c014248 	lui	at,0x4248
     524:	468021a0 	cvt.s.w	$f6,$f4
     528:	44814000 	mtc1	at,$f8
     52c:	3c01c1f0 	lui	at,0xc1f0
     530:	304ffffd 	andi	t7,v0,0xfffd
     534:	a20f02a5 	sb	t7,677(s0)
     538:	46805120 	cvt.s.w	$f4,$f10
     53c:	44885000 	mtc1	t0,$f10
     540:	46068001 	sub.s	$f0,$f16,$f6
     544:	44813000 	mtc1	at,$f6
     548:	3c0140a0 	lui	at,0x40a0
     54c:	46000085 	abs.s	$f2,$f0
     550:	46044001 	sub.s	$f0,$f8,$f4
     554:	44812000 	mtc1	at,$f4
     558:	3c014100 	lui	at,0x4100
     55c:	46805220 	cvt.s.w	$f8,$f10
     560:	46021282 	mul.s	$f10,$f2,$f2
     564:	e7a40040 	swc1	$f4,64(sp)
     568:	44812000 	mtc1	at,$f4
     56c:	3c0141a0 	lui	at,0x41a0
     570:	46000305 	abs.s	$f12,$f0
     574:	46083001 	sub.s	$f0,$f6,$f8
     578:	460c6182 	mul.s	$f6,$f12,$f12
     57c:	46000385 	abs.s	$f14,$f0
     580:	460e7202 	mul.s	$f8,$f14,$f14
     584:	46065480 	add.s	$f18,$f10,$f6
     588:	46089000 	add.s	$f0,$f18,$f8
     58c:	46000004 	sqrt.s	$f0,$f0
     590:	4604003c 	c.lt.s	$f0,$f4
     594:	00000000 	nop
     598:	45000039 	bc1f	680 <func_809F36CC+0x274>
     59c:	00000000 	nop
     5a0:	44810000 	mtc1	at,$f0
     5a4:	c60a0024 	lwc1	$f10,36(s0)
     5a8:	24090004 	li	t1,4
     5ac:	240a0002 	li	t2,2
     5b0:	46005181 	sub.s	$f6,$f10,$f0
     5b4:	8fa4007c 	lw	a0,124(sp)
     5b8:	27a5006c 	addiu	a1,sp,108
     5bc:	e7a6006c 	swc1	$f6,108(sp)
     5c0:	c6080028 	lwc1	$f8,40(s0)
     5c4:	46004100 	add.s	$f4,$f8,$f0
     5c8:	e7a40070 	swc1	$f4,112(sp)
     5cc:	c60a002c 	lwc1	$f10,44(s0)
     5d0:	afaa0014 	sw	t2,20(sp)
     5d4:	afa90010 	sw	t1,16(sp)
     5d8:	0c000000 	jal	0 <EnDntNomal_Init>
     5dc:	e7aa0074 	swc1	$f10,116(sp)
     5e0:	0c000000 	jal	0 <EnDntNomal_Init>
     5e4:	24044807 	li	a0,18439
     5e8:	0c000000 	jal	0 <EnDntNomal_Init>
     5ec:	24044807 	li	a0,18439
     5f0:	3c040000 	lui	a0,0x0
     5f4:	24840000 	addiu	a0,a0,0
     5f8:	0c000000 	jal	0 <EnDntNomal_Init>
     5fc:	8605026c 	lh	a1,620(s0)
     600:	3c020000 	lui	v0,0x0
     604:	24420000 	addiu	v0,v0,0
     608:	8c4b0004 	lw	t3,4(v0)
     60c:	51600036 	beqzl	t3,6e8 <func_809F36CC+0x2dc>
     610:	8fbf0024 	lw	ra,36(sp)
     614:	944c0ef2 	lhu	t4,3826(v0)
     618:	318d2000 	andi	t5,t4,0x2000
     61c:	55a00032 	bnezl	t5,6e8 <func_809F36CC+0x2dc>
     620:	8fbf0024 	lw	ra,36(sp)
     624:	860e026c 	lh	t6,620(s0)
     628:	2405102c 	li	a1,4140
     62c:	2406ff9d 	li	a2,-99
     630:	25cf0001 	addiu	t7,t6,1
     634:	a60f026c 	sh	t7,620(s0)
     638:	8618026c 	lh	t8,620(s0)
     63c:	8fa4007c 	lw	a0,124(sp)
     640:	02003825 	move	a3,s0
     644:	2b010003 	slti	at,t8,3
     648:	54200027 	bnezl	at,6e8 <func_809F36CC+0x2dc>
     64c:	8fbf0024 	lw	ra,36(sp)
     650:	0c000000 	jal	0 <EnDntNomal_Init>
     654:	afa00010 	sw	zero,16(sp)
     658:	8fa4007c 	lw	a0,124(sp)
     65c:	02002825 	move	a1,s0
     660:	0c000000 	jal	0 <EnDntNomal_Init>
     664:	24060001 	li	a2,1
     668:	3c080000 	lui	t0,0x0
     66c:	24190032 	li	t9,50
     670:	25080000 	addiu	t0,t0,0
     674:	a619025c 	sh	t9,604(s0)
     678:	1000001a 	b	6e4 <func_809F36CC+0x2d8>
     67c:	ae080214 	sw	t0,532(s0)
     680:	460e7182 	mul.s	$f6,$f14,$f14
     684:	3c0141c0 	lui	at,0x41c0
     688:	44814000 	mtc1	at,$f8
     68c:	46069000 	add.s	$f0,$f18,$f6
     690:	46000004 	sqrt.s	$f0,$f0
     694:	4608003c 	c.lt.s	$f0,$f8
     698:	00000000 	nop
     69c:	45020012 	bc1fl	6e8 <func_809F36CC+0x2dc>
     6a0:	8fbf0024 	lw	ra,36(sp)
     6a4:	c6040024 	lwc1	$f4,36(s0)
     6a8:	3c0141a0 	lui	at,0x41a0
     6ac:	44810000 	mtc1	at,$f0
     6b0:	e7a4006c 	swc1	$f4,108(sp)
     6b4:	c60a0028 	lwc1	$f10,40(s0)
     6b8:	24090004 	li	t1,4
     6bc:	8fa4007c 	lw	a0,124(sp)
     6c0:	46005180 	add.s	$f6,$f10,$f0
     6c4:	27a5006c 	addiu	a1,sp,108
     6c8:	e7a60070 	swc1	$f6,112(sp)
     6cc:	c608002c 	lwc1	$f8,44(s0)
     6d0:	afa00014 	sw	zero,20(sp)
     6d4:	afa90010 	sw	t1,16(sp)
     6d8:	0c000000 	jal	0 <EnDntNomal_Init>
     6dc:	e7a80074 	swc1	$f8,116(sp)
     6e0:	a600026c 	sh	zero,620(s0)
     6e4:	8fbf0024 	lw	ra,36(sp)
     6e8:	8fb00020 	lw	s0,32(sp)
     6ec:	27bd0078 	addiu	sp,sp,120
     6f0:	03e00008 	jr	ra
     6f4:	00000000 	nop

000006f8 <func_809F39B8>:
     6f8:	27bdffb8 	addiu	sp,sp,-72
     6fc:	afbf0034 	sw	ra,52(sp)
     700:	afb00030 	sw	s0,48(sp)
     704:	afa5004c 	sw	a1,76(sp)
     708:	848e025c 	lh	t6,604(a0)
     70c:	00808025 	move	s0,a0
     710:	3c040600 	lui	a0,0x600
     714:	55c0003b 	bnezl	t6,804 <func_809F39B8+0x10c>
     718:	8fbf0034 	lw	ra,52(sp)
     71c:	0c000000 	jal	0 <EnDntNomal_Init>
     720:	248426c4 	addiu	a0,a0,9924
     724:	44822000 	mtc1	v0,$f4
     728:	3c01c120 	lui	at,0xc120
     72c:	44819000 	mtc1	at,$f18
     730:	468021a0 	cvt.s.w	$f6,$f4
     734:	3c050600 	lui	a1,0x600
     738:	24080002 	li	t0,2
     73c:	24a526c4 	addiu	a1,a1,9924
     740:	2604014c 	addiu	a0,s0,332
     744:	3c063f80 	lui	a2,0x3f80
     748:	4600320d 	trunc.w.s	$f8,$f6
     74c:	24070000 	li	a3,0
     750:	44184000 	mfc1	t8,$f8
     754:	00000000 	nop
     758:	a618026e 	sh	t8,622(s0)
     75c:	8619026e 	lh	t9,622(s0)
     760:	afa80014 	sw	t0,20(sp)
     764:	e7b20018 	swc1	$f18,24(sp)
     768:	44995000 	mtc1	t9,$f10
     76c:	00000000 	nop
     770:	46805420 	cvt.s.w	$f16,$f10
     774:	0c000000 	jal	0 <EnDntNomal_Init>
     778:	e7b00010 	swc1	$f16,16(sp)
     77c:	8e0a0024 	lw	t2,36(s0)
     780:	27a5003c 	addiu	a1,sp,60
     784:	3c014248 	lui	at,0x4248
     788:	acaa0000 	sw	t2,0(a1)
     78c:	8e090028 	lw	t1,40(s0)
     790:	44813000 	mtc1	at,$f6
     794:	240b000a 	li	t3,10
     798:	aca90004 	sw	t1,4(a1)
     79c:	8e0a002c 	lw	t2,44(s0)
     7a0:	240c0003 	li	t4,3
     7a4:	240d000f 	li	t5,15
     7a8:	acaa0008 	sw	t2,8(a1)
     7ac:	c6040028 	lwc1	$f4,40(s0)
     7b0:	240effff 	li	t6,-1
     7b4:	240f000a 	li	t7,10
     7b8:	46062200 	add.s	$f8,$f4,$f6
     7bc:	afaf0020 	sw	t7,32(sp)
     7c0:	afae001c 	sw	t6,28(sp)
     7c4:	afa00024 	sw	zero,36(sp)
     7c8:	e7a80040 	swc1	$f8,64(sp)
     7cc:	afad0018 	sw	t5,24(sp)
     7d0:	afac0014 	sw	t4,20(sp)
     7d4:	afab0010 	sw	t3,16(sp)
     7d8:	8fa4004c 	lw	a0,76(sp)
     7dc:	3c064080 	lui	a2,0x4080
     7e0:	0c000000 	jal	0 <EnDntNomal_Init>
     7e4:	00003825 	move	a3,zero
     7e8:	02002025 	move	a0,s0
     7ec:	0c000000 	jal	0 <EnDntNomal_Init>
     7f0:	2405387c 	li	a1,14460
     7f4:	3c180000 	lui	t8,0x0
     7f8:	27180000 	addiu	t8,t8,0
     7fc:	ae180214 	sw	t8,532(s0)
     800:	8fbf0034 	lw	ra,52(sp)
     804:	8fb00030 	lw	s0,48(sp)
     808:	27bd0048 	addiu	sp,sp,72
     80c:	03e00008 	jr	ra
     810:	00000000 	nop

00000814 <func_809F3AD4>:
     814:	27bdffe0 	addiu	sp,sp,-32
     818:	afbf0014 	sw	ra,20(sp)
     81c:	afa40020 	sw	a0,32(sp)
     820:	afa50024 	sw	a1,36(sp)
     824:	c4840164 	lwc1	$f4,356(a0)
     828:	00802825 	move	a1,a0
     82c:	afa50020 	sw	a1,32(sp)
     830:	2484014c 	addiu	a0,a0,332
     834:	0c000000 	jal	0 <EnDntNomal_Init>
     838:	e7a4001c 	swc1	$f4,28(sp)
     83c:	8fa50020 	lw	a1,32(sp)
     840:	c7a6001c 	lwc1	$f6,28(sp)
     844:	3c0f0000 	lui	t7,0x0
     848:	84ae026e 	lh	t6,622(a1)
     84c:	25ef0000 	addiu	t7,t7,0
     850:	448e4000 	mtc1	t6,$f8
     854:	00000000 	nop
     858:	468042a0 	cvt.s.w	$f10,$f8
     85c:	4606503e 	c.le.s	$f10,$f6
     860:	00000000 	nop
     864:	45020003 	bc1fl	874 <func_809F3AD4+0x60>
     868:	8fbf0014 	lw	ra,20(sp)
     86c:	acaf0214 	sw	t7,532(a1)
     870:	8fbf0014 	lw	ra,20(sp)
     874:	27bd0020 	addiu	sp,sp,32
     878:	03e00008 	jr	ra
     87c:	00000000 	nop

00000880 <func_809F3B40>:
     880:	27bdffd0 	addiu	sp,sp,-48
     884:	afb00028 	sw	s0,40(sp)
     888:	00808025 	move	s0,a0
     88c:	afbf002c 	sw	ra,44(sp)
     890:	3c040600 	lui	a0,0x600
     894:	afa50034 	sw	a1,52(sp)
     898:	0c000000 	jal	0 <EnDntNomal_Init>
     89c:	24843128 	addiu	a0,a0,12584
     8a0:	44822000 	mtc1	v0,$f4
     8a4:	3c01c120 	lui	at,0xc120
     8a8:	44819000 	mtc1	at,$f18
     8ac:	468021a0 	cvt.s.w	$f6,$f4
     8b0:	3c050600 	lui	a1,0x600
     8b4:	24a53128 	addiu	a1,a1,12584
     8b8:	2604014c 	addiu	a0,s0,332
     8bc:	3c063f80 	lui	a2,0x3f80
     8c0:	24070000 	li	a3,0
     8c4:	4600320d 	trunc.w.s	$f8,$f6
     8c8:	440f4000 	mfc1	t7,$f8
     8cc:	00000000 	nop
     8d0:	a60f026e 	sh	t7,622(s0)
     8d4:	8618026e 	lh	t8,622(s0)
     8d8:	afa00014 	sw	zero,20(sp)
     8dc:	e7b20018 	swc1	$f18,24(sp)
     8e0:	44985000 	mtc1	t8,$f10
     8e4:	00000000 	nop
     8e8:	46805420 	cvt.s.w	$f16,$f10
     8ec:	0c000000 	jal	0 <EnDntNomal_Init>
     8f0:	e7b00010 	swc1	$f16,16(sp)
     8f4:	3c013f80 	lui	at,0x3f80
     8f8:	44812000 	mtc1	at,$f4
     8fc:	3c190000 	lui	t9,0x0
     900:	27390000 	addiu	t9,t9,0
     904:	a20000ae 	sb	zero,174(s0)
     908:	ae190214 	sw	t9,532(s0)
     90c:	e6040068 	swc1	$f4,104(s0)
     910:	8fbf002c 	lw	ra,44(sp)
     914:	8fb00028 	lw	s0,40(sp)
     918:	27bd0030 	addiu	sp,sp,48
     91c:	03e00008 	jr	ra
     920:	00000000 	nop

00000924 <func_809F3BE4>:
     924:	27bdffc8 	addiu	sp,sp,-56
     928:	afb00020 	sw	s0,32(sp)
     92c:	00808025 	move	s0,a0
     930:	afbf0024 	sw	ra,36(sp)
     934:	2484014c 	addiu	a0,a0,332
     938:	afa5003c 	sw	a1,60(sp)
     93c:	0c000000 	jal	0 <EnDntNomal_Init>
     940:	afa40028 	sw	a0,40(sp)
     944:	3c010000 	lui	at,0x0
     948:	c4240000 	lwc1	$f4,0(at)
     94c:	c6060024 	lwc1	$f6,36(s0)
     950:	44804000 	mtc1	zero,$f8
     954:	c60a002c 	lwc1	$f10,44(s0)
     958:	46062301 	sub.s	$f12,$f4,$f6
     95c:	0c000000 	jal	0 <EnDntNomal_Init>
     960:	460a4381 	sub.s	$f14,$f8,$f10
     964:	3c010000 	lui	at,0x0
     968:	c4300000 	lwc1	$f16,0(at)
     96c:	260400b6 	addiu	a0,s0,182
     970:	24060032 	li	a2,50
     974:	46100482 	mul.s	$f18,$f0,$f16
     978:	24070bb8 	li	a3,3000
     97c:	afa00010 	sw	zero,16(sp)
     980:	4600910d 	trunc.w.s	$f4,$f18
     984:	44052000 	mfc1	a1,$f4
     988:	00000000 	nop
     98c:	00052c00 	sll	a1,a1,0x10
     990:	0c000000 	jal	0 <EnDntNomal_Init>
     994:	00052c03 	sra	a1,a1,0x10
     998:	860f00b6 	lh	t7,182(s0)
     99c:	24050000 	li	a1,0
     9a0:	a60f0032 	sh	t7,50(s0)
     9a4:	0c000000 	jal	0 <EnDntNomal_Init>
     9a8:	8fa40028 	lw	a0,40(sp)
     9ac:	14400004 	bnez	v0,9c0 <func_809F3BE4+0x9c>
     9b0:	8fa40028 	lw	a0,40(sp)
     9b4:	0c000000 	jal	0 <EnDntNomal_Init>
     9b8:	3c0540c0 	lui	a1,0x40c0
     9bc:	10400003 	beqz	v0,9cc <func_809F3BE4+0xa8>
     9c0:	02002025 	move	a0,s0
     9c4:	0c000000 	jal	0 <EnDntNomal_Init>
     9c8:	2405387f 	li	a1,14463
     9cc:	3c01c1f0 	lui	at,0xc1f0
     9d0:	44813000 	mtc1	at,$f6
     9d4:	c608002c 	lwc1	$f8,44(s0)
     9d8:	3c180000 	lui	t8,0x0
     9dc:	4608303c 	c.lt.s	$f6,$f8
     9e0:	00000000 	nop
     9e4:	45020006 	bc1fl	a00 <func_809F3BE4+0xdc>
     9e8:	8fbf0024 	lw	ra,36(sp)
     9ec:	44805000 	mtc1	zero,$f10
     9f0:	27180000 	addiu	t8,t8,0
     9f4:	ae180214 	sw	t8,532(s0)
     9f8:	e60a0068 	swc1	$f10,104(s0)
     9fc:	8fbf0024 	lw	ra,36(sp)
     a00:	8fb00020 	lw	s0,32(sp)
     a04:	27bd0038 	addiu	sp,sp,56
     a08:	03e00008 	jr	ra
     a0c:	00000000 	nop

00000a10 <func_809F3CD0>:
     a10:	27bdffd0 	addiu	sp,sp,-48
     a14:	afb00020 	sw	s0,32(sp)
     a18:	00808025 	move	s0,a0
     a1c:	afbf0024 	sw	ra,36(sp)
     a20:	2484014c 	addiu	a0,a0,332
     a24:	afa50034 	sw	a1,52(sp)
     a28:	0c000000 	jal	0 <EnDntNomal_Init>
     a2c:	afa4002c 	sw	a0,44(sp)
     a30:	8605008a 	lh	a1,138(s0)
     a34:	afa00010 	sw	zero,16(sp)
     a38:	260400b6 	addiu	a0,s0,182
     a3c:	24060003 	li	a2,3
     a40:	0c000000 	jal	0 <EnDntNomal_Init>
     a44:	24071388 	li	a3,5000
     a48:	8fa4002c 	lw	a0,44(sp)
     a4c:	0c000000 	jal	0 <EnDntNomal_Init>
     a50:	24050000 	li	a1,0
     a54:	14400004 	bnez	v0,a68 <func_809F3CD0+0x58>
     a58:	8fa4002c 	lw	a0,44(sp)
     a5c:	0c000000 	jal	0 <EnDntNomal_Init>
     a60:	3c0540c0 	lui	a1,0x40c0
     a64:	10400003 	beqz	v0,a74 <func_809F3CD0+0x64>
     a68:	02002025 	move	a0,s0
     a6c:	0c000000 	jal	0 <EnDntNomal_Init>
     a70:	2405387f 	li	a1,14463
     a74:	860e00b6 	lh	t6,182(s0)
     a78:	860f008a 	lh	t7,138(s0)
     a7c:	3c0141f0 	lui	at,0x41f0
     a80:	44813000 	mtc1	at,$f6
     a84:	01cfc023 	subu	t8,t6,t7
     a88:	44982000 	mtc1	t8,$f4
     a8c:	3c190000 	lui	t9,0x0
     a90:	27390000 	addiu	t9,t9,0
     a94:	46802020 	cvt.s.w	$f0,$f4
     a98:	46000005 	abs.s	$f0,$f0
     a9c:	4606003c 	c.lt.s	$f0,$f6
     aa0:	00000000 	nop
     aa4:	45020003 	bc1fl	ab4 <func_809F3CD0+0xa4>
     aa8:	8fbf0024 	lw	ra,36(sp)
     aac:	ae190214 	sw	t9,532(s0)
     ab0:	8fbf0024 	lw	ra,36(sp)
     ab4:	8fb00020 	lw	s0,32(sp)
     ab8:	27bd0030 	addiu	sp,sp,48
     abc:	03e00008 	jr	ra
     ac0:	00000000 	nop

00000ac4 <func_809F3D84>:
     ac4:	27bdffd0 	addiu	sp,sp,-48
     ac8:	afb00028 	sw	s0,40(sp)
     acc:	00808025 	move	s0,a0
     ad0:	afbf002c 	sw	ra,44(sp)
     ad4:	3c040600 	lui	a0,0x600
     ad8:	afa50034 	sw	a1,52(sp)
     adc:	0c000000 	jal	0 <EnDntNomal_Init>
     ae0:	24842e84 	addiu	a0,a0,11908
     ae4:	44822000 	mtc1	v0,$f4
     ae8:	3c01c120 	lui	at,0xc120
     aec:	44819000 	mtc1	at,$f18
     af0:	468021a0 	cvt.s.w	$f6,$f4
     af4:	3c050600 	lui	a1,0x600
     af8:	24a52e84 	addiu	a1,a1,11908
     afc:	2604014c 	addiu	a0,s0,332
     b00:	3c063f80 	lui	a2,0x3f80
     b04:	24070000 	li	a3,0
     b08:	4600320d 	trunc.w.s	$f8,$f6
     b0c:	440f4000 	mfc1	t7,$f8
     b10:	00000000 	nop
     b14:	a60f026e 	sh	t7,622(s0)
     b18:	8618026e 	lh	t8,622(s0)
     b1c:	afa00014 	sw	zero,20(sp)
     b20:	e7b20018 	swc1	$f18,24(sp)
     b24:	44985000 	mtc1	t8,$f10
     b28:	00000000 	nop
     b2c:	46805420 	cvt.s.w	$f16,$f10
     b30:	0c000000 	jal	0 <EnDntNomal_Init>
     b34:	e7b00010 	swc1	$f16,16(sp)
     b38:	241910af 	li	t9,4271
     b3c:	a619010e 	sh	t9,270(s0)
     b40:	8fa40034 	lw	a0,52(sp)
     b44:	3325ffff 	andi	a1,t9,0xffff
     b48:	0c000000 	jal	0 <EnDntNomal_Init>
     b4c:	00003025 	move	a2,zero
     b50:	3c080000 	lui	t0,0x0
     b54:	25080000 	addiu	t0,t0,0
     b58:	ae080214 	sw	t0,532(s0)
     b5c:	8fbf002c 	lw	ra,44(sp)
     b60:	8fb00028 	lw	s0,40(sp)
     b64:	27bd0030 	addiu	sp,sp,48
     b68:	03e00008 	jr	ra
     b6c:	00000000 	nop

00000b70 <func_809F3E30>:
     b70:	27bdffe0 	addiu	sp,sp,-32
     b74:	afbf001c 	sw	ra,28(sp)
     b78:	afb00018 	sw	s0,24(sp)
     b7c:	afa40020 	sw	a0,32(sp)
     b80:	00a08025 	move	s0,a1
     b84:	0c000000 	jal	0 <EnDntNomal_Init>
     b88:	2484014c 	addiu	a0,a0,332
     b8c:	0c000000 	jal	0 <EnDntNomal_Init>
     b90:	260420d8 	addiu	a0,s0,8408
     b94:	24010005 	li	at,5
     b98:	5441001a 	bnel	v0,at,c04 <func_809F3E30+0x94>
     b9c:	8fbf001c 	lw	ra,28(sp)
     ba0:	0c000000 	jal	0 <EnDntNomal_Init>
     ba4:	02002025 	move	a0,s0
     ba8:	50400016 	beqzl	v0,c04 <func_809F3E30+0x94>
     bac:	8fbf001c 	lw	ra,28(sp)
     bb0:	0c000000 	jal	0 <EnDntNomal_Init>
     bb4:	02002025 	move	a0,s0
     bb8:	860e07a0 	lh	t6,1952(s0)
     bbc:	000e7880 	sll	t7,t6,0x2
     bc0:	020fc021 	addu	t8,s0,t7
     bc4:	0c000000 	jal	0 <EnDntNomal_Init>
     bc8:	8f040790 	lw	a0,1936(t8)
     bcc:	861907a0 	lh	t9,1952(s0)
     bd0:	02002025 	move	a0,s0
     bd4:	00002825 	move	a1,zero
     bd8:	00194080 	sll	t0,t9,0x2
     bdc:	02084821 	addu	t1,s0,t0
     be0:	8d2a0790 	lw	t2,1936(t1)
     be4:	24060008 	li	a2,8
     be8:	0c000000 	jal	0 <EnDntNomal_Init>
     bec:	a5400168 	sh	zero,360(t2)
     bf0:	8fac0020 	lw	t4,32(sp)
     bf4:	3c0b0000 	lui	t3,0x0
     bf8:	256b0000 	addiu	t3,t3,0
     bfc:	ad8b0214 	sw	t3,532(t4)
     c00:	8fbf001c 	lw	ra,28(sp)
     c04:	8fb00018 	lw	s0,24(sp)
     c08:	27bd0020 	addiu	sp,sp,32
     c0c:	03e00008 	jr	ra
     c10:	00000000 	nop

00000c14 <func_809F3ED4>:
     c14:	27bdffd8 	addiu	sp,sp,-40
     c18:	afa40028 	sw	a0,40(sp)
     c1c:	afbf0024 	sw	ra,36(sp)
     c20:	3c040600 	lui	a0,0x600
     c24:	afa5002c 	sw	a1,44(sp)
     c28:	0c000000 	jal	0 <EnDntNomal_Init>
     c2c:	24840168 	addiu	a0,a0,360
     c30:	44822000 	mtc1	v0,$f4
     c34:	8fa30028 	lw	v1,40(sp)
     c38:	3c01c120 	lui	at,0xc120
     c3c:	468021a0 	cvt.s.w	$f6,$f4
     c40:	44819000 	mtc1	at,$f18
     c44:	3c050600 	lui	a1,0x600
     c48:	24190002 	li	t9,2
     c4c:	24a50168 	addiu	a1,a1,360
     c50:	3c063f80 	lui	a2,0x3f80
     c54:	4600320d 	trunc.w.s	$f8,$f6
     c58:	24070000 	li	a3,0
     c5c:	2464014c 	addiu	a0,v1,332
     c60:	440f4000 	mfc1	t7,$f8
     c64:	00000000 	nop
     c68:	a46f026e 	sh	t7,622(v1)
     c6c:	8478026e 	lh	t8,622(v1)
     c70:	afb90014 	sw	t9,20(sp)
     c74:	e7b20018 	swc1	$f18,24(sp)
     c78:	44985000 	mtc1	t8,$f10
     c7c:	00000000 	nop
     c80:	46805420 	cvt.s.w	$f16,$f10
     c84:	0c000000 	jal	0 <EnDntNomal_Init>
     c88:	e7b00010 	swc1	$f16,16(sp)
     c8c:	8fa30028 	lw	v1,40(sp)
     c90:	3c080000 	lui	t0,0x0
     c94:	25080000 	addiu	t0,t0,0
     c98:	ac680214 	sw	t0,532(v1)
     c9c:	8fbf0024 	lw	ra,36(sp)
     ca0:	27bd0028 	addiu	sp,sp,40
     ca4:	03e00008 	jr	ra
     ca8:	00000000 	nop

00000cac <func_809F3F6C>:
     cac:	27bdffa8 	addiu	sp,sp,-88
     cb0:	afb00038 	sw	s0,56(sp)
     cb4:	afbf003c 	sw	ra,60(sp)
     cb8:	afa5005c 	sw	a1,92(sp)
     cbc:	c4840164 	lwc1	$f4,356(a0)
     cc0:	00808025 	move	s0,a0
     cc4:	2484014c 	addiu	a0,a0,332
     cc8:	afa40044 	sw	a0,68(sp)
     ccc:	0c000000 	jal	0 <EnDntNomal_Init>
     cd0:	e7a40054 	swc1	$f4,84(sp)
     cd4:	3c014100 	lui	at,0x4100
     cd8:	44814000 	mtc1	at,$f8
     cdc:	c7a60054 	lwc1	$f6,84(sp)
     ce0:	4606403e 	c.le.s	$f8,$f6
     ce4:	00000000 	nop
     ce8:	45020023 	bc1fl	d78 <func_809F3F6C+0xcc>
     cec:	8619026e 	lh	t9,622(s0)
     cf0:	920e0277 	lbu	t6,631(s0)
     cf4:	8fa6005c 	lw	a2,92(sp)
     cf8:	3c014120 	lui	at,0x4120
     cfc:	15c0001d 	bnez	t6,d74 <func_809F3F6C+0xc8>
     d00:	24c41c24 	addiu	a0,a2,7204
     d04:	c60a027c 	lwc1	$f10,636(s0)
     d08:	44818000 	mtc1	at,$f16
     d0c:	c6020280 	lwc1	$f2,640(s0)
     d10:	c60c0284 	lwc1	$f12,644(s0)
     d14:	46105001 	sub.s	$f0,$f10,$f16
     d18:	240f0013 	li	t7,19
     d1c:	afaf0028 	sw	t7,40(sp)
     d20:	afa00024 	sw	zero,36(sp)
     d24:	e7a00010 	swc1	$f0,16(sp)
     d28:	afa00020 	sw	zero,32(sp)
     d2c:	afa0001c 	sw	zero,28(sp)
     d30:	02002825 	move	a1,s0
     d34:	24070168 	li	a3,360
     d38:	e7a20014 	swc1	$f2,20(sp)
     d3c:	0c000000 	jal	0 <EnDntNomal_Init>
     d40:	e7ac0018 	swc1	$f12,24(sp)
     d44:	14400006 	bnez	v0,d60 <func_809F3F6C+0xb4>
     d48:	8fa4005c 	lw	a0,92(sp)
     d4c:	00002825 	move	a1,zero
     d50:	0c000000 	jal	0 <EnDntNomal_Init>
     d54:	24060007 	li	a2,7
     d58:	0c000000 	jal	0 <EnDntNomal_Init>
     d5c:	02002025 	move	a0,s0
     d60:	24180001 	li	t8,1
     d64:	a2180277 	sb	t8,631(s0)
     d68:	02002025 	move	a0,s0
     d6c:	0c000000 	jal	0 <EnDntNomal_Init>
     d70:	2405387e 	li	a1,14462
     d74:	8619026e 	lh	t9,622(s0)
     d78:	c7b20054 	lwc1	$f18,84(sp)
     d7c:	3c040600 	lui	a0,0x600
     d80:	44992000 	mtc1	t9,$f4
     d84:	00000000 	nop
     d88:	468021a0 	cvt.s.w	$f6,$f4
     d8c:	4612303e 	c.le.s	$f6,$f18
     d90:	00000000 	nop
     d94:	4502001b 	bc1fl	e04 <func_809F3F6C+0x158>
     d98:	8fbf003c 	lw	ra,60(sp)
     d9c:	0c000000 	jal	0 <EnDntNomal_Init>
     da0:	24843128 	addiu	a0,a0,12584
     da4:	44824000 	mtc1	v0,$f8
     da8:	3c01c120 	lui	at,0xc120
     dac:	44813000 	mtc1	at,$f6
     db0:	468042a0 	cvt.s.w	$f10,$f8
     db4:	3c050600 	lui	a1,0x600
     db8:	24a53128 	addiu	a1,a1,12584
     dbc:	3c063f80 	lui	a2,0x3f80
     dc0:	24070000 	li	a3,0
     dc4:	4600540d 	trunc.w.s	$f16,$f10
     dc8:	44098000 	mfc1	t1,$f16
     dcc:	00000000 	nop
     dd0:	a609026e 	sh	t1,622(s0)
     dd4:	860a026e 	lh	t2,622(s0)
     dd8:	afa00014 	sw	zero,20(sp)
     ddc:	8fa40044 	lw	a0,68(sp)
     de0:	448a2000 	mtc1	t2,$f4
     de4:	e7a60018 	swc1	$f6,24(sp)
     de8:	468024a0 	cvt.s.w	$f18,$f4
     dec:	0c000000 	jal	0 <EnDntNomal_Init>
     df0:	e7b20010 	swc1	$f18,16(sp)
     df4:	3c0b0000 	lui	t3,0x0
     df8:	256b0000 	addiu	t3,t3,0
     dfc:	ae0b0214 	sw	t3,532(s0)
     e00:	8fbf003c 	lw	ra,60(sp)
     e04:	8fb00038 	lw	s0,56(sp)
     e08:	27bd0058 	addiu	sp,sp,88
     e0c:	03e00008 	jr	ra
     e10:	00000000 	nop

00000e14 <func_809F40D4>:
     e14:	27bdffc8 	addiu	sp,sp,-56
     e18:	afb10028 	sw	s1,40(sp)
     e1c:	afb00024 	sw	s0,36(sp)
     e20:	00808025 	move	s0,a0
     e24:	afbf002c 	sw	ra,44(sp)
     e28:	2491014c 	addiu	s1,a0,332
     e2c:	afa5003c 	sw	a1,60(sp)
     e30:	0c000000 	jal	0 <EnDntNomal_Init>
     e34:	02202025 	move	a0,s1
     e38:	3c01c334 	lui	at,0xc334
     e3c:	c604021c 	lwc1	$f4,540(s0)
     e40:	c6060024 	lwc1	$f6,36(s0)
     e44:	44814000 	mtc1	at,$f8
     e48:	c60a002c 	lwc1	$f10,44(s0)
     e4c:	46062301 	sub.s	$f12,$f4,$f6
     e50:	460a4381 	sub.s	$f14,$f8,$f10
     e54:	e7ac0034 	swc1	$f12,52(sp)
     e58:	0c000000 	jal	0 <EnDntNomal_Init>
     e5c:	e7ae0030 	swc1	$f14,48(sp)
     e60:	3c010000 	lui	at,0x0
     e64:	c4300000 	lwc1	$f16,0(at)
     e68:	260400b6 	addiu	a0,s0,182
     e6c:	24060003 	li	a2,3
     e70:	46100482 	mul.s	$f18,$f0,$f16
     e74:	24071388 	li	a3,5000
     e78:	afa00010 	sw	zero,16(sp)
     e7c:	4600910d 	trunc.w.s	$f4,$f18
     e80:	44052000 	mfc1	a1,$f4
     e84:	00000000 	nop
     e88:	00052c00 	sll	a1,a1,0x10
     e8c:	0c000000 	jal	0 <EnDntNomal_Init>
     e90:	00052c03 	sra	a1,a1,0x10
     e94:	c7ac0034 	lwc1	$f12,52(sp)
     e98:	0c000000 	jal	0 <EnDntNomal_Init>
     e9c:	c7ae0030 	lwc1	$f14,48(sp)
     ea0:	3c010000 	lui	at,0x0
     ea4:	c4260000 	lwc1	$f6,0(at)
     ea8:	860f00b6 	lh	t7,182(s0)
     eac:	3c0141a0 	lui	at,0x41a0
     eb0:	46060202 	mul.s	$f8,$f0,$f6
     eb4:	44819000 	mtc1	at,$f18
     eb8:	3c013f80 	lui	at,0x3f80
     ebc:	02202025 	move	a0,s1
     ec0:	4600428d 	trunc.w.s	$f10,$f8
     ec4:	44195000 	mfc1	t9,$f10
     ec8:	00000000 	nop
     ecc:	00194400 	sll	t0,t9,0x10
     ed0:	00084c03 	sra	t1,t0,0x10
     ed4:	01e95023 	subu	t2,t7,t1
     ed8:	448a8000 	mtc1	t2,$f16
     edc:	00000000 	nop
     ee0:	46808020 	cvt.s.w	$f0,$f16
     ee4:	46000005 	abs.s	$f0,$f0
     ee8:	4612003c 	c.lt.s	$f0,$f18
     eec:	00000000 	nop
     ef0:	45000004 	bc1f	f04 <func_809F40D4+0xf0>
     ef4:	00000000 	nop
     ef8:	44812000 	mtc1	at,$f4
     efc:	00000000 	nop
     f00:	e6040068 	swc1	$f4,104(s0)
     f04:	0c000000 	jal	0 <EnDntNomal_Init>
     f08:	24050000 	li	a1,0
     f0c:	14400004 	bnez	v0,f20 <func_809F40D4+0x10c>
     f10:	02202025 	move	a0,s1
     f14:	0c000000 	jal	0 <EnDntNomal_Init>
     f18:	3c0540c0 	lui	a1,0x40c0
     f1c:	10400003 	beqz	v0,f2c <func_809F40D4+0x118>
     f20:	02002025 	move	a0,s0
     f24:	0c000000 	jal	0 <EnDntNomal_Init>
     f28:	2405387f 	li	a1,14463
     f2c:	3c01c32c 	lui	at,0xc32c
     f30:	44814000 	mtc1	at,$f8
     f34:	c606002c 	lwc1	$f6,44(s0)
     f38:	860b00b6 	lh	t3,182(s0)
     f3c:	3c040600 	lui	a0,0x600
     f40:	4608303c 	c.lt.s	$f6,$f8
     f44:	a60b0032 	sh	t3,50(s0)
     f48:	45020022 	bc1fl	fd4 <func_809F40D4+0x1c0>
     f4c:	8fbf002c 	lw	ra,44(sp)
     f50:	0c000000 	jal	0 <EnDntNomal_Init>
     f54:	248424cc 	addiu	a0,a0,9420
     f58:	44825000 	mtc1	v0,$f10
     f5c:	3c01c120 	lui	at,0xc120
     f60:	44814000 	mtc1	at,$f8
     f64:	46805420 	cvt.s.w	$f16,$f10
     f68:	3c050600 	lui	a1,0x600
     f6c:	24180002 	li	t8,2
     f70:	24a524cc 	addiu	a1,a1,9420
     f74:	02202025 	move	a0,s1
     f78:	3c063f80 	lui	a2,0x3f80
     f7c:	4600848d 	trunc.w.s	$f18,$f16
     f80:	24070000 	li	a3,0
     f84:	440d9000 	mfc1	t5,$f18
     f88:	00000000 	nop
     f8c:	a60d026e 	sh	t5,622(s0)
     f90:	860e026e 	lh	t6,622(s0)
     f94:	afb80014 	sw	t8,20(sp)
     f98:	e7a80018 	swc1	$f8,24(sp)
     f9c:	448e2000 	mtc1	t6,$f4
     fa0:	00000000 	nop
     fa4:	468021a0 	cvt.s.w	$f6,$f4
     fa8:	0c000000 	jal	0 <EnDntNomal_Init>
     fac:	e7a60010 	swc1	$f6,16(sp)
     fb0:	3c01c32d 	lui	at,0xc32d
     fb4:	44815000 	mtc1	at,$f10
     fb8:	44808000 	mtc1	zero,$f16
     fbc:	3c190000 	lui	t9,0x0
     fc0:	27390000 	addiu	t9,t9,0
     fc4:	ae190214 	sw	t9,532(s0)
     fc8:	e60a002c 	swc1	$f10,44(s0)
     fcc:	e6100068 	swc1	$f16,104(s0)
     fd0:	8fbf002c 	lw	ra,44(sp)
     fd4:	8fb00024 	lw	s0,36(sp)
     fd8:	8fb10028 	lw	s1,40(sp)
     fdc:	03e00008 	jr	ra
     fe0:	27bd0038 	addiu	sp,sp,56

00000fe4 <func_809F42A4>:
     fe4:	27bdffe0 	addiu	sp,sp,-32
     fe8:	afbf0014 	sw	ra,20(sp)
     fec:	afa40020 	sw	a0,32(sp)
     ff0:	afa50024 	sw	a1,36(sp)
     ff4:	c4840164 	lwc1	$f4,356(a0)
     ff8:	00802825 	move	a1,a0
     ffc:	afa50020 	sw	a1,32(sp)
    1000:	2484014c 	addiu	a0,a0,332
    1004:	0c000000 	jal	0 <EnDntNomal_Init>
    1008:	e7a4001c 	swc1	$f4,28(sp)
    100c:	8fa50020 	lw	a1,32(sp)
    1010:	c7a6001c 	lwc1	$f6,28(sp)
    1014:	3c0f0000 	lui	t7,0x0
    1018:	84ae026e 	lh	t6,622(a1)
    101c:	25ef0000 	addiu	t7,t7,0
    1020:	448e4000 	mtc1	t6,$f8
    1024:	00000000 	nop
    1028:	468042a0 	cvt.s.w	$f10,$f8
    102c:	4606503e 	c.le.s	$f10,$f6
    1030:	00000000 	nop
    1034:	45020003 	bc1fl	1044 <func_809F42A4+0x60>
    1038:	8fbf0014 	lw	ra,20(sp)
    103c:	acaf0214 	sw	t7,532(a1)
    1040:	8fbf0014 	lw	ra,20(sp)
    1044:	27bd0020 	addiu	sp,sp,32
    1048:	03e00008 	jr	ra
    104c:	00000000 	nop

00001050 <func_809F4310>:
    1050:	27bdffd0 	addiu	sp,sp,-48
    1054:	afbf002c 	sw	ra,44(sp)
    1058:	afb00028 	sw	s0,40(sp)
    105c:	afa50034 	sw	a1,52(sp)
    1060:	848e0264 	lh	t6,612(a0)
    1064:	00808025 	move	s0,a0
    1068:	3c040600 	lui	a0,0x600
    106c:	55c00022 	bnezl	t6,10f8 <func_809F4310+0xa8>
    1070:	8fbf002c 	lw	ra,44(sp)
    1074:	0c000000 	jal	0 <EnDntNomal_Init>
    1078:	24840430 	addiu	a0,a0,1072
    107c:	44822000 	mtc1	v0,$f4
    1080:	44800000 	mtc1	zero,$f0
    1084:	3c01c120 	lui	at,0xc120
    1088:	468021a0 	cvt.s.w	$f6,$f4
    108c:	44819000 	mtc1	at,$f18
    1090:	3c050600 	lui	a1,0x600
    1094:	24080002 	li	t0,2
    1098:	44060000 	mfc1	a2,$f0
    109c:	44070000 	mfc1	a3,$f0
    10a0:	4600320d 	trunc.w.s	$f8,$f6
    10a4:	24a50430 	addiu	a1,a1,1072
    10a8:	2604014c 	addiu	a0,s0,332
    10ac:	44184000 	mfc1	t8,$f8
    10b0:	00000000 	nop
    10b4:	a618026e 	sh	t8,622(s0)
    10b8:	8619026e 	lh	t9,622(s0)
    10bc:	afa80014 	sw	t0,20(sp)
    10c0:	e7b20018 	swc1	$f18,24(sp)
    10c4:	44995000 	mtc1	t9,$f10
    10c8:	00000000 	nop
    10cc:	46805420 	cvt.s.w	$f16,$f10
    10d0:	0c000000 	jal	0 <EnDntNomal_Init>
    10d4:	e7b00010 	swc1	$f16,16(sp)
    10d8:	3c014100 	lui	at,0x4100
    10dc:	44812000 	mtc1	at,$f4
    10e0:	3c090000 	lui	t1,0x0
    10e4:	25290000 	addiu	t1,t1,0
    10e8:	a2000218 	sb	zero,536(s0)
    10ec:	ae090214 	sw	t1,532(s0)
    10f0:	e6040164 	swc1	$f4,356(s0)
    10f4:	8fbf002c 	lw	ra,44(sp)
    10f8:	8fb00028 	lw	s0,40(sp)
    10fc:	27bd0030 	addiu	sp,sp,48
    1100:	03e00008 	jr	ra
    1104:	00000000 	nop

00001108 <func_809F43C8>:
    1108:	27bdffe8 	addiu	sp,sp,-24
    110c:	afbf0014 	sw	ra,20(sp)
    1110:	afa40018 	sw	a0,24(sp)
    1114:	afa5001c 	sw	a1,28(sp)
    1118:	0c000000 	jal	0 <EnDntNomal_Init>
    111c:	2484014c 	addiu	a0,a0,332
    1120:	8fbf0014 	lw	ra,20(sp)
    1124:	27bd0018 	addiu	sp,sp,24
    1128:	03e00008 	jr	ra
    112c:	00000000 	nop

00001130 <func_809F43F0>:
    1130:	27bdffc8 	addiu	sp,sp,-56
    1134:	afbf0034 	sw	ra,52(sp)
    1138:	afb00030 	sw	s0,48(sp)
    113c:	afa5003c 	sw	a1,60(sp)
    1140:	848e0264 	lh	t6,612(a0)
    1144:	00808025 	move	s0,a0
    1148:	3c040600 	lui	a0,0x600
    114c:	55c00037 	bnezl	t6,122c <func_809F43F0+0xfc>
    1150:	8fbf0034 	lw	ra,52(sp)
    1154:	0c000000 	jal	0 <EnDntNomal_Init>
    1158:	24840b70 	addiu	a0,a0,2928
    115c:	44822000 	mtc1	v0,$f4
    1160:	3c01c120 	lui	at,0xc120
    1164:	44819000 	mtc1	at,$f18
    1168:	468021a0 	cvt.s.w	$f6,$f4
    116c:	3c050600 	lui	a1,0x600
    1170:	24080002 	li	t0,2
    1174:	24a50b70 	addiu	a1,a1,2928
    1178:	2604014c 	addiu	a0,s0,332
    117c:	3c063f80 	lui	a2,0x3f80
    1180:	4600320d 	trunc.w.s	$f8,$f6
    1184:	24070000 	li	a3,0
    1188:	44184000 	mfc1	t8,$f8
    118c:	00000000 	nop
    1190:	a618026e 	sh	t8,622(s0)
    1194:	8619026e 	lh	t9,622(s0)
    1198:	afa80014 	sw	t0,20(sp)
    119c:	e7b20018 	swc1	$f18,24(sp)
    11a0:	44995000 	mtc1	t9,$f10
    11a4:	00000000 	nop
    11a8:	46805420 	cvt.s.w	$f16,$f10
    11ac:	0c000000 	jal	0 <EnDntNomal_Init>
    11b0:	e7b00010 	swc1	$f16,16(sp)
    11b4:	86090274 	lh	t1,628(s0)
    11b8:	24010002 	li	at,2
    11bc:	26050024 	addiu	a1,s0,36
    11c0:	11210003 	beq	t1,at,11d0 <func_809F43F0+0xa0>
    11c4:	3c064080 	lui	a2,0x4080
    11c8:	240affff 	li	t2,-1
    11cc:	a60a0272 	sh	t2,626(s0)
    11d0:	240b000a 	li	t3,10
    11d4:	240c0003 	li	t4,3
    11d8:	240d000f 	li	t5,15
    11dc:	240effff 	li	t6,-1
    11e0:	240f000a 	li	t7,10
    11e4:	afaf0020 	sw	t7,32(sp)
    11e8:	afae001c 	sw	t6,28(sp)
    11ec:	afad0018 	sw	t5,24(sp)
    11f0:	afac0014 	sw	t4,20(sp)
    11f4:	afab0010 	sw	t3,16(sp)
    11f8:	8fa4003c 	lw	a0,60(sp)
    11fc:	00003825 	move	a3,zero
    1200:	0c000000 	jal	0 <EnDntNomal_Init>
    1204:	afa00024 	sw	zero,36(sp)
    1208:	02002025 	move	a0,s0
    120c:	0c000000 	jal	0 <EnDntNomal_Init>
    1210:	2405387c 	li	a1,14460
    1214:	3c190000 	lui	t9,0x0
    1218:	24180001 	li	t8,1
    121c:	27390000 	addiu	t9,t9,0
    1220:	a2180218 	sb	t8,536(s0)
    1224:	ae190214 	sw	t9,532(s0)
    1228:	8fbf0034 	lw	ra,52(sp)
    122c:	8fb00030 	lw	s0,48(sp)
    1230:	27bd0038 	addiu	sp,sp,56
    1234:	03e00008 	jr	ra
    1238:	00000000 	nop

0000123c <func_809F44FC>:
    123c:	27bdffc8 	addiu	sp,sp,-56
    1240:	afbf0024 	sw	ra,36(sp)
    1244:	afb00020 	sw	s0,32(sp)
    1248:	afa5003c 	sw	a1,60(sp)
    124c:	c4840164 	lwc1	$f4,356(a0)
    1250:	00808025 	move	s0,a0
    1254:	2484014c 	addiu	a0,a0,332
    1258:	0c000000 	jal	0 <EnDntNomal_Init>
    125c:	e7a40030 	swc1	$f4,48(sp)
    1260:	860e026e 	lh	t6,622(s0)
    1264:	c7a60030 	lwc1	$f6,48(sp)
    1268:	448e4000 	mtc1	t6,$f8
    126c:	00000000 	nop
    1270:	468042a0 	cvt.s.w	$f10,$f8
    1274:	4606503e 	c.le.s	$f10,$f6
    1278:	00000000 	nop
    127c:	45020009 	bc1fl	12a4 <func_809F44FC+0x68>
    1280:	8619025c 	lh	t9,604(s0)
    1284:	860f0274 	lh	t7,628(s0)
    1288:	24010002 	li	at,2
    128c:	3c180000 	lui	t8,0x0
    1290:	15e10003 	bne	t7,at,12a0 <func_809F44FC+0x64>
    1294:	27180000 	addiu	t8,t8,0
    1298:	10000070 	b	145c <func_809F44FC+0x220>
    129c:	ae180214 	sw	t8,532(s0)
    12a0:	8619025c 	lh	t9,604(s0)
    12a4:	5720003d 	bnezl	t9,139c <func_809F44FC+0x160>
    12a8:	8618025a 	lh	t8,602(s0)
    12ac:	92080278 	lbu	t0,632(s0)
    12b0:	44800000 	mtc1	zero,$f0
    12b4:	260400b6 	addiu	a0,s0,182
    12b8:	15000008 	bnez	t0,12dc <func_809F44FC+0xa0>
    12bc:	24060003 	li	a2,3
    12c0:	8605008a 	lh	a1,138(s0)
    12c4:	e7a0002c 	swc1	$f0,44(sp)
    12c8:	afa00010 	sw	zero,16(sp)
    12cc:	0c000000 	jal	0 <EnDntNomal_Init>
    12d0:	24071388 	li	a3,5000
    12d4:	10000018 	b	1338 <func_809F44FC+0xfc>
    12d8:	c7a0002c 	lwc1	$f0,44(sp)
    12dc:	c6100288 	lwc1	$f16,648(s0)
    12e0:	c6120024 	lwc1	$f18,36(s0)
    12e4:	c6040290 	lwc1	$f4,656(s0)
    12e8:	c608002c 	lwc1	$f8,44(s0)
    12ec:	46128301 	sub.s	$f12,$f16,$f18
    12f0:	0c000000 	jal	0 <EnDntNomal_Init>
    12f4:	46082381 	sub.s	$f14,$f4,$f8
    12f8:	3c010000 	lui	at,0x0
    12fc:	c4260000 	lwc1	$f6,0(at)
    1300:	260400b6 	addiu	a0,s0,182
    1304:	24060001 	li	a2,1
    1308:	46060282 	mul.s	$f10,$f0,$f6
    130c:	24070bb8 	li	a3,3000
    1310:	afa00010 	sw	zero,16(sp)
    1314:	4600540d 	trunc.w.s	$f16,$f10
    1318:	44058000 	mfc1	a1,$f16
    131c:	00000000 	nop
    1320:	00052c00 	sll	a1,a1,0x10
    1324:	0c000000 	jal	0 <EnDntNomal_Init>
    1328:	00052c03 	sra	a1,a1,0x10
    132c:	3c0142b4 	lui	at,0x42b4
    1330:	44810000 	mtc1	at,$f0
    1334:	00000000 	nop
    1338:	3c014120 	lui	at,0x4120
    133c:	44819000 	mtc1	at,$f18
    1340:	0c000000 	jal	0 <EnDntNomal_Init>
    1344:	46009300 	add.s	$f12,$f18,$f0
    1348:	3c013f80 	lui	at,0x3f80
    134c:	44812000 	mtc1	at,$f4
    1350:	00000000 	nop
    1354:	4604003c 	c.lt.s	$f0,$f4
    1358:	00000000 	nop
    135c:	45020036 	bc1fl	1438 <func_809F44FC+0x1fc>
    1360:	3c01428c 	lui	at,0x428c
    1364:	860a0274 	lh	t2,628(s0)
    1368:	24010002 	li	at,2
    136c:	11410031 	beq	t2,at,1434 <func_809F44FC+0x1f8>
    1370:	3c0141f0 	lui	at,0x41f0
    1374:	44816000 	mtc1	at,$f12
    1378:	0c000000 	jal	0 <EnDntNomal_Init>
    137c:	00000000 	nop
    1380:	4600020d 	trunc.w.s	$f8,$f0
    1384:	440e4000 	mfc1	t6,$f8
    1388:	00000000 	nop
    138c:	25cf001e 	addiu	t7,t6,30
    1390:	10000028 	b	1434 <func_809F44FC+0x1f8>
    1394:	a60f025c 	sh	t7,604(s0)
    1398:	8618025a 	lh	t8,602(s0)
    139c:	57000014 	bnezl	t8,13f0 <func_809F44FC+0x1b4>
    13a0:	86020272 	lh	v0,626(s0)
    13a4:	86190272 	lh	t9,626(s0)
    13a8:	240affff 	li	t2,-1
    13ac:	27280001 	addiu	t0,t9,1
    13b0:	a6080272 	sh	t0,626(s0)
    13b4:	86090272 	lh	t1,626(s0)
    13b8:	29210002 	slti	at,t1,2
    13bc:	54200003 	bnezl	at,13cc <func_809F44FC+0x190>
    13c0:	3c014120 	lui	at,0x4120
    13c4:	a60a0272 	sh	t2,626(s0)
    13c8:	3c014120 	lui	at,0x4120
    13cc:	44816000 	mtc1	at,$f12
    13d0:	0c000000 	jal	0 <EnDntNomal_Init>
    13d4:	00000000 	nop
    13d8:	4600018d 	trunc.w.s	$f6,$f0
    13dc:	440e3000 	mfc1	t6,$f6
    13e0:	00000000 	nop
    13e4:	25cf000a 	addiu	t7,t6,10
    13e8:	a60f025a 	sh	t7,602(s0)
    13ec:	86020272 	lh	v0,626(s0)
    13f0:	8605008a 	lh	a1,138(s0)
    13f4:	260400b6 	addiu	a0,s0,182
    13f8:	1040000b 	beqz	v0,1428 <func_809F44FC+0x1ec>
    13fc:	24060003 	li	a2,3
    1400:	0002c080 	sll	t8,v0,0x2
    1404:	0302c021 	addu	t8,t8,v0
    1408:	0018c0c0 	sll	t8,t8,0x3
    140c:	0302c023 	subu	t8,t8,v0
    1410:	0018c100 	sll	t8,t8,0x4
    1414:	0302c021 	addu	t8,t8,v0
    1418:	0018c0c0 	sll	t8,t8,0x3
    141c:	00b82821 	addu	a1,a1,t8
    1420:	00052c00 	sll	a1,a1,0x10
    1424:	00052c03 	sra	a1,a1,0x10
    1428:	24071388 	li	a3,5000
    142c:	0c000000 	jal	0 <EnDntNomal_Init>
    1430:	afa00010 	sw	zero,16(sp)
    1434:	3c01428c 	lui	at,0x428c
    1438:	44818000 	mtc1	at,$f16
    143c:	c60a0090 	lwc1	$f10,144(s0)
    1440:	3c190000 	lui	t9,0x0
    1444:	27390000 	addiu	t9,t9,0
    1448:	4610503c 	c.lt.s	$f10,$f16
    144c:	00000000 	nop
    1450:	45020003 	bc1fl	1460 <func_809F44FC+0x224>
    1454:	8fbf0024 	lw	ra,36(sp)
    1458:	ae190214 	sw	t9,532(s0)
    145c:	8fbf0024 	lw	ra,36(sp)
    1460:	8fb00020 	lw	s0,32(sp)
    1464:	27bd0038 	addiu	sp,sp,56
    1468:	03e00008 	jr	ra
    146c:	00000000 	nop

00001470 <func_809F4730>:
    1470:	27bdffc8 	addiu	sp,sp,-56
    1474:	afbf0034 	sw	ra,52(sp)
    1478:	afb00030 	sw	s0,48(sp)
    147c:	afa5003c 	sw	a1,60(sp)
    1480:	848e0264 	lh	t6,612(a0)
    1484:	00808025 	move	s0,a0
    1488:	3c040600 	lui	a0,0x600
    148c:	55c00031 	bnezl	t6,1554 <func_809F4730+0xe4>
    1490:	8fbf0034 	lw	ra,52(sp)
    1494:	0c000000 	jal	0 <EnDntNomal_Init>
    1498:	24840894 	addiu	a0,a0,2196
    149c:	44822000 	mtc1	v0,$f4
    14a0:	3c01c120 	lui	at,0xc120
    14a4:	44819000 	mtc1	at,$f18
    14a8:	468021a0 	cvt.s.w	$f6,$f4
    14ac:	3c050600 	lui	a1,0x600
    14b0:	24080002 	li	t0,2
    14b4:	24a50894 	addiu	a1,a1,2196
    14b8:	2604014c 	addiu	a0,s0,332
    14bc:	3c063f80 	lui	a2,0x3f80
    14c0:	4600320d 	trunc.w.s	$f8,$f6
    14c4:	24070000 	li	a3,0
    14c8:	44184000 	mfc1	t8,$f8
    14cc:	00000000 	nop
    14d0:	a618026e 	sh	t8,622(s0)
    14d4:	8619026e 	lh	t9,622(s0)
    14d8:	afa80014 	sw	t0,20(sp)
    14dc:	e7b20018 	swc1	$f18,24(sp)
    14e0:	44995000 	mtc1	t9,$f10
    14e4:	00000000 	nop
    14e8:	46805420 	cvt.s.w	$f16,$f10
    14ec:	0c000000 	jal	0 <EnDntNomal_Init>
    14f0:	e7b00010 	swc1	$f16,16(sp)
    14f4:	a2000218 	sb	zero,536(s0)
    14f8:	2409000a 	li	t1,10
    14fc:	240a0003 	li	t2,3
    1500:	240b000f 	li	t3,15
    1504:	240cffff 	li	t4,-1
    1508:	240d000a 	li	t5,10
    150c:	afad0020 	sw	t5,32(sp)
    1510:	afac001c 	sw	t4,28(sp)
    1514:	afab0018 	sw	t3,24(sp)
    1518:	afaa0014 	sw	t2,20(sp)
    151c:	afa90010 	sw	t1,16(sp)
    1520:	afa00024 	sw	zero,36(sp)
    1524:	8fa4003c 	lw	a0,60(sp)
    1528:	26050024 	addiu	a1,s0,36
    152c:	3c064080 	lui	a2,0x4080
    1530:	0c000000 	jal	0 <EnDntNomal_Init>
    1534:	00003825 	move	a3,zero
    1538:	02002025 	move	a0,s0
    153c:	0c000000 	jal	0 <EnDntNomal_Init>
    1540:	2405387c 	li	a1,14460
    1544:	3c0e0000 	lui	t6,0x0
    1548:	25ce0000 	addiu	t6,t6,0
    154c:	ae0e0214 	sw	t6,532(s0)
    1550:	8fbf0034 	lw	ra,52(sp)
    1554:	8fb00030 	lw	s0,48(sp)
    1558:	27bd0038 	addiu	sp,sp,56
    155c:	03e00008 	jr	ra
    1560:	00000000 	nop

00001564 <func_809F4824>:
    1564:	27bdffe0 	addiu	sp,sp,-32
    1568:	afbf0014 	sw	ra,20(sp)
    156c:	afa40020 	sw	a0,32(sp)
    1570:	afa50024 	sw	a1,36(sp)
    1574:	c4840164 	lwc1	$f4,356(a0)
    1578:	00802825 	move	a1,a0
    157c:	afa50020 	sw	a1,32(sp)
    1580:	2484014c 	addiu	a0,a0,332
    1584:	0c000000 	jal	0 <EnDntNomal_Init>
    1588:	e7a4001c 	swc1	$f4,28(sp)
    158c:	8fa50020 	lw	a1,32(sp)
    1590:	c7a6001c 	lwc1	$f6,28(sp)
    1594:	84ae026e 	lh	t6,622(a1)
    1598:	448e4000 	mtc1	t6,$f8
    159c:	00000000 	nop
    15a0:	468042a0 	cvt.s.w	$f10,$f8
    15a4:	4606503e 	c.le.s	$f10,$f6
    15a8:	00000000 	nop
    15ac:	45020020 	bc1fl	1630 <func_809F4824+0xcc>
    15b0:	8fbf0014 	lw	ra,20(sp)
    15b4:	84af0274 	lh	t7,628(a1)
    15b8:	24010001 	li	at,1
    15bc:	2419012c 	li	t9,300
    15c0:	11e10017 	beq	t7,at,1620 <func_809F4824+0xbc>
    15c4:	3c080000 	lui	t0,0x0
    15c8:	3c014000 	lui	at,0x4000
    15cc:	44816000 	mtc1	at,$f12
    15d0:	0c000000 	jal	0 <EnDntNomal_Init>
    15d4:	afa50020 	sw	a1,32(sp)
    15d8:	8fa50020 	lw	a1,32(sp)
    15dc:	3c013f00 	lui	at,0x3f00
    15e0:	44812000 	mtc1	at,$f4
    15e4:	84b8026a 	lh	t8,618(a1)
    15e8:	4600028d 	trunc.w.s	$f10,$f0
    15ec:	44988000 	mtc1	t8,$f16
    15f0:	3c180000 	lui	t8,0x0
    15f4:	440e5000 	mfc1	t6,$f10
    15f8:	468084a0 	cvt.s.w	$f18,$f16
    15fc:	27180000 	addiu	t8,t8,0
    1600:	acb80214 	sw	t8,532(a1)
    1604:	46049202 	mul.s	$f8,$f18,$f4
    1608:	4600418d 	trunc.w.s	$f6,$f8
    160c:	440a3000 	mfc1	t2,$f6
    1610:	00000000 	nop
    1614:	01ca7821 	addu	t7,t6,t2
    1618:	10000004 	b	162c <func_809F4824+0xc8>
    161c:	a4af0264 	sh	t7,612(a1)
    1620:	25080000 	addiu	t0,t0,0
    1624:	a4b9025a 	sh	t9,602(a1)
    1628:	aca80214 	sw	t0,532(a1)
    162c:	8fbf0014 	lw	ra,20(sp)
    1630:	27bd0020 	addiu	sp,sp,32
    1634:	03e00008 	jr	ra
    1638:	00000000 	nop

0000163c <func_809F48FC>:
    163c:	27bdffd0 	addiu	sp,sp,-48
    1640:	afb00028 	sw	s0,40(sp)
    1644:	00808025 	move	s0,a0
    1648:	afbf002c 	sw	ra,44(sp)
    164c:	3c040600 	lui	a0,0x600
    1650:	afa50034 	sw	a1,52(sp)
    1654:	0c000000 	jal	0 <EnDntNomal_Init>
    1658:	24842e1c 	addiu	a0,a0,11804
    165c:	44822000 	mtc1	v0,$f4
    1660:	3c01c120 	lui	at,0xc120
    1664:	44819000 	mtc1	at,$f18
    1668:	468021a0 	cvt.s.w	$f6,$f4
    166c:	3c050600 	lui	a1,0x600
    1670:	24a52e1c 	addiu	a1,a1,11804
    1674:	2604014c 	addiu	a0,s0,332
    1678:	3c063f80 	lui	a2,0x3f80
    167c:	24070000 	li	a3,0
    1680:	4600320d 	trunc.w.s	$f8,$f6
    1684:	440f4000 	mfc1	t7,$f8
    1688:	00000000 	nop
    168c:	a60f026e 	sh	t7,622(s0)
    1690:	8618026e 	lh	t8,622(s0)
    1694:	afa00014 	sw	zero,20(sp)
    1698:	e7b20018 	swc1	$f18,24(sp)
    169c:	44985000 	mtc1	t8,$f10
    16a0:	00000000 	nop
    16a4:	46805420 	cvt.s.w	$f16,$f10
    16a8:	0c000000 	jal	0 <EnDntNomal_Init>
    16ac:	e7b00010 	swc1	$f16,16(sp)
    16b0:	3c014040 	lui	at,0x4040
    16b4:	44812000 	mtc1	at,$f4
    16b8:	3c080000 	lui	t0,0x0
    16bc:	24190001 	li	t9,1
    16c0:	25080000 	addiu	t0,t0,0
    16c4:	a2190218 	sb	t9,536(s0)
    16c8:	ae080214 	sw	t0,532(s0)
    16cc:	e6040068 	swc1	$f4,104(s0)
    16d0:	8fbf002c 	lw	ra,44(sp)
    16d4:	8fb00028 	lw	s0,40(sp)
    16d8:	27bd0030 	addiu	sp,sp,48
    16dc:	03e00008 	jr	ra
    16e0:	00000000 	nop

000016e4 <func_809F49A4>:
    16e4:	27bdffd0 	addiu	sp,sp,-48
    16e8:	afb00020 	sw	s0,32(sp)
    16ec:	00808025 	move	s0,a0
    16f0:	afbf0024 	sw	ra,36(sp)
    16f4:	afa50034 	sw	a1,52(sp)
    16f8:	0c000000 	jal	0 <EnDntNomal_Init>
    16fc:	2484014c 	addiu	a0,a0,332
    1700:	86030258 	lh	v1,600(s0)
    1704:	24010001 	li	at,1
    1708:	14600037 	bnez	v1,17e8 <func_809F49A4+0x104>
    170c:	00000000 	nop
    1710:	860e0264 	lh	t6,612(s0)
    1714:	15c00034 	bnez	t6,17e8 <func_809F49A4+0x104>
    1718:	00000000 	nop
    171c:	c6040288 	lwc1	$f4,648(s0)
    1720:	c6060024 	lwc1	$f6,36(s0)
    1724:	3c014120 	lui	at,0x4120
    1728:	44811000 	mtc1	at,$f2
    172c:	46062301 	sub.s	$f12,$f4,$f6
    1730:	c6080290 	lwc1	$f8,656(s0)
    1734:	c60a002c 	lwc1	$f10,44(s0)
    1738:	46006005 	abs.s	$f0,$f12
    173c:	460a4381 	sub.s	$f14,$f8,$f10
    1740:	4602003c 	c.lt.s	$f0,$f2
    1744:	00000000 	nop
    1748:	45000015 	bc1f	17a0 <func_809F49A4+0xbc>
    174c:	00000000 	nop
    1750:	46007005 	abs.s	$f0,$f14
    1754:	8fa40034 	lw	a0,52(sp)
    1758:	4602003c 	c.lt.s	$f0,$f2
    175c:	248420d8 	addiu	a0,a0,8408
    1760:	4500000f 	bc1f	17a0 <func_809F49A4+0xbc>
    1764:	00000000 	nop
    1768:	e7ac002c 	swc1	$f12,44(sp)
    176c:	0c000000 	jal	0 <EnDntNomal_Init>
    1770:	e7ae0028 	swc1	$f14,40(sp)
    1774:	c7ac002c 	lwc1	$f12,44(sp)
    1778:	10400009 	beqz	v0,17a0 <func_809F49A4+0xbc>
    177c:	c7ae0028 	lwc1	$f14,40(sp)
    1780:	44808000 	mtc1	zero,$f16
    1784:	3c180000 	lui	t8,0x0
    1788:	240f0005 	li	t7,5
    178c:	27180000 	addiu	t8,t8,0
    1790:	a60f0274 	sh	t7,628(s0)
    1794:	ae180214 	sw	t8,532(s0)
    1798:	1000004d 	b	18d0 <func_809F49A4+0x1ec>
    179c:	e6100068 	swc1	$f16,104(s0)
    17a0:	0c000000 	jal	0 <EnDntNomal_Init>
    17a4:	00000000 	nop
    17a8:	3c010000 	lui	at,0x0
    17ac:	c4320000 	lwc1	$f18,0(at)
    17b0:	260400b6 	addiu	a0,s0,182
    17b4:	24060001 	li	a2,1
    17b8:	46120102 	mul.s	$f4,$f0,$f18
    17bc:	24070bb8 	li	a3,3000
    17c0:	afa00010 	sw	zero,16(sp)
    17c4:	4600218d 	trunc.w.s	$f6,$f4
    17c8:	44053000 	mfc1	a1,$f6
    17cc:	00000000 	nop
    17d0:	00052c00 	sll	a1,a1,0x10
    17d4:	0c000000 	jal	0 <EnDntNomal_Init>
    17d8:	00052c03 	sra	a1,a1,0x10
    17dc:	860800b6 	lh	t0,182(s0)
    17e0:	10000021 	b	1868 <func_809F49A4+0x184>
    17e4:	a6080032 	sh	t0,50(s0)
    17e8:	14610013 	bne	v1,at,1838 <func_809F49A4+0x154>
    17ec:	3c0141a0 	lui	at,0x41a0
    17f0:	44816000 	mtc1	at,$f12
    17f4:	0c000000 	jal	0 <EnDntNomal_Init>
    17f8:	00000000 	nop
    17fc:	4600020d 	trunc.w.s	$f8,$f0
    1800:	3c0141a0 	lui	at,0x41a0
    1804:	44819000 	mtc1	at,$f18
    1808:	440a4000 	mfc1	t2,$f8
    180c:	00000000 	nop
    1810:	000a5c00 	sll	t3,t2,0x10
    1814:	000b6403 	sra	t4,t3,0x10
    1818:	448c5000 	mtc1	t4,$f10
    181c:	00000000 	nop
    1820:	46805420 	cvt.s.w	$f16,$f10
    1824:	46128100 	add.s	$f4,$f16,$f18
    1828:	4600218d 	trunc.w.s	$f6,$f4
    182c:	440e3000 	mfc1	t6,$f6
    1830:	00000000 	nop
    1834:	a60e0264 	sh	t6,612(s0)
    1838:	8605008a 	lh	a1,138(s0)
    183c:	afa00010 	sw	zero,16(sp)
    1840:	26040032 	addiu	a0,s0,50
    1844:	24060014 	li	a2,20
    1848:	0c000000 	jal	0 <EnDntNomal_Init>
    184c:	24071388 	li	a3,5000
    1850:	8605008a 	lh	a1,138(s0)
    1854:	afa00010 	sw	zero,16(sp)
    1858:	260400b6 	addiu	a0,s0,182
    185c:	24060003 	li	a2,3
    1860:	0c000000 	jal	0 <EnDntNomal_Init>
    1864:	24071388 	li	a3,5000
    1868:	8602025e 	lh	v0,606(s0)
    186c:	1440000b 	bnez	v0,189c <func_809F49A4+0x1b8>
    1870:	30480003 	andi	t0,v0,0x3
    1874:	8618026a 	lh	t8,618(s0)
    1878:	240f0014 	li	t7,20
    187c:	a60f025e 	sh	t7,606(s0)
    1880:	33190001 	andi	t9,t8,0x1
    1884:	17200009 	bnez	t9,18ac <func_809F49A4+0x1c8>
    1888:	02002025 	move	a0,s0
    188c:	0c000000 	jal	0 <EnDntNomal_Init>
    1890:	24053880 	li	a1,14464
    1894:	10000006 	b	18b0 <func_809F49A4+0x1cc>
    1898:	96020088 	lhu	v0,136(s0)
    189c:	15000003 	bnez	t0,18ac <func_809F49A4+0x1c8>
    18a0:	02002025 	move	a0,s0
    18a4:	0c000000 	jal	0 <EnDntNomal_Init>
    18a8:	2405387f 	li	a1,14463
    18ac:	96020088 	lhu	v0,136(s0)
    18b0:	30490008 	andi	t1,v0,0x8
    18b4:	11200006 	beqz	t1,18d0 <func_809F49A4+0x1ec>
    18b8:	304a0001 	andi	t2,v0,0x1
    18bc:	11400004 	beqz	t2,18d0 <func_809F49A4+0x1ec>
    18c0:	3c0140f0 	lui	at,0x40f0
    18c4:	44814000 	mtc1	at,$f8
    18c8:	00000000 	nop
    18cc:	e6080060 	swc1	$f8,96(s0)
    18d0:	8fbf0024 	lw	ra,36(sp)
    18d4:	8fb00020 	lw	s0,32(sp)
    18d8:	27bd0030 	addiu	sp,sp,48
    18dc:	03e00008 	jr	ra
    18e0:	00000000 	nop

000018e4 <func_809F4BA4>:
    18e4:	27bdffd0 	addiu	sp,sp,-48
    18e8:	afb00028 	sw	s0,40(sp)
    18ec:	00808025 	move	s0,a0
    18f0:	afbf002c 	sw	ra,44(sp)
    18f4:	3c040600 	lui	a0,0x600
    18f8:	afa50034 	sw	a1,52(sp)
    18fc:	0c000000 	jal	0 <EnDntNomal_Init>
    1900:	248406cc 	addiu	a0,a0,1740
    1904:	44822000 	mtc1	v0,$f4
    1908:	3c01c120 	lui	at,0xc120
    190c:	44819000 	mtc1	at,$f18
    1910:	468021a0 	cvt.s.w	$f6,$f4
    1914:	3c050600 	lui	a1,0x600
    1918:	24a506cc 	addiu	a1,a1,1740
    191c:	2604014c 	addiu	a0,s0,332
    1920:	3c063f80 	lui	a2,0x3f80
    1924:	24070000 	li	a3,0
    1928:	4600320d 	trunc.w.s	$f8,$f6
    192c:	440f4000 	mfc1	t7,$f8
    1930:	00000000 	nop
    1934:	a60f026e 	sh	t7,622(s0)
    1938:	8618026e 	lh	t8,622(s0)
    193c:	afa00014 	sw	zero,20(sp)
    1940:	e7b20018 	swc1	$f18,24(sp)
    1944:	44985000 	mtc1	t8,$f10
    1948:	00000000 	nop
    194c:	46805420 	cvt.s.w	$f16,$f10
    1950:	0c000000 	jal	0 <EnDntNomal_Init>
    1954:	e7b00010 	swc1	$f16,16(sp)
    1958:	3c0141a0 	lui	at,0x41a0
    195c:	24190001 	li	t9,1
    1960:	44816000 	mtc1	at,$f12
    1964:	0c000000 	jal	0 <EnDntNomal_Init>
    1968:	a2190218 	sb	t9,536(s0)
    196c:	4600010d 	trunc.w.s	$f4,$f0
    1970:	3c0141a0 	lui	at,0x41a0
    1974:	44815000 	mtc1	at,$f10
    1978:	240effff 	li	t6,-1
    197c:	44092000 	mfc1	t1,$f4
    1980:	a60e0272 	sh	t6,626(s0)
    1984:	3c010000 	lui	at,0x0
    1988:	00095400 	sll	t2,t1,0x10
    198c:	000a5c03 	sra	t3,t2,0x10
    1990:	448b3000 	mtc1	t3,$f6
    1994:	00000000 	nop
    1998:	46803220 	cvt.s.w	$f8,$f6
    199c:	460a4400 	add.s	$f16,$f8,$f10
    19a0:	4600848d 	trunc.w.s	$f18,$f16
    19a4:	440d9000 	mfc1	t5,$f18
    19a8:	00000000 	nop
    19ac:	a60d0264 	sh	t5,612(s0)
    19b0:	0c000000 	jal	0 <EnDntNomal_Init>
    19b4:	c42c0000 	lwc1	$f12,0(at)
    19b8:	3c013f80 	lui	at,0x3f80
    19bc:	44812000 	mtc1	at,$f4
    19c0:	3c180000 	lui	t8,0x0
    19c4:	240f0001 	li	t7,1
    19c8:	4604003c 	c.lt.s	$f0,$f4
    19cc:	27180000 	addiu	t8,t8,0
    19d0:	45020003 	bc1fl	19e0 <func_809F4BA4+0xfc>
    19d4:	ae180214 	sw	t8,532(s0)
    19d8:	a60f0272 	sh	t7,626(s0)
    19dc:	ae180214 	sw	t8,532(s0)
    19e0:	8fbf002c 	lw	ra,44(sp)
    19e4:	8fb00028 	lw	s0,40(sp)
    19e8:	27bd0030 	addiu	sp,sp,48
    19ec:	03e00008 	jr	ra
    19f0:	00000000 	nop

000019f4 <func_809F4CB4>:
    19f4:	27bdffd8 	addiu	sp,sp,-40
    19f8:	afb00020 	sw	s0,32(sp)
    19fc:	00808025 	move	s0,a0
    1a00:	afbf0024 	sw	ra,36(sp)
    1a04:	afa5002c 	sw	a1,44(sp)
    1a08:	0c000000 	jal	0 <EnDntNomal_Init>
    1a0c:	2484014c 	addiu	a0,a0,332
    1a10:	860e025a 	lh	t6,602(s0)
    1a14:	55c00010 	bnezl	t6,1a58 <func_809F4CB4+0x64>
    1a18:	86090264 	lh	t1,612(s0)
    1a1c:	860f0274 	lh	t7,628(s0)
    1a20:	24010001 	li	at,1
    1a24:	3c080000 	lui	t0,0x0
    1a28:	15e10007 	bne	t7,at,1a48 <func_809F4CB4+0x54>
    1a2c:	25080000 	addiu	t0,t0,0
    1a30:	3c190000 	lui	t9,0x0
    1a34:	24180004 	li	t8,4
    1a38:	27390000 	addiu	t9,t9,0
    1a3c:	a6180274 	sh	t8,628(s0)
    1a40:	10000040 	b	1b44 <func_809F4CB4+0x150>
    1a44:	ae190214 	sw	t9,532(s0)
    1a48:	a6000274 	sh	zero,628(s0)
    1a4c:	1000003d 	b	1b44 <func_809F4CB4+0x150>
    1a50:	ae080214 	sw	t0,532(s0)
    1a54:	86090264 	lh	t1,612(s0)
    1a58:	260400b6 	addiu	a0,s0,182
    1a5c:	24060003 	li	a2,3
    1a60:	1120001b 	beqz	t1,1ad0 <func_809F4CB4+0xdc>
    1a64:	24071388 	li	a3,5000
    1a68:	8605008a 	lh	a1,138(s0)
    1a6c:	0c000000 	jal	0 <EnDntNomal_Init>
    1a70:	afa00010 	sw	zero,16(sp)
    1a74:	860a0264 	lh	t2,612(s0)
    1a78:	24010001 	li	at,1
    1a7c:	15410031 	bne	t2,at,1b44 <func_809F4CB4+0x150>
    1a80:	3c0141a0 	lui	at,0x41a0
    1a84:	44816000 	mtc1	at,$f12
    1a88:	0c000000 	jal	0 <EnDntNomal_Init>
    1a8c:	00000000 	nop
    1a90:	4600010d 	trunc.w.s	$f4,$f0
    1a94:	3c0141a0 	lui	at,0x41a0
    1a98:	44815000 	mtc1	at,$f10
    1a9c:	86190272 	lh	t9,626(s0)
    1aa0:	440c2000 	mfc1	t4,$f4
    1aa4:	00194023 	negu	t0,t9
    1aa8:	000c6c00 	sll	t5,t4,0x10
    1aac:	000d7403 	sra	t6,t5,0x10
    1ab0:	448e3000 	mtc1	t6,$f6
    1ab4:	a6080272 	sh	t0,626(s0)
    1ab8:	46803220 	cvt.s.w	$f8,$f6
    1abc:	460a4400 	add.s	$f16,$f8,$f10
    1ac0:	4600848d 	trunc.w.s	$f18,$f16
    1ac4:	44189000 	mfc1	t8,$f18
    1ac8:	1000001e 	b	1b44 <func_809F4CB4+0x150>
    1acc:	a618025c 	sh	t8,604(s0)
    1ad0:	8602025c 	lh	v0,604(s0)
    1ad4:	5040001c 	beqzl	v0,1b48 <func_809F4CB4+0x154>
    1ad8:	8fbf0024 	lw	ra,36(sp)
    1adc:	860a0272 	lh	t2,626(s0)
    1ae0:	860900b6 	lh	t1,182(s0)
    1ae4:	24010001 	li	at,1
    1ae8:	000a5ac0 	sll	t3,t2,0xb
    1aec:	012b6021 	addu	t4,t1,t3
    1af0:	14410014 	bne	v0,at,1b44 <func_809F4CB4+0x150>
    1af4:	a60c00b6 	sh	t4,182(s0)
    1af8:	3c0141a0 	lui	at,0x41a0
    1afc:	44816000 	mtc1	at,$f12
    1b00:	0c000000 	jal	0 <EnDntNomal_Init>
    1b04:	00000000 	nop
    1b08:	4600010d 	trunc.w.s	$f4,$f0
    1b0c:	3c0141a0 	lui	at,0x41a0
    1b10:	44815000 	mtc1	at,$f10
    1b14:	440e2000 	mfc1	t6,$f4
    1b18:	00000000 	nop
    1b1c:	000e7c00 	sll	t7,t6,0x10
    1b20:	000fc403 	sra	t8,t7,0x10
    1b24:	44983000 	mtc1	t8,$f6
    1b28:	00000000 	nop
    1b2c:	46803220 	cvt.s.w	$f8,$f6
    1b30:	460a4400 	add.s	$f16,$f8,$f10
    1b34:	4600848d 	trunc.w.s	$f18,$f16
    1b38:	44089000 	mfc1	t0,$f18
    1b3c:	00000000 	nop
    1b40:	a6080264 	sh	t0,612(s0)
    1b44:	8fbf0024 	lw	ra,36(sp)
    1b48:	8fb00020 	lw	s0,32(sp)
    1b4c:	27bd0028 	addiu	sp,sp,40
    1b50:	03e00008 	jr	ra
    1b54:	00000000 	nop

00001b58 <func_809F4E18>:
    1b58:	27bdffd0 	addiu	sp,sp,-48
    1b5c:	afbf002c 	sw	ra,44(sp)
    1b60:	afb00028 	sw	s0,40(sp)
    1b64:	afa50034 	sw	a1,52(sp)
    1b68:	84820264 	lh	v0,612(a0)
    1b6c:	00808025 	move	s0,a0
    1b70:	24030001 	li	v1,1
    1b74:	1040000a 	beqz	v0,1ba0 <func_809F4E18+0x48>
    1b78:	00000000 	nop
    1b7c:	54620029 	bnel	v1,v0,1c24 <func_809F4E18+0xcc>
    1b80:	8fbf002c 	lw	ra,44(sp)
    1b84:	908e0276 	lbu	t6,630(a0)
    1b88:	546e0026 	bnel	v1,t6,1c24 <func_809F4E18+0xcc>
    1b8c:	8fbf002c 	lw	ra,44(sp)
    1b90:	0c000000 	jal	0 <EnDntNomal_Init>
    1b94:	24044806 	li	a0,18438
    1b98:	10000022 	b	1c24 <func_809F4E18+0xcc>
    1b9c:	8fbf002c 	lw	ra,44(sp)
    1ba0:	3c040600 	lui	a0,0x600
    1ba4:	0c000000 	jal	0 <EnDntNomal_Init>
    1ba8:	24840430 	addiu	a0,a0,1072
    1bac:	44822000 	mtc1	v0,$f4
    1bb0:	3c01c120 	lui	at,0xc120
    1bb4:	44819000 	mtc1	at,$f18
    1bb8:	468021a0 	cvt.s.w	$f6,$f4
    1bbc:	3c050600 	lui	a1,0x600
    1bc0:	24080002 	li	t0,2
    1bc4:	24a50430 	addiu	a1,a1,1072
    1bc8:	2604014c 	addiu	a0,s0,332
    1bcc:	3c063f80 	lui	a2,0x3f80
    1bd0:	4600320d 	trunc.w.s	$f8,$f6
    1bd4:	24070000 	li	a3,0
    1bd8:	44184000 	mfc1	t8,$f8
    1bdc:	00000000 	nop
    1be0:	a618026e 	sh	t8,622(s0)
    1be4:	8619026e 	lh	t9,622(s0)
    1be8:	afa80014 	sw	t0,20(sp)
    1bec:	e7b20018 	swc1	$f18,24(sp)
    1bf0:	44995000 	mtc1	t9,$f10
    1bf4:	00000000 	nop
    1bf8:	46805420 	cvt.s.w	$f16,$f10
    1bfc:	0c000000 	jal	0 <EnDntNomal_Init>
    1c00:	e7b00010 	swc1	$f16,16(sp)
    1c04:	a2000218 	sb	zero,536(s0)
    1c08:	02002025 	move	a0,s0
    1c0c:	0c000000 	jal	0 <EnDntNomal_Init>
    1c10:	2405387d 	li	a1,14461
    1c14:	3c090000 	lui	t1,0x0
    1c18:	25290000 	addiu	t1,t1,0
    1c1c:	ae090214 	sw	t1,532(s0)
    1c20:	8fbf002c 	lw	ra,44(sp)
    1c24:	8fb00028 	lw	s0,40(sp)
    1c28:	27bd0030 	addiu	sp,sp,48
    1c2c:	03e00008 	jr	ra
    1c30:	00000000 	nop

00001c34 <func_809F4EF4>:
    1c34:	27bdffb8 	addiu	sp,sp,-72
    1c38:	afbf0034 	sw	ra,52(sp)
    1c3c:	afb00030 	sw	s0,48(sp)
    1c40:	afa5004c 	sw	a1,76(sp)
    1c44:	c4840164 	lwc1	$f4,356(a0)
    1c48:	00808025 	move	s0,a0
    1c4c:	2484014c 	addiu	a0,a0,332
    1c50:	0c000000 	jal	0 <EnDntNomal_Init>
    1c54:	e7a40040 	swc1	$f4,64(sp)
    1c58:	860e026e 	lh	t6,622(s0)
    1c5c:	c7a60040 	lwc1	$f6,64(sp)
    1c60:	8fa4004c 	lw	a0,76(sp)
    1c64:	448e4000 	mtc1	t6,$f8
    1c68:	26050024 	addiu	a1,s0,36
    1c6c:	3c064080 	lui	a2,0x4080
    1c70:	468042a0 	cvt.s.w	$f10,$f8
    1c74:	00003825 	move	a3,zero
    1c78:	240f000a 	li	t7,10
    1c7c:	24180003 	li	t8,3
    1c80:	2419000f 	li	t9,15
    1c84:	2408ffff 	li	t0,-1
    1c88:	4606503e 	c.le.s	$f10,$f6
    1c8c:	2409000a 	li	t1,10
    1c90:	45020055 	bc1fl	1de8 <func_809F4EF4+0x1b4>
    1c94:	8fbf0034 	lw	ra,52(sp)
    1c98:	afaf0010 	sw	t7,16(sp)
    1c9c:	afb80014 	sw	t8,20(sp)
    1ca0:	afb90018 	sw	t9,24(sp)
    1ca4:	afa8001c 	sw	t0,28(sp)
    1ca8:	afa90020 	sw	t1,32(sp)
    1cac:	0c000000 	jal	0 <EnDntNomal_Init>
    1cb0:	afa00024 	sw	zero,36(sp)
    1cb4:	02002025 	move	a0,s0
    1cb8:	0c000000 	jal	0 <EnDntNomal_Init>
    1cbc:	2405387c 	li	a1,14460
    1cc0:	86020274 	lh	v0,628(s0)
    1cc4:	3c0a0000 	lui	t2,0x0
    1cc8:	24010002 	li	at,2
    1ccc:	1040000a 	beqz	v0,1cf8 <func_809F4EF4+0xc4>
    1cd0:	254a0000 	addiu	t2,t2,0
    1cd4:	1041000a 	beq	v0,at,1d00 <func_809F4EF4+0xcc>
    1cd8:	3c0b0000 	lui	t3,0x0
    1cdc:	24010003 	li	at,3
    1ce0:	1041000a 	beq	v0,at,1d0c <func_809F4EF4+0xd8>
    1ce4:	24010004 	li	at,4
    1ce8:	50410009 	beql	v0,at,1d10 <func_809F4EF4+0xdc>
    1cec:	3c0141a0 	lui	at,0x41a0
    1cf0:	1000003d 	b	1de8 <func_809F4EF4+0x1b4>
    1cf4:	8fbf0034 	lw	ra,52(sp)
    1cf8:	1000003a 	b	1de4 <func_809F4EF4+0x1b0>
    1cfc:	ae0a0214 	sw	t2,532(s0)
    1d00:	256b0000 	addiu	t3,t3,0
    1d04:	10000037 	b	1de4 <func_809F4EF4+0x1b0>
    1d08:	ae0b0214 	sw	t3,532(s0)
    1d0c:	3c0141a0 	lui	at,0x41a0
    1d10:	44819000 	mtc1	at,$f18
    1d14:	c6100028 	lwc1	$f16,40(s0)
    1d18:	8e070024 	lw	a3,36(s0)
    1d1c:	8fa5004c 	lw	a1,76(sp)
    1d20:	46128100 	add.s	$f4,$f16,$f18
    1d24:	240d0003 	li	t5,3
    1d28:	24060131 	li	a2,305
    1d2c:	24a41c24 	addiu	a0,a1,7204
    1d30:	e7a40010 	swc1	$f4,16(sp)
    1d34:	c608002c 	lwc1	$f8,44(s0)
    1d38:	afad0024 	sw	t5,36(sp)
    1d3c:	afa00020 	sw	zero,32(sp)
    1d40:	afa0001c 	sw	zero,28(sp)
    1d44:	afa00018 	sw	zero,24(sp)
    1d48:	0c000000 	jal	0 <EnDntNomal_Init>
    1d4c:	e7a80014 	swc1	$f8,20(sp)
    1d50:	10400020 	beqz	v0,1dd4 <func_809F4EF4+0x1a0>
    1d54:	00401825 	move	v1,v0
    1d58:	86020274 	lh	v0,628(s0)
    1d5c:	3c010000 	lui	at,0x0
    1d60:	2442fffd 	addiu	v0,v0,-3
    1d64:	00021400 	sll	v0,v0,0x10
    1d68:	00021403 	sra	v0,v0,0x10
    1d6c:	a4620150 	sh	v0,336(v1)
    1d70:	afa30044 	sw	v1,68(sp)
    1d74:	a7a2003e 	sh	v0,62(sp)
    1d78:	0c000000 	jal	0 <EnDntNomal_Init>
    1d7c:	c42c0000 	lwc1	$f12,0(at)
    1d80:	3c013f80 	lui	at,0x3f80
    1d84:	44813000 	mtc1	at,$f6
    1d88:	87a2003e 	lh	v0,62(sp)
    1d8c:	3c0140a0 	lui	at,0x40a0
    1d90:	4606003c 	c.lt.s	$f0,$f6
    1d94:	44815000 	mtc1	at,$f10
    1d98:	8fa30044 	lw	v1,68(sp)
    1d9c:	244e0001 	addiu	t6,v0,1
    1da0:	45020003 	bc1fl	1db0 <func_809F4EF4+0x17c>
    1da4:	846f0150 	lh	t7,336(v1)
    1da8:	a46e0150 	sh	t6,336(v1)
    1dac:	846f0150 	lh	t7,336(v1)
    1db0:	24010002 	li	at,2
    1db4:	e46a0060 	swc1	$f10,96(v1)
    1db8:	15e10004 	bne	t7,at,1dcc <func_809F4EF4+0x198>
    1dbc:	3c0140e0 	lui	at,0x40e0
    1dc0:	44818000 	mtc1	at,$f16
    1dc4:	00000000 	nop
    1dc8:	e4700060 	swc1	$f16,96(v1)
    1dcc:	0c000000 	jal	0 <EnDntNomal_Init>
    1dd0:	24044807 	li	a0,18439
    1dd4:	3c180000 	lui	t8,0x0
    1dd8:	27180000 	addiu	t8,t8,0
    1ddc:	a6000274 	sh	zero,628(s0)
    1de0:	ae180214 	sw	t8,532(s0)
    1de4:	8fbf0034 	lw	ra,52(sp)
    1de8:	8fb00030 	lw	s0,48(sp)
    1dec:	27bd0048 	addiu	sp,sp,72
    1df0:	03e00008 	jr	ra
    1df4:	00000000 	nop

00001df8 <func_809F50B8>:
    1df8:	afa50004 	sw	a1,4(sp)
    1dfc:	3c01428c 	lui	at,0x428c
    1e00:	44812000 	mtc1	at,$f4
    1e04:	c4860090 	lwc1	$f6,144(a0)
    1e08:	3c0e0000 	lui	t6,0x0
    1e0c:	25ce0000 	addiu	t6,t6,0
    1e10:	4606203c 	c.lt.s	$f4,$f6
    1e14:	00000000 	nop
    1e18:	45000002 	bc1f	1e24 <func_809F50B8+0x2c>
    1e1c:	00000000 	nop
    1e20:	ac8e0214 	sw	t6,532(a0)
    1e24:	03e00008 	jr	ra
    1e28:	00000000 	nop

00001e2c <func_809F50EC>:
    1e2c:	27bdffd0 	addiu	sp,sp,-48
    1e30:	afbf002c 	sw	ra,44(sp)
    1e34:	afb00028 	sw	s0,40(sp)
    1e38:	afa50034 	sw	a1,52(sp)
    1e3c:	848e0264 	lh	t6,612(a0)
    1e40:	00808025 	move	s0,a0
    1e44:	3c040600 	lui	a0,0x600
    1e48:	55c00027 	bnezl	t6,1ee8 <func_809F50EC+0xbc>
    1e4c:	8fbf002c 	lw	ra,44(sp)
    1e50:	0c000000 	jal	0 <EnDntNomal_Init>
    1e54:	2484031c 	addiu	a0,a0,796
    1e58:	44822000 	mtc1	v0,$f4
    1e5c:	3c01c120 	lui	at,0xc120
    1e60:	44819000 	mtc1	at,$f18
    1e64:	468021a0 	cvt.s.w	$f6,$f4
    1e68:	3c050600 	lui	a1,0x600
    1e6c:	24080002 	li	t0,2
    1e70:	24a5031c 	addiu	a1,a1,796
    1e74:	2604014c 	addiu	a0,s0,332
    1e78:	3c063f80 	lui	a2,0x3f80
    1e7c:	4600320d 	trunc.w.s	$f8,$f6
    1e80:	24070000 	li	a3,0
    1e84:	44184000 	mfc1	t8,$f8
    1e88:	00000000 	nop
    1e8c:	a618026e 	sh	t8,622(s0)
    1e90:	8619026e 	lh	t9,622(s0)
    1e94:	afa80014 	sw	t0,20(sp)
    1e98:	e7b20018 	swc1	$f18,24(sp)
    1e9c:	44995000 	mtc1	t9,$f10
    1ea0:	00000000 	nop
    1ea4:	46805420 	cvt.s.w	$f16,$f10
    1ea8:	0c000000 	jal	0 <EnDntNomal_Init>
    1eac:	e7b00010 	swc1	$f16,16(sp)
    1eb0:	8fa40034 	lw	a0,52(sp)
    1eb4:	240900ff 	li	t1,255
    1eb8:	240a0001 	li	t2,1
    1ebc:	a20900ae 	sb	t1,174(s0)
    1ec0:	a20a0218 	sb	t2,536(s0)
    1ec4:	a600025a 	sh	zero,602(s0)
    1ec8:	02003025 	move	a2,s0
    1ecc:	24070005 	li	a3,5
    1ed0:	0c000000 	jal	0 <EnDntNomal_Init>
    1ed4:	24851c24 	addiu	a1,a0,7204
    1ed8:	3c0b0000 	lui	t3,0x0
    1edc:	256b0000 	addiu	t3,t3,0
    1ee0:	ae0b0214 	sw	t3,532(s0)
    1ee4:	8fbf002c 	lw	ra,44(sp)
    1ee8:	8fb00028 	lw	s0,40(sp)
    1eec:	27bd0030 	addiu	sp,sp,48
    1ef0:	03e00008 	jr	ra
    1ef4:	00000000 	nop

00001ef8 <func_809F51B8>:
    1ef8:	27bdff80 	addiu	sp,sp,-128
    1efc:	afbf0034 	sw	ra,52(sp)
    1f00:	afb00030 	sw	s0,48(sp)
    1f04:	afa50084 	sw	a1,132(sp)
    1f08:	8ca31c44 	lw	v1,7236(a1)
    1f0c:	c4840164 	lwc1	$f4,356(a0)
    1f10:	00808025 	move	s0,a0
    1f14:	2484014c 	addiu	a0,a0,332
    1f18:	afa3007c 	sw	v1,124(sp)
    1f1c:	0c000000 	jal	0 <EnDntNomal_Init>
    1f20:	e7a40074 	swc1	$f4,116(sp)
    1f24:	8605008a 	lh	a1,138(s0)
    1f28:	afa00010 	sw	zero,16(sp)
    1f2c:	260400b6 	addiu	a0,s0,182
    1f30:	24060003 	li	a2,3
    1f34:	0c000000 	jal	0 <EnDntNomal_Init>
    1f38:	24071388 	li	a3,5000
    1f3c:	8fa3007c 	lw	v1,124(sp)
    1f40:	3c0141f0 	lui	at,0x41f0
    1f44:	c608027c 	lwc1	$f8,636(s0)
    1f48:	44819000 	mtc1	at,$f18
    1f4c:	c4660024 	lwc1	$f6,36(v1)
    1f50:	c46a0028 	lwc1	$f10,40(v1)
    1f54:	46083081 	sub.s	$f2,$f6,$f8
    1f58:	c468002c 	lwc1	$f8,44(v1)
    1f5c:	c6060280 	lwc1	$f6,640(s0)
    1f60:	46125100 	add.s	$f4,$f10,$f18
    1f64:	c60a0284 	lwc1	$f10,644(s0)
    1f68:	46021482 	mul.s	$f18,$f2,$f2
    1f6c:	460a4401 	sub.s	$f16,$f8,$f10
    1f70:	46062301 	sub.s	$f12,$f4,$f6
    1f74:	46108102 	mul.s	$f4,$f16,$f16
    1f78:	46049000 	add.s	$f0,$f18,$f4
    1f7c:	0c000000 	jal	0 <EnDntNomal_Init>
    1f80:	46000384 	sqrt.s	$f14,$f0
    1f84:	3c010000 	lui	at,0x0
    1f88:	c4260000 	lwc1	$f6,0(at)
    1f8c:	260400b4 	addiu	a0,s0,180
    1f90:	24060003 	li	a2,3
    1f94:	46060202 	mul.s	$f8,$f0,$f6
    1f98:	24071388 	li	a3,5000
    1f9c:	afa00010 	sw	zero,16(sp)
    1fa0:	4600428d 	trunc.w.s	$f10,$f8
    1fa4:	44055000 	mfc1	a1,$f10
    1fa8:	00000000 	nop
    1fac:	00052c00 	sll	a1,a1,0x10
    1fb0:	00052c03 	sra	a1,a1,0x10
    1fb4:	00052823 	negu	a1,a1
    1fb8:	00052c00 	sll	a1,a1,0x10
    1fbc:	0c000000 	jal	0 <EnDntNomal_Init>
    1fc0:	00052c03 	sra	a1,a1,0x10
    1fc4:	8618026e 	lh	t8,622(s0)
    1fc8:	c7b20074 	lwc1	$f18,116(sp)
    1fcc:	44982000 	mtc1	t8,$f4
    1fd0:	00000000 	nop
    1fd4:	468021a0 	cvt.s.w	$f6,$f4
    1fd8:	4612303e 	c.le.s	$f6,$f18
    1fdc:	00000000 	nop
    1fe0:	4502000e 	bc1fl	201c <func_809F51B8+0x124>
    1fe4:	860d025a 	lh	t5,602(s0)
    1fe8:	8619025a 	lh	t9,602(s0)
    1fec:	3c014120 	lui	at,0x4120
    1ff0:	5720000a 	bnezl	t9,201c <func_809F51B8+0x124>
    1ff4:	860d025a 	lh	t5,602(s0)
    1ff8:	44816000 	mtc1	at,$f12
    1ffc:	0c000000 	jal	0 <EnDntNomal_Init>
    2000:	00000000 	nop
    2004:	4600020d 	trunc.w.s	$f8,$f0
    2008:	440b4000 	mfc1	t3,$f8
    200c:	00000000 	nop
    2010:	256c000a 	addiu	t4,t3,10
    2014:	a60c025a 	sh	t4,602(s0)
    2018:	860d025a 	lh	t5,602(s0)
    201c:	24010001 	li	at,1
    2020:	3c0e0000 	lui	t6,0x0
    2024:	15a10004 	bne	t5,at,2038 <func_809F51B8+0x140>
    2028:	25ce0000 	addiu	t6,t6,0
    202c:	a2000277 	sb	zero,631(s0)
    2030:	1000005c 	b	21a4 <func_809F51B8+0x2ac>
    2034:	ae0e0214 	sw	t6,532(s0)
    2038:	3c014248 	lui	at,0x4248
    203c:	44812000 	mtc1	at,$f4
    2040:	c60a0090 	lwc1	$f10,144(s0)
    2044:	3c180000 	lui	t8,0x0
    2048:	240f0002 	li	t7,2
    204c:	4604503c 	c.lt.s	$f10,$f4
    2050:	27180000 	addiu	t8,t8,0
    2054:	3c014100 	lui	at,0x4100
    2058:	c7b20074 	lwc1	$f18,116(sp)
    205c:	45020005 	bc1fl	2074 <func_809F51B8+0x17c>
    2060:	44813000 	mtc1	at,$f6
    2064:	a60f0274 	sh	t7,628(s0)
    2068:	1000004e 	b	21a4 <func_809F51B8+0x2ac>
    206c:	ae180214 	sw	t8,532(s0)
    2070:	44813000 	mtc1	at,$f6
    2074:	00000000 	nop
    2078:	4612303e 	c.le.s	$f6,$f18
    207c:	00000000 	nop
    2080:	45020049 	bc1fl	21a8 <func_809F51B8+0x2b0>
    2084:	8fbf0034 	lw	ra,52(sp)
    2088:	92190277 	lbu	t9,631(s0)
    208c:	57200046 	bnezl	t9,21a8 <func_809F51B8+0x2b0>
    2090:	8fbf0034 	lw	ra,52(sp)
    2094:	860800b6 	lh	t0,182(s0)
    2098:	3c014700 	lui	at,0x4700
    209c:	44812000 	mtc1	at,$f4
    20a0:	44884000 	mtc1	t0,$f8
    20a4:	3c010000 	lui	at,0x0
    20a8:	c4260000 	lwc1	$f6,0(at)
    20ac:	468042a0 	cvt.s.w	$f10,$f8
    20b0:	00002825 	move	a1,zero
    20b4:	46045483 	div.s	$f18,$f10,$f4
    20b8:	46069302 	mul.s	$f12,$f18,$f6
    20bc:	0c000000 	jal	0 <EnDntNomal_Init>
    20c0:	00000000 	nop
    20c4:	860900b4 	lh	t1,180(s0)
    20c8:	3c014700 	lui	at,0x4700
    20cc:	44812000 	mtc1	at,$f4
    20d0:	44894000 	mtc1	t1,$f8
    20d4:	3c010000 	lui	at,0x0
    20d8:	c4260000 	lwc1	$f6,0(at)
    20dc:	468042a0 	cvt.s.w	$f10,$f8
    20e0:	24050001 	li	a1,1
    20e4:	46045483 	div.s	$f18,$f10,$f4
    20e8:	46069302 	mul.s	$f12,$f18,$f6
    20ec:	0c000000 	jal	0 <EnDntNomal_Init>
    20f0:	00000000 	nop
    20f4:	44800000 	mtc1	zero,$f0
    20f8:	3c0140a0 	lui	at,0x40a0
    20fc:	44814000 	mtc1	at,$f8
    2100:	27a4005c 	addiu	a0,sp,92
    2104:	27a50050 	addiu	a1,sp,80
    2108:	e7a0005c 	swc1	$f0,92(sp)
    210c:	e7a00060 	swc1	$f0,96(sp)
    2110:	0c000000 	jal	0 <EnDntNomal_Init>
    2114:	e7a80064 	swc1	$f8,100(sp)
    2118:	c60a027c 	lwc1	$f10,636(s0)
    211c:	c7a40050 	lwc1	$f4,80(sp)
    2120:	c6120280 	lwc1	$f18,640(s0)
    2124:	c7a60054 	lwc1	$f6,84(sp)
    2128:	46045000 	add.s	$f0,$f10,$f4
    212c:	c7aa0058 	lwc1	$f10,88(sp)
    2130:	c6080284 	lwc1	$f8,644(s0)
    2134:	46069080 	add.s	$f2,$f18,$f6
    2138:	8fa50084 	lw	a1,132(sp)
    213c:	44070000 	mfc1	a3,$f0
    2140:	460a4300 	add.s	$f12,$f8,$f10
    2144:	e7a20010 	swc1	$f2,16(sp)
    2148:	240d0004 	li	t5,4
    214c:	24060193 	li	a2,403
    2150:	e7ac0014 	swc1	$f12,20(sp)
    2154:	860a00b4 	lh	t2,180(s0)
    2158:	24a41c24 	addiu	a0,a1,7204
    215c:	afaa0018 	sw	t2,24(sp)
    2160:	860b00b6 	lh	t3,182(s0)
    2164:	afab001c 	sw	t3,28(sp)
    2168:	860c00b8 	lh	t4,184(s0)
    216c:	afad0024 	sw	t5,36(sp)
    2170:	0c000000 	jal	0 <EnDntNomal_Init>
    2174:	afac0020 	sw	t4,32(sp)
    2178:	10400006 	beqz	v0,2194 <func_809F51B8+0x29c>
    217c:	02002025 	move	a0,s0
    2180:	3c013f00 	lui	at,0x3f00
    2184:	44819000 	mtc1	at,$f18
    2188:	c7a40054 	lwc1	$f4,84(sp)
    218c:	46122182 	mul.s	$f6,$f4,$f18
    2190:	e4460060 	swc1	$f6,96(v0)
    2194:	0c000000 	jal	0 <EnDntNomal_Init>
    2198:	2405387e 	li	a1,14462
    219c:	240e0001 	li	t6,1
    21a0:	a20e0277 	sb	t6,631(s0)
    21a4:	8fbf0034 	lw	ra,52(sp)
    21a8:	8fb00030 	lw	s0,48(sp)
    21ac:	27bd0080 	addiu	sp,sp,128
    21b0:	03e00008 	jr	ra
    21b4:	00000000 	nop

000021b8 <func_809F5478>:
    21b8:	27bdffd0 	addiu	sp,sp,-48
    21bc:	afb00028 	sw	s0,40(sp)
    21c0:	00808025 	move	s0,a0
    21c4:	afbf002c 	sw	ra,44(sp)
    21c8:	3c040600 	lui	a0,0x600
    21cc:	afa50034 	sw	a1,52(sp)
    21d0:	0c000000 	jal	0 <EnDntNomal_Init>
    21d4:	24842e1c 	addiu	a0,a0,11804
    21d8:	44822000 	mtc1	v0,$f4
    21dc:	3c01c120 	lui	at,0xc120
    21e0:	44819000 	mtc1	at,$f18
    21e4:	468021a0 	cvt.s.w	$f6,$f4
    21e8:	3c050600 	lui	a1,0x600
    21ec:	24a52e1c 	addiu	a1,a1,11804
    21f0:	2604014c 	addiu	a0,s0,332
    21f4:	3c063fc0 	lui	a2,0x3fc0
    21f8:	24070000 	li	a3,0
    21fc:	4600320d 	trunc.w.s	$f8,$f6
    2200:	440f4000 	mfc1	t7,$f8
    2204:	00000000 	nop
    2208:	a60f026e 	sh	t7,622(s0)
    220c:	8618026e 	lh	t8,622(s0)
    2210:	afa00014 	sw	zero,20(sp)
    2214:	e7b20018 	swc1	$f18,24(sp)
    2218:	44985000 	mtc1	t8,$f10
    221c:	00000000 	nop
    2220:	46805420 	cvt.s.w	$f16,$f10
    2224:	0c000000 	jal	0 <EnDntNomal_Init>
    2228:	e7b00010 	swc1	$f16,16(sp)
    222c:	3c014080 	lui	at,0x4080
    2230:	44812000 	mtc1	at,$f4
    2234:	3c190000 	lui	t9,0x0
    2238:	27390000 	addiu	t9,t9,0
    223c:	a2000218 	sb	zero,536(s0)
    2240:	ae190214 	sw	t9,532(s0)
    2244:	e6040068 	swc1	$f4,104(s0)
    2248:	8fbf002c 	lw	ra,44(sp)
    224c:	8fb00028 	lw	s0,40(sp)
    2250:	27bd0030 	addiu	sp,sp,48
    2254:	03e00008 	jr	ra
    2258:	00000000 	nop

0000225c <func_809F551C>:
    225c:	27bdffd0 	addiu	sp,sp,-48
    2260:	afb00020 	sw	s0,32(sp)
    2264:	00808025 	move	s0,a0
    2268:	afbf0024 	sw	ra,36(sp)
    226c:	afa50034 	sw	a1,52(sp)
    2270:	0c000000 	jal	0 <EnDntNomal_Init>
    2274:	2484014c 	addiu	a0,a0,332
    2278:	c604021c 	lwc1	$f4,540(s0)
    227c:	c6060024 	lwc1	$f6,36(s0)
    2280:	c6080224 	lwc1	$f8,548(s0)
    2284:	c60a002c 	lwc1	$f10,44(s0)
    2288:	46062301 	sub.s	$f12,$f4,$f6
    228c:	460a4381 	sub.s	$f14,$f8,$f10
    2290:	e7ac002c 	swc1	$f12,44(sp)
    2294:	0c000000 	jal	0 <EnDntNomal_Init>
    2298:	e7ae0028 	swc1	$f14,40(sp)
    229c:	3c010000 	lui	at,0x0
    22a0:	c4300000 	lwc1	$f16,0(at)
    22a4:	260400b6 	addiu	a0,s0,182
    22a8:	24060001 	li	a2,1
    22ac:	46100482 	mul.s	$f18,$f0,$f16
    22b0:	24070bb8 	li	a3,3000
    22b4:	afa00010 	sw	zero,16(sp)
    22b8:	4600910d 	trunc.w.s	$f4,$f18
    22bc:	44052000 	mfc1	a1,$f4
    22c0:	00000000 	nop
    22c4:	00052c00 	sll	a1,a1,0x10
    22c8:	0c000000 	jal	0 <EnDntNomal_Init>
    22cc:	00052c03 	sra	a1,a1,0x10
    22d0:	8602025e 	lh	v0,606(s0)
    22d4:	240f000a 	li	t7,10
    22d8:	14400003 	bnez	v0,22e8 <func_809F551C+0x8c>
    22dc:	30580001 	andi	t8,v0,0x1
    22e0:	10000005 	b	22f8 <func_809F551C+0x9c>
    22e4:	a60f025e 	sh	t7,606(s0)
    22e8:	17000003 	bnez	t8,22f8 <func_809F551C+0x9c>
    22ec:	02002025 	move	a0,s0
    22f0:	0c000000 	jal	0 <EnDntNomal_Init>
    22f4:	2405387f 	li	a1,14463
    22f8:	c7a0002c 	lwc1	$f0,44(sp)
    22fc:	3c0140e0 	lui	at,0x40e0
    2300:	44811000 	mtc1	at,$f2
    2304:	46000005 	abs.s	$f0,$f0
    2308:	4602003c 	c.lt.s	$f0,$f2
    230c:	c7a00028 	lwc1	$f0,40(sp)
    2310:	4502000f 	bc1fl	2350 <func_809F551C+0xf4>
    2314:	8fbf0024 	lw	ra,36(sp)
    2318:	46000005 	abs.s	$f0,$f0
    231c:	3c190000 	lui	t9,0x0
    2320:	4602003c 	c.lt.s	$f0,$f2
    2324:	27390000 	addiu	t9,t9,0
    2328:	45020009 	bc1fl	2350 <func_809F551C+0xf4>
    232c:	8fbf0024 	lw	ra,36(sp)
    2330:	c606021c 	lwc1	$f6,540(s0)
    2334:	c6080224 	lwc1	$f8,548(s0)
    2338:	44805000 	mtc1	zero,$f10
    233c:	ae190214 	sw	t9,532(s0)
    2340:	e6060024 	swc1	$f6,36(s0)
    2344:	e608002c 	swc1	$f8,44(s0)
    2348:	e60a0068 	swc1	$f10,104(s0)
    234c:	8fbf0024 	lw	ra,36(sp)
    2350:	8fb00020 	lw	s0,32(sp)
    2354:	27bd0030 	addiu	sp,sp,48
    2358:	03e00008 	jr	ra
    235c:	00000000 	nop

00002360 <EnDntNomal_Update>:
    2360:	27bdffc8 	addiu	sp,sp,-56
    2364:	afbf0024 	sw	ra,36(sp)
    2368:	afb00020 	sw	s0,32(sp)
    236c:	afa5003c 	sw	a1,60(sp)
    2370:	84820258 	lh	v0,600(a0)
    2374:	00808025 	move	s0,a0
    2378:	3c0b0000 	lui	t3,0x0
    237c:	10400002 	beqz	v0,2388 <EnDntNomal_Update+0x28>
    2380:	244effff 	addiu	t6,v0,-1
    2384:	a60e0258 	sh	t6,600(s0)
    2388:	8602025a 	lh	v0,602(s0)
    238c:	10400002 	beqz	v0,2398 <EnDntNomal_Update+0x38>
    2390:	244fffff 	addiu	t7,v0,-1
    2394:	a60f025a 	sh	t7,602(s0)
    2398:	86020264 	lh	v0,612(s0)
    239c:	10400002 	beqz	v0,23a8 <EnDntNomal_Update+0x48>
    23a0:	2458ffff 	addiu	t8,v0,-1
    23a4:	a6180264 	sh	t8,612(s0)
    23a8:	8602025c 	lh	v0,604(s0)
    23ac:	10400002 	beqz	v0,23b8 <EnDntNomal_Update+0x58>
    23b0:	2459ffff 	addiu	t9,v0,-1
    23b4:	a619025c 	sh	t9,604(s0)
    23b8:	8602025e 	lh	v0,606(s0)
    23bc:	10400002 	beqz	v0,23c8 <EnDntNomal_Update+0x68>
    23c0:	2448ffff 	addiu	t0,v0,-1
    23c4:	a608025e 	sh	t0,606(s0)
    23c8:	86020260 	lh	v0,608(s0)
    23cc:	10400002 	beqz	v0,23d8 <EnDntNomal_Update+0x78>
    23d0:	2449ffff 	addiu	t1,v0,-1
    23d4:	a6090260 	sh	t1,608(s0)
    23d8:	8e0c0214 	lw	t4,532(s0)
    23dc:	860a00b4 	lh	t2,180(s0)
    23e0:	256b0000 	addiu	t3,t3,0
    23e4:	116c0003 	beq	t3,t4,23f4 <EnDntNomal_Update+0x94>
    23e8:	a60a0030 	sh	t2,48(s0)
    23ec:	860d00b6 	lh	t5,182(s0)
    23f0:	a60d0032 	sh	t5,50(s0)
    23f4:	860e0262 	lh	t6,610(s0)
    23f8:	8618026a 	lh	t8,618(s0)
    23fc:	25cf0001 	addiu	t7,t6,1
    2400:	1300003b 	beqz	t8,24f0 <L809F57B0>
    2404:	a60f0262 	sh	t7,610(s0)
    2408:	96190270 	lhu	t9,624(s0)
    240c:	2f210007 	sltiu	at,t9,7
    2410:	10200037 	beqz	at,24f0 <L809F57B0>
    2414:	0019c880 	sll	t9,t9,0x2
    2418:	3c010000 	lui	at,0x0
    241c:	00390821 	addu	at,at,t9
    2420:	8c390000 	lw	t9,0(at)
    2424:	03200008 	jr	t9
    2428:	00000000 	nop

0000242c <L809F56EC>:
    242c:	92080278 	lbu	t0,632(s0)
    2430:	3c0a0000 	lui	t2,0x0
    2434:	3c090000 	lui	t1,0x0
    2438:	15000004 	bnez	t0,244c <L809F56EC+0x20>
    243c:	254a0000 	addiu	t2,t2,0
    2440:	25290000 	addiu	t1,t1,0
    2444:	1000002a 	b	24f0 <L809F57B0>
    2448:	ae090214 	sw	t1,532(s0)
    244c:	10000028 	b	24f0 <L809F57B0>
    2450:	ae0a0214 	sw	t2,532(s0)

00002454 <L809F5714>:
    2454:	3c014040 	lui	at,0x4040
    2458:	44816000 	mtc1	at,$f12
    245c:	a6000274 	sh	zero,628(s0)
    2460:	0c000000 	jal	0 <EnDntNomal_Init>
    2464:	a20000ae 	sb	zero,174(s0)
    2468:	860b026a 	lh	t3,618(s0)
    246c:	3c013f00 	lui	at,0x3f00
    2470:	44814000 	mtc1	at,$f8
    2474:	448b2000 	mtc1	t3,$f4
    2478:	4600048d 	trunc.w.s	$f18,$f0
    247c:	3c0b0000 	lui	t3,0x0
    2480:	256b0000 	addiu	t3,t3,0
    2484:	468021a0 	cvt.s.w	$f6,$f4
    2488:	44099000 	mfc1	t1,$f18
    248c:	ae0b0214 	sw	t3,532(s0)
    2490:	46083282 	mul.s	$f10,$f6,$f8
    2494:	4600540d 	trunc.w.s	$f16,$f10
    2498:	440f8000 	mfc1	t7,$f16
    249c:	00000000 	nop
    24a0:	012f5021 	addu	t2,t1,t7
    24a4:	10000012 	b	24f0 <L809F57B0>
    24a8:	a60a0264 	sh	t2,612(s0)

000024ac <L809F576C>:
    24ac:	3c0d0000 	lui	t5,0x0
    24b0:	240c0001 	li	t4,1
    24b4:	25ad0000 	addiu	t5,t5,0
    24b8:	a60c0274 	sh	t4,628(s0)
    24bc:	1000000c 	b	24f0 <L809F57B0>
    24c0:	ae0d0214 	sw	t5,532(s0)

000024c4 <L809F5784>:
    24c4:	3c0e0000 	lui	t6,0x0
    24c8:	25ce0000 	addiu	t6,t6,0
    24cc:	10000008 	b	24f0 <L809F57B0>
    24d0:	ae0e0214 	sw	t6,532(s0)

000024d4 <L809F5794>:
    24d4:	3c180000 	lui	t8,0x0
    24d8:	27180000 	addiu	t8,t8,0
    24dc:	10000004 	b	24f0 <L809F57B0>
    24e0:	ae180214 	sw	t8,532(s0)

000024e4 <L809F57A4>:
    24e4:	3c190000 	lui	t9,0x0
    24e8:	27390000 	addiu	t9,t9,0
    24ec:	ae190214 	sw	t9,532(s0)

000024f0 <L809F57B0>:
    24f0:	86080270 	lh	t0,624(s0)
    24f4:	51000003 	beqzl	t0,2504 <L809F57B0+0x14>
    24f8:	86090260 	lh	t1,608(s0)
    24fc:	a6000270 	sh	zero,624(s0)
    2500:	86090260 	lh	t1,608(s0)
    2504:	55200011 	bnezl	t1,254c <L809F57B0+0x5c>
    2508:	8e190214 	lw	t9,532(s0)
    250c:	860f0268 	lh	t7,616(s0)
    2510:	25ea0001 	addiu	t2,t7,1
    2514:	a60a0268 	sh	t2,616(s0)
    2518:	860b0268 	lh	t3,616(s0)
    251c:	29610003 	slti	at,t3,3
    2520:	14200009 	bnez	at,2548 <L809F57B0+0x58>
    2524:	3c014270 	lui	at,0x4270
    2528:	44816000 	mtc1	at,$f12
    252c:	0c000000 	jal	0 <EnDntNomal_Init>
    2530:	a6000268 	sh	zero,616(s0)
    2534:	4600010d 	trunc.w.s	$f4,$f0
    2538:	44182000 	mfc1	t8,$f4
    253c:	00000000 	nop
    2540:	27190014 	addiu	t9,t8,20
    2544:	a6190260 	sh	t9,608(s0)
    2548:	8e190214 	lw	t9,532(s0)
    254c:	02002025 	move	a0,s0
    2550:	8fa5003c 	lw	a1,60(sp)
    2554:	0320f809 	jalr	t9
    2558:	00000000 	nop
    255c:	0c000000 	jal	0 <EnDntNomal_Init>
    2560:	02002025 	move	a0,s0
    2564:	3c0141a0 	lui	at,0x41a0
    2568:	44810000 	mtc1	at,$f0
    256c:	3c014270 	lui	at,0x4270
    2570:	44813000 	mtc1	at,$f6
    2574:	2408001d 	li	t0,29
    2578:	44060000 	mfc1	a2,$f0
    257c:	44070000 	mfc1	a3,$f0
    2580:	afa80014 	sw	t0,20(sp)
    2584:	8fa4003c 	lw	a0,60(sp)
    2588:	02002825 	move	a1,s0
    258c:	0c000000 	jal	0 <EnDntNomal_Init>
    2590:	e7a60010 	swc1	$f6,16(sp)
    2594:	8609026a 	lh	t1,618(s0)
    2598:	26060314 	addiu	a2,s0,788
    259c:	00c02825 	move	a1,a2
    25a0:	15200011 	bnez	t1,25e8 <L809F57B0+0xf8>
    25a4:	02002025 	move	a0,s0
    25a8:	26040294 	addiu	a0,s0,660
    25ac:	260f024c 	addiu	t7,s0,588
    25b0:	afaf0010 	sw	t7,16(sp)
    25b4:	afa4002c 	sw	a0,44(sp)
    25b8:	26050228 	addiu	a1,s0,552
    25bc:	26060234 	addiu	a2,s0,564
    25c0:	0c000000 	jal	0 <EnDntNomal_Init>
    25c4:	26070240 	addiu	a3,s0,576
    25c8:	8fa4003c 	lw	a0,60(sp)
    25cc:	3c010001 	lui	at,0x1
    25d0:	34211e60 	ori	at,at,0x1e60
    25d4:	8fa6002c 	lw	a2,44(sp)
    25d8:	0c000000 	jal	0 <EnDntNomal_Init>
    25dc:	00812821 	addu	a1,a0,at
    25e0:	1000000c 	b	2614 <L809F57B0+0x124>
    25e4:	8fbf0024 	lw	ra,36(sp)
    25e8:	0c000000 	jal	0 <EnDntNomal_Init>
    25ec:	afa6002c 	sw	a2,44(sp)
    25f0:	920b0218 	lbu	t3,536(s0)
    25f4:	8fa6002c 	lw	a2,44(sp)
    25f8:	8fa4003c 	lw	a0,60(sp)
    25fc:	11600004 	beqz	t3,2610 <L809F57B0+0x120>
    2600:	3c010001 	lui	at,0x1
    2604:	34211e60 	ori	at,at,0x1e60
    2608:	0c000000 	jal	0 <EnDntNomal_Init>
    260c:	00812821 	addu	a1,a0,at
    2610:	8fbf0024 	lw	ra,36(sp)
    2614:	8fb00020 	lw	s0,32(sp)
    2618:	27bd0038 	addiu	sp,sp,56
    261c:	03e00008 	jr	ra
    2620:	00000000 	nop

00002624 <func_809F58E4>:
    2624:	27bdffc0 	addiu	sp,sp,-64
    2628:	24010001 	li	at,1
    262c:	afbf0014 	sw	ra,20(sp)
    2630:	afa40040 	sw	a0,64(sp)
    2634:	afa60048 	sw	a2,72(sp)
    2638:	10a1000a 	beq	a1,at,2664 <func_809F58E4+0x40>
    263c:	afa7004c 	sw	a3,76(sp)
    2640:	24010003 	li	at,3
    2644:	10a10007 	beq	a1,at,2664 <func_809F58E4+0x40>
    2648:	24010004 	li	at,4
    264c:	10a10005 	beq	a1,at,2664 <func_809F58E4+0x40>
    2650:	24010005 	li	at,5
    2654:	10a10003 	beq	a1,at,2664 <func_809F58E4+0x40>
    2658:	24010006 	li	at,6
    265c:	54a1002d 	bnel	a1,at,2714 <func_809F58E4+0xf0>
    2660:	8fbf0014 	lw	ra,20(sp)
    2664:	8fae0040 	lw	t6,64(sp)
    2668:	3c060000 	lui	a2,0x0
    266c:	24c60000 	addiu	a2,a2,0
    2670:	8dc50000 	lw	a1,0(t6)
    2674:	27a40028 	addiu	a0,sp,40
    2678:	240706c5 	li	a3,1733
    267c:	0c000000 	jal	0 <EnDntNomal_Init>
    2680:	afa50038 	sw	a1,56(sp)
    2684:	8fa80038 	lw	t0,56(sp)
    2688:	3c18e700 	lui	t8,0xe700
    268c:	3c09fb00 	lui	t1,0xfb00
    2690:	8d0302c0 	lw	v1,704(t0)
    2694:	3c0d0000 	lui	t5,0x0
    2698:	25ad0000 	addiu	t5,t5,0
    269c:	246f0008 	addiu	t7,v1,8
    26a0:	ad0f02c0 	sw	t7,704(t0)
    26a4:	ac600004 	sw	zero,4(v1)
    26a8:	ac780000 	sw	t8,0(v1)
    26ac:	8d0302c0 	lw	v1,704(t0)
    26b0:	3c060000 	lui	a2,0x0
    26b4:	24c60000 	addiu	a2,a2,0
    26b8:	24790008 	addiu	t9,v1,8
    26bc:	ad1902c0 	sw	t9,704(t0)
    26c0:	ac690000 	sw	t1,0(v1)
    26c4:	8faa0054 	lw	t2,84(sp)
    26c8:	27a40028 	addiu	a0,sp,40
    26cc:	240706cf 	li	a3,1743
    26d0:	854b026a 	lh	t3,618(t2)
    26d4:	000b6080 	sll	t4,t3,0x2
    26d8:	018d1021 	addu	v0,t4,t5
    26dc:	904ffffe 	lbu	t7,-2(v0)
    26e0:	9049fffc 	lbu	t1,-4(v0)
    26e4:	904dfffd 	lbu	t5,-3(v0)
    26e8:	000fc200 	sll	t8,t7,0x8
    26ec:	00095600 	sll	t2,t1,0x18
    26f0:	030a5825 	or	t3,t8,t2
    26f4:	000d7400 	sll	t6,t5,0x10
    26f8:	016e7825 	or	t7,t3,t6
    26fc:	35f900ff 	ori	t9,t7,0xff
    2700:	ac790004 	sw	t9,4(v1)
    2704:	8fa90040 	lw	t1,64(sp)
    2708:	0c000000 	jal	0 <EnDntNomal_Init>
    270c:	8d250000 	lw	a1,0(t1)
    2710:	8fbf0014 	lw	ra,20(sp)
    2714:	27bd0040 	addiu	sp,sp,64
    2718:	00001025 	move	v0,zero
    271c:	03e00008 	jr	ra
    2720:	00000000 	nop

00002724 <func_809F59E4>:
    2724:	27bdffd8 	addiu	sp,sp,-40
    2728:	3c0e0000 	lui	t6,0x0
    272c:	afbf0014 	sw	ra,20(sp)
    2730:	afa40028 	sw	a0,40(sp)
    2734:	afa60030 	sw	a2,48(sp)
    2738:	afa70034 	sw	a3,52(sp)
    273c:	25ce0000 	addiu	t6,t6,0
    2740:	8dd80000 	lw	t8,0(t6)
    2744:	8fa60038 	lw	a2,56(sp)
    2748:	27a40018 	addiu	a0,sp,24
    274c:	ac980000 	sw	t8,0(a0)
    2750:	8dcf0004 	lw	t7,4(t6)
    2754:	24010007 	li	at,7
    2758:	ac8f0004 	sw	t7,4(a0)
    275c:	8dd80008 	lw	t8,8(t6)
    2760:	ac980008 	sw	t8,8(a0)
    2764:	84d9026a 	lh	t9,618(a2)
    2768:	17200008 	bnez	t9,278c <func_809F59E4+0x68>
    276c:	00000000 	nop
    2770:	24010005 	li	at,5
    2774:	54a1000a 	bnel	a1,at,27a0 <func_809F59E4+0x7c>
    2778:	8fbf0014 	lw	ra,20(sp)
    277c:	0c000000 	jal	0 <EnDntNomal_Init>
    2780:	24c5027c 	addiu	a1,a2,636
    2784:	10000006 	b	27a0 <func_809F59E4+0x7c>
    2788:	8fbf0014 	lw	ra,20(sp)
    278c:	54a10004 	bnel	a1,at,27a0 <func_809F59E4+0x7c>
    2790:	8fbf0014 	lw	ra,20(sp)
    2794:	0c000000 	jal	0 <EnDntNomal_Init>
    2798:	24c5027c 	addiu	a1,a2,636
    279c:	8fbf0014 	lw	ra,20(sp)
    27a0:	27bd0028 	addiu	sp,sp,40
    27a4:	03e00008 	jr	ra
    27a8:	00000000 	nop

000027ac <func_809F5A6C>:
    27ac:	27bdff90 	addiu	sp,sp,-112
    27b0:	3c0f0000 	lui	t7,0x0
    27b4:	afbf002c 	sw	ra,44(sp)
    27b8:	afb20028 	sw	s2,40(sp)
    27bc:	afb10024 	sw	s1,36(sp)
    27c0:	afb00020 	sw	s0,32(sp)
    27c4:	25ef0000 	addiu	t7,t7,0
    27c8:	8df90000 	lw	t9,0(t7)
    27cc:	27ae0060 	addiu	t6,sp,96
    27d0:	8df80004 	lw	t8,4(t7)
    27d4:	add90000 	sw	t9,0(t6)
    27d8:	8df90008 	lw	t9,8(t7)
    27dc:	00a09025 	move	s2,a1
    27e0:	add80004 	sw	t8,4(t6)
    27e4:	add90008 	sw	t9,8(t6)
    27e8:	8ca50000 	lw	a1,0(a1)
    27ec:	00808825 	move	s1,a0
    27f0:	3c060000 	lui	a2,0x0
    27f4:	24c60000 	addiu	a2,a2,0
    27f8:	27a40048 	addiu	a0,sp,72
    27fc:	240706fe 	li	a3,1790
    2800:	0c000000 	jal	0 <EnDntNomal_Init>
    2804:	00a08025 	move	s0,a1
    2808:	0c000000 	jal	0 <EnDntNomal_Init>
    280c:	8e440000 	lw	a0,0(s2)
    2810:	8e0202c0 	lw	v0,704(s0)
    2814:	3c09db06 	lui	t1,0xdb06
    2818:	35290020 	ori	t1,t1,0x20
    281c:	24480008 	addiu	t0,v0,8
    2820:	ae0802c0 	sw	t0,704(s0)
    2824:	ac490000 	sw	t1,0(v0)
    2828:	862a0268 	lh	t2,616(s1)
    282c:	3c040000 	lui	a0,0x0
    2830:	3c180000 	lui	t8,0x0
    2834:	000a5880 	sll	t3,t2,0x2
    2838:	008b2021 	addu	a0,a0,t3
    283c:	8c840000 	lw	a0,0(a0)
    2840:	3c0100ff 	lui	at,0xff
    2844:	3421ffff 	ori	at,at,0xffff
    2848:	00046900 	sll	t5,a0,0x4
    284c:	000d7702 	srl	t6,t5,0x1c
    2850:	000e7880 	sll	t7,t6,0x2
    2854:	030fc021 	addu	t8,t8,t7
    2858:	8f180000 	lw	t8,0(t8)
    285c:	00816024 	and	t4,a0,at
    2860:	3c018000 	lui	at,0x8000
    2864:	0198c821 	addu	t9,t4,t8
    2868:	03214021 	addu	t0,t9,at
    286c:	ac480004 	sw	t0,4(v0)
    2870:	3c090000 	lui	t1,0x0
    2874:	25290000 	addiu	t1,t1,0
    2878:	8e26016c 	lw	a2,364(s1)
    287c:	8e250150 	lw	a1,336(s1)
    2880:	3c070000 	lui	a3,0x0
    2884:	24e70000 	addiu	a3,a3,0
    2888:	afb10014 	sw	s1,20(sp)
    288c:	afa90010 	sw	t1,16(sp)
    2890:	0c000000 	jal	0 <EnDntNomal_Init>
    2894:	02402025 	move	a0,s2
    2898:	c62c021c 	lwc1	$f12,540(s1)
    289c:	c62e0220 	lwc1	$f14,544(s1)
    28a0:	8e260224 	lw	a2,548(s1)
    28a4:	0c000000 	jal	0 <EnDntNomal_Init>
    28a8:	00003825 	move	a3,zero
    28ac:	3c010000 	lui	at,0x0
    28b0:	c42c0000 	lwc1	$f12,0(at)
    28b4:	24070001 	li	a3,1
    28b8:	44066000 	mfc1	a2,$f12
    28bc:	0c000000 	jal	0 <EnDntNomal_Init>
    28c0:	46006386 	mov.s	$f14,$f12
    28c4:	8e0202c0 	lw	v0,704(s0)
    28c8:	3c0be700 	lui	t3,0xe700
    28cc:	3c0efb00 	lui	t6,0xfb00
    28d0:	244a0008 	addiu	t2,v0,8
    28d4:	ae0a02c0 	sw	t2,704(s0)
    28d8:	ac4b0000 	sw	t3,0(v0)
    28dc:	ac400004 	sw	zero,4(v0)
    28e0:	8e0202c0 	lw	v0,704(s0)
    28e4:	3c180000 	lui	t8,0x0
    28e8:	27180000 	addiu	t8,t8,0
    28ec:	244d0008 	addiu	t5,v0,8
    28f0:	ae0d02c0 	sw	t5,704(s0)
    28f4:	ac4e0000 	sw	t6,0(v0)
    28f8:	862f026a 	lh	t7,618(s1)
    28fc:	3c050000 	lui	a1,0x0
    2900:	24a50000 	addiu	a1,a1,0
    2904:	000f6080 	sll	t4,t7,0x2
    2908:	01981821 	addu	v1,t4,t8
    290c:	9068fffe 	lbu	t0,-2(v1)
    2910:	906bfffc 	lbu	t3,-4(v1)
    2914:	906cfffd 	lbu	t4,-3(v1)
    2918:	00084a00 	sll	t1,t0,0x8
    291c:	000b6e00 	sll	t5,t3,0x18
    2920:	012d7025 	or	t6,t1,t5
    2924:	000cc400 	sll	t8,t4,0x10
    2928:	01d8c825 	or	t9,t6,t8
    292c:	372800ff 	ori	t0,t9,0xff
    2930:	ac480004 	sw	t0,4(v0)
    2934:	8e0202c0 	lw	v0,704(s0)
    2938:	3c0bda38 	lui	t3,0xda38
    293c:	356b0003 	ori	t3,t3,0x3
    2940:	244a0008 	addiu	t2,v0,8
    2944:	ae0a02c0 	sw	t2,704(s0)
    2948:	ac4b0000 	sw	t3,0(v0)
    294c:	8e440000 	lw	a0,0(s2)
    2950:	24060716 	li	a2,1814
    2954:	0c000000 	jal	0 <EnDntNomal_Init>
    2958:	afa20038 	sw	v0,56(sp)
    295c:	8fa30038 	lw	v1,56(sp)
    2960:	3c0f0600 	lui	t7,0x600
    2964:	25ef1b00 	addiu	t7,t7,6912
    2968:	ac620004 	sw	v0,4(v1)
    296c:	8e0202c0 	lw	v0,704(s0)
    2970:	3c0dde00 	lui	t5,0xde00
    2974:	3c060000 	lui	a2,0x0
    2978:	24490008 	addiu	t1,v0,8
    297c:	ae0902c0 	sw	t1,704(s0)
    2980:	ac4f0004 	sw	t7,4(v0)
    2984:	ac4d0000 	sw	t5,0(v0)
    2988:	8e450000 	lw	a1,0(s2)
    298c:	24c60000 	addiu	a2,a2,0
    2990:	27a40048 	addiu	a0,sp,72
    2994:	0c000000 	jal	0 <EnDntNomal_Init>
    2998:	24070719 	li	a3,1817
    299c:	8e2e0214 	lw	t6,532(s1)
    29a0:	3c0c0000 	lui	t4,0x0
    29a4:	258c0000 	addiu	t4,t4,0
    29a8:	158e0005 	bne	t4,t6,29c0 <func_809F5A6C+0x214>
    29ac:	26240024 	addiu	a0,s1,36
    29b0:	27a50060 	addiu	a1,sp,96
    29b4:	240600ff 	li	a2,255
    29b8:	0c000000 	jal	0 <EnDntNomal_Init>
    29bc:	02403825 	move	a3,s2
    29c0:	8fbf002c 	lw	ra,44(sp)
    29c4:	8fb00020 	lw	s0,32(sp)
    29c8:	8fb10024 	lw	s1,36(sp)
    29cc:	8fb20028 	lw	s2,40(sp)
    29d0:	03e00008 	jr	ra
    29d4:	27bd0070 	addiu	sp,sp,112

000029d8 <func_809F5C98>:
    29d8:	27bdffa8 	addiu	sp,sp,-88
    29dc:	afb20028 	sw	s2,40(sp)
    29e0:	00a09025 	move	s2,a1
    29e4:	afbf002c 	sw	ra,44(sp)
    29e8:	afb10024 	sw	s1,36(sp)
    29ec:	afb00020 	sw	s0,32(sp)
    29f0:	8ca50000 	lw	a1,0(a1)
    29f4:	00808025 	move	s0,a0
    29f8:	3c060000 	lui	a2,0x0
    29fc:	24c60000 	addiu	a2,a2,0
    2a00:	27a40040 	addiu	a0,sp,64
    2a04:	24070729 	li	a3,1833
    2a08:	0c000000 	jal	0 <EnDntNomal_Init>
    2a0c:	00a08825 	move	s1,a1
    2a10:	0c000000 	jal	0 <EnDntNomal_Init>
    2a14:	8e440000 	lw	a0,0(s2)
    2a18:	3c0e0000 	lui	t6,0x0
    2a1c:	25ce0000 	addiu	t6,t6,0
    2a20:	8e050150 	lw	a1,336(s0)
    2a24:	8e06016c 	lw	a2,364(s0)
    2a28:	afb00014 	sw	s0,20(sp)
    2a2c:	afae0010 	sw	t6,16(sp)
    2a30:	02402025 	move	a0,s2
    2a34:	0c000000 	jal	0 <EnDntNomal_Init>
    2a38:	00003825 	move	a3,zero
    2a3c:	c60c021c 	lwc1	$f12,540(s0)
    2a40:	c60e0220 	lwc1	$f14,544(s0)
    2a44:	8e060224 	lw	a2,548(s0)
    2a48:	0c000000 	jal	0 <EnDntNomal_Init>
    2a4c:	00003825 	move	a3,zero
    2a50:	3c010000 	lui	at,0x0
    2a54:	c42c0000 	lwc1	$f12,0(at)
    2a58:	24070001 	li	a3,1
    2a5c:	44066000 	mfc1	a2,$f12
    2a60:	0c000000 	jal	0 <EnDntNomal_Init>
    2a64:	46006386 	mov.s	$f14,$f12
    2a68:	8e2202c0 	lw	v0,704(s1)
    2a6c:	3c18da38 	lui	t8,0xda38
    2a70:	37180003 	ori	t8,t8,0x3
    2a74:	244f0008 	addiu	t7,v0,8
    2a78:	ae2f02c0 	sw	t7,704(s1)
    2a7c:	3c050000 	lui	a1,0x0
    2a80:	ac580000 	sw	t8,0(v0)
    2a84:	8e440000 	lw	a0,0(s2)
    2a88:	24a50000 	addiu	a1,a1,0
    2a8c:	24060738 	li	a2,1848
    2a90:	0c000000 	jal	0 <EnDntNomal_Init>
    2a94:	00408025 	move	s0,v0
    2a98:	ae020004 	sw	v0,4(s0)
    2a9c:	8e2202c0 	lw	v0,704(s1)
    2aa0:	3c090600 	lui	t1,0x600
    2aa4:	252914e0 	addiu	t1,t1,5344
    2aa8:	24590008 	addiu	t9,v0,8
    2aac:	ae3902c0 	sw	t9,704(s1)
    2ab0:	3c08de00 	lui	t0,0xde00
    2ab4:	3c060000 	lui	a2,0x0
    2ab8:	ac480000 	sw	t0,0(v0)
    2abc:	ac490004 	sw	t1,4(v0)
    2ac0:	8e450000 	lw	a1,0(s2)
    2ac4:	24c60000 	addiu	a2,a2,0
    2ac8:	27a40040 	addiu	a0,sp,64
    2acc:	0c000000 	jal	0 <EnDntNomal_Init>
    2ad0:	2407073b 	li	a3,1851
    2ad4:	8fbf002c 	lw	ra,44(sp)
    2ad8:	8fb00020 	lw	s0,32(sp)
    2adc:	8fb10024 	lw	s1,36(sp)
    2ae0:	8fb20028 	lw	s2,40(sp)
    2ae4:	03e00008 	jr	ra
    2ae8:	27bd0058 	addiu	sp,sp,88
    2aec:	00000000 	nop
