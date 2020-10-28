
build/src/overlays/actors/ovl_En_Tk/z_en_tk.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTkEff_Create>:
       0:	24820310 	addiu	v0,a0,784
       4:	24040001 	li	a0,1
       8:	00001825 	move	v1,zero
       c:	904e0000 	lbu	t6,0(v0)
      10:	24630001 	addiu	v1,v1,1
      14:	00031c00 	sll	v1,v1,0x10
      18:	108e001d 	beq	a0,t6,90 <EnTkEff_Create+0x90>
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
      90:	28610014 	slti	at,v1,20
      94:	1420ffdd 	bnez	at,c <EnTkEff_Create+0xc>
      98:	24420038 	addiu	v0,v0,56
      9c:	03e00008 	jr	ra
      a0:	00000000 	nop

000000a4 <EnTkEff_Update>:
      a4:	27bdffd0 	addiu	sp,sp,-48
      a8:	f7b60018 	sdc1	$f22,24(sp)
      ac:	3c010000 	lui	at,0x0
      b0:	c436007c 	lwc1	$f22,124(at)
      b4:	afb10028 	sw	s1,40(sp)
      b8:	afb00024 	sw	s0,36(sp)
      bc:	f7b40010 	sdc1	$f20,16(sp)
      c0:	3c010000 	lui	at,0x0
      c4:	afbf002c 	sw	ra,44(sp)
      c8:	24900310 	addiu	s0,a0,784
      cc:	c4340080 	lwc1	$f20,128(at)
      d0:	00008825 	move	s1,zero
      d4:	920e0000 	lbu	t6,0(s0)
      d8:	51c00029 	beqzl	t6,180 <EnTkEff_Update+0xdc>
      dc:	26310001 	addiu	s1,s1,1
      e0:	920f0001 	lbu	t7,1(s0)
      e4:	25f8ffff 	addiu	t8,t7,-1
      e8:	331900ff 	andi	t9,t8,0xff
      ec:	17200002 	bnez	t9,f8 <EnTkEff_Update+0x54>
      f0:	a2180001 	sb	t8,1(s0)
      f4:	a2000000 	sb	zero,0(s0)
      f8:	0c000000 	jal	0 <EnTkEff_Create>
      fc:	00000000 	nop
     100:	46140102 	mul.s	$f4,$f0,$f20
     104:	46162181 	sub.s	$f6,$f4,$f22
     108:	0c000000 	jal	0 <EnTkEff_Create>
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
     188:	2a210014 	slti	at,s1,20
     18c:	1420ffd1 	bnez	at,d4 <EnTkEff_Update+0x30>
     190:	26100038 	addiu	s0,s0,56
     194:	8fbf002c 	lw	ra,44(sp)
     198:	d7b40010 	ldc1	$f20,16(sp)
     19c:	d7b60018 	ldc1	$f22,24(sp)
     1a0:	8fb00024 	lw	s0,36(sp)
     1a4:	8fb10028 	lw	s1,40(sp)
     1a8:	03e00008 	jr	ra
     1ac:	27bd0030 	addiu	sp,sp,48

000001b0 <EnTkEff_Draw>:
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
     1f0:	24920310 	addiu	s2,a0,784
     1f4:	3c060000 	lui	a2,0x0
     1f8:	24c60000 	addiu	a2,a2,0
     1fc:	27a40088 	addiu	a0,sp,136
     200:	24070072 	li	a3,114
     204:	0c000000 	jal	0 <EnTkEff_Create>
     208:	00a08025 	move	s0,a1
     20c:	0000b825 	move	s7,zero
     210:	0c000000 	jal	0 <EnTkEff_Create>
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
     244:	11c0008a 	beqz	t6,470 <EnTkEff_Draw+0x2c0>
     248:	03c19821 	addu	s3,s8,at
     24c:	3c150000 	lui	s5,0x0
     250:	16e00014 	bnez	s7,2a4 <EnTkEff_Draw+0xf4>
     254:	26b50000 	addiu	s5,s5,0
     258:	3c110000 	lui	s1,0x0
     25c:	26310000 	addiu	s1,s1,0
     260:	8e0402d0 	lw	a0,720(s0)
     264:	00002825 	move	a1,zero
     268:	0c000000 	jal	0 <EnTkEff_Create>
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
     2b0:	05210004 	bgez	t1,2c4 <EnTkEff_Draw+0x114>
     2b4:	468021a0 	cvt.s.w	$f6,$f4
     2b8:	44814000 	mtc1	at,$f8
     2bc:	00000000 	nop
     2c0:	46083180 	add.s	$f6,$f6,$f8
     2c4:	924a0002 	lbu	t2,2(s2)
     2c8:	3c014f80 	lui	at,0x4f80
     2cc:	448a5000 	mtc1	t2,$f10
     2d0:	05410004 	bgez	t2,2e4 <EnTkEff_Draw+0x134>
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
     34c:	0c000000 	jal	0 <EnTkEff_Create>
     350:	c64c0014 	lwc1	$f12,20(s2)
     354:	0c000000 	jal	0 <EnTkEff_Create>
     358:	02602025 	move	a0,s3
     35c:	c64c0004 	lwc1	$f12,4(s2)
     360:	4406b000 	mfc1	a2,$f22
     364:	24070001 	li	a3,1
     368:	0c000000 	jal	0 <EnTkEff_Create>
     36c:	46006386 	mov.s	$f14,$f12
     370:	8e0202d0 	lw	v0,720(s0)
     374:	3c09da38 	lui	t1,0xda38
     378:	35290003 	ori	t1,t1,0x3
     37c:	24480008 	addiu	t0,v0,8
     380:	ae0802d0 	sw	t0,720(s0)
     384:	3c050000 	lui	a1,0x0
     388:	ac490000 	sw	t1,0(v0)
     38c:	8fc40000 	lw	a0,0(s8)
     390:	24a50014 	addiu	a1,a1,20
     394:	2406008c 	li	a2,140
     398:	0c000000 	jal	0 <EnTkEff_Create>
     39c:	00408825 	move	s1,v0
     3a0:	ae220004 	sw	v0,4(s1)
     3a4:	924a0001 	lbu	t2,1(s2)
     3a8:	3c014f80 	lui	at,0x4f80
     3ac:	448a9000 	mtc1	t2,$f18
     3b0:	05410004 	bgez	t2,3c4 <EnTkEff_Draw+0x214>
     3b4:	46809420 	cvt.s.w	$f16,$f18
     3b8:	44813000 	mtc1	at,$f6
     3bc:	00000000 	nop
     3c0:	46068400 	add.s	$f16,$f16,$f6
     3c4:	924b0002 	lbu	t3,2(s2)
     3c8:	3c014f80 	lui	at,0x4f80
     3cc:	448b2000 	mtc1	t3,$f4
     3d0:	05610004 	bgez	t3,3e4 <EnTkEff_Draw+0x234>
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
     430:	8c840020 	lw	a0,32(a0)
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
     47c:	2a810014 	slti	at,s4,20
     480:	1420ff6d 	bnez	at,238 <EnTkEff_Draw+0x88>
     484:	26520038 	addiu	s2,s2,56
     488:	3c060000 	lui	a2,0x0
     48c:	24c60028 	addiu	a2,a2,40
     490:	27a40088 	addiu	a0,sp,136
     494:	8fc50000 	lw	a1,0(s8)
     498:	0c000000 	jal	0 <EnTkEff_Create>
     49c:	2407009a 	li	a3,154
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

000004dc <EnTkEff_CreateDflt>:
     4dc:	27bdffb8 	addiu	sp,sp,-72
     4e0:	3c0f0000 	lui	t7,0x0
     4e4:	afbf0024 	sw	ra,36(sp)
     4e8:	afa40048 	sw	a0,72(sp)
     4ec:	afa5004c 	sw	a1,76(sp)
     4f0:	afa60050 	sw	a2,80(sp)
     4f4:	afa70054 	sw	a3,84(sp)
     4f8:	25ef0040 	addiu	t7,t7,64
     4fc:	8df90000 	lw	t9,0(t7)
     500:	27ae003c 	addiu	t6,sp,60
     504:	8df80004 	lw	t8,4(t7)
     508:	add90000 	sw	t9,0(t6)
     50c:	8df90008 	lw	t9,8(t7)
     510:	3c090000 	lui	t1,0x0
     514:	2529004c 	addiu	t1,t1,76
     518:	add80004 	sw	t8,4(t6)
     51c:	add90008 	sw	t9,8(t6)
     520:	8d2b0000 	lw	t3,0(t1)
     524:	27a80030 	addiu	t0,sp,48
     528:	8d2a0004 	lw	t2,4(t1)
     52c:	ad0b0000 	sw	t3,0(t0)
     530:	8d2b0008 	lw	t3,8(t1)
     534:	ad0a0004 	sw	t2,4(t0)
     538:	0c000000 	jal	0 <EnTkEff_Create>
     53c:	ad0b0008 	sw	t3,8(t0)
     540:	c7a6005c 	lwc1	$f6,92(sp)
     544:	c7a40034 	lwc1	$f4,52(sp)
     548:	93ac0053 	lbu	t4,83(sp)
     54c:	46060202 	mul.s	$f8,$f0,$f6
     550:	c7b00054 	lwc1	$f16,84(sp)
     554:	c7b20058 	lwc1	$f18,88(sp)
     558:	8fa40048 	lw	a0,72(sp)
     55c:	8fa5004c 	lw	a1,76(sp)
     560:	27a6003c 	addiu	a2,sp,60
     564:	27a70030 	addiu	a3,sp,48
     568:	46082280 	add.s	$f10,$f4,$f8
     56c:	afac0010 	sw	t4,16(sp)
     570:	e7b00014 	swc1	$f16,20(sp)
     574:	e7b20018 	swc1	$f18,24(sp)
     578:	0c000000 	jal	0 <EnTkEff_Create>
     57c:	e7aa0034 	swc1	$f10,52(sp)
     580:	8fbf0024 	lw	ra,36(sp)
     584:	27bd0048 	addiu	sp,sp,72
     588:	00001025 	move	v0,zero
     58c:	03e00008 	jr	ra
     590:	00000000 	nop

00000594 <EnTk_RestAnim>:
     594:	27bdffd8 	addiu	sp,sp,-40
     598:	afa40028 	sw	a0,40(sp)
     59c:	afbf0024 	sw	ra,36(sp)
     5a0:	3c040000 	lui	a0,0x0
     5a4:	afa5002c 	sw	a1,44(sp)
     5a8:	0c000000 	jal	0 <EnTkEff_Create>
     5ac:	24840000 	addiu	a0,a0,0
     5b0:	44822000 	mtc1	v0,$f4
     5b4:	3c01c120 	lui	at,0xc120
     5b8:	44814000 	mtc1	at,$f8
     5bc:	468021a0 	cvt.s.w	$f6,$f4
     5c0:	8fa40028 	lw	a0,40(sp)
     5c4:	3c050000 	lui	a1,0x0
     5c8:	24a50000 	addiu	a1,a1,0
     5cc:	3c063f80 	lui	a2,0x3f80
     5d0:	24070000 	li	a3,0
     5d4:	e7a60010 	swc1	$f6,16(sp)
     5d8:	afa00014 	sw	zero,20(sp)
     5dc:	e7a80018 	swc1	$f8,24(sp)
     5e0:	0c000000 	jal	0 <EnTkEff_Create>
     5e4:	2484014c 	addiu	a0,a0,332
     5e8:	2404003c 	li	a0,60
     5ec:	0c000000 	jal	0 <EnTkEff_Create>
     5f0:	2405003c 	li	a1,60
     5f4:	8fa30028 	lw	v1,40(sp)
     5f8:	44805000 	mtc1	zero,$f10
     5fc:	a462021c 	sh	v0,540(v1)
     600:	e46a0068 	swc1	$f10,104(v1)
     604:	8fbf0024 	lw	ra,36(sp)
     608:	27bd0028 	addiu	sp,sp,40
     60c:	03e00008 	jr	ra
     610:	00000000 	nop

