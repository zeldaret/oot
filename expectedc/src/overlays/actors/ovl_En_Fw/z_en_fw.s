
build/src/overlays/actors/ovl_En_Fw/z_en_fw.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A1E5A0>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa5001c 	sw	a1,28(sp)
       c:	afa60020 	sw	a2,32(sp)
      10:	948e0088 	lhu	t6,136(a0)
      14:	00a03025 	move	a2,a1
      18:	31cf0001 	andi	t7,t6,0x1
      1c:	11e00008 	beqz	t7,40 <func_80A1E5A0+0x40>
      20:	00000000 	nop
      24:	44802000 	mtc1	zero,$f4
      28:	c4860060 	lwc1	$f6,96(a0)
      2c:	2405387b 	li	a1,14459
      30:	4606203c 	c.lt.s	$f4,$f6
      34:	00000000 	nop
      38:	45020004 	bc1fl	4c <func_80A1E5A0+0x4c>
      3c:	afa40018 	sw	a0,24(sp)
      40:	1000001d 	b	b8 <func_80A1E5A0+0xb8>
      44:	00001025 	move	v0,zero
      48:	afa40018 	sw	a0,24(sp)
      4c:	0c000000 	jal	0 <func_80A1E5A0>
      50:	afa6001c 	sw	a2,28(sp)
      54:	8fa40018 	lw	a0,24(sp)
      58:	8fa6001c 	lw	a2,28(sp)
      5c:	84980204 	lh	t8,516(a0)
      60:	2719ffff 	addiu	t9,t8,-1
      64:	a4990204 	sh	t9,516(a0)
      68:	84830204 	lh	v1,516(a0)
      6c:	5c60000a 	bgtzl	v1,98 <func_80A1E5A0+0x98>
      70:	44835000 	mtc1	v1,$f10
      74:	14600005 	bnez	v1,8c <func_80A1E5A0+0x8c>
      78:	24020001 	li	v0,1
      7c:	44804000 	mtc1	zero,$f8
      80:	a4800204 	sh	zero,516(a0)
      84:	1000000c 	b	b8 <func_80A1E5A0+0xb8>
      88:	e4880060 	swc1	$f8,96(a0)
      8c:	a4860204 	sh	a2,516(a0)
      90:	84830204 	lh	v1,516(a0)
      94:	44835000 	mtc1	v1,$f10
      98:	44869000 	mtc1	a2,$f18
      9c:	c7a80020 	lwc1	$f8,32(sp)
      a0:	46805420 	cvt.s.w	$f16,$f10
      a4:	24020001 	li	v0,1
      a8:	46809120 	cvt.s.w	$f4,$f18
      ac:	46048183 	div.s	$f6,$f16,$f4
      b0:	46064282 	mul.s	$f10,$f8,$f6
      b4:	e48a0060 	swc1	$f10,96(a0)
      b8:	8fbf0014 	lw	ra,20(sp)
      bc:	27bd0018 	addiu	sp,sp,24
      c0:	03e00008 	jr	ra
      c4:	00000000 	nop

000000c8 <func_80A1E668>:
      c8:	27bdffb0 	addiu	sp,sp,-80
      cc:	afbf002c 	sw	ra,44(sp)
      d0:	afa40050 	sw	a0,80(sp)
      d4:	afa50054 	sw	a1,84(sp)
      d8:	3c014396 	lui	at,0x4396
      dc:	44812000 	mtc1	at,$f4
      e0:	c4860090 	lwc1	$f6,144(a0)
      e4:	8ca81c44 	lw	t0,7236(a1)
      e8:	8fb80050 	lw	t8,80(sp)
      ec:	4606203c 	c.lt.s	$f4,$f6
      f0:	00000000 	nop
      f4:	45020004 	bc1fl	108 <func_80A1E668+0x40>
      f8:	8719008a 	lh	t9,138(t8)
      fc:	1000002c 	b	1b0 <func_80A1E668+0xe8>
     100:	00001025 	move	v0,zero
     104:	8719008a 	lh	t9,138(t8)
     108:	870900b6 	lh	t1,182(t8)
     10c:	8fa40054 	lw	a0,84(sp)
     110:	44994000 	mtc1	t9,$f8
     114:	44898000 	mtc1	t1,$f16
     118:	8fa50050 	lw	a1,80(sp)
     11c:	468042a0 	cvt.s.w	$f10,$f8
     120:	25060024 	addiu	a2,t0,36
     124:	27a70038 	addiu	a3,sp,56
     128:	27ab0048 	addiu	t3,sp,72
     12c:	240c0001 	li	t4,1
     130:	468084a0 	cvt.s.w	$f18,$f16
     134:	240d0001 	li	t5,1
     138:	27ae0044 	addiu	t6,sp,68
     13c:	248407c0 	addiu	a0,a0,1984
     140:	24a50024 	addiu	a1,a1,36
     144:	46125101 	sub.s	$f4,$f10,$f18
     148:	4600218d 	trunc.w.s	$f6,$f4
     14c:	44023000 	mfc1	v0,$f6
     150:	00000000 	nop
     154:	00021400 	sll	v0,v0,0x10
     158:	00021403 	sra	v0,v0,0x10
     15c:	04400003 	bltz	v0,16c <func_80A1E668+0xa4>
     160:	00021823 	negu	v1,v0
     164:	10000001 	b	16c <func_80A1E668+0xa4>
     168:	00401825 	move	v1,v0
     16c:	28611c71 	slti	at,v1,7281
     170:	54200004 	bnezl	at,184 <func_80A1E668+0xbc>
     174:	afab0010 	sw	t3,16(sp)
     178:	1000000d 	b	1b0 <func_80A1E668+0xe8>
     17c:	00001025 	move	v0,zero
     180:	afab0010 	sw	t3,16(sp)
     184:	afac0014 	sw	t4,20(sp)
     188:	afa00018 	sw	zero,24(sp)
     18c:	afa0001c 	sw	zero,28(sp)
     190:	afad0020 	sw	t5,32(sp)
     194:	0c000000 	jal	0 <func_80A1E5A0>
     198:	afae0024 	sw	t6,36(sp)
     19c:	50400004 	beqzl	v0,1b0 <func_80A1E668+0xe8>
     1a0:	24020001 	li	v0,1
     1a4:	10000002 	b	1b0 <func_80A1E668+0xe8>
     1a8:	00001025 	move	v0,zero
     1ac:	24020001 	li	v0,1
     1b0:	8fbf002c 	lw	ra,44(sp)
     1b4:	27bd0050 	addiu	sp,sp,80
     1b8:	03e00008 	jr	ra
     1bc:	00000000 	nop

000001c0 <func_80A1E760>:
     1c0:	27bdffc8 	addiu	sp,sp,-56
     1c4:	afbf001c 	sw	ra,28(sp)
     1c8:	afb00018 	sw	s0,24(sp)
     1cc:	afa40038 	sw	a0,56(sp)
     1d0:	afa60040 	sw	a2,64(sp)
     1d4:	afa70044 	sw	a3,68(sp)
     1d8:	8ca40118 	lw	a0,280(a1)
     1dc:	00a08025 	move	s0,a1
     1e0:	24a50024 	addiu	a1,a1,36
     1e4:	0c000000 	jal	0 <func_80A1E5A0>
     1e8:	24840008 	addiu	a0,a0,8
     1ec:	87ae0046 	lh	t6,70(sp)
     1f0:	24011554 	li	at,5460
     1f4:	01c10019 	multu	t6,at
     1f8:	00007812 	mflo	t7
     1fc:	004f1821 	addu	v1,v0,t7
     200:	00032400 	sll	a0,v1,0x10
     204:	a7a30036 	sh	v1,54(sp)
     208:	0c000000 	jal	0 <func_80A1E5A0>
     20c:	00042403 	sra	a0,a0,0x10
     210:	c7a40040 	lwc1	$f4,64(sp)
     214:	8e180118 	lw	t8,280(s0)
     218:	87a40036 	lh	a0,54(sp)
     21c:	46040182 	mul.s	$f6,$f0,$f4
     220:	c7080008 	lwc1	$f8,8(t8)
     224:	46083280 	add.s	$f10,$f6,$f8
     228:	0c000000 	jal	0 <func_80A1E5A0>
     22c:	e7aa0028 	swc1	$f10,40(sp)
     230:	c7b00040 	lwc1	$f16,64(sp)
     234:	8e190118 	lw	t9,280(s0)
     238:	c7a80028 	lwc1	$f8,40(sp)
     23c:	46100482 	mul.s	$f18,$f0,$f16
     240:	c7240010 	lwc1	$f4,16(t9)
     244:	27a80028 	addiu	t0,sp,40
     248:	8fa20038 	lw	v0,56(sp)
     24c:	46049180 	add.s	$f6,$f18,$f4
     250:	e7a60030 	swc1	$f6,48(sp)
     254:	c60a0024 	lwc1	$f10,36(s0)
     258:	460a4401 	sub.s	$f16,$f8,$f10
     25c:	e7b00028 	swc1	$f16,40(sp)
     260:	c612002c 	lwc1	$f18,44(s0)
     264:	46123101 	sub.s	$f4,$f6,$f18
     268:	e7a40030 	swc1	$f4,48(sp)
     26c:	8d0a0000 	lw	t2,0(t0)
     270:	ac4a0000 	sw	t2,0(v0)
     274:	8d090004 	lw	t1,4(t0)
     278:	ac490004 	sw	t1,4(v0)
     27c:	8d0a0008 	lw	t2,8(t0)
     280:	ac4a0008 	sw	t2,8(v0)
     284:	8fbf001c 	lw	ra,28(sp)
     288:	8fb00018 	lw	s0,24(sp)
     28c:	27bd0038 	addiu	sp,sp,56
     290:	03e00008 	jr	ra
     294:	00000000 	nop

