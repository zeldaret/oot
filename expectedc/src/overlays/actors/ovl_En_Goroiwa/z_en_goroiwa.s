
build/src/overlays/actors/ovl_En_Goroiwa/z_en_goroiwa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A4BCA0>:
       0:	c4840024 	lwc1	$f4,36(a0)
       4:	8c82016c 	lw	v0,364(a0)
       8:	3c010000 	lui	at,0x0
       c:	4600218d 	trunc.w.s	$f6,$f4
      10:	24420030 	addiu	v0,v0,48
      14:	440f3000 	mfc1	t7,$f6
      18:	00000000 	nop
      1c:	a44f0000 	sh	t7,0(v0)
      20:	8498001c 	lh	t8,28(a0)
      24:	c48a0028 	lwc1	$f10,40(a0)
      28:	0018ca83 	sra	t9,t8,0xa
      2c:	33280001 	andi	t0,t9,0x1
      30:	00084880 	sll	t1,t0,0x2
      34:	00290821 	addu	at,at,t1
      38:	c4280064 	lwc1	$f8,100(at)
      3c:	460a4400 	add.s	$f16,$f8,$f10
      40:	4600848d 	trunc.w.s	$f18,$f16
      44:	440b9000 	mfc1	t3,$f18
      48:	00000000 	nop
      4c:	a44b0002 	sh	t3,2(v0)
      50:	c484002c 	lwc1	$f4,44(a0)
      54:	4600218d 	trunc.w.s	$f6,$f4
      58:	440d3000 	mfc1	t5,$f6
      5c:	03e00008 	jr	ra
      60:	a44d0004 	sh	t5,4(v0)

00000064 <func_80A4BD04>:
      64:	27bdffd0 	addiu	sp,sp,-48
      68:	afb00020 	sw	s0,32(sp)
      6c:	00808025 	move	s0,a0
      70:	afa50034 	sw	a1,52(sp)
      74:	00a02025 	move	a0,a1
      78:	afbf0024 	sw	ra,36(sp)
      7c:	26050150 	addiu	a1,s0,336
      80:	0c000000 	jal	0 <func_80A4BCA0>
      84:	afa50028 	sw	a1,40(sp)
      88:	3c070000 	lui	a3,0x0
      8c:	260e0170 	addiu	t6,s0,368
      90:	8fa50028 	lw	a1,40(sp)
      94:	afae0010 	sw	t6,16(sp)
      98:	24e70044 	addiu	a3,a3,68
      9c:	8fa40034 	lw	a0,52(sp)
      a0:	0c000000 	jal	0 <func_80A4BCA0>
      a4:	02003025 	move	a2,s0
      a8:	0c000000 	jal	0 <func_80A4BCA0>
      ac:	02002025 	move	a0,s0
      b0:	8e18016c 	lw	t8,364(s0)
      b4:	240f003a 	li	t7,58
      b8:	a70f0036 	sh	t7,54(t8)
      bc:	8fbf0024 	lw	ra,36(sp)
      c0:	8fb00020 	lw	s0,32(sp)
      c4:	27bd0030 	addiu	sp,sp,48
      c8:	03e00008 	jr	ra
      cc:	00000000 	nop

000000d0 <func_80A4BD70>:
      d0:	afa50004 	sw	a1,4(sp)
      d4:	908e01d3 	lbu	t6,467(a0)
      d8:	31d8fffc 	andi	t8,t6,0xfffc
      dc:	a09801d3 	sb	t8,467(a0)
      e0:	0305c825 	or	t9,t8,a1
      e4:	03e00008 	jr	ra
      e8:	a09901d3 	sb	t9,467(a0)

000000ec <EnGoroiwa_Vec3fNormalize>:
      ec:	27bdffe8 	addiu	sp,sp,-24
      f0:	afbf0014 	sw	ra,20(sp)
      f4:	00803025 	move	a2,a0
      f8:	afa60018 	sw	a2,24(sp)
      fc:	00a02025 	move	a0,a1
     100:	0c000000 	jal	0 <func_80A4BCA0>
     104:	afa5001c 	sw	a1,28(sp)
     108:	3c010000 	lui	at,0x0
     10c:	c4240134 	lwc1	$f4,308(at)
     110:	8fa5001c 	lw	a1,28(sp)
     114:	8fa60018 	lw	a2,24(sp)
     118:	4604003c 	c.lt.s	$f0,$f4
     11c:	3c013f80 	lui	at,0x3f80
     120:	45020004 	bc1fl	134 <EnGoroiwa_Vec3fNormalize+0x48>
     124:	44813000 	mtc1	at,$f6
     128:	1000000d 	b	160 <EnGoroiwa_Vec3fNormalize+0x74>
     12c:	00001025 	move	v0,zero
     130:	44813000 	mtc1	at,$f6
     134:	c4a80000 	lwc1	$f8,0(a1)
     138:	24020001 	li	v0,1
     13c:	46003083 	div.s	$f2,$f6,$f0
     140:	46024282 	mul.s	$f10,$f8,$f2
     144:	e4ca0000 	swc1	$f10,0(a2)
     148:	c4b00004 	lwc1	$f16,4(a1)
     14c:	46028482 	mul.s	$f18,$f16,$f2
     150:	e4d20004 	swc1	$f18,4(a2)
     154:	c4a40008 	lwc1	$f4,8(a1)
     158:	46022182 	mul.s	$f6,$f4,$f2
     15c:	e4c60008 	swc1	$f6,8(a2)
     160:	8fbf0014 	lw	ra,20(sp)
     164:	27bd0018 	addiu	sp,sp,24
     168:	03e00008 	jr	ra
     16c:	00000000 	nop

00000170 <EnGoroiwa_SetSpeed>:
     170:	84ae00a4 	lh	t6,164(a1)
     174:	24010055 	li	at,85
     178:	240f0001 	li	t7,1
     17c:	15c10007 	bne	t6,at,19c <EnGoroiwa_SetSpeed+0x2c>
     180:	3c090000 	lui	t1,0x0
     184:	a08f01d2 	sb	t7,466(a0)
     188:	3c190000 	lui	t9,0x0
     18c:	8f390000 	lw	t9,0(t9)
     190:	24180398 	li	t8,920
     194:	03e00008 	jr	ra
     198:	a738116c 	sh	t8,4460(t9)
     19c:	a08001d2 	sb	zero,466(a0)
     1a0:	8d290000 	lw	t1,0(t1)
     1a4:	240803e8 	li	t0,1000
     1a8:	a528116c 	sh	t0,4460(t1)
     1ac:	03e00008 	jr	ra
     1b0:	00000000 	nop

000001b4 <func_80A4BE54>:
     1b4:	27bdffd0 	addiu	sp,sp,-48
     1b8:	afbf0014 	sw	ra,20(sp)
     1bc:	afa50034 	sw	a1,52(sp)
     1c0:	8498001c 	lh	t8,28(a0)
     1c4:	3c0f0001 	lui	t7,0x1
     1c8:	01e57821 	addu	t7,t7,a1
     1cc:	8def1e08 	lw	t7,7688(t7)
     1d0:	331900ff 	andi	t9,t8,0xff
     1d4:	001940c0 	sll	t0,t9,0x3
     1d8:	01e83021 	addu	a2,t7,t0
     1dc:	8cc30004 	lw	v1,4(a2)
     1e0:	849801ce 	lh	t8,462(a0)
     1e4:	3c0c0000 	lui	t4,0x0
     1e8:	00034900 	sll	t1,v1,0x4
     1ec:	00095702 	srl	t2,t1,0x1c
     1f0:	000a5880 	sll	t3,t2,0x2
     1f4:	018b6021 	addu	t4,t4,t3
     1f8:	8d8c0000 	lw	t4,0(t4)
     1fc:	3c0100ff 	lui	at,0xff
     200:	3421ffff 	ori	at,at,0xffff
     204:	0018c880 	sll	t9,t8,0x2
     208:	00616824 	and	t5,v1,at
     20c:	0338c823 	subu	t9,t9,t8
     210:	0019c840 	sll	t9,t9,0x1
     214:	018d7021 	addu	t6,t4,t5
     218:	01d91021 	addu	v0,t6,t9
     21c:	3c018000 	lui	at,0x8000
     220:	00411021 	addu	v0,v0,at
     224:	844f0000 	lh	t7,0(v0)
     228:	00803825 	move	a3,a0
     22c:	24840024 	addiu	a0,a0,36
     230:	448f2000 	mtc1	t7,$f4
     234:	27a5001c 	addiu	a1,sp,28
     238:	468021a0 	cvt.s.w	$f6,$f4
     23c:	e7a6001c 	swc1	$f6,28(sp)
     240:	84480002 	lh	t0,2(v0)
     244:	44884000 	mtc1	t0,$f8
     248:	00000000 	nop
     24c:	468042a0 	cvt.s.w	$f10,$f8
     250:	e7aa0020 	swc1	$f10,32(sp)
     254:	84490004 	lh	t1,4(v0)
     258:	afa70030 	sw	a3,48(sp)
     25c:	44898000 	mtc1	t1,$f16
     260:	00000000 	nop
     264:	468084a0 	cvt.s.w	$f18,$f16
     268:	0c000000 	jal	0 <func_80A4BCA0>
     26c:	e7b20024 	swc1	$f18,36(sp)
     270:	8fa70030 	lw	a3,48(sp)
     274:	a4e20032 	sh	v0,50(a3)
     278:	8fbf0014 	lw	ra,20(sp)
     27c:	27bd0030 	addiu	sp,sp,48
     280:	03e00008 	jr	ra
     284:	00000000 	nop

00000288 <func_80A4BF28>:
     288:	8483001c 	lh	v1,28(a0)
     28c:	848901cc 	lh	t1,460(a0)
     290:	849901d0 	lh	t9,464(a0)
     294:	3c0e0001 	lui	t6,0x1
     298:	01c57021 	addu	t6,t6,a1
     29c:	00031203 	sra	v0,v1,0x8
     2a0:	01394023 	subu	t0,t1,t9
     2a4:	8dce1e08 	lw	t6,7688(t6)
     2a8:	30420003 	andi	v0,v0,0x3
     2ac:	00084400 	sll	t0,t0,0x10
     2b0:	306f00ff 	andi	t7,v1,0xff
     2b4:	00021400 	sll	v0,v0,0x10
     2b8:	000fc0c0 	sll	t8,t7,0x3
     2bc:	00084403 	sra	t0,t0,0x10
     2c0:	00021403 	sra	v0,v0,0x10
     2c4:	0501000c 	bgez	t0,2f8 <func_80A4BF28+0x70>
     2c8:	01d83821 	addu	a3,t6,t8
     2cc:	10400003 	beqz	v0,2dc <func_80A4BF28+0x54>
     2d0:	24010001 	li	at,1
     2d4:	54410004 	bnel	v0,at,2e8 <func_80A4BF28+0x60>
     2d8:	24010003 	li	at,3
     2dc:	10000016 	b	338 <func_80A4BF28+0xb0>
     2e0:	848801ca 	lh	t0,458(a0)
     2e4:	24010003 	li	at,3
     2e8:	54410014 	bnel	v0,at,33c <func_80A4BF28+0xb4>
     2ec:	240a0006 	li	t2,6
     2f0:	10000011 	b	338 <func_80A4BF28+0xb0>
     2f4:	24080001 	li	t0,1
     2f8:	848301ca 	lh	v1,458(a0)
     2fc:	0068082a 	slt	at,v1,t0
     300:	5020000e 	beqzl	at,33c <func_80A4BF28+0xb4>
     304:	240a0006 	li	t2,6
     308:	10400003 	beqz	v0,318 <func_80A4BF28+0x90>
     30c:	24010001 	li	at,1
     310:	54410004 	bnel	v0,at,324 <func_80A4BF28+0x9c>
     314:	24010003 	li	at,3
     318:	10000007 	b	338 <func_80A4BF28+0xb0>
     31c:	00004025 	move	t0,zero
     320:	24010003 	li	at,3
     324:	54410005 	bnel	v0,at,33c <func_80A4BF28+0xb4>
     328:	240a0006 	li	t2,6
     32c:	2468ffff 	addiu	t0,v1,-1
     330:	00084400 	sll	t0,t0,0x10
     334:	00084403 	sra	t0,t0,0x10
     338:	240a0006 	li	t2,6
     33c:	012a0019 	multu	t1,t2
     340:	8ce30004 	lw	v1,4(a3)
     344:	3c0f0000 	lui	t7,0x0
     348:	3c0100ff 	lui	at,0xff
     34c:	00035900 	sll	t3,v1,0x4
     350:	000b6702 	srl	t4,t3,0x1c
     354:	000c6880 	sll	t5,t4,0x2
     358:	01ed7821 	addu	t7,t7,t5
     35c:	8def0000 	lw	t7,0(t7)
     360:	3421ffff 	ori	at,at,0xffff
     364:	0000c012 	mflo	t8
     368:	00617024 	and	t6,v1,at
     36c:	3c018000 	lui	at,0x8000
     370:	010a0019 	multu	t0,t2
     374:	01ee2021 	addu	a0,t7,t6
     378:	00812021 	addu	a0,a0,at
     37c:	00981021 	addu	v0,a0,t8
     380:	844b0000 	lh	t3,0(v0)
     384:	0000c812 	mflo	t9
     388:	00992821 	addu	a1,a0,t9
     38c:	84ac0000 	lh	t4,0(a1)
     390:	016c6823 	subu	t5,t3,t4
     394:	448d2000 	mtc1	t5,$f4
     398:	00000000 	nop
     39c:	468021a0 	cvt.s.w	$f6,$f4
     3a0:	e4c60000 	swc1	$f6,0(a2)
     3a4:	844f0000 	lh	t7,0(v0)
     3a8:	84ae0002 	lh	t6,2(a1)
     3ac:	01eec023 	subu	t8,t7,t6
     3b0:	44984000 	mtc1	t8,$f8
     3b4:	00000000 	nop
     3b8:	468042a0 	cvt.s.w	$f10,$f8
     3bc:	e4ca0004 	swc1	$f10,4(a2)
     3c0:	84ab0004 	lh	t3,4(a1)
     3c4:	84590000 	lh	t9,0(v0)
     3c8:	032b6023 	subu	t4,t9,t3
     3cc:	448c8000 	mtc1	t4,$f16
     3d0:	00000000 	nop
     3d4:	468084a0 	cvt.s.w	$f18,$f16
     3d8:	03e00008 	jr	ra
     3dc:	e4d20008 	swc1	$f18,8(a2)

000003e0 <func_80A4C080>:
     3e0:	8482001c 	lh	v0,28(a0)
     3e4:	848301ce 	lh	v1,462(a0)
     3e8:	00021203 	sra	v0,v0,0x8
     3ec:	30420003 	andi	v0,v0,0x3
     3f0:	00021400 	sll	v0,v0,0x10
     3f4:	04610012 	bgez	v1,440 <func_80A4C080+0x60>
     3f8:	00021403 	sra	v0,v0,0x10
     3fc:	10400003 	beqz	v0,40c <func_80A4C080+0x2c>
     400:	24030001 	li	v1,1
     404:	14430008 	bne	v0,v1,428 <func_80A4C080+0x48>
     408:	24010003 	li	at,3
     40c:	848501ca 	lh	a1,458(a0)
     410:	240fffff 	li	t7,-1
     414:	a48f01d0 	sh	t7,464(a0)
     418:	24aeffff 	addiu	t6,a1,-1
     41c:	a48e01ce 	sh	t6,462(a0)
     420:	03e00008 	jr	ra
     424:	a48501cc 	sh	a1,460(a0)
     428:	14410018 	bne	v0,at,48c <func_80A4C080+0xac>
     42c:	00000000 	nop
     430:	a48001cc 	sh	zero,460(a0)
     434:	a48301ce 	sh	v1,462(a0)
     438:	03e00008 	jr	ra
     43c:	a48301d0 	sh	v1,464(a0)
     440:	848501ca 	lh	a1,458(a0)
     444:	00a3082a 	slt	at,a1,v1
     448:	10200010 	beqz	at,48c <func_80A4C080+0xac>
     44c:	00000000 	nop
     450:	10400003 	beqz	v0,460 <func_80A4C080+0x80>
     454:	24030001 	li	v1,1
     458:	14430006 	bne	v0,v1,474 <func_80A4C080+0x94>
     45c:	24010003 	li	at,3
     460:	24030001 	li	v1,1
     464:	a48001cc 	sh	zero,460(a0)
     468:	a48301ce 	sh	v1,462(a0)
     46c:	03e00008 	jr	ra
     470:	a48301d0 	sh	v1,464(a0)
     474:	14410005 	bne	v0,at,48c <func_80A4C080+0xac>
     478:	24b8ffff 	addiu	t8,a1,-1
     47c:	2419ffff 	li	t9,-1
     480:	a48501cc 	sh	a1,460(a0)
     484:	a49801ce 	sh	t8,462(a0)
     488:	a49901d0 	sh	t9,464(a0)
     48c:	03e00008 	jr	ra
     490:	00000000 	nop

