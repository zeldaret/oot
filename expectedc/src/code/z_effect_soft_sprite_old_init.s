
build/src/code/z_effect_soft_sprite_old_init.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSs_DrawGEffect>:
       0:	27bdfe98 	addiu	sp,sp,-360
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb10018 	sw	s1,24(sp)
       c:	afb00014 	sw	s0,20(sp)
      10:	afa40168 	sw	a0,360(sp)
      14:	afa60170 	sw	a2,368(sp)
      18:	84af0056 	lh	t7,86(a1)
      1c:	3c080001 	lui	t0,0x1
      20:	8c900000 	lw	s0,0(a0)
      24:	000fc100 	sll	t8,t7,0x4
      28:	030fc021 	addu	t8,t8,t7
      2c:	0018c080 	sll	t8,t8,0x2
      30:	0098c821 	addu	t9,a0,t8
      34:	01194021 	addu	t0,t0,t9
      38:	8d0817b4 	lw	t0,6068(t0)
      3c:	00a08825 	move	s1,a1
      40:	3c060000 	lui	a2,0x0
      44:	24c60000 	addiu	a2,a2,0
      48:	27a40040 	addiu	a0,sp,64
      4c:	240700c4 	li	a3,196
      50:	02002825 	move	a1,s0
      54:	0c000000 	jal	0 <EffectSs_DrawGEffect>
      58:	afa80054 	sw	t0,84(sp)
      5c:	86290042 	lh	t1,66(s1)
      60:	3c010000 	lui	at,0x0
      64:	c4280048 	lwc1	$f8,72(at)
      68:	44892000 	mtc1	t1,$f4
      6c:	8e250000 	lw	a1,0(s1)
      70:	8e260004 	lw	a2,4(s1)
      74:	468021a0 	cvt.s.w	$f6,$f4
      78:	8e270008 	lw	a3,8(s1)
      7c:	27a40120 	addiu	a0,sp,288
      80:	46083002 	mul.s	$f0,$f6,$f8
      84:	0c000000 	jal	0 <EffectSs_DrawGEffect>
      88:	e7a00160 	swc1	$f0,352(sp)
      8c:	c7a00160 	lwc1	$f0,352(sp)
      90:	27a400e0 	addiu	a0,sp,224
      94:	44050000 	mfc1	a1,$f0
      98:	44060000 	mfc1	a2,$f0
      9c:	44070000 	mfc1	a3,$f0
      a0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
      a4:	00000000 	nop
      a8:	8fa50168 	lw	a1,360(sp)
      ac:	3c010001 	lui	at,0x1
      b0:	34211da0 	ori	at,at,0x1da0
      b4:	27a40120 	addiu	a0,sp,288
      b8:	27a60060 	addiu	a2,sp,96
      bc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
      c0:	00a12821 	addu	a1,a1,at
      c4:	27a40060 	addiu	a0,sp,96
      c8:	27a500e0 	addiu	a1,sp,224
      cc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
      d0:	27a600a0 	addiu	a2,sp,160
      d4:	8fa40054 	lw	a0,84(sp)
      d8:	3c018000 	lui	at,0x8000
      dc:	3c0cdb06 	lui	t4,0xdb06
      e0:	00815021 	addu	t2,a0,at
      e4:	3c010000 	lui	at,0x0
      e8:	ac2a0018 	sw	t2,24(at)
      ec:	8e0302d0 	lw	v1,720(s0)
      f0:	358c0018 	ori	t4,t4,0x18
      f4:	27a500a0 	addiu	a1,sp,160
      f8:	246b0008 	addiu	t3,v1,8
      fc:	ae0b02d0 	sw	t3,720(s0)
     100:	ac640004 	sw	a0,4(v1)
     104:	02002025 	move	a0,s0
     108:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     10c:	ac6c0000 	sw	t4,0(v1)
     110:	1040004a 	beqz	v0,23c <EffectSs_DrawGEffect+0x23c>
     114:	3c0fda38 	lui	t7,0xda38
     118:	8e0302d0 	lw	v1,720(s0)
     11c:	35ef0003 	ori	t7,t7,0x3
     120:	3c18db06 	lui	t8,0xdb06
     124:	246d0008 	addiu	t5,v1,8
     128:	ae0d02d0 	sw	t5,720(s0)
     12c:	ac620004 	sw	v0,4(v1)
     130:	ac6f0000 	sw	t7,0(v1)
     134:	8fa40170 	lw	a0,368(sp)
     138:	8e0302d0 	lw	v1,720(s0)
     13c:	37180020 	ori	t8,t8,0x20
     140:	0004c900 	sll	t9,a0,0x4
     144:	00194702 	srl	t0,t9,0x1c
     148:	246e0008 	addiu	t6,v1,8
     14c:	ae0e02d0 	sw	t6,720(s0)
     150:	00084880 	sll	t1,t0,0x2
     154:	3c0a0000 	lui	t2,0x0
     158:	01495021 	addu	t2,t2,t1
     15c:	3c0100ff 	lui	at,0xff
     160:	ac780000 	sw	t8,0(v1)
     164:	8d4a0000 	lw	t2,0(t2)
     168:	3421ffff 	ori	at,at,0xffff
     16c:	00815824 	and	t3,a0,at
     170:	3c018000 	lui	at,0x8000
     174:	014b6021 	addu	t4,t2,t3
     178:	01816821 	addu	t5,t4,at
     17c:	02002025 	move	a0,s0
     180:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     184:	ac6d0004 	sw	t5,4(v1)
     188:	8e0302d0 	lw	v1,720(s0)
     18c:	3c0efa00 	lui	t6,0xfa00
     190:	246f0008 	addiu	t7,v1,8
     194:	ae0f02d0 	sw	t7,720(s0)
     198:	ac6e0000 	sw	t6,0(v1)
     19c:	8638004c 	lh	t8,76(s1)
     1a0:	862c0048 	lh	t4,72(s1)
     1a4:	86290046 	lh	t1,70(s1)
     1a8:	331900ff 	andi	t9,t8,0xff
     1ac:	8638004a 	lh	t8,74(s1)
     1b0:	318d00ff 	andi	t5,t4,0xff
     1b4:	00095600 	sll	t2,t1,0x18
     1b8:	032a5825 	or	t3,t9,t2
     1bc:	000d7c00 	sll	t7,t5,0x10
     1c0:	330800ff 	andi	t0,t8,0xff
     1c4:	00084a00 	sll	t1,t0,0x8
     1c8:	016f7025 	or	t6,t3,t7
     1cc:	01c9c825 	or	t9,t6,t1
     1d0:	ac790004 	sw	t9,4(v1)
     1d4:	8e0302d0 	lw	v1,720(s0)
     1d8:	3c0cfb00 	lui	t4,0xfb00
     1dc:	246a0008 	addiu	t2,v1,8
     1e0:	ae0a02d0 	sw	t2,720(s0)
     1e4:	ac6c0000 	sw	t4,0(v1)
     1e8:	862d0054 	lh	t5,84(s1)
     1ec:	86290050 	lh	t1,80(s1)
     1f0:	8638004e 	lh	t8,78(s1)
     1f4:	31ab00ff 	andi	t3,t5,0xff
     1f8:	862d0052 	lh	t5,82(s1)
     1fc:	313900ff 	andi	t9,t1,0xff
     200:	00184600 	sll	t0,t8,0x18
     204:	01687025 	or	t6,t3,t0
     208:	00195400 	sll	t2,t9,0x10
     20c:	31af00ff 	andi	t7,t5,0xff
     210:	000fc200 	sll	t8,t7,0x8
     214:	01ca6025 	or	t4,t6,t2
     218:	01985825 	or	t3,t4,t8
     21c:	ac6b0004 	sw	t3,4(v1)
     220:	8e0302d0 	lw	v1,720(s0)
     224:	3c09de00 	lui	t1,0xde00
     228:	24680008 	addiu	t0,v1,8
     22c:	ae0802d0 	sw	t0,720(s0)
     230:	ac690000 	sw	t1,0(v1)
     234:	8e390038 	lw	t9,56(s1)
     238:	ac790004 	sw	t9,4(v1)
     23c:	3c060000 	lui	a2,0x0
     240:	24c60024 	addiu	a2,a2,36
     244:	27a40040 	addiu	a0,sp,64
     248:	02002825 	move	a1,s0
     24c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     250:	240700f3 	li	a3,243
     254:	8fbf001c 	lw	ra,28(sp)
     258:	8fb00014 	lw	s0,20(sp)
     25c:	8fb10018 	lw	s1,24(sp)
     260:	03e00008 	jr	ra
     264:	27bd0168 	addiu	sp,sp,360

00000268 <EffectSsDust_Spawn>:
     268:	27bdffb0 	addiu	sp,sp,-80
     26c:	afbf0014 	sw	ra,20(sp)
     270:	afa40050 	sw	a0,80(sp)
     274:	afa50054 	sw	a1,84(sp)
     278:	afa7005c 	sw	a3,92(sp)
     27c:	00c02825 	move	a1,a2
     280:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     284:	27a40018 	addiu	a0,sp,24
     288:	27a40024 	addiu	a0,sp,36
     28c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     290:	8fa5005c 	lw	a1,92(sp)
     294:	27a40030 	addiu	a0,sp,48
     298:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     29c:	8fa50060 	lw	a1,96(sp)
     2a0:	8faf0064 	lw	t7,100(sp)
     2a4:	27ae003c 	addiu	t6,sp,60
     2a8:	27a80040 	addiu	t0,sp,64
     2ac:	89f90000 	lwl	t9,0(t7)
     2b0:	99f90003 	lwr	t9,3(t7)
     2b4:	00002825 	move	a1,zero
     2b8:	24060080 	li	a2,128
     2bc:	a9d90000 	swl	t9,0(t6)
     2c0:	b9d90003 	swr	t9,3(t6)
     2c4:	8fa90068 	lw	t1,104(sp)
     2c8:	27a70018 	addiu	a3,sp,24
     2cc:	892b0000 	lwl	t3,0(t1)
     2d0:	992b0003 	lwr	t3,3(t1)
     2d4:	a90b0000 	swl	t3,0(t0)
     2d8:	b90b0003 	swr	t3,3(t0)
     2dc:	97ac0056 	lhu	t4,86(sp)
     2e0:	87ad006e 	lh	t5,110(sp)
     2e4:	87ae0072 	lh	t6,114(sp)
     2e8:	87af0076 	lh	t7,118(sp)
     2ec:	93b8007b 	lbu	t8,123(sp)
     2f0:	8fa40050 	lw	a0,80(sp)
     2f4:	a7ac004a 	sh	t4,74(sp)
     2f8:	a7ad0044 	sh	t5,68(sp)
     2fc:	a7ae0046 	sh	t6,70(sp)
     300:	a7af0048 	sh	t7,72(sp)
     304:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     308:	a3b8004c 	sb	t8,76(sp)
     30c:	8fbf0014 	lw	ra,20(sp)
     310:	27bd0050 	addiu	sp,sp,80
     314:	03e00008 	jr	ra
     318:	00000000 	nop

0000031c <func_8002829C>:
     31c:	27bdffc8 	addiu	sp,sp,-56
     320:	afa70044 	sw	a3,68(sp)
     324:	8fae0044 	lw	t6,68(sp)
     328:	8faf0048 	lw	t7,72(sp)
     32c:	8fb8004c 	lw	t8,76(sp)
     330:	87b90052 	lh	t9,82(sp)
     334:	87a80056 	lh	t0,86(sp)
     338:	afa60040 	sw	a2,64(sp)
     33c:	00a03025 	move	a2,a1
     340:	afbf0034 	sw	ra,52(sp)
     344:	afa5003c 	sw	a1,60(sp)
     348:	2409000a 	li	t1,10
     34c:	8fa70040 	lw	a3,64(sp)
     350:	afa90024 	sw	t1,36(sp)
     354:	00002825 	move	a1,zero
     358:	afa00028 	sw	zero,40(sp)
     35c:	afae0010 	sw	t6,16(sp)
     360:	afaf0014 	sw	t7,20(sp)
     364:	afb80018 	sw	t8,24(sp)
     368:	afb9001c 	sw	t9,28(sp)
     36c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     370:	afa80020 	sw	t0,32(sp)
     374:	8fbf0034 	lw	ra,52(sp)
     378:	27bd0038 	addiu	sp,sp,56
     37c:	03e00008 	jr	ra
     380:	00000000 	nop

00000384 <func_80028304>:
     384:	27bdffc8 	addiu	sp,sp,-56
     388:	afa70044 	sw	a3,68(sp)
     38c:	8fae0044 	lw	t6,68(sp)
     390:	8faf0048 	lw	t7,72(sp)
     394:	8fb8004c 	lw	t8,76(sp)
     398:	87b90052 	lh	t9,82(sp)
     39c:	87a80056 	lh	t0,86(sp)
     3a0:	afa60040 	sw	a2,64(sp)
     3a4:	00a03025 	move	a2,a1
     3a8:	afbf0034 	sw	ra,52(sp)
     3ac:	afa5003c 	sw	a1,60(sp)
     3b0:	2409000a 	li	t1,10
     3b4:	8fa70040 	lw	a3,64(sp)
     3b8:	afa90024 	sw	t1,36(sp)
     3bc:	24050001 	li	a1,1
     3c0:	afa00028 	sw	zero,40(sp)
     3c4:	afae0010 	sw	t6,16(sp)
     3c8:	afaf0014 	sw	t7,20(sp)
     3cc:	afb80018 	sw	t8,24(sp)
     3d0:	afb9001c 	sw	t9,28(sp)
     3d4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     3d8:	afa80020 	sw	t0,32(sp)
     3dc:	8fbf0034 	lw	ra,52(sp)
     3e0:	27bd0038 	addiu	sp,sp,56
     3e4:	03e00008 	jr	ra
     3e8:	00000000 	nop

000003ec <func_8002836C>:
     3ec:	27bdffc8 	addiu	sp,sp,-56
     3f0:	afa70044 	sw	a3,68(sp)
     3f4:	8fae0044 	lw	t6,68(sp)
     3f8:	8faf0048 	lw	t7,72(sp)
     3fc:	8fb8004c 	lw	t8,76(sp)
     400:	87b90052 	lh	t9,82(sp)
     404:	87a80056 	lh	t0,86(sp)
     408:	87a9005a 	lh	t1,90(sp)
     40c:	afa60040 	sw	a2,64(sp)
     410:	00a03025 	move	a2,a1
     414:	afbf0034 	sw	ra,52(sp)
     418:	afa5003c 	sw	a1,60(sp)
     41c:	8fa70040 	lw	a3,64(sp)
     420:	00002825 	move	a1,zero
     424:	afa00028 	sw	zero,40(sp)
     428:	afae0010 	sw	t6,16(sp)
     42c:	afaf0014 	sw	t7,20(sp)
     430:	afb80018 	sw	t8,24(sp)
     434:	afb9001c 	sw	t9,28(sp)
     438:	afa80020 	sw	t0,32(sp)
     43c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     440:	afa90024 	sw	t1,36(sp)
     444:	8fbf0034 	lw	ra,52(sp)
     448:	27bd0038 	addiu	sp,sp,56
     44c:	03e00008 	jr	ra
     450:	00000000 	nop

00000454 <func_800283D4>:
     454:	27bdffc8 	addiu	sp,sp,-56
     458:	afa70044 	sw	a3,68(sp)
     45c:	8fae0044 	lw	t6,68(sp)
     460:	8faf0048 	lw	t7,72(sp)
     464:	8fb8004c 	lw	t8,76(sp)
     468:	87b90052 	lh	t9,82(sp)
     46c:	87a80056 	lh	t0,86(sp)
     470:	87a9005a 	lh	t1,90(sp)
     474:	afa60040 	sw	a2,64(sp)
     478:	00a03025 	move	a2,a1
     47c:	afbf0034 	sw	ra,52(sp)
     480:	afa5003c 	sw	a1,60(sp)
     484:	8fa70040 	lw	a3,64(sp)
     488:	24050001 	li	a1,1
     48c:	afa00028 	sw	zero,40(sp)
     490:	afae0010 	sw	t6,16(sp)
     494:	afaf0014 	sw	t7,20(sp)
     498:	afb80018 	sw	t8,24(sp)
     49c:	afb9001c 	sw	t9,28(sp)
     4a0:	afa80020 	sw	t0,32(sp)
     4a4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     4a8:	afa90024 	sw	t1,36(sp)
     4ac:	8fbf0034 	lw	ra,52(sp)
     4b0:	27bd0038 	addiu	sp,sp,56
     4b4:	03e00008 	jr	ra
     4b8:	00000000 	nop

000004bc <func_8002843C>:
     4bc:	27bdffc8 	addiu	sp,sp,-56
     4c0:	afa70044 	sw	a3,68(sp)
     4c4:	8fae0044 	lw	t6,68(sp)
     4c8:	8faf0048 	lw	t7,72(sp)
     4cc:	8fb8004c 	lw	t8,76(sp)
     4d0:	87b90052 	lh	t9,82(sp)
     4d4:	87a80056 	lh	t0,86(sp)
     4d8:	87a9005a 	lh	t1,90(sp)
     4dc:	afa60040 	sw	a2,64(sp)
     4e0:	00a03025 	move	a2,a1
     4e4:	afbf0034 	sw	ra,52(sp)
     4e8:	afa5003c 	sw	a1,60(sp)
     4ec:	8fa70040 	lw	a3,64(sp)
     4f0:	24050002 	li	a1,2
     4f4:	afa00028 	sw	zero,40(sp)
     4f8:	afae0010 	sw	t6,16(sp)
     4fc:	afaf0014 	sw	t7,20(sp)
     500:	afb80018 	sw	t8,24(sp)
     504:	afb9001c 	sw	t9,28(sp)
     508:	afa80020 	sw	t0,32(sp)
     50c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     510:	afa90024 	sw	t1,36(sp)
     514:	8fbf0034 	lw	ra,52(sp)
     518:	27bd0038 	addiu	sp,sp,56
     51c:	03e00008 	jr	ra
     520:	00000000 	nop

00000524 <func_800284A4>:
     524:	27bdffc8 	addiu	sp,sp,-56
     528:	afa70044 	sw	a3,68(sp)
     52c:	8fae0044 	lw	t6,68(sp)
     530:	8faf0048 	lw	t7,72(sp)
     534:	8fb8004c 	lw	t8,76(sp)
     538:	87b90052 	lh	t9,82(sp)
     53c:	87a80056 	lh	t0,86(sp)
     540:	afa60040 	sw	a2,64(sp)
     544:	00a03025 	move	a2,a1
     548:	afbf0034 	sw	ra,52(sp)
     54c:	afa5003c 	sw	a1,60(sp)
     550:	2409000a 	li	t1,10
     554:	240a0001 	li	t2,1
     558:	8fa70040 	lw	a3,64(sp)
     55c:	afaa0028 	sw	t2,40(sp)
     560:	afa90024 	sw	t1,36(sp)
     564:	00002825 	move	a1,zero
     568:	afae0010 	sw	t6,16(sp)
     56c:	afaf0014 	sw	t7,20(sp)
     570:	afb80018 	sw	t8,24(sp)
     574:	afb9001c 	sw	t9,28(sp)
     578:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     57c:	afa80020 	sw	t0,32(sp)
     580:	8fbf0034 	lw	ra,52(sp)
     584:	27bd0038 	addiu	sp,sp,56
     588:	03e00008 	jr	ra
     58c:	00000000 	nop

