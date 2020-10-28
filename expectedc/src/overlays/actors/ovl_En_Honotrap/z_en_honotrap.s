
build/src/overlays/actors/ovl_En_Honotrap/z_en_honotrap.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A59C30>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afb00014 	sw	s0,20(sp)
       8:	00808025 	move	s0,a0
       c:	afb10018 	sw	s1,24(sp)
      10:	afbf001c 	sw	ra,28(sp)
      14:	afa5003c 	sw	a1,60(sp)
      18:	26110150 	addiu	s1,s0,336
      1c:	0c000000 	jal	0 <func_80A59C30>
      20:	02202825 	move	a1,s1
      24:	8fa4003c 	lw	a0,60(sp)
      28:	3c010001 	lui	at,0x1
      2c:	34211e60 	ori	at,at,0x1e60
      30:	00812821 	addu	a1,a0,at
      34:	afa50024 	sw	a1,36(sp)
      38:	0c000000 	jal	0 <func_80A59C30>
      3c:	02203025 	move	a2,s1
      40:	8fa4003c 	lw	a0,60(sp)
      44:	8fa50024 	lw	a1,36(sp)
      48:	0c000000 	jal	0 <func_80A59C30>
      4c:	02203025 	move	a2,s1
      50:	8fa4003c 	lw	a0,60(sp)
      54:	8fa50024 	lw	a1,36(sp)
      58:	0c000000 	jal	0 <func_80A59C30>
      5c:	02203025 	move	a2,s1
      60:	920e0240 	lbu	t6,576(s0)
      64:	35d80001 	ori	t8,t6,0x1
      68:	37080002 	ori	t0,t8,0x2
      6c:	a2180240 	sb	t8,576(s0)
      70:	a2080240 	sb	t0,576(s0)
      74:	35090004 	ori	t1,t0,0x4
      78:	a2090240 	sb	t1,576(s0)
      7c:	8fbf001c 	lw	ra,28(sp)
      80:	8fb10018 	lw	s1,24(sp)
      84:	8fb00014 	lw	s0,20(sp)
      88:	03e00008 	jr	ra
      8c:	27bd0038 	addiu	sp,sp,56

00000090 <func_80A59CC0>:
      90:	27bdffe8 	addiu	sp,sp,-24
      94:	afbf0014 	sw	ra,20(sp)
      98:	00803825 	move	a3,a0
      9c:	afa70018 	sw	a3,24(sp)
      a0:	00a02025 	move	a0,a1
      a4:	0c000000 	jal	0 <func_80A59C30>
      a8:	afa5001c 	sw	a1,28(sp)
      ac:	3c010000 	lui	at,0x0
      b0:	c4240000 	lwc1	$f4,0(at)
      b4:	3c040000 	lui	a0,0x0
      b8:	8fa5001c 	lw	a1,28(sp)
      bc:	4604003c 	c.lt.s	$f0,$f4
      c0:	8fa70018 	lw	a3,24(sp)
      c4:	24840000 	addiu	a0,a0,0
      c8:	24060148 	li	a2,328
      cc:	4500000d 	bc1f	104 <func_80A59CC0+0x74>
      d0:	3c013f80 	lui	at,0x3f80
      d4:	3c050000 	lui	a1,0x0
      d8:	24a50000 	addiu	a1,a1,0
      dc:	0c000000 	jal	0 <func_80A59C30>
      e0:	afa70018 	sw	a3,24(sp)
      e4:	8fa70018 	lw	a3,24(sp)
      e8:	44800000 	mtc1	zero,$f0
      ec:	3c013f80 	lui	at,0x3f80
      f0:	44813000 	mtc1	at,$f6
      f4:	e4e00004 	swc1	$f0,4(a3)
      f8:	e4e00000 	swc1	$f0,0(a3)
      fc:	1000000c 	b	130 <func_80A59CC0+0xa0>
     100:	e4e60008 	swc1	$f6,8(a3)
     104:	44814000 	mtc1	at,$f8
     108:	c4aa0000 	lwc1	$f10,0(a1)
     10c:	46004083 	div.s	$f2,$f8,$f0
     110:	46025402 	mul.s	$f16,$f10,$f2
     114:	e4f00000 	swc1	$f16,0(a3)
     118:	c4b20004 	lwc1	$f18,4(a1)
     11c:	46029102 	mul.s	$f4,$f18,$f2
     120:	e4e40004 	swc1	$f4,4(a3)
     124:	c4a60008 	lwc1	$f6,8(a1)
     128:	46023202 	mul.s	$f8,$f6,$f2
     12c:	e4e80008 	swc1	$f8,8(a3)
     130:	8fbf0014 	lw	ra,20(sp)
     134:	27bd0018 	addiu	sp,sp,24
     138:	03e00008 	jr	ra
     13c:	00000000 	nop

00000140 <func_80A59D70>:
     140:	27bdff58 	addiu	sp,sp,-168
     144:	afb00030 	sw	s0,48(sp)
     148:	00a08025 	move	s0,a1
     14c:	afbf0054 	sw	ra,84(sp)
     150:	afbe0050 	sw	s8,80(sp)
     154:	3c053dcc 	lui	a1,0x3dcc
     158:	0080f025 	move	s8,a0
     15c:	afb7004c 	sw	s7,76(sp)
     160:	afb60048 	sw	s6,72(sp)
     164:	afb50044 	sw	s5,68(sp)
     168:	afb40040 	sw	s4,64(sp)
     16c:	afb3003c 	sw	s3,60(sp)
     170:	afb20038 	sw	s2,56(sp)
     174:	afb10034 	sw	s1,52(sp)
     178:	f7b60028 	sdc1	$f22,40(sp)
     17c:	f7b40020 	sdc1	$f20,32(sp)
     180:	0c000000 	jal	0 <func_80A59C30>
     184:	34a5cccd 	ori	a1,a1,0xcccd
     188:	0c000000 	jal	0 <func_80A59C30>
     18c:	87c40016 	lh	a0,22(s8)
     190:	46000586 	mov.s	$f22,$f0
     194:	0c000000 	jal	0 <func_80A59C30>
     198:	87c40016 	lh	a0,22(s8)
     19c:	27d70150 	addiu	s7,s8,336
     1a0:	46000506 	mov.s	$f20,$f0
     1a4:	02e02825 	move	a1,s7
     1a8:	0c000000 	jal	0 <func_80A59C30>
     1ac:	02002025 	move	a0,s0
     1b0:	3c140000 	lui	s4,0x0
     1b4:	26940000 	addiu	s4,s4,0
     1b8:	27ce0170 	addiu	t6,s8,368
     1bc:	afae0010 	sw	t6,16(sp)
     1c0:	02803825 	move	a3,s4
     1c4:	02002025 	move	a0,s0
     1c8:	02e02825 	move	a1,s7
     1cc:	0c000000 	jal	0 <func_80A59C30>
     1d0:	03c03025 	move	a2,s8
     1d4:	00009025 	move	s2,zero
     1d8:	27d30024 	addiu	s3,s8,36
     1dc:	27b60070 	addiu	s6,sp,112
     1e0:	24150024 	li	s5,36
     1e4:	02c08025 	move	s0,s6
     1e8:	00008825 	move	s1,zero
     1ec:	8e8f000c 	lw	t7,12(s4)
     1f0:	0012c100 	sll	t8,s2,0x4
     1f4:	0312c023 	subu	t8,t8,s2
     1f8:	0018c080 	sll	t8,t8,0x2
     1fc:	01f8c821 	addu	t9,t7,t8
     200:	03311021 	addu	v0,t9,s1
     204:	c4440020 	lwc1	$f4,32(v0)
     208:	c4480018 	lwc1	$f8,24(v0)
     20c:	24420018 	addiu	v0,v0,24
     210:	46162182 	mul.s	$f6,$f4,$f22
     214:	02002025 	move	a0,s0
     218:	02602825 	move	a1,s3
     21c:	46144282 	mul.s	$f10,$f8,$f20
     220:	02003025 	move	a2,s0
     224:	460a3400 	add.s	$f16,$f6,$f10
     228:	e6100000 	swc1	$f16,0(s0)
     22c:	c4520004 	lwc1	$f18,4(v0)
     230:	e6120004 	swc1	$f18,4(s0)
     234:	c4440008 	lwc1	$f4,8(v0)
     238:	c4460000 	lwc1	$f6,0(v0)
     23c:	46142202 	mul.s	$f8,$f4,$f20
     240:	00000000 	nop
     244:	46163282 	mul.s	$f10,$f6,$f22
     248:	460a4401 	sub.s	$f16,$f8,$f10
     24c:	0c000000 	jal	0 <func_80A59C30>
     250:	e6100008 	swc1	$f16,8(s0)
     254:	2631000c 	addiu	s1,s1,12
     258:	1635ffe4 	bne	s1,s5,1ec <func_80A59D70+0xac>
     25c:	2610000c 	addiu	s0,s0,12
     260:	27a80088 	addiu	t0,sp,136
     264:	afa80010 	sw	t0,16(sp)
     268:	02e02025 	move	a0,s7
     26c:	02402825 	move	a1,s2
     270:	02c03025 	move	a2,s6
     274:	0c000000 	jal	0 <func_80A59C30>
     278:	27a7007c 	addiu	a3,sp,124
     27c:	26520001 	addiu	s2,s2,1
     280:	24010002 	li	at,2
     284:	5641ffd8 	bnel	s2,at,1e8 <func_80A59D70+0xa8>
     288:	02c08025 	move	s0,s6
     28c:	0c000000 	jal	0 <func_80A59C30>
     290:	03c02025 	move	a0,s8
     294:	03c02025 	move	a0,s8
     298:	0c000000 	jal	0 <func_80A59C30>
     29c:	24050000 	li	a1,0
     2a0:	8fbf0054 	lw	ra,84(sp)
     2a4:	d7b40020 	ldc1	$f20,32(sp)
     2a8:	d7b60028 	ldc1	$f22,40(sp)
     2ac:	8fb00030 	lw	s0,48(sp)
     2b0:	8fb10034 	lw	s1,52(sp)
     2b4:	8fb20038 	lw	s2,56(sp)
     2b8:	8fb3003c 	lw	s3,60(sp)
     2bc:	8fb40040 	lw	s4,64(sp)
     2c0:	8fb50044 	lw	s5,68(sp)
     2c4:	8fb60048 	lw	s6,72(sp)
     2c8:	8fb7004c 	lw	s7,76(sp)
     2cc:	8fbe0050 	lw	s8,80(sp)
     2d0:	03e00008 	jr	ra
     2d4:	27bd00a8 	addiu	sp,sp,168

