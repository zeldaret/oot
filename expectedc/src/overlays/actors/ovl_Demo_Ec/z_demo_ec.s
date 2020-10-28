
build/src/overlays/actors/ovl_Demo_Ec/z_demo_ec.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoEc_Destroy>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	0c000000 	jal	0 <DemoEc_Destroy>
       c:	2484014c 	addiu	a0,a0,332
      10:	8fbf0014 	lw	ra,20(sp)
      14:	27bd0018 	addiu	sp,sp,24
      18:	03e00008 	jr	ra
      1c:	00000000 	nop

00000020 <DemoEc_Init>:
      20:	27bdffe8 	addiu	sp,sp,-24
      24:	afbf0014 	sw	ra,20(sp)
      28:	afa40018 	sw	a0,24(sp)
      2c:	afa5001c 	sw	a1,28(sp)
      30:	8482001c 	lh	v0,28(a0)
      34:	00802825 	move	a1,a0
      38:	3c040000 	lui	a0,0x0
      3c:	04400002 	bltz	v0,48 <DemoEc_Init+0x28>
      40:	28410023 	slti	at,v0,35
      44:	14200007 	bnez	at,64 <DemoEc_Init+0x44>
      48:	24840000 	addiu	a0,a0,0
      4c:	0c000000 	jal	0 <DemoEc_Destroy>
      50:	afa50018 	sw	a1,24(sp)
      54:	0c000000 	jal	0 <DemoEc_Destroy>
      58:	8fa40018 	lw	a0,24(sp)
      5c:	10000004 	b	70 <DemoEc_Init+0x50>
      60:	8fbf0014 	lw	ra,20(sp)
      64:	aca00194 	sw	zero,404(a1)
      68:	aca00198 	sw	zero,408(a1)
      6c:	8fbf0014 	lw	ra,20(sp)
      70:	27bd0018 	addiu	sp,sp,24
      74:	03e00008 	jr	ra
      78:	00000000 	nop

0000007c <func_8096D52C>:
      7c:	27bdffe8 	addiu	sp,sp,-24
      80:	afbf0014 	sw	ra,20(sp)
      84:	0c000000 	jal	0 <DemoEc_Destroy>
      88:	2484014c 	addiu	a0,a0,332
      8c:	8fbf0014 	lw	ra,20(sp)
      90:	27bd0018 	addiu	sp,sp,24
      94:	03e00008 	jr	ra
      98:	00000000 	nop

0000009c <func_8096D54C>:
      9c:	27bdffe0 	addiu	sp,sp,-32
      a0:	3c0141f0 	lui	at,0x41f0
      a4:	44810000 	mtc1	at,$f0
      a8:	afa50024 	sw	a1,36(sp)
      ac:	00802825 	move	a1,a0
      b0:	afbf001c 	sw	ra,28(sp)
      b4:	afa40020 	sw	a0,32(sp)
      b8:	240e0007 	li	t6,7
      bc:	44060000 	mfc1	a2,$f0
      c0:	afae0014 	sw	t6,20(sp)
      c4:	8fa40024 	lw	a0,36(sp)
      c8:	3c0741c8 	lui	a3,0x41c8
      cc:	0c000000 	jal	0 <DemoEc_Destroy>
      d0:	e7a00010 	swc1	$f0,16(sp)
      d4:	8fbf001c 	lw	ra,28(sp)
      d8:	27bd0020 	addiu	sp,sp,32
      dc:	03e00008 	jr	ra
      e0:	00000000 	nop

000000e4 <func_8096D594>:
      e4:	27bdffe8 	addiu	sp,sp,-24
      e8:	afbf0014 	sw	ra,20(sp)
      ec:	afa40018 	sw	a0,24(sp)
      f0:	afa5001c 	sw	a1,28(sp)
      f4:	908e0181 	lbu	t6,385(a0)
      f8:	00802825 	move	a1,a0
      fc:	24a6014c 	addiu	a2,a1,332
     100:	35cf0003 	ori	t7,t6,0x3
     104:	a08f0181 	sb	t7,385(a0)
     108:	8fa4001c 	lw	a0,28(sp)
     10c:	0c000000 	jal	0 <DemoEc_Destroy>
     110:	3c073f80 	lui	a3,0x3f80
     114:	8fbf0014 	lw	ra,20(sp)
     118:	27bd0018 	addiu	sp,sp,24
     11c:	03e00008 	jr	ra
     120:	00000000 	nop

00000124 <func_8096D5D4>:
     124:	27bdffe8 	addiu	sp,sp,-24
     128:	afbf0014 	sw	ra,20(sp)
     12c:	afa40018 	sw	a0,24(sp)
     130:	afa5001c 	sw	a1,28(sp)
     134:	8c8e016c 	lw	t6,364(a0)
     138:	8c99016c 	lw	t9,364(a0)
     13c:	908a0181 	lbu	t2,385(a0)
     140:	89d80000 	lwl	t8,0(t6)
     144:	99d80003 	lwr	t8,3(t6)
     148:	354b0003 	ori	t3,t2,0x3
     14c:	00802825 	move	a1,a0
     150:	a898018a 	swl	t8,394(a0)
     154:	b898018d 	swr	t8,397(a0)
     158:	95d80004 	lhu	t8,4(t6)
     15c:	24a6014c 	addiu	a2,a1,332
     160:	3c073f80 	lui	a3,0x3f80
     164:	a498018e 	sh	t8,398(a0)
     168:	8b290000 	lwl	t1,0(t9)
     16c:	9b290003 	lwr	t1,3(t9)
     170:	a8890184 	swl	t1,388(a0)
     174:	b8890187 	swr	t1,391(a0)
     178:	97290004 	lhu	t1,4(t9)
     17c:	a08b0181 	sb	t3,385(a0)
     180:	a4890188 	sh	t1,392(a0)
     184:	0c000000 	jal	0 <DemoEc_Destroy>
     188:	8fa4001c 	lw	a0,28(sp)
     18c:	8fbf0014 	lw	ra,20(sp)
     190:	27bd0018 	addiu	sp,sp,24
     194:	03e00008 	jr	ra
     198:	00000000 	nop

0000019c <func_8096D64C>:
     19c:	27bdffe8 	addiu	sp,sp,-24
     1a0:	afbf0014 	sw	ra,20(sp)
     1a4:	afa40018 	sw	a0,24(sp)
     1a8:	afa5001c 	sw	a1,28(sp)
     1ac:	908e0181 	lbu	t6,385(a0)
     1b0:	00802825 	move	a1,a0
     1b4:	24a6014c 	addiu	a2,a1,332
     1b8:	35cf0003 	ori	t7,t6,0x3
     1bc:	a08f0181 	sb	t7,385(a0)
     1c0:	8fa4001c 	lw	a0,28(sp)
     1c4:	0c000000 	jal	0 <DemoEc_Destroy>
     1c8:	3c073f80 	lui	a3,0x3f80
     1cc:	8fbf0014 	lw	ra,20(sp)
     1d0:	27bd0018 	addiu	sp,sp,24
     1d4:	03e00008 	jr	ra
     1d8:	00000000 	nop

000001dc <func_8096D68C>:
     1dc:	27bdffc8 	addiu	sp,sp,-56
     1e0:	afbf0014 	sw	ra,20(sp)
     1e4:	848e0192 	lh	t6,402(a0)
     1e8:	00803025 	move	a2,a0
     1ec:	24c30192 	addiu	v1,a2,402
     1f0:	15c00003 	bnez	t6,200 <func_8096D68C+0x24>
     1f4:	00001025 	move	v0,zero
     1f8:	10000005 	b	210 <func_8096D68C+0x34>
     1fc:	24830192 	addiu	v1,a0,402
     200:	846f0000 	lh	t7,0(v1)
     204:	25f8ffff 	addiu	t8,t7,-1
     208:	a4780000 	sh	t8,0(v1)
     20c:	84620000 	lh	v0,0(v1)
     210:	14400008 	bnez	v0,234 <func_8096D68C+0x58>
     214:	2404003c 	li	a0,60
     218:	2405003c 	li	a1,60
     21c:	afa3001c 	sw	v1,28(sp)
     220:	0c000000 	jal	0 <DemoEc_Destroy>
     224:	afa60038 	sw	a2,56(sp)
     228:	8fa3001c 	lw	v1,28(sp)
     22c:	8fa60038 	lw	a2,56(sp)
     230:	a4620000 	sh	v0,0(v1)
     234:	84790000 	lh	t9,0(v1)
     238:	24c20190 	addiu	v0,a2,400
     23c:	a4590000 	sh	t9,0(v0)
     240:	84480000 	lh	t0,0(v0)
     244:	29010003 	slti	at,t0,3
     248:	54200003 	bnezl	at,258 <func_8096D68C+0x7c>
     24c:	8fbf0014 	lw	ra,20(sp)
     250:	a4400000 	sh	zero,0(v0)
     254:	8fbf0014 	lw	ra,20(sp)
     258:	27bd0038 	addiu	sp,sp,56
     25c:	03e00008 	jr	ra
     260:	00000000 	nop

00000264 <func_8096D714>:
     264:	afa50004 	sw	a1,4(sp)
     268:	00052c00 	sll	a1,a1,0x10
     26c:	00052c03 	sra	a1,a1,0x10
     270:	03e00008 	jr	ra
     274:	a4850190 	sh	a1,400(a0)

00000278 <func_8096D728>:
     278:	00067900 	sll	t7,a2,0x4
     27c:	27bdffd8 	addiu	sp,sp,-40
     280:	000fc702 	srl	t8,t7,0x1c
     284:	0018c880 	sll	t9,t8,0x2
     288:	3c080000 	lui	t0,0x0
     28c:	01194021 	addu	t0,t0,t9
     290:	3c0100ff 	lui	at,0xff
     294:	8d080000 	lw	t0,0(t0)
     298:	afa40028 	sw	a0,40(sp)
     29c:	3421ffff 	ori	at,at,0xffff
     2a0:	afa5002c 	sw	a1,44(sp)
     2a4:	00c14824 	and	t1,a2,at
     2a8:	00a02025 	move	a0,a1
     2ac:	8fa50028 	lw	a1,40(sp)
     2b0:	afa60030 	sw	a2,48(sp)
     2b4:	afbf0024 	sw	ra,36(sp)
     2b8:	3c018000 	lui	at,0x8000
     2bc:	01093021 	addu	a2,t0,t1
     2c0:	00c13021 	addu	a2,a2,at
     2c4:	afa00010 	sw	zero,16(sp)
     2c8:	afa00014 	sw	zero,20(sp)
     2cc:	afa00018 	sw	zero,24(sp)
     2d0:	00003825 	move	a3,zero
     2d4:	0c000000 	jal	0 <DemoEc_Destroy>
     2d8:	24a5014c 	addiu	a1,a1,332
     2dc:	8fbf0024 	lw	ra,36(sp)
     2e0:	27bd0028 	addiu	sp,sp,40
     2e4:	03e00008 	jr	ra
     2e8:	00000000 	nop

000002ec <func_8096D79C>:
     2ec:	00057100 	sll	t6,a1,0x4
     2f0:	000e7f02 	srl	t7,t6,0x1c
     2f4:	000fc080 	sll	t8,t7,0x2
     2f8:	3c190000 	lui	t9,0x0
     2fc:	0338c821 	addu	t9,t9,t8
     300:	3c0100ff 	lui	at,0xff
     304:	8f390000 	lw	t9,0(t9)
     308:	3421ffff 	ori	at,at,0xffff
     30c:	27bdffc8 	addiu	sp,sp,-56
     310:	00a14024 	and	t0,a1,at
     314:	afa40038 	sw	a0,56(sp)
     318:	3c018000 	lui	at,0x8000
     31c:	03282021 	addu	a0,t9,t0
     320:	afbf0024 	sw	ra,36(sp)
     324:	00812021 	addu	a0,a0,at
     328:	afa60040 	sw	a2,64(sp)
     32c:	afa70044 	sw	a3,68(sp)
     330:	0c000000 	jal	0 <DemoEc_Destroy>
     334:	afa4002c 	sw	a0,44(sp)
     338:	8fa90048 	lw	t1,72(sp)
     33c:	8fa40038 	lw	a0,56(sp)
     340:	8fa5002c 	lw	a1,44(sp)
     344:	15200007 	bnez	t1,364 <func_8096D79C+0x78>
     348:	2484014c 	addiu	a0,a0,332
     34c:	44822000 	mtc1	v0,$f4
     350:	3c013f80 	lui	at,0x3f80
     354:	44800000 	mtc1	zero,$f0
     358:	44816000 	mtc1	at,$f12
     35c:	10000006 	b	378 <func_8096D79C+0x8c>
     360:	468020a0 	cvt.s.w	$f2,$f4
     364:	44823000 	mtc1	v0,$f6
     368:	3c01bf80 	lui	at,0xbf80
     36c:	44801000 	mtc1	zero,$f2
     370:	44816000 	mtc1	at,$f12
     374:	46803020 	cvt.s.w	$f0,$f6
     378:	93aa0043 	lbu	t2,67(sp)
     37c:	c7a80044 	lwc1	$f8,68(sp)
     380:	44066000 	mfc1	a2,$f12
     384:	44070000 	mfc1	a3,$f0
     388:	e7a20010 	swc1	$f2,16(sp)
     38c:	afaa0014 	sw	t2,20(sp)
     390:	0c000000 	jal	0 <DemoEc_Destroy>
     394:	e7a80018 	swc1	$f8,24(sp)
     398:	8fbf0024 	lw	ra,36(sp)
     39c:	27bd0038 	addiu	sp,sp,56
     3a0:	03e00008 	jr	ra
     3a4:	00000000 	nop

000003a8 <func_8096D858>:
     3a8:	27bdffe8 	addiu	sp,sp,-24
     3ac:	afbf0014 	sw	ra,20(sp)
     3b0:	00a03025 	move	a2,a1
     3b4:	afa6001c 	sw	a2,28(sp)
     3b8:	0c000000 	jal	0 <DemoEc_Destroy>
     3bc:	24050010 	li	a1,16
     3c0:	8fa6001c 	lw	a2,28(sp)
     3c4:	3c0efb00 	lui	t6,0xfb00
     3c8:	ac4e0000 	sw	t6,0(v0)
     3cc:	90c80000 	lbu	t0,0(a2)
     3d0:	90d80003 	lbu	t8,3(a2)
     3d4:	90cc0001 	lbu	t4,1(a2)
     3d8:	90d90002 	lbu	t9,2(a2)
     3dc:	00084e00 	sll	t1,t0,0x18
     3e0:	03095025 	or	t2,t8,t1
     3e4:	000c6c00 	sll	t5,t4,0x10
     3e8:	014d7025 	or	t6,t2,t5
     3ec:	00194200 	sll	t0,t9,0x8
     3f0:	01c8c025 	or	t8,t6,t0
     3f4:	3c09df00 	lui	t1,0xdf00
     3f8:	ac580004 	sw	t8,4(v0)
     3fc:	ac490008 	sw	t1,8(v0)
     400:	ac40000c 	sw	zero,12(v0)
     404:	8fbf0014 	lw	ra,20(sp)
     408:	27bd0018 	addiu	sp,sp,24
     40c:	03e00008 	jr	ra
     410:	00000000 	nop

00000414 <func_8096D8C4>:
     414:	27bdff90 	addiu	sp,sp,-112
     418:	afbf002c 	sw	ra,44(sp)
     41c:	afb00028 	sw	s0,40(sp)
     420:	afa40070 	sw	a0,112(sp)
     424:	afa50074 	sw	a1,116(sp)
     428:	afa60078 	sw	a2,120(sp)
     42c:	afa7007c 	sw	a3,124(sp)
     430:	8cb00000 	lw	s0,0(a1)
     434:	3c060000 	lui	a2,0x0
     438:	24c60000 	addiu	a2,a2,0
     43c:	24070235 	li	a3,565
     440:	27a40050 	addiu	a0,sp,80
     444:	0c000000 	jal	0 <DemoEc_Destroy>
     448:	02002825 	move	a1,s0
     44c:	0c000000 	jal	0 <DemoEc_Destroy>
     450:	02002025 	move	a0,s0
     454:	8fa60078 	lw	a2,120(sp)
     458:	3c18db06 	lui	t8,0xdb06
     45c:	37180020 	ori	t8,t8,0x20
     460:	10c0001c 	beqz	a2,4d4 <func_8096D8C4+0xc0>
     464:	3c078000 	lui	a3,0x8000
     468:	8e0202c0 	lw	v0,704(s0)
     46c:	0006c900 	sll	t9,a2,0x4
     470:	00194702 	srl	t0,t9,0x1c
     474:	3c0a0000 	lui	t2,0x0
     478:	244f0008 	addiu	t7,v0,8
     47c:	ae0f02c0 	sw	t7,704(s0)
     480:	254a0000 	addiu	t2,t2,0
     484:	00084880 	sll	t1,t0,0x2
     488:	012a2021 	addu	a0,t1,t2
     48c:	ac580000 	sw	t8,0(v0)
     490:	8c8b0000 	lw	t3,0(a0)
     494:	3c0100ff 	lui	at,0xff
     498:	3421ffff 	ori	at,at,0xffff
     49c:	00c12824 	and	a1,a2,at
     4a0:	01656021 	addu	t4,t3,a1
     4a4:	01876821 	addu	t5,t4,a3
     4a8:	ac4d0004 	sw	t5,4(v0)
     4ac:	8e0202c0 	lw	v0,704(s0)
     4b0:	3c0fdb06 	lui	t7,0xdb06
     4b4:	35ef0024 	ori	t7,t7,0x24
     4b8:	244e0008 	addiu	t6,v0,8
     4bc:	ae0e02c0 	sw	t6,704(s0)
     4c0:	ac4f0000 	sw	t7,0(v0)
     4c4:	8c980000 	lw	t8,0(a0)
     4c8:	0305c821 	addu	t9,t8,a1
     4cc:	03274021 	addu	t0,t9,a3
     4d0:	ac480004 	sw	t0,4(v0)
     4d4:	8fa4007c 	lw	a0,124(sp)
     4d8:	3c0adb06 	lui	t2,0xdb06
     4dc:	3c078000 	lui	a3,0x8000
     4e0:	10800011 	beqz	a0,528 <func_8096D8C4+0x114>
     4e4:	354a0024 	ori	t2,t2,0x24
     4e8:	8e0202c0 	lw	v0,704(s0)
     4ec:	00045900 	sll	t3,a0,0x4
     4f0:	000b6702 	srl	t4,t3,0x1c
     4f4:	24490008 	addiu	t1,v0,8
     4f8:	ae0902c0 	sw	t1,704(s0)
     4fc:	000c6880 	sll	t5,t4,0x2
     500:	3c0e0000 	lui	t6,0x0
     504:	01cd7021 	addu	t6,t6,t5
     508:	ac4a0000 	sw	t2,0(v0)
     50c:	8dce0000 	lw	t6,0(t6)
     510:	3c0100ff 	lui	at,0xff
     514:	3421ffff 	ori	at,at,0xffff
     518:	00817824 	and	t7,a0,at
     51c:	01cfc021 	addu	t8,t6,t7
     520:	0307c821 	addu	t9,t8,a3
     524:	ac590004 	sw	t9,4(v0)
     528:	8e0202c0 	lw	v0,704(s0)
     52c:	3c09fb00 	lui	t1,0xfb00
     530:	240a00ff 	li	t2,255
     534:	24480008 	addiu	t0,v0,8
     538:	ae0802c0 	sw	t0,704(s0)
     53c:	ac4a0004 	sw	t2,4(v0)
     540:	ac490000 	sw	t1,0(v0)
     544:	8e0202c0 	lw	v0,704(s0)
     548:	3c0cdb06 	lui	t4,0xdb06
     54c:	3c0d0000 	lui	t5,0x0
     550:	244b0008 	addiu	t3,v0,8
     554:	ae0b02c0 	sw	t3,704(s0)
     558:	25ad0010 	addiu	t5,t5,16
     55c:	358c0030 	ori	t4,t4,0x30
     560:	ac4c0000 	sw	t4,0(v0)
     564:	ac4d0004 	sw	t5,4(v0)
     568:	8fa30070 	lw	v1,112(sp)
     56c:	8faf0084 	lw	t7,132(sp)
     570:	8fae0080 	lw	t6,128(sp)
     574:	2462014c 	addiu	v0,v1,332
     578:	8c450004 	lw	a1,4(v0)
     57c:	8c460020 	lw	a2,32(v0)
     580:	90470002 	lbu	a3,2(v0)
     584:	afa30018 	sw	v1,24(sp)
     588:	afaf0014 	sw	t7,20(sp)
     58c:	afae0010 	sw	t6,16(sp)
     590:	8e1802c0 	lw	t8,704(s0)
     594:	8fa40074 	lw	a0,116(sp)
     598:	0c000000 	jal	0 <DemoEc_Destroy>
     59c:	afb8001c 	sw	t8,28(sp)
     5a0:	3c060000 	lui	a2,0x0
     5a4:	ae0202c0 	sw	v0,704(s0)
     5a8:	24c60000 	addiu	a2,a2,0
     5ac:	27a40050 	addiu	a0,sp,80
     5b0:	02002825 	move	a1,s0
     5b4:	0c000000 	jal	0 <DemoEc_Destroy>
     5b8:	24070253 	li	a3,595
     5bc:	8fbf002c 	lw	ra,44(sp)
     5c0:	8fb00028 	lw	s0,40(sp)
     5c4:	27bd0070 	addiu	sp,sp,112
     5c8:	03e00008 	jr	ra
     5cc:	00000000 	nop