00000590 <func_80028510>:
     590:	27bdffc8 	addiu	sp,sp,-56
     594:	afa70044 	sw	a3,68(sp)
     598:	8fae0044 	lw	t6,68(sp)
     59c:	8faf0048 	lw	t7,72(sp)
     5a0:	8fb8004c 	lw	t8,76(sp)
     5a4:	87b90052 	lh	t9,82(sp)
     5a8:	87a80056 	lh	t0,86(sp)
     5ac:	afa60040 	sw	a2,64(sp)
     5b0:	00a03025 	move	a2,a1
     5b4:	afbf0034 	sw	ra,52(sp)
     5b8:	afa5003c 	sw	a1,60(sp)
     5bc:	2409000a 	li	t1,10
     5c0:	240a0001 	li	t2,1
     5c4:	8fa70040 	lw	a3,64(sp)
     5c8:	afaa0028 	sw	t2,40(sp)
     5cc:	afa90024 	sw	t1,36(sp)
     5d0:	24050001 	li	a1,1
     5d4:	afae0010 	sw	t6,16(sp)
     5d8:	afaf0014 	sw	t7,20(sp)
     5dc:	afb80018 	sw	t8,24(sp)
     5e0:	afb9001c 	sw	t9,28(sp)
     5e4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     5e8:	afa80020 	sw	t0,32(sp)
     5ec:	8fbf0034 	lw	ra,52(sp)
     5f0:	27bd0038 	addiu	sp,sp,56
     5f4:	03e00008 	jr	ra
     5f8:	00000000 	nop

000005fc <func_8002857C>:
     5fc:	27bdffc8 	addiu	sp,sp,-56
     600:	afa70044 	sw	a3,68(sp)
     604:	8fae0044 	lw	t6,68(sp)
     608:	afa60040 	sw	a2,64(sp)
     60c:	3c0f0000 	lui	t7,0x0
     610:	3c180000 	lui	t8,0x0
     614:	00a03025 	move	a2,a1
     618:	afbf0034 	sw	ra,52(sp)
     61c:	afa5003c 	sw	a1,60(sp)
     620:	27180010 	addiu	t8,t8,16
     624:	25ef000c 	addiu	t7,t7,12
     628:	24190064 	li	t9,100
     62c:	24080005 	li	t0,5
     630:	2409000a 	li	t1,10
     634:	8fa70040 	lw	a3,64(sp)
     638:	afa90024 	sw	t1,36(sp)
     63c:	afa80020 	sw	t0,32(sp)
     640:	afb9001c 	sw	t9,28(sp)
     644:	afaf0014 	sw	t7,20(sp)
     648:	afb80018 	sw	t8,24(sp)
     64c:	24050004 	li	a1,4
     650:	afa00028 	sw	zero,40(sp)
     654:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     658:	afae0010 	sw	t6,16(sp)
     65c:	8fbf0034 	lw	ra,52(sp)
     660:	27bd0038 	addiu	sp,sp,56
     664:	03e00008 	jr	ra
     668:	00000000 	nop

0000066c <func_800285EC>:
     66c:	27bdffc8 	addiu	sp,sp,-56
     670:	afa70044 	sw	a3,68(sp)
     674:	8fae0044 	lw	t6,68(sp)
     678:	afa60040 	sw	a2,64(sp)
     67c:	3c0f0000 	lui	t7,0x0
     680:	3c180000 	lui	t8,0x0
     684:	00a03025 	move	a2,a1
     688:	afbf0034 	sw	ra,52(sp)
     68c:	afa5003c 	sw	a1,60(sp)
     690:	27180010 	addiu	t8,t8,16
     694:	25ef000c 	addiu	t7,t7,12
     698:	24190064 	li	t9,100
     69c:	24080005 	li	t0,5
     6a0:	2409000a 	li	t1,10
     6a4:	8fa70040 	lw	a3,64(sp)
     6a8:	afa90024 	sw	t1,36(sp)
     6ac:	afa80020 	sw	t0,32(sp)
     6b0:	afb9001c 	sw	t9,28(sp)
     6b4:	afaf0014 	sw	t7,20(sp)
     6b8:	afb80018 	sw	t8,24(sp)
     6bc:	24050005 	li	a1,5
     6c0:	afa00028 	sw	zero,40(sp)
     6c4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     6c8:	afae0010 	sw	t6,16(sp)
     6cc:	8fbf0034 	lw	ra,52(sp)
     6d0:	27bd0038 	addiu	sp,sp,56
     6d4:	03e00008 	jr	ra
     6d8:	00000000 	nop

000006dc <func_8002865C>:
     6dc:	27bdffc8 	addiu	sp,sp,-56
     6e0:	afa70044 	sw	a3,68(sp)
     6e4:	8fae0044 	lw	t6,68(sp)
     6e8:	87b9004a 	lh	t9,74(sp)
     6ec:	87a8004e 	lh	t0,78(sp)
     6f0:	afa60040 	sw	a2,64(sp)
     6f4:	3c0f0000 	lui	t7,0x0
     6f8:	3c180000 	lui	t8,0x0
     6fc:	00a03025 	move	a2,a1
     700:	afbf0034 	sw	ra,52(sp)
     704:	afa5003c 	sw	a1,60(sp)
     708:	27180010 	addiu	t8,t8,16
     70c:	25ef000c 	addiu	t7,t7,12
     710:	2409000a 	li	t1,10
     714:	8fa70040 	lw	a3,64(sp)
     718:	afa90024 	sw	t1,36(sp)
     71c:	afaf0014 	sw	t7,20(sp)
     720:	afb80018 	sw	t8,24(sp)
     724:	24050004 	li	a1,4
     728:	afa00028 	sw	zero,40(sp)
     72c:	afae0010 	sw	t6,16(sp)
     730:	afb9001c 	sw	t9,28(sp)
     734:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     738:	afa80020 	sw	t0,32(sp)
     73c:	8fbf0034 	lw	ra,52(sp)
     740:	27bd0038 	addiu	sp,sp,56
     744:	03e00008 	jr	ra
     748:	00000000 	nop

0000074c <func_800286CC>:
     74c:	27bdffc8 	addiu	sp,sp,-56
     750:	afa70044 	sw	a3,68(sp)
     754:	8fae0044 	lw	t6,68(sp)
     758:	87b9004a 	lh	t9,74(sp)
     75c:	87a8004e 	lh	t0,78(sp)
     760:	afa60040 	sw	a2,64(sp)
     764:	3c0f0000 	lui	t7,0x0
     768:	3c180000 	lui	t8,0x0
     76c:	00a03025 	move	a2,a1
     770:	afbf0034 	sw	ra,52(sp)
     774:	afa5003c 	sw	a1,60(sp)
     778:	27180010 	addiu	t8,t8,16
     77c:	25ef000c 	addiu	t7,t7,12
     780:	2409000a 	li	t1,10
     784:	8fa70040 	lw	a3,64(sp)
     788:	afa90024 	sw	t1,36(sp)
     78c:	afaf0014 	sw	t7,20(sp)
     790:	afb80018 	sw	t8,24(sp)
     794:	24050005 	li	a1,5
     798:	afa00028 	sw	zero,40(sp)
     79c:	afae0010 	sw	t6,16(sp)
     7a0:	afb9001c 	sw	t9,28(sp)
     7a4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     7a8:	afa80020 	sw	t0,32(sp)
     7ac:	8fbf0034 	lw	ra,52(sp)
     7b0:	27bd0038 	addiu	sp,sp,56
     7b4:	03e00008 	jr	ra
     7b8:	00000000 	nop

000007bc <func_8002873C>:
     7bc:	27bdffc8 	addiu	sp,sp,-56
     7c0:	afa70044 	sw	a3,68(sp)
     7c4:	8fae0044 	lw	t6,68(sp)
     7c8:	87b9004a 	lh	t9,74(sp)
     7cc:	87a8004e 	lh	t0,78(sp)
     7d0:	87a90052 	lh	t1,82(sp)
     7d4:	afa60040 	sw	a2,64(sp)
     7d8:	3c0f0000 	lui	t7,0x0
     7dc:	3c180000 	lui	t8,0x0
     7e0:	00a03025 	move	a2,a1
     7e4:	afbf0034 	sw	ra,52(sp)
     7e8:	afa5003c 	sw	a1,60(sp)
     7ec:	27180010 	addiu	t8,t8,16
     7f0:	25ef000c 	addiu	t7,t7,12
     7f4:	8fa70040 	lw	a3,64(sp)
     7f8:	afaf0014 	sw	t7,20(sp)
     7fc:	afb80018 	sw	t8,24(sp)
     800:	24050004 	li	a1,4
     804:	afa00028 	sw	zero,40(sp)
     808:	afae0010 	sw	t6,16(sp)
     80c:	afb9001c 	sw	t9,28(sp)
     810:	afa80020 	sw	t0,32(sp)
     814:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     818:	afa90024 	sw	t1,36(sp)
     81c:	8fbf0034 	lw	ra,52(sp)
     820:	27bd0038 	addiu	sp,sp,56
     824:	03e00008 	jr	ra
     828:	00000000 	nop

0000082c <func_800287AC>:
     82c:	27bdffc8 	addiu	sp,sp,-56
     830:	afa70044 	sw	a3,68(sp)
     834:	8fae0044 	lw	t6,68(sp)
     838:	87b9004a 	lh	t9,74(sp)
     83c:	87a8004e 	lh	t0,78(sp)
     840:	87a90052 	lh	t1,82(sp)
     844:	afa60040 	sw	a2,64(sp)
     848:	3c0f0000 	lui	t7,0x0
     84c:	3c180000 	lui	t8,0x0
     850:	00a03025 	move	a2,a1
     854:	afbf0034 	sw	ra,52(sp)
     858:	afa5003c 	sw	a1,60(sp)
     85c:	27180010 	addiu	t8,t8,16
     860:	25ef000c 	addiu	t7,t7,12
     864:	8fa70040 	lw	a3,64(sp)
     868:	afaf0014 	sw	t7,20(sp)
     86c:	afb80018 	sw	t8,24(sp)
     870:	24050005 	li	a1,5
     874:	afa00028 	sw	zero,40(sp)
     878:	afae0010 	sw	t6,16(sp)
     87c:	afb9001c 	sw	t9,28(sp)
     880:	afa80020 	sw	t0,32(sp)
     884:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     888:	afa90024 	sw	t1,36(sp)
     88c:	8fbf0034 	lw	ra,52(sp)
     890:	27bd0038 	addiu	sp,sp,56
     894:	03e00008 	jr	ra
     898:	00000000 	nop

0000089c <func_8002881C>:
     89c:	27bdffd8 	addiu	sp,sp,-40
     8a0:	8fae0038 	lw	t6,56(sp)
     8a4:	8faf003c 	lw	t7,60(sp)
     8a8:	afbf0024 	sw	ra,36(sp)
     8ac:	24180064 	li	t8,100
     8b0:	24190005 	li	t9,5
     8b4:	afb9001c 	sw	t9,28(sp)
     8b8:	afb80018 	sw	t8,24(sp)
     8bc:	afae0010 	sw	t6,16(sp)
     8c0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     8c4:	afaf0014 	sw	t7,20(sp)
     8c8:	8fbf0024 	lw	ra,36(sp)
     8cc:	27bd0028 	addiu	sp,sp,40
     8d0:	03e00008 	jr	ra
     8d4:	00000000 	nop

000008d8 <func_80028858>:
     8d8:	27bdffd8 	addiu	sp,sp,-40
     8dc:	8fae0038 	lw	t6,56(sp)
     8e0:	8faf003c 	lw	t7,60(sp)
     8e4:	afbf0024 	sw	ra,36(sp)
     8e8:	24180064 	li	t8,100
     8ec:	24190005 	li	t9,5
     8f0:	afb9001c 	sw	t9,28(sp)
     8f4:	afb80018 	sw	t8,24(sp)
     8f8:	afae0010 	sw	t6,16(sp)
     8fc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     900:	afaf0014 	sw	t7,20(sp)
     904:	8fbf0024 	lw	ra,36(sp)
     908:	27bd0028 	addiu	sp,sp,40
     90c:	03e00008 	jr	ra
     910:	00000000 	nop

00000914 <func_80028894>:
     914:	27bdffd8 	addiu	sp,sp,-40
     918:	afbf001c 	sw	ra,28(sp)
     91c:	afb00018 	sw	s0,24(sp)
     920:	00c08025 	move	s0,a2
     924:	afa40028 	sw	a0,40(sp)
     928:	afa5002c 	sw	a1,44(sp)
     92c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     930:	afa70034 	sw	a3,52(sp)
     934:	c7a4002c 	lwc1	$f4,44(sp)
     938:	46040182 	mul.s	$f6,$f0,$f4
     93c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     940:	e7a60020 	swc1	$f6,32(sp)
     944:	3c014780 	lui	at,0x4780
     948:	44814000 	mtc1	at,$f8
     94c:	8faf0028 	lw	t7,40(sp)
     950:	46080282 	mul.s	$f10,$f0,$f8
     954:	4600540d 	trunc.w.s	$f16,$f10
     958:	44028000 	mfc1	v0,$f16
     95c:	00000000 	nop
     960:	a7a20026 	sh	v0,38(sp)
     964:	8df90000 	lw	t9,0(t7)
     968:	00022400 	sll	a0,v0,0x10
     96c:	00042403 	sra	a0,a0,0x10
     970:	ae190000 	sw	t9,0(s0)
     974:	8df80004 	lw	t8,4(t7)
     978:	ae180004 	sw	t8,4(s0)
     97c:	8df90008 	lw	t9,8(t7)
     980:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     984:	ae190008 	sw	t9,8(s0)
     988:	c7a40020 	lwc1	$f4,32(sp)
     98c:	c6120000 	lwc1	$f18,0(s0)
     990:	46040182 	mul.s	$f6,$f0,$f4
     994:	46069200 	add.s	$f8,$f18,$f6
     998:	e6080000 	swc1	$f8,0(s0)
     99c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     9a0:	87a40026 	lh	a0,38(sp)
     9a4:	c7b00020 	lwc1	$f16,32(sp)
     9a8:	c60a0008 	lwc1	$f10,8(s0)
     9ac:	3c013f80 	lui	at,0x3f80
     9b0:	46100102 	mul.s	$f4,$f0,$f16
     9b4:	44813000 	mtc1	at,$f6
     9b8:	46045480 	add.s	$f18,$f10,$f4
     9bc:	e6120008 	swc1	$f18,8(s0)
     9c0:	8fa80034 	lw	t0,52(sp)
     9c4:	e5060004 	swc1	$f6,4(t0)
     9c8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     9cc:	87a40026 	lh	a0,38(sp)
     9d0:	8fa90034 	lw	t1,52(sp)
     9d4:	e5200000 	swc1	$f0,0(t1)
     9d8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     9dc:	87a40026 	lh	a0,38(sp)
     9e0:	8fa20038 	lw	v0,56(sp)
     9e4:	8faa0034 	lw	t2,52(sp)
     9e8:	44801000 	mtc1	zero,$f2
     9ec:	e5400008 	swc1	$f0,8(t2)
     9f0:	e4420000 	swc1	$f2,0(v0)
     9f4:	e4420004 	swc1	$f2,4(v0)
     9f8:	e4420008 	swc1	$f2,8(v0)
     9fc:	8fbf001c 	lw	ra,28(sp)
     a00:	8fb00018 	lw	s0,24(sp)
     a04:	27bd0028 	addiu	sp,sp,40
     a08:	03e00008 	jr	ra
     a0c:	00000000 	nop

00000a10 <func_80028990>:
     a10:	27bdff88 	addiu	sp,sp,-120
     a14:	f7b40028 	sdc1	$f20,40(sp)
     a18:	afb60048 	sw	s6,72(sp)
     a1c:	afb50044 	sw	s5,68(sp)
     a20:	afb40040 	sw	s4,64(sp)
     a24:	afb3003c 	sw	s3,60(sp)
     a28:	afb20038 	sw	s2,56(sp)
     a2c:	afb10034 	sw	s1,52(sp)
     a30:	afb00030 	sw	s0,48(sp)
     a34:	4485a000 	mtc1	a1,$f20
     a38:	00c0a025 	move	s4,a2
     a3c:	0080a825 	move	s5,a0
     a40:	afbf004c 	sw	ra,76(sp)
     a44:	00008025 	move	s0,zero
     a48:	27b10068 	addiu	s1,sp,104
     a4c:	27b2005c 	addiu	s2,sp,92
     a50:	27b30050 	addiu	s3,sp,80
     a54:	24160014 	li	s6,20
     a58:	4405a000 	mfc1	a1,$f20
     a5c:	02802025 	move	a0,s4
     a60:	02203025 	move	a2,s1
     a64:	02403825 	move	a3,s2
     a68:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     a6c:	afb30010 	sw	s3,16(sp)
     a70:	240e0064 	li	t6,100
     a74:	240f001e 	li	t7,30
     a78:	24180007 	li	t8,7
     a7c:	afb80018 	sw	t8,24(sp)
     a80:	afaf0014 	sw	t7,20(sp)
     a84:	afae0010 	sw	t6,16(sp)
     a88:	02a02025 	move	a0,s5
     a8c:	02202825 	move	a1,s1
     a90:	02403025 	move	a2,s2
     a94:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     a98:	02603825 	move	a3,s3
     a9c:	26100001 	addiu	s0,s0,1
     aa0:	5616ffee 	bnel	s0,s6,a5c <func_80028990+0x4c>
     aa4:	4405a000 	mfc1	a1,$f20
     aa8:	8fbf004c 	lw	ra,76(sp)
     aac:	d7b40028 	ldc1	$f20,40(sp)
     ab0:	8fb00030 	lw	s0,48(sp)
     ab4:	8fb10034 	lw	s1,52(sp)
     ab8:	8fb20038 	lw	s2,56(sp)
     abc:	8fb3003c 	lw	s3,60(sp)
     ac0:	8fb40040 	lw	s4,64(sp)
     ac4:	8fb50044 	lw	s5,68(sp)
     ac8:	8fb60048 	lw	s6,72(sp)
     acc:	03e00008 	jr	ra
     ad0:	27bd0078 	addiu	sp,sp,120

