
build/src/overlays/actors/ovl_Demo_Kekkai/z_demo_kekkai.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8098CFD0>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	04800004 	bltz	a0,1c <func_8098CFD0+0x1c>
       c:	00802825 	move	a1,a0
      10:	28810007 	slti	at,a0,7
      14:	14200003 	bnez	at,24 <func_8098CFD0+0x24>
      18:	00057080 	sll	t6,a1,0x2
      1c:	10000005 	b	34 <func_8098CFD0+0x34>
      20:	24020001 	li	v0,1
      24:	3c040000 	lui	a0,0x0
      28:	008e2021 	addu	a0,a0,t6
      2c:	0c000000 	jal	0 <func_8098CFD0>
      30:	8c840000 	lw	a0,0(a0)
      34:	8fbf0014 	lw	ra,20(sp)
      38:	27bd0018 	addiu	sp,sp,24
      3c:	03e00008 	jr	ra
      40:	00000000 	nop

00000044 <DemoKekkai_Init>:
      44:	27bdffd0 	addiu	sp,sp,-48
      48:	3c013f80 	lui	at,0x3f80
      4c:	44812000 	mtc1	at,$f4
      50:	afbf001c 	sw	ra,28(sp)
      54:	afb00018 	sw	s0,24(sp)
      58:	afa50034 	sw	a1,52(sp)
      5c:	3c053dcc 	lui	a1,0x3dcc
      60:	00808025 	move	s0,a0
      64:	a48001f6 	sh	zero,502(a0)
      68:	34a5cccd 	ori	a1,a1,0xcccd
      6c:	0c000000 	jal	0 <func_8098CFD0>
      70:	e48401e4 	swc1	$f4,484(a0)
      74:	240e00ff 	li	t6,255
      78:	a20e00ae 	sb	t6,174(s0)
      7c:	2605014c 	addiu	a1,s0,332
      80:	afa50020 	sw	a1,32(sp)
      84:	0c000000 	jal	0 <func_8098CFD0>
      88:	8fa40034 	lw	a0,52(sp)
      8c:	3c070000 	lui	a3,0x0
      90:	24e70000 	addiu	a3,a3,0
      94:	8fa40034 	lw	a0,52(sp)
      98:	8fa50020 	lw	a1,32(sp)
      9c:	0c000000 	jal	0 <func_8098CFD0>
      a0:	02003025 	move	a2,s0
      a4:	26050198 	addiu	a1,s0,408
      a8:	afa50024 	sw	a1,36(sp)
      ac:	0c000000 	jal	0 <func_8098CFD0>
      b0:	8fa40034 	lw	a0,52(sp)
      b4:	3c070000 	lui	a3,0x0
      b8:	24e70000 	addiu	a3,a3,0
      bc:	8fa40034 	lw	a0,52(sp)
      c0:	8fa50024 	lw	a1,36(sp)
      c4:	0c000000 	jal	0 <func_8098CFD0>
      c8:	02003025 	move	a2,s0
      cc:	02002025 	move	a0,s0
      d0:	0c000000 	jal	0 <func_8098CFD0>
      d4:	8fa50020 	lw	a1,32(sp)
      d8:	02002025 	move	a0,s0
      dc:	0c000000 	jal	0 <func_8098CFD0>
      e0:	8fa50024 	lw	a1,36(sp)
      e4:	8604001c 	lh	a0,28(s0)
      e8:	3c013f80 	lui	at,0x3f80
      ec:	44810000 	mtc1	at,$f0
      f0:	44803000 	mtc1	zero,$f6
      f4:	2c810007 	sltiu	at,a0,7
      f8:	a60001f4 	sh	zero,500(s0)
      fc:	e60001f0 	swc1	$f0,496(s0)
     100:	10200049 	beqz	at,228 <L8098D148+0xb0>
     104:	e60601ec 	swc1	$f6,492(s0)
     108:	00047880 	sll	t7,a0,0x2
     10c:	3c010000 	lui	at,0x0
     110:	002f0821 	addu	at,at,t7
     114:	8c2f0000 	lw	t7,0(at)
     118:	01e00008 	jr	t7
     11c:	00000000 	nop

00000120 <L8098D0F0>:
     120:	3c180000 	lui	t8,0x0
     124:	27180000 	addiu	t8,t8,0
     128:	ae1801f8 	sw	t8,504(s0)
     12c:	3c010000 	lui	at,0x0
     130:	c42a0000 	lwc1	$f10,0(at)
     134:	c6080050 	lwc1	$f8,80(s0)
     138:	3c010000 	lui	at,0x0
     13c:	c6040054 	lwc1	$f4,84(s0)
     140:	460a4402 	mul.s	$f16,$f8,$f10
     144:	240b012c 	li	t3,300
     148:	8604001c 	lh	a0,28(s0)
     14c:	4600848d 	trunc.w.s	$f18,$f16
     150:	44089000 	mfc1	t0,$f18
     154:	00000000 	nop
     158:	a60801d8 	sh	t0,472(s0)
     15c:	c4260000 	lwc1	$f6,0(at)
     160:	a60b01dc 	sh	t3,476(s0)
     164:	46062202 	mul.s	$f8,$f4,$f6
     168:	4600428d 	trunc.w.s	$f10,$f8
     16c:	440a5000 	mfc1	t2,$f10
     170:	1000002d 	b	228 <L8098D148+0xb0>
     174:	a60a01da 	sh	t2,474(s0)

00000178 <L8098D148>:
     178:	3c053dcc 	lui	a1,0x3dcc
     17c:	e60001e4 	swc1	$f0,484(s0)
     180:	e60001e8 	swc1	$f0,488(s0)
     184:	34a5cccd 	ori	a1,a1,0xcccd
     188:	0c000000 	jal	0 <func_8098CFD0>
     18c:	02002025 	move	a0,s0
     190:	3c0142f0 	lui	at,0x42f0
     194:	44819000 	mtc1	at,$f18
     198:	c6100050 	lwc1	$f16,80(s0)
     19c:	3c0144fa 	lui	at,0x44fa
     1a0:	44815000 	mtc1	at,$f10
     1a4:	46128102 	mul.s	$f4,$f16,$f18
     1a8:	c6080054 	lwc1	$f8,84(s0)
     1ac:	3c0143a0 	lui	at,0x43a0
     1b0:	3c0c0000 	lui	t4,0x0
     1b4:	460a4402 	mul.s	$f16,$f8,$f10
     1b8:	258c0000 	addiu	t4,t4,0
     1bc:	ae0c0130 	sw	t4,304(s0)
     1c0:	3c0d0000 	lui	t5,0x0
     1c4:	25ad0000 	addiu	t5,t5,0
     1c8:	240c005f 	li	t4,95
     1cc:	4600218d 	trunc.w.s	$f6,$f4
     1d0:	c6040050 	lwc1	$f4,80(s0)
     1d4:	ae0d0134 	sw	t5,308(s0)
     1d8:	4600848d 	trunc.w.s	$f18,$f16
     1dc:	440f3000 	mfc1	t7,$f6
     1e0:	44813000 	mtc1	at,$f6
     1e4:	3c0143ff 	lui	at,0x43ff
     1e8:	44199000 	mfc1	t9,$f18
     1ec:	46062202 	mul.s	$f8,$f4,$f6
     1f0:	44819000 	mtc1	at,$f18
     1f4:	c6100054 	lwc1	$f16,84(s0)
     1f8:	a6000190 	sh	zero,400(s0)
     1fc:	a60c01dc 	sh	t4,476(s0)
     200:	46128102 	mul.s	$f4,$f16,$f18
     204:	8604001c 	lh	a0,28(s0)
     208:	a60f018c 	sh	t7,396(s0)
     20c:	a619018e 	sh	t9,398(s0)
     210:	4600428d 	trunc.w.s	$f10,$f8
     214:	4600218d 	trunc.w.s	$f6,$f4
     218:	44095000 	mfc1	t1,$f10
     21c:	440b3000 	mfc1	t3,$f6
     220:	a60901d8 	sh	t1,472(s0)
     224:	a60b01da 	sh	t3,474(s0)
     228:	0c000000 	jal	0 <func_8098CFD0>
     22c:	00000000 	nop
     230:	5040000b 	beqzl	v0,260 <L8098D148+0xe8>
     234:	8fbf001c 	lw	ra,28(sp)
     238:	860d001c 	lh	t5,28(s0)
     23c:	8faf0034 	lw	t7,52(sp)
     240:	3c010001 	lui	at,0x1
     244:	15a00003 	bnez	t5,254 <L8098D148+0xdc>
     248:	002f0821 	addu	at,at,t7
     24c:	240e0001 	li	t6,1
     250:	a02e0ae3 	sb	t6,2787(at)
     254:	0c000000 	jal	0 <func_8098CFD0>
     258:	02002025 	move	a0,s0
     25c:	8fbf001c 	lw	ra,28(sp)
     260:	8fb00018 	lw	s0,24(sp)
     264:	27bd0030 	addiu	sp,sp,48
     268:	03e00008 	jr	ra
     26c:	00000000 	nop

