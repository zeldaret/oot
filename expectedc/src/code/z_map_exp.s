
build/src/code/z_map_exp.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Map_SavePlayerInitialInfo>:
       0:	8c821c44 	lw	v0,7236(a0)
       4:	3c010000 	lui	at,0x0
       8:	24097fff 	li	t1,32767
       c:	c4440024 	lwc1	$f4,36(v0)
      10:	4600218d 	trunc.w.s	$f6,$f4
      14:	440f3000 	mfc1	t7,$f6
      18:	00000000 	nop
      1c:	a42f0000 	sh	t7,0(at)
      20:	c448002c 	lwc1	$f8,44(v0)
      24:	3c010000 	lui	at,0x0
      28:	4600428d 	trunc.w.s	$f10,$f8
      2c:	44195000 	mfc1	t9,$f10
      30:	00000000 	nop
      34:	a4390000 	sh	t9,0(at)
      38:	844800b6 	lh	t0,182(v0)
      3c:	01285023 	subu	t2,t1,t0
      40:	05410003 	bgez	t2,50 <Map_SavePlayerInitialInfo+0x50>
      44:	000a5a83 	sra	t3,t2,0xa
      48:	254103ff 	addiu	at,t2,1023
      4c:	00015a83 	sra	t3,at,0xa
      50:	3c010000 	lui	at,0x0
      54:	03e00008 	jr	ra
      58:	a42b0000 	sh	t3,0(at)

0000005c <Map_SetPaletteData>:
      5c:	3c0e0000 	lui	t6,0x0
      60:	8dce0000 	lw	t6,0(t6)
      64:	27bdffd0 	addiu	sp,sp,-48
      68:	3c070000 	lui	a3,0x0
      6c:	94e71402 	lhu	a3,5122(a3)
      70:	afbf001c 	sw	ra,28(sp)
      74:	afa50034 	sw	a1,52(sp)
      78:	8dcf0008 	lw	t7,8(t6)
      7c:	3c0a0001 	lui	t2,0x1
      80:	00052c00 	sll	a1,a1,0x10
      84:	01445021 	addu	t2,t2,a0
      88:	854a074c 	lh	t2,1868(t2)
      8c:	00052c03 	sra	a1,a1,0x10
      90:	0007c180 	sll	t8,a3,0x6
      94:	00054040 	sll	t0,a1,0x1
      98:	01f8c821 	addu	t9,t7,t8
      9c:	03284821 	addu	t1,t9,t0
      a0:	00803025 	move	a2,a0
      a4:	14aa0004 	bne	a1,t2,b8 <Map_SetPaletteData+0x5c>
      a8:	85220000 	lh	v0,0(t1)
      ac:	3c010001 	lui	at,0x1
      b0:	00240821 	addu	at,at,a0
      b4:	a422074e 	sh	v0,1870(at)
      b8:	3c010001 	lui	at,0x1
      bc:	342104f0 	ori	at,at,0x4f0
      c0:	00c15821 	addu	t3,a2,at
      c4:	3c040000 	lui	a0,0x0
      c8:	24840000 	addiu	a0,a0,0
      cc:	afab0020 	sw	t3,32(sp)
      d0:	a7a20026 	sh	v0,38(sp)
      d4:	a7a50036 	sh	a1,54(sp)
      d8:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
      dc:	afa7002c 	sw	a3,44(sp)
      e0:	8fa7002c 	lw	a3,44(sp)
      e4:	3c0d0000 	lui	t5,0x0
      e8:	8fae0020 	lw	t6,32(sp)
      ec:	000760c0 	sll	t4,a3,0x3
      f0:	01876023 	subu	t4,t4,a3
      f4:	000c6080 	sll	t4,t4,0x2
      f8:	01ac6821 	addu	t5,t5,t4
      fc:	8dad00e8 	lw	t5,232(t5)
     100:	3c040000 	lui	a0,0x0
     104:	24840008 	addiu	a0,a0,8
     108:	afad0010 	sw	t5,16(sp)
     10c:	85cf025e 	lh	t7,606(t6)
     110:	87a50026 	lh	a1,38(sp)
     114:	87a60036 	lh	a2,54(sp)
     118:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     11c:	afaf0014 	sw	t7,20(sp)
     120:	3c040000 	lui	a0,0x0
     124:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     128:	2484005c 	addiu	a0,a0,92
     12c:	87b90026 	lh	t9,38(sp)
     130:	8fb80020 	lw	t8,32(sp)
     134:	24090002 	li	t1,2
     138:	00194040 	sll	t0,t9,0x1
     13c:	03081021 	addu	v0,t8,t0
     140:	240a00bf 	li	t2,191
     144:	a0490140 	sb	t1,320(v0)
     148:	a04a0141 	sb	t2,321(v0)
     14c:	8fbf001c 	lw	ra,28(sp)
     150:	27bd0030 	addiu	sp,sp,48
     154:	03e00008 	jr	ra
     158:	00000000 	nop

0000015c <Map_SetFloorPalettesData>:
     15c:	27bdffc0 	addiu	sp,sp,-64
     160:	afb70034 	sw	s7,52(sp)
     164:	3c170000 	lui	s7,0x0
     168:	afbe0038 	sw	s8,56(sp)
     16c:	3c010001 	lui	at,0x1
     170:	0005f400 	sll	s8,a1,0x10
     174:	26f70000 	addiu	s7,s7,0
     178:	afb5002c 	sw	s5,44(sp)
     17c:	afb40028 	sw	s4,40(sp)
     180:	afb00018 	sw	s0,24(sp)
     184:	342104f0 	ori	at,at,0x4f0
     188:	0080a825 	move	s5,a0
     18c:	001ef403 	sra	s8,s8,0x10
     190:	afbf003c 	sw	ra,60(sp)
     194:	afb60030 	sw	s6,48(sp)
     198:	afb30024 	sw	s3,36(sp)
     19c:	afb20020 	sw	s2,32(sp)
     1a0:	afb1001c 	sw	s1,28(sp)
     1a4:	afa50044 	sw	a1,68(sp)
     1a8:	96f41402 	lhu	s4,5122(s7)
     1ac:	00811821 	addu	v1,a0,at
     1b0:	00008025 	move	s0,zero
     1b4:	00701021 	addu	v0,v1,s0
     1b8:	26100001 	addiu	s0,s0,1
     1bc:	00108400 	sll	s0,s0,0x10
     1c0:	00108403 	sra	s0,s0,0x10
     1c4:	2a010010 	slti	at,s0,16
     1c8:	a0400140 	sb	zero,320(v0)
     1cc:	1420fff9 	bnez	at,1b4 <Map_SetFloorPalettesData+0x58>
     1d0:	a0400150 	sb	zero,336(v0)
     1d4:	3c160000 	lui	s6,0x0
     1d8:	26d60000 	addiu	s6,s6,0
     1dc:	02f47821 	addu	t7,s7,s4
     1e0:	91f800a8 	lbu	t8,168(t7)
     1e4:	8ece0008 	lw	t6,8(s6)
     1e8:	24080001 	li	t0,1
     1ec:	01d8c824 	and	t9,t6,t8
     1f0:	53200004 	beqzl	t9,204 <Map_SetFloorPalettesData+0xa8>
     1f4:	96a900a4 	lhu	t1,164(s5)
     1f8:	a060015e 	sb	zero,350(v1)
     1fc:	a068015f 	sb	t0,351(v1)
     200:	96a900a4 	lhu	t1,164(s5)
     204:	2d210019 	sltiu	at,t1,25
     208:	10200036 	beqz	at,2e4 <Map_SetFloorPalettesData+0x188>
     20c:	00094880 	sll	t1,t1,0x2
     210:	3c010000 	lui	at,0x0
     214:	00290821 	addu	at,at,t1
     218:	8c2902dc 	lw	t1,732(at)
     21c:	01200008 	jr	t1
     220:	00000000 	nop
     224:	3c020000 	lui	v0,0x0
     228:	8c420000 	lw	v0,0(v0)
     22c:	00149840 	sll	s3,s4,0x1
     230:	00008025 	move	s0,zero
     234:	8c4a000c 	lw	t2,12(v0)
     238:	2412001c 	li	s2,28
     23c:	241100ff 	li	s1,255
     240:	01535821 	addu	t3,t2,s3
     244:	85630000 	lh	v1,0(t3)
     248:	58600027 	blezl	v1,2e8 <Map_SetFloorPalettesData+0x18c>
     24c:	8fbf003c 	lw	ra,60(sp)
     250:	8c4c0010 	lw	t4,16(v0)
     254:	001468c0 	sll	t5,s4,0x3
     258:	01b46823 	subu	t5,t5,s4
     25c:	001e70c0 	sll	t6,s8,0x3
     260:	01de7023 	subu	t6,t6,s8
     264:	000d6940 	sll	t5,t5,0x5
     268:	000e7080 	sll	t6,t6,0x2
     26c:	018d7821 	addu	t7,t4,t5
     270:	01eec021 	addu	t8,t7,t6
     274:	0010c840 	sll	t9,s0,0x1
     278:	03194021 	addu	t0,t8,t9
     27c:	85050000 	lh	a1,0(t0)
     280:	50b10013 	beql	a1,s1,2d0 <Map_SetFloorPalettesData+0x174>
     284:	26100001 	addiu	s0,s0,1
     288:	02920019 	multu	s4,s2
     28c:	00054880 	sll	t1,a1,0x2
     290:	02c95021 	addu	t2,s6,t1
     294:	8d4b0000 	lw	t3,0(t2)
     298:	00006012 	mflo	t4
     29c:	02ec6821 	addu	t5,s7,t4
     2a0:	8daf00e8 	lw	t7,232(t5)
     2a4:	016f7024 	and	t6,t3,t7
     2a8:	51c00009 	beqzl	t6,2d0 <Map_SetFloorPalettesData+0x174>
     2ac:	26100001 	addiu	s0,s0,1
     2b0:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     2b4:	02a02025 	move	a0,s5
     2b8:	3c020000 	lui	v0,0x0
     2bc:	8c420000 	lw	v0,0(v0)
     2c0:	8c58000c 	lw	t8,12(v0)
     2c4:	0313c821 	addu	t9,t8,s3
     2c8:	87230000 	lh	v1,0(t9)
     2cc:	26100001 	addiu	s0,s0,1
     2d0:	00108400 	sll	s0,s0,0x10
     2d4:	00108403 	sra	s0,s0,0x10
     2d8:	0203082a 	slt	at,s0,v1
     2dc:	5420ffdd 	bnezl	at,254 <Map_SetFloorPalettesData+0xf8>
     2e0:	8c4c0010 	lw	t4,16(v0)
     2e4:	8fbf003c 	lw	ra,60(sp)
     2e8:	8fb00018 	lw	s0,24(sp)
     2ec:	8fb1001c 	lw	s1,28(sp)
     2f0:	8fb20020 	lw	s2,32(sp)
     2f4:	8fb30024 	lw	s3,36(sp)
     2f8:	8fb40028 	lw	s4,40(sp)
     2fc:	8fb5002c 	lw	s5,44(sp)
     300:	8fb60030 	lw	s6,48(sp)
     304:	8fb70034 	lw	s7,52(sp)
     308:	8fbe0038 	lw	s8,56(sp)
     30c:	03e00008 	jr	ra
     310:	27bd0040 	addiu	sp,sp,64

