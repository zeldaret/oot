
build/src/overlays/actors/ovl_En_Sw/z_en_sw.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B0BDB0>:
       0:	c4840004 	lwc1	$f4,4(a0)
       4:	c4a60008 	lwc1	$f6,8(a1)
       8:	c48a0008 	lwc1	$f10,8(a0)
       c:	c4b00004 	lwc1	$f16,4(a1)
      10:	46062202 	mul.s	$f8,$f4,$f6
      14:	00000000 	nop
      18:	46105482 	mul.s	$f18,$f10,$f16
      1c:	46124101 	sub.s	$f4,$f8,$f18
      20:	e4c40000 	swc1	$f4,0(a2)
      24:	c4aa0000 	lwc1	$f10,0(a1)
      28:	c4860008 	lwc1	$f6,8(a0)
      2c:	c4880000 	lwc1	$f8,0(a0)
      30:	c4b20008 	lwc1	$f18,8(a1)
      34:	460a3402 	mul.s	$f16,$f6,$f10
      38:	00000000 	nop
      3c:	46124102 	mul.s	$f4,$f8,$f18
      40:	46048181 	sub.s	$f6,$f16,$f4
      44:	e4c60004 	swc1	$f6,4(a2)
      48:	c4a80004 	lwc1	$f8,4(a1)
      4c:	c48a0000 	lwc1	$f10,0(a0)
      50:	c4a40000 	lwc1	$f4,0(a1)
      54:	c4900004 	lwc1	$f16,4(a0)
      58:	46085482 	mul.s	$f18,$f10,$f8
      5c:	00000000 	nop
      60:	46048182 	mul.s	$f6,$f16,$f4
      64:	46069281 	sub.s	$f10,$f18,$f6
      68:	03e00008 	jr	ra
      6c:	e4ca0008 	swc1	$f10,8(a2)

00000070 <func_80B0BE20>:
      70:	27bdffb0 	addiu	sp,sp,-80
      74:	3c010000 	lui	at,0x0
      78:	c4200000 	lwc1	$f0,0(at)
      7c:	afbf001c 	sw	ra,28(sp)
      80:	afb00018 	sw	s0,24(sp)
      84:	ac850078 	sw	a1,120(a0)
      88:	84ae0008 	lh	t6,8(a1)
      8c:	00808025 	move	s0,a0
      90:	448e2000 	mtc1	t6,$f4
      94:	00000000 	nop
      98:	468021a0 	cvt.s.w	$f6,$f4
      9c:	46003202 	mul.s	$f8,$f6,$f0
      a0:	e7a80044 	swc1	$f8,68(sp)
      a4:	84af000a 	lh	t7,10(a1)
      a8:	448f5000 	mtc1	t7,$f10
      ac:	00000000 	nop
      b0:	46805420 	cvt.s.w	$f16,$f10
      b4:	46008482 	mul.s	$f18,$f16,$f0
      b8:	e7b20048 	swc1	$f18,72(sp)
      bc:	84b8000c 	lh	t8,12(a1)
      c0:	44982000 	mtc1	t8,$f4
      c4:	00000000 	nop
      c8:	468021a0 	cvt.s.w	$f6,$f4
      cc:	46003282 	mul.s	$f10,$f6,$f0
      d0:	e7aa004c 	swc1	$f10,76(sp)
      d4:	c4900364 	lwc1	$f16,868(a0)
      d8:	c4860368 	lwc1	$f6,872(a0)
      dc:	46088102 	mul.s	$f4,$f16,$f8
      e0:	00000000 	nop
      e4:	46069402 	mul.s	$f16,$f18,$f6
      e8:	c492036c 	lwc1	$f18,876(a0)
      ec:	46125182 	mul.s	$f6,$f10,$f18
      f0:	46102200 	add.s	$f8,$f4,$f16
      f4:	0c000000 	jal	0 <func_80B0BDB0>
      f8:	46064300 	add.s	$f12,$f8,$f6
      fc:	26040364 	addiu	a0,s0,868
     100:	e7a00034 	swc1	$f0,52(sp)
     104:	afa40028 	sw	a0,40(sp)
     108:	27a50044 	addiu	a1,sp,68
     10c:	0c000000 	jal	0 <func_80B0BDB0>
     110:	27a60038 	addiu	a2,sp,56
     114:	c7ac0034 	lwc1	$f12,52(sp)
     118:	27a50038 	addiu	a1,sp,56
     11c:	0c000000 	jal	0 <func_80B0BDB0>
     120:	00003025 	move	a2,zero
     124:	26040370 	addiu	a0,s0,880
     128:	afa40024 	sw	a0,36(sp)
     12c:	0c000000 	jal	0 <func_80B0BDB0>
     130:	27a50038 	addiu	a1,sp,56
     134:	27b90038 	addiu	t9,sp,56
     138:	8fa40024 	lw	a0,36(sp)
     13c:	8f290000 	lw	t1,0(t9)
     140:	2606037c 	addiu	a2,s0,892
     144:	27a50044 	addiu	a1,sp,68
     148:	ac890000 	sw	t1,0(a0)
     14c:	8f280004 	lw	t0,4(t9)
     150:	ac880004 	sw	t0,4(a0)
     154:	8f290008 	lw	t1,8(t9)
     158:	ac890008 	sw	t1,8(a0)
     15c:	0c000000 	jal	0 <func_80B0BDB0>
     160:	afa60020 	sw	a2,32(sp)
     164:	0c000000 	jal	0 <func_80B0BDB0>
     168:	8fa40020 	lw	a0,32(sp)
     16c:	3c010000 	lui	at,0x0
     170:	c4240000 	lwc1	$f4,0(at)
     174:	3c013f80 	lui	at,0x3f80
     178:	4604003c 	c.lt.s	$f0,$f4
     17c:	00000000 	nop
     180:	45020004 	bc1fl	194 <func_80B0BE20+0x124>
     184:	44817000 	mtc1	at,$f14
     188:	10000034 	b	25c <func_80B0BE20+0x1ec>
     18c:	00001025 	move	v0,zero
     190:	44817000 	mtc1	at,$f14
     194:	c610037c 	lwc1	$f16,892(s0)
     198:	c6120380 	lwc1	$f18,896(s0)
     19c:	46007083 	div.s	$f2,$f14,$f0
     1a0:	c6060384 	lwc1	$f6,900(s0)
     1a4:	27ab0044 	addiu	t3,sp,68
     1a8:	44806000 	mtc1	zero,$f12
     1ac:	260403d8 	addiu	a0,s0,984
     1b0:	26050030 	addiu	a1,s0,48
     1b4:	00003025 	move	a2,zero
     1b8:	46028282 	mul.s	$f10,$f16,$f2
     1bc:	00000000 	nop
     1c0:	46029202 	mul.s	$f8,$f18,$f2
     1c4:	00000000 	nop
     1c8:	46023102 	mul.s	$f4,$f6,$f2
     1cc:	e60a037c 	swc1	$f10,892(s0)
     1d0:	e6080380 	swc1	$f8,896(s0)
     1d4:	e6040384 	swc1	$f4,900(s0)
     1d8:	8d6d0000 	lw	t5,0(t3)
     1dc:	8faa0028 	lw	t2,40(sp)
     1e0:	ad4d0000 	sw	t5,0(t2)
     1e4:	8d6c0004 	lw	t4,4(t3)
     1e8:	ad4c0004 	sw	t4,4(t2)
     1ec:	8d6d0008 	lw	t5,8(t3)
     1f0:	ad4d0008 	sw	t5,8(t2)
     1f4:	c6100370 	lwc1	$f16,880(s0)
     1f8:	c60a0374 	lwc1	$f10,884(s0)
     1fc:	c6120378 	lwc1	$f18,888(s0)
     200:	e61003d8 	swc1	$f16,984(s0)
     204:	e60a03dc 	swc1	$f10,988(s0)
     208:	e61203e0 	swc1	$f18,992(s0)
     20c:	c6080364 	lwc1	$f8,868(s0)
     210:	c6060368 	lwc1	$f6,872(s0)
     214:	c604036c 	lwc1	$f4,876(s0)
     218:	c610037c 	lwc1	$f16,892(s0)
     21c:	c60a0380 	lwc1	$f10,896(s0)
     220:	c6120384 	lwc1	$f18,900(s0)
     224:	e60e0414 	swc1	$f14,1044(s0)
     228:	e60c03e4 	swc1	$f12,996(s0)
     22c:	e60c03f4 	swc1	$f12,1012(s0)
     230:	e60c0404 	swc1	$f12,1028(s0)
     234:	e60c0408 	swc1	$f12,1032(s0)
     238:	e60c040c 	swc1	$f12,1036(s0)
     23c:	e60c0410 	swc1	$f12,1040(s0)
     240:	e60803e8 	swc1	$f8,1000(s0)
     244:	e60603ec 	swc1	$f6,1004(s0)
     248:	e60403f0 	swc1	$f4,1008(s0)
     24c:	e61003f8 	swc1	$f16,1016(s0)
     250:	e60a03fc 	swc1	$f10,1020(s0)
     254:	0c000000 	jal	0 <func_80B0BDB0>
     258:	e6120400 	swc1	$f18,1024(s0)
     25c:	8fbf001c 	lw	ra,28(sp)
     260:	8fb00018 	lw	s0,24(sp)
     264:	27bd0050 	addiu	sp,sp,80
     268:	03e00008 	jr	ra
     26c:	00000000 	nop

00000270 <func_80B0C020>:
     270:	27bdffc0 	addiu	sp,sp,-64
     274:	8fa80050 	lw	t0,80(sp)
     278:	afa40040 	sw	a0,64(sp)
     27c:	afbf002c 	sw	ra,44(sp)
     280:	248407c0 	addiu	a0,a0,1984
     284:	27ae003c 	addiu	t6,sp,60
     288:	240f0001 	li	t7,1
     28c:	24180001 	li	t8,1
     290:	24190001 	li	t9,1
     294:	afb9001c 	sw	t9,28(sp)
     298:	afb80018 	sw	t8,24(sp)
     29c:	afaf0014 	sw	t7,20(sp)
     2a0:	afae0010 	sw	t6,16(sp)
     2a4:	afa40034 	sw	a0,52(sp)
     2a8:	afa00020 	sw	zero,32(sp)
     2ac:	0c000000 	jal	0 <func_80B0BDB0>
     2b0:	afa80024 	sw	t0,36(sp)
     2b4:	14400003 	bnez	v0,2c4 <func_80B0C020+0x54>
     2b8:	8fa40034 	lw	a0,52(sp)
     2bc:	10000013 	b	30c <func_80B0C020+0x9c>
     2c0:	00001025 	move	v0,zero
     2c4:	8fa90050 	lw	t1,80(sp)
     2c8:	8fa5003c 	lw	a1,60(sp)
     2cc:	0c000000 	jal	0 <func_80B0BDB0>
     2d0:	8d260000 	lw	a2,0(t1)
     2d4:	304a0030 	andi	t2,v0,0x30
     2d8:	11400003 	beqz	t2,2e8 <func_80B0C020+0x78>
     2dc:	8fa40034 	lw	a0,52(sp)
     2e0:	1000000a 	b	30c <func_80B0C020+0x9c>
     2e4:	00001025 	move	v0,zero
     2e8:	8fab0050 	lw	t3,80(sp)
     2ec:	8fa5003c 	lw	a1,60(sp)
     2f0:	0c000000 	jal	0 <func_80B0BDB0>
     2f4:	8d660000 	lw	a2,0(t3)
     2f8:	50400004 	beqzl	v0,30c <func_80B0C020+0x9c>
     2fc:	8fa2003c 	lw	v0,60(sp)
     300:	10000002 	b	30c <func_80B0C020+0x9c>
     304:	00001025 	move	v0,zero
     308:	8fa2003c 	lw	v0,60(sp)
     30c:	8fbf002c 	lw	ra,44(sp)
     310:	27bd0040 	addiu	sp,sp,64
     314:	03e00008 	jr	ra
     318:	00000000 	nop

0000031c <func_80B0C0CC>:
     31c:	27bdff50 	addiu	sp,sp,-176
     320:	afbf004c 	sw	ra,76(sp)
     324:	afbe0048 	sw	s8,72(sp)
     328:	afb70044 	sw	s7,68(sp)
     32c:	afb60040 	sw	s6,64(sp)
     330:	afb5003c 	sw	s5,60(sp)
     334:	afb40038 	sw	s4,56(sp)
     338:	afb30034 	sw	s3,52(sp)
     33c:	afb20030 	sw	s2,48(sp)
     340:	afb1002c 	sw	s1,44(sp)
     344:	afb00028 	sw	s0,40(sp)
     348:	f7b40020 	sdc1	$f20,32(sp)
     34c:	afa600b8 	sw	a2,184(sp)
     350:	afa00064 	sw	zero,100(sp)
     354:	240e0001 	li	t6,1
     358:	a08e042c 	sb	t6,1068(a0)
     35c:	24830024 	addiu	v1,a0,36
     360:	8c780000 	lw	t8,0(v1)
     364:	27a20058 	addiu	v0,sp,88
     368:	27b40078 	addiu	s4,sp,120
     36c:	ac580000 	sw	t8,0(v0)
     370:	8c6f0004 	lw	t7,4(v1)
     374:	8c480000 	lw	t0,0(v0)
     378:	8c4a0000 	lw	t2,0(v0)
     37c:	ac4f0004 	sw	t7,4(v0)
     380:	8c780008 	lw	t8,8(v1)
     384:	27b50084 	addiu	s5,sp,132
     388:	3c014190 	lui	at,0x4190
     38c:	aeaf0004 	sw	t7,4(s5)
     390:	ae8f0004 	sw	t7,4(s4)
     394:	ae880000 	sw	t0,0(s4)
     398:	aeaa0000 	sw	t2,0(s5)
     39c:	aeb80008 	sw	t8,8(s5)
     3a0:	ac580008 	sw	t8,8(v0)
     3a4:	ae980008 	sw	t8,8(s4)
     3a8:	44810000 	mtc1	at,$f0
     3ac:	c4860364 	lwc1	$f6,868(a0)
     3b0:	c7a40084 	lwc1	$f4,132(sp)
     3b4:	c7b00088 	lwc1	$f16,136(sp)
     3b8:	46003202 	mul.s	$f8,$f6,$f0
     3bc:	00808025 	move	s0,a0
     3c0:	27b20090 	addiu	s2,sp,144
     3c4:	00a0b825 	move	s7,a1
     3c8:	27ab0070 	addiu	t3,sp,112
     3cc:	02403825 	move	a3,s2
     3d0:	02803025 	move	a2,s4
     3d4:	46082280 	add.s	$f10,$f4,$f8
     3d8:	c7a8008c 	lwc1	$f8,140(sp)
     3dc:	e7aa0084 	swc1	$f10,132(sp)
     3e0:	c4920368 	lwc1	$f18,872(a0)
     3e4:	46009182 	mul.s	$f6,$f18,$f0
     3e8:	46068100 	add.s	$f4,$f16,$f6
     3ec:	c7a60078 	lwc1	$f6,120(sp)
     3f0:	e7a40088 	swc1	$f4,136(sp)
     3f4:	c48a036c 	lwc1	$f10,876(a0)
     3f8:	46005482 	mul.s	$f18,$f10,$f0
     3fc:	46124400 	add.s	$f16,$f8,$f18
     400:	c7b2007c 	lwc1	$f18,124(sp)
     404:	e7b0008c 	swc1	$f16,140(sp)
     408:	c4840364 	lwc1	$f4,868(a0)
     40c:	46002282 	mul.s	$f10,$f4,$f0
     410:	460a3201 	sub.s	$f8,$f6,$f10
     414:	c7aa0080 	lwc1	$f10,128(sp)
     418:	e7a80078 	swc1	$f8,120(sp)
     41c:	c4900368 	lwc1	$f16,872(a0)
     420:	46008102 	mul.s	$f4,$f16,$f0
     424:	46049181 	sub.s	$f6,$f18,$f4
     428:	e7a6007c 	swc1	$f6,124(sp)
     42c:	c488036c 	lwc1	$f8,876(a0)
     430:	00a02025 	move	a0,a1
     434:	02a02825 	move	a1,s5
     438:	46004402 	mul.s	$f16,$f8,$f0
     43c:	afa30054 	sw	v1,84(sp)
     440:	afab0010 	sw	t3,16(sp)
     444:	46105481 	sub.s	$f18,$f10,$f16
     448:	0c000000 	jal	0 <func_80B0BDB0>
     44c:	e7b20080 	swc1	$f18,128(sp)
     450:	10400041 	beqz	v0,558 <func_80B0C0CC+0x23c>
     454:	00408825 	move	s1,v0
     458:	920c0360 	lbu	t4,864(s0)
     45c:	3c0141c0 	lui	at,0x41c0
     460:	5580003e 	bnezl	t4,55c <func_80B0C0CC+0x240>
     464:	8e8f0000 	lw	t7,0(s4)
     468:	44810000 	mtc1	at,$f0
     46c:	c604037c 	lwc1	$f4,892(s0)
     470:	c7a80084 	lwc1	$f8,132(sp)
     474:	27b6006c 	addiu	s6,sp,108
     478:	46002182 	mul.s	$f6,$f4,$f0
     47c:	c7a40088 	lwc1	$f4,136(sp)
     480:	27be009c 	addiu	s8,sp,156
     484:	03c03825 	move	a3,s8
     488:	02e02025 	move	a0,s7
     48c:	02a02825 	move	a1,s5
     490:	02803025 	move	a2,s4
     494:	46083280 	add.s	$f10,$f6,$f8
     498:	e7aa0078 	swc1	$f10,120(sp)
     49c:	c6100380 	lwc1	$f16,896(s0)
     4a0:	46008482 	mul.s	$f18,$f16,$f0
     4a4:	c7b0008c 	lwc1	$f16,140(sp)
     4a8:	46049180 	add.s	$f6,$f18,$f4
     4ac:	e7a6007c 	swc1	$f6,124(sp)
     4b0:	c6080384 	lwc1	$f8,900(s0)
     4b4:	afb60010 	sw	s6,16(sp)
     4b8:	46004282 	mul.s	$f10,$f8,$f0
     4bc:	46105480 	add.s	$f18,$f10,$f16
     4c0:	0c000000 	jal	0 <func_80B0BDB0>
     4c4:	e7b20080 	swc1	$f18,128(sp)
     4c8:	10400011 	beqz	v0,510 <func_80B0C0CC+0x1f4>
     4cc:	00402825 	move	a1,v0
     4d0:	8fad00b8 	lw	t5,184(sp)
     4d4:	24130001 	li	s3,1
     4d8:	55b3001d 	bnel	t5,s3,550 <func_80B0C0CC+0x234>
     4dc:	240d0001 	li	t5,1
     4e0:	0c000000 	jal	0 <func_80B0BDB0>
     4e4:	02002025 	move	a0,s0
     4e8:	8fae0054 	lw	t6,84(sp)
     4ec:	8fd80000 	lw	t8,0(s8)
     4f0:	add80000 	sw	t8,0(t6)
     4f4:	8fcf0004 	lw	t7,4(s8)
     4f8:	adcf0004 	sw	t7,4(t6)
     4fc:	8fd80008 	lw	t8,8(s8)
     500:	add80008 	sw	t8,8(t6)
     504:	8fb9006c 	lw	t9,108(sp)
     508:	10000010 	b	54c <func_80B0C0CC+0x230>
     50c:	a219007d 	sb	t9,125(s0)
     510:	8e080078 	lw	t0,120(s0)
     514:	02002025 	move	a0,s0
     518:	52280004 	beql	s1,t0,52c <func_80B0C0CC+0x210>
     51c:	8fa90054 	lw	t1,84(sp)
     520:	0c000000 	jal	0 <func_80B0BDB0>
     524:	02202825 	move	a1,s1
     528:	8fa90054 	lw	t1,84(sp)
     52c:	8e4b0000 	lw	t3,0(s2)
     530:	ad2b0000 	sw	t3,0(t1)
     534:	8e4a0004 	lw	t2,4(s2)
     538:	ad2a0004 	sw	t2,4(t1)
     53c:	8e4b0008 	lw	t3,8(s2)
     540:	ad2b0008 	sw	t3,8(t1)
     544:	8fac0070 	lw	t4,112(sp)
     548:	a20c007d 	sb	t4,125(s0)
     54c:	240d0001 	li	t5,1
     550:	1000005c 	b	6c4 <func_80B0C0CC+0x3a8>
     554:	afad0064 	sw	t5,100(sp)
     558:	8e8f0000 	lw	t7,0(s4)
     55c:	8e8e0004 	lw	t6,4(s4)
     560:	3c0141c0 	lui	at,0x41c0
     564:	aeaf0000 	sw	t7,0(s5)
     568:	8e8f0008 	lw	t7,8(s4)
     56c:	4481a000 	mtc1	at,$f20
     570:	00008825 	move	s1,zero
     574:	27be009c 	addiu	s8,sp,156
     578:	27b6006c 	addiu	s6,sp,108
     57c:	24130001 	li	s3,1
     580:	24120003 	li	s2,3
     584:	aeae0004 	sw	t6,4(s5)
     588:	aeaf0008 	sw	t7,8(s5)
     58c:	16200011 	bnez	s1,5d4 <func_80B0C0CC+0x2b8>
     590:	02e02025 	move	a0,s7
     594:	c606037c 	lwc1	$f6,892(s0)
     598:	c7a40084 	lwc1	$f4,132(sp)
     59c:	c7b00088 	lwc1	$f16,136(sp)
     5a0:	46143202 	mul.s	$f8,$f6,$f20
     5a4:	46082281 	sub.s	$f10,$f4,$f8
     5a8:	c7a8008c 	lwc1	$f8,140(sp)
     5ac:	e7aa0078 	swc1	$f10,120(sp)
     5b0:	c6120380 	lwc1	$f18,896(s0)
     5b4:	46149182 	mul.s	$f6,$f18,$f20
     5b8:	46068101 	sub.s	$f4,$f16,$f6
     5bc:	e7a4007c 	swc1	$f4,124(sp)
     5c0:	c60a0384 	lwc1	$f10,900(s0)
     5c4:	46145482 	mul.s	$f18,$f10,$f20
     5c8:	46124401 	sub.s	$f16,$f8,$f18
     5cc:	10000022 	b	658 <func_80B0C0CC+0x33c>
     5d0:	e7b00080 	swc1	$f16,128(sp)
     5d4:	56330012 	bnel	s1,s3,620 <func_80B0C0CC+0x304>
     5d8:	c6040370 	lwc1	$f4,880(s0)
     5dc:	c6060370 	lwc1	$f6,880(s0)
     5e0:	c7aa0084 	lwc1	$f10,132(sp)
     5e4:	46143102 	mul.s	$f4,$f6,$f20
     5e8:	c7a60088 	lwc1	$f6,136(sp)
     5ec:	460a2200 	add.s	$f8,$f4,$f10
     5f0:	e7a80078 	swc1	$f8,120(sp)
     5f4:	c6120374 	lwc1	$f18,884(s0)
     5f8:	46149402 	mul.s	$f16,$f18,$f20
     5fc:	c7b2008c 	lwc1	$f18,140(sp)
     600:	46068100 	add.s	$f4,$f16,$f6
     604:	e7a4007c 	swc1	$f4,124(sp)
     608:	c60a0378 	lwc1	$f10,888(s0)
     60c:	46145202 	mul.s	$f8,$f10,$f20
     610:	46124400 	add.s	$f16,$f8,$f18
     614:	10000010 	b	658 <func_80B0C0CC+0x33c>
     618:	e7b00080 	swc1	$f16,128(sp)
     61c:	c6040370 	lwc1	$f4,880(s0)
     620:	c7a60084 	lwc1	$f6,132(sp)
     624:	c7b20088 	lwc1	$f18,136(sp)
     628:	46142282 	mul.s	$f10,$f4,$f20
     62c:	460a3201 	sub.s	$f8,$f6,$f10
     630:	c7aa008c 	lwc1	$f10,140(sp)
     634:	e7a80078 	swc1	$f8,120(sp)
     638:	c6100374 	lwc1	$f16,884(s0)
     63c:	46148102 	mul.s	$f4,$f16,$f20
     640:	46049181 	sub.s	$f6,$f18,$f4
     644:	e7a6007c 	swc1	$f6,124(sp)
     648:	c6080378 	lwc1	$f8,888(s0)
     64c:	46144402 	mul.s	$f16,$f8,$f20
     650:	46105481 	sub.s	$f18,$f10,$f16
     654:	e7b20080 	swc1	$f18,128(sp)
     658:	02a02825 	move	a1,s5
     65c:	02803025 	move	a2,s4
     660:	03c03825 	move	a3,s8
     664:	0c000000 	jal	0 <func_80B0BDB0>
     668:	afb60010 	sw	s6,16(sp)
     66c:	10400012 	beqz	v0,6b8 <func_80B0C0CC+0x39c>
     670:	00402825 	move	a1,v0
     674:	8fb800b8 	lw	t8,184(sp)
     678:	5713000d 	bnel	t8,s3,6b0 <func_80B0C0CC+0x394>
     67c:	240b0001 	li	t3,1
     680:	0c000000 	jal	0 <func_80B0BDB0>
     684:	02002025 	move	a0,s0
     688:	8fb90054 	lw	t9,84(sp)
     68c:	8fc90000 	lw	t1,0(s8)
     690:	af290000 	sw	t1,0(t9)
     694:	8fc80004 	lw	t0,4(s8)
     698:	af280004 	sw	t0,4(t9)
     69c:	8fc90008 	lw	t1,8(s8)
     6a0:	af290008 	sw	t1,8(t9)
     6a4:	8faa006c 	lw	t2,108(sp)
     6a8:	a20a007d 	sb	t2,125(s0)
     6ac:	240b0001 	li	t3,1
     6b0:	10000004 	b	6c4 <func_80B0C0CC+0x3a8>
     6b4:	afab0064 	sw	t3,100(sp)
     6b8:	26310001 	addiu	s1,s1,1
     6bc:	1632ffb3 	bne	s1,s2,58c <func_80B0C0CC+0x270>
     6c0:	00000000 	nop
     6c4:	86050030 	lh	a1,48(s0)
     6c8:	240c0001 	li	t4,1
     6cc:	afac0010 	sw	t4,16(sp)
     6d0:	260400b4 	addiu	a0,s0,180
     6d4:	24060008 	li	a2,8
     6d8:	0c000000 	jal	0 <func_80B0BDB0>
     6dc:	24070fa0 	li	a3,4000
     6e0:	86050032 	lh	a1,50(s0)
     6e4:	240d0001 	li	t5,1
     6e8:	afad0010 	sw	t5,16(sp)
     6ec:	260400b6 	addiu	a0,s0,182
     6f0:	24060008 	li	a2,8
     6f4:	0c000000 	jal	0 <func_80B0BDB0>
     6f8:	24070fa0 	li	a3,4000
     6fc:	86050034 	lh	a1,52(s0)
     700:	240e0001 	li	t6,1
     704:	afae0010 	sw	t6,16(sp)
     708:	260400b8 	addiu	a0,s0,184
     70c:	24060008 	li	a2,8
     710:	0c000000 	jal	0 <func_80B0BDB0>
     714:	24070fa0 	li	a3,4000
     718:	8fbf004c 	lw	ra,76(sp)
     71c:	8fa20064 	lw	v0,100(sp)
     720:	d7b40020 	ldc1	$f20,32(sp)
     724:	8fb00028 	lw	s0,40(sp)
     728:	8fb1002c 	lw	s1,44(sp)
     72c:	8fb20030 	lw	s2,48(sp)
     730:	8fb30034 	lw	s3,52(sp)
     734:	8fb40038 	lw	s4,56(sp)
     738:	8fb5003c 	lw	s5,60(sp)
     73c:	8fb60040 	lw	s6,64(sp)
     740:	8fb70044 	lw	s7,68(sp)
     744:	8fbe0048 	lw	s8,72(sp)
     748:	03e00008 	jr	ra
     74c:	27bd00b0 	addiu	sp,sp,176

