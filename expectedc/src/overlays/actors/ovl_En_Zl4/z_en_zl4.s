
build/src/overlays/actors/ovl_En_Zl4/z_en_zl4.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B5B7B0>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa5002c 	sw	a1,44(sp)
       c:	848e07a0 	lh	t6,1952(a0)
      10:	24050021 	li	a1,33
      14:	000e7880 	sll	t7,t6,0x2
      18:	008fc021 	addu	t8,a0,t7
      1c:	8f040790 	lw	a0,1936(t8)
      20:	0c000000 	jal	0 <func_80B5B7B0>
      24:	afa40024 	sw	a0,36(sp)
      28:	87b9002e 	lh	t9,46(sp)
      2c:	3c090000 	lui	t1,0x0
      30:	25290000 	addiu	t1,t1,0
      34:	001940c0 	sll	t0,t9,0x3
      38:	01194023 	subu	t0,t0,t9
      3c:	00084080 	sll	t0,t0,0x2
      40:	01091021 	addu	v0,t0,t1
      44:	8fa40024 	lw	a0,36(sp)
      48:	8c4b0000 	lw	t3,0(v0)
      4c:	27a30018 	addiu	v1,sp,24
      50:	ac8b0050 	sw	t3,80(a0)
      54:	8c4a0004 	lw	t2,4(v0)
      58:	ac8a0054 	sw	t2,84(a0)
      5c:	8c4b0008 	lw	t3,8(v0)
      60:	ac8b0058 	sw	t3,88(a0)
      64:	8c4d000c 	lw	t5,12(v0)
      68:	8c4c0010 	lw	t4,16(v0)
      6c:	ac6d0000 	sw	t5,0(v1)
      70:	8c4d0014 	lw	t5,20(v0)
      74:	8c6f0000 	lw	t7,0(v1)
      78:	ac6c0004 	sw	t4,4(v1)
      7c:	ac6d0008 	sw	t5,8(v1)
      80:	ac8f0074 	sw	t7,116(a0)
      84:	8c6e0004 	lw	t6,4(v1)
      88:	ac8e0078 	sw	t6,120(a0)
      8c:	8c6f0008 	lw	t7,8(v1)
      90:	ac8f007c 	sw	t7,124(a0)
      94:	8c790000 	lw	t9,0(v1)
      98:	ac99005c 	sw	t9,92(a0)
      9c:	8c780004 	lw	t8,4(v1)
      a0:	ac980060 	sw	t8,96(a0)
      a4:	8c790008 	lw	t9,8(v1)
      a8:	ac990064 	sw	t9,100(a0)
      ac:	84480018 	lh	t0,24(v0)
      b0:	a488015a 	sh	t0,346(a0)
      b4:	8449001a 	lh	t1,26(v0)
      b8:	44892000 	mtc1	t1,$f4
      bc:	00000000 	nop
      c0:	468021a0 	cvt.s.w	$f6,$f4
      c4:	e48600fc 	swc1	$f6,252(a0)
      c8:	8fbf0014 	lw	ra,20(sp)
      cc:	27bd0028 	addiu	sp,sp,40
      d0:	03e00008 	jr	ra
      d4:	00000000 	nop

000000d8 <func_80B5B888>:
      d8:	27bdffd8 	addiu	sp,sp,-40
      dc:	afbf001c 	sw	ra,28(sp)
      e0:	afa5002c 	sw	a1,44(sp)
      e4:	848e07a0 	lh	t6,1952(a0)
      e8:	00803025 	move	a2,a0
      ec:	8cd91c44 	lw	t9,7236(a2)
      f0:	000e7880 	sll	t7,t6,0x2
      f4:	008fc021 	addu	t8,a0,t7
      f8:	8f040790 	lw	a0,1936(t8)
      fc:	24050025 	li	a1,37
     100:	afb90020 	sw	t9,32(sp)
     104:	0c000000 	jal	0 <func_80B5B7B0>
     108:	afa40024 	sw	a0,36(sp)
     10c:	0c000000 	jal	0 <func_80B5B7B0>
     110:	8fa40024 	lw	a0,36(sp)
     114:	87a8002e 	lh	t0,46(sp)
     118:	3c0a0000 	lui	t2,0x0
     11c:	254a0000 	addiu	t2,t2,0
     120:	00084880 	sll	t1,t0,0x2
     124:	01284823 	subu	t1,t1,t0
     128:	00094880 	sll	t1,t1,0x2
     12c:	012a1021 	addu	v0,t1,t2
     130:	844b0008 	lh	t3,8(v0)
     134:	8c450000 	lw	a1,0(v0)
     138:	8c460004 	lw	a2,4(v0)
     13c:	8fa40024 	lw	a0,36(sp)
     140:	8fa70020 	lw	a3,32(sp)
     144:	0c000000 	jal	0 <func_80B5B7B0>
     148:	afab0010 	sw	t3,16(sp)
     14c:	8fbf001c 	lw	ra,28(sp)
     150:	27bd0028 	addiu	sp,sp,40
     154:	03e00008 	jr	ra
     158:	00000000 	nop

0000015c <func_80B5B90C>:
     15c:	27bdffe8 	addiu	sp,sp,-24
     160:	afbf0014 	sw	ra,20(sp)
     164:	afa5001c 	sw	a1,28(sp)
     168:	0c000000 	jal	0 <func_80B5B7B0>
     16c:	24050016 	li	a1,22
     170:	10400003 	beqz	v0,180 <func_80B5B90C+0x24>
     174:	3043ffff 	andi	v1,v0,0xffff
     178:	1000001d 	b	1f0 <func_80B5B90C+0x94>
     17c:	00601025 	move	v0,v1
     180:	3c040000 	lui	a0,0x0
     184:	24840000 	addiu	a0,a0,0
     188:	3c030000 	lui	v1,0x0
     18c:	8c6300a4 	lw	v1,164(v1)
     190:	8c8e0048 	lw	t6,72(a0)
     194:	00001025 	move	v0,zero
     198:	01c37824 	and	t7,t6,v1
     19c:	51e00003 	beqzl	t7,1ac <func_80B5B90C+0x50>
     1a0:	8c98004c 	lw	t8,76(a0)
     1a4:	24020001 	li	v0,1
     1a8:	8c98004c 	lw	t8,76(a0)
     1ac:	0303c824 	and	t9,t8,v1
     1b0:	53200004 	beqzl	t9,1c4 <func_80B5B90C+0x68>
     1b4:	8c880050 	lw	t0,80(a0)
     1b8:	24420001 	addiu	v0,v0,1
     1bc:	3042ffff 	andi	v0,v0,0xffff
     1c0:	8c880050 	lw	t0,80(a0)
     1c4:	01034824 	and	t1,t0,v1
     1c8:	11200003 	beqz	t1,1d8 <func_80B5B90C+0x7c>
     1cc:	2403703c 	li	v1,28732
     1d0:	24420001 	addiu	v0,v0,1
     1d4:	3042ffff 	andi	v0,v0,0xffff
     1d8:	28410002 	slti	at,v0,2
     1dc:	14200003 	bnez	at,1ec <func_80B5B90C+0x90>
     1e0:	00000000 	nop
     1e4:	10000001 	b	1ec <func_80B5B90C+0x90>
     1e8:	2403703d 	li	v1,28733
     1ec:	3062ffff 	andi	v0,v1,0xffff
     1f0:	8fbf0014 	lw	ra,20(sp)
     1f4:	27bd0018 	addiu	sp,sp,24
     1f8:	03e00008 	jr	ra
     1fc:	00000000 	nop

00000200 <func_80B5B9B0>:
     200:	27bdffe8 	addiu	sp,sp,-24
     204:	afbf0014 	sw	ra,20(sp)
     208:	afa40018 	sw	a0,24(sp)
     20c:	afa5001c 	sw	a1,28(sp)
     210:	0c000000 	jal	0 <func_80B5B7B0>
     214:	248420d8 	addiu	a0,a0,8408
     218:	24010002 	li	at,2
     21c:	14410003 	bne	v0,at,22c <func_80B5B9B0+0x2c>
     220:	8fbf0014 	lw	ra,20(sp)
     224:	10000002 	b	230 <func_80B5B9B0+0x30>
     228:	00001025 	move	v0,zero
     22c:	24020001 	li	v0,1
     230:	03e00008 	jr	ra
     234:	27bd0018 	addiu	sp,sp,24

00000238 <func_80B5B9E8>:
     238:	27bdffe8 	addiu	sp,sp,-24
     23c:	afbf0014 	sw	ra,20(sp)
     240:	84820210 	lh	v0,528(a0)
     244:	00803025 	move	a2,a0
     248:	18400003 	blez	v0,258 <func_80B5B9E8+0x20>
     24c:	244effff 	addiu	t6,v0,-1
     250:	10000002 	b	25c <func_80B5B9E8+0x24>
     254:	a48e0210 	sh	t6,528(a0)
     258:	a4c00210 	sh	zero,528(a2)
     25c:	84c20210 	lh	v0,528(a2)
     260:	28410003 	slti	at,v0,3
     264:	50200004 	beqzl	at,278 <func_80B5B9E8+0x40>
     268:	90cf020d 	lbu	t7,525(a2)
     26c:	a0c2020b 	sb	v0,523(a2)
     270:	a0c2020a 	sb	v0,522(a2)
     274:	90cf020d 	lbu	t7,525(a2)
     278:	2de10007 	sltiu	at,t7,7
     27c:	1020002d 	beqz	at,334 <L80B5BAD4+0x10>
     280:	000f7880 	sll	t7,t7,0x2
     284:	3c010000 	lui	at,0x0
     288:	002f0821 	addu	at,at,t7
     28c:	8c2f0000 	lw	t7,0(at)
     290:	01e00008 	jr	t7
     294:	00000000 	nop

00000298 <L80B5BA48>:
     298:	14400026 	bnez	v0,334 <L80B5BAD4+0x10>
     29c:	2404001e 	li	a0,30
     2a0:	2405001e 	li	a1,30
     2a4:	0c000000 	jal	0 <func_80B5B7B0>
     2a8:	afa60018 	sw	a2,24(sp)
     2ac:	8fa60018 	lw	a2,24(sp)
     2b0:	10000020 	b	334 <L80B5BAD4+0x10>
     2b4:	a4c20210 	sh	v0,528(a2)

000002b8 <L80B5BA68>:
     2b8:	1440001e 	bnez	v0,334 <L80B5BAD4+0x10>
     2bc:	24190002 	li	t9,2
     2c0:	a0d9020b 	sb	t9,523(a2)
     2c4:	1000001b 	b	334 <L80B5BAD4+0x10>
     2c8:	a0d9020a 	sb	t9,522(a2)

000002cc <L80B5BA7C>:
     2cc:	14400019 	bnez	v0,334 <L80B5BAD4+0x10>
     2d0:	24080005 	li	t0,5
     2d4:	24090006 	li	t1,6
     2d8:	a0c8020a 	sb	t0,522(a2)
     2dc:	10000015 	b	334 <L80B5BAD4+0x10>
     2e0:	a0c9020b 	sb	t1,523(a2)

000002e4 <L80B5BA94>:
     2e4:	14400013 	bnez	v0,334 <L80B5BAD4+0x10>
     2e8:	240a0006 	li	t2,6
     2ec:	240b0005 	li	t3,5
     2f0:	a0ca020a 	sb	t2,522(a2)
     2f4:	1000000f 	b	334 <L80B5BAD4+0x10>
     2f8:	a0cb020b 	sb	t3,523(a2)

000002fc <L80B5BAAC>:
     2fc:	1440000d 	bnez	v0,334 <L80B5BAD4+0x10>
     300:	240d0003 	li	t5,3
     304:	a0cd020b 	sb	t5,523(a2)
     308:	1000000a 	b	334 <L80B5BAD4+0x10>
     30c:	a0cd020a 	sb	t5,522(a2)

00000310 <L80B5BAC0>:
     310:	14400008 	bnez	v0,334 <L80B5BAD4+0x10>
     314:	240f0004 	li	t7,4
     318:	a0cf020b 	sb	t7,523(a2)
     31c:	10000005 	b	334 <L80B5BAD4+0x10>
     320:	a0cf020a 	sb	t7,522(a2)

00000324 <L80B5BAD4>:
     324:	28410003 	slti	at,v0,3
     328:	54200003 	bnezl	at,338 <L80B5BAD4+0x14>
     32c:	90c2020e 	lbu	v0,526(a2)
     330:	a4c00210 	sh	zero,528(a2)
     334:	90c2020e 	lbu	v0,526(a2)
     338:	24010001 	li	at,1
     33c:	24180001 	li	t8,1
     340:	10410008 	beq	v0,at,364 <L80B5BAD4+0x40>
     344:	24010002 	li	at,2
     348:	10410008 	beq	v0,at,36c <L80B5BAD4+0x48>
     34c:	24190002 	li	t9,2
     350:	24010003 	li	at,3
     354:	10410007 	beq	v0,at,374 <L80B5BAD4+0x50>
     358:	24080003 	li	t0,3
     35c:	10000006 	b	378 <L80B5BAD4+0x54>
     360:	a0c0020c 	sb	zero,524(a2)
     364:	10000004 	b	378 <L80B5BAD4+0x54>
     368:	a0d8020c 	sb	t8,524(a2)
     36c:	10000002 	b	378 <L80B5BAD4+0x54>
     370:	a0d9020c 	sb	t9,524(a2)
     374:	a0c8020c 	sb	t0,524(a2)
     378:	8fbf0014 	lw	ra,20(sp)
     37c:	27bd0018 	addiu	sp,sp,24
     380:	03e00008 	jr	ra
     384:	00000000 	nop

00000388 <func_80B5BB38>:
     388:	27bdffe8 	addiu	sp,sp,-24
     38c:	afbf0014 	sw	ra,20(sp)
     390:	afa40018 	sw	a0,24(sp)
     394:	afa5001c 	sw	a1,28(sp)
     398:	908e0181 	lbu	t6,385(a0)
     39c:	00802825 	move	a1,a0
     3a0:	24a6014c 	addiu	a2,a1,332
     3a4:	35cf0001 	ori	t7,t6,0x1
     3a8:	a08f0181 	sb	t7,385(a0)
     3ac:	8fa4001c 	lw	a0,28(sp)
     3b0:	0c000000 	jal	0 <func_80B5B7B0>
     3b4:	3c073f80 	lui	a3,0x3f80
     3b8:	8fbf0014 	lw	ra,20(sp)
     3bc:	27bd0018 	addiu	sp,sp,24
     3c0:	03e00008 	jr	ra
     3c4:	00000000 	nop

000003c8 <func_80B5BB78>:
     3c8:	27bdffe8 	addiu	sp,sp,-24
     3cc:	afbf0014 	sw	ra,20(sp)
     3d0:	afa5001c 	sw	a1,28(sp)
     3d4:	8ca21c44 	lw	v0,7236(a1)
     3d8:	248501e0 	addiu	a1,a0,480
     3dc:	24060002 	li	a2,2
     3e0:	8c580024 	lw	t8,36(v0)
     3e4:	24070002 	li	a3,2
     3e8:	ac9801f8 	sw	t8,504(a0)
     3ec:	8c4f0028 	lw	t7,40(v0)
     3f0:	ac8f01fc 	sw	t7,508(a0)
     3f4:	8c58002c 	lw	t8,44(v0)
     3f8:	0c000000 	jal	0 <func_80B5B7B0>
     3fc:	ac980200 	sw	t8,512(a0)
     400:	8fbf0014 	lw	ra,20(sp)
     404:	27bd0018 	addiu	sp,sp,24
     408:	03e00008 	jr	ra
     40c:	00000000 	nop

00000410 <func_80B5BBC0>:
     410:	8c8e000c 	lw	t6,12(a0)
     414:	448e2000 	mtc1	t6,$f4
     418:	00000000 	nop
     41c:	468021a0 	cvt.s.w	$f6,$f4
     420:	e4a60000 	swc1	$f6,0(a1)
     424:	8c8f0010 	lw	t7,16(a0)
     428:	448f4000 	mtc1	t7,$f8
     42c:	00000000 	nop
     430:	468042a0 	cvt.s.w	$f10,$f8
     434:	e4aa0004 	swc1	$f10,4(a1)
     438:	8c980014 	lw	t8,20(a0)
     43c:	44988000 	mtc1	t8,$f16
     440:	00000000 	nop
     444:	468084a0 	cvt.s.w	$f18,$f16
     448:	03e00008 	jr	ra
     44c:	e4b20008 	swc1	$f18,8(a1)

00000450 <func_80B5BC00>:
     450:	27bdffd0 	addiu	sp,sp,-48
     454:	afbf001c 	sw	ra,28(sp)
     458:	afb00018 	sw	s0,24(sp)
     45c:	afa40030 	sw	a0,48(sp)
     460:	8cb01c44 	lw	s0,7236(a1)
     464:	00a03825 	move	a3,a1
     468:	00a02025 	move	a0,a1
     46c:	8fa50030 	lw	a1,48(sp)
     470:	afa70034 	sw	a3,52(sp)
     474:	24060008 	li	a2,8
     478:	0c000000 	jal	0 <func_80B5B7B0>
     47c:	afb0002c 	sw	s0,44(sp)
     480:	8fa20030 	lw	v0,48(sp)
     484:	8c4f0024 	lw	t7,36(v0)
     488:	ae0f0024 	sw	t7,36(s0)
     48c:	8c4e0028 	lw	t6,40(v0)
     490:	ae0e0028 	sw	t6,40(s0)
     494:	8c4f002c 	lw	t7,44(v0)
     498:	ae0f002c 	sw	t7,44(s0)
     49c:	844400b6 	lh	a0,182(v0)
     4a0:	0c000000 	jal	0 <func_80B5B7B0>
     4a4:	a7a40026 	sh	a0,38(sp)
     4a8:	3c014260 	lui	at,0x4260
     4ac:	44813000 	mtc1	at,$f6
     4b0:	c6040024 	lwc1	$f4,36(s0)
     4b4:	87a40026 	lh	a0,38(sp)
     4b8:	46003202 	mul.s	$f8,$f6,$f0
     4bc:	46082280 	add.s	$f10,$f4,$f8
     4c0:	0c000000 	jal	0 <func_80B5B7B0>
     4c4:	e60a0024 	swc1	$f10,36(s0)
     4c8:	3c014260 	lui	at,0x4260
     4cc:	44819000 	mtc1	at,$f18
     4d0:	c610002c 	lwc1	$f16,44(s0)
     4d4:	44801000 	mtc1	zero,$f2
     4d8:	46009182 	mul.s	$f6,$f18,$f0
     4dc:	24050005 	li	a1,5
     4e0:	e6020068 	swc1	$f2,104(s0)
     4e4:	46068100 	add.s	$f4,$f16,$f6
     4e8:	e604002c 	swc1	$f4,44(s0)
     4ec:	8fb8002c 	lw	t8,44(sp)
     4f0:	e7020838 	swc1	$f2,2104(t8)
     4f4:	0c000000 	jal	0 <func_80B5B7B0>
     4f8:	8fa40034 	lw	a0,52(sp)
     4fc:	0c000000 	jal	0 <func_80B5B7B0>
     500:	24040020 	li	a0,32
     504:	0c000000 	jal	0 <func_80B5B7B0>
     508:	24040002 	li	a0,2
     50c:	8fb90030 	lw	t9,48(sp)
     510:	24020001 	li	v0,1
     514:	a7200214 	sh	zero,532(t9)
     518:	8fbf001c 	lw	ra,28(sp)
     51c:	8fb00018 	lw	s0,24(sp)
     520:	27bd0030 	addiu	sp,sp,48
     524:	03e00008 	jr	ra
     528:	00000000 	nop

0000052c <func_80B5BCDC>:
     52c:	8c820154 	lw	v0,340(a0)
     530:	3c0e0602 	lui	t6,0x602
     534:	25ceb874 	addiu	t6,t6,-18316
     538:	11c2002b 	beq	t6,v0,5e8 <func_80B5BCDC+0xbc>
     53c:	3c0f0602 	lui	t7,0x602
     540:	25efbcf0 	addiu	t7,t7,-17168
     544:	11e20028 	beq	t7,v0,5e8 <func_80B5BCDC+0xbc>
     548:	3c180601 	lui	t8,0x601
     54c:	271825e4 	addiu	t8,t8,9700
     550:	13020025 	beq	t8,v0,5e8 <func_80B5BCDC+0xbc>
     554:	3c190601 	lui	t9,0x601
     558:	27392e58 	addiu	t9,t9,11864
     55c:	13220022 	beq	t9,v0,5e8 <func_80B5BCDC+0xbc>
     560:	3c080601 	lui	t0,0x601
     564:	25085f14 	addiu	t0,t0,24340
     568:	1102001f 	beq	t0,v0,5e8 <func_80B5BCDC+0xbc>
     56c:	3c090601 	lui	t1,0x601
     570:	252969b4 	addiu	t1,t1,27060
     574:	1122001c 	beq	t1,v0,5e8 <func_80B5BCDC+0xbc>
     578:	3c0a0601 	lui	t2,0x601
     57c:	254a6d08 	addiu	t2,t2,27912
     580:	11420019 	beq	t2,v0,5e8 <func_80B5BCDC+0xbc>
     584:	3c0b0602 	lui	t3,0x602
     588:	256b805c 	addiu	t3,t3,-32676
     58c:	11620016 	beq	t3,v0,5e8 <func_80B5BCDC+0xbc>
     590:	3c0c0602 	lui	t4,0x602
     594:	258ca2fc 	addiu	t4,t4,-23812
     598:	11820013 	beq	t4,v0,5e8 <func_80B5BCDC+0xbc>
     59c:	3c0d0602 	lui	t5,0x602
     5a0:	25adaae0 	addiu	t5,t5,-21792
     5a4:	11a20010 	beq	t5,v0,5e8 <func_80B5BCDC+0xbc>
     5a8:	3c0e0602 	lui	t6,0x602
     5ac:	25cece08 	addiu	t6,t6,-12792
     5b0:	11c2000d 	beq	t6,v0,5e8 <func_80B5BCDC+0xbc>
     5b4:	3c0f0602 	lui	t7,0x602
     5b8:	25ef8898 	addiu	t7,t7,-30568
     5bc:	11e2000a 	beq	t7,v0,5e8 <func_80B5BCDC+0xbc>
     5c0:	3c180602 	lui	t8,0x602
     5c4:	2718910c 	addiu	t8,t8,-28404
     5c8:	13020007 	beq	t8,v0,5e8 <func_80B5BCDC+0xbc>
     5cc:	3c190601 	lui	t9,0x601
     5d0:	2739f0a4 	addiu	t9,t9,-3932
     5d4:	13220004 	beq	t9,v0,5e8 <func_80B5BCDC+0xbc>
     5d8:	3c080601 	lui	t0,0x601
     5dc:	2508f894 	addiu	t0,t0,-1900
     5e0:	55020004 	bnel	t0,v0,5f4 <func_80B5BCDC+0xc8>
     5e4:	00001025 	move	v0,zero
     5e8:	03e00008 	jr	ra
     5ec:	24020001 	li	v0,1
     5f0:	00001025 	move	v0,zero
     5f4:	03e00008 	jr	ra
     5f8:	00000000 	nop