00000270 <DemoKekkai_Destroy>:
     270:	27bdffe8 	addiu	sp,sp,-24
     274:	afa40018 	sw	a0,24(sp)
     278:	afa5001c 	sw	a1,28(sp)
     27c:	00a02025 	move	a0,a1
     280:	8fa50018 	lw	a1,24(sp)
     284:	afbf0014 	sw	ra,20(sp)
     288:	0c000000 	jal	0 <func_8098CFD0>
     28c:	24a5014c 	addiu	a1,a1,332
     290:	8fa50018 	lw	a1,24(sp)
     294:	8fa4001c 	lw	a0,28(sp)
     298:	0c000000 	jal	0 <func_8098CFD0>
     29c:	24a50198 	addiu	a1,a1,408
     2a0:	8fbf0014 	lw	ra,20(sp)
     2a4:	27bd0018 	addiu	sp,sp,24
     2a8:	03e00008 	jr	ra
     2ac:	00000000 	nop

000002b0 <func_8098D280>:
     2b0:	27bdff60 	addiu	sp,sp,-160
     2b4:	f7be0050 	sdc1	$f30,80(sp)
     2b8:	3c014040 	lui	at,0x4040
     2bc:	4481f000 	mtc1	at,$f30
     2c0:	f7bc0048 	sdc1	$f28,72(sp)
     2c4:	3c0140e0 	lui	at,0x40e0
     2c8:	4481e000 	mtc1	at,$f28
     2cc:	f7ba0040 	sdc1	$f26,64(sp)
     2d0:	3c014100 	lui	at,0x4100
     2d4:	afbe0078 	sw	s8,120(sp)
     2d8:	afb70074 	sw	s7,116(sp)
     2dc:	afb60070 	sw	s6,112(sp)
     2e0:	afb5006c 	sw	s5,108(sp)
     2e4:	4481d000 	mtc1	at,$f26
     2e8:	afb40068 	sw	s4,104(sp)
     2ec:	afb30064 	sw	s3,100(sp)
     2f0:	afb20060 	sw	s2,96(sp)
     2f4:	f7b80038 	sdc1	$f24,56(sp)
     2f8:	3c010000 	lui	at,0x0
     2fc:	3c150000 	lui	s5,0x0
     300:	3c160000 	lui	s6,0x0
     304:	3c170000 	lui	s7,0x0
     308:	3c1e0000 	lui	s8,0x0
     30c:	00809825 	move	s3,a0
     310:	afbf007c 	sw	ra,124(sp)
     314:	afb1005c 	sw	s1,92(sp)
     318:	afb00058 	sw	s0,88(sp)
     31c:	f7b60030 	sdc1	$f22,48(sp)
     320:	f7b40028 	sdc1	$f20,40(sp)
     324:	afa500a4 	sw	a1,164(sp)
     328:	27de0000 	addiu	s8,s8,0
     32c:	26f70000 	addiu	s7,s7,0
     330:	26d60000 	addiu	s6,s6,0
     334:	26b50000 	addiu	s5,s5,0
     338:	c4380000 	lwc1	$f24,0(at)
     33c:	00009025 	move	s2,zero
     340:	27b40094 	addiu	s4,sp,148
     344:	0c000000 	jal	0 <func_8098CFD0>
     348:	4600c306 	mov.s	$f12,$f24
     34c:	4600010d 	trunc.w.s	$f4,$f0
     350:	4600c306 	mov.s	$f12,$f24
     354:	44112000 	mfc1	s1,$f4
     358:	00000000 	nop
     35c:	00118c00 	sll	s1,s1,0x10
     360:	0c000000 	jal	0 <func_8098CFD0>
     364:	00118c03 	sra	s1,s1,0x10
     368:	4600018d 	trunc.w.s	$f6,$f0
     36c:	00112400 	sll	a0,s1,0x10
     370:	00042403 	sra	a0,a0,0x10
     374:	44103000 	mfc1	s0,$f6
     378:	00000000 	nop
     37c:	00108400 	sll	s0,s0,0x10
     380:	0c000000 	jal	0 <func_8098CFD0>
     384:	00108403 	sra	s0,s0,0x10
     388:	00102400 	sll	a0,s0,0x10
     38c:	00042403 	sra	a0,a0,0x10
     390:	0c000000 	jal	0 <func_8098CFD0>
     394:	46000586 	mov.s	$f22,$f0
     398:	46000506 	mov.s	$f20,$f0
     39c:	0c000000 	jal	0 <func_8098CFD0>
     3a0:	4600d306 	mov.s	$f12,$f26
     3a4:	4616a202 	mul.s	$f8,$f20,$f22
     3a8:	3c010000 	lui	at,0x0
     3ac:	00112400 	sll	a0,s1,0x10
     3b0:	00042403 	sra	a0,a0,0x10
     3b4:	46080282 	mul.s	$f10,$f0,$f8
     3b8:	0c000000 	jal	0 <func_8098CFD0>
     3bc:	e42a0000 	swc1	$f10,0(at)
     3c0:	00102400 	sll	a0,s0,0x10
     3c4:	00042403 	sra	a0,a0,0x10
     3c8:	0c000000 	jal	0 <func_8098CFD0>
     3cc:	46000586 	mov.s	$f22,$f0
     3d0:	46000506 	mov.s	$f20,$f0
     3d4:	0c000000 	jal	0 <func_8098CFD0>
     3d8:	4600d306 	mov.s	$f12,$f26
     3dc:	4616a402 	mul.s	$f16,$f20,$f22
     3e0:	3c010000 	lui	at,0x0
     3e4:	00112400 	sll	a0,s1,0x10
     3e8:	00042403 	sra	a0,a0,0x10
     3ec:	46100482 	mul.s	$f18,$f0,$f16
     3f0:	0c000000 	jal	0 <func_8098CFD0>
     3f4:	e4320000 	swc1	$f18,0(at)
     3f8:	46000506 	mov.s	$f20,$f0
     3fc:	0c000000 	jal	0 <func_8098CFD0>
     400:	4600f306 	mov.s	$f12,$f30
     404:	46140102 	mul.s	$f4,$f0,$f20
     408:	3c010000 	lui	at,0x0
     40c:	e4240000 	swc1	$f4,0(at)
     410:	3c010000 	lui	at,0x0
     414:	c4260000 	lwc1	$f6,0(at)
     418:	3c010000 	lui	at,0x0
     41c:	c4320000 	lwc1	$f18,0(at)
     420:	461c3202 	mul.s	$f8,$f6,$f28
     424:	c66a0024 	lwc1	$f10,36(s3)
     428:	3c0141a0 	lui	at,0x41a0
     42c:	44812000 	mtc1	at,$f4
     430:	3c0142f0 	lui	at,0x42f0
     434:	46049182 	mul.s	$f6,$f18,$f4
     438:	460a4400 	add.s	$f16,$f8,$f10
     43c:	e7b00094 	swc1	$f16,148(sp)
     440:	c6680028 	lwc1	$f8,40(s3)
     444:	44818000 	mtc1	at,$f16
     448:	3c010000 	lui	at,0x0
     44c:	46083280 	add.s	$f10,$f6,$f8
     450:	c4240000 	lwc1	$f4,0(at)
     454:	3c014220 	lui	at,0x4220
     458:	44816000 	mtc1	at,$f12
     45c:	46105480 	add.s	$f18,$f10,$f16
     460:	461c2182 	mul.s	$f6,$f4,$f28
     464:	e7b20098 	swc1	$f18,152(sp)
     468:	c668002c 	lwc1	$f8,44(s3)
     46c:	46083280 	add.s	$f10,$f6,$f8
     470:	0c000000 	jal	0 <func_8098CFD0>
     474:	e7aa009c 	swc1	$f10,156(sp)
     478:	4600040d 	trunc.w.s	$f16,$f0
     47c:	24180bb8 	li	t8,3000
     480:	afb80018 	sw	t8,24(sp)
     484:	8fa400a4 	lw	a0,164(sp)
     488:	44088000 	mfc1	t0,$f16
     48c:	02802825 	move	a1,s4
     490:	02a03025 	move	a2,s5
     494:	2509002d 	addiu	t1,t0,45
     498:	afa9001c 	sw	t1,28(sp)
     49c:	02c03825 	move	a3,s6
     4a0:	afb70010 	sw	s7,16(sp)
     4a4:	0c000000 	jal	0 <func_8098CFD0>
     4a8:	afbe0014 	sw	s8,20(sp)
     4ac:	26520001 	addiu	s2,s2,1
     4b0:	24010055 	li	at,85
     4b4:	1641ffa3 	bne	s2,at,344 <func_8098D280+0x94>
     4b8:	00000000 	nop
     4bc:	8fbf007c 	lw	ra,124(sp)
     4c0:	d7b40028 	ldc1	$f20,40(sp)
     4c4:	d7b60030 	ldc1	$f22,48(sp)
     4c8:	d7b80038 	ldc1	$f24,56(sp)
     4cc:	d7ba0040 	ldc1	$f26,64(sp)
     4d0:	d7bc0048 	ldc1	$f28,72(sp)
     4d4:	d7be0050 	ldc1	$f30,80(sp)
     4d8:	8fb00058 	lw	s0,88(sp)
     4dc:	8fb1005c 	lw	s1,92(sp)
     4e0:	8fb20060 	lw	s2,96(sp)
     4e4:	8fb30064 	lw	s3,100(sp)
     4e8:	8fb40068 	lw	s4,104(sp)
     4ec:	8fb5006c 	lw	s5,108(sp)
     4f0:	8fb60070 	lw	s6,112(sp)
     4f4:	8fb70074 	lw	s7,116(sp)
     4f8:	8fbe0078 	lw	s8,120(sp)
     4fc:	03e00008 	jr	ra
     500:	27bd00a0 	addiu	sp,sp,160