00000614 <EnTk_WalkAnim>:
     614:	27bdffd8 	addiu	sp,sp,-40
     618:	afa40028 	sw	a0,40(sp)
     61c:	afbf0024 	sw	ra,36(sp)
     620:	3c040000 	lui	a0,0x0
     624:	afa5002c 	sw	a1,44(sp)
     628:	0c000000 	jal	0 <EnTkEff_Create>
     62c:	24840000 	addiu	a0,a0,0
     630:	44822000 	mtc1	v0,$f4
     634:	3c01c120 	lui	at,0xc120
     638:	44814000 	mtc1	at,$f8
     63c:	468021a0 	cvt.s.w	$f6,$f4
     640:	8fa40028 	lw	a0,40(sp)
     644:	3c050000 	lui	a1,0x0
     648:	24a50000 	addiu	a1,a1,0
     64c:	3c063f80 	lui	a2,0x3f80
     650:	24070000 	li	a3,0
     654:	e7a60010 	swc1	$f6,16(sp)
     658:	afa00014 	sw	zero,20(sp)
     65c:	e7a80018 	swc1	$f8,24(sp)
     660:	0c000000 	jal	0 <EnTkEff_Create>
     664:	2484014c 	addiu	a0,a0,332
     668:	240400f0 	li	a0,240
     66c:	0c000000 	jal	0 <EnTkEff_Create>
     670:	240500f0 	li	a1,240
     674:	8fae0028 	lw	t6,40(sp)
     678:	a5c2021c 	sh	v0,540(t6)
     67c:	8fbf0024 	lw	ra,36(sp)
     680:	27bd0028 	addiu	sp,sp,40
     684:	03e00008 	jr	ra
     688:	00000000 	nop

0000068c <EnTk_DigAnim>:
     68c:	27bdffd8 	addiu	sp,sp,-40
     690:	afa40028 	sw	a0,40(sp)
     694:	afbf0024 	sw	ra,36(sp)
     698:	3c040000 	lui	a0,0x0
     69c:	afa5002c 	sw	a1,44(sp)
     6a0:	0c000000 	jal	0 <EnTkEff_Create>
     6a4:	24840000 	addiu	a0,a0,0
     6a8:	44822000 	mtc1	v0,$f4
     6ac:	3c01c120 	lui	at,0xc120
     6b0:	44814000 	mtc1	at,$f8
     6b4:	468021a0 	cvt.s.w	$f6,$f4
     6b8:	8fa40028 	lw	a0,40(sp)
     6bc:	3c050000 	lui	a1,0x0
     6c0:	24a50000 	addiu	a1,a1,0
     6c4:	3c063f80 	lui	a2,0x3f80
     6c8:	24070000 	li	a3,0
     6cc:	e7a60010 	swc1	$f6,16(sp)
     6d0:	afa00014 	sw	zero,20(sp)
     6d4:	e7a80018 	swc1	$f8,24(sp)
     6d8:	0c000000 	jal	0 <EnTkEff_Create>
     6dc:	2484014c 	addiu	a0,a0,332
     6e0:	8fa40028 	lw	a0,40(sp)
     6e4:	0c000000 	jal	0 <EnTkEff_Create>
     6e8:	8fa5002c 	lw	a1,44(sp)
     6ec:	04400003 	bltz	v0,6fc <EnTk_DigAnim+0x70>
     6f0:	8faf0028 	lw	t7,40(sp)
     6f4:	240e0001 	li	t6,1
     6f8:	a1ee0208 	sb	t6,520(t7)
     6fc:	8fbf0024 	lw	ra,36(sp)
     700:	27bd0028 	addiu	sp,sp,40
     704:	03e00008 	jr	ra
     708:	00000000 	nop

0000070c <EnTk_UpdateEyes>:
     70c:	27bdffe8 	addiu	sp,sp,-24
     710:	afbf0014 	sw	ra,20(sp)
     714:	84820224 	lh	v0,548(a0)
     718:	00803025 	move	a2,a0
     71c:	14400003 	bnez	v0,72c <EnTk_UpdateEyes+0x20>
     720:	244effff 	addiu	t6,v0,-1
     724:	10000003 	b	734 <EnTk_UpdateEyes+0x28>
     728:	00001825 	move	v1,zero
     72c:	a4ce0224 	sh	t6,548(a2)
     730:	84c30224 	lh	v1,548(a2)
     734:	54600023 	bnezl	v1,7c4 <EnTk_UpdateEyes+0xb8>
     738:	8fbf0014 	lw	ra,20(sp)
     73c:	84cf0222 	lh	t7,546(a2)
     740:	25f80001 	addiu	t8,t7,1
     744:	a4d80222 	sh	t8,546(a2)
     748:	84d90222 	lh	t9,546(a2)
     74c:	2b210003 	slti	at,t9,3
     750:	5420001c 	bnezl	at,7c4 <EnTk_UpdateEyes+0xb8>
     754:	8fbf0014 	lw	ra,20(sp)
     758:	84c80218 	lh	t0,536(a2)
     75c:	2404001e 	li	a0,30
     760:	2405001e 	li	a1,30
     764:	2509ffff 	addiu	t1,t0,-1
     768:	a4c90218 	sh	t1,536(a2)
     76c:	84ca0218 	lh	t2,536(a2)
     770:	05430013 	bgezl	t2,7c0 <EnTk_UpdateEyes+0xb4>
     774:	a4c00222 	sh	zero,546(a2)
     778:	0c000000 	jal	0 <EnTkEff_Create>
     77c:	afa60018 	sw	a2,24(sp)
     780:	8fa60018 	lw	a2,24(sp)
     784:	240b0002 	li	t3,2
     788:	a4c20224 	sh	v0,548(a2)
     78c:	0c000000 	jal	0 <EnTkEff_Create>
     790:	a4cb0218 	sh	t3,536(a2)
     794:	3c013f00 	lui	at,0x3f00
     798:	44812000 	mtc1	at,$f4
     79c:	8fa60018 	lw	a2,24(sp)
     7a0:	4600203c 	c.lt.s	$f4,$f0
     7a4:	00000000 	nop
     7a8:	45020005 	bc1fl	7c0 <EnTk_UpdateEyes+0xb4>
     7ac:	a4c00222 	sh	zero,546(a2)
     7b0:	84cc0218 	lh	t4,536(a2)
     7b4:	258d0001 	addiu	t5,t4,1
     7b8:	a4cd0218 	sh	t5,536(a2)
     7bc:	a4c00222 	sh	zero,546(a2)
     7c0:	8fbf0014 	lw	ra,20(sp)
     7c4:	27bd0018 	addiu	sp,sp,24
     7c8:	03e00008 	jr	ra
     7cc:	00000000 	nop

000007d0 <EnTk_CheckFacingPlayer>:
     7d0:	3c010000 	lui	at,0x0
     7d4:	c4240084 	lwc1	$f4,132(at)
     7d8:	c486008c 	lwc1	$f6,140(a0)
     7dc:	4606203c 	c.lt.s	$f4,$f6
     7e0:	00000000 	nop
     7e4:	45020004 	bc1fl	7f8 <EnTk_CheckFacingPlayer+0x28>
     7e8:	848200b6 	lh	v0,182(a0)
     7ec:	03e00008 	jr	ra
     7f0:	00001025 	move	v0,zero
     7f4:	848200b6 	lh	v0,182(a0)
     7f8:	848e021e 	lh	t6,542(a0)
     7fc:	848f0226 	lh	t7,550(a0)
     800:	8498008a 	lh	t8,138(a0)
     804:	004e1023 	subu	v0,v0,t6
     808:	00021400 	sll	v0,v0,0x10
     80c:	00021403 	sra	v0,v0,0x10
     810:	004f1023 	subu	v0,v0,t7
     814:	00021400 	sll	v0,v0,0x10
     818:	00021403 	sra	v0,v0,0x10
     81c:	03021823 	subu	v1,t8,v0
     820:	00031c00 	sll	v1,v1,0x10
     824:	00031c03 	sra	v1,v1,0x10
     828:	04600003 	bltz	v1,838 <EnTk_CheckFacingPlayer+0x68>
     82c:	00031023 	negu	v0,v1
     830:	10000001 	b	838 <EnTk_CheckFacingPlayer+0x68>
     834:	00601025 	move	v0,v1
     838:	28411554 	slti	at,v0,5460
     83c:	10200003 	beqz	at,84c <EnTk_CheckFacingPlayer+0x7c>
     840:	00001025 	move	v0,zero
     844:	03e00008 	jr	ra
     848:	24020001 	li	v0,1
     84c:	03e00008 	jr	ra
     850:	00000000 	nop

00000854 <EnTk_CheckNextSpot>:
     854:	27bdffc0 	addiu	sp,sp,-64
     858:	afbf003c 	sw	ra,60(sp)
     85c:	afb20038 	sw	s2,56(sp)
     860:	afb10034 	sw	s1,52(sp)
     864:	afb00030 	sw	s0,48(sp)
     868:	f7b80028 	sdc1	$f24,40(sp)
     86c:	f7b60020 	sdc1	$f22,32(sp)
     870:	f7b40018 	sdc1	$f20,24(sp)
     874:	8cb01c64 	lw	s0,7268(a1)
     878:	00808825 	move	s1,a0
     87c:	3c014120 	lui	at,0x4120
     880:	52000025 	beqzl	s0,918 <EnTk_CheckNextSpot+0xc4>
     884:	2402ffff 	li	v0,-1
     888:	4481c000 	mtc1	at,$f24
     88c:	3c014220 	lui	at,0x4220
     890:	4481b000 	mtc1	at,$f22
     894:	24120196 	li	s2,406
     898:	860e0000 	lh	t6,0(s0)
     89c:	524e0004 	beql	s2,t6,8b0 <EnTk_CheckNextSpot+0x5c>
     8a0:	8e2f0210 	lw	t7,528(s1)
     8a4:	10000019 	b	90c <EnTk_CheckNextSpot+0xb8>
     8a8:	8e100124 	lw	s0,292(s0)
     8ac:	8e2f0210 	lw	t7,528(s1)
     8b0:	02202025 	move	a0,s1
     8b4:	560f0004 	bnel	s0,t7,8c8 <EnTk_CheckNextSpot+0x74>
     8b8:	c6040028 	lwc1	$f4,40(s0)
     8bc:	10000013 	b	90c <EnTk_CheckNextSpot+0xb8>
     8c0:	8e100124 	lw	s0,292(s0)
     8c4:	c6040028 	lwc1	$f4,40(s0)
     8c8:	c6260080 	lwc1	$f6,128(s1)
     8cc:	02002825 	move	a1,s0
     8d0:	0c000000 	jal	0 <EnTkEff_Create>
     8d4:	46062501 	sub.s	$f20,$f4,$f6
     8d8:	4600b03c 	c.lt.s	$f22,$f0
     8dc:	00000000 	nop
     8e0:	45010005 	bc1t	8f8 <EnTk_CheckNextSpot+0xa4>
     8e4:	00000000 	nop
     8e8:	4614c03c 	c.lt.s	$f24,$f20
     8ec:	00000000 	nop
     8f0:	45020004 	bc1fl	904 <EnTk_CheckNextSpot+0xb0>
     8f4:	ae300210 	sw	s0,528(s1)
     8f8:	10000004 	b	90c <EnTk_CheckNextSpot+0xb8>
     8fc:	8e100124 	lw	s0,292(s0)
     900:	ae300210 	sw	s0,528(s1)
     904:	10000004 	b	918 <EnTk_CheckNextSpot+0xc4>
     908:	8602001c 	lh	v0,28(s0)
     90c:	5600ffe3 	bnezl	s0,89c <EnTk_CheckNextSpot+0x48>
     910:	860e0000 	lh	t6,0(s0)
     914:	2402ffff 	li	v0,-1
     918:	8fbf003c 	lw	ra,60(sp)
     91c:	d7b40018 	ldc1	$f20,24(sp)
     920:	d7b60020 	ldc1	$f22,32(sp)
     924:	d7b80028 	ldc1	$f24,40(sp)
     928:	8fb00030 	lw	s0,48(sp)
     92c:	8fb10034 	lw	s1,52(sp)
     930:	8fb20038 	lw	s2,56(sp)
     934:	03e00008 	jr	ra
     938:	27bd0040 	addiu	sp,sp,64

