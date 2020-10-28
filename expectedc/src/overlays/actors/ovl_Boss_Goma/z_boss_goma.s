
build/src/overlays/actors/ovl_Boss_Goma/z_boss_goma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80915A10>:
       0:	afa60008 	sw	a2,8(sp)
       4:	00063400 	sll	a2,a2,0x10
       8:	00063403 	sra	a2,a2,0x10
       c:	00c57021 	addu	t6,a2,a1
      10:	91cf0000 	lbu	t7,0(t6)
      14:	0006c040 	sll	t8,a2,0x1
      18:	0098c821 	addu	t9,a0,t8
      1c:	11e00002 	beqz	t7,28 <func_80915A10+0x28>
      20:	00000000 	nop
      24:	a7200000 	sh	zero,0(t9)
      28:	03e00008 	jr	ra
      2c:	00000000 	nop

00000030 <func_80915A40>:
      30:	afa60008 	sw	a2,8(sp)
      34:	00063400 	sll	a2,a2,0x10
      38:	00063403 	sra	a2,a2,0x10
      3c:	00c57021 	addu	t6,a2,a1
      40:	91cf0000 	lbu	t7,0(t6)
      44:	30d8000f 	andi	t8,a2,0xf
      48:	0018c840 	sll	t9,t8,0x1
      4c:	11e0000b 	beqz	t7,7c <func_80915A40+0x4c>
      50:	30c800f0 	andi	t0,a2,0xf0
      54:	00084880 	sll	t1,t0,0x2
      58:	03295021 	addu	t2,t9,t1
      5c:	000a5c00 	sll	t3,t2,0x10
      60:	000b6403 	sra	t4,t3,0x10
      64:	000c6840 	sll	t5,t4,0x1
      68:	008d1021 	addu	v0,a0,t5
      6c:	a4400000 	sh	zero,0(v0)
      70:	a4400002 	sh	zero,2(v0)
      74:	a4400040 	sh	zero,64(v0)
      78:	a4400042 	sh	zero,66(v0)
      7c:	03e00008 	jr	ra
      80:	00000000 	nop

00000084 <func_80915A94>:
      84:	3c020602 	lui	v0,0x602
      88:	27bdffd0 	addiu	sp,sp,-48
      8c:	244283a8 	addiu	v0,v0,-31832
      90:	afb20020 	sw	s2,32(sp)
      94:	00027100 	sll	t6,v0,0x4
      98:	3c120000 	lui	s2,0x0
      9c:	000e7f02 	srl	t7,t6,0x1c
      a0:	26520000 	addiu	s2,s2,0
      a4:	000fc080 	sll	t8,t7,0x2
      a8:	afb30024 	sw	s3,36(sp)
      ac:	0258c821 	addu	t9,s2,t8
      b0:	8f280000 	lw	t0,0(t9)
      b4:	3c1300ff 	lui	s3,0xff
      b8:	afb1001c 	sw	s1,28(sp)
      bc:	00058c00 	sll	s1,a1,0x10
      c0:	3673ffff 	ori	s3,s3,0xffff
      c4:	00118c03 	sra	s1,s1,0x10
      c8:	afb40028 	sw	s4,40(sp)
      cc:	afb00018 	sw	s0,24(sp)
      d0:	00534824 	and	t1,v0,s3
      d4:	00808025 	move	s0,a0
      d8:	3c148000 	lui	s4,0x8000
      dc:	afbf002c 	sw	ra,44(sp)
      e0:	afa50034 	sw	a1,52(sp)
      e4:	00113400 	sll	a2,s1,0x10
      e8:	01095021 	addu	t2,t0,t1
      ec:	01542021 	addu	a0,t2,s4
      f0:	00063403 	sra	a2,a2,0x10
      f4:	0c000000 	jal	0 <func_80915A10>
      f8:	02002825 	move	a1,s0
      fc:	3c020602 	lui	v0,0x602
     100:	244285a8 	addiu	v0,v0,-31320
     104:	00025900 	sll	t3,v0,0x4
     108:	000b6702 	srl	t4,t3,0x1c
     10c:	000c6880 	sll	t5,t4,0x2
     110:	024d7021 	addu	t6,s2,t5
     114:	8dcf0000 	lw	t7,0(t6)
     118:	0053c024 	and	t8,v0,s3
     11c:	00113400 	sll	a2,s1,0x10
     120:	01f8c821 	addu	t9,t7,t8
     124:	03342021 	addu	a0,t9,s4
     128:	00063403 	sra	a2,a2,0x10
     12c:	0c000000 	jal	0 <func_80915A10>
     130:	02002825 	move	a1,s0
     134:	3c020602 	lui	v0,0x602
     138:	244287a8 	addiu	v0,v0,-30808
     13c:	00024100 	sll	t0,v0,0x4
     140:	00084f02 	srl	t1,t0,0x1c
     144:	00095080 	sll	t2,t1,0x2
     148:	024a5821 	addu	t3,s2,t2
     14c:	8d6c0000 	lw	t4,0(t3)
     150:	00536824 	and	t5,v0,s3
     154:	00113400 	sll	a2,s1,0x10
     158:	018d7021 	addu	t6,t4,t5
     15c:	01d42021 	addu	a0,t6,s4
     160:	00063403 	sra	a2,a2,0x10
     164:	0c000000 	jal	0 <func_80915A10>
     168:	02002825 	move	a1,s0
     16c:	3c020602 	lui	v0,0x602
     170:	244291a8 	addiu	v0,v0,-28248
     174:	00027900 	sll	t7,v0,0x4
     178:	000fc702 	srl	t8,t7,0x1c
     17c:	0018c880 	sll	t9,t8,0x2
     180:	02594021 	addu	t0,s2,t9
     184:	8d090000 	lw	t1,0(t0)
     188:	00535024 	and	t2,v0,s3
     18c:	00113400 	sll	a2,s1,0x10
     190:	012a5821 	addu	t3,t1,t2
     194:	01742021 	addu	a0,t3,s4
     198:	00063403 	sra	a2,a2,0x10
     19c:	0c000000 	jal	0 <func_80915A10>
     1a0:	02002825 	move	a1,s0
     1a4:	3c020602 	lui	v0,0x602
     1a8:	244289a8 	addiu	v0,v0,-30296
     1ac:	00026100 	sll	t4,v0,0x4
     1b0:	000c6f02 	srl	t5,t4,0x1c
     1b4:	000d7080 	sll	t6,t5,0x2
     1b8:	024e7821 	addu	t7,s2,t6
     1bc:	8df80000 	lw	t8,0(t7)
     1c0:	0053c824 	and	t9,v0,s3
     1c4:	00113400 	sll	a2,s1,0x10
     1c8:	03194021 	addu	t0,t8,t9
     1cc:	01142021 	addu	a0,t0,s4
     1d0:	00063403 	sra	a2,a2,0x10
     1d4:	0c000000 	jal	0 <func_80915A10>
     1d8:	02002825 	move	a1,s0
     1dc:	3c020602 	lui	v0,0x602
     1e0:	244293a8 	addiu	v0,v0,-27736
     1e4:	00024900 	sll	t1,v0,0x4
     1e8:	00095702 	srl	t2,t1,0x1c
     1ec:	000a5880 	sll	t3,t2,0x2
     1f0:	024b6021 	addu	t4,s2,t3
     1f4:	8d8d0000 	lw	t5,0(t4)
     1f8:	00537024 	and	t6,v0,s3
     1fc:	00113400 	sll	a2,s1,0x10
     200:	01ae7821 	addu	t7,t5,t6
     204:	01f42021 	addu	a0,t7,s4
     208:	00063403 	sra	a2,a2,0x10
     20c:	0c000000 	jal	0 <func_80915A10>
     210:	02002825 	move	a1,s0
     214:	8fbf002c 	lw	ra,44(sp)
     218:	8fb00018 	lw	s0,24(sp)
     21c:	8fb1001c 	lw	s1,28(sp)
     220:	8fb20020 	lw	s2,32(sp)
     224:	8fb30024 	lw	s3,36(sp)
     228:	8fb40028 	lw	s4,40(sp)
     22c:	03e00008 	jr	ra
     230:	27bd0030 	addiu	sp,sp,48

00000234 <BossGoma_Init>:
     234:	27bdffb0 	addiu	sp,sp,-80
     238:	afb10038 	sw	s1,56(sp)
     23c:	00a08825 	move	s1,a1
     240:	afbf003c 	sw	ra,60(sp)
     244:	afb00034 	sw	s0,52(sp)
     248:	3c050000 	lui	a1,0x0
     24c:	00808025 	move	s0,a0
     250:	0c000000 	jal	0 <func_80915A10>
     254:	24a50000 	addiu	a1,a1,0
     258:	3c060000 	lui	a2,0x0
     25c:	24c60000 	addiu	a2,a2,0
     260:	260400b4 	addiu	a0,s0,180
     264:	3c05457a 	lui	a1,0x457a
     268:	0c000000 	jal	0 <func_80915A10>
     26c:	3c074316 	lui	a3,0x4316
     270:	2605014c 	addiu	a1,s0,332
     274:	3c060602 	lui	a2,0x602
     278:	3c070601 	lui	a3,0x601
     27c:	24e72678 	addiu	a3,a3,9848
     280:	24c6dcf8 	addiu	a2,a2,-8968
     284:	afa50044 	sw	a1,68(sp)
     288:	02202025 	move	a0,s1
     28c:	afa00010 	sw	zero,16(sp)
     290:	afa00014 	sw	zero,20(sp)
     294:	0c000000 	jal	0 <func_80915A10>
     298:	afa00018 	sw	zero,24(sp)
     29c:	3c050601 	lui	a1,0x601
     2a0:	24a52678 	addiu	a1,a1,9848
     2a4:	0c000000 	jal	0 <func_80915A10>
     2a8:	8fa40044 	lw	a0,68(sp)
     2ac:	3c013f80 	lui	at,0x3f80
     2b0:	44810000 	mtc1	at,$f0
     2b4:	3c01c396 	lui	at,0xc396
     2b8:	c6040024 	lwc1	$f4,36(s0)
     2bc:	c606002c 	lwc1	$f6,44(s0)
     2c0:	44814000 	mtc1	at,$f8
     2c4:	44805000 	mtc1	zero,$f10
     2c8:	240e8000 	li	t6,-32768
     2cc:	a60e00b4 	sh	t6,180(s0)
     2d0:	02002025 	move	a0,s0
     2d4:	02202825 	move	a1,s1
     2d8:	e60001f8 	swc1	$f0,504(s0)
     2dc:	e6000224 	swc1	$f0,548(s0)
     2e0:	e60401fc 	swc1	$f4,508(s0)
     2e4:	e6060200 	swc1	$f6,512(s0)
     2e8:	e6080028 	swc1	$f8,40(s0)
     2ec:	0c000000 	jal	0 <func_80915A10>
     2f0:	e60a006c 	swc1	$f10,108(s0)
     2f4:	240f000a 	li	t7,10
     2f8:	241800ff 	li	t8,255
     2fc:	a20f00af 	sb	t7,175(s0)
     300:	a21800ae 	sb	t8,174(s0)
     304:	260507bc 	addiu	a1,s0,1980
     308:	afa50044 	sw	a1,68(sp)
     30c:	0c000000 	jal	0 <func_80915A10>
     310:	02202025 	move	a0,s1
     314:	3c070000 	lui	a3,0x0
     318:	261907dc 	addiu	t9,s0,2012
     31c:	8fa50044 	lw	a1,68(sp)
     320:	afb90010 	sw	t9,16(sp)
     324:	24e70000 	addiu	a3,a3,0
     328:	02202025 	move	a0,s1
     32c:	0c000000 	jal	0 <func_80915A10>
     330:	02003025 	move	a2,s0
     334:	3c050001 	lui	a1,0x1
     338:	00b12821 	addu	a1,a1,s1
     33c:	80a51cbc 	lb	a1,7356(a1)
     340:	0c000000 	jal	0 <func_80915A10>
     344:	02202025 	move	a0,s1
     348:	50400023 	beqzl	v0,3d8 <BossGoma_Init+0x1a4>
     34c:	8fbf003c 	lw	ra,60(sp)
     350:	0c000000 	jal	0 <func_80915A10>
     354:	02002025 	move	a0,s0
     358:	44800000 	mtc1	zero,$f0
     35c:	3c01c420 	lui	at,0xc420
     360:	44818000 	mtc1	at,$f16
     364:	26241c24 	addiu	a0,s1,7204
     368:	afa40044 	sw	a0,68(sp)
     36c:	02002825 	move	a1,s0
     370:	02203025 	move	a2,s1
     374:	2407005d 	li	a3,93
     378:	afa0001c 	sw	zero,28(sp)
     37c:	afa00020 	sw	zero,32(sp)
     380:	afa00024 	sw	zero,36(sp)
     384:	afa00028 	sw	zero,40(sp)
     388:	e7a00010 	swc1	$f0,16(sp)
     38c:	e7a00018 	swc1	$f0,24(sp)
     390:	0c000000 	jal	0 <func_80915A10>
     394:	e7b00014 	swc1	$f16,20(sp)
     398:	3c01c420 	lui	at,0xc420
     39c:	44819000 	mtc1	at,$f18
     3a0:	3c01c2a8 	lui	at,0xc2a8
     3a4:	44812000 	mtc1	at,$f4
     3a8:	8fa40044 	lw	a0,68(sp)
     3ac:	02202825 	move	a1,s1
     3b0:	2406005f 	li	a2,95
     3b4:	3c07430d 	lui	a3,0x430d
     3b8:	afa00018 	sw	zero,24(sp)
     3bc:	afa0001c 	sw	zero,28(sp)
     3c0:	afa00020 	sw	zero,32(sp)
     3c4:	afa00024 	sw	zero,36(sp)
     3c8:	e7b20010 	swc1	$f18,16(sp)
     3cc:	0c000000 	jal	0 <func_80915A10>
     3d0:	e7a40014 	swc1	$f4,20(sp)
     3d4:	8fbf003c 	lw	ra,60(sp)
     3d8:	8fb00034 	lw	s0,52(sp)
     3dc:	8fb10038 	lw	s1,56(sp)
     3e0:	03e00008 	jr	ra
     3e4:	27bd0050 	addiu	sp,sp,80

000003e8 <func_80915DF8>:
     3e8:	27bdffc8 	addiu	sp,sp,-56
     3ec:	afb0002c 	sw	s0,44(sp)
     3f0:	00068400 	sll	s0,a2,0x10
     3f4:	00108403 	sra	s0,s0,0x10
     3f8:	afb10030 	sw	s1,48(sp)
     3fc:	00808825 	move	s1,a0
     400:	afbf0034 	sw	ra,52(sp)
     404:	afa5003c 	sw	a1,60(sp)
     408:	afa60040 	sw	a2,64(sp)
     40c:	12000005 	beqz	s0,424 <func_80915DF8+0x3c>
     410:	afa70044 	sw	a3,68(sp)
     414:	24010001 	li	at,1
     418:	12010002 	beq	s0,at,424 <func_80915DF8+0x3c>
     41c:	24010003 	li	at,3
     420:	16010010 	bne	s0,at,464 <func_80915DF8+0x7c>
     424:	3c014100 	lui	at,0x4100
     428:	44812000 	mtc1	at,$f4
     42c:	87ae0046 	lh	t6,70(sp)
     430:	240f01f4 	li	t7,500
     434:	2418000a 	li	t8,10
     438:	24190001 	li	t9,1
     43c:	afb90020 	sw	t9,32(sp)
     440:	afb8001c 	sw	t8,28(sp)
     444:	afaf0018 	sw	t7,24(sp)
     448:	8fa4003c 	lw	a0,60(sp)
     44c:	02202825 	move	a1,s1
     450:	26260278 	addiu	a2,s1,632
     454:	3c0741c8 	lui	a3,0x41c8
     458:	afae0010 	sw	t6,16(sp)
     45c:	0c000000 	jal	0 <func_80915A10>
     460:	e7a40014 	swc1	$f4,20(sp)
     464:	12000004 	beqz	s0,478 <func_80915DF8+0x90>
     468:	24010002 	li	at,2
     46c:	12010002 	beq	s0,at,478 <func_80915DF8+0x90>
     470:	24010003 	li	at,3
     474:	16010010 	bne	s0,at,4b8 <func_80915DF8+0xd0>
     478:	3c014100 	lui	at,0x4100
     47c:	44813000 	mtc1	at,$f6
     480:	87a80046 	lh	t0,70(sp)
     484:	240901f4 	li	t1,500
     488:	240a000a 	li	t2,10
     48c:	240b0001 	li	t3,1
     490:	afab0020 	sw	t3,32(sp)
     494:	afaa001c 	sw	t2,28(sp)
     498:	afa90018 	sw	t1,24(sp)
     49c:	8fa4003c 	lw	a0,60(sp)
     4a0:	02202825 	move	a1,s1
     4a4:	26260284 	addiu	a2,s1,644
     4a8:	3c0741c8 	lui	a3,0x41c8
     4ac:	afa80010 	sw	t0,16(sp)
     4b0:	0c000000 	jal	0 <func_80915A10>
     4b4:	e7a60014 	swc1	$f6,20(sp)
     4b8:	16000006 	bnez	s0,4d4 <func_80915DF8+0xec>
     4bc:	02202025 	move	a0,s1
     4c0:	02202025 	move	a0,s1
     4c4:	0c000000 	jal	0 <func_80915A10>
     4c8:	2405380d 	li	a1,14349
     4cc:	10000004 	b	4e0 <func_80915DF8+0xf8>
     4d0:	8fbf0034 	lw	ra,52(sp)
     4d4:	0c000000 	jal	0 <func_80915A10>
     4d8:	2405380a 	li	a1,14346
     4dc:	8fbf0034 	lw	ra,52(sp)
     4e0:	8fb0002c 	lw	s0,44(sp)
     4e4:	8fb10030 	lw	s1,48(sp)
     4e8:	03e00008 	jr	ra
     4ec:	27bd0038 	addiu	sp,sp,56

000004f0 <BossGoma_Destroy>:
     4f0:	27bdffe8 	addiu	sp,sp,-24
     4f4:	afbf0014 	sw	ra,20(sp)
     4f8:	afa40018 	sw	a0,24(sp)
     4fc:	afa5001c 	sw	a1,28(sp)
     500:	0c000000 	jal	0 <func_80915A10>
     504:	2484014c 	addiu	a0,a0,332
     508:	8fa50018 	lw	a1,24(sp)
     50c:	8fa4001c 	lw	a0,28(sp)
     510:	0c000000 	jal	0 <func_80915A10>
     514:	24a507bc 	addiu	a1,a1,1980
     518:	8fbf0014 	lw	ra,20(sp)
     51c:	27bd0018 	addiu	sp,sp,24
     520:	03e00008 	jr	ra
     524:	00000000 	nop

00000528 <func_80915F38>:
     528:	27bdffd0 	addiu	sp,sp,-48
     52c:	afb00028 	sw	s0,40(sp)
     530:	00808025 	move	s0,a0
     534:	afbf002c 	sw	ra,44(sp)
     538:	3c040601 	lui	a0,0x601
     53c:	afa50034 	sw	a1,52(sp)
     540:	0c000000 	jal	0 <func_80915A10>
     544:	2484b2fc 	addiu	a0,a0,-19716
     548:	44822000 	mtc1	v0,$f4
     54c:	3c01c000 	lui	at,0xc000
     550:	44814000 	mtc1	at,$f8
     554:	468021a0 	cvt.s.w	$f6,$f4
     558:	3c050601 	lui	a1,0x601
     55c:	240e0002 	li	t6,2
     560:	afae0014 	sw	t6,20(sp)
     564:	24a5b2fc 	addiu	a1,a1,-19716
     568:	2604014c 	addiu	a0,s0,332
     56c:	e7a60010 	swc1	$f6,16(sp)
     570:	3c063f80 	lui	a2,0x3f80
     574:	24070000 	li	a3,0
     578:	0c000000 	jal	0 <func_80915A10>
     57c:	e7a80018 	swc1	$f8,24(sp)
     580:	8e080004 	lw	t0,4(s0)
     584:	44800000 	mtc1	zero,$f0
     588:	3c0f0000 	lui	t7,0x0
     58c:	2401fffa 	li	at,-6
     590:	25ef0000 	addiu	t7,t7,0
     594:	24180001 	li	t8,1
     598:	241904b0 	li	t9,1200
     59c:	3c041001 	lui	a0,0x1001
     5a0:	01014824 	and	t1,t0,at
     5a4:	ae0f0190 	sw	t7,400(s0)
     5a8:	a61801be 	sh	t8,446(s0)
     5ac:	a60001c0 	sh	zero,448(s0)
     5b0:	a60001c2 	sh	zero,450(s0)
     5b4:	a61901d2 	sh	t9,466(s0)
     5b8:	a60001d0 	sh	zero,464(s0)
     5bc:	ae090004 	sw	t1,4(s0)
     5c0:	348400ff 	ori	a0,a0,0xff
     5c4:	e6000068 	swc1	$f0,104(s0)
     5c8:	0c000000 	jal	0 <func_80915A10>
     5cc:	e60000c4 	swc1	$f0,196(s0)
     5d0:	02002025 	move	a0,s0
     5d4:	0c000000 	jal	0 <func_80915A10>
     5d8:	24053812 	li	a1,14354
     5dc:	8fbf002c 	lw	ra,44(sp)
     5e0:	8fb00028 	lw	s0,40(sp)
     5e4:	27bd0030 	addiu	sp,sp,48
     5e8:	03e00008 	jr	ra
     5ec:	00000000 	nop

000005f0 <func_80916000>:
     5f0:	27bdffd8 	addiu	sp,sp,-40
     5f4:	afa40028 	sw	a0,40(sp)
     5f8:	afbf0024 	sw	ra,36(sp)
     5fc:	3c040600 	lui	a0,0x600
     600:	afa5002c 	sw	a1,44(sp)
     604:	0c000000 	jal	0 <func_80915A10>
     608:	24842360 	addiu	a0,a0,9056
     60c:	44822000 	mtc1	v0,$f4
     610:	3c01c170 	lui	at,0xc170
     614:	8fa30028 	lw	v1,40(sp)
     618:	468021a0 	cvt.s.w	$f6,$f4
     61c:	44814000 	mtc1	at,$f8
     620:	3c050600 	lui	a1,0x600
     624:	24a52360 	addiu	a1,a1,9056
     628:	3c063f80 	lui	a2,0x3f80
     62c:	24070000 	li	a3,0
     630:	e7a60010 	swc1	$f6,16(sp)
     634:	afa00014 	sw	zero,20(sp)
     638:	2464014c 	addiu	a0,v1,332
     63c:	0c000000 	jal	0 <func_80915A10>
     640:	e7a80018 	swc1	$f8,24(sp)
     644:	8fa2002c 	lw	v0,44(sp)
     648:	8fa30028 	lw	v1,40(sp)
     64c:	3c0e0000 	lui	t6,0x0
     650:	25ce0000 	addiu	t6,t6,0
     654:	240f0001 	li	t7,1
     658:	3c010001 	lui	at,0x1
     65c:	24180004 	li	t8,4
     660:	00220821 	addu	at,at,v0
     664:	ac6e0190 	sw	t6,400(v1)
     668:	a46001d0 	sh	zero,464(v1)
     66c:	a46f01be 	sh	t7,446(v1)
     670:	a0380ae3 	sb	t8,2787(at)
     674:	3c010001 	lui	at,0x1
     678:	241900ff 	li	t9,255
     67c:	00220821 	addu	at,at,v0
     680:	a4390afa 	sh	t9,2810(at)
     684:	8fbf0024 	lw	ra,36(sp)
     688:	27bd0028 	addiu	sp,sp,40
     68c:	03e00008 	jr	ra
     690:	00000000 	nop

00000694 <func_809160A4>:
     694:	27bdffd0 	addiu	sp,sp,-48
     698:	afa40030 	sw	a0,48(sp)
     69c:	afbf0024 	sw	ra,36(sp)
     6a0:	3c040601 	lui	a0,0x601
     6a4:	0c000000 	jal	0 <func_80915A10>
     6a8:	24842678 	addiu	a0,a0,9848
     6ac:	44822000 	mtc1	v0,$f4
     6b0:	24040014 	li	a0,20
     6b4:	2405001e 	li	a1,30
     6b8:	468021a0 	cvt.s.w	$f6,$f4
     6bc:	0c000000 	jal	0 <func_80915A10>
     6c0:	e7a6002c 	swc1	$f6,44(sp)
     6c4:	8fa30030 	lw	v1,48(sp)
     6c8:	3c01c0a0 	lui	at,0xc0a0
     6cc:	44815000 	mtc1	at,$f10
     6d0:	a46201d2 	sh	v0,466(v1)
     6d4:	c7a8002c 	lwc1	$f8,44(sp)
     6d8:	3c050601 	lui	a1,0x601
     6dc:	24a52678 	addiu	a1,a1,9848
     6e0:	afa00014 	sw	zero,20(sp)
     6e4:	3c063f80 	lui	a2,0x3f80
     6e8:	24070000 	li	a3,0
     6ec:	2464014c 	addiu	a0,v1,332
     6f0:	e7aa0018 	swc1	$f10,24(sp)
     6f4:	0c000000 	jal	0 <func_80915A10>
     6f8:	e7a80010 	swc1	$f8,16(sp)
     6fc:	8faf0030 	lw	t7,48(sp)
     700:	3c0e0000 	lui	t6,0x0
     704:	25ce0000 	addiu	t6,t6,0
     708:	adee0190 	sw	t6,400(t7)
     70c:	8fbf0024 	lw	ra,36(sp)
     710:	27bd0030 	addiu	sp,sp,48
     714:	03e00008 	jr	ra
     718:	00000000 	nop

0000071c <func_8091612C>:
     71c:	27bdffd8 	addiu	sp,sp,-40
     720:	afbf0024 	sw	ra,36(sp)
     724:	afa40028 	sw	a0,40(sp)
     728:	24040014 	li	a0,20
     72c:	0c000000 	jal	0 <func_80915A10>
     730:	2405001e 	li	a1,30
     734:	8fae0028 	lw	t6,40(sp)
     738:	3c040600 	lui	a0,0x600
     73c:	2484193c 	addiu	a0,a0,6460
     740:	0c000000 	jal	0 <func_80915A10>
     744:	a5c201d2 	sh	v0,466(t6)
     748:	44822000 	mtc1	v0,$f4
     74c:	3c01c0a0 	lui	at,0xc0a0
     750:	44814000 	mtc1	at,$f8
     754:	468021a0 	cvt.s.w	$f6,$f4
     758:	8fa40028 	lw	a0,40(sp)
     75c:	3c050600 	lui	a1,0x600
     760:	24a5193c 	addiu	a1,a1,6460
     764:	3c063f80 	lui	a2,0x3f80
     768:	24070000 	li	a3,0
     76c:	e7a60010 	swc1	$f6,16(sp)
     770:	afa00014 	sw	zero,20(sp)
     774:	e7a80018 	swc1	$f8,24(sp)
     778:	0c000000 	jal	0 <func_80915A10>
     77c:	2484014c 	addiu	a0,a0,332
     780:	8fb80028 	lw	t8,40(sp)
     784:	3c0f0000 	lui	t7,0x0
     788:	25ef0000 	addiu	t7,t7,0
     78c:	af0f0190 	sw	t7,400(t8)
     790:	8fbf0024 	lw	ra,36(sp)
     794:	27bd0028 	addiu	sp,sp,40
     798:	03e00008 	jr	ra
     79c:	00000000 	nop

000007a0 <func_809161B0>:
     7a0:	44800000 	mtc1	zero,$f0
     7a4:	27bdffd0 	addiu	sp,sp,-48
     7a8:	3c01c0a0 	lui	at,0xc0a0
     7ac:	44812000 	mtc1	at,$f4
     7b0:	afb00028 	sw	s0,40(sp)
     7b4:	00808025 	move	s0,a0
     7b8:	afbf002c 	sw	ra,44(sp)
     7bc:	3c050600 	lui	a1,0x600
     7c0:	240e0002 	li	t6,2
     7c4:	44070000 	mfc1	a3,$f0
     7c8:	afae0014 	sw	t6,20(sp)
     7cc:	24a55f28 	addiu	a1,a1,24360
     7d0:	2484014c 	addiu	a0,a0,332
     7d4:	3c063f80 	lui	a2,0x3f80
     7d8:	e7a00010 	swc1	$f0,16(sp)
     7dc:	0c000000 	jal	0 <func_80915A10>
     7e0:	e7a40018 	swc1	$f4,24(sp)
     7e4:	44800000 	mtc1	zero,$f0
     7e8:	3c01c000 	lui	at,0xc000
     7ec:	44813000 	mtc1	at,$f6
     7f0:	3c0f0000 	lui	t7,0x0
     7f4:	25ef0000 	addiu	t7,t7,0
     7f8:	ae0f0190 	sw	t7,400(s0)
     7fc:	e6000068 	swc1	$f0,104(s0)
     800:	e6000060 	swc1	$f0,96(s0)
     804:	e606006c 	swc1	$f6,108(s0)
     808:	8fbf002c 	lw	ra,44(sp)
     80c:	8fb00028 	lw	s0,40(sp)
     810:	27bd0030 	addiu	sp,sp,48
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <func_8091622C>:
     81c:	44800000 	mtc1	zero,$f0
     820:	27bdffd0 	addiu	sp,sp,-48
     824:	3c01c0a0 	lui	at,0xc0a0
     828:	44812000 	mtc1	at,$f4
     82c:	afb00028 	sw	s0,40(sp)
     830:	00808025 	move	s0,a0
     834:	afbf002c 	sw	ra,44(sp)
     838:	3c050600 	lui	a1,0x600
     83c:	240e0002 	li	t6,2
     840:	44070000 	mfc1	a3,$f0
     844:	afae0014 	sw	t6,20(sp)
     848:	24a558c0 	addiu	a1,a1,22720
     84c:	2484014c 	addiu	a0,a0,332
     850:	3c063f80 	lui	a2,0x3f80
     854:	e7a00010 	swc1	$f0,16(sp)
     858:	0c000000 	jal	0 <func_80915A10>
     85c:	e7a40018 	swc1	$f4,24(sp)
     860:	44800000 	mtc1	zero,$f0
     864:	3c01c000 	lui	at,0xc000
     868:	44813000 	mtc1	at,$f6
     86c:	3c0f0000 	lui	t7,0x0
     870:	25ef0000 	addiu	t7,t7,0
     874:	ae0f0190 	sw	t7,400(s0)
     878:	e6000068 	swc1	$f0,104(s0)
     87c:	e6000060 	swc1	$f0,96(s0)
     880:	e606006c 	swc1	$f6,108(s0)
     884:	8fbf002c 	lw	ra,44(sp)
     888:	8fb00028 	lw	s0,40(sp)
     88c:	27bd0030 	addiu	sp,sp,48
     890:	03e00008 	jr	ra
     894:	00000000 	nop

00000898 <func_809162A8>:
     898:	27bdffd8 	addiu	sp,sp,-40
     89c:	afa40028 	sw	a0,40(sp)
     8a0:	afbf0024 	sw	ra,36(sp)
     8a4:	3c040601 	lui	a0,0x601
     8a8:	0c000000 	jal	0 <func_80915A10>
     8ac:	248413bc 	addiu	a0,a0,5052
     8b0:	44822000 	mtc1	v0,$f4
     8b4:	3c01c170 	lui	at,0xc170
     8b8:	44814000 	mtc1	at,$f8
     8bc:	468021a0 	cvt.s.w	$f6,$f4
     8c0:	8fa40028 	lw	a0,40(sp)
     8c4:	3c050601 	lui	a1,0x601
     8c8:	24a513bc 	addiu	a1,a1,5052
     8cc:	3c063f80 	lui	a2,0x3f80
     8d0:	24070000 	li	a3,0
     8d4:	e7a60010 	swc1	$f6,16(sp)
     8d8:	afa00014 	sw	zero,20(sp)
     8dc:	e7a80018 	swc1	$f8,24(sp)
     8e0:	0c000000 	jal	0 <func_80915A10>
     8e4:	2484014c 	addiu	a0,a0,332
     8e8:	8fa20028 	lw	v0,40(sp)
     8ec:	3c0e0000 	lui	t6,0x0
     8f0:	25ce0000 	addiu	t6,t6,0
     8f4:	ac4e0190 	sw	t6,400(v0)
     8f8:	a44001b2 	sh	zero,434(v0)
     8fc:	8fbf0024 	lw	ra,36(sp)
     900:	27bd0028 	addiu	sp,sp,40
     904:	03e00008 	jr	ra
     908:	00000000 	nop

0000090c <func_8091631C>:
     90c:	27bdffd8 	addiu	sp,sp,-40
     910:	afa40028 	sw	a0,40(sp)
     914:	afbf0024 	sw	ra,36(sp)
     918:	3c040600 	lui	a0,0x600
     91c:	0c000000 	jal	0 <func_80915A10>
     920:	248429f0 	addiu	a0,a0,10736
     924:	44822000 	mtc1	v0,$f4
     928:	3c01c120 	lui	at,0xc120
     92c:	44814000 	mtc1	at,$f8
     930:	468021a0 	cvt.s.w	$f6,$f4
     934:	8fa40028 	lw	a0,40(sp)
     938:	3c050600 	lui	a1,0x600
     93c:	24a529f0 	addiu	a1,a1,10736
     940:	3c063f80 	lui	a2,0x3f80
     944:	24070000 	li	a3,0
     948:	e7a60010 	swc1	$f6,16(sp)
     94c:	afa00014 	sw	zero,20(sp)
     950:	e7a80018 	swc1	$f8,24(sp)
     954:	0c000000 	jal	0 <func_80915A10>
     958:	2484014c 	addiu	a0,a0,332
     95c:	8fa20028 	lw	v0,40(sp)
     960:	3c0e0000 	lui	t6,0x0
     964:	25ce0000 	addiu	t6,t6,0
     968:	240f0046 	li	t7,70
     96c:	ac4e0190 	sw	t6,400(v0)
     970:	a44f01d2 	sh	t7,466(v0)
     974:	8fbf0024 	lw	ra,36(sp)
     978:	27bd0028 	addiu	sp,sp,40
     97c:	03e00008 	jr	ra
     980:	00000000 	nop

00000984 <func_80916394>:
     984:	27bdffd0 	addiu	sp,sp,-48
     988:	afb00028 	sw	s0,40(sp)
     98c:	00808025 	move	s0,a0
     990:	afbf002c 	sw	ra,44(sp)
     994:	3c040600 	lui	a0,0x600
     998:	0c000000 	jal	0 <func_80915A10>
     99c:	248466dc 	addiu	a0,a0,26332
     9a0:	44822000 	mtc1	v0,$f4
     9a4:	44800000 	mtc1	zero,$f0
     9a8:	3c01c120 	lui	at,0xc120
     9ac:	468021a0 	cvt.s.w	$f6,$f4
     9b0:	44814000 	mtc1	at,$f8
     9b4:	3c050600 	lui	a1,0x600
     9b8:	44070000 	mfc1	a3,$f0
     9bc:	24a566dc 	addiu	a1,a1,26332
     9c0:	2604014c 	addiu	a0,s0,332
     9c4:	e7a60010 	swc1	$f6,16(sp)
     9c8:	3c063f80 	lui	a2,0x3f80
     9cc:	afa00014 	sw	zero,20(sp)
     9d0:	0c000000 	jal	0 <func_80915A10>
     9d4:	e7a80018 	swc1	$f8,24(sp)
     9d8:	44800000 	mtc1	zero,$f0
     9dc:	3c0e0000 	lui	t6,0x0
     9e0:	25ce0000 	addiu	t6,t6,0
     9e4:	ae0e0190 	sw	t6,400(s0)
     9e8:	e6000068 	swc1	$f0,104(s0)
     9ec:	e6000060 	swc1	$f0,96(s0)
     9f0:	e600006c 	swc1	$f0,108(s0)
     9f4:	8fbf002c 	lw	ra,44(sp)
     9f8:	8fb00028 	lw	s0,40(sp)
     9fc:	27bd0030 	addiu	sp,sp,48
     a00:	03e00008 	jr	ra
     a04:	00000000 	nop

00000a08 <func_80916418>:
     a08:	27bdffd0 	addiu	sp,sp,-48
     a0c:	afb00028 	sw	s0,40(sp)
     a10:	00808025 	move	s0,a0
     a14:	afbf002c 	sw	ra,44(sp)
     a18:	3c040600 	lui	a0,0x600
     a1c:	0c000000 	jal	0 <func_80915A10>
     a20:	24842360 	addiu	a0,a0,9056
     a24:	44822000 	mtc1	v0,$f4
     a28:	44800000 	mtc1	zero,$f0
     a2c:	3c01c0a0 	lui	at,0xc0a0
     a30:	468021a0 	cvt.s.w	$f6,$f4
     a34:	44814000 	mtc1	at,$f8
     a38:	3c050600 	lui	a1,0x600
     a3c:	44070000 	mfc1	a3,$f0
     a40:	24a52360 	addiu	a1,a1,9056
     a44:	2604014c 	addiu	a0,s0,332
     a48:	e7a60010 	swc1	$f6,16(sp)
     a4c:	3c063f80 	lui	a2,0x3f80
     a50:	afa00014 	sw	zero,20(sp)
     a54:	0c000000 	jal	0 <func_80915A10>
     a58:	e7a80018 	swc1	$f8,24(sp)
     a5c:	44800000 	mtc1	zero,$f0
     a60:	3c0e0000 	lui	t6,0x0
     a64:	25ce0000 	addiu	t6,t6,0
     a68:	ae0e0190 	sw	t6,400(s0)
     a6c:	2404001e 	li	a0,30
     a70:	2405003c 	li	a1,60
     a74:	e6000068 	swc1	$f0,104(s0)
     a78:	e6000060 	swc1	$f0,96(s0)
     a7c:	0c000000 	jal	0 <func_80915A10>
     a80:	e600006c 	swc1	$f0,108(s0)
     a84:	a60201d2 	sh	v0,466(s0)
     a88:	8fbf002c 	lw	ra,44(sp)
     a8c:	8fb00028 	lw	s0,40(sp)
     a90:	27bd0030 	addiu	sp,sp,48
     a94:	03e00008 	jr	ra
     a98:	00000000 	nop

00000a9c <func_809164AC>:
     a9c:	27bdffd8 	addiu	sp,sp,-40
     aa0:	afa40028 	sw	a0,40(sp)
     aa4:	afbf0024 	sw	ra,36(sp)
     aa8:	3c040602 	lui	a0,0x602
     aac:	0c000000 	jal	0 <func_80915A10>
     ab0:	2484eb4c 	addiu	a0,a0,-5300
     ab4:	44822000 	mtc1	v0,$f4
     ab8:	3c01c0a0 	lui	at,0xc0a0
     abc:	44814000 	mtc1	at,$f8
     ac0:	468021a0 	cvt.s.w	$f6,$f4
     ac4:	8fa40028 	lw	a0,40(sp)
     ac8:	3c050602 	lui	a1,0x602
     acc:	24a5eb4c 	addiu	a1,a1,-5300
     ad0:	3c063f80 	lui	a2,0x3f80
     ad4:	24070000 	li	a3,0
     ad8:	e7a60010 	swc1	$f6,16(sp)
     adc:	afa00014 	sw	zero,20(sp)
     ae0:	e7a80018 	swc1	$f8,24(sp)
     ae4:	0c000000 	jal	0 <func_80915A10>
     ae8:	2484014c 	addiu	a0,a0,332
     aec:	8faf0028 	lw	t7,40(sp)
     af0:	3c0e0000 	lui	t6,0x0
     af4:	25ce0000 	addiu	t6,t6,0
     af8:	24040046 	li	a0,70
     afc:	2405006e 	li	a1,110
     b00:	0c000000 	jal	0 <func_80915A10>
     b04:	adee0190 	sw	t6,400(t7)
     b08:	8fb80028 	lw	t8,40(sp)
     b0c:	a70201d2 	sh	v0,466(t8)
     b10:	8fbf0024 	lw	ra,36(sp)
     b14:	27bd0028 	addiu	sp,sp,40
     b18:	03e00008 	jr	ra
     b1c:	00000000 	nop