00000504 <func_8098D4D4>:
     504:	27bdffe8 	addiu	sp,sp,-24
     508:	afbf0014 	sw	ra,20(sp)
     50c:	90ae1d6c 	lbu	t6,7532(a1)
     510:	00803025 	move	a2,a0
     514:	51c00038 	beqzl	t6,5f8 <func_8098D4D4+0xf4>
     518:	94cb01f6 	lhu	t3,502(a2)
     51c:	8ca21d8c 	lw	v0,7564(a1)
     520:	50400035 	beqzl	v0,5f8 <func_8098D4D4+0xf4>
     524:	94cb01f6 	lhu	t3,502(a2)
     528:	94430000 	lhu	v1,0(v0)
     52c:	24010001 	li	at,1
     530:	10610030 	beq	v1,at,5f4 <func_8098D4D4+0xf0>
     534:	24010002 	li	at,2
     538:	5461002f 	bnel	v1,at,5f8 <func_8098D4D4+0xf4>
     53c:	94cb01f6 	lhu	t3,502(a2)
     540:	948f01f6 	lhu	t7,502(a0)
     544:	2404000c 	li	a0,12
     548:	31f80001 	andi	t8,t7,0x1
     54c:	57000008 	bnezl	t8,570 <func_8098D4D4+0x6c>
     550:	3c0140e0 	lui	at,0x40e0
     554:	0c000000 	jal	0 <func_8098CFD0>
     558:	afa60018 	sw	a2,24(sp)
     55c:	8fa60018 	lw	a2,24(sp)
     560:	94d901f6 	lhu	t9,502(a2)
     564:	37280001 	ori	t0,t9,0x1
     568:	a4c801f6 	sh	t0,502(a2)
     56c:	3c0140e0 	lui	at,0x40e0
     570:	44812000 	mtc1	at,$f4
     574:	c4c001f0 	lwc1	$f0,496(a2)
     578:	3c010000 	lui	at,0x0
     57c:	4604003c 	c.lt.s	$f0,$f4
     580:	00000000 	nop
     584:	45020006 	bc1fl	5a0 <func_8098D4D4+0x9c>
     588:	94c901f4 	lhu	t1,500(a2)
     58c:	c4260000 	lwc1	$f6,0(at)
     590:	46060200 	add.s	$f8,$f0,$f6
     594:	10000017 	b	5f4 <func_8098D4D4+0xf0>
     598:	e4c801f0 	swc1	$f8,496(a2)
     59c:	94c901f4 	lhu	t1,500(a2)
     5a0:	240400c3 	li	a0,195
     5a4:	252a0001 	addiu	t2,t1,1
     5a8:	3142ffff 	andi	v0,t2,0xffff
     5ac:	28410065 	slti	at,v0,101
     5b0:	14200007 	bnez	at,5d0 <func_8098D4D4+0xcc>
     5b4:	a4ca01f4 	sh	t2,500(a2)
     5b8:	0c000000 	jal	0 <func_8098CFD0>
     5bc:	afa60018 	sw	a2,24(sp)
     5c0:	0c000000 	jal	0 <func_8098CFD0>
     5c4:	8fa40018 	lw	a0,24(sp)
     5c8:	10000012 	b	614 <func_8098D4D4+0x110>
     5cc:	8fbf0014 	lw	ra,20(sp)
     5d0:	28410029 	slti	at,v0,41
     5d4:	14200007 	bnez	at,5f4 <func_8098D4D4+0xf0>
     5d8:	3c010000 	lui	at,0x0
     5dc:	c4300000 	lwc1	$f16,0(at)
     5e0:	c4ca0050 	lwc1	$f10,80(a2)
     5e4:	46105480 	add.s	$f18,$f10,$f16
     5e8:	e4d20050 	swc1	$f18,80(a2)
     5ec:	c4c40050 	lwc1	$f4,80(a2)
     5f0:	e4c40058 	swc1	$f4,88(a2)
     5f4:	94cb01f6 	lhu	t3,502(a2)
     5f8:	00c02025 	move	a0,a2
     5fc:	316c0001 	andi	t4,t3,0x1
     600:	55800004 	bnezl	t4,614 <func_8098D4D4+0x110>
     604:	8fbf0014 	lw	ra,20(sp)
     608:	0c000000 	jal	0 <func_8098CFD0>
     60c:	240520ee 	li	a1,8430
     610:	8fbf0014 	lw	ra,20(sp)
     614:	27bd0018 	addiu	sp,sp,24
     618:	03e00008 	jr	ra
     61c:	00000000 	nop