000005fc <EnZl4_Init>:
     5fc:	27bdffc0 	addiu	sp,sp,-64
     600:	afb00024 	sw	s0,36(sp)
     604:	00808025 	move	s0,a0
     608:	afb10028 	sw	s1,40(sp)
     60c:	afbf002c 	sw	ra,44(sp)
     610:	afa50044 	sw	a1,68(sp)
     614:	2611014c 	addiu	s1,s0,332
     618:	260e0218 	addiu	t6,s0,536
     61c:	260f0284 	addiu	t7,s0,644
     620:	00a02025 	move	a0,a1
     624:	3c060601 	lui	a2,0x601
     628:	24180012 	li	t8,18
     62c:	afb80018 	sw	t8,24(sp)
     630:	24c6e038 	addiu	a2,a2,-8136
     634:	02202825 	move	a1,s1
     638:	afaf0014 	sw	t7,20(sp)
     63c:	afae0010 	sw	t6,16(sp)
     640:	0c000000 	jal	0 <func_80B5B7B0>
     644:	00003825 	move	a3,zero
     648:	3c060000 	lui	a2,0x0
     64c:	24c60000 	addiu	a2,a2,0
     650:	260400b4 	addiu	a0,s0,180
     654:	24050000 	li	a1,0
     658:	0c000000 	jal	0 <func_80B5B7B0>
     65c:	3c074190 	lui	a3,0x4190
     660:	3c050000 	lui	a1,0x0
     664:	24a50000 	addiu	a1,a1,0
     668:	02202025 	move	a0,s1
     66c:	0c000000 	jal	0 <func_80B5B7B0>
     670:	24060015 	li	a2,21
     674:	26050194 	addiu	a1,s0,404
     678:	afa50030 	sw	a1,48(sp)
     67c:	0c000000 	jal	0 <func_80B5B7B0>
     680:	8fa40044 	lw	a0,68(sp)
     684:	3c070000 	lui	a3,0x0
     688:	8fa50030 	lw	a1,48(sp)
     68c:	24e70000 	addiu	a3,a3,0
     690:	8fa40044 	lw	a0,68(sp)
     694:	0c000000 	jal	0 <func_80B5B7B0>
     698:	02003025 	move	a2,s0
     69c:	3c060000 	lui	a2,0x0
     6a0:	24c60000 	addiu	a2,a2,0
     6a4:	26040098 	addiu	a0,s0,152
     6a8:	0c000000 	jal	0 <func_80B5B7B0>
     6ac:	00002825 	move	a1,zero
     6b0:	3c053c23 	lui	a1,0x3c23
     6b4:	34a5d70a 	ori	a1,a1,0xd70a
     6b8:	0c000000 	jal	0 <func_80B5B7B0>
     6bc:	02002025 	move	a0,s0
     6c0:	3c020000 	lui	v0,0x0
     6c4:	24190006 	li	t9,6
     6c8:	3408ffff 	li	t0,0xffff
     6cc:	24420000 	addiu	v0,v0,0
     6d0:	a219001f 	sb	t9,31(s0)
     6d4:	a608010e 	sh	t0,270(s0)
     6d8:	a200020e 	sb	zero,526(s0)
     6dc:	a200020d 	sb	zero,525(s0)
     6e0:	8c4a1360 	lw	t2,4960(v0)
     6e4:	3c050000 	lui	a1,0x0
     6e8:	24a50000 	addiu	a1,a1,0
     6ec:	29410004 	slti	at,t2,4
     6f0:	14200007 	bnez	at,710 <EnZl4_Init+0x114>
     6f4:	02202025 	move	a0,s1
     6f8:	0c000000 	jal	0 <func_80B5B7B0>
     6fc:	00003025 	move	a2,zero
     700:	3c0b0000 	lui	t3,0x0
     704:	256b0000 	addiu	t3,t3,0
     708:	10000026 	b	7a4 <EnZl4_Init+0x1a8>
     70c:	ae0b0190 	sw	t3,400(s0)
     710:	944c0edc 	lhu	t4,3804(v0)
     714:	3c050000 	lui	a1,0x0
     718:	24a50000 	addiu	a1,a1,0
     71c:	318d0001 	andi	t5,t4,0x1
     720:	11a00007 	beqz	t5,740 <EnZl4_Init+0x144>
     724:	02202025 	move	a0,s1
     728:	0c000000 	jal	0 <func_80B5B7B0>
     72c:	00003025 	move	a2,zero
     730:	3c0e0000 	lui	t6,0x0
     734:	25ce0000 	addiu	t6,t6,0
     738:	1000001a 	b	7a4 <EnZl4_Init+0x1a8>
     73c:	ae0e0190 	sw	t6,400(s0)
     740:	8c4f0000 	lw	t7,0(v0)
     744:	240105f0 	li	at,1520
     748:	3c050000 	lui	a1,0x0
     74c:	11e10008 	beq	t7,at,770 <EnZl4_Init+0x174>
     750:	02002025 	move	a0,s0
     754:	02202025 	move	a0,s1
     758:	24a50000 	addiu	a1,a1,0
     75c:	0c000000 	jal	0 <func_80B5B7B0>
     760:	24060015 	li	a2,21
     764:	a2000209 	sb	zero,521(s0)
     768:	1000000b 	b	798 <EnZl4_Init+0x19c>
     76c:	a2000208 	sb	zero,520(s0)
     770:	0c000000 	jal	0 <func_80B5B7B0>
     774:	8fa50044 	lw	a1,68(sp)
     778:	3c050000 	lui	a1,0x0
     77c:	24a50000 	addiu	a1,a1,0
     780:	02202025 	move	a0,s1
     784:	0c000000 	jal	0 <func_80B5B7B0>
     788:	00003025 	move	a2,zero
     78c:	24180005 	li	t8,5
     790:	a2180209 	sb	t8,521(s0)
     794:	a2000208 	sb	zero,520(s0)
     798:	3c190000 	lui	t9,0x0
     79c:	27390000 	addiu	t9,t9,0
     7a0:	ae190190 	sw	t9,400(s0)
     7a4:	8fbf002c 	lw	ra,44(sp)
     7a8:	8fb00024 	lw	s0,36(sp)
     7ac:	8fb10028 	lw	s1,40(sp)
     7b0:	03e00008 	jr	ra
     7b4:	27bd0040 	addiu	sp,sp,64

000007b8 <EnZl4_Destroy>:
     7b8:	27bdffe8 	addiu	sp,sp,-24
     7bc:	00803025 	move	a2,a0
     7c0:	afbf0014 	sw	ra,20(sp)
     7c4:	00a02025 	move	a0,a1
     7c8:	0c000000 	jal	0 <func_80B5B7B0>
     7cc:	24c50194 	addiu	a1,a2,404
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	27bd0018 	addiu	sp,sp,24
     7d8:	03e00008 	jr	ra
     7dc:	00000000 	nop

000007e0 <func_80B5BF90>:
     7e0:	27bdffe0 	addiu	sp,sp,-32
     7e4:	00803025 	move	a2,a0
     7e8:	afbf0014 	sw	ra,20(sp)
     7ec:	afa50024 	sw	a1,36(sp)
     7f0:	8cc5015c 	lw	a1,348(a2)
     7f4:	2484014c 	addiu	a0,a0,332
     7f8:	0c000000 	jal	0 <func_80B5B7B0>
     7fc:	afa4001c 	sw	a0,28(sp)
     800:	14400003 	bnez	v0,810 <func_80B5BF90+0x30>
     804:	8fa4001c 	lw	a0,28(sp)
     808:	10000006 	b	824 <func_80B5BF90+0x44>
     80c:	00001025 	move	v0,zero
     810:	3c050000 	lui	a1,0x0
     814:	24a50000 	addiu	a1,a1,0
     818:	0c000000 	jal	0 <func_80B5B7B0>
     81c:	8fa60024 	lw	a2,36(sp)
     820:	24020001 	li	v0,1
     824:	8fbf0014 	lw	ra,20(sp)
     828:	27bd0020 	addiu	sp,sp,32
     82c:	03e00008 	jr	ra
     830:	00000000 	nop

00000834 <func_80B5BFE4>:
     834:	c482015c 	lwc1	$f2,348(a0)
     838:	3c01bf80 	lui	at,0xbf80
     83c:	c4800158 	lwc1	$f0,344(a0)
     840:	44812000 	mtc1	at,$f4
     844:	e4820158 	swc1	$f2,344(a0)
     848:	e4820164 	swc1	$f2,356(a0)
     84c:	e480015c 	swc1	$f0,348(a0)
     850:	03e00008 	jr	ra
     854:	e4840168 	swc1	$f4,360(a0)

00000858 <func_80B5C008>:
     858:	27bdffd0 	addiu	sp,sp,-48
     85c:	afbf001c 	sw	ra,28(sp)
     860:	afb00018 	sw	s0,24(sp)
     864:	8cb01c44 	lw	s0,7236(a1)
     868:	afa40030 	sw	a0,48(sp)
     86c:	afa50034 	sw	a1,52(sp)
     870:	0c000000 	jal	0 <func_80B5B7B0>
     874:	afb0002c 	sw	s0,44(sp)
     878:	8fa50034 	lw	a1,52(sp)
     87c:	1440002b 	bnez	v0,92c <func_80B5C008+0xd4>
     880:	8fa70030 	lw	a3,48(sp)
     884:	84ee008a 	lh	t6,138(a3)
     888:	84ef00b6 	lh	t7,182(a3)
     88c:	448e2000 	mtc1	t6,$f4
     890:	448f4000 	mtc1	t7,$f8
     894:	468021a0 	cvt.s.w	$f6,$f4
     898:	468042a0 	cvt.s.w	$f10,$f8
     89c:	460a3401 	sub.s	$f16,$f6,$f10
     8a0:	4600848d 	trunc.w.s	$f18,$f16
     8a4:	44029000 	mfc1	v0,$f18
     8a8:	00000000 	nop
     8ac:	00021400 	sll	v0,v0,0x10
     8b0:	00021403 	sra	v0,v0,0x10
     8b4:	04400004 	bltz	v0,8c8 <func_80B5C008+0x70>
     8b8:	00021823 	negu	v1,v0
     8bc:	00021c00 	sll	v1,v0,0x10
     8c0:	10000003 	b	8d0 <func_80B5C008+0x78>
     8c4:	00031c03 	sra	v1,v1,0x10
     8c8:	00031c00 	sll	v1,v1,0x10
     8cc:	00031c03 	sra	v1,v1,0x10
     8d0:	c4e40028 	lwc1	$f4,40(a3)
     8d4:	c6080028 	lwc1	$f8,40(s0)
     8d8:	28613ffc 	slti	at,v1,16380
     8dc:	46082032 	c.eq.s	$f4,$f8
     8e0:	00000000 	nop
     8e4:	45000003 	bc1f	8f4 <func_80B5C008+0x9c>
     8e8:	00000000 	nop
     8ec:	54200004 	bnezl	at,900 <func_80B5C008+0xa8>
     8f0:	84f901d4 	lh	t9,468(a3)
     8f4:	10000029 	b	99c <func_80B5C008+0x144>
     8f8:	00001025 	move	v0,zero
     8fc:	84f901d4 	lh	t9,468(a3)
     900:	3c014270 	lui	at,0x4270
     904:	44818000 	mtc1	at,$f16
     908:	44993000 	mtc1	t9,$f6
     90c:	00e02025 	move	a0,a3
     910:	468032a0 	cvt.s.w	$f10,$f6
     914:	46105480 	add.s	$f18,$f10,$f16
     918:	44069000 	mfc1	a2,$f18
     91c:	0c000000 	jal	0 <func_80B5B7B0>
     920:	00000000 	nop
     924:	1000001d 	b	99c <func_80B5C008+0x144>
     928:	00001025 	move	v0,zero
     92c:	8ce90024 	lw	t1,36(a3)
     930:	ae090024 	sw	t1,36(s0)
     934:	8ce80028 	lw	t0,40(a3)
     938:	ae080028 	sw	t0,40(s0)
     93c:	8ce9002c 	lw	t1,44(a3)
     940:	ae09002c 	sw	t1,44(s0)
     944:	84e400b6 	lh	a0,182(a3)
     948:	0c000000 	jal	0 <func_80B5B7B0>
     94c:	a7a40026 	sh	a0,38(sp)
     950:	3c014260 	lui	at,0x4260
     954:	44814000 	mtc1	at,$f8
     958:	c6040024 	lwc1	$f4,36(s0)
     95c:	87a40026 	lh	a0,38(sp)
     960:	46004182 	mul.s	$f6,$f8,$f0
     964:	46062280 	add.s	$f10,$f4,$f6
     968:	0c000000 	jal	0 <func_80B5B7B0>
     96c:	e60a0024 	swc1	$f10,36(s0)
     970:	3c014260 	lui	at,0x4260
     974:	44819000 	mtc1	at,$f18
     978:	c610002c 	lwc1	$f16,44(s0)
     97c:	44801000 	mtc1	zero,$f2
     980:	46009202 	mul.s	$f8,$f18,$f0
     984:	24020001 	li	v0,1
     988:	e6020068 	swc1	$f2,104(s0)
     98c:	46088100 	add.s	$f4,$f16,$f8
     990:	e604002c 	swc1	$f4,44(s0)
     994:	8faa002c 	lw	t2,44(sp)
     998:	e5420838 	swc1	$f2,2104(t2)
     99c:	8fbf001c 	lw	ra,28(sp)
     9a0:	8fb00018 	lw	s0,24(sp)
     9a4:	27bd0030 	addiu	sp,sp,48
     9a8:	03e00008 	jr	ra
     9ac:	00000000 	nop

000009b0 <func_80B5C160>:
     9b0:	27bdffe0 	addiu	sp,sp,-32
     9b4:	afbf001c 	sw	ra,28(sp)
     9b8:	afb10018 	sw	s1,24(sp)
     9bc:	afb00014 	sw	s0,20(sp)
     9c0:	90820208 	lbu	v0,520(a0)
     9c4:	00808025 	move	s0,a0
     9c8:	00a08825 	move	s1,a1
     9cc:	2c410007 	sltiu	at,v0,7
     9d0:	102000aa 	beqz	at,c7c <L80B5C3C4+0x68>
     9d4:	00027080 	sll	t6,v0,0x2
     9d8:	3c010000 	lui	at,0x0
     9dc:	002e0821 	addu	at,at,t6
     9e0:	8c2e0000 	lw	t6,0(at)
     9e4:	01c00008 	jr	t6
     9e8:	00000000 	nop

000009ec <L80B5C19C>:
     9ec:	3c014248 	lui	at,0x4248
     9f0:	44812000 	mtc1	at,$f4
     9f4:	c6060164 	lwc1	$f6,356(s0)
     9f8:	02002025 	move	a0,s0
     9fc:	46062032 	c.eq.s	$f4,$f6
     a00:	00000000 	nop
     a04:	45020004 	bc1fl	a18 <L80B5C19C+0x2c>
     a08:	02002025 	move	a0,s0
     a0c:	0c000000 	jal	0 <func_80B5B7B0>
     a10:	2405686a 	li	a1,26730
     a14:	02002025 	move	a0,s0
     a18:	0c000000 	jal	0 <func_80B5B7B0>
     a1c:	24050004 	li	a1,4
     a20:	14400003 	bnez	v0,a30 <L80B5C19C+0x44>
     a24:	02202025 	move	a0,s1
     a28:	10000094 	b	c7c <L80B5C3C4+0x68>
     a2c:	92020208 	lbu	v0,520(s0)
     a30:	2405702e 	li	a1,28718
     a34:	0c000000 	jal	0 <func_80B5B7B0>
     a38:	00003025 	move	a2,zero
     a3c:	920f0208 	lbu	t7,520(s0)
     a40:	25f80001 	addiu	t8,t7,1
     a44:	a2180208 	sb	t8,520(s0)
     a48:	1000008c 	b	c7c <L80B5C3C4+0x68>
     a4c:	330200ff 	andi	v0,t8,0xff

00000a50 <L80B5C200>:
     a50:	0c000000 	jal	0 <func_80B5B7B0>
     a54:	262420d8 	addiu	a0,s1,8408
     a58:	24010005 	li	at,5
     a5c:	1441000f 	bne	v0,at,a9c <L80B5C200+0x4c>
     a60:	00000000 	nop
     a64:	0c000000 	jal	0 <func_80B5B7B0>
     a68:	02202025 	move	a0,s1
     a6c:	1040000b 	beqz	v0,a9c <L80B5C200+0x4c>
     a70:	02202025 	move	a0,s1
     a74:	0c000000 	jal	0 <func_80B5B7B0>
     a78:	24050001 	li	a1,1
     a7c:	02202025 	move	a0,s1
     a80:	2405702f 	li	a1,28719
     a84:	0c000000 	jal	0 <func_80B5B7B0>
     a88:	00003025 	move	a2,zero
     a8c:	92190208 	lbu	t9,520(s0)
     a90:	a6000214 	sh	zero,532(s0)
     a94:	27280001 	addiu	t0,t9,1
     a98:	a2080208 	sb	t0,520(s0)
     a9c:	10000077 	b	c7c <L80B5C3C4+0x68>
     aa0:	92020208 	lbu	v0,520(s0)

00000aa4 <L80B5C254>:
     aa4:	0c000000 	jal	0 <func_80B5B7B0>
     aa8:	262420d8 	addiu	a0,s1,8408
     aac:	24010005 	li	at,5
     ab0:	14410021 	bne	v0,at,b38 <L80B5C254+0x94>
     ab4:	00000000 	nop
     ab8:	0c000000 	jal	0 <func_80B5B7B0>
     abc:	02202025 	move	a0,s1
     ac0:	1040001d 	beqz	v0,b38 <L80B5C254+0x94>
     ac4:	3c0c0000 	lui	t4,0x0
     ac8:	3c020200 	lui	v0,0x200
     acc:	24423994 	addiu	v0,v0,14740
     ad0:	00024900 	sll	t1,v0,0x4
     ad4:	00095702 	srl	t2,t1,0x1c
     ad8:	000a5880 	sll	t3,t2,0x2
     adc:	018b6021 	addu	t4,t4,t3
     ae0:	3c0100ff 	lui	at,0xff
     ae4:	8d8c0000 	lw	t4,0(t4)
     ae8:	3421ffff 	ori	at,at,0xffff
     aec:	00416824 	and	t5,v0,at
     af0:	3c018000 	lui	at,0x8000
     af4:	018d7021 	addu	t6,t4,t5
     af8:	01c17821 	addu	t7,t6,at
     afc:	ae2f1d68 	sw	t7,7528(s1)
     b00:	3c010000 	lui	at,0x0
     b04:	24180001 	li	t8,1
     b08:	a0381414 	sb	t8,5140(at)
     b0c:	02202025 	move	a0,s1
     b10:	0c000000 	jal	0 <func_80B5B7B0>
     b14:	00002825 	move	a1,zero
     b18:	3c010001 	lui	at,0x1
     b1c:	00310821 	addu	at,at,s1
     b20:	24190037 	li	t9,55
     b24:	a03903dc 	sb	t9,988(at)
     b28:	92080208 	lbu	t0,520(s0)
     b2c:	a6000214 	sh	zero,532(s0)
     b30:	25090001 	addiu	t1,t0,1
     b34:	a2090208 	sb	t1,520(s0)
     b38:	10000050 	b	c7c <L80B5C3C4+0x68>
     b3c:	92020208 	lbu	v0,520(s0)

00000b40 <L80B5C2F0>:
     b40:	860a0214 	lh	t2,532(s0)
     b44:	02202025 	move	a0,s1
     b48:	240570f9 	li	a1,28921
     b4c:	254b0001 	addiu	t3,t2,1
     b50:	a60b0214 	sh	t3,532(s0)
     b54:	860c0214 	lh	t4,532(s0)
     b58:	2981002d 	slti	at,t4,45
     b5c:	14200006 	bnez	at,b78 <L80B5C2F0+0x38>
     b60:	00000000 	nop
     b64:	0c000000 	jal	0 <func_80B5B7B0>
     b68:	00003025 	move	a2,zero
     b6c:	920d0208 	lbu	t5,520(s0)
     b70:	25ae0001 	addiu	t6,t5,1
     b74:	a20e0208 	sb	t6,520(s0)
     b78:	10000040 	b	c7c <L80B5C3C4+0x68>
     b7c:	92020208 	lbu	v0,520(s0)

00000b80 <L80B5C330>:
     b80:	0c000000 	jal	0 <func_80B5B7B0>
     b84:	262420d8 	addiu	a0,s1,8408
     b88:	24010005 	li	at,5
     b8c:	1441000f 	bne	v0,at,bcc <L80B5C330+0x4c>
     b90:	00000000 	nop
     b94:	0c000000 	jal	0 <func_80B5B7B0>
     b98:	02202025 	move	a0,s1
     b9c:	1040000b 	beqz	v0,bcc <L80B5C330+0x4c>
     ba0:	02202025 	move	a0,s1
     ba4:	0c000000 	jal	0 <func_80B5B7B0>
     ba8:	24050001 	li	a1,1
     bac:	3c010001 	lui	at,0x1
     bb0:	00310821 	addu	at,at,s1
     bb4:	240f0037 	li	t7,55
     bb8:	a02f03dc 	sb	t7,988(at)
     bbc:	92180208 	lbu	t8,520(s0)
     bc0:	a6000214 	sh	zero,532(s0)
     bc4:	27190001 	addiu	t9,t8,1
     bc8:	a2190208 	sb	t9,520(s0)
     bcc:	1000002b 	b	c7c <L80B5C3C4+0x68>
     bd0:	92020208 	lbu	v0,520(s0)

00000bd4 <L80B5C384>:
     bd4:	86080214 	lh	t0,532(s0)
     bd8:	02202025 	move	a0,s1
     bdc:	240570fa 	li	a1,28922
     be0:	25090001 	addiu	t1,t0,1
     be4:	a6090214 	sh	t1,532(s0)
     be8:	860a0214 	lh	t2,532(s0)
     bec:	2941000a 	slti	at,t2,10
     bf0:	14200006 	bnez	at,c0c <L80B5C384+0x38>
     bf4:	00000000 	nop
     bf8:	0c000000 	jal	0 <func_80B5B7B0>
     bfc:	00003025 	move	a2,zero
     c00:	920b0208 	lbu	t3,520(s0)
     c04:	256c0001 	addiu	t4,t3,1
     c08:	a20c0208 	sb	t4,520(s0)
     c0c:	1000001b 	b	c7c <L80B5C3C4+0x68>
     c10:	92020208 	lbu	v0,520(s0)

