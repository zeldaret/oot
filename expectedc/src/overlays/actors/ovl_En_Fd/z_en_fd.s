
build/src/overlays/actors/ovl_En_Fd/z_en_fd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A0B6C0>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afbf003c 	sw	ra,60(sp)
       8:	afb00038 	sw	s0,56(sp)
       c:	848e04c2 	lh	t6,1218(a0)
      10:	00808025 	move	s0,a0
      14:	00a03025 	move	a2,a1
      18:	51c00004 	beqzl	t6,2c <func_80A0B6C0+0x2c>
      1c:	c60404d0 	lwc1	$f4,1232(s0)
      20:	10000030 	b	e4 <func_80A0B6C0+0xe4>
      24:	00001025 	move	v0,zero
      28:	c60404d0 	lwc1	$f4,1232(s0)
      2c:	24c41c24 	addiu	a0,a2,7204
      30:	02002825 	move	a1,s0
      34:	e7a40010 	swc1	$f4,16(sp)
      38:	c60604d4 	lwc1	$f6,1236(s0)
      3c:	240700ab 	li	a3,171
      40:	e7a60014 	swc1	$f6,20(sp)
      44:	c60804d8 	lwc1	$f8,1240(s0)
      48:	afa0001c 	sw	zero,28(sp)
      4c:	e7a80018 	swc1	$f8,24(sp)
      50:	860f00b6 	lh	t7,182(s0)
      54:	afa00024 	sw	zero,36(sp)
      58:	afaf0020 	sw	t7,32(sp)
      5c:	861804ba 	lh	t8,1210(s0)
      60:	afa60044 	sw	a2,68(sp)
      64:	0c000000 	jal	0 <func_80A0B6C0>
      68:	afb80028 	sw	t8,40(sp)
      6c:	54400004 	bnezl	v0,80 <func_80A0B6C0+0x80>
      70:	921900af 	lbu	t9,175(s0)
      74:	1000001b 	b	e4 <func_80A0B6C0+0xe4>
      78:	00001025 	move	v0,zero
      7c:	921900af 	lbu	t9,175(s0)
      80:	8e09011c 	lw	t1,284(s0)
      84:	240b0008 	li	t3,8
      88:	07210004 	bgez	t9,9c <func_80A0B6C0+0x9c>
      8c:	33280007 	andi	t0,t9,0x7
      90:	11000002 	beqz	t0,9c <func_80A0B6C0+0x9c>
      94:	00000000 	nop
      98:	2508fff8 	addiu	t0,t0,-8
      9c:	a12800af 	sb	t0,175(t1)
      a0:	8e02011c 	lw	v0,284(s0)
      a4:	02002825 	move	a1,s0
      a8:	904a00af 	lbu	t2,175(v0)
      ac:	55400003 	bnezl	t2,bc <func_80A0B6C0+0xbc>
      b0:	8e0c0004 	lw	t4,4(s0)
      b4:	a04b00af 	sb	t3,175(v0)
      b8:	8e0c0004 	lw	t4,4(s0)
      bc:	24012000 	li	at,8192
      c0:	8fa40044 	lw	a0,68(sp)
      c4:	318d2000 	andi	t5,t4,0x2000
      c8:	55a10004 	bnel	t5,at,dc <func_80A0B6C0+0xdc>
      cc:	240e0001 	li	t6,1
      d0:	0c000000 	jal	0 <func_80A0B6C0>
      d4:	8e06011c 	lw	a2,284(s0)
      d8:	240e0001 	li	t6,1
      dc:	a20e04b4 	sb	t6,1204(s0)
      e0:	24020001 	li	v0,1
      e4:	8fbf003c 	lw	ra,60(sp)
      e8:	8fb00038 	lw	s0,56(sp)
      ec:	27bd0040 	addiu	sp,sp,64
      f0:	03e00008 	jr	ra
      f4:	00000000 	nop

000000f8 <func_80A0B7B8>:
      f8:	27bdff98 	addiu	sp,sp,-104
      fc:	afb20054 	sw	s2,84(sp)
     100:	00069400 	sll	s2,a2,0x10
     104:	afa70074 	sw	a3,116(sp)
     108:	00073c00 	sll	a3,a3,0x10
     10c:	00129403 	sra	s2,s2,0x10
     110:	afb30058 	sw	s3,88(sp)
     114:	afb10050 	sw	s1,80(sp)
     118:	afb0004c 	sw	s0,76(sp)
     11c:	00808825 	move	s1,a0
     120:	00a09825 	move	s3,a1
     124:	00073c03 	sra	a3,a3,0x10
     128:	afbf0064 	sw	ra,100(sp)
     12c:	afb50060 	sw	s5,96(sp)
     130:	afb4005c 	sw	s4,92(sp)
     134:	f7b80040 	sdc1	$f24,64(sp)
     138:	f7b60038 	sdc1	$f22,56(sp)
     13c:	f7b40030 	sdc1	$f20,48(sp)
     140:	afa60070 	sw	a2,112(sp)
     144:	1a400028 	blez	s2,1e8 <func_80A0B7B8+0xf0>
     148:	00008025 	move	s0,zero
     14c:	3c010000 	lui	at,0x0
     150:	44922000 	mtc1	s2,$f4
     154:	c4380000 	lwc1	$f24,0(at)
     158:	3c0143b4 	lui	at,0x43b4
     15c:	4481b000 	mtc1	at,$f22
     160:	24b41c24 	addiu	s4,a1,7204
     164:	0007abc0 	sll	s5,a3,0xf
     168:	46802520 	cvt.s.w	$f20,$f4
     16c:	44903000 	mtc1	s0,$f6
     170:	8628008a 	lh	t0,138(s1)
     174:	02b04825 	or	t1,s5,s0
     178:	46803220 	cvt.s.w	$f8,$f6
     17c:	c6260024 	lwc1	$f6,36(s1)
     180:	02802025 	move	a0,s4
     184:	02202825 	move	a1,s1
     188:	e7a60010 	swc1	$f6,16(sp)
     18c:	02603025 	move	a2,s3
     190:	46164282 	mul.s	$f10,$f8,$f22
     194:	c6280028 	lwc1	$f8,40(s1)
     198:	240700a3 	li	a3,163
     19c:	e7a80014 	swc1	$f8,20(sp)
     1a0:	46145403 	div.s	$f16,$f10,$f20
     1a4:	c62a002c 	lwc1	$f10,44(s1)
     1a8:	afa90028 	sw	t1,40(sp)
     1ac:	afa00024 	sw	zero,36(sp)
     1b0:	afa0001c 	sw	zero,28(sp)
     1b4:	e7aa0018 	swc1	$f10,24(sp)
     1b8:	46188482 	mul.s	$f18,$f16,$f24
     1bc:	4600910d 	trunc.w.s	$f4,$f18
     1c0:	44192000 	mfc1	t9,$f4
     1c4:	00000000 	nop
     1c8:	03281021 	addu	v0,t9,t0
     1cc:	00021400 	sll	v0,v0,0x10
     1d0:	00021403 	sra	v0,v0,0x10
     1d4:	0c000000 	jal	0 <func_80A0B6C0>
     1d8:	afa20020 	sw	v0,32(sp)
     1dc:	26100001 	addiu	s0,s0,1
     1e0:	5612ffe3 	bnel	s0,s2,170 <func_80A0B7B8+0x78>
     1e4:	44903000 	mtc1	s0,$f6
     1e8:	8fbf0064 	lw	ra,100(sp)
     1ec:	d7b40030 	ldc1	$f20,48(sp)
     1f0:	d7b60038 	ldc1	$f22,56(sp)
     1f4:	d7b80040 	ldc1	$f24,64(sp)
     1f8:	8fb0004c 	lw	s0,76(sp)
     1fc:	8fb10050 	lw	s1,80(sp)
     200:	8fb20054 	lw	s2,84(sp)
     204:	8fb30058 	lw	s3,88(sp)
     208:	8fb4005c 	lw	s4,92(sp)
     20c:	8fb50060 	lw	s5,96(sp)
     210:	03e00008 	jr	ra
     214:	27bd0068 	addiu	sp,sp,104

00000218 <func_80A0B8D8>:
     218:	27bdffb0 	addiu	sp,sp,-80
     21c:	3c0f0000 	lui	t7,0x0
     220:	afbf0024 	sw	ra,36(sp)
     224:	afa50054 	sw	a1,84(sp)
     228:	25ef0000 	addiu	t7,t7,0
     22c:	8df90000 	lw	t9,0(t7)
     230:	27ae0044 	addiu	t6,sp,68
     234:	8df80004 	lw	t8,4(t7)
     238:	add90000 	sw	t9,0(t6)
     23c:	8df90008 	lw	t9,8(t7)
     240:	3c090000 	lui	t1,0x0
     244:	25290000 	addiu	t1,t1,0
     248:	add80004 	sw	t8,4(t6)
     24c:	add90008 	sw	t9,8(t6)
     250:	8d2b0000 	lw	t3,0(t1)
     254:	27a80038 	addiu	t0,sp,56
     258:	8d2a0004 	lw	t2,4(t1)
     25c:	ad0b0000 	sw	t3,0(t0)
     260:	8d2b0008 	lw	t3,8(t1)
     264:	3c0d0000 	lui	t5,0x0
     268:	25ad0000 	addiu	t5,t5,0
     26c:	ad0a0004 	sw	t2,4(t0)
     270:	ad0b0008 	sw	t3,8(t0)
     274:	8daf0000 	lw	t7,0(t5)
     278:	27ac002c 	addiu	t4,sp,44
     27c:	8dae0004 	lw	t6,4(t5)
     280:	ad8f0000 	sw	t7,0(t4)
     284:	8daf0008 	lw	t7,8(t5)
     288:	ad8e0004 	sw	t6,4(t4)
     28c:	3c180000 	lui	t8,0x0
     290:	ad8f0008 	sw	t7,8(t4)
     294:	8c820190 	lw	v0,400(a0)
     298:	27180000 	addiu	t8,t8,0
     29c:	3c190000 	lui	t9,0x0
     2a0:	13020003 	beq	t8,v0,2b0 <func_80A0B8D8+0x98>
     2a4:	27390000 	addiu	t9,t9,0
     2a8:	57220033 	bnel	t9,v0,378 <func_80A0B8D8+0x160>
     2ac:	8fbf0024 	lw	ra,36(sp)
     2b0:	c4840024 	lwc1	$f4,36(a0)
     2b4:	3c014080 	lui	at,0x4080
     2b8:	44814000 	mtc1	at,$f8
     2bc:	e7a40044 	swc1	$f4,68(sp)
     2c0:	c4860080 	lwc1	$f6,128(a0)
     2c4:	46083280 	add.s	$f10,$f6,$f8
     2c8:	e7aa0048 	swc1	$f10,72(sp)
     2cc:	c490002c 	lwc1	$f16,44(a0)
     2d0:	afa40050 	sw	a0,80(sp)
     2d4:	0c000000 	jal	0 <func_80A0B6C0>
     2d8:	e7b0004c 	swc1	$f16,76(sp)
     2dc:	3c013f00 	lui	at,0x3f00
     2e0:	44819000 	mtc1	at,$f18
     2e4:	00000000 	nop
     2e8:	46120081 	sub.s	$f2,$f0,$f18
     2ec:	46021100 	add.s	$f4,$f2,$f2
     2f0:	0c000000 	jal	0 <func_80A0B6C0>
     2f4:	e7a4002c 	swc1	$f4,44(sp)
     2f8:	3c013f00 	lui	at,0x3f00
     2fc:	44813000 	mtc1	at,$f6
     300:	3c010000 	lui	at,0x0
     304:	c42a0000 	lwc1	$f10,0(at)
     308:	46060201 	sub.s	$f8,$f0,$f6
     30c:	3c010000 	lui	at,0x0
     310:	c4320000 	lwc1	$f18,0(at)
     314:	460a4402 	mul.s	$f16,$f8,$f10
     318:	46128100 	add.s	$f4,$f16,$f18
     31c:	0c000000 	jal	0 <func_80A0B6C0>
     320:	e7a40030 	swc1	$f4,48(sp)
     324:	3c013f00 	lui	at,0x3f00
     328:	44813000 	mtc1	at,$f6
     32c:	3c010000 	lui	at,0x0
     330:	c42a0000 	lwc1	$f10,0(at)
     334:	46060081 	sub.s	$f2,$f0,$f6
     338:	3c010000 	lui	at,0x0
     33c:	c4300000 	lwc1	$f16,0(at)
     340:	27a8002c 	addiu	t0,sp,44
     344:	46021200 	add.s	$f8,$f2,$f2
     348:	24090008 	li	t1,8
     34c:	8fa40050 	lw	a0,80(sp)
     350:	afa90014 	sw	t1,20(sp)
     354:	e7a80034 	swc1	$f8,52(sp)
     358:	afa80010 	sw	t0,16(sp)
     35c:	24050001 	li	a1,1
     360:	27a60044 	addiu	a2,sp,68
     364:	27a70038 	addiu	a3,sp,56
     368:	e7aa0018 	swc1	$f10,24(sp)
     36c:	0c000000 	jal	0 <func_80A0B6C0>
     370:	e7b0001c 	swc1	$f16,28(sp)
     374:	8fbf0024 	lw	ra,36(sp)
     378:	27bd0050 	addiu	sp,sp,80
     37c:	03e00008 	jr	ra
     380:	00000000 	nop

00000384 <func_80A0BA44>:
     384:	8c820190 	lw	v0,400(a0)
     388:	3c0e0000 	lui	t6,0x0
     38c:	25ce0000 	addiu	t6,t6,0
     390:	11c2000a 	beq	t6,v0,3bc <func_80A0BA44+0x38>
     394:	3c0f0000 	lui	t7,0x0
     398:	25ef0000 	addiu	t7,t7,0
     39c:	11e20007 	beq	t7,v0,3bc <func_80A0BA44+0x38>
     3a0:	3c180000 	lui	t8,0x0
     3a4:	27180000 	addiu	t8,t8,0
     3a8:	13020004 	beq	t8,v0,3bc <func_80A0BA44+0x38>
     3ac:	3c190000 	lui	t9,0x0
     3b0:	27390000 	addiu	t9,t9,0
     3b4:	57220004 	bnel	t9,v0,3c8 <func_80A0BA44+0x44>
     3b8:	90a81c26 	lbu	t0,7206(a1)
     3bc:	03e00008 	jr	ra
     3c0:	00001025 	move	v0,zero
     3c4:	90a81c26 	lbu	t0,7206(a1)
     3c8:	3c014396 	lui	at,0x4396
     3cc:	00001025 	move	v0,zero
     3d0:	11000011 	beqz	t0,418 <func_80A0BA44+0x94>
     3d4:	00000000 	nop
     3d8:	c4840090 	lwc1	$f4,144(a0)
     3dc:	44813000 	mtc1	at,$f6
     3e0:	3c014270 	lui	at,0x4270
     3e4:	4606203c 	c.lt.s	$f4,$f6
     3e8:	00000000 	nop
     3ec:	4500000a 	bc1f	418 <func_80A0BA44+0x94>
     3f0:	00000000 	nop
     3f4:	c4880094 	lwc1	$f8,148(a0)
     3f8:	44815000 	mtc1	at,$f10
     3fc:	00000000 	nop
     400:	460a403c 	c.lt.s	$f8,$f10
     404:	00000000 	nop
     408:	45000003 	bc1f	418 <func_80A0BA44+0x94>
     40c:	00000000 	nop
     410:	03e00008 	jr	ra
     414:	24020001 	li	v0,1
     418:	03e00008 	jr	ra
     41c:	00000000 	nop

00000420 <func_80A0BAE0>:
     420:	27bdffd0 	addiu	sp,sp,-48
     424:	afbf0024 	sw	ra,36(sp)
     428:	afb00020 	sw	s0,32(sp)
     42c:	afa50034 	sw	a1,52(sp)
     430:	908201a5 	lbu	v0,421(a0)
     434:	00808025 	move	s0,a0
     438:	8ca61c44 	lw	a2,7236(a1)
     43c:	304f0002 	andi	t7,v0,0x2
     440:	55e00007 	bnezl	t7,460 <func_80A0BAE0+0x40>
     444:	861904c2 	lh	t9,1218(s0)
     448:	0c000000 	jal	0 <func_80A0B6C0>
     44c:	afa6002c 	sw	a2,44(sp)
     450:	10400027 	beqz	v0,4f0 <func_80A0BAE0+0xd0>
     454:	8fa6002c 	lw	a2,44(sp)
     458:	920201a5 	lbu	v0,421(s0)
     45c:	861904c2 	lh	t9,1218(s0)
     460:	3058fffd 	andi	t8,v0,0xfffd
     464:	a21801a5 	sb	t8,421(s0)
     468:	53200004 	beqzl	t9,47c <func_80A0BAE0+0x5c>
     46c:	8e0201b0 	lw	v0,432(s0)
     470:	1000004a 	b	59c <func_80A0BAE0+0x17c>
     474:	00001025 	move	v0,zero
     478:	8e0201b0 	lw	v0,432(s0)
     47c:	02002025 	move	a0,s0
     480:	8c430024 	lw	v1,36(v0)
     484:	10600007 	beqz	v1,4a4 <func_80A0BAE0+0x84>
     488:	00000000 	nop
     48c:	8c680000 	lw	t0,0(v1)
     490:	31090080 	andi	t1,t0,0x80
     494:	11200003 	beqz	t1,4a4 <func_80A0BAE0+0x84>
     498:	00000000 	nop
     49c:	1000003f 	b	59c <func_80A0BAE0+0x17c>
     4a0:	00001025 	move	v0,zero
     4a4:	0c000000 	jal	0 <func_80A0B6C0>
     4a8:	8fa50034 	lw	a1,52(sp)
     4ac:	14400003 	bnez	v0,4bc <func_80A0BAE0+0x9c>
     4b0:	240a001e 	li	t2,30
     4b4:	10000039 	b	59c <func_80A0BAE0+0x17c>
     4b8:	00001025 	move	v0,zero
     4bc:	8e0b0004 	lw	t3,4(s0)
     4c0:	2401fffe 	li	at,-2
     4c4:	a60a04c2 	sh	t2,1218(s0)
     4c8:	01616024 	and	t4,t3,at
     4cc:	ae0c0004 	sw	t4,4(s0)
     4d0:	02002025 	move	a0,s0
     4d4:	0c000000 	jal	0 <func_80A0B6C0>
     4d8:	2405397a 	li	a1,14714
     4dc:	8fa40034 	lw	a0,52(sp)
     4e0:	0c000000 	jal	0 <func_80A0B6C0>
     4e4:	02002825 	move	a1,s0
     4e8:	1000002c 	b	59c <func_80A0BAE0+0x17c>
     4ec:	24020001 	li	v0,1
     4f0:	860204c4 	lh	v0,1220(s0)
     4f4:	14400003 	bnez	v0,504 <func_80A0BAE0+0xe4>
     4f8:	244dffff 	addiu	t5,v0,-1
     4fc:	10000003 	b	50c <func_80A0BAE0+0xec>
     500:	00001825 	move	v1,zero
     504:	a60d04c4 	sh	t5,1220(s0)
     508:	860304c4 	lh	v1,1220(s0)
     50c:	54600023 	bnezl	v1,59c <func_80A0BAE0+0x17c>
     510:	00001025 	move	v0,zero
     514:	920201a4 	lbu	v0,420(s0)
     518:	304f0002 	andi	t7,v0,0x2
     51c:	51e0001f 	beqzl	t7,59c <func_80A0BAE0+0x17c>
     520:	00001025 	move	v0,zero
     524:	861804c2 	lh	t8,1218(s0)
     528:	304efffd 	andi	t6,v0,0xfffd
     52c:	a20e01a4 	sb	t6,420(s0)
     530:	53000004 	beqzl	t8,544 <func_80A0BAE0+0x124>
     534:	921901a4 	lbu	t9,420(s0)
     538:	10000018 	b	59c <func_80A0BAE0+0x17c>
     53c:	00001025 	move	v0,zero
     540:	921901a4 	lbu	t9,420(s0)
     544:	2409001e 	li	t1,30
     548:	00c02025 	move	a0,a2
     54c:	33280004 	andi	t0,t9,0x4
     550:	11000003 	beqz	t0,560 <func_80A0BAE0+0x140>
     554:	2405083e 	li	a1,2110
     558:	10000010 	b	59c <func_80A0BAE0+0x17c>
     55c:	00001025 	move	v0,zero
     560:	0c000000 	jal	0 <func_80A0B6C0>
     564:	a60904c4 	sh	t1,1220(s0)
     568:	3c014000 	lui	at,0x4000
     56c:	44813000 	mtc1	at,$f6
     570:	c6040068 	lwc1	$f4,104(s0)
     574:	3c0140c0 	lui	at,0x40c0
     578:	44815000 	mtc1	at,$f10
     57c:	46062200 	add.s	$f8,$f4,$f6
     580:	8607008a 	lh	a3,138(s0)
     584:	8fa40034 	lw	a0,52(sp)
     588:	02002825 	move	a1,s0
     58c:	44064000 	mfc1	a2,$f8
     590:	0c000000 	jal	0 <func_80A0B6C0>
     594:	e7aa0010 	swc1	$f10,16(sp)
     598:	00001025 	move	v0,zero
     59c:	8fbf0024 	lw	ra,36(sp)
     5a0:	8fb00020 	lw	s0,32(sp)
     5a4:	27bd0030 	addiu	sp,sp,48
     5a8:	03e00008 	jr	ra
     5ac:	00000000 	nop