000002d8 <func_80A59F08>:
     2d8:	27bdffd0 	addiu	sp,sp,-48
     2dc:	afa50034 	sw	a1,52(sp)
     2e0:	afbf001c 	sw	ra,28(sp)
     2e4:	afb00018 	sw	s0,24(sp)
     2e8:	3c0538d1 	lui	a1,0x38d1
     2ec:	00808025 	move	s0,a0
     2f0:	0c000000 	jal	0 <func_80A59C30>
     2f4:	34a5b717 	ori	a1,a1,0xb717
     2f8:	26050150 	addiu	a1,s0,336
     2fc:	afa50024 	sw	a1,36(sp)
     300:	0c000000 	jal	0 <func_80A59C30>
     304:	8fa40034 	lw	a0,52(sp)
     308:	3c070000 	lui	a3,0x0
     30c:	24e70000 	addiu	a3,a3,0
     310:	8fa40034 	lw	a0,52(sp)
     314:	8fa50024 	lw	a1,36(sp)
     318:	0c000000 	jal	0 <func_80A59C30>
     31c:	02003025 	move	a2,s0
     320:	02002025 	move	a0,s0
     324:	0c000000 	jal	0 <func_80A59C30>
     328:	8fa50024 	lw	a1,36(sp)
     32c:	3c01bf80 	lui	at,0xbf80
     330:	44812000 	mtc1	at,$f4
     334:	3c060000 	lui	a2,0x0
     338:	24c60000 	addiu	a2,a2,0
     33c:	26040098 	addiu	a0,s0,152
     340:	00002825 	move	a1,zero
     344:	0c000000 	jal	0 <func_80A59C30>
     348:	e6040070 	swc1	$f4,112(s0)
     34c:	3c060000 	lui	a2,0x0
     350:	24c60000 	addiu	a2,a2,0
     354:	260400b4 	addiu	a0,s0,180
     358:	24050000 	li	a1,0
     35c:	0c000000 	jal	0 <func_80A59C30>
     360:	3c0741f0 	lui	a3,0x41f0
     364:	240e0080 	li	t6,128
     368:	a20e00c8 	sb	t6,200(s0)
     36c:	8faf0034 	lw	t7,52(sp)
     370:	3c014120 	lui	at,0x4120
     374:	44814000 	mtc1	at,$f8
     378:	8df81c44 	lw	t8,7236(t7)
     37c:	8f080024 	lw	t0,36(t8)
     380:	ae08022c 	sw	t0,556(s0)
     384:	8f190028 	lw	t9,40(t8)
     388:	ae190230 	sw	t9,560(s0)
     38c:	c6060230 	lwc1	$f6,560(s0)
     390:	8f08002c 	lw	t0,44(t8)
     394:	46083280 	add.s	$f10,$f6,$f8
     398:	ae080234 	sw	t0,564(s0)
     39c:	0c000000 	jal	0 <func_80A59C30>
     3a0:	e60a0230 	swc1	$f10,560(s0)
     3a4:	3c010000 	lui	at,0x0
     3a8:	c4300000 	lwc1	$f16,0(at)
     3ac:	02002025 	move	a0,s0
     3b0:	46100482 	mul.s	$f18,$f0,$f16
     3b4:	4600910d 	trunc.w.s	$f4,$f18
     3b8:	440a2000 	mfc1	t2,$f4
     3bc:	0c000000 	jal	0 <func_80A59C30>
     3c0:	a60a023e 	sh	t2,574(s0)
     3c4:	02002025 	move	a0,s0
     3c8:	0c000000 	jal	0 <func_80A59C30>
     3cc:	24052822 	li	a1,10274
     3d0:	860b001c 	lh	t3,28(s0)
     3d4:	24010002 	li	at,2
     3d8:	240cffff 	li	t4,-1
     3dc:	15610008 	bne	t3,at,400 <func_80A59F08+0x128>
     3e0:	240d000c 	li	t5,12
     3e4:	3c01c47a 	lui	at,0xc47a
     3e8:	44813000 	mtc1	at,$f6
     3ec:	240e001e 	li	t6,30
     3f0:	a20c0003 	sb	t4,3(s0)
     3f4:	a60d0190 	sh	t5,400(s0)
     3f8:	a60e0192 	sh	t6,402(s0)
     3fc:	e60600bc 	swc1	$f6,188(s0)
     400:	8fbf001c 	lw	ra,28(sp)
     404:	8fb00018 	lw	s0,24(sp)
     408:	27bd0030 	addiu	sp,sp,48
     40c:	03e00008 	jr	ra
     410:	00000000 	nop

00000414 <EnHonotrap_Init>:
     414:	27bdffe8 	addiu	sp,sp,-24
     418:	afa5001c 	sw	a1,28(sp)
     41c:	afbf0014 	sw	ra,20(sp)
     420:	3c050000 	lui	a1,0x0
     424:	24a50000 	addiu	a1,a1,0
     428:	0c000000 	jal	0 <func_80A59C30>
     42c:	afa40018 	sw	a0,24(sp)
     430:	8fa40018 	lw	a0,24(sp)
     434:	8fa5001c 	lw	a1,28(sp)
     438:	848e001c 	lh	t6,28(a0)
     43c:	15c00005 	bnez	t6,454 <EnHonotrap_Init+0x40>
     440:	00000000 	nop
     444:	0c000000 	jal	0 <func_80A59C30>
     448:	00000000 	nop
     44c:	10000004 	b	460 <EnHonotrap_Init+0x4c>
     450:	8fbf0014 	lw	ra,20(sp)
     454:	0c000000 	jal	0 <func_80A59C30>
     458:	00000000 	nop
     45c:	8fbf0014 	lw	ra,20(sp)
     460:	27bd0018 	addiu	sp,sp,24
     464:	03e00008 	jr	ra
     468:	00000000 	nop

0000046c <EnHonotrap_Destroy>:
     46c:	27bdffe8 	addiu	sp,sp,-24
     470:	afbf0014 	sw	ra,20(sp)
     474:	848e001c 	lh	t6,28(a0)
     478:	00803025 	move	a2,a0
     47c:	00a03825 	move	a3,a1
     480:	15c00006 	bnez	t6,49c <EnHonotrap_Destroy+0x30>
     484:	00e02025 	move	a0,a3
     488:	00a02025 	move	a0,a1
     48c:	0c000000 	jal	0 <func_80A59C30>
     490:	24c50150 	addiu	a1,a2,336
     494:	10000004 	b	4a8 <EnHonotrap_Destroy+0x3c>
     498:	8fbf0014 	lw	ra,20(sp)
     49c:	0c000000 	jal	0 <func_80A59C30>
     4a0:	24c50150 	addiu	a1,a2,336
     4a4:	8fbf0014 	lw	ra,20(sp)
     4a8:	27bd0018 	addiu	sp,sp,24
     4ac:	03e00008 	jr	ra
     4b0:	00000000 	nop

000004b4 <func_80A5A0E4>:
     4b4:	3c0e0000 	lui	t6,0x0
     4b8:	25ce0000 	addiu	t6,t6,0
     4bc:	240f0003 	li	t7,3
     4c0:	ac8e014c 	sw	t6,332(a0)
     4c4:	03e00008 	jr	ra
     4c8:	a48f022a 	sh	t7,554(a0)