0000093c <EnTk_CheckCurrentSpot>:
     93c:	27bdffe0 	addiu	sp,sp,-32
     940:	afbf0014 	sw	ra,20(sp)
     944:	8c850210 	lw	a1,528(a0)
     948:	50a00017 	beqzl	a1,9a8 <EnTk_CheckCurrentSpot+0x6c>
     94c:	8fbf0014 	lw	ra,20(sp)
     950:	c4a40028 	lwc1	$f4,40(a1)
     954:	c4860080 	lwc1	$f6,128(a0)
     958:	afa40020 	sw	a0,32(sp)
     95c:	46062201 	sub.s	$f8,$f4,$f6
     960:	0c000000 	jal	0 <EnTkEff_Create>
     964:	e7a80018 	swc1	$f8,24(sp)
     968:	3c014220 	lui	at,0x4220
     96c:	44815000 	mtc1	at,$f10
     970:	8fa40020 	lw	a0,32(sp)
     974:	3c014120 	lui	at,0x4120
     978:	4600503c 	c.lt.s	$f10,$f0
     97c:	c7b20018 	lwc1	$f18,24(sp)
     980:	45030008 	bc1tl	9a4 <EnTk_CheckCurrentSpot+0x68>
     984:	ac800210 	sw	zero,528(a0)
     988:	44818000 	mtc1	at,$f16
     98c:	00000000 	nop
     990:	4612803c 	c.lt.s	$f16,$f18
     994:	00000000 	nop
     998:	45020003 	bc1fl	9a8 <EnTk_CheckCurrentSpot+0x6c>
     99c:	8fbf0014 	lw	ra,20(sp)
     9a0:	ac800210 	sw	zero,528(a0)
     9a4:	8fbf0014 	lw	ra,20(sp)
     9a8:	27bd0020 	addiu	sp,sp,32
     9ac:	03e00008 	jr	ra
     9b0:	00000000 	nop

000009b4 <EnTk_Step>:
     9b4:	27bdffd0 	addiu	sp,sp,-48
     9b8:	3c0f0000 	lui	t7,0x0
     9bc:	afbf0014 	sw	ra,20(sp)
     9c0:	afa50034 	sw	a1,52(sp)
     9c4:	25ef0090 	addiu	t7,t7,144
     9c8:	8df90000 	lw	t9,0(t7)
     9cc:	8df80004 	lw	t8,4(t7)
     9d0:	27ae0028 	addiu	t6,sp,40
     9d4:	add90000 	sw	t9,0(t6)
     9d8:	add80004 	sw	t8,4(t6)
     9dc:	44807000 	mtc1	zero,$f14
     9e0:	c4800164 	lwc1	$f0,356(a0)
     9e4:	3c0141c8 	lui	at,0x41c8
     9e8:	240538b8 	li	a1,14520
     9ec:	46007032 	c.eq.s	$f14,$f0
     9f0:	00000000 	nop
     9f4:	45010007 	bc1t	a14 <EnTk_Step+0x60>
     9f8:	00000000 	nop
     9fc:	44812000 	mtc1	at,$f4
     a00:	00000000 	nop
     a04:	46002032 	c.eq.s	$f4,$f0
     a08:	00000000 	nop
     a0c:	45020006 	bc1fl	a28 <EnTk_Step+0x74>
     a10:	8c890154 	lw	t1,340(a0)
     a14:	0c000000 	jal	0 <EnTkEff_Create>
     a18:	afa40030 	sw	a0,48(sp)
     a1c:	44807000 	mtc1	zero,$f14
     a20:	8fa40030 	lw	a0,48(sp)
     a24:	8c890154 	lw	t1,340(a0)
     a28:	3c080000 	lui	t0,0x0
     a2c:	25080000 	addiu	t0,t0,0
     a30:	11090003 	beq	t0,t1,a40 <EnTk_Step+0x8c>
     a34:	27a20028 	addiu	v0,sp,40
     a38:	10000024 	b	acc <EnTk_Step+0x118>
     a3c:	46007006 	mov.s	$f0,$f14
     a40:	3c014140 	lui	at,0x4140
     a44:	44816000 	mtc1	at,$f12
     a48:	c4820164 	lwc1	$f2,356(a0)
     a4c:	27a30030 	addiu	v1,sp,48
     a50:	c4400000 	lwc1	$f0,0(v0)
     a54:	460c0180 	add.s	$f6,$f0,$f12
     a58:	4606103c 	c.lt.s	$f2,$f6
     a5c:	00000000 	nop
     a60:	45020006 	bc1fl	a7c <EnTk_Step+0xc8>
     a64:	24420004 	addiu	v0,v0,4
     a68:	4602003e 	c.le.s	$f0,$f2
     a6c:	00000000 	nop
     a70:	45030005 	bc1tl	a88 <EnTk_Step+0xd4>
     a74:	27aa0030 	addiu	t2,sp,48
     a78:	24420004 	addiu	v0,v0,4
     a7c:	5443fff5 	bnel	v0,v1,a54 <EnTk_Step+0xa0>
     a80:	c4400000 	lwc1	$f0,0(v0)
     a84:	27aa0030 	addiu	t2,sp,48
     a88:	004a082b 	sltu	at,v0,t2
     a8c:	54200004 	bnezl	at,aa0 <EnTk_Step+0xec>
     a90:	c4480000 	lwc1	$f8,0(v0)
     a94:	1000000d 	b	acc <EnTk_Step+0x118>
     a98:	46007006 	mov.s	$f0,$f14
     a9c:	c4480000 	lwc1	$f8,0(v0)
     aa0:	3c010000 	lui	at,0x0
     aa4:	c4300088 	lwc1	$f16,136(at)
     aa8:	46081281 	sub.s	$f10,$f2,$f8
     aac:	46105082 	mul.s	$f2,$f10,$f16
     ab0:	4600148d 	trunc.w.s	$f18,$f2
     ab4:	44049000 	mfc1	a0,$f18
     ab8:	00000000 	nop
     abc:	00042400 	sll	a0,a0,0x10
     ac0:	0c000000 	jal	0 <EnTkEff_Create>
     ac4:	00042403 	sra	a0,a0,0x10
     ac8:	46000000 	add.s	$f0,$f0,$f0
     acc:	8fbf0014 	lw	ra,20(sp)
     ad0:	27bd0030 	addiu	sp,sp,48
     ad4:	03e00008 	jr	ra
     ad8:	00000000 	nop

00000adc <EnTk_Orient>:
     adc:	27bdffc8 	addiu	sp,sp,-56
     ae0:	afbf0024 	sw	ra,36(sp)
     ae4:	afb00020 	sw	s0,32(sp)
     ae8:	848e001c 	lh	t6,28(a0)
     aec:	00808025 	move	s0,a0
     af0:	3c040001 	lui	a0,0x1
     af4:	05c10003 	bgez	t6,b04 <EnTk_Orient+0x28>
     af8:	00852021 	addu	a0,a0,a1
     afc:	1000004e 	b	c38 <EnTk_Orient+0x15c>
     b00:	24020001 	li	v0,1
     b04:	8c841e08 	lw	a0,7688(a0)
     b08:	3c080000 	lui	t0,0x0
     b0c:	860a0228 	lh	t2,552(s0)
     b10:	8c830004 	lw	v1,4(a0)
     b14:	3c0100ff 	lui	at,0xff
     b18:	3421ffff 	ori	at,at,0xffff
     b1c:	00037900 	sll	t7,v1,0x4
     b20:	000fc702 	srl	t8,t7,0x1c
     b24:	0018c880 	sll	t9,t8,0x2
     b28:	01194021 	addu	t0,t0,t9
     b2c:	8d080000 	lw	t0,0(t0)
     b30:	00614824 	and	t1,v1,at
     b34:	000a5880 	sll	t3,t2,0x2
     b38:	3c018000 	lui	at,0x8000
     b3c:	016a5823 	subu	t3,t3,t2
     b40:	01091021 	addu	v0,t0,t1
     b44:	00411021 	addu	v0,v0,at
     b48:	000b5840 	sll	t3,t3,0x1
     b4c:	004b1021 	addu	v0,v0,t3
     b50:	844c0000 	lh	t4,0(v0)
     b54:	844d0004 	lh	t5,4(v0)
     b58:	c6080024 	lwc1	$f8,36(s0)
     b5c:	448c2000 	mtc1	t4,$f4
     b60:	448d5000 	mtc1	t5,$f10
     b64:	c612002c 	lwc1	$f18,44(s0)
     b68:	468021a0 	cvt.s.w	$f6,$f4
     b6c:	afa40034 	sw	a0,52(sp)
     b70:	46805420 	cvt.s.w	$f16,$f10
     b74:	46083301 	sub.s	$f12,$f6,$f8
     b78:	46128381 	sub.s	$f14,$f16,$f18
     b7c:	e7ac002c 	swc1	$f12,44(sp)
     b80:	0c000000 	jal	0 <EnTkEff_Create>
     b84:	e7ae0028 	swc1	$f14,40(sp)
     b88:	3c010000 	lui	at,0x0
     b8c:	c424008c 	lwc1	$f4,140(at)
     b90:	240f0001 	li	t7,1
     b94:	afaf0010 	sw	t7,16(sp)
     b98:	46040182 	mul.s	$f6,$f0,$f4
     b9c:	260400b6 	addiu	a0,s0,182
     ba0:	2406000a 	li	a2,10
     ba4:	240703e8 	li	a3,1000
     ba8:	4600320d 	trunc.w.s	$f8,$f6
     bac:	44054000 	mfc1	a1,$f8
     bb0:	00000000 	nop
     bb4:	00052c00 	sll	a1,a1,0x10
     bb8:	0c000000 	jal	0 <EnTkEff_Create>
     bbc:	00052c03 	sra	a1,a1,0x10
     bc0:	c7ac002c 	lwc1	$f12,44(sp)
     bc4:	c7ae0028 	lwc1	$f14,40(sp)
     bc8:	8a1900b4 	lwl	t9,180(s0)
     bcc:	460c6282 	mul.s	$f10,$f12,$f12
     bd0:	3c014120 	lui	at,0x4120
     bd4:	44812000 	mtc1	at,$f4
     bd8:	460e7402 	mul.s	$f16,$f14,$f14
     bdc:	9a1900b7 	lwr	t9,183(s0)
     be0:	24020001 	li	v0,1
     be4:	aa190030 	swl	t9,48(s0)
     be8:	ba190033 	swr	t9,51(s0)
     bec:	961900b8 	lhu	t9,184(s0)
     bf0:	46105480 	add.s	$f18,$f10,$f16
     bf4:	a6190034 	sh	t9,52(s0)
     bf8:	4604903c 	c.lt.s	$f18,$f4
     bfc:	00000000 	nop
     c00:	4500000d 	bc1f	c38 <EnTk_Orient+0x15c>
     c04:	00000000 	nop
     c08:	86080228 	lh	t0,552(s0)
     c0c:	25090001 	addiu	t1,t0,1
     c10:	a6090228 	sh	t1,552(s0)
     c14:	8fab0034 	lw	t3,52(sp)
     c18:	860a0228 	lh	t2,552(s0)
     c1c:	916c0000 	lbu	t4,0(t3)
     c20:	014c082a 	slt	at,t2,t4
     c24:	14200002 	bnez	at,c30 <EnTk_Orient+0x154>
     c28:	00000000 	nop
     c2c:	a6000228 	sh	zero,552(s0)
     c30:	10000001 	b	c38 <EnTk_Orient+0x15c>
     c34:	00001025 	move	v0,zero
     c38:	8fbf0024 	lw	ra,36(sp)
     c3c:	8fb00020 	lw	s0,32(sp)
     c40:	27bd0038 	addiu	sp,sp,56
     c44:	03e00008 	jr	ra
     c48:	00000000 	nop