00000620 <DemoKekkai_Update>:
     620:	27bdffc0 	addiu	sp,sp,-64
     624:	afbf002c 	sw	ra,44(sp)
     628:	afb20028 	sw	s2,40(sp)
     62c:	afb10024 	sw	s1,36(sp)
     630:	afb00020 	sw	s0,32(sp)
     634:	3c010000 	lui	at,0x0
     638:	c4240000 	lwc1	$f4,0(at)
     63c:	c48601e4 	lwc1	$f6,484(a0)
     640:	00808025 	move	s0,a0
     644:	00a08825 	move	s1,a1
     648:	4606203c 	c.lt.s	$f4,$f6
     64c:	00000000 	nop
     650:	45020027 	bc1fl	6f0 <DemoKekkai_Update+0xd0>
     654:	8e1901f8 	lw	t9,504(s0)
     658:	908e015c 	lbu	t6,348(a0)
     65c:	3c0140c0 	lui	at,0x40c0
     660:	02002825 	move	a1,s0
     664:	31cf0002 	andi	t7,t6,0x2
     668:	55e00006 	bnezl	t7,684 <DemoKekkai_Update+0x64>
     66c:	44810000 	mtc1	at,$f0
     670:	909801a8 	lbu	t8,424(a0)
     674:	33190002 	andi	t9,t8,0x2
     678:	53200008 	beqzl	t9,69c <DemoKekkai_Update+0x7c>
     67c:	3c010001 	lui	at,0x1
     680:	44810000 	mtc1	at,$f0
     684:	8607008a 	lh	a3,138(s0)
     688:	02202025 	move	a0,s1
     68c:	44060000 	mfc1	a2,$f0
     690:	0c000000 	jal	0 <func_8098CFD0>
     694:	e7a00010 	swc1	$f0,16(sp)
     698:	3c010001 	lui	at,0x1
     69c:	34211e60 	ori	at,at,0x1e60
     6a0:	02219021 	addu	s2,s1,at
     6a4:	2606014c 	addiu	a2,s0,332
     6a8:	afa60030 	sw	a2,48(sp)
     6ac:	02402825 	move	a1,s2
     6b0:	0c000000 	jal	0 <func_8098CFD0>
     6b4:	02202025 	move	a0,s1
     6b8:	8fa60030 	lw	a2,48(sp)
     6bc:	02202025 	move	a0,s1
     6c0:	0c000000 	jal	0 <func_8098CFD0>
     6c4:	02402825 	move	a1,s2
     6c8:	26060198 	addiu	a2,s0,408
     6cc:	afa60030 	sw	a2,48(sp)
     6d0:	02202025 	move	a0,s1
     6d4:	0c000000 	jal	0 <func_8098CFD0>
     6d8:	02402825 	move	a1,s2
     6dc:	8fa60030 	lw	a2,48(sp)
     6e0:	02202025 	move	a0,s1
     6e4:	0c000000 	jal	0 <func_8098CFD0>
     6e8:	02402825 	move	a1,s2
     6ec:	8e1901f8 	lw	t9,504(s0)
     6f0:	02002025 	move	a0,s0
     6f4:	02202825 	move	a1,s1
     6f8:	0320f809 	jalr	t9
     6fc:	00000000 	nop
     700:	c60801ec 	lwc1	$f8,492(s0)
     704:	c60a01f0 	lwc1	$f10,496(s0)
     708:	3c014780 	lui	at,0x4780
     70c:	44811000 	mtc1	at,$f2
     710:	460a4400 	add.s	$f16,$f8,$f10
     714:	e61001ec 	swc1	$f16,492(s0)
     718:	c60001ec 	lwc1	$f0,492(s0)
     71c:	4600103c 	c.lt.s	$f2,$f0
     720:	00000000 	nop
     724:	45020004 	bc1fl	738 <DemoKekkai_Update+0x118>
     728:	8fbf002c 	lw	ra,44(sp)
     72c:	46020481 	sub.s	$f18,$f0,$f2
     730:	e61201ec 	swc1	$f18,492(s0)
     734:	8fbf002c 	lw	ra,44(sp)
     738:	8fb00020 	lw	s0,32(sp)
     73c:	8fb10024 	lw	s1,36(sp)
     740:	8fb20028 	lw	s2,40(sp)
     744:	03e00008 	jr	ra
     748:	27bd0040 	addiu	sp,sp,64

0000074c <func_8098D71C>:
     74c:	27bdffe0 	addiu	sp,sp,-32
     750:	afbf001c 	sw	ra,28(sp)
     754:	afb00018 	sw	s0,24(sp)
     758:	afa50024 	sw	a1,36(sp)
     75c:	8498001c 	lh	t8,28(a0)
     760:	3c080000 	lui	t0,0x0
     764:	94af1d74 	lhu	t7,7540(a1)
     768:	0018c840 	sll	t9,t8,0x1
     76c:	01194021 	addu	t0,t0,t9
     770:	95080000 	lhu	t0,0(t0)
     774:	00808025 	move	s0,a0
     778:	15e80003 	bne	t7,t0,788 <func_8098D71C+0x3c>
     77c:	00000000 	nop
     780:	0c000000 	jal	0 <func_8098CFD0>
     784:	2404000a 	li	a0,10
     788:	3c010000 	lui	at,0x0
     78c:	c4220000 	lwc1	$f2,0(at)
     790:	c60001e4 	lwc1	$f0,484(s0)
     794:	24090050 	li	t1,80
     798:	4600103e 	c.le.s	$f2,$f0
     79c:	00000000 	nop
     7a0:	45020005 	bc1fl	7b8 <func_8098D71C+0x6c>
     7a4:	44803000 	mtc1	zero,$f6
     7a8:	46020101 	sub.s	$f4,$f0,$f2
     7ac:	10000004 	b	7c0 <func_8098D71C+0x74>
     7b0:	e60401e4 	swc1	$f4,484(s0)
     7b4:	44803000 	mtc1	zero,$f6
     7b8:	00000000 	nop
     7bc:	e60601e4 	swc1	$f6,484(s0)
     7c0:	960301f4 	lhu	v1,500(s0)
     7c4:	28610028 	slti	at,v1,40
     7c8:	10200014 	beqz	at,81c <func_8098D71C+0xd0>
     7cc:	00601025 	move	v0,v1
     7d0:	01235023 	subu	t2,t1,v1
     7d4:	448a4000 	mtc1	t2,$f8
     7d8:	44838000 	mtc1	v1,$f16
     7dc:	3c014f80 	lui	at,0x4f80
     7e0:	468042a0 	cvt.s.w	$f10,$f8
     7e4:	04610004 	bgez	v1,7f8 <func_8098D71C+0xac>
     7e8:	468084a0 	cvt.s.w	$f18,$f16
     7ec:	44812000 	mtc1	at,$f4
     7f0:	00000000 	nop
     7f4:	46049480 	add.s	$f18,$f18,$f4
     7f8:	46125182 	mul.s	$f6,$f10,$f18
     7fc:	3c010000 	lui	at,0x0
     800:	c4280000 	lwc1	$f8,0(at)
     804:	3c013f80 	lui	at,0x3f80
     808:	44812000 	mtc1	at,$f4
     80c:	46083402 	mul.s	$f16,$f6,$f8
     810:	46048280 	add.s	$f10,$f16,$f4
     814:	10000014 	b	868 <func_8098D71C+0x11c>
     818:	e60a01e8 	swc1	$f10,488(s0)
     81c:	28410032 	slti	at,v0,50
     820:	10200004 	beqz	at,834 <func_8098D71C+0xe8>
     824:	3c014000 	lui	at,0x4000
     828:	44819000 	mtc1	at,$f18
     82c:	1000000e 	b	868 <func_8098D71C+0x11c>
     830:	e61201e8 	swc1	$f18,488(s0)
     834:	24010032 	li	at,50
     838:	14410008 	bne	v0,at,85c <func_8098D71C+0x110>
     83c:	02002025 	move	a0,s0
     840:	0c000000 	jal	0 <func_8098CFD0>
     844:	24051842 	li	a1,6210
     848:	02002025 	move	a0,s0
     84c:	0c000000 	jal	0 <func_8098CFD0>
     850:	8fa50024 	lw	a1,36(sp)
     854:	10000005 	b	86c <func_8098D71C+0x120>
     858:	44804000 	mtc1	zero,$f8
     85c:	44803000 	mtc1	zero,$f6
     860:	00000000 	nop
     864:	e60601e8 	swc1	$f6,488(s0)
     868:	44804000 	mtc1	zero,$f8
     86c:	c61001e8 	lwc1	$f16,488(s0)
     870:	02002025 	move	a0,s0
     874:	46104032 	c.eq.s	$f8,$f16
     878:	00000000 	nop
     87c:	45030004 	bc1tl	890 <func_8098D71C+0x144>
     880:	960b01f4 	lhu	t3,500(s0)
     884:	0c000000 	jal	0 <func_8098CFD0>
     888:	240520ed 	li	a1,8429
     88c:	960b01f4 	lhu	t3,500(s0)
     890:	256c0001 	addiu	t4,t3,1
     894:	a60c01f4 	sh	t4,500(s0)
     898:	8fbf001c 	lw	ra,28(sp)
     89c:	8fb00018 	lw	s0,24(sp)
     8a0:	27bd0020 	addiu	sp,sp,32
     8a4:	03e00008 	jr	ra
     8a8:	00000000 	nop