000004cc <func_80A5A0FC>:
     4cc:	27bdffe8 	addiu	sp,sp,-24
     4d0:	afbf0014 	sw	ra,20(sp)
     4d4:	afa5001c 	sw	a1,28(sp)
     4d8:	8c8e011c 	lw	t6,284(a0)
     4dc:	240f00c8 	li	t7,200
     4e0:	51c00004 	beqzl	t6,4f4 <func_80A5A0FC+0x28>
     4e4:	84980228 	lh	t8,552(a0)
     4e8:	10000022 	b	574 <func_80A5A0FC+0xa8>
     4ec:	a48f0228 	sh	t7,552(a0)
     4f0:	84980228 	lh	t8,552(a0)
     4f4:	3c010000 	lui	at,0x0
     4f8:	5f00001f 	bgtzl	t8,578 <func_80A5A0FC+0xac>
     4fc:	8fbf0014 	lw	ra,20(sp)
     500:	c4840090 	lwc1	$f4,144(a0)
     504:	c4260000 	lwc1	$f6,0(at)
     508:	4606203c 	c.lt.s	$f4,$f6
     50c:	00000000 	nop
     510:	45020019 	bc1fl	578 <func_80A5A0FC+0xac>
     514:	8fbf0014 	lw	ra,20(sp)
     518:	c4800094 	lwc1	$f0,148(a0)
     51c:	44804000 	mtc1	zero,$f8
     520:	3c01c42f 	lui	at,0xc42f
     524:	4608003c 	c.lt.s	$f0,$f8
     528:	00000000 	nop
     52c:	45020012 	bc1fl	578 <func_80A5A0FC+0xac>
     530:	8fbf0014 	lw	ra,20(sp)
     534:	44815000 	mtc1	at,$f10
     538:	00000000 	nop
     53c:	4600503c 	c.lt.s	$f10,$f0
     540:	00000000 	nop
     544:	4502000c 	bc1fl	578 <func_80A5A0FC+0xac>
     548:	8fbf0014 	lw	ra,20(sp)
     54c:	8499008a 	lh	t9,138(a0)
     550:	848800b6 	lh	t0,182(a0)
     554:	03281023 	subu	v0,t9,t0
     558:	2841c001 	slti	at,v0,-16383
     55c:	14200005 	bnez	at,574 <func_80A5A0FC+0xa8>
     560:	28414000 	slti	at,v0,16384
     564:	50200004 	beqzl	at,578 <func_80A5A0FC+0xac>
     568:	8fbf0014 	lw	ra,20(sp)
     56c:	0c000000 	jal	0 <func_80A59C30>
     570:	00000000 	nop
     574:	8fbf0014 	lw	ra,20(sp)
     578:	27bd0018 	addiu	sp,sp,24
     57c:	03e00008 	jr	ra
     580:	00000000 	nop

00000584 <func_80A5A1B4>:
     584:	27bdffe0 	addiu	sp,sp,-32
     588:	3c0e0000 	lui	t6,0x0
     58c:	afbf001c 	sw	ra,28(sp)
     590:	25ce0000 	addiu	t6,t6,0
     594:	ac8e014c 	sw	t6,332(a0)
     598:	240f0028 	li	t7,40
     59c:	afaf0010 	sw	t7,16(sp)
     5a0:	afa40020 	sw	a0,32(sp)
     5a4:	24054000 	li	a1,16384
     5a8:	240600ff 	li	a2,255
     5ac:	0c000000 	jal	0 <func_80A59C30>
     5b0:	00003825 	move	a3,zero
     5b4:	8fa40020 	lw	a0,32(sp)
     5b8:	2418001e 	li	t8,30
     5bc:	24052881 	li	a1,10369
     5c0:	0c000000 	jal	0 <func_80A59C30>
     5c4:	a4980228 	sh	t8,552(a0)
     5c8:	8fbf001c 	lw	ra,28(sp)
     5cc:	27bd0020 	addiu	sp,sp,32
     5d0:	03e00008 	jr	ra
     5d4:	00000000 	nop

000005d8 <func_80A5A208>:
     5d8:	27bdffb8 	addiu	sp,sp,-72
     5dc:	afbf003c 	sw	ra,60(sp)
     5e0:	afb00038 	sw	s0,56(sp)
     5e4:	afa5004c 	sw	a1,76(sp)
     5e8:	848e022a 	lh	t6,554(a0)
     5ec:	00808025 	move	s0,a0
     5f0:	25cfffff 	addiu	t7,t6,-1
     5f4:	a48f022a 	sh	t7,554(a0)
     5f8:	8498022a 	lh	t8,554(a0)
     5fc:	5f000026 	bgtzl	t8,698 <func_80A5A208+0xc0>
     600:	8fbf003c 	lw	ra,60(sp)
     604:	0c000000 	jal	0 <func_80A59C30>
     608:	00000000 	nop
     60c:	0c000000 	jal	0 <func_80A59C30>
     610:	860400b6 	lh	a0,182(s0)
     614:	e7a00040 	swc1	$f0,64(sp)
     618:	0c000000 	jal	0 <func_80A59C30>
     61c:	860400b6 	lh	a0,182(s0)
     620:	3c014140 	lui	at,0x4140
     624:	44811000 	mtc1	at,$f2
     628:	c7a40040 	lwc1	$f4,64(sp)
     62c:	c6080008 	lwc1	$f8,8(s0)
     630:	3c014120 	lui	at,0x4120
     634:	46022182 	mul.s	$f6,$f4,$f2
     638:	44819000 	mtc1	at,$f18
     63c:	8fa6004c 	lw	a2,76(sp)
     640:	240a0001 	li	t2,1
     644:	02002825 	move	a1,s0
     648:	2407011c 	li	a3,284
     64c:	24c41c24 	addiu	a0,a2,7204
     650:	46083280 	add.s	$f10,$f6,$f8
     654:	46020182 	mul.s	$f6,$f0,$f2
     658:	e7aa0010 	swc1	$f10,16(sp)
     65c:	c610000c 	lwc1	$f16,12(s0)
     660:	46128101 	sub.s	$f4,$f16,$f18
     664:	e7a40014 	swc1	$f4,20(sp)
     668:	c6080010 	lwc1	$f8,16(s0)
     66c:	46083280 	add.s	$f10,$f6,$f8
     670:	e7aa0018 	swc1	$f10,24(sp)
     674:	86190014 	lh	t9,20(s0)
     678:	afb9001c 	sw	t9,28(sp)
     67c:	86080016 	lh	t0,22(s0)
     680:	afa80020 	sw	t0,32(sp)
     684:	86090018 	lh	t1,24(s0)
     688:	afaa0028 	sw	t2,40(sp)
     68c:	0c000000 	jal	0 <func_80A59C30>
     690:	afa90024 	sw	t1,36(sp)
     694:	8fbf003c 	lw	ra,60(sp)
     698:	8fb00038 	lw	s0,56(sp)
     69c:	27bd0048 	addiu	sp,sp,72
     6a0:	03e00008 	jr	ra
     6a4:	00000000 	nop

000006a8 <func_80A5A2D8>:
     6a8:	3c0e0000 	lui	t6,0x0
     6ac:	25ce0000 	addiu	t6,t6,0
     6b0:	ac8e014c 	sw	t6,332(a0)
     6b4:	03e00008 	jr	ra
     6b8:	a480022a 	sh	zero,554(a0)

000006bc <func_80A5A2EC>:
     6bc:	27bdffe8 	addiu	sp,sp,-24
     6c0:	afbf0014 	sw	ra,20(sp)
     6c4:	afa5001c 	sw	a1,28(sp)
     6c8:	848e0228 	lh	t6,552(a0)
     6cc:	5dc00004 	bgtzl	t6,6e0 <func_80A5A2EC+0x24>
     6d0:	8fbf0014 	lw	ra,20(sp)
     6d4:	0c000000 	jal	0 <func_80A59C30>
     6d8:	00000000 	nop
     6dc:	8fbf0014 	lw	ra,20(sp)
     6e0:	27bd0018 	addiu	sp,sp,24
     6e4:	03e00008 	jr	ra
     6e8:	00000000 	nop

000006ec <func_80A5A31C>:
     6ec:	3c0e0000 	lui	t6,0x0
     6f0:	25ce0000 	addiu	t6,t6,0
     6f4:	03e00008 	jr	ra
     6f8:	ac8e014c 	sw	t6,332(a0)

000006fc <func_80A5A32C>:
     6fc:	27bdffe8 	addiu	sp,sp,-24
     700:	afbf0014 	sw	ra,20(sp)
     704:	afa5001c 	sw	a1,28(sp)
     708:	848e022a 	lh	t6,554(a0)
     70c:	25cf0001 	addiu	t7,t6,1
     710:	a48f022a 	sh	t7,554(a0)
     714:	8498022a 	lh	t8,554(a0)
     718:	2b010003 	slti	at,t8,3
     71c:	54200007 	bnezl	at,73c <func_80A5A32C+0x40>
     720:	8fbf0014 	lw	ra,20(sp)
     724:	0c000000 	jal	0 <func_80A59C30>
     728:	afa40018 	sw	a0,24(sp)
     72c:	8fa40018 	lw	a0,24(sp)
     730:	241900c8 	li	t9,200
     734:	a4990228 	sh	t9,552(a0)
     738:	8fbf0014 	lw	ra,20(sp)
     73c:	27bd0018 	addiu	sp,sp,24
     740:	03e00008 	jr	ra
     744:	00000000 	nop