000005b0 <func_80A0BC70>:
     5b0:	27bdffa8 	addiu	sp,sp,-88
     5b4:	afa40058 	sw	a0,88(sp)
     5b8:	afbf002c 	sw	ra,44(sp)
     5bc:	24840024 	addiu	a0,a0,36
     5c0:	24a50024 	addiu	a1,a1,36
     5c4:	afa60060 	sw	a2,96(sp)
     5c8:	afa50030 	sw	a1,48(sp)
     5cc:	0c000000 	jal	0 <func_80A0B6C0>
     5d0:	afa40034 	sw	a0,52(sp)
     5d4:	3c0143c8 	lui	at,0x43c8
     5d8:	44812000 	mtc1	at,$f4
     5dc:	8fa40034 	lw	a0,52(sp)
     5e0:	4600203c 	c.lt.s	$f4,$f0
     5e4:	00000000 	nop
     5e8:	45000003 	bc1f	5f8 <func_80A0BC70+0x48>
     5ec:	00000000 	nop
     5f0:	1000002d 	b	6a8 <func_80A0BC70+0xf8>
     5f4:	00001025 	move	v0,zero
     5f8:	0c000000 	jal	0 <func_80A0B6C0>
     5fc:	8fa50030 	lw	a1,48(sp)
     600:	8fae0058 	lw	t6,88(sp)
     604:	44823000 	mtc1	v0,$f6
     608:	8fa40060 	lw	a0,96(sp)
     60c:	85cf00b6 	lh	t7,182(t6)
     610:	46803220 	cvt.s.w	$f8,$f6
     614:	8fa50034 	lw	a1,52(sp)
     618:	448f5000 	mtc1	t7,$f10
     61c:	8fa60030 	lw	a2,48(sp)
     620:	27a70044 	addiu	a3,sp,68
     624:	46805420 	cvt.s.w	$f16,$f10
     628:	27b90054 	addiu	t9,sp,84
     62c:	24080001 	li	t0,1
     630:	24090001 	li	t1,1
     634:	27aa0050 	addiu	t2,sp,80
     638:	248407c0 	addiu	a0,a0,1984
     63c:	46104481 	sub.s	$f18,$f8,$f16
     640:	4600910d 	trunc.w.s	$f4,$f18
     644:	44032000 	mfc1	v1,$f4
     648:	00000000 	nop
     64c:	00031c00 	sll	v1,v1,0x10
     650:	00031c03 	sra	v1,v1,0x10
     654:	04600003 	bltz	v1,664 <func_80A0BC70+0xb4>
     658:	00031023 	negu	v0,v1
     65c:	10000001 	b	664 <func_80A0BC70+0xb4>
     660:	00601025 	move	v0,v1
     664:	28411c71 	slti	at,v0,7281
     668:	54200004 	bnezl	at,67c <func_80A0BC70+0xcc>
     66c:	afb90010 	sw	t9,16(sp)
     670:	1000000d 	b	6a8 <func_80A0BC70+0xf8>
     674:	00001025 	move	v0,zero
     678:	afb90010 	sw	t9,16(sp)
     67c:	afa80014 	sw	t0,20(sp)
     680:	afa00018 	sw	zero,24(sp)
     684:	afa0001c 	sw	zero,28(sp)
     688:	afa90020 	sw	t1,32(sp)
     68c:	0c000000 	jal	0 <func_80A0B6C0>
     690:	afaa0024 	sw	t2,36(sp)
     694:	50400004 	beqzl	v0,6a8 <func_80A0BC70+0xf8>
     698:	24020001 	li	v0,1
     69c:	10000002 	b	6a8 <func_80A0BC70+0xf8>
     6a0:	00001025 	move	v0,zero
     6a4:	24020001 	li	v0,1
     6a8:	8fbf002c 	lw	ra,44(sp)
     6ac:	27bd0058 	addiu	sp,sp,88
     6b0:	03e00008 	jr	ra
     6b4:	00000000 	nop

000006b8 <func_80A0BD78>:
     6b8:	27bdffd0 	addiu	sp,sp,-48
     6bc:	afbf002c 	sw	ra,44(sp)
     6c0:	afb40028 	sw	s4,40(sp)
     6c4:	afb30024 	sw	s3,36(sp)
     6c8:	afb20020 	sw	s2,32(sp)
     6cc:	afb1001c 	sw	s1,28(sp)
     6d0:	afb00018 	sw	s0,24(sp)
     6d4:	8cb01c4c 	lw	s0,7244(a1)
     6d8:	00a08825 	move	s1,a1
     6dc:	00809025 	move	s2,a0
     6e0:	1200001b 	beqz	s0,750 <func_80A0BD78+0x98>
     6e4:	24140001 	li	s4,1
     6e8:	24130010 	li	s3,16
     6ec:	860e001c 	lh	t6,28(s0)
     6f0:	15c00004 	bnez	t6,704 <func_80A0BD78+0x4c>
     6f4:	00000000 	nop
     6f8:	8e0f0118 	lw	t7,280(s0)
     6fc:	51e00004 	beqzl	t7,710 <func_80A0BD78+0x58>
     700:	86180000 	lh	t8,0(s0)
     704:	10000010 	b	748 <func_80A0BD78+0x90>
     708:	8e100124 	lw	s0,292(s0)
     70c:	86180000 	lh	t8,0(s0)
     710:	02402025 	move	a0,s2
     714:	02002825 	move	a1,s0
     718:	12780003 	beq	s3,t8,728 <func_80A0BD78+0x70>
     71c:	00000000 	nop
     720:	10000009 	b	748 <func_80A0BD78+0x90>
     724:	8e100124 	lw	s0,292(s0)
     728:	0c000000 	jal	0 <func_80A0B6C0>
     72c:	02203025 	move	a2,s1
     730:	10540003 	beq	v0,s4,740 <func_80A0BD78+0x88>
     734:	00000000 	nop
     738:	10000003 	b	748 <func_80A0BD78+0x90>
     73c:	8e100124 	lw	s0,292(s0)
     740:	10000004 	b	754 <func_80A0BD78+0x9c>
     744:	02001025 	move	v0,s0
     748:	5600ffe9 	bnezl	s0,6f0 <func_80A0BD78+0x38>
     74c:	860e001c 	lh	t6,28(s0)
     750:	00001025 	move	v0,zero
     754:	8fbf002c 	lw	ra,44(sp)
     758:	8fb00018 	lw	s0,24(sp)
     75c:	8fb1001c 	lw	s1,28(sp)
     760:	8fb20020 	lw	s2,32(sp)
     764:	8fb30024 	lw	s3,36(sp)
     768:	8fb40028 	lw	s4,40(sp)
     76c:	03e00008 	jr	ra
     770:	27bd0030 	addiu	sp,sp,48

00000774 <func_80A0BE34>:
     774:	27bdffe0 	addiu	sp,sp,-32
     778:	afbf0014 	sw	ra,20(sp)
     77c:	afa40020 	sw	a0,32(sp)
     780:	0c000000 	jal	0 <func_80A0B6C0>
     784:	afa50024 	sw	a1,36(sp)
     788:	8fa40020 	lw	a0,32(sp)
     78c:	10400003 	beqz	v0,79c <func_80A0BE34+0x28>
     790:	8fa60024 	lw	a2,36(sp)
     794:	1000000f 	b	7d4 <func_80A0BE34+0x60>
     798:	8fbf0014 	lw	ra,20(sp)
     79c:	848e04c4 	lh	t6,1220(a0)
     7a0:	51c00004 	beqzl	t6,7b4 <func_80A0BE34+0x40>
     7a4:	8cc51c44 	lw	a1,7236(a2)
     7a8:	10000009 	b	7d0 <func_80A0BE34+0x5c>
     7ac:	00001025 	move	v0,zero
     7b0:	8cc51c44 	lw	a1,7236(a2)
     7b4:	0c000000 	jal	0 <func_80A0B6C0>
     7b8:	afa5001c 	sw	a1,28(sp)
     7bc:	14400003 	bnez	v0,7cc <func_80A0BE34+0x58>
     7c0:	8fa5001c 	lw	a1,28(sp)
     7c4:	10000002 	b	7d0 <func_80A0BE34+0x5c>
     7c8:	00001025 	move	v0,zero
     7cc:	00a01025 	move	v0,a1
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	27bd0020 	addiu	sp,sp,32
     7d8:	03e00008 	jr	ra
     7dc:	00000000 	nop

000007e0 <func_80A0BEA0>:
     7e0:	27bdffc8 	addiu	sp,sp,-56
     7e4:	afb00018 	sw	s0,24(sp)
     7e8:	afa40038 	sw	a0,56(sp)
     7ec:	00a08025 	move	s0,a1
     7f0:	afbf001c 	sw	ra,28(sp)
     7f4:	24a40008 	addiu	a0,a1,8
     7f8:	afa60040 	sw	a2,64(sp)
     7fc:	afa70044 	sw	a3,68(sp)
     800:	0c000000 	jal	0 <func_80A0B6C0>
     804:	24a50024 	addiu	a1,a1,36
     808:	87ae0046 	lh	t6,70(sp)
     80c:	24011554 	li	at,5460
     810:	01c10019 	multu	t6,at
     814:	00007812 	mflo	t7
     818:	004f1821 	addu	v1,v0,t7
     81c:	00032400 	sll	a0,v1,0x10
     820:	a7a30036 	sh	v1,54(sp)
     824:	0c000000 	jal	0 <func_80A0B6C0>
     828:	00042403 	sra	a0,a0,0x10
     82c:	c7a40040 	lwc1	$f4,64(sp)
     830:	c6080008 	lwc1	$f8,8(s0)
     834:	87a40036 	lh	a0,54(sp)
     838:	46040182 	mul.s	$f6,$f0,$f4
     83c:	46083280 	add.s	$f10,$f6,$f8
     840:	0c000000 	jal	0 <func_80A0B6C0>
     844:	e7aa0028 	swc1	$f10,40(sp)
     848:	c7b00040 	lwc1	$f16,64(sp)
     84c:	c6040010 	lwc1	$f4,16(s0)
     850:	c7a80028 	lwc1	$f8,40(sp)
     854:	46100482 	mul.s	$f18,$f0,$f16
     858:	27b80028 	addiu	t8,sp,40
     85c:	8fa20038 	lw	v0,56(sp)
     860:	46049180 	add.s	$f6,$f18,$f4
     864:	e7a60030 	swc1	$f6,48(sp)
     868:	c60a0024 	lwc1	$f10,36(s0)
     86c:	460a4401 	sub.s	$f16,$f8,$f10
     870:	e7b00028 	swc1	$f16,40(sp)
     874:	c612002c 	lwc1	$f18,44(s0)
     878:	46123101 	sub.s	$f4,$f6,$f18
     87c:	e7a40030 	swc1	$f4,48(sp)
     880:	8f080000 	lw	t0,0(t8)
     884:	ac480000 	sw	t0,0(v0)
     888:	8f190004 	lw	t9,4(t8)
     88c:	ac590004 	sw	t9,4(v0)
     890:	8f080008 	lw	t0,8(t8)
     894:	ac480008 	sw	t0,8(v0)
     898:	8fbf001c 	lw	ra,28(sp)
     89c:	8fb00018 	lw	s0,24(sp)
     8a0:	27bd0038 	addiu	sp,sp,56
     8a4:	03e00008 	jr	ra
     8a8:	00000000 	nop

000008ac <func_80A0BF6C>:
     8ac:	27bdffa0 	addiu	sp,sp,-96
     8b0:	44866000 	mtc1	a2,$f12
     8b4:	afb10030 	sw	s1,48(sp)
     8b8:	afb0002c 	sw	s0,44(sp)
     8bc:	00808025 	move	s0,a0
     8c0:	00e08825 	move	s1,a3
     8c4:	afbf0034 	sw	ra,52(sp)
     8c8:	afa50064 	sw	a1,100(sp)
     8cc:	44066000 	mfc1	a2,$f12
     8d0:	84e70000 	lh	a3,0(a3)
     8d4:	02002825 	move	a1,s0
     8d8:	0c000000 	jal	0 <func_80A0B6C0>
     8dc:	27a40040 	addiu	a0,sp,64
     8e0:	c7a40040 	lwc1	$f4,64(sp)
     8e4:	c6060024 	lwc1	$f6,36(s0)
     8e8:	c7b00048 	lwc1	$f16,72(sp)
     8ec:	8fa40064 	lw	a0,100(sp)
     8f0:	46062200 	add.s	$f8,$f4,$f6
     8f4:	27ae005c 	addiu	t6,sp,92
     8f8:	240f0001 	li	t7,1
     8fc:	24180001 	li	t8,1
     900:	e7a80040 	swc1	$f8,64(sp)
     904:	c60a0028 	lwc1	$f10,40(s0)
     908:	27b90058 	addiu	t9,sp,88
     90c:	26050024 	addiu	a1,s0,36
     910:	e7aa0044 	swc1	$f10,68(sp)
     914:	c612002c 	lwc1	$f18,44(s0)
     918:	afb90024 	sw	t9,36(sp)
     91c:	afb80020 	sw	t8,32(sp)
     920:	46128100 	add.s	$f4,$f16,$f18
     924:	afa0001c 	sw	zero,28(sp)
     928:	afa00018 	sw	zero,24(sp)
     92c:	afaf0014 	sw	t7,20(sp)
     930:	e7a40048 	swc1	$f4,72(sp)
     934:	afae0010 	sw	t6,16(sp)
     938:	27a60040 	addiu	a2,sp,64
     93c:	27a7004c 	addiu	a3,sp,76
     940:	0c000000 	jal	0 <func_80A0B6C0>
     944:	248407c0 	addiu	a0,a0,1984
     948:	50400007 	beqzl	v0,968 <func_80A0BF6C+0xbc>
     94c:	860a04c0 	lh	t2,1216(s0)
     950:	86280000 	lh	t0,0(s1)
     954:	24020001 	li	v0,1
     958:	00084823 	negu	t1,t0
     95c:	1000001b 	b	9cc <func_80A0BF6C+0x120>
     960:	a6290000 	sh	t1,0(s1)
     964:	860a04c0 	lh	t2,1216(s0)
     968:	1540000a 	bnez	t2,994 <func_80A0BF6C+0xe8>
     96c:	00000000 	nop
     970:	860204be 	lh	v0,1214(s0)
     974:	14400003 	bnez	v0,984 <func_80A0BF6C+0xd8>
     978:	244bffff 	addiu	t3,v0,-1
     97c:	10000003 	b	98c <func_80A0BF6C+0xe0>
     980:	00001825 	move	v1,zero
     984:	a60b04be 	sh	t3,1214(s0)
     988:	860304be 	lh	v1,1214(s0)
     98c:	10600003 	beqz	v1,99c <func_80A0BF6C+0xf0>
     990:	00000000 	nop
     994:	1000000d 	b	9cc <func_80A0BF6C+0x120>
     998:	00001025 	move	v0,zero
     99c:	0c000000 	jal	0 <func_80A0B6C0>
     9a0:	00000000 	nop
     9a4:	3c013f00 	lui	at,0x3f00
     9a8:	44813000 	mtc1	at,$f6
     9ac:	24020001 	li	v0,1
     9b0:	4600303c 	c.lt.s	$f6,$f0
     9b4:	00000000 	nop
     9b8:	45000004 	bc1f	9cc <func_80A0BF6C+0x120>
     9bc:	00000000 	nop
     9c0:	862c0000 	lh	t4,0(s1)
     9c4:	000c6823 	negu	t5,t4
     9c8:	a62d0000 	sh	t5,0(s1)
     9cc:	8fbf0034 	lw	ra,52(sp)
     9d0:	8fb0002c 	lw	s0,44(sp)
     9d4:	8fb10030 	lw	s1,48(sp)
     9d8:	03e00008 	jr	ra
     9dc:	27bd0060 	addiu	sp,sp,96