00000494 <func_80A4C134>:
     494:	27bdffe8 	addiu	sp,sp,-24
     498:	afbf0014 	sw	ra,20(sp)
     49c:	848201ce 	lh	v0,462(a0)
     4a0:	848e01d0 	lh	t6,464(a0)
     4a4:	a48201cc 	sh	v0,460(a0)
     4a8:	004e7821 	addu	t7,v0,t6
     4ac:	0c000000 	jal	0 <func_80A4BCA0>
     4b0:	a48f01ce 	sh	t7,462(a0)
     4b4:	8fbf0014 	lw	ra,20(sp)
     4b8:	27bd0018 	addiu	sp,sp,24
     4bc:	03e00008 	jr	ra
     4c0:	00000000 	nop

000004c4 <func_80A4C164>:
     4c4:	848e01d0 	lh	t6,464(a0)
     4c8:	848201ce 	lh	v0,462(a0)
     4cc:	000e7823 	negu	t7,t6
     4d0:	a48f01d0 	sh	t7,464(a0)
     4d4:	849801d0 	lh	t8,464(a0)
     4d8:	a48201cc 	sh	v0,460(a0)
     4dc:	0058c821 	addu	t9,v0,t8
     4e0:	03e00008 	jr	ra
     4e4:	a49901ce 	sh	t9,462(a0)

000004e8 <func_80A4C188>:
     4e8:	848f001c 	lh	t7,28(a0)
     4ec:	3c0e0001 	lui	t6,0x1
     4f0:	01c57021 	addu	t6,t6,a1
     4f4:	8dce1e08 	lw	t6,7688(t6)
     4f8:	31f800ff 	andi	t8,t7,0xff
     4fc:	0018c8c0 	sll	t9,t8,0x3
     500:	01d94021 	addu	t0,t6,t9
     504:	91090000 	lbu	t1,0(t0)
     508:	24020001 	li	v0,1
     50c:	a48001cc 	sh	zero,460(a0)
     510:	252affff 	addiu	t2,t1,-1
     514:	a48a01ca 	sh	t2,458(a0)
     518:	a48201ce 	sh	v0,462(a0)
     51c:	03e00008 	jr	ra
     520:	a48201d0 	sh	v0,464(a0)

00000524 <func_80A4C1C4>:
     524:	848f001c 	lh	t7,28(a0)
     528:	3c0e0001 	lui	t6,0x1
     52c:	01c57021 	addu	t6,t6,a1
     530:	8dce1e08 	lw	t6,7688(t6)
     534:	31f800ff 	andi	t8,t7,0xff
     538:	0018c8c0 	sll	t9,t8,0x3
     53c:	01d91021 	addu	v0,t6,t9
     540:	8c470004 	lw	a3,4(v0)
     544:	3c0b0000 	lui	t3,0x0
     548:	3c0100ff 	lui	at,0xff
     54c:	00074100 	sll	t0,a3,0x4
     550:	00084f02 	srl	t1,t0,0x1c
     554:	00095080 	sll	t2,t1,0x2
     558:	016a5821 	addu	t3,t3,t2
     55c:	8d6b0000 	lw	t3,0(t3)
     560:	3421ffff 	ori	at,at,0xffff
     564:	00067880 	sll	t7,a2,0x2
     568:	01e67823 	subu	t7,t7,a2
     56c:	00e16024 	and	t4,a3,at
     570:	000f7840 	sll	t7,t7,0x1
     574:	016c6821 	addu	t5,t3,t4
     578:	01af1821 	addu	v1,t5,t7
     57c:	3c018000 	lui	at,0x8000
     580:	00611821 	addu	v1,v1,at
     584:	84780000 	lh	t8,0(v1)
     588:	44982000 	mtc1	t8,$f4
     58c:	00000000 	nop
     590:	468021a0 	cvt.s.w	$f6,$f4
     594:	e4860024 	swc1	$f6,36(a0)
     598:	846e0002 	lh	t6,2(v1)
     59c:	448e4000 	mtc1	t6,$f8
     5a0:	00000000 	nop
     5a4:	468042a0 	cvt.s.w	$f10,$f8
     5a8:	e48a0028 	swc1	$f10,40(a0)
     5ac:	84790004 	lh	t9,4(v1)
     5b0:	44998000 	mtc1	t9,$f16
     5b4:	00000000 	nop
     5b8:	468084a0 	cvt.s.w	$f18,$f16
     5bc:	03e00008 	jr	ra
     5c0:	e492002c 	swc1	$f18,44(a0)

000005c4 <func_80A4C264>:
     5c4:	3c013f80 	lui	at,0x3f80
     5c8:	44810000 	mtc1	at,$f0
     5cc:	00000000 	nop
     5d0:	e48001b0 	swc1	$f0,432(a0)
     5d4:	03e00008 	jr	ra
     5d8:	e48001c0 	swc1	$f0,448(a0)

000005dc <func_80A4C27C>:
     5dc:	27bdffd8 	addiu	sp,sp,-40
     5e0:	afbf0014 	sw	ra,20(sp)
     5e4:	848f001c 	lh	t7,28(a0)
     5e8:	3c0e0001 	lui	t6,0x1
     5ec:	01c57021 	addu	t6,t6,a1
     5f0:	8dce1e08 	lw	t6,7688(t6)
     5f4:	31f800ff 	andi	t8,t7,0xff
     5f8:	0018c8c0 	sll	t9,t8,0x3
     5fc:	01d93021 	addu	a2,t6,t9
     600:	848e01ce 	lh	t6,462(a0)
     604:	240a0006 	li	t2,6
     608:	8cc20004 	lw	v0,4(a2)
     60c:	01ca0019 	multu	t6,t2
     610:	3c0f0000 	lui	t7,0x0
     614:	00025900 	sll	t3,v0,0x4
     618:	000b6702 	srl	t4,t3,0x1c
     61c:	848b01cc 	lh	t3,460(a0)
     620:	000c6880 	sll	t5,t4,0x2
     624:	01ed7821 	addu	t7,t7,t5
     628:	3c0100ff 	lui	at,0xff
     62c:	8def0000 	lw	t7,0(t7)
     630:	3421ffff 	ori	at,at,0xffff
     634:	0000c812 	mflo	t9
     638:	0041c024 	and	t8,v0,at
     63c:	3c018000 	lui	at,0x8000
     640:	016a0019 	multu	t3,t2
     644:	01f81821 	addu	v1,t7,t8
     648:	00611821 	addu	v1,v1,at
     64c:	00794021 	addu	t0,v1,t9
     650:	850f0000 	lh	t7,0(t0)
     654:	00803825 	move	a3,a0
     658:	00001025 	move	v0,zero
     65c:	00006012 	mflo	t4
     660:	006c4821 	addu	t1,v1,t4
     664:	852d0000 	lh	t5,0(t1)
     668:	15af0022 	bne	t5,t7,6f4 <func_80A4C27C+0x118>
     66c:	00000000 	nop
     670:	85380004 	lh	t8,4(t1)
     674:	850e0004 	lh	t6,4(t0)
     678:	170e001e 	bne	t8,t6,6f4 <func_80A4C27C+0x118>
     67c:	00000000 	nop
     680:	85220002 	lh	v0,2(t1)
     684:	85030002 	lh	v1,2(t0)
     688:	3c040000 	lui	a0,0x0
     68c:	24840000 	addiu	a0,a0,0
     690:	54430012 	bnel	v0,v1,6dc <func_80A4C27C+0x100>
     694:	0043082a 	slt	at,v0,v1
     698:	afa70028 	sw	a3,40(sp)
     69c:	afa8001c 	sw	t0,28(sp)
     6a0:	0c000000 	jal	0 <func_80A4BCA0>
     6a4:	afa90018 	sw	t1,24(sp)
     6a8:	8fb90028 	lw	t9,40(sp)
     6ac:	3c040000 	lui	a0,0x0
     6b0:	3c050000 	lui	a1,0x0
     6b4:	24a50048 	addiu	a1,a1,72
     6b8:	2484002c 	addiu	a0,a0,44
     6bc:	2406022f 	li	a2,559
     6c0:	0c000000 	jal	0 <func_80A4BCA0>
     6c4:	8727001c 	lh	a3,28(t9)
     6c8:	8fa8001c 	lw	t0,28(sp)
     6cc:	8fa90018 	lw	t1,24(sp)
     6d0:	85030002 	lh	v1,2(t0)
     6d4:	85220002 	lh	v0,2(t1)
     6d8:	0043082a 	slt	at,v0,v1
     6dc:	10200003 	beqz	at,6ec <func_80A4C27C+0x110>
     6e0:	00000000 	nop
     6e4:	10000003 	b	6f4 <func_80A4C27C+0x118>
     6e8:	24020001 	li	v0,1
     6ec:	10000001 	b	6f4 <func_80A4C27C+0x118>
     6f0:	2402ffff 	li	v0,-1
     6f4:	8fbf0014 	lw	ra,20(sp)
     6f8:	27bd0028 	addiu	sp,sp,40
     6fc:	03e00008 	jr	ra
     700:	00000000 	nop

00000704 <EnGoroiwa_SpawnDust>:
     704:	27bdff78 	addiu	sp,sp,-136
     708:	f7be0040 	sdc1	$f30,64(sp)
     70c:	3c0141a0 	lui	at,0x41a0
     710:	4481f000 	mtc1	at,$f30
     714:	f7bc0038 	sdc1	$f28,56(sp)
     718:	3c0141f0 	lui	at,0x41f0
     71c:	4481e000 	mtc1	at,$f28
     720:	f7ba0030 	sdc1	$f26,48(sp)
     724:	3c014220 	lui	at,0x4220
     728:	4481d000 	mtc1	at,$f26
     72c:	f7b80028 	sdc1	$f24,40(sp)
     730:	3c01423c 	lui	at,0x423c
     734:	4481c000 	mtc1	at,$f24
     738:	afb60064 	sw	s6,100(sp)
     73c:	afb50060 	sw	s5,96(sp)
     740:	f7b60020 	sdc1	$f22,32(sp)
     744:	3c013f00 	lui	at,0x3f00
     748:	afb70068 	sw	s7,104(sp)
     74c:	afb4005c 	sw	s4,92(sp)
     750:	afb30058 	sw	s3,88(sp)
     754:	afb20054 	sw	s2,84(sp)
     758:	afb10050 	sw	s1,80(sp)
     75c:	afb0004c 	sw	s0,76(sp)
     760:	3c150000 	lui	s5,0x0
     764:	3c160000 	lui	s6,0x0
     768:	4481b000 	mtc1	at,$f22
     76c:	00a09025 	move	s2,a1
     770:	00809825 	move	s3,a0
     774:	afbf006c 	sw	ra,108(sp)
     778:	f7b40018 	sdc1	$f20,24(sp)
     77c:	00008025 	move	s0,zero
     780:	26d60078 	addiu	s6,s6,120
     784:	26b5006c 	addiu	s5,s5,108
     788:	00008825 	move	s1,zero
     78c:	27b4007c 	addiu	s4,sp,124
     790:	24170008 	li	s7,8
     794:	26104e20 	addiu	s0,s0,20000
     798:	00108400 	sll	s0,s0,0x10
     79c:	0c000000 	jal	0 <func_80A4BCA0>
     7a0:	00108403 	sra	s0,s0,0x10
     7a4:	00102400 	sll	a0,s0,0x10
     7a8:	00042403 	sra	a0,a0,0x10
     7ac:	0c000000 	jal	0 <func_80A4BCA0>
     7b0:	46000506 	mov.s	$f20,$f0
     7b4:	4616a102 	mul.s	$f4,$f20,$f22
     7b8:	c6500000 	lwc1	$f16,0(s2)
     7bc:	46162180 	add.s	$f6,$f4,$f22
     7c0:	4606c202 	mul.s	$f8,$f24,$f6
     7c4:	00000000 	nop
     7c8:	46080282 	mul.s	$f10,$f0,$f8
     7cc:	46105480 	add.s	$f18,$f10,$f16
     7d0:	0c000000 	jal	0 <func_80A4BCA0>
     7d4:	e7b2007c 	swc1	$f18,124(sp)
     7d8:	46160101 	sub.s	$f4,$f0,$f22
     7dc:	c6480004 	lwc1	$f8,4(s2)
     7e0:	461a2182 	mul.s	$f6,$f4,$f26
     7e4:	46083280 	add.s	$f10,$f6,$f8
     7e8:	0c000000 	jal	0 <func_80A4BCA0>
     7ec:	e7aa0080 	swc1	$f10,128(sp)
     7f0:	00102400 	sll	a0,s0,0x10
     7f4:	00042403 	sra	a0,a0,0x10
     7f8:	0c000000 	jal	0 <func_80A4BCA0>
     7fc:	46000506 	mov.s	$f20,$f0
     800:	4616a402 	mul.s	$f16,$f20,$f22
     804:	c6480008 	lwc1	$f8,8(s2)
     808:	46168480 	add.s	$f18,$f16,$f22
     80c:	4612c102 	mul.s	$f4,$f24,$f18
     810:	00000000 	nop
     814:	46040182 	mul.s	$f6,$f0,$f4
     818:	46083280 	add.s	$f10,$f6,$f8
     81c:	0c000000 	jal	0 <func_80A4BCA0>
     820:	e7aa0084 	swc1	$f10,132(sp)
     824:	461c0402 	mul.s	$f16,$f0,$f28
     828:	24090050 	li	t1,80
     82c:	afa90014 	sw	t1,20(sp)
     830:	02602025 	move	a0,s3
     834:	02802825 	move	a1,s4
     838:	02a03025 	move	a2,s5
     83c:	02c03825 	move	a3,s6
     840:	4600848d 	trunc.w.s	$f18,$f16
     844:	440f9000 	mfc1	t7,$f18
     848:	00000000 	nop
     84c:	000fc400 	sll	t8,t7,0x10
     850:	0018cc03 	sra	t9,t8,0x10
     854:	27280064 	addiu	t0,t9,100
     858:	0c000000 	jal	0 <func_80A4BCA0>
     85c:	afa80010 	sw	t0,16(sp)
     860:	0c000000 	jal	0 <func_80A4BCA0>
     864:	00000000 	nop
     868:	461e0102 	mul.s	$f4,$f0,$f30
     86c:	240f0050 	li	t7,80
     870:	afaf0014 	sw	t7,20(sp)
     874:	02602025 	move	a0,s3
     878:	02802825 	move	a1,s4
     87c:	02a03025 	move	a2,s5
     880:	02c03825 	move	a3,s6
     884:	4600218d 	trunc.w.s	$f6,$f4
     888:	440b3000 	mfc1	t3,$f6
     88c:	00000000 	nop
     890:	000b6400 	sll	t4,t3,0x10
     894:	000c6c03 	sra	t5,t4,0x10
     898:	25ae0050 	addiu	t6,t5,80
     89c:	0c000000 	jal	0 <func_80A4BCA0>
     8a0:	afae0010 	sw	t6,16(sp)
     8a4:	26310001 	addiu	s1,s1,1
     8a8:	5637ffbb 	bnel	s1,s7,798 <EnGoroiwa_SpawnDust+0x94>
     8ac:	26104e20 	addiu	s0,s0,20000
     8b0:	8fbf006c 	lw	ra,108(sp)
     8b4:	d7b40018 	ldc1	$f20,24(sp)
     8b8:	d7b60020 	ldc1	$f22,32(sp)
     8bc:	d7b80028 	ldc1	$f24,40(sp)
     8c0:	d7ba0030 	ldc1	$f26,48(sp)
     8c4:	d7bc0038 	ldc1	$f28,56(sp)
     8c8:	d7be0040 	ldc1	$f30,64(sp)
     8cc:	8fb0004c 	lw	s0,76(sp)
     8d0:	8fb10050 	lw	s1,80(sp)
     8d4:	8fb20054 	lw	s2,84(sp)
     8d8:	8fb30058 	lw	s3,88(sp)
     8dc:	8fb4005c 	lw	s4,92(sp)
     8e0:	8fb50060 	lw	s5,96(sp)
     8e4:	8fb60064 	lw	s6,100(sp)
     8e8:	8fb70068 	lw	s7,104(sp)
     8ec:	03e00008 	jr	ra
     8f0:	27bd0088 	addiu	sp,sp,136