00000298 <func_80A1E838>:
     298:	27bdffe8 	addiu	sp,sp,-24
     29c:	afbf0014 	sw	ra,20(sp)
     2a0:	afa5001c 	sw	a1,28(sp)
     2a4:	908e01a5 	lbu	t6,421(a0)
     2a8:	00803025 	move	a2,a0
     2ac:	00001025 	move	v0,zero
     2b0:	31cf0002 	andi	t7,t6,0x2
     2b4:	11e00024 	beqz	t7,348 <func_80A1E838+0xb0>
     2b8:	00000000 	nop
     2bc:	8c8201b0 	lw	v0,432(a0)
     2c0:	24090001 	li	t1,1
     2c4:	8c580024 	lw	t8,36(v0)
     2c8:	8f190000 	lw	t9,0(t8)
     2cc:	33280080 	andi	t0,t9,0x80
     2d0:	51000004 	beqzl	t0,2e4 <func_80A1E838+0x4c>
     2d4:	a0c00200 	sb	zero,512(a2)
     2d8:	10000002 	b	2e4 <func_80A1E838+0x4c>
     2dc:	a0890200 	sb	t1,512(a0)
     2e0:	a0c00200 	sb	zero,512(a2)
     2e4:	90ca01a5 	lbu	t2,421(a2)
     2e8:	00c02025 	move	a0,a2
     2ec:	314bfffd 	andi	t3,t2,0xfffd
     2f0:	a0cb01a5 	sb	t3,421(a2)
     2f4:	0c000000 	jal	0 <func_80A1E5A0>
     2f8:	afa60018 	sw	a2,24(sp)
     2fc:	1c400010 	bgtz	v0,340 <func_80A1E838+0xa8>
     300:	8fa60018 	lw	a2,24(sp)
     304:	8cc20118 	lw	v0,280(a2)
     308:	8fa4001c 	lw	a0,28(sp)
     30c:	00c02825 	move	a1,a2
     310:	904300af 	lbu	v1,175(v0)
     314:	28610009 	slti	at,v1,9
     318:	10200007 	beqz	at,338 <func_80A1E838+0xa0>
     31c:	246dfff8 	addiu	t5,v1,-8
     320:	0c000000 	jal	0 <func_80A1E5A0>
     324:	afa60018 	sw	a2,24(sp)
     328:	8fa60018 	lw	a2,24(sp)
     32c:	8ccc0118 	lw	t4,280(a2)
     330:	10000002 	b	33c <func_80A1E838+0xa4>
     334:	a18000af 	sb	zero,175(t4)
     338:	a04d00af 	sb	t5,175(v0)
     33c:	a4c00212 	sh	zero,530(a2)
     340:	10000001 	b	348 <func_80A1E838+0xb0>
     344:	24020001 	li	v0,1
     348:	8fbf0014 	lw	ra,20(sp)
     34c:	27bd0018 	addiu	sp,sp,24
     350:	03e00008 	jr	ra
     354:	00000000 	nop

00000358 <func_80A1E8F8>:
     358:	27bdff58 	addiu	sp,sp,-168
     35c:	3c0e0000 	lui	t6,0x0
     360:	afbf0074 	sw	ra,116(sp)
     364:	afb70070 	sw	s7,112(sp)
     368:	afb6006c 	sw	s6,108(sp)
     36c:	afb50068 	sw	s5,104(sp)
     370:	afb40064 	sw	s4,100(sp)
     374:	afb30060 	sw	s3,96(sp)
     378:	afb2005c 	sw	s2,92(sp)
     37c:	afb10058 	sw	s1,88(sp)
     380:	afb00054 	sw	s0,84(sp)
     384:	f7be0048 	sdc1	$f30,72(sp)
     388:	f7bc0040 	sdc1	$f28,64(sp)
     38c:	f7ba0038 	sdc1	$f26,56(sp)
     390:	f7b80030 	sdc1	$f24,48(sp)
     394:	f7b60028 	sdc1	$f22,40(sp)
     398:	f7b40020 	sdc1	$f20,32(sp)
     39c:	afa500ac 	sw	a1,172(sp)
     3a0:	25ce0000 	addiu	t6,t6,0
     3a4:	8dd80000 	lw	t8,0(t6)
     3a8:	27b4009c 	addiu	s4,sp,156
     3ac:	3c190000 	lui	t9,0x0
     3b0:	ae980000 	sw	t8,0(s4)
     3b4:	8dcf0004 	lw	t7,4(t6)
     3b8:	27390000 	addiu	t9,t9,0
     3bc:	27b60090 	addiu	s6,sp,144
     3c0:	ae8f0004 	sw	t7,4(s4)
     3c4:	8dd80008 	lw	t8,8(t6)
     3c8:	3c0a0000 	lui	t2,0x0
     3cc:	254a0000 	addiu	t2,t2,0
     3d0:	ae980008 	sw	t8,8(s4)
     3d4:	8f290000 	lw	t1,0(t9)
     3d8:	27b70084 	addiu	s7,sp,132
     3dc:	3c014000 	lui	at,0x4000
     3e0:	aec90000 	sw	t1,0(s6)
     3e4:	8f280004 	lw	t0,4(t9)
     3e8:	44813000 	mtc1	at,$f6
     3ec:	4486e000 	mtc1	a2,$f28
     3f0:	aec80004 	sw	t0,4(s6)
     3f4:	8f290008 	lw	t1,8(t9)
     3f8:	4487f000 	mtc1	a3,$f30
     3fc:	00808825 	move	s1,a0
     400:	aec90008 	sw	t1,8(s6)
     404:	8d4c0000 	lw	t4,0(t2)
     408:	30b500ff 	andi	s5,a1,0xff
     40c:	aeec0000 	sw	t4,0(s7)
     410:	8d4b0004 	lw	t3,4(t2)
     414:	aeeb0004 	sw	t3,4(s7)
     418:	8d4c0008 	lw	t4,8(t2)
     41c:	aeec0008 	sw	t4,8(s7)
     420:	8c8e0024 	lw	t6,36(a0)
     424:	ae8e0000 	sw	t6,0(s4)
     428:	8c8d0028 	lw	t5,40(a0)
     42c:	ae8d0004 	sw	t5,4(s4)
     430:	8c8e002c 	lw	t6,44(a0)
     434:	ae8e0008 	sw	t6,8(s4)
     438:	c4840080 	lwc1	$f4,128(a0)
     43c:	46062200 	add.s	$f8,$f4,$f6
     440:	0c000000 	jal	0 <func_80A1E5A0>
     444:	e7a800a0 	swc1	$f8,160(sp)
     448:	3c013f00 	lui	at,0x3f00
     44c:	4481c000 	mtc1	at,$f24
     450:	3c014780 	lui	at,0x4780
     454:	44818000 	mtc1	at,$f16
     458:	46180281 	sub.s	$f10,$f0,$f24
     45c:	8fa200b8 	lw	v0,184(sp)
     460:	3c180001 	lui	t8,0x1
     464:	c7ba00c4 	lwc1	$f26,196(sp)
     468:	46105482 	mul.s	$f18,$f10,$f16
     46c:	c7b600bc 	lwc1	$f22,188(sp)
     470:	c7b400c0 	lwc1	$f20,192(sp)
     474:	00409025 	move	s2,v0
     478:	4600910d 	trunc.w.s	$f4,$f18
     47c:	44102000 	mfc1	s0,$f4
     480:	00000000 	nop
     484:	00108400 	sll	s0,s0,0x10
     488:	04400033 	bltz	v0,558 <func_80A1E8F8+0x200>
     48c:	00108403 	sra	s0,s0,0x10
     490:	0302001a 	div	zero,t8,v0
     494:	00009812 	mflo	s3
     498:	00139c00 	sll	s3,s3,0x10
     49c:	00139c03 	sra	s3,s3,0x10
     4a0:	14400002 	bnez	v0,4ac <func_80A1E8F8+0x154>
     4a4:	00000000 	nop
     4a8:	0007000d 	break	0x7
     4ac:	2401ffff 	li	at,-1
     4b0:	14410004 	bne	v0,at,4c4 <func_80A1E8F8+0x16c>
     4b4:	3c018000 	lui	at,0x8000
     4b8:	17010002 	bne	t8,at,4c4 <func_80A1E8F8+0x16c>
     4bc:	00000000 	nop
     4c0:	0006000d 	break	0x6
     4c4:	0c000000 	jal	0 <func_80A1E5A0>
     4c8:	00000000 	nop
     4cc:	46180181 	sub.s	$f6,$f0,$f24
     4d0:	e7ba0088 	swc1	$f26,136(sp)
     4d4:	46143202 	mul.s	$f8,$f6,$f20
     4d8:	0c000000 	jal	0 <func_80A1E5A0>
     4dc:	e7a80084 	swc1	$f8,132(sp)
     4e0:	46180281 	sub.s	$f10,$f0,$f24
     4e4:	00102400 	sll	a0,s0,0x10
     4e8:	00042403 	sra	a0,a0,0x10
     4ec:	46145402 	mul.s	$f16,$f10,$f20
     4f0:	0c000000 	jal	0 <func_80A1E5A0>
     4f4:	e7b0008c 	swc1	$f16,140(sp)
     4f8:	46160482 	mul.s	$f18,$f0,$f22
     4fc:	c6240024 	lwc1	$f4,36(s1)
     500:	00102400 	sll	a0,s0,0x10
     504:	00042403 	sra	a0,a0,0x10
     508:	46049180 	add.s	$f6,$f18,$f4
     50c:	0c000000 	jal	0 <func_80A1E5A0>
     510:	e7a6009c 	swc1	$f6,156(sp)
     514:	46160202 	mul.s	$f8,$f0,$f22
     518:	c62a002c 	lwc1	$f10,44(s1)
     51c:	e7be0018 	swc1	$f30,24(sp)
     520:	e7bc0014 	swc1	$f28,20(sp)
     524:	afb50010 	sw	s5,16(sp)
     528:	02202025 	move	a0,s1
     52c:	02802825 	move	a1,s4
     530:	460a4400 	add.s	$f16,$f8,$f10
     534:	02c03025 	move	a2,s6
     538:	02e03825 	move	a3,s7
     53c:	0c000000 	jal	0 <func_80A1E5A0>
     540:	e7b000a4 	swc1	$f16,164(sp)
     544:	02138021 	addu	s0,s0,s3
     548:	00108400 	sll	s0,s0,0x10
     54c:	2652ffff 	addiu	s2,s2,-1
     550:	0641ffdc 	bgez	s2,4c4 <func_80A1E8F8+0x16c>
     554:	00108403 	sra	s0,s0,0x10
     558:	8fbf0074 	lw	ra,116(sp)
     55c:	d7b40020 	ldc1	$f20,32(sp)
     560:	d7b60028 	ldc1	$f22,40(sp)
     564:	d7b80030 	ldc1	$f24,48(sp)
     568:	d7ba0038 	ldc1	$f26,56(sp)
     56c:	d7bc0040 	ldc1	$f28,64(sp)
     570:	d7be0048 	ldc1	$f30,72(sp)
     574:	8fb00054 	lw	s0,84(sp)
     578:	8fb10058 	lw	s1,88(sp)
     57c:	8fb2005c 	lw	s2,92(sp)
     580:	8fb30060 	lw	s3,96(sp)
     584:	8fb40064 	lw	s4,100(sp)
     588:	8fb50068 	lw	s5,104(sp)
     58c:	8fb6006c 	lw	s6,108(sp)
     590:	8fb70070 	lw	s7,112(sp)
     594:	27bd00a8 	addiu	sp,sp,168
     598:	03e00008 	jr	ra
     59c:	00001025 	move	v0,zero