000009e0 <func_80A0C0A0>:
     9e0:	27bdffd8 	addiu	sp,sp,-40
     9e4:	afbf0024 	sw	ra,36(sp)
     9e8:	afb00020 	sw	s0,32(sp)
     9ec:	afa5002c 	sw	a1,44(sp)
     9f0:	848e04c2 	lh	t6,1218(a0)
     9f4:	00808025 	move	s0,a0
     9f8:	248404cc 	addiu	a0,a0,1228
     9fc:	11c00036 	beqz	t6,ad8 <func_80A0C0A0+0xf8>
     a00:	3c063e99 	lui	a2,0x3e99
     a04:	44800000 	mtc1	zero,$f0
     a08:	34c6999a 	ori	a2,a2,0x999a
     a0c:	3c074120 	lui	a3,0x4120
     a10:	44050000 	mfc1	a1,$f0
     a14:	0c000000 	jal	0 <func_80A0B6C0>
     a18:	e7a00010 	swc1	$f0,16(sp)
     a1c:	444ff800 	cfc1	t7,$31
     a20:	24180001 	li	t8,1
     a24:	44d8f800 	ctc1	t8,$31
     a28:	c60004cc 	lwc1	$f0,1228(s0)
     a2c:	3c190000 	lui	t9,0x0
     a30:	3c014f00 	lui	at,0x4f00
     a34:	46000124 	cvt.w.s	$f4,$f0
     a38:	27390000 	addiu	t9,t9,0
     a3c:	4458f800 	cfc1	t8,$31
     a40:	00000000 	nop
     a44:	33180078 	andi	t8,t8,0x78
     a48:	53000013 	beqzl	t8,a98 <func_80A0C0A0+0xb8>
     a4c:	44182000 	mfc1	t8,$f4
     a50:	44812000 	mtc1	at,$f4
     a54:	24180001 	li	t8,1
     a58:	46040101 	sub.s	$f4,$f0,$f4
     a5c:	44d8f800 	ctc1	t8,$31
     a60:	00000000 	nop
     a64:	46002124 	cvt.w.s	$f4,$f4
     a68:	4458f800 	cfc1	t8,$31
     a6c:	00000000 	nop
     a70:	33180078 	andi	t8,t8,0x78
     a74:	17000005 	bnez	t8,a8c <func_80A0C0A0+0xac>
     a78:	00000000 	nop
     a7c:	44182000 	mfc1	t8,$f4
     a80:	3c018000 	lui	at,0x8000
     a84:	10000007 	b	aa4 <func_80A0C0A0+0xc4>
     a88:	0301c025 	or	t8,t8,at
     a8c:	10000005 	b	aa4 <func_80A0C0A0+0xc4>
     a90:	2418ffff 	li	t8,-1
     a94:	44182000 	mfc1	t8,$f4
     a98:	00000000 	nop
     a9c:	0700fffb 	bltz	t8,a8c <func_80A0C0A0+0xac>
     aa0:	00000000 	nop
     aa4:	a21800c8 	sb	t8,200(s0)
     aa8:	3c010000 	lui	at,0x0
     aac:	44cff800 	ctc1	t7,$31
     ab0:	c4260000 	lwc1	$f6,0(at)
     ab4:	4600303e 	c.le.s	$f6,$f0
     ab8:	00000000 	nop
     abc:	45030007 	bc1tl	adc <func_80A0C0A0+0xfc>
     ac0:	8fbf0024 	lw	ra,36(sp)
     ac4:	44804000 	mtc1	zero,$f8
     ac8:	a60004c2 	sh	zero,1218(s0)
     acc:	a60004be 	sh	zero,1214(s0)
     ad0:	ae190190 	sw	t9,400(s0)
     ad4:	e6080068 	swc1	$f8,104(s0)
     ad8:	8fbf0024 	lw	ra,36(sp)
     adc:	8fb00020 	lw	s0,32(sp)
     ae0:	27bd0028 	addiu	sp,sp,40
     ae4:	03e00008 	jr	ra
     ae8:	00000000 	nop

00000aec <EnFd_Init>:
     aec:	27bdffc0 	addiu	sp,sp,-64
     af0:	afb00028 	sw	s0,40(sp)
     af4:	00808025 	move	s0,a0
     af8:	afbf002c 	sw	ra,44(sp)
     afc:	afa50044 	sw	a1,68(sp)
     b00:	260e04dc 	addiu	t6,s0,1244
     b04:	260f057e 	addiu	t7,s0,1406
     b08:	00a02025 	move	a0,a1
     b0c:	3c060600 	lui	a2,0x600
     b10:	2418001b 	li	t8,27
     b14:	afb80018 	sw	t8,24(sp)
     b18:	24c65810 	addiu	a2,a2,22544
     b1c:	2605014c 	addiu	a1,s0,332
     b20:	afaf0014 	sw	t7,20(sp)
     b24:	afae0010 	sw	t6,16(sp)
     b28:	0c000000 	jal	0 <func_80A0B6C0>
     b2c:	00003825 	move	a3,zero
     b30:	3c060000 	lui	a2,0x0
     b34:	24c60000 	addiu	a2,a2,0
     b38:	260400b4 	addiu	a0,s0,180
     b3c:	24050000 	li	a1,0
     b40:	0c000000 	jal	0 <func_80A0B6C0>
     b44:	3c074200 	lui	a3,0x4200
     b48:	26050194 	addiu	a1,s0,404
     b4c:	afa50034 	sw	a1,52(sp)
     b50:	0c000000 	jal	0 <func_80A0B6C0>
     b54:	8fa40044 	lw	a0,68(sp)
     b58:	3c070000 	lui	a3,0x0
     b5c:	261901b4 	addiu	t9,s0,436
     b60:	8fa50034 	lw	a1,52(sp)
     b64:	afb90010 	sw	t9,16(sp)
     b68:	24e70000 	addiu	a3,a3,0
     b6c:	8fa40044 	lw	a0,68(sp)
     b70:	0c000000 	jal	0 <func_80A0B6C0>
     b74:	02003025 	move	a2,s0
     b78:	0c000000 	jal	0 <func_80A0B6C0>
     b7c:	2404000f 	li	a0,15
     b80:	3c060000 	lui	a2,0x0
     b84:	24c60000 	addiu	a2,a2,0
     b88:	26040098 	addiu	a0,s0,152
     b8c:	0c000000 	jal	0 <func_80A0B6C0>
     b90:	00402825 	move	a1,v0
     b94:	8e080004 	lw	t0,4(s0)
     b98:	2401fffe 	li	at,-2
     b9c:	3c053c23 	lui	a1,0x3c23
     ba0:	01014824 	and	t1,t0,at
     ba4:	3c010100 	lui	at,0x100
     ba8:	ae090004 	sw	t1,4(s0)
     bac:	01215825 	or	t3,t1,at
     bb0:	ae0b0004 	sw	t3,4(s0)
     bb4:	34a5d70a 	ori	a1,a1,0xd70a
     bb8:	0c000000 	jal	0 <func_80A0B6C0>
     bbc:	02002025 	move	a0,s0
     bc0:	3c01bf80 	lui	at,0xbf80
     bc4:	44812000 	mtc1	at,$f4
     bc8:	240c0001 	li	t4,1
     bcc:	a60c04bc 	sh	t4,1212(s0)
     bd0:	0c000000 	jal	0 <func_80A0B6C0>
     bd4:	e604006c 	swc1	$f4,108(s0)
     bd8:	3c013f00 	lui	at,0x3f00
     bdc:	44813000 	mtc1	at,$f6
     be0:	3c180000 	lui	t8,0x0
     be4:	240e0001 	li	t6,1
     be8:	4606003c 	c.lt.s	$f0,$f6
     bec:	240dffff 	li	t5,-1
     bf0:	240f0022 	li	t7,34
     bf4:	27180000 	addiu	t8,t8,0
     bf8:	45020004 	bc1fl	c0c <EnFd_Init+0x120>
     bfc:	a60e04ba 	sh	t6,1210(s0)
     c00:	10000002 	b	c0c <EnFd_Init+0x120>
     c04:	a60d04ba 	sh	t5,1210(s0)
     c08:	a60e04ba 	sh	t6,1210(s0)
     c0c:	a20f0117 	sb	t7,279(s0)
     c10:	ae180190 	sw	t8,400(s0)
     c14:	8fbf002c 	lw	ra,44(sp)
     c18:	8fb00028 	lw	s0,40(sp)
     c1c:	27bd0040 	addiu	sp,sp,64
     c20:	03e00008 	jr	ra
     c24:	00000000 	nop

00000c28 <EnFd_Destroy>:
     c28:	27bdffe8 	addiu	sp,sp,-24
     c2c:	00803025 	move	a2,a0
     c30:	afbf0014 	sw	ra,20(sp)
     c34:	00a02025 	move	a0,a1
     c38:	0c000000 	jal	0 <func_80A0B6C0>
     c3c:	24c50194 	addiu	a1,a2,404
     c40:	8fbf0014 	lw	ra,20(sp)
     c44:	27bd0018 	addiu	sp,sp,24
     c48:	03e00008 	jr	ra
     c4c:	00000000 	nop

00000c50 <func_80A0C310>:
     c50:	27bdffe8 	addiu	sp,sp,-24
     c54:	afa5001c 	sw	a1,28(sp)
     c58:	afbf0014 	sw	ra,20(sp)
     c5c:	8c8f0008 	lw	t7,8(a0)
     c60:	3c01437f 	lui	at,0x437f
     c64:	8c8e000c 	lw	t6,12(a0)
     c68:	ac8f0024 	sw	t7,36(a0)
     c6c:	8c8f0010 	lw	t7,16(a0)
     c70:	44802000 	mtc1	zero,$f4
     c74:	44813000 	mtc1	at,$f6
     c78:	241800ff 	li	t8,255
     c7c:	00803825 	move	a3,a0
     c80:	a480001c 	sh	zero,28(a0)
     c84:	a09800c8 	sb	t8,200(a0)
     c88:	a08004b4 	sb	zero,1204(a0)
     c8c:	3c050000 	lui	a1,0x0
     c90:	ac8e0028 	sw	t6,40(a0)
     c94:	ac8f002c 	sw	t7,44(a0)
     c98:	e4840054 	swc1	$f4,84(a0)
     c9c:	e48604cc 	swc1	$f6,1228(a0)
     ca0:	afa70018 	sw	a3,24(sp)
     ca4:	24a50000 	addiu	a1,a1,0
     ca8:	2484014c 	addiu	a0,a0,332
     cac:	0c000000 	jal	0 <func_80A0B6C0>
     cb0:	00003025 	move	a2,zero
     cb4:	8fa40018 	lw	a0,24(sp)
     cb8:	0c000000 	jal	0 <func_80A0B6C0>
     cbc:	24053981 	li	a1,14721
     cc0:	8fa70018 	lw	a3,24(sp)
     cc4:	3c190000 	lui	t9,0x0
     cc8:	27390000 	addiu	t9,t9,0
     ccc:	acf90190 	sw	t9,400(a3)
     cd0:	8fbf0014 	lw	ra,20(sp)
     cd4:	27bd0018 	addiu	sp,sp,24
     cd8:	03e00008 	jr	ra
     cdc:	00000000 	nop

00000ce0 <func_80A0C3A0>:
     ce0:	27bdffe0 	addiu	sp,sp,-32
     ce4:	00803825 	move	a3,a0
     ce8:	afbf0014 	sw	ra,20(sp)
     cec:	afa50024 	sw	a1,36(sp)
     cf0:	8ce5015c 	lw	a1,348(a3)
     cf4:	2484014c 	addiu	a0,a0,332
     cf8:	afa4001c 	sw	a0,28(sp)
     cfc:	0c000000 	jal	0 <func_80A0B6C0>
     d00:	afa70020 	sw	a3,32(sp)
     d04:	8fa4001c 	lw	a0,28(sp)
     d08:	1040001a 	beqz	v0,d74 <func_80A0C3A0+0x94>
     d0c:	8fa70020 	lw	a3,32(sp)
     d10:	3c0140c0 	lui	at,0x40c0
     d14:	44812000 	mtc1	at,$f4
     d18:	3c010000 	lui	at,0x0
     d1c:	84ee0032 	lh	t6,50(a3)
     d20:	e4e40060 	swc1	$f4,96(a3)
     d24:	c4260000 	lwc1	$f6,0(at)
     d28:	8cf80004 	lw	t8,4(a3)
     d2c:	3c014100 	lui	at,0x4100
     d30:	44814000 	mtc1	at,$f8
     d34:	39cf8000 	xori	t7,t6,0x8000
     d38:	37190001 	ori	t9,t8,0x1
     d3c:	a4ef0032 	sh	t7,50(a3)
     d40:	acf90004 	sw	t9,4(a3)
     d44:	3c050000 	lui	a1,0x0
     d48:	e4e60054 	swc1	$f6,84(a3)
     d4c:	e4e80068 	swc1	$f8,104(a3)
     d50:	afa70020 	sw	a3,32(sp)
     d54:	24a50000 	addiu	a1,a1,0
     d58:	0c000000 	jal	0 <func_80A0B6C0>
     d5c:	24060001 	li	a2,1
     d60:	8fa70020 	lw	a3,32(sp)
     d64:	3c080000 	lui	t0,0x0
     d68:	25080000 	addiu	t0,t0,0
     d6c:	1000000d 	b	da4 <func_80A0C3A0+0xc4>
     d70:	ace80190 	sw	t0,400(a3)
     d74:	3c010000 	lui	at,0x0
     d78:	c42a0000 	lwc1	$f10,0(at)
     d7c:	c4f00160 	lwc1	$f16,352(a3)
     d80:	c4e40164 	lwc1	$f4,356(a3)
     d84:	84e900b6 	lh	t1,182(a3)
     d88:	46105483 	div.s	$f18,$f10,$f16
     d8c:	252a2000 	addiu	t2,t1,8192
     d90:	a4ea00b6 	sh	t2,182(a3)
     d94:	84eb00b6 	lh	t3,182(a3)
     d98:	a4eb0032 	sh	t3,50(a3)
     d9c:	46122182 	mul.s	$f6,$f4,$f18
     da0:	e4e60054 	swc1	$f6,84(a3)
     da4:	8fbf0014 	lw	ra,20(sp)
     da8:	27bd0020 	addiu	sp,sp,32
     dac:	03e00008 	jr	ra
     db0:	00000000 	nop

00000db4 <func_80A0C474>:
     db4:	27bdffe8 	addiu	sp,sp,-24
     db8:	afbf0014 	sw	ra,20(sp)
     dbc:	afa5001c 	sw	a1,28(sp)
     dc0:	948e0088 	lhu	t6,136(a0)
     dc4:	00803825 	move	a3,a0
     dc8:	31cf0001 	andi	t7,t6,0x1
     dcc:	51e00015 	beqzl	t7,e24 <func_80A0C474+0x70>
     dd0:	8fbf0014 	lw	ra,20(sp)
     dd4:	44800000 	mtc1	zero,$f0
     dd8:	c4840060 	lwc1	$f4,96(a0)
     ddc:	3c050000 	lui	a1,0x0
     de0:	24a50000 	addiu	a1,a1,0
     de4:	4604003c 	c.lt.s	$f0,$f4
     de8:	24060002 	li	a2,2
     dec:	4503000d 	bc1tl	e24 <func_80A0C474+0x70>
     df0:	8fbf0014 	lw	ra,20(sp)
     df4:	849800b6 	lh	t8,182(a0)
     df8:	e4800060 	swc1	$f0,96(a0)
     dfc:	e4800068 	swc1	$f0,104(a0)
     e00:	a4980032 	sh	t8,50(a0)
     e04:	afa70018 	sw	a3,24(sp)
     e08:	0c000000 	jal	0 <func_80A0B6C0>
     e0c:	2484014c 	addiu	a0,a0,332
     e10:	8fa70018 	lw	a3,24(sp)
     e14:	3c190000 	lui	t9,0x0
     e18:	27390000 	addiu	t9,t9,0
     e1c:	acf90190 	sw	t9,400(a3)
     e20:	8fbf0014 	lw	ra,20(sp)
     e24:	27bd0018 	addiu	sp,sp,24
     e28:	03e00008 	jr	ra
     e2c:	00000000 	nop

00000e30 <func_80A0C4F0>:
     e30:	3c013f80 	lui	at,0x3f80
     e34:	44810000 	mtc1	at,$f0
     e38:	27bdffc8 	addiu	sp,sp,-56
     e3c:	44802000 	mtc1	zero,$f4
     e40:	afb00020 	sw	s0,32(sp)
     e44:	afa5003c 	sw	a1,60(sp)
     e48:	00808025 	move	s0,a0
     e4c:	afbf0024 	sw	ra,36(sp)
     e50:	3c063dcc 	lui	a2,0x3dcc
     e54:	44050000 	mfc1	a1,$f0
     e58:	44070000 	mfc1	a3,$f0
     e5c:	34c6cccd 	ori	a2,a2,0xcccd
     e60:	24840168 	addiu	a0,a0,360
     e64:	0c000000 	jal	0 <func_80A0B6C0>
     e68:	e7a40010 	swc1	$f4,16(sp)
     e6c:	2604014c 	addiu	a0,s0,332
     e70:	8e05015c 	lw	a1,348(s0)
     e74:	0c000000 	jal	0 <func_80A0B6C0>
     e78:	afa40028 	sw	a0,40(sp)
     e7c:	1040001f 	beqz	v0,efc <func_80A0C4F0+0xcc>
     e80:	2404003c 	li	a0,60
     e84:	0c000000 	jal	0 <func_80A0B6C0>
     e88:	2405005a 	li	a1,90
     e8c:	a60204be 	sh	v0,1214(s0)
     e90:	26040024 	addiu	a0,s0,36
     e94:	0c000000 	jal	0 <func_80A0B6C0>
     e98:	26050008 	addiu	a1,s0,8
     e9c:	44060000 	mfc1	a2,$f0
     ea0:	e60004c8 	swc1	$f0,1224(s0)
     ea4:	27a4002c 	addiu	a0,sp,44
     ea8:	02002825 	move	a1,s0
     eac:	0c000000 	jal	0 <func_80A0B6C0>
     eb0:	860704ba 	lh	a3,1210(s0)
     eb4:	c7ac002c 	lwc1	$f12,44(sp)
     eb8:	0c000000 	jal	0 <func_80A0B6C0>
     ebc:	c7ae0034 	lwc1	$f14,52(sp)
     ec0:	3c010000 	lui	at,0x0
     ec4:	c4260000 	lwc1	$f6,0(at)
     ec8:	3c050000 	lui	a1,0x0
     ecc:	24a50000 	addiu	a1,a1,0
     ed0:	46060202 	mul.s	$f8,$f0,$f6
     ed4:	24060004 	li	a2,4
     ed8:	4600428d 	trunc.w.s	$f10,$f8
     edc:	440f5000 	mfc1	t7,$f10
     ee0:	00000000 	nop
     ee4:	a60f0032 	sh	t7,50(s0)
     ee8:	0c000000 	jal	0 <func_80A0B6C0>
     eec:	8fa40028 	lw	a0,40(sp)
     ef0:	3c180000 	lui	t8,0x0
     ef4:	27180000 	addiu	t8,t8,0
     ef8:	ae180190 	sw	t8,400(s0)
     efc:	8fbf0024 	lw	ra,36(sp)
     f00:	8fb00020 	lw	s0,32(sp)
     f04:	27bd0038 	addiu	sp,sp,56
     f08:	03e00008 	jr	ra
     f0c:	00000000 	nop

