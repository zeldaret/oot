
build/src/overlays/actors/ovl_Demo_Ik/z_demo_ik.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoIk_Destroy>:
       0:	afa40000 	sw	a0,0(sp)
       4:	03e00008 	jr	ra
       8:	afa50004 	sw	a1,4(sp)

0000000c <func_8098330C>:
       c:	27bdffe0 	addiu	sp,sp,-32
      10:	3c0141f0 	lui	at,0x41f0
      14:	44810000 	mtc1	at,$f0
      18:	afa50024 	sw	a1,36(sp)
      1c:	00802825 	move	a1,a0
      20:	afbf001c 	sw	ra,28(sp)
      24:	afa40020 	sw	a0,32(sp)
      28:	240e0005 	li	t6,5
      2c:	44070000 	mfc1	a3,$f0
      30:	afae0014 	sw	t6,20(sp)
      34:	8fa40024 	lw	a0,36(sp)
      38:	3c064296 	lui	a2,0x4296
      3c:	0c000000 	jal	0 <DemoIk_Destroy>
      40:	e7a00010 	swc1	$f0,16(sp)
      44:	8fbf001c 	lw	ra,28(sp)
      48:	27bd0020 	addiu	sp,sp,32
      4c:	03e00008 	jr	ra
      50:	00000000 	nop

00000054 <func_80983354>:
      54:	27bdffe8 	addiu	sp,sp,-24
      58:	afbf0014 	sw	ra,20(sp)
      5c:	0c000000 	jal	0 <DemoIk_Destroy>
      60:	2484014c 	addiu	a0,a0,332
      64:	8fbf0014 	lw	ra,20(sp)
      68:	27bd0018 	addiu	sp,sp,24
      6c:	03e00008 	jr	ra
      70:	00000000 	nop

00000074 <func_80983374>:
      74:	908e1d6c 	lbu	t6,7532(a0)
      78:	00057880 	sll	t7,a1,0x2
      7c:	008fc021 	addu	t8,a0,t7
      80:	11c00003 	beqz	t6,90 <func_80983374+0x1c>
      84:	00001025 	move	v0,zero
      88:	03e00008 	jr	ra
      8c:	8f021d8c 	lw	v0,7564(t8)
      90:	03e00008 	jr	ra
      94:	00000000 	nop

00000098 <func_80983398>:
      98:	27bdffe8 	addiu	sp,sp,-24
      9c:	afbf0014 	sw	ra,20(sp)
      a0:	afa5001c 	sw	a1,28(sp)
      a4:	0c000000 	jal	0 <DemoIk_Destroy>
      a8:	00c02825 	move	a1,a2
      ac:	10400007 	beqz	v0,cc <func_80983398+0x34>
      b0:	8fbf0014 	lw	ra,20(sp)
      b4:	97ae001e 	lhu	t6,30(sp)
      b8:	944f0000 	lhu	t7,0(v0)
      bc:	55cf0004 	bnel	t6,t7,d0 <func_80983398+0x38>
      c0:	00001025 	move	v0,zero
      c4:	10000002 	b	d0 <func_80983398+0x38>
      c8:	24020001 	li	v0,1
      cc:	00001025 	move	v0,zero
      d0:	03e00008 	jr	ra
      d4:	27bd0018 	addiu	sp,sp,24

000000d8 <func_809833D8>:
      d8:	27bdffe8 	addiu	sp,sp,-24
      dc:	afbf0014 	sw	ra,20(sp)
      e0:	afa40018 	sw	a0,24(sp)
      e4:	afa5001c 	sw	a1,28(sp)
      e8:	908e0181 	lbu	t6,385(a0)
      ec:	00802825 	move	a1,a0
      f0:	24a6014c 	addiu	a2,a1,332
      f4:	35cf0001 	ori	t7,t6,0x1
      f8:	a08f0181 	sb	t7,385(a0)
      fc:	8fa4001c 	lw	a0,28(sp)
     100:	0c000000 	jal	0 <DemoIk_Destroy>
     104:	3c073f80 	lui	a3,0x3f80
     108:	8fbf0014 	lw	ra,20(sp)
     10c:	27bd0018 	addiu	sp,sp,24
     110:	03e00008 	jr	ra
     114:	00000000 	nop

00000118 <func_80983418>:
     118:	908e0181 	lbu	t6,385(a0)
     11c:	31cffffe 	andi	t7,t6,0xfffe
     120:	03e00008 	jr	ra
     124:	a08f0181 	sb	t7,385(a0)

00000128 <func_80983428>:
     128:	03e00008 	jr	ra
     12c:	c4800164 	lwc1	$f0,356(a0)

00000130 <func_80983430>:
     130:	27bdffe8 	addiu	sp,sp,-24
     134:	afbf0014 	sw	ra,20(sp)
     138:	afa5001c 	sw	a1,28(sp)
     13c:	afa60020 	sw	a2,32(sp)
     140:	afa70024 	sw	a3,36(sp)
     144:	0c000000 	jal	0 <DemoIk_Destroy>
     148:	24050018 	li	a1,24
     14c:	3c0efa00 	lui	t6,0xfa00
     150:	ac4e0000 	sw	t6,0(v0)
     154:	93a90023 	lbu	t1,35(sp)
     158:	93b8001f 	lbu	t8,31(sp)
     15c:	93ad0027 	lbu	t5,39(sp)
     160:	00095400 	sll	t2,t1,0x10
     164:	0018ce00 	sll	t9,t8,0x18
     168:	032a5825 	or	t3,t9,t2
     16c:	000d7200 	sll	t6,t5,0x8
     170:	016e7825 	or	t7,t3,t6
     174:	35f800ff 	ori	t8,t7,0xff
     178:	00402825 	move	a1,v0
     17c:	ac580004 	sw	t8,4(v0)
     180:	24440008 	addiu	a0,v0,8
     184:	00801025 	move	v0,a0
     188:	3c08fb00 	lui	t0,0xfb00
     18c:	ac480000 	sw	t0,0(v0)
     190:	93ad002f 	lbu	t5,47(sp)
     194:	93b9002b 	lbu	t9,43(sp)
     198:	93b80033 	lbu	t8,51(sp)
     19c:	000d5c00 	sll	t3,t5,0x10
     1a0:	00195600 	sll	t2,t9,0x18
     1a4:	014b7025 	or	t6,t2,t3
     1a8:	00184200 	sll	t0,t8,0x8
     1ac:	01c84825 	or	t1,t6,t0
     1b0:	353900ff 	ori	t9,t1,0xff
     1b4:	ac590004 	sw	t9,4(v0)
     1b8:	3c0cdf00 	lui	t4,0xdf00
     1bc:	ac8c0008 	sw	t4,8(a0)
     1c0:	ac80000c 	sw	zero,12(a0)
     1c4:	8fbf0014 	lw	ra,20(sp)
     1c8:	24840008 	addiu	a0,a0,8
     1cc:	27bd0018 	addiu	sp,sp,24
     1d0:	03e00008 	jr	ra
     1d4:	00a01025 	move	v0,a1

000001d8 <func_809834D8>:
     1d8:	14800003 	bnez	a0,1e8 <func_809834D8+0x10>
     1dc:	24010001 	li	at,1
     1e0:	03e00008 	jr	ra
     1e4:	24020005 	li	v0,5
     1e8:	14810003 	bne	a0,at,1f8 <func_809834D8+0x20>
     1ec:	24030007 	li	v1,7
     1f0:	03e00008 	jr	ra
     1f4:	24020006 	li	v0,6
     1f8:	03e00008 	jr	ra
     1fc:	00601025 	move	v0,v1