000005d0 <func_8096DA80>:
     5d0:	27bdff90 	addiu	sp,sp,-112
     5d4:	afbf002c 	sw	ra,44(sp)
     5d8:	afb00028 	sw	s0,40(sp)
     5dc:	afa40070 	sw	a0,112(sp)
     5e0:	afa50074 	sw	a1,116(sp)
     5e4:	afa60078 	sw	a2,120(sp)
     5e8:	afa7007c 	sw	a3,124(sp)
     5ec:	8cb00000 	lw	s0,0(a1)
     5f0:	3c060000 	lui	a2,0x0
     5f4:	24c60000 	addiu	a2,a2,0
     5f8:	24070261 	li	a3,609
     5fc:	27a40050 	addiu	a0,sp,80
     600:	0c000000 	jal	0 <DemoEc_Destroy>
     604:	02002825 	move	a1,s0
     608:	0c000000 	jal	0 <DemoEc_Destroy>
     60c:	02002025 	move	a0,s0
     610:	8fa40078 	lw	a0,120(sp)
     614:	3c18db06 	lui	t8,0xdb06
     618:	37180028 	ori	t8,t8,0x28
     61c:	10800011 	beqz	a0,664 <func_8096DA80+0x94>
     620:	0004c900 	sll	t9,a0,0x4
     624:	8e0202c0 	lw	v0,704(s0)
     628:	00194702 	srl	t0,t9,0x1c
     62c:	00084880 	sll	t1,t0,0x2
     630:	244f0008 	addiu	t7,v0,8
     634:	ae0f02c0 	sw	t7,704(s0)
     638:	3c0a0000 	lui	t2,0x0
     63c:	01495021 	addu	t2,t2,t1
     640:	3c0100ff 	lui	at,0xff
     644:	ac580000 	sw	t8,0(v0)
     648:	8d4a0000 	lw	t2,0(t2)
     64c:	3421ffff 	ori	at,at,0xffff
     650:	00815824 	and	t3,a0,at
     654:	3c018000 	lui	at,0x8000
     658:	014b6021 	addu	t4,t2,t3
     65c:	01816821 	addu	t5,t4,at
     660:	ac4d0004 	sw	t5,4(v0)
     664:	8fa4007c 	lw	a0,124(sp)
     668:	3c0fdb06 	lui	t7,0xdb06
     66c:	35ef002c 	ori	t7,t7,0x2c
     670:	10800011 	beqz	a0,6b8 <func_8096DA80+0xe8>
     674:	0004c100 	sll	t8,a0,0x4
     678:	8e0202c0 	lw	v0,704(s0)
     67c:	0018cf02 	srl	t9,t8,0x1c
     680:	00194080 	sll	t0,t9,0x2
     684:	244e0008 	addiu	t6,v0,8
     688:	ae0e02c0 	sw	t6,704(s0)
     68c:	3c090000 	lui	t1,0x0
     690:	01284821 	addu	t1,t1,t0
     694:	3c0100ff 	lui	at,0xff
     698:	ac4f0000 	sw	t7,0(v0)
     69c:	8d290000 	lw	t1,0(t1)
     6a0:	3421ffff 	ori	at,at,0xffff
     6a4:	00815024 	and	t2,a0,at
     6a8:	3c018000 	lui	at,0x8000
     6ac:	012a5821 	addu	t3,t1,t2
     6b0:	01616021 	addu	t4,t3,at
     6b4:	ac4c0004 	sw	t4,4(v0)
     6b8:	8fa50080 	lw	a1,128(sp)
     6bc:	3c0edb06 	lui	t6,0xdb06
     6c0:	50a0001e 	beqzl	a1,73c <func_8096DA80+0x16c>
     6c4:	8fae0084 	lw	t6,132(sp)
     6c8:	8e0202c0 	lw	v0,704(s0)
     6cc:	35ce0020 	ori	t6,t6,0x20
     6d0:	02002025 	move	a0,s0
     6d4:	244d0008 	addiu	t5,v0,8
     6d8:	ae0d02c0 	sw	t5,704(s0)
     6dc:	ac4e0000 	sw	t6,0(v0)
     6e0:	0c000000 	jal	0 <DemoEc_Destroy>
     6e4:	afa20044 	sw	v0,68(sp)
     6e8:	afa20034 	sw	v0,52(sp)
     6ec:	02002025 	move	a0,s0
     6f0:	0c000000 	jal	0 <DemoEc_Destroy>
     6f4:	8fa50080 	lw	a1,128(sp)
     6f8:	8fb80034 	lw	t8,52(sp)
     6fc:	3c0a0000 	lui	t2,0x0
     700:	3c0100ff 	lui	at,0xff
     704:	0018c900 	sll	t9,t8,0x4
     708:	00194702 	srl	t0,t9,0x1c
     70c:	00084880 	sll	t1,t0,0x2
     710:	01495021 	addu	t2,t2,t1
     714:	8d4a0000 	lw	t2,0(t2)
     718:	3421ffff 	ori	at,at,0xffff
     71c:	00417824 	and	t7,v0,at
     720:	8fad0044 	lw	t5,68(sp)
     724:	3c018000 	lui	at,0x8000
     728:	01ea5821 	addu	t3,t7,t2
     72c:	01616021 	addu	t4,t3,at
     730:	adac0004 	sw	t4,4(t5)
     734:	8fa50080 	lw	a1,128(sp)
     738:	8fae0084 	lw	t6,132(sp)
     73c:	3c19db06 	lui	t9,0xdb06
     740:	51c0001d 	beqzl	t6,7b8 <func_8096DA80+0x1e8>
     744:	8e0202c0 	lw	v0,704(s0)
     748:	8e0202c0 	lw	v0,704(s0)
     74c:	37390024 	ori	t9,t9,0x24
     750:	02002025 	move	a0,s0
     754:	24580008 	addiu	t8,v0,8
     758:	ae1802c0 	sw	t8,704(s0)
     75c:	ac590000 	sw	t9,0(v0)
     760:	0c000000 	jal	0 <DemoEc_Destroy>
     764:	afa20040 	sw	v0,64(sp)
     768:	afa20034 	sw	v0,52(sp)
     76c:	02002025 	move	a0,s0
     770:	0c000000 	jal	0 <DemoEc_Destroy>
     774:	8fa50080 	lw	a1,128(sp)
     778:	8fa90034 	lw	t1,52(sp)
     77c:	3c0c0000 	lui	t4,0x0
     780:	3c0100ff 	lui	at,0xff
     784:	00097900 	sll	t7,t1,0x4
     788:	000f5702 	srl	t2,t7,0x1c
     78c:	000a5880 	sll	t3,t2,0x2
     790:	018b6021 	addu	t4,t4,t3
     794:	8d8c0000 	lw	t4,0(t4)
     798:	3421ffff 	ori	at,at,0xffff
     79c:	00414024 	and	t0,v0,at
     7a0:	8fb80040 	lw	t8,64(sp)
     7a4:	3c018000 	lui	at,0x8000
     7a8:	010c6821 	addu	t5,t0,t4
     7ac:	01a17021 	addu	t6,t5,at
     7b0:	af0e0004 	sw	t6,4(t8)
     7b4:	8e0202c0 	lw	v0,704(s0)
     7b8:	3c09fb00 	lui	t1,0xfb00
     7bc:	240f00ff 	li	t7,255
     7c0:	24590008 	addiu	t9,v0,8
     7c4:	ae1902c0 	sw	t9,704(s0)
     7c8:	ac4f0004 	sw	t7,4(v0)
     7cc:	ac490000 	sw	t1,0(v0)
     7d0:	8e0202c0 	lw	v0,704(s0)
     7d4:	3c0bdb06 	lui	t3,0xdb06
     7d8:	3c080000 	lui	t0,0x0
     7dc:	244a0008 	addiu	t2,v0,8
     7e0:	ae0a02c0 	sw	t2,704(s0)
     7e4:	25080010 	addiu	t0,t0,16
     7e8:	356b0030 	ori	t3,t3,0x30
     7ec:	ac4b0000 	sw	t3,0(v0)
     7f0:	ac480004 	sw	t0,4(v0)
     7f4:	8fa30070 	lw	v1,112(sp)
     7f8:	8fad008c 	lw	t5,140(sp)
     7fc:	8fac0088 	lw	t4,136(sp)
     800:	2462014c 	addiu	v0,v1,332
     804:	8c450004 	lw	a1,4(v0)
     808:	8c460020 	lw	a2,32(v0)
     80c:	90470002 	lbu	a3,2(v0)
     810:	afa30018 	sw	v1,24(sp)
     814:	afad0014 	sw	t5,20(sp)
     818:	afac0010 	sw	t4,16(sp)
     81c:	8e0e02c0 	lw	t6,704(s0)
     820:	8fa40074 	lw	a0,116(sp)
     824:	0c000000 	jal	0 <DemoEc_Destroy>
     828:	afae001c 	sw	t6,28(sp)
     82c:	3c060000 	lui	a2,0x0
     830:	ae0202c0 	sw	v0,704(s0)
     834:	24c60000 	addiu	a2,a2,0
     838:	27a40050 	addiu	a0,sp,80
     83c:	02002825 	move	a1,s0
     840:	0c000000 	jal	0 <DemoEc_Destroy>
     844:	24070286 	li	a3,646
     848:	8fbf002c 	lw	ra,44(sp)
     84c:	8fb00028 	lw	s0,40(sp)
     850:	27bd0070 	addiu	sp,sp,112
     854:	03e00008 	jr	ra
     858:	00000000 	nop

0000085c <func_8096DD0C>:
     85c:	27bdffb8 	addiu	sp,sp,-72
     860:	afbf0014 	sw	ra,20(sp)
     864:	afa40048 	sw	a0,72(sp)
     868:	afa5004c 	sw	a1,76(sp)
     86c:	8c8f01a0 	lw	t7,416(a0)
     870:	3c060000 	lui	a2,0x0
     874:	24c60000 	addiu	a2,a2,0
     878:	afaf003c 	sw	t7,60(sp)
     87c:	8ca50000 	lw	a1,0(a1)
     880:	27a40024 	addiu	a0,sp,36
     884:	24070296 	li	a3,662
     888:	0c000000 	jal	0 <DemoEc_Destroy>
     88c:	afa50038 	sw	a1,56(sp)
     890:	8fa50038 	lw	a1,56(sp)
     894:	8fa6004c 	lw	a2,76(sp)
     898:	3c08db06 	lui	t0,0xdb06
     89c:	8ca302c0 	lw	v1,704(a1)
     8a0:	35080018 	ori	t0,t0,0x18
     8a4:	3c010001 	lui	at,0x1
     8a8:	24790008 	addiu	t9,v1,8
     8ac:	acb902c0 	sw	t9,704(a1)
     8b0:	ac680000 	sw	t0,0(v1)
     8b4:	8fa9003c 	lw	t1,60(sp)
     8b8:	2407029e 	li	a3,670
     8bc:	00095100 	sll	t2,t1,0x4
     8c0:	01495021 	addu	t2,t2,t1
     8c4:	000a5080 	sll	t2,t2,0x2
     8c8:	00ca2021 	addu	a0,a2,t2
     8cc:	00812021 	addu	a0,a0,at
     8d0:	8c8b17b4 	lw	t3,6068(a0)
     8d4:	3c018000 	lui	at,0x8000
     8d8:	3c060000 	lui	a2,0x0
     8dc:	ac6b0004 	sw	t3,4(v1)
     8e0:	8c8c17b4 	lw	t4,6068(a0)
     8e4:	27a40024 	addiu	a0,sp,36
     8e8:	24c60000 	addiu	a2,a2,0
     8ec:	01816821 	addu	t5,t4,at
     8f0:	3c010000 	lui	at,0x0
     8f4:	0c000000 	jal	0 <DemoEc_Destroy>
     8f8:	ac2d0018 	sw	t5,24(at)
     8fc:	8fbf0014 	lw	ra,20(sp)
     900:	27bd0048 	addiu	sp,sp,72
     904:	03e00008 	jr	ra
     908:	00000000 	nop

0000090c <func_8096DDBC>:
     90c:	8c8201a4 	lw	v0,420(a0)
     910:	3c180001 	lui	t8,0x1
     914:	3c018000 	lui	at,0x8000
     918:	00027100 	sll	t6,v0,0x4
     91c:	01c27021 	addu	t6,t6,v0
     920:	000e7080 	sll	t6,t6,0x2
     924:	00ae7821 	addu	t7,a1,t6
     928:	030fc021 	addu	t8,t8,t7
     92c:	8f1817b4 	lw	t8,6068(t8)
     930:	0301c821 	addu	t9,t8,at
     934:	3c010000 	lui	at,0x0
     938:	03e00008 	jr	ra
     93c:	ac390018 	sw	t9,24(at)

00000940 <func_8096DDF0>:
     940:	908e1d6c 	lbu	t6,7532(a0)
     944:	00057880 	sll	t7,a1,0x2
     948:	008fc021 	addu	t8,a0,t7
     94c:	11c00003 	beqz	t6,95c <func_8096DDF0+0x1c>
     950:	00001025 	move	v0,zero
     954:	03e00008 	jr	ra
     958:	8f021d8c 	lw	v0,7564(t8)
     95c:	03e00008 	jr	ra
     960:	00000000 	nop

00000964 <func_8096DE14>:
     964:	27bdffe8 	addiu	sp,sp,-24
     968:	00803825 	move	a3,a0
     96c:	afbf0014 	sw	ra,20(sp)
     970:	afa5001c 	sw	a1,28(sp)
     974:	00a02025 	move	a0,a1
     978:	00c02825 	move	a1,a2
     97c:	0c000000 	jal	0 <DemoEc_Destroy>
     980:	afa70018 	sw	a3,24(sp)
     984:	10400013 	beqz	v0,9d4 <func_8096DE14+0x70>
     988:	8fa70018 	lw	a3,24(sp)
     98c:	8c4e000c 	lw	t6,12(v0)
     990:	448e2000 	mtc1	t6,$f4
     994:	00000000 	nop
     998:	468021a0 	cvt.s.w	$f6,$f4
     99c:	e4e60024 	swc1	$f6,36(a3)
     9a0:	8c4f0010 	lw	t7,16(v0)
     9a4:	448f4000 	mtc1	t7,$f8
     9a8:	00000000 	nop
     9ac:	468042a0 	cvt.s.w	$f10,$f8
     9b0:	e4ea0028 	swc1	$f10,40(a3)
     9b4:	8c580014 	lw	t8,20(v0)
     9b8:	44988000 	mtc1	t8,$f16
     9bc:	00000000 	nop
     9c0:	468084a0 	cvt.s.w	$f18,$f16
     9c4:	e4f2002c 	swc1	$f18,44(a3)
     9c8:	84430008 	lh	v1,8(v0)
     9cc:	a4e300b6 	sh	v1,182(a3)
     9d0:	a4e30032 	sh	v1,50(a3)
     9d4:	8fbf0014 	lw	ra,20(sp)
     9d8:	27bd0018 	addiu	sp,sp,24
     9dc:	03e00008 	jr	ra
     9e0:	00000000 	nop

000009e4 <func_8096DE94>:
     9e4:	27bdffd8 	addiu	sp,sp,-40
     9e8:	afbf0024 	sw	ra,36(sp)
     9ec:	afb00020 	sw	s0,32(sp)
     9f0:	00808025 	move	s0,a0
     9f4:	0c000000 	jal	0 <DemoEc_Destroy>
     9f8:	afa5002c 	sw	a1,44(sp)
     9fc:	3c060601 	lui	a2,0x601
     a00:	24c63b88 	addiu	a2,a2,15240
     a04:	02002025 	move	a0,s0
     a08:	0c000000 	jal	0 <DemoEc_Destroy>
     a0c:	8fa5002c 	lw	a1,44(sp)
     a10:	02002025 	move	a0,s0
     a14:	0c000000 	jal	0 <DemoEc_Destroy>
     a18:	8fa5002c 	lw	a1,44(sp)
     a1c:	3c050600 	lui	a1,0x600
     a20:	24a548f4 	addiu	a1,a1,18676
     a24:	02002025 	move	a0,s0
     a28:	00003025 	move	a2,zero
     a2c:	24070000 	li	a3,0
     a30:	0c000000 	jal	0 <DemoEc_Destroy>
     a34:	afa00010 	sw	zero,16(sp)
     a38:	02002025 	move	a0,s0
     a3c:	0c000000 	jal	0 <DemoEc_Destroy>
     a40:	8fa5002c 	lw	a1,44(sp)
     a44:	3c060000 	lui	a2,0x0
     a48:	24c60000 	addiu	a2,a2,0
     a4c:	260400b4 	addiu	a0,s0,180
     a50:	24050000 	li	a1,0
     a54:	0c000000 	jal	0 <DemoEc_Destroy>
     a58:	3c0741f0 	lui	a3,0x41f0
     a5c:	24020001 	li	v0,1
     a60:	ae020194 	sw	v0,404(s0)
     a64:	ae020198 	sw	v0,408(s0)
     a68:	8fbf0024 	lw	ra,36(sp)
     a6c:	8fb00020 	lw	s0,32(sp)
     a70:	27bd0028 	addiu	sp,sp,40
     a74:	03e00008 	jr	ra
     a78:	00000000 	nop

00000a7c <func_8096DF2C>:
     a7c:	27bdffe8 	addiu	sp,sp,-24
     a80:	afbf0014 	sw	ra,20(sp)
     a84:	afa40018 	sw	a0,24(sp)
     a88:	0c000000 	jal	0 <DemoEc_Destroy>
     a8c:	afa5001c 	sw	a1,28(sp)
     a90:	8fa40018 	lw	a0,24(sp)
     a94:	0c000000 	jal	0 <DemoEc_Destroy>
     a98:	8fa5001c 	lw	a1,28(sp)
     a9c:	8fa40018 	lw	a0,24(sp)
     aa0:	0c000000 	jal	0 <DemoEc_Destroy>
     aa4:	8fa5001c 	lw	a1,28(sp)
     aa8:	8fbf0014 	lw	ra,20(sp)
     aac:	27bd0018 	addiu	sp,sp,24
     ab0:	03e00008 	jr	ra
     ab4:	00000000 	nop

00000ab8 <func_8096DF68>:
     ab8:	27bdffe0 	addiu	sp,sp,-32
     abc:	afbf001c 	sw	ra,28(sp)
     ac0:	3c060600 	lui	a2,0x600
     ac4:	3c070600 	lui	a3,0x600
     ac8:	24e74350 	addiu	a3,a3,17232
     acc:	24c64390 	addiu	a2,a2,17296
     ad0:	afa00010 	sw	zero,16(sp)
     ad4:	0c000000 	jal	0 <DemoEc_Destroy>
     ad8:	afa00014 	sw	zero,20(sp)
     adc:	8fbf001c 	lw	ra,28(sp)
     ae0:	27bd0020 	addiu	sp,sp,32
     ae4:	03e00008 	jr	ra
     ae8:	00000000 	nop

00000aec <func_8096DF9C>:
     aec:	27bdffd8 	addiu	sp,sp,-40
     af0:	afbf0024 	sw	ra,36(sp)
     af4:	afb00020 	sw	s0,32(sp)
     af8:	00808025 	move	s0,a0
     afc:	0c000000 	jal	0 <DemoEc_Destroy>
     b00:	afa5002c 	sw	a1,44(sp)
     b04:	3c060601 	lui	a2,0x601
     b08:	24c6b7b8 	addiu	a2,a2,-18504
     b0c:	02002025 	move	a0,s0
     b10:	0c000000 	jal	0 <DemoEc_Destroy>
     b14:	8fa5002c 	lw	a1,44(sp)
     b18:	02002025 	move	a0,s0
     b1c:	0c000000 	jal	0 <DemoEc_Destroy>
     b20:	8fa5002c 	lw	a1,44(sp)
     b24:	3c050601 	lui	a1,0x601
     b28:	24a5bd38 	addiu	a1,a1,-17096
     b2c:	02002025 	move	a0,s0
     b30:	00003025 	move	a2,zero
     b34:	24070000 	li	a3,0
     b38:	0c000000 	jal	0 <DemoEc_Destroy>
     b3c:	afa00010 	sw	zero,16(sp)
     b40:	02002025 	move	a0,s0
     b44:	0c000000 	jal	0 <DemoEc_Destroy>
     b48:	8fa5002c 	lw	a1,44(sp)
     b4c:	3c060000 	lui	a2,0x0
     b50:	24c60000 	addiu	a2,a2,0
     b54:	260400b4 	addiu	a0,s0,180
     b58:	24050000 	li	a1,0
     b5c:	0c000000 	jal	0 <DemoEc_Destroy>
     b60:	3c0741f0 	lui	a3,0x41f0
     b64:	24020002 	li	v0,2
     b68:	ae020194 	sw	v0,404(s0)
     b6c:	ae020198 	sw	v0,408(s0)
     b70:	8fbf0024 	lw	ra,36(sp)
     b74:	8fb00020 	lw	s0,32(sp)
     b78:	27bd0028 	addiu	sp,sp,40
     b7c:	03e00008 	jr	ra
     b80:	00000000 	nop

00000b84 <func_8096E034>:
     b84:	27bdffe8 	addiu	sp,sp,-24
     b88:	afbf0014 	sw	ra,20(sp)
     b8c:	afa40018 	sw	a0,24(sp)
     b90:	0c000000 	jal	0 <DemoEc_Destroy>
     b94:	afa5001c 	sw	a1,28(sp)
     b98:	8fa40018 	lw	a0,24(sp)
     b9c:	0c000000 	jal	0 <DemoEc_Destroy>
     ba0:	8fa5001c 	lw	a1,28(sp)
     ba4:	8fa40018 	lw	a0,24(sp)
     ba8:	0c000000 	jal	0 <DemoEc_Destroy>
     bac:	8fa5001c 	lw	a1,28(sp)
     bb0:	8fbf0014 	lw	ra,20(sp)
     bb4:	27bd0018 	addiu	sp,sp,24
     bb8:	03e00008 	jr	ra
     bbc:	00000000 	nop