00000314 <Map_InitData>:
     314:	3c060000 	lui	a2,0x0
     318:	24c60000 	addiu	a2,a2,0
     31c:	27bdffc8 	addiu	sp,sp,-56
     320:	94ce1402 	lhu	t6,5122(a2)
     324:	afbf001c 	sw	ra,28(sp)
     328:	afa40038 	sw	a0,56(sp)
     32c:	afa5003c 	sw	a1,60(sp)
     330:	afae0034 	sw	t6,52(sp)
     334:	848300a4 	lh	v1,164(a0)
     338:	28610019 	slti	at,v1,25
     33c:	1420000a 	bnez	at,368 <Map_InitData+0x54>
     340:	00601025 	move	v0,v1
     344:	2458ffaf 	addiu	t8,v0,-81
     348:	2f010014 	sltiu	at,t8,20
     34c:	102000c1 	beqz	at,654 <Map_InitData+0x340>
     350:	0018c080 	sll	t8,t8,0x2
     354:	3c010000 	lui	at,0x0
     358:	00380821 	addu	at,at,t8
     35c:	8c380340 	lw	t8,832(at)
     360:	03000008 	jr	t8
     364:	00000000 	nop
     368:	2c410019 	sltiu	at,v0,25
     36c:	102000b9 	beqz	at,654 <Map_InitData+0x340>
     370:	0002c880 	sll	t9,v0,0x2
     374:	3c010000 	lui	at,0x0
     378:	00390821 	addu	at,at,t9
     37c:	8c390390 	lw	t9,912(at)
     380:	03200008 	jr	t9
     384:	00000000 	nop
     388:	24010053 	li	at,83
     38c:	14610009 	bne	v1,at,3b4 <Map_InitData+0xa0>
     390:	87a50036 	lh	a1,54(sp)
     394:	3c090000 	lui	t1,0x0
     398:	8d290028 	lw	t1,40(t1)
     39c:	8cca00a4 	lw	t2,164(a2)
     3a0:	012a5824 	and	t3,t1,t2
     3a4:	11600032 	beqz	t3,470 <Map_InitData+0x15c>
     3a8:	00000000 	nop
     3ac:	10000030 	b	470 <Map_InitData+0x15c>
     3b0:	24050014 	li	a1,20
     3b4:	24010057 	li	at,87
     3b8:	54610012 	bnel	v1,at,404 <Map_InitData+0xf0>
     3bc:	2401005a 	li	at,90
     3c0:	8ccc0004 	lw	t4,4(a2)
     3c4:	24010011 	li	at,17
     3c8:	24020011 	li	v0,17
     3cc:	11800003 	beqz	t4,3dc <Map_InitData+0xc8>
     3d0:	3c0d0000 	lui	t5,0x0
     3d4:	10000001 	b	3dc <Map_InitData+0xc8>
     3d8:	24020005 	li	v0,5
     3dc:	14410024 	bne	v0,at,470 <Map_InitData+0x15c>
     3e0:	00000000 	nop
     3e4:	8dad0008 	lw	t5,8(t5)
     3e8:	8cce00a4 	lw	t6,164(a2)
     3ec:	01ae7824 	and	t7,t5,t6
     3f0:	15e0001f 	bnez	t7,470 <Map_InitData+0x15c>
     3f4:	00000000 	nop
     3f8:	1000001d 	b	470 <Map_InitData+0x15c>
     3fc:	24050015 	li	a1,21
     400:	2401005a 	li	at,90
     404:	54610012 	bnel	v1,at,450 <Map_InitData+0x13c>
     408:	2401005d 	li	at,93
     40c:	8cd80004 	lw	t8,4(a2)
     410:	24010011 	li	at,17
     414:	24020011 	li	v0,17
     418:	13000003 	beqz	t8,428 <Map_InitData+0x114>
     41c:	00000000 	nop
     420:	10000001 	b	428 <Map_InitData+0x114>
     424:	24020005 	li	v0,5
     428:	14410011 	bne	v0,at,470 <Map_InitData+0x15c>
     42c:	00000000 	nop
     430:	94d90ee6 	lhu	t9,3814(a2)
     434:	2401000f 	li	at,15
     438:	3329000f 	andi	t1,t9,0xf
     43c:	1121000c 	beq	t1,at,470 <Map_InitData+0x15c>
     440:	00000000 	nop
     444:	1000000a 	b	470 <Map_InitData+0x15c>
     448:	24050016 	li	a1,22
     44c:	2401005d 	li	at,93
     450:	14610007 	bne	v1,at,470 <Map_InitData+0x15c>
     454:	00000000 	nop
     458:	94ca0ee6 	lhu	t2,3814(a2)
     45c:	2401000f 	li	at,15
     460:	314b000f 	andi	t3,t2,0xf
     464:	15610002 	bne	t3,at,470 <Map_InitData+0x15c>
     468:	00000000 	nop
     46c:	24050017 	li	a1,23
     470:	3c040000 	lui	a0,0x0
     474:	24840060 	addiu	a0,a0,96
     478:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     47c:	a7a5002e 	sh	a1,46(sp)
     480:	3c040000 	lui	a0,0x0
     484:	24840068 	addiu	a0,a0,104
     488:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     48c:	87a5002e 	lh	a1,46(sp)
     490:	3c040000 	lui	a0,0x0
     494:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     498:	24840074 	addiu	a0,a0,116
     49c:	87a8002e 	lh	t0,46(sp)
     4a0:	3c020000 	lui	v0,0x0
     4a4:	8c420000 	lw	v0,0(v0)
     4a8:	3c010000 	lui	at,0x0
     4ac:	a4280000 	sh	t0,0(at)
     4b0:	8fa90034 	lw	t1,52(sp)
     4b4:	8c4c0028 	lw	t4,40(v0)
     4b8:	8fa30038 	lw	v1,56(sp)
     4bc:	8c590024 	lw	t9,36(v0)
     4c0:	3c010001 	lui	at,0x1
     4c4:	00086840 	sll	t5,t0,0x1
     4c8:	342104f0 	ori	at,at,0x4f0
     4cc:	00095040 	sll	t2,t1,0x1
     4d0:	018d7021 	addu	t6,t4,t5
     4d4:	95cf0000 	lhu	t7,0(t6)
     4d8:	3c180000 	lui	t8,0x0
     4dc:	00611821 	addu	v1,v1,at
     4e0:	032a5821 	addu	t3,t9,t2
     4e4:	95660000 	lhu	a2,0(t3)
     4e8:	8c64013c 	lw	a0,316(v1)
     4ec:	27180000 	addiu	t8,t8,0
     4f0:	240c0135 	li	t4,309
     4f4:	3c070000 	lui	a3,0x0
     4f8:	24e70078 	addiu	a3,a3,120
     4fc:	afac0010 	sw	t4,16(sp)
     500:	afa30024 	sw	v1,36(sp)
     504:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     508:	01f82821 	addu	a1,t7,t8
     50c:	8fa30024 	lw	v1,36(sp)
     510:	8fad0034 	lw	t5,52(sp)
     514:	1000004f 	b	654 <Map_InitData+0x340>
     518:	a46d0258 	sh	t5,600(v1)
     51c:	3c040000 	lui	a0,0x0
     520:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     524:	24840088 	addiu	a0,a0,136
     528:	3c0e0000 	lui	t6,0x0
     52c:	8dce0000 	lw	t6,0(t6)
     530:	3c040000 	lui	a0,0x0
     534:	24840090 	addiu	a0,a0,144
     538:	87a5003e 	lh	a1,62(sp)
     53c:	8fa60034 	lw	a2,52(sp)
     540:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     544:	85c70f50 	lh	a3,3920(t6)
     548:	3c040000 	lui	a0,0x0
     54c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     550:	248400e0 	addiu	a0,a0,224
     554:	3c180000 	lui	t8,0x0
     558:	8f180000 	lw	t8,0(t8)
     55c:	8fb90034 	lw	t9,52(sp)
     560:	8faf0038 	lw	t7,56(sp)
     564:	8f090020 	lw	t1,32(t8)
     568:	00195040 	sll	t2,t9,0x1
     56c:	87ad003e 	lh	t5,62(sp)
     570:	012a5821 	addu	t3,t1,t2
     574:	956c0000 	lhu	t4,0(t3)
     578:	3c040001 	lui	a0,0x1
     57c:	008f2021 	addu	a0,a0,t7
     580:	018d7021 	addu	t6,t4,t5
     584:	000e7a00 	sll	t7,t6,0x8
     588:	01ee7823 	subu	t7,t7,t6
     58c:	3c180000 	lui	t8,0x0
     590:	27180000 	addiu	t8,t8,0
     594:	000f7900 	sll	t7,t7,0x4
     598:	8c84062c 	lw	a0,1580(a0)
     59c:	2419015a 	li	t9,346
     5a0:	3c070000 	lui	a3,0x0
     5a4:	24e700e4 	addiu	a3,a3,228
     5a8:	afb90010 	sw	t9,16(sp)
     5ac:	01f82821 	addu	a1,t7,t8
     5b0:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     5b4:	24060ff0 	li	a2,4080
     5b8:	8fab0034 	lw	t3,52(sp)
     5bc:	3c060000 	lui	a2,0x0
     5c0:	24c60000 	addiu	a2,a2,0
     5c4:	8cc90000 	lw	t1,0(a2)
     5c8:	000b6080 	sll	t4,t3,0x2
     5cc:	018b6023 	subu	t4,t4,t3
     5d0:	87a2003e 	lh	v0,62(sp)
     5d4:	8d2a0014 	lw	t2,20(t1)
     5d8:	000c6080 	sll	t4,t4,0x2
     5dc:	018b6023 	subu	t4,t4,t3
     5e0:	000c60c0 	sll	t4,t4,0x3
     5e4:	3c030000 	lui	v1,0x0
     5e8:	00021040 	sll	v0,v0,0x1
     5ec:	014c6821 	addu	t5,t2,t4
     5f0:	24630000 	addiu	v1,v1,0
     5f4:	01a27021 	addu	t6,t5,v0
     5f8:	85cf0000 	lh	t7,0(t6)
     5fc:	8c780000 	lw	t8,0(v1)
     600:	a70f0f34 	sh	t7,3892(t8)
     604:	8fab0034 	lw	t3,52(sp)
     608:	8cd90000 	lw	t9,0(a2)
     60c:	8c6f0000 	lw	t7,0(v1)
     610:	000b5080 	sll	t2,t3,0x2
     614:	014b5023 	subu	t2,t2,t3
     618:	8f290018 	lw	t1,24(t9)
     61c:	000a5080 	sll	t2,t2,0x2
     620:	014b5023 	subu	t2,t2,t3
     624:	000a50c0 	sll	t2,t2,0x3
     628:	012a6021 	addu	t4,t1,t2
     62c:	01826821 	addu	t5,t4,v0
     630:	85ae0000 	lh	t6,0(t5)
     634:	a5ee0f36 	sh	t6,3894(t7)
     638:	8c780000 	lw	t8,0(v1)
     63c:	8fa40038 	lw	a0,56(sp)
     640:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     644:	87050f50 	lh	a1,3920(t8)
     648:	3c040000 	lui	a0,0x0
     64c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     650:	248400f4 	addiu	a0,a0,244
     654:	8fbf001c 	lw	ra,28(sp)
     658:	27bd0038 	addiu	sp,sp,56
     65c:	03e00008 	jr	ra
     660:	00000000 	nop

00000664 <Map_InitRoomData>:
     664:	27bdffe0 	addiu	sp,sp,-32
     668:	afa40020 	sw	a0,32(sp)
     66c:	8fae0020 	lw	t6,32(sp)
     670:	3c060000 	lui	a2,0x0
     674:	94c61402 	lhu	a2,5122(a2)
     678:	afbf0014 	sw	ra,20(sp)
     67c:	afa50024 	sw	a1,36(sp)
     680:	3c040000 	lui	a0,0x0
     684:	85c700a4 	lh	a3,164(t6)
     688:	24840110 	addiu	a0,a0,272
     68c:	87a50026 	lh	a1,38(sp)
     690:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     694:	afa6001c 	sw	a2,28(sp)
     698:	87a30026 	lh	v1,38(sp)
     69c:	8faf0020 	lw	t7,32(sp)
     6a0:	3c010001 	lui	at,0x1
     6a4:	04600034 	bltz	v1,778 <Map_InitRoomData+0x114>
     6a8:	002f0821 	addu	at,at,t7
     6ac:	8faf0020 	lw	t7,32(sp)
     6b0:	95f800a4 	lhu	t8,164(t7)
     6b4:	2f010019 	sltiu	at,t8,25
     6b8:	10200030 	beqz	at,77c <Map_InitRoomData+0x118>
     6bc:	0018c080 	sll	t8,t8,0x2
     6c0:	3c010000 	lui	at,0x0
     6c4:	00380821 	addu	at,at,t8
     6c8:	8c3803f4 	lw	t8,1012(at)
     6cc:	03000008 	jr	t8
     6d0:	00000000 	nop
     6d4:	8fb9001c 	lw	t9,28(sp)
     6d8:	3c090000 	lui	t1,0x0
     6dc:	25290000 	addiu	t1,t1,0
     6e0:	001940c0 	sll	t0,t9,0x3
     6e4:	01194023 	subu	t0,t0,t9
     6e8:	00084080 	sll	t0,t0,0x2
     6ec:	00035880 	sll	t3,v1,0x2
     6f0:	3c0c0000 	lui	t4,0x0
     6f4:	018b6021 	addu	t4,t4,t3
     6f8:	01091021 	addu	v0,t0,t1
     6fc:	8c4a00e8 	lw	t2,232(v0)
     700:	8d8c0000 	lw	t4,0(t4)
     704:	3c040000 	lui	a0,0x0
     708:	24840164 	addiu	a0,a0,356
     70c:	014c2825 	or	a1,t2,t4
     710:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     714:	ac4500e8 	sw	a1,232(v0)
     718:	8fa40020 	lw	a0,32(sp)
     71c:	87a50026 	lh	a1,38(sp)
     720:	3c010001 	lui	at,0x1
     724:	342104f0 	ori	at,at,0x4f0
     728:	00811021 	addu	v0,a0,at
     72c:	a445025c 	sh	a1,604(v0)
     730:	8fae001c 	lw	t6,28(sp)
     734:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     738:	a44e025a 	sh	t6,602(v0)
     73c:	3c040000 	lui	a0,0x0
     740:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     744:	2484017c 	addiu	a0,a0,380
     748:	3c040000 	lui	a0,0x0
     74c:	24840184 	addiu	a0,a0,388
     750:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     754:	87a50026 	lh	a1,38(sp)
     758:	3c040000 	lui	a0,0x0
     75c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     760:	24840194 	addiu	a0,a0,404
     764:	8fa40020 	lw	a0,32(sp)
     768:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     76c:	87a50026 	lh	a1,38(sp)
     770:	10000002 	b	77c <Map_InitRoomData+0x118>
     774:	00000000 	nop
     778:	a420074c 	sh	zero,1868(at)
     77c:	3c180000 	lui	t8,0x0
     780:	87181422 	lh	t8,5154(t8)
     784:	24010002 	li	at,2
     788:	13010002 	beq	t8,at,794 <Map_InitRoomData+0x130>
     78c:	3c010000 	lui	at,0x0
     790:	a4201422 	sh	zero,5154(at)
     794:	8fbf0014 	lw	ra,20(sp)
     798:	27bd0020 	addiu	sp,sp,32
     79c:	03e00008 	jr	ra
     7a0:	00000000 	nop

000007a4 <Map_Destroy>:
     7a4:	27bdffe8 	addiu	sp,sp,-24
     7a8:	afbf0014 	sw	ra,20(sp)
     7ac:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     7b0:	00000000 	nop
     7b4:	8fbf0014 	lw	ra,20(sp)
     7b8:	3c010000 	lui	at,0x0
     7bc:	ac200000 	sw	zero,0(at)
     7c0:	03e00008 	jr	ra
     7c4:	27bd0018 	addiu	sp,sp,24

