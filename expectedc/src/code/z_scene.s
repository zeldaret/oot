
build/src/code/z_scene.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Object_Spawn>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0024 	sw	ra,36(sp)
       8:	afb10020 	sw	s1,32(sp)
       c:	afb0001c 	sw	s0,28(sp)
      10:	afa5003c 	sw	a1,60(sp)
      14:	908e0008 	lbu	t6,8(a0)
      18:	24030044 	li	v1,68
      1c:	00052c00 	sll	a1,a1,0x10
      20:	01c30019 	multu	t6,v1
      24:	00052c03 	sra	a1,a1,0x10
      28:	3c080000 	lui	t0,0x0
      2c:	25080000 	addiu	t0,t0,0
      30:	0005c8c0 	sll	t9,a1,0x3
      34:	03281021 	addu	v0,t9,t0
      38:	00808025 	move	s0,a0
      3c:	3c014f80 	lui	at,0x4f80
      40:	00007812 	mflo	t7
      44:	008fc021 	addu	t8,a0,t7
      48:	a705000c 	sh	a1,12(t8)
      4c:	8c4a0000 	lw	t2,0(v0)
      50:	8c490004 	lw	t1,4(v0)
      54:	3c040000 	lui	a0,0x0
      58:	24840000 	addiu	a0,a0,0
      5c:	012a8823 	subu	s1,t1,t2
      60:	44912000 	mtc1	s1,$f4
      64:	06210004 	bgez	s1,78 <Object_Spawn+0x78>
      68:	468021a0 	cvt.s.w	$f6,$f4
      6c:	44814000 	mtc1	at,$f8
      70:	00000000 	nop
      74:	46083180 	add.s	$f6,$f6,$f8
      78:	920b0008 	lbu	t3,8(s0)
      7c:	3c013a80 	lui	at,0x3a80
      80:	44815000 	mtc1	at,$f10
      84:	01630019 	multu	t3,v1
      88:	460a3402 	mul.s	$f16,$f6,$f10
      8c:	460084a1 	cvt.d.s	$f18,$f16
      90:	00006012 	mflo	t4
      94:	020c6821 	addu	t5,s0,t4
      98:	8dae0010 	lw	t6,16(t5)
      9c:	44079000 	mfc1	a3,$f18
      a0:	44069800 	mfc1	a2,$f19
      a4:	afa2002c 	sw	v0,44(sp)
      a8:	0c000000 	jal	0 <Object_Spawn>
      ac:	afae0010 	sw	t6,16(sp)
      b0:	92030008 	lbu	v1,8(s0)
      b4:	3c040000 	lui	a0,0x0
      b8:	2484001c 	addiu	a0,a0,28
      bc:	00037900 	sll	t7,v1,0x4
      c0:	01e37821 	addu	t7,t7,v1
      c4:	000f7880 	sll	t7,t7,0x2
      c8:	020fc021 	addu	t8,s0,t7
      cc:	8f190010 	lw	t9,16(t8)
      d0:	8e070004 	lw	a3,4(s0)
      d4:	00602825 	move	a1,v1
      d8:	0c000000 	jal	0 <Object_Spawn>
      dc:	03313021 	addu	a2,t9,s1
      e0:	92030008 	lbu	v1,8(s0)
      e4:	3c050000 	lui	a1,0x0
      e8:	24a50098 	addiu	a1,a1,152
      ec:	28610013 	slti	at,v1,19
      f0:	1020000a 	beqz	at,11c <Object_Spawn+0x11c>
      f4:	00034100 	sll	t0,v1,0x4
      f8:	01034021 	addu	t0,t0,v1
      fc:	00084080 	sll	t0,t0,0x2
     100:	02084821 	addu	t1,s0,t0
     104:	8d240010 	lw	a0,16(t1)
     108:	8e0b0004 	lw	t3,4(s0)
     10c:	00915021 	addu	t2,a0,s1
     110:	014b082b 	sltu	at,t2,t3
     114:	5420000c 	bnezl	at,148 <Object_Spawn+0x148>
     118:	8faf002c 	lw	t7,44(sp)
     11c:	3c040000 	lui	a0,0x0
     120:	24840034 	addiu	a0,a0,52
     124:	0c000000 	jal	0 <Object_Spawn>
     128:	2406008e 	li	a2,142
     12c:	920c0008 	lbu	t4,8(s0)
     130:	000c6900 	sll	t5,t4,0x4
     134:	01ac6821 	addu	t5,t5,t4
     138:	000d6880 	sll	t5,t5,0x2
     13c:	020d7021 	addu	t6,s0,t5
     140:	8dc40010 	lw	a0,16(t6)
     144:	8faf002c 	lw	t7,44(sp)
     148:	3c070000 	lui	a3,0x0
     14c:	24180091 	li	t8,145
     150:	8de50000 	lw	a1,0(t7)
     154:	afb80010 	sw	t8,16(sp)
     158:	24e700a8 	addiu	a3,a3,168
     15c:	0c000000 	jal	0 <Object_Spawn>
     160:	02203025 	move	a2,s1
     164:	92030008 	lbu	v1,8(s0)
     168:	28610012 	slti	at,v1,18
     16c:	10200010 	beqz	at,1b0 <Object_Spawn+0x1b0>
     170:	00601025 	move	v0,v1
     174:	0003c900 	sll	t9,v1,0x4
     178:	0323c821 	addu	t9,t9,v1
     17c:	0019c880 	sll	t9,t9,0x2
     180:	02194021 	addu	t0,s0,t9
     184:	8d090010 	lw	t1,16(t0)
     188:	00026900 	sll	t5,v0,0x4
     18c:	01a26821 	addu	t5,t5,v0
     190:	01315021 	addu	t2,t1,s1
     194:	254b000f 	addiu	t3,t2,15
     198:	000d6880 	sll	t5,t5,0x2
     19c:	2401fff0 	li	at,-16
     1a0:	01616024 	and	t4,t3,at
     1a4:	020d7021 	addu	t6,s0,t5
     1a8:	adcc0054 	sw	t4,84(t6)
     1ac:	92030008 	lbu	v1,8(s0)
     1b0:	246f0001 	addiu	t7,v1,1
     1b4:	31e300ff 	andi	v1,t7,0xff
     1b8:	a20f0008 	sb	t7,8(s0)
     1bc:	a2030009 	sb	v1,9(s0)
     1c0:	8fbf0024 	lw	ra,36(sp)
     1c4:	8fb10020 	lw	s1,32(sp)
     1c8:	8fb0001c 	lw	s0,28(sp)
     1cc:	27bd0038 	addiu	sp,sp,56
     1d0:	03e00008 	jr	ra
     1d4:	2462ffff 	addiu	v0,v1,-1

000001d8 <Object_InitBank>:
     1d8:	27bdffe0 	addiu	sp,sp,-32
     1dc:	afbf001c 	sw	ra,28(sp)
     1e0:	afb10018 	sw	s1,24(sp)
     1e4:	afb00014 	sw	s0,20(sp)
     1e8:	848200a4 	lh	v0,164(a0)
     1ec:	24010051 	li	at,81
     1f0:	00a08025 	move	s0,a1
     1f4:	14410004 	bne	v0,at,208 <Object_InitBank+0x30>
     1f8:	00803025 	move	a2,a0
     1fc:	3c11000f 	lui	s1,0xf
     200:	1000001f 	b	280 <Object_InitBank+0xa8>
     204:	3631a000 	ori	s1,s1,0xa000
     208:	2401004f 	li	at,79
     20c:	1441000b 	bne	v0,at,23c <Object_InitBank+0x64>
     210:	3c0e0000 	lui	t6,0x0
     214:	8dce1360 	lw	t6,4960(t6)
     218:	24010004 	li	at,4
     21c:	3c11000f 	lui	s1,0xf
     220:	11c10004 	beq	t6,at,234 <Object_InitBank+0x5c>
     224:	00000000 	nop
     228:	3c110011 	lui	s1,0x11
     22c:	10000014 	b	280 <Object_InitBank+0xa8>
     230:	3631f800 	ori	s1,s1,0xf800
     234:	10000012 	b	280 <Object_InitBank+0xa8>
     238:	3631a000 	ori	s1,s1,0xa000
     23c:	24010017 	li	at,23
     240:	14410003 	bne	v0,at,250 <Object_InitBank+0x78>
     244:	3c110010 	lui	s1,0x10
     248:	1000000d 	b	280 <Object_InitBank+0xa8>
     24c:	36316800 	ori	s1,s1,0x6800
     250:	24010044 	li	at,68
     254:	14410003 	bne	v0,at,264 <Object_InitBank+0x8c>
     258:	3c110010 	lui	s1,0x10
     25c:	10000008 	b	280 <Object_InitBank+0xa8>
     260:	36316800 	ori	s1,s1,0x6800
     264:	24010019 	li	at,25
     268:	14410004 	bne	v0,at,27c <Object_InitBank+0xa4>
     26c:	3c11000f 	lui	s1,0xf
     270:	3c110010 	lui	s1,0x10
     274:	10000002 	b	280 <Object_InitBank+0xa8>
     278:	36316800 	ori	s1,s1,0x6800
     27c:	3631a000 	ori	s1,s1,0xa000
     280:	a2000009 	sb	zero,9(s0)
     284:	a2000008 	sb	zero,8(s0)
     288:	a200000b 	sb	zero,11(s0)
     28c:	a200000a 	sb	zero,10(s0)
     290:	a600000c 	sh	zero,12(s0)
     294:	a6000050 	sh	zero,80(s0)
     298:	a6000094 	sh	zero,148(s0)
     29c:	24030003 	li	v1,3
     2a0:	260200cc 	addiu	v0,s0,204
     2a4:	24040013 	li	a0,19
     2a8:	24630004 	addiu	v1,v1,4
     2ac:	a4400050 	sh	zero,80(v0)
     2b0:	a4400094 	sh	zero,148(v0)
     2b4:	a44000d8 	sh	zero,216(v0)
     2b8:	24420110 	addiu	v0,v0,272
     2bc:	1464fffa 	bne	v1,a0,2a8 <Object_InitBank+0xd0>
     2c0:	a440fefc 	sh	zero,-260(v0)
     2c4:	3c040000 	lui	a0,0x0
     2c8:	248400b8 	addiu	a0,a0,184
     2cc:	0c000000 	jal	0 <Object_Spawn>
     2d0:	afa60020 	sw	a2,32(sp)
     2d4:	44912000 	mtc1	s1,$f4
     2d8:	3c040000 	lui	a0,0x0
     2dc:	248400c0 	addiu	a0,a0,192
     2e0:	06210005 	bgez	s1,2f8 <Object_InitBank+0x120>
     2e4:	468021a0 	cvt.s.w	$f6,$f4
     2e8:	3c014f80 	lui	at,0x4f80
     2ec:	44814000 	mtc1	at,$f8
     2f0:	00000000 	nop
     2f4:	46083180 	add.s	$f6,$f6,$f8
     2f8:	3c013a80 	lui	at,0x3a80
     2fc:	44815000 	mtc1	at,$f10
     300:	00000000 	nop
     304:	460a3402 	mul.s	$f16,$f6,$f10
     308:	460084a1 	cvt.d.s	$f18,$f16
     30c:	44079000 	mfc1	a3,$f18
     310:	44069800 	mfc1	a2,$f19
     314:	0c000000 	jal	0 <Object_Spawn>
     318:	00000000 	nop
     31c:	3c040000 	lui	a0,0x0
     320:	0c000000 	jal	0 <Object_Spawn>
     324:	248400e8 	addiu	a0,a0,232
     328:	3c060000 	lui	a2,0x0
     32c:	24c600ec 	addiu	a2,a2,236
     330:	8fa40020 	lw	a0,32(sp)
     334:	02202825 	move	a1,s1
     338:	0c000000 	jal	0 <Object_Spawn>
     33c:	240700db 	li	a3,219
     340:	0051c821 	addu	t9,v0,s1
     344:	ae020010 	sw	v0,16(s0)
     348:	ae020000 	sw	v0,0(s0)
     34c:	ae190004 	sw	t9,4(s0)
     350:	02002025 	move	a0,s0
     354:	0c000000 	jal	0 <Object_Spawn>
     358:	24050001 	li	a1,1
     35c:	304800ff 	andi	t0,v0,0xff
     360:	00084900 	sll	t1,t0,0x4
     364:	01284821 	addu	t1,t1,t0
     368:	00094880 	sll	t1,t1,0x2
     36c:	a202000a 	sb	v0,10(s0)
     370:	02095021 	addu	t2,s0,t1
     374:	8d4b0010 	lw	t3,16(t2)
     378:	8fbf001c 	lw	ra,28(sp)
     37c:	3c018000 	lui	at,0x8000
     380:	01616021 	addu	t4,t3,at
     384:	3c010000 	lui	at,0x0
     388:	8fb00014 	lw	s0,20(sp)
     38c:	8fb10018 	lw	s1,24(sp)
     390:	ac2c0010 	sw	t4,16(at)
     394:	03e00008 	jr	ra
     398:	27bd0020 	addiu	sp,sp,32