00000750 <EnSw_Init>:
     750:	27bdffa0 	addiu	sp,sp,-96
     754:	3c0f0000 	lui	t7,0x0
     758:	afbf002c 	sw	ra,44(sp)
     75c:	afb00028 	sw	s0,40(sp)
     760:	afa50064 	sw	a1,100(sp)
     764:	25ef0000 	addiu	t7,t7,0
     768:	8df90000 	lw	t9,0(t7)
     76c:	27ae004c 	addiu	t6,sp,76
     770:	8df80004 	lw	t8,4(t7)
     774:	add90000 	sw	t9,0(t6)
     778:	8df90008 	lw	t9,8(t7)
     77c:	add80004 	sw	t8,4(t6)
     780:	00808025 	move	s0,a0
     784:	add90008 	sw	t9,8(t6)
     788:	8482001c 	lh	v0,28(a0)
     78c:	24018000 	li	at,-32768
     790:	2605014c 	addiu	a1,s0,332
     794:	30488000 	andi	t0,v0,0x8000
     798:	11000009 	beqz	t0,7c0 <EnSw_Init+0x70>
     79c:	00411821 	addu	v1,v0,at
     7a0:	3063e000 	andi	v1,v1,0xe000
     7a4:	00031b43 	sra	v1,v1,0xd
     7a8:	24630001 	addiu	v1,v1,1
     7ac:	00035340 	sll	t2,v1,0xd
     7b0:	30491fff 	andi	t1,v0,0x1fff
     7b4:	012a5825 	or	t3,t1,t2
     7b8:	a48b001c 	sh	t3,28(a0)
     7bc:	8482001c 	lh	v0,28(a0)
     7c0:	304ce000 	andi	t4,v0,0xe000
     7c4:	000c6b43 	sra	t5,t4,0xd
     7c8:	19a00009 	blez	t5,7f0 <EnSw_Init+0xa0>
     7cc:	3c090000 	lui	t1,0x0
     7d0:	30431f00 	andi	v1,v0,0x1f00
     7d4:	00031a03 	sra	v1,v1,0x8
     7d8:	2463ffff 	addiu	v1,v1,-1
     7dc:	00037a00 	sll	t7,v1,0x8
     7e0:	304ee0ff 	andi	t6,v0,0xe0ff
     7e4:	01cfc025 	or	t8,t6,t7
     7e8:	a618001c 	sh	t8,28(s0)
     7ec:	8602001c 	lh	v0,28(s0)
     7f0:	30431f00 	andi	v1,v0,0x1f00
     7f4:	00031a03 	sra	v1,v1,0x8
     7f8:	30640003 	andi	a0,v1,0x3
     7fc:	0003c883 	sra	t9,v1,0x2
     800:	00194080 	sll	t0,t9,0x2
     804:	00042080 	sll	a0,a0,0x2
     808:	3c0a0000 	lui	t2,0x0
     80c:	01445021 	addu	t2,t2,a0
     810:	01284821 	addu	t1,t1,t0
     814:	3c0c0000 	lui	t4,0x0
     818:	8d290e9c 	lw	t1,3740(t1)
     81c:	8d4a0000 	lw	t2,0(t2)
     820:	01846021 	addu	t4,t4,a0
     824:	8d8c0000 	lw	t4,0(t4)
     828:	012a5824 	and	t3,t1,t2
     82c:	304e00ff 	andi	t6,v0,0xff
     830:	018b6806 	srlv	t5,t3,t4
     834:	01ae7824 	and	t7,t5,t6
     838:	11e00005 	beqz	t7,850 <EnSw_Init+0x100>
     83c:	8fa40064 	lw	a0,100(sp)
     840:	0c000000 	jal	0 <func_80B0BDB0>
     844:	02002025 	move	a0,s0
     848:	100000ef 	b	c08 <EnSw_Init+0x4b8>
     84c:	8fbf002c 	lw	ra,44(sp)
     850:	3c060600 	lui	a2,0x600
     854:	261801f8 	addiu	t8,s0,504
     858:	261902ac 	addiu	t9,s0,684
     85c:	2408001e 	li	t0,30
     860:	afa80018 	sw	t0,24(sp)
     864:	afb90014 	sw	t9,20(sp)
     868:	afb80010 	sw	t8,16(sp)
     86c:	24c65298 	addiu	a2,a2,21144
     870:	00003825 	move	a3,zero
     874:	0c000000 	jal	0 <func_80B0BDB0>
     878:	afa50040 	sw	a1,64(sp)
     87c:	3c050000 	lui	a1,0x0
     880:	24a50000 	addiu	a1,a1,0
     884:	8fa40040 	lw	a0,64(sp)
     888:	0c000000 	jal	0 <func_80B0BDB0>
     88c:	00003025 	move	a2,zero
     890:	44800000 	mtc1	zero,$f0
     894:	260400b4 	addiu	a0,s0,180
     898:	afa4003c 	sw	a0,60(sp)
     89c:	44050000 	mfc1	a1,$f0
     8a0:	44070000 	mfc1	a3,$f0
     8a4:	0c000000 	jal	0 <func_80B0BDB0>
     8a8:	00003025 	move	a2,zero
     8ac:	26050194 	addiu	a1,s0,404
     8b0:	afa50040 	sw	a1,64(sp)
     8b4:	0c000000 	jal	0 <func_80B0BDB0>
     8b8:	8fa40064 	lw	a0,100(sp)
     8bc:	3c070000 	lui	a3,0x0
     8c0:	260901b4 	addiu	t1,s0,436
     8c4:	8fa50040 	lw	a1,64(sp)
     8c8:	afa90010 	sw	t1,16(sp)
     8cc:	24e70000 	addiu	a3,a3,0
     8d0:	8fa40064 	lw	a0,100(sp)
     8d4:	0c000000 	jal	0 <func_80B0BDB0>
     8d8:	02003025 	move	a2,s0
     8dc:	0c000000 	jal	0 <func_80B0BDB0>
     8e0:	2404000e 	li	a0,14
     8e4:	3c060000 	lui	a2,0x0
     8e8:	24c60000 	addiu	a2,a2,0
     8ec:	26040098 	addiu	a0,s0,152
     8f0:	0c000000 	jal	0 <func_80B0BDB0>
     8f4:	00402825 	move	a1,v0
     8f8:	860a001c 	lh	t2,28(s0)
     8fc:	3c010000 	lui	at,0x0
     900:	c4240000 	lwc1	$f4,0(at)
     904:	314be000 	andi	t3,t2,0xe000
     908:	000b6343 	sra	t4,t3,0xd
     90c:	1580002c 	bnez	t4,9c0 <EnSw_Init+0x270>
     910:	e6040050 	swc1	$f4,80(s0)
     914:	a6000030 	sh	zero,48(s0)
     918:	a6000034 	sh	zero,52(s0)
     91c:	26020030 	addiu	v0,s0,48
     920:	884f0000 	lwl	t7,0(v0)
     924:	8fad003c 	lw	t5,60(sp)
     928:	984f0003 	lwr	t7,3(v0)
     92c:	a9af0000 	swl	t7,0(t5)
     930:	b9af0003 	swr	t7,3(t5)
     934:	944f0004 	lhu	t7,4(v0)
     938:	a5af0004 	sh	t7,4(t5)
     93c:	c6060028 	lwc1	$f6,40(s0)
     940:	86040032 	lh	a0,50(s0)
     944:	e6060488 	swc1	$f6,1160(s0)
     948:	0c000000 	jal	0 <func_80B0BDB0>
     94c:	afa20030 	sw	v0,48(sp)
     950:	3c01c270 	lui	at,0xc270
     954:	44814000 	mtc1	at,$f8
     958:	c6100024 	lwc1	$f16,36(s0)
     95c:	86040032 	lh	a0,50(s0)
     960:	46080282 	mul.s	$f10,$f0,$f8
     964:	46105480 	add.s	$f18,$f10,$f16
     968:	0c000000 	jal	0 <func_80B0BDB0>
     96c:	e6120484 	swc1	$f18,1156(s0)
     970:	3c01c270 	lui	at,0xc270
     974:	44812000 	mtc1	at,$f4
     978:	c608002c 	lwc1	$f8,44(s0)
     97c:	02002025 	move	a0,s0
     980:	46040182 	mul.s	$f6,$f0,$f4
     984:	46083280 	add.s	$f10,$f6,$f8
     988:	e60a048c 	swc1	$f10,1164(s0)
     98c:	0c000000 	jal	0 <func_80B0BDB0>
     990:	8fa50064 	lw	a1,100(sp)
     994:	26180008 	addiu	t8,s0,8
     998:	26190024 	addiu	t9,s0,36
     99c:	afb90034 	sw	t9,52(sp)
     9a0:	afb80038 	sw	t8,56(sp)
     9a4:	8f2b0000 	lw	t3,0(t9)
     9a8:	af0b0000 	sw	t3,0(t8)
     9ac:	8f2a0004 	lw	t2,4(t9)
     9b0:	af0a0004 	sw	t2,4(t8)
     9b4:	8f2b0008 	lw	t3,8(t9)
     9b8:	10000027 	b	a58 <EnSw_Init+0x308>
     9bc:	af0b0008 	sw	t3,8(t8)
     9c0:	860400b6 	lh	a0,182(s0)
     9c4:	24844000 	addiu	a0,a0,16384
     9c8:	00042400 	sll	a0,a0,0x10
     9cc:	0c000000 	jal	0 <func_80B0BDB0>
     9d0:	00042403 	sra	a0,a0,0x10
     9d4:	860400b6 	lh	a0,182(s0)
     9d8:	44808000 	mtc1	zero,$f16
     9dc:	e6000370 	swc1	$f0,880(s0)
     9e0:	24844000 	addiu	a0,a0,16384
     9e4:	00042400 	sll	a0,a0,0x10
     9e8:	00042403 	sra	a0,a0,0x10
     9ec:	0c000000 	jal	0 <func_80B0BDB0>
     9f0:	e6100374 	swc1	$f16,884(s0)
     9f4:	44801000 	mtc1	zero,$f2
     9f8:	3c013f80 	lui	at,0x3f80
     9fc:	44819000 	mtc1	at,$f18
     a00:	e6000378 	swc1	$f0,888(s0)
     a04:	860400b6 	lh	a0,182(s0)
     a08:	e6020364 	swc1	$f2,868(s0)
     a0c:	e602036c 	swc1	$f2,876(s0)
     a10:	0c000000 	jal	0 <func_80B0BDB0>
     a14:	e6120368 	swc1	$f18,872(s0)
     a18:	44802000 	mtc1	zero,$f4
     a1c:	e600037c 	swc1	$f0,892(s0)
     a20:	860400b6 	lh	a0,182(s0)
     a24:	0c000000 	jal	0 <func_80B0BDB0>
     a28:	e6040380 	swc1	$f4,896(s0)
     a2c:	e6000384 	swc1	$f0,900(s0)
     a30:	8fa50064 	lw	a1,100(sp)
     a34:	02002025 	move	a0,s0
     a38:	0c000000 	jal	0 <func_80B0BDB0>
     a3c:	24060001 	li	a2,1
     a40:	260c0008 	addiu	t4,s0,8
     a44:	260d0024 	addiu	t5,s0,36
     a48:	260e0030 	addiu	t6,s0,48
     a4c:	afae0030 	sw	t6,48(sp)
     a50:	afad0034 	sw	t5,52(sp)
     a54:	afac0038 	sw	t4,56(sp)
     a58:	8602001c 	lh	v0,28(s0)
     a5c:	3c070000 	lui	a3,0x0
     a60:	24e70000 	addiu	a3,a3,0
     a64:	3042e000 	andi	v0,v0,0xe000
     a68:	00021343 	sra	v0,v0,0xd
     a6c:	28410003 	slti	at,v0,3
     a70:	1420000c 	bnez	at,aa4 <EnSw_Init+0x354>
     a74:	24044802 	li	a0,18434
     a78:	3c0f0000 	lui	t7,0x0
     a7c:	25ef0000 	addiu	t7,t7,0
     a80:	3c050000 	lui	a1,0x0
     a84:	24a50000 	addiu	a1,a1,0
     a88:	afaf0014 	sw	t7,20(sp)
     a8c:	24060004 	li	a2,4
     a90:	0c000000 	jal	0 <func_80B0BDB0>
     a94:	afa70010 	sw	a3,16(sp)
     a98:	8602001c 	lh	v0,28(s0)
     a9c:	3042e000 	andi	v0,v0,0xe000
     aa0:	00021343 	sra	v0,v0,0xd
     aa4:	24010001 	li	at,1
     aa8:	10410015 	beq	v0,at,b00 <EnSw_Init+0x3b0>
     aac:	24010002 	li	at,2
     ab0:	10410010 	beq	v0,at,af4 <EnSw_Init+0x3a4>
     ab4:	24010003 	li	at,3
     ab8:	10410004 	beq	v0,at,acc <EnSw_Init+0x37c>
     abc:	24180001 	li	t8,1
     ac0:	24010004 	li	at,4
     ac4:	1441001c 	bne	v0,at,b38 <EnSw_Init+0x3e8>
     ac8:	8fa40064 	lw	a0,100(sp)
     acc:	3c014100 	lui	at,0x4100
     ad0:	44813000 	mtc1	at,$f6
     ad4:	3c014080 	lui	at,0x4080
     ad8:	44814000 	mtc1	at,$f8
     adc:	3c01bf80 	lui	at,0xbf80
     ae0:	44815000 	mtc1	at,$f10
     ae4:	a2180360 	sb	t8,864(s0)
     ae8:	e6060060 	swc1	$f6,96(s0)
     aec:	e6080068 	swc1	$f8,104(s0)
     af0:	e60a006c 	swc1	$f10,108(s0)
     af4:	44808000 	mtc1	zero,$f16
     af8:	00000000 	nop
     afc:	e6100050 	swc1	$f16,80(s0)
     b00:	8e0201b0 	lw	v0,432(s0)
     b04:	2401fffe 	li	at,-2
     b08:	24090020 	li	t1,32
     b0c:	90590005 	lbu	t9,5(v0)
     b10:	00194040 	sll	t0,t9,0x1
     b14:	a0480005 	sb	t0,5(v0)
     b18:	920a00af 	lbu	t2,175(s0)
     b1c:	8e0c0004 	lw	t4,4(s0)
     b20:	a2090117 	sb	t1,279(s0)
     b24:	000a5840 	sll	t3,t2,0x1
     b28:	01816824 	and	t5,t4,at
     b2c:	a20b00af 	sb	t3,175(s0)
     b30:	10000007 	b	b50 <EnSw_Init+0x400>
     b34:	ae0d0004 	sw	t5,4(s0)
     b38:	24851c24 	addiu	a1,a0,7204
     b3c:	02003025 	move	a2,s0
     b40:	0c000000 	jal	0 <func_80B0BDB0>
     b44:	24070005 	li	a3,5
     b48:	240f001f 	li	t7,31
     b4c:	a20f0117 	sb	t7,279(s0)
     b50:	2404000f 	li	a0,15
     b54:	0c000000 	jal	0 <func_80B0BDB0>
     b58:	2405001e 	li	a1,30
     b5c:	a602038e 	sh	v0,910(s0)
     b60:	02002025 	move	a0,s0
     b64:	0c000000 	jal	0 <func_80B0BDB0>
     b68:	8e050050 	lw	a1,80(s0)
     b6c:	8fb90034 	lw	t9,52(sp)
     b70:	8fb80038 	lw	t8,56(sp)
     b74:	240e0028 	li	t6,40
     b78:	8f290000 	lw	t1,0(t9)
     b7c:	240f0001 	li	t7,1
     b80:	af090000 	sw	t1,0(t8)
     b84:	8f280004 	lw	t0,4(t9)
     b88:	af080004 	sw	t0,4(t8)
     b8c:	8f290008 	lw	t1,8(t9)
     b90:	af090008 	sw	t1,8(t8)
     b94:	8fab0030 	lw	t3,48(sp)
     b98:	8faa003c 	lw	t2,60(sp)
     b9c:	3c180000 	lui	t8,0x0
     ba0:	896d0000 	lwl	t5,0(t3)
     ba4:	996d0003 	lwr	t5,3(t3)
     ba8:	27180000 	addiu	t8,t8,0
     bac:	a94d0000 	swl	t5,0(t2)
     bb0:	b94d0003 	swr	t5,3(t2)
     bb4:	956d0004 	lhu	t5,4(t3)
     bb8:	a54d0004 	sh	t5,4(t2)
     bbc:	8602001c 	lh	v0,28(s0)
     bc0:	3042e000 	andi	v0,v0,0xe000
     bc4:	00021343 	sra	v0,v0,0xd
     bc8:	28410003 	slti	at,v0,3
     bcc:	14200005 	bnez	at,be4 <EnSw_Init+0x494>
     bd0:	00000000 	nop
     bd4:	a60e038c 	sh	t6,908(s0)
     bd8:	a60f0394 	sh	t7,916(s0)
     bdc:	10000009 	b	c04 <EnSw_Init+0x4b4>
     be0:	ae180190 	sw	t8,400(s0)
     be4:	14400005 	bnez	v0,bfc <EnSw_Init+0x4ac>
     be8:	3c080000 	lui	t0,0x0
     bec:	3c190000 	lui	t9,0x0
     bf0:	27390000 	addiu	t9,t9,0
     bf4:	10000003 	b	c04 <EnSw_Init+0x4b4>
     bf8:	ae190190 	sw	t9,400(s0)
     bfc:	25080000 	addiu	t0,t0,0
     c00:	ae080190 	sw	t0,400(s0)
     c04:	8fbf002c 	lw	ra,44(sp)
     c08:	8fb00028 	lw	s0,40(sp)
     c0c:	27bd0060 	addiu	sp,sp,96
     c10:	03e00008 	jr	ra
     c14:	00000000 	nop

00000c18 <EnSw_Destroy>:
     c18:	27bdffe8 	addiu	sp,sp,-24
     c1c:	00803025 	move	a2,a0
     c20:	afbf0014 	sw	ra,20(sp)
     c24:	00a02025 	move	a0,a1
     c28:	0c000000 	jal	0 <func_80B0BDB0>
     c2c:	24c50194 	addiu	a1,a2,404
     c30:	8fbf0014 	lw	ra,20(sp)
     c34:	27bd0018 	addiu	sp,sp,24
     c38:	03e00008 	jr	ra
     c3c:	00000000 	nop