00000bc0 <func_8096E070>:
     bc0:	27bdffe0 	addiu	sp,sp,-32
     bc4:	afbf001c 	sw	ra,28(sp)
     bc8:	3c060600 	lui	a2,0x600
     bcc:	3c070600 	lui	a3,0x600
     bd0:	24e77ac0 	addiu	a3,a3,31424
     bd4:	24c676c0 	addiu	a2,a2,30400
     bd8:	afa00010 	sw	zero,16(sp)
     bdc:	0c000000 	jal	0 <DemoEc_Destroy>
     be0:	afa00014 	sw	zero,20(sp)
     be4:	8fbf001c 	lw	ra,28(sp)
     be8:	27bd0020 	addiu	sp,sp,32
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <func_8096E0A4>:
     bf4:	27bdffd8 	addiu	sp,sp,-40
     bf8:	afbf0024 	sw	ra,36(sp)
     bfc:	afb00020 	sw	s0,32(sp)
     c00:	00808025 	move	s0,a0
     c04:	0c000000 	jal	0 <DemoEc_Destroy>
     c08:	afa5002c 	sw	a1,44(sp)
     c0c:	3c060600 	lui	a2,0x600
     c10:	24c66c90 	addiu	a2,a2,27792
     c14:	02002025 	move	a0,s0
     c18:	0c000000 	jal	0 <DemoEc_Destroy>
     c1c:	8fa5002c 	lw	a1,44(sp)
     c20:	02002025 	move	a0,s0
     c24:	0c000000 	jal	0 <DemoEc_Destroy>
     c28:	8fa5002c 	lw	a1,44(sp)
     c2c:	3c050600 	lui	a1,0x600
     c30:	24a5196c 	addiu	a1,a1,6508
     c34:	02002025 	move	a0,s0
     c38:	00003025 	move	a2,zero
     c3c:	24070000 	li	a3,0
     c40:	0c000000 	jal	0 <DemoEc_Destroy>
     c44:	afa00010 	sw	zero,16(sp)
     c48:	02002025 	move	a0,s0
     c4c:	0c000000 	jal	0 <DemoEc_Destroy>
     c50:	8fa5002c 	lw	a1,44(sp)
     c54:	3c060000 	lui	a2,0x0
     c58:	24c60000 	addiu	a2,a2,0
     c5c:	260400b4 	addiu	a0,s0,180
     c60:	24050000 	li	a1,0
     c64:	0c000000 	jal	0 <DemoEc_Destroy>
     c68:	3c0741f0 	lui	a3,0x41f0
     c6c:	24020003 	li	v0,3
     c70:	ae020194 	sw	v0,404(s0)
     c74:	ae020198 	sw	v0,408(s0)
     c78:	8fbf0024 	lw	ra,36(sp)
     c7c:	8fb00020 	lw	s0,32(sp)
     c80:	27bd0028 	addiu	sp,sp,40
     c84:	03e00008 	jr	ra
     c88:	00000000 	nop

00000c8c <func_8096E13C>:
     c8c:	27bdffe8 	addiu	sp,sp,-24
     c90:	afbf0014 	sw	ra,20(sp)
     c94:	afa40018 	sw	a0,24(sp)
     c98:	0c000000 	jal	0 <DemoEc_Destroy>
     c9c:	afa5001c 	sw	a1,28(sp)
     ca0:	8fa40018 	lw	a0,24(sp)
     ca4:	0c000000 	jal	0 <DemoEc_Destroy>
     ca8:	8fa5001c 	lw	a1,28(sp)
     cac:	8fa40018 	lw	a0,24(sp)
     cb0:	0c000000 	jal	0 <DemoEc_Destroy>
     cb4:	8fa5001c 	lw	a1,28(sp)
     cb8:	8fbf0014 	lw	ra,20(sp)
     cbc:	27bd0018 	addiu	sp,sp,24
     cc0:	03e00008 	jr	ra
     cc4:	00000000 	nop

00000cc8 <func_8096E178>:
     cc8:	27bdffe0 	addiu	sp,sp,-32
     ccc:	afbf001c 	sw	ra,28(sp)
     cd0:	3c060600 	lui	a2,0x600
     cd4:	3c070600 	lui	a3,0x600
     cd8:	24e76920 	addiu	a3,a3,26912
     cdc:	24c65f20 	addiu	a2,a2,24352
     ce0:	afa00010 	sw	zero,16(sp)
     ce4:	0c000000 	jal	0 <DemoEc_Destroy>
     ce8:	afa00014 	sw	zero,20(sp)
     cec:	8fbf001c 	lw	ra,28(sp)
     cf0:	27bd0020 	addiu	sp,sp,32
     cf4:	03e00008 	jr	ra
     cf8:	00000000 	nop

00000cfc <func_8096E1AC>:
     cfc:	27bdffd8 	addiu	sp,sp,-40
     d00:	afbf0024 	sw	ra,36(sp)
     d04:	afb00020 	sw	s0,32(sp)
     d08:	00808025 	move	s0,a0
     d0c:	0c000000 	jal	0 <DemoEc_Destroy>
     d10:	afa5002c 	sw	a1,44(sp)
     d14:	3c060600 	lui	a2,0x600
     d18:	24c600f0 	addiu	a2,a2,240
     d1c:	02002025 	move	a0,s0
     d20:	0c000000 	jal	0 <DemoEc_Destroy>
     d24:	8fa5002c 	lw	a1,44(sp)
     d28:	02002025 	move	a0,s0
     d2c:	0c000000 	jal	0 <DemoEc_Destroy>
     d30:	8fa5002c 	lw	a1,44(sp)
     d34:	3c050600 	lui	a1,0x600
     d38:	24a55670 	addiu	a1,a1,22128
     d3c:	02002025 	move	a0,s0
     d40:	00003025 	move	a2,zero
     d44:	24070000 	li	a3,0
     d48:	0c000000 	jal	0 <DemoEc_Destroy>
     d4c:	afa00010 	sw	zero,16(sp)
     d50:	02002025 	move	a0,s0
     d54:	0c000000 	jal	0 <DemoEc_Destroy>
     d58:	8fa5002c 	lw	a1,44(sp)
     d5c:	3c060000 	lui	a2,0x0
     d60:	24c60000 	addiu	a2,a2,0
     d64:	260400b4 	addiu	a0,s0,180
     d68:	24050000 	li	a1,0
     d6c:	0c000000 	jal	0 <DemoEc_Destroy>
     d70:	3c0741f0 	lui	a3,0x41f0
     d74:	24020004 	li	v0,4
     d78:	ae020194 	sw	v0,404(s0)
     d7c:	ae020198 	sw	v0,408(s0)
     d80:	8fbf0024 	lw	ra,36(sp)
     d84:	8fb00020 	lw	s0,32(sp)
     d88:	27bd0028 	addiu	sp,sp,40
     d8c:	03e00008 	jr	ra
     d90:	00000000 	nop

00000d94 <func_8096E244>:
     d94:	27bdffd8 	addiu	sp,sp,-40
     d98:	afbf0024 	sw	ra,36(sp)
     d9c:	afb00020 	sw	s0,32(sp)
     da0:	00808025 	move	s0,a0
     da4:	0c000000 	jal	0 <DemoEc_Destroy>
     da8:	afa5002c 	sw	a1,44(sp)
     dac:	3c060600 	lui	a2,0x600
     db0:	24c600f0 	addiu	a2,a2,240
     db4:	02002025 	move	a0,s0
     db8:	0c000000 	jal	0 <DemoEc_Destroy>
     dbc:	8fa5002c 	lw	a1,44(sp)
     dc0:	02002025 	move	a0,s0
     dc4:	0c000000 	jal	0 <DemoEc_Destroy>
     dc8:	8fa5002c 	lw	a1,44(sp)
     dcc:	3c050600 	lui	a1,0x600
     dd0:	24a5513c 	addiu	a1,a1,20796
     dd4:	02002025 	move	a0,s0
     dd8:	00003025 	move	a2,zero
     ddc:	24070000 	li	a3,0
     de0:	0c000000 	jal	0 <DemoEc_Destroy>
     de4:	afa00010 	sw	zero,16(sp)
     de8:	02002025 	move	a0,s0
     dec:	0c000000 	jal	0 <DemoEc_Destroy>
     df0:	8fa5002c 	lw	a1,44(sp)
     df4:	3c060000 	lui	a2,0x0
     df8:	24c60000 	addiu	a2,a2,0
     dfc:	260400b4 	addiu	a0,s0,180
     e00:	24050000 	li	a1,0
     e04:	0c000000 	jal	0 <DemoEc_Destroy>
     e08:	3c0741f0 	lui	a3,0x41f0
     e0c:	240e000c 	li	t6,12
     e10:	240f0004 	li	t7,4
     e14:	ae0e0194 	sw	t6,404(s0)
     e18:	ae0f0198 	sw	t7,408(s0)
     e1c:	8fbf0024 	lw	ra,36(sp)
     e20:	8fb00020 	lw	s0,32(sp)
     e24:	27bd0028 	addiu	sp,sp,40
     e28:	03e00008 	jr	ra
     e2c:	00000000 	nop

00000e30 <func_8096E2E0>:
     e30:	27bdffe8 	addiu	sp,sp,-24
     e34:	afbf0014 	sw	ra,20(sp)
     e38:	afa40018 	sw	a0,24(sp)
     e3c:	0c000000 	jal	0 <DemoEc_Destroy>
     e40:	afa5001c 	sw	a1,28(sp)
     e44:	8fa40018 	lw	a0,24(sp)
     e48:	0c000000 	jal	0 <DemoEc_Destroy>
     e4c:	8fa5001c 	lw	a1,28(sp)
     e50:	8fa40018 	lw	a0,24(sp)
     e54:	0c000000 	jal	0 <DemoEc_Destroy>
     e58:	8fa5001c 	lw	a1,28(sp)
     e5c:	8fbf0014 	lw	ra,20(sp)
     e60:	27bd0018 	addiu	sp,sp,24
     e64:	03e00008 	jr	ra
     e68:	00000000 	nop

00000e6c <func_8096E31C>:
     e6c:	27bdffe8 	addiu	sp,sp,-24
     e70:	afbf0014 	sw	ra,20(sp)
     e74:	0c000000 	jal	0 <DemoEc_Destroy>
     e78:	00000000 	nop
     e7c:	8fbf0014 	lw	ra,20(sp)
     e80:	27bd0018 	addiu	sp,sp,24
     e84:	03e00008 	jr	ra
     e88:	00000000 	nop

00000e8c <func_8096E33C>:
     e8c:	27bdffd8 	addiu	sp,sp,-40
     e90:	3c0e0000 	lui	t6,0x0
     e94:	3c0f0000 	lui	t7,0x0
     e98:	afbf0024 	sw	ra,36(sp)
     e9c:	25ef0000 	addiu	t7,t7,0
     ea0:	25ce0000 	addiu	t6,t6,0
     ea4:	afae0010 	sw	t6,16(sp)
     ea8:	afaf0014 	sw	t7,20(sp)
     eac:	afa00018 	sw	zero,24(sp)
     eb0:	afa0001c 	sw	zero,28(sp)
     eb4:	00003025 	move	a2,zero
     eb8:	0c000000 	jal	0 <DemoEc_Destroy>
     ebc:	00003825 	move	a3,zero
     ec0:	8fbf0024 	lw	ra,36(sp)
     ec4:	27bd0028 	addiu	sp,sp,40
     ec8:	03e00008 	jr	ra
     ecc:	00000000 	nop

00000ed0 <func_8096E380>:
     ed0:	27bdffd8 	addiu	sp,sp,-40
     ed4:	afbf0024 	sw	ra,36(sp)
     ed8:	afb00020 	sw	s0,32(sp)
     edc:	00808025 	move	s0,a0
     ee0:	0c000000 	jal	0 <DemoEc_Destroy>
     ee4:	afa5002c 	sw	a1,44(sp)
     ee8:	3c060600 	lui	a2,0x600
     eec:	24c600f0 	addiu	a2,a2,240
     ef0:	02002025 	move	a0,s0
     ef4:	0c000000 	jal	0 <DemoEc_Destroy>
     ef8:	8fa5002c 	lw	a1,44(sp)
     efc:	02002025 	move	a0,s0
     f00:	0c000000 	jal	0 <DemoEc_Destroy>
     f04:	8fa5002c 	lw	a1,44(sp)
     f08:	3c050600 	lui	a1,0x600
     f0c:	24a55670 	addiu	a1,a1,22128
     f10:	02002025 	move	a0,s0
     f14:	00003025 	move	a2,zero
     f18:	24070000 	li	a3,0
     f1c:	0c000000 	jal	0 <DemoEc_Destroy>
     f20:	afa00010 	sw	zero,16(sp)
     f24:	02002025 	move	a0,s0
     f28:	0c000000 	jal	0 <DemoEc_Destroy>
     f2c:	8fa5002c 	lw	a1,44(sp)
     f30:	3c060000 	lui	a2,0x0
     f34:	24c60000 	addiu	a2,a2,0
     f38:	260400b4 	addiu	a0,s0,180
     f3c:	24050000 	li	a1,0
     f40:	0c000000 	jal	0 <DemoEc_Destroy>
     f44:	3c0741f0 	lui	a3,0x41f0
     f48:	24020005 	li	v0,5
     f4c:	ae020194 	sw	v0,404(s0)
     f50:	ae020198 	sw	v0,408(s0)
     f54:	8fbf0024 	lw	ra,36(sp)
     f58:	8fb00020 	lw	s0,32(sp)
     f5c:	27bd0028 	addiu	sp,sp,40
     f60:	03e00008 	jr	ra
     f64:	00000000 	nop

00000f68 <func_8096E418>:
     f68:	27bdffd8 	addiu	sp,sp,-40
     f6c:	afbf0024 	sw	ra,36(sp)
     f70:	afb00020 	sw	s0,32(sp)
     f74:	00808025 	move	s0,a0
     f78:	0c000000 	jal	0 <DemoEc_Destroy>
     f7c:	afa5002c 	sw	a1,44(sp)
     f80:	3c060600 	lui	a2,0x600
     f84:	24c600f0 	addiu	a2,a2,240
     f88:	02002025 	move	a0,s0
     f8c:	0c000000 	jal	0 <DemoEc_Destroy>
     f90:	8fa5002c 	lw	a1,44(sp)
     f94:	02002025 	move	a0,s0
     f98:	0c000000 	jal	0 <DemoEc_Destroy>
     f9c:	8fa5002c 	lw	a1,44(sp)
     fa0:	3c050600 	lui	a1,0x600
     fa4:	24a5513c 	addiu	a1,a1,20796
     fa8:	02002025 	move	a0,s0
     fac:	00003025 	move	a2,zero
     fb0:	24070000 	li	a3,0
     fb4:	0c000000 	jal	0 <DemoEc_Destroy>
     fb8:	afa00010 	sw	zero,16(sp)
     fbc:	02002025 	move	a0,s0
     fc0:	0c000000 	jal	0 <DemoEc_Destroy>
     fc4:	8fa5002c 	lw	a1,44(sp)
     fc8:	3c060000 	lui	a2,0x0
     fcc:	24c60000 	addiu	a2,a2,0
     fd0:	260400b4 	addiu	a0,s0,180
     fd4:	24050000 	li	a1,0
     fd8:	0c000000 	jal	0 <DemoEc_Destroy>
     fdc:	3c0741f0 	lui	a3,0x41f0
     fe0:	240e000d 	li	t6,13
     fe4:	240f0005 	li	t7,5
     fe8:	ae0e0194 	sw	t6,404(s0)
     fec:	ae0f0198 	sw	t7,408(s0)
     ff0:	8fbf0024 	lw	ra,36(sp)
     ff4:	8fb00020 	lw	s0,32(sp)
     ff8:	27bd0028 	addiu	sp,sp,40
     ffc:	03e00008 	jr	ra
    1000:	00000000 	nop

00001004 <func_8096E4B4>:
    1004:	27bdffe8 	addiu	sp,sp,-24
    1008:	afbf0014 	sw	ra,20(sp)
    100c:	afa40018 	sw	a0,24(sp)
    1010:	0c000000 	jal	0 <DemoEc_Destroy>
    1014:	afa5001c 	sw	a1,28(sp)
    1018:	8fa40018 	lw	a0,24(sp)
    101c:	0c000000 	jal	0 <DemoEc_Destroy>
    1020:	8fa5001c 	lw	a1,28(sp)
    1024:	0c000000 	jal	0 <DemoEc_Destroy>
    1028:	8fa40018 	lw	a0,24(sp)
    102c:	8fa40018 	lw	a0,24(sp)
    1030:	0c000000 	jal	0 <DemoEc_Destroy>
    1034:	8fa5001c 	lw	a1,28(sp)
    1038:	8fbf0014 	lw	ra,20(sp)
    103c:	27bd0018 	addiu	sp,sp,24
    1040:	03e00008 	jr	ra
    1044:	00000000 	nop

00001048 <func_8096E4F8>:
    1048:	27bdffe8 	addiu	sp,sp,-24
    104c:	afbf0014 	sw	ra,20(sp)
    1050:	0c000000 	jal	0 <DemoEc_Destroy>
    1054:	00000000 	nop
    1058:	8fbf0014 	lw	ra,20(sp)
    105c:	27bd0018 	addiu	sp,sp,24
    1060:	03e00008 	jr	ra
    1064:	00000000 	nop

00001068 <func_8096E518>:
    1068:	27bdffd8 	addiu	sp,sp,-40
    106c:	afbf0024 	sw	ra,36(sp)
    1070:	84820190 	lh	v0,400(a0)
    1074:	3c060000 	lui	a2,0x0
    1078:	3c0f0000 	lui	t7,0x0
    107c:	3c180000 	lui	t8,0x0
    1080:	00027080 	sll	t6,v0,0x2
    1084:	00ce3021 	addu	a2,a2,t6
    1088:	27180000 	addiu	t8,t8,0
    108c:	25ef0000 	addiu	t7,t7,0
    1090:	8cc60000 	lw	a2,0(a2)
    1094:	afaf0010 	sw	t7,16(sp)
    1098:	afb80014 	sw	t8,20(sp)
    109c:	afa0001c 	sw	zero,28(sp)
    10a0:	afa00018 	sw	zero,24(sp)
    10a4:	0c000000 	jal	0 <DemoEc_Destroy>
    10a8:	00003825 	move	a3,zero
    10ac:	8fbf0024 	lw	ra,36(sp)
    10b0:	27bd0028 	addiu	sp,sp,40
    10b4:	03e00008 	jr	ra
    10b8:	00000000 	nop

000010bc <func_8096E56C>:
    10bc:	27bdffd8 	addiu	sp,sp,-40
    10c0:	afbf0024 	sw	ra,36(sp)
    10c4:	afb00020 	sw	s0,32(sp)
    10c8:	00808025 	move	s0,a0
    10cc:	0c000000 	jal	0 <DemoEc_Destroy>
    10d0:	afa5002c 	sw	a1,44(sp)
    10d4:	3c060600 	lui	a2,0x600
    10d8:	24c600f0 	addiu	a2,a2,240
    10dc:	02002025 	move	a0,s0
    10e0:	0c000000 	jal	0 <DemoEc_Destroy>
    10e4:	8fa5002c 	lw	a1,44(sp)
    10e8:	02002025 	move	a0,s0
    10ec:	0c000000 	jal	0 <DemoEc_Destroy>
    10f0:	8fa5002c 	lw	a1,44(sp)
    10f4:	3c050600 	lui	a1,0x600
    10f8:	24a55ea8 	addiu	a1,a1,24232
    10fc:	02002025 	move	a0,s0
    1100:	00003025 	move	a2,zero
    1104:	24070000 	li	a3,0
    1108:	0c000000 	jal	0 <DemoEc_Destroy>
    110c:	afa00010 	sw	zero,16(sp)
    1110:	02002025 	move	a0,s0
    1114:	0c000000 	jal	0 <DemoEc_Destroy>
    1118:	8fa5002c 	lw	a1,44(sp)
    111c:	3c060000 	lui	a2,0x0
    1120:	24c60000 	addiu	a2,a2,0
    1124:	260400b4 	addiu	a0,s0,180
    1128:	24050000 	li	a1,0
    112c:	0c000000 	jal	0 <DemoEc_Destroy>
    1130:	3c0741f0 	lui	a3,0x41f0
    1134:	24020006 	li	v0,6
    1138:	ae020194 	sw	v0,404(s0)
    113c:	ae020198 	sw	v0,408(s0)
    1140:	8fbf0024 	lw	ra,36(sp)
    1144:	8fb00020 	lw	s0,32(sp)
    1148:	27bd0028 	addiu	sp,sp,40
    114c:	03e00008 	jr	ra
    1150:	00000000 	nop

00001154 <func_8096E604>:
    1154:	27bdffe8 	addiu	sp,sp,-24
    1158:	afbf0014 	sw	ra,20(sp)
    115c:	afa40018 	sw	a0,24(sp)
    1160:	0c000000 	jal	0 <DemoEc_Destroy>
    1164:	afa5001c 	sw	a1,28(sp)
    1168:	8fa40018 	lw	a0,24(sp)
    116c:	0c000000 	jal	0 <DemoEc_Destroy>
    1170:	8fa5001c 	lw	a1,28(sp)
    1174:	0c000000 	jal	0 <DemoEc_Destroy>
    1178:	8fa40018 	lw	a0,24(sp)
    117c:	8fa40018 	lw	a0,24(sp)
    1180:	0c000000 	jal	0 <DemoEc_Destroy>
    1184:	8fa5001c 	lw	a1,28(sp)
    1188:	8fbf0014 	lw	ra,20(sp)
    118c:	27bd0018 	addiu	sp,sp,24
    1190:	03e00008 	jr	ra
    1194:	00000000 	nop

00001198 <func_8096E648>:
    1198:	27bdffd8 	addiu	sp,sp,-40
    119c:	afbf0024 	sw	ra,36(sp)
    11a0:	84820190 	lh	v0,400(a0)
    11a4:	3c060000 	lui	a2,0x0
    11a8:	3c0f0000 	lui	t7,0x0
    11ac:	3c180000 	lui	t8,0x0
    11b0:	00027080 	sll	t6,v0,0x2
    11b4:	00ce3021 	addu	a2,a2,t6
    11b8:	27180000 	addiu	t8,t8,0
    11bc:	25ef0000 	addiu	t7,t7,0
    11c0:	8cc60000 	lw	a2,0(a2)
    11c4:	afaf0010 	sw	t7,16(sp)
    11c8:	afb80014 	sw	t8,20(sp)
    11cc:	afa0001c 	sw	zero,28(sp)
    11d0:	afa00018 	sw	zero,24(sp)
    11d4:	0c000000 	jal	0 <DemoEc_Destroy>
    11d8:	00003825 	move	a3,zero
    11dc:	8fbf0024 	lw	ra,36(sp)
    11e0:	27bd0028 	addiu	sp,sp,40
    11e4:	03e00008 	jr	ra
    11e8:	00000000 	nop