000008f4 <EnGoroiwa_SpawnWaterEffects>:
     8f4:	27bdffa8 	addiu	sp,sp,-88
     8f8:	f7b40018 	sdc1	$f20,24(sp)
     8fc:	3c01425c 	lui	at,0x425c
     900:	afb50038 	sw	s5,56(sp)
     904:	afb40034 	sw	s4,52(sp)
     908:	afb30030 	sw	s3,48(sp)
     90c:	afb2002c 	sw	s2,44(sp)
     910:	afb10028 	sw	s1,40(sp)
     914:	afb00024 	sw	s0,36(sp)
     918:	4481a000 	mtc1	at,$f20
     91c:	00a09025 	move	s2,a1
     920:	0080a825 	move	s5,a0
     924:	afbf003c 	sw	ra,60(sp)
     928:	00008025 	move	s0,zero
     92c:	00008825 	move	s1,zero
     930:	27b3004c 	addiu	s3,sp,76
     934:	2414000b 	li	s4,11
     938:	26101746 	addiu	s0,s0,5958
     93c:	00108400 	sll	s0,s0,0x10
     940:	00108403 	sra	s0,s0,0x10
     944:	00102400 	sll	a0,s0,0x10
     948:	0c000000 	jal	0 <func_80A4BCA0>
     94c:	00042403 	sra	a0,a0,0x10
     950:	46140102 	mul.s	$f4,$f0,$f20
     954:	c6460000 	lwc1	$f6,0(s2)
     958:	00102400 	sll	a0,s0,0x10
     95c:	00042403 	sra	a0,a0,0x10
     960:	46062200 	add.s	$f8,$f4,$f6
     964:	e7a8004c 	swc1	$f8,76(sp)
     968:	c64a0004 	lwc1	$f10,4(s2)
     96c:	0c000000 	jal	0 <func_80A4BCA0>
     970:	e7aa0050 	swc1	$f10,80(sp)
     974:	46140402 	mul.s	$f16,$f0,$f20
     978:	c6520008 	lwc1	$f18,8(s2)
     97c:	240e015e 	li	t6,350
     980:	afae0014 	sw	t6,20(sp)
     984:	afa00010 	sw	zero,16(sp)
     988:	02a02025 	move	a0,s5
     98c:	02602825 	move	a1,s3
     990:	46128100 	add.s	$f4,$f16,$f18
     994:	00003025 	move	a2,zero
     998:	00003825 	move	a3,zero
     99c:	0c000000 	jal	0 <func_80A4BCA0>
     9a0:	e7a40054 	swc1	$f4,84(sp)
     9a4:	26310001 	addiu	s1,s1,1
     9a8:	5634ffe4 	bnel	s1,s4,93c <EnGoroiwa_SpawnWaterEffects+0x48>
     9ac:	26101746 	addiu	s0,s0,5958
     9b0:	02a02025 	move	a0,s5
     9b4:	02402825 	move	a1,s2
     9b8:	2406012c 	li	a2,300
     9bc:	240702bc 	li	a3,700
     9c0:	0c000000 	jal	0 <func_80A4BCA0>
     9c4:	afa00010 	sw	zero,16(sp)
     9c8:	240f0004 	li	t7,4
     9cc:	afaf0010 	sw	t7,16(sp)
     9d0:	02a02025 	move	a0,s5
     9d4:	02402825 	move	a1,s2
     9d8:	240601f4 	li	a2,500
     9dc:	0c000000 	jal	0 <func_80A4BCA0>
     9e0:	24070384 	li	a3,900
     9e4:	24180008 	li	t8,8
     9e8:	afb80010 	sw	t8,16(sp)
     9ec:	02a02025 	move	a0,s5
     9f0:	02402825 	move	a1,s2
     9f4:	240601f4 	li	a2,500
     9f8:	0c000000 	jal	0 <func_80A4BCA0>
     9fc:	24070514 	li	a3,1300
     a00:	8fbf003c 	lw	ra,60(sp)
     a04:	d7b40018 	ldc1	$f20,24(sp)
     a08:	8fb00024 	lw	s0,36(sp)
     a0c:	8fb10028 	lw	s1,40(sp)
     a10:	8fb2002c 	lw	s2,44(sp)
     a14:	8fb30030 	lw	s3,48(sp)
     a18:	8fb40034 	lw	s4,52(sp)
     a1c:	8fb50038 	lw	s5,56(sp)
     a20:	03e00008 	jr	ra
     a24:	27bd0058 	addiu	sp,sp,88

00000a28 <func_80A4C6C8>:
     a28:	27bdffd0 	addiu	sp,sp,-48
     a2c:	3c0e0000 	lui	t6,0x0
     a30:	8dce0000 	lw	t6,0(t6)
     a34:	afbf001c 	sw	ra,28(sp)
     a38:	afb00018 	sw	s0,24(sp)
     a3c:	afa50034 	sw	a1,52(sp)
     a40:	85cf116c 	lh	t7,4460(t6)
     a44:	3c010000 	lui	at,0x0
     a48:	c4280138 	lwc1	$f8,312(at)
     a4c:	448f2000 	mtc1	t7,$f4
     a50:	00808025 	move	s0,a0
     a54:	3c063e99 	lui	a2,0x3e99
     a58:	468021a0 	cvt.s.w	$f6,$f4
     a5c:	34c6999a 	ori	a2,a2,0x999a
     a60:	24840068 	addiu	a0,a0,104
     a64:	46083282 	mul.s	$f10,$f6,$f8
     a68:	44055000 	mfc1	a1,$f10
     a6c:	0c000000 	jal	0 <func_80A4BCA0>
     a70:	00000000 	nop
     a74:	0c000000 	jal	0 <func_80A4BCA0>
     a78:	02002025 	move	a0,s0
     a7c:	8fb80034 	lw	t8,52(sp)
     a80:	8608001c 	lh	t0,28(s0)
     a84:	3c190001 	lui	t9,0x1
     a88:	0338c821 	addu	t9,t9,t8
     a8c:	8f391e08 	lw	t9,7688(t9)
     a90:	310900ff 	andi	t1,t0,0xff
     a94:	000950c0 	sll	t2,t1,0x3
     a98:	032a1821 	addu	v1,t9,t2
     a9c:	8c620004 	lw	v0,4(v1)
     aa0:	860801ce 	lh	t0,462(s0)
     aa4:	3c0e0000 	lui	t6,0x0
     aa8:	00025900 	sll	t3,v0,0x4
     aac:	000b6702 	srl	t4,t3,0x1c
     ab0:	000c6880 	sll	t5,t4,0x2
     ab4:	01cd7021 	addu	t6,t6,t5
     ab8:	8dce0000 	lw	t6,0(t6)
     abc:	3c0100ff 	lui	at,0xff
     ac0:	3421ffff 	ori	at,at,0xffff
     ac4:	00084880 	sll	t1,t0,0x2
     ac8:	00417824 	and	t7,v0,at
     acc:	01284823 	subu	t1,t1,t0
     ad0:	00094840 	sll	t1,t1,0x1
     ad4:	01cfc021 	addu	t8,t6,t7
     ad8:	03093821 	addu	a3,t8,t1
     adc:	3c018000 	lui	at,0x8000
     ae0:	00e13821 	addu	a3,a3,at
     ae4:	84f90000 	lh	t9,0(a3)
     ae8:	c600005c 	lwc1	$f0,92(s0)
     aec:	afa70020 	sw	a3,32(sp)
     af0:	44998000 	mtc1	t9,$f16
     af4:	46000005 	abs.s	$f0,$f0
     af8:	26040024 	addiu	a0,s0,36
     afc:	46808420 	cvt.s.w	$f16,$f16
     b00:	44060000 	mfc1	a2,$f0
     b04:	44058000 	mfc1	a1,$f16
     b08:	0c000000 	jal	0 <func_80A4BCA0>
     b0c:	00000000 	nop
     b10:	8fa70020 	lw	a3,32(sp)
     b14:	c6000064 	lwc1	$f0,100(s0)
     b18:	30430001 	andi	v1,v0,0x1
     b1c:	84ea0004 	lh	t2,4(a3)
     b20:	46000005 	abs.s	$f0,$f0
     b24:	afa30028 	sw	v1,40(sp)
     b28:	448a9000 	mtc1	t2,$f18
     b2c:	44060000 	mfc1	a2,$f0
     b30:	2604002c 	addiu	a0,s0,44
     b34:	468094a0 	cvt.s.w	$f18,$f18
     b38:	44059000 	mfc1	a1,$f18
     b3c:	0c000000 	jal	0 <func_80A4BCA0>
     b40:	00000000 	nop
     b44:	c6040028 	lwc1	$f4,40(s0)
     b48:	c6060060 	lwc1	$f6,96(s0)
     b4c:	8fa30028 	lw	v1,40(sp)
     b50:	46062200 	add.s	$f8,$f4,$f6
     b54:	00621824 	and	v1,v1,v0
     b58:	00601025 	move	v0,v1
     b5c:	e6080028 	swc1	$f8,40(s0)
     b60:	8fbf001c 	lw	ra,28(sp)
     b64:	8fb00018 	lw	s0,24(sp)
     b68:	27bd0030 	addiu	sp,sp,48
     b6c:	03e00008 	jr	ra
     b70:	00000000 	nop

00000b74 <func_80A4C814>:
     b74:	27bdffa8 	addiu	sp,sp,-88
     b78:	afbf001c 	sw	ra,28(sp)
     b7c:	afb00018 	sw	s0,24(sp)
     b80:	afa5005c 	sw	a1,92(sp)
     b84:	8498001c 	lh	t8,28(a0)
     b88:	3c0f0001 	lui	t7,0x1
     b8c:	01e57821 	addu	t7,t7,a1
     b90:	8def1e08 	lw	t7,7688(t7)
     b94:	331900ff 	andi	t9,t8,0xff
     b98:	001958c0 	sll	t3,t9,0x3
     b9c:	01eb4021 	addu	t0,t7,t3
     ba0:	848f01ce 	lh	t7,462(a0)
     ba4:	8d030004 	lw	v1,4(t0)
     ba8:	240a0006 	li	t2,6
     bac:	01ea0019 	multu	t7,t2
     bb0:	00036100 	sll	t4,v1,0x4
     bb4:	000c6f02 	srl	t5,t4,0x1c
     bb8:	000d7080 	sll	t6,t5,0x2
     bbc:	3c180000 	lui	t8,0x0
     bc0:	030ec021 	addu	t8,t8,t6
     bc4:	3c0100ff 	lui	at,0xff
     bc8:	8f180000 	lw	t8,0(t8)
     bcc:	3421ffff 	ori	at,at,0xffff
     bd0:	0061c824 	and	t9,v1,at
     bd4:	3c018000 	lui	at,0x8000
     bd8:	03193821 	addu	a3,t8,t9
     bdc:	00005812 	mflo	t3
     be0:	00e13821 	addu	a3,a3,at
     be4:	00eb1021 	addu	v0,a3,t3
     be8:	844e0000 	lh	t6,0(v0)
     bec:	848c01cc 	lh	t4,460(a0)
     bf0:	3c0f0000 	lui	t7,0x0
     bf4:	448e2000 	mtc1	t6,$f4
     bf8:	8def0000 	lw	t7,0(t7)
     bfc:	018a0019 	multu	t4,t2
     c00:	468021a0 	cvt.s.w	$f6,$f4
     c04:	3c010000 	lui	at,0x0
     c08:	00808025 	move	s0,a0
     c0c:	3c063e99 	lui	a2,0x3e99
     c10:	34c6999a 	ori	a2,a2,0x999a
     c14:	24840068 	addiu	a0,a0,104
     c18:	e7a6002c 	swc1	$f6,44(sp)
     c1c:	84580002 	lh	t8,2(v0)
     c20:	00006812 	mflo	t5
     c24:	44984000 	mtc1	t8,$f8
     c28:	00ed4821 	addu	t1,a3,t5
     c2c:	468042a0 	cvt.s.w	$f10,$f8
     c30:	c428013c 	lwc1	$f8,316(at)
     c34:	e7aa0030 	swc1	$f10,48(sp)
     c38:	84590004 	lh	t9,4(v0)
     c3c:	44998000 	mtc1	t9,$f16
     c40:	00000000 	nop
     c44:	468084a0 	cvt.s.w	$f18,$f16
     c48:	e7b20034 	swc1	$f18,52(sp)
     c4c:	85eb116c 	lh	t3,4460(t7)
     c50:	afa90048 	sw	t1,72(sp)
     c54:	448b2000 	mtc1	t3,$f4
     c58:	00000000 	nop
     c5c:	468021a0 	cvt.s.w	$f6,$f4
     c60:	46083282 	mul.s	$f10,$f6,$f8
     c64:	44055000 	mfc1	a1,$f10
     c68:	0c000000 	jal	0 <func_80A4BCA0>
     c6c:	00000000 	nop
     c70:	26050024 	addiu	a1,s0,36
     c74:	afa50020 	sw	a1,32(sp)
     c78:	0c000000 	jal	0 <func_80A4BCA0>
     c7c:	27a4002c 	addiu	a0,sp,44
     c80:	3c0141c8 	lui	at,0x41c8
     c84:	44818000 	mtc1	at,$f16
     c88:	8fa90048 	lw	t1,72(sp)
     c8c:	27a4002c 	addiu	a0,sp,44
     c90:	4610003c 	c.lt.s	$f0,$f16
     c94:	8fa50020 	lw	a1,32(sp)
     c98:	45020006 	bc1fl	cb4 <func_80A4C814+0x140>
     c9c:	852c0000 	lh	t4,0(t1)
     ca0:	0c000000 	jal	0 <func_80A4BCA0>
     ca4:	27a60038 	addiu	a2,sp,56
     ca8:	10000017 	b	d08 <func_80A4C814+0x194>
     cac:	2604005c 	addiu	a0,s0,92
     cb0:	852c0000 	lh	t4,0(t1)
     cb4:	c7b2002c 	lwc1	$f18,44(sp)
     cb8:	c7aa0030 	lwc1	$f10,48(sp)
     cbc:	448c2000 	mtc1	t4,$f4
     cc0:	00000000 	nop
     cc4:	468021a0 	cvt.s.w	$f6,$f4
     cc8:	46069201 	sub.s	$f8,$f18,$f6
     ccc:	c7a60034 	lwc1	$f6,52(sp)
     cd0:	e7a80038 	swc1	$f8,56(sp)
     cd4:	852d0002 	lh	t5,2(t1)
     cd8:	448d8000 	mtc1	t5,$f16
     cdc:	00000000 	nop
     ce0:	46808120 	cvt.s.w	$f4,$f16
     ce4:	46045481 	sub.s	$f18,$f10,$f4
     ce8:	e7b2003c 	swc1	$f18,60(sp)
     cec:	852e0004 	lh	t6,4(t1)
     cf0:	448e4000 	mtc1	t6,$f8
     cf4:	00000000 	nop
     cf8:	46804420 	cvt.s.w	$f16,$f8
     cfc:	46103281 	sub.s	$f10,$f6,$f16
     d00:	e7aa0040 	swc1	$f10,64(sp)
     d04:	2604005c 	addiu	a0,s0,92
     d08:	0c000000 	jal	0 <func_80A4BCA0>
     d0c:	27a50038 	addiu	a1,sp,56
     d10:	c6020068 	lwc1	$f2,104(s0)
     d14:	c604005c 	lwc1	$f4,92(s0)
     d18:	c6080060 	lwc1	$f8,96(s0)
     d1c:	c6100064 	lwc1	$f16,100(s0)
     d20:	46022482 	mul.s	$f18,$f4,$f2
     d24:	e612005c 	swc1	$f18,92(s0)
     d28:	46024182 	mul.s	$f6,$f8,$f2
     d2c:	c600005c 	lwc1	$f0,92(s0)
     d30:	46028282 	mul.s	$f10,$f16,$f2
     d34:	46000005 	abs.s	$f0,$f0
     d38:	44060000 	mfc1	a2,$f0
     d3c:	e6060060 	swc1	$f6,96(s0)
     d40:	e60a0064 	swc1	$f10,100(s0)
     d44:	8fa5002c 	lw	a1,44(sp)
     d48:	0c000000 	jal	0 <func_80A4BCA0>
     d4c:	8fa40020 	lw	a0,32(sp)
     d50:	c6000060 	lwc1	$f0,96(s0)
     d54:	30430001 	andi	v1,v0,0x1
     d58:	afa30044 	sw	v1,68(sp)
     d5c:	46000005 	abs.s	$f0,$f0
     d60:	26040028 	addiu	a0,s0,40
     d64:	44060000 	mfc1	a2,$f0
     d68:	0c000000 	jal	0 <func_80A4BCA0>
     d6c:	8fa50030 	lw	a1,48(sp)
     d70:	c6000064 	lwc1	$f0,100(s0)
     d74:	8fa30044 	lw	v1,68(sp)
     d78:	2604002c 	addiu	a0,s0,44
     d7c:	46000005 	abs.s	$f0,$f0
     d80:	00621824 	and	v1,v1,v0
     d84:	44060000 	mfc1	a2,$f0
     d88:	afa30044 	sw	v1,68(sp)
     d8c:	0c000000 	jal	0 <func_80A4BCA0>
     d90:	8fa50034 	lw	a1,52(sp)
     d94:	8fa30044 	lw	v1,68(sp)
     d98:	8fbf001c 	lw	ra,28(sp)
     d9c:	8fb00018 	lw	s0,24(sp)
     da0:	00621824 	and	v1,v1,v0
     da4:	00601025 	move	v0,v1
     da8:	03e00008 	jr	ra
     dac:	27bd0058 	addiu	sp,sp,88