00000c40 <func_80B0C9F0>:
     c40:	27bdffd8 	addiu	sp,sp,-40
     c44:	afbf0024 	sw	ra,36(sp)
     c48:	afb00020 	sw	s0,32(sp)
     c4c:	afa5002c 	sw	a1,44(sp)
     c50:	3c010000 	lui	at,0x0
     c54:	c4260000 	lwc1	$f6,0(at)
     c58:	c484008c 	lwc1	$f4,140(a0)
     c5c:	00808025 	move	s0,a0
     c60:	00001825 	move	v1,zero
     c64:	4606203c 	c.lt.s	$f4,$f6
     c68:	00000000 	nop
     c6c:	4502000d 	bc1fl	ca4 <func_80B0C9F0+0x64>
     c70:	860a0392 	lh	t2,914(s0)
     c74:	848e001c 	lh	t6,28(a0)
     c78:	31cfe000 	andi	t7,t6,0xe000
     c7c:	000fc343 	sra	t8,t7,0xd
     c80:	57000008 	bnezl	t8,ca4 <func_80B0C9F0+0x64>
     c84:	860a0392 	lh	t2,914(s0)
     c88:	90a81c26 	lbu	t0,7206(a1)
     c8c:	51000005 	beqzl	t0,ca4 <func_80B0C9F0+0x64>
     c90:	860a0392 	lh	t2,914(s0)
     c94:	908900af 	lbu	t1,175(a0)
     c98:	24030001 	li	v1,1
     c9c:	a08900b0 	sb	t1,176(a0)
     ca0:	860a0392 	lh	t2,914(s0)
     ca4:	55400056 	bnezl	t2,e00 <func_80B0C9F0+0x1c0>
     ca8:	860a0390 	lh	t2,912(s0)
     cac:	920201a5 	lbu	v0,421(s0)
     cb0:	240d0010 	li	t5,16
     cb4:	02002025 	move	a0,s0
     cb8:	304b0002 	andi	t3,v0,0x2
     cbc:	15600003 	bnez	t3,ccc <func_80B0C9F0+0x8c>
     cc0:	304cfffd 	andi	t4,v0,0xfffd
     cc4:	5060004e 	beqzl	v1,e00 <func_80B0C9F0+0x1c0>
     cc8:	860a0390 	lh	t2,912(s0)
     ccc:	a60d0392 	sh	t5,914(s0)
     cd0:	860e0392 	lh	t6,914(s0)
     cd4:	a20c01a5 	sb	t4,421(s0)
     cd8:	24054000 	li	a1,16384
     cdc:	240600c8 	li	a2,200
     ce0:	00003825 	move	a3,zero
     ce4:	0c000000 	jal	0 <func_80B0BDB0>
     ce8:	afae0010 	sw	t6,16(sp)
     cec:	0c000000 	jal	0 <func_80B0BDB0>
     cf0:	02002025 	move	a0,s0
     cf4:	10400006 	beqz	v0,d10 <func_80B0C9F0+0xd0>
     cf8:	8fa4002c 	lw	a0,44(sp)
     cfc:	02002025 	move	a0,s0
     d00:	0c000000 	jal	0 <func_80B0BDB0>
     d04:	2405386b 	li	a1,14443
     d08:	10000046 	b	e24 <func_80B0C9F0+0x1e4>
     d0c:	24020001 	li	v0,1
     d10:	0c000000 	jal	0 <func_80B0BDB0>
     d14:	02002825 	move	a1,s0
     d18:	860f001c 	lh	t7,28(s0)
     d1c:	3c0e0000 	lui	t6,0x0
     d20:	25ce0000 	addiu	t6,t6,0
     d24:	31f8e000 	andi	t8,t7,0xe000
     d28:	0018cb43 	sra	t9,t8,0xd
     d2c:	1320001d 	beqz	t9,da4 <func_80B0C9F0+0x164>
     d30:	02002025 	move	a0,s0
     d34:	3c014100 	lui	at,0x4100
     d38:	44814000 	mtc1	at,$f8
     d3c:	3c010000 	lui	at,0x0
     d40:	e6080168 	swc1	$f8,360(s0)
     d44:	8fa8002c 	lw	t0,44(sp)
     d48:	8d09009c 	lw	t1,156(t0)
     d4c:	312a0001 	andi	t2,t1,0x1
     d50:	15400005 	bnez	t2,d68 <func_80B0C9F0+0x128>
     d54:	00000000 	nop
     d58:	3c010000 	lui	at,0x0
     d5c:	c42a0000 	lwc1	$f10,0(at)
     d60:	10000003 	b	d70 <func_80B0C9F0+0x130>
     d64:	e60a0420 	swc1	$f10,1056(s0)
     d68:	c4300000 	lwc1	$f16,0(at)
     d6c:	e6100420 	swc1	$f16,1056(s0)
     d70:	3c014080 	lui	at,0x4080
     d74:	44812000 	mtc1	at,$f4
     d78:	c6120420 	lwc1	$f18,1056(s0)
     d7c:	3c0d0000 	lui	t5,0x0
     d80:	240b000a 	li	t3,10
     d84:	46049182 	mul.s	$f6,$f18,$f4
     d88:	240c0001 	li	t4,1
     d8c:	25ad0000 	addiu	t5,t5,0
     d90:	a60b0394 	sh	t3,916(s0)
     d94:	a60c038a 	sh	t4,906(s0)
     d98:	ae0d0190 	sw	t5,400(s0)
     d9c:	10000013 	b	dec <func_80B0C9F0+0x1ac>
     da0:	e6060420 	swc1	$f6,1056(s0)
     da4:	3c014180 	lui	at,0x4180
     da8:	44814000 	mtc1	at,$f8
     dac:	3c01bf80 	lui	at,0xbf80
     db0:	44815000 	mtc1	at,$f10
     db4:	8e190004 	lw	t9,4(s0)
     db8:	2401fffe 	li	at,-2
     dbc:	3c090000 	lui	t1,0x0
     dc0:	240f00ff 	li	t7,255
     dc4:	24180002 	li	t8,2
     dc8:	25290000 	addiu	t1,t1,0
     dcc:	03214024 	and	t0,t9,at
     dd0:	ae0e00c0 	sw	t6,192(s0)
     dd4:	a20f00c8 	sb	t7,200(s0)
     dd8:	a618038a 	sh	t8,906(s0)
     ddc:	ae080004 	sw	t0,4(s0)
     de0:	ae090190 	sw	t1,400(s0)
     de4:	e60800c4 	swc1	$f8,196(s0)
     de8:	e60a006c 	swc1	$f10,108(s0)
     dec:	0c000000 	jal	0 <func_80B0BDB0>
     df0:	24053885 	li	a1,14469
     df4:	1000000b 	b	e24 <func_80B0C9F0+0x1e4>
     df8:	24020001 	li	v0,1
     dfc:	860a0390 	lh	t2,912(s0)
     e00:	00001025 	move	v0,zero
     e04:	15400007 	bnez	t2,e24 <func_80B0C9F0+0x1e4>
     e08:	00000000 	nop
     e0c:	920b01a4 	lbu	t3,420(s0)
     e10:	240d001e 	li	t5,30
     e14:	316c0002 	andi	t4,t3,0x2
     e18:	11800002 	beqz	t4,e24 <func_80B0C9F0+0x1e4>
     e1c:	00000000 	nop
     e20:	a60d0390 	sh	t5,912(s0)
     e24:	8fbf0024 	lw	ra,36(sp)
     e28:	8fb00020 	lw	s0,32(sp)
     e2c:	27bd0028 	addiu	sp,sp,40
     e30:	03e00008 	jr	ra
     e34:	00000000 	nop

00000e38 <func_80B0CBE8>:
     e38:	27bdffd8 	addiu	sp,sp,-40
     e3c:	afbf0014 	sw	ra,20(sp)
     e40:	afa5002c 	sw	a1,44(sp)
     e44:	848e001c 	lh	t6,28(a0)
     e48:	00803825 	move	a3,a0
     e4c:	31cfe000 	andi	t7,t6,0xe000
     e50:	000fc343 	sra	t8,t7,0xd
     e54:	5b00000c 	blezl	t8,e88 <func_80B0CBE8+0x50>
     e58:	84e20390 	lh	v0,912(a3)
     e5c:	8c880190 	lw	t0,400(a0)
     e60:	3c190000 	lui	t9,0x0
     e64:	27390000 	addiu	t9,t9,0
     e68:	53280007 	beql	t9,t0,e88 <func_80B0CBE8+0x50>
     e6c:	84e20390 	lh	v0,912(a3)
     e70:	84820392 	lh	v0,914(a0)
     e74:	1040002f 	beqz	v0,f34 <func_80B0CBE8+0xfc>
     e78:	2449ffff 	addiu	t1,v0,-1
     e7c:	1000002d 	b	f34 <func_80B0CBE8+0xfc>
     e80:	a4890392 	sh	t1,914(a0)
     e84:	84e20390 	lh	v0,912(a3)
     e88:	14400003 	bnez	v0,e98 <func_80B0CBE8+0x60>
     e8c:	244affff 	addiu	t2,v0,-1
     e90:	10000003 	b	ea0 <func_80B0CBE8+0x68>
     e94:	00001825 	move	v1,zero
     e98:	a4ea0390 	sh	t2,912(a3)
     e9c:	84e30390 	lh	v1,912(a3)
     ea0:	5460000c 	bnezl	v1,ed4 <func_80B0CBE8+0x9c>
     ea4:	84e20392 	lh	v0,914(a3)
     ea8:	90eb00af 	lbu	t3,175(a3)
     eac:	3c010001 	lui	at,0x1
     eb0:	34211e60 	ori	at,at,0x1e60
     eb4:	11600006 	beqz	t3,ed0 <func_80B0CBE8+0x98>
     eb8:	8fa4002c 	lw	a0,44(sp)
     ebc:	00812821 	addu	a1,a0,at
     ec0:	24e60194 	addiu	a2,a3,404
     ec4:	0c000000 	jal	0 <func_80B0BDB0>
     ec8:	afa70028 	sw	a3,40(sp)
     ecc:	8fa70028 	lw	a3,40(sp)
     ed0:	84e20392 	lh	v0,914(a3)
     ed4:	8fa5002c 	lw	a1,44(sp)
     ed8:	3c010001 	lui	at,0x1
     edc:	34211e60 	ori	at,at,0x1e60
     ee0:	24e60194 	addiu	a2,a3,404
     ee4:	14400003 	bnez	v0,ef4 <func_80B0CBE8+0xbc>
     ee8:	00a12821 	addu	a1,a1,at
     eec:	10000004 	b	f00 <func_80B0CBE8+0xc8>
     ef0:	00001825 	move	v1,zero
     ef4:	244dffff 	addiu	t5,v0,-1
     ef8:	a4ed0392 	sh	t5,914(a3)
     efc:	84e30392 	lh	v1,914(a3)
     f00:	1460000a 	bnez	v1,f2c <func_80B0CBE8+0xf4>
     f04:	00000000 	nop
     f08:	90ee00af 	lbu	t6,175(a3)
     f0c:	8fa4002c 	lw	a0,44(sp)
     f10:	11c00006 	beqz	t6,f2c <func_80B0CBE8+0xf4>
     f14:	00000000 	nop
     f18:	afa5001c 	sw	a1,28(sp)
     f1c:	0c000000 	jal	0 <func_80B0BDB0>
     f20:	afa60018 	sw	a2,24(sp)
     f24:	8fa5001c 	lw	a1,28(sp)
     f28:	8fa60018 	lw	a2,24(sp)
     f2c:	0c000000 	jal	0 <func_80B0BDB0>
     f30:	8fa4002c 	lw	a0,44(sp)
     f34:	8fbf0014 	lw	ra,20(sp)
     f38:	27bd0028 	addiu	sp,sp,40
     f3c:	03e00008 	jr	ra
     f40:	00000000 	nop

00000f44 <func_80B0CCF4>:
     f44:	27bdff80 	addiu	sp,sp,-128
     f48:	afbf001c 	sw	ra,28(sp)
     f4c:	afb00018 	sw	s0,24(sp)
     f50:	8c830078 	lw	v1,120(a0)
     f54:	00808025 	move	s0,a0
     f58:	00a03825 	move	a3,a1
     f5c:	54600004 	bnezl	v1,f70 <func_80B0CCF4+0x2c>
     f60:	846e0008 	lh	t6,8(v1)
     f64:	1000005f 	b	10e4 <func_80B0CCF4+0x1a0>
     f68:	00001025 	move	v0,zero
     f6c:	846e0008 	lh	t6,8(v1)
     f70:	3c010000 	lui	at,0x0
     f74:	c4200000 	lwc1	$f0,0(at)
     f78:	448e2000 	mtc1	t6,$f4
     f7c:	27a5006c 	addiu	a1,sp,108
     f80:	00003025 	move	a2,zero
     f84:	468021a0 	cvt.s.w	$f6,$f4
     f88:	46003202 	mul.s	$f8,$f6,$f0
     f8c:	e7a8006c 	swc1	$f8,108(sp)
     f90:	846f000a 	lh	t7,10(v1)
     f94:	448f5000 	mtc1	t7,$f10
     f98:	00000000 	nop
     f9c:	46805420 	cvt.s.w	$f16,$f10
     fa0:	46008482 	mul.s	$f18,$f16,$f0
     fa4:	e7b20070 	swc1	$f18,112(sp)
     fa8:	8478000c 	lh	t8,12(v1)
     fac:	44982000 	mtc1	t8,$f4
     fb0:	00000000 	nop
     fb4:	468021a0 	cvt.s.w	$f6,$f4
     fb8:	46003202 	mul.s	$f8,$f6,$f0
     fbc:	e7a80074 	swc1	$f8,116(sp)
     fc0:	0c000000 	jal	0 <func_80B0BDB0>
     fc4:	c4ec0000 	lwc1	$f12,0(a3)
     fc8:	26040370 	addiu	a0,s0,880
     fcc:	afa40028 	sw	a0,40(sp)
     fd0:	0c000000 	jal	0 <func_80B0BDB0>
     fd4:	27a5006c 	addiu	a1,sp,108
     fd8:	27b9006c 	addiu	t9,sp,108
     fdc:	8fa40028 	lw	a0,40(sp)
     fe0:	8f290000 	lw	t1,0(t9)
     fe4:	2606037c 	addiu	a2,s0,892
     fe8:	26050364 	addiu	a1,s0,868
     fec:	ac890000 	sw	t1,0(a0)
     ff0:	8f280004 	lw	t0,4(t9)
     ff4:	ac880004 	sw	t0,4(a0)
     ff8:	8f290008 	lw	t1,8(t9)
     ffc:	ac890008 	sw	t1,8(a0)
    1000:	0c000000 	jal	0 <func_80B0BDB0>
    1004:	afa60024 	sw	a2,36(sp)
    1008:	0c000000 	jal	0 <func_80B0BDB0>
    100c:	8fa40024 	lw	a0,36(sp)
    1010:	3c010000 	lui	at,0x0
    1014:	c42a0000 	lwc1	$f10,0(at)
    1018:	46000086 	mov.s	$f2,$f0
    101c:	3c013f80 	lui	at,0x3f80
    1020:	460a003c 	c.lt.s	$f0,$f10
    1024:	00000000 	nop
    1028:	45020004 	bc1fl	103c <func_80B0CCF4+0xf8>
    102c:	44816000 	mtc1	at,$f12
    1030:	1000002c 	b	10e4 <func_80B0CCF4+0x1a0>
    1034:	00001025 	move	v0,zero
    1038:	44816000 	mtc1	at,$f12
    103c:	c610037c 	lwc1	$f16,892(s0)
    1040:	c6040380 	lwc1	$f4,896(s0)
    1044:	46026083 	div.s	$f2,$f12,$f2
    1048:	c6080384 	lwc1	$f8,900(s0)
    104c:	44800000 	mtc1	zero,$f0
    1050:	27a4002c 	addiu	a0,sp,44
    1054:	26050030 	addiu	a1,s0,48
    1058:	00003025 	move	a2,zero
    105c:	46028482 	mul.s	$f18,$f16,$f2
    1060:	c6100370 	lwc1	$f16,880(s0)
    1064:	46022182 	mul.s	$f6,$f4,$f2
    1068:	00000000 	nop
    106c:	46024282 	mul.s	$f10,$f8,$f2
    1070:	e612037c 	swc1	$f18,892(s0)
    1074:	e6060380 	swc1	$f6,896(s0)
    1078:	e60a0384 	swc1	$f10,900(s0)
    107c:	e7b0002c 	swc1	$f16,44(sp)
    1080:	c6120374 	lwc1	$f18,884(s0)
    1084:	e7b20030 	swc1	$f18,48(sp)
    1088:	c6040378 	lwc1	$f4,888(s0)
    108c:	e7a00038 	swc1	$f0,56(sp)
    1090:	e7a40034 	swc1	$f4,52(sp)
    1094:	c6060364 	lwc1	$f6,868(s0)
    1098:	e7a6003c 	swc1	$f6,60(sp)
    109c:	c6080368 	lwc1	$f8,872(s0)
    10a0:	e7a80040 	swc1	$f8,64(sp)
    10a4:	c60a036c 	lwc1	$f10,876(s0)
    10a8:	e7a00048 	swc1	$f0,72(sp)
    10ac:	e7aa0044 	swc1	$f10,68(sp)
    10b0:	c610037c 	lwc1	$f16,892(s0)
    10b4:	e7b0004c 	swc1	$f16,76(sp)
    10b8:	c6120380 	lwc1	$f18,896(s0)
    10bc:	e7b20050 	swc1	$f18,80(sp)
    10c0:	c6040384 	lwc1	$f4,900(s0)
    10c4:	e7ac0068 	swc1	$f12,104(sp)
    10c8:	e7a00058 	swc1	$f0,88(sp)
    10cc:	e7a0005c 	swc1	$f0,92(sp)
    10d0:	e7a00060 	swc1	$f0,96(sp)
    10d4:	e7a00064 	swc1	$f0,100(sp)
    10d8:	0c000000 	jal	0 <func_80B0BDB0>
    10dc:	e7a40054 	swc1	$f4,84(sp)
    10e0:	24020001 	li	v0,1
    10e4:	8fbf001c 	lw	ra,28(sp)
    10e8:	8fb00018 	lw	s0,24(sp)
    10ec:	27bd0080 	addiu	sp,sp,128
    10f0:	03e00008 	jr	ra
    10f4:	00000000 	nop

000010f8 <func_80B0CEA8>:
    10f8:	27bdffe8 	addiu	sp,sp,-24
    10fc:	afbf0014 	sw	ra,20(sp)
    1100:	3c010000 	lui	at,0x0
    1104:	c4260000 	lwc1	$f6,0(at)
    1108:	c4840050 	lwc1	$f4,80(a0)
    110c:	00803025 	move	a2,a0
    1110:	4606203c 	c.lt.s	$f4,$f6
    1114:	00000000 	nop
    1118:	4503001b 	bc1tl	1188 <func_80B0CEA8+0x90>
    111c:	8fbf0014 	lw	ra,20(sp)
    1120:	84ae07a0 	lh	t6,1952(a1)
    1124:	24840024 	addiu	a0,a0,36
    1128:	000e7880 	sll	t7,t6,0x2
    112c:	00afc021 	addu	t8,a1,t7
    1130:	8f020790 	lw	v0,1936(t8)
    1134:	afa60018 	sw	a2,24(sp)
    1138:	0c000000 	jal	0 <func_80B0BDB0>
    113c:	2445005c 	addiu	a1,v0,92
    1140:	3c0143be 	lui	at,0x43be
    1144:	44814000 	mtc1	at,$f8
    1148:	8fa60018 	lw	a2,24(sp)
    114c:	4600403e 	c.le.s	$f8,$f0
    1150:	00c02025 	move	a0,a2
    1154:	4503000c 	bc1tl	1188 <func_80B0CEA8+0x90>
    1158:	8fbf0014 	lw	ra,20(sp)
    115c:	84d9001c 	lh	t9,28(a2)
    1160:	2402388c 	li	v0,14476
    1164:	3328e000 	andi	t0,t9,0xe000
    1168:	00084b43 	sra	t1,t0,0xd
    116c:	19200003 	blez	t1,117c <func_80B0CEA8+0x84>
    1170:	00000000 	nop
    1174:	10000001 	b	117c <func_80B0CEA8+0x84>
    1178:	240239da 	li	v0,14810
    117c:	0c000000 	jal	0 <func_80B0BDB0>
    1180:	3045ffff 	andi	a1,v0,0xffff
    1184:	8fbf0014 	lw	ra,20(sp)
    1188:	27bd0018 	addiu	sp,sp,24
    118c:	03e00008 	jr	ra
    1190:	00000000 	nop

00001194 <func_80B0CF44>:
    1194:	27bdff58 	addiu	sp,sp,-168
    1198:	3c0e0000 	lui	t6,0x0
    119c:	afbf0064 	sw	ra,100(sp)
    11a0:	afbe0060 	sw	s8,96(sp)
    11a4:	afb7005c 	sw	s7,92(sp)
    11a8:	afb60058 	sw	s6,88(sp)
    11ac:	afb50054 	sw	s5,84(sp)
    11b0:	afb40050 	sw	s4,80(sp)
    11b4:	afb3004c 	sw	s3,76(sp)
    11b8:	afb20048 	sw	s2,72(sp)
    11bc:	afb10044 	sw	s1,68(sp)
    11c0:	afb00040 	sw	s0,64(sp)
    11c4:	f7b60038 	sdc1	$f22,56(sp)
    11c8:	f7b40030 	sdc1	$f20,48(sp)
    11cc:	25ce0000 	addiu	t6,t6,0
    11d0:	8dd80000 	lw	t8,0(t6)
    11d4:	27b500a4 	addiu	s5,sp,164
    11d8:	3c190000 	lui	t9,0x0
    11dc:	27390000 	addiu	t9,t9,0
    11e0:	aeb80000 	sw	t8,0(s5)
    11e4:	8f290000 	lw	t1,0(t9)
    11e8:	27b600a0 	addiu	s6,sp,160
    11ec:	3c0a0000 	lui	t2,0x0
    11f0:	254a0000 	addiu	t2,t2,0
    11f4:	aec90000 	sw	t1,0(s6)
    11f8:	8d4c0000 	lw	t4,0(t2)
    11fc:	27b70094 	addiu	s7,sp,148
    1200:	3c0d0000 	lui	t5,0x0
    1204:	aeec0000 	sw	t4,0(s7)
    1208:	8d4b0004 	lw	t3,4(t2)
    120c:	25ad0000 	addiu	t5,t5,0
    1210:	27be0088 	addiu	s8,sp,136
    1214:	aeeb0004 	sw	t3,4(s7)
    1218:	8d4c0008 	lw	t4,8(t2)
    121c:	00809025 	move	s2,a0
    1220:	00a0a025 	move	s4,a1
    1224:	aeec0008 	sw	t4,8(s7)
    1228:	8daf0000 	lw	t7,0(t5)
    122c:	afcf0000 	sw	t7,0(s8)
    1230:	8dae0004 	lw	t6,4(t5)
    1234:	afce0004 	sw	t6,4(s8)
    1238:	8daf0008 	lw	t7,8(t5)
    123c:	afcf0008 	sw	t7,8(s8)
    1240:	0c000000 	jal	0 <func_80B0BDB0>
    1244:	afa600b0 	sw	a2,176(sp)
    1248:	3c013f00 	lui	at,0x3f00
    124c:	4481b000 	mtc1	at,$f22
    1250:	3c014780 	lui	at,0x4780
    1254:	44813000 	mtc1	at,$f6
    1258:	46160101 	sub.s	$f4,$f0,$f22
    125c:	8fa600b0 	lw	a2,176(sp)
    1260:	3c190001 	lui	t9,0x1
    1264:	46062202 	mul.s	$f8,$f4,$f6
    1268:	00c08825 	move	s1,a2
    126c:	4600428d 	trunc.w.s	$f10,$f8
    1270:	44105000 	mfc1	s0,$f10
    1274:	00000000 	nop
    1278:	00108400 	sll	s0,s0,0x10
    127c:	04c00039 	bltz	a2,1364 <func_80B0CF44+0x1d0>
    1280:	00108403 	sra	s0,s0,0x10
    1284:	0326001a 	div	zero,t9,a2
    1288:	00009812 	mflo	s3
    128c:	00139c00 	sll	s3,s3,0x10
    1290:	00139c03 	sra	s3,s3,0x10
    1294:	14c00002 	bnez	a2,12a0 <func_80B0CF44+0x10c>
    1298:	00000000 	nop
    129c:	0007000d 	break	0x7
    12a0:	2401ffff 	li	at,-1
    12a4:	14c10004 	bne	a2,at,12b8 <func_80B0CF44+0x124>
    12a8:	3c018000 	lui	at,0x8000
    12ac:	17210002 	bne	t9,at,12b8 <func_80B0CF44+0x124>
    12b0:	00000000 	nop
    12b4:	0006000d 	break	0x6
    12b8:	0c000000 	jal	0 <func_80B0BDB0>
    12bc:	00000000 	nop
    12c0:	46160501 	sub.s	$f20,$f0,$f22
    12c4:	4614a400 	add.s	$f16,$f20,$f20
    12c8:	0c000000 	jal	0 <func_80B0BDB0>
    12cc:	e7b00088 	swc1	$f16,136(sp)
    12d0:	46160501 	sub.s	$f20,$f0,$f22
    12d4:	00102400 	sll	a0,s0,0x10
    12d8:	00042403 	sra	a0,a0,0x10
    12dc:	4614a480 	add.s	$f18,$f20,$f20
    12e0:	0c000000 	jal	0 <func_80B0BDB0>
    12e4:	e7b20090 	swc1	$f18,144(sp)
    12e8:	46000100 	add.s	$f4,$f0,$f0
    12ec:	c6460024 	lwc1	$f6,36(s2)
    12f0:	00102400 	sll	a0,s0,0x10
    12f4:	00042403 	sra	a0,a0,0x10
    12f8:	46062200 	add.s	$f8,$f4,$f6
    12fc:	e7a8007c 	swc1	$f8,124(sp)
    1300:	c64a0028 	lwc1	$f10,40(s2)
    1304:	0c000000 	jal	0 <func_80B0BDB0>
    1308:	e7aa0080 	swc1	$f10,128(sp)
    130c:	46000400 	add.s	$f16,$f0,$f0
    1310:	c652002c 	lwc1	$f18,44(s2)
    1314:	24080014 	li	t0,20
    1318:	2409001e 	li	t1,30
    131c:	46128100 	add.s	$f4,$f16,$f18
    1320:	240a000c 	li	t2,12
    1324:	afaa0020 	sw	t2,32(sp)
    1328:	afa9001c 	sw	t1,28(sp)
    132c:	e7a40084 	swc1	$f4,132(sp)
    1330:	afa80018 	sw	t0,24(sp)
    1334:	afb60014 	sw	s6,20(sp)
    1338:	afb50010 	sw	s5,16(sp)
    133c:	02802025 	move	a0,s4
    1340:	27a5007c 	addiu	a1,sp,124
    1344:	02e03025 	move	a2,s7
    1348:	0c000000 	jal	0 <func_80B0BDB0>
    134c:	03c03825 	move	a3,s8
    1350:	02138021 	addu	s0,s0,s3
    1354:	00108400 	sll	s0,s0,0x10
    1358:	2631ffff 	addiu	s1,s1,-1
    135c:	0621ffd6 	bgez	s1,12b8 <func_80B0CF44+0x124>
    1360:	00108403 	sra	s0,s0,0x10
    1364:	8fbf0064 	lw	ra,100(sp)
    1368:	d7b40030 	ldc1	$f20,48(sp)
    136c:	d7b60038 	ldc1	$f22,56(sp)
    1370:	8fb00040 	lw	s0,64(sp)
    1374:	8fb10044 	lw	s1,68(sp)
    1378:	8fb20048 	lw	s2,72(sp)
    137c:	8fb3004c 	lw	s3,76(sp)
    1380:	8fb40050 	lw	s4,80(sp)
    1384:	8fb50054 	lw	s5,84(sp)
    1388:	8fb60058 	lw	s6,88(sp)
    138c:	8fb7005c 	lw	s7,92(sp)
    1390:	8fbe0060 	lw	s8,96(sp)
    1394:	03e00008 	jr	ra
    1398:	27bd00a8 	addiu	sp,sp,168