0000039c <Object_UpdateBank>:
     39c:	27bdffa0 	addiu	sp,sp,-96
     3a0:	afbf005c 	sw	ra,92(sp)
     3a4:	afbe0058 	sw	s8,88(sp)
     3a8:	afb70054 	sw	s7,84(sp)
     3ac:	afb60050 	sw	s6,80(sp)
     3b0:	afb5004c 	sw	s5,76(sp)
     3b4:	afb40048 	sw	s4,72(sp)
     3b8:	afb30044 	sw	s3,68(sp)
     3bc:	afb20040 	sw	s2,64(sp)
     3c0:	afb1003c 	sw	s1,60(sp)
     3c4:	afb00038 	sw	s0,56(sp)
     3c8:	f7b40030 	sdc1	$f20,48(sp)
     3cc:	908e0008 	lbu	t6,8(a0)
     3d0:	0080a825 	move	s5,a0
     3d4:	2490000c 	addiu	s0,a0,12
     3d8:	19c00047 	blez	t6,4f8 <Object_UpdateBank+0x15c>
     3dc:	0000a025 	move	s4,zero
     3e0:	3c013a80 	lui	at,0x3a80
     3e4:	3c1e0000 	lui	s8,0x0
     3e8:	3c170000 	lui	s7,0x0
     3ec:	3c160000 	lui	s6,0x0
     3f0:	4481a000 	mtc1	at,$f20
     3f4:	26d60000 	addiu	s6,s6,0
     3f8:	26f700fc 	addiu	s7,s7,252
     3fc:	27de012c 	addiu	s8,s8,300
     400:	860f0000 	lh	t7,0(s0)
     404:	05e30037 	bgezl	t7,4e4 <Object_UpdateBank+0x148>
     408:	92b80008 	lbu	t8,8(s5)
     40c:	8e180008 	lw	t8,8(s0)
     410:	26120028 	addiu	s2,s0,40
     414:	26040028 	addiu	a0,s0,40
     418:	1700002a 	bnez	t8,4c4 <Object_UpdateBank+0x128>
     41c:	00002825 	move	a1,zero
     420:	02402025 	move	a0,s2
     424:	26050040 	addiu	a1,s0,64
     428:	0c000000 	jal	0 <Object_Spawn>
     42c:	24060001 	li	a2,1
     430:	86190000 	lh	t9,0(s0)
     434:	02e02025 	move	a0,s7
     438:	02802825 	move	a1,s4
     43c:	00194023 	negu	t0,t9
     440:	000848c0 	sll	t1,t0,0x3
     444:	02c98821 	addu	s1,s6,t1
     448:	8e2a0004 	lw	t2,4(s1)
     44c:	8e2b0000 	lw	t3,0(s1)
     450:	3c014f80 	lui	at,0x4f80
     454:	014b9823 	subu	s3,t2,t3
     458:	44932000 	mtc1	s3,$f4
     45c:	06610004 	bgez	s3,470 <Object_UpdateBank+0xd4>
     460:	468021a0 	cvt.s.w	$f6,$f4
     464:	44814000 	mtc1	at,$f8
     468:	00000000 	nop
     46c:	46083180 	add.s	$f6,$f6,$f8
     470:	46143282 	mul.s	$f10,$f6,$f20
     474:	8e0c0004 	lw	t4,4(s0)
     478:	afac0010 	sw	t4,16(sp)
     47c:	46005421 	cvt.d.s	$f16,$f10
     480:	44078000 	mfc1	a3,$f16
     484:	44068800 	mfc1	a2,$f17
     488:	0c000000 	jal	0 <Object_Spawn>
     48c:	00000000 	nop
     490:	8e050004 	lw	a1,4(s0)
     494:	8e260000 	lw	a2,0(s1)
     498:	240d010a 	li	t5,266
     49c:	afad0020 	sw	t5,32(sp)
     4a0:	afbe001c 	sw	s8,28(sp)
     4a4:	afa00018 	sw	zero,24(sp)
     4a8:	afb20014 	sw	s2,20(sp)
     4ac:	afa00010 	sw	zero,16(sp)
     4b0:	26040008 	addiu	a0,s0,8
     4b4:	0c000000 	jal	0 <Object_Spawn>
     4b8:	02603825 	move	a3,s3
     4bc:	10000009 	b	4e4 <Object_UpdateBank+0x148>
     4c0:	92b80008 	lbu	t8,8(s5)
     4c4:	0c000000 	jal	0 <Object_Spawn>
     4c8:	00003025 	move	a2,zero
     4cc:	54400005 	bnezl	v0,4e4 <Object_UpdateBank+0x148>
     4d0:	92b80008 	lbu	t8,8(s5)
     4d4:	860e0000 	lh	t6,0(s0)
     4d8:	000e7823 	negu	t7,t6
     4dc:	a60f0000 	sh	t7,0(s0)
     4e0:	92b80008 	lbu	t8,8(s5)
     4e4:	26940001 	addiu	s4,s4,1
     4e8:	26100044 	addiu	s0,s0,68
     4ec:	0298082a 	slt	at,s4,t8
     4f0:	5420ffc4 	bnezl	at,404 <Object_UpdateBank+0x68>
     4f4:	860f0000 	lh	t7,0(s0)
     4f8:	8fbf005c 	lw	ra,92(sp)
     4fc:	d7b40030 	ldc1	$f20,48(sp)
     500:	8fb00038 	lw	s0,56(sp)
     504:	8fb1003c 	lw	s1,60(sp)
     508:	8fb20040 	lw	s2,64(sp)
     50c:	8fb30044 	lw	s3,68(sp)
     510:	8fb40048 	lw	s4,72(sp)
     514:	8fb5004c 	lw	s5,76(sp)
     518:	8fb60050 	lw	s6,80(sp)
     51c:	8fb70054 	lw	s7,84(sp)
     520:	8fbe0058 	lw	s8,88(sp)
     524:	03e00008 	jr	ra
     528:	27bd0060 	addiu	sp,sp,96

0000052c <Object_GetIndex>:
     52c:	afa50004 	sw	a1,4(sp)
     530:	90820008 	lbu	v0,8(a0)
     534:	00053c00 	sll	a3,a1,0x10
     538:	00073c03 	sra	a3,a3,0x10
     53c:	1840000f 	blez	v0,57c <Object_GetIndex+0x50>
     540:	00001825 	move	v1,zero
     544:	00802825 	move	a1,a0
     548:	84a4000c 	lh	a0,12(a1)
     54c:	04800003 	bltz	a0,55c <Object_GetIndex+0x30>
     550:	00043023 	negu	a2,a0
     554:	10000001 	b	55c <Object_GetIndex+0x30>
     558:	00803025 	move	a2,a0
     55c:	54c70004 	bnel	a2,a3,570 <Object_GetIndex+0x44>
     560:	24630001 	addiu	v1,v1,1
     564:	03e00008 	jr	ra
     568:	00601025 	move	v0,v1
     56c:	24630001 	addiu	v1,v1,1
     570:	0062082a 	slt	at,v1,v0
     574:	1420fff4 	bnez	at,548 <Object_GetIndex+0x1c>
     578:	24a50044 	addiu	a1,a1,68
     57c:	2402ffff 	li	v0,-1
     580:	03e00008 	jr	ra
     584:	00000000 	nop

00000588 <Object_IsLoaded>:
     588:	00057100 	sll	t6,a1,0x4
     58c:	01c57021 	addu	t6,t6,a1
     590:	000e7080 	sll	t6,t6,0x2
     594:	008e7821 	addu	t7,a0,t6
     598:	85f8000c 	lh	t8,12(t7)
     59c:	00001025 	move	v0,zero
     5a0:	1b000003 	blez	t8,5b0 <Object_IsLoaded+0x28>
     5a4:	00000000 	nop
     5a8:	03e00008 	jr	ra
     5ac:	24020001 	li	v0,1
     5b0:	03e00008 	jr	ra
     5b4:	00000000 	nop