000011ec <func_8096E69C>:
    11ec:	27bdffd8 	addiu	sp,sp,-40
    11f0:	afbf0024 	sw	ra,36(sp)
    11f4:	afb00020 	sw	s0,32(sp)
    11f8:	00808025 	move	s0,a0
    11fc:	0c000000 	jal	0 <DemoEc_Destroy>
    1200:	afa5002c 	sw	a1,44(sp)
    1204:	3c060600 	lui	a2,0x600
    1208:	24c600f0 	addiu	a2,a2,240
    120c:	02002025 	move	a0,s0
    1210:	0c000000 	jal	0 <DemoEc_Destroy>
    1214:	8fa5002c 	lw	a1,44(sp)
    1218:	02002025 	move	a0,s0
    121c:	0c000000 	jal	0 <DemoEc_Destroy>
    1220:	8fa5002c 	lw	a1,44(sp)
    1224:	3c050600 	lui	a1,0x600
    1228:	24a55ea8 	addiu	a1,a1,24232
    122c:	02002025 	move	a0,s0
    1230:	00003025 	move	a2,zero
    1234:	24070000 	li	a3,0
    1238:	0c000000 	jal	0 <DemoEc_Destroy>
    123c:	afa00010 	sw	zero,16(sp)
    1240:	02002025 	move	a0,s0
    1244:	0c000000 	jal	0 <DemoEc_Destroy>
    1248:	8fa5002c 	lw	a1,44(sp)
    124c:	3c060000 	lui	a2,0x0
    1250:	24c60000 	addiu	a2,a2,0
    1254:	260400b4 	addiu	a0,s0,180
    1258:	24050000 	li	a1,0
    125c:	0c000000 	jal	0 <DemoEc_Destroy>
    1260:	3c0741f0 	lui	a3,0x41f0
    1264:	24020007 	li	v0,7
    1268:	ae020194 	sw	v0,404(s0)
    126c:	ae020198 	sw	v0,408(s0)
    1270:	8fbf0024 	lw	ra,36(sp)
    1274:	8fb00020 	lw	s0,32(sp)
    1278:	27bd0028 	addiu	sp,sp,40
    127c:	03e00008 	jr	ra
    1280:	00000000 	nop

00001284 <func_8096E734>:
    1284:	27bdffe8 	addiu	sp,sp,-24
    1288:	afbf0014 	sw	ra,20(sp)
    128c:	afa40018 	sw	a0,24(sp)
    1290:	0c000000 	jal	0 <DemoEc_Destroy>
    1294:	afa5001c 	sw	a1,28(sp)
    1298:	8fa40018 	lw	a0,24(sp)
    129c:	0c000000 	jal	0 <DemoEc_Destroy>
    12a0:	8fa5001c 	lw	a1,28(sp)
    12a4:	0c000000 	jal	0 <DemoEc_Destroy>
    12a8:	8fa40018 	lw	a0,24(sp)
    12ac:	8fa40018 	lw	a0,24(sp)
    12b0:	0c000000 	jal	0 <DemoEc_Destroy>
    12b4:	8fa5001c 	lw	a1,28(sp)
    12b8:	8fbf0014 	lw	ra,20(sp)
    12bc:	27bd0018 	addiu	sp,sp,24
    12c0:	03e00008 	jr	ra
    12c4:	00000000 	nop

000012c8 <func_8096E778>:
    12c8:	27bdffd8 	addiu	sp,sp,-40
    12cc:	afbf0024 	sw	ra,36(sp)
    12d0:	84820190 	lh	v0,400(a0)
    12d4:	3c060000 	lui	a2,0x0
    12d8:	3c0f0000 	lui	t7,0x0
    12dc:	3c180000 	lui	t8,0x0
    12e0:	00027080 	sll	t6,v0,0x2
    12e4:	00ce3021 	addu	a2,a2,t6
    12e8:	27180000 	addiu	t8,t8,0
    12ec:	25ef0000 	addiu	t7,t7,0
    12f0:	8cc60000 	lw	a2,0(a2)
    12f4:	afaf0010 	sw	t7,16(sp)
    12f8:	afb80014 	sw	t8,20(sp)
    12fc:	afa0001c 	sw	zero,28(sp)
    1300:	afa00018 	sw	zero,24(sp)
    1304:	0c000000 	jal	0 <DemoEc_Destroy>
    1308:	00003825 	move	a3,zero
    130c:	8fbf0024 	lw	ra,36(sp)
    1310:	27bd0028 	addiu	sp,sp,40
    1314:	03e00008 	jr	ra
    1318:	00000000 	nop

0000131c <func_8096E7CC>:
    131c:	27bdffd8 	addiu	sp,sp,-40
    1320:	afbf0024 	sw	ra,36(sp)
    1324:	afb00020 	sw	s0,32(sp)
    1328:	00808025 	move	s0,a0
    132c:	0c000000 	jal	0 <DemoEc_Destroy>
    1330:	afa5002c 	sw	a1,44(sp)
    1334:	3c060600 	lui	a2,0x600
    1338:	24c600f0 	addiu	a2,a2,240
    133c:	02002025 	move	a0,s0
    1340:	0c000000 	jal	0 <DemoEc_Destroy>
    1344:	8fa5002c 	lw	a1,44(sp)
    1348:	02002025 	move	a0,s0
    134c:	0c000000 	jal	0 <DemoEc_Destroy>
    1350:	8fa5002c 	lw	a1,44(sp)
    1354:	3c050600 	lui	a1,0x600
    1358:	24a55ea8 	addiu	a1,a1,24232
    135c:	02002025 	move	a0,s0
    1360:	00003025 	move	a2,zero
    1364:	24070000 	li	a3,0
    1368:	0c000000 	jal	0 <DemoEc_Destroy>
    136c:	afa00010 	sw	zero,16(sp)
    1370:	02002025 	move	a0,s0
    1374:	0c000000 	jal	0 <DemoEc_Destroy>
    1378:	8fa5002c 	lw	a1,44(sp)
    137c:	3c060000 	lui	a2,0x0
    1380:	24c60000 	addiu	a2,a2,0
    1384:	260400b4 	addiu	a0,s0,180
    1388:	24050000 	li	a1,0
    138c:	0c000000 	jal	0 <DemoEc_Destroy>
    1390:	3c0741f0 	lui	a3,0x41f0
    1394:	24020008 	li	v0,8
    1398:	ae020194 	sw	v0,404(s0)
    139c:	ae020198 	sw	v0,408(s0)
    13a0:	8fbf0024 	lw	ra,36(sp)
    13a4:	8fb00020 	lw	s0,32(sp)
    13a8:	27bd0028 	addiu	sp,sp,40
    13ac:	03e00008 	jr	ra
    13b0:	00000000 	nop

000013b4 <func_8096E864>:
    13b4:	27bdffe8 	addiu	sp,sp,-24
    13b8:	afbf0014 	sw	ra,20(sp)
    13bc:	afa40018 	sw	a0,24(sp)
    13c0:	0c000000 	jal	0 <DemoEc_Destroy>
    13c4:	afa5001c 	sw	a1,28(sp)
    13c8:	8fa40018 	lw	a0,24(sp)
    13cc:	0c000000 	jal	0 <DemoEc_Destroy>
    13d0:	8fa5001c 	lw	a1,28(sp)
    13d4:	0c000000 	jal	0 <DemoEc_Destroy>
    13d8:	8fa40018 	lw	a0,24(sp)
    13dc:	8fa40018 	lw	a0,24(sp)
    13e0:	0c000000 	jal	0 <DemoEc_Destroy>
    13e4:	8fa5001c 	lw	a1,28(sp)
    13e8:	8fbf0014 	lw	ra,20(sp)
    13ec:	27bd0018 	addiu	sp,sp,24
    13f0:	03e00008 	jr	ra
    13f4:	00000000 	nop

000013f8 <func_8096E8A8>:
    13f8:	27bdffe0 	addiu	sp,sp,-32
    13fc:	afbf001c 	sw	ra,28(sp)
    1400:	84820190 	lh	v0,400(a0)
    1404:	3c060000 	lui	a2,0x0
    1408:	afa00014 	sw	zero,20(sp)
    140c:	00027080 	sll	t6,v0,0x2
    1410:	00ce3021 	addu	a2,a2,t6
    1414:	8cc60000 	lw	a2,0(a2)
    1418:	afa00010 	sw	zero,16(sp)
    141c:	0c000000 	jal	0 <DemoEc_Destroy>
    1420:	00003825 	move	a3,zero
    1424:	8fbf001c 	lw	ra,28(sp)
    1428:	27bd0020 	addiu	sp,sp,32
    142c:	03e00008 	jr	ra
    1430:	00000000 	nop

00001434 <func_8096E8E4>:
    1434:	27bdffd8 	addiu	sp,sp,-40
    1438:	afbf0024 	sw	ra,36(sp)
    143c:	afb00020 	sw	s0,32(sp)
    1440:	00808025 	move	s0,a0
    1444:	0c000000 	jal	0 <DemoEc_Destroy>
    1448:	afa5002c 	sw	a1,44(sp)
    144c:	3c060600 	lui	a2,0x600
    1450:	24c600f0 	addiu	a2,a2,240
    1454:	02002025 	move	a0,s0
    1458:	0c000000 	jal	0 <DemoEc_Destroy>
    145c:	8fa5002c 	lw	a1,44(sp)
    1460:	02002025 	move	a0,s0
    1464:	0c000000 	jal	0 <DemoEc_Destroy>
    1468:	8fa5002c 	lw	a1,44(sp)
    146c:	3c050600 	lui	a1,0x600
    1470:	24a55ea8 	addiu	a1,a1,24232
    1474:	02002025 	move	a0,s0
    1478:	00003025 	move	a2,zero
    147c:	24070000 	li	a3,0
    1480:	0c000000 	jal	0 <DemoEc_Destroy>
    1484:	afa00010 	sw	zero,16(sp)
    1488:	02002025 	move	a0,s0
    148c:	0c000000 	jal	0 <DemoEc_Destroy>
    1490:	8fa5002c 	lw	a1,44(sp)
    1494:	3c060000 	lui	a2,0x0
    1498:	24c60000 	addiu	a2,a2,0
    149c:	260400b4 	addiu	a0,s0,180
    14a0:	24050000 	li	a1,0
    14a4:	0c000000 	jal	0 <DemoEc_Destroy>
    14a8:	3c0741f0 	lui	a3,0x41f0
    14ac:	24020009 	li	v0,9
    14b0:	ae020194 	sw	v0,404(s0)
    14b4:	ae020198 	sw	v0,408(s0)
    14b8:	8fbf0024 	lw	ra,36(sp)
    14bc:	8fb00020 	lw	s0,32(sp)
    14c0:	27bd0028 	addiu	sp,sp,40
    14c4:	03e00008 	jr	ra
    14c8:	00000000 	nop

000014cc <func_8096E97C>:
    14cc:	27bdffe8 	addiu	sp,sp,-24
    14d0:	afbf0014 	sw	ra,20(sp)
    14d4:	afa40018 	sw	a0,24(sp)
    14d8:	0c000000 	jal	0 <DemoEc_Destroy>
    14dc:	afa5001c 	sw	a1,28(sp)
    14e0:	8fa40018 	lw	a0,24(sp)
    14e4:	0c000000 	jal	0 <DemoEc_Destroy>
    14e8:	8fa5001c 	lw	a1,28(sp)
    14ec:	8fa40018 	lw	a0,24(sp)
    14f0:	0c000000 	jal	0 <DemoEc_Destroy>
    14f4:	8fa5001c 	lw	a1,28(sp)
    14f8:	8fbf0014 	lw	ra,20(sp)
    14fc:	27bd0018 	addiu	sp,sp,24
    1500:	03e00008 	jr	ra
    1504:	00000000 	nop

00001508 <func_8096E9B8>:
    1508:	27bdffe0 	addiu	sp,sp,-32
    150c:	afbf001c 	sw	ra,28(sp)
    1510:	3c060600 	lui	a2,0x600
    1514:	24c604c8 	addiu	a2,a2,1224
    1518:	afa00010 	sw	zero,16(sp)
    151c:	afa00014 	sw	zero,20(sp)
    1520:	0c000000 	jal	0 <DemoEc_Destroy>
    1524:	00003825 	move	a3,zero
    1528:	8fbf001c 	lw	ra,28(sp)
    152c:	27bd0020 	addiu	sp,sp,32
    1530:	03e00008 	jr	ra
    1534:	00000000 	nop

00001538 <func_8096E9E8>:
    1538:	27bdffd8 	addiu	sp,sp,-40
    153c:	afbf0024 	sw	ra,36(sp)
    1540:	afb00020 	sw	s0,32(sp)
    1544:	00808025 	move	s0,a0
    1548:	0c000000 	jal	0 <DemoEc_Destroy>
    154c:	afa5002c 	sw	a1,44(sp)
    1550:	3c060600 	lui	a2,0x600
    1554:	24c67150 	addiu	a2,a2,29008
    1558:	02002025 	move	a0,s0
    155c:	0c000000 	jal	0 <DemoEc_Destroy>
    1560:	8fa5002c 	lw	a1,44(sp)
    1564:	02002025 	move	a0,s0
    1568:	0c000000 	jal	0 <DemoEc_Destroy>
    156c:	8fa5002c 	lw	a1,44(sp)
    1570:	3c050600 	lui	a1,0x600
    1574:	24a5164c 	addiu	a1,a1,5708
    1578:	02002025 	move	a0,s0
    157c:	00003025 	move	a2,zero
    1580:	24070000 	li	a3,0
    1584:	0c000000 	jal	0 <DemoEc_Destroy>
    1588:	afa00010 	sw	zero,16(sp)
    158c:	02002025 	move	a0,s0
    1590:	0c000000 	jal	0 <DemoEc_Destroy>
    1594:	8fa5002c 	lw	a1,44(sp)
    1598:	3c060000 	lui	a2,0x0
    159c:	24c60000 	addiu	a2,a2,0
    15a0:	260400b4 	addiu	a0,s0,180
    15a4:	24050000 	li	a1,0
    15a8:	0c000000 	jal	0 <DemoEc_Destroy>
    15ac:	3c0741f0 	lui	a3,0x41f0
    15b0:	2402000a 	li	v0,10
    15b4:	ae020194 	sw	v0,404(s0)
    15b8:	ae020198 	sw	v0,408(s0)
    15bc:	8fbf0024 	lw	ra,36(sp)
    15c0:	8fb00020 	lw	s0,32(sp)
    15c4:	27bd0028 	addiu	sp,sp,40
    15c8:	03e00008 	jr	ra
    15cc:	00000000 	nop

000015d0 <func_8096EA80>:
    15d0:	27bdffe8 	addiu	sp,sp,-24
    15d4:	afbf0014 	sw	ra,20(sp)
    15d8:	afa40018 	sw	a0,24(sp)
    15dc:	0c000000 	jal	0 <DemoEc_Destroy>
    15e0:	afa5001c 	sw	a1,28(sp)
    15e4:	8fa40018 	lw	a0,24(sp)
    15e8:	0c000000 	jal	0 <DemoEc_Destroy>
    15ec:	8fa5001c 	lw	a1,28(sp)
    15f0:	8fa40018 	lw	a0,24(sp)
    15f4:	0c000000 	jal	0 <DemoEc_Destroy>
    15f8:	8fa5001c 	lw	a1,28(sp)
    15fc:	8fbf0014 	lw	ra,20(sp)
    1600:	27bd0018 	addiu	sp,sp,24
    1604:	03e00008 	jr	ra
    1608:	00000000 	nop

0000160c <func_8096EABC>:
    160c:	27bdffe0 	addiu	sp,sp,-32
    1610:	afbf001c 	sw	ra,28(sp)
    1614:	afa00010 	sw	zero,16(sp)
    1618:	afa00014 	sw	zero,20(sp)
    161c:	00003025 	move	a2,zero
    1620:	0c000000 	jal	0 <DemoEc_Destroy>
    1624:	00003825 	move	a3,zero
    1628:	8fbf001c 	lw	ra,28(sp)
    162c:	27bd0020 	addiu	sp,sp,32
    1630:	03e00008 	jr	ra
    1634:	00000000 	nop

00001638 <func_8096EAE8>:
    1638:	27bdffd8 	addiu	sp,sp,-40
    163c:	afbf0024 	sw	ra,36(sp)
    1640:	afb00020 	sw	s0,32(sp)
    1644:	00808025 	move	s0,a0
    1648:	0c000000 	jal	0 <DemoEc_Destroy>
    164c:	afa5002c 	sw	a1,44(sp)
    1650:	3c060600 	lui	a2,0x600
    1654:	24c67958 	addiu	a2,a2,31064
    1658:	02002025 	move	a0,s0
    165c:	0c000000 	jal	0 <DemoEc_Destroy>
    1660:	8fa5002c 	lw	a1,44(sp)
    1664:	02002025 	move	a0,s0
    1668:	0c000000 	jal	0 <DemoEc_Destroy>
    166c:	8fa5002c 	lw	a1,44(sp)
    1670:	3c050600 	lui	a1,0x600
    1674:	24a5164c 	addiu	a1,a1,5708
    1678:	02002025 	move	a0,s0
    167c:	00003025 	move	a2,zero
    1680:	24070000 	li	a3,0
    1684:	0c000000 	jal	0 <DemoEc_Destroy>
    1688:	afa00010 	sw	zero,16(sp)
    168c:	02002025 	move	a0,s0
    1690:	0c000000 	jal	0 <DemoEc_Destroy>
    1694:	8fa5002c 	lw	a1,44(sp)
    1698:	3c060000 	lui	a2,0x0
    169c:	24c60000 	addiu	a2,a2,0
    16a0:	260400b4 	addiu	a0,s0,180
    16a4:	24050000 	li	a1,0
    16a8:	0c000000 	jal	0 <DemoEc_Destroy>
    16ac:	3c0741f0 	lui	a3,0x41f0
    16b0:	2402000b 	li	v0,11
    16b4:	ae020194 	sw	v0,404(s0)
    16b8:	ae020198 	sw	v0,408(s0)
    16bc:	8fbf0024 	lw	ra,36(sp)
    16c0:	8fb00020 	lw	s0,32(sp)
    16c4:	27bd0028 	addiu	sp,sp,40
    16c8:	03e00008 	jr	ra
    16cc:	00000000 	nop

000016d0 <func_8096EB80>:
    16d0:	27bdffe8 	addiu	sp,sp,-24
    16d4:	afbf0014 	sw	ra,20(sp)
    16d8:	afa40018 	sw	a0,24(sp)
    16dc:	0c000000 	jal	0 <DemoEc_Destroy>
    16e0:	afa5001c 	sw	a1,28(sp)
    16e4:	8fa40018 	lw	a0,24(sp)
    16e8:	0c000000 	jal	0 <DemoEc_Destroy>
    16ec:	8fa5001c 	lw	a1,28(sp)
    16f0:	8fa40018 	lw	a0,24(sp)
    16f4:	0c000000 	jal	0 <DemoEc_Destroy>
    16f8:	8fa5001c 	lw	a1,28(sp)
    16fc:	8fbf0014 	lw	ra,20(sp)
    1700:	27bd0018 	addiu	sp,sp,24
    1704:	03e00008 	jr	ra
    1708:	00000000 	nop

0000170c <func_8096EBBC>:
    170c:	24010001 	li	at,1
    1710:	afa40000 	sw	a0,0(sp)
    1714:	afa60008 	sw	a2,8(sp)
    1718:	14a1003a 	bne	a1,at,1804 <func_8096EBBC+0xf8>
    171c:	afa7000c 	sw	a3,12(sp)
    1720:	8fa30018 	lw	v1,24(sp)
    1724:	3c0fe700 	lui	t7,0xe700
    1728:	2401000a 	li	at,10
    172c:	8c640000 	lw	a0,0(v1)
    1730:	3c08fb00 	lui	t0,0xfb00
    1734:	3c09aa0a 	lui	t1,0xaa0a
    1738:	248e0008 	addiu	t6,a0,8
    173c:	ac6e0000 	sw	t6,0(v1)
    1740:	ac800004 	sw	zero,4(a0)
    1744:	ac8f0000 	sw	t7,0(a0)
    1748:	8fb80014 	lw	t8,20(sp)
    174c:	8702001c 	lh	v0,28(t8)
    1750:	1041000b 	beq	v0,at,1780 <func_8096EBBC+0x74>
    1754:	2401000b 	li	at,11
    1758:	10410011 	beq	v0,at,17a0 <func_8096EBBC+0x94>
    175c:	3c0bfb00 	lui	t3,0xfb00
    1760:	2401000c 	li	at,12
    1764:	10410017 	beq	v0,at,17c4 <func_8096EBBC+0xb8>
    1768:	3c0efb00 	lui	t6,0xfb00
    176c:	2401000d 	li	at,13
    1770:	1041001d 	beq	v0,at,17e8 <func_8096EBBC+0xdc>
    1774:	3c19fb00 	lui	t9,0xfb00
    1778:	03e00008 	jr	ra
    177c:	00001025 	move	v0,zero
    1780:	8c640000 	lw	a0,0(v1)
    1784:	352946ff 	ori	t1,t1,0x46ff
    1788:	00001025 	move	v0,zero
    178c:	24990008 	addiu	t9,a0,8
    1790:	ac790000 	sw	t9,0(v1)
    1794:	ac890004 	sw	t1,4(a0)
    1798:	03e00008 	jr	ra
    179c:	ac880000 	sw	t0,0(a0)
    17a0:	8c640000 	lw	a0,0(v1)
    17a4:	3c0caac8 	lui	t4,0xaac8
    17a8:	358cffff 	ori	t4,t4,0xffff
    17ac:	248a0008 	addiu	t2,a0,8
    17b0:	ac6a0000 	sw	t2,0(v1)
    17b4:	00001025 	move	v0,zero
    17b8:	ac8c0004 	sw	t4,4(a0)
    17bc:	03e00008 	jr	ra
    17c0:	ac8b0000 	sw	t3,0(a0)
    17c4:	8c640000 	lw	a0,0(v1)
    17c8:	3c0f00e6 	lui	t7,0xe6
    17cc:	35ef46ff 	ori	t7,t7,0x46ff
    17d0:	248d0008 	addiu	t5,a0,8
    17d4:	ac6d0000 	sw	t5,0(v1)
    17d8:	00001025 	move	v0,zero
    17dc:	ac8f0004 	sw	t7,4(a0)
    17e0:	03e00008 	jr	ra
    17e4:	ac8e0000 	sw	t6,0(a0)
    17e8:	8c640000 	lw	a0,0(v1)
    17ec:	3c08c800 	lui	t0,0xc800
    17f0:	350896ff 	ori	t0,t0,0x96ff
    17f4:	24980008 	addiu	t8,a0,8
    17f8:	ac780000 	sw	t8,0(v1)
    17fc:	ac880004 	sw	t0,4(a0)
    1800:	ac990000 	sw	t9,0(a0)
    1804:	03e00008 	jr	ra
    1808:	00001025 	move	v0,zero