00000b20 <func_80916530>:
     b20:	27bdffd8 	addiu	sp,sp,-40
     b24:	afa40028 	sw	a0,40(sp)
     b28:	afbf0024 	sw	ra,36(sp)
     b2c:	3c040600 	lui	a0,0x600
     b30:	0c000000 	jal	0 <func_80915A10>
     b34:	24845f28 	addiu	a0,a0,24360
     b38:	44822000 	mtc1	v0,$f4
     b3c:	3c01c000 	lui	at,0xc000
     b40:	44814000 	mtc1	at,$f8
     b44:	468021a0 	cvt.s.w	$f6,$f4
     b48:	8fa40028 	lw	a0,40(sp)
     b4c:	3c050600 	lui	a1,0x600
     b50:	240e0002 	li	t6,2
     b54:	afae0014 	sw	t6,20(sp)
     b58:	24a55f28 	addiu	a1,a1,24360
     b5c:	e7a60010 	swc1	$f6,16(sp)
     b60:	3c063f80 	lui	a2,0x3f80
     b64:	24070000 	li	a3,0
     b68:	e7a80018 	swc1	$f8,24(sp)
     b6c:	0c000000 	jal	0 <func_80915A10>
     b70:	2484014c 	addiu	a0,a0,332
     b74:	8fb80028 	lw	t8,40(sp)
     b78:	3c0f0000 	lui	t7,0x0
     b7c:	25ef0000 	addiu	t7,t7,0
     b80:	3c040600 	lui	a0,0x600
     b84:	24845f28 	addiu	a0,a0,24360
     b88:	0c000000 	jal	0 <func_80915A10>
     b8c:	af0f0190 	sw	t7,400(t8)
     b90:	44825000 	mtc1	v0,$f10
     b94:	8fb90028 	lw	t9,40(sp)
     b98:	46805420 	cvt.s.w	$f16,$f10
     b9c:	e730021c 	swc1	$f16,540(t9)
     ba0:	8fbf0024 	lw	ra,36(sp)
     ba4:	27bd0028 	addiu	sp,sp,40
     ba8:	03e00008 	jr	ra
     bac:	00000000 	nop

00000bb0 <func_809165C0>:
     bb0:	27bdffd8 	addiu	sp,sp,-40
     bb4:	afa40028 	sw	a0,40(sp)
     bb8:	afbf0024 	sw	ra,36(sp)
     bbc:	3c040600 	lui	a0,0x600
     bc0:	0c000000 	jal	0 <func_80915A10>
     bc4:	248458c0 	addiu	a0,a0,22720
     bc8:	44822000 	mtc1	v0,$f4
     bcc:	3c01c000 	lui	at,0xc000
     bd0:	44814000 	mtc1	at,$f8
     bd4:	468021a0 	cvt.s.w	$f6,$f4
     bd8:	8fa40028 	lw	a0,40(sp)
     bdc:	3c050600 	lui	a1,0x600
     be0:	240e0002 	li	t6,2
     be4:	afae0014 	sw	t6,20(sp)
     be8:	24a558c0 	addiu	a1,a1,22720
     bec:	e7a60010 	swc1	$f6,16(sp)
     bf0:	3c063f80 	lui	a2,0x3f80
     bf4:	24070000 	li	a3,0
     bf8:	e7a80018 	swc1	$f8,24(sp)
     bfc:	0c000000 	jal	0 <func_80915A10>
     c00:	2484014c 	addiu	a0,a0,332
     c04:	3c040600 	lui	a0,0x600
     c08:	0c000000 	jal	0 <func_80915A10>
     c0c:	248458c0 	addiu	a0,a0,22720
     c10:	44825000 	mtc1	v0,$f10
     c14:	8fa30028 	lw	v1,40(sp)
     c18:	3c0f0000 	lui	t7,0x0
     c1c:	46805420 	cvt.s.w	$f16,$f10
     c20:	25ef0000 	addiu	t7,t7,0
     c24:	3c040600 	lui	a0,0x600
     c28:	248458c0 	addiu	a0,a0,22720
     c2c:	ac6f0190 	sw	t7,400(v1)
     c30:	0c000000 	jal	0 <func_80915A10>
     c34:	e470021c 	swc1	$f16,540(v1)
     c38:	44829000 	mtc1	v0,$f18
     c3c:	8fb80028 	lw	t8,40(sp)
     c40:	46809120 	cvt.s.w	$f4,$f18
     c44:	e704021c 	swc1	$f4,540(t8)
     c48:	8fbf0024 	lw	ra,36(sp)
     c4c:	27bd0028 	addiu	sp,sp,40
     c50:	03e00008 	jr	ra
     c54:	00000000 	nop

00000c58 <func_80916668>:
     c58:	27bdffd8 	addiu	sp,sp,-40
     c5c:	afa40028 	sw	a0,40(sp)
     c60:	afbf0024 	sw	ra,36(sp)
     c64:	3c040601 	lui	a0,0x601
     c68:	0c000000 	jal	0 <func_80915A10>
     c6c:	2484ccd8 	addiu	a0,a0,-13096
     c70:	44822000 	mtc1	v0,$f4
     c74:	3c01c000 	lui	at,0xc000
     c78:	44814000 	mtc1	at,$f8
     c7c:	468021a0 	cvt.s.w	$f6,$f4
     c80:	8fa40028 	lw	a0,40(sp)
     c84:	3c050601 	lui	a1,0x601
     c88:	24a5ccd8 	addiu	a1,a1,-13096
     c8c:	3c063f80 	lui	a2,0x3f80
     c90:	24070000 	li	a3,0
     c94:	e7a60010 	swc1	$f6,16(sp)
     c98:	afa00014 	sw	zero,20(sp)
     c9c:	e7a80018 	swc1	$f8,24(sp)
     ca0:	0c000000 	jal	0 <func_80915A10>
     ca4:	2484014c 	addiu	a0,a0,332
     ca8:	8faf0028 	lw	t7,40(sp)
     cac:	3c0e0000 	lui	t6,0x0
     cb0:	25ce0000 	addiu	t6,t6,0
     cb4:	adee0190 	sw	t6,400(t7)
     cb8:	8fbf0024 	lw	ra,36(sp)
     cbc:	27bd0028 	addiu	sp,sp,40
     cc0:	03e00008 	jr	ra
     cc4:	00000000 	nop

00000cc8 <func_809166D8>:
     cc8:	27bdffd8 	addiu	sp,sp,-40
     ccc:	afa40028 	sw	a0,40(sp)
     cd0:	afbf0024 	sw	ra,36(sp)
     cd4:	3c040601 	lui	a0,0x601
     cd8:	0c000000 	jal	0 <func_80915A10>
     cdc:	2484c468 	addiu	a0,a0,-15256
     ce0:	44822000 	mtc1	v0,$f4
     ce4:	3c01c120 	lui	at,0xc120
     ce8:	44814000 	mtc1	at,$f8
     cec:	468021a0 	cvt.s.w	$f6,$f4
     cf0:	8fa40028 	lw	a0,40(sp)
     cf4:	3c050601 	lui	a1,0x601
     cf8:	240e0002 	li	t6,2
     cfc:	afae0014 	sw	t6,20(sp)
     d00:	24a5c468 	addiu	a1,a1,-15256
     d04:	e7a60010 	swc1	$f6,16(sp)
     d08:	3c063f80 	lui	a2,0x3f80
     d0c:	24070000 	li	a3,0
     d10:	e7a80018 	swc1	$f8,24(sp)
     d14:	0c000000 	jal	0 <func_80915A10>
     d18:	2484014c 	addiu	a0,a0,332
     d1c:	8fb80028 	lw	t8,40(sp)
     d20:	3c0f0000 	lui	t7,0x0
     d24:	25ef0000 	addiu	t7,t7,0
     d28:	af0f0190 	sw	t7,400(t8)
     d2c:	8fbf0024 	lw	ra,36(sp)
     d30:	27bd0028 	addiu	sp,sp,40
     d34:	03e00008 	jr	ra
     d38:	00000000 	nop

00000d3c <func_8091674C>:
     d3c:	27bdffd8 	addiu	sp,sp,-40
     d40:	afa40028 	sw	a0,40(sp)
     d44:	afbf0024 	sw	ra,36(sp)
     d48:	3c040600 	lui	a0,0x600
     d4c:	0c000000 	jal	0 <func_80915A10>
     d50:	24840ae8 	addiu	a0,a0,2792
     d54:	44822000 	mtc1	v0,$f4
     d58:	3c01c120 	lui	at,0xc120
     d5c:	44814000 	mtc1	at,$f8
     d60:	468021a0 	cvt.s.w	$f6,$f4
     d64:	8fa40028 	lw	a0,40(sp)
     d68:	3c050600 	lui	a1,0x600
     d6c:	24a50ae8 	addiu	a1,a1,2792
     d70:	3c063f80 	lui	a2,0x3f80
     d74:	24070000 	li	a3,0
     d78:	e7a60010 	swc1	$f6,16(sp)
     d7c:	afa00014 	sw	zero,20(sp)
     d80:	e7a80018 	swc1	$f8,24(sp)
     d84:	0c000000 	jal	0 <func_80915A10>
     d88:	2484014c 	addiu	a0,a0,332
     d8c:	8fa20028 	lw	v0,40(sp)
     d90:	3c0e0000 	lui	t6,0x0
     d94:	25ce0000 	addiu	t6,t6,0
     d98:	ac4e0190 	sw	t6,400(v0)
     d9c:	a44001d2 	sh	zero,466(v0)
     da0:	8fbf0024 	lw	ra,36(sp)
     da4:	27bd0028 	addiu	sp,sp,40
     da8:	03e00008 	jr	ra
     dac:	00000000 	nop

00000db0 <func_809167C0>:
     db0:	27bdffd8 	addiu	sp,sp,-40
     db4:	afa40028 	sw	a0,40(sp)
     db8:	afbf0024 	sw	ra,36(sp)
     dbc:	3c040600 	lui	a0,0x600
     dc0:	0c000000 	jal	0 <func_80915A10>
     dc4:	24844318 	addiu	a0,a0,17176
     dc8:	44822000 	mtc1	v0,$f4
     dcc:	3c01c120 	lui	at,0xc120
     dd0:	44814000 	mtc1	at,$f8
     dd4:	468021a0 	cvt.s.w	$f6,$f4
     dd8:	8fa30028 	lw	v1,40(sp)
     ddc:	3c050600 	lui	a1,0x600
     de0:	240e0002 	li	t6,2
     de4:	afae0014 	sw	t6,20(sp)
     de8:	24a54318 	addiu	a1,a1,17176
     dec:	e7a60010 	swc1	$f6,16(sp)
     df0:	3c063f80 	lui	a2,0x3f80
     df4:	24070000 	li	a3,0
     df8:	e7a80018 	swc1	$f8,24(sp)
     dfc:	0c000000 	jal	0 <func_80915A10>
     e00:	2464014c 	addiu	a0,v1,332
     e04:	8fa30028 	lw	v1,40(sp)
     e08:	3c0f0000 	lui	t7,0x0
     e0c:	25ef0000 	addiu	t7,t7,0
     e10:	ac6f0190 	sw	t7,400(v1)
     e14:	a46001d0 	sh	zero,464(v1)
     e18:	a46001d2 	sh	zero,466(v1)
     e1c:	8fbf0024 	lw	ra,36(sp)
     e20:	27bd0028 	addiu	sp,sp,40
     e24:	03e00008 	jr	ra
     e28:	00000000 	nop

00000e2c <func_8091683C>:
     e2c:	27bdffd8 	addiu	sp,sp,-40
     e30:	afa40028 	sw	a0,40(sp)
     e34:	afbf0024 	sw	ra,36(sp)
     e38:	3c040600 	lui	a0,0x600
     e3c:	0c000000 	jal	0 <func_80915A10>
     e40:	24846e60 	addiu	a0,a0,28256
     e44:	44822000 	mtc1	v0,$f4
     e48:	3c01c000 	lui	at,0xc000
     e4c:	44814000 	mtc1	at,$f8
     e50:	468021a0 	cvt.s.w	$f6,$f4
     e54:	8fa40028 	lw	a0,40(sp)
     e58:	3c050600 	lui	a1,0x600
     e5c:	240e0002 	li	t6,2
     e60:	afae0014 	sw	t6,20(sp)
     e64:	24a56e60 	addiu	a1,a1,28256
     e68:	e7a60010 	swc1	$f6,16(sp)
     e6c:	3c063f80 	lui	a2,0x3f80
     e70:	24070000 	li	a3,0
     e74:	e7a80018 	swc1	$f8,24(sp)
     e78:	0c000000 	jal	0 <func_80915A10>
     e7c:	2484014c 	addiu	a0,a0,332
     e80:	8fb80028 	lw	t8,40(sp)
     e84:	3c0f0000 	lui	t7,0x0
     e88:	25ef0000 	addiu	t7,t7,0
     e8c:	af0f0190 	sw	t7,400(t8)
     e90:	8fbf0024 	lw	ra,36(sp)
     e94:	27bd0028 	addiu	sp,sp,40
     e98:	03e00008 	jr	ra
     e9c:	00000000 	nop

00000ea0 <func_809168B0>:
     ea0:	27bdff58 	addiu	sp,sp,-168
     ea4:	3c010000 	lui	at,0x0
     ea8:	44866000 	mtc1	a2,$f12
     eac:	c4240000 	lwc1	$f4,0(at)
     eb0:	afbe0068 	sw	s8,104(sp)
     eb4:	afb00048 	sw	s0,72(sp)
     eb8:	460c2180 	add.s	$f6,$f4,$f12
     ebc:	f7b40030 	sdc1	$f20,48(sp)
     ec0:	4487a000 	mtc1	a3,$f20
     ec4:	0080f025 	move	s8,a0
     ec8:	afbf006c 	sw	ra,108(sp)
     ecc:	afb70064 	sw	s7,100(sp)
     ed0:	afb30054 	sw	s3,84(sp)
     ed4:	2490014c 	addiu	s0,a0,332
     ed8:	00a0b825 	move	s7,a1
     edc:	afb60060 	sw	s6,96(sp)
     ee0:	afb5005c 	sw	s5,92(sp)
     ee4:	afb40058 	sw	s4,88(sp)
     ee8:	afb20050 	sw	s2,80(sp)
     eec:	afb1004c 	sw	s1,76(sp)
     ef0:	f7b80040 	sdc1	$f24,64(sp)
     ef4:	f7b60038 	sdc1	$f22,56(sp)
     ef8:	00009825 	move	s3,zero
     efc:	e4260000 	swc1	$f6,0(at)
     f00:	0c000000 	jal	0 <func_80915A10>
     f04:	02002025 	move	a0,s0
     f08:	4405a000 	mfc1	a1,$f20
     f0c:	27c40068 	addiu	a0,s8,104
     f10:	3c063f00 	lui	a2,0x3f00
     f14:	0c000000 	jal	0 <func_80915A10>
     f18:	3c074000 	lui	a3,0x4000
     f1c:	87ae00ba 	lh	t6,186(sp)
     f20:	27c40024 	addiu	a0,s8,36
     f24:	3c050000 	lui	a1,0x0
     f28:	51c0000c 	beqzl	t6,f5c <func_809168B0+0xbc>
     f2c:	02002025 	move	a0,s0
     f30:	0c000000 	jal	0 <func_80915A10>
     f34:	24a50000 	addiu	a1,a1,0
     f38:	34018000 	li	at,0x8000
     f3c:	00412821 	addu	a1,v0,at
     f40:	00052c00 	sll	a1,a1,0x10
     f44:	00052c03 	sra	a1,a1,0x10
     f48:	27c40032 	addiu	a0,s8,50
     f4c:	24060003 	li	a2,3
     f50:	0c000000 	jal	0 <func_80915A10>
     f54:	240703e8 	li	a3,1000
     f58:	02002025 	move	a0,s0
     f5c:	0c000000 	jal	0 <func_80915A10>
     f60:	3c054110 	lui	a1,0x4110
     f64:	10400003 	beqz	v0,f74 <func_809168B0+0xd4>
     f68:	02002025 	move	a0,s0
     f6c:	10000006 	b	f88 <func_809168B0+0xe8>
     f70:	27d30278 	addiu	s3,s8,632
     f74:	0c000000 	jal	0 <func_80915A10>
     f78:	3c053f80 	lui	a1,0x3f80
     f7c:	10400002 	beqz	v0,f88 <func_809168B0+0xe8>
     f80:	00000000 	nop
     f84:	27d30284 	addiu	s3,s8,644
     f88:	12600045 	beqz	s3,10a0 <func_809168B0+0x200>
     f8c:	00008025 	move	s0,zero
     f90:	3c0140a0 	lui	at,0x40a0
     f94:	4481c000 	mtc1	at,$f24
     f98:	3c0141f0 	lui	at,0x41f0
     f9c:	4481b000 	mtc1	at,$f22
     fa0:	3c01428c 	lui	at,0x428c
     fa4:	3c150000 	lui	s5,0x0
     fa8:	3c140000 	lui	s4,0x0
     fac:	4481a000 	mtc1	at,$f20
     fb0:	26940000 	addiu	s4,s4,0
     fb4:	26b50000 	addiu	s5,s5,0
     fb8:	27b6007c 	addiu	s6,sp,124
     fbc:	27b20088 	addiu	s2,sp,136
     fc0:	27b10094 	addiu	s1,sp,148
     fc4:	8e980000 	lw	t8,0(s4)
     fc8:	8ea80000 	lw	t0,0(s5)
     fcc:	8e8f0004 	lw	t7,4(s4)
     fd0:	ae380000 	sw	t8,0(s1)
     fd4:	ae480000 	sw	t0,0(s2)
     fd8:	8e980008 	lw	t8,8(s4)
     fdc:	8ea80008 	lw	t0,8(s5)
     fe0:	8eb90004 	lw	t9,4(s5)
     fe4:	4600a306 	mov.s	$f12,$f20
     fe8:	ae2f0004 	sw	t7,4(s1)
     fec:	ae380008 	sw	t8,8(s1)
     ff0:	ae480008 	sw	t0,8(s2)
     ff4:	0c000000 	jal	0 <func_80915A10>
     ff8:	ae590004 	sw	t9,4(s2)
     ffc:	c6680000 	lwc1	$f8,0(s3)
    1000:	4600b306 	mov.s	$f12,$f22
    1004:	46080280 	add.s	$f10,$f0,$f8
    1008:	0c000000 	jal	0 <func_80915A10>
    100c:	e7aa007c 	swc1	$f10,124(sp)
    1010:	c6700004 	lwc1	$f16,4(s3)
    1014:	4600a306 	mov.s	$f12,$f20
    1018:	46100480 	add.s	$f18,$f0,$f16
    101c:	0c000000 	jal	0 <func_80915A10>
    1020:	e7b20080 	swc1	$f18,128(sp)
    1024:	c6640008 	lwc1	$f4,8(s3)
    1028:	46040180 	add.s	$f6,$f0,$f4
    102c:	0c000000 	jal	0 <func_80915A10>
    1030:	e7a60084 	swc1	$f6,132(sp)
    1034:	46180202 	mul.s	$f8,$f0,$f24
    1038:	240effff 	li	t6,-1
    103c:	240f000a 	li	t7,10
    1040:	afaf001c 	sw	t7,28(sp)
    1044:	afae0018 	sw	t6,24(sp)
    1048:	02e02025 	move	a0,s7
    104c:	02c02825 	move	a1,s6
    1050:	4600428d 	trunc.w.s	$f10,$f8
    1054:	02203025 	move	a2,s1
    1058:	02403825 	move	a3,s2
    105c:	afa00010 	sw	zero,16(sp)
    1060:	440a5000 	mfc1	t2,$f10
    1064:	afa00020 	sw	zero,32(sp)
    1068:	000a5c00 	sll	t3,t2,0x10
    106c:	000b6403 	sra	t4,t3,0x10
    1070:	258d000a 	addiu	t5,t4,10
    1074:	0c000000 	jal	0 <func_80915A10>
    1078:	afad0014 	sw	t5,20(sp)
    107c:	26100001 	addiu	s0,s0,1
    1080:	00108400 	sll	s0,s0,0x10
    1084:	00108403 	sra	s0,s0,0x10
    1088:	2a010005 	slti	at,s0,5
    108c:	5420ffce 	bnezl	at,fc8 <func_809168B0+0x128>
    1090:	8e980000 	lw	t8,0(s4)
    1094:	03c02025 	move	a0,s8
    1098:	0c000000 	jal	0 <func_80915A10>
    109c:	2405380b 	li	a1,14347
    10a0:	8fbf006c 	lw	ra,108(sp)
    10a4:	d7b40030 	ldc1	$f20,48(sp)
    10a8:	d7b60038 	ldc1	$f22,56(sp)
    10ac:	d7b80040 	ldc1	$f24,64(sp)
    10b0:	8fb00048 	lw	s0,72(sp)
    10b4:	8fb1004c 	lw	s1,76(sp)
    10b8:	8fb20050 	lw	s2,80(sp)
    10bc:	8fb30054 	lw	s3,84(sp)
    10c0:	8fb40058 	lw	s4,88(sp)
    10c4:	8fb5005c 	lw	s5,92(sp)
    10c8:	8fb60060 	lw	s6,96(sp)
    10cc:	8fb70064 	lw	s7,100(sp)
    10d0:	8fbe0068 	lw	s8,104(sp)
    10d4:	03e00008 	jr	ra
    10d8:	27bd00a8 	addiu	sp,sp,168

000010dc <func_80916AEC>:
    10dc:	27bdffc0 	addiu	sp,sp,-64
    10e0:	afb00028 	sw	s0,40(sp)
    10e4:	00808025 	move	s0,a0
    10e8:	afb1002c 	sw	s1,44(sp)
    10ec:	00a08825 	move	s1,a1
    10f0:	afbf0034 	sw	ra,52(sp)
    10f4:	00a02025 	move	a0,a1
    10f8:	afb20030 	sw	s2,48(sp)
    10fc:	0c000000 	jal	0 <func_80915A10>
    1100:	00002825 	move	a1,zero
    1104:	afa20038 	sw	v0,56(sp)
    1108:	8e0f0004 	lw	t7,4(s0)
    110c:	8e321c44 	lw	s2,7236(s1)
    1110:	240e0004 	li	t6,4
    1114:	35f80001 	ori	t8,t7,0x1
    1118:	a60e01d0 	sh	t6,464(s0)
    111c:	ae180004 	sw	t8,4(s0)
    1120:	02202025 	move	a0,s1
    1124:	0c000000 	jal	0 <func_80915A10>
    1128:	26251d64 	addiu	a1,s1,7524
    112c:	02202025 	move	a0,s1
    1130:	02002825 	move	a1,s0
    1134:	0c000000 	jal	0 <func_80915A10>
    1138:	24060001 	li	a2,1
    113c:	0c000000 	jal	0 <func_80915A10>
    1140:	02202025 	move	a0,s1
    1144:	a60201bc 	sh	v0,444(s0)
    1148:	02202025 	move	a0,s1
    114c:	00002825 	move	a1,zero
    1150:	0c000000 	jal	0 <func_80915A10>
    1154:	24060003 	li	a2,3
    1158:	02202025 	move	a0,s1
    115c:	860501bc 	lh	a1,444(s0)
    1160:	0c000000 	jal	0 <func_80915A10>
    1164:	24060007 	li	a2,7
    1168:	3c040601 	lui	a0,0x601
    116c:	0c000000 	jal	0 <func_80915A10>
    1170:	24840918 	addiu	a0,a0,2328
    1174:	44822000 	mtc1	v0,$f4
    1178:	44800000 	mtc1	zero,$f0
    117c:	3c050601 	lui	a1,0x601
    1180:	468021a0 	cvt.s.w	$f6,$f4
    1184:	24190002 	li	t9,2
    1188:	44070000 	mfc1	a3,$f0
    118c:	afb90014 	sw	t9,20(sp)
    1190:	24a50918 	addiu	a1,a1,2328
    1194:	2604014c 	addiu	a0,s0,332
    1198:	e7a60010 	swc1	$f6,16(sp)
    119c:	3c063f80 	lui	a2,0x3f80
    11a0:	0c000000 	jal	0 <func_80915A10>
    11a4:	e7a00018 	swc1	$f0,24(sp)
    11a8:	3c040601 	lui	a0,0x601
    11ac:	0c000000 	jal	0 <func_80915A10>
    11b0:	24840918 	addiu	a0,a0,2328
    11b4:	44824000 	mtc1	v0,$f8
    11b8:	3c01c316 	lui	at,0xc316
    11bc:	44818000 	mtc1	at,$f16
    11c0:	468042a0 	cvt.s.w	$f10,$f8
    11c4:	3c01c3af 	lui	at,0xc3af
    11c8:	44819000 	mtc1	at,$f18
    11cc:	3c014316 	lui	at,0x4316
    11d0:	44812000 	mtc1	at,$f4
    11d4:	24088fa4 	li	t0,-28764
    11d8:	e60a021c 	swc1	$f10,540(s0)
    11dc:	e6100024 	swc1	$f16,36(s0)
    11e0:	e612002c 	swc1	$f18,44(s0)
    11e4:	3c014396 	lui	at,0x4396
    11e8:	a64800b6 	sh	t0,182(s2)
    11ec:	44813000 	mtc1	at,$f6
    11f0:	864900b6 	lh	t1,182(s2)
    11f4:	e6440024 	swc1	$f4,36(s2)
    11f8:	e646002c 	swc1	$f6,44(s2)
    11fc:	a6490032 	sh	t1,50(s2)
    1200:	8e251c44 	lw	a1,7236(s1)
    1204:	0c000000 	jal	0 <func_80915A10>
    1208:	02002025 	move	a0,s0
    120c:	34018000 	li	at,0x8000
    1210:	00415021 	addu	t2,v0,at
    1214:	3c0142b4 	lui	at,0x42b4
    1218:	44814000 	mtc1	at,$f8
    121c:	3c01432a 	lui	at,0x432a
    1220:	44815000 	mtc1	at,$f10
    1224:	a60a0032 	sh	t2,50(s0)
    1228:	e6080290 	swc1	$f8,656(s0)
    122c:	e60a0298 	swc1	$f10,664(s0)
    1230:	8fab0038 	lw	t3,56(sp)
    1234:	3c0141a0 	lui	at,0x41a0
    1238:	44819000 	mtc1	at,$f18
    123c:	c5700060 	lwc1	$f16,96(t3)
    1240:	c6060024 	lwc1	$f6,36(s0)
    1244:	c6080028 	lwc1	$f8,40(s0)
    1248:	46128100 	add.s	$f4,$f16,$f18
    124c:	c60a002c 	lwc1	$f10,44(s0)
    1250:	240c0032 	li	t4,50
    1254:	3c041001 	lui	a0,0x1001
    1258:	e6040294 	swc1	$f4,660(s0)
    125c:	a60c01d2 	sh	t4,466(s0)
    1260:	348400ff 	ori	a0,a0,0xff
    1264:	e606029c 	swc1	$f6,668(s0)
    1268:	e60802a0 	swc1	$f8,672(s0)
    126c:	0c000000 	jal	0 <func_80915A10>
    1270:	e60a02a4 	swc1	$f10,676(s0)
    1274:	8fbf0034 	lw	ra,52(sp)
    1278:	8fb00028 	lw	s0,40(sp)
    127c:	8fb1002c 	lw	s1,44(sp)
    1280:	8fb20030 	lw	s2,48(sp)
    1284:	03e00008 	jr	ra
    1288:	27bd0040 	addiu	sp,sp,64

0000128c <func_80916C9C>:
    128c:	27bdff98 	addiu	sp,sp,-104
    1290:	afb00038 	sw	s0,56(sp)
    1294:	afbf003c 	sw	ra,60(sp)
    1298:	afa5006c 	sw	a1,108(sp)
    129c:	8caf1c44 	lw	t7,7236(a1)
    12a0:	00808025 	move	s0,a0
    12a4:	24840068 	addiu	a0,a0,104
    12a8:	afa40048 	sw	a0,72(sp)
    12ac:	3c053f00 	lui	a1,0x3f00
    12b0:	3c064000 	lui	a2,0x4000
    12b4:	0c000000 	jal	0 <func_80915A10>
    12b8:	afaf0060 	sw	t7,96(sp)
    12bc:	860201d0 	lh	v0,464(s0)
    12c0:	28410083 	slti	at,v0,131
    12c4:	14200008 	bnez	at,12e8 <func_80916C9C+0x5c>
    12c8:	0002c080 	sll	t8,v0,0x2
    12cc:	2401008c 	li	at,140
    12d0:	104103b9 	beq	v0,at,21b8 <L80917738+0x490>
    12d4:	24010096 	li	at,150
    12d8:	104103cb 	beq	v0,at,2208 <L80917738+0x4e0>
    12dc:	00000000 	nop
    12e0:	1000041e 	b	235c <L80917D68+0x4>
    12e4:	860501bc 	lh	a1,444(s0)
    12e8:	2841000a 	slti	at,v0,10
    12ec:	14200005 	bnez	at,1304 <func_80916C9C+0x78>
    12f0:	24010082 	li	at,130
    12f4:	50410305 	beql	v0,at,1f0c <L80917738+0x1e4>
    12f8:	3c014100 	lui	at,0x4100
    12fc:	10000417 	b	235c <L80917D68+0x4>
    1300:	860501bc 	lh	a1,444(s0)
    1304:	2c41000a 	sltiu	at,v0,10
    1308:	10200413 	beqz	at,2358 <L80917D68>
    130c:	3c010000 	lui	at,0x0
    1310:	00380821 	addu	at,at,t8
    1314:	8c380000 	lw	t8,0(at)
    1318:	03000008 	jr	t8
    131c:	00000000 	nop

00001320 <L80916D30>:
    1320:	8fa20060 	lw	v0,96(sp)
    1324:	3c014270 	lui	at,0x4270
    1328:	44811000 	mtc1	at,$f2
    132c:	3c014316 	lui	at,0x4316
    1330:	44813000 	mtc1	at,$f6
    1334:	c4440024 	lwc1	$f4,36(v0)
    1338:	3c0143af 	lui	at,0x43af
    133c:	46062001 	sub.s	$f0,$f4,$f6
    1340:	46000005 	abs.s	$f0,$f0
    1344:	4602003c 	c.lt.s	$f0,$f2
    1348:	00000000 	nop
    134c:	45020403 	bc1fl	235c <L80917D68+0x4>
    1350:	860501bc 	lh	a1,444(s0)
    1354:	c448002c 	lwc1	$f8,44(v0)
    1358:	44815000 	mtc1	at,$f10
    135c:	3c190000 	lui	t9,0x0
    1360:	460a4001 	sub.s	$f0,$f8,$f10
    1364:	46000005 	abs.s	$f0,$f0
    1368:	4602003c 	c.lt.s	$f0,$f2
    136c:	00000000 	nop
    1370:	450203fa 	bc1fl	235c <L80917D68+0x4>
    1374:	860501bc 	lh	a1,444(s0)
    1378:	97390ee2 	lhu	t9,3810(t9)
    137c:	8fa4006c 	lw	a0,108(sp)
    1380:	02002825 	move	a1,s0
    1384:	33280001 	andi	t0,t9,0x1
    1388:	1100001a 	beqz	t0,13f4 <L80916D30+0xd4>
    138c:	00000000 	nop
    1390:	02002025 	move	a0,s0
    1394:	0c000000 	jal	0 <func_80915A10>
    1398:	8fa5006c 	lw	a1,108(sp)
    139c:	3c010000 	lui	at,0x0
    13a0:	c4300000 	lwc1	$f16,0(at)
    13a4:	3c01c3f0 	lui	at,0xc3f0
    13a8:	44819000 	mtc1	at,$f18
    13ac:	3c010000 	lui	at,0x0
    13b0:	8fa6006c 	lw	a2,108(sp)
    13b4:	c4240000 	lwc1	$f4,0(at)
    13b8:	24098fa4 	li	t1,-28764
    13bc:	240a0180 	li	t2,384
    13c0:	afaa0028 	sw	t2,40(sp)
    13c4:	afa90020 	sw	t1,32(sp)
    13c8:	02002825 	move	a1,s0
    13cc:	2407002e 	li	a3,46
    13d0:	afa0001c 	sw	zero,28(sp)
    13d4:	afa00024 	sw	zero,36(sp)
    13d8:	e7b00010 	swc1	$f16,16(sp)
    13dc:	e7b20014 	swc1	$f18,20(sp)
    13e0:	24c41c24 	addiu	a0,a2,7204
    13e4:	0c000000 	jal	0 <func_80915A10>
    13e8:	e7a40018 	swc1	$f4,24(sp)
    13ec:	100003db 	b	235c <L80917D68+0x4>
    13f0:	860501bc 	lh	a1,444(s0)
    13f4:	0c000000 	jal	0 <func_80915A10>
    13f8:	24060008 	li	a2,8
    13fc:	240b0001 	li	t3,1
    1400:	100003d5 	b	2358 <L80917D68>
    1404:	a60b01d0 	sh	t3,464(s0)

00001408 <L80916E18>:
    1408:	8fa4006c 	lw	a0,108(sp)
    140c:	0c000000 	jal	0 <func_80915A10>
    1410:	24851d64 	addiu	a1,a0,7524
    1414:	0c000000 	jal	0 <func_80915A10>
    1418:	8fa4006c 	lw	a0,108(sp)
    141c:	3c040000 	lui	a0,0x0
    1420:	a60201bc 	sh	v0,444(s0)
    1424:	0c000000 	jal	0 <func_80915A10>
    1428:	24840000 	addiu	a0,a0,0
    142c:	8fa4006c 	lw	a0,108(sp)
    1430:	00002825 	move	a1,zero
    1434:	0c000000 	jal	0 <func_80915A10>
    1438:	24060001 	li	a2,1
    143c:	8fa4006c 	lw	a0,108(sp)
    1440:	860501bc 	lh	a1,444(s0)
    1444:	0c000000 	jal	0 <func_80915A10>
    1448:	24060007 	li	a2,7
    144c:	3c01c3af 	lui	at,0xc3af
    1450:	44810000 	mtc1	at,$f0
    1454:	3c01c316 	lui	at,0xc316
    1458:	44813000 	mtc1	at,$f6
    145c:	8fa30060 	lw	v1,96(sp)
    1460:	3c01c3a0 	lui	at,0xc3a0
    1464:	44814000 	mtc1	at,$f8
    1468:	3c014316 	lui	at,0x4316
    146c:	44815000 	mtc1	at,$f10
    1470:	3c014396 	lui	at,0x4396
    1474:	44818000 	mtc1	at,$f16
    1478:	240d0002 	li	t5,2
    147c:	a60d01d0 	sh	t5,464(s0)
    1480:	e600002c 	swc1	$f0,44(s0)
    1484:	e6060024 	swc1	$f6,36(s0)
    1488:	e6080028 	swc1	$f8,40(s0)
    148c:	3c01c39b 	lui	at,0xc39b
    1490:	44819000 	mtc1	at,$f18
    1494:	e46a0024 	swc1	$f10,36(v1)
    1498:	e470002c 	swc1	$f16,44(v1)
    149c:	e6000290 	swc1	$f0,656(s0)
    14a0:	e6000298 	swc1	$f0,664(s0)
    14a4:	e6120294 	swc1	$f18,660(s0)
    14a8:	c4640024 	lwc1	$f4,36(v1)
    14ac:	3c014348 	lui	at,0x4348
    14b0:	44814000 	mtc1	at,$f8
    14b4:	e604029c 	swc1	$f4,668(s0)
    14b8:	c4660028 	lwc1	$f6,40(v1)
    14bc:	3c0141c8 	lui	at,0x41c8
    14c0:	44818000 	mtc1	at,$f16
    14c4:	46083281 	sub.s	$f10,$f6,$f8
    14c8:	8e180004 	lw	t8,4(s0)
    14cc:	2401fffe 	li	at,-2
    14d0:	240e0032 	li	t6,50
    14d4:	46105480 	add.s	$f18,$f10,$f16
    14d8:	240f0050 	li	t7,80
    14dc:	0301c824 	and	t9,t8,at
    14e0:	e61202a0 	swc1	$f18,672(s0)
    14e4:	c464002c 	lwc1	$f4,44(v1)
    14e8:	a60e01d2 	sh	t6,466(s0)
    14ec:	a60f01d4 	sh	t7,468(s0)
    14f0:	a6000194 	sh	zero,404(s0)
    14f4:	ae190004 	sw	t9,4(s0)
    14f8:	e60402a4 	swc1	$f4,676(s0)