000007c8 <Map_Init>:
     7c8:	3c080000 	lui	t0,0x0
     7cc:	3c0e0000 	lui	t6,0x0
     7d0:	25080000 	addiu	t0,t0,0
     7d4:	27bdffd0 	addiu	sp,sp,-48
     7d8:	25ce0000 	addiu	t6,t6,0
     7dc:	3c010001 	lui	at,0x1
     7e0:	afbf0014 	sw	ra,20(sp)
     7e4:	2402ffff 	li	v0,-1
     7e8:	ad0e0000 	sw	t6,0(t0)
     7ec:	00811821 	addu	v1,a0,at
     7f0:	a4620748 	sh	v0,1864(v1)
     7f4:	a462074a 	sh	v0,1866(v1)
     7f8:	3c060000 	lui	a2,0x0
     7fc:	24c60198 	addiu	a2,a2,408
     800:	afa40030 	sw	a0,48(sp)
     804:	afa30018 	sw	v1,24(sp)
     808:	24051000 	li	a1,4096
     80c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     810:	240701c9 	li	a3,457
     814:	8fa70030 	lw	a3,48(sp)
     818:	3c010001 	lui	at,0x1
     81c:	342104f0 	ori	at,at,0x4f0
     820:	00e11821 	addu	v1,a3,at
     824:	ac62013c 	sw	v0,316(v1)
     828:	3c040000 	lui	a0,0x0
     82c:	84e500a4 	lh	a1,164(a3)
     830:	afa3001c 	sw	v1,28(sp)
     834:	248401a8 	addiu	a0,a0,424
     838:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     83c:	00403025 	move	a2,v0
     840:	8fa3001c 	lw	v1,28(sp)
     844:	3c080000 	lui	t0,0x0
     848:	3c040000 	lui	a0,0x0
     84c:	8c6f013c 	lw	t7,316(v1)
     850:	25080000 	addiu	t0,t0,0
     854:	248401e8 	addiu	a0,a0,488
     858:	15e00006 	bnez	t7,874 <Map_Init+0xac>
     85c:	3c050000 	lui	a1,0x0
     860:	24a50208 	addiu	a1,a1,520
     864:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     868:	240601cb 	li	a2,459
     86c:	3c080000 	lui	t0,0x0
     870:	25080000 	addiu	t0,t0,0
     874:	8fa40030 	lw	a0,48(sp)
     878:	848900a4 	lh	t1,164(a0)
     87c:	29210019 	slti	at,t1,25
     880:	1420000a 	bnez	at,8ac <Map_Init+0xe4>
     884:	01201025 	move	v0,t1
     888:	2458ffaf 	addiu	t8,v0,-81
     88c:	2f010014 	sltiu	at,t8,20
     890:	1020007f 	beqz	at,a90 <Map_Init+0x2c8>
     894:	0018c080 	sll	t8,t8,0x2
     898:	3c010000 	lui	at,0x0
     89c:	00380821 	addu	at,at,t8
     8a0:	8c380458 	lw	t8,1112(at)
     8a4:	03000008 	jr	t8
     8a8:	00000000 	nop
     8ac:	2c410019 	sltiu	at,v0,25
     8b0:	10200077 	beqz	at,a90 <Map_Init+0x2c8>
     8b4:	0002c880 	sll	t9,v0,0x2
     8b8:	3c010000 	lui	at,0x0
     8bc:	00390821 	addu	at,at,t9
     8c0:	8c3904a8 	lw	t9,1192(at)
     8c4:	03200008 	jr	t9
     8c8:	00000000 	nop
     8cc:	3c030000 	lui	v1,0x0
     8d0:	24630000 	addiu	v1,v1,0
     8d4:	8c6b0000 	lw	t3,0(v1)
     8d8:	3c070000 	lui	a3,0x0
     8dc:	24e70000 	addiu	a3,a3,0
     8e0:	2526ffaf 	addiu	a2,t1,-81
     8e4:	a4e61402 	sh	a2,5122(a3)
     8e8:	a5660f2a 	sh	a2,3882(t3)
     8ec:	8d0c0000 	lw	t4,0(t0)
     8f0:	000610c0 	sll	v0,a2,0x3
     8f4:	8c780000 	lw	t8,0(v1)
     8f8:	8d8d0034 	lw	t5,52(t4)
     8fc:	00062c00 	sll	a1,a2,0x10
     900:	00052c03 	sra	a1,a1,0x10
     904:	01a27021 	addu	t6,t5,v0
     908:	85cf0000 	lh	t7,0(t6)
     90c:	a70f0f30 	sh	t7,3888(t8)
     910:	8d190000 	lw	t9,0(t0)
     914:	8c6d0000 	lw	t5,0(v1)
     918:	8f2a0034 	lw	t2,52(t9)
     91c:	01425821 	addu	t3,t2,v0
     920:	856c0002 	lh	t4,2(t3)
     924:	a5ac0f32 	sh	t4,3890(t5)
     928:	8d0e0000 	lw	t6,0(t0)
     92c:	8c6a0000 	lw	t2,0(v1)
     930:	8dcf0034 	lw	t7,52(t6)
     934:	01e2c021 	addu	t8,t7,v0
     938:	87190004 	lh	t9,4(t8)
     93c:	a5590f34 	sh	t9,3892(t2)
     940:	8d0b0000 	lw	t3,0(t0)
     944:	8c6f0000 	lw	t7,0(v1)
     948:	8d6c0034 	lw	t4,52(t3)
     94c:	01826821 	addu	t5,t4,v0
     950:	85ae0006 	lh	t6,6(t5)
     954:	a5ee0f36 	sh	t6,3894(t7)
     958:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     95c:	afa6002c 	sw	a2,44(sp)
     960:	3c080000 	lui	t0,0x0
     964:	25080000 	addiu	t0,t0,0
     968:	8d180000 	lw	t8,0(t0)
     96c:	8fa6002c 	lw	a2,44(sp)
     970:	3c030000 	lui	v1,0x0
     974:	8f19002c 	lw	t9,44(t8)
     978:	00061040 	sll	v0,a2,0x1
     97c:	24630000 	addiu	v1,v1,0
     980:	03225021 	addu	t2,t9,v0
     984:	854b0000 	lh	t3,0(t2)
     988:	8c6c0000 	lw	t4,0(v1)
     98c:	a58b0dce 	sh	t3,3534(t4)
     990:	8d0d0000 	lw	t5,0(t0)
     994:	8c790000 	lw	t9,0(v1)
     998:	8dae0030 	lw	t6,48(t5)
     99c:	01c27821 	addu	t7,t6,v0
     9a0:	85f80000 	lh	t8,0(t7)
     9a4:	1000003a 	b	a90 <Map_Init+0x2c8>
     9a8:	a7380dd0 	sh	t8,3536(t9)
     9ac:	29210011 	slti	at,t1,17
     9b0:	14200003 	bnez	at,9c0 <Map_Init+0x1f8>
     9b4:	3c030000 	lui	v1,0x0
     9b8:	10000002 	b	9c4 <Map_Init+0x1fc>
     9bc:	2526ffef 	addiu	a2,t1,-17
     9c0:	01203025 	move	a2,t1
     9c4:	24630000 	addiu	v1,v1,0
     9c8:	8c6b0000 	lw	t3,0(v1)
     9cc:	3c070000 	lui	a3,0x0
     9d0:	24e70000 	addiu	a3,a3,0
     9d4:	a4e61402 	sh	a2,5122(a3)
     9d8:	a5660f2a 	sh	a2,3882(t3)
     9dc:	848900a4 	lh	t1,164(a0)
     9e0:	2921000a 	slti	at,t1,10
     9e4:	14200003 	bnez	at,9f4 <Map_Init+0x22c>
     9e8:	29210011 	slti	at,t1,17
     9ec:	54200029 	bnezl	at,a94 <Map_Init+0x2cc>
     9f0:	8fbf0014 	lw	ra,20(sp)
     9f4:	8d0c0000 	lw	t4,0(t0)
     9f8:	000610c0 	sll	v0,a2,0x3
     9fc:	8c780000 	lw	t8,0(v1)
     a00:	8d8d003c 	lw	t5,60(t4)
     a04:	01a27021 	addu	t6,t5,v0
     a08:	85cf0000 	lh	t7,0(t6)
     a0c:	a70f0f30 	sh	t7,3888(t8)
     a10:	8d190000 	lw	t9,0(t0)
     a14:	8c6d0000 	lw	t5,0(v1)
     a18:	8f2a003c 	lw	t2,60(t9)
     a1c:	01425821 	addu	t3,t2,v0
     a20:	856c0002 	lh	t4,2(t3)
     a24:	a5ac0f32 	sh	t4,3890(t5)
     a28:	8d0e0000 	lw	t6,0(t0)
     a2c:	8c6a0000 	lw	t2,0(v1)
     a30:	8dcf003c 	lw	t7,60(t6)
     a34:	01e2c021 	addu	t8,t7,v0
     a38:	87190004 	lh	t9,4(t8)
     a3c:	a5590f34 	sh	t9,3892(t2)
     a40:	8d0b0000 	lw	t3,0(t0)
     a44:	8c6f0000 	lw	t7,0(v1)
     a48:	00065040 	sll	t2,a2,0x1
     a4c:	8d6c003c 	lw	t4,60(t3)
     a50:	01826821 	addu	t5,t4,v0
     a54:	85ae0006 	lh	t6,6(t5)
     a58:	a5ee0f36 	sh	t6,3894(t7)
     a5c:	8d180000 	lw	t8,0(t0)
     a60:	8c6c0000 	lw	t4,0(v1)
     a64:	8f190038 	lw	t9,56(t8)
     a68:	032a5821 	addu	t3,t9,t2
     a6c:	85670000 	lh	a3,0(t3)
     a70:	a5870f2c 	sh	a3,3884(t4)
     a74:	8c6d0000 	lw	t5,0(v1)
     a78:	a5a70f2e 	sh	a3,3886(t5)
     a7c:	8fae0018 	lw	t6,24(sp)
     a80:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     a84:	81c51cbc 	lb	a1,7356(t6)
     a88:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     a8c:	8fa40030 	lw	a0,48(sp)
     a90:	8fbf0014 	lw	ra,20(sp)
     a94:	27bd0030 	addiu	sp,sp,48
     a98:	03e00008 	jr	ra
     a9c:	00000000 	nop