00000ad4 <func_80028A54>:
     ad4:	27bdff88 	addiu	sp,sp,-120
     ad8:	f7b40028 	sdc1	$f20,40(sp)
     adc:	afb60048 	sw	s6,72(sp)
     ae0:	afb50044 	sw	s5,68(sp)
     ae4:	afb40040 	sw	s4,64(sp)
     ae8:	afb3003c 	sw	s3,60(sp)
     aec:	afb20038 	sw	s2,56(sp)
     af0:	afb10034 	sw	s1,52(sp)
     af4:	afb00030 	sw	s0,48(sp)
     af8:	4485a000 	mtc1	a1,$f20
     afc:	00c0a025 	move	s4,a2
     b00:	0080a825 	move	s5,a0
     b04:	afbf004c 	sw	ra,76(sp)
     b08:	00008025 	move	s0,zero
     b0c:	27b10068 	addiu	s1,sp,104
     b10:	27b2005c 	addiu	s2,sp,92
     b14:	27b30050 	addiu	s3,sp,80
     b18:	24160014 	li	s6,20
     b1c:	4405a000 	mfc1	a1,$f20
     b20:	02802025 	move	a0,s4
     b24:	02203025 	move	a2,s1
     b28:	02403825 	move	a3,s2
     b2c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     b30:	afb30010 	sw	s3,16(sp)
     b34:	240e0064 	li	t6,100
     b38:	240f001e 	li	t7,30
     b3c:	24180007 	li	t8,7
     b40:	afb80018 	sw	t8,24(sp)
     b44:	afaf0014 	sw	t7,20(sp)
     b48:	afae0010 	sw	t6,16(sp)
     b4c:	02a02025 	move	a0,s5
     b50:	02202825 	move	a1,s1
     b54:	02403025 	move	a2,s2
     b58:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     b5c:	02603825 	move	a3,s3
     b60:	26100001 	addiu	s0,s0,1
     b64:	5616ffee 	bnel	s0,s6,b20 <func_80028A54+0x4c>
     b68:	4405a000 	mfc1	a1,$f20
     b6c:	8fbf004c 	lw	ra,76(sp)
     b70:	d7b40028 	ldc1	$f20,40(sp)
     b74:	8fb00030 	lw	s0,48(sp)
     b78:	8fb10034 	lw	s1,52(sp)
     b7c:	8fb20038 	lw	s2,56(sp)
     b80:	8fb3003c 	lw	s3,60(sp)
     b84:	8fb40040 	lw	s4,64(sp)
     b88:	8fb50044 	lw	s5,68(sp)
     b8c:	8fb60048 	lw	s6,72(sp)
     b90:	03e00008 	jr	ra
     b94:	27bd0078 	addiu	sp,sp,120

00000b98 <EffectSsKiraKira_SpawnSmallYellow>:
     b98:	27bdffd0 	addiu	sp,sp,-48
     b9c:	3c0e0000 	lui	t6,0x0
     ba0:	afbf0024 	sw	ra,36(sp)
     ba4:	25ce0014 	addiu	t6,t6,20
     ba8:	8dd80000 	lw	t8,0(t6)
     bac:	27a2002c 	addiu	v0,sp,44
     bb0:	3c190000 	lui	t9,0x0
     bb4:	27390018 	addiu	t9,t9,24
     bb8:	ac580000 	sw	t8,0(v0)
     bbc:	8f290000 	lw	t1,0(t9)
     bc0:	27a30028 	addiu	v1,sp,40
     bc4:	240a03e8 	li	t2,1000
     bc8:	ac690000 	sw	t1,0(v1)
     bcc:	240b0010 	li	t3,16
     bd0:	afab001c 	sw	t3,28(sp)
     bd4:	afaa0018 	sw	t2,24(sp)
     bd8:	afa30014 	sw	v1,20(sp)
     bdc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     be0:	afa20010 	sw	v0,16(sp)
     be4:	8fbf0024 	lw	ra,36(sp)
     be8:	27bd0030 	addiu	sp,sp,48
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <EffectSsKiraKira_SpawnSmall>:
     bf4:	27bdffd8 	addiu	sp,sp,-40
     bf8:	8fae0038 	lw	t6,56(sp)
     bfc:	8faf003c 	lw	t7,60(sp)
     c00:	afbf0024 	sw	ra,36(sp)
     c04:	241803e8 	li	t8,1000
     c08:	24190010 	li	t9,16
     c0c:	afb9001c 	sw	t9,28(sp)
     c10:	afb80018 	sw	t8,24(sp)
     c14:	afae0010 	sw	t6,16(sp)
     c18:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     c1c:	afaf0014 	sw	t7,20(sp)
     c20:	8fbf0024 	lw	ra,36(sp)
     c24:	27bd0028 	addiu	sp,sp,40
     c28:	03e00008 	jr	ra
     c2c:	00000000 	nop

00000c30 <EffectSsKiraKira_SpawnDispersed>:
     c30:	27bdffa8 	addiu	sp,sp,-88
     c34:	afbf0014 	sw	ra,20(sp)
     c38:	afa40058 	sw	a0,88(sp)
     c3c:	afa60060 	sw	a2,96(sp)
     c40:	afa70064 	sw	a3,100(sp)
     c44:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     c48:	27a4001c 	addiu	a0,sp,28
     c4c:	27a40028 	addiu	a0,sp,40
     c50:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     c54:	8fa50060 	lw	a1,96(sp)
     c58:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     c5c:	00000000 	nop
     c60:	c7a2002c 	lwc1	$f2,44(sp)
     c64:	3c013f00 	lui	at,0x3f00
     c68:	44814000 	mtc1	at,$f8
     c6c:	46020102 	mul.s	$f4,$f0,$f2
     c70:	27a40034 	addiu	a0,sp,52
     c74:	8fa50064 	lw	a1,100(sp)
     c78:	46022180 	add.s	$f6,$f4,$f2
     c7c:	46083082 	mul.s	$f2,$f6,$f8
     c80:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     c84:	e7a2002c 	swc1	$f2,44(sp)
     c88:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     c8c:	00000000 	nop
     c90:	c7a20038 	lwc1	$f2,56(sp)
     c94:	3c013f00 	lui	at,0x3f00
     c98:	44819000 	mtc1	at,$f18
     c9c:	46020282 	mul.s	$f10,$f0,$f2
     ca0:	8fae0074 	lw	t6,116(sp)
     ca4:	240f1518 	li	t7,5400
     ca8:	a3a00054 	sb	zero,84(sp)
     cac:	a7af0050 	sh	t7,80(sp)
     cb0:	afae004c 	sw	t6,76(sp)
     cb4:	46025400 	add.s	$f16,$f10,$f2
     cb8:	46128082 	mul.s	$f2,$f16,$f18
     cbc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     cc0:	e7a20038 	swc1	$f2,56(sp)
     cc4:	3c014680 	lui	at,0x4680
     cc8:	44812000 	mtc1	at,$f4
     ccc:	87a80072 	lh	t0,114(sp)
     cd0:	8faa0068 	lw	t2,104(sp)
     cd4:	46040182 	mul.s	$f6,$f0,$f4
     cd8:	a7a8004a 	sh	t0,74(sp)
     cdc:	27a90040 	addiu	t1,sp,64
     ce0:	27ad0044 	addiu	t5,sp,68
     ce4:	3c01437f 	lui	at,0x437f
     ce8:	44815000 	mtc1	at,$f10
     cec:	24050001 	li	a1,1
     cf0:	4600320d 	trunc.w.s	$f8,$f6
     cf4:	24060080 	li	a2,128
     cf8:	27a7001c 	addiu	a3,sp,28
     cfc:	44194000 	mfc1	t9,$f8
     d00:	00000000 	nop
     d04:	a7b90052 	sh	t9,82(sp)
     d08:	894c0000 	lwl	t4,0(t2)
     d0c:	994c0003 	lwr	t4,3(t2)
     d10:	a92c0000 	swl	t4,0(t1)
     d14:	b92c0003 	swr	t4,3(t1)
     d18:	8fae006c 	lw	t6,108(sp)
     d1c:	89d80000 	lwl	t8,0(t6)
     d20:	99d80003 	lwr	t8,3(t6)
     d24:	a9b80000 	swl	t8,0(t5)
     d28:	b9b80003 	swr	t8,3(t5)
     d2c:	8fb9004c 	lw	t9,76(sp)
     d30:	8fa40058 	lw	a0,88(sp)
     d34:	44998000 	mtc1	t9,$f16
     d38:	00000000 	nop
     d3c:	468084a0 	cvt.s.w	$f18,$f16
     d40:	46125083 	div.s	$f2,$f10,$f18
     d44:	46001087 	neg.s	$f2,$f2
     d48:	46021100 	add.s	$f4,$f2,$f2
     d4c:	4600218d 	trunc.w.s	$f6,$f4
     d50:	44093000 	mfc1	t1,$f6
     d54:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     d58:	a7a90048 	sh	t1,72(sp)
     d5c:	8fbf0014 	lw	ra,20(sp)
     d60:	27bd0058 	addiu	sp,sp,88
     d64:	03e00008 	jr	ra
     d68:	00000000 	nop

00000d6c <EffectSsKiraKira_SpawnFocused>:
     d6c:	27bdffa8 	addiu	sp,sp,-88
     d70:	afbf0014 	sw	ra,20(sp)
     d74:	afa40058 	sw	a0,88(sp)
     d78:	afa60060 	sw	a2,96(sp)
     d7c:	afa70064 	sw	a3,100(sp)
     d80:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     d84:	27a4001c 	addiu	a0,sp,28
     d88:	27a40028 	addiu	a0,sp,40
     d8c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     d90:	8fa50060 	lw	a1,96(sp)
     d94:	27a40034 	addiu	a0,sp,52
     d98:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     d9c:	8fa50064 	lw	a1,100(sp)
     da0:	8fae0074 	lw	t6,116(sp)
     da4:	240f0001 	li	t7,1
     da8:	24181518 	li	t8,5400
     dac:	a3af0054 	sb	t7,84(sp)
     db0:	a7b80050 	sh	t8,80(sp)
     db4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     db8:	afae004c 	sw	t6,76(sp)
     dbc:	3c014680 	lui	at,0x4680
     dc0:	44812000 	mtc1	at,$f4
     dc4:	87a90072 	lh	t1,114(sp)
     dc8:	27a40040 	addiu	a0,sp,64
     dcc:	46040182 	mul.s	$f6,$f0,$f4
     dd0:	8fa50068 	lw	a1,104(sp)
     dd4:	a7a9004a 	sh	t1,74(sp)
     dd8:	4600320d 	trunc.w.s	$f8,$f6
     ddc:	44084000 	mfc1	t0,$f8
     de0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     de4:	a7a80052 	sh	t0,82(sp)
     de8:	27a40044 	addiu	a0,sp,68
     dec:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     df0:	8fa5006c 	lw	a1,108(sp)
     df4:	8faa004c 	lw	t2,76(sp)
     df8:	3c01437f 	lui	at,0x437f
     dfc:	44815000 	mtc1	at,$f10
     e00:	448a8000 	mtc1	t2,$f16
     e04:	8fa40058 	lw	a0,88(sp)
     e08:	24050001 	li	a1,1
     e0c:	468084a0 	cvt.s.w	$f18,$f16
     e10:	24060080 	li	a2,128
     e14:	27a7001c 	addiu	a3,sp,28
     e18:	46125003 	div.s	$f0,$f10,$f18
     e1c:	46000007 	neg.s	$f0,$f0
     e20:	46000100 	add.s	$f4,$f0,$f0
     e24:	4600218d 	trunc.w.s	$f6,$f4
     e28:	440c3000 	mfc1	t4,$f6
     e2c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     e30:	a7ac0048 	sh	t4,72(sp)
     e34:	8fbf0014 	lw	ra,20(sp)
     e38:	27bd0058 	addiu	sp,sp,88
     e3c:	03e00008 	jr	ra
     e40:	00000000 	nop

00000e44 <EffectSsBomb_Spawn>:
     e44:	27bdffc0 	addiu	sp,sp,-64
     e48:	afbf0014 	sw	ra,20(sp)
     e4c:	afa40040 	sw	a0,64(sp)
     e50:	afa60048 	sw	a2,72(sp)
     e54:	afa7004c 	sw	a3,76(sp)
     e58:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     e5c:	27a4001c 	addiu	a0,sp,28
     e60:	27a40028 	addiu	a0,sp,40
     e64:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     e68:	8fa50048 	lw	a1,72(sp)
     e6c:	27a40034 	addiu	a0,sp,52
     e70:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     e74:	8fa5004c 	lw	a1,76(sp)
     e78:	8fa40040 	lw	a0,64(sp)
     e7c:	24050002 	li	a1,2
     e80:	24060080 	li	a2,128
     e84:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     e88:	27a7001c 	addiu	a3,sp,28
     e8c:	8fbf0014 	lw	ra,20(sp)
     e90:	27bd0040 	addiu	sp,sp,64
     e94:	03e00008 	jr	ra
     e98:	00000000 	nop

00000e9c <EffectSsBomb2_SpawnFade>:
     e9c:	27bdffb8 	addiu	sp,sp,-72
     ea0:	afbf0014 	sw	ra,20(sp)
     ea4:	afa40048 	sw	a0,72(sp)
     ea8:	afa60050 	sw	a2,80(sp)
     eac:	afa70054 	sw	a3,84(sp)
     eb0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     eb4:	27a4001c 	addiu	a0,sp,28
     eb8:	27a40028 	addiu	a0,sp,40
     ebc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     ec0:	8fa50050 	lw	a1,80(sp)
     ec4:	27a40034 	addiu	a0,sp,52
     ec8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     ecc:	8fa50054 	lw	a1,84(sp)
     ed0:	240e0064 	li	t6,100
     ed4:	a7ae0040 	sh	t6,64(sp)
     ed8:	a7a00042 	sh	zero,66(sp)
     edc:	a3a00044 	sb	zero,68(sp)
     ee0:	8fa40048 	lw	a0,72(sp)
     ee4:	24050003 	li	a1,3
     ee8:	2406000a 	li	a2,10
     eec:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     ef0:	27a7001c 	addiu	a3,sp,28
     ef4:	8fbf0014 	lw	ra,20(sp)
     ef8:	27bd0048 	addiu	sp,sp,72
     efc:	03e00008 	jr	ra
     f00:	00000000 	nop

00000f04 <EffectSsBomb2_SpawnLayered>:
     f04:	27bdffb8 	addiu	sp,sp,-72
     f08:	afbf0014 	sw	ra,20(sp)
     f0c:	afa40048 	sw	a0,72(sp)
     f10:	afa60050 	sw	a2,80(sp)
     f14:	afa70054 	sw	a3,84(sp)
     f18:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     f1c:	27a4001c 	addiu	a0,sp,28
     f20:	27a40028 	addiu	a0,sp,40
     f24:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     f28:	8fa50050 	lw	a1,80(sp)
     f2c:	27a40034 	addiu	a0,sp,52
     f30:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     f34:	8fa50054 	lw	a1,84(sp)
     f38:	87ae005a 	lh	t6,90(sp)
     f3c:	87af005e 	lh	t7,94(sp)
     f40:	24180001 	li	t8,1
     f44:	a3b80044 	sb	t8,68(sp)
     f48:	8fa40048 	lw	a0,72(sp)
     f4c:	24050003 	li	a1,3
     f50:	2406000a 	li	a2,10
     f54:	27a7001c 	addiu	a3,sp,28
     f58:	a7ae0040 	sh	t6,64(sp)
     f5c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     f60:	a7af0042 	sh	t7,66(sp)
     f64:	8fbf0014 	lw	ra,20(sp)
     f68:	27bd0048 	addiu	sp,sp,72
     f6c:	03e00008 	jr	ra
     f70:	00000000 	nop

00000f74 <EffectSsBlast_Spawn>:
     f74:	27bdffb0 	addiu	sp,sp,-80
     f78:	afbf0014 	sw	ra,20(sp)
     f7c:	afa40050 	sw	a0,80(sp)
     f80:	afa60058 	sw	a2,88(sp)
     f84:	afa7005c 	sw	a3,92(sp)
     f88:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     f8c:	27a4001c 	addiu	a0,sp,28
     f90:	27a40028 	addiu	a0,sp,40
     f94:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     f98:	8fa50058 	lw	a1,88(sp)
     f9c:	27a40034 	addiu	a0,sp,52
     fa0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     fa4:	8fa5005c 	lw	a1,92(sp)
     fa8:	27a40040 	addiu	a0,sp,64
     fac:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     fb0:	8fa50060 	lw	a1,96(sp)
     fb4:	27a40044 	addiu	a0,sp,68
     fb8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     fbc:	8fa50064 	lw	a1,100(sp)
     fc0:	87ae006a 	lh	t6,106(sp)
     fc4:	87af006e 	lh	t7,110(sp)
     fc8:	87b80072 	lh	t8,114(sp)
     fcc:	87b90076 	lh	t9,118(sp)
     fd0:	8fa40050 	lw	a0,80(sp)
     fd4:	24050004 	li	a1,4
     fd8:	24060080 	li	a2,128
     fdc:	27a7001c 	addiu	a3,sp,28
     fe0:	a7ae0048 	sh	t6,72(sp)
     fe4:	a7af004a 	sh	t7,74(sp)
     fe8:	a7b8004c 	sh	t8,76(sp)
     fec:	0c000000 	jal	0 <EffectSs_DrawGEffect>
     ff0:	a7b9004e 	sh	t9,78(sp)
     ff4:	8fbf0014 	lw	ra,20(sp)
     ff8:	27bd0050 	addiu	sp,sp,80
     ffc:	03e00008 	jr	ra
    1000:	00000000 	nop

00001004 <EffectSsBlast_SpawnWhiteCustomScale>:
    1004:	27bdffd0 	addiu	sp,sp,-48
    1008:	87b80042 	lh	t8,66(sp)
    100c:	87b90046 	lh	t9,70(sp)
    1010:	87a9004a 	lh	t1,74(sp)
    1014:	3c0e0000 	lui	t6,0x0
    1018:	3c0f0000 	lui	t7,0x0
    101c:	afbf002c 	sw	ra,44(sp)
    1020:	25ef0020 	addiu	t7,t7,32
    1024:	25ce001c 	addiu	t6,t6,28
    1028:	24080023 	li	t0,35
    102c:	afa80020 	sw	t0,32(sp)
    1030:	afae0010 	sw	t6,16(sp)
    1034:	afaf0014 	sw	t7,20(sp)
    1038:	afb80018 	sw	t8,24(sp)
    103c:	afb9001c 	sw	t9,28(sp)
    1040:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1044:	afa90024 	sw	t1,36(sp)
    1048:	8fbf002c 	lw	ra,44(sp)
    104c:	27bd0030 	addiu	sp,sp,48
    1050:	03e00008 	jr	ra
    1054:	00000000 	nop