00000f10 <func_80A0C5D0>:
     f10:	27bdffc8 	addiu	sp,sp,-56
     f14:	afbf001c 	sw	ra,28(sp)
     f18:	afb00018 	sw	s0,24(sp)
     f1c:	afa5003c 	sw	a1,60(sp)
     f20:	848e04be 	lh	t6,1214(a0)
     f24:	00808025 	move	s0,a0
     f28:	2405317e 	li	a1,12670
     f2c:	29c1001f 	slti	at,t6,31
     f30:	10200008 	beqz	at,f54 <func_80A0C5D0+0x44>
     f34:	00000000 	nop
     f38:	848f04c2 	lh	t7,1218(a0)
     f3c:	15e00005 	bnez	t7,f54 <func_80A0C5D0+0x44>
     f40:	00000000 	nop
     f44:	0c000000 	jal	0 <func_80A0B6C0>
     f48:	24053183 	li	a1,12675
     f4c:	10000004 	b	f60 <func_80A0C5D0+0x50>
     f50:	860204be 	lh	v0,1214(s0)
     f54:	0c000000 	jal	0 <func_80A0B6C0>
     f58:	02002025 	move	a0,s0
     f5c:	860204be 	lh	v0,1214(s0)
     f60:	14400003 	bnez	v0,f70 <func_80A0C5D0+0x60>
     f64:	2458ffff 	addiu	t8,v0,-1
     f68:	10000004 	b	f7c <func_80A0C5D0+0x6c>
     f6c:	00001825 	move	v1,zero
     f70:	a61804be 	sh	t8,1214(s0)
     f74:	860204be 	lh	v0,1214(s0)
     f78:	00401825 	move	v1,v0
     f7c:	50600020 	beqzl	v1,1000 <func_80A0C5D0+0xf0>
     f80:	860c0032 	lh	t4,50(s0)
     f84:	860804ba 	lh	t0,1210(s0)
     f88:	861900b6 	lh	t9,182(s0)
     f8c:	2401001e 	li	at,30
     f90:	00084b40 	sll	t1,t0,0xd
     f94:	03295021 	addu	t2,t9,t1
     f98:	1441005f 	bne	v0,at,1118 <func_80A0C5D0+0x208>
     f9c:	a60a00b6 	sh	t2,182(s0)
     fa0:	860b04c2 	lh	t3,1218(s0)
     fa4:	3c014320 	lui	at,0x4320
     fa8:	5560005c 	bnezl	t3,111c <func_80A0C5D0+0x20c>
     fac:	8fbf001c 	lw	ra,28(sp)
     fb0:	44812000 	mtc1	at,$f4
     fb4:	c6060090 	lwc1	$f6,144(s0)
     fb8:	00003825 	move	a3,zero
     fbc:	02002025 	move	a0,s0
     fc0:	4606203c 	c.lt.s	$f4,$f6
     fc4:	8fa5003c 	lw	a1,60(sp)
     fc8:	24060008 	li	a2,8
     fcc:	45000007 	bc1f	fec <func_80A0C5D0+0xdc>
     fd0:	00000000 	nop
     fd4:	02002025 	move	a0,s0
     fd8:	8fa5003c 	lw	a1,60(sp)
     fdc:	0c000000 	jal	0 <func_80A0B6C0>
     fe0:	24060008 	li	a2,8
     fe4:	1000004d 	b	111c <func_80A0C5D0+0x20c>
     fe8:	8fbf001c 	lw	ra,28(sp)
     fec:	0c000000 	jal	0 <func_80A0B6C0>
     ff0:	24070001 	li	a3,1
     ff4:	10000049 	b	111c <func_80A0C5D0+0x20c>
     ff8:	8fbf001c 	lw	ra,28(sp)
     ffc:	860c0032 	lh	t4,50(s0)
    1000:	860d00b6 	lh	t5,182(s0)
    1004:	44809000 	mtc1	zero,$f18
    1008:	448c4000 	mtc1	t4,$f8
    100c:	448d5000 	mtc1	t5,$f10
    1010:	3c063f19 	lui	a2,0x3f19
    1014:	468040a0 	cvt.s.w	$f2,$f8
    1018:	34c6999a 	ori	a2,a2,0x999a
    101c:	27a4002c 	addiu	a0,sp,44
    1020:	3c074600 	lui	a3,0x4600
    1024:	e7b2002c 	swc1	$f18,44(sp)
    1028:	46805420 	cvt.s.w	$f16,$f10
    102c:	46101081 	sub.s	$f2,$f2,$f16
    1030:	46001005 	abs.s	$f0,$f2
    1034:	46001083 	div.s	$f2,$f2,$f0
    1038:	44050000 	mfc1	a1,$f0
    103c:	0c000000 	jal	0 <func_80A0B6C0>
    1040:	e7a20034 	swc1	$f2,52(sp)
    1044:	c7a20034 	lwc1	$f2,52(sp)
    1048:	c7a4002c 	lwc1	$f4,44(sp)
    104c:	26040008 	addiu	a0,s0,8
    1050:	46022182 	mul.s	$f6,$f4,$f2
    1054:	4600320d 	trunc.w.s	$f8,$f6
    1058:	e7a6002c 	swc1	$f6,44(sp)
    105c:	860e00b6 	lh	t6,182(s0)
    1060:	44194000 	mfc1	t9,$f8
    1064:	00000000 	nop
    1068:	01d94821 	addu	t1,t6,t9
    106c:	a60900b6 	sh	t1,182(s0)
    1070:	c7a0002c 	lwc1	$f0,44(sp)
    1074:	46000005 	abs.s	$f0,$f0
    1078:	4600028d 	trunc.w.s	$f10,$f0
    107c:	e7a0002c 	swc1	$f0,44(sp)
    1080:	440b5000 	mfc1	t3,$f10
    1084:	00000000 	nop
    1088:	2961012d 	slti	at,t3,301
    108c:	50200004 	beqzl	at,10a0 <func_80A0C5D0+0x190>
    1090:	860d0032 	lh	t5,50(s0)
    1094:	860c0032 	lh	t4,50(s0)
    1098:	a60c00b6 	sh	t4,182(s0)
    109c:	860d0032 	lh	t5,50(s0)
    10a0:	860f00b6 	lh	t7,182(s0)
    10a4:	55af001d 	bnel	t5,t7,111c <func_80A0C5D0+0x20c>
    10a8:	8fbf001c 	lw	ra,28(sp)
    10ac:	0c000000 	jal	0 <func_80A0B6C0>
    10b0:	26050024 	addiu	a1,s0,36
    10b4:	861804ba 	lh	t8,1210(s0)
    10b8:	a60204b6 	sh	v0,1206(s0)
    10bc:	3408ffff 	li	t0,0xffff
    10c0:	07030004 	bgezl	t8,10d4 <func_80A0C5D0+0x1c4>
    10c4:	a60004b8 	sh	zero,1208(s0)
    10c8:	10000002 	b	10d4 <func_80A0C5D0+0x1c4>
    10cc:	a60804b8 	sh	t0,1208(s0)
    10d0:	a60004b8 	sh	zero,1208(s0)
    10d4:	8fae003c 	lw	t6,60(sp)
    10d8:	2404001e 	li	a0,30
    10dc:	24050078 	li	a1,120
    10e0:	8dd9009c 	lw	t9,156(t6)
    10e4:	33290007 	andi	t1,t9,0x7
    10e8:	252a0002 	addiu	t2,t1,2
    10ec:	0c000000 	jal	0 <func_80A0B6C0>
    10f0:	a60a04c0 	sh	t2,1216(s0)
    10f4:	3c050000 	lui	a1,0x0
    10f8:	a60204be 	sh	v0,1214(s0)
    10fc:	24a50000 	addiu	a1,a1,0
    1100:	2604014c 	addiu	a0,s0,332
    1104:	0c000000 	jal	0 <func_80A0B6C0>
    1108:	24060003 	li	a2,3
    110c:	3c0b0000 	lui	t3,0x0
    1110:	256b0000 	addiu	t3,t3,0
    1114:	ae0b0190 	sw	t3,400(s0)
    1118:	8fbf001c 	lw	ra,28(sp)
    111c:	8fb00018 	lw	s0,24(sp)
    1120:	27bd0038 	addiu	sp,sp,56
    1124:	03e00008 	jr	ra
    1128:	00000000 	nop

0000112c <func_80A0C7EC>:
    112c:	27bdffb8 	addiu	sp,sp,-72
    1130:	afb00020 	sw	s0,32(sp)
    1134:	00808025 	move	s0,a0
    1138:	afbf0024 	sw	ra,36(sp)
    113c:	afa5004c 	sw	a1,76(sp)
    1140:	8e0604c8 	lw	a2,1224(s0)
    1144:	0c000000 	jal	0 <func_80A0B6C0>
    1148:	260704ba 	addiu	a3,s0,1210
    114c:	10400014 	beqz	v0,11a0 <func_80A0C7EC+0x74>
    1150:	26040008 	addiu	a0,s0,8
    1154:	860e04c2 	lh	t6,1218(s0)
    1158:	3c050000 	lui	a1,0x0
    115c:	3c0140c0 	lui	at,0x40c0
    1160:	15c0000f 	bnez	t6,11a0 <func_80A0C7EC+0x74>
    1164:	24a50000 	addiu	a1,a1,0
    1168:	860f0032 	lh	t7,50(s0)
    116c:	44812000 	mtc1	at,$f4
    1170:	44803000 	mtc1	zero,$f6
    1174:	39f88000 	xori	t8,t7,0x8000
    1178:	a6180032 	sh	t8,50(s0)
    117c:	2604014c 	addiu	a0,s0,332
    1180:	24060001 	li	a2,1
    1184:	e6040060 	swc1	$f4,96(s0)
    1188:	0c000000 	jal	0 <func_80A0B6C0>
    118c:	e6060068 	swc1	$f6,104(s0)
    1190:	3c190000 	lui	t9,0x0
    1194:	27390000 	addiu	t9,t9,0
    1198:	10000075 	b	1370 <func_80A0C7EC+0x244>
    119c:	ae190190 	sw	t9,400(s0)
    11a0:	26050024 	addiu	a1,s0,36
    11a4:	0c000000 	jal	0 <func_80A0B6C0>
    11a8:	afa40028 	sw	a0,40(sp)
    11ac:	860804b6 	lh	t0,1206(s0)
    11b0:	860904ba 	lh	t1,1210(s0)
    11b4:	02002025 	move	a0,s0
    11b8:	00481823 	subu	v1,v0,t0
    11bc:	00031c00 	sll	v1,v1,0x10
    11c0:	1920000a 	blez	t1,11ec <func_80A0C7EC+0xc0>
    11c4:	00031c03 	sra	v1,v1,0x10
    11c8:	960b04b8 	lhu	t3,1208(s0)
    11cc:	306affff 	andi	t2,v1,0xffff
    11d0:	014b082a 	slt	at,t2,t3
    11d4:	5020000e 	beqzl	at,1210 <func_80A0C7EC+0xe4>
    11d8:	860804c0 	lh	t0,1216(s0)
    11dc:	860c04c0 	lh	t4,1216(s0)
    11e0:	258dffff 	addiu	t5,t4,-1
    11e4:	10000009 	b	120c <func_80A0C7EC+0xe0>
    11e8:	a60d04c0 	sh	t5,1216(s0)
    11ec:	960e04b8 	lhu	t6,1208(s0)
    11f0:	306fffff 	andi	t7,v1,0xffff
    11f4:	01cf082a 	slt	at,t6,t7
    11f8:	50200005 	beqzl	at,1210 <func_80A0C7EC+0xe4>
    11fc:	860804c0 	lh	t0,1216(s0)
    1200:	861804c0 	lh	t8,1216(s0)
    1204:	2719ffff 	addiu	t9,t8,-1
    1208:	a61904c0 	sh	t9,1216(s0)
    120c:	860804c0 	lh	t0,1216(s0)
    1210:	05030003 	bgezl	t0,1220 <func_80A0C7EC+0xf4>
    1214:	a60304b8 	sh	v1,1208(s0)
    1218:	a60004c0 	sh	zero,1216(s0)
    121c:	a60304b8 	sh	v1,1208(s0)
    1220:	0c000000 	jal	0 <func_80A0B6C0>
    1224:	8fa5004c 	lw	a1,76(sp)
    1228:	10400009 	beqz	v0,1250 <func_80A0C7EC+0x124>
    122c:	3c014348 	lui	at,0x4348
    1230:	860904c2 	lh	t1,1218(s0)
    1234:	8fa40028 	lw	a0,40(sp)
    1238:	55200006 	bnezl	t1,1254 <func_80A0C7EC+0x128>
    123c:	44811000 	mtc1	at,$f2
    1240:	0c000000 	jal	0 <func_80A0B6C0>
    1244:	24450024 	addiu	a1,v0,36
    1248:	10000003 	b	1258 <func_80A0C7EC+0x12c>
    124c:	46000086 	mov.s	$f2,$f0
    1250:	44811000 	mtc1	at,$f2
    1254:	00000000 	nop
    1258:	44804000 	mtc1	zero,$f8
    125c:	44051000 	mfc1	a1,$f2
    1260:	3c063e99 	lui	a2,0x3e99
    1264:	34c6999a 	ori	a2,a2,0x999a
    1268:	260404c8 	addiu	a0,s0,1224
    126c:	3c0742c8 	lui	a3,0x42c8
    1270:	0c000000 	jal	0 <func_80A0B6C0>
    1274:	e7a80010 	swc1	$f8,16(sp)
    1278:	27a40030 	addiu	a0,sp,48
    127c:	02002825 	move	a1,s0
    1280:	8e0604c8 	lw	a2,1224(s0)
    1284:	0c000000 	jal	0 <func_80A0B6C0>
    1288:	860704ba 	lh	a3,1210(s0)
    128c:	c7ac0030 	lwc1	$f12,48(sp)
    1290:	0c000000 	jal	0 <func_80A0B6C0>
    1294:	c7ae0038 	lwc1	$f14,56(sp)
    1298:	3c010000 	lui	at,0x0
    129c:	c42a0000 	lwc1	$f10,0(at)
    12a0:	240b0001 	li	t3,1
    12a4:	afab0010 	sw	t3,16(sp)
    12a8:	460a0402 	mul.s	$f16,$f0,$f10
    12ac:	260400b6 	addiu	a0,s0,182
    12b0:	24060004 	li	a2,4
    12b4:	24070fa0 	li	a3,4000
    12b8:	4600848d 	trunc.w.s	$f18,$f16
    12bc:	44059000 	mfc1	a1,$f18
    12c0:	00000000 	nop
    12c4:	00052c00 	sll	a1,a1,0x10
    12c8:	0c000000 	jal	0 <func_80A0B6C0>
    12cc:	00052c03 	sra	a1,a1,0x10
    12d0:	8a0d00b4 	lwl	t5,180(s0)
    12d4:	9a0d00b7 	lwr	t5,183(s0)
    12d8:	02002025 	move	a0,s0
    12dc:	2405317d 	li	a1,12669
    12e0:	aa0d0030 	swl	t5,48(s0)
    12e4:	ba0d0033 	swr	t5,51(s0)
    12e8:	960d00b8 	lhu	t5,184(s0)
    12ec:	0c000000 	jal	0 <func_80A0B6C0>
    12f0:	a60d0034 	sh	t5,52(s0)
    12f4:	3c0140c0 	lui	at,0x40c0
    12f8:	44812000 	mtc1	at,$f4
    12fc:	c6000164 	lwc1	$f0,356(s0)
    1300:	3c014150 	lui	at,0x4150
    1304:	02002025 	move	a0,s0
    1308:	46002032 	c.eq.s	$f4,$f0
    130c:	00000000 	nop
    1310:	4501000d 	bc1t	1348 <func_80A0C7EC+0x21c>
    1314:	00000000 	nop
    1318:	44813000 	mtc1	at,$f6
    131c:	3c0141e0 	lui	at,0x41e0
    1320:	46003032 	c.eq.s	$f6,$f0
    1324:	00000000 	nop
    1328:	45010007 	bc1t	1348 <func_80A0C7EC+0x21c>
    132c:	00000000 	nop
    1330:	44814000 	mtc1	at,$f8
    1334:	00000000 	nop
    1338:	46004032 	c.eq.s	$f8,$f0
    133c:	00000000 	nop
    1340:	45020004 	bc1fl	1354 <func_80A0C7EC+0x228>
    1344:	44805000 	mtc1	zero,$f10
    1348:	0c000000 	jal	0 <func_80A0B6C0>
    134c:	2405397c 	li	a1,14716
    1350:	44805000 	mtc1	zero,$f10
    1354:	3c063dcc 	lui	a2,0x3dcc
    1358:	34c6cccd 	ori	a2,a2,0xcccd
    135c:	26040068 	addiu	a0,s0,104
    1360:	3c054100 	lui	a1,0x4100
    1364:	3c073f80 	lui	a3,0x3f80
    1368:	0c000000 	jal	0 <func_80A0B6C0>
    136c:	e7aa0010 	swc1	$f10,16(sp)
    1370:	8fbf0024 	lw	ra,36(sp)
    1374:	8fb00020 	lw	s0,32(sp)
    1378:	27bd0048 	addiu	sp,sp,72
    137c:	03e00008 	jr	ra
    1380:	00000000 	nop