00000aa0 <Minimap_DrawCompassIcons>:
     aa0:	27bdff90 	addiu	sp,sp,-112
     aa4:	afbf001c 	sw	ra,28(sp)
     aa8:	afb00018 	sw	s0,24(sp)
     aac:	afa40070 	sw	a0,112(sp)
     ab0:	8c8f1c44 	lw	t7,7236(a0)
     ab4:	3c060000 	lui	a2,0x0
     ab8:	24c60218 	addiu	a2,a2,536
     abc:	afaf0068 	sw	t7,104(sp)
     ac0:	8c850000 	lw	a1,0(a0)
     ac4:	27a40050 	addiu	a0,sp,80
     ac8:	24070235 	li	a3,565
     acc:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     ad0:	00a08025 	move	s0,a1
     ad4:	8fa20070 	lw	v0,112(sp)
     ad8:	3c180001 	lui	t8,0x1
     adc:	0302c021 	addu	t8,t8,v0
     ae0:	97180744 	lhu	t8,1860(t8)
     ae4:	2b0100aa 	slti	at,t8,170
     ae8:	1420010a 	bnez	at,f14 <Minimap_DrawCompassIcons+0x474>
     aec:	00000000 	nop
     af0:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     af4:	8c440000 	lw	a0,0(v0)
     af8:	8e0202b0 	lw	v0,688(s0)
     afc:	3c08da38 	lui	t0,0xda38
     b00:	3c090000 	lui	t1,0x0
     b04:	24590008 	addiu	t9,v0,8
     b08:	ae1902b0 	sw	t9,688(s0)
     b0c:	25290000 	addiu	t1,t1,0
     b10:	35080003 	ori	t0,t0,0x3
     b14:	ac480000 	sw	t0,0(v0)
     b18:	ac490004 	sw	t1,4(v0)
     b1c:	8e0202b0 	lw	v0,688(s0)
     b20:	3c0bfc30 	lui	t3,0xfc30
     b24:	3c0c552e 	lui	t4,0x552e
     b28:	244a0008 	addiu	t2,v0,8
     b2c:	ae0a02b0 	sw	t2,688(s0)
     b30:	358cff7f 	ori	t4,t4,0xff7f
     b34:	356b9661 	ori	t3,t3,0x9661
     b38:	ac4b0000 	sw	t3,0(v0)
     b3c:	ac4c0004 	sw	t4,4(v0)
     b40:	8e0202b0 	lw	v0,688(s0)
     b44:	3c0ffb00 	lui	t7,0xfb00
     b48:	240e00ff 	li	t6,255
     b4c:	244d0008 	addiu	t5,v0,8
     b50:	ae0d02b0 	sw	t5,688(s0)
     b54:	ac4e0004 	sw	t6,4(v0)
     b58:	ac4f0000 	sw	t7,0(v0)
     b5c:	8e0202b0 	lw	v0,688(s0)
     b60:	3c08fffd 	lui	t0,0xfffd
     b64:	3c19fcff 	lui	t9,0xfcff
     b68:	24580008 	addiu	t8,v0,8
     b6c:	ae1802b0 	sw	t8,688(s0)
     b70:	3739ffff 	ori	t9,t9,0xffff
     b74:	3508f6fb 	ori	t0,t0,0xf6fb
     b78:	ac480004 	sw	t0,4(v0)
     b7c:	ac590000 	sw	t9,0(v0)
     b80:	8fa50068 	lw	a1,104(sp)
     b84:	3c030000 	lui	v1,0x0
     b88:	8c630000 	lw	v1,0(v1)
     b8c:	c4a40024 	lwc1	$f4,36(a1)
     b90:	c4a8002c 	lwc1	$f8,44(a1)
     b94:	846b0f30 	lh	t3,3888(v1)
     b98:	4600218d 	trunc.w.s	$f6,$f4
     b9c:	3c014120 	lui	at,0x4120
     ba0:	44810000 	mtc1	at,$f0
     ba4:	4600428d 	trunc.w.s	$f10,$f8
     ba8:	44023000 	mfc1	v0,$f6
     bac:	846c0f32 	lh	t4,3890(v1)
     bb0:	846d0f34 	lh	t5,3892(v1)
     bb4:	00021400 	sll	v0,v0,0x10
     bb8:	00021403 	sra	v0,v0,0x10
     bbc:	004b001a 	div	zero,v0,t3
     bc0:	44045000 	mfc1	a0,$f10
     bc4:	846e0f36 	lh	t6,3894(v1)
     bc8:	24060000 	li	a2,0
     bcc:	00042400 	sll	a0,a0,0x10
     bd0:	00042403 	sra	a0,a0,0x10
     bd4:	15600002 	bnez	t3,be0 <Minimap_DrawCompassIcons+0x140>
     bd8:	00000000 	nop
     bdc:	0007000d 	break	0x7
     be0:	2401ffff 	li	at,-1
     be4:	15610004 	bne	t3,at,bf8 <Minimap_DrawCompassIcons+0x158>
     be8:	3c018000 	lui	at,0x8000
     bec:	14410002 	bne	v0,at,bf8 <Minimap_DrawCompassIcons+0x158>
     bf0:	00000000 	nop
     bf4:	0006000d 	break	0x6
     bf8:	00001012 	mflo	v0
     bfc:	00021400 	sll	v0,v0,0x10
     c00:	00021403 	sra	v0,v0,0x10
     c04:	008c001a 	div	zero,a0,t4
     c08:	15800002 	bnez	t4,c14 <Minimap_DrawCompassIcons+0x174>
     c0c:	00000000 	nop
     c10:	0007000d 	break	0x7
     c14:	2401ffff 	li	at,-1
     c18:	15810004 	bne	t4,at,c2c <Minimap_DrawCompassIcons+0x18c>
     c1c:	3c018000 	lui	at,0x8000
     c20:	14810002 	bne	a0,at,c2c <Minimap_DrawCompassIcons+0x18c>
     c24:	00000000 	nop
     c28:	0006000d 	break	0x6
     c2c:	00002012 	mflo	a0
     c30:	00042400 	sll	a0,a0,0x10
     c34:	00042403 	sra	a0,a0,0x10
     c38:	01a27821 	addu	t7,t5,v0
     c3c:	01c4c023 	subu	t8,t6,a0
     c40:	44982000 	mtc1	t8,$f4
     c44:	448f8000 	mtc1	t7,$f16
     c48:	00003825 	move	a3,zero
     c4c:	468021a0 	cvt.s.w	$f6,$f4
     c50:	468084a0 	cvt.s.w	$f18,$f16
     c54:	46003383 	div.s	$f14,$f6,$f0
     c58:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     c5c:	46009303 	div.s	$f12,$f18,$f0
     c60:	3c010000 	lui	at,0x0
     c64:	c42c050c 	lwc1	$f12,1292(at)
     c68:	24070001 	li	a3,1
     c6c:	44066000 	mfc1	a2,$f12
     c70:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     c74:	46006386 	mov.s	$f14,$f12
     c78:	3c010000 	lui	at,0x0
     c7c:	c42c0510 	lwc1	$f12,1296(at)
     c80:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     c84:	24050001 	li	a1,1
     c88:	8fb90068 	lw	t9,104(sp)
     c8c:	24097fff 	li	t1,32767
     c90:	24050001 	li	a1,1
     c94:	872800b6 	lh	t0,182(t9)
     c98:	01281023 	subu	v0,t1,t0
     c9c:	04410002 	bgez	v0,ca8 <Minimap_DrawCompassIcons+0x208>
     ca0:	00400821 	move	at,v0
     ca4:	244103ff 	addiu	at,v0,1023
     ca8:	00011283 	sra	v0,at,0xa
     cac:	00021400 	sll	v0,v0,0x10
     cb0:	00021403 	sra	v0,v0,0x10
     cb4:	44824000 	mtc1	v0,$f8
     cb8:	3c014120 	lui	at,0x4120
     cbc:	44818000 	mtc1	at,$f16
     cc0:	468042a0 	cvt.s.w	$f10,$f8
     cc4:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     cc8:	46105303 	div.s	$f12,$f10,$f16
     ccc:	8e0202b0 	lw	v0,688(s0)
     cd0:	3c0bda38 	lui	t3,0xda38
     cd4:	356b0003 	ori	t3,t3,0x3
     cd8:	244a0008 	addiu	t2,v0,8
     cdc:	ae0a02b0 	sw	t2,688(s0)
     ce0:	ac4b0000 	sw	t3,0(v0)
     ce4:	8fac0070 	lw	t4,112(sp)
     ce8:	3c050000 	lui	a1,0x0
     cec:	24a50228 	addiu	a1,a1,552
     cf0:	8d840000 	lw	a0,0(t4)
     cf4:	24060249 	li	a2,585
     cf8:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     cfc:	afa2003c 	sw	v0,60(sp)
     d00:	8fa3003c 	lw	v1,60(sp)
     d04:	3c0ec8ff 	lui	t6,0xc8ff
     d08:	35ce00ff 	ori	t6,t6,0xff
     d0c:	ac620004 	sw	v0,4(v1)
     d10:	8e0202b0 	lw	v0,688(s0)
     d14:	3c0ffa00 	lui	t7,0xfa00
     d18:	3c050000 	lui	a1,0x0
     d1c:	244d0008 	addiu	t5,v0,8
     d20:	ae0d02b0 	sw	t5,688(s0)
     d24:	ac4e0004 	sw	t6,4(v0)
     d28:	ac4f0000 	sw	t7,0(v0)
     d2c:	8e0202b0 	lw	v0,688(s0)
     d30:	24a50000 	addiu	a1,a1,0
     d34:	3c19de00 	lui	t9,0xde00
     d38:	24580008 	addiu	t8,v0,8
     d3c:	ae1802b0 	sw	t8,688(s0)
     d40:	ac450004 	sw	a1,4(v0)
     d44:	ac590000 	sw	t9,0(v0)
     d48:	3c020000 	lui	v0,0x0
     d4c:	84420000 	lh	v0,0(v0)
     d50:	3c030000 	lui	v1,0x0
     d54:	8c630000 	lw	v1,0(v1)
     d58:	3c040000 	lui	a0,0x0
     d5c:	84840000 	lh	a0,0(a0)
     d60:	84690f30 	lh	t1,3888(v1)
     d64:	3c014120 	lui	at,0x4120
     d68:	44810000 	mtc1	at,$f0
     d6c:	0049001a 	div	zero,v0,t1
     d70:	15200002 	bnez	t1,d7c <Minimap_DrawCompassIcons+0x2dc>
     d74:	00000000 	nop
     d78:	0007000d 	break	0x7
     d7c:	2401ffff 	li	at,-1
     d80:	15210004 	bne	t1,at,d94 <Minimap_DrawCompassIcons+0x2f4>
     d84:	3c018000 	lui	at,0x8000
     d88:	14410002 	bne	v0,at,d94 <Minimap_DrawCompassIcons+0x2f4>
     d8c:	00000000 	nop
     d90:	0006000d 	break	0x6
     d94:	84680f32 	lh	t0,3890(v1)
     d98:	00001012 	mflo	v0
     d9c:	846a0f34 	lh	t2,3892(v1)
     da0:	846c0f36 	lh	t4,3894(v1)
     da4:	0088001a 	div	zero,a0,t0
     da8:	00021400 	sll	v0,v0,0x10
     dac:	00021403 	sra	v0,v0,0x10
     db0:	15000002 	bnez	t0,dbc <Minimap_DrawCompassIcons+0x31c>
     db4:	00000000 	nop
     db8:	0007000d 	break	0x7
     dbc:	2401ffff 	li	at,-1
     dc0:	15010004 	bne	t0,at,dd4 <Minimap_DrawCompassIcons+0x334>
     dc4:	3c018000 	lui	at,0x8000
     dc8:	14810002 	bne	a0,at,dd4 <Minimap_DrawCompassIcons+0x334>
     dcc:	00000000 	nop
     dd0:	0006000d 	break	0x6
     dd4:	00002012 	mflo	a0
     dd8:	00042400 	sll	a0,a0,0x10
     ddc:	00042403 	sra	a0,a0,0x10
     de0:	01425821 	addu	t3,t2,v0
     de4:	01846823 	subu	t5,t4,a0
     de8:	448d3000 	mtc1	t5,$f6
     dec:	448b9000 	mtc1	t3,$f18
     df0:	afa50024 	sw	a1,36(sp)
     df4:	46803220 	cvt.s.w	$f8,$f6
     df8:	24060000 	li	a2,0
     dfc:	00003825 	move	a3,zero
     e00:	46809120 	cvt.s.w	$f4,$f18
     e04:	46004383 	div.s	$f14,$f8,$f0
     e08:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     e0c:	46002303 	div.s	$f12,$f4,$f0
     e10:	3c0f0000 	lui	t7,0x0
     e14:	8def0000 	lw	t7,0(t7)
     e18:	3c0142c8 	lui	at,0x42c8
     e1c:	44819000 	mtc1	at,$f18
     e20:	85ee0f26 	lh	t6,3878(t7)
     e24:	24070001 	li	a3,1
     e28:	448e5000 	mtc1	t6,$f10
     e2c:	00000000 	nop
     e30:	46805420 	cvt.s.w	$f16,$f10
     e34:	46128303 	div.s	$f12,$f16,$f18
     e38:	44066000 	mfc1	a2,$f12
     e3c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     e40:	46006386 	mov.s	$f14,$f12
     e44:	3c180000 	lui	t8,0x0
     e48:	8f180000 	lw	t8,0(t8)
     e4c:	3c014120 	lui	at,0x4120
     e50:	44814000 	mtc1	at,$f8
     e54:	87190f7c 	lh	t9,3964(t8)
     e58:	24050001 	li	a1,1
     e5c:	44992000 	mtc1	t9,$f4
     e60:	00000000 	nop
     e64:	468021a0 	cvt.s.w	$f6,$f4
     e68:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     e6c:	46083303 	div.s	$f12,$f6,$f8
     e70:	3c090000 	lui	t1,0x0
     e74:	85290000 	lh	t1,0(t1)
     e78:	3c014120 	lui	at,0x4120
     e7c:	44819000 	mtc1	at,$f18
     e80:	44895000 	mtc1	t1,$f10
     e84:	24050001 	li	a1,1
     e88:	46805420 	cvt.s.w	$f16,$f10
     e8c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     e90:	46128303 	div.s	$f12,$f16,$f18
     e94:	8e0202b0 	lw	v0,688(s0)
     e98:	3c0ada38 	lui	t2,0xda38
     e9c:	354a0003 	ori	t2,t2,0x3
     ea0:	24480008 	addiu	t0,v0,8
     ea4:	ae0802b0 	sw	t0,688(s0)
     ea8:	ac4a0000 	sw	t2,0(v0)
     eac:	8fab0070 	lw	t3,112(sp)
     eb0:	3c050000 	lui	a1,0x0
     eb4:	24a50238 	addiu	a1,a1,568
     eb8:	8d640000 	lw	a0,0(t3)
     ebc:	2406025b 	li	a2,603
     ec0:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     ec4:	afa20030 	sw	v0,48(sp)
     ec8:	8fa30030 	lw	v1,48(sp)
     ecc:	3c0dfa00 	lui	t5,0xfa00
     ed0:	3c0fc800 	lui	t7,0xc800
     ed4:	ac620004 	sw	v0,4(v1)
     ed8:	8e0202b0 	lw	v0,688(s0)
     edc:	35ef00ff 	ori	t7,t7,0xff
     ee0:	35ad00ff 	ori	t5,t5,0xff
     ee4:	244c0008 	addiu	t4,v0,8
     ee8:	ae0c02b0 	sw	t4,688(s0)
     eec:	ac4f0004 	sw	t7,4(v0)
     ef0:	ac4d0000 	sw	t5,0(v0)
     ef4:	8e0202b0 	lw	v0,688(s0)
     ef8:	3c18de00 	lui	t8,0xde00
     efc:	244e0008 	addiu	t6,v0,8
     f00:	ae0e02b0 	sw	t6,688(s0)
     f04:	ac580000 	sw	t8,0(v0)
     f08:	8fb90024 	lw	t9,36(sp)
     f0c:	ac590004 	sw	t9,4(v0)
     f10:	8fa20070 	lw	v0,112(sp)
     f14:	3c060000 	lui	a2,0x0
     f18:	24c60248 	addiu	a2,a2,584
     f1c:	27a40050 	addiu	a0,sp,80
     f20:	8c450000 	lw	a1,0(v0)
     f24:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     f28:	2407025f 	li	a3,607
     f2c:	8fbf001c 	lw	ra,28(sp)
     f30:	8fb00018 	lw	s0,24(sp)
     f34:	27bd0070 	addiu	sp,sp,112
     f38:	03e00008 	jr	ra
     f3c:	00000000 	nop