00000db0 <func_80A4CA50>:
     db0:	27bdffd8 	addiu	sp,sp,-40
     db4:	afbf0014 	sw	ra,20(sp)
     db8:	afa5002c 	sw	a1,44(sp)
     dbc:	8498001c 	lh	t8,28(a0)
     dc0:	3c0f0001 	lui	t7,0x1
     dc4:	01e57821 	addu	t7,t7,a1
     dc8:	8def1e08 	lw	t7,7688(t7)
     dcc:	331900ff 	andi	t9,t8,0xff
     dd0:	001948c0 	sll	t1,t9,0x3
     dd4:	01e91821 	addu	v1,t7,t1
     dd8:	8c620004 	lw	v0,4(v1)
     ddc:	3c090000 	lui	t1,0x0
     de0:	8d290000 	lw	t1,0(t1)
     de4:	00025100 	sll	t2,v0,0x4
     de8:	000a5f02 	srl	t3,t2,0x1c
     dec:	849901ce 	lh	t9,462(a0)
     df0:	852a116c 	lh	t2,4460(t1)
     df4:	000b6080 	sll	t4,t3,0x2
     df8:	3c0d0000 	lui	t5,0x0
     dfc:	01ac6821 	addu	t5,t5,t4
     e00:	8dad0000 	lw	t5,0(t5)
     e04:	3c0100ff 	lui	at,0xff
     e08:	448a2000 	mtc1	t2,$f4
     e0c:	3421ffff 	ori	at,at,0xffff
     e10:	00197880 	sll	t7,t9,0x2
     e14:	00417024 	and	t6,v0,at
     e18:	01f97823 	subu	t7,t7,t9
     e1c:	000f7840 	sll	t7,t7,0x1
     e20:	01aec021 	addu	t8,t5,t6
     e24:	468021a0 	cvt.s.w	$f6,$f4
     e28:	030f4021 	addu	t0,t8,t7
     e2c:	3c018000 	lui	at,0x8000
     e30:	01014021 	addu	t0,t0,at
     e34:	3c010000 	lui	at,0x0
     e38:	c4280140 	lwc1	$f8,320(at)
     e3c:	3c013f00 	lui	at,0x3f00
     e40:	44818000 	mtc1	at,$f16
     e44:	46083282 	mul.s	$f10,$f6,$f8
     e48:	00803825 	move	a3,a0
     e4c:	3c063e38 	lui	a2,0x3e38
     e50:	34c651ec 	ori	a2,a2,0x51ec
     e54:	afa70028 	sw	a3,40(sp)
     e58:	24840060 	addiu	a0,a0,96
     e5c:	afa8001c 	sw	t0,28(sp)
     e60:	46105482 	mul.s	$f18,$f10,$f16
     e64:	44059000 	mfc1	a1,$f18
     e68:	0c000000 	jal	0 <func_80A4BCA0>
     e6c:	00000000 	nop
     e70:	8fa8001c 	lw	t0,28(sp)
     e74:	8fa70028 	lw	a3,40(sp)
     e78:	850b0000 	lh	t3,0(t0)
     e7c:	c4e00060 	lwc1	$f0,96(a3)
     e80:	24e40028 	addiu	a0,a3,40
     e84:	448b2000 	mtc1	t3,$f4
     e88:	46000005 	abs.s	$f0,$f0
     e8c:	468021a0 	cvt.s.w	$f6,$f4
     e90:	44060000 	mfc1	a2,$f0
     e94:	e4e60024 	swc1	$f6,36(a3)
     e98:	850c0004 	lh	t4,4(t0)
     e9c:	448c4000 	mtc1	t4,$f8
     ea0:	00000000 	nop
     ea4:	468042a0 	cvt.s.w	$f10,$f8
     ea8:	e4ea002c 	swc1	$f10,44(a3)
     eac:	850d0002 	lh	t5,2(t0)
     eb0:	448d8000 	mtc1	t5,$f16
     eb4:	00000000 	nop
     eb8:	46808420 	cvt.s.w	$f16,$f16
     ebc:	44058000 	mfc1	a1,$f16
     ec0:	0c000000 	jal	0 <func_80A4BCA0>
     ec4:	00000000 	nop
     ec8:	8fbf0014 	lw	ra,20(sp)
     ecc:	27bd0028 	addiu	sp,sp,40
     ed0:	03e00008 	jr	ra
     ed4:	00000000 	nop

00000ed8 <func_80A4CB78>:
     ed8:	27bdff78 	addiu	sp,sp,-136
     edc:	afbf0024 	sw	ra,36(sp)
     ee0:	afb10020 	sw	s1,32(sp)
     ee4:	afb0001c 	sw	s0,28(sp)
     ee8:	848f001c 	lh	t7,28(a0)
     eec:	3c0e0001 	lui	t6,0x1
     ef0:	01c57021 	addu	t6,t6,a1
     ef4:	8dce1e08 	lw	t6,7688(t6)
     ef8:	31f800ff 	andi	t8,t7,0xff
     efc:	0018c8c0 	sll	t9,t8,0x3
     f00:	01d91821 	addu	v1,t6,t9
     f04:	8c620004 	lw	v0,4(v1)
     f08:	848f01ce 	lh	t7,462(a0)
     f0c:	3c0b0000 	lui	t3,0x0
     f10:	00024100 	sll	t0,v0,0x4
     f14:	00084f02 	srl	t1,t0,0x1c
     f18:	00095080 	sll	t2,t1,0x2
     f1c:	016a5821 	addu	t3,t3,t2
     f20:	8d6b0000 	lw	t3,0(t3)
     f24:	3c0100ff 	lui	at,0xff
     f28:	3421ffff 	ori	at,at,0xffff
     f2c:	000fc080 	sll	t8,t7,0x2
     f30:	00416024 	and	t4,v0,at
     f34:	030fc023 	subu	t8,t8,t7
     f38:	0018c040 	sll	t8,t8,0x1
     f3c:	016c6821 	addu	t5,t3,t4
     f40:	01b83821 	addu	a3,t5,t8
     f44:	3c018000 	lui	at,0x8000
     f48:	00e13821 	addu	a3,a3,at
     f4c:	84ee0002 	lh	t6,2(a3)
     f50:	00808025 	move	s0,a0
     f54:	00a08825 	move	s1,a1
     f58:	448e2000 	mtc1	t6,$f4
     f5c:	3c05c160 	lui	a1,0xc160
     f60:	24840060 	addiu	a0,a0,96
     f64:	468021a0 	cvt.s.w	$f6,$f4
     f68:	afa7007c 	sw	a3,124(sp)
     f6c:	3c063f80 	lui	a2,0x3f80
     f70:	0c000000 	jal	0 <func_80A4BCA0>
     f74:	e7a60078 	swc1	$f6,120(sp)
     f78:	8fa7007c 	lw	a3,124(sp)
     f7c:	c6020028 	lwc1	$f2,40(s0)
     f80:	44803000 	mtc1	zero,$f6
     f84:	84f90000 	lh	t9,0(a3)
     f88:	44994000 	mtc1	t9,$f8
     f8c:	00000000 	nop
     f90:	468042a0 	cvt.s.w	$f10,$f8
     f94:	e60a0024 	swc1	$f10,36(s0)
     f98:	84e80004 	lh	t0,4(a3)
     f9c:	44888000 	mtc1	t0,$f16
     fa0:	00000000 	nop
     fa4:	468084a0 	cvt.s.w	$f18,$f16
     fa8:	e612002c 	swc1	$f18,44(s0)
     fac:	e7a20074 	swc1	$f2,116(sp)
     fb0:	c6000060 	lwc1	$f0,96(s0)
     fb4:	4606003c 	c.lt.s	$f0,$f6
     fb8:	46001100 	add.s	$f4,$f2,$f0
     fbc:	45000068 	bc1f	1160 <func_80A4CB78+0x288>
     fc0:	e6040028 	swc1	$f4,40(s0)
     fc4:	c7a80078 	lwc1	$f8,120(sp)
     fc8:	c60a0028 	lwc1	$f10,40(s0)
     fcc:	4608503e 	c.le.s	$f10,$f8
     fd0:	00000000 	nop
     fd4:	45020063 	bc1fl	1164 <func_80A4CB78+0x28c>
     fd8:	861901c6 	lh	t9,454(s0)
     fdc:	860901c6 	lh	t1,454(s0)
     fe0:	3c014416 	lui	at,0x4416
     fe4:	5520004c 	bnezl	t1,1118 <func_80A4CB78+0x240>
     fe8:	860201c6 	lh	v0,454(s0)
     fec:	c6100090 	lwc1	$f16,144(s0)
     ff0:	44819000 	mtc1	at,$f18
     ff4:	00000000 	nop
     ff8:	4612803c 	c.lt.s	$f16,$f18
     ffc:	00000000 	nop
    1000:	45020017 	bc1fl	1060 <func_80A4CB78+0x188>
    1004:	920f01d3 	lbu	t7,467(s0)
    1008:	862a07a0 	lh	t2,1952(s1)
    100c:	24050003 	li	a1,3
    1010:	000a5880 	sll	t3,t2,0x2
    1014:	022b6021 	addu	t4,s1,t3
    1018:	0c000000 	jal	0 <func_80A4BCA0>
    101c:	8d840790 	lw	a0,1936(t4)
    1020:	00022400 	sll	a0,v0,0x10
    1024:	afa2006c 	sw	v0,108(sp)
    1028:	00042403 	sra	a0,a0,0x10
    102c:	0c000000 	jal	0 <func_80A4BCA0>
    1030:	2405c350 	li	a1,-15536
    1034:	87a4006e 	lh	a0,110(sp)
    1038:	24050003 	li	a1,3
    103c:	00003025 	move	a2,zero
    1040:	00003825 	move	a3,zero
    1044:	afa00010 	sw	zero,16(sp)
    1048:	0c000000 	jal	0 <func_80A4BCA0>
    104c:	afa4002c 	sw	a0,44(sp)
    1050:	8fa4002c 	lw	a0,44(sp)
    1054:	0c000000 	jal	0 <func_80A4BCA0>
    1058:	24050007 	li	a1,7
    105c:	920f01d3 	lbu	t7,467(s0)
    1060:	44802000 	mtc1	zero,$f4
    1064:	31ed0010 	andi	t5,t7,0x10
    1068:	15a0002a 	bnez	t5,1114 <func_80A4CB78+0x23c>
    106c:	e60401c0 	swc1	$f4,448(s0)
    1070:	c6060024 	lwc1	$f6,36(s0)
    1074:	3c014248 	lui	at,0x4248
    1078:	44815000 	mtc1	at,$f10
    107c:	e7a6005c 	swc1	$f6,92(sp)
    1080:	c6080028 	lwc1	$f8,40(s0)
    1084:	27b8005c 	addiu	t8,sp,92
    1088:	02202025 	move	a0,s1
    108c:	460a4400 	add.s	$f16,$f8,$f10
    1090:	262507c0 	addiu	a1,s1,1984
    1094:	27a60068 	addiu	a2,sp,104
    1098:	27a70050 	addiu	a3,sp,80
    109c:	e7b00060 	swc1	$f16,96(sp)
    10a0:	c612002c 	lwc1	$f18,44(s0)
    10a4:	afb80014 	sw	t8,20(sp)
    10a8:	afb00010 	sw	s0,16(sp)
    10ac:	0c000000 	jal	0 <func_80A4BCA0>
    10b0:	e7b20064 	swc1	$f18,100(sp)
    10b4:	3c01426e 	lui	at,0x426e
    10b8:	44813000 	mtc1	at,$f6
    10bc:	c6040028 	lwc1	$f4,40(s0)
    10c0:	3c014170 	lui	at,0x4170
    10c4:	44815000 	mtc1	at,$f10
    10c8:	46062201 	sub.s	$f8,$f4,$f6
    10cc:	46000306 	mov.s	$f12,$f0
    10d0:	3c014120 	lui	at,0x4120
    10d4:	46080081 	sub.s	$f2,$f0,$f8
    10d8:	46001005 	abs.s	$f0,$f2
    10dc:	460a003c 	c.lt.s	$f0,$f10
    10e0:	00000000 	nop
    10e4:	4502000c 	bc1fl	1118 <func_80A4CB78+0x240>
    10e8:	860201c6 	lh	v0,454(s0)
    10ec:	44819000 	mtc1	at,$f18
    10f0:	c6100024 	lwc1	$f16,36(s0)
    10f4:	02202025 	move	a0,s1
    10f8:	46126100 	add.s	$f4,$f12,$f18
    10fc:	e7b00044 	swc1	$f16,68(sp)
    1100:	27a50044 	addiu	a1,sp,68
    1104:	e7a40048 	swc1	$f4,72(sp)
    1108:	c606002c 	lwc1	$f6,44(s0)
    110c:	0c000000 	jal	0 <func_80A4BCA0>
    1110:	e7a6004c 	swc1	$f6,76(sp)
    1114:	860201c6 	lh	v0,454(s0)
    1118:	3c010000 	lui	at,0x0
    111c:	18400003 	blez	v0,112c <func_80A4CB78+0x254>
    1120:	244e0001 	addiu	t6,v0,1
    1124:	1000003f 	b	1224 <func_80A4CB78+0x34c>
    1128:	24020001 	li	v0,1
    112c:	a60e01c6 	sh	t6,454(s0)
    1130:	c42a0144 	lwc1	$f10,324(at)
    1134:	c6080060 	lwc1	$f8,96(s0)
    1138:	c6120028 	lwc1	$f18,40(s0)
    113c:	3c010000 	lui	at,0x0
    1140:	460a4402 	mul.s	$f16,$f8,$f10
    1144:	e6100060 	swc1	$f16,96(s0)
    1148:	c7a40078 	lwc1	$f4,120(sp)
    114c:	c4280148 	lwc1	$f8,328(at)
    1150:	46049181 	sub.s	$f6,$f18,$f4
    1154:	46083282 	mul.s	$f10,$f6,$f8
    1158:	460a2401 	sub.s	$f16,$f4,$f10
    115c:	e6100028 	swc1	$f16,40(s0)
    1160:	861901c6 	lh	t9,454(s0)
    1164:	02202025 	move	a0,s1
    1168:	262507c0 	addiu	a1,s1,1984
    116c:	1720002c 	bnez	t9,1220 <func_80A4CB78+0x348>
    1170:	27a8003c 	addiu	t0,sp,60
    1174:	8e060024 	lw	a2,36(s0)
    1178:	8e07002c 	lw	a3,44(s0)
    117c:	27a90040 	addiu	t1,sp,64
    1180:	afa90014 	sw	t1,20(sp)
    1184:	0c000000 	jal	0 <func_80A4BCA0>
    1188:	afa80010 	sw	t0,16(sp)
    118c:	10400024 	beqz	v0,1220 <func_80A4CB78+0x348>
    1190:	c7b2003c 	lwc1	$f18,60(sp)
    1194:	c6060028 	lwc1	$f6,40(s0)
    1198:	4612303e 	c.le.s	$f6,$f18
    119c:	00000000 	nop
    11a0:	45020020 	bc1fl	1224 <func_80A4CB78+0x34c>
    11a4:	00001025 	move	v0,zero
    11a8:	920a01d3 	lbu	t2,467(s0)
    11ac:	354b0010 	ori	t3,t2,0x10
    11b0:	a20b01d3 	sb	t3,467(s0)
    11b4:	c7a40074 	lwc1	$f4,116(sp)
    11b8:	c7a8003c 	lwc1	$f8,60(sp)
    11bc:	4604403c 	c.lt.s	$f8,$f4
    11c0:	00000000 	nop
    11c4:	4502000f 	bc1fl	1204 <func_80A4CB78+0x32c>
    11c8:	3c01c100 	lui	at,0xc100
    11cc:	c60a0024 	lwc1	$f10,36(s0)
    11d0:	e7a80034 	swc1	$f8,52(sp)
    11d4:	02202025 	move	a0,s1
    11d8:	e7aa0030 	swc1	$f10,48(sp)
    11dc:	c610002c 	lwc1	$f16,44(s0)
    11e0:	27a50030 	addiu	a1,sp,48
    11e4:	0c000000 	jal	0 <func_80A4BCA0>
    11e8:	e7b00038 	swc1	$f16,56(sp)
    11ec:	3c010000 	lui	at,0x0
    11f0:	c426014c 	lwc1	$f6,332(at)
    11f4:	c6120060 	lwc1	$f18,96(s0)
    11f8:	46069102 	mul.s	$f4,$f18,$f6
    11fc:	e6040060 	swc1	$f4,96(s0)
    1200:	3c01c100 	lui	at,0xc100
    1204:	44810000 	mtc1	at,$f0
    1208:	c60a0060 	lwc1	$f10,96(s0)
    120c:	4600503c 	c.lt.s	$f10,$f0
    1210:	00000000 	nop
    1214:	45020003 	bc1fl	1224 <func_80A4CB78+0x34c>
    1218:	00001025 	move	v0,zero
    121c:	e6000060 	swc1	$f0,96(s0)
    1220:	00001025 	move	v0,zero
    1224:	8fbf0024 	lw	ra,36(sp)
    1228:	8fb0001c 	lw	s0,28(sp)
    122c:	8fb10020 	lw	s1,32(sp)
    1230:	03e00008 	jr	ra
    1234:	27bd0088 	addiu	sp,sp,136