00000c14 <L80B5C3C4>:
     c14:	0c000000 	jal	0 <func_80B5B7B0>
     c18:	262420d8 	addiu	a0,s1,8408
     c1c:	24010005 	li	at,5
     c20:	54410016 	bnel	v0,at,c7c <L80B5C3C4+0x68>
     c24:	92020208 	lbu	v0,520(s0)
     c28:	0c000000 	jal	0 <func_80B5B7B0>
     c2c:	02202025 	move	a0,s1
     c30:	10400011 	beqz	v0,c78 <L80B5C3C4+0x64>
     c34:	02202025 	move	a0,s1
     c38:	0c000000 	jal	0 <func_80B5B7B0>
     c3c:	24050002 	li	a1,2
     c40:	3c050000 	lui	a1,0x0
     c44:	24a50000 	addiu	a1,a1,0
     c48:	2604014c 	addiu	a0,s0,332
     c4c:	0c000000 	jal	0 <func_80B5B7B0>
     c50:	24060016 	li	a2,22
     c54:	920d0208 	lbu	t5,520(s0)
     c58:	a200020e 	sb	zero,526(s0)
     c5c:	a6000214 	sh	zero,532(s0)
     c60:	25ae0001 	addiu	t6,t5,1
     c64:	a20e0208 	sb	t6,520(s0)
     c68:	02202025 	move	a0,s1
     c6c:	240570fb 	li	a1,28923
     c70:	0c000000 	jal	0 <func_80B5B7B0>
     c74:	00003025 	move	a2,zero
     c78:	92020208 	lbu	v0,520(s0)
     c7c:	24010007 	li	at,7
     c80:	14410003 	bne	v0,at,c90 <L80B5C3C4+0x7c>
     c84:	8fb00014 	lw	s0,20(sp)
     c88:	10000002 	b	c94 <L80B5C3C4+0x80>
     c8c:	24030001 	li	v1,1
     c90:	00001825 	move	v1,zero
     c94:	8fbf001c 	lw	ra,28(sp)
     c98:	8fb10018 	lw	s1,24(sp)
     c9c:	27bd0020 	addiu	sp,sp,32
     ca0:	03e00008 	jr	ra
     ca4:	00601025 	move	v0,v1

00000ca8 <func_80B5C458>:
     ca8:	27bdffe0 	addiu	sp,sp,-32
     cac:	afbf001c 	sw	ra,28(sp)
     cb0:	afb10018 	sw	s1,24(sp)
     cb4:	afb00014 	sw	s0,20(sp)
     cb8:	90820208 	lbu	v0,520(a0)
     cbc:	00808025 	move	s0,a0
     cc0:	00a08825 	move	s1,a1
     cc4:	2c41000e 	sltiu	at,v0,14
     cc8:	10200137 	beqz	at,11a8 <L80B5C958>
     ccc:	00027080 	sll	t6,v0,0x2
     cd0:	3c010000 	lui	at,0x0
     cd4:	002e0821 	addu	at,at,t6
     cd8:	8c2e0000 	lw	t6,0(at)
     cdc:	01c00008 	jr	t6
     ce0:	00000000 	nop

00000ce4 <L80B5C494>:
     ce4:	02002025 	move	a0,s0
     ce8:	0c000000 	jal	0 <func_80B5B7B0>
     cec:	24050019 	li	a1,25
     cf0:	10400004 	beqz	v0,d04 <L80B5C4B4>
     cf4:	00000000 	nop
     cf8:	920f0208 	lbu	t7,520(s0)
     cfc:	25f80001 	addiu	t8,t7,1
     d00:	a2180208 	sb	t8,520(s0)

00000d04 <L80B5C4B4>:
     d04:	0c000000 	jal	0 <func_80B5B7B0>
     d08:	262420d8 	addiu	a0,s1,8408
     d0c:	24010005 	li	at,5
     d10:	1441000f 	bne	v0,at,d50 <L80B5C4B4+0x4c>
     d14:	00000000 	nop
     d18:	0c000000 	jal	0 <func_80B5B7B0>
     d1c:	02202025 	move	a0,s1
     d20:	1040000b 	beqz	v0,d50 <L80B5C4B4+0x4c>
     d24:	02202025 	move	a0,s1
     d28:	0c000000 	jal	0 <func_80B5B7B0>
     d2c:	24050003 	li	a1,3
     d30:	3c010001 	lui	at,0x1
     d34:	00310821 	addu	at,at,s1
     d38:	24190037 	li	t9,55
     d3c:	a03903dc 	sb	t9,988(at)
     d40:	24080028 	li	t0,40
     d44:	24090002 	li	t1,2
     d48:	a6080212 	sh	t0,530(s0)
     d4c:	a2090208 	sb	t1,520(s0)
     d50:	10000115 	b	11a8 <L80B5C958>
     d54:	92020208 	lbu	v0,520(s0)

00000d58 <L80B5C508>:
     d58:	86020212 	lh	v0,530(s0)
     d5c:	02202025 	move	a0,s1
     d60:	24057030 	li	a1,28720
     d64:	14400003 	bnez	v0,d74 <L80B5C508+0x1c>
     d68:	244affff 	addiu	t2,v0,-1
     d6c:	10000003 	b	d7c <L80B5C508+0x24>
     d70:	00001825 	move	v1,zero
     d74:	a60a0212 	sh	t2,530(s0)
     d78:	86030212 	lh	v1,530(s0)
     d7c:	14600006 	bnez	v1,d98 <L80B5C508+0x40>
     d80:	00000000 	nop
     d84:	0c000000 	jal	0 <func_80B5B7B0>
     d88:	00003025 	move	a2,zero
     d8c:	920b0208 	lbu	t3,520(s0)
     d90:	256c0001 	addiu	t4,t3,1
     d94:	a20c0208 	sb	t4,520(s0)
     d98:	10000103 	b	11a8 <L80B5C958>
     d9c:	92020208 	lbu	v0,520(s0)

00000da0 <L80B5C550>:
     da0:	0c000000 	jal	0 <func_80B5B7B0>
     da4:	262420d8 	addiu	a0,s1,8408
     da8:	24010004 	li	at,4
     dac:	14410005 	bne	v0,at,dc4 <L80B5C550+0x24>
     db0:	00000000 	nop
     db4:	0c000000 	jal	0 <func_80B5B7B0>
     db8:	02202025 	move	a0,s1
     dbc:	14400003 	bnez	v0,dcc <L80B5C550+0x2c>
     dc0:	3c0d0001 	lui	t5,0x1
     dc4:	100000f8 	b	11a8 <L80B5C958>
     dc8:	92020208 	lbu	v0,520(s0)
     dcc:	01b16821 	addu	t5,t5,s1
     dd0:	91ad04bd 	lbu	t5,1213(t5)
     dd4:	24050004 	li	a1,4
     dd8:	02202025 	move	a0,s1
     ddc:	15a00014 	bnez	t5,e30 <L80B5C550+0x90>
     de0:	00000000 	nop
     de4:	0c000000 	jal	0 <func_80B5B7B0>
     de8:	02202025 	move	a0,s1
     dec:	3c050000 	lui	a1,0x0
     df0:	24a50000 	addiu	a1,a1,0
     df4:	2604014c 	addiu	a0,s0,332
     df8:	0c000000 	jal	0 <func_80B5B7B0>
     dfc:	2406001c 	li	a2,28
     e00:	240e0005 	li	t6,5
     e04:	240f0001 	li	t7,1
     e08:	a6000210 	sh	zero,528(s0)
     e0c:	a20e020d 	sb	t6,525(s0)
     e10:	a20f020e 	sb	t7,526(s0)
     e14:	02202025 	move	a0,s1
     e18:	24057032 	li	a1,28722
     e1c:	0c000000 	jal	0 <func_80B5B7B0>
     e20:	00003025 	move	a2,zero
     e24:	24180007 	li	t8,7
     e28:	10000011 	b	e70 <L80B5C550+0xd0>
     e2c:	a2180208 	sb	t8,520(s0)
     e30:	0c000000 	jal	0 <func_80B5B7B0>
     e34:	24050002 	li	a1,2
     e38:	3c050000 	lui	a1,0x0
     e3c:	24a50000 	addiu	a1,a1,0
     e40:	2604014c 	addiu	a0,s0,332
     e44:	0c000000 	jal	0 <func_80B5B7B0>
     e48:	24060009 	li	a2,9
     e4c:	24190002 	li	t9,2
     e50:	a219020e 	sb	t9,526(s0)
     e54:	02202025 	move	a0,s1
     e58:	24057031 	li	a1,28721
     e5c:	0c000000 	jal	0 <func_80B5B7B0>
     e60:	00003025 	move	a2,zero
     e64:	92080208 	lbu	t0,520(s0)
     e68:	25090001 	addiu	t1,t0,1
     e6c:	a2090208 	sb	t1,520(s0)
     e70:	100000cd 	b	11a8 <L80B5C958>
     e74:	92020208 	lbu	v0,520(s0)

00000e78 <L80B5C628>:
     e78:	3c014180 	lui	at,0x4180
     e7c:	44812000 	mtc1	at,$f4
     e80:	c6060164 	lwc1	$f6,356(s0)
     e84:	02002025 	move	a0,s0
     e88:	46062032 	c.eq.s	$f4,$f6
     e8c:	00000000 	nop
     e90:	45020004 	bc1fl	ea4 <L80B5C628+0x2c>
     e94:	02002025 	move	a0,s0
     e98:	0c000000 	jal	0 <func_80B5B7B0>
     e9c:	2405686b 	li	a1,26731
     ea0:	02002025 	move	a0,s0
     ea4:	0c000000 	jal	0 <func_80B5B7B0>
     ea8:	2405000a 	li	a1,10
     eac:	10400004 	beqz	v0,ec0 <L80B5C670>
     eb0:	00000000 	nop
     eb4:	920a0208 	lbu	t2,520(s0)
     eb8:	254b0001 	addiu	t3,t2,1
     ebc:	a20b0208 	sb	t3,520(s0)

00000ec0 <L80B5C670>:
     ec0:	0c000000 	jal	0 <func_80B5B7B0>
     ec4:	262420d8 	addiu	a0,s1,8408
     ec8:	24010005 	li	at,5
     ecc:	14410013 	bne	v0,at,f1c <L80B5C670+0x5c>
     ed0:	00000000 	nop
     ed4:	0c000000 	jal	0 <func_80B5B7B0>
     ed8:	02202025 	move	a0,s1
     edc:	1040000f 	beqz	v0,f1c <L80B5C670+0x5c>
     ee0:	240c0037 	li	t4,55
     ee4:	3c010001 	lui	at,0x1
     ee8:	00310821 	addu	at,at,s1
     eec:	3c050000 	lui	a1,0x0
     ef0:	a02c03dc 	sb	t4,988(at)
     ef4:	24a50000 	addiu	a1,a1,0
     ef8:	2604014c 	addiu	a0,s0,332
     efc:	0c000000 	jal	0 <func_80B5B7B0>
     f00:	24060009 	li	a2,9
     f04:	240d0002 	li	t5,2
     f08:	a20d020e 	sb	t5,526(s0)
     f0c:	0c000000 	jal	0 <func_80B5B7B0>
     f10:	02002025 	move	a0,s0
     f14:	240e0006 	li	t6,6
     f18:	a20e0208 	sb	t6,520(s0)
     f1c:	100000a2 	b	11a8 <L80B5C958>
     f20:	92020208 	lbu	v0,520(s0)

00000f24 <L80B5C6D4>:
     f24:	a200020e 	sb	zero,526(s0)
     f28:	02202025 	move	a0,s1
     f2c:	0c000000 	jal	0 <func_80B5B7B0>
     f30:	24050003 	li	a1,3
     f34:	02202025 	move	a0,s1
     f38:	24057030 	li	a1,28720
     f3c:	0c000000 	jal	0 <func_80B5B7B0>
     f40:	00003025 	move	a2,zero
     f44:	240f000c 	li	t7,12
     f48:	a20f0208 	sb	t7,520(s0)
     f4c:	10000096 	b	11a8 <L80B5C958>
     f50:	31e200ff 	andi	v0,t7,0xff

00000f54 <L80B5C704>:
     f54:	02002025 	move	a0,s0
     f58:	0c000000 	jal	0 <func_80B5B7B0>
     f5c:	24050019 	li	a1,25
     f60:	10400002 	beqz	v0,f6c <L80B5C71C>
     f64:	2418000d 	li	t8,13
     f68:	a2180208 	sb	t8,520(s0)

00000f6c <L80B5C71C>:
     f6c:	0c000000 	jal	0 <func_80B5B7B0>
     f70:	262420d8 	addiu	a0,s1,8408
     f74:	24010004 	li	at,4
     f78:	14410005 	bne	v0,at,f90 <L80B5C71C+0x24>
     f7c:	00000000 	nop
     f80:	0c000000 	jal	0 <func_80B5B7B0>
     f84:	02202025 	move	a0,s1
     f88:	14400003 	bnez	v0,f98 <L80B5C71C+0x2c>
     f8c:	3c190001 	lui	t9,0x1
     f90:	10000085 	b	11a8 <L80B5C958>
     f94:	92020208 	lbu	v0,520(s0)
     f98:	0331c821 	addu	t9,t9,s1
     f9c:	933904bd 	lbu	t9,1213(t9)
     fa0:	24050004 	li	a1,4
     fa4:	02202025 	move	a0,s1
     fa8:	17200014 	bnez	t9,ffc <L80B5C71C+0x90>
     fac:	00000000 	nop
     fb0:	0c000000 	jal	0 <func_80B5B7B0>
     fb4:	02202025 	move	a0,s1
     fb8:	3c050000 	lui	a1,0x0
     fbc:	24a50000 	addiu	a1,a1,0
     fc0:	2604014c 	addiu	a0,s0,332
     fc4:	0c000000 	jal	0 <func_80B5B7B0>
     fc8:	2406001c 	li	a2,28
     fcc:	24080005 	li	t0,5
     fd0:	24090001 	li	t1,1
     fd4:	a6000210 	sh	zero,528(s0)
     fd8:	a208020d 	sb	t0,525(s0)
     fdc:	a209020e 	sb	t1,526(s0)
     fe0:	02202025 	move	a0,s1
     fe4:	24057032 	li	a1,28722
     fe8:	0c000000 	jal	0 <func_80B5B7B0>
     fec:	00003025 	move	a2,zero
     ff0:	240a0007 	li	t2,7
     ff4:	10000010 	b	1038 <L80B5C71C+0xcc>
     ff8:	a20a0208 	sb	t2,520(s0)
     ffc:	0c000000 	jal	0 <func_80B5B7B0>
    1000:	24050002 	li	a1,2
    1004:	3c050000 	lui	a1,0x0
    1008:	24a50000 	addiu	a1,a1,0
    100c:	2604014c 	addiu	a0,s0,332
    1010:	0c000000 	jal	0 <func_80B5B7B0>
    1014:	24060009 	li	a2,9
    1018:	240b0002 	li	t3,2
    101c:	a20b020e 	sb	t3,526(s0)
    1020:	02202025 	move	a0,s1
    1024:	24057031 	li	a1,28721
    1028:	0c000000 	jal	0 <func_80B5B7B0>
    102c:	00003025 	move	a2,zero
    1030:	240c0004 	li	t4,4
    1034:	a20c0208 	sb	t4,520(s0)
    1038:	1000005b 	b	11a8 <L80B5C958>
    103c:	92020208 	lbu	v0,520(s0)

00001040 <L80B5C7F0>:
    1040:	3c014188 	lui	at,0x4188
    1044:	44814000 	mtc1	at,$f8
    1048:	c60a0164 	lwc1	$f10,356(s0)
    104c:	02002025 	move	a0,s0
    1050:	460a4032 	c.eq.s	$f8,$f10
    1054:	00000000 	nop
    1058:	45020004 	bc1fl	106c <L80B5C7F0+0x2c>
    105c:	02002025 	move	a0,s0
    1060:	0c000000 	jal	0 <func_80B5B7B0>
    1064:	2405686d 	li	a1,26733
    1068:	02002025 	move	a0,s0
    106c:	0c000000 	jal	0 <func_80B5B7B0>
    1070:	2405001d 	li	a1,29
    1074:	10400004 	beqz	v0,1088 <L80B5C838>
    1078:	00000000 	nop
    107c:	920d0208 	lbu	t5,520(s0)
    1080:	25ae0001 	addiu	t6,t5,1
    1084:	a20e0208 	sb	t6,520(s0)

00001088 <L80B5C838>:
    1088:	0c000000 	jal	0 <func_80B5B7B0>
    108c:	262420d8 	addiu	a0,s1,8408
    1090:	24010005 	li	at,5
    1094:	14410015 	bne	v0,at,10ec <L80B5C838+0x64>
    1098:	00000000 	nop
    109c:	0c000000 	jal	0 <func_80B5B7B0>
    10a0:	02202025 	move	a0,s1
    10a4:	10400011 	beqz	v0,10ec <L80B5C838+0x64>
    10a8:	02202025 	move	a0,s1
    10ac:	0c000000 	jal	0 <func_80B5B7B0>
    10b0:	24050002 	li	a1,2
    10b4:	3c050000 	lui	a1,0x0
    10b8:	24a50000 	addiu	a1,a1,0
    10bc:	2604014c 	addiu	a0,s0,332
    10c0:	0c000000 	jal	0 <func_80B5B7B0>
    10c4:	00003025 	move	a2,zero
    10c8:	a6000210 	sh	zero,528(s0)
    10cc:	a200020d 	sb	zero,525(s0)
    10d0:	a200020e 	sb	zero,526(s0)
    10d4:	02202025 	move	a0,s1
    10d8:	240570fc 	li	a1,28924
    10dc:	0c000000 	jal	0 <func_80B5B7B0>
    10e0:	00003025 	move	a2,zero
    10e4:	240f0009 	li	t7,9
    10e8:	a20f0208 	sb	t7,520(s0)
    10ec:	1000002e 	b	11a8 <L80B5C958>
    10f0:	92020208 	lbu	v0,520(s0)

000010f4 <L80B5C8A4>:
    10f4:	0c000000 	jal	0 <func_80B5B7B0>
    10f8:	262420d8 	addiu	a0,s1,8408
    10fc:	24010005 	li	at,5
    1100:	1441000e 	bne	v0,at,113c <L80B5C8A4+0x48>
    1104:	00000000 	nop
    1108:	0c000000 	jal	0 <func_80B5B7B0>
    110c:	02202025 	move	a0,s1
    1110:	1040000a 	beqz	v0,113c <L80B5C8A4+0x48>
    1114:	02202025 	move	a0,s1
    1118:	0c000000 	jal	0 <func_80B5B7B0>
    111c:	24050005 	li	a1,5
    1120:	02202025 	move	a0,s1
    1124:	240570fd 	li	a1,28925
    1128:	0c000000 	jal	0 <func_80B5B7B0>
    112c:	00003025 	move	a2,zero
    1130:	92180208 	lbu	t8,520(s0)
    1134:	27190001 	addiu	t9,t8,1
    1138:	a2190208 	sb	t9,520(s0)
    113c:	1000001a 	b	11a8 <L80B5C958>
    1140:	92020208 	lbu	v0,520(s0)

00001144 <L80B5C8F4>:
    1144:	0c000000 	jal	0 <func_80B5B7B0>
    1148:	262420d8 	addiu	a0,s1,8408
    114c:	24010005 	li	at,5
    1150:	54410015 	bnel	v0,at,11a8 <L80B5C958>
    1154:	92020208 	lbu	v0,520(s0)
    1158:	0c000000 	jal	0 <func_80B5B7B0>
    115c:	02202025 	move	a0,s1
    1160:	10400010 	beqz	v0,11a4 <L80B5C8F4+0x60>
    1164:	2604014c 	addiu	a0,s0,332
    1168:	3c050000 	lui	a1,0x0
    116c:	24a50000 	addiu	a1,a1,0
    1170:	0c000000 	jal	0 <func_80B5B7B0>
    1174:	24060005 	li	a2,5
    1178:	24080006 	li	t0,6
    117c:	24090003 	li	t1,3
    1180:	a208020d 	sb	t0,525(s0)
    1184:	a209020e 	sb	t1,526(s0)
    1188:	02202025 	move	a0,s1
    118c:	240570fe 	li	a1,28926
    1190:	0c000000 	jal	0 <func_80B5B7B0>
    1194:	00003025 	move	a2,zero
    1198:	920a0208 	lbu	t2,520(s0)
    119c:	254b0001 	addiu	t3,t2,1
    11a0:	a20b0208 	sb	t3,520(s0)
    11a4:	92020208 	lbu	v0,520(s0)

000011a8 <L80B5C958>:
    11a8:	2401000b 	li	at,11
    11ac:	14410003 	bne	v0,at,11bc <L80B5C958+0x14>
    11b0:	8fb00014 	lw	s0,20(sp)
    11b4:	10000002 	b	11c0 <L80B5C958+0x18>
    11b8:	24030001 	li	v1,1
    11bc:	00001825 	move	v1,zero
    11c0:	8fbf001c 	lw	ra,28(sp)
    11c4:	8fb10018 	lw	s1,24(sp)
    11c8:	27bd0020 	addiu	sp,sp,32
    11cc:	03e00008 	jr	ra
    11d0:	00601025 	move	v0,v1

000011d4 <func_80B5C984>:
    11d4:	27bdffe0 	addiu	sp,sp,-32
    11d8:	afbf001c 	sw	ra,28(sp)
    11dc:	afb10018 	sw	s1,24(sp)
    11e0:	afb00014 	sw	s0,20(sp)
    11e4:	908e0208 	lbu	t6,520(a0)
    11e8:	00808025 	move	s0,a0
    11ec:	00a08825 	move	s1,a1
    11f0:	2dc10012 	sltiu	at,t6,18
    11f4:	10200164 	beqz	at,1788 <L80B5CED4+0x64>
    11f8:	000e7080 	sll	t6,t6,0x2
    11fc:	3c010000 	lui	at,0x0
    1200:	002e0821 	addu	at,at,t6
    1204:	8c2e0000 	lw	t6,0(at)
    1208:	01c00008 	jr	t6
    120c:	00000000 	nop

00001210 <L80B5C9C0>:
    1210:	02002025 	move	a0,s0
    1214:	0c000000 	jal	0 <func_80B5B7B0>
    1218:	24050004 	li	a1,4
    121c:	5040015b 	beqzl	v0,178c <L80B5CED4+0x68>
    1220:	86020214 	lh	v0,532(s0)
    1224:	920f0208 	lbu	t7,520(s0)
    1228:	25f80001 	addiu	t8,t7,1
    122c:	10000156 	b	1788 <L80B5CED4+0x64>
    1230:	a2180208 	sb	t8,520(s0)