00000c4c <func_80B1C54C>:
     c4c:	27bdffe8 	addiu	sp,sp,-24
     c50:	afbf0014 	sw	ra,20(sp)
     c54:	afa5001c 	sw	a1,28(sp)
     c58:	0c000000 	jal	0 <EnTkEff_Create>
     c5c:	2405000e 	li	a1,14
     c60:	10400003 	beqz	v0,c70 <func_80B1C54C+0x24>
     c64:	3043ffff 	andi	v1,v0,0xffff
     c68:	10000009 	b	c90 <func_80B1C54C+0x44>
     c6c:	00601025 	move	v0,v1
     c70:	3c0e0000 	lui	t6,0x0
     c74:	95ce0f12 	lhu	t6,3858(t6)
     c78:	24025018 	li	v0,20504
     c7c:	31cf0200 	andi	t7,t6,0x200
     c80:	11e00003 	beqz	t7,c90 <func_80B1C54C+0x44>
     c84:	00000000 	nop
     c88:	10000001 	b	c90 <func_80B1C54C+0x44>
     c8c:	24025019 	li	v0,20505
     c90:	8fbf0014 	lw	ra,20(sp)
     c94:	27bd0018 	addiu	sp,sp,24
     c98:	03e00008 	jr	ra
     c9c:	00000000 	nop

00000ca0 <func_80B1C5A0>:
     ca0:	27bdffe0 	addiu	sp,sp,-32
     ca4:	afbf0014 	sw	ra,20(sp)
     ca8:	00803825 	move	a3,a0
     cac:	240e0001 	li	t6,1
     cb0:	afae001c 	sw	t6,28(sp)
     cb4:	afa70020 	sw	a3,32(sp)
     cb8:	248420d8 	addiu	a0,a0,8408
     cbc:	0c000000 	jal	0 <EnTkEff_Create>
     cc0:	afa50024 	sw	a1,36(sp)
     cc4:	2c41000a 	sltiu	at,v0,10
     cc8:	8fa60024 	lw	a2,36(sp)
     ccc:	10200055 	beqz	at,e24 <func_80B1C5A0+0x184>
     cd0:	8fa70020 	lw	a3,32(sp)
     cd4:	00027880 	sll	t7,v0,0x2
     cd8:	3c010000 	lui	at,0x0
     cdc:	002f0821 	addu	at,at,t7
     ce0:	8c2f0090 	lw	t7,144(at)
     ce4:	01e00008 	jr	t7
     ce8:	00000000 	nop
     cec:	94d8010e 	lhu	t8,270(a2)
     cf0:	24015028 	li	at,20520
     cf4:	3c030000 	lui	v1,0x0
     cf8:	17010004 	bne	t8,at,d0c <func_80B1C5A0+0x6c>
     cfc:	24630000 	addiu	v1,v1,0
     d00:	94790f12 	lhu	t9,3858(v1)
     d04:	37280100 	ori	t0,t9,0x100
     d08:	a4680f12 	sh	t0,3858(v1)
     d0c:	10000045 	b	e24 <func_80B1C5A0+0x184>
     d10:	afa0001c 	sw	zero,28(sp)
     d14:	00e02025 	move	a0,a3
     d18:	afa60024 	sw	a2,36(sp)
     d1c:	0c000000 	jal	0 <EnTkEff_Create>
     d20:	afa70020 	sw	a3,32(sp)
     d24:	8fa60024 	lw	a2,36(sp)
     d28:	1040003e 	beqz	v0,e24 <func_80B1C5A0+0x184>
     d2c:	8fa70020 	lw	a3,32(sp)
     d30:	94c2010e 	lhu	v0,270(a2)
     d34:	24015018 	li	at,20504
     d38:	3c090001 	lui	t1,0x1
     d3c:	10410004 	beq	v0,at,d50 <func_80B1C5A0+0xb0>
     d40:	01274821 	addu	t1,t1,a3
     d44:	24015019 	li	at,20505
     d48:	54410037 	bnel	v0,at,e28 <func_80B1C5A0+0x188>
     d4c:	87a2001e 	lh	v0,30(sp)
     d50:	912904bd 	lbu	t1,1213(t1)
     d54:	24010001 	li	at,1
     d58:	3c030000 	lui	v1,0x0
     d5c:	15210004 	bne	t1,at,d70 <func_80B1C5A0+0xd0>
     d60:	00e02025 	move	a0,a3
     d64:	240a0084 	li	t2,132
     d68:	10000016 	b	dc4 <func_80B1C5A0+0x124>
     d6c:	a4ca010e 	sh	t2,270(a2)
     d70:	24630000 	addiu	v1,v1,0
     d74:	846b0034 	lh	t3,52(v1)
     d78:	240c0085 	li	t4,133
     d7c:	240d0037 	li	t5,55
     d80:	2961000a 	slti	at,t3,10
     d84:	50200004 	beqzl	at,d98 <func_80B1C5A0+0xf8>
     d88:	3c010001 	lui	at,0x1
     d8c:	1000000d 	b	dc4 <func_80B1C5A0+0x124>
     d90:	a4cc010e 	sh	t4,270(a2)
     d94:	3c010001 	lui	at,0x1
     d98:	00270821 	addu	at,at,a3
     d9c:	a02d03dc 	sb	t5,988(at)
     da0:	0c000000 	jal	0 <EnTkEff_Create>
     da4:	2404fff6 	li	a0,-10
     da8:	3c030000 	lui	v1,0x0
     dac:	24630000 	addiu	v1,v1,0
     db0:	946e0f12 	lhu	t6,3858(v1)
     db4:	24020002 	li	v0,2
     db8:	35cf0200 	ori	t7,t6,0x200
     dbc:	1000001a 	b	e28 <func_80B1C5A0+0x188>
     dc0:	a46f0f12 	sh	t7,3858(v1)
     dc4:	0c000000 	jal	0 <EnTkEff_Create>
     dc8:	94c5010e 	lhu	a1,270(a2)
     dcc:	3c030000 	lui	v1,0x0
     dd0:	24630000 	addiu	v1,v1,0
     dd4:	94780f12 	lhu	t8,3858(v1)
     dd8:	37190200 	ori	t9,t8,0x200
     ddc:	10000011 	b	e24 <func_80B1C5A0+0x184>
     de0:	a4790f12 	sh	t9,3858(v1)
     de4:	00e02025 	move	a0,a3
     de8:	afa60024 	sw	a2,36(sp)
     dec:	0c000000 	jal	0 <EnTkEff_Create>
     df0:	afa70020 	sw	a3,32(sp)
     df4:	8fa60024 	lw	a2,36(sp)
     df8:	1040000a 	beqz	v0,e24 <func_80B1C5A0+0x184>
     dfc:	8fa70020 	lw	a3,32(sp)
     e00:	94c2010e 	lhu	v0,270(a2)
     e04:	24010084 	li	at,132
     e08:	10410003 	beq	v0,at,e18 <func_80B1C5A0+0x178>
     e0c:	24010085 	li	at,133
     e10:	54410005 	bnel	v0,at,e28 <func_80B1C5A0+0x188>
     e14:	87a2001e 	lh	v0,30(sp)
     e18:	0c000000 	jal	0 <EnTkEff_Create>
     e1c:	00e02025 	move	a0,a3
     e20:	afa0001c 	sw	zero,28(sp)
     e24:	87a2001e 	lh	v0,30(sp)
     e28:	8fbf0014 	lw	ra,20(sp)
     e2c:	27bd0020 	addiu	sp,sp,32
     e30:	03e00008 	jr	ra
     e34:	00000000 	nop

00000e38 <EnTk_ChooseReward>:
     e38:	27bdffe8 	addiu	sp,sp,-24
     e3c:	afbf0014 	sw	ra,20(sp)
     e40:	0c000000 	jal	0 <EnTkEff_Create>
     e44:	afa40018 	sw	a0,24(sp)
     e48:	3c010000 	lui	at,0x0
     e4c:	c42400b8 	lwc1	$f4,184(at)
     e50:	8fa50018 	lw	a1,24(sp)
     e54:	3c010000 	lui	at,0x0
     e58:	4604003c 	c.lt.s	$f0,$f4
     e5c:	00000000 	nop
     e60:	45000003 	bc1f	e70 <EnTk_ChooseReward+0x38>
     e64:	00000000 	nop
     e68:	10000012 	b	eb4 <EnTk_ChooseReward+0x7c>
     e6c:	00002025 	move	a0,zero
     e70:	d42600c0 	ldc1	$f6,192(at)
     e74:	460000a1 	cvt.d.s	$f2,$f0
     e78:	3c010000 	lui	at,0x0
     e7c:	4626103c 	c.lt.d	$f2,$f6
     e80:	00000000 	nop
     e84:	45000003 	bc1f	e94 <EnTk_ChooseReward+0x5c>
     e88:	00000000 	nop
     e8c:	10000009 	b	eb4 <EnTk_ChooseReward+0x7c>
     e90:	24040001 	li	a0,1
     e94:	d42800c8 	ldc1	$f8,200(at)
     e98:	24040003 	li	a0,3
     e9c:	4628103c 	c.lt.d	$f2,$f8
     ea0:	00000000 	nop
     ea4:	45000003 	bc1f	eb4 <EnTk_ChooseReward+0x7c>
     ea8:	00000000 	nop
     eac:	10000001 	b	eb4 <EnTk_ChooseReward+0x7c>
     eb0:	24040002 	li	a0,2
     eb4:	10800009 	beqz	a0,edc <EnTk_ChooseReward+0xa4>
     eb8:	24010001 	li	at,1
     ebc:	1081000e 	beq	a0,at,ef8 <EnTk_ChooseReward+0xc0>
     ec0:	24010002 	li	at,2
     ec4:	10810015 	beq	a0,at,f1c <EnTk_ChooseReward+0xe4>
     ec8:	24010003 	li	at,3
     ecc:	5081001d 	beql	a0,at,f44 <EnTk_ChooseReward+0x10c>
     ed0:	90a3020c 	lbu	v1,524(a1)
     ed4:	10000021 	b	f5c <EnTk_ChooseReward+0x124>
     ed8:	90a30209 	lbu	v1,521(a1)
     edc:	90a30209 	lbu	v1,521(a1)
     ee0:	00801025 	move	v0,a0
     ee4:	28610008 	slti	at,v1,8
     ee8:	1020001c 	beqz	at,f5c <EnTk_ChooseReward+0x124>
     eec:	246e0001 	addiu	t6,v1,1
     ef0:	1000003b 	b	fe0 <EnTk_ChooseReward+0x1a8>
     ef4:	a0ae0209 	sb	t6,521(a1)
     ef8:	90a3020a 	lbu	v1,522(a1)
     efc:	00801025 	move	v0,a0
     f00:	28610004 	slti	at,v1,4
     f04:	10200003 	beqz	at,f14 <EnTk_ChooseReward+0xdc>
     f08:	246f0001 	addiu	t7,v1,1
     f0c:	10000034 	b	fe0 <EnTk_ChooseReward+0x1a8>
     f10:	a0af020a 	sb	t7,522(a1)
     f14:	10000011 	b	f5c <EnTk_ChooseReward+0x124>
     f18:	90a30209 	lbu	v1,521(a1)
     f1c:	90a3020b 	lbu	v1,523(a1)
     f20:	00801025 	move	v0,a0
     f24:	28610002 	slti	at,v1,2
     f28:	10200003 	beqz	at,f38 <EnTk_ChooseReward+0x100>
     f2c:	24780001 	addiu	t8,v1,1
     f30:	1000002b 	b	fe0 <EnTk_ChooseReward+0x1a8>
     f34:	a0b8020b 	sb	t8,523(a1)
     f38:	10000008 	b	f5c <EnTk_ChooseReward+0x124>
     f3c:	90a30209 	lbu	v1,521(a1)
     f40:	90a3020c 	lbu	v1,524(a1)
     f44:	00801025 	move	v0,a0
     f48:	1c600003 	bgtz	v1,f58 <EnTk_ChooseReward+0x120>
     f4c:	24790001 	addiu	t9,v1,1
     f50:	10000023 	b	fe0 <EnTk_ChooseReward+0x1a8>
     f54:	a0b9020c 	sb	t9,524(a1)
     f58:	90a30209 	lbu	v1,521(a1)
     f5c:	28610008 	slti	at,v1,8
     f60:	10200004 	beqz	at,f74 <EnTk_ChooseReward+0x13c>
     f64:	24680001 	addiu	t0,v1,1
     f68:	a0a80209 	sb	t0,521(a1)
     f6c:	1000001b 	b	fdc <EnTk_ChooseReward+0x1a4>
     f70:	00002025 	move	a0,zero
     f74:	90a3020a 	lbu	v1,522(a1)
     f78:	24040001 	li	a0,1
     f7c:	28610004 	slti	at,v1,4
     f80:	10200003 	beqz	at,f90 <EnTk_ChooseReward+0x158>
     f84:	24690001 	addiu	t1,v1,1
     f88:	10000014 	b	fdc <EnTk_ChooseReward+0x1a4>
     f8c:	a0a9020a 	sb	t1,522(a1)
     f90:	90a3020b 	lbu	v1,523(a1)
     f94:	24040002 	li	a0,2
     f98:	28610002 	slti	at,v1,2
     f9c:	10200003 	beqz	at,fac <EnTk_ChooseReward+0x174>
     fa0:	246a0001 	addiu	t2,v1,1
     fa4:	1000000d 	b	fdc <EnTk_ChooseReward+0x1a4>
     fa8:	a0aa020b 	sb	t2,523(a1)
     fac:	90a3020c 	lbu	v1,524(a1)
     fb0:	00002025 	move	a0,zero
     fb4:	240c0001 	li	t4,1
     fb8:	1c600004 	bgtz	v1,fcc <EnTk_ChooseReward+0x194>
     fbc:	246b0001 	addiu	t3,v1,1
     fc0:	a0ab020c 	sb	t3,524(a1)
     fc4:	10000005 	b	fdc <EnTk_ChooseReward+0x1a4>
     fc8:	24040003 	li	a0,3
     fcc:	a0ac0209 	sb	t4,521(a1)
     fd0:	a0a0020a 	sb	zero,522(a1)
     fd4:	a0a0020b 	sb	zero,523(a1)
     fd8:	a0a0020c 	sb	zero,524(a1)
     fdc:	00801025 	move	v0,a0
     fe0:	8fbf0014 	lw	ra,20(sp)
     fe4:	27bd0018 	addiu	sp,sp,24
     fe8:	03e00008 	jr	ra
     fec:	00000000 	nop