00000200 <func_80983500>:
     200:	27bdffd8 	addiu	sp,sp,-40
     204:	afbf0024 	sw	ra,36(sp)
     208:	afb00020 	sw	s0,32(sp)
     20c:	8482001c 	lh	v0,28(a0)
     210:	00808025 	move	s0,a0
     214:	24010001 	li	at,1
     218:	10400008 	beqz	v0,23c <func_80983500+0x3c>
     21c:	2604014c 	addiu	a0,s0,332
     220:	10410015 	beq	v0,at,278 <func_80983500+0x78>
     224:	2604014c 	addiu	a0,s0,332
     228:	24010002 	li	at,2
     22c:	10410021 	beq	v0,at,2b4 <func_80983500+0xb4>
     230:	2604014c 	addiu	a0,s0,332
     234:	1000002d 	b	2ec <func_80983500+0xec>
     238:	8fbf0024 	lw	ra,36(sp)
     23c:	0c000000 	jal	0 <DemoIk_Destroy>
     240:	3c0540a0 	lui	a1,0x40a0
     244:	10400028 	beqz	v0,2e8 <func_80983500+0xe8>
     248:	3c070000 	lui	a3,0x0
     24c:	3c0e0000 	lui	t6,0x0
     250:	24e70000 	addiu	a3,a3,0
     254:	25ce0000 	addiu	t6,t6,0
     258:	afae0014 	sw	t6,20(sp)
     25c:	afa70010 	sw	a3,16(sp)
     260:	2404392d 	li	a0,14637
     264:	260500e4 	addiu	a1,s0,228
     268:	0c000000 	jal	0 <DemoIk_Destroy>
     26c:	24060004 	li	a2,4
     270:	1000001e 	b	2ec <func_80983500+0xec>
     274:	8fbf0024 	lw	ra,36(sp)
     278:	0c000000 	jal	0 <DemoIk_Destroy>
     27c:	3c054120 	lui	a1,0x4120
     280:	10400019 	beqz	v0,2e8 <func_80983500+0xe8>
     284:	3c070000 	lui	a3,0x0
     288:	3c0f0000 	lui	t7,0x0
     28c:	24e70000 	addiu	a3,a3,0
     290:	25ef0000 	addiu	t7,t7,0
     294:	afaf0014 	sw	t7,20(sp)
     298:	afa70010 	sw	a3,16(sp)
     29c:	2404392f 	li	a0,14639
     2a0:	260500e4 	addiu	a1,s0,228
     2a4:	0c000000 	jal	0 <DemoIk_Destroy>
     2a8:	24060004 	li	a2,4
     2ac:	1000000f 	b	2ec <func_80983500+0xec>
     2b0:	8fbf0024 	lw	ra,36(sp)
     2b4:	0c000000 	jal	0 <DemoIk_Destroy>
     2b8:	3c054110 	lui	a1,0x4110
     2bc:	1040000a 	beqz	v0,2e8 <func_80983500+0xe8>
     2c0:	3c070000 	lui	a3,0x0
     2c4:	3c180000 	lui	t8,0x0
     2c8:	24e70000 	addiu	a3,a3,0
     2cc:	27180000 	addiu	t8,t8,0
     2d0:	afb80014 	sw	t8,20(sp)
     2d4:	afa70010 	sw	a3,16(sp)
     2d8:	2404392e 	li	a0,14638
     2dc:	260500e4 	addiu	a1,s0,228
     2e0:	0c000000 	jal	0 <DemoIk_Destroy>
     2e4:	24060004 	li	a2,4
     2e8:	8fbf0024 	lw	ra,36(sp)
     2ec:	8fb00020 	lw	s0,32(sp)
     2f0:	27bd0028 	addiu	sp,sp,40
     2f4:	03e00008 	jr	ra
     2f8:	00000000 	nop

000002fc <func_809835FC>:
     2fc:	27bdff68 	addiu	sp,sp,-152
     300:	afb1004c 	sw	s1,76(sp)
     304:	00808825 	move	s1,a0
     308:	afbf0064 	sw	ra,100(sp)
     30c:	afb60060 	sw	s6,96(sp)
     310:	afb5005c 	sw	s5,92(sp)
     314:	afb40058 	sw	s4,88(sp)
     318:	afb30054 	sw	s3,84(sp)
     31c:	afb20050 	sw	s2,80(sp)
     320:	afb00048 	sw	s0,72(sp)
     324:	00a0b025 	move	s6,a1
     328:	0c000000 	jal	0 <DemoIk_Destroy>
     32c:	8484001c 	lh	a0,28(a0)
     330:	00408025 	move	s0,v0
     334:	02c02025 	move	a0,s6
     338:	24050005 	li	a1,5
     33c:	0c000000 	jal	0 <DemoIk_Destroy>
     340:	00403025 	move	a2,v0
     344:	1040004c 	beqz	v0,478 <func_809835FC+0x17c>
     348:	3c0e0000 	lui	t6,0x0
     34c:	25ce0000 	addiu	t6,t6,0
     350:	8dd80000 	lw	t8,0(t6)
     354:	27b20078 	addiu	s2,sp,120
     358:	24010005 	li	at,5
     35c:	ae580000 	sw	t8,0(s2)
     360:	8dcf0004 	lw	t7,4(t6)
     364:	3c080000 	lui	t0,0x0
     368:	00001025 	move	v0,zero
     36c:	ae4f0004 	sw	t7,4(s2)
     370:	8dd80008 	lw	t8,8(t6)
     374:	25080000 	addiu	t0,t0,0
     378:	16010003 	bne	s0,at,388 <func_809835FC+0x8c>
     37c:	ae580008 	sw	t8,8(s2)
     380:	10000008 	b	3a4 <func_809835FC+0xa8>
     384:	24140004 	li	s4,4
     388:	24010007 	li	at,7
     38c:	16010004 	bne	s0,at,3a0 <func_809835FC+0xa4>
     390:	24020008 	li	v0,8
     394:	24020004 	li	v0,4
     398:	10000002 	b	3a4 <func_809835FC+0xa8>
     39c:	24140008 	li	s4,8
     3a0:	2414000b 	li	s4,11
     3a4:	0054082a 	slt	at,v0,s4
     3a8:	10200033 	beqz	at,478 <func_809835FC+0x17c>
     3ac:	0002c880 	sll	t9,v0,0x2
     3b0:	00144880 	sll	t1,s4,0x2
     3b4:	01344823 	subu	t1,t1,s4
     3b8:	0322c823 	subu	t9,t9,v0
     3bc:	0019c880 	sll	t9,t9,0x2
     3c0:	00094880 	sll	t1,t1,0x2
     3c4:	01289821 	addu	s3,t1,t0
     3c8:	03288021 	addu	s0,t9,t0
     3cc:	27b50084 	addiu	s5,sp,132
     3d0:	c6040000 	lwc1	$f4,0(s0)
     3d4:	c6260024 	lwc1	$f6,36(s1)
     3d8:	c60a0004 	lwc1	$f10,4(s0)
     3dc:	240a000a 	li	t2,10
     3e0:	46062200 	add.s	$f8,$f4,$f6
     3e4:	c6040008 	lwc1	$f4,8(s0)
     3e8:	240b0007 	li	t3,7
     3ec:	240c00ff 	li	t4,255
     3f0:	e7a80084 	swc1	$f8,132(sp)
     3f4:	c6300028 	lwc1	$f16,40(s1)
     3f8:	240d00ff 	li	t5,255
     3fc:	240e00ff 	li	t6,255
     400:	46105480 	add.s	$f18,$f10,$f16
     404:	240f00ff 	li	t7,255
     408:	241800ff 	li	t8,255
     40c:	24190001 	li	t9,1
     410:	e7b20088 	swc1	$f18,136(sp)
     414:	c626002c 	lwc1	$f6,44(s1)
     418:	24090009 	li	t1,9
     41c:	24080001 	li	t0,1
     420:	46062200 	add.s	$f8,$f4,$f6
     424:	afa8003c 	sw	t0,60(sp)
     428:	afa90038 	sw	t1,56(sp)
     42c:	afb90034 	sw	t9,52(sp)
     430:	e7a8008c 	swc1	$f8,140(sp)
     434:	afb80030 	sw	t8,48(sp)
     438:	afa0002c 	sw	zero,44(sp)
     43c:	afa00028 	sw	zero,40(sp)
     440:	afaf0024 	sw	t7,36(sp)
     444:	afae0020 	sw	t6,32(sp)
     448:	afad001c 	sw	t5,28(sp)
     44c:	afac0018 	sw	t4,24(sp)
     450:	afab0014 	sw	t3,20(sp)
     454:	afaa0010 	sw	t2,16(sp)
     458:	02c02025 	move	a0,s6
     45c:	02a02825 	move	a1,s5
     460:	02403025 	move	a2,s2
     464:	0c000000 	jal	0 <DemoIk_Destroy>
     468:	02403825 	move	a3,s2
     46c:	2610000c 	addiu	s0,s0,12
     470:	5613ffd8 	bnel	s0,s3,3d4 <func_809835FC+0xd8>
     474:	c6040000 	lwc1	$f4,0(s0)
     478:	8fbf0064 	lw	ra,100(sp)
     47c:	8fb00048 	lw	s0,72(sp)
     480:	8fb1004c 	lw	s1,76(sp)
     484:	8fb20050 	lw	s2,80(sp)
     488:	8fb30054 	lw	s3,84(sp)
     48c:	8fb40058 	lw	s4,88(sp)
     490:	8fb5005c 	lw	s5,92(sp)
     494:	8fb60060 	lw	s6,96(sp)
     498:	03e00008 	jr	ra
     49c:	27bd0098 	addiu	sp,sp,152

000004a0 <func_809837A0>:
     4a0:	27bdffe8 	addiu	sp,sp,-24
     4a4:	00803825 	move	a3,a0
     4a8:	afbf0014 	sw	ra,20(sp)
     4ac:	afa5001c 	sw	a1,28(sp)
     4b0:	00a02025 	move	a0,a1
     4b4:	00c02825 	move	a1,a2
     4b8:	0c000000 	jal	0 <DemoIk_Destroy>
     4bc:	afa70018 	sw	a3,24(sp)
     4c0:	10400013 	beqz	v0,510 <func_809837A0+0x70>
     4c4:	8fa70018 	lw	a3,24(sp)
     4c8:	8c4e000c 	lw	t6,12(v0)
     4cc:	448e2000 	mtc1	t6,$f4
     4d0:	00000000 	nop
     4d4:	468021a0 	cvt.s.w	$f6,$f4
     4d8:	e4e60024 	swc1	$f6,36(a3)
     4dc:	8c4f0010 	lw	t7,16(v0)
     4e0:	448f4000 	mtc1	t7,$f8
     4e4:	00000000 	nop
     4e8:	468042a0 	cvt.s.w	$f10,$f8
     4ec:	e4ea0028 	swc1	$f10,40(a3)
     4f0:	8c580014 	lw	t8,20(v0)
     4f4:	44988000 	mtc1	t8,$f16
     4f8:	00000000 	nop
     4fc:	468084a0 	cvt.s.w	$f18,$f16
     500:	e4f2002c 	swc1	$f18,44(a3)
     504:	84430008 	lh	v1,8(v0)
     508:	a4e300b6 	sh	v1,182(a3)
     50c:	a4e30032 	sh	v1,50(a3)
     510:	8fbf0014 	lw	ra,20(sp)
     514:	27bd0018 	addiu	sp,sp,24
     518:	03e00008 	jr	ra
     51c:	00000000 	nop