00000f40 <Minimap_Draw>:
     f40:	3c0e0000 	lui	t6,0x0
     f44:	95ce1402 	lhu	t6,5122(t6)
     f48:	27bdfef0 	addiu	sp,sp,-272
     f4c:	afbf001c 	sw	ra,28(sp)
     f50:	afa40110 	sw	a0,272(sp)
     f54:	afae0100 	sw	t6,256(sp)
     f58:	8c850000 	lw	a1,0(a0)
     f5c:	3c060000 	lui	a2,0x0
     f60:	24c60258 	addiu	a2,a2,600
     f64:	27a400ec 	addiu	a0,sp,236
     f68:	24070272 	li	a3,626
     f6c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
     f70:	afa500fc 	sw	a1,252(sp)
     f74:	8fb80110 	lw	t8,272(sp)
     f78:	3c190001 	lui	t9,0x1
     f7c:	8fa800fc 	lw	t0,252(sp)
     f80:	0338c821 	addu	t9,t9,t8
     f84:	97390934 	lhu	t9,2356(t9)
     f88:	2b210004 	slti	at,t9,4
     f8c:	502002bc 	beqzl	at,1a80 <Minimap_Draw+0xb40>
     f90:	8faf0110 	lw	t7,272(sp)
     f94:	870200a4 	lh	v0,164(t8)
     f98:	2841000a 	slti	at,v0,10
     f9c:	14200009 	bnez	at,fc4 <Minimap_Draw+0x84>
     fa0:	244effaf 	addiu	t6,v0,-81
     fa4:	2dc10014 	sltiu	at,t6,20
     fa8:	102002b4 	beqz	at,1a7c <Minimap_Draw+0xb3c>
     fac:	000e7080 	sll	t6,t6,0x2
     fb0:	3c010000 	lui	at,0x0
     fb4:	002e0821 	addu	at,at,t6
     fb8:	8c2e0514 	lw	t6,1300(at)
     fbc:	01c00008 	jr	t6
     fc0:	00000000 	nop
     fc4:	2c41000a 	sltiu	at,v0,10
     fc8:	102002ac 	beqz	at,1a7c <Minimap_Draw+0xb3c>
     fcc:	00027880 	sll	t7,v0,0x2
     fd0:	3c010000 	lui	at,0x0
     fd4:	002f0821 	addu	at,at,t7
     fd8:	8c2f0564 	lw	t7,1380(at)
     fdc:	01e00008 	jr	t7
     fe0:	00000000 	nop
     fe4:	3c190000 	lui	t9,0x0
     fe8:	8f390000 	lw	t9,0(t9)
     fec:	8fae0110 	lw	t6,272(sp)
     ff0:	87380dd2 	lh	t8,3538(t9)
     ff4:	57000091 	bnezl	t8,123c <Minimap_Draw+0x2fc>
     ff8:	8fae0110 	lw	t6,272(sp)
     ffc:	8dc40000 	lw	a0,0(t6)
    1000:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1004:	afa800fc 	sw	t0,252(sp)
    1008:	8fa800fc 	lw	t0,252(sp)
    100c:	3c19fc61 	lui	t9,0xfc61
    1010:	3c18ff2f 	lui	t8,0xff2f
    1014:	8d0302b0 	lw	v1,688(t0)
    1018:	3718ffff 	ori	t8,t8,0xffff
    101c:	373996c3 	ori	t9,t9,0x96c3
    1020:	246f0008 	addiu	t7,v1,8
    1024:	ad0f02b0 	sw	t7,688(t0)
    1028:	ac780004 	sw	t8,4(v1)
    102c:	ac790000 	sw	t9,0(v1)
    1030:	8fae0100 	lw	t6,256(sp)
    1034:	3c0f0000 	lui	t7,0x0
    1038:	25ef0000 	addiu	t7,t7,0
    103c:	3c190000 	lui	t9,0x0
    1040:	01cf3021 	addu	a2,t6,t7
    1044:	90c200a8 	lbu	v0,168(a2)
    1048:	8f390008 	lw	t9,8(t9)
    104c:	0322c024 	and	t8,t9,v0
    1050:	1300006d 	beqz	t8,1208 <Minimap_Draw+0x2c8>
    1054:	00000000 	nop
    1058:	8d0302b0 	lw	v1,688(t0)
    105c:	3c0ffa00 	lui	t7,0xfa00
    1060:	3c010001 	lui	at,0x1
    1064:	246e0008 	addiu	t6,v1,8
    1068:	ad0e02b0 	sw	t6,688(t0)
    106c:	ac6f0000 	sw	t7,0(v1)
    1070:	8fa50110 	lw	a1,272(sp)
    1074:	342104f0 	ori	at,at,0x4f0
    1078:	3c0a0700 	lui	t2,0x700
    107c:	00a12821 	addu	a1,a1,at
    1080:	94b90254 	lhu	t9,596(a1)
    1084:	3c0164ff 	lui	at,0x64ff
    1088:	3421ff00 	ori	at,at,0xff00
    108c:	333800ff 	andi	t8,t9,0xff
    1090:	03017025 	or	t6,t8,at
    1094:	ac6e0004 	sw	t6,4(v1)
    1098:	8d0302b0 	lw	v1,688(t0)
    109c:	3c19fd90 	lui	t9,0xfd90
    10a0:	3c0be700 	lui	t3,0xe700
    10a4:	246f0008 	addiu	t7,v1,8
    10a8:	ad0f02b0 	sw	t7,688(t0)
    10ac:	ac790000 	sw	t9,0(v1)
    10b0:	8cb8013c 	lw	t8,316(a1)
    10b4:	3c0ff590 	lui	t7,0xf590
    10b8:	3c0cf200 	lui	t4,0xf200
    10bc:	ac780004 	sw	t8,4(v1)
    10c0:	8d0302b0 	lw	v1,688(t0)
    10c4:	3c18e600 	lui	t8,0xe600
    10c8:	3c020000 	lui	v0,0x0
    10cc:	246e0008 	addiu	t6,v1,8
    10d0:	ad0e02b0 	sw	t6,688(t0)
    10d4:	ac6a0004 	sw	t2,4(v1)
    10d8:	ac6f0000 	sw	t7,0(v1)
    10dc:	8d0302b0 	lw	v1,688(t0)
    10e0:	3c0ff300 	lui	t7,0xf300
    10e4:	3c01e400 	lui	at,0xe400
    10e8:	24790008 	addiu	t9,v1,8
    10ec:	ad1902b0 	sw	t9,688(t0)
    10f0:	ac600004 	sw	zero,4(v1)
    10f4:	ac780000 	sw	t8,0(v1)
    10f8:	8d0302b0 	lw	v1,688(t0)
    10fc:	3c19077f 	lui	t9,0x77f
    1100:	37397156 	ori	t9,t9,0x7156
    1104:	246e0008 	addiu	t6,v1,8
    1108:	ad0e02b0 	sw	t6,688(t0)
    110c:	ac790004 	sw	t9,4(v1)
    1110:	ac6f0000 	sw	t7,0(v1)
    1114:	8d0302b0 	lw	v1,688(t0)
    1118:	3c0ff580 	lui	t7,0xf580
    111c:	35ef0c00 	ori	t7,t7,0xc00
    1120:	24780008 	addiu	t8,v1,8
    1124:	ad1802b0 	sw	t8,688(t0)
    1128:	ac600004 	sw	zero,4(v1)
    112c:	ac6b0000 	sw	t3,0(v1)
    1130:	8d0302b0 	lw	v1,688(t0)
    1134:	3c180017 	lui	t8,0x17
    1138:	3718c150 	ori	t8,t8,0xc150
    113c:	246e0008 	addiu	t6,v1,8
    1140:	ad0e02b0 	sw	t6,688(t0)
    1144:	ac600004 	sw	zero,4(v1)
    1148:	ac6f0000 	sw	t7,0(v1)
    114c:	8d0302b0 	lw	v1,688(t0)
    1150:	3c0de100 	lui	t5,0xe100
    1154:	3c1ff100 	lui	ra,0xf100
    1158:	24790008 	addiu	t9,v1,8
    115c:	ad1902b0 	sw	t9,688(t0)
    1160:	ac780004 	sw	t8,4(v1)
    1164:	ac6c0000 	sw	t4,0(v1)
    1168:	8d0302b0 	lw	v1,688(t0)
    116c:	246e0008 	addiu	t6,v1,8
    1170:	ad0e02b0 	sw	t6,688(t0)
    1174:	8c420000 	lw	v0,0(v0)
    1178:	844f0e1e 	lh	t7,3614(v0)
    117c:	25f90055 	addiu	t9,t7,85
    1180:	0019c080 	sll	t8,t9,0x2
    1184:	84590e1c 	lh	t9,3612(v0)
    1188:	330e0fff 	andi	t6,t8,0xfff
    118c:	01c17825 	or	t7,t6,at
    1190:	27380060 	addiu	t8,t9,96
    1194:	00187080 	sll	t6,t8,0x2
    1198:	31d90fff 	andi	t9,t6,0xfff
    119c:	0019c300 	sll	t8,t9,0xc
    11a0:	01f87025 	or	t6,t7,t8
    11a4:	3c020000 	lui	v0,0x0
    11a8:	ac6e0000 	sw	t6,0(v1)
    11ac:	8c420000 	lw	v0,0(v0)
    11b0:	84590e1e 	lh	t9,3614(v0)
    11b4:	844e0e1c 	lh	t6,3612(v0)
    11b8:	00197880 	sll	t7,t9,0x2
    11bc:	31f80fff 	andi	t8,t7,0xfff
    11c0:	000ec880 	sll	t9,t6,0x2
    11c4:	332f0fff 	andi	t7,t9,0xfff
    11c8:	000f7300 	sll	t6,t7,0xc
    11cc:	030ec825 	or	t9,t8,t6
    11d0:	ac790004 	sw	t9,4(v1)
    11d4:	8d0302b0 	lw	v1,688(t0)
    11d8:	3c0e0400 	lui	t6,0x400
    11dc:	35ce0400 	ori	t6,t6,0x400
    11e0:	246f0008 	addiu	t7,v1,8
    11e4:	ad0f02b0 	sw	t7,688(t0)
    11e8:	ac600004 	sw	zero,4(v1)
    11ec:	ac6d0000 	sw	t5,0(v1)
    11f0:	8d0302b0 	lw	v1,688(t0)
    11f4:	24780008 	addiu	t8,v1,8
    11f8:	ad1802b0 	sw	t8,688(t0)
    11fc:	ac6e0004 	sw	t6,4(v1)
    1200:	ac7f0000 	sw	ra,0(v1)
    1204:	90c200a8 	lbu	v0,168(a2)
    1208:	3c190000 	lui	t9,0x0
    120c:	8f390004 	lw	t9,4(t9)
    1210:	03227824 	and	t7,t9,v0
    1214:	51e00009 	beqzl	t7,123c <Minimap_Draw+0x2fc>
    1218:	8fae0110 	lw	t6,272(sp)
    121c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1220:	8fa40110 	lw	a0,272(sp)
    1224:	8fb80110 	lw	t8,272(sp)
    1228:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    122c:	8f040000 	lw	a0,0(t8)
    1230:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1234:	8fa40110 	lw	a0,272(sp)
    1238:	8fae0110 	lw	t6,272(sp)
    123c:	2401ffdf 	li	at,-33
    1240:	95d90020 	lhu	t9,32(t6)
    1244:	03217827 	nor	t7,t9,at
    1248:	55e0020d 	bnezl	t7,1a80 <Minimap_Draw+0xb40>
    124c:	8faf0110 	lw	t7,272(sp)
    1250:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1254:	01c02025 	move	a0,t6
    1258:	54400209 	bnezl	v0,1a80 <Minimap_Draw+0xb40>
    125c:	8faf0110 	lw	t7,272(sp)
    1260:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1264:	8fa40110 	lw	a0,272(sp)
    1268:	3c040000 	lui	a0,0x0
    126c:	24840268 	addiu	a0,a0,616
    1270:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1274:	00402825 	move	a1,v0
    1278:	3c180000 	lui	t8,0x0
    127c:	8f180000 	lw	t8,0(t8)
    1280:	3c070000 	lui	a3,0x0
    1284:	3c050000 	lui	a1,0x0
    1288:	87190dd2 	lh	t9,3538(t8)
    128c:	24e70000 	addiu	a3,a3,0
    1290:	24a50000 	addiu	a1,a1,0
    1294:	1720000e 	bnez	t9,12d0 <Minimap_Draw+0x390>
    1298:	24044814 	li	a0,18452
    129c:	3c070000 	lui	a3,0x0
    12a0:	3c0f0000 	lui	t7,0x0
    12a4:	25ef0000 	addiu	t7,t7,0
    12a8:	24e70000 	addiu	a3,a3,0
    12ac:	3c050000 	lui	a1,0x0
    12b0:	24a50000 	addiu	a1,a1,0
    12b4:	afa70010 	sw	a3,16(sp)
    12b8:	afaf0014 	sw	t7,20(sp)
    12bc:	24044813 	li	a0,18451
    12c0:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    12c4:	24060004 	li	a2,4
    12c8:	10000007 	b	12e8 <Minimap_Draw+0x3a8>
    12cc:	00000000 	nop
    12d0:	3c0e0000 	lui	t6,0x0
    12d4:	25ce0000 	addiu	t6,t6,0
    12d8:	afae0014 	sw	t6,20(sp)
    12dc:	24060004 	li	a2,4
    12e0:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    12e4:	afa70010 	sw	a3,16(sp)
    12e8:	3c020000 	lui	v0,0x0
    12ec:	8c420000 	lw	v0,0(v0)
    12f0:	84580dd2 	lh	t8,3538(v0)
    12f4:	3b190001 	xori	t9,t8,0x1
    12f8:	100001e0 	b	1a7c <Minimap_Draw+0xb3c>
    12fc:	a4590dd2 	sh	t9,3538(v0)
    1300:	3c0f0000 	lui	t7,0x0
    1304:	8def0000 	lw	t7,0(t7)
    1308:	8fb80110 	lw	t8,272(sp)
    130c:	85ee0dd2 	lh	t6,3538(t7)
    1310:	55c001b1 	bnezl	t6,19d8 <Minimap_Draw+0xa98>
    1314:	8fb90110 	lw	t9,272(sp)
    1318:	8f040000 	lw	a0,0(t8)
    131c:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1320:	afa800fc 	sw	t0,252(sp)
    1324:	8fa800fc 	lw	t0,252(sp)
    1328:	3c0ffc11 	lui	t7,0xfc11
    132c:	3c0eff2f 	lui	t6,0xff2f
    1330:	8d0302b0 	lw	v1,688(t0)
    1334:	35ceffff 	ori	t6,t6,0xffff
    1338:	35ef9623 	ori	t7,t7,0x9623
    133c:	24790008 	addiu	t9,v1,8
    1340:	ad1902b0 	sw	t9,688(t0)
    1344:	ac6e0004 	sw	t6,4(v1)
    1348:	ac6f0000 	sw	t7,0(v1)
    134c:	8d0302b0 	lw	v1,688(t0)
    1350:	3c19fa00 	lui	t9,0xfa00
    1354:	3c020000 	lui	v0,0x0
    1358:	24780008 	addiu	t8,v1,8
    135c:	ad1802b0 	sw	t8,688(t0)
    1360:	ac790000 	sw	t9,0(v1)
    1364:	8c420000 	lw	v0,0(v0)
    1368:	8fa50110 	lw	a1,272(sp)
    136c:	3c010001 	lui	at,0x1
    1370:	844f0f3c 	lh	t7,3900(v0)
    1374:	342104f0 	ori	at,at,0x4f0
    1378:	00a12821 	addu	a1,a1,at
    137c:	31ee00ff 	andi	t6,t7,0xff
    1380:	844f0f38 	lh	t7,3896(v0)
    1384:	000ec200 	sll	t8,t6,0x8
    1388:	3c0a0700 	lui	t2,0x700
    138c:	000f7600 	sll	t6,t7,0x18
    1390:	844f0f3a 	lh	t7,3898(v0)
    1394:	030ec825 	or	t9,t8,t6
    1398:	3c090000 	lui	t1,0x0
    139c:	31f800ff 	andi	t8,t7,0xff
    13a0:	00187400 	sll	t6,t8,0x10
    13a4:	94b80254 	lhu	t8,596(a1)
    13a8:	032e7825 	or	t7,t9,t6
    13ac:	25290000 	addiu	t1,t1,0
    13b0:	331900ff 	andi	t9,t8,0xff
    13b4:	01f97025 	or	t6,t7,t9
    13b8:	ac6e0004 	sw	t6,4(v1)
    13bc:	8d0302b0 	lw	v1,688(t0)
    13c0:	3c0ffd70 	lui	t7,0xfd70
    13c4:	24780008 	addiu	t8,v1,8
    13c8:	ad1802b0 	sw	t8,688(t0)
    13cc:	ac6f0000 	sw	t7,0(v1)
    13d0:	8cb9013c 	lw	t9,316(a1)
    13d4:	3c18f570 	lui	t8,0xf570
    13d8:	ac790004 	sw	t9,4(v1)
    13dc:	8d0302b0 	lw	v1,688(t0)
    13e0:	3c19e600 	lui	t9,0xe600
    13e4:	246e0008 	addiu	t6,v1,8
    13e8:	ad0e02b0 	sw	t6,688(t0)
    13ec:	ac6a0004 	sw	t2,4(v1)
    13f0:	ac780000 	sw	t8,0(v1)
    13f4:	8d0302b0 	lw	v1,688(t0)
    13f8:	3c18f300 	lui	t8,0xf300
    13fc:	246f0008 	addiu	t7,v1,8
    1400:	ad0f02b0 	sw	t7,688(t0)
    1404:	ac600004 	sw	zero,4(v1)
    1408:	ac790000 	sw	t9,0(v1)
    140c:	8d0702b0 	lw	a3,688(t0)
    1410:	24ee0008 	addiu	t6,a3,8
    1414:	ad0e02b0 	sw	t6,688(t0)
    1418:	acf80000 	sw	t8,0(a3)
    141c:	8d240000 	lw	a0,0(t1)
    1420:	8fa60100 	lw	a2,256(sp)
    1424:	8c8f0040 	lw	t7,64(a0)
    1428:	8c8e0044 	lw	t6,68(a0)
    142c:	00063040 	sll	a2,a2,0x1
    1430:	01e6c821 	addu	t9,t7,a2
    1434:	01c6c021 	addu	t8,t6,a2
    1438:	870f0000 	lh	t7,0(t8)
    143c:	87220000 	lh	v0,0(t9)
    1440:	240407ff 	li	a0,2047
    1444:	01e20019 	multu	t7,v0
    1448:	00002812 	mflo	a1
    144c:	24a50003 	addiu	a1,a1,3
    1450:	00052883 	sra	a1,a1,0x2
    1454:	24a5ffff 	addiu	a1,a1,-1
    1458:	28a107ff 	slti	at,a1,2047
    145c:	10200003 	beqz	at,146c <Minimap_Draw+0x52c>
    1460:	00000000 	nop
    1464:	10000001 	b	146c <Minimap_Draw+0x52c>
    1468:	00a02025 	move	a0,a1
    146c:	04410003 	bgez	v0,147c <Minimap_Draw+0x53c>
    1470:	00021903 	sra	v1,v0,0x4
    1474:	2441000f 	addiu	at,v0,15
    1478:	00011903 	sra	v1,at,0x4
    147c:	1c600003 	bgtz	v1,148c <Minimap_Draw+0x54c>
    1480:	00602825 	move	a1,v1
    1484:	10000001 	b	148c <Minimap_Draw+0x54c>
    1488:	24050001 	li	a1,1
    148c:	1c600003 	bgtz	v1,149c <Minimap_Draw+0x55c>
    1490:	24b907ff 	addiu	t9,a1,2047
    1494:	10000002 	b	14a0 <Minimap_Draw+0x560>
    1498:	24020001 	li	v0,1
    149c:	00601025 	move	v0,v1
    14a0:	0322001a 	div	zero,t9,v0
    14a4:	00007012 	mflo	t6
    14a8:	31d80fff 	andi	t8,t6,0xfff
    14ac:	14400002 	bnez	v0,14b8 <Minimap_Draw+0x578>
    14b0:	00000000 	nop
    14b4:	0007000d 	break	0x7
    14b8:	2401ffff 	li	at,-1
    14bc:	14410004 	bne	v0,at,14d0 <Minimap_Draw+0x590>
    14c0:	3c018000 	lui	at,0x8000
    14c4:	17210002 	bne	t9,at,14d0 <Minimap_Draw+0x590>
    14c8:	00000000 	nop
    14cc:	0006000d 	break	0x6
    14d0:	30990fff 	andi	t9,a0,0xfff
    14d4:	00197300 	sll	t6,t9,0xc
    14d8:	030a7825 	or	t7,t8,t2
    14dc:	01eec025 	or	t8,t7,t6
    14e0:	acf80004 	sw	t8,4(a3)
    14e4:	8d0302b0 	lw	v1,688(t0)
    14e8:	3c0be700 	lui	t3,0xe700
    14ec:	3c01f560 	lui	at,0xf560
    14f0:	24790008 	addiu	t9,v1,8
    14f4:	ad1902b0 	sw	t9,688(t0)
    14f8:	ac600004 	sw	zero,4(v1)
    14fc:	ac6b0000 	sw	t3,0(v1)
    1500:	8d0302b0 	lw	v1,688(t0)
    1504:	3c0cf200 	lui	t4,0xf200
    1508:	3c020000 	lui	v0,0x0
    150c:	246f0008 	addiu	t7,v1,8
    1510:	ad0f02b0 	sw	t7,688(t0)
    1514:	8d2e0000 	lw	t6,0(t1)
    1518:	3c0de100 	lui	t5,0xe100
    151c:	3c1ff100 	lui	ra,0xf100
    1520:	8dd80040 	lw	t8,64(t6)
    1524:	0306c821 	addu	t9,t8,a2
    1528:	872f0000 	lh	t7,0(t9)
    152c:	ac600004 	sw	zero,4(v1)
    1530:	000f7043 	sra	t6,t7,0x1
    1534:	25d80007 	addiu	t8,t6,7
    1538:	0018c8c3 	sra	t9,t8,0x3
    153c:	332f01ff 	andi	t7,t9,0x1ff
    1540:	000f7240 	sll	t6,t7,0x9
    1544:	01c1c025 	or	t8,t6,at
    1548:	ac780000 	sw	t8,0(v1)
    154c:	8d0302b0 	lw	v1,688(t0)
    1550:	3c01e400 	lui	at,0xe400
    1554:	24790008 	addiu	t9,v1,8
    1558:	ad1902b0 	sw	t9,688(t0)
    155c:	ac6c0000 	sw	t4,0(v1)
    1560:	8d240000 	lw	a0,0(t1)
    1564:	8c8f0044 	lw	t7,68(a0)
    1568:	01e67021 	addu	t6,t7,a2
    156c:	85d80000 	lh	t8,0(t6)
    1570:	2719ffff 	addiu	t9,t8,-1
    1574:	8c980040 	lw	t8,64(a0)
    1578:	00197880 	sll	t7,t9,0x2
    157c:	31ee0fff 	andi	t6,t7,0xfff
    1580:	0306c821 	addu	t9,t8,a2
    1584:	872f0000 	lh	t7,0(t9)
    1588:	25f8ffff 	addiu	t8,t7,-1
    158c:	0018c880 	sll	t9,t8,0x2
    1590:	332f0fff 	andi	t7,t9,0xfff
    1594:	000fc300 	sll	t8,t7,0xc
    1598:	01d8c825 	or	t9,t6,t8
    159c:	ac790004 	sw	t9,4(v1)
    15a0:	8d0302b0 	lw	v1,688(t0)
    15a4:	246f0008 	addiu	t7,v1,8
    15a8:	ad0f02b0 	sw	t7,688(t0)
    15ac:	8d240000 	lw	a0,0(t1)
    15b0:	8c420000 	lw	v0,0(v0)
    15b4:	00602825 	move	a1,v1
    15b8:	8c8e0044 	lw	t6,68(a0)
    15bc:	844f0dd0 	lh	t7,3536(v0)
    15c0:	01c6c021 	addu	t8,t6,a2
    15c4:	87190000 	lh	t9,0(t8)
    15c8:	032f7021 	addu	t6,t9,t7
    15cc:	000ec080 	sll	t8,t6,0x2
    15d0:	33190fff 	andi	t9,t8,0xfff
    15d4:	8c980040 	lw	t8,64(a0)
    15d8:	03217825 	or	t7,t9,at
    15dc:	844e0dce 	lh	t6,3534(v0)
    15e0:	0306c821 	addu	t9,t8,a2
    15e4:	87380000 	lh	t8,0(t9)
    15e8:	3c020000 	lui	v0,0x0
    15ec:	24010052 	li	at,82
    15f0:	01d8c821 	addu	t9,t6,t8
    15f4:	00197080 	sll	t6,t9,0x2
    15f8:	31d80fff 	andi	t8,t6,0xfff
    15fc:	0018cb00 	sll	t9,t8,0xc
    1600:	01f97025 	or	t6,t7,t9
    1604:	ac6e0000 	sw	t6,0(v1)
    1608:	8c420000 	lw	v0,0(v0)
    160c:	84580dd0 	lh	t8,3536(v0)
    1610:	844e0dce 	lh	t6,3534(v0)
    1614:	00187880 	sll	t7,t8,0x2
    1618:	31f90fff 	andi	t9,t7,0xfff
    161c:	000ec080 	sll	t8,t6,0x2
    1620:	330f0fff 	andi	t7,t8,0xfff
    1624:	000f7300 	sll	t6,t7,0xc
    1628:	032ec025 	or	t8,t9,t6
    162c:	ac780004 	sw	t8,4(v1)
    1630:	8d0302b0 	lw	v1,688(t0)
    1634:	3c0e0400 	lui	t6,0x400
    1638:	35ce0400 	ori	t6,t6,0x400
    163c:	246f0008 	addiu	t7,v1,8
    1640:	ad0f02b0 	sw	t7,688(t0)
    1644:	ac600004 	sw	zero,4(v1)
    1648:	ac6d0000 	sw	t5,0(v1)
    164c:	8d0302b0 	lw	v1,688(t0)
    1650:	3c0f0000 	lui	t7,0x0
    1654:	24790008 	addiu	t9,v1,8
    1658:	ad1902b0 	sw	t9,688(t0)
    165c:	ac6e0004 	sw	t6,4(v1)
    1660:	ac7f0000 	sw	ra,0(v1)
    1664:	8fb80110 	lw	t8,272(sp)
    1668:	00601025 	move	v0,v1
    166c:	870400a4 	lh	a0,164(t8)
    1670:	10810005 	beq	a0,at,1688 <Minimap_Draw+0x748>
    1674:	24010055 	li	at,85
    1678:	10810003 	beq	a0,at,1688 <Minimap_Draw+0x748>
    167c:	24010059 	li	at,89
    1680:	5481000b 	bnel	a0,at,16b0 <Minimap_Draw+0x770>
    1684:	8d390000 	lw	t9,0(t1)
    1688:	8def0004 	lw	t7,4(t7)
    168c:	24010011 	li	at,17
    1690:	24020011 	li	v0,17
    1694:	11e00003 	beqz	t7,16a4 <Minimap_Draw+0x764>
    1698:	00000000 	nop
    169c:	10000001 	b	16a4 <Minimap_Draw+0x764>
    16a0:	24020005 	li	v0,5
    16a4:	5041007d 	beql	v0,at,189c <Minimap_Draw+0x95c>
    16a8:	24010059 	li	at,89
    16ac:	8d390000 	lw	t9,0(t1)
    16b0:	3c070000 	lui	a3,0x0
    16b4:	24e70000 	addiu	a3,a3,0
    16b8:	84ee0000 	lh	t6,0(a3)
    16bc:	8f220050 	lw	v0,80(t9)
    16c0:	3405ffff 	li	a1,0xffff
    16c4:	000ec040 	sll	t8,t6,0x1
    16c8:	00587821 	addu	t7,v0,t8
    16cc:	95e30000 	lhu	v1,0(t7)
    16d0:	50a3000e 	beql	a1,v1,170c <Minimap_Draw+0x7cc>
    16d4:	8d0302b0 	lw	v1,688(t0)
    16d8:	10a3006f 	beq	a1,v1,1898 <Minimap_Draw+0x958>
    16dc:	0046c821 	addu	t9,v0,a2
    16e0:	972e0000 	lhu	t6,0(t9)
    16e4:	3c0f0000 	lui	t7,0x0
    16e8:	3c190000 	lui	t9,0x0
    16ec:	000ec080 	sll	t8,t6,0x2
    16f0:	01f87821 	addu	t7,t7,t8
    16f4:	8def0000 	lw	t7,0(t7)
    16f8:	97390f2c 	lhu	t9,3884(t9)
    16fc:	01f97024 	and	t6,t7,t9
    1700:	51c00066 	beqzl	t6,189c <Minimap_Draw+0x95c>
    1704:	24010059 	li	at,89
    1708:	8d0302b0 	lw	v1,688(t0)
    170c:	3c190000 	lui	t9,0x0
    1710:	27390000 	addiu	t9,t9,0
    1714:	24780008 	addiu	t8,v1,8
    1718:	ad1802b0 	sw	t8,688(t0)
    171c:	3c0ffd10 	lui	t7,0xfd10
    1720:	ac6f0000 	sw	t7,0(v1)
    1724:	ac790004 	sw	t9,4(v1)
    1728:	8d0302b0 	lw	v1,688(t0)
    172c:	3c18f510 	lui	t8,0xf510
    1730:	3c19e600 	lui	t9,0xe600
    1734:	246e0008 	addiu	t6,v1,8
    1738:	ad0e02b0 	sw	t6,688(t0)
    173c:	ac6a0004 	sw	t2,4(v1)
    1740:	ac780000 	sw	t8,0(v1)
    1744:	8d0302b0 	lw	v1,688(t0)
    1748:	3c18f300 	lui	t8,0xf300
    174c:	3c01e400 	lui	at,0xe400
    1750:	246f0008 	addiu	t7,v1,8
    1754:	ad0f02b0 	sw	t7,688(t0)
    1758:	ac600004 	sw	zero,4(v1)
    175c:	ac790000 	sw	t9,0(v1)
    1760:	8d0302b0 	lw	v1,688(t0)
    1764:	3c0f0703 	lui	t7,0x703
    1768:	35eff400 	ori	t7,t7,0xf400
    176c:	246e0008 	addiu	t6,v1,8
    1770:	ad0e02b0 	sw	t6,688(t0)
    1774:	ac6f0004 	sw	t7,4(v1)
    1778:	ac780000 	sw	t8,0(v1)
    177c:	8d0302b0 	lw	v1,688(t0)
    1780:	3c18f510 	lui	t8,0xf510
    1784:	37180400 	ori	t8,t8,0x400
    1788:	24790008 	addiu	t9,v1,8
    178c:	ad1902b0 	sw	t9,688(t0)
    1790:	ac600004 	sw	zero,4(v1)
    1794:	ac6b0000 	sw	t3,0(v1)
    1798:	8d0302b0 	lw	v1,688(t0)
    179c:	3c190001 	lui	t9,0x1
    17a0:	3739c01c 	ori	t9,t9,0xc01c
    17a4:	246e0008 	addiu	t6,v1,8
    17a8:	ad0e02b0 	sw	t6,688(t0)
    17ac:	ac600004 	sw	zero,4(v1)
    17b0:	ac780000 	sw	t8,0(v1)
    17b4:	8d0302b0 	lw	v1,688(t0)
    17b8:	246f0008 	addiu	t7,v1,8
    17bc:	ad0f02b0 	sw	t7,688(t0)
    17c0:	ac790004 	sw	t9,4(v1)
    17c4:	ac6c0000 	sw	t4,0(v1)
    17c8:	8d0302b0 	lw	v1,688(t0)
    17cc:	246e0008 	addiu	t6,v1,8
    17d0:	ad0e02b0 	sw	t6,688(t0)
    17d4:	8d240000 	lw	a0,0(t1)
    17d8:	84e20000 	lh	v0,0(a3)
    17dc:	8c98004c 	lw	t8,76(a0)
    17e0:	00021040 	sll	v0,v0,0x1
    17e4:	03027821 	addu	t7,t8,v0
    17e8:	85f90000 	lh	t9,0(t7)
    17ec:	272e0008 	addiu	t6,t9,8
    17f0:	000ec080 	sll	t8,t6,0x2
    17f4:	8c8e0048 	lw	t6,72(a0)
    17f8:	330f0fff 	andi	t7,t8,0xfff
    17fc:	01e1c825 	or	t9,t7,at
    1800:	01c2c021 	addu	t8,t6,v0
    1804:	870f0000 	lh	t7,0(t8)
    1808:	25ee0008 	addiu	t6,t7,8
    180c:	000ec080 	sll	t8,t6,0x2
    1810:	330f0fff 	andi	t7,t8,0xfff
    1814:	000f7300 	sll	t6,t7,0xc
    1818:	032ec025 	or	t8,t9,t6
    181c:	ac780000 	sw	t8,0(v1)
    1820:	8d240000 	lw	a0,0(t1)
    1824:	84e20000 	lh	v0,0(a3)
    1828:	8c8f004c 	lw	t7,76(a0)
    182c:	00021040 	sll	v0,v0,0x1
    1830:	01e2c821 	addu	t9,t7,v0
    1834:	872e0000 	lh	t6,0(t9)
    1838:	8c990048 	lw	t9,72(a0)
    183c:	000ec080 	sll	t8,t6,0x2
    1840:	330f0fff 	andi	t7,t8,0xfff
    1844:	03227021 	addu	t6,t9,v0
    1848:	85d80000 	lh	t8,0(t6)
    184c:	0018c880 	sll	t9,t8,0x2
    1850:	332e0fff 	andi	t6,t9,0xfff
    1854:	000ec300 	sll	t8,t6,0xc
    1858:	01f8c825 	or	t9,t7,t8
    185c:	ac790004 	sw	t9,4(v1)
    1860:	8d0302b0 	lw	v1,688(t0)
    1864:	3c180400 	lui	t8,0x400
    1868:	37180400 	ori	t8,t8,0x400
    186c:	246e0008 	addiu	t6,v1,8
    1870:	ad0e02b0 	sw	t6,688(t0)
    1874:	ac600004 	sw	zero,4(v1)
    1878:	ac6d0000 	sw	t5,0(v1)
    187c:	8d0302b0 	lw	v1,688(t0)
    1880:	246f0008 	addiu	t7,v1,8
    1884:	ad0f02b0 	sw	t7,688(t0)
    1888:	ac780004 	sw	t8,4(v1)
    188c:	ac7f0000 	sw	ra,0(v1)
    1890:	8fb90110 	lw	t9,272(sp)
    1894:	872400a4 	lh	a0,164(t9)
    1898:	24010059 	li	at,89
    189c:	1481004b 	bne	a0,at,19cc <Minimap_Draw+0xa8c>
    18a0:	3c0e0000 	lui	t6,0x0
    18a4:	3c0f0000 	lui	t7,0x0
    18a8:	95ef0f2c 	lhu	t7,3884(t7)
    18ac:	8dce0024 	lw	t6,36(t6)
    18b0:	3c040000 	lui	a0,0x0
    18b4:	01cfc024 	and	t8,t6,t7
    18b8:	13000044 	beqz	t8,19cc <Minimap_Draw+0xa8c>
    18bc:	00000000 	nop
    18c0:	8d0302b0 	lw	v1,688(t0)
    18c4:	24840000 	addiu	a0,a0,0
    18c8:	3c0efd10 	lui	t6,0xfd10
    18cc:	24790008 	addiu	t9,v1,8
    18d0:	ad1902b0 	sw	t9,688(t0)
    18d4:	ac640004 	sw	a0,4(v1)
    18d8:	ac6e0000 	sw	t6,0(v1)
    18dc:	8d0302b0 	lw	v1,688(t0)
    18e0:	3c18f510 	lui	t8,0xf510
    18e4:	3c0ee600 	lui	t6,0xe600
    18e8:	246f0008 	addiu	t7,v1,8
    18ec:	ad0f02b0 	sw	t7,688(t0)
    18f0:	ac6a0004 	sw	t2,4(v1)
    18f4:	ac780000 	sw	t8,0(v1)
    18f8:	8d0302b0 	lw	v1,688(t0)
    18fc:	3c18f300 	lui	t8,0xf300
    1900:	24790008 	addiu	t9,v1,8
    1904:	ad1902b0 	sw	t9,688(t0)
    1908:	ac600004 	sw	zero,4(v1)
    190c:	ac6e0000 	sw	t6,0(v1)
    1910:	8d0302b0 	lw	v1,688(t0)
    1914:	3c190703 	lui	t9,0x703
    1918:	3739f400 	ori	t9,t9,0xf400
    191c:	246f0008 	addiu	t7,v1,8
    1920:	ad0f02b0 	sw	t7,688(t0)
    1924:	ac790004 	sw	t9,4(v1)
    1928:	ac780000 	sw	t8,0(v1)
    192c:	8d0302b0 	lw	v1,688(t0)
    1930:	3c18f510 	lui	t8,0xf510
    1934:	37180400 	ori	t8,t8,0x400
    1938:	246e0008 	addiu	t6,v1,8
    193c:	ad0e02b0 	sw	t6,688(t0)
    1940:	ac600004 	sw	zero,4(v1)
    1944:	ac6b0000 	sw	t3,0(v1)
    1948:	8d0302b0 	lw	v1,688(t0)
    194c:	3c0e0001 	lui	t6,0x1
    1950:	35cec01c 	ori	t6,t6,0xc01c
    1954:	246f0008 	addiu	t7,v1,8
    1958:	ad0f02b0 	sw	t7,688(t0)
    195c:	ac600004 	sw	zero,4(v1)
    1960:	ac780000 	sw	t8,0(v1)
    1964:	8d0302b0 	lw	v1,688(t0)
    1968:	3c18e445 	lui	t8,0xe445
    196c:	37188288 	ori	t8,t8,0x8288
    1970:	24790008 	addiu	t9,v1,8
    1974:	ad1902b0 	sw	t9,688(t0)
    1978:	ac6e0004 	sw	t6,4(v1)
    197c:	ac6c0000 	sw	t4,0(v1)
    1980:	8d0302b0 	lw	v1,688(t0)
    1984:	3c190043 	lui	t9,0x43
    1988:	37398268 	ori	t9,t9,0x8268
    198c:	246f0008 	addiu	t7,v1,8
    1990:	ad0f02b0 	sw	t7,688(t0)
    1994:	ac790004 	sw	t9,4(v1)
    1998:	ac780000 	sw	t8,0(v1)
    199c:	8d0302b0 	lw	v1,688(t0)
    19a0:	3c180400 	lui	t8,0x400
    19a4:	37180400 	ori	t8,t8,0x400
    19a8:	246e0008 	addiu	t6,v1,8
    19ac:	ad0e02b0 	sw	t6,688(t0)
    19b0:	ac600004 	sw	zero,4(v1)
    19b4:	ac6d0000 	sw	t5,0(v1)
    19b8:	8d0302b0 	lw	v1,688(t0)
    19bc:	246f0008 	addiu	t7,v1,8
    19c0:	ad0f02b0 	sw	t7,688(t0)
    19c4:	ac780004 	sw	t8,4(v1)
    19c8:	ac7f0000 	sw	ra,0(v1)
    19cc:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    19d0:	8fa40110 	lw	a0,272(sp)
    19d4:	8fb90110 	lw	t9,272(sp)
    19d8:	2401ffdf 	li	at,-33
    19dc:	972e0020 	lhu	t6,32(t9)
    19e0:	01c17827 	nor	t7,t6,at
    19e4:	55e00026 	bnezl	t7,1a80 <Minimap_Draw+0xb40>
    19e8:	8faf0110 	lw	t7,272(sp)
    19ec:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    19f0:	03202025 	move	a0,t9
    19f4:	14400021 	bnez	v0,1a7c <Minimap_Draw+0xb3c>
    19f8:	3c180000 	lui	t8,0x0
    19fc:	8f180000 	lw	t8,0(t8)
    1a00:	3c070000 	lui	a3,0x0
    1a04:	3c050000 	lui	a1,0x0
    1a08:	870e0dd2 	lh	t6,3538(t8)
    1a0c:	24e70000 	addiu	a3,a3,0
    1a10:	24a50000 	addiu	a1,a1,0
    1a14:	15c0000e 	bnez	t6,1a50 <Minimap_Draw+0xb10>
    1a18:	24044814 	li	a0,18452
    1a1c:	3c070000 	lui	a3,0x0
    1a20:	3c0f0000 	lui	t7,0x0
    1a24:	25ef0000 	addiu	t7,t7,0
    1a28:	24e70000 	addiu	a3,a3,0
    1a2c:	3c050000 	lui	a1,0x0
    1a30:	24a50000 	addiu	a1,a1,0
    1a34:	afa70010 	sw	a3,16(sp)
    1a38:	afaf0014 	sw	t7,20(sp)
    1a3c:	24044813 	li	a0,18451
    1a40:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1a44:	24060004 	li	a2,4
    1a48:	10000007 	b	1a68 <Minimap_Draw+0xb28>
    1a4c:	00000000 	nop
    1a50:	3c190000 	lui	t9,0x0
    1a54:	27390000 	addiu	t9,t9,0
    1a58:	afb90014 	sw	t9,20(sp)
    1a5c:	24060004 	li	a2,4
    1a60:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1a64:	afa70010 	sw	a3,16(sp)
    1a68:	3c020000 	lui	v0,0x0
    1a6c:	8c420000 	lw	v0,0(v0)
    1a70:	84580dd2 	lh	t8,3538(v0)
    1a74:	3b0e0001 	xori	t6,t8,0x1
    1a78:	a44e0dd2 	sh	t6,3538(v0)
    1a7c:	8faf0110 	lw	t7,272(sp)
    1a80:	3c060000 	lui	a2,0x0
    1a84:	24c60288 	addiu	a2,a2,648
    1a88:	27a400ec 	addiu	a0,sp,236
    1a8c:	2407030e 	li	a3,782
    1a90:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1a94:	8de50000 	lw	a1,0(t7)
    1a98:	8fbf001c 	lw	ra,28(sp)
    1a9c:	27bd0110 	addiu	sp,sp,272
    1aa0:	03e00008 	jr	ra
    1aa4:	00000000 	nop