00000ff0 <EnTk_DigEff>:
     ff0:	27bdffb0 	addiu	sp,sp,-80
     ff4:	3c0f0000 	lui	t7,0x0
     ff8:	afbf0024 	sw	ra,36(sp)
     ffc:	afb00020 	sw	s0,32(sp)
    1000:	25ef0098 	addiu	t7,t7,152
    1004:	8df90000 	lw	t9,0(t7)
    1008:	27ae0044 	addiu	t6,sp,68
    100c:	8df80004 	lw	t8,4(t7)
    1010:	add90000 	sw	t9,0(t6)
    1014:	8df90008 	lw	t9,8(t7)
    1018:	3c090000 	lui	t1,0x0
    101c:	252900a4 	addiu	t1,t1,164
    1020:	add80004 	sw	t8,4(t6)
    1024:	add90008 	sw	t9,8(t6)
    1028:	8d2b0000 	lw	t3,0(t1)
    102c:	27a80038 	addiu	t0,sp,56
    1030:	8d2a0004 	lw	t2,4(t1)
    1034:	ad0b0000 	sw	t3,0(t0)
    1038:	8d2b0008 	lw	t3,8(t1)
    103c:	3c0d0000 	lui	t5,0x0
    1040:	25ad00b0 	addiu	t5,t5,176
    1044:	ad0a0004 	sw	t2,4(t0)
    1048:	ad0b0008 	sw	t3,8(t0)
    104c:	8daf0000 	lw	t7,0(t5)
    1050:	27ac002c 	addiu	t4,sp,44
    1054:	8dae0004 	lw	t6,4(t5)
    1058:	ad8f0000 	sw	t7,0(t4)
    105c:	8daf0008 	lw	t7,8(t5)
    1060:	3c014200 	lui	at,0x4200
    1064:	ad8e0004 	sw	t6,4(t4)
    1068:	ad8f0008 	sw	t7,8(t4)
    106c:	c4800164 	lwc1	$f0,356(a0)
    1070:	44812000 	mtc1	at,$f4
    1074:	00808025 	move	s0,a0
    1078:	3c014220 	lui	at,0x4220
    107c:	4600203e 	c.le.s	$f4,$f0
    1080:	00000000 	nop
    1084:	45020032 	bc1fl	1150 <EnTk_DigEff+0x160>
    1088:	8fbf0024 	lw	ra,36(sp)
    108c:	44813000 	mtc1	at,$f6
    1090:	00000000 	nop
    1094:	4606003c 	c.lt.s	$f0,$f6
    1098:	00000000 	nop
    109c:	4502002c 	bc1fl	1150 <EnTk_DigEff+0x160>
    10a0:	8fbf0024 	lw	ra,36(sp)
    10a4:	0c000000 	jal	0 <EnTkEff_Create>
    10a8:	00000000 	nop
    10ac:	3c013f00 	lui	at,0x3f00
    10b0:	44814000 	mtc1	at,$f8
    10b4:	3c014140 	lui	at,0x4140
    10b8:	44818000 	mtc1	at,$f16
    10bc:	46080281 	sub.s	$f10,$f0,$f8
    10c0:	c6040304 	lwc1	$f4,772(s0)
    10c4:	46105482 	mul.s	$f18,$f10,$f16
    10c8:	46049180 	add.s	$f6,$f18,$f4
    10cc:	0c000000 	jal	0 <EnTkEff_Create>
    10d0:	e7a60044 	swc1	$f6,68(sp)
    10d4:	3c013f00 	lui	at,0x3f00
    10d8:	44814000 	mtc1	at,$f8
    10dc:	3c014100 	lui	at,0x4100
    10e0:	44818000 	mtc1	at,$f16
    10e4:	46080281 	sub.s	$f10,$f0,$f8
    10e8:	c6040308 	lwc1	$f4,776(s0)
    10ec:	46105482 	mul.s	$f18,$f10,$f16
    10f0:	46049180 	add.s	$f6,$f18,$f4
    10f4:	0c000000 	jal	0 <EnTkEff_Create>
    10f8:	e7a60048 	swc1	$f6,72(sp)
    10fc:	3c013f00 	lui	at,0x3f00
    1100:	44814000 	mtc1	at,$f8
    1104:	3c014140 	lui	at,0x4140
    1108:	44818000 	mtc1	at,$f16
    110c:	46080281 	sub.s	$f10,$f0,$f8
    1110:	c604030c 	lwc1	$f4,780(s0)
    1114:	3c010000 	lui	at,0x0
    1118:	c42800d0 	lwc1	$f8,208(at)
    111c:	46105482 	mul.s	$f18,$f10,$f16
    1120:	44805000 	mtc1	zero,$f10
    1124:	3c073e4c 	lui	a3,0x3e4c
    1128:	34e7cccd 	ori	a3,a3,0xcccd
    112c:	02002025 	move	a0,s0
    1130:	27a50044 	addiu	a1,sp,68
    1134:	2406000c 	li	a2,12
    1138:	46049180 	add.s	$f6,$f18,$f4
    113c:	e7a80010 	swc1	$f8,16(sp)
    1140:	e7aa0014 	swc1	$f10,20(sp)
    1144:	0c000000 	jal	0 <EnTkEff_Create>
    1148:	e7a6004c 	swc1	$f6,76(sp)
    114c:	8fbf0024 	lw	ra,36(sp)
    1150:	8fb00020 	lw	s0,32(sp)
    1154:	27bd0050 	addiu	sp,sp,80
    1158:	03e00008 	jr	ra
    115c:	00000000 	nop

00001160 <EnTk_Init>:
    1160:	27bdffc0 	addiu	sp,sp,-64
    1164:	afb00028 	sw	s0,40(sp)
    1168:	00808025 	move	s0,a0
    116c:	afbf002c 	sw	ra,44(sp)
    1170:	afa50044 	sw	a1,68(sp)
    1174:	3c060000 	lui	a2,0x0
    1178:	24c60000 	addiu	a2,a2,0
    117c:	24050000 	li	a1,0
    1180:	248400b4 	addiu	a0,a0,180
    1184:	0c000000 	jal	0 <EnTkEff_Create>
    1188:	3c0741c0 	lui	a3,0x41c0
    118c:	2605014c 	addiu	a1,s0,332
    1190:	3c060000 	lui	a2,0x0
    1194:	260e022a 	addiu	t6,s0,554
    1198:	260f0296 	addiu	t7,s0,662
    119c:	24180012 	li	t8,18
    11a0:	afb80018 	sw	t8,24(sp)
    11a4:	afaf0014 	sw	t7,20(sp)
    11a8:	afae0010 	sw	t6,16(sp)
    11ac:	24c60000 	addiu	a2,a2,0
    11b0:	afa50030 	sw	a1,48(sp)
    11b4:	8fa40044 	lw	a0,68(sp)
    11b8:	0c000000 	jal	0 <EnTkEff_Create>
    11bc:	00003825 	move	a3,zero
    11c0:	3c040000 	lui	a0,0x0
    11c4:	0c000000 	jal	0 <EnTkEff_Create>
    11c8:	24840000 	addiu	a0,a0,0
    11cc:	44822000 	mtc1	v0,$f4
    11d0:	44800000 	mtc1	zero,$f0
    11d4:	3c050000 	lui	a1,0x0
    11d8:	468021a0 	cvt.s.w	$f6,$f4
    11dc:	44070000 	mfc1	a3,$f0
    11e0:	24a50000 	addiu	a1,a1,0
    11e4:	8fa40030 	lw	a0,48(sp)
    11e8:	3c063f80 	lui	a2,0x3f80
    11ec:	afa00014 	sw	zero,20(sp)
    11f0:	e7a60010 	swc1	$f6,16(sp)
    11f4:	0c000000 	jal	0 <EnTkEff_Create>
    11f8:	e7a00018 	swc1	$f0,24(sp)
    11fc:	26050194 	addiu	a1,s0,404
    1200:	afa50030 	sw	a1,48(sp)
    1204:	0c000000 	jal	0 <EnTkEff_Create>
    1208:	8fa40044 	lw	a0,68(sp)
    120c:	3c070000 	lui	a3,0x0
    1210:	8fa50030 	lw	a1,48(sp)
    1214:	24e70058 	addiu	a3,a3,88
    1218:	8fa40044 	lw	a0,68(sp)
    121c:	0c000000 	jal	0 <EnTkEff_Create>
    1220:	02003025 	move	a2,s0
    1224:	3c060000 	lui	a2,0x0
    1228:	24c60084 	addiu	a2,a2,132
    122c:	26040098 	addiu	a0,s0,152
    1230:	0c000000 	jal	0 <EnTkEff_Create>
    1234:	00002825 	move	a1,zero
    1238:	3c030000 	lui	v1,0x0
    123c:	24630000 	addiu	v1,v1,0
    1240:	9462000c 	lhu	v0,12(v1)
    1244:	3401c001 	li	at,0xc001
    1248:	0041082a 	slt	at,v0,at
    124c:	1420000d 	bnez	at,1284 <EnTk_Init+0x124>
    1250:	3401e000 	li	at,0xe000
    1254:	0041082a 	slt	at,v0,at
    1258:	1020000a 	beqz	at,1284 <EnTk_Init+0x124>
    125c:	00000000 	nop
    1260:	8c790004 	lw	t9,4(v1)
    1264:	8fa80044 	lw	t0,68(sp)
    1268:	13200006 	beqz	t9,1284 <EnTk_Init+0x124>
    126c:	00000000 	nop
    1270:	850900a4 	lh	t1,164(t0)
    1274:	24010053 	li	at,83
    1278:	02002025 	move	a0,s0
    127c:	11210005 	beq	t1,at,1294 <EnTk_Init+0x134>
    1280:	3c053c23 	lui	a1,0x3c23
    1284:	0c000000 	jal	0 <EnTkEff_Create>
    1288:	02002025 	move	a0,s0
    128c:	1000000f 	b	12cc <EnTk_Init+0x16c>
    1290:	8fbf002c 	lw	ra,44(sp)
    1294:	0c000000 	jal	0 <EnTkEff_Create>
    1298:	34a5d70a 	ori	a1,a1,0xd70a
    129c:	240a0006 	li	t2,6
    12a0:	a20a001f 	sb	t2,31(s0)
    12a4:	3c010000 	lui	at,0x0
    12a8:	c42800d4 	lwc1	$f8,212(at)
    12ac:	3c0c0000 	lui	t4,0x0
    12b0:	240bffff 	li	t3,-1
    12b4:	258c0000 	addiu	t4,t4,0
    12b8:	ae0b0214 	sw	t3,532(s0)
    12bc:	ae000210 	sw	zero,528(s0)
    12c0:	ae0c0190 	sw	t4,400(s0)
    12c4:	e608006c 	swc1	$f8,108(s0)
    12c8:	8fbf002c 	lw	ra,44(sp)
    12cc:	8fb00028 	lw	s0,40(sp)
    12d0:	27bd0040 	addiu	sp,sp,64
    12d4:	03e00008 	jr	ra
    12d8:	00000000 	nop