00001058 <EffectSsBlast_SpawnShockwave>:
    1058:	27bdffd0 	addiu	sp,sp,-48
    105c:	8fae0040 	lw	t6,64(sp)
    1060:	8faf0044 	lw	t7,68(sp)
    1064:	87a9004a 	lh	t1,74(sp)
    1068:	afbf002c 	sw	ra,44(sp)
    106c:	24180064 	li	t8,100
    1070:	24190177 	li	t9,375
    1074:	24080023 	li	t0,35
    1078:	afa80020 	sw	t0,32(sp)
    107c:	afb9001c 	sw	t9,28(sp)
    1080:	afb80018 	sw	t8,24(sp)
    1084:	afae0010 	sw	t6,16(sp)
    1088:	afaf0014 	sw	t7,20(sp)
    108c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1090:	afa90024 	sw	t1,36(sp)
    1094:	8fbf002c 	lw	ra,44(sp)
    1098:	27bd0030 	addiu	sp,sp,48
    109c:	03e00008 	jr	ra
    10a0:	00000000 	nop

000010a4 <EffectSsBlast_SpawnWhiteShockwave>:
    10a4:	27bdffd8 	addiu	sp,sp,-40
    10a8:	3c0e0000 	lui	t6,0x0
    10ac:	3c0f0000 	lui	t7,0x0
    10b0:	afbf0024 	sw	ra,36(sp)
    10b4:	25ef0028 	addiu	t7,t7,40
    10b8:	25ce0024 	addiu	t6,t6,36
    10bc:	2418000a 	li	t8,10
    10c0:	afb80018 	sw	t8,24(sp)
    10c4:	afae0010 	sw	t6,16(sp)
    10c8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    10cc:	afaf0014 	sw	t7,20(sp)
    10d0:	8fbf0024 	lw	ra,36(sp)
    10d4:	27bd0028 	addiu	sp,sp,40
    10d8:	03e00008 	jr	ra
    10dc:	00000000 	nop

000010e0 <EffectSsGSpk_SpawnAccel>:
    10e0:	27bdffb0 	addiu	sp,sp,-80
    10e4:	afbf0014 	sw	ra,20(sp)
    10e8:	afa40050 	sw	a0,80(sp)
    10ec:	afa50054 	sw	a1,84(sp)
    10f0:	afa7005c 	sw	a3,92(sp)
    10f4:	00c02825 	move	a1,a2
    10f8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    10fc:	27a4001c 	addiu	a0,sp,28
    1100:	27a40028 	addiu	a0,sp,40
    1104:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1108:	8fa5005c 	lw	a1,92(sp)
    110c:	27a40034 	addiu	a0,sp,52
    1110:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1114:	8fa50060 	lw	a1,96(sp)
    1118:	27a40040 	addiu	a0,sp,64
    111c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1120:	8fa50064 	lw	a1,100(sp)
    1124:	27a40044 	addiu	a0,sp,68
    1128:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    112c:	8fa50068 	lw	a1,104(sp)
    1130:	8fae0054 	lw	t6,84(sp)
    1134:	87af006e 	lh	t7,110(sp)
    1138:	87b80072 	lh	t8,114(sp)
    113c:	a3a0004c 	sb	zero,76(sp)
    1140:	8fa40050 	lw	a0,80(sp)
    1144:	24050005 	li	a1,5
    1148:	24060080 	li	a2,128
    114c:	27a70018 	addiu	a3,sp,24
    1150:	afae0018 	sw	t6,24(sp)
    1154:	a7af0048 	sh	t7,72(sp)
    1158:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    115c:	a7b8004a 	sh	t8,74(sp)
    1160:	8fbf0014 	lw	ra,20(sp)
    1164:	27bd0050 	addiu	sp,sp,80
    1168:	03e00008 	jr	ra
    116c:	00000000 	nop

00001170 <EffectSsGSpk_SpawnNoAccel>:
    1170:	27bdffb0 	addiu	sp,sp,-80
    1174:	afbf0014 	sw	ra,20(sp)
    1178:	afa40050 	sw	a0,80(sp)
    117c:	afa50054 	sw	a1,84(sp)
    1180:	afa7005c 	sw	a3,92(sp)
    1184:	00c02825 	move	a1,a2
    1188:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    118c:	27a4001c 	addiu	a0,sp,28
    1190:	27a40028 	addiu	a0,sp,40
    1194:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1198:	8fa5005c 	lw	a1,92(sp)
    119c:	27a40034 	addiu	a0,sp,52
    11a0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    11a4:	8fa50060 	lw	a1,96(sp)
    11a8:	27a40040 	addiu	a0,sp,64
    11ac:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    11b0:	8fa50064 	lw	a1,100(sp)
    11b4:	27a40044 	addiu	a0,sp,68
    11b8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    11bc:	8fa50068 	lw	a1,104(sp)
    11c0:	8fae0054 	lw	t6,84(sp)
    11c4:	87af006e 	lh	t7,110(sp)
    11c8:	87b80072 	lh	t8,114(sp)
    11cc:	24190001 	li	t9,1
    11d0:	a3b9004c 	sb	t9,76(sp)
    11d4:	8fa40050 	lw	a0,80(sp)
    11d8:	24050005 	li	a1,5
    11dc:	24060080 	li	a2,128
    11e0:	27a70018 	addiu	a3,sp,24
    11e4:	afae0018 	sw	t6,24(sp)
    11e8:	a7af0048 	sh	t7,72(sp)
    11ec:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    11f0:	a7b8004a 	sh	t8,74(sp)
    11f4:	8fbf0014 	lw	ra,20(sp)
    11f8:	27bd0050 	addiu	sp,sp,80
    11fc:	03e00008 	jr	ra
    1200:	00000000 	nop

00001204 <EffectSsGSpk_SpawnFuse>:
    1204:	27bdffd0 	addiu	sp,sp,-48
    1208:	3c0e0000 	lui	t6,0x0
    120c:	afbf0024 	sw	ra,36(sp)
    1210:	25ce002c 	addiu	t6,t6,44
    1214:	8dd80000 	lw	t8,0(t6)
    1218:	27a2002c 	addiu	v0,sp,44
    121c:	3c190000 	lui	t9,0x0
    1220:	27390030 	addiu	t9,t9,48
    1224:	ac580000 	sw	t8,0(v0)
    1228:	8f290000 	lw	t1,0(t9)
    122c:	27a30028 	addiu	v1,sp,40
    1230:	ac690000 	sw	t1,0(v1)
    1234:	8faa0040 	lw	t2,64(sp)
    1238:	afa30018 	sw	v1,24(sp)
    123c:	afa20014 	sw	v0,20(sp)
    1240:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1244:	afaa0010 	sw	t2,16(sp)
    1248:	8fbf0024 	lw	ra,36(sp)
    124c:	27bd0030 	addiu	sp,sp,48
    1250:	03e00008 	jr	ra
    1254:	00000000 	nop

00001258 <EffectSsGSpk_SpawnRandColor>:
    1258:	27bdffc0 	addiu	sp,sp,-64
    125c:	3c0e0000 	lui	t6,0x0
    1260:	3c0f0000 	lui	t7,0x0
    1264:	8dce0034 	lw	t6,52(t6)
    1268:	8def0038 	lw	t7,56(t7)
    126c:	afbf002c 	sw	ra,44(sp)
    1270:	afa40040 	sw	a0,64(sp)
    1274:	afa50044 	sw	a1,68(sp)
    1278:	afa60048 	sw	a2,72(sp)
    127c:	afa7004c 	sw	a3,76(sp)
    1280:	afae003c 	sw	t6,60(sp)
    1284:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1288:	afaf0038 	sw	t7,56(sp)
    128c:	3c0141a0 	lui	at,0x41a0
    1290:	44812000 	mtc1	at,$f4
    1294:	3c014120 	lui	at,0x4120
    1298:	44814000 	mtc1	at,$f8
    129c:	46040182 	mul.s	$f6,$f0,$f4
    12a0:	93b9003c 	lbu	t9,60(sp)
    12a4:	93a9003d 	lbu	t1,61(sp)
    12a8:	93ab003e 	lbu	t3,62(sp)
    12ac:	93ad003f 	lbu	t5,63(sp)
    12b0:	93af0038 	lbu	t7,56(sp)
    12b4:	8fa40040 	lw	a0,64(sp)
    12b8:	46083281 	sub.s	$f10,$f6,$f8
    12bc:	8fa50044 	lw	a1,68(sp)
    12c0:	8fa60048 	lw	a2,72(sp)
    12c4:	8fa7004c 	lw	a3,76(sp)
    12c8:	4600540d 	trunc.w.s	$f16,$f10
    12cc:	44028000 	mfc1	v0,$f16
    12d0:	00000000 	nop
    12d4:	03224021 	addu	t0,t9,v0
    12d8:	93b90039 	lbu	t9,57(sp)
    12dc:	01225021 	addu	t2,t1,v0
    12e0:	01626021 	addu	t4,t3,v0
    12e4:	93a9003a 	lbu	t1,58(sp)
    12e8:	93ab003b 	lbu	t3,59(sp)
    12ec:	a3a8003c 	sb	t0,60(sp)
    12f0:	01a27021 	addu	t6,t5,v0
    12f4:	01e2c021 	addu	t8,t7,v0
    12f8:	a3b80038 	sb	t8,56(sp)
    12fc:	03224021 	addu	t0,t9,v0
    1300:	87b9005a 	lh	t9,90(sp)
    1304:	87b80056 	lh	t8,86(sp)
    1308:	8fad0050 	lw	t5,80(sp)
    130c:	a3aa003d 	sb	t2,61(sp)
    1310:	a3ac003e 	sb	t4,62(sp)
    1314:	a3ae003f 	sb	t6,63(sp)
    1318:	27ae003c 	addiu	t6,sp,60
    131c:	27af0038 	addiu	t7,sp,56
    1320:	01225021 	addu	t2,t1,v0
    1324:	01626021 	addu	t4,t3,v0
    1328:	a3a80039 	sb	t0,57(sp)
    132c:	a3aa003a 	sb	t2,58(sp)
    1330:	a3ac003b 	sb	t4,59(sp)
    1334:	afaf0018 	sw	t7,24(sp)
    1338:	afae0014 	sw	t6,20(sp)
    133c:	afb90020 	sw	t9,32(sp)
    1340:	afb8001c 	sw	t8,28(sp)
    1344:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1348:	afad0010 	sw	t5,16(sp)
    134c:	8fbf002c 	lw	ra,44(sp)
    1350:	27bd0040 	addiu	sp,sp,64
    1354:	03e00008 	jr	ra
    1358:	00000000 	nop

0000135c <EffectSsGSpk_SpawnSmall>:
    135c:	27bdffd0 	addiu	sp,sp,-48
    1360:	8fae0040 	lw	t6,64(sp)
    1364:	8faf0044 	lw	t7,68(sp)
    1368:	8fb80048 	lw	t8,72(sp)
    136c:	afbf002c 	sw	ra,44(sp)
    1370:	24190064 	li	t9,100
    1374:	24080005 	li	t0,5
    1378:	afa80020 	sw	t0,32(sp)
    137c:	afb9001c 	sw	t9,28(sp)
    1380:	afae0010 	sw	t6,16(sp)
    1384:	afaf0014 	sw	t7,20(sp)
    1388:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    138c:	afb80018 	sw	t8,24(sp)
    1390:	8fbf002c 	lw	ra,44(sp)
    1394:	27bd0030 	addiu	sp,sp,48
    1398:	03e00008 	jr	ra
    139c:	00000000 	nop

000013a0 <EffectSsDFire_Spawn>:
    13a0:	27bdffb8 	addiu	sp,sp,-72
    13a4:	afbf0014 	sw	ra,20(sp)
    13a8:	afa40048 	sw	a0,72(sp)
    13ac:	afa60050 	sw	a2,80(sp)
    13b0:	afa70054 	sw	a3,84(sp)
    13b4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    13b8:	27a40018 	addiu	a0,sp,24
    13bc:	27a40024 	addiu	a0,sp,36
    13c0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    13c4:	8fa50050 	lw	a1,80(sp)
    13c8:	27a40030 	addiu	a0,sp,48
    13cc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    13d0:	8fa50054 	lw	a1,84(sp)
    13d4:	87ae005a 	lh	t6,90(sp)
    13d8:	87af005e 	lh	t7,94(sp)
    13dc:	87b80062 	lh	t8,98(sp)
    13e0:	87b90066 	lh	t9,102(sp)
    13e4:	8fa80068 	lw	t0,104(sp)
    13e8:	8fa40048 	lw	a0,72(sp)
    13ec:	24050006 	li	a1,6
    13f0:	24060080 	li	a2,128
    13f4:	27a70018 	addiu	a3,sp,24
    13f8:	a7ae003c 	sh	t6,60(sp)
    13fc:	a7af003e 	sh	t7,62(sp)
    1400:	a7b80040 	sh	t8,64(sp)
    1404:	a7b90042 	sh	t9,66(sp)
    1408:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    140c:	afa80044 	sw	t0,68(sp)
    1410:	8fbf0014 	lw	ra,20(sp)
    1414:	27bd0048 	addiu	sp,sp,72
    1418:	03e00008 	jr	ra
    141c:	00000000 	nop

00001420 <EffectSsDFire_SpawnFixedScale>:
    1420:	27bdffd0 	addiu	sp,sp,-48
    1424:	87b80042 	lh	t8,66(sp)
    1428:	87b90046 	lh	t9,70(sp)
    142c:	afbf002c 	sw	ra,44(sp)
    1430:	240e0064 	li	t6,100
    1434:	240f0023 	li	t7,35
    1438:	24080008 	li	t0,8
    143c:	afa80020 	sw	t0,32(sp)
    1440:	afaf0014 	sw	t7,20(sp)
    1444:	afae0010 	sw	t6,16(sp)
    1448:	afb80018 	sw	t8,24(sp)
    144c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1450:	afb9001c 	sw	t9,28(sp)
    1454:	8fbf002c 	lw	ra,44(sp)
    1458:	27bd0030 	addiu	sp,sp,48
    145c:	03e00008 	jr	ra
    1460:	00000000 	nop

00001464 <EffectSsBubble_Spawn>:
    1464:	27bdffc8 	addiu	sp,sp,-56
    1468:	afbf0014 	sw	ra,20(sp)
    146c:	afa40038 	sw	a0,56(sp)
    1470:	afa60040 	sw	a2,64(sp)
    1474:	afa70044 	sw	a3,68(sp)
    1478:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    147c:	27a4001c 	addiu	a0,sp,28
    1480:	c7a40040 	lwc1	$f4,64(sp)
    1484:	c7a60044 	lwc1	$f6,68(sp)
    1488:	c7a80048 	lwc1	$f8,72(sp)
    148c:	c7aa004c 	lwc1	$f10,76(sp)
    1490:	8fa40038 	lw	a0,56(sp)
    1494:	24050007 	li	a1,7
    1498:	24060080 	li	a2,128
    149c:	27a7001c 	addiu	a3,sp,28
    14a0:	e7a40028 	swc1	$f4,40(sp)
    14a4:	e7a6002c 	swc1	$f6,44(sp)
    14a8:	e7a80030 	swc1	$f8,48(sp)
    14ac:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    14b0:	e7aa0034 	swc1	$f10,52(sp)
    14b4:	8fbf0014 	lw	ra,20(sp)
    14b8:	27bd0038 	addiu	sp,sp,56
    14bc:	03e00008 	jr	ra
    14c0:	00000000 	nop

000014c4 <EffectSsGRipple_Spawn>:
    14c4:	27bdffd0 	addiu	sp,sp,-48
    14c8:	afbf0014 	sw	ra,20(sp)
    14cc:	afa40030 	sw	a0,48(sp)
    14d0:	afa60038 	sw	a2,56(sp)
    14d4:	afa7003c 	sw	a3,60(sp)
    14d8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    14dc:	27a4001c 	addiu	a0,sp,28
    14e0:	87ae003a 	lh	t6,58(sp)
    14e4:	87af003e 	lh	t7,62(sp)
    14e8:	87b80042 	lh	t8,66(sp)
    14ec:	8fa40030 	lw	a0,48(sp)
    14f0:	24050009 	li	a1,9
    14f4:	24060080 	li	a2,128
    14f8:	27a7001c 	addiu	a3,sp,28
    14fc:	a7ae0028 	sh	t6,40(sp)
    1500:	a7af002a 	sh	t7,42(sp)
    1504:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1508:	a7b8002c 	sh	t8,44(sp)
    150c:	8fbf0014 	lw	ra,20(sp)
    1510:	27bd0030 	addiu	sp,sp,48
    1514:	03e00008 	jr	ra
    1518:	00000000 	nop

0000151c <EffectSsGSplash_Spawn>:
    151c:	27bdffd0 	addiu	sp,sp,-48
    1520:	afbf0014 	sw	ra,20(sp)
    1524:	afa40030 	sw	a0,48(sp)
    1528:	afa60038 	sw	a2,56(sp)
    152c:	afa7003c 	sw	a3,60(sp)
    1530:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1534:	27a40018 	addiu	a0,sp,24
    1538:	8fa20038 	lw	v0,56(sp)
    153c:	87ae0042 	lh	t6,66(sp)
    1540:	87af0046 	lh	t7,70(sp)
    1544:	2405000a 	li	a1,10
    1548:	a3ae0024 	sb	t6,36(sp)
    154c:	1040000f 	beqz	v0,158c <EffectSsGSplash_Spawn+0x70>
    1550:	a7af0026 	sh	t7,38(sp)
    1554:	88480000 	lwl	t0,0(v0)
    1558:	98480003 	lwr	t0,3(v0)
    155c:	27b80028 	addiu	t8,sp,40
    1560:	27a9002c 	addiu	t1,sp,44
    1564:	ab080000 	swl	t0,0(t8)
    1568:	bb080003 	swr	t0,3(t8)
    156c:	8faa003c 	lw	t2,60(sp)
    1570:	240d0001 	li	t5,1
    1574:	894c0000 	lwl	t4,0(t2)
    1578:	994c0003 	lwr	t4,3(t2)
    157c:	a92c0000 	swl	t4,0(t1)
    1580:	b92c0003 	swr	t4,3(t1)
    1584:	10000002 	b	1590 <EffectSsGSplash_Spawn+0x74>
    1588:	a3ad0025 	sb	t5,37(sp)
    158c:	a3a00025 	sb	zero,37(sp)
    1590:	8fa40030 	lw	a0,48(sp)
    1594:	24060080 	li	a2,128
    1598:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    159c:	27a70018 	addiu	a3,sp,24
    15a0:	8fbf0014 	lw	ra,20(sp)
    15a4:	27bd0030 	addiu	sp,sp,48
    15a8:	03e00008 	jr	ra
    15ac:	00000000 	nop

000015b0 <EffectSsGMagma_Spawn>:
    15b0:	27bdffd8 	addiu	sp,sp,-40
    15b4:	afbf0014 	sw	ra,20(sp)
    15b8:	afa40028 	sw	a0,40(sp)
    15bc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    15c0:	27a4001c 	addiu	a0,sp,28
    15c4:	8fa40028 	lw	a0,40(sp)
    15c8:	2405000b 	li	a1,11
    15cc:	24060080 	li	a2,128
    15d0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    15d4:	27a7001c 	addiu	a3,sp,28
    15d8:	8fbf0014 	lw	ra,20(sp)
    15dc:	27bd0028 	addiu	sp,sp,40
    15e0:	03e00008 	jr	ra
    15e4:	00000000 	nop