00000748 <func_80A5A378>:
     748:	3c0e0000 	lui	t6,0x0
     74c:	25ce0000 	addiu	t6,t6,0
     750:	03e00008 	jr	ra
     754:	ac8e014c 	sw	t6,332(a0)

00000758 <func_80A5A388>:
     758:	27bdffe8 	addiu	sp,sp,-24
     75c:	afbf0014 	sw	ra,20(sp)
     760:	afa5001c 	sw	a1,28(sp)
     764:	848e001c 	lh	t6,28(a0)
     768:	00803825 	move	a3,a0
     76c:	24010001 	li	at,1
     770:	15c10004 	bne	t6,at,784 <func_80A5A388+0x2c>
     774:	24e40050 	addiu	a0,a3,80
     778:	3c010000 	lui	at,0x0
     77c:	10000003 	b	78c <func_80A5A388+0x34>
     780:	c4200000 	lwc1	$f0,0(at)
     784:	3c010000 	lui	at,0x0
     788:	c4200000 	lwc1	$f0,0(at)
     78c:	44050000 	mfc1	a1,$f0
     790:	3c063a1d 	lui	a2,0x3a1d
     794:	34c64952 	ori	a2,a2,0x4952
     798:	0c000000 	jal	0 <func_80A59C30>
     79c:	afa70018 	sw	a3,24(sp)
     7a0:	8fa70018 	lw	a3,24(sp)
     7a4:	c4e00050 	lwc1	$f0,80(a3)
     7a8:	e4e00054 	swc1	$f0,84(a3)
     7ac:	1040000b 	beqz	v0,7dc <func_80A5A388+0x84>
     7b0:	e4e00058 	swc1	$f0,88(a3)
     7b4:	84ef001c 	lh	t7,28(a3)
     7b8:	24010001 	li	at,1
     7bc:	15e10005 	bne	t7,at,7d4 <func_80A5A388+0x7c>
     7c0:	00000000 	nop
     7c4:	0c000000 	jal	0 <func_80A59C30>
     7c8:	00e02025 	move	a0,a3
     7cc:	10000004 	b	7e0 <func_80A5A388+0x88>
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	0c000000 	jal	0 <func_80A59C30>
     7d8:	00e02025 	move	a0,a3
     7dc:	8fbf0014 	lw	ra,20(sp)
     7e0:	27bd0018 	addiu	sp,sp,24
     7e4:	03e00008 	jr	ra
     7e8:	00000000 	nop

000007ec <func_80A5A41C>:
     7ec:	3c013f80 	lui	at,0x3f80
     7f0:	44812000 	mtc1	at,$f4
     7f4:	27bdffe8 	addiu	sp,sp,-24
     7f8:	afbf0014 	sw	ra,20(sp)
     7fc:	240e0028 	li	t6,40
     800:	00802825 	move	a1,a0
     804:	a48e0228 	sh	t6,552(a0)
     808:	e4840060 	swc1	$f4,96(a0)
     80c:	84840032 	lh	a0,50(a0)
     810:	0c000000 	jal	0 <func_80A59C30>
     814:	afa50018 	sw	a1,24(sp)
     818:	46000180 	add.s	$f6,$f0,$f0
     81c:	8fa50018 	lw	a1,24(sp)
     820:	e4a6005c 	swc1	$f6,92(a1)
     824:	0c000000 	jal	0 <func_80A59C30>
     828:	84a40032 	lh	a0,50(a1)
     82c:	46000200 	add.s	$f8,$f0,$f0
     830:	8fa50018 	lw	a1,24(sp)
     834:	3c0f0000 	lui	t7,0x0
     838:	25ef0000 	addiu	t7,t7,0
     83c:	e4a80064 	swc1	$f8,100(a1)
     840:	acaf014c 	sw	t7,332(a1)
     844:	8fbf0014 	lw	ra,20(sp)
     848:	27bd0018 	addiu	sp,sp,24
     84c:	03e00008 	jr	ra
     850:	00000000 	nop

00000854 <func_80A5A484>:
     854:	27bdffd8 	addiu	sp,sp,-40
     858:	afbf0024 	sw	ra,36(sp)
     85c:	afb00020 	sw	s0,32(sp)
     860:	afa5002c 	sw	a1,44(sp)
     864:	90820160 	lbu	v0,352(a0)
     868:	00808025 	move	s0,a0
     86c:	30430002 	andi	v1,v0,0x2
     870:	14600004 	bnez	v1,884 <func_80A5A484+0x30>
     874:	00000000 	nop
     878:	848e0228 	lh	t6,552(a0)
     87c:	5dc00014 	bgtzl	t6,8d0 <func_80A5A484+0x7c>
     880:	c6000060 	lwc1	$f0,96(s0)
     884:	10600009 	beqz	v1,8ac <func_80A5A484+0x58>
     888:	304f0004 	andi	t7,v0,0x4
     88c:	15e00007 	bnez	t7,8ac <func_80A5A484+0x58>
     890:	8fa4002c 	lw	a0,44(sp)
     894:	44802000 	mtc1	zero,$f4
     898:	8607008a 	lh	a3,138(s0)
     89c:	02002825 	move	a1,s0
     8a0:	3c0640a0 	lui	a2,0x40a0
     8a4:	0c000000 	jal	0 <func_80A59C30>
     8a8:	e7a40010 	swc1	$f4,16(sp)
     8ac:	44800000 	mtc1	zero,$f0
     8b0:	02002025 	move	a0,s0
     8b4:	e6000064 	swc1	$f0,100(s0)
     8b8:	e6000060 	swc1	$f0,96(s0)
     8bc:	0c000000 	jal	0 <func_80A59C30>
     8c0:	e600005c 	swc1	$f0,92(s0)
     8c4:	10000030 	b	988 <func_80A5A484+0x134>
     8c8:	8fbf0024 	lw	ra,36(sp)
     8cc:	c6000060 	lwc1	$f0,96(s0)
     8d0:	44803000 	mtc1	zero,$f6
     8d4:	02002825 	move	a1,s0
     8d8:	4600303c 	c.lt.s	$f6,$f0
     8dc:	00000000 	nop
     8e0:	45020013 	bc1fl	930 <func_80A5A484+0xdc>
     8e4:	3c013f80 	lui	at,0x3f80
     8e8:	c6080024 	lwc1	$f8,36(s0)
     8ec:	c60a005c 	lwc1	$f10,92(s0)
     8f0:	c612002c 	lwc1	$f18,44(s0)
     8f4:	c6040064 	lwc1	$f4,100(s0)
     8f8:	460a4400 	add.s	$f16,$f8,$f10
     8fc:	44804000 	mtc1	zero,$f8
     900:	24180005 	li	t8,5
     904:	46049180 	add.s	$f6,$f18,$f4
     908:	e6100024 	swc1	$f16,36(s0)
     90c:	3c0640e0 	lui	a2,0x40e0
     910:	3c074140 	lui	a3,0x4140
     914:	e606002c 	swc1	$f6,44(s0)
     918:	afb80014 	sw	t8,20(sp)
     91c:	8fa4002c 	lw	a0,44(sp)
     920:	0c000000 	jal	0 <func_80A59C30>
     924:	e7a80010 	swc1	$f8,16(sp)
     928:	c6000060 	lwc1	$f0,96(s0)
     92c:	3c013f80 	lui	at,0x3f80
     930:	44818000 	mtc1	at,$f16
     934:	c60a0080 	lwc1	$f10,128(s0)
     938:	44060000 	mfc1	a2,$f0
     93c:	26040028 	addiu	a0,s0,40
     940:	46105480 	add.s	$f18,$f10,$f16
     944:	44059000 	mfc1	a1,$f18
     948:	0c000000 	jal	0 <func_80A59C30>
     94c:	00000000 	nop
     950:	14400007 	bnez	v0,970 <func_80A5A484+0x11c>
     954:	02002025 	move	a0,s0
     958:	3c013f80 	lui	at,0x3f80
     95c:	44813000 	mtc1	at,$f6
     960:	c6040060 	lwc1	$f4,96(s0)
     964:	46062200 	add.s	$f8,$f4,$f6
     968:	10000004 	b	97c <func_80A5A484+0x128>
     96c:	e6080060 	swc1	$f8,96(s0)
     970:	44805000 	mtc1	zero,$f10
     974:	00000000 	nop
     978:	e60a0060 	swc1	$f10,96(s0)
     97c:	0c000000 	jal	0 <func_80A59C30>
     980:	8fa5002c 	lw	a1,44(sp)
     984:	8fbf0024 	lw	ra,36(sp)
     988:	8fb00020 	lw	s0,32(sp)
     98c:	27bd0028 	addiu	sp,sp,40
     990:	03e00008 	jr	ra
     994:	00000000 	nop