000012dc <EnTk_Destroy>:
    12dc:	27bdffe8 	addiu	sp,sp,-24
    12e0:	00803025 	move	a2,a0
    12e4:	afbf0014 	sw	ra,20(sp)
    12e8:	00a02025 	move	a0,a1
    12ec:	0c000000 	jal	0 <EnTkEff_Create>
    12f0:	24c50194 	addiu	a1,a2,404
    12f4:	8fbf0014 	lw	ra,20(sp)
    12f8:	27bd0018 	addiu	sp,sp,24
    12fc:	03e00008 	jr	ra
    1300:	00000000 	nop

00001304 <EnTk_Rest>:
    1304:	27bdffd0 	addiu	sp,sp,-48
    1308:	afbf0024 	sw	ra,36(sp)
    130c:	afb00020 	sw	s0,32(sp)
    1310:	afa50034 	sw	a1,52(sp)
    1314:	848201e0 	lh	v0,480(a0)
    1318:	00808025 	move	s0,a0
    131c:	10400028 	beqz	v0,13c0 <EnTk_Rest+0xbc>
    1320:	00000000 	nop
    1324:	848300b6 	lh	v1,182(a0)
    1328:	848e021e 	lh	t6,542(a0)
    132c:	848f008a 	lh	t7,138(a0)
    1330:	24010002 	li	at,2
    1334:	006e1823 	subu	v1,v1,t6
    1338:	00031c00 	sll	v1,v1,0x10
    133c:	00031c03 	sra	v1,v1,0x10
    1340:	01e31823 	subu	v1,t7,v1
    1344:	00031c00 	sll	v1,v1,0x10
    1348:	14410008 	bne	v0,at,136c <EnTk_Rest+0x68>
    134c:	00031c03 	sra	v1,v1,0x10
    1350:	0c000000 	jal	0 <EnTkEff_Create>
    1354:	00000000 	nop
    1358:	3c180000 	lui	t8,0x0
    135c:	27180000 	addiu	t8,t8,0
    1360:	a60001e0 	sh	zero,480(s0)
    1364:	1000006b 	b	1514 <EnTk_Rest+0x210>
    1368:	ae180190 	sw	t8,400(s0)
    136c:	861901d4 	lh	t9,468(s0)
    1370:	3c0141f0 	lui	at,0x41f0
    1374:	44814000 	mtc1	at,$f8
    1378:	44992000 	mtc1	t9,$f4
    137c:	3c080000 	lui	t0,0x0
    1380:	3c090000 	lui	t1,0x0
    1384:	468021a0 	cvt.s.w	$f6,$f4
    1388:	25290000 	addiu	t1,t1,0
    138c:	25080000 	addiu	t0,t0,0
    1390:	afa80010 	sw	t0,16(sp)
    1394:	afa90014 	sw	t1,20(sp)
    1398:	a7a3002e 	sh	v1,46(sp)
    139c:	46083280 	add.s	$f10,$f6,$f8
    13a0:	8fa40034 	lw	a0,52(sp)
    13a4:	02002825 	move	a1,s0
    13a8:	260601e0 	addiu	a2,s0,480
    13ac:	44075000 	mfc1	a3,$f10
    13b0:	0c000000 	jal	0 <EnTkEff_Create>
    13b4:	00000000 	nop
    13b8:	10000044 	b	14cc <EnTk_Rest+0x1c8>
    13bc:	87a3002e 	lh	v1,46(sp)
    13c0:	0c000000 	jal	0 <EnTkEff_Create>
    13c4:	02002025 	move	a0,s0
    13c8:	1040001f 	beqz	v0,1448 <EnTk_Rest+0x144>
    13cc:	02002025 	move	a0,s0
    13d0:	860c01d4 	lh	t4,468(s0)
    13d4:	860300b6 	lh	v1,182(s0)
    13d8:	860a021e 	lh	t2,542(s0)
    13dc:	448c8000 	mtc1	t4,$f16
    13e0:	3c0141f0 	lui	at,0x41f0
    13e4:	44812000 	mtc1	at,$f4
    13e8:	468084a0 	cvt.s.w	$f18,$f16
    13ec:	860b008a 	lh	t3,138(s0)
    13f0:	006a1823 	subu	v1,v1,t2
    13f4:	00031c00 	sll	v1,v1,0x10
    13f8:	00031c03 	sra	v1,v1,0x10
    13fc:	a600021c 	sh	zero,540(s0)
    1400:	46049180 	add.s	$f6,$f18,$f4
    1404:	01631823 	subu	v1,t3,v1
    1408:	00031c00 	sll	v1,v1,0x10
    140c:	3c0d0000 	lui	t5,0x0
    1410:	3c0e0000 	lui	t6,0x0
    1414:	00031c03 	sra	v1,v1,0x10
    1418:	25ce0000 	addiu	t6,t6,0
    141c:	25ad0000 	addiu	t5,t5,0
    1420:	44073000 	mfc1	a3,$f6
    1424:	afad0010 	sw	t5,16(sp)
    1428:	afae0014 	sw	t6,20(sp)
    142c:	a7a3002e 	sh	v1,46(sp)
    1430:	8fa40034 	lw	a0,52(sp)
    1434:	02002825 	move	a1,s0
    1438:	0c000000 	jal	0 <EnTkEff_Create>
    143c:	260601e0 	addiu	a2,s0,480
    1440:	10000022 	b	14cc <EnTk_Rest+0x1c8>
    1444:	87a3002e 	lh	v1,46(sp)
    1448:	0c000000 	jal	0 <EnTkEff_Create>
    144c:	8fa50034 	lw	a1,52(sp)
    1450:	1040000d 	beqz	v0,1488 <EnTk_Rest+0x184>
    1454:	24190001 	li	t9,1
    1458:	860300b6 	lh	v1,182(s0)
    145c:	860f021e 	lh	t7,542(s0)
    1460:	8618008a 	lh	t8,138(s0)
    1464:	a600021c 	sh	zero,540(s0)
    1468:	006f1823 	subu	v1,v1,t7
    146c:	00031c00 	sll	v1,v1,0x10
    1470:	00031c03 	sra	v1,v1,0x10
    1474:	03031823 	subu	v1,t8,v1
    1478:	00031c00 	sll	v1,v1,0x10
    147c:	00031c03 	sra	v1,v1,0x10
    1480:	10000012 	b	14cc <EnTk_Rest+0x1c8>
    1484:	a61901e0 	sh	t9,480(s0)
    1488:	8603021c 	lh	v1,540(s0)
    148c:	02002025 	move	a0,s0
    1490:	14600003 	bnez	v1,14a0 <EnTk_Rest+0x19c>
    1494:	2468ffff 	addiu	t0,v1,-1
    1498:	10000003 	b	14a8 <EnTk_Rest+0x1a4>
    149c:	00001025 	move	v0,zero
    14a0:	a608021c 	sh	t0,540(s0)
    14a4:	8602021c 	lh	v0,540(s0)
    14a8:	14400008 	bnez	v0,14cc <EnTk_Rest+0x1c8>
    14ac:	00001825 	move	v1,zero
    14b0:	0c000000 	jal	0 <EnTkEff_Create>
    14b4:	8fa50034 	lw	a1,52(sp)
    14b8:	3c090000 	lui	t1,0x0
    14bc:	25290000 	addiu	t1,t1,0
    14c0:	ae090190 	sw	t1,400(s0)
    14c4:	10000001 	b	14cc <EnTk_Rest+0x1c8>
    14c8:	87a3002e 	lh	v1,46(sp)
    14cc:	00032023 	negu	a0,v1
    14d0:	288104f6 	slti	at,a0,1270
    14d4:	10200003 	beqz	at,14e4 <EnTk_Rest+0x1e0>
    14d8:	24060006 	li	a2,6
    14dc:	10000008 	b	1500 <EnTk_Rest+0x1fc>
    14e0:	240504f6 	li	a1,1270
    14e4:	288129eb 	slti	at,a0,10731
    14e8:	14200003 	bnez	at,14f8 <EnTk_Rest+0x1f4>
    14ec:	00801025 	move	v0,a0
    14f0:	10000001 	b	14f8 <EnTk_Rest+0x1f4>
    14f4:	240229ea 	li	v0,10730
    14f8:	00022c00 	sll	a1,v0,0x10
    14fc:	00052c03 	sra	a1,a1,0x10
    1500:	240a0001 	li	t2,1
    1504:	afaa0010 	sw	t2,16(sp)
    1508:	26040226 	addiu	a0,s0,550
    150c:	0c000000 	jal	0 <EnTkEff_Create>
    1510:	240703e8 	li	a3,1000
    1514:	8fbf0024 	lw	ra,36(sp)
    1518:	8fb00020 	lw	s0,32(sp)
    151c:	27bd0030 	addiu	sp,sp,48
    1520:	03e00008 	jr	ra
    1524:	00000000 	nop