000015e8 <EffectSsGFire_Spawn>:
    15e8:	27bdffd8 	addiu	sp,sp,-40
    15ec:	afbf0014 	sw	ra,20(sp)
    15f0:	afa40028 	sw	a0,40(sp)
    15f4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    15f8:	27a4001c 	addiu	a0,sp,28
    15fc:	8fa40028 	lw	a0,40(sp)
    1600:	2405000c 	li	a1,12
    1604:	24060080 	li	a2,128
    1608:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    160c:	27a7001c 	addiu	a3,sp,28
    1610:	8fbf0014 	lw	ra,20(sp)
    1614:	27bd0028 	addiu	sp,sp,40
    1618:	03e00008 	jr	ra
    161c:	00000000 	nop

00001620 <EffectSsLightning_Spawn>:
    1620:	27bdffc8 	addiu	sp,sp,-56
    1624:	afbf0014 	sw	ra,20(sp)
    1628:	afa40038 	sw	a0,56(sp)
    162c:	afa60040 	sw	a2,64(sp)
    1630:	afa70044 	sw	a3,68(sp)
    1634:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1638:	27a4001c 	addiu	a0,sp,28
    163c:	27a40028 	addiu	a0,sp,40
    1640:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1644:	8fa50040 	lw	a1,64(sp)
    1648:	27a4002c 	addiu	a0,sp,44
    164c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1650:	8fa50044 	lw	a1,68(sp)
    1654:	87ae004a 	lh	t6,74(sp)
    1658:	87af004e 	lh	t7,78(sp)
    165c:	87b80052 	lh	t8,82(sp)
    1660:	87b90056 	lh	t9,86(sp)
    1664:	8fa40038 	lw	a0,56(sp)
    1668:	2405000d 	li	a1,13
    166c:	24060080 	li	a2,128
    1670:	27a7001c 	addiu	a3,sp,28
    1674:	a7ae0030 	sh	t6,48(sp)
    1678:	a7af0032 	sh	t7,50(sp)
    167c:	a7b80034 	sh	t8,52(sp)
    1680:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1684:	a7b90036 	sh	t9,54(sp)
    1688:	8fbf0014 	lw	ra,20(sp)
    168c:	27bd0038 	addiu	sp,sp,56
    1690:	03e00008 	jr	ra
    1694:	00000000 	nop

00001698 <EffectSsDtBubble_SpawnColorProfile>:
    1698:	27bdffb0 	addiu	sp,sp,-80
    169c:	afbf0014 	sw	ra,20(sp)
    16a0:	afa40050 	sw	a0,80(sp)
    16a4:	afa60058 	sw	a2,88(sp)
    16a8:	afa7005c 	sw	a3,92(sp)
    16ac:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    16b0:	27a40018 	addiu	a0,sp,24
    16b4:	27a40024 	addiu	a0,sp,36
    16b8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    16bc:	8fa50058 	lw	a1,88(sp)
    16c0:	27a40030 	addiu	a0,sp,48
    16c4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    16c8:	8fa5005c 	lw	a1,92(sp)
    16cc:	87ae006a 	lh	t6,106(sp)
    16d0:	87af0062 	lh	t7,98(sp)
    16d4:	87b80066 	lh	t8,102(sp)
    16d8:	87b9006e 	lh	t9,110(sp)
    16dc:	a3a0004c 	sb	zero,76(sp)
    16e0:	8fa40050 	lw	a0,80(sp)
    16e4:	2405000e 	li	a1,14
    16e8:	24060080 	li	a2,128
    16ec:	27a70018 	addiu	a3,sp,24
    16f0:	a7ae0048 	sh	t6,72(sp)
    16f4:	a7af0044 	sh	t7,68(sp)
    16f8:	a7b80046 	sh	t8,70(sp)
    16fc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1700:	a7b9004a 	sh	t9,74(sp)
    1704:	8fbf0014 	lw	ra,20(sp)
    1708:	27bd0050 	addiu	sp,sp,80
    170c:	03e00008 	jr	ra
    1710:	00000000 	nop

00001714 <EffectSsDtBubble_SpawnCustomColor>:
    1714:	27bdffb0 	addiu	sp,sp,-80
    1718:	afbf0014 	sw	ra,20(sp)
    171c:	afa40050 	sw	a0,80(sp)
    1720:	afa60058 	sw	a2,88(sp)
    1724:	afa7005c 	sw	a3,92(sp)
    1728:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    172c:	27a40018 	addiu	a0,sp,24
    1730:	27a40024 	addiu	a0,sp,36
    1734:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1738:	8fa50058 	lw	a1,88(sp)
    173c:	27a40030 	addiu	a0,sp,48
    1740:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1744:	8fa5005c 	lw	a1,92(sp)
    1748:	27a4003c 	addiu	a0,sp,60
    174c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1750:	8fa50060 	lw	a1,96(sp)
    1754:	27a40040 	addiu	a0,sp,64
    1758:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    175c:	8fa50064 	lw	a1,100(sp)
    1760:	87ae006a 	lh	t6,106(sp)
    1764:	87af006e 	lh	t7,110(sp)
    1768:	87b80072 	lh	t8,114(sp)
    176c:	24190001 	li	t9,1
    1770:	a3b9004c 	sb	t9,76(sp)
    1774:	8fa40050 	lw	a0,80(sp)
    1778:	2405000e 	li	a1,14
    177c:	24060080 	li	a2,128
    1780:	27a70018 	addiu	a3,sp,24
    1784:	a7ae0044 	sh	t6,68(sp)
    1788:	a7af0046 	sh	t7,70(sp)
    178c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1790:	a7b8004a 	sh	t8,74(sp)
    1794:	8fbf0014 	lw	ra,20(sp)
    1798:	27bd0050 	addiu	sp,sp,80
    179c:	03e00008 	jr	ra
    17a0:	00000000 	nop

000017a4 <EffectSsHahen_Spawn>:
    17a4:	27bdffb8 	addiu	sp,sp,-72
    17a8:	afbf0014 	sw	ra,20(sp)
    17ac:	afa40048 	sw	a0,72(sp)
    17b0:	afa60050 	sw	a2,80(sp)
    17b4:	afa70054 	sw	a3,84(sp)
    17b8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    17bc:	27a40018 	addiu	a0,sp,24
    17c0:	27a40024 	addiu	a0,sp,36
    17c4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    17c8:	8fa50050 	lw	a1,80(sp)
    17cc:	27a40030 	addiu	a0,sp,48
    17d0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    17d4:	8fa50054 	lw	a1,84(sp)
    17d8:	8fae0068 	lw	t6,104(sp)
    17dc:	87af005a 	lh	t7,90(sp)
    17e0:	87b8005e 	lh	t8,94(sp)
    17e4:	87b90062 	lh	t9,98(sp)
    17e8:	87a80066 	lh	t0,102(sp)
    17ec:	8fa40048 	lw	a0,72(sp)
    17f0:	2405000f 	li	a1,15
    17f4:	24060080 	li	a2,128
    17f8:	27a70018 	addiu	a3,sp,24
    17fc:	afae003c 	sw	t6,60(sp)
    1800:	a7af0040 	sh	t7,64(sp)
    1804:	a7b80042 	sh	t8,66(sp)
    1808:	a7b90044 	sh	t9,68(sp)
    180c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1810:	a7a80046 	sh	t0,70(sp)
    1814:	8fbf0014 	lw	ra,20(sp)
    1818:	27bd0048 	addiu	sp,sp,72
    181c:	03e00008 	jr	ra
    1820:	00000000 	nop

00001824 <EffectSsHahen_SpawnBurst>:
    1824:	27bdff78 	addiu	sp,sp,-136
    1828:	f7b60038 	sdc1	$f22,56(sp)
    182c:	3c010000 	lui	at,0x0
    1830:	4486b000 	mtc1	a2,$f22
    1834:	c424004c 	lwc1	$f4,76(at)
    1838:	afb10044 	sw	s1,68(sp)
    183c:	87b100a2 	lh	s1,162(sp)
    1840:	46162182 	mul.s	$f6,$f4,$f22
    1844:	44800000 	mtc1	zero,$f0
    1848:	afb60058 	sw	s6,88(sp)
    184c:	0007b400 	sll	s6,a3,0x10
    1850:	afb50054 	sw	s5,84(sp)
    1854:	afb40050 	sw	s4,80(sp)
    1858:	afb00040 	sw	s0,64(sp)
    185c:	0080a025 	move	s4,a0
    1860:	00a0a825 	move	s5,a1
    1864:	0016b403 	sra	s6,s6,0x10
    1868:	afbf0064 	sw	ra,100(sp)
    186c:	afbe0060 	sw	s8,96(sp)
    1870:	afb7005c 	sw	s7,92(sp)
    1874:	afb3004c 	sw	s3,76(sp)
    1878:	afb20048 	sw	s2,72(sp)
    187c:	f7b40030 	sdc1	$f20,48(sp)
    1880:	afa70094 	sw	a3,148(sp)
    1884:	e7a60070 	swc1	$f6,112(sp)
    1888:	00008025 	move	s0,zero
    188c:	e7a00074 	swc1	$f0,116(sp)
    1890:	1a200028 	blez	s1,1934 <EffectSsHahen_SpawnBurst+0x110>
    1894:	e7a0006c 	swc1	$f0,108(sp)
    1898:	3c013f00 	lui	at,0x3f00
    189c:	4481a000 	mtc1	at,$f20
    18a0:	87be00aa 	lh	s8,170(sp)
    18a4:	87b700a6 	lh	s7,166(sp)
    18a8:	87b3009e 	lh	s3,158(sp)
    18ac:	87b2009a 	lh	s2,154(sp)
    18b0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    18b4:	00000000 	nop
    18b8:	46140201 	sub.s	$f8,$f0,$f20
    18bc:	46164282 	mul.s	$f10,$f8,$f22
    18c0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    18c4:	e7aa0078 	swc1	$f10,120(sp)
    18c8:	46140401 	sub.s	$f16,$f0,$f20
    18cc:	46168482 	mul.s	$f18,$f16,$f22
    18d0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    18d4:	e7b20080 	swc1	$f18,128(sp)
    18d8:	46140102 	mul.s	$f4,$f0,$f20
    18dc:	00122400 	sll	a0,s2,0x10
    18e0:	00132c00 	sll	a1,s3,0x10
    18e4:	00052c03 	sra	a1,a1,0x10
    18e8:	00042403 	sra	a0,a0,0x10
    18ec:	46142180 	add.s	$f6,$f4,$f20
    18f0:	46163202 	mul.s	$f8,$f6,$f22
    18f4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    18f8:	e7a8007c 	swc1	$f8,124(sp)
    18fc:	8fae00ac 	lw	t6,172(sp)
    1900:	02802025 	move	a0,s4
    1904:	02a02825 	move	a1,s5
    1908:	27a60078 	addiu	a2,sp,120
    190c:	27a7006c 	addiu	a3,sp,108
    1910:	afb60010 	sw	s6,16(sp)
    1914:	afa20014 	sw	v0,20(sp)
    1918:	afb70018 	sw	s7,24(sp)
    191c:	afbe001c 	sw	s8,28(sp)
    1920:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1924:	afae0020 	sw	t6,32(sp)
    1928:	26100001 	addiu	s0,s0,1
    192c:	1611ffe0 	bne	s0,s1,18b0 <EffectSsHahen_SpawnBurst+0x8c>
    1930:	00000000 	nop
    1934:	8fbf0064 	lw	ra,100(sp)
    1938:	d7b40030 	ldc1	$f20,48(sp)
    193c:	d7b60038 	ldc1	$f22,56(sp)
    1940:	8fb00040 	lw	s0,64(sp)
    1944:	8fb10044 	lw	s1,68(sp)
    1948:	8fb20048 	lw	s2,72(sp)
    194c:	8fb3004c 	lw	s3,76(sp)
    1950:	8fb40050 	lw	s4,80(sp)
    1954:	8fb50054 	lw	s5,84(sp)
    1958:	8fb60058 	lw	s6,88(sp)
    195c:	8fb7005c 	lw	s7,92(sp)
    1960:	8fbe0060 	lw	s8,96(sp)
    1964:	03e00008 	jr	ra
    1968:	27bd0088 	addiu	sp,sp,136

0000196c <EffectSsStick_Spawn>:
    196c:	27bdffd8 	addiu	sp,sp,-40
    1970:	afbf0014 	sw	ra,20(sp)
    1974:	afa5002c 	sw	a1,44(sp)
    1978:	afa60030 	sw	a2,48(sp)
    197c:	8cb80000 	lw	t8,0(a1)
    1980:	27a70018 	addiu	a3,sp,24
    1984:	24060080 	li	a2,128
    1988:	acf80000 	sw	t8,0(a3)
    198c:	8caf0004 	lw	t7,4(a1)
    1990:	acef0004 	sw	t7,4(a3)
    1994:	8cb80008 	lw	t8,8(a1)
    1998:	24050010 	li	a1,16
    199c:	acf80008 	sw	t8,8(a3)
    19a0:	87b90032 	lh	t9,50(sp)
    19a4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    19a8:	a7b90024 	sh	t9,36(sp)
    19ac:	8fbf0014 	lw	ra,20(sp)
    19b0:	27bd0028 	addiu	sp,sp,40
    19b4:	03e00008 	jr	ra
    19b8:	00000000 	nop

000019bc <EffectSsSibuki_Spawn>:
    19bc:	27bdffb8 	addiu	sp,sp,-72
    19c0:	afbf0014 	sw	ra,20(sp)
    19c4:	afa40048 	sw	a0,72(sp)
    19c8:	afa60050 	sw	a2,80(sp)
    19cc:	afa70054 	sw	a3,84(sp)
    19d0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    19d4:	27a4001c 	addiu	a0,sp,28
    19d8:	27a40028 	addiu	a0,sp,40
    19dc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    19e0:	8fa50050 	lw	a1,80(sp)
    19e4:	27a40034 	addiu	a0,sp,52
    19e8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    19ec:	8fa50054 	lw	a1,84(sp)
    19f0:	87ae005a 	lh	t6,90(sp)
    19f4:	87af005e 	lh	t7,94(sp)
    19f8:	87b80062 	lh	t8,98(sp)
    19fc:	8fa40048 	lw	a0,72(sp)
    1a00:	24050011 	li	a1,17
    1a04:	24060080 	li	a2,128
    1a08:	27a7001c 	addiu	a3,sp,28
    1a0c:	a7ae0040 	sh	t6,64(sp)
    1a10:	a7af0042 	sh	t7,66(sp)
    1a14:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1a18:	a7b80044 	sh	t8,68(sp)
    1a1c:	8fbf0014 	lw	ra,20(sp)
    1a20:	27bd0048 	addiu	sp,sp,72
    1a24:	03e00008 	jr	ra
    1a28:	00000000 	nop

00001a2c <EffectSsSibuki_SpawnBurst>:
    1a2c:	27bdff88 	addiu	sp,sp,-120
    1a30:	3c0f0000 	lui	t7,0x0
    1a34:	afbf0044 	sw	ra,68(sp)
    1a38:	afb60040 	sw	s6,64(sp)
    1a3c:	afb5003c 	sw	s5,60(sp)
    1a40:	afb40038 	sw	s4,56(sp)
    1a44:	afb30034 	sw	s3,52(sp)
    1a48:	afb20030 	sw	s2,48(sp)
    1a4c:	afb1002c 	sw	s1,44(sp)
    1a50:	afb00028 	sw	s0,40(sp)
    1a54:	25ef003c 	addiu	t7,t7,60
    1a58:	8df90000 	lw	t9,0(t7)
    1a5c:	27ae0068 	addiu	t6,sp,104
    1a60:	8df80004 	lw	t8,4(t7)
    1a64:	add90000 	sw	t9,0(t6)
    1a68:	8df90008 	lw	t9,8(t7)
    1a6c:	3c090000 	lui	t1,0x0
    1a70:	25290048 	addiu	t1,t1,72
    1a74:	add80004 	sw	t8,4(t6)
    1a78:	add90008 	sw	t9,8(t6)
    1a7c:	8d2b0000 	lw	t3,0(t1)
    1a80:	27a8005c 	addiu	t0,sp,92
    1a84:	8d2a0004 	lw	t2,4(t1)
    1a88:	ad0b0000 	sw	t3,0(t0)
    1a8c:	8d2b0008 	lw	t3,8(t1)
    1a90:	3c0c0000 	lui	t4,0x0
    1a94:	258c0054 	addiu	t4,t4,84
    1a98:	ad0a0004 	sw	t2,4(t0)
    1a9c:	ad0b0008 	sw	t3,8(t0)
    1aa0:	8d8e0000 	lw	t6,0(t4)
    1aa4:	27b20050 	addiu	s2,sp,80
    1aa8:	0080a025 	move	s4,a0
    1aac:	ae4e0000 	sw	t6,0(s2)
    1ab0:	8d8d0004 	lw	t5,4(t4)
    1ab4:	00a0a825 	move	s5,a1
    1ab8:	ae4d0004 	sw	t5,4(s2)
    1abc:	8d8e0008 	lw	t6,8(t4)
    1ac0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1ac4:	ae4e0008 	sw	t6,8(s2)
    1ac8:	3c010000 	lui	at,0x0
    1acc:	c4240050 	lwc1	$f4,80(at)
    1ad0:	3c160000 	lui	s6,0x0
    1ad4:	26d60000 	addiu	s6,s6,0
    1ad8:	46040182 	mul.s	$f6,$f0,$f4
    1adc:	8ed00000 	lw	s0,0(s6)
    1ae0:	00008825 	move	s1,zero
    1ae4:	861809fa 	lh	t8,2554(s0)
    1ae8:	4600320d 	trunc.w.s	$f8,$f6
    1aec:	2719001e 	addiu	t9,t8,30
    1af0:	44134000 	mfc1	s3,$f8
    1af4:	00000000 	nop
    1af8:	00139c00 	sll	s3,s3,0x10
    1afc:	1b200022 	blez	t9,1b88 <EffectSsSibuki_SpawnBurst+0x15c>
    1b00:	00139c03 	sra	s3,s3,0x10
    1b04:	86080a0a 	lh	t0,2570(s0)
    1b08:	afb30014 	sw	s3,20(sp)
    1b0c:	02802025 	move	a0,s4
    1b10:	25090006 	addiu	t1,t0,6
    1b14:	0229001a 	div	zero,s1,t1
    1b18:	00005012 	mflo	t2
    1b1c:	afaa0010 	sw	t2,16(sp)
    1b20:	860b09f8 	lh	t3,2552(s0)
    1b24:	02a02825 	move	a1,s5
    1b28:	02403025 	move	a2,s2
    1b2c:	256c0028 	addiu	t4,t3,40
    1b30:	afac0018 	sw	t4,24(sp)
    1b34:	02403825 	move	a3,s2
    1b38:	15200002 	bnez	t1,1b44 <EffectSsSibuki_SpawnBurst+0x118>
    1b3c:	00000000 	nop
    1b40:	0007000d 	break	0x7
    1b44:	2401ffff 	li	at,-1
    1b48:	15210004 	bne	t1,at,1b5c <EffectSsSibuki_SpawnBurst+0x130>
    1b4c:	3c018000 	lui	at,0x8000
    1b50:	16210002 	bne	s1,at,1b5c <EffectSsSibuki_SpawnBurst+0x130>
    1b54:	00000000 	nop
    1b58:	0006000d 	break	0x6
    1b5c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1b60:	00000000 	nop
    1b64:	8ed00000 	lw	s0,0(s6)
    1b68:	26310001 	addiu	s1,s1,1
    1b6c:	00118c00 	sll	s1,s1,0x10
    1b70:	860d09fa 	lh	t5,2554(s0)
    1b74:	00118c03 	sra	s1,s1,0x10
    1b78:	25ae001e 	addiu	t6,t5,30
    1b7c:	022e082a 	slt	at,s1,t6
    1b80:	5420ffe1 	bnezl	at,1b08 <EffectSsSibuki_SpawnBurst+0xdc>
    1b84:	86080a0a 	lh	t0,2570(s0)
    1b88:	8fbf0044 	lw	ra,68(sp)
    1b8c:	8fb00028 	lw	s0,40(sp)
    1b90:	8fb1002c 	lw	s1,44(sp)
    1b94:	8fb20030 	lw	s2,48(sp)
    1b98:	8fb30034 	lw	s3,52(sp)
    1b9c:	8fb40038 	lw	s4,56(sp)
    1ba0:	8fb5003c 	lw	s5,60(sp)
    1ba4:	8fb60040 	lw	s6,64(sp)
    1ba8:	03e00008 	jr	ra
    1bac:	27bd0078 	addiu	sp,sp,120