00000998 <func_80A5A5C8>:
     998:	27bdffe8 	addiu	sp,sp,-24
     99c:	3c0e0000 	lui	t6,0x0
     9a0:	afbf0014 	sw	ra,20(sp)
     9a4:	25ce0000 	addiu	t6,t6,0
     9a8:	ac8e014c 	sw	t6,332(a0)
     9ac:	afa40018 	sw	a0,24(sp)
     9b0:	0c000000 	jal	0 <func_80A59C30>
     9b4:	2485022c 	addiu	a1,a0,556
     9b8:	3c013f80 	lui	at,0x3f80
     9bc:	44816000 	mtc1	at,$f12
     9c0:	8fa40018 	lw	a0,24(sp)
     9c4:	240f00a0 	li	t7,160
     9c8:	460c0100 	add.s	$f4,$f0,$f12
     9cc:	c486022c 	lwc1	$f6,556(a0)
     9d0:	c4880024 	lwc1	$f8,36(a0)
     9d4:	c4920230 	lwc1	$f18,560(a0)
     9d8:	46046083 	div.s	$f2,$f12,$f4
     9dc:	c4840028 	lwc1	$f4,40(a0)
     9e0:	a48f0228 	sh	t7,552(a0)
     9e4:	46083281 	sub.s	$f10,$f6,$f8
     9e8:	46049181 	sub.s	$f6,$f18,$f4
     9ec:	46025402 	mul.s	$f16,$f10,$f2
     9f0:	c48a0234 	lwc1	$f10,564(a0)
     9f4:	46023202 	mul.s	$f8,$f6,$f2
     9f8:	44803000 	mtc1	zero,$f6
     9fc:	e490005c 	swc1	$f16,92(a0)
     a00:	c490002c 	lwc1	$f16,44(a0)
     a04:	e4860238 	swc1	$f6,568(a0)
     a08:	e4880060 	swc1	$f8,96(a0)
     a0c:	46105481 	sub.s	$f18,$f10,$f16
     a10:	46029102 	mul.s	$f4,$f18,$f2
     a14:	e4840064 	swc1	$f4,100(a0)
     a18:	8fbf0014 	lw	ra,20(sp)
     a1c:	27bd0018 	addiu	sp,sp,24
     a20:	03e00008 	jr	ra
     a24:	00000000 	nop

00000a28 <func_80A5A658>:
     a28:	27bdff90 	addiu	sp,sp,-112
     a2c:	afb0001c 	sw	s0,28(sp)
     a30:	00808025 	move	s0,a0
     a34:	afbf0024 	sw	ra,36(sp)
     a38:	afa50074 	sw	a1,116(sp)
     a3c:	afb10020 	sw	s1,32(sp)
     a40:	3c054150 	lui	a1,0x4150
     a44:	24840238 	addiu	a0,a0,568
     a48:	0c000000 	jal	0 <func_80A59C30>
     a4c:	3c063f00 	lui	a2,0x3f00
     a50:	c6020238 	lwc1	$f2,568(s0)
     a54:	c604005c 	lwc1	$f4,92(s0)
     a58:	c6060060 	lwc1	$f6,96(s0)
     a5c:	26040024 	addiu	a0,s0,36
     a60:	46041002 	mul.s	$f0,$f2,$f4
     a64:	46000305 	abs.s	$f12,$f0
     a68:	46061002 	mul.s	$f0,$f2,$f6
     a6c:	44066000 	mfc1	a2,$f12
     a70:	46000005 	abs.s	$f0,$f0
     a74:	e7a00064 	swc1	$f0,100(sp)
     a78:	c6080064 	lwc1	$f8,100(s0)
     a7c:	46081002 	mul.s	$f0,$f2,$f8
     a80:	46000005 	abs.s	$f0,$f0
     a84:	e7a00068 	swc1	$f0,104(sp)
     a88:	0c000000 	jal	0 <func_80A59C30>
     a8c:	8e05022c 	lw	a1,556(s0)
     a90:	30510001 	andi	s1,v0,0x1
     a94:	26040028 	addiu	a0,s0,40
     a98:	8e050230 	lw	a1,560(s0)
     a9c:	0c000000 	jal	0 <func_80A59C30>
     aa0:	8fa60064 	lw	a2,100(sp)
     aa4:	02228824 	and	s1,s1,v0
     aa8:	2604002c 	addiu	a0,s0,44
     aac:	8e050234 	lw	a1,564(s0)
     ab0:	0c000000 	jal	0 <func_80A59C30>
     ab4:	8fa60068 	lw	a2,104(sp)
     ab8:	44805000 	mtc1	zero,$f10
     abc:	240e001d 	li	t6,29
     ac0:	02228824 	and	s1,s1,v0
     ac4:	afae0014 	sw	t6,20(sp)
     ac8:	8fa40074 	lw	a0,116(sp)
     acc:	02002825 	move	a1,s0
     ad0:	3c0640e0 	lui	a2,0x40e0
     ad4:	3c074120 	lui	a3,0x4120
     ad8:	0c000000 	jal	0 <func_80A59C30>
     adc:	e7aa0010 	swc1	$f10,16(sp)
     ae0:	92020160 	lbu	v0,352(s0)
     ae4:	44800000 	mtc1	zero,$f0
     ae8:	8fb80074 	lw	t8,116(sp)
     aec:	304f0004 	andi	t7,v0,0x4
     af0:	11e00026 	beqz	t7,b8c <func_80A5A658+0x164>
     af4:	30490002 	andi	t1,v0,0x2
     af8:	8f021c44 	lw	v0,7236(t8)
     afc:	27b1004c 	addiu	s1,sp,76
     b00:	02202025 	move	a0,s1
     b04:	c4500a40 	lwc1	$f16,2624(v0)
     b08:	27a50034 	addiu	a1,sp,52
     b0c:	46008487 	neg.s	$f18,$f16
     b10:	e7b20034 	swc1	$f18,52(sp)
     b14:	c4440a44 	lwc1	$f4,2628(v0)
     b18:	46002187 	neg.s	$f6,$f4
     b1c:	e7a60038 	swc1	$f6,56(sp)
     b20:	c4480a48 	lwc1	$f8,2632(v0)
     b24:	46004287 	neg.s	$f10,$f8
     b28:	0c000000 	jal	0 <func_80A59C30>
     b2c:	e7aa003c 	swc1	$f10,60(sp)
     b30:	2606005c 	addiu	a2,s0,92
     b34:	8cc80000 	lw	t0,0(a2)
     b38:	27a40040 	addiu	a0,sp,64
     b3c:	02202825 	move	a1,s1
     b40:	ac880000 	sw	t0,0(a0)
     b44:	8cd90004 	lw	t9,4(a2)
     b48:	ac990004 	sw	t9,4(a0)
     b4c:	8cc80008 	lw	t0,8(a2)
     b50:	0c000000 	jal	0 <func_80A59C30>
     b54:	ac880008 	sw	t0,8(a0)
     b58:	3c013f00 	lui	at,0x3f00
     b5c:	44819000 	mtc1	at,$f18
     b60:	c6100238 	lwc1	$f16,568(s0)
     b64:	c60c0064 	lwc1	$f12,100(s0)
     b68:	c60e005c 	lwc1	$f14,92(s0)
     b6c:	46128102 	mul.s	$f4,$f16,$f18
     b70:	0c000000 	jal	0 <func_80A59C30>
     b74:	e6040068 	swc1	$f4,104(s0)
     b78:	a6020032 	sh	v0,50(s0)
     b7c:	0c000000 	jal	0 <func_80A59C30>
     b80:	02002025 	move	a0,s0
     b84:	10000017 	b	be4 <func_80A5A658+0x1bc>
     b88:	8fbf0024 	lw	ra,36(sp)
     b8c:	11200006 	beqz	t1,ba8 <func_80A5A658+0x180>
     b90:	02002025 	move	a0,s0
     b94:	e6000068 	swc1	$f0,104(s0)
     b98:	0c000000 	jal	0 <func_80A59C30>
     b9c:	e6000060 	swc1	$f0,96(s0)
     ba0:	10000010 	b	be4 <func_80A5A658+0x1bc>
     ba4:	8fbf0024 	lw	ra,36(sp)
     ba8:	860a0228 	lh	t2,552(s0)
     bac:	02002025 	move	a0,s0
     bb0:	1d400005 	bgtz	t2,bc8 <func_80A5A658+0x1a0>
     bb4:	00000000 	nop
     bb8:	0c000000 	jal	0 <func_80A59C30>
     bbc:	02002025 	move	a0,s0
     bc0:	10000008 	b	be4 <func_80A5A658+0x1bc>
     bc4:	8fbf0024 	lw	ra,36(sp)
     bc8:	0c000000 	jal	0 <func_80A59C30>
     bcc:	8fa50074 	lw	a1,116(sp)
     bd0:	52200004 	beqzl	s1,be4 <func_80A5A658+0x1bc>
     bd4:	8fbf0024 	lw	ra,36(sp)
     bd8:	0c000000 	jal	0 <func_80A59C30>
     bdc:	02002025 	move	a0,s0
     be0:	8fbf0024 	lw	ra,36(sp)
     be4:	8fb0001c 	lw	s0,28(sp)
     be8:	8fb10020 	lw	s1,32(sp)
     bec:	03e00008 	jr	ra
     bf0:	27bd0070 	addiu	sp,sp,112