00001528 <EnTk_Walk>:
    1528:	27bdffd8 	addiu	sp,sp,-40
    152c:	afbf0024 	sw	ra,36(sp)
    1530:	afb00020 	sw	s0,32(sp)
    1534:	848e01e0 	lh	t6,480(a0)
    1538:	24010002 	li	at,2
    153c:	00808025 	move	s0,a0
    1540:	55c10009 	bnel	t6,at,1568 <EnTk_Walk+0x40>
    1544:	02002025 	move	a0,s0
    1548:	0c000000 	jal	0 <EnTkEff_Create>
    154c:	00000000 	nop
    1550:	3c0f0000 	lui	t7,0x0
    1554:	25ef0000 	addiu	t7,t7,0
    1558:	a60001e0 	sh	zero,480(s0)
    155c:	10000021 	b	15e4 <EnTk_Walk+0xbc>
    1560:	ae0f0190 	sw	t7,400(s0)
    1564:	02002025 	move	a0,s0
    1568:	0c000000 	jal	0 <EnTkEff_Create>
    156c:	afa5002c 	sw	a1,44(sp)
    1570:	e6000068 	swc1	$f0,104(s0)
    1574:	8fa5002c 	lw	a1,44(sp)
    1578:	0c000000 	jal	0 <EnTkEff_Create>
    157c:	02002025 	move	a0,s0
    1580:	24180001 	li	t8,1
    1584:	afb80010 	sw	t8,16(sp)
    1588:	26040226 	addiu	a0,s0,550
    158c:	00002825 	move	a1,zero
    1590:	24060006 	li	a2,6
    1594:	0c000000 	jal	0 <EnTkEff_Create>
    1598:	240703e8 	li	a3,1000
    159c:	0c000000 	jal	0 <EnTkEff_Create>
    15a0:	02002025 	move	a0,s0
    15a4:	8602021c 	lh	v0,540(s0)
    15a8:	10400002 	beqz	v0,15b4 <EnTk_Walk+0x8c>
    15ac:	2459ffff 	addiu	t9,v0,-1
    15b0:	a619021c 	sh	t9,540(s0)
    15b4:	0c000000 	jal	0 <EnTkEff_Create>
    15b8:	02002025 	move	a0,s0
    15bc:	14400004 	bnez	v0,15d0 <EnTk_Walk+0xa8>
    15c0:	02002025 	move	a0,s0
    15c4:	8608021c 	lh	t0,540(s0)
    15c8:	55000007 	bnezl	t0,15e8 <EnTk_Walk+0xc0>
    15cc:	8fbf0024 	lw	ra,36(sp)
    15d0:	0c000000 	jal	0 <EnTkEff_Create>
    15d4:	8fa5002c 	lw	a1,44(sp)
    15d8:	3c090000 	lui	t1,0x0
    15dc:	25290000 	addiu	t1,t1,0
    15e0:	ae090190 	sw	t1,400(s0)
    15e4:	8fbf0024 	lw	ra,36(sp)
    15e8:	8fb00020 	lw	s0,32(sp)
    15ec:	27bd0028 	addiu	sp,sp,40
    15f0:	03e00008 	jr	ra
    15f4:	00000000 	nop

000015f8 <EnTk_Dig>:
    15f8:	27bdffa8 	addiu	sp,sp,-88
    15fc:	3c0f0000 	lui	t7,0x0
    1600:	afbf0024 	sw	ra,36(sp)
    1604:	afb00020 	sw	s0,32(sp)
    1608:	afa5005c 	sw	a1,92(sp)
    160c:	25ef00bc 	addiu	t7,t7,188
    1610:	8df90000 	lw	t9,0(t7)
    1614:	27ae002c 	addiu	t6,sp,44
    1618:	8df80004 	lw	t8,4(t7)
    161c:	add90000 	sw	t9,0(t6)
    1620:	8df90008 	lw	t9,8(t7)
    1624:	add80004 	sw	t8,4(t6)
    1628:	8df8000c 	lw	t8,12(t7)
    162c:	add90008 	sw	t9,8(t6)
    1630:	8df90010 	lw	t9,16(t7)
    1634:	00808025 	move	s0,a0
    1638:	add8000c 	sw	t8,12(t6)
    163c:	0c000000 	jal	0 <EnTkEff_Create>
    1640:	add90010 	sw	t9,16(t6)
    1644:	3c014200 	lui	at,0x4200
    1648:	44812000 	mtc1	at,$f4
    164c:	c6060164 	lwc1	$f6,356(s0)
    1650:	02002025 	move	a0,s0
    1654:	46062032 	c.eq.s	$f4,$f6
    1658:	00000000 	nop
    165c:	45020038 	bc1fl	1740 <EnTk_Dig+0x148>
    1660:	3c014200 	lui	at,0x4200
    1664:	0c000000 	jal	0 <EnTkEff_Create>
    1668:	240528c8 	li	a1,10440
    166c:	92080208 	lbu	t0,520(s0)
    1670:	24010001 	li	at,1
    1674:	a600021a 	sh	zero,538(s0)
    1678:	55010031 	bnel	t0,at,1740 <EnTk_Dig+0x148>
    167c:	3c014200 	lui	at,0x4200
    1680:	44800000 	mtc1	zero,$f0
    1684:	3c01c220 	lui	at,0xc220
    1688:	44814000 	mtc1	at,$f8
    168c:	e7a0004c 	swc1	$f0,76(sp)
    1690:	e7a00050 	swc1	$f0,80(sp)
    1694:	e7a80054 	swc1	$f8,84(sp)
    1698:	860900b6 	lh	t1,182(s0)
    169c:	00002825 	move	a1,zero
    16a0:	44895000 	mtc1	t1,$f10
    16a4:	0c000000 	jal	0 <EnTkEff_Create>
    16a8:	46805320 	cvt.s.w	$f12,$f10
    16ac:	27a4004c 	addiu	a0,sp,76
    16b0:	0c000000 	jal	0 <EnTkEff_Create>
    16b4:	27a50040 	addiu	a1,sp,64
    16b8:	c7b00040 	lwc1	$f16,64(sp)
    16bc:	c6120024 	lwc1	$f18,36(s0)
    16c0:	c7a60044 	lwc1	$f6,68(sp)
    16c4:	02002025 	move	a0,s0
    16c8:	46128100 	add.s	$f4,$f16,$f18
    16cc:	c7b00048 	lwc1	$f16,72(sp)
    16d0:	e7a40040 	swc1	$f4,64(sp)
    16d4:	c6080028 	lwc1	$f8,40(s0)
    16d8:	46083280 	add.s	$f10,$f6,$f8
    16dc:	e7aa0044 	swc1	$f10,68(sp)
    16e0:	c612002c 	lwc1	$f18,44(s0)
    16e4:	46128100 	add.s	$f4,$f16,$f18
    16e8:	0c000000 	jal	0 <EnTkEff_Create>
    16ec:	e7a40048 	swc1	$f4,72(sp)
    16f0:	24010003 	li	at,3
    16f4:	1441000a 	bne	v0,at,1720 <EnTk_Dig+0x128>
    16f8:	ae020214 	sw	v0,532(s0)
    16fc:	3c030000 	lui	v1,0x0
    1700:	24630000 	addiu	v1,v1,0
    1704:	94620ef2 	lhu	v0,3826(v1)
    1708:	240c0004 	li	t4,4
    170c:	304a1000 	andi	t2,v0,0x1000
    1710:	15400003 	bnez	t2,1720 <EnTk_Dig+0x128>
    1714:	344b1000 	ori	t3,v0,0x1000
    1718:	a46b0ef2 	sh	t3,3826(v1)
    171c:	ae0c0214 	sw	t4,532(s0)
    1720:	8e0d0214 	lw	t5,532(s0)
    1724:	8fa4005c 	lw	a0,92(sp)
    1728:	27a50040 	addiu	a1,sp,64
    172c:	000d7080 	sll	t6,t5,0x2
    1730:	03ae3021 	addu	a2,sp,t6
    1734:	0c000000 	jal	0 <EnTkEff_Create>
    1738:	84c6002e 	lh	a2,46(a2)
    173c:	3c014200 	lui	at,0x4200
    1740:	44814000 	mtc1	at,$f8
    1744:	c6060164 	lwc1	$f6,356(s0)
    1748:	4606403e 	c.le.s	$f8,$f6
    174c:	00000000 	nop
    1750:	45020021 	bc1fl	17d8 <EnTk_Dig+0x1e0>
    1754:	8609021a 	lh	t1,538(s0)
    1758:	860f021a 	lh	t7,538(s0)
    175c:	2401000a 	li	at,10
    1760:	55e1001d 	bnel	t7,at,17d8 <EnTk_Dig+0x1e0>
    1764:	8609021a 	lh	t1,538(s0)
    1768:	92180208 	lbu	t8,520(s0)
    176c:	02002025 	move	a0,s0
    1770:	57000006 	bnezl	t8,178c <EnTk_Dig+0x194>
    1774:	8e190214 	lw	t9,532(s0)
    1778:	0c000000 	jal	0 <EnTkEff_Create>
    177c:	24054806 	li	a1,18438
    1780:	10000015 	b	17d8 <EnTk_Dig+0x1e0>
    1784:	8609021a 	lh	t1,538(s0)
    1788:	8e190214 	lw	t9,532(s0)
    178c:	24010004 	li	at,4
    1790:	3c070000 	lui	a3,0x0
    1794:	1721000d 	bne	t9,at,17cc <EnTk_Dig+0x1d4>
    1798:	02002025 	move	a0,s0
    179c:	3c080000 	lui	t0,0x0
    17a0:	24e70000 	addiu	a3,a3,0
    17a4:	25080000 	addiu	t0,t0,0
    17a8:	3c050000 	lui	a1,0x0
    17ac:	24a50000 	addiu	a1,a1,0
    17b0:	afa80014 	sw	t0,20(sp)
    17b4:	afa70010 	sw	a3,16(sp)
    17b8:	24044802 	li	a0,18434
    17bc:	0c000000 	jal	0 <EnTkEff_Create>
    17c0:	24060004 	li	a2,4
    17c4:	10000004 	b	17d8 <EnTk_Dig+0x1e0>
    17c8:	8609021a 	lh	t1,538(s0)
    17cc:	0c000000 	jal	0 <EnTkEff_Create>
    17d0:	24054807 	li	a1,18439
    17d4:	8609021a 	lh	t1,538(s0)
    17d8:	2604014c 	addiu	a0,s0,332
    17dc:	8e05015c 	lw	a1,348(s0)
    17e0:	252a0001 	addiu	t2,t1,1
    17e4:	0c000000 	jal	0 <EnTkEff_Create>
    17e8:	a60a021a 	sh	t2,538(s0)
    17ec:	50400016 	beqzl	v0,1848 <EnTk_Dig+0x250>
    17f0:	8fbf0024 	lw	ra,36(sp)
    17f4:	8e0b0214 	lw	t3,532(s0)
    17f8:	8fa4005c 	lw	a0,92(sp)
    17fc:	2405501a 	li	a1,20506
    1800:	05610005 	bgez	t3,1818 <EnTk_Dig+0x220>
    1804:	00000000 	nop
    1808:	0c000000 	jal	0 <EnTkEff_Create>
    180c:	00003025 	move	a2,zero
    1810:	10000004 	b	1824 <EnTk_Dig+0x22c>
    1814:	02002025 	move	a0,s0
    1818:	0c000000 	jal	0 <EnTkEff_Create>
    181c:	8fa4005c 	lw	a0,92(sp)
    1820:	02002025 	move	a0,s0
    1824:	0c000000 	jal	0 <EnTkEff_Create>
    1828:	8fa5005c 	lw	a1,92(sp)
    182c:	3c0d0000 	lui	t5,0x0
    1830:	240cffff 	li	t4,-1
    1834:	25ad0000 	addiu	t5,t5,0
    1838:	ae0c0214 	sw	t4,532(s0)
    183c:	a2000208 	sb	zero,520(s0)
    1840:	ae0d0190 	sw	t5,400(s0)
    1844:	8fbf0024 	lw	ra,36(sp)
    1848:	8fb00020 	lw	s0,32(sp)
    184c:	27bd0058 	addiu	sp,sp,88
    1850:	03e00008 	jr	ra
    1854:	00000000 	nop