00001bb0 <EffectSsSibuki2_Spawn>:
    1bb0:	27bdffc0 	addiu	sp,sp,-64
    1bb4:	afbf0014 	sw	ra,20(sp)
    1bb8:	afa40040 	sw	a0,64(sp)
    1bbc:	afa60048 	sw	a2,72(sp)
    1bc0:	afa7004c 	sw	a3,76(sp)
    1bc4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1bc8:	27a40018 	addiu	a0,sp,24
    1bcc:	27a40024 	addiu	a0,sp,36
    1bd0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1bd4:	8fa50048 	lw	a1,72(sp)
    1bd8:	27a40030 	addiu	a0,sp,48
    1bdc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1be0:	8fa5004c 	lw	a1,76(sp)
    1be4:	87ae0052 	lh	t6,82(sp)
    1be8:	8fa40040 	lw	a0,64(sp)
    1bec:	24050012 	li	a1,18
    1bf0:	24060080 	li	a2,128
    1bf4:	27a70018 	addiu	a3,sp,24
    1bf8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1bfc:	a7ae003c 	sh	t6,60(sp)
    1c00:	8fbf0014 	lw	ra,20(sp)
    1c04:	27bd0040 	addiu	sp,sp,64
    1c08:	03e00008 	jr	ra
    1c0c:	00000000 	nop

00001c10 <EffectSsGMagma2_Spawn>:
    1c10:	27bdffc8 	addiu	sp,sp,-56
    1c14:	afbf0014 	sw	ra,20(sp)
    1c18:	afa40038 	sw	a0,56(sp)
    1c1c:	afa60040 	sw	a2,64(sp)
    1c20:	afa70044 	sw	a3,68(sp)
    1c24:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1c28:	27a4001c 	addiu	a0,sp,28
    1c2c:	27a40028 	addiu	a0,sp,40
    1c30:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1c34:	8fa50040 	lw	a1,64(sp)
    1c38:	27a4002c 	addiu	a0,sp,44
    1c3c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1c40:	8fa50044 	lw	a1,68(sp)
    1c44:	87ae004a 	lh	t6,74(sp)
    1c48:	87af004e 	lh	t7,78(sp)
    1c4c:	87b80052 	lh	t8,82(sp)
    1c50:	8fa40038 	lw	a0,56(sp)
    1c54:	24050013 	li	a1,19
    1c58:	24060080 	li	a2,128
    1c5c:	27a7001c 	addiu	a3,sp,28
    1c60:	a7ae0030 	sh	t6,48(sp)
    1c64:	a7af0032 	sh	t7,50(sp)
    1c68:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1c6c:	a7b80034 	sh	t8,52(sp)
    1c70:	8fbf0014 	lw	ra,20(sp)
    1c74:	27bd0038 	addiu	sp,sp,56
    1c78:	03e00008 	jr	ra
    1c7c:	00000000 	nop

00001c80 <EffectSsStone1_Spawn>:
    1c80:	27bdffd8 	addiu	sp,sp,-40
    1c84:	afbf0014 	sw	ra,20(sp)
    1c88:	afa5002c 	sw	a1,44(sp)
    1c8c:	afa60030 	sw	a2,48(sp)
    1c90:	8cb80000 	lw	t8,0(a1)
    1c94:	27a70018 	addiu	a3,sp,24
    1c98:	24060080 	li	a2,128
    1c9c:	acf80000 	sw	t8,0(a3)
    1ca0:	8caf0004 	lw	t7,4(a1)
    1ca4:	acef0004 	sw	t7,4(a3)
    1ca8:	8cb80008 	lw	t8,8(a1)
    1cac:	24050014 	li	a1,20
    1cb0:	acf80008 	sw	t8,8(a3)
    1cb4:	8fb90030 	lw	t9,48(sp)
    1cb8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1cbc:	afb90024 	sw	t9,36(sp)
    1cc0:	8fbf0014 	lw	ra,20(sp)
    1cc4:	27bd0028 	addiu	sp,sp,40
    1cc8:	03e00008 	jr	ra
    1ccc:	00000000 	nop

00001cd0 <EffectSsHitMark_Spawn>:
    1cd0:	27bdffd0 	addiu	sp,sp,-48
    1cd4:	afa60038 	sw	a2,56(sp)
    1cd8:	00063400 	sll	a2,a2,0x10
    1cdc:	00063403 	sra	a2,a2,0x10
    1ce0:	afbf0014 	sw	ra,20(sp)
    1ce4:	afa40030 	sw	a0,48(sp)
    1ce8:	afa50034 	sw	a1,52(sp)
    1cec:	afa5001c 	sw	a1,28(sp)
    1cf0:	a7a60020 	sh	a2,32(sp)
    1cf4:	00e02825 	move	a1,a3
    1cf8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1cfc:	27a40024 	addiu	a0,sp,36
    1d00:	8fa40030 	lw	a0,48(sp)
    1d04:	24050015 	li	a1,21
    1d08:	24060080 	li	a2,128
    1d0c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1d10:	27a7001c 	addiu	a3,sp,28
    1d14:	8fbf0014 	lw	ra,20(sp)
    1d18:	27bd0030 	addiu	sp,sp,48
    1d1c:	03e00008 	jr	ra
    1d20:	00000000 	nop

00001d24 <EffectSsHitMark_SpawnFixedScale>:
    1d24:	27bdffe8 	addiu	sp,sp,-24
    1d28:	afbf0014 	sw	ra,20(sp)
    1d2c:	00c03825 	move	a3,a2
    1d30:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1d34:	2406012c 	li	a2,300
    1d38:	8fbf0014 	lw	ra,20(sp)
    1d3c:	27bd0018 	addiu	sp,sp,24
    1d40:	03e00008 	jr	ra
    1d44:	00000000 	nop

00001d48 <EffectSsHitMark_SpawnCustomScale>:
    1d48:	27bdffe8 	addiu	sp,sp,-24
    1d4c:	afa60020 	sw	a2,32(sp)
    1d50:	00063400 	sll	a2,a2,0x10
    1d54:	afbf0014 	sw	ra,20(sp)
    1d58:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1d5c:	00063403 	sra	a2,a2,0x10
    1d60:	8fbf0014 	lw	ra,20(sp)
    1d64:	27bd0018 	addiu	sp,sp,24
    1d68:	03e00008 	jr	ra
    1d6c:	00000000 	nop

00001d70 <EffectSsFhgFlash_SpawnLightBall>:
    1d70:	27bdffb8 	addiu	sp,sp,-72
    1d74:	afbf0014 	sw	ra,20(sp)
    1d78:	afa40048 	sw	a0,72(sp)
    1d7c:	afa60050 	sw	a2,80(sp)
    1d80:	afa70054 	sw	a3,84(sp)
    1d84:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1d88:	27a40018 	addiu	a0,sp,24
    1d8c:	27a40024 	addiu	a0,sp,36
    1d90:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1d94:	8fa50050 	lw	a1,80(sp)
    1d98:	27a40030 	addiu	a0,sp,48
    1d9c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1da0:	8fa50054 	lw	a1,84(sp)
    1da4:	87ae005a 	lh	t6,90(sp)
    1da8:	93af005f 	lbu	t7,95(sp)
    1dac:	a3a00044 	sb	zero,68(sp)
    1db0:	8fa40048 	lw	a0,72(sp)
    1db4:	24050016 	li	a1,22
    1db8:	24060080 	li	a2,128
    1dbc:	27a70018 	addiu	a3,sp,24
    1dc0:	a7ae003c 	sh	t6,60(sp)
    1dc4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1dc8:	a3af003e 	sb	t7,62(sp)
    1dcc:	8fbf0014 	lw	ra,20(sp)
    1dd0:	27bd0048 	addiu	sp,sp,72
    1dd4:	03e00008 	jr	ra
    1dd8:	00000000 	nop

00001ddc <EffectSsFhgFlash_SpawnShock>:
    1ddc:	27bdffb8 	addiu	sp,sp,-72
    1de0:	afbf0014 	sw	ra,20(sp)
    1de4:	afa40048 	sw	a0,72(sp)
    1de8:	afa5004c 	sw	a1,76(sp)
    1dec:	afa50040 	sw	a1,64(sp)
    1df0:	afa70054 	sw	a3,84(sp)
    1df4:	00c02825 	move	a1,a2
    1df8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1dfc:	27a40018 	addiu	a0,sp,24
    1e00:	87af0056 	lh	t7,86(sp)
    1e04:	93b8005b 	lbu	t8,91(sp)
    1e08:	24190001 	li	t9,1
    1e0c:	a3b90044 	sb	t9,68(sp)
    1e10:	8fa40048 	lw	a0,72(sp)
    1e14:	24050016 	li	a1,22
    1e18:	24060080 	li	a2,128
    1e1c:	27a70018 	addiu	a3,sp,24
    1e20:	a7af003c 	sh	t7,60(sp)
    1e24:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1e28:	a3b8003e 	sb	t8,62(sp)
    1e2c:	8fbf0014 	lw	ra,20(sp)
    1e30:	27bd0048 	addiu	sp,sp,72
    1e34:	03e00008 	jr	ra
    1e38:	00000000 	nop

00001e3c <EffectSsKFire_Spawn>:
    1e3c:	27bdffc0 	addiu	sp,sp,-64
    1e40:	afbf0014 	sw	ra,20(sp)
    1e44:	afa40040 	sw	a0,64(sp)
    1e48:	afa60048 	sw	a2,72(sp)
    1e4c:	afa7004c 	sw	a3,76(sp)
    1e50:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1e54:	27a40018 	addiu	a0,sp,24
    1e58:	27a40024 	addiu	a0,sp,36
    1e5c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1e60:	8fa50048 	lw	a1,72(sp)
    1e64:	27a40030 	addiu	a0,sp,48
    1e68:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1e6c:	8fa5004c 	lw	a1,76(sp)
    1e70:	87ae0052 	lh	t6,82(sp)
    1e74:	93af0057 	lbu	t7,87(sp)
    1e78:	8fa40040 	lw	a0,64(sp)
    1e7c:	24050017 	li	a1,23
    1e80:	24060080 	li	a2,128
    1e84:	27a70018 	addiu	a3,sp,24
    1e88:	a7ae003c 	sh	t6,60(sp)
    1e8c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1e90:	a3af003e 	sb	t7,62(sp)
    1e94:	8fbf0014 	lw	ra,20(sp)
    1e98:	27bd0040 	addiu	sp,sp,64
    1e9c:	03e00008 	jr	ra
    1ea0:	00000000 	nop

00001ea4 <EffectSsSolderSrchBall_Spawn>:
    1ea4:	27bdffb8 	addiu	sp,sp,-72
    1ea8:	afbf0014 	sw	ra,20(sp)
    1eac:	afa40048 	sw	a0,72(sp)
    1eb0:	afa60050 	sw	a2,80(sp)
    1eb4:	afa70054 	sw	a3,84(sp)
    1eb8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1ebc:	27a4001c 	addiu	a0,sp,28
    1ec0:	27a40028 	addiu	a0,sp,40
    1ec4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1ec8:	8fa50050 	lw	a1,80(sp)
    1ecc:	27a40034 	addiu	a0,sp,52
    1ed0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1ed4:	8fa50054 	lw	a1,84(sp)
    1ed8:	87ae005a 	lh	t6,90(sp)
    1edc:	8faf005c 	lw	t7,92(sp)
    1ee0:	8fa40048 	lw	a0,72(sp)
    1ee4:	24050018 	li	a1,24
    1ee8:	24060080 	li	a2,128
    1eec:	27a7001c 	addiu	a3,sp,28
    1ef0:	a7ae0040 	sh	t6,64(sp)
    1ef4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1ef8:	afaf0044 	sw	t7,68(sp)
    1efc:	8fbf0014 	lw	ra,20(sp)
    1f00:	27bd0048 	addiu	sp,sp,72
    1f04:	03e00008 	jr	ra
    1f08:	00000000 	nop

00001f0c <EffectSsKakera_Spawn>:
    1f0c:	27bdffa8 	addiu	sp,sp,-88
    1f10:	afbf0014 	sw	ra,20(sp)
    1f14:	afa40058 	sw	a0,88(sp)
    1f18:	afa60060 	sw	a2,96(sp)
    1f1c:	afa70064 	sw	a3,100(sp)
    1f20:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1f24:	27a40018 	addiu	a0,sp,24
    1f28:	27a40024 	addiu	a0,sp,36
    1f2c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1f30:	8fa50060 	lw	a1,96(sp)
    1f34:	27a40030 	addiu	a0,sp,48
    1f38:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1f3c:	8fa50064 	lw	a1,100(sp)
    1f40:	87ae006a 	lh	t6,106(sp)
    1f44:	87af006e 	lh	t7,110(sp)
    1f48:	87b80072 	lh	t8,114(sp)
    1f4c:	a7ae003c 	sh	t6,60(sp)
    1f50:	a7af003e 	sh	t7,62(sp)
    1f54:	87b90076 	lh	t9,118(sp)
    1f58:	87a8007a 	lh	t0,122(sp)
    1f5c:	87a9007e 	lh	t1,126(sp)
    1f60:	87aa0082 	lh	t2,130(sp)
    1f64:	87ab0086 	lh	t3,134(sp)
    1f68:	8fac0088 	lw	t4,136(sp)
    1f6c:	87ad008e 	lh	t5,142(sp)
    1f70:	87ae0092 	lh	t6,146(sp)
    1f74:	8faf0094 	lw	t7,148(sp)
    1f78:	8fa40058 	lw	a0,88(sp)
    1f7c:	24050019 	li	a1,25
    1f80:	24060065 	li	a2,101
    1f84:	27a70018 	addiu	a3,sp,24
    1f88:	a7b80040 	sh	t8,64(sp)
    1f8c:	a7b90042 	sh	t9,66(sp)
    1f90:	a7a80044 	sh	t0,68(sp)
    1f94:	a7a90046 	sh	t1,70(sp)
    1f98:	a7aa0048 	sh	t2,72(sp)
    1f9c:	a7ab004a 	sh	t3,74(sp)
    1fa0:	afac004c 	sw	t4,76(sp)
    1fa4:	a7ad0050 	sh	t5,80(sp)
    1fa8:	a7ae0052 	sh	t6,82(sp)
    1fac:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1fb0:	afaf0054 	sw	t7,84(sp)
    1fb4:	8fbf0014 	lw	ra,20(sp)
    1fb8:	27bd0058 	addiu	sp,sp,88
    1fbc:	03e00008 	jr	ra
    1fc0:	00000000 	nop

00001fc4 <EffectSsIcePiece_Spawn>:
    1fc4:	27bdffb8 	addiu	sp,sp,-72
    1fc8:	afbf0014 	sw	ra,20(sp)
    1fcc:	afa40048 	sw	a0,72(sp)
    1fd0:	afa60050 	sw	a2,80(sp)
    1fd4:	afa70054 	sw	a3,84(sp)
    1fd8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1fdc:	27a4001c 	addiu	a0,sp,28
    1fe0:	27a4002c 	addiu	a0,sp,44
    1fe4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1fe8:	8fa50054 	lw	a1,84(sp)
    1fec:	27a40038 	addiu	a0,sp,56
    1ff0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    1ff4:	8fa50058 	lw	a1,88(sp)
    1ff8:	c7a40050 	lwc1	$f4,80(sp)
    1ffc:	8fae005c 	lw	t6,92(sp)
    2000:	8fa40048 	lw	a0,72(sp)
    2004:	2405001a 	li	a1,26
    2008:	24060080 	li	a2,128
    200c:	27a7001c 	addiu	a3,sp,28
    2010:	e7a40028 	swc1	$f4,40(sp)
    2014:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2018:	afae0044 	sw	t6,68(sp)
    201c:	8fbf0014 	lw	ra,20(sp)
    2020:	27bd0048 	addiu	sp,sp,72
    2024:	03e00008 	jr	ra
    2028:	00000000 	nop