00000520 <func_80983820>:
     520:	27bdffa8 	addiu	sp,sp,-88
     524:	afbf002c 	sw	ra,44(sp)
     528:	afb10028 	sw	s1,40(sp)
     52c:	afb00024 	sw	s0,36(sp)
     530:	afa5005c 	sw	a1,92(sp)
     534:	8482001c 	lh	v0,28(a0)
     538:	00808025 	move	s0,a0
     53c:	260400b4 	addiu	a0,s0,180
     540:	10400006 	beqz	v0,55c <func_80983820+0x3c>
     544:	24050000 	li	a1,0
     548:	24010001 	li	at,1
     54c:	1041000b 	beq	v0,at,57c <func_80983820+0x5c>
     550:	3c0f0600 	lui	t7,0x600
     554:	10000010 	b	598 <func_80983820+0x78>
     558:	3c180600 	lui	t8,0x600
     55c:	3c0e0600 	lui	t6,0x600
     560:	3c0141f0 	lui	at,0x41f0
     564:	25ce0c90 	addiu	t6,t6,3216
     568:	3c110600 	lui	s1,0x600
     56c:	44810000 	mtc1	at,$f0
     570:	afae0048 	sw	t6,72(sp)
     574:	1000000e 	b	5b0 <func_80983820+0x90>
     578:	26310c6c 	addiu	s1,s1,3180
     57c:	3c014120 	lui	at,0x4120
     580:	25ef0660 	addiu	t7,t7,1632
     584:	3c110600 	lui	s1,0x600
     588:	44810000 	mtc1	at,$f0
     58c:	afaf0048 	sw	t7,72(sp)
     590:	10000007 	b	5b0 <func_80983820+0x90>
     594:	26310634 	addiu	s1,s1,1588
     598:	3c0141a0 	lui	at,0x41a0
     59c:	27180380 	addiu	t8,t8,896
     5a0:	3c110600 	lui	s1,0x600
     5a4:	44810000 	mtc1	at,$f0
     5a8:	afb80048 	sw	t8,72(sp)
     5ac:	2631035c 	addiu	s1,s1,860
     5b0:	3c060000 	lui	a2,0x0
     5b4:	44070000 	mfc1	a3,$f0
     5b8:	0c000000 	jal	0 <DemoIk_Destroy>
     5bc:	24c60000 	addiu	a2,a2,0
     5c0:	2605014c 	addiu	a1,s0,332
     5c4:	26190190 	addiu	t9,s0,400
     5c8:	2608019c 	addiu	t0,s0,412
     5cc:	24090002 	li	t1,2
     5d0:	afa90018 	sw	t1,24(sp)
     5d4:	afa80014 	sw	t0,20(sp)
     5d8:	afb90010 	sw	t9,16(sp)
     5dc:	afa50034 	sw	a1,52(sp)
     5e0:	8fa4005c 	lw	a0,92(sp)
     5e4:	8fa60048 	lw	a2,72(sp)
     5e8:	0c000000 	jal	0 <DemoIk_Destroy>
     5ec:	00003825 	move	a3,zero
     5f0:	0c000000 	jal	0 <DemoIk_Destroy>
     5f4:	02202025 	move	a0,s1
     5f8:	44822000 	mtc1	v0,$f4
     5fc:	44800000 	mtc1	zero,$f0
     600:	240a0002 	li	t2,2
     604:	468021a0 	cvt.s.w	$f6,$f4
     608:	44070000 	mfc1	a3,$f0
     60c:	afaa0014 	sw	t2,20(sp)
     610:	8fa40034 	lw	a0,52(sp)
     614:	02202825 	move	a1,s1
     618:	3c063f80 	lui	a2,0x3f80
     61c:	e7a60010 	swc1	$f6,16(sp)
     620:	0c000000 	jal	0 <DemoIk_Destroy>
     624:	e7a00018 	swc1	$f0,24(sp)
     628:	8fbf002c 	lw	ra,44(sp)
     62c:	8fb00024 	lw	s0,36(sp)
     630:	8fb10028 	lw	s1,40(sp)
     634:	03e00008 	jr	ra
     638:	27bd0058 	addiu	sp,sp,88

0000063c <func_8098393C>:
     63c:	ac8001a8 	sw	zero,424(a0)
     640:	ac8001ac 	sw	zero,428(a0)
     644:	03e00008 	jr	ra
     648:	a08000c8 	sb	zero,200(a0)

0000064c <func_8098394C>:
     64c:	27bdffe0 	addiu	sp,sp,-32
     650:	afbf001c 	sw	ra,28(sp)
     654:	afb00018 	sw	s0,24(sp)
     658:	00808025 	move	s0,a0
     65c:	0c000000 	jal	0 <DemoIk_Destroy>
     660:	afa50024 	sw	a1,36(sp)
     664:	0c000000 	jal	0 <DemoIk_Destroy>
     668:	8604001c 	lh	a0,28(s0)
     66c:	02002025 	move	a0,s0
     670:	8fa50024 	lw	a1,36(sp)
     674:	0c000000 	jal	0 <DemoIk_Destroy>
     678:	00403025 	move	a2,v0
     67c:	44802000 	mtc1	zero,$f4
     680:	24020001 	li	v0,1
     684:	240e00ff 	li	t6,255
     688:	ae0201a8 	sw	v0,424(s0)
     68c:	ae0201ac 	sw	v0,428(s0)
     690:	a20e00c8 	sb	t6,200(s0)
     694:	e6040164 	swc1	$f4,356(s0)
     698:	8fbf001c 	lw	ra,28(sp)
     69c:	8fb00018 	lw	s0,24(sp)
     6a0:	27bd0020 	addiu	sp,sp,32
     6a4:	03e00008 	jr	ra
     6a8:	00000000 	nop

000006ac <func_809839AC>:
     6ac:	44802000 	mtc1	zero,$f4
     6b0:	240e0002 	li	t6,2
     6b4:	240f0001 	li	t7,1
     6b8:	241800ff 	li	t8,255
     6bc:	ac8e01a8 	sw	t6,424(a0)
     6c0:	ac8f01ac 	sw	t7,428(a0)
     6c4:	a09800c8 	sb	t8,200(a0)
     6c8:	03e00008 	jr	ra
     6cc:	e4840164 	swc1	$f4,356(a0)

000006d0 <func_809839D0>:
     6d0:	27bdffd8 	addiu	sp,sp,-40
     6d4:	afb00018 	sw	s0,24(sp)
     6d8:	00808025 	move	s0,a0
     6dc:	afbf001c 	sw	ra,28(sp)
     6e0:	afa5002c 	sw	a1,44(sp)
     6e4:	0c000000 	jal	0 <DemoIk_Destroy>
     6e8:	8484001c 	lh	a0,28(a0)
     6ec:	8fa4002c 	lw	a0,44(sp)
     6f0:	0c000000 	jal	0 <DemoIk_Destroy>
     6f4:	00402825 	move	a1,v0
     6f8:	50400026 	beqzl	v0,794 <L80983A88+0xc>
     6fc:	8fbf001c 	lw	ra,28(sp)
     700:	944e0000 	lhu	t6,0(v0)
     704:	afae0020 	sw	t6,32(sp)
     708:	8e0301b0 	lw	v1,432(s0)
     70c:	25d8ffff 	addiu	t8,t6,-1
     710:	2f010006 	sltiu	at,t8,6
     714:	51c3001f 	beql	t6,v1,794 <L80983A88+0xc>
     718:	8fbf001c 	lw	ra,28(sp)
     71c:	10200018 	beqz	at,780 <L80983A70+0x10>
     720:	3c040000 	lui	a0,0x0
     724:	0018c080 	sll	t8,t8,0x2
     728:	3c010000 	lui	at,0x0
     72c:	00380821 	addu	at,at,t8
     730:	8c380000 	lw	t8,0(at)
     734:	03000008 	jr	t8
     738:	00000000 	nop

0000073c <L80983A3C>:
     73c:	0c000000 	jal	0 <DemoIk_Destroy>
     740:	02002025 	move	a0,s0
     744:	10000011 	b	78c <L80983A88+0x4>
     748:	8fb90020 	lw	t9,32(sp)

0000074c <L80983A4C>:
     74c:	02002025 	move	a0,s0
     750:	0c000000 	jal	0 <DemoIk_Destroy>
     754:	8fa5002c 	lw	a1,44(sp)
     758:	1000000c 	b	78c <L80983A88+0x4>
     75c:	8fb90020 	lw	t9,32(sp)

00000760 <L80983A60>:
     760:	0c000000 	jal	0 <DemoIk_Destroy>
     764:	02002025 	move	a0,s0
     768:	10000008 	b	78c <L80983A88+0x4>
     76c:	8fb90020 	lw	t9,32(sp)