00001234 <L80B5C9E4>:
    1234:	0c000000 	jal	0 <func_80B5B7B0>
    1238:	262420d8 	addiu	a0,s1,8408
    123c:	24010005 	li	at,5
    1240:	54410152 	bnel	v0,at,178c <L80B5CED4+0x68>
    1244:	86020214 	lh	v0,532(s0)
    1248:	0c000000 	jal	0 <func_80B5B7B0>
    124c:	02202025 	move	a0,s1
    1250:	1040014d 	beqz	v0,1788 <L80B5CED4+0x64>
    1254:	02202025 	move	a0,s1
    1258:	0c000000 	jal	0 <func_80B5B7B0>
    125c:	24050006 	li	a1,6
    1260:	3c050000 	lui	a1,0x0
    1264:	24a50000 	addiu	a1,a1,0
    1268:	2604014c 	addiu	a0,s0,332
    126c:	0c000000 	jal	0 <func_80B5B7B0>
    1270:	24060001 	li	a2,1
    1274:	2419000b 	li	t9,11
    1278:	24080005 	li	t0,5
    127c:	3c010001 	lui	at,0x1
    1280:	a6190210 	sh	t9,528(s0)
    1284:	a208020d 	sb	t0,525(s0)
    1288:	a200020e 	sb	zero,526(s0)
    128c:	00310821 	addu	at,at,s1
    1290:	24090037 	li	t1,55
    1294:	a02903dc 	sb	t1,988(at)
    1298:	02202025 	move	a0,s1
    129c:	240570ff 	li	a1,28927
    12a0:	0c000000 	jal	0 <func_80B5B7B0>
    12a4:	00003025 	move	a2,zero
    12a8:	920a0208 	lbu	t2,520(s0)
    12ac:	254b0001 	addiu	t3,t2,1
    12b0:	10000135 	b	1788 <L80B5CED4+0x64>
    12b4:	a20b0208 	sb	t3,520(s0)

000012b8 <L80B5CA68>:
    12b8:	02002025 	move	a0,s0
    12bc:	0c000000 	jal	0 <func_80B5B7B0>
    12c0:	24050002 	li	a1,2
    12c4:	10400004 	beqz	v0,12d8 <L80B5CA88>
    12c8:	00000000 	nop
    12cc:	920c0208 	lbu	t4,520(s0)
    12d0:	258d0001 	addiu	t5,t4,1
    12d4:	a20d0208 	sb	t5,520(s0)

000012d8 <L80B5CA88>:
    12d8:	0c000000 	jal	0 <func_80B5B7B0>
    12dc:	262420d8 	addiu	a0,s1,8408
    12e0:	24010005 	li	at,5
    12e4:	54410129 	bnel	v0,at,178c <L80B5CED4+0x68>
    12e8:	86020214 	lh	v0,532(s0)
    12ec:	0c000000 	jal	0 <func_80B5B7B0>
    12f0:	02202025 	move	a0,s1
    12f4:	10400124 	beqz	v0,1788 <L80B5CED4+0x64>
    12f8:	2604014c 	addiu	a0,s0,332
    12fc:	3c050000 	lui	a1,0x0
    1300:	24a50000 	addiu	a1,a1,0
    1304:	0c000000 	jal	0 <func_80B5B7B0>
    1308:	24060010 	li	a2,16
    130c:	3c010001 	lui	at,0x1
    1310:	a6000210 	sh	zero,528(s0)
    1314:	a200020d 	sb	zero,525(s0)
    1318:	00310821 	addu	at,at,s1
    131c:	240e0037 	li	t6,55
    1320:	a02e03dc 	sb	t6,988(at)
    1324:	240f0004 	li	t7,4
    1328:	10000117 	b	1788 <L80B5CED4+0x64>
    132c:	a20f0208 	sb	t7,520(s0)

00001330 <L80B5CAE0>:
    1330:	02002025 	move	a0,s0
    1334:	0c000000 	jal	0 <func_80B5B7B0>
    1338:	24050011 	li	a1,17
    133c:	10400112 	beqz	v0,1788 <L80B5CED4+0x64>
    1340:	02202025 	move	a0,s1
    1344:	24052073 	li	a1,8307
    1348:	0c000000 	jal	0 <func_80B5B7B0>
    134c:	00003025 	move	a2,zero
    1350:	92180208 	lbu	t8,520(s0)
    1354:	27190001 	addiu	t9,t8,1
    1358:	1000010b 	b	1788 <L80B5CED4+0x64>
    135c:	a2190208 	sb	t9,520(s0)

00001360 <L80B5CB10>:
    1360:	0c000000 	jal	0 <func_80B5B7B0>
    1364:	262420d8 	addiu	a0,s1,8408
    1368:	24010005 	li	at,5
    136c:	54410107 	bnel	v0,at,178c <L80B5CED4+0x68>
    1370:	86020214 	lh	v0,532(s0)
    1374:	0c000000 	jal	0 <func_80B5B7B0>
    1378:	02202025 	move	a0,s1
    137c:	10400102 	beqz	v0,1788 <L80B5CED4+0x64>
    1380:	02202025 	move	a0,s1
    1384:	0c000000 	jal	0 <func_80B5B7B0>
    1388:	24050003 	li	a1,3
    138c:	3c050000 	lui	a1,0x0
    1390:	24a50000 	addiu	a1,a1,0
    1394:	2604014c 	addiu	a0,s0,332
    1398:	0c000000 	jal	0 <func_80B5B7B0>
    139c:	00003025 	move	a2,zero
    13a0:	3c010001 	lui	at,0x1
    13a4:	00310821 	addu	at,at,s1
    13a8:	24080037 	li	t0,55
    13ac:	a02803dc 	sb	t0,988(at)
    13b0:	24090006 	li	t1,6
    13b4:	a6000214 	sh	zero,532(s0)
    13b8:	100000f3 	b	1788 <L80B5CED4+0x64>
    13bc:	a2090208 	sb	t1,520(s0)

000013c0 <L80B5CB70>:
    13c0:	860a0214 	lh	t2,532(s0)
    13c4:	02202025 	move	a0,s1
    13c8:	24052074 	li	a1,8308
    13cc:	254b0001 	addiu	t3,t2,1
    13d0:	a60b0214 	sh	t3,532(s0)
    13d4:	860c0214 	lh	t4,532(s0)
    13d8:	2981000f 	slti	at,t4,15
    13dc:	542000eb 	bnezl	at,178c <L80B5CED4+0x68>
    13e0:	86020214 	lh	v0,532(s0)
    13e4:	0c000000 	jal	0 <func_80B5B7B0>
    13e8:	00003025 	move	a2,zero
    13ec:	920d0208 	lbu	t5,520(s0)
    13f0:	25ae0001 	addiu	t6,t5,1
    13f4:	100000e4 	b	1788 <L80B5CED4+0x64>
    13f8:	a20e0208 	sb	t6,520(s0)

000013fc <L80B5CBAC>:
    13fc:	0c000000 	jal	0 <func_80B5B7B0>
    1400:	262420d8 	addiu	a0,s1,8408
    1404:	24010005 	li	at,5
    1408:	544100e0 	bnel	v0,at,178c <L80B5CED4+0x68>
    140c:	86020214 	lh	v0,532(s0)
    1410:	0c000000 	jal	0 <func_80B5B7B0>
    1414:	02202025 	move	a0,s1
    1418:	104000db 	beqz	v0,1788 <L80B5CED4+0x64>
    141c:	2604014c 	addiu	a0,s0,332
    1420:	3c050000 	lui	a1,0x0
    1424:	24a50000 	addiu	a1,a1,0
    1428:	0c000000 	jal	0 <func_80B5B7B0>
    142c:	24060006 	li	a2,6
    1430:	240f0001 	li	t7,1
    1434:	a20f020e 	sb	t7,526(s0)
    1438:	02202025 	move	a0,s1
    143c:	24052075 	li	a1,8309
    1440:	0c000000 	jal	0 <func_80B5B7B0>
    1444:	00003025 	move	a2,zero
    1448:	92180208 	lbu	t8,520(s0)
    144c:	27190001 	addiu	t9,t8,1
    1450:	100000cd 	b	1788 <L80B5CED4+0x64>
    1454:	a2190208 	sb	t9,520(s0)

00001458 <L80B5CC08>:
    1458:	02002025 	move	a0,s0
    145c:	0c000000 	jal	0 <func_80B5B7B0>
    1460:	24050019 	li	a1,25
    1464:	10400004 	beqz	v0,1478 <L80B5CC28>
    1468:	00000000 	nop
    146c:	92080208 	lbu	t0,520(s0)
    1470:	25090001 	addiu	t1,t0,1
    1474:	a2090208 	sb	t1,520(s0)

00001478 <L80B5CC28>:
    1478:	0c000000 	jal	0 <func_80B5B7B0>
    147c:	262420d8 	addiu	a0,s1,8408
    1480:	24010005 	li	at,5
    1484:	544100c1 	bnel	v0,at,178c <L80B5CED4+0x68>
    1488:	86020214 	lh	v0,532(s0)
    148c:	0c000000 	jal	0 <func_80B5B7B0>
    1490:	02202025 	move	a0,s1
    1494:	104000bc 	beqz	v0,1788 <L80B5CED4+0x64>
    1498:	02202025 	move	a0,s1
    149c:	24057033 	li	a1,28723
    14a0:	0c000000 	jal	0 <func_80B5B7B0>
    14a4:	00003025 	move	a2,zero
    14a8:	240a000a 	li	t2,10
    14ac:	100000b6 	b	1788 <L80B5CED4+0x64>
    14b0:	a20a0208 	sb	t2,520(s0)

000014b4 <L80B5CC64>:
    14b4:	0c000000 	jal	0 <func_80B5B7B0>
    14b8:	262420d8 	addiu	a0,s1,8408
    14bc:	24010004 	li	at,4
    14c0:	544100b2 	bnel	v0,at,178c <L80B5CED4+0x68>
    14c4:	86020214 	lh	v0,532(s0)
    14c8:	0c000000 	jal	0 <func_80B5B7B0>
    14cc:	02202025 	move	a0,s1
    14d0:	104000ad 	beqz	v0,1788 <L80B5CED4+0x64>
    14d4:	3c0b0001 	lui	t3,0x1
    14d8:	01715821 	addu	t3,t3,s1
    14dc:	916b04bd 	lbu	t3,1213(t3)
    14e0:	24050004 	li	a1,4
    14e4:	02202025 	move	a0,s1
    14e8:	15600011 	bnez	t3,1530 <L80B5CC64+0x7c>
    14ec:	00000000 	nop
    14f0:	0c000000 	jal	0 <func_80B5B7B0>
    14f4:	02202025 	move	a0,s1
    14f8:	3c050000 	lui	a1,0x0
    14fc:	24a50000 	addiu	a1,a1,0
    1500:	2604014c 	addiu	a0,s0,332
    1504:	0c000000 	jal	0 <func_80B5B7B0>
    1508:	24060021 	li	a2,33
    150c:	3c010001 	lui	at,0x1
    1510:	a200020e 	sb	zero,526(s0)
    1514:	00310821 	addu	at,at,s1
    1518:	240c0037 	li	t4,55
    151c:	a02c03dc 	sb	t4,988(at)
    1520:	240d000f 	li	t5,15
    1524:	a6000214 	sh	zero,532(s0)
    1528:	10000097 	b	1788 <L80B5CED4+0x64>
    152c:	a20d0208 	sb	t5,520(s0)
    1530:	0c000000 	jal	0 <func_80B5B7B0>
    1534:	24050006 	li	a1,6
    1538:	3c010001 	lui	at,0x1
    153c:	00310821 	addu	at,at,s1
    1540:	240e0037 	li	t6,55
    1544:	a02e03dc 	sb	t6,988(at)
    1548:	92180208 	lbu	t8,520(s0)
    154c:	44802000 	mtc1	zero,$f4
    1550:	240f0014 	li	t7,20
    1554:	27190001 	addiu	t9,t8,1
    1558:	a60f0212 	sh	t7,530(s0)
    155c:	a2190208 	sb	t9,520(s0)
    1560:	10000089 	b	1788 <L80B5CED4+0x64>
    1564:	e6040168 	swc1	$f4,360(s0)

00001568 <L80B5CD18>:
    1568:	86020212 	lh	v0,530(s0)
    156c:	2604014c 	addiu	a0,s0,332
    1570:	3c050000 	lui	a1,0x0
    1574:	14400003 	bnez	v0,1584 <L80B5CD18+0x1c>
    1578:	2448ffff 	addiu	t0,v0,-1
    157c:	10000003 	b	158c <L80B5CD18+0x24>
    1580:	00001825 	move	v1,zero
    1584:	a6080212 	sh	t0,530(s0)
    1588:	86030212 	lh	v1,530(s0)
    158c:	1460007e 	bnez	v1,1788 <L80B5CED4+0x64>
    1590:	24a50000 	addiu	a1,a1,0
    1594:	0c000000 	jal	0 <func_80B5B7B0>
    1598:	2406000b 	li	a2,11
    159c:	2409000b 	li	t1,11
    15a0:	240a0003 	li	t2,3
    15a4:	240b0002 	li	t3,2
    15a8:	a6090210 	sh	t1,528(s0)
    15ac:	a20a020d 	sb	t2,525(s0)
    15b0:	a20b020e 	sb	t3,526(s0)
    15b4:	02202025 	move	a0,s1
    15b8:	24057034 	li	a1,28724
    15bc:	0c000000 	jal	0 <func_80B5B7B0>
    15c0:	00003025 	move	a2,zero
    15c4:	920c0208 	lbu	t4,520(s0)
    15c8:	258d0001 	addiu	t5,t4,1
    15cc:	1000006e 	b	1788 <L80B5CED4+0x64>
    15d0:	a20d0208 	sb	t5,520(s0)

000015d4 <L80B5CD84>:
    15d4:	3c0140a0 	lui	at,0x40a0
    15d8:	44813000 	mtc1	at,$f6
    15dc:	c6080164 	lwc1	$f8,356(s0)
    15e0:	02002025 	move	a0,s0
    15e4:	46083032 	c.eq.s	$f6,$f8
    15e8:	00000000 	nop
    15ec:	45020004 	bc1fl	1600 <L80B5CD84+0x2c>
    15f0:	02002025 	move	a0,s0
    15f4:	0c000000 	jal	0 <func_80B5B7B0>
    15f8:	2405686c 	li	a1,26732
    15fc:	02002025 	move	a0,s0
    1600:	0c000000 	jal	0 <func_80B5B7B0>
    1604:	2405000c 	li	a1,12
    1608:	10400004 	beqz	v0,161c <L80B5CDCC>
    160c:	00000000 	nop
    1610:	920e0208 	lbu	t6,520(s0)
    1614:	25cf0001 	addiu	t7,t6,1
    1618:	a20f0208 	sb	t7,520(s0)

0000161c <L80B5CDCC>:
    161c:	0c000000 	jal	0 <func_80B5B7B0>
    1620:	262420d8 	addiu	a0,s1,8408
    1624:	24010005 	li	at,5
    1628:	54410058 	bnel	v0,at,178c <L80B5CED4+0x68>
    162c:	86020214 	lh	v0,532(s0)
    1630:	0c000000 	jal	0 <func_80B5B7B0>
    1634:	02202025 	move	a0,s1
    1638:	10400053 	beqz	v0,1788 <L80B5CED4+0x64>
    163c:	2604014c 	addiu	a0,s0,332
    1640:	3c050000 	lui	a1,0x0
    1644:	24a50000 	addiu	a1,a1,0
    1648:	0c000000 	jal	0 <func_80B5B7B0>
    164c:	24060006 	li	a2,6
    1650:	24180003 	li	t8,3
    1654:	24190001 	li	t9,1
    1658:	3c010001 	lui	at,0x1
    165c:	a6180210 	sh	t8,528(s0)
    1660:	a200020d 	sb	zero,525(s0)
    1664:	a219020e 	sb	t9,526(s0)
    1668:	00310821 	addu	at,at,s1
    166c:	24080037 	li	t0,55
    1670:	a02803dc 	sb	t0,988(at)
    1674:	2409000e 	li	t1,14
    1678:	10000043 	b	1788 <L80B5CED4+0x64>
    167c:	a2090208 	sb	t1,520(s0)

00001680 <L80B5CE30>:
    1680:	02002025 	move	a0,s0
    1684:	0c000000 	jal	0 <func_80B5B7B0>
    1688:	24050019 	li	a1,25
    168c:	1040003e 	beqz	v0,1788 <L80B5CED4+0x64>
    1690:	02202025 	move	a0,s1
    1694:	24057033 	li	a1,28723
    1698:	0c000000 	jal	0 <func_80B5B7B0>
    169c:	00003025 	move	a2,zero
    16a0:	240a000a 	li	t2,10
    16a4:	10000038 	b	1788 <L80B5CED4+0x64>
    16a8:	a20a0208 	sb	t2,520(s0)

000016ac <L80B5CE5C>:
    16ac:	860b0214 	lh	t3,532(s0)
    16b0:	02202025 	move	a0,s1
    16b4:	24057035 	li	a1,28725
    16b8:	256c0001 	addiu	t4,t3,1
    16bc:	a60c0214 	sh	t4,532(s0)
    16c0:	860d0214 	lh	t5,532(s0)
    16c4:	29a1001e 	slti	at,t5,30
    16c8:	54200030 	bnezl	at,178c <L80B5CED4+0x68>
    16cc:	86020214 	lh	v0,532(s0)
    16d0:	0c000000 	jal	0 <func_80B5B7B0>
    16d4:	00003025 	move	a2,zero
    16d8:	920e0208 	lbu	t6,520(s0)
    16dc:	25cf0001 	addiu	t7,t6,1
    16e0:	10000029 	b	1788 <L80B5CED4+0x64>
    16e4:	a20f0208 	sb	t7,520(s0)

000016e8 <L80B5CE98>:
    16e8:	0c000000 	jal	0 <func_80B5B7B0>
    16ec:	262420d8 	addiu	a0,s1,8408
    16f0:	24010005 	li	at,5
    16f4:	5441000c 	bnel	v0,at,1728 <L80B5CED4+0x4>
    16f8:	86090214 	lh	t1,532(s0)
    16fc:	0c000000 	jal	0 <func_80B5B7B0>
    1700:	02202025 	move	a0,s1
    1704:	10400007 	beqz	v0,1724 <L80B5CED4>
    1708:	24180037 	li	t8,55
    170c:	3c010001 	lui	at,0x1
    1710:	00310821 	addu	at,at,s1
    1714:	a03803dc 	sb	t8,988(at)
    1718:	92190208 	lbu	t9,520(s0)
    171c:	27280001 	addiu	t0,t9,1
    1720:	a2080208 	sb	t0,520(s0)

00001724 <L80B5CED4>:
    1724:	86090214 	lh	t1,532(s0)
    1728:	24010082 	li	at,130
    172c:	240c0037 	li	t4,55
    1730:	252a0001 	addiu	t2,t1,1
    1734:	a60a0214 	sh	t2,532(s0)
    1738:	860b0214 	lh	t3,532(s0)
    173c:	240d00a0 	li	t5,160
    1740:	340efff7 	li	t6,0xfff7
    1744:	15610010 	bne	t3,at,1788 <L80B5CED4+0x64>
    1748:	240f0014 	li	t7,20
    174c:	3c010001 	lui	at,0x1
    1750:	00310821 	addu	at,at,s1
    1754:	a02c03dc 	sb	t4,988(at)
    1758:	3c010001 	lui	at,0x1
    175c:	00310821 	addu	at,at,s1
    1760:	a42d1e1a 	sh	t5,7706(at)
    1764:	3c010000 	lui	at,0x0
    1768:	a42e1412 	sh	t6,5138(at)
    176c:	3c010001 	lui	at,0x1
    1770:	00310821 	addu	at,at,s1
    1774:	a02f1e15 	sb	t7,7701(at)
    1778:	3c010001 	lui	at,0x1
    177c:	00310821 	addu	at,at,s1
    1780:	24180003 	li	t8,3
    1784:	a0381e5e 	sb	t8,7774(at)
    1788:	86020214 	lh	v0,532(s0)
    178c:	24010011 	li	at,17
    1790:	8fbf001c 	lw	ra,28(sp)
    1794:	14410005 	bne	v0,at,17ac <L80B5CED4+0x88>
    1798:	28410083 	slti	at,v0,131
    179c:	54200004 	bnezl	at,17b0 <L80B5CED4+0x8c>
    17a0:	00001025 	move	v0,zero
    17a4:	10000002 	b	17b0 <L80B5CED4+0x8c>
    17a8:	24020001 	li	v0,1
    17ac:	00001025 	move	v0,zero
    17b0:	8fb00014 	lw	s0,20(sp)
    17b4:	8fb10018 	lw	s1,24(sp)
    17b8:	03e00008 	jr	ra
    17bc:	27bd0020 	addiu	sp,sp,32

000017c0 <func_80B5CF70>:
    17c0:	27bdffe0 	addiu	sp,sp,-32
    17c4:	afbf001c 	sw	ra,28(sp)
    17c8:	afb10018 	sw	s1,24(sp)
    17cc:	afb00014 	sw	s0,20(sp)
    17d0:	84ae07a0 	lh	t6,1952(a1)
    17d4:	90820208 	lbu	v0,520(a0)
    17d8:	00a08025 	move	s0,a1
    17dc:	000e7880 	sll	t7,t6,0x2
    17e0:	00afc021 	addu	t8,a1,t7
    17e4:	2c41000d 	sltiu	at,v0,13
    17e8:	00808825 	move	s1,a0
    17ec:	10200100 	beqz	at,1bf0 <L80B5D364+0x3c>
    17f0:	8f030790 	lw	v1,1936(t8)
    17f4:	0002c880 	sll	t9,v0,0x2
    17f8:	3c010000 	lui	at,0x0
    17fc:	00390821 	addu	at,at,t9
    1800:	8c390000 	lw	t9,0(at)
    1804:	03200008 	jr	t9
    1808:	00000000 	nop

0000180c <L80B5CFBC>:
    180c:	86280214 	lh	t0,532(s1)
    1810:	02002025 	move	a0,s0
    1814:	24057037 	li	a1,28727
    1818:	25090001 	addiu	t1,t0,1
    181c:	a6290214 	sh	t1,532(s1)
    1820:	862a0214 	lh	t2,532(s1)
    1824:	2941003c 	slti	at,t2,60
    1828:	14200006 	bnez	at,1844 <L80B5CFBC+0x38>
    182c:	00000000 	nop
    1830:	0c000000 	jal	0 <func_80B5B7B0>
    1834:	00003025 	move	a2,zero
    1838:	922b0208 	lbu	t3,520(s1)
    183c:	256c0001 	addiu	t4,t3,1
    1840:	a22c0208 	sb	t4,520(s1)
    1844:	100000ea 	b	1bf0 <L80B5D364+0x3c>
    1848:	92220208 	lbu	v0,520(s1)