00001238 <func_80A4CED8>:
    1238:	27bdff68 	addiu	sp,sp,-152
    123c:	afbf001c 	sw	ra,28(sp)
    1240:	afb00018 	sw	s0,24(sp)
    1244:	afa5009c 	sw	a1,156(sp)
    1248:	908201d3 	lbu	v0,467(a0)
    124c:	00808025 	move	s0,a0
    1250:	26050100 	addiu	a1,s0,256
    1254:	30420008 	andi	v0,v0,0x8
    1258:	10400003 	beqz	v0,1268 <func_80A4CED8+0x30>
    125c:	00000000 	nop
    1260:	10000009 	b	1288 <func_80A4CED8+0x50>
    1264:	c48c01bc 	lwc1	$f12,444(a0)
    1268:	0c000000 	jal	0 <func_80A4BCA0>
    126c:	26040024 	addiu	a0,s0,36
    1270:	3c010000 	lui	at,0x0
    1274:	c4240150 	lwc1	$f4,336(at)
    1278:	920201d3 	lbu	v0,467(s0)
    127c:	46040302 	mul.s	$f12,$f0,$f4
    1280:	30420008 	andi	v0,v0,0x8
    1284:	e60c01bc 	swc1	$f12,444(s0)
    1288:	c60601c0 	lwc1	$f6,448(s0)
    128c:	3c040000 	lui	a0,0x0
    1290:	24840084 	addiu	a0,a0,132
    1294:	46066302 	mul.s	$f12,$f12,$f6
    1298:	1040000d 	beqz	v0,12d0 <func_80A4CED8+0x98>
    129c:	2605005c 	addiu	a1,s0,92
    12a0:	02002025 	move	a0,s0
    12a4:	8fa5009c 	lw	a1,156(sp)
    12a8:	27a60028 	addiu	a2,sp,40
    12ac:	0c000000 	jal	0 <func_80A4BCA0>
    12b0:	e7ac008c 	swc1	$f12,140(sp)
    12b4:	3c040000 	lui	a0,0x0
    12b8:	24840084 	addiu	a0,a0,132
    12bc:	2605005c 	addiu	a1,s0,92
    12c0:	0c000000 	jal	0 <func_80A4BCA0>
    12c4:	27a60080 	addiu	a2,sp,128
    12c8:	10000005 	b	12e0 <func_80A4CED8+0xa8>
    12cc:	c7ac008c 	lwc1	$f12,140(sp)
    12d0:	27a60080 	addiu	a2,sp,128
    12d4:	0c000000 	jal	0 <func_80A4BCA0>
    12d8:	e7ac008c 	swc1	$f12,140(sp)
    12dc:	c7ac008c 	lwc1	$f12,140(sp)
    12e0:	27a40074 	addiu	a0,sp,116
    12e4:	27a50080 	addiu	a1,sp,128
    12e8:	0c000000 	jal	0 <func_80A4BCA0>
    12ec:	e7ac008c 	swc1	$f12,140(sp)
    12f0:	27a40074 	addiu	a0,sp,116
    12f4:	10400008 	beqz	v0,1318 <func_80A4CED8+0xe0>
    12f8:	c7ac008c 	lwc1	$f12,140(sp)
    12fc:	8c8f0000 	lw	t7,0(a0)
    1300:	ae0f01b0 	sw	t7,432(s0)
    1304:	8c8e0004 	lw	t6,4(a0)
    1308:	ae0e01b4 	sw	t6,436(s0)
    130c:	8c8f0008 	lw	t7,8(a0)
    1310:	10000007 	b	1330 <func_80A4CED8+0xf8>
    1314:	ae0f01b8 	sw	t7,440(s0)
    1318:	8e1901b0 	lw	t9,432(s0)
    131c:	ac990000 	sw	t9,0(a0)
    1320:	8e1801b4 	lw	t8,436(s0)
    1324:	ac980004 	sw	t8,4(a0)
    1328:	8e1901b8 	lw	t9,440(s0)
    132c:	ac990008 	sw	t9,8(a0)
    1330:	00802825 	move	a1,a0
    1334:	0c000000 	jal	0 <func_80A4BCA0>
    1338:	00003025 	move	a2,zero
    133c:	860800b6 	lh	t0,182(s0)
    1340:	3c010000 	lui	at,0x0
    1344:	c4300154 	lwc1	$f16,340(at)
    1348:	44884000 	mtc1	t0,$f8
    134c:	24050001 	li	a1,1
    1350:	468042a0 	cvt.s.w	$f10,$f8
    1354:	46105302 	mul.s	$f12,$f10,$f16
    1358:	0c000000 	jal	0 <func_80A4BCA0>
    135c:	00000000 	nop
    1360:	860900b4 	lh	t1,180(s0)
    1364:	3c010000 	lui	at,0x0
    1368:	c4260158 	lwc1	$f6,344(at)
    136c:	44899000 	mtc1	t1,$f18
    1370:	24050001 	li	a1,1
    1374:	46809120 	cvt.s.w	$f4,$f18
    1378:	46062302 	mul.s	$f12,$f4,$f6
    137c:	0c000000 	jal	0 <func_80A4BCA0>
    1380:	00000000 	nop
    1384:	860a00b8 	lh	t2,184(s0)
    1388:	3c010000 	lui	at,0x0
    138c:	c430015c 	lwc1	$f16,348(at)
    1390:	448a4000 	mtc1	t2,$f8
    1394:	24050001 	li	a1,1
    1398:	468042a0 	cvt.s.w	$f10,$f8
    139c:	46105302 	mul.s	$f12,$f10,$f16
    13a0:	0c000000 	jal	0 <func_80A4BCA0>
    13a4:	00000000 	nop
    13a8:	0c000000 	jal	0 <func_80A4BCA0>
    13ac:	27a40034 	addiu	a0,sp,52
    13b0:	27a40034 	addiu	a0,sp,52
    13b4:	260500b4 	addiu	a1,s0,180
    13b8:	0c000000 	jal	0 <func_80A4BCA0>
    13bc:	00003025 	move	a2,zero
    13c0:	8fbf001c 	lw	ra,28(sp)
    13c4:	8fb00018 	lw	s0,24(sp)
    13c8:	27bd0098 	addiu	sp,sp,152
    13cc:	03e00008 	jr	ra
    13d0:	00000000 	nop

000013d4 <func_80A4D074>:
    13d4:	27bdffe0 	addiu	sp,sp,-32
    13d8:	afbf0014 	sw	ra,20(sp)
    13dc:	afa50024 	sw	a1,36(sp)
    13e0:	8482001c 	lh	v0,28(a0)
    13e4:	afa40020 	sw	a0,32(sp)
    13e8:	00021203 	sra	v0,v0,0x8
    13ec:	30420003 	andi	v0,v0,0x3
    13f0:	00021400 	sll	v0,v0,0x10
    13f4:	00021403 	sra	v0,v0,0x10
    13f8:	0c000000 	jal	0 <func_80A4BCA0>
    13fc:	a7a2001e 	sh	v0,30(sp)
    1400:	87a2001e 	lh	v0,30(sp)
    1404:	8fa40020 	lw	a0,32(sp)
    1408:	24010001 	li	at,1
    140c:	50400004 	beqzl	v0,1420 <func_80A4D074+0x4c>
    1410:	848601cc 	lh	a2,460(a0)
    1414:	1441000b 	bne	v0,at,1444 <func_80A4D074+0x70>
    1418:	00000000 	nop
    141c:	848601cc 	lh	a2,460(a0)
    1420:	8fa50024 	lw	a1,36(sp)
    1424:	10c00004 	beqz	a2,1438 <func_80A4D074+0x64>
    1428:	00000000 	nop
    142c:	848e01ca 	lh	t6,458(a0)
    1430:	15c60004 	bne	t6,a2,1444 <func_80A4D074+0x70>
    1434:	00000000 	nop
    1438:	0c000000 	jal	0 <func_80A4BCA0>
    143c:	afa40020 	sw	a0,32(sp)
    1440:	8fa40020 	lw	a0,32(sp)
    1444:	0c000000 	jal	0 <func_80A4BCA0>
    1448:	8fa50024 	lw	a1,36(sp)
    144c:	8fbf0014 	lw	ra,20(sp)
    1450:	27bd0020 	addiu	sp,sp,32
    1454:	03e00008 	jr	ra
    1458:	00000000 	nop