000008ac <func_8098D87C>:
     8ac:	27bdffc8 	addiu	sp,sp,-56
     8b0:	afbf0024 	sw	ra,36(sp)
     8b4:	afb10020 	sw	s1,32(sp)
     8b8:	afb0001c 	sw	s0,28(sp)
     8bc:	908e015c 	lbu	t6,348(a0)
     8c0:	00808025 	move	s0,a0
     8c4:	00a08825 	move	s1,a1
     8c8:	31cf0002 	andi	t7,t6,0x2
     8cc:	11e00008 	beqz	t7,8f0 <func_8098D87C+0x44>
     8d0:	3c0140a0 	lui	at,0x40a0
     8d4:	44810000 	mtc1	at,$f0
     8d8:	00a02025 	move	a0,a1
     8dc:	8607008a 	lh	a3,138(s0)
     8e0:	44060000 	mfc1	a2,$f0
     8e4:	02002825 	move	a1,s0
     8e8:	0c000000 	jal	0 <func_8098CFD0>
     8ec:	e7a00010 	swc1	$f0,16(sp)
     8f0:	3c010001 	lui	at,0x1
     8f4:	34211e60 	ori	at,at,0x1e60
     8f8:	02212821 	addu	a1,s1,at
     8fc:	2606014c 	addiu	a2,s0,332
     900:	afa60028 	sw	a2,40(sp)
     904:	afa5002c 	sw	a1,44(sp)
     908:	0c000000 	jal	0 <func_8098CFD0>
     90c:	02202025 	move	a0,s1
     910:	8fa60028 	lw	a2,40(sp)
     914:	02202025 	move	a0,s1
     918:	0c000000 	jal	0 <func_8098CFD0>
     91c:	8fa5002c 	lw	a1,44(sp)
     920:	921801a9 	lbu	t8,425(s0)
     924:	33190002 	andi	t9,t8,0x2
     928:	53200026 	beqzl	t9,9c4 <func_8098D87C+0x118>
     92c:	02202025 	move	a0,s1
     930:	0c000000 	jal	0 <func_8098CFD0>
     934:	24044802 	li	a0,18434
     938:	3c040000 	lui	a0,0x0
     93c:	24840000 	addiu	a0,a0,0
     940:	0c000000 	jal	0 <func_8098CFD0>
     944:	2405023c 	li	a1,572
     948:	3c040000 	lui	a0,0x0
     94c:	3c050000 	lui	a1,0x0
     950:	24a50000 	addiu	a1,a1,0
     954:	0c000000 	jal	0 <func_8098CFD0>
     958:	24840000 	addiu	a0,a0,0
     95c:	8609001c 	lh	t1,28(s0)
     960:	3c080000 	lui	t0,0x0
     964:	25080000 	addiu	t0,t0,0
     968:	3c020000 	lui	v0,0x0
     96c:	00095080 	sll	t2,t1,0x2
     970:	ae080130 	sw	t0,304(s0)
     974:	a60001f4 	sh	zero,500(s0)
     978:	004a1021 	addu	v0,v0,t2
     97c:	8c420000 	lw	v0,0(v0)
     980:	3c0f0000 	lui	t7,0x0
     984:	3c0100ff 	lui	at,0xff
     988:	00026100 	sll	t4,v0,0x4
     98c:	000c6f02 	srl	t5,t4,0x1c
     990:	000d7080 	sll	t6,t5,0x2
     994:	01ee7821 	addu	t7,t7,t6
     998:	8def0000 	lw	t7,0(t7)
     99c:	3421ffff 	ori	at,at,0xffff
     9a0:	00415824 	and	t3,v0,at
     9a4:	3c018000 	lui	at,0x8000
     9a8:	016fc021 	addu	t8,t3,t7
     9ac:	0301c821 	addu	t9,t8,at
     9b0:	ae391d68 	sw	t9,7528(s1)
     9b4:	3c010000 	lui	at,0x0
     9b8:	24080001 	li	t0,1
     9bc:	a0281414 	sb	t0,5140(at)
     9c0:	02202025 	move	a0,s1
     9c4:	8fa5002c 	lw	a1,44(sp)
     9c8:	0c000000 	jal	0 <func_8098CFD0>
     9cc:	26060198 	addiu	a2,s0,408
     9d0:	02002025 	move	a0,s0
     9d4:	0c000000 	jal	0 <func_8098CFD0>
     9d8:	240520ed 	li	a1,8429
     9dc:	8fbf0024 	lw	ra,36(sp)
     9e0:	8fb0001c 	lw	s0,28(sp)
     9e4:	8fb10020 	lw	s1,32(sp)
     9e8:	03e00008 	jr	ra
     9ec:	27bd0038 	addiu	sp,sp,56