000005b8 <func_800981B8>:
     5b8:	27bdffb0 	addiu	sp,sp,-80
     5bc:	afbf004c 	sw	ra,76(sp)
     5c0:	afbe0048 	sw	s8,72(sp)
     5c4:	afb70044 	sw	s7,68(sp)
     5c8:	afb60040 	sw	s6,64(sp)
     5cc:	afb5003c 	sw	s5,60(sp)
     5d0:	afb40038 	sw	s4,56(sp)
     5d4:	afb30034 	sw	s3,52(sp)
     5d8:	afb20030 	sw	s2,48(sp)
     5dc:	afb1002c 	sw	s1,44(sp)
     5e0:	afb00028 	sw	s0,40(sp)
     5e4:	f7b40020 	sdc1	$f20,32(sp)
     5e8:	908e0008 	lbu	t6,8(a0)
     5ec:	00809825 	move	s3,a0
     5f0:	00808025 	move	s0,a0
     5f4:	19c00034 	blez	t6,6c8 <func_800981B8+0x110>
     5f8:	0000a025 	move	s4,zero
     5fc:	3c013a80 	lui	at,0x3a80
     600:	3c1e0000 	lui	s8,0x0
     604:	3c170000 	lui	s7,0x0
     608:	3c160000 	lui	s6,0x0
     60c:	3c150000 	lui	s5,0x0
     610:	4481a000 	mtc1	at,$f20
     614:	26b50000 	addiu	s5,s5,0
     618:	26d6013c 	addiu	s6,s6,316
     61c:	26f70158 	addiu	s7,s7,344
     620:	27de0170 	addiu	s8,s8,368
     624:	8605000c 	lh	a1,12(s0)
     628:	02c02025 	move	a0,s6
     62c:	3c014f80 	lui	at,0x4f80
     630:	000578c0 	sll	t7,a1,0x3
     634:	02af9021 	addu	s2,s5,t7
     638:	8e580004 	lw	t8,4(s2)
     63c:	8e590000 	lw	t9,0(s2)
     640:	03198823 	subu	s1,t8,t9
     644:	44912000 	mtc1	s1,$f4
     648:	06210004 	bgez	s1,65c <func_800981B8+0xa4>
     64c:	468021a0 	cvt.s.w	$f6,$f4
     650:	44814000 	mtc1	at,$f8
     654:	00000000 	nop
     658:	46083180 	add.s	$f6,$f6,$f8
     65c:	46143282 	mul.s	$f10,$f6,$f20
     660:	8e080010 	lw	t0,16(s0)
     664:	afa80010 	sw	t0,16(sp)
     668:	46005421 	cvt.d.s	$f16,$f10
     66c:	44078000 	mfc1	a3,$f16
     670:	44068800 	mfc1	a2,$f17
     674:	0c000000 	jal	0 <Object_Spawn>
     678:	00000000 	nop
     67c:	8e090010 	lw	t1,16(s0)
     680:	02e02025 	move	a0,s7
     684:	92650008 	lbu	a1,8(s3)
     688:	8e670004 	lw	a3,4(s3)
     68c:	0c000000 	jal	0 <Object_Spawn>
     690:	01313021 	addu	a2,t1,s1
     694:	8e040010 	lw	a0,16(s0)
     698:	240a0156 	li	t2,342
     69c:	afaa0010 	sw	t2,16(sp)
     6a0:	8e450000 	lw	a1,0(s2)
     6a4:	02203025 	move	a2,s1
     6a8:	0c000000 	jal	0 <Object_Spawn>
     6ac:	03c03825 	move	a3,s8
     6b0:	926b0008 	lbu	t3,8(s3)
     6b4:	26940001 	addiu	s4,s4,1
     6b8:	26100044 	addiu	s0,s0,68
     6bc:	028b082a 	slt	at,s4,t3
     6c0:	5420ffd9 	bnezl	at,628 <func_800981B8+0x70>
     6c4:	8605000c 	lh	a1,12(s0)
     6c8:	8fbf004c 	lw	ra,76(sp)
     6cc:	d7b40020 	ldc1	$f20,32(sp)
     6d0:	8fb00028 	lw	s0,40(sp)
     6d4:	8fb1002c 	lw	s1,44(sp)
     6d8:	8fb20030 	lw	s2,48(sp)
     6dc:	8fb30034 	lw	s3,52(sp)
     6e0:	8fb40038 	lw	s4,56(sp)
     6e4:	8fb5003c 	lw	s5,60(sp)
     6e8:	8fb60040 	lw	s6,64(sp)
     6ec:	8fb70044 	lw	s7,68(sp)
     6f0:	8fbe0048 	lw	s8,72(sp)
     6f4:	03e00008 	jr	ra
     6f8:	27bd0050 	addiu	sp,sp,80

000006fc <func_800982FC>:
     6fc:	27bdffc8 	addiu	sp,sp,-56
     700:	afa60040 	sw	a2,64(sp)
     704:	00057900 	sll	t7,a1,0x4
     708:	00063400 	sll	a2,a2,0x10
     70c:	01e57821 	addu	t7,t7,a1
     710:	00063403 	sra	a2,a2,0x10
     714:	000f7880 	sll	t7,t7,0x2
     718:	afbf001c 	sw	ra,28(sp)
     71c:	afa40038 	sw	a0,56(sp)
     720:	008f1821 	addu	v1,a0,t7
     724:	3c090000 	lui	t1,0x0
     728:	0006c023 	negu	t8,a2
     72c:	25290000 	addiu	t1,t1,0
     730:	0006c8c0 	sll	t9,a2,0x3
     734:	a478000c 	sh	t8,12(v1)
     738:	ac600014 	sw	zero,20(v1)
     73c:	03291021 	addu	v0,t9,t1
     740:	8c4a0004 	lw	t2,4(v0)
     744:	8c4b0000 	lw	t3,0(v0)
     748:	3c040000 	lui	a0,0x0
     74c:	24840180 	addiu	a0,a0,384
     750:	014b3823 	subu	a3,t2,t3
     754:	44872000 	mtc1	a3,$f4
     758:	3c014f80 	lui	at,0x4f80
     75c:	04e10004 	bgez	a3,770 <func_800982FC+0x74>
     760:	468021a0 	cvt.s.w	$f6,$f4
     764:	44814000 	mtc1	at,$f8
     768:	00000000 	nop
     76c:	46083180 	add.s	$f6,$f6,$f8
     770:	3c013a80 	lui	at,0x3a80
     774:	44815000 	mtc1	at,$f10
     778:	afa30024 	sw	v1,36(sp)
     77c:	afa7002c 	sw	a3,44(sp)
     780:	460a3402 	mul.s	$f16,$f6,$f10
     784:	460084a1 	cvt.d.s	$f18,$f16
     788:	0c000000 	jal	0 <Object_Spawn>
     78c:	f7b20010 	sdc1	$f18,16(sp)
     790:	8fa30024 	lw	v1,36(sp)
     794:	8fa7002c 	lw	a3,44(sp)
     798:	8fad0038 	lw	t5,56(sp)
     79c:	8c6c0010 	lw	t4,16(v1)
     7a0:	2401fff0 	li	at,-16
     7a4:	8da20004 	lw	v0,4(t5)
     7a8:	01874021 	addu	t0,t4,a3
     7ac:	2508000f 	addiu	t0,t0,15
     7b0:	01014024 	and	t0,t0,at
     7b4:	0102082b 	sltu	at,t0,v0
     7b8:	1420000a 	bnez	at,7e4 <func_800982FC+0xe8>
     7bc:	3c040000 	lui	a0,0x0
     7c0:	3c050000 	lui	a1,0x0
     7c4:	24a501cc 	addiu	a1,a1,460
     7c8:	248401b0 	addiu	a0,a0,432
     7cc:	2406017d 	li	a2,381
     7d0:	0c000000 	jal	0 <Object_Spawn>
     7d4:	afa80028 	sw	t0,40(sp)
     7d8:	8fae0038 	lw	t6,56(sp)
     7dc:	8fa80028 	lw	t0,40(sp)
     7e0:	8dc20004 	lw	v0,4(t6)
     7e4:	3c040000 	lui	a0,0x0
     7e8:	248401dc 	addiu	a0,a0,476
     7ec:	00482823 	subu	a1,v0,t0
     7f0:	0c000000 	jal	0 <Object_Spawn>
     7f4:	afa80028 	sw	t0,40(sp)
     7f8:	8fbf001c 	lw	ra,28(sp)
     7fc:	8fa20028 	lw	v0,40(sp)
     800:	27bd0038 	addiu	sp,sp,56
     804:	03e00008 	jr	ra
     808:	00000000 	nop

0000080c <Scene_ExecuteCommands>:
     80c:	27bdffc0 	addiu	sp,sp,-64
     810:	afbe0038 	sw	s8,56(sp)
     814:	afb70034 	sw	s7,52(sp)
     818:	afb60030 	sw	s6,48(sp)
     81c:	afb5002c 	sw	s5,44(sp)
     820:	afb30024 	sw	s3,36(sp)
     824:	afb40028 	sw	s4,40(sp)
     828:	afb20020 	sw	s2,32(sp)
     82c:	afb1001c 	sw	s1,28(sp)
     830:	3c130000 	lui	s3,0x0
     834:	3c150000 	lui	s5,0x0
     838:	3c160000 	lui	s6,0x0
     83c:	3c170000 	lui	s7,0x0
     840:	3c1e0000 	lui	s8,0x0
     844:	00a08825 	move	s1,a1
     848:	00809025 	move	s2,a0
     84c:	afbf003c 	sw	ra,60(sp)
     850:	afb00018 	sw	s0,24(sp)
     854:	27de0260 	addiu	s8,s8,608
     858:	26f70248 	addiu	s7,s7,584
     85c:	26d60240 	addiu	s6,s6,576
     860:	26b50000 	addiu	s5,s5,0
     864:	26730204 	addiu	s3,s3,516
     868:	24140014 	li	s4,20
     86c:	92300000 	lbu	s0,0(s1)
     870:	02602025 	move	a0,s3
     874:	92260001 	lbu	a2,1(s1)
     878:	8e270004 	lw	a3,4(s1)
     87c:	0c000000 	jal	0 <Object_Spawn>
     880:	02002825 	move	a1,s0
     884:	12140013 	beq	s0,s4,8d4 <Scene_ExecuteCommands+0xc8>
     888:	2e01001a 	sltiu	at,s0,26
     88c:	10200009 	beqz	at,8b4 <Scene_ExecuteCommands+0xa8>
     890:	00107080 	sll	t6,s0,0x2
     894:	02ae7821 	addu	t7,s5,t6
     898:	8df90000 	lw	t9,0(t7)
     89c:	02402025 	move	a0,s2
     8a0:	02202825 	move	a1,s1
     8a4:	0320f809 	jalr	t9
     8a8:	00000000 	nop
     8ac:	1000ffef 	b	86c <Scene_ExecuteCommands+0x60>
     8b0:	26310008 	addiu	s1,s1,8
     8b4:	0c000000 	jal	0 <Object_Spawn>
     8b8:	02c02025 	move	a0,s6
     8bc:	0c000000 	jal	0 <Object_Spawn>
     8c0:	02e02025 	move	a0,s7
     8c4:	0c000000 	jal	0 <Object_Spawn>
     8c8:	03c02025 	move	a0,s8
     8cc:	1000ffe7 	b	86c <Scene_ExecuteCommands+0x60>
     8d0:	26310008 	addiu	s1,s1,8
     8d4:	8fbf003c 	lw	ra,60(sp)
     8d8:	8fb00018 	lw	s0,24(sp)
     8dc:	8fb1001c 	lw	s1,28(sp)
     8e0:	8fb20020 	lw	s2,32(sp)
     8e4:	8fb30024 	lw	s3,36(sp)
     8e8:	8fb40028 	lw	s4,40(sp)
     8ec:	8fb5002c 	lw	s5,44(sp)
     8f0:	8fb60030 	lw	s6,48(sp)
     8f4:	8fb70034 	lw	s7,52(sp)
     8f8:	8fbe0038 	lw	s8,56(sp)
     8fc:	27bd0040 	addiu	sp,sp,64
     900:	03e00008 	jr	ra
     904:	00001025 	move	v0,zero