0000139c <func_80B0D14C>:
    139c:	27bdff50 	addiu	sp,sp,-176
    13a0:	3c0e0000 	lui	t6,0x0
    13a4:	afbf006c 	sw	ra,108(sp)
    13a8:	afbe0068 	sw	s8,104(sp)
    13ac:	afb70064 	sw	s7,100(sp)
    13b0:	afb60060 	sw	s6,96(sp)
    13b4:	afb5005c 	sw	s5,92(sp)
    13b8:	afb40058 	sw	s4,88(sp)
    13bc:	afb30054 	sw	s3,84(sp)
    13c0:	afb20050 	sw	s2,80(sp)
    13c4:	afb1004c 	sw	s1,76(sp)
    13c8:	afb00048 	sw	s0,72(sp)
    13cc:	f7b80040 	sdc1	$f24,64(sp)
    13d0:	f7b60038 	sdc1	$f22,56(sp)
    13d4:	f7b40030 	sdc1	$f20,48(sp)
    13d8:	25ce0000 	addiu	t6,t6,0
    13dc:	8dd80000 	lw	t8,0(t6)
    13e0:	27b500ac 	addiu	s5,sp,172
    13e4:	3c190000 	lui	t9,0x0
    13e8:	27390000 	addiu	t9,t9,0
    13ec:	aeb80000 	sw	t8,0(s5)
    13f0:	8f290000 	lw	t1,0(t9)
    13f4:	27b600a8 	addiu	s6,sp,168
    13f8:	3c0a0000 	lui	t2,0x0
    13fc:	254a0000 	addiu	t2,t2,0
    1400:	aec90000 	sw	t1,0(s6)
    1404:	8d4c0000 	lw	t4,0(t2)
    1408:	27b7009c 	addiu	s7,sp,156
    140c:	3c0d0000 	lui	t5,0x0
    1410:	aeec0000 	sw	t4,0(s7)
    1414:	8d4b0004 	lw	t3,4(t2)
    1418:	25ad0000 	addiu	t5,t5,0
    141c:	27be0090 	addiu	s8,sp,144
    1420:	aeeb0004 	sw	t3,4(s7)
    1424:	8d4c0008 	lw	t4,8(t2)
    1428:	00809025 	move	s2,a0
    142c:	00a0a025 	move	s4,a1
    1430:	aeec0008 	sw	t4,8(s7)
    1434:	8daf0000 	lw	t7,0(t5)
    1438:	afcf0000 	sw	t7,0(s8)
    143c:	8dae0004 	lw	t6,4(t5)
    1440:	afce0004 	sw	t6,4(s8)
    1444:	8daf0008 	lw	t7,8(t5)
    1448:	afcf0008 	sw	t7,8(s8)
    144c:	0c000000 	jal	0 <func_80B0BDB0>
    1450:	afa600b8 	sw	a2,184(sp)
    1454:	3c013f00 	lui	at,0x3f00
    1458:	4481b000 	mtc1	at,$f22
    145c:	3c014780 	lui	at,0x4780
    1460:	44813000 	mtc1	at,$f6
    1464:	46160101 	sub.s	$f4,$f0,$f22
    1468:	8fa600b8 	lw	a2,184(sp)
    146c:	3c190001 	lui	t9,0x1
    1470:	46062202 	mul.s	$f8,$f4,$f6
    1474:	00c08825 	move	s1,a2
    1478:	4600428d 	trunc.w.s	$f10,$f8
    147c:	44105000 	mfc1	s0,$f10
    1480:	00000000 	nop
    1484:	00108400 	sll	s0,s0,0x10
    1488:	04c0003b 	bltz	a2,1578 <func_80B0D14C+0x1dc>
    148c:	00108403 	sra	s0,s0,0x10
    1490:	0326001a 	div	zero,t9,a2
    1494:	14c00002 	bnez	a2,14a0 <func_80B0D14C+0x104>
    1498:	00000000 	nop
    149c:	0007000d 	break	0x7
    14a0:	2401ffff 	li	at,-1
    14a4:	14c10004 	bne	a2,at,14b8 <func_80B0D14C+0x11c>
    14a8:	3c018000 	lui	at,0x8000
    14ac:	17210002 	bne	t9,at,14b8 <func_80B0D14C+0x11c>
    14b0:	00000000 	nop
    14b4:	0006000d 	break	0x6
    14b8:	3c014160 	lui	at,0x4160
    14bc:	00009812 	mflo	s3
    14c0:	00139c00 	sll	s3,s3,0x10
    14c4:	4481c000 	mtc1	at,$f24
    14c8:	00139c03 	sra	s3,s3,0x10
    14cc:	0c000000 	jal	0 <func_80B0BDB0>
    14d0:	00000000 	nop
    14d4:	46160501 	sub.s	$f20,$f0,$f22
    14d8:	4614a400 	add.s	$f16,$f20,$f20
    14dc:	0c000000 	jal	0 <func_80B0BDB0>
    14e0:	e7b00090 	swc1	$f16,144(sp)
    14e4:	46160501 	sub.s	$f20,$f0,$f22
    14e8:	00102400 	sll	a0,s0,0x10
    14ec:	00042403 	sra	a0,a0,0x10
    14f0:	4614a480 	add.s	$f18,$f20,$f20
    14f4:	0c000000 	jal	0 <func_80B0BDB0>
    14f8:	e7b20098 	swc1	$f18,152(sp)
    14fc:	46180102 	mul.s	$f4,$f0,$f24
    1500:	c6460024 	lwc1	$f6,36(s2)
    1504:	00102400 	sll	a0,s0,0x10
    1508:	00042403 	sra	a0,a0,0x10
    150c:	46062200 	add.s	$f8,$f4,$f6
    1510:	e7a80084 	swc1	$f8,132(sp)
    1514:	c64a0028 	lwc1	$f10,40(s2)
    1518:	0c000000 	jal	0 <func_80B0BDB0>
    151c:	e7aa0088 	swc1	$f10,136(sp)
    1520:	46180402 	mul.s	$f16,$f0,$f24
    1524:	c652002c 	lwc1	$f18,44(s2)
    1528:	24080014 	li	t0,20
    152c:	24090028 	li	t1,40
    1530:	240a000a 	li	t2,10
    1534:	afaa0020 	sw	t2,32(sp)
    1538:	afa9001c 	sw	t1,28(sp)
    153c:	46128100 	add.s	$f4,$f16,$f18
    1540:	afa80018 	sw	t0,24(sp)
    1544:	afb60014 	sw	s6,20(sp)
    1548:	afb50010 	sw	s5,16(sp)
    154c:	e7a4008c 	swc1	$f4,140(sp)
    1550:	02802025 	move	a0,s4
    1554:	27a50084 	addiu	a1,sp,132
    1558:	02e03025 	move	a2,s7
    155c:	0c000000 	jal	0 <func_80B0BDB0>
    1560:	03c03825 	move	a3,s8
    1564:	02138021 	addu	s0,s0,s3
    1568:	00108400 	sll	s0,s0,0x10
    156c:	2631ffff 	addiu	s1,s1,-1
    1570:	0621ffd6 	bgez	s1,14cc <func_80B0D14C+0x130>
    1574:	00108403 	sra	s0,s0,0x10
    1578:	8fbf006c 	lw	ra,108(sp)
    157c:	d7b40030 	ldc1	$f20,48(sp)
    1580:	d7b60038 	ldc1	$f22,56(sp)
    1584:	d7b80040 	ldc1	$f24,64(sp)
    1588:	8fb00048 	lw	s0,72(sp)
    158c:	8fb1004c 	lw	s1,76(sp)
    1590:	8fb20050 	lw	s2,80(sp)
    1594:	8fb30054 	lw	s3,84(sp)
    1598:	8fb40058 	lw	s4,88(sp)
    159c:	8fb5005c 	lw	s5,92(sp)
    15a0:	8fb60060 	lw	s6,96(sp)
    15a4:	8fb70064 	lw	s7,100(sp)
    15a8:	8fbe0068 	lw	s8,104(sp)
    15ac:	03e00008 	jr	ra
    15b0:	27bd00b0 	addiu	sp,sp,176

000015b4 <func_80B0D364>:
    15b4:	afa50004 	sw	a1,4(sp)
    15b8:	848e001c 	lh	t6,28(a0)
    15bc:	24010004 	li	at,4
    15c0:	2408000a 	li	t0,10
    15c4:	31cfe000 	andi	t7,t6,0xe000
    15c8:	000fc343 	sra	t8,t7,0xd
    15cc:	17010006 	bne	t8,at,15e8 <func_80B0D364+0x34>
    15d0:	3c090000 	lui	t1,0x0
    15d4:	3c190000 	lui	t9,0x0
    15d8:	27390000 	addiu	t9,t9,0
    15dc:	a480038c 	sh	zero,908(a0)
    15e0:	03e00008 	jr	ra
    15e4:	ac990190 	sw	t9,400(a0)
    15e8:	25290000 	addiu	t1,t1,0
    15ec:	a488038c 	sh	t0,908(a0)
    15f0:	ac890190 	sw	t1,400(a0)
    15f4:	03e00008 	jr	ra
    15f8:	00000000 	nop

000015fc <func_80B0D3AC>:
    15fc:	27bdffd8 	addiu	sp,sp,-40
    1600:	afbf001c 	sw	ra,28(sp)
    1604:	afb00018 	sw	s0,24(sp)
    1608:	afa5002c 	sw	a1,44(sp)
    160c:	8482038c 	lh	v0,908(a0)
    1610:	00808025 	move	s0,a0
    1614:	10400015 	beqz	v0,166c <func_80B0D3AC+0x70>
    1618:	304e0004 	andi	t6,v0,0x4
    161c:	51c00005 	beqzl	t6,1634 <func_80B0D3AC+0x38>
    1620:	244fffff 	addiu	t7,v0,-1
    1624:	0c000000 	jal	0 <func_80B0BDB0>
    1628:	24060005 	li	a2,5
    162c:	8602038c 	lh	v0,908(s0)
    1630:	244fffff 	addiu	t7,v0,-1
    1634:	a60f038c 	sh	t7,908(s0)
    1638:	8618038c 	lh	t8,908(s0)
    163c:	8fa4002c 	lw	a0,44(sp)
    1640:	26050024 	addiu	a1,s0,36
    1644:	17000061 	bnez	t8,17cc <func_80B0D3AC+0x1d0>
    1648:	24060028 	li	a2,40
    164c:	240739ea 	li	a3,14826
    1650:	0c000000 	jal	0 <func_80B0BDB0>
    1654:	afa50024 	sw	a1,36(sp)
    1658:	8fa50024 	lw	a1,36(sp)
    165c:	8fa4002c 	lw	a0,44(sp)
    1660:	24060028 	li	a2,40
    1664:	0c000000 	jal	0 <func_80B0BDB0>
    1668:	24073824 	li	a3,14372
    166c:	3c053ca3 	lui	a1,0x3ca3
    1670:	3c063e4c 	lui	a2,0x3e4c
    1674:	3c073c23 	lui	a3,0x3c23
    1678:	34e7d70a 	ori	a3,a3,0xd70a
    167c:	34c6cccd 	ori	a2,a2,0xcccd
    1680:	34a5d70a 	ori	a1,a1,0xd70a
    1684:	0c000000 	jal	0 <func_80B0BDB0>
    1688:	26040050 	addiu	a0,s0,80
    168c:	02002025 	move	a0,s0
    1690:	0c000000 	jal	0 <func_80B0BDB0>
    1694:	8e050050 	lw	a1,80(s0)
    1698:	c6000060 	lwc1	$f0,96(s0)
    169c:	c6060364 	lwc1	$f6,868(s0)
    16a0:	c6040024 	lwc1	$f4,36(s0)
    16a4:	c6120368 	lwc1	$f18,872(s0)
    16a8:	46003202 	mul.s	$f8,$f6,$f0
    16ac:	c6100028 	lwc1	$f16,40(s0)
    16b0:	c6020068 	lwc1	$f2,104(s0)
    16b4:	46009182 	mul.s	$f6,$f18,$f0
    16b8:	c60c0070 	lwc1	$f12,112(s0)
    16bc:	02002025 	move	a0,s0
    16c0:	24060001 	li	a2,1
    16c4:	46082280 	add.s	$f10,$f4,$f8
    16c8:	c608002c 	lwc1	$f8,44(s0)
    16cc:	46068100 	add.s	$f4,$f16,$f6
    16d0:	e60a0024 	swc1	$f10,36(s0)
    16d4:	c60a036c 	lwc1	$f10,876(s0)
    16d8:	c6060024 	lwc1	$f6,36(s0)
    16dc:	e6040028 	swc1	$f4,40(s0)
    16e0:	46005482 	mul.s	$f18,$f10,$f0
    16e4:	c604037c 	lwc1	$f4,892(s0)
    16e8:	46022282 	mul.s	$f10,$f4,$f2
    16ec:	46124400 	add.s	$f16,$f8,$f18
    16f0:	c6120028 	lwc1	$f18,40(s0)
    16f4:	460a3200 	add.s	$f8,$f6,$f10
    16f8:	e610002c 	swc1	$f16,44(s0)
    16fc:	c6100380 	lwc1	$f16,896(s0)
    1700:	c60a002c 	lwc1	$f10,44(s0)
    1704:	e6080024 	swc1	$f8,36(s0)
    1708:	46028102 	mul.s	$f4,$f16,$f2
    170c:	c6080384 	lwc1	$f8,900(s0)
    1710:	46024402 	mul.s	$f16,$f8,$f2
    1714:	46049180 	add.s	$f6,$f18,$f4
    1718:	c604006c 	lwc1	$f4,108(s0)
    171c:	46105480 	add.s	$f18,$f10,$f16
    1720:	e6060028 	swc1	$f6,40(s0)
    1724:	44805000 	mtc1	zero,$f10
    1728:	46040180 	add.s	$f6,$f0,$f4
    172c:	e612002c 	swc1	$f18,44(s0)
    1730:	e6060060 	swc1	$f6,96(s0)
    1734:	c6000060 	lwc1	$f0,96(s0)
    1738:	460c003c 	c.lt.s	$f0,$f12
    173c:	00000000 	nop
    1740:	45020004 	bc1fl	1754 <func_80B0D3AC+0x158>
    1744:	e6000060 	swc1	$f0,96(s0)
    1748:	10000002 	b	1754 <func_80B0D3AC+0x158>
    174c:	e60c0060 	swc1	$f12,96(s0)
    1750:	e6000060 	swc1	$f0,96(s0)
    1754:	c6080060 	lwc1	$f8,96(s0)
    1758:	460a403c 	c.lt.s	$f8,$f10
    175c:	00000000 	nop
    1760:	45000002 	bc1f	176c <func_80B0D3AC+0x170>
    1764:	00000000 	nop
    1768:	a2000360 	sb	zero,864(s0)
    176c:	0c000000 	jal	0 <func_80B0BDB0>
    1770:	8fa5002c 	lw	a1,44(sp)
    1774:	24010001 	li	at,1
    1778:	14410014 	bne	v0,at,17cc <func_80B0D3AC+0x1d0>
    177c:	02002025 	move	a0,s0
    1780:	0c000000 	jal	0 <func_80B0BDB0>
    1784:	2405387b 	li	a1,14459
    1788:	02002025 	move	a0,s0
    178c:	8fa5002c 	lw	a1,44(sp)
    1790:	0c000000 	jal	0 <func_80B0BDB0>
    1794:	24060008 	li	a2,8
    1798:	3c010000 	lui	at,0x0
    179c:	c4200000 	lwc1	$f0,0(at)
    17a0:	02002025 	move	a0,s0
    17a4:	44050000 	mfc1	a1,$f0
    17a8:	0c000000 	jal	0 <func_80B0BDB0>
    17ac:	e6000050 	swc1	$f0,80(s0)
    17b0:	44800000 	mtc1	zero,$f0
    17b4:	3c190000 	lui	t9,0x0
    17b8:	27390000 	addiu	t9,t9,0
    17bc:	ae190190 	sw	t9,400(s0)
    17c0:	e6000060 	swc1	$f0,96(s0)
    17c4:	e6000068 	swc1	$f0,104(s0)
    17c8:	e600006c 	swc1	$f0,108(s0)
    17cc:	8fbf001c 	lw	ra,28(sp)
    17d0:	8fb00018 	lw	s0,24(sp)
    17d4:	27bd0028 	addiu	sp,sp,40
    17d8:	03e00008 	jr	ra
    17dc:	00000000 	nop

000017e0 <func_80B0D590>:
    17e0:	27bdffd0 	addiu	sp,sp,-48
    17e4:	afbf001c 	sw	ra,28(sp)
    17e8:	afb00018 	sw	s0,24(sp)
    17ec:	afa50034 	sw	a1,52(sp)
    17f0:	848e001c 	lh	t6,28(a0)
    17f4:	24010002 	li	at,2
    17f8:	00808025 	move	s0,a0
    17fc:	31cfe000 	andi	t7,t6,0xe000
    1800:	000fc343 	sra	t8,t7,0xd
    1804:	1701002b 	bne	t8,at,18b4 <func_80B0D590+0xd4>
    1808:	3c0d0000 	lui	t5,0x0
    180c:	3c010000 	lui	at,0x0
    1810:	c4220000 	lwc1	$f2,0(at)
    1814:	c4800050 	lwc1	$f0,80(a0)
    1818:	3c063e4c 	lui	a2,0x3e4c
    181c:	3c073c23 	lui	a3,0x3c23
    1820:	4602003c 	c.lt.s	$f0,$f2
    1824:	34e7d70a 	ori	a3,a3,0xd70a
    1828:	34c6cccd 	ori	a2,a2,0xcccd
    182c:	3c010000 	lui	at,0x0
    1830:	45020009 	bc1fl	1858 <func_80B0D590+0x78>
    1834:	4600103e 	c.le.s	$f2,$f0
    1838:	8c9901b0 	lw	t9,432(a0)
    183c:	a3200015 	sb	zero,21(t9)
    1840:	8c8801b0 	lw	t0,432(a0)
    1844:	a1000016 	sb	zero,22(t0)
    1848:	8c8901b0 	lw	t1,432(a0)
    184c:	a1200017 	sb	zero,23(t1)
    1850:	c4800050 	lwc1	$f0,80(a0)
    1854:	4600103e 	c.le.s	$f2,$f0
    1858:	00000000 	nop
    185c:	45000008 	bc1f	1880 <func_80B0D590+0xa0>
    1860:	00000000 	nop
    1864:	8e0a01b0 	lw	t2,432(s0)
    1868:	24020001 	li	v0,1
    186c:	a1420015 	sb	v0,21(t2)
    1870:	8e0b01b0 	lw	t3,432(s0)
    1874:	a1620016 	sb	v0,22(t3)
    1878:	8e0c01b0 	lw	t4,432(s0)
    187c:	a1820017 	sb	v0,23(t4)
    1880:	8dad0010 	lw	t5,16(t5)
    1884:	51a00004 	beqzl	t5,1898 <func_80B0D590+0xb8>
    1888:	44800000 	mtc1	zero,$f0
    188c:	10000003 	b	189c <func_80B0D590+0xbc>
    1890:	c4200000 	lwc1	$f0,0(at)
    1894:	44800000 	mtc1	zero,$f0
    1898:	00000000 	nop
    189c:	44050000 	mfc1	a1,$f0
    18a0:	0c000000 	jal	0 <func_80B0BDB0>
    18a4:	26040050 	addiu	a0,s0,80
    18a8:	02002025 	move	a0,s0
    18ac:	0c000000 	jal	0 <func_80B0BDB0>
    18b0:	8e050050 	lw	a1,80(s0)
    18b4:	8602038e 	lh	v0,910(s0)
    18b8:	10400026 	beqz	v0,1954 <func_80B0D590+0x174>
    18bc:	244effff 	addiu	t6,v0,-1
    18c0:	a60e038e 	sh	t6,910(s0)
    18c4:	860f038e 	lh	t7,910(s0)
    18c8:	02002025 	move	a0,s0
    18cc:	55e0007a 	bnezl	t7,1ab8 <func_80B0D590+0x2d8>
    18d0:	8fbf001c 	lw	ra,28(sp)
    18d4:	0c000000 	jal	0 <func_80B0BDB0>
    18d8:	8fa50034 	lw	a1,52(sp)
    18dc:	8fb80034 	lw	t8,52(sp)
    18e0:	3c010000 	lui	at,0x0
    18e4:	24090001 	li	t1,1
    18e8:	8f19009c 	lw	t9,156(t8)
    18ec:	2404001e 	li	a0,30
    18f0:	2405003c 	li	a1,60
    18f4:	33280001 	andi	t0,t9,0x1
    18f8:	15000005 	bnez	t0,1910 <func_80B0D590+0x130>
    18fc:	00000000 	nop
    1900:	3c010000 	lui	at,0x0
    1904:	c4240000 	lwc1	$f4,0(at)
    1908:	10000003 	b	1918 <func_80B0D590+0x138>
    190c:	e6040420 	swc1	$f4,1056(s0)
    1910:	c4260000 	lwc1	$f6,0(at)
    1914:	e6060420 	swc1	$f6,1056(s0)
    1918:	0c000000 	jal	0 <func_80B0BDB0>
    191c:	a609038a 	sh	t1,906(s0)
    1920:	860a001c 	lh	t2,28(s0)
    1924:	a602038c 	sh	v0,908(s0)
    1928:	314be000 	andi	t3,t2,0xe000
    192c:	000b6343 	sra	t4,t3,0xd
    1930:	51800061 	beqzl	t4,1ab8 <func_80B0D590+0x2d8>
    1934:	8fbf001c 	lw	ra,28(sp)
    1938:	c6000420 	lwc1	$f0,1056(s0)
    193c:	860d038c 	lh	t5,908(s0)
    1940:	46000200 	add.s	$f8,$f0,$f0
    1944:	000d7040 	sll	t6,t5,0x1
    1948:	a60e038c 	sh	t6,908(s0)
    194c:	10000059 	b	1ab4 <func_80B0D590+0x2d4>
    1950:	e6080420 	swc1	$f8,1056(s0)
    1954:	860f038c 	lh	t7,908(s0)
    1958:	2404000f 	li	a0,15
    195c:	25f8ffff 	addiu	t8,t7,-1
    1960:	a618038c 	sh	t8,908(s0)
    1964:	8619038c 	lh	t9,908(s0)
    1968:	57200013 	bnezl	t9,19b8 <func_80B0D590+0x1d8>
    196c:	8602038a 	lh	v0,906(s0)
    1970:	0c000000 	jal	0 <func_80B0BDB0>
    1974:	2405001e 	li	a1,30
    1978:	8608001c 	lh	t0,28(s0)
    197c:	44805000 	mtc1	zero,$f10
    1980:	a602038e 	sh	v0,910(s0)
    1984:	3109e000 	andi	t1,t0,0xe000
    1988:	00095343 	sra	t2,t1,0xd
    198c:	a600038a 	sh	zero,906(s0)
    1990:	11400048 	beqz	t2,1ab4 <func_80B0D590+0x2d4>
    1994:	e60a0168 	swc1	$f10,360(s0)
    1998:	860b038e 	lh	t3,910(s0)
    199c:	05610003 	bgez	t3,19ac <func_80B0D590+0x1cc>
    19a0:	000b6043 	sra	t4,t3,0x1
    19a4:	25610001 	addiu	at,t3,1
    19a8:	00016043 	sra	t4,at,0x1
    19ac:	10000041 	b	1ab4 <func_80B0D590+0x2d4>
    19b0:	a60c038e 	sh	t4,910(s0)
    19b4:	8602038a 	lh	v0,906(s0)
    19b8:	2604014c 	addiu	a0,s0,332
    19bc:	1040001d 	beqz	v0,1a34 <func_80B0D590+0x254>
    19c0:	244dffff 	addiu	t5,v0,-1
    19c4:	a60d038a 	sh	t5,906(s0)
    19c8:	860e038a 	lh	t6,906(s0)
    19cc:	44802000 	mtc1	zero,$f4
    19d0:	3c014080 	lui	at,0x4080
    19d4:	15c00004 	bnez	t6,19e8 <func_80B0D590+0x208>
    19d8:	02002025 	move	a0,s0
    19dc:	44818000 	mtc1	at,$f16
    19e0:	10000004 	b	19f4 <func_80B0D590+0x214>
    19e4:	e6100168 	swc1	$f16,360(s0)
    19e8:	44809000 	mtc1	zero,$f18
    19ec:	00000000 	nop
    19f0:	e6120168 	swc1	$f18,360(s0)
    19f4:	c6060168 	lwc1	$f6,360(s0)
    19f8:	4606203c 	c.lt.s	$f4,$f6
    19fc:	00000000 	nop
    1a00:	45020004 	bc1fl	1a14 <func_80B0D590+0x234>
    1a04:	860f001c 	lh	t7,28(s0)
    1a08:	0c000000 	jal	0 <func_80B0BDB0>
    1a0c:	8fa50034 	lw	a1,52(sp)
    1a10:	860f001c 	lh	t7,28(s0)
    1a14:	31f8e000 	andi	t8,t7,0xe000
    1a18:	0018cb43 	sra	t9,t8,0xd
    1a1c:	53200026 	beqzl	t9,1ab8 <func_80B0D590+0x2d8>
    1a20:	8fbf001c 	lw	ra,28(sp)
    1a24:	c6000168 	lwc1	$f0,360(s0)
    1a28:	46000200 	add.s	$f8,$f0,$f0
    1a2c:	10000021 	b	1ab4 <func_80B0D590+0x2d4>
    1a30:	e6080168 	swc1	$f8,360(s0)
    1a34:	0c000000 	jal	0 <func_80B0BDB0>
    1a38:	8e05015c 	lw	a1,348(s0)
    1a3c:	24010001 	li	at,1
    1a40:	14410002 	bne	v0,at,1a4c <func_80B0D590+0x26c>
    1a44:	24080002 	li	t0,2
    1a48:	a608038a 	sh	t0,906(s0)
    1a4c:	3c014700 	lui	at,0x4700
    1a50:	44815000 	mtc1	at,$f10
    1a54:	c610015c 	lwc1	$f16,348(s0)
    1a58:	46105483 	div.s	$f18,$f10,$f16
    1a5c:	e7b2002c 	swc1	$f18,44(sp)
    1a60:	c6040164 	lwc1	$f4,356(s0)
    1a64:	46049182 	mul.s	$f6,$f18,$f4
    1a68:	4600320d 	trunc.w.s	$f8,$f6
    1a6c:	e7a6002c 	swc1	$f6,44(sp)
    1a70:	44044000 	mfc1	a0,$f8
    1a74:	00000000 	nop
    1a78:	00042400 	sll	a0,a0,0x10
    1a7c:	0c000000 	jal	0 <func_80B0BDB0>
    1a80:	00042403 	sra	a0,a0,0x10
    1a84:	c60a0420 	lwc1	$f10,1056(s0)
    1a88:	02002025 	move	a0,s0
    1a8c:	27a5002c 	addiu	a1,sp,44
    1a90:	460a0402 	mul.s	$f16,$f0,$f10
    1a94:	0c000000 	jal	0 <func_80B0BDB0>
    1a98:	e7b0002c 	swc1	$f16,44(sp)
    1a9c:	8a0b0030 	lwl	t3,48(s0)
    1aa0:	9a0b0033 	lwr	t3,51(s0)
    1aa4:	aa0b00b4 	swl	t3,180(s0)
    1aa8:	ba0b00b7 	swr	t3,183(s0)
    1aac:	960b0034 	lhu	t3,52(s0)
    1ab0:	a60b00b8 	sh	t3,184(s0)
    1ab4:	8fbf001c 	lw	ra,28(sp)
    1ab8:	8fb00018 	lw	s0,24(sp)
    1abc:	27bd0030 	addiu	sp,sp,48
    1ac0:	03e00008 	jr	ra
    1ac4:	00000000 	nop