0000180c <func_8096ECBC>:
    180c:	27bdffe8 	addiu	sp,sp,-24
    1810:	afbf0014 	sw	ra,20(sp)
    1814:	8482001c 	lh	v0,28(a0)
    1818:	2401000a 	li	at,10
    181c:	10410009 	beq	v0,at,1844 <func_8096ECBC+0x38>
    1820:	2401000b 	li	at,11
    1824:	1041000a 	beq	v0,at,1850 <func_8096ECBC+0x44>
    1828:	2401000c 	li	at,12
    182c:	1041000b 	beq	v0,at,185c <func_8096ECBC+0x50>
    1830:	2401000d 	li	at,13
    1834:	1041000c 	beq	v0,at,1868 <func_8096ECBC+0x5c>
    1838:	3c040000 	lui	a0,0x0
    183c:	1000000d 	b	1874 <func_8096ECBC+0x68>
    1840:	00000000 	nop
    1844:	3c020600 	lui	v0,0x600
    1848:	1000000d 	b	1880 <func_8096ECBC+0x74>
    184c:	24425bd0 	addiu	v0,v0,23504
    1850:	3c020600 	lui	v0,0x600
    1854:	1000000a 	b	1880 <func_8096ECBC+0x74>
    1858:	24425ac0 	addiu	v0,v0,23232
    185c:	3c020600 	lui	v0,0x600
    1860:	10000007 	b	1880 <func_8096ECBC+0x74>
    1864:	24425990 	addiu	v0,v0,22928
    1868:	3c020600 	lui	v0,0x600
    186c:	10000004 	b	1880 <func_8096ECBC+0x74>
    1870:	24425880 	addiu	v0,v0,22656
    1874:	0c000000 	jal	0 <DemoEc_Destroy>
    1878:	24840000 	addiu	a0,a0,0
    187c:	00001025 	move	v0,zero
    1880:	8fbf0014 	lw	ra,20(sp)
    1884:	27bd0018 	addiu	sp,sp,24
    1888:	03e00008 	jr	ra
    188c:	00000000 	nop

00001890 <func_8096ED40>:
    1890:	27bdffe8 	addiu	sp,sp,-24
    1894:	2401000f 	li	at,15
    1898:	afbf0014 	sw	ra,20(sp)
    189c:	afa40018 	sw	a0,24(sp)
    18a0:	afa60020 	sw	a2,32(sp)
    18a4:	14a10016 	bne	a1,at,1900 <func_8096ED40+0x70>
    18a8:	afa70024 	sw	a3,36(sp)
    18ac:	0c000000 	jal	0 <DemoEc_Destroy>
    18b0:	8fa40028 	lw	a0,40(sp)
    18b4:	8fa5002c 	lw	a1,44(sp)
    18b8:	0002c100 	sll	t8,v0,0x4
    18bc:	0018cf02 	srl	t9,t8,0x1c
    18c0:	8ca40000 	lw	a0,0(a1)
    18c4:	00194080 	sll	t0,t9,0x2
    18c8:	3c0fde00 	lui	t7,0xde00
    18cc:	248e0008 	addiu	t6,a0,8
    18d0:	3c090000 	lui	t1,0x0
    18d4:	acae0000 	sw	t6,0(a1)
    18d8:	01284821 	addu	t1,t1,t0
    18dc:	3c0100ff 	lui	at,0xff
    18e0:	ac8f0000 	sw	t7,0(a0)
    18e4:	8d290000 	lw	t1,0(t1)
    18e8:	3421ffff 	ori	at,at,0xffff
    18ec:	00415024 	and	t2,v0,at
    18f0:	3c018000 	lui	at,0x8000
    18f4:	012a5821 	addu	t3,t1,t2
    18f8:	01616021 	addu	t4,t3,at
    18fc:	ac8c0004 	sw	t4,4(a0)
    1900:	8fbf0014 	lw	ra,20(sp)
    1904:	27bd0018 	addiu	sp,sp,24
    1908:	03e00008 	jr	ra
    190c:	00000000 	nop

00001910 <func_8096EDC0>:
    1910:	27bdffe0 	addiu	sp,sp,-32
    1914:	3c0e0000 	lui	t6,0x0
    1918:	3c0f0000 	lui	t7,0x0
    191c:	afbf001c 	sw	ra,28(sp)
    1920:	25ef0000 	addiu	t7,t7,0
    1924:	25ce0000 	addiu	t6,t6,0
    1928:	afae0010 	sw	t6,16(sp)
    192c:	afaf0014 	sw	t7,20(sp)
    1930:	00003025 	move	a2,zero
    1934:	0c000000 	jal	0 <DemoEc_Destroy>
    1938:	00003825 	move	a3,zero
    193c:	8fbf001c 	lw	ra,28(sp)
    1940:	27bd0020 	addiu	sp,sp,32
    1944:	03e00008 	jr	ra
    1948:	00000000 	nop

0000194c <func_8096EDFC>:
    194c:	27bdffd8 	addiu	sp,sp,-40
    1950:	afbf0024 	sw	ra,36(sp)
    1954:	afb00020 	sw	s0,32(sp)
    1958:	00808025 	move	s0,a0
    195c:	0c000000 	jal	0 <DemoEc_Destroy>
    1960:	afa5002c 	sw	a1,44(sp)
    1964:	3c060600 	lui	a2,0x600
    1968:	24c60330 	addiu	a2,a2,816
    196c:	02002025 	move	a0,s0
    1970:	0c000000 	jal	0 <DemoEc_Destroy>
    1974:	8fa5002c 	lw	a1,44(sp)
    1978:	02002025 	move	a0,s0
    197c:	0c000000 	jal	0 <DemoEc_Destroy>
    1980:	8fa5002c 	lw	a1,44(sp)
    1984:	3c050600 	lui	a1,0x600
    1988:	24a52254 	addiu	a1,a1,8788
    198c:	02002025 	move	a0,s0
    1990:	00003025 	move	a2,zero
    1994:	24070000 	li	a3,0
    1998:	0c000000 	jal	0 <DemoEc_Destroy>
    199c:	afa00010 	sw	zero,16(sp)
    19a0:	02002025 	move	a0,s0
    19a4:	0c000000 	jal	0 <DemoEc_Destroy>
    19a8:	8fa5002c 	lw	a1,44(sp)
    19ac:	3c060000 	lui	a2,0x0
    19b0:	24c60000 	addiu	a2,a2,0
    19b4:	260400b4 	addiu	a0,s0,180
    19b8:	24050000 	li	a1,0
    19bc:	0c000000 	jal	0 <DemoEc_Destroy>
    19c0:	3c0741f0 	lui	a3,0x41f0
    19c4:	240e000e 	li	t6,14
    19c8:	240f000c 	li	t7,12
    19cc:	ae0e0194 	sw	t6,404(s0)
    19d0:	ae0f0198 	sw	t7,408(s0)
    19d4:	8fbf0024 	lw	ra,36(sp)
    19d8:	8fb00020 	lw	s0,32(sp)
    19dc:	27bd0028 	addiu	sp,sp,40
    19e0:	03e00008 	jr	ra
    19e4:	00000000 	nop

000019e8 <func_8096EE98>:
    19e8:	27bdffe8 	addiu	sp,sp,-24
    19ec:	afbf0014 	sw	ra,20(sp)
    19f0:	afa40018 	sw	a0,24(sp)
    19f4:	0c000000 	jal	0 <DemoEc_Destroy>
    19f8:	afa5001c 	sw	a1,28(sp)
    19fc:	8fa40018 	lw	a0,24(sp)
    1a00:	0c000000 	jal	0 <DemoEc_Destroy>
    1a04:	8fa5001c 	lw	a1,28(sp)
    1a08:	0c000000 	jal	0 <DemoEc_Destroy>
    1a0c:	8fa40018 	lw	a0,24(sp)
    1a10:	8fa40018 	lw	a0,24(sp)
    1a14:	0c000000 	jal	0 <DemoEc_Destroy>
    1a18:	8fa5001c 	lw	a1,28(sp)
    1a1c:	8fbf0014 	lw	ra,20(sp)
    1a20:	27bd0018 	addiu	sp,sp,24
    1a24:	03e00008 	jr	ra
    1a28:	00000000 	nop

00001a2c <func_8096EEDC>:
    1a2c:	27bdffe8 	addiu	sp,sp,-24
    1a30:	afbf0014 	sw	ra,20(sp)
    1a34:	8482001c 	lh	v0,28(a0)
    1a38:	24010010 	li	at,16
    1a3c:	10410007 	beq	v0,at,1a5c <func_8096EEDC+0x30>
    1a40:	24010011 	li	at,17
    1a44:	10410008 	beq	v0,at,1a68 <func_8096EEDC+0x3c>
    1a48:	24010012 	li	at,18
    1a4c:	10410009 	beq	v0,at,1a74 <func_8096EEDC+0x48>
    1a50:	3c040000 	lui	a0,0x0
    1a54:	1000000a 	b	1a80 <func_8096EEDC+0x54>
    1a58:	00000000 	nop
    1a5c:	3c020601 	lui	v0,0x601
    1a60:	1000000a 	b	1a8c <func_8096EEDC+0x60>
    1a64:	24429198 	addiu	v0,v0,-28264
    1a68:	3c020601 	lui	v0,0x601
    1a6c:	10000007 	b	1a8c <func_8096EEDC+0x60>
    1a70:	24429430 	addiu	v0,v0,-27600
    1a74:	3c020601 	lui	v0,0x601
    1a78:	10000004 	b	1a8c <func_8096EEDC+0x60>
    1a7c:	24429690 	addiu	v0,v0,-26992
    1a80:	0c000000 	jal	0 <DemoEc_Destroy>
    1a84:	24840000 	addiu	a0,a0,0
    1a88:	00001025 	move	v0,zero
    1a8c:	8fbf0014 	lw	ra,20(sp)
    1a90:	27bd0018 	addiu	sp,sp,24
    1a94:	03e00008 	jr	ra
    1a98:	00000000 	nop

00001a9c <func_8096EF4C>:
    1a9c:	27bdffe8 	addiu	sp,sp,-24
    1aa0:	2401000f 	li	at,15
    1aa4:	afbf0014 	sw	ra,20(sp)
    1aa8:	afa40018 	sw	a0,24(sp)
    1aac:	afa60020 	sw	a2,32(sp)
    1ab0:	14a10016 	bne	a1,at,1b0c <func_8096EF4C+0x70>
    1ab4:	afa70024 	sw	a3,36(sp)
    1ab8:	0c000000 	jal	0 <DemoEc_Destroy>
    1abc:	8fa40028 	lw	a0,40(sp)
    1ac0:	8fa5002c 	lw	a1,44(sp)
    1ac4:	0002c100 	sll	t8,v0,0x4
    1ac8:	0018cf02 	srl	t9,t8,0x1c
    1acc:	8ca40000 	lw	a0,0(a1)
    1ad0:	00194080 	sll	t0,t9,0x2
    1ad4:	3c0fde00 	lui	t7,0xde00
    1ad8:	248e0008 	addiu	t6,a0,8
    1adc:	3c090000 	lui	t1,0x0
    1ae0:	acae0000 	sw	t6,0(a1)
    1ae4:	01284821 	addu	t1,t1,t0
    1ae8:	3c0100ff 	lui	at,0xff
    1aec:	ac8f0000 	sw	t7,0(a0)
    1af0:	8d290000 	lw	t1,0(t1)
    1af4:	3421ffff 	ori	at,at,0xffff
    1af8:	00415024 	and	t2,v0,at
    1afc:	3c018000 	lui	at,0x8000
    1b00:	012a5821 	addu	t3,t1,t2
    1b04:	01616021 	addu	t4,t3,at
    1b08:	ac8c0004 	sw	t4,4(a0)
    1b0c:	8fbf0014 	lw	ra,20(sp)
    1b10:	27bd0018 	addiu	sp,sp,24
    1b14:	03e00008 	jr	ra
    1b18:	00000000 	nop

00001b1c <func_8096EFCC>:
    1b1c:	27bdffe0 	addiu	sp,sp,-32
    1b20:	afbf001c 	sw	ra,28(sp)
    1b24:	84820190 	lh	v0,400(a0)
    1b28:	3c060000 	lui	a2,0x0
    1b2c:	3c0f0000 	lui	t7,0x0
    1b30:	00027080 	sll	t6,v0,0x2
    1b34:	00ce3021 	addu	a2,a2,t6
    1b38:	25ef0000 	addiu	t7,t7,0
    1b3c:	8cc60000 	lw	a2,0(a2)
    1b40:	afaf0014 	sw	t7,20(sp)
    1b44:	afa00010 	sw	zero,16(sp)
    1b48:	0c000000 	jal	0 <DemoEc_Destroy>
    1b4c:	00003825 	move	a3,zero
    1b50:	8fbf001c 	lw	ra,28(sp)
    1b54:	27bd0020 	addiu	sp,sp,32
    1b58:	03e00008 	jr	ra
    1b5c:	00000000 	nop

00001b60 <func_8096F010>:
    1b60:	27bdffd8 	addiu	sp,sp,-40
    1b64:	afbf0024 	sw	ra,36(sp)
    1b68:	afb00020 	sw	s0,32(sp)
    1b6c:	00808025 	move	s0,a0
    1b70:	0c000000 	jal	0 <DemoEc_Destroy>
    1b74:	afa5002c 	sw	a1,44(sp)
    1b78:	3c060601 	lui	a2,0x601
    1b7c:	24c6bfa8 	addiu	a2,a2,-16472
    1b80:	02002025 	move	a0,s0
    1b84:	0c000000 	jal	0 <DemoEc_Destroy>
    1b88:	8fa5002c 	lw	a1,44(sp)
    1b8c:	02002025 	move	a0,s0
    1b90:	0c000000 	jal	0 <DemoEc_Destroy>
    1b94:	8fa5002c 	lw	a1,44(sp)
    1b98:	3c050601 	lui	a1,0x601
    1b9c:	24a5c918 	addiu	a1,a1,-14056
    1ba0:	02002025 	move	a0,s0
    1ba4:	00003025 	move	a2,zero
    1ba8:	24070000 	li	a3,0
    1bac:	0c000000 	jal	0 <DemoEc_Destroy>
    1bb0:	afa00010 	sw	zero,16(sp)
    1bb4:	02002025 	move	a0,s0
    1bb8:	0c000000 	jal	0 <DemoEc_Destroy>
    1bbc:	8fa5002c 	lw	a1,44(sp)
    1bc0:	3c060000 	lui	a2,0x0
    1bc4:	24c60000 	addiu	a2,a2,0
    1bc8:	260400b4 	addiu	a0,s0,180
    1bcc:	24050000 	li	a1,0
    1bd0:	0c000000 	jal	0 <DemoEc_Destroy>
    1bd4:	3c0741f0 	lui	a3,0x41f0
    1bd8:	240e000f 	li	t6,15
    1bdc:	240f000d 	li	t7,13
    1be0:	ae0e0194 	sw	t6,404(s0)
    1be4:	ae0f0198 	sw	t7,408(s0)
    1be8:	8fbf0024 	lw	ra,36(sp)
    1bec:	8fb00020 	lw	s0,32(sp)
    1bf0:	27bd0028 	addiu	sp,sp,40
    1bf4:	03e00008 	jr	ra
    1bf8:	00000000 	nop

00001bfc <func_8096F0AC>:
    1bfc:	27bdffe8 	addiu	sp,sp,-24
    1c00:	afbf0014 	sw	ra,20(sp)
    1c04:	afa40018 	sw	a0,24(sp)
    1c08:	0c000000 	jal	0 <DemoEc_Destroy>
    1c0c:	afa5001c 	sw	a1,28(sp)
    1c10:	8fa40018 	lw	a0,24(sp)
    1c14:	0c000000 	jal	0 <DemoEc_Destroy>
    1c18:	8fa5001c 	lw	a1,28(sp)
    1c1c:	0c000000 	jal	0 <DemoEc_Destroy>
    1c20:	8fa40018 	lw	a0,24(sp)
    1c24:	8fa40018 	lw	a0,24(sp)
    1c28:	0c000000 	jal	0 <DemoEc_Destroy>
    1c2c:	8fa5001c 	lw	a1,28(sp)
    1c30:	8fbf0014 	lw	ra,20(sp)
    1c34:	27bd0018 	addiu	sp,sp,24
    1c38:	03e00008 	jr	ra
    1c3c:	00000000 	nop

00001c40 <func_8096F0F0>:
    1c40:	27bdffe0 	addiu	sp,sp,-32
    1c44:	afbf001c 	sw	ra,28(sp)
    1c48:	84820190 	lh	v0,400(a0)
    1c4c:	3c060000 	lui	a2,0x0
    1c50:	afa00014 	sw	zero,20(sp)
    1c54:	00027080 	sll	t6,v0,0x2
    1c58:	00ce3021 	addu	a2,a2,t6
    1c5c:	8cc60000 	lw	a2,0(a2)
    1c60:	afa00010 	sw	zero,16(sp)
    1c64:	0c000000 	jal	0 <DemoEc_Destroy>
    1c68:	00003825 	move	a3,zero
    1c6c:	8fbf001c 	lw	ra,28(sp)
    1c70:	27bd0020 	addiu	sp,sp,32
    1c74:	03e00008 	jr	ra
    1c78:	00000000 	nop

00001c7c <func_8096F12C>:
    1c7c:	27bdffd8 	addiu	sp,sp,-40
    1c80:	afbf0024 	sw	ra,36(sp)
    1c84:	afb00020 	sw	s0,32(sp)
    1c88:	00808025 	move	s0,a0
    1c8c:	0c000000 	jal	0 <DemoEc_Destroy>
    1c90:	afa5002c 	sw	a1,44(sp)
    1c94:	3c060601 	lui	a2,0x601
    1c98:	24c686d0 	addiu	a2,a2,-31024
    1c9c:	02002025 	move	a0,s0
    1ca0:	0c000000 	jal	0 <DemoEc_Destroy>
    1ca4:	8fa5002c 	lw	a1,44(sp)
    1ca8:	02002025 	move	a0,s0
    1cac:	0c000000 	jal	0 <DemoEc_Destroy>
    1cb0:	8fa5002c 	lw	a1,44(sp)
    1cb4:	3c050600 	lui	a1,0x600
    1cb8:	24a56c40 	addiu	a1,a1,27712
    1cbc:	02002025 	move	a0,s0
    1cc0:	00003025 	move	a2,zero
    1cc4:	24070000 	li	a3,0
    1cc8:	0c000000 	jal	0 <DemoEc_Destroy>
    1ccc:	afa00010 	sw	zero,16(sp)
    1cd0:	02002025 	move	a0,s0
    1cd4:	0c000000 	jal	0 <DemoEc_Destroy>
    1cd8:	8fa5002c 	lw	a1,44(sp)
    1cdc:	3c060000 	lui	a2,0x0
    1ce0:	24c60000 	addiu	a2,a2,0
    1ce4:	260400b4 	addiu	a0,s0,180
    1ce8:	24050000 	li	a1,0
    1cec:	0c000000 	jal	0 <DemoEc_Destroy>
    1cf0:	3c0741f0 	lui	a3,0x41f0
    1cf4:	240e0010 	li	t6,16
    1cf8:	240f000e 	li	t7,14
    1cfc:	ae0e0194 	sw	t6,404(s0)
    1d00:	ae0f0198 	sw	t7,408(s0)
    1d04:	02002025 	move	a0,s0
    1d08:	0c000000 	jal	0 <DemoEc_Destroy>
    1d0c:	24050003 	li	a1,3
    1d10:	8fbf0024 	lw	ra,36(sp)
    1d14:	8fb00020 	lw	s0,32(sp)
    1d18:	27bd0028 	addiu	sp,sp,40
    1d1c:	03e00008 	jr	ra
    1d20:	00000000 	nop

00001d24 <func_8096F1D4>:
    1d24:	27bdffe8 	addiu	sp,sp,-24
    1d28:	afbf0014 	sw	ra,20(sp)
    1d2c:	3c014200 	lui	at,0x4200
    1d30:	c4800164 	lwc1	$f0,356(a0)
    1d34:	44812000 	mtc1	at,$f4
    1d38:	00000000 	nop
    1d3c:	4604003e 	c.le.s	$f0,$f4
    1d40:	00000000 	nop
    1d44:	45000005 	bc1f	1d5c <func_8096F1D4+0x38>
    1d48:	00000000 	nop
    1d4c:	0c000000 	jal	0 <DemoEc_Destroy>
    1d50:	24050003 	li	a1,3
    1d54:	10000004 	b	1d68 <func_8096F1D4+0x44>
    1d58:	8fbf0014 	lw	ra,20(sp)
    1d5c:	0c000000 	jal	0 <DemoEc_Destroy>
    1d60:	00000000 	nop
    1d64:	8fbf0014 	lw	ra,20(sp)
    1d68:	27bd0018 	addiu	sp,sp,24
    1d6c:	03e00008 	jr	ra
    1d70:	00000000 	nop