00001858 <EnTk_Update>:
    1858:	27bdffc8 	addiu	sp,sp,-56
    185c:	afb00020 	sw	s0,32(sp)
    1860:	00808025 	move	s0,a0
    1864:	afbf0024 	sw	ra,36(sp)
    1868:	afa5003c 	sw	a1,60(sp)
    186c:	26060194 	addiu	a2,s0,404
    1870:	00c02825 	move	a1,a2
    1874:	0c000000 	jal	0 <EnTkEff_Create>
    1878:	afa6002c 	sw	a2,44(sp)
    187c:	8fa4003c 	lw	a0,60(sp)
    1880:	3c010001 	lui	at,0x1
    1884:	34211e60 	ori	at,at,0x1e60
    1888:	8fa6002c 	lw	a2,44(sp)
    188c:	0c000000 	jal	0 <EnTkEff_Create>
    1890:	00812821 	addu	a1,a0,at
    1894:	0c000000 	jal	0 <EnTkEff_Create>
    1898:	2604014c 	addiu	a0,s0,332
    189c:	0c000000 	jal	0 <EnTkEff_Create>
    18a0:	02002025 	move	a0,s0
    18a4:	44802000 	mtc1	zero,$f4
    18a8:	240e0005 	li	t6,5
    18ac:	afae0014 	sw	t6,20(sp)
    18b0:	8fa4003c 	lw	a0,60(sp)
    18b4:	02002825 	move	a1,s0
    18b8:	3c064220 	lui	a2,0x4220
    18bc:	3c074120 	lui	a3,0x4120
    18c0:	0c000000 	jal	0 <EnTkEff_Create>
    18c4:	e7a40010 	swc1	$f4,16(sp)
    18c8:	8e190190 	lw	t9,400(s0)
    18cc:	02002025 	move	a0,s0
    18d0:	8fa5003c 	lw	a1,60(sp)
    18d4:	0320f809 	jalr	t9
    18d8:	00000000 	nop
    18dc:	0c000000 	jal	0 <EnTkEff_Create>
    18e0:	02002025 	move	a0,s0
    18e4:	0c000000 	jal	0 <EnTkEff_Create>
    18e8:	02002025 	move	a0,s0
    18ec:	8fbf0024 	lw	ra,36(sp)
    18f0:	8fb00020 	lw	s0,32(sp)
    18f4:	27bd0038 	addiu	sp,sp,56
    18f8:	03e00008 	jr	ra
    18fc:	00000000 	nop

00001900 <func_80B1D200>:
    1900:	27bdffc8 	addiu	sp,sp,-56
    1904:	afbf0014 	sw	ra,20(sp)
    1908:	afa40038 	sw	a0,56(sp)
    190c:	8c850000 	lw	a1,0(a0)
    1910:	3c060000 	lui	a2,0x0
    1914:	24c6003c 	addiu	a2,a2,60
    1918:	27a40024 	addiu	a0,sp,36
    191c:	240704a4 	li	a3,1188
    1920:	0c000000 	jal	0 <EnTkEff_Create>
    1924:	afa50034 	sw	a1,52(sp)
    1928:	8fa80034 	lw	t0,52(sp)
    192c:	3c190000 	lui	t9,0x0
    1930:	27390000 	addiu	t9,t9,0
    1934:	8d0302c0 	lw	v1,704(t0)
    1938:	3c18de00 	lui	t8,0xde00
    193c:	3c060000 	lui	a2,0x0
    1940:	246f0008 	addiu	t7,v1,8
    1944:	ad0f02c0 	sw	t7,704(t0)
    1948:	ac790004 	sw	t9,4(v1)
    194c:	ac780000 	sw	t8,0(v1)
    1950:	8fa90038 	lw	t1,56(sp)
    1954:	24c6004c 	addiu	a2,a2,76
    1958:	27a40024 	addiu	a0,sp,36
    195c:	240704a6 	li	a3,1190
    1960:	0c000000 	jal	0 <EnTkEff_Create>
    1964:	8d250000 	lw	a1,0(t1)
    1968:	8fbf0014 	lw	ra,20(sp)
    196c:	27bd0038 	addiu	sp,sp,56
    1970:	03e00008 	jr	ra
    1974:	00000000 	nop

00001978 <EnTk_OverrideLimbDraw>:
    1978:	2401000f 	li	at,15
    197c:	afa40000 	sw	a0,0(sp)
    1980:	afa60008 	sw	a2,8(sp)
    1984:	10a10006 	beq	a1,at,19a0 <EnTk_OverrideLimbDraw+0x28>
    1988:	afa7000c 	sw	a3,12(sp)
    198c:	24010010 	li	at,16
    1990:	10a10009 	beq	a1,at,19b8 <EnTk_OverrideLimbDraw+0x40>
    1994:	8fa20014 	lw	v0,20(sp)
    1998:	03e00008 	jr	ra
    199c:	00001025 	move	v0,zero
    19a0:	8fa30010 	lw	v1,16(sp)
    19a4:	8fa20014 	lw	v0,20(sp)
    19a8:	846e0002 	lh	t6,2(v1)
    19ac:	a44e021e 	sh	t6,542(v0)
    19b0:	03e00008 	jr	ra
    19b4:	00001025 	move	v0,zero
    19b8:	8fa30010 	lw	v1,16(sp)
    19bc:	844f021e 	lh	t7,542(v0)
    19c0:	84490226 	lh	t1,550(v0)
    19c4:	84780002 	lh	t8,2(v1)
    19c8:	01f8c821 	addu	t9,t7,t8
    19cc:	a459021e 	sh	t9,542(v0)
    19d0:	84680002 	lh	t0,2(v1)
    19d4:	01095021 	addu	t2,t0,t1
    19d8:	a46a0002 	sh	t2,2(v1)
    19dc:	03e00008 	jr	ra
    19e0:	00001025 	move	v0,zero

000019e4 <EnTk_PostLimbDraw>:
    19e4:	27bdffc8 	addiu	sp,sp,-56
    19e8:	3c0f0000 	lui	t7,0x0
    19ec:	afbf0014 	sw	ra,20(sp)
    19f0:	afa40038 	sw	a0,56(sp)
    19f4:	afa5003c 	sw	a1,60(sp)
    19f8:	afa60040 	sw	a2,64(sp)
    19fc:	afa70044 	sw	a3,68(sp)
    1a00:	25ef00d0 	addiu	t7,t7,208
    1a04:	8df90000 	lw	t9,0(t7)
    1a08:	27ae0028 	addiu	t6,sp,40
    1a0c:	8df80004 	lw	t8,4(t7)
    1a10:	add90000 	sw	t9,0(t6)
    1a14:	8df90008 	lw	t9,8(t7)
    1a18:	3c080000 	lui	t0,0x0
    1a1c:	250800dc 	addiu	t0,t0,220
    1a20:	add80004 	sw	t8,4(t6)
    1a24:	add90008 	sw	t9,8(t6)
    1a28:	8d0a0000 	lw	t2,0(t0)
    1a2c:	27a7001c 	addiu	a3,sp,28
    1a30:	24010010 	li	at,16
    1a34:	acea0000 	sw	t2,0(a3)
    1a38:	8d090004 	lw	t1,4(t0)
    1a3c:	00a03025 	move	a2,a1
    1a40:	00e02025 	move	a0,a3
    1a44:	ace90004 	sw	t1,4(a3)
    1a48:	8d0a0008 	lw	t2,8(t0)
    1a4c:	14a10006 	bne	a1,at,1a68 <EnTk_PostLimbDraw+0x84>
    1a50:	acea0008 	sw	t2,8(a3)
    1a54:	8fa50048 	lw	a1,72(sp)
    1a58:	afa6003c 	sw	a2,60(sp)
    1a5c:	0c000000 	jal	0 <EnTkEff_Create>
    1a60:	24a50038 	addiu	a1,a1,56
    1a64:	8fa6003c 	lw	a2,60(sp)
    1a68:	2401000e 	li	at,14
    1a6c:	14c10006 	bne	a2,at,1a88 <EnTk_PostLimbDraw+0xa4>
    1a70:	8fa50048 	lw	a1,72(sp)
    1a74:	27a40028 	addiu	a0,sp,40
    1a78:	0c000000 	jal	0 <EnTkEff_Create>
    1a7c:	24a50304 	addiu	a1,a1,772
    1a80:	0c000000 	jal	0 <EnTkEff_Create>
    1a84:	8fa40038 	lw	a0,56(sp)
    1a88:	8fbf0014 	lw	ra,20(sp)
    1a8c:	27bd0038 	addiu	sp,sp,56
    1a90:	03e00008 	jr	ra
    1a94:	00000000 	nop

00001a98 <EnTk_Draw>:
    1a98:	27bdffb0 	addiu	sp,sp,-80
    1a9c:	afbf002c 	sw	ra,44(sp)
    1aa0:	afb10028 	sw	s1,40(sp)
    1aa4:	afb00024 	sw	s0,36(sp)
    1aa8:	00808025 	move	s0,a0
    1aac:	0c000000 	jal	0 <EnTkEff_Create>
    1ab0:	00a08825 	move	s1,a1
    1ab4:	02002025 	move	a0,s0
    1ab8:	0c000000 	jal	0 <EnTkEff_Create>
    1abc:	02202825 	move	a1,s1
    1ac0:	0c000000 	jal	0 <EnTkEff_Create>
    1ac4:	00000000 	nop
    1ac8:	8e250000 	lw	a1,0(s1)
    1acc:	3c060000 	lui	a2,0x0
    1ad0:	24c6005c 	addiu	a2,a2,92
    1ad4:	27a40038 	addiu	a0,sp,56
    1ad8:	2407050e 	li	a3,1294
    1adc:	0c000000 	jal	0 <EnTkEff_Create>
    1ae0:	afa50048 	sw	a1,72(sp)
    1ae4:	0c000000 	jal	0 <EnTkEff_Create>
    1ae8:	8e240000 	lw	a0,0(s1)
    1aec:	8fa50048 	lw	a1,72(sp)
    1af0:	3c0fdb06 	lui	t7,0xdb06
    1af4:	35ef0020 	ori	t7,t7,0x20
    1af8:	8ca302c0 	lw	v1,704(a1)
    1afc:	3c040000 	lui	a0,0x0
    1b00:	3c0c0000 	lui	t4,0x0
    1b04:	246e0008 	addiu	t6,v1,8
    1b08:	acae02c0 	sw	t6,704(a1)
    1b0c:	ac6f0000 	sw	t7,0(v1)
    1b10:	86180222 	lh	t8,546(s0)
    1b14:	3c0100ff 	lui	at,0xff
    1b18:	3421ffff 	ori	at,at,0xffff
    1b1c:	0018c880 	sll	t9,t8,0x2
    1b20:	00992021 	addu	a0,a0,t9
    1b24:	8c8400e8 	lw	a0,232(a0)
    1b28:	3c180000 	lui	t8,0x0
    1b2c:	3c0f0000 	lui	t7,0x0
    1b30:	00044900 	sll	t1,a0,0x4
    1b34:	00095702 	srl	t2,t1,0x1c
    1b38:	000a5880 	sll	t3,t2,0x2
    1b3c:	018b6021 	addu	t4,t4,t3
    1b40:	8d8c0000 	lw	t4,0(t4)
    1b44:	00814024 	and	t0,a0,at
    1b48:	3c018000 	lui	at,0x8000
    1b4c:	010c6821 	addu	t5,t0,t4
    1b50:	01a17021 	addu	t6,t5,at
    1b54:	ac6e0004 	sw	t6,4(v1)
    1b58:	9207014e 	lbu	a3,334(s0)
    1b5c:	8e06016c 	lw	a2,364(s0)
    1b60:	8e050150 	lw	a1,336(s0)
    1b64:	25ef0000 	addiu	t7,t7,0
    1b68:	27180000 	addiu	t8,t8,0
    1b6c:	afb80014 	sw	t8,20(sp)
    1b70:	afaf0010 	sw	t7,16(sp)
    1b74:	afb00018 	sw	s0,24(sp)
    1b78:	0c000000 	jal	0 <EnTkEff_Create>
    1b7c:	02202025 	move	a0,s1
    1b80:	3c060000 	lui	a2,0x0
    1b84:	24c6006c 	addiu	a2,a2,108
    1b88:	27a40038 	addiu	a0,sp,56
    1b8c:	8e250000 	lw	a1,0(s1)
    1b90:	0c000000 	jal	0 <EnTkEff_Create>
    1b94:	24070520 	li	a3,1312
    1b98:	8fbf002c 	lw	ra,44(sp)
    1b9c:	8fb00024 	lw	s0,36(sp)
    1ba0:	8fb10028 	lw	s1,40(sp)
    1ba4:	03e00008 	jr	ra
    1ba8:	27bd0050 	addiu	sp,sp,80
    1bac:	00000000 	nop