0000202c <EffectSsIcePiece_SpawnBurst>:
    202c:	3c010000 	lui	at,0x0
    2030:	c4240054 	lwc1	$f4,84(at)
    2034:	27bdff70 	addiu	sp,sp,-144
    2038:	3c010000 	lui	at,0x0
    203c:	e4240064 	swc1	$f4,100(at)
    2040:	3c010000 	lui	at,0x0
    2044:	44866000 	mtc1	a2,$f12
    2048:	c4260058 	lwc1	$f6,88(at)
    204c:	3c0142c8 	lui	at,0x42c8
    2050:	44815000 	mtc1	at,$f10
    2054:	46066202 	mul.s	$f8,$f12,$f6
    2058:	f7b80030 	sdc1	$f24,48(sp)
    205c:	3c013f00 	lui	at,0x3f00
    2060:	4481c000 	mtc1	at,$f24
    2064:	f7b60028 	sdc1	$f22,40(sp)
    2068:	3c013f80 	lui	at,0x3f80
    206c:	afb60058 	sw	s6,88(sp)
    2070:	afb50054 	sw	s5,84(sp)
    2074:	afb00040 	sw	s0,64(sp)
    2078:	f7ba0038 	sdc1	$f26,56(sp)
    207c:	4481b000 	mtc1	at,$f22
    2080:	afb40050 	sw	s4,80(sp)
    2084:	afb3004c 	sw	s3,76(sp)
    2088:	afb20048 	sw	s2,72(sp)
    208c:	afb10044 	sw	s1,68(sp)
    2090:	f7b40020 	sdc1	$f20,32(sp)
    2094:	3c010000 	lui	at,0x0
    2098:	3c100000 	lui	s0,0x0
    209c:	3c150000 	lui	s5,0x0
    20a0:	3c160000 	lui	s6,0x0
    20a4:	460a4682 	mul.s	$f26,$f8,$f10
    20a8:	00a09025 	move	s2,a1
    20ac:	00809825 	move	s3,a0
    20b0:	afbf005c 	sw	ra,92(sp)
    20b4:	26d600e4 	addiu	s6,s6,228
    20b8:	26b50060 	addiu	s5,s5,96
    20bc:	2610006c 	addiu	s0,s0,108
    20c0:	c434005c 	lwc1	$f20,92(at)
    20c4:	27b10074 	addiu	s1,sp,116
    20c8:	27b40080 	addiu	s4,sp,128
    20cc:	8e4f0000 	lw	t7,0(s2)
    20d0:	4600b306 	mov.s	$f12,$f22
    20d4:	ae2f0000 	sw	t7,0(s1)
    20d8:	8e4e0004 	lw	t6,4(s2)
    20dc:	ae2e0004 	sw	t6,4(s1)
    20e0:	8e4f0008 	lw	t7,8(s2)
    20e4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    20e8:	ae2f0008 	sw	t7,8(s1)
    20ec:	c60e0000 	lwc1	$f14,0(s0)
    20f0:	46180080 	add.s	$f2,$f0,$f24
    20f4:	c6100004 	lwc1	$f16,4(s0)
    20f8:	46147102 	mul.s	$f4,$f14,$f20
    20fc:	c6120008 	lwc1	$f18,8(s0)
    2100:	4600b306 	mov.s	$f12,$f22
    2104:	46022182 	mul.s	$f6,$f4,$f2
    2108:	00000000 	nop
    210c:	46148202 	mul.s	$f8,$f16,$f20
    2110:	e7a60080 	swc1	$f6,128(sp)
    2114:	46024282 	mul.s	$f10,$f8,$f2
    2118:	c7a80074 	lwc1	$f8,116(sp)
    211c:	46149102 	mul.s	$f4,$f18,$f20
    2120:	e7aa0084 	swc1	$f10,132(sp)
    2124:	460e4280 	add.s	$f10,$f8,$f14
    2128:	c7a8007c 	lwc1	$f8,124(sp)
    212c:	46022182 	mul.s	$f6,$f4,$f2
    2130:	c7a40078 	lwc1	$f4,120(sp)
    2134:	e7aa0074 	swc1	$f10,116(sp)
    2138:	46124280 	add.s	$f10,$f8,$f18
    213c:	e7a60088 	swc1	$f6,136(sp)
    2140:	46102180 	add.s	$f6,$f4,$f16
    2144:	e7aa007c 	swc1	$f10,124(sp)
    2148:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    214c:	e7a60078 	swc1	$f6,120(sp)
    2150:	46180100 	add.s	$f4,$f0,$f24
    2154:	24180019 	li	t8,25
    2158:	afb80014 	sw	t8,20(sp)
    215c:	02602025 	move	a0,s3
    2160:	461a2182 	mul.s	$f6,$f4,$f26
    2164:	02202825 	move	a1,s1
    2168:	02803825 	move	a3,s4
    216c:	afb50010 	sw	s5,16(sp)
    2170:	44063000 	mfc1	a2,$f6
    2174:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2178:	00000000 	nop
    217c:	2610000c 	addiu	s0,s0,12
    2180:	5616ffd3 	bnel	s0,s6,20d0 <EffectSsIcePiece_SpawnBurst+0xa4>
    2184:	8e4f0000 	lw	t7,0(s2)
    2188:	8fbf005c 	lw	ra,92(sp)
    218c:	d7b40020 	ldc1	$f20,32(sp)
    2190:	d7b60028 	ldc1	$f22,40(sp)
    2194:	d7b80030 	ldc1	$f24,48(sp)
    2198:	d7ba0038 	ldc1	$f26,56(sp)
    219c:	8fb00040 	lw	s0,64(sp)
    21a0:	8fb10044 	lw	s1,68(sp)
    21a4:	8fb20048 	lw	s2,72(sp)
    21a8:	8fb3004c 	lw	s3,76(sp)
    21ac:	8fb40050 	lw	s4,80(sp)
    21b0:	8fb50054 	lw	s5,84(sp)
    21b4:	8fb60058 	lw	s6,88(sp)
    21b8:	03e00008 	jr	ra
    21bc:	27bd0090 	addiu	sp,sp,144

000021c0 <EffectSsEnIce_SpawnFlyingVec3f>:
    21c0:	27bdffa8 	addiu	sp,sp,-88
    21c4:	afbf0014 	sw	ra,20(sp)
    21c8:	afa40058 	sw	a0,88(sp)
    21cc:	afa5005c 	sw	a1,92(sp)
    21d0:	afa5001c 	sw	a1,28(sp)
    21d4:	afa70064 	sw	a3,100(sp)
    21d8:	00c02825 	move	a1,a2
    21dc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    21e0:	27a40020 	addiu	a0,sp,32
    21e4:	8fa4005c 	lw	a0,92(sp)
    21e8:	87af0066 	lh	t7,102(sp)
    21ec:	87b8006a 	lh	t8,106(sp)
    21f0:	87b9006e 	lh	t9,110(sp)
    21f4:	87a80072 	lh	t0,114(sp)
    21f8:	87a90076 	lh	t1,118(sp)
    21fc:	87aa007a 	lh	t2,122(sp)
    2200:	87ab007e 	lh	t3,126(sp)
    2204:	c7a40080 	lwc1	$f4,128(sp)
    2208:	a7a00054 	sh	zero,84(sp)
    220c:	a3af0048 	sb	t7,72(sp)
    2210:	a3b80049 	sb	t8,73(sp)
    2214:	a3b9004a 	sb	t9,74(sp)
    2218:	a3a8004b 	sb	t0,75(sp)
    221c:	a3a9004c 	sb	t1,76(sp)
    2220:	a3aa004d 	sb	t2,77(sp)
    2224:	a3ab004e 	sb	t3,78(sp)
    2228:	10800003 	beqz	a0,2238 <EffectSsEnIce_SpawnFlyingVec3f+0x78>
    222c:	e7a4002c 	swc1	$f4,44(sp)
    2230:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2234:	24050874 	li	a1,2164
    2238:	8fa40058 	lw	a0,88(sp)
    223c:	2405001b 	li	a1,27
    2240:	24060050 	li	a2,80
    2244:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2248:	27a7001c 	addiu	a3,sp,28
    224c:	8fbf0014 	lw	ra,20(sp)
    2250:	27bd0058 	addiu	sp,sp,88
    2254:	03e00008 	jr	ra
    2258:	00000000 	nop

0000225c <EffectSsEnIce_SpawnFlyingVec3s>:
    225c:	27bdffa8 	addiu	sp,sp,-88
    2260:	afbf0014 	sw	ra,20(sp)
    2264:	afa40058 	sw	a0,88(sp)
    2268:	afa5005c 	sw	a1,92(sp)
    226c:	afa70064 	sw	a3,100(sp)
    2270:	afa5001c 	sw	a1,28(sp)
    2274:	84cf0000 	lh	t7,0(a2)
    2278:	87a8006a 	lh	t0,106(sp)
    227c:	87a9006e 	lh	t1,110(sp)
    2280:	448f2000 	mtc1	t7,$f4
    2284:	87aa0072 	lh	t2,114(sp)
    2288:	87ab0076 	lh	t3,118(sp)
    228c:	468021a0 	cvt.s.w	$f6,$f4
    2290:	87ac007a 	lh	t4,122(sp)
    2294:	87ad007e 	lh	t5,126(sp)
    2298:	c7a40080 	lwc1	$f4,128(sp)
    229c:	00073c00 	sll	a3,a3,0x10
    22a0:	00073c03 	sra	a3,a3,0x10
    22a4:	e7a60020 	swc1	$f6,32(sp)
    22a8:	84d80002 	lh	t8,2(a2)
    22ac:	00a02025 	move	a0,a1
    22b0:	44984000 	mtc1	t8,$f8
    22b4:	00000000 	nop
    22b8:	468042a0 	cvt.s.w	$f10,$f8
    22bc:	e7aa0024 	swc1	$f10,36(sp)
    22c0:	84d90004 	lh	t9,4(a2)
    22c4:	a3a70048 	sb	a3,72(sp)
    22c8:	a7a00054 	sh	zero,84(sp)
    22cc:	44998000 	mtc1	t9,$f16
    22d0:	a3a80049 	sb	t0,73(sp)
    22d4:	a3a9004a 	sb	t1,74(sp)
    22d8:	468084a0 	cvt.s.w	$f18,$f16
    22dc:	a3aa004b 	sb	t2,75(sp)
    22e0:	a3ab004c 	sb	t3,76(sp)
    22e4:	a3ac004d 	sb	t4,77(sp)
    22e8:	a3ad004e 	sb	t5,78(sp)
    22ec:	e7a4002c 	swc1	$f4,44(sp)
    22f0:	10a00003 	beqz	a1,2300 <EffectSsEnIce_SpawnFlyingVec3s+0xa4>
    22f4:	e7b20028 	swc1	$f18,40(sp)
    22f8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    22fc:	24050874 	li	a1,2164
    2300:	8fa40058 	lw	a0,88(sp)
    2304:	2405001b 	li	a1,27
    2308:	24060050 	li	a2,80
    230c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2310:	27a7001c 	addiu	a3,sp,28
    2314:	8fbf0014 	lw	ra,20(sp)
    2318:	27bd0058 	addiu	sp,sp,88
    231c:	03e00008 	jr	ra
    2320:	00000000 	nop

00002324 <EffectSsEnIce_Spawn>:
    2324:	27bdffa8 	addiu	sp,sp,-88
    2328:	afbf0014 	sw	ra,20(sp)
    232c:	afa40058 	sw	a0,88(sp)
    2330:	afa60060 	sw	a2,96(sp)
    2334:	afa70064 	sw	a3,100(sp)
    2338:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    233c:	27a40020 	addiu	a0,sp,32
    2340:	27a40030 	addiu	a0,sp,48
    2344:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2348:	8fa50064 	lw	a1,100(sp)
    234c:	27a4003c 	addiu	a0,sp,60
    2350:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2354:	8fa50068 	lw	a1,104(sp)
    2358:	27a40048 	addiu	a0,sp,72
    235c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2360:	8fa5006c 	lw	a1,108(sp)
    2364:	27a4004c 	addiu	a0,sp,76
    2368:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    236c:	8fa50070 	lw	a1,112(sp)
    2370:	c7a40060 	lwc1	$f4,96(sp)
    2374:	8fae0074 	lw	t6,116(sp)
    2378:	240f0001 	li	t7,1
    237c:	a7af0054 	sh	t7,84(sp)
    2380:	8fa40058 	lw	a0,88(sp)
    2384:	2405001b 	li	a1,27
    2388:	24060080 	li	a2,128
    238c:	27a7001c 	addiu	a3,sp,28
    2390:	e7a4002c 	swc1	$f4,44(sp)
    2394:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2398:	afae0050 	sw	t6,80(sp)
    239c:	8fbf0014 	lw	ra,20(sp)
    23a0:	27bd0058 	addiu	sp,sp,88
    23a4:	03e00008 	jr	ra
    23a8:	00000000 	nop

000023ac <EffectSsFireTail_Spawn>:
    23ac:	27bdffb0 	addiu	sp,sp,-80
    23b0:	afbf0014 	sw	ra,20(sp)
    23b4:	afa40050 	sw	a0,80(sp)
    23b8:	afa50054 	sw	a1,84(sp)
    23bc:	afa7005c 	sw	a3,92(sp)
    23c0:	00c02825 	move	a1,a2
    23c4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    23c8:	27a40020 	addiu	a0,sp,32
    23cc:	27a40030 	addiu	a0,sp,48
    23d0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    23d4:	8fa50060 	lw	a1,96(sp)
    23d8:	27a4003e 	addiu	a0,sp,62
    23dc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    23e0:	8fa50068 	lw	a1,104(sp)
    23e4:	27a40042 	addiu	a0,sp,66
    23e8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    23ec:	8fa5006c 	lw	a1,108(sp)
    23f0:	87ae0066 	lh	t6,102(sp)
    23f4:	8faf0054 	lw	t7,84(sp)
    23f8:	c7a4005c 	lwc1	$f4,92(sp)
    23fc:	87b80072 	lh	t8,114(sp)
    2400:	87b90076 	lh	t9,118(sp)
    2404:	8fa80078 	lw	t0,120(sp)
    2408:	8fa40050 	lw	a0,80(sp)
    240c:	2405001c 	li	a1,28
    2410:	24060080 	li	a2,128
    2414:	27a7001c 	addiu	a3,sp,28
    2418:	a7ae003c 	sh	t6,60(sp)
    241c:	afaf001c 	sw	t7,28(sp)
    2420:	e7a4002c 	swc1	$f4,44(sp)
    2424:	a7b80046 	sh	t8,70(sp)
    2428:	a7b90048 	sh	t9,72(sp)
    242c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2430:	afa8004c 	sw	t0,76(sp)
    2434:	8fbf0014 	lw	ra,20(sp)
    2438:	27bd0050 	addiu	sp,sp,80
    243c:	03e00008 	jr	ra
    2440:	00000000 	nop

00002444 <EffectSsFireTail_SpawnFlame>:
    2444:	27bdffc8 	addiu	sp,sp,-56
    2448:	3c01437f 	lui	at,0x437f
    244c:	c7ac004c 	lwc1	$f12,76(sp)
    2450:	44812000 	mtc1	at,$f4
    2454:	3c010000 	lui	at,0x0
    2458:	a02000e6 	sb	zero,230(at)
    245c:	460c2182 	mul.s	$f6,$f4,$f12
    2460:	44877000 	mtc1	a3,$f14
    2464:	3c190000 	lui	t9,0x0
    2468:	3c080000 	lui	t0,0x0
    246c:	44077000 	mfc1	a3,$f14
    2470:	afbf0034 	sw	ra,52(sp)
    2474:	250800e8 	addiu	t0,t0,232
    2478:	4600320d 	trunc.w.s	$f8,$f6
    247c:	273900e4 	addiu	t9,t9,228
    2480:	24af005c 	addiu	t7,a1,92
    2484:	2418000f 	li	t8,15
    2488:	44024000 	mfc1	v0,$f8
    248c:	240a0001 	li	t2,1
    2490:	a02200e5 	sb	v0,229(at)
    2494:	3c010000 	lui	at,0x0
    2498:	a02000e9 	sb	zero,233(at)
    249c:	a02000ea 	sb	zero,234(at)
    24a0:	a02200e8 	sb	v0,232(at)
    24a4:	3c010000 	lui	at,0x0
    24a8:	a02200e4 	sb	v0,228(at)
    24ac:	3c013f80 	lui	at,0x3f80
    24b0:	44815000 	mtc1	at,$f10
    24b4:	24020001 	li	v0,1
    24b8:	460a6032 	c.eq.s	$f12,$f10
    24bc:	00000000 	nop
    24c0:	45000003 	bc1f	24d0 <EffectSsFireTail_SpawnFlame+0x8c>
    24c4:	00000000 	nop
    24c8:	10000001 	b	24d0 <EffectSsFireTail_SpawnFlame+0x8c>
    24cc:	00001025 	move	v0,zero
    24d0:	87a9004a 	lh	t1,74(sp)
    24d4:	afaf0010 	sw	t7,16(sp)
    24d8:	afb80014 	sw	t8,20(sp)
    24dc:	afb90018 	sw	t9,24(sp)
    24e0:	afa8001c 	sw	t0,28(sp)
    24e4:	afa20020 	sw	v0,32(sp)
    24e8:	afaa0028 	sw	t2,40(sp)
    24ec:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    24f0:	afa90024 	sw	t1,36(sp)
    24f4:	8fbf0034 	lw	ra,52(sp)
    24f8:	27bd0038 	addiu	sp,sp,56
    24fc:	03e00008 	jr	ra
    2500:	00000000 	nop

00002504 <EffectSsFireTail_SpawnFlameOnPlayer>:
    2504:	27bdffe0 	addiu	sp,sp,-32
    2508:	afa60028 	sw	a2,40(sp)
    250c:	87ae002a 	lh	t6,42(sp)
    2510:	44856000 	mtc1	a1,$f12
    2514:	afbf001c 	sw	ra,28(sp)
    2518:	8c851c44 	lw	a1,7236(a0)
    251c:	000e7880 	sll	t7,t6,0x2
    2520:	44877000 	mtc1	a3,$f14
    2524:	01ee7823 	subu	t7,t7,t6
    2528:	000f7880 	sll	t7,t7,0x2
    252c:	44076000 	mfc1	a3,$f12
    2530:	00af3021 	addu	a2,a1,t7
    2534:	24c60908 	addiu	a2,a2,2312
    2538:	afae0010 	sw	t6,16(sp)
    253c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2540:	e7ae0014 	swc1	$f14,20(sp)
    2544:	8fbf001c 	lw	ra,28(sp)
    2548:	27bd0020 	addiu	sp,sp,32
    254c:	03e00008 	jr	ra
    2550:	00000000 	nop

00002554 <EffectSsEnFire_SpawnVec3f>:
    2554:	27bdffd0 	addiu	sp,sp,-48
    2558:	afbf0014 	sw	ra,20(sp)
    255c:	afa40030 	sw	a0,48(sp)
    2560:	afa50034 	sw	a1,52(sp)
    2564:	afa7003c 	sw	a3,60(sp)
    2568:	00c02825 	move	a1,a2
    256c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2570:	27a4001c 	addiu	a0,sp,28
    2574:	8fa40034 	lw	a0,52(sp)
    2578:	87ae003e 	lh	t6,62(sp)
    257c:	87af0042 	lh	t7,66(sp)
    2580:	87b80046 	lh	t8,70(sp)
    2584:	87b9004a 	lh	t9,74(sp)
    2588:	afa40018 	sw	a0,24(sp)
    258c:	a7ae0028 	sh	t6,40(sp)
    2590:	a7af002a 	sh	t7,42(sp)
    2594:	a7b8002c 	sh	t8,44(sp)
    2598:	10800003 	beqz	a0,25a8 <EffectSsEnFire_SpawnVec3f+0x54>
    259c:	a7b9002e 	sh	t9,46(sp)
    25a0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    25a4:	24052822 	li	a1,10274
    25a8:	8fa40030 	lw	a0,48(sp)
    25ac:	2405001d 	li	a1,29
    25b0:	24060080 	li	a2,128
    25b4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    25b8:	27a70018 	addiu	a3,sp,24
    25bc:	8fbf0014 	lw	ra,20(sp)
    25c0:	27bd0030 	addiu	sp,sp,48
    25c4:	03e00008 	jr	ra
    25c8:	00000000 	nop