00000770 <L80983A70>:
     770:	0c000000 	jal	0 <DemoIk_Destroy>
     774:	02002025 	move	a0,s0
     778:	10000004 	b	78c <L80983A88+0x4>
     77c:	8fb90020 	lw	t9,32(sp)
     780:	0c000000 	jal	0 <DemoIk_Destroy>
     784:	24840000 	addiu	a0,a0,0

00000788 <L80983A88>:
     788:	8fb90020 	lw	t9,32(sp)
     78c:	ae1901b0 	sw	t9,432(s0)
     790:	8fbf001c 	lw	ra,28(sp)
     794:	8fb00018 	lw	s0,24(sp)
     798:	27bd0028 	addiu	sp,sp,40
     79c:	03e00008 	jr	ra
     7a0:	00000000 	nop

000007a4 <func_80983AA4>:
     7a4:	27bdffe8 	addiu	sp,sp,-24
     7a8:	afbf0014 	sw	ra,20(sp)
     7ac:	0c000000 	jal	0 <DemoIk_Destroy>
     7b0:	00000000 	nop
     7b4:	8fbf0014 	lw	ra,20(sp)
     7b8:	27bd0018 	addiu	sp,sp,24
     7bc:	03e00008 	jr	ra
     7c0:	00000000 	nop

000007c4 <func_80983AC4>:
     7c4:	27bdffe8 	addiu	sp,sp,-24
     7c8:	afbf0014 	sw	ra,20(sp)
     7cc:	afa40018 	sw	a0,24(sp)
     7d0:	0c000000 	jal	0 <DemoIk_Destroy>
     7d4:	afa5001c 	sw	a1,28(sp)
     7d8:	8fa40018 	lw	a0,24(sp)
     7dc:	0c000000 	jal	0 <DemoIk_Destroy>
     7e0:	8fa5001c 	lw	a1,28(sp)
     7e4:	8fbf0014 	lw	ra,20(sp)
     7e8:	27bd0018 	addiu	sp,sp,24
     7ec:	03e00008 	jr	ra
     7f0:	00000000 	nop

000007f4 <func_80983AF4>:
     7f4:	27bdffe0 	addiu	sp,sp,-32
     7f8:	afbf001c 	sw	ra,28(sp)
     7fc:	afb00018 	sw	s0,24(sp)
     800:	00808025 	move	s0,a0
     804:	0c000000 	jal	0 <DemoIk_Destroy>
     808:	afa50024 	sw	a1,36(sp)
     80c:	0c000000 	jal	0 <DemoIk_Destroy>
     810:	02002025 	move	a0,s0
     814:	02002025 	move	a0,s0
     818:	0c000000 	jal	0 <DemoIk_Destroy>
     81c:	8fa50024 	lw	a1,36(sp)
     820:	02002025 	move	a0,s0
     824:	0c000000 	jal	0 <DemoIk_Destroy>
     828:	8fa50024 	lw	a1,36(sp)
     82c:	02002025 	move	a0,s0
     830:	0c000000 	jal	0 <DemoIk_Destroy>
     834:	8fa50024 	lw	a1,36(sp)
     838:	02002025 	move	a0,s0
     83c:	0c000000 	jal	0 <DemoIk_Destroy>
     840:	8fa50024 	lw	a1,36(sp)
     844:	8fbf001c 	lw	ra,28(sp)
     848:	8fb00018 	lw	s0,24(sp)
     84c:	27bd0020 	addiu	sp,sp,32
     850:	03e00008 	jr	ra
     854:	00000000 	nop

00000858 <func_80983B58>:
     858:	27bdffa8 	addiu	sp,sp,-88
     85c:	afbf001c 	sw	ra,28(sp)
     860:	afb00018 	sw	s0,24(sp)
     864:	afa40058 	sw	a0,88(sp)
     868:	afa5005c 	sw	a1,92(sp)
     86c:	afa60060 	sw	a2,96(sp)
     870:	afa70064 	sw	a3,100(sp)
     874:	8c900000 	lw	s0,0(a0)
     878:	3c060000 	lui	a2,0x0
     87c:	24c60000 	addiu	a2,a2,0
     880:	27a4003c 	addiu	a0,sp,60
     884:	24070181 	li	a3,385
     888:	0c000000 	jal	0 <DemoIk_Destroy>
     88c:	02002825 	move	a1,s0
     890:	8faf005c 	lw	t7,92(sp)
     894:	24010001 	li	at,1
     898:	8fb80068 	lw	t8,104(sp)
     89c:	15e10034 	bne	t7,at,970 <func_80983B58+0x118>
     8a0:	00000000 	nop
     8a4:	8702001c 	lh	v0,28(t8)
     8a8:	3c08da38 	lui	t0,0xda38
     8ac:	35080003 	ori	t0,t0,0x3
     8b0:	10400006 	beqz	v0,8cc <func_80983B58+0x74>
     8b4:	02002025 	move	a0,s0
     8b8:	24010002 	li	at,2
     8bc:	10410017 	beq	v0,at,91c <func_80983B58+0xc4>
     8c0:	3c0dda38 	lui	t5,0xda38
     8c4:	1000002a 	b	970 <func_80983B58+0x118>
     8c8:	00000000 	nop
     8cc:	8e0202d0 	lw	v0,720(s0)
     8d0:	3c050000 	lui	a1,0x0
     8d4:	24a50000 	addiu	a1,a1,0
     8d8:	24590008 	addiu	t9,v0,8
     8dc:	ae1902d0 	sw	t9,720(s0)
     8e0:	ac480000 	sw	t0,0(v0)
     8e4:	24060186 	li	a2,390
     8e8:	0c000000 	jal	0 <DemoIk_Destroy>
     8ec:	afa20038 	sw	v0,56(sp)
     8f0:	8fa30038 	lw	v1,56(sp)
     8f4:	3c0b0601 	lui	t3,0x601
     8f8:	256b6be0 	addiu	t3,t3,27616
     8fc:	ac620004 	sw	v0,4(v1)
     900:	8e0202d0 	lw	v0,720(s0)
     904:	3c0ade00 	lui	t2,0xde00
     908:	24490008 	addiu	t1,v0,8
     90c:	ae0902d0 	sw	t1,720(s0)
     910:	ac4b0004 	sw	t3,4(v0)
     914:	10000016 	b	970 <func_80983B58+0x118>
     918:	ac4a0000 	sw	t2,0(v0)
     91c:	8e0202d0 	lw	v0,720(s0)
     920:	35ad0003 	ori	t5,t5,0x3
     924:	3c050000 	lui	a1,0x0
     928:	244c0008 	addiu	t4,v0,8
     92c:	ae0c02d0 	sw	t4,720(s0)
     930:	ac4d0000 	sw	t5,0(v0)
     934:	24a50000 	addiu	a1,a1,0
     938:	02002025 	move	a0,s0
     93c:	2406018c 	li	a2,396
     940:	0c000000 	jal	0 <DemoIk_Destroy>
     944:	afa20030 	sw	v0,48(sp)
     948:	8fa30030 	lw	v1,48(sp)
     94c:	3c180601 	lui	t8,0x601
     950:	27186f88 	addiu	t8,t8,28552
     954:	ac620004 	sw	v0,4(v1)
     958:	8e0202d0 	lw	v0,720(s0)
     95c:	3c0fde00 	lui	t7,0xde00
     960:	244e0008 	addiu	t6,v0,8
     964:	ae0e02d0 	sw	t6,720(s0)
     968:	ac580004 	sw	t8,4(v0)
     96c:	ac4f0000 	sw	t7,0(v0)
     970:	3c060000 	lui	a2,0x0
     974:	24c60000 	addiu	a2,a2,0
     978:	27a4003c 	addiu	a0,sp,60
     97c:	02002825 	move	a1,s0
     980:	0c000000 	jal	0 <DemoIk_Destroy>
     984:	24070194 	li	a3,404
     988:	8fbf001c 	lw	ra,28(sp)
     98c:	8fb00018 	lw	s0,24(sp)
     990:	27bd0058 	addiu	sp,sp,88
     994:	03e00008 	jr	ra
     998:	00000000 	nop