00001ac8 <func_80B0D878>:
    1ac8:	27bdff78 	addiu	sp,sp,-136
    1acc:	3c0f0000 	lui	t7,0x0
    1ad0:	afbf004c 	sw	ra,76(sp)
    1ad4:	afb00048 	sw	s0,72(sp)
    1ad8:	afa5008c 	sw	a1,140(sp)
    1adc:	25ef0000 	addiu	t7,t7,0
    1ae0:	8df90000 	lw	t9,0(t7)
    1ae4:	27ae006c 	addiu	t6,sp,108
    1ae8:	8df80004 	lw	t8,4(t7)
    1aec:	add90000 	sw	t9,0(t6)
    1af0:	8df90008 	lw	t9,8(t7)
    1af4:	00808025 	move	s0,a0
    1af8:	add80004 	sw	t8,4(t6)
    1afc:	add90008 	sw	t9,8(t6)
    1b00:	8e05015c 	lw	a1,348(s0)
    1b04:	0c000000 	jal	0 <func_80B0BDB0>
    1b08:	2484014c 	addiu	a0,a0,332
    1b0c:	24010001 	li	at,1
    1b10:	14410003 	bne	v0,at,1b20 <func_80B0D878+0x58>
    1b14:	02002025 	move	a0,s0
    1b18:	0c000000 	jal	0 <func_80B0BDB0>
    1b1c:	8fa5008c 	lw	a1,140(sp)
    1b20:	02002025 	move	a0,s0
    1b24:	0c000000 	jal	0 <func_80B0BDB0>
    1b28:	26050420 	addiu	a1,s0,1056
    1b2c:	8a090030 	lwl	t1,48(s0)
    1b30:	9a090033 	lwr	t1,51(s0)
    1b34:	86030394 	lh	v1,916(s0)
    1b38:	aa0900b4 	swl	t1,180(s0)
    1b3c:	ba0900b7 	swr	t1,183(s0)
    1b40:	96090034 	lhu	t1,52(s0)
    1b44:	14600030 	bnez	v1,1c08 <func_80B0D878+0x140>
    1b48:	a60900b8 	sh	t1,184(s0)
    1b4c:	860a0392 	lh	t2,914(s0)
    1b50:	3c070000 	lui	a3,0x0
    1b54:	24e70000 	addiu	a3,a3,0
    1b58:	1540002b 	bnez	t2,1c08 <func_80B0D878+0x140>
    1b5c:	24044843 	li	a0,18499
    1b60:	3c0b0000 	lui	t3,0x0
    1b64:	256b0000 	addiu	t3,t3,0
    1b68:	3c050000 	lui	a1,0x0
    1b6c:	24a50000 	addiu	a1,a1,0
    1b70:	afab0014 	sw	t3,20(sp)
    1b74:	24060004 	li	a2,4
    1b78:	0c000000 	jal	0 <func_80B0BDB0>
    1b7c:	afa70010 	sw	a3,16(sp)
    1b80:	3c014120 	lui	at,0x4120
    1b84:	44817000 	mtc1	at,$f14
    1b88:	c6040364 	lwc1	$f4,868(s0)
    1b8c:	c60a0024 	lwc1	$f10,36(s0)
    1b90:	c6060368 	lwc1	$f6,872(s0)
    1b94:	460e2002 	mul.s	$f0,$f4,$f14
    1b98:	c608036c 	lwc1	$f8,876(s0)
    1b9c:	8fa6008c 	lw	a2,140(sp)
    1ba0:	460e3082 	mul.s	$f2,$f6,$f14
    1ba4:	02002825 	move	a1,s0
    1ba8:	2407019c 	li	a3,412
    1bac:	460e4302 	mul.s	$f12,$f8,$f14
    1bb0:	24c41c24 	addiu	a0,a2,7204
    1bb4:	46005400 	add.s	$f16,$f10,$f0
    1bb8:	e7b00010 	swc1	$f16,16(sp)
    1bbc:	c6120028 	lwc1	$f18,40(s0)
    1bc0:	46029100 	add.s	$f4,$f18,$f2
    1bc4:	e7a40014 	swc1	$f4,20(sp)
    1bc8:	c606002c 	lwc1	$f6,44(s0)
    1bcc:	afa00024 	sw	zero,36(sp)
    1bd0:	afa00020 	sw	zero,32(sp)
    1bd4:	460c3200 	add.s	$f8,$f6,$f12
    1bd8:	afa0001c 	sw	zero,28(sp)
    1bdc:	e7a80018 	swc1	$f8,24(sp)
    1be0:	860c001c 	lh	t4,28(s0)
    1be4:	0c000000 	jal	0 <func_80B0BDB0>
    1be8:	afac0028 	sw	t4,40(sp)
    1bec:	10400002 	beqz	v0,1bf8 <func_80B0D878+0x130>
    1bf0:	00000000 	nop
    1bf4:	ac400118 	sw	zero,280(v0)
    1bf8:	0c000000 	jal	0 <func_80B0BDB0>
    1bfc:	02002025 	move	a0,s0
    1c00:	1000004f 	b	1d40 <func_80B0D878+0x278>
    1c04:	8fbf004c 	lw	ra,76(sp)
    1c08:	860d0392 	lh	t5,914(s0)
    1c0c:	55a0004c 	bnezl	t5,1d40 <func_80B0D878+0x278>
    1c10:	8fbf004c 	lw	ra,76(sp)
    1c14:	14600003 	bnez	v1,1c24 <func_80B0D878+0x15c>
    1c18:	246effff 	addiu	t6,v1,-1
    1c1c:	10000003 	b	1c2c <func_80B0D878+0x164>
    1c20:	00001025 	move	v0,zero
    1c24:	a60e0394 	sh	t6,916(s0)
    1c28:	86020394 	lh	v0,916(s0)
    1c2c:	50400044 	beqzl	v0,1d40 <func_80B0D878+0x278>
    1c30:	8fbf004c 	lw	ra,76(sp)
    1c34:	8e190024 	lw	t9,36(s0)
    1c38:	27af0078 	addiu	t7,sp,120
    1c3c:	adf90000 	sw	t9,0(t7)
    1c40:	8e180028 	lw	t8,40(s0)
    1c44:	adf80004 	sw	t8,4(t7)
    1c48:	8e19002c 	lw	t9,44(s0)
    1c4c:	0c000000 	jal	0 <func_80B0BDB0>
    1c50:	adf90008 	sw	t9,8(t7)
    1c54:	3c014120 	lui	at,0x4120
    1c58:	44817000 	mtc1	at,$f14
    1c5c:	3c013f00 	lui	at,0x3f00
    1c60:	44815000 	mtc1	at,$f10
    1c64:	3c0140c0 	lui	at,0x40c0
    1c68:	44819000 	mtc1	at,$f18
    1c6c:	460a0401 	sub.s	$f16,$f0,$f10
    1c70:	c7a8007c 	lwc1	$f8,124(sp)
    1c74:	46128102 	mul.s	$f4,$f16,$f18
    1c78:	46047180 	add.s	$f6,$f14,$f4
    1c7c:	46064280 	add.s	$f10,$f8,$f6
    1c80:	0c000000 	jal	0 <func_80B0BDB0>
    1c84:	e7aa007c 	swc1	$f10,124(sp)
    1c88:	3c013f00 	lui	at,0x3f00
    1c8c:	44818000 	mtc1	at,$f16
    1c90:	3c014200 	lui	at,0x4200
    1c94:	44812000 	mtc1	at,$f4
    1c98:	46100481 	sub.s	$f18,$f0,$f16
    1c9c:	c7a60078 	lwc1	$f6,120(sp)
    1ca0:	46049202 	mul.s	$f8,$f18,$f4
    1ca4:	46083280 	add.s	$f10,$f6,$f8
    1ca8:	0c000000 	jal	0 <func_80B0BDB0>
    1cac:	e7aa0078 	swc1	$f10,120(sp)
    1cb0:	3c013f00 	lui	at,0x3f00
    1cb4:	44818000 	mtc1	at,$f16
    1cb8:	3c014200 	lui	at,0x4200
    1cbc:	44812000 	mtc1	at,$f4
    1cc0:	46100481 	sub.s	$f18,$f0,$f16
    1cc4:	c7a80080 	lwc1	$f8,128(sp)
    1cc8:	27a6006c 	addiu	a2,sp,108
    1ccc:	2408002a 	li	t0,42
    1cd0:	46049182 	mul.s	$f6,$f18,$f4
    1cd4:	240900ff 	li	t1,255
    1cd8:	240a00ff 	li	t2,255
    1cdc:	240b00ff 	li	t3,255
    1ce0:	240c00ff 	li	t4,255
    1ce4:	240d00ff 	li	t5,255
    1ce8:	240e0001 	li	t6,1
    1cec:	46064280 	add.s	$f10,$f8,$f6
    1cf0:	240f0009 	li	t7,9
    1cf4:	24180001 	li	t8,1
    1cf8:	afb8003c 	sw	t8,60(sp)
    1cfc:	e7aa0080 	swc1	$f10,128(sp)
    1d00:	afaf0038 	sw	t7,56(sp)
    1d04:	afae0034 	sw	t6,52(sp)
    1d08:	afad0028 	sw	t5,40(sp)
    1d0c:	afac0024 	sw	t4,36(sp)
    1d10:	afab0020 	sw	t3,32(sp)
    1d14:	afaa001c 	sw	t2,28(sp)
    1d18:	afa90018 	sw	t1,24(sp)
    1d1c:	afa80010 	sw	t0,16(sp)
    1d20:	00c03825 	move	a3,a2
    1d24:	8fa4008c 	lw	a0,140(sp)
    1d28:	27a50078 	addiu	a1,sp,120
    1d2c:	afa00014 	sw	zero,20(sp)
    1d30:	afa0002c 	sw	zero,44(sp)
    1d34:	0c000000 	jal	0 <func_80B0BDB0>
    1d38:	afa00030 	sw	zero,48(sp)
    1d3c:	8fbf004c 	lw	ra,76(sp)
    1d40:	8fb00048 	lw	s0,72(sp)
    1d44:	27bd0088 	addiu	sp,sp,136
    1d48:	03e00008 	jr	ra
    1d4c:	00000000 	nop

00001d50 <func_80B0DB00>:
    1d50:	27bdffc8 	addiu	sp,sp,-56
    1d54:	afbf0034 	sw	ra,52(sp)
    1d58:	afb00030 	sw	s0,48(sp)
    1d5c:	00808025 	move	s0,a0
    1d60:	0c000000 	jal	0 <func_80B0BDB0>
    1d64:	afa5003c 	sw	a1,60(sp)
    1d68:	860e00b4 	lh	t6,180(s0)
    1d6c:	861800b8 	lh	t8,184(s0)
    1d70:	3c0141a0 	lui	at,0x41a0
    1d74:	44810000 	mtc1	at,$f0
    1d78:	25cf1000 	addiu	t7,t6,4096
    1d7c:	27191000 	addiu	t9,t8,4096
    1d80:	44802000 	mtc1	zero,$f4
    1d84:	a60f00b4 	sh	t7,180(s0)
    1d88:	a61900b8 	sh	t9,184(s0)
    1d8c:	24080005 	li	t0,5
    1d90:	44060000 	mfc1	a2,$f0
    1d94:	44070000 	mfc1	a3,$f0
    1d98:	afa80014 	sw	t0,20(sp)
    1d9c:	8fa4003c 	lw	a0,60(sp)
    1da0:	02002825 	move	a1,s0
    1da4:	0c000000 	jal	0 <func_80B0BDB0>
    1da8:	e7a40010 	swc1	$f4,16(sp)
    1dac:	96030088 	lhu	v1,136(s0)
    1db0:	30690001 	andi	t1,v1,0x1
    1db4:	51200041 	beqzl	t1,1ebc <func_80B0DB00+0x16c>
    1db8:	8fbf0034 	lw	ra,52(sp)
    1dbc:	c6060060 	lwc1	$f6,96(s0)
    1dc0:	44804000 	mtc1	zero,$f8
    1dc4:	3c01c6fa 	lui	at,0xc6fa
    1dc8:	4606403e 	c.le.s	$f8,$f6
    1dcc:	00000000 	nop
    1dd0:	4503003a 	bc1tl	1ebc <func_80B0DB00+0x16c>
    1dd4:	8fbf0034 	lw	ra,52(sp)
    1dd8:	c6000080 	lwc1	$f0,128(s0)
    1ddc:	44815000 	mtc1	at,$f10
    1de0:	3c0146fa 	lui	at,0x46fa
    1de4:	460a003e 	c.le.s	$f0,$f10
    1de8:	00000000 	nop
    1dec:	45010007 	bc1t	1e0c <func_80B0DB00+0xbc>
    1df0:	00000000 	nop
    1df4:	44818000 	mtc1	at,$f16
    1df8:	02002025 	move	a0,s0
    1dfc:	4600803e 	c.le.s	$f16,$f0
    1e00:	00000000 	nop
    1e04:	45020006 	bc1fl	1e20 <func_80B0DB00+0xd0>
    1e08:	8602038a 	lh	v0,906(s0)
    1e0c:	0c000000 	jal	0 <func_80B0BDB0>
    1e10:	02002025 	move	a0,s0
    1e14:	10000029 	b	1ebc <func_80B0DB00+0x16c>
    1e18:	8fbf0034 	lw	ra,52(sp)
    1e1c:	8602038a 	lh	v0,906(s0)
    1e20:	306afffe 	andi	t2,v1,0xfffe
    1e24:	a60a0088 	sh	t2,136(s0)
    1e28:	14400006 	bnez	v0,1e44 <func_80B0DB00+0xf4>
    1e2c:	3c0b0000 	lui	t3,0x0
    1e30:	256b0000 	addiu	t3,t3,0
    1e34:	240c000a 	li	t4,10
    1e38:	ae0b0190 	sw	t3,400(s0)
    1e3c:	1000000d 	b	1e74 <func_80B0DB00+0x124>
    1e40:	a60c0394 	sh	t4,916(s0)
    1e44:	44829000 	mtc1	v0,$f18
    1e48:	3c014100 	lui	at,0x4100
    1e4c:	44813000 	mtc1	at,$f6
    1e50:	46809120 	cvt.s.w	$f4,$f18
    1e54:	3c013f00 	lui	at,0x3f00
    1e58:	44815000 	mtc1	at,$f10
    1e5c:	244dffff 	addiu	t5,v0,-1
    1e60:	a60d038a 	sh	t5,906(s0)
    1e64:	46062202 	mul.s	$f8,$f4,$f6
    1e68:	00000000 	nop
    1e6c:	460a4402 	mul.s	$f16,$f8,$f10
    1e70:	e6100060 	swc1	$f16,96(s0)
    1e74:	0c000000 	jal	0 <func_80B0BDB0>
    1e78:	2405387b 	li	a1,14459
    1e7c:	3c014000 	lui	at,0x4000
    1e80:	44819000 	mtc1	at,$f18
    1e84:	240e000c 	li	t6,12
    1e88:	240f0078 	li	t7,120
    1e8c:	2418000a 	li	t8,10
    1e90:	afb8001c 	sw	t8,28(sp)
    1e94:	afaf0018 	sw	t7,24(sp)
    1e98:	afae0010 	sw	t6,16(sp)
    1e9c:	8fa4003c 	lw	a0,60(sp)
    1ea0:	02002825 	move	a1,s0
    1ea4:	26060024 	addiu	a2,s0,36
    1ea8:	3c074180 	lui	a3,0x4180
    1eac:	afa00020 	sw	zero,32(sp)
    1eb0:	0c000000 	jal	0 <func_80B0BDB0>
    1eb4:	e7b20014 	swc1	$f18,20(sp)
    1eb8:	8fbf0034 	lw	ra,52(sp)
    1ebc:	8fb00030 	lw	s0,48(sp)
    1ec0:	27bd0038 	addiu	sp,sp,56
    1ec4:	03e00008 	jr	ra
    1ec8:	00000000 	nop

00001ecc <func_80B0DC7C>:
    1ecc:	27bdff90 	addiu	sp,sp,-112
    1ed0:	3c0f0000 	lui	t7,0x0
    1ed4:	afbf004c 	sw	ra,76(sp)
    1ed8:	afb00048 	sw	s0,72(sp)
    1edc:	afa50074 	sw	a1,116(sp)
    1ee0:	25ef0000 	addiu	t7,t7,0
    1ee4:	8df90000 	lw	t9,0(t7)
    1ee8:	27ae0064 	addiu	t6,sp,100
    1eec:	8df80004 	lw	t8,4(t7)
    1ef0:	add90000 	sw	t9,0(t6)
    1ef4:	8df90008 	lw	t9,8(t7)
    1ef8:	3c090000 	lui	t1,0x0
    1efc:	25290000 	addiu	t1,t1,0
    1f00:	add80004 	sw	t8,4(t6)
    1f04:	add90008 	sw	t9,8(t6)
    1f08:	8d2b0000 	lw	t3,0(t1)
    1f0c:	27a80058 	addiu	t0,sp,88
    1f10:	8d2a0004 	lw	t2,4(t1)
    1f14:	ad0b0000 	sw	t3,0(t0)
    1f18:	8d2b0008 	lw	t3,8(t1)
    1f1c:	ad0a0004 	sw	t2,4(t0)
    1f20:	00808025 	move	s0,a0
    1f24:	ad0b0008 	sw	t3,8(t0)
    1f28:	84820394 	lh	v0,916(a0)
    1f2c:	26060024 	addiu	a2,s0,36
    1f30:	00002825 	move	a1,zero
    1f34:	14400003 	bnez	v0,1f44 <func_80B0DC7C+0x78>
    1f38:	244cffff 	addiu	t4,v0,-1
    1f3c:	10000003 	b	1f4c <func_80B0DC7C+0x80>
    1f40:	00001825 	move	v1,zero
    1f44:	a60c0394 	sh	t4,916(s0)
    1f48:	86030394 	lh	v1,916(s0)
    1f4c:	10600044 	beqz	v1,2060 <func_80B0DC7C+0x194>
    1f50:	8fa40074 	lw	a0,116(sp)
    1f54:	0c000000 	jal	0 <func_80B0BDB0>
    1f58:	00000000 	nop
    1f5c:	3c013f00 	lui	at,0x3f00
    1f60:	44812000 	mtc1	at,$f4
    1f64:	3c0140c0 	lui	at,0x40c0
    1f68:	44814000 	mtc1	at,$f8
    1f6c:	46040181 	sub.s	$f6,$f0,$f4
    1f70:	3c014120 	lui	at,0x4120
    1f74:	44819000 	mtc1	at,$f18
    1f78:	c6100028 	lwc1	$f16,40(s0)
    1f7c:	46083282 	mul.s	$f10,$f6,$f8
    1f80:	46128100 	add.s	$f4,$f16,$f18
    1f84:	46045180 	add.s	$f6,$f10,$f4
    1f88:	0c000000 	jal	0 <func_80B0BDB0>
    1f8c:	e7a6005c 	swc1	$f6,92(sp)
    1f90:	3c013f00 	lui	at,0x3f00
    1f94:	44814000 	mtc1	at,$f8
    1f98:	3c014200 	lui	at,0x4200
    1f9c:	44819000 	mtc1	at,$f18
    1fa0:	46080401 	sub.s	$f16,$f0,$f8
    1fa4:	c6040024 	lwc1	$f4,36(s0)
    1fa8:	46128282 	mul.s	$f10,$f16,$f18
    1fac:	46045180 	add.s	$f6,$f10,$f4
    1fb0:	0c000000 	jal	0 <func_80B0BDB0>
    1fb4:	e7a60058 	swc1	$f6,88(sp)
    1fb8:	3c013f00 	lui	at,0x3f00
    1fbc:	44814000 	mtc1	at,$f8
    1fc0:	3c014200 	lui	at,0x4200
    1fc4:	44819000 	mtc1	at,$f18
    1fc8:	46080401 	sub.s	$f16,$f0,$f8
    1fcc:	c604002c 	lwc1	$f4,44(s0)
    1fd0:	27a60064 	addiu	a2,sp,100
    1fd4:	240d002a 	li	t5,42
    1fd8:	46128282 	mul.s	$f10,$f16,$f18
    1fdc:	240e00ff 	li	t6,255
    1fe0:	240f00ff 	li	t7,255
    1fe4:	241800ff 	li	t8,255
    1fe8:	241900ff 	li	t9,255
    1fec:	240800ff 	li	t0,255
    1ff0:	24090001 	li	t1,1
    1ff4:	46045180 	add.s	$f6,$f10,$f4
    1ff8:	240a0009 	li	t2,9
    1ffc:	240b0001 	li	t3,1
    2000:	afab003c 	sw	t3,60(sp)
    2004:	e7a60060 	swc1	$f6,96(sp)
    2008:	afaa0038 	sw	t2,56(sp)
    200c:	afa90034 	sw	t1,52(sp)
    2010:	afa80028 	sw	t0,40(sp)
    2014:	afb90024 	sw	t9,36(sp)
    2018:	afb80020 	sw	t8,32(sp)
    201c:	afaf001c 	sw	t7,28(sp)
    2020:	afae0018 	sw	t6,24(sp)
    2024:	afad0010 	sw	t5,16(sp)
    2028:	00c03825 	move	a3,a2
    202c:	afa00030 	sw	zero,48(sp)
    2030:	afa0002c 	sw	zero,44(sp)
    2034:	afa00014 	sw	zero,20(sp)
    2038:	8fa40074 	lw	a0,116(sp)
    203c:	0c000000 	jal	0 <func_80B0BDB0>
    2040:	27a50058 	addiu	a1,sp,88
    2044:	860c00b4 	lh	t4,180(s0)
    2048:	860e00b8 	lh	t6,184(s0)
    204c:	258d1000 	addiu	t5,t4,4096
    2050:	25cf1000 	addiu	t7,t6,4096
    2054:	a60d00b4 	sh	t5,180(s0)
    2058:	10000005 	b	2070 <func_80B0DC7C+0x1a4>
    205c:	a60f00b8 	sh	t7,184(s0)
    2060:	0c000000 	jal	0 <func_80B0BDB0>
    2064:	24070030 	li	a3,48
    2068:	0c000000 	jal	0 <func_80B0BDB0>
    206c:	02002025 	move	a0,s0
    2070:	8fbf004c 	lw	ra,76(sp)
    2074:	8fb00048 	lw	s0,72(sp)
    2078:	27bd0070 	addiu	sp,sp,112
    207c:	03e00008 	jr	ra
    2080:	00000000 	nop