000025cc <EffectSsEnFire_SpawnVec3s>:
    25cc:	27bdffd0 	addiu	sp,sp,-48
    25d0:	afbf0014 	sw	ra,20(sp)
    25d4:	afa40030 	sw	a0,48(sp)
    25d8:	afa50034 	sw	a1,52(sp)
    25dc:	afa7003c 	sw	a3,60(sp)
    25e0:	84ce0000 	lh	t6,0(a2)
    25e4:	87a90046 	lh	t1,70(sp)
    25e8:	87a80042 	lh	t0,66(sp)
    25ec:	448e2000 	mtc1	t6,$f4
    25f0:	87ab004a 	lh	t3,74(sp)
    25f4:	00073c00 	sll	a3,a3,0x10
    25f8:	468021a0 	cvt.s.w	$f6,$f4
    25fc:	00073c03 	sra	a3,a3,0x10
    2600:	352a8000 	ori	t2,t1,0x8000
    2604:	00a02025 	move	a0,a1
    2608:	e7a6001c 	swc1	$f6,28(sp)
    260c:	84cf0002 	lh	t7,2(a2)
    2610:	448f4000 	mtc1	t7,$f8
    2614:	00000000 	nop
    2618:	468042a0 	cvt.s.w	$f10,$f8
    261c:	e7aa0020 	swc1	$f10,32(sp)
    2620:	84d80004 	lh	t8,4(a2)
    2624:	afa50018 	sw	a1,24(sp)
    2628:	a7a70028 	sh	a3,40(sp)
    262c:	44988000 	mtc1	t8,$f16
    2630:	a7aa002c 	sh	t2,44(sp)
    2634:	a7a8002a 	sh	t0,42(sp)
    2638:	468084a0 	cvt.s.w	$f18,$f16
    263c:	a7ab002e 	sh	t3,46(sp)
    2640:	10a00003 	beqz	a1,2650 <EffectSsEnFire_SpawnVec3s+0x84>
    2644:	e7b20024 	swc1	$f18,36(sp)
    2648:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    264c:	24052822 	li	a1,10274
    2650:	8fa40030 	lw	a0,48(sp)
    2654:	2405001d 	li	a1,29
    2658:	24060080 	li	a2,128
    265c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2660:	27a70018 	addiu	a3,sp,24
    2664:	8fbf0014 	lw	ra,20(sp)
    2668:	27bd0030 	addiu	sp,sp,48
    266c:	03e00008 	jr	ra
    2670:	00000000 	nop

00002674 <EffectSsExtra_Spawn>:
    2674:	27bdffc0 	addiu	sp,sp,-64
    2678:	afbf0014 	sw	ra,20(sp)
    267c:	afa40040 	sw	a0,64(sp)
    2680:	afa60048 	sw	a2,72(sp)
    2684:	afa7004c 	sw	a3,76(sp)
    2688:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    268c:	27a40018 	addiu	a0,sp,24
    2690:	27a40024 	addiu	a0,sp,36
    2694:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2698:	8fa50048 	lw	a1,72(sp)
    269c:	27a40030 	addiu	a0,sp,48
    26a0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    26a4:	8fa5004c 	lw	a1,76(sp)
    26a8:	87ae0052 	lh	t6,82(sp)
    26ac:	87af0056 	lh	t7,86(sp)
    26b0:	8fa40040 	lw	a0,64(sp)
    26b4:	2405001e 	li	a1,30
    26b8:	24060064 	li	a2,100
    26bc:	27a70018 	addiu	a3,sp,24
    26c0:	a7ae003c 	sh	t6,60(sp)
    26c4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    26c8:	a7af003e 	sh	t7,62(sp)
    26cc:	8fbf0014 	lw	ra,20(sp)
    26d0:	27bd0040 	addiu	sp,sp,64
    26d4:	03e00008 	jr	ra
    26d8:	00000000 	nop

000026dc <EffectSsFCircle_Spawn>:
    26dc:	27bdffd0 	addiu	sp,sp,-48
    26e0:	afbf0014 	sw	ra,20(sp)
    26e4:	afa40030 	sw	a0,48(sp)
    26e8:	afa50034 	sw	a1,52(sp)
    26ec:	afa7003c 	sw	a3,60(sp)
    26f0:	00c02825 	move	a1,a2
    26f4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    26f8:	27a40020 	addiu	a0,sp,32
    26fc:	8fae0034 	lw	t6,52(sp)
    2700:	87af003e 	lh	t7,62(sp)
    2704:	87b80042 	lh	t8,66(sp)
    2708:	8fa40030 	lw	a0,48(sp)
    270c:	2405001f 	li	a1,31
    2710:	24060080 	li	a2,128
    2714:	27a7001c 	addiu	a3,sp,28
    2718:	afae001c 	sw	t6,28(sp)
    271c:	a7af002c 	sh	t7,44(sp)
    2720:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2724:	a7b8002e 	sh	t8,46(sp)
    2728:	8fbf0014 	lw	ra,20(sp)
    272c:	27bd0030 	addiu	sp,sp,48
    2730:	03e00008 	jr	ra
    2734:	00000000 	nop

00002738 <EffectSsDeadDb_Spawn>:
    2738:	27bdffa8 	addiu	sp,sp,-88
    273c:	afbf0014 	sw	ra,20(sp)
    2740:	afa40058 	sw	a0,88(sp)
    2744:	afa60060 	sw	a2,96(sp)
    2748:	afa70064 	sw	a3,100(sp)
    274c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2750:	27a4001c 	addiu	a0,sp,28
    2754:	27a40028 	addiu	a0,sp,40
    2758:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    275c:	8fa50060 	lw	a1,96(sp)
    2760:	27a40034 	addiu	a0,sp,52
    2764:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2768:	8fa50064 	lw	a1,100(sp)
    276c:	87ae006a 	lh	t6,106(sp)
    2770:	87af006e 	lh	t7,110(sp)
    2774:	87b80072 	lh	t8,114(sp)
    2778:	a7ae0040 	sh	t6,64(sp)
    277c:	a7af0042 	sh	t7,66(sp)
    2780:	87b90076 	lh	t9,118(sp)
    2784:	87a8007a 	lh	t0,122(sp)
    2788:	87a9007e 	lh	t1,126(sp)
    278c:	87aa0082 	lh	t2,130(sp)
    2790:	87ab0086 	lh	t3,134(sp)
    2794:	87ac008a 	lh	t4,138(sp)
    2798:	87ad008e 	lh	t5,142(sp)
    279c:	8fae0090 	lw	t6,144(sp)
    27a0:	87af0096 	lh	t7,150(sp)
    27a4:	8fa40058 	lw	a0,88(sp)
    27a8:	24050020 	li	a1,32
    27ac:	24060078 	li	a2,120
    27b0:	27a7001c 	addiu	a3,sp,28
    27b4:	a3b80044 	sb	t8,68(sp)
    27b8:	a3b90045 	sb	t9,69(sp)
    27bc:	a3a80046 	sb	t0,70(sp)
    27c0:	a3a90047 	sb	t1,71(sp)
    27c4:	a3aa0048 	sb	t2,72(sp)
    27c8:	a3ab0049 	sb	t3,73(sp)
    27cc:	a3ac004a 	sb	t4,74(sp)
    27d0:	a7ad004c 	sh	t5,76(sp)
    27d4:	afae0050 	sw	t6,80(sp)
    27d8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    27dc:	a7af0054 	sh	t7,84(sp)
    27e0:	8fbf0014 	lw	ra,20(sp)
    27e4:	27bd0058 	addiu	sp,sp,88
    27e8:	03e00008 	jr	ra
    27ec:	00000000 	nop

000027f0 <EffectSsDeadDd_Spawn>:
    27f0:	27bdffa0 	addiu	sp,sp,-96
    27f4:	afbf0014 	sw	ra,20(sp)
    27f8:	afa40060 	sw	a0,96(sp)
    27fc:	afa60068 	sw	a2,104(sp)
    2800:	afa7006c 	sw	a3,108(sp)
    2804:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2808:	27a4001c 	addiu	a0,sp,28
    280c:	27a40028 	addiu	a0,sp,40
    2810:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2814:	8fa50068 	lw	a1,104(sp)
    2818:	27a40034 	addiu	a0,sp,52
    281c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2820:	8fa5006c 	lw	a1,108(sp)
    2824:	87ae0072 	lh	t6,114(sp)
    2828:	87af0076 	lh	t7,118(sp)
    282c:	87b8007a 	lh	t8,122(sp)
    2830:	a7ae0040 	sh	t6,64(sp)
    2834:	87b9007e 	lh	t9,126(sp)
    2838:	87a80082 	lh	t0,130(sp)
    283c:	87a90086 	lh	t1,134(sp)
    2840:	87aa008a 	lh	t2,138(sp)
    2844:	87ab008e 	lh	t3,142(sp)
    2848:	87ac0092 	lh	t4,146(sp)
    284c:	87ad0096 	lh	t5,150(sp)
    2850:	8fae0098 	lw	t6,152(sp)
    2854:	a3a0005c 	sb	zero,92(sp)
    2858:	8fa40060 	lw	a0,96(sp)
    285c:	24050021 	li	a1,33
    2860:	24060078 	li	a2,120
    2864:	27a7001c 	addiu	a3,sp,28
    2868:	a7af0042 	sh	t7,66(sp)
    286c:	a3b80044 	sb	t8,68(sp)
    2870:	a3b90045 	sb	t9,69(sp)
    2874:	a3a80046 	sb	t0,70(sp)
    2878:	a3a90047 	sb	t1,71(sp)
    287c:	a3aa0048 	sb	t2,72(sp)
    2880:	a3ab0049 	sb	t3,73(sp)
    2884:	a3ac004a 	sb	t4,74(sp)
    2888:	a7ad004c 	sh	t5,76(sp)
    288c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2890:	afae0050 	sw	t6,80(sp)
    2894:	8fbf0014 	lw	ra,20(sp)
    2898:	27bd0060 	addiu	sp,sp,96
    289c:	03e00008 	jr	ra
    28a0:	00000000 	nop

000028a4 <EffectSsDeadDd_SpawnRandYellow>:
    28a4:	27bdffa0 	addiu	sp,sp,-96
    28a8:	afbf0014 	sw	ra,20(sp)
    28ac:	afa40060 	sw	a0,96(sp)
    28b0:	afa60068 	sw	a2,104(sp)
    28b4:	afa7006c 	sw	a3,108(sp)
    28b8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    28bc:	27a4001c 	addiu	a0,sp,28
    28c0:	87ae006a 	lh	t6,106(sp)
    28c4:	87af006e 	lh	t7,110(sp)
    28c8:	c7a40070 	lwc1	$f4,112(sp)
    28cc:	8fb80074 	lw	t8,116(sp)
    28d0:	8fb90078 	lw	t9,120(sp)
    28d4:	24080001 	li	t0,1
    28d8:	a3a8005c 	sb	t0,92(sp)
    28dc:	8fa40060 	lw	a0,96(sp)
    28e0:	24050021 	li	a1,33
    28e4:	24060078 	li	a2,120
    28e8:	27a7001c 	addiu	a3,sp,28
    28ec:	a7ae0040 	sh	t6,64(sp)
    28f0:	a7af0042 	sh	t7,66(sp)
    28f4:	e7a40054 	swc1	$f4,84(sp)
    28f8:	afb80058 	sw	t8,88(sp)
    28fc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2900:	afb90050 	sw	t9,80(sp)
    2904:	8fbf0014 	lw	ra,20(sp)
    2908:	27bd0060 	addiu	sp,sp,96
    290c:	03e00008 	jr	ra
    2910:	00000000 	nop

00002914 <EffectSsDeadDs_Spawn>:
    2914:	27bdffb8 	addiu	sp,sp,-72
    2918:	afbf0014 	sw	ra,20(sp)
    291c:	afa40048 	sw	a0,72(sp)
    2920:	afa60050 	sw	a2,80(sp)
    2924:	afa70054 	sw	a3,84(sp)
    2928:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    292c:	27a40018 	addiu	a0,sp,24
    2930:	27a40024 	addiu	a0,sp,36
    2934:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2938:	8fa50050 	lw	a1,80(sp)
    293c:	27a40030 	addiu	a0,sp,48
    2940:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2944:	8fa50054 	lw	a1,84(sp)
    2948:	87ae005a 	lh	t6,90(sp)
    294c:	87af005e 	lh	t7,94(sp)
    2950:	87b80062 	lh	t8,98(sp)
    2954:	8fb90064 	lw	t9,100(sp)
    2958:	8fa40048 	lw	a0,72(sp)
    295c:	24050022 	li	a1,34
    2960:	24060064 	li	a2,100
    2964:	27a70018 	addiu	a3,sp,24
    2968:	a7ae003c 	sh	t6,60(sp)
    296c:	a7af003e 	sh	t7,62(sp)
    2970:	a7b80040 	sh	t8,64(sp)
    2974:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2978:	afb90044 	sw	t9,68(sp)
    297c:	8fbf0014 	lw	ra,20(sp)
    2980:	27bd0048 	addiu	sp,sp,72
    2984:	03e00008 	jr	ra
    2988:	00000000 	nop

0000298c <EffectSsDeadDs_SpawnStationary>:
    298c:	27bdffd8 	addiu	sp,sp,-40
    2990:	afa60030 	sw	a2,48(sp)
    2994:	afa70034 	sw	a3,52(sp)
    2998:	87af0036 	lh	t7,54(sp)
    299c:	87ae0032 	lh	t6,50(sp)
    29a0:	87b8003a 	lh	t8,58(sp)
    29a4:	8fb9003c 	lw	t9,60(sp)
    29a8:	3c060000 	lui	a2,0x0
    29ac:	24c60000 	addiu	a2,a2,0
    29b0:	afbf0024 	sw	ra,36(sp)
    29b4:	00c03825 	move	a3,a2
    29b8:	afaf0014 	sw	t7,20(sp)
    29bc:	afae0010 	sw	t6,16(sp)
    29c0:	afb80018 	sw	t8,24(sp)
    29c4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    29c8:	afb9001c 	sw	t9,28(sp)
    29cc:	8fbf0024 	lw	ra,36(sp)
    29d0:	27bd0028 	addiu	sp,sp,40
    29d4:	03e00008 	jr	ra
    29d8:	00000000 	nop

000029dc <EffectSsDeadSound_Spawn>:
    29dc:	27bdffb8 	addiu	sp,sp,-72
    29e0:	afbf0014 	sw	ra,20(sp)
    29e4:	afa40048 	sw	a0,72(sp)
    29e8:	afa60050 	sw	a2,80(sp)
    29ec:	afa70054 	sw	a3,84(sp)
    29f0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    29f4:	27a40018 	addiu	a0,sp,24
    29f8:	27a40024 	addiu	a0,sp,36
    29fc:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2a00:	8fa50050 	lw	a1,80(sp)
    2a04:	27a40030 	addiu	a0,sp,48
    2a08:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2a0c:	8fa50054 	lw	a1,84(sp)
    2a10:	87a2005e 	lh	v0,94(sp)
    2a14:	97ae005a 	lhu	t6,90(sp)
    2a18:	87af0062 	lh	t7,98(sp)
    2a1c:	8fb80064 	lw	t8,100(sp)
    2a20:	a7a2003e 	sh	v0,62(sp)
    2a24:	a7ae003c 	sh	t6,60(sp)
    2a28:	a7af0040 	sh	t7,64(sp)
    2a2c:	14400008 	bnez	v0,2a50 <EffectSsDeadSound_Spawn+0x74>
    2a30:	afb80044 	sw	t8,68(sp)
    2a34:	8fa40048 	lw	a0,72(sp)
    2a38:	24050023 	li	a1,35
    2a3c:	24060064 	li	a2,100
    2a40:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2a44:	27a70018 	addiu	a3,sp,24
    2a48:	10000007 	b	2a68 <EffectSsDeadSound_Spawn+0x8c>
    2a4c:	8fbf0014 	lw	ra,20(sp)
    2a50:	8fa40048 	lw	a0,72(sp)
    2a54:	24050023 	li	a1,35
    2a58:	2406007f 	li	a2,127
    2a5c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2a60:	27a70018 	addiu	a3,sp,24
    2a64:	8fbf0014 	lw	ra,20(sp)
    2a68:	27bd0048 	addiu	sp,sp,72
    2a6c:	03e00008 	jr	ra
    2a70:	00000000 	nop

00002a74 <EffectSsDeadSound_SpawnStationary>:
    2a74:	27bdffd8 	addiu	sp,sp,-40
    2a78:	afa60030 	sw	a2,48(sp)
    2a7c:	afa70034 	sw	a3,52(sp)
    2a80:	87af0036 	lh	t7,54(sp)
    2a84:	97ae0032 	lhu	t6,50(sp)
    2a88:	87b8003a 	lh	t8,58(sp)
    2a8c:	8fb9003c 	lw	t9,60(sp)
    2a90:	3c060000 	lui	a2,0x0
    2a94:	24c60000 	addiu	a2,a2,0
    2a98:	afbf0024 	sw	ra,36(sp)
    2a9c:	00c03825 	move	a3,a2
    2aa0:	afaf0014 	sw	t7,20(sp)
    2aa4:	afae0010 	sw	t6,16(sp)
    2aa8:	afb80018 	sw	t8,24(sp)
    2aac:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2ab0:	afb9001c 	sw	t9,28(sp)
    2ab4:	8fbf0024 	lw	ra,36(sp)
    2ab8:	27bd0028 	addiu	sp,sp,40
    2abc:	03e00008 	jr	ra
    2ac0:	00000000 	nop

00002ac4 <EffectSsIceSmoke_Spawn>:
    2ac4:	27bdffc0 	addiu	sp,sp,-64
    2ac8:	afbf0014 	sw	ra,20(sp)
    2acc:	afa40040 	sw	a0,64(sp)
    2ad0:	afa60048 	sw	a2,72(sp)
    2ad4:	afa7004c 	sw	a3,76(sp)
    2ad8:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2adc:	27a40018 	addiu	a0,sp,24
    2ae0:	27a40024 	addiu	a0,sp,36
    2ae4:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2ae8:	8fa50048 	lw	a1,72(sp)
    2aec:	27a40030 	addiu	a0,sp,48
    2af0:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2af4:	8fa5004c 	lw	a1,76(sp)
    2af8:	87ae0052 	lh	t6,82(sp)
    2afc:	8fa40040 	lw	a0,64(sp)
    2b00:	24050024 	li	a1,36
    2b04:	24060080 	li	a2,128
    2b08:	27a70018 	addiu	a3,sp,24
    2b0c:	0c000000 	jal	0 <EffectSs_DrawGEffect>
    2b10:	a7ae003c 	sh	t6,60(sp)
    2b14:	8fbf0014 	lw	ra,20(sp)
    2b18:	27bd0040 	addiu	sp,sp,64
    2b1c:	03e00008 	jr	ra
    2b20:	00000000 	nop
	...