00001384 <func_80A0CA44>:
    1384:	27bdffe8 	addiu	sp,sp,-24
    1388:	afbf0014 	sw	ra,20(sp)
    138c:	afa5001c 	sw	a1,28(sp)
    1390:	848204be 	lh	v0,1214(a0)
    1394:	10400009 	beqz	v0,13bc <func_80A0CA44+0x38>
    1398:	244effff 	addiu	t6,v0,-1
    139c:	a48e04be 	sh	t6,1214(a0)
    13a0:	848f04be 	lh	t7,1214(a0)
    13a4:	55e00012 	bnezl	t7,13f0 <func_80A0CA44+0x6c>
    13a8:	8fbf0014 	lw	ra,20(sp)
    13ac:	0c000000 	jal	0 <func_80A0B6C0>
    13b0:	00000000 	nop
    13b4:	1000000e 	b	13f0 <func_80A0CA44+0x6c>
    13b8:	8fbf0014 	lw	ra,20(sp)
    13bc:	8482001c 	lh	v0,28(a0)
    13c0:	3c190000 	lui	t9,0x0
    13c4:	27390000 	addiu	t9,t9,0
    13c8:	30588000 	andi	t8,v0,0x8000
    13cc:	13000003 	beqz	t8,13dc <func_80A0CA44+0x58>
    13d0:	30484000 	andi	t0,v0,0x4000
    13d4:	10000005 	b	13ec <func_80A0CA44+0x68>
    13d8:	ac990190 	sw	t9,400(a0)
    13dc:	11000003 	beqz	t0,13ec <func_80A0CA44+0x68>
    13e0:	2409001e 	li	t1,30
    13e4:	a480001c 	sh	zero,28(a0)
    13e8:	a48904be 	sh	t1,1214(a0)
    13ec:	8fbf0014 	lw	ra,20(sp)
    13f0:	27bd0018 	addiu	sp,sp,24
    13f4:	03e00008 	jr	ra
    13f8:	00000000 	nop

000013fc <EnFd_Update>:
    13fc:	27bdffc0 	addiu	sp,sp,-64
    1400:	afbf0024 	sw	ra,36(sp)
    1404:	afb10020 	sw	s1,32(sp)
    1408:	afb0001c 	sw	s0,28(sp)
    140c:	848e04bc 	lh	t6,1212(a0)
    1410:	00808025 	move	s0,a0
    1414:	00a08825 	move	s1,a1
    1418:	11c00004 	beqz	t6,142c <EnFd_Update+0x30>
    141c:	00000000 	nop
    1420:	0c000000 	jal	0 <func_80A0B6C0>
    1424:	24040038 	li	a0,56
    1428:	a60004bc 	sh	zero,1212(s0)
    142c:	3c0f0000 	lui	t7,0x0
    1430:	25ef0000 	addiu	t7,t7,0
    1434:	afaf0034 	sw	t7,52(sp)
    1438:	8e180190 	lw	t8,400(s0)
    143c:	51f80007 	beql	t7,t8,145c <EnFd_Update+0x60>
    1440:	8e190004 	lw	t9,4(s0)
    1444:	0c000000 	jal	0 <func_80A0B6C0>
    1448:	2604014c 	addiu	a0,s0,332
    144c:	02002025 	move	a0,s0
    1450:	0c000000 	jal	0 <func_80A0B6C0>
    1454:	02202825 	move	a1,s1
    1458:	8e190004 	lw	t9,4(s0)
    145c:	24012000 	li	at,8192
    1460:	02002025 	move	a0,s0
    1464:	33282000 	andi	t0,t9,0x2000
    1468:	55010018 	bnel	t0,at,14cc <EnFd_Update+0xd0>
    146c:	8e0f0190 	lw	t7,400(s0)
    1470:	0c000000 	jal	0 <func_80A0B6C0>
    1474:	02202825 	move	a1,s1
    1478:	1040000e 	beqz	v0,14b4 <EnFd_Update+0xb8>
    147c:	2401fffe 	li	at,-2
    1480:	8e090004 	lw	t1,4(s0)
    1484:	240b001e 	li	t3,30
    1488:	a60b04c2 	sh	t3,1218(s0)
    148c:	01215024 	and	t2,t1,at
    1490:	ae0a0004 	sw	t2,4(s0)
    1494:	02002025 	move	a0,s0
    1498:	0c000000 	jal	0 <func_80A0B6C0>
    149c:	2405397a 	li	a1,14714
    14a0:	02202025 	move	a0,s1
    14a4:	0c000000 	jal	0 <func_80A0B6C0>
    14a8:	02002825 	move	a1,s0
    14ac:	1000000d 	b	14e4 <EnFd_Update+0xe8>
    14b0:	00000000 	nop
    14b4:	8e0c0004 	lw	t4,4(s0)
    14b8:	2401dfff 	li	at,-8193
    14bc:	01816824 	and	t5,t4,at
    14c0:	10000008 	b	14e4 <EnFd_Update+0xe8>
    14c4:	ae0d0004 	sw	t5,4(s0)
    14c8:	8e0f0190 	lw	t7,400(s0)
    14cc:	3c0e0000 	lui	t6,0x0
    14d0:	25ce0000 	addiu	t6,t6,0
    14d4:	11cf0003 	beq	t6,t7,14e4 <EnFd_Update+0xe8>
    14d8:	02002025 	move	a0,s0
    14dc:	0c000000 	jal	0 <func_80A0B6C0>
    14e0:	02202825 	move	a1,s1
    14e4:	0c000000 	jal	0 <func_80A0B6C0>
    14e8:	02002025 	move	a0,s0
    14ec:	44800000 	mtc1	zero,$f0
    14f0:	24180004 	li	t8,4
    14f4:	afb80014 	sw	t8,20(sp)
    14f8:	44060000 	mfc1	a2,$f0
    14fc:	44070000 	mfc1	a3,$f0
    1500:	02202025 	move	a0,s1
    1504:	02002825 	move	a1,s0
    1508:	0c000000 	jal	0 <func_80A0B6C0>
    150c:	e7a00010 	swc1	$f0,16(sp)
    1510:	02002025 	move	a0,s0
    1514:	0c000000 	jal	0 <func_80A0B6C0>
    1518:	02202825 	move	a1,s1
    151c:	8e190190 	lw	t9,400(s0)
    1520:	02002025 	move	a0,s0
    1524:	02202825 	move	a1,s1
    1528:	0320f809 	jalr	t9
    152c:	00000000 	nop
    1530:	0c000000 	jal	0 <func_80A0B6C0>
    1534:	02002025 	move	a0,s0
    1538:	0c000000 	jal	0 <func_80A0B6C0>
    153c:	02002025 	move	a0,s0
    1540:	8e030190 	lw	v1,400(s0)
    1544:	8fa80034 	lw	t0,52(sp)
    1548:	3c090000 	lui	t1,0x0
    154c:	25290000 	addiu	t1,t1,0
    1550:	51030025 	beql	t0,v1,15e8 <EnFd_Update+0x1ec>
    1554:	8fbf0024 	lw	ra,36(sp)
    1558:	11230022 	beq	t1,v1,15e4 <EnFd_Update+0x1e8>
    155c:	3c0a0000 	lui	t2,0x0
    1560:	254a0000 	addiu	t2,t2,0
    1564:	51430020 	beql	t2,v1,15e8 <EnFd_Update+0x1ec>
    1568:	8fbf0024 	lw	ra,36(sp)
    156c:	860b04c4 	lh	t3,1220(s0)
    1570:	5560000b 	bnezl	t3,15a0 <EnFd_Update+0x1a4>
    1574:	3c010001 	lui	at,0x1
    1578:	860c04c2 	lh	t4,1218(s0)
    157c:	3c010001 	lui	at,0x1
    1580:	34211e60 	ori	at,at,0x1e60
    1584:	15800005 	bnez	t4,159c <EnFd_Update+0x1a0>
    1588:	02202025 	move	a0,s1
    158c:	02212821 	addu	a1,s1,at
    1590:	0c000000 	jal	0 <func_80A0B6C0>
    1594:	26060194 	addiu	a2,s0,404
    1598:	8e030190 	lw	v1,400(s0)
    159c:	3c010001 	lui	at,0x1
    15a0:	3c0d0000 	lui	t5,0x0
    15a4:	25ad0000 	addiu	t5,t5,0
    15a8:	34211e60 	ori	at,at,0x1e60
    15ac:	02212821 	addu	a1,s1,at
    15b0:	11a30004 	beq	t5,v1,15c4 <EnFd_Update+0x1c8>
    15b4:	26060194 	addiu	a2,s0,404
    15b8:	3c0e0000 	lui	t6,0x0
    15bc:	25ce0000 	addiu	t6,t6,0
    15c0:	15c30006 	bne	t6,v1,15dc <EnFd_Update+0x1e0>
    15c4:	02202025 	move	a0,s1
    15c8:	afa50034 	sw	a1,52(sp)
    15cc:	0c000000 	jal	0 <func_80A0B6C0>
    15d0:	afa6002c 	sw	a2,44(sp)
    15d4:	8fa50034 	lw	a1,52(sp)
    15d8:	8fa6002c 	lw	a2,44(sp)
    15dc:	0c000000 	jal	0 <func_80A0B6C0>
    15e0:	02202025 	move	a0,s1
    15e4:	8fbf0024 	lw	ra,36(sp)
    15e8:	8fb0001c 	lw	s0,28(sp)
    15ec:	8fb10020 	lw	s1,32(sp)
    15f0:	03e00008 	jr	ra
    15f4:	27bd0040 	addiu	sp,sp,64

000015f8 <func_80A0CCB8>:
    15f8:	8fae0014 	lw	t6,20(sp)
    15fc:	afa40000 	sw	a0,0(sp)
    1600:	afa7000c 	sw	a3,12(sp)
    1604:	85cf04c2 	lh	t7,1218(t6)
    1608:	2401000d 	li	at,13
    160c:	11e00006 	beqz	t7,1628 <func_80A0CCB8+0x30>
    1610:	00000000 	nop
    1614:	10a10003 	beq	a1,at,1624 <func_80A0CCB8+0x2c>
    1618:	24010015 	li	at,21
    161c:	14a10002 	bne	a1,at,1628 <func_80A0CCB8+0x30>
    1620:	00000000 	nop
    1624:	acc00000 	sw	zero,0(a2)
    1628:	03e00008 	jr	ra
    162c:	00001025 	move	v0,zero

00001630 <func_80A0CCF0>:
    1630:	27bdff30 	addiu	sp,sp,-208
    1634:	3c0f0000 	lui	t7,0x0
    1638:	afbf0074 	sw	ra,116(sp)
    163c:	afb70070 	sw	s7,112(sp)
    1640:	afb6006c 	sw	s6,108(sp)
    1644:	afb50068 	sw	s5,104(sp)
    1648:	afb40064 	sw	s4,100(sp)
    164c:	afb30060 	sw	s3,96(sp)
    1650:	afb2005c 	sw	s2,92(sp)
    1654:	afb10058 	sw	s1,88(sp)
    1658:	afb00054 	sw	s0,84(sp)
    165c:	f7be0048 	sdc1	$f30,72(sp)
    1660:	f7bc0040 	sdc1	$f28,64(sp)
    1664:	f7ba0038 	sdc1	$f26,56(sp)
    1668:	f7b80030 	sdc1	$f24,48(sp)
    166c:	f7b60028 	sdc1	$f22,40(sp)
    1670:	f7b40020 	sdc1	$f20,32(sp)
    1674:	afa600d8 	sw	a2,216(sp)
    1678:	afa700dc 	sw	a3,220(sp)
    167c:	25ef0000 	addiu	t7,t7,0
    1680:	8df90000 	lw	t9,0(t7)
    1684:	27ae00c0 	addiu	t6,sp,192
    1688:	8df80004 	lw	t8,4(t7)
    168c:	add90000 	sw	t9,0(t6)
    1690:	8df90008 	lw	t9,8(t7)
    1694:	3c090000 	lui	t1,0x0
    1698:	25290000 	addiu	t1,t1,0
    169c:	add80004 	sw	t8,4(t6)
    16a0:	add90008 	sw	t9,8(t6)
    16a4:	8d2b0000 	lw	t3,0(t1)
    16a8:	27a800b4 	addiu	t0,sp,180
    16ac:	8d2a0004 	lw	t2,4(t1)
    16b0:	ad0b0000 	sw	t3,0(t0)
    16b4:	8d2b0008 	lw	t3,8(t1)
    16b8:	3c0c0000 	lui	t4,0x0
    16bc:	258c0000 	addiu	t4,t4,0
    16c0:	ad0a0004 	sw	t2,4(t0)
    16c4:	ad0b0008 	sw	t3,8(t0)
    16c8:	8d8e0000 	lw	t6,0(t4)
    16cc:	27b400a8 	addiu	s4,sp,168
    16d0:	3c0f0000 	lui	t7,0x0
    16d4:	ae8e0000 	sw	t6,0(s4)
    16d8:	8d8d0004 	lw	t5,4(t4)
    16dc:	25ef0000 	addiu	t7,t7,0
    16e0:	27b2009c 	addiu	s2,sp,156
    16e4:	ae8d0004 	sw	t5,4(s4)
    16e8:	8d8e0008 	lw	t6,8(t4)
    16ec:	3c080000 	lui	t0,0x0
    16f0:	25080000 	addiu	t0,t0,0
    16f4:	ae8e0008 	sw	t6,8(s4)
    16f8:	8df90000 	lw	t9,0(t7)
    16fc:	27b60090 	addiu	s6,sp,144
    1700:	3c0b0000 	lui	t3,0x0
    1704:	ae590000 	sw	t9,0(s2)
    1708:	8df80004 	lw	t8,4(t7)
    170c:	256b0000 	addiu	t3,t3,0
    1710:	27b70084 	addiu	s7,sp,132
    1714:	ae580004 	sw	t8,4(s2)
    1718:	8df90008 	lw	t9,8(t7)
    171c:	24010015 	li	at,21
    1720:	00808025 	move	s0,a0
    1724:	ae590008 	sw	t9,8(s2)
    1728:	8d0a0000 	lw	t2,0(t0)
    172c:	00a09825 	move	s3,a1
    1730:	aeca0000 	sw	t2,0(s6)
    1734:	8d090004 	lw	t1,4(t0)
    1738:	aec90004 	sw	t1,4(s6)
    173c:	8d0a0008 	lw	t2,8(t0)
    1740:	aeca0008 	sw	t2,8(s6)
    1744:	8d6d0000 	lw	t5,0(t3)
    1748:	aeed0000 	sw	t5,0(s7)
    174c:	8d6c0004 	lw	t4,4(t3)
    1750:	aeec0004 	sw	t4,4(s7)
    1754:	8d6d0008 	lw	t5,8(t3)
    1758:	14a10005 	bne	a1,at,1770 <func_80A0CCF0+0x140>
    175c:	aeed0008 	sw	t5,8(s7)
    1760:	8fb500e0 	lw	s5,224(sp)
    1764:	02802025 	move	a0,s4
    1768:	0c000000 	jal	0 <func_80A0B6C0>
    176c:	26a504d0 	addiu	a1,s5,1232
    1770:	2401000d 	li	at,13
    1774:	16610004 	bne	s3,at,1788 <func_80A0CCF0+0x158>
    1778:	8fb500e0 	lw	s5,224(sp)
    177c:	02802025 	move	a0,s4
    1780:	0c000000 	jal	0 <func_80A0B6C0>
    1784:	26a50038 	addiu	a1,s5,56
    1788:	24010003 	li	at,3
    178c:	1261001b 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    1790:	24010006 	li	at,6
    1794:	12610019 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    1798:	24010007 	li	at,7
    179c:	12610017 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17a0:	2401000a 	li	at,10
    17a4:	12610015 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17a8:	2401000e 	li	at,14
    17ac:	12610013 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17b0:	2401000f 	li	at,15
    17b4:	12610011 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17b8:	24010011 	li	at,17
    17bc:	1261000f 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17c0:	24010012 	li	at,18
    17c4:	1261000d 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17c8:	24010014 	li	at,20
    17cc:	1261000b 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17d0:	24010016 	li	at,22
    17d4:	12610009 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17d8:	24010017 	li	at,23
    17dc:	12610007 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17e0:	24010018 	li	at,24
    17e4:	12610005 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17e8:	24010019 	li	at,25
    17ec:	12610003 	beq	s3,at,17fc <func_80A0CCF0+0x1cc>
    17f0:	2401001a 	li	at,26
    17f4:	56610046 	bnel	s3,at,1910 <func_80A0CCF0+0x2e0>
    17f8:	02602025 	move	a0,s3
    17fc:	8e0e009c 	lw	t6,156(s0)
    1800:	00008025 	move	s0,zero
    1804:	3c010000 	lui	at,0x0
    1808:	31cf0001 	andi	t7,t6,0x1
    180c:	51e00040 	beqzl	t7,1910 <func_80A0CCF0+0x2e0>
    1810:	02602025 	move	a0,s3
    1814:	c43e0000 	lwc1	$f30,0(at)
    1818:	3c010000 	lui	at,0x0
    181c:	c43c0000 	lwc1	$f28,0(at)
    1820:	3c014220 	lui	at,0x4220
    1824:	4481d000 	mtc1	at,$f26
    1828:	3c010000 	lui	at,0x0
    182c:	c4380000 	lwc1	$f24,0(at)
    1830:	3c0141a0 	lui	at,0x41a0
    1834:	4481b000 	mtc1	at,$f22
    1838:	3c013f00 	lui	at,0x3f00
    183c:	4481a000 	mtc1	at,$f20
    1840:	24110001 	li	s1,1
    1844:	02802025 	move	a0,s4
    1848:	0c000000 	jal	0 <func_80A0B6C0>
    184c:	02402825 	move	a1,s2
    1850:	0c000000 	jal	0 <func_80A0B6C0>
    1854:	00000000 	nop
    1858:	46140181 	sub.s	$f6,$f0,$f20
    185c:	c7a4009c 	lwc1	$f4,156(sp)
    1860:	46163202 	mul.s	$f8,$f6,$f22
    1864:	46082280 	add.s	$f10,$f4,$f8
    1868:	0c000000 	jal	0 <func_80A0B6C0>
    186c:	e7aa009c 	swc1	$f10,156(sp)
    1870:	46140481 	sub.s	$f18,$f0,$f20
    1874:	c7b000a0 	lwc1	$f16,160(sp)
    1878:	461a9182 	mul.s	$f6,$f18,$f26
    187c:	46068100 	add.s	$f4,$f16,$f6
    1880:	0c000000 	jal	0 <func_80A0B6C0>
    1884:	e7a400a0 	swc1	$f4,160(sp)
    1888:	46140281 	sub.s	$f10,$f0,$f20
    188c:	c7a800a4 	lwc1	$f8,164(sp)
    1890:	46165482 	mul.s	$f18,$f10,$f22
    1894:	46124400 	add.s	$f16,$f8,$f18
    1898:	0c000000 	jal	0 <func_80A0B6C0>
    189c:	e7b000a4 	swc1	$f16,164(sp)
    18a0:	46140181 	sub.s	$f6,$f0,$f20
    18a4:	46183102 	mul.s	$f4,$f6,$f24
    18a8:	0c000000 	jal	0 <func_80A0B6C0>
    18ac:	e7a40090 	swc1	$f4,144(sp)
    18b0:	46140281 	sub.s	$f10,$f0,$f20
    18b4:	461c5202 	mul.s	$f8,$f10,$f28
    18b8:	461e4480 	add.s	$f18,$f8,$f30
    18bc:	0c000000 	jal	0 <func_80A0B6C0>
    18c0:	e7b20094 	swc1	$f18,148(sp)
    18c4:	46140401 	sub.s	$f16,$f0,$f20
    18c8:	3c010000 	lui	at,0x0
    18cc:	c4240000 	lwc1	$f4,0(at)
    18d0:	44805000 	mtc1	zero,$f10
    18d4:	46188182 	mul.s	$f6,$f16,$f24
    18d8:	02a02025 	move	a0,s5
    18dc:	24050002 	li	a1,2
    18e0:	02403025 	move	a2,s2
    18e4:	02e03825 	move	a3,s7
    18e8:	afb60010 	sw	s6,16(sp)
    18ec:	afa00014 	sw	zero,20(sp)
    18f0:	e7a60098 	swc1	$f6,152(sp)
    18f4:	e7a40018 	swc1	$f4,24(sp)
    18f8:	0c000000 	jal	0 <func_80A0B6C0>
    18fc:	e7aa001c 	swc1	$f10,28(sp)
    1900:	26100001 	addiu	s0,s0,1
    1904:	5611ffd0 	bnel	s0,s1,1848 <func_80A0CCF0+0x218>
    1908:	02802025 	move	a0,s4
    190c:	02602025 	move	a0,s3
    1910:	0c000000 	jal	0 <func_80A0B6C0>
    1914:	26a50194 	addiu	a1,s5,404
    1918:	8fbf0074 	lw	ra,116(sp)
    191c:	d7b40020 	ldc1	$f20,32(sp)
    1920:	d7b60028 	ldc1	$f22,40(sp)
    1924:	d7b80030 	ldc1	$f24,48(sp)
    1928:	d7ba0038 	ldc1	$f26,56(sp)
    192c:	d7bc0040 	ldc1	$f28,64(sp)
    1930:	d7be0048 	ldc1	$f30,72(sp)
    1934:	8fb00054 	lw	s0,84(sp)
    1938:	8fb10058 	lw	s1,88(sp)
    193c:	8fb2005c 	lw	s2,92(sp)
    1940:	8fb30060 	lw	s3,96(sp)
    1944:	8fb40064 	lw	s4,100(sp)
    1948:	8fb50068 	lw	s5,104(sp)
    194c:	8fb6006c 	lw	s6,108(sp)
    1950:	8fb70070 	lw	s7,112(sp)
    1954:	03e00008 	jr	ra
    1958:	27bd00d0 	addiu	sp,sp,208