0000099c <func_80983C9C>:
     99c:	27bdff98 	addiu	sp,sp,-104
     9a0:	afbf002c 	sw	ra,44(sp)
     9a4:	afb00028 	sw	s0,40(sp)
     9a8:	afa40068 	sw	a0,104(sp)
     9ac:	afa5006c 	sw	a1,108(sp)
     9b0:	8cb00000 	lw	s0,0(a1)
     9b4:	3c060000 	lui	a2,0x0
     9b8:	24c60000 	addiu	a2,a2,0
     9bc:	27a40044 	addiu	a0,sp,68
     9c0:	240701a6 	li	a3,422
     9c4:	0c000000 	jal	0 <DemoIk_Destroy>
     9c8:	02002825 	move	a1,s0
     9cc:	8fa40068 	lw	a0,104(sp)
     9d0:	8fa5006c 	lw	a1,108(sp)
     9d4:	0c000000 	jal	0 <DemoIk_Destroy>
     9d8:	00003025 	move	a2,zero
     9dc:	0c000000 	jal	0 <DemoIk_Destroy>
     9e0:	02002025 	move	a0,s0
     9e4:	0c000000 	jal	0 <DemoIk_Destroy>
     9e8:	02002025 	move	a0,s0
     9ec:	8e0202c0 	lw	v0,704(s0)
     9f0:	3c18db06 	lui	t8,0xdb06
     9f4:	37180020 	ori	t8,t8,0x20
     9f8:	244f0008 	addiu	t7,v0,8
     9fc:	ae0f02c0 	sw	t7,704(s0)
     a00:	ac580000 	sw	t8,0(v0)
     a04:	2419001e 	li	t9,30
     a08:	2408001e 	li	t0,30
     a0c:	afa80014 	sw	t0,20(sp)
     a10:	afb90010 	sw	t9,16(sp)
     a14:	afa00018 	sw	zero,24(sp)
     a18:	02002025 	move	a0,s0
     a1c:	240500f5 	li	a1,245
     a20:	240600e1 	li	a2,225
     a24:	2407009b 	li	a3,155
     a28:	0c000000 	jal	0 <DemoIk_Destroy>
     a2c:	afa20040 	sw	v0,64(sp)
     a30:	8fa30040 	lw	v1,64(sp)
     a34:	3c0adb06 	lui	t2,0xdb06
     a38:	354a0024 	ori	t2,t2,0x24
     a3c:	ac620004 	sw	v0,4(v1)
     a40:	8e0202c0 	lw	v0,704(s0)
     a44:	240b0028 	li	t3,40
     a48:	02002025 	move	a0,s0
     a4c:	24490008 	addiu	t1,v0,8
     a50:	ae0902c0 	sw	t1,704(s0)
     a54:	ac4a0000 	sw	t2,0(v0)
     a58:	afa00018 	sw	zero,24(sp)
     a5c:	afa00014 	sw	zero,20(sp)
     a60:	afab0010 	sw	t3,16(sp)
     a64:	240500ff 	li	a1,255
     a68:	24060028 	li	a2,40
     a6c:	00003825 	move	a3,zero
     a70:	0c000000 	jal	0 <DemoIk_Destroy>
     a74:	afa2003c 	sw	v0,60(sp)
     a78:	8fa3003c 	lw	v1,60(sp)
     a7c:	3c0ddb06 	lui	t5,0xdb06
     a80:	35ad0028 	ori	t5,t5,0x28
     a84:	ac620004 	sw	v0,4(v1)
     a88:	8e0202c0 	lw	v0,704(s0)
     a8c:	240e0014 	li	t6,20
     a90:	240f0028 	li	t7,40
     a94:	244c0008 	addiu	t4,v0,8
     a98:	ae0c02c0 	sw	t4,704(s0)
     a9c:	ac4d0000 	sw	t5,0(v0)
     aa0:	2418001e 	li	t8,30
     aa4:	afb80018 	sw	t8,24(sp)
     aa8:	afaf0014 	sw	t7,20(sp)
     aac:	afae0010 	sw	t6,16(sp)
     ab0:	02002025 	move	a0,s0
     ab4:	240500ff 	li	a1,255
     ab8:	240600ff 	li	a2,255
     abc:	240700ff 	li	a3,255
     ac0:	0c000000 	jal	0 <DemoIk_Destroy>
     ac4:	afa20038 	sw	v0,56(sp)
     ac8:	8fa30038 	lw	v1,56(sp)
     acc:	3c190000 	lui	t9,0x0
     ad0:	27390000 	addiu	t9,t9,0
     ad4:	ac620004 	sw	v0,4(v1)
     ad8:	8fa30068 	lw	v1,104(sp)
     adc:	8fa4006c 	lw	a0,108(sp)
     ae0:	00003825 	move	a3,zero
     ae4:	2462014c 	addiu	v0,v1,332
     ae8:	8c450004 	lw	a1,4(v0)
     aec:	8c460020 	lw	a2,32(v0)
     af0:	afb90010 	sw	t9,16(sp)
     af4:	0c000000 	jal	0 <DemoIk_Destroy>
     af8:	afa30014 	sw	v1,20(sp)
     afc:	3c060000 	lui	a2,0x0
     b00:	24c60000 	addiu	a2,a2,0
     b04:	27a40044 	addiu	a0,sp,68
     b08:	02002825 	move	a1,s0
     b0c:	0c000000 	jal	0 <DemoIk_Destroy>
     b10:	240701bc 	li	a3,444
     b14:	8fbf002c 	lw	ra,44(sp)
     b18:	8fb00028 	lw	s0,40(sp)
     b1c:	27bd0068 	addiu	sp,sp,104
     b20:	03e00008 	jr	ra
     b24:	00000000 	nop

00000b28 <func_80983E28>:
     b28:	27bdffb0 	addiu	sp,sp,-80
     b2c:	afbf002c 	sw	ra,44(sp)
     b30:	afb10028 	sw	s1,40(sp)
     b34:	afb00024 	sw	s0,36(sp)
     b38:	afa50054 	sw	a1,84(sp)
     b3c:	8482001c 	lh	v0,28(a0)
     b40:	00808825 	move	s1,a0
     b44:	24010003 	li	at,3
     b48:	10410009 	beq	v0,at,b70 <func_80983E28+0x48>
     b4c:	8fa40054 	lw	a0,84(sp)
     b50:	24010004 	li	at,4
     b54:	1041000b 	beq	v0,at,b84 <func_80983E28+0x5c>
     b58:	3c060602 	lui	a2,0x602
     b5c:	24010005 	li	at,5
     b60:	1041000c 	beq	v0,at,b94 <func_80983E28+0x6c>
     b64:	3c060600 	lui	a2,0x600
     b68:	1000000e 	b	ba4 <func_80983E28+0x7c>
     b6c:	3c060600 	lui	a2,0x600
     b70:	3c060602 	lui	a2,0x602
     b74:	3c100602 	lui	s0,0x602
     b78:	24c6eb40 	addiu	a2,a2,-5312
     b7c:	1000000c 	b	bb0 <func_80983E28+0x88>
     b80:	2610eb14 	addiu	s0,s0,-5356
     b84:	3c100602 	lui	s0,0x602
     b88:	24c6ee60 	addiu	a2,a2,-4512
     b8c:	10000008 	b	bb0 <func_80983E28+0x88>
     b90:	2610ee34 	addiu	s0,s0,-4556
     b94:	3c100600 	lui	s0,0x600
     b98:	24c60f30 	addiu	a2,a2,3888
     b9c:	10000004 	b	bb0 <func_80983E28+0x88>
     ba0:	26100f0c 	addiu	s0,s0,3852
     ba4:	3c100600 	lui	s0,0x600
     ba8:	24c60900 	addiu	a2,a2,2304
     bac:	261008dc 	addiu	s0,s0,2268
     bb0:	2625014c 	addiu	a1,s1,332
     bb4:	262e0190 	addiu	t6,s1,400
     bb8:	262f019c 	addiu	t7,s1,412
     bbc:	24180002 	li	t8,2
     bc0:	afb80018 	sw	t8,24(sp)
     bc4:	afaf0014 	sw	t7,20(sp)
     bc8:	afae0010 	sw	t6,16(sp)
     bcc:	afa50034 	sw	a1,52(sp)
     bd0:	0c000000 	jal	0 <DemoIk_Destroy>
     bd4:	00003825 	move	a3,zero
     bd8:	0c000000 	jal	0 <DemoIk_Destroy>
     bdc:	02002025 	move	a0,s0
     be0:	44822000 	mtc1	v0,$f4
     be4:	44800000 	mtc1	zero,$f0
     be8:	24190002 	li	t9,2
     bec:	468021a0 	cvt.s.w	$f6,$f4
     bf0:	44070000 	mfc1	a3,$f0
     bf4:	afb90014 	sw	t9,20(sp)
     bf8:	8fa40034 	lw	a0,52(sp)
     bfc:	02002825 	move	a1,s0
     c00:	3c063f80 	lui	a2,0x3f80
     c04:	e7a60010 	swc1	$f6,16(sp)
     c08:	0c000000 	jal	0 <DemoIk_Destroy>
     c0c:	e7a00018 	swc1	$f0,24(sp)
     c10:	24080003 	li	t0,3
     c14:	ae2801a8 	sw	t0,424(s1)
     c18:	ae2001ac 	sw	zero,428(s1)
     c1c:	8fbf002c 	lw	ra,44(sp)
     c20:	8fb10028 	lw	s1,40(sp)
     c24:	8fb00024 	lw	s0,36(sp)
     c28:	03e00008 	jr	ra
     c2c:	27bd0050 	addiu	sp,sp,80

00000c30 <func_80983F30>:
     c30:	44856000 	mtc1	a1,$f12
     c34:	27bdffe0 	addiu	sp,sp,-32
     c38:	afbf001c 	sw	ra,28(sp)
     c3c:	afa40020 	sw	a0,32(sp)
     c40:	44056000 	mfc1	a1,$f12
     c44:	0c000000 	jal	0 <DemoIk_Destroy>
     c48:	2484014c 	addiu	a0,a0,332
     c4c:	1040000b 	beqz	v0,c7c <func_80983F30+0x4c>
     c50:	3c070000 	lui	a3,0x0
     c54:	8fa50020 	lw	a1,32(sp)
     c58:	3c0e0000 	lui	t6,0x0
     c5c:	24e70000 	addiu	a3,a3,0
     c60:	25ce0000 	addiu	t6,t6,0
     c64:	afae0014 	sw	t6,20(sp)
     c68:	afa70010 	sw	a3,16(sp)
     c6c:	2404392c 	li	a0,14636
     c70:	24060004 	li	a2,4
     c74:	0c000000 	jal	0 <DemoIk_Destroy>
     c78:	24a500e4 	addiu	a1,a1,228
     c7c:	8fbf001c 	lw	ra,28(sp)
     c80:	27bd0020 	addiu	sp,sp,32
     c84:	03e00008 	jr	ra
     c88:	00000000 	nop