00000908 <func_80098508>:
     908:	27bdffe8 	addiu	sp,sp,-24
     90c:	afbf0014 	sw	ra,20(sp)
     910:	afa5001c 	sw	a1,28(sp)
     914:	3c010001 	lui	at,0x1
     918:	00811821 	addu	v1,a0,at
     91c:	90781dea 	lbu	t8,7658(v1)
     920:	8ca70004 	lw	a3,4(a1)
     924:	8c6f1e00 	lw	t7,7680(v1)
     928:	0018c840 	sll	t9,t8,0x1
     92c:	00076900 	sll	t5,a3,0x4
     930:	000d7702 	srl	t6,t5,0x1c
     934:	01f95021 	addu	t2,t7,t9
     938:	3c0f0000 	lui	t7,0x0
     93c:	000ec080 	sll	t8,t6,0x2
     940:	01f87821 	addu	t7,t7,t8
     944:	8def0000 	lw	t7,0(t7)
     948:	914b0000 	lbu	t3,0(t2)
     94c:	3c0100ff 	lui	at,0xff
     950:	3421ffff 	ori	at,at,0xffff
     954:	00e1c824 	and	t9,a3,at
     958:	01f95021 	addu	t2,t7,t9
     95c:	000b6100 	sll	t4,t3,0x4
     960:	018a1021 	addu	v0,t4,t2
     964:	3c018000 	lui	at,0x8000
     968:	00414021 	addu	t0,v0,at
     96c:	3c010001 	lui	at,0x1
     970:	3c090000 	lui	t1,0x0
     974:	00240821 	addu	at,at,a0
     978:	25290000 	addiu	t1,t1,0
     97c:	ac281df4 	sw	t0,7668(at)
     980:	8d2b0004 	lw	t3,4(t1)
     984:	3c010001 	lui	at,0x1
     988:	00240821 	addu	at,at,a0
     98c:	a02b1de8 	sb	t3,7656(at)
     990:	8d220004 	lw	v0,4(t1)
     994:	850e0000 	lh	t6,0(t0)
     998:	3c050000 	lui	a1,0x0
     99c:	3c0f0000 	lui	t7,0x0
     9a0:	00026840 	sll	t5,v0,0x1
     9a4:	000ec140 	sll	t8,t6,0x5
     9a8:	00ad2821 	addu	a1,a1,t5
     9ac:	01f87821 	addu	t7,t7,t8
     9b0:	84a50000 	lh	a1,0(a1)
     9b4:	8def0014 	lw	t7,20(t7)
     9b8:	3c010001 	lui	at,0x1
     9bc:	342117a4 	ori	at,at,0x17a4
     9c0:	00812021 	addu	a0,a0,at
     9c4:	0c000000 	jal	0 <Object_Spawn>
     9c8:	a5e50008 	sh	a1,8(t7)
     9cc:	8fbf0014 	lw	ra,20(sp)
     9d0:	27bd0018 	addiu	sp,sp,24
     9d4:	03e00008 	jr	ra
     9d8:	00000000 	nop

000009dc <func_800985DC>:
     9dc:	90ae0001 	lbu	t6,1(a1)
     9e0:	3c010001 	lui	at,0x1
     9e4:	00240821 	addu	at,at,a0
     9e8:	a02e1deb 	sb	t6,7659(at)
     9ec:	8ca20004 	lw	v0,4(a1)
     9f0:	3c080000 	lui	t0,0x0
     9f4:	3c0100ff 	lui	at,0xff
     9f8:	00027900 	sll	t7,v0,0x4
     9fc:	000fc702 	srl	t8,t7,0x1c
     a00:	0018c880 	sll	t9,t8,0x2
     a04:	01194021 	addu	t0,t0,t9
     a08:	8d080000 	lw	t0,0(t0)
     a0c:	3421ffff 	ori	at,at,0xffff
     a10:	00414824 	and	t1,v0,at
     a14:	3c018000 	lui	at,0x8000
     a18:	01095021 	addu	t2,t0,t1
     a1c:	01415821 	addu	t3,t2,at
     a20:	3c010001 	lui	at,0x1
     a24:	00240821 	addu	at,at,a0
     a28:	03e00008 	jr	ra
     a2c:	ac2b1df8 	sw	t3,7672(at)

00000a30 <func_80098630>:
     a30:	8ca20004 	lw	v0,4(a1)
     a34:	3c190000 	lui	t9,0x0
     a38:	3c0100ff 	lui	at,0xff
     a3c:	00027100 	sll	t6,v0,0x4
     a40:	000e7f02 	srl	t7,t6,0x1c
     a44:	000fc080 	sll	t8,t7,0x2
     a48:	0338c821 	addu	t9,t9,t8
     a4c:	8f390000 	lw	t9,0(t9)
     a50:	3421ffff 	ori	at,at,0xffff
     a54:	00414024 	and	t0,v0,at
     a58:	3c018000 	lui	at,0x8000
     a5c:	03284821 	addu	t1,t9,t0
     a60:	01215021 	addu	t2,t1,at
     a64:	3c010001 	lui	at,0x1
     a68:	00240821 	addu	at,at,a0
     a6c:	03e00008 	jr	ra
     a70:	ac2a1dfc 	sw	t2,7676(at)

00000a74 <func_80098674>:
     a74:	27bdffe8 	addiu	sp,sp,-24
     a78:	afa5001c 	sw	a1,28(sp)
     a7c:	8fae001c 	lw	t6,28(sp)
     a80:	afbf0014 	sw	ra,20(sp)
     a84:	afa40018 	sw	a0,24(sp)
     a88:	8dc80004 	lw	t0,4(t6)
     a8c:	3c020000 	lui	v0,0x0
     a90:	24420000 	addiu	v0,v0,0
     a94:	00087900 	sll	t7,t0,0x4
     a98:	000fc702 	srl	t8,t7,0x1c
     a9c:	0018c880 	sll	t9,t8,0x2
     aa0:	00597021 	addu	t6,v0,t9
     aa4:	8dcf0000 	lw	t7,0(t6)
     aa8:	3c0300ff 	lui	v1,0xff
     aac:	3463ffff 	ori	v1,v1,0xffff
     ab0:	0103c024 	and	t8,t0,v1
     ab4:	3c078000 	lui	a3,0x8000
     ab8:	01f8c821 	addu	t9,t7,t8
     abc:	03273021 	addu	a2,t9,a3
     ac0:	8cc90010 	lw	t1,16(a2)
     ac4:	8cca0018 	lw	t2,24(a2)
     ac8:	8ccb001c 	lw	t3,28(a2)
     acc:	00097100 	sll	t6,t1,0x4
     ad0:	000e7f02 	srl	t7,t6,0x1c
     ad4:	000fc080 	sll	t8,t7,0x2
     ad8:	0058c821 	addu	t9,v0,t8
     adc:	8f2e0000 	lw	t6,0(t9)
     ae0:	01237824 	and	t7,t1,v1
     ae4:	8ccc0020 	lw	t4,32(a2)
     ae8:	01cfc021 	addu	t8,t6,t7
     aec:	0307c821 	addu	t9,t8,a3
     af0:	000a7100 	sll	t6,t2,0x4
     af4:	000e7f02 	srl	t7,t6,0x1c
     af8:	acd90010 	sw	t9,16(a2)
     afc:	000fc080 	sll	t8,t7,0x2
     b00:	0058c821 	addu	t9,v0,t8
     b04:	8f2e0000 	lw	t6,0(t9)
     b08:	01437824 	and	t7,t2,v1
     b0c:	8ccd0028 	lw	t5,40(a2)
     b10:	01cfc021 	addu	t8,t6,t7
     b14:	0307c821 	addu	t9,t8,a3
     b18:	000b7100 	sll	t6,t3,0x4
     b1c:	000e7f02 	srl	t7,t6,0x1c
     b20:	acd90018 	sw	t9,24(a2)
     b24:	000fc080 	sll	t8,t7,0x2
     b28:	0058c821 	addu	t9,v0,t8
     b2c:	8f2e0000 	lw	t6,0(t9)
     b30:	01637824 	and	t7,t3,v1
     b34:	00802825 	move	a1,a0
     b38:	01cfc021 	addu	t8,t6,t7
     b3c:	0307c821 	addu	t9,t8,a3
     b40:	000c7100 	sll	t6,t4,0x4
     b44:	000e7f02 	srl	t7,t6,0x1c
     b48:	acd9001c 	sw	t9,28(a2)
     b4c:	000fc080 	sll	t8,t7,0x2
     b50:	0058c821 	addu	t9,v0,t8
     b54:	8f2e0000 	lw	t6,0(t9)
     b58:	01837824 	and	t7,t4,v1
     b5c:	248407c0 	addiu	a0,a0,1984
     b60:	01cfc021 	addu	t8,t6,t7
     b64:	0307c821 	addu	t9,t8,a3
     b68:	000d7100 	sll	t6,t5,0x4
     b6c:	000e7f02 	srl	t7,t6,0x1c
     b70:	acd90020 	sw	t9,32(a2)
     b74:	000fc080 	sll	t8,t7,0x2
     b78:	0058c821 	addu	t9,v0,t8
     b7c:	8f2e0000 	lw	t6,0(t9)
     b80:	01a37824 	and	t7,t5,v1
     b84:	01cfc021 	addu	t8,t6,t7
     b88:	0307c821 	addu	t9,t8,a3
     b8c:	0c000000 	jal	0 <Object_Spawn>
     b90:	acd90028 	sw	t9,40(a2)
     b94:	8fbf0014 	lw	ra,20(sp)
     b98:	27bd0018 	addiu	sp,sp,24
     b9c:	03e00008 	jr	ra
     ba0:	00000000 	nop

00000ba4 <func_800987A4>:
     ba4:	90ae0001 	lbu	t6,1(a1)
     ba8:	3c010001 	lui	at,0x1
     bac:	00240821 	addu	at,at,a0
     bb0:	a02e1dec 	sb	t6,7660(at)
     bb4:	8ca20004 	lw	v0,4(a1)
     bb8:	3c080000 	lui	t0,0x0
     bbc:	3c0100ff 	lui	at,0xff
     bc0:	00027900 	sll	t7,v0,0x4
     bc4:	000fc702 	srl	t8,t7,0x1c
     bc8:	0018c880 	sll	t9,t8,0x2
     bcc:	01194021 	addu	t0,t0,t9
     bd0:	8d080000 	lw	t0,0(t0)
     bd4:	3421ffff 	ori	at,at,0xffff
     bd8:	00414824 	and	t1,v0,at
     bdc:	3c018000 	lui	at,0x8000
     be0:	01095021 	addu	t2,t0,t1
     be4:	01415821 	addu	t3,t2,at
     be8:	3c010001 	lui	at,0x1
     bec:	00240821 	addu	at,at,a0
     bf0:	03e00008 	jr	ra
     bf4:	ac2b1df0 	sw	t3,7664(at)

00000bf8 <func_800987F8>:
     bf8:	8ca20004 	lw	v0,4(a1)
     bfc:	3c190000 	lui	t9,0x0
     c00:	3c0100ff 	lui	at,0xff
     c04:	00027100 	sll	t6,v0,0x4
     c08:	000e7f02 	srl	t7,t6,0x1c
     c0c:	000fc080 	sll	t8,t7,0x2
     c10:	0338c821 	addu	t9,t9,t8
     c14:	8f390000 	lw	t9,0(t9)
     c18:	3421ffff 	ori	at,at,0xffff
     c1c:	00414024 	and	t0,v0,at
     c20:	3c018000 	lui	at,0x8000
     c24:	03284821 	addu	t1,t9,t0
     c28:	01215021 	addu	t2,t1,at
     c2c:	3c010001 	lui	at,0x1
     c30:	00240821 	addu	at,at,a0
     c34:	03e00008 	jr	ra
     c38:	ac2a1e00 	sw	t2,7680(at)

