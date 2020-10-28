
build/src/overlays/actors/ovl_En_Go2/z_en_go2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A42D30>:
       0:	24820270 	addiu	v0,a0,624
       4:	24040001 	li	a0,1
       8:	00001825 	move	v1,zero
       c:	904e0000 	lbu	t6,0(v0)
      10:	24630001 	addiu	v1,v1,1
      14:	00031c00 	sll	v1,v1,0x10
      18:	108e001d 	beq	a0,t6,90 <func_80A42D30+0x90>
      1c:	00031c03 	sra	v1,v1,0x10
      20:	c7a40014 	lwc1	$f4,20(sp)
      24:	24190001 	li	t9,1
      28:	e4440004 	swc1	$f4,4(v0)
      2c:	c7a60018 	lwc1	$f6,24(sp)
      30:	e4460008 	swc1	$f6,8(v0)
      34:	93b80013 	lbu	t8,19(sp)
      38:	a0590000 	sb	t9,0(v0)
      3c:	a0580001 	sb	t8,1(v0)
      40:	a0580002 	sb	t8,2(v0)
      44:	8ca90000 	lw	t1,0(a1)
      48:	ac490014 	sw	t1,20(v0)
      4c:	8ca80004 	lw	t0,4(a1)
      50:	ac480018 	sw	t0,24(v0)
      54:	8ca90008 	lw	t1,8(a1)
      58:	ac49001c 	sw	t1,28(v0)
      5c:	8ceb0000 	lw	t3,0(a3)
      60:	ac4b002c 	sw	t3,44(v0)
      64:	8cea0004 	lw	t2,4(a3)
      68:	ac4a0030 	sw	t2,48(v0)
      6c:	8ceb0008 	lw	t3,8(a3)
      70:	ac4b0034 	sw	t3,52(v0)
      74:	8ccd0000 	lw	t5,0(a2)
      78:	ac4d0020 	sw	t5,32(v0)
      7c:	8ccc0004 	lw	t4,4(a2)
      80:	ac4c0024 	sw	t4,36(v0)
      84:	8ccd0008 	lw	t5,8(a2)
      88:	03e00008 	jr	ra
      8c:	ac4d0028 	sw	t5,40(v0)
      90:	2861000a 	slti	at,v1,10
      94:	1420ffdd 	bnez	at,c <func_80A42D30+0xc>
      98:	24420038 	addiu	v0,v0,56
      9c:	03e00008 	jr	ra
      a0:	00000000 	nop

000000a4 <func_80A42DD4>:
      a4:	27bdffd0 	addiu	sp,sp,-48
      a8:	f7b60018 	sdc1	$f22,24(sp)
      ac:	3c010000 	lui	at,0x0
      b0:	c4360000 	lwc1	$f22,0(at)
      b4:	afb10028 	sw	s1,40(sp)
      b8:	afb00024 	sw	s0,36(sp)
      bc:	f7b40010 	sdc1	$f20,16(sp)
      c0:	3c010000 	lui	at,0x0
      c4:	afbf002c 	sw	ra,44(sp)
      c8:	24900270 	addiu	s0,a0,624
      cc:	c4340000 	lwc1	$f20,0(at)
      d0:	00008825 	move	s1,zero
      d4:	920e0000 	lbu	t6,0(s0)
      d8:	51c00029 	beqzl	t6,180 <func_80A42DD4+0xdc>
      dc:	26310001 	addiu	s1,s1,1
      e0:	920f0001 	lbu	t7,1(s0)
      e4:	25f8ffff 	addiu	t8,t7,-1
      e8:	331900ff 	andi	t9,t8,0xff
      ec:	17200002 	bnez	t9,f8 <func_80A42DD4+0x54>
      f0:	a2180001 	sb	t8,1(s0)
      f4:	a2000000 	sb	zero,0(s0)
      f8:	0c000000 	jal	0 <func_80A42D30>
      fc:	00000000 	nop
     100:	46140102 	mul.s	$f4,$f0,$f20
     104:	46162181 	sub.s	$f6,$f4,$f22
     108:	0c000000 	jal	0 <func_80A42D30>
     10c:	e606002c 	swc1	$f6,44(s0)
     110:	c60c0020 	lwc1	$f12,32(s0)
     114:	c60a0014 	lwc1	$f10,20(s0)
     118:	46140202 	mul.s	$f8,$f0,$f20
     11c:	c60e0024 	lwc1	$f14,36(s0)
     120:	460c5480 	add.s	$f18,$f10,$f12
     124:	c6040018 	lwc1	$f4,24(s0)
     128:	c6100028 	lwc1	$f16,40(s0)
     12c:	e6120014 	swc1	$f18,20(s0)
     130:	c612002c 	lwc1	$f18,44(s0)
     134:	460e2180 	add.s	$f6,$f4,$f14
     138:	46164081 	sub.s	$f2,$f8,$f22
     13c:	c608001c 	lwc1	$f8,28(s0)
     140:	e6060018 	swc1	$f6,24(s0)
     144:	46126100 	add.s	$f4,$f12,$f18
     148:	c6060030 	lwc1	$f6,48(s0)
     14c:	c6120004 	lwc1	$f18,4(s0)
     150:	46104280 	add.s	$f10,$f8,$f16
     154:	e6040020 	swc1	$f4,32(s0)
     158:	c6040008 	lwc1	$f4,8(s0)
     15c:	46067200 	add.s	$f8,$f14,$f6
     160:	e60a001c 	swc1	$f10,28(s0)
     164:	e6020034 	swc1	$f2,52(s0)
     168:	46028280 	add.s	$f10,$f16,$f2
     16c:	e6080024 	swc1	$f8,36(s0)
     170:	46049180 	add.s	$f6,$f18,$f4
     174:	e60a0028 	swc1	$f10,40(s0)
     178:	e6060004 	swc1	$f6,4(s0)
     17c:	26310001 	addiu	s1,s1,1
     180:	00118c00 	sll	s1,s1,0x10
     184:	00118c03 	sra	s1,s1,0x10
     188:	2a21000a 	slti	at,s1,10
     18c:	1420ffd1 	bnez	at,d4 <func_80A42DD4+0x30>
     190:	26100038 	addiu	s0,s0,56
     194:	8fbf002c 	lw	ra,44(sp)
     198:	d7b40010 	ldc1	$f20,16(sp)
     19c:	d7b60018 	ldc1	$f22,24(sp)
     1a0:	8fb00024 	lw	s0,36(sp)
     1a4:	8fb10028 	lw	s1,40(sp)
     1a8:	03e00008 	jr	ra
     1ac:	27bd0030 	addiu	sp,sp,48

000001b0 <func_80A42EE0>:
     1b0:	27bdff58 	addiu	sp,sp,-168
     1b4:	afbe0050 	sw	s8,80(sp)
     1b8:	00a0f025 	move	s8,a1
     1bc:	afbf0054 	sw	ra,84(sp)
     1c0:	afb7004c 	sw	s7,76(sp)
     1c4:	afb60048 	sw	s6,72(sp)
     1c8:	afb50044 	sw	s5,68(sp)
     1cc:	afb40040 	sw	s4,64(sp)
     1d0:	afb3003c 	sw	s3,60(sp)
     1d4:	afb20038 	sw	s2,56(sp)
     1d8:	afb10034 	sw	s1,52(sp)
     1dc:	afb00030 	sw	s0,48(sp)
     1e0:	f7b80028 	sdc1	$f24,40(sp)
     1e4:	f7b60020 	sdc1	$f22,32(sp)
     1e8:	f7b40018 	sdc1	$f20,24(sp)
     1ec:	8ca50000 	lw	a1,0(a1)
     1f0:	24920270 	addiu	s2,a0,624
     1f4:	3c060000 	lui	a2,0x0
     1f8:	24c60000 	addiu	a2,a2,0
     1fc:	27a40088 	addiu	a0,sp,136
     200:	2407006f 	li	a3,111
     204:	0c000000 	jal	0 <func_80A42D30>
     208:	00a08025 	move	s0,a1
     20c:	0000b825 	move	s7,zero
     210:	0c000000 	jal	0 <func_80A42D30>
     214:	8fc40000 	lw	a0,0(s8)
     218:	3c014100 	lui	at,0x4100
     21c:	4481c000 	mtc1	at,$f24
     220:	3c013f80 	lui	at,0x3f80
     224:	4481b000 	mtc1	at,$f22
     228:	3c01437f 	lui	at,0x437f
     22c:	4481a000 	mtc1	at,$f20
     230:	0000a025 	move	s4,zero
     234:	3c16de00 	lui	s6,0xde00
     238:	924e0000 	lbu	t6,0(s2)
     23c:	3c010001 	lui	at,0x1
     240:	34211da0 	ori	at,at,0x1da0
     244:	11c0008a 	beqz	t6,470 <func_80A42EE0+0x2c0>
     248:	03c19821 	addu	s3,s8,at
     24c:	3c150601 	lui	s5,0x601
     250:	16e00014 	bnez	s7,2a4 <func_80A42EE0+0xf4>
     254:	26b5fd50 	addiu	s5,s5,-688
     258:	3c110601 	lui	s1,0x601
     25c:	2631fd40 	addiu	s1,s1,-704
     260:	8e0402d0 	lw	a0,720(s0)
     264:	00002825 	move	a1,zero
     268:	0c000000 	jal	0 <func_80A42D30>
     26c:	24170001 	li	s7,1
     270:	ae0202d0 	sw	v0,720(s0)
     274:	244f0008 	addiu	t7,v0,8
     278:	ae0f02d0 	sw	t7,720(s0)
     27c:	ac510004 	sw	s1,4(v0)
     280:	ac560000 	sw	s6,0(v0)
     284:	8e0202d0 	lw	v0,720(s0)
     288:	3c08643c 	lui	t0,0x643c
     28c:	35081400 	ori	t0,t0,0x1400
     290:	24580008 	addiu	t8,v0,8
     294:	ae1802d0 	sw	t8,720(s0)
     298:	3c19fb00 	lui	t9,0xfb00
     29c:	ac590000 	sw	t9,0(v0)
     2a0:	ac480004 	sw	t0,4(v0)
     2a4:	92490001 	lbu	t1,1(s2)
     2a8:	3c014f80 	lui	at,0x4f80
     2ac:	44892000 	mtc1	t1,$f4
     2b0:	05210004 	bgez	t1,2c4 <func_80A42EE0+0x114>
     2b4:	468021a0 	cvt.s.w	$f6,$f4
     2b8:	44814000 	mtc1	at,$f8
     2bc:	00000000 	nop
     2c0:	46083180 	add.s	$f6,$f6,$f8
     2c4:	924a0002 	lbu	t2,2(s2)
     2c8:	3c014f80 	lui	at,0x4f80
     2cc:	448a5000 	mtc1	t2,$f10
     2d0:	05410004 	bgez	t2,2e4 <func_80A42EE0+0x134>
     2d4:	46805420 	cvt.s.w	$f16,$f10
     2d8:	44819000 	mtc1	at,$f18
     2dc:	00000000 	nop
     2e0:	46128400 	add.s	$f16,$f16,$f18
     2e4:	4610a103 	div.s	$f4,$f20,$f16
     2e8:	8e0202d0 	lw	v0,720(s0)
     2ec:	3c01aa82 	lui	at,0xaa82
     2f0:	34215a00 	ori	at,at,0x5a00
     2f4:	244c0008 	addiu	t4,v0,8
     2f8:	ae0c02d0 	sw	t4,720(s0)
     2fc:	3c0dfa00 	lui	t5,0xfa00
     300:	ac4d0000 	sw	t5,0(v0)
     304:	3c19e700 	lui	t9,0xe700
     308:	00003825 	move	a3,zero
     30c:	46043202 	mul.s	$f8,$f6,$f4
     310:	4600428d 	trunc.w.s	$f10,$f8
     314:	44045000 	mfc1	a0,$f10
     318:	00000000 	nop
     31c:	00042400 	sll	a0,a0,0x10
     320:	00042403 	sra	a0,a0,0x10
     324:	308e00ff 	andi	t6,a0,0xff
     328:	01c17825 	or	t7,t6,at
     32c:	ac4f0004 	sw	t7,4(v0)
     330:	8e0202d0 	lw	v0,720(s0)
     334:	24580008 	addiu	t8,v0,8
     338:	ae1802d0 	sw	t8,720(s0)
     33c:	ac400004 	sw	zero,4(v0)
     340:	ac590000 	sw	t9,0(v0)
     344:	8e46001c 	lw	a2,28(s2)
     348:	c64e0018 	lwc1	$f14,24(s2)
     34c:	0c000000 	jal	0 <func_80A42D30>
     350:	c64c0014 	lwc1	$f12,20(s2)
     354:	0c000000 	jal	0 <func_80A42D30>
     358:	02602025 	move	a0,s3
     35c:	c64c0004 	lwc1	$f12,4(s2)
     360:	4406b000 	mfc1	a2,$f22
     364:	24070001 	li	a3,1
     368:	0c000000 	jal	0 <func_80A42D30>
     36c:	46006386 	mov.s	$f14,$f12
     370:	8e0202d0 	lw	v0,720(s0)
     374:	3c09da38 	lui	t1,0xda38
     378:	35290003 	ori	t1,t1,0x3
     37c:	24480008 	addiu	t0,v0,8
     380:	ae0802d0 	sw	t0,720(s0)
     384:	3c050000 	lui	a1,0x0
     388:	ac490000 	sw	t1,0(v0)
     38c:	8fc40000 	lw	a0,0(s8)
     390:	24a50000 	addiu	a1,a1,0
     394:	24060089 	li	a2,137
     398:	0c000000 	jal	0 <func_80A42D30>
     39c:	00408825 	move	s1,v0
     3a0:	ae220004 	sw	v0,4(s1)
     3a4:	924a0001 	lbu	t2,1(s2)
     3a8:	3c014f80 	lui	at,0x4f80
     3ac:	448a9000 	mtc1	t2,$f18
     3b0:	05410004 	bgez	t2,3c4 <func_80A42EE0+0x214>
     3b4:	46809420 	cvt.s.w	$f16,$f18
     3b8:	44813000 	mtc1	at,$f6
     3bc:	00000000 	nop
     3c0:	46068400 	add.s	$f16,$f16,$f6
     3c4:	924b0002 	lbu	t3,2(s2)
     3c8:	3c014f80 	lui	at,0x4f80
     3cc:	448b2000 	mtc1	t3,$f4
     3d0:	05610004 	bgez	t3,3e4 <func_80A42EE0+0x234>
     3d4:	46802220 	cvt.s.w	$f8,$f4
     3d8:	44815000 	mtc1	at,$f10
     3dc:	00000000 	nop
     3e0:	460a4200 	add.s	$f8,$f8,$f10
     3e4:	4608c483 	div.s	$f18,$f24,$f8
     3e8:	8e0202d0 	lw	v0,720(s0)
     3ec:	3c0edb06 	lui	t6,0xdb06
     3f0:	35ce0020 	ori	t6,t6,0x20
     3f4:	244d0008 	addiu	t5,v0,8
     3f8:	ae0d02d0 	sw	t5,720(s0)
     3fc:	3c040000 	lui	a0,0x0
     400:	ac4e0000 	sw	t6,0(v0)
     404:	3c0a0000 	lui	t2,0x0
     408:	3c0100ff 	lui	at,0xff
     40c:	3421ffff 	ori	at,at,0xffff
     410:	46128182 	mul.s	$f6,$f16,$f18
     414:	4600310d 	trunc.w.s	$f4,$f6
     418:	44052000 	mfc1	a1,$f4
     41c:	00000000 	nop
     420:	00052c00 	sll	a1,a1,0x10
     424:	00052c03 	sra	a1,a1,0x10
     428:	00057880 	sll	t7,a1,0x2
     42c:	008f2021 	addu	a0,a0,t7
     430:	8c840000 	lw	a0,0(a0)
     434:	0004c900 	sll	t9,a0,0x4
     438:	00194702 	srl	t0,t9,0x1c
     43c:	00084880 	sll	t1,t0,0x2
     440:	01495021 	addu	t2,t2,t1
     444:	8d4a0000 	lw	t2,0(t2)
     448:	0081c024 	and	t8,a0,at
     44c:	3c018000 	lui	at,0x8000
     450:	030a5821 	addu	t3,t8,t2
     454:	01616021 	addu	t4,t3,at
     458:	ac4c0004 	sw	t4,4(v0)
     45c:	8e0202d0 	lw	v0,720(s0)
     460:	244d0008 	addiu	t5,v0,8
     464:	ae0d02d0 	sw	t5,720(s0)
     468:	ac550004 	sw	s5,4(v0)
     46c:	ac560000 	sw	s6,0(v0)
     470:	26940001 	addiu	s4,s4,1
     474:	0014a400 	sll	s4,s4,0x10
     478:	0014a403 	sra	s4,s4,0x10
     47c:	2a81000a 	slti	at,s4,10
     480:	1420ff6d 	bnez	at,238 <func_80A42EE0+0x88>
     484:	26520038 	addiu	s2,s2,56
     488:	3c060000 	lui	a2,0x0
     48c:	24c60000 	addiu	a2,a2,0
     490:	27a40088 	addiu	a0,sp,136
     494:	8fc50000 	lw	a1,0(s8)
     498:	0c000000 	jal	0 <func_80A42D30>
     49c:	24070097 	li	a3,151
     4a0:	8fbf0054 	lw	ra,84(sp)
     4a4:	d7b40018 	ldc1	$f20,24(sp)
     4a8:	d7b60020 	ldc1	$f22,32(sp)
     4ac:	d7b80028 	ldc1	$f24,40(sp)
     4b0:	8fb00030 	lw	s0,48(sp)
     4b4:	8fb10034 	lw	s1,52(sp)
     4b8:	8fb20038 	lw	s2,56(sp)
     4bc:	8fb3003c 	lw	s3,60(sp)
     4c0:	8fb40040 	lw	s4,64(sp)
     4c4:	8fb50044 	lw	s5,68(sp)
     4c8:	8fb60048 	lw	s6,72(sp)
     4cc:	8fb7004c 	lw	s7,76(sp)
     4d0:	8fbe0050 	lw	s8,80(sp)
     4d4:	03e00008 	jr	ra
     4d8:	27bd00a8 	addiu	sp,sp,168

000004dc <func_80A4320C>:
     4dc:	27bdff60 	addiu	sp,sp,-160
     4e0:	3c0e0000 	lui	t6,0x0
     4e4:	afbf0064 	sw	ra,100(sp)
     4e8:	afb70060 	sw	s7,96(sp)
     4ec:	afb6005c 	sw	s6,92(sp)
     4f0:	afb50058 	sw	s5,88(sp)
     4f4:	afb40054 	sw	s4,84(sp)
     4f8:	afb30050 	sw	s3,80(sp)
     4fc:	afb2004c 	sw	s2,76(sp)
     500:	afb10048 	sw	s1,72(sp)
     504:	afb00044 	sw	s0,68(sp)
     508:	f7ba0038 	sdc1	$f26,56(sp)
     50c:	f7b80030 	sdc1	$f24,48(sp)
     510:	f7b60028 	sdc1	$f22,40(sp)
     514:	f7b40020 	sdc1	$f20,32(sp)
     518:	afa500a4 	sw	a1,164(sp)
     51c:	25ce0000 	addiu	t6,t6,0
     520:	8dd80000 	lw	t8,0(t6)
     524:	27b40094 	addiu	s4,sp,148
     528:	3c190000 	lui	t9,0x0
     52c:	ae980000 	sw	t8,0(s4)
     530:	8dcf0004 	lw	t7,4(t6)
     534:	27390000 	addiu	t9,t9,0
     538:	27b60088 	addiu	s6,sp,136
     53c:	ae8f0004 	sw	t7,4(s4)
     540:	8dd80008 	lw	t8,8(t6)
     544:	3c0a0000 	lui	t2,0x0
     548:	254a0000 	addiu	t2,t2,0
     54c:	ae980008 	sw	t8,8(s4)
     550:	8f290000 	lw	t1,0(t9)
     554:	27b7007c 	addiu	s7,sp,124
     558:	4486c000 	mtc1	a2,$f24
     55c:	aec90000 	sw	t1,0(s6)
     560:	8f280004 	lw	t0,4(t9)
     564:	4487d000 	mtc1	a3,$f26
     568:	00808825 	move	s1,a0
     56c:	aec80004 	sw	t0,4(s6)
     570:	8f290008 	lw	t1,8(t9)
     574:	30b500ff 	andi	s5,a1,0xff
     578:	aec90008 	sw	t1,8(s6)
     57c:	8d4c0000 	lw	t4,0(t2)
     580:	aeec0000 	sw	t4,0(s7)
     584:	8d4b0004 	lw	t3,4(t2)
     588:	aeeb0004 	sw	t3,4(s7)
     58c:	8d4c0008 	lw	t4,8(t2)
     590:	aeec0008 	sw	t4,8(s7)
     594:	8c8e0024 	lw	t6,36(a0)
     598:	ae8e0000 	sw	t6,0(s4)
     59c:	8c8d0028 	lw	t5,40(a0)
     5a0:	ae8d0004 	sw	t5,4(s4)
     5a4:	8c8e002c 	lw	t6,44(a0)
     5a8:	ae8e0008 	sw	t6,8(s4)
     5ac:	c4840080 	lwc1	$f4,128(a0)
     5b0:	0c000000 	jal	0 <func_80A42D30>
     5b4:	e7a40098 	swc1	$f4,152(sp)
     5b8:	3c013f00 	lui	at,0x3f00
     5bc:	44813000 	mtc1	at,$f6
     5c0:	3c014780 	lui	at,0x4780
     5c4:	44815000 	mtc1	at,$f10
     5c8:	46060201 	sub.s	$f8,$f0,$f6
     5cc:	8fa200b0 	lw	v0,176(sp)
     5d0:	3c180001 	lui	t8,0x1
     5d4:	c7b600b8 	lwc1	$f22,184(sp)
     5d8:	460a4402 	mul.s	$f16,$f8,$f10
     5dc:	c7b400b4 	lwc1	$f20,180(sp)
     5e0:	00409025 	move	s2,v0
     5e4:	4600848d 	trunc.w.s	$f18,$f16
     5e8:	44109000 	mfc1	s0,$f18
     5ec:	00000000 	nop
     5f0:	00108400 	sll	s0,s0,0x10
     5f4:	0440002f 	bltz	v0,6b4 <func_80A4320C+0x1d8>
     5f8:	00108403 	sra	s0,s0,0x10
     5fc:	0302001a 	div	zero,t8,v0
     600:	00009812 	mflo	s3
     604:	00139c00 	sll	s3,s3,0x10
     608:	00139c03 	sra	s3,s3,0x10
     60c:	14400002 	bnez	v0,618 <func_80A4320C+0x13c>
     610:	00000000 	nop
     614:	0007000d 	break	0x7
     618:	2401ffff 	li	at,-1
     61c:	14410004 	bne	v0,at,630 <func_80A4320C+0x154>
     620:	3c018000 	lui	at,0x8000
     624:	17010002 	bne	t8,at,630 <func_80A4320C+0x154>
     628:	00000000 	nop
     62c:	0006000d 	break	0x6
     630:	0c000000 	jal	0 <func_80A42D30>
     634:	00000000 	nop
     638:	46160182 	mul.s	$f6,$f0,$f22
     63c:	c7a40080 	lwc1	$f4,128(sp)
     640:	00102400 	sll	a0,s0,0x10
     644:	00042403 	sra	a0,a0,0x10
     648:	46062200 	add.s	$f8,$f4,$f6
     64c:	0c000000 	jal	0 <func_80A42D30>
     650:	e7a80080 	swc1	$f8,128(sp)
     654:	46140282 	mul.s	$f10,$f0,$f20
     658:	c6300024 	lwc1	$f16,36(s1)
     65c:	00102400 	sll	a0,s0,0x10
     660:	00042403 	sra	a0,a0,0x10
     664:	46105480 	add.s	$f18,$f10,$f16
     668:	0c000000 	jal	0 <func_80A42D30>
     66c:	e7b20094 	swc1	$f18,148(sp)
     670:	46140102 	mul.s	$f4,$f0,$f20
     674:	c626002c 	lwc1	$f6,44(s1)
     678:	e7ba0018 	swc1	$f26,24(sp)
     67c:	e7b80014 	swc1	$f24,20(sp)
     680:	afb50010 	sw	s5,16(sp)
     684:	02202025 	move	a0,s1
     688:	02802825 	move	a1,s4
     68c:	46062200 	add.s	$f8,$f4,$f6
     690:	02c03025 	move	a2,s6
     694:	02e03825 	move	a3,s7
     698:	0c000000 	jal	0 <func_80A42D30>
     69c:	e7a8009c 	swc1	$f8,156(sp)
     6a0:	02138021 	addu	s0,s0,s3
     6a4:	00108400 	sll	s0,s0,0x10
     6a8:	2652ffff 	addiu	s2,s2,-1
     6ac:	0641ffe0 	bgez	s2,630 <func_80A4320C+0x154>
     6b0:	00108403 	sra	s0,s0,0x10
     6b4:	8fbf0064 	lw	ra,100(sp)
     6b8:	d7b40020 	ldc1	$f20,32(sp)
     6bc:	d7b60028 	ldc1	$f22,40(sp)
     6c0:	d7b80030 	ldc1	$f24,48(sp)
     6c4:	d7ba0038 	ldc1	$f26,56(sp)
     6c8:	8fb00044 	lw	s0,68(sp)
     6cc:	8fb10048 	lw	s1,72(sp)
     6d0:	8fb2004c 	lw	s2,76(sp)
     6d4:	8fb30050 	lw	s3,80(sp)
     6d8:	8fb40054 	lw	s4,84(sp)
     6dc:	8fb50058 	lw	s5,88(sp)
     6e0:	8fb6005c 	lw	s6,92(sp)
     6e4:	8fb70060 	lw	s7,96(sp)
     6e8:	27bd00a0 	addiu	sp,sp,160
     6ec:	03e00008 	jr	ra
     6f0:	00001025 	move	v0,zero

000006f4 <func_80A43424>:
     6f4:	27bdffe0 	addiu	sp,sp,-32
     6f8:	afbf001c 	sw	ra,28(sp)
     6fc:	3c013f80 	lui	at,0x3f80
     700:	44811000 	mtc1	at,$f2
     704:	c4840090 	lwc1	$f4,144(a0)
     708:	c4800094 	lwc1	$f0,148(a0)
     70c:	ac860594 	sw	a2,1428(a0)
     710:	46022180 	add.s	$f6,$f4,$f2
     714:	46000005 	abs.s	$f0,$f0
     718:	44073000 	mfc1	a3,$f6
     71c:	46020200 	add.s	$f8,$f0,$f2
     720:	0c000000 	jal	0 <func_80A42D30>
     724:	e7a80010 	swc1	$f8,16(sp)
     728:	8fbf001c 	lw	ra,28(sp)
     72c:	27bd0020 	addiu	sp,sp,32
     730:	03e00008 	jr	ra
     734:	00000000 	nop

00000738 <func_80A43468>:
     738:	27bdffe8 	addiu	sp,sp,-24
     73c:	afbf0014 	sw	ra,20(sp)
     740:	00803025 	move	a2,a0
     744:	afa60018 	sw	a2,24(sp)
     748:	0c000000 	jal	0 <func_80A42D30>
     74c:	24a420d8 	addiu	a0,a1,8408
     750:	8fa60018 	lw	a2,24(sp)
     754:	00402825 	move	a1,v0
     758:	00022400 	sll	a0,v0,0x10
     75c:	90c3020d 	lbu	v1,525(a2)
     760:	2401000a 	li	at,10
     764:	00042403 	sra	a0,a0,0x10
     768:	10610007 	beq	v1,at,788 <func_80A43468+0x50>
     76c:	00057400 	sll	t6,a1,0x10
     770:	24010005 	li	at,5
     774:	10610004 	beq	v1,at,788 <func_80A43468+0x50>
     778:	24010002 	li	at,2
     77c:	10610002 	beq	v1,at,788 <func_80A43468+0x50>
     780:	24010001 	li	at,1
     784:	14610006 	bne	v1,at,7a0 <func_80A43468+0x68>
     788:	000e7c03 	sra	t7,t6,0x10
     78c:	51e30005 	beql	t7,v1,7a4 <func_80A43468+0x6c>
     790:	a0c4020d 	sb	a0,525(a2)
     794:	90d8020c 	lbu	t8,524(a2)
     798:	27190001 	addiu	t9,t8,1
     79c:	a0d9020c 	sb	t9,524(a2)
     7a0:	a0c4020d 	sb	a0,525(a2)
     7a4:	8fbf0014 	lw	ra,20(sp)
     7a8:	27bd0018 	addiu	sp,sp,24
     7ac:	00801025 	move	v0,a0
     7b0:	03e00008 	jr	ra
     7b4:	00000000 	nop

000007b8 <func_80A434E8>:
     7b8:	848e001c 	lh	t6,28(a0)
     7bc:	31cffc00 	andi	t7,t6,0xfc00
     7c0:	000fc283 	sra	t8,t7,0xa
     7c4:	2719ffff 	addiu	t9,t8,-1
     7c8:	2f21000b 	sltiu	at,t9,11
     7cc:	10200016 	beqz	at,828 <L80A43558>
     7d0:	0019c880 	sll	t9,t9,0x2
     7d4:	3c010000 	lui	at,0x0
     7d8:	00390821 	addu	at,at,t9
     7dc:	8c390000 	lw	t9,0(at)
     7e0:	03200008 	jr	t9
     7e4:	00000000 	nop

000007e8 <L80A43518>:
     7e8:	03e00008 	jr	ra
     7ec:	24023069 	li	v0,12393

000007f0 <L80A43520>:
     7f0:	03e00008 	jr	ra
     7f4:	2402306a 	li	v0,12394

000007f8 <L80A43528>:
     7f8:	03e00008 	jr	ra
     7fc:	2402306b 	li	v0,12395

00000800 <L80A43530>:
     800:	03e00008 	jr	ra
     804:	2402306c 	li	v0,12396

00000808 <L80A43538>:
     808:	03e00008 	jr	ra
     80c:	2402306d 	li	v0,12397

00000810 <L80A43540>:
     810:	03e00008 	jr	ra
     814:	2402306e 	li	v0,12398

00000818 <L80A43548>:
     818:	03e00008 	jr	ra
     81c:	2402306f 	li	v0,12399

00000820 <L80A43550>:
     820:	03e00008 	jr	ra
     824:	24023070 	li	v0,12400

00000828 <L80A43558>:
     828:	24023052 	li	v0,12370
     82c:	03e00008 	jr	ra
     830:	00000000 	nop

00000834 <func_80A43564>:
     834:	3c020000 	lui	v0,0x0
     838:	24420000 	addiu	v0,v0,0
     83c:	944e0f1a 	lhu	t6,3866(v0)
     840:	afa40000 	sw	a0,0(sp)
     844:	3c190000 	lui	t9,0x0
     848:	31cf4000 	andi	t7,t6,0x4000
     84c:	11e00003 	beqz	t7,85c <func_80A43564+0x28>
     850:	3c090000 	lui	t1,0x0
     854:	03e00008 	jr	ra
     858:	24023013 	li	v0,12307
     85c:	8c5800a0 	lw	t8,160(v0)
     860:	8f390004 	lw	t9,4(t9)
     864:	91290001 	lbu	t1,1(t1)
     868:	3c0c0000 	lui	t4,0x0
     86c:	03194024 	and	t0,t8,t9
     870:	01285007 	srav	t2,t0,t1
     874:	000a5840 	sll	t3,t2,0x1
     878:	018b6021 	addu	t4,t4,t3
     87c:	958c0008 	lhu	t4,8(t4)
     880:	29810014 	slti	at,t4,20
     884:	5420000a 	bnezl	at,8b0 <func_80A43564+0x7c>
     888:	24023011 	li	v0,12305
     88c:	80a20210 	lb	v0,528(a1)
     890:	28410008 	slti	at,v0,8
     894:	14200005 	bnez	at,8ac <func_80A43564+0x78>
     898:	2841000c 	slti	at,v0,12
     89c:	50200004 	beqzl	at,8b0 <func_80A43564+0x7c>
     8a0:	24023011 	li	v0,12305
     8a4:	03e00008 	jr	ra
     8a8:	24023012 	li	v0,12306
     8ac:	24023011 	li	v0,12305
     8b0:	03e00008 	jr	ra
     8b4:	00000000 	nop

000008b8 <func_80A435E8>:
     8b8:	27bdffe8 	addiu	sp,sp,-24
     8bc:	afbf0014 	sw	ra,20(sp)
     8c0:	afa40018 	sw	a0,24(sp)
     8c4:	afa5001c 	sw	a1,28(sp)
     8c8:	0c000000 	jal	0 <func_80A42D30>
     8cc:	248420d8 	addiu	a0,a0,8408
     8d0:	24010002 	li	at,2
     8d4:	10410005 	beq	v0,at,8ec <func_80A435E8+0x34>
     8d8:	24010005 	li	at,5
     8dc:	10410005 	beq	v0,at,8f4 <func_80A435E8+0x3c>
     8e0:	00000000 	nop
     8e4:	1000002d 	b	99c <func_80A435E8+0xe4>
     8e8:	24020001 	li	v0,1
     8ec:	1000002b 	b	99c <func_80A435E8+0xe4>
     8f0:	24020002 	li	v0,2
     8f4:	0c000000 	jal	0 <func_80A42D30>
     8f8:	8fa40018 	lw	a0,24(sp)
     8fc:	10400026 	beqz	v0,998 <func_80A435E8+0xe0>
     900:	8fa7001c 	lw	a3,28(sp)
     904:	94ee010e 	lhu	t6,270(a3)
     908:	24013012 	li	at,12306
     90c:	3c0f0000 	lui	t7,0x0
     910:	15c1001f 	bne	t6,at,990 <func_80A435E8+0xd8>
     914:	25ef0000 	addiu	t7,t7,0
     918:	acef0190 	sw	t7,400(a3)
     91c:	3c180000 	lui	t8,0x0
     920:	3c190000 	lui	t9,0x0
     924:	8f390004 	lw	t9,4(t9)
     928:	8f1800a0 	lw	t8,160(t8)
     92c:	3c090000 	lui	t1,0x0
     930:	91290001 	lbu	t1,1(t1)
     934:	03194024 	and	t0,t8,t9
     938:	3c0c0000 	lui	t4,0x0
     93c:	01285007 	srav	t2,t0,t1
     940:	000a5840 	sll	t3,t2,0x1
     944:	018b6021 	addu	t4,t4,t3
     948:	958c0008 	lhu	t4,8(t4)
     94c:	2401001e 	li	at,30
     950:	24060033 	li	a2,51
     954:	15810003 	bne	t4,at,964 <func_80A435E8+0xac>
     958:	00e02025 	move	a0,a3
     95c:	10000001 	b	964 <func_80A435E8+0xac>
     960:	24060034 	li	a2,52
     964:	0c000000 	jal	0 <func_80A42D30>
     968:	8fa50018 	lw	a1,24(sp)
     96c:	0c000000 	jal	0 <func_80A42D30>
     970:	8fa40018 	lw	a0,24(sp)
     974:	3c030000 	lui	v1,0x0
     978:	24630000 	addiu	v1,v1,0
     97c:	946d0f1a 	lhu	t5,3866(v1)
     980:	24020002 	li	v0,2
     984:	35ae4000 	ori	t6,t5,0x4000
     988:	10000004 	b	99c <func_80A435E8+0xe4>
     98c:	a46e0f1a 	sh	t6,3866(v1)
     990:	10000002 	b	99c <func_80A435E8+0xe4>
     994:	24020002 	li	v0,2
     998:	24020001 	li	v0,1
     99c:	8fbf0014 	lw	ra,20(sp)
     9a0:	27bd0018 	addiu	sp,sp,24
     9a4:	03e00008 	jr	ra
     9a8:	00000000 	nop

000009ac <func_80A436DC>:
     9ac:	3c0e0000 	lui	t6,0x0
     9b0:	3c0f0000 	lui	t7,0x0
     9b4:	8def00a4 	lw	t7,164(t7)
     9b8:	8dce004c 	lw	t6,76(t6)
     9bc:	afa40000 	sw	a0,0(sp)
     9c0:	afa50004 	sw	a1,4(sp)
     9c4:	01cfc024 	and	t8,t6,t7
     9c8:	13000004 	beqz	t8,9dc <func_80A436DC+0x30>
     9cc:	2403300a 	li	v1,12298
     9d0:	24033027 	li	v1,12327
     9d4:	03e00008 	jr	ra
     9d8:	3062ffff 	andi	v0,v1,0xffff
     9dc:	03e00008 	jr	ra
     9e0:	3062ffff 	andi	v0,v1,0xffff

000009e4 <func_80A43714>:
     9e4:	27bdffe8 	addiu	sp,sp,-24
     9e8:	afbf0014 	sw	ra,20(sp)
     9ec:	afa40018 	sw	a0,24(sp)
     9f0:	248420d8 	addiu	a0,a0,8408
     9f4:	0c000000 	jal	0 <func_80A42D30>
     9f8:	afa5001c 	sw	a1,28(sp)
     9fc:	24010002 	li	at,2
     a00:	10410006 	beq	v0,at,a1c <func_80A43714+0x38>
     a04:	8fa6001c 	lw	a2,28(sp)
     a08:	24010004 	li	at,4
     a0c:	10410011 	beq	v0,at,a54 <func_80A43714+0x70>
     a10:	8fa40018 	lw	a0,24(sp)
     a14:	10000033 	b	ae4 <func_80A43714+0x100>
     a18:	24020001 	li	v0,1
     a1c:	94ce010e 	lhu	t6,270(a2)
     a20:	2401300b 	li	at,12299
     a24:	3c040000 	lui	a0,0x0
     a28:	15c10008 	bne	t6,at,a4c <func_80A43714+0x68>
     a2c:	24840000 	addiu	a0,a0,0
     a30:	94830f14 	lhu	v1,3860(a0)
     a34:	24020002 	li	v0,2
     a38:	306f0800 	andi	t7,v1,0x800
     a3c:	15e00003 	bnez	t7,a4c <func_80A43714+0x68>
     a40:	34780800 	ori	t8,v1,0x800
     a44:	10000027 	b	ae4 <func_80A43714+0x100>
     a48:	a4980f14 	sh	t8,3860(a0)
     a4c:	10000025 	b	ae4 <func_80A43714+0x100>
     a50:	00001025 	move	v0,zero
     a54:	0c000000 	jal	0 <func_80A42D30>
     a58:	afa6001c 	sw	a2,28(sp)
     a5c:	10400020 	beqz	v0,ae0 <func_80A43714+0xfc>
     a60:	8fa6001c 	lw	a2,28(sp)
     a64:	94d9010e 	lhu	t9,270(a2)
     a68:	2401300a 	li	at,12298
     a6c:	8fa80018 	lw	t0,24(sp)
     a70:	17210019 	bne	t9,at,ad8 <func_80A43714+0xf4>
     a74:	3c090001 	lui	t1,0x1
     a78:	01284821 	addu	t1,t1,t0
     a7c:	912904bd 	lbu	t1,1213(t1)
     a80:	3c040000 	lui	a0,0x0
     a84:	24840000 	addiu	a0,a0,0
     a88:	1520000f 	bnez	t1,ac8 <func_80A43714+0xe4>
     a8c:	2419300d 	li	t9,12301
     a90:	3c0b0000 	lui	t3,0x0
     a94:	8d6b0008 	lw	t3,8(t3)
     a98:	8c8a00a0 	lw	t2,160(a0)
     a9c:	3c0d0000 	lui	t5,0x0
     aa0:	91ad0002 	lbu	t5,2(t5)
     aa4:	014b6024 	and	t4,t2,t3
     aa8:	2418300c 	li	t8,12300
     aac:	01ac7007 	srav	t6,t4,t5
     ab0:	11c00003 	beqz	t6,ac0 <func_80A43714+0xdc>
     ab4:	240f300b 	li	t7,12299
     ab8:	10000004 	b	acc <func_80A43714+0xe8>
     abc:	a4cf010e 	sh	t7,270(a2)
     ac0:	10000002 	b	acc <func_80A43714+0xe8>
     ac4:	a4d8010e 	sh	t8,270(a2)
     ac8:	a4d9010e 	sh	t9,270(a2)
     acc:	8fa40018 	lw	a0,24(sp)
     ad0:	0c000000 	jal	0 <func_80A42D30>
     ad4:	94c5010e 	lhu	a1,270(a2)
     ad8:	10000002 	b	ae4 <func_80A43714+0x100>
     adc:	24020001 	li	v0,1
     ae0:	24020001 	li	v0,1
     ae4:	8fbf0014 	lw	ra,20(sp)
     ae8:	27bd0018 	addiu	sp,sp,24
     aec:	03e00008 	jr	ra
     af0:	00000000 	nop

00000af4 <func_80A43824>:
     af4:	3c020000 	lui	v0,0x0
     af8:	24420000 	addiu	v0,v0,0
     afc:	3c0e0000 	lui	t6,0x0
     b00:	8dce004c 	lw	t6,76(t6)
     b04:	8c4f00a4 	lw	t7,164(v0)
     b08:	afa40000 	sw	a0,0(sp)
     b0c:	afa50004 	sw	a1,4(sp)
     b10:	01cfc024 	and	t8,t6,t7
     b14:	53000004 	beqzl	t8,b28 <func_80A43824+0x34>
     b18:	94590ed8 	lhu	t9,3800(v0)
     b1c:	03e00008 	jr	ra
     b20:	24023027 	li	v0,12327
     b24:	94590ed8 	lhu	t9,3800(v0)
     b28:	24033009 	li	v1,12297
     b2c:	33280008 	andi	t0,t9,0x8
     b30:	11000003 	beqz	t0,b40 <func_80A43824+0x4c>
     b34:	00000000 	nop
     b38:	10000001 	b	b40 <func_80A43824+0x4c>
     b3c:	24033026 	li	v1,12326
     b40:	3062ffff 	andi	v0,v1,0xffff
     b44:	03e00008 	jr	ra
     b48:	00000000 	nop

00000b4c <func_80A4387C>:
     b4c:	27bdffe8 	addiu	sp,sp,-24
     b50:	afbf0014 	sw	ra,20(sp)
     b54:	afa40018 	sw	a0,24(sp)
     b58:	afa5001c 	sw	a1,28(sp)
     b5c:	0c000000 	jal	0 <func_80A42D30>
     b60:	248420d8 	addiu	a0,a0,8408
     b64:	24010002 	li	at,2
     b68:	14410003 	bne	v0,at,b78 <func_80A4387C+0x2c>
     b6c:	8fbf0014 	lw	ra,20(sp)
     b70:	10000002 	b	b7c <func_80A4387C+0x30>
     b74:	00001025 	move	v0,zero
     b78:	24020001 	li	v0,1
     b7c:	03e00008 	jr	ra
     b80:	27bd0018 	addiu	sp,sp,24

00000b84 <func_80A438B4>:
     b84:	afa40000 	sw	a0,0(sp)
     b88:	3c040000 	lui	a0,0x0
     b8c:	3c030000 	lui	v1,0x0
     b90:	24630000 	addiu	v1,v1,0
     b94:	24840000 	addiu	a0,a0,0
     b98:	8c8200a4 	lw	v0,164(a0)
     b9c:	8c6e0004 	lw	t6,4(v1)
     ba0:	afa50004 	sw	a1,4(sp)
     ba4:	01c27824 	and	t7,t6,v0
     ba8:	51e00007 	beqzl	t7,bc8 <func_80A438B4+0x44>
     bac:	8c79004c 	lw	t9,76(v1)
     bb0:	8c980004 	lw	t8,4(a0)
     bb4:	57000004 	bnezl	t8,bc8 <func_80A438B4+0x44>
     bb8:	8c79004c 	lw	t9,76(v1)
     bbc:	03e00008 	jr	ra
     bc0:	24023043 	li	v0,12355
     bc4:	8c79004c 	lw	t9,76(v1)
     bc8:	03224024 	and	t0,t9,v0
     bcc:	51000004 	beqzl	t0,be0 <func_80A438B4+0x5c>
     bd0:	94890ed8 	lhu	t1,3800(a0)
     bd4:	03e00008 	jr	ra
     bd8:	24023027 	li	v0,12327
     bdc:	94890ed8 	lhu	t1,3800(a0)
     be0:	312a0008 	andi	t2,t1,0x8
     be4:	51400004 	beqzl	t2,bf8 <func_80A438B4+0x74>
     be8:	948b0f14 	lhu	t3,3860(a0)
     bec:	10000009 	b	c14 <func_80A438B4+0x90>
     bf0:	24033021 	li	v1,12321
     bf4:	948b0f14 	lhu	t3,3860(a0)
     bf8:	24023008 	li	v0,12296
     bfc:	316c0001 	andi	t4,t3,0x1
     c00:	11800003 	beqz	t4,c10 <func_80A438B4+0x8c>
     c04:	00000000 	nop
     c08:	10000001 	b	c10 <func_80A438B4+0x8c>
     c0c:	2402302a 	li	v0,12330
     c10:	00401825 	move	v1,v0
     c14:	3062ffff 	andi	v0,v1,0xffff
     c18:	03e00008 	jr	ra
     c1c:	00000000 	nop

00000c20 <func_80A43950>:
     c20:	27bdffe8 	addiu	sp,sp,-24
     c24:	afbf0014 	sw	ra,20(sp)
     c28:	afa5001c 	sw	a1,28(sp)
     c2c:	0c000000 	jal	0 <func_80A42D30>
     c30:	248420d8 	addiu	a0,a0,8408
     c34:	24010002 	li	at,2
     c38:	1441000b 	bne	v0,at,c68 <func_80A43950+0x48>
     c3c:	8fae001c 	lw	t6,28(sp)
     c40:	95cf010e 	lhu	t7,270(t6)
     c44:	24013008 	li	at,12296
     c48:	3c020000 	lui	v0,0x0
     c4c:	15e10004 	bne	t7,at,c60 <func_80A43950+0x40>
     c50:	24420000 	addiu	v0,v0,0
     c54:	94580f14 	lhu	t8,3860(v0)
     c58:	37190001 	ori	t9,t8,0x1
     c5c:	a4590f14 	sh	t9,3860(v0)
     c60:	10000002 	b	c6c <func_80A43950+0x4c>
     c64:	00001025 	move	v0,zero
     c68:	24020001 	li	v0,1
     c6c:	8fbf0014 	lw	ra,20(sp)
     c70:	27bd0018 	addiu	sp,sp,24
     c74:	03e00008 	jr	ra
     c78:	00000000 	nop

00000c7c <func_80A439AC>:
     c7c:	afa40000 	sw	a0,0(sp)
     c80:	3c040000 	lui	a0,0x0
     c84:	3c030000 	lui	v1,0x0
     c88:	24630000 	addiu	v1,v1,0
     c8c:	24840000 	addiu	a0,a0,0
     c90:	8c8200a4 	lw	v0,164(a0)
     c94:	8c6e0004 	lw	t6,4(v1)
     c98:	afa50004 	sw	a1,4(sp)
     c9c:	01c27824 	and	t7,t6,v0
     ca0:	51e00007 	beqzl	t7,cc0 <func_80A439AC+0x44>
     ca4:	8c79004c 	lw	t9,76(v1)
     ca8:	8c980004 	lw	t8,4(a0)
     cac:	57000004 	bnezl	t8,cc0 <func_80A439AC+0x44>
     cb0:	8c79004c 	lw	t9,76(v1)
     cb4:	03e00008 	jr	ra
     cb8:	24023043 	li	v0,12355
     cbc:	8c79004c 	lw	t9,76(v1)
     cc0:	03224024 	and	t0,t9,v0
     cc4:	51000004 	beqzl	t0,cd8 <func_80A439AC+0x5c>
     cc8:	94890f16 	lhu	t1,3862(a0)
     ccc:	03e00008 	jr	ra
     cd0:	24023027 	li	v0,12327
     cd4:	94890f16 	lhu	t1,3862(a0)
     cd8:	24033014 	li	v1,12308
     cdc:	312a0001 	andi	t2,t1,0x1
     ce0:	11400003 	beqz	t2,cf0 <func_80A439AC+0x74>
     ce4:	00000000 	nop
     ce8:	10000001 	b	cf0 <func_80A439AC+0x74>
     cec:	24033015 	li	v1,12309
     cf0:	3062ffff 	andi	v0,v1,0xffff
     cf4:	03e00008 	jr	ra
     cf8:	00000000 	nop

00000cfc <func_80A43A2C>:
     cfc:	27bdffe8 	addiu	sp,sp,-24
     d00:	afbf0014 	sw	ra,20(sp)
     d04:	afa5001c 	sw	a1,28(sp)
     d08:	0c000000 	jal	0 <func_80A42D30>
     d0c:	248420d8 	addiu	a0,a0,8408
     d10:	24010002 	li	at,2
     d14:	1441000b 	bne	v0,at,d44 <func_80A43A2C+0x48>
     d18:	8fae001c 	lw	t6,28(sp)
     d1c:	95cf010e 	lhu	t7,270(t6)
     d20:	24013014 	li	at,12308
     d24:	3c020000 	lui	v0,0x0
     d28:	15e10004 	bne	t7,at,d3c <func_80A43A2C+0x40>
     d2c:	24420000 	addiu	v0,v0,0
     d30:	94580f16 	lhu	t8,3862(v0)
     d34:	37190001 	ori	t9,t8,0x1
     d38:	a4590f16 	sh	t9,3862(v0)
     d3c:	10000002 	b	d48 <func_80A43A2C+0x4c>
     d40:	00001025 	move	v0,zero
     d44:	24020001 	li	v0,1
     d48:	8fbf0014 	lw	ra,20(sp)
     d4c:	27bd0018 	addiu	sp,sp,24
     d50:	03e00008 	jr	ra
     d54:	00000000 	nop

00000d58 <func_80A43A88>:
     d58:	afa40000 	sw	a0,0(sp)
     d5c:	3c040000 	lui	a0,0x0
     d60:	3c030000 	lui	v1,0x0
     d64:	24630000 	addiu	v1,v1,0
     d68:	24840000 	addiu	a0,a0,0
     d6c:	8c8200a4 	lw	v0,164(a0)
     d70:	8c6e0004 	lw	t6,4(v1)
     d74:	afa50004 	sw	a1,4(sp)
     d78:	01c27824 	and	t7,t6,v0
     d7c:	51e00007 	beqzl	t7,d9c <func_80A43A88+0x44>
     d80:	8c79004c 	lw	t9,76(v1)
     d84:	8c980004 	lw	t8,4(a0)
     d88:	57000004 	bnezl	t8,d9c <func_80A43A88+0x44>
     d8c:	8c79004c 	lw	t9,76(v1)
     d90:	03e00008 	jr	ra
     d94:	24023043 	li	v0,12355
     d98:	8c79004c 	lw	t9,76(v1)
     d9c:	03224024 	and	t0,t9,v0
     da0:	51000004 	beqzl	t0,db4 <func_80A43A88+0x5c>
     da4:	94890f16 	lhu	t1,3862(a0)
     da8:	03e00008 	jr	ra
     dac:	24023067 	li	v0,12391
     db0:	94890f16 	lhu	t1,3862(a0)
     db4:	24033016 	li	v1,12310
     db8:	312a0010 	andi	t2,t1,0x10
     dbc:	11400003 	beqz	t2,dcc <func_80A43A88+0x74>
     dc0:	00000000 	nop
     dc4:	10000001 	b	dcc <func_80A43A88+0x74>
     dc8:	24033017 	li	v1,12311
     dcc:	3062ffff 	andi	v0,v1,0xffff
     dd0:	03e00008 	jr	ra
     dd4:	00000000 	nop

00000dd8 <func_80A43B08>:
     dd8:	27bdffe8 	addiu	sp,sp,-24
     ddc:	afbf0014 	sw	ra,20(sp)
     de0:	afa5001c 	sw	a1,28(sp)
     de4:	0c000000 	jal	0 <func_80A42D30>
     de8:	248420d8 	addiu	a0,a0,8408
     dec:	24010002 	li	at,2
     df0:	1441000b 	bne	v0,at,e20 <func_80A43B08+0x48>
     df4:	8fae001c 	lw	t6,28(sp)
     df8:	95cf010e 	lhu	t7,270(t6)
     dfc:	24013016 	li	at,12310
     e00:	3c020000 	lui	v0,0x0
     e04:	15e10004 	bne	t7,at,e18 <func_80A43B08+0x40>
     e08:	24420000 	addiu	v0,v0,0
     e0c:	94580f16 	lhu	t8,3862(v0)
     e10:	37190010 	ori	t9,t8,0x10
     e14:	a4590f16 	sh	t9,3862(v0)
     e18:	10000002 	b	e24 <func_80A43B08+0x4c>
     e1c:	00001025 	move	v0,zero
     e20:	24020001 	li	v0,1
     e24:	8fbf0014 	lw	ra,20(sp)
     e28:	27bd0018 	addiu	sp,sp,24
     e2c:	03e00008 	jr	ra
     e30:	00000000 	nop

00000e34 <func_80A43B64>:
     e34:	27bdffe8 	addiu	sp,sp,-24
     e38:	afa5001c 	sw	a1,28(sp)
     e3c:	3c050000 	lui	a1,0x0
     e40:	3c030000 	lui	v1,0x0
     e44:	24630000 	addiu	v1,v1,0
     e48:	24a50000 	addiu	a1,a1,0
     e4c:	8cae0004 	lw	t6,4(a1)
     e50:	8c6200a4 	lw	v0,164(v1)
     e54:	afbf0014 	sw	ra,20(sp)
     e58:	01c27824 	and	t7,t6,v0
     e5c:	51e00007 	beqzl	t7,e7c <func_80A43B64+0x48>
     e60:	8cb9004c 	lw	t9,76(a1)
     e64:	8c780004 	lw	t8,4(v1)
     e68:	57000004 	bnezl	t8,e7c <func_80A43B64+0x48>
     e6c:	8cb9004c 	lw	t9,76(a1)
     e70:	10000023 	b	f00 <func_80A43B64+0xcc>
     e74:	24023043 	li	v0,12355
     e78:	8cb9004c 	lw	t9,76(a1)
     e7c:	3c0a0000 	lui	t2,0x0
     e80:	3c0c0000 	lui	t4,0x0
     e84:	03224024 	and	t0,t9,v0
     e88:	51000004 	beqzl	t0,e9c <func_80A43B64+0x68>
     e8c:	8c6900a0 	lw	t1,160(v1)
     e90:	1000001b 	b	f00 <func_80A43B64+0xcc>
     e94:	24023027 	li	v0,12327
     e98:	8c6900a0 	lw	t1,160(v1)
     e9c:	8d4a0008 	lw	t2,8(t2)
     ea0:	918c0002 	lbu	t4,2(t4)
     ea4:	012a5824 	and	t3,t1,t2
     ea8:	018b6807 	srav	t5,t3,t4
     eac:	11a00003 	beqz	t5,ebc <func_80A43B64+0x88>
     eb0:	00000000 	nop
     eb4:	10000011 	b	efc <func_80A43B64+0xc8>
     eb8:	2403302c 	li	v1,12332
     ebc:	0c000000 	jal	0 <func_80A42D30>
     ec0:	2405001b 	li	a1,27
     ec4:	3c030000 	lui	v1,0x0
     ec8:	14400003 	bnez	v0,ed8 <func_80A43B64+0xa4>
     ecc:	24630000 	addiu	v1,v1,0
     ed0:	10000009 	b	ef8 <func_80A43B64+0xc4>
     ed4:	24023017 	li	v0,12311
     ed8:	946e0f16 	lhu	t6,3862(v1)
     edc:	24033018 	li	v1,12312
     ee0:	31cf0100 	andi	t7,t6,0x100
     ee4:	11e00003 	beqz	t7,ef4 <func_80A43B64+0xc0>
     ee8:	00000000 	nop
     eec:	10000001 	b	ef4 <func_80A43B64+0xc0>
     ef0:	24033019 	li	v1,12313
     ef4:	00601025 	move	v0,v1
     ef8:	00401825 	move	v1,v0
     efc:	3062ffff 	andi	v0,v1,0xffff
     f00:	8fbf0014 	lw	ra,20(sp)
     f04:	27bd0018 	addiu	sp,sp,24
     f08:	03e00008 	jr	ra
     f0c:	00000000 	nop

00000f10 <func_80A43C40>:
     f10:	27bdffe8 	addiu	sp,sp,-24
     f14:	afbf0014 	sw	ra,20(sp)
     f18:	afa5001c 	sw	a1,28(sp)
     f1c:	0c000000 	jal	0 <func_80A42D30>
     f20:	248420d8 	addiu	a0,a0,8408
     f24:	24010002 	li	at,2
     f28:	1441000b 	bne	v0,at,f58 <func_80A43C40+0x48>
     f2c:	8fae001c 	lw	t6,28(sp)
     f30:	95cf010e 	lhu	t7,270(t6)
     f34:	24013018 	li	at,12312
     f38:	3c020000 	lui	v0,0x0
     f3c:	15e10004 	bne	t7,at,f50 <func_80A43C40+0x40>
     f40:	24420000 	addiu	v0,v0,0
     f44:	94580f16 	lhu	t8,3862(v0)
     f48:	37190100 	ori	t9,t8,0x100
     f4c:	a4590f16 	sh	t9,3862(v0)
     f50:	10000002 	b	f5c <func_80A43C40+0x4c>
     f54:	00001025 	move	v0,zero
     f58:	24020001 	li	v0,1
     f5c:	8fbf0014 	lw	ra,20(sp)
     f60:	27bd0018 	addiu	sp,sp,24
     f64:	03e00008 	jr	ra
     f68:	00000000 	nop

00000f6c <func_80A43C9C>:
     f6c:	3c030000 	lui	v1,0x0
     f70:	24630000 	addiu	v1,v1,0
     f74:	3c020000 	lui	v0,0x0
     f78:	8c420004 	lw	v0,4(v0)
     f7c:	8c6e00a4 	lw	t6,164(v1)
     f80:	afa40000 	sw	a0,0(sp)
     f84:	3c080000 	lui	t0,0x0
     f88:	004e7824 	and	t7,v0,t6
     f8c:	11e0000b 	beqz	t7,fbc <func_80A43C9C+0x50>
     f90:	00000000 	nop
     f94:	94780f18 	lhu	t8,3864(v1)
     f98:	24033041 	li	v1,12353
     f9c:	33198000 	andi	t9,t8,0x8000
     fa0:	13200004 	beqz	t9,fb4 <func_80A43C9C+0x48>
     fa4:	00000000 	nop
     fa8:	24033042 	li	v1,12354
     fac:	03e00008 	jr	ra
     fb0:	3062ffff 	andi	v0,v1,0xffff
     fb4:	03e00008 	jr	ra
     fb8:	3062ffff 	andi	v0,v1,0xffff
     fbc:	91080002 	lbu	t0,2(t0)
     fc0:	946a009c 	lhu	t2,156(v1)
     fc4:	01024804 	sllv	t1,v0,t0
     fc8:	012a5824 	and	t3,t1,t2
     fcc:	5160000c 	beqzl	t3,1000 <func_80A43C9C+0x94>
     fd0:	946e0f18 	lhu	t6,3864(v1)
     fd4:	946c0f18 	lhu	t4,3864(v1)
     fd8:	24033037 	li	v1,12343
     fdc:	318d4000 	andi	t5,t4,0x4000
     fe0:	11a00004 	beqz	t5,ff4 <func_80A43C9C+0x88>
     fe4:	00000000 	nop
     fe8:	24033038 	li	v1,12344
     fec:	03e00008 	jr	ra
     ff0:	3062ffff 	andi	v0,v1,0xffff
     ff4:	03e00008 	jr	ra
     ff8:	3062ffff 	andi	v0,v1,0xffff
     ffc:	946e0f18 	lhu	t6,3864(v1)
    1000:	24023030 	li	v0,12336
    1004:	31cf1000 	andi	t7,t6,0x1000
    1008:	11e0000d 	beqz	t7,1040 <func_80A43C9C+0xd4>
    100c:	00000000 	nop
    1010:	a0a0020c 	sb	zero,524(a1)
    1014:	a0a0020d 	sb	zero,525(a1)
    1018:	94780f18 	lhu	t8,3864(v1)
    101c:	24033032 	li	v1,12338
    1020:	33190400 	andi	t9,t8,0x400
    1024:	13200004 	beqz	t9,1038 <func_80A43C9C+0xcc>
    1028:	00000000 	nop
    102c:	24033033 	li	v1,12339
    1030:	03e00008 	jr	ra
    1034:	3062ffff 	andi	v0,v1,0xffff
    1038:	03e00008 	jr	ra
    103c:	3062ffff 	andi	v0,v1,0xffff
    1040:	03e00008 	jr	ra
    1044:	00000000 	nop

00001048 <func_80A43D78>:
    1048:	27bdffe8 	addiu	sp,sp,-24
    104c:	afa40018 	sw	a0,24(sp)
    1050:	afbf0014 	sw	ra,20(sp)
    1054:	00a03825 	move	a3,a1
    1058:	00a02025 	move	a0,a1
    105c:	8fa50018 	lw	a1,24(sp)
    1060:	0c000000 	jal	0 <func_80A42D30>
    1064:	afa7001c 	sw	a3,28(sp)
    1068:	24010002 	li	at,2
    106c:	10410009 	beq	v0,at,1094 <func_80A43D78+0x4c>
    1070:	8fa7001c 	lw	a3,28(sp)
    1074:	24010004 	li	at,4
    1078:	10410020 	beq	v0,at,10fc <func_80A43D78+0xb4>
    107c:	8fa40018 	lw	a0,24(sp)
    1080:	24010005 	li	at,5
    1084:	10410058 	beq	v0,at,11e8 <func_80A43D78+0x1a0>
    1088:	8fa40018 	lw	a0,24(sp)
    108c:	10000070 	b	1250 <func_80A43D78+0x208>
    1090:	24020001 	li	v0,1
    1094:	94e2010e 	lhu	v0,270(a3)
    1098:	24013036 	li	at,12342
    109c:	00e02025 	move	a0,a3
    10a0:	10410006 	beq	v0,at,10bc <func_80A43D78+0x74>
    10a4:	8fa50018 	lw	a1,24(sp)
    10a8:	24013037 	li	at,12343
    10ac:	1041000c 	beq	v0,at,10e0 <func_80A43D78+0x98>
    10b0:	00000000 	nop
    10b4:	10000066 	b	1250 <func_80A43D78+0x208>
    10b8:	00001025 	move	v0,zero
    10bc:	2406002c 	li	a2,44
    10c0:	0c000000 	jal	0 <func_80A42D30>
    10c4:	afa7001c 	sw	a3,28(sp)
    10c8:	8fa7001c 	lw	a3,28(sp)
    10cc:	3c0e0000 	lui	t6,0x0
    10d0:	25ce0000 	addiu	t6,t6,0
    10d4:	24020002 	li	v0,2
    10d8:	1000005d 	b	1250 <func_80A43D78+0x208>
    10dc:	acee0190 	sw	t6,400(a3)
    10e0:	3c020000 	lui	v0,0x0
    10e4:	24420000 	addiu	v0,v0,0
    10e8:	944f0f18 	lhu	t7,3864(v0)
    10ec:	35f84000 	ori	t8,t7,0x4000
    10f0:	a4580f18 	sh	t8,3864(v0)
    10f4:	10000056 	b	1250 <func_80A43D78+0x208>
    10f8:	00001025 	move	v0,zero
    10fc:	0c000000 	jal	0 <func_80A42D30>
    1100:	afa7001c 	sw	a3,28(sp)
    1104:	10400051 	beqz	v0,124c <func_80A43D78+0x204>
    1108:	8fa7001c 	lw	a3,28(sp)
    110c:	94f9010e 	lhu	t9,270(a3)
    1110:	24013034 	li	at,12340
    1114:	8fa80018 	lw	t0,24(sp)
    1118:	17210031 	bne	t9,at,11e0 <func_80A43D78+0x198>
    111c:	3c090001 	lui	t1,0x1
    1120:	01284821 	addu	t1,t1,t0
    1124:	912904bd 	lbu	t1,1213(t1)
    1128:	3c020000 	lui	v0,0x0
    112c:	24420000 	addiu	v0,v0,0
    1130:	55200016 	bnezl	t1,118c <func_80A43D78+0x144>
    1134:	944e0f18 	lhu	t6,3864(v0)
    1138:	3c020000 	lui	v0,0x0
    113c:	24420000 	addiu	v0,v0,0
    1140:	944a0f18 	lhu	t2,3864(v0)
    1144:	240d3035 	li	t5,12341
    1148:	240c3033 	li	t4,12339
    114c:	314b0800 	andi	t3,t2,0x800
    1150:	11600003 	beqz	t3,1160 <func_80A43D78+0x118>
    1154:	240439eb 	li	a0,14827
    1158:	10000002 	b	1164 <func_80A43D78+0x11c>
    115c:	a4ec010e 	sh	t4,270(a3)
    1160:	a4ed010e 	sh	t5,270(a3)
    1164:	94e5010e 	lhu	a1,270(a3)
    1168:	24013035 	li	at,12341
    116c:	54a10018 	bnel	a1,at,11d0 <func_80A43D78+0x188>
    1170:	8fa40018 	lw	a0,24(sp)
    1174:	0c000000 	jal	0 <func_80A42D30>
    1178:	afa7001c 	sw	a3,28(sp)
    117c:	8fa7001c 	lw	a3,28(sp)
    1180:	10000012 	b	11cc <func_80A43D78+0x184>
    1184:	94e5010e 	lhu	a1,270(a3)
    1188:	944e0f18 	lhu	t6,3864(v0)
    118c:	24193033 	li	t9,12339
    1190:	24183036 	li	t8,12342
    1194:	31cf0800 	andi	t7,t6,0x800
    1198:	11e00003 	beqz	t7,11a8 <func_80A43D78+0x160>
    119c:	240439eb 	li	a0,14827
    11a0:	10000002 	b	11ac <func_80A43D78+0x164>
    11a4:	a4f8010e 	sh	t8,270(a3)
    11a8:	a4f9010e 	sh	t9,270(a3)
    11ac:	94e5010e 	lhu	a1,270(a3)
    11b0:	24013036 	li	at,12342
    11b4:	54a10006 	bnel	a1,at,11d0 <func_80A43D78+0x188>
    11b8:	8fa40018 	lw	a0,24(sp)
    11bc:	0c000000 	jal	0 <func_80A42D30>
    11c0:	afa7001c 	sw	a3,28(sp)
    11c4:	8fa7001c 	lw	a3,28(sp)
    11c8:	94e5010e 	lhu	a1,270(a3)
    11cc:	8fa40018 	lw	a0,24(sp)
    11d0:	0c000000 	jal	0 <func_80A42D30>
    11d4:	afa7001c 	sw	a3,28(sp)
    11d8:	8fa7001c 	lw	a3,28(sp)
    11dc:	a0e0020c 	sb	zero,524(a3)
    11e0:	1000001b 	b	1250 <func_80A43D78+0x208>
    11e4:	24020001 	li	v0,1
    11e8:	0c000000 	jal	0 <func_80A42D30>
    11ec:	afa7001c 	sw	a3,28(sp)
    11f0:	10400016 	beqz	v0,124c <func_80A43D78+0x204>
    11f4:	8fa7001c 	lw	a3,28(sp)
    11f8:	94e2010e 	lhu	v0,270(a3)
    11fc:	24013032 	li	at,12338
    1200:	240a3034 	li	t2,12340
    1204:	1041000a 	beq	v0,at,1230 <func_80A43D78+0x1e8>
    1208:	3145ffff 	andi	a1,t2,0xffff
    120c:	24013033 	li	at,12339
    1210:	10410007 	beq	v0,at,1230 <func_80A43D78+0x1e8>
    1214:	24013035 	li	at,12341
    1218:	1441000a 	bne	v0,at,1244 <func_80A43D78+0x1fc>
    121c:	3c020000 	lui	v0,0x0
    1220:	24420000 	addiu	v0,v0,0
    1224:	94480f18 	lhu	t0,3864(v0)
    1228:	35090800 	ori	t1,t0,0x800
    122c:	a4490f18 	sh	t1,3864(v0)
    1230:	a4ea010e 	sh	t2,270(a3)
    1234:	0c000000 	jal	0 <func_80A42D30>
    1238:	8fa40018 	lw	a0,24(sp)
    123c:	10000004 	b	1250 <func_80A43D78+0x208>
    1240:	24020001 	li	v0,1
    1244:	10000002 	b	1250 <func_80A43D78+0x208>
    1248:	24020002 	li	v0,2
    124c:	24020001 	li	v0,1
    1250:	8fbf0014 	lw	ra,20(sp)
    1254:	27bd0018 	addiu	sp,sp,24
    1258:	03e00008 	jr	ra
    125c:	00000000 	nop

00001260 <func_80A43F90>:
    1260:	afa50004 	sw	a1,4(sp)
    1264:	3c050000 	lui	a1,0x0
    1268:	24a50000 	addiu	a1,a1,0
    126c:	90ae003e 	lbu	t6,62(a1)
    1270:	8c831c44 	lw	v1,7236(a0)
    1274:	240f000f 	li	t7,15
    1278:	11c00004 	beqz	t6,128c <func_80A43F90+0x2c>
    127c:	3c180000 	lui	t8,0x0
    1280:	a06f0693 	sb	t7,1683(v1)
    1284:	03e00008 	jr	ra
    1288:	2402305e 	li	v0,12382
    128c:	9318002d 	lbu	t8,45(t8)
    1290:	2408000f 	li	t0,15
    1294:	00b8c821 	addu	t9,a1,t8
    1298:	93220074 	lbu	v0,116(t9)
    129c:	28410037 	slti	at,v0,55
    12a0:	54200005 	bnezl	at,12b8 <func_80A43F90+0x58>
    12a4:	28410034 	slti	at,v0,52
    12a8:	a0680693 	sb	t0,1683(v1)
    12ac:	03e00008 	jr	ra
    12b0:	2402305e 	li	v0,12382
    12b4:	28410034 	slti	at,v0,52
    12b8:	14200005 	bnez	at,12d0 <func_80A43F90+0x70>
    12bc:	240a000b 	li	t2,11
    12c0:	2409000e 	li	t1,14
    12c4:	a0690693 	sb	t1,1683(v1)
    12c8:	03e00008 	jr	ra
    12cc:	24023058 	li	v0,12376
    12d0:	a06a0693 	sb	t2,1683(v1)
    12d4:	24023053 	li	v0,12371
    12d8:	03e00008 	jr	ra
    12dc:	00000000 	nop

000012e0 <func_80A44010>:
    12e0:	27bdffd8 	addiu	sp,sp,-40
    12e4:	afbf001c 	sw	ra,28(sp)
    12e8:	afa40028 	sw	a0,40(sp)
    12ec:	90ae020d 	lbu	t6,525(a1)
    12f0:	00a03825 	move	a3,a1
    12f4:	00a02025 	move	a0,a1
    12f8:	8fa50028 	lw	a1,40(sp)
    12fc:	afa7002c 	sw	a3,44(sp)
    1300:	0c000000 	jal	0 <func_80A42D30>
    1304:	a3ae0023 	sb	t6,35(sp)
    1308:	24010003 	li	at,3
    130c:	10410020 	beq	v0,at,1390 <func_80A44010+0xb0>
    1310:	8fa7002c 	lw	a3,44(sp)
    1314:	24010004 	li	at,4
    1318:	10410040 	beq	v0,at,141c <func_80A44010+0x13c>
    131c:	8fa40028 	lw	a0,40(sp)
    1320:	24010005 	li	at,5
    1324:	1041005d 	beq	v0,at,149c <func_80A44010+0x1bc>
    1328:	8fa40028 	lw	a0,40(sp)
    132c:	24010006 	li	at,6
    1330:	5441006c 	bnel	v0,at,14e4 <func_80A44010+0x204>
    1334:	24020001 	li	v0,1
    1338:	94ef010e 	lhu	t7,270(a3)
    133c:	2401305e 	li	at,12382
    1340:	3c180000 	lui	t8,0x0
    1344:	15e10010 	bne	t7,at,1388 <func_80A44010+0xa8>
    1348:	00000000 	nop
    134c:	9318003e 	lbu	t8,62(t8)
    1350:	00e02025 	move	a0,a3
    1354:	8fa50028 	lw	a1,40(sp)
    1358:	17000009 	bnez	t8,1380 <func_80A44010+0xa0>
    135c:	24060057 	li	a2,87
    1360:	0c000000 	jal	0 <func_80A42D30>
    1364:	afa7002c 	sw	a3,44(sp)
    1368:	8fa7002c 	lw	a3,44(sp)
    136c:	3c190000 	lui	t9,0x0
    1370:	27390000 	addiu	t9,t9,0
    1374:	24020002 	li	v0,2
    1378:	1000005a 	b	14e4 <func_80A44010+0x204>
    137c:	acf90190 	sw	t9,400(a3)
    1380:	10000058 	b	14e4 <func_80A44010+0x204>
    1384:	00001025 	move	v0,zero
    1388:	10000056 	b	14e4 <func_80A44010+0x204>
    138c:	00001025 	move	v0,zero
    1390:	94e2010e 	lhu	v0,270(a3)
    1394:	24013054 	li	at,12372
    1398:	10410011 	beq	v0,at,13e0 <func_80A44010+0x100>
    139c:	24013059 	li	at,12377
    13a0:	10410008 	beq	v0,at,13c4 <func_80A44010+0xe4>
    13a4:	2401305e 	li	at,12382
    13a8:	1441001a 	bne	v0,at,1414 <func_80A44010+0x134>
    13ac:	00000000 	nop
    13b0:	0c000000 	jal	0 <func_80A42D30>
    13b4:	8fa40028 	lw	a0,40(sp)
    13b8:	2401000f 	li	at,15
    13bc:	14410015 	bne	v0,at,1414 <func_80A44010+0x134>
    13c0:	00000000 	nop
    13c4:	93a80023 	lbu	t0,35(sp)
    13c8:	3c040000 	lui	a0,0x0
    13cc:	24840000 	addiu	a0,a0,0
    13d0:	15000003 	bnez	t0,13e0 <func_80A44010+0x100>
    13d4:	240538fc 	li	a1,14588
    13d8:	0c000000 	jal	0 <func_80A42D30>
    13dc:	2406003c 	li	a2,60
    13e0:	93a90023 	lbu	t1,35(sp)
    13e4:	3c070000 	lui	a3,0x0
    13e8:	24e70000 	addiu	a3,a3,0
    13ec:	15200009 	bnez	t1,1414 <func_80A44010+0x134>
    13f0:	24044807 	li	a0,18439
    13f4:	3c0a0000 	lui	t2,0x0
    13f8:	254a0000 	addiu	t2,t2,0
    13fc:	3c050000 	lui	a1,0x0
    1400:	24a50000 	addiu	a1,a1,0
    1404:	afaa0014 	sw	t2,20(sp)
    1408:	24060004 	li	a2,4
    140c:	0c000000 	jal	0 <func_80A42D30>
    1410:	afa70010 	sw	a3,16(sp)
    1414:	10000033 	b	14e4 <func_80A44010+0x204>
    1418:	24020001 	li	v0,1
    141c:	0c000000 	jal	0 <func_80A42D30>
    1420:	afa7002c 	sw	a3,44(sp)
    1424:	1040002e 	beqz	v0,14e0 <func_80A44010+0x200>
    1428:	8fa7002c 	lw	a3,44(sp)
    142c:	94e2010e 	lhu	v0,270(a3)
    1430:	24013054 	li	at,12372
    1434:	8fab0028 	lw	t3,40(sp)
    1438:	10410003 	beq	v0,at,1448 <func_80A44010+0x168>
    143c:	3c0c0001 	lui	t4,0x1
    1440:	24013055 	li	at,12373
    1444:	14410013 	bne	v0,at,1494 <func_80A44010+0x1b4>
    1448:	018b6021 	addu	t4,t4,t3
    144c:	918c04bd 	lbu	t4,1213(t4)
    1450:	240e3056 	li	t6,12374
    1454:	00e02025 	move	a0,a3
    1458:	1580000b 	bnez	t4,1488 <func_80A44010+0x1a8>
    145c:	31c5ffff 	andi	a1,t6,0xffff
    1460:	01602825 	move	a1,t3
    1464:	24060023 	li	a2,35
    1468:	0c000000 	jal	0 <func_80A42D30>
    146c:	afa7002c 	sw	a3,44(sp)
    1470:	8fa7002c 	lw	a3,44(sp)
    1474:	3c0d0000 	lui	t5,0x0
    1478:	25ad0000 	addiu	t5,t5,0
    147c:	24020002 	li	v0,2
    1480:	10000018 	b	14e4 <func_80A44010+0x204>
    1484:	aced0190 	sw	t5,400(a3)
    1488:	a4ee010e 	sh	t6,270(a3)
    148c:	0c000000 	jal	0 <func_80A42D30>
    1490:	8fa40028 	lw	a0,40(sp)
    1494:	10000013 	b	14e4 <func_80A44010+0x204>
    1498:	24020001 	li	v0,1
    149c:	0c000000 	jal	0 <func_80A42D30>
    14a0:	afa7002c 	sw	a3,44(sp)
    14a4:	1040000e 	beqz	v0,14e0 <func_80A44010+0x200>
    14a8:	8fa7002c 	lw	a3,44(sp)
    14ac:	94ef010e 	lhu	t7,270(a3)
    14b0:	24013059 	li	at,12377
    14b4:	24180037 	li	t8,55
    14b8:	15e10007 	bne	t7,at,14d8 <func_80A44010+0x1f8>
    14bc:	8fb90028 	lw	t9,40(sp)
    14c0:	3c010001 	lui	at,0x1
    14c4:	00390821 	addu	at,at,t9
    14c8:	3c080000 	lui	t0,0x0
    14cc:	a03803dc 	sb	t8,988(at)
    14d0:	25080000 	addiu	t0,t0,0
    14d4:	ace80190 	sw	t0,400(a3)
    14d8:	10000002 	b	14e4 <func_80A44010+0x204>
    14dc:	24020002 	li	v0,2
    14e0:	24020001 	li	v0,1
    14e4:	8fbf001c 	lw	ra,28(sp)
    14e8:	27bd0028 	addiu	sp,sp,40
    14ec:	03e00008 	jr	ra
    14f0:	00000000 	nop

000014f4 <func_80A44224>:
    14f4:	27bdffe8 	addiu	sp,sp,-24
    14f8:	afbf0014 	sw	ra,20(sp)
    14fc:	84a5001c 	lh	a1,28(a1)
    1500:	30a5fc00 	andi	a1,a1,0xfc00
    1504:	0c000000 	jal	0 <func_80A42D30>
    1508:	00052a83 	sra	a1,a1,0xa
    150c:	10400003 	beqz	v0,151c <func_80A44224+0x28>
    1510:	8fbf0014 	lw	ra,20(sp)
    1514:	10000002 	b	1520 <func_80A44224+0x2c>
    1518:	24023071 	li	v0,12401
    151c:	24023051 	li	v0,12369
    1520:	03e00008 	jr	ra
    1524:	27bd0018 	addiu	sp,sp,24

00001528 <func_80A44258>:
    1528:	27bdffe8 	addiu	sp,sp,-24
    152c:	afbf0014 	sw	ra,20(sp)
    1530:	afa40018 	sw	a0,24(sp)
    1534:	afa5001c 	sw	a1,28(sp)
    1538:	0c000000 	jal	0 <func_80A42D30>
    153c:	248420d8 	addiu	a0,a0,8408
    1540:	24010002 	li	at,2
    1544:	10410005 	beq	v0,at,155c <func_80A44258+0x34>
    1548:	24010005 	li	at,5
    154c:	10410005 	beq	v0,at,1564 <func_80A44258+0x3c>
    1550:	00000000 	nop
    1554:	10000016 	b	15b0 <func_80A44258+0x88>
    1558:	24020001 	li	v0,1
    155c:	10000014 	b	15b0 <func_80A44258+0x88>
    1560:	00001025 	move	v0,zero
    1564:	0c000000 	jal	0 <func_80A42D30>
    1568:	8fa40018 	lw	a0,24(sp)
    156c:	1040000f 	beqz	v0,15ac <func_80A44258+0x84>
    1570:	8fa4001c 	lw	a0,28(sp)
    1574:	948e010e 	lhu	t6,270(a0)
    1578:	24013071 	li	at,12401
    157c:	15c10009 	bne	t6,at,15a4 <func_80A44258+0x7c>
    1580:	00000000 	nop
    1584:	0c000000 	jal	0 <func_80A42D30>
    1588:	00000000 	nop
    158c:	8faf001c 	lw	t7,28(sp)
    1590:	a5e2010e 	sh	v0,270(t7)
    1594:	8fb8001c 	lw	t8,28(sp)
    1598:	8fa40018 	lw	a0,24(sp)
    159c:	0c000000 	jal	0 <func_80A42D30>
    15a0:	9705010e 	lhu	a1,270(t8)
    15a4:	10000002 	b	15b0 <func_80A44258+0x88>
    15a8:	24020001 	li	v0,1
    15ac:	24020001 	li	v0,1
    15b0:	8fbf0014 	lw	ra,20(sp)
    15b4:	27bd0018 	addiu	sp,sp,24
    15b8:	03e00008 	jr	ra
    15bc:	00000000 	nop

000015c0 <func_80A442F0>:
    15c0:	3c020000 	lui	v0,0x0
    15c4:	24420000 	addiu	v0,v0,0
    15c8:	8c4e0004 	lw	t6,4(v0)
    15cc:	afa40000 	sw	a0,0(sp)
    15d0:	afa50004 	sw	a1,4(sp)
    15d4:	11c0000b 	beqz	t6,1604 <func_80A442F0+0x44>
    15d8:	24033043 	li	v1,12355
    15dc:	944f0f14 	lhu	t7,3860(v0)
    15e0:	2402300e 	li	v0,12302
    15e4:	31f80008 	andi	t8,t7,0x8
    15e8:	13000004 	beqz	t8,15fc <func_80A442F0+0x3c>
    15ec:	00000000 	nop
    15f0:	24023022 	li	v0,12322
    15f4:	03e00008 	jr	ra
    15f8:	3042ffff 	andi	v0,v0,0xffff
    15fc:	03e00008 	jr	ra
    1600:	3042ffff 	andi	v0,v0,0xffff
    1604:	03e00008 	jr	ra
    1608:	3062ffff 	andi	v0,v1,0xffff

0000160c <func_80A4433C>:
    160c:	27bdffe8 	addiu	sp,sp,-24
    1610:	afbf0014 	sw	ra,20(sp)
    1614:	afa5001c 	sw	a1,28(sp)
    1618:	0c000000 	jal	0 <func_80A42D30>
    161c:	248420d8 	addiu	a0,a0,8408
    1620:	24010002 	li	at,2
    1624:	1441000b 	bne	v0,at,1654 <func_80A4433C+0x48>
    1628:	8fae001c 	lw	t6,28(sp)
    162c:	95cf010e 	lhu	t7,270(t6)
    1630:	2401300e 	li	at,12302
    1634:	3c020000 	lui	v0,0x0
    1638:	15e10004 	bne	t7,at,164c <func_80A4433C+0x40>
    163c:	24420000 	addiu	v0,v0,0
    1640:	94580f14 	lhu	t8,3860(v0)
    1644:	37190008 	ori	t9,t8,0x8
    1648:	a4590f14 	sh	t9,3860(v0)
    164c:	10000002 	b	1658 <func_80A4433C+0x4c>
    1650:	00001025 	move	v0,zero
    1654:	24020001 	li	v0,1
    1658:	8fbf0014 	lw	ra,20(sp)
    165c:	27bd0018 	addiu	sp,sp,24
    1660:	03e00008 	jr	ra
    1664:	00000000 	nop

00001668 <func_80A44398>:
    1668:	afa40000 	sw	a0,0(sp)
    166c:	afa50004 	sw	a1,4(sp)
    1670:	03e00008 	jr	ra
    1674:	24027122 	li	v0,28962

00001678 <func_80A443A8>:
    1678:	27bdffe8 	addiu	sp,sp,-24
    167c:	afbf0014 	sw	ra,20(sp)
    1680:	afa40018 	sw	a0,24(sp)
    1684:	afa5001c 	sw	a1,28(sp)
    1688:	0c000000 	jal	0 <func_80A42D30>
    168c:	248420d8 	addiu	a0,a0,8408
    1690:	24010002 	li	at,2
    1694:	14410003 	bne	v0,at,16a4 <func_80A443A8+0x2c>
    1698:	8fbf0014 	lw	ra,20(sp)
    169c:	10000002 	b	16a8 <func_80A443A8+0x30>
    16a0:	00001025 	move	v0,zero
    16a4:	24020001 	li	v0,1
    16a8:	03e00008 	jr	ra
    16ac:	27bd0018 	addiu	sp,sp,24

000016b0 <func_80A443E0>:
    16b0:	3c0e0000 	lui	t6,0x0
    16b4:	8dce0004 	lw	t6,4(t6)
    16b8:	27bdffe8 	addiu	sp,sp,-24
    16bc:	afbf0014 	sw	ra,20(sp)
    16c0:	11c00011 	beqz	t6,1708 <func_80A443E0+0x58>
    16c4:	afa5001c 	sw	a1,28(sp)
    16c8:	0c000000 	jal	0 <func_80A42D30>
    16cc:	2405001c 	li	a1,28
    16d0:	10400003 	beqz	v0,16e0 <func_80A443E0+0x30>
    16d4:	3c0f0000 	lui	t7,0x0
    16d8:	1000000c 	b	170c <func_80A443E0+0x5c>
    16dc:	2402302f 	li	v0,12335
    16e0:	95ef0f14 	lhu	t7,3860(t7)
    16e4:	24033024 	li	v1,12324
    16e8:	31f80040 	andi	t8,t7,0x40
    16ec:	13000004 	beqz	t8,1700 <func_80A443E0+0x50>
    16f0:	00000000 	nop
    16f4:	24033025 	li	v1,12325
    16f8:	10000004 	b	170c <func_80A443E0+0x5c>
    16fc:	3062ffff 	andi	v0,v1,0xffff
    1700:	10000002 	b	170c <func_80A443E0+0x5c>
    1704:	3062ffff 	andi	v0,v1,0xffff
    1708:	24023043 	li	v0,12355
    170c:	8fbf0014 	lw	ra,20(sp)
    1710:	27bd0018 	addiu	sp,sp,24
    1714:	03e00008 	jr	ra
    1718:	00000000 	nop

0000171c <func_80A4444C>:
    171c:	27bdffe8 	addiu	sp,sp,-24
    1720:	afbf0014 	sw	ra,20(sp)
    1724:	afa5001c 	sw	a1,28(sp)
    1728:	0c000000 	jal	0 <func_80A42D30>
    172c:	248420d8 	addiu	a0,a0,8408
    1730:	24010002 	li	at,2
    1734:	1441000b 	bne	v0,at,1764 <func_80A4444C+0x48>
    1738:	8fae001c 	lw	t6,28(sp)
    173c:	95cf010e 	lhu	t7,270(t6)
    1740:	24013024 	li	at,12324
    1744:	3c020000 	lui	v0,0x0
    1748:	15e10004 	bne	t7,at,175c <func_80A4444C+0x40>
    174c:	24420000 	addiu	v0,v0,0
    1750:	94580f14 	lhu	t8,3860(v0)
    1754:	37190040 	ori	t9,t8,0x40
    1758:	a4590f14 	sh	t9,3860(v0)
    175c:	10000002 	b	1768 <func_80A4444C+0x4c>
    1760:	00001025 	move	v0,zero
    1764:	24020001 	li	v0,1
    1768:	8fbf0014 	lw	ra,20(sp)
    176c:	27bd0018 	addiu	sp,sp,24
    1770:	03e00008 	jr	ra
    1774:	00000000 	nop

00001778 <func_80A444A8>:
    1778:	3c020000 	lui	v0,0x0
    177c:	24420000 	addiu	v0,v0,0
    1780:	8c4e0004 	lw	t6,4(v0)
    1784:	afa40000 	sw	a0,0(sp)
    1788:	afa50004 	sw	a1,4(sp)
    178c:	11c0000c 	beqz	t6,17c0 <func_80A444A8+0x48>
    1790:	3c0f0000 	lui	t7,0x0
    1794:	8def004c 	lw	t7,76(t7)
    1798:	8c5800a4 	lw	t8,164(v0)
    179c:	24033064 	li	v1,12388
    17a0:	01f8c824 	and	t9,t7,t8
    17a4:	13200004 	beqz	t9,17b8 <func_80A444A8+0x40>
    17a8:	00000000 	nop
    17ac:	24033065 	li	v1,12389
    17b0:	03e00008 	jr	ra
    17b4:	3062ffff 	andi	v0,v1,0xffff
    17b8:	03e00008 	jr	ra
    17bc:	3062ffff 	andi	v0,v1,0xffff
    17c0:	24023043 	li	v0,12355
    17c4:	03e00008 	jr	ra
    17c8:	00000000 	nop

000017cc <func_80A444FC>:
    17cc:	27bdffe8 	addiu	sp,sp,-24
    17d0:	afbf0014 	sw	ra,20(sp)
    17d4:	afa40018 	sw	a0,24(sp)
    17d8:	afa5001c 	sw	a1,28(sp)
    17dc:	0c000000 	jal	0 <func_80A42D30>
    17e0:	248420d8 	addiu	a0,a0,8408
    17e4:	24010002 	li	at,2
    17e8:	14410003 	bne	v0,at,17f8 <func_80A444FC+0x2c>
    17ec:	8fbf0014 	lw	ra,20(sp)
    17f0:	10000002 	b	17fc <func_80A444FC+0x30>
    17f4:	00001025 	move	v0,zero
    17f8:	24020001 	li	v0,1
    17fc:	03e00008 	jr	ra
    1800:	27bd0018 	addiu	sp,sp,24

00001804 <func_80A44534>:
    1804:	27bdffe8 	addiu	sp,sp,-24
    1808:	afbf0014 	sw	ra,20(sp)
    180c:	00a03025 	move	a2,a1
    1810:	afa6001c 	sw	a2,28(sp)
    1814:	24050020 	li	a1,32
    1818:	0c000000 	jal	0 <func_80A42D30>
    181c:	afa40018 	sw	a0,24(sp)
    1820:	8fa40018 	lw	a0,24(sp)
    1824:	8fa6001c 	lw	a2,28(sp)
    1828:	10400003 	beqz	v0,1838 <func_80A44534+0x34>
    182c:	3043ffff 	andi	v1,v0,0xffff
    1830:	10000041 	b	1938 <L80A44660+0x8>
    1834:	00601025 	move	v0,v1
    1838:	84ce001c 	lh	t6,28(a2)
    183c:	31cf001f 	andi	t7,t6,0x1f
    1840:	2de1000e 	sltiu	at,t7,14
    1844:	1020003c 	beqz	at,1938 <L80A44660+0x8>
    1848:	000f7880 	sll	t7,t7,0x2
    184c:	3c010000 	lui	at,0x0
    1850:	002f0821 	addu	at,at,t7
    1854:	8c2f0000 	lw	t7,0(at)
    1858:	01e00008 	jr	t7
    185c:	00000000 	nop

00001860 <L80A44590>:
    1860:	0c000000 	jal	0 <func_80A42D30>
    1864:	00c02825 	move	a1,a2
    1868:	10000034 	b	193c <L80A44660+0xc>
    186c:	8fbf0014 	lw	ra,20(sp)

00001870 <L80A445A0>:
    1870:	0c000000 	jal	0 <func_80A42D30>
    1874:	00c02825 	move	a1,a2
    1878:	10000030 	b	193c <L80A44660+0xc>
    187c:	8fbf0014 	lw	ra,20(sp)

00001880 <L80A445B0>:
    1880:	0c000000 	jal	0 <func_80A42D30>
    1884:	00c02825 	move	a1,a2
    1888:	1000002c 	b	193c <L80A44660+0xc>
    188c:	8fbf0014 	lw	ra,20(sp)

00001890 <L80A445C0>:
    1890:	0c000000 	jal	0 <func_80A42D30>
    1894:	00c02825 	move	a1,a2
    1898:	10000028 	b	193c <L80A44660+0xc>
    189c:	8fbf0014 	lw	ra,20(sp)

000018a0 <L80A445D0>:
    18a0:	0c000000 	jal	0 <func_80A42D30>
    18a4:	00c02825 	move	a1,a2
    18a8:	10000024 	b	193c <L80A44660+0xc>
    18ac:	8fbf0014 	lw	ra,20(sp)

000018b0 <L80A445E0>:
    18b0:	0c000000 	jal	0 <func_80A42D30>
    18b4:	00c02825 	move	a1,a2
    18b8:	10000020 	b	193c <L80A44660+0xc>
    18bc:	8fbf0014 	lw	ra,20(sp)

000018c0 <L80A445F0>:
    18c0:	0c000000 	jal	0 <func_80A42D30>
    18c4:	00c02825 	move	a1,a2
    18c8:	1000001c 	b	193c <L80A44660+0xc>
    18cc:	8fbf0014 	lw	ra,20(sp)

000018d0 <L80A44600>:
    18d0:	0c000000 	jal	0 <func_80A42D30>
    18d4:	00c02825 	move	a1,a2
    18d8:	10000018 	b	193c <L80A44660+0xc>
    18dc:	8fbf0014 	lw	ra,20(sp)

000018e0 <L80A44610>:
    18e0:	0c000000 	jal	0 <func_80A42D30>
    18e4:	00c02825 	move	a1,a2
    18e8:	10000014 	b	193c <L80A44660+0xc>
    18ec:	8fbf0014 	lw	ra,20(sp)

000018f0 <L80A44620>:
    18f0:	0c000000 	jal	0 <func_80A42D30>
    18f4:	00c02825 	move	a1,a2
    18f8:	10000010 	b	193c <L80A44660+0xc>
    18fc:	8fbf0014 	lw	ra,20(sp)

00001900 <L80A44630>:
    1900:	0c000000 	jal	0 <func_80A42D30>
    1904:	00c02825 	move	a1,a2
    1908:	1000000c 	b	193c <L80A44660+0xc>
    190c:	8fbf0014 	lw	ra,20(sp)

00001910 <L80A44640>:
    1910:	0c000000 	jal	0 <func_80A42D30>
    1914:	00c02825 	move	a1,a2
    1918:	10000008 	b	193c <L80A44660+0xc>
    191c:	8fbf0014 	lw	ra,20(sp)

00001920 <L80A44650>:
    1920:	0c000000 	jal	0 <func_80A42D30>
    1924:	00c02825 	move	a1,a2
    1928:	10000004 	b	193c <L80A44660+0xc>
    192c:	8fbf0014 	lw	ra,20(sp)

00001930 <L80A44660>:
    1930:	0c000000 	jal	0 <func_80A42D30>
    1934:	00c02825 	move	a1,a2
    1938:	8fbf0014 	lw	ra,20(sp)
    193c:	27bd0018 	addiu	sp,sp,24
    1940:	03e00008 	jr	ra
    1944:	00000000 	nop

00001948 <func_80A44678>:
    1948:	27bdffe8 	addiu	sp,sp,-24
    194c:	afbf0014 	sw	ra,20(sp)
    1950:	84ae001c 	lh	t6,28(a1)
    1954:	31cf001f 	andi	t7,t6,0x1f
    1958:	2de1000e 	sltiu	at,t7,14
    195c:	1020003c 	beqz	at,1a50 <L80A44778+0x8>
    1960:	000f7880 	sll	t7,t7,0x2
    1964:	3c010000 	lui	at,0x0
    1968:	002f0821 	addu	at,at,t7
    196c:	8c2f0000 	lw	t7,0(at)
    1970:	01e00008 	jr	t7
    1974:	00000000 	nop

00001978 <L80A446A8>:
    1978:	0c000000 	jal	0 <func_80A42D30>
    197c:	00000000 	nop
    1980:	10000034 	b	1a54 <L80A44778+0xc>
    1984:	8fbf0014 	lw	ra,20(sp)

00001988 <L80A446B8>:
    1988:	0c000000 	jal	0 <func_80A42D30>
    198c:	00000000 	nop
    1990:	10000030 	b	1a54 <L80A44778+0xc>
    1994:	8fbf0014 	lw	ra,20(sp)

00001998 <L80A446C8>:
    1998:	0c000000 	jal	0 <func_80A42D30>
    199c:	00000000 	nop
    19a0:	1000002c 	b	1a54 <L80A44778+0xc>
    19a4:	8fbf0014 	lw	ra,20(sp)

000019a8 <L80A446D8>:
    19a8:	0c000000 	jal	0 <func_80A42D30>
    19ac:	00000000 	nop
    19b0:	10000028 	b	1a54 <L80A44778+0xc>
    19b4:	8fbf0014 	lw	ra,20(sp)

000019b8 <L80A446E8>:
    19b8:	0c000000 	jal	0 <func_80A42D30>
    19bc:	00000000 	nop
    19c0:	10000024 	b	1a54 <L80A44778+0xc>
    19c4:	8fbf0014 	lw	ra,20(sp)

000019c8 <L80A446F8>:
    19c8:	0c000000 	jal	0 <func_80A42D30>
    19cc:	00000000 	nop
    19d0:	10000020 	b	1a54 <L80A44778+0xc>
    19d4:	8fbf0014 	lw	ra,20(sp)

000019d8 <L80A44708>:
    19d8:	0c000000 	jal	0 <func_80A42D30>
    19dc:	00000000 	nop
    19e0:	1000001c 	b	1a54 <L80A44778+0xc>
    19e4:	8fbf0014 	lw	ra,20(sp)

000019e8 <L80A44718>:
    19e8:	0c000000 	jal	0 <func_80A42D30>
    19ec:	00000000 	nop
    19f0:	10000018 	b	1a54 <L80A44778+0xc>
    19f4:	8fbf0014 	lw	ra,20(sp)

000019f8 <L80A44728>:
    19f8:	0c000000 	jal	0 <func_80A42D30>
    19fc:	00000000 	nop
    1a00:	10000014 	b	1a54 <L80A44778+0xc>
    1a04:	8fbf0014 	lw	ra,20(sp)

00001a08 <L80A44738>:
    1a08:	0c000000 	jal	0 <func_80A42D30>
    1a0c:	00000000 	nop
    1a10:	10000010 	b	1a54 <L80A44778+0xc>
    1a14:	8fbf0014 	lw	ra,20(sp)

00001a18 <L80A44748>:
    1a18:	0c000000 	jal	0 <func_80A42D30>
    1a1c:	00000000 	nop
    1a20:	1000000c 	b	1a54 <L80A44778+0xc>
    1a24:	8fbf0014 	lw	ra,20(sp)

00001a28 <L80A44758>:
    1a28:	0c000000 	jal	0 <func_80A42D30>
    1a2c:	00000000 	nop
    1a30:	10000008 	b	1a54 <L80A44778+0xc>
    1a34:	8fbf0014 	lw	ra,20(sp)

00001a38 <L80A44768>:
    1a38:	0c000000 	jal	0 <func_80A42D30>
    1a3c:	00000000 	nop
    1a40:	10000004 	b	1a54 <L80A44778+0xc>
    1a44:	8fbf0014 	lw	ra,20(sp)

00001a48 <L80A44778>:
    1a48:	0c000000 	jal	0 <func_80A42D30>
    1a4c:	00000000 	nop
    1a50:	8fbf0014 	lw	ra,20(sp)
    1a54:	27bd0018 	addiu	sp,sp,24
    1a58:	03e00008 	jr	ra
    1a5c:	00000000 	nop

00001a60 <func_80A44790>:
    1a60:	27bdffd8 	addiu	sp,sp,-40
    1a64:	afbf0024 	sw	ra,36(sp)
    1a68:	afb00020 	sw	s0,32(sp)
    1a6c:	afa5002c 	sw	a1,44(sp)
    1a70:	8482001c 	lh	v0,28(a0)
    1a74:	24030002 	li	v1,2
    1a78:	00808025 	move	s0,a0
    1a7c:	3042001f 	andi	v0,v0,0x1f
    1a80:	1062000f 	beq	v1,v0,1ac0 <func_80A44790+0x60>
    1a84:	00000000 	nop
    1a88:	1040000d 	beqz	v0,1ac0 <func_80A44790+0x60>
    1a8c:	00a02025 	move	a0,a1
    1a90:	3c0e0000 	lui	t6,0x0
    1a94:	3c0f0000 	lui	t7,0x0
    1a98:	25ef0000 	addiu	t7,t7,0
    1a9c:	25ce0000 	addiu	t6,t6,0
    1aa0:	8e070218 	lw	a3,536(s0)
    1aa4:	afaf0014 	sw	t7,20(sp)
    1aa8:	afae0010 	sw	t6,16(sp)
    1aac:	02002825 	move	a1,s0
    1ab0:	0c000000 	jal	0 <func_80A42D30>
    1ab4:	26060194 	addiu	a2,s0,404
    1ab8:	10000024 	b	1b4c <func_80A44790+0xec>
    1abc:	8fbf0024 	lw	ra,36(sp)
    1ac0:	14620007 	bne	v1,v0,1ae0 <func_80A44790+0x80>
    1ac4:	02002025 	move	a0,s0
    1ac8:	921801cf 	lbu	t8,463(s0)
    1acc:	33190001 	andi	t9,t8,0x1
    1ad0:	17200003 	bnez	t9,1ae0 <func_80A44790+0x80>
    1ad4:	00000000 	nop
    1ad8:	1000001b 	b	1b48 <func_80A44790+0xe8>
    1adc:	00001025 	move	v0,zero
    1ae0:	0c000000 	jal	0 <func_80A42D30>
    1ae4:	8fa5002c 	lw	a1,44(sp)
    1ae8:	10400004 	beqz	v0,1afc <func_80A44790+0x9c>
    1aec:	24080001 	li	t0,1
    1af0:	a6080194 	sh	t0,404(s0)
    1af4:	10000014 	b	1b48 <func_80A44790+0xe8>
    1af8:	24020001 	li	v0,1
    1afc:	86090194 	lh	t1,404(s0)
    1b00:	02002025 	move	a0,s0
    1b04:	8fa5002c 	lw	a1,44(sp)
    1b08:	11200007 	beqz	t1,1b28 <func_80A44790+0xc8>
    1b0c:	00000000 	nop
    1b10:	8fa4002c 	lw	a0,44(sp)
    1b14:	0c000000 	jal	0 <func_80A42D30>
    1b18:	02002825 	move	a1,s0
    1b1c:	a6020194 	sh	v0,404(s0)
    1b20:	10000009 	b	1b48 <func_80A44790+0xe8>
    1b24:	00001025 	move	v0,zero
    1b28:	0c000000 	jal	0 <func_80A42D30>
    1b2c:	8e060218 	lw	a2,536(s0)
    1b30:	10400004 	beqz	v0,1b44 <func_80A44790+0xe4>
    1b34:	8fa4002c 	lw	a0,44(sp)
    1b38:	0c000000 	jal	0 <func_80A42D30>
    1b3c:	02002825 	move	a1,s0
    1b40:	a602010e 	sh	v0,270(s0)
    1b44:	00001025 	move	v0,zero
    1b48:	8fbf0024 	lw	ra,36(sp)
    1b4c:	8fb00020 	lw	s0,32(sp)
    1b50:	27bd0028 	addiu	sp,sp,40
    1b54:	03e00008 	jr	ra
    1b58:	00000000 	nop

00001b5c <func_80A4488C>:
    1b5c:	8482001c 	lh	v0,28(a0)
    1b60:	3c0f0000 	lui	t7,0x0
    1b64:	25ef0000 	addiu	t7,t7,0
    1b68:	3042001f 	andi	v0,v0,0x1f
    1b6c:	304200ff 	andi	v0,v0,0xff
    1b70:	00027080 	sll	t6,v0,0x2
    1b74:	01c27021 	addu	t6,t6,v0
    1b78:	000e7040 	sll	t6,t6,0x1
    1b7c:	01cf1821 	addu	v1,t6,t7
    1b80:	84780006 	lh	t8,6(v1)
    1b84:	a49801fc 	sh	t8,508(a0)
    1b88:	84790008 	lh	t9,8(v1)
    1b8c:	03e00008 	jr	ra
    1b90:	a49901fe 	sh	t9,510(a0)

00001b94 <func_80A448C4>:
    1b94:	27bdffe0 	addiu	sp,sp,-32
    1b98:	afbf0014 	sw	ra,20(sp)
    1b9c:	8483001c 	lh	v1,28(a0)
    1ba0:	3c0f0000 	lui	t7,0x0
    1ba4:	25ef0000 	addiu	t7,t7,0
    1ba8:	3063001f 	andi	v1,v1,0x1f
    1bac:	306300ff 	andi	v1,v1,0xff
    1bb0:	00037100 	sll	t6,v1,0x4
    1bb4:	01cf1021 	addu	v0,t6,t7
    1bb8:	c4440000 	lwc1	$f4,0(v0)
    1bbc:	e48400c4 	swc1	$f4,196(a0)
    1bc0:	afa40020 	sw	a0,32(sp)
    1bc4:	afa20018 	sw	v0,24(sp)
    1bc8:	0c000000 	jal	0 <func_80A42D30>
    1bcc:	8c450004 	lw	a1,4(v0)
    1bd0:	8fa40020 	lw	a0,32(sp)
    1bd4:	8fa20018 	lw	v0,24(sp)
    1bd8:	849901fc 	lh	t9,508(a0)
    1bdc:	80580008 	lb	t8,8(v0)
    1be0:	44995000 	mtc1	t9,$f10
    1be4:	a098001f 	sb	t8,31(a0)
    1be8:	c446000c 	lwc1	$f6,12(v0)
    1bec:	46805420 	cvt.s.w	$f16,$f10
    1bf0:	e4860218 	swc1	$f6,536(a0)
    1bf4:	c4880218 	lwc1	$f8,536(a0)
    1bf8:	46104480 	add.s	$f18,$f8,$f16
    1bfc:	e4920218 	swc1	$f18,536(a0)
    1c00:	8fbf0014 	lw	ra,20(sp)
    1c04:	27bd0020 	addiu	sp,sp,32
    1c08:	03e00008 	jr	ra
    1c0c:	00000000 	nop

00001c10 <func_80A44940>:
    1c10:	27bdffd0 	addiu	sp,sp,-48
    1c14:	afbf0014 	sw	ra,20(sp)
    1c18:	afa50034 	sw	a1,52(sp)
    1c1c:	c4840024 	lwc1	$f4,36(a0)
    1c20:	3c0d0000 	lui	t5,0x0
    1c24:	00803825 	move	a3,a0
    1c28:	4600218d 	trunc.w.s	$f6,$f4
    1c2c:	440f3000 	mfc1	t7,$f6
    1c30:	00000000 	nop
    1c34:	a7af0028 	sh	t7,40(sp)
    1c38:	c4880028 	lwc1	$f8,40(a0)
    1c3c:	4600428d 	trunc.w.s	$f10,$f8
    1c40:	44195000 	mfc1	t9,$f10
    1c44:	00000000 	nop
    1c48:	a7b9002a 	sh	t9,42(sp)
    1c4c:	c490002c 	lwc1	$f16,44(a0)
    1c50:	4600848d 	trunc.w.s	$f18,$f16
    1c54:	44099000 	mfc1	t1,$f18
    1c58:	00000000 	nop
    1c5c:	a7a9002c 	sh	t1,44(sp)
    1c60:	848a001c 	lh	t2,28(a0)
    1c64:	314b001f 	andi	t3,t2,0x1f
    1c68:	000b6080 	sll	t4,t3,0x2
    1c6c:	018b6021 	addu	t4,t4,t3
    1c70:	000c6040 	sll	t4,t4,0x1
    1c74:	01ac6821 	addu	t5,t5,t4
    1c78:	85ad0000 	lh	t5,0(t5)
    1c7c:	448d2000 	mtc1	t5,$f4
    1c80:	00000000 	nop
    1c84:	468021a0 	cvt.s.w	$f6,$f4
    1c88:	e7a60024 	swc1	$f6,36(sp)
    1c8c:	848400b6 	lh	a0,182(a0)
    1c90:	0c000000 	jal	0 <func_80A42D30>
    1c94:	afa70030 	sw	a3,48(sp)
    1c98:	c7a80024 	lwc1	$f8,36(sp)
    1c9c:	87ae0028 	lh	t6,40(sp)
    1ca0:	8fa70030 	lw	a3,48(sp)
    1ca4:	46004282 	mul.s	$f10,$f8,$f0
    1ca8:	4600540d 	trunc.w.s	$f16,$f10
    1cac:	44088000 	mfc1	t0,$f16
    1cb0:	00000000 	nop
    1cb4:	01c84821 	addu	t1,t6,t0
    1cb8:	a7a90028 	sh	t1,40(sp)
    1cbc:	0c000000 	jal	0 <func_80A42D30>
    1cc0:	84e400b6 	lh	a0,182(a3)
    1cc4:	c7b20024 	lwc1	$f18,36(sp)
    1cc8:	87aa002c 	lh	t2,44(sp)
    1ccc:	8fa70030 	lw	a3,48(sp)
    1cd0:	46009102 	mul.s	$f4,$f18,$f0
    1cd4:	3c0b0000 	lui	t3,0x0
    1cd8:	87b9002a 	lh	t9,42(sp)
    1cdc:	27ad0028 	addiu	t5,sp,40
    1ce0:	8fa40034 	lw	a0,52(sp)
    1ce4:	3c010001 	lui	at,0x1
    1ce8:	34211e60 	ori	at,at,0x1e60
    1cec:	4600218d 	trunc.w.s	$f6,$f4
    1cf0:	24e601bc 	addiu	a2,a3,444
    1cf4:	00812821 	addu	a1,a0,at
    1cf8:	440f3000 	mfc1	t7,$f6
    1cfc:	00000000 	nop
    1d00:	014fc021 	addu	t8,t2,t7
    1d04:	a7b8002c 	sh	t8,44(sp)
    1d08:	84ee001c 	lh	t6,28(a3)
    1d0c:	31c8001f 	andi	t0,t6,0x1f
    1d10:	00084880 	sll	t1,t0,0x2
    1d14:	01284821 	addu	t1,t1,t0
    1d18:	00094840 	sll	t1,t1,0x1
    1d1c:	01695821 	addu	t3,t3,t1
    1d20:	856b0000 	lh	t3,0(t3)
    1d24:	032b6021 	addu	t4,t9,t3
    1d28:	a7ac002a 	sh	t4,42(sp)
    1d2c:	8daf0000 	lw	t7,0(t5)
    1d30:	a8ef0202 	swl	t7,514(a3)
    1d34:	b8ef0205 	swr	t7,517(a3)
    1d38:	95af0004 	lhu	t7,4(t5)
    1d3c:	a4ef0206 	sh	t7,518(a3)
    1d40:	afa60018 	sw	a2,24(sp)
    1d44:	0c000000 	jal	0 <func_80A42D30>
    1d48:	afa5001c 	sw	a1,28(sp)
    1d4c:	8fa5001c 	lw	a1,28(sp)
    1d50:	8fa60018 	lw	a2,24(sp)
    1d54:	0c000000 	jal	0 <func_80A42D30>
    1d58:	8fa40034 	lw	a0,52(sp)
    1d5c:	8fbf0014 	lw	ra,20(sp)
    1d60:	27bd0030 	addiu	sp,sp,48
    1d64:	03e00008 	jr	ra
    1d68:	00000000 	nop

00001d6c <func_80A44A9C>:
    1d6c:	c4800158 	lwc1	$f0,344(a0)
    1d70:	c484015c 	lwc1	$f4,348(a0)
    1d74:	e480015c 	swc1	$f0,348(a0)
    1d78:	03e00008 	jr	ra
    1d7c:	e4840158 	swc1	$f4,344(a0)

00001d80 <func_80A44AB0>:
    1d80:	27bdffd0 	addiu	sp,sp,-48
    1d84:	afbf0024 	sw	ra,36(sp)
    1d88:	afb00020 	sw	s0,32(sp)
    1d8c:	afa50034 	sw	a1,52(sp)
    1d90:	848f001c 	lh	t7,28(a0)
    1d94:	24010002 	li	at,2
    1d98:	00808025 	move	s0,a0
    1d9c:	31f8001f 	andi	t8,t7,0x1f
    1da0:	17010003 	bne	t8,at,1db0 <func_80A44AB0+0x30>
    1da4:	8ca31c44 	lw	v1,7236(a1)
    1da8:	1000005e 	b	1f24 <func_80A44AB0+0x1a4>
    1dac:	00001025 	move	v0,zero
    1db0:	8e020190 	lw	v0,400(s0)
    1db4:	3c190000 	lui	t9,0x0
    1db8:	27390000 	addiu	t9,t9,0
    1dbc:	13220009 	beq	t9,v0,1de4 <func_80A44AB0+0x64>
    1dc0:	3c080000 	lui	t0,0x0
    1dc4:	25080000 	addiu	t0,t0,0
    1dc8:	11020006 	beq	t0,v0,1de4 <func_80A44AB0+0x64>
    1dcc:	3c090000 	lui	t1,0x0
    1dd0:	25290000 	addiu	t1,t1,0
    1dd4:	51220004 	beql	t1,v0,1de8 <func_80A44AB0+0x68>
    1dd8:	920a01cd 	lbu	t2,461(s0)
    1ddc:	10000051 	b	1f24 <func_80A44AB0+0x1a4>
    1de0:	00001025 	move	v0,zero
    1de4:	920a01cd 	lbu	t2,461(s0)
    1de8:	3c070000 	lui	a3,0x0
    1dec:	24e70000 	addiu	a3,a3,0
    1df0:	314b0002 	andi	t3,t2,0x2
    1df4:	11600016 	beqz	t3,1e50 <func_80A44AB0+0xd0>
    1df8:	24044802 	li	a0,18434
    1dfc:	3c0c0000 	lui	t4,0x0
    1e00:	258c0000 	addiu	t4,t4,0
    1e04:	3c050000 	lui	a1,0x0
    1e08:	24a50000 	addiu	a1,a1,0
    1e0c:	afac0014 	sw	t4,20(sp)
    1e10:	24060004 	li	a2,4
    1e14:	0c000000 	jal	0 <func_80A42D30>
    1e18:	afa70010 	sw	a3,16(sp)
    1e1c:	8e0d0004 	lw	t5,4(s0)
    1e20:	920f01cd 	lbu	t7,461(s0)
    1e24:	3c01feff 	lui	at,0xfeff
    1e28:	3421ffff 	ori	at,at,0xffff
    1e2c:	01a17024 	and	t6,t5,at
    1e30:	31f8fffd 	andi	t8,t7,0xfffd
    1e34:	ae0e0004 	sw	t6,4(s0)
    1e38:	a21801cd 	sb	t8,461(s0)
    1e3c:	8fa50034 	lw	a1,52(sp)
    1e40:	0c000000 	jal	0 <func_80A42D30>
    1e44:	02002025 	move	a0,s0
    1e48:	10000036 	b	1f24 <func_80A44AB0+0x1a4>
    1e4c:	24020001 	li	v0,1
    1e50:	80790a78 	lb	t9,2680(v1)
    1e54:	1f200007 	bgtz	t9,1e74 <func_80A44AB0+0xf4>
    1e58:	00000000 	nop
    1e5c:	920801ce 	lbu	t0,462(s0)
    1e60:	3c0c0000 	lui	t4,0x0
    1e64:	3c190001 	lui	t9,0x1
    1e68:	35090008 	ori	t1,t0,0x8
    1e6c:	10000003 	b	1e7c <func_80A44AB0+0xfc>
    1e70:	a20901ce 	sb	t1,462(s0)
    1e74:	1000002b 	b	1f24 <func_80A44AB0+0x1a4>
    1e78:	00001025 	move	v0,zero
    1e7c:	920201cf 	lbu	v0,463(s0)
    1e80:	304a0001 	andi	t2,v0,0x1
    1e84:	51400027 	beqzl	t2,1f24 <func_80A44AB0+0x1a4>
    1e88:	00001025 	move	v0,zero
    1e8c:	8e0d0190 	lw	t5,400(s0)
    1e90:	304bfffe 	andi	t3,v0,0xfffe
    1e94:	258c0000 	addiu	t4,t4,0
    1e98:	158d0005 	bne	t4,t5,1eb0 <func_80A44AB0+0x130>
    1e9c:	a20b01cf 	sb	t3,463(s0)
    1ea0:	3c013fc0 	lui	at,0x3fc0
    1ea4:	44810000 	mtc1	at,$f0
    1ea8:	10000007 	b	1ec8 <func_80A44AB0+0x148>
    1eac:	8fa40034 	lw	a0,52(sp)
    1eb0:	3c013fc0 	lui	at,0x3fc0
    1eb4:	44813000 	mtc1	at,$f6
    1eb8:	c6040068 	lwc1	$f4,104(s0)
    1ebc:	46062002 	mul.s	$f0,$f4,$f6
    1ec0:	00000000 	nop
    1ec4:	8fa40034 	lw	a0,52(sp)
    1ec8:	afa3002c 	sw	v1,44(sp)
    1ecc:	e7a00028 	swc1	$f0,40(sp)
    1ed0:	0324c821 	addu	t9,t9,a0
    1ed4:	8f391d58 	lw	t9,7512(t9)
    1ed8:	2405fffc 	li	a1,-4
    1edc:	0320f809 	jalr	t9
    1ee0:	00000000 	nop
    1ee4:	c7a00028 	lwc1	$f0,40(sp)
    1ee8:	3c0140c0 	lui	at,0x40c0
    1eec:	44814000 	mtc1	at,$f8
    1ef0:	8607008a 	lh	a3,138(s0)
    1ef4:	44060000 	mfc1	a2,$f0
    1ef8:	8fa40034 	lw	a0,52(sp)
    1efc:	02002825 	move	a1,s0
    1f00:	0c000000 	jal	0 <func_80A42D30>
    1f04:	e7a80010 	swc1	$f8,16(sp)
    1f08:	8fa4002c 	lw	a0,44(sp)
    1f0c:	0c000000 	jal	0 <func_80A42D30>
    1f10:	2405083e 	li	a1,2110
    1f14:	920f01ce 	lbu	t7,462(s0)
    1f18:	31f8fff7 	andi	t8,t7,0xfff7
    1f1c:	a21801ce 	sb	t8,462(s0)
    1f20:	00001025 	move	v0,zero
    1f24:	8fbf0024 	lw	ra,36(sp)
    1f28:	8fb00020 	lw	s0,32(sp)
    1f2c:	27bd0030 	addiu	sp,sp,48
    1f30:	03e00008 	jr	ra
    1f34:	00000000 	nop

00001f38 <func_80A44C68>:
    1f38:	afa50004 	sw	a1,4(sp)
    1f3c:	8c820208 	lw	v0,520(a0)
    1f40:	54400004 	bnezl	v0,1f54 <func_80A44C68+0x1c>
    1f44:	90430000 	lbu	v1,0(v0)
    1f48:	03e00008 	jr	ra
    1f4c:	00001025 	move	v0,zero
    1f50:	90430000 	lbu	v1,0(v0)
    1f54:	908e020e 	lbu	t6,526(a0)
    1f58:	24020001 	li	v0,1
    1f5c:	2463ffff 	addiu	v1,v1,-1
    1f60:	11c0000a 	beqz	t6,1f8c <func_80A44C68+0x54>
    1f64:	306300ff 	andi	v1,v1,0xff
    1f68:	808f0210 	lb	t7,528(a0)
    1f6c:	2468ffff 	addiu	t0,v1,-1
    1f70:	25f8ffff 	addiu	t8,t7,-1
    1f74:	a0980210 	sb	t8,528(a0)
    1f78:	80990210 	lb	t9,528(a0)
    1f7c:	0721000b 	bgez	t9,1fac <func_80A44C68+0x74>
    1f80:	00000000 	nop
    1f84:	10000009 	b	1fac <func_80A44C68+0x74>
    1f88:	a0880210 	sb	t0,528(a0)
    1f8c:	80890210 	lb	t1,528(a0)
    1f90:	252a0001 	addiu	t2,t1,1
    1f94:	a08a0210 	sb	t2,528(a0)
    1f98:	808b0210 	lb	t3,528(a0)
    1f9c:	0163082a 	slt	at,t3,v1
    1fa0:	14200002 	bnez	at,1fac <func_80A44C68+0x74>
    1fa4:	00000000 	nop
    1fa8:	a0800210 	sb	zero,528(a0)
    1fac:	03e00008 	jr	ra
    1fb0:	00000000 	nop

00001fb4 <func_80A44CE4>:
    1fb4:	27bdffd0 	addiu	sp,sp,-48
    1fb8:	afbf0024 	sw	ra,36(sp)
    1fbc:	afb00020 	sw	s0,32(sp)
    1fc0:	00808025 	move	s0,a0
    1fc4:	afa50034 	sw	a1,52(sp)
    1fc8:	82060210 	lb	a2,528(s0)
    1fcc:	8e050208 	lw	a1,520(s0)
    1fd0:	0c000000 	jal	0 <func_80A42D30>
    1fd4:	27a7002e 	addiu	a3,sp,46
    1fd8:	240e0001 	li	t6,1
    1fdc:	afae0010 	sw	t6,16(sp)
    1fe0:	26040032 	addiu	a0,s0,50
    1fe4:	87a5002e 	lh	a1,46(sp)
    1fe8:	24060006 	li	a2,6
    1fec:	24070fa0 	li	a3,4000
    1ff0:	0c000000 	jal	0 <func_80A42D30>
    1ff4:	e7a00028 	swc1	$f0,40(sp)
    1ff8:	c7a20028 	lwc1	$f2,40(sp)
    1ffc:	44802000 	mtc1	zero,$f4
    2000:	3c014461 	lui	at,0x4461
    2004:	00001025 	move	v0,zero
    2008:	4602203c 	c.lt.s	$f4,$f2
    200c:	00000000 	nop
    2010:	4500000b 	bc1f	2040 <func_80A44CE4+0x8c>
    2014:	00000000 	nop
    2018:	44813000 	mtc1	at,$f6
    201c:	02002025 	move	a0,s0
    2020:	4606103c 	c.lt.s	$f2,$f6
    2024:	00000000 	nop
    2028:	45000005 	bc1f	2040 <func_80A44CE4+0x8c>
    202c:	00000000 	nop
    2030:	0c000000 	jal	0 <func_80A42D30>
    2034:	8fa50034 	lw	a1,52(sp)
    2038:	10000002 	b	2044 <func_80A44CE4+0x90>
    203c:	8fbf0024 	lw	ra,36(sp)
    2040:	8fbf0024 	lw	ra,36(sp)
    2044:	8fb00020 	lw	s0,32(sp)
    2048:	27bd0030 	addiu	sp,sp,48
    204c:	03e00008 	jr	ra
    2050:	00000000 	nop

00002054 <func_80A44D84>:
    2054:	27bdffe0 	addiu	sp,sp,-32
    2058:	afbf0014 	sw	ra,20(sp)
    205c:	80860210 	lb	a2,528(a0)
    2060:	8c850208 	lw	a1,520(a0)
    2064:	afa40020 	sw	a0,32(sp)
    2068:	0c000000 	jal	0 <func_80A42D30>
    206c:	27a7001e 	addiu	a3,sp,30
    2070:	8fa40020 	lw	a0,32(sp)
    2074:	87ae001e 	lh	t6,30(sp)
    2078:	24020001 	li	v0,1
    207c:	a48e0032 	sh	t6,50(a0)
    2080:	8fbf0014 	lw	ra,20(sp)
    2084:	27bd0020 	addiu	sp,sp,32
    2088:	03e00008 	jr	ra
    208c:	00000000 	nop

00002090 <func_80A44DC0>:
    2090:	8482001c 	lh	v0,28(a0)
    2094:	24030002 	li	v1,2
    2098:	3c014348 	lui	at,0x4348
    209c:	3042001f 	andi	v0,v0,0x1f
    20a0:	54620006 	bnel	v1,v0,20bc <func_80A44DC0+0x2c>
    20a4:	44810000 	mtc1	at,$f0
    20a8:	3c014448 	lui	at,0x4448
    20ac:	44810000 	mtc1	at,$f0
    20b0:	10000003 	b	20c0 <func_80A44DC0+0x30>
    20b4:	00000000 	nop
    20b8:	44810000 	mtc1	at,$f0
    20bc:	00000000 	nop
    20c0:	14620005 	bne	v1,v0,20d8 <func_80A44DC0+0x48>
    20c4:	3c014270 	lui	at,0x4270
    20c8:	3c0143c8 	lui	at,0x43c8
    20cc:	44811000 	mtc1	at,$f2
    20d0:	10000003 	b	20e0 <func_80A44DC0+0x50>
    20d4:	00000000 	nop
    20d8:	44811000 	mtc1	at,$f2
    20dc:	00000000 	nop
    20e0:	54620011 	bnel	v1,v0,2128 <func_80A44DC0+0x98>
    20e4:	848a008a 	lh	t2,138(a0)
    20e8:	908e01cf 	lbu	t6,463(a0)
    20ec:	31cf0001 	andi	t7,t6,0x1
    20f0:	55e00008 	bnezl	t7,2114 <func_80A44DC0+0x84>
    20f4:	8c880004 	lw	t0,4(a0)
    20f8:	8c980004 	lw	t8,4(a0)
    20fc:	2401fffe 	li	at,-2
    2100:	00001025 	move	v0,zero
    2104:	0301c824 	and	t9,t8,at
    2108:	03e00008 	jr	ra
    210c:	ac990004 	sw	t9,4(a0)
    2110:	8c880004 	lw	t0,4(a0)
    2114:	24020001 	li	v0,1
    2118:	35090001 	ori	t1,t0,0x1
    211c:	03e00008 	jr	ra
    2120:	ac890004 	sw	t1,4(a0)
    2124:	848a008a 	lh	t2,138(a0)
    2128:	848b00b6 	lh	t3,182(a0)
    212c:	46000002 	mul.s	$f0,$f0,$f0
    2130:	448a2000 	mtc1	t2,$f4
    2134:	448b4000 	mtc1	t3,$f8
    2138:	468021a0 	cvt.s.w	$f6,$f4
    213c:	468042a0 	cvt.s.w	$f10,$f8
    2140:	460a3401 	sub.s	$f16,$f6,$f10
    2144:	4600848d 	trunc.w.s	$f18,$f16
    2148:	44029000 	mfc1	v0,$f18
    214c:	00000000 	nop
    2150:	00021400 	sll	v0,v0,0x10
    2154:	00021403 	sra	v0,v0,0x10
    2158:	04400004 	bltz	v0,216c <func_80A44DC0+0xdc>
    215c:	00021823 	negu	v1,v0
    2160:	00021c00 	sll	v1,v0,0x10
    2164:	10000003 	b	2174 <func_80A44DC0+0xe4>
    2168:	00031c03 	sra	v1,v1,0x10
    216c:	00031c00 	sll	v1,v1,0x10
    2170:	00031c03 	sra	v1,v1,0x10
    2174:	c484008c 	lwc1	$f4,140(a0)
    2178:	00001025 	move	v0,zero
    217c:	4600203e 	c.le.s	$f4,$f0
    2180:	00000000 	nop
    2184:	4500000c 	bc1f	21b8 <func_80A44DC0+0x128>
    2188:	00000000 	nop
    218c:	c4800094 	lwc1	$f0,148(a0)
    2190:	28612aa8 	slti	at,v1,10920
    2194:	46000005 	abs.s	$f0,$f0
    2198:	4602003c 	c.lt.s	$f0,$f2
    219c:	00000000 	nop
    21a0:	45000005 	bc1f	21b8 <func_80A44DC0+0x128>
    21a4:	00000000 	nop
    21a8:	10200003 	beqz	at,21b8 <func_80A44DC0+0x128>
    21ac:	00000000 	nop
    21b0:	03e00008 	jr	ra
    21b4:	24020001 	li	v0,1
    21b8:	03e00008 	jr	ra
    21bc:	00000000 	nop

000021c0 <func_80A44EF0>:
    21c0:	27bdffe8 	addiu	sp,sp,-24
    21c4:	afbf0014 	sw	ra,20(sp)
    21c8:	afa40018 	sw	a0,24(sp)
    21cc:	afa5001c 	sw	a1,28(sp)
    21d0:	afa60020 	sw	a2,32(sp)
    21d4:	afa70024 	sw	a3,36(sp)
    21d8:	948e0088 	lhu	t6,136(a0)
    21dc:	00073c00 	sll	a3,a3,0x10
    21e0:	00073c03 	sra	a3,a3,0x10
    21e4:	31cf0001 	andi	t7,t6,0x1
    21e8:	11e00007 	beqz	t7,2208 <func_80A44EF0+0x48>
    21ec:	00803025 	move	a2,a0
    21f0:	44802000 	mtc1	zero,$f4
    21f4:	c4860060 	lwc1	$f6,96(a0)
    21f8:	4606203c 	c.lt.s	$f4,$f6
    21fc:	00000000 	nop
    2200:	45020004 	bc1fl	2214 <func_80A44EF0+0x54>
    2204:	84c20590 	lh	v0,1424(a2)
    2208:	1000004f 	b	2348 <func_80A44EF0+0x188>
    220c:	00001025 	move	v0,zero
    2210:	84c20590 	lh	v0,1424(a2)
    2214:	14400003 	bnez	v0,2224 <func_80A44EF0+0x64>
    2218:	2458ffff 	addiu	t8,v0,-1
    221c:	10000004 	b	2230 <func_80A44EF0+0x70>
    2220:	00001825 	move	v1,zero
    2224:	a4d80590 	sh	t8,1424(a2)
    2228:	84c20590 	lh	v0,1424(a2)
    222c:	00401825 	move	v1,v0
    2230:	50600017 	beqzl	v1,2290 <func_80A44EF0+0xd0>
    2234:	84c3059c 	lh	v1,1436(a2)
    2238:	14e00003 	bnez	a3,2248 <func_80A44EF0+0x88>
    223c:	30590001 	andi	t9,v0,0x1
    2240:	10000041 	b	2348 <func_80A44EF0+0x188>
    2244:	24020001 	li	v0,1
    2248:	13200007 	beqz	t9,2268 <func_80A44EF0+0xa8>
    224c:	00c02025 	move	a0,a2
    2250:	3c013fc0 	lui	at,0x3fc0
    2254:	44815000 	mtc1	at,$f10
    2258:	c4c80028 	lwc1	$f8,40(a2)
    225c:	460a4400 	add.s	$f16,$f8,$f10
    2260:	10000006 	b	227c <func_80A44EF0+0xbc>
    2264:	e4d00028 	swc1	$f16,40(a2)
    2268:	3c013fc0 	lui	at,0x3fc0
    226c:	44812000 	mtc1	at,$f4
    2270:	c4d20028 	lwc1	$f18,40(a2)
    2274:	46049181 	sub.s	$f6,$f18,$f4
    2278:	e4c60028 	swc1	$f6,40(a2)
    227c:	0c000000 	jal	0 <func_80A42D30>
    2280:	240520b8 	li	a1,8376
    2284:	10000030 	b	2348 <func_80A44EF0+0x188>
    2288:	24020001 	li	v0,1
    228c:	84c3059c 	lh	v1,1436(a2)
    2290:	00c02025 	move	a0,a2
    2294:	28610002 	slti	at,v1,2
    2298:	5420000e 	bnezl	at,22d4 <func_80A44EF0+0x114>
    229c:	246affff 	addiu	t2,v1,-1
    22a0:	84c8001c 	lh	t0,28(a2)
    22a4:	2403387b 	li	v1,14459
    22a8:	3109001f 	andi	t1,t0,0x1f
    22ac:	15200003 	bnez	t1,22bc <func_80A44EF0+0xfc>
    22b0:	00000000 	nop
    22b4:	10000001 	b	22bc <func_80A44EF0+0xfc>
    22b8:	24033879 	li	v1,14457
    22bc:	3065ffff 	andi	a1,v1,0xffff
    22c0:	0c000000 	jal	0 <func_80A42D30>
    22c4:	afa60018 	sw	a2,24(sp)
    22c8:	8fa60018 	lw	a2,24(sp)
    22cc:	84c3059c 	lh	v1,1436(a2)
    22d0:	246affff 	addiu	t2,v1,-1
    22d4:	a4ca059c 	sh	t2,1436(a2)
    22d8:	84c3059c 	lh	v1,1436(a2)
    22dc:	5c600011 	bgtzl	v1,2324 <func_80A44EF0+0x164>
    22e0:	87ac001e 	lh	t4,30(sp)
    22e4:	1460000c 	bnez	v1,2318 <func_80A44EF0+0x158>
    22e8:	87ab001e 	lh	t3,30(sp)
    22ec:	2404003c 	li	a0,60
    22f0:	2405001e 	li	a1,30
    22f4:	0c000000 	jal	0 <func_80A42D30>
    22f8:	afa60018 	sw	a2,24(sp)
    22fc:	8fa60018 	lw	a2,24(sp)
    2300:	44804000 	mtc1	zero,$f8
    2304:	a4c20590 	sh	v0,1424(a2)
    2308:	24020001 	li	v0,1
    230c:	a4c0059c 	sh	zero,1436(a2)
    2310:	1000000d 	b	2348 <func_80A44EF0+0x188>
    2314:	e4c80060 	swc1	$f8,96(a2)
    2318:	a4cb059c 	sh	t3,1436(a2)
    231c:	84c3059c 	lh	v1,1436(a2)
    2320:	87ac001e 	lh	t4,30(sp)
    2324:	44835000 	mtc1	v1,$f10
    2328:	c7a80020 	lwc1	$f8,32(sp)
    232c:	448c9000 	mtc1	t4,$f18
    2330:	46805420 	cvt.s.w	$f16,$f10
    2334:	24020001 	li	v0,1
    2338:	46809120 	cvt.s.w	$f4,$f18
    233c:	46048183 	div.s	$f6,$f16,$f4
    2340:	46083282 	mul.s	$f10,$f6,$f8
    2344:	e4ca0060 	swc1	$f10,96(a2)
    2348:	8fbf0014 	lw	ra,20(sp)
    234c:	27bd0018 	addiu	sp,sp,24
    2350:	03e00008 	jr	ra
    2354:	00000000 	nop

00002358 <func_80A45088>:
    2358:	27bdffe8 	addiu	sp,sp,-24
    235c:	afbf0014 	sw	ra,20(sp)
    2360:	afa60020 	sw	a2,32(sp)
    2364:	848e001c 	lh	t6,28(a0)
    2368:	24010002 	li	at,2
    236c:	00803825 	move	a3,a0
    2370:	31cf001f 	andi	t7,t6,0x1f
    2374:	15e10074 	bne	t7,at,2548 <func_80A45088+0x1f0>
    2378:	3c030000 	lui	v1,0x0
    237c:	24630000 	addiu	v1,v1,0
    2380:	9062003e 	lbu	v0,62(v1)
    2384:	00a02025 	move	a0,a1
    2388:	1040000f 	beqz	v0,23c8 <func_80A45088+0x70>
    238c:	00000000 	nop
    2390:	0c000000 	jal	0 <func_80A42D30>
    2394:	afa70018 	sw	a3,24(sp)
    2398:	2401000f 	li	at,15
    239c:	14410004 	bne	v0,at,23b0 <func_80A45088+0x58>
    23a0:	8fa70018 	lw	a3,24(sp)
    23a4:	24183003 	li	t8,12291
    23a8:	10000003 	b	23b8 <func_80A45088+0x60>
    23ac:	a4f8010e 	sh	t8,270(a3)
    23b0:	2419305e 	li	t9,12382
    23b4:	a4f9010e 	sh	t9,270(a3)
    23b8:	94e8010e 	lhu	t0,270(a3)
    23bc:	8fa90020 	lw	t1,32(sp)
    23c0:	10000061 	b	2548 <func_80A45088+0x1f0>
    23c4:	a528010e 	sh	t0,270(t1)
    23c8:	14400024 	bnez	v0,245c <func_80A45088+0x104>
    23cc:	3c0a0000 	lui	t2,0x0
    23d0:	914a002d 	lbu	t2,45(t2)
    23d4:	24010037 	li	at,55
    23d8:	00a02025 	move	a0,a1
    23dc:	006a5821 	addu	t3,v1,t2
    23e0:	916c0074 	lbu	t4,116(t3)
    23e4:	1581001d 	bne	t4,at,245c <func_80A45088+0x104>
    23e8:	00000000 	nop
    23ec:	0c000000 	jal	0 <func_80A42D30>
    23f0:	afa70018 	sw	a3,24(sp)
    23f4:	2401000f 	li	at,15
    23f8:	1441000b 	bne	v0,at,2428 <func_80A45088+0xd0>
    23fc:	8fa70018 	lw	a3,24(sp)
    2400:	0c000000 	jal	0 <func_80A42D30>
    2404:	afa70018 	sw	a3,24(sp)
    2408:	28410003 	slti	at,v0,3
    240c:	14200003 	bnez	at,241c <func_80A45088+0xc4>
    2410:	8fa70018 	lw	a3,24(sp)
    2414:	10000002 	b	2420 <func_80A45088+0xc8>
    2418:	2402305e 	li	v0,12382
    241c:	2402305d 	li	v0,12381
    2420:	1000000a 	b	244c <func_80A45088+0xf4>
    2424:	a4e2010e 	sh	v0,270(a3)
    2428:	0c000000 	jal	0 <func_80A42D30>
    242c:	afa70018 	sw	a3,24(sp)
    2430:	28410003 	slti	at,v0,3
    2434:	14200003 	bnez	at,2444 <func_80A45088+0xec>
    2438:	8fa70018 	lw	a3,24(sp)
    243c:	10000002 	b	2448 <func_80A45088+0xf0>
    2440:	24023002 	li	v0,12290
    2444:	2402305d 	li	v0,12381
    2448:	a4e2010e 	sh	v0,270(a3)
    244c:	94ed010e 	lhu	t5,270(a3)
    2450:	8fae0020 	lw	t6,32(sp)
    2454:	1000003c 	b	2548 <func_80A45088+0x1f0>
    2458:	a5cd010e 	sh	t5,270(t6)
    245c:	3c0f0000 	lui	t7,0x0
    2460:	91ef002d 	lbu	t7,45(t7)
    2464:	006fc021 	addu	t8,v1,t7
    2468:	93020074 	lbu	v0,116(t8)
    246c:	28410034 	slti	at,v0,52
    2470:	14200018 	bnez	at,24d4 <func_80A45088+0x17c>
    2474:	28410038 	slti	at,v0,56
    2478:	10200016 	beqz	at,24d4 <func_80A45088+0x17c>
    247c:	00a02025 	move	a0,a1
    2480:	0c000000 	jal	0 <func_80A42D30>
    2484:	afa70018 	sw	a3,24(sp)
    2488:	3c030000 	lui	v1,0x0
    248c:	2401000e 	li	at,14
    2490:	24630000 	addiu	v1,v1,0
    2494:	14410004 	bne	v0,at,24a8 <func_80A45088+0x150>
    2498:	8fa70018 	lw	a3,24(sp)
    249c:	24193059 	li	t9,12377
    24a0:	10000003 	b	24b0 <func_80A45088+0x158>
    24a4:	a4f9010e 	sh	t9,270(a3)
    24a8:	24083058 	li	t0,12376
    24ac:	a4e8010e 	sh	t0,270(a3)
    24b0:	94e2010e 	lhu	v0,270(a3)
    24b4:	24013059 	li	at,12377
    24b8:	54410004 	bnel	v0,at,24cc <func_80A45088+0x174>
    24bc:	8fa90020 	lw	t1,32(sp)
    24c0:	a46013d2 	sh	zero,5074(v1)
    24c4:	94e2010e 	lhu	v0,270(a3)
    24c8:	8fa90020 	lw	t1,32(sp)
    24cc:	1000001e 	b	2548 <func_80A45088+0x1f0>
    24d0:	a522010e 	sh	v0,270(t1)
    24d4:	28410034 	slti	at,v0,52
    24d8:	10200018 	beqz	at,253c <func_80A45088+0x1e4>
    24dc:	24183053 	li	t8,12371
    24e0:	00a02025 	move	a0,a1
    24e4:	0c000000 	jal	0 <func_80A42D30>
    24e8:	afa70018 	sw	a3,24(sp)
    24ec:	3c030000 	lui	v1,0x0
    24f0:	2401000b 	li	at,11
    24f4:	24630000 	addiu	v1,v1,0
    24f8:	1441000a 	bne	v0,at,2524 <func_80A45088+0x1cc>
    24fc:	8fa70018 	lw	a3,24(sp)
    2500:	946a0f0e 	lhu	t2,3854(v1)
    2504:	24023054 	li	v0,12372
    2508:	314b0010 	andi	t3,t2,0x10
    250c:	11600003 	beqz	t3,251c <func_80A45088+0x1c4>
    2510:	00000000 	nop
    2514:	10000001 	b	251c <func_80A45088+0x1c4>
    2518:	24023055 	li	v0,12373
    251c:	10000003 	b	252c <func_80A45088+0x1d4>
    2520:	a4e2010e 	sh	v0,270(a3)
    2524:	240c3053 	li	t4,12371
    2528:	a4ec010e 	sh	t4,270(a3)
    252c:	94ed010e 	lhu	t5,270(a3)
    2530:	8fae0020 	lw	t6,32(sp)
    2534:	10000004 	b	2548 <func_80A45088+0x1f0>
    2538:	a5cd010e 	sh	t5,270(t6)
    253c:	a4f8010e 	sh	t8,270(a3)
    2540:	8fb90020 	lw	t9,32(sp)
    2544:	a738010e 	sh	t8,270(t9)
    2548:	8fbf0014 	lw	ra,20(sp)
    254c:	27bd0018 	addiu	sp,sp,24
    2550:	03e00008 	jr	ra
    2554:	00000000 	nop

00002558 <func_80A45288>:
    2558:	27bdffe0 	addiu	sp,sp,-32
    255c:	afbf0014 	sw	ra,20(sp)
    2560:	afa50024 	sw	a1,36(sp)
    2564:	8caf1c44 	lw	t7,7236(a1)
    2568:	3c180000 	lui	t8,0x0
    256c:	27180000 	addiu	t8,t8,0
    2570:	afaf001c 	sw	t7,28(sp)
    2574:	8c820190 	lw	v0,400(a0)
    2578:	13020019 	beq	t8,v0,25e0 <func_80A45288+0x88>
    257c:	00000000 	nop
    2580:	8de80024 	lw	t0,36(t7)
    2584:	8489001c 	lh	t1,28(a0)
    2588:	3c020000 	lui	v0,0x0
    258c:	ac8801ac 	sw	t0,428(a0)
    2590:	8df90028 	lw	t9,40(t7)
    2594:	312a001f 	andi	t2,t1,0x1f
    2598:	000a58c0 	sll	t3,t2,0x3
    259c:	ac9901b0 	sw	t9,432(a0)
    25a0:	8de8002c 	lw	t0,44(t7)
    25a4:	3c010000 	lui	at,0x0
    25a8:	8487026e 	lh	a3,622(a0)
    25ac:	ac8801b4 	sw	t0,436(a0)
    25b0:	8c420004 	lw	v0,4(v0)
    25b4:	24850194 	addiu	a1,a0,404
    25b8:	24060004 	li	a2,4
    25bc:	00026080 	sll	t4,v0,0x2
    25c0:	016c6821 	addu	t5,t3,t4
    25c4:	002d0821 	addu	at,at,t5
    25c8:	c4240000 	lwc1	$f4,0(at)
    25cc:	e48401a8 	swc1	$f4,424(a0)
    25d0:	0c000000 	jal	0 <func_80A42D30>
    25d4:	afa40020 	sw	a0,32(sp)
    25d8:	8fa40020 	lw	a0,32(sp)
    25dc:	8c820190 	lw	v0,400(a0)
    25e0:	3c0e0000 	lui	t6,0x0
    25e4:	25ce0000 	addiu	t6,t6,0
    25e8:	51c2000e 	beql	t6,v0,2624 <func_80A45288+0xcc>
    25ec:	8fbf0014 	lw	ra,20(sp)
    25f0:	9098020f 	lbu	t8,527(a0)
    25f4:	24010001 	li	at,1
    25f8:	8fa50024 	lw	a1,36(sp)
    25fc:	57010009 	bnel	t8,at,2624 <func_80A45288+0xcc>
    2600:	8fbf0014 	lw	ra,20(sp)
    2604:	0c000000 	jal	0 <func_80A42D30>
    2608:	afa40020 	sw	a0,32(sp)
    260c:	10400004 	beqz	v0,2620 <func_80A45288+0xc8>
    2610:	8fa40020 	lw	a0,32(sp)
    2614:	8fa50024 	lw	a1,36(sp)
    2618:	0c000000 	jal	0 <func_80A42D30>
    261c:	8fa6001c 	lw	a2,28(sp)
    2620:	8fbf0014 	lw	ra,20(sp)
    2624:	27bd0020 	addiu	sp,sp,32
    2628:	03e00008 	jr	ra
    262c:	00000000 	nop

00002630 <func_80A45360>:
    2630:	27bdffe8 	addiu	sp,sp,-24
    2634:	afbf0014 	sw	ra,20(sp)
    2638:	afa40018 	sw	a0,24(sp)
    263c:	afa5001c 	sw	a1,28(sp)
    2640:	8c980154 	lw	t8,340(a0)
    2644:	3c0e0600 	lui	t6,0x600
    2648:	25ce4930 	addiu	t6,t6,18736
    264c:	15d8000b 	bne	t6,t8,267c <func_80A45360+0x4c>
    2650:	3c063ecc 	lui	a2,0x3ecc
    2654:	3c014200 	lui	at,0x4200
    2658:	44812000 	mtc1	at,$f4
    265c:	c4860164 	lwc1	$f6,356(a0)
    2660:	4604303e 	c.le.s	$f6,$f4
    2664:	00000000 	nop
    2668:	45020005 	bc1fl	2680 <func_80A45360+0x50>
    266c:	3c01437f 	lui	at,0x437f
    2670:	44800000 	mtc1	zero,$f0
    2674:	10000005 	b	268c <func_80A45360+0x5c>
    2678:	44050000 	mfc1	a1,$f0
    267c:	3c01437f 	lui	at,0x437f
    2680:	44810000 	mtc1	at,$f0
    2684:	00000000 	nop
    2688:	44050000 	mfc1	a1,$f0
    268c:	8fa4001c 	lw	a0,28(sp)
    2690:	34c6cccd 	ori	a2,a2,0xcccd
    2694:	0c000000 	jal	0 <func_80A42D30>
    2698:	3c0742c8 	lui	a3,0x42c8
    269c:	8fb9001c 	lw	t9,28(sp)
    26a0:	4448f800 	cfc1	t0,$31
    26a4:	24090001 	li	t1,1
    26a8:	44c9f800 	ctc1	t1,$31
    26ac:	c7280000 	lwc1	$f8,0(t9)
    26b0:	8faa0018 	lw	t2,24(sp)
    26b4:	3c014f00 	lui	at,0x4f00
    26b8:	460042a4 	cvt.w.s	$f10,$f8
    26bc:	4449f800 	cfc1	t1,$31
    26c0:	00000000 	nop
    26c4:	31290078 	andi	t1,t1,0x78
    26c8:	51200013 	beqzl	t1,2718 <func_80A45360+0xe8>
    26cc:	44095000 	mfc1	t1,$f10
    26d0:	44815000 	mtc1	at,$f10
    26d4:	24090001 	li	t1,1
    26d8:	460a4281 	sub.s	$f10,$f8,$f10
    26dc:	44c9f800 	ctc1	t1,$31
    26e0:	00000000 	nop
    26e4:	460052a4 	cvt.w.s	$f10,$f10
    26e8:	4449f800 	cfc1	t1,$31
    26ec:	00000000 	nop
    26f0:	31290078 	andi	t1,t1,0x78
    26f4:	15200005 	bnez	t1,270c <func_80A45360+0xdc>
    26f8:	00000000 	nop
    26fc:	44095000 	mfc1	t1,$f10
    2700:	3c018000 	lui	at,0x8000
    2704:	10000007 	b	2724 <func_80A45360+0xf4>
    2708:	01214825 	or	t1,t1,at
    270c:	10000005 	b	2724 <func_80A45360+0xf4>
    2710:	2409ffff 	li	t1,-1
    2714:	44095000 	mfc1	t1,$f10
    2718:	00000000 	nop
    271c:	0520fffb 	bltz	t1,270c <func_80A45360+0xdc>
    2720:	00000000 	nop
    2724:	a14900c8 	sb	t1,200(t2)
    2728:	8fbf0014 	lw	ra,20(sp)
    272c:	44c8f800 	ctc1	t0,$31
    2730:	27bd0018 	addiu	sp,sp,24
    2734:	03e00008 	jr	ra
    2738:	00000000 	nop

0000273c <func_80A4546C>:
    273c:	27bdffe0 	addiu	sp,sp,-32
    2740:	afbf0014 	sw	ra,20(sp)
    2744:	848e0194 	lh	t6,404(a0)
    2748:	c4800068 	lwc1	$f0,104(a0)
    274c:	51c00005 	beqzl	t6,2764 <func_80A4546C+0x28>
    2750:	8c980190 	lw	t8,400(a0)
    2754:	44802000 	mtc1	zero,$f4
    2758:	00000000 	nop
    275c:	e4840068 	swc1	$f4,104(a0)
    2760:	8c980190 	lw	t8,400(a0)
    2764:	3c0f0000 	lui	t7,0x0
    2768:	25ef0000 	addiu	t7,t7,0
    276c:	51f80007 	beql	t7,t8,278c <func_80A4546C+0x50>
    2770:	e4800068 	swc1	$f0,104(a0)
    2774:	afa40020 	sw	a0,32(sp)
    2778:	0c000000 	jal	0 <func_80A42D30>
    277c:	e7a0001c 	swc1	$f0,28(sp)
    2780:	8fa40020 	lw	a0,32(sp)
    2784:	c7a0001c 	lwc1	$f0,28(sp)
    2788:	e4800068 	swc1	$f0,104(a0)
    278c:	8fbf0014 	lw	ra,20(sp)
    2790:	27bd0020 	addiu	sp,sp,32
    2794:	03e00008 	jr	ra
    2798:	00000000 	nop

0000279c <func_80A454CC>:
    279c:	27bdffe8 	addiu	sp,sp,-24
    27a0:	afbf0014 	sw	ra,20(sp)
    27a4:	848e001c 	lh	t6,28(a0)
    27a8:	00803825 	move	a3,a0
    27ac:	31cf001f 	andi	t7,t6,0x1f
    27b0:	2de1000d 	sltiu	at,t7,13
    27b4:	1020001d 	beqz	at,282c <L80A4555C>
    27b8:	000f7880 	sll	t7,t7,0x2
    27bc:	3c010000 	lui	at,0x0
    27c0:	002f0821 	addu	at,at,t7
    27c4:	8c2f0000 	lw	t7,0(at)
    27c8:	01e00008 	jr	t7
    27cc:	00000000 	nop

000027d0 <L80A45500>:
    27d0:	3c050000 	lui	a1,0x0
    27d4:	24a50000 	addiu	a1,a1,0
    27d8:	24e4014c 	addiu	a0,a3,332
    27dc:	0c000000 	jal	0 <func_80A42D30>
    27e0:	24060009 	li	a2,9
    27e4:	10000015 	b	283c <L80A4555C+0x10>
    27e8:	8fbf0014 	lw	ra,20(sp)

000027ec <L80A4551C>:
    27ec:	3c180000 	lui	t8,0x0
    27f0:	9318002d 	lbu	t8,45(t8)
    27f4:	3c020000 	lui	v0,0x0
    27f8:	00581021 	addu	v0,v0,t8
    27fc:	90420074 	lbu	v0,116(v0)
    2800:	28410033 	slti	at,v0,51
    2804:	14200009 	bnez	at,282c <L80A4555C>
    2808:	28410037 	slti	at,v0,55
    280c:	10200007 	beqz	at,282c <L80A4555C>
    2810:	24e4014c 	addiu	a0,a3,332
    2814:	3c050000 	lui	a1,0x0
    2818:	24a50000 	addiu	a1,a1,0
    281c:	0c000000 	jal	0 <func_80A42D30>
    2820:	24060004 	li	a2,4
    2824:	10000005 	b	283c <L80A4555C+0x10>
    2828:	8fbf0014 	lw	ra,20(sp)

0000282c <L80A4555C>:
    282c:	44802000 	mtc1	zero,$f4
    2830:	00000000 	nop
    2834:	e4e40168 	swc1	$f4,360(a3)
    2838:	8fbf0014 	lw	ra,20(sp)
    283c:	27bd0018 	addiu	sp,sp,24
    2840:	03e00008 	jr	ra
    2844:	00000000 	nop

00002848 <func_80A45578>:
    2848:	8482001c 	lh	v0,28(a0)
    284c:	24010002 	li	at,2
    2850:	3042001f 	andi	v0,v0,0x1f
    2854:	14410004 	bne	v0,at,2868 <func_80A45578+0x20>
    2858:	3c0143c8 	lui	at,0x43c8
    285c:	44811000 	mtc1	at,$f2
    2860:	10000005 	b	2878 <func_80A45578+0x30>
    2864:	24010001 	li	at,1
    2868:	3c014270 	lui	at,0x4270
    286c:	44811000 	mtc1	at,$f2
    2870:	00000000 	nop
    2874:	24010001 	li	at,1
    2878:	14410012 	bne	v0,at,28c4 <func_80A45578+0x7c>
    287c:	00401825 	move	v1,v0
    2880:	c4800094 	lwc1	$f0,148(a0)
    2884:	3c0143c8 	lui	at,0x43c8
    2888:	46000005 	abs.s	$f0,$f0
    288c:	4602003c 	c.lt.s	$f0,$f2
    2890:	00000000 	nop
    2894:	4500000b 	bc1f	28c4 <func_80A45578+0x7c>
    2898:	00000000 	nop
    289c:	c4840090 	lwc1	$f4,144(a0)
    28a0:	44813000 	mtc1	at,$f6
    28a4:	3c014110 	lui	at,0x4110
    28a8:	4606203c 	c.lt.s	$f4,$f6
    28ac:	00000000 	nop
    28b0:	45000004 	bc1f	28c4 <func_80A45578+0x7c>
    28b4:	00000000 	nop
    28b8:	44810000 	mtc1	at,$f0
    28bc:	03e00008 	jr	ra
    28c0:	00000000 	nop
    28c4:	14600004 	bnez	v1,28d8 <func_80A45578+0x90>
    28c8:	3c0140c0 	lui	at,0x40c0
    28cc:	3c010000 	lui	at,0x0
    28d0:	10000003 	b	28e0 <func_80A45578+0x98>
    28d4:	c4220000 	lwc1	$f2,0(at)
    28d8:	44811000 	mtc1	at,$f2
    28dc:	00000000 	nop
    28e0:	46001006 	mov.s	$f0,$f2
    28e4:	03e00008 	jr	ra
    28e8:	00000000 	nop

000028ec <func_80A4561C>:
    28ec:	27bdffe0 	addiu	sp,sp,-32
    28f0:	afbf0014 	sw	ra,20(sp)
    28f4:	afa40020 	sw	a0,32(sp)
    28f8:	8cae0790 	lw	t6,1936(a1)
    28fc:	24010002 	li	at,2
    2900:	afae001c 	sw	t6,28(sp)
    2904:	8498001c 	lh	t8,28(a0)
    2908:	3319001f 	andi	t9,t8,0x1f
    290c:	5721001a 	bnel	t9,at,2978 <func_80A4561C+0x8c>
    2910:	8fa90020 	lw	t1,32(sp)
    2914:	0c000000 	jal	0 <func_80A42D30>
    2918:	00000000 	nop
    291c:	10400008 	beqz	v0,2940 <func_80A4561C+0x54>
    2920:	8fa4001c 	lw	a0,28(sp)
    2924:	0c000000 	jal	0 <func_80A42D30>
    2928:	2405003f 	li	a1,63
    292c:	8fa4001c 	lw	a0,28(sp)
    2930:	0c000000 	jal	0 <func_80A42D30>
    2934:	24050004 	li	a1,4
    2938:	1000000f 	b	2978 <func_80A4561C+0x8c>
    293c:	8fa90020 	lw	t1,32(sp)
    2940:	0c000000 	jal	0 <func_80A42D30>
    2944:	8fa40020 	lw	a0,32(sp)
    2948:	1440000a 	bnez	v0,2974 <func_80A4561C+0x88>
    294c:	8fa4001c 	lw	a0,28(sp)
    2950:	84880142 	lh	t0,322(a0)
    2954:	2401003f 	li	at,63
    2958:	55010007 	bnel	t0,at,2978 <func_80A4561C+0x8c>
    295c:	8fa90020 	lw	t1,32(sp)
    2960:	0c000000 	jal	0 <func_80A42D30>
    2964:	24050004 	li	a1,4
    2968:	8fa4001c 	lw	a0,28(sp)
    296c:	0c000000 	jal	0 <func_80A42D30>
    2970:	24050004 	li	a1,4
    2974:	8fa90020 	lw	t1,32(sp)
    2978:	24010003 	li	at,3
    297c:	8fbf0014 	lw	ra,20(sp)
    2980:	8522001c 	lh	v0,28(t1)
    2984:	3042001f 	andi	v0,v0,0x1f
    2988:	10410009 	beq	v0,at,29b0 <func_80A4561C+0xc4>
    298c:	00000000 	nop
    2990:	10400007 	beqz	v0,29b0 <func_80A4561C+0xc4>
    2994:	2401000a 	li	at,10
    2998:	10410005 	beq	v0,at,29b0 <func_80A4561C+0xc4>
    299c:	24010002 	li	at,2
    29a0:	10410003 	beq	v0,at,29b0 <func_80A4561C+0xc4>
    29a4:	2401000d 	li	at,13
    29a8:	14410003 	bne	v0,at,29b8 <func_80A4561C+0xcc>
    29ac:	3c030000 	lui	v1,0x0
    29b0:	10000012 	b	29fc <func_80A4561C+0x110>
    29b4:	24020001 	li	v0,1
    29b8:	24630000 	addiu	v1,v1,0
    29bc:	3c020000 	lui	v0,0x0
    29c0:	8c420004 	lw	v0,4(v0)
    29c4:	8c6a00a4 	lw	t2,164(v1)
    29c8:	3c0c0000 	lui	t4,0x0
    29cc:	004a5824 	and	t3,v0,t2
    29d0:	5560000a 	bnezl	t3,29fc <func_80A4561C+0x110>
    29d4:	00001025 	move	v0,zero
    29d8:	918c0002 	lbu	t4,2(t4)
    29dc:	946e009c 	lhu	t6,156(v1)
    29e0:	01826804 	sllv	t5,v0,t4
    29e4:	01aec024 	and	t8,t5,t6
    29e8:	53000004 	beqzl	t8,29fc <func_80A4561C+0x110>
    29ec:	00001025 	move	v0,zero
    29f0:	10000002 	b	29fc <func_80A4561C+0x110>
    29f4:	24020001 	li	v0,1
    29f8:	00001025 	move	v0,zero
    29fc:	03e00008 	jr	ra
    2a00:	27bd0020 	addiu	sp,sp,32

00002a04 <func_80A45734>:
    2a04:	27bdffe8 	addiu	sp,sp,-24
    2a08:	afbf0014 	sw	ra,20(sp)
    2a0c:	0c000000 	jal	0 <func_80A42D30>
    2a10:	afa40018 	sw	a0,24(sp)
    2a14:	10400004 	beqz	v0,2a28 <func_80A45734+0x24>
    2a18:	8fa40018 	lw	a0,24(sp)
    2a1c:	240e0002 	li	t6,2
    2a20:	10000003 	b	2a30 <func_80A45734+0x2c>
    2a24:	a48e026e 	sh	t6,622(a0)
    2a28:	240f0001 	li	t7,1
    2a2c:	a48f026e 	sh	t7,622(a0)
    2a30:	84980194 	lh	t8,404(a0)
    2a34:	24190004 	li	t9,4
    2a38:	24080001 	li	t0,1
    2a3c:	53000003 	beqzl	t8,2a4c <func_80A45734+0x48>
    2a40:	a088020f 	sb	t0,527(a0)
    2a44:	a499026e 	sh	t9,622(a0)
    2a48:	a088020f 	sb	t0,527(a0)
    2a4c:	8fbf0014 	lw	ra,20(sp)
    2a50:	27bd0018 	addiu	sp,sp,24
    2a54:	03e00008 	jr	ra
    2a58:	00000000 	nop

00002a5c <func_80A4578C>:
    2a5c:	848e001c 	lh	t6,28(a0)
    2a60:	24010002 	li	at,2
    2a64:	24080004 	li	t0,4
    2a68:	31cf001f 	andi	t7,t6,0x1f
    2a6c:	15e10005 	bne	t7,at,2a84 <func_80A4578C+0x28>
    2a70:	24090001 	li	t1,1
    2a74:	3c014448 	lui	at,0x4448
    2a78:	44810000 	mtc1	at,$f0
    2a7c:	10000004 	b	2a90 <func_80A4578C+0x34>
    2a80:	00000000 	nop
    2a84:	3c014348 	lui	at,0x4348
    2a88:	44810000 	mtc1	at,$f0
    2a8c:	00000000 	nop
    2a90:	46000002 	mul.s	$f0,$f0,$f0
    2a94:	c484008c 	lwc1	$f4,140(a0)
    2a98:	24180001 	li	t8,1
    2a9c:	a498026e 	sh	t8,622(a0)
    2aa0:	4600203e 	c.le.s	$f4,$f0
    2aa4:	00000000 	nop
    2aa8:	45030005 	bc1tl	2ac0 <func_80A4578C+0x64>
    2aac:	a488026e 	sh	t0,622(a0)
    2ab0:	84990194 	lh	t9,404(a0)
    2ab4:	13200002 	beqz	t9,2ac0 <func_80A4578C+0x64>
    2ab8:	00000000 	nop
    2abc:	a488026e 	sh	t0,622(a0)
    2ac0:	03e00008 	jr	ra
    2ac4:	a089020f 	sb	t1,527(a0)

00002ac8 <func_80A457F8>:
    2ac8:	27bdffe8 	addiu	sp,sp,-24
    2acc:	afbf0014 	sw	ra,20(sp)
    2ad0:	0c000000 	jal	0 <func_80A42D30>
    2ad4:	afa40018 	sw	a0,24(sp)
    2ad8:	14400004 	bnez	v0,2aec <func_80A457F8+0x24>
    2adc:	8fa40018 	lw	a0,24(sp)
    2ae0:	848e0194 	lh	t6,404(a0)
    2ae4:	24190001 	li	t9,1
    2ae8:	11c00005 	beqz	t6,2b00 <func_80A457F8+0x38>
    2aec:	240f0002 	li	t7,2
    2af0:	24180001 	li	t8,1
    2af4:	a48f026e 	sh	t7,622(a0)
    2af8:	10000003 	b	2b08 <func_80A457F8+0x40>
    2afc:	a098020f 	sb	t8,527(a0)
    2b00:	a499026e 	sh	t9,622(a0)
    2b04:	a080020f 	sb	zero,527(a0)
    2b08:	8fbf0014 	lw	ra,20(sp)
    2b0c:	27bd0018 	addiu	sp,sp,24
    2b10:	03e00008 	jr	ra
    2b14:	00000000 	nop

00002b18 <func_80A45848>:
    2b18:	27bdffe8 	addiu	sp,sp,-24
    2b1c:	afbf0014 	sw	ra,20(sp)
    2b20:	8482001c 	lh	v0,28(a0)
    2b24:	24010001 	li	at,1
    2b28:	3c030000 	lui	v1,0x0
    2b2c:	3042001f 	andi	v0,v0,0x1f
    2b30:	1041001b 	beq	v0,at,2ba0 <func_80A45848+0x88>
    2b34:	24630000 	addiu	v1,v1,0
    2b38:	24010002 	li	at,2
    2b3c:	10410014 	beq	v0,at,2b90 <func_80A45848+0x78>
    2b40:	24010003 	li	at,3
    2b44:	1041000e 	beq	v0,at,2b80 <func_80A45848+0x68>
    2b48:	24010004 	li	at,4
    2b4c:	14410025 	bne	v0,at,2be4 <func_80A45848+0xcc>
    2b50:	240e0001 	li	t6,1
    2b54:	a08e020f 	sb	t6,527(a0)
    2b58:	0c000000 	jal	0 <func_80A42D30>
    2b5c:	afa40018 	sw	a0,24(sp)
    2b60:	10400004 	beqz	v0,2b74 <func_80A45848+0x5c>
    2b64:	8fa40018 	lw	a0,24(sp)
    2b68:	240f0002 	li	t7,2
    2b6c:	1000001f 	b	2bec <func_80A45848+0xd4>
    2b70:	a48f026e 	sh	t7,622(a0)
    2b74:	24180001 	li	t8,1
    2b78:	1000001c 	b	2bec <func_80A45848+0xd4>
    2b7c:	a498026e 	sh	t8,622(a0)
    2b80:	0c000000 	jal	0 <func_80A42D30>
    2b84:	00000000 	nop
    2b88:	10000019 	b	2bf0 <func_80A45848+0xd8>
    2b8c:	8fbf0014 	lw	ra,20(sp)
    2b90:	0c000000 	jal	0 <func_80A42D30>
    2b94:	00000000 	nop
    2b98:	10000015 	b	2bf0 <func_80A45848+0xd8>
    2b9c:	8fbf0014 	lw	ra,20(sp)
    2ba0:	3c020000 	lui	v0,0x0
    2ba4:	8c420004 	lw	v0,4(v0)
    2ba8:	8c7900a4 	lw	t9,164(v1)
    2bac:	3c090000 	lui	t1,0x0
    2bb0:	00594024 	and	t0,v0,t9
    2bb4:	1500000b 	bnez	t0,2be4 <func_80A45848+0xcc>
    2bb8:	00000000 	nop
    2bbc:	91290002 	lbu	t1,2(t1)
    2bc0:	946b009c 	lhu	t3,156(v1)
    2bc4:	01225004 	sllv	t2,v0,t1
    2bc8:	014b6024 	and	t4,t2,t3
    2bcc:	11800005 	beqz	t4,2be4 <func_80A45848+0xcc>
    2bd0:	00000000 	nop
    2bd4:	0c000000 	jal	0 <func_80A42D30>
    2bd8:	00000000 	nop
    2bdc:	10000004 	b	2bf0 <func_80A45848+0xd8>
    2be0:	8fbf0014 	lw	ra,20(sp)
    2be4:	0c000000 	jal	0 <func_80A42D30>
    2be8:	00000000 	nop
    2bec:	8fbf0014 	lw	ra,20(sp)
    2bf0:	27bd0018 	addiu	sp,sp,24
    2bf4:	03e00008 	jr	ra
    2bf8:	00000000 	nop

00002bfc <func_80A4592C>:
    2bfc:	27bdffe8 	addiu	sp,sp,-24
    2c00:	afbf0014 	sw	ra,20(sp)
    2c04:	90820213 	lbu	v0,531(a0)
    2c08:	24010001 	li	at,1
    2c0c:	00803025 	move	a2,a0
    2c10:	10410008 	beq	v0,at,2c34 <func_80A4592C+0x38>
    2c14:	24010002 	li	at,2
    2c18:	1041000a 	beq	v0,at,2c44 <func_80A4592C+0x48>
    2c1c:	240e0001 	li	t6,1
    2c20:	24010003 	li	at,3
    2c24:	1041000b 	beq	v0,at,2c54 <func_80A4592C+0x58>
    2c28:	240f0001 	li	t7,1
    2c2c:	1000000e 	b	2c68 <func_80A4592C+0x6c>
    2c30:	84c30224 	lh	v1,548(a2)
    2c34:	a4c00224 	sh	zero,548(a2)
    2c38:	a0c00214 	sb	zero,532(a2)
    2c3c:	10000020 	b	2cc0 <func_80A4592C+0xc4>
    2c40:	a0c00215 	sb	zero,533(a2)
    2c44:	a4c00224 	sh	zero,548(a2)
    2c48:	a0ce0214 	sb	t6,532(a2)
    2c4c:	1000001c 	b	2cc0 <func_80A4592C+0xc4>
    2c50:	a0c00215 	sb	zero,533(a2)
    2c54:	a4c00224 	sh	zero,548(a2)
    2c58:	a0c00214 	sb	zero,532(a2)
    2c5c:	10000018 	b	2cc0 <func_80A4592C+0xc4>
    2c60:	a0cf0215 	sb	t7,533(a2)
    2c64:	84c30224 	lh	v1,548(a2)
    2c68:	14600003 	bnez	v1,2c78 <func_80A4592C+0x7c>
    2c6c:	2478ffff 	addiu	t8,v1,-1
    2c70:	10000003 	b	2c80 <func_80A4592C+0x84>
    2c74:	00001025 	move	v0,zero
    2c78:	a4d80224 	sh	t8,548(a2)
    2c7c:	84c20224 	lh	v0,548(a2)
    2c80:	54400010 	bnezl	v0,2cc4 <func_80A4592C+0xc8>
    2c84:	8fbf0014 	lw	ra,20(sp)
    2c88:	90d90214 	lbu	t9,532(a2)
    2c8c:	2404001e 	li	a0,30
    2c90:	2405001e 	li	a1,30
    2c94:	27280001 	addiu	t0,t9,1
    2c98:	310900ff 	andi	t1,t0,0xff
    2c9c:	29210004 	slti	at,t1,4
    2ca0:	14200007 	bnez	at,2cc0 <func_80A4592C+0xc4>
    2ca4:	a0c80214 	sb	t0,532(a2)
    2ca8:	0c000000 	jal	0 <func_80A42D30>
    2cac:	afa60018 	sw	a2,24(sp)
    2cb0:	8fa60018 	lw	a2,24(sp)
    2cb4:	240a0001 	li	t2,1
    2cb8:	a4c20224 	sh	v0,548(a2)
    2cbc:	a0ca0214 	sb	t2,532(a2)
    2cc0:	8fbf0014 	lw	ra,20(sp)
    2cc4:	27bd0018 	addiu	sp,sp,24
    2cc8:	03e00008 	jr	ra
    2ccc:	00000000 	nop

00002cd0 <func_80A45A00>:
    2cd0:	27bdffe0 	addiu	sp,sp,-32
    2cd4:	afbf001c 	sw	ra,28(sp)
    2cd8:	afb00018 	sw	s0,24(sp)
    2cdc:	44801000 	mtc1	zero,$f2
    2ce0:	c4800168 	lwc1	$f0,360(a0)
    2ce4:	00808025 	move	s0,a0
    2ce8:	46001032 	c.eq.s	$f2,$f0
    2cec:	00000000 	nop
    2cf0:	45030038 	bc1tl	2dd4 <func_80A45A00+0x104>
    2cf4:	8fbf001c 	lw	ra,28(sp)
    2cf8:	8c8f0154 	lw	t7,340(a0)
    2cfc:	3c0e0600 	lui	t6,0x600
    2d00:	25ce4930 	addiu	t6,t6,18736
    2d04:	55cf0033 	bnel	t6,t7,2dd4 <func_80A45A00+0x104>
    2d08:	8fbf001c 	lw	ra,28(sp)
    2d0c:	4600103c 	c.lt.s	$f2,$f0
    2d10:	3c014160 	lui	at,0x4160
    2d14:	45020018 	bc1fl	2d78 <func_80A45A00+0xa8>
    2d18:	4602003c 	c.lt.s	$f0,$f2
    2d1c:	44812000 	mtc1	at,$f4
    2d20:	c4860164 	lwc1	$f6,356(a0)
    2d24:	46062032 	c.eq.s	$f4,$f6
    2d28:	00000000 	nop
    2d2c:	45020012 	bc1fl	2d78 <func_80A45A00+0xa8>
    2d30:	4602003c 	c.lt.s	$f0,$f2
    2d34:	8498001c 	lh	t8,28(a0)
    2d38:	24010002 	li	at,2
    2d3c:	240538fd 	li	a1,14589
    2d40:	3319001f 	andi	t9,t8,0x1f
    2d44:	13210006 	beq	t9,at,2d60 <func_80A45A00+0x90>
    2d48:	2406003c 	li	a2,60
    2d4c:	0c000000 	jal	0 <func_80A42D30>
    2d50:	240538fd 	li	a1,14589
    2d54:	44801000 	mtc1	zero,$f2
    2d58:	10000006 	b	2d74 <func_80A45A00+0xa4>
    2d5c:	c6000168 	lwc1	$f0,360(s0)
    2d60:	3c040000 	lui	a0,0x0
    2d64:	0c000000 	jal	0 <func_80A42D30>
    2d68:	24840000 	addiu	a0,a0,0
    2d6c:	44801000 	mtc1	zero,$f2
    2d70:	c6000168 	lwc1	$f0,360(s0)
    2d74:	4602003c 	c.lt.s	$f0,$f2
    2d78:	3c013f80 	lui	at,0x3f80
    2d7c:	45020015 	bc1fl	2dd4 <func_80A45A00+0x104>
    2d80:	8fbf001c 	lw	ra,28(sp)
    2d84:	c6000164 	lwc1	$f0,356(s0)
    2d88:	44814000 	mtc1	at,$f8
    2d8c:	02002025 	move	a0,s0
    2d90:	46004032 	c.eq.s	$f8,$f0
    2d94:	00000000 	nop
    2d98:	45020005 	bc1fl	2db0 <func_80A45A00+0xe0>
    2d9c:	3c014220 	lui	at,0x4220
    2da0:	0c000000 	jal	0 <func_80A42D30>
    2da4:	2405387b 	li	a1,14459
    2da8:	c6000164 	lwc1	$f0,356(s0)
    2dac:	3c014220 	lui	at,0x4220
    2db0:	44815000 	mtc1	at,$f10
    2db4:	02002025 	move	a0,s0
    2db8:	46005032 	c.eq.s	$f10,$f0
    2dbc:	00000000 	nop
    2dc0:	45020004 	bc1fl	2dd4 <func_80A45A00+0x104>
    2dc4:	8fbf001c 	lw	ra,28(sp)
    2dc8:	0c000000 	jal	0 <func_80A42D30>
    2dcc:	240538fd 	li	a1,14589
    2dd0:	8fbf001c 	lw	ra,28(sp)
    2dd4:	8fb00018 	lw	s0,24(sp)
    2dd8:	27bd0020 	addiu	sp,sp,32
    2ddc:	03e00008 	jr	ra
    2de0:	00000000 	nop

00002de4 <func_80A45B14>:
    2de4:	27bdffd8 	addiu	sp,sp,-40
    2de8:	afbf0024 	sw	ra,36(sp)
    2dec:	afa5002c 	sw	a1,44(sp)
    2df0:	848e001c 	lh	t6,28(a0)
    2df4:	8fb9002c 	lw	t9,44(sp)
    2df8:	3c0a0000 	lui	t2,0x0
    2dfc:	31cf001f 	andi	t7,t6,0x1f
    2e00:	15e00003 	bnez	t7,2e10 <func_80A45B14+0x2c>
    2e04:	00194080 	sll	t0,t9,0x2
    2e08:	10000002 	b	2e14 <func_80A45B14+0x30>
    2e0c:	24030001 	li	v1,1
    2e10:	00001825 	move	v1,zero
    2e14:	0003c080 	sll	t8,v1,0x2
    2e18:	0303c023 	subu	t8,t8,v1
    2e1c:	01194023 	subu	t0,t0,t9
    2e20:	000840c0 	sll	t0,t0,0x3
    2e24:	0018c140 	sll	t8,t8,0x5
    2e28:	03084821 	addu	t1,t8,t0
    2e2c:	254a0000 	addiu	t2,t2,0
    2e30:	012a1021 	addu	v0,t1,t2
    2e34:	8c4b000c 	lw	t3,12(v0)
    2e38:	c4440010 	lwc1	$f4,16(v0)
    2e3c:	c4460014 	lwc1	$f6,20(v0)
    2e40:	90450000 	lbu	a1,0(v0)
    2e44:	8c460004 	lw	a2,4(v0)
    2e48:	8c470008 	lw	a3,8(v0)
    2e4c:	afab0010 	sw	t3,16(sp)
    2e50:	e7a40014 	swc1	$f4,20(sp)
    2e54:	0c000000 	jal	0 <func_80A42D30>
    2e58:	e7a60018 	swc1	$f6,24(sp)
    2e5c:	8fbf0024 	lw	ra,36(sp)
    2e60:	27bd0028 	addiu	sp,sp,40
    2e64:	03e00008 	jr	ra
    2e68:	00000000 	nop

00002e6c <func_80A45B9C>:
    2e6c:	27bdffe0 	addiu	sp,sp,-32
    2e70:	afbf001c 	sw	ra,28(sp)
    2e74:	afb00018 	sw	s0,24(sp)
    2e78:	afa50024 	sw	a1,36(sp)
    2e7c:	848e001c 	lh	t6,28(a0)
    2e80:	24010002 	li	at,2
    2e84:	00808025 	move	s0,a0
    2e88:	31cf001f 	andi	t7,t6,0x1f
    2e8c:	15e1000e 	bne	t7,at,2ec8 <func_80A45B9C+0x5c>
    2e90:	3c050000 	lui	a1,0x0
    2e94:	8c980004 	lw	t8,4(a0)
    2e98:	2401fffe 	li	at,-2
    2e9c:	3c050000 	lui	a1,0x0
    2ea0:	0301c824 	and	t9,t8,at
    2ea4:	ac990004 	sw	t9,4(a0)
    2ea8:	24a50000 	addiu	a1,a1,0
    2eac:	2484014c 	addiu	a0,a0,332
    2eb0:	0c000000 	jal	0 <func_80A42D30>
    2eb4:	2406000a 	li	a2,10
    2eb8:	3c01bf00 	lui	at,0xbf00
    2ebc:	44812000 	mtc1	at,$f4
    2ec0:	10000009 	b	2ee8 <func_80A45B9C+0x7c>
    2ec4:	e6040168 	swc1	$f4,360(s0)
    2ec8:	2604014c 	addiu	a0,s0,332
    2ecc:	24a50000 	addiu	a1,a1,0
    2ed0:	0c000000 	jal	0 <func_80A42D30>
    2ed4:	24060001 	li	a2,1
    2ed8:	3c01bf80 	lui	at,0xbf80
    2edc:	44813000 	mtc1	at,$f6
    2ee0:	00000000 	nop
    2ee4:	e6060168 	swc1	$f6,360(s0)
    2ee8:	0c000000 	jal	0 <func_80A42D30>
    2eec:	02002025 	move	a0,s0
    2ef0:	3c090000 	lui	t1,0x0
    2ef4:	24080001 	li	t0,1
    2ef8:	25290000 	addiu	t1,t1,0
    2efc:	a608026e 	sh	t0,622(s0)
    2f00:	a2000211 	sb	zero,529(s0)
    2f04:	a200020f 	sb	zero,527(s0)
    2f08:	ae090190 	sw	t1,400(s0)
    2f0c:	8fbf001c 	lw	ra,28(sp)
    2f10:	8fb00018 	lw	s0,24(sp)
    2f14:	27bd0020 	addiu	sp,sp,32
    2f18:	03e00008 	jr	ra
    2f1c:	00000000 	nop

00002f20 <func_80A45C50>:
    2f20:	27bdffd8 	addiu	sp,sp,-40
    2f24:	afbf0024 	sw	ra,36(sp)
    2f28:	afb00020 	sw	s0,32(sp)
    2f2c:	afa5002c 	sw	a1,44(sp)
    2f30:	c4860168 	lwc1	$f6,360(a0)
    2f34:	44802000 	mtc1	zero,$f4
    2f38:	00808025 	move	s0,a0
    2f3c:	46062032 	c.eq.s	$f4,$f6
    2f40:	00000000 	nop
    2f44:	4502000f 	bc1fl	2f84 <func_80A45C50+0x64>
    2f48:	8618001c 	lh	t8,28(s0)
    2f4c:	848e001c 	lh	t6,28(a0)
    2f50:	24010002 	li	at,2
    2f54:	240538fc 	li	a1,14588
    2f58:	31cf001f 	andi	t7,t6,0x1f
    2f5c:	11e10005 	beq	t7,at,2f74 <func_80A45C50+0x54>
    2f60:	2406003c 	li	a2,60
    2f64:	0c000000 	jal	0 <func_80A42D30>
    2f68:	240538fc 	li	a1,14588
    2f6c:	10000005 	b	2f84 <func_80A45C50+0x64>
    2f70:	8618001c 	lh	t8,28(s0)
    2f74:	3c040000 	lui	a0,0x0
    2f78:	0c000000 	jal	0 <func_80A42D30>
    2f7c:	24840000 	addiu	a0,a0,0
    2f80:	8618001c 	lh	t8,28(s0)
    2f84:	24010002 	li	at,2
    2f88:	2604014c 	addiu	a0,s0,332
    2f8c:	3319001f 	andi	t9,t8,0x1f
    2f90:	17210010 	bne	t9,at,2fd4 <func_80A45C50+0xb4>
    2f94:	3c050000 	lui	a1,0x0
    2f98:	8fa4002c 	lw	a0,44(sp)
    2f9c:	24051068 	li	a1,4200
    2fa0:	2406ff9d 	li	a2,-99
    2fa4:	02003825 	move	a3,s0
    2fa8:	0c000000 	jal	0 <func_80A42D30>
    2fac:	afa00010 	sw	zero,16(sp)
    2fb0:	3c050000 	lui	a1,0x0
    2fb4:	24a50000 	addiu	a1,a1,0
    2fb8:	2604014c 	addiu	a0,s0,332
    2fbc:	0c000000 	jal	0 <func_80A42D30>
    2fc0:	2406000a 	li	a2,10
    2fc4:	3c013f00 	lui	at,0x3f00
    2fc8:	44814000 	mtc1	at,$f8
    2fcc:	10000008 	b	2ff0 <func_80A45C50+0xd0>
    2fd0:	e6080168 	swc1	$f8,360(s0)
    2fd4:	24a50000 	addiu	a1,a1,0
    2fd8:	0c000000 	jal	0 <func_80A42D30>
    2fdc:	24060001 	li	a2,1
    2fe0:	3c013f80 	lui	at,0x3f80
    2fe4:	44815000 	mtc1	at,$f10
    2fe8:	00000000 	nop
    2fec:	e60a0168 	swc1	$f10,360(s0)
    2ff0:	3c080000 	lui	t0,0x0
    2ff4:	25080000 	addiu	t0,t0,0
    2ff8:	ae080190 	sw	t0,400(s0)
    2ffc:	8fbf0024 	lw	ra,36(sp)
    3000:	8fb00020 	lw	s0,32(sp)
    3004:	27bd0028 	addiu	sp,sp,40
    3008:	03e00008 	jr	ra
    300c:	00000000 	nop

00003010 <func_80A45D40>:
    3010:	27bdffe8 	addiu	sp,sp,-24
    3014:	afa5001c 	sw	a1,28(sp)
    3018:	afbf0014 	sw	ra,20(sp)
    301c:	00803825 	move	a3,a0
    3020:	3c050000 	lui	a1,0x0
    3024:	24a50000 	addiu	a1,a1,0
    3028:	afa70018 	sw	a3,24(sp)
    302c:	2484014c 	addiu	a0,a0,332
    3030:	0c000000 	jal	0 <func_80A42D30>
    3034:	24060001 	li	a2,1
    3038:	8fa70018 	lw	a3,24(sp)
    303c:	44800000 	mtc1	zero,$f0
    3040:	3c0f0000 	lui	t7,0x0
    3044:	c4e4015c 	lwc1	$f4,348(a3)
    3048:	240e0001 	li	t6,1
    304c:	25ef0000 	addiu	t7,t7,0
    3050:	a0ee0211 	sb	t6,529(a3)
    3054:	acef0190 	sw	t7,400(a3)
    3058:	e4e00168 	swc1	$f0,360(a3)
    305c:	e4e00068 	swc1	$f0,104(a3)
    3060:	e4e40164 	swc1	$f4,356(a3)
    3064:	8fbf0014 	lw	ra,20(sp)
    3068:	27bd0018 	addiu	sp,sp,24
    306c:	03e00008 	jr	ra
    3070:	00000000 	nop

00003074 <func_80A45DA4>:
    3074:	afa50004 	sw	a1,4(sp)
    3078:	8482001c 	lh	v0,28(a0)
    307c:	3c0a0000 	lui	t2,0x0
    3080:	2409000a 	li	t1,10
    3084:	3042001f 	andi	v0,v0,0x1f
    3088:	10400003 	beqz	v0,3098 <func_80A45DA4+0x24>
    308c:	254a0000 	addiu	t2,t2,0
    3090:	24010001 	li	at,1
    3094:	1441000f 	bne	v0,at,30d4 <func_80A45DA4+0x60>
    3098:	240e0001 	li	t6,1
    309c:	a08e01ea 	sb	t6,490(a0)
    30a0:	3c0f0000 	lui	t7,0x0
    30a4:	95ef0f1a 	lhu	t7,3866(t7)
    30a8:	3c010000 	lui	at,0x0
    30ac:	31f84000 	andi	t8,t7,0x4000
    30b0:	13000005 	beqz	t8,30c8 <func_80A45DA4+0x54>
    30b4:	00000000 	nop
    30b8:	3c0140c0 	lui	at,0x40c0
    30bc:	44812000 	mtc1	at,$f4
    30c0:	10000008 	b	30e4 <func_80A45DA4+0x70>
    30c4:	e4840068 	swc1	$f4,104(a0)
    30c8:	c4260000 	lwc1	$f6,0(at)
    30cc:	10000005 	b	30e4 <func_80A45DA4+0x70>
    30d0:	e4860068 	swc1	$f6,104(a0)
    30d4:	3c0140c0 	lui	at,0x40c0
    30d8:	44814000 	mtc1	at,$f8
    30dc:	00000000 	nop
    30e0:	e4880068 	swc1	$f8,104(a0)
    30e4:	8c990004 	lw	t9,4(a0)
    30e8:	c4800068 	lwc1	$f0,104(a0)
    30ec:	3c010100 	lui	at,0x100
    30f0:	03214025 	or	t0,t9,at
    30f4:	46000400 	add.s	$f16,$f0,$f0
    30f8:	3c0144e1 	lui	at,0x44e1
    30fc:	44815000 	mtc1	at,$f10
    3100:	ac880004 	sw	t0,4(a0)
    3104:	a4890592 	sh	t1,1426(a0)
    3108:	e4900068 	swc1	$f16,104(a0)
    310c:	ac8a0190 	sw	t2,400(a0)
    3110:	03e00008 	jr	ra
    3114:	e48a00bc 	swc1	$f10,188(a0)

00003118 <func_80A45E48>:
    3118:	27bdffc8 	addiu	sp,sp,-56
    311c:	afbf0034 	sw	ra,52(sp)
    3120:	afb00030 	sw	s0,48(sp)
    3124:	8482001c 	lh	v0,28(a0)
    3128:	00808025 	move	s0,a0
    312c:	24010001 	li	at,1
    3130:	3042001f 	andi	v0,v0,0x1f
    3134:	50400015 	beqzl	v0,318c <func_80A45E48+0x74>
    3138:	a20001ea 	sb	zero,490(s0)
    313c:	10410012 	beq	v0,at,3188 <func_80A45E48+0x70>
    3140:	24010005 	li	at,5
    3144:	14410011 	bne	v0,at,318c <func_80A45E48+0x74>
    3148:	24a41c24 	addiu	a0,a1,7204
    314c:	c6040028 	lwc1	$f4,40(s0)
    3150:	8e070024 	lw	a3,36(s0)
    3154:	24060010 	li	a2,16
    3158:	e7a40010 	swc1	$f4,16(sp)
    315c:	c606002c 	lwc1	$f6,44(s0)
    3160:	afa00024 	sw	zero,36(sp)
    3164:	afa00020 	sw	zero,32(sp)
    3168:	afa0001c 	sw	zero,28(sp)
    316c:	afa00018 	sw	zero,24(sp)
    3170:	0c000000 	jal	0 <func_80A42D30>
    3174:	e7a60014 	swc1	$f6,20(sp)
    3178:	50400005 	beqzl	v0,3190 <func_80A45E48+0x78>
    317c:	8a0f0030 	lwl	t7,48(s0)
    3180:	10000002 	b	318c <func_80A45E48+0x74>
    3184:	a44001f8 	sh	zero,504(v0)
    3188:	a20001ea 	sb	zero,490(s0)
    318c:	8a0f0030 	lwl	t7,48(s0)
    3190:	9a0f0033 	lwr	t7,51(s0)
    3194:	44800000 	mtc1	zero,$f0
    3198:	3c180000 	lui	t8,0x0
    319c:	aa0f00b4 	swl	t7,180(s0)
    31a0:	ba0f00b7 	swr	t7,183(s0)
    31a4:	960f0034 	lhu	t7,52(s0)
    31a8:	27180000 	addiu	t8,t8,0
    31ac:	a600059c 	sh	zero,1436(s0)
    31b0:	a6000590 	sh	zero,1424(s0)
    31b4:	ae180190 	sw	t8,400(s0)
    31b8:	e60000bc 	swc1	$f0,188(s0)
    31bc:	e6000068 	swc1	$f0,104(s0)
    31c0:	a60f00b8 	sh	t7,184(s0)
    31c4:	8fbf0034 	lw	ra,52(sp)
    31c8:	8fb00030 	lw	s0,48(sp)
    31cc:	27bd0038 	addiu	sp,sp,56
    31d0:	03e00008 	jr	ra
    31d4:	00000000 	nop

000031d8 <func_80A45F08>:
    31d8:	27bdffe8 	addiu	sp,sp,-24
    31dc:	afbf0014 	sw	ra,20(sp)
    31e0:	8482001c 	lh	v0,28(a0)
    31e4:	24010003 	li	at,3
    31e8:	00803025 	move	a2,a0
    31ec:	304e001f 	andi	t6,v0,0x1f
    31f0:	11c10003 	beq	t6,at,3200 <func_80A45F08+0x28>
    31f4:	00a03825 	move	a3,a1
    31f8:	10000018 	b	325c <func_80A45F08+0x84>
    31fc:	00001025 	move	v0,zero
    3200:	8cef009c 	lw	t7,156(a3)
    3204:	3c01bf80 	lui	at,0xbf80
    3208:	31f80001 	andi	t8,t7,0x1
    320c:	53000006 	beqzl	t8,3228 <func_80A45F08+0x50>
    3210:	44810000 	mtc1	at,$f0
    3214:	3c013f80 	lui	at,0x3f80
    3218:	44810000 	mtc1	at,$f0
    321c:	10000004 	b	3230 <func_80A45F08+0x58>
    3220:	c4c40024 	lwc1	$f4,36(a2)
    3224:	44810000 	mtc1	at,$f0
    3228:	00000000 	nop
    322c:	c4c40024 	lwc1	$f4,36(a2)
    3230:	3045fc00 	andi	a1,v0,0xfc00
    3234:	00052a83 	sra	a1,a1,0xa
    3238:	46002180 	add.s	$f6,$f4,$f0
    323c:	00e02025 	move	a0,a3
    3240:	0c000000 	jal	0 <func_80A42D30>
    3244:	e4c60024 	swc1	$f6,36(a2)
    3248:	50400004 	beqzl	v0,325c <func_80A45F08+0x84>
    324c:	00001025 	move	v0,zero
    3250:	10000002 	b	325c <func_80A45F08+0x84>
    3254:	24020001 	li	v0,1
    3258:	00001025 	move	v0,zero
    325c:	8fbf0014 	lw	ra,20(sp)
    3260:	27bd0018 	addiu	sp,sp,24
    3264:	03e00008 	jr	ra
    3268:	00000000 	nop

0000326c <func_80A45F9C>:
    326c:	27bdffe8 	addiu	sp,sp,-24
    3270:	afbf0014 	sw	ra,20(sp)
    3274:	848e001c 	lh	t6,28(a0)
    3278:	24010004 	li	at,4
    327c:	00803825 	move	a3,a0
    3280:	31cf001f 	andi	t7,t6,0x1f
    3284:	15e10006 	bne	t7,at,32a0 <func_80A45F9C+0x34>
    3288:	00000000 	nop
    328c:	84980194 	lh	t8,404(a0)
    3290:	24010002 	li	at,2
    3294:	24e4014c 	addiu	a0,a3,332
    3298:	13010003 	beq	t8,at,32a8 <func_80A45F9C+0x3c>
    329c:	3c050000 	lui	a1,0x0
    32a0:	1000000e 	b	32dc <func_80A45F9C+0x70>
    32a4:	00001025 	move	v0,zero
    32a8:	24a50000 	addiu	a1,a1,0
    32ac:	24060003 	li	a2,3
    32b0:	0c000000 	jal	0 <func_80A42D30>
    32b4:	afa70018 	sw	a3,24(sp)
    32b8:	8fa70018 	lw	a3,24(sp)
    32bc:	3c080000 	lui	t0,0x0
    32c0:	24190001 	li	t9,1
    32c4:	25080000 	addiu	t0,t0,0
    32c8:	24020001 	li	v0,1
    32cc:	a4e00194 	sh	zero,404(a3)
    32d0:	a0e0020f 	sb	zero,527(a3)
    32d4:	a4f9026e 	sh	t9,622(a3)
    32d8:	ace80190 	sw	t0,400(a3)
    32dc:	8fbf0014 	lw	ra,20(sp)
    32e0:	27bd0018 	addiu	sp,sp,24
    32e4:	03e00008 	jr	ra
    32e8:	00000000 	nop

000032ec <func_80A4601C>:
    32ec:	27bdffe8 	addiu	sp,sp,-24
    32f0:	afbf0014 	sw	ra,20(sp)
    32f4:	848e001c 	lh	t6,28(a0)
    32f8:	31cf001f 	andi	t7,t6,0x1f
    32fc:	15e00005 	bnez	t7,3314 <func_80A4601C+0x28>
    3300:	00000000 	nop
    3304:	84980194 	lh	t8,404(a0)
    3308:	24010002 	li	at,2
    330c:	53010004 	beql	t8,at,3320 <func_80A4601C+0x34>
    3310:	a4800194 	sh	zero,404(a0)
    3314:	10000009 	b	333c <func_80A4601C+0x50>
    3318:	00001025 	move	v0,zero
    331c:	a4800194 	sh	zero,404(a0)
    3320:	0c000000 	jal	0 <func_80A42D30>
    3324:	afa40018 	sw	a0,24(sp)
    3328:	8fa40018 	lw	a0,24(sp)
    332c:	3c190000 	lui	t9,0x0
    3330:	27390000 	addiu	t9,t9,0
    3334:	24020001 	li	v0,1
    3338:	ac990190 	sw	t9,400(a0)
    333c:	8fbf0014 	lw	ra,20(sp)
    3340:	27bd0018 	addiu	sp,sp,24
    3344:	03e00008 	jr	ra
    3348:	00000000 	nop

0000334c <func_80A4607C>:
    334c:	848e001c 	lh	t6,28(a0)
    3350:	24010003 	li	at,3
    3354:	31cf001f 	andi	t7,t6,0x1f
    3358:	15e10006 	bne	t7,at,3374 <func_80A4607C+0x28>
    335c:	00000000 	nop
    3360:	84980194 	lh	t8,404(a0)
    3364:	3c190000 	lui	t9,0x0
    3368:	27390000 	addiu	t9,t9,0
    336c:	17000003 	bnez	t8,337c <func_80A4607C+0x30>
    3370:	24020001 	li	v0,1
    3374:	03e00008 	jr	ra
    3378:	00001025 	move	v0,zero
    337c:	ac990190 	sw	t9,400(a0)
    3380:	03e00008 	jr	ra
    3384:	00000000 	nop

00003388 <func_80A460B8>:
    3388:	27bdffe8 	addiu	sp,sp,-24
    338c:	afbf0014 	sw	ra,20(sp)
    3390:	848e001c 	lh	t6,28(a0)
    3394:	24010001 	li	at,1
    3398:	31cf001f 	andi	t7,t6,0x1f
    339c:	15e1000a 	bne	t7,at,33c8 <func_80A460B8+0x40>
    33a0:	00000000 	nop
    33a4:	80980210 	lb	t8,528(a0)
    33a8:	90990216 	lbu	t9,534(a0)
    33ac:	0319082a 	slt	at,t8,t9
    33b0:	10200005 	beqz	at,33c8 <func_80A460B8+0x40>
    33b4:	00000000 	nop
    33b8:	0c000000 	jal	0 <func_80A42D30>
    33bc:	00000000 	nop
    33c0:	54400004 	bnezl	v0,33d4 <func_80A460B8+0x4c>
    33c4:	24020001 	li	v0,1
    33c8:	10000002 	b	33d4 <func_80A460B8+0x4c>
    33cc:	00001025 	move	v0,zero
    33d0:	24020001 	li	v0,1
    33d4:	8fbf0014 	lw	ra,20(sp)
    33d8:	27bd0018 	addiu	sp,sp,24
    33dc:	03e00008 	jr	ra
    33e0:	00000000 	nop

000033e4 <func_80A46114>:
    33e4:	27bdffe8 	addiu	sp,sp,-24
    33e8:	afbf0014 	sw	ra,20(sp)
    33ec:	848e0194 	lh	t6,404(a0)
    33f0:	3c013f80 	lui	at,0x3f80
    33f4:	11c0000a 	beqz	t6,3420 <func_80A46114+0x3c>
    33f8:	00000000 	nop
    33fc:	c4840068 	lwc1	$f4,104(a0)
    3400:	44813000 	mtc1	at,$f6
    3404:	3c0640d5 	lui	a2,0x40d5
    3408:	34c65555 	ori	a2,a2,0x5555
    340c:	4606203c 	c.lt.s	$f4,$f6
    3410:	24050002 	li	a1,2
    3414:	00003825 	move	a3,zero
    3418:	45000003 	bc1f	3428 <func_80A46114+0x44>
    341c:	00000000 	nop
    3420:	10000011 	b	3468 <func_80A46114+0x84>
    3424:	00001025 	move	v0,zero
    3428:	0c000000 	jal	0 <func_80A42D30>
    342c:	afa40018 	sw	a0,24(sp)
    3430:	1040000c 	beqz	v0,3464 <func_80A46114+0x80>
    3434:	8fa40018 	lw	a0,24(sp)
    3438:	848f0590 	lh	t7,1424(a0)
    343c:	29e10009 	slti	at,t7,9
    3440:	14200006 	bnez	at,345c <func_80A46114+0x78>
    3444:	00000000 	nop
    3448:	8498059c 	lh	t8,1436(a0)
    344c:	24190008 	li	t9,8
    3450:	17000002 	bnez	t8,345c <func_80A46114+0x78>
    3454:	00000000 	nop
    3458:	a4990590 	sh	t9,1424(a0)
    345c:	0c000000 	jal	0 <func_80A42D30>
    3460:	00002825 	move	a1,zero
    3464:	24020001 	li	v0,1
    3468:	8fbf0014 	lw	ra,20(sp)
    346c:	27bd0018 	addiu	sp,sp,24
    3470:	03e00008 	jr	ra
    3474:	00000000 	nop

00003478 <func_80A461A8>:
    3478:	27bdffe0 	addiu	sp,sp,-32
    347c:	afbf0014 	sw	ra,20(sp)
    3480:	afa50024 	sw	a1,36(sp)
    3484:	848e001c 	lh	t6,28(a0)
    3488:	24010001 	li	at,1
    348c:	00803825 	move	a3,a0
    3490:	31cf001f 	andi	t7,t6,0x1f
    3494:	15e10040 	bne	t7,at,3598 <func_80A461A8+0x120>
    3498:	2406000d 	li	a2,13
    349c:	94e2010e 	lhu	v0,270(a3)
    34a0:	24043035 	li	a0,12341
    34a4:	3c0e0600 	lui	t6,0x600
    34a8:	14820003 	bne	a0,v0,34b8 <func_80A461A8+0x40>
    34ac:	25ce0750 	addiu	t6,t6,1872
    34b0:	90f8020c 	lbu	t8,524(a3)
    34b4:	13000006 	beqz	t8,34d0 <func_80A461A8+0x58>
    34b8:	24013036 	li	at,12342
    34bc:	5441000d 	bnel	v0,at,34f4 <func_80A461A8+0x7c>
    34c0:	24013032 	li	at,12338
    34c4:	90f9020c 	lbu	t9,524(a3)
    34c8:	5720000a 	bnezl	t9,34f4 <func_80A461A8+0x7c>
    34cc:	24013032 	li	at,12338
    34d0:	8ce90154 	lw	t1,340(a3)
    34d4:	3c080600 	lui	t0,0x600
    34d8:	25080d5c 	addiu	t0,t0,3420
    34dc:	51090005 	beql	t0,t1,34f4 <func_80A461A8+0x7c>
    34e0:	24013032 	li	at,12338
    34e4:	2406000c 	li	a2,12
    34e8:	a0e00213 	sb	zero,531(a3)
    34ec:	94e2010e 	lhu	v0,270(a3)
    34f0:	24013032 	li	at,12338
    34f4:	14410004 	bne	v0,at,3508 <func_80A461A8+0x90>
    34f8:	8ce30154 	lw	v1,340(a3)
    34fc:	90ea020c 	lbu	t2,524(a3)
    3500:	2401000c 	li	at,12
    3504:	11410008 	beq	t2,at,3528 <func_80A461A8+0xb0>
    3508:	24013033 	li	at,12339
    350c:	10410006 	beq	v0,at,3528 <func_80A461A8+0xb0>
    3510:	00000000 	nop
    3514:	1482000b 	bne	a0,v0,3544 <func_80A461A8+0xcc>
    3518:	00000000 	nop
    351c:	90eb020c 	lbu	t3,524(a3)
    3520:	24010006 	li	at,6
    3524:	15610007 	bne	t3,at,3544 <func_80A461A8+0xcc>
    3528:	3c0c0600 	lui	t4,0x600
    352c:	258c0750 	addiu	t4,t4,1872
    3530:	11830004 	beq	t4,v1,3544 <func_80A461A8+0xcc>
    3534:	240d0001 	li	t5,1
    3538:	2406000b 	li	a2,11
    353c:	a0ed0213 	sb	t5,531(a3)
    3540:	8ce30154 	lw	v1,340(a3)
    3544:	15c3000e 	bne	t6,v1,3580 <func_80A461A8+0x108>
    3548:	3c0141a0 	lui	at,0x41a0
    354c:	44812000 	mtc1	at,$f4
    3550:	c4e60164 	lwc1	$f6,356(a3)
    3554:	00e02025 	move	a0,a3
    3558:	240539eb 	li	a1,14827
    355c:	46062032 	c.eq.s	$f4,$f6
    3560:	00000000 	nop
    3564:	45020007 	bc1fl	3584 <func_80A461A8+0x10c>
    3568:	2401000d 	li	at,13
    356c:	afa6001c 	sw	a2,28(sp)
    3570:	0c000000 	jal	0 <func_80A42D30>
    3574:	afa70020 	sw	a3,32(sp)
    3578:	8fa6001c 	lw	a2,28(sp)
    357c:	8fa70020 	lw	a3,32(sp)
    3580:	2401000d 	li	at,13
    3584:	10c10004 	beq	a2,at,3598 <func_80A461A8+0x120>
    3588:	24e4014c 	addiu	a0,a3,332
    358c:	3c050000 	lui	a1,0x0
    3590:	0c000000 	jal	0 <func_80A42D30>
    3594:	24a50000 	addiu	a1,a1,0
    3598:	8fbf0014 	lw	ra,20(sp)
    359c:	27bd0020 	addiu	sp,sp,32
    35a0:	03e00008 	jr	ra
    35a4:	00000000 	nop

000035a8 <func_80A462D8>:
    35a8:	27bdffd8 	addiu	sp,sp,-40
    35ac:	afb00018 	sw	s0,24(sp)
    35b0:	00808025 	move	s0,a0
    35b4:	afbf001c 	sw	ra,28(sp)
    35b8:	afa5002c 	sw	a1,44(sp)
    35bc:	0c000000 	jal	0 <func_80A42D30>
    35c0:	00a02025 	move	a0,a1
    35c4:	a602059a 	sh	v0,1434(s0)
    35c8:	8fa4002c 	lw	a0,44(sp)
    35cc:	00002825 	move	a1,zero
    35d0:	0c000000 	jal	0 <func_80A42D30>
    35d4:	24060001 	li	a2,1
    35d8:	8fa4002c 	lw	a0,44(sp)
    35dc:	8605059a 	lh	a1,1434(s0)
    35e0:	0c000000 	jal	0 <func_80A42D30>
    35e4:	24060007 	li	a2,7
    35e8:	8e040208 	lw	a0,520(s0)
    35ec:	260504ac 	addiu	a1,s0,1196
    35f0:	0c000000 	jal	0 <func_80A42D30>
    35f4:	afa50020 	sw	a1,32(sp)
    35f8:	26040024 	addiu	a0,s0,36
    35fc:	0c000000 	jal	0 <func_80A42D30>
    3600:	8fa50020 	lw	a1,32(sp)
    3604:	24430e38 	addiu	v1,v0,3640
    3608:	00032400 	sll	a0,v1,0x10
    360c:	a7a30026 	sh	v1,38(sp)
    3610:	0c000000 	jal	0 <func_80A42D30>
    3614:	00042403 	sra	a0,a0,0x10
    3618:	3c0142c8 	lui	at,0x42c8
    361c:	44812000 	mtc1	at,$f4
    3620:	c6080024 	lwc1	$f8,36(s0)
    3624:	46040182 	mul.s	$f6,$f0,$f4
    3628:	46083280 	add.s	$f10,$f6,$f8
    362c:	e60a04a0 	swc1	$f10,1184(s0)
    3630:	0c000000 	jal	0 <func_80A42D30>
    3634:	87a40026 	lh	a0,38(sp)
    3638:	3c0142c8 	lui	at,0x42c8
    363c:	44818000 	mtc1	at,$f16
    3640:	3c0141a0 	lui	at,0x41a0
    3644:	44813000 	mtc1	at,$f6
    3648:	46100482 	mul.s	$f18,$f0,$f16
    364c:	c602002c 	lwc1	$f2,44(s0)
    3650:	c60c0028 	lwc1	$f12,40(s0)
    3654:	3c014220 	lui	at,0x4220
    3658:	44818000 	mtc1	at,$f16
    365c:	46066200 	add.s	$f8,$f12,$f6
    3660:	c60a0024 	lwc1	$f10,36(s0)
    3664:	e60204b4 	swc1	$f2,1204(s0)
    3668:	46029100 	add.s	$f4,$f18,$f2
    366c:	e60804a4 	swc1	$f8,1188(s0)
    3670:	e60a04ac 	swc1	$f10,1196(s0)
    3674:	46106480 	add.s	$f18,$f12,$f16
    3678:	e60404a8 	swc1	$f4,1192(s0)
    367c:	8605059a 	lh	a1,1434(s0)
    3680:	260704a0 	addiu	a3,s0,1184
    3684:	e61204b0 	swc1	$f18,1200(s0)
    3688:	8fa60020 	lw	a2,32(sp)
    368c:	0c000000 	jal	0 <func_80A42D30>
    3690:	8fa4002c 	lw	a0,44(sp)
    3694:	8fbf001c 	lw	ra,28(sp)
    3698:	8fb00018 	lw	s0,24(sp)
    369c:	27bd0028 	addiu	sp,sp,40
    36a0:	03e00008 	jr	ra
    36a4:	00000000 	nop

000036a8 <func_80A463D8>:
    36a8:	27bdffe8 	addiu	sp,sp,-24
    36ac:	afa40018 	sw	a0,24(sp)
    36b0:	afbf0014 	sw	ra,20(sp)
    36b4:	afa5001c 	sw	a1,28(sp)
    36b8:	00a02025 	move	a0,a1
    36bc:	00002825 	move	a1,zero
    36c0:	0c000000 	jal	0 <func_80A42D30>
    36c4:	24060007 	li	a2,7
    36c8:	8fae0018 	lw	t6,24(sp)
    36cc:	8fa4001c 	lw	a0,28(sp)
    36d0:	0c000000 	jal	0 <func_80A42D30>
    36d4:	85c5059a 	lh	a1,1434(t6)
    36d8:	8fbf0014 	lw	ra,20(sp)
    36dc:	27bd0018 	addiu	sp,sp,24
    36e0:	03e00008 	jr	ra
    36e4:	00000000 	nop

000036e8 <func_80A46418>:
    36e8:	3c0e0000 	lui	t6,0x0
    36ec:	91ce002d 	lbu	t6,45(t6)
    36f0:	3c020000 	lui	v0,0x0
    36f4:	27bdffe8 	addiu	sp,sp,-24
    36f8:	004e1021 	addu	v0,v0,t6
    36fc:	90420074 	lbu	v0,116(v0)
    3700:	afbf0014 	sw	ra,20(sp)
    3704:	00803825 	move	a3,a0
    3708:	28410033 	slti	at,v0,51
    370c:	1420001f 	bnez	at,378c <func_80A46418+0xa4>
    3710:	28410037 	slti	at,v0,55
    3714:	5020001e 	beqzl	at,3790 <func_80A46418+0xa8>
    3718:	8fbf0014 	lw	ra,20(sp)
    371c:	848f001c 	lh	t7,28(a0)
    3720:	24010002 	li	at,2
    3724:	31f8001f 	andi	t8,t7,0x1f
    3728:	57010019 	bnel	t8,at,3790 <func_80A46418+0xa8>
    372c:	8fbf0014 	lw	ra,20(sp)
    3730:	84990194 	lh	t9,404(a0)
    3734:	57200016 	bnezl	t9,3790 <func_80A46418+0xa8>
    3738:	8fbf0014 	lw	ra,20(sp)
    373c:	84820592 	lh	v0,1426(a0)
    3740:	2404001e 	li	a0,30
    3744:	2405001e 	li	a1,30
    3748:	14400003 	bnez	v0,3758 <func_80A46418+0x70>
    374c:	2448ffff 	addiu	t0,v0,-1
    3750:	10000003 	b	3760 <func_80A46418+0x78>
    3754:	00001825 	move	v1,zero
    3758:	a4e80592 	sh	t0,1426(a3)
    375c:	84e30592 	lh	v1,1426(a3)
    3760:	5460000b 	bnezl	v1,3790 <func_80A46418+0xa8>
    3764:	8fbf0014 	lw	ra,20(sp)
    3768:	0c000000 	jal	0 <func_80A42D30>
    376c:	afa70018 	sw	a3,24(sp)
    3770:	8fa70018 	lw	a3,24(sp)
    3774:	3c040000 	lui	a0,0x0
    3778:	24840000 	addiu	a0,a0,0
    377c:	2405391c 	li	a1,14620
    3780:	2406003c 	li	a2,60
    3784:	0c000000 	jal	0 <func_80A42D30>
    3788:	a4e20592 	sh	v0,1426(a3)
    378c:	8fbf0014 	lw	ra,20(sp)
    3790:	27bd0018 	addiu	sp,sp,24
    3794:	03e00008 	jr	ra
    3798:	00000000 	nop

0000379c <EnGo2_Init>:
    379c:	27bdffc0 	addiu	sp,sp,-64
    37a0:	afb00028 	sw	s0,40(sp)
    37a4:	00808025 	move	s0,a0
    37a8:	afbf002c 	sw	ra,44(sp)
    37ac:	afa50044 	sw	a1,68(sp)
    37b0:	3c060000 	lui	a2,0x0
    37b4:	24c60000 	addiu	a2,a2,0
    37b8:	24050000 	li	a1,0
    37bc:	248400b4 	addiu	a0,a0,180
    37c0:	0c000000 	jal	0 <func_80A42D30>
    37c4:	3c0741e0 	lui	a3,0x41e0
    37c8:	2605014c 	addiu	a1,s0,332
    37cc:	3c060601 	lui	a2,0x601
    37d0:	260e04b8 	addiu	t6,s0,1208
    37d4:	260f0524 	addiu	t7,s0,1316
    37d8:	24180012 	li	t8,18
    37dc:	afb80018 	sw	t8,24(sp)
    37e0:	afaf0014 	sw	t7,20(sp)
    37e4:	afae0010 	sw	t6,16(sp)
    37e8:	24c6fef0 	addiu	a2,a2,-272
    37ec:	afa50034 	sw	a1,52(sp)
    37f0:	8fa40044 	lw	a0,68(sp)
    37f4:	0c000000 	jal	0 <func_80A42D30>
    37f8:	00003825 	move	a3,zero
    37fc:	260501bc 	addiu	a1,s0,444
    3800:	afa50030 	sw	a1,48(sp)
    3804:	0c000000 	jal	0 <func_80A42D30>
    3808:	8fa40044 	lw	a0,68(sp)
    380c:	3c070000 	lui	a3,0x0
    3810:	8fa50030 	lw	a1,48(sp)
    3814:	24e70000 	addiu	a3,a3,0
    3818:	8fa40044 	lw	a0,68(sp)
    381c:	0c000000 	jal	0 <func_80A42D30>
    3820:	02003025 	move	a2,s0
    3824:	3c060000 	lui	a2,0x0
    3828:	24c60000 	addiu	a2,a2,0
    382c:	26040098 	addiu	a0,s0,152
    3830:	0c000000 	jal	0 <func_80A42D30>
    3834:	00002825 	move	a1,zero
    3838:	8619001c 	lh	t9,28(s0)
    383c:	3328001f 	andi	t0,t9,0x1f
    3840:	2509fffd 	addiu	t1,t0,-3
    3844:	2d21000b 	sltiu	at,t1,11
    3848:	1020000d 	beqz	at,3880 <L80A46594+0x1c>
    384c:	00094880 	sll	t1,t1,0x2
    3850:	3c010000 	lui	at,0x0
    3854:	00290821 	addu	at,at,t1
    3858:	8c290000 	lw	t1,0(at)
    385c:	01200008 	jr	t1
    3860:	00000000 	nop

00003864 <L80A46594>:
    3864:	8e0a0004 	lw	t2,4(s0)
    3868:	2401ffef 	li	at,-17
    386c:	01415824 	and	t3,t2,at
    3870:	2401ffdf 	li	at,-33
    3874:	ae0b0004 	sw	t3,4(s0)
    3878:	01616824 	and	t5,t3,at
    387c:	ae0d0004 	sw	t5,4(s0)
    3880:	0c000000 	jal	0 <func_80A42D30>
    3884:	02002025 	move	a0,s0
    3888:	0c000000 	jal	0 <func_80A42D30>
    388c:	02002025 	move	a0,s0
    3890:	3c050000 	lui	a1,0x0
    3894:	24a50000 	addiu	a1,a1,0
    3898:	8fa40034 	lw	a0,52(sp)
    389c:	0c000000 	jal	0 <func_80A42D30>
    38a0:	00003025 	move	a2,zero
    38a4:	3c01bf80 	lui	at,0xbf80
    38a8:	300e00ff 	andi	t6,zero,0xff
    38ac:	44812000 	mtc1	at,$f4
    38b0:	448e3000 	mtc1	t6,$f6
    38b4:	a20000c8 	sb	zero,200(s0)
    38b8:	e604006c 	swc1	$f4,108(s0)
    38bc:	05c10005 	bgez	t6,38d4 <L80A46594+0x70>
    38c0:	46803220 	cvt.s.w	$f8,$f6
    38c4:	3c014f80 	lui	at,0x4f80
    38c8:	44815000 	mtc1	at,$f10
    38cc:	00000000 	nop
    38d0:	460a4200 	add.s	$f8,$f8,$f10
    38d4:	8605001c 	lh	a1,28(s0)
    38d8:	860f00b8 	lh	t7,184(s0)
    38dc:	24180001 	li	t8,1
    38e0:	30a503e0 	andi	a1,a1,0x3e0
    38e4:	00052943 	sra	a1,a1,0x5
    38e8:	e6080220 	swc1	$f8,544(s0)
    38ec:	a200020e 	sb	zero,526(s0)
    38f0:	a200020f 	sb	zero,527(s0)
    38f4:	a2000211 	sb	zero,529(s0)
    38f8:	a2000212 	sb	zero,530(s0)
    38fc:	a2000210 	sb	zero,528(s0)
    3900:	a618026e 	sh	t8,622(s0)
    3904:	00052c00 	sll	a1,a1,0x10
    3908:	a20f0216 	sb	t7,534(s0)
    390c:	8fa40044 	lw	a0,68(sp)
    3910:	00052c03 	sra	a1,a1,0x10
    3914:	0c000000 	jal	0 <func_80A42D30>
    3918:	2406001f 	li	a2,31
    391c:	8603001c 	lh	v1,28(s0)
    3920:	ae020208 	sw	v0,520(s0)
    3924:	3066001f 	andi	a2,v1,0x1f
    3928:	2cc1000e 	sltiu	at,a2,14
    392c:	102000b8 	beqz	at,3c10 <L80A46940>
    3930:	0006c880 	sll	t9,a2,0x2
    3934:	3c010000 	lui	at,0x0
    3938:	00390821 	addu	at,at,t9
    393c:	8c390000 	lw	t9,0(at)
    3940:	03200008 	jr	t9
    3944:	00000000 	nop

00003948 <L80A46678>:
    3948:	3c030000 	lui	v1,0x0
    394c:	24630000 	addiu	v1,v1,0
    3950:	3c080000 	lui	t0,0x0
    3954:	8d080004 	lw	t0,4(t0)
    3958:	8c6900a4 	lw	t1,164(v1)
    395c:	01095024 	and	t2,t0,t1
    3960:	15400006 	bnez	t2,397c <L80A46678+0x34>
    3964:	00000000 	nop
    3968:	8c6b0004 	lw	t3,4(v1)
    396c:	15600003 	bnez	t3,397c <L80A46678+0x34>
    3970:	00000000 	nop
    3974:	0c000000 	jal	0 <func_80A42D30>
    3978:	02002025 	move	a0,s0
    397c:	3c0c0000 	lui	t4,0x0
    3980:	258c0000 	addiu	t4,t4,0
    3984:	100000a5 	b	3c1c <L80A46940+0xc>
    3988:	ae0c0190 	sw	t4,400(s0)

0000398c <L80A466BC>:
    398c:	3c030000 	lui	v1,0x0
    3990:	24630000 	addiu	v1,v1,0
    3994:	8c6d0004 	lw	t5,4(v1)
    3998:	3c0e0000 	lui	t6,0x0
    399c:	11a00006 	beqz	t5,39b8 <L80A466BC+0x2c>
    39a0:	00000000 	nop
    39a4:	8dce004c 	lw	t6,76(t6)
    39a8:	8c6f00a4 	lw	t7,164(v1)
    39ac:	01cfc024 	and	t8,t6,t7
    39b0:	57000004 	bnezl	t8,39c4 <L80A466BC+0x38>
    39b4:	02002025 	move	a0,s0
    39b8:	0c000000 	jal	0 <func_80A42D30>
    39bc:	02002025 	move	a0,s0
    39c0:	02002025 	move	a0,s0
    39c4:	0c000000 	jal	0 <func_80A42D30>
    39c8:	8fa50044 	lw	a1,68(sp)
    39cc:	10000094 	b	3c20 <L80A46940+0x10>
    39d0:	8fbf002c 	lw	ra,44(sp)

000039d4 <L80A46704>:
    39d4:	3c030000 	lui	v1,0x0
    39d8:	24630000 	addiu	v1,v1,0
    39dc:	94620f18 	lhu	v0,3864(v1)
    39e0:	26050024 	addiu	a1,s0,36
    39e4:	30590200 	andi	t9,v0,0x200
    39e8:	53200024 	beqzl	t9,3a7c <L80A46704+0xa8>
    39ec:	3059efff 	andi	t9,v0,0xefff
    39f0:	8e040208 	lw	a0,520(s0)
    39f4:	0c000000 	jal	0 <func_80A42D30>
    39f8:	afa50030 	sw	a1,48(sp)
    39fc:	8fa50030 	lw	a1,48(sp)
    3a00:	3c030000 	lui	v1,0x0
    3a04:	24630000 	addiu	v1,v1,0
    3a08:	8ca90000 	lw	t1,0(a1)
    3a0c:	3c020000 	lui	v0,0x0
    3a10:	3c180000 	lui	t8,0x0
    3a14:	ae090008 	sw	t1,8(s0)
    3a18:	8ca80004 	lw	t0,4(a1)
    3a1c:	3c0c0000 	lui	t4,0x0
    3a20:	27180000 	addiu	t8,t8,0
    3a24:	ae08000c 	sw	t0,12(s0)
    3a28:	8ca90008 	lw	t1,8(a1)
    3a2c:	ae090010 	sw	t1,16(s0)
    3a30:	8c6a00a4 	lw	t2,164(v1)
    3a34:	8c420004 	lw	v0,4(v0)
    3a38:	004a5824 	and	t3,v0,t2
    3a3c:	1560000c 	bnez	t3,3a70 <L80A46704+0x9c>
    3a40:	00000000 	nop
    3a44:	918c0002 	lbu	t4,2(t4)
    3a48:	946e009c 	lhu	t6,156(v1)
    3a4c:	02002025 	move	a0,s0
    3a50:	01826804 	sllv	t5,v0,t4
    3a54:	01ae7824 	and	t7,t5,t6
    3a58:	11e00005 	beqz	t7,3a70 <L80A46704+0x9c>
    3a5c:	00000000 	nop
    3a60:	0c000000 	jal	0 <func_80A42D30>
    3a64:	8fa50044 	lw	a1,68(sp)
    3a68:	1000006d 	b	3c20 <L80A46940+0x10>
    3a6c:	8fbf002c 	lw	ra,44(sp)
    3a70:	1000006a 	b	3c1c <L80A46940+0xc>
    3a74:	ae180190 	sw	t8,400(s0)
    3a78:	3059efff 	andi	t9,v0,0xefff
    3a7c:	a4790f18 	sh	t9,3864(v1)
    3a80:	8608001c 	lh	t0,28(s0)
    3a84:	3c0b0000 	lui	t3,0x0
    3a88:	3c010000 	lui	at,0x0
    3a8c:	3109001f 	andi	t1,t0,0x1f
    3a90:	00095080 	sll	t2,t1,0x2
    3a94:	01495021 	addu	t2,t2,t1
    3a98:	000a5040 	sll	t2,t2,0x1
    3a9c:	016a5821 	addu	t3,t3,t2
    3aa0:	856b0000 	lh	t3,0(t3)
    3aa4:	c4240000 	lwc1	$f4,0(at)
    3aa8:	02002025 	move	a0,s0
    3aac:	448b8000 	mtc1	t3,$f16
    3ab0:	00000000 	nop
    3ab4:	468084a0 	cvt.s.w	$f18,$f16
    3ab8:	46049182 	mul.s	$f6,$f18,$f4
    3abc:	4600328d 	trunc.w.s	$f10,$f6
    3ac0:	440d5000 	mfc1	t5,$f10
    3ac4:	00000000 	nop
    3ac8:	a60d01fe 	sh	t5,510(s0)
    3acc:	0c000000 	jal	0 <func_80A42D30>
    3ad0:	8fa50044 	lw	a1,68(sp)
    3ad4:	240e0001 	li	t6,1
    3ad8:	10000050 	b	3c1c <L80A46940+0xc>
    3adc:	a20e020f 	sb	t6,527(s0)

00003ae0 <L80A46810>:
    3ae0:	00067880 	sll	t7,a2,0x2
    3ae4:	01e67821 	addu	t7,t7,a2
    3ae8:	000f7840 	sll	t7,t7,0x1
    3aec:	3c180000 	lui	t8,0x0
    3af0:	030fc021 	addu	t8,t8,t7
    3af4:	87180000 	lh	t8,0(t8)
    3af8:	3c010000 	lui	at,0x0
    3afc:	c4320000 	lwc1	$f18,0(at)
    3b00:	44984000 	mtc1	t8,$f8
    3b04:	02002025 	move	a0,s0
    3b08:	46804420 	cvt.s.w	$f16,$f8
    3b0c:	46128102 	mul.s	$f4,$f16,$f18
    3b10:	4600218d 	trunc.w.s	$f6,$f4
    3b14:	44083000 	mfc1	t0,$f6
    3b18:	00000000 	nop
    3b1c:	a60801fe 	sh	t0,510(s0)
    3b20:	0c000000 	jal	0 <func_80A42D30>
    3b24:	8fa50044 	lw	a1,68(sp)
    3b28:	1000003d 	b	3c20 <L80A46940+0x10>
    3b2c:	8fbf002c 	lw	ra,44(sp)

00003b30 <L80A46860>:
    3b30:	3065fc00 	andi	a1,v1,0xfc00
    3b34:	00052a83 	sra	a1,a1,0xa
    3b38:	0c000000 	jal	0 <func_80A42D30>
    3b3c:	8fa40044 	lw	a0,68(sp)
    3b40:	10400005 	beqz	v0,3b58 <L80A46860+0x28>
    3b44:	24090001 	li	t1,1
    3b48:	0c000000 	jal	0 <func_80A42D30>
    3b4c:	02002025 	move	a0,s0
    3b50:	10000033 	b	3c20 <L80A46940+0x10>
    3b54:	8fbf002c 	lw	ra,44(sp)
    3b58:	3c0a0000 	lui	t2,0x0
    3b5c:	254a0000 	addiu	t2,t2,0
    3b60:	a209020f 	sb	t1,527(s0)
    3b64:	1000002d 	b	3c1c <L80A46940+0xc>
    3b68:	ae0a0190 	sw	t2,400(s0)

00003b6c <L80A4689C>:
    3b6c:	8e0b0004 	lw	t3,4(s0)
    3b70:	2401fffe 	li	at,-2
    3b74:	ae0000c0 	sw	zero,192(s0)
    3b78:	01616024 	and	t4,t3,at
    3b7c:	ae0c0004 	sw	t4,4(s0)
    3b80:	3c0d0000 	lui	t5,0x0
    3b84:	91ad002d 	lbu	t5,45(t5)
    3b88:	3c030000 	lui	v1,0x0
    3b8c:	24630000 	addiu	v1,v1,0
    3b90:	006d7021 	addu	t6,v1,t5
    3b94:	91c20074 	lbu	v0,116(t6)
    3b98:	3c190000 	lui	t9,0x0
    3b9c:	2418000d 	li	t8,13
    3ba0:	28410033 	slti	at,v0,51
    3ba4:	14200005 	bnez	at,3bbc <L80A4689C+0x50>
    3ba8:	27390000 	addiu	t9,t9,0
    3bac:	28410037 	slti	at,v0,55
    3bb0:	10200002 	beqz	at,3bbc <L80A4689C+0x50>
    3bb4:	240f0001 	li	t7,1
    3bb8:	a20f0213 	sb	t7,531(s0)
    3bbc:	a20001cd 	sb	zero,461(s0)
    3bc0:	a21801ce 	sb	t8,462(s0)
    3bc4:	10000015 	b	3c1c <L80A46940+0xc>
    3bc8:	ae190190 	sw	t9,400(s0)

00003bcc <L80A468FC>:
    3bcc:	3c030000 	lui	v1,0x0
    3bd0:	24630000 	addiu	v1,v1,0
    3bd4:	94680f14 	lhu	t0,3860(v1)
    3bd8:	26050024 	addiu	a1,s0,36
    3bdc:	31090800 	andi	t1,t0,0x800
    3be0:	1120000b 	beqz	t1,3c10 <L80A46940>
    3be4:	00000000 	nop
    3be8:	8e040208 	lw	a0,520(s0)
    3bec:	0c000000 	jal	0 <func_80A42D30>
    3bf0:	afa50030 	sw	a1,48(sp)
    3bf4:	8fa50030 	lw	a1,48(sp)
    3bf8:	8cab0000 	lw	t3,0(a1)
    3bfc:	ae0b0008 	sw	t3,8(s0)
    3c00:	8caa0004 	lw	t2,4(a1)
    3c04:	ae0a000c 	sw	t2,12(s0)
    3c08:	8cab0008 	lw	t3,8(a1)
    3c0c:	ae0b0010 	sw	t3,16(s0)

00003c10 <L80A46940>:
    3c10:	3c0c0000 	lui	t4,0x0
    3c14:	258c0000 	addiu	t4,t4,0
    3c18:	ae0c0190 	sw	t4,400(s0)
    3c1c:	8fbf002c 	lw	ra,44(sp)
    3c20:	8fb00028 	lw	s0,40(sp)
    3c24:	27bd0040 	addiu	sp,sp,64
    3c28:	03e00008 	jr	ra
    3c2c:	00000000 	nop

00003c30 <EnGo2_Destroy>:
    3c30:	afa40000 	sw	a0,0(sp)
    3c34:	03e00008 	jr	ra
    3c38:	afa50004 	sw	a1,4(sp)

00003c3c <func_80A4696C>:
    3c3c:	27bdffc8 	addiu	sp,sp,-56
    3c40:	afbf0024 	sw	ra,36(sp)
    3c44:	afb00020 	sw	s0,32(sp)
    3c48:	afa5003c 	sw	a1,60(sp)
    3c4c:	848e001c 	lh	t6,28(a0)
    3c50:	00808025 	move	s0,a0
    3c54:	2484014c 	addiu	a0,a0,332
    3c58:	31cf001f 	andi	t7,t6,0x1f
    3c5c:	a3af0037 	sb	t7,55(sp)
    3c60:	0c000000 	jal	0 <func_80A42D30>
    3c64:	8e05015c 	lw	a1,348(s0)
    3c68:	50400024 	beqzl	v0,3cfc <func_80A4696C+0xc0>
    3c6c:	c6020164 	lwc1	$f2,356(s0)
    3c70:	8618001c 	lh	t8,28(s0)
    3c74:	24010002 	li	at,2
    3c78:	8fa2003c 	lw	v0,60(sp)
    3c7c:	3319001f 	andi	t9,t8,0x1f
    3c80:	17210018 	bne	t9,at,3ce4 <func_80A4696C+0xa8>
    3c84:	02002025 	move	a0,s0
    3c88:	844807a0 	lh	t0,1952(v0)
    3c8c:	24050003 	li	a1,3
    3c90:	00084880 	sll	t1,t0,0x2
    3c94:	00495021 	addu	t2,v0,t1
    3c98:	0c000000 	jal	0 <func_80A42D30>
    3c9c:	8d440790 	lw	a0,1936(t2)
    3ca0:	00022400 	sll	a0,v0,0x10
    3ca4:	afa20030 	sw	v0,48(sp)
    3ca8:	00042403 	sra	a0,a0,0x10
    3cac:	0c000000 	jal	0 <func_80A42D30>
    3cb0:	2405c350 	li	a1,-15536
    3cb4:	87a40032 	lh	a0,50(sp)
    3cb8:	24050008 	li	a1,8
    3cbc:	00003025 	move	a2,zero
    3cc0:	00003825 	move	a3,zero
    3cc4:	afa00010 	sw	zero,16(sp)
    3cc8:	0c000000 	jal	0 <func_80A42D30>
    3ccc:	afa4002c 	sw	a0,44(sp)
    3cd0:	8fa4002c 	lw	a0,44(sp)
    3cd4:	0c000000 	jal	0 <func_80A42D30>
    3cd8:	24050010 	li	a1,16
    3cdc:	10000004 	b	3cf0 <func_80A4696C+0xb4>
    3ce0:	44802000 	mtc1	zero,$f4
    3ce4:	0c000000 	jal	0 <func_80A42D30>
    3ce8:	24050001 	li	a1,1
    3cec:	44802000 	mtc1	zero,$f4
    3cf0:	00000000 	nop
    3cf4:	e6040168 	swc1	$f4,360(s0)
    3cf8:	c6020164 	lwc1	$f2,356(s0)
    3cfc:	93ad0037 	lbu	t5,55(sp)
    3d00:	3c0f0000 	lui	t7,0x0
    3d04:	4600118d 	trunc.w.s	$f6,$f2
    3d08:	000d7080 	sll	t6,t5,0x2
    3d0c:	01cd7021 	addu	t6,t6,t5
    3d10:	000e7040 	sll	t6,t6,0x1
    3d14:	440c3000 	mfc1	t4,$f6
    3d18:	01ee7821 	addu	t7,t7,t6
    3d1c:	93a80037 	lbu	t0,55(sp)
    3d20:	1580000c 	bnez	t4,3d54 <func_80A4696C+0x118>
    3d24:	02002025 	move	a0,s0
    3d28:	85ef0000 	lh	t7,0(t7)
    3d2c:	3c010000 	lui	at,0x0
    3d30:	c4300000 	lwc1	$f16,0(at)
    3d34:	448f4000 	mtc1	t7,$f8
    3d38:	00000000 	nop
    3d3c:	468042a0 	cvt.s.w	$f10,$f8
    3d40:	46105482 	mul.s	$f18,$f10,$f16
    3d44:	4600910d 	trunc.w.s	$f4,$f18
    3d48:	44192000 	mfc1	t9,$f4
    3d4c:	10000019 	b	3db4 <func_80A4696C+0x178>
    3d50:	a61901fe 	sh	t9,510(s0)
    3d54:	c6100158 	lwc1	$f16,344(s0)
    3d58:	00084880 	sll	t1,t0,0x2
    3d5c:	01284821 	addu	t1,t1,t0
    3d60:	46101483 	div.s	$f18,$f2,$f16
    3d64:	00094840 	sll	t1,t1,0x1
    3d68:	3c0a0000 	lui	t2,0x0
    3d6c:	01495021 	addu	t2,t2,t1
    3d70:	854a0000 	lh	t2,0(t2)
    3d74:	3c010000 	lui	at,0x0
    3d78:	c4280000 	lwc1	$f8,0(at)
    3d7c:	448a3000 	mtc1	t2,$f6
    3d80:	3c010000 	lui	at,0x0
    3d84:	46803020 	cvt.s.w	$f0,$f6
    3d88:	c4260000 	lwc1	$f6,0(at)
    3d8c:	46080282 	mul.s	$f10,$f0,$f8
    3d90:	00000000 	nop
    3d94:	46125102 	mul.s	$f4,$f10,$f18
    3d98:	00000000 	nop
    3d9c:	46060202 	mul.s	$f8,$f0,$f6
    3da0:	46082400 	add.s	$f16,$f4,$f8
    3da4:	4600828d 	trunc.w.s	$f10,$f16
    3da8:	440c5000 	mfc1	t4,$f10
    3dac:	00000000 	nop
    3db0:	a60c01fe 	sh	t4,510(s0)
    3db4:	0c000000 	jal	0 <func_80A42D30>
    3db8:	8fa5003c 	lw	a1,60(sp)
    3dbc:	10400004 	beqz	v0,3dd0 <func_80A4696C+0x194>
    3dc0:	02002025 	move	a0,s0
    3dc4:	a200020f 	sb	zero,527(s0)
    3dc8:	0c000000 	jal	0 <func_80A42D30>
    3dcc:	8fa5003c 	lw	a1,60(sp)
    3dd0:	860d001c 	lh	t5,28(s0)
    3dd4:	24010003 	li	at,3
    3dd8:	31ae001f 	andi	t6,t5,0x1f
    3ddc:	51c10008 	beql	t6,at,3e00 <func_80A4696C+0x1c4>
    3de0:	8fbf0024 	lw	ra,36(sp)
    3de4:	0c000000 	jal	0 <func_80A42D30>
    3de8:	02002025 	move	a0,s0
    3dec:	10400003 	beqz	v0,3dfc <func_80A4696C+0x1c0>
    3df0:	02002025 	move	a0,s0
    3df4:	0c000000 	jal	0 <func_80A42D30>
    3df8:	8fa5003c 	lw	a1,60(sp)
    3dfc:	8fbf0024 	lw	ra,36(sp)
    3e00:	8fb00020 	lw	s0,32(sp)
    3e04:	27bd0038 	addiu	sp,sp,56
    3e08:	03e00008 	jr	ra
    3e0c:	00000000 	nop

00003e10 <func_80A46B40>:
    3e10:	27bdffd8 	addiu	sp,sp,-40
    3e14:	afbf001c 	sw	ra,28(sp)
    3e18:	afb00018 	sw	s0,24(sp)
    3e1c:	afa5002c 	sw	a1,44(sp)
    3e20:	8483001c 	lh	v1,28(a0)
    3e24:	908e0211 	lbu	t6,529(a0)
    3e28:	24010001 	li	at,1
    3e2c:	3063001f 	andi	v1,v1,0x1f
    3e30:	00808025 	move	s0,a0
    3e34:	15c10017 	bne	t6,at,3e94 <func_80A46B40+0x84>
    3e38:	306300ff 	andi	v1,v1,0xff
    3e3c:	0c000000 	jal	0 <func_80A42D30>
    3e40:	00000000 	nop
    3e44:	02002025 	move	a0,s0
    3e48:	0c000000 	jal	0 <func_80A42D30>
    3e4c:	8fa5002c 	lw	a1,44(sp)
    3e50:	0c000000 	jal	0 <func_80A42D30>
    3e54:	02002025 	move	a0,s0
    3e58:	02002025 	move	a0,s0
    3e5c:	0c000000 	jal	0 <func_80A42D30>
    3e60:	8fa5002c 	lw	a1,44(sp)
    3e64:	5440004c 	bnezl	v0,3f98 <func_80A46B40+0x188>
    3e68:	8fbf001c 	lw	ra,28(sp)
    3e6c:	0c000000 	jal	0 <func_80A42D30>
    3e70:	02002025 	move	a0,s0
    3e74:	54400048 	bnezl	v0,3f98 <func_80A46B40+0x188>
    3e78:	8fbf001c 	lw	ra,28(sp)
    3e7c:	0c000000 	jal	0 <func_80A42D30>
    3e80:	02002025 	move	a0,s0
    3e84:	50400039 	beqzl	v0,3f6c <func_80A46B40+0x15c>
    3e88:	02002025 	move	a0,s0
    3e8c:	10000042 	b	3f98 <func_80A46B40+0x188>
    3e90:	8fbf001c 	lw	ra,28(sp)
    3e94:	8e05015c 	lw	a1,348(s0)
    3e98:	a3a30027 	sb	v1,39(sp)
    3e9c:	0c000000 	jal	0 <func_80A42D30>
    3ea0:	2604014c 	addiu	a0,s0,332
    3ea4:	10400017 	beqz	v0,3f04 <func_80A46B40+0xf4>
    3ea8:	93a30027 	lbu	v1,39(sp)
    3eac:	860f001c 	lh	t7,28(s0)
    3eb0:	24010002 	li	at,2
    3eb4:	02002025 	move	a0,s0
    3eb8:	31f8001f 	andi	t8,t7,0x1f
    3ebc:	17010004 	bne	t8,at,3ed0 <func_80A46B40+0xc0>
    3ec0:	00000000 	nop
    3ec4:	8e190004 	lw	t9,4(s0)
    3ec8:	37280001 	ori	t0,t9,0x1
    3ecc:	ae080004 	sw	t0,4(s0)
    3ed0:	0c000000 	jal	0 <func_80A42D30>
    3ed4:	a3a30027 	sb	v1,39(sp)
    3ed8:	93a30027 	lbu	v1,39(sp)
    3edc:	24090001 	li	t1,1
    3ee0:	3c0b0000 	lui	t3,0x0
    3ee4:	00035080 	sll	t2,v1,0x2
    3ee8:	01435021 	addu	t2,t2,v1
    3eec:	000a5040 	sll	t2,t2,0x1
    3ef0:	a2090211 	sb	t1,529(s0)
    3ef4:	016a5821 	addu	t3,t3,t2
    3ef8:	856b0000 	lh	t3,0(t3)
    3efc:	1000001a 	b	3f68 <func_80A46B40+0x158>
    3f00:	a60b01fe 	sh	t3,510(s0)
    3f04:	c6060164 	lwc1	$f6,356(s0)
    3f08:	c608015c 	lwc1	$f8,348(s0)
    3f0c:	00036080 	sll	t4,v1,0x2
    3f10:	01836021 	addu	t4,t4,v1
    3f14:	46083283 	div.s	$f10,$f6,$f8
    3f18:	000c6040 	sll	t4,t4,0x1
    3f1c:	3c0d0000 	lui	t5,0x0
    3f20:	01ac6821 	addu	t5,t5,t4
    3f24:	85ad0000 	lh	t5,0(t5)
    3f28:	3c010000 	lui	at,0x0
    3f2c:	c4300000 	lwc1	$f16,0(at)
    3f30:	448d2000 	mtc1	t5,$f4
    3f34:	3c010000 	lui	at,0x0
    3f38:	c4260000 	lwc1	$f6,0(at)
    3f3c:	46802020 	cvt.s.w	$f0,$f4
    3f40:	46100482 	mul.s	$f18,$f0,$f16
    3f44:	00000000 	nop
    3f48:	460a9102 	mul.s	$f4,$f18,$f10
    3f4c:	00000000 	nop
    3f50:	46060202 	mul.s	$f8,$f0,$f6
    3f54:	46082400 	add.s	$f16,$f4,$f8
    3f58:	4600848d 	trunc.w.s	$f18,$f16
    3f5c:	440f9000 	mfc1	t7,$f18
    3f60:	00000000 	nop
    3f64:	a60f01fe 	sh	t7,510(s0)
    3f68:	02002025 	move	a0,s0
    3f6c:	0c000000 	jal	0 <func_80A42D30>
    3f70:	8fa5002c 	lw	a1,44(sp)
    3f74:	54400008 	bnezl	v0,3f98 <func_80A46B40+0x188>
    3f78:	8fbf001c 	lw	ra,28(sp)
    3f7c:	0c000000 	jal	0 <func_80A42D30>
    3f80:	02002025 	move	a0,s0
    3f84:	14400003 	bnez	v0,3f94 <func_80A46B40+0x184>
    3f88:	02002025 	move	a0,s0
    3f8c:	0c000000 	jal	0 <func_80A42D30>
    3f90:	8fa5002c 	lw	a1,44(sp)
    3f94:	8fbf001c 	lw	ra,28(sp)
    3f98:	8fb00018 	lw	s0,24(sp)
    3f9c:	27bd0028 	addiu	sp,sp,40
    3fa0:	03e00008 	jr	ra
    3fa4:	00000000 	nop

00003fa8 <func_80A46CD8>:
    3fa8:	27bdffe8 	addiu	sp,sp,-24
    3fac:	afbf0014 	sw	ra,20(sp)
    3fb0:	afa5001c 	sw	a1,28(sp)
    3fb4:	3c014700 	lui	at,0x4700
    3fb8:	c480015c 	lwc1	$f0,348(a0)
    3fbc:	44813000 	mtc1	at,$f6
    3fc0:	c4840164 	lwc1	$f4,356(a0)
    3fc4:	00803025 	move	a2,a0
    3fc8:	46003203 	div.s	$f8,$f6,$f0
    3fcc:	afa60018 	sw	a2,24(sp)
    3fd0:	46082082 	mul.s	$f2,$f4,$f8
    3fd4:	4600128d 	trunc.w.s	$f10,$f2
    3fd8:	44045000 	mfc1	a0,$f10
    3fdc:	00000000 	nop
    3fe0:	00042400 	sll	a0,a0,0x10
    3fe4:	0c000000 	jal	0 <func_80A42D30>
    3fe8:	00042403 	sra	a0,a0,0x10
    3fec:	8fa40018 	lw	a0,24(sp)
    3ff0:	e4800068 	swc1	$f0,104(a0)
    3ff4:	0c000000 	jal	0 <func_80A42D30>
    3ff8:	8fa5001c 	lw	a1,28(sp)
    3ffc:	10400007 	beqz	v0,401c <func_80A46CD8+0x74>
    4000:	8fa60018 	lw	a2,24(sp)
    4004:	80cf0210 	lb	t7,528(a2)
    4008:	00c02025 	move	a0,a2
    400c:	55e00004 	bnezl	t7,4020 <func_80A46CD8+0x78>
    4010:	8fbf0014 	lw	ra,20(sp)
    4014:	0c000000 	jal	0 <func_80A42D30>
    4018:	8fa5001c 	lw	a1,28(sp)
    401c:	8fbf0014 	lw	ra,20(sp)
    4020:	27bd0018 	addiu	sp,sp,24
    4024:	03e00008 	jr	ra
    4028:	00000000 	nop

0000402c <func_80A46D5C>:
    402c:	27bdffe8 	addiu	sp,sp,-24
    4030:	afbf0014 	sw	ra,20(sp)
    4034:	afa5001c 	sw	a1,28(sp)
    4038:	00803025 	move	a2,a0
    403c:	8cc5015c 	lw	a1,348(a2)
    4040:	afa60018 	sw	a2,24(sp)
    4044:	0c000000 	jal	0 <func_80A42D30>
    4048:	2484014c 	addiu	a0,a0,332
    404c:	1040000b 	beqz	v0,407c <func_80A46D5C+0x50>
    4050:	8fa60018 	lw	a2,24(sp)
    4054:	00c02025 	move	a0,a2
    4058:	24050001 	li	a1,1
    405c:	0c000000 	jal	0 <func_80A42D30>
    4060:	afa60018 	sw	a2,24(sp)
    4064:	8fa40018 	lw	a0,24(sp)
    4068:	44802000 	mtc1	zero,$f4
    406c:	00000000 	nop
    4070:	e4840168 	swc1	$f4,360(a0)
    4074:	0c000000 	jal	0 <func_80A42D30>
    4078:	8fa5001c 	lw	a1,28(sp)
    407c:	8fbf0014 	lw	ra,20(sp)
    4080:	27bd0018 	addiu	sp,sp,24
    4084:	03e00008 	jr	ra
    4088:	00000000 	nop

0000408c <func_80A46DBC>:
    408c:	27bdffe8 	addiu	sp,sp,-24
    4090:	afbf0014 	sw	ra,20(sp)
    4094:	afa5001c 	sw	a1,28(sp)
    4098:	848e001c 	lh	t6,28(a0)
    409c:	24010005 	li	at,5
    40a0:	31cf001f 	andi	t7,t6,0x1f
    40a4:	15e10008 	bne	t7,at,40c8 <func_80A46DBC+0x3c>
    40a8:	3c01447a 	lui	at,0x447a
    40ac:	44810000 	mtc1	at,$f0
    40b0:	c486008c 	lwc1	$f6,140(a0)
    40b4:	46000102 	mul.s	$f4,$f0,$f0
    40b8:	4606203c 	c.lt.s	$f4,$f6
    40bc:	00000000 	nop
    40c0:	45010012 	bc1t	410c <func_80A46DBC+0x80>
    40c4:	00000000 	nop
    40c8:	84820592 	lh	v0,1426(a0)
    40cc:	3c013f00 	lui	at,0x3f00
    40d0:	14400003 	bnez	v0,40e0 <func_80A46DBC+0x54>
    40d4:	2458ffff 	addiu	t8,v0,-1
    40d8:	10000003 	b	40e8 <func_80A46DBC+0x5c>
    40dc:	00001825 	move	v1,zero
    40e0:	a4980592 	sh	t8,1426(a0)
    40e4:	84830592 	lh	v1,1426(a0)
    40e8:	14600008 	bnez	v1,410c <func_80A46DBC+0x80>
    40ec:	00000000 	nop
    40f0:	c4880068 	lwc1	$f8,104(a0)
    40f4:	44815000 	mtc1	at,$f10
    40f8:	3c190000 	lui	t9,0x0
    40fc:	27390000 	addiu	t9,t9,0
    4100:	460a4402 	mul.s	$f16,$f8,$f10
    4104:	ac990190 	sw	t9,400(a0)
    4108:	e4900068 	swc1	$f16,104(a0)
    410c:	0c000000 	jal	0 <func_80A42D30>
    4110:	24050002 	li	a1,2
    4114:	8fbf0014 	lw	ra,20(sp)
    4118:	27bd0018 	addiu	sp,sp,24
    411c:	03e00008 	jr	ra
    4120:	00000000 	nop

00004124 <func_80A46E54>:
    4124:	27bdffe0 	addiu	sp,sp,-32
    4128:	afbf001c 	sw	ra,28(sp)
    412c:	afb00018 	sw	s0,24(sp)
    4130:	00808025 	move	s0,a0
    4134:	0c000000 	jal	0 <func_80A42D30>
    4138:	afa50024 	sw	a1,36(sp)
    413c:	14400041 	bnez	v0,4244 <func_80A46E54+0x120>
    4140:	02002025 	move	a0,s0
    4144:	24050004 	li	a1,4
    4148:	3c064100 	lui	a2,0x4100
    414c:	0c000000 	jal	0 <func_80A42D30>
    4150:	24070001 	li	a3,1
    4154:	24010001 	li	at,1
    4158:	5441000c 	bnel	v0,at,418c <func_80A46E54+0x68>
    415c:	02002025 	move	a0,s0
    4160:	0c000000 	jal	0 <func_80A42D30>
    4164:	02002025 	move	a0,s0
    4168:	10400005 	beqz	v0,4180 <func_80A46E54+0x5c>
    416c:	02002025 	move	a0,s0
    4170:	3c0e0000 	lui	t6,0x0
    4174:	25ce0000 	addiu	t6,t6,0
    4178:	10000032 	b	4244 <func_80A46E54+0x120>
    417c:	ae0e0190 	sw	t6,400(s0)
    4180:	0c000000 	jal	0 <func_80A42D30>
    4184:	24050003 	li	a1,3
    4188:	02002025 	move	a0,s0
    418c:	0c000000 	jal	0 <func_80A42D30>
    4190:	8fa50024 	lw	a1,36(sp)
    4194:	8603001c 	lh	v1,28(s0)
    4198:	24040001 	li	a0,1
    419c:	24010002 	li	at,2
    41a0:	3063001f 	andi	v1,v1,0x1f
    41a4:	1064000e 	beq	v1,a0,41e0 <func_80A46E54+0xbc>
    41a8:	00000000 	nop
    41ac:	24010005 	li	at,5
    41b0:	14610015 	bne	v1,at,4208 <func_80A46E54+0xe4>
    41b4:	00000000 	nop
    41b8:	14440013 	bne	v0,a0,4208 <func_80A46E54+0xe4>
    41bc:	00000000 	nop
    41c0:	820f0210 	lb	t7,528(s0)
    41c4:	02002025 	move	a0,s0
    41c8:	15e0000f 	bnez	t7,4208 <func_80A46E54+0xe4>
    41cc:	00000000 	nop
    41d0:	0c000000 	jal	0 <func_80A42D30>
    41d4:	8fa50024 	lw	a1,36(sp)
    41d8:	1000001b 	b	4248 <func_80A46E54+0x124>
    41dc:	8fbf001c 	lw	ra,28(sp)
    41e0:	14410009 	bne	v0,at,4208 <func_80A46E54+0xe4>
    41e4:	00000000 	nop
    41e8:	82180210 	lb	t8,528(s0)
    41ec:	8fa50024 	lw	a1,36(sp)
    41f0:	14980005 	bne	a0,t8,4208 <func_80A46E54+0xe4>
    41f4:	00000000 	nop
    41f8:	0c000000 	jal	0 <func_80A42D30>
    41fc:	02002025 	move	a0,s0
    4200:	10000011 	b	4248 <func_80A46E54+0x124>
    4204:	8fbf001c 	lw	ra,28(sp)
    4208:	0c000000 	jal	0 <func_80A42D30>
    420c:	02002025 	move	a0,s0
    4210:	44050000 	mfc1	a1,$f0
    4214:	3c063ecc 	lui	a2,0x3ecc
    4218:	3c073f19 	lui	a3,0x3f19
    421c:	34e7999a 	ori	a3,a3,0x999a
    4220:	34c6cccd 	ori	a2,a2,0xcccd
    4224:	0c000000 	jal	0 <func_80A42D30>
    4228:	26040068 	addiu	a0,s0,104
    422c:	8a080030 	lwl	t0,48(s0)
    4230:	9a080033 	lwr	t0,51(s0)
    4234:	aa0800b4 	swl	t0,180(s0)
    4238:	ba0800b7 	swr	t0,183(s0)
    423c:	96080034 	lhu	t0,52(s0)
    4240:	a60800b8 	sh	t0,184(s0)
    4244:	8fbf001c 	lw	ra,28(sp)
    4248:	8fb00018 	lw	s0,24(sp)
    424c:	27bd0020 	addiu	sp,sp,32
    4250:	03e00008 	jr	ra
    4254:	00000000 	nop

00004258 <func_80A46F88>:
    4258:	27bdffe8 	addiu	sp,sp,-24
    425c:	afbf0014 	sw	ra,20(sp)
    4260:	afa5001c 	sw	a1,28(sp)
    4264:	24050004 	li	a1,4
    4268:	afa40018 	sw	a0,24(sp)
    426c:	3c064100 	lui	a2,0x4100
    4270:	0c000000 	jal	0 <func_80A42D30>
    4274:	00003825 	move	a3,zero
    4278:	1040001a 	beqz	v0,42e4 <func_80A46F88+0x8c>
    427c:	8fa40018 	lw	a0,24(sp)
    4280:	00002825 	move	a1,zero
    4284:	0c000000 	jal	0 <func_80A42D30>
    4288:	afa40018 	sw	a0,24(sp)
    428c:	8fa40018 	lw	a0,24(sp)
    4290:	848e059c 	lh	t6,1436(a0)
    4294:	55c00014 	bnezl	t6,42e8 <func_80A46F88+0x90>
    4298:	8fbf0014 	lw	ra,20(sp)
    429c:	8482001c 	lh	v0,28(a0)
    42a0:	24010001 	li	at,1
    42a4:	3042001f 	andi	v0,v0,0x1f
    42a8:	10400008 	beqz	v0,42cc <func_80A46F88+0x74>
    42ac:	00000000 	nop
    42b0:	1441000a 	bne	v0,at,42dc <func_80A46F88+0x84>
    42b4:	3c180000 	lui	t8,0x0
    42b8:	3c0f0000 	lui	t7,0x0
    42bc:	25ef0000 	addiu	t7,t7,0
    42c0:	a0800212 	sb	zero,530(a0)
    42c4:	10000007 	b	42e4 <func_80A46F88+0x8c>
    42c8:	ac8f0190 	sw	t7,400(a0)
    42cc:	0c000000 	jal	0 <func_80A42D30>
    42d0:	8fa5001c 	lw	a1,28(sp)
    42d4:	10000004 	b	42e8 <func_80A46F88+0x90>
    42d8:	8fbf0014 	lw	ra,20(sp)
    42dc:	27180000 	addiu	t8,t8,0
    42e0:	ac980190 	sw	t8,400(a0)
    42e4:	8fbf0014 	lw	ra,20(sp)
    42e8:	27bd0018 	addiu	sp,sp,24
    42ec:	03e00008 	jr	ra
    42f0:	00000000 	nop

000042f4 <func_80A47024>:
    42f4:	27bdffe0 	addiu	sp,sp,-32
    42f8:	afbf001c 	sw	ra,28(sp)
    42fc:	afb00018 	sw	s0,24(sp)
    4300:	00808025 	move	s0,a0
    4304:	0c000000 	jal	0 <func_80A42D30>
    4308:	afa50024 	sw	a1,36(sp)
    430c:	14400025 	bnez	v0,43a4 <func_80A47024+0xb0>
    4310:	26040068 	addiu	a0,s0,104
    4314:	3c063f19 	lui	a2,0x3f19
    4318:	3c073f4c 	lui	a3,0x3f4c
    431c:	34e7cccd 	ori	a3,a3,0xcccd
    4320:	34c6999a 	ori	a2,a2,0x999a
    4324:	0c000000 	jal	0 <func_80A42D30>
    4328:	24050000 	li	a1,0
    432c:	3c013f80 	lui	at,0x3f80
    4330:	44812000 	mtc1	at,$f4
    4334:	c6000068 	lwc1	$f0,104(s0)
    4338:	02002025 	move	a0,s0
    433c:	4600203e 	c.le.s	$f4,$f0
    4340:	00000000 	nop
    4344:	45020005 	bc1fl	435c <func_80A47024+0x68>
    4348:	4600018d 	trunc.w.s	$f6,$f0
    434c:	0c000000 	jal	0 <func_80A42D30>
    4350:	24050003 	li	a1,3
    4354:	c6000068 	lwc1	$f0,104(s0)
    4358:	4600018d 	trunc.w.s	$f6,$f0
    435c:	440f3000 	mfc1	t7,$f6
    4360:	00000000 	nop
    4364:	55e00010 	bnezl	t7,43a8 <func_80A47024+0xb4>
    4368:	8fbf001c 	lw	ra,28(sp)
    436c:	86180032 	lh	t8,50(s0)
    4370:	9209020e 	lbu	t1,526(s0)
    4374:	02002025 	move	a0,s0
    4378:	3b198000 	xori	t9,t8,0x8000
    437c:	a6190032 	sh	t9,50(s0)
    4380:	86080032 	lh	t0,50(s0)
    4384:	392a0001 	xori	t2,t1,0x1
    4388:	a20a020e 	sb	t2,526(s0)
    438c:	a60800b6 	sh	t0,182(s0)
    4390:	0c000000 	jal	0 <func_80A42D30>
    4394:	8fa50024 	lw	a1,36(sp)
    4398:	02002025 	move	a0,s0
    439c:	0c000000 	jal	0 <func_80A42D30>
    43a0:	8fa50024 	lw	a1,36(sp)
    43a4:	8fbf001c 	lw	ra,28(sp)
    43a8:	8fb00018 	lw	s0,24(sp)
    43ac:	27bd0020 	addiu	sp,sp,32
    43b0:	03e00008 	jr	ra
    43b4:	00000000 	nop

000043b8 <func_80A470E8>:
    43b8:	27bdffe0 	addiu	sp,sp,-32
    43bc:	afbf001c 	sw	ra,28(sp)
    43c0:	afa50024 	sw	a1,36(sp)
    43c4:	0c000000 	jal	0 <func_80A42D30>
    43c8:	afa40020 	sw	a0,32(sp)
    43cc:	10400006 	beqz	v0,43e8 <func_80A470E8+0x30>
    43d0:	8fa40020 	lw	a0,32(sp)
    43d4:	3c0e0000 	lui	t6,0x0
    43d8:	25ce0000 	addiu	t6,t6,0
    43dc:	ac800118 	sw	zero,280(a0)
    43e0:	1000000d 	b	4418 <func_80A470E8+0x60>
    43e4:	ac8e0190 	sw	t6,400(a0)
    43e8:	3c013f80 	lui	at,0x3f80
    43ec:	44811000 	mtc1	at,$f2
    43f0:	c4800094 	lwc1	$f0,148(a0)
    43f4:	c4840090 	lwc1	$f4,144(a0)
    43f8:	8c860594 	lw	a2,1428(a0)
    43fc:	46000005 	abs.s	$f0,$f0
    4400:	46022180 	add.s	$f6,$f4,$f2
    4404:	8fa50024 	lw	a1,36(sp)
    4408:	46020200 	add.s	$f8,$f0,$f2
    440c:	44073000 	mfc1	a3,$f6
    4410:	0c000000 	jal	0 <func_80A42D30>
    4414:	e7a80010 	swc1	$f8,16(sp)
    4418:	8fbf001c 	lw	ra,28(sp)
    441c:	27bd0020 	addiu	sp,sp,32
    4420:	03e00008 	jr	ra
    4424:	00000000 	nop

00004428 <func_80A47158>:
    4428:	27bdffe0 	addiu	sp,sp,-32
    442c:	afb00018 	sw	s0,24(sp)
    4430:	00808025 	move	s0,a0
    4434:	afbf001c 	sw	ra,28(sp)
    4438:	afa50024 	sw	a1,36(sp)
    443c:	0c000000 	jal	0 <func_80A42D30>
    4440:	24a420d8 	addiu	a0,a1,8408
    4444:	24010006 	li	at,6
    4448:	54410034 	bnel	v0,at,451c <func_80A47158+0xf4>
    444c:	8fbf001c 	lw	ra,28(sp)
    4450:	0c000000 	jal	0 <func_80A42D30>
    4454:	8fa40024 	lw	a0,36(sp)
    4458:	50400030 	beqzl	v0,451c <func_80A47158+0xf4>
    445c:	8fbf001c 	lw	ra,28(sp)
    4460:	8e020594 	lw	v0,1428(s0)
    4464:	24010026 	li	at,38
    4468:	a6000194 	sh	zero,404(s0)
    446c:	1041000c 	beq	v0,at,44a0 <func_80A47158+0x78>
    4470:	2401002c 	li	at,44
    4474:	10410011 	beq	v0,at,44bc <func_80A47158+0x94>
    4478:	24010033 	li	at,51
    447c:	1041001e 	beq	v0,at,44f8 <func_80A47158+0xd0>
    4480:	24010034 	li	at,52
    4484:	1041001c 	beq	v0,at,44f8 <func_80A47158+0xd0>
    4488:	3c080000 	lui	t0,0x0
    448c:	24010057 	li	at,87
    4490:	10410014 	beq	v0,at,44e4 <func_80A47158+0xbc>
    4494:	25080000 	addiu	t0,t0,0
    4498:	1000001f 	b	4518 <func_80A47158+0xf0>
    449c:	ae080190 	sw	t0,400(s0)
    44a0:	0c000000 	jal	0 <func_80A42D30>
    44a4:	00000000 	nop
    44a8:	02002025 	move	a0,s0
    44ac:	0c000000 	jal	0 <func_80A42D30>
    44b0:	8fa50024 	lw	a1,36(sp)
    44b4:	10000019 	b	451c <func_80A47158+0xf4>
    44b8:	8fbf001c 	lw	ra,28(sp)
    44bc:	3c020000 	lui	v0,0x0
    44c0:	24420000 	addiu	v0,v0,0
    44c4:	944e0f18 	lhu	t6,3864(v0)
    44c8:	02002025 	move	a0,s0
    44cc:	8fa50024 	lw	a1,36(sp)
    44d0:	35cf0200 	ori	t7,t6,0x200
    44d4:	0c000000 	jal	0 <func_80A42D30>
    44d8:	a44f0f18 	sh	t7,3864(v0)
    44dc:	1000000f 	b	451c <func_80A47158+0xf4>
    44e0:	8fbf001c 	lw	ra,28(sp)
    44e4:	3c020000 	lui	v0,0x0
    44e8:	24420000 	addiu	v0,v0,0
    44ec:	24180001 	li	t8,1
    44f0:	10000008 	b	4514 <func_80A47158+0xec>
    44f4:	a058003e 	sb	t8,62(v0)
    44f8:	02002025 	move	a0,s0
    44fc:	0c000000 	jal	0 <func_80A42D30>
    4500:	8fa50024 	lw	a1,36(sp)
    4504:	3c190000 	lui	t9,0x0
    4508:	27390000 	addiu	t9,t9,0
    450c:	10000002 	b	4518 <func_80A47158+0xf0>
    4510:	ae190190 	sw	t9,400(s0)
    4514:	ae080190 	sw	t0,400(s0)
    4518:	8fbf001c 	lw	ra,28(sp)
    451c:	8fb00018 	lw	s0,24(sp)
    4520:	27bd0020 	addiu	sp,sp,32
    4524:	03e00008 	jr	ra
    4528:	00000000 	nop

0000452c <func_80A4725C>:
    452c:	27bdffd0 	addiu	sp,sp,-48
    4530:	afbf0024 	sw	ra,36(sp)
    4534:	afb00020 	sw	s0,32(sp)
    4538:	afa50034 	sw	a1,52(sp)
    453c:	90820212 	lbu	v0,530(a0)
    4540:	00808025 	move	s0,a0
    4544:	2604014c 	addiu	a0,s0,332
    4548:	10400008 	beqz	v0,456c <func_80A4725C+0x40>
    454c:	3c050000 	lui	a1,0x0
    4550:	24010001 	li	at,1
    4554:	1041002a 	beq	v0,at,4600 <func_80A4725C+0xd4>
    4558:	24010002 	li	at,2
    455c:	1041005a 	beq	v0,at,46c8 <func_80A4725C+0x19c>
    4560:	2604014c 	addiu	a0,s0,332
    4564:	1000007a 	b	4750 <func_80A4725C+0x224>
    4568:	8fbf0024 	lw	ra,36(sp)
    456c:	24a50000 	addiu	a1,a1,0
    4570:	0c000000 	jal	0 <func_80A42D30>
    4574:	24060005 	li	a2,5
    4578:	3c014270 	lui	at,0x4270
    457c:	44810000 	mtc1	at,$f0
    4580:	c604015c 	lwc1	$f4,348(s0)
    4584:	8e0e0004 	lw	t6,4(s0)
    4588:	861800b6 	lh	t8,182(s0)
    458c:	46002180 	add.s	$f6,$f4,$f0
    4590:	920c0212 	lbu	t4,530(s0)
    4594:	2401fffe 	li	at,-2
    4598:	24080001 	li	t0,1
    459c:	46003200 	add.s	$f8,$f6,$f0
    45a0:	240b0002 	li	t3,2
    45a4:	01c17824 	and	t7,t6,at
    45a8:	271905b0 	addiu	t9,t8,1456
    45ac:	4600428d 	trunc.w.s	$f10,$f8
    45b0:	258d0001 	addiu	t5,t4,1
    45b4:	ae0f0004 	sw	t7,4(s0)
    45b8:	a61900b6 	sh	t9,182(s0)
    45bc:	440a5000 	mfc1	t2,$f10
    45c0:	a608026e 	sh	t0,622(s0)
    45c4:	a20b0213 	sb	t3,531(s0)
    45c8:	a200020c 	sb	zero,524(s0)
    45cc:	a20d0212 	sb	t5,530(s0)
    45d0:	24040028 	li	a0,40
    45d4:	24050005 	li	a1,5
    45d8:	0c000000 	jal	0 <func_80A42D30>
    45dc:	a60a0592 	sh	t2,1426(s0)
    45e0:	8fa40034 	lw	a0,52(sp)
    45e4:	2405105e 	li	a1,4190
    45e8:	2406ff9d 	li	a2,-99
    45ec:	02003825 	move	a3,s0
    45f0:	0c000000 	jal	0 <func_80A42D30>
    45f4:	afa00010 	sw	zero,16(sp)
    45f8:	10000055 	b	4750 <func_80A4725C+0x224>
    45fc:	8fbf0024 	lw	ra,36(sp)
    4600:	86030592 	lh	v1,1426(s0)
    4604:	3c040000 	lui	a0,0x0
    4608:	24840000 	addiu	a0,a0,0
    460c:	14600003 	bnez	v1,461c <func_80A4725C+0xf0>
    4610:	246effff 	addiu	t6,v1,-1
    4614:	10000004 	b	4628 <func_80A4725C+0xfc>
    4618:	00001025 	move	v0,zero
    461c:	a60e0592 	sh	t6,1426(s0)
    4620:	86030592 	lh	v1,1426(s0)
    4624:	00601025 	move	v0,v1
    4628:	10400013 	beqz	v0,4678 <func_80A4725C+0x14c>
    462c:	2405391d 	li	a1,14621
    4630:	2401003c 	li	at,60
    4634:	10610004 	beq	v1,at,4648 <func_80A4725C+0x11c>
    4638:	8faf0034 	lw	t7,52(sp)
    463c:	24010078 	li	at,120
    4640:	54610043 	bnel	v1,at,4750 <func_80A4725C+0x224>
    4644:	8fbf0024 	lw	ra,36(sp)
    4648:	85f807a0 	lh	t8,1952(t7)
    464c:	0018c880 	sll	t9,t8,0x2
    4650:	01f94021 	addu	t0,t7,t9
    4654:	0c000000 	jal	0 <func_80A42D30>
    4658:	8d040790 	lw	a0,1936(t0)
    465c:	3c040000 	lui	a0,0x0
    4660:	24840000 	addiu	a0,a0,0
    4664:	240528b5 	li	a1,10421
    4668:	0c000000 	jal	0 <func_80A42D30>
    466c:	2406003c 	li	a2,60
    4670:	10000037 	b	4750 <func_80A4725C+0x224>
    4674:	8fbf0024 	lw	ra,36(sp)
    4678:	0c000000 	jal	0 <func_80A42D30>
    467c:	2406003c 	li	a2,60
    4680:	3c050000 	lui	a1,0x0
    4684:	24a50000 	addiu	a1,a1,0
    4688:	2604014c 	addiu	a0,s0,332
    468c:	0c000000 	jal	0 <func_80A42D30>
    4690:	24060006 	li	a2,6
    4694:	8fa40034 	lw	a0,52(sp)
    4698:	0c000000 	jal	0 <func_80A42D30>
    469c:	2405305a 	li	a1,12378
    46a0:	920a0212 	lbu	t2,530(s0)
    46a4:	24090003 	li	t1,3
    46a8:	a2090213 	sb	t1,531(s0)
    46ac:	254b0001 	addiu	t3,t2,1
    46b0:	a20b0212 	sb	t3,530(s0)
    46b4:	2404007f 	li	a0,127
    46b8:	0c000000 	jal	0 <func_80A42D30>
    46bc:	24050005 	li	a1,5
    46c0:	10000023 	b	4750 <func_80A4725C+0x224>
    46c4:	8fbf0024 	lw	ra,36(sp)
    46c8:	8e05015c 	lw	a1,348(s0)
    46cc:	0c000000 	jal	0 <func_80A42D30>
    46d0:	afa40028 	sw	a0,40(sp)
    46d4:	50400003 	beqzl	v0,46e4 <func_80A4725C+0x1b8>
    46d8:	8fa40034 	lw	a0,52(sp)
    46dc:	a2000213 	sb	zero,531(s0)
    46e0:	8fa40034 	lw	a0,52(sp)
    46e4:	0c000000 	jal	0 <func_80A42D30>
    46e8:	248420d8 	addiu	a0,a0,8408
    46ec:	24010002 	li	at,2
    46f0:	14410016 	bne	v0,at,474c <func_80A4725C+0x220>
    46f4:	8fa40028 	lw	a0,40(sp)
    46f8:	3c050000 	lui	a1,0x0
    46fc:	24a50000 	addiu	a1,a1,0
    4700:	0c000000 	jal	0 <func_80A42D30>
    4704:	24060001 	li	a2,1
    4708:	8e0c0004 	lw	t4,4(s0)
    470c:	44808000 	mtc1	zero,$f16
    4710:	c612015c 	lwc1	$f18,348(s0)
    4714:	240e0002 	li	t6,2
    4718:	358d0001 	ori	t5,t4,0x1
    471c:	ae0d0004 	sw	t5,4(s0)
    4720:	a60e026e 	sh	t6,622(s0)
    4724:	e6100168 	swc1	$f16,360(s0)
    4728:	e6120164 	swc1	$f18,356(s0)
    472c:	8fa50034 	lw	a1,52(sp)
    4730:	02002025 	move	a0,s0
    4734:	0c000000 	jal	0 <func_80A42D30>
    4738:	24060026 	li	a2,38
    473c:	3c180000 	lui	t8,0x0
    4740:	27180000 	addiu	t8,t8,0
    4744:	ae180190 	sw	t8,400(s0)
    4748:	a2000212 	sb	zero,530(s0)
    474c:	8fbf0024 	lw	ra,36(sp)
    4750:	8fb00020 	lw	s0,32(sp)
    4754:	27bd0030 	addiu	sp,sp,48
    4758:	03e00008 	jr	ra
    475c:	00000000 	nop

00004760 <func_80A47490>:
    4760:	27bdffe0 	addiu	sp,sp,-32
    4764:	afbf0014 	sw	ra,20(sp)
    4768:	afa50024 	sw	a1,36(sp)
    476c:	8caf1c44 	lw	t7,7236(a1)
    4770:	00803825 	move	a3,a0
    4774:	24010001 	li	at,1
    4778:	afaf001c 	sw	t7,28(sp)
    477c:	90820212 	lbu	v0,530(a0)
    4780:	8fa40024 	lw	a0,36(sp)
    4784:	10400005 	beqz	v0,479c <func_80A47490+0x3c>
    4788:	248420d8 	addiu	a0,a0,8408
    478c:	50410014 	beql	v0,at,47e0 <func_80A47490+0x80>
    4790:	8fa40024 	lw	a0,36(sp)
    4794:	10000029 	b	483c <func_80A47490+0xdc>
    4798:	8fbf0014 	lw	ra,20(sp)
    479c:	0c000000 	jal	0 <func_80A42D30>
    47a0:	afa70020 	sw	a3,32(sp)
    47a4:	14400024 	bnez	v0,4838 <func_80A47490+0xd8>
    47a8:	8fa70020 	lw	a3,32(sp)
    47ac:	8fa40024 	lw	a0,36(sp)
    47b0:	24053031 	li	a1,12337
    47b4:	00003025 	move	a2,zero
    47b8:	0c000000 	jal	0 <func_80A42D30>
    47bc:	afa70020 	sw	a3,32(sp)
    47c0:	8fb9001c 	lw	t9,28(sp)
    47c4:	8fa70020 	lw	a3,32(sp)
    47c8:	2418000a 	li	t8,10
    47cc:	a7380110 	sh	t8,272(t9)
    47d0:	90e80212 	lbu	t0,530(a3)
    47d4:	25090001 	addiu	t1,t0,1
    47d8:	a0e90212 	sb	t1,530(a3)
    47dc:	8fa40024 	lw	a0,36(sp)
    47e0:	afa70020 	sw	a3,32(sp)
    47e4:	0c000000 	jal	0 <func_80A42D30>
    47e8:	248420d8 	addiu	a0,a0,8408
    47ec:	24010002 	li	at,2
    47f0:	10410005 	beq	v0,at,4808 <func_80A47490+0xa8>
    47f4:	8fa70020 	lw	a3,32(sp)
    47f8:	8fab001c 	lw	t3,28(sp)
    47fc:	240a000a 	li	t2,10
    4800:	1000000d 	b	4838 <func_80A47490+0xd8>
    4804:	a56a0110 	sh	t2,272(t3)
    4808:	3c020000 	lui	v0,0x0
    480c:	24420000 	addiu	v0,v0,0
    4810:	944c0f18 	lhu	t4,3864(v0)
    4814:	3c0f0000 	lui	t7,0x0
    4818:	240e0001 	li	t6,1
    481c:	358d1000 	ori	t5,t4,0x1000
    4820:	a44d0f18 	sh	t5,3864(v0)
    4824:	25ef0000 	addiu	t7,t7,0
    4828:	a4ee026e 	sh	t6,622(a3)
    482c:	a0e00211 	sb	zero,529(a3)
    4830:	a0e0020f 	sb	zero,527(a3)
    4834:	acef0190 	sw	t7,400(a3)
    4838:	8fbf0014 	lw	ra,20(sp)
    483c:	27bd0020 	addiu	sp,sp,32
    4840:	03e00008 	jr	ra
    4844:	00000000 	nop

00004848 <func_80A47578>:
    4848:	27bdffc8 	addiu	sp,sp,-56
    484c:	afbf001c 	sw	ra,28(sp)
    4850:	afb00018 	sw	s0,24(sp)
    4854:	afa5003c 	sw	a1,60(sp)
    4858:	8caf1c44 	lw	t7,7236(a1)
    485c:	3c190000 	lui	t9,0x0
    4860:	27390000 	addiu	t9,t9,0
    4864:	afaf0034 	sw	t7,52(sp)
    4868:	8f290000 	lw	t1,0(t9)
    486c:	27b8002c 	addiu	t8,sp,44
    4870:	00808025 	move	s0,a0
    4874:	af090000 	sw	t1,0(t8)
    4878:	97290004 	lhu	t1,4(t9)
    487c:	a7090004 	sh	t1,4(t8)
    4880:	908a0212 	lbu	t2,530(a0)
    4884:	2d410005 	sltiu	at,t2,5
    4888:	102000b4 	beqz	at,4b5c <L80A4788C>
    488c:	000a5080 	sll	t2,t2,0x2
    4890:	3c010000 	lui	at,0x0
    4894:	002a0821 	addu	at,at,t2
    4898:	8c2a0000 	lw	t2,0(at)
    489c:	01400008 	jr	t2
    48a0:	00000000 	nop

000048a4 <L80A475D4>:
    48a4:	8fa4003c 	lw	a0,60(sp)
    48a8:	0c000000 	jal	0 <func_80A42D30>
    48ac:	248420d8 	addiu	a0,a0,8408
    48b0:	24010002 	li	at,2
    48b4:	144100a9 	bne	v0,at,4b5c <L80A4788C>
    48b8:	02002025 	move	a0,s0
    48bc:	0c000000 	jal	0 <func_80A42D30>
    48c0:	8fa5003c 	lw	a1,60(sp)
    48c4:	8fac003c 	lw	t4,60(sp)
    48c8:	3c010001 	lui	at,0x1
    48cc:	240b0037 	li	t3,55
    48d0:	3c050000 	lui	a1,0x0
    48d4:	002c0821 	addu	at,at,t4
    48d8:	a02b03dc 	sb	t3,988(at)
    48dc:	24a50000 	addiu	a1,a1,0
    48e0:	2604014c 	addiu	a0,s0,332
    48e4:	0c000000 	jal	0 <func_80A42D30>
    48e8:	24060002 	li	a2,2
    48ec:	3c014000 	lui	at,0x4000
    48f0:	44812000 	mtc1	at,$f4
    48f4:	240d0001 	li	t5,1
    48f8:	a20d0210 	sb	t5,528(s0)
    48fc:	02002025 	move	a0,s0
    4900:	0c000000 	jal	0 <func_80A42D30>
    4904:	e6040168 	swc1	$f4,360(s0)
    4908:	8a0f0030 	lwl	t7,48(s0)
    490c:	9a0f0033 	lwr	t7,51(s0)
    4910:	8fa30034 	lw	v1,52(sp)
    4914:	3c014000 	lui	at,0x4000
    4918:	aa0f00b4 	swl	t7,180(s0)
    491c:	ba0f00b7 	swr	t7,183(s0)
    4920:	960f0034 	lhu	t7,52(s0)
    4924:	44803000 	mtc1	zero,$f6
    4928:	44814000 	mtc1	at,$f8
    492c:	2418003c 	li	t8,60
    4930:	27a5002c 	addiu	a1,sp,44
    4934:	a6180592 	sh	t8,1426(s0)
    4938:	a60f00b8 	sh	t7,184(s0)
    493c:	e606006c 	swc1	$f6,108(s0)
    4940:	e6080068 	swc1	$f8,104(s0)
    4944:	8ca80000 	lw	t0,0(a1)
    4948:	920b0212 	lbu	t3,530(s0)
    494c:	860f0032 	lh	t7,50(s0)
    4950:	aa08019c 	swl	t0,412(s0)
    4954:	ba08019f 	swr	t0,415(s0)
    4958:	94a80004 	lhu	t0,4(a1)
    495c:	256d0001 	addiu	t5,t3,1
    4960:	25ae0001 	addiu	t6,t5,1
    4964:	a60801a0 	sh	t0,416(s0)
    4968:	8caa0000 	lw	t2,0(a1)
    496c:	aa0a01a2 	swl	t2,418(s0)
    4970:	ba0a01a5 	swr	t2,421(s0)
    4974:	94aa0004 	lhu	t2,4(a1)
    4978:	a20d0212 	sb	t5,530(s0)
    497c:	a20e0212 	sb	t6,530(s0)
    4980:	a60a01a6 	sh	t2,422(s0)
    4984:	a46f0032 	sh	t7,50(v1)
    4988:	86180032 	lh	t8,50(s0)
    498c:	a47800b6 	sh	t8,182(v1)
    4990:	0c000000 	jal	0 <func_80A42D30>
    4994:	86040032 	lh	a0,50(s0)
    4998:	3c01c1f0 	lui	at,0xc1f0
    499c:	44815000 	mtc1	at,$f10
    49a0:	c6120024 	lwc1	$f18,36(s0)
    49a4:	8fb90034 	lw	t9,52(sp)
    49a8:	460a0402 	mul.s	$f16,$f0,$f10
    49ac:	46128100 	add.s	$f4,$f16,$f18
    49b0:	e7240024 	swc1	$f4,36(t9)
    49b4:	0c000000 	jal	0 <func_80A42D30>
    49b8:	86040032 	lh	a0,50(s0)
    49bc:	3c01c1f0 	lui	at,0xc1f0
    49c0:	44813000 	mtc1	at,$f6
    49c4:	c60a002c 	lwc1	$f10,44(s0)
    49c8:	8fa80034 	lw	t0,52(sp)
    49cc:	46060202 	mul.s	$f8,$f0,$f6
    49d0:	02002825 	move	a1,s0
    49d4:	24060008 	li	a2,8
    49d8:	460a4400 	add.s	$f16,$f8,$f10
    49dc:	e510002c 	swc1	$f16,44(t0)
    49e0:	0c000000 	jal	0 <func_80A42D30>
    49e4:	8fa4003c 	lw	a0,60(sp)
    49e8:	0c000000 	jal	0 <func_80A42D30>
    49ec:	24040051 	li	a0,81
    49f0:	1000005b 	b	4b60 <L80A4788C+0x4>
    49f4:	8fbf001c 	lw	ra,28(sp)

000049f8 <L80A47728>:
    49f8:	86020592 	lh	v0,1426(s0)
    49fc:	24010001 	li	at,1
    4a00:	14400003 	bnez	v0,4a10 <L80A47728+0x18>
    4a04:	2449ffff 	addiu	t1,v0,-1
    4a08:	10000004 	b	4a1c <L80A47728+0x24>
    4a0c:	00001825 	move	v1,zero
    4a10:	a6090592 	sh	t1,1426(s0)
    4a14:	86020592 	lh	v0,1426(s0)
    4a18:	00401825 	move	v1,v0
    4a1c:	5060000f 	beqzl	v1,4a5c <L80A47728+0x64>
    4a20:	8602001c 	lh	v0,28(s0)
    4a24:	04410004 	bgez	v0,4a38 <L80A47728+0x40>
    4a28:	304a0007 	andi	t2,v0,0x7
    4a2c:	11400002 	beqz	t2,4a38 <L80A47728+0x40>
    4a30:	00000000 	nop
    4a34:	254afff8 	addiu	t2,t2,-8
    4a38:	15400003 	bnez	t2,4a48 <L80A47728+0x50>
    4a3c:	02002025 	move	a0,s0
    4a40:	0c000000 	jal	0 <func_80A42D30>
    4a44:	240538b8 	li	a1,14520
    4a48:	0c000000 	jal	0 <func_80A42D30>
    4a4c:	02002025 	move	a0,s0
    4a50:	10000043 	b	4b60 <L80A4788C+0x4>
    4a54:	8fbf001c 	lw	ra,28(sp)
    4a58:	8602001c 	lh	v0,28(s0)
    4a5c:	44809000 	mtc1	zero,$f18
    4a60:	a6000592 	sh	zero,1426(s0)
    4a64:	3042fc00 	andi	v0,v0,0xfc00
    4a68:	00021283 	sra	v0,v0,0xa
    4a6c:	1041000f 	beq	v0,at,4aac <L80A47728+0xb4>
    4a70:	e6120068 	swc1	$f18,104(s0)
    4a74:	24010002 	li	at,2
    4a78:	1041000c 	beq	v0,at,4aac <L80A47728+0xb4>
    4a7c:	24010004 	li	at,4
    4a80:	1041000a 	beq	v0,at,4aac <L80A47728+0xb4>
    4a84:	24010005 	li	at,5
    4a88:	10410008 	beq	v0,at,4aac <L80A47728+0xb4>
    4a8c:	24010009 	li	at,9
    4a90:	10410006 	beq	v0,at,4aac <L80A47728+0xb4>
    4a94:	2401000b 	li	at,11
    4a98:	50410005 	beql	v0,at,4ab0 <L80A47728+0xb8>
    4a9c:	920d0212 	lbu	t5,530(s0)
    4aa0:	920b0212 	lbu	t3,530(s0)
    4aa4:	256c0001 	addiu	t4,t3,1
    4aa8:	a20c0212 	sb	t4,530(s0)
    4aac:	920d0212 	lbu	t5,530(s0)
    4ab0:	25ae0001 	addiu	t6,t5,1
    4ab4:	10000029 	b	4b5c <L80A4788C>
    4ab8:	a20e0212 	sb	t6,530(s0)

00004abc <L80A477EC>:
    4abc:	860f0592 	lh	t7,1426(s0)
    4ac0:	25f80001 	addiu	t8,t7,1
    4ac4:	a6180592 	sh	t8,1426(s0)
    4ac8:	86020592 	lh	v0,1426(s0)
    4acc:	04410004 	bgez	v0,4ae0 <L80A477EC+0x24>
    4ad0:	30590007 	andi	t9,v0,0x7
    4ad4:	13200002 	beqz	t9,4ae0 <L80A477EC+0x24>
    4ad8:	00000000 	nop
    4adc:	2739fff8 	addiu	t9,t9,-8
    4ae0:	17200006 	bnez	t9,4afc <L80A477EC+0x40>
    4ae4:	2841000a 	slti	at,v0,10
    4ae8:	10200004 	beqz	at,4afc <L80A477EC+0x40>
    4aec:	02002025 	move	a0,s0
    4af0:	0c000000 	jal	0 <func_80A42D30>
    4af4:	240538b8 	li	a1,14520
    4af8:	86020592 	lh	v0,1426(s0)
    4afc:	2401000a 	li	at,10
    4b00:	14410004 	bne	v0,at,4b14 <L80A477EC+0x58>
    4b04:	02002025 	move	a0,s0
    4b08:	0c000000 	jal	0 <func_80A42D30>
    4b0c:	240528db 	li	a1,10459
    4b10:	86020592 	lh	v0,1426(s0)
    4b14:	2841002d 	slti	at,v0,45
    4b18:	14200010 	bnez	at,4b5c <L80A4788C>
    4b1c:	8fa4003c 	lw	a0,60(sp)
    4b20:	26050024 	addiu	a1,s0,36
    4b24:	24060014 	li	a2,20
    4b28:	0c000000 	jal	0 <func_80A42D30>
    4b2c:	240728dc 	li	a3,10460

00004b30 <L80A47860>:
    4b30:	0c000000 	jal	0 <func_80A42D30>
    4b34:	8fa4003c 	lw	a0,60(sp)
    4b38:	02002025 	move	a0,s0
    4b3c:	0c000000 	jal	0 <func_80A42D30>
    4b40:	8fa5003c 	lw	a1,60(sp)
    4b44:	8fa4003c 	lw	a0,60(sp)
    4b48:	02002825 	move	a1,s0
    4b4c:	0c000000 	jal	0 <func_80A42D30>
    4b50:	24060007 	li	a2,7
    4b54:	0c000000 	jal	0 <func_80A42D30>
    4b58:	02002025 	move	a0,s0

00004b5c <L80A4788C>:
    4b5c:	8fbf001c 	lw	ra,28(sp)
    4b60:	8fb00018 	lw	s0,24(sp)
    4b64:	27bd0038 	addiu	sp,sp,56
    4b68:	03e00008 	jr	ra
    4b6c:	00000000 	nop

00004b70 <EnGo2_Update>:
    4b70:	27bdffd8 	addiu	sp,sp,-40
    4b74:	afb10020 	sw	s1,32(sp)
    4b78:	afb0001c 	sw	s0,28(sp)
    4b7c:	00808025 	move	s0,a0
    4b80:	00a08825 	move	s1,a1
    4b84:	afbf0024 	sw	ra,36(sp)
    4b88:	0c000000 	jal	0 <func_80A42D30>
    4b8c:	26050220 	addiu	a1,s0,544
    4b90:	0c000000 	jal	0 <func_80A42D30>
    4b94:	02002025 	move	a0,s0
    4b98:	0c000000 	jal	0 <func_80A42D30>
    4b9c:	2604014c 	addiu	a0,s0,332
    4ba0:	0c000000 	jal	0 <func_80A42D30>
    4ba4:	02002025 	move	a0,s0
    4ba8:	860e01fe 	lh	t6,510(s0)
    4bac:	860f01fc 	lh	t7,508(s0)
    4bb0:	3c013f00 	lui	at,0x3f00
    4bb4:	448e2000 	mtc1	t6,$f4
    4bb8:	448f8000 	mtc1	t7,$f16
    4bbc:	44814000 	mtc1	at,$f8
    4bc0:	468021a0 	cvt.s.w	$f6,$f4
    4bc4:	3c010000 	lui	at,0x0
    4bc8:	c4240000 	lwc1	$f4,0(at)
    4bcc:	24180005 	li	t8,5
    4bd0:	afb80014 	sw	t8,20(sp)
    4bd4:	468084a0 	cvt.s.w	$f18,$f16
    4bd8:	46083282 	mul.s	$f10,$f6,$f8
    4bdc:	44804000 	mtc1	zero,$f8
    4be0:	02202025 	move	a0,s1
    4be4:	02002825 	move	a1,s0
    4be8:	e7a80010 	swc1	$f8,16(sp)
    4bec:	46049182 	mul.s	$f6,$f18,$f4
    4bf0:	44065000 	mfc1	a2,$f10
    4bf4:	44073000 	mfc1	a3,$f6
    4bf8:	0c000000 	jal	0 <func_80A42D30>
    4bfc:	00000000 	nop
    4c00:	86190194 	lh	t9,404(s0)
    4c04:	02002025 	move	a0,s0
    4c08:	57200004 	bnezl	t9,4c1c <EnGo2_Update+0xac>
    4c0c:	8e190190 	lw	t9,400(s0)
    4c10:	0c000000 	jal	0 <func_80A42D30>
    4c14:	02202825 	move	a1,s1
    4c18:	8e190190 	lw	t9,400(s0)
    4c1c:	02002025 	move	a0,s0
    4c20:	02202825 	move	a1,s1
    4c24:	0320f809 	jalr	t9
    4c28:	00000000 	nop
    4c2c:	92080211 	lbu	t0,529(s0)
    4c30:	24010001 	li	at,1
    4c34:	02202025 	move	a0,s1
    4c38:	15010004 	bne	t0,at,4c4c <EnGo2_Update+0xdc>
    4c3c:	26050226 	addiu	a1,s0,550
    4c40:	2606024a 	addiu	a2,s0,586
    4c44:	0c000000 	jal	0 <func_80A42D30>
    4c48:	24070012 	li	a3,18
    4c4c:	02002025 	move	a0,s0
    4c50:	0c000000 	jal	0 <func_80A42D30>
    4c54:	02202825 	move	a1,s1
    4c58:	0c000000 	jal	0 <func_80A42D30>
    4c5c:	02002025 	move	a0,s0
    4c60:	02002025 	move	a0,s0
    4c64:	0c000000 	jal	0 <func_80A42D30>
    4c68:	02202825 	move	a1,s1
    4c6c:	8fbf0024 	lw	ra,36(sp)
    4c70:	8fb0001c 	lw	s0,28(sp)
    4c74:	8fb10020 	lw	s1,32(sp)
    4c78:	03e00008 	jr	ra
    4c7c:	27bd0028 	addiu	sp,sp,40

00004c80 <func_80A479B0>:
    4c80:	27bdffb0 	addiu	sp,sp,-80
    4c84:	3c0f0000 	lui	t7,0x0
    4c88:	afbf001c 	sw	ra,28(sp)
    4c8c:	afb00018 	sw	s0,24(sp)
    4c90:	afa40050 	sw	a0,80(sp)
    4c94:	afa50054 	sw	a1,84(sp)
    4c98:	25ef0000 	addiu	t7,t7,0
    4c9c:	8df90000 	lw	t9,0(t7)
    4ca0:	27ae0044 	addiu	t6,sp,68
    4ca4:	8df80004 	lw	t8,4(t7)
    4ca8:	add90000 	sw	t9,0(t6)
    4cac:	8df90008 	lw	t9,8(t7)
    4cb0:	add80004 	sw	t8,4(t6)
    4cb4:	3c060000 	lui	a2,0x0
    4cb8:	add90008 	sw	t9,8(t6)
    4cbc:	8fa80054 	lw	t0,84(sp)
    4cc0:	24c60000 	addiu	a2,a2,0
    4cc4:	27a40030 	addiu	a0,sp,48
    4cc8:	8d050000 	lw	a1,0(t0)
    4ccc:	24070b41 	li	a3,2881
    4cd0:	0c000000 	jal	0 <func_80A42D30>
    4cd4:	00a08025 	move	s0,a1
    4cd8:	8fa90054 	lw	t1,84(sp)
    4cdc:	0c000000 	jal	0 <func_80A42D30>
    4ce0:	8d240000 	lw	a0,0(t1)
    4ce4:	8e0202c0 	lw	v0,704(s0)
    4ce8:	3c0bda38 	lui	t3,0xda38
    4cec:	356b0003 	ori	t3,t3,0x3
    4cf0:	244a0008 	addiu	t2,v0,8
    4cf4:	ae0a02c0 	sw	t2,704(s0)
    4cf8:	ac4b0000 	sw	t3,0(v0)
    4cfc:	8fac0054 	lw	t4,84(sp)
    4d00:	3c050000 	lui	a1,0x0
    4d04:	24a50000 	addiu	a1,a1,0
    4d08:	8d840000 	lw	a0,0(t4)
    4d0c:	24060b44 	li	a2,2884
    4d10:	0c000000 	jal	0 <func_80A42D30>
    4d14:	afa2002c 	sw	v0,44(sp)
    4d18:	8fa3002c 	lw	v1,44(sp)
    4d1c:	3c0f0601 	lui	t7,0x601
    4d20:	25efbd80 	addiu	t7,t7,-17024
    4d24:	ac620004 	sw	v0,4(v1)
    4d28:	8e0202c0 	lw	v0,704(s0)
    4d2c:	3c0ede00 	lui	t6,0xde00
    4d30:	3c060000 	lui	a2,0x0
    4d34:	244d0008 	addiu	t5,v0,8
    4d38:	ae0d02c0 	sw	t5,704(s0)
    4d3c:	ac4f0004 	sw	t7,4(v0)
    4d40:	ac4e0000 	sw	t6,0(v0)
    4d44:	8fb80054 	lw	t8,84(sp)
    4d48:	24c60000 	addiu	a2,a2,0
    4d4c:	27a40030 	addiu	a0,sp,48
    4d50:	24070b49 	li	a3,2889
    4d54:	0c000000 	jal	0 <func_80A42D30>
    4d58:	8f050000 	lw	a1,0(t8)
    4d5c:	8fa50050 	lw	a1,80(sp)
    4d60:	27a40044 	addiu	a0,sp,68
    4d64:	0c000000 	jal	0 <func_80A42D30>
    4d68:	24a50038 	addiu	a1,a1,56
    4d6c:	8fbf001c 	lw	ra,28(sp)
    4d70:	8fb00018 	lw	s0,24(sp)
    4d74:	27bd0050 	addiu	sp,sp,80
    4d78:	03e00008 	jr	ra
    4d7c:	24020001 	li	v0,1

00004d80 <func_80A47AB0>:
    4d80:	27bdffa8 	addiu	sp,sp,-88
    4d84:	3c0f0000 	lui	t7,0x0
    4d88:	afbf001c 	sw	ra,28(sp)
    4d8c:	afb10018 	sw	s1,24(sp)
    4d90:	afb00014 	sw	s0,20(sp)
    4d94:	afa40058 	sw	a0,88(sp)
    4d98:	25ef0000 	addiu	t7,t7,0
    4d9c:	8df90000 	lw	t9,0(t7)
    4da0:	27ae0048 	addiu	t6,sp,72
    4da4:	8df80004 	lw	t8,4(t7)
    4da8:	add90000 	sw	t9,0(t6)
    4dac:	8df90008 	lw	t9,8(t7)
    4db0:	00a08825 	move	s1,a1
    4db4:	add80004 	sw	t8,4(t6)
    4db8:	add90008 	sw	t9,8(t6)
    4dbc:	8ca50000 	lw	a1,0(a1)
    4dc0:	3c060000 	lui	a2,0x0
    4dc4:	24c60000 	addiu	a2,a2,0
    4dc8:	27a40030 	addiu	a0,sp,48
    4dcc:	24070b62 	li	a3,2914
    4dd0:	0c000000 	jal	0 <func_80A42D30>
    4dd4:	00a08025 	move	s0,a1
    4dd8:	0c000000 	jal	0 <func_80A42D30>
    4ddc:	8e240000 	lw	a0,0(s1)
    4de0:	8fa20058 	lw	v0,88(sp)
    4de4:	3c080000 	lui	t0,0x0
    4de8:	25080000 	addiu	t0,t0,0
    4dec:	8c490190 	lw	t1,400(v0)
    4df0:	55090005 	bnel	t0,t1,4e08 <func_80A47AB0+0x88>
    4df4:	c4400068 	lwc1	$f0,104(v0)
    4df8:	44800000 	mtc1	zero,$f0
    4dfc:	10000003 	b	4e0c <func_80A47AB0+0x8c>
    4e00:	4600010d 	trunc.w.s	$f4,$f0
    4e04:	c4400068 	lwc1	$f0,104(v0)
    4e08:	4600010d 	trunc.w.s	$f4,$f0
    4e0c:	8e2a009c 	lw	t2,156(s1)
    4e10:	00002825 	move	a1,zero
    4e14:	844600b8 	lh	a2,184(v0)
    4e18:	440c2000 	mfc1	t4,$f4
    4e1c:	24070001 	li	a3,1
    4e20:	000c6c00 	sll	t5,t4,0x10
    4e24:	000d7403 	sra	t6,t5,0x10
    4e28:	000e7880 	sll	t7,t6,0x2
    4e2c:	01ee7823 	subu	t7,t7,t6
    4e30:	000f7880 	sll	t7,t7,0x2
    4e34:	01ee7823 	subu	t7,t7,t6
    4e38:	000f7900 	sll	t7,t7,0x4
    4e3c:	01ee7823 	subu	t7,t7,t6
    4e40:	000f78c0 	sll	t7,t7,0x3
    4e44:	014f0019 	multu	t2,t7
    4e48:	00002012 	mflo	a0
    4e4c:	00042400 	sll	a0,a0,0x10
    4e50:	0c000000 	jal	0 <func_80A42D30>
    4e54:	00042403 	sra	a0,a0,0x10
    4e58:	8e0202c0 	lw	v0,704(s0)
    4e5c:	3c19da38 	lui	t9,0xda38
    4e60:	37390003 	ori	t9,t9,0x3
    4e64:	24580008 	addiu	t8,v0,8
    4e68:	ae1802c0 	sw	t8,704(s0)
    4e6c:	ac590000 	sw	t9,0(v0)
    4e70:	8e240000 	lw	a0,0(s1)
    4e74:	3c050000 	lui	a1,0x0
    4e78:	24a50000 	addiu	a1,a1,0
    4e7c:	24060b6e 	li	a2,2926
    4e80:	0c000000 	jal	0 <func_80A42D30>
    4e84:	afa2002c 	sw	v0,44(sp)
    4e88:	8fa3002c 	lw	v1,44(sp)
    4e8c:	3c0b0601 	lui	t3,0x601
    4e90:	256bc140 	addiu	t3,t3,-16064
    4e94:	ac620004 	sw	v0,4(v1)
    4e98:	8e0202c0 	lw	v0,704(s0)
    4e9c:	3c09de00 	lui	t1,0xde00
    4ea0:	3c060000 	lui	a2,0x0
    4ea4:	24480008 	addiu	t0,v0,8
    4ea8:	ae0802c0 	sw	t0,704(s0)
    4eac:	ac4b0004 	sw	t3,4(v0)
    4eb0:	ac490000 	sw	t1,0(v0)
    4eb4:	8e250000 	lw	a1,0(s1)
    4eb8:	24c60000 	addiu	a2,a2,0
    4ebc:	27a40030 	addiu	a0,sp,48
    4ec0:	0c000000 	jal	0 <func_80A42D30>
    4ec4:	24070b72 	li	a3,2930
    4ec8:	8fa50058 	lw	a1,88(sp)
    4ecc:	27a40048 	addiu	a0,sp,72
    4ed0:	0c000000 	jal	0 <func_80A42D30>
    4ed4:	24a50038 	addiu	a1,a1,56
    4ed8:	8fbf001c 	lw	ra,28(sp)
    4edc:	8fb00014 	lw	s0,20(sp)
    4ee0:	8fb10018 	lw	s1,24(sp)
    4ee4:	27bd0058 	addiu	sp,sp,88
    4ee8:	03e00008 	jr	ra
    4eec:	24020001 	li	v0,1

00004ef0 <func_80A47C20>:
    4ef0:	27bdffc8 	addiu	sp,sp,-56
    4ef4:	afb00018 	sw	s0,24(sp)
    4ef8:	24010011 	li	at,17
    4efc:	00a08025 	move	s0,a1
    4f00:	afbf001c 	sw	ra,28(sp)
    4f04:	afa40038 	sw	a0,56(sp)
    4f08:	afa60040 	sw	a2,64(sp)
    4f0c:	14a1002d 	bne	a1,at,4fc4 <func_80A47C20+0xd4>
    4f10:	afa70044 	sw	a3,68(sp)
    4f14:	44807000 	mtc1	zero,$f14
    4f18:	3c01452f 	lui	at,0x452f
    4f1c:	44816000 	mtc1	at,$f12
    4f20:	44067000 	mfc1	a2,$f14
    4f24:	0c000000 	jal	0 <func_80A42D30>
    4f28:	24070001 	li	a3,1
    4f2c:	8faf004c 	lw	t7,76(sp)
    4f30:	27ae002c 	addiu	t6,sp,44
    4f34:	3c014700 	lui	at,0x4700
    4f38:	89f9019c 	lwl	t9,412(t7)
    4f3c:	99f9019f 	lwr	t9,415(t7)
    4f40:	44814000 	mtc1	at,$f8
    4f44:	3c010000 	lui	at,0x0
    4f48:	add90000 	sw	t9,0(t6)
    4f4c:	95f901a0 	lhu	t9,416(t7)
    4f50:	24050001 	li	a1,1
    4f54:	a5d90004 	sh	t9,4(t6)
    4f58:	87a8002e 	lh	t0,46(sp)
    4f5c:	c4300000 	lwc1	$f16,0(at)
    4f60:	44882000 	mtc1	t0,$f4
    4f64:	00000000 	nop
    4f68:	468021a0 	cvt.s.w	$f6,$f4
    4f6c:	46083283 	div.s	$f10,$f6,$f8
    4f70:	46105302 	mul.s	$f12,$f10,$f16
    4f74:	0c000000 	jal	0 <func_80A42D30>
    4f78:	00000000 	nop
    4f7c:	87a9002c 	lh	t1,44(sp)
    4f80:	3c014700 	lui	at,0x4700
    4f84:	44813000 	mtc1	at,$f6
    4f88:	44899000 	mtc1	t1,$f18
    4f8c:	3c010000 	lui	at,0x0
    4f90:	c42a0000 	lwc1	$f10,0(at)
    4f94:	46809120 	cvt.s.w	$f4,$f18
    4f98:	24050001 	li	a1,1
    4f9c:	46062203 	div.s	$f8,$f4,$f6
    4fa0:	460a4302 	mul.s	$f12,$f8,$f10
    4fa4:	0c000000 	jal	0 <func_80A42D30>
    4fa8:	00000000 	nop
    4fac:	44807000 	mtc1	zero,$f14
    4fb0:	3c01c52f 	lui	at,0xc52f
    4fb4:	44816000 	mtc1	at,$f12
    4fb8:	44067000 	mfc1	a2,$f14
    4fbc:	0c000000 	jal	0 <func_80A42D30>
    4fc0:	24070001 	li	a3,1
    4fc4:	2401000a 	li	at,10
    4fc8:	16010020 	bne	s0,at,504c <func_80A47C20+0x15c>
    4fcc:	8fab004c 	lw	t3,76(sp)
    4fd0:	896d01a2 	lwl	t5,418(t3)
    4fd4:	996d01a5 	lwr	t5,421(t3)
    4fd8:	27aa002c 	addiu	t2,sp,44
    4fdc:	3c014700 	lui	at,0x4700
    4fe0:	ad4d0000 	sw	t5,0(t2)
    4fe4:	956d01a6 	lhu	t5,422(t3)
    4fe8:	44812000 	mtc1	at,$f4
    4fec:	3c010000 	lui	at,0x0
    4ff0:	a54d0004 	sh	t5,4(t2)
    4ff4:	87ae002e 	lh	t6,46(sp)
    4ff8:	c4280000 	lwc1	$f8,0(at)
    4ffc:	24050001 	li	a1,1
    5000:	448e8000 	mtc1	t6,$f16
    5004:	00000000 	nop
    5008:	468084a0 	cvt.s.w	$f18,$f16
    500c:	46049183 	div.s	$f6,$f18,$f4
    5010:	46083302 	mul.s	$f12,$f6,$f8
    5014:	0c000000 	jal	0 <func_80A42D30>
    5018:	00000000 	nop
    501c:	87af002c 	lh	t7,44(sp)
    5020:	3c014700 	lui	at,0x4700
    5024:	44819000 	mtc1	at,$f18
    5028:	448f5000 	mtc1	t7,$f10
    502c:	3c010000 	lui	at,0x0
    5030:	c4260000 	lwc1	$f6,0(at)
    5034:	46805420 	cvt.s.w	$f16,$f10
    5038:	24050001 	li	a1,1
    503c:	46128103 	div.s	$f4,$f16,$f18
    5040:	46062302 	mul.s	$f12,$f4,$f6
    5044:	0c000000 	jal	0 <func_80A42D30>
    5048:	00000000 	nop
    504c:	2401000a 	li	at,10
    5050:	12010005 	beq	s0,at,5068 <func_80A47C20+0x178>
    5054:	8fb8004c 	lw	t8,76(sp)
    5058:	2401000b 	li	at,11
    505c:	12010002 	beq	s0,at,5068 <func_80A47C20+0x178>
    5060:	2401000e 	li	at,14
    5064:	16010022 	bne	s0,at,50f0 <func_80A47C20+0x200>
    5068:	0010c840 	sll	t9,s0,0x1
    506c:	03191821 	addu	v1,t8,t9
    5070:	84640226 	lh	a0,550(v1)
    5074:	0c000000 	jal	0 <func_80A42D30>
    5078:	afa30024 	sw	v1,36(sp)
    507c:	8fa20048 	lw	v0,72(sp)
    5080:	3c014348 	lui	at,0x4348
    5084:	44818000 	mtc1	at,$f16
    5088:	84480002 	lh	t0,2(v0)
    508c:	8fa30024 	lw	v1,36(sp)
    5090:	46100482 	mul.s	$f18,$f0,$f16
    5094:	44884000 	mtc1	t0,$f8
    5098:	00000000 	nop
    509c:	468042a0 	cvt.s.w	$f10,$f8
    50a0:	46125100 	add.s	$f4,$f10,$f18
    50a4:	4600218d 	trunc.w.s	$f6,$f4
    50a8:	440a3000 	mfc1	t2,$f6
    50ac:	00000000 	nop
    50b0:	a44a0002 	sh	t2,2(v0)
    50b4:	0c000000 	jal	0 <func_80A42D30>
    50b8:	8464024a 	lh	a0,586(v1)
    50bc:	8fa20048 	lw	v0,72(sp)
    50c0:	3c014348 	lui	at,0x4348
    50c4:	44815000 	mtc1	at,$f10
    50c8:	844b0004 	lh	t3,4(v0)
    50cc:	460a0482 	mul.s	$f18,$f0,$f10
    50d0:	448b4000 	mtc1	t3,$f8
    50d4:	00000000 	nop
    50d8:	46804420 	cvt.s.w	$f16,$f8
    50dc:	46128100 	add.s	$f4,$f16,$f18
    50e0:	4600218d 	trunc.w.s	$f6,$f4
    50e4:	440d3000 	mfc1	t5,$f6
    50e8:	00000000 	nop
    50ec:	a44d0004 	sh	t5,4(v0)
    50f0:	8fbf001c 	lw	ra,28(sp)
    50f4:	8fb00018 	lw	s0,24(sp)
    50f8:	27bd0038 	addiu	sp,sp,56
    50fc:	03e00008 	jr	ra
    5100:	00001025 	move	v0,zero

00005104 <func_80A47E34>:
    5104:	27bdffd8 	addiu	sp,sp,-40
    5108:	3c0e0000 	lui	t6,0x0
    510c:	afbf0014 	sw	ra,20(sp)
    5110:	afa40028 	sw	a0,40(sp)
    5114:	afa60030 	sw	a2,48(sp)
    5118:	afa70034 	sw	a3,52(sp)
    511c:	25ce0000 	addiu	t6,t6,0
    5120:	8dd80000 	lw	t8,0(t6)
    5124:	27a40018 	addiu	a0,sp,24
    5128:	24010011 	li	at,17
    512c:	ac980000 	sw	t8,0(a0)
    5130:	8dcf0004 	lw	t7,4(t6)
    5134:	ac8f0004 	sw	t7,4(a0)
    5138:	8dd80008 	lw	t8,8(t6)
    513c:	14a10004 	bne	a1,at,5150 <func_80A47E34+0x4c>
    5140:	ac980008 	sw	t8,8(a0)
    5144:	8fa50038 	lw	a1,56(sp)
    5148:	0c000000 	jal	0 <func_80A42D30>
    514c:	24a50038 	addiu	a1,a1,56
    5150:	8fbf0014 	lw	ra,20(sp)
    5154:	27bd0028 	addiu	sp,sp,40
    5158:	03e00008 	jr	ra
    515c:	00000000 	nop

00005160 <EnGo2_Draw>:
    5160:	27bdff90 	addiu	sp,sp,-112
    5164:	3c0f0000 	lui	t7,0x0
    5168:	afbf002c 	sw	ra,44(sp)
    516c:	afb00028 	sw	s0,40(sp)
    5170:	afa50074 	sw	a1,116(sp)
    5174:	25ef0000 	addiu	t7,t7,0
    5178:	8df90000 	lw	t9,0(t7)
    517c:	8df80004 	lw	t8,4(t7)
    5180:	27ae005c 	addiu	t6,sp,92
    5184:	add90000 	sw	t9,0(t6)
    5188:	add80004 	sw	t8,4(t6)
    518c:	8df8000c 	lw	t8,12(t7)
    5190:	8df90008 	lw	t9,8(t7)
    5194:	3c0a0000 	lui	t2,0x0
    5198:	254a0000 	addiu	t2,t2,0
    519c:	add8000c 	sw	t8,12(t6)
    51a0:	add90008 	sw	t9,8(t6)
    51a4:	8d4b0004 	lw	t3,4(t2)
    51a8:	8d4c0000 	lw	t4,0(t2)
    51ac:	27a90054 	addiu	t1,sp,84
    51b0:	00808025 	move	s0,a0
    51b4:	ad2b0004 	sw	t3,4(t1)
    51b8:	0c000000 	jal	0 <func_80A42D30>
    51bc:	ad2c0000 	sw	t4,0(t1)
    51c0:	0c000000 	jal	0 <func_80A42D30>
    51c4:	00000000 	nop
    51c8:	02002025 	move	a0,s0
    51cc:	0c000000 	jal	0 <func_80A42D30>
    51d0:	8fa50074 	lw	a1,116(sp)
    51d4:	0c000000 	jal	0 <func_80A42D30>
    51d8:	00000000 	nop
    51dc:	8e020190 	lw	v0,400(s0)
    51e0:	3c0d0000 	lui	t5,0x0
    51e4:	25ad0000 	addiu	t5,t5,0
    51e8:	15a20011 	bne	t5,v0,5230 <EnGo2_Draw+0xd0>
    51ec:	3c0e0000 	lui	t6,0x0
    51f0:	44800000 	mtc1	zero,$f0
    51f4:	c6040168 	lwc1	$f4,360(s0)
    51f8:	46040032 	c.eq.s	$f0,$f4
    51fc:	00000000 	nop
    5200:	4500000b 	bc1f	5230 <EnGo2_Draw+0xd0>
    5204:	00000000 	nop
    5208:	c6060164 	lwc1	$f6,356(s0)
    520c:	02002025 	move	a0,s0
    5210:	46060032 	c.eq.s	$f0,$f6
    5214:	00000000 	nop
    5218:	45000005 	bc1f	5230 <EnGo2_Draw+0xd0>
    521c:	00000000 	nop
    5220:	0c000000 	jal	0 <func_80A42D30>
    5224:	8fa50074 	lw	a1,116(sp)
    5228:	10000059 	b	5390 <EnGo2_Draw+0x230>
    522c:	8fbf002c 	lw	ra,44(sp)
    5230:	25ce0000 	addiu	t6,t6,0
    5234:	11c20007 	beq	t6,v0,5254 <EnGo2_Draw+0xf4>
    5238:	3c0f0000 	lui	t7,0x0
    523c:	25ef0000 	addiu	t7,t7,0
    5240:	11e20004 	beq	t7,v0,5254 <EnGo2_Draw+0xf4>
    5244:	3c180000 	lui	t8,0x0
    5248:	27180000 	addiu	t8,t8,0
    524c:	17020006 	bne	t8,v0,5268 <EnGo2_Draw+0x108>
    5250:	8fb90074 	lw	t9,116(sp)
    5254:	02002025 	move	a0,s0
    5258:	0c000000 	jal	0 <func_80A42D30>
    525c:	8fa50074 	lw	a1,116(sp)
    5260:	1000004b 	b	5390 <EnGo2_Draw+0x230>
    5264:	8fbf002c 	lw	ra,44(sp)
    5268:	8f250000 	lw	a1,0(t9)
    526c:	3c060000 	lui	a2,0x0
    5270:	24c60000 	addiu	a2,a2,0
    5274:	27a40040 	addiu	a0,sp,64
    5278:	24070bf7 	li	a3,3063
    527c:	0c000000 	jal	0 <func_80A42D30>
    5280:	afa50050 	sw	a1,80(sp)
    5284:	8fa90074 	lw	t1,116(sp)
    5288:	0c000000 	jal	0 <func_80A42D30>
    528c:	8d240000 	lw	a0,0(t1)
    5290:	8fa80050 	lw	t0,80(sp)
    5294:	3c0bdb06 	lui	t3,0xdb06
    5298:	356b0020 	ori	t3,t3,0x20
    529c:	8d0302c0 	lw	v1,704(t0)
    52a0:	3c060000 	lui	a2,0x0
    52a4:	24c60000 	addiu	a2,a2,0
    52a8:	246a0008 	addiu	t2,v1,8
    52ac:	ad0a02c0 	sw	t2,704(t0)
    52b0:	ac6b0000 	sw	t3,0(v1)
    52b4:	920c0214 	lbu	t4,532(s0)
    52b8:	3c0500ff 	lui	a1,0xff
    52bc:	34a5ffff 	ori	a1,a1,0xffff
    52c0:	000c6880 	sll	t5,t4,0x2
    52c4:	03ad2021 	addu	a0,sp,t5
    52c8:	8c84005c 	lw	a0,92(a0)
    52cc:	3c078000 	lui	a3,0x8000
    52d0:	00047900 	sll	t7,a0,0x4
    52d4:	000fc702 	srl	t8,t7,0x1c
    52d8:	0018c880 	sll	t9,t8,0x2
    52dc:	00d94821 	addu	t1,a2,t9
    52e0:	8d2a0000 	lw	t2,0(t1)
    52e4:	00857024 	and	t6,a0,a1
    52e8:	3c0fdb06 	lui	t7,0xdb06
    52ec:	01ca5821 	addu	t3,t6,t2
    52f0:	01676021 	addu	t4,t3,a3
    52f4:	ac6c0004 	sw	t4,4(v1)
    52f8:	8d0302c0 	lw	v1,704(t0)
    52fc:	35ef0024 	ori	t7,t7,0x24
    5300:	246d0008 	addiu	t5,v1,8
    5304:	ad0d02c0 	sw	t5,704(t0)
    5308:	ac6f0000 	sw	t7,0(v1)
    530c:	92180215 	lbu	t8,533(s0)
    5310:	0018c880 	sll	t9,t8,0x2
    5314:	03b92021 	addu	a0,sp,t9
    5318:	8c840054 	lw	a0,84(a0)
    531c:	3c190000 	lui	t9,0x0
    5320:	27390000 	addiu	t9,t9,0
    5324:	00047100 	sll	t6,a0,0x4
    5328:	000e5702 	srl	t2,t6,0x1c
    532c:	000a5880 	sll	t3,t2,0x2
    5330:	00cb6021 	addu	t4,a2,t3
    5334:	8d8d0000 	lw	t5,0(t4)
    5338:	00854824 	and	t1,a0,a1
    533c:	3c0e0000 	lui	t6,0x0
    5340:	012d7821 	addu	t7,t1,t5
    5344:	01e7c021 	addu	t8,t7,a3
    5348:	ac780004 	sw	t8,4(v1)
    534c:	9207014e 	lbu	a3,334(s0)
    5350:	8e06016c 	lw	a2,364(s0)
    5354:	8e050150 	lw	a1,336(s0)
    5358:	25ce0000 	addiu	t6,t6,0
    535c:	afae0014 	sw	t6,20(sp)
    5360:	afb00018 	sw	s0,24(sp)
    5364:	afb90010 	sw	t9,16(sp)
    5368:	0c000000 	jal	0 <func_80A42D30>
    536c:	8fa40074 	lw	a0,116(sp)
    5370:	8faa0074 	lw	t2,116(sp)
    5374:	3c060000 	lui	a2,0x0
    5378:	24c60000 	addiu	a2,a2,0
    537c:	27a40040 	addiu	a0,sp,64
    5380:	24070c09 	li	a3,3081
    5384:	0c000000 	jal	0 <func_80A42D30>
    5388:	8d450000 	lw	a1,0(t2)
    538c:	8fbf002c 	lw	ra,44(sp)
    5390:	8fb00028 	lw	s0,40(sp)
    5394:	27bd0070 	addiu	sp,sp,112
    5398:	03e00008 	jr	ra
    539c:	00000000 	nop