00001d74 <func_8096F224>:
    1d74:	27bdffe0 	addiu	sp,sp,-32
    1d78:	afbf001c 	sw	ra,28(sp)
    1d7c:	0c000000 	jal	0 <DemoEc_Destroy>
    1d80:	afa40020 	sw	a0,32(sp)
    1d84:	3c050600 	lui	a1,0x600
    1d88:	24a56930 	addiu	a1,a1,26928
    1d8c:	8fa40020 	lw	a0,32(sp)
    1d90:	24060002 	li	a2,2
    1d94:	3c07c100 	lui	a3,0xc100
    1d98:	0c000000 	jal	0 <DemoEc_Destroy>
    1d9c:	afa00010 	sw	zero,16(sp)
    1da0:	8faf0020 	lw	t7,32(sp)
    1da4:	240e0011 	li	t6,17
    1da8:	adee0194 	sw	t6,404(t7)
    1dac:	8fbf001c 	lw	ra,28(sp)
    1db0:	27bd0020 	addiu	sp,sp,32
    1db4:	03e00008 	jr	ra
    1db8:	00000000 	nop

00001dbc <func_8096F26C>:
    1dbc:	27bdffe0 	addiu	sp,sp,-32
    1dc0:	afbf001c 	sw	ra,28(sp)
    1dc4:	10a0000a 	beqz	a1,1df0 <func_8096F26C+0x34>
    1dc8:	afa40020 	sw	a0,32(sp)
    1dcc:	3c050600 	lui	a1,0x600
    1dd0:	24a56220 	addiu	a1,a1,25120
    1dd4:	00003025 	move	a2,zero
    1dd8:	24070000 	li	a3,0
    1ddc:	0c000000 	jal	0 <DemoEc_Destroy>
    1de0:	afa00010 	sw	zero,16(sp)
    1de4:	8faf0020 	lw	t7,32(sp)
    1de8:	240e0012 	li	t6,18
    1dec:	adee0194 	sw	t6,404(t7)
    1df0:	8fbf001c 	lw	ra,28(sp)
    1df4:	27bd0020 	addiu	sp,sp,32
    1df8:	03e00008 	jr	ra
    1dfc:	00000000 	nop

00001e00 <func_8096F2B0>:
    1e00:	27bdffe0 	addiu	sp,sp,-32
    1e04:	afa40020 	sw	a0,32(sp)
    1e08:	afbf0014 	sw	ra,20(sp)
    1e0c:	afa50024 	sw	a1,36(sp)
    1e10:	00a02025 	move	a0,a1
    1e14:	0c000000 	jal	0 <DemoEc_Destroy>
    1e18:	00c02825 	move	a1,a2
    1e1c:	1040000d 	beqz	v0,1e54 <func_8096F2B0+0x54>
    1e20:	8fa40020 	lw	a0,32(sp)
    1e24:	94460000 	lhu	a2,0(v0)
    1e28:	8c83019c 	lw	v1,412(a0)
    1e2c:	24010002 	li	at,2
    1e30:	50c30009 	beql	a2,v1,1e58 <func_8096F2B0+0x58>
    1e34:	8fbf0014 	lw	ra,20(sp)
    1e38:	14c10005 	bne	a2,at,1e50 <func_8096F2B0+0x50>
    1e3c:	8fa50024 	lw	a1,36(sp)
    1e40:	0c000000 	jal	0 <DemoEc_Destroy>
    1e44:	afa60018 	sw	a2,24(sp)
    1e48:	8fa60018 	lw	a2,24(sp)
    1e4c:	8fa40020 	lw	a0,32(sp)
    1e50:	ac86019c 	sw	a2,412(a0)
    1e54:	8fbf0014 	lw	ra,20(sp)
    1e58:	27bd0020 	addiu	sp,sp,32
    1e5c:	03e00008 	jr	ra
    1e60:	00000000 	nop

00001e64 <func_8096F314>:
    1e64:	27bdffe0 	addiu	sp,sp,-32
    1e68:	afbf001c 	sw	ra,28(sp)
    1e6c:	afb00018 	sw	s0,24(sp)
    1e70:	00808025 	move	s0,a0
    1e74:	0c000000 	jal	0 <DemoEc_Destroy>
    1e78:	afa50024 	sw	a1,36(sp)
    1e7c:	02002025 	move	a0,s0
    1e80:	0c000000 	jal	0 <DemoEc_Destroy>
    1e84:	8fa50024 	lw	a1,36(sp)
    1e88:	02002025 	move	a0,s0
    1e8c:	8fa50024 	lw	a1,36(sp)
    1e90:	0c000000 	jal	0 <DemoEc_Destroy>
    1e94:	24060006 	li	a2,6
    1e98:	02002025 	move	a0,s0
    1e9c:	0c000000 	jal	0 <DemoEc_Destroy>
    1ea0:	8fa50024 	lw	a1,36(sp)
    1ea4:	02002025 	move	a0,s0
    1ea8:	8fa50024 	lw	a1,36(sp)
    1eac:	0c000000 	jal	0 <DemoEc_Destroy>
    1eb0:	24060006 	li	a2,6
    1eb4:	8fbf001c 	lw	ra,28(sp)
    1eb8:	8fb00018 	lw	s0,24(sp)
    1ebc:	27bd0020 	addiu	sp,sp,32
    1ec0:	03e00008 	jr	ra
    1ec4:	00000000 	nop

00001ec8 <func_8096F378>:
    1ec8:	27bdffd8 	addiu	sp,sp,-40
    1ecc:	afbf001c 	sw	ra,28(sp)
    1ed0:	afb00018 	sw	s0,24(sp)
    1ed4:	00808025 	move	s0,a0
    1ed8:	0c000000 	jal	0 <DemoEc_Destroy>
    1edc:	afa5002c 	sw	a1,44(sp)
    1ee0:	afa20024 	sw	v0,36(sp)
    1ee4:	02002025 	move	a0,s0
    1ee8:	0c000000 	jal	0 <DemoEc_Destroy>
    1eec:	8fa5002c 	lw	a1,44(sp)
    1ef0:	0c000000 	jal	0 <DemoEc_Destroy>
    1ef4:	02002025 	move	a0,s0
    1ef8:	02002025 	move	a0,s0
    1efc:	0c000000 	jal	0 <DemoEc_Destroy>
    1f00:	8fa5002c 	lw	a1,44(sp)
    1f04:	02002025 	move	a0,s0
    1f08:	0c000000 	jal	0 <DemoEc_Destroy>
    1f0c:	8fa50024 	lw	a1,36(sp)
    1f10:	8fbf001c 	lw	ra,28(sp)
    1f14:	8fb00018 	lw	s0,24(sp)
    1f18:	27bd0028 	addiu	sp,sp,40
    1f1c:	03e00008 	jr	ra
    1f20:	00000000 	nop

00001f24 <func_8096F3D4>:
    1f24:	27bdffe8 	addiu	sp,sp,-24
    1f28:	afbf0014 	sw	ra,20(sp)
    1f2c:	afa40018 	sw	a0,24(sp)
    1f30:	0c000000 	jal	0 <DemoEc_Destroy>
    1f34:	afa5001c 	sw	a1,28(sp)
    1f38:	8fa40018 	lw	a0,24(sp)
    1f3c:	0c000000 	jal	0 <DemoEc_Destroy>
    1f40:	8fa5001c 	lw	a1,28(sp)
    1f44:	0c000000 	jal	0 <DemoEc_Destroy>
    1f48:	8fa40018 	lw	a0,24(sp)
    1f4c:	8fa40018 	lw	a0,24(sp)
    1f50:	0c000000 	jal	0 <DemoEc_Destroy>
    1f54:	8fa5001c 	lw	a1,28(sp)
    1f58:	8fbf0014 	lw	ra,20(sp)
    1f5c:	27bd0018 	addiu	sp,sp,24
    1f60:	03e00008 	jr	ra
    1f64:	00000000 	nop

00001f68 <func_8096F418>:
    1f68:	27bdffe0 	addiu	sp,sp,-32
    1f6c:	afbf001c 	sw	ra,28(sp)
    1f70:	84820190 	lh	v0,400(a0)
    1f74:	3c060000 	lui	a2,0x0
    1f78:	afa00014 	sw	zero,20(sp)
    1f7c:	00027080 	sll	t6,v0,0x2
    1f80:	00ce3021 	addu	a2,a2,t6
    1f84:	8cc60000 	lw	a2,0(a2)
    1f88:	afa00010 	sw	zero,16(sp)
    1f8c:	0c000000 	jal	0 <DemoEc_Destroy>
    1f90:	00003825 	move	a3,zero
    1f94:	8fbf001c 	lw	ra,28(sp)
    1f98:	27bd0020 	addiu	sp,sp,32
    1f9c:	03e00008 	jr	ra
    1fa0:	00000000 	nop

00001fa4 <func_8096F454>:
    1fa4:	27bdffd8 	addiu	sp,sp,-40
    1fa8:	afbf0024 	sw	ra,36(sp)
    1fac:	afb00020 	sw	s0,32(sp)
    1fb0:	00808025 	move	s0,a0
    1fb4:	0c000000 	jal	0 <DemoEc_Destroy>
    1fb8:	afa5002c 	sw	a1,44(sp)
    1fbc:	3c060600 	lui	a2,0x600
    1fc0:	24c67fb8 	addiu	a2,a2,32696
    1fc4:	02002025 	move	a0,s0
    1fc8:	0c000000 	jal	0 <DemoEc_Destroy>
    1fcc:	8fa5002c 	lw	a1,44(sp)
    1fd0:	02002025 	move	a0,s0
    1fd4:	0c000000 	jal	0 <DemoEc_Destroy>
    1fd8:	8fa5002c 	lw	a1,44(sp)
    1fdc:	3c050601 	lui	a1,0x601
    1fe0:	24a595dc 	addiu	a1,a1,-27172
    1fe4:	02002025 	move	a0,s0
    1fe8:	00003025 	move	a2,zero
    1fec:	24070000 	li	a3,0
    1ff0:	0c000000 	jal	0 <DemoEc_Destroy>
    1ff4:	afa00010 	sw	zero,16(sp)
    1ff8:	02002025 	move	a0,s0
    1ffc:	0c000000 	jal	0 <DemoEc_Destroy>
    2000:	8fa5002c 	lw	a1,44(sp)
    2004:	3c060000 	lui	a2,0x0
    2008:	24c60000 	addiu	a2,a2,0
    200c:	260400b4 	addiu	a0,s0,180
    2010:	24050000 	li	a1,0
    2014:	0c000000 	jal	0 <DemoEc_Destroy>
    2018:	3c0741f0 	lui	a3,0x41f0
    201c:	240e0013 	li	t6,19
    2020:	240f000f 	li	t7,15
    2024:	ae0e0194 	sw	t6,404(s0)
    2028:	ae0f0198 	sw	t7,408(s0)
    202c:	02002025 	move	a0,s0
    2030:	0c000000 	jal	0 <DemoEc_Destroy>
    2034:	24050003 	li	a1,3
    2038:	8fbf0024 	lw	ra,36(sp)
    203c:	8fb00020 	lw	s0,32(sp)
    2040:	27bd0028 	addiu	sp,sp,40
    2044:	03e00008 	jr	ra
    2048:	00000000 	nop

0000204c <func_8096F4FC>:
    204c:	27bdffe0 	addiu	sp,sp,-32
    2050:	afbf001c 	sw	ra,28(sp)
    2054:	0c000000 	jal	0 <DemoEc_Destroy>
    2058:	afa40020 	sw	a0,32(sp)
    205c:	3c050601 	lui	a1,0x601
    2060:	24a58d1c 	addiu	a1,a1,-29412
    2064:	8fa40020 	lw	a0,32(sp)
    2068:	24060002 	li	a2,2
    206c:	3c07c100 	lui	a3,0xc100
    2070:	0c000000 	jal	0 <DemoEc_Destroy>
    2074:	afa00010 	sw	zero,16(sp)
    2078:	8faf0020 	lw	t7,32(sp)
    207c:	240e0014 	li	t6,20
    2080:	adee0194 	sw	t6,404(t7)
    2084:	8fbf001c 	lw	ra,28(sp)
    2088:	27bd0020 	addiu	sp,sp,32
    208c:	03e00008 	jr	ra
    2090:	00000000 	nop

00002094 <func_8096F544>:
    2094:	27bdffe0 	addiu	sp,sp,-32
    2098:	10a00007 	beqz	a1,20b8 <func_8096F544+0x24>
    209c:	afbf001c 	sw	ra,28(sp)
    20a0:	3c050601 	lui	a1,0x601
    20a4:	24a59234 	addiu	a1,a1,-28108
    20a8:	00003025 	move	a2,zero
    20ac:	24070000 	li	a3,0
    20b0:	0c000000 	jal	0 <DemoEc_Destroy>
    20b4:	afa00010 	sw	zero,16(sp)
    20b8:	8fbf001c 	lw	ra,28(sp)
    20bc:	27bd0020 	addiu	sp,sp,32
    20c0:	03e00008 	jr	ra
    20c4:	00000000 	nop

000020c8 <func_8096F578>:
    20c8:	27bdffe0 	addiu	sp,sp,-32
    20cc:	afa40020 	sw	a0,32(sp)
    20d0:	afbf0014 	sw	ra,20(sp)
    20d4:	afa50024 	sw	a1,36(sp)
    20d8:	00a02025 	move	a0,a1
    20dc:	0c000000 	jal	0 <DemoEc_Destroy>
    20e0:	00c02825 	move	a1,a2
    20e4:	1040000d 	beqz	v0,211c <func_8096F578+0x54>
    20e8:	8fa40020 	lw	a0,32(sp)
    20ec:	94460000 	lhu	a2,0(v0)
    20f0:	8c83019c 	lw	v1,412(a0)
    20f4:	24010002 	li	at,2
    20f8:	50c30009 	beql	a2,v1,2120 <func_8096F578+0x58>
    20fc:	8fbf0014 	lw	ra,20(sp)
    2100:	14c10005 	bne	a2,at,2118 <func_8096F578+0x50>
    2104:	8fa50024 	lw	a1,36(sp)
    2108:	0c000000 	jal	0 <DemoEc_Destroy>
    210c:	afa60018 	sw	a2,24(sp)
    2110:	8fa60018 	lw	a2,24(sp)
    2114:	8fa40020 	lw	a0,32(sp)
    2118:	ac86019c 	sw	a2,412(a0)
    211c:	8fbf0014 	lw	ra,20(sp)
    2120:	27bd0020 	addiu	sp,sp,32
    2124:	03e00008 	jr	ra
    2128:	00000000 	nop

0000212c <func_8096F5DC>:
    212c:	27bdffe0 	addiu	sp,sp,-32
    2130:	afbf001c 	sw	ra,28(sp)
    2134:	afb00018 	sw	s0,24(sp)
    2138:	00808025 	move	s0,a0
    213c:	0c000000 	jal	0 <DemoEc_Destroy>
    2140:	afa50024 	sw	a1,36(sp)
    2144:	02002025 	move	a0,s0
    2148:	0c000000 	jal	0 <DemoEc_Destroy>
    214c:	8fa50024 	lw	a1,36(sp)
    2150:	02002025 	move	a0,s0
    2154:	8fa50024 	lw	a1,36(sp)
    2158:	0c000000 	jal	0 <DemoEc_Destroy>
    215c:	24060007 	li	a2,7
    2160:	02002025 	move	a0,s0
    2164:	0c000000 	jal	0 <DemoEc_Destroy>
    2168:	8fa50024 	lw	a1,36(sp)
    216c:	02002025 	move	a0,s0
    2170:	8fa50024 	lw	a1,36(sp)
    2174:	0c000000 	jal	0 <DemoEc_Destroy>
    2178:	24060007 	li	a2,7
    217c:	8fbf001c 	lw	ra,28(sp)
    2180:	8fb00018 	lw	s0,24(sp)
    2184:	27bd0020 	addiu	sp,sp,32
    2188:	03e00008 	jr	ra
    218c:	00000000 	nop

00002190 <func_8096F640>:
    2190:	27bdffd8 	addiu	sp,sp,-40
    2194:	afbf001c 	sw	ra,28(sp)
    2198:	afb00018 	sw	s0,24(sp)
    219c:	00808025 	move	s0,a0
    21a0:	0c000000 	jal	0 <DemoEc_Destroy>
    21a4:	afa5002c 	sw	a1,44(sp)
    21a8:	afa20024 	sw	v0,36(sp)
    21ac:	02002025 	move	a0,s0
    21b0:	0c000000 	jal	0 <DemoEc_Destroy>
    21b4:	8fa5002c 	lw	a1,44(sp)
    21b8:	0c000000 	jal	0 <DemoEc_Destroy>
    21bc:	02002025 	move	a0,s0
    21c0:	02002025 	move	a0,s0
    21c4:	0c000000 	jal	0 <DemoEc_Destroy>
    21c8:	8fa5002c 	lw	a1,44(sp)
    21cc:	02002025 	move	a0,s0
    21d0:	0c000000 	jal	0 <DemoEc_Destroy>
    21d4:	8fa50024 	lw	a1,36(sp)
    21d8:	8fbf001c 	lw	ra,28(sp)
    21dc:	8fb00018 	lw	s0,24(sp)
    21e0:	27bd0028 	addiu	sp,sp,40
    21e4:	03e00008 	jr	ra
    21e8:	00000000 	nop

000021ec <func_8096F69C>:
    21ec:	27bdffe0 	addiu	sp,sp,-32
    21f0:	afbf001c 	sw	ra,28(sp)
    21f4:	84820190 	lh	v0,400(a0)
    21f8:	3c060000 	lui	a2,0x0
    21fc:	afa00014 	sw	zero,20(sp)
    2200:	00027080 	sll	t6,v0,0x2
    2204:	00ce3021 	addu	a2,a2,t6
    2208:	8cc60000 	lw	a2,0(a2)
    220c:	afa00010 	sw	zero,16(sp)
    2210:	0c000000 	jal	0 <DemoEc_Destroy>
    2214:	00003825 	move	a3,zero
    2218:	8fbf001c 	lw	ra,28(sp)
    221c:	27bd0020 	addiu	sp,sp,32
    2220:	03e00008 	jr	ra
    2224:	00000000 	nop

00002228 <func_8096F6D8>:
    2228:	27bdffd8 	addiu	sp,sp,-40
    222c:	afbf0024 	sw	ra,36(sp)
    2230:	afb00020 	sw	s0,32(sp)
    2234:	00808025 	move	s0,a0
    2238:	0c000000 	jal	0 <DemoEc_Destroy>
    223c:	afa5002c 	sw	a1,44(sp)
    2240:	3c060600 	lui	a2,0x600
    2244:	24c62530 	addiu	a2,a2,9520
    2248:	02002025 	move	a0,s0
    224c:	0c000000 	jal	0 <DemoEc_Destroy>
    2250:	8fa5002c 	lw	a1,44(sp)
    2254:	02002025 	move	a0,s0
    2258:	0c000000 	jal	0 <DemoEc_Destroy>
    225c:	8fa5002c 	lw	a1,44(sp)
    2260:	8602001c 	lh	v0,28(s0)
    2264:	24010016 	li	at,22
    2268:	02002025 	move	a0,s0
    226c:	14410004 	bne	v0,at,2280 <func_8096F6D8+0x58>
    2270:	00003025 	move	a2,zero
    2274:	3c050601 	lui	a1,0x601
    2278:	10000008 	b	229c <func_8096F6D8+0x74>
    227c:	24a59bb4 	addiu	a1,a1,-25676
    2280:	24010017 	li	at,23
    2284:	14410004 	bne	v0,at,2298 <func_8096F6D8+0x70>
    2288:	3c050601 	lui	a1,0x601
    228c:	3c050601 	lui	a1,0x601
    2290:	10000002 	b	229c <func_8096F6D8+0x74>
    2294:	24a5a07c 	addiu	a1,a1,-24452
    2298:	24a5a474 	addiu	a1,a1,-23436
    229c:	24070000 	li	a3,0
    22a0:	0c000000 	jal	0 <DemoEc_Destroy>
    22a4:	afa00010 	sw	zero,16(sp)
    22a8:	02002025 	move	a0,s0
    22ac:	0c000000 	jal	0 <DemoEc_Destroy>
    22b0:	8fa5002c 	lw	a1,44(sp)
    22b4:	3c060000 	lui	a2,0x0
    22b8:	24c60000 	addiu	a2,a2,0
    22bc:	260400b4 	addiu	a0,s0,180
    22c0:	24050000 	li	a1,0
    22c4:	0c000000 	jal	0 <DemoEc_Destroy>
    22c8:	3c0741f0 	lui	a3,0x41f0
    22cc:	240e0015 	li	t6,21
    22d0:	240f0010 	li	t7,16
    22d4:	ae0e0194 	sw	t6,404(s0)
    22d8:	ae0f0198 	sw	t7,408(s0)
    22dc:	8fbf0024 	lw	ra,36(sp)
    22e0:	8fb00020 	lw	s0,32(sp)
    22e4:	27bd0028 	addiu	sp,sp,40
    22e8:	03e00008 	jr	ra
    22ec:	00000000 	nop

000022f0 <func_8096F7A0>:
    22f0:	27bdffe8 	addiu	sp,sp,-24
    22f4:	afbf0014 	sw	ra,20(sp)
    22f8:	afa40018 	sw	a0,24(sp)
    22fc:	0c000000 	jal	0 <DemoEc_Destroy>
    2300:	afa5001c 	sw	a1,28(sp)
    2304:	8fa40018 	lw	a0,24(sp)
    2308:	0c000000 	jal	0 <DemoEc_Destroy>
    230c:	8fa5001c 	lw	a1,28(sp)
    2310:	8fa40018 	lw	a0,24(sp)
    2314:	0c000000 	jal	0 <DemoEc_Destroy>
    2318:	8fa5001c 	lw	a1,28(sp)
    231c:	8fbf0014 	lw	ra,20(sp)
    2320:	27bd0018 	addiu	sp,sp,24
    2324:	03e00008 	jr	ra
    2328:	00000000 	nop