0000145c <func_80A4D0FC>:
    145c:	27bdff18 	addiu	sp,sp,-232
    1460:	afbf009c 	sw	ra,156(sp)
    1464:	afbe0098 	sw	s8,152(sp)
    1468:	afb70094 	sw	s7,148(sp)
    146c:	afb60090 	sw	s6,144(sp)
    1470:	afb5008c 	sw	s5,140(sp)
    1474:	afb40088 	sw	s4,136(sp)
    1478:	afb30084 	sw	s3,132(sp)
    147c:	afb20080 	sw	s2,128(sp)
    1480:	afb1007c 	sw	s1,124(sp)
    1484:	afb00078 	sw	s0,120(sp)
    1488:	f7be0070 	sdc1	$f30,112(sp)
    148c:	f7bc0068 	sdc1	$f28,104(sp)
    1490:	f7ba0060 	sdc1	$f26,96(sp)
    1494:	f7b80058 	sdc1	$f24,88(sp)
    1498:	f7b60050 	sdc1	$f22,80(sp)
    149c:	f7b40048 	sdc1	$f20,72(sp)
    14a0:	8482001c 	lh	v0,28(a0)
    14a4:	3c010000 	lui	at,0x0
    14a8:	c43e0160 	lwc1	$f30,352(at)
    14ac:	00021283 	sra	v0,v0,0xa
    14b0:	30420001 	andi	v0,v0,0x1
    14b4:	3c010000 	lui	at,0x0
    14b8:	00021400 	sll	v0,v0,0x10
    14bc:	c43c0164 	lwc1	$f28,356(at)
    14c0:	00021403 	sra	v0,v0,0x10
    14c4:	3c014248 	lui	at,0x4248
    14c8:	3c0f0000 	lui	t7,0x0
    14cc:	25ef0090 	addiu	t7,t7,144
    14d0:	00027080 	sll	t6,v0,0x2
    14d4:	3c1e0000 	lui	s8,0x0
    14d8:	4481d000 	mtc1	at,$f26
    14dc:	00a0b025 	move	s6,a1
    14e0:	27de0000 	addiu	s8,s8,0
    14e4:	01cfa821 	addu	s5,t6,t7
    14e8:	27b100d0 	addiu	s1,sp,208
    14ec:	00009025 	move	s2,zero
    14f0:	00009825 	move	s3,zero
    14f4:	24940024 	addiu	s4,a0,36
    14f8:	27b700c4 	addiu	s7,sp,196
    14fc:	00122400 	sll	a0,s2,0x10
    1500:	0c000000 	jal	0 <func_80A4BCA0>
    1504:	00042403 	sra	a0,a0,0x10
    1508:	00122400 	sll	a0,s2,0x10
    150c:	46000586 	mov.s	$f22,$f0
    1510:	0c000000 	jal	0 <func_80A4BCA0>
    1514:	00042403 	sra	a0,a0,0x10
    1518:	0c000000 	jal	0 <func_80A4BCA0>
    151c:	46000606 	mov.s	$f24,$f0
    1520:	461e0102 	mul.s	$f4,$f0,$f30
    1524:	4600218d 	trunc.w.s	$f6,$f4
    1528:	44103000 	mfc1	s0,$f6
    152c:	00000000 	nop
    1530:	00108400 	sll	s0,s0,0x10
    1534:	0c000000 	jal	0 <func_80A4BCA0>
    1538:	00108403 	sra	s0,s0,0x10
    153c:	00102400 	sll	a0,s0,0x10
    1540:	00042403 	sra	a0,a0,0x10
    1544:	0c000000 	jal	0 <func_80A4BCA0>
    1548:	46000506 	mov.s	$f20,$f0
    154c:	461aa202 	mul.s	$f8,$f20,$f26
    1550:	00102400 	sll	a0,s0,0x10
    1554:	00042403 	sra	a0,a0,0x10
    1558:	46164282 	mul.s	$f10,$f8,$f22
    155c:	00000000 	nop
    1560:	460a0402 	mul.s	$f16,$f0,$f10
    1564:	0c000000 	jal	0 <func_80A4BCA0>
    1568:	e7b000d0 	swc1	$f16,208(sp)
    156c:	0c000000 	jal	0 <func_80A4BCA0>
    1570:	46000506 	mov.s	$f20,$f0
    1574:	3c013f00 	lui	at,0x3f00
    1578:	44819000 	mtc1	at,$f18
    157c:	3c0142c8 	lui	at,0x42c8
    1580:	44813000 	mtc1	at,$f6
    1584:	46120101 	sub.s	$f4,$f0,$f18
    1588:	c6b00000 	lwc1	$f16,0(s5)
    158c:	46062202 	mul.s	$f8,$f4,$f6
    1590:	00000000 	nop
    1594:	46144282 	mul.s	$f10,$f8,$f20
    1598:	460a8480 	add.s	$f18,$f16,$f10
    159c:	0c000000 	jal	0 <func_80A4BCA0>
    15a0:	e7b200d4 	swc1	$f18,212(sp)
    15a4:	00102400 	sll	a0,s0,0x10
    15a8:	00042403 	sra	a0,a0,0x10
    15ac:	0c000000 	jal	0 <func_80A4BCA0>
    15b0:	46000506 	mov.s	$f20,$f0
    15b4:	461aa102 	mul.s	$f4,$f20,$f26
    15b8:	c7b000d0 	lwc1	$f16,208(sp)
    15bc:	46182182 	mul.s	$f6,$f4,$f24
    15c0:	00000000 	nop
    15c4:	46060202 	mul.s	$f8,$f0,$f6
    15c8:	00000000 	nop
    15cc:	461c8282 	mul.s	$f10,$f16,$f28
    15d0:	e7a800d8 	swc1	$f8,216(sp)
    15d4:	0c000000 	jal	0 <func_80A4BCA0>
    15d8:	e7aa00c4 	swc1	$f10,196(sp)
    15dc:	3c014170 	lui	at,0x4170
    15e0:	44819000 	mtc1	at,$f18
    15e4:	c7b000d8 	lwc1	$f16,216(sp)
    15e8:	3c014000 	lui	at,0x4000
    15ec:	46120102 	mul.s	$f4,$f0,$f18
    15f0:	44813000 	mtc1	at,$f6
    15f4:	02202025 	move	a0,s1
    15f8:	461c8282 	mul.s	$f10,$f16,$f28
    15fc:	02802825 	move	a1,s4
    1600:	02203025 	move	a2,s1
    1604:	46062200 	add.s	$f8,$f4,$f6
    1608:	e7aa00cc 	swc1	$f10,204(sp)
    160c:	0c000000 	jal	0 <func_80A4BCA0>
    1610:	e7a800c8 	swc1	$f8,200(sp)
    1614:	0c000000 	jal	0 <func_80A4BCA0>
    1618:	00000000 	nop
    161c:	3c0140e0 	lui	at,0x40e0
    1620:	44819000 	mtc1	at,$f18
    1624:	3c013f80 	lui	at,0x3f80
    1628:	44813000 	mtc1	at,$f6
    162c:	46120102 	mul.s	$f4,$f0,$f18
    1630:	2419feac 	li	t9,-340
    1634:	24080021 	li	t0,33
    1638:	2409001c 	li	t1,28
    163c:	240a0002 	li	t2,2
    1640:	240d0001 	li	t5,1
    1644:	240e0046 	li	t6,70
    1648:	46062200 	add.s	$f8,$f4,$f6
    164c:	240fffff 	li	t7,-1
    1650:	24180001 	li	t8,1
    1654:	afb80038 	sw	t8,56(sp)
    1658:	4600440d 	trunc.w.s	$f16,$f8
    165c:	afaf0034 	sw	t7,52(sp)
    1660:	afae0030 	sw	t6,48(sp)
    1664:	afad0028 	sw	t5,40(sp)
    1668:	440c8000 	mfc1	t4,$f16
    166c:	afaa001c 	sw	t2,28(sp)
    1670:	afa90018 	sw	t1,24(sp)
    1674:	afa80014 	sw	t0,20(sp)
    1678:	afb90010 	sw	t9,16(sp)
    167c:	02c02025 	move	a0,s6
    1680:	02202825 	move	a1,s1
    1684:	02e03025 	move	a2,s7
    1688:	02203825 	move	a3,s1
    168c:	afa00020 	sw	zero,32(sp)
    1690:	afa0002c 	sw	zero,44(sp)
    1694:	afbe003c 	sw	s8,60(sp)
    1698:	0c000000 	jal	0 <func_80A4BCA0>
    169c:	afac0024 	sw	t4,36(sp)
    16a0:	26524e20 	addiu	s2,s2,20000
    16a4:	00129400 	sll	s2,s2,0x10
    16a8:	26730001 	addiu	s3,s3,1
    16ac:	24010010 	li	at,16
    16b0:	1661ff92 	bne	s3,at,14fc <func_80A4D0FC+0xa0>
    16b4:	00129403 	sra	s2,s2,0x10
    16b8:	c68a0000 	lwc1	$f10,0(s4)
    16bc:	c6b20000 	lwc1	$f18,0(s5)
    16c0:	24190046 	li	t9,70
    16c4:	e7aa00d0 	swc1	$f10,208(sp)
    16c8:	c6840004 	lwc1	$f4,4(s4)
    16cc:	2408006e 	li	t0,110
    16d0:	24090001 	li	t1,1
    16d4:	46049180 	add.s	$f6,$f18,$f4
    16d8:	02c02025 	move	a0,s6
    16dc:	02202825 	move	a1,s1
    16e0:	3c0642a0 	lui	a2,0x42a0
    16e4:	e7a600d4 	swc1	$f6,212(sp)
    16e8:	c6880008 	lwc1	$f8,8(s4)
    16ec:	afa90018 	sw	t1,24(sp)
    16f0:	afa80014 	sw	t0,20(sp)
    16f4:	afb90010 	sw	t9,16(sp)
    16f8:	24070005 	li	a3,5
    16fc:	0c000000 	jal	0 <func_80A4BCA0>
    1700:	e7a800d8 	swc1	$f8,216(sp)
    1704:	240a006e 	li	t2,110
    1708:	240b00a0 	li	t3,160
    170c:	240c0001 	li	t4,1
    1710:	afac0018 	sw	t4,24(sp)
    1714:	afab0014 	sw	t3,20(sp)
    1718:	afaa0010 	sw	t2,16(sp)
    171c:	02c02025 	move	a0,s6
    1720:	02202825 	move	a1,s1
    1724:	3c0642b4 	lui	a2,0x42b4
    1728:	0c000000 	jal	0 <func_80A4BCA0>
    172c:	24070005 	li	a3,5
    1730:	8fbf009c 	lw	ra,156(sp)
    1734:	d7b40048 	ldc1	$f20,72(sp)
    1738:	d7b60050 	ldc1	$f22,80(sp)
    173c:	d7b80058 	ldc1	$f24,88(sp)
    1740:	d7ba0060 	ldc1	$f26,96(sp)
    1744:	d7bc0068 	ldc1	$f28,104(sp)
    1748:	d7be0070 	ldc1	$f30,112(sp)
    174c:	8fb00078 	lw	s0,120(sp)
    1750:	8fb1007c 	lw	s1,124(sp)
    1754:	8fb20080 	lw	s2,128(sp)
    1758:	8fb30084 	lw	s3,132(sp)
    175c:	8fb40088 	lw	s4,136(sp)
    1760:	8fb5008c 	lw	s5,140(sp)
    1764:	8fb60090 	lw	s6,144(sp)
    1768:	8fb70094 	lw	s7,148(sp)
    176c:	8fbe0098 	lw	s8,152(sp)
    1770:	03e00008 	jr	ra
    1774:	27bd00e8 	addiu	sp,sp,232

00001778 <EnGoroiwa_Init>:
    1778:	27bdffd0 	addiu	sp,sp,-48
    177c:	afb20028 	sw	s2,40(sp)
    1780:	00a09025 	move	s2,a1
    1784:	afbf002c 	sw	ra,44(sp)
    1788:	afb10024 	sw	s1,36(sp)
    178c:	3c050000 	lui	a1,0x0
    1790:	00808825 	move	s1,a0
    1794:	afb00020 	sw	s0,32(sp)
    1798:	0c000000 	jal	0 <func_80A4BCA0>
    179c:	24a50098 	addiu	a1,a1,152
    17a0:	02202025 	move	a0,s1
    17a4:	0c000000 	jal	0 <func_80A4BCA0>
    17a8:	02402825 	move	a1,s2
    17ac:	8630001c 	lh	s0,28(s1)
    17b0:	240100ff 	li	at,255
    17b4:	3c0e0001 	lui	t6,0x1
    17b8:	320200ff 	andi	v0,s0,0xff
    17bc:	1441000c 	bne	v0,at,17f0 <EnGoroiwa_Init+0x78>
    17c0:	01d27021 	addu	t6,t6,s2
    17c4:	3c040000 	lui	a0,0x0
    17c8:	3c050000 	lui	a1,0x0
    17cc:	24a50090 	addiu	a1,a1,144
    17d0:	24840058 	addiu	a0,a0,88
    17d4:	24060409 	li	a2,1033
    17d8:	0c000000 	jal	0 <func_80A4BCA0>
    17dc:	02003825 	move	a3,s0
    17e0:	0c000000 	jal	0 <func_80A4BCA0>
    17e4:	02202025 	move	a0,s1
    17e8:	10000046 	b	1904 <EnGoroiwa_Init+0x18c>
    17ec:	8fbf002c 	lw	ra,44(sp)
    17f0:	8dce1e08 	lw	t6,7688(t6)
    17f4:	000278c0 	sll	t7,v0,0x3
    17f8:	26240098 	addiu	a0,s1,152
    17fc:	01cfc021 	addu	t8,t6,t7
    1800:	93190000 	lbu	t9,0(t8)
    1804:	00002825 	move	a1,zero
    1808:	3c060000 	lui	a2,0x0
    180c:	2b210002 	slti	at,t9,2
    1810:	1020000b 	beqz	at,1840 <EnGoroiwa_Init+0xc8>
    1814:	00000000 	nop
    1818:	3c040000 	lui	a0,0x0
    181c:	3c050000 	lui	a1,0x0
    1820:	24a500cc 	addiu	a1,a1,204
    1824:	248400a0 	addiu	a0,a0,160
    1828:	0c000000 	jal	0 <func_80A4BCA0>
    182c:	24060413 	li	a2,1043
    1830:	0c000000 	jal	0 <func_80A4BCA0>
    1834:	02202025 	move	a0,s1
    1838:	10000032 	b	1904 <EnGoroiwa_Init+0x18c>
    183c:	8fbf002c 	lw	ra,44(sp)
    1840:	0c000000 	jal	0 <func_80A4BCA0>
    1844:	24c60054 	addiu	a2,a2,84
    1848:	8628001c 	lh	t0,28(s1)
    184c:	3c050000 	lui	a1,0x0
    1850:	3c060000 	lui	a2,0x0
    1854:	00084a83 	sra	t1,t0,0xa
    1858:	312a0001 	andi	t2,t1,0x1
    185c:	000a5880 	sll	t3,t2,0x2
    1860:	00ab2821 	addu	a1,a1,t3
    1864:	3c074116 	lui	a3,0x4116
    1868:	34e76666 	ori	a3,a3,0x6666
    186c:	8ca500b0 	lw	a1,176(a1)
    1870:	24c60000 	addiu	a2,a2,0
    1874:	0c000000 	jal	0 <func_80A4BCA0>
    1878:	262400b4 	addiu	a0,s1,180
    187c:	240c00c8 	li	t4,200
    1880:	a22c00c8 	sb	t4,200(s1)
    1884:	02202025 	move	a0,s1
    1888:	0c000000 	jal	0 <func_80A4BCA0>
    188c:	02402825 	move	a1,s2
    1890:	02202025 	move	a0,s1
    1894:	0c000000 	jal	0 <func_80A4BCA0>
    1898:	02402825 	move	a1,s2
    189c:	02202025 	move	a0,s1
    18a0:	02402825 	move	a1,s2
    18a4:	0c000000 	jal	0 <func_80A4BCA0>
    18a8:	00003025 	move	a2,zero
    18ac:	0c000000 	jal	0 <func_80A4BCA0>
    18b0:	02202025 	move	a0,s1
    18b4:	02202025 	move	a0,s1
    18b8:	0c000000 	jal	0 <func_80A4BCA0>
    18bc:	02402825 	move	a1,s2
    18c0:	0c000000 	jal	0 <func_80A4BCA0>
    18c4:	02202025 	move	a0,s1
    18c8:	8630001c 	lh	s0,28(s1)
    18cc:	3c040000 	lui	a0,0x0
    18d0:	248400dc 	addiu	a0,a0,220
    18d4:	00106a83 	sra	t5,s0,0xa
    18d8:	31ae0001 	andi	t6,t5,0x1
    18dc:	afae0010 	sw	t6,16(sp)
    18e0:	862f0018 	lh	t7,24(s1)
    18e4:	00103a03 	sra	a3,s0,0x8
    18e8:	30e70003 	andi	a3,a3,0x3
    18ec:	31f80001 	andi	t8,t7,0x1
    18f0:	afb80014 	sw	t8,20(sp)
    18f4:	02002825 	move	a1,s0
    18f8:	0c000000 	jal	0 <func_80A4BCA0>
    18fc:	320600ff 	andi	a2,s0,0xff
    1900:	8fbf002c 	lw	ra,44(sp)
    1904:	8fb00020 	lw	s0,32(sp)
    1908:	8fb10024 	lw	s1,36(sp)
    190c:	8fb20028 	lw	s2,40(sp)
    1910:	03e00008 	jr	ra
    1914:	27bd0030 	addiu	sp,sp,48

00001918 <EnGoroiwa_Destroy>:
    1918:	27bdffe8 	addiu	sp,sp,-24
    191c:	00803825 	move	a3,a0
    1920:	afbf0014 	sw	ra,20(sp)
    1924:	00a02025 	move	a0,a1
    1928:	0c000000 	jal	0 <func_80A4BCA0>
    192c:	24e50150 	addiu	a1,a3,336
    1930:	8fbf0014 	lw	ra,20(sp)
    1934:	27bd0018 	addiu	sp,sp,24
    1938:	03e00008 	jr	ra
    193c:	00000000 	nop

00001940 <func_80A4D5E0>:
    1940:	27bdffe8 	addiu	sp,sp,-24
    1944:	3c0e0000 	lui	t6,0x0
    1948:	afbf0014 	sw	ra,20(sp)
    194c:	25ce0000 	addiu	t6,t6,0
    1950:	ac8e014c 	sw	t6,332(a0)
    1954:	afa40018 	sw	a0,24(sp)
    1958:	0c000000 	jal	0 <func_80A4BCA0>
    195c:	24050003 	li	a1,3
    1960:	3c013f80 	lui	at,0x3f80
    1964:	8fa40018 	lw	a0,24(sp)
    1968:	44812000 	mtc1	at,$f4
    196c:	00000000 	nop
    1970:	e48401c0 	swc1	$f4,448(a0)
    1974:	8fbf0014 	lw	ra,20(sp)
    1978:	27bd0018 	addiu	sp,sp,24
    197c:	03e00008 	jr	ra
    1980:	00000000 	nop