000009f0 <func_8098D9C0>:
     9f0:	27bdfee0 	addiu	sp,sp,-288
     9f4:	3c0f0001 	lui	t7,0x1
     9f8:	afbf003c 	sw	ra,60(sp)
     9fc:	afb00038 	sw	s0,56(sp)
     a00:	afa40120 	sw	a0,288(sp)
     a04:	afa50124 	sw	a1,292(sp)
     a08:	01e57821 	addu	t7,t7,a1
     a0c:	8def1de4 	lw	t7,7652(t7)
     a10:	3c090000 	lui	t1,0x0
     a14:	25290000 	addiu	t1,t1,0
     a18:	31f8ffff 	andi	t8,t7,0xffff
     a1c:	afb80118 	sw	t8,280(sp)
     a20:	252c0060 	addiu	t4,t1,96
     a24:	27b900b0 	addiu	t9,sp,176
     a28:	8d2b0000 	lw	t3,0(t1)
     a2c:	2529000c 	addiu	t1,t1,12
     a30:	2739000c 	addiu	t9,t9,12
     a34:	af2bfff4 	sw	t3,-12(t9)
     a38:	8d2afff8 	lw	t2,-8(t1)
     a3c:	af2afff8 	sw	t2,-8(t9)
     a40:	8d2bfffc 	lw	t3,-4(t1)
     a44:	152cfff8 	bne	t1,t4,a28 <func_8098D9C0+0x38>
     a48:	af2bfffc 	sw	t3,-4(t9)
     a4c:	8d2b0000 	lw	t3,0(t1)
     a50:	3c020600 	lui	v0,0x600
     a54:	24424fd0 	addiu	v0,v0,20432
     a58:	af2b0000 	sw	t3,0(t9)
     a5c:	952b0004 	lhu	t3,4(t1)
     a60:	00026900 	sll	t5,v0,0x4
     a64:	44802000 	mtc1	zero,$f4
     a68:	a72b0004 	sh	t3,4(t9)
     a6c:	8fa90120 	lw	t1,288(sp)
     a70:	000d7702 	srl	t6,t5,0x1c
     a74:	000e7880 	sll	t7,t6,0x2
     a78:	c52601e8 	lwc1	$f6,488(t1)
     a7c:	3c180000 	lui	t8,0x0
     a80:	030fc021 	addu	t8,t8,t7
     a84:	3c0100ff 	lui	at,0xff
     a88:	46062032 	c.eq.s	$f4,$f6
     a8c:	8f180000 	lw	t8,0(t8)
     a90:	3421ffff 	ori	at,at,0xffff
     a94:	00416024 	and	t4,v0,at
     a98:	3c018000 	lui	at,0x8000
     a9c:	030c3021 	addu	a2,t8,t4
     aa0:	45010126 	bc1t	f3c <func_8098D9C0+0x54c>
     aa4:	00c13021 	addu	a2,a2,at
     aa8:	3c01434a 	lui	at,0x434a
     aac:	44815000 	mtc1	at,$f10
     ab0:	c52801e4 	lwc1	$f8,484(t1)
     ab4:	3c0142fc 	lui	at,0x42fc
     ab8:	44813000 	mtc1	at,$f6
     abc:	460a4402 	mul.s	$f16,$f8,$f10
     ac0:	93af00b0 	lbu	t7,176(sp)
     ac4:	27a400a4 	addiu	a0,sp,164
     ac8:	24c30020 	addiu	v1,a2,32
     acc:	008fc021 	addu	t8,a0,t7
     ad0:	27a200b2 	addiu	v0,sp,178
     ad4:	27a50116 	addiu	a1,sp,278
     ad8:	4600848d 	trunc.w.s	$f18,$f16
     adc:	440b9000 	mfc1	t3,$f18
     ae0:	00000000 	nop
     ae4:	a3ab00a6 	sb	t3,166(sp)
     ae8:	c52401e4 	lwc1	$f4,484(t1)
     aec:	a3a000a4 	sb	zero,164(sp)
     af0:	46062202 	mul.s	$f8,$f4,$f6
     af4:	4600428d 	trunc.w.s	$f10,$f8
     af8:	440e5000 	mfc1	t6,$f10
     afc:	00000000 	nop
     b00:	a3ae00a5 	sb	t6,165(sp)
     b04:	930c0000 	lbu	t4,0(t8)
     b08:	a0cc000f 	sb	t4,15(a2)
     b0c:	93a900b1 	lbu	t1,177(sp)
     b10:	00895021 	addu	t2,a0,t1
     b14:	914b0000 	lbu	t3,0(t2)
     b18:	a0cb001f 	sb	t3,31(a2)
     b1c:	90590000 	lbu	t9,0(v0)
     b20:	24420004 	addiu	v0,v0,4
     b24:	24630040 	addiu	v1,v1,64
     b28:	00996821 	addu	t5,a0,t9
     b2c:	91ae0000 	lbu	t6,0(t5)
     b30:	a06effcf 	sb	t6,-49(v1)
     b34:	904ffffd 	lbu	t7,-3(v0)
     b38:	008fc021 	addu	t8,a0,t7
     b3c:	930c0000 	lbu	t4,0(t8)
     b40:	a06cffdf 	sb	t4,-33(v1)
     b44:	9049fffe 	lbu	t1,-2(v0)
     b48:	00895021 	addu	t2,a0,t1
     b4c:	914b0000 	lbu	t3,0(t2)
     b50:	a06bffef 	sb	t3,-17(v1)
     b54:	9059ffff 	lbu	t9,-1(v0)
     b58:	00996821 	addu	t5,a0,t9
     b5c:	91ae0000 	lbu	t6,0(t5)
     b60:	1445ffee 	bne	v0,a1,b1c <func_8098D9C0+0x12c>
     b64:	a06effff 	sb	t6,-1(v1)
     b68:	8faf0120 	lw	t7,288(sp)
     b6c:	8faa0124 	lw	t2,292(sp)
     b70:	3c060000 	lui	a2,0x0
     b74:	85f8001c 	lh	t8,28(t7)
     b78:	24c60000 	addiu	a2,a2,0
     b7c:	27a40088 	addiu	a0,sp,136
     b80:	00186080 	sll	t4,t8,0x2
     b84:	01986023 	subu	t4,t4,t8
     b88:	000c6040 	sll	t4,t4,0x1
     b8c:	2589fffa 	addiu	t1,t4,-6
     b90:	afa900ac 	sw	t1,172(sp)
     b94:	8d450000 	lw	a1,0(t2)
     b98:	24070278 	li	a3,632
     b9c:	0c000000 	jal	0 <func_8098CFD0>
     ba0:	00a08025 	move	s0,a1
     ba4:	8fab0124 	lw	t3,292(sp)
     ba8:	0c000000 	jal	0 <func_8098CFD0>
     bac:	8d640000 	lw	a0,0(t3)
     bb0:	0c000000 	jal	0 <func_8098CFD0>
     bb4:	00000000 	nop
     bb8:	44806000 	mtc1	zero,$f12
     bbc:	3c014496 	lui	at,0x4496
     bc0:	44817000 	mtc1	at,$f14
     bc4:	44066000 	mfc1	a2,$f12
     bc8:	0c000000 	jal	0 <func_8098CFD0>
     bcc:	24070001 	li	a3,1
     bd0:	8fb90120 	lw	t9,288(sp)
     bd4:	24070001 	li	a3,1
     bd8:	c72c01e8 	lwc1	$f12,488(t9)
     bdc:	44066000 	mfc1	a2,$f12
     be0:	0c000000 	jal	0 <func_8098CFD0>
     be4:	46006386 	mov.s	$f14,$f12
     be8:	3c01c496 	lui	at,0xc496
     bec:	44817000 	mtc1	at,$f14
     bf0:	44806000 	mtc1	zero,$f12
     bf4:	24060000 	li	a2,0
     bf8:	0c000000 	jal	0 <func_8098CFD0>
     bfc:	24070001 	li	a3,1
     c00:	8e0202d0 	lw	v0,720(s0)
     c04:	3c0eda38 	lui	t6,0xda38
     c08:	35ce0003 	ori	t6,t6,0x3
     c0c:	244d0008 	addiu	t5,v0,8
     c10:	ae0d02d0 	sw	t5,720(s0)
     c14:	ac4e0000 	sw	t6,0(v0)
     c18:	8faf0124 	lw	t7,292(sp)
     c1c:	3c050000 	lui	a1,0x0
     c20:	24a50000 	addiu	a1,a1,0
     c24:	8de40000 	lw	a0,0(t7)
     c28:	2406027f 	li	a2,639
     c2c:	0c000000 	jal	0 <func_8098CFD0>
     c30:	afa20084 	sw	v0,132(sp)
     c34:	8fa30084 	lw	v1,132(sp)
     c38:	3c0cdb06 	lui	t4,0xdb06
     c3c:	358c0024 	ori	t4,t4,0x24
     c40:	ac620004 	sw	v0,4(v1)
     c44:	8e0202d0 	lw	v0,720(s0)
     c48:	8fa80118 	lw	t0,280(sp)
     c4c:	240a0020 	li	t2,32
     c50:	24580008 	addiu	t8,v0,8
     c54:	ae1802d0 	sw	t8,720(s0)
     c58:	ac4c0000 	sw	t4,0(v0)
     c5c:	8fa90124 	lw	t1,292(sp)
     c60:	00080823 	negu	at,t0
     c64:	00013880 	sll	a3,at,0x2
     c68:	8d240000 	lw	a0,0(t1)
     c6c:	00e13821 	addu	a3,a3,at
     c70:	00083080 	sll	a2,t0,0x2
     c74:	00073840 	sll	a3,a3,0x1
     c78:	240b0020 	li	t3,32
     c7c:	24190001 	li	t9,1
     c80:	240d0020 	li	t5,32
     c84:	240e0020 	li	t6,32
     c88:	00c83021 	addu	a2,a2,t0
     c8c:	afa6001c 	sw	a2,28(sp)
     c90:	afa60050 	sw	a2,80(sp)
     c94:	afae0028 	sw	t6,40(sp)
     c98:	afad0024 	sw	t5,36(sp)
     c9c:	afb90018 	sw	t9,24(sp)
     ca0:	afab0014 	sw	t3,20(sp)
     ca4:	afa70020 	sw	a3,32(sp)
     ca8:	afa7004c 	sw	a3,76(sp)
     cac:	afaa0010 	sw	t2,16(sp)
     cb0:	00002825 	move	a1,zero
     cb4:	0c000000 	jal	0 <func_8098CFD0>
     cb8:	afa20080 	sw	v0,128(sp)
     cbc:	8fa30080 	lw	v1,128(sp)
     cc0:	3c0c0600 	lui	t4,0x600
     cc4:	258c5cb0 	addiu	t4,t4,23728
     cc8:	ac620004 	sw	v0,4(v1)
     ccc:	8e0202d0 	lw	v0,720(s0)
     cd0:	3c18de00 	lui	t8,0xde00
     cd4:	244f0008 	addiu	t7,v0,8
     cd8:	ae0f02d0 	sw	t7,720(s0)
     cdc:	ac4c0004 	sw	t4,4(v0)
     ce0:	0c000000 	jal	0 <func_8098CFD0>
     ce4:	ac580000 	sw	t8,0(v0)
     ce8:	8e0202d0 	lw	v0,720(s0)
     cec:	3c0ada38 	lui	t2,0xda38
     cf0:	354a0003 	ori	t2,t2,0x3
     cf4:	24490008 	addiu	t1,v0,8
     cf8:	ae0902d0 	sw	t1,720(s0)
     cfc:	ac4a0000 	sw	t2,0(v0)
     d00:	8fab0124 	lw	t3,292(sp)
     d04:	3c050000 	lui	a1,0x0
     d08:	24a50000 	addiu	a1,a1,0
     d0c:	8d640000 	lw	a0,0(t3)
     d10:	24060290 	li	a2,656
     d14:	0c000000 	jal	0 <func_8098CFD0>
     d18:	afa20078 	sw	v0,120(sp)
     d1c:	8fa30078 	lw	v1,120(sp)
     d20:	3c0de700 	lui	t5,0xe700
     d24:	3c0ffa00 	lui	t7,0xfa00
     d28:	ac620004 	sw	v0,4(v1)
     d2c:	8e0202d0 	lw	v0,720(s0)
     d30:	3c183200 	lui	t8,0x3200
     d34:	371864ff 	ori	t8,t8,0x64ff
     d38:	24590008 	addiu	t9,v0,8
     d3c:	ae1902d0 	sw	t9,720(s0)
     d40:	ac4d0000 	sw	t5,0(v0)
     d44:	ac400004 	sw	zero,4(v0)
     d48:	8e0202d0 	lw	v0,720(s0)
     d4c:	35ef0080 	ori	t7,t7,0x80
     d50:	3c09db06 	lui	t1,0xdb06
     d54:	244e0008 	addiu	t6,v0,8
     d58:	ae0e02d0 	sw	t6,720(s0)
     d5c:	ac4f0000 	sw	t7,0(v0)
     d60:	ac580004 	sw	t8,4(v0)
     d64:	8e0202d0 	lw	v0,720(s0)
     d68:	35290028 	ori	t1,t1,0x28
     d6c:	24180020 	li	t8,32
     d70:	244c0008 	addiu	t4,v0,8
     d74:	ae0c02d0 	sw	t4,720(s0)
     d78:	ac490000 	sw	t1,0(v0)
     d7c:	8faa0124 	lw	t2,292(sp)
     d80:	8fae0118 	lw	t6,280(sp)
     d84:	240f0020 	li	t7,32
     d88:	8d440000 	lw	a0,0(t2)
     d8c:	240d0001 	li	t5,1
     d90:	24190020 	li	t9,32
     d94:	240b0020 	li	t3,32
     d98:	afab0010 	sw	t3,16(sp)
     d9c:	afb90014 	sw	t9,20(sp)
     da0:	afad0018 	sw	t5,24(sp)
     da4:	afb80028 	sw	t8,40(sp)
     da8:	afaf0024 	sw	t7,36(sp)
     dac:	00002825 	move	a1,zero
     db0:	00003025 	move	a2,zero
     db4:	00003825 	move	a3,zero
     db8:	afa2006c 	sw	v0,108(sp)
     dbc:	afae0020 	sw	t6,32(sp)
     dc0:	0c000000 	jal	0 <func_8098CFD0>
     dc4:	afae001c 	sw	t6,28(sp)
     dc8:	8fa3006c 	lw	v1,108(sp)
     dcc:	3c0a0600 	lui	t2,0x600
     dd0:	254a4f00 	addiu	t2,t2,20224
     dd4:	ac620004 	sw	v0,4(v1)
     dd8:	8e0202d0 	lw	v0,720(s0)
     ddc:	3c09de00 	lui	t1,0xde00
     de0:	3c19e700 	lui	t9,0xe700
     de4:	244c0008 	addiu	t4,v0,8
     de8:	ae0c02d0 	sw	t4,720(s0)
     dec:	ac490000 	sw	t1,0(v0)
     df0:	ac4a0004 	sw	t2,4(v0)
     df4:	8e0202d0 	lw	v0,720(s0)
     df8:	3c0efa00 	lui	t6,0xfa00
     dfc:	35ce0080 	ori	t6,t6,0x80
     e00:	244b0008 	addiu	t3,v0,8
     e04:	ae0b02d0 	sw	t3,720(s0)
     e08:	ac590000 	sw	t9,0(v0)
     e0c:	ac400004 	sw	zero,4(v0)
     e10:	8e0202d0 	lw	v0,720(s0)
     e14:	3c180000 	lui	t8,0x0
     e18:	27180000 	addiu	t8,t8,0
     e1c:	244d0008 	addiu	t5,v0,8
     e20:	ae0d02d0 	sw	t5,720(s0)
     e24:	ac4e0000 	sw	t6,0(v0)
     e28:	8faf00ac 	lw	t7,172(sp)
     e2c:	00002825 	move	a1,zero
     e30:	01f81821 	addu	v1,t7,t8
     e34:	90690002 	lbu	t1,2(v1)
     e38:	90790000 	lbu	t9,0(v1)
     e3c:	90780001 	lbu	t8,1(v1)
     e40:	00095200 	sll	t2,t1,0x8
     e44:	00196e00 	sll	t5,t9,0x18
     e48:	014d7025 	or	t6,t2,t5
     e4c:	00186400 	sll	t4,t8,0x10
     e50:	01cc4825 	or	t1,t6,t4
     e54:	352b00ff 	ori	t3,t1,0xff
     e58:	ac4b0004 	sw	t3,4(v0)
     e5c:	8e0202d0 	lw	v0,720(s0)
     e60:	3c0afb00 	lui	t2,0xfb00
     e64:	24590008 	addiu	t9,v0,8
     e68:	ae1902d0 	sw	t9,720(s0)
     e6c:	ac4a0000 	sw	t2,0(v0)
     e70:	906c0003 	lbu	t4,3(v1)
     e74:	906f0005 	lbu	t7,5(v1)
     e78:	906a0004 	lbu	t2,4(v1)
     e7c:	000c4e00 	sll	t1,t4,0x18
     e80:	000fc200 	sll	t8,t7,0x8
     e84:	03095825 	or	t3,t8,t1
     e88:	000a6c00 	sll	t5,t2,0x10
     e8c:	016d7825 	or	t7,t3,t5
     e90:	35ee0080 	ori	t6,t7,0x80
     e94:	ac4e0004 	sw	t6,4(v0)
     e98:	8e0202d0 	lw	v0,720(s0)
     e9c:	8fa7004c 	lw	a3,76(sp)
     ea0:	8fa60050 	lw	a2,80(sp)
     ea4:	3c18db06 	lui	t8,0xdb06
     ea8:	244c0008 	addiu	t4,v0,8
     eac:	ae0c02d0 	sw	t4,720(s0)
     eb0:	37180020 	ori	t8,t8,0x20
     eb4:	ac580000 	sw	t8,0(v0)
     eb8:	8fa90124 	lw	t1,292(sp)
     ebc:	240f0040 	li	t7,64
     ec0:	240d0020 	li	t5,32
     ec4:	8d240000 	lw	a0,0(t1)
     ec8:	240b0001 	li	t3,1
     ecc:	240a0020 	li	t2,32
     ed0:	24190020 	li	t9,32
     ed4:	afb90010 	sw	t9,16(sp)
     ed8:	afaa0014 	sw	t2,20(sp)
     edc:	afab0018 	sw	t3,24(sp)
     ee0:	afaf0028 	sw	t7,40(sp)
     ee4:	afad0024 	sw	t5,36(sp)
     ee8:	afa20058 	sw	v0,88(sp)
     eec:	afa70020 	sw	a3,32(sp)
     ef0:	0c000000 	jal	0 <func_8098CFD0>
     ef4:	afa6001c 	sw	a2,28(sp)
     ef8:	8fa30058 	lw	v1,88(sp)
     efc:	3c180600 	lui	t8,0x600
     f00:	27185a30 	addiu	t8,t8,23088
     f04:	ac620004 	sw	v0,4(v1)
     f08:	8e0202d0 	lw	v0,720(s0)
     f0c:	3c0cde00 	lui	t4,0xde00
     f10:	3c060000 	lui	a2,0x0
     f14:	244e0008 	addiu	t6,v0,8
     f18:	ae0e02d0 	sw	t6,720(s0)
     f1c:	ac580004 	sw	t8,4(v0)
     f20:	ac4c0000 	sw	t4,0(v0)
     f24:	8fa90124 	lw	t1,292(sp)
     f28:	24c60000 	addiu	a2,a2,0
     f2c:	27a40088 	addiu	a0,sp,136
     f30:	240702b8 	li	a3,696
     f34:	0c000000 	jal	0 <func_8098CFD0>
     f38:	8d250000 	lw	a1,0(t1)
     f3c:	8fbf003c 	lw	ra,60(sp)
     f40:	8fb00038 	lw	s0,56(sp)
     f44:	27bd0120 	addiu	sp,sp,288
     f48:	03e00008 	jr	ra
     f4c:	00000000 	nop