00000c3c <func_8009883C>:
     c3c:	27bdffe8 	addiu	sp,sp,-24
     c40:	afbf0014 	sw	ra,20(sp)
     c44:	8ca20004 	lw	v0,4(a1)
     c48:	00803025 	move	a2,a0
     c4c:	00a03825 	move	a3,a1
     c50:	1040001a 	beqz	v0,cbc <func_8009883C+0x80>
     c54:	3c010001 	lui	at,0x1
     c58:	342117a4 	ori	at,at,0x17a4
     c5c:	00022c00 	sll	a1,v0,0x10
     c60:	00052c03 	sra	a1,a1,0x10
     c64:	00812021 	addu	a0,a0,at
     c68:	afa60018 	sw	a2,24(sp)
     c6c:	0c000000 	jal	0 <Object_Spawn>
     c70:	afa7001c 	sw	a3,28(sp)
     c74:	8fa60018 	lw	a2,24(sp)
     c78:	3c010001 	lui	at,0x1
     c7c:	3c030001 	lui	v1,0x1
     c80:	8fa7001c 	lw	a3,28(sp)
     c84:	00260821 	addu	at,at,a2
     c88:	a02217af 	sb	v0,6063(at)
     c8c:	00c37021 	addu	t6,a2,v1
     c90:	91cf17af 	lbu	t7,6063(t6)
     c94:	3c018000 	lui	at,0x8000
     c98:	000fc100 	sll	t8,t7,0x4
     c9c:	030fc021 	addu	t8,t8,t7
     ca0:	0018c080 	sll	t8,t8,0x2
     ca4:	00d8c821 	addu	t9,a2,t8
     ca8:	03234021 	addu	t0,t9,v1
     cac:	8d0917b4 	lw	t1,6068(t0)
     cb0:	01215021 	addu	t2,t1,at
     cb4:	3c010000 	lui	at,0x0
     cb8:	ac2a0014 	sw	t2,20(at)
     cbc:	90e20001 	lbu	v0,1(a3)
     cc0:	00c02025 	move	a0,a2
     cc4:	3c0d0000 	lui	t5,0x0
     cc8:	1040000a 	beqz	v0,cf4 <func_8009883C+0xb8>
     ccc:	000258c0 	sll	t3,v0,0x3
     cd0:	256cfff8 	addiu	t4,t3,-8
     cd4:	25ad0000 	addiu	t5,t5,0
     cd8:	018d2821 	addu	a1,t4,t5
     cdc:	0c000000 	jal	0 <Object_Spawn>
     ce0:	afa60018 	sw	a2,24(sp)
     ce4:	8fa60018 	lw	a2,24(sp)
     ce8:	3c010001 	lui	at,0x1
     cec:	00260821 	addu	at,at,a2
     cf0:	ac221e0c 	sw	v0,7692(at)
     cf4:	8fbf0014 	lw	ra,20(sp)
     cf8:	27bd0018 	addiu	sp,sp,24
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_80098904>:
     d04:	90ae0001 	lbu	t6,1(a1)
     d08:	3c010001 	lui	at,0x1
     d0c:	00240821 	addu	at,at,a0
     d10:	a02e1cbf 	sb	t6,7359(at)
     d14:	8cb80004 	lw	t8,4(a1)
     d18:	3c010001 	lui	at,0x1
     d1c:	00240821 	addu	at,at,a0
     d20:	a0381cbe 	sb	t8,7358(at)
     d24:	8cb90004 	lw	t9,4(a1)
     d28:	3c010001 	lui	at,0x1
     d2c:	00240821 	addu	at,at,a0
     d30:	00194202 	srl	t0,t9,0x8
     d34:	31090001 	andi	t1,t0,0x1
     d38:	a0291cc1 	sb	t1,7361(at)
     d3c:	8caa0004 	lw	t2,4(a1)
     d40:	3c010001 	lui	at,0x1
     d44:	00240821 	addu	at,at,a0
     d48:	000a5a82 	srl	t3,t2,0xa
     d4c:	316c0001 	andi	t4,t3,0x1
     d50:	03e00008 	jr	ra
     d54:	a42c04e4 	sh	t4,1252(at)

00000d58 <func_80098958>:
     d58:	8ca20004 	lw	v0,4(a1)
     d5c:	3c190000 	lui	t9,0x0
     d60:	3c0100ff 	lui	at,0xff
     d64:	00027100 	sll	t6,v0,0x4
     d68:	000e7f02 	srl	t7,t6,0x1c
     d6c:	000fc080 	sll	t8,t7,0x2
     d70:	0338c821 	addu	t9,t9,t8
     d74:	8f390000 	lw	t9,0(t9)
     d78:	3421ffff 	ori	at,at,0xffff
     d7c:	00414024 	and	t0,v0,at
     d80:	3c018000 	lui	at,0x8000
     d84:	03284821 	addu	t1,t9,t0
     d88:	01215021 	addu	t2,t1,at
     d8c:	3c010001 	lui	at,0x1
     d90:	00240821 	addu	at,at,a0
     d94:	03e00008 	jr	ra
     d98:	ac2a1cc4 	sw	t2,7364(at)

00000d9c <func_8009899C>:
     d9c:	27bdffc0 	addiu	sp,sp,-64
     da0:	afbf003c 	sw	ra,60(sp)
     da4:	afbe0038 	sw	s8,56(sp)
     da8:	afb70034 	sw	s7,52(sp)
     dac:	afb60030 	sw	s6,48(sp)
     db0:	afb5002c 	sw	s5,44(sp)
     db4:	afb40028 	sw	s4,40(sp)
     db8:	afb30024 	sw	s3,36(sp)
     dbc:	afb20020 	sw	s2,32(sp)
     dc0:	afb1001c 	sw	s1,28(sp)
     dc4:	afb00018 	sw	s0,24(sp)
     dc8:	8ca20004 	lw	v0,4(a1)
     dcc:	3c190000 	lui	t9,0x0
     dd0:	3c0100ff 	lui	at,0xff
     dd4:	00027100 	sll	t6,v0,0x4
     dd8:	000e7f02 	srl	t7,t6,0x1c
     ddc:	000fc080 	sll	t8,t7,0x2
     de0:	0338c821 	addu	t9,t9,t8
     de4:	8f390000 	lw	t9,0(t9)
     de8:	3421ffff 	ori	at,at,0xffff
     dec:	00414024 	and	t0,v0,at
     df0:	3c018000 	lui	at,0x8000
     df4:	03289021 	addu	s2,t9,t0
     df8:	02419021 	addu	s2,s2,at
     dfc:	3c010001 	lui	at,0x1
     e00:	00818021 	addu	s0,a0,at
     e04:	921117ad 	lbu	s1,6061(s0)
     e08:	920617ac 	lbu	a2,6060(s0)
     e0c:	342117b0 	ori	at,at,0x17b0
     e10:	0011b100 	sll	s6,s1,0x4
     e14:	02d1b021 	addu	s6,s6,s1
     e18:	0016b080 	sll	s6,s6,0x2
     e1c:	00969821 	addu	s3,a0,s6
     e20:	02619821 	addu	s3,s3,at
     e24:	0226082a 	slt	at,s1,a2
     e28:	0080b825 	move	s7,a0
     e2c:	00a0f025 	move	s8,a1
     e30:	0000a825 	move	s5,zero
     e34:	10200020 	beqz	at,eb8 <func_8009899C+0x11c>
     e38:	0260a025 	move	s4,s3
     e3c:	86890000 	lh	t1,0(s4)
     e40:	864a0000 	lh	t2,0(s2)
     e44:	02601025 	move	v0,s3
     e48:	02201825 	move	v1,s1
     e4c:	112a0011 	beq	t1,t2,e94 <func_8009899C+0xf8>
     e50:	0226082a 	slt	at,s1,a2
     e54:	10200008 	beqz	at,e78 <func_8009899C+0xdc>
     e58:	26e51c24 	addiu	a1,s7,7204
     e5c:	a4400000 	sh	zero,0(v0)
     e60:	920b17ac 	lbu	t3,6060(s0)
     e64:	24630001 	addiu	v1,v1,1
     e68:	24420044 	addiu	v0,v0,68
     e6c:	006b082a 	slt	at,v1,t3
     e70:	5420fffb 	bnezl	at,e60 <func_8009899C+0xc4>
     e74:	a4400000 	sh	zero,0(v0)
     e78:	3c010001 	lui	at,0x1
     e7c:	00370821 	addu	at,at,s7
     e80:	a03117ac 	sb	s1,6060(at)
     e84:	0c000000 	jal	0 <Object_Spawn>
     e88:	02e02025 	move	a0,s7
     e8c:	10000007 	b	eac <func_8009899C+0x110>
     e90:	920617ac 	lbu	a2,6060(s0)
     e94:	26310001 	addiu	s1,s1,1
     e98:	26d60044 	addiu	s6,s6,68
     e9c:	26730044 	addiu	s3,s3,68
     ea0:	26b50001 	addiu	s5,s5,1
     ea4:	26520002 	addiu	s2,s2,2
     ea8:	26940044 	addiu	s4,s4,68
     eac:	0226082a 	slt	at,s1,a2
     eb0:	5420ffe3 	bnezl	at,e40 <func_8009899C+0xa4>
     eb4:	86890000 	lh	t1,0(s4)
     eb8:	93c20001 	lbu	v0,1(s8)
     ebc:	3c040000 	lui	a0,0x0
     ec0:	24840264 	addiu	a0,a0,612
     ec4:	28410014 	slti	at,v0,20
     ec8:	14200005 	bnez	at,ee0 <func_8009899C+0x144>
     ecc:	3c050000 	lui	a1,0x0
     ed0:	24a5029c 	addiu	a1,a1,668
     ed4:	0c000000 	jal	0 <Object_Spawn>
     ed8:	240602c1 	li	a2,705
     edc:	93c20001 	lbu	v0,1(s8)
     ee0:	02a2082a 	slt	at,s5,v0
     ee4:	10200014 	beqz	at,f38 <func_8009899C+0x19c>
     ee8:	3c010001 	lui	at,0x1
     eec:	342117a4 	ori	at,at,0x17a4
     ef0:	02e18021 	addu	s0,s7,at
     ef4:	02002025 	move	a0,s0
     ef8:	02202825 	move	a1,s1
     efc:	0c000000 	jal	0 <Object_Spawn>
     f00:	86460000 	lh	a2,0(s2)
     f04:	2a210012 	slti	at,s1,18
     f08:	10200005 	beqz	at,f20 <func_8009899C+0x184>
     f0c:	26310001 	addiu	s1,s1,1
     f10:	02f66021 	addu	t4,s7,s6
     f14:	3c010001 	lui	at,0x1
     f18:	002c0821 	addu	at,at,t4
     f1c:	ac2217f8 	sw	v0,6136(at)
     f20:	93cd0001 	lbu	t5,1(s8)
     f24:	26b50001 	addiu	s5,s5,1
     f28:	26d60044 	addiu	s6,s6,68
     f2c:	02ad082a 	slt	at,s5,t5
     f30:	1420fff0 	bnez	at,ef4 <func_8009899C+0x158>
     f34:	26520002 	addiu	s2,s2,2
     f38:	3c010001 	lui	at,0x1
     f3c:	00370821 	addu	at,at,s7
     f40:	a03117ac 	sb	s1,6060(at)
     f44:	8fbf003c 	lw	ra,60(sp)
     f48:	8fbe0038 	lw	s8,56(sp)
     f4c:	8fb70034 	lw	s7,52(sp)
     f50:	8fb60030 	lw	s6,48(sp)
     f54:	8fb5002c 	lw	s5,44(sp)
     f58:	8fb40028 	lw	s4,40(sp)
     f5c:	8fb30024 	lw	s3,36(sp)
     f60:	8fb20020 	lw	s2,32(sp)
     f64:	8fb1001c 	lw	s1,28(sp)
     f68:	8fb00018 	lw	s0,24(sp)
     f6c:	03e00008 	jr	ra
     f70:	27bd0040 	addiu	sp,sp,64