000005a0 <EnFw_Init>:
     5a0:	27bdffc0 	addiu	sp,sp,-64
     5a4:	afb00028 	sw	s0,40(sp)
     5a8:	00808025 	move	s0,a0
     5ac:	afa50044 	sw	a1,68(sp)
     5b0:	00a02025 	move	a0,a1
     5b4:	afbf002c 	sw	ra,44(sp)
     5b8:	2605014c 	addiu	a1,s0,332
     5bc:	260e021c 	addiu	t6,s0,540
     5c0:	260f025e 	addiu	t7,s0,606
     5c4:	3c060600 	lui	a2,0x600
     5c8:	2418000b 	li	t8,11
     5cc:	afb80018 	sw	t8,24(sp)
     5d0:	24c67c30 	addiu	a2,a2,31792
     5d4:	afaf0014 	sw	t7,20(sp)
     5d8:	afae0010 	sw	t6,16(sp)
     5dc:	afa50034 	sw	a1,52(sp)
     5e0:	0c000000 	jal	0 <func_80A1E5A0>
     5e4:	00003825 	move	a3,zero
     5e8:	3c050000 	lui	a1,0x0
     5ec:	24a50000 	addiu	a1,a1,0
     5f0:	8fa40034 	lw	a0,52(sp)
     5f4:	0c000000 	jal	0 <func_80A1E5A0>
     5f8:	00003025 	move	a2,zero
     5fc:	3c060000 	lui	a2,0x0
     600:	24c60000 	addiu	a2,a2,0
     604:	260400b4 	addiu	a0,s0,180
     608:	24050000 	li	a1,0
     60c:	0c000000 	jal	0 <func_80A1E5A0>
     610:	3c0741a0 	lui	a3,0x41a0
     614:	26050194 	addiu	a1,s0,404
     618:	afa50034 	sw	a1,52(sp)
     61c:	0c000000 	jal	0 <func_80A1E5A0>
     620:	8fa40044 	lw	a0,68(sp)
     624:	3c070000 	lui	a3,0x0
     628:	261901b4 	addiu	t9,s0,436
     62c:	8fa50034 	lw	a1,52(sp)
     630:	afb90010 	sw	t9,16(sp)
     634:	24e70000 	addiu	a3,a3,0
     638:	8fa40044 	lw	a0,68(sp)
     63c:	0c000000 	jal	0 <func_80A1E5A0>
     640:	02003025 	move	a2,s0
     644:	0c000000 	jal	0 <func_80A1E5A0>
     648:	24040010 	li	a0,16
     64c:	3c060000 	lui	a2,0x0
     650:	24c60000 	addiu	a2,a2,0
     654:	26040098 	addiu	a0,s0,152
     658:	0c000000 	jal	0 <func_80A1E5A0>
     65c:	00402825 	move	a1,v0
     660:	3c053c23 	lui	a1,0x3c23
     664:	34a5d70a 	ori	a1,a1,0xd70a
     668:	0c000000 	jal	0 <func_80A1E5A0>
     66c:	02002025 	move	a0,s0
     670:	8608001c 	lh	t0,28(s0)
     674:	3c01bf80 	lui	at,0xbf80
     678:	44812000 	mtc1	at,$f4
     67c:	3c0a0000 	lui	t2,0x0
     680:	254a0000 	addiu	t2,t2,0
     684:	00084823 	negu	t1,t0
     688:	a6090202 	sh	t1,514(s0)
     68c:	ae0a0190 	sw	t2,400(s0)
     690:	e604006c 	swc1	$f4,108(s0)
     694:	8fbf002c 	lw	ra,44(sp)
     698:	8fb00028 	lw	s0,40(sp)
     69c:	27bd0040 	addiu	sp,sp,64
     6a0:	03e00008 	jr	ra
     6a4:	00000000 	nop

000006a8 <EnFw_Destroy>:
     6a8:	27bdffe8 	addiu	sp,sp,-24
     6ac:	00803025 	move	a2,a0
     6b0:	afbf0014 	sw	ra,20(sp)
     6b4:	00a02025 	move	a0,a1
     6b8:	0c000000 	jal	0 <func_80A1E5A0>
     6bc:	24c50194 	addiu	a1,a2,404
     6c0:	8fbf0014 	lw	ra,20(sp)
     6c4:	27bd0018 	addiu	sp,sp,24
     6c8:	03e00008 	jr	ra
     6cc:	00000000 	nop

000006d0 <func_80A1EC70>:
     6d0:	27bdffe8 	addiu	sp,sp,-24
     6d4:	afbf0014 	sw	ra,20(sp)
     6d8:	afa5001c 	sw	a1,28(sp)
     6dc:	24050003 	li	a1,3
     6e0:	afa40018 	sw	a0,24(sp)
     6e4:	0c000000 	jal	0 <func_80A1E5A0>
     6e8:	3c064100 	lui	a2,0x4100
     6ec:	1040000d 	beqz	v0,724 <func_80A1EC70+0x54>
     6f0:	8fa70018 	lw	a3,24(sp)
     6f4:	84ee0204 	lh	t6,516(a3)
     6f8:	2404012c 	li	a0,300
     6fc:	24050096 	li	a1,150
     700:	55c00009 	bnezl	t6,728 <func_80A1EC70+0x58>
     704:	8fbf0014 	lw	ra,20(sp)
     708:	0c000000 	jal	0 <func_80A1E5A0>
     70c:	afa70018 	sw	a3,24(sp)
     710:	8fa70018 	lw	a3,24(sp)
     714:	3c0f0000 	lui	t7,0x0
     718:	25ef0000 	addiu	t7,t7,0
     71c:	a4e20212 	sh	v0,530(a3)
     720:	acef0190 	sw	t7,400(a3)
     724:	8fbf0014 	lw	ra,20(sp)
     728:	27bd0018 	addiu	sp,sp,24
     72c:	03e00008 	jr	ra
     730:	00000000 	nop

