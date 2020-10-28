
build/src/overlays/actors/ovl_En_Eiyer/z_en_eiyer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnEiyer_Init>:
       0:	27bdffa8 	addiu	sp,sp,-88
       4:	afb00034 	sw	s0,52(sp)
       8:	00a08025 	move	s0,a1
       c:	afbf003c 	sw	ra,60(sp)
      10:	afb10038 	sw	s1,56(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808825 	move	s1,a0
      1c:	0c000000 	jal	0 <EnEiyer_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c060000 	lui	a2,0x0
      28:	24c60000 	addiu	a2,a2,0
      2c:	262400b4 	addiu	a0,s1,180
      30:	3c054416 	lui	a1,0x4416
      34:	0c000000 	jal	0 <EnEiyer_Init>
      38:	3c074282 	lui	a3,0x4282
      3c:	3c060600 	lui	a2,0x600
      40:	3c070600 	lui	a3,0x600
      44:	262e0198 	addiu	t6,s1,408
      48:	262f020a 	addiu	t7,s1,522
      4c:	24180013 	li	t8,19
      50:	afb80018 	sw	t8,24(sp)
      54:	afaf0014 	sw	t7,20(sp)
      58:	afae0010 	sw	t6,16(sp)
      5c:	24e712ac 	addiu	a3,a3,4780
      60:	24c63410 	addiu	a2,a2,13328
      64:	02002025 	move	a0,s0
      68:	0c000000 	jal	0 <EnEiyer_Init>
      6c:	2625014c 	addiu	a1,s1,332
      70:	26250288 	addiu	a1,s1,648
      74:	afa50044 	sw	a1,68(sp)
      78:	0c000000 	jal	0 <EnEiyer_Init>
      7c:	02002025 	move	a0,s0
      80:	3c070000 	lui	a3,0x0
      84:	8fa50044 	lw	a1,68(sp)
      88:	24e70000 	addiu	a3,a3,0
      8c:	02002025 	move	a0,s0
      90:	0c000000 	jal	0 <EnEiyer_Init>
      94:	02203025 	move	a2,s1
      98:	3c050000 	lui	a1,0x0
      9c:	3c060000 	lui	a2,0x0
      a0:	24c60000 	addiu	a2,a2,0
      a4:	24a50000 	addiu	a1,a1,0
      a8:	0c000000 	jal	0 <EnEiyer_Init>
      ac:	26240098 	addiu	a0,s1,152
      b0:	8622001c 	lh	v0,28(s1)
      b4:	28410003 	slti	at,v0,3
      b8:	10200039 	beqz	at,1a0 <EnEiyer_Init+0x1a0>
      bc:	00000000 	nop
      c0:	c6240008 	lwc1	$f4,8(s1)
      c4:	24490001 	addiu	t1,v0,1
      c8:	26041c24 	addiu	a0,s0,7204
      cc:	e7a40010 	swc1	$f4,16(sp)
      d0:	c626000c 	lwc1	$f6,12(s1)
      d4:	02202825 	move	a1,s1
      d8:	02003025 	move	a2,s0
      dc:	e7a60014 	swc1	$f6,20(sp)
      e0:	c6280010 	lwc1	$f8,16(s1)
      e4:	afa0001c 	sw	zero,28(sp)
      e8:	2407003a 	li	a3,58
      ec:	e7a80018 	swc1	$f8,24(sp)
      f0:	863900b6 	lh	t9,182(s1)
      f4:	afa90028 	sw	t1,40(sp)
      f8:	afa00024 	sw	zero,36(sp)
      fc:	27284000 	addiu	t0,t9,16384
     100:	0c000000 	jal	0 <EnEiyer_Init>
     104:	afa80020 	sw	t0,32(sp)
     108:	54400006 	bnezl	v0,124 <EnEiyer_Init+0x124>
     10c:	8622001c 	lh	v0,28(s1)
     110:	0c000000 	jal	0 <EnEiyer_Init>
     114:	02202025 	move	a0,s1
     118:	1000002c 	b	1cc <EnEiyer_Init+0x1cc>
     11c:	8fbf003c 	lw	ra,60(sp)
     120:	8622001c 	lh	v0,28(s1)
     124:	1440001e 	bnez	v0,1a0 <EnEiyer_Init+0x1a0>
     128:	00000000 	nop
     12c:	8e24011c 	lw	a0,284(s1)
     130:	00001025 	move	v0,zero
     134:	24030003 	li	v1,3
     138:	00808025 	move	s0,a0
     13c:	12000004 	beqz	s0,150 <EnEiyer_Init+0x150>
     140:	00000000 	nop
     144:	24420001 	addiu	v0,v0,1
     148:	1443fffc 	bne	v0,v1,13c <EnEiyer_Init+0x13c>
     14c:	8e10011c 	lw	s0,284(s0)
     150:	5043000b 	beql	v0,v1,180 <EnEiyer_Init+0x180>
     154:	ac910118 	sw	s1,280(a0)
     158:	1220001b 	beqz	s1,1c8 <EnEiyer_Init+0x1c8>
     15c:	02208025 	move	s0,s1
     160:	0c000000 	jal	0 <EnEiyer_Init>
     164:	02002025 	move	a0,s0
     168:	8e10011c 	lw	s0,284(s0)
     16c:	1600fffc 	bnez	s0,160 <EnEiyer_Init+0x160>
     170:	00000000 	nop
     174:	10000015 	b	1cc <EnEiyer_Init+0x1cc>
     178:	8fbf003c 	lw	ra,60(sp)
     17c:	ac910118 	sw	s1,280(a0)
     180:	8e2a011c 	lw	t2,284(s1)
     184:	8d4b011c 	lw	t3,284(t2)
     188:	ad710118 	sw	s1,280(t3)
     18c:	8e2c011c 	lw	t4,284(s1)
     190:	8d8d011c 	lw	t5,284(t4)
     194:	8dae011c 	lw	t6,284(t5)
     198:	add10118 	sw	s1,280(t6)
     19c:	8622001c 	lh	v0,28(s1)
     1a0:	10400003 	beqz	v0,1b0 <EnEiyer_Init+0x1b0>
     1a4:	2401000a 	li	at,10
     1a8:	14410005 	bne	v0,at,1c0 <EnEiyer_Init+0x1c0>
     1ac:	00000000 	nop
     1b0:	0c000000 	jal	0 <EnEiyer_Init>
     1b4:	02202025 	move	a0,s1
     1b8:	10000004 	b	1cc <EnEiyer_Init+0x1cc>
     1bc:	8fbf003c 	lw	ra,60(sp)
     1c0:	0c000000 	jal	0 <EnEiyer_Init>
     1c4:	02202025 	move	a0,s1
     1c8:	8fbf003c 	lw	ra,60(sp)
     1cc:	8fb00034 	lw	s0,52(sp)
     1d0:	8fb10038 	lw	s1,56(sp)
     1d4:	03e00008 	jr	ra
     1d8:	27bd0058 	addiu	sp,sp,88

000001dc <EnEiyer_Destroy>:
     1dc:	27bdffe8 	addiu	sp,sp,-24
     1e0:	00803025 	move	a2,a0
     1e4:	afbf0014 	sw	ra,20(sp)
     1e8:	00a02025 	move	a0,a1
     1ec:	0c000000 	jal	0 <EnEiyer_Init>
     1f0:	24c50288 	addiu	a1,a2,648
     1f4:	8fbf0014 	lw	ra,20(sp)
     1f8:	27bd0018 	addiu	sp,sp,24
     1fc:	03e00008 	jr	ra
     200:	00000000 	nop

00000204 <func_80A001A4>:
     204:	27bdffe8 	addiu	sp,sp,-24
     208:	afbf0014 	sw	ra,20(sp)
     20c:	00802825 	move	a1,a0
     210:	84840032 	lh	a0,50(a0)
     214:	0c000000 	jal	0 <EnEiyer_Init>
     218:	afa50018 	sw	a1,24(sp)
     21c:	3c0142a0 	lui	at,0x42a0
     220:	44812000 	mtc1	at,$f4
     224:	8fa50018 	lw	a1,24(sp)
     228:	46040182 	mul.s	$f6,$f0,$f4
     22c:	c4a80008 	lwc1	$f8,8(a1)
     230:	84a40032 	lh	a0,50(a1)
     234:	46083280 	add.s	$f10,$f6,$f8
     238:	0c000000 	jal	0 <EnEiyer_Init>
     23c:	e4aa0024 	swc1	$f10,36(a1)
     240:	3c0142a0 	lui	at,0x42a0
     244:	44818000 	mtc1	at,$f16
     248:	8fa50018 	lw	a1,24(sp)
     24c:	46100482 	mul.s	$f18,$f0,$f16
     250:	c4a40010 	lwc1	$f4,16(a1)
     254:	84ae0032 	lh	t6,50(a1)
     258:	25cf4000 	addiu	t7,t6,16384
     25c:	a4af00b6 	sh	t7,182(a1)
     260:	46049180 	add.s	$f6,$f18,$f4
     264:	e4a6002c 	swc1	$f6,44(a1)
     268:	8fbf0014 	lw	ra,20(sp)
     26c:	27bd0018 	addiu	sp,sp,24
     270:	03e00008 	jr	ra
     274:	00000000 	nop

00000278 <func_80A00218>:
     278:	27bdffe0 	addiu	sp,sp,-32
     27c:	afb00018 	sw	s0,24(sp)
     280:	00808025 	move	s0,a0
     284:	afbf001c 	sw	ra,28(sp)
     288:	240e0019 	li	t6,25
     28c:	3c050600 	lui	a1,0x600
     290:	ac8e02a8 	sw	t6,680(a0)
     294:	24a512ac 	addiu	a1,a1,4780
     298:	0c000000 	jal	0 <EnEiyer_Init>
     29c:	2484014c 	addiu	a0,a0,332
     2a0:	3c014220 	lui	at,0x4220
     2a4:	c6040008 	lwc1	$f4,8(s0)
     2a8:	44814000 	mtc1	at,$f8
     2ac:	c606000c 	lwc1	$f6,12(s0)
     2b0:	8602001c 	lh	v0,28(s0)
     2b4:	e6040024 	swc1	$f4,36(s0)
     2b8:	46083281 	sub.s	$f10,$f6,$f8
     2bc:	c6100010 	lwc1	$f16,16(s0)
     2c0:	44809000 	mtc1	zero,$f18
     2c4:	44802000 	mtc1	zero,$f4
     2c8:	2401000a 	li	at,10
     2cc:	e60a0028 	swc1	$f10,40(s0)
     2d0:	e610002c 	swc1	$f16,44(s0)
     2d4:	e6120060 	swc1	$f18,96(s0)
     2d8:	10410016 	beq	v0,at,334 <func_80A00218+0xbc>
     2dc:	e6040068 	swc1	$f4,104(s0)
     2e0:	5440000c 	bnezl	v0,314 <func_80A00218+0x9c>
     2e4:	8e190118 	lw	t9,280(s0)
     2e8:	0c000000 	jal	0 <EnEiyer_Init>
     2ec:	00000000 	nop
     2f0:	3c014780 	lui	at,0x4780
     2f4:	44813000 	mtc1	at,$f6
     2f8:	00000000 	nop
     2fc:	46060202 	mul.s	$f8,$f0,$f6
     300:	4600428d 	trunc.w.s	$f10,$f8
     304:	44185000 	mfc1	t8,$f10
     308:	10000006 	b	324 <func_80A00218+0xac>
     30c:	a6180032 	sh	t8,50(s0)
     310:	8e190118 	lw	t9,280(s0)
     314:	00024b80 	sll	t1,v0,0xe
     318:	87280032 	lh	t0,50(t9)
     31c:	01095021 	addu	t2,t0,t1
     320:	a60a0032 	sh	t2,50(s0)
     324:	0c000000 	jal	0 <EnEiyer_Init>
     328:	02002025 	move	a0,s0
     32c:	1000000d 	b	364 <func_80A00218+0xec>
     330:	920c0298 	lbu	t4,664(s0)
     334:	0c000000 	jal	0 <EnEiyer_Init>
     338:	00000000 	nop
     33c:	3c014780 	lui	at,0x4780
     340:	44818000 	mtc1	at,$f16
     344:	00000000 	nop
     348:	46100482 	mul.s	$f18,$f0,$f16
     34c:	4600910d 	trunc.w.s	$f4,$f18
     350:	44022000 	mfc1	v0,$f4
     354:	00000000 	nop
     358:	a60200b6 	sh	v0,182(s0)
     35c:	a6020032 	sh	v0,50(s0)
     360:	920c0298 	lbu	t4,664(s0)
     364:	920e0299 	lbu	t6,665(s0)
     368:	8e180004 	lw	t8,4(s0)
     36c:	44803000 	mtc1	zero,$f6
     370:	44804000 	mtc1	zero,$f8
     374:	2401effe 	li	at,-4098
     378:	3c080000 	lui	t0,0x0
     37c:	25080000 	addiu	t0,t0,0
     380:	318dfffe 	andi	t5,t4,0xfffe
     384:	31cffffe 	andi	t7,t6,0xfffe
     388:	0301c824 	and	t9,t8,at
     38c:	a20d0298 	sb	t5,664(s0)
     390:	a20f0299 	sb	t7,665(s0)
     394:	ae190004 	sw	t9,4(s0)
     398:	ae080190 	sw	t0,400(s0)
     39c:	e60600c4 	swc1	$f6,196(s0)
     3a0:	e60800bc 	swc1	$f8,188(s0)
     3a4:	8fbf001c 	lw	ra,28(sp)
     3a8:	8fb00018 	lw	s0,24(sp)
     3ac:	27bd0020 	addiu	sp,sp,32
     3b0:	03e00008 	jr	ra
     3b4:	00000000 	nop

000003b8 <func_80A00358>:
     3b8:	848e001c 	lh	t6,28(a0)
     3bc:	2401000a 	li	at,10
     3c0:	3c180000 	lui	t8,0x0
     3c4:	15c10008 	bne	t6,at,3e8 <func_80A00358+0x30>
     3c8:	27180000 	addiu	t8,t8,0
     3cc:	3c01bf00 	lui	at,0xbf00
     3d0:	44812000 	mtc1	at,$f4
     3d4:	3c0f0000 	lui	t7,0x0
     3d8:	25ef0000 	addiu	t7,t7,0
     3dc:	ac8f0190 	sw	t7,400(a0)
     3e0:	10000002 	b	3ec <func_80A00358+0x34>
     3e4:	e4840068 	swc1	$f4,104(a0)
     3e8:	ac980190 	sw	t8,400(a0)
     3ec:	8c890004 	lw	t1,4(a0)
     3f0:	90990299 	lbu	t9,665(a0)
     3f4:	2401ffef 	li	at,-17
     3f8:	01215024 	and	t2,t1,at
     3fc:	ac8a0004 	sw	t2,4(a0)
     400:	354c0001 	ori	t4,t2,0x1
     404:	37280001 	ori	t0,t9,0x1
     408:	a0880299 	sb	t0,665(a0)
     40c:	03e00008 	jr	ra
     410:	ac8c0004 	sw	t4,4(a0)

00000414 <func_80A003B4>:
     414:	8c8e0004 	lw	t6,4(a0)
     418:	849800b6 	lh	t8,182(a0)
     41c:	2401fffe 	li	at,-2
     420:	3c190000 	lui	t9,0x0
     424:	27390000 	addiu	t9,t9,0
     428:	01c17824 	and	t7,t6,at
     42c:	ac8f0004 	sw	t7,4(a0)
     430:	ac990190 	sw	t9,400(a0)
     434:	03e00008 	jr	ra
     438:	a4980032 	sh	t8,50(a0)

0000043c <func_80A003DC>:
     43c:	27bdffd0 	addiu	sp,sp,-48
     440:	44802000 	mtc1	zero,$f4
     444:	afb00020 	sw	s0,32(sp)
     448:	afa50034 	sw	a1,52(sp)
     44c:	00808025 	move	s0,a0
     450:	afbf0024 	sw	ra,36(sp)
     454:	3c050600 	lui	a1,0x600
     458:	24a50704 	addiu	a1,a1,1796
     45c:	2484014c 	addiu	a0,a0,332
     460:	0c000000 	jal	0 <EnEiyer_Init>
     464:	e484ff1c 	swc1	$f4,-228(a0)
     468:	3c0effcf 	lui	t6,0xffcf
     46c:	35ceffff 	ori	t6,t6,0xffff
     470:	ae0e02a8 	sw	t6,680(s0)
     474:	26020024 	addiu	v0,s0,36
     478:	8c580000 	lw	t8,0(v0)
     47c:	3c014282 	lui	at,0x4282
     480:	44813000 	mtc1	at,$f6
     484:	ae18027c 	sw	t8,636(s0)
     488:	8c4f0004 	lw	t7,4(v0)
     48c:	8e080004 	lw	t0,4(s0)
     490:	920a0299 	lbu	t2,665(s0)
     494:	ae0f0280 	sw	t7,640(s0)
     498:	8c580008 	lw	t8,8(v0)
     49c:	3c014416 	lui	at,0x4416
     4a0:	861900b6 	lh	t9,182(s0)
     4a4:	44814000 	mtc1	at,$f8
     4a8:	35091000 	ori	t1,t0,0x1000
     4ac:	314bfffe 	andi	t3,t2,0xfffe
     4b0:	ae090004 	sw	t1,4(s0)
     4b4:	a20b0299 	sb	t3,665(s0)
     4b8:	e60600c4 	swc1	$f6,196(s0)
     4bc:	ae180284 	sw	t8,644(s0)
     4c0:	a6190032 	sh	t9,50(s0)
     4c4:	e60800bc 	swc1	$f8,188(s0)
     4c8:	afa2002c 	sw	v0,44(sp)
     4cc:	02002025 	move	a0,s0
     4d0:	0c000000 	jal	0 <EnEiyer_Init>
     4d4:	240538c2 	li	a1,14530
     4d8:	240c0001 	li	t4,1
     4dc:	240d02bc 	li	t5,700
     4e0:	afad0014 	sw	t5,20(sp)
     4e4:	afac0010 	sw	t4,16(sp)
     4e8:	8fa40034 	lw	a0,52(sp)
     4ec:	8fa5002c 	lw	a1,44(sp)
     4f0:	00003025 	move	a2,zero
     4f4:	0c000000 	jal	0 <EnEiyer_Init>
     4f8:	00003825 	move	a3,zero
     4fc:	3c0e0000 	lui	t6,0x0
     500:	25ce0000 	addiu	t6,t6,0
     504:	ae0e0190 	sw	t6,400(s0)
     508:	8fbf0024 	lw	ra,36(sp)
     50c:	8fb00020 	lw	s0,32(sp)
     510:	27bd0030 	addiu	sp,sp,48
     514:	03e00008 	jr	ra
     518:	00000000 	nop

0000051c <func_80A004BC>:
     51c:	27bdffe8 	addiu	sp,sp,-24
     520:	afbf0014 	sw	ra,20(sp)
     524:	848e00b6 	lh	t6,182(a0)
     528:	3c010000 	lui	at,0x0
     52c:	a48e0196 	sh	t6,406(a0)
     530:	afa40018 	sw	a0,24(sp)
     534:	0c000000 	jal	0 <EnEiyer_Init>
     538:	c42c0000 	lwc1	$f12,0(at)
     53c:	3c0140a0 	lui	at,0x40a0
     540:	44812000 	mtc1	at,$f4
     544:	8fa70018 	lw	a3,24(sp)
     548:	3c050600 	lui	a1,0x600
     54c:	46040182 	mul.s	$f6,$f0,$f4
     550:	c4e80028 	lwc1	$f8,40(a3)
     554:	24a50fc0 	addiu	a1,a1,4032
     558:	3c06c0a0 	lui	a2,0xc0a0
     55c:	24e4014c 	addiu	a0,a3,332
     560:	46083280 	add.s	$f10,$f6,$f8
     564:	0c000000 	jal	0 <EnEiyer_Init>
     568:	e4ea0280 	swc1	$f10,640(a3)
     56c:	8fa70018 	lw	a3,24(sp)
     570:	3c180000 	lui	t8,0x0
     574:	240f003c 	li	t7,60
     578:	27180000 	addiu	t8,t8,0
     57c:	a4ef0194 	sh	t7,404(a3)
     580:	acf80190 	sw	t8,400(a3)
     584:	8fbf0014 	lw	ra,20(sp)
     588:	27bd0018 	addiu	sp,sp,24
     58c:	03e00008 	jr	ra
     590:	00000000 	nop

00000594 <func_80A00534>:
     594:	3c0e0000 	lui	t6,0x0
     598:	25ce0000 	addiu	t6,t6,0
     59c:	03e00008 	jr	ra
     5a0:	ac8e0190 	sw	t6,400(a0)

000005a4 <func_80A00544>:
     5a4:	44802000 	mtc1	zero,$f4
     5a8:	8ca21c44 	lw	v0,7236(a1)
     5ac:	3c014170 	lui	at,0x4170
     5b0:	e4840060 	swc1	$f4,96(a0)
     5b4:	44814000 	mtc1	at,$f8
     5b8:	908e0298 	lbu	t6,664(a0)
     5bc:	c4460028 	lwc1	$f6,40(v0)
     5c0:	3c080000 	lui	t0,0x0
     5c4:	35d80001 	ori	t8,t6,0x1
     5c8:	46083280 	add.s	$f10,$f6,$f8
     5cc:	a0980298 	sb	t8,664(a0)
     5d0:	3319fffd 	andi	t9,t8,0xfffd
     5d4:	25080000 	addiu	t0,t0,0
     5d8:	e48a0280 	swc1	$f10,640(a0)
     5dc:	a0990298 	sb	t9,664(a0)
     5e0:	03e00008 	jr	ra
     5e4:	ac880190 	sw	t0,400(a0)

000005e8 <func_80A00588>:
     5e8:	27bdffe8 	addiu	sp,sp,-24
     5ec:	afbf0014 	sw	ra,20(sp)
     5f0:	00803825 	move	a3,a0
     5f4:	3c050600 	lui	a1,0x600
     5f8:	24a504c4 	addiu	a1,a1,1220
     5fc:	afa70018 	sw	a3,24(sp)
     600:	2484014c 	addiu	a0,a0,332
     604:	0c000000 	jal	0 <EnEiyer_Init>
     608:	3c06c040 	lui	a2,0xc040
     60c:	8fa70018 	lw	a3,24(sp)
     610:	44802000 	mtc1	zero,$f4
     614:	2408ffff 	li	t0,-1
     618:	90ee0298 	lbu	t6,664(a3)
     61c:	8cf80004 	lw	t8,4(a3)
     620:	3c090000 	lui	t1,0x0
     624:	31cffffe 	andi	t7,t6,0xfffe
     628:	37190010 	ori	t9,t8,0x10
     62c:	a0ef0298 	sb	t7,664(a3)
     630:	acf90004 	sw	t9,4(a3)
     634:	a4e80194 	sh	t0,404(a3)
     638:	e4e4006c 	swc1	$f4,108(a3)
     63c:	85290000 	lh	t1,0(t1)
     640:	3c0a0000 	lui	t2,0x0
     644:	254a0000 	addiu	t2,t2,0
     648:	acea0190 	sw	t2,400(a3)
     64c:	a4e902ca 	sh	t1,714(a3)
     650:	8fbf0014 	lw	ra,20(sp)
     654:	27bd0018 	addiu	sp,sp,24
     658:	03e00008 	jr	ra
     65c:	00000000 	nop

00000660 <func_80A00600>:
     660:	27bdffd0 	addiu	sp,sp,-48
     664:	afbf002c 	sw	ra,44(sp)
     668:	afb00028 	sw	s0,40(sp)
     66c:	c4840028 	lwc1	$f4,40(a0)
     670:	44800000 	mtc1	zero,$f0
     674:	3c01c040 	lui	at,0xc040
     678:	44813000 	mtc1	at,$f6
     67c:	e4840280 	swc1	$f4,640(a0)
     680:	00808025 	move	s0,a0
     684:	3c050600 	lui	a1,0x600
     688:	44070000 	mfc1	a3,$f0
     68c:	24a50fc0 	addiu	a1,a1,4032
     690:	2484014c 	addiu	a0,a0,332
     694:	afa00014 	sw	zero,20(sp)
     698:	3c064000 	lui	a2,0x4000
     69c:	e7a00010 	swc1	$f0,16(sp)
     6a0:	0c000000 	jal	0 <EnEiyer_Init>
     6a4:	e7a60018 	swc1	$f6,24(sp)
     6a8:	44800000 	mtc1	zero,$f0
     6ac:	3c0140a0 	lui	at,0x40a0
     6b0:	44814000 	mtc1	at,$f8
     6b4:	240e0028 	li	t6,40
     6b8:	a60e0194 	sh	t6,404(s0)
     6bc:	240f0028 	li	t7,40
     6c0:	e600006c 	swc1	$f0,108(s0)
     6c4:	e6000060 	swc1	$f0,96(s0)
     6c8:	e6080068 	swc1	$f8,104(s0)
     6cc:	afaf0010 	sw	t7,16(sp)
     6d0:	02002025 	move	a0,s0
     6d4:	24054000 	li	a1,16384
     6d8:	240600c8 	li	a2,200
     6dc:	0c000000 	jal	0 <EnEiyer_Init>
     6e0:	00003825 	move	a3,zero
     6e4:	92180299 	lbu	t8,665(s0)
     6e8:	3c080000 	lui	t0,0x0
     6ec:	25080000 	addiu	t0,t0,0
     6f0:	3319fffe 	andi	t9,t8,0xfffe
     6f4:	a2190299 	sb	t9,665(s0)
     6f8:	ae080190 	sw	t0,400(s0)
     6fc:	8fbf002c 	lw	ra,44(sp)
     700:	8fb00028 	lw	s0,40(sp)
     704:	27bd0030 	addiu	sp,sp,48
     708:	03e00008 	jr	ra
     70c:	00000000 	nop

00000710 <func_80A006B0>:
     710:	27bdffd8 	addiu	sp,sp,-40
     714:	afbf0024 	sw	ra,36(sp)
     718:	afb00020 	sw	s0,32(sp)
     71c:	240e0014 	li	t6,20
     720:	a48e0194 	sh	t6,404(a0)
     724:	240f0028 	li	t7,40
     728:	00808025 	move	s0,a0
     72c:	afaf0010 	sw	t7,16(sp)
     730:	24054000 	li	a1,16384
     734:	240600c8 	li	a2,200
     738:	0c000000 	jal	0 <EnEiyer_Init>
     73c:	00003825 	move	a3,zero
     740:	8e1802a8 	lw	t8,680(s0)
     744:	24010019 	li	at,25
     748:	2604014c 	addiu	a0,s0,332
     74c:	13010009 	beq	t8,at,774 <func_80A006B0+0x64>
     750:	3c050600 	lui	a1,0x600
     754:	3c0140c0 	lui	at,0x40c0
     758:	44812000 	mtc1	at,$f4
     75c:	24a50fc0 	addiu	a1,a1,4032
     760:	3c06c040 	lui	a2,0xc040
     764:	0c000000 	jal	0 <EnEiyer_Init>
     768:	e6040068 	swc1	$f4,104(s0)
     76c:	10000007 	b	78c <func_80A006B0+0x7c>
     770:	92080298 	lbu	t0,664(s0)
     774:	3c0140c0 	lui	at,0x40c0
     778:	44814000 	mtc1	at,$f8
     77c:	c6060068 	lwc1	$f6,104(s0)
     780:	46083281 	sub.s	$f10,$f6,$f8
     784:	e60a0068 	swc1	$f10,104(s0)
     788:	92080298 	lbu	t0,664(s0)
     78c:	920a0299 	lbu	t2,665(s0)
     790:	3c19ffcf 	lui	t9,0xffcf
     794:	3c0c0000 	lui	t4,0x0
     798:	3739ffff 	ori	t9,t9,0xffff
     79c:	258c0000 	addiu	t4,t4,0
     7a0:	3109fffe 	andi	t1,t0,0xfffe
     7a4:	314bfffe 	andi	t3,t2,0xfffe
     7a8:	ae1902a8 	sw	t9,680(s0)
     7ac:	a2090298 	sb	t1,664(s0)
     7b0:	a20b0299 	sb	t3,665(s0)
     7b4:	ae0c0190 	sw	t4,400(s0)
     7b8:	8fbf0024 	lw	ra,36(sp)
     7bc:	8fb00020 	lw	s0,32(sp)
     7c0:	27bd0028 	addiu	sp,sp,40
     7c4:	03e00008 	jr	ra
     7c8:	00000000 	nop

000007cc <func_80A0076C>:
     7cc:	948e0112 	lhu	t6,274(a0)
     7d0:	44800000 	mtc1	zero,$f0
     7d4:	3c180000 	lui	t8,0x0
     7d8:	27180000 	addiu	t8,t8,0
     7dc:	35cf2000 	ori	t7,t6,0x2000
     7e0:	a48f0112 	sh	t7,274(a0)
     7e4:	ac980190 	sw	t8,400(a0)
     7e8:	e4800068 	swc1	$f0,104(a0)
     7ec:	03e00008 	jr	ra
     7f0:	e4800060 	swc1	$f0,96(a0)

000007f4 <func_80A00794>:
     7f4:	44800000 	mtc1	zero,$f0
     7f8:	27bdffd0 	addiu	sp,sp,-48
     7fc:	3c01c100 	lui	at,0xc100
     800:	44812000 	mtc1	at,$f4
     804:	afb00028 	sw	s0,40(sp)
     808:	00808025 	move	s0,a0
     80c:	afbf002c 	sw	ra,44(sp)
     810:	3c050600 	lui	a1,0x600
     814:	44070000 	mfc1	a3,$f0
     818:	24a50288 	addiu	a1,a1,648
     81c:	2484014c 	addiu	a0,a0,332
     820:	afa00014 	sw	zero,20(sp)
     824:	3c064000 	lui	a2,0x4000
     828:	e7a00010 	swc1	$f0,16(sp)
     82c:	0c000000 	jal	0 <EnEiyer_Init>
     830:	e7a40018 	swc1	$f4,24(sp)
     834:	44800000 	mtc1	zero,$f0
     838:	3c01bf80 	lui	at,0xbf80
     83c:	44813000 	mtc1	at,$f6
     840:	240e0050 	li	t6,80
     844:	a60e0194 	sh	t6,404(s0)
     848:	3c0f0000 	lui	t7,0x0
     84c:	e6000068 	swc1	$f0,104(s0)
     850:	e6000060 	swc1	$f0,96(s0)
     854:	e606006c 	swc1	$f6,108(s0)
     858:	85ef0000 	lh	t7,0(t7)
     85c:	24190050 	li	t9,80
     860:	02002025 	move	a0,s0
     864:	25f80008 	addiu	t8,t7,8
     868:	a61802ca 	sh	t8,714(s0)
     86c:	afb90010 	sw	t9,16(sp)
     870:	00002825 	move	a1,zero
     874:	240600c8 	li	a2,200
     878:	0c000000 	jal	0 <EnEiyer_Init>
     87c:	00003825 	move	a3,zero
     880:	92080298 	lbu	t0,664(s0)
     884:	02002025 	move	a0,s0
     888:	2405389e 	li	a1,14494
     88c:	3109fffe 	andi	t1,t0,0xfffe
     890:	0c000000 	jal	0 <EnEiyer_Init>
     894:	a2090298 	sb	t1,664(s0)
     898:	3c0a0000 	lui	t2,0x0
     89c:	254a0000 	addiu	t2,t2,0
     8a0:	ae0a0190 	sw	t2,400(s0)
     8a4:	8fbf002c 	lw	ra,44(sp)
     8a8:	8fb00028 	lw	s0,40(sp)
     8ac:	27bd0030 	addiu	sp,sp,48
     8b0:	03e00008 	jr	ra
     8b4:	00000000 	nop

000008b8 <func_80A00858>:
     8b8:	27bdffe8 	addiu	sp,sp,-24
     8bc:	afbf0014 	sw	ra,20(sp)
     8c0:	afa40018 	sw	a0,24(sp)
     8c4:	afa5001c 	sw	a1,28(sp)
     8c8:	0c000000 	jal	0 <EnEiyer_Init>
     8cc:	2484014c 	addiu	a0,a0,332
     8d0:	8fa30018 	lw	v1,24(sp)
     8d4:	3c063f40 	lui	a2,0x3f40
     8d8:	24640028 	addiu	a0,v1,40
     8dc:	0c000000 	jal	0 <EnEiyer_Init>
     8e0:	8c65000c 	lw	a1,12(v1)
     8e4:	50400004 	beqzl	v0,8f8 <func_80A00858+0x40>
     8e8:	8fbf0014 	lw	ra,20(sp)
     8ec:	0c000000 	jal	0 <EnEiyer_Init>
     8f0:	8fa40018 	lw	a0,24(sp)
     8f4:	8fbf0014 	lw	ra,20(sp)
     8f8:	27bd0018 	addiu	sp,sp,24
     8fc:	03e00008 	jr	ra
     900:	00000000 	nop

00000904 <func_80A008A4>:
     904:	27bdffe8 	addiu	sp,sp,-24
     908:	afbf0014 	sw	ra,20(sp)
     90c:	9082029b 	lbu	v0,667(a0)
     910:	304e0001 	andi	t6,v0,0x1
     914:	11c00003 	beqz	t6,924 <func_80A008A4+0x20>
     918:	304ffffe 	andi	t7,v0,0xfffe
     91c:	0c000000 	jal	0 <EnEiyer_Init>
     920:	a08f029b 	sb	t7,667(a0)
     924:	8fbf0014 	lw	ra,20(sp)
     928:	27bd0018 	addiu	sp,sp,24
     92c:	03e00008 	jr	ra
     930:	00000000 	nop

00000934 <func_80A008D4>:
     934:	27bdffe0 	addiu	sp,sp,-32
     938:	afb00018 	sw	s0,24(sp)
     93c:	00808025 	move	s0,a0
     940:	afbf001c 	sw	ra,28(sp)
     944:	afa50024 	sw	a1,36(sp)
     948:	0c000000 	jal	0 <EnEiyer_Init>
     94c:	2484014c 	addiu	a0,a0,332
     950:	860e0032 	lh	t6,50(s0)
     954:	02002025 	move	a0,s0
     958:	25cfffa0 	addiu	t7,t6,-96
     95c:	0c000000 	jal	0 <EnEiyer_Init>
     960:	a60f0032 	sh	t7,50(s0)
     964:	02002025 	move	a0,s0
     968:	0c000000 	jal	0 <EnEiyer_Init>
     96c:	8fa50024 	lw	a1,36(sp)
     970:	8618001c 	lh	t8,28(s0)
     974:	5300000a 	beqzl	t8,9a0 <func_80A008D4+0x6c>
     978:	8fbf001c 	lw	ra,28(sp)
     97c:	8e080118 	lw	t0,280(s0)
     980:	3c190000 	lui	t9,0x0
     984:	27390000 	addiu	t9,t9,0
     988:	8d090190 	lw	t1,400(t0)
     98c:	53290004 	beql	t9,t1,9a0 <func_80A008D4+0x6c>
     990:	8fbf001c 	lw	ra,28(sp)
     994:	0c000000 	jal	0 <EnEiyer_Init>
     998:	02002025 	move	a0,s0
     99c:	8fbf001c 	lw	ra,28(sp)
     9a0:	8fb00018 	lw	s0,24(sp)
     9a4:	27bd0020 	addiu	sp,sp,32
     9a8:	03e00008 	jr	ra
     9ac:	00000000 	nop

000009b0 <func_80A00950>:
     9b0:	27bdffd8 	addiu	sp,sp,-40
     9b4:	afb00018 	sw	s0,24(sp)
     9b8:	00808025 	move	s0,a0
     9bc:	afbf001c 	sw	ra,28(sp)
     9c0:	afa5002c 	sw	a1,44(sp)
     9c4:	0c000000 	jal	0 <EnEiyer_Init>
     9c8:	2484014c 	addiu	a0,a0,332
     9cc:	26050008 	addiu	a1,s0,8
     9d0:	afa50020 	sw	a1,32(sp)
     9d4:	0c000000 	jal	0 <EnEiyer_Init>
     9d8:	02002025 	move	a0,s0
     9dc:	3c0142c8 	lui	at,0x42c8
     9e0:	44812000 	mtc1	at,$f4
     9e4:	8fa50020 	lw	a1,32(sp)
     9e8:	4600203c 	c.lt.s	$f4,$f0
     9ec:	00000000 	nop
     9f0:	45020008 	bc1fl	a14 <func_80A00950+0x64>
     9f4:	860f0032 	lh	t7,50(s0)
     9f8:	0c000000 	jal	0 <EnEiyer_Init>
     9fc:	02002025 	move	a0,s0
     a00:	34018000 	li	at,0x8000
     a04:	00417021 	addu	t6,v0,at
     a08:	1000002a 	b	ab4 <func_80A00950+0x104>
     a0c:	a60e0196 	sh	t6,406(s0)
     a10:	860f0032 	lh	t7,50(s0)
     a14:	86180196 	lh	t8,406(s0)
     a18:	55f80027 	bnel	t7,t8,ab8 <func_80A00950+0x108>
     a1c:	26040032 	addiu	a0,s0,50
     a20:	0c000000 	jal	0 <EnEiyer_Init>
     a24:	00000000 	nop
     a28:	3c010000 	lui	at,0x0
     a2c:	c4260000 	lwc1	$f6,0(at)
     a30:	4600303c 	c.lt.s	$f6,$f0
     a34:	00000000 	nop
     a38:	4502001f 	bc1fl	ab8 <func_80A00950+0x108>
     a3c:	26040032 	addiu	a0,s0,50
     a40:	0c000000 	jal	0 <EnEiyer_Init>
     a44:	00000000 	nop
     a48:	3c013f00 	lui	at,0x3f00
     a4c:	44814000 	mtc1	at,$f8
     a50:	24020001 	li	v0,1
     a54:	4608003c 	c.lt.s	$f0,$f8
     a58:	00000000 	nop
     a5c:	45000003 	bc1f	a6c <func_80A00950+0xbc>
     a60:	00000000 	nop
     a64:	10000001 	b	a6c <func_80A00950+0xbc>
     a68:	2402ffff 	li	v0,-1
     a6c:	0c000000 	jal	0 <EnEiyer_Init>
     a70:	afa20024 	sw	v0,36(sp)
     a74:	3c014600 	lui	at,0x4600
     a78:	44811000 	mtc1	at,$f2
     a7c:	8fa20024 	lw	v0,36(sp)
     a80:	86190032 	lh	t9,50(s0)
     a84:	46020282 	mul.s	$f10,$f0,$f2
     a88:	44829000 	mtc1	v0,$f18
     a8c:	44994000 	mtc1	t9,$f8
     a90:	46809120 	cvt.s.w	$f4,$f18
     a94:	46025400 	add.s	$f16,$f10,$f2
     a98:	468042a0 	cvt.s.w	$f10,$f8
     a9c:	46048182 	mul.s	$f6,$f16,$f4
     aa0:	460a3480 	add.s	$f18,$f6,$f10
     aa4:	4600940d 	trunc.w.s	$f16,$f18
     aa8:	44098000 	mfc1	t1,$f16
     aac:	00000000 	nop
     ab0:	a6090196 	sh	t1,406(s0)
     ab4:	26040032 	addiu	a0,s0,50
     ab8:	86050196 	lh	a1,406(s0)
     abc:	0c000000 	jal	0 <EnEiyer_Init>
     ac0:	240600b6 	li	a2,182
     ac4:	02002025 	move	a0,s0
     ac8:	0c000000 	jal	0 <EnEiyer_Init>
     acc:	8fa5002c 	lw	a1,44(sp)
     ad0:	8fbf001c 	lw	ra,28(sp)
     ad4:	8fb00018 	lw	s0,24(sp)
     ad8:	27bd0028 	addiu	sp,sp,40
     adc:	03e00008 	jr	ra
     ae0:	00000000 	nop

00000ae4 <func_80A00A84>:
     ae4:	27bdffe8 	addiu	sp,sp,-24
     ae8:	afbf0014 	sw	ra,20(sp)
     aec:	afa5001c 	sw	a1,28(sp)
     af0:	3c014248 	lui	at,0x4248
     af4:	44813000 	mtc1	at,$f6
     af8:	c484000c 	lwc1	$f4,12(a0)
     afc:	c4800028 	lwc1	$f0,40(a0)
     b00:	3c0f0000 	lui	t7,0x0
     b04:	46062201 	sub.s	$f8,$f4,$f6
     b08:	3c013f00 	lui	at,0x3f00
     b0c:	25ef0000 	addiu	t7,t7,0
     b10:	4600403c 	c.lt.s	$f8,$f0
     b14:	00000000 	nop
     b18:	45020006 	bc1fl	b34 <func_80A00A84+0x50>
     b1c:	8c820118 	lw	v0,280(a0)
     b20:	44815000 	mtc1	at,$f10
     b24:	00000000 	nop
     b28:	460a0401 	sub.s	$f16,$f0,$f10
     b2c:	e4900028 	swc1	$f16,40(a0)
     b30:	8c820118 	lw	v0,280(a0)
     b34:	3c0e0000 	lui	t6,0x0
     b38:	25ce0000 	addiu	t6,t6,0
     b3c:	8c430190 	lw	v1,400(v0)
     b40:	15c30005 	bne	t6,v1,b58 <func_80A00A84+0x74>
     b44:	00000000 	nop
     b48:	0c000000 	jal	0 <EnEiyer_Init>
     b4c:	00000000 	nop
     b50:	10000006 	b	b6c <func_80A00A84+0x88>
     b54:	8fbf0014 	lw	ra,20(sp)
     b58:	55e30004 	bnel	t7,v1,b6c <func_80A00A84+0x88>
     b5c:	8fbf0014 	lw	ra,20(sp)
     b60:	0c000000 	jal	0 <EnEiyer_Init>
     b64:	00000000 	nop
     b68:	8fbf0014 	lw	ra,20(sp)
     b6c:	27bd0018 	addiu	sp,sp,24
     b70:	03e00008 	jr	ra
     b74:	00000000 	nop

00000b78 <func_80A00B18>:
     b78:	27bdffc0 	addiu	sp,sp,-64
     b7c:	afb00020 	sw	s0,32(sp)
     b80:	00808025 	move	s0,a0
     b84:	afbf0024 	sw	ra,36(sp)
     b88:	afa50044 	sw	a1,68(sp)
     b8c:	0c000000 	jal	0 <EnEiyer_Init>
     b90:	2484014c 	addiu	a0,a0,332
     b94:	afa2003c 	sw	v0,60(sp)
     b98:	3c014140 	lui	at,0x4140
     b9c:	c6000164 	lwc1	$f0,356(s0)
     ba0:	44812000 	mtc1	at,$f4
     ba4:	3c0142a0 	lui	at,0x42a0
     ba8:	4604003c 	c.lt.s	$f0,$f4
     bac:	00000000 	nop
     bb0:	45020026 	bc1fl	c4c <func_80A00B18+0xd4>
     bb4:	c604000c 	lwc1	$f4,12(s0)
     bb8:	3c010000 	lui	at,0x0
     bbc:	c4260000 	lwc1	$f6,0(at)
     bc0:	46003302 	mul.s	$f12,$f6,$f0
     bc4:	0c000000 	jal	0 <EnEiyer_Init>
     bc8:	e7ac002c 	swc1	$f12,44(sp)
     bcc:	3c013f80 	lui	at,0x3f80
     bd0:	44814000 	mtc1	at,$f8
     bd4:	3c014220 	lui	at,0x4220
     bd8:	44818000 	mtc1	at,$f16
     bdc:	46004281 	sub.s	$f10,$f8,$f0
     be0:	c604000c 	lwc1	$f4,12(s0)
     be4:	c7ac002c 	lwc1	$f12,44(sp)
     be8:	46105482 	mul.s	$f18,$f10,$f16
     bec:	46049180 	add.s	$f6,$f18,$f4
     bf0:	0c000000 	jal	0 <EnEiyer_Init>
     bf4:	e6060028 	swc1	$f6,40(s0)
     bf8:	3c01c220 	lui	at,0xc220
     bfc:	44814000 	mtc1	at,$f8
     c00:	00000000 	nop
     c04:	46080282 	mul.s	$f10,$f0,$f8
     c08:	e7aa0034 	swc1	$f10,52(sp)
     c0c:	0c000000 	jal	0 <EnEiyer_Init>
     c10:	860400b6 	lh	a0,182(s0)
     c14:	c7b00034 	lwc1	$f16,52(sp)
     c18:	c604027c 	lwc1	$f4,636(s0)
     c1c:	860400b6 	lh	a0,182(s0)
     c20:	46100482 	mul.s	$f18,$f0,$f16
     c24:	46049180 	add.s	$f6,$f18,$f4
     c28:	0c000000 	jal	0 <EnEiyer_Init>
     c2c:	e6060024 	swc1	$f6,36(s0)
     c30:	c7a80034 	lwc1	$f8,52(sp)
     c34:	c6100284 	lwc1	$f16,644(s0)
     c38:	46080282 	mul.s	$f10,$f0,$f8
     c3c:	46105480 	add.s	$f18,$f10,$f16
     c40:	1000000c 	b	c74 <func_80A00B18+0xfc>
     c44:	e612002c 	swc1	$f18,44(s0)
     c48:	c604000c 	lwc1	$f4,12(s0)
     c4c:	44813000 	mtc1	at,$f6
     c50:	26040028 	addiu	a0,s0,40
     c54:	3c063f00 	lui	a2,0x3f00
     c58:	46062200 	add.s	$f8,$f4,$f6
     c5c:	44054000 	mfc1	a1,$f8
     c60:	0c000000 	jal	0 <EnEiyer_Init>
     c64:	00000000 	nop
     c68:	3c010000 	lui	at,0x0
     c6c:	c42a0000 	lwc1	$f10,0(at)
     c70:	e60a0068 	swc1	$f10,104(s0)
     c74:	8fae003c 	lw	t6,60(sp)
     c78:	8fa40044 	lw	a0,68(sp)
     c7c:	26050078 	addiu	a1,s0,120
     c80:	11c00008 	beqz	t6,ca4 <func_80A00B18+0x12c>
     c84:	248407c0 	addiu	a0,a0,1984
     c88:	920f0299 	lbu	t7,665(s0)
     c8c:	02002025 	move	a0,s0
     c90:	35f80001 	ori	t8,t7,0x1
     c94:	0c000000 	jal	0 <EnEiyer_Init>
     c98:	a2180299 	sb	t8,665(s0)
     c9c:	10000008 	b	cc0 <func_80A00B18+0x148>
     ca0:	8fbf0024 	lw	ra,36(sp)
     ca4:	26190024 	addiu	t9,s0,36
     ca8:	afb90010 	sw	t9,16(sp)
     cac:	27a60030 	addiu	a2,sp,48
     cb0:	0c000000 	jal	0 <EnEiyer_Init>
     cb4:	02003825 	move	a3,s0
     cb8:	e6000080 	swc1	$f0,128(s0)
     cbc:	8fbf0024 	lw	ra,36(sp)
     cc0:	8fb00020 	lw	s0,32(sp)
     cc4:	27bd0040 	addiu	sp,sp,64
     cc8:	03e00008 	jr	ra
     ccc:	00000000 	nop

00000cd0 <func_80A00C70>:
     cd0:	27bdffd0 	addiu	sp,sp,-48
     cd4:	afb00018 	sw	s0,24(sp)
     cd8:	00808025 	move	s0,a0
     cdc:	afbf001c 	sw	ra,28(sp)
     ce0:	afa50034 	sw	a1,52(sp)
     ce4:	0c000000 	jal	0 <EnEiyer_Init>
     ce8:	2484014c 	addiu	a0,a0,332
     cec:	86030194 	lh	v1,404(s0)
     cf0:	10600002 	beqz	v1,cfc <func_80A00C70+0x2c>
     cf4:	246effff 	addiu	t6,v1,-1
     cf8:	a60e0194 	sh	t6,404(s0)
     cfc:	c6040164 	lwc1	$f4,356(s0)
     d00:	3c0142a0 	lui	at,0x42a0
     d04:	44814000 	mtc1	at,$f8
     d08:	e7a4002c 	swc1	$f4,44(sp)
     d0c:	c6060080 	lwc1	$f6,128(s0)
     d10:	3c0140a0 	lui	at,0x40a0
     d14:	44818000 	mtc1	at,$f16
     d18:	46083280 	add.s	$f10,$f6,$f8
     d1c:	3c063e99 	lui	a2,0x3e99
     d20:	34c6999a 	ori	a2,a2,0x999a
     d24:	8e070068 	lw	a3,104(s0)
     d28:	46105480 	add.s	$f18,$f10,$f16
     d2c:	26040280 	addiu	a0,s0,640
     d30:	44059000 	mfc1	a1,$f18
     d34:	0c000000 	jal	0 <EnEiyer_Init>
     d38:	00000000 	nop
     d3c:	3c0140a0 	lui	at,0x40a0
     d40:	44813000 	mtc1	at,$f6
     d44:	c7a4002c 	lwc1	$f4,44(sp)
     d48:	3c010000 	lui	at,0x0
     d4c:	c42a0000 	lwc1	$f10,0(at)
     d50:	46062201 	sub.s	$f8,$f4,$f6
     d54:	460a4302 	mul.s	$f12,$f8,$f10
     d58:	0c000000 	jal	0 <EnEiyer_Init>
     d5c:	00000000 	nop
     d60:	3c0140a0 	lui	at,0x40a0
     d64:	44819000 	mtc1	at,$f18
     d68:	c6100280 	lwc1	$f16,640(s0)
     d6c:	3c014234 	lui	at,0x4234
     d70:	46120102 	mul.s	$f4,$f0,$f18
     d74:	44814000 	mtc1	at,$f8
     d78:	26040068 	addiu	a0,s0,104
     d7c:	3c053fc0 	lui	a1,0x3fc0
     d80:	3c063cf5 	lui	a2,0x3cf5
     d84:	46048181 	sub.s	$f6,$f16,$f4
     d88:	e6060028 	swc1	$f6,40(s0)
     d8c:	c7aa002c 	lwc1	$f10,44(sp)
     d90:	4608503e 	c.le.s	$f10,$f8
     d94:	00000000 	nop
     d98:	45000008 	bc1f	dbc <func_80A00C70+0xec>
     d9c:	00000000 	nop
     da0:	3c063cf5 	lui	a2,0x3cf5
     da4:	34c6c28f 	ori	a2,a2,0xc28f
     da8:	26040068 	addiu	a0,s0,104
     dac:	0c000000 	jal	0 <EnEiyer_Init>
     db0:	3c053f80 	lui	a1,0x3f80
     db4:	10000004 	b	dc8 <func_80A00C70+0xf8>
     db8:	960f0088 	lhu	t7,136(s0)
     dbc:	0c000000 	jal	0 <EnEiyer_Init>
     dc0:	34c6c28f 	ori	a2,a2,0xc28f
     dc4:	960f0088 	lhu	t7,136(s0)
     dc8:	26040032 	addiu	a0,s0,50
     dcc:	240600b6 	li	a2,182
     dd0:	31f80008 	andi	t8,t7,0x8
     dd4:	13000003 	beqz	t8,de4 <func_80A00C70+0x114>
     dd8:	00000000 	nop
     ddc:	8619007e 	lh	t9,126(s0)
     de0:	a6190196 	sh	t9,406(s0)
     de4:	0c000000 	jal	0 <EnEiyer_Init>
     de8:	86050196 	lh	a1,406(s0)
     dec:	50400025 	beqzl	v0,e84 <func_80A00C70+0x1b4>
     df0:	860f0194 	lh	t7,404(s0)
     df4:	86080194 	lh	t0,404(s0)
     df8:	5500000b 	bnezl	t0,e28 <func_80A00C70+0x158>
     dfc:	86090032 	lh	t1,50(s0)
     e00:	0c000000 	jal	0 <EnEiyer_Init>
     e04:	00000000 	nop
     e08:	3c010000 	lui	at,0x0
     e0c:	c4320000 	lwc1	$f18,0(at)
     e10:	24042000 	li	a0,8192
     e14:	4600903c 	c.lt.s	$f18,$f0
     e18:	00000000 	nop
     e1c:	45000005 	bc1f	e34 <func_80A00C70+0x164>
     e20:	00000000 	nop
     e24:	86090032 	lh	t1,50(s0)
     e28:	252a0100 	addiu	t2,t1,256
     e2c:	10000014 	b	e80 <func_80A00C70+0x1b0>
     e30:	a60a0032 	sh	t2,50(s0)
     e34:	0c000000 	jal	0 <EnEiyer_Init>
     e38:	24052000 	li	a1,8192
     e3c:	0c000000 	jal	0 <EnEiyer_Init>
     e40:	a7a20026 	sh	v0,38(sp)
     e44:	3c013f00 	lui	at,0x3f00
     e48:	44818000 	mtc1	at,$f16
     e4c:	87ab0026 	lh	t3,38(sp)
     e50:	24020001 	li	v0,1
     e54:	4610003c 	c.lt.s	$f0,$f16
     e58:	00000000 	nop
     e5c:	45000003 	bc1f	e6c <func_80A00C70+0x19c>
     e60:	00000000 	nop
     e64:	10000001 	b	e6c <func_80A00C70+0x19c>
     e68:	2402ffff 	li	v0,-1
     e6c:	004b0019 	multu	v0,t3
     e70:	860d0032 	lh	t5,50(s0)
     e74:	00006012 	mflo	t4
     e78:	018d7021 	addu	t6,t4,t5
     e7c:	a60e0196 	sh	t6,406(s0)
     e80:	860f0194 	lh	t7,404(s0)
     e84:	55e00012 	bnezl	t7,ed0 <func_80A00C70+0x200>
     e88:	02002025 	move	a0,s0
     e8c:	c6040094 	lwc1	$f4,148(s0)
     e90:	44803000 	mtc1	zero,$f6
     e94:	3c0142f0 	lui	at,0x42f0
     e98:	4606203c 	c.lt.s	$f4,$f6
     e9c:	00000000 	nop
     ea0:	4502000b 	bc1fl	ed0 <func_80A00C70+0x200>
     ea4:	02002025 	move	a0,s0
     ea8:	c6080090 	lwc1	$f8,144(s0)
     eac:	44815000 	mtc1	at,$f10
     eb0:	00000000 	nop
     eb4:	460a403c 	c.lt.s	$f8,$f10
     eb8:	00000000 	nop
     ebc:	45020004 	bc1fl	ed0 <func_80A00C70+0x200>
     ec0:	02002025 	move	a0,s0
     ec4:	0c000000 	jal	0 <EnEiyer_Init>
     ec8:	02002025 	move	a0,s0
     ecc:	02002025 	move	a0,s0
     ed0:	0c000000 	jal	0 <EnEiyer_Init>
     ed4:	2405314f 	li	a1,12623
     ed8:	8fbf001c 	lw	ra,28(sp)
     edc:	8fb00018 	lw	s0,24(sp)
     ee0:	27bd0030 	addiu	sp,sp,48
     ee4:	03e00008 	jr	ra
     ee8:	00000000 	nop

00000eec <func_80A00E8C>:
     eec:	27bdffc8 	addiu	sp,sp,-56
     ef0:	afbf001c 	sw	ra,28(sp)
     ef4:	afb00018 	sw	s0,24(sp)
     ef8:	afa5003c 	sw	a1,60(sp)
     efc:	8ca31c44 	lw	v1,7236(a1)
     f00:	00808025 	move	s0,a0
     f04:	2484014c 	addiu	a0,a0,332
     f08:	0c000000 	jal	0 <EnEiyer_Init>
     f0c:	afa30034 	sw	v1,52(sp)
     f10:	860400b4 	lh	a0,180(s0)
     f14:	34018000 	li	at,0x8000
     f18:	8fa30034 	lw	v1,52(sp)
     f1c:	1880001a 	blez	a0,f88 <func_80A00E8C+0x9c>
     f20:	0081082a 	slt	at,a0,at
     f24:	50200019 	beqzl	at,f8c <func_80A00E8C+0xa0>
     f28:	248ff000 	addiu	t7,a0,-4096
     f2c:	c4640024 	lwc1	$f4,36(v1)
     f30:	3c0141a0 	lui	at,0x41a0
     f34:	44814000 	mtc1	at,$f8
     f38:	e7a40028 	swc1	$f4,40(sp)
     f3c:	c4660028 	lwc1	$f6,40(v1)
     f40:	02002025 	move	a0,s0
     f44:	27a50028 	addiu	a1,sp,40
     f48:	46083280 	add.s	$f10,$f6,$f8
     f4c:	e7aa002c 	swc1	$f10,44(sp)
     f50:	c470002c 	lwc1	$f16,44(v1)
     f54:	0c000000 	jal	0 <EnEiyer_Init>
     f58:	e7b00030 	swc1	$f16,48(sp)
     f5c:	00022c00 	sll	a1,v0,0x10
     f60:	00052c03 	sra	a1,a1,0x10
     f64:	260400b4 	addiu	a0,s0,180
     f68:	0c000000 	jal	0 <EnEiyer_Init>
     f6c:	24061000 	li	a2,4096
     f70:	10400007 	beqz	v0,f90 <func_80A00E8C+0xa4>
     f74:	02002025 	move	a0,s0
     f78:	0c000000 	jal	0 <EnEiyer_Init>
     f7c:	8fa5003c 	lw	a1,60(sp)
     f80:	10000004 	b	f94 <func_80A00E8C+0xa8>
     f84:	861800b4 	lh	t8,180(s0)
     f88:	248ff000 	addiu	t7,a0,-4096
     f8c:	a60f00b4 	sh	t7,180(s0)
     f90:	861800b4 	lh	t8,180(s0)
     f94:	3c063e99 	lui	a2,0x3e99
     f98:	34c6999a 	ori	a2,a2,0x999a
     f9c:	0018c823 	negu	t9,t8
     fa0:	a6190030 	sh	t9,48(s0)
     fa4:	26040068 	addiu	a0,s0,104
     fa8:	0c000000 	jal	0 <EnEiyer_Init>
     fac:	3c0540a0 	lui	a1,0x40a0
     fb0:	26040032 	addiu	a0,s0,50
     fb4:	8605008a 	lh	a1,138(s0)
     fb8:	24060002 	li	a2,2
     fbc:	0c000000 	jal	0 <EnEiyer_Init>
     fc0:	2407071c 	li	a3,1820
     fc4:	02002025 	move	a0,s0
     fc8:	0c000000 	jal	0 <EnEiyer_Init>
     fcc:	2405314f 	li	a1,12623
     fd0:	8fbf001c 	lw	ra,28(sp)
     fd4:	8fb00018 	lw	s0,24(sp)
     fd8:	27bd0038 	addiu	sp,sp,56
     fdc:	03e00008 	jr	ra
     fe0:	00000000 	nop

00000fe4 <func_80A00F84>:
     fe4:	27bdffe8 	addiu	sp,sp,-24
     fe8:	afbf0014 	sw	ra,20(sp)
     fec:	00803025 	move	a2,a0
     ff0:	afa5001c 	sw	a1,28(sp)
     ff4:	afa60018 	sw	a2,24(sp)
     ff8:	0c000000 	jal	0 <EnEiyer_Init>
     ffc:	2484014c 	addiu	a0,a0,332
    1000:	8fa60018 	lw	a2,24(sp)
    1004:	3c010000 	lui	at,0x0
    1008:	c4260000 	lwc1	$f6,0(at)
    100c:	c4c40068 	lwc1	$f4,104(a2)
    1010:	94c20088 	lhu	v0,136(a2)
    1014:	00c02025 	move	a0,a2
    1018:	46062202 	mul.s	$f8,$f4,$f6
    101c:	304e0008 	andi	t6,v0,0x8
    1020:	304f0001 	andi	t7,v0,0x1
    1024:	15c00003 	bnez	t6,1034 <func_80A00F84+0x50>
    1028:	e4c80068 	swc1	$f8,104(a2)
    102c:	51e00005 	beqzl	t7,1044 <func_80A00F84+0x60>
    1030:	90c20298 	lbu	v0,664(a2)
    1034:	0c000000 	jal	0 <EnEiyer_Init>
    1038:	afa60018 	sw	a2,24(sp)
    103c:	8fa60018 	lw	a2,24(sp)
    1040:	90c20298 	lbu	v0,664(a2)
    1044:	00c02025 	move	a0,a2
    1048:	30580002 	andi	t8,v0,0x2
    104c:	13000002 	beqz	t8,1058 <func_80A00F84+0x74>
    1050:	3059fffc 	andi	t9,v0,0xfffc
    1054:	a0d90298 	sb	t9,664(a2)
    1058:	0c000000 	jal	0 <EnEiyer_Init>
    105c:	2405314f 	li	a1,12623
    1060:	8fbf0014 	lw	ra,20(sp)
    1064:	27bd0018 	addiu	sp,sp,24
    1068:	03e00008 	jr	ra
    106c:	00000000 	nop

00001070 <func_80A01010>:
    1070:	27bdffd0 	addiu	sp,sp,-48
    1074:	afb00020 	sw	s0,32(sp)
    1078:	00808025 	move	s0,a0
    107c:	afbf0024 	sw	ra,36(sp)
    1080:	afa50034 	sw	a1,52(sp)
    1084:	0c000000 	jal	0 <EnEiyer_Init>
    1088:	2484014c 	addiu	a0,a0,332
    108c:	26040030 	addiu	a0,s0,48
    1090:	2405c000 	li	a1,-16384
    1094:	0c000000 	jal	0 <EnEiyer_Init>
    1098:	24060450 	li	a2,1104
    109c:	26040068 	addiu	a0,s0,104
    10a0:	3c0540e0 	lui	a1,0x40e0
    10a4:	0c000000 	jal	0 <EnEiyer_Init>
    10a8:	3c063f80 	lui	a2,0x3f80
    10ac:	86020194 	lh	v0,404(s0)
    10b0:	2401ffff 	li	at,-1
    10b4:	1441001d 	bne	v0,at,112c <func_80A01010+0xbc>
    10b8:	00000000 	nop
    10bc:	96020088 	lhu	v0,136(s0)
    10c0:	2418000a 	li	t8,10
    10c4:	26050024 	addiu	a1,s0,36
    10c8:	304e0008 	andi	t6,v0,0x8
    10cc:	15c00003 	bnez	t6,10dc <func_80A01010+0x6c>
    10d0:	304f0001 	andi	t7,v0,0x1
    10d4:	51e0001f 	beqzl	t7,1154 <func_80A01010+0xe4>
    10d8:	8fbf0024 	lw	ra,36(sp)
    10dc:	a6180194 	sh	t8,404(s0)
    10e0:	afa5002c 	sw	a1,44(sp)
    10e4:	8fa40034 	lw	a0,52(sp)
    10e8:	2406001e 	li	a2,30
    10ec:	0c000000 	jal	0 <EnEiyer_Init>
    10f0:	240738c4 	li	a3,14532
    10f4:	96190088 	lhu	t9,136(s0)
    10f8:	8fa5002c 	lw	a1,44(sp)
    10fc:	8fa40034 	lw	a0,52(sp)
    1100:	33280001 	andi	t0,t9,0x1
    1104:	11000012 	beqz	t0,1150 <func_80A01010+0xe0>
    1108:	00003025 	move	a2,zero
    110c:	24090001 	li	t1,1
    1110:	240a02bc 	li	t2,700
    1114:	afaa0014 	sw	t2,20(sp)
    1118:	afa90010 	sw	t1,16(sp)
    111c:	0c000000 	jal	0 <EnEiyer_Init>
    1120:	00003825 	move	a3,zero
    1124:	1000000b 	b	1154 <func_80A01010+0xe4>
    1128:	8fbf0024 	lw	ra,36(sp)
    112c:	10400003 	beqz	v0,113c <func_80A01010+0xcc>
    1130:	244bffff 	addiu	t3,v0,-1
    1134:	a60b0194 	sh	t3,404(s0)
    1138:	86020194 	lh	v0,404(s0)
    113c:	14400004 	bnez	v0,1150 <func_80A01010+0xe0>
    1140:	02002025 	move	a0,s0
    1144:	a60000b4 	sh	zero,180(s0)
    1148:	0c000000 	jal	0 <EnEiyer_Init>
    114c:	a6000030 	sh	zero,48(s0)
    1150:	8fbf0024 	lw	ra,36(sp)
    1154:	8fb00020 	lw	s0,32(sp)
    1158:	27bd0030 	addiu	sp,sp,48
    115c:	03e00008 	jr	ra
    1160:	00000000 	nop

00001164 <func_80A01104>:
    1164:	27bdffe0 	addiu	sp,sp,-32
    1168:	afb00018 	sw	s0,24(sp)
    116c:	00808025 	move	s0,a0
    1170:	afbf001c 	sw	ra,28(sp)
    1174:	afa50024 	sw	a1,36(sp)
    1178:	0c000000 	jal	0 <EnEiyer_Init>
    117c:	2484014c 	addiu	a0,a0,332
    1180:	86020194 	lh	v0,404(s0)
    1184:	3c0142a0 	lui	at,0x42a0
    1188:	44813000 	mtc1	at,$f6
    118c:	10400002 	beqz	v0,1198 <func_80A01104+0x34>
    1190:	244effff 	addiu	t6,v0,-1
    1194:	a60e0194 	sh	t6,404(s0)
    1198:	c6040080 	lwc1	$f4,128(s0)
    119c:	3c0140a0 	lui	at,0x40a0
    11a0:	44815000 	mtc1	at,$f10
    11a4:	46062200 	add.s	$f8,$f4,$f6
    11a8:	26040280 	addiu	a0,s0,640
    11ac:	3c063f00 	lui	a2,0x3f00
    11b0:	8e070068 	lw	a3,104(s0)
    11b4:	460a4400 	add.s	$f16,$f8,$f10
    11b8:	44058000 	mfc1	a1,$f16
    11bc:	0c000000 	jal	0 <EnEiyer_Init>
    11c0:	00000000 	nop
    11c4:	3c0140a0 	lui	at,0x40a0
    11c8:	44812000 	mtc1	at,$f4
    11cc:	c6120280 	lwc1	$f18,640(s0)
    11d0:	960f0088 	lhu	t7,136(s0)
    11d4:	26040032 	addiu	a0,s0,50
    11d8:	46049181 	sub.s	$f6,$f18,$f4
    11dc:	31f80008 	andi	t8,t7,0x8
    11e0:	2406038e 	li	a2,910
    11e4:	13000004 	beqz	t8,11f8 <func_80A01104+0x94>
    11e8:	e6060028 	swc1	$f6,40(s0)
    11ec:	8619007e 	lh	t9,126(s0)
    11f0:	10000005 	b	1208 <func_80A01104+0xa4>
    11f4:	a6190196 	sh	t9,406(s0)
    11f8:	8608008a 	lh	t0,138(s0)
    11fc:	34018000 	li	at,0x8000
    1200:	01014821 	addu	t1,t0,at
    1204:	a6090196 	sh	t1,406(s0)
    1208:	0c000000 	jal	0 <EnEiyer_Init>
    120c:	86050196 	lh	a1,406(s0)
    1210:	260400b4 	addiu	a0,s0,180
    1214:	00002825 	move	a1,zero
    1218:	0c000000 	jal	0 <EnEiyer_Init>
    121c:	24060200 	li	a2,512
    1220:	860a0194 	lh	t2,404(s0)
    1224:	3c010000 	lui	at,0x0
    1228:	c4300000 	lwc1	$f16,0(at)
    122c:	448a4000 	mtc1	t2,$f8
    1230:	00000000 	nop
    1234:	468042a0 	cvt.s.w	$f10,$f8
    1238:	46105302 	mul.s	$f12,$f10,$f16
    123c:	0c000000 	jal	0 <EnEiyer_Init>
    1240:	00000000 	nop
    1244:	3c0145a0 	lui	at,0x45a0
    1248:	44819000 	mtc1	at,$f18
    124c:	860d0194 	lh	t5,404(s0)
    1250:	02002025 	move	a0,s0
    1254:	46120102 	mul.s	$f4,$f0,$f18
    1258:	4600218d 	trunc.w.s	$f6,$f4
    125c:	440c3000 	mfc1	t4,$f6
    1260:	15a00007 	bnez	t5,1280 <func_80A01104+0x11c>
    1264:	a60c00b8 	sh	t4,184(s0)
    1268:	920e0299 	lbu	t6,665(s0)
    126c:	a60000b4 	sh	zero,180(s0)
    1270:	a60000b8 	sh	zero,184(s0)
    1274:	35cf0001 	ori	t7,t6,0x1
    1278:	0c000000 	jal	0 <EnEiyer_Init>
    127c:	a20f0299 	sb	t7,665(s0)
    1280:	861800b4 	lh	t8,180(s0)
    1284:	0018c823 	negu	t9,t8
    1288:	a6190030 	sh	t9,48(s0)
    128c:	8fbf001c 	lw	ra,28(sp)
    1290:	8fb00018 	lw	s0,24(sp)
    1294:	27bd0020 	addiu	sp,sp,32
    1298:	03e00008 	jr	ra
    129c:	00000000 	nop

000012a0 <func_80A01240>:
    12a0:	27bdffe0 	addiu	sp,sp,-32
    12a4:	afb00018 	sw	s0,24(sp)
    12a8:	00808025 	move	s0,a0
    12ac:	afbf001c 	sw	ra,28(sp)
    12b0:	afa50024 	sw	a1,36(sp)
    12b4:	0c000000 	jal	0 <EnEiyer_Init>
    12b8:	2484014c 	addiu	a0,a0,332
    12bc:	44802000 	mtc1	zero,$f4
    12c0:	c6060068 	lwc1	$f6,104(s0)
    12c4:	24060400 	li	a2,1024
    12c8:	260400b4 	addiu	a0,s0,180
    12cc:	4606203c 	c.lt.s	$f4,$f6
    12d0:	24054000 	li	a1,16384
    12d4:	45000006 	bc1f	12f0 <func_80A01240+0x50>
    12d8:	00000000 	nop
    12dc:	260400b4 	addiu	a0,s0,180
    12e0:	0c000000 	jal	0 <EnEiyer_Init>
    12e4:	2405c000 	li	a1,-16384
    12e8:	10000004 	b	12fc <func_80A01240+0x5c>
    12ec:	860e00b8 	lh	t6,184(s0)
    12f0:	0c000000 	jal	0 <EnEiyer_Init>
    12f4:	24060400 	li	a2,1024
    12f8:	860e00b8 	lh	t6,184(s0)
    12fc:	86020194 	lh	v0,404(s0)
    1300:	25cf1000 	addiu	t7,t6,4096
    1304:	10400004 	beqz	v0,1318 <func_80A01240+0x78>
    1308:	a60f00b8 	sh	t7,184(s0)
    130c:	2458ffff 	addiu	t8,v0,-1
    1310:	a6180194 	sh	t8,404(s0)
    1314:	86020194 	lh	v0,404(s0)
    1318:	861900b4 	lh	t9,180(s0)
    131c:	00194023 	negu	t0,t9
    1320:	10400005 	beqz	v0,1338 <func_80A01240+0x98>
    1324:	a6080030 	sh	t0,48(s0)
    1328:	96090088 	lhu	t1,136(s0)
    132c:	312a0010 	andi	t2,t1,0x10
    1330:	51400004 	beqzl	t2,1344 <func_80A01240+0xa4>
    1334:	8fbf001c 	lw	ra,28(sp)
    1338:	0c000000 	jal	0 <EnEiyer_Init>
    133c:	02002025 	move	a0,s0
    1340:	8fbf001c 	lw	ra,28(sp)
    1344:	8fb00018 	lw	s0,24(sp)
    1348:	27bd0020 	addiu	sp,sp,32
    134c:	03e00008 	jr	ra
    1350:	00000000 	nop

00001354 <func_80A012F4>:
    1354:	27bdffe0 	addiu	sp,sp,-32
    1358:	afbf001c 	sw	ra,28(sp)
    135c:	afb00018 	sw	s0,24(sp)
    1360:	afa50024 	sw	a1,36(sp)
    1364:	908200c8 	lbu	v0,200(a0)
    1368:	3c014000 	lui	at,0x4000
    136c:	44813000 	mtc1	at,$f6
    1370:	2442fffb 	addiu	v0,v0,-5
    1374:	00021400 	sll	v0,v0,0x10
    1378:	00021403 	sra	v0,v0,0x10
    137c:	04410003 	bgez	v0,138c <func_80A012F4+0x38>
    1380:	00808025 	move	s0,a0
    1384:	10000002 	b	1390 <func_80A012F4+0x3c>
    1388:	a08000c8 	sb	zero,200(a0)
    138c:	a20200c8 	sb	v0,200(s0)
    1390:	c6040028 	lwc1	$f4,40(s0)
    1394:	920e00c8 	lbu	t6,200(s0)
    1398:	02002825 	move	a1,s0
    139c:	46062201 	sub.s	$f8,$f4,$f6
    13a0:	26060024 	addiu	a2,s0,36
    13a4:	24070050 	li	a3,80
    13a8:	15c00005 	bnez	t6,13c0 <func_80A012F4+0x6c>
    13ac:	e6080028 	swc1	$f8,40(s0)
    13b0:	0c000000 	jal	0 <EnEiyer_Init>
    13b4:	8fa40024 	lw	a0,36(sp)
    13b8:	0c000000 	jal	0 <EnEiyer_Init>
    13bc:	02002025 	move	a0,s0
    13c0:	8fbf001c 	lw	ra,28(sp)
    13c4:	8fb00018 	lw	s0,24(sp)
    13c8:	27bd0020 	addiu	sp,sp,32
    13cc:	03e00008 	jr	ra
    13d0:	00000000 	nop

000013d4 <func_80A01374>:
    13d4:	27bdffd8 	addiu	sp,sp,-40
    13d8:	afbf001c 	sw	ra,28(sp)
    13dc:	afb00018 	sw	s0,24(sp)
    13e0:	afa5002c 	sw	a1,44(sp)
    13e4:	84820194 	lh	v0,404(a0)
    13e8:	00808025 	move	s0,a0
    13ec:	00002825 	move	a1,zero
    13f0:	10400003 	beqz	v0,1400 <func_80A01374+0x2c>
    13f4:	24060200 	li	a2,512
    13f8:	244effff 	addiu	t6,v0,-1
    13fc:	a48e0194 	sh	t6,404(a0)
    1400:	0c000000 	jal	0 <EnEiyer_Init>
    1404:	260400b4 	addiu	a0,s0,180
    1408:	2604014c 	addiu	a0,s0,332
    140c:	0c000000 	jal	0 <EnEiyer_Init>
    1410:	afa40024 	sw	a0,36(sp)
    1414:	8fa40024 	lw	a0,36(sp)
    1418:	0c000000 	jal	0 <EnEiyer_Init>
    141c:	24050000 	li	a1,0
    1420:	10400003 	beqz	v0,1430 <func_80A01374+0x5c>
    1424:	02002025 	move	a0,s0
    1428:	0c000000 	jal	0 <EnEiyer_Init>
    142c:	2405394e 	li	a1,14670
    1430:	960f0088 	lhu	t7,136(s0)
    1434:	02002025 	move	a0,s0
    1438:	31f80002 	andi	t8,t7,0x2
    143c:	53000004 	beqzl	t8,1450 <func_80A01374+0x7c>
    1440:	86190194 	lh	t9,404(s0)
    1444:	0c000000 	jal	0 <EnEiyer_Init>
    1448:	2405387b 	li	a1,14459
    144c:	86190194 	lh	t9,404(s0)
    1450:	5720000a 	bnezl	t9,147c <func_80A01374+0xa8>
    1454:	8fbf001c 	lw	ra,28(sp)
    1458:	44800000 	mtc1	zero,$f0
    145c:	3c080000 	lui	t0,0x0
    1460:	02002025 	move	a0,s0
    1464:	e600006c 	swc1	$f0,108(s0)
    1468:	e6000060 	swc1	$f0,96(s0)
    146c:	85080000 	lh	t0,0(t0)
    1470:	0c000000 	jal	0 <EnEiyer_Init>
    1474:	a60802ca 	sh	t0,714(s0)
    1478:	8fbf001c 	lw	ra,28(sp)
    147c:	8fb00018 	lw	s0,24(sp)
    1480:	27bd0028 	addiu	sp,sp,40
    1484:	03e00008 	jr	ra
    1488:	00000000 	nop

0000148c <func_80A0142C>:
    148c:	27bdffe0 	addiu	sp,sp,-32
    1490:	afbf001c 	sw	ra,28(sp)
    1494:	afb00018 	sw	s0,24(sp)
    1498:	afa50024 	sw	a1,36(sp)
    149c:	90820299 	lbu	v0,665(a0)
    14a0:	00808025 	move	s0,a0
    14a4:	260502a0 	addiu	a1,s0,672
    14a8:	304e0002 	andi	t6,v0,0x2
    14ac:	11c00043 	beqz	t6,15bc <func_80A0142C+0x130>
    14b0:	304ffffd 	andi	t7,v0,0xfffd
    14b4:	a08f0299 	sb	t7,665(a0)
    14b8:	0c000000 	jal	0 <EnEiyer_Init>
    14bc:	24060001 	li	a2,1
    14c0:	921800b1 	lbu	t8,177(s0)
    14c4:	17000004 	bnez	t8,14d8 <func_80A0142C+0x4c>
    14c8:	00000000 	nop
    14cc:	921900b0 	lbu	t9,176(s0)
    14d0:	5320003b 	beqzl	t9,15c0 <func_80A0142C+0x134>
    14d4:	8fbf001c 	lw	ra,28(sp)
    14d8:	0c000000 	jal	0 <EnEiyer_Init>
    14dc:	02002025 	move	a0,s0
    14e0:	1440000a 	bnez	v0,150c <func_80A0142C+0x80>
    14e4:	8fa40024 	lw	a0,36(sp)
    14e8:	0c000000 	jal	0 <EnEiyer_Init>
    14ec:	02002825 	move	a1,s0
    14f0:	02002025 	move	a0,s0
    14f4:	0c000000 	jal	0 <EnEiyer_Init>
    14f8:	2405394d 	li	a1,14669
    14fc:	8e080004 	lw	t0,4(s0)
    1500:	2401fffe 	li	at,-2
    1504:	01014824 	and	t1,t0,at
    1508:	ae090004 	sw	t1,4(s0)
    150c:	8e0a02a8 	lw	t2,680(s0)
    1510:	24010019 	li	at,25
    1514:	5541000e 	bnel	t2,at,1550 <func_80A0142C+0xc4>
    1518:	920c00b1 	lbu	t4,177(s0)
    151c:	920b00b0 	lbu	t3,176(s0)
    1520:	02002025 	move	a0,s0
    1524:	15600005 	bnez	t3,153c <func_80A0142C+0xb0>
    1528:	00000000 	nop
    152c:	0c000000 	jal	0 <EnEiyer_Init>
    1530:	8fa50024 	lw	a1,36(sp)
    1534:	10000022 	b	15c0 <func_80A0142C+0x134>
    1538:	8fbf001c 	lw	ra,28(sp)
    153c:	0c000000 	jal	0 <EnEiyer_Init>
    1540:	02002025 	move	a0,s0
    1544:	1000001e 	b	15c0 <func_80A0142C+0x134>
    1548:	8fbf001c 	lw	ra,28(sp)
    154c:	920c00b1 	lbu	t4,177(s0)
    1550:	24010001 	li	at,1
    1554:	5581000b 	bnel	t4,at,1584 <func_80A0142C+0xf8>
    1558:	920f00af 	lbu	t7,175(s0)
    155c:	8e0e0190 	lw	t6,400(s0)
    1560:	3c0d0000 	lui	t5,0x0
    1564:	25ad0000 	addiu	t5,t5,0
    1568:	51ae0015 	beql	t5,t6,15c0 <func_80A0142C+0x134>
    156c:	8fbf001c 	lw	ra,28(sp)
    1570:	0c000000 	jal	0 <EnEiyer_Init>
    1574:	02002025 	move	a0,s0
    1578:	10000011 	b	15c0 <func_80A0142C+0x134>
    157c:	8fbf001c 	lw	ra,28(sp)
    1580:	920f00af 	lbu	t7,175(s0)
    1584:	02002025 	move	a0,s0
    1588:	3c180000 	lui	t8,0x0
    158c:	11e00007 	beqz	t7,15ac <func_80A0142C+0x120>
    1590:	00000000 	nop
    1594:	0c000000 	jal	0 <EnEiyer_Init>
    1598:	2405394c 	li	a1,14668
    159c:	0c000000 	jal	0 <EnEiyer_Init>
    15a0:	02002025 	move	a0,s0
    15a4:	10000006 	b	15c0 <func_80A0142C+0x134>
    15a8:	8fbf001c 	lw	ra,28(sp)
    15ac:	87180000 	lh	t8,0(t8)
    15b0:	02002025 	move	a0,s0
    15b4:	0c000000 	jal	0 <EnEiyer_Init>
    15b8:	a61802ca 	sh	t8,714(s0)
    15bc:	8fbf001c 	lw	ra,28(sp)
    15c0:	8fb00018 	lw	s0,24(sp)
    15c4:	27bd0020 	addiu	sp,sp,32
    15c8:	03e00008 	jr	ra
    15cc:	00000000 	nop

000015d0 <EnEiyer_Update>:
    15d0:	27bdffc8 	addiu	sp,sp,-56
    15d4:	afbf0024 	sw	ra,36(sp)
    15d8:	afb00020 	sw	s0,32(sp)
    15dc:	00808025 	move	s0,a0
    15e0:	0c000000 	jal	0 <EnEiyer_Init>
    15e4:	afa5003c 	sw	a1,60(sp)
    15e8:	8e190190 	lw	t9,400(s0)
    15ec:	02002025 	move	a0,s0
    15f0:	8fa5003c 	lw	a1,60(sp)
    15f4:	0320f809 	jalr	t9
    15f8:	00000000 	nop
    15fc:	860e0030 	lh	t6,48(s0)
    1600:	11c00006 	beqz	t6,161c <EnEiyer_Update+0x4c>
    1604:	00000000 	nop
    1608:	8e180190 	lw	t8,400(s0)
    160c:	3c0f0000 	lui	t7,0x0
    1610:	25ef0000 	addiu	t7,t7,0
    1614:	15f80005 	bne	t7,t8,162c <EnEiyer_Update+0x5c>
    1618:	00000000 	nop
    161c:	0c000000 	jal	0 <EnEiyer_Init>
    1620:	02002025 	move	a0,s0
    1624:	10000004 	b	1638 <EnEiyer_Update+0x68>
    1628:	8e020190 	lw	v0,400(s0)
    162c:	0c000000 	jal	0 <EnEiyer_Init>
    1630:	02002025 	move	a0,s0
    1634:	8e020190 	lw	v0,400(s0)
    1638:	3c080000 	lui	t0,0x0
    163c:	25080000 	addiu	t0,t0,0
    1640:	11020013 	beq	t0,v0,1690 <EnEiyer_Update+0xc0>
    1644:	3c090000 	lui	t1,0x0
    1648:	25290000 	addiu	t1,t1,0
    164c:	11220010 	beq	t1,v0,1690 <EnEiyer_Update+0xc0>
    1650:	3c0a0000 	lui	t2,0x0
    1654:	254a0000 	addiu	t2,t2,0
    1658:	1142000d 	beq	t2,v0,1690 <EnEiyer_Update+0xc0>
    165c:	3c0b0000 	lui	t3,0x0
    1660:	256b0000 	addiu	t3,t3,0
    1664:	1162000a 	beq	t3,v0,1690 <EnEiyer_Update+0xc0>
    1668:	3c0c0000 	lui	t4,0x0
    166c:	258c0000 	addiu	t4,t4,0
    1670:	11820007 	beq	t4,v0,1690 <EnEiyer_Update+0xc0>
    1674:	3c0d0000 	lui	t5,0x0
    1678:	25ad0000 	addiu	t5,t5,0
    167c:	55a2000f 	bnel	t5,v0,16bc <EnEiyer_Update+0xec>
    1680:	8603001c 	lh	v1,28(s0)
    1684:	86190194 	lh	t9,404(s0)
    1688:	2401ffff 	li	at,-1
    168c:	1721000a 	bne	t9,at,16b8 <EnEiyer_Update+0xe8>
    1690:	3c0141f0 	lui	at,0x41f0
    1694:	44812000 	mtc1	at,$f4
    1698:	240e0007 	li	t6,7
    169c:	afae0014 	sw	t6,20(sp)
    16a0:	8fa4003c 	lw	a0,60(sp)
    16a4:	02002825 	move	a1,s0
    16a8:	3c0640a0 	lui	a2,0x40a0
    16ac:	3c0741d8 	lui	a3,0x41d8
    16b0:	0c000000 	jal	0 <EnEiyer_Init>
    16b4:	e7a40010 	swc1	$f4,16(sp)
    16b8:	8603001c 	lh	v1,28(s0)
    16bc:	2404000a 	li	a0,10
    16c0:	26050288 	addiu	a1,s0,648
    16c4:	5083000a 	beql	a0,v1,16f0 <EnEiyer_Update+0x120>
    16c8:	86080032 	lh	t0,50(s0)
    16cc:	8e020190 	lw	v0,400(s0)
    16d0:	3c0f0000 	lui	t7,0x0
    16d4:	25ef0000 	addiu	t7,t7,0
    16d8:	11e20007 	beq	t7,v0,16f8 <EnEiyer_Update+0x128>
    16dc:	3c180000 	lui	t8,0x0
    16e0:	27180000 	addiu	t8,t8,0
    16e4:	13020004 	beq	t8,v0,16f8 <EnEiyer_Update+0x128>
    16e8:	00000000 	nop
    16ec:	86080032 	lh	t0,50(s0)
    16f0:	8603001c 	lh	v1,28(s0)
    16f4:	a60800b6 	sh	t0,182(s0)
    16f8:	50600003 	beqzl	v1,1708 <EnEiyer_Update+0x138>
    16fc:	02002025 	move	a0,s0
    1700:	1483001f 	bne	a0,v1,1780 <EnEiyer_Update+0x1b0>
    1704:	02002025 	move	a0,s0
    1708:	0c000000 	jal	0 <EnEiyer_Init>
    170c:	afa5002c 	sw	a1,44(sp)
    1710:	92090298 	lbu	t1,664(s0)
    1714:	3c010001 	lui	at,0x1
    1718:	8fa4003c 	lw	a0,60(sp)
    171c:	312a0001 	andi	t2,t1,0x1
    1720:	11400004 	beqz	t2,1734 <EnEiyer_Update+0x164>
    1724:	34211e60 	ori	at,at,0x1e60
    1728:	00812821 	addu	a1,a0,at
    172c:	0c000000 	jal	0 <EnEiyer_Init>
    1730:	8fa6002c 	lw	a2,44(sp)
    1734:	920b0299 	lbu	t3,665(s0)
    1738:	3c010001 	lui	at,0x1
    173c:	8fa4003c 	lw	a0,60(sp)
    1740:	316c0001 	andi	t4,t3,0x1
    1744:	11800004 	beqz	t4,1758 <EnEiyer_Update+0x188>
    1748:	34211e60 	ori	at,at,0x1e60
    174c:	00812821 	addu	a1,a0,at
    1750:	0c000000 	jal	0 <EnEiyer_Init>
    1754:	8fa6002c 	lw	a2,44(sp)
    1758:	8e190190 	lw	t9,400(s0)
    175c:	3c0d0000 	lui	t5,0x0
    1760:	25ad0000 	addiu	t5,t5,0
    1764:	11b90006 	beq	t5,t9,1780 <EnEiyer_Update+0x1b0>
    1768:	8fa4003c 	lw	a0,60(sp)
    176c:	3c010001 	lui	at,0x1
    1770:	34211e60 	ori	at,at,0x1e60
    1774:	00812821 	addu	a1,a0,at
    1778:	0c000000 	jal	0 <EnEiyer_Init>
    177c:	8fa6002c 	lw	a2,44(sp)
    1780:	8e0f0004 	lw	t7,4(s0)
    1784:	31f80001 	andi	t8,t7,0x1
    1788:	53000014 	beqzl	t8,17dc <EnEiyer_Update+0x20c>
    178c:	8fbf0024 	lw	ra,36(sp)
    1790:	0c000000 	jal	0 <EnEiyer_Init>
    1794:	860400b6 	lh	a0,182(s0)
    1798:	3c014148 	lui	at,0x4148
    179c:	44813000 	mtc1	at,$f6
    17a0:	c60a0024 	lwc1	$f10,36(s0)
    17a4:	860400b6 	lh	a0,182(s0)
    17a8:	46060202 	mul.s	$f8,$f0,$f6
    17ac:	460a4400 	add.s	$f16,$f8,$f10
    17b0:	0c000000 	jal	0 <EnEiyer_Init>
    17b4:	e6100038 	swc1	$f16,56(s0)
    17b8:	3c014148 	lui	at,0x4148
    17bc:	44819000 	mtc1	at,$f18
    17c0:	c606002c 	lwc1	$f6,44(s0)
    17c4:	c60a0028 	lwc1	$f10,40(s0)
    17c8:	46120102 	mul.s	$f4,$f0,$f18
    17cc:	e60a003c 	swc1	$f10,60(s0)
    17d0:	46062200 	add.s	$f8,$f4,$f6
    17d4:	e6080040 	swc1	$f8,64(s0)
    17d8:	8fbf0024 	lw	ra,36(sp)
    17dc:	8fb00020 	lw	s0,32(sp)
    17e0:	27bd0038 	addiu	sp,sp,56
    17e4:	03e00008 	jr	ra
    17e8:	00000000 	nop

000017ec <func_80A0178C>:
    17ec:	24010001 	li	at,1
    17f0:	14a10006 	bne	a1,at,180c <func_80A0178C+0x20>
    17f4:	afa40000 	sw	a0,0(sp)
    17f8:	3c010000 	lui	at,0x0
    17fc:	c4260000 	lwc1	$f6,0(at)
    1800:	c4e40008 	lwc1	$f4,8(a3)
    1804:	46062200 	add.s	$f8,$f4,$f6
    1808:	e4e80008 	swc1	$f8,8(a3)
    180c:	8fae0014 	lw	t6,20(sp)
    1810:	24010019 	li	at,25
    1814:	8dcf02a8 	lw	t7,680(t6)
    1818:	15e10006 	bne	t7,at,1834 <func_80A0178C+0x48>
    181c:	24010009 	li	at,9
    1820:	10a10004 	beq	a1,at,1834 <func_80A0178C+0x48>
    1824:	2401000a 	li	at,10
    1828:	10a10002 	beq	a1,at,1834 <func_80A0178C+0x48>
    182c:	00000000 	nop
    1830:	acc00000 	sw	zero,0(a2)
    1834:	03e00008 	jr	ra
    1838:	00001025 	move	v0,zero

0000183c <EnEiyer_Draw>:
    183c:	27bdff98 	addiu	sp,sp,-104
    1840:	afb20030 	sw	s2,48(sp)
    1844:	00a09025 	move	s2,a1
    1848:	afbf0034 	sw	ra,52(sp)
    184c:	afb1002c 	sw	s1,44(sp)
    1850:	afb00028 	sw	s0,40(sp)
    1854:	8ca50000 	lw	a1,0(a1)
    1858:	00808825 	move	s1,a0
    185c:	3c060000 	lui	a2,0x0
    1860:	24c60000 	addiu	a2,a2,0
    1864:	27a40050 	addiu	a0,sp,80
    1868:	240705d6 	li	a3,1494
    186c:	0c000000 	jal	0 <EnEiyer_Init>
    1870:	00a08025 	move	s0,a1
    1874:	8e2f0190 	lw	t7,400(s1)
    1878:	3c0e0000 	lui	t6,0x0
    187c:	25ce0000 	addiu	t6,t6,0
    1880:	11cf001f 	beq	t6,t7,1900 <EnEiyer_Draw+0xc4>
    1884:	00000000 	nop
    1888:	0c000000 	jal	0 <EnEiyer_Init>
    188c:	8e440000 	lw	a0,0(s2)
    1890:	8e0302c0 	lw	v1,704(s0)
    1894:	3c19db06 	lui	t9,0xdb06
    1898:	3c080000 	lui	t0,0x0
    189c:	24780008 	addiu	t8,v1,8
    18a0:	ae1802c0 	sw	t8,704(s0)
    18a4:	25080010 	addiu	t0,t0,16
    18a8:	37390020 	ori	t9,t9,0x20
    18ac:	ac790000 	sw	t9,0(v1)
    18b0:	ac680004 	sw	t0,4(v1)
    18b4:	8e0302c0 	lw	v1,704(s0)
    18b8:	3c0afb00 	lui	t2,0xfb00
    18bc:	240bffff 	li	t3,-1
    18c0:	24690008 	addiu	t1,v1,8
    18c4:	ae0902c0 	sw	t1,704(s0)
    18c8:	ac6b0004 	sw	t3,4(v1)
    18cc:	ac6a0000 	sw	t2,0(v1)
    18d0:	8e26016c 	lw	a2,364(s1)
    18d4:	8e250150 	lw	a1,336(s1)
    18d8:	afb10014 	sw	s1,20(sp)
    18dc:	afa00010 	sw	zero,16(sp)
    18e0:	8e0c02c0 	lw	t4,704(s0)
    18e4:	3c070000 	lui	a3,0x0
    18e8:	24e70000 	addiu	a3,a3,0
    18ec:	02402025 	move	a0,s2
    18f0:	0c000000 	jal	0 <EnEiyer_Init>
    18f4:	afac0018 	sw	t4,24(sp)
    18f8:	10000020 	b	197c <EnEiyer_Draw+0x140>
    18fc:	ae0202c0 	sw	v0,704(s0)
    1900:	0c000000 	jal	0 <EnEiyer_Init>
    1904:	8e440000 	lw	a0,0(s2)
    1908:	8e0302d0 	lw	v1,720(s0)
    190c:	3c0edb06 	lui	t6,0xdb06
    1910:	3c0f0000 	lui	t7,0x0
    1914:	246d0008 	addiu	t5,v1,8
    1918:	ae0d02d0 	sw	t5,720(s0)
    191c:	25ef0000 	addiu	t7,t7,0
    1920:	35ce0020 	ori	t6,t6,0x20
    1924:	ac6e0000 	sw	t6,0(v1)
    1928:	ac6f0004 	sw	t7,4(v1)
    192c:	8e0302d0 	lw	v1,720(s0)
    1930:	3c19fb00 	lui	t9,0xfb00
    1934:	2401ff00 	li	at,-256
    1938:	24780008 	addiu	t8,v1,8
    193c:	ae1802d0 	sw	t8,720(s0)
    1940:	ac790000 	sw	t9,0(v1)
    1944:	922900c8 	lbu	t1,200(s1)
    1948:	3c070000 	lui	a3,0x0
    194c:	24e70000 	addiu	a3,a3,0
    1950:	01215025 	or	t2,t1,at
    1954:	ac6a0004 	sw	t2,4(v1)
    1958:	8e26016c 	lw	a2,364(s1)
    195c:	8e250150 	lw	a1,336(s1)
    1960:	afb10014 	sw	s1,20(sp)
    1964:	afa00010 	sw	zero,16(sp)
    1968:	8e0b02d0 	lw	t3,720(s0)
    196c:	02402025 	move	a0,s2
    1970:	0c000000 	jal	0 <EnEiyer_Init>
    1974:	afab0018 	sw	t3,24(sp)
    1978:	ae0202d0 	sw	v0,720(s0)
    197c:	3c060000 	lui	a2,0x0
    1980:	24c60000 	addiu	a2,a2,0
    1984:	27a40050 	addiu	a0,sp,80
    1988:	8e450000 	lw	a1,0(s2)
    198c:	0c000000 	jal	0 <EnEiyer_Init>
    1990:	24070605 	li	a3,1541
    1994:	8fbf0034 	lw	ra,52(sp)
    1998:	8fb00028 	lw	s0,40(sp)
    199c:	8fb1002c 	lw	s1,44(sp)
    19a0:	8fb20030 	lw	s2,48(sp)
    19a4:	03e00008 	jr	ra
    19a8:	27bd0068 	addiu	sp,sp,104
    19ac:	00000000 	nop