00001984 <func_80A4D624>:
    1984:	27bdffd0 	addiu	sp,sp,-48
    1988:	afbf0024 	sw	ra,36(sp)
    198c:	afb00020 	sw	s0,32(sp)
    1990:	afa50034 	sw	a1,52(sp)
    1994:	90820160 	lbu	v0,352(a0)
    1998:	00808025 	move	s0,a0
    199c:	2401fffb 	li	at,-5
    19a0:	304e0002 	andi	t6,v0,0x2
    19a4:	11c00047 	beqz	t6,1ac4 <func_80A4D624+0x140>
    19a8:	304ffffd 	andi	t7,v0,0xfffd
    19ac:	8488008a 	lh	t0,138(a0)
    19b0:	84890032 	lh	t1,50(a0)
    19b4:	909801d3 	lbu	t8,467(a0)
    19b8:	a08f0160 	sb	t7,352(a0)
    19bc:	01091823 	subu	v1,t0,t1
    19c0:	00031c00 	sll	v1,v1,0x10
    19c4:	00031c03 	sra	v1,v1,0x10
    19c8:	0301c824 	and	t9,t8,at
    19cc:	2861c001 	slti	at,v1,-16383
    19d0:	14200015 	bnez	at,1a28 <func_80A4D624+0xa4>
    19d4:	a09901d3 	sb	t9,467(a0)
    19d8:	28614000 	slti	at,v1,16384
    19dc:	50200013 	beqzl	at,1a2c <func_80A4D624+0xa8>
    19e0:	44802000 	mtc1	zero,$f4
    19e4:	848c001c 	lh	t4,28(a0)
    19e8:	372b0004 	ori	t3,t9,0x4
    19ec:	a08b01d3 	sb	t3,467(a0)
    19f0:	000c6a83 	sra	t5,t4,0xa
    19f4:	31ae0001 	andi	t6,t5,0x1
    19f8:	15c00006 	bnez	t6,1a14 <func_80A4D624+0x90>
    19fc:	00000000 	nop
    1a00:	848f0018 	lh	t7,24(a0)
    1a04:	24010001 	li	at,1
    1a08:	31f80001 	andi	t8,t7,0x1
    1a0c:	53010007 	beql	t8,at,1a2c <func_80A4D624+0xa8>
    1a10:	44802000 	mtc1	zero,$f4
    1a14:	0c000000 	jal	0 <func_80A4BCA0>
    1a18:	02002025 	move	a0,s0
    1a1c:	02002025 	move	a0,s0
    1a20:	0c000000 	jal	0 <func_80A4BCA0>
    1a24:	8fa50034 	lw	a1,52(sp)
    1a28:	44802000 	mtc1	zero,$f4
    1a2c:	8607008a 	lh	a3,138(s0)
    1a30:	afa00014 	sw	zero,20(sp)
    1a34:	8fa40034 	lw	a0,52(sp)
    1a38:	02002825 	move	a1,s0
    1a3c:	3c064000 	lui	a2,0x4000
    1a40:	0c000000 	jal	0 <func_80A4BCA0>
    1a44:	e7a40010 	swc1	$f4,16(sp)
    1a48:	3c040000 	lui	a0,0x0
    1a4c:	0c000000 	jal	0 <func_80A4BCA0>
    1a50:	24840114 	addiu	a0,a0,276
    1a54:	3c040000 	lui	a0,0x0
    1a58:	0c000000 	jal	0 <func_80A4BCA0>
    1a5c:	2484011c 	addiu	a0,a0,284
    1a60:	3c040000 	lui	a0,0x0
    1a64:	0c000000 	jal	0 <func_80A4BCA0>
    1a68:	24840130 	addiu	a0,a0,304
    1a6c:	8619001c 	lh	t9,28(s0)
    1a70:	02002025 	move	a0,s0
    1a74:	00194283 	sra	t0,t9,0xa
    1a78:	31090001 	andi	t1,t0,0x1
    1a7c:	00095080 	sll	t2,t1,0x2
    1a80:	3c190000 	lui	t9,0x0
    1a84:	032ac821 	addu	t9,t9,t2
    1a88:	8f3900c0 	lw	t9,192(t9)
    1a8c:	0320f809 	jalr	t9
    1a90:	00000000 	nop
    1a94:	8fab0034 	lw	t3,52(sp)
    1a98:	2405083e 	li	a1,2110
    1a9c:	0c000000 	jal	0 <func_80A4BCA0>
    1aa0:	8d641c44 	lw	a0,7236(t3)
    1aa4:	860c0018 	lh	t4,24(s0)
    1aa8:	24010001 	li	at,1
    1aac:	240e0032 	li	t6,50
    1ab0:	318d0001 	andi	t5,t4,0x1
    1ab4:	55a10056 	bnel	t5,at,1c10 <func_80A4D624+0x28c>
    1ab8:	02002025 	move	a0,s0
    1abc:	10000053 	b	1c0c <func_80A4D624+0x288>
    1ac0:	a60e01c8 	sh	t6,456(s0)
    1ac4:	860f001c 	lh	t7,28(s0)
    1ac8:	3c190000 	lui	t9,0x0
    1acc:	02002025 	move	a0,s0
    1ad0:	000fc283 	sra	t8,t7,0xa
    1ad4:	33080001 	andi	t0,t8,0x1
    1ad8:	00084880 	sll	t1,t0,0x2
    1adc:	0329c821 	addu	t9,t9,t1
    1ae0:	8f3900b8 	lw	t9,184(t9)
    1ae4:	8fa50034 	lw	a1,52(sp)
    1ae8:	0320f809 	jalr	t9
    1aec:	00000000 	nop
    1af0:	50400047 	beqzl	v0,1c10 <func_80A4D624+0x28c>
    1af4:	02002025 	move	a0,s0
    1af8:	8603001c 	lh	v1,28(s0)
    1afc:	24010001 	li	at,1
    1b00:	00031a03 	sra	v1,v1,0x8
    1b04:	30630003 	andi	v1,v1,0x3
    1b08:	00031c00 	sll	v1,v1,0x10
    1b0c:	00031c03 	sra	v1,v1,0x10
    1b10:	5461000d 	bnel	v1,at,1b48 <func_80A4D624+0x1c4>
    1b14:	02002025 	move	a0,s0
    1b18:	860201ce 	lh	v0,462(s0)
    1b1c:	02002025 	move	a0,s0
    1b20:	8fa50034 	lw	a1,52(sp)
    1b24:	10400004 	beqz	v0,1b38 <func_80A4D624+0x1b4>
    1b28:	00000000 	nop
    1b2c:	860a01ca 	lh	t2,458(s0)
    1b30:	55420005 	bnel	t2,v0,1b48 <func_80A4D624+0x1c4>
    1b34:	02002025 	move	a0,s0
    1b38:	0c000000 	jal	0 <func_80A4BCA0>
    1b3c:	a7a30028 	sh	v1,40(sp)
    1b40:	87a30028 	lh	v1,40(sp)
    1b44:	02002025 	move	a0,s0
    1b48:	8fa50034 	lw	a1,52(sp)
    1b4c:	0c000000 	jal	0 <func_80A4BCA0>
    1b50:	a7a30028 	sh	v1,40(sp)
    1b54:	87a30028 	lh	v1,40(sp)
    1b58:	24010003 	li	at,3
    1b5c:	5461000c 	bnel	v1,at,1b90 <func_80A4D624+0x20c>
    1b60:	860c001c 	lh	t4,28(s0)
    1b64:	860201cc 	lh	v0,460(s0)
    1b68:	10400004 	beqz	v0,1b7c <func_80A4D624+0x1f8>
    1b6c:	00000000 	nop
    1b70:	860b01ca 	lh	t3,458(s0)
    1b74:	55620006 	bnel	t3,v0,1b90 <func_80A4D624+0x20c>
    1b78:	860c001c 	lh	t4,28(s0)
    1b7c:	0c000000 	jal	0 <func_80A4BCA0>
    1b80:	02002025 	move	a0,s0
    1b84:	10000022 	b	1c10 <func_80A4D624+0x28c>
    1b88:	02002025 	move	a0,s0
    1b8c:	860c001c 	lh	t4,28(s0)
    1b90:	000c6a83 	sra	t5,t4,0xa
    1b94:	31ae0001 	andi	t6,t5,0x1
    1b98:	15c0001a 	bnez	t6,1c04 <func_80A4D624+0x280>
    1b9c:	00000000 	nop
    1ba0:	860201cc 	lh	v0,460(s0)
    1ba4:	10400017 	beqz	v0,1c04 <func_80A4D624+0x280>
    1ba8:	00000000 	nop
    1bac:	860f01ca 	lh	t7,458(s0)
    1bb0:	02002025 	move	a0,s0
    1bb4:	11e20013 	beq	t7,v0,1c04 <func_80A4D624+0x280>
    1bb8:	00000000 	nop
    1bbc:	0c000000 	jal	0 <func_80A4BCA0>
    1bc0:	8fa50034 	lw	a1,52(sp)
    1bc4:	18400005 	blez	v0,1bdc <func_80A4D624+0x258>
    1bc8:	00000000 	nop
    1bcc:	0c000000 	jal	0 <func_80A4BCA0>
    1bd0:	02002025 	move	a0,s0
    1bd4:	1000000e 	b	1c10 <func_80A4D624+0x28c>
    1bd8:	02002025 	move	a0,s0
    1bdc:	04410005 	bgez	v0,1bf4 <func_80A4D624+0x270>
    1be0:	00000000 	nop
    1be4:	0c000000 	jal	0 <func_80A4BCA0>
    1be8:	02002025 	move	a0,s0
    1bec:	10000008 	b	1c10 <func_80A4D624+0x28c>
    1bf0:	02002025 	move	a0,s0
    1bf4:	0c000000 	jal	0 <func_80A4BCA0>
    1bf8:	02002025 	move	a0,s0
    1bfc:	10000004 	b	1c10 <func_80A4D624+0x28c>
    1c00:	02002025 	move	a0,s0
    1c04:	0c000000 	jal	0 <func_80A4BCA0>
    1c08:	02002025 	move	a0,s0
    1c0c:	02002025 	move	a0,s0
    1c10:	0c000000 	jal	0 <func_80A4BCA0>
    1c14:	240520b8 	li	a1,8376
    1c18:	8fbf0024 	lw	ra,36(sp)
    1c1c:	8fb00020 	lw	s0,32(sp)
    1c20:	27bd0030 	addiu	sp,sp,48
    1c24:	03e00008 	jr	ra
    1c28:	00000000 	nop

00001c2c <func_80A4D8CC>:
    1c2c:	27bdffe8 	addiu	sp,sp,-24
    1c30:	3c0e0000 	lui	t6,0x0
    1c34:	afbf0014 	sw	ra,20(sp)
    1c38:	25ce0000 	addiu	t6,t6,0
    1c3c:	ac8e014c 	sw	t6,332(a0)
    1c40:	afa40018 	sw	a0,24(sp)
    1c44:	0c000000 	jal	0 <func_80A4BCA0>
    1c48:	24050002 	li	a1,2
    1c4c:	3c010000 	lui	at,0x0
    1c50:	c4240168 	lwc1	$f4,360(at)
    1c54:	8fa40018 	lw	a0,24(sp)
    1c58:	3c01c170 	lui	at,0xc170
    1c5c:	44813000 	mtc1	at,$f6
    1c60:	3c010000 	lui	at,0x0
    1c64:	e484006c 	swc1	$f4,108(a0)
    1c68:	e4860070 	swc1	$f6,112(a0)
    1c6c:	c42a016c 	lwc1	$f10,364(at)
    1c70:	c4880068 	lwc1	$f8,104(a0)
    1c74:	3c0140a0 	lui	at,0x40a0
    1c78:	44819000 	mtc1	at,$f18
    1c7c:	460a4402 	mul.s	$f16,$f8,$f10
    1c80:	3c013f80 	lui	at,0x3f80
    1c84:	44812000 	mtc1	at,$f4
    1c88:	e4920060 	swc1	$f18,96(a0)
    1c8c:	e48401c0 	swc1	$f4,448(a0)
    1c90:	e4900068 	swc1	$f16,104(a0)
    1c94:	8fbf0014 	lw	ra,20(sp)
    1c98:	27bd0018 	addiu	sp,sp,24
    1c9c:	03e00008 	jr	ra
    1ca0:	00000000 	nop

00001ca4 <func_80A4D944>:
    1ca4:	27bdffe0 	addiu	sp,sp,-32
    1ca8:	afbf001c 	sw	ra,28(sp)
    1cac:	afb00018 	sw	s0,24(sp)
    1cb0:	00808025 	move	s0,a0
    1cb4:	0c000000 	jal	0 <func_80A4BCA0>
    1cb8:	afa50024 	sw	a1,36(sp)
    1cbc:	960e0088 	lhu	t6,136(s0)
    1cc0:	31cf0001 	andi	t7,t6,0x1
    1cc4:	51e00019 	beqzl	t7,1d2c <func_80A4D944+0x88>
    1cc8:	8fbf001c 	lw	ra,28(sp)
    1ccc:	c6040060 	lwc1	$f4,96(s0)
    1cd0:	44803000 	mtc1	zero,$f6
    1cd4:	00000000 	nop
    1cd8:	4606203c 	c.lt.s	$f4,$f6
    1cdc:	00000000 	nop
    1ce0:	45020012 	bc1fl	1d2c <func_80A4D944+0x88>
    1ce4:	8fbf001c 	lw	ra,28(sp)
    1ce8:	921801d3 	lbu	t8,467(s0)
    1cec:	33190004 	andi	t9,t8,0x4
    1cf0:	1320000b 	beqz	t9,1d20 <func_80A4D944+0x7c>
    1cf4:	00000000 	nop
    1cf8:	86080018 	lh	t0,24(s0)
    1cfc:	24010001 	li	at,1
    1d00:	31090001 	andi	t1,t0,0x1
    1d04:	15210006 	bne	t1,at,1d20 <func_80A4D944+0x7c>
    1d08:	00000000 	nop
    1d0c:	0c000000 	jal	0 <func_80A4BCA0>
    1d10:	02002025 	move	a0,s0
    1d14:	02002025 	move	a0,s0
    1d18:	0c000000 	jal	0 <func_80A4BCA0>
    1d1c:	8fa50024 	lw	a1,36(sp)
    1d20:	0c000000 	jal	0 <func_80A4BCA0>
    1d24:	02002025 	move	a0,s0
    1d28:	8fbf001c 	lw	ra,28(sp)
    1d2c:	8fb00018 	lw	s0,24(sp)
    1d30:	27bd0020 	addiu	sp,sp,32
    1d34:	03e00008 	jr	ra
    1d38:	00000000 	nop

00001d3c <func_80A4D9DC>:
    1d3c:	44802000 	mtc1	zero,$f4
    1d40:	27bdffe8 	addiu	sp,sp,-24
    1d44:	afbf0014 	sw	ra,20(sp)
    1d48:	3c0e0000 	lui	t6,0x0
    1d4c:	25ce0000 	addiu	t6,t6,0
    1d50:	ac8e014c 	sw	t6,332(a0)
    1d54:	e4840068 	swc1	$f4,104(a0)
    1d58:	afa40018 	sw	a0,24(sp)
    1d5c:	0c000000 	jal	0 <func_80A4BCA0>
    1d60:	24050002 	li	a1,2
    1d64:	8fa40018 	lw	a0,24(sp)
    1d68:	3c080000 	lui	t0,0x0
    1d6c:	44803000 	mtc1	zero,$f6
    1d70:	848f0018 	lh	t7,24(a0)
    1d74:	31f80001 	andi	t8,t7,0x1
    1d78:	0018c840 	sll	t9,t8,0x1
    1d7c:	01194021 	addu	t0,t0,t9
    1d80:	850800c8 	lh	t0,200(t0)
    1d84:	e48601c0 	swc1	$f6,448(a0)
    1d88:	a48801c4 	sh	t0,452(a0)
    1d8c:	8fbf0014 	lw	ra,20(sp)
    1d90:	27bd0018 	addiu	sp,sp,24
    1d94:	03e00008 	jr	ra
    1d98:	00000000 	nop