000014fc <L80916F0C>:
    14fc:	8fa20060 	lw	v0,96(sp)
    1500:	3c014316 	lui	at,0x4316
    1504:	44813000 	mtc1	at,$f6
    1508:	24088fa4 	li	t0,-28764
    150c:	3c014396 	lui	at,0x4396
    1510:	a44800b6 	sh	t0,182(v0)
    1514:	44814000 	mtc1	at,$f8
    1518:	44805000 	mtc1	zero,$f10
    151c:	844900b6 	lh	t1,182(v0)
    1520:	e4460024 	swc1	$f6,36(v0)
    1524:	e448002c 	swc1	$f8,44(v0)
    1528:	a4490032 	sh	t1,50(v0)
    152c:	e44a0068 	swc1	$f10,104(v0)
    1530:	860a01d2 	lh	t2,466(s0)
    1534:	3c0141a0 	lui	at,0x41a0
    1538:	5540004f 	bnezl	t2,1678 <L80916F0C+0x17c>
    153c:	2606029c 	addiu	a2,s0,668
    1540:	44819000 	mtc1	at,$f18
    1544:	3c014248 	lui	at,0x4248
    1548:	44814000 	mtc1	at,$f8
    154c:	c6060220 	lwc1	$f6,544(s0)
    1550:	c4500024 	lwc1	$f16,36(v0)
    1554:	3c063d4c 	lui	a2,0x3d4c
    1558:	46083282 	mul.s	$f10,$f6,$f8
    155c:	46128101 	sub.s	$f4,$f16,$f18
    1560:	34c6cccc 	ori	a2,a2,0xcccc
    1564:	26040290 	addiu	a0,s0,656
    1568:	44052000 	mfc1	a1,$f4
    156c:	44075000 	mfc1	a3,$f10
    1570:	0c000000 	jal	0 <func_80915A10>
    1574:	00000000 	nop
    1578:	3c0141c8 	lui	at,0x41c8
    157c:	44819000 	mtc1	at,$f18
    1580:	3c014302 	lui	at,0x4302
    1584:	44814000 	mtc1	at,$f8
    1588:	8fab0060 	lw	t3,96(sp)
    158c:	c6060220 	lwc1	$f6,544(s0)
    1590:	3c063dcc 	lui	a2,0x3dcc
    1594:	c5700028 	lwc1	$f16,40(t3)
    1598:	46083282 	mul.s	$f10,$f6,$f8
    159c:	34c6cccc 	ori	a2,a2,0xcccc
    15a0:	46128100 	add.s	$f4,$f16,$f18
    15a4:	26040294 	addiu	a0,s0,660
    15a8:	44052000 	mfc1	a1,$f4
    15ac:	44075000 	mfc1	a3,$f10
    15b0:	0c000000 	jal	0 <func_80915A10>
    15b4:	00000000 	nop
    15b8:	3c014282 	lui	at,0x4282
    15bc:	44819000 	mtc1	at,$f18
    15c0:	3c0141f0 	lui	at,0x41f0
    15c4:	44814000 	mtc1	at,$f8
    15c8:	8fac0060 	lw	t4,96(sp)
    15cc:	c6060220 	lwc1	$f6,544(s0)
    15d0:	3c063d4c 	lui	a2,0x3d4c
    15d4:	c590002c 	lwc1	$f16,44(t4)
    15d8:	46083282 	mul.s	$f10,$f6,$f8
    15dc:	34c6cccc 	ori	a2,a2,0xcccc
    15e0:	46128101 	sub.s	$f4,$f16,$f18
    15e4:	26040298 	addiu	a0,s0,664
    15e8:	44052000 	mfc1	a1,$f4
    15ec:	44075000 	mfc1	a3,$f10
    15f0:	0c000000 	jal	0 <func_80915A10>
    15f4:	00000000 	nop
    15f8:	3c053e99 	lui	a1,0x3e99
    15fc:	3c073ba3 	lui	a3,0x3ba3
    1600:	34e7d70b 	ori	a3,a3,0xd70b
    1604:	34a59999 	ori	a1,a1,0x9999
    1608:	26040220 	addiu	a0,s0,544
    160c:	0c000000 	jal	0 <func_80915A10>
    1610:	3c063f80 	lui	a2,0x3f80
    1614:	860d01d4 	lh	t5,468(s0)
    1618:	8fae0060 	lw	t6,96(sp)
    161c:	3c01420c 	lui	at,0x420c
    1620:	55a00010 	bnezl	t5,1664 <L80916F0C+0x168>
    1624:	8fa20060 	lw	v0,96(sp)
    1628:	44819000 	mtc1	at,$f18
    162c:	3c0141f0 	lui	at,0x41f0
    1630:	44814000 	mtc1	at,$f8
    1634:	c6060220 	lwc1	$f6,544(s0)
    1638:	c5d00028 	lwc1	$f16,40(t6)
    163c:	3c063dcc 	lui	a2,0x3dcc
    1640:	46083282 	mul.s	$f10,$f6,$f8
    1644:	46128100 	add.s	$f4,$f16,$f18
    1648:	34c6cccc 	ori	a2,a2,0xcccc
    164c:	260402a0 	addiu	a0,s0,672
    1650:	44052000 	mfc1	a1,$f4
    1654:	44075000 	mfc1	a3,$f10
    1658:	0c000000 	jal	0 <func_80915A10>
    165c:	00000000 	nop
    1660:	8fa20060 	lw	v0,96(sp)
    1664:	c4500024 	lwc1	$f16,36(v0)
    1668:	e610029c 	swc1	$f16,668(s0)
    166c:	c452002c 	lwc1	$f18,44(v0)
    1670:	e61202a4 	swc1	$f18,676(s0)
    1674:	2606029c 	addiu	a2,s0,668
    1678:	26070290 	addiu	a3,s0,656
    167c:	afa70044 	sw	a3,68(sp)
    1680:	afa60040 	sw	a2,64(sp)
    1684:	8fa4006c 	lw	a0,108(sp)
    1688:	0c000000 	jal	0 <func_80915A10>
    168c:	00002825 	move	a1,zero
    1690:	86030194 	lh	v1,404(s0)
    1694:	8fa6006c 	lw	a2,108(sp)
    1698:	240100b0 	li	at,176
    169c:	14610014 	bne	v1,at,16f0 <L80916F0C+0x1f4>
    16a0:	24c41c24 	addiu	a0,a2,7204
    16a4:	3c010000 	lui	at,0x0
    16a8:	c4240000 	lwc1	$f4,0(at)
    16ac:	3c01c3f0 	lui	at,0xc3f0
    16b0:	44813000 	mtc1	at,$f6
    16b4:	3c010000 	lui	at,0x0
    16b8:	c4280000 	lwc1	$f8,0(at)
    16bc:	24188fa4 	li	t8,-28764
    16c0:	24190180 	li	t9,384
    16c4:	afb90028 	sw	t9,40(sp)
    16c8:	afb80020 	sw	t8,32(sp)
    16cc:	02002825 	move	a1,s0
    16d0:	2407002e 	li	a3,46
    16d4:	afa0001c 	sw	zero,28(sp)
    16d8:	afa00024 	sw	zero,36(sp)
    16dc:	e7a40010 	swc1	$f4,16(sp)
    16e0:	e7a60014 	swc1	$f6,20(sp)
    16e4:	0c000000 	jal	0 <func_80915A10>
    16e8:	e7a80018 	swc1	$f8,24(sp)
    16ec:	86030194 	lh	v1,404(s0)
    16f0:	240100b0 	li	at,176
    16f4:	1461000b 	bne	v1,at,1724 <L80916F0C+0x228>
    16f8:	8fa9006c 	lw	t1,108(sp)
    16fc:	3c010001 	lui	at,0x1
    1700:	00290821 	addu	at,at,t1
    1704:	24080003 	li	t0,3
    1708:	a0280ae3 	sb	t0,2787(at)
    170c:	8fab006c 	lw	t3,108(sp)
    1710:	3c010001 	lui	at,0x1
    1714:	340affff 	li	t2,0xffff
    1718:	002b0821 	addu	at,at,t3
    171c:	a42a0afa 	sh	t2,2810(at)
    1720:	86030194 	lh	v1,404(s0)
    1724:	240100be 	li	at,190
    1728:	14610005 	bne	v1,at,1740 <L80916F0C+0x244>
    172c:	8fa4006c 	lw	a0,108(sp)
    1730:	02002825 	move	a1,s0
    1734:	0c000000 	jal	0 <func_80915A10>
    1738:	24060002 	li	a2,2
    173c:	86030194 	lh	v1,404(s0)
    1740:	286100e4 	slti	at,v1,228
    1744:	14200304 	bnez	at,2358 <L80917D68>
    1748:	8fa4006c 	lw	a0,108(sp)
    174c:	248d1d64 	addiu	t5,a0,7524
    1750:	afad0048 	sw	t5,72(sp)
    1754:	0c000000 	jal	0 <func_80915A10>
    1758:	00002825 	move	a1,zero
    175c:	8fae0044 	lw	t6,68(sp)
    1760:	00003025 	move	a2,zero
    1764:	8dd80000 	lw	t8,0(t6)
    1768:	ac58005c 	sw	t8,92(v0)
    176c:	8dcf0004 	lw	t7,4(t6)
    1770:	ac4f0060 	sw	t7,96(v0)
    1774:	8dd80008 	lw	t8,8(t6)
    1778:	ac580064 	sw	t8,100(v0)
    177c:	8fb90044 	lw	t9,68(sp)
    1780:	8f290000 	lw	t1,0(t9)
    1784:	ac490074 	sw	t1,116(v0)
    1788:	8f280004 	lw	t0,4(t9)
    178c:	ac480078 	sw	t0,120(v0)
    1790:	8f290008 	lw	t1,8(t9)
    1794:	ac49007c 	sw	t1,124(v0)
    1798:	8faa0040 	lw	t2,64(sp)
    179c:	8d4c0000 	lw	t4,0(t2)
    17a0:	ac4c0050 	sw	t4,80(v0)
    17a4:	8d4b0004 	lw	t3,4(t2)
    17a8:	ac4b0054 	sw	t3,84(v0)
    17ac:	8d4c0008 	lw	t4,8(t2)
    17b0:	ac4c0058 	sw	t4,88(v0)
    17b4:	860501bc 	lh	a1,444(s0)
    17b8:	0c000000 	jal	0 <func_80915A10>
    17bc:	8fa4006c 	lw	a0,108(sp)
    17c0:	a60001bc 	sh	zero,444(s0)
    17c4:	8fa50048 	lw	a1,72(sp)
    17c8:	0c000000 	jal	0 <func_80915A10>
    17cc:	8fa4006c 	lw	a0,108(sp)
    17d0:	8fa4006c 	lw	a0,108(sp)
    17d4:	02002825 	move	a1,s0
    17d8:	0c000000 	jal	0 <func_80915A10>
    17dc:	24060007 	li	a2,7
    17e0:	240d0003 	li	t5,3
    17e4:	100002dc 	b	2358 <L80917D68>
    17e8:	a60d01d0 	sh	t5,464(s0)

000017ec <L809171FC>:
    17ec:	c60000e4 	lwc1	$f0,228(s0)
    17f0:	3c014316 	lui	at,0x4316
    17f4:	44815000 	mtc1	at,$f10
    17f8:	46000005 	abs.s	$f0,$f0
    17fc:	02002025 	move	a0,s0
    1800:	460a003c 	c.lt.s	$f0,$f10
    1804:	24060000 	li	a2,0
    1808:	3c07c0a0 	lui	a3,0xc0a0
    180c:	24190001 	li	t9,1
    1810:	45020031 	bc1fl	18d8 <L809171FC+0xec>
    1814:	a60001c6 	sh	zero,454(s0)
    1818:	c60000e8 	lwc1	$f0,232(s0)
    181c:	3c01437a 	lui	at,0x437a
    1820:	44818000 	mtc1	at,$f16
    1824:	46000005 	abs.s	$f0,$f0
    1828:	3c014448 	lui	at,0x4448
    182c:	4610003c 	c.lt.s	$f0,$f16
    1830:	00000000 	nop
    1834:	45020028 	bc1fl	18d8 <L809171FC+0xec>
    1838:	a60001c6 	sh	zero,454(s0)
    183c:	c60000ec 	lwc1	$f0,236(s0)
    1840:	44819000 	mtc1	at,$f18
    1844:	00000000 	nop
    1848:	4612003c 	c.lt.s	$f0,$f18
    184c:	00000000 	nop
    1850:	45020021 	bc1fl	18d8 <L809171FC+0xec>
    1854:	a60001c6 	sh	zero,454(s0)
    1858:	44802000 	mtc1	zero,$f4
    185c:	00000000 	nop
    1860:	4600203c 	c.lt.s	$f4,$f0
    1864:	00000000 	nop
    1868:	4502001b 	bc1fl	18d8 <L809171FC+0xec>
    186c:	a60001c6 	sh	zero,454(s0)
    1870:	860e01c6 	lh	t6,454(s0)
    1874:	3c053f00 	lui	a1,0x3f00
    1878:	3c064000 	lui	a2,0x4000
    187c:	25cf0001 	addiu	t7,t6,1
    1880:	a60f01c6 	sh	t7,454(s0)
    1884:	0c000000 	jal	0 <func_80915A10>
    1888:	8fa40048 	lw	a0,72(sp)
    188c:	8fb8006c 	lw	t8,108(sp)
    1890:	02002025 	move	a0,s0
    1894:	0c000000 	jal	0 <func_80915A10>
    1898:	8f051c44 	lw	a1,7236(t8)
    189c:	34018000 	li	at,0x8000
    18a0:	00412821 	addu	a1,v0,at
    18a4:	00052c00 	sll	a1,a1,0x10
    18a8:	00052c03 	sra	a1,a1,0x10
    18ac:	26040032 	addiu	a0,s0,50
    18b0:	24060002 	li	a2,2
    18b4:	0c000000 	jal	0 <func_80915A10>
    18b8:	24070bb8 	li	a3,3000
    18bc:	a60001a0 	sh	zero,416(s0)
    18c0:	860201a0 	lh	v0,416(s0)
    18c4:	a602019e 	sh	v0,414(s0)
    18c8:	a602019a 	sh	v0,410(s0)
    18cc:	10000005 	b	18e4 <L809171FC+0xf8>
    18d0:	a6020198 	sh	v0,408(s0)
    18d4:	a60001c6 	sh	zero,454(s0)
    18d8:	afb90010 	sw	t9,16(sp)
    18dc:	0c000000 	jal	0 <func_80915A10>
    18e0:	8fa5006c 	lw	a1,108(sp)
    18e4:	860801c6 	lh	t0,454(s0)
    18e8:	02002025 	move	a0,s0
    18ec:	29010010 	slti	at,t0,16
    18f0:	5420029a 	bnezl	at,235c <L80917D68+0x4>
    18f4:	860501bc 	lh	a1,444(s0)
    18f8:	0c000000 	jal	0 <func_80915A10>
    18fc:	8fa5006c 	lw	a1,108(sp)
    1900:	10000296 	b	235c <L80917D68+0x4>
    1904:	860501bc 	lh	a1,444(s0)

00001908 <L80917318>:
    1908:	2604014c 	addiu	a0,s0,332
    190c:	afa40044 	sw	a0,68(sp)
    1910:	0c000000 	jal	0 <func_80915A10>
    1914:	3c054170 	lui	a1,0x4170
    1918:	10400003 	beqz	v0,1928 <L80917318+0x20>
    191c:	02002025 	move	a0,s0
    1920:	0c000000 	jal	0 <func_80915A10>
    1924:	2405381b 	li	a1,14363
    1928:	860901d2 	lh	t1,466(s0)
    192c:	29210029 	slti	at,t1,41
    1930:	10200289 	beqz	at,2358 <L80917D68>
    1934:	3c0141b0 	lui	at,0x41b0
    1938:	44814000 	mtc1	at,$f8
    193c:	c6060024 	lwc1	$f6,36(s0)
    1940:	3c063e4c 	lui	a2,0x3e4c
    1944:	34c6cccd 	ori	a2,a2,0xcccd
    1948:	46083280 	add.s	$f10,$f6,$f8
    194c:	26040290 	addiu	a0,s0,656
    1950:	3c0742c8 	lui	a3,0x42c8
    1954:	44055000 	mfc1	a1,$f10
    1958:	0c000000 	jal	0 <func_80915A10>
    195c:	00000000 	nop
    1960:	3c0141c8 	lui	at,0x41c8
    1964:	44819000 	mtc1	at,$f18
    1968:	c6100028 	lwc1	$f16,40(s0)
    196c:	3c063e4c 	lui	a2,0x3e4c
    1970:	34c6cccd 	ori	a2,a2,0xcccd
    1974:	46128101 	sub.s	$f4,$f16,$f18
    1978:	26040294 	addiu	a0,s0,660
    197c:	3c0742c8 	lui	a3,0x42c8
    1980:	44052000 	mfc1	a1,$f4
    1984:	0c000000 	jal	0 <func_80915A10>
    1988:	00000000 	nop
    198c:	3c014234 	lui	at,0x4234
    1990:	44814000 	mtc1	at,$f8
    1994:	c606002c 	lwc1	$f6,44(s0)
    1998:	3c063e4c 	lui	a2,0x3e4c
    199c:	34c6cccd 	ori	a2,a2,0xcccd
    19a0:	46083280 	add.s	$f10,$f6,$f8
    19a4:	26040298 	addiu	a0,s0,664
    19a8:	3c0742c8 	lui	a3,0x42c8
    19ac:	44055000 	mfc1	a1,$f10
    19b0:	0c000000 	jal	0 <func_80915A10>
    19b4:	00000000 	nop
    19b8:	3c063e4c 	lui	a2,0x3e4c
    19bc:	34c6cccd 	ori	a2,a2,0xcccd
    19c0:	2604029c 	addiu	a0,s0,668
    19c4:	8e050024 	lw	a1,36(s0)
    19c8:	0c000000 	jal	0 <func_80915A10>
    19cc:	3c0742c8 	lui	a3,0x42c8
    19d0:	3c0140a0 	lui	at,0x40a0
    19d4:	44819000 	mtc1	at,$f18
    19d8:	c6100028 	lwc1	$f16,40(s0)
    19dc:	3c063e4c 	lui	a2,0x3e4c
    19e0:	34c6cccd 	ori	a2,a2,0xcccd
    19e4:	46128100 	add.s	$f4,$f16,$f18
    19e8:	260402a0 	addiu	a0,s0,672
    19ec:	3c0742c8 	lui	a3,0x42c8
    19f0:	44052000 	mfc1	a1,$f4
    19f4:	0c000000 	jal	0 <func_80915A10>
    19f8:	00000000 	nop
    19fc:	3c063e4c 	lui	a2,0x3e4c
    1a00:	34c6cccd 	ori	a2,a2,0xcccd
    1a04:	260402a4 	addiu	a0,s0,676
    1a08:	8e05002c 	lw	a1,44(s0)
    1a0c:	0c000000 	jal	0 <func_80915A10>
    1a10:	3c0742c8 	lui	a3,0x42c8
    1a14:	860301d2 	lh	v1,466(s0)
    1a18:	2401001e 	li	at,30
    1a1c:	8fab006c 	lw	t3,108(sp)
    1a20:	14610005 	bne	v1,at,1a38 <L80917318+0x130>
    1a24:	3c010001 	lui	at,0x1
    1a28:	002b0821 	addu	at,at,t3
    1a2c:	240a0004 	li	t2,4
    1a30:	a02a0ae3 	sb	t2,2787(at)
    1a34:	860301d2 	lh	v1,466(s0)
    1a38:	28610014 	slti	at,v1,20
    1a3c:	50200247 	beqzl	at,235c <L80917D68+0x4>
    1a40:	860501bc 	lh	a1,444(s0)
    1a44:	0c000000 	jal	0 <func_80915A10>
    1a48:	8fa40044 	lw	a0,68(sp)
    1a4c:	3c063f4c 	lui	a2,0x3f4c
    1a50:	3c073ecc 	lui	a3,0x3ecc
    1a54:	34e7cccd 	ori	a3,a3,0xcccd
    1a58:	34c6cccd 	ori	a2,a2,0xcccd
    1a5c:	260401f8 	addiu	a0,s0,504
    1a60:	0c000000 	jal	0 <func_80915A10>
    1a64:	3c053f80 	lui	a1,0x3f80
    1a68:	3c063f4c 	lui	a2,0x3f4c
    1a6c:	3c073ecc 	lui	a3,0x3ecc
    1a70:	34e7cccd 	ori	a3,a3,0xcccd
    1a74:	34c6cccd 	ori	a2,a2,0xcccd
    1a78:	26040224 	addiu	a0,s0,548
    1a7c:	0c000000 	jal	0 <func_80915A10>
    1a80:	3c053f80 	lui	a1,0x3f80
    1a84:	8fa40044 	lw	a0,68(sp)
    1a88:	0c000000 	jal	0 <func_80915A10>
    1a8c:	3c054210 	lui	a1,0x4210
    1a90:	10400004 	beqz	v0,1aa4 <L80917318+0x19c>
    1a94:	3c010000 	lui	at,0x0
    1a98:	c4200000 	lwc1	$f0,0(at)
    1a9c:	e60001f8 	swc1	$f0,504(s0)
    1aa0:	e6000224 	swc1	$f0,548(s0)
    1aa4:	8fa40044 	lw	a0,68(sp)
    1aa8:	0c000000 	jal	0 <func_80915A10>
    1aac:	8e05021c 	lw	a1,540(s0)
    1ab0:	10400229 	beqz	v0,2358 <L80917D68>
    1ab4:	240c0005 	li	t4,5
    1ab8:	3c040600 	lui	a0,0x600
    1abc:	a60c01d0 	sh	t4,464(s0)
    1ac0:	0c000000 	jal	0 <func_80915A10>
    1ac4:	24842360 	addiu	a0,a0,9056
    1ac8:	44823000 	mtc1	v0,$f6
    1acc:	3c01c0a0 	lui	at,0xc0a0
    1ad0:	44815000 	mtc1	at,$f10
    1ad4:	46803220 	cvt.s.w	$f8,$f6
    1ad8:	3c050600 	lui	a1,0x600
    1adc:	24a52360 	addiu	a1,a1,9056
    1ae0:	8fa40044 	lw	a0,68(sp)
    1ae4:	3c064000 	lui	a2,0x4000
    1ae8:	24070000 	li	a3,0
    1aec:	e7a80010 	swc1	$f8,16(sp)
    1af0:	afa00014 	sw	zero,20(sp)
    1af4:	0c000000 	jal	0 <func_80915A10>
    1af8:	e7aa0018 	swc1	$f10,24(sp)
    1afc:	44808000 	mtc1	zero,$f16
    1b00:	240d001e 	li	t5,30
    1b04:	a60d01d2 	sh	t5,466(s0)
    1b08:	10000213 	b	2358 <L80917D68>
    1b0c:	e6100220 	swc1	$f16,544(s0)

00001b10 <L80917520>:
    1b10:	3c014100 	lui	at,0x4100
    1b14:	44812000 	mtc1	at,$f4
    1b18:	c6120024 	lwc1	$f18,36(s0)
    1b1c:	3c0142b4 	lui	at,0x42b4
    1b20:	44814000 	mtc1	at,$f8
    1b24:	46049180 	add.s	$f6,$f18,$f4
    1b28:	3c0141f0 	lui	at,0x41f0
    1b2c:	44819000 	mtc1	at,$f18
    1b30:	c6100220 	lwc1	$f16,544(s0)
    1b34:	46083280 	add.s	$f10,$f6,$f8
    1b38:	3c063dcc 	lui	a2,0x3dcc
    1b3c:	46128102 	mul.s	$f4,$f16,$f18
    1b40:	34c6cccd 	ori	a2,a2,0xcccd
    1b44:	44055000 	mfc1	a1,$f10
    1b48:	26040290 	addiu	a0,s0,656
    1b4c:	44072000 	mfc1	a3,$f4
    1b50:	0c000000 	jal	0 <func_80915A10>
    1b54:	00000000 	nop
    1b58:	3c0141f0 	lui	at,0x41f0
    1b5c:	44814000 	mtc1	at,$f8
    1b60:	c6060220 	lwc1	$f6,544(s0)
    1b64:	8fae0060 	lw	t6,96(sp)
    1b68:	3c063dcc 	lui	a2,0x3dcc
    1b6c:	46083282 	mul.s	$f10,$f6,$f8
    1b70:	34c6cccd 	ori	a2,a2,0xcccd
    1b74:	26040294 	addiu	a0,s0,660
    1b78:	8dc50028 	lw	a1,40(t6)
    1b7c:	44075000 	mfc1	a3,$f10
    1b80:	0c000000 	jal	0 <func_80915A10>
    1b84:	00000000 	nop
    1b88:	3c014234 	lui	at,0x4234
    1b8c:	44819000 	mtc1	at,$f18
    1b90:	c610002c 	lwc1	$f16,44(s0)
    1b94:	3c014220 	lui	at,0x4220
    1b98:	44813000 	mtc1	at,$f6
    1b9c:	46128100 	add.s	$f4,$f16,$f18
    1ba0:	3c0141f0 	lui	at,0x41f0
    1ba4:	44818000 	mtc1	at,$f16
    1ba8:	c60a0220 	lwc1	$f10,544(s0)
    1bac:	46062200 	add.s	$f8,$f4,$f6
    1bb0:	3c063dcc 	lui	a2,0x3dcc
    1bb4:	46105482 	mul.s	$f18,$f10,$f16
    1bb8:	34c6cccd 	ori	a2,a2,0xcccd
    1bbc:	44054000 	mfc1	a1,$f8
    1bc0:	26040298 	addiu	a0,s0,664
    1bc4:	44079000 	mfc1	a3,$f18
    1bc8:	0c000000 	jal	0 <func_80915A10>
    1bcc:	00000000 	nop
    1bd0:	3c013f80 	lui	at,0x3f80
    1bd4:	44810000 	mtc1	at,$f0
    1bd8:	3c073d4c 	lui	a3,0x3d4c
    1bdc:	34e7cccd 	ori	a3,a3,0xcccd
    1be0:	44050000 	mfc1	a1,$f0
    1be4:	44060000 	mfc1	a2,$f0
    1be8:	0c000000 	jal	0 <func_80915A10>
    1bec:	26040220 	addiu	a0,s0,544
    1bf0:	860f01d2 	lh	t7,466(s0)
    1bf4:	c6040024 	lwc1	$f4,36(s0)
    1bf8:	c6060028 	lwc1	$f6,40(s0)
    1bfc:	c608002c 	lwc1	$f8,44(s0)
    1c00:	e604029c 	swc1	$f4,668(s0)
    1c04:	e60602a0 	swc1	$f6,672(s0)
    1c08:	05e10009 	bgez	t7,1c30 <L80917520+0x120>
    1c0c:	e60802a4 	swc1	$f8,676(s0)
    1c10:	0c000000 	jal	0 <func_80915A10>
    1c14:	2604014c 	addiu	a0,s0,332
    1c18:	8fa40048 	lw	a0,72(sp)
    1c1c:	3c053f80 	lui	a1,0x3f80
    1c20:	0c000000 	jal	0 <func_80915A10>
    1c24:	3c064000 	lui	a2,0x4000
    1c28:	10000008 	b	1c4c <L80917520+0x13c>
    1c2c:	860301d2 	lh	v1,466(s0)
    1c30:	02002025 	move	a0,s0
    1c34:	8fa5006c 	lw	a1,108(sp)
    1c38:	24060000 	li	a2,0
    1c3c:	3c07c0f0 	lui	a3,0xc0f0
    1c40:	0c000000 	jal	0 <func_80915A10>
    1c44:	afa00010 	sw	zero,16(sp)
    1c48:	860301d2 	lh	v1,466(s0)
    1c4c:	3c040600 	lui	a0,0x600
    1c50:	2484193c 	addiu	a0,a0,6460
    1c54:	14600011 	bnez	v1,1c9c <L80917520+0x18c>
    1c58:	2618014c 	addiu	t8,s0,332
    1c5c:	0c000000 	jal	0 <func_80915A10>
    1c60:	afb80044 	sw	t8,68(sp)
    1c64:	44825000 	mtc1	v0,$f10
    1c68:	3c01c0a0 	lui	at,0xc0a0
    1c6c:	44819000 	mtc1	at,$f18
    1c70:	46805420 	cvt.s.w	$f16,$f10
    1c74:	3c050600 	lui	a1,0x600
    1c78:	24a5193c 	addiu	a1,a1,6460
    1c7c:	8fa40044 	lw	a0,68(sp)
    1c80:	3c063f80 	lui	a2,0x3f80
    1c84:	24070000 	li	a3,0
    1c88:	e7b00010 	swc1	$f16,16(sp)
    1c8c:	afa00014 	sw	zero,20(sp)
    1c90:	0c000000 	jal	0 <func_80915A10>
    1c94:	e7b20018 	swc1	$f18,24(sp)
    1c98:	860301d2 	lh	v1,466(s0)
    1c9c:	146001ae 	bnez	v1,2358 <L80917D68>
    1ca0:	24190009 	li	t9,9
    1ca4:	44800000 	mtc1	zero,$f0
    1ca8:	3c01c000 	lui	at,0xc000
    1cac:	44812000 	mtc1	at,$f4
    1cb0:	a61901d0 	sh	t9,464(s0)
    1cb4:	3c040601 	lui	a0,0x601
    1cb8:	2608014c 	addiu	t0,s0,332
    1cbc:	e6000068 	swc1	$f0,104(s0)
    1cc0:	e6000060 	swc1	$f0,96(s0)
    1cc4:	e604006c 	swc1	$f4,108(s0)
    1cc8:	afa80044 	sw	t0,68(sp)
    1ccc:	0c000000 	jal	0 <func_80915A10>
    1cd0:	2484f70c 	addiu	a0,a0,-2292
    1cd4:	44823000 	mtc1	v0,$f6
    1cd8:	3c01c0a0 	lui	at,0xc0a0
    1cdc:	44815000 	mtc1	at,$f10
    1ce0:	46803220 	cvt.s.w	$f8,$f6
    1ce4:	3c050601 	lui	a1,0x601
    1ce8:	24090002 	li	t1,2
    1cec:	afa90014 	sw	t1,20(sp)
    1cf0:	24a5f70c 	addiu	a1,a1,-2292
    1cf4:	8fa40044 	lw	a0,68(sp)
    1cf8:	e7a80010 	swc1	$f8,16(sp)
    1cfc:	3c063f80 	lui	a2,0x3f80
    1d00:	24070000 	li	a3,0
    1d04:	0c000000 	jal	0 <func_80915A10>
    1d08:	e7aa0018 	swc1	$f10,24(sp)
    1d0c:	8fa20060 	lw	v0,96(sp)
    1d10:	44809000 	mtc1	zero,$f18
    1d14:	3c01c1f0 	lui	at,0xc1f0
    1d18:	44818000 	mtc1	at,$f16
    1d1c:	e4520024 	swc1	$f18,36(v0)
    1d20:	1000018d 	b	2358 <L80917D68>
    1d24:	e450002c 	swc1	$f16,44(v0)