00000f74 <func_80098B74>:
     f74:	27bdffd0 	addiu	sp,sp,-48
     f78:	afbf002c 	sw	ra,44(sp)
     f7c:	afb40028 	sw	s4,40(sp)
     f80:	afb30024 	sw	s3,36(sp)
     f84:	afb20020 	sw	s2,32(sp)
     f88:	afb1001c 	sw	s1,28(sp)
     f8c:	afb00018 	sw	s0,24(sp)
     f90:	8ca20004 	lw	v0,4(a1)
     f94:	3c190000 	lui	t9,0x0
     f98:	3c0100ff 	lui	at,0xff
     f9c:	00027100 	sll	t6,v0,0x4
     fa0:	000e7f02 	srl	t7,t6,0x1c
     fa4:	000fc080 	sll	t8,t7,0x2
     fa8:	0338c821 	addu	t9,t9,t8
     fac:	8f390000 	lw	t9,0(t9)
     fb0:	3421ffff 	ori	at,at,0xffff
     fb4:	90a90001 	lbu	t1,1(a1)
     fb8:	00414024 	and	t0,v0,at
     fbc:	3c018000 	lui	at,0x8000
     fc0:	03288021 	addu	s0,t9,t0
     fc4:	00a09025 	move	s2,a1
     fc8:	00809825 	move	s3,a0
     fcc:	02018021 	addu	s0,s0,at
     fd0:	1920000c 	blez	t1,1004 <func_80098B74+0x90>
     fd4:	00008825 	move	s1,zero
     fd8:	249407a8 	addiu	s4,a0,1960
     fdc:	02602025 	move	a0,s3
     fe0:	02802825 	move	a1,s4
     fe4:	0c000000 	jal	0 <Object_Spawn>
     fe8:	02003025 	move	a2,s0
     fec:	924a0001 	lbu	t2,1(s2)
     ff0:	26310001 	addiu	s1,s1,1
     ff4:	2610000e 	addiu	s0,s0,14
     ff8:	022a082a 	slt	at,s1,t2
     ffc:	5420fff8 	bnezl	at,fe0 <func_80098B74+0x6c>
    1000:	02602025 	move	a0,s3
    1004:	8fbf002c 	lw	ra,44(sp)
    1008:	8fb00018 	lw	s0,24(sp)
    100c:	8fb1001c 	lw	s1,28(sp)
    1010:	8fb20020 	lw	s2,32(sp)
    1014:	8fb30024 	lw	s3,36(sp)
    1018:	8fb40028 	lw	s4,40(sp)
    101c:	03e00008 	jr	ra
    1020:	27bd0030 	addiu	sp,sp,48

00001024 <func_80098C24>:
    1024:	8ca20004 	lw	v0,4(a1)
    1028:	3c190000 	lui	t9,0x0
    102c:	3c0100ff 	lui	at,0xff
    1030:	00027100 	sll	t6,v0,0x4
    1034:	000e7f02 	srl	t7,t6,0x1c
    1038:	000fc080 	sll	t8,t7,0x2
    103c:	0338c821 	addu	t9,t9,t8
    1040:	8f390000 	lw	t9,0(t9)
    1044:	3421ffff 	ori	at,at,0xffff
    1048:	00414024 	and	t0,v0,at
    104c:	3c018000 	lui	at,0x8000
    1050:	03284821 	addu	t1,t9,t0
    1054:	01215021 	addu	t2,t1,at
    1058:	3c010001 	lui	at,0x1
    105c:	00240821 	addu	at,at,a0
    1060:	03e00008 	jr	ra
    1064:	ac2a1e08 	sw	t2,7688(at)

00001068 <func_80098C68>:
    1068:	90ae0001 	lbu	t6,1(a1)
    106c:	3c010001 	lui	at,0x1
    1070:	00240821 	addu	at,at,a0
    1074:	a02e1d34 	sb	t6,7476(at)
    1078:	8ca20004 	lw	v0,4(a1)
    107c:	3c080000 	lui	t0,0x0
    1080:	3c0100ff 	lui	at,0xff
    1084:	00027900 	sll	t7,v0,0x4
    1088:	000fc702 	srl	t8,t7,0x1c
    108c:	0018c880 	sll	t9,t8,0x2
    1090:	01194021 	addu	t0,t0,t9
    1094:	8d080000 	lw	t0,0(t0)
    1098:	3421ffff 	ori	at,at,0xffff
    109c:	00414824 	and	t1,v0,at
    10a0:	3c018000 	lui	at,0x8000
    10a4:	01095021 	addu	t2,t0,t1
    10a8:	01415821 	addu	t3,t2,at
    10ac:	3c010001 	lui	at,0x1
    10b0:	00240821 	addu	at,at,a0
    10b4:	03e00008 	jr	ra
    10b8:	ac2b1d38 	sw	t3,7480(at)

000010bc <func_80098CBC>:
    10bc:	afa40000 	sw	a0,0(sp)
    10c0:	03e00008 	jr	ra
    10c4:	a0a00000 	sb	zero,0(a1)

000010c8 <func_80098CC8>:
    10c8:	90ae0001 	lbu	t6,1(a1)
    10cc:	3c010001 	lui	at,0x1
    10d0:	00240821 	addu	at,at,a0
    10d4:	a02e0ad8 	sb	t6,2776(at)
    10d8:	8ca20004 	lw	v0,4(a1)
    10dc:	3c080000 	lui	t0,0x0
    10e0:	3c0100ff 	lui	at,0xff
    10e4:	00027900 	sll	t7,v0,0x4
    10e8:	000fc702 	srl	t8,t7,0x1c
    10ec:	0018c880 	sll	t9,t8,0x2
    10f0:	01194021 	addu	t0,t0,t9
    10f4:	8d080000 	lw	t0,0(t0)
    10f8:	3421ffff 	ori	at,at,0xffff
    10fc:	00414824 	and	t1,v0,at
    1100:	3c018000 	lui	at,0x8000
    1104:	01095021 	addu	t2,t0,t1
    1108:	01415821 	addu	t3,t2,at
    110c:	3c010001 	lui	at,0x1
    1110:	00240821 	addu	at,at,a0
    1114:	03e00008 	jr	ra
    1118:	ac2b0adc 	sw	t3,2780(at)

0000111c <func_80098D1C>:
    111c:	90ae0004 	lbu	t6,4(a1)
    1120:	3c010001 	lui	at,0x1
    1124:	00240821 	addu	at,at,a0
    1128:	a02e1e14 	sb	t6,7700(at)
    112c:	90a20005 	lbu	v0,5(a1)
    1130:	3c010001 	lui	at,0x1
    1134:	00240821 	addu	at,at,a0
    1138:	a0220a3c 	sb	v0,2620(at)
    113c:	3c010001 	lui	at,0x1
    1140:	00240821 	addu	at,at,a0
    1144:	a0220a3b 	sb	v0,2619(at)
    1148:	90af0006 	lbu	t7,6(a1)
    114c:	3c010001 	lui	at,0x1
    1150:	00240821 	addu	at,at,a0
    1154:	03e00008 	jr	ra
    1158:	a02f0a42 	sb	t7,2626(at)

0000115c <func_80098D5C>:
    115c:	90ae0004 	lbu	t6,4(a1)
    1160:	3c010001 	lui	at,0x1
    1164:	00240821 	addu	at,at,a0
    1168:	a02e0a39 	sb	t6,2617(at)
    116c:	90af0005 	lbu	t7,5(a1)
    1170:	3c010001 	lui	at,0x1
    1174:	00240821 	addu	at,at,a0
    1178:	03e00008 	jr	ra
    117c:	a02f0a3a 	sb	t7,2618(at)

