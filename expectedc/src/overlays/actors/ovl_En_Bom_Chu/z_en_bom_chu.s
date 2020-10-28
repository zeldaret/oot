
build/src/overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBomChu_Init>:
       0:	27bdfe28 	addiu	sp,sp,-472
       4:	afa501dc 	sw	a1,476(sp)
       8:	afbf0024 	sw	ra,36(sp)
       c:	afb00020 	sw	s0,32(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnBomChu_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	26050184 	addiu	a1,s0,388
      24:	afa5002c 	sw	a1,44(sp)
      28:	0c000000 	jal	0 <EnBomChu_Init>
      2c:	8fa401dc 	lw	a0,476(sp)
      30:	3c070000 	lui	a3,0x0
      34:	260e01a4 	addiu	t6,s0,420
      38:	8fa5002c 	lw	a1,44(sp)
      3c:	afae0010 	sw	t6,16(sp)
      40:	24e70000 	addiu	a3,a3,0
      44:	8fa401dc 	lw	a0,476(sp)
      48:	0c000000 	jal	0 <EnBomChu_Init>
      4c:	02003025 	move	a2,s0
      50:	8e0201a0 	lw	v0,416(s0)
      54:	3c0a0000 	lui	t2,0x0
      58:	3c0b0000 	lui	t3,0x0
      5c:	844f002e 	lh	t7,46(v0)
      60:	3c180000 	lui	t8,0x0
      64:	3c190000 	lui	t9,0x0
      68:	a44f0036 	sh	t7,54(v0)
      6c:	3c080000 	lui	t0,0x0
      70:	3c090000 	lui	t1,0x0
      74:	916b0000 	lbu	t3,0(t3)
      78:	914a0000 	lbu	t2,0(t2)
      7c:	93180000 	lbu	t8,0(t8)
      80:	93390000 	lbu	t9,0(t9)
      84:	91080000 	lbu	t0,0(t0)
      88:	91290000 	lbu	t1,0(t1)
      8c:	3c0c0000 	lui	t4,0x0
      90:	3c0d0000 	lui	t5,0x0
      94:	91ad0000 	lbu	t5,0(t5)
      98:	918c0000 	lbu	t4,0(t4)
      9c:	a3ab01bd 	sb	t3,445(sp)
      a0:	a3aa01b9 	sb	t2,441(sp)
      a4:	a3b801b8 	sb	t8,440(sp)
      a8:	a3b901bc 	sb	t9,444(sp)
      ac:	a3a801c0 	sb	t0,448(sp)
      b0:	a3a901c4 	sb	t1,452(sp)
      b4:	3c090000 	lui	t1,0x0
      b8:	3c080000 	lui	t0,0x0
      bc:	3c190000 	lui	t9,0x0
      c0:	3c180000 	lui	t8,0x0
      c4:	3c0a0000 	lui	t2,0x0
      c8:	3c0b0000 	lui	t3,0x0
      cc:	3c0f0000 	lui	t7,0x0
      d0:	3c0e0000 	lui	t6,0x0
      d4:	91ce0000 	lbu	t6,0(t6)
      d8:	91ef0000 	lbu	t7,0(t7)
      dc:	916b0000 	lbu	t3,0(t3)
      e0:	914a0000 	lbu	t2,0(t2)
      e4:	93180000 	lbu	t8,0(t8)
      e8:	93390000 	lbu	t9,0(t9)
      ec:	91080000 	lbu	t0,0(t0)
      f0:	91290000 	lbu	t1,0(t1)
      f4:	a3ad01c5 	sb	t5,453(sp)
      f8:	a3ac01c1 	sb	t4,449(sp)
      fc:	240c0010 	li	t4,16
     100:	27ad0034 	addiu	t5,sp,52
     104:	afac01c8 	sw	t4,456(sp)
     108:	afa001cc 	sw	zero,460(sp)
     10c:	afa001d0 	sw	zero,464(sp)
     110:	afad0014 	sw	t5,20(sp)
     114:	afa00010 	sw	zero,16(sp)
     118:	8fa401dc 	lw	a0,476(sp)
     11c:	2605017c 	addiu	a1,s0,380
     120:	24060001 	li	a2,1
     124:	00003825 	move	a3,zero
     128:	a3ae01ba 	sb	t6,442(sp)
     12c:	a3af01be 	sb	t7,446(sp)
     130:	a3ab01c7 	sb	t3,455(sp)
     134:	a3aa01c3 	sb	t2,451(sp)
     138:	a3b801c2 	sb	t8,450(sp)
     13c:	a3b901c6 	sb	t9,454(sp)
     140:	a3a801bb 	sb	t0,443(sp)
     144:	0c000000 	jal	0 <EnBomChu_Init>
     148:	a3a901bf 	sb	t1,447(sp)
     14c:	27ae0034 	addiu	t6,sp,52
     150:	afae0014 	sw	t6,20(sp)
     154:	8fa401dc 	lw	a0,476(sp)
     158:	26050180 	addiu	a1,s0,384
     15c:	24060001 	li	a2,1
     160:	00003825 	move	a3,zero
     164:	0c000000 	jal	0 <EnBomChu_Init>
     168:	afa00010 	sw	zero,16(sp)
     16c:	3c190000 	lui	t9,0x0
     170:	240fffff 	li	t7,-1
     174:	24180078 	li	t8,120
     178:	27390000 	addiu	t9,t9,0
     17c:	a20f0003 	sb	t7,3(s0)
     180:	a6180150 	sh	t8,336(s0)
     184:	ae19014c 	sw	t9,332(s0)
     188:	8fbf0024 	lw	ra,36(sp)
     18c:	8fb00020 	lw	s0,32(sp)
     190:	27bd01d8 	addiu	sp,sp,472
     194:	03e00008 	jr	ra
     198:	00000000 	nop

0000019c <EnBomChu_Destroy>:
     19c:	27bdffe8 	addiu	sp,sp,-24
     1a0:	afa40018 	sw	a0,24(sp)
     1a4:	8fae0018 	lw	t6,24(sp)
     1a8:	afbf0014 	sw	ra,20(sp)
     1ac:	afa5001c 	sw	a1,28(sp)
     1b0:	00a02025 	move	a0,a1
     1b4:	0c000000 	jal	0 <EnBomChu_Init>
     1b8:	8dc5017c 	lw	a1,380(t6)
     1bc:	8faf0018 	lw	t7,24(sp)
     1c0:	8fa4001c 	lw	a0,28(sp)
     1c4:	0c000000 	jal	0 <EnBomChu_Init>
     1c8:	8de50180 	lw	a1,384(t7)
     1cc:	8fa50018 	lw	a1,24(sp)
     1d0:	8fa4001c 	lw	a0,28(sp)
     1d4:	0c000000 	jal	0 <EnBomChu_Init>
     1d8:	24a50184 	addiu	a1,a1,388
     1dc:	8fbf0014 	lw	ra,20(sp)
     1e0:	27bd0018 	addiu	sp,sp,24
     1e4:	03e00008 	jr	ra
     1e8:	00000000 	nop

000001ec <func_809C5A1C>:
     1ec:	27bdff98 	addiu	sp,sp,-104
     1f0:	afb40060 	sw	s4,96(sp)
     1f4:	0080a025 	move	s4,a0
     1f8:	afbf0064 	sw	ra,100(sp)
     1fc:	afb3005c 	sw	s3,92(sp)
     200:	afb20058 	sw	s2,88(sp)
     204:	afb10054 	sw	s1,84(sp)
     208:	afb00050 	sw	s0,80(sp)
     20c:	f7ba0048 	sdc1	$f26,72(sp)
     210:	f7b80040 	sdc1	$f24,64(sp)
     214:	f7b60038 	sdc1	$f22,56(sp)
     218:	f7b40030 	sdc1	$f20,48(sp)
     21c:	c6840028 	lwc1	$f4,40(s4)
     220:	8e870024 	lw	a3,36(s4)
     224:	00a09825 	move	s3,a1
     228:	e7a40010 	swc1	$f4,16(sp)
     22c:	c686002c 	lwc1	$f6,44(s4)
     230:	afa00024 	sw	zero,36(sp)
     234:	afa00020 	sw	zero,32(sp)
     238:	afa0001c 	sw	zero,28(sp)
     23c:	afa00018 	sw	zero,24(sp)
     240:	24a41c24 	addiu	a0,a1,7204
     244:	24060010 	li	a2,16
     248:	0c000000 	jal	0 <EnBomChu_Init>
     24c:	e7a60014 	swc1	$f6,20(sp)
     250:	10400002 	beqz	v0,25c <func_809C5A1C+0x70>
     254:	00008025 	move	s0,zero
     258:	a44001f8 	sh	zero,504(v0)
     25c:	44800000 	mtc1	zero,$f0
     260:	c6880084 	lwc1	$f8,132(s4)
     264:	240e0001 	li	t6,1
     268:	a68e0150 	sh	t6,336(s4)
     26c:	4608003c 	c.lt.s	$f0,$f8
     270:	26910024 	addiu	s1,s4,36
     274:	3c013e80 	lui	at,0x3e80
     278:	e6800068 	swc1	$f0,104(s4)
     27c:	45000013 	bc1f	2cc <func_809C5A1C+0xe0>
     280:	00000000 	nop
     284:	4481d000 	mtc1	at,$f26
     288:	3c0141f0 	lui	at,0x41f0
     28c:	4481c000 	mtc1	at,$f24
     290:	3c0140a0 	lui	at,0x40a0
     294:	4481b000 	mtc1	at,$f22
     298:	3c013f80 	lui	at,0x3f80
     29c:	4481a000 	mtc1	at,$f20
     2a0:	24120028 	li	s2,40
     2a4:	4406a000 	mfc1	a2,$f20
     2a8:	4407b000 	mfc1	a3,$f22
     2ac:	02602025 	move	a0,s3
     2b0:	02202825 	move	a1,s1
     2b4:	e7b80010 	swc1	$f24,16(sp)
     2b8:	0c000000 	jal	0 <EnBomChu_Init>
     2bc:	e7ba0014 	swc1	$f26,20(sp)
     2c0:	26100001 	addiu	s0,s0,1
     2c4:	5612fff8 	bnel	s0,s2,2a8 <func_809C5A1C+0xbc>
     2c8:	4406a000 	mfc1	a2,$f20
     2cc:	3c0f0000 	lui	t7,0x0
     2d0:	25ef0000 	addiu	t7,t7,0
     2d4:	ae8f014c 	sw	t7,332(s4)
     2d8:	8fbf0064 	lw	ra,100(sp)
     2dc:	8fb40060 	lw	s4,96(sp)
     2e0:	8fb3005c 	lw	s3,92(sp)
     2e4:	8fb20058 	lw	s2,88(sp)
     2e8:	8fb10054 	lw	s1,84(sp)
     2ec:	8fb00050 	lw	s0,80(sp)
     2f0:	d7ba0048 	ldc1	$f26,72(sp)
     2f4:	d7b80040 	ldc1	$f24,64(sp)
     2f8:	d7b60038 	ldc1	$f22,56(sp)
     2fc:	d7b40030 	ldc1	$f20,48(sp)
     300:	03e00008 	jr	ra
     304:	27bd0068 	addiu	sp,sp,104

00000308 <func_809C5B38>:
     308:	c4840004 	lwc1	$f4,4(a0)
     30c:	c4a60008 	lwc1	$f6,8(a1)
     310:	c48a0008 	lwc1	$f10,8(a0)
     314:	c4b00004 	lwc1	$f16,4(a1)
     318:	46062202 	mul.s	$f8,$f4,$f6
     31c:	00000000 	nop
     320:	46105482 	mul.s	$f18,$f10,$f16
     324:	46124101 	sub.s	$f4,$f8,$f18
     328:	e4c40000 	swc1	$f4,0(a2)
     32c:	c4aa0000 	lwc1	$f10,0(a1)
     330:	c4860008 	lwc1	$f6,8(a0)
     334:	c4880000 	lwc1	$f8,0(a0)
     338:	c4b20008 	lwc1	$f18,8(a1)
     33c:	460a3402 	mul.s	$f16,$f6,$f10
     340:	00000000 	nop
     344:	46124102 	mul.s	$f4,$f8,$f18
     348:	46048181 	sub.s	$f6,$f16,$f4
     34c:	e4c60004 	swc1	$f6,4(a2)
     350:	c4a80004 	lwc1	$f8,4(a1)
     354:	c48a0000 	lwc1	$f10,0(a0)
     358:	c4a40000 	lwc1	$f4,0(a1)
     35c:	c4900004 	lwc1	$f16,4(a0)
     360:	46085482 	mul.s	$f18,$f10,$f8
     364:	00000000 	nop
     368:	46048182 	mul.s	$f6,$f16,$f4
     36c:	46069281 	sub.s	$f10,$f18,$f6
     370:	03e00008 	jr	ra
     374:	e4ca0008 	swc1	$f10,8(a2)

00000378 <func_809C5BA8>:
     378:	27bdff70 	addiu	sp,sp,-144
     37c:	3c010000 	lui	at,0x0
     380:	c4220000 	lwc1	$f2,0(at)
     384:	afbf001c 	sw	ra,28(sp)
     388:	afb00018 	sw	s0,24(sp)
     38c:	afa60098 	sw	a2,152(sp)
     390:	ac850078 	sw	a1,120(a0)
     394:	84ae0008 	lh	t6,8(a1)
     398:	3c013f80 	lui	at,0x3f80
     39c:	00808025 	move	s0,a0
     3a0:	448e2000 	mtc1	t6,$f4
     3a4:	00000000 	nop
     3a8:	468021a0 	cvt.s.w	$f6,$f4
     3ac:	46023202 	mul.s	$f8,$f6,$f2
     3b0:	e7a80084 	swc1	$f8,132(sp)
     3b4:	84af000a 	lh	t7,10(a1)
     3b8:	448f5000 	mtc1	t7,$f10
     3bc:	00000000 	nop
     3c0:	46805420 	cvt.s.w	$f16,$f10
     3c4:	46028482 	mul.s	$f18,$f16,$f2
     3c8:	e7b20088 	swc1	$f18,136(sp)
     3cc:	84b8000c 	lh	t8,12(a1)
     3d0:	44982000 	mtc1	t8,$f4
     3d4:	00000000 	nop
     3d8:	468021a0 	cvt.s.w	$f6,$f4
     3dc:	46023282 	mul.s	$f10,$f6,$f2
     3e0:	e7aa008c 	swc1	$f10,140(sp)
     3e4:	c4900160 	lwc1	$f16,352(a0)
     3e8:	c4860164 	lwc1	$f6,356(a0)
     3ec:	46088102 	mul.s	$f4,$f16,$f8
     3f0:	00000000 	nop
     3f4:	46069402 	mul.s	$f16,$f18,$f6
     3f8:	c4920168 	lwc1	$f18,360(a0)
     3fc:	46125182 	mul.s	$f6,$f10,$f18
     400:	46102200 	add.s	$f8,$f4,$f16
     404:	44812000 	mtc1	at,$f4
     408:	46064300 	add.s	$f12,$f8,$f6
     40c:	46006005 	abs.s	$f0,$f12
     410:	4600203e 	c.le.s	$f4,$f0
     414:	00000000 	nop
     418:	4501005f 	bc1t	598 <func_809C5BA8+0x220>
     41c:	00000000 	nop
     420:	0c000000 	jal	0 <EnBomChu_Init>
     424:	00000000 	nop
     428:	3c010000 	lui	at,0x0
     42c:	c4300000 	lwc1	$f16,0(at)
     430:	46000306 	mov.s	$f12,$f0
     434:	26040160 	addiu	a0,s0,352
     438:	4610003c 	c.lt.s	$f0,$f16
     43c:	27a50084 	addiu	a1,sp,132
     440:	27a60078 	addiu	a2,sp,120
     444:	45030055 	bc1tl	59c <func_809C5BA8+0x224>
     448:	8fbf001c 	lw	ra,28(sp)
     44c:	afa40028 	sw	a0,40(sp)
     450:	0c000000 	jal	0 <EnBomChu_Init>
     454:	e7ac0074 	swc1	$f12,116(sp)
     458:	c7ac0074 	lwc1	$f12,116(sp)
     45c:	27a50078 	addiu	a1,sp,120
     460:	0c000000 	jal	0 <EnBomChu_Init>
     464:	00003025 	move	a2,zero
     468:	2604016c 	addiu	a0,s0,364
     46c:	afa40024 	sw	a0,36(sp)
     470:	0c000000 	jal	0 <EnBomChu_Init>
     474:	27a50078 	addiu	a1,sp,120
     478:	27b90078 	addiu	t9,sp,120
     47c:	8fa40024 	lw	a0,36(sp)
     480:	8f290000 	lw	t1,0(t9)
     484:	26060154 	addiu	a2,s0,340
     488:	27a50084 	addiu	a1,sp,132
     48c:	ac890000 	sw	t1,0(a0)
     490:	8f280004 	lw	t0,4(t9)
     494:	ac880004 	sw	t0,4(a0)
     498:	8f290008 	lw	t1,8(t9)
     49c:	ac890008 	sw	t1,8(a0)
     4a0:	0c000000 	jal	0 <EnBomChu_Init>
     4a4:	afa60020 	sw	a2,32(sp)
     4a8:	0c000000 	jal	0 <EnBomChu_Init>
     4ac:	8fa40020 	lw	a0,32(sp)
     4b0:	3c010000 	lui	at,0x0
     4b4:	c42a0000 	lwc1	$f10,0(at)
     4b8:	02002025 	move	a0,s0
     4bc:	3c013f80 	lui	at,0x3f80
     4c0:	460a003c 	c.lt.s	$f0,$f10
     4c4:	00000000 	nop
     4c8:	45020006 	bc1fl	4e4 <func_809C5BA8+0x16c>
     4cc:	44819000 	mtc1	at,$f18
     4d0:	0c000000 	jal	0 <EnBomChu_Init>
     4d4:	8fa50098 	lw	a1,152(sp)
     4d8:	10000030 	b	59c <func_809C5BA8+0x224>
     4dc:	8fbf001c 	lw	ra,28(sp)
     4e0:	44819000 	mtc1	at,$f18
     4e4:	c6080154 	lwc1	$f8,340(s0)
     4e8:	c6040158 	lwc1	$f4,344(s0)
     4ec:	46009083 	div.s	$f2,$f18,$f0
     4f0:	c60a015c 	lwc1	$f10,348(s0)
     4f4:	27ab0084 	addiu	t3,sp,132
     4f8:	27a4002c 	addiu	a0,sp,44
     4fc:	26050030 	addiu	a1,s0,48
     500:	00003025 	move	a2,zero
     504:	46024182 	mul.s	$f6,$f8,$f2
     508:	00000000 	nop
     50c:	46022402 	mul.s	$f16,$f4,$f2
     510:	00000000 	nop
     514:	46025482 	mul.s	$f18,$f10,$f2
     518:	e6060154 	swc1	$f6,340(s0)
     51c:	e6100158 	swc1	$f16,344(s0)
     520:	e612015c 	swc1	$f18,348(s0)
     524:	8d6d0000 	lw	t5,0(t3)
     528:	8faa0028 	lw	t2,40(sp)
     52c:	ad4d0000 	sw	t5,0(t2)
     530:	8d6c0004 	lw	t4,4(t3)
     534:	ad4c0004 	sw	t4,4(t2)
     538:	8d6d0008 	lw	t5,8(t3)
     53c:	ad4d0008 	sw	t5,8(t2)
     540:	c608016c 	lwc1	$f8,364(s0)
     544:	c7b00084 	lwc1	$f16,132(sp)
     548:	c7aa0088 	lwc1	$f10,136(sp)
     54c:	e7a8002c 	swc1	$f8,44(sp)
     550:	c6060170 	lwc1	$f6,368(s0)
     554:	c7b2008c 	lwc1	$f18,140(sp)
     558:	e7a60030 	swc1	$f6,48(sp)
     55c:	c6040174 	lwc1	$f4,372(s0)
     560:	e7b0003c 	swc1	$f16,60(sp)
     564:	e7aa0040 	swc1	$f10,64(sp)
     568:	e7b20044 	swc1	$f18,68(sp)
     56c:	e7a40034 	swc1	$f4,52(sp)
     570:	c6080154 	lwc1	$f8,340(s0)
     574:	e7a8004c 	swc1	$f8,76(sp)
     578:	c6060158 	lwc1	$f6,344(s0)
     57c:	e7a60050 	swc1	$f6,80(sp)
     580:	c604015c 	lwc1	$f4,348(s0)
     584:	0c000000 	jal	0 <EnBomChu_Init>
     588:	e7a40054 	swc1	$f4,84(sp)
     58c:	860e0030 	lh	t6,48(s0)
     590:	000e7823 	negu	t7,t6
     594:	a60f0030 	sh	t7,48(s0)
     598:	8fbf001c 	lw	ra,28(sp)
     59c:	8fb00018 	lw	s0,24(sp)
     5a0:	27bd0090 	addiu	sp,sp,144
     5a4:	03e00008 	jr	ra
     5a8:	00000000 	nop

000005ac <func_809C5DDC>:
     5ac:	27bdffc8 	addiu	sp,sp,-56
     5b0:	afbf002c 	sw	ra,44(sp)
     5b4:	afb10028 	sw	s1,40(sp)
     5b8:	afb00024 	sw	s0,36(sp)
     5bc:	f7b40018 	sdc1	$f20,24(sp)
     5c0:	8cae1c44 	lw	t6,7236(a1)
     5c4:	00a08825 	move	s1,a1
     5c8:	00808025 	move	s0,a0
     5cc:	afae0034 	sw	t6,52(sp)
     5d0:	84820150 	lh	v0,336(a0)
     5d4:	02202825 	move	a1,s1
     5d8:	10400003 	beqz	v0,5e8 <func_809C5DDC+0x3c>
     5dc:	244fffff 	addiu	t7,v0,-1
     5e0:	a48f0150 	sh	t7,336(a0)
     5e4:	84820150 	lh	v0,336(a0)
     5e8:	14400005 	bnez	v0,600 <func_809C5DDC+0x54>
     5ec:	02002025 	move	a0,s0
     5f0:	0c000000 	jal	0 <EnBomChu_Init>
     5f4:	02202825 	move	a1,s1
     5f8:	10000042 	b	704 <func_809C5DDC+0x158>
     5fc:	8fbf002c 	lw	ra,44(sp)
     600:	0c000000 	jal	0 <EnBomChu_Init>
     604:	02002025 	move	a0,s0
     608:	1040003d 	beqz	v0,700 <func_809C5DDC+0x154>
     60c:	8fb80034 	lw	t8,52(sp)
     610:	8f080024 	lw	t0,36(t8)
     614:	4480a000 	mtc1	zero,$f20
     618:	24090004 	li	t1,4
     61c:	ae080024 	sw	t0,36(s0)
     620:	8f190028 	lw	t9,40(t8)
     624:	4406a000 	mfc1	a2,$f20
     628:	4407a000 	mfc1	a3,$f20
     62c:	ae190028 	sw	t9,40(s0)
     630:	8f08002c 	lw	t0,44(t8)
     634:	02202025 	move	a0,s1
     638:	02002825 	move	a1,s0
     63c:	ae08002c 	sw	t0,44(s0)
     640:	afa90014 	sw	t1,20(sp)
     644:	0c000000 	jal	0 <EnBomChu_Init>
     648:	e7b40010 	swc1	$f20,16(sp)
     64c:	8faa0034 	lw	t2,52(sp)
     650:	854b00b6 	lh	t3,182(t2)
     654:	a60b00b6 	sh	t3,182(s0)
     658:	0c000000 	jal	0 <EnBomChu_Init>
     65c:	860400b6 	lh	a0,182(s0)
     660:	e6000154 	swc1	$f0,340(s0)
     664:	e6140158 	swc1	$f20,344(s0)
     668:	0c000000 	jal	0 <EnBomChu_Init>
     66c:	860400b6 	lh	a0,182(s0)
     670:	860400b6 	lh	a0,182(s0)
     674:	3c013f80 	lui	at,0x3f80
     678:	44812000 	mtc1	at,$f4
     67c:	24844000 	addiu	a0,a0,16384
     680:	00042400 	sll	a0,a0,0x10
     684:	e600015c 	swc1	$f0,348(s0)
     688:	e6140160 	swc1	$f20,352(s0)
     68c:	e6140168 	swc1	$f20,360(s0)
     690:	00042403 	sra	a0,a0,0x10
     694:	0c000000 	jal	0 <EnBomChu_Init>
     698:	e6040164 	swc1	$f4,356(s0)
     69c:	860400b6 	lh	a0,182(s0)
     6a0:	44803000 	mtc1	zero,$f6
     6a4:	e600016c 	swc1	$f0,364(s0)
     6a8:	24844000 	addiu	a0,a0,16384
     6ac:	00042400 	sll	a0,a0,0x10
     6b0:	00042403 	sra	a0,a0,0x10
     6b4:	0c000000 	jal	0 <EnBomChu_Init>
     6b8:	e6060170 	swc1	$f6,368(s0)
     6bc:	3c014100 	lui	at,0x4100
     6c0:	44814000 	mtc1	at,$f8
     6c4:	e6000174 	swc1	$f0,372(s0)
     6c8:	02002025 	move	a0,s0
     6cc:	8e050078 	lw	a1,120(s0)
     6d0:	02203025 	move	a2,s1
     6d4:	0c000000 	jal	0 <EnBomChu_Init>
     6d8:	e6080068 	swc1	$f8,104(s0)
     6dc:	8e0c0004 	lw	t4,4(s0)
     6e0:	02202025 	move	a0,s1
     6e4:	02002825 	move	a1,s0
     6e8:	358d0001 	ori	t5,t4,0x1
     6ec:	0c000000 	jal	0 <EnBomChu_Init>
     6f0:	ae0d0004 	sw	t5,4(s0)
     6f4:	3c0e0000 	lui	t6,0x0
     6f8:	25ce0000 	addiu	t6,t6,0
     6fc:	ae0e014c 	sw	t6,332(s0)
     700:	8fbf002c 	lw	ra,44(sp)
     704:	d7b40018 	ldc1	$f20,24(sp)
     708:	8fb00024 	lw	s0,36(sp)
     70c:	8fb10028 	lw	s1,40(sp)
     710:	03e00008 	jr	ra
     714:	27bd0038 	addiu	sp,sp,56

00000718 <func_809C5F48>:
     718:	3c014100 	lui	at,0x4100
     71c:	44810000 	mtc1	at,$f0
     720:	3c014000 	lui	at,0x4000
     724:	44812000 	mtc1	at,$f4
     728:	27bdff60 	addiu	sp,sp,-160
     72c:	afbf0044 	sw	ra,68(sp)
     730:	46040402 	mul.s	$f16,$f0,$f4
     734:	afb20040 	sw	s2,64(sp)
     738:	afb1003c 	sw	s1,60(sp)
     73c:	afb00038 	sw	s0,56(sp)
     740:	f7b40030 	sdc1	$f20,48(sp)
     744:	84820150 	lh	v0,336(a0)
     748:	00a08025 	move	s0,a1
     74c:	00808825 	move	s1,a0
     750:	46008506 	mov.s	$f20,$f16
     754:	10400004 	beqz	v0,768 <func_809C5F48+0x50>
     758:	e4800068 	swc1	$f0,104(a0)
     75c:	244effff 	addiu	t6,v0,-1
     760:	a48e0150 	sh	t6,336(a0)
     764:	84820150 	lh	v0,336(a0)
     768:	1040000e 	beqz	v0,7a4 <func_809C5F48+0x8c>
     76c:	02202025 	move	a0,s1
     770:	922f0195 	lbu	t7,405(s1)
     774:	31f80002 	andi	t8,t7,0x2
     778:	1700000a 	bnez	t8,7a4 <func_809C5F48+0x8c>
     77c:	00000000 	nop
     780:	92390196 	lbu	t9,406(s1)
     784:	33280002 	andi	t0,t9,0x2
     788:	5100000b 	beqzl	t0,7b8 <func_809C5F48+0xa0>
     78c:	c6200160 	lwc1	$f0,352(s1)
     790:	8e290190 	lw	t1,400(s1)
     794:	24010002 	li	at,2
     798:	912a0002 	lbu	t2,2(t1)
     79c:	51410006 	beql	t2,at,7b8 <func_809C5F48+0xa0>
     7a0:	c6200160 	lwc1	$f0,352(s1)
     7a4:	0c000000 	jal	0 <EnBomChu_Init>
     7a8:	02002825 	move	a1,s0
     7ac:	10000119 	b	c14 <func_809C5F48+0x4fc>
     7b0:	8fbf0044 	lw	ra,68(sp)
     7b4:	c6200160 	lwc1	$f0,352(s1)
     7b8:	c6260024 	lwc1	$f6,36(s1)
     7bc:	3c014080 	lui	at,0x4080
     7c0:	46000200 	add.s	$f8,$f0,$f0
     7c4:	44817000 	mtc1	at,$f14
     7c8:	261207c0 	addiu	s2,s0,1984
     7cc:	27ab0098 	addiu	t3,sp,152
     7d0:	46083280 	add.s	$f10,$f6,$f8
     7d4:	240c0001 	li	t4,1
     7d8:	240d0001 	li	t5,1
     7dc:	240e0001 	li	t6,1
     7e0:	e7aa007c 	swc1	$f10,124(sp)
     7e4:	c6220164 	lwc1	$f2,356(s1)
     7e8:	c6320028 	lwc1	$f18,40(s1)
     7ec:	240f0001 	li	t7,1
     7f0:	46021100 	add.s	$f4,$f2,$f2
     7f4:	27b80090 	addiu	t8,sp,144
     7f8:	02402025 	move	a0,s2
     7fc:	27a5007c 	addiu	a1,sp,124
     800:	46049180 	add.s	$f6,$f18,$f4
     804:	27a60070 	addiu	a2,sp,112
     808:	27a70058 	addiu	a3,sp,88
     80c:	e7a60080 	swc1	$f6,128(sp)
     810:	c62c0168 	lwc1	$f12,360(s1)
     814:	c628002c 	lwc1	$f8,44(s1)
     818:	460c6280 	add.s	$f10,$f12,$f12
     81c:	460a4480 	add.s	$f18,$f8,$f10
     820:	e7b20084 	swc1	$f18,132(sp)
     824:	c6260160 	lwc1	$f6,352(s1)
     828:	c6240024 	lwc1	$f4,36(s1)
     82c:	460e3202 	mul.s	$f8,$f6,$f14
     830:	46082281 	sub.s	$f10,$f4,$f8
     834:	e7aa0070 	swc1	$f10,112(sp)
     838:	c6260164 	lwc1	$f6,356(s1)
     83c:	c6320028 	lwc1	$f18,40(s1)
     840:	460e3102 	mul.s	$f4,$f6,$f14
     844:	46049201 	sub.s	$f8,$f18,$f4
     848:	e7a80074 	swc1	$f8,116(sp)
     84c:	c6260168 	lwc1	$f6,360(s1)
     850:	c62a002c 	lwc1	$f10,44(s1)
     854:	e7b00054 	swc1	$f16,84(sp)
     858:	460e3482 	mul.s	$f18,$f6,$f14
     85c:	afb000a4 	sw	s0,164(sp)
     860:	afb80024 	sw	t8,36(sp)
     864:	afaf0020 	sw	t7,32(sp)
     868:	afae001c 	sw	t6,28(sp)
     86c:	afad0018 	sw	t5,24(sp)
     870:	afac0014 	sw	t4,20(sp)
     874:	46125101 	sub.s	$f4,$f10,$f18
     878:	afab0010 	sw	t3,16(sp)
     87c:	0c000000 	jal	0 <EnBomChu_Init>
     880:	e7a40078 	swc1	$f4,120(sp)
     884:	1040005a 	beqz	v0,9f0 <func_809C5F48+0x2d8>
     888:	02402025 	move	a0,s2
     88c:	8fa50098 	lw	a1,152(sp)
     890:	0c000000 	jal	0 <EnBomChu_Init>
     894:	8fa60090 	lw	a2,144(sp)
     898:	30590030 	andi	t9,v0,0x30
     89c:	17200054 	bnez	t9,9f0 <func_809C5F48+0x2d8>
     8a0:	02402025 	move	a0,s2
     8a4:	8fa50098 	lw	a1,152(sp)
     8a8:	0c000000 	jal	0 <EnBomChu_Init>
     8ac:	8fa60090 	lw	a2,144(sp)
     8b0:	54400050 	bnezl	v0,9f4 <func_809C5F48+0x2dc>
     8b4:	44809000 	mtc1	zero,$f18
     8b8:	c6280154 	lwc1	$f8,340(s1)
     8bc:	c7aa007c 	lwc1	$f10,124(sp)
     8c0:	27a8009c 	addiu	t0,sp,156
     8c4:	46144182 	mul.s	$f6,$f8,$f20
     8c8:	24090001 	li	t1,1
     8cc:	240a0001 	li	t2,1
     8d0:	240b0001 	li	t3,1
     8d4:	240c0001 	li	t4,1
     8d8:	27ad0094 	addiu	t5,sp,148
     8dc:	02402025 	move	a0,s2
     8e0:	460a3480 	add.s	$f18,$f6,$f10
     8e4:	c7a60080 	lwc1	$f6,128(sp)
     8e8:	27a5007c 	addiu	a1,sp,124
     8ec:	27a60070 	addiu	a2,sp,112
     8f0:	e7b20070 	swc1	$f18,112(sp)
     8f4:	c6240158 	lwc1	$f4,344(s1)
     8f8:	27a70064 	addiu	a3,sp,100
     8fc:	46142202 	mul.s	$f8,$f4,$f20
     900:	46064280 	add.s	$f10,$f8,$f6
     904:	c7a80084 	lwc1	$f8,132(sp)
     908:	e7aa0074 	swc1	$f10,116(sp)
     90c:	c632015c 	lwc1	$f18,348(s1)
     910:	afad0024 	sw	t5,36(sp)
     914:	afac0020 	sw	t4,32(sp)
     918:	46149102 	mul.s	$f4,$f18,$f20
     91c:	afab001c 	sw	t3,28(sp)
     920:	afaa0018 	sw	t2,24(sp)
     924:	afa90014 	sw	t1,20(sp)
     928:	afa80010 	sw	t0,16(sp)
     92c:	46082180 	add.s	$f6,$f4,$f8
     930:	0c000000 	jal	0 <EnBomChu_Init>
     934:	e7a60078 	swc1	$f6,120(sp)
     938:	1040001b 	beqz	v0,9a8 <func_809C5F48+0x290>
     93c:	02402025 	move	a0,s2
     940:	8fa5009c 	lw	a1,156(sp)
     944:	0c000000 	jal	0 <EnBomChu_Init>
     948:	8fa60094 	lw	a2,148(sp)
     94c:	304e0030 	andi	t6,v0,0x30
     950:	15c00015 	bnez	t6,9a8 <func_809C5F48+0x290>
     954:	02402025 	move	a0,s2
     958:	8fa5009c 	lw	a1,156(sp)
     95c:	0c000000 	jal	0 <EnBomChu_Init>
     960:	8fa60094 	lw	a2,148(sp)
     964:	14400010 	bnez	v0,9a8 <func_809C5F48+0x290>
     968:	02202025 	move	a0,s1
     96c:	8fa5009c 	lw	a1,156(sp)
     970:	0c000000 	jal	0 <EnBomChu_Init>
     974:	8fa600a4 	lw	a2,164(sp)
     978:	27af0064 	addiu	t7,sp,100
     97c:	8df90000 	lw	t9,0(t7)
     980:	44805000 	mtc1	zero,$f10
     984:	ae390024 	sw	t9,36(s1)
     988:	8df80004 	lw	t8,4(t7)
     98c:	ae380028 	sw	t8,40(s1)
     990:	8df90008 	lw	t9,8(t7)
     994:	ae39002c 	sw	t9,44(s1)
     998:	8fa80094 	lw	t0,148(sp)
     99c:	e62a0068 	swc1	$f10,104(s1)
     9a0:	10000089 	b	bc8 <func_809C5F48+0x4b0>
     9a4:	a228007d 	sb	t0,125(s1)
     9a8:	8fa90098 	lw	t1,152(sp)
     9ac:	8e2a0078 	lw	t2,120(s1)
     9b0:	02202025 	move	a0,s1
     9b4:	01202825 	move	a1,t1
     9b8:	512a0004 	beql	t1,t2,9cc <func_809C5F48+0x2b4>
     9bc:	27ab0058 	addiu	t3,sp,88
     9c0:	0c000000 	jal	0 <EnBomChu_Init>
     9c4:	8fa600a4 	lw	a2,164(sp)
     9c8:	27ab0058 	addiu	t3,sp,88
     9cc:	8d6d0000 	lw	t5,0(t3)
     9d0:	ae2d0024 	sw	t5,36(s1)
     9d4:	8d6c0004 	lw	t4,4(t3)
     9d8:	ae2c0028 	sw	t4,40(s1)
     9dc:	8d6d0008 	lw	t5,8(t3)
     9e0:	ae2d002c 	sw	t5,44(s1)
     9e4:	8fae0090 	lw	t6,144(sp)
     9e8:	10000077 	b	bc8 <func_809C5F48+0x4b0>
     9ec:	a22e007d 	sb	t6,125(s1)
     9f0:	44809000 	mtc1	zero,$f18
     9f4:	27a60070 	addiu	a2,sp,112
     9f8:	27a5007c 	addiu	a1,sp,124
     9fc:	e6320068 	swc1	$f18,104(s1)
     a00:	8cd80000 	lw	t8,0(a2)
     a04:	c7a40054 	lwc1	$f4,84(sp)
     a08:	3c014040 	lui	at,0x4040
     a0c:	44814000 	mtc1	at,$f8
     a10:	acb80000 	sw	t8,0(a1)
     a14:	8cd80008 	lw	t8,8(a2)
     a18:	8ccf0004 	lw	t7,4(a2)
     a1c:	46082502 	mul.s	$f20,$f4,$f8
     a20:	00008025 	move	s0,zero
     a24:	acb80008 	sw	t8,8(a1)
     a28:	acaf0004 	sw	t7,4(a1)
     a2c:	27a5007c 	addiu	a1,sp,124
     a30:	16000011 	bnez	s0,a78 <func_809C5F48+0x360>
     a34:	27a60070 	addiu	a2,sp,112
     a38:	c62a0154 	lwc1	$f10,340(s1)
     a3c:	c7a6007c 	lwc1	$f6,124(sp)
     a40:	c7a80080 	lwc1	$f8,128(sp)
     a44:	46145482 	mul.s	$f18,$f10,$f20
     a48:	46123101 	sub.s	$f4,$f6,$f18
     a4c:	e7a40070 	swc1	$f4,112(sp)
     a50:	c62a0158 	lwc1	$f10,344(s1)
     a54:	c7a40084 	lwc1	$f4,132(sp)
     a58:	46145182 	mul.s	$f6,$f10,$f20
     a5c:	46064481 	sub.s	$f18,$f8,$f6
     a60:	e7b20074 	swc1	$f18,116(sp)
     a64:	c62a015c 	lwc1	$f10,348(s1)
     a68:	46145202 	mul.s	$f8,$f10,$f20
     a6c:	46082181 	sub.s	$f6,$f4,$f8
     a70:	10000023 	b	b00 <func_809C5F48+0x3e8>
     a74:	e7a60078 	swc1	$f6,120(sp)
     a78:	24010001 	li	at,1
     a7c:	56010012 	bnel	s0,at,ac8 <func_809C5F48+0x3b0>
     a80:	c628016c 	lwc1	$f8,364(s1)
     a84:	c632016c 	lwc1	$f18,364(s1)
     a88:	c7a4007c 	lwc1	$f4,124(sp)
     a8c:	46149282 	mul.s	$f10,$f18,$f20
     a90:	46045200 	add.s	$f8,$f10,$f4
     a94:	c7aa0080 	lwc1	$f10,128(sp)
     a98:	e7a80070 	swc1	$f8,112(sp)
     a9c:	c6260170 	lwc1	$f6,368(s1)
     aa0:	46143482 	mul.s	$f18,$f6,$f20
     aa4:	460a9100 	add.s	$f4,$f18,$f10
     aa8:	c7b20084 	lwc1	$f18,132(sp)
     aac:	e7a40074 	swc1	$f4,116(sp)
     ab0:	c6280174 	lwc1	$f8,372(s1)
     ab4:	46144182 	mul.s	$f6,$f8,$f20
     ab8:	46123280 	add.s	$f10,$f6,$f18
     abc:	10000010 	b	b00 <func_809C5F48+0x3e8>
     ac0:	e7aa0078 	swc1	$f10,120(sp)
     ac4:	c628016c 	lwc1	$f8,364(s1)
     ac8:	c7a4007c 	lwc1	$f4,124(sp)
     acc:	c7aa0080 	lwc1	$f10,128(sp)
     ad0:	46144182 	mul.s	$f6,$f8,$f20
     ad4:	46062481 	sub.s	$f18,$f4,$f6
     ad8:	e7b20070 	swc1	$f18,112(sp)
     adc:	c6280170 	lwc1	$f8,368(s1)
     ae0:	c7b20084 	lwc1	$f18,132(sp)
     ae4:	46144102 	mul.s	$f4,$f8,$f20
     ae8:	46045181 	sub.s	$f6,$f10,$f4
     aec:	e7a60074 	swc1	$f6,116(sp)
     af0:	c6280174 	lwc1	$f8,372(s1)
     af4:	46144282 	mul.s	$f10,$f8,$f20
     af8:	460a9101 	sub.s	$f4,$f18,$f10
     afc:	e7a40078 	swc1	$f4,120(sp)
     b00:	27b9009c 	addiu	t9,sp,156
     b04:	24080001 	li	t0,1
     b08:	240a0001 	li	t2,1
     b0c:	24090001 	li	t1,1
     b10:	240b0001 	li	t3,1
     b14:	27ac0094 	addiu	t4,sp,148
     b18:	afac0024 	sw	t4,36(sp)
     b1c:	afab0020 	sw	t3,32(sp)
     b20:	afa9001c 	sw	t1,28(sp)
     b24:	afaa0018 	sw	t2,24(sp)
     b28:	afa80014 	sw	t0,20(sp)
     b2c:	afb90010 	sw	t9,16(sp)
     b30:	02402025 	move	a0,s2
     b34:	0c000000 	jal	0 <EnBomChu_Init>
     b38:	27a70064 	addiu	a3,sp,100
     b3c:	10400019 	beqz	v0,ba4 <func_809C5F48+0x48c>
     b40:	02402025 	move	a0,s2
     b44:	8fa5009c 	lw	a1,156(sp)
     b48:	0c000000 	jal	0 <EnBomChu_Init>
     b4c:	8fa60094 	lw	a2,148(sp)
     b50:	304d0030 	andi	t5,v0,0x30
     b54:	15a00013 	bnez	t5,ba4 <func_809C5F48+0x48c>
     b58:	02402025 	move	a0,s2
     b5c:	8fa5009c 	lw	a1,156(sp)
     b60:	0c000000 	jal	0 <EnBomChu_Init>
     b64:	8fa60094 	lw	a2,148(sp)
     b68:	1440000e 	bnez	v0,ba4 <func_809C5F48+0x48c>
     b6c:	02202025 	move	a0,s1
     b70:	8fa5009c 	lw	a1,156(sp)
     b74:	0c000000 	jal	0 <EnBomChu_Init>
     b78:	8fa600a4 	lw	a2,164(sp)
     b7c:	27ae0064 	addiu	t6,sp,100
     b80:	8dd80000 	lw	t8,0(t6)
     b84:	ae380024 	sw	t8,36(s1)
     b88:	8dcf0004 	lw	t7,4(t6)
     b8c:	ae2f0028 	sw	t7,40(s1)
     b90:	8dd80008 	lw	t8,8(t6)
     b94:	ae38002c 	sw	t8,44(s1)
     b98:	8fb90094 	lw	t9,148(sp)
     b9c:	10000005 	b	bb4 <func_809C5F48+0x49c>
     ba0:	a239007d 	sb	t9,125(s1)
     ba4:	26100001 	addiu	s0,s0,1
     ba8:	24010003 	li	at,3
     bac:	5601ffa0 	bnel	s0,at,a30 <func_809C5F48+0x318>
     bb0:	27a5007c 	addiu	a1,sp,124
     bb4:	24010003 	li	at,3
     bb8:	16010003 	bne	s0,at,bc8 <func_809C5F48+0x4b0>
     bbc:	02202025 	move	a0,s1
     bc0:	0c000000 	jal	0 <EnBomChu_Init>
     bc4:	8fa500a4 	lw	a1,164(sp)
     bc8:	86250030 	lh	a1,48(s1)
     bcc:	262400b4 	addiu	a0,s1,180
     bd0:	24060800 	li	a2,2048
     bd4:	00052823 	negu	a1,a1
     bd8:	00052c00 	sll	a1,a1,0x10
     bdc:	0c000000 	jal	0 <EnBomChu_Init>
     be0:	00052c03 	sra	a1,a1,0x10
     be4:	262400b6 	addiu	a0,s1,182
     be8:	86250032 	lh	a1,50(s1)
     bec:	0c000000 	jal	0 <EnBomChu_Init>
     bf0:	24060800 	li	a2,2048
     bf4:	262400b8 	addiu	a0,s1,184
     bf8:	86250034 	lh	a1,52(s1)
     bfc:	0c000000 	jal	0 <EnBomChu_Init>
     c00:	24060800 	li	a2,2048
     c04:	02202025 	move	a0,s1
     c08:	0c000000 	jal	0 <EnBomChu_Init>
     c0c:	24051031 	li	a1,4145
     c10:	8fbf0044 	lw	ra,68(sp)
     c14:	d7b40030 	ldc1	$f20,48(sp)
     c18:	8fb00038 	lw	s0,56(sp)
     c1c:	8fb1003c 	lw	s1,60(sp)
     c20:	8fb20040 	lw	s2,64(sp)
     c24:	03e00008 	jr	ra
     c28:	27bd00a0 	addiu	sp,sp,160

00000c2c <func_809C645C>:
     c2c:	27bdffe8 	addiu	sp,sp,-24
     c30:	afbf0014 	sw	ra,20(sp)
     c34:	afa5001c 	sw	a1,28(sp)
     c38:	84820150 	lh	v0,336(a0)
     c3c:	10400003 	beqz	v0,c4c <func_809C645C+0x20>
     c40:	244effff 	addiu	t6,v0,-1
     c44:	a48e0150 	sh	t6,336(a0)
     c48:	84820150 	lh	v0,336(a0)
     c4c:	54400004 	bnezl	v0,c60 <func_809C645C+0x34>
     c50:	8fbf0014 	lw	ra,20(sp)
     c54:	0c000000 	jal	0 <EnBomChu_Init>
     c58:	00000000 	nop
     c5c:	8fbf0014 	lw	ra,20(sp)
     c60:	27bd0018 	addiu	sp,sp,24
     c64:	03e00008 	jr	ra
     c68:	00000000 	nop

00000c6c <func_809C649C>:
     c6c:	c4a40000 	lwc1	$f4,0(a1)
     c70:	c4860178 	lwc1	$f6,376(a0)
     c74:	c48a016c 	lwc1	$f10,364(a0)
     c78:	c4880024 	lwc1	$f8,36(a0)
     c7c:	46062000 	add.s	$f0,$f4,$f6
     c80:	c4a60004 	lwc1	$f6,4(a1)
     c84:	c4840160 	lwc1	$f4,352(a0)
     c88:	46005402 	mul.s	$f16,$f10,$f0
     c8c:	46104480 	add.s	$f18,$f8,$f16
     c90:	46062282 	mul.s	$f10,$f4,$f6
     c94:	c4a40008 	lwc1	$f4,8(a1)
     c98:	c4900154 	lwc1	$f16,340(a0)
     c9c:	46048182 	mul.s	$f6,$f16,$f4
     ca0:	460a9200 	add.s	$f8,$f18,$f10
     ca4:	46064480 	add.s	$f18,$f8,$f6
     ca8:	e4d20000 	swc1	$f18,0(a2)
     cac:	c4900170 	lwc1	$f16,368(a0)
     cb0:	c4b20004 	lwc1	$f18,4(a1)
     cb4:	c4860164 	lwc1	$f6,356(a0)
     cb8:	46008102 	mul.s	$f4,$f16,$f0
     cbc:	c48a0028 	lwc1	$f10,40(a0)
     cc0:	46123402 	mul.s	$f16,$f6,$f18
     cc4:	c4a60008 	lwc1	$f6,8(a1)
     cc8:	46045200 	add.s	$f8,$f10,$f4
     ccc:	c4840158 	lwc1	$f4,344(a0)
     cd0:	46062482 	mul.s	$f18,$f4,$f6
     cd4:	46104280 	add.s	$f10,$f8,$f16
     cd8:	46125200 	add.s	$f8,$f10,$f18
     cdc:	e4c80004 	swc1	$f8,4(a2)
     ce0:	c4840174 	lwc1	$f4,372(a0)
     ce4:	c4a80004 	lwc1	$f8,4(a1)
     ce8:	c4920168 	lwc1	$f18,360(a0)
     cec:	46002182 	mul.s	$f6,$f4,$f0
     cf0:	c490002c 	lwc1	$f16,44(a0)
     cf4:	46089102 	mul.s	$f4,$f18,$f8
     cf8:	c4b20008 	lwc1	$f18,8(a1)
     cfc:	46068280 	add.s	$f10,$f16,$f6
     d00:	c486015c 	lwc1	$f6,348(a0)
     d04:	46123202 	mul.s	$f8,$f6,$f18
     d08:	46045400 	add.s	$f16,$f10,$f4
     d0c:	46088280 	add.s	$f10,$f16,$f8
     d10:	03e00008 	jr	ra
     d14:	e4ca0008 	swc1	$f10,8(a2)

00000d18 <func_809C6548>:
     d18:	27bdffd0 	addiu	sp,sp,-48
     d1c:	afbf001c 	sw	ra,28(sp)
     d20:	afa40030 	sw	a0,48(sp)
     d24:	afa50034 	sw	a1,52(sp)
     d28:	44866000 	mtc1	a2,$f12
     d2c:	c4840024 	lwc1	$f4,36(a0)
     d30:	24060046 	li	a2,70
     d34:	e7ac0028 	swc1	$f12,40(sp)
     d38:	e7a40024 	swc1	$f4,36(sp)
     d3c:	c486002c 	lwc1	$f6,44(a0)
     d40:	00a02025 	move	a0,a1
     d44:	27a50024 	addiu	a1,sp,36
     d48:	afa00010 	sw	zero,16(sp)
     d4c:	240701f4 	li	a3,500
     d50:	0c000000 	jal	0 <EnBomChu_Init>
     d54:	e7a6002c 	swc1	$f6,44(sp)
     d58:	240f0004 	li	t7,4
     d5c:	afaf0010 	sw	t7,16(sp)
     d60:	8fa40034 	lw	a0,52(sp)
     d64:	27a50024 	addiu	a1,sp,36
     d68:	24060046 	li	a2,70
     d6c:	0c000000 	jal	0 <EnBomChu_Init>
     d70:	240701f4 	li	a3,500
     d74:	24180008 	li	t8,8
     d78:	afb80010 	sw	t8,16(sp)
     d7c:	8fa40034 	lw	a0,52(sp)
     d80:	27a50024 	addiu	a1,sp,36
     d84:	24060046 	li	a2,70
     d88:	0c000000 	jal	0 <EnBomChu_Init>
     d8c:	240701f4 	li	a3,500
     d90:	8fbf001c 	lw	ra,28(sp)
     d94:	27bd0030 	addiu	sp,sp,48
     d98:	03e00008 	jr	ra
     d9c:	00000000 	nop

00000da0 <EnBomChu_Update>:
     da0:	27bdff88 	addiu	sp,sp,-120
     da4:	afbf0024 	sw	ra,36(sp)
     da8:	afb10020 	sw	s1,32(sp)
     dac:	afb0001c 	sw	s0,28(sp)
     db0:	908e007d 	lbu	t6,125(a0)
     db4:	24010032 	li	at,50
     db8:	00808025 	move	s0,a0
     dbc:	00a08825 	move	s1,a1
     dc0:	11c10037 	beq	t6,at,ea0 <EnBomChu_Update+0x100>
     dc4:	afae0030 	sw	t6,48(sp)
     dc8:	848700b6 	lh	a3,182(a0)
     dcc:	24a407c0 	addiu	a0,a1,1984
     dd0:	01c02825 	move	a1,t6
     dd4:	02003025 	move	a2,s0
     dd8:	0c000000 	jal	0 <EnBomChu_Init>
     ddc:	a7a7006e 	sh	a3,110(sp)
     de0:	87a7006e 	lh	a3,110(sp)
     de4:	860300b6 	lh	v1,182(s0)
     de8:	10e3002d 	beq	a3,v1,ea0 <EnBomChu_Update+0x100>
     dec:	00673823 	subu	a3,v1,a3
     df0:	00073c00 	sll	a3,a3,0x10
     df4:	00073c03 	sra	a3,a3,0x10
     df8:	00072400 	sll	a0,a3,0x10
     dfc:	00042403 	sra	a0,a0,0x10
     e00:	0c000000 	jal	0 <EnBomChu_Init>
     e04:	a7a7006e 	sh	a3,110(sp)
     e08:	87a7006e 	lh	a3,110(sp)
     e0c:	e7a00068 	swc1	$f0,104(sp)
     e10:	00072400 	sll	a0,a3,0x10
     e14:	0c000000 	jal	0 <EnBomChu_Init>
     e18:	00042403 	sra	a0,a0,0x10
     e1c:	c7ac0068 	lwc1	$f12,104(sp)
     e20:	c60e015c 	lwc1	$f14,348(s0)
     e24:	c6020154 	lwc1	$f2,340(s0)
     e28:	c6100168 	lwc1	$f16,360(s0)
     e2c:	460c7102 	mul.s	$f4,$f14,$f12
     e30:	00000000 	nop
     e34:	46020182 	mul.s	$f6,$f0,$f2
     e38:	00000000 	nop
     e3c:	46007282 	mul.s	$f10,$f14,$f0
     e40:	c60e0174 	lwc1	$f14,372(s0)
     e44:	46026482 	mul.s	$f18,$f12,$f2
     e48:	c6020160 	lwc1	$f2,352(s0)
     e4c:	46062200 	add.s	$f8,$f4,$f6
     e50:	460c8182 	mul.s	$f6,$f16,$f12
     e54:	e6080154 	swc1	$f8,340(s0)
     e58:	46020202 	mul.s	$f8,$f0,$f2
     e5c:	46125101 	sub.s	$f4,$f10,$f18
     e60:	46008482 	mul.s	$f18,$f16,$f0
     e64:	e604015c 	swc1	$f4,348(s0)
     e68:	46026102 	mul.s	$f4,$f12,$f2
     e6c:	c602016c 	lwc1	$f2,364(s0)
     e70:	46083280 	add.s	$f10,$f6,$f8
     e74:	460c7202 	mul.s	$f8,$f14,$f12
     e78:	e60a0160 	swc1	$f10,352(s0)
     e7c:	46020282 	mul.s	$f10,$f0,$f2
     e80:	46049181 	sub.s	$f6,$f18,$f4
     e84:	46007102 	mul.s	$f4,$f14,$f0
     e88:	e6060168 	swc1	$f6,360(s0)
     e8c:	46026182 	mul.s	$f6,$f12,$f2
     e90:	460a4480 	add.s	$f18,$f8,$f10
     e94:	e612016c 	swc1	$f18,364(s0)
     e98:	46062201 	sub.s	$f8,$f4,$f6
     e9c:	e6080174 	swc1	$f8,372(s0)
     ea0:	8e19014c 	lw	t9,332(s0)
     ea4:	02002025 	move	a0,s0
     ea8:	02202825 	move	a1,s1
     eac:	0320f809 	jalr	t9
     eb0:	00000000 	nop
     eb4:	0c000000 	jal	0 <EnBomChu_Init>
     eb8:	02002025 	move	a0,s0
     ebc:	c60a0024 	lwc1	$f10,36(s0)
     ec0:	8e0901a0 	lw	t1,416(s0)
     ec4:	3c010001 	lui	at,0x1
     ec8:	4600548d 	trunc.w.s	$f18,$f10
     ecc:	34211e60 	ori	at,at,0x1e60
     ed0:	02212821 	addu	a1,s1,at
     ed4:	26060184 	addiu	a2,s0,388
     ed8:	44089000 	mfc1	t0,$f18
     edc:	02202025 	move	a0,s1
     ee0:	a5280030 	sh	t0,48(t1)
     ee4:	c6040028 	lwc1	$f4,40(s0)
     ee8:	8e0c01a0 	lw	t4,416(s0)
     eec:	4600218d 	trunc.w.s	$f6,$f4
     ef0:	440b3000 	mfc1	t3,$f6
     ef4:	00000000 	nop
     ef8:	a58b0032 	sh	t3,50(t4)
     efc:	c608002c 	lwc1	$f8,44(s0)
     f00:	8e0f01a0 	lw	t7,416(s0)
     f04:	4600428d 	trunc.w.s	$f10,$f8
     f08:	440e5000 	mfc1	t6,$f10
     f0c:	00000000 	nop
     f10:	a5ee0034 	sh	t6,52(t7)
     f14:	afa6002c 	sw	a2,44(sp)
     f18:	0c000000 	jal	0 <EnBomChu_Init>
     f1c:	afa50030 	sw	a1,48(sp)
     f20:	8e18014c 	lw	t8,332(s0)
     f24:	3c190000 	lui	t9,0x0
     f28:	27390000 	addiu	t9,t9,0
     f2c:	8fa50030 	lw	a1,48(sp)
     f30:	13380003 	beq	t9,t8,f40 <EnBomChu_Update+0x1a0>
     f34:	8fa6002c 	lw	a2,44(sp)
     f38:	0c000000 	jal	0 <EnBomChu_Init>
     f3c:	02202025 	move	a0,s1
     f40:	02002025 	move	a0,s0
     f44:	0c000000 	jal	0 <EnBomChu_Init>
     f48:	24050000 	li	a1,0
     f4c:	8e09014c 	lw	t1,332(s0)
     f50:	3c080000 	lui	t0,0x0
     f54:	25080000 	addiu	t0,t0,0
     f58:	1509007d 	bne	t0,t1,1150 <EnBomChu_Update+0x3b0>
     f5c:	262a07c0 	addiu	t2,s1,1984
     f60:	0c000000 	jal	0 <EnBomChu_Init>
     f64:	afaa0030 	sw	t2,48(sp)
     f68:	0c000000 	jal	0 <EnBomChu_Init>
     f6c:	e7a00038 	swc1	$f0,56(sp)
     f70:	3c014400 	lui	at,0x4400
     f74:	44819000 	mtc1	at,$f18
     f78:	860b0150 	lh	t3,336(s0)
     f7c:	3c014640 	lui	at,0x4640
     f80:	46120102 	mul.s	$f4,$f0,$f18
     f84:	448b5000 	mtc1	t3,$f10
     f88:	44813000 	mtc1	at,$f6
     f8c:	468054a0 	cvt.s.w	$f18,$f10
     f90:	46062200 	add.s	$f8,$f4,$f6
     f94:	46124102 	mul.s	$f4,$f8,$f18
     f98:	4600218d 	trunc.w.s	$f6,$f4
     f9c:	44043000 	mfc1	a0,$f6
     fa0:	00000000 	nop
     fa4:	00042400 	sll	a0,a0,0x10
     fa8:	0c000000 	jal	0 <EnBomChu_Init>
     fac:	00042403 	sra	a0,a0,0x10
     fb0:	3c014040 	lui	at,0x4040
     fb4:	44814000 	mtc1	at,$f8
     fb8:	c7aa0038 	lwc1	$f10,56(sp)
     fbc:	3c0140a0 	lui	at,0x40a0
     fc0:	44812000 	mtc1	at,$f4
     fc4:	46085482 	mul.s	$f18,$f10,$f8
     fc8:	3c050000 	lui	a1,0x0
     fcc:	24a50000 	addiu	a1,a1,0
     fd0:	02002025 	move	a0,s0
     fd4:	27a60054 	addiu	a2,sp,84
     fd8:	46122180 	add.s	$f6,$f4,$f18
     fdc:	46060282 	mul.s	$f10,$f0,$f6
     fe0:	0c000000 	jal	0 <EnBomChu_Init>
     fe4:	e60a0178 	swc1	$f10,376(s0)
     fe8:	3c050000 	lui	a1,0x0
     fec:	24a50000 	addiu	a1,a1,0
     ff0:	02002025 	move	a0,s0
     ff4:	0c000000 	jal	0 <EnBomChu_Init>
     ff8:	27a60048 	addiu	a2,sp,72
     ffc:	0c000000 	jal	0 <EnBomChu_Init>
    1000:	8e04017c 	lw	a0,380(s0)
    1004:	00402025 	move	a0,v0
    1008:	27a50054 	addiu	a1,sp,84
    100c:	0c000000 	jal	0 <EnBomChu_Init>
    1010:	27a60048 	addiu	a2,sp,72
    1014:	3c050000 	lui	a1,0x0
    1018:	24a50000 	addiu	a1,a1,0
    101c:	02002025 	move	a0,s0
    1020:	0c000000 	jal	0 <EnBomChu_Init>
    1024:	27a60048 	addiu	a2,sp,72
    1028:	0c000000 	jal	0 <EnBomChu_Init>
    102c:	8e040180 	lw	a0,384(s0)
    1030:	00402025 	move	a0,v0
    1034:	27a50054 	addiu	a1,sp,84
    1038:	0c000000 	jal	0 <EnBomChu_Init>
    103c:	27a60048 	addiu	a2,sp,72
    1040:	c6080028 	lwc1	$f8,40(s0)
    1044:	27ad0040 	addiu	t5,sp,64
    1048:	27ae0044 	addiu	t6,sp,68
    104c:	e7a80040 	swc1	$f8,64(sp)
    1050:	8e07002c 	lw	a3,44(s0)
    1054:	8e060024 	lw	a2,36(s0)
    1058:	afae0014 	sw	t6,20(sp)
    105c:	afad0010 	sw	t5,16(sp)
    1060:	02202025 	move	a0,s1
    1064:	0c000000 	jal	0 <EnBomChu_Init>
    1068:	8fa50030 	lw	a1,48(sp)
    106c:	10400032 	beqz	v0,1138 <EnBomChu_Update+0x398>
    1070:	c7a40040 	lwc1	$f4,64(sp)
    1074:	c6120028 	lwc1	$f18,40(s0)
    1078:	44800000 	mtc1	zero,$f0
    107c:	46122181 	sub.s	$f6,$f4,$f18
    1080:	e6060084 	swc1	$f6,132(s0)
    1084:	c60a0084 	lwc1	$f10,132(s0)
    1088:	4600503c 	c.lt.s	$f10,$f0
    108c:	00000000 	nop
    1090:	4502000e 	bc1fl	10cc <EnBomChu_Update+0x32c>
    1094:	96180088 	lhu	t8,136(s0)
    1098:	96020088 	lhu	v0,136(s0)
    109c:	02002025 	move	a0,s0
    10a0:	02202825 	move	a1,s1
    10a4:	304f0020 	andi	t7,v0,0x20
    10a8:	51e00005 	beqzl	t7,10c0 <EnBomChu_Update+0x320>
    10ac:	3059ffdf 	andi	t9,v0,0xffdf
    10b0:	0c000000 	jal	0 <EnBomChu_Init>
    10b4:	8fa60040 	lw	a2,64(sp)
    10b8:	96020088 	lhu	v0,136(s0)
    10bc:	3059ffdf 	andi	t9,v0,0xffdf
    10c0:	10000023 	b	1150 <EnBomChu_Update+0x3b0>
    10c4:	a6190088 	sh	t9,136(s0)
    10c8:	96180088 	lhu	t8,136(s0)
    10cc:	02202025 	move	a0,s1
    10d0:	26050024 	addiu	a1,s0,36
    10d4:	33080020 	andi	t0,t8,0x20
    10d8:	1500000b 	bnez	t0,1108 <EnBomChu_Update+0x368>
    10dc:	3c074040 	lui	a3,0x4040
    10e0:	86090150 	lh	t1,336(s0)
    10e4:	24010078 	li	at,120
    10e8:	8fa60040 	lw	a2,64(sp)
    10ec:	51210007 	beql	t1,at,110c <EnBomChu_Update+0x36c>
    10f0:	3c014170 	lui	at,0x4170
    10f4:	02002025 	move	a0,s0
    10f8:	0c000000 	jal	0 <EnBomChu_Init>
    10fc:	02202825 	move	a1,s1
    1100:	1000000a 	b	112c <EnBomChu_Update+0x38c>
    1104:	960a0088 	lhu	t2,136(s0)
    1108:	3c014170 	lui	at,0x4170
    110c:	44814000 	mtc1	at,$f8
    1110:	3c013e80 	lui	at,0x3e80
    1114:	44812000 	mtc1	at,$f4
    1118:	44060000 	mfc1	a2,$f0
    111c:	e7a80010 	swc1	$f8,16(sp)
    1120:	0c000000 	jal	0 <EnBomChu_Init>
    1124:	e7a40014 	swc1	$f4,20(sp)
    1128:	960a0088 	lhu	t2,136(s0)
    112c:	354b0020 	ori	t3,t2,0x20
    1130:	10000007 	b	1150 <EnBomChu_Update+0x3b0>
    1134:	a60b0088 	sh	t3,136(s0)
    1138:	960c0088 	lhu	t4,136(s0)
    113c:	3c01c6fa 	lui	at,0xc6fa
    1140:	44819000 	mtc1	at,$f18
    1144:	318dffdf 	andi	t5,t4,0xffdf
    1148:	a60d0088 	sh	t5,136(s0)
    114c:	e6120084 	swc1	$f18,132(s0)
    1150:	8fbf0024 	lw	ra,36(sp)
    1154:	8fb0001c 	lw	s0,28(sp)
    1158:	8fb10020 	lw	s1,32(sp)
    115c:	03e00008 	jr	ra
    1160:	27bd0078 	addiu	sp,sp,120

00001164 <EnBomChu_Draw>:
    1164:	27bdffa8 	addiu	sp,sp,-88
    1168:	afbf001c 	sw	ra,28(sp)
    116c:	afb10018 	sw	s1,24(sp)
    1170:	afb00014 	sw	s0,20(sp)
    1174:	afa5005c 	sw	a1,92(sp)
    1178:	8ca50000 	lw	a1,0(a1)
    117c:	00808025 	move	s0,a0
    1180:	3c060000 	lui	a2,0x0
    1184:	24c60000 	addiu	a2,a2,0
    1188:	27a40030 	addiu	a0,sp,48
    118c:	24070399 	li	a3,921
    1190:	0c000000 	jal	0 <EnBomChu_Init>
    1194:	00a08825 	move	s1,a1
    1198:	8faf005c 	lw	t7,92(sp)
    119c:	0c000000 	jal	0 <EnBomChu_Init>
    11a0:	8de40000 	lw	a0,0(t7)
    11a4:	02002025 	move	a0,s0
    11a8:	8fa5005c 	lw	a1,92(sp)
    11ac:	0c000000 	jal	0 <EnBomChu_Init>
    11b0:	00003025 	move	a2,zero
    11b4:	86020150 	lh	v0,336(s0)
    11b8:	28410028 	slti	at,v0,40
    11bc:	14200006 	bnez	at,11d8 <EnBomChu_Draw+0x74>
    11c0:	24010014 	li	at,20
    11c4:	0041001a 	div	zero,v0,at
    11c8:	00002010 	mfhi	a0
    11cc:	2405000a 	li	a1,10
    11d0:	1000000c 	b	1204 <EnBomChu_Draw+0xa0>
    11d4:	44854000 	mtc1	a1,$f8
    11d8:	2841000a 	slti	at,v0,10
    11dc:	14200007 	bnez	at,11fc <EnBomChu_Draw+0x98>
    11e0:	30440001 	andi	a0,v0,0x1
    11e4:	2401000a 	li	at,10
    11e8:	0041001a 	div	zero,v0,at
    11ec:	00002010 	mfhi	a0
    11f0:	24050005 	li	a1,5
    11f4:	10000003 	b	1204 <EnBomChu_Draw+0xa0>
    11f8:	44854000 	mtc1	a1,$f8
    11fc:	24050001 	li	a1,1
    1200:	44854000 	mtc1	a1,$f8
    1204:	00a4082a 	slt	at,a1,a0
    1208:	10200003 	beqz	at,1218 <EnBomChu_Draw+0xb4>
    120c:	468042a0 	cvt.s.w	$f10,$f8
    1210:	0005c040 	sll	t8,a1,0x1
    1214:	03042023 	subu	a0,t8,a0
    1218:	44842000 	mtc1	a0,$f4
    121c:	3c014110 	lui	at,0x4110
    1220:	44811000 	mtc1	at,$f2
    1224:	468021a0 	cvt.s.w	$f6,$f4
    1228:	3c014351 	lui	at,0x4351
    122c:	44818000 	mtc1	at,$f16
    1230:	240a0001 	li	t2,1
    1234:	8e2302c0 	lw	v1,704(s1)
    1238:	3c08fb00 	lui	t0,0xfb00
    123c:	460a3003 	div.s	$f0,$f6,$f10
    1240:	24790008 	addiu	t9,v1,8
    1244:	ae3902c0 	sw	t9,704(s1)
    1248:	3c014f00 	lui	at,0x4f00
    124c:	ac680000 	sw	t0,0(v1)
    1250:	46100482 	mul.s	$f18,$f0,$f16
    1254:	46029100 	add.s	$f4,$f18,$f2
    1258:	4449f800 	cfc1	t1,$31
    125c:	44caf800 	ctc1	t2,$31
    1260:	00000000 	nop
    1264:	46002224 	cvt.w.s	$f8,$f4
    1268:	444af800 	cfc1	t2,$31
    126c:	00000000 	nop
    1270:	314a0078 	andi	t2,t2,0x78
    1274:	51400013 	beqzl	t2,12c4 <EnBomChu_Draw+0x160>
    1278:	440a4000 	mfc1	t2,$f8
    127c:	44814000 	mtc1	at,$f8
    1280:	240a0001 	li	t2,1
    1284:	46082201 	sub.s	$f8,$f4,$f8
    1288:	44caf800 	ctc1	t2,$31
    128c:	00000000 	nop
    1290:	46004224 	cvt.w.s	$f8,$f8
    1294:	444af800 	cfc1	t2,$31
    1298:	00000000 	nop
    129c:	314a0078 	andi	t2,t2,0x78
    12a0:	15400005 	bnez	t2,12b8 <EnBomChu_Draw+0x154>
    12a4:	00000000 	nop
    12a8:	440a4000 	mfc1	t2,$f8
    12ac:	3c018000 	lui	at,0x8000
    12b0:	10000007 	b	12d0 <EnBomChu_Draw+0x16c>
    12b4:	01415025 	or	t2,t2,at
    12b8:	10000005 	b	12d0 <EnBomChu_Draw+0x16c>
    12bc:	240affff 	li	t2,-1
    12c0:	440a4000 	mfc1	t2,$f8
    12c4:	00000000 	nop
    12c8:	0540fffb 	bltz	t2,12b8 <EnBomChu_Draw+0x154>
    12cc:	00000000 	nop
    12d0:	3c014208 	lui	at,0x4208
    12d4:	44c9f800 	ctc1	t1,$31
    12d8:	44813000 	mtc1	at,$f6
    12dc:	240e0001 	li	t6,1
    12e0:	3c014f00 	lui	at,0x4f00
    12e4:	46060282 	mul.s	$f10,$f0,$f6
    12e8:	000a6600 	sll	t4,t2,0x18
    12ec:	460a1400 	add.s	$f16,$f2,$f10
    12f0:	444df800 	cfc1	t5,$31
    12f4:	44cef800 	ctc1	t6,$31
    12f8:	00000000 	nop
    12fc:	460084a4 	cvt.w.s	$f18,$f16
    1300:	444ef800 	cfc1	t6,$31
    1304:	00000000 	nop
    1308:	31ce0078 	andi	t6,t6,0x78
    130c:	51c00013 	beqzl	t6,135c <EnBomChu_Draw+0x1f8>
    1310:	440e9000 	mfc1	t6,$f18
    1314:	44819000 	mtc1	at,$f18
    1318:	240e0001 	li	t6,1
    131c:	46128481 	sub.s	$f18,$f16,$f18
    1320:	44cef800 	ctc1	t6,$31
    1324:	00000000 	nop
    1328:	460094a4 	cvt.w.s	$f18,$f18
    132c:	444ef800 	cfc1	t6,$31
    1330:	00000000 	nop
    1334:	31ce0078 	andi	t6,t6,0x78
    1338:	15c00005 	bnez	t6,1350 <EnBomChu_Draw+0x1ec>
    133c:	00000000 	nop
    1340:	440e9000 	mfc1	t6,$f18
    1344:	3c018000 	lui	at,0x8000
    1348:	10000007 	b	1368 <EnBomChu_Draw+0x204>
    134c:	01c17025 	or	t6,t6,at
    1350:	10000005 	b	1368 <EnBomChu_Draw+0x204>
    1354:	240effff 	li	t6,-1
    1358:	440e9000 	mfc1	t6,$f18
    135c:	00000000 	nop
    1360:	05c0fffb 	bltz	t6,1350 <EnBomChu_Draw+0x1ec>
    1364:	00000000 	nop
    1368:	3c01420c 	lui	at,0x420c
    136c:	44812000 	mtc1	at,$f4
    1370:	3c01c20c 	lui	at,0xc20c
    1374:	44cdf800 	ctc1	t5,$31
    1378:	44814000 	mtc1	at,$f8
    137c:	24090001 	li	t1,1
    1380:	31cf00ff 	andi	t7,t6,0xff
    1384:	46080182 	mul.s	$f6,$f0,$f8
    1388:	000fc400 	sll	t8,t7,0x10
    138c:	0198c825 	or	t9,t4,t8
    1390:	3c014f00 	lui	at,0x4f00
    1394:	46062280 	add.s	$f10,$f4,$f6
    1398:	4448f800 	cfc1	t0,$31
    139c:	44c9f800 	ctc1	t1,$31
    13a0:	00000000 	nop
    13a4:	46005424 	cvt.w.s	$f16,$f10
    13a8:	4449f800 	cfc1	t1,$31
    13ac:	00000000 	nop
    13b0:	31290078 	andi	t1,t1,0x78
    13b4:	51200013 	beqzl	t1,1404 <EnBomChu_Draw+0x2a0>
    13b8:	44098000 	mfc1	t1,$f16
    13bc:	44818000 	mtc1	at,$f16
    13c0:	24090001 	li	t1,1
    13c4:	46105401 	sub.s	$f16,$f10,$f16
    13c8:	44c9f800 	ctc1	t1,$31
    13cc:	00000000 	nop
    13d0:	46008424 	cvt.w.s	$f16,$f16
    13d4:	4449f800 	cfc1	t1,$31
    13d8:	00000000 	nop
    13dc:	31290078 	andi	t1,t1,0x78
    13e0:	15200005 	bnez	t1,13f8 <EnBomChu_Draw+0x294>
    13e4:	00000000 	nop
    13e8:	44098000 	mfc1	t1,$f16
    13ec:	3c018000 	lui	at,0x8000
    13f0:	10000007 	b	1410 <EnBomChu_Draw+0x2ac>
    13f4:	01214825 	or	t1,t1,at
    13f8:	10000005 	b	1410 <EnBomChu_Draw+0x2ac>
    13fc:	2409ffff 	li	t1,-1
    1400:	44098000 	mfc1	t1,$f16
    1404:	00000000 	nop
    1408:	0520fffb 	bltz	t1,13f8 <EnBomChu_Draw+0x294>
    140c:	00000000 	nop
    1410:	312a00ff 	andi	t2,t1,0xff
    1414:	000a5a00 	sll	t3,t2,0x8
    1418:	032b6825 	or	t5,t9,t3
    141c:	35ae00ff 	ori	t6,t5,0xff
    1420:	ac6e0004 	sw	t6,4(v1)
    1424:	3c0142c8 	lui	at,0x42c8
    1428:	44c8f800 	ctc1	t0,$31
    142c:	44807000 	mtc1	zero,$f14
    1430:	44814000 	mtc1	at,$f8
    1434:	c6120178 	lwc1	$f18,376(s0)
    1438:	44067000 	mfc1	a2,$f14
    143c:	24070001 	li	a3,1
    1440:	46089302 	mul.s	$f12,$f18,$f8
    1444:	0c000000 	jal	0 <EnBomChu_Init>
    1448:	00000000 	nop
    144c:	8e2202c0 	lw	v0,704(s1)
    1450:	3c0cda38 	lui	t4,0xda38
    1454:	358c0003 	ori	t4,t4,0x3
    1458:	244f0008 	addiu	t7,v0,8
    145c:	ae2f02c0 	sw	t7,704(s1)
    1460:	ac4c0000 	sw	t4,0(v0)
    1464:	8fb8005c 	lw	t8,92(sp)
    1468:	3c050000 	lui	a1,0x0
    146c:	24a50000 	addiu	a1,a1,0
    1470:	240603bc 	li	a2,956
    1474:	00408025 	move	s0,v0
    1478:	0c000000 	jal	0 <EnBomChu_Init>
    147c:	8f040000 	lw	a0,0(t8)
    1480:	ae020004 	sw	v0,4(s0)
    1484:	8e2202c0 	lw	v0,704(s1)
    1488:	3c0a0400 	lui	t2,0x400
    148c:	254a7e10 	addiu	t2,t2,32272
    1490:	24480008 	addiu	t0,v0,8
    1494:	ae2802c0 	sw	t0,704(s1)
    1498:	3c09de00 	lui	t1,0xde00
    149c:	ac490000 	sw	t1,0(v0)
    14a0:	ac4a0004 	sw	t2,4(v0)
    14a4:	8fb9005c 	lw	t9,92(sp)
    14a8:	3c060000 	lui	a2,0x0
    14ac:	24c60000 	addiu	a2,a2,0
    14b0:	27a40030 	addiu	a0,sp,48
    14b4:	240703c1 	li	a3,961
    14b8:	0c000000 	jal	0 <EnBomChu_Init>
    14bc:	8f250000 	lw	a1,0(t9)
    14c0:	8fbf001c 	lw	ra,28(sp)
    14c4:	8fb00014 	lw	s0,20(sp)
    14c8:	8fb10018 	lw	s1,24(sp)
    14cc:	03e00008 	jr	ra
    14d0:	27bd0058 	addiu	sp,sp,88
	...