00001d28 <L80917738>:
    1d28:	3c014100 	lui	at,0x4100
    1d2c:	44813000 	mtc1	at,$f6
    1d30:	c6040024 	lwc1	$f4,36(s0)
    1d34:	3c0142b4 	lui	at,0x42b4
    1d38:	44815000 	mtc1	at,$f10
    1d3c:	46062200 	add.s	$f8,$f4,$f6
    1d40:	3c0141f0 	lui	at,0x41f0
    1d44:	44812000 	mtc1	at,$f4
    1d48:	c6120220 	lwc1	$f18,544(s0)
    1d4c:	460a4400 	add.s	$f16,$f8,$f10
    1d50:	3c063dcc 	lui	a2,0x3dcc
    1d54:	46049182 	mul.s	$f6,$f18,$f4
    1d58:	34c6cccd 	ori	a2,a2,0xcccd
    1d5c:	44058000 	mfc1	a1,$f16
    1d60:	26040290 	addiu	a0,s0,656
    1d64:	44073000 	mfc1	a3,$f6
    1d68:	0c000000 	jal	0 <func_80915A10>
    1d6c:	00000000 	nop
    1d70:	3c014120 	lui	at,0x4120
    1d74:	44815000 	mtc1	at,$f10
    1d78:	3c0141f0 	lui	at,0x41f0
    1d7c:	44812000 	mtc1	at,$f4
    1d80:	8faa0060 	lw	t2,96(sp)
    1d84:	c6120220 	lwc1	$f18,544(s0)
    1d88:	3c063dcc 	lui	a2,0x3dcc
    1d8c:	c5480028 	lwc1	$f8,40(t2)
    1d90:	46049182 	mul.s	$f6,$f18,$f4
    1d94:	34c6cccd 	ori	a2,a2,0xcccd
    1d98:	460a4400 	add.s	$f16,$f8,$f10
    1d9c:	26040294 	addiu	a0,s0,660
    1da0:	44058000 	mfc1	a1,$f16
    1da4:	44073000 	mfc1	a3,$f6
    1da8:	0c000000 	jal	0 <func_80915A10>
    1dac:	00000000 	nop
    1db0:	3c014234 	lui	at,0x4234
    1db4:	44815000 	mtc1	at,$f10
    1db8:	c608002c 	lwc1	$f8,44(s0)
    1dbc:	3c014220 	lui	at,0x4220
    1dc0:	44819000 	mtc1	at,$f18
    1dc4:	460a4400 	add.s	$f16,$f8,$f10
    1dc8:	3c0141f0 	lui	at,0x41f0
    1dcc:	44814000 	mtc1	at,$f8
    1dd0:	c6060220 	lwc1	$f6,544(s0)
    1dd4:	46128100 	add.s	$f4,$f16,$f18
    1dd8:	3c063dcc 	lui	a2,0x3dcc
    1ddc:	46083282 	mul.s	$f10,$f6,$f8
    1de0:	34c6cccd 	ori	a2,a2,0xcccd
    1de4:	44052000 	mfc1	a1,$f4
    1de8:	26040298 	addiu	a0,s0,664
    1dec:	44075000 	mfc1	a3,$f10
    1df0:	0c000000 	jal	0 <func_80915A10>
    1df4:	00000000 	nop
    1df8:	c6100024 	lwc1	$f16,36(s0)
    1dfc:	c6120028 	lwc1	$f18,40(s0)
    1e00:	c604002c 	lwc1	$f4,44(s0)
    1e04:	2604014c 	addiu	a0,s0,332
    1e08:	e610029c 	swc1	$f16,668(s0)
    1e0c:	e61202a0 	swc1	$f18,672(s0)
    1e10:	e60402a4 	swc1	$f4,676(s0)
    1e14:	0c000000 	jal	0 <func_80915A10>
    1e18:	afa40044 	sw	a0,68(sp)
    1e1c:	260400b4 	addiu	a0,s0,180
    1e20:	00002825 	move	a1,zero
    1e24:	24060002 	li	a2,2
    1e28:	0c000000 	jal	0 <func_80915A10>
    1e2c:	24070bb8 	li	a3,3000
    1e30:	8fab006c 	lw	t3,108(sp)
    1e34:	02002025 	move	a0,s0
    1e38:	0c000000 	jal	0 <func_80915A10>
    1e3c:	8d651c44 	lw	a1,7236(t3)
    1e40:	00022c00 	sll	a1,v0,0x10
    1e44:	00052c03 	sra	a1,a1,0x10
    1e48:	26040032 	addiu	a0,s0,50
    1e4c:	24060002 	li	a2,2
    1e50:	0c000000 	jal	0 <func_80915A10>
    1e54:	240707d0 	li	a3,2000
    1e58:	960c0088 	lhu	t4,136(s0)
    1e5c:	3c040601 	lui	a0,0x601
    1e60:	240e0082 	li	t6,130
    1e64:	318d0001 	andi	t5,t4,0x1
    1e68:	11a0013b 	beqz	t5,2358 <L80917D68>
    1e6c:	2484f70c 	addiu	a0,a0,-2292
    1e70:	44803000 	mtc1	zero,$f6
    1e74:	a60e01d0 	sh	t6,464(s0)
    1e78:	0c000000 	jal	0 <func_80915A10>
    1e7c:	e6060060 	swc1	$f6,96(s0)
    1e80:	44824000 	mtc1	v0,$f8
    1e84:	3c01c000 	lui	at,0xc000
    1e88:	44818000 	mtc1	at,$f16
    1e8c:	468042a0 	cvt.s.w	$f10,$f8
    1e90:	3c050601 	lui	a1,0x601
    1e94:	240f0002 	li	t7,2
    1e98:	afaf0014 	sw	t7,20(sp)
    1e9c:	24a5f70c 	addiu	a1,a1,-2292
    1ea0:	8fa40044 	lw	a0,68(sp)
    1ea4:	e7aa0010 	swc1	$f10,16(sp)
    1ea8:	3c063f80 	lui	a2,0x3f80
    1eac:	24070000 	li	a3,0
    1eb0:	0c000000 	jal	0 <func_80915A10>
    1eb4:	e7b00018 	swc1	$f16,24(sp)
    1eb8:	3c040601 	lui	a0,0x601
    1ebc:	0c000000 	jal	0 <func_80915A10>
    1ec0:	2484f70c 	addiu	a0,a0,-2292
    1ec4:	44829000 	mtc1	v0,$f18
    1ec8:	02002025 	move	a0,s0
    1ecc:	00003025 	move	a2,zero
    1ed0:	46809120 	cvt.s.w	$f4,$f18
    1ed4:	24070005 	li	a3,5
    1ed8:	e604021c 	swc1	$f4,540(s0)
    1edc:	0c000000 	jal	0 <func_80915A10>
    1ee0:	8fa5006c 	lw	a1,108(sp)
    1ee4:	2418000f 	li	t8,15
    1ee8:	44806000 	mtc1	zero,$f12
    1eec:	a61801d2 	sh	t8,466(s0)
    1ef0:	240500c8 	li	a1,200
    1ef4:	24060014 	li	a2,20
    1ef8:	0c000000 	jal	0 <func_80915A10>
    1efc:	24070014 	li	a3,20
    1f00:	10000116 	b	235c <L80917D68+0x4>
    1f04:	860501bc 	lh	a1,444(s0)
    1f08:	3c014100 	lui	at,0x4100
    1f0c:	44814000 	mtc1	at,$f8
    1f10:	c6060024 	lwc1	$f6,36(s0)
    1f14:	3c0142b4 	lui	at,0x42b4
    1f18:	44818000 	mtc1	at,$f16
    1f1c:	46083280 	add.s	$f10,$f6,$f8
    1f20:	3c0141f0 	lui	at,0x41f0
    1f24:	44813000 	mtc1	at,$f6
    1f28:	c6040220 	lwc1	$f4,544(s0)
    1f2c:	46105480 	add.s	$f18,$f10,$f16
    1f30:	3c063dcc 	lui	a2,0x3dcc
    1f34:	46062202 	mul.s	$f8,$f4,$f6
    1f38:	34c6cccd 	ori	a2,a2,0xcccd
    1f3c:	44059000 	mfc1	a1,$f18
    1f40:	26040290 	addiu	a0,s0,656
    1f44:	44074000 	mfc1	a3,$f8
    1f48:	0c000000 	jal	0 <func_80915A10>
    1f4c:	00000000 	nop
    1f50:	3c014120 	lui	at,0x4120
    1f54:	44818000 	mtc1	at,$f16
    1f58:	3c0141f0 	lui	at,0x41f0
    1f5c:	44813000 	mtc1	at,$f6
    1f60:	8fb90060 	lw	t9,96(sp)
    1f64:	c6040220 	lwc1	$f4,544(s0)
    1f68:	3c063dcc 	lui	a2,0x3dcc
    1f6c:	c72a0028 	lwc1	$f10,40(t9)
    1f70:	46062202 	mul.s	$f8,$f4,$f6
    1f74:	34c6cccd 	ori	a2,a2,0xcccd
    1f78:	46105480 	add.s	$f18,$f10,$f16
    1f7c:	26040294 	addiu	a0,s0,660
    1f80:	44059000 	mfc1	a1,$f18
    1f84:	44074000 	mfc1	a3,$f8
    1f88:	0c000000 	jal	0 <func_80915A10>
    1f8c:	00000000 	nop
    1f90:	3c014234 	lui	at,0x4234
    1f94:	44818000 	mtc1	at,$f16
    1f98:	c60a002c 	lwc1	$f10,44(s0)
    1f9c:	3c014220 	lui	at,0x4220
    1fa0:	44812000 	mtc1	at,$f4
    1fa4:	46105480 	add.s	$f18,$f10,$f16
    1fa8:	3c0141f0 	lui	at,0x41f0
    1fac:	44815000 	mtc1	at,$f10
    1fb0:	c6080220 	lwc1	$f8,544(s0)
    1fb4:	46049180 	add.s	$f6,$f18,$f4
    1fb8:	3c063dcc 	lui	a2,0x3dcc
    1fbc:	460a4402 	mul.s	$f16,$f8,$f10
    1fc0:	34c6cccd 	ori	a2,a2,0xcccd
    1fc4:	44053000 	mfc1	a1,$f6
    1fc8:	26040298 	addiu	a0,s0,664
    1fcc:	44078000 	mfc1	a3,$f16
    1fd0:	0c000000 	jal	0 <func_80915A10>
    1fd4:	00000000 	nop
    1fd8:	260400b4 	addiu	a0,s0,180
    1fdc:	00002825 	move	a1,zero
    1fe0:	24060002 	li	a2,2
    1fe4:	0c000000 	jal	0 <func_80915A10>
    1fe8:	24070bb8 	li	a3,3000
    1fec:	8fa8006c 	lw	t0,108(sp)
    1ff0:	02002025 	move	a0,s0
    1ff4:	0c000000 	jal	0 <func_80915A10>
    1ff8:	8d051c44 	lw	a1,7236(t0)
    1ffc:	00022c00 	sll	a1,v0,0x10
    2000:	00052c03 	sra	a1,a1,0x10
    2004:	26040032 	addiu	a0,s0,50
    2008:	24060002 	li	a2,2
    200c:	0c000000 	jal	0 <func_80915A10>
    2010:	240707d0 	li	a3,2000
    2014:	2604014c 	addiu	a0,s0,332
    2018:	0c000000 	jal	0 <func_80915A10>
    201c:	afa40044 	sw	a0,68(sp)
    2020:	860301d2 	lh	v1,466(s0)
    2024:	c6120024 	lwc1	$f18,36(s0)
    2028:	c604002c 	lwc1	$f4,44(s0)
    202c:	260402a0 	addiu	a0,s0,672
    2030:	e612029c 	swc1	$f18,668(s0)
    2034:	10600018 	beqz	v1,2098 <L80917738+0x370>
    2038:	e60402a4 	swc1	$f4,676(s0)
    203c:	44833000 	mtc1	v1,$f6
    2040:	3c010000 	lui	at,0x0
    2044:	c42a0000 	lwc1	$f10,0(at)
    2048:	46803220 	cvt.s.w	$f8,$f6
    204c:	3c013f00 	lui	at,0x3f00
    2050:	44819000 	mtc1	at,$f18
    2054:	460a4402 	mul.s	$f16,$f8,$f10
    2058:	00000000 	nop
    205c:	46128302 	mul.s	$f12,$f16,$f18
    2060:	0c000000 	jal	0 <func_80915A10>
    2064:	00000000 	nop
    2068:	860901d2 	lh	t1,466(s0)
    206c:	3c010000 	lui	at,0x0
    2070:	c42a0000 	lwc1	$f10,0(at)
    2074:	44892000 	mtc1	t1,$f4
    2078:	c6120028 	lwc1	$f18,40(s0)
    207c:	468021a0 	cvt.s.w	$f6,$f4
    2080:	46003202 	mul.s	$f8,$f6,$f0
    2084:	00000000 	nop
    2088:	460a4402 	mul.s	$f16,$f8,$f10
    208c:	46128100 	add.s	$f4,$f16,$f18
    2090:	10000006 	b	20ac <L80917738+0x384>
    2094:	e60402a0 	swc1	$f4,672(s0)
    2098:	3c063dcc 	lui	a2,0x3dcc
    209c:	34c6cccd 	ori	a2,a2,0xcccd
    20a0:	8e05003c 	lw	a1,60(s0)
    20a4:	0c000000 	jal	0 <func_80915A10>
    20a8:	3c074120 	lui	a3,0x4120
    20ac:	8fa40044 	lw	a0,68(sp)
    20b0:	0c000000 	jal	0 <func_80915A10>
    20b4:	3c054220 	lui	a1,0x4220
    20b8:	10400026 	beqz	v0,2154 <L80917738+0x42c>
    20bc:	02002025 	move	a0,s0
    20c0:	0c000000 	jal	0 <func_80915A10>
    20c4:	2405380e 	li	a1,14350
    20c8:	3c0a0000 	lui	t2,0x0
    20cc:	954a0ee2 	lhu	t2,3810(t2)
    20d0:	8fa4006c 	lw	a0,108(sp)
    20d4:	3c020602 	lui	v0,0x602
    20d8:	314b0001 	andi	t3,t2,0x1
    20dc:	15600016 	bnez	t3,2138 <L80917738+0x410>
    20e0:	24851d4c 	addiu	a1,a0,7500
    20e4:	24429ba8 	addiu	v0,v0,-25688
    20e8:	00026100 	sll	t4,v0,0x4
    20ec:	000c6f02 	srl	t5,t4,0x1c
    20f0:	000d7080 	sll	t6,t5,0x2
    20f4:	3c0f0000 	lui	t7,0x0
    20f8:	01ee7821 	addu	t7,t7,t6
    20fc:	3c0100ff 	lui	at,0xff
    2100:	8def0000 	lw	t7,0(t7)
    2104:	3421ffff 	ori	at,at,0xffff
    2108:	0041c024 	and	t8,v0,at
    210c:	3c018000 	lui	at,0x8000
    2110:	241900b4 	li	t9,180
    2114:	24080080 	li	t0,128
    2118:	24090028 	li	t1,40
    211c:	01f83021 	addu	a2,t7,t8
    2120:	00c13021 	addu	a2,a2,at
    2124:	afa90018 	sw	t1,24(sp)
    2128:	afa80014 	sw	t0,20(sp)
    212c:	afb90010 	sw	t9,16(sp)
    2130:	0c000000 	jal	0 <func_80915A10>
    2134:	240700a0 	li	a3,160
    2138:	0c000000 	jal	0 <func_80915A10>
    213c:	2404001b 	li	a0,27
    2140:	3c0a0000 	lui	t2,0x0
    2144:	954a0ee2 	lhu	t2,3810(t2)
    2148:	3c010000 	lui	at,0x0
    214c:	354b0001 	ori	t3,t2,0x1
    2150:	a42b0ee2 	sh	t3,3810(at)
    2154:	8fa40044 	lw	a0,68(sp)
    2158:	0c000000 	jal	0 <func_80915A10>
    215c:	8e05021c 	lw	a1,540(s0)
    2160:	1040007d 	beqz	v0,2358 <L80917D68>
    2164:	240c008c 	li	t4,140
    2168:	3c040600 	lui	a0,0x600
    216c:	a60c01d0 	sh	t4,464(s0)
    2170:	0c000000 	jal	0 <func_80915A10>
    2174:	24840ae8 	addiu	a0,a0,2792
    2178:	44823000 	mtc1	v0,$f6
    217c:	3c01c120 	lui	at,0xc120
    2180:	44815000 	mtc1	at,$f10
    2184:	46803220 	cvt.s.w	$f8,$f6
    2188:	3c050600 	lui	a1,0x600
    218c:	24a50ae8 	addiu	a1,a1,2792
    2190:	8fa40044 	lw	a0,68(sp)
    2194:	3c063f80 	lui	a2,0x3f80
    2198:	24070000 	li	a3,0
    219c:	e7a80010 	swc1	$f8,16(sp)
    21a0:	afa00014 	sw	zero,20(sp)
    21a4:	0c000000 	jal	0 <func_80915A10>
    21a8:	e7aa0018 	swc1	$f10,24(sp)
    21ac:	240d0014 	li	t5,20
    21b0:	10000069 	b	2358 <L80917D68>
    21b4:	a60d01d2 	sh	t5,466(s0)
    21b8:	0c000000 	jal	0 <func_80915A10>
    21bc:	2604014c 	addiu	a0,s0,332
    21c0:	3c063dcc 	lui	a2,0x3dcc
    21c4:	34c6cccd 	ori	a2,a2,0xcccd
    21c8:	260402a0 	addiu	a0,s0,672
    21cc:	8e05003c 	lw	a1,60(s0)
    21d0:	0c000000 	jal	0 <func_80915A10>
    21d4:	3c074120 	lui	a3,0x4120
    21d8:	860e01d2 	lh	t6,466(s0)
    21dc:	240f001e 	li	t7,30
    21e0:	24180096 	li	t8,150
    21e4:	15c0005c 	bnez	t6,2358 <L80917D68>
    21e8:	00002825 	move	a1,zero
    21ec:	a60f01d2 	sh	t7,466(s0)
    21f0:	a61801d0 	sh	t8,464(s0)
    21f4:	8fa4006c 	lw	a0,108(sp)
    21f8:	0c000000 	jal	0 <func_80915A10>
    21fc:	24060003 	li	a2,3
    2200:	10000056 	b	235c <L80917D68+0x4>
    2204:	860501bc 	lh	a1,444(s0)
    2208:	0c000000 	jal	0 <func_80915A10>
    220c:	2604014c 	addiu	a0,s0,332
    2210:	3c014316 	lui	at,0x4316
    2214:	44819000 	mtc1	at,$f18
    2218:	c6100024 	lwc1	$f16,36(s0)
    221c:	3c010000 	lui	at,0x0
    2220:	c4260000 	lwc1	$f6,0(at)
    2224:	46128100 	add.s	$f4,$f16,$f18
    2228:	26040290 	addiu	a0,s0,656
    222c:	3c063e4c 	lui	a2,0x3e4c
    2230:	34c6cccd 	ori	a2,a2,0xcccd
    2234:	44052000 	mfc1	a1,$f4
    2238:	afa40044 	sw	a0,68(sp)
    223c:	3c0742c8 	lui	a3,0x42c8
    2240:	0c000000 	jal	0 <func_80915A10>
    2244:	e7a60010 	swc1	$f6,16(sp)
    2248:	3c0141a0 	lui	at,0x41a0
    224c:	44815000 	mtc1	at,$f10
    2250:	c6080028 	lwc1	$f8,40(s0)
    2254:	3c010000 	lui	at,0x0
    2258:	c4320000 	lwc1	$f18,0(at)
    225c:	460a4400 	add.s	$f16,$f8,$f10
    2260:	3c063e4c 	lui	a2,0x3e4c
    2264:	34c6cccd 	ori	a2,a2,0xcccd
    2268:	26040294 	addiu	a0,s0,660
    226c:	44058000 	mfc1	a1,$f16
    2270:	3c0742c8 	lui	a3,0x42c8
    2274:	0c000000 	jal	0 <func_80915A10>
    2278:	e7b20010 	swc1	$f18,16(sp)
    227c:	3c01435c 	lui	at,0x435c
    2280:	44813000 	mtc1	at,$f6
    2284:	c604002c 	lwc1	$f4,44(s0)
    2288:	3c010000 	lui	at,0x0
    228c:	c42a0000 	lwc1	$f10,0(at)
    2290:	46062200 	add.s	$f8,$f4,$f6
    2294:	3c063e4c 	lui	a2,0x3e4c
    2298:	34c6cccd 	ori	a2,a2,0xcccd
    229c:	26040298 	addiu	a0,s0,664
    22a0:	44054000 	mfc1	a1,$f8
    22a4:	3c0742c8 	lui	a3,0x42c8
    22a8:	0c000000 	jal	0 <func_80915A10>
    22ac:	e7aa0010 	swc1	$f10,16(sp)
    22b0:	861901d2 	lh	t9,466(s0)
    22b4:	8fa4006c 	lw	a0,108(sp)
    22b8:	57200028 	bnezl	t9,235c <L80917D68+0x4>
    22bc:	860501bc 	lh	a1,444(s0)
    22c0:	0c000000 	jal	0 <func_80915A10>
    22c4:	00002825 	move	a1,zero
    22c8:	8fa30044 	lw	v1,68(sp)
    22cc:	00003025 	move	a2,zero
    22d0:	8c690000 	lw	t1,0(v1)
    22d4:	ac49005c 	sw	t1,92(v0)
    22d8:	8c680004 	lw	t0,4(v1)
    22dc:	ac480060 	sw	t0,96(v0)
    22e0:	8c690008 	lw	t1,8(v1)
    22e4:	ac490064 	sw	t1,100(v0)
    22e8:	8c6b0000 	lw	t3,0(v1)
    22ec:	ac4b0074 	sw	t3,116(v0)
    22f0:	8c6a0004 	lw	t2,4(v1)
    22f4:	ac4a0078 	sw	t2,120(v0)
    22f8:	8c6b0008 	lw	t3,8(v1)
    22fc:	ac4b007c 	sw	t3,124(v0)
    2300:	8e0d029c 	lw	t5,668(s0)
    2304:	ac4d0050 	sw	t5,80(v0)
    2308:	8e0c02a0 	lw	t4,672(s0)
    230c:	ac4c0054 	sw	t4,84(v0)
    2310:	8e0d02a4 	lw	t5,676(s0)
    2314:	ac4d0058 	sw	t5,88(v0)
    2318:	860501bc 	lh	a1,444(s0)
    231c:	0c000000 	jal	0 <func_80915A10>
    2320:	8fa4006c 	lw	a0,108(sp)
    2324:	a60001bc 	sh	zero,444(s0)
    2328:	0c000000 	jal	0 <func_80915A10>
    232c:	02002025 	move	a0,s0
    2330:	8fa4006c 	lw	a0,108(sp)
    2334:	240e00c8 	li	t6,200
    2338:	a60001be 	sh	zero,446(s0)
    233c:	a60e0196 	sh	t6,406(s0)
    2340:	0c000000 	jal	0 <func_80915A10>
    2344:	24851d64 	addiu	a1,a0,7524
    2348:	8fa4006c 	lw	a0,108(sp)
    234c:	02002825 	move	a1,s0
    2350:	0c000000 	jal	0 <func_80915A10>
    2354:	24060007 	li	a2,7

00002358 <L80917D68>:
    2358:	860501bc 	lh	a1,444(s0)
    235c:	8fa4006c 	lw	a0,108(sp)
    2360:	2606029c 	addiu	a2,s0,668
    2364:	50a00004 	beqzl	a1,2378 <L80917D68+0x20>
    2368:	8fbf003c 	lw	ra,60(sp)
    236c:	0c000000 	jal	0 <func_80915A10>
    2370:	26070290 	addiu	a3,s0,656
    2374:	8fbf003c 	lw	ra,60(sp)
    2378:	8fb00038 	lw	s0,56(sp)
    237c:	27bd0068 	addiu	sp,sp,104
    2380:	03e00008 	jr	ra
    2384:	00000000 	nop