00000bf4 <func_80A5A824>:
     bf4:	44800000 	mtc1	zero,$f0
     bf8:	a4800034 	sh	zero,52(a0)
     bfc:	84820034 	lh	v0,52(a0)
     c00:	3c0e0000 	lui	t6,0x0
     c04:	25ce0000 	addiu	t6,t6,0
     c08:	240f0064 	li	t7,100
     c0c:	ac8e014c 	sw	t6,332(a0)
     c10:	a48f0228 	sh	t7,552(a0)
     c14:	e4800068 	swc1	$f0,104(a0)
     c18:	e4800064 	swc1	$f0,100(a0)
     c1c:	e4800060 	swc1	$f0,96(a0)
     c20:	e480005c 	swc1	$f0,92(a0)
     c24:	a4820032 	sh	v0,50(a0)
     c28:	03e00008 	jr	ra
     c2c:	a4820030 	sh	v0,48(a0)

00000c30 <func_80A5A860>:
     c30:	27bdffc0 	addiu	sp,sp,-64
     c34:	afb00020 	sw	s0,32(sp)
     c38:	00808025 	move	s0,a0
     c3c:	afbf0024 	sw	ra,36(sp)
     c40:	afa50044 	sw	a1,68(sp)
     c44:	8605008a 	lh	a1,138(s0)
     c48:	24840032 	addiu	a0,a0,50
     c4c:	0c000000 	jal	0 <func_80A59C30>
     c50:	24060300 	li	a2,768
     c54:	3c063dcc 	lui	a2,0x3dcc
     c58:	34c6cccd 	ori	a2,a2,0xcccd
     c5c:	26040068 	addiu	a0,s0,104
     c60:	0c000000 	jal	0 <func_80A59C30>
     c64:	3c054040 	lui	a1,0x4040
     c68:	c6040094 	lwc1	$f4,148(s0)
     c6c:	3c014120 	lui	at,0x4120
     c70:	44814000 	mtc1	at,$f8
     c74:	46002187 	neg.s	$f6,$f4
     c78:	3c010000 	lui	at,0x0
     c7c:	4608303c 	c.lt.s	$f6,$f8
     c80:	00000000 	nop
     c84:	45000005 	bc1f	c9c <func_80A5A860+0x6c>
     c88:	00000000 	nop
     c8c:	3c010000 	lui	at,0x0
     c90:	c42a0000 	lwc1	$f10,0(at)
     c94:	10000003 	b	ca4 <func_80A5A860+0x74>
     c98:	e60a006c 	swc1	$f10,108(s0)
     c9c:	c4300000 	lwc1	$f16,0(at)
     ca0:	e610006c 	swc1	$f16,108(s0)
     ca4:	0c000000 	jal	0 <func_80A59C30>
     ca8:	02002025 	move	a0,s0
     cac:	3c013f80 	lui	at,0x3f80
     cb0:	44811000 	mtc1	at,$f2
     cb4:	c6000060 	lwc1	$f0,96(s0)
     cb8:	3c010000 	lui	at,0x0
     cbc:	4600103c 	c.lt.s	$f2,$f0
     cc0:	00000000 	nop
     cc4:	45000003 	bc1f	cd4 <func_80A5A860+0xa4>
     cc8:	00000000 	nop
     ccc:	e6020060 	swc1	$f2,96(s0)
     cd0:	c6000060 	lwc1	$f0,96(s0)
     cd4:	c4320000 	lwc1	$f18,0(at)
     cd8:	02002025 	move	a0,s0
     cdc:	46120102 	mul.s	$f4,$f0,$f18
     ce0:	0c000000 	jal	0 <func_80A59C30>
     ce4:	e6040060 	swc1	$f4,96(s0)
     ce8:	44803000 	mtc1	zero,$f6
     cec:	240e001d 	li	t6,29
     cf0:	afae0014 	sw	t6,20(sp)
     cf4:	8fa40044 	lw	a0,68(sp)
     cf8:	02002825 	move	a1,s0
     cfc:	3c0640e0 	lui	a2,0x40e0
     d00:	3c074120 	lui	a3,0x4120
     d04:	0c000000 	jal	0 <func_80A59C30>
     d08:	e7a60010 	swc1	$f6,16(sp)
     d0c:	92020160 	lbu	v0,352(s0)
     d10:	8fb80044 	lw	t8,68(sp)
     d14:	27a50030 	addiu	a1,sp,48
     d18:	304f0004 	andi	t7,v0,0x4
     d1c:	11e00010 	beqz	t7,d60 <func_80A5A860+0x130>
     d20:	304c0002 	andi	t4,v0,0x2
     d24:	8f021c44 	lw	v0,7236(t8)
     d28:	00003025 	move	a2,zero
     d2c:	0c000000 	jal	0 <func_80A59C30>
     d30:	24440a20 	addiu	a0,v0,2592
     d34:	87b90032 	lh	t9,50(sp)
     d38:	86090032 	lh	t1,50(s0)
     d3c:	34018000 	li	at,0x8000
     d40:	00194040 	sll	t0,t9,0x1
     d44:	01095023 	subu	t2,t0,t1
     d48:	01415821 	addu	t3,t2,at
     d4c:	a60b0032 	sh	t3,50(s0)
     d50:	0c000000 	jal	0 <func_80A59C30>
     d54:	02002025 	move	a0,s0
     d58:	1000001e 	b	dd4 <func_80A5A860+0x1a4>
     d5c:	8fbf0024 	lw	ra,36(sp)
     d60:	1180000d 	beqz	t4,d98 <func_80A5A860+0x168>
     d64:	3c010000 	lui	at,0x0
     d68:	c4200000 	lwc1	$f0,0(at)
     d6c:	c6080068 	lwc1	$f8,104(s0)
     d70:	c6100060 	lwc1	$f16,96(s0)
     d74:	02002025 	move	a0,s0
     d78:	46004282 	mul.s	$f10,$f8,$f0
     d7c:	00000000 	nop
     d80:	46008482 	mul.s	$f18,$f16,$f0
     d84:	e60a0068 	swc1	$f10,104(s0)
     d88:	0c000000 	jal	0 <func_80A59C30>
     d8c:	e6120060 	swc1	$f18,96(s0)
     d90:	10000010 	b	dd4 <func_80A5A860+0x1a4>
     d94:	8fbf0024 	lw	ra,36(sp)
     d98:	960d0088 	lhu	t5,136(s0)
     d9c:	31ae0008 	andi	t6,t5,0x8
     da0:	15c00005 	bnez	t6,db8 <func_80A5A860+0x188>
     da4:	00000000 	nop
     da8:	860f0228 	lh	t7,552(s0)
     dac:	02002025 	move	a0,s0
     db0:	1de00005 	bgtz	t7,dc8 <func_80A5A860+0x198>
     db4:	00000000 	nop
     db8:	0c000000 	jal	0 <func_80A59C30>
     dbc:	02002025 	move	a0,s0
     dc0:	10000004 	b	dd4 <func_80A5A860+0x1a4>
     dc4:	8fbf0024 	lw	ra,36(sp)
     dc8:	0c000000 	jal	0 <func_80A59C30>
     dcc:	8fa50044 	lw	a1,68(sp)
     dd0:	8fbf0024 	lw	ra,36(sp)
     dd4:	8fb00020 	lw	s0,32(sp)
     dd8:	27bd0040 	addiu	sp,sp,64
     ddc:	03e00008 	jr	ra
     de0:	00000000 	nop

00000de4 <func_80A5AA14>:
     de4:	3c0e0000 	lui	t6,0x0
     de8:	25ce0000 	addiu	t6,t6,0
     dec:	03e00008 	jr	ra
     df0:	ac8e014c 	sw	t6,332(a0)

00000df4 <func_80A5AA24>:
     df4:	27bdffd0 	addiu	sp,sp,-48
     df8:	afb00020 	sw	s0,32(sp)
     dfc:	afa50034 	sw	a1,52(sp)
     e00:	00808025 	move	s0,a0
     e04:	afbf0024 	sw	ra,36(sp)
     e08:	3c0538d1 	lui	a1,0x38d1
     e0c:	3c06391d 	lui	a2,0x391d
     e10:	34c64952 	ori	a2,a2,0x4952
     e14:	34a5b717 	ori	a1,a1,0xb717
     e18:	0c000000 	jal	0 <func_80A59C30>
     e1c:	24840050 	addiu	a0,a0,80
     e20:	afa20028 	sw	v0,40(sp)
     e24:	c6000050 	lwc1	$f0,80(s0)
     e28:	02002025 	move	a0,s0
     e2c:	e6000054 	swc1	$f0,84(s0)
     e30:	0c000000 	jal	0 <func_80A59C30>
     e34:	e6000058 	swc1	$f0,88(s0)
     e38:	44802000 	mtc1	zero,$f4
     e3c:	240e001d 	li	t6,29
     e40:	afae0014 	sw	t6,20(sp)
     e44:	8fa40034 	lw	a0,52(sp)
     e48:	02002825 	move	a1,s0
     e4c:	3c0640e0 	lui	a2,0x40e0
     e50:	3c074120 	lui	a3,0x4120
     e54:	0c000000 	jal	0 <func_80A59C30>
     e58:	e7a40010 	swc1	$f4,16(sp)
     e5c:	8faf0028 	lw	t7,40(sp)
     e60:	51e00004 	beqzl	t7,e74 <func_80A5AA24+0x80>
     e64:	8fbf0024 	lw	ra,36(sp)
     e68:	0c000000 	jal	0 <func_80A59C30>
     e6c:	02002025 	move	a0,s0
     e70:	8fbf0024 	lw	ra,36(sp)
     e74:	8fb00020 	lw	s0,32(sp)
     e78:	27bd0030 	addiu	sp,sp,48
     e7c:	03e00008 	jr	ra
     e80:	00000000 	nop