0000184c <L80B5CFFC>:
    184c:	0c000000 	jal	0 <func_80B5B7B0>
    1850:	260420d8 	addiu	a0,s0,8408
    1854:	24010005 	li	at,5
    1858:	1441000e 	bne	v0,at,1894 <L80B5CFFC+0x48>
    185c:	00000000 	nop
    1860:	0c000000 	jal	0 <func_80B5B7B0>
    1864:	02002025 	move	a0,s0
    1868:	1040000a 	beqz	v0,1894 <L80B5CFFC+0x48>
    186c:	02002025 	move	a0,s0
    1870:	0c000000 	jal	0 <func_80B5B7B0>
    1874:	24050007 	li	a1,7
    1878:	02002025 	move	a0,s0
    187c:	24052076 	li	a1,8310
    1880:	0c000000 	jal	0 <func_80B5B7B0>
    1884:	00003025 	move	a2,zero
    1888:	922d0208 	lbu	t5,520(s1)
    188c:	25ae0001 	addiu	t6,t5,1
    1890:	a22e0208 	sb	t6,520(s1)
    1894:	100000d6 	b	1bf0 <L80B5D364+0x3c>
    1898:	92220208 	lbu	v0,520(s1)

0000189c <L80B5D04C>:
    189c:	0c000000 	jal	0 <func_80B5B7B0>
    18a0:	260420d8 	addiu	a0,s0,8408
    18a4:	24010005 	li	at,5
    18a8:	1441000e 	bne	v0,at,18e4 <L80B5D04C+0x48>
    18ac:	00000000 	nop
    18b0:	0c000000 	jal	0 <func_80B5B7B0>
    18b4:	02002025 	move	a0,s0
    18b8:	1040000a 	beqz	v0,18e4 <L80B5D04C+0x48>
    18bc:	02002025 	move	a0,s0
    18c0:	0c000000 	jal	0 <func_80B5B7B0>
    18c4:	24050006 	li	a1,6
    18c8:	3c010001 	lui	at,0x1
    18cc:	00300821 	addu	at,at,s0
    18d0:	240f0037 	li	t7,55
    18d4:	a02f03dc 	sb	t7,988(at)
    18d8:	92380208 	lbu	t8,520(s1)
    18dc:	27190001 	addiu	t9,t8,1
    18e0:	a2390208 	sb	t9,520(s1)
    18e4:	100000c2 	b	1bf0 <L80B5D364+0x3c>
    18e8:	92220208 	lbu	v0,520(s1)

000018ec <L80B5D09C>:
    18ec:	8468015e 	lh	t0,350(v1)
    18f0:	24010002 	li	at,2
    18f4:	02002025 	move	a0,s0
    18f8:	150100bd 	bne	t0,at,1bf0 <L80B5D364+0x3c>
    18fc:	24052077 	li	a1,8311
    1900:	0c000000 	jal	0 <func_80B5B7B0>
    1904:	00003025 	move	a2,zero
    1908:	92290208 	lbu	t1,520(s1)
    190c:	252a0001 	addiu	t2,t1,1
    1910:	a22a0208 	sb	t2,520(s1)
    1914:	100000b6 	b	1bf0 <L80B5D364+0x3c>
    1918:	314200ff 	andi	v0,t2,0xff

0000191c <L80B5D0CC>:
    191c:	0c000000 	jal	0 <func_80B5B7B0>
    1920:	260420d8 	addiu	a0,s0,8408
    1924:	24010004 	li	at,4
    1928:	14410005 	bne	v0,at,1940 <L80B5D0CC+0x24>
    192c:	00000000 	nop
    1930:	0c000000 	jal	0 <func_80B5B7B0>
    1934:	02002025 	move	a0,s0
    1938:	14400003 	bnez	v0,1948 <L80B5D0CC+0x2c>
    193c:	3c0b0001 	lui	t3,0x1
    1940:	100000ab 	b	1bf0 <L80B5D364+0x3c>
    1944:	92220208 	lbu	v0,520(s1)
    1948:	01705821 	addu	t3,t3,s0
    194c:	916b04bd 	lbu	t3,1213(t3)
    1950:	3c050000 	lui	a1,0x0
    1954:	24a50000 	addiu	a1,a1,0
    1958:	1560000b 	bnez	t3,1988 <L80B5D0CC+0x6c>
    195c:	2624014c 	addiu	a0,s1,332
    1960:	02002025 	move	a0,s0
    1964:	0c000000 	jal	0 <func_80B5B7B0>
    1968:	24050008 	li	a1,8
    196c:	02002025 	move	a0,s0
    1970:	24057005 	li	a1,28677
    1974:	0c000000 	jal	0 <func_80B5B7B0>
    1978:	00003025 	move	a2,zero
    197c:	240c0009 	li	t4,9
    1980:	1000000f 	b	19c0 <L80B5D0CC+0xa4>
    1984:	a22c0208 	sb	t4,520(s1)
    1988:	0c000000 	jal	0 <func_80B5B7B0>
    198c:	24060005 	li	a2,5
    1990:	240d0003 	li	t5,3
    1994:	a22d020e 	sb	t5,526(s1)
    1998:	02002025 	move	a0,s0
    199c:	24057038 	li	a1,28728
    19a0:	0c000000 	jal	0 <func_80B5B7B0>
    19a4:	00003025 	move	a2,zero
    19a8:	922e0208 	lbu	t6,520(s1)
    19ac:	02202025 	move	a0,s1
    19b0:	24056869 	li	a1,26729
    19b4:	25cf0001 	addiu	t7,t6,1
    19b8:	0c000000 	jal	0 <func_80B5B7B0>
    19bc:	a22f0208 	sb	t7,520(s1)
    19c0:	1000008b 	b	1bf0 <L80B5D364+0x3c>
    19c4:	92220208 	lbu	v0,520(s1)

000019c8 <L80B5D178>:
    19c8:	02202025 	move	a0,s1
    19cc:	0c000000 	jal	0 <func_80B5B7B0>
    19d0:	24050004 	li	a1,4
    19d4:	10400004 	beqz	v0,19e8 <L80B5D198>
    19d8:	00000000 	nop
    19dc:	92380208 	lbu	t8,520(s1)
    19e0:	27190001 	addiu	t9,t8,1
    19e4:	a2390208 	sb	t9,520(s1)

000019e8 <L80B5D198>:
    19e8:	0c000000 	jal	0 <func_80B5B7B0>
    19ec:	260420d8 	addiu	a0,s0,8408
    19f0:	24010005 	li	at,5
    19f4:	14410011 	bne	v0,at,1a3c <L80B5D198+0x54>
    19f8:	00000000 	nop
    19fc:	0c000000 	jal	0 <func_80B5B7B0>
    1a00:	02002025 	move	a0,s0
    1a04:	1040000d 	beqz	v0,1a3c <L80B5D198+0x54>
    1a08:	2624014c 	addiu	a0,s1,332
    1a0c:	3c050000 	lui	a1,0x0
    1a10:	24a50000 	addiu	a1,a1,0
    1a14:	0c000000 	jal	0 <func_80B5B7B0>
    1a18:	24060021 	li	a2,33
    1a1c:	a220020e 	sb	zero,526(s1)
    1a20:	02002025 	move	a0,s0
    1a24:	24057037 	li	a1,28727
    1a28:	0c000000 	jal	0 <func_80B5B7B0>
    1a2c:	00003025 	move	a2,zero
    1a30:	92280208 	lbu	t0,520(s1)
    1a34:	25090001 	addiu	t1,t0,1
    1a38:	a2290208 	sb	t1,520(s1)
    1a3c:	1000006c 	b	1bf0 <L80B5D364+0x3c>
    1a40:	92220208 	lbu	v0,520(s1)

00001a44 <L80B5D1F4>:
    1a44:	0c000000 	jal	0 <func_80B5B7B0>
    1a48:	260420d8 	addiu	a0,s0,8408
    1a4c:	24010005 	li	at,5
    1a50:	1441000b 	bne	v0,at,1a80 <L80B5D1F4+0x3c>
    1a54:	00000000 	nop
    1a58:	0c000000 	jal	0 <func_80B5B7B0>
    1a5c:	02002025 	move	a0,s0
    1a60:	10400007 	beqz	v0,1a80 <L80B5D1F4+0x3c>
    1a64:	02002025 	move	a0,s0
    1a68:	24052076 	li	a1,8310
    1a6c:	0c000000 	jal	0 <func_80B5B7B0>
    1a70:	00003025 	move	a2,zero
    1a74:	922a0208 	lbu	t2,520(s1)
    1a78:	254b0001 	addiu	t3,t2,1
    1a7c:	a22b0208 	sb	t3,520(s1)
    1a80:	1000005b 	b	1bf0 <L80B5D364+0x3c>
    1a84:	92220208 	lbu	v0,520(s1)

00001a88 <L80B5D238>:
    1a88:	0c000000 	jal	0 <func_80B5B7B0>
    1a8c:	260420d8 	addiu	a0,s0,8408
    1a90:	24010005 	li	at,5
    1a94:	1441000a 	bne	v0,at,1ac0 <L80B5D238+0x38>
    1a98:	00000000 	nop
    1a9c:	0c000000 	jal	0 <func_80B5B7B0>
    1aa0:	02002025 	move	a0,s0
    1aa4:	10400006 	beqz	v0,1ac0 <L80B5D238+0x38>
    1aa8:	02002025 	move	a0,s0
    1aac:	24052077 	li	a1,8311
    1ab0:	0c000000 	jal	0 <func_80B5B7B0>
    1ab4:	00003025 	move	a2,zero
    1ab8:	240c0004 	li	t4,4
    1abc:	a22c0208 	sb	t4,520(s1)
    1ac0:	1000004b 	b	1bf0 <L80B5D364+0x3c>
    1ac4:	92220208 	lbu	v0,520(s1)

00001ac8 <L80B5D278>:
    1ac8:	0c000000 	jal	0 <func_80B5B7B0>
    1acc:	260420d8 	addiu	a0,s0,8408
    1ad0:	24010005 	li	at,5
    1ad4:	14410010 	bne	v0,at,1b18 <L80B5D278+0x50>
    1ad8:	00000000 	nop
    1adc:	0c000000 	jal	0 <func_80B5B7B0>
    1ae0:	02002025 	move	a0,s0
    1ae4:	1040000c 	beqz	v0,1b18 <L80B5D278+0x50>
    1ae8:	2624014c 	addiu	a0,s1,332
    1aec:	3c050000 	lui	a1,0x0
    1af0:	24a50000 	addiu	a1,a1,0
    1af4:	0c000000 	jal	0 <func_80B5B7B0>
    1af8:	2406001a 	li	a2,26
    1afc:	02002025 	move	a0,s0
    1b00:	24052078 	li	a1,8312
    1b04:	0c000000 	jal	0 <func_80B5B7B0>
    1b08:	00003025 	move	a2,zero
    1b0c:	922d0208 	lbu	t5,520(s1)
    1b10:	25ae0001 	addiu	t6,t5,1
    1b14:	a22e0208 	sb	t6,520(s1)
    1b18:	10000035 	b	1bf0 <L80B5D364+0x3c>
    1b1c:	92220208 	lbu	v0,520(s1)

00001b20 <L80B5D2D0>:
    1b20:	02202025 	move	a0,s1
    1b24:	0c000000 	jal	0 <func_80B5B7B0>
    1b28:	2405001b 	li	a1,27
    1b2c:	10400004 	beqz	v0,1b40 <L80B5D2F0>
    1b30:	00000000 	nop
    1b34:	922f0208 	lbu	t7,520(s1)
    1b38:	25f80001 	addiu	t8,t7,1
    1b3c:	a2380208 	sb	t8,520(s1)

00001b40 <L80B5D2F0>:
    1b40:	0c000000 	jal	0 <func_80B5B7B0>
    1b44:	260420d8 	addiu	a0,s0,8408
    1b48:	24010004 	li	at,4
    1b4c:	14410005 	bne	v0,at,1b64 <L80B5D2F0+0x24>
    1b50:	00000000 	nop
    1b54:	0c000000 	jal	0 <func_80B5B7B0>
    1b58:	02002025 	move	a0,s0
    1b5c:	14400003 	bnez	v0,1b6c <L80B5D2F0+0x2c>
    1b60:	3c190001 	lui	t9,0x1
    1b64:	10000022 	b	1bf0 <L80B5D364+0x3c>
    1b68:	92220208 	lbu	v0,520(s1)
    1b6c:	0330c821 	addu	t9,t9,s0
    1b70:	933904bd 	lbu	t9,1213(t9)
    1b74:	24080037 	li	t0,55
    1b78:	02002025 	move	a0,s0
    1b7c:	17200007 	bnez	t9,1b9c <L80B5D2F0+0x5c>
    1b80:	2405700b 	li	a1,28683
    1b84:	3c010001 	lui	at,0x1
    1b88:	00300821 	addu	at,at,s0
    1b8c:	a02803dc 	sb	t0,988(at)
    1b90:	2409000d 	li	t1,13
    1b94:	10000005 	b	1bac <L80B5D2F0+0x6c>
    1b98:	a2290208 	sb	t1,520(s1)
    1b9c:	0c000000 	jal	0 <func_80B5B7B0>
    1ba0:	00003025 	move	a2,zero
    1ba4:	240a000c 	li	t2,12
    1ba8:	a22a0208 	sb	t2,520(s1)
    1bac:	10000010 	b	1bf0 <L80B5D364+0x3c>
    1bb0:	92220208 	lbu	v0,520(s1)

00001bb4 <L80B5D364>:
    1bb4:	0c000000 	jal	0 <func_80B5B7B0>
    1bb8:	260420d8 	addiu	a0,s0,8408
    1bbc:	24010005 	li	at,5
    1bc0:	5441000b 	bnel	v0,at,1bf0 <L80B5D364+0x3c>
    1bc4:	92220208 	lbu	v0,520(s1)
    1bc8:	0c000000 	jal	0 <func_80B5B7B0>
    1bcc:	02002025 	move	a0,s0
    1bd0:	10400006 	beqz	v0,1bec <L80B5D364+0x38>
    1bd4:	240b0037 	li	t3,55
    1bd8:	3c010001 	lui	at,0x1
    1bdc:	00300821 	addu	at,at,s0
    1be0:	a02b03dc 	sb	t3,988(at)
    1be4:	240c000d 	li	t4,13
    1be8:	a22c0208 	sb	t4,520(s1)
    1bec:	92220208 	lbu	v0,520(s1)
    1bf0:	2401000d 	li	at,13
    1bf4:	14410003 	bne	v0,at,1c04 <L80B5D364+0x50>
    1bf8:	8fb00014 	lw	s0,20(sp)
    1bfc:	10000002 	b	1c08 <L80B5D364+0x54>
    1c00:	24030001 	li	v1,1
    1c04:	00001825 	move	v1,zero
    1c08:	8fbf001c 	lw	ra,28(sp)
    1c0c:	8fb10018 	lw	s1,24(sp)
    1c10:	27bd0020 	addiu	sp,sp,32
    1c14:	03e00008 	jr	ra
    1c18:	00601025 	move	v0,v1

00001c1c <func_80B5D3CC>:
    1c1c:	27bdffe0 	addiu	sp,sp,-32
    1c20:	afbf001c 	sw	ra,28(sp)
    1c24:	afb10018 	sw	s1,24(sp)
    1c28:	afb00014 	sw	s0,20(sp)
    1c2c:	90860208 	lbu	a2,520(a0)
    1c30:	00a08025 	move	s0,a1
    1c34:	00808825 	move	s1,a0
    1c38:	10c0000a 	beqz	a2,1c64 <func_80B5D3CC+0x48>
    1c3c:	00c01825 	move	v1,a2
    1c40:	24010001 	li	at,1
    1c44:	10c10021 	beq	a2,at,1ccc <func_80B5D3CC+0xb0>
    1c48:	24010002 	li	at,2
    1c4c:	10610044 	beq	v1,at,1d60 <func_80B5D3CC+0x144>
    1c50:	24010003 	li	at,3
    1c54:	10610067 	beq	v1,at,1df4 <func_80B5D3CC+0x1d8>
    1c58:	00000000 	nop
    1c5c:	10000076 	b	1e38 <func_80B5D3CC+0x21c>
    1c60:	24010004 	li	at,4
    1c64:	02002025 	move	a0,s0
    1c68:	0c000000 	jal	0 <func_80B5B7B0>
    1c6c:	24050007 	li	a1,7
    1c70:	3c020200 	lui	v0,0x200
    1c74:	24420444 	addiu	v0,v0,1092
    1c78:	00027100 	sll	t6,v0,0x4
    1c7c:	000e7f02 	srl	t7,t6,0x1c
    1c80:	000fc080 	sll	t8,t7,0x2
    1c84:	3c190000 	lui	t9,0x0
    1c88:	0338c821 	addu	t9,t9,t8
    1c8c:	3c0100ff 	lui	at,0xff
    1c90:	8f390000 	lw	t9,0(t9)
    1c94:	3421ffff 	ori	at,at,0xffff
    1c98:	00414024 	and	t0,v0,at
    1c9c:	3c018000 	lui	at,0x8000
    1ca0:	03284821 	addu	t1,t9,t0
    1ca4:	01215021 	addu	t2,t1,at
    1ca8:	ae0a1d68 	sw	t2,7528(s0)
    1cac:	3c010000 	lui	at,0x0
    1cb0:	240b0001 	li	t3,1
    1cb4:	a02b1414 	sb	t3,5140(at)
    1cb8:	922c0208 	lbu	t4,520(s1)
    1cbc:	258d0001 	addiu	t5,t4,1
    1cc0:	a22d0208 	sb	t5,520(s1)
    1cc4:	1000005b 	b	1e34 <func_80B5D3CC+0x218>
    1cc8:	31a600ff 	andi	a2,t5,0xff
    1ccc:	920e1d6c 	lbu	t6,7532(s0)
    1cd0:	3c020200 	lui	v0,0x200
    1cd4:	24420104 	addiu	v0,v0,260
    1cd8:	11c00009 	beqz	t6,1d00 <func_80B5D3CC+0xe4>
    1cdc:	0002c900 	sll	t9,v0,0x4
    1ce0:	960f1d74 	lhu	t7,7540(s0)
    1ce4:	2401005a 	li	at,90
    1ce8:	24180003 	li	t8,3
    1cec:	55e10052 	bnel	t7,at,1e38 <func_80B5D3CC+0x21c>
    1cf0:	24010004 	li	at,4
    1cf4:	a2181d6c 	sb	t8,7532(s0)
    1cf8:	1000004e 	b	1e34 <func_80B5D3CC+0x218>
    1cfc:	92260208 	lbu	a2,520(s1)
    1d00:	00194702 	srl	t0,t9,0x1c
    1d04:	00084880 	sll	t1,t0,0x2
    1d08:	3c0a0000 	lui	t2,0x0
    1d0c:	01495021 	addu	t2,t2,t1
    1d10:	3c0100ff 	lui	at,0xff
    1d14:	8d4a0000 	lw	t2,0(t2)
    1d18:	3421ffff 	ori	at,at,0xffff
    1d1c:	00415824 	and	t3,v0,at
    1d20:	3c018000 	lui	at,0x8000
    1d24:	014b6021 	addu	t4,t2,t3
    1d28:	01816821 	addu	t5,t4,at
    1d2c:	ae0d1d68 	sw	t5,7528(s0)
    1d30:	3c010000 	lui	at,0x0
    1d34:	240e0001 	li	t6,1
    1d38:	a02e1414 	sb	t6,5140(at)
    1d3c:	922f0208 	lbu	t7,520(s1)
    1d40:	02002025 	move	a0,s0
    1d44:	02202825 	move	a1,s1
    1d48:	25f80001 	addiu	t8,t7,1
    1d4c:	a2380208 	sb	t8,520(s1)
    1d50:	0c000000 	jal	0 <func_80B5B7B0>
    1d54:	24060008 	li	a2,8
    1d58:	10000036 	b	1e34 <func_80B5D3CC+0x218>
    1d5c:	92260208 	lbu	a2,520(s1)
    1d60:	92191d6c 	lbu	t9,7532(s0)
    1d64:	240500a0 	li	a1,160
    1d68:	24070028 	li	a3,40
    1d6c:	5320000a 	beqzl	t9,1d98 <func_80B5D3CC+0x17c>
    1d70:	44806000 	mtc1	zero,$f12
    1d74:	96081d74 	lhu	t0,7540(s0)
    1d78:	240100d1 	li	at,209
    1d7c:	24090003 	li	t1,3
    1d80:	5501002d 	bnel	t0,at,1e38 <func_80B5D3CC+0x21c>
    1d84:	24010004 	li	at,4
    1d88:	a2091d6c 	sb	t1,7532(s0)
    1d8c:	10000029 	b	1e34 <func_80B5D3CC+0x218>
    1d90:	92260208 	lbu	a2,520(s1)
    1d94:	44806000 	mtc1	zero,$f12
    1d98:	0c000000 	jal	0 <func_80B5B7B0>
    1d9c:	2406000a 	li	a2,10
    1da0:	02002025 	move	a0,s0
    1da4:	02202825 	move	a1,s1
    1da8:	0c000000 	jal	0 <func_80B5B7B0>
    1dac:	24060001 	li	a2,1
    1db0:	3c050000 	lui	a1,0x0
    1db4:	24a50000 	addiu	a1,a1,0
    1db8:	2624014c 	addiu	a0,s1,332
    1dbc:	0c000000 	jal	0 <func_80B5B7B0>
    1dc0:	2406001e 	li	a2,30
    1dc4:	02002025 	move	a0,s0
    1dc8:	0c000000 	jal	0 <func_80B5B7B0>
    1dcc:	2405000b 	li	a1,11
    1dd0:	02002025 	move	a0,s0
    1dd4:	24057039 	li	a1,28729
    1dd8:	0c000000 	jal	0 <func_80B5B7B0>
    1ddc:	00003025 	move	a2,zero
    1de0:	922a0208 	lbu	t2,520(s1)
    1de4:	254b0001 	addiu	t3,t2,1
    1de8:	a22b0208 	sb	t3,520(s1)
    1dec:	10000011 	b	1e34 <func_80B5D3CC+0x218>
    1df0:	316600ff 	andi	a2,t3,0xff
    1df4:	0c000000 	jal	0 <func_80B5B7B0>
    1df8:	260420d8 	addiu	a0,s0,8408
    1dfc:	24010005 	li	at,5
    1e00:	5441000c 	bnel	v0,at,1e34 <func_80B5D3CC+0x218>
    1e04:	92260208 	lbu	a2,520(s1)
    1e08:	0c000000 	jal	0 <func_80B5B7B0>
    1e0c:	02002025 	move	a0,s0
    1e10:	10400007 	beqz	v0,1e30 <func_80B5D3CC+0x214>
    1e14:	240c0037 	li	t4,55
    1e18:	3c010001 	lui	at,0x1
    1e1c:	00300821 	addu	at,at,s0
    1e20:	a02c03dc 	sb	t4,988(at)
    1e24:	922d0208 	lbu	t5,520(s1)
    1e28:	25ae0001 	addiu	t6,t5,1
    1e2c:	a22e0208 	sb	t6,520(s1)
    1e30:	92260208 	lbu	a2,520(s1)
    1e34:	24010004 	li	at,4
    1e38:	14c10003 	bne	a2,at,1e48 <func_80B5D3CC+0x22c>
    1e3c:	8fb00014 	lw	s0,20(sp)
    1e40:	10000002 	b	1e4c <func_80B5D3CC+0x230>
    1e44:	24030001 	li	v1,1
    1e48:	00001825 	move	v1,zero
    1e4c:	8fbf001c 	lw	ra,28(sp)
    1e50:	8fb10018 	lw	s1,24(sp)
    1e54:	27bd0020 	addiu	sp,sp,32
    1e58:	03e00008 	jr	ra
    1e5c:	00601025 	move	v0,v1