00002388 <func_80917D98>:
    2388:	27bdff40 	addiu	sp,sp,-192
    238c:	3c0f0000 	lui	t7,0x0
    2390:	afbf0044 	sw	ra,68(sp)
    2394:	afb30040 	sw	s3,64(sp)
    2398:	afb2003c 	sw	s2,60(sp)
    239c:	afb10038 	sw	s1,56(sp)
    23a0:	afb00034 	sw	s0,52(sp)
    23a4:	25ef0000 	addiu	t7,t7,0
    23a8:	8df90000 	lw	t9,0(t7)
    23ac:	27ae00a8 	addiu	t6,sp,168
    23b0:	8df80004 	lw	t8,4(t7)
    23b4:	add90000 	sw	t9,0(t6)
    23b8:	8df90008 	lw	t9,8(t7)
    23bc:	3c090000 	lui	t1,0x0
    23c0:	25290000 	addiu	t1,t1,0
    23c4:	add80004 	sw	t8,4(t6)
    23c8:	add90008 	sw	t9,8(t6)
    23cc:	8d2b0000 	lw	t3,0(t1)
    23d0:	27a8009c 	addiu	t0,sp,156
    23d4:	8d2a0004 	lw	t2,4(t1)
    23d8:	ad0b0000 	sw	t3,0(t0)
    23dc:	8d2b0008 	lw	t3,8(t1)
    23e0:	ad0a0004 	sw	t2,4(t0)
    23e4:	3c0c0000 	lui	t4,0x0
    23e8:	ad0b0008 	sw	t3,8(t0)
    23ec:	3c0d0000 	lui	t5,0x0
    23f0:	8d8c0000 	lw	t4,0(t4)
    23f4:	8dad0000 	lw	t5,0(t5)
    23f8:	3c0f0000 	lui	t7,0x0
    23fc:	25ef0000 	addiu	t7,t7,0
    2400:	afac0098 	sw	t4,152(sp)
    2404:	afad0094 	sw	t5,148(sp)
    2408:	8df90000 	lw	t9,0(t7)
    240c:	27ae0088 	addiu	t6,sp,136
    2410:	8df80004 	lw	t8,4(t7)
    2414:	add90000 	sw	t9,0(t6)
    2418:	8df90008 	lw	t9,8(t7)
    241c:	3c090000 	lui	t1,0x0
    2420:	25290000 	addiu	t1,t1,0
    2424:	add80004 	sw	t8,4(t6)
    2428:	add90008 	sw	t9,8(t6)
    242c:	8d2b0000 	lw	t3,0(t1)
    2430:	27a8007c 	addiu	t0,sp,124
    2434:	8d2a0004 	lw	t2,4(t1)
    2438:	ad0b0000 	sw	t3,0(t0)
    243c:	8d2b0008 	lw	t3,8(t1)
    2440:	ad0a0004 	sw	t2,4(t0)
    2444:	00809025 	move	s2,a0
    2448:	ad0b0008 	sw	t3,8(t0)
    244c:	8cac1c44 	lw	t4,7236(a1)
    2450:	2490014c 	addiu	s0,a0,332
    2454:	00a09825 	move	s3,a1
    2458:	02002025 	move	a0,s0
    245c:	0c000000 	jal	0 <func_80915A10>
    2460:	afac0068 	sw	t4,104(sp)
    2464:	264400b4 	addiu	a0,s2,180
    2468:	00002825 	move	a1,zero
    246c:	24060002 	li	a2,2
    2470:	0c000000 	jal	0 <func_80915A10>
    2474:	24070bb8 	li	a3,3000
    2478:	02002025 	move	a0,s0
    247c:	0c000000 	jal	0 <func_80915A10>
    2480:	3c0542d6 	lui	a1,0x42d6
    2484:	1040000a 	beqz	v0,24b0 <func_80917D98+0x128>
    2488:	02402025 	move	a0,s2
    248c:	02602825 	move	a1,s3
    2490:	00003025 	move	a2,zero
    2494:	0c000000 	jal	0 <func_80915A10>
    2498:	24070008 	li	a3,8
    249c:	44806000 	mtc1	zero,$f12
    24a0:	24050096 	li	a1,150
    24a4:	24060014 	li	a2,20
    24a8:	0c000000 	jal	0 <func_80915A10>
    24ac:	24070014 	li	a3,20
    24b0:	864201d2 	lh	v0,466(s2)
    24b4:	240d0002 	li	t5,2
    24b8:	240e0001 	li	t6,1
    24bc:	240103e9 	li	at,1001
    24c0:	a64d01b8 	sh	t5,440(s2)
    24c4:	14410012 	bne	v0,at,2510 <func_80917D98+0x188>
    24c8:	a64e01b4 	sh	t6,436(s2)
    24cc:	3c020000 	lui	v0,0x0
    24d0:	24420000 	addiu	v0,v0,0
    24d4:	00008825 	move	s1,zero
    24d8:	24030001 	li	v1,1
    24dc:	00517821 	addu	t7,v0,s1
    24e0:	91f80000 	lbu	t8,0(t7)
    24e4:	0251c821 	addu	t9,s2,s1
    24e8:	53000003 	beqzl	t8,24f8 <func_80917D98+0x170>
    24ec:	26310001 	addiu	s1,s1,1
    24f0:	a3230758 	sb	v1,1880(t9)
    24f4:	26310001 	addiu	s1,s1,1
    24f8:	00118c00 	sll	s1,s1,0x10
    24fc:	00118c03 	sra	s1,s1,0x10
    2500:	2a21005a 	slti	at,s1,90
    2504:	5420fff6 	bnezl	at,24e0 <func_80917D98+0x158>
    2508:	00517821 	addu	t7,v0,s1
    250c:	864201d2 	lh	v0,466(s2)
    2510:	284104b0 	slti	at,v0,1200
    2514:	10200008 	beqz	at,2538 <func_80917D98+0x1b0>
    2518:	2841044d 	slti	at,v0,1101
    251c:	14200006 	bnez	at,2538 <func_80917D98+0x1b0>
    2520:	30480007 	andi	t0,v0,0x7
    2524:	15000004 	bnez	t0,2538 <func_80917D98+0x1b0>
    2528:	02602025 	move	a0,s3
    252c:	0c000000 	jal	0 <func_80915A10>
    2530:	26450038 	addiu	a1,s2,56
    2534:	864201d2 	lh	v0,466(s2)
    2538:	28410438 	slti	at,v0,1080
    253c:	5020009b 	beqzl	at,27ac <func_80917D98+0x424>
    2540:	864201d0 	lh	v0,464(s2)
    2544:	864901d0 	lh	t1,464(s2)
    2548:	29210003 	slti	at,t1,3
    254c:	10200096 	beqz	at,27a8 <func_80917D98+0x420>
    2550:	2841042e 	slti	at,v0,1070
    2554:	10200003 	beqz	at,2564 <func_80917D98+0x1dc>
    2558:	02402025 	move	a0,s2
    255c:	0c000000 	jal	0 <func_80915A10>
    2560:	2405301c 	li	a1,12316
    2564:	00008825 	move	s1,zero
    2568:	0c000000 	jal	0 <func_80915A10>
    256c:	00000000 	nop
    2570:	3c0142aa 	lui	at,0x42aa
    2574:	44812000 	mtc1	at,$f4
    2578:	3c010000 	lui	at,0x0
    257c:	c4300000 	lwc1	$f16,0(at)
    2580:	46040182 	mul.s	$f6,$f0,$f4
    2584:	3c0141a0 	lui	at,0x41a0
    2588:	4600320d 	trunc.w.s	$f8,$f6
    258c:	44024000 	mfc1	v0,$f8
    2590:	00000000 	nop
    2594:	00025c00 	sll	t3,v0,0x10
    2598:	000b6403 	sra	t4,t3,0x10
    259c:	000c6880 	sll	t5,t4,0x2
    25a0:	01ac6823 	subu	t5,t5,t4
    25a4:	000d6880 	sll	t5,t5,0x2
    25a8:	024d7021 	addu	t6,s2,t5
    25ac:	c5ca02ac 	lwc1	$f10,684(t6)
    25b0:	00021c00 	sll	v1,v0,0x10
    25b4:	00031c03 	sra	v1,v1,0x10
    25b8:	4610503c 	c.lt.s	$f10,$f16
    25bc:	00000000 	nop
    25c0:	45020028 	bc1fl	2664 <func_80917D98+0x2dc>
    25c4:	26310001 	addiu	s1,s1,1
    25c8:	44816000 	mtc1	at,$f12
    25cc:	0c000000 	jal	0 <func_80915A10>
    25d0:	a7a300b6 	sh	v1,182(sp)
    25d4:	87a300b6 	lh	v1,182(sp)
    25d8:	3c014120 	lui	at,0x4120
    25dc:	44816000 	mtc1	at,$f12
    25e0:	00037880 	sll	t7,v1,0x2
    25e4:	01e37823 	subu	t7,t7,v1
    25e8:	000f7880 	sll	t7,t7,0x2
    25ec:	024f8021 	addu	s0,s2,t7
    25f0:	c61202a8 	lwc1	$f18,680(s0)
    25f4:	46009100 	add.s	$f4,$f18,$f0
    25f8:	0c000000 	jal	0 <func_80915A10>
    25fc:	e7a40070 	swc1	$f4,112(sp)
    2600:	c60602ac 	lwc1	$f6,684(s0)
    2604:	3c0141a0 	lui	at,0x41a0
    2608:	44816000 	mtc1	at,$f12
    260c:	46003200 	add.s	$f8,$f6,$f0
    2610:	0c000000 	jal	0 <func_80915A10>
    2614:	e7a80074 	swc1	$f8,116(sp)
    2618:	c60a02b0 	lwc1	$f10,688(s0)
    261c:	27b80098 	addiu	t8,sp,152
    2620:	27b90094 	addiu	t9,sp,148
    2624:	46005400 	add.s	$f16,$f10,$f0
    2628:	240801f4 	li	t0,500
    262c:	2409000a 	li	t1,10
    2630:	240a000a 	li	t2,10
    2634:	e7b00078 	swc1	$f16,120(sp)
    2638:	afaa0020 	sw	t2,32(sp)
    263c:	afa9001c 	sw	t1,28(sp)
    2640:	afa80018 	sw	t0,24(sp)
    2644:	afb90014 	sw	t9,20(sp)
    2648:	afb80010 	sw	t8,16(sp)
    264c:	02602025 	move	a0,s3
    2650:	27a50070 	addiu	a1,sp,112
    2654:	27a600a8 	addiu	a2,sp,168
    2658:	0c000000 	jal	0 <func_80915A10>
    265c:	27a7009c 	addiu	a3,sp,156
    2660:	26310001 	addiu	s1,s1,1
    2664:	00118c00 	sll	s1,s1,0x10
    2668:	00118c03 	sra	s1,s1,0x10
    266c:	2a210004 	slti	at,s1,4
    2670:	1420ffbd 	bnez	at,2568 <func_80917D98+0x1e0>
    2674:	00000000 	nop
    2678:	00008825 	move	s1,zero
    267c:	0c000000 	jal	0 <func_80915A10>
    2680:	00000000 	nop
    2684:	3c0142aa 	lui	at,0x42aa
    2688:	44819000 	mtc1	at,$f18
    268c:	3c010000 	lui	at,0x0
    2690:	c42a0000 	lwc1	$f10,0(at)
    2694:	46120102 	mul.s	$f4,$f0,$f18
    2698:	3c0141a0 	lui	at,0x41a0
    269c:	4600218d 	trunc.w.s	$f6,$f4
    26a0:	44023000 	mfc1	v0,$f6
    26a4:	00000000 	nop
    26a8:	00026400 	sll	t4,v0,0x10
    26ac:	000c6c03 	sra	t5,t4,0x10
    26b0:	000d7080 	sll	t6,t5,0x2
    26b4:	01cd7023 	subu	t6,t6,t5
    26b8:	000e7080 	sll	t6,t6,0x2
    26bc:	024e7821 	addu	t7,s2,t6
    26c0:	c5e802ac 	lwc1	$f8,684(t7)
    26c4:	00021c00 	sll	v1,v0,0x10
    26c8:	00031c03 	sra	v1,v1,0x10
    26cc:	460a403c 	c.lt.s	$f8,$f10
    26d0:	00000000 	nop
    26d4:	4502002f 	bc1fl	2794 <func_80917D98+0x40c>
    26d8:	26310001 	addiu	s1,s1,1
    26dc:	44816000 	mtc1	at,$f12
    26e0:	0c000000 	jal	0 <func_80915A10>
    26e4:	a7a300b6 	sh	v1,182(sp)
    26e8:	87a300b6 	lh	v1,182(sp)
    26ec:	3c014120 	lui	at,0x4120
    26f0:	44816000 	mtc1	at,$f12
    26f4:	0003c080 	sll	t8,v1,0x2
    26f8:	0303c023 	subu	t8,t8,v1
    26fc:	0018c080 	sll	t8,t8,0x2
    2700:	02588021 	addu	s0,s2,t8
    2704:	c61002a8 	lwc1	$f16,680(s0)
    2708:	46008480 	add.s	$f18,$f16,$f0
    270c:	0c000000 	jal	0 <func_80915A10>
    2710:	e7b20070 	swc1	$f18,112(sp)
    2714:	c60402ac 	lwc1	$f4,684(s0)
    2718:	3c0141a0 	lui	at,0x41a0
    271c:	44816000 	mtc1	at,$f12
    2720:	46002180 	add.s	$f6,$f4,$f0
    2724:	0c000000 	jal	0 <func_80915A10>
    2728:	e7a60074 	swc1	$f6,116(sp)
    272c:	c60802b0 	lwc1	$f8,688(s0)
    2730:	46004280 	add.s	$f10,$f8,$f0
    2734:	0c000000 	jal	0 <func_80915A10>
    2738:	e7aa0078 	swc1	$f10,120(sp)
    273c:	3c0140a0 	lui	at,0x40a0
    2740:	44818000 	mtc1	at,$f16
    2744:	240cffff 	li	t4,-1
    2748:	240d000a 	li	t5,10
    274c:	46100482 	mul.s	$f18,$f0,$f16
    2750:	afad001c 	sw	t5,28(sp)
    2754:	afac0018 	sw	t4,24(sp)
    2758:	02602025 	move	a0,s3
    275c:	27a50070 	addiu	a1,sp,112
    2760:	27a60088 	addiu	a2,sp,136
    2764:	27a7007c 	addiu	a3,sp,124
    2768:	4600910d 	trunc.w.s	$f4,$f18
    276c:	afa00010 	sw	zero,16(sp)
    2770:	afa00020 	sw	zero,32(sp)
    2774:	44082000 	mfc1	t0,$f4
    2778:	00000000 	nop
    277c:	00084c00 	sll	t1,t0,0x10
    2780:	00095403 	sra	t2,t1,0x10
    2784:	254b000a 	addiu	t3,t2,10
    2788:	0c000000 	jal	0 <func_80915A10>
    278c:	afab0014 	sw	t3,20(sp)
    2790:	26310001 	addiu	s1,s1,1
    2794:	00118c00 	sll	s1,s1,0x10
    2798:	00118c03 	sra	s1,s1,0x10
    279c:	2a21000f 	slti	at,s1,15
    27a0:	1420ffb6 	bnez	at,267c <func_80917D98+0x2f4>
    27a4:	00000000 	nop
    27a8:	864201d0 	lh	v0,464(s2)
    27ac:	1040000b 	beqz	v0,27dc <func_80917D98+0x454>
    27b0:	24010001 	li	at,1
    27b4:	1041003e 	beq	v0,at,28b0 <func_80917D98+0x528>
    27b8:	24010002 	li	at,2
    27bc:	104100fb 	beq	v0,at,2bac <func_80917D98+0x824>
    27c0:	02602025 	move	a0,s3
    27c4:	24010003 	li	at,3
    27c8:	104101ce 	beq	v0,at,2f04 <func_80917D98+0xb7c>
    27cc:	00008825 	move	s1,zero
    27d0:	3c010001 	lui	at,0x1
    27d4:	10000216 	b	3030 <func_80917D98+0xca8>
    27d8:	02611821 	addu	v1,s3,at
    27dc:	240e0001 	li	t6,1
    27e0:	a64e01d0 	sh	t6,464(s2)
    27e4:	02602025 	move	a0,s3
    27e8:	0c000000 	jal	0 <func_80915A10>
    27ec:	26651d64 	addiu	a1,s3,7524
    27f0:	02602025 	move	a0,s3
    27f4:	02402825 	move	a1,s2
    27f8:	0c000000 	jal	0 <func_80915A10>
    27fc:	24060001 	li	a2,1
    2800:	0c000000 	jal	0 <func_80915A10>
    2804:	02602025 	move	a0,s3
    2808:	a64201bc 	sh	v0,444(s2)
    280c:	02602025 	move	a0,s3
    2810:	00002825 	move	a1,zero
    2814:	0c000000 	jal	0 <func_80915A10>
    2818:	24060003 	li	a2,3
    281c:	02602025 	move	a0,s3
    2820:	864501bc 	lh	a1,444(s2)
    2824:	0c000000 	jal	0 <func_80915A10>
    2828:	24060007 	li	a2,7
    282c:	02602025 	move	a0,s3
    2830:	0c000000 	jal	0 <func_80915A10>
    2834:	00002825 	move	a1,zero
    2838:	c446005c 	lwc1	$f6,92(v0)
    283c:	e6460290 	swc1	$f6,656(s2)
    2840:	c4480060 	lwc1	$f8,96(v0)
    2844:	c6460290 	lwc1	$f6,656(s2)
    2848:	e6480294 	swc1	$f8,660(s2)
    284c:	c44a0064 	lwc1	$f10,100(v0)
    2850:	c6480024 	lwc1	$f8,36(s2)
    2854:	e64a0298 	swc1	$f10,664(s2)
    2858:	c4500050 	lwc1	$f16,80(v0)
    285c:	46083301 	sub.s	$f12,$f6,$f8
    2860:	c64a0298 	lwc1	$f10,664(s2)
    2864:	e650029c 	swc1	$f16,668(s2)
    2868:	c4520054 	lwc1	$f18,84(v0)
    286c:	c650002c 	lwc1	$f16,44(s2)
    2870:	e65202a0 	swc1	$f18,672(s2)
    2874:	46105381 	sub.s	$f14,$f10,$f16
    2878:	c4440058 	lwc1	$f4,88(v0)
    287c:	460c6482 	mul.s	$f18,$f12,$f12
    2880:	e64402a4 	swc1	$f4,676(s2)
    2884:	460e7102 	mul.s	$f4,$f14,$f14
    2888:	46049000 	add.s	$f0,$f18,$f4
    288c:	46000004 	sqrt.s	$f0,$f0
    2890:	0c000000 	jal	0 <func_80915A10>
    2894:	e6400228 	swc1	$f0,552(s2)
    2898:	240f010e 	li	t7,270
    289c:	3c010001 	lui	at,0x1
    28a0:	e640022c 	swc1	$f0,556(s2)
    28a4:	a64f01d4 	sh	t7,468(s2)
    28a8:	100001e1 	b	3030 <func_80917D98+0xca8>
    28ac:	02611821 	addu	v1,s3,at
    28b0:	0c000000 	jal	0 <func_80915A10>
    28b4:	864400b6 	lh	a0,182(s2)
    28b8:	3c0142c8 	lui	at,0x42c8
    28bc:	44813000 	mtc1	at,$f6
    28c0:	00000000 	nop
    28c4:	46060202 	mul.s	$f8,$f0,$f6
    28c8:	e7a800bc 	swc1	$f8,188(sp)
    28cc:	0c000000 	jal	0 <func_80915A10>
    28d0:	864400b6 	lh	a0,182(s2)
    28d4:	3c0142c8 	lui	at,0x42c8
    28d8:	44815000 	mtc1	at,$f10
    28dc:	c7ac00bc 	lwc1	$f12,188(sp)
    28e0:	c6500024 	lwc1	$f16,36(s2)
    28e4:	460a0382 	mul.s	$f14,$f0,$f10
    28e8:	8fa40068 	lw	a0,104(sp)
    28ec:	460c8480 	add.s	$f18,$f16,$f12
    28f0:	3c063f00 	lui	a2,0x3f00
    28f4:	3c0740a0 	lui	a3,0x40a0
    28f8:	24840024 	addiu	a0,a0,36
    28fc:	44059000 	mfc1	a1,$f18
    2900:	0c000000 	jal	0 <func_80915A10>
    2904:	e7ae00b8 	swc1	$f14,184(sp)
    2908:	c7ae00b8 	lwc1	$f14,184(sp)
    290c:	c644002c 	lwc1	$f4,44(s2)
    2910:	8fa40068 	lw	a0,104(sp)
    2914:	3c063f00 	lui	a2,0x3f00
    2918:	460e2180 	add.s	$f6,$f4,$f14
    291c:	3c0740a0 	lui	a3,0x40a0
    2920:	2484002c 	addiu	a0,a0,44
    2924:	44053000 	mfc1	a1,$f6
    2928:	0c000000 	jal	0 <func_80915A10>
    292c:	00000000 	nop
    2930:	864201d2 	lh	v0,466(s2)
    2934:	28410438 	slti	at,v0,1080
    2938:	10200014 	beqz	at,298c <func_80917D98+0x604>
    293c:	24180001 	li	t8,1
    2940:	3c100000 	lui	s0,0x0
    2944:	a65801c2 	sh	t8,450(s2)
    2948:	26100000 	addiu	s0,s0,0
    294c:	00008825 	move	s1,zero
    2950:	02002025 	move	a0,s0
    2954:	0c000000 	jal	0 <func_80915A10>
    2958:	864501c0 	lh	a1,448(s2)
    295c:	864201c0 	lh	v0,448(s2)
    2960:	26310001 	addiu	s1,s1,1
    2964:	00118c00 	sll	s1,s1,0x10
    2968:	28410100 	slti	at,v0,256
    296c:	10200003 	beqz	at,297c <func_80917D98+0x5f4>
    2970:	00118c03 	sra	s1,s1,0x10
    2974:	24590001 	addiu	t9,v0,1
    2978:	a65901c0 	sh	t9,448(s2)
    297c:	2a210004 	slti	at,s1,4
    2980:	5420fff4 	bnezl	at,2954 <func_80917D98+0x5cc>
    2984:	02002025 	move	a0,s0
    2988:	864201d2 	lh	v0,466(s2)
    298c:	2841042e 	slti	at,v0,1070
    2990:	1020000f 	beqz	at,29d0 <func_80917D98+0x648>
    2994:	00000000 	nop
    2998:	86480194 	lh	t0,404(s2)
    299c:	31090003 	andi	t1,t0,0x3
    29a0:	1520000b 	bnez	t1,29d0 <func_80917D98+0x648>
    29a4:	00000000 	nop
    29a8:	0c000000 	jal	0 <func_80915A10>
    29ac:	00000000 	nop
    29b0:	3c013f00 	lui	at,0x3f00
    29b4:	44814000 	mtc1	at,$f8
    29b8:	240a0003 	li	t2,3
    29bc:	4608003c 	c.lt.s	$f0,$f8
    29c0:	00000000 	nop
    29c4:	45000002 	bc1f	29d0 <func_80917D98+0x648>
    29c8:	00000000 	nop
    29cc:	a64a01c4 	sh	t2,452(s2)
    29d0:	3c010000 	lui	at,0x0
    29d4:	c4300000 	lwc1	$f16,0(at)
    29d8:	c64a022c 	lwc1	$f10,556(s2)
    29dc:	3c063dcc 	lui	a2,0x3dcc
    29e0:	34c6cccd 	ori	a2,a2,0xcccd
    29e4:	46105480 	add.s	$f18,$f10,$f16
    29e8:	26440228 	addiu	a0,s2,552
    29ec:	3c054316 	lui	a1,0x4316
    29f0:	3c0740a0 	lui	a3,0x40a0
    29f4:	0c000000 	jal	0 <func_80915A10>
    29f8:	e652022c 	swc1	$f18,556(s2)
    29fc:	0c000000 	jal	0 <func_80915A10>
    2a00:	c64c022c 	lwc1	$f12,556(s2)
    2a04:	c6440228 	lwc1	$f4,552(s2)
    2a08:	46002182 	mul.s	$f6,$f4,$f0
    2a0c:	e7a600bc 	swc1	$f6,188(sp)
    2a10:	0c000000 	jal	0 <func_80915A10>
    2a14:	c64c022c 	lwc1	$f12,556(s2)
    2a18:	c6480228 	lwc1	$f8,552(s2)
    2a1c:	c7ac00bc 	lwc1	$f12,188(sp)
    2a20:	c64a0024 	lwc1	$f10,36(s2)
    2a24:	46004382 	mul.s	$f14,$f8,$f0
    2a28:	3c010000 	lui	at,0x0
    2a2c:	460c5400 	add.s	$f16,$f10,$f12
    2a30:	c4320000 	lwc1	$f18,0(at)
    2a34:	3c063e4c 	lui	a2,0x3e4c
    2a38:	34c6cccd 	ori	a2,a2,0xcccd
    2a3c:	44058000 	mfc1	a1,$f16
    2a40:	e7ae00b8 	swc1	$f14,184(sp)
    2a44:	26440290 	addiu	a0,s2,656
    2a48:	3c074248 	lui	a3,0x4248
    2a4c:	0c000000 	jal	0 <func_80915A10>
    2a50:	e7b20010 	swc1	$f18,16(sp)
    2a54:	3c0141a0 	lui	at,0x41a0
    2a58:	44813000 	mtc1	at,$f6
    2a5c:	c6440028 	lwc1	$f4,40(s2)
    2a60:	3c010000 	lui	at,0x0
    2a64:	c42a0000 	lwc1	$f10,0(at)
    2a68:	46062200 	add.s	$f8,$f4,$f6
    2a6c:	3c063e4c 	lui	a2,0x3e4c
    2a70:	34c6cccd 	ori	a2,a2,0xcccd
    2a74:	26440294 	addiu	a0,s2,660
    2a78:	44054000 	mfc1	a1,$f8
    2a7c:	3c074248 	lui	a3,0x4248
    2a80:	0c000000 	jal	0 <func_80915A10>
    2a84:	e7aa0010 	swc1	$f10,16(sp)
    2a88:	c7ae00b8 	lwc1	$f14,184(sp)
    2a8c:	c650002c 	lwc1	$f16,44(s2)
    2a90:	3c010000 	lui	at,0x0
    2a94:	c4240000 	lwc1	$f4,0(at)
    2a98:	460e8480 	add.s	$f18,$f16,$f14
    2a9c:	3c063e4c 	lui	a2,0x3e4c
    2aa0:	34c6cccd 	ori	a2,a2,0xcccd
    2aa4:	26440298 	addiu	a0,s2,664
    2aa8:	44059000 	mfc1	a1,$f18
    2aac:	3c074248 	lui	a3,0x4248
    2ab0:	0c000000 	jal	0 <func_80915A10>
    2ab4:	e7a40010 	swc1	$f4,16(sp)
    2ab8:	3c010000 	lui	at,0x0
    2abc:	c4260000 	lwc1	$f6,0(at)
    2ac0:	8e45026c 	lw	a1,620(s2)
    2ac4:	3c063e4c 	lui	a2,0x3e4c
    2ac8:	34c6cccd 	ori	a2,a2,0xcccd
    2acc:	2644029c 	addiu	a0,s2,668
    2ad0:	3c074248 	lui	a3,0x4248
    2ad4:	0c000000 	jal	0 <func_80915A10>
    2ad8:	e7a60010 	swc1	$f6,16(sp)
    2adc:	3c010000 	lui	at,0x0
    2ae0:	c4280000 	lwc1	$f8,0(at)
    2ae4:	8e45003c 	lw	a1,60(s2)
    2ae8:	264402a0 	addiu	a0,s2,672
    2aec:	3c063f00 	lui	a2,0x3f00
    2af0:	3c0742c8 	lui	a3,0x42c8
    2af4:	0c000000 	jal	0 <func_80915A10>
    2af8:	e7a80010 	swc1	$f8,16(sp)
    2afc:	3c010000 	lui	at,0x0
    2b00:	c42a0000 	lwc1	$f10,0(at)
    2b04:	8e450274 	lw	a1,628(s2)
    2b08:	3c063e4c 	lui	a2,0x3e4c
    2b0c:	34c6cccd 	ori	a2,a2,0xcccd
    2b10:	264402a4 	addiu	a0,s2,676
    2b14:	3c074248 	lui	a3,0x4248
    2b18:	0c000000 	jal	0 <func_80915A10>
    2b1c:	e7aa0010 	swc1	$f10,16(sp)
    2b20:	864201d4 	lh	v0,468(s2)
    2b24:	24010050 	li	at,80
    2b28:	14410004 	bne	v0,at,2b3c <func_80917D98+0x7b4>
    2b2c:	00000000 	nop
    2b30:	0c000000 	jal	0 <func_80915A10>
    2b34:	24040021 	li	a0,33
    2b38:	864201d4 	lh	v0,468(s2)
    2b3c:	14400018 	bnez	v0,2ba0 <func_80917D98+0x818>
    2b40:	240b0002 	li	t3,2
    2b44:	a64b01d0 	sh	t3,464(s2)
    2b48:	02602025 	move	a0,s3
    2b4c:	00002825 	move	a1,zero
    2b50:	0c000000 	jal	0 <func_80915A10>
    2b54:	24060003 	li	a2,3
    2b58:	44808000 	mtc1	zero,$f16
    2b5c:	c6520028 	lwc1	$f18,40(s2)
    2b60:	240c0046 	li	t4,70
    2b64:	a64c01d4 	sh	t4,468(s2)
    2b68:	a64001c0 	sh	zero,448(s2)
    2b6c:	8e470024 	lw	a3,36(s2)
    2b70:	e6500220 	swc1	$f16,544(s2)
    2b74:	e7b20010 	swc1	$f18,16(sp)
    2b78:	c644002c 	lwc1	$f4,44(s2)
    2b7c:	afa00024 	sw	zero,36(sp)
    2b80:	afa00020 	sw	zero,32(sp)
    2b84:	afa0001c 	sw	zero,28(sp)
    2b88:	afa00018 	sw	zero,24(sp)
    2b8c:	26641c24 	addiu	a0,s3,7204
    2b90:	02602825 	move	a1,s3
    2b94:	2406005f 	li	a2,95
    2b98:	0c000000 	jal	0 <func_80915A10>
    2b9c:	e7a40014 	swc1	$f4,20(sp)
    2ba0:	3c010001 	lui	at,0x1
    2ba4:	10000122 	b	3030 <func_80917D98+0xca8>
    2ba8:	02611821 	addu	v1,s3,at
    2bac:	0c000000 	jal	0 <func_80915A10>
    2bb0:	00002825 	move	a1,zero
    2bb4:	3c014248 	lui	at,0x4248
    2bb8:	44814000 	mtc1	at,$f8
    2bbc:	c6460220 	lwc1	$f6,544(s2)
    2bc0:	3c010000 	lui	at,0x0
    2bc4:	c4300000 	lwc1	$f16,0(at)
    2bc8:	46083282 	mul.s	$f10,$f6,$f8
    2bcc:	8c45005c 	lw	a1,92(v0)
    2bd0:	3c063e4c 	lui	a2,0x3e4c
    2bd4:	00408025 	move	s0,v0
    2bd8:	34c6cccd 	ori	a2,a2,0xcccd
    2bdc:	26440290 	addiu	a0,s2,656
    2be0:	e7b00010 	swc1	$f16,16(sp)
    2be4:	44075000 	mfc1	a3,$f10
    2be8:	0c000000 	jal	0 <func_80915A10>
    2bec:	00000000 	nop
    2bf0:	3c014248 	lui	at,0x4248
    2bf4:	44812000 	mtc1	at,$f4
    2bf8:	c6520220 	lwc1	$f18,544(s2)
    2bfc:	3c010000 	lui	at,0x0
    2c00:	c4280000 	lwc1	$f8,0(at)
    2c04:	46049182 	mul.s	$f6,$f18,$f4
    2c08:	8e050060 	lw	a1,96(s0)
    2c0c:	3c063e4c 	lui	a2,0x3e4c
    2c10:	34c6cccd 	ori	a2,a2,0xcccd
    2c14:	26440294 	addiu	a0,s2,660
    2c18:	e7a80010 	swc1	$f8,16(sp)
    2c1c:	44073000 	mfc1	a3,$f6
    2c20:	0c000000 	jal	0 <func_80915A10>
    2c24:	00000000 	nop
    2c28:	3c014248 	lui	at,0x4248
    2c2c:	44818000 	mtc1	at,$f16
    2c30:	c64a0220 	lwc1	$f10,544(s2)
    2c34:	3c010000 	lui	at,0x0
    2c38:	c4240000 	lwc1	$f4,0(at)
    2c3c:	46105482 	mul.s	$f18,$f10,$f16
    2c40:	8e050064 	lw	a1,100(s0)
    2c44:	3c063e4c 	lui	a2,0x3e4c
    2c48:	34c6cccd 	ori	a2,a2,0xcccd
    2c4c:	26440298 	addiu	a0,s2,664
    2c50:	e7a40010 	swc1	$f4,16(sp)
    2c54:	44079000 	mfc1	a3,$f18
    2c58:	0c000000 	jal	0 <func_80915A10>
    2c5c:	00000000 	nop
    2c60:	3c014248 	lui	at,0x4248
    2c64:	44814000 	mtc1	at,$f8
    2c68:	c6460220 	lwc1	$f6,544(s2)
    2c6c:	3c010000 	lui	at,0x0
    2c70:	c4300000 	lwc1	$f16,0(at)
    2c74:	46083282 	mul.s	$f10,$f6,$f8
    2c78:	8e050050 	lw	a1,80(s0)
    2c7c:	3c063e4c 	lui	a2,0x3e4c
    2c80:	34c6cccd 	ori	a2,a2,0xcccd
    2c84:	2644029c 	addiu	a0,s2,668
    2c88:	e7b00010 	swc1	$f16,16(sp)
    2c8c:	44075000 	mfc1	a3,$f10
    2c90:	0c000000 	jal	0 <func_80915A10>
    2c94:	00000000 	nop
    2c98:	3c014248 	lui	at,0x4248
    2c9c:	44812000 	mtc1	at,$f4
    2ca0:	c6520220 	lwc1	$f18,544(s2)
    2ca4:	3c010000 	lui	at,0x0
    2ca8:	c4280000 	lwc1	$f8,0(at)
    2cac:	46049182 	mul.s	$f6,$f18,$f4
    2cb0:	8e050054 	lw	a1,84(s0)
    2cb4:	3c063e4c 	lui	a2,0x3e4c
    2cb8:	34c6cccd 	ori	a2,a2,0xcccd
    2cbc:	264402a0 	addiu	a0,s2,672
    2cc0:	e7a80010 	swc1	$f8,16(sp)
    2cc4:	44073000 	mfc1	a3,$f6
    2cc8:	0c000000 	jal	0 <func_80915A10>
    2ccc:	00000000 	nop
    2cd0:	3c014248 	lui	at,0x4248
    2cd4:	44818000 	mtc1	at,$f16
    2cd8:	c64a0220 	lwc1	$f10,544(s2)
    2cdc:	3c010000 	lui	at,0x0
    2ce0:	c4240000 	lwc1	$f4,0(at)
    2ce4:	46105482 	mul.s	$f18,$f10,$f16
    2ce8:	8e050058 	lw	a1,88(s0)
    2cec:	3c063e4c 	lui	a2,0x3e4c
    2cf0:	34c6cccd 	ori	a2,a2,0xcccd
    2cf4:	264402a4 	addiu	a0,s2,676
    2cf8:	e7a40010 	swc1	$f4,16(sp)
    2cfc:	44079000 	mfc1	a3,$f18
    2d00:	0c000000 	jal	0 <func_80915A10>
    2d04:	00000000 	nop
    2d08:	3c013f80 	lui	at,0x3f80
    2d0c:	44811000 	mtc1	at,$f2
    2d10:	44803000 	mtc1	zero,$f6
    2d14:	3c073ca3 	lui	a3,0x3ca3
    2d18:	44051000 	mfc1	a1,$f2
    2d1c:	44061000 	mfc1	a2,$f2
    2d20:	34e7d70a 	ori	a3,a3,0xd70a
    2d24:	26440220 	addiu	a0,s2,544
    2d28:	0c000000 	jal	0 <func_80915A10>
    2d2c:	e7a60010 	swc1	$f6,16(sp)
    2d30:	864d01d4 	lh	t5,468(s2)
    2d34:	3c0f0000 	lui	t7,0x0
    2d38:	25ef0000 	addiu	t7,t7,0
    2d3c:	15a0005a 	bnez	t5,2ea8 <func_80917D98+0xb20>
    2d40:	27ae005c 	addiu	t6,sp,92
    2d44:	8df90000 	lw	t9,0(t7)
    2d48:	8df80004 	lw	t8,4(t7)
    2d4c:	2408001e 	li	t0,30
    2d50:	add90000 	sw	t9,0(t6)
    2d54:	8df90008 	lw	t9,8(t7)
    2d58:	add80004 	sw	t8,4(t6)
    2d5c:	24090003 	li	t1,3
    2d60:	add90008 	sw	t9,8(t6)
    2d64:	a64801d4 	sh	t0,468(s2)
    2d68:	a64901d0 	sh	t1,464(s2)
    2d6c:	00008825 	move	s1,zero
    2d70:	8fa20068 	lw	v0,104(sp)
    2d74:	c7a8005c 	lwc1	$f8,92(sp)
    2d78:	3c0142c8 	lui	at,0x42c8
    2d7c:	c44a0024 	lwc1	$f10,36(v0)
    2d80:	44811000 	mtc1	at,$f2
    2d84:	c7b00064 	lwc1	$f16,100(sp)
    2d88:	460a4001 	sub.s	$f0,$f8,$f10
    2d8c:	c7aa0064 	lwc1	$f10,100(sp)
    2d90:	c7a4005c 	lwc1	$f4,92(sp)
    2d94:	46000005 	abs.s	$f0,$f0
    2d98:	4602003c 	c.lt.s	$f0,$f2
    2d9c:	00000000 	nop
    2da0:	45020009 	bc1fl	2dc8 <func_80917D98+0xa40>
    2da4:	c6460024 	lwc1	$f6,36(s2)
    2da8:	c452002c 	lwc1	$f18,44(v0)
    2dac:	46128001 	sub.s	$f0,$f16,$f18
    2db0:	46000005 	abs.s	$f0,$f0
    2db4:	4602003c 	c.lt.s	$f0,$f2
    2db8:	00000000 	nop
    2dbc:	45030013 	bc1tl	2e0c <func_80917D98+0xa84>
    2dc0:	3c0143c8 	lui	at,0x43c8
    2dc4:	c6460024 	lwc1	$f6,36(s2)
    2dc8:	3c014316 	lui	at,0x4316
    2dcc:	44814000 	mtc1	at,$f8
    2dd0:	46062001 	sub.s	$f0,$f4,$f6
    2dd4:	46000005 	abs.s	$f0,$f0
    2dd8:	4608003c 	c.lt.s	$f0,$f8
    2ddc:	00000000 	nop
    2de0:	4502001e 	bc1fl	2e5c <func_80917D98+0xad4>
    2de4:	c7b0005c 	lwc1	$f16,92(sp)
    2de8:	c650002c 	lwc1	$f16,44(s2)
    2dec:	3c014316 	lui	at,0x4316
    2df0:	44819000 	mtc1	at,$f18
    2df4:	46105001 	sub.s	$f0,$f10,$f16
    2df8:	46000005 	abs.s	$f0,$f0
    2dfc:	4612003c 	c.lt.s	$f0,$f18
    2e00:	00000000 	nop
    2e04:	45000014 	bc1f	2e58 <func_80917D98+0xad0>
    2e08:	3c0143c8 	lui	at,0x43c8
    2e0c:	44816000 	mtc1	at,$f12
    2e10:	0c000000 	jal	0 <func_80915A10>
    2e14:	00000000 	nop
    2e18:	3c01c316 	lui	at,0xc316
    2e1c:	44812000 	mtc1	at,$f4
    2e20:	3c0143c8 	lui	at,0x43c8
    2e24:	44816000 	mtc1	at,$f12
    2e28:	46040180 	add.s	$f6,$f0,$f4
    2e2c:	0c000000 	jal	0 <func_80915A10>
    2e30:	e7a6005c 	swc1	$f6,92(sp)
    2e34:	3c01c3af 	lui	at,0xc3af
    2e38:	44814000 	mtc1	at,$f8
    2e3c:	26310001 	addiu	s1,s1,1
    2e40:	00118c00 	sll	s1,s1,0x10
    2e44:	46080280 	add.s	$f10,$f0,$f8
    2e48:	00118c03 	sra	s1,s1,0x10
    2e4c:	2a212710 	slti	at,s1,10000
    2e50:	1420ffc7 	bnez	at,2d70 <func_80917D98+0x9e8>
    2e54:	e7aa0064 	swc1	$f10,100(sp)
    2e58:	c7b0005c 	lwc1	$f16,92(sp)
    2e5c:	c7a40064 	lwc1	$f4,100(sp)
    2e60:	26641c24 	addiu	a0,s3,7204
    2e64:	e7b00010 	swc1	$f16,16(sp)
    2e68:	c6520028 	lwc1	$f18,40(s2)
    2e6c:	afa00028 	sw	zero,40(sp)
    2e70:	afa00024 	sw	zero,36(sp)
    2e74:	afa00020 	sw	zero,32(sp)
    2e78:	afa0001c 	sw	zero,28(sp)
    2e7c:	02402825 	move	a1,s2
    2e80:	02603025 	move	a2,s3
    2e84:	2407005d 	li	a3,93
    2e88:	e7a40018 	swc1	$f4,24(sp)
    2e8c:	0c000000 	jal	0 <func_80915A10>
    2e90:	e7b20014 	swc1	$f18,20(sp)
    2e94:	3c050001 	lui	a1,0x1
    2e98:	00b32821 	addu	a1,a1,s3
    2e9c:	80a51cbc 	lb	a1,7356(a1)
    2ea0:	0c000000 	jal	0 <func_80915A10>
    2ea4:	02602025 	move	a0,s3
    2ea8:	3c010001 	lui	at,0x1
    2eac:	3c100000 	lui	s0,0x0
    2eb0:	26100000 	addiu	s0,s0,0
    2eb4:	02611821 	addu	v1,s3,at
    2eb8:	00008825 	move	s1,zero
    2ebc:	864501c0 	lh	a1,448(s2)
    2ec0:	afa30048 	sw	v1,72(sp)
    2ec4:	0c000000 	jal	0 <func_80915A10>
    2ec8:	02002025 	move	a0,s0
    2ecc:	864201c0 	lh	v0,448(s2)
    2ed0:	26310001 	addiu	s1,s1,1
    2ed4:	00118c00 	sll	s1,s1,0x10
    2ed8:	28410100 	slti	at,v0,256
    2edc:	10200003 	beqz	at,2eec <func_80917D98+0xb64>
    2ee0:	8fa30048 	lw	v1,72(sp)
    2ee4:	244a0001 	addiu	t2,v0,1
    2ee8:	a64a01c0 	sh	t2,448(s2)
    2eec:	00118c03 	sra	s1,s1,0x10
    2ef0:	2a210004 	slti	at,s1,4
    2ef4:	5420fff2 	bnezl	at,2ec0 <func_80917D98+0xb38>
    2ef8:	864501c0 	lh	a1,448(s2)
    2efc:	1000004d 	b	3034 <func_80917D98+0xcac>
    2f00:	864501bc 	lh	a1,444(s2)
    2f04:	3c100000 	lui	s0,0x0
    2f08:	26100000 	addiu	s0,s0,0
    2f0c:	02002025 	move	a0,s0
    2f10:	0c000000 	jal	0 <func_80915A10>
    2f14:	864501c0 	lh	a1,448(s2)
    2f18:	864201c0 	lh	v0,448(s2)
    2f1c:	26310001 	addiu	s1,s1,1
    2f20:	00118c00 	sll	s1,s1,0x10
    2f24:	28410100 	slti	at,v0,256
    2f28:	10200003 	beqz	at,2f38 <func_80917D98+0xbb0>
    2f2c:	00118c03 	sra	s1,s1,0x10
    2f30:	244b0001 	addiu	t3,v0,1
    2f34:	a64b01c0 	sh	t3,448(s2)
    2f38:	2a210004 	slti	at,s1,4
    2f3c:	5420fff4 	bnezl	at,2f10 <func_80917D98+0xb88>
    2f40:	02002025 	move	a0,s0
    2f44:	864c01d4 	lh	t4,468(s2)
    2f48:	3c013f80 	lui	at,0x3f80
    2f4c:	26440054 	addiu	a0,s2,84
    2f50:	15800035 	bnez	t4,3028 <func_80917D98+0xca0>
    2f54:	24050000 	li	a1,0
    2f58:	44811000 	mtc1	at,$f2
    2f5c:	44803000 	mtc1	zero,$f6
    2f60:	3c073a44 	lui	a3,0x3a44
    2f64:	44061000 	mfc1	a2,$f2
    2f68:	34e79ba6 	ori	a3,a3,0x9ba6
    2f6c:	0c000000 	jal	0 <func_80915A10>
    2f70:	e7a60010 	swc1	$f6,16(sp)
    2f74:	3c010000 	lui	at,0x0
    2f78:	c4280000 	lwc1	$f8,0(at)
    2f7c:	02602025 	move	a0,s3
    2f80:	4608003e 	c.le.s	$f0,$f8
    2f84:	00000000 	nop
    2f88:	45020025 	bc1fl	3020 <func_80917D98+0xc98>
    2f8c:	c6400054 	lwc1	$f0,84(s2)
    2f90:	0c000000 	jal	0 <func_80915A10>
    2f94:	00002825 	move	a1,zero
    2f98:	26430290 	addiu	v1,s2,656
    2f9c:	8c6e0000 	lw	t6,0(v1)
    2fa0:	02602025 	move	a0,s3
    2fa4:	00003025 	move	a2,zero
    2fa8:	ac4e005c 	sw	t6,92(v0)
    2fac:	8c6d0004 	lw	t5,4(v1)
    2fb0:	ac4d0060 	sw	t5,96(v0)
    2fb4:	8c6e0008 	lw	t6,8(v1)
    2fb8:	ac4e0064 	sw	t6,100(v0)
    2fbc:	8c780000 	lw	t8,0(v1)
    2fc0:	ac580074 	sw	t8,116(v0)
    2fc4:	8c6f0004 	lw	t7,4(v1)
    2fc8:	ac4f0078 	sw	t7,120(v0)
    2fcc:	8c780008 	lw	t8,8(v1)
    2fd0:	ac58007c 	sw	t8,124(v0)
    2fd4:	8e48029c 	lw	t0,668(s2)
    2fd8:	ac480050 	sw	t0,80(v0)
    2fdc:	8e5902a0 	lw	t9,672(s2)
    2fe0:	ac590054 	sw	t9,84(v0)
    2fe4:	8e4802a4 	lw	t0,676(s2)
    2fe8:	ac480058 	sw	t0,88(v0)
    2fec:	0c000000 	jal	0 <func_80915A10>
    2ff0:	864501bc 	lh	a1,444(s2)
    2ff4:	a64001bc 	sh	zero,444(s2)
    2ff8:	02602025 	move	a0,s3
    2ffc:	0c000000 	jal	0 <func_80915A10>
    3000:	26651d64 	addiu	a1,s3,7524
    3004:	02602025 	move	a0,s3
    3008:	02402825 	move	a1,s2
    300c:	0c000000 	jal	0 <func_80915A10>
    3010:	24060007 	li	a2,7
    3014:	0c000000 	jal	0 <func_80915A10>
    3018:	02402025 	move	a0,s2
    301c:	c6400054 	lwc1	$f0,84(s2)
    3020:	e6400058 	swc1	$f0,88(s2)
    3024:	e6400050 	swc1	$f0,80(s2)
    3028:	3c010001 	lui	at,0x1
    302c:	02611821 	addu	v1,s3,at
    3030:	864501bc 	lh	a1,444(s2)
    3034:	10a00006 	beqz	a1,3050 <func_80917D98+0xcc8>
    3038:	02602025 	move	a0,s3
    303c:	2646029c 	addiu	a2,s2,668
    3040:	26470290 	addiu	a3,s2,656
    3044:	0c000000 	jal	0 <func_80915A10>
    3048:	afa30048 	sw	v1,72(sp)
    304c:	8fa30048 	lw	v1,72(sp)
    3050:	864201c4 	lh	v0,452(s2)
    3054:	10400015 	beqz	v0,30ac <func_80917D98+0xd24>
    3058:	2449ffff 	addiu	t1,v0,-1
    305c:	a64901c4 	sh	t1,452(s2)
    3060:	846a0ab0 	lh	t2,2736(v1)
    3064:	846c0ab2 	lh	t4,2738(v1)
    3068:	846e0ab4 	lh	t6,2740(v1)
    306c:	254b0028 	addiu	t3,t2,40
    3070:	84780abc 	lh	t8,2748(v1)
    3074:	84680abe 	lh	t0,2750(v1)
    3078:	846a0ac0 	lh	t2,2752(v1)
    307c:	a46b0ab0 	sh	t3,2736(v1)
    3080:	258d0028 	addiu	t5,t4,40
    3084:	25cf0050 	addiu	t7,t6,80
    3088:	2719000a 	addiu	t9,t8,10
    308c:	2509000a 	addiu	t1,t0,10
    3090:	254b0014 	addiu	t3,t2,20
    3094:	a46d0ab2 	sh	t5,2738(v1)
    3098:	a46f0ab4 	sh	t7,2740(v1)
    309c:	a4790abc 	sh	t9,2748(v1)
    30a0:	a4690abe 	sh	t1,2750(v1)
    30a4:	10000013 	b	30f4 <func_80917D98+0xd6c>
    30a8:	a46b0ac0 	sh	t3,2752(v1)
    30ac:	846c0ab0 	lh	t4,2736(v1)
    30b0:	846e0ab2 	lh	t6,2738(v1)
    30b4:	84780ab4 	lh	t8,2740(v1)
    30b8:	258dffec 	addiu	t5,t4,-20
    30bc:	84680abc 	lh	t0,2748(v1)
    30c0:	846a0abe 	lh	t2,2750(v1)
    30c4:	846c0ac0 	lh	t4,2752(v1)
    30c8:	a46d0ab0 	sh	t5,2736(v1)
    30cc:	25cfffec 	addiu	t7,t6,-20
    30d0:	2719ffd8 	addiu	t9,t8,-40
    30d4:	2509fffb 	addiu	t1,t0,-5
    30d8:	254bfffb 	addiu	t3,t2,-5
    30dc:	258dfff6 	addiu	t5,t4,-10
    30e0:	a46f0ab2 	sh	t7,2738(v1)
    30e4:	a4790ab4 	sh	t9,2740(v1)
    30e8:	a4690abc 	sh	t1,2748(v1)
    30ec:	a46b0abe 	sh	t3,2750(v1)
    30f0:	a46d0ac0 	sh	t5,2752(v1)
    30f4:	846e0ab0 	lh	t6,2736(v1)
    30f8:	29c100c9 	slti	at,t6,201
    30fc:	14200002 	bnez	at,3108 <func_80917D98+0xd80>
    3100:	240200c8 	li	v0,200
    3104:	a4620ab0 	sh	v0,2736(v1)
    3108:	846f0ab2 	lh	t7,2738(v1)
    310c:	240200c8 	li	v0,200
    3110:	29e100c9 	slti	at,t7,201
    3114:	54200003 	bnezl	at,3124 <func_80917D98+0xd9c>
    3118:	84780ab4 	lh	t8,2740(v1)
    311c:	a4620ab2 	sh	v0,2738(v1)
    3120:	84780ab4 	lh	t8,2740(v1)
    3124:	2b0100c9 	slti	at,t8,201
    3128:	54200003 	bnezl	at,3138 <func_80917D98+0xdb0>
    312c:	84790abc 	lh	t9,2748(v1)
    3130:	a4620ab4 	sh	v0,2740(v1)
    3134:	84790abc 	lh	t9,2748(v1)
    3138:	24080046 	li	t0,70
    313c:	240a0046 	li	t2,70
    3140:	2b210047 	slti	at,t9,71
    3144:	54200003 	bnezl	at,3154 <func_80917D98+0xdcc>
    3148:	84690abe 	lh	t1,2750(v1)
    314c:	a4680abc 	sh	t0,2748(v1)
    3150:	84690abe 	lh	t1,2750(v1)
    3154:	240c008c 	li	t4,140
    3158:	29210047 	slti	at,t1,71
    315c:	54200003 	bnezl	at,316c <func_80917D98+0xde4>
    3160:	846b0ac0 	lh	t3,2752(v1)
    3164:	a46a0abe 	sh	t2,2750(v1)
    3168:	846b0ac0 	lh	t3,2752(v1)
    316c:	2961008d 	slti	at,t3,141
    3170:	54200003 	bnezl	at,3180 <func_80917D98+0xdf8>
    3174:	846d0ab0 	lh	t5,2736(v1)
    3178:	a46c0ac0 	sh	t4,2752(v1)
    317c:	846d0ab0 	lh	t5,2736(v1)
    3180:	05a30003 	bgezl	t5,3190 <func_80917D98+0xe08>
    3184:	846e0ab2 	lh	t6,2738(v1)
    3188:	a4600ab0 	sh	zero,2736(v1)
    318c:	846e0ab2 	lh	t6,2738(v1)
    3190:	05c30003 	bgezl	t6,31a0 <func_80917D98+0xe18>
    3194:	846f0ab4 	lh	t7,2740(v1)
    3198:	a4600ab2 	sh	zero,2738(v1)
    319c:	846f0ab4 	lh	t7,2740(v1)
    31a0:	05e30003 	bgezl	t7,31b0 <func_80917D98+0xe28>
    31a4:	84780abc 	lh	t8,2748(v1)
    31a8:	a4600ab4 	sh	zero,2740(v1)
    31ac:	84780abc 	lh	t8,2748(v1)
    31b0:	07030003 	bgezl	t8,31c0 <func_80917D98+0xe38>
    31b4:	84790abe 	lh	t9,2750(v1)
    31b8:	a4600abc 	sh	zero,2748(v1)
    31bc:	84790abe 	lh	t9,2750(v1)
    31c0:	07230003 	bgezl	t9,31d0 <func_80917D98+0xe48>
    31c4:	84680ac0 	lh	t0,2752(v1)
    31c8:	a4600abe 	sh	zero,2750(v1)
    31cc:	84680ac0 	lh	t0,2752(v1)
    31d0:	05030003 	bgezl	t0,31e0 <func_80917D98+0xe58>
    31d4:	8fbf0044 	lw	ra,68(sp)
    31d8:	a4600ac0 	sh	zero,2752(v1)
    31dc:	8fbf0044 	lw	ra,68(sp)
    31e0:	8fb00034 	lw	s0,52(sp)
    31e4:	8fb10038 	lw	s1,56(sp)
    31e8:	8fb2003c 	lw	s2,60(sp)
    31ec:	8fb30040 	lw	s3,64(sp)
    31f0:	03e00008 	jr	ra
    31f4:	27bd00c0 	addiu	sp,sp,192

000031f8 <func_80918C08>:
    31f8:	27bdffd8 	addiu	sp,sp,-40
    31fc:	afb00018 	sw	s0,24(sp)
    3200:	00808025 	move	s0,a0
    3204:	afbf001c 	sw	ra,28(sp)
    3208:	2484014c 	addiu	a0,a0,332
    320c:	afa5002c 	sw	a1,44(sp)
    3210:	0c000000 	jal	0 <func_80915A10>
    3214:	afa40020 	sw	a0,32(sp)
    3218:	26040068 	addiu	a0,s0,104
    321c:	3c053f00 	lui	a1,0x3f00
    3220:	0c000000 	jal	0 <func_80915A10>
    3224:	3c064000 	lui	a2,0x4000
    3228:	3c010000 	lui	at,0x0
    322c:	c4240000 	lwc1	$f4,0(at)
    3230:	c6000164 	lwc1	$f0,356(s0)
    3234:	3c0141f0 	lui	at,0x41f0
    3238:	4600203e 	c.le.s	$f4,$f0
    323c:	00000000 	nop
    3240:	4500000f 	bc1f	3280 <func_80918C08+0x88>
    3244:	00000000 	nop
    3248:	44813000 	mtc1	at,$f6
    324c:	8fae002c 	lw	t6,44(sp)
    3250:	4606003e 	c.le.s	$f0,$f6
    3254:	00000000 	nop
    3258:	45000009 	bc1f	3280 <func_80918C08+0x88>
    325c:	02002025 	move	a0,s0
    3260:	0c000000 	jal	0 <func_80915A10>
    3264:	8dc51c44 	lw	a1,7236(t6)
    3268:	00022c00 	sll	a1,v0,0x10
    326c:	00052c03 	sra	a1,a1,0x10
    3270:	26040032 	addiu	a0,s0,50
    3274:	24060003 	li	a2,3
    3278:	0c000000 	jal	0 <func_80915A10>
    327c:	24070bb8 	li	a3,3000
    3280:	3c040601 	lui	a0,0x601
    3284:	0c000000 	jal	0 <func_80915A10>
    3288:	2484c468 	addiu	a0,a0,-15256
    328c:	44824000 	mtc1	v0,$f8
    3290:	8fa40020 	lw	a0,32(sp)
    3294:	46804220 	cvt.s.w	$f8,$f8
    3298:	44054000 	mfc1	a1,$f8
    329c:	0c000000 	jal	0 <func_80915A10>
    32a0:	00000000 	nop
    32a4:	1040000e 	beqz	v0,32e0 <func_80918C08+0xe8>
    32a8:	3c01437a 	lui	at,0x437a
    32ac:	c60a0090 	lwc1	$f10,144(s0)
    32b0:	44818000 	mtc1	at,$f16
    32b4:	00000000 	nop
    32b8:	4610503c 	c.lt.s	$f10,$f16
    32bc:	00000000 	nop
    32c0:	45000005 	bc1f	32d8 <func_80918C08+0xe0>
    32c4:	00000000 	nop
    32c8:	0c000000 	jal	0 <func_80915A10>
    32cc:	02002025 	move	a0,s0
    32d0:	10000004 	b	32e4 <func_80918C08+0xec>
    32d4:	240f0002 	li	t7,2
    32d8:	0c000000 	jal	0 <func_80915A10>
    32dc:	02002025 	move	a0,s0
    32e0:	240f0002 	li	t7,2
    32e4:	a60f01b4 	sh	t7,436(s0)
    32e8:	a60001b8 	sh	zero,440(s0)
    32ec:	8fbf001c 	lw	ra,28(sp)
    32f0:	8fb00018 	lw	s0,24(sp)
    32f4:	27bd0028 	addiu	sp,sp,40
    32f8:	03e00008 	jr	ra
    32fc:	00000000 	nop

00003300 <func_80918D10>:
    3300:	27bdffe0 	addiu	sp,sp,-32
    3304:	afb00018 	sw	s0,24(sp)
    3308:	00808025 	move	s0,a0
    330c:	afbf001c 	sw	ra,28(sp)
    3310:	afa50024 	sw	a1,36(sp)
    3314:	0c000000 	jal	0 <func_80915A10>
    3318:	2484014c 	addiu	a0,a0,332
    331c:	860e01d2 	lh	t6,466(s0)
    3320:	55c00007 	bnezl	t6,3340 <func_80918D10+0x40>
    3324:	240f0002 	li	t7,2
    3328:	0c000000 	jal	0 <func_80915A10>
    332c:	02002025 	move	a0,s0
    3330:	02002025 	move	a0,s0
    3334:	0c000000 	jal	0 <func_80915A10>
    3338:	2405380e 	li	a1,14350
    333c:	240f0002 	li	t7,2
    3340:	a60f01b4 	sh	t7,436(s0)
    3344:	a60001b8 	sh	zero,440(s0)
    3348:	8fbf001c 	lw	ra,28(sp)
    334c:	8fb00018 	lw	s0,24(sp)
    3350:	27bd0020 	addiu	sp,sp,32
    3354:	03e00008 	jr	ra
    3358:	00000000 	nop

0000335c <func_80918D6C>:
    335c:	27bdffc0 	addiu	sp,sp,-64
    3360:	afbf002c 	sw	ra,44(sp)
    3364:	afb00028 	sw	s0,40(sp)
    3368:	afa50044 	sw	a1,68(sp)
    336c:	8c8e0004 	lw	t6,4(a0)
    3370:	3c010100 	lui	at,0x100
    3374:	00808025 	move	s0,a0
    3378:	01c17825 	or	t7,t6,at
    337c:	ac8f0004 	sw	t7,4(a0)
    3380:	2484014c 	addiu	a0,a0,332
    3384:	0c000000 	jal	0 <func_80915A10>
    3388:	afa40030 	sw	a0,48(sp)
    338c:	860301d0 	lh	v1,464(s0)
    3390:	24010001 	li	at,1
    3394:	3c054120 	lui	a1,0x4120
    3398:	50600009 	beqzl	v1,33c0 <func_80918D6C+0x64>
    339c:	8e0307d4 	lw	v1,2004(s0)
    33a0:	10610051 	beq	v1,at,34e8 <func_80918D6C+0x18c>
    33a4:	8fa40030 	lw	a0,48(sp)
    33a8:	24010002 	li	at,2
    33ac:	1061006b 	beq	v1,at,355c <func_80918D6C+0x200>
    33b0:	3c040600 	lui	a0,0x600
    33b4:	10000076 	b	3590 <func_80918D6C+0x234>
    33b8:	240b0002 	li	t3,2
    33bc:	8e0307d4 	lw	v1,2004(s0)
    33c0:	00001025 	move	v0,zero
    33c4:	240a000a 	li	t2,10
    33c8:	1860000f 	blez	v1,3408 <func_80918D6C+0xac>
    33cc:	00000000 	nop
    33d0:	8e0407d8 	lw	a0,2008(s0)
    33d4:	0002c180 	sll	t8,v0,0x6
    33d8:	0098c821 	addu	t9,a0,t8
    33dc:	93280015 	lbu	t0,21(t9)
    33e0:	24420001 	addiu	v0,v0,1
    33e4:	00021400 	sll	v0,v0,0x10
    33e8:	31090002 	andi	t1,t0,0x2
    33ec:	11200003 	beqz	t1,33fc <func_80918D6C+0xa0>
    33f0:	00021403 	sra	v0,v0,0x10
    33f4:	10000004 	b	3408 <func_80918D6C+0xac>
    33f8:	a60a01d2 	sh	t2,466(s0)
    33fc:	0043082a 	slt	at,v0,v1
    3400:	5420fff5 	bnezl	at,33d8 <func_80918D6C+0x7c>
    3404:	0002c180 	sll	t8,v0,0x6
    3408:	0c000000 	jal	0 <func_80915A10>
    340c:	8fa40030 	lw	a0,48(sp)
    3410:	1040000a 	beqz	v0,343c <func_80918D6C+0xe0>
    3414:	02002025 	move	a0,s0
    3418:	8fa50044 	lw	a1,68(sp)
    341c:	24060003 	li	a2,3
    3420:	0c000000 	jal	0 <func_80915A10>
    3424:	24070005 	li	a3,5
    3428:	02002025 	move	a0,s0
    342c:	8fa50044 	lw	a1,68(sp)
    3430:	24060005 	li	a2,5
    3434:	0c000000 	jal	0 <func_80915A10>
    3438:	2407000f 	li	a3,15
    343c:	3c040600 	lui	a0,0x600
    3440:	0c000000 	jal	0 <func_80915A10>
    3444:	24844318 	addiu	a0,a0,17176
    3448:	44822000 	mtc1	v0,$f4
    344c:	8fa40030 	lw	a0,48(sp)
    3450:	46802120 	cvt.s.w	$f4,$f4
    3454:	44052000 	mfc1	a1,$f4
    3458:	0c000000 	jal	0 <func_80915A10>
    345c:	00000000 	nop
    3460:	1040004a 	beqz	v0,358c <func_80918D6C+0x230>
    3464:	240b0001 	li	t3,1
    3468:	3c040600 	lui	a0,0x600
    346c:	a60b01d0 	sh	t3,464(s0)
    3470:	0c000000 	jal	0 <func_80915A10>
    3474:	24844a20 	addiu	a0,a0,18976
    3478:	44823000 	mtc1	v0,$f6
    347c:	3c01bf80 	lui	at,0xbf80
    3480:	44815000 	mtc1	at,$f10
    3484:	46803220 	cvt.s.w	$f8,$f6
    3488:	3c050600 	lui	a1,0x600
    348c:	24a54a20 	addiu	a1,a1,18976
    3490:	8fa40030 	lw	a0,48(sp)
    3494:	3c063f80 	lui	a2,0x3f80
    3498:	24070000 	li	a3,0
    349c:	e7a80010 	swc1	$f8,16(sp)
    34a0:	afa00014 	sw	zero,20(sp)
    34a4:	0c000000 	jal	0 <func_80915A10>
    34a8:	e7aa0018 	swc1	$f10,24(sp)
    34ac:	860c01d2 	lh	t4,466(s0)
    34b0:	55800037 	bnezl	t4,3590 <func_80918D6C+0x234>
    34b4:	240b0002 	li	t3,2
    34b8:	0c000000 	jal	0 <func_80915A10>
    34bc:	00000000 	nop
    34c0:	3c0141f0 	lui	at,0x41f0
    34c4:	44818000 	mtc1	at,$f16
    34c8:	00000000 	nop
    34cc:	46100482 	mul.s	$f18,$f0,$f16
    34d0:	4600910d 	trunc.w.s	$f4,$f18
    34d4:	44182000 	mfc1	t8,$f4
    34d8:	00000000 	nop
    34dc:	2719001e 	addiu	t9,t8,30
    34e0:	1000002a 	b	358c <func_80918D6C+0x230>
    34e4:	a61901d4 	sh	t9,468(s0)
    34e8:	0c000000 	jal	0 <func_80915A10>
    34ec:	3c054040 	lui	a1,0x4040
    34f0:	10400003 	beqz	v0,3500 <func_80918D6C+0x1a4>
    34f4:	02002025 	move	a0,s0
    34f8:	0c000000 	jal	0 <func_80915A10>
    34fc:	2405381d 	li	a1,14365
    3500:	860801d4 	lh	t0,468(s0)
    3504:	3c040600 	lui	a0,0x600
    3508:	24090002 	li	t1,2
    350c:	1500001f 	bnez	t0,358c <func_80918D6C+0x230>
    3510:	24845330 	addiu	a0,a0,21296
    3514:	0c000000 	jal	0 <func_80915A10>
    3518:	a60901d0 	sh	t1,464(s0)
    351c:	44823000 	mtc1	v0,$f6
    3520:	3c01c0a0 	lui	at,0xc0a0
    3524:	44815000 	mtc1	at,$f10
    3528:	46803220 	cvt.s.w	$f8,$f6
    352c:	3c050600 	lui	a1,0x600
    3530:	240a0002 	li	t2,2
    3534:	afaa0014 	sw	t2,20(sp)
    3538:	24a55330 	addiu	a1,a1,21296
    353c:	8fa40030 	lw	a0,48(sp)
    3540:	e7a80010 	swc1	$f8,16(sp)
    3544:	3c063f80 	lui	a2,0x3f80
    3548:	24070000 	li	a3,0
    354c:	0c000000 	jal	0 <func_80915A10>
    3550:	e7aa0018 	swc1	$f10,24(sp)
    3554:	1000000e 	b	3590 <func_80918D6C+0x234>
    3558:	240b0002 	li	t3,2
    355c:	0c000000 	jal	0 <func_80915A10>
    3560:	24845330 	addiu	a0,a0,21296
    3564:	44828000 	mtc1	v0,$f16
    3568:	8fa40030 	lw	a0,48(sp)
    356c:	46808420 	cvt.s.w	$f16,$f16
    3570:	44058000 	mfc1	a1,$f16
    3574:	0c000000 	jal	0 <func_80915A10>
    3578:	00000000 	nop
    357c:	50400004 	beqzl	v0,3590 <func_80918D6C+0x234>
    3580:	240b0002 	li	t3,2
    3584:	0c000000 	jal	0 <func_80915A10>
    3588:	02002025 	move	a0,s0
    358c:	240b0002 	li	t3,2
    3590:	a60b01b4 	sh	t3,436(s0)
    3594:	a60001b8 	sh	zero,440(s0)
    3598:	8fbf002c 	lw	ra,44(sp)
    359c:	8fb00028 	lw	s0,40(sp)
    35a0:	27bd0040 	addiu	sp,sp,64
    35a4:	03e00008 	jr	ra
    35a8:	00000000 	nop