0000232c <func_8096F7DC>:
    232c:	27bdffe0 	addiu	sp,sp,-32
    2330:	afbf001c 	sw	ra,28(sp)
    2334:	afa00010 	sw	zero,16(sp)
    2338:	afa00014 	sw	zero,20(sp)
    233c:	00003025 	move	a2,zero
    2340:	0c000000 	jal	0 <DemoEc_Destroy>
    2344:	00003825 	move	a3,zero
    2348:	8fbf001c 	lw	ra,28(sp)
    234c:	27bd0020 	addiu	sp,sp,32
    2350:	03e00008 	jr	ra
    2354:	00000000 	nop

00002358 <func_8096F808>:
    2358:	27bdffd8 	addiu	sp,sp,-40
    235c:	afbf0024 	sw	ra,36(sp)
    2360:	afb00020 	sw	s0,32(sp)
    2364:	00808025 	move	s0,a0
    2368:	0c000000 	jal	0 <DemoEc_Destroy>
    236c:	afa5002c 	sw	a1,44(sp)
    2370:	3c060600 	lui	a2,0x600
    2374:	24c600f0 	addiu	a2,a2,240
    2378:	02002025 	move	a0,s0
    237c:	0c000000 	jal	0 <DemoEc_Destroy>
    2380:	8fa5002c 	lw	a1,44(sp)
    2384:	02002025 	move	a0,s0
    2388:	0c000000 	jal	0 <DemoEc_Destroy>
    238c:	8fa5002c 	lw	a1,44(sp)
    2390:	3c050600 	lui	a1,0x600
    2394:	24a50cd8 	addiu	a1,a1,3288
    2398:	02002025 	move	a0,s0
    239c:	00003025 	move	a2,zero
    23a0:	24070000 	li	a3,0
    23a4:	0c000000 	jal	0 <DemoEc_Destroy>
    23a8:	afa00010 	sw	zero,16(sp)
    23ac:	02002025 	move	a0,s0
    23b0:	0c000000 	jal	0 <DemoEc_Destroy>
    23b4:	8fa5002c 	lw	a1,44(sp)
    23b8:	3c060000 	lui	a2,0x0
    23bc:	24c60000 	addiu	a2,a2,0
    23c0:	260400b4 	addiu	a0,s0,180
    23c4:	24050000 	li	a1,0
    23c8:	0c000000 	jal	0 <DemoEc_Destroy>
    23cc:	3c0741f0 	lui	a3,0x41f0
    23d0:	240e0016 	li	t6,22
    23d4:	240f0011 	li	t7,17
    23d8:	ae0e0194 	sw	t6,404(s0)
    23dc:	ae0f0198 	sw	t7,408(s0)
    23e0:	8fbf0024 	lw	ra,36(sp)
    23e4:	8fb00020 	lw	s0,32(sp)
    23e8:	27bd0028 	addiu	sp,sp,40
    23ec:	03e00008 	jr	ra
    23f0:	00000000 	nop

000023f4 <func_8096F8A4>:
    23f4:	27bdffe8 	addiu	sp,sp,-24
    23f8:	afbf0014 	sw	ra,20(sp)
    23fc:	afa40018 	sw	a0,24(sp)
    2400:	0c000000 	jal	0 <DemoEc_Destroy>
    2404:	afa5001c 	sw	a1,28(sp)
    2408:	8fa40018 	lw	a0,24(sp)
    240c:	0c000000 	jal	0 <DemoEc_Destroy>
    2410:	8fa5001c 	lw	a1,28(sp)
    2414:	0c000000 	jal	0 <DemoEc_Destroy>
    2418:	8fa40018 	lw	a0,24(sp)
    241c:	8fa40018 	lw	a0,24(sp)
    2420:	0c000000 	jal	0 <DemoEc_Destroy>
    2424:	8fa5001c 	lw	a1,28(sp)
    2428:	8fbf0014 	lw	ra,20(sp)
    242c:	27bd0018 	addiu	sp,sp,24
    2430:	03e00008 	jr	ra
    2434:	00000000 	nop

00002438 <func_8096F8E8>:
    2438:	27bdffe0 	addiu	sp,sp,-32
    243c:	afbf001c 	sw	ra,28(sp)
    2440:	84820190 	lh	v0,400(a0)
    2444:	3c060000 	lui	a2,0x0
    2448:	afa00014 	sw	zero,20(sp)
    244c:	00027080 	sll	t6,v0,0x2
    2450:	00ce3021 	addu	a2,a2,t6
    2454:	8cc60000 	lw	a2,0(a2)
    2458:	afa00010 	sw	zero,16(sp)
    245c:	0c000000 	jal	0 <DemoEc_Destroy>
    2460:	00003825 	move	a3,zero
    2464:	8fbf001c 	lw	ra,28(sp)
    2468:	27bd0020 	addiu	sp,sp,32
    246c:	03e00008 	jr	ra
    2470:	00000000 	nop

00002474 <func_8096F924>:
    2474:	27bdffd8 	addiu	sp,sp,-40
    2478:	afbf0024 	sw	ra,36(sp)
    247c:	afb00020 	sw	s0,32(sp)
    2480:	00808025 	move	s0,a0
    2484:	0c000000 	jal	0 <DemoEc_Destroy>
    2488:	afa5002c 	sw	a1,44(sp)
    248c:	3c060600 	lui	a2,0x600
    2490:	24c64258 	addiu	a2,a2,16984
    2494:	02002025 	move	a0,s0
    2498:	0c000000 	jal	0 <DemoEc_Destroy>
    249c:	8fa5002c 	lw	a1,44(sp)
    24a0:	02002025 	move	a0,s0
    24a4:	0c000000 	jal	0 <DemoEc_Destroy>
    24a8:	8fa5002c 	lw	a1,44(sp)
    24ac:	3c050601 	lui	a1,0x601
    24b0:	24a5afe0 	addiu	a1,a1,-20512
    24b4:	02002025 	move	a0,s0
    24b8:	00003025 	move	a2,zero
    24bc:	24070000 	li	a3,0
    24c0:	0c000000 	jal	0 <DemoEc_Destroy>
    24c4:	afa00010 	sw	zero,16(sp)
    24c8:	02002025 	move	a0,s0
    24cc:	0c000000 	jal	0 <DemoEc_Destroy>
    24d0:	8fa5002c 	lw	a1,44(sp)
    24d4:	3c060000 	lui	a2,0x0
    24d8:	24c60000 	addiu	a2,a2,0
    24dc:	260400b4 	addiu	a0,s0,180
    24e0:	24050000 	li	a1,0
    24e4:	0c000000 	jal	0 <DemoEc_Destroy>
    24e8:	3c0741f0 	lui	a3,0x41f0
    24ec:	240e0017 	li	t6,23
    24f0:	240f0012 	li	t7,18
    24f4:	ae0e0194 	sw	t6,404(s0)
    24f8:	ae0f0198 	sw	t7,408(s0)
    24fc:	8fbf0024 	lw	ra,36(sp)
    2500:	8fb00020 	lw	s0,32(sp)
    2504:	27bd0028 	addiu	sp,sp,40
    2508:	03e00008 	jr	ra
    250c:	00000000 	nop

00002510 <func_8096F9C0>:
    2510:	27bdffe8 	addiu	sp,sp,-24
    2514:	afbf0014 	sw	ra,20(sp)
    2518:	afa40018 	sw	a0,24(sp)
    251c:	0c000000 	jal	0 <DemoEc_Destroy>
    2520:	afa5001c 	sw	a1,28(sp)
    2524:	8fa40018 	lw	a0,24(sp)
    2528:	0c000000 	jal	0 <DemoEc_Destroy>
    252c:	8fa5001c 	lw	a1,28(sp)
    2530:	0c000000 	jal	0 <DemoEc_Destroy>
    2534:	8fa40018 	lw	a0,24(sp)
    2538:	8fa40018 	lw	a0,24(sp)
    253c:	0c000000 	jal	0 <DemoEc_Destroy>
    2540:	8fa5001c 	lw	a1,28(sp)
    2544:	8fbf0014 	lw	ra,20(sp)
    2548:	27bd0018 	addiu	sp,sp,24
    254c:	03e00008 	jr	ra
    2550:	00000000 	nop

00002554 <func_8096FA04>:
    2554:	27bdffe0 	addiu	sp,sp,-32
    2558:	afbf001c 	sw	ra,28(sp)
    255c:	84820190 	lh	v0,400(a0)
    2560:	3c060000 	lui	a2,0x0
    2564:	afa00014 	sw	zero,20(sp)
    2568:	00027080 	sll	t6,v0,0x2
    256c:	00ce3021 	addu	a2,a2,t6
    2570:	8cc60000 	lw	a2,0(a2)
    2574:	afa00010 	sw	zero,16(sp)
    2578:	0c000000 	jal	0 <DemoEc_Destroy>
    257c:	00003825 	move	a3,zero
    2580:	8fbf001c 	lw	ra,28(sp)
    2584:	27bd0020 	addiu	sp,sp,32
    2588:	03e00008 	jr	ra
    258c:	00000000 	nop

00002590 <func_8096FA40>:
    2590:	27bdffd8 	addiu	sp,sp,-40
    2594:	afbf0024 	sw	ra,36(sp)
    2598:	afb00020 	sw	s0,32(sp)
    259c:	00808025 	move	s0,a0
    25a0:	0c000000 	jal	0 <DemoEc_Destroy>
    25a4:	afa5002c 	sw	a1,44(sp)
    25a8:	3c060600 	lui	a2,0x600
    25ac:	24c64658 	addiu	a2,a2,18008
    25b0:	02002025 	move	a0,s0
    25b4:	0c000000 	jal	0 <DemoEc_Destroy>
    25b8:	8fa5002c 	lw	a1,44(sp)
    25bc:	02002025 	move	a0,s0
    25c0:	0c000000 	jal	0 <DemoEc_Destroy>
    25c4:	8fa5002c 	lw	a1,44(sp)
    25c8:	3c050601 	lui	a1,0x601
    25cc:	24a5afe0 	addiu	a1,a1,-20512
    25d0:	02002025 	move	a0,s0
    25d4:	00003025 	move	a2,zero
    25d8:	24070000 	li	a3,0
    25dc:	0c000000 	jal	0 <DemoEc_Destroy>
    25e0:	afa00010 	sw	zero,16(sp)
    25e4:	02002025 	move	a0,s0
    25e8:	0c000000 	jal	0 <DemoEc_Destroy>
    25ec:	8fa5002c 	lw	a1,44(sp)
    25f0:	3c060000 	lui	a2,0x0
    25f4:	24c60000 	addiu	a2,a2,0
    25f8:	260400b4 	addiu	a0,s0,180
    25fc:	24050000 	li	a1,0
    2600:	0c000000 	jal	0 <DemoEc_Destroy>
    2604:	3c0741f0 	lui	a3,0x41f0
    2608:	240e0018 	li	t6,24
    260c:	240f0013 	li	t7,19
    2610:	ae0e0194 	sw	t6,404(s0)
    2614:	ae0f0198 	sw	t7,408(s0)
    2618:	8fbf0024 	lw	ra,36(sp)
    261c:	8fb00020 	lw	s0,32(sp)
    2620:	27bd0028 	addiu	sp,sp,40
    2624:	03e00008 	jr	ra
    2628:	00000000 	nop

0000262c <func_8096FADC>:
    262c:	27bdffe8 	addiu	sp,sp,-24
    2630:	afbf0014 	sw	ra,20(sp)
    2634:	afa40018 	sw	a0,24(sp)
    2638:	0c000000 	jal	0 <DemoEc_Destroy>
    263c:	afa5001c 	sw	a1,28(sp)
    2640:	8fa40018 	lw	a0,24(sp)
    2644:	0c000000 	jal	0 <DemoEc_Destroy>
    2648:	8fa5001c 	lw	a1,28(sp)
    264c:	8fa40018 	lw	a0,24(sp)
    2650:	0c000000 	jal	0 <DemoEc_Destroy>
    2654:	8fa5001c 	lw	a1,28(sp)
    2658:	8fbf0014 	lw	ra,20(sp)
    265c:	27bd0018 	addiu	sp,sp,24
    2660:	03e00008 	jr	ra
    2664:	00000000 	nop

00002668 <func_8096FB18>:
    2668:	27bdffe0 	addiu	sp,sp,-32
    266c:	afbf001c 	sw	ra,28(sp)
    2670:	3c060600 	lui	a2,0x600
    2674:	24c635d8 	addiu	a2,a2,13784
    2678:	afa00010 	sw	zero,16(sp)
    267c:	afa00014 	sw	zero,20(sp)
    2680:	0c000000 	jal	0 <DemoEc_Destroy>
    2684:	00003825 	move	a3,zero
    2688:	8fbf001c 	lw	ra,28(sp)
    268c:	27bd0020 	addiu	sp,sp,32
    2690:	03e00008 	jr	ra
    2694:	00000000 	nop

00002698 <func_8096FB48>:
    2698:	27bdffd8 	addiu	sp,sp,-40
    269c:	afbf0024 	sw	ra,36(sp)
    26a0:	afb00020 	sw	s0,32(sp)
    26a4:	00808025 	move	s0,a0
    26a8:	0c000000 	jal	0 <DemoEc_Destroy>
    26ac:	afa5002c 	sw	a1,44(sp)
    26b0:	3c060601 	lui	a2,0x601
    26b4:	24c685f8 	addiu	a2,a2,-31240
    26b8:	02002025 	move	a0,s0
    26bc:	0c000000 	jal	0 <DemoEc_Destroy>
    26c0:	8fa5002c 	lw	a1,44(sp)
    26c4:	02002025 	move	a0,s0
    26c8:	0c000000 	jal	0 <DemoEc_Destroy>
    26cc:	8fa5002c 	lw	a1,44(sp)
    26d0:	3c050601 	lui	a1,0x601
    26d4:	24a5afe0 	addiu	a1,a1,-20512
    26d8:	02002025 	move	a0,s0
    26dc:	00003025 	move	a2,zero
    26e0:	24070000 	li	a3,0
    26e4:	0c000000 	jal	0 <DemoEc_Destroy>
    26e8:	afa00010 	sw	zero,16(sp)
    26ec:	02002025 	move	a0,s0
    26f0:	0c000000 	jal	0 <DemoEc_Destroy>
    26f4:	8fa5002c 	lw	a1,44(sp)
    26f8:	3c060000 	lui	a2,0x0
    26fc:	24c60000 	addiu	a2,a2,0
    2700:	260400b4 	addiu	a0,s0,180
    2704:	24050000 	li	a1,0
    2708:	0c000000 	jal	0 <DemoEc_Destroy>
    270c:	3c0741f0 	lui	a3,0x41f0
    2710:	240e0019 	li	t6,25
    2714:	240f0014 	li	t7,20
    2718:	ae0e0194 	sw	t6,404(s0)
    271c:	ae0f0198 	sw	t7,408(s0)
    2720:	8fbf0024 	lw	ra,36(sp)
    2724:	8fb00020 	lw	s0,32(sp)
    2728:	27bd0028 	addiu	sp,sp,40
    272c:	03e00008 	jr	ra
    2730:	00000000 	nop

00002734 <func_8096FBE4>:
    2734:	27bdffe8 	addiu	sp,sp,-24
    2738:	afbf0014 	sw	ra,20(sp)
    273c:	afa40018 	sw	a0,24(sp)
    2740:	0c000000 	jal	0 <DemoEc_Destroy>
    2744:	afa5001c 	sw	a1,28(sp)
    2748:	8fa40018 	lw	a0,24(sp)
    274c:	0c000000 	jal	0 <DemoEc_Destroy>
    2750:	8fa5001c 	lw	a1,28(sp)
    2754:	0c000000 	jal	0 <DemoEc_Destroy>
    2758:	8fa40018 	lw	a0,24(sp)
    275c:	8fa40018 	lw	a0,24(sp)
    2760:	0c000000 	jal	0 <DemoEc_Destroy>
    2764:	8fa5001c 	lw	a1,28(sp)
    2768:	8fbf0014 	lw	ra,20(sp)
    276c:	27bd0018 	addiu	sp,sp,24
    2770:	03e00008 	jr	ra
    2774:	00000000 	nop

00002778 <func_8096FC28>:
    2778:	24010008 	li	at,8
    277c:	afa40000 	sw	a0,0(sp)
    2780:	afa60008 	sw	a2,8(sp)
    2784:	14a1001a 	bne	a1,at,27f0 <func_8096FC28+0x78>
    2788:	afa7000c 	sw	a3,12(sp)
    278c:	3c0e0000 	lui	t6,0x0
    2790:	8dce0ec0 	lw	t6,3776(t6)
    2794:	8fa30014 	lw	v1,20(sp)
    2798:	3c19de00 	lui	t9,0xde00
    279c:	31cf1000 	andi	t7,t6,0x1000
    27a0:	15e00013 	bnez	t7,27f0 <func_8096FC28+0x78>
    27a4:	3c050600 	lui	a1,0x600
    27a8:	8c640000 	lw	a0,0(v1)
    27ac:	24a574c8 	addiu	a1,a1,29896
    27b0:	00054100 	sll	t0,a1,0x4
    27b4:	00084f02 	srl	t1,t0,0x1c
    27b8:	24980008 	addiu	t8,a0,8
    27bc:	ac780000 	sw	t8,0(v1)
    27c0:	00095080 	sll	t2,t1,0x2
    27c4:	3c0b0000 	lui	t3,0x0
    27c8:	016a5821 	addu	t3,t3,t2
    27cc:	3c0100ff 	lui	at,0xff
    27d0:	ac990000 	sw	t9,0(a0)
    27d4:	8d6b0000 	lw	t3,0(t3)
    27d8:	3421ffff 	ori	at,at,0xffff
    27dc:	00a16024 	and	t4,a1,at
    27e0:	3c018000 	lui	at,0x8000
    27e4:	016c6821 	addu	t5,t3,t4
    27e8:	01a17021 	addu	t6,t5,at
    27ec:	ac8e0004 	sw	t6,4(a0)
    27f0:	03e00008 	jr	ra
    27f4:	00000000 	nop

000027f8 <func_8096FCA8>:
    27f8:	27bdffe0 	addiu	sp,sp,-32
    27fc:	afbf001c 	sw	ra,28(sp)
    2800:	84820190 	lh	v0,400(a0)
    2804:	3c060000 	lui	a2,0x0
    2808:	3c0f0000 	lui	t7,0x0
    280c:	00027080 	sll	t6,v0,0x2
    2810:	00ce3021 	addu	a2,a2,t6
    2814:	25ef0000 	addiu	t7,t7,0
    2818:	8cc60000 	lw	a2,0(a2)
    281c:	afaf0014 	sw	t7,20(sp)
    2820:	afa00010 	sw	zero,16(sp)
    2824:	0c000000 	jal	0 <DemoEc_Destroy>
    2828:	00003825 	move	a3,zero
    282c:	8fbf001c 	lw	ra,28(sp)
    2830:	27bd0020 	addiu	sp,sp,32
    2834:	03e00008 	jr	ra
    2838:	00000000 	nop

0000283c <func_8096FCEC>:
    283c:	27bdffd8 	addiu	sp,sp,-40
    2840:	afbf0024 	sw	ra,36(sp)
    2844:	afb00020 	sw	s0,32(sp)
    2848:	00808025 	move	s0,a0
    284c:	0c000000 	jal	0 <DemoEc_Destroy>
    2850:	afa5002c 	sw	a1,44(sp)
    2854:	3c060600 	lui	a2,0x600
    2858:	24c64868 	addiu	a2,a2,18536
    285c:	02002025 	move	a0,s0
    2860:	0c000000 	jal	0 <DemoEc_Destroy>
    2864:	8fa5002c 	lw	a1,44(sp)
    2868:	02002025 	move	a0,s0
    286c:	0c000000 	jal	0 <DemoEc_Destroy>
    2870:	8fa5002c 	lw	a1,44(sp)
    2874:	3c050601 	lui	a1,0x601
    2878:	24a5afe0 	addiu	a1,a1,-20512
    287c:	02002025 	move	a0,s0
    2880:	00003025 	move	a2,zero
    2884:	24070000 	li	a3,0
    2888:	0c000000 	jal	0 <DemoEc_Destroy>
    288c:	afa00010 	sw	zero,16(sp)
    2890:	02002025 	move	a0,s0
    2894:	0c000000 	jal	0 <DemoEc_Destroy>
    2898:	8fa5002c 	lw	a1,44(sp)
    289c:	3c060000 	lui	a2,0x0
    28a0:	24c60000 	addiu	a2,a2,0
    28a4:	260400b4 	addiu	a0,s0,180
    28a8:	24050000 	li	a1,0
    28ac:	0c000000 	jal	0 <DemoEc_Destroy>
    28b0:	3c0741f0 	lui	a3,0x41f0
    28b4:	240e001a 	li	t6,26
    28b8:	240f0015 	li	t7,21
    28bc:	ae0e0194 	sw	t6,404(s0)
    28c0:	ae0f0198 	sw	t7,408(s0)
    28c4:	8fbf0024 	lw	ra,36(sp)
    28c8:	8fb00020 	lw	s0,32(sp)
    28cc:	27bd0028 	addiu	sp,sp,40
    28d0:	03e00008 	jr	ra
    28d4:	00000000 	nop

000028d8 <func_8096FD88>:
    28d8:	27bdffe8 	addiu	sp,sp,-24
    28dc:	afbf0014 	sw	ra,20(sp)
    28e0:	afa40018 	sw	a0,24(sp)
    28e4:	0c000000 	jal	0 <DemoEc_Destroy>
    28e8:	afa5001c 	sw	a1,28(sp)
    28ec:	8fa40018 	lw	a0,24(sp)
    28f0:	0c000000 	jal	0 <DemoEc_Destroy>
    28f4:	8fa5001c 	lw	a1,28(sp)
    28f8:	0c000000 	jal	0 <DemoEc_Destroy>
    28fc:	8fa40018 	lw	a0,24(sp)
    2900:	8fa40018 	lw	a0,24(sp)
    2904:	0c000000 	jal	0 <DemoEc_Destroy>
    2908:	8fa5001c 	lw	a1,28(sp)
    290c:	8fbf0014 	lw	ra,20(sp)
    2910:	27bd0018 	addiu	sp,sp,24
    2914:	03e00008 	jr	ra
    2918:	00000000 	nop