00001e60 <func_80B5D610>:
    1e60:	27bdffd8 	addiu	sp,sp,-40
    1e64:	afbf001c 	sw	ra,28(sp)
    1e68:	afb10018 	sw	s1,24(sp)
    1e6c:	afb00014 	sw	s0,20(sp)
    1e70:	90830208 	lbu	v1,520(a0)
    1e74:	00808025 	move	s0,a0
    1e78:	00a08825 	move	s1,a1
    1e7c:	2c61000d 	sltiu	at,v1,13
    1e80:	1020011e 	beqz	at,22fc <L80B5DA70+0x3c>
    1e84:	8ca21c44 	lw	v0,7236(a1)
    1e88:	00037080 	sll	t6,v1,0x2
    1e8c:	3c010000 	lui	at,0x0
    1e90:	002e0821 	addu	at,at,t6
    1e94:	8c2e0000 	lw	t6,0(at)
    1e98:	01c00008 	jr	t6
    1e9c:	00000000 	nop

00001ea0 <L80B5D650>:
    1ea0:	8e180024 	lw	t8,36(s0)
    1ea4:	ac580024 	sw	t8,36(v0)
    1ea8:	8e0f0028 	lw	t7,40(s0)
    1eac:	ac4f0028 	sw	t7,40(v0)
    1eb0:	8e18002c 	lw	t8,44(s0)
    1eb4:	ac58002c 	sw	t8,44(v0)
    1eb8:	860400b6 	lh	a0,182(s0)
    1ebc:	afa20024 	sw	v0,36(sp)
    1ec0:	2484c004 	addiu	a0,a0,-16380
    1ec4:	00042400 	sll	a0,a0,0x10
    1ec8:	00042403 	sra	a0,a0,0x10
    1ecc:	0c000000 	jal	0 <func_80B5B7B0>
    1ed0:	a7a40022 	sh	a0,34(sp)
    1ed4:	3c014208 	lui	at,0x4208
    1ed8:	44813000 	mtc1	at,$f6
    1edc:	8fa20024 	lw	v0,36(sp)
    1ee0:	87a40022 	lh	a0,34(sp)
    1ee4:	46003202 	mul.s	$f8,$f6,$f0
    1ee8:	c4440024 	lwc1	$f4,36(v0)
    1eec:	46082280 	add.s	$f10,$f4,$f8
    1ef0:	0c000000 	jal	0 <func_80B5B7B0>
    1ef4:	e44a0024 	swc1	$f10,36(v0)
    1ef8:	3c014208 	lui	at,0x4208
    1efc:	44819000 	mtc1	at,$f18
    1f00:	8fa20024 	lw	v0,36(sp)
    1f04:	02202025 	move	a0,s1
    1f08:	46009182 	mul.s	$f6,$f18,$f0
    1f0c:	c450002c 	lwc1	$f16,44(v0)
    1f10:	24050008 	li	a1,8
    1f14:	46068100 	add.s	$f4,$f16,$f6
    1f18:	0c000000 	jal	0 <func_80B5B7B0>
    1f1c:	e444002c 	swc1	$f4,44(v0)
    1f20:	92080208 	lbu	t0,520(s0)
    1f24:	24020002 	li	v0,2
    1f28:	24190004 	li	t9,4
    1f2c:	25090001 	addiu	t1,t0,1
    1f30:	a6000210 	sh	zero,528(s0)
    1f34:	a219020d 	sb	t9,525(s0)
    1f38:	a202020e 	sb	v0,526(s0)
    1f3c:	a6000214 	sh	zero,532(s0)
    1f40:	a2090208 	sb	t1,520(s0)
    1f44:	02202025 	move	a0,s1
    1f48:	24052079 	li	a1,8313
    1f4c:	0c000000 	jal	0 <func_80B5B7B0>
    1f50:	00003025 	move	a2,zero

00001f54 <L80B5D704>:
    1f54:	860a0214 	lh	t2,532(s0)
    1f58:	254b0001 	addiu	t3,t2,1
    1f5c:	a60b0214 	sh	t3,532(s0)
    1f60:	860c0214 	lh	t4,532(s0)
    1f64:	29810014 	slti	at,t4,20
    1f68:	14200004 	bnez	at,1f7c <L80B5D704+0x28>
    1f6c:	00000000 	nop
    1f70:	920d0208 	lbu	t5,520(s0)
    1f74:	25ae0001 	addiu	t6,t5,1
    1f78:	a20e0208 	sb	t6,520(s0)
    1f7c:	100000df 	b	22fc <L80B5DA70+0x3c>
    1f80:	92030208 	lbu	v1,520(s0)

00001f84 <L80B5D734>:
    1f84:	0c000000 	jal	0 <func_80B5B7B0>
    1f88:	262420d8 	addiu	a0,s1,8408
    1f8c:	24010005 	li	at,5
    1f90:	1441000f 	bne	v0,at,1fd0 <L80B5D734+0x4c>
    1f94:	00000000 	nop
    1f98:	0c000000 	jal	0 <func_80B5B7B0>
    1f9c:	02202025 	move	a0,s1
    1fa0:	1040000b 	beqz	v0,1fd0 <L80B5D734+0x4c>
    1fa4:	02202025 	move	a0,s1
    1fa8:	0c000000 	jal	0 <func_80B5B7B0>
    1fac:	24050009 	li	a1,9
    1fb0:	3c010001 	lui	at,0x1
    1fb4:	00310821 	addu	at,at,s1
    1fb8:	240f0037 	li	t7,55
    1fbc:	a02f03dc 	sb	t7,988(at)
    1fc0:	92180208 	lbu	t8,520(s0)
    1fc4:	a6000214 	sh	zero,532(s0)
    1fc8:	27190001 	addiu	t9,t8,1
    1fcc:	a2190208 	sb	t9,520(s0)
    1fd0:	100000ca 	b	22fc <L80B5DA70+0x3c>
    1fd4:	92030208 	lbu	v1,520(s0)

00001fd8 <L80B5D788>:
    1fd8:	86080214 	lh	t0,532(s0)
    1fdc:	02202025 	move	a0,s1
    1fe0:	2405207a 	li	a1,8314
    1fe4:	25090001 	addiu	t1,t0,1
    1fe8:	a6090214 	sh	t1,532(s0)
    1fec:	860a0214 	lh	t2,532(s0)
    1ff0:	29410014 	slti	at,t2,20
    1ff4:	14200006 	bnez	at,2010 <L80B5D788+0x38>
    1ff8:	00000000 	nop
    1ffc:	0c000000 	jal	0 <func_80B5B7B0>
    2000:	00003025 	move	a2,zero
    2004:	920b0208 	lbu	t3,520(s0)
    2008:	256c0001 	addiu	t4,t3,1
    200c:	a20c0208 	sb	t4,520(s0)
    2010:	100000ba 	b	22fc <L80B5DA70+0x3c>
    2014:	92030208 	lbu	v1,520(s0)

00002018 <L80B5D7C8>:
    2018:	0c000000 	jal	0 <func_80B5B7B0>
    201c:	262420d8 	addiu	a0,s1,8408
    2020:	24010005 	li	at,5
    2024:	14410017 	bne	v0,at,2084 <L80B5D7C8+0x6c>
    2028:	00000000 	nop
    202c:	0c000000 	jal	0 <func_80B5B7B0>
    2030:	02202025 	move	a0,s1
    2034:	10400013 	beqz	v0,2084 <L80B5D7C8+0x6c>
    2038:	02202025 	move	a0,s1
    203c:	0c000000 	jal	0 <func_80B5B7B0>
    2040:	2405000c 	li	a1,12
    2044:	3c050000 	lui	a1,0x0
    2048:	24a50000 	addiu	a1,a1,0
    204c:	2604014c 	addiu	a0,s0,332
    2050:	0c000000 	jal	0 <func_80B5B7B0>
    2054:	24060017 	li	a2,23
    2058:	240d0003 	li	t5,3
    205c:	3c010001 	lui	at,0x1
    2060:	a6000210 	sh	zero,528(s0)
    2064:	a200020d 	sb	zero,525(s0)
    2068:	a20d020e 	sb	t5,526(s0)
    206c:	00310821 	addu	at,at,s1
    2070:	240e0037 	li	t6,55
    2074:	a02e03dc 	sb	t6,988(at)
    2078:	920f0208 	lbu	t7,520(s0)
    207c:	25f80001 	addiu	t8,t7,1
    2080:	a2180208 	sb	t8,520(s0)
    2084:	1000009d 	b	22fc <L80B5DA70+0x3c>
    2088:	92030208 	lbu	v1,520(s0)

0000208c <L80B5D83C>:
    208c:	02002025 	move	a0,s0
    2090:	0c000000 	jal	0 <func_80B5B7B0>
    2094:	24050018 	li	a1,24
    2098:	10400007 	beqz	v0,20b8 <L80B5D83C+0x2c>
    209c:	02202025 	move	a0,s1
    20a0:	2405207b 	li	a1,8315
    20a4:	0c000000 	jal	0 <func_80B5B7B0>
    20a8:	00003025 	move	a2,zero
    20ac:	92190208 	lbu	t9,520(s0)
    20b0:	27280001 	addiu	t0,t9,1
    20b4:	a2080208 	sb	t0,520(s0)
    20b8:	10000090 	b	22fc <L80B5DA70+0x3c>
    20bc:	92030208 	lbu	v1,520(s0)

000020c0 <L80B5D870>:
    20c0:	0c000000 	jal	0 <func_80B5B7B0>
    20c4:	262420d8 	addiu	a0,s1,8408
    20c8:	24010005 	li	at,5
    20cc:	1441000b 	bne	v0,at,20fc <L80B5D870+0x3c>
    20d0:	00000000 	nop
    20d4:	0c000000 	jal	0 <func_80B5B7B0>
    20d8:	02202025 	move	a0,s1
    20dc:	10400007 	beqz	v0,20fc <L80B5D870+0x3c>
    20e0:	02202025 	move	a0,s1
    20e4:	2405703a 	li	a1,28730
    20e8:	0c000000 	jal	0 <func_80B5B7B0>
    20ec:	00003025 	move	a2,zero
    20f0:	92090208 	lbu	t1,520(s0)
    20f4:	252a0001 	addiu	t2,t1,1
    20f8:	a20a0208 	sb	t2,520(s0)
    20fc:	1000007f 	b	22fc <L80B5DA70+0x3c>
    2100:	92030208 	lbu	v1,520(s0)

00002104 <L80B5D8B4>:
    2104:	0c000000 	jal	0 <func_80B5B7B0>
    2108:	262420d8 	addiu	a0,s1,8408
    210c:	24010004 	li	at,4
    2110:	14410005 	bne	v0,at,2128 <L80B5D8B4+0x24>
    2114:	00000000 	nop
    2118:	0c000000 	jal	0 <func_80B5B7B0>
    211c:	02202025 	move	a0,s1
    2120:	14400003 	bnez	v0,2130 <L80B5D8B4+0x2c>
    2124:	3c0b0001 	lui	t3,0x1
    2128:	10000074 	b	22fc <L80B5DA70+0x3c>
    212c:	92030208 	lbu	v1,520(s0)
    2130:	01715821 	addu	t3,t3,s1
    2134:	916b04bd 	lbu	t3,1213(t3)
    2138:	3c050000 	lui	a1,0x0
    213c:	24a50000 	addiu	a1,a1,0
    2140:	15600013 	bnez	t3,2190 <L80B5D8B4+0x8c>
    2144:	2604014c 	addiu	a0,s0,332
    2148:	3c050000 	lui	a1,0x0
    214c:	24a50000 	addiu	a1,a1,0
    2150:	2604014c 	addiu	a0,s0,332
    2154:	0c000000 	jal	0 <func_80B5B7B0>
    2158:	2406001f 	li	a2,31
    215c:	240c000b 	li	t4,11
    2160:	240d0005 	li	t5,5
    2164:	240e0001 	li	t6,1
    2168:	a60c0210 	sh	t4,528(s0)
    216c:	a20d020d 	sb	t5,525(s0)
    2170:	a20e020e 	sb	t6,526(s0)
    2174:	02202025 	move	a0,s1
    2178:	2405703b 	li	a1,28731
    217c:	0c000000 	jal	0 <func_80B5B7B0>
    2180:	00003025 	move	a2,zero
    2184:	240f000b 	li	t7,11
    2188:	1000000f 	b	21c8 <L80B5D8B4+0xc4>
    218c:	a20f0208 	sb	t7,520(s0)
    2190:	0c000000 	jal	0 <func_80B5B7B0>
    2194:	2406000d 	li	a2,13
    2198:	24020002 	li	v0,2
    219c:	2418000b 	li	t8,11
    21a0:	3c010001 	lui	at,0x1
    21a4:	a6180210 	sh	t8,528(s0)
    21a8:	a202020d 	sb	v0,525(s0)
    21ac:	a202020e 	sb	v0,526(s0)
    21b0:	00310821 	addu	at,at,s1
    21b4:	24190037 	li	t9,55
    21b8:	a03903dc 	sb	t9,988(at)
    21bc:	92080208 	lbu	t0,520(s0)
    21c0:	25090001 	addiu	t1,t0,1
    21c4:	a2090208 	sb	t1,520(s0)
    21c8:	1000004c 	b	22fc <L80B5DA70+0x3c>
    21cc:	92030208 	lbu	v1,520(s0)

000021d0 <L80B5D980>:
    21d0:	02002025 	move	a0,s0
    21d4:	0c000000 	jal	0 <func_80B5B7B0>
    21d8:	2405000f 	li	a1,15
    21dc:	1040000c 	beqz	v0,2210 <L80B5D980+0x40>
    21e0:	240a0003 	li	t2,3
    21e4:	240b0003 	li	t3,3
    21e8:	a60a0210 	sh	t2,528(s0)
    21ec:	a200020d 	sb	zero,525(s0)
    21f0:	a20b020e 	sb	t3,526(s0)
    21f4:	02202025 	move	a0,s1
    21f8:	24057073 	li	a1,28787
    21fc:	0c000000 	jal	0 <func_80B5B7B0>
    2200:	00003025 	move	a2,zero
    2204:	920c0208 	lbu	t4,520(s0)
    2208:	258d0001 	addiu	t5,t4,1
    220c:	a20d0208 	sb	t5,520(s0)
    2210:	1000003a 	b	22fc <L80B5DA70+0x3c>
    2214:	92030208 	lbu	v1,520(s0)

00002218 <L80B5D9C8>:
    2218:	0c000000 	jal	0 <func_80B5B7B0>
    221c:	262420d8 	addiu	a0,s1,8408
    2220:	24010005 	li	at,5
    2224:	14410010 	bne	v0,at,2268 <L80B5D9C8+0x50>
    2228:	00000000 	nop
    222c:	0c000000 	jal	0 <func_80B5B7B0>
    2230:	02202025 	move	a0,s1
    2234:	1040000c 	beqz	v0,2268 <L80B5D9C8+0x50>
    2238:	2604014c 	addiu	a0,s0,332
    223c:	3c050000 	lui	a1,0x0
    2240:	24a50000 	addiu	a1,a1,0
    2244:	0c000000 	jal	0 <func_80B5B7B0>
    2248:	2406000e 	li	a2,14
    224c:	3c010001 	lui	at,0x1
    2250:	00310821 	addu	at,at,s1
    2254:	240e0037 	li	t6,55
    2258:	a02e03dc 	sb	t6,988(at)
    225c:	920f0208 	lbu	t7,520(s0)
    2260:	25f80001 	addiu	t8,t7,1
    2264:	a2180208 	sb	t8,520(s0)
    2268:	10000024 	b	22fc <L80B5DA70+0x3c>
    226c:	92030208 	lbu	v1,520(s0)

00002270 <L80B5DA20>:
    2270:	02002025 	move	a0,s0
    2274:	0c000000 	jal	0 <func_80B5B7B0>
    2278:	24050018 	li	a1,24
    227c:	10400006 	beqz	v0,2298 <L80B5DA20+0x28>
    2280:	02202025 	move	a0,s1
    2284:	2405703a 	li	a1,28730
    2288:	0c000000 	jal	0 <func_80B5B7B0>
    228c:	00003025 	move	a2,zero
    2290:	24190007 	li	t9,7
    2294:	a2190208 	sb	t9,520(s0)
    2298:	10000018 	b	22fc <L80B5DA70+0x3c>
    229c:	92030208 	lbu	v1,520(s0)

000022a0 <L80B5DA50>:
    22a0:	02002025 	move	a0,s0
    22a4:	0c000000 	jal	0 <func_80B5B7B0>
    22a8:	24050020 	li	a1,32
    22ac:	10400004 	beqz	v0,22c0 <L80B5DA70>
    22b0:	00000000 	nop
    22b4:	92080208 	lbu	t0,520(s0)
    22b8:	25090001 	addiu	t1,t0,1
    22bc:	a2090208 	sb	t1,520(s0)

000022c0 <L80B5DA70>:
    22c0:	0c000000 	jal	0 <func_80B5B7B0>
    22c4:	262420d8 	addiu	a0,s1,8408
    22c8:	24010005 	li	at,5
    22cc:	5441000b 	bnel	v0,at,22fc <L80B5DA70+0x3c>
    22d0:	92030208 	lbu	v1,520(s0)
    22d4:	0c000000 	jal	0 <func_80B5B7B0>
    22d8:	02202025 	move	a0,s1
    22dc:	10400006 	beqz	v0,22f8 <L80B5DA70+0x38>
    22e0:	240a0037 	li	t2,55
    22e4:	3c010001 	lui	at,0x1
    22e8:	00310821 	addu	at,at,s1
    22ec:	a02a03dc 	sb	t2,988(at)
    22f0:	240b000d 	li	t3,13
    22f4:	a20b0208 	sb	t3,520(s0)
    22f8:	92030208 	lbu	v1,520(s0)
    22fc:	2401000d 	li	at,13
    2300:	14610003 	bne	v1,at,2310 <L80B5DA70+0x50>
    2304:	8fb00014 	lw	s0,20(sp)
    2308:	10000002 	b	2314 <L80B5DA70+0x54>
    230c:	24030001 	li	v1,1
    2310:	00001825 	move	v1,zero
    2314:	8fbf001c 	lw	ra,28(sp)
    2318:	8fb10018 	lw	s1,24(sp)
    231c:	27bd0028 	addiu	sp,sp,40
    2320:	03e00008 	jr	ra
    2324:	00601025 	move	v0,v1

00002328 <func_80B5DAD8>:
    2328:	27bdffd8 	addiu	sp,sp,-40
    232c:	afbf0024 	sw	ra,36(sp)
    2330:	afb10020 	sw	s1,32(sp)
    2334:	afb0001c 	sw	s0,28(sp)
    2338:	90830208 	lbu	v1,520(a0)
    233c:	00808025 	move	s0,a0
    2340:	00a08825 	move	s1,a1
    2344:	2c610008 	sltiu	at,v1,8
    2348:	102000bd 	beqz	at,2640 <L80B5DD7C+0x74>
    234c:	00037080 	sll	t6,v1,0x2
    2350:	3c010000 	lui	at,0x0
    2354:	002e0821 	addu	at,at,t6
    2358:	8c2e0000 	lw	t6,0(at)
    235c:	01c00008 	jr	t6
    2360:	00000000 	nop

00002364 <L80B5DB14>:
    2364:	3c050000 	lui	a1,0x0
    2368:	24a50000 	addiu	a1,a1,0
    236c:	2604014c 	addiu	a0,s0,332
    2370:	0c000000 	jal	0 <func_80B5B7B0>
    2374:	24060012 	li	a2,18
    2378:	240f0002 	li	t7,2
    237c:	a6000210 	sh	zero,528(s0)
    2380:	a200020d 	sb	zero,525(s0)
    2384:	a20f020e 	sb	t7,526(s0)
    2388:	02202025 	move	a0,s1
    238c:	0c000000 	jal	0 <func_80B5B7B0>
    2390:	2405000a 	li	a1,10
    2394:	92180208 	lbu	t8,520(s0)
    2398:	a6000214 	sh	zero,532(s0)
    239c:	27190001 	addiu	t9,t8,1
    23a0:	a2190208 	sb	t9,520(s0)

000023a4 <L80B5DB54>:
    23a4:	86080214 	lh	t0,532(s0)
    23a8:	02202025 	move	a0,s1
    23ac:	24057123 	li	a1,28963
    23b0:	25090001 	addiu	t1,t0,1
    23b4:	a6090214 	sh	t1,532(s0)
    23b8:	860a0214 	lh	t2,532(s0)
    23bc:	2941000a 	slti	at,t2,10
    23c0:	14200006 	bnez	at,23dc <L80B5DB54+0x38>
    23c4:	00000000 	nop
    23c8:	0c000000 	jal	0 <func_80B5B7B0>
    23cc:	00003025 	move	a2,zero
    23d0:	920b0208 	lbu	t3,520(s0)
    23d4:	256c0001 	addiu	t4,t3,1
    23d8:	a20c0208 	sb	t4,520(s0)
    23dc:	10000098 	b	2640 <L80B5DD7C+0x74>
    23e0:	92030208 	lbu	v1,520(s0)