000035ac <func_80918FBC>:
    35ac:	27bdffd8 	addiu	sp,sp,-40
    35b0:	afb00018 	sw	s0,24(sp)
    35b4:	00808025 	move	s0,a0
    35b8:	afbf001c 	sw	ra,28(sp)
    35bc:	2484014c 	addiu	a0,a0,332
    35c0:	afa5002c 	sw	a1,44(sp)
    35c4:	0c000000 	jal	0 <func_80915A10>
    35c8:	afa40020 	sw	a0,32(sp)
    35cc:	3c040600 	lui	a0,0x600
    35d0:	0c000000 	jal	0 <func_80915A10>
    35d4:	24846e60 	addiu	a0,a0,28256
    35d8:	44822000 	mtc1	v0,$f4
    35dc:	8fa40020 	lw	a0,32(sp)
    35e0:	46802120 	cvt.s.w	$f4,$f4
    35e4:	44052000 	mfc1	a1,$f4
    35e8:	0c000000 	jal	0 <func_80915A10>
    35ec:	00000000 	nop
    35f0:	50400005 	beqzl	v0,3608 <func_80918FBC+0x5c>
    35f4:	240e0001 	li	t6,1
    35f8:	0c000000 	jal	0 <func_80915A10>
    35fc:	02002025 	move	a0,s0
    3600:	a6000196 	sh	zero,406(s0)
    3604:	240e0001 	li	t6,1
    3608:	3c053ecc 	lui	a1,0x3ecc
    360c:	3c073e4c 	lui	a3,0x3e4c
    3610:	a60e01b4 	sh	t6,436(s0)
    3614:	34e7cccd 	ori	a3,a3,0xcccd
    3618:	34a5cccd 	ori	a1,a1,0xcccd
    361c:	260401f8 	addiu	a0,s0,504
    3620:	0c000000 	jal	0 <func_80915A10>
    3624:	3c063f00 	lui	a2,0x3f00
    3628:	240f0005 	li	t7,5
    362c:	a60f01b8 	sh	t7,440(s0)
    3630:	8fbf001c 	lw	ra,28(sp)
    3634:	8fb00018 	lw	s0,24(sp)
    3638:	27bd0028 	addiu	sp,sp,40
    363c:	03e00008 	jr	ra
    3640:	00000000 	nop

00003644 <func_80919054>:
    3644:	27bdffc0 	addiu	sp,sp,-64
    3648:	afb00030 	sw	s0,48(sp)
    364c:	00808025 	move	s0,a0
    3650:	afbf0034 	sw	ra,52(sp)
    3654:	2484014c 	addiu	a0,a0,332
    3658:	afa50044 	sw	a1,68(sp)
    365c:	0c000000 	jal	0 <func_80915A10>
    3660:	afa4003c 	sw	a0,60(sp)
    3664:	8fa4003c 	lw	a0,60(sp)
    3668:	0c000000 	jal	0 <func_80915A10>
    366c:	8e05021c 	lw	a1,540(s0)
    3670:	50400009 	beqzl	v0,3698 <func_80919054+0x54>
    3674:	3c014100 	lui	at,0x4100
    3678:	0c000000 	jal	0 <func_80915A10>
    367c:	02002025 	move	a0,s0
    3680:	240e005c 	li	t6,92
    3684:	240f0096 	li	t7,150
    3688:	a60e01d6 	sh	t6,470(s0)
    368c:	a6000196 	sh	zero,406(s0)
    3690:	a60f01d2 	sh	t7,466(s0)
    3694:	3c014100 	lui	at,0x4100
    3698:	44812000 	mtc1	at,$f4
    369c:	24180004 	li	t8,4
    36a0:	241901f4 	li	t9,500
    36a4:	2408000a 	li	t0,10
    36a8:	24090001 	li	t1,1
    36ac:	afa90020 	sw	t1,32(sp)
    36b0:	afa8001c 	sw	t0,28(sp)
    36b4:	afb90018 	sw	t9,24(sp)
    36b8:	afb80010 	sw	t8,16(sp)
    36bc:	8fa40044 	lw	a0,68(sp)
    36c0:	02002825 	move	a1,s0
    36c4:	26060024 	addiu	a2,s0,36
    36c8:	3c07425c 	lui	a3,0x425c
    36cc:	0c000000 	jal	0 <func_80915A10>
    36d0:	e7a40014 	swc1	$f4,20(sp)
    36d4:	8fbf0034 	lw	ra,52(sp)
    36d8:	8fb00030 	lw	s0,48(sp)
    36dc:	27bd0040 	addiu	sp,sp,64
    36e0:	03e00008 	jr	ra
    36e4:	00000000 	nop

000036e8 <func_809190F8>:
    36e8:	27bdffe0 	addiu	sp,sp,-32
    36ec:	afa40020 	sw	a0,32(sp)
    36f0:	afbf0014 	sw	ra,20(sp)
    36f4:	2484014c 	addiu	a0,a0,332
    36f8:	afa50024 	sw	a1,36(sp)
    36fc:	0c000000 	jal	0 <func_80915A10>
    3700:	afa4001c 	sw	a0,28(sp)
    3704:	8fae0020 	lw	t6,32(sp)
    3708:	8fa4001c 	lw	a0,28(sp)
    370c:	0c000000 	jal	0 <func_80915A10>
    3710:	8dc5021c 	lw	a1,540(t6)
    3714:	50400007 	beqzl	v0,3734 <func_809190F8+0x4c>
    3718:	8fbf0014 	lw	ra,20(sp)
    371c:	0c000000 	jal	0 <func_80915A10>
    3720:	8fa40020 	lw	a0,32(sp)
    3724:	8fb80020 	lw	t8,32(sp)
    3728:	240f00c8 	li	t7,200
    372c:	a70f0196 	sh	t7,406(t8)
    3730:	8fbf0014 	lw	ra,20(sp)
    3734:	27bd0020 	addiu	sp,sp,32
    3738:	03e00008 	jr	ra
    373c:	00000000 	nop

00003740 <func_80919150>:
    3740:	27bdffc8 	addiu	sp,sp,-56
    3744:	afbf0034 	sw	ra,52(sp)
    3748:	afb00030 	sw	s0,48(sp)
    374c:	afa5003c 	sw	a1,60(sp)
    3750:	848e01d6 	lh	t6,470(a0)
    3754:	00808025 	move	s0,a0
    3758:	29c1005b 	slti	at,t6,91
    375c:	10200003 	beqz	at,376c <func_80919150+0x2c>
    3760:	00000000 	nop
    3764:	0c000000 	jal	0 <func_80915A10>
    3768:	2405301e 	li	a1,12318
    376c:	0c000000 	jal	0 <func_80915A10>
    3770:	2604014c 	addiu	a0,s0,332
    3774:	860f01d4 	lh	t7,468(s0)
    3778:	24010001 	li	at,1
    377c:	8fa4003c 	lw	a0,60(sp)
    3780:	15e1000f 	bne	t7,at,37c0 <func_80919150+0x80>
    3784:	02002825 	move	a1,s0
    3788:	3c014100 	lui	at,0x4100
    378c:	44812000 	mtc1	at,$f4
    3790:	24180004 	li	t8,4
    3794:	241901f4 	li	t9,500
    3798:	2408000a 	li	t0,10
    379c:	24090001 	li	t1,1
    37a0:	afa90020 	sw	t1,32(sp)
    37a4:	afa8001c 	sw	t0,28(sp)
    37a8:	afb90018 	sw	t9,24(sp)
    37ac:	afb80010 	sw	t8,16(sp)
    37b0:	26060024 	addiu	a2,s0,36
    37b4:	3c07425c 	lui	a3,0x425c
    37b8:	0c000000 	jal	0 <func_80915A10>
    37bc:	e7a40014 	swc1	$f4,20(sp)
    37c0:	26040068 	addiu	a0,s0,104
    37c4:	3c053f00 	lui	a1,0x3f00
    37c8:	0c000000 	jal	0 <func_80915A10>
    37cc:	3c063f80 	lui	a2,0x3f80
    37d0:	860a01d2 	lh	t2,466(s0)
    37d4:	55400010 	bnezl	t2,3818 <func_80919150+0xd8>
    37d8:	260400b4 	addiu	a0,s0,180
    37dc:	0c000000 	jal	0 <func_80915A10>
    37e0:	02002025 	move	a0,s0
    37e4:	860b0196 	lh	t3,406(s0)
    37e8:	3c014302 	lui	at,0x4302
    37ec:	5560000a 	bnezl	t3,3818 <func_80919150+0xd8>
    37f0:	260400b4 	addiu	a0,s0,180
    37f4:	c6060090 	lwc1	$f6,144(s0)
    37f8:	44814000 	mtc1	at,$f8
    37fc:	240c0014 	li	t4,20
    3800:	4608303c 	c.lt.s	$f6,$f8
    3804:	00000000 	nop
    3808:	45020003 	bc1fl	3818 <func_80919150+0xd8>
    380c:	260400b4 	addiu	a0,s0,180
    3810:	a60c01d4 	sh	t4,468(s0)
    3814:	260400b4 	addiu	a0,s0,180
    3818:	00002825 	move	a1,zero
    381c:	24060002 	li	a2,2
    3820:	0c000000 	jal	0 <func_80915A10>
    3824:	24070bb8 	li	a3,3000
    3828:	240d0001 	li	t5,1
    382c:	3c053ecc 	lui	a1,0x3ecc
    3830:	3c073e4c 	lui	a3,0x3e4c
    3834:	a60d01b4 	sh	t5,436(s0)
    3838:	34e7cccd 	ori	a3,a3,0xcccd
    383c:	34a5cccd 	ori	a1,a1,0xcccd
    3840:	260401f8 	addiu	a0,s0,504
    3844:	0c000000 	jal	0 <func_80915A10>
    3848:	3c063f00 	lui	a2,0x3f00
    384c:	240e0004 	li	t6,4
    3850:	a60e01b8 	sh	t6,440(s0)
    3854:	8fbf0034 	lw	ra,52(sp)
    3858:	8fb00030 	lw	s0,48(sp)
    385c:	27bd0038 	addiu	sp,sp,56
    3860:	03e00008 	jr	ra
    3864:	00000000 	nop

00003868 <func_80919278>:
    3868:	27bdffe0 	addiu	sp,sp,-32
    386c:	afb00018 	sw	s0,24(sp)
    3870:	00808025 	move	s0,a0
    3874:	afbf001c 	sw	ra,28(sp)
    3878:	afa50024 	sw	a1,36(sp)
    387c:	0c000000 	jal	0 <func_80915A10>
    3880:	2484014c 	addiu	a0,a0,332
    3884:	260400b4 	addiu	a0,s0,180
    3888:	00002825 	move	a1,zero
    388c:	24060002 	li	a2,2
    3890:	0c000000 	jal	0 <func_80915A10>
    3894:	24070bb8 	li	a3,3000
    3898:	8fae0024 	lw	t6,36(sp)
    389c:	02002025 	move	a0,s0
    38a0:	0c000000 	jal	0 <func_80915A10>
    38a4:	8dc51c44 	lw	a1,7236(t6)
    38a8:	00022c00 	sll	a1,v0,0x10
    38ac:	00052c03 	sra	a1,a1,0x10
    38b0:	26040032 	addiu	a0,s0,50
    38b4:	24060002 	li	a2,2
    38b8:	0c000000 	jal	0 <func_80915A10>
    38bc:	240707d0 	li	a3,2000
    38c0:	960f0088 	lhu	t7,136(s0)
    38c4:	31f80001 	andi	t8,t7,0x1
    38c8:	53000010 	beqzl	t8,390c <func_80919278+0xa4>
    38cc:	8fbf001c 	lw	ra,28(sp)
    38d0:	0c000000 	jal	0 <func_80915A10>
    38d4:	02002025 	move	a0,s0
    38d8:	44802000 	mtc1	zero,$f4
    38dc:	02002025 	move	a0,s0
    38e0:	00003025 	move	a2,zero
    38e4:	e6040060 	swc1	$f4,96(s0)
    38e8:	8fa50024 	lw	a1,36(sp)
    38ec:	0c000000 	jal	0 <func_80915A10>
    38f0:	24070008 	li	a3,8
    38f4:	02002025 	move	a0,s0
    38f8:	8fa50024 	lw	a1,36(sp)
    38fc:	24060005 	li	a2,5
    3900:	0c000000 	jal	0 <func_80915A10>
    3904:	2407000f 	li	a3,15
    3908:	8fbf001c 	lw	ra,28(sp)
    390c:	8fb00018 	lw	s0,24(sp)
    3910:	27bd0020 	addiu	sp,sp,32
    3914:	03e00008 	jr	ra
    3918:	00000000 	nop

0000391c <func_8091932C>:
    391c:	27bdffe0 	addiu	sp,sp,-32
    3920:	afb00018 	sw	s0,24(sp)
    3924:	00808025 	move	s0,a0
    3928:	afbf001c 	sw	ra,28(sp)
    392c:	afa50024 	sw	a1,36(sp)
    3930:	0c000000 	jal	0 <func_80915A10>
    3934:	2484014c 	addiu	a0,a0,332
    3938:	260400b4 	addiu	a0,s0,180
    393c:	00002825 	move	a1,zero
    3940:	24060002 	li	a2,2
    3944:	0c000000 	jal	0 <func_80915A10>
    3948:	24070bb8 	li	a3,3000
    394c:	8fae0024 	lw	t6,36(sp)
    3950:	02002025 	move	a0,s0
    3954:	0c000000 	jal	0 <func_80915A10>
    3958:	8dc51c44 	lw	a1,7236(t6)
    395c:	00022c00 	sll	a1,v0,0x10
    3960:	00052c03 	sra	a1,a1,0x10
    3964:	26040032 	addiu	a0,s0,50
    3968:	24060003 	li	a2,3
    396c:	0c000000 	jal	0 <func_80915A10>
    3970:	240707d0 	li	a3,2000
    3974:	960f0088 	lhu	t7,136(s0)
    3978:	31f80001 	andi	t8,t7,0x1
    397c:	53000013 	beqzl	t8,39cc <func_8091932C+0xb0>
    3980:	8fbf001c 	lw	ra,28(sp)
    3984:	0c000000 	jal	0 <func_80915A10>
    3988:	02002025 	move	a0,s0
    398c:	44802000 	mtc1	zero,$f4
    3990:	02002025 	move	a0,s0
    3994:	00003025 	move	a2,zero
    3998:	e6040060 	swc1	$f4,96(s0)
    399c:	8fa50024 	lw	a1,36(sp)
    39a0:	0c000000 	jal	0 <func_80915A10>
    39a4:	24070008 	li	a3,8
    39a8:	02002025 	move	a0,s0
    39ac:	8fa50024 	lw	a1,36(sp)
    39b0:	2406000a 	li	a2,10
    39b4:	0c000000 	jal	0 <func_80915A10>
    39b8:	2407000f 	li	a3,15
    39bc:	02002025 	move	a0,s0
    39c0:	0c000000 	jal	0 <func_80915A10>
    39c4:	24053810 	li	a1,14352
    39c8:	8fbf001c 	lw	ra,28(sp)
    39cc:	8fb00018 	lw	s0,24(sp)
    39d0:	27bd0020 	addiu	sp,sp,32
    39d4:	03e00008 	jr	ra
    39d8:	00000000 	nop

000039dc <func_809193EC>:
    39dc:	27bdffe0 	addiu	sp,sp,-32
    39e0:	afb00018 	sw	s0,24(sp)
    39e4:	00808025 	move	s0,a0
    39e8:	afbf001c 	sw	ra,28(sp)
    39ec:	afa50024 	sw	a1,36(sp)
    39f0:	0c000000 	jal	0 <func_80915A10>
    39f4:	2484014c 	addiu	a0,a0,332
    39f8:	860e0194 	lh	t6,404(s0)
    39fc:	02002025 	move	a0,s0
    3a00:	31cf000f 	andi	t7,t6,0xf
    3a04:	55e00004 	bnezl	t7,3a18 <func_809193EC+0x3c>
    3a08:	26040068 	addiu	a0,s0,104
    3a0c:	0c000000 	jal	0 <func_80915A10>
    3a10:	24053813 	li	a1,14355
    3a14:	26040068 	addiu	a0,s0,104
    3a18:	3c053f00 	lui	a1,0x3f00
    3a1c:	0c000000 	jal	0 <func_80915A10>
    3a20:	3c064000 	lui	a2,0x4000
    3a24:	861801b2 	lh	t8,434(s0)
    3a28:	24010018 	li	at,24
    3a2c:	2408000a 	li	t0,10
    3a30:	27190001 	addiu	t9,t8,1
    3a34:	a61901b2 	sh	t9,434(s0)
    3a38:	860201b2 	lh	v0,434(s0)
    3a3c:	00003025 	move	a2,zero
    3a40:	02002025 	move	a0,s0
    3a44:	1041000b 	beq	v0,at,3a74 <func_809193EC+0x98>
    3a48:	24010020 	li	at,32
    3a4c:	1041000b 	beq	v0,at,3a7c <func_809193EC+0xa0>
    3a50:	2409000a 	li	t1,10
    3a54:	24010028 	li	at,40
    3a58:	1041000a 	beq	v0,at,3a84 <func_809193EC+0xa8>
    3a5c:	240a000a 	li	t2,10
    3a60:	24010030 	li	at,48
    3a64:	10410009 	beq	v0,at,3a8c <func_809193EC+0xb0>
    3a68:	240b000a 	li	t3,10
    3a6c:	10000009 	b	3a94 <func_809193EC+0xb8>
    3a70:	860c01aa 	lh	t4,426(s0)
    3a74:	10000006 	b	3a90 <func_809193EC+0xb4>
    3a78:	a60801b0 	sh	t0,432(s0)
    3a7c:	10000004 	b	3a90 <func_809193EC+0xb4>
    3a80:	a60901ae 	sh	t1,430(s0)
    3a84:	10000002 	b	3a90 <func_809193EC+0xb4>
    3a88:	a60a01ac 	sh	t2,428(s0)
    3a8c:	a60b01aa 	sh	t3,426(s0)
    3a90:	860c01aa 	lh	t4,426(s0)
    3a94:	24010002 	li	at,2
    3a98:	1581001a 	bne	t4,at,3b04 <func_809193EC+0x128>
    3a9c:	00066840 	sll	t5,a2,0x1
    3aa0:	020d7021 	addu	t6,s0,t5
    3aa4:	85cf01a4 	lh	t7,420(t6)
    3aa8:	55e00006 	bnezl	t7,3ac4 <func_809193EC+0xe8>
    3aac:	24c60001 	addiu	a2,a2,1
    3ab0:	0c000000 	jal	0 <func_80915A10>
    3ab4:	8fa50024 	lw	a1,36(sp)
    3ab8:	10000008 	b	3adc <func_809193EC+0x100>
    3abc:	861801a4 	lh	t8,420(s0)
    3ac0:	24c60001 	addiu	a2,a2,1
    3ac4:	00063400 	sll	a2,a2,0x10
    3ac8:	00063403 	sra	a2,a2,0x10
    3acc:	28c10003 	slti	at,a2,3
    3ad0:	5420fff3 	bnezl	at,3aa0 <func_809193EC+0xc4>
    3ad4:	00066840 	sll	t5,a2,0x1
    3ad8:	861801a4 	lh	t8,420(s0)
    3adc:	24090017 	li	t1,23
    3ae0:	53000008 	beqzl	t8,3b04 <func_809193EC+0x128>
    3ae4:	a60901b2 	sh	t1,434(s0)
    3ae8:	861901a6 	lh	t9,422(s0)
    3aec:	53200005 	beqzl	t9,3b04 <func_809193EC+0x128>
    3af0:	a60901b2 	sh	t1,434(s0)
    3af4:	860801a8 	lh	t0,424(s0)
    3af8:	55000003 	bnezl	t0,3b08 <func_809193EC+0x12c>
    3afc:	860a01b2 	lh	t2,434(s0)
    3b00:	a60901b2 	sh	t1,434(s0)
    3b04:	860a01b2 	lh	t2,434(s0)
    3b08:	29410040 	slti	at,t2,64
    3b0c:	54200004 	bnezl	at,3b20 <func_809193EC+0x144>
    3b10:	240b0001 	li	t3,1
    3b14:	0c000000 	jal	0 <func_80915A10>
    3b18:	02002025 	move	a0,s0
    3b1c:	240b0001 	li	t3,1
    3b20:	a60b01b4 	sh	t3,436(s0)
    3b24:	8fbf001c 	lw	ra,28(sp)
    3b28:	8fb00018 	lw	s0,24(sp)
    3b2c:	27bd0020 	addiu	sp,sp,32
    3b30:	03e00008 	jr	ra
    3b34:	00000000 	nop

00003b38 <func_80919548>:
    3b38:	27bdffe8 	addiu	sp,sp,-24
    3b3c:	afa5001c 	sw	a1,28(sp)
    3b40:	00802825 	move	a1,a0
    3b44:	afbf0014 	sw	ra,20(sp)
    3b48:	afa40018 	sw	a0,24(sp)
    3b4c:	afa50018 	sw	a1,24(sp)
    3b50:	0c000000 	jal	0 <func_80915A10>
    3b54:	2484014c 	addiu	a0,a0,332
    3b58:	8fa50018 	lw	a1,24(sp)
    3b5c:	84ae01d2 	lh	t6,466(a1)
    3b60:	00a02025 	move	a0,a1
    3b64:	55c00005 	bnezl	t6,3b7c <func_80919548+0x44>
    3b68:	240f0001 	li	t7,1
    3b6c:	0c000000 	jal	0 <func_80915A10>
    3b70:	afa50018 	sw	a1,24(sp)
    3b74:	8fa50018 	lw	a1,24(sp)
    3b78:	240f0001 	li	t7,1
    3b7c:	a4af01b4 	sh	t7,436(a1)
    3b80:	a4a001b8 	sh	zero,440(a1)
    3b84:	8fbf0014 	lw	ra,20(sp)
    3b88:	27bd0018 	addiu	sp,sp,24
    3b8c:	03e00008 	jr	ra
    3b90:	00000000 	nop

00003b94 <func_809195A4>:
    3b94:	27bdffe0 	addiu	sp,sp,-32
    3b98:	afb00018 	sw	s0,24(sp)
    3b9c:	00808025 	move	s0,a0
    3ba0:	afbf001c 	sw	ra,28(sp)
    3ba4:	afa50024 	sw	a1,36(sp)
    3ba8:	0c000000 	jal	0 <func_80915A10>
    3bac:	2484014c 	addiu	a0,a0,332
    3bb0:	26040068 	addiu	a0,s0,104
    3bb4:	3c053f00 	lui	a1,0x3f00
    3bb8:	0c000000 	jal	0 <func_80915A10>
    3bbc:	3c064000 	lui	a2,0x4000
    3bc0:	260400b4 	addiu	a0,s0,180
    3bc4:	00002825 	move	a1,zero
    3bc8:	24060002 	li	a2,2
    3bcc:	0c000000 	jal	0 <func_80915A10>
    3bd0:	24070bb8 	li	a3,3000
    3bd4:	860e01d2 	lh	t6,466(s0)
    3bd8:	55c00004 	bnezl	t6,3bec <func_809195A4+0x58>
    3bdc:	8fbf001c 	lw	ra,28(sp)
    3be0:	0c000000 	jal	0 <func_80915A10>
    3be4:	02002025 	move	a0,s0
    3be8:	8fbf001c 	lw	ra,28(sp)
    3bec:	8fb00018 	lw	s0,24(sp)
    3bf0:	27bd0020 	addiu	sp,sp,32
    3bf4:	03e00008 	jr	ra
    3bf8:	00000000 	nop

00003bfc <func_8091960C>:
    3bfc:	27bdffe8 	addiu	sp,sp,-24
    3c00:	afbf0014 	sw	ra,20(sp)
    3c04:	00803825 	move	a3,a0
    3c08:	afa5001c 	sw	a1,28(sp)
    3c0c:	afa70018 	sw	a3,24(sp)
    3c10:	0c000000 	jal	0 <func_80915A10>
    3c14:	2484014c 	addiu	a0,a0,332
    3c18:	8fa70018 	lw	a3,24(sp)
    3c1c:	3c053f00 	lui	a1,0x3f00
    3c20:	3c064000 	lui	a2,0x4000
    3c24:	0c000000 	jal	0 <func_80915A10>
    3c28:	24e40068 	addiu	a0,a3,104
    3c2c:	8fa70018 	lw	a3,24(sp)
    3c30:	84ee01d2 	lh	t6,466(a3)
    3c34:	55c0002c 	bnezl	t6,3ce8 <func_8091960C+0xec>
    3c38:	8fbf0014 	lw	ra,20(sp)
    3c3c:	84e201a4 	lh	v0,420(a3)
    3c40:	1440000b 	bnez	v0,3c70 <func_8091960C+0x74>
    3c44:	00000000 	nop
    3c48:	84ef01a6 	lh	t7,422(a3)
    3c4c:	15e00008 	bnez	t7,3c70 <func_8091960C+0x74>
    3c50:	00000000 	nop
    3c54:	84f801a8 	lh	t8,424(a3)
    3c58:	17000005 	bnez	t8,3c70 <func_8091960C+0x74>
    3c5c:	00000000 	nop
    3c60:	0c000000 	jal	0 <func_80915A10>
    3c64:	00e02025 	move	a0,a3
    3c68:	1000001f 	b	3ce8 <func_8091960C+0xec>
    3c6c:	8fbf0014 	lw	ra,20(sp)
    3c70:	0443000c 	bgezl	v0,3ca4 <func_8091960C+0xa8>
    3c74:	00001025 	move	v0,zero
    3c78:	84f901a6 	lh	t9,422(a3)
    3c7c:	07230009 	bgezl	t9,3ca4 <func_8091960C+0xa8>
    3c80:	00001025 	move	v0,zero
    3c84:	84e801a8 	lh	t0,424(a3)
    3c88:	05030006 	bgezl	t0,3ca4 <func_8091960C+0xa8>
    3c8c:	00001025 	move	v0,zero
    3c90:	0c000000 	jal	0 <func_80915A10>
    3c94:	00e02025 	move	a0,a3
    3c98:	10000013 	b	3ce8 <func_8091960C+0xec>
    3c9c:	8fbf0014 	lw	ra,20(sp)
    3ca0:	00001025 	move	v0,zero
    3ca4:	00024840 	sll	t1,v0,0x1
    3ca8:	00e95021 	addu	t2,a3,t1
    3cac:	854b01a4 	lh	t3,420(t2)
    3cb0:	24420001 	addiu	v0,v0,1
    3cb4:	00021400 	sll	v0,v0,0x10
    3cb8:	15600005 	bnez	t3,3cd0 <func_8091960C+0xd4>
    3cbc:	00021403 	sra	v0,v0,0x10
    3cc0:	0c000000 	jal	0 <func_80915A10>
    3cc4:	00e02025 	move	a0,a3
    3cc8:	10000007 	b	3ce8 <func_8091960C+0xec>
    3ccc:	8fbf0014 	lw	ra,20(sp)
    3cd0:	28410003 	slti	at,v0,3
    3cd4:	5420fff4 	bnezl	at,3ca8 <func_8091960C+0xac>
    3cd8:	00024840 	sll	t1,v0,0x1
    3cdc:	0c000000 	jal	0 <func_80915A10>
    3ce0:	00e02025 	move	a0,a3
    3ce4:	8fbf0014 	lw	ra,20(sp)
    3ce8:	27bd0018 	addiu	sp,sp,24
    3cec:	03e00008 	jr	ra
    3cf0:	00000000 	nop

00003cf4 <func_80919704>:
    3cf4:	27bdffd8 	addiu	sp,sp,-40
    3cf8:	afb00018 	sw	s0,24(sp)
    3cfc:	00808025 	move	s0,a0
    3d00:	afbf001c 	sw	ra,28(sp)
    3d04:	2484014c 	addiu	a0,a0,332
    3d08:	afa5002c 	sw	a1,44(sp)
    3d0c:	0c000000 	jal	0 <func_80915A10>
    3d10:	afa40020 	sw	a0,32(sp)
    3d14:	8fa40020 	lw	a0,32(sp)
    3d18:	0c000000 	jal	0 <func_80915A10>
    3d1c:	3c053f80 	lui	a1,0x3f80
    3d20:	10400004 	beqz	v0,3d34 <func_80919704+0x40>
    3d24:	8fa40020 	lw	a0,32(sp)
    3d28:	240e0001 	li	t6,1
    3d2c:	10000014 	b	3d80 <func_80919704+0x8c>
    3d30:	a60e01b6 	sh	t6,438(s0)
    3d34:	0c000000 	jal	0 <func_80915A10>
    3d38:	3c0541f0 	lui	a1,0x41f0
    3d3c:	10400004 	beqz	v0,3d50 <func_80919704+0x5c>
    3d40:	8fa40020 	lw	a0,32(sp)
    3d44:	240f0001 	li	t7,1
    3d48:	1000000d 	b	3d80 <func_80919704+0x8c>
    3d4c:	a60f01b6 	sh	t7,438(s0)
    3d50:	0c000000 	jal	0 <func_80915A10>
    3d54:	3c054170 	lui	a1,0x4170
    3d58:	10400004 	beqz	v0,3d6c <func_80919704+0x78>
    3d5c:	8fa40020 	lw	a0,32(sp)
    3d60:	24180001 	li	t8,1
    3d64:	10000006 	b	3d80 <func_80919704+0x8c>
    3d68:	a61801b6 	sh	t8,438(s0)
    3d6c:	0c000000 	jal	0 <func_80915A10>
    3d70:	3c054180 	lui	a1,0x4180
    3d74:	10400002 	beqz	v0,3d80 <func_80919704+0x8c>
    3d78:	24190001 	li	t9,1
    3d7c:	a61901b6 	sh	t9,438(s0)
    3d80:	8fa40020 	lw	a0,32(sp)
    3d84:	0c000000 	jal	0 <func_80915A10>
    3d88:	3c054170 	lui	a1,0x4170
    3d8c:	10400008 	beqz	v0,3db0 <func_80919704+0xbc>
    3d90:	8fa40020 	lw	a0,32(sp)
    3d94:	02002025 	move	a0,s0
    3d98:	8fa5002c 	lw	a1,44(sp)
    3d9c:	24060001 	li	a2,1
    3da0:	0c000000 	jal	0 <func_80915A10>
    3da4:	24070003 	li	a3,3
    3da8:	1000000a 	b	3dd4 <func_80919704+0xe0>
    3dac:	86080194 	lh	t0,404(s0)
    3db0:	0c000000 	jal	0 <func_80915A10>
    3db4:	3c0541f0 	lui	a1,0x41f0
    3db8:	10400005 	beqz	v0,3dd0 <func_80919704+0xdc>
    3dbc:	02002025 	move	a0,s0
    3dc0:	8fa5002c 	lw	a1,44(sp)
    3dc4:	24060002 	li	a2,2
    3dc8:	0c000000 	jal	0 <func_80915A10>
    3dcc:	24070003 	li	a3,3
    3dd0:	86080194 	lh	t0,404(s0)
    3dd4:	02002025 	move	a0,s0
    3dd8:	3109003f 	andi	t1,t0,0x3f
    3ddc:	55200004 	bnezl	t1,3df0 <func_80919704+0xfc>
    3de0:	860a01b6 	lh	t2,438(s0)
    3de4:	0c000000 	jal	0 <func_80915A10>
    3de8:	2405380f 	li	a1,14351
    3dec:	860a01b6 	lh	t2,438(s0)
    3df0:	8fab002c 	lw	t3,44(sp)
    3df4:	15400042 	bnez	t2,3f00 <func_80919704+0x20c>
    3df8:	02002025 	move	a0,s0
    3dfc:	0c000000 	jal	0 <func_80915A10>
    3e00:	8d651c44 	lw	a1,7236(t3)
    3e04:	a7a20026 	sh	v0,38(sp)
    3e08:	86030196 	lh	v1,406(s0)
    3e0c:	3c014316 	lui	at,0x4316
    3e10:	50600019 	beqzl	v1,3e78 <func_80919704+0x184>
    3e14:	860d01d4 	lh	t5,468(s0)
    3e18:	c6040090 	lwc1	$f4,144(s0)
    3e1c:	44813000 	mtc1	at,$f6
    3e20:	246cffff 	addiu	t4,v1,-1
    3e24:	a60c0196 	sh	t4,406(s0)
    3e28:	4606203c 	c.lt.s	$f4,$f6
    3e2c:	00000000 	nop
    3e30:	45020004 	bc1fl	3e44 <func_80919704+0x150>
    3e34:	3c054055 	lui	a1,0x4055
    3e38:	0c000000 	jal	0 <func_80915A10>
    3e3c:	02002025 	move	a0,s0
    3e40:	3c054055 	lui	a1,0x4055
    3e44:	34a55555 	ori	a1,a1,0x5555
    3e48:	26040068 	addiu	a0,s0,104
    3e4c:	3c063f00 	lui	a2,0x3f00
    3e50:	0c000000 	jal	0 <func_80915A10>
    3e54:	3c074000 	lui	a3,0x4000
    3e58:	26040032 	addiu	a0,s0,50
    3e5c:	87a50026 	lh	a1,38(sp)
    3e60:	24060005 	li	a2,5
    3e64:	0c000000 	jal	0 <func_80915A10>
    3e68:	240703e8 	li	a3,1000
    3e6c:	10000025 	b	3f04 <func_80919704+0x210>
    3e70:	96020088 	lhu	v0,136(s0)
    3e74:	860d01d4 	lh	t5,468(s0)
    3e78:	3c0540d5 	lui	a1,0x40d5
    3e7c:	34a55555 	ori	a1,a1,0x5555
    3e80:	11a00010 	beqz	t5,3ec4 <func_80919704+0x1d0>
    3e84:	26040068 	addiu	a0,s0,104
    3e88:	26040068 	addiu	a0,s0,104
    3e8c:	3c05c120 	lui	a1,0xc120
    3e90:	3c063f00 	lui	a2,0x3f00
    3e94:	0c000000 	jal	0 <func_80915A10>
    3e98:	3c074000 	lui	a3,0x4000
    3e9c:	3c01c040 	lui	at,0xc040
    3ea0:	44814000 	mtc1	at,$f8
    3ea4:	860e01d4 	lh	t6,468(s0)
    3ea8:	24010001 	li	at,1
    3eac:	e6080168 	swc1	$f8,360(s0)
    3eb0:	55c1000f 	bnel	t6,at,3ef0 <func_80919704+0x1fc>
    3eb4:	26040032 	addiu	a0,s0,50
    3eb8:	44805000 	mtc1	zero,$f10
    3ebc:	1000000b 	b	3eec <func_80919704+0x1f8>
    3ec0:	e60a0068 	swc1	$f10,104(s0)
    3ec4:	3c063f00 	lui	a2,0x3f00
    3ec8:	0c000000 	jal	0 <func_80915A10>
    3ecc:	3c074000 	lui	a3,0x4000
    3ed0:	3c014000 	lui	at,0x4000
    3ed4:	44818000 	mtc1	at,$f16
    3ed8:	34018000 	li	at,0x8000
    3edc:	e6100168 	swc1	$f16,360(s0)
    3ee0:	87af0026 	lh	t7,38(sp)
    3ee4:	01e1c021 	addu	t8,t7,at
    3ee8:	a7b80026 	sh	t8,38(sp)
    3eec:	26040032 	addiu	a0,s0,50
    3ef0:	87a50026 	lh	a1,38(sp)
    3ef4:	24060003 	li	a2,3
    3ef8:	0c000000 	jal	0 <func_80915A10>
    3efc:	240709c4 	li	a3,2500
    3f00:	96020088 	lhu	v0,136(s0)
    3f04:	30590001 	andi	t9,v0,0x1
    3f08:	53200005 	beqzl	t9,3f20 <func_80919704+0x22c>
    3f0c:	30480008 	andi	t0,v0,0x8
    3f10:	44809000 	mtc1	zero,$f18
    3f14:	96020088 	lhu	v0,136(s0)
    3f18:	e6120060 	swc1	$f18,96(s0)
    3f1c:	30480008 	andi	t0,v0,0x8
    3f20:	51000004 	beqzl	t0,3f34 <func_80919704+0x240>
    3f24:	860901d2 	lh	t1,466(s0)
    3f28:	0c000000 	jal	0 <func_80915A10>
    3f2c:	02002025 	move	a0,s0
    3f30:	860901d2 	lh	t1,466(s0)
    3f34:	55200007 	bnezl	t1,3f54 <func_80919704+0x260>
    3f38:	8fbf001c 	lw	ra,28(sp)
    3f3c:	860a0196 	lh	t2,406(s0)
    3f40:	51400004 	beqzl	t2,3f54 <func_80919704+0x260>
    3f44:	8fbf001c 	lw	ra,28(sp)
    3f48:	0c000000 	jal	0 <func_80915A10>
    3f4c:	02002025 	move	a0,s0
    3f50:	8fbf001c 	lw	ra,28(sp)
    3f54:	8fb00018 	lw	s0,24(sp)
    3f58:	27bd0028 	addiu	sp,sp,40
    3f5c:	03e00008 	jr	ra
    3f60:	00000000 	nop