00000734 <func_80A1ECD4>:
     734:	3c013f80 	lui	at,0x3f80
     738:	44810000 	mtc1	at,$f0
     73c:	27bdff98 	addiu	sp,sp,-104
     740:	44802000 	mtc1	zero,$f4
     744:	afb00030 	sw	s0,48(sp)
     748:	afa5006c 	sw	a1,108(sp)
     74c:	00808025 	move	s0,a0
     750:	afbf0034 	sw	ra,52(sp)
     754:	3c063dcc 	lui	a2,0x3dcc
     758:	44050000 	mfc1	a1,$f0
     75c:	44070000 	mfc1	a3,$f0
     760:	34c6cccd 	ori	a2,a2,0xcccd
     764:	24840168 	addiu	a0,a0,360
     768:	0c000000 	jal	0 <func_80A1E5A0>
     76c:	e7a40010 	swc1	$f4,16(sp)
     770:	8e0f0154 	lw	t7,340(s0)
     774:	3c0e0600 	lui	t6,0x600
     778:	25ce6cf8 	addiu	t6,t6,27896
     77c:	15cf0012 	bne	t6,t7,7c8 <func_80A1ECD4+0x94>
     780:	2604014c 	addiu	a0,s0,332
     784:	8e05015c 	lw	a1,348(s0)
     788:	0c000000 	jal	0 <func_80A1E5A0>
     78c:	afa4003c 	sw	a0,60(sp)
     790:	54400159 	bnezl	v0,cf8 <func_80A1ECD4+0x5c4>
     794:	8fbf0034 	lw	ra,52(sp)
     798:	8e050118 	lw	a1,280(s0)
     79c:	26040024 	addiu	a0,s0,36
     7a0:	0c000000 	jal	0 <func_80A1E5A0>
     7a4:	24a50024 	addiu	a1,a1,36
     7a8:	e6000218 	swc1	$f0,536(s0)
     7ac:	3c050000 	lui	a1,0x0
     7b0:	24a50000 	addiu	a1,a1,0
     7b4:	8fa4003c 	lw	a0,60(sp)
     7b8:	0c000000 	jal	0 <func_80A1E5A0>
     7bc:	24060002 	li	a2,2
     7c0:	1000014d 	b	cf8 <func_80A1ECD4+0x5c4>
     7c4:	8fbf0034 	lw	ra,52(sp)
     7c8:	86180208 	lh	t8,520(s0)
     7cc:	57000023 	bnezl	t8,85c <func_80A1ECD4+0x128>
     7d0:	860d020a 	lh	t5,522(s0)
     7d4:	8619020a 	lh	t9,522(s0)
     7d8:	02002025 	move	a0,s0
     7dc:	5720001f 	bnezl	t9,85c <func_80A1ECD4+0x128>
     7e0:	860d020a 	lh	t5,522(s0)
     7e4:	0c000000 	jal	0 <func_80A1E5A0>
     7e8:	8fa5006c 	lw	a1,108(sp)
     7ec:	5040001b 	beqzl	v0,85c <func_80A1ECD4+0x128>
     7f0:	860d020a 	lh	t5,522(s0)
     7f4:	8e080118 	lw	t0,280(s0)
     7f8:	24053980 	li	a1,14720
     7fc:	02002025 	move	a0,s0
     800:	910900af 	lbu	t1,175(t0)
     804:	1920000d 	blez	t1,83c <func_80A1ECD4+0x108>
     808:	00000000 	nop
     80c:	920a0200 	lbu	t2,512(s0)
     810:	3c0140c0 	lui	at,0x40c0
     814:	15400004 	bnez	t2,828 <func_80A1ECD4+0xf4>
     818:	00000000 	nop
     81c:	44813000 	mtc1	at,$f6
     820:	00000000 	nop
     824:	e6060060 	swc1	$f6,96(s0)
     828:	0c000000 	jal	0 <func_80A1E5A0>
     82c:	02002025 	move	a0,s0
     830:	240b0014 	li	t3,20
     834:	10000005 	b	84c <func_80A1ECD4+0x118>
     838:	a60b0208 	sh	t3,520(s0)
     83c:	0c000000 	jal	0 <func_80A1E5A0>
     840:	24053980 	li	a1,14720
     844:	240c0006 	li	t4,6
     848:	a60c020a 	sh	t4,522(s0)
     84c:	44800000 	mtc1	zero,$f0
     850:	00000000 	nop
     854:	e6000068 	swc1	$f0,104(s0)
     858:	860d020a 	lh	t5,522(s0)
     85c:	44800000 	mtc1	zero,$f0
     860:	26040050 	addiu	a0,s0,80
     864:	11a00038 	beqz	t5,948 <func_80A1ECD4+0x214>
     868:	3c053ccc 	lui	a1,0x3ccc
     86c:	e6000168 	swc1	$f0,360(s0)
     870:	3c063da3 	lui	a2,0x3da3
     874:	3c073f19 	lui	a3,0x3f19
     878:	34e7999a 	ori	a3,a3,0x999a
     87c:	34c6d70a 	ori	a2,a2,0xd70a
     880:	e7a00010 	swc1	$f0,16(sp)
     884:	0c000000 	jal	0 <func_80A1E5A0>
     888:	34a5cccc 	ori	a1,a1,0xcccc
     88c:	02002025 	move	a0,s0
     890:	0c000000 	jal	0 <func_80A1E5A0>
     894:	8e050050 	lw	a1,80(s0)
     898:	920e0114 	lbu	t6,276(s0)
     89c:	02002025 	move	a0,s0
     8a0:	24054000 	li	a1,16384
     8a4:	15c00008 	bnez	t6,8c8 <func_80A1ECD4+0x194>
     8a8:	240600c8 	li	a2,200
     8ac:	860f020a 	lh	t7,522(s0)
     8b0:	00003825 	move	a3,zero
     8b4:	0c000000 	jal	0 <func_80A1E5A0>
     8b8:	afaf0010 	sw	t7,16(sp)
     8bc:	8618020a 	lh	t8,522(s0)
     8c0:	2719ffff 	addiu	t9,t8,-1
     8c4:	a619020a 	sh	t9,522(s0)
     8c8:	8608020a 	lh	t0,522(s0)
     8cc:	8fa5006c 	lw	a1,108(sp)
     8d0:	24060010 	li	a2,16
     8d4:	15000107 	bnez	t0,cf4 <func_80A1ECD4+0x5c0>
     8d8:	24a41c24 	addiu	a0,a1,7204
     8dc:	c60801f8 	lwc1	$f8,504(s0)
     8e0:	8e0701f4 	lw	a3,500(s0)
     8e4:	24090600 	li	t1,1536
     8e8:	e7a80010 	swc1	$f8,16(sp)
     8ec:	c60a01fc 	lwc1	$f10,508(s0)
     8f0:	afa00024 	sw	zero,36(sp)
     8f4:	afa90020 	sw	t1,32(sp)
     8f8:	afa0001c 	sw	zero,28(sp)
     8fc:	afa00018 	sw	zero,24(sp)
     900:	0c000000 	jal	0 <func_80A1E5A0>
     904:	e7aa0014 	swc1	$f10,20(sp)
     908:	50400003 	beqzl	v0,918 <func_80A1ECD4+0x1e4>
     90c:	8e020118 	lw	v0,280(s0)
     910:	a44001f8 	sh	zero,504(v0)
     914:	8e020118 	lw	v0,280(s0)
     918:	00002825 	move	a1,zero
     91c:	26060024 	addiu	a2,s0,36
     920:	844a001c 	lh	t2,28(v0)
     924:	240700a0 	li	a3,160
     928:	354b4000 	ori	t3,t2,0x4000
     92c:	a44b001c 	sh	t3,28(v0)
     930:	0c000000 	jal	0 <func_80A1E5A0>
     934:	8fa4006c 	lw	a0,108(sp)
     938:	0c000000 	jal	0 <func_80A1E5A0>
     93c:	02002025 	move	a0,s0
     940:	100000ed 	b	cf8 <func_80A1ECD4+0x5c4>
     944:	8fbf0034 	lw	ra,52(sp)
     948:	960c0088 	lhu	t4,136(s0)
     94c:	86020208 	lh	v0,520(s0)
     950:	02002025 	move	a0,s0
     954:	318d0001 	andi	t5,t4,0x1
     958:	11a00006 	beqz	t5,974 <func_80A1ECD4+0x240>
     95c:	24054000 	li	a1,16384
     960:	c6100060 	lwc1	$f16,96(s0)
     964:	3c014348 	lui	at,0x4348
     968:	4610003c 	c.lt.s	$f0,$f16
     96c:	00000000 	nop
     970:	45000006 	bc1f	98c <func_80A1ECD4+0x258>
     974:	240600c8 	li	a2,200
     978:	00003825 	move	a3,zero
     97c:	0c000000 	jal	0 <func_80A1E5A0>
     980:	afa20010 	sw	v0,16(sp)
     984:	100000dc 	b	cf8 <func_80A1ECD4+0x5c4>
     988:	8fbf0034 	lw	ra,52(sp)
     98c:	10400002 	beqz	v0,998 <func_80A1ECD4+0x264>
     990:	244effff 	addiu	t6,v0,-1
     994:	a60e0208 	sh	t6,520(s0)
     998:	44811000 	mtc1	at,$f2
     99c:	c6120218 	lwc1	$f18,536(s0)
     9a0:	3c010000 	lui	at,0x0
     9a4:	c4260000 	lwc1	$f6,0(at)
     9a8:	46121101 	sub.s	$f4,$f2,$f18
     9ac:	3c063e99 	lui	a2,0x3e99
     9b0:	34c6999a 	ori	a2,a2,0x999a
     9b4:	26040218 	addiu	a0,s0,536
     9b8:	4606203c 	c.lt.s	$f4,$f6
     9bc:	3c0742c8 	lui	a3,0x42c8
     9c0:	45020010 	bc1fl	a04 <func_80A1ECD4+0x2d0>
     9c4:	44051000 	mfc1	a1,$f2
     9c8:	86030212 	lh	v1,530(s0)
     9cc:	3c180000 	lui	t8,0x0
     9d0:	27180000 	addiu	t8,t8,0
     9d4:	14600003 	bnez	v1,9e4 <func_80A1ECD4+0x2b0>
     9d8:	246fffff 	addiu	t7,v1,-1
     9dc:	10000003 	b	9ec <func_80A1ECD4+0x2b8>
     9e0:	00001025 	move	v0,zero
     9e4:	a60f0212 	sh	t7,530(s0)
     9e8:	86020212 	lh	v0,530(s0)
     9ec:	54400005 	bnezl	v0,a04 <func_80A1ECD4+0x2d0>
     9f0:	44051000 	mfc1	a1,$f2
     9f4:	e6000068 	swc1	$f0,104(s0)
     9f8:	100000be 	b	cf4 <func_80A1ECD4+0x5c0>
     9fc:	ae180190 	sw	t8,400(s0)
     a00:	44051000 	mfc1	a1,$f2
     a04:	0c000000 	jal	0 <func_80A1E5A0>
     a08:	e7a00010 	swc1	$f0,16(sp)
     a0c:	86190214 	lh	t9,532(s0)
     a10:	3c063dcc 	lui	a2,0x3dcc
     a14:	27a40048 	addiu	a0,sp,72
     a18:	13200029 	beqz	t9,ac0 <func_80A1ECD4+0x38c>
     a1c:	02002825 	move	a1,s0
     a20:	44800000 	mtc1	zero,$f0
     a24:	26040068 	addiu	a0,s0,104
     a28:	afa4003c 	sw	a0,60(sp)
     a2c:	44050000 	mfc1	a1,$f0
     a30:	34c6cccd 	ori	a2,a2,0xcccd
     a34:	3c073f80 	lui	a3,0x3f80
     a38:	0c000000 	jal	0 <func_80A1E5A0>
     a3c:	e7a00010 	swc1	$f0,16(sp)
     a40:	86080032 	lh	t0,50(s0)
     a44:	860c00b6 	lh	t4,182(s0)
     a48:	44809000 	mtc1	zero,$f18
     a4c:	39098000 	xori	t1,t0,0x8000
     a50:	00095400 	sll	t2,t1,0x10
     a54:	000a5c03 	sra	t3,t2,0x10
     a58:	448b4000 	mtc1	t3,$f8
     a5c:	448c5000 	mtc1	t4,$f10
     a60:	3c063dcc 	lui	a2,0x3dcc
     a64:	468040a0 	cvt.s.w	$f2,$f8
     a68:	3c07461c 	lui	a3,0x461c
     a6c:	34e74000 	ori	a3,a3,0x4000
     a70:	34c6cccd 	ori	a2,a2,0xcccd
     a74:	27a4005c 	addiu	a0,sp,92
     a78:	46805420 	cvt.s.w	$f16,$f10
     a7c:	44051000 	mfc1	a1,$f2
     a80:	e7b20010 	swc1	$f18,16(sp)
     a84:	0c000000 	jal	0 <func_80A1E5A0>
     a88:	e7b0005c 	swc1	$f16,92(sp)
     a8c:	c7a4005c 	lwc1	$f4,92(sp)
     a90:	3c010000 	lui	at,0x0
     a94:	4600218d 	trunc.w.s	$f6,$f4
     a98:	440e3000 	mfc1	t6,$f6
     a9c:	00000000 	nop
     aa0:	a60e00b6 	sh	t6,182(s0)
     aa4:	c4280000 	lwc1	$f8,0(at)
     aa8:	4600403c 	c.lt.s	$f8,$f0
     aac:	00000000 	nop
     ab0:	45030091 	bc1tl	cf8 <func_80A1ECD4+0x5c4>
     ab4:	8fbf0034 	lw	ra,52(sp)
     ab8:	10000017 	b	b18 <func_80A1ECD4+0x3e4>
     abc:	a6000214 	sh	zero,532(s0)
     ac0:	8e060218 	lw	a2,536(s0)
     ac4:	0c000000 	jal	0 <func_80A1E5A0>
     ac8:	86070202 	lh	a3,514(s0)
     acc:	c7ac0048 	lwc1	$f12,72(sp)
     ad0:	0c000000 	jal	0 <func_80A1E5A0>
     ad4:	c7ae0050 	lwc1	$f14,80(sp)
     ad8:	3c010000 	lui	at,0x0
     adc:	c42a0000 	lwc1	$f10,0(at)
     ae0:	24180001 	li	t8,1
     ae4:	afb80010 	sw	t8,16(sp)
     ae8:	460a0402 	mul.s	$f16,$f0,$f10
     aec:	260400b6 	addiu	a0,s0,182
     af0:	24060004 	li	a2,4
     af4:	24070fa0 	li	a3,4000
     af8:	4600848d 	trunc.w.s	$f18,$f16
     afc:	44059000 	mfc1	a1,$f18
     b00:	00000000 	nop
     b04:	00052c00 	sll	a1,a1,0x10
     b08:	0c000000 	jal	0 <func_80A1E5A0>
     b0c:	00052c03 	sra	a1,a1,0x10
     b10:	26190068 	addiu	t9,s0,104
     b14:	afb9003c 	sw	t9,60(sp)
     b18:	8a0900b4 	lwl	t1,180(s0)
     b1c:	9a0900b7 	lwr	t1,183(s0)
     b20:	860a020e 	lh	t2,526(s0)
     b24:	02002025 	move	a0,s0
     b28:	aa090030 	swl	t1,48(s0)
     b2c:	ba090033 	swr	t1,51(s0)
     b30:	960900b8 	lhu	t1,184(s0)
     b34:	1540000a 	bnez	t2,b60 <func_80A1ECD4+0x42c>
     b38:	a6090034 	sh	t1,52(s0)
     b3c:	0c000000 	jal	0 <func_80A1E5A0>
     b40:	8fa5006c 	lw	a1,108(sp)
     b44:	10400006 	beqz	v0,b60 <func_80A1ECD4+0x42c>
     b48:	02002025 	move	a0,s0
     b4c:	0c000000 	jal	0 <func_80A1E5A0>
     b50:	2405398b 	li	a1,14731
     b54:	24020008 	li	v0,8
     b58:	a6020210 	sh	v0,528(s0)
     b5c:	a602020e 	sh	v0,526(s0)
     b60:	860b020e 	lh	t3,526(s0)
     b64:	8fa4003c 	lw	a0,60(sp)
     b68:	3c0540c0 	lui	a1,0x40c0
     b6c:	1160003e 	beqz	t3,c68 <func_80A1ECD4+0x534>
     b70:	3c063dcc 	lui	a2,0x3dcc
     b74:	86030210 	lh	v1,528(s0)
     b78:	02002025 	move	a0,s0
     b7c:	14600003 	bnez	v1,b8c <func_80A1ECD4+0x458>
     b80:	246cffff 	addiu	t4,v1,-1
     b84:	10000003 	b	b94 <func_80A1ECD4+0x460>
     b88:	00001025 	move	v0,zero
     b8c:	a60c0210 	sh	t4,528(s0)
     b90:	86020210 	lh	v0,528(s0)
     b94:	54400006 	bnezl	v0,bb0 <func_80A1ECD4+0x47c>
     b98:	44800000 	mtc1	zero,$f0
     b9c:	0c000000 	jal	0 <func_80A1E5A0>
     ba0:	24053982 	li	a1,14722
     ba4:	240d0004 	li	t5,4
     ba8:	a60d0210 	sh	t5,528(s0)
     bac:	44800000 	mtc1	zero,$f0
     bb0:	3c063dcc 	lui	a2,0x3dcc
     bb4:	34c6cccd 	ori	a2,a2,0xcccd
     bb8:	44050000 	mfc1	a1,$f0
     bbc:	8fa4003c 	lw	a0,60(sp)
     bc0:	3c073f80 	lui	a3,0x3f80
     bc4:	0c000000 	jal	0 <func_80A1E5A0>
     bc8:	e7a00010 	swc1	$f0,16(sp)
     bcc:	44802000 	mtc1	zero,$f4
     bd0:	0c000000 	jal	0 <func_80A1E5A0>
     bd4:	e6040168 	swc1	$f4,360(s0)
     bd8:	3c010000 	lui	at,0x0
     bdc:	c4220000 	lwc1	$f2,0(at)
     be0:	3c014100 	lui	at,0x4100
     be4:	44813000 	mtc1	at,$f6
     be8:	3c0141a0 	lui	at,0x41a0
     bec:	44814000 	mtc1	at,$f8
     bf0:	3c013f00 	lui	at,0x3f00
     bf4:	44815000 	mtc1	at,$f10
     bf8:	3c010000 	lui	at,0x0
     bfc:	c4240000 	lwc1	$f4,0(at)
     c00:	460a0401 	sub.s	$f16,$f0,$f10
     c04:	e7a60014 	swc1	$f6,20(sp)
     c08:	3c063e23 	lui	a2,0x3e23
     c0c:	240e0003 	li	t6,3
     c10:	46028482 	mul.s	$f18,$f16,$f2
     c14:	44071000 	mfc1	a3,$f2
     c18:	afae0010 	sw	t6,16(sp)
     c1c:	34c6d70a 	ori	a2,a2,0xd70a
     c20:	02002025 	move	a0,s0
     c24:	24050008 	li	a1,8
     c28:	e7a80018 	swc1	$f8,24(sp)
     c2c:	46049180 	add.s	$f6,$f18,$f4
     c30:	0c000000 	jal	0 <func_80A1E5A0>
     c34:	e7a6001c 	swc1	$f6,28(sp)
     c38:	860f020e 	lh	t7,526(s0)
     c3c:	25f8ffff 	addiu	t8,t7,-1
     c40:	a618020e 	sh	t8,526(s0)
     c44:	8619020e 	lh	t9,526(s0)
     c48:	5720002b 	bnezl	t9,cf8 <func_80A1ECD4+0x5c4>
     c4c:	8fbf0034 	lw	ra,52(sp)
     c50:	86090202 	lh	t1,514(s0)
     c54:	24080001 	li	t0,1
     c58:	a6080214 	sh	t0,532(s0)
     c5c:	00095023 	negu	t2,t1
     c60:	10000024 	b	cf4 <func_80A1ECD4+0x5c0>
     c64:	a60a0202 	sh	t2,514(s0)
     c68:	44804000 	mtc1	zero,$f8
     c6c:	34c6cccd 	ori	a2,a2,0xcccd
     c70:	3c073f80 	lui	a3,0x3f80
     c74:	0c000000 	jal	0 <func_80A1E5A0>
     c78:	e7a80010 	swc1	$f8,16(sp)
     c7c:	c60a0164 	lwc1	$f10,356(s0)
     c80:	24010001 	li	at,1
     c84:	02002025 	move	a0,s0
     c88:	4600540d 	trunc.w.s	$f16,$f10
     c8c:	44028000 	mfc1	v0,$f16
     c90:	00000000 	nop
     c94:	00021400 	sll	v0,v0,0x10
     c98:	00021403 	sra	v0,v0,0x10
     c9c:	10410003 	beq	v0,at,cac <func_80A1ECD4+0x578>
     ca0:	24010004 	li	at,4
     ca4:	54410014 	bnel	v0,at,cf8 <func_80A1ECD4+0x5c4>
     ca8:	8fbf0034 	lw	ra,52(sp)
     cac:	0c000000 	jal	0 <func_80A1E5A0>
     cb0:	2405397f 	li	a1,14719
     cb4:	3c0141a0 	lui	at,0x41a0
     cb8:	44812000 	mtc1	at,$f4
     cbc:	44809000 	mtc1	zero,$f18
     cc0:	44803000 	mtc1	zero,$f6
     cc4:	3c063e23 	lui	a2,0x3e23
     cc8:	3c073dcc 	lui	a3,0x3dcc
     ccc:	240c0001 	li	t4,1
     cd0:	afac0010 	sw	t4,16(sp)
     cd4:	34e7cccd 	ori	a3,a3,0xcccd
     cd8:	34c6d70a 	ori	a2,a2,0xd70a
     cdc:	02002025 	move	a0,s0
     ce0:	24050008 	li	a1,8
     ce4:	e7a40018 	swc1	$f4,24(sp)
     ce8:	e7b20014 	swc1	$f18,20(sp)
     cec:	0c000000 	jal	0 <func_80A1E5A0>
     cf0:	e7a6001c 	swc1	$f6,28(sp)
     cf4:	8fbf0034 	lw	ra,52(sp)
     cf8:	8fb00030 	lw	s0,48(sp)
     cfc:	27bd0068 	addiu	sp,sp,104
     d00:	03e00008 	jr	ra
     d04:	00000000 	nop