0000195c <EnFd_Draw>:
    195c:	27bdff60 	addiu	sp,sp,-160
    1960:	3c0f0000 	lui	t7,0x0
    1964:	afbf003c 	sw	ra,60(sp)
    1968:	afb10038 	sw	s1,56(sp)
    196c:	afb00034 	sw	s0,52(sp)
    1970:	afa500a4 	sw	a1,164(sp)
    1974:	25ef0000 	addiu	t7,t7,0
    1978:	8df90000 	lw	t9,0(t7)
    197c:	27ae008c 	addiu	t6,sp,140
    1980:	8df80004 	lw	t8,4(t7)
    1984:	add90000 	sw	t9,0(t6)
    1988:	8df90008 	lw	t9,8(t7)
    198c:	3c090000 	lui	t1,0x0
    1990:	25290000 	addiu	t1,t1,0
    1994:	add80004 	sw	t8,4(t6)
    1998:	add90008 	sw	t9,8(t6)
    199c:	8d2b0000 	lw	t3,0(t1)
    19a0:	27a80080 	addiu	t0,sp,128
    19a4:	8d2a0004 	lw	t2,4(t1)
    19a8:	ad0b0000 	sw	t3,0(t0)
    19ac:	8d2b0008 	lw	t3,8(t1)
    19b0:	ad0a0004 	sw	t2,4(t0)
    19b4:	00808825 	move	s1,a0
    19b8:	ad0b0008 	sw	t3,8(t0)
    19bc:	8fac00a4 	lw	t4,164(sp)
    19c0:	3c060000 	lui	a2,0x0
    19c4:	24c60000 	addiu	a2,a2,0
    19c8:	8d8d009c 	lw	t5,156(t4)
    19cc:	27a40064 	addiu	a0,sp,100
    19d0:	240706d7 	li	a3,1751
    19d4:	afad007c 	sw	t5,124(sp)
    19d8:	8d850000 	lw	a1,0(t4)
    19dc:	0c000000 	jal	0 <func_80A0B6C0>
    19e0:	00a08025 	move	s0,a1
    19e4:	0c000000 	jal	0 <func_80A0B6C0>
    19e8:	00000000 	nop
    19ec:	02202025 	move	a0,s1
    19f0:	0c000000 	jal	0 <func_80A0B6C0>
    19f4:	8fa500a4 	lw	a1,164(sp)
    19f8:	02202025 	move	a0,s1
    19fc:	0c000000 	jal	0 <func_80A0B6C0>
    1a00:	8fa500a4 	lw	a1,164(sp)
    1a04:	0c000000 	jal	0 <func_80A0B6C0>
    1a08:	00000000 	nop
    1a0c:	8e2f0190 	lw	t7,400(s1)
    1a10:	3c0e0000 	lui	t6,0x0
    1a14:	25ce0000 	addiu	t6,t6,0
    1a18:	11cf00c0 	beq	t6,t7,1d1c <EnFd_Draw+0x3c0>
    1a1c:	3c010000 	lui	at,0x0
    1a20:	c62404cc 	lwc1	$f4,1228(s1)
    1a24:	c4260000 	lwc1	$f6,0(at)
    1a28:	8fb800a4 	lw	t8,164(sp)
    1a2c:	4606203c 	c.lt.s	$f4,$f6
    1a30:	00000000 	nop
    1a34:	450300ba 	bc1tl	1d20 <EnFd_Draw+0x3c4>
    1a38:	8fa800a4 	lw	t0,164(sp)
    1a3c:	0c000000 	jal	0 <func_80A0B6C0>
    1a40:	8f040000 	lw	a0,0(t8)
    1a44:	922200af 	lbu	v0,175(s1)
    1a48:	3c08fa00 	lui	t0,0xfa00
    1a4c:	35080080 	ori	t0,t0,0x80
    1a50:	2442ffff 	addiu	v0,v0,-1
    1a54:	04410003 	bgez	v0,1a64 <EnFd_Draw+0x108>
    1a58:	00003825 	move	a3,zero
    1a5c:	10000007 	b	1a7c <EnFd_Draw+0x120>
    1a60:	00002825 	move	a1,zero
    1a64:	28410018 	slti	at,v0,24
    1a68:	14200003 	bnez	at,1a78 <EnFd_Draw+0x11c>
    1a6c:	00401825 	move	v1,v0
    1a70:	10000001 	b	1a78 <EnFd_Draw+0x11c>
    1a74:	24030017 	li	v1,23
    1a78:	00602825 	move	a1,v1
    1a7c:	8e0202d0 	lw	v0,720(s0)
    1a80:	27a9008c 	addiu	t1,sp,140
    1a84:	240c0001 	li	t4,1
    1a88:	24590008 	addiu	t9,v0,8
    1a8c:	ae1902d0 	sw	t9,720(s0)
    1a90:	ac480000 	sw	t0,0(v0)
    1a94:	c62804cc 	lwc1	$f8,1228(s1)
    1a98:	00402025 	move	a0,v0
    1a9c:	04a10003 	bgez	a1,1aac <EnFd_Draw+0x150>
    1aa0:	000530c3 	sra	a2,a1,0x3
    1aa4:	24a10007 	addiu	at,a1,7
    1aa8:	000130c3 	sra	a2,at,0x3
    1aac:	00063080 	sll	a2,a2,0x2
    1ab0:	00c91821 	addu	v1,a2,t1
    1ab4:	906b0002 	lbu	t3,2(v1)
    1ab8:	906e0000 	lbu	t6,0(v1)
    1abc:	90680001 	lbu	t0,1(v1)
    1ac0:	000b6a00 	sll	t5,t3,0x8
    1ac4:	444bf800 	cfc1	t3,$31
    1ac8:	44ccf800 	ctc1	t4,$31
    1acc:	000e7e00 	sll	t7,t6,0x18
    1ad0:	01afc025 	or	t8,t5,t7
    1ad4:	460042a4 	cvt.w.s	$f10,$f8
    1ad8:	00084c00 	sll	t1,t0,0x10
    1adc:	03095025 	or	t2,t8,t1
    1ae0:	3c014f00 	lui	at,0x4f00
    1ae4:	444cf800 	cfc1	t4,$31
    1ae8:	27b80080 	addiu	t8,sp,128
    1aec:	3c08fb00 	lui	t0,0xfb00
    1af0:	318c0078 	andi	t4,t4,0x78
    1af4:	11800012 	beqz	t4,1b40 <EnFd_Draw+0x1e4>
    1af8:	00002825 	move	a1,zero
    1afc:	44815000 	mtc1	at,$f10
    1b00:	240c0001 	li	t4,1
    1b04:	460a4281 	sub.s	$f10,$f8,$f10
    1b08:	44ccf800 	ctc1	t4,$31
    1b0c:	00000000 	nop
    1b10:	460052a4 	cvt.w.s	$f10,$f10
    1b14:	444cf800 	cfc1	t4,$31
    1b18:	00000000 	nop
    1b1c:	318c0078 	andi	t4,t4,0x78
    1b20:	15800005 	bnez	t4,1b38 <EnFd_Draw+0x1dc>
    1b24:	00000000 	nop
    1b28:	440c5000 	mfc1	t4,$f10
    1b2c:	3c018000 	lui	at,0x8000
    1b30:	10000007 	b	1b50 <EnFd_Draw+0x1f4>
    1b34:	01816025 	or	t4,t4,at
    1b38:	10000005 	b	1b50 <EnFd_Draw+0x1f4>
    1b3c:	240cffff 	li	t4,-1
    1b40:	440c5000 	mfc1	t4,$f10
    1b44:	00000000 	nop
    1b48:	0580fffb 	bltz	t4,1b38 <EnFd_Draw+0x1dc>
    1b4c:	00000000 	nop
    1b50:	01807025 	move	t6,t4
    1b54:	31cd00ff 	andi	t5,t6,0xff
    1b58:	014d7825 	or	t7,t2,t5
    1b5c:	ac8f0004 	sw	t7,4(a0)
    1b60:	8e0402d0 	lw	a0,720(s0)
    1b64:	44cbf800 	ctc1	t3,$31
    1b68:	00d81821 	addu	v1,a2,t8
    1b6c:	24990008 	addiu	t9,a0,8
    1b70:	ae1902d0 	sw	t9,720(s0)
    1b74:	ac880000 	sw	t0,0(a0)
    1b78:	906b0002 	lbu	t3,2(v1)
    1b7c:	240e0001 	li	t6,1
    1b80:	c63004cc 	lwc1	$f16,1228(s1)
    1b84:	000b6200 	sll	t4,t3,0x8
    1b88:	444bf800 	cfc1	t3,$31
    1b8c:	44cef800 	ctc1	t6,$31
    1b90:	90680001 	lbu	t0,1(v1)
    1b94:	906a0000 	lbu	t2,0(v1)
    1b98:	460084a4 	cvt.w.s	$f18,$f16
    1b9c:	0008c400 	sll	t8,t0,0x10
    1ba0:	000a6e00 	sll	t5,t2,0x18
    1ba4:	018d7825 	or	t7,t4,t5
    1ba8:	444ef800 	cfc1	t6,$31
    1bac:	3c08db06 	lui	t0,0xdb06
    1bb0:	01f84825 	or	t1,t7,t8
    1bb4:	31ce0078 	andi	t6,t6,0x78
    1bb8:	11c00013 	beqz	t6,1c08 <EnFd_Draw+0x2ac>
    1bbc:	35080020 	ori	t0,t0,0x20
    1bc0:	3c014f00 	lui	at,0x4f00
    1bc4:	44819000 	mtc1	at,$f18
    1bc8:	240e0001 	li	t6,1
    1bcc:	46128481 	sub.s	$f18,$f16,$f18
    1bd0:	44cef800 	ctc1	t6,$31
    1bd4:	00000000 	nop
    1bd8:	460094a4 	cvt.w.s	$f18,$f18
    1bdc:	444ef800 	cfc1	t6,$31
    1be0:	00000000 	nop
    1be4:	31ce0078 	andi	t6,t6,0x78
    1be8:	15c00005 	bnez	t6,1c00 <EnFd_Draw+0x2a4>
    1bec:	00000000 	nop
    1bf0:	440e9000 	mfc1	t6,$f18
    1bf4:	3c018000 	lui	at,0x8000
    1bf8:	10000007 	b	1c18 <EnFd_Draw+0x2bc>
    1bfc:	01c17025 	or	t6,t6,at
    1c00:	10000005 	b	1c18 <EnFd_Draw+0x2bc>
    1c04:	240effff 	li	t6,-1
    1c08:	440e9000 	mfc1	t6,$f18
    1c0c:	00000000 	nop
    1c10:	05c0fffb 	bltz	t6,1c00 <EnFd_Draw+0x2a4>
    1c14:	00000000 	nop
    1c18:	01c05025 	move	t2,t6
    1c1c:	314c00ff 	andi	t4,t2,0xff
    1c20:	012c6825 	or	t5,t1,t4
    1c24:	ac8d0004 	sw	t5,4(a0)
    1c28:	8e0202d0 	lw	v0,720(s0)
    1c2c:	44cbf800 	ctc1	t3,$31
    1c30:	240d00ff 	li	t5,255
    1c34:	24590008 	addiu	t9,v0,8
    1c38:	ae1902d0 	sw	t9,720(s0)
    1c3c:	ac480000 	sw	t0,0(v0)
    1c40:	8faf00a4 	lw	t7,164(sp)
    1c44:	8faa007c 	lw	t2,124(sp)
    1c48:	24080008 	li	t0,8
    1c4c:	8de40000 	lw	a0,0(t7)
    1c50:	000a4880 	sll	t1,t2,0x2
    1c54:	012a4823 	subu	t1,t1,t2
    1c58:	00094840 	sll	t1,t1,0x1
    1c5c:	312c00ff 	andi	t4,t1,0xff
    1c60:	01acc823 	subu	t9,t5,t4
    1c64:	240f0040 	li	t7,64
    1c68:	240b0040 	li	t3,64
    1c6c:	240e0001 	li	t6,1
    1c70:	24180020 	li	t8,32
    1c74:	afb80010 	sw	t8,16(sp)
    1c78:	afae0018 	sw	t6,24(sp)
    1c7c:	afab0014 	sw	t3,20(sp)
    1c80:	afaf0028 	sw	t7,40(sp)
    1c84:	afb90020 	sw	t9,32(sp)
    1c88:	afa80024 	sw	t0,36(sp)
    1c8c:	afa0001c 	sw	zero,28(sp)
    1c90:	00003025 	move	a2,zero
    1c94:	0c000000 	jal	0 <func_80A0B6C0>
    1c98:	afa20058 	sw	v0,88(sp)
    1c9c:	8fa30058 	lw	v1,88(sp)
    1ca0:	3c0be700 	lui	t3,0xe700
    1ca4:	3c0adb06 	lui	t2,0xdb06
    1ca8:	ac620004 	sw	v0,4(v1)
    1cac:	8e0202d0 	lw	v0,720(s0)
    1cb0:	3c090000 	lui	t1,0x0
    1cb4:	25290000 	addiu	t1,t1,0
    1cb8:	24580008 	addiu	t8,v0,8
    1cbc:	ae1802d0 	sw	t8,720(s0)
    1cc0:	ac400004 	sw	zero,4(v0)
    1cc4:	ac4b0000 	sw	t3,0(v0)
    1cc8:	8e0202d0 	lw	v0,720(s0)
    1ccc:	354a0024 	ori	t2,t2,0x24
    1cd0:	3c0d0000 	lui	t5,0x0
    1cd4:	244e0008 	addiu	t6,v0,8
    1cd8:	ae0e02d0 	sw	t6,720(s0)
    1cdc:	ac490004 	sw	t1,4(v0)
    1ce0:	ac4a0000 	sw	t2,0(v0)
    1ce4:	9227014e 	lbu	a3,334(s1)
    1ce8:	8e26016c 	lw	a2,364(s1)
    1cec:	8e250150 	lw	a1,336(s1)
    1cf0:	3c0c0000 	lui	t4,0x0
    1cf4:	258c0000 	addiu	t4,t4,0
    1cf8:	25ad0000 	addiu	t5,t5,0
    1cfc:	afad0010 	sw	t5,16(sp)
    1d00:	afac0014 	sw	t4,20(sp)
    1d04:	afb10018 	sw	s1,24(sp)
    1d08:	8e1902d0 	lw	t9,720(s0)
    1d0c:	8fa400a4 	lw	a0,164(sp)
    1d10:	0c000000 	jal	0 <func_80A0B6C0>
    1d14:	afb9001c 	sw	t9,28(sp)
    1d18:	ae0202d0 	sw	v0,720(s0)
    1d1c:	8fa800a4 	lw	t0,164(sp)
    1d20:	3c060000 	lui	a2,0x0
    1d24:	24c60000 	addiu	a2,a2,0
    1d28:	27a40064 	addiu	a0,sp,100
    1d2c:	2407071e 	li	a3,1822
    1d30:	0c000000 	jal	0 <func_80A0B6C0>
    1d34:	8d050000 	lw	a1,0(t0)
    1d38:	8fbf003c 	lw	ra,60(sp)
    1d3c:	8fb00034 	lw	s0,52(sp)
    1d40:	8fb10038 	lw	s1,56(sp)
    1d44:	03e00008 	jr	ra
    1d48:	27bd00a0 	addiu	sp,sp,160