00002084 <func_80B0DE34>:
    2084:	27bdffd8 	addiu	sp,sp,-40
    2088:	afa40028 	sw	a0,40(sp)
    208c:	afbf0014 	sw	ra,20(sp)
    2090:	24840024 	addiu	a0,a0,36
    2094:	afa5002c 	sw	a1,44(sp)
    2098:	0c000000 	jal	0 <func_80B0BDB0>
    209c:	afa4001c 	sw	a0,28(sp)
    20a0:	8fae0028 	lw	t6,40(sp)
    20a4:	8fa4001c 	lw	a0,28(sp)
    20a8:	8fa5002c 	lw	a1,44(sp)
    20ac:	85cf007e 	lh	t7,126(t6)
    20b0:	004fc023 	subu	t8,v0,t7
    20b4:	0c000000 	jal	0 <func_80B0BDB0>
    20b8:	a7b80024 	sh	t8,36(sp)
    20bc:	87b90024 	lh	t9,36(sp)
    20c0:	2444c000 	addiu	a0,v0,-16384
    20c4:	00042400 	sll	a0,a0,0x10
    20c8:	07200003 	bltz	t9,20d8 <func_80B0DE34+0x54>
    20cc:	00042403 	sra	a0,a0,0x10
    20d0:	10000002 	b	20dc <func_80B0DE34+0x58>
    20d4:	2403ffff 	li	v1,-1
    20d8:	24030001 	li	v1,1
    20dc:	00640019 	multu	v1,a0
    20e0:	8fbf0014 	lw	ra,20(sp)
    20e4:	27bd0028 	addiu	sp,sp,40
    20e8:	00001012 	mflo	v0
    20ec:	00021400 	sll	v0,v0,0x10
    20f0:	03e00008 	jr	ra
    20f4:	00021403 	sra	v0,v0,0x10

000020f8 <func_80B0DEA8>:
    20f8:	27bdffa0 	addiu	sp,sp,-96
    20fc:	afbf0034 	sw	ra,52(sp)
    2100:	afb00030 	sw	s0,48(sp)
    2104:	8ca31c44 	lw	v1,7236(a1)
    2108:	00808025 	move	s0,a0
    210c:	00a02025 	move	a0,a1
    2110:	8c6e067c 	lw	t6,1660(v1)
    2114:	000e7a80 	sll	t7,t6,0xa
    2118:	05e20006 	bltzl	t7,2134 <func_80B0DEA8+0x3c>
    211c:	afa3005c 	sw	v1,92(sp)
    2120:	50c00004 	beqzl	a2,2134 <func_80B0DEA8+0x3c>
    2124:	afa3005c 	sw	v1,92(sp)
    2128:	10000043 	b	2238 <func_80B0DEA8+0x140>
    212c:	00001025 	move	v0,zero
    2130:	afa3005c 	sw	v1,92(sp)
    2134:	afa50064 	sw	a1,100(sp)
    2138:	0c000000 	jal	0 <func_80B0BDB0>
    213c:	afa60068 	sw	a2,104(sp)
    2140:	8fa3005c 	lw	v1,92(sp)
    2144:	10400005 	beqz	v0,215c <func_80B0DEA8+0x64>
    2148:	8fa60068 	lw	a2,104(sp)
    214c:	50c00004 	beqzl	a2,2160 <func_80B0DEA8+0x68>
    2150:	24650024 	addiu	a1,v1,36
    2154:	10000038 	b	2238 <func_80B0DEA8+0x140>
    2158:	00001025 	move	v0,zero
    215c:	24650024 	addiu	a1,v1,36
    2160:	afa50040 	sw	a1,64(sp)
    2164:	0c000000 	jal	0 <func_80B0BDB0>
    2168:	02002025 	move	a0,s0
    216c:	861800b8 	lh	t8,184(s0)
    2170:	02002025 	move	a0,s0
    2174:	8fa50040 	lw	a1,64(sp)
    2178:	0058c823 	subu	t9,v0,t8
    217c:	07200006 	bltz	t9,2198 <func_80B0DEA8+0xa0>
    2180:	00000000 	nop
    2184:	0c000000 	jal	0 <func_80B0BDB0>
    2188:	02002025 	move	a0,s0
    218c:	860800b8 	lh	t0,184(s0)
    2190:	10000006 	b	21ac <func_80B0DEA8+0xb4>
    2194:	00481823 	subu	v1,v0,t0
    2198:	0c000000 	jal	0 <func_80B0BDB0>
    219c:	8fa50040 	lw	a1,64(sp)
    21a0:	860900b8 	lh	t1,184(s0)
    21a4:	00491823 	subu	v1,v0,t1
    21a8:	00031823 	negu	v1,v1
    21ac:	28611fc2 	slti	at,v1,8130
    21b0:	14200003 	bnez	at,21c0 <func_80B0DEA8+0xc8>
    21b4:	26040024 	addiu	a0,s0,36
    21b8:	1000001f 	b	2238 <func_80B0DEA8+0x140>
    21bc:	00001025 	move	v0,zero
    21c0:	8fa50040 	lw	a1,64(sp)
    21c4:	0c000000 	jal	0 <func_80B0BDB0>
    21c8:	afa4003c 	sw	a0,60(sp)
    21cc:	3c014302 	lui	at,0x4302
    21d0:	44812000 	mtc1	at,$f4
    21d4:	8fa40064 	lw	a0,100(sp)
    21d8:	8fa5003c 	lw	a1,60(sp)
    21dc:	4600203e 	c.le.s	$f4,$f0
    21e0:	8fa60040 	lw	a2,64(sp)
    21e4:	27a70048 	addiu	a3,sp,72
    21e8:	27aa0058 	addiu	t2,sp,88
    21ec:	45000003 	bc1f	21fc <func_80B0DEA8+0x104>
    21f0:	248407c0 	addiu	a0,a0,1984
    21f4:	10000010 	b	2238 <func_80B0DEA8+0x140>
    21f8:	00001025 	move	v0,zero
    21fc:	240b0001 	li	t3,1
    2200:	240c0001 	li	t4,1
    2204:	27ad0054 	addiu	t5,sp,84
    2208:	afad0024 	sw	t5,36(sp)
    220c:	afac0020 	sw	t4,32(sp)
    2210:	afab0014 	sw	t3,20(sp)
    2214:	afaa0010 	sw	t2,16(sp)
    2218:	afa00018 	sw	zero,24(sp)
    221c:	0c000000 	jal	0 <func_80B0BDB0>
    2220:	afa0001c 	sw	zero,28(sp)
    2224:	54400004 	bnezl	v0,2238 <func_80B0DEA8+0x140>
    2228:	00001025 	move	v0,zero
    222c:	10000002 	b	2238 <func_80B0DEA8+0x140>
    2230:	24020001 	li	v0,1
    2234:	00001025 	move	v0,zero
    2238:	8fbf0034 	lw	ra,52(sp)
    223c:	8fb00030 	lw	s0,48(sp)
    2240:	27bd0060 	addiu	sp,sp,96
    2244:	03e00008 	jr	ra
    2248:	00000000 	nop

0000224c <func_80B0DFFC>:
    224c:	27bdff98 	addiu	sp,sp,-104
    2250:	240e0001 	li	t6,1
    2254:	afbf003c 	sw	ra,60(sp)
    2258:	afb20038 	sw	s2,56(sp)
    225c:	afb10034 	sw	s1,52(sp)
    2260:	afb00030 	sw	s0,48(sp)
    2264:	afa5006c 	sw	a1,108(sp)
    2268:	afae004c 	sw	t6,76(sp)
    226c:	908f01a6 	lbu	t7,422(a0)
    2270:	00808025 	move	s0,a0
    2274:	8fa9006c 	lw	t1,108(sp)
    2278:	31f80002 	andi	t8,t7,0x2
    227c:	5300000a 	beqzl	t8,22a8 <func_80B0DFFC+0x5c>
    2280:	8d2a009c 	lw	t2,156(t1)
    2284:	909901a5 	lbu	t9,421(a0)
    2288:	24910024 	addiu	s1,a0,36
    228c:	3328fffd 	andi	t0,t9,0xfffd
    2290:	a08801a5 	sb	t0,421(a0)
    2294:	8fb2006c 	lw	s2,108(sp)
    2298:	afa0004c 	sw	zero,76(sp)
    229c:	10000062 	b	2428 <func_80B0DFFC+0x1dc>
    22a0:	265207c0 	addiu	s2,s2,1984
    22a4:	8d2a009c 	lw	t2,156(t1)
    22a8:	253207c0 	addiu	s2,t1,1984
    22ac:	02402025 	move	a0,s2
    22b0:	314b0003 	andi	t3,t2,0x3
    22b4:	15600013 	bnez	t3,2304 <func_80B0DFFC+0xb8>
    22b8:	26110024 	addiu	s1,s0,36
    22bc:	27ac0060 	addiu	t4,sp,96
    22c0:	240d0001 	li	t5,1
    22c4:	240e0001 	li	t6,1
    22c8:	27af005c 	addiu	t7,sp,92
    22cc:	afaf0024 	sw	t7,36(sp)
    22d0:	afae0020 	sw	t6,32(sp)
    22d4:	afad0014 	sw	t5,20(sp)
    22d8:	afac0010 	sw	t4,16(sp)
    22dc:	02202825 	move	a1,s1
    22e0:	26060454 	addiu	a2,s0,1108
    22e4:	27a70050 	addiu	a3,sp,80
    22e8:	afa00018 	sw	zero,24(sp)
    22ec:	0c000000 	jal	0 <func_80B0BDB0>
    22f0:	afa0001c 	sw	zero,28(sp)
    22f4:	54400004 	bnezl	v0,2308 <func_80B0DFFC+0xbc>
    22f8:	8fb8006c 	lw	t8,108(sp)
    22fc:	1000004a 	b	2428 <func_80B0DFFC+0x1dc>
    2300:	afa0004c 	sw	zero,76(sp)
    2304:	8fb8006c 	lw	t8,108(sp)
    2308:	26110024 	addiu	s1,s0,36
    230c:	24010001 	li	at,1
    2310:	8f19009c 	lw	t9,156(t8)
    2314:	271207c0 	addiu	s2,t8,1984
    2318:	02402025 	move	a0,s2
    231c:	33280003 	andi	t0,t9,0x3
    2320:	15010012 	bne	t0,at,236c <func_80B0DFFC+0x120>
    2324:	02202825 	move	a1,s1
    2328:	27aa0060 	addiu	t2,sp,96
    232c:	240b0001 	li	t3,1
    2330:	24090001 	li	t1,1
    2334:	27ac005c 	addiu	t4,sp,92
    2338:	afac0024 	sw	t4,36(sp)
    233c:	afa90020 	sw	t1,32(sp)
    2340:	afab0014 	sw	t3,20(sp)
    2344:	afaa0010 	sw	t2,16(sp)
    2348:	26060460 	addiu	a2,s0,1120
    234c:	27a70050 	addiu	a3,sp,80
    2350:	afa00018 	sw	zero,24(sp)
    2354:	0c000000 	jal	0 <func_80B0BDB0>
    2358:	afa0001c 	sw	zero,28(sp)
    235c:	50400004 	beqzl	v0,2370 <func_80B0DFFC+0x124>
    2360:	8fad006c 	lw	t5,108(sp)
    2364:	10000030 	b	2428 <func_80B0DFFC+0x1dc>
    2368:	afa0004c 	sw	zero,76(sp)
    236c:	8fad006c 	lw	t5,108(sp)
    2370:	24010002 	li	at,2
    2374:	02402025 	move	a0,s2
    2378:	8dae009c 	lw	t6,156(t5)
    237c:	02202825 	move	a1,s1
    2380:	2606046c 	addiu	a2,s0,1132
    2384:	31cf0003 	andi	t7,t6,0x3
    2388:	15e10010 	bne	t7,at,23cc <func_80B0DFFC+0x180>
    238c:	27a70050 	addiu	a3,sp,80
    2390:	27b80060 	addiu	t8,sp,96
    2394:	24190001 	li	t9,1
    2398:	24080001 	li	t0,1
    239c:	27aa005c 	addiu	t2,sp,92
    23a0:	afaa0024 	sw	t2,36(sp)
    23a4:	afa80020 	sw	t0,32(sp)
    23a8:	afb90014 	sw	t9,20(sp)
    23ac:	afb80010 	sw	t8,16(sp)
    23b0:	afa00018 	sw	zero,24(sp)
    23b4:	0c000000 	jal	0 <func_80B0BDB0>
    23b8:	afa0001c 	sw	zero,28(sp)
    23bc:	54400004 	bnezl	v0,23d0 <func_80B0DFFC+0x184>
    23c0:	8fab006c 	lw	t3,108(sp)
    23c4:	10000018 	b	2428 <func_80B0DFFC+0x1dc>
    23c8:	afa0004c 	sw	zero,76(sp)
    23cc:	8fab006c 	lw	t3,108(sp)
    23d0:	24010003 	li	at,3
    23d4:	02402025 	move	a0,s2
    23d8:	8d69009c 	lw	t1,156(t3)
    23dc:	02202825 	move	a1,s1
    23e0:	26060478 	addiu	a2,s0,1144
    23e4:	312c0003 	andi	t4,t1,0x3
    23e8:	1581000f 	bne	t4,at,2428 <func_80B0DFFC+0x1dc>
    23ec:	27a70050 	addiu	a3,sp,80
    23f0:	27ad0060 	addiu	t5,sp,96
    23f4:	240e0001 	li	t6,1
    23f8:	240f0001 	li	t7,1
    23fc:	27b8005c 	addiu	t8,sp,92
    2400:	afb80024 	sw	t8,36(sp)
    2404:	afaf0020 	sw	t7,32(sp)
    2408:	afae0014 	sw	t6,20(sp)
    240c:	afad0010 	sw	t5,16(sp)
    2410:	afa00018 	sw	zero,24(sp)
    2414:	0c000000 	jal	0 <func_80B0BDB0>
    2418:	afa0001c 	sw	zero,28(sp)
    241c:	50400003 	beqzl	v0,242c <func_80B0DFFC+0x1e0>
    2420:	26190430 	addiu	t9,s0,1072
    2424:	afa0004c 	sw	zero,76(sp)
    2428:	26190430 	addiu	t9,s0,1072
    242c:	24080001 	li	t0,1
    2430:	240a0001 	li	t2,1
    2434:	27ab005c 	addiu	t3,sp,92
    2438:	afab0024 	sw	t3,36(sp)
    243c:	afaa0020 	sw	t2,32(sp)
    2440:	afa80014 	sw	t0,20(sp)
    2444:	afb90010 	sw	t9,16(sp)
    2448:	02402025 	move	a0,s2
    244c:	02202825 	move	a1,s1
    2450:	26060484 	addiu	a2,s0,1156
    2454:	27a70050 	addiu	a3,sp,80
    2458:	afa00018 	sw	zero,24(sp)
    245c:	0c000000 	jal	0 <func_80B0BDB0>
    2460:	afa0001c 	sw	zero,28(sp)
    2464:	50400039 	beqzl	v0,254c <func_80B0DFFC+0x300>
    2468:	8fbf003c 	lw	ra,60(sp)
    246c:	8e020430 	lw	v0,1072(s0)
    2470:	84490008 	lh	t1,8(v0)
    2474:	844c000c 	lh	t4,12(v0)
    2478:	44892000 	mtc1	t1,$f4
    247c:	448c3000 	mtc1	t4,$f6
    2480:	46802320 	cvt.s.w	$f12,$f4
    2484:	0c000000 	jal	0 <func_80B0BDB0>
    2488:	468033a0 	cvt.s.w	$f14,$f6
    248c:	3c010000 	lui	at,0x0
    2490:	c4280000 	lwc1	$f8,0(at)
    2494:	27af0050 	addiu	t7,sp,80
    2498:	46080282 	mul.s	$f10,$f0,$f8
    249c:	4600540d 	trunc.w.s	$f16,$f10
    24a0:	440e8000 	mfc1	t6,$f16
    24a4:	00000000 	nop
    24a8:	a60e007e 	sh	t6,126(s0)
    24ac:	8df90000 	lw	t9,0(t7)
    24b0:	ae390000 	sw	t9,0(s1)
    24b4:	8df80004 	lw	t8,4(t7)
    24b8:	ae380004 	sw	t8,4(s1)
    24bc:	8df90008 	lw	t9,8(t7)
    24c0:	ae390008 	sw	t9,8(s1)
    24c4:	0c000000 	jal	0 <func_80B0BDB0>
    24c8:	86040032 	lh	a0,50(s0)
    24cc:	3c0140c0 	lui	at,0x40c0
    24d0:	44812000 	mtc1	at,$f4
    24d4:	c6120024 	lwc1	$f18,36(s0)
    24d8:	86040032 	lh	a0,50(s0)
    24dc:	46002182 	mul.s	$f6,$f4,$f0
    24e0:	46069200 	add.s	$f8,$f18,$f6
    24e4:	0c000000 	jal	0 <func_80B0BDB0>
    24e8:	e6080024 	swc1	$f8,36(s0)
    24ec:	3c0140c0 	lui	at,0x40c0
    24f0:	44818000 	mtc1	at,$f16
    24f4:	c60a002c 	lwc1	$f10,44(s0)
    24f8:	27a80050 	addiu	t0,sp,80
    24fc:	46008102 	mul.s	$f4,$f16,$f0
    2500:	86040032 	lh	a0,50(s0)
    2504:	46045480 	add.s	$f18,$f10,$f4
    2508:	e612002c 	swc1	$f18,44(s0)
    250c:	8d0b0000 	lw	t3,0(t0)
    2510:	ae0b0434 	sw	t3,1076(s0)
    2514:	8d0a0004 	lw	t2,4(t0)
    2518:	ae0a0438 	sw	t2,1080(s0)
    251c:	8d0b0008 	lw	t3,8(t0)
    2520:	0c000000 	jal	0 <func_80B0BDB0>
    2524:	ae0b043c 	sw	t3,1084(s0)
    2528:	c6060434 	lwc1	$f6,1076(s0)
    252c:	86040032 	lh	a0,50(s0)
    2530:	46003200 	add.s	$f8,$f6,$f0
    2534:	0c000000 	jal	0 <func_80B0BDB0>
    2538:	e6080434 	swc1	$f8,1076(s0)
    253c:	c610043c 	lwc1	$f16,1084(s0)
    2540:	46008280 	add.s	$f10,$f16,$f0
    2544:	e60a043c 	swc1	$f10,1084(s0)
    2548:	8fbf003c 	lw	ra,60(sp)
    254c:	8fa2004c 	lw	v0,76(sp)
    2550:	8fb00030 	lw	s0,48(sp)
    2554:	8fb10034 	lw	s1,52(sp)
    2558:	8fb20038 	lw	s2,56(sp)
    255c:	03e00008 	jr	ra
    2560:	27bd0068 	addiu	sp,sp,104

00002564 <func_80B0E314>:
    2564:	27bdffb0 	addiu	sp,sp,-80
    2568:	3c010000 	lui	at,0x0
    256c:	c4240000 	lwc1	$f4,0(at)
    2570:	afb00020 	sw	s0,32(sp)
    2574:	afa60058 	sw	a2,88(sp)
    2578:	00808025 	move	s0,a0
    257c:	afbf0024 	sw	ra,36(sp)
    2580:	afa50054 	sw	a1,84(sp)
    2584:	afa7005c 	sw	a3,92(sp)
    2588:	3c063e99 	lui	a2,0x3e99
    258c:	34c6999a 	ori	a2,a2,0x999a
    2590:	3c0742c8 	lui	a3,0x42c8
    2594:	8fa50060 	lw	a1,96(sp)
    2598:	24840068 	addiu	a0,a0,104
    259c:	0c000000 	jal	0 <func_80B0BDB0>
    25a0:	e7a40010 	swc1	$f4,16(sp)
    25a4:	c6060024 	lwc1	$f6,36(s0)
    25a8:	c7a80054 	lwc1	$f8,84(sp)
    25ac:	e7a60030 	swc1	$f6,48(sp)
    25b0:	c7aa0030 	lwc1	$f10,48(sp)
    25b4:	c6040028 	lwc1	$f4,40(s0)
    25b8:	c7a60058 	lwc1	$f6,88(sp)
    25bc:	460a4401 	sub.s	$f16,$f8,$f10
    25c0:	e7a4002c 	swc1	$f4,44(sp)
    25c4:	c7a8002c 	lwc1	$f8,44(sp)
    25c8:	c60a002c 	lwc1	$f10,44(s0)
    25cc:	c7a4005c 	lwc1	$f4,92(sp)
    25d0:	46083481 	sub.s	$f18,$f6,$f8
    25d4:	e7aa0028 	swc1	$f10,40(sp)
    25d8:	c7a60028 	lwc1	$f6,40(sp)
    25dc:	46062201 	sub.s	$f8,$f4,$f6
    25e0:	46084282 	mul.s	$f10,$f8,$f8
    25e4:	e7a80034 	swc1	$f8,52(sp)
    25e8:	46108102 	mul.s	$f4,$f16,$f16
    25ec:	00000000 	nop
    25f0:	46129182 	mul.s	$f6,$f18,$f18
    25f4:	46062200 	add.s	$f8,$f4,$f6
    25f8:	44802000 	mtc1	zero,$f4
    25fc:	c7a60034 	lwc1	$f6,52(sp)
    2600:	460a4000 	add.s	$f0,$f8,$f10
    2604:	46000004 	sqrt.s	$f0,$f0
    2608:	46040032 	c.eq.s	$f0,$f4
    260c:	00000000 	nop
    2610:	45000006 	bc1f	262c <func_80B0E314+0xc8>
    2614:	00000000 	nop
    2618:	44801000 	mtc1	zero,$f2
    261c:	44806000 	mtc1	zero,$f12
    2620:	44807000 	mtc1	zero,$f14
    2624:	10000005 	b	263c <func_80B0E314+0xd8>
    2628:	c6000068 	lwc1	$f0,104(s0)
    262c:	46008383 	div.s	$f14,$f16,$f0
    2630:	46009303 	div.s	$f12,$f18,$f0
    2634:	46003083 	div.s	$f2,$f6,$f0
    2638:	c6000068 	lwc1	$f0,104(s0)
    263c:	c7a80030 	lwc1	$f8,48(sp)
    2640:	46007382 	mul.s	$f14,$f14,$f0
    2644:	460e4280 	add.s	$f10,$f8,$f14
    2648:	46006302 	mul.s	$f12,$f12,$f0
    264c:	e60a0024 	swc1	$f10,36(s0)
    2650:	c7a4002c 	lwc1	$f4,44(sp)
    2654:	46001082 	mul.s	$f2,$f2,$f0
    2658:	460c2180 	add.s	$f6,$f4,$f12
    265c:	e6060028 	swc1	$f6,40(s0)
    2660:	c7a80028 	lwc1	$f8,40(sp)
    2664:	46024280 	add.s	$f10,$f8,$f2
    2668:	e60a002c 	swc1	$f10,44(s0)
    266c:	8fbf0024 	lw	ra,36(sp)
    2670:	8fb00020 	lw	s0,32(sp)
    2674:	27bd0050 	addiu	sp,sp,80
    2678:	03e00008 	jr	ra
    267c:	00000000 	nop