00000d08 <func_80A1F2A8>:
     d08:	27bdffc8 	addiu	sp,sp,-56
     d0c:	afb00020 	sw	s0,32(sp)
     d10:	00808025 	move	s0,a0
     d14:	afbf0024 	sw	ra,36(sp)
     d18:	afa5003c 	sw	a1,60(sp)
     d1c:	8e050118 	lw	a1,280(s0)
     d20:	24840024 	addiu	a0,a0,36
     d24:	afa4002c 	sw	a0,44(sp)
     d28:	0c000000 	jal	0 <func_80A1E5A0>
     d2c:	24a50008 	addiu	a1,a1,8
     d30:	00022c00 	sll	a1,v0,0x10
     d34:	240e0001 	li	t6,1
     d38:	a7a20036 	sh	v0,54(sp)
     d3c:	afae0010 	sw	t6,16(sp)
     d40:	00052c03 	sra	a1,a1,0x10
     d44:	260400b6 	addiu	a0,s0,182
     d48:	24060004 	li	a2,4
     d4c:	0c000000 	jal	0 <func_80A1E5A0>
     d50:	24070fa0 	li	a3,4000
     d54:	87af0036 	lh	t7,54(sp)
     d58:	861800b6 	lh	t8,182(s0)
     d5c:	01f81823 	subu	v1,t7,t8
     d60:	04600003 	bltz	v1,d70 <func_80A1F2A8+0x68>
     d64:	00031023 	negu	v0,v1
     d68:	10000001 	b	d70 <func_80A1F2A8+0x68>
     d6c:	00601025 	move	v0,v1
     d70:	28410065 	slti	at,v0,101
     d74:	5020001d 	beqzl	at,dec <func_80A1F2A8+0xe4>
     d78:	8fbf0024 	lw	ra,36(sp)
     d7c:	8a0800b4 	lwl	t0,180(s0)
     d80:	9a0800b7 	lwr	t0,183(s0)
     d84:	3c014160 	lui	at,0x4160
     d88:	44812000 	mtc1	at,$f4
     d8c:	aa080030 	swl	t0,48(s0)
     d90:	ba080033 	swr	t0,51(s0)
     d94:	960800b8 	lhu	t0,184(s0)
     d98:	e6040060 	swc1	$f4,96(s0)
     d9c:	02002025 	move	a0,s0
     da0:	a6080034 	sh	t0,52(s0)
     da4:	8fa9002c 	lw	t1,44(sp)
     da8:	2405386c 	li	a1,14444
     dac:	8d2b0000 	lw	t3,0(t1)
     db0:	ae0b0008 	sw	t3,8(s0)
     db4:	8d2a0004 	lw	t2,4(t1)
     db8:	ae0a000c 	sw	t2,12(s0)
     dbc:	8d2b0008 	lw	t3,8(t1)
     dc0:	0c000000 	jal	0 <func_80A1E5A0>
     dc4:	ae0b0010 	sw	t3,16(s0)
     dc8:	3c050000 	lui	a1,0x0
     dcc:	24a50000 	addiu	a1,a1,0
     dd0:	2604014c 	addiu	a0,s0,332
     dd4:	0c000000 	jal	0 <func_80A1E5A0>
     dd8:	24060001 	li	a2,1
     ddc:	3c0c0000 	lui	t4,0x0
     de0:	258c0000 	addiu	t4,t4,0
     de4:	ae0c0190 	sw	t4,400(s0)
     de8:	8fbf0024 	lw	ra,36(sp)
     dec:	8fb00020 	lw	s0,32(sp)
     df0:	27bd0038 	addiu	sp,sp,56
     df4:	03e00008 	jr	ra
     df8:	00000000 	nop