00000f50 <DemoKekkai_Draw>:
     f50:	27bdff88 	addiu	sp,sp,-120
     f54:	afbf003c 	sw	ra,60(sp)
     f58:	afb10038 	sw	s1,56(sp)
     f5c:	afb00034 	sw	s0,52(sp)
     f60:	afa40078 	sw	a0,120(sp)
     f64:	c48401ec 	lwc1	$f4,492(a0)
     f68:	00a08825 	move	s1,a1
     f6c:	3c060000 	lui	a2,0x0
     f70:	4600218d 	trunc.w.s	$f6,$f4
     f74:	24c60000 	addiu	a2,a2,0
     f78:	27a40058 	addiu	a0,sp,88
     f7c:	240702c1 	li	a3,705
     f80:	44183000 	mfc1	t8,$f6
     f84:	00000000 	nop
     f88:	3319ffff 	andi	t9,t8,0xffff
     f8c:	afb9006c 	sw	t9,108(sp)
     f90:	8ca50000 	lw	a1,0(a1)
     f94:	0c000000 	jal	0 <func_8098CFD0>
     f98:	00a08025 	move	s0,a1
     f9c:	0c000000 	jal	0 <func_8098CFD0>
     fa0:	8e240000 	lw	a0,0(s1)
     fa4:	8e0202d0 	lw	v0,720(s0)
     fa8:	3c0ada38 	lui	t2,0xda38
     fac:	354a0003 	ori	t2,t2,0x3
     fb0:	24490008 	addiu	t1,v0,8
     fb4:	ae0902d0 	sw	t1,720(s0)
     fb8:	ac4a0000 	sw	t2,0(v0)
     fbc:	8e240000 	lw	a0,0(s1)
     fc0:	3c050000 	lui	a1,0x0
     fc4:	24a50000 	addiu	a1,a1,0
     fc8:	240602c3 	li	a2,707
     fcc:	0c000000 	jal	0 <func_8098CFD0>
     fd0:	afa20054 	sw	v0,84(sp)
     fd4:	8fa30054 	lw	v1,84(sp)
     fd8:	3c0cfa00 	lui	t4,0xfa00
     fdc:	3c0dffaa 	lui	t5,0xffaa
     fe0:	ac620004 	sw	v0,4(v1)
     fe4:	8e0202d0 	lw	v0,720(s0)
     fe8:	35adffff 	ori	t5,t5,0xffff
     fec:	358c0080 	ori	t4,t4,0x80
     ff0:	244b0008 	addiu	t3,v0,8
     ff4:	ae0b02d0 	sw	t3,720(s0)
     ff8:	ac4c0000 	sw	t4,0(v0)
     ffc:	ac4d0004 	sw	t5,4(v0)
    1000:	8e0202d0 	lw	v0,720(s0)
    1004:	8fa8006c 	lw	t0,108(sp)
    1008:	3c0fdb06 	lui	t7,0xdb06
    100c:	244e0008 	addiu	t6,v0,8
    1010:	ae0e02d0 	sw	t6,720(s0)
    1014:	35ef0020 	ori	t7,t7,0x20
    1018:	ac4f0000 	sw	t7,0(v0)
    101c:	8e240000 	lw	a0,0(s1)
    1020:	00080823 	negu	at,t0
    1024:	00013880 	sll	a3,at,0x2
    1028:	240b0040 	li	t3,64
    102c:	24180020 	li	t8,32
    1030:	24190040 	li	t9,64
    1034:	24090001 	li	t1,1
    1038:	240a0020 	li	t2,32
    103c:	00083040 	sll	a2,t0,0x1
    1040:	afa6001c 	sw	a2,28(sp)
    1044:	afaa0024 	sw	t2,36(sp)
    1048:	afa90018 	sw	t1,24(sp)
    104c:	afb90014 	sw	t9,20(sp)
    1050:	afb80010 	sw	t8,16(sp)
    1054:	afab0028 	sw	t3,40(sp)
    1058:	afa70020 	sw	a3,32(sp)
    105c:	00002825 	move	a1,zero
    1060:	0c000000 	jal	0 <func_8098CFD0>
    1064:	afa2004c 	sw	v0,76(sp)
    1068:	8fa3004c 	lw	v1,76(sp)
    106c:	3c0e0600 	lui	t6,0x600
    1070:	25ce4930 	addiu	t6,t6,18736
    1074:	ac620004 	sw	v0,4(v1)
    1078:	8e0202d0 	lw	v0,720(s0)
    107c:	3c0dde00 	lui	t5,0xde00
    1080:	3c060000 	lui	a2,0x0
    1084:	244c0008 	addiu	t4,v0,8
    1088:	ae0c02d0 	sw	t4,720(s0)
    108c:	ac4e0004 	sw	t6,4(v0)
    1090:	ac4d0000 	sw	t5,0(v0)
    1094:	8e250000 	lw	a1,0(s1)
    1098:	24c60000 	addiu	a2,a2,0
    109c:	27a40058 	addiu	a0,sp,88
    10a0:	0c000000 	jal	0 <func_8098CFD0>
    10a4:	240702d2 	li	a3,722
    10a8:	8fbf003c 	lw	ra,60(sp)
    10ac:	8fb00034 	lw	s0,52(sp)
    10b0:	8fb10038 	lw	s1,56(sp)
    10b4:	03e00008 	jr	ra
    10b8:	27bd0078 	addiu	sp,sp,120
    10bc:	00000000 	nop