00000c8c <func_80983F8C>:
     c8c:	27bdffe8 	addiu	sp,sp,-24
     c90:	afbf0014 	sw	ra,20(sp)
     c94:	8482001c 	lh	v0,28(a0)
     c98:	24010003 	li	at,3
     c9c:	10410005 	beq	v0,at,cb4 <func_80983F8C+0x28>
     ca0:	24010005 	li	at,5
     ca4:	10410007 	beq	v0,at,cc4 <func_80983F8C+0x38>
     ca8:	00000000 	nop
     cac:	10000008 	b	cd0 <func_80983F8C+0x44>
     cb0:	8fbf0014 	lw	ra,20(sp)
     cb4:	0c000000 	jal	0 <DemoIk_Destroy>
     cb8:	3c054204 	lui	a1,0x4204
     cbc:	10000004 	b	cd0 <func_80983F8C+0x44>
     cc0:	8fbf0014 	lw	ra,20(sp)
     cc4:	0c000000 	jal	0 <DemoIk_Destroy>
     cc8:	3c054230 	lui	a1,0x4230
     ccc:	8fbf0014 	lw	ra,20(sp)
     cd0:	27bd0018 	addiu	sp,sp,24
     cd4:	03e00008 	jr	ra
     cd8:	00000000 	nop

00000cdc <func_80983FDC>:
     cdc:	240e0003 	li	t6,3
     ce0:	ac8e01a8 	sw	t6,424(a0)
     ce4:	03e00008 	jr	ra
     ce8:	ac8001ac 	sw	zero,428(a0)

00000cec <func_80983FEC>:
     cec:	27bdffe8 	addiu	sp,sp,-24
     cf0:	afbf0014 	sw	ra,20(sp)
     cf4:	afa40018 	sw	a0,24(sp)
     cf8:	0c000000 	jal	0 <DemoIk_Destroy>
     cfc:	24060004 	li	a2,4
     d00:	8fa40018 	lw	a0,24(sp)
     d04:	44802000 	mtc1	zero,$f4
     d08:	240e0004 	li	t6,4
     d0c:	240f0002 	li	t7,2
     d10:	ac8e01a8 	sw	t6,424(a0)
     d14:	ac8f01ac 	sw	t7,428(a0)
     d18:	e4840164 	swc1	$f4,356(a0)
     d1c:	8fbf0014 	lw	ra,20(sp)
     d20:	27bd0018 	addiu	sp,sp,24
     d24:	03e00008 	jr	ra
     d28:	00000000 	nop

00000d2c <func_8098402C>:
     d2c:	44802000 	mtc1	zero,$f4
     d30:	240e0005 	li	t6,5
     d34:	240f0002 	li	t7,2
     d38:	ac8e01a8 	sw	t6,424(a0)
     d3c:	ac8f01ac 	sw	t7,428(a0)
     d40:	03e00008 	jr	ra
     d44:	e4840164 	swc1	$f4,356(a0)

00000d48 <func_80984048>:
     d48:	27bdffd8 	addiu	sp,sp,-40
     d4c:	afb00018 	sw	s0,24(sp)
     d50:	00808025 	move	s0,a0
     d54:	afbf001c 	sw	ra,28(sp)
     d58:	afa5002c 	sw	a1,44(sp)
     d5c:	00a02025 	move	a0,a1
     d60:	0c000000 	jal	0 <DemoIk_Destroy>
     d64:	24050004 	li	a1,4
     d68:	5040002a 	beqzl	v0,e14 <func_80984048+0xcc>
     d6c:	8fbf001c 	lw	ra,28(sp)
     d70:	94460000 	lhu	a2,0(v0)
     d74:	8e0301b0 	lw	v1,432(s0)
     d78:	24010001 	li	at,1
     d7c:	50c30025 	beql	a2,v1,e14 <func_80984048+0xcc>
     d80:	8fbf001c 	lw	ra,28(sp)
     d84:	10c1000c 	beq	a2,at,db8 <func_80984048+0x70>
     d88:	02002025 	move	a0,s0
     d8c:	24010005 	li	at,5
     d90:	10c1000d 	beq	a2,at,dc8 <func_80984048+0x80>
     d94:	02002025 	move	a0,s0
     d98:	24010006 	li	at,6
     d9c:	10c1000f 	beq	a2,at,ddc <func_80984048+0x94>
     da0:	02002025 	move	a0,s0
     da4:	24010007 	li	at,7
     da8:	10c10010 	beq	a2,at,dec <func_80984048+0xa4>
     dac:	02002025 	move	a0,s0
     db0:	10000012 	b	dfc <func_80984048+0xb4>
     db4:	3c040000 	lui	a0,0x0
     db8:	0c000000 	jal	0 <DemoIk_Destroy>
     dbc:	afa60020 	sw	a2,32(sp)
     dc0:	10000012 	b	e0c <func_80984048+0xc4>
     dc4:	8fa60020 	lw	a2,32(sp)
     dc8:	8fa5002c 	lw	a1,44(sp)
     dcc:	0c000000 	jal	0 <DemoIk_Destroy>
     dd0:	afa60020 	sw	a2,32(sp)
     dd4:	1000000d 	b	e0c <func_80984048+0xc4>
     dd8:	8fa60020 	lw	a2,32(sp)
     ddc:	0c000000 	jal	0 <DemoIk_Destroy>
     de0:	afa60020 	sw	a2,32(sp)
     de4:	10000009 	b	e0c <func_80984048+0xc4>
     de8:	8fa60020 	lw	a2,32(sp)
     dec:	0c000000 	jal	0 <DemoIk_Destroy>
     df0:	afa60020 	sw	a2,32(sp)
     df4:	10000005 	b	e0c <func_80984048+0xc4>
     df8:	8fa60020 	lw	a2,32(sp)
     dfc:	24840000 	addiu	a0,a0,0
     e00:	0c000000 	jal	0 <DemoIk_Destroy>
     e04:	afa60020 	sw	a2,32(sp)
     e08:	8fa60020 	lw	a2,32(sp)
     e0c:	ae0601b0 	sw	a2,432(s0)
     e10:	8fbf001c 	lw	ra,28(sp)
     e14:	8fb00018 	lw	s0,24(sp)
     e18:	27bd0028 	addiu	sp,sp,40
     e1c:	03e00008 	jr	ra
     e20:	00000000 	nop

00000e24 <func_80984124>:
     e24:	27bdffe8 	addiu	sp,sp,-24
     e28:	afbf0014 	sw	ra,20(sp)
     e2c:	0c000000 	jal	0 <DemoIk_Destroy>
     e30:	00000000 	nop
     e34:	8fbf0014 	lw	ra,20(sp)
     e38:	27bd0018 	addiu	sp,sp,24
     e3c:	03e00008 	jr	ra
     e40:	00000000 	nop

00000e44 <func_80984144>:
     e44:	27bdffe8 	addiu	sp,sp,-24
     e48:	afbf0014 	sw	ra,20(sp)
     e4c:	0c000000 	jal	0 <DemoIk_Destroy>
     e50:	00000000 	nop
     e54:	8fbf0014 	lw	ra,20(sp)
     e58:	27bd0018 	addiu	sp,sp,24
     e5c:	03e00008 	jr	ra
     e60:	00000000 	nop

00000e64 <func_80984164>:
     e64:	27bdffe8 	addiu	sp,sp,-24
     e68:	afbf0014 	sw	ra,20(sp)
     e6c:	afa40018 	sw	a0,24(sp)
     e70:	0c000000 	jal	0 <DemoIk_Destroy>
     e74:	afa5001c 	sw	a1,28(sp)
     e78:	0c000000 	jal	0 <DemoIk_Destroy>
     e7c:	8fa40018 	lw	a0,24(sp)
     e80:	8fa40018 	lw	a0,24(sp)
     e84:	0c000000 	jal	0 <DemoIk_Destroy>
     e88:	8fa5001c 	lw	a1,28(sp)
     e8c:	8fbf0014 	lw	ra,20(sp)
     e90:	27bd0018 	addiu	sp,sp,24
     e94:	03e00008 	jr	ra
     e98:	00000000 	nop

00000e9c <func_8098419C>:
     e9c:	27bdffe8 	addiu	sp,sp,-24
     ea0:	24010001 	li	at,1
     ea4:	afbf0014 	sw	ra,20(sp)
     ea8:	afa40018 	sw	a0,24(sp)
     eac:	afa60020 	sw	a2,32(sp)
     eb0:	14a1000b 	bne	a1,at,ee0 <func_8098419C+0x44>
     eb4:	afa70024 	sw	a3,36(sp)
     eb8:	0c000000 	jal	0 <DemoIk_Destroy>
     ebc:	8fa4002c 	lw	a0,44(sp)
     ec0:	3c0141f0 	lui	at,0x41f0
     ec4:	44812000 	mtc1	at,$f4
     ec8:	8fae0020 	lw	t6,32(sp)
     ecc:	4604003c 	c.lt.s	$f0,$f4
     ed0:	00000000 	nop
     ed4:	45020003 	bc1fl	ee4 <func_8098419C+0x48>
     ed8:	8fbf0014 	lw	ra,20(sp)
     edc:	adc00000 	sw	zero,0(t6)
     ee0:	8fbf0014 	lw	ra,20(sp)
     ee4:	27bd0018 	addiu	sp,sp,24
     ee8:	00001025 	move	v0,zero
     eec:	03e00008 	jr	ra
     ef0:	00000000 	nop