00000dfc <func_80A1F39C>:
     dfc:	27bdffd8 	addiu	sp,sp,-40
     e00:	afbf0024 	sw	ra,36(sp)
     e04:	afb00020 	sw	s0,32(sp)
     e08:	afa5002c 	sw	a1,44(sp)
     e0c:	948e0088 	lhu	t6,136(a0)
     e10:	3c063f19 	lui	a2,0x3f19
     e14:	00808025 	move	s0,a0
     e18:	31cf0001 	andi	t7,t6,0x1
     e1c:	11e0000e 	beqz	t7,e58 <func_80A1F39C+0x5c>
     e20:	34c6999a 	ori	a2,a2,0x999a
     e24:	44802000 	mtc1	zero,$f4
     e28:	c4860060 	lwc1	$f6,96(a0)
     e2c:	4604303e 	c.le.s	$f6,$f4
     e30:	00000000 	nop
     e34:	45020009 	bc1fl	e5c <func_80A1F39C+0x60>
     e38:	8e080118 	lw	t0,280(s0)
     e3c:	8c820118 	lw	v0,280(a0)
     e40:	8458001c 	lh	t8,28(v0)
     e44:	37198000 	ori	t9,t8,0x8000
     e48:	0c000000 	jal	0 <func_80A1E5A0>
     e4c:	a459001c 	sh	t9,28(v0)
     e50:	10000012 	b	e9c <func_80A1F39C+0xa0>
     e54:	8fbf0024 	lw	ra,36(sp)
     e58:	8e080118 	lw	t0,280(s0)
     e5c:	44804000 	mtc1	zero,$f8
     e60:	26040024 	addiu	a0,s0,36
     e64:	8d050008 	lw	a1,8(t0)
     e68:	3c074100 	lui	a3,0x4100
     e6c:	0c000000 	jal	0 <func_80A1E5A0>
     e70:	e7a80010 	swc1	$f8,16(sp)
     e74:	8e090118 	lw	t1,280(s0)
     e78:	44805000 	mtc1	zero,$f10
     e7c:	3c063f19 	lui	a2,0x3f19
     e80:	8d250010 	lw	a1,16(t1)
     e84:	34c6999a 	ori	a2,a2,0x999a
     e88:	2604002c 	addiu	a0,s0,44
     e8c:	3c074100 	lui	a3,0x4100
     e90:	0c000000 	jal	0 <func_80A1E5A0>
     e94:	e7aa0010 	swc1	$f10,16(sp)
     e98:	8fbf0024 	lw	ra,36(sp)
     e9c:	8fb00020 	lw	s0,32(sp)
     ea0:	27bd0028 	addiu	sp,sp,40
     ea4:	03e00008 	jr	ra
     ea8:	00000000 	nop

00000eac <EnFw_Update>:
     eac:	27bdffd8 	addiu	sp,sp,-40
     eb0:	afb0001c 	sw	s0,28(sp)
     eb4:	00808025 	move	s0,a0
     eb8:	afbf0024 	sw	ra,36(sp)
     ebc:	afb10020 	sw	s1,32(sp)
     ec0:	00a08825 	move	s1,a1
     ec4:	0c000000 	jal	0 <func_80A1E5A0>
     ec8:	2484014c 	addiu	a0,a0,332
     ecc:	8e0e0004 	lw	t6,4(s0)
     ed0:	24012000 	li	at,8192
     ed4:	31cf2000 	andi	t7,t6,0x2000
     ed8:	51e10028 	beql	t7,at,f7c <EnFw_Update+0xd0>
     edc:	8fbf0024 	lw	ra,36(sp)
     ee0:	0c000000 	jal	0 <func_80A1E5A0>
     ee4:	02002025 	move	a0,s0
     ee8:	44802000 	mtc1	zero,$f4
     eec:	24180005 	li	t8,5
     ef0:	afb80014 	sw	t8,20(sp)
     ef4:	02202025 	move	a0,s1
     ef8:	02002825 	move	a1,s0
     efc:	3c064120 	lui	a2,0x4120
     f00:	3c0741a0 	lui	a3,0x41a0
     f04:	0c000000 	jal	0 <func_80A1E5A0>
     f08:	e7a40010 	swc1	$f4,16(sp)
     f0c:	8e190190 	lw	t9,400(s0)
     f10:	02002025 	move	a0,s0
     f14:	02202825 	move	a1,s1
     f18:	0320f809 	jalr	t9
     f1c:	00000000 	nop
     f20:	86080208 	lh	t0,520(s0)
     f24:	5500000f 	bnezl	t0,f64 <EnFw_Update+0xb8>
     f28:	3c010001 	lui	at,0x1
     f2c:	8609020a 	lh	t1,522(s0)
     f30:	5520000c 	bnezl	t1,f64 <EnFw_Update+0xb8>
     f34:	3c010001 	lui	at,0x1
     f38:	8e0b0190 	lw	t3,400(s0)
     f3c:	3c0a0000 	lui	t2,0x0
     f40:	254a0000 	addiu	t2,t2,0
     f44:	154b0006 	bne	t2,t3,f60 <EnFw_Update+0xb4>
     f48:	02202025 	move	a0,s1
     f4c:	3c010001 	lui	at,0x1
     f50:	34211e60 	ori	at,at,0x1e60
     f54:	02212821 	addu	a1,s1,at
     f58:	0c000000 	jal	0 <func_80A1E5A0>
     f5c:	26060194 	addiu	a2,s0,404
     f60:	3c010001 	lui	at,0x1
     f64:	34211e60 	ori	at,at,0x1e60
     f68:	02212821 	addu	a1,s1,at
     f6c:	02202025 	move	a0,s1
     f70:	0c000000 	jal	0 <func_80A1E5A0>
     f74:	26060194 	addiu	a2,s0,404
     f78:	8fbf0024 	lw	ra,36(sp)
     f7c:	8fb0001c 	lw	s0,28(sp)
     f80:	8fb10020 	lw	s1,32(sp)
     f84:	03e00008 	jr	ra
     f88:	27bd0028 	addiu	sp,sp,40

00000f8c <func_80A1F52C>:
     f8c:	afa40000 	sw	a0,0(sp)
     f90:	afa50004 	sw	a1,4(sp)
     f94:	afa60008 	sw	a2,8(sp)
     f98:	afa7000c 	sw	a3,12(sp)
     f9c:	03e00008 	jr	ra
     fa0:	00001025 	move	v0,zero

00000fa4 <func_80A1F544>:
     fa4:	27bdffd8 	addiu	sp,sp,-40
     fa8:	3c0e0000 	lui	t6,0x0
     fac:	afbf0014 	sw	ra,20(sp)
     fb0:	afa40028 	sw	a0,40(sp)
     fb4:	afa5002c 	sw	a1,44(sp)
     fb8:	afa60030 	sw	a2,48(sp)
     fbc:	afa70034 	sw	a3,52(sp)
     fc0:	25ce0000 	addiu	t6,t6,0
     fc4:	8dd80000 	lw	t8,0(t6)
     fc8:	27a40018 	addiu	a0,sp,24
     fcc:	24010002 	li	at,2
     fd0:	ac980000 	sw	t8,0(a0)
     fd4:	8dcf0004 	lw	t7,4(t6)
     fd8:	00a03025 	move	a2,a1
     fdc:	ac8f0004 	sw	t7,4(a0)
     fe0:	8dd80008 	lw	t8,8(t6)
     fe4:	14a10007 	bne	a1,at,1004 <func_80A1F544+0x60>
     fe8:	ac980008 	sw	t8,8(a0)
     fec:	8fa50038 	lw	a1,56(sp)
     ff0:	afa6002c 	sw	a2,44(sp)
     ff4:	0c000000 	jal	0 <func_80A1E5A0>
     ff8:	24a501f4 	addiu	a1,a1,500
     ffc:	8fa6002c 	lw	a2,44(sp)
    1000:	27a40018 	addiu	a0,sp,24
    1004:	24010003 	li	at,3
    1008:	14c10005 	bne	a2,at,1020 <func_80A1F544+0x7c>
    100c:	8fa50038 	lw	a1,56(sp)
    1010:	24a50038 	addiu	a1,a1,56
    1014:	0c000000 	jal	0 <func_80A1E5A0>
    1018:	afa6002c 	sw	a2,44(sp)
    101c:	8fa6002c 	lw	a2,44(sp)
    1020:	8fa50038 	lw	a1,56(sp)
    1024:	00c02025 	move	a0,a2
    1028:	0c000000 	jal	0 <func_80A1E5A0>
    102c:	24a50194 	addiu	a1,a1,404
    1030:	8fbf0014 	lw	ra,20(sp)
    1034:	27bd0028 	addiu	sp,sp,40
    1038:	03e00008 	jr	ra
    103c:	00000000 	nop