00003f64 <func_80919974>:
    3f64:	27bdffe0 	addiu	sp,sp,-32
    3f68:	afb00018 	sw	s0,24(sp)
    3f6c:	00808025 	move	s0,a0
    3f70:	afbf001c 	sw	ra,28(sp)
    3f74:	afa50024 	sw	a1,36(sp)
    3f78:	0c000000 	jal	0 <func_80915A10>
    3f7c:	2484014c 	addiu	a0,a0,332
    3f80:	860e0194 	lh	t6,404(s0)
    3f84:	02002025 	move	a0,s0
    3f88:	31cf0007 	andi	t7,t6,0x7
    3f8c:	55e00004 	bnezl	t7,3fa0 <func_80919974+0x3c>
    3f90:	26040060 	addiu	a0,s0,96
    3f94:	0c000000 	jal	0 <func_80915A10>
    3f98:	2405380c 	li	a1,14348
    3f9c:	26040060 	addiu	a0,s0,96
    3fa0:	3c0540a0 	lui	a1,0x40a0
    3fa4:	3c063f00 	lui	a2,0x3f00
    3fa8:	0c000000 	jal	0 <func_80915A10>
    3fac:	3c074000 	lui	a3,0x4000
    3fb0:	260400b4 	addiu	a0,s0,180
    3fb4:	2405c000 	li	a1,-16384
    3fb8:	24060002 	li	a2,2
    3fbc:	0c000000 	jal	0 <func_80915A10>
    3fc0:	240707d0 	li	a3,2000
    3fc4:	8605007e 	lh	a1,126(s0)
    3fc8:	34018000 	li	at,0x8000
    3fcc:	26040032 	addiu	a0,s0,50
    3fd0:	00a12821 	addu	a1,a1,at
    3fd4:	00052c00 	sll	a1,a1,0x10
    3fd8:	00052c03 	sra	a1,a1,0x10
    3fdc:	24060002 	li	a2,2
    3fe0:	0c000000 	jal	0 <func_80915A10>
    3fe4:	240705dc 	li	a3,1500
    3fe8:	3c01c3a0 	lui	at,0xc3a0
    3fec:	44812000 	mtc1	at,$f4
    3ff0:	c6060028 	lwc1	$f6,40(s0)
    3ff4:	4606203c 	c.lt.s	$f4,$f6
    3ff8:	00000000 	nop
    3ffc:	45020008 	bc1fl	4020 <func_80919974+0xbc>
    4000:	8fbf001c 	lw	ra,28(sp)
    4004:	0c000000 	jal	0 <func_80915A10>
    4008:	02002025 	move	a0,s0
    400c:	a60001a8 	sh	zero,424(s0)
    4010:	860201a8 	lh	v0,424(s0)
    4014:	a60201a6 	sh	v0,422(s0)
    4018:	a60201a4 	sh	v0,420(s0)
    401c:	8fbf001c 	lw	ra,28(sp)
    4020:	8fb00018 	lw	s0,24(sp)
    4024:	27bd0020 	addiu	sp,sp,32
    4028:	03e00008 	jr	ra
    402c:	00000000 	nop

00004030 <func_80919A40>:
    4030:	27bdffc8 	addiu	sp,sp,-56
    4034:	afbf0024 	sw	ra,36(sp)
    4038:	afb10020 	sw	s1,32(sp)
    403c:	240e0001 	li	t6,1
    4040:	00808825 	move	s1,a0
    4044:	afb0001c 	sw	s0,28(sp)
    4048:	afae0010 	sw	t6,16(sp)
    404c:	24060000 	li	a2,0
    4050:	0c000000 	jal	0 <func_80915A10>
    4054:	3c07c0a0 	lui	a3,0xc0a0
    4058:	862f0194 	lh	t7,404(s1)
    405c:	02202025 	move	a0,s1
    4060:	31f8003f 	andi	t8,t7,0x3f
    4064:	57000004 	bnezl	t8,4078 <func_80919A40+0x48>
    4068:	262400b4 	addiu	a0,s1,180
    406c:	0c000000 	jal	0 <func_80915A10>
    4070:	2405380f 	li	a1,14351
    4074:	262400b4 	addiu	a0,s1,180
    4078:	24058000 	li	a1,-32768
    407c:	24060003 	li	a2,3
    4080:	0c000000 	jal	0 <func_80915A10>
    4084:	240703e8 	li	a3,1000
    4088:	96390088 	lhu	t9,136(s1)
    408c:	33280008 	andi	t0,t9,0x8
    4090:	51000048 	beqzl	t0,41b4 <func_80919A40+0x184>
    4094:	862b01d2 	lh	t3,466(s1)
    4098:	863000b6 	lh	s0,182(s1)
    409c:	34018000 	li	at,0x8000
    40a0:	8622007e 	lh	v0,126(s1)
    40a4:	02018021 	addu	s0,s0,at
    40a8:	00108400 	sll	s0,s0,0x10
    40ac:	00108403 	sra	s0,s0,0x10
    40b0:	0202082a 	slt	at,s0,v0
    40b4:	1020000c 	beqz	at,40e8 <func_80919A40+0xb8>
    40b8:	02021823 	subu	v1,s0,v0
    40bc:	00501823 	subu	v1,v0,s0
    40c0:	00031c00 	sll	v1,v1,0x10
    40c4:	00031c03 	sra	v1,v1,0x10
    40c8:	04610003 	bgez	v1,40d8 <func_80919A40+0xa8>
    40cc:	00034843 	sra	t1,v1,0x1
    40d0:	24610001 	addiu	at,v1,1
    40d4:	00014843 	sra	t1,at,0x1
    40d8:	02098021 	addu	s0,s0,t1
    40dc:	00108400 	sll	s0,s0,0x10
    40e0:	1000000a 	b	410c <func_80919A40+0xdc>
    40e4:	00108403 	sra	s0,s0,0x10
    40e8:	00031c00 	sll	v1,v1,0x10
    40ec:	00031c03 	sra	v1,v1,0x10
    40f0:	04610003 	bgez	v1,4100 <func_80919A40+0xd0>
    40f4:	00035043 	sra	t2,v1,0x1
    40f8:	24610001 	addiu	at,v1,1
    40fc:	00015043 	sra	t2,at,0x1
    4100:	004a8021 	addu	s0,v0,t2
    4104:	00108400 	sll	s0,s0,0x10
    4108:	00108403 	sra	s0,s0,0x10
    410c:	3c014000 	lui	at,0x4000
    4110:	44816000 	mtc1	at,$f12
    4114:	0c000000 	jal	0 <func_80915A10>
    4118:	00000000 	nop
    411c:	0c000000 	jal	0 <func_80915A10>
    4120:	e7a00028 	swc1	$f0,40(sp)
    4124:	00102400 	sll	a0,s0,0x10
    4128:	00042403 	sra	a0,a0,0x10
    412c:	0c000000 	jal	0 <func_80915A10>
    4130:	e7a0002c 	swc1	$f0,44(sp)
    4134:	3c0140a0 	lui	at,0x40a0
    4138:	44811000 	mtc1	at,$f2
    413c:	c7a4002c 	lwc1	$f4,44(sp)
    4140:	c7b00028 	lwc1	$f16,40(sp)
    4144:	3c014000 	lui	at,0x4000
    4148:	46022182 	mul.s	$f6,$f4,$f2
    414c:	c624002c 	lwc1	$f4,44(s1)
    4150:	44816000 	mtc1	at,$f12
    4154:	46061200 	add.s	$f8,$f2,$f6
    4158:	46080282 	mul.s	$f10,$f0,$f8
    415c:	46105480 	add.s	$f18,$f10,$f16
    4160:	46122180 	add.s	$f6,$f4,$f18
    4164:	0c000000 	jal	0 <func_80915A10>
    4168:	e626002c 	swc1	$f6,44(s1)
    416c:	0c000000 	jal	0 <func_80915A10>
    4170:	e7a00028 	swc1	$f0,40(sp)
    4174:	00102400 	sll	a0,s0,0x10
    4178:	00042403 	sra	a0,a0,0x10
    417c:	0c000000 	jal	0 <func_80915A10>
    4180:	e7a0002c 	swc1	$f0,44(sp)
    4184:	3c0140a0 	lui	at,0x40a0
    4188:	44811000 	mtc1	at,$f2
    418c:	c7a8002c 	lwc1	$f8,44(sp)
    4190:	c7b20028 	lwc1	$f18,40(sp)
    4194:	46024282 	mul.s	$f10,$f8,$f2
    4198:	c6280024 	lwc1	$f8,36(s1)
    419c:	460a1400 	add.s	$f16,$f2,$f10
    41a0:	46100102 	mul.s	$f4,$f0,$f16
    41a4:	46122180 	add.s	$f6,$f4,$f18
    41a8:	46064280 	add.s	$f10,$f8,$f6
    41ac:	e62a0024 	swc1	$f10,36(s1)
    41b0:	862b01d2 	lh	t3,466(s1)
    41b4:	3c0142c8 	lui	at,0x42c8
    41b8:	55600017 	bnezl	t3,4218 <func_80919A40+0x1e8>
    41bc:	8fbf0024 	lw	ra,36(sp)
    41c0:	44811000 	mtc1	at,$f2
    41c4:	3c01c316 	lui	at,0xc316
    41c8:	44818000 	mtc1	at,$f16
    41cc:	c6240024 	lwc1	$f4,36(s1)
    41d0:	3c01c3af 	lui	at,0xc3af
    41d4:	46048001 	sub.s	$f0,$f16,$f4
    41d8:	46000005 	abs.s	$f0,$f0
    41dc:	4602003c 	c.lt.s	$f0,$f2
    41e0:	00000000 	nop
    41e4:	4502000c 	bc1fl	4218 <func_80919A40+0x1e8>
    41e8:	8fbf0024 	lw	ra,36(sp)
    41ec:	44819000 	mtc1	at,$f18
    41f0:	c628002c 	lwc1	$f8,44(s1)
    41f4:	46089001 	sub.s	$f0,$f18,$f8
    41f8:	46000005 	abs.s	$f0,$f0
    41fc:	4602003c 	c.lt.s	$f0,$f2
    4200:	00000000 	nop
    4204:	45020004 	bc1fl	4218 <func_80919A40+0x1e8>
    4208:	8fbf0024 	lw	ra,36(sp)
    420c:	0c000000 	jal	0 <func_80915A10>
    4210:	02202025 	move	a0,s1
    4214:	8fbf0024 	lw	ra,36(sp)
    4218:	8fb0001c 	lw	s0,28(sp)
    421c:	8fb10020 	lw	s1,32(sp)
    4220:	03e00008 	jr	ra
    4224:	27bd0038 	addiu	sp,sp,56

00004228 <func_80919C38>:
    4228:	27bdffd8 	addiu	sp,sp,-40
    422c:	afbf001c 	sw	ra,28(sp)
    4230:	afb00018 	sw	s0,24(sp)
    4234:	afa5002c 	sw	a1,44(sp)
    4238:	848e01be 	lh	t6,446(a0)
    423c:	00808025 	move	s0,a0
    4240:	55c00087 	bnezl	t6,4460 <func_80919C38+0x238>
    4244:	8fbf001c 	lw	ra,28(sp)
    4248:	849801b4 	lh	t8,436(a0)
    424c:	8ca21c44 	lw	v0,7236(a1)
    4250:	57000016 	bnezl	t8,42ac <func_80919C38+0x84>
    4254:	860d01a4 	lh	t5,420(s0)
    4258:	90590a73 	lbu	t9,2675(v0)
    425c:	2409000c 	li	t1,12
    4260:	53200004 	beqzl	t9,4274 <func_80919C38+0x4c>
    4264:	860a0194 	lh	t2,404(s0)
    4268:	a0400a73 	sb	zero,2675(v0)
    426c:	a489019c 	sh	t1,412(a0)
    4270:	860a0194 	lh	t2,404(s0)
    4274:	314b000f 	andi	t3,t2,0xf
    4278:	5560000c 	bnezl	t3,42ac <func_80919C38+0x84>
    427c:	860d01a4 	lh	t5,420(s0)
    4280:	0c000000 	jal	0 <func_80915A10>
    4284:	00000000 	nop
    4288:	3c010000 	lui	at,0x0
    428c:	c4240000 	lwc1	$f4,0(at)
    4290:	240c0007 	li	t4,7
    4294:	4604003c 	c.lt.s	$f0,$f4
    4298:	00000000 	nop
    429c:	45020003 	bc1fl	42ac <func_80919C38+0x84>
    42a0:	860d01a4 	lh	t5,420(s0)
    42a4:	a60c019c 	sh	t4,412(s0)
    42a8:	860d01a4 	lh	t5,420(s0)
    42ac:	24180007 	li	t8,7
    42b0:	26040198 	addiu	a0,s0,408
    42b4:	1da00007 	bgtz	t5,42d4 <func_80919C38+0xac>
    42b8:	00002825 	move	a1,zero
    42bc:	860e01a6 	lh	t6,422(s0)
    42c0:	5dc00005 	bgtzl	t6,42d8 <func_80919C38+0xb0>
    42c4:	a618019c 	sh	t8,412(s0)
    42c8:	860f01a8 	lh	t7,424(s0)
    42cc:	59e00003 	blezl	t7,42dc <func_80919C38+0xb4>
    42d0:	8602019c 	lh	v0,412(s0)
    42d4:	a618019c 	sh	t8,412(s0)
    42d8:	8602019c 	lh	v0,412(s0)
    42dc:	240707d0 	li	a3,2000
    42e0:	24060001 	li	a2,1
    42e4:	1040000d 	beqz	v0,431c <func_80919C38+0xf4>
    42e8:	2459ffff 	addiu	t9,v0,-1
    42ec:	a619019c 	sh	t9,412(s0)
    42f0:	26040198 	addiu	a0,s0,408
    42f4:	2405f568 	li	a1,-2712
    42f8:	0c000000 	jal	0 <func_80915A10>
    42fc:	24060001 	li	a2,1
    4300:	2604019a 	addiu	a0,s0,410
    4304:	24051600 	li	a1,5632
    4308:	24060001 	li	a2,1
    430c:	0c000000 	jal	0 <func_80915A10>
    4310:	240707d0 	li	a3,2000
    4314:	10000009 	b	433c <func_80919C38+0x114>
    4318:	860901b4 	lh	t1,436(s0)
    431c:	0c000000 	jal	0 <func_80915A10>
    4320:	240707d0 	li	a3,2000
    4324:	2604019a 	addiu	a0,s0,410
    4328:	00002825 	move	a1,zero
    432c:	24060001 	li	a2,1
    4330:	0c000000 	jal	0 <func_80915A10>
    4334:	240707d0 	li	a3,2000
    4338:	860901b4 	lh	t1,436(s0)
    433c:	24010001 	li	at,1
    4340:	260401a0 	addiu	a0,s0,416
    4344:	1121002f 	beq	t1,at,4404 <func_80919C38+0x1dc>
    4348:	00002825 	move	a1,zero
    434c:	8faa002c 	lw	t2,44(sp)
    4350:	02002025 	move	a0,s0
    4354:	0c000000 	jal	0 <func_80915A10>
    4358:	8d451c44 	lw	a1,7236(t2)
    435c:	860b00b6 	lh	t3,182(s0)
    4360:	8fad002c 	lw	t5,44(sp)
    4364:	02002025 	move	a0,s0
    4368:	004b6023 	subu	t4,v0,t3
    436c:	a7ac0024 	sh	t4,36(sp)
    4370:	0c000000 	jal	0 <func_80915A10>
    4374:	8da51c44 	lw	a1,7236(t5)
    4378:	860300b4 	lh	v1,180(s0)
    437c:	87a50024 	lh	a1,36(sp)
    4380:	260401a0 	addiu	a0,s0,416
    4384:	00434023 	subu	t0,v0,v1
    4388:	00084400 	sll	t0,t0,0x10
    438c:	28614001 	slti	at,v1,16385
    4390:	10200003 	beqz	at,43a0 <func_80919C38+0x178>
    4394:	00084403 	sra	t0,t0,0x10
    4398:	2861c000 	slti	at,v1,-16384
    439c:	10200008 	beqz	at,43c0 <func_80919C38+0x198>
    43a0:	34018000 	li	at,0x8000
    43a4:	00a12821 	addu	a1,a1,at
    43a8:	00052c00 	sll	a1,a1,0x10
    43ac:	00052c03 	sra	a1,a1,0x10
    43b0:	00052823 	negu	a1,a1
    43b4:	00052c00 	sll	a1,a1,0x10
    43b8:	00052c03 	sra	a1,a1,0x10
    43bc:	2408f448 	li	t0,-3000
    43c0:	28a11771 	slti	at,a1,6001
    43c4:	14200002 	bnez	at,43d0 <func_80919C38+0x1a8>
    43c8:	24060003 	li	a2,3
    43cc:	24051770 	li	a1,6000
    43d0:	28a1e890 	slti	at,a1,-6000
    43d4:	10200002 	beqz	at,43e0 <func_80919C38+0x1b8>
    43d8:	240707d0 	li	a3,2000
    43dc:	2405e890 	li	a1,-6000
    43e0:	0c000000 	jal	0 <func_80915A10>
    43e4:	a7a80026 	sh	t0,38(sp)
    43e8:	2604019e 	addiu	a0,s0,414
    43ec:	87a50026 	lh	a1,38(sp)
    43f0:	24060003 	li	a2,3
    43f4:	0c000000 	jal	0 <func_80915A10>
    43f8:	240707d0 	li	a3,2000
    43fc:	1000000a 	b	4428 <func_80919C38+0x200>
    4400:	3c063e4c 	lui	a2,0x3e4c
    4404:	24060003 	li	a2,3
    4408:	0c000000 	jal	0 <func_80915A10>
    440c:	240703e8 	li	a3,1000
    4410:	2604019e 	addiu	a0,s0,414
    4414:	00002825 	move	a1,zero
    4418:	24060003 	li	a2,3
    441c:	0c000000 	jal	0 <func_80915A10>
    4420:	240703e8 	li	a3,1000
    4424:	3c063e4c 	lui	a2,0x3e4c
    4428:	3c073d8f 	lui	a3,0x3d8f
    442c:	34e75c29 	ori	a3,a3,0x5c29
    4430:	34c6cccd 	ori	a2,a2,0xcccd
    4434:	260401f8 	addiu	a0,s0,504
    4438:	0c000000 	jal	0 <func_80915A10>
    443c:	3c053f80 	lui	a1,0x3f80
    4440:	3c063e4c 	lui	a2,0x3e4c
    4444:	3c073d8f 	lui	a3,0x3d8f
    4448:	34e75c29 	ori	a3,a3,0x5c29
    444c:	34c6cccd 	ori	a2,a2,0xcccd
    4450:	26040224 	addiu	a0,s0,548
    4454:	0c000000 	jal	0 <func_80915A10>
    4458:	3c053f80 	lui	a1,0x3f80
    445c:	8fbf001c 	lw	ra,28(sp)
    4460:	8fb00018 	lw	s0,24(sp)
    4464:	27bd0028 	addiu	sp,sp,40
    4468:	03e00008 	jr	ra
    446c:	00000000 	nop

00004470 <func_80919E80>:
    4470:	27bdffc0 	addiu	sp,sp,-64
    4474:	afbf003c 	sw	ra,60(sp)
    4478:	afb10038 	sw	s1,56(sp)
    447c:	afb00034 	sw	s0,52(sp)
    4480:	f7ba0028 	sdc1	$f26,40(sp)
    4484:	f7b80020 	sdc1	$f24,32(sp)
    4488:	f7b60018 	sdc1	$f22,24(sp)
    448c:	f7b40010 	sdc1	$f20,16(sp)
    4490:	848e0194 	lh	t6,404(a0)
    4494:	00808825 	move	s1,a0
    4498:	00008025 	move	s0,zero
    449c:	31cf007f 	andi	t7,t6,0x7f
    44a0:	55e0000a 	bnezl	t7,44cc <func_80919E80+0x5c>
    44a4:	3c013f80 	lui	at,0x3f80
    44a8:	849801a2 	lh	t8,418(a0)
    44ac:	27190001 	addiu	t9,t8,1
    44b0:	a49901a2 	sh	t9,418(a0)
    44b4:	848801a2 	lh	t0,418(a0)
    44b8:	29010003 	slti	at,t0,3
    44bc:	54200003 	bnezl	at,44cc <func_80919E80+0x5c>
    44c0:	3c013f80 	lui	at,0x3f80
    44c4:	a48001a2 	sh	zero,418(a0)
    44c8:	3c013f80 	lui	at,0x3f80
    44cc:	4481d000 	mtc1	at,$f26
    44d0:	3c013fc0 	lui	at,0x3fc0
    44d4:	4481c000 	mtc1	at,$f24
    44d8:	3c010000 	lui	at,0x0
    44dc:	c4360000 	lwc1	$f22,0(at)
    44e0:	3c010000 	lui	at,0x0
    44e4:	c4340000 	lwc1	$f20,0(at)
    44e8:	00104840 	sll	t1,s0,0x1
    44ec:	02291021 	addu	v0,s1,t1
    44f0:	844301aa 	lh	v1,426(v0)
    44f4:	00106080 	sll	t4,s0,0x2
    44f8:	022c2021 	addu	a0,s1,t4
    44fc:	1060000b 	beqz	v1,452c <func_80919E80+0xbc>
    4500:	246affff 	addiu	t2,v1,-1
    4504:	00105880 	sll	t3,s0,0x2
    4508:	022b2021 	addu	a0,s1,t3
    450c:	4405c000 	mfc1	a1,$f24
    4510:	4406a000 	mfc1	a2,$f20
    4514:	4407b000 	mfc1	a3,$f22
    4518:	a44a01aa 	sh	t2,426(v0)
    451c:	0c000000 	jal	0 <func_80915A10>
    4520:	248401e8 	addiu	a0,a0,488
    4524:	10000007 	b	4544 <func_80919E80+0xd4>
    4528:	26100001 	addiu	s0,s0,1
    452c:	4405d000 	mfc1	a1,$f26
    4530:	4406a000 	mfc1	a2,$f20
    4534:	4407b000 	mfc1	a3,$f22
    4538:	0c000000 	jal	0 <func_80915A10>
    453c:	248401e8 	addiu	a0,a0,488
    4540:	26100001 	addiu	s0,s0,1
    4544:	00108400 	sll	s0,s0,0x10
    4548:	00108403 	sra	s0,s0,0x10
    454c:	2a010004 	slti	at,s0,4
    4550:	5420ffe6 	bnezl	at,44ec <func_80919E80+0x7c>
    4554:	00104840 	sll	t1,s0,0x1
    4558:	8fbf003c 	lw	ra,60(sp)
    455c:	d7b40010 	ldc1	$f20,16(sp)
    4560:	d7b60018 	ldc1	$f22,24(sp)
    4564:	d7b80020 	ldc1	$f24,32(sp)
    4568:	d7ba0028 	ldc1	$f26,40(sp)
    456c:	8fb00034 	lw	s0,52(sp)
    4570:	8fb10038 	lw	s1,56(sp)
    4574:	03e00008 	jr	ra
    4578:	27bd0040 	addiu	sp,sp,64

0000457c <func_80919F8C>:
    457c:	27bdffd0 	addiu	sp,sp,-48
    4580:	afbf001c 	sw	ra,28(sp)
    4584:	afb00018 	sw	s0,24(sp)
    4588:	afa50034 	sw	a1,52(sp)
    458c:	848201ba 	lh	v0,442(a0)
    4590:	00808025 	move	s0,a0
    4594:	10400003 	beqz	v0,45a4 <func_80919F8C+0x28>
    4598:	244effff 	addiu	t6,v0,-1
    459c:	1000006a 	b	4748 <func_80919F8C+0x1cc>
    45a0:	a48e01ba 	sh	t6,442(a0)
    45a4:	8e0307d8 	lw	v1,2008(s0)
    45a8:	8c6f0024 	lw	t7,36(v1)
    45ac:	afaf002c 	sw	t7,44(sp)
    45b0:	8618019c 	lh	t8,412(s0)
    45b4:	57000065 	bnezl	t8,474c <func_80919F8C+0x1d0>
    45b8:	8fbf001c 	lw	ra,28(sp)
    45bc:	8e080190 	lw	t0,400(s0)
    45c0:	3c190000 	lui	t9,0x0
    45c4:	27390000 	addiu	t9,t9,0
    45c8:	53280060 	beql	t9,t0,474c <func_80919F8C+0x1d0>
    45cc:	8fbf001c 	lw	ra,28(sp)
    45d0:	90640016 	lbu	a0,22(v1)
    45d4:	30890002 	andi	t1,a0,0x2
    45d8:	1120005b 	beqz	t1,4748 <func_80919F8C+0x1cc>
    45dc:	308afffd 	andi	t2,a0,0xfffd
    45e0:	a06a0016 	sb	t2,22(v1)
    45e4:	8e020190 	lw	v0,400(s0)
    45e8:	3c0b0000 	lui	t3,0x0
    45ec:	256b0000 	addiu	t3,t3,0
    45f0:	11620007 	beq	t3,v0,4610 <func_80919F8C+0x94>
    45f4:	3c0c0000 	lui	t4,0x0
    45f8:	258c0000 	addiu	t4,t4,0
    45fc:	11820004 	beq	t4,v0,4610 <func_80919F8C+0x94>
    4600:	3c0d0000 	lui	t5,0x0
    4604:	25ad0000 	addiu	t5,t5,0
    4608:	15a20008 	bne	t5,v0,462c <func_80919F8C+0xb0>
    460c:	3c030000 	lui	v1,0x0
    4610:	0c000000 	jal	0 <func_80915A10>
    4614:	02002025 	move	a0,s0
    4618:	02002025 	move	a0,s0
    461c:	0c000000 	jal	0 <func_80915A10>
    4620:	24053811 	li	a1,14353
    4624:	10000049 	b	474c <func_80919F8C+0x1d0>
    4628:	8fbf001c 	lw	ra,28(sp)
    462c:	24630000 	addiu	v1,v1,0
    4630:	1462001f 	bne	v1,v0,46b0 <func_80919F8C+0x134>
    4634:	8fae002c 	lw	t6,44(sp)
    4638:	8dc40000 	lw	a0,0(t6)
    463c:	0c000000 	jal	0 <func_80915A10>
    4640:	afa30024 	sw	v1,36(sp)
    4644:	1040001a 	beqz	v0,46b0 <func_80919F8C+0x134>
    4648:	8fa30024 	lw	v1,36(sp)
    464c:	920f00af 	lbu	t7,175(s0)
    4650:	24053810 	li	a1,14352
    4654:	02002025 	move	a0,s0
    4658:	01e2c023 	subu	t8,t7,v0
    465c:	a21800af 	sb	t8,175(s0)
    4660:	821900af 	lb	t9,175(s0)
    4664:	1b20000a 	blez	t9,4690 <func_80919F8C+0x114>
    4668:	00000000 	nop
    466c:	0c000000 	jal	0 <func_80915A10>
    4670:	02002025 	move	a0,s0
    4674:	0c000000 	jal	0 <func_80915A10>
    4678:	02002025 	move	a0,s0
    467c:	8fa40034 	lw	a0,52(sp)
    4680:	0c000000 	jal	0 <func_80915A10>
    4684:	26050038 	addiu	a1,s0,56
    4688:	10000007 	b	46a8 <func_80919F8C+0x12c>
    468c:	2408000a 	li	t0,10
    4690:	0c000000 	jal	0 <func_80915A10>
    4694:	8fa50034 	lw	a1,52(sp)
    4698:	8fa40034 	lw	a0,52(sp)
    469c:	0c000000 	jal	0 <func_80915A10>
    46a0:	02002825 	move	a1,s0
    46a4:	2408000a 	li	t0,10
    46a8:	10000027 	b	4748 <func_80919F8C+0x1cc>
    46ac:	a60801ba 	sh	t0,442(s0)
    46b0:	8e090190 	lw	t1,400(s0)
    46b4:	50690025 	beql	v1,t1,474c <func_80919F8C+0x1d0>
    46b8:	8fbf001c 	lw	ra,28(sp)
    46bc:	860a0196 	lh	t2,406(s0)
    46c0:	8fab002c 	lw	t3,44(sp)
    46c4:	51400021 	beqzl	t2,474c <func_80919F8C+0x1d0>
    46c8:	8fbf001c 	lw	ra,28(sp)
    46cc:	8d6c0000 	lw	t4,0(t3)
    46d0:	02002025 	move	a0,s0
    46d4:	318d0005 	andi	t5,t4,0x5
    46d8:	51a0001c 	beqzl	t5,474c <func_80919F8C+0x1d0>
    46dc:	8fbf001c 	lw	ra,28(sp)
    46e0:	0c000000 	jal	0 <func_80915A10>
    46e4:	24053811 	li	a1,14353
    46e8:	0c000000 	jal	0 <func_80915A10>
    46ec:	2404380e 	li	a0,14350
    46f0:	240e000a 	li	t6,10
    46f4:	a60e01ba 	sh	t6,442(s0)
    46f8:	0c000000 	jal	0 <func_80915A10>
    46fc:	02002025 	move	a0,s0
    4700:	240f0064 	li	t7,100
    4704:	a60f01d6 	sh	t7,470(s0)
    4708:	8fb8002c 	lw	t8,44(sp)
    470c:	240a005a 	li	t2,90
    4710:	240b0004 	li	t3,4
    4714:	8f190000 	lw	t9,0(t8)
    4718:	02002025 	move	a0,s0
    471c:	24060004 	li	a2,4
    4720:	33280001 	andi	t0,t9,0x1
    4724:	11000004 	beqz	t0,4738 <func_80919F8C+0x1bc>
    4728:	2407000c 	li	a3,12
    472c:	24090028 	li	t1,40
    4730:	10000002 	b	473c <func_80919F8C+0x1c0>
    4734:	a60901d2 	sh	t1,466(s0)
    4738:	a60a01d2 	sh	t2,466(s0)
    473c:	a60b01d4 	sh	t3,468(s0)
    4740:	0c000000 	jal	0 <func_80915A10>
    4744:	8fa50034 	lw	a1,52(sp)
    4748:	8fbf001c 	lw	ra,28(sp)
    474c:	8fb00018 	lw	s0,24(sp)
    4750:	27bd0030 	addiu	sp,sp,48
    4754:	03e00008 	jr	ra
    4758:	00000000 	nop

0000475c <func_8091A16C>:
    475c:	27bdffe0 	addiu	sp,sp,-32
    4760:	afbf001c 	sw	ra,28(sp)
    4764:	afb00018 	sw	s0,24(sp)
    4768:	848301b8 	lh	v1,440(a0)
    476c:	24010001 	li	at,1
    4770:	00808025 	move	s0,a0
    4774:	54610016 	bnel	v1,at,47d0 <func_8091A16C+0x74>
    4778:	860201ba 	lh	v0,442(s0)
    477c:	848e0194 	lh	t6,404(a0)
    4780:	24840204 	addiu	a0,a0,516
    4784:	3c054248 	lui	a1,0x4248
    4788:	31cf0010 	andi	t7,t6,0x10
    478c:	11e0000f 	beqz	t7,47cc <func_8091A16C+0x70>
    4790:	3c063f00 	lui	a2,0x3f00
    4794:	0c000000 	jal	0 <func_80915A10>
    4798:	3c0741a0 	lui	a3,0x41a0
    479c:	26040208 	addiu	a0,s0,520
    47a0:	3c054248 	lui	a1,0x4248
    47a4:	3c063f00 	lui	a2,0x3f00
    47a8:	0c000000 	jal	0 <func_80915A10>
    47ac:	3c0741a0 	lui	a3,0x41a0
    47b0:	2604020c 	addiu	a0,s0,524
    47b4:	3c054248 	lui	a1,0x4248
    47b8:	3c063f00 	lui	a2,0x3f00
    47bc:	0c000000 	jal	0 <func_80915A10>
    47c0:	3c0741a0 	lui	a3,0x41a0
    47c4:	10000040 	b	48c8 <func_8091A16C+0x16c>
    47c8:	8fbf001c 	lw	ra,28(sp)
    47cc:	860201ba 	lh	v0,442(s0)
    47d0:	00035880 	sll	t3,v1,0x2
    47d4:	01635823 	subu	t3,t3,v1
    47d8:	1040001d 	beqz	v0,4850 <func_8091A16C+0xf4>
    47dc:	26040204 	addiu	a0,s0,516
    47e0:	30580002 	andi	t8,v0,0x2
    47e4:	1300000d 	beqz	t8,481c <func_8091A16C+0xc0>
    47e8:	0003c880 	sll	t9,v1,0x2
    47ec:	0323c823 	subu	t9,t9,v1
    47f0:	3c080000 	lui	t0,0x0
    47f4:	25080000 	addiu	t0,t0,0
    47f8:	0019c880 	sll	t9,t9,0x2
    47fc:	03281021 	addu	v0,t9,t0
    4800:	c4440000 	lwc1	$f4,0(v0)
    4804:	e6040204 	swc1	$f4,516(s0)
    4808:	c4460004 	lwc1	$f6,4(v0)
    480c:	e6060208 	swc1	$f6,520(s0)
    4810:	c4480008 	lwc1	$f8,8(v0)
    4814:	1000002b 	b	48c4 <func_8091A16C+0x168>
    4818:	e608020c 	swc1	$f8,524(s0)
    481c:	00034880 	sll	t1,v1,0x2
    4820:	01234823 	subu	t1,t1,v1
    4824:	3c0a0000 	lui	t2,0x0
    4828:	254a0000 	addiu	t2,t2,0
    482c:	00094880 	sll	t1,t1,0x2
    4830:	012a1021 	addu	v0,t1,t2
    4834:	c44a0000 	lwc1	$f10,0(v0)
    4838:	e60a0204 	swc1	$f10,516(s0)
    483c:	c4500004 	lwc1	$f16,4(v0)
    4840:	e6100208 	swc1	$f16,520(s0)
    4844:	c4520008 	lwc1	$f18,8(v0)
    4848:	1000001e 	b	48c4 <func_8091A16C+0x168>
    484c:	e612020c 	swc1	$f18,524(s0)
    4850:	000b5880 	sll	t3,t3,0x2
    4854:	3c050000 	lui	a1,0x0
    4858:	00ab2821 	addu	a1,a1,t3
    485c:	8ca50000 	lw	a1,0(a1)
    4860:	3c063f00 	lui	a2,0x3f00
    4864:	0c000000 	jal	0 <func_80915A10>
    4868:	3c0741a0 	lui	a3,0x41a0
    486c:	860c01b8 	lh	t4,440(s0)
    4870:	3c050000 	lui	a1,0x0
    4874:	26040208 	addiu	a0,s0,520
    4878:	000c6880 	sll	t5,t4,0x2
    487c:	01ac6823 	subu	t5,t5,t4
    4880:	000d6880 	sll	t5,t5,0x2
    4884:	00ad2821 	addu	a1,a1,t5
    4888:	8ca50000 	lw	a1,0(a1)
    488c:	3c063f00 	lui	a2,0x3f00
    4890:	0c000000 	jal	0 <func_80915A10>
    4894:	3c0741a0 	lui	a3,0x41a0
    4898:	860e01b8 	lh	t6,440(s0)
    489c:	3c050000 	lui	a1,0x0
    48a0:	2604020c 	addiu	a0,s0,524
    48a4:	000e7880 	sll	t7,t6,0x2
    48a8:	01ee7823 	subu	t7,t7,t6
    48ac:	000f7880 	sll	t7,t7,0x2
    48b0:	00af2821 	addu	a1,a1,t7
    48b4:	8ca50000 	lw	a1,0(a1)
    48b8:	3c063f00 	lui	a2,0x3f00
    48bc:	0c000000 	jal	0 <func_80915A10>
    48c0:	3c0741a0 	lui	a3,0x41a0
    48c4:	8fbf001c 	lw	ra,28(sp)
    48c8:	8fb00018 	lw	s0,24(sp)
    48cc:	27bd0020 	addiu	sp,sp,32
    48d0:	03e00008 	jr	ra
    48d4:	00000000 	nop

000048d8 <func_8091A2E8>:
    48d8:	27bdffe0 	addiu	sp,sp,-32
    48dc:	afb00018 	sw	s0,24(sp)
    48e0:	00808025 	move	s0,a0
    48e4:	afbf001c 	sw	ra,28(sp)
    48e8:	860e01b8 	lh	t6,440(s0)
    48ec:	3c050000 	lui	a1,0x0
    48f0:	24840210 	addiu	a0,a0,528
    48f4:	000e7880 	sll	t7,t6,0x2
    48f8:	01ee7823 	subu	t7,t7,t6
    48fc:	000f7880 	sll	t7,t7,0x2
    4900:	00af2821 	addu	a1,a1,t7
    4904:	8ca50000 	lw	a1,0(a1)
    4908:	3c063f00 	lui	a2,0x3f00
    490c:	0c000000 	jal	0 <func_80915A10>
    4910:	3c0741a0 	lui	a3,0x41a0
    4914:	861801b8 	lh	t8,440(s0)
    4918:	3c050000 	lui	a1,0x0
    491c:	26040214 	addiu	a0,s0,532
    4920:	0018c880 	sll	t9,t8,0x2
    4924:	0338c823 	subu	t9,t9,t8
    4928:	0019c880 	sll	t9,t9,0x2
    492c:	00b92821 	addu	a1,a1,t9
    4930:	8ca50000 	lw	a1,0(a1)
    4934:	3c063f00 	lui	a2,0x3f00
    4938:	0c000000 	jal	0 <func_80915A10>
    493c:	3c0741a0 	lui	a3,0x41a0
    4940:	860801b8 	lh	t0,440(s0)
    4944:	3c050000 	lui	a1,0x0
    4948:	26040218 	addiu	a0,s0,536
    494c:	00084880 	sll	t1,t0,0x2
    4950:	01284823 	subu	t1,t1,t0
    4954:	00094880 	sll	t1,t1,0x2
    4958:	00a92821 	addu	a1,a1,t1
    495c:	8ca50000 	lw	a1,0(a1)
    4960:	3c063f00 	lui	a2,0x3f00
    4964:	0c000000 	jal	0 <func_80915A10>
    4968:	3c0741a0 	lui	a3,0x41a0
    496c:	8fbf001c 	lw	ra,28(sp)
    4970:	8fb00018 	lw	s0,24(sp)
    4974:	27bd0020 	addiu	sp,sp,32
    4978:	03e00008 	jr	ra
    497c:	00000000 	nop