00002680 <func_80B0E430>:
    2680:	27bdffd0 	addiu	sp,sp,-48
    2684:	afb00020 	sw	s0,32(sp)
    2688:	00808025 	move	s0,a0
    268c:	afbf0024 	sw	ra,36(sp)
    2690:	3c040600 	lui	a0,0x600
    2694:	afa50034 	sw	a1,52(sp)
    2698:	afa60038 	sw	a2,56(sp)
    269c:	afa7003c 	sw	a3,60(sp)
    26a0:	0c000000 	jal	0 <func_80B0BDB0>
    26a4:	24840304 	addiu	a0,a0,772
    26a8:	86030388 	lh	v1,904(s0)
    26ac:	44822000 	mtc1	v0,$f4
    26b0:	26040168 	addiu	a0,s0,360
    26b4:	14600003 	bnez	v1,26c4 <func_80B0E430+0x44>
    26b8:	468020a0 	cvt.s.w	$f2,$f4
    26bc:	10000004 	b	26d0 <func_80B0E430+0x50>
    26c0:	00001025 	move	v0,zero
    26c4:	246effff 	addiu	t6,v1,-1
    26c8:	a60e0388 	sh	t6,904(s0)
    26cc:	86020388 	lh	v0,904(s0)
    26d0:	1040000c 	beqz	v0,2704 <func_80B0E430+0x84>
    26d4:	8fa50034 	lw	a1,52(sp)
    26d8:	3c010000 	lui	at,0x0
    26dc:	c4260000 	lwc1	$f6,0(at)
    26e0:	3c063f19 	lui	a2,0x3f19
    26e4:	34c6999a 	ori	a2,a2,0x999a
    26e8:	26040168 	addiu	a0,s0,360
    26ec:	24050000 	li	a1,0
    26f0:	3c07447a 	lui	a3,0x447a
    26f4:	0c000000 	jal	0 <func_80B0BDB0>
    26f8:	e7a60010 	swc1	$f6,16(sp)
    26fc:	10000047 	b	281c <func_80B0E430+0x19c>
    2700:	00001025 	move	v0,zero
    2704:	3c010000 	lui	at,0x0
    2708:	c4280000 	lwc1	$f8,0(at)
    270c:	3c063f19 	lui	a2,0x3f19
    2710:	34c6999a 	ori	a2,a2,0x999a
    2714:	3c07447a 	lui	a3,0x447a
    2718:	e7a20028 	swc1	$f2,40(sp)
    271c:	0c000000 	jal	0 <func_80B0BDB0>
    2720:	e7a80010 	swc1	$f8,16(sp)
    2724:	8faf003c 	lw	t7,60(sp)
    2728:	24010001 	li	at,1
    272c:	c7a20028 	lwc1	$f2,40(sp)
    2730:	15e1000a 	bne	t7,at,275c <func_80B0E430+0xdc>
    2734:	8fa30040 	lw	v1,64(sp)
    2738:	c60a0164 	lwc1	$f10,356(s0)
    273c:	c6100168 	lwc1	$f16,360(s0)
    2740:	46105480 	add.s	$f18,$f10,$f16
    2744:	4612103c 	c.lt.s	$f2,$f18
    2748:	00000000 	nop
    274c:	45020004 	bc1fl	2760 <func_80B0E430+0xe0>
    2750:	847807a0 	lh	t8,1952(v1)
    2754:	10000031 	b	281c <func_80B0E430+0x19c>
    2758:	00001025 	move	v0,zero
    275c:	847807a0 	lh	t8,1952(v1)
    2760:	26040024 	addiu	a0,s0,36
    2764:	0018c880 	sll	t9,t8,0x2
    2768:	00794021 	addu	t0,v1,t9
    276c:	8d020790 	lw	v0,1936(t0)
    2770:	0c000000 	jal	0 <func_80B0BDB0>
    2774:	2445005c 	addiu	a1,v0,92
    2778:	3c0143be 	lui	at,0x43be
    277c:	44812000 	mtc1	at,$f4
    2780:	00000000 	nop
    2784:	4604003c 	c.lt.s	$f0,$f4
    2788:	00000000 	nop
    278c:	45020011 	bc1fl	27d4 <func_80B0E430+0x154>
    2790:	a6000440 	sh	zero,1088(s0)
    2794:	86030440 	lh	v1,1088(s0)
    2798:	02002025 	move	a0,s0
    279c:	14600003 	bnez	v1,27ac <func_80B0E430+0x12c>
    27a0:	2469ffff 	addiu	t1,v1,-1
    27a4:	10000003 	b	27b4 <func_80B0E430+0x134>
    27a8:	00001025 	move	v0,zero
    27ac:	a6090440 	sh	t1,1088(s0)
    27b0:	86020440 	lh	v0,1088(s0)
    27b4:	54400008 	bnezl	v0,27d8 <func_80B0E430+0x158>
    27b8:	87a7003a 	lh	a3,58(sp)
    27bc:	0c000000 	jal	0 <func_80B0BDB0>
    27c0:	2405388c 	li	a1,14476
    27c4:	240a0004 	li	t2,4
    27c8:	10000002 	b	27d4 <func_80B0E430+0x154>
    27cc:	a60a0440 	sh	t2,1088(s0)
    27d0:	a6000440 	sh	zero,1088(s0)
    27d4:	87a7003a 	lh	a3,58(sp)
    27d8:	86050444 	lh	a1,1092(s0)
    27dc:	260400b8 	addiu	a0,s0,184
    27e0:	24060004 	li	a2,4
    27e4:	0c000000 	jal	0 <func_80B0BDB0>
    27e8:	afa70010 	sw	a3,16(sp)
    27ec:	8a0c00b4 	lwl	t4,180(s0)
    27f0:	9a0c00b7 	lwr	t4,183(s0)
    27f4:	860d0444 	lh	t5,1092(s0)
    27f8:	860e00b8 	lh	t6,184(s0)
    27fc:	aa0c0030 	swl	t4,48(s0)
    2800:	ba0c0033 	swr	t4,51(s0)
    2804:	960c00b8 	lhu	t4,184(s0)
    2808:	00001025 	move	v0,zero
    280c:	15ae0003 	bne	t5,t6,281c <func_80B0E430+0x19c>
    2810:	a60c0034 	sh	t4,52(s0)
    2814:	10000001 	b	281c <func_80B0E430+0x19c>
    2818:	24020001 	li	v0,1
    281c:	8fbf0024 	lw	ra,36(sp)
    2820:	8fb00020 	lw	s0,32(sp)
    2824:	27bd0030 	addiu	sp,sp,48
    2828:	03e00008 	jr	ra
    282c:	00000000 	nop

00002830 <func_80B0E5E0>:
    2830:	27bdffc8 	addiu	sp,sp,-56
    2834:	afa5003c 	sw	a1,60(sp)
    2838:	8fae003c 	lw	t6,60(sp)
    283c:	afbf0024 	sw	ra,36(sp)
    2840:	afb00020 	sw	s0,32(sp)
    2844:	00808025 	move	s0,a0
    2848:	3c0540c0 	lui	a1,0x40c0
    284c:	240603e8 	li	a2,1000
    2850:	24070001 	li	a3,1
    2854:	0c000000 	jal	0 <func_80B0BDB0>
    2858:	afae0010 	sw	t6,16(sp)
    285c:	5040002c 	beqzl	v0,2910 <func_80B0E5E0+0xe0>
    2860:	86020442 	lh	v0,1090(s0)
    2864:	0c000000 	jal	0 <func_80B0BDB0>
    2868:	00000000 	nop
    286c:	0c000000 	jal	0 <func_80B0BDB0>
    2870:	e7a0002c 	swc1	$f0,44(sp)
    2874:	3c013f00 	lui	at,0x3f00
    2878:	44812000 	mtc1	at,$f4
    287c:	3c01bf80 	lui	at,0xbf80
    2880:	c7a8002c 	lwc1	$f8,44(sp)
    2884:	4600203e 	c.le.s	$f4,$f0
    2888:	00000000 	nop
    288c:	45020006 	bc1fl	28a8 <func_80B0E5E0+0x78>
    2890:	44810000 	mtc1	at,$f0
    2894:	3c013f80 	lui	at,0x3f80
    2898:	44810000 	mtc1	at,$f0
    289c:	10000003 	b	28ac <func_80B0E5E0+0x7c>
    28a0:	00000000 	nop
    28a4:	44810000 	mtc1	at,$f0
    28a8:	00000000 	nop
    28ac:	3c010000 	lui	at,0x0
    28b0:	c4260000 	lwc1	$f6,0(at)
    28b4:	860a0034 	lh	t2,52(s0)
    28b8:	2404000a 	li	a0,10
    28bc:	46083282 	mul.s	$f10,$f6,$f8
    28c0:	448a4000 	mtc1	t2,$f8
    28c4:	2405001e 	li	a1,30
    28c8:	4600540d 	trunc.w.s	$f16,$f10
    28cc:	468042a0 	cvt.s.w	$f10,$f8
    28d0:	44188000 	mfc1	t8,$f16
    28d4:	00000000 	nop
    28d8:	0018cc00 	sll	t9,t8,0x10
    28dc:	00194403 	sra	t0,t9,0x10
    28e0:	25092ee0 	addiu	t1,t0,12000
    28e4:	44899000 	mtc1	t1,$f18
    28e8:	00000000 	nop
    28ec:	46809120 	cvt.s.w	$f4,$f18
    28f0:	46040182 	mul.s	$f6,$f0,$f4
    28f4:	460a3400 	add.s	$f16,$f6,$f10
    28f8:	4600848d 	trunc.w.s	$f18,$f16
    28fc:	440c9000 	mfc1	t4,$f18
    2900:	0c000000 	jal	0 <func_80B0BDB0>
    2904:	a60c0444 	sh	t4,1092(s0)
    2908:	a6020388 	sh	v0,904(s0)
    290c:	86020442 	lh	v0,1090(s0)
    2910:	02002025 	move	a0,s0
    2914:	24060001 	li	a2,1
    2918:	14400003 	bnez	v0,2928 <func_80B0E5E0+0xf8>
    291c:	244dffff 	addiu	t5,v0,-1
    2920:	10000003 	b	2930 <func_80B0E5E0+0x100>
    2924:	00001825 	move	v1,zero
    2928:	a60d0442 	sh	t5,1090(s0)
    292c:	86030442 	lh	v1,1090(s0)
    2930:	5460000d 	bnezl	v1,2968 <func_80B0E5E0+0x138>
    2934:	8fbf0024 	lw	ra,36(sp)
    2938:	0c000000 	jal	0 <func_80B0BDB0>
    293c:	8fa5003c 	lw	a1,60(sp)
    2940:	10400008 	beqz	v0,2964 <func_80B0E5E0+0x134>
    2944:	02002025 	move	a0,s0
    2948:	0c000000 	jal	0 <func_80B0BDB0>
    294c:	240539f2 	li	a1,14834
    2950:	3c0f0000 	lui	t7,0x0
    2954:	240e0014 	li	t6,20
    2958:	25ef0000 	addiu	t7,t7,0
    295c:	a60e0442 	sh	t6,1090(s0)
    2960:	ae0f0190 	sw	t7,400(s0)
    2964:	8fbf0024 	lw	ra,36(sp)
    2968:	8fb00020 	lw	s0,32(sp)
    296c:	27bd0038 	addiu	sp,sp,56
    2970:	03e00008 	jr	ra
    2974:	00000000 	nop

00002978 <func_80B0E728>:
    2978:	27bdffc8 	addiu	sp,sp,-56
    297c:	afbf0024 	sw	ra,36(sp)
    2980:	afb00020 	sw	s0,32(sp)
    2984:	84830442 	lh	v1,1090(a0)
    2988:	00808025 	move	s0,a0
    298c:	8ca71c44 	lw	a3,7236(a1)
    2990:	14600003 	bnez	v1,29a0 <func_80B0E728+0x28>
    2994:	246effff 	addiu	t6,v1,-1
    2998:	10000003 	b	29a8 <func_80B0E728+0x30>
    299c:	00001025 	move	v0,zero
    29a0:	a60e0442 	sh	t6,1090(s0)
    29a4:	86020442 	lh	v0,1090(s0)
    29a8:	10400024 	beqz	v0,2a3c <func_80B0E728+0xc4>
    29ac:	02002025 	move	a0,s0
    29b0:	02002025 	move	a0,s0
    29b4:	24060001 	li	a2,1
    29b8:	afa5003c 	sw	a1,60(sp)
    29bc:	0c000000 	jal	0 <func_80B0BDB0>
    29c0:	afa70034 	sw	a3,52(sp)
    29c4:	10400019 	beqz	v0,2a2c <func_80B0E728+0xb4>
    29c8:	8fa70034 	lw	a3,52(sp)
    29cc:	8cf80024 	lw	t8,36(a3)
    29d0:	26050448 	addiu	a1,s0,1096
    29d4:	3c0141f0 	lui	at,0x41f0
    29d8:	acb80000 	sw	t8,0(a1)
    29dc:	8cef0028 	lw	t7,40(a3)
    29e0:	44813000 	mtc1	at,$f6
    29e4:	02002025 	move	a0,s0
    29e8:	acaf0004 	sw	t7,4(a1)
    29ec:	8cf8002c 	lw	t8,44(a3)
    29f0:	acb80008 	sw	t8,8(a1)
    29f4:	c604044c 	lwc1	$f4,1100(s0)
    29f8:	46062200 	add.s	$f8,$f4,$f6
    29fc:	0c000000 	jal	0 <func_80B0BDB0>
    2a00:	e608044c 	swc1	$f8,1100(s0)
    2a04:	a6020444 	sh	v0,1092(s0)
    2a08:	8fb9003c 	lw	t9,60(sp)
    2a0c:	02002025 	move	a0,s0
    2a10:	3c0540c0 	lui	a1,0x40c0
    2a14:	24060fa0 	li	a2,4000
    2a18:	00003825 	move	a3,zero
    2a1c:	0c000000 	jal	0 <func_80B0BDB0>
    2a20:	afb90010 	sw	t9,16(sp)
    2a24:	10000049 	b	2b4c <func_80B0E728+0x1d4>
    2a28:	8fbf0024 	lw	ra,36(sp)
    2a2c:	3c080000 	lui	t0,0x0
    2a30:	25080000 	addiu	t0,t0,0
    2a34:	10000044 	b	2b48 <func_80B0E728+0x1d0>
    2a38:	ae080190 	sw	t0,400(s0)
    2a3c:	0c000000 	jal	0 <func_80B0BDB0>
    2a40:	afa5003c 	sw	a1,60(sp)
    2a44:	14400014 	bnez	v0,2a98 <func_80B0E728+0x120>
    2a48:	24040014 	li	a0,20
    2a4c:	0c000000 	jal	0 <func_80B0BDB0>
    2a50:	2405000a 	li	a1,10
    2a54:	a6020442 	sh	v0,1090(s0)
    2a58:	26050008 	addiu	a1,s0,8
    2a5c:	afa50028 	sw	a1,40(sp)
    2a60:	0c000000 	jal	0 <func_80B0BDB0>
    2a64:	02002025 	move	a0,s0
    2a68:	8fa50028 	lw	a1,40(sp)
    2a6c:	a6020444 	sh	v0,1092(s0)
    2a70:	3c0b0000 	lui	t3,0x0
    2a74:	8caa0000 	lw	t2,0(a1)
    2a78:	256b0000 	addiu	t3,t3,0
    2a7c:	ae0a0448 	sw	t2,1096(s0)
    2a80:	8ca90004 	lw	t1,4(a1)
    2a84:	ae09044c 	sw	t1,1100(s0)
    2a88:	8caa0008 	lw	t2,8(a1)
    2a8c:	ae0b0190 	sw	t3,400(s0)
    2a90:	1000002d 	b	2b48 <func_80B0E728+0x1d0>
    2a94:	ae0a0450 	sw	t2,1104(s0)
    2a98:	26020448 	addiu	v0,s0,1096
    2a9c:	8c4d0000 	lw	t5,0(v0)
    2aa0:	3c014100 	lui	at,0x4100
    2aa4:	44815000 	mtc1	at,$f10
    2aa8:	afad0004 	sw	t5,4(sp)
    2aac:	8c460004 	lw	a2,4(v0)
    2ab0:	8fa50004 	lw	a1,4(sp)
    2ab4:	02002025 	move	a0,s0
    2ab8:	afa60008 	sw	a2,8(sp)
    2abc:	8c470008 	lw	a3,8(v0)
    2ac0:	afa20028 	sw	v0,40(sp)
    2ac4:	e7aa0010 	swc1	$f10,16(sp)
    2ac8:	0c000000 	jal	0 <func_80B0BDB0>
    2acc:	afa7000c 	sw	a3,12(sp)
    2ad0:	86030440 	lh	v1,1088(s0)
    2ad4:	02002025 	move	a0,s0
    2ad8:	14600003 	bnez	v1,2ae8 <func_80B0E728+0x170>
    2adc:	246effff 	addiu	t6,v1,-1
    2ae0:	10000003 	b	2af0 <func_80B0E728+0x178>
    2ae4:	00001025 	move	v0,zero
    2ae8:	a60e0440 	sh	t6,1088(s0)
    2aec:	86020440 	lh	v0,1088(s0)
    2af0:	54400006 	bnezl	v0,2b0c <func_80B0E728+0x194>
    2af4:	26040024 	addiu	a0,s0,36
    2af8:	0c000000 	jal	0 <func_80B0BDB0>
    2afc:	2405388d 	li	a1,14477
    2b00:	240f0004 	li	t7,4
    2b04:	a60f0440 	sh	t7,1088(s0)
    2b08:	26040024 	addiu	a0,s0,36
    2b0c:	0c000000 	jal	0 <func_80B0BDB0>
    2b10:	8fa50028 	lw	a1,40(sp)
    2b14:	3c014150 	lui	at,0x4150
    2b18:	44818000 	mtc1	at,$f16
    2b1c:	00000000 	nop
    2b20:	4600803c 	c.lt.s	$f16,$f0
    2b24:	00000000 	nop
    2b28:	45000004 	bc1f	2b3c <func_80B0E728+0x1c4>
    2b2c:	00000000 	nop
    2b30:	0c000000 	jal	0 <func_80B0BDB0>
    2b34:	8fa4003c 	lw	a0,60(sp)
    2b38:	10400003 	beqz	v0,2b48 <func_80B0E728+0x1d0>
    2b3c:	3c180000 	lui	t8,0x0
    2b40:	27180000 	addiu	t8,t8,0
    2b44:	ae180190 	sw	t8,400(s0)
    2b48:	8fbf0024 	lw	ra,36(sp)
    2b4c:	8fb00020 	lw	s0,32(sp)
    2b50:	27bd0038 	addiu	sp,sp,56
    2b54:	03e00008 	jr	ra
    2b58:	00000000 	nop

00002b5c <func_80B0E90C>:
    2b5c:	27bdffd0 	addiu	sp,sp,-48
    2b60:	afbf001c 	sw	ra,28(sp)
    2b64:	afa50034 	sw	a1,52(sp)
    2b68:	24820448 	addiu	v0,a0,1096
    2b6c:	8c4f0000 	lw	t7,0(v0)
    2b70:	44802000 	mtc1	zero,$f4
    2b74:	afaf0004 	sw	t7,4(sp)
    2b78:	8c460004 	lw	a2,4(v0)
    2b7c:	8fa50004 	lw	a1,4(sp)
    2b80:	afa60008 	sw	a2,8(sp)
    2b84:	8c470008 	lw	a3,8(v0)
    2b88:	afa40030 	sw	a0,48(sp)
    2b8c:	afa20028 	sw	v0,40(sp)
    2b90:	e7a40010 	swc1	$f4,16(sp)
    2b94:	0c000000 	jal	0 <func_80B0BDB0>
    2b98:	afa7000c 	sw	a3,12(sp)
    2b9c:	8fa40030 	lw	a0,48(sp)
    2ba0:	44803000 	mtc1	zero,$f6
    2ba4:	c4880068 	lwc1	$f8,104(a0)
    2ba8:	24850008 	addiu	a1,a0,8
    2bac:	46083032 	c.eq.s	$f6,$f8
    2bb0:	00000000 	nop
    2bb4:	45020012 	bc1fl	2c00 <func_80B0E90C+0xa4>
    2bb8:	8fbf001c 	lw	ra,28(sp)
    2bbc:	afa40030 	sw	a0,48(sp)
    2bc0:	0c000000 	jal	0 <func_80B0BDB0>
    2bc4:	afa50024 	sw	a1,36(sp)
    2bc8:	8fa40030 	lw	a0,48(sp)
    2bcc:	8fa50024 	lw	a1,36(sp)
    2bd0:	3c090000 	lui	t1,0x0
    2bd4:	a4820444 	sh	v0,1092(a0)
    2bd8:	8fb80028 	lw	t8,40(sp)
    2bdc:	8ca80000 	lw	t0,0(a1)
    2be0:	25290000 	addiu	t1,t1,0
    2be4:	af080000 	sw	t0,0(t8)
    2be8:	8cb90004 	lw	t9,4(a1)
    2bec:	af190004 	sw	t9,4(t8)
    2bf0:	8ca80008 	lw	t0,8(a1)
    2bf4:	af080008 	sw	t0,8(t8)
    2bf8:	ac890190 	sw	t1,400(a0)
    2bfc:	8fbf001c 	lw	ra,28(sp)
    2c00:	27bd0030 	addiu	sp,sp,48
    2c04:	03e00008 	jr	ra
    2c08:	00000000 	nop