00001040 <EnFw_Draw>:
    1040:	27bdffd0 	addiu	sp,sp,-48
    1044:	afbf002c 	sw	ra,44(sp)
    1048:	afb00028 	sw	s0,40(sp)
    104c:	00808025 	move	s0,a0
    1050:	0c000000 	jal	0 <func_80A1E5A0>
    1054:	afa50034 	sw	a1,52(sp)
    1058:	0c000000 	jal	0 <func_80A1E5A0>
    105c:	00000000 	nop
    1060:	02002025 	move	a0,s0
    1064:	0c000000 	jal	0 <func_80A1E5A0>
    1068:	8fa50034 	lw	a1,52(sp)
    106c:	0c000000 	jal	0 <func_80A1E5A0>
    1070:	00000000 	nop
    1074:	8fae0034 	lw	t6,52(sp)
    1078:	0c000000 	jal	0 <func_80A1E5A0>
    107c:	8dc40000 	lw	a0,0(t6)
    1080:	8e050150 	lw	a1,336(s0)
    1084:	8e06016c 	lw	a2,364(s0)
    1088:	9207014e 	lbu	a3,334(s0)
    108c:	3c0f0000 	lui	t7,0x0
    1090:	3c180000 	lui	t8,0x0
    1094:	27180000 	addiu	t8,t8,0
    1098:	25ef0000 	addiu	t7,t7,0
    109c:	afaf0010 	sw	t7,16(sp)
    10a0:	afb80014 	sw	t8,20(sp)
    10a4:	afb00018 	sw	s0,24(sp)
    10a8:	0c000000 	jal	0 <func_80A1E5A0>
    10ac:	8fa40034 	lw	a0,52(sp)
    10b0:	8fbf002c 	lw	ra,44(sp)
    10b4:	8fb00028 	lw	s0,40(sp)
    10b8:	27bd0030 	addiu	sp,sp,48
    10bc:	03e00008 	jr	ra
    10c0:	00000000 	nop

000010c4 <func_80A1F664>:
    10c4:	248202a0 	addiu	v0,a0,672
    10c8:	24040001 	li	a0,1
    10cc:	00001825 	move	v1,zero
    10d0:	904e0000 	lbu	t6,0(v0)
    10d4:	24630001 	addiu	v1,v1,1
    10d8:	00031c00 	sll	v1,v1,0x10
    10dc:	108e001d 	beq	a0,t6,1154 <func_80A1F664+0x90>
    10e0:	00031c03 	sra	v1,v1,0x10
    10e4:	c7a40014 	lwc1	$f4,20(sp)
    10e8:	24190001 	li	t9,1
    10ec:	e4440004 	swc1	$f4,4(v0)
    10f0:	c7a60018 	lwc1	$f6,24(sp)
    10f4:	e4460008 	swc1	$f6,8(v0)
    10f8:	93b80013 	lbu	t8,19(sp)
    10fc:	a0590000 	sb	t9,0(v0)
    1100:	a0580001 	sb	t8,1(v0)
    1104:	a0580002 	sb	t8,2(v0)
    1108:	8ca90000 	lw	t1,0(a1)
    110c:	ac490014 	sw	t1,20(v0)
    1110:	8ca80004 	lw	t0,4(a1)
    1114:	ac480018 	sw	t0,24(v0)
    1118:	8ca90008 	lw	t1,8(a1)
    111c:	ac49001c 	sw	t1,28(v0)
    1120:	8ceb0000 	lw	t3,0(a3)
    1124:	ac4b002c 	sw	t3,44(v0)
    1128:	8cea0004 	lw	t2,4(a3)
    112c:	ac4a0030 	sw	t2,48(v0)
    1130:	8ceb0008 	lw	t3,8(a3)
    1134:	ac4b0034 	sw	t3,52(v0)
    1138:	8ccd0000 	lw	t5,0(a2)
    113c:	ac4d0020 	sw	t5,32(v0)
    1140:	8ccc0004 	lw	t4,4(a2)
    1144:	ac4c0024 	sw	t4,36(v0)
    1148:	8ccd0008 	lw	t5,8(a2)
    114c:	03e00008 	jr	ra
    1150:	ac4d0028 	sw	t5,40(v0)
    1154:	28610014 	slti	at,v1,20
    1158:	1420ffdd 	bnez	at,10d0 <func_80A1F664+0xc>
    115c:	24420038 	addiu	v0,v0,56
    1160:	03e00008 	jr	ra
    1164:	00000000 	nop

00001168 <func_80A1F708>:
    1168:	27bdffd0 	addiu	sp,sp,-48
    116c:	f7b60018 	sdc1	$f22,24(sp)
    1170:	3c010000 	lui	at,0x0
    1174:	c4360000 	lwc1	$f22,0(at)
    1178:	afb10028 	sw	s1,40(sp)
    117c:	afb00024 	sw	s0,36(sp)
    1180:	f7b40010 	sdc1	$f20,16(sp)
    1184:	3c010000 	lui	at,0x0
    1188:	afbf002c 	sw	ra,44(sp)
    118c:	249002a0 	addiu	s0,a0,672
    1190:	c4340000 	lwc1	$f20,0(at)
    1194:	00008825 	move	s1,zero
    1198:	920e0000 	lbu	t6,0(s0)
    119c:	51c00029 	beqzl	t6,1244 <func_80A1F708+0xdc>
    11a0:	26310001 	addiu	s1,s1,1
    11a4:	920f0001 	lbu	t7,1(s0)
    11a8:	25f8ffff 	addiu	t8,t7,-1
    11ac:	331900ff 	andi	t9,t8,0xff
    11b0:	17200002 	bnez	t9,11bc <func_80A1F708+0x54>
    11b4:	a2180001 	sb	t8,1(s0)
    11b8:	a2000000 	sb	zero,0(s0)
    11bc:	0c000000 	jal	0 <func_80A1E5A0>
    11c0:	00000000 	nop
    11c4:	46140102 	mul.s	$f4,$f0,$f20
    11c8:	46162181 	sub.s	$f6,$f4,$f22
    11cc:	0c000000 	jal	0 <func_80A1E5A0>
    11d0:	e606002c 	swc1	$f6,44(s0)
    11d4:	c60c0020 	lwc1	$f12,32(s0)
    11d8:	c60a0014 	lwc1	$f10,20(s0)
    11dc:	46140202 	mul.s	$f8,$f0,$f20
    11e0:	c60e0024 	lwc1	$f14,36(s0)
    11e4:	460c5480 	add.s	$f18,$f10,$f12
    11e8:	c6040018 	lwc1	$f4,24(s0)
    11ec:	c6100028 	lwc1	$f16,40(s0)
    11f0:	e6120014 	swc1	$f18,20(s0)
    11f4:	c612002c 	lwc1	$f18,44(s0)
    11f8:	460e2180 	add.s	$f6,$f4,$f14
    11fc:	46164081 	sub.s	$f2,$f8,$f22
    1200:	c608001c 	lwc1	$f8,28(s0)
    1204:	e6060018 	swc1	$f6,24(s0)
    1208:	46126100 	add.s	$f4,$f12,$f18
    120c:	c6060030 	lwc1	$f6,48(s0)
    1210:	c6120004 	lwc1	$f18,4(s0)
    1214:	46104280 	add.s	$f10,$f8,$f16
    1218:	e6040020 	swc1	$f4,32(s0)
    121c:	c6040008 	lwc1	$f4,8(s0)
    1220:	46067200 	add.s	$f8,$f14,$f6
    1224:	e60a001c 	swc1	$f10,28(s0)
    1228:	e6020034 	swc1	$f2,52(s0)
    122c:	46028280 	add.s	$f10,$f16,$f2
    1230:	e6080024 	swc1	$f8,36(s0)
    1234:	46049180 	add.s	$f6,$f18,$f4
    1238:	e60a0028 	swc1	$f10,40(s0)
    123c:	e6060004 	swc1	$f6,4(s0)
    1240:	26310001 	addiu	s1,s1,1
    1244:	00118c00 	sll	s1,s1,0x10
    1248:	00118c03 	sra	s1,s1,0x10
    124c:	2a210014 	slti	at,s1,20
    1250:	1420ffd1 	bnez	at,1198 <func_80A1F708+0x30>
    1254:	26100038 	addiu	s0,s0,56
    1258:	8fbf002c 	lw	ra,44(sp)
    125c:	d7b40010 	ldc1	$f20,16(sp)
    1260:	d7b60018 	ldc1	$f22,24(sp)
    1264:	8fb00024 	lw	s0,36(sp)
    1268:	8fb10028 	lw	s1,40(sp)
    126c:	03e00008 	jr	ra
    1270:	27bd0030 	addiu	sp,sp,48