00001180 <func_80098D80>:
    1180:	27bdffe0 	addiu	sp,sp,-32
    1184:	afbf0014 	sw	ra,20(sp)
    1188:	90a20004 	lbu	v0,4(a1)
    118c:	240700ff 	li	a3,255
    1190:	00803025 	move	a2,a0
    1194:	10e2003e 	beq	a3,v0,1290 <func_80098D80+0x110>
    1198:	3c080001 	lui	t0,0x1
    119c:	90a40005 	lbu	a0,5(a1)
    11a0:	3c030000 	lui	v1,0x0
    11a4:	24630000 	addiu	v1,v1,0
    11a8:	10e40039 	beq	a3,a0,1290 <func_80098D80+0x110>
    11ac:	3c014270 	lui	at,0x4270
    11b0:	44822000 	mtc1	v0,$f4
    11b4:	44810000 	mtc1	at,$f0
    11b8:	04410005 	bgez	v0,11d0 <func_80098D80+0x50>
    11bc:	468021a0 	cvt.s.w	$f6,$f4
    11c0:	3c014f80 	lui	at,0x4f80
    11c4:	44814000 	mtc1	at,$f8
    11c8:	00000000 	nop
    11cc:	46083180 	add.s	$f6,$f6,$f8
    11d0:	44845000 	mtc1	a0,$f10
    11d4:	3c014f80 	lui	at,0x4f80
    11d8:	04810004 	bgez	a0,11ec <func_80098D80+0x6c>
    11dc:	46805420 	cvt.s.w	$f16,$f10
    11e0:	44819000 	mtc1	at,$f18
    11e4:	00000000 	nop
    11e8:	46128400 	add.s	$f16,$f16,$f18
    11ec:	46008103 	div.s	$f4,$f16,$f0
    11f0:	3c013cb4 	lui	at,0x3cb4
    11f4:	44819000 	mtc1	at,$f18
    11f8:	240f0001 	li	t7,1
    11fc:	3c014f00 	lui	at,0x4f00
    1200:	46043200 	add.s	$f8,$f6,$f4
    1204:	46004282 	mul.s	$f10,$f8,$f0
    1208:	46125403 	div.s	$f16,$f10,$f18
    120c:	444ef800 	cfc1	t6,$31
    1210:	44cff800 	ctc1	t7,$31
    1214:	00000000 	nop
    1218:	460081a4 	cvt.w.s	$f6,$f16
    121c:	444ff800 	cfc1	t7,$31
    1220:	00000000 	nop
    1224:	31ef0078 	andi	t7,t7,0x78
    1228:	51e00013 	beqzl	t7,1278 <func_80098D80+0xf8>
    122c:	440f3000 	mfc1	t7,$f6
    1230:	44813000 	mtc1	at,$f6
    1234:	240f0001 	li	t7,1
    1238:	46068181 	sub.s	$f6,$f16,$f6
    123c:	44cff800 	ctc1	t7,$31
    1240:	00000000 	nop
    1244:	460031a4 	cvt.w.s	$f6,$f6
    1248:	444ff800 	cfc1	t7,$31
    124c:	00000000 	nop
    1250:	31ef0078 	andi	t7,t7,0x78
    1254:	15e00005 	bnez	t7,126c <func_80098D80+0xec>
    1258:	00000000 	nop
    125c:	440f3000 	mfc1	t7,$f6
    1260:	3c018000 	lui	at,0x8000
    1264:	10000007 	b	1284 <func_80098D80+0x104>
    1268:	01e17825 	or	t7,t7,at
    126c:	10000005 	b	1284 <func_80098D80+0x104>
    1270:	240fffff 	li	t7,-1
    1274:	440f3000 	mfc1	t7,$f6
    1278:	00000000 	nop
    127c:	05e0fffb 	bltz	t7,126c <func_80098D80+0xec>
    1280:	00000000 	nop
    1284:	44cef800 	ctc1	t6,$31
    1288:	a46f000c 	sh	t7,12(v1)
    128c:	a46f141a 	sh	t7,5146(v1)
    1290:	90a20006 	lbu	v0,6(a1)
    1294:	3c030000 	lui	v1,0x0
    1298:	24630000 	addiu	v1,v1,0
    129c:	10e20005 	beq	a3,v0,12b4 <func_80098D80+0x134>
    12a0:	3c010001 	lui	at,0x1
    12a4:	3c010001 	lui	at,0x1
    12a8:	00260821 	addu	at,at,a2
    12ac:	10000003 	b	12bc <func_80098D80+0x13c>
    12b0:	a4220a26 	sh	v0,2598(at)
    12b4:	00260821 	addu	at,at,a2
    12b8:	a4200a26 	sh	zero,2598(at)
    12bc:	84791422 	lh	t9,5154(v1)
    12c0:	01064021 	addu	t0,t0,a2
    12c4:	57200005 	bnezl	t9,12dc <func_80098D80+0x15c>
    12c8:	9462000c 	lhu	v0,12(v1)
    12cc:	95080a26 	lhu	t0,2598(t0)
    12d0:	3c010000 	lui	at,0x0
    12d4:	a4280000 	sh	t0,0(at)
    12d8:	9462000c 	lhu	v0,12(v1)
    12dc:	24018000 	li	at,-32768
    12e0:	afa60020 	sw	a2,32(sp)
    12e4:	00412021 	addu	a0,v0,at
    12e8:	3c010001 	lui	at,0x1
    12ec:	00c14821 	addu	t1,a2,at
    12f0:	00042400 	sll	a0,a0,0x10
    12f4:	00042403 	sra	a0,a0,0x10
    12f8:	0c000000 	jal	0 <Object_Spawn>
    12fc:	afa90018 	sw	t1,24(sp)
    1300:	3c0142f0 	lui	at,0x42f0
    1304:	44812000 	mtc1	at,$f4
    1308:	3c0141c8 	lui	at,0x41c8
    130c:	44819000 	mtc1	at,$f18
    1310:	46040202 	mul.s	$f8,$f0,$f4
    1314:	8fa60020 	lw	a2,32(sp)
    1318:	3c010001 	lui	at,0x1
    131c:	3c030000 	lui	v1,0x0
    1320:	00260821 	addu	at,at,a2
    1324:	24630000 	addiu	v1,v1,0
    1328:	46004287 	neg.s	$f10,$f8
    132c:	46125402 	mul.s	$f16,$f10,$f18
    1330:	e4300a28 	swc1	$f16,2600(at)
    1334:	9462000c 	lhu	v0,12(v1)
    1338:	24018000 	li	at,-32768
    133c:	00412021 	addu	a0,v0,at
    1340:	00042400 	sll	a0,a0,0x10
    1344:	0c000000 	jal	0 <Object_Spawn>
    1348:	00042403 	sra	a0,a0,0x10
    134c:	3c0142f0 	lui	at,0x42f0
    1350:	44813000 	mtc1	at,$f6
    1354:	3c0141c8 	lui	at,0x41c8
    1358:	44814000 	mtc1	at,$f8
    135c:	46060102 	mul.s	$f4,$f0,$f6
    1360:	8fa60020 	lw	a2,32(sp)
    1364:	3c010001 	lui	at,0x1
    1368:	3c030000 	lui	v1,0x0
    136c:	00260821 	addu	at,at,a2
    1370:	24630000 	addiu	v1,v1,0
    1374:	46082282 	mul.s	$f10,$f4,$f8
    1378:	e42a0a2c 	swc1	$f10,2604(at)
    137c:	9462000c 	lhu	v0,12(v1)
    1380:	24018000 	li	at,-32768
    1384:	00412021 	addu	a0,v0,at
    1388:	00042400 	sll	a0,a0,0x10
    138c:	0c000000 	jal	0 <Object_Spawn>
    1390:	00042403 	sra	a0,a0,0x10
    1394:	3c0141a0 	lui	at,0x41a0
    1398:	44819000 	mtc1	at,$f18
    139c:	3c0141c8 	lui	at,0x41c8
    13a0:	44813000 	mtc1	at,$f6
    13a4:	46120402 	mul.s	$f16,$f0,$f18
    13a8:	8fa60020 	lw	a2,32(sp)
    13ac:	3c010001 	lui	at,0x1
    13b0:	3c030000 	lui	v1,0x0
    13b4:	00260821 	addu	at,at,a2
    13b8:	24630000 	addiu	v1,v1,0
    13bc:	46068102 	mul.s	$f4,$f16,$f6
    13c0:	e4240a30 	swc1	$f4,2608(at)
    13c4:	8faa0018 	lw	t2,24(sp)
    13c8:	954b0a26 	lhu	t3,2598(t2)
    13cc:	55600007 	bnezl	t3,13ec <func_80098D80+0x26c>
    13d0:	8c6d0000 	lw	t5,0(v1)
    13d4:	8c6c0008 	lw	t4,8(v1)
    13d8:	3401fff0 	li	at,0xfff0
    13dc:	0181082a 	slt	at,t4,at
    13e0:	54200006 	bnezl	at,13fc <func_80098D80+0x27c>
    13e4:	946e000c 	lhu	t6,12(v1)
    13e8:	8c6d0000 	lw	t5,0(v1)
    13ec:	24010604 	li	at,1540
    13f0:	55a10024 	bnel	t5,at,1484 <func_80098D80+0x304>
    13f4:	8fbf0014 	lw	ra,20(sp)
    13f8:	946e000c 	lhu	t6,12(v1)
    13fc:	31c2ffff 	andi	v0,t6,0xffff
    1400:	28412aac 	slti	at,v0,10924
    1404:	14200006 	bnez	at,1420 <func_80098D80+0x2a0>
    1408:	a46e141a 	sh	t6,5146(v1)
    140c:	28414555 	slti	at,v0,17749
    1410:	10200003 	beqz	at,1420 <func_80098D80+0x2a0>
    1414:	240f3556 	li	t7,13654
    1418:	10000019 	b	1480 <func_80098D80+0x300>
    141c:	a46f141a 	sh	t7,5146(v1)
    1420:	28414555 	slti	at,v0,17749
    1424:	14200005 	bnez	at,143c <func_80098D80+0x2bc>
    1428:	28415556 	slti	at,v0,21846
    142c:	10200003 	beqz	at,143c <func_80098D80+0x2bc>
    1430:	24185556 	li	t8,21846
    1434:	10000012 	b	1480 <func_80098D80+0x300>
    1438:	a478141a 	sh	t8,5146(v1)
    143c:	3401aaab 	li	at,0xaaab
    1440:	0041082a 	slt	at,v0,at
    1444:	14200006 	bnez	at,1460 <func_80098D80+0x2e0>
    1448:	3401b556 	li	at,0xb556
    144c:	0041082a 	slt	at,v0,at
    1450:	10200003 	beqz	at,1460 <func_80098D80+0x2e0>
    1454:	3419b556 	li	t9,0xb556
    1458:	10000009 	b	1480 <func_80098D80+0x300>
    145c:	a479141a 	sh	t9,5146(v1)
    1460:	3401c001 	li	at,0xc001
    1464:	0041082a 	slt	at,v0,at
    1468:	14200005 	bnez	at,1480 <func_80098D80+0x300>
    146c:	3401caac 	li	at,0xcaac
    1470:	0041082a 	slt	at,v0,at
    1474:	10200002 	beqz	at,1480 <func_80098D80+0x300>
    1478:	3408caac 	li	t0,0xcaac
    147c:	a468141a 	sh	t0,5146(v1)
    1480:	8fbf0014 	lw	ra,20(sp)
    1484:	27bd0020 	addiu	sp,sp,32
    1488:	03e00008 	jr	ra
    148c:	00000000 	nop

00001490 <func_80099090>:
    1490:	80a20004 	lb	v0,4(a1)
    1494:	3c010001 	lui	at,0x1
    1498:	80a30005 	lb	v1,5(a1)
    149c:	80a60006 	lb	a2,6(a1)
    14a0:	00240821 	addu	at,at,a0
    14a4:	a4220acc 	sh	v0,2764(at)
    14a8:	3c010001 	lui	at,0x1
    14ac:	00240821 	addu	at,at,a0
    14b0:	a4230ace 	sh	v1,2766(at)
    14b4:	3c010001 	lui	at,0x1
    14b8:	00240821 	addu	at,at,a0
    14bc:	a4260ad0 	sh	a2,2768(at)
    14c0:	90ae0007 	lbu	t6,7(a1)
    14c4:	3c014f80 	lui	at,0x4f80
    14c8:	448e2000 	mtc1	t6,$f4
    14cc:	05c10004 	bgez	t6,14e0 <func_80099090+0x50>
    14d0:	468021a0 	cvt.s.w	$f6,$f4
    14d4:	44814000 	mtc1	at,$f8
    14d8:	00000000 	nop
    14dc:	46083180 	add.s	$f6,$f6,$f8
    14e0:	3c010001 	lui	at,0x1
    14e4:	00240821 	addu	at,at,a0
    14e8:	03e00008 	jr	ra
    14ec:	e4260ad4 	swc1	$f6,2772(at)

000014f0 <func_800990F0>:
    14f0:	8ca20004 	lw	v0,4(a1)
    14f4:	3c190000 	lui	t9,0x0
    14f8:	3c0100ff 	lui	at,0xff
    14fc:	00027100 	sll	t6,v0,0x4
    1500:	000e7f02 	srl	t7,t6,0x1c
    1504:	000fc080 	sll	t8,t7,0x2
    1508:	0338c821 	addu	t9,t9,t8
    150c:	8f390000 	lw	t9,0(t9)
    1510:	3421ffff 	ori	at,at,0xffff
    1514:	00414024 	and	t0,v0,at
    1518:	3c018000 	lui	at,0x8000
    151c:	03284821 	addu	t1,t9,t0
    1520:	01215021 	addu	t2,t1,at
    1524:	3c010001 	lui	at,0x1
    1528:	00240821 	addu	at,at,a0
    152c:	03e00008 	jr	ra
    1530:	ac2a1e04 	sw	t2,7684(at)

00001534 <func_80099134>:
    1534:	afa40000 	sw	a0,0(sp)
    1538:	03e00008 	jr	ra
    153c:	afa50004 	sw	a1,4(sp)

00001540 <func_80099140>:
    1540:	27bdffe8 	addiu	sp,sp,-24
    1544:	afbf0014 	sw	ra,20(sp)
    1548:	90ae0007 	lbu	t6,7(a1)
    154c:	3c180000 	lui	t8,0x0
    1550:	240100ff 	li	at,255
    1554:	a08e07a4 	sb	t6,1956(a0)
    1558:	90af0006 	lbu	t7,6(a1)
    155c:	a08f07a5 	sb	t7,1957(a0)
    1560:	931813e0 	lbu	t8,5088(t8)
    1564:	57010006 	bnel	t8,at,1580 <func_80099140+0x40>
    1568:	8fbf0014 	lw	ra,20(sp)
    156c:	90a40001 	lbu	a0,1(a1)
    1570:	3c01f000 	lui	at,0xf000
    1574:	0c000000 	jal	0 <Object_Spawn>
    1578:	00812025 	or	a0,a0,at
    157c:	8fbf0014 	lw	ra,20(sp)
    1580:	27bd0018 	addiu	sp,sp,24
    1584:	03e00008 	jr	ra
    1588:	00000000 	nop

0000158c <func_8009918C>:
    158c:	90ae0007 	lbu	t6,7(a1)
    1590:	3c010001 	lui	at,0x1
    1594:	00240821 	addu	at,at,a0
    1598:	03e00008 	jr	ra
    159c:	a02e1cc0 	sb	t6,7360(at)