00000e84 <EnHonotrap_Update>:
     e84:	27bdffd8 	addiu	sp,sp,-40
     e88:	afbf0024 	sw	ra,36(sp)
     e8c:	afb00020 	sw	s0,32(sp)
     e90:	afa5002c 	sw	a1,44(sp)
     e94:	84820228 	lh	v0,552(a0)
     e98:	00808025 	move	s0,a0
     e9c:	18400002 	blez	v0,ea8 <EnHonotrap_Update+0x24>
     ea0:	244effff 	addiu	t6,v0,-1
     ea4:	a48e0228 	sh	t6,552(a0)
     ea8:	860f001c 	lh	t7,28(s0)
     eac:	55e0000a 	bnezl	t7,ed8 <EnHonotrap_Update+0x54>
     eb0:	8619023c 	lh	t9,572(s0)
     eb4:	8e02011c 	lw	v0,284(s0)
     eb8:	5040001a 	beqzl	v0,f24 <EnHonotrap_Update+0xa0>
     ebc:	8e19014c 	lw	t9,332(s0)
     ec0:	8c580130 	lw	t8,304(v0)
     ec4:	57000017 	bnezl	t8,f24 <EnHonotrap_Update+0xa0>
     ec8:	8e19014c 	lw	t9,332(s0)
     ecc:	10000014 	b	f20 <EnHonotrap_Update+0x9c>
     ed0:	ae00011c 	sw	zero,284(s0)
     ed4:	8619023c 	lh	t9,572(s0)
     ed8:	a2000240 	sb	zero,576(s0)
     edc:	27280640 	addiu	t0,t9,1600
     ee0:	a608023c 	sh	t0,572(s0)
     ee4:	0c000000 	jal	0 <func_80A59C30>
     ee8:	8604023c 	lh	a0,572(s0)
     eec:	3c01447a 	lui	at,0x447a
     ef0:	44812000 	mtc1	at,$f4
     ef4:	3c014416 	lui	at,0x4416
     ef8:	44814000 	mtc1	at,$f8
     efc:	46040182 	mul.s	$f6,$f0,$f4
     f00:	02002025 	move	a0,s0
     f04:	3c0540a0 	lui	a1,0x40a0
     f08:	46083280 	add.s	$f10,$f6,$f8
     f0c:	0c000000 	jal	0 <func_80A59C30>
     f10:	e60a00bc 	swc1	$f10,188(s0)
     f14:	02002025 	move	a0,s0
     f18:	0c000000 	jal	0 <func_80A59C30>
     f1c:	2405205b 	li	a1,8283
     f20:	8e19014c 	lw	t9,332(s0)
     f24:	02002025 	move	a0,s0
     f28:	8fa5002c 	lw	a1,44(sp)
     f2c:	0320f809 	jalr	t9
     f30:	00000000 	nop
     f34:	8609001c 	lh	t1,28(s0)
     f38:	55200020 	bnezl	t1,fbc <EnHonotrap_Update+0x138>
     f3c:	8fbf0024 	lw	ra,36(sp)
     f40:	92020161 	lbu	v0,353(s0)
     f44:	8fa4002c 	lw	a0,44(sp)
     f48:	26050024 	addiu	a1,s0,36
     f4c:	304a0002 	andi	t2,v0,0x2
     f50:	1140000d 	beqz	t2,f88 <EnHonotrap_Update+0x104>
     f54:	3c060000 	lui	a2,0x0
     f58:	3c070000 	lui	a3,0x0
     f5c:	240b000f 	li	t3,15
     f60:	240c0008 	li	t4,8
     f64:	afac0014 	sw	t4,20(sp)
     f68:	afab0010 	sw	t3,16(sp)
     f6c:	24e70000 	addiu	a3,a3,0
     f70:	0c000000 	jal	0 <func_80A59C30>
     f74:	24c60000 	addiu	a2,a2,0
     f78:	0c000000 	jal	0 <func_80A59C30>
     f7c:	02002025 	move	a0,s0
     f80:	1000000e 	b	fbc <EnHonotrap_Update+0x138>
     f84:	8fbf0024 	lw	ra,36(sp)
     f88:	860d022a 	lh	t5,554(s0)
     f8c:	304efffd 	andi	t6,v0,0xfffd
     f90:	26060150 	addiu	a2,s0,336
     f94:	29a10003 	slti	at,t5,3
     f98:	50200008 	beqzl	at,fbc <EnHonotrap_Update+0x138>
     f9c:	8fbf0024 	lw	ra,36(sp)
     fa0:	a20e0161 	sb	t6,353(s0)
     fa4:	8fa4002c 	lw	a0,44(sp)
     fa8:	3c010001 	lui	at,0x1
     fac:	34211e60 	ori	at,at,0x1e60
     fb0:	0c000000 	jal	0 <func_80A59C30>
     fb4:	00812821 	addu	a1,a0,at
     fb8:	8fbf0024 	lw	ra,36(sp)
     fbc:	8fb00020 	lw	s0,32(sp)
     fc0:	27bd0028 	addiu	sp,sp,40
     fc4:	03e00008 	jr	ra
     fc8:	00000000 	nop

00000fcc <func_80A5ABFC>:
     fcc:	27bdffb8 	addiu	sp,sp,-72
     fd0:	afbf001c 	sw	ra,28(sp)
     fd4:	afb00018 	sw	s0,24(sp)
     fd8:	afa40048 	sw	a0,72(sp)
     fdc:	afa5004c 	sw	a1,76(sp)
     fe0:	8ca50000 	lw	a1,0(a1)
     fe4:	3c060000 	lui	a2,0x0
     fe8:	24c60000 	addiu	a2,a2,0
     fec:	27a40030 	addiu	a0,sp,48
     ff0:	240703d6 	li	a3,982
     ff4:	0c000000 	jal	0 <func_80A59C30>
     ff8:	00a08025 	move	s0,a1
     ffc:	8faf004c 	lw	t7,76(sp)
    1000:	0c000000 	jal	0 <func_80A59C30>
    1004:	8de40000 	lw	a0,0(t7)
    1008:	8e0202c0 	lw	v0,704(s0)
    100c:	3c19db06 	lui	t9,0xdb06
    1010:	37390020 	ori	t9,t9,0x20
    1014:	24580008 	addiu	t8,v0,8
    1018:	ae1802c0 	sw	t8,704(s0)
    101c:	ac590000 	sw	t9,0(v0)
    1020:	8fa80048 	lw	t0,72(sp)
    1024:	3c040000 	lui	a0,0x0
    1028:	3c0f0000 	lui	t7,0x0
    102c:	8509022a 	lh	t1,554(t0)
    1030:	3c0100ff 	lui	at,0xff
    1034:	3421ffff 	ori	at,at,0xffff
    1038:	00095080 	sll	t2,t1,0x2
    103c:	008a2021 	addu	a0,a0,t2
    1040:	8c840000 	lw	a0,0(a0)
    1044:	3c09da38 	lui	t1,0xda38
    1048:	35290003 	ori	t1,t1,0x3
    104c:	00046100 	sll	t4,a0,0x4
    1050:	000c6f02 	srl	t5,t4,0x1c
    1054:	000d7080 	sll	t6,t5,0x2
    1058:	01ee7821 	addu	t7,t7,t6
    105c:	8def0000 	lw	t7,0(t7)
    1060:	00815824 	and	t3,a0,at
    1064:	3c018000 	lui	at,0x8000
    1068:	016fc021 	addu	t8,t3,t7
    106c:	0301c821 	addu	t9,t8,at
    1070:	ac590004 	sw	t9,4(v0)
    1074:	8e0202c0 	lw	v0,704(s0)
    1078:	3c050000 	lui	a1,0x0
    107c:	24a50000 	addiu	a1,a1,0
    1080:	24480008 	addiu	t0,v0,8
    1084:	ae0802c0 	sw	t0,704(s0)
    1088:	ac490000 	sw	t1,0(v0)
    108c:	8faa004c 	lw	t2,76(sp)
    1090:	240603db 	li	a2,987
    1094:	8d440000 	lw	a0,0(t2)
    1098:	0c000000 	jal	0 <func_80A59C30>
    109c:	afa20028 	sw	v0,40(sp)
    10a0:	8fa30028 	lw	v1,40(sp)
    10a4:	3c0e0500 	lui	t6,0x500
    10a8:	25ce6810 	addiu	t6,t6,26640
    10ac:	ac620004 	sw	v0,4(v1)
    10b0:	8e0202c0 	lw	v0,704(s0)
    10b4:	3c0dde00 	lui	t5,0xde00
    10b8:	3c060000 	lui	a2,0x0
    10bc:	244c0008 	addiu	t4,v0,8
    10c0:	ae0c02c0 	sw	t4,704(s0)
    10c4:	ac4e0004 	sw	t6,4(v0)
    10c8:	ac4d0000 	sw	t5,0(v0)
    10cc:	8fab004c 	lw	t3,76(sp)
    10d0:	24c60000 	addiu	a2,a2,0
    10d4:	27a40030 	addiu	a0,sp,48
    10d8:	240703df 	li	a3,991
    10dc:	0c000000 	jal	0 <func_80A59C30>
    10e0:	8d650000 	lw	a1,0(t3)
    10e4:	8fbf001c 	lw	ra,28(sp)
    10e8:	8fb00018 	lw	s0,24(sp)
    10ec:	27bd0048 	addiu	sp,sp,72
    10f0:	03e00008 	jr	ra
    10f4:	00000000 	nop