00001274 <func_80A1F814>:
    1274:	27bdff58 	addiu	sp,sp,-168
    1278:	afbe0050 	sw	s8,80(sp)
    127c:	00a0f025 	move	s8,a1
    1280:	afbf0054 	sw	ra,84(sp)
    1284:	afb7004c 	sw	s7,76(sp)
    1288:	afb60048 	sw	s6,72(sp)
    128c:	afb50044 	sw	s5,68(sp)
    1290:	afb40040 	sw	s4,64(sp)
    1294:	afb3003c 	sw	s3,60(sp)
    1298:	afb20038 	sw	s2,56(sp)
    129c:	afb10034 	sw	s1,52(sp)
    12a0:	afb00030 	sw	s0,48(sp)
    12a4:	f7b80028 	sdc1	$f24,40(sp)
    12a8:	f7b60020 	sdc1	$f22,32(sp)
    12ac:	f7b40018 	sdc1	$f20,24(sp)
    12b0:	8ca50000 	lw	a1,0(a1)
    12b4:	249202a0 	addiu	s2,a0,672
    12b8:	3c060000 	lui	a2,0x0
    12bc:	24c60000 	addiu	a2,a2,0
    12c0:	27a40088 	addiu	a0,sp,136
    12c4:	240704a7 	li	a3,1191
    12c8:	0c000000 	jal	0 <func_80A1E5A0>
    12cc:	00a08025 	move	s0,a1
    12d0:	0000b825 	move	s7,zero
    12d4:	0c000000 	jal	0 <func_80A1E5A0>
    12d8:	8fc40000 	lw	a0,0(s8)
    12dc:	3c014100 	lui	at,0x4100
    12e0:	4481c000 	mtc1	at,$f24
    12e4:	3c013f80 	lui	at,0x3f80
    12e8:	4481b000 	mtc1	at,$f22
    12ec:	3c01437f 	lui	at,0x437f
    12f0:	4481a000 	mtc1	at,$f20
    12f4:	0000a025 	move	s4,zero
    12f8:	3c16de00 	lui	s6,0xde00
    12fc:	924e0000 	lbu	t6,0(s2)
    1300:	3c010001 	lui	at,0x1
    1304:	34211da0 	ori	at,at,0x1da0
    1308:	11c0008a 	beqz	t6,1534 <func_80A1F814+0x2c0>
    130c:	03c19821 	addu	s3,s8,at
    1310:	3c150600 	lui	s5,0x600
    1314:	16e00014 	bnez	s7,1368 <func_80A1F814+0xf4>
    1318:	26b57938 	addiu	s5,s5,31032
    131c:	3c110600 	lui	s1,0x600
    1320:	26317928 	addiu	s1,s1,31016
    1324:	8e0402d0 	lw	a0,720(s0)
    1328:	00002825 	move	a1,zero
    132c:	0c000000 	jal	0 <func_80A1E5A0>
    1330:	24170001 	li	s7,1
    1334:	ae0202d0 	sw	v0,720(s0)
    1338:	244f0008 	addiu	t7,v0,8
    133c:	ae0f02d0 	sw	t7,720(s0)
    1340:	ac510004 	sw	s1,4(v0)
    1344:	ac560000 	sw	s6,0(v0)
    1348:	8e0202d0 	lw	v0,720(s0)
    134c:	3c08643c 	lui	t0,0x643c
    1350:	35081400 	ori	t0,t0,0x1400
    1354:	24580008 	addiu	t8,v0,8
    1358:	ae1802d0 	sw	t8,720(s0)
    135c:	3c19fb00 	lui	t9,0xfb00
    1360:	ac590000 	sw	t9,0(v0)
    1364:	ac480004 	sw	t0,4(v0)
    1368:	92490001 	lbu	t1,1(s2)
    136c:	3c014f80 	lui	at,0x4f80
    1370:	44892000 	mtc1	t1,$f4
    1374:	05210004 	bgez	t1,1388 <func_80A1F814+0x114>
    1378:	468021a0 	cvt.s.w	$f6,$f4
    137c:	44814000 	mtc1	at,$f8
    1380:	00000000 	nop
    1384:	46083180 	add.s	$f6,$f6,$f8
    1388:	924a0002 	lbu	t2,2(s2)
    138c:	3c014f80 	lui	at,0x4f80
    1390:	448a5000 	mtc1	t2,$f10
    1394:	05410004 	bgez	t2,13a8 <func_80A1F814+0x134>
    1398:	46805420 	cvt.s.w	$f16,$f10
    139c:	44819000 	mtc1	at,$f18
    13a0:	00000000 	nop
    13a4:	46128400 	add.s	$f16,$f16,$f18
    13a8:	4610a103 	div.s	$f4,$f20,$f16
    13ac:	8e0202d0 	lw	v0,720(s0)
    13b0:	3c01aa82 	lui	at,0xaa82
    13b4:	34215a00 	ori	at,at,0x5a00
    13b8:	244c0008 	addiu	t4,v0,8
    13bc:	ae0c02d0 	sw	t4,720(s0)
    13c0:	3c0dfa00 	lui	t5,0xfa00
    13c4:	ac4d0000 	sw	t5,0(v0)
    13c8:	3c19e700 	lui	t9,0xe700
    13cc:	00003825 	move	a3,zero
    13d0:	46043202 	mul.s	$f8,$f6,$f4
    13d4:	4600428d 	trunc.w.s	$f10,$f8
    13d8:	44045000 	mfc1	a0,$f10
    13dc:	00000000 	nop
    13e0:	00042400 	sll	a0,a0,0x10
    13e4:	00042403 	sra	a0,a0,0x10
    13e8:	308e00ff 	andi	t6,a0,0xff
    13ec:	01c17825 	or	t7,t6,at
    13f0:	ac4f0004 	sw	t7,4(v0)
    13f4:	8e0202d0 	lw	v0,720(s0)
    13f8:	24580008 	addiu	t8,v0,8
    13fc:	ae1802d0 	sw	t8,720(s0)
    1400:	ac400004 	sw	zero,4(v0)
    1404:	ac590000 	sw	t9,0(v0)
    1408:	8e46001c 	lw	a2,28(s2)
    140c:	c64e0018 	lwc1	$f14,24(s2)
    1410:	0c000000 	jal	0 <func_80A1E5A0>
    1414:	c64c0014 	lwc1	$f12,20(s2)
    1418:	0c000000 	jal	0 <func_80A1E5A0>
    141c:	02602025 	move	a0,s3
    1420:	c64c0004 	lwc1	$f12,4(s2)
    1424:	4406b000 	mfc1	a2,$f22
    1428:	24070001 	li	a3,1
    142c:	0c000000 	jal	0 <func_80A1E5A0>
    1430:	46006386 	mov.s	$f14,$f12
    1434:	8e0202d0 	lw	v0,720(s0)
    1438:	3c09da38 	lui	t1,0xda38
    143c:	35290003 	ori	t1,t1,0x3
    1440:	24480008 	addiu	t0,v0,8
    1444:	ae0802d0 	sw	t0,720(s0)
    1448:	3c050000 	lui	a1,0x0
    144c:	ac490000 	sw	t1,0(v0)
    1450:	8fc40000 	lw	a0,0(s8)
    1454:	24a50000 	addiu	a1,a1,0
    1458:	240604cd 	li	a2,1229
    145c:	0c000000 	jal	0 <func_80A1E5A0>
    1460:	00408825 	move	s1,v0
    1464:	ae220004 	sw	v0,4(s1)
    1468:	924a0001 	lbu	t2,1(s2)
    146c:	3c014f80 	lui	at,0x4f80
    1470:	448a9000 	mtc1	t2,$f18
    1474:	05410004 	bgez	t2,1488 <func_80A1F814+0x214>
    1478:	46809420 	cvt.s.w	$f16,$f18
    147c:	44813000 	mtc1	at,$f6
    1480:	00000000 	nop
    1484:	46068400 	add.s	$f16,$f16,$f6
    1488:	924b0002 	lbu	t3,2(s2)
    148c:	3c014f80 	lui	at,0x4f80
    1490:	448b2000 	mtc1	t3,$f4
    1494:	05610004 	bgez	t3,14a8 <func_80A1F814+0x234>
    1498:	46802220 	cvt.s.w	$f8,$f4
    149c:	44815000 	mtc1	at,$f10
    14a0:	00000000 	nop
    14a4:	460a4200 	add.s	$f8,$f8,$f10
    14a8:	4608c483 	div.s	$f18,$f24,$f8
    14ac:	8e0202d0 	lw	v0,720(s0)
    14b0:	3c0edb06 	lui	t6,0xdb06
    14b4:	35ce0020 	ori	t6,t6,0x20
    14b8:	244d0008 	addiu	t5,v0,8
    14bc:	ae0d02d0 	sw	t5,720(s0)
    14c0:	3c040000 	lui	a0,0x0
    14c4:	ac4e0000 	sw	t6,0(v0)
    14c8:	3c0a0000 	lui	t2,0x0
    14cc:	3c0100ff 	lui	at,0xff
    14d0:	3421ffff 	ori	at,at,0xffff
    14d4:	46128182 	mul.s	$f6,$f16,$f18
    14d8:	4600310d 	trunc.w.s	$f4,$f6
    14dc:	44052000 	mfc1	a1,$f4
    14e0:	00000000 	nop
    14e4:	00052c00 	sll	a1,a1,0x10
    14e8:	00052c03 	sra	a1,a1,0x10
    14ec:	00057880 	sll	t7,a1,0x2
    14f0:	008f2021 	addu	a0,a0,t7
    14f4:	8c840000 	lw	a0,0(a0)
    14f8:	0004c900 	sll	t9,a0,0x4
    14fc:	00194702 	srl	t0,t9,0x1c
    1500:	00084880 	sll	t1,t0,0x2
    1504:	01495021 	addu	t2,t2,t1
    1508:	8d4a0000 	lw	t2,0(t2)
    150c:	0081c024 	and	t8,a0,at
    1510:	3c018000 	lui	at,0x8000
    1514:	030a5821 	addu	t3,t8,t2
    1518:	01616021 	addu	t4,t3,at
    151c:	ac4c0004 	sw	t4,4(v0)
    1520:	8e0202d0 	lw	v0,720(s0)
    1524:	244d0008 	addiu	t5,v0,8
    1528:	ae0d02d0 	sw	t5,720(s0)
    152c:	ac550004 	sw	s5,4(v0)
    1530:	ac560000 	sw	s6,0(v0)
    1534:	26940001 	addiu	s4,s4,1
    1538:	0014a400 	sll	s4,s4,0x10
    153c:	0014a403 	sra	s4,s4,0x10
    1540:	2a810014 	slti	at,s4,20
    1544:	1420ff6d 	bnez	at,12fc <func_80A1F814+0x88>
    1548:	26520038 	addiu	s2,s2,56
    154c:	3c060000 	lui	a2,0x0
    1550:	24c60000 	addiu	a2,a2,0
    1554:	27a40088 	addiu	a0,sp,136
    1558:	8fc50000 	lw	a1,0(s8)
    155c:	0c000000 	jal	0 <func_80A1E5A0>
    1560:	240704db 	li	a3,1243
    1564:	8fbf0054 	lw	ra,84(sp)
    1568:	d7b40018 	ldc1	$f20,24(sp)
    156c:	d7b60020 	ldc1	$f22,32(sp)
    1570:	d7b80028 	ldc1	$f24,40(sp)
    1574:	8fb00030 	lw	s0,48(sp)
    1578:	8fb10034 	lw	s1,52(sp)
    157c:	8fb20038 	lw	s2,56(sp)
    1580:	8fb3003c 	lw	s3,60(sp)
    1584:	8fb40040 	lw	s4,64(sp)
    1588:	8fb50044 	lw	s5,68(sp)
    158c:	8fb60048 	lw	s6,72(sp)
    1590:	8fb7004c 	lw	s7,76(sp)
    1594:	8fbe0050 	lw	s8,80(sp)
    1598:	03e00008 	jr	ra
    159c:	27bd00a8 	addiu	sp,sp,168