00001d4c <func_80A0D40C>:
    1d4c:	27bdffe0 	addiu	sp,sp,-32
    1d50:	afa50024 	sw	a1,36(sp)
    1d54:	30a500ff 	andi	a1,a1,0xff
    1d58:	afbf0014 	sw	ra,20(sp)
    1d5c:	24830620 	addiu	v1,a0,1568
    1d60:	00001025 	move	v0,zero
    1d64:	906e0000 	lbu	t6,0(v1)
    1d68:	24420001 	addiu	v0,v0,1
    1d6c:	00021400 	sll	v0,v0,0x10
    1d70:	15c0002b 	bnez	t6,1e20 <func_80A0D40C+0xd4>
    1d74:	00021403 	sra	v0,v0,0x10
    1d78:	c7a40038 	lwc1	$f4,56(sp)
    1d7c:	30ae00ff 	andi	t6,a1,0xff
    1d80:	24010002 	li	at,2
    1d84:	e4640004 	swc1	$f4,4(v1)
    1d88:	c7a6003c 	lwc1	$f6,60(sp)
    1d8c:	240f00ff 	li	t7,255
    1d90:	e4660008 	swc1	$f6,8(v1)
    1d94:	93b80037 	lbu	t8,55(sp)
    1d98:	a0650000 	sb	a1,0(v1)
    1d9c:	a0780001 	sb	t8,1(v1)
    1da0:	a0780002 	sb	t8,2(v1)
    1da4:	8cc80000 	lw	t0,0(a2)
    1da8:	ac680014 	sw	t0,20(v1)
    1dac:	8cd90004 	lw	t9,4(a2)
    1db0:	ac790018 	sw	t9,24(v1)
    1db4:	8cc80008 	lw	t0,8(a2)
    1db8:	ac68001c 	sw	t0,28(v1)
    1dbc:	8fa90030 	lw	t1,48(sp)
    1dc0:	8d2b0000 	lw	t3,0(t1)
    1dc4:	ac6b002c 	sw	t3,44(v1)
    1dc8:	8d2a0004 	lw	t2,4(t1)
    1dcc:	ac6a0030 	sw	t2,48(v1)
    1dd0:	8d2b0008 	lw	t3,8(t1)
    1dd4:	ac6b0034 	sw	t3,52(v1)
    1dd8:	8ced0000 	lw	t5,0(a3)
    1ddc:	ac6d0020 	sw	t5,32(v1)
    1de0:	8cec0004 	lw	t4,4(a3)
    1de4:	ac6c0024 	sw	t4,36(v1)
    1de8:	8ced0008 	lw	t5,8(a3)
    1dec:	15c1000f 	bne	t6,at,1e2c <func_80A0D40C+0xe0>
    1df0:	ac6d0028 	sw	t5,40(v1)
    1df4:	a06f000f 	sb	t7,15(v1)
    1df8:	0c000000 	jal	0 <func_80A0B6C0>
    1dfc:	afa3001c 	sw	v1,28(sp)
    1e00:	3c014120 	lui	at,0x4120
    1e04:	44814000 	mtc1	at,$f8
    1e08:	8fa3001c 	lw	v1,28(sp)
    1e0c:	46080282 	mul.s	$f10,$f0,$f8
    1e10:	4600540d 	trunc.w.s	$f16,$f10
    1e14:	44098000 	mfc1	t1,$f16
    1e18:	10000004 	b	1e2c <func_80A0D40C+0xe0>
    1e1c:	a0690001 	sb	t1,1(v1)
    1e20:	284100c8 	slti	at,v0,200
    1e24:	1420ffcf 	bnez	at,1d64 <func_80A0D40C+0x18>
    1e28:	24630038 	addiu	v1,v1,56
    1e2c:	8fbf0014 	lw	ra,20(sp)
    1e30:	27bd0020 	addiu	sp,sp,32
    1e34:	03e00008 	jr	ra
    1e38:	00000000 	nop

00001e3c <func_80A0D4FC>:
    1e3c:	27bdffc8 	addiu	sp,sp,-56
    1e40:	f7b60020 	sdc1	$f22,32(sp)
    1e44:	3c010000 	lui	at,0x0
    1e48:	c4360000 	lwc1	$f22,0(at)
    1e4c:	afb20030 	sw	s2,48(sp)
    1e50:	afb1002c 	sw	s1,44(sp)
    1e54:	afb00028 	sw	s0,40(sp)
    1e58:	f7b40018 	sdc1	$f20,24(sp)
    1e5c:	3c010000 	lui	at,0x0
    1e60:	afbf0034 	sw	ra,52(sp)
    1e64:	24900620 	addiu	s0,a0,1568
    1e68:	c4340000 	lwc1	$f20,0(at)
    1e6c:	00008825 	move	s1,zero
    1e70:	24120001 	li	s2,1
    1e74:	920e0000 	lbu	t6,0(s0)
    1e78:	564e0029 	bnel	s2,t6,1f20 <func_80A0D4FC+0xe4>
    1e7c:	26310001 	addiu	s1,s1,1
    1e80:	920f0001 	lbu	t7,1(s0)
    1e84:	25f8ffff 	addiu	t8,t7,-1
    1e88:	331900ff 	andi	t9,t8,0xff
    1e8c:	17200002 	bnez	t9,1e98 <func_80A0D4FC+0x5c>
    1e90:	a2180001 	sb	t8,1(s0)
    1e94:	a2000000 	sb	zero,0(s0)
    1e98:	0c000000 	jal	0 <func_80A0B6C0>
    1e9c:	00000000 	nop
    1ea0:	46140102 	mul.s	$f4,$f0,$f20
    1ea4:	46162181 	sub.s	$f6,$f4,$f22
    1ea8:	0c000000 	jal	0 <func_80A0B6C0>
    1eac:	e606002c 	swc1	$f6,44(s0)
    1eb0:	c60c0020 	lwc1	$f12,32(s0)
    1eb4:	c60a0014 	lwc1	$f10,20(s0)
    1eb8:	46140202 	mul.s	$f8,$f0,$f20
    1ebc:	c60e0024 	lwc1	$f14,36(s0)
    1ec0:	460c5480 	add.s	$f18,$f10,$f12
    1ec4:	c6040018 	lwc1	$f4,24(s0)
    1ec8:	c6100028 	lwc1	$f16,40(s0)
    1ecc:	e6120014 	swc1	$f18,20(s0)
    1ed0:	c612002c 	lwc1	$f18,44(s0)
    1ed4:	460e2180 	add.s	$f6,$f4,$f14
    1ed8:	46164081 	sub.s	$f2,$f8,$f22
    1edc:	c608001c 	lwc1	$f8,28(s0)
    1ee0:	e6060018 	swc1	$f6,24(s0)
    1ee4:	46126100 	add.s	$f4,$f12,$f18
    1ee8:	c6060030 	lwc1	$f6,48(s0)
    1eec:	c6120004 	lwc1	$f18,4(s0)
    1ef0:	46104280 	add.s	$f10,$f8,$f16
    1ef4:	e6040020 	swc1	$f4,32(s0)
    1ef8:	c6040008 	lwc1	$f4,8(s0)
    1efc:	46067200 	add.s	$f8,$f14,$f6
    1f00:	e60a001c 	swc1	$f10,28(s0)
    1f04:	e6020034 	swc1	$f2,52(s0)
    1f08:	46028280 	add.s	$f10,$f16,$f2
    1f0c:	e6080024 	swc1	$f8,36(s0)
    1f10:	46049180 	add.s	$f6,$f18,$f4
    1f14:	e60a0028 	swc1	$f10,40(s0)
    1f18:	e6060004 	swc1	$f6,4(s0)
    1f1c:	26310001 	addiu	s1,s1,1
    1f20:	00118c00 	sll	s1,s1,0x10
    1f24:	00118c03 	sra	s1,s1,0x10
    1f28:	2a2100c8 	slti	at,s1,200
    1f2c:	1420ffd1 	bnez	at,1e74 <func_80A0D4FC+0x38>
    1f30:	26100038 	addiu	s0,s0,56
    1f34:	8fbf0034 	lw	ra,52(sp)
    1f38:	d7b40018 	ldc1	$f20,24(sp)
    1f3c:	d7b60020 	ldc1	$f22,32(sp)
    1f40:	8fb00028 	lw	s0,40(sp)
    1f44:	8fb1002c 	lw	s1,44(sp)
    1f48:	8fb20030 	lw	s2,48(sp)
    1f4c:	03e00008 	jr	ra
    1f50:	27bd0038 	addiu	sp,sp,56

00001f54 <func_80A0D614>:
    1f54:	3c0e0000 	lui	t6,0x0
    1f58:	25ce0000 	addiu	t6,t6,0
    1f5c:	8dd80000 	lw	t8,0(t6)
    1f60:	27bdffe0 	addiu	sp,sp,-32
    1f64:	27a60008 	addiu	a2,sp,8
    1f68:	acd80000 	sw	t8,0(a2)
    1f6c:	8dcf0004 	lw	t7,4(t6)
    1f70:	24820620 	addiu	v0,a0,1568
    1f74:	00001825 	move	v1,zero
    1f78:	accf0004 	sw	t7,4(a2)
    1f7c:	8dd80008 	lw	t8,8(t6)
    1f80:	24070002 	li	a3,2
    1f84:	acd80008 	sw	t8,8(a2)
    1f88:	8dcf000c 	lw	t7,12(t6)
    1f8c:	accf000c 	sw	t7,12(a2)
    1f90:	90590000 	lbu	t9,0(v0)
    1f94:	24630001 	addiu	v1,v1,1
    1f98:	00031c00 	sll	v1,v1,0x10
    1f9c:	14f9002f 	bne	a3,t9,205c <func_80A0D614+0x108>
    1fa0:	00031c03 	sra	v1,v1,0x10
    1fa4:	c4400020 	lwc1	$f0,32(v0)
    1fa8:	c4440014 	lwc1	$f4,20(v0)
    1fac:	c4420024 	lwc1	$f2,36(v0)
    1fb0:	c4480018 	lwc1	$f8,24(v0)
    1fb4:	c44c0028 	lwc1	$f12,40(v0)
    1fb8:	c450001c 	lwc1	$f16,28(v0)
    1fbc:	46002180 	add.s	$f6,$f4,$f0
    1fc0:	90480001 	lbu	t0,1(v0)
    1fc4:	c444002c 	lwc1	$f4,44(v0)
    1fc8:	46024280 	add.s	$f10,$f8,$f2
    1fcc:	c4480030 	lwc1	$f8,48(v0)
    1fd0:	e4460014 	swc1	$f6,20(v0)
    1fd4:	460c8480 	add.s	$f18,$f16,$f12
    1fd8:	c4500034 	lwc1	$f16,52(v0)
    1fdc:	e44a0018 	swc1	$f10,24(v0)
    1fe0:	46040180 	add.s	$f6,$f0,$f4
    1fe4:	e452001c 	swc1	$f18,28(v0)
    1fe8:	25090001 	addiu	t1,t0,1
    1fec:	46081280 	add.s	$f10,$f2,$f8
    1ff0:	312a00ff 	andi	t2,t1,0xff
    1ff4:	a0490001 	sb	t1,1(v0)
    1ff8:	46106480 	add.s	$f18,$f12,$f16
    1ffc:	e4460020 	swc1	$f6,32(v0)
    2000:	e44a0024 	swc1	$f10,36(v0)
    2004:	9045000f 	lbu	a1,15(v0)
    2008:	e4520028 	swc1	$f18,40(v0)
    200c:	05410004 	bgez	t2,2020 <func_80A0D614+0xcc>
    2010:	314b0003 	andi	t3,t2,0x3
    2014:	11600002 	beqz	t3,2020 <func_80A0D614+0xcc>
    2018:	00000000 	nop
    201c:	256bfffc 	addiu	t3,t3,-4
    2020:	000b6080 	sll	t4,t3,0x2
    2024:	00cc2021 	addu	a0,a2,t4
    2028:	908d0000 	lbu	t5,0(a0)
    202c:	28a1001f 	slti	at,a1,31
    2030:	24b8ffe2 	addiu	t8,a1,-30
    2034:	a04d000c 	sb	t5,12(v0)
    2038:	908e0001 	lbu	t6,1(a0)
    203c:	a04e000d 	sb	t6,13(v0)
    2040:	908f0002 	lbu	t7,2(a0)
    2044:	14200003 	bnez	at,2054 <func_80A0D614+0x100>
    2048:	a04f000e 	sb	t7,14(v0)
    204c:	10000003 	b	205c <func_80A0D614+0x108>
    2050:	a058000f 	sb	t8,15(v0)
    2054:	a040000f 	sb	zero,15(v0)
    2058:	a0400000 	sb	zero,0(v0)
    205c:	286100c8 	slti	at,v1,200
    2060:	1420ffcb 	bnez	at,1f90 <func_80A0D614+0x3c>
    2064:	24420038 	addiu	v0,v0,56
    2068:	03e00008 	jr	ra
    206c:	27bd0020 	addiu	sp,sp,32