00000ef4 <func_809841F4>:
     ef4:	27bdff98 	addiu	sp,sp,-104
     ef8:	afbf001c 	sw	ra,28(sp)
     efc:	afb00018 	sw	s0,24(sp)
     f00:	afa40068 	sw	a0,104(sp)
     f04:	afa5006c 	sw	a1,108(sp)
     f08:	afa60070 	sw	a2,112(sp)
     f0c:	afa70074 	sw	a3,116(sp)
     f10:	8c900000 	lw	s0,0(a0)
     f14:	0c000000 	jal	0 <DemoIk_Destroy>
     f18:	8fa40078 	lw	a0,120(sp)
     f1c:	3c060000 	lui	a2,0x0
     f20:	e7a0005c 	swc1	$f0,92(sp)
     f24:	24c60000 	addiu	a2,a2,0
     f28:	27a40048 	addiu	a0,sp,72
     f2c:	02002825 	move	a1,s0
     f30:	0c000000 	jal	0 <DemoIk_Destroy>
     f34:	2407010c 	li	a3,268
     f38:	8fae006c 	lw	t6,108(sp)
     f3c:	24010001 	li	at,1
     f40:	c7a4005c 	lwc1	$f4,92(sp)
     f44:	15c1006a 	bne	t6,at,10f0 <func_809841F4+0x1fc>
     f48:	3c0141f0 	lui	at,0x41f0
     f4c:	44813000 	mtc1	at,$f6
     f50:	8faf0078 	lw	t7,120(sp)
     f54:	4604303e 	c.le.s	$f6,$f4
     f58:	00000000 	nop
     f5c:	45000064 	bc1f	10f0 <func_809841F4+0x1fc>
     f60:	00000000 	nop
     f64:	85e2001c 	lh	v0,28(t7)
     f68:	24010003 	li	at,3
     f6c:	3c19da38 	lui	t9,0xda38
     f70:	10410009 	beq	v0,at,f98 <func_809841F4+0xa4>
     f74:	37390003 	ori	t9,t9,0x3
     f78:	24010004 	li	at,4
     f7c:	1041001b 	beq	v0,at,fec <func_809841F4+0xf8>
     f80:	3c0cda38 	lui	t4,0xda38
     f84:	24010005 	li	at,5
     f88:	1041002e 	beq	v0,at,1044 <func_809841F4+0x150>
     f8c:	3c19da38 	lui	t9,0xda38
     f90:	10000042 	b	109c <func_809841F4+0x1a8>
     f94:	3c0cda38 	lui	t4,0xda38
     f98:	8e0202d0 	lw	v0,720(s0)
     f9c:	3c050000 	lui	a1,0x0
     fa0:	24a50000 	addiu	a1,a1,0
     fa4:	24580008 	addiu	t8,v0,8
     fa8:	ae1802d0 	sw	t8,720(s0)
     fac:	ac590000 	sw	t9,0(v0)
     fb0:	02002025 	move	a0,s0
     fb4:	24060112 	li	a2,274
     fb8:	0c000000 	jal	0 <DemoIk_Destroy>
     fbc:	afa20044 	sw	v0,68(sp)
     fc0:	8fa30044 	lw	v1,68(sp)
     fc4:	3c0a0601 	lui	t2,0x601
     fc8:	254a7028 	addiu	t2,t2,28712
     fcc:	ac620004 	sw	v0,4(v1)
     fd0:	8e0202d0 	lw	v0,720(s0)
     fd4:	3c09de00 	lui	t1,0xde00
     fd8:	24480008 	addiu	t0,v0,8
     fdc:	ae0802d0 	sw	t0,720(s0)
     fe0:	ac4a0004 	sw	t2,4(v0)
     fe4:	10000042 	b	10f0 <func_809841F4+0x1fc>
     fe8:	ac490000 	sw	t1,0(v0)
     fec:	8e0202d0 	lw	v0,720(s0)
     ff0:	358c0003 	ori	t4,t4,0x3
     ff4:	3c050000 	lui	a1,0x0
     ff8:	244b0008 	addiu	t3,v0,8
     ffc:	ae0b02d0 	sw	t3,720(s0)
    1000:	ac4c0000 	sw	t4,0(v0)
    1004:	24a50000 	addiu	a1,a1,0
    1008:	02002025 	move	a0,s0
    100c:	24060118 	li	a2,280
    1010:	0c000000 	jal	0 <DemoIk_Destroy>
    1014:	afa2003c 	sw	v0,60(sp)
    1018:	8fa3003c 	lw	v1,60(sp)
    101c:	3c0f0601 	lui	t7,0x601
    1020:	25ef7170 	addiu	t7,t7,29040
    1024:	ac620004 	sw	v0,4(v1)
    1028:	8e0202d0 	lw	v0,720(s0)
    102c:	3c0ede00 	lui	t6,0xde00
    1030:	244d0008 	addiu	t5,v0,8
    1034:	ae0d02d0 	sw	t5,720(s0)
    1038:	ac4f0004 	sw	t7,4(v0)
    103c:	1000002c 	b	10f0 <func_809841F4+0x1fc>
    1040:	ac4e0000 	sw	t6,0(v0)
    1044:	8e0202d0 	lw	v0,720(s0)
    1048:	37390003 	ori	t9,t9,0x3
    104c:	3c050000 	lui	a1,0x0
    1050:	24580008 	addiu	t8,v0,8
    1054:	ae1802d0 	sw	t8,720(s0)
    1058:	ac590000 	sw	t9,0(v0)
    105c:	24a50000 	addiu	a1,a1,0
    1060:	02002025 	move	a0,s0
    1064:	2406011e 	li	a2,286
    1068:	0c000000 	jal	0 <DemoIk_Destroy>
    106c:	afa20034 	sw	v0,52(sp)
    1070:	8fa30034 	lw	v1,52(sp)
    1074:	3c0a0601 	lui	t2,0x601
    1078:	254a6be0 	addiu	t2,t2,27616
    107c:	ac620004 	sw	v0,4(v1)
    1080:	8e0202d0 	lw	v0,720(s0)
    1084:	3c09de00 	lui	t1,0xde00
    1088:	24480008 	addiu	t0,v0,8
    108c:	ae0802d0 	sw	t0,720(s0)
    1090:	ac4a0004 	sw	t2,4(v0)
    1094:	10000016 	b	10f0 <func_809841F4+0x1fc>
    1098:	ac490000 	sw	t1,0(v0)
    109c:	8e0202d0 	lw	v0,720(s0)
    10a0:	358c0003 	ori	t4,t4,0x3
    10a4:	3c050000 	lui	a1,0x0
    10a8:	244b0008 	addiu	t3,v0,8
    10ac:	ae0b02d0 	sw	t3,720(s0)
    10b0:	ac4c0000 	sw	t4,0(v0)
    10b4:	24a50000 	addiu	a1,a1,0
    10b8:	02002025 	move	a0,s0
    10bc:	24060124 	li	a2,292
    10c0:	0c000000 	jal	0 <DemoIk_Destroy>
    10c4:	afa2002c 	sw	v0,44(sp)
    10c8:	8fa3002c 	lw	v1,44(sp)
    10cc:	3c0f0601 	lui	t7,0x601
    10d0:	25ef6cd8 	addiu	t7,t7,27864
    10d4:	ac620004 	sw	v0,4(v1)
    10d8:	8e0202d0 	lw	v0,720(s0)
    10dc:	3c0ede00 	lui	t6,0xde00
    10e0:	244d0008 	addiu	t5,v0,8
    10e4:	ae0d02d0 	sw	t5,720(s0)
    10e8:	ac4f0004 	sw	t7,4(v0)
    10ec:	ac4e0000 	sw	t6,0(v0)
    10f0:	3c060000 	lui	a2,0x0
    10f4:	24c60000 	addiu	a2,a2,0
    10f8:	27a40048 	addiu	a0,sp,72
    10fc:	02002825 	move	a1,s0
    1100:	0c000000 	jal	0 <DemoIk_Destroy>
    1104:	2407012c 	li	a3,300
    1108:	8fbf001c 	lw	ra,28(sp)
    110c:	8fb00018 	lw	s0,24(sp)
    1110:	27bd0068 	addiu	sp,sp,104
    1114:	03e00008 	jr	ra
    1118:	00000000 	nop