00004980 <BossGoma_Update>:
    4980:	27bdffc8 	addiu	sp,sp,-56
    4984:	afbf0024 	sw	ra,36(sp)
    4988:	afb00020 	sw	s0,32(sp)
    498c:	afa5003c 	sw	a1,60(sp)
    4990:	848f0194 	lh	t7,404(a0)
    4994:	848201d2 	lh	v0,466(a0)
    4998:	240e0001 	li	t6,1
    499c:	25f80001 	addiu	t8,t7,1
    49a0:	00808025 	move	s0,a0
    49a4:	a48e01b8 	sh	t6,440(a0)
    49a8:	10400003 	beqz	v0,49b8 <BossGoma_Update+0x38>
    49ac:	a4980194 	sh	t8,404(a0)
    49b0:	2459ffff 	addiu	t9,v0,-1
    49b4:	a49901d2 	sh	t9,466(a0)
    49b8:	860201d4 	lh	v0,468(s0)
    49bc:	10400002 	beqz	v0,49c8 <BossGoma_Update+0x48>
    49c0:	2448ffff 	addiu	t0,v0,-1
    49c4:	a60801d4 	sh	t0,468(s0)
    49c8:	860201d6 	lh	v0,470(s0)
    49cc:	10400002 	beqz	v0,49d8 <BossGoma_Update+0x58>
    49d0:	2449ffff 	addiu	t1,v0,-1
    49d4:	a60901d6 	sh	t1,470(s0)
    49d8:	8e190190 	lw	t9,400(s0)
    49dc:	a60001b4 	sh	zero,436(s0)
    49e0:	8fa5003c 	lw	a1,60(sp)
    49e4:	0320f809 	jalr	t9
    49e8:	02002025 	move	a0,s0
    49ec:	860b01b6 	lh	t3,438(s0)
    49f0:	860a0032 	lh	t2,50(s0)
    49f4:	15600005 	bnez	t3,4a0c <BossGoma_Update+0x8c>
    49f8:	a60a00b6 	sh	t2,182(s0)
    49fc:	0c000000 	jal	0 <func_80915A10>
    4a00:	02002025 	move	a0,s0
    4a04:	10000003 	b	4a14 <BossGoma_Update+0x94>
    4a08:	3c01c3c8 	lui	at,0xc3c8
    4a0c:	a60001b6 	sh	zero,438(s0)
    4a10:	3c01c3c8 	lui	at,0xc3c8
    4a14:	44813000 	mtc1	at,$f6
    4a18:	c6040028 	lwc1	$f4,40(s0)
    4a1c:	3c0141f0 	lui	at,0x41f0
    4a20:	240c0005 	li	t4,5
    4a24:	4606203c 	c.lt.s	$f4,$f6
    4a28:	8fa4003c 	lw	a0,60(sp)
    4a2c:	02002825 	move	a1,s0
    4a30:	24060000 	li	a2,0
    4a34:	4500000e 	bc1f	4a70 <BossGoma_Update+0xf0>
    4a38:	240d0001 	li	t5,1
    4a3c:	3c0141f0 	lui	at,0x41f0
    4a40:	44810000 	mtc1	at,$f0
    4a44:	3c0142a0 	lui	at,0x42a0
    4a48:	44814000 	mtc1	at,$f8
    4a4c:	44060000 	mfc1	a2,$f0
    4a50:	44070000 	mfc1	a3,$f0
    4a54:	8fa4003c 	lw	a0,60(sp)
    4a58:	02002825 	move	a1,s0
    4a5c:	afac0014 	sw	t4,20(sp)
    4a60:	0c000000 	jal	0 <func_80915A10>
    4a64:	e7a80010 	swc1	$f8,16(sp)
    4a68:	10000009 	b	4a90 <BossGoma_Update+0x110>
    4a6c:	02002025 	move	a0,s0
    4a70:	44810000 	mtc1	at,$f0
    4a74:	3c0142a0 	lui	at,0x42a0
    4a78:	44815000 	mtc1	at,$f10
    4a7c:	44070000 	mfc1	a3,$f0
    4a80:	afad0014 	sw	t5,20(sp)
    4a84:	0c000000 	jal	0 <func_80915A10>
    4a88:	e7aa0010 	swc1	$f10,16(sp)
    4a8c:	02002025 	move	a0,s0
    4a90:	0c000000 	jal	0 <func_80915A10>
    4a94:	8fa5003c 	lw	a1,60(sp)
    4a98:	0c000000 	jal	0 <func_80915A10>
    4a9c:	02002025 	move	a0,s0
    4aa0:	0c000000 	jal	0 <func_80915A10>
    4aa4:	02002025 	move	a0,s0
    4aa8:	0c000000 	jal	0 <func_80915A10>
    4aac:	02002025 	move	a0,s0
    4ab0:	860e01be 	lh	t6,446(s0)
    4ab4:	02002025 	move	a0,s0
    4ab8:	55c00021 	bnezl	t6,4b40 <BossGoma_Update+0x1c0>
    4abc:	8fbf0024 	lw	ra,36(sp)
    4ac0:	0c000000 	jal	0 <func_80915A10>
    4ac4:	8fa5003c 	lw	a1,60(sp)
    4ac8:	8fa4003c 	lw	a0,60(sp)
    4acc:	3c010001 	lui	at,0x1
    4ad0:	34211e60 	ori	at,at,0x1e60
    4ad4:	260607bc 	addiu	a2,s0,1980
    4ad8:	00812821 	addu	a1,a0,at
    4adc:	afa5002c 	sw	a1,44(sp)
    4ae0:	0c000000 	jal	0 <func_80915A10>
    4ae4:	afa60028 	sw	a2,40(sp)
    4ae8:	8fa4003c 	lw	a0,60(sp)
    4aec:	8fa5002c 	lw	a1,44(sp)
    4af0:	0c000000 	jal	0 <func_80915A10>
    4af4:	8fa60028 	lw	a2,40(sp)
    4af8:	8e020190 	lw	v0,400(s0)
    4afc:	3c0f0000 	lui	t7,0x0
    4b00:	25ef0000 	addiu	t7,t7,0
    4b04:	11e2000d 	beq	t7,v0,4b3c <BossGoma_Update+0x1bc>
    4b08:	3c180000 	lui	t8,0x0
    4b0c:	27180000 	addiu	t8,t8,0
    4b10:	1302000a 	beq	t8,v0,4b3c <BossGoma_Update+0x1bc>
    4b14:	3c080000 	lui	t0,0x0
    4b18:	25080000 	addiu	t0,t0,0
    4b1c:	15020004 	bne	t0,v0,4b30 <BossGoma_Update+0x1b0>
    4b20:	8fa4003c 	lw	a0,60(sp)
    4b24:	860901d4 	lh	t1,468(s0)
    4b28:	55200005 	bnezl	t1,4b40 <BossGoma_Update+0x1c0>
    4b2c:	8fbf0024 	lw	ra,36(sp)
    4b30:	8fa5002c 	lw	a1,44(sp)
    4b34:	0c000000 	jal	0 <func_80915A10>
    4b38:	8fa60028 	lw	a2,40(sp)
    4b3c:	8fbf0024 	lw	ra,36(sp)
    4b40:	8fb00020 	lw	s0,32(sp)
    4b44:	27bd0038 	addiu	sp,sp,56
    4b48:	03e00008 	jr	ra
    4b4c:	00000000 	nop

00004b50 <func_8091A560>:
    4b50:	27bdff98 	addiu	sp,sp,-104
    4b54:	afbf0014 	sw	ra,20(sp)
    4b58:	afa40068 	sw	a0,104(sp)
    4b5c:	afa5006c 	sw	a1,108(sp)
    4b60:	afa60070 	sw	a2,112(sp)
    4b64:	afa70074 	sw	a3,116(sp)
    4b68:	afa00060 	sw	zero,96(sp)
    4b6c:	8c850000 	lw	a1,0(a0)
    4b70:	3c060000 	lui	a2,0x0
    4b74:	24c60000 	addiu	a2,a2,0
    4b78:	27a4004c 	addiu	a0,sp,76
    4b7c:	2407124d 	li	a3,4685
    4b80:	0c000000 	jal	0 <func_80915A10>
    4b84:	afa5005c 	sw	a1,92(sp)
    4b88:	8fa9005c 	lw	t1,92(sp)
    4b8c:	8fa70074 	lw	a3,116(sp)
    4b90:	3c18e700 	lui	t8,0xe700
    4b94:	8d2202c0 	lw	v0,704(t1)
    4b98:	3c04fb00 	lui	a0,0xfb00
    4b9c:	244f0008 	addiu	t7,v0,8
    4ba0:	ad2f02c0 	sw	t7,704(t1)
    4ba4:	ac400004 	sw	zero,4(v0)
    4ba8:	ac580000 	sw	t8,0(v0)
    4bac:	8d2202c0 	lw	v0,704(t1)
    4bb0:	8fa8007c 	lw	t0,124(sp)
    4bb4:	24590008 	addiu	t9,v0,8
    4bb8:	ad3902c0 	sw	t9,704(t1)
    4bbc:	ac440000 	sw	a0,0(v0)
    4bc0:	c504020c 	lwc1	$f4,524(t0)
    4bc4:	c5080204 	lwc1	$f8,516(t0)
    4bc8:	c5100208 	lwc1	$f16,520(t0)
    4bcc:	4600218d 	trunc.w.s	$f6,$f4
    4bd0:	4600428d 	trunc.w.s	$f10,$f8
    4bd4:	440d3000 	mfc1	t5,$f6
    4bd8:	4600848d 	trunc.w.s	$f18,$f16
    4bdc:	440c5000 	mfc1	t4,$f10
    4be0:	31ae00ff 	andi	t6,t5,0xff
    4be4:	000e7a00 	sll	t7,t6,0x8
    4be8:	440b9000 	mfc1	t3,$f18
    4bec:	000c6e00 	sll	t5,t4,0x18
    4bf0:	01ed7025 	or	t6,t7,t5
    4bf4:	316c00ff 	andi	t4,t3,0xff
    4bf8:	000c7c00 	sll	t7,t4,0x10
    4bfc:	01cf6825 	or	t5,t6,t7
    4c00:	35b800ff 	ori	t8,t5,0xff
    4c04:	ac580004 	sw	t8,4(v0)
    4c08:	8fa2006c 	lw	v0,108(sp)
    4c0c:	8fa60070 	lw	a2,112(sp)
    4c10:	0102c821 	addu	t9,t0,v0
    4c14:	932a0758 	lbu	t2,1880(t9)
    4c18:	244bfffb 	addiu	t3,v0,-5
    4c1c:	29410002 	slti	at,t2,2
    4c20:	54200003 	bnezl	at,4c30 <func_8091A560+0xe0>
    4c24:	2d610023 	sltiu	at,t3,35
    4c28:	acc00000 	sw	zero,0(a2)
    4c2c:	2d610023 	sltiu	at,t3,35
    4c30:	102000dd 	beqz	at,4fa8 <L8091A9B8>
    4c34:	8fa60070 	lw	a2,112(sp)
    4c38:	000b5880 	sll	t3,t3,0x2
    4c3c:	3c010000 	lui	at,0x0
    4c40:	002b0821 	addu	at,at,t3
    4c44:	8c2b0000 	lw	t3,0(at)
    4c48:	01600008 	jr	t3
    4c4c:	00000000 	nop

00004c50 <L8091A660>:
    4c50:	850c01b4 	lh	t4,436(t0)
    4c54:	55800008 	bnezl	t4,4c78 <L8091A660+0x28>
    4c58:	850f01ba 	lh	t7,442(t0)
    4c5c:	850e0198 	lh	t6,408(t0)
    4c60:	29c1f574 	slti	at,t6,-2700
    4c64:	50200004 	beqzl	at,4c78 <L8091A660+0x28>
    4c68:	850f01ba 	lh	t7,442(t0)
    4c6c:	100000ce 	b	4fa8 <L8091A9B8>
    4c70:	acc00000 	sw	zero,0(a2)
    4c74:	850f01ba 	lh	t7,442(t0)
    4c78:	51e00024 	beqzl	t7,4d0c <L8091A660+0xbc>
    4c7c:	8d2202c0 	lw	v0,704(t1)
    4c80:	8d2202c0 	lw	v0,704(t1)
    4c84:	244d0008 	addiu	t5,v0,8
    4c88:	ad2d02c0 	sw	t5,704(t1)
    4c8c:	ac440000 	sw	a0,0(v0)
    4c90:	0c000000 	jal	0 <func_80915A10>
    4c94:	afa20040 	sw	v0,64(sp)
    4c98:	0c000000 	jal	0 <func_80915A10>
    4c9c:	e7a0001c 	swc1	$f0,28(sp)
    4ca0:	0c000000 	jal	0 <func_80915A10>
    4ca4:	e7a00020 	swc1	$f0,32(sp)
    4ca8:	3c01437f 	lui	at,0x437f
    4cac:	44811000 	mtc1	at,$f2
    4cb0:	c7a80020 	lwc1	$f8,32(sp)
    4cb4:	c7b2001c 	lwc1	$f18,28(sp)
    4cb8:	46020102 	mul.s	$f4,$f0,$f2
    4cbc:	8fad0040 	lw	t5,64(sp)
    4cc0:	46024282 	mul.s	$f10,$f8,$f2
    4cc4:	4600218d 	trunc.w.s	$f6,$f4
    4cc8:	46029102 	mul.s	$f4,$f18,$f2
    4ccc:	440b3000 	mfc1	t3,$f6
    4cd0:	4600540d 	trunc.w.s	$f16,$f10
    4cd4:	316c00ff 	andi	t4,t3,0xff
    4cd8:	000c7200 	sll	t6,t4,0x8
    4cdc:	4600218d 	trunc.w.s	$f6,$f4
    4ce0:	440a8000 	mfc1	t2,$f16
    4ce4:	44193000 	mfc1	t9,$f6
    4ce8:	000a5e00 	sll	t3,t2,0x18
    4cec:	01cb6025 	or	t4,t6,t3
    4cf0:	332a00ff 	andi	t2,t9,0xff
    4cf4:	000a7400 	sll	t6,t2,0x10
    4cf8:	018e5825 	or	t3,t4,t6
    4cfc:	356f003f 	ori	t7,t3,0x3f
    4d00:	100000a9 	b	4fa8 <L8091A9B8>
    4d04:	adaf0004 	sw	t7,4(t5)
    4d08:	8d2202c0 	lw	v0,704(t1)
    4d0c:	24580008 	addiu	t8,v0,8
    4d10:	ad3802c0 	sw	t8,704(t1)
    4d14:	ac440000 	sw	a0,0(v0)
    4d18:	c5080218 	lwc1	$f8,536(t0)
    4d1c:	c5100210 	lwc1	$f16,528(t0)
    4d20:	c5040214 	lwc1	$f4,532(t0)
    4d24:	4600428d 	trunc.w.s	$f10,$f8
    4d28:	4600848d 	trunc.w.s	$f18,$f16
    4d2c:	440e5000 	mfc1	t6,$f10
    4d30:	4600218d 	trunc.w.s	$f6,$f4
    4d34:	440c9000 	mfc1	t4,$f18
    4d38:	31cb00ff 	andi	t3,t6,0xff
    4d3c:	000b7a00 	sll	t7,t3,0x8
    4d40:	440a3000 	mfc1	t2,$f6
    4d44:	000c7600 	sll	t6,t4,0x18
    4d48:	01ee5825 	or	t3,t7,t6
    4d4c:	314c00ff 	andi	t4,t2,0xff
    4d50:	000c7c00 	sll	t7,t4,0x10
    4d54:	016f7025 	or	t6,t3,t7
    4d58:	35cd003f 	ori	t5,t6,0x3f
    4d5c:	10000092 	b	4fa8 <L8091A9B8>
    4d60:	ac4d0004 	sw	t5,4(v0)

00004d64 <L8091A774>:
    4d64:	8fa50078 	lw	a1,120(sp)
    4d68:	85190198 	lh	t9,408(t0)
    4d6c:	84b80000 	lh	t8,0(a1)
    4d70:	03195021 	addu	t2,t8,t9
    4d74:	1000008c 	b	4fa8 <L8091A9B8>
    4d78:	a4aa0000 	sh	t2,0(a1)

00004d7c <L8091A78C>:
    4d7c:	8fa50078 	lw	a1,120(sp)
    4d80:	850b019a 	lh	t3,410(t0)
    4d84:	84ac0000 	lh	t4,0(a1)
    4d88:	018b7821 	addu	t7,t4,t3
    4d8c:	10000086 	b	4fa8 <L8091A9B8>
    4d90:	a4af0000 	sh	t7,0(a1)

00004d94 <L8091A7A4>:
    4d94:	8fa50078 	lw	a1,120(sp)
    4d98:	850d019e 	lh	t5,414(t0)
    4d9c:	84ae0000 	lh	t6,0(a1)
    4da0:	84b90002 	lh	t9,2(a1)
    4da4:	01cdc021 	addu	t8,t6,t5
    4da8:	a4b80000 	sh	t8,0(a1)
    4dac:	850a01a0 	lh	t2,416(t0)
    4db0:	032a6021 	addu	t4,t9,t2
    4db4:	1000007c 	b	4fa8 <L8091A9B8>
    4db8:	a4ac0002 	sh	t4,2(a1)

00004dbc <L8091A7CC>:
    4dbc:	850b01b4 	lh	t3,436(t0)
    4dc0:	55600008 	bnezl	t3,4de4 <L8091A7CC+0x28>
    4dc4:	850e01b8 	lh	t6,440(t0)
    4dc8:	850f0198 	lh	t7,408(t0)
    4dcc:	29e1f574 	slti	at,t7,-2700
    4dd0:	50200004 	beqzl	at,4de4 <L8091A7CC+0x28>
    4dd4:	850e01b8 	lh	t6,440(t0)
    4dd8:	10000073 	b	4fa8 <L8091A9B8>
    4ddc:	acc00000 	sw	zero,0(a2)
    4de0:	850e01b8 	lh	t6,440(t0)
    4de4:	24010002 	li	at,2
    4de8:	55c1000a 	bnel	t6,at,4e14 <L8091A7CC+0x58>
    4dec:	8d2202c0 	lw	v0,704(t1)
    4df0:	8d2202c0 	lw	v0,704(t1)
    4df4:	3c183232 	lui	t8,0x3232
    4df8:	371832ff 	ori	t8,t8,0x32ff
    4dfc:	244d0008 	addiu	t5,v0,8
    4e00:	ad2d02c0 	sw	t5,704(t1)
    4e04:	ac580004 	sw	t8,4(v0)
    4e08:	10000007 	b	4e28 <L8091A7CC+0x6c>
    4e0c:	ac440000 	sw	a0,0(v0)
    4e10:	8d2202c0 	lw	v0,704(t1)
    4e14:	240affff 	li	t2,-1
    4e18:	24590008 	addiu	t9,v0,8
    4e1c:	ad3902c0 	sw	t9,704(t1)
    4e20:	ac4a0004 	sw	t2,4(v0)
    4e24:	ac440000 	sw	a0,0(v0)
    4e28:	8fa50078 	lw	a1,120(sp)
    4e2c:	00e02025 	move	a0,a3
    4e30:	0c000000 	jal	0 <func_80915A10>
    4e34:	afa9005c 	sw	t1,92(sp)
    4e38:	8fac0070 	lw	t4,112(sp)
    4e3c:	8fa9005c 	lw	t1,92(sp)
    4e40:	8d8b0000 	lw	t3,0(t4)
    4e44:	51600025 	beqzl	t3,4edc <L8091A7CC+0x120>
    4e48:	240b0001 	li	t3,1
    4e4c:	0c000000 	jal	0 <func_80915A10>
    4e50:	afa9005c 	sw	t1,92(sp)
    4e54:	8fa8007c 	lw	t0,124(sp)
    4e58:	3c063f80 	lui	a2,0x3f80
    4e5c:	24070001 	li	a3,1
    4e60:	c50c01f8 	lwc1	$f12,504(t0)
    4e64:	0c000000 	jal	0 <func_80915A10>
    4e68:	c50e0224 	lwc1	$f14,548(t0)
    4e6c:	8fa9005c 	lw	t1,92(sp)
    4e70:	3c0eda38 	lui	t6,0xda38
    4e74:	35ce0003 	ori	t6,t6,0x3
    4e78:	8d2202c0 	lw	v0,704(t1)
    4e7c:	3c050000 	lui	a1,0x0
    4e80:	24a50000 	addiu	a1,a1,0
    4e84:	244f0008 	addiu	t7,v0,8
    4e88:	ad2f02c0 	sw	t7,704(t1)
    4e8c:	ac4e0000 	sw	t6,0(v0)
    4e90:	8fad0068 	lw	t5,104(sp)
    4e94:	240612cf 	li	a2,4815
    4e98:	8da40000 	lw	a0,0(t5)
    4e9c:	afa9005c 	sw	t1,92(sp)
    4ea0:	0c000000 	jal	0 <func_80915A10>
    4ea4:	afa20030 	sw	v0,48(sp)
    4ea8:	8fa30030 	lw	v1,48(sp)
    4eac:	8fa9005c 	lw	t1,92(sp)
    4eb0:	3c19de00 	lui	t9,0xde00
    4eb4:	ac620004 	sw	v0,4(v1)
    4eb8:	8d2202c0 	lw	v0,704(t1)
    4ebc:	24580008 	addiu	t8,v0,8
    4ec0:	ad3802c0 	sw	t8,704(t1)
    4ec4:	ac590000 	sw	t9,0(v0)
    4ec8:	8faa0070 	lw	t2,112(sp)
    4ecc:	8d4c0000 	lw	t4,0(t2)
    4ed0:	0c000000 	jal	0 <func_80915A10>
    4ed4:	ac4c0004 	sw	t4,4(v0)
    4ed8:	240b0001 	li	t3,1
    4edc:	10000032 	b	4fa8 <L8091A9B8>
    4ee0:	afab0060 	sw	t3,96(sp)

00004ee4 <L8091A8F4>:
    4ee4:	8fa50078 	lw	a1,120(sp)
    4ee8:	00e02025 	move	a0,a3
    4eec:	0c000000 	jal	0 <func_80915A10>
    4ef0:	afa9005c 	sw	t1,92(sp)
    4ef4:	8faf0070 	lw	t7,112(sp)
    4ef8:	8fa9005c 	lw	t1,92(sp)
    4efc:	8dee0000 	lw	t6,0(t7)
    4f00:	51c00028 	beqzl	t6,4fa4 <L8091A8F4+0xc0>
    4f04:	24190001 	li	t9,1
    4f08:	0c000000 	jal	0 <func_80915A10>
    4f0c:	afa9005c 	sw	t1,92(sp)
    4f10:	8fad006c 	lw	t5,108(sp)
    4f14:	8fa8007c 	lw	t0,124(sp)
    4f18:	24070001 	li	a3,1
    4f1c:	000dc080 	sll	t8,t5,0x2
    4f20:	0118c821 	addu	t9,t0,t8
    4f24:	c72c01bc 	lwc1	$f12,444(t9)
    4f28:	44066000 	mfc1	a2,$f12
    4f2c:	0c000000 	jal	0 <func_80915A10>
    4f30:	46006386 	mov.s	$f14,$f12
    4f34:	8fa9005c 	lw	t1,92(sp)
    4f38:	3c0cda38 	lui	t4,0xda38
    4f3c:	358c0003 	ori	t4,t4,0x3
    4f40:	8d2202c0 	lw	v0,704(t1)
    4f44:	3c050000 	lui	a1,0x0
    4f48:	24a50000 	addiu	a1,a1,0
    4f4c:	244a0008 	addiu	t2,v0,8
    4f50:	ad2a02c0 	sw	t2,704(t1)
    4f54:	ac4c0000 	sw	t4,0(v0)
    4f58:	8fab0068 	lw	t3,104(sp)
    4f5c:	240612e4 	li	a2,4836
    4f60:	8d640000 	lw	a0,0(t3)
    4f64:	afa9005c 	sw	t1,92(sp)
    4f68:	0c000000 	jal	0 <func_80915A10>
    4f6c:	afa20028 	sw	v0,40(sp)
    4f70:	8fa30028 	lw	v1,40(sp)
    4f74:	8fa9005c 	lw	t1,92(sp)
    4f78:	3c0ede00 	lui	t6,0xde00
    4f7c:	ac620004 	sw	v0,4(v1)
    4f80:	8d2202c0 	lw	v0,704(t1)
    4f84:	244f0008 	addiu	t7,v0,8
    4f88:	ad2f02c0 	sw	t7,704(t1)
    4f8c:	ac4e0000 	sw	t6,0(v0)
    4f90:	8fad0070 	lw	t5,112(sp)
    4f94:	8db80000 	lw	t8,0(t5)
    4f98:	0c000000 	jal	0 <func_80915A10>
    4f9c:	ac580004 	sw	t8,4(v0)
    4fa0:	24190001 	li	t9,1
    4fa4:	afb90060 	sw	t9,96(sp)

00004fa8 <L8091A9B8>:
    4fa8:	8faa0068 	lw	t2,104(sp)
    4fac:	3c060000 	lui	a2,0x0
    4fb0:	24c60000 	addiu	a2,a2,0
    4fb4:	27a4004c 	addiu	a0,sp,76
    4fb8:	240712fa 	li	a3,4858
    4fbc:	0c000000 	jal	0 <func_80915A10>
    4fc0:	8d450000 	lw	a1,0(t2)
    4fc4:	8fbf0014 	lw	ra,20(sp)
    4fc8:	8fa20060 	lw	v0,96(sp)
    4fcc:	27bd0068 	addiu	sp,sp,104
    4fd0:	03e00008 	jr	ra
    4fd4:	00000000 	nop

00004fd8 <func_8091A9E8>:
    4fd8:	27bdff58 	addiu	sp,sp,-168
    4fdc:	afb00038 	sw	s0,56(sp)
    4fe0:	2401000b 	li	at,11
    4fe4:	00a08025 	move	s0,a1
    4fe8:	afbf003c 	sw	ra,60(sp)
    4fec:	afa400a8 	sw	a0,168(sp)
    4ff0:	afa600b0 	sw	a2,176(sp)
    4ff4:	14a10008 	bne	a1,at,5018 <func_8091A9E8+0x40>
    4ff8:	afa700b4 	sw	a3,180(sp)
    4ffc:	8fa500b8 	lw	a1,184(sp)
    5000:	3c040000 	lui	a0,0x0
    5004:	24840000 	addiu	a0,a0,0
    5008:	0c000000 	jal	0 <func_80915A10>
    500c:	24a50260 	addiu	a1,a1,608
    5010:	10000024 	b	50a4 <func_8091A9E8+0xcc>
    5014:	8fa300b8 	lw	v1,184(sp)
    5018:	2401000e 	li	at,14
    501c:	16010007 	bne	s0,at,503c <func_8091A9E8+0x64>
    5020:	3c040000 	lui	a0,0x0
    5024:	8fa500b8 	lw	a1,184(sp)
    5028:	24840000 	addiu	a0,a0,0
    502c:	0c000000 	jal	0 <func_80915A10>
    5030:	24a5026c 	addiu	a1,a1,620
    5034:	1000001b 	b	50a4 <func_8091A9E8+0xcc>
    5038:	8fa300b8 	lw	v1,184(sp)
    503c:	24010005 	li	at,5
    5040:	16010007 	bne	s0,at,5060 <func_8091A9E8+0x88>
    5044:	3c040000 	lui	a0,0x0
    5048:	8fa500b8 	lw	a1,184(sp)
    504c:	24840000 	addiu	a0,a0,0
    5050:	0c000000 	jal	0 <func_80915A10>
    5054:	24a50038 	addiu	a1,a1,56
    5058:	10000012 	b	50a4 <func_8091A9E8+0xcc>
    505c:	8fa300b8 	lw	v1,184(sp)
    5060:	24010015 	li	at,21
    5064:	16010007 	bne	s0,at,5084 <func_8091A9E8+0xac>
    5068:	3c040000 	lui	a0,0x0
    506c:	8fa500b8 	lw	a1,184(sp)
    5070:	24840000 	addiu	a0,a0,0
    5074:	0c000000 	jal	0 <func_80915A10>
    5078:	24a50278 	addiu	a1,a1,632
    507c:	10000009 	b	50a4 <func_8091A9E8+0xcc>
    5080:	8fa300b8 	lw	v1,184(sp)
    5084:	24010049 	li	at,73
    5088:	16010005 	bne	s0,at,50a0 <func_8091A9E8+0xc8>
    508c:	3c040000 	lui	a0,0x0
    5090:	8fa500b8 	lw	a1,184(sp)
    5094:	24840000 	addiu	a0,a0,0
    5098:	0c000000 	jal	0 <func_80915A10>
    509c:	24a50284 	addiu	a1,a1,644
    50a0:	8fa300b8 	lw	v1,184(sp)
    50a4:	24010002 	li	at,2
    50a8:	8faf00b0 	lw	t7,176(sp)
    50ac:	846e01b8 	lh	t6,440(v1)
    50b0:	55c10015 	bnel	t6,at,5108 <func_8091A9E8+0x130>
    50b4:	00701021 	addu	v0,v1,s0
    50b8:	8df80000 	lw	t8,0(t7)
    50bc:	00104080 	sll	t0,s0,0x2
    50c0:	01104023 	subu	t0,t0,s0
    50c4:	1300000b 	beqz	t8,50f4 <func_8091A9E8+0x11c>
    50c8:	3c010000 	lui	at,0x0
    50cc:	0010c880 	sll	t9,s0,0x2
    50d0:	0330c823 	subu	t9,t9,s0
    50d4:	0019c880 	sll	t9,t9,0x2
    50d8:	00792821 	addu	a1,v1,t9
    50dc:	3c040000 	lui	a0,0x0
    50e0:	24840000 	addiu	a0,a0,0
    50e4:	0c000000 	jal	0 <func_80915A10>
    50e8:	24a502a8 	addiu	a1,a1,680
    50ec:	10000005 	b	5104 <func_8091A9E8+0x12c>
    50f0:	8fa300b8 	lw	v1,184(sp)
    50f4:	c4240000 	lwc1	$f4,0(at)
    50f8:	00084080 	sll	t0,t0,0x2
    50fc:	00684821 	addu	t1,v1,t0
    5100:	e52402ac 	swc1	$f4,684(t1)
    5104:	00701021 	addu	v0,v1,s0
    5108:	904a0758 	lbu	t2,1880(v0)
    510c:	24010001 	li	at,1
    5110:	240b0002 	li	t3,2
    5114:	15410028 	bne	t2,at,51b8 <func_8091A9E8+0x1e0>
    5118:	3c040000 	lui	a0,0x0
    511c:	a04b0758 	sb	t3,1880(v0)
    5120:	24840000 	addiu	a0,a0,0
    5124:	0c000000 	jal	0 <func_80915A10>
    5128:	27a5009c 	addiu	a1,sp,156
    512c:	0c000000 	jal	0 <func_80915A10>
    5130:	27a40048 	addiu	a0,sp,72
    5134:	27a40048 	addiu	a0,sp,72
    5138:	27a50094 	addiu	a1,sp,148
    513c:	0c000000 	jal	0 <func_80915A10>
    5140:	00003025 	move	a2,zero
    5144:	3c180000 	lui	t8,0x0
    5148:	0310c021 	addu	t8,t8,s0
    514c:	93180000 	lbu	t8,0(t8)
    5150:	8fa600a8 	lw	a2,168(sp)
    5154:	c7a6009c 	lwc1	$f6,156(sp)
    5158:	c7a800a0 	lwc1	$f8,160(sp)
    515c:	c7aa00a4 	lwc1	$f10,164(sp)
    5160:	87ad0094 	lh	t5,148(sp)
    5164:	87ae0096 	lh	t6,150(sp)
    5168:	87af0098 	lh	t7,152(sp)
    516c:	27190064 	addiu	t9,t8,100
    5170:	afb90028 	sw	t9,40(sp)
    5174:	8fa500b8 	lw	a1,184(sp)
    5178:	2407002b 	li	a3,43
    517c:	24c41c24 	addiu	a0,a2,7204
    5180:	e7a60010 	swc1	$f6,16(sp)
    5184:	e7a80014 	swc1	$f8,20(sp)
    5188:	e7aa0018 	swc1	$f10,24(sp)
    518c:	afad001c 	sw	t5,28(sp)
    5190:	afae0020 	sw	t6,32(sp)
    5194:	0c000000 	jal	0 <func_80915A10>
    5198:	afaf0024 	sw	t7,36(sp)
    519c:	10400006 	beqz	v0,51b8 <func_8091A9E8+0x1e0>
    51a0:	8fa800b0 	lw	t0,176(sp)
    51a4:	8d090000 	lw	t1,0(t0)
    51a8:	ac490308 	sw	t1,776(v0)
    51ac:	8faa00b8 	lw	t2,184(sp)
    51b0:	814b001e 	lb	t3,30(t2)
    51b4:	a04b001e 	sb	t3,30(v0)
    51b8:	8fa300b8 	lw	v1,184(sp)
    51bc:	02002025 	move	a0,s0
    51c0:	0c000000 	jal	0 <func_80915A10>
    51c4:	246507bc 	addiu	a1,v1,1980
    51c8:	8fbf003c 	lw	ra,60(sp)
    51cc:	8fb00038 	lw	s0,56(sp)
    51d0:	27bd00a8 	addiu	sp,sp,168
    51d4:	03e00008 	jr	ra
    51d8:	00000000 	nop

000051dc <func_8091ABEC>:
    51dc:	27bdffe8 	addiu	sp,sp,-24
    51e0:	afbf0014 	sw	ra,20(sp)
    51e4:	0c000000 	jal	0 <func_80915A10>
    51e8:	24050008 	li	a1,8
    51ec:	3c0edf00 	lui	t6,0xdf00
    51f0:	ac4e0000 	sw	t6,0(v0)
    51f4:	ac400004 	sw	zero,4(v0)
    51f8:	8fbf0014 	lw	ra,20(sp)
    51fc:	27bd0018 	addiu	sp,sp,24
    5200:	03e00008 	jr	ra
    5204:	00000000 	nop

00005208 <func_8091AC18>:
    5208:	27bdffe8 	addiu	sp,sp,-24
    520c:	afbf0014 	sw	ra,20(sp)
    5210:	0c000000 	jal	0 <func_80915A10>
    5214:	24050020 	li	a1,32
    5218:	3c0ee700 	lui	t6,0xe700
    521c:	00402825 	move	a1,v0
    5220:	ac4e0000 	sw	t6,0(v0)
    5224:	24440008 	addiu	a0,v0,8
    5228:	ac400004 	sw	zero,4(v0)
    522c:	00801025 	move	v0,a0
    5230:	3c0fe200 	lui	t7,0xe200
    5234:	3c180c19 	lui	t8,0xc19
    5238:	37183078 	ori	t8,t8,0x3078
    523c:	35ef001c 	ori	t7,t7,0x1c
    5240:	ac4f0000 	sw	t7,0(v0)
    5244:	ac580004 	sw	t8,4(v0)
    5248:	24840008 	addiu	a0,a0,8
    524c:	00801025 	move	v0,a0
    5250:	3c19d9ff 	lui	t9,0xd9ff
    5254:	3739fbff 	ori	t9,t9,0xfbff
    5258:	ac590000 	sw	t9,0(v0)
    525c:	ac400004 	sw	zero,4(v0)
    5260:	3c08df00 	lui	t0,0xdf00
    5264:	ac880008 	sw	t0,8(a0)
    5268:	ac80000c 	sw	zero,12(a0)
    526c:	8fbf0014 	lw	ra,20(sp)
    5270:	24840008 	addiu	a0,a0,8
    5274:	27bd0018 	addiu	sp,sp,24
    5278:	03e00008 	jr	ra
    527c:	00a01025 	move	v0,a1

00005280 <BossGoma_Draw>:
    5280:	27bdffb0 	addiu	sp,sp,-80
    5284:	afb00020 	sw	s0,32(sp)
    5288:	00a08025 	move	s0,a1
    528c:	afbf0024 	sw	ra,36(sp)
    5290:	afa40050 	sw	a0,80(sp)
    5294:	8ca50000 	lw	a1,0(a1)
    5298:	3c060000 	lui	a2,0x0
    529c:	24c60000 	addiu	a2,a2,0
    52a0:	27a40038 	addiu	a0,sp,56
    52a4:	2407137f 	li	a3,4991
    52a8:	0c000000 	jal	0 <func_80915A10>
    52ac:	afa50048 	sw	a1,72(sp)
    52b0:	0c000000 	jal	0 <func_80915A10>
    52b4:	8e040000 	lw	a0,0(s0)
    52b8:	44806000 	mtc1	zero,$f12
    52bc:	3c01c57a 	lui	at,0xc57a
    52c0:	44817000 	mtc1	at,$f14
    52c4:	44066000 	mfc1	a2,$f12
    52c8:	0c000000 	jal	0 <func_80915A10>
    52cc:	24070001 	li	a3,1
    52d0:	8fae0050 	lw	t6,80(sp)
    52d4:	8fa30048 	lw	v1,72(sp)
    52d8:	85cf01c2 	lh	t7,450(t6)
    52dc:	51e0000e 	beqzl	t7,5318 <BossGoma_Draw+0x98>
    52e0:	8c6202c0 	lw	v0,704(v1)
    52e4:	8c6202c0 	lw	v0,704(v1)
    52e8:	3c19db06 	lui	t9,0xdb06
    52ec:	37390020 	ori	t9,t9,0x20
    52f0:	24580008 	addiu	t8,v0,8
    52f4:	ac7802c0 	sw	t8,704(v1)
    52f8:	ac590000 	sw	t9,0(v0)
    52fc:	8e040000 	lw	a0,0(s0)
    5300:	0c000000 	jal	0 <func_80915A10>
    5304:	afa20034 	sw	v0,52(sp)
    5308:	8fa50034 	lw	a1,52(sp)
    530c:	1000000c 	b	5340 <BossGoma_Draw+0xc0>
    5310:	aca20004 	sw	v0,4(a1)
    5314:	8c6202c0 	lw	v0,704(v1)
    5318:	3c09db06 	lui	t1,0xdb06
    531c:	35290020 	ori	t1,t1,0x20
    5320:	24480008 	addiu	t0,v0,8
    5324:	ac6802c0 	sw	t0,704(v1)
    5328:	ac490000 	sw	t1,0(v0)
    532c:	8e040000 	lw	a0,0(s0)
    5330:	0c000000 	jal	0 <func_80915A10>
    5334:	afa20030 	sw	v0,48(sp)
    5338:	8fa50030 	lw	a1,48(sp)
    533c:	aca20004 	sw	v0,4(a1)
    5340:	8faa0050 	lw	t2,80(sp)
    5344:	3c0b0000 	lui	t3,0x0
    5348:	256b0000 	addiu	t3,t3,0
    534c:	3c070000 	lui	a3,0x0
    5350:	8d450150 	lw	a1,336(t2)
    5354:	8d46016c 	lw	a2,364(t2)
    5358:	afab0010 	sw	t3,16(sp)
    535c:	24e70000 	addiu	a3,a3,0
    5360:	02002025 	move	a0,s0
    5364:	0c000000 	jal	0 <func_80915A10>
    5368:	afaa0014 	sw	t2,20(sp)
    536c:	3c060000 	lui	a2,0x0
    5370:	24c60000 	addiu	a2,a2,0
    5374:	27a40038 	addiu	a0,sp,56
    5378:	8e050000 	lw	a1,0(s0)
    537c:	0c000000 	jal	0 <func_80915A10>
    5380:	24071394 	li	a3,5012
    5384:	8fbf0024 	lw	ra,36(sp)
    5388:	8fb00020 	lw	s0,32(sp)
    538c:	27bd0050 	addiu	sp,sp,80
    5390:	03e00008 	jr	ra
    5394:	00000000 	nop

00005398 <func_8091ADA8>:
    5398:	27bdffc8 	addiu	sp,sp,-56
    539c:	afa5003c 	sw	a1,60(sp)
    53a0:	00802825 	move	a1,a0
    53a4:	afbf0034 	sw	ra,52(sp)
    53a8:	afa40038 	sw	a0,56(sp)
    53ac:	afa60040 	sw	a2,64(sp)
    53b0:	c4a40260 	lwc1	$f4,608(a1)
    53b4:	3c014248 	lui	at,0x4248
    53b8:	44814000 	mtc1	at,$f8
    53bc:	87ae0042 	lh	t6,66(sp)
    53c0:	e7a40010 	swc1	$f4,16(sp)
    53c4:	c4a60264 	lwc1	$f6,612(a1)
    53c8:	24015555 	li	at,21845
    53cc:	01c10019 	multu	t6,at
    53d0:	46083281 	sub.s	$f10,$f6,$f8
    53d4:	8fa6003c 	lw	a2,60(sp)
    53d8:	2407002b 	li	a3,43
    53dc:	e7aa0014 	swc1	$f10,20(sp)
    53e0:	c4b00268 	lwc1	$f16,616(a1)
    53e4:	afa50038 	sw	a1,56(sp)
    53e8:	afa00024 	sw	zero,36(sp)
    53ec:	afa0001c 	sw	zero,28(sp)
    53f0:	00007812 	mflo	t7
    53f4:	afaf0020 	sw	t7,32(sp)
    53f8:	afae0028 	sw	t6,40(sp)
    53fc:	24c41c24 	addiu	a0,a2,7204
    5400:	0c000000 	jal	0 <func_80915A10>
    5404:	e7b00018 	swc1	$f16,24(sp)
    5408:	87b90042 	lh	t9,66(sp)
    540c:	8fa50038 	lw	a1,56(sp)
    5410:	24180001 	li	t8,1
    5414:	00194040 	sll	t0,t9,0x1
    5418:	00a84821 	addu	t1,a1,t0
    541c:	a53801a4 	sh	t8,420(t1)
    5420:	8fbf0034 	lw	ra,52(sp)
    5424:	27bd0038 	addiu	sp,sp,56
    5428:	03e00008 	jr	ra
    542c:	00000000 	nop