00002070 <func_80A0D730>:
    2070:	27bdff50 	addiu	sp,sp,-176
    2074:	afbf005c 	sw	ra,92(sp)
    2078:	afbe0058 	sw	s8,88(sp)
    207c:	afb70054 	sw	s7,84(sp)
    2080:	afb60050 	sw	s6,80(sp)
    2084:	afb5004c 	sw	s5,76(sp)
    2088:	afb40048 	sw	s4,72(sp)
    208c:	afb30044 	sw	s3,68(sp)
    2090:	afb20040 	sw	s2,64(sp)
    2094:	afb1003c 	sw	s1,60(sp)
    2098:	afb00038 	sw	s0,56(sp)
    209c:	f7ba0030 	sdc1	$f26,48(sp)
    20a0:	f7b80028 	sdc1	$f24,40(sp)
    20a4:	f7b60020 	sdc1	$f22,32(sp)
    20a8:	f7b40018 	sdc1	$f20,24(sp)
    20ac:	afa500b4 	sw	a1,180(sp)
    20b0:	8ca50000 	lw	a1,0(a1)
    20b4:	0080b825 	move	s7,a0
    20b8:	24920620 	addiu	s2,a0,1568
    20bc:	3c060000 	lui	a2,0x0
    20c0:	24c60000 	addiu	a2,a2,0
    20c4:	27a40090 	addiu	a0,sp,144
    20c8:	240707b1 	li	a3,1969
    20cc:	0c000000 	jal	0 <func_80A0B6C0>
    20d0:	00a08025 	move	s0,a1
    20d4:	8faf00b4 	lw	t7,180(sp)
    20d8:	0000f025 	move	s8,zero
    20dc:	0c000000 	jal	0 <func_80A0B6C0>
    20e0:	8de40000 	lw	a0,0(t7)
    20e4:	3c014100 	lui	at,0x4100
    20e8:	4481d000 	mtc1	at,$f26
    20ec:	3c013f80 	lui	at,0x3f80
    20f0:	4481c000 	mtc1	at,$f24
    20f4:	3c01437f 	lui	at,0x437f
    20f8:	4481b000 	mtc1	at,$f22
    20fc:	4481a000 	mtc1	at,$f20
    2100:	0000a025 	move	s4,zero
    2104:	3c16de00 	lui	s6,0xde00
    2108:	92580000 	lbu	t8,0(s2)
    210c:	24010001 	li	at,1
    2110:	8fb300b4 	lw	s3,180(sp)
    2114:	170100be 	bne	t8,at,2410 <func_80A0D730+0x3a0>
    2118:	3c150600 	lui	s5,0x600
    211c:	3c010001 	lui	at,0x1
    2120:	34211da0 	ori	at,at,0x1da0
    2124:	02619821 	addu	s3,s3,at
    2128:	17c00039 	bnez	s8,2210 <func_80A0D730+0x1a0>
    212c:	26b57938 	addiu	s5,s5,31032
    2130:	3c110600 	lui	s1,0x600
    2134:	26317928 	addiu	s1,s1,31016
    2138:	8e0402d0 	lw	a0,720(s0)
    213c:	00002825 	move	a1,zero
    2140:	0c000000 	jal	0 <func_80A0B6C0>
    2144:	241e0001 	li	s8,1
    2148:	ae0202d0 	sw	v0,720(s0)
    214c:	24590008 	addiu	t9,v0,8
    2150:	ae1902d0 	sw	t9,720(s0)
    2154:	ac510004 	sw	s1,4(v0)
    2158:	ac560000 	sw	s6,0(v0)
    215c:	8e0302d0 	lw	v1,720(s0)
    2160:	3c09fb00 	lui	t1,0xfb00
    2164:	240b0001 	li	t3,1
    2168:	24680008 	addiu	t0,v1,8
    216c:	ae0802d0 	sw	t0,720(s0)
    2170:	ac690000 	sw	t1,0(v1)
    2174:	c6e404cc 	lwc1	$f4,1228(s7)
    2178:	3c014f00 	lui	at,0x4f00
    217c:	46142183 	div.s	$f6,$f4,$f20
    2180:	46163202 	mul.s	$f8,$f6,$f22
    2184:	444af800 	cfc1	t2,$31
    2188:	44cbf800 	ctc1	t3,$31
    218c:	00000000 	nop
    2190:	460042a4 	cvt.w.s	$f10,$f8
    2194:	444bf800 	cfc1	t3,$31
    2198:	00000000 	nop
    219c:	316b0078 	andi	t3,t3,0x78
    21a0:	51600013 	beqzl	t3,21f0 <func_80A0D730+0x180>
    21a4:	440b5000 	mfc1	t3,$f10
    21a8:	44815000 	mtc1	at,$f10
    21ac:	240b0001 	li	t3,1
    21b0:	460a4281 	sub.s	$f10,$f8,$f10
    21b4:	44cbf800 	ctc1	t3,$31
    21b8:	00000000 	nop
    21bc:	460052a4 	cvt.w.s	$f10,$f10
    21c0:	444bf800 	cfc1	t3,$31
    21c4:	00000000 	nop
    21c8:	316b0078 	andi	t3,t3,0x78
    21cc:	15600005 	bnez	t3,21e4 <func_80A0D730+0x174>
    21d0:	00000000 	nop
    21d4:	440b5000 	mfc1	t3,$f10
    21d8:	3c018000 	lui	at,0x8000
    21dc:	10000007 	b	21fc <func_80A0D730+0x18c>
    21e0:	01615825 	or	t3,t3,at
    21e4:	10000005 	b	21fc <func_80A0D730+0x18c>
    21e8:	240bffff 	li	t3,-1
    21ec:	440b5000 	mfc1	t3,$f10
    21f0:	00000000 	nop
    21f4:	0560fffb 	bltz	t3,21e4 <func_80A0D730+0x174>
    21f8:	00000000 	nop
    21fc:	316d00ff 	andi	t5,t3,0xff
    2200:	3c01ff0a 	lui	at,0xff0a
    2204:	44caf800 	ctc1	t2,$31
    2208:	01a17025 	or	t6,t5,at
    220c:	ac6e0004 	sw	t6,4(v1)
    2210:	8e0302d0 	lw	v1,720(s0)
    2214:	3c18fa00 	lui	t8,0xfa00
    2218:	24080001 	li	t0,1
    221c:	246f0008 	addiu	t7,v1,8
    2220:	ae0f02d0 	sw	t7,720(s0)
    2224:	ac780000 	sw	t8,0(v1)
    2228:	c6f004cc 	lwc1	$f16,1228(s7)
    222c:	3c014f00 	lui	at,0x4f00
    2230:	3c0de700 	lui	t5,0xe700
    2234:	46148483 	div.s	$f18,$f16,$f20
    2238:	46169102 	mul.s	$f4,$f18,$f22
    223c:	4459f800 	cfc1	t9,$31
    2240:	44c8f800 	ctc1	t0,$31
    2244:	00000000 	nop
    2248:	460021a4 	cvt.w.s	$f6,$f4
    224c:	4448f800 	cfc1	t0,$31
    2250:	00000000 	nop
    2254:	31080078 	andi	t0,t0,0x78
    2258:	51000013 	beqzl	t0,22a8 <func_80A0D730+0x238>
    225c:	44083000 	mfc1	t0,$f6
    2260:	44813000 	mtc1	at,$f6
    2264:	24080001 	li	t0,1
    2268:	46062181 	sub.s	$f6,$f4,$f6
    226c:	44c8f800 	ctc1	t0,$31
    2270:	00000000 	nop
    2274:	460031a4 	cvt.w.s	$f6,$f6
    2278:	4448f800 	cfc1	t0,$31
    227c:	00000000 	nop
    2280:	31080078 	andi	t0,t0,0x78
    2284:	15000005 	bnez	t0,229c <func_80A0D730+0x22c>
    2288:	00000000 	nop
    228c:	44083000 	mfc1	t0,$f6
    2290:	3c018000 	lui	at,0x8000
    2294:	10000007 	b	22b4 <func_80A0D730+0x244>
    2298:	01014025 	or	t0,t0,at
    229c:	10000005 	b	22b4 <func_80A0D730+0x244>
    22a0:	2408ffff 	li	t0,-1
    22a4:	44083000 	mfc1	t0,$f6
    22a8:	00000000 	nop
    22ac:	0500fffb 	bltz	t0,229c <func_80A0D730+0x22c>
    22b0:	00000000 	nop
    22b4:	310a00ff 	andi	t2,t0,0xff
    22b8:	3c01ffff 	lui	at,0xffff
    22bc:	01415825 	or	t3,t2,at
    22c0:	ac6b0004 	sw	t3,4(v1)
    22c4:	8e0202d0 	lw	v0,720(s0)
    22c8:	44d9f800 	ctc1	t9,$31
    22cc:	00003825 	move	a3,zero
    22d0:	244c0008 	addiu	t4,v0,8
    22d4:	ae0c02d0 	sw	t4,720(s0)
    22d8:	ac400004 	sw	zero,4(v0)
    22dc:	ac4d0000 	sw	t5,0(v0)
    22e0:	8e46001c 	lw	a2,28(s2)
    22e4:	c64e0018 	lwc1	$f14,24(s2)
    22e8:	0c000000 	jal	0 <func_80A0B6C0>
    22ec:	c64c0014 	lwc1	$f12,20(s2)
    22f0:	0c000000 	jal	0 <func_80A0B6C0>
    22f4:	02602025 	move	a0,s3
    22f8:	c64c0004 	lwc1	$f12,4(s2)
    22fc:	4406c000 	mfc1	a2,$f24
    2300:	24070001 	li	a3,1
    2304:	0c000000 	jal	0 <func_80A0B6C0>
    2308:	46006386 	mov.s	$f14,$f12
    230c:	8e0202d0 	lw	v0,720(s0)
    2310:	3c0fda38 	lui	t7,0xda38
    2314:	35ef0003 	ori	t7,t7,0x3
    2318:	244e0008 	addiu	t6,v0,8
    231c:	ae0e02d0 	sw	t6,720(s0)
    2320:	ac4f0000 	sw	t7,0(v0)
    2324:	8fb800b4 	lw	t8,180(sp)
    2328:	3c050000 	lui	a1,0x0
    232c:	24a50000 	addiu	a1,a1,0
    2330:	240607d6 	li	a2,2006
    2334:	00408825 	move	s1,v0
    2338:	0c000000 	jal	0 <func_80A0B6C0>
    233c:	8f040000 	lw	a0,0(t8)
    2340:	ae220004 	sw	v0,4(s1)
    2344:	92590001 	lbu	t9,1(s2)
    2348:	3c014f80 	lui	at,0x4f80
    234c:	44994000 	mtc1	t9,$f8
    2350:	07210004 	bgez	t9,2364 <func_80A0D730+0x2f4>
    2354:	468042a0 	cvt.s.w	$f10,$f8
    2358:	44818000 	mtc1	at,$f16
    235c:	00000000 	nop
    2360:	46105280 	add.s	$f10,$f10,$f16
    2364:	92480002 	lbu	t0,2(s2)
    2368:	3c014f80 	lui	at,0x4f80
    236c:	44889000 	mtc1	t0,$f18
    2370:	05010004 	bgez	t0,2384 <func_80A0D730+0x314>
    2374:	46809120 	cvt.s.w	$f4,$f18
    2378:	44813000 	mtc1	at,$f6
    237c:	00000000 	nop
    2380:	46062100 	add.s	$f4,$f4,$f6
    2384:	4604d203 	div.s	$f8,$f26,$f4
    2388:	8e0202d0 	lw	v0,720(s0)
    238c:	3c0bdb06 	lui	t3,0xdb06
    2390:	356b0020 	ori	t3,t3,0x20
    2394:	244a0008 	addiu	t2,v0,8
    2398:	ae0a02d0 	sw	t2,720(s0)
    239c:	3c040000 	lui	a0,0x0
    23a0:	ac4b0000 	sw	t3,0(v0)
    23a4:	3c190000 	lui	t9,0x0
    23a8:	3c0100ff 	lui	at,0xff
    23ac:	3421ffff 	ori	at,at,0xffff
    23b0:	46085402 	mul.s	$f16,$f10,$f8
    23b4:	4600848d 	trunc.w.s	$f18,$f16
    23b8:	44059000 	mfc1	a1,$f18
    23bc:	00000000 	nop
    23c0:	00052c00 	sll	a1,a1,0x10
    23c4:	00052c03 	sra	a1,a1,0x10
    23c8:	00056080 	sll	t4,a1,0x2
    23cc:	008c2021 	addu	a0,a0,t4
    23d0:	8c840000 	lw	a0,0(a0)
    23d4:	00047100 	sll	t6,a0,0x4
    23d8:	000e7f02 	srl	t7,t6,0x1c
    23dc:	000fc080 	sll	t8,t7,0x2
    23e0:	0338c821 	addu	t9,t9,t8
    23e4:	8f390000 	lw	t9,0(t9)
    23e8:	00816824 	and	t5,a0,at
    23ec:	3c018000 	lui	at,0x8000
    23f0:	01b94021 	addu	t0,t5,t9
    23f4:	01014821 	addu	t1,t0,at
    23f8:	ac490004 	sw	t1,4(v0)
    23fc:	8e0202d0 	lw	v0,720(s0)
    2400:	244a0008 	addiu	t2,v0,8
    2404:	ae0a02d0 	sw	t2,720(s0)
    2408:	ac550004 	sw	s5,4(v0)
    240c:	ac560000 	sw	s6,0(v0)
    2410:	26940001 	addiu	s4,s4,1
    2414:	0014a400 	sll	s4,s4,0x10
    2418:	0014a403 	sra	s4,s4,0x10
    241c:	2a8100c8 	slti	at,s4,200
    2420:	1420ff39 	bnez	at,2108 <func_80A0D730+0x98>
    2424:	26520038 	addiu	s2,s2,56
    2428:	8fab00b4 	lw	t3,180(sp)
    242c:	3c060000 	lui	a2,0x0
    2430:	24c60000 	addiu	a2,a2,0
    2434:	27a40090 	addiu	a0,sp,144
    2438:	240707e4 	li	a3,2020
    243c:	0c000000 	jal	0 <func_80A0B6C0>
    2440:	8d650000 	lw	a1,0(t3)
    2444:	8fbf005c 	lw	ra,92(sp)
    2448:	d7b40018 	ldc1	$f20,24(sp)
    244c:	d7b60020 	ldc1	$f22,32(sp)
    2450:	d7b80028 	ldc1	$f24,40(sp)
    2454:	d7ba0030 	ldc1	$f26,48(sp)
    2458:	8fb00038 	lw	s0,56(sp)
    245c:	8fb1003c 	lw	s1,60(sp)
    2460:	8fb20040 	lw	s2,64(sp)
    2464:	8fb30044 	lw	s3,68(sp)
    2468:	8fb40048 	lw	s4,72(sp)
    246c:	8fb5004c 	lw	s5,76(sp)
    2470:	8fb60050 	lw	s6,80(sp)
    2474:	8fb70054 	lw	s7,84(sp)
    2478:	8fbe0058 	lw	s8,88(sp)
    247c:	03e00008 	jr	ra
    2480:	27bd00b0 	addiu	sp,sp,176

00002484 <func_80A0DB44>:
    2484:	27bdff70 	addiu	sp,sp,-144
    2488:	afb5003c 	sw	s5,60(sp)
    248c:	00a0a825 	move	s5,a1
    2490:	afbf004c 	sw	ra,76(sp)
    2494:	afbe0048 	sw	s8,72(sp)
    2498:	afb70044 	sw	s7,68(sp)
    249c:	afb60040 	sw	s6,64(sp)
    24a0:	afb40038 	sw	s4,56(sp)
    24a4:	afb30034 	sw	s3,52(sp)
    24a8:	afb20030 	sw	s2,48(sp)
    24ac:	afb1002c 	sw	s1,44(sp)
    24b0:	afb00028 	sw	s0,40(sp)
    24b4:	f7b60020 	sdc1	$f22,32(sp)
    24b8:	f7b40018 	sdc1	$f20,24(sp)
    24bc:	afa40090 	sw	a0,144(sp)
    24c0:	8ca50000 	lw	a1,0(a1)
    24c4:	24900620 	addiu	s0,a0,1568
    24c8:	3c060000 	lui	a2,0x0
    24cc:	24c60000 	addiu	a2,a2,0
    24d0:	27a40074 	addiu	a0,sp,116
    24d4:	240707f2 	li	a3,2034
    24d8:	0c000000 	jal	0 <func_80A0B6C0>
    24dc:	00a09025 	move	s2,a1
    24e0:	0000f025 	move	s8,zero
    24e4:	0c000000 	jal	0 <func_80A0B6C0>
    24e8:	8ea40000 	lw	a0,0(s5)
    24ec:	3c013f80 	lui	at,0x3f80
    24f0:	4481b000 	mtc1	at,$f22
    24f4:	3c01437f 	lui	at,0x437f
    24f8:	4481a000 	mtc1	at,$f20
    24fc:	0000a025 	move	s4,zero
    2500:	3c17de00 	lui	s7,0xde00
    2504:	920e0000 	lbu	t6,0(s0)
    2508:	24010002 	li	at,2
    250c:	3c160600 	lui	s6,0x600
    2510:	15c10070 	bne	t6,at,26d4 <func_80A0DB44+0x250>
    2514:	26d67a78 	addiu	s6,s6,31352
    2518:	3c010001 	lui	at,0x1
    251c:	34211da0 	ori	at,at,0x1da0
    2520:	17c0000b 	bnez	s8,2550 <func_80A0DB44+0xcc>
    2524:	02a19821 	addu	s3,s5,at
    2528:	3c110600 	lui	s1,0x600
    252c:	263179f8 	addiu	s1,s1,31224
    2530:	8ea40000 	lw	a0,0(s5)
    2534:	0c000000 	jal	0 <func_80A0B6C0>
    2538:	241e0001 	li	s8,1
    253c:	8e4202d0 	lw	v0,720(s2)
    2540:	244f0008 	addiu	t7,v0,8
    2544:	ae4f02d0 	sw	t7,720(s2)
    2548:	ac510004 	sw	s1,4(v0)
    254c:	ac570000 	sw	s7,0(v0)
    2550:	8e4302d0 	lw	v1,720(s2)
    2554:	3c19fa00 	lui	t9,0xfa00
    2558:	00003825 	move	a3,zero
    255c:	24780008 	addiu	t8,v1,8
    2560:	ae5802d0 	sw	t8,720(s2)
    2564:	ac790000 	sw	t9,0(v1)
    2568:	9209000c 	lbu	t1,12(s0)
    256c:	920c000d 	lbu	t4,13(s0)
    2570:	9218000e 	lbu	t8,14(s0)
    2574:	00095600 	sll	t2,t1,0x18
    2578:	9209000f 	lbu	t1,15(s0)
    257c:	000c6c00 	sll	t5,t4,0x10
    2580:	014d7025 	or	t6,t2,t5
    2584:	44892000 	mtc1	t1,$f4
    2588:	0018ca00 	sll	t9,t8,0x8
    258c:	01d94025 	or	t0,t6,t9
    2590:	8fab0090 	lw	t3,144(sp)
    2594:	05210005 	bgez	t1,25ac <func_80A0DB44+0x128>
    2598:	468021a0 	cvt.s.w	$f6,$f4
    259c:	3c014f80 	lui	at,0x4f80
    25a0:	44814000 	mtc1	at,$f8
    25a4:	00000000 	nop
    25a8:	46083180 	add.s	$f6,$f6,$f8
    25ac:	c56a04cc 	lwc1	$f10,1228(t3)
    25b0:	240a0001 	li	t2,1
    25b4:	3c014f00 	lui	at,0x4f00
    25b8:	46145403 	div.s	$f16,$f10,$f20
    25bc:	46103482 	mul.s	$f18,$f6,$f16
    25c0:	444cf800 	cfc1	t4,$31
    25c4:	44caf800 	ctc1	t2,$31
    25c8:	00000000 	nop
    25cc:	46009124 	cvt.w.s	$f4,$f18
    25d0:	444af800 	cfc1	t2,$31
    25d4:	00000000 	nop
    25d8:	314a0078 	andi	t2,t2,0x78
    25dc:	51400013 	beqzl	t2,262c <func_80A0DB44+0x1a8>
    25e0:	440a2000 	mfc1	t2,$f4
    25e4:	44812000 	mtc1	at,$f4
    25e8:	240a0001 	li	t2,1
    25ec:	46049101 	sub.s	$f4,$f18,$f4
    25f0:	44caf800 	ctc1	t2,$31
    25f4:	00000000 	nop
    25f8:	46002124 	cvt.w.s	$f4,$f4
    25fc:	444af800 	cfc1	t2,$31
    2600:	00000000 	nop
    2604:	314a0078 	andi	t2,t2,0x78
    2608:	15400005 	bnez	t2,2620 <func_80A0DB44+0x19c>
    260c:	00000000 	nop
    2610:	440a2000 	mfc1	t2,$f4
    2614:	3c018000 	lui	at,0x8000
    2618:	10000007 	b	2638 <func_80A0DB44+0x1b4>
    261c:	01415025 	or	t2,t2,at
    2620:	10000005 	b	2638 <func_80A0DB44+0x1b4>
    2624:	240affff 	li	t2,-1
    2628:	440a2000 	mfc1	t2,$f4
    262c:	00000000 	nop
    2630:	0540fffb 	bltz	t2,2620 <func_80A0DB44+0x19c>
    2634:	00000000 	nop
    2638:	314f00ff 	andi	t7,t2,0xff
    263c:	010fc025 	or	t8,t0,t7
    2640:	ac780004 	sw	t8,4(v1)
    2644:	8e4202d0 	lw	v0,720(s2)
    2648:	3c19e700 	lui	t9,0xe700
    264c:	44ccf800 	ctc1	t4,$31
    2650:	244e0008 	addiu	t6,v0,8
    2654:	ae4e02d0 	sw	t6,720(s2)
    2658:	ac400004 	sw	zero,4(v0)
    265c:	ac590000 	sw	t9,0(v0)
    2660:	8e06001c 	lw	a2,28(s0)
    2664:	c60e0018 	lwc1	$f14,24(s0)
    2668:	0c000000 	jal	0 <func_80A0B6C0>
    266c:	c60c0014 	lwc1	$f12,20(s0)
    2670:	0c000000 	jal	0 <func_80A0B6C0>
    2674:	02602025 	move	a0,s3
    2678:	c60c0004 	lwc1	$f12,4(s0)
    267c:	4406b000 	mfc1	a2,$f22
    2680:	24070001 	li	a3,1
    2684:	0c000000 	jal	0 <func_80A0B6C0>
    2688:	46006386 	mov.s	$f14,$f12
    268c:	8e4202d0 	lw	v0,720(s2)
    2690:	3c0bda38 	lui	t3,0xda38
    2694:	356b0003 	ori	t3,t3,0x3
    2698:	24490008 	addiu	t1,v0,8
    269c:	ae4902d0 	sw	t1,720(s2)
    26a0:	3c050000 	lui	a1,0x0
    26a4:	ac4b0000 	sw	t3,0(v0)
    26a8:	8ea40000 	lw	a0,0(s5)
    26ac:	24a50000 	addiu	a1,a1,0
    26b0:	24060810 	li	a2,2064
    26b4:	0c000000 	jal	0 <func_80A0B6C0>
    26b8:	00408825 	move	s1,v0
    26bc:	ae220004 	sw	v0,4(s1)
    26c0:	8e4202d0 	lw	v0,720(s2)
    26c4:	244c0008 	addiu	t4,v0,8
    26c8:	ae4c02d0 	sw	t4,720(s2)
    26cc:	ac560004 	sw	s6,4(v0)
    26d0:	ac570000 	sw	s7,0(v0)
    26d4:	26940001 	addiu	s4,s4,1
    26d8:	0014a400 	sll	s4,s4,0x10
    26dc:	0014a403 	sra	s4,s4,0x10
    26e0:	2a8100c8 	slti	at,s4,200
    26e4:	1420ff87 	bnez	at,2504 <func_80A0DB44+0x80>
    26e8:	26100038 	addiu	s0,s0,56
    26ec:	3c060000 	lui	a2,0x0
    26f0:	24c60000 	addiu	a2,a2,0
    26f4:	27a40074 	addiu	a0,sp,116
    26f8:	8ea50000 	lw	a1,0(s5)
    26fc:	0c000000 	jal	0 <func_80A0B6C0>
    2700:	24070817 	li	a3,2071
    2704:	8fbf004c 	lw	ra,76(sp)
    2708:	d7b40018 	ldc1	$f20,24(sp)
    270c:	d7b60020 	ldc1	$f22,32(sp)
    2710:	8fb00028 	lw	s0,40(sp)
    2714:	8fb1002c 	lw	s1,44(sp)
    2718:	8fb20030 	lw	s2,48(sp)
    271c:	8fb30034 	lw	s3,52(sp)
    2720:	8fb40038 	lw	s4,56(sp)
    2724:	8fb5003c 	lw	s5,60(sp)
    2728:	8fb60040 	lw	s6,64(sp)
    272c:	8fb70044 	lw	s7,68(sp)
    2730:	8fbe0048 	lw	s8,72(sp)
    2734:	03e00008 	jr	ra
    2738:	27bd0090 	addiu	sp,sp,144
    273c:	00000000 	nop