00002c0c <func_80B0E9BC>:
    2c0c:	27bdffd0 	addiu	sp,sp,-48
    2c10:	afa50034 	sw	a1,52(sp)
    2c14:	8fae0034 	lw	t6,52(sp)
    2c18:	afbf0024 	sw	ra,36(sp)
    2c1c:	afb00020 	sw	s0,32(sp)
    2c20:	00808025 	move	s0,a0
    2c24:	3c0540c0 	lui	a1,0x40c0
    2c28:	240603e8 	li	a2,1000
    2c2c:	00003825 	move	a3,zero
    2c30:	0c000000 	jal	0 <func_80B0BDB0>
    2c34:	afae0010 	sw	t6,16(sp)
    2c38:	1040001a 	beqz	v0,2ca4 <func_80B0E9BC+0x98>
    2c3c:	26020448 	addiu	v0,s0,1096
    2c40:	8c580000 	lw	t8,0(v0)
    2c44:	3c014000 	lui	at,0x4000
    2c48:	44812000 	mtc1	at,$f4
    2c4c:	afb80004 	sw	t8,4(sp)
    2c50:	8c460004 	lw	a2,4(v0)
    2c54:	8fa50004 	lw	a1,4(sp)
    2c58:	02002025 	move	a0,s0
    2c5c:	afa60008 	sw	a2,8(sp)
    2c60:	8c470008 	lw	a3,8(v0)
    2c64:	afa20028 	sw	v0,40(sp)
    2c68:	e7a40010 	swc1	$f4,16(sp)
    2c6c:	0c000000 	jal	0 <func_80B0BDB0>
    2c70:	afa7000c 	sw	a3,12(sp)
    2c74:	26040024 	addiu	a0,s0,36
    2c78:	0c000000 	jal	0 <func_80B0BDB0>
    2c7c:	8fa50028 	lw	a1,40(sp)
    2c80:	3c014080 	lui	at,0x4080
    2c84:	44813000 	mtc1	at,$f6
    2c88:	3c190000 	lui	t9,0x0
    2c8c:	27390000 	addiu	t9,t9,0
    2c90:	4600303c 	c.lt.s	$f6,$f0
    2c94:	00000000 	nop
    2c98:	45030003 	bc1tl	2ca8 <func_80B0E9BC+0x9c>
    2c9c:	8fbf0024 	lw	ra,36(sp)
    2ca0:	ae190190 	sw	t9,400(s0)
    2ca4:	8fbf0024 	lw	ra,36(sp)
    2ca8:	8fb00020 	lw	s0,32(sp)
    2cac:	27bd0030 	addiu	sp,sp,48
    2cb0:	03e00008 	jr	ra
    2cb4:	00000000 	nop

00002cb8 <EnSw_Update>:
    2cb8:	27bdffe0 	addiu	sp,sp,-32
    2cbc:	afb00018 	sw	s0,24(sp)
    2cc0:	00808025 	move	s0,a0
    2cc4:	afbf001c 	sw	ra,28(sp)
    2cc8:	afa50024 	sw	a1,36(sp)
    2ccc:	0c000000 	jal	0 <func_80B0BDB0>
    2cd0:	2484014c 	addiu	a0,a0,332
    2cd4:	02002025 	move	a0,s0
    2cd8:	0c000000 	jal	0 <func_80B0BDB0>
    2cdc:	8fa50024 	lw	a1,36(sp)
    2ce0:	8e190190 	lw	t9,400(s0)
    2ce4:	02002025 	move	a0,s0
    2ce8:	8fa50024 	lw	a1,36(sp)
    2cec:	0320f809 	jalr	t9
    2cf0:	00000000 	nop
    2cf4:	02002025 	move	a0,s0
    2cf8:	0c000000 	jal	0 <func_80B0BDB0>
    2cfc:	8fa50024 	lw	a1,36(sp)
    2d00:	8fbf001c 	lw	ra,28(sp)
    2d04:	8fb00018 	lw	s0,24(sp)
    2d08:	27bd0020 	addiu	sp,sp,32
    2d0c:	03e00008 	jr	ra
    2d10:	00000000 	nop

00002d14 <func_80B0EAC4>:
    2d14:	27bdff78 	addiu	sp,sp,-136
    2d18:	3c0f0000 	lui	t7,0x0
    2d1c:	afbf001c 	sw	ra,28(sp)
    2d20:	afb10018 	sw	s1,24(sp)
    2d24:	afb00014 	sw	s0,20(sp)
    2d28:	afa40088 	sw	a0,136(sp)
    2d2c:	afa5008c 	sw	a1,140(sp)
    2d30:	afa70094 	sw	a3,148(sp)
    2d34:	25ef0000 	addiu	t7,t7,0
    2d38:	8df90000 	lw	t9,0(t7)
    2d3c:	27ae007c 	addiu	t6,sp,124
    2d40:	8df80004 	lw	t8,4(t7)
    2d44:	add90000 	sw	t9,0(t6)
    2d48:	8df90008 	lw	t9,8(t7)
    2d4c:	3c090000 	lui	t1,0x0
    2d50:	25290000 	addiu	t1,t1,0
    2d54:	add80004 	sw	t8,4(t6)
    2d58:	add90008 	sw	t9,8(t6)
    2d5c:	8d2b0000 	lw	t3,0(t1)
    2d60:	27a80070 	addiu	t0,sp,112
    2d64:	8d2a0004 	lw	t2,4(t1)
    2d68:	ad0b0000 	sw	t3,0(t0)
    2d6c:	8d2b0008 	lw	t3,8(t1)
    2d70:	3c0d0000 	lui	t5,0x0
    2d74:	25ad0000 	addiu	t5,t5,0
    2d78:	ad0a0004 	sw	t2,4(t0)
    2d7c:	ad0b0008 	sw	t3,8(t0)
    2d80:	8daf0000 	lw	t7,0(t5)
    2d84:	27ac0064 	addiu	t4,sp,100
    2d88:	8dae0004 	lw	t6,4(t5)
    2d8c:	ad8f0000 	sw	t7,0(t4)
    2d90:	8daf0008 	lw	t7,8(t5)
    2d94:	3c190000 	lui	t9,0x0
    2d98:	27390000 	addiu	t9,t9,0
    2d9c:	ad8e0004 	sw	t6,4(t4)
    2da0:	ad8f0008 	sw	t7,8(t4)
    2da4:	8f290000 	lw	t1,0(t9)
    2da8:	27b80058 	addiu	t8,sp,88
    2dac:	8f280004 	lw	t0,4(t9)
    2db0:	af090000 	sw	t1,0(t8)
    2db4:	8f290008 	lw	t1,8(t9)
    2db8:	3c0b0000 	lui	t3,0x0
    2dbc:	256b0000 	addiu	t3,t3,0
    2dc0:	af080004 	sw	t0,4(t8)
    2dc4:	af090008 	sw	t1,8(t8)
    2dc8:	8d6d0000 	lw	t5,0(t3)
    2dcc:	27aa004c 	addiu	t2,sp,76
    2dd0:	8d6c0004 	lw	t4,4(t3)
    2dd4:	ad4d0000 	sw	t5,0(t2)
    2dd8:	8d6d0008 	lw	t5,8(t3)
    2ddc:	3c0f0000 	lui	t7,0x0
    2de0:	25ef0000 	addiu	t7,t7,0
    2de4:	ad4c0004 	sw	t4,4(t2)
    2de8:	ad4d0008 	sw	t5,8(t2)
    2dec:	8df90000 	lw	t9,0(t7)
    2df0:	27ae003c 	addiu	t6,sp,60
    2df4:	8df80004 	lw	t8,4(t7)
    2df8:	add90000 	sw	t9,0(t6)
    2dfc:	8df90008 	lw	t9,8(t7)
    2e00:	add80004 	sw	t8,4(t6)
    2e04:	00c08025 	move	s0,a2
    2e08:	add90008 	sw	t9,8(t6)
    2e0c:	8fa80088 	lw	t0,136(sp)
    2e10:	3c060000 	lui	a2,0x0
    2e14:	24c60000 	addiu	a2,a2,0
    2e18:	8d050000 	lw	a1,0(t0)
    2e1c:	24070824 	li	a3,2084
    2e20:	27a40028 	addiu	a0,sp,40
    2e24:	0c000000 	jal	0 <func_80B0BDB0>
    2e28:	afa50038 	sw	a1,56(sp)
    2e2c:	8fb1009c 	lw	s1,156(sp)
    2e30:	8fa6008c 	lw	a2,140(sp)
    2e34:	8629001c 	lh	t1,28(s1)
    2e38:	24ccfffc 	addiu	t4,a2,-4
    2e3c:	2d81001a 	sltiu	at,t4,26
    2e40:	312ae000 	andi	t2,t1,0xe000
    2e44:	000a5b43 	sra	t3,t2,0xd
    2e48:	51600030 	beqzl	t3,2f0c <L80B0ECB8+0x4>
    2e4c:	8fa6008c 	lw	a2,140(sp)
    2e50:	1020002d 	beqz	at,2f08 <L80B0ECB8>
    2e54:	000c6080 	sll	t4,t4,0x2
    2e58:	3c010000 	lui	at,0x0
    2e5c:	002c0821 	addu	at,at,t4
    2e60:	8c2c0000 	lw	t4,0(at)
    2e64:	01800008 	jr	t4
    2e68:	00000000 	nop

00002e6c <L80B0EC1C>:
    2e6c:	3c0d0600 	lui	t5,0x600
    2e70:	25ad4788 	addiu	t5,t5,18312
    2e74:	10000024 	b	2f08 <L80B0ECB8>
    2e78:	ae0d0000 	sw	t5,0(s0)

00002e7c <L80B0EC2C>:
    2e7c:	3c0e0600 	lui	t6,0x600
    2e80:	25ce46f0 	addiu	t6,t6,18160
    2e84:	10000020 	b	2f08 <L80B0ECB8>
    2e88:	ae0e0000 	sw	t6,0(s0)

00002e8c <L80B0EC3C>:
    2e8c:	3c0f0600 	lui	t7,0x600
    2e90:	25ef4658 	addiu	t7,t7,18008
    2e94:	1000001c 	b	2f08 <L80B0ECB8>
    2e98:	ae0f0000 	sw	t7,0(s0)

00002e9c <L80B0EC4C>:
    2e9c:	3c180600 	lui	t8,0x600
    2ea0:	271845c0 	addiu	t8,t8,17856
    2ea4:	10000018 	b	2f08 <L80B0ECB8>
    2ea8:	ae180000 	sw	t8,0(s0)

00002eac <L80B0EC5C>:
    2eac:	3c190600 	lui	t9,0x600
    2eb0:	27394820 	addiu	t9,t9,18464
    2eb4:	10000014 	b	2f08 <L80B0ECB8>
    2eb8:	ae190000 	sw	t9,0(s0)

00002ebc <L80B0EC6C>:
    2ebc:	3c080600 	lui	t0,0x600
    2ec0:	250848b8 	addiu	t0,t0,18616
    2ec4:	10000010 	b	2f08 <L80B0ECB8>
    2ec8:	ae080000 	sw	t0,0(s0)

00002ecc <L80B0EC7C>:
    2ecc:	3c090600 	lui	t1,0x600
    2ed0:	25294950 	addiu	t1,t1,18768
    2ed4:	1000000c 	b	2f08 <L80B0ECB8>
    2ed8:	ae090000 	sw	t1,0(s0)

00002edc <L80B0EC8C>:
    2edc:	3c0a0600 	lui	t2,0x600
    2ee0:	254a49e8 	addiu	t2,t2,18920
    2ee4:	10000008 	b	2f08 <L80B0ECB8>
    2ee8:	ae0a0000 	sw	t2,0(s0)

00002eec <L80B0EC9C>:
    2eec:	3c0b0600 	lui	t3,0x600
    2ef0:	256b3fb0 	addiu	t3,t3,16304
    2ef4:	10000004 	b	2f08 <L80B0ECB8>
    2ef8:	ae0b0000 	sw	t3,0(s0)

00002efc <L80B0ECAC>:
    2efc:	3c0c0600 	lui	t4,0x600
    2f00:	258c43d8 	addiu	t4,t4,17368
    2f04:	ae0c0000 	sw	t4,0(s0)

00002f08 <L80B0ECB8>:
    2f08:	8fa6008c 	lw	a2,140(sp)
    2f0c:	24010001 	li	at,1
    2f10:	27a4007c 	addiu	a0,sp,124
    2f14:	54c10011 	bnel	a2,at,2f5c <L80B0ECB8+0x54>
    2f18:	24010005 	li	at,5
    2f1c:	0c000000 	jal	0 <func_80B0BDB0>
    2f20:	26250454 	addiu	a1,s1,1108
    2f24:	27a40070 	addiu	a0,sp,112
    2f28:	0c000000 	jal	0 <func_80B0BDB0>
    2f2c:	26250460 	addiu	a1,s1,1120
    2f30:	27a40064 	addiu	a0,sp,100
    2f34:	0c000000 	jal	0 <func_80B0BDB0>
    2f38:	2625046c 	addiu	a1,s1,1132
    2f3c:	27a40058 	addiu	a0,sp,88
    2f40:	0c000000 	jal	0 <func_80B0BDB0>
    2f44:	26250478 	addiu	a1,s1,1144
    2f48:	27a4004c 	addiu	a0,sp,76
    2f4c:	0c000000 	jal	0 <func_80B0BDB0>
    2f50:	26250484 	addiu	a1,s1,1156
    2f54:	8fa6008c 	lw	a2,140(sp)
    2f58:	24010005 	li	at,5
    2f5c:	14c10004 	bne	a2,at,2f70 <L80B0ECB8+0x68>
    2f60:	27a4003c 	addiu	a0,sp,60
    2f64:	0c000000 	jal	0 <func_80B0BDB0>
    2f68:	26250038 	addiu	a1,s1,56
    2f6c:	8fa6008c 	lw	a2,140(sp)
    2f70:	24010004 	li	at,4
    2f74:	14c10010 	bne	a2,at,2fb8 <L80B0ECB8+0xb0>
    2f78:	26250194 	addiu	a1,s1,404
    2f7c:	8fa40038 	lw	a0,56(sp)
    2f80:	3c0efb00 	lui	t6,0xfb00
    2f84:	8c8302c0 	lw	v1,704(a0)
    2f88:	246d0008 	addiu	t5,v1,8
    2f8c:	ac8d02c0 	sw	t5,704(a0)
    2f90:	ac6e0000 	sw	t6,0(v1)
    2f94:	922901f5 	lbu	t1,501(s1)
    2f98:	923801f4 	lbu	t8,500(s1)
    2f9c:	922d01f6 	lbu	t5,502(s1)
    2fa0:	00095400 	sll	t2,t1,0x10
    2fa4:	0018ce00 	sll	t9,t8,0x18
    2fa8:	032a5825 	or	t3,t9,t2
    2fac:	000d7200 	sll	t6,t5,0x8
    2fb0:	016e7825 	or	t7,t3,t6
    2fb4:	ac6f0004 	sw	t7,4(v1)
    2fb8:	0c000000 	jal	0 <func_80B0BDB0>
    2fbc:	00c02025 	move	a0,a2
    2fc0:	8fb80088 	lw	t8,136(sp)
    2fc4:	3c060000 	lui	a2,0x0
    2fc8:	24c60000 	addiu	a2,a2,0
    2fcc:	27a40028 	addiu	a0,sp,40
    2fd0:	24070861 	li	a3,2145
    2fd4:	0c000000 	jal	0 <func_80B0BDB0>
    2fd8:	8f050000 	lw	a1,0(t8)
    2fdc:	8fbf001c 	lw	ra,28(sp)
    2fe0:	8fb00014 	lw	s0,20(sp)
    2fe4:	8fb10018 	lw	s1,24(sp)
    2fe8:	27bd0088 	addiu	sp,sp,136
    2fec:	03e00008 	jr	ra
    2ff0:	00001025 	move	v0,zero

00002ff4 <func_80B0EDA4>:
    2ff4:	afa40000 	sw	a0,0(sp)
    2ff8:	afa50004 	sw	a1,4(sp)
    2ffc:	afa60008 	sw	a2,8(sp)
    3000:	03e00008 	jr	ra
    3004:	afa7000c 	sw	a3,12(sp)

00003008 <func_80B0EDB8>:
    3008:	27bdffb8 	addiu	sp,sp,-72
    300c:	afbf0024 	sw	ra,36(sp)
    3010:	afa40048 	sw	a0,72(sp)
    3014:	afa5004c 	sw	a1,76(sp)
    3018:	afa60050 	sw	a2,80(sp)
    301c:	afa70054 	sw	a3,84(sp)
    3020:	8c850000 	lw	a1,0(a0)
    3024:	3c060000 	lui	a2,0x0
    3028:	24c60000 	addiu	a2,a2,0
    302c:	27a40030 	addiu	a0,sp,48
    3030:	24070885 	li	a3,2181
    3034:	0c000000 	jal	0 <func_80B0BDB0>
    3038:	afa50040 	sw	a1,64(sp)
    303c:	87a30056 	lh	v1,86(sp)
    3040:	3c010000 	lui	at,0x0
    3044:	c4240000 	lwc1	$f4,0(at)
    3048:	44833000 	mtc1	v1,$f6
    304c:	87af0052 	lh	t7,82(sp)
    3050:	8fa2004c 	lw	v0,76(sp)
    3054:	46803220 	cvt.s.w	$f8,$f6
    3058:	006fc023 	subu	t8,v1,t7
    305c:	44988000 	mtc1	t8,$f16
    3060:	44803000 	mtc1	zero,$f6
    3064:	3c010000 	lui	at,0x0
    3068:	468084a0 	cvt.s.w	$f18,$f16
    306c:	8fb90040 	lw	t9,64(sp)
    3070:	46082283 	div.s	$f10,$f4,$f8
    3074:	46125082 	mul.s	$f2,$f10,$f18
    3078:	46061032 	c.eq.s	$f2,$f6
    307c:	00000000 	nop
    3080:	45020003 	bc1fl	3090 <func_80B0EDB8+0x88>
    3084:	4600110d 	trunc.w.s	$f4,$f2
    3088:	c4220000 	lwc1	$f2,0(at)
    308c:	4600110d 	trunc.w.s	$f4,$f2
    3090:	90480003 	lbu	t0,3(v0)
    3094:	8f2402c0 	lw	a0,704(t9)
    3098:	90450000 	lbu	a1,0(v0)
    309c:	440a2000 	mfc1	t2,$f4
    30a0:	90460001 	lbu	a2,1(v0)
    30a4:	90470002 	lbu	a3,2(v0)
    30a8:	000a5c00 	sll	t3,t2,0x10
    30ac:	000b6403 	sra	t4,t3,0x10
    30b0:	afac0018 	sw	t4,24(sp)
    30b4:	afa00014 	sw	zero,20(sp)
    30b8:	0c000000 	jal	0 <func_80B0BDB0>
    30bc:	afa80010 	sw	t0,16(sp)
    30c0:	8fad0040 	lw	t5,64(sp)
    30c4:	3c060000 	lui	a2,0x0
    30c8:	24c60000 	addiu	a2,a2,0
    30cc:	ada202c0 	sw	v0,704(t5)
    30d0:	8fae0048 	lw	t6,72(sp)
    30d4:	27a40030 	addiu	a0,sp,48
    30d8:	24070895 	li	a3,2197
    30dc:	0c000000 	jal	0 <func_80B0BDB0>
    30e0:	8dc50000 	lw	a1,0(t6)
    30e4:	8fbf0024 	lw	ra,36(sp)
    30e8:	27bd0048 	addiu	sp,sp,72
    30ec:	03e00008 	jr	ra
    30f0:	00000000 	nop

000030f4 <func_80B0EEA4>:
    30f4:	27bdffc8 	addiu	sp,sp,-56
    30f8:	afbf0014 	sw	ra,20(sp)
    30fc:	afa40038 	sw	a0,56(sp)
    3100:	8c850000 	lw	a1,0(a0)
    3104:	3c060000 	lui	a2,0x0
    3108:	24c60000 	addiu	a2,a2,0
    310c:	27a40020 	addiu	a0,sp,32
    3110:	2407089d 	li	a3,2205
    3114:	0c000000 	jal	0 <func_80B0BDB0>
    3118:	afa50030 	sw	a1,48(sp)
    311c:	8faf0030 	lw	t7,48(sp)
    3120:	8fa40038 	lw	a0,56(sp)
    3124:	0c000000 	jal	0 <func_80B0BDB0>
    3128:	8de502c0 	lw	a1,704(t7)
    312c:	8fb80030 	lw	t8,48(sp)
    3130:	3c060000 	lui	a2,0x0
    3134:	24c60000 	addiu	a2,a2,0
    3138:	af0202c0 	sw	v0,704(t8)
    313c:	8fb90038 	lw	t9,56(sp)
    3140:	27a40020 	addiu	a0,sp,32
    3144:	2407089f 	li	a3,2207
    3148:	0c000000 	jal	0 <func_80B0BDB0>
    314c:	8f250000 	lw	a1,0(t9)
    3150:	8fbf0014 	lw	ra,20(sp)
    3154:	27bd0038 	addiu	sp,sp,56
    3158:	03e00008 	jr	ra
    315c:	00000000 	nop

00003160 <EnSw_Draw>:
    3160:	27bdffc8 	addiu	sp,sp,-56
    3164:	3c0e0000 	lui	t6,0x0
    3168:	8dce0000 	lw	t6,0(t6)
    316c:	afbf0024 	sw	ra,36(sp)
    3170:	afb10020 	sw	s1,32(sp)
    3174:	afb0001c 	sw	s0,28(sp)
    3178:	afae0030 	sw	t6,48(sp)
    317c:	848f001c 	lh	t7,28(a0)
    3180:	00808025 	move	s0,a0
    3184:	00a08825 	move	s1,a1
    3188:	31f8e000 	andi	t8,t7,0xe000
    318c:	0018cb43 	sra	t9,t8,0xd
    3190:	13200013 	beqz	t9,31e0 <EnSw_Draw+0x80>
    3194:	3c010000 	lui	at,0x0
    3198:	c42c0000 	lwc1	$f12,0(at)
    319c:	0c000000 	jal	0 <func_80B0BDB0>
    31a0:	24050001 	li	a1,1
    31a4:	920800af 	lbu	t0,175(s0)
    31a8:	3c064348 	lui	a2,0x4348
    31ac:	51000006 	beqzl	t0,31c8 <EnSw_Draw+0x68>
    31b0:	02002025 	move	a0,s0
    31b4:	44806000 	mtc1	zero,$f12
    31b8:	24070001 	li	a3,1
    31bc:	0c000000 	jal	0 <func_80B0BDB0>
    31c0:	46006386 	mov.s	$f14,$f12
    31c4:	02002025 	move	a0,s0
    31c8:	02202825 	move	a1,s1
    31cc:	0c000000 	jal	0 <func_80B0BDB0>
    31d0:	00003025 	move	a2,zero
    31d4:	3c020000 	lui	v0,0x0
    31d8:	1000000c 	b	320c <EnSw_Draw+0xac>
    31dc:	24420000 	addiu	v0,v0,0
    31e0:	8e090190 	lw	t1,400(s0)
    31e4:	3c020000 	lui	v0,0x0
    31e8:	24420000 	addiu	v0,v0,0
    31ec:	14490007 	bne	v0,t1,320c <EnSw_Draw+0xac>
    31f0:	02202025 	move	a0,s1
    31f4:	27a50030 	addiu	a1,sp,48
    31f8:	24060014 	li	a2,20
    31fc:	2407001e 	li	a3,30
    3200:	0c000000 	jal	0 <func_80B0BDB0>
    3204:	afa2002c 	sw	v0,44(sp)
    3208:	8fa2002c 	lw	v0,44(sp)
    320c:	8e240000 	lw	a0,0(s1)
    3210:	0c000000 	jal	0 <func_80B0BDB0>
    3214:	afa2002c 	sw	v0,44(sp)
    3218:	3c0a0000 	lui	t2,0x0
    321c:	254a0000 	addiu	t2,t2,0
    3220:	8e050150 	lw	a1,336(s0)
    3224:	8e06016c 	lw	a2,364(s0)
    3228:	3c070000 	lui	a3,0x0
    322c:	24e70000 	addiu	a3,a3,0
    3230:	afb00014 	sw	s0,20(sp)
    3234:	afaa0010 	sw	t2,16(sp)
    3238:	0c000000 	jal	0 <func_80B0BDB0>
    323c:	02202025 	move	a0,s1
    3240:	8fa2002c 	lw	v0,44(sp)
    3244:	8e0b0190 	lw	t3,400(s0)
    3248:	544b0004 	bnel	v0,t3,325c <EnSw_Draw+0xfc>
    324c:	8fbf0024 	lw	ra,36(sp)
    3250:	0c000000 	jal	0 <func_80B0BDB0>
    3254:	02202025 	move	a0,s1
    3258:	8fbf0024 	lw	ra,36(sp)
    325c:	8fb0001c 	lw	s0,28(sp)
    3260:	8fb10020 	lw	s1,32(sp)
    3264:	03e00008 	jr	ra
    3268:	27bd0038 	addiu	sp,sp,56
    326c:	00000000 	nop