000010f8 <func_80A5AD28>:
    10f8:	27bdff80 	addiu	sp,sp,-128
    10fc:	afb20040 	sw	s2,64(sp)
    1100:	00a09025 	move	s2,a1
    1104:	afbf0044 	sw	ra,68(sp)
    1108:	afb1003c 	sw	s1,60(sp)
    110c:	afb00038 	sw	s0,56(sp)
    1110:	8ca50000 	lw	a1,0(a1)
    1114:	00808825 	move	s1,a0
    1118:	3c060000 	lui	a2,0x0
    111c:	24c60000 	addiu	a2,a2,0
    1120:	27a40064 	addiu	a0,sp,100
    1124:	240703e8 	li	a3,1000
    1128:	0c000000 	jal	0 <func_80A59C30>
    112c:	00a08025 	move	s0,a1
    1130:	0c000000 	jal	0 <func_80A59C30>
    1134:	8e440000 	lw	a0,0(s2)
    1138:	862e023e 	lh	t6,574(s1)
    113c:	3c09db06 	lui	t1,0xdb06
    1140:	35290020 	ori	t1,t1,0x20
    1144:	25cfffec 	addiu	t7,t6,-20
    1148:	a62f023e 	sh	t7,574(s1)
    114c:	8638023e 	lh	t8,574(s1)
    1150:	240a0020 	li	t2,32
    1154:	240b0040 	li	t3,64
    1158:	331901ff 	andi	t9,t8,0x1ff
    115c:	a639023e 	sh	t9,574(s1)
    1160:	8e0202d0 	lw	v0,720(s0)
    1164:	240c0001 	li	t4,1
    1168:	240f0080 	li	t7,128
    116c:	24480008 	addiu	t0,v0,8
    1170:	ae0802d0 	sw	t0,720(s0)
    1174:	ac490000 	sw	t1,0(v0)
    1178:	8e440000 	lw	a0,0(s2)
    117c:	afa0001c 	sw	zero,28(sp)
    1180:	afac0018 	sw	t4,24(sp)
    1184:	afab0014 	sw	t3,20(sp)
    1188:	afaa0010 	sw	t2,16(sp)
    118c:	862d023e 	lh	t5,574(s1)
    1190:	240e0020 	li	t6,32
    1194:	afae0024 	sw	t6,36(sp)
    1198:	afaf0028 	sw	t7,40(sp)
    119c:	00002825 	move	a1,zero
    11a0:	00003025 	move	a2,zero
    11a4:	00003825 	move	a3,zero
    11a8:	afa20060 	sw	v0,96(sp)
    11ac:	0c000000 	jal	0 <func_80A59C30>
    11b0:	afad0020 	sw	t5,32(sp)
    11b4:	8fa30060 	lw	v1,96(sp)
    11b8:	3c19fa00 	lui	t9,0xfa00
    11bc:	3c08ffc8 	lui	t0,0xffc8
    11c0:	ac620004 	sw	v0,4(v1)
    11c4:	8e0202d0 	lw	v0,720(s0)
    11c8:	350800ff 	ori	t0,t0,0xff
    11cc:	37398080 	ori	t9,t9,0x8080
    11d0:	24580008 	addiu	t8,v0,8
    11d4:	ae1802d0 	sw	t8,720(s0)
    11d8:	ac480004 	sw	t0,4(v0)
    11dc:	ac590000 	sw	t9,0(v0)
    11e0:	8e0202d0 	lw	v0,720(s0)
    11e4:	3c0afb00 	lui	t2,0xfb00
    11e8:	3c0bff00 	lui	t3,0xff00
    11ec:	24490008 	addiu	t1,v0,8
    11f0:	ae0902d0 	sw	t1,720(s0)
    11f4:	ac4b0004 	sw	t3,4(v0)
    11f8:	ac4a0000 	sw	t2,0(v0)
    11fc:	864c07a0 	lh	t4,1952(s2)
    1200:	000c6880 	sll	t5,t4,0x2
    1204:	024d7021 	addu	t6,s2,t5
    1208:	0c000000 	jal	0 <func_80A59C30>
    120c:	8dc40790 	lw	a0,1936(t6)
    1210:	862f00b6 	lh	t7,182(s1)
    1214:	34018000 	li	at,0x8000
    1218:	24050001 	li	a1,1
    121c:	004fc023 	subu	t8,v0,t7
    1220:	0301c821 	addu	t9,t8,at
    1224:	00194400 	sll	t0,t9,0x10
    1228:	00084c03 	sra	t1,t0,0x10
    122c:	44892000 	mtc1	t1,$f4
    1230:	3c010000 	lui	at,0x0
    1234:	c4280000 	lwc1	$f8,0(at)
    1238:	468021a0 	cvt.s.w	$f6,$f4
    123c:	46083302 	mul.s	$f12,$f6,$f8
    1240:	0c000000 	jal	0 <func_80A59C30>
    1244:	00000000 	nop
    1248:	8e0202d0 	lw	v0,720(s0)
    124c:	3c0bda38 	lui	t3,0xda38
    1250:	356b0003 	ori	t3,t3,0x3
    1254:	244a0008 	addiu	t2,v0,8
    1258:	ae0a02d0 	sw	t2,720(s0)
    125c:	3c050000 	lui	a1,0x0
    1260:	ac4b0000 	sw	t3,0(v0)
    1264:	8e440000 	lw	a0,0(s2)
    1268:	24a50000 	addiu	a1,a1,0
    126c:	24060400 	li	a2,1024
    1270:	0c000000 	jal	0 <func_80A59C30>
    1274:	00408825 	move	s1,v0
    1278:	ae220004 	sw	v0,4(s1)
    127c:	8e0202d0 	lw	v0,720(s0)
    1280:	3c0e0405 	lui	t6,0x405
    1284:	25ced4e0 	addiu	t6,t6,-11040
    1288:	244c0008 	addiu	t4,v0,8
    128c:	ae0c02d0 	sw	t4,720(s0)
    1290:	3c0dde00 	lui	t5,0xde00
    1294:	3c060000 	lui	a2,0x0
    1298:	ac4d0000 	sw	t5,0(v0)
    129c:	ac4e0004 	sw	t6,4(v0)
    12a0:	8e450000 	lw	a1,0(s2)
    12a4:	24c60000 	addiu	a2,a2,0
    12a8:	27a40064 	addiu	a0,sp,100
    12ac:	0c000000 	jal	0 <func_80A59C30>
    12b0:	24070404 	li	a3,1028
    12b4:	8fbf0044 	lw	ra,68(sp)
    12b8:	8fb00038 	lw	s0,56(sp)
    12bc:	8fb1003c 	lw	s1,60(sp)
    12c0:	8fb20040 	lw	s2,64(sp)
    12c4:	03e00008 	jr	ra
    12c8:	27bd0080 	addiu	sp,sp,128

000012cc <EnHonotrap_Draw>:
    12cc:	27bdffe8 	addiu	sp,sp,-24
    12d0:	afbf0014 	sw	ra,20(sp)
    12d4:	8482001c 	lh	v0,28(a0)
    12d8:	24010001 	li	at,1
    12dc:	10400007 	beqz	v0,12fc <EnHonotrap_Draw+0x30>
    12e0:	00000000 	nop
    12e4:	10410009 	beq	v0,at,130c <EnHonotrap_Draw+0x40>
    12e8:	24010002 	li	at,2
    12ec:	10410007 	beq	v0,at,130c <EnHonotrap_Draw+0x40>
    12f0:	00000000 	nop
    12f4:	10000008 	b	1318 <EnHonotrap_Draw+0x4c>
    12f8:	8fbf0014 	lw	ra,20(sp)
    12fc:	0c000000 	jal	0 <func_80A59C30>
    1300:	00000000 	nop
    1304:	10000004 	b	1318 <EnHonotrap_Draw+0x4c>
    1308:	8fbf0014 	lw	ra,20(sp)
    130c:	0c000000 	jal	0 <func_80A59C30>
    1310:	00000000 	nop
    1314:	8fbf0014 	lw	ra,20(sp)
    1318:	27bd0018 	addiu	sp,sp,24
    131c:	03e00008 	jr	ra
    1320:	00000000 	nop
	...