000023e4 <L80B5DB94>:
    23e4:	0c000000 	jal	0 <func_80B5B7B0>
    23e8:	262420d8 	addiu	a0,s1,8408
    23ec:	24010005 	li	at,5
    23f0:	14410017 	bne	v0,at,2450 <L80B5DB94+0x6c>
    23f4:	00000000 	nop
    23f8:	0c000000 	jal	0 <func_80B5B7B0>
    23fc:	02202025 	move	a0,s1
    2400:	10400013 	beqz	v0,2450 <L80B5DB94+0x6c>
    2404:	02202025 	move	a0,s1
    2408:	0c000000 	jal	0 <func_80B5B7B0>
    240c:	2405000d 	li	a1,13
    2410:	3c050000 	lui	a1,0x0
    2414:	24a50000 	addiu	a1,a1,0
    2418:	2604014c 	addiu	a0,s0,332
    241c:	0c000000 	jal	0 <func_80B5B7B0>
    2420:	24060013 	li	a2,19
    2424:	240d0003 	li	t5,3
    2428:	a6000210 	sh	zero,528(s0)
    242c:	a200020d 	sb	zero,525(s0)
    2430:	a20d020e 	sb	t5,526(s0)
    2434:	02202025 	move	a0,s1
    2438:	2405207c 	li	a1,8316
    243c:	0c000000 	jal	0 <func_80B5B7B0>
    2440:	00003025 	move	a2,zero
    2444:	920e0208 	lbu	t6,520(s0)
    2448:	25cf0001 	addiu	t7,t6,1
    244c:	a20f0208 	sb	t7,520(s0)
    2450:	1000007b 	b	2640 <L80B5DD7C+0x74>
    2454:	92030208 	lbu	v1,520(s0)

00002458 <L80B5DC08>:
    2458:	02002025 	move	a0,s0
    245c:	0c000000 	jal	0 <func_80B5B7B0>
    2460:	24050014 	li	a1,20
    2464:	10400004 	beqz	v0,2478 <L80B5DC28>
    2468:	00000000 	nop
    246c:	92180208 	lbu	t8,520(s0)
    2470:	27190001 	addiu	t9,t8,1
    2474:	a2190208 	sb	t9,520(s0)

00002478 <L80B5DC28>:
    2478:	0c000000 	jal	0 <func_80B5B7B0>
    247c:	262420d8 	addiu	a0,s1,8408
    2480:	24010005 	li	at,5
    2484:	14410015 	bne	v0,at,24dc <L80B5DC28+0x64>
    2488:	00000000 	nop
    248c:	0c000000 	jal	0 <func_80B5B7B0>
    2490:	02202025 	move	a0,s1
    2494:	10400011 	beqz	v0,24dc <L80B5DC28+0x64>
    2498:	02202025 	move	a0,s1
    249c:	2405207d 	li	a1,8317
    24a0:	0c000000 	jal	0 <func_80B5B7B0>
    24a4:	00003025 	move	a2,zero
    24a8:	3c050000 	lui	a1,0x0
    24ac:	24a50000 	addiu	a1,a1,0
    24b0:	2604014c 	addiu	a0,s0,332
    24b4:	0c000000 	jal	0 <func_80B5B7B0>
    24b8:	24060007 	li	a2,7
    24bc:	a6000216 	sh	zero,534(s0)
    24c0:	86090216 	lh	t1,534(s0)
    24c4:	24080005 	li	t0,5
    24c8:	a6000210 	sh	zero,528(s0)
    24cc:	a200020d 	sb	zero,525(s0)
    24d0:	a200020e 	sb	zero,526(s0)
    24d4:	a2080208 	sb	t0,520(s0)
    24d8:	a209020f 	sb	t1,527(s0)
    24dc:	10000058 	b	2640 <L80B5DD7C+0x74>
    24e0:	92030208 	lbu	v1,520(s0)

000024e4 <L80B5DC94>:
    24e4:	02002025 	move	a0,s0
    24e8:	0c000000 	jal	0 <func_80B5B7B0>
    24ec:	24050008 	li	a1,8
    24f0:	10400004 	beqz	v0,2504 <L80B5DCB4>
    24f4:	00000000 	nop
    24f8:	920a0208 	lbu	t2,520(s0)
    24fc:	254b0001 	addiu	t3,t2,1
    2500:	a20b0208 	sb	t3,520(s0)

00002504 <L80B5DCB4>:
    2504:	0c000000 	jal	0 <func_80B5B7B0>
    2508:	262420d8 	addiu	a0,s1,8408
    250c:	24010005 	li	at,5
    2510:	14410005 	bne	v0,at,2528 <L80B5DCB4+0x24>
    2514:	00000000 	nop
    2518:	0c000000 	jal	0 <func_80B5B7B0>
    251c:	02202025 	move	a0,s1
    2520:	54400004 	bnezl	v0,2534 <L80B5DCB4+0x30>
    2524:	862c07a0 	lh	t4,1952(s1)
    2528:	10000045 	b	2640 <L80B5DD7C+0x74>
    252c:	92030208 	lbu	v1,520(s0)
    2530:	862c07a0 	lh	t4,1952(s1)
    2534:	24050001 	li	a1,1
    2538:	000c6880 	sll	t5,t4,0x2
    253c:	022d7021 	addu	t6,s1,t5
    2540:	0c000000 	jal	0 <func_80B5B7B0>
    2544:	8dc40790 	lw	a0,1936(t6)
    2548:	240f0007 	li	t7,7
    254c:	3c190001 	lui	t9,0x1
    2550:	a20f0208 	sb	t7,520(s0)
    2554:	0331c821 	addu	t9,t9,s1
    2558:	8f391d5c 	lw	t9,7516(t9)
    255c:	02202025 	move	a0,s1
    2560:	02002825 	move	a1,s0
    2564:	0320f809 	jalr	t9
    2568:	00000000 	nop
    256c:	c6120090 	lwc1	$f18,144(s0)
    2570:	c6100094 	lwc1	$f16,148(s0)
    2574:	3c013f80 	lui	at,0x3f80
    2578:	44817000 	mtc1	at,$f14
    257c:	46009485 	abs.s	$f18,$f18
    2580:	46008405 	abs.s	$f16,$f16
    2584:	460e9480 	add.s	$f18,$f18,$f14
    2588:	02002025 	move	a0,s0
    258c:	02202825 	move	a1,s1
    2590:	460e8380 	add.s	$f14,$f16,$f14
    2594:	44079000 	mfc1	a3,$f18
    2598:	2406000b 	li	a2,11
    259c:	0c000000 	jal	0 <func_80B5B7B0>
    25a0:	e7ae0010 	swc1	$f14,16(sp)
    25a4:	3c010001 	lui	at,0x1
    25a8:	00310821 	addu	at,at,s1
    25ac:	24180004 	li	t8,4
    25b0:	a03804bf 	sb	t8,1215(at)
    25b4:	3c010001 	lui	at,0x1
    25b8:	00310821 	addu	at,at,s1
    25bc:	24080036 	li	t0,54
    25c0:	a02803dc 	sb	t0,988(at)
    25c4:	1000001e 	b	2640 <L80B5DD7C+0x74>
    25c8:	92030208 	lbu	v1,520(s0)

000025cc <L80B5DD7C>:
    25cc:	02002025 	move	a0,s0
    25d0:	0c000000 	jal	0 <func_80B5B7B0>
    25d4:	02202825 	move	a1,s1
    25d8:	1040000a 	beqz	v0,2604 <L80B5DD7C+0x38>
    25dc:	2604014c 	addiu	a0,s0,332
    25e0:	3c050000 	lui	a1,0x0
    25e4:	24a50000 	addiu	a1,a1,0
    25e8:	0c000000 	jal	0 <func_80B5B7B0>
    25ec:	00003025 	move	a2,zero
    25f0:	92090208 	lbu	t1,520(s0)
    25f4:	252a0001 	addiu	t2,t1,1
    25f8:	a20a0208 	sb	t2,520(s0)
    25fc:	10000010 	b	2640 <L80B5DD7C+0x74>
    2600:	314300ff 	andi	v1,t2,0xff
    2604:	c6120090 	lwc1	$f18,144(s0)
    2608:	c6100094 	lwc1	$f16,148(s0)
    260c:	3c013f80 	lui	at,0x3f80
    2610:	44817000 	mtc1	at,$f14
    2614:	46009485 	abs.s	$f18,$f18
    2618:	46008405 	abs.s	$f16,$f16
    261c:	460e9480 	add.s	$f18,$f18,$f14
    2620:	02002025 	move	a0,s0
    2624:	02202825 	move	a1,s1
    2628:	460e8380 	add.s	$f14,$f16,$f14
    262c:	44079000 	mfc1	a3,$f18
    2630:	2406000b 	li	a2,11
    2634:	0c000000 	jal	0 <func_80B5B7B0>
    2638:	e7ae0010 	swc1	$f14,16(sp)
    263c:	92030208 	lbu	v1,520(s0)
    2640:	24010008 	li	at,8
    2644:	14610003 	bne	v1,at,2654 <L80B5DD7C+0x88>
    2648:	8fb0001c 	lw	s0,28(sp)
    264c:	10000002 	b	2658 <L80B5DD7C+0x8c>
    2650:	24030001 	li	v1,1
    2654:	00001825 	move	v1,zero
    2658:	8fbf0024 	lw	ra,36(sp)
    265c:	8fb10020 	lw	s1,32(sp)
    2660:	27bd0028 	addiu	sp,sp,40
    2664:	03e00008 	jr	ra
    2668:	00601025 	move	v0,v1

0000266c <func_80B5DE1C>:
    266c:	27bdffd8 	addiu	sp,sp,-40
    2670:	afbf001c 	sw	ra,28(sp)
    2674:	afb00018 	sw	s0,24(sp)
    2678:	afa5002c 	sw	a1,44(sp)
    267c:	8caf1c44 	lw	t7,7236(a1)
    2680:	00808025 	move	s0,a0
    2684:	afaf0024 	sw	t7,36(sp)
    2688:	90980209 	lbu	t8,521(a0)
    268c:	2f010009 	sltiu	at,t8,9
    2690:	10200075 	beqz	at,2868 <L80B5DFD0+0x48>
    2694:	0018c080 	sll	t8,t8,0x2
    2698:	3c010000 	lui	at,0x0
    269c:	00380821 	addu	at,at,t8
    26a0:	8c380000 	lw	t8,0(at)
    26a4:	03000008 	jr	t8
    26a8:	00000000 	nop

000026ac <L80B5DE5C>:
    26ac:	02002025 	move	a0,s0
    26b0:	0c000000 	jal	0 <func_80B5B7B0>
    26b4:	8fa5002c 	lw	a1,44(sp)
    26b8:	5040006c 	beqzl	v0,286c <L80B5DFD0+0x4c>
    26bc:	8fa80024 	lw	t0,36(sp)
    26c0:	92190209 	lbu	t9,521(s0)
    26c4:	a2000208 	sb	zero,520(s0)
    26c8:	27280001 	addiu	t0,t9,1
    26cc:	10000066 	b	2868 <L80B5DFD0+0x48>
    26d0:	a2080209 	sb	t0,521(s0)

000026d4 <L80B5DE84>:
    26d4:	3c050000 	lui	a1,0x0
    26d8:	24a50000 	addiu	a1,a1,0
    26dc:	2604014c 	addiu	a0,s0,332
    26e0:	0c000000 	jal	0 <func_80B5B7B0>
    26e4:	24060003 	li	a2,3
    26e8:	24090003 	li	t1,3
    26ec:	a6000210 	sh	zero,528(s0)
    26f0:	a200020d 	sb	zero,525(s0)
    26f4:	a209020e 	sb	t1,526(s0)
    26f8:	0c000000 	jal	0 <func_80B5B7B0>
    26fc:	24040051 	li	a0,81
    2700:	8fa4002c 	lw	a0,44(sp)
    2704:	0c000000 	jal	0 <func_80B5B7B0>
    2708:	00002825 	move	a1,zero
    270c:	0c000000 	jal	0 <func_80B5B7B0>
    2710:	24040002 	li	a0,2
    2714:	0c000000 	jal	0 <func_80B5B7B0>
    2718:	24040020 	li	a0,32
    271c:	920a0209 	lbu	t2,521(s0)
    2720:	a2000208 	sb	zero,520(s0)
    2724:	254b0001 	addiu	t3,t2,1
    2728:	1000004f 	b	2868 <L80B5DFD0+0x48>
    272c:	a20b0209 	sb	t3,521(s0)

00002730 <L80B5DEE0>:
    2730:	02002025 	move	a0,s0
    2734:	0c000000 	jal	0 <func_80B5B7B0>
    2738:	8fa5002c 	lw	a1,44(sp)
    273c:	5040004b 	beqzl	v0,286c <L80B5DFD0+0x4c>
    2740:	8fa80024 	lw	t0,36(sp)
    2744:	920c0209 	lbu	t4,521(s0)
    2748:	a2000208 	sb	zero,520(s0)
    274c:	258d0001 	addiu	t5,t4,1
    2750:	10000045 	b	2868 <L80B5DFD0+0x48>
    2754:	a20d0209 	sb	t5,521(s0)

00002758 <L80B5DF08>:
    2758:	02002025 	move	a0,s0
    275c:	0c000000 	jal	0 <func_80B5B7B0>
    2760:	8fa5002c 	lw	a1,44(sp)
    2764:	50400041 	beqzl	v0,286c <L80B5DFD0+0x4c>
    2768:	8fa80024 	lw	t0,36(sp)
    276c:	920e0209 	lbu	t6,521(s0)
    2770:	a2000208 	sb	zero,520(s0)
    2774:	25cf0001 	addiu	t7,t6,1
    2778:	1000003b 	b	2868 <L80B5DFD0+0x48>
    277c:	a20f0209 	sb	t7,521(s0)

00002780 <L80B5DF30>:
    2780:	02002025 	move	a0,s0
    2784:	0c000000 	jal	0 <func_80B5B7B0>
    2788:	8fa5002c 	lw	a1,44(sp)
    278c:	50400037 	beqzl	v0,286c <L80B5DFD0+0x4c>
    2790:	8fa80024 	lw	t0,36(sp)
    2794:	92180209 	lbu	t8,521(s0)
    2798:	a2000208 	sb	zero,520(s0)
    279c:	27190001 	addiu	t9,t8,1
    27a0:	10000031 	b	2868 <L80B5DFD0+0x48>
    27a4:	a2190209 	sb	t9,521(s0)

000027a8 <L80B5DF58>:
    27a8:	02002025 	move	a0,s0
    27ac:	0c000000 	jal	0 <func_80B5B7B0>
    27b0:	8fa5002c 	lw	a1,44(sp)
    27b4:	5040002d 	beqzl	v0,286c <L80B5DFD0+0x4c>
    27b8:	8fa80024 	lw	t0,36(sp)
    27bc:	92080209 	lbu	t0,521(s0)
    27c0:	a2000208 	sb	zero,520(s0)
    27c4:	25090001 	addiu	t1,t0,1
    27c8:	10000027 	b	2868 <L80B5DFD0+0x48>
    27cc:	a2090209 	sb	t1,521(s0)

000027d0 <L80B5DF80>:
    27d0:	02002025 	move	a0,s0
    27d4:	0c000000 	jal	0 <func_80B5B7B0>
    27d8:	8fa5002c 	lw	a1,44(sp)
    27dc:	50400023 	beqzl	v0,286c <L80B5DFD0+0x4c>
    27e0:	8fa80024 	lw	t0,36(sp)
    27e4:	920a0209 	lbu	t2,521(s0)
    27e8:	a2000208 	sb	zero,520(s0)
    27ec:	254b0001 	addiu	t3,t2,1
    27f0:	1000001d 	b	2868 <L80B5DFD0+0x48>
    27f4:	a20b0209 	sb	t3,521(s0)

000027f8 <L80B5DFA8>:
    27f8:	02002025 	move	a0,s0
    27fc:	0c000000 	jal	0 <func_80B5B7B0>
    2800:	8fa5002c 	lw	a1,44(sp)
    2804:	50400019 	beqzl	v0,286c <L80B5DFD0+0x4c>
    2808:	8fa80024 	lw	t0,36(sp)
    280c:	920c0209 	lbu	t4,521(s0)
    2810:	a2000208 	sb	zero,520(s0)
    2814:	258d0001 	addiu	t5,t4,1
    2818:	10000013 	b	2868 <L80B5DFD0+0x48>
    281c:	a20d0209 	sb	t5,521(s0)

00002820 <L80B5DFD0>:
    2820:	02002025 	move	a0,s0
    2824:	0c000000 	jal	0 <func_80B5B7B0>
    2828:	8fa5002c 	lw	a1,44(sp)
    282c:	1040000e 	beqz	v0,2868 <L80B5DFD0+0x48>
    2830:	8fa4002c 	lw	a0,44(sp)
    2834:	02002825 	move	a1,s0
    2838:	0c000000 	jal	0 <func_80B5B7B0>
    283c:	24060007 	li	a2,7
    2840:	3c030000 	lui	v1,0x0
    2844:	24630000 	addiu	v1,v1,0
    2848:	946f0edc 	lhu	t7,3804(v1)
    284c:	240e0032 	li	t6,50
    2850:	3c190000 	lui	t9,0x0
    2854:	35f80001 	ori	t8,t7,0x1
    2858:	a46e13ee 	sh	t6,5102(v1)
    285c:	a4780edc 	sh	t8,3804(v1)
    2860:	27390000 	addiu	t9,t9,0
    2864:	ae190190 	sw	t9,400(s0)
    2868:	8fa80024 	lw	t0,36(sp)
    286c:	920b0209 	lbu	t3,521(s0)
    2870:	24010006 	li	at,6
    2874:	8d0a0024 	lw	t2,36(t0)
    2878:	02002025 	move	a0,s0
    287c:	260501e0 	addiu	a1,s0,480
    2880:	ae0a01f8 	sw	t2,504(s0)
    2884:	8d090028 	lw	t1,40(t0)
    2888:	24060002 	li	a2,2
    288c:	24020001 	li	v0,1
    2890:	ae0901fc 	sw	t1,508(s0)
    2894:	8d0a002c 	lw	t2,44(t0)
    2898:	15610003 	bne	t3,at,28a8 <L80B5DFD0+0x88>
    289c:	ae0a0200 	sw	t2,512(s0)
    28a0:	10000001 	b	28a8 <L80B5DFD0+0x88>
    28a4:	24020002 	li	v0,2
    28a8:	00023c00 	sll	a3,v0,0x10
    28ac:	0c000000 	jal	0 <func_80B5B7B0>
    28b0:	00073c03 	sra	a3,a3,0x10
    28b4:	0c000000 	jal	0 <func_80B5B7B0>
    28b8:	02002025 	move	a0,s0
    28bc:	10400003 	beqz	v0,28cc <L80B5DFD0+0xac>
    28c0:	02002025 	move	a0,s0
    28c4:	0c000000 	jal	0 <func_80B5B7B0>
    28c8:	8fa5002c 	lw	a1,44(sp)
    28cc:	8fbf001c 	lw	ra,28(sp)
    28d0:	8fb00018 	lw	s0,24(sp)
    28d4:	27bd0028 	addiu	sp,sp,40
    28d8:	03e00008 	jr	ra
    28dc:	00000000 	nop

000028e0 <func_80B5E090>:
    28e0:	27bdffe0 	addiu	sp,sp,-32
    28e4:	afa50024 	sw	a1,36(sp)
    28e8:	00802825 	move	a1,a0
    28ec:	afbf001c 	sw	ra,28(sp)
    28f0:	afa40020 	sw	a0,32(sp)
    28f4:	84ae01d4 	lh	t6,468(a1)
    28f8:	3c014270 	lui	at,0x4270
    28fc:	44814000 	mtc1	at,$f8
    2900:	448e2000 	mtc1	t6,$f4
    2904:	3c0f0000 	lui	t7,0x0
    2908:	3c180000 	lui	t8,0x0
    290c:	468021a0 	cvt.s.w	$f6,$f4
    2910:	27180000 	addiu	t8,t8,0
    2914:	25ef0000 	addiu	t7,t7,0
    2918:	afaf0010 	sw	t7,16(sp)
    291c:	afb80014 	sw	t8,20(sp)
    2920:	afa50020 	sw	a1,32(sp)
    2924:	46083280 	add.s	$f10,$f6,$f8
    2928:	8fa40024 	lw	a0,36(sp)
    292c:	24a601e0 	addiu	a2,a1,480
    2930:	44075000 	mfc1	a3,$f10
    2934:	0c000000 	jal	0 <func_80B5B7B0>
    2938:	00000000 	nop
    293c:	8fa40020 	lw	a0,32(sp)
    2940:	0c000000 	jal	0 <func_80B5B7B0>
    2944:	8fa50024 	lw	a1,36(sp)
    2948:	8fbf001c 	lw	ra,28(sp)
    294c:	27bd0020 	addiu	sp,sp,32
    2950:	03e00008 	jr	ra
    2954:	00000000 	nop