0000111c <func_8098441C>:
    111c:	27bdff98 	addiu	sp,sp,-104
    1120:	afbf002c 	sw	ra,44(sp)
    1124:	afb00028 	sw	s0,40(sp)
    1128:	afa40068 	sw	a0,104(sp)
    112c:	afa5006c 	sw	a1,108(sp)
    1130:	8cb00000 	lw	s0,0(a1)
    1134:	3c060000 	lui	a2,0x0
    1138:	24c60000 	addiu	a2,a2,0
    113c:	27a40044 	addiu	a0,sp,68
    1140:	2407013e 	li	a3,318
    1144:	0c000000 	jal	0 <DemoIk_Destroy>
    1148:	02002825 	move	a1,s0
    114c:	8fa40068 	lw	a0,104(sp)
    1150:	8fa5006c 	lw	a1,108(sp)
    1154:	0c000000 	jal	0 <DemoIk_Destroy>
    1158:	00003025 	move	a2,zero
    115c:	0c000000 	jal	0 <DemoIk_Destroy>
    1160:	02002025 	move	a0,s0
    1164:	0c000000 	jal	0 <DemoIk_Destroy>
    1168:	02002025 	move	a0,s0
    116c:	8e0202c0 	lw	v0,704(s0)
    1170:	3c18db06 	lui	t8,0xdb06
    1174:	37180020 	ori	t8,t8,0x20
    1178:	244f0008 	addiu	t7,v0,8
    117c:	ae0f02c0 	sw	t7,704(s0)
    1180:	ac580000 	sw	t8,0(v0)
    1184:	2419001e 	li	t9,30
    1188:	2408001e 	li	t0,30
    118c:	afa80014 	sw	t0,20(sp)
    1190:	afb90010 	sw	t9,16(sp)
    1194:	afa00018 	sw	zero,24(sp)
    1198:	02002025 	move	a0,s0
    119c:	240500f5 	li	a1,245
    11a0:	240600e1 	li	a2,225
    11a4:	2407009b 	li	a3,155
    11a8:	0c000000 	jal	0 <DemoIk_Destroy>
    11ac:	afa20040 	sw	v0,64(sp)
    11b0:	8fa30040 	lw	v1,64(sp)
    11b4:	3c0adb06 	lui	t2,0xdb06
    11b8:	354a0024 	ori	t2,t2,0x24
    11bc:	ac620004 	sw	v0,4(v1)
    11c0:	8e0202c0 	lw	v0,704(s0)
    11c4:	240b0028 	li	t3,40
    11c8:	02002025 	move	a0,s0
    11cc:	24490008 	addiu	t1,v0,8
    11d0:	ae0902c0 	sw	t1,704(s0)
    11d4:	ac4a0000 	sw	t2,0(v0)
    11d8:	afa00018 	sw	zero,24(sp)
    11dc:	afa00014 	sw	zero,20(sp)
    11e0:	afab0010 	sw	t3,16(sp)
    11e4:	240500ff 	li	a1,255
    11e8:	24060028 	li	a2,40
    11ec:	00003825 	move	a3,zero
    11f0:	0c000000 	jal	0 <DemoIk_Destroy>
    11f4:	afa2003c 	sw	v0,60(sp)
    11f8:	8fa3003c 	lw	v1,60(sp)
    11fc:	3c0ddb06 	lui	t5,0xdb06
    1200:	35ad0028 	ori	t5,t5,0x28
    1204:	ac620004 	sw	v0,4(v1)
    1208:	8e0202c0 	lw	v0,704(s0)
    120c:	240e0014 	li	t6,20
    1210:	240f0028 	li	t7,40
    1214:	244c0008 	addiu	t4,v0,8
    1218:	ae0c02c0 	sw	t4,704(s0)
    121c:	ac4d0000 	sw	t5,0(v0)
    1220:	2418001e 	li	t8,30
    1224:	afb80018 	sw	t8,24(sp)
    1228:	afaf0014 	sw	t7,20(sp)
    122c:	afae0010 	sw	t6,16(sp)
    1230:	02002025 	move	a0,s0
    1234:	240500ff 	li	a1,255
    1238:	240600ff 	li	a2,255
    123c:	240700ff 	li	a3,255
    1240:	0c000000 	jal	0 <DemoIk_Destroy>
    1244:	afa20038 	sw	v0,56(sp)
    1248:	8fa30038 	lw	v1,56(sp)
    124c:	3c190000 	lui	t9,0x0
    1250:	3c080000 	lui	t0,0x0
    1254:	ac620004 	sw	v0,4(v1)
    1258:	8fa30068 	lw	v1,104(sp)
    125c:	25080000 	addiu	t0,t0,0
    1260:	27390000 	addiu	t9,t9,0
    1264:	2462014c 	addiu	v0,v1,332
    1268:	8c450004 	lw	a1,4(v0)
    126c:	8c460020 	lw	a2,32(v0)
    1270:	90470002 	lbu	a3,2(v0)
    1274:	afa80014 	sw	t0,20(sp)
    1278:	afb90010 	sw	t9,16(sp)
    127c:	8fa4006c 	lw	a0,108(sp)
    1280:	0c000000 	jal	0 <DemoIk_Destroy>
    1284:	afa30018 	sw	v1,24(sp)
    1288:	3c060000 	lui	a2,0x0
    128c:	24c60000 	addiu	a2,a2,0
    1290:	27a40044 	addiu	a0,sp,68
    1294:	02002825 	move	a1,s0
    1298:	0c000000 	jal	0 <DemoIk_Destroy>
    129c:	24070155 	li	a3,341
    12a0:	8fbf002c 	lw	ra,44(sp)
    12a4:	8fb00028 	lw	s0,40(sp)
    12a8:	27bd0068 	addiu	sp,sp,104
    12ac:	03e00008 	jr	ra
    12b0:	00000000 	nop

000012b4 <DemoIk_Update>:
    12b4:	27bdffe8 	addiu	sp,sp,-24
    12b8:	afbf0014 	sw	ra,20(sp)
    12bc:	8c8201a8 	lw	v0,424(a0)
    12c0:	04400008 	bltz	v0,12e4 <DemoIk_Update+0x30>
    12c4:	28410006 	slti	at,v0,6
    12c8:	10200006 	beqz	at,12e4 <DemoIk_Update+0x30>
    12cc:	00027080 	sll	t6,v0,0x2
    12d0:	3c030000 	lui	v1,0x0
    12d4:	006e1821 	addu	v1,v1,t6
    12d8:	8c630000 	lw	v1,0(v1)
    12dc:	14600006 	bnez	v1,12f8 <DemoIk_Update+0x44>
    12e0:	00000000 	nop
    12e4:	3c040000 	lui	a0,0x0
    12e8:	0c000000 	jal	0 <DemoIk_Destroy>
    12ec:	24840000 	addiu	a0,a0,0
    12f0:	10000004 	b	1304 <DemoIk_Update+0x50>
    12f4:	8fbf0014 	lw	ra,20(sp)
    12f8:	0060f809 	jalr	v1
    12fc:	00000000 	nop
    1300:	8fbf0014 	lw	ra,20(sp)
    1304:	27bd0018 	addiu	sp,sp,24
    1308:	03e00008 	jr	ra
    130c:	00000000 	nop

00001310 <func_80984610>:
    1310:	afa40000 	sw	a0,0(sp)
    1314:	03e00008 	jr	ra
    1318:	afa50004 	sw	a1,4(sp)

0000131c <DemoIk_Draw>:
    131c:	27bdffe8 	addiu	sp,sp,-24
    1320:	afbf0014 	sw	ra,20(sp)
    1324:	8c8201ac 	lw	v0,428(a0)
    1328:	04400008 	bltz	v0,134c <DemoIk_Draw+0x30>
    132c:	28410003 	slti	at,v0,3
    1330:	10200006 	beqz	at,134c <DemoIk_Draw+0x30>
    1334:	00027080 	sll	t6,v0,0x2
    1338:	3c030000 	lui	v1,0x0
    133c:	006e1821 	addu	v1,v1,t6
    1340:	8c630000 	lw	v1,0(v1)
    1344:	14600006 	bnez	v1,1360 <DemoIk_Draw+0x44>
    1348:	00000000 	nop
    134c:	3c040000 	lui	a0,0x0
    1350:	0c000000 	jal	0 <DemoIk_Destroy>
    1354:	24840000 	addiu	a0,a0,0
    1358:	10000004 	b	136c <DemoIk_Draw+0x50>
    135c:	8fbf0014 	lw	ra,20(sp)
    1360:	0060f809 	jalr	v1
    1364:	00000000 	nop
    1368:	8fbf0014 	lw	ra,20(sp)
    136c:	27bd0018 	addiu	sp,sp,24
    1370:	03e00008 	jr	ra
    1374:	00000000 	nop

00001378 <DemoIk_Init>:
    1378:	27bdffe8 	addiu	sp,sp,-24
    137c:	afbf0014 	sw	ra,20(sp)
    1380:	8482001c 	lh	v0,28(a0)
    1384:	24010001 	li	at,1
    1388:	10400005 	beqz	v0,13a0 <DemoIk_Init+0x28>
    138c:	00000000 	nop
    1390:	10410003 	beq	v0,at,13a0 <DemoIk_Init+0x28>
    1394:	24010002 	li	at,2
    1398:	14410005 	bne	v0,at,13b0 <DemoIk_Init+0x38>
    139c:	00000000 	nop
    13a0:	0c000000 	jal	0 <DemoIk_Destroy>
    13a4:	00000000 	nop
    13a8:	10000004 	b	13bc <DemoIk_Init+0x44>
    13ac:	8fbf0014 	lw	ra,20(sp)
    13b0:	0c000000 	jal	0 <DemoIk_Destroy>
    13b4:	00000000 	nop
    13b8:	8fbf0014 	lw	ra,20(sp)
    13bc:	27bd0018 	addiu	sp,sp,24
    13c0:	03e00008 	jr	ra
    13c4:	00000000 	nop
	...