000015a0 <func_800991A0>:
    15a0:	27bdffe0 	addiu	sp,sp,-32
    15a4:	afa40020 	sw	a0,32(sp)
    15a8:	afa50024 	sw	a1,36(sp)
    15ac:	afbf0014 	sw	ra,20(sp)
    15b0:	3c050000 	lui	a1,0x0
    15b4:	3c040000 	lui	a0,0x0
    15b8:	248402ac 	addiu	a0,a0,684
    15bc:	0c000000 	jal	0 <Object_Spawn>
    15c0:	8ca50004 	lw	a1,4(a1)
    15c4:	3c050000 	lui	a1,0x0
    15c8:	3c040000 	lui	a0,0x0
    15cc:	248402c8 	addiu	a0,a0,712
    15d0:	0c000000 	jal	0 <Object_Spawn>
    15d4:	8ca50008 	lw	a1,8(a1)
    15d8:	3c050000 	lui	a1,0x0
    15dc:	3c040000 	lui	a0,0x0
    15e0:	248402e4 	addiu	a0,a0,740
    15e4:	0c000000 	jal	0 <Object_Spawn>
    15e8:	8ca51360 	lw	a1,4960(a1)
    15ec:	3c020000 	lui	v0,0x0
    15f0:	8c421360 	lw	v0,4960(v0)
    15f4:	3c070000 	lui	a3,0x0
    15f8:	8fae0024 	lw	t6,36(sp)
    15fc:	50400050 	beqzl	v0,1740 <func_800991A0+0x1a0>
    1600:	8fbf0014 	lw	ra,20(sp)
    1604:	8dc30004 	lw	v1,4(t6)
    1608:	24e70000 	addiu	a3,a3,0
    160c:	3c0800ff 	lui	t0,0xff
    1610:	00037900 	sll	t7,v1,0x4
    1614:	000fc702 	srl	t8,t7,0x1c
    1618:	0018c880 	sll	t9,t8,0x2
    161c:	00f95021 	addu	t2,a3,t9
    1620:	8d4b0000 	lw	t3,0(t2)
    1624:	3508ffff 	ori	t0,t0,0xffff
    1628:	00686024 	and	t4,v1,t0
    162c:	3c098000 	lui	t1,0x8000
    1630:	016c6821 	addu	t5,t3,t4
    1634:	01a97021 	addu	t6,t5,t1
    1638:	00027880 	sll	t7,v0,0x2
    163c:	01cfc021 	addu	t8,t6,t7
    1640:	8f06fffc 	lw	a2,-4(t8)
    1644:	3c040000 	lui	a0,0x0
    1648:	10c0000e 	beqz	a2,1684 <func_800991A0+0xe4>
    164c:	0006c900 	sll	t9,a2,0x4
    1650:	00195702 	srl	t2,t9,0x1c
    1654:	000a5880 	sll	t3,t2,0x2
    1658:	00eb6021 	addu	t4,a3,t3
    165c:	8d8d0000 	lw	t5,0(t4)
    1660:	00c87024 	and	t6,a2,t0
    1664:	8fa40020 	lw	a0,32(sp)
    1668:	01ae7821 	addu	t7,t5,t6
    166c:	0c000000 	jal	0 <Object_Spawn>
    1670:	01e92821 	addu	a1,t7,t1
    1674:	8fb90024 	lw	t9,36(sp)
    1678:	24180014 	li	t8,20
    167c:	1000002f 	b	173c <func_800991A0+0x19c>
    1680:	a3380008 	sb	t8,8(t9)
    1684:	0c000000 	jal	0 <Object_Spawn>
    1688:	24840300 	addiu	a0,a0,768
    168c:	3c020000 	lui	v0,0x0
    1690:	8c421360 	lw	v0,4960(v0)
    1694:	24010003 	li	at,3
    1698:	8faa0024 	lw	t2,36(sp)
    169c:	14410027 	bne	v0,at,173c <func_800991A0+0x19c>
    16a0:	3c0e0000 	lui	t6,0x0
    16a4:	8d430004 	lw	v1,4(t2)
    16a8:	3c0100ff 	lui	at,0xff
    16ac:	3421ffff 	ori	at,at,0xffff
    16b0:	00035900 	sll	t3,v1,0x4
    16b4:	000b6702 	srl	t4,t3,0x1c
    16b8:	000c6880 	sll	t5,t4,0x2
    16bc:	01cd7021 	addu	t6,t6,t5
    16c0:	8dce0000 	lw	t6,0(t6)
    16c4:	00617824 	and	t7,v1,at
    16c8:	0002c880 	sll	t9,v0,0x2
    16cc:	01cfc021 	addu	t8,t6,t7
    16d0:	03195021 	addu	t2,t8,t9
    16d4:	3c068000 	lui	a2,0x8000
    16d8:	00ca3021 	addu	a2,a2,t2
    16dc:	8cc6fff8 	lw	a2,-8(a2)
    16e0:	3c040000 	lui	a0,0x0
    16e4:	24840330 	addiu	a0,a0,816
    16e8:	0c000000 	jal	0 <Object_Spawn>
    16ec:	afa60018 	sw	a2,24(sp)
    16f0:	8fa60018 	lw	a2,24(sp)
    16f4:	8fa40020 	lw	a0,32(sp)
    16f8:	3c0e0000 	lui	t6,0x0
    16fc:	10c0000f 	beqz	a2,173c <func_800991A0+0x19c>
    1700:	00065900 	sll	t3,a2,0x4
    1704:	000b6702 	srl	t4,t3,0x1c
    1708:	000c6880 	sll	t5,t4,0x2
    170c:	01cd7021 	addu	t6,t6,t5
    1710:	3c0100ff 	lui	at,0xff
    1714:	8dce0000 	lw	t6,0(t6)
    1718:	3421ffff 	ori	at,at,0xffff
    171c:	00c17824 	and	t7,a2,at
    1720:	3c018000 	lui	at,0x8000
    1724:	01cf2821 	addu	a1,t6,t7
    1728:	0c000000 	jal	0 <Object_Spawn>
    172c:	00a12821 	addu	a1,a1,at
    1730:	8fb90024 	lw	t9,36(sp)
    1734:	24180014 	li	t8,20
    1738:	a3380008 	sb	t8,8(t9)
    173c:	8fbf0014 	lw	ra,20(sp)
    1740:	27bd0020 	addiu	sp,sp,32
    1744:	03e00008 	jr	ra
    1748:	00000000 	nop

0000174c <func_8009934C>:
    174c:	27bdffe8 	addiu	sp,sp,-24
    1750:	afa40018 	sw	a0,24(sp)
    1754:	8fae0018 	lw	t6,24(sp)
    1758:	afbf0014 	sw	ra,20(sp)
    175c:	afa5001c 	sw	a1,28(sp)
    1760:	3c040000 	lui	a0,0x0
    1764:	24840360 	addiu	a0,a0,864
    1768:	0c000000 	jal	0 <Object_Spawn>
    176c:	8dc51d68 	lw	a1,7528(t6)
    1770:	8faf001c 	lw	t7,28(sp)
    1774:	3c090000 	lui	t1,0x0
    1778:	3c0100ff 	lui	at,0xff
    177c:	8de20004 	lw	v0,4(t7)
    1780:	3421ffff 	ori	at,at,0xffff
    1784:	8fad0018 	lw	t5,24(sp)
    1788:	0002c100 	sll	t8,v0,0x4
    178c:	0018cf02 	srl	t9,t8,0x1c
    1790:	00194080 	sll	t0,t9,0x2
    1794:	01284821 	addu	t1,t1,t0
    1798:	8d290000 	lw	t1,0(t1)
    179c:	00415024 	and	t2,v0,at
    17a0:	3c018000 	lui	at,0x8000
    17a4:	012a5821 	addu	t3,t1,t2
    17a8:	01616021 	addu	t4,t3,at
    17ac:	adac1d68 	sw	t4,7528(t5)
    17b0:	8fbf0014 	lw	ra,20(sp)
    17b4:	27bd0018 	addiu	sp,sp,24
    17b8:	03e00008 	jr	ra
    17bc:	00000000 	nop

000017c0 <func_800993C0>:
    17c0:	27bdffe8 	addiu	sp,sp,-24
    17c4:	afbf0014 	sw	ra,20(sp)
    17c8:	3c0f0000 	lui	t7,0x0
    17cc:	8def0000 	lw	t7,0(t7)
    17d0:	90ae0001 	lbu	t6,1(a1)
    17d4:	3c070000 	lui	a3,0x0
    17d8:	24e70000 	addiu	a3,a3,0
    17dc:	a5ee04b2 	sh	t6,1202(t7)
    17e0:	8cb80004 	lw	t8,4(a1)
    17e4:	2401002c 	li	at,44
    17e8:	a4f81420 	sh	t8,5152(a3)
    17ec:	848200a4 	lh	v0,164(a0)
    17f0:	10410003 	beq	v0,at,1800 <func_800993C0+0x40>
    17f4:	24010042 	li	at,66
    17f8:	5441000d 	bnel	v0,at,1830 <func_800993C0+0x70>
    17fc:	28410051 	slti	at,v0,81
    1800:	8cf90004 	lw	t9,4(a3)
    1804:	24010011 	li	at,17
    1808:	24030011 	li	v1,17
    180c:	13200003 	beqz	t9,181c <func_800993C0+0x5c>
    1810:	24080001 	li	t0,1
    1814:	10000001 	b	181c <func_800993C0+0x5c>
    1818:	24030005 	li	v1,5
    181c:	54610004 	bnel	v1,at,1830 <func_800993C0+0x70>
    1820:	28410051 	slti	at,v0,81
    1824:	a4e81420 	sh	t0,5152(a3)
    1828:	848200a4 	lh	v0,164(a0)
    182c:	28410051 	slti	at,v0,81
    1830:	14200002 	bnez	at,183c <func_800993C0+0x7c>
    1834:	28410065 	slti	at,v0,101
    1838:	14200005 	bnez	at,1850 <func_800993C0+0x90>
    183c:	2841001b 	slti	at,v0,27
    1840:	14200013 	bnez	at,1890 <func_800993C0+0xd0>
    1844:	28410026 	slti	at,v0,38
    1848:	50200012 	beqzl	at,1894 <func_800993C0+0xd4>
    184c:	8fbf0014 	lw	ra,20(sp)
    1850:	8ce90008 	lw	t1,8(a3)
    1854:	3401fff0 	li	at,0xfff0
    1858:	0121082a 	slt	at,t1,at
    185c:	5020000d 	beqzl	at,1894 <func_800993C0+0xd4>
    1860:	8fbf0014 	lw	ra,20(sp)
    1864:	84e61420 	lh	a2,5152(a3)
    1868:	3c0c0000 	lui	t4,0x0
    186c:	8cea0f38 	lw	t2,3896(a3)
    1870:	00065880 	sll	t3,a2,0x2
    1874:	018b6021 	addu	t4,t4,t3
    1878:	8d8c0000 	lw	t4,0(t4)
    187c:	3c040000 	lui	a0,0x0
    1880:	24840380 	addiu	a0,a0,896
    1884:	014c2825 	or	a1,t2,t4
    1888:	0c000000 	jal	0 <Object_Spawn>
    188c:	ace50f38 	sw	a1,3896(a3)
    1890:	8fbf0014 	lw	ra,20(sp)
    1894:	27bd0018 	addiu	sp,sp,24
    1898:	03e00008 	jr	ra
    189c:	00000000 	nop