00002958 <func_80B5E108>:
    2958:	27bdff90 	addiu	sp,sp,-112
    295c:	3c0f0000 	lui	t7,0x0
    2960:	afb00018 	sw	s0,24(sp)
    2964:	25ef0000 	addiu	t7,t7,0
    2968:	00808025 	move	s0,a0
    296c:	afbf001c 	sw	ra,28(sp)
    2970:	afa50074 	sw	a1,116(sp)
    2974:	25e80024 	addiu	t0,t7,36
    2978:	27ae0048 	addiu	t6,sp,72
    297c:	8df90000 	lw	t9,0(t7)
    2980:	25ef000c 	addiu	t7,t7,12
    2984:	25ce000c 	addiu	t6,t6,12
    2988:	add9fff4 	sw	t9,-12(t6)
    298c:	8df8fff8 	lw	t8,-8(t7)
    2990:	add8fff8 	sw	t8,-8(t6)
    2994:	8df9fffc 	lw	t9,-4(t7)
    2998:	15e8fff8 	bne	t7,t0,297c <func_80B5E108+0x24>
    299c:	add9fffc 	sw	t9,-4(t6)
    29a0:	8df90000 	lw	t9,0(t7)
    29a4:	2604014c 	addiu	a0,s0,332
    29a8:	add90000 	sw	t9,0(t6)
    29ac:	0c000000 	jal	0 <func_80B5B7B0>
    29b0:	afa40028 	sw	a0,40(sp)
    29b4:	1040000a 	beqz	v0,29e0 <func_80B5E108+0x88>
    29b8:	00000000 	nop
    29bc:	8e0a0154 	lw	t2,340(s0)
    29c0:	3c090601 	lui	t1,0x601
    29c4:	25290df8 	addiu	t1,t1,3576
    29c8:	152a0005 	bne	t1,t2,29e0 <func_80B5E108+0x88>
    29cc:	8fa40028 	lw	a0,40(sp)
    29d0:	3c050000 	lui	a1,0x0
    29d4:	24a50000 	addiu	a1,a1,0
    29d8:	0c000000 	jal	0 <func_80B5B7B0>
    29dc:	24060004 	li	a2,4
    29e0:	0c000000 	jal	0 <func_80B5B7B0>
    29e4:	02002025 	move	a0,s0
    29e8:	10400003 	beqz	v0,29f8 <func_80B5E108+0xa0>
    29ec:	02002025 	move	a0,s0
    29f0:	0c000000 	jal	0 <func_80B5B7B0>
    29f4:	8fa50074 	lw	a1,116(sp)
    29f8:	8fa30074 	lw	v1,116(sp)
    29fc:	24010064 	li	at,100
    2a00:	240b0002 	li	t3,2
    2a04:	94621d74 	lhu	v0,7540(v1)
    2a08:	240c0003 	li	t4,3
    2a0c:	240d0003 	li	t5,3
    2a10:	14410003 	bne	v0,at,2a20 <func_80B5E108+0xc8>
    2a14:	27a50038 	addiu	a1,sp,56
    2a18:	a20b020d 	sb	t3,525(s0)
    2a1c:	94621d74 	lhu	v0,7540(v1)
    2a20:	240101c2 	li	at,450
    2a24:	54410005 	bnel	v0,at,2a3c <func_80B5E108+0xe4>
    2a28:	8c671d8c 	lw	a3,7564(v1)
    2a2c:	a60c0210 	sh	t4,528(s0)
    2a30:	a200020d 	sb	zero,525(s0)
    2a34:	a20d020e 	sb	t5,526(s0)
    2a38:	8c671d8c 	lw	a3,7564(v1)
    2a3c:	10e0002d 	beqz	a3,2af4 <func_80B5E108+0x19c>
    2a40:	00e02025 	move	a0,a3
    2a44:	0c000000 	jal	0 <func_80B5B7B0>
    2a48:	afa70044 	sw	a3,68(sp)
    2a4c:	86020216 	lh	v0,534(s0)
    2a50:	8fa70044 	lw	a3,68(sp)
    2a54:	27a80038 	addiu	t0,sp,56
    2a58:	14400015 	bnez	v0,2ab0 <func_80B5E108+0x158>
    2a5c:	3c050000 	lui	a1,0x0
    2a60:	8d0e0000 	lw	t6,0(t0)
    2a64:	27a3002c 	addiu	v1,sp,44
    2a68:	ac6e0000 	sw	t6,0(v1)
    2a6c:	8d0f0004 	lw	t7,4(t0)
    2a70:	8c790000 	lw	t9,0(v1)
    2a74:	ac6f0004 	sw	t7,4(v1)
    2a78:	8d0e0008 	lw	t6,8(t0)
    2a7c:	ac6e0008 	sw	t6,8(v1)
    2a80:	ae190008 	sw	t9,8(s0)
    2a84:	8c780004 	lw	t8,4(v1)
    2a88:	86020216 	lh	v0,534(s0)
    2a8c:	ae18000c 	sw	t8,12(s0)
    2a90:	8c790008 	lw	t9,8(v1)
    2a94:	ae190010 	sw	t9,16(s0)
    2a98:	8c6a0000 	lw	t2,0(v1)
    2a9c:	ae0a0024 	sw	t2,36(s0)
    2aa0:	8c690004 	lw	t1,4(v1)
    2aa4:	ae090028 	sw	t1,40(s0)
    2aa8:	8c6a0008 	lw	t2,8(v1)
    2aac:	ae0a002c 	sw	t2,44(s0)
    2ab0:	94e30000 	lhu	v1,0(a3)
    2ab4:	8fa40028 	lw	a0,40(sp)
    2ab8:	24a50000 	addiu	a1,a1,0
    2abc:	10620008 	beq	v1,v0,2ae0 <func_80B5E108+0x188>
    2ac0:	00035880 	sll	t3,v1,0x2
    2ac4:	03ab3021 	addu	a2,sp,t3
    2ac8:	8cc60048 	lw	a2,72(a2)
    2acc:	0c000000 	jal	0 <func_80B5B7B0>
    2ad0:	afa70044 	sw	a3,68(sp)
    2ad4:	8fa70044 	lw	a3,68(sp)
    2ad8:	94ec0000 	lhu	t4,0(a3)
    2adc:	a60c0216 	sh	t4,534(s0)
    2ae0:	44800000 	mtc1	zero,$f0
    2ae4:	00000000 	nop
    2ae8:	e600005c 	swc1	$f0,92(s0)
    2aec:	e6000060 	swc1	$f0,96(s0)
    2af0:	e6000064 	swc1	$f0,100(s0)
    2af4:	8fbf001c 	lw	ra,28(sp)
    2af8:	8fb00018 	lw	s0,24(sp)
    2afc:	27bd0070 	addiu	sp,sp,112
    2b00:	03e00008 	jr	ra
    2b04:	00000000 	nop

00002b08 <EnZl4_Update>:
    2b08:	27bdffc8 	addiu	sp,sp,-56
    2b0c:	afbf0024 	sw	ra,36(sp)
    2b10:	afb00020 	sw	s0,32(sp)
    2b14:	afa5003c 	sw	a1,60(sp)
    2b18:	8c8f0190 	lw	t7,400(a0)
    2b1c:	3c0e0000 	lui	t6,0x0
    2b20:	25ce0000 	addiu	t6,t6,0
    2b24:	11cf0003 	beq	t6,t7,2b34 <EnZl4_Update+0x2c>
    2b28:	00808025 	move	s0,a0
    2b2c:	0c000000 	jal	0 <func_80B5B7B0>
    2b30:	2484014c 	addiu	a0,a0,332
    2b34:	0c000000 	jal	0 <func_80B5B7B0>
    2b38:	02002025 	move	a0,s0
    2b3c:	44800000 	mtc1	zero,$f0
    2b40:	24180004 	li	t8,4
    2b44:	afb80014 	sw	t8,20(sp)
    2b48:	44060000 	mfc1	a2,$f0
    2b4c:	44070000 	mfc1	a3,$f0
    2b50:	8fa4003c 	lw	a0,60(sp)
    2b54:	02002825 	move	a1,s0
    2b58:	0c000000 	jal	0 <func_80B5B7B0>
    2b5c:	e7a00010 	swc1	$f0,16(sp)
    2b60:	8e190190 	lw	t9,400(s0)
    2b64:	02002025 	move	a0,s0
    2b68:	8fa5003c 	lw	a1,60(sp)
    2b6c:	0320f809 	jalr	t9
    2b70:	00000000 	nop
    2b74:	26060194 	addiu	a2,s0,404
    2b78:	00c02825 	move	a1,a2
    2b7c:	afa6002c 	sw	a2,44(sp)
    2b80:	0c000000 	jal	0 <func_80B5B7B0>
    2b84:	02002025 	move	a0,s0
    2b88:	8fa4003c 	lw	a0,60(sp)
    2b8c:	3c010001 	lui	at,0x1
    2b90:	34211e60 	ori	at,at,0x1e60
    2b94:	8fa6002c 	lw	a2,44(sp)
    2b98:	0c000000 	jal	0 <func_80B5B7B0>
    2b9c:	00812821 	addu	a1,a0,at
    2ba0:	8fbf0024 	lw	ra,36(sp)
    2ba4:	8fb00020 	lw	s0,32(sp)
    2ba8:	27bd0038 	addiu	sp,sp,56
    2bac:	03e00008 	jr	ra
    2bb0:	00000000 	nop

00002bb4 <func_80B5E364>:
    2bb4:	27bdffd8 	addiu	sp,sp,-40
    2bb8:	24010011 	li	at,17
    2bbc:	afbf0014 	sw	ra,20(sp)
    2bc0:	afa40028 	sw	a0,40(sp)
    2bc4:	afa5002c 	sw	a1,44(sp)
    2bc8:	afa60030 	sw	a2,48(sp)
    2bcc:	14a1002c 	bne	a1,at,2c80 <func_80B5E364+0xcc>
    2bd0:	afa70034 	sw	a3,52(sp)
    2bd4:	8fb8003c 	lw	t8,60(sp)
    2bd8:	44807000 	mtc1	zero,$f14
    2bdc:	27af001c 	addiu	t7,sp,28
    2be0:	8b0801e8 	lwl	t0,488(t8)
    2be4:	9b0801eb 	lwr	t0,491(t8)
    2be8:	3c014461 	lui	at,0x4461
    2bec:	44816000 	mtc1	at,$f12
    2bf0:	ade80000 	sw	t0,0(t7)
    2bf4:	970801ec 	lhu	t0,492(t8)
    2bf8:	44067000 	mfc1	a2,$f14
    2bfc:	24070001 	li	a3,1
    2c00:	0c000000 	jal	0 <func_80B5B7B0>
    2c04:	a5e80004 	sh	t0,4(t7)
    2c08:	87a9001e 	lh	t1,30(sp)
    2c0c:	3c014700 	lui	at,0x4700
    2c10:	44814000 	mtc1	at,$f8
    2c14:	44892000 	mtc1	t1,$f4
    2c18:	3c010000 	lui	at,0x0
    2c1c:	c4300000 	lwc1	$f16,0(at)
    2c20:	468021a0 	cvt.s.w	$f6,$f4
    2c24:	24050001 	li	a1,1
    2c28:	46083283 	div.s	$f10,$f6,$f8
    2c2c:	46105302 	mul.s	$f12,$f10,$f16
    2c30:	0c000000 	jal	0 <func_80B5B7B0>
    2c34:	00000000 	nop
    2c38:	87aa001c 	lh	t2,28(sp)
    2c3c:	3c014700 	lui	at,0x4700
    2c40:	44813000 	mtc1	at,$f6
    2c44:	448a9000 	mtc1	t2,$f18
    2c48:	3c010000 	lui	at,0x0
    2c4c:	c42a0000 	lwc1	$f10,0(at)
    2c50:	46809120 	cvt.s.w	$f4,$f18
    2c54:	24050001 	li	a1,1
    2c58:	46062203 	div.s	$f8,$f4,$f6
    2c5c:	460a4302 	mul.s	$f12,$f8,$f10
    2c60:	0c000000 	jal	0 <func_80B5B7B0>
    2c64:	00000000 	nop
    2c68:	44807000 	mtc1	zero,$f14
    2c6c:	3c01c461 	lui	at,0xc461
    2c70:	44816000 	mtc1	at,$f12
    2c74:	44067000 	mfc1	a2,$f14
    2c78:	0c000000 	jal	0 <func_80B5B7B0>
    2c7c:	24070001 	li	a3,1
    2c80:	8fab002c 	lw	t3,44(sp)
    2c84:	2401000a 	li	at,10
    2c88:	8fad003c 	lw	t5,60(sp)
    2c8c:	55610021 	bnel	t3,at,2d14 <func_80B5E364+0x160>
    2c90:	8fa8002c 	lw	t0,44(sp)
    2c94:	89af01ee 	lwl	t7,494(t5)
    2c98:	99af01f1 	lwr	t7,497(t5)
    2c9c:	27ac001c 	addiu	t4,sp,28
    2ca0:	3c014700 	lui	at,0x4700
    2ca4:	ad8f0000 	sw	t7,0(t4)
    2ca8:	95af01f2 	lhu	t7,498(t5)
    2cac:	44812000 	mtc1	at,$f4
    2cb0:	3c010000 	lui	at,0x0
    2cb4:	a58f0004 	sh	t7,4(t4)
    2cb8:	87b8001e 	lh	t8,30(sp)
    2cbc:	c4280000 	lwc1	$f8,0(at)
    2cc0:	24050001 	li	a1,1
    2cc4:	44988000 	mtc1	t8,$f16
    2cc8:	00000000 	nop
    2ccc:	468084a0 	cvt.s.w	$f18,$f16
    2cd0:	46049183 	div.s	$f6,$f18,$f4
    2cd4:	46083302 	mul.s	$f12,$f6,$f8
    2cd8:	0c000000 	jal	0 <func_80B5B7B0>
    2cdc:	00000000 	nop
    2ce0:	87b9001c 	lh	t9,28(sp)
    2ce4:	3c014700 	lui	at,0x4700
    2ce8:	44819000 	mtc1	at,$f18
    2cec:	44995000 	mtc1	t9,$f10
    2cf0:	3c010000 	lui	at,0x0
    2cf4:	c4260000 	lwc1	$f6,0(at)
    2cf8:	46805420 	cvt.s.w	$f16,$f10
    2cfc:	24050001 	li	a1,1
    2d00:	46128103 	div.s	$f4,$f16,$f18
    2d04:	46062302 	mul.s	$f12,$f4,$f6
    2d08:	0c000000 	jal	0 <func_80B5B7B0>
    2d0c:	00000000 	nop
    2d10:	8fa8002c 	lw	t0,44(sp)
    2d14:	29010003 	slti	at,t0,3
    2d18:	14200004 	bnez	at,2d2c <func_80B5E364+0x178>
    2d1c:	29010007 	slti	at,t0,7
    2d20:	10200002 	beqz	at,2d2c <func_80B5E364+0x178>
    2d24:	8fa90030 	lw	t1,48(sp)
    2d28:	ad200000 	sw	zero,0(t1)
    2d2c:	8fbf0014 	lw	ra,20(sp)
    2d30:	27bd0028 	addiu	sp,sp,40
    2d34:	00001025 	move	v0,zero
    2d38:	03e00008 	jr	ra
    2d3c:	00000000 	nop

00002d40 <func_80B5E4F0>:
    2d40:	27bdffd8 	addiu	sp,sp,-40
    2d44:	3c0e0000 	lui	t6,0x0
    2d48:	afbf0014 	sw	ra,20(sp)
    2d4c:	afa40028 	sw	a0,40(sp)
    2d50:	afa60030 	sw	a2,48(sp)
    2d54:	afa70034 	sw	a3,52(sp)
    2d58:	25ce0000 	addiu	t6,t6,0
    2d5c:	8dd80000 	lw	t8,0(t6)
    2d60:	27a4001c 	addiu	a0,sp,28
    2d64:	24010011 	li	at,17
    2d68:	ac980000 	sw	t8,0(a0)
    2d6c:	8dcf0004 	lw	t7,4(t6)
    2d70:	ac8f0004 	sw	t7,4(a0)
    2d74:	8dd80008 	lw	t8,8(t6)
    2d78:	14a10004 	bne	a1,at,2d8c <func_80B5E4F0+0x4c>
    2d7c:	ac980008 	sw	t8,8(a0)
    2d80:	8fa50038 	lw	a1,56(sp)
    2d84:	0c000000 	jal	0 <func_80B5B7B0>
    2d88:	24a50038 	addiu	a1,a1,56
    2d8c:	8fbf0014 	lw	ra,20(sp)
    2d90:	27bd0028 	addiu	sp,sp,40
    2d94:	03e00008 	jr	ra
    2d98:	00000000 	nop

00002d9c <EnZl4_Draw>:
    2d9c:	27bdff78 	addiu	sp,sp,-136
    2da0:	3c0f0000 	lui	t7,0x0
    2da4:	afbf002c 	sw	ra,44(sp)
    2da8:	afb00028 	sw	s0,40(sp)
    2dac:	afa5008c 	sw	a1,140(sp)
    2db0:	25ef0000 	addiu	t7,t7,0
    2db4:	8df90000 	lw	t9,0(t7)
    2db8:	8df80004 	lw	t8,4(t7)
    2dbc:	27ae0074 	addiu	t6,sp,116
    2dc0:	add90000 	sw	t9,0(t6)
    2dc4:	add80004 	sw	t8,4(t6)
    2dc8:	8df8000c 	lw	t8,12(t7)
    2dcc:	8df90008 	lw	t9,8(t7)
    2dd0:	3c0b0000 	lui	t3,0x0
    2dd4:	256b0000 	addiu	t3,t3,0
    2dd8:	add8000c 	sw	t8,12(t6)
    2ddc:	add90008 	sw	t9,8(t6)
    2de0:	8d6d0000 	lw	t5,0(t3)
    2de4:	27aa0058 	addiu	t2,sp,88
    2de8:	8d6c0004 	lw	t4,4(t3)
    2dec:	ad4d0000 	sw	t5,0(t2)
    2df0:	8d6d0008 	lw	t5,8(t3)
    2df4:	ad4c0004 	sw	t4,4(t2)
    2df8:	8d6c000c 	lw	t4,12(t3)
    2dfc:	ad4d0008 	sw	t5,8(t2)
    2e00:	8d6d0010 	lw	t5,16(t3)
    2e04:	ad4c000c 	sw	t4,12(t2)
    2e08:	8d6c0014 	lw	t4,20(t3)
    2e0c:	ad4d0010 	sw	t5,16(t2)
    2e10:	8d6d0018 	lw	t5,24(t3)
    2e14:	ad4c0014 	sw	t4,20(t2)
    2e18:	00808025 	move	s0,a0
    2e1c:	ad4d0018 	sw	t5,24(t2)
    2e20:	8fae008c 	lw	t6,140(sp)
    2e24:	3c060000 	lui	a2,0x0
    2e28:	24c60000 	addiu	a2,a2,0
    2e2c:	8dc50000 	lw	a1,0(t6)
    2e30:	27a40044 	addiu	a0,sp,68
    2e34:	240707dc 	li	a3,2012
    2e38:	0c000000 	jal	0 <func_80B5B7B0>
    2e3c:	afa50054 	sw	a1,84(sp)
    2e40:	8fa80054 	lw	t0,84(sp)
    2e44:	3c18db06 	lui	t8,0xdb06
    2e48:	37180020 	ori	t8,t8,0x20
    2e4c:	8d0202c0 	lw	v0,704(t0)
    2e50:	27a90058 	addiu	t1,sp,88
    2e54:	3c060000 	lui	a2,0x0
    2e58:	244f0008 	addiu	t7,v0,8
    2e5c:	ad0f02c0 	sw	t7,704(t0)
    2e60:	ac580000 	sw	t8,0(v0)
    2e64:	9219020b 	lbu	t9,523(s0)
    2e68:	24c60000 	addiu	a2,a2,0
    2e6c:	3c0500ff 	lui	a1,0xff
    2e70:	00195080 	sll	t2,t9,0x2
    2e74:	012a5821 	addu	t3,t1,t2
    2e78:	8d640000 	lw	a0,0(t3)
    2e7c:	34a5ffff 	ori	a1,a1,0xffff
    2e80:	3c078000 	lui	a3,0x8000
    2e84:	00046900 	sll	t5,a0,0x4
    2e88:	000d7702 	srl	t6,t5,0x1c
    2e8c:	000e7880 	sll	t7,t6,0x2
    2e90:	00cfc021 	addu	t8,a2,t7
    2e94:	8f190000 	lw	t9,0(t8)
    2e98:	00856024 	and	t4,a0,a1
    2e9c:	3c0edb06 	lui	t6,0xdb06
    2ea0:	01995021 	addu	t2,t4,t9
    2ea4:	01475821 	addu	t3,t2,a3
    2ea8:	ac4b0004 	sw	t3,4(v0)
    2eac:	8d0202c0 	lw	v0,704(t0)
    2eb0:	35ce0024 	ori	t6,t6,0x24
    2eb4:	244d0008 	addiu	t5,v0,8
    2eb8:	ad0d02c0 	sw	t5,704(t0)
    2ebc:	ac4e0000 	sw	t6,0(v0)
    2ec0:	920f020a 	lbu	t7,522(s0)
    2ec4:	000fc080 	sll	t8,t7,0x2
    2ec8:	01386021 	addu	t4,t1,t8
    2ecc:	8d840000 	lw	a0,0(t4)
    2ed0:	00045100 	sll	t2,a0,0x4
    2ed4:	000a5f02 	srl	t3,t2,0x1c
    2ed8:	000b6880 	sll	t5,t3,0x2
    2edc:	00cd7021 	addu	t6,a2,t5
    2ee0:	8dcf0000 	lw	t7,0(t6)
    2ee4:	0085c824 	and	t9,a0,a1
    2ee8:	3c0bdb06 	lui	t3,0xdb06
    2eec:	032fc021 	addu	t8,t9,t7
    2ef0:	03076021 	addu	t4,t8,a3
    2ef4:	ac4c0004 	sw	t4,4(v0)
    2ef8:	8d0202c0 	lw	v0,704(t0)
    2efc:	356b0028 	ori	t3,t3,0x28
    2f00:	244a0008 	addiu	t2,v0,8
    2f04:	ad0a02c0 	sw	t2,704(t0)
    2f08:	ac4b0000 	sw	t3,0(v0)
    2f0c:	920d020c 	lbu	t5,524(s0)
    2f10:	000d7080 	sll	t6,t5,0x2
    2f14:	03ae2021 	addu	a0,sp,t6
    2f18:	8c840074 	lw	a0,116(a0)
    2f1c:	00047900 	sll	t7,a0,0x4
    2f20:	000fc702 	srl	t8,t7,0x1c
    2f24:	00186080 	sll	t4,t8,0x2
    2f28:	00cc5021 	addu	t2,a2,t4
    2f2c:	8d4b0000 	lw	t3,0(t2)
    2f30:	0085c824 	and	t9,a0,a1
    2f34:	032b6821 	addu	t5,t9,t3
    2f38:	01a77021 	addu	t6,t5,a3
    2f3c:	ac4e0004 	sw	t6,4(v0)
    2f40:	8faf008c 	lw	t7,140(sp)
    2f44:	0c000000 	jal	0 <func_80B5B7B0>
    2f48:	8de40000 	lw	a0,0(t7)
    2f4c:	8e050150 	lw	a1,336(s0)
    2f50:	8e06016c 	lw	a2,364(s0)
    2f54:	9207014e 	lbu	a3,334(s0)
    2f58:	3c180000 	lui	t8,0x0
    2f5c:	3c0c0000 	lui	t4,0x0
    2f60:	258c0000 	addiu	t4,t4,0
    2f64:	27180000 	addiu	t8,t8,0
    2f68:	afb80010 	sw	t8,16(sp)
    2f6c:	afac0014 	sw	t4,20(sp)
    2f70:	afb00018 	sw	s0,24(sp)
    2f74:	0c000000 	jal	0 <func_80B5B7B0>
    2f78:	8fa4008c 	lw	a0,140(sp)
    2f7c:	8faa008c 	lw	t2,140(sp)
    2f80:	3c060000 	lui	a2,0x0
    2f84:	24c60000 	addiu	a2,a2,0
    2f88:	27a40044 	addiu	a0,sp,68
    2f8c:	240707fb 	li	a3,2043
    2f90:	0c000000 	jal	0 <func_80B5B7B0>
    2f94:	8d450000 	lw	a1,0(t2)
    2f98:	8fbf002c 	lw	ra,44(sp)
    2f9c:	8fb00028 	lw	s0,40(sp)
    2fa0:	27bd0088 	addiu	sp,sp,136
    2fa4:	03e00008 	jr	ra
    2fa8:	00000000 	nop
    2fac:	00000000 	nop