00001aa8 <Map_GetFloorTextIndexOffset>:
    1aa8:	3c0e0000 	lui	t6,0x0
    1aac:	8dce0000 	lw	t6,0(t6)
    1ab0:	0004c100 	sll	t8,a0,0x4
    1ab4:	00054040 	sll	t0,a1,0x1
    1ab8:	8dcf0000 	lw	t7,0(t6)
    1abc:	01f8c821 	addu	t9,t7,t8
    1ac0:	03284821 	addu	t1,t9,t0
    1ac4:	03e00008 	jr	ra
    1ac8:	85220000 	lh	v0,0(t1)

00001acc <Map_Update>:
    1acc:	27bdffb0 	addiu	sp,sp,-80
    1ad0:	3c010001 	lui	at,0x1
    1ad4:	afbf002c 	sw	ra,44(sp)
    1ad8:	afb40028 	sw	s4,40(sp)
    1adc:	afb30024 	sw	s3,36(sp)
    1ae0:	afb20020 	sw	s2,32(sp)
    1ae4:	afb1001c 	sw	s1,28(sp)
    1ae8:	afb00018 	sw	s0,24(sp)
    1aec:	00811021 	addu	v0,a0,at
    1af0:	944e0934 	lhu	t6,2356(v0)
    1af4:	3c060000 	lui	a2,0x0
    1af8:	24c60000 	addiu	a2,a2,0
    1afc:	0080a025 	move	s4,a0
    1b00:	8c851c44 	lw	a1,7236(a0)
    1b04:	15c000c5 	bnez	t6,1e1c <Map_Update+0x350>
    1b08:	94d31402 	lhu	s3,5122(a2)
    1b0c:	944f0936 	lhu	t7,2358(v0)
    1b10:	55e000c3 	bnezl	t7,1e20 <Map_Update+0x354>
    1b14:	8fbf002c 	lw	ra,44(sp)
    1b18:	848200a4 	lh	v0,164(a0)
    1b1c:	2c410019 	sltiu	at,v0,25
    1b20:	102000be 	beqz	at,1e1c <Map_Update+0x350>
    1b24:	0002c080 	sll	t8,v0,0x2
    1b28:	3c010000 	lui	at,0x0
    1b2c:	00380821 	addu	at,at,t8
    1b30:	8c38058c 	lw	t8,1420(at)
    1b34:	03000008 	jr	t8
    1b38:	00000000 	nop
    1b3c:	3c010001 	lui	at,0x1
    1b40:	342104f0 	ori	at,at,0x4f0
    1b44:	02819021 	addu	s2,s4,at
    1b48:	3c070000 	lui	a3,0x0
    1b4c:	a240015e 	sb	zero,350(s2)
    1b50:	24e70000 	addiu	a3,a3,0
    1b54:	00d34021 	addu	t0,a2,s3
    1b58:	910900a8 	lbu	t1,168(t0)
    1b5c:	8cf90008 	lw	t9,8(a3)
    1b60:	0013c0c0 	sll	t8,s3,0x3
    1b64:	3c0c0000 	lui	t4,0x0
    1b68:	03295024 	and	t2,t9,t1
    1b6c:	11400004 	beqz	t2,1b80 <Map_Update+0xb4>
    1b70:	0313c023 	subu	t8,t8,s3
    1b74:	240b0001 	li	t3,1
    1b78:	10000002 	b	1b84 <Map_Update+0xb8>
    1b7c:	a24b015f 	sb	t3,351(s2)
    1b80:	a240015f 	sb	zero,351(s2)
    1b84:	8d8c0000 	lw	t4,0(t4)
    1b88:	00137140 	sll	t6,s3,0x5
    1b8c:	00008825 	move	s1,zero
    1b90:	8d8d0054 	lw	t5,84(t4)
    1b94:	c4a00028 	lwc1	$f0,40(a1)
    1b98:	0018c080 	sll	t8,t8,0x2
    1b9c:	01ae1821 	addu	v1,t5,t6
    1ba0:	00111080 	sll	v0,s1,0x2
    1ba4:	00627821 	addu	t7,v1,v0
    1ba8:	c5e40000 	lwc1	$f4,0(t7)
    1bac:	4600203c 	c.lt.s	$f4,$f0
    1bb0:	00000000 	nop
    1bb4:	45030009 	bc1tl	1bdc <Map_Update+0x110>
    1bb8:	00d81821 	addu	v1,a2,t8
    1bbc:	26310001 	addiu	s1,s1,1
    1bc0:	00118c00 	sll	s1,s1,0x10
    1bc4:	00118c03 	sra	s1,s1,0x10
    1bc8:	2a210008 	slti	at,s1,8
    1bcc:	5420fff5 	bnezl	at,1ba4 <Map_Update+0xd8>
    1bd0:	00111080 	sll	v0,s1,0x2
    1bd4:	00111080 	sll	v0,s1,0x2
    1bd8:	00d81821 	addu	v1,a2,t8
    1bdc:	00e2c821 	addu	t9,a3,v0
    1be0:	8f290000 	lw	t1,0(t9)
    1be4:	8c6800ec 	lw	t0,236(v1)
    1be8:	3c0b0000 	lui	t3,0x0
    1bec:	02602025 	move	a0,s3
    1bf0:	01095025 	or	t2,t0,t1
    1bf4:	ac6a00ec 	sw	t2,236(v1)
    1bf8:	8d6b0000 	lw	t3,0(t3)
    1bfc:	02202825 	move	a1,s1
    1c00:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1c04:	a5710f50 	sh	s1,3920(t3)
    1c08:	3c030000 	lui	v1,0x0
    1c0c:	8c630000 	lw	v1,0(v1)
    1c10:	02602025 	move	a0,s3
    1c14:	846d0f2c 	lh	t5,3884(v1)
    1c18:	846c0f2e 	lh	t4,3886(v1)
    1c1c:	004d7021 	addu	t6,v0,t5
    1c20:	118e0008 	beq	t4,t6,1c44 <Map_Update+0x178>
    1c24:	00000000 	nop
    1c28:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1c2c:	02202825 	move	a1,s1
    1c30:	3c030000 	lui	v1,0x0
    1c34:	8c630000 	lw	v1,0(v1)
    1c38:	846f0f2c 	lh	t7,3884(v1)
    1c3c:	004fc021 	addu	t8,v0,t7
    1c40:	a4780f2e 	sh	t8,3886(v1)
    1c44:	3c190000 	lui	t9,0x0
    1c48:	87390010 	lh	t9,16(t9)
    1c4c:	8646025c 	lh	a2,604(s2)
    1c50:	3c080000 	lui	t0,0x0
    1c54:	1326000d 	beq	t9,a2,1c8c <Map_Update+0x1c0>
    1c58:	00000000 	nop
    1c5c:	8d080000 	lw	t0,0(t0)
    1c60:	00135040 	sll	t2,s3,0x1
    1c64:	3c040000 	lui	a0,0x0
    1c68:	8d090058 	lw	t1,88(t0)
    1c6c:	24840298 	addiu	a0,a0,664
    1c70:	02202825 	move	a1,s1
    1c74:	012a5821 	addu	t3,t1,t2
    1c78:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1c7c:	95670000 	lhu	a3,0(t3)
    1c80:	8646025c 	lh	a2,604(s2)
    1c84:	3c010000 	lui	at,0x0
    1c88:	a4260010 	sh	a2,16(at)
    1c8c:	3c020000 	lui	v0,0x0
    1c90:	8c420000 	lw	v0,0(v0)
    1c94:	00136840 	sll	t5,s3,0x1
    1c98:	afad0034 	sw	t5,52(sp)
    1c9c:	8c4c0058 	lw	t4,88(v0)
    1ca0:	00008025 	move	s0,zero
    1ca4:	018d7821 	addu	t7,t4,t5
    1ca8:	95e30000 	lhu	v1,0(t7)
    1cac:	1860003f 	blez	v1,1dac <Map_Update+0x2e0>
    1cb0:	0013c880 	sll	t9,s3,0x2
    1cb4:	0333c823 	subu	t9,t9,s3
    1cb8:	0019c880 	sll	t9,t9,0x2
    1cbc:	8c58005c 	lw	t8,92(v0)
    1cc0:	0333c821 	addu	t9,t9,s3
    1cc4:	0019c880 	sll	t9,t9,0x2
    1cc8:	0333c823 	subu	t9,t9,s3
    1ccc:	03194021 	addu	t0,t8,t9
    1cd0:	01104821 	addu	t1,t0,s0
    1cd4:	912a0000 	lbu	t2,0(t1)
    1cd8:	00136880 	sll	t5,s3,0x2
    1cdc:	01b36823 	subu	t5,t5,s3
    1ce0:	14ca002c 	bne	a2,t2,1d94 <Map_Update+0x2c8>
    1ce4:	000d6880 	sll	t5,t5,0x2
    1ce8:	8c4b0060 	lw	t3,96(v0)
    1cec:	01b36821 	addu	t5,t5,s3
    1cf0:	000d6880 	sll	t5,t5,0x2
    1cf4:	01b36823 	subu	t5,t5,s3
    1cf8:	016d6021 	addu	t4,t3,t5
    1cfc:	01907021 	addu	t6,t4,s0
    1d00:	91cf0000 	lbu	t7,0(t6)
    1d04:	0013c880 	sll	t9,s3,0x2
    1d08:	0333c823 	subu	t9,t9,s3
    1d0c:	162f0021 	bne	s1,t7,1d94 <Map_Update+0x2c8>
    1d10:	0019c880 	sll	t9,t9,0x2
    1d14:	8c580064 	lw	t8,100(v0)
    1d18:	0333c821 	addu	t9,t9,s3
    1d1c:	0019c880 	sll	t9,t9,0x2
    1d20:	0333c823 	subu	t9,t9,s3
    1d24:	03194021 	addu	t0,t8,t9
    1d28:	01104821 	addu	t1,t0,s0
    1d2c:	912a0000 	lbu	t2,0(t1)
    1d30:	3c040000 	lui	a0,0x0
    1d34:	248402c0 	addiu	a0,a0,704
    1d38:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1d3c:	a64a025c 	sh	t2,604(s2)
    1d40:	3c040000 	lui	a0,0x0
    1d44:	248402c8 	addiu	a0,a0,712
    1d48:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1d4c:	8645025c 	lh	a1,604(s2)
    1d50:	3c040000 	lui	a0,0x0
    1d54:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1d58:	248402d8 	addiu	a0,a0,728
    1d5c:	02802025 	move	a0,s4
    1d60:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1d64:	8645025c 	lh	a1,604(s2)
    1d68:	3c010000 	lui	at,0x0
    1d6c:	a4201422 	sh	zero,5154(at)
    1d70:	0c000000 	jal	0 <Map_SavePlayerInitialInfo>
    1d74:	02802025 	move	a0,s4
    1d78:	3c020000 	lui	v0,0x0
    1d7c:	8c420000 	lw	v0,0(v0)
    1d80:	8fad0034 	lw	t5,52(sp)
    1d84:	8646025c 	lh	a2,604(s2)
    1d88:	8c4b0058 	lw	t3,88(v0)
    1d8c:	016d6021 	addu	t4,t3,t5
    1d90:	95830000 	lhu	v1,0(t4)
    1d94:	26100001 	addiu	s0,s0,1
    1d98:	00108400 	sll	s0,s0,0x10
    1d9c:	00108403 	sra	s0,s0,0x10
    1da0:	0203082a 	slt	at,s0,v1
    1da4:	5420ffc3 	bnezl	at,1cb4 <Map_Update+0x1e8>
    1da8:	0013c880 	sll	t9,s3,0x2
    1dac:	3c0e0000 	lui	t6,0x0
    1db0:	8dce0000 	lw	t6,0(t6)
    1db4:	10000019 	b	1e1c <Map_Update+0x350>
    1db8:	a5c60f28 	sh	a2,3880(t6)
    1dbc:	3c0f0000 	lui	t7,0x0
    1dc0:	8def0000 	lw	t7,0(t7)
    1dc4:	0002c840 	sll	t9,v0,0x1
    1dc8:	3c0a0000 	lui	t2,0x0
    1dcc:	8df80004 	lw	t8,4(t7)
    1dd0:	8d4a0000 	lw	t2,0(t2)
    1dd4:	3c030000 	lui	v1,0x0
    1dd8:	03194021 	addu	t0,t8,t9
    1ddc:	8509ffde 	lh	t1,-34(t0)
    1de0:	3c0b0000 	lui	t3,0x0
    1de4:	a5490f50 	sh	t1,3920(t2)
    1de8:	8d6b0000 	lw	t3,0(t3)
    1dec:	8c630000 	lw	v1,0(v1)
    1df0:	868c00a4 	lh	t4,164(s4)
    1df4:	8d6d0000 	lw	t5,0(t3)
    1df8:	84780f50 	lh	t8,3920(v1)
    1dfc:	000c7100 	sll	t6,t4,0x4
    1e00:	01ae7821 	addu	t7,t5,t6
    1e04:	0018c840 	sll	t9,t8,0x1
    1e08:	01f94021 	addu	t0,t7,t9
    1e0c:	8509fef0 	lh	t1,-272(t0)
    1e10:	846a0f2c 	lh	t2,3884(v1)
    1e14:	012a5821 	addu	t3,t1,t2
    1e18:	a46b0f2e 	sh	t3,3886(v1)
    1e1c:	8fbf002c 	lw	ra,44(sp)
    1e20:	8fb00018 	lw	s0,24(sp)
    1e24:	8fb1001c 	lw	s1,28(sp)
    1e28:	8fb20020 	lw	s2,32(sp)
    1e2c:	8fb30024 	lw	s3,36(sp)
    1e30:	8fb40028 	lw	s4,40(sp)
    1e34:	03e00008 	jr	ra
    1e38:	27bd0050 	addiu	sp,sp,80
    1e3c:	00000000 	nop