00001d9c <func_80A4DA3C>:
    1d9c:	27bdffe8 	addiu	sp,sp,-24
    1da0:	afbf0014 	sw	ra,20(sp)
    1da4:	afa5001c 	sw	a1,28(sp)
    1da8:	848201c4 	lh	v0,452(a0)
    1dac:	18400003 	blez	v0,1dbc <func_80A4DA3C+0x20>
    1db0:	244effff 	addiu	t6,v0,-1
    1db4:	10000005 	b	1dcc <func_80A4DA3C+0x30>
    1db8:	a48e01c4 	sh	t6,452(a0)
    1dbc:	908f0160 	lbu	t7,352(a0)
    1dc0:	31f8fffd 	andi	t8,t7,0xfffd
    1dc4:	0c000000 	jal	0 <func_80A4BCA0>
    1dc8:	a0980160 	sb	t8,352(a0)
    1dcc:	8fbf0014 	lw	ra,20(sp)
    1dd0:	27bd0018 	addiu	sp,sp,24
    1dd4:	03e00008 	jr	ra
    1dd8:	00000000 	nop

00001ddc <func_80A4DA7C>:
    1ddc:	27bdffe8 	addiu	sp,sp,-24
    1de0:	3c0e0000 	lui	t6,0x0
    1de4:	afbf0014 	sw	ra,20(sp)
    1de8:	25ce0000 	addiu	t6,t6,0
    1dec:	ac8e014c 	sw	t6,332(a0)
    1df0:	afa40018 	sw	a0,24(sp)
    1df4:	0c000000 	jal	0 <func_80A4BCA0>
    1df8:	24050003 	li	a1,3
    1dfc:	8fa40018 	lw	a0,24(sp)
    1e00:	44802000 	mtc1	zero,$f4
    1e04:	3c010000 	lui	at,0x0
    1e08:	c4800068 	lwc1	$f0,104(a0)
    1e0c:	e48401c0 	swc1	$f4,448(a0)
    1e10:	c4260170 	lwc1	$f6,368(at)
    1e14:	46000005 	abs.s	$f0,$f0
    1e18:	46060202 	mul.s	$f8,$f0,$f6
    1e1c:	e4880060 	swc1	$f8,96(a0)
    1e20:	8fbf0014 	lw	ra,20(sp)
    1e24:	27bd0018 	addiu	sp,sp,24
    1e28:	03e00008 	jr	ra
    1e2c:	00000000 	nop

00001e30 <func_80A4DAD0>:
    1e30:	27bdffd8 	addiu	sp,sp,-40
    1e34:	afbf0024 	sw	ra,36(sp)
    1e38:	afb00020 	sw	s0,32(sp)
    1e3c:	afa5002c 	sw	a1,44(sp)
    1e40:	90820160 	lbu	v0,352(a0)
    1e44:	00808025 	move	s0,a0
    1e48:	8fa5002c 	lw	a1,44(sp)
    1e4c:	304e0002 	andi	t6,v0,0x2
    1e50:	11c00017 	beqz	t6,1eb0 <func_80A4DAD0+0x80>
    1e54:	304ffffd 	andi	t7,v0,0xfffd
    1e58:	a08f0160 	sb	t7,352(a0)
    1e5c:	44802000 	mtc1	zero,$f4
    1e60:	8607008a 	lh	a3,138(s0)
    1e64:	24180004 	li	t8,4
    1e68:	afb80014 	sw	t8,20(sp)
    1e6c:	8fa4002c 	lw	a0,44(sp)
    1e70:	02002825 	move	a1,s0
    1e74:	3c064000 	lui	a2,0x4000
    1e78:	0c000000 	jal	0 <func_80A4BCA0>
    1e7c:	e7a40010 	swc1	$f4,16(sp)
    1e80:	8fb9002c 	lw	t9,44(sp)
    1e84:	2405083e 	li	a1,2110
    1e88:	0c000000 	jal	0 <func_80A4BCA0>
    1e8c:	8f241c44 	lw	a0,7236(t9)
    1e90:	86080018 	lh	t0,24(s0)
    1e94:	24010001 	li	at,1
    1e98:	240a0032 	li	t2,50
    1e9c:	31090001 	andi	t1,t0,0x1
    1ea0:	5521000f 	bnel	t1,at,1ee0 <func_80A4DAD0+0xb0>
    1ea4:	8fbf0024 	lw	ra,36(sp)
    1ea8:	1000000c 	b	1edc <func_80A4DAD0+0xac>
    1eac:	a60a01c8 	sh	t2,456(s0)
    1eb0:	0c000000 	jal	0 <func_80A4BCA0>
    1eb4:	02002025 	move	a0,s0
    1eb8:	10400008 	beqz	v0,1edc <func_80A4DAD0+0xac>
    1ebc:	02002025 	move	a0,s0
    1ec0:	0c000000 	jal	0 <func_80A4BCA0>
    1ec4:	8fa5002c 	lw	a1,44(sp)
    1ec8:	0c000000 	jal	0 <func_80A4BCA0>
    1ecc:	02002025 	move	a0,s0
    1ed0:	44803000 	mtc1	zero,$f6
    1ed4:	00000000 	nop
    1ed8:	e6060068 	swc1	$f6,104(s0)
    1edc:	8fbf0024 	lw	ra,36(sp)
    1ee0:	8fb00020 	lw	s0,32(sp)
    1ee4:	27bd0028 	addiu	sp,sp,40
    1ee8:	03e00008 	jr	ra
    1eec:	00000000 	nop

00001ef0 <func_80A4DB90>:
    1ef0:	27bdffe8 	addiu	sp,sp,-24
    1ef4:	3c0e0000 	lui	t6,0x0
    1ef8:	afbf0014 	sw	ra,20(sp)
    1efc:	25ce0000 	addiu	t6,t6,0
    1f00:	ac8e014c 	sw	t6,332(a0)
    1f04:	afa40018 	sw	a0,24(sp)
    1f08:	0c000000 	jal	0 <func_80A4BCA0>
    1f0c:	24050003 	li	a1,3
    1f10:	8fa40018 	lw	a0,24(sp)
    1f14:	3c010000 	lui	at,0x0
    1f18:	c4240174 	lwc1	$f4,372(at)
    1f1c:	c4800068 	lwc1	$f0,104(a0)
    1f20:	3c010000 	lui	at,0x0
    1f24:	a48001c6 	sh	zero,454(a0)
    1f28:	e48401c0 	swc1	$f4,448(a0)
    1f2c:	c4260178 	lwc1	$f6,376(at)
    1f30:	46000005 	abs.s	$f0,$f0
    1f34:	908f01d3 	lbu	t7,467(a0)
    1f38:	46060202 	mul.s	$f8,$f0,$f6
    1f3c:	35f90008 	ori	t9,t7,0x8
    1f40:	3328ffef 	andi	t0,t9,0xffef
    1f44:	a09901d3 	sb	t9,467(a0)
    1f48:	a08801d3 	sb	t0,467(a0)
    1f4c:	e4880060 	swc1	$f8,96(a0)
    1f50:	8fbf0014 	lw	ra,20(sp)
    1f54:	27bd0018 	addiu	sp,sp,24
    1f58:	03e00008 	jr	ra
    1f5c:	00000000 	nop

00001f60 <func_80A4DC00>:
    1f60:	27bdffd8 	addiu	sp,sp,-40
    1f64:	afbf0024 	sw	ra,36(sp)
    1f68:	afb00020 	sw	s0,32(sp)
    1f6c:	afa5002c 	sw	a1,44(sp)
    1f70:	90820160 	lbu	v0,352(a0)
    1f74:	00808025 	move	s0,a0
    1f78:	8fa5002c 	lw	a1,44(sp)
    1f7c:	304e0002 	andi	t6,v0,0x2
    1f80:	11c00017 	beqz	t6,1fe0 <func_80A4DC00+0x80>
    1f84:	304ffffd 	andi	t7,v0,0xfffd
    1f88:	a08f0160 	sb	t7,352(a0)
    1f8c:	44802000 	mtc1	zero,$f4
    1f90:	8607008a 	lh	a3,138(s0)
    1f94:	24180004 	li	t8,4
    1f98:	afb80014 	sw	t8,20(sp)
    1f9c:	8fa4002c 	lw	a0,44(sp)
    1fa0:	02002825 	move	a1,s0
    1fa4:	3c064000 	lui	a2,0x4000
    1fa8:	0c000000 	jal	0 <func_80A4BCA0>
    1fac:	e7a40010 	swc1	$f4,16(sp)
    1fb0:	8fb9002c 	lw	t9,44(sp)
    1fb4:	2405083e 	li	a1,2110
    1fb8:	0c000000 	jal	0 <func_80A4BCA0>
    1fbc:	8f241c44 	lw	a0,7236(t9)
    1fc0:	86080018 	lh	t0,24(s0)
    1fc4:	24010001 	li	at,1
    1fc8:	240a0032 	li	t2,50
    1fcc:	31090001 	andi	t1,t0,0x1
    1fd0:	55210011 	bnel	t1,at,2018 <func_80A4DC00+0xb8>
    1fd4:	8fbf0024 	lw	ra,36(sp)
    1fd8:	1000000e 	b	2014 <func_80A4DC00+0xb4>
    1fdc:	a60a01c8 	sh	t2,456(s0)
    1fe0:	0c000000 	jal	0 <func_80A4BCA0>
    1fe4:	02002025 	move	a0,s0
    1fe8:	1040000a 	beqz	v0,2014 <func_80A4DC00+0xb4>
    1fec:	02002025 	move	a0,s0
    1ff0:	0c000000 	jal	0 <func_80A4BCA0>
    1ff4:	8fa5002c 	lw	a1,44(sp)
    1ff8:	0c000000 	jal	0 <func_80A4BCA0>
    1ffc:	02002025 	move	a0,s0
    2000:	920b01d3 	lbu	t3,467(s0)
    2004:	44803000 	mtc1	zero,$f6
    2008:	316cfff7 	andi	t4,t3,0xfff7
    200c:	a20c01d3 	sb	t4,467(s0)
    2010:	e6060068 	swc1	$f6,104(s0)
    2014:	8fbf0024 	lw	ra,36(sp)
    2018:	8fb00020 	lw	s0,32(sp)
    201c:	27bd0028 	addiu	sp,sp,40
    2020:	03e00008 	jr	ra
    2024:	00000000 	nop

00002028 <EnGoroiwa_Update>:
    2028:	27bdffc0 	addiu	sp,sp,-64
    202c:	afbf0024 	sw	ra,36(sp)
    2030:	afb10020 	sw	s1,32(sp)
    2034:	afb0001c 	sw	s0,28(sp)
    2038:	8ca21c44 	lw	v0,7236(a1)
    203c:	3c013000 	lui	at,0x3000
    2040:	342100c0 	ori	at,at,0xc0
    2044:	8c4e067c 	lw	t6,1660(v0)
    2048:	00808025 	move	s0,a0
    204c:	00a08825 	move	s1,a1
    2050:	01c17824 	and	t7,t6,at
    2054:	55e00048 	bnezl	t7,2178 <EnGoroiwa_Update+0x150>
    2058:	8fbf0024 	lw	ra,36(sp)
    205c:	848201c8 	lh	v0,456(a0)
    2060:	18400002 	blez	v0,206c <EnGoroiwa_Update+0x44>
    2064:	2458ffff 	addiu	t8,v0,-1
    2068:	a49801c8 	sh	t8,456(a0)
    206c:	8e19014c 	lw	t9,332(s0)
    2070:	02002025 	move	a0,s0
    2074:	02202825 	move	a1,s1
    2078:	0320f809 	jalr	t9
    207c:	00000000 	nop
    2080:	8602001c 	lh	v0,28(s0)
    2084:	262407c0 	addiu	a0,s1,1984
    2088:	26050078 	addiu	a1,s0,120
    208c:	00021283 	sra	v0,v0,0xa
    2090:	30420001 	andi	v0,v0,0x1
    2094:	1040000e 	beqz	v0,20d0 <EnGoroiwa_Update+0xa8>
    2098:	27a60030 	addiu	a2,sp,48
    209c:	24010001 	li	at,1
    20a0:	14410010 	bne	v0,at,20e4 <EnGoroiwa_Update+0xbc>
    20a4:	02202025 	move	a0,s1
    20a8:	44800000 	mtc1	zero,$f0
    20ac:	2408001c 	li	t0,28
    20b0:	afa80014 	sw	t0,20(sp)
    20b4:	44060000 	mfc1	a2,$f0
    20b8:	44070000 	mfc1	a3,$f0
    20bc:	02002825 	move	a1,s0
    20c0:	0c000000 	jal	0 <func_80A4BCA0>
    20c4:	e7a00010 	swc1	$f0,16(sp)
    20c8:	10000007 	b	20e8 <EnGoroiwa_Update+0xc0>
    20cc:	02002025 	move	a0,s0
    20d0:	26090024 	addiu	t1,s0,36
    20d4:	afa90010 	sw	t1,16(sp)
    20d8:	0c000000 	jal	0 <func_80A4BCA0>
    20dc:	02003825 	move	a3,s0
    20e0:	e6000080 	swc1	$f0,128(s0)
    20e4:	02002025 	move	a0,s0
    20e8:	0c000000 	jal	0 <func_80A4BCA0>
    20ec:	02202825 	move	a1,s1
    20f0:	3c014396 	lui	at,0x4396
    20f4:	44813000 	mtc1	at,$f6
    20f8:	c6040090 	lwc1	$f4,144(s0)
    20fc:	4606203c 	c.lt.s	$f4,$f6
    2100:	00000000 	nop
    2104:	4502001c 	bc1fl	2178 <EnGoroiwa_Update+0x150>
    2108:	8fbf0024 	lw	ra,36(sp)
    210c:	0c000000 	jal	0 <func_80A4BCA0>
    2110:	02002025 	move	a0,s0
    2114:	920201d3 	lbu	v0,467(s0)
    2118:	304a0001 	andi	t2,v0,0x1
    211c:	5140000b 	beqzl	t2,214c <EnGoroiwa_Update+0x124>
    2120:	304c0002 	andi	t4,v0,0x2
    2124:	860b01c8 	lh	t3,456(s0)
    2128:	3c010001 	lui	at,0x1
    212c:	34211e60 	ori	at,at,0x1e60
    2130:	1d600005 	bgtz	t3,2148 <EnGoroiwa_Update+0x120>
    2134:	02202025 	move	a0,s1
    2138:	02212821 	addu	a1,s1,at
    213c:	0c000000 	jal	0 <func_80A4BCA0>
    2140:	26060150 	addiu	a2,s0,336
    2144:	920201d3 	lbu	v0,467(s0)
    2148:	304c0002 	andi	t4,v0,0x2
    214c:	5180000a 	beqzl	t4,2178 <EnGoroiwa_Update+0x150>
    2150:	8fbf0024 	lw	ra,36(sp)
    2154:	860d01c8 	lh	t5,456(s0)
    2158:	3c010001 	lui	at,0x1
    215c:	34211e60 	ori	at,at,0x1e60
    2160:	1da00004 	bgtz	t5,2174 <EnGoroiwa_Update+0x14c>
    2164:	02202025 	move	a0,s1
    2168:	02212821 	addu	a1,s1,at
    216c:	0c000000 	jal	0 <func_80A4BCA0>
    2170:	26060150 	addiu	a2,s0,336
    2174:	8fbf0024 	lw	ra,36(sp)
    2178:	8fb0001c 	lw	s0,28(sp)
    217c:	8fb10020 	lw	s1,32(sp)
    2180:	03e00008 	jr	ra
    2184:	27bd0040 	addiu	sp,sp,64

00002188 <EnGoroiwa_Draw>:
    2188:	27bdffe8 	addiu	sp,sp,-24
    218c:	afa40018 	sw	a0,24(sp)
    2190:	00a02025 	move	a0,a1
    2194:	afbf0014 	sw	ra,20(sp)
    2198:	3c050000 	lui	a1,0x0
    219c:	0c000000 	jal	0 <func_80A4BCA0>
    21a0:	24a50000 	addiu	a1,a1,0
    21a4:	8fbf0014 	lw	ra,20(sp)
    21a8:	27bd0018 	addiu	sp,sp,24
    21ac:	03e00008 	jr	ra
    21b0:	00000000 	nop
	...