0000291c <func_8096FDCC>:
    291c:	27bdffe0 	addiu	sp,sp,-32
    2920:	afbf001c 	sw	ra,28(sp)
    2924:	84820190 	lh	v0,400(a0)
    2928:	3c060000 	lui	a2,0x0
    292c:	afa00014 	sw	zero,20(sp)
    2930:	00027080 	sll	t6,v0,0x2
    2934:	00ce3021 	addu	a2,a2,t6
    2938:	8cc60000 	lw	a2,0(a2)
    293c:	afa00010 	sw	zero,16(sp)
    2940:	0c000000 	jal	0 <DemoEc_Destroy>
    2944:	00003825 	move	a3,zero
    2948:	8fbf001c 	lw	ra,28(sp)
    294c:	27bd0020 	addiu	sp,sp,32
    2950:	03e00008 	jr	ra
    2954:	00000000 	nop

00002958 <func_8096FE08>:
    2958:	27bdffc8 	addiu	sp,sp,-56
    295c:	afbf0024 	sw	ra,36(sp)
    2960:	afb00020 	sw	s0,32(sp)
    2964:	00808025 	move	s0,a0
    2968:	0c000000 	jal	0 <DemoEc_Destroy>
    296c:	afa5003c 	sw	a1,60(sp)
    2970:	3c060601 	lui	a2,0x601
    2974:	24c6fef0 	addiu	a2,a2,-272
    2978:	02002025 	move	a0,s0
    297c:	0c000000 	jal	0 <DemoEc_Destroy>
    2980:	8fa5003c 	lw	a1,60(sp)
    2984:	02002025 	move	a0,s0
    2988:	0c000000 	jal	0 <DemoEc_Destroy>
    298c:	8fa5003c 	lw	a1,60(sp)
    2990:	8602001c 	lh	v0,28(s0)
    2994:	2401001e 	li	at,30
    2998:	02002025 	move	a0,s0
    299c:	14410006 	bne	v0,at,29b8 <func_8096FE08+0x60>
    29a0:	00003025 	move	a2,zero
    29a4:	3c013f80 	lui	at,0x3f80
    29a8:	3c050600 	lui	a1,0x600
    29ac:	44810000 	mtc1	at,$f0
    29b0:	10000013 	b	2a00 <func_8096FE08+0xa8>
    29b4:	24a52fa0 	addiu	a1,a1,12192
    29b8:	2401001f 	li	at,31
    29bc:	14410005 	bne	v0,at,29d4 <func_8096FE08+0x7c>
    29c0:	3c050600 	lui	a1,0x600
    29c4:	3c013f80 	lui	at,0x3f80
    29c8:	44810000 	mtc1	at,$f0
    29cc:	1000000c 	b	2a00 <func_8096FE08+0xa8>
    29d0:	24a53a98 	addiu	a1,a1,15000
    29d4:	24010020 	li	at,32
    29d8:	14410006 	bne	v0,at,29f4 <func_8096FE08+0x9c>
    29dc:	3c050600 	lui	a1,0x600
    29e0:	3c014170 	lui	at,0x4170
    29e4:	3c050600 	lui	a1,0x600
    29e8:	44810000 	mtc1	at,$f0
    29ec:	10000004 	b	2a00 <func_8096FE08+0xa8>
    29f0:	24a52fa0 	addiu	a1,a1,12192
    29f4:	3c0140a0 	lui	at,0x40a0
    29f8:	44810000 	mtc1	at,$f0
    29fc:	24a502b8 	addiu	a1,a1,696
    2a00:	24070000 	li	a3,0
    2a04:	afa00010 	sw	zero,16(sp)
    2a08:	0c000000 	jal	0 <DemoEc_Destroy>
    2a0c:	e7a00028 	swc1	$f0,40(sp)
    2a10:	26020050 	addiu	v0,s0,80
    2a14:	c7a00028 	lwc1	$f0,40(sp)
    2a18:	c4440000 	lwc1	$f4,0(v0)
    2a1c:	c4480004 	lwc1	$f8,4(v0)
    2a20:	c4500008 	lwc1	$f16,8(v0)
    2a24:	46002182 	mul.s	$f6,$f4,$f0
    2a28:	02002025 	move	a0,s0
    2a2c:	46004282 	mul.s	$f10,$f8,$f0
    2a30:	00000000 	nop
    2a34:	46008482 	mul.s	$f18,$f16,$f0
    2a38:	e4460000 	swc1	$f6,0(v0)
    2a3c:	e44a0004 	swc1	$f10,4(v0)
    2a40:	e4520008 	swc1	$f18,8(v0)
    2a44:	0c000000 	jal	0 <DemoEc_Destroy>
    2a48:	8fa5003c 	lw	a1,60(sp)
    2a4c:	3c060000 	lui	a2,0x0
    2a50:	24c60000 	addiu	a2,a2,0
    2a54:	260400b4 	addiu	a0,s0,180
    2a58:	24050000 	li	a1,0
    2a5c:	0c000000 	jal	0 <DemoEc_Destroy>
    2a60:	3c0741f0 	lui	a3,0x41f0
    2a64:	240e001b 	li	t6,27
    2a68:	240f0016 	li	t7,22
    2a6c:	ae0e0194 	sw	t6,404(s0)
    2a70:	ae0f0198 	sw	t7,408(s0)
    2a74:	8fbf0024 	lw	ra,36(sp)
    2a78:	8fb00020 	lw	s0,32(sp)
    2a7c:	27bd0038 	addiu	sp,sp,56
    2a80:	03e00008 	jr	ra
    2a84:	00000000 	nop

00002a88 <func_8096FF38>:
    2a88:	27bdffe8 	addiu	sp,sp,-24
    2a8c:	afbf0014 	sw	ra,20(sp)
    2a90:	afa40018 	sw	a0,24(sp)
    2a94:	0c000000 	jal	0 <DemoEc_Destroy>
    2a98:	afa5001c 	sw	a1,28(sp)
    2a9c:	8fa40018 	lw	a0,24(sp)
    2aa0:	0c000000 	jal	0 <DemoEc_Destroy>
    2aa4:	8fa5001c 	lw	a1,28(sp)
    2aa8:	0c000000 	jal	0 <DemoEc_Destroy>
    2aac:	8fa40018 	lw	a0,24(sp)
    2ab0:	8fa40018 	lw	a0,24(sp)
    2ab4:	0c000000 	jal	0 <DemoEc_Destroy>
    2ab8:	8fa5001c 	lw	a1,28(sp)
    2abc:	8fbf0014 	lw	ra,20(sp)
    2ac0:	27bd0018 	addiu	sp,sp,24
    2ac4:	03e00008 	jr	ra
    2ac8:	00000000 	nop

00002acc <func_8096FF7C>:
    2acc:	27bdffe0 	addiu	sp,sp,-32
    2ad0:	afbf001c 	sw	ra,28(sp)
    2ad4:	84820190 	lh	v0,400(a0)
    2ad8:	3c060000 	lui	a2,0x0
    2adc:	3c070601 	lui	a3,0x601
    2ae0:	00027080 	sll	t6,v0,0x2
    2ae4:	00ce3021 	addu	a2,a2,t6
    2ae8:	8cc60000 	lw	a2,0(a2)
    2aec:	24e7de80 	addiu	a3,a3,-8576
    2af0:	afa00014 	sw	zero,20(sp)
    2af4:	0c000000 	jal	0 <DemoEc_Destroy>
    2af8:	afa00010 	sw	zero,16(sp)
    2afc:	8fbf001c 	lw	ra,28(sp)
    2b00:	27bd0020 	addiu	sp,sp,32
    2b04:	03e00008 	jr	ra
    2b08:	00000000 	nop

00002b0c <func_8096FFBC>:
    2b0c:	27bdffd8 	addiu	sp,sp,-40
    2b10:	afbf0024 	sw	ra,36(sp)
    2b14:	afb00020 	sw	s0,32(sp)
    2b18:	00808025 	move	s0,a0
    2b1c:	0c000000 	jal	0 <DemoEc_Destroy>
    2b20:	afa5002c 	sw	a1,44(sp)
    2b24:	3c060601 	lui	a2,0x601
    2b28:	24c68d90 	addiu	a2,a2,-29296
    2b2c:	02002025 	move	a0,s0
    2b30:	0c000000 	jal	0 <DemoEc_Destroy>
    2b34:	8fa5002c 	lw	a1,44(sp)
    2b38:	02002025 	move	a0,s0
    2b3c:	0c000000 	jal	0 <DemoEc_Destroy>
    2b40:	8fa5002c 	lw	a1,44(sp)
    2b44:	3c050601 	lui	a1,0x601
    2b48:	24a59ee0 	addiu	a1,a1,-24864
    2b4c:	02002025 	move	a0,s0
    2b50:	00003025 	move	a2,zero
    2b54:	24070000 	li	a3,0
    2b58:	0c000000 	jal	0 <DemoEc_Destroy>
    2b5c:	afa00010 	sw	zero,16(sp)
    2b60:	02002025 	move	a0,s0
    2b64:	0c000000 	jal	0 <DemoEc_Destroy>
    2b68:	8fa5002c 	lw	a1,44(sp)
    2b6c:	3c060000 	lui	a2,0x0
    2b70:	24c60000 	addiu	a2,a2,0
    2b74:	260400b4 	addiu	a0,s0,180
    2b78:	24050000 	li	a1,0
    2b7c:	0c000000 	jal	0 <DemoEc_Destroy>
    2b80:	3c0741f0 	lui	a3,0x41f0
    2b84:	240e001c 	li	t6,28
    2b88:	240f0017 	li	t7,23
    2b8c:	ae0e0194 	sw	t6,404(s0)
    2b90:	ae0f0198 	sw	t7,408(s0)
    2b94:	8fbf0024 	lw	ra,36(sp)
    2b98:	8fb00020 	lw	s0,32(sp)
    2b9c:	27bd0028 	addiu	sp,sp,40
    2ba0:	03e00008 	jr	ra
    2ba4:	00000000 	nop

00002ba8 <func_80970058>:
    2ba8:	27bdffe8 	addiu	sp,sp,-24
    2bac:	afbf0014 	sw	ra,20(sp)
    2bb0:	afa40018 	sw	a0,24(sp)
    2bb4:	0c000000 	jal	0 <DemoEc_Destroy>
    2bb8:	afa5001c 	sw	a1,28(sp)
    2bbc:	8fa40018 	lw	a0,24(sp)
    2bc0:	0c000000 	jal	0 <DemoEc_Destroy>
    2bc4:	8fa5001c 	lw	a1,28(sp)
    2bc8:	0c000000 	jal	0 <DemoEc_Destroy>
    2bcc:	8fa40018 	lw	a0,24(sp)
    2bd0:	8fa40018 	lw	a0,24(sp)
    2bd4:	0c000000 	jal	0 <DemoEc_Destroy>
    2bd8:	8fa5001c 	lw	a1,28(sp)
    2bdc:	8fbf0014 	lw	ra,20(sp)
    2be0:	27bd0018 	addiu	sp,sp,24
    2be4:	03e00008 	jr	ra
    2be8:	00000000 	nop

00002bec <func_8097009C>:
    2bec:	27bdffe0 	addiu	sp,sp,-32
    2bf0:	afbf001c 	sw	ra,28(sp)
    2bf4:	84820190 	lh	v0,400(a0)
    2bf8:	3c060000 	lui	a2,0x0
    2bfc:	3c070600 	lui	a3,0x600
    2c00:	00027080 	sll	t6,v0,0x2
    2c04:	00ce3021 	addu	a2,a2,t6
    2c08:	8cc60000 	lw	a2,0(a2)
    2c0c:	24e73770 	addiu	a3,a3,14192
    2c10:	afa00014 	sw	zero,20(sp)
    2c14:	0c000000 	jal	0 <DemoEc_Destroy>
    2c18:	afa00010 	sw	zero,16(sp)
    2c1c:	8fbf001c 	lw	ra,28(sp)
    2c20:	27bd0020 	addiu	sp,sp,32
    2c24:	03e00008 	jr	ra
    2c28:	00000000 	nop

00002c2c <func_809700DC>:
    2c2c:	27bdffe8 	addiu	sp,sp,-24
    2c30:	afbf0014 	sw	ra,20(sp)
    2c34:	8486001c 	lh	a2,28(a0)
    2c38:	3c020000 	lui	v0,0x0
    2c3c:	00803825 	move	a3,a0
    2c40:	00067080 	sll	t6,a2,0x2
    2c44:	004e1021 	addu	v0,v0,t6
    2c48:	8c420000 	lw	v0,0(v0)
    2c4c:	3c040000 	lui	a0,0x0
    2c50:	24840000 	addiu	a0,a0,0
    2c54:	14400008 	bnez	v0,2c78 <func_809700DC+0x4c>
    2c58:	00000000 	nop
    2c5c:	00c02825 	move	a1,a2
    2c60:	0c000000 	jal	0 <DemoEc_Destroy>
    2c64:	afa70018 	sw	a3,24(sp)
    2c68:	0c000000 	jal	0 <DemoEc_Destroy>
    2c6c:	8fa40018 	lw	a0,24(sp)
    2c70:	10000004 	b	2c84 <func_809700DC+0x58>
    2c74:	8fbf0014 	lw	ra,20(sp)
    2c78:	0040f809 	jalr	v0
    2c7c:	00e02025 	move	a0,a3
    2c80:	8fbf0014 	lw	ra,20(sp)
    2c84:	27bd0018 	addiu	sp,sp,24
    2c88:	03e00008 	jr	ra
    2c8c:	00000000 	nop

00002c90 <func_80970140>:
    2c90:	27bdffc8 	addiu	sp,sp,-56
    2c94:	afbf001c 	sw	ra,28(sp)
    2c98:	afb10018 	sw	s1,24(sp)
    2c9c:	afb00014 	sw	s0,20(sp)
    2ca0:	afa5003c 	sw	a1,60(sp)
    2ca4:	8483001c 	lh	v1,28(a0)
    2ca8:	8fb0003c 	lw	s0,60(sp)
    2cac:	3c0e0000 	lui	t6,0x0
    2cb0:	00031040 	sll	v0,v1,0x1
    2cb4:	01c27021 	addu	t6,t6,v0
    2cb8:	3c010001 	lui	at,0x1
    2cbc:	85ce0000 	lh	t6,0(t6)
    2cc0:	3c050000 	lui	a1,0x0
    2cc4:	342117a4 	ori	at,at,0x17a4
    2cc8:	00808825 	move	s1,a0
    2ccc:	00a22821 	addu	a1,a1,v0
    2cd0:	02018021 	addu	s0,s0,at
    2cd4:	84a50000 	lh	a1,0(a1)
    2cd8:	02002025 	move	a0,s0
    2cdc:	afa3002c 	sw	v1,44(sp)
    2ce0:	0c000000 	jal	0 <DemoEc_Destroy>
    2ce4:	a7ae0028 	sh	t6,40(sp)
    2ce8:	afa20024 	sw	v0,36(sp)
    2cec:	02002025 	move	a0,s0
    2cf0:	0c000000 	jal	0 <DemoEc_Destroy>
    2cf4:	87a50028 	lh	a1,40(sp)
    2cf8:	04400003 	bltz	v0,2d08 <func_80970140+0x78>
    2cfc:	afa20020 	sw	v0,32(sp)
    2d00:	8fa50024 	lw	a1,36(sp)
    2d04:	04a10008 	bgez	a1,2d28 <func_80970140+0x98>
    2d08:	3c040000 	lui	a0,0x0
    2d0c:	24840000 	addiu	a0,a0,0
    2d10:	0c000000 	jal	0 <DemoEc_Destroy>
    2d14:	8fa5002c 	lw	a1,44(sp)
    2d18:	0c000000 	jal	0 <DemoEc_Destroy>
    2d1c:	02202025 	move	a0,s1
    2d20:	10000010 	b	2d64 <func_80970140+0xd4>
    2d24:	8fbf001c 	lw	ra,28(sp)
    2d28:	0c000000 	jal	0 <DemoEc_Destroy>
    2d2c:	02002025 	move	a0,s0
    2d30:	1040000b 	beqz	v0,2d60 <func_80970140+0xd0>
    2d34:	02002025 	move	a0,s0
    2d38:	0c000000 	jal	0 <DemoEc_Destroy>
    2d3c:	8fa50020 	lw	a1,32(sp)
    2d40:	10400007 	beqz	v0,2d60 <func_80970140+0xd0>
    2d44:	8faf0024 	lw	t7,36(sp)
    2d48:	ae2f01a0 	sw	t7,416(s1)
    2d4c:	8fb80020 	lw	t8,32(sp)
    2d50:	02202025 	move	a0,s1
    2d54:	ae3801a4 	sw	t8,420(s1)
    2d58:	0c000000 	jal	0 <DemoEc_Destroy>
    2d5c:	8fa5003c 	lw	a1,60(sp)
    2d60:	8fbf001c 	lw	ra,28(sp)
    2d64:	8fb00014 	lw	s0,20(sp)
    2d68:	8fb10018 	lw	s1,24(sp)
    2d6c:	03e00008 	jr	ra
    2d70:	27bd0038 	addiu	sp,sp,56

00002d74 <DemoEc_Update>:
    2d74:	27bdffd8 	addiu	sp,sp,-40
    2d78:	afbf0014 	sw	ra,20(sp)
    2d7c:	afa5002c 	sw	a1,44(sp)
    2d80:	8c820194 	lw	v0,404(a0)
    2d84:	0440000b 	bltz	v0,2db4 <DemoEc_Update+0x40>
    2d88:	2841001d 	slti	at,v0,29
    2d8c:	10200009 	beqz	at,2db4 <DemoEc_Update+0x40>
    2d90:	00027080 	sll	t6,v0,0x2
    2d94:	3c0f0000 	lui	t7,0x0
    2d98:	25ef0000 	addiu	t7,t7,0
    2d9c:	01cf1821 	addu	v1,t6,t7
    2da0:	8c660000 	lw	a2,0(v1)
    2da4:	3c180000 	lui	t8,0x0
    2da8:	27180000 	addiu	t8,t8,0
    2dac:	14c00006 	bnez	a2,2dc8 <DemoEc_Update+0x54>
    2db0:	00000000 	nop
    2db4:	3c040000 	lui	a0,0x0
    2db8:	0c000000 	jal	0 <DemoEc_Destroy>
    2dbc:	24840000 	addiu	a0,a0,0
    2dc0:	1000000c 	b	2df4 <DemoEc_Update+0x80>
    2dc4:	8fbf0014 	lw	ra,20(sp)
    2dc8:	10780007 	beq	v1,t8,2de8 <DemoEc_Update+0x74>
    2dcc:	8fa5002c 	lw	a1,44(sp)
    2dd0:	afa3001c 	sw	v1,28(sp)
    2dd4:	0c000000 	jal	0 <DemoEc_Destroy>
    2dd8:	afa40028 	sw	a0,40(sp)
    2ddc:	8fa3001c 	lw	v1,28(sp)
    2de0:	8fa40028 	lw	a0,40(sp)
    2de4:	8c660000 	lw	a2,0(v1)
    2de8:	00c0f809 	jalr	a2
    2dec:	8fa5002c 	lw	a1,44(sp)
    2df0:	8fbf0014 	lw	ra,20(sp)
    2df4:	27bd0028 	addiu	sp,sp,40
    2df8:	03e00008 	jr	ra
    2dfc:	00000000 	nop

00002e00 <func_809702B0>:
    2e00:	afa40000 	sw	a0,0(sp)
    2e04:	03e00008 	jr	ra
    2e08:	afa50004 	sw	a1,4(sp)

00002e0c <DemoEc_Draw>:
    2e0c:	27bdffd8 	addiu	sp,sp,-40
    2e10:	afbf0014 	sw	ra,20(sp)
    2e14:	afa5002c 	sw	a1,44(sp)
    2e18:	8c820198 	lw	v0,408(a0)
    2e1c:	0440000b 	bltz	v0,2e4c <DemoEc_Draw+0x40>
    2e20:	28410018 	slti	at,v0,24
    2e24:	10200009 	beqz	at,2e4c <DemoEc_Draw+0x40>
    2e28:	00027080 	sll	t6,v0,0x2
    2e2c:	3c0f0000 	lui	t7,0x0
    2e30:	25ef0000 	addiu	t7,t7,0
    2e34:	01cf1821 	addu	v1,t6,t7
    2e38:	8c660000 	lw	a2,0(v1)
    2e3c:	3c180000 	lui	t8,0x0
    2e40:	27180000 	addiu	t8,t8,0
    2e44:	14c00006 	bnez	a2,2e60 <DemoEc_Draw+0x54>
    2e48:	00000000 	nop
    2e4c:	3c040000 	lui	a0,0x0
    2e50:	0c000000 	jal	0 <DemoEc_Destroy>
    2e54:	24840000 	addiu	a0,a0,0
    2e58:	1000000c 	b	2e8c <DemoEc_Draw+0x80>
    2e5c:	8fbf0014 	lw	ra,20(sp)
    2e60:	10780007 	beq	v1,t8,2e80 <DemoEc_Draw+0x74>
    2e64:	8fa5002c 	lw	a1,44(sp)
    2e68:	afa3001c 	sw	v1,28(sp)
    2e6c:	0c000000 	jal	0 <DemoEc_Destroy>
    2e70:	afa40028 	sw	a0,40(sp)
    2e74:	8fa3001c 	lw	v1,28(sp)
    2e78:	8fa40028 	lw	a0,40(sp)
    2e7c:	8c660000 	lw	a2,0(v1)
    2e80:	00c0f809 	jalr	a2
    2e84:	8fa5002c 	lw	a1,44(sp)
    2e88:	8fbf0014 	lw	ra,20(sp)
    2e8c:	27bd0028 	addiu	sp,sp,40
    2e90:	03e00008 	jr	ra
    2e94:	00000000 	nop
	...
