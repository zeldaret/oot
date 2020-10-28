
build/src/code/__osMalloc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ArenaImpl_GetFillAllocBlock>:
       0:	90820022 	lbu	v0,34(a0)
       4:	30420001 	andi	v0,v0,0x1
       8:	03e00008 	jr	ra
       c:	0002102b 	sltu	v0,zero,v0

00000010 <ArenaImpl_GetFillFreeBlock>:
      10:	90820022 	lbu	v0,34(a0)
      14:	30420002 	andi	v0,v0,0x2
      18:	03e00008 	jr	ra
      1c:	0002102b 	sltu	v0,zero,v0

00000020 <ArenaImpl_GetCheckFreeBlock>:
      20:	90820022 	lbu	v0,34(a0)
      24:	30420004 	andi	v0,v0,0x4
      28:	03e00008 	jr	ra
      2c:	0002102b 	sltu	v0,zero,v0

00000030 <ArenaImpl_SetFillAllocBlock>:
      30:	908e0022 	lbu	t6,34(a0)
      34:	35cf0001 	ori	t7,t6,0x1
      38:	03e00008 	jr	ra
      3c:	a08f0022 	sb	t7,34(a0)

00000040 <ArenaImpl_SetFillFreeBlock>:
      40:	908e0022 	lbu	t6,34(a0)
      44:	35cf0002 	ori	t7,t6,0x2
      48:	03e00008 	jr	ra
      4c:	a08f0022 	sb	t7,34(a0)

00000050 <ArenaImpl_SetCheckFreeBlock>:
      50:	908e0022 	lbu	t6,34(a0)
      54:	35cf0004 	ori	t7,t6,0x4
      58:	03e00008 	jr	ra
      5c:	a08f0022 	sb	t7,34(a0)

00000060 <ArenaImpl_UnsetFillAllocBlock>:
      60:	908e0022 	lbu	t6,34(a0)
      64:	31cffffe 	andi	t7,t6,0xfffe
      68:	03e00008 	jr	ra
      6c:	a08f0022 	sb	t7,34(a0)

00000070 <ArenaImpl_UnsetFillFreeBlock>:
      70:	908e0022 	lbu	t6,34(a0)
      74:	31cffffd 	andi	t7,t6,0xfffd
      78:	03e00008 	jr	ra
      7c:	a08f0022 	sb	t7,34(a0)

00000080 <ArenaImpl_UnsetCheckFreeBlock>:
      80:	908e0022 	lbu	t6,34(a0)
      84:	31cffffb 	andi	t7,t6,0xfffb
      88:	03e00008 	jr	ra
      8c:	a08f0022 	sb	t7,34(a0)

00000090 <ArenaImpl_SetDebugInfo>:
      90:	27bdffe0 	addiu	sp,sp,-32
      94:	afb00018 	sw	s0,24(sp)
      98:	afbf001c 	sw	ra,28(sp)
      9c:	afa7002c 	sw	a3,44(sp)
      a0:	00808025 	move	s0,a0
      a4:	ac850010 	sw	a1,16(a0)
      a8:	ac860014 	sw	a2,20(a0)
      ac:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
      b0:	00002025 	move	a0,zero
      b4:	ae020018 	sw	v0,24(s0)
      b8:	8fae002c 	lw	t6,44(sp)
      bc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
      c0:	ae0e001c 	sw	t6,28(s0)
      c4:	ae020020 	sw	v0,32(s0)
      c8:	ae030024 	sw	v1,36(s0)
      cc:	8fbf001c 	lw	ra,28(sp)
      d0:	8fb00018 	lw	s0,24(sp)
      d4:	27bd0020 	addiu	sp,sp,32
      d8:	03e00008 	jr	ra
      dc:	00000000 	nop

000000e0 <ArenaImpl_LockInit>:
      e0:	27bdffe8 	addiu	sp,sp,-24
      e4:	afbf0014 	sw	ra,20(sp)
      e8:	3c050000 	lui	a1,0x0
      ec:	24a50000 	addiu	a1,a1,0
      f0:	24840008 	addiu	a0,a0,8
      f4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
      f8:	24060001 	li	a2,1
      fc:	8fbf0014 	lw	ra,20(sp)
     100:	27bd0018 	addiu	sp,sp,24
     104:	03e00008 	jr	ra
     108:	00000000 	nop

0000010c <ArenaImpl_Lock>:
     10c:	27bdffe8 	addiu	sp,sp,-24
     110:	afbf0014 	sw	ra,20(sp)
     114:	24840008 	addiu	a0,a0,8
     118:	00002825 	move	a1,zero
     11c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     120:	24060001 	li	a2,1
     124:	8fbf0014 	lw	ra,20(sp)
     128:	27bd0018 	addiu	sp,sp,24
     12c:	03e00008 	jr	ra
     130:	00000000 	nop

00000134 <ArenaImpl_Unlock>:
     134:	27bdffe8 	addiu	sp,sp,-24
     138:	afbf0014 	sw	ra,20(sp)
     13c:	24840008 	addiu	a0,a0,8
     140:	00002825 	move	a1,zero
     144:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     148:	24060001 	li	a2,1
     14c:	8fbf0014 	lw	ra,20(sp)
     150:	27bd0018 	addiu	sp,sp,24
     154:	03e00008 	jr	ra
     158:	00000000 	nop

0000015c <ArenaImpl_GetNextBlock>:
     15c:	27bdffe8 	addiu	sp,sp,-24
     160:	afbf0014 	sw	ra,20(sp)
     164:	8c850008 	lw	a1,8(a0)
     168:	00803025 	move	a2,a0
     16c:	50a0000d 	beqzl	a1,1a4 <ArenaImpl_GetNextBlock+0x48>
     170:	8fbf0014 	lw	ra,20(sp)
     174:	10a00004 	beqz	a1,188 <ArenaImpl_GetNextBlock+0x2c>
     178:	3c040000 	lui	a0,0x0
     17c:	84ae0000 	lh	t6,0(a1)
     180:	24017373 	li	at,29555
     184:	11c10006 	beq	t6,at,1a0 <ArenaImpl_GetNextBlock+0x44>
     188:	24840000 	addiu	a0,a0,0
     18c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     190:	afa60018 	sw	a2,24(sp)
     194:	8fa60018 	lw	a2,24(sp)
     198:	00002825 	move	a1,zero
     19c:	acc00008 	sw	zero,8(a2)
     1a0:	8fbf0014 	lw	ra,20(sp)
     1a4:	27bd0018 	addiu	sp,sp,24
     1a8:	00a01025 	move	v0,a1
     1ac:	03e00008 	jr	ra
     1b0:	00000000 	nop

000001b4 <ArenaImpl_GetPrevBlock>:
     1b4:	27bdffe8 	addiu	sp,sp,-24
     1b8:	afbf0014 	sw	ra,20(sp)
     1bc:	8c85000c 	lw	a1,12(a0)
     1c0:	00803025 	move	a2,a0
     1c4:	50a0000d 	beqzl	a1,1fc <ArenaImpl_GetPrevBlock+0x48>
     1c8:	8fbf0014 	lw	ra,20(sp)
     1cc:	10a00004 	beqz	a1,1e0 <ArenaImpl_GetPrevBlock+0x2c>
     1d0:	3c040000 	lui	a0,0x0
     1d4:	84ae0000 	lh	t6,0(a1)
     1d8:	24017373 	li	at,29555
     1dc:	11c10006 	beq	t6,at,1f8 <ArenaImpl_GetPrevBlock+0x44>
     1e0:	24840038 	addiu	a0,a0,56
     1e4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     1e8:	afa60018 	sw	a2,24(sp)
     1ec:	8fa60018 	lw	a2,24(sp)
     1f0:	00002825 	move	a1,zero
     1f4:	acc0000c 	sw	zero,12(a2)
     1f8:	8fbf0014 	lw	ra,20(sp)
     1fc:	27bd0018 	addiu	sp,sp,24
     200:	00a01025 	move	v0,a1
     204:	03e00008 	jr	ra
     208:	00000000 	nop

0000020c <ArenaImpl_GetLastBlock>:
     20c:	27bdffe0 	addiu	sp,sp,-32
     210:	afb10018 	sw	s1,24(sp)
     214:	afbf001c 	sw	ra,28(sp)
     218:	afb00014 	sw	s0,20(sp)
     21c:	1080000f 	beqz	a0,25c <ArenaImpl_GetLastBlock+0x50>
     220:	00008825 	move	s1,zero
     224:	8c820000 	lw	v0,0(a0)
     228:	5040000d 	beqzl	v0,260 <ArenaImpl_GetLastBlock+0x54>
     22c:	8fbf001c 	lw	ra,28(sp)
     230:	844e0000 	lh	t6,0(v0)
     234:	24017373 	li	at,29555
     238:	55c10009 	bnel	t6,at,260 <ArenaImpl_GetLastBlock+0x54>
     23c:	8fbf001c 	lw	ra,28(sp)
     240:	10400006 	beqz	v0,25c <ArenaImpl_GetLastBlock+0x50>
     244:	00408025 	move	s0,v0
     248:	02008825 	move	s1,s0
     24c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     250:	02002025 	move	a0,s0
     254:	1440fffc 	bnez	v0,248 <ArenaImpl_GetLastBlock+0x3c>
     258:	00408025 	move	s0,v0
     25c:	8fbf001c 	lw	ra,28(sp)
     260:	02201025 	move	v0,s1
     264:	8fb10018 	lw	s1,24(sp)
     268:	8fb00014 	lw	s0,20(sp)
     26c:	03e00008 	jr	ra
     270:	27bd0020 	addiu	sp,sp,32

00000274 <__osMallocInit>:
     274:	27bdffe8 	addiu	sp,sp,-24
     278:	afbf0014 	sw	ra,20(sp)
     27c:	afa5001c 	sw	a1,28(sp)
     280:	afa40018 	sw	a0,24(sp)
     284:	afa60020 	sw	a2,32(sp)
     288:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     28c:	24050024 	li	a1,36
     290:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     294:	8fa40018 	lw	a0,24(sp)
     298:	8fa40018 	lw	a0,24(sp)
     29c:	8fa5001c 	lw	a1,28(sp)
     2a0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     2a4:	8fa60020 	lw	a2,32(sp)
     2a8:	8faf0018 	lw	t7,24(sp)
     2ac:	240e0001 	li	t6,1
     2b0:	a1ee0021 	sb	t6,33(t7)
     2b4:	8fbf0014 	lw	ra,20(sp)
     2b8:	27bd0018 	addiu	sp,sp,24
     2bc:	03e00008 	jr	ra
     2c0:	00000000 	nop

000002c4 <__osMallocAddBlock>:
     2c4:	27bdffc8 	addiu	sp,sp,-56
     2c8:	afb10018 	sw	s1,24(sp)
     2cc:	00808825 	move	s1,a0
     2d0:	afbf001c 	sw	ra,28(sp)
     2d4:	afb00014 	sw	s0,20(sp)
     2d8:	afa60040 	sw	a2,64(sp)
     2dc:	10a00024 	beqz	a1,370 <__osMallocAddBlock+0xac>
     2e0:	00a03825 	move	a3,a1
     2e4:	24b0000f 	addiu	s0,a1,15
     2e8:	2401fff0 	li	at,-16
     2ec:	02018024 	and	s0,s0,at
     2f0:	02057823 	subu	t7,s0,a1
     2f4:	00cf3023 	subu	a2,a2,t7
     2f8:	00c13024 	and	a2,a2,at
     2fc:	28c10031 	slti	at,a2,49
     300:	1420001b 	bnez	at,370 <__osMallocAddBlock+0xac>
     304:	02002025 	move	a0,s0
     308:	240500ab 	li	a1,171
     30c:	afa60020 	sw	a2,32(sp)
     310:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     314:	afa7003c 	sw	a3,60(sp)
     318:	8fa60020 	lw	a2,32(sp)
     31c:	24190001 	li	t9,1
     320:	24087373 	li	t0,29555
     324:	24d8ffd0 	addiu	t8,a2,-48
     328:	ae000008 	sw	zero,8(s0)
     32c:	ae00000c 	sw	zero,12(s0)
     330:	ae180004 	sw	t8,4(s0)
     334:	a6190002 	sh	t9,2(s0)
     338:	a6080000 	sh	t0,0(s0)
     33c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     340:	02202025 	move	a0,s1
     344:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     348:	02202025 	move	a0,s1
     34c:	14400004 	bnez	v0,360 <__osMallocAddBlock+0x9c>
     350:	8fa7003c 	lw	a3,60(sp)
     354:	ae300000 	sw	s0,0(s1)
     358:	10000003 	b	368 <__osMallocAddBlock+0xa4>
     35c:	ae270004 	sw	a3,4(s1)
     360:	ae02000c 	sw	v0,12(s0)
     364:	ac500008 	sw	s0,8(v0)
     368:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     36c:	02202025 	move	a0,s1
     370:	8fbf001c 	lw	ra,28(sp)
     374:	8fb00014 	lw	s0,20(sp)
     378:	8fb10018 	lw	s1,24(sp)
     37c:	03e00008 	jr	ra
     380:	27bd0038 	addiu	sp,sp,56

00000384 <ArenaImpl_RemoveAllBlocks>:
     384:	27bdffe0 	addiu	sp,sp,-32
     388:	afbf001c 	sw	ra,28(sp)
     38c:	afb10018 	sw	s1,24(sp)
     390:	afb00014 	sw	s0,20(sp)
     394:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     398:	afa40020 	sw	a0,32(sp)
     39c:	8fae0020 	lw	t6,32(sp)
     3a0:	8dd00000 	lw	s0,0(t6)
     3a4:	1200000b 	beqz	s0,3d4 <ArenaImpl_RemoveAllBlocks+0x50>
     3a8:	00000000 	nop
     3ac:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     3b0:	02002025 	move	a0,s0
     3b4:	8e060004 	lw	a2,4(s0)
     3b8:	00408825 	move	s1,v0
     3bc:	02002025 	move	a0,s0
     3c0:	240500ab 	li	a1,171
     3c4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     3c8:	24c60030 	addiu	a2,a2,48
     3cc:	1620fff7 	bnez	s1,3ac <ArenaImpl_RemoveAllBlocks+0x28>
     3d0:	02208025 	move	s0,s1
     3d4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     3d8:	8fa40020 	lw	a0,32(sp)
     3dc:	8fbf001c 	lw	ra,28(sp)
     3e0:	8fb00014 	lw	s0,20(sp)
     3e4:	8fb10018 	lw	s1,24(sp)
     3e8:	03e00008 	jr	ra
     3ec:	27bd0020 	addiu	sp,sp,32

000003f0 <__osMallocCleanup>:
     3f0:	27bdffe8 	addiu	sp,sp,-24
     3f4:	afbf0014 	sw	ra,20(sp)
     3f8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     3fc:	afa40018 	sw	a0,24(sp)
     400:	8fa40018 	lw	a0,24(sp)
     404:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     408:	24050024 	li	a1,36
     40c:	8fbf0014 	lw	ra,20(sp)
     410:	27bd0018 	addiu	sp,sp,24
     414:	03e00008 	jr	ra
     418:	00000000 	nop

0000041c <__osMallocIsInitalized>:
     41c:	03e00008 	jr	ra
     420:	90820021 	lbu	v0,33(a0)

00000424 <__osMalloc_FreeBlockTest>:
     424:	3c0e0000 	lui	t6,0x0
     428:	8dce0000 	lw	t6,0(t6)
     42c:	27bdffe0 	addiu	sp,sp,-32
     430:	afbf001c 	sw	ra,28(sp)
     434:	afa40020 	sw	a0,32(sp)
     438:	11c0001e 	beqz	t6,4b4 <__osMalloc_FreeBlockTest+0x90>
     43c:	afa50024 	sw	a1,36(sp)
     440:	8cb80004 	lw	t8,4(a1)
     444:	24a60030 	addiu	a2,a1,48
     448:	00c01825 	move	v1,a2
     44c:	00b83821 	addu	a3,a1,t8
     450:	24e70030 	addiu	a3,a3,48
     454:	00c7082b 	sltu	at,a2,a3
     458:	10200016 	beqz	at,4b4 <__osMalloc_FreeBlockTest+0x90>
     45c:	3c05efef 	lui	a1,0xefef
     460:	3c04abab 	lui	a0,0xabab
     464:	3484abab 	ori	a0,a0,0xabab
     468:	34a5efef 	ori	a1,a1,0xefef
     46c:	8c620000 	lw	v0,0(v1)
     470:	5082000d 	beql	a0,v0,4a8 <__osMalloc_FreeBlockTest+0x84>
     474:	24630004 	addiu	v1,v1,4
     478:	50a2000b 	beql	a1,v0,4a8 <__osMalloc_FreeBlockTest+0x84>
     47c:	24630004 	addiu	v1,v1,4
     480:	3c040000 	lui	a0,0x0
     484:	24840070 	addiu	a0,a0,112
     488:	8fa50024 	lw	a1,36(sp)
     48c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     490:	afa30010 	sw	v1,16(sp)
     494:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     498:	8fa40020 	lw	a0,32(sp)
     49c:	10000006 	b	4b8 <__osMalloc_FreeBlockTest+0x94>
     4a0:	8fbf001c 	lw	ra,28(sp)
     4a4:	24630004 	addiu	v1,v1,4
     4a8:	0067082b 	sltu	at,v1,a3
     4ac:	5420fff0 	bnezl	at,470 <__osMalloc_FreeBlockTest+0x4c>
     4b0:	8c620000 	lw	v0,0(v1)
     4b4:	8fbf001c 	lw	ra,28(sp)
     4b8:	27bd0020 	addiu	sp,sp,32
     4bc:	03e00008 	jr	ra
     4c0:	00000000 	nop

000004c4 <__osMalloc_NoLockDebug>:
     4c4:	27bdffc0 	addiu	sp,sp,-64
     4c8:	afbf001c 	sw	ra,28(sp)
     4cc:	afb10018 	sw	s1,24(sp)
     4d0:	afb00014 	sw	s0,20(sp)
     4d4:	afa40040 	sw	a0,64(sp)
     4d8:	afa60048 	sw	a2,72(sp)
     4dc:	afa7004c 	sw	a3,76(sp)
     4e0:	afa00030 	sw	zero,48(sp)
     4e4:	8c900000 	lw	s0,0(a0)
     4e8:	24b1000f 	addiu	s1,a1,15
     4ec:	2401fff0 	li	at,-16
     4f0:	12000042 	beqz	s0,5fc <__osMalloc_NoLockDebug+0x138>
     4f4:	02218824 	and	s1,s1,at
     4f8:	860f0002 	lh	t7,2(s0)
     4fc:	11e0003b 	beqz	t7,5ec <__osMalloc_NoLockDebug+0x128>
     500:	00000000 	nop
     504:	8e020004 	lw	v0,4(s0)
     508:	0051082b 	sltu	at,v0,s1
     50c:	14200037 	bnez	at,5ec <__osMalloc_NoLockDebug+0x128>
     510:	00000000 	nop
     514:	8fb80040 	lw	t8,64(sp)
     518:	93190022 	lbu	t9,34(t8)
     51c:	03002025 	move	a0,t8
     520:	33280004 	andi	t0,t9,0x4
     524:	51000005 	beqzl	t0,53c <__osMalloc_NoLockDebug+0x78>
     528:	2623000f 	addiu	v1,s1,15
     52c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     530:	02002825 	move	a1,s0
     534:	8e020004 	lw	v0,4(s0)
     538:	2623000f 	addiu	v1,s1,15
     53c:	2401fff0 	li	at,-16
     540:	00611824 	and	v1,v1,at
     544:	24630030 	addiu	v1,v1,48
     548:	0062082b 	sltu	at,v1,v0
     54c:	10200015 	beqz	at,5a4 <__osMalloc_NoLockDebug+0xe0>
     550:	02002025 	move	a0,s0
     554:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     558:	afa30028 	sw	v1,40(sp)
     55c:	8fa30028 	lw	v1,40(sp)
     560:	240b0001 	li	t3,1
     564:	240c7373 	li	t4,29555
     568:	02032021 	addu	a0,s0,v1
     56c:	ac820008 	sw	v0,8(a0)
     570:	ac90000c 	sw	s0,12(a0)
     574:	8e090004 	lw	t1,4(s0)
     578:	a48b0002 	sh	t3,2(a0)
     57c:	a48c0000 	sh	t4,0(a0)
     580:	01235023 	subu	t2,t1,v1
     584:	ac8a0004 	sw	t2,4(a0)
     588:	ae040008 	sw	a0,8(s0)
     58c:	ae110004 	sw	s1,4(s0)
     590:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     594:	afa40024 	sw	a0,36(sp)
     598:	10400002 	beqz	v0,5a4 <__osMalloc_NoLockDebug+0xe0>
     59c:	8fa40024 	lw	a0,36(sp)
     5a0:	ac44000c 	sw	a0,12(v0)
     5a4:	a6000002 	sh	zero,2(s0)
     5a8:	8fa70040 	lw	a3,64(sp)
     5ac:	8fa6004c 	lw	a2,76(sp)
     5b0:	8fa50048 	lw	a1,72(sp)
     5b4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     5b8:	02002025 	move	a0,s0
     5bc:	8fad0040 	lw	t5,64(sp)
     5c0:	26040030 	addiu	a0,s0,48
     5c4:	afa40030 	sw	a0,48(sp)
     5c8:	91ae0022 	lbu	t6,34(t5)
     5cc:	240500cd 	li	a1,205
     5d0:	31cf0001 	andi	t7,t6,0x1
     5d4:	51e0000a 	beqzl	t7,600 <__osMalloc_NoLockDebug+0x13c>
     5d8:	8fbf001c 	lw	ra,28(sp)
     5dc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     5e0:	02203025 	move	a2,s1
     5e4:	10000006 	b	600 <__osMalloc_NoLockDebug+0x13c>
     5e8:	8fbf001c 	lw	ra,28(sp)
     5ec:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     5f0:	02002025 	move	a0,s0
     5f4:	1440ffc0 	bnez	v0,4f8 <__osMalloc_NoLockDebug+0x34>
     5f8:	00408025 	move	s0,v0
     5fc:	8fbf001c 	lw	ra,28(sp)
     600:	8fa20030 	lw	v0,48(sp)
     604:	8fb00014 	lw	s0,20(sp)
     608:	8fb10018 	lw	s1,24(sp)
     60c:	03e00008 	jr	ra
     610:	27bd0040 	addiu	sp,sp,64

00000614 <__osMallocDebug>:
     614:	27bdffe0 	addiu	sp,sp,-32
     618:	afbf0014 	sw	ra,20(sp)
     61c:	afa40020 	sw	a0,32(sp)
     620:	afa50024 	sw	a1,36(sp)
     624:	afa60028 	sw	a2,40(sp)
     628:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     62c:	afa7002c 	sw	a3,44(sp)
     630:	8fa40020 	lw	a0,32(sp)
     634:	8fa50024 	lw	a1,36(sp)
     638:	8fa60028 	lw	a2,40(sp)
     63c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     640:	8fa7002c 	lw	a3,44(sp)
     644:	afa2001c 	sw	v0,28(sp)
     648:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     64c:	8fa40020 	lw	a0,32(sp)
     650:	8fbf0014 	lw	ra,20(sp)
     654:	8fa2001c 	lw	v0,28(sp)
     658:	27bd0020 	addiu	sp,sp,32
     65c:	03e00008 	jr	ra
     660:	00000000 	nop

00000664 <__osMallocRDebug>:
     664:	27bdffb8 	addiu	sp,sp,-72
     668:	afb1001c 	sw	s1,28(sp)
     66c:	afbf0024 	sw	ra,36(sp)
     670:	afb20020 	sw	s2,32(sp)
     674:	24b1000f 	addiu	s1,a1,15
     678:	2401fff0 	li	at,-16
     67c:	00809025 	move	s2,a0
     680:	afb00018 	sw	s0,24(sp)
     684:	afa60050 	sw	a2,80(sp)
     688:	afa70054 	sw	a3,84(sp)
     68c:	afa00034 	sw	zero,52(sp)
     690:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     694:	02218824 	and	s1,s1,at
     698:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     69c:	02402025 	move	a0,s2
     6a0:	10400041 	beqz	v0,7a8 <__osMallocRDebug+0x144>
     6a4:	00408025 	move	s0,v0
     6a8:	844e0002 	lh	t6,2(v0)
     6ac:	11c0003a 	beqz	t6,798 <__osMallocRDebug+0x134>
     6b0:	00000000 	nop
     6b4:	8c4f0004 	lw	t7,4(v0)
     6b8:	01f1082b 	sltu	at,t7,s1
     6bc:	14200036 	bnez	at,798 <__osMallocRDebug+0x134>
     6c0:	00000000 	nop
     6c4:	92580022 	lbu	t8,34(s2)
     6c8:	02402025 	move	a0,s2
     6cc:	33190004 	andi	t9,t8,0x4
     6d0:	53200004 	beqzl	t9,6e4 <__osMallocRDebug+0x80>
     6d4:	8e020004 	lw	v0,4(s0)
     6d8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     6dc:	02002825 	move	a1,s0
     6e0:	8e020004 	lw	v0,4(s0)
     6e4:	2623000f 	addiu	v1,s1,15
     6e8:	2401fff0 	li	at,-16
     6ec:	00611824 	and	v1,v1,at
     6f0:	24630030 	addiu	v1,v1,48
     6f4:	0062082b 	sltu	at,v1,v0
     6f8:	10200016 	beqz	at,754 <__osMallocRDebug+0xf0>
     6fc:	02024021 	addu	t0,s0,v0
     700:	01112823 	subu	a1,t0,s1
     704:	afa50040 	sw	a1,64(sp)
     708:	02002025 	move	a0,s0
     70c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     710:	afa3002c 	sw	v1,44(sp)
     714:	8fa40040 	lw	a0,64(sp)
     718:	8fa3002c 	lw	v1,44(sp)
     71c:	24097373 	li	t1,29555
     720:	ac820008 	sw	v0,8(a0)
     724:	ac90000c 	sw	s0,12(a0)
     728:	ac910004 	sw	s1,4(a0)
     72c:	a4890000 	sh	t1,0(a0)
     730:	8e0a0004 	lw	t2,4(s0)
     734:	ae040008 	sw	a0,8(s0)
     738:	01435823 	subu	t3,t2,v1
     73c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     740:	ae0b0004 	sw	t3,4(s0)
     744:	10400002 	beqz	v0,750 <__osMallocRDebug+0xec>
     748:	8fa50040 	lw	a1,64(sp)
     74c:	ac45000c 	sw	a1,12(v0)
     750:	00a08025 	move	s0,a1
     754:	a6000002 	sh	zero,2(s0)
     758:	8fa60054 	lw	a2,84(sp)
     75c:	8fa50050 	lw	a1,80(sp)
     760:	02002025 	move	a0,s0
     764:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     768:	02403825 	move	a3,s2
     76c:	26040030 	addiu	a0,s0,48
     770:	afa40034 	sw	a0,52(sp)
     774:	924c0022 	lbu	t4,34(s2)
     778:	240500cd 	li	a1,205
     77c:	318d0001 	andi	t5,t4,0x1
     780:	11a00009 	beqz	t5,7a8 <__osMallocRDebug+0x144>
     784:	00000000 	nop
     788:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     78c:	02203025 	move	a2,s1
     790:	10000005 	b	7a8 <__osMallocRDebug+0x144>
     794:	00000000 	nop
     798:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     79c:	02002025 	move	a0,s0
     7a0:	1440ffc1 	bnez	v0,6a8 <__osMallocRDebug+0x44>
     7a4:	00408025 	move	s0,v0
     7a8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     7ac:	02402025 	move	a0,s2
     7b0:	8fbf0024 	lw	ra,36(sp)
     7b4:	8fa20034 	lw	v0,52(sp)
     7b8:	8fb00018 	lw	s0,24(sp)
     7bc:	8fb1001c 	lw	s1,28(sp)
     7c0:	8fb20020 	lw	s2,32(sp)
     7c4:	03e00008 	jr	ra
     7c8:	27bd0048 	addiu	sp,sp,72

000007cc <__osMalloc_NoLock>:
     7cc:	27bdffc0 	addiu	sp,sp,-64
     7d0:	afbf001c 	sw	ra,28(sp)
     7d4:	afb10018 	sw	s1,24(sp)
     7d8:	afb00014 	sw	s0,20(sp)
     7dc:	afa40040 	sw	a0,64(sp)
     7e0:	afa00030 	sw	zero,48(sp)
     7e4:	8c900000 	lw	s0,0(a0)
     7e8:	24b1000f 	addiu	s1,a1,15
     7ec:	2401fff0 	li	at,-16
     7f0:	12000042 	beqz	s0,8fc <__osMalloc_NoLock+0x130>
     7f4:	02218824 	and	s1,s1,at
     7f8:	860f0002 	lh	t7,2(s0)
     7fc:	11e0003b 	beqz	t7,8ec <__osMalloc_NoLock+0x120>
     800:	00000000 	nop
     804:	8e020004 	lw	v0,4(s0)
     808:	0051082b 	sltu	at,v0,s1
     80c:	14200037 	bnez	at,8ec <__osMalloc_NoLock+0x120>
     810:	00000000 	nop
     814:	8fb80040 	lw	t8,64(sp)
     818:	93190022 	lbu	t9,34(t8)
     81c:	03002025 	move	a0,t8
     820:	33280004 	andi	t0,t9,0x4
     824:	51000005 	beqzl	t0,83c <__osMalloc_NoLock+0x70>
     828:	2623000f 	addiu	v1,s1,15
     82c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     830:	02002825 	move	a1,s0
     834:	8e020004 	lw	v0,4(s0)
     838:	2623000f 	addiu	v1,s1,15
     83c:	2401fff0 	li	at,-16
     840:	00611824 	and	v1,v1,at
     844:	24630030 	addiu	v1,v1,48
     848:	0062082b 	sltu	at,v1,v0
     84c:	10200015 	beqz	at,8a4 <__osMalloc_NoLock+0xd8>
     850:	02002025 	move	a0,s0
     854:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     858:	afa30028 	sw	v1,40(sp)
     85c:	8fa30028 	lw	v1,40(sp)
     860:	240b0001 	li	t3,1
     864:	240c7373 	li	t4,29555
     868:	02032021 	addu	a0,s0,v1
     86c:	ac820008 	sw	v0,8(a0)
     870:	ac90000c 	sw	s0,12(a0)
     874:	8e090004 	lw	t1,4(s0)
     878:	a48b0002 	sh	t3,2(a0)
     87c:	a48c0000 	sh	t4,0(a0)
     880:	01235023 	subu	t2,t1,v1
     884:	ac8a0004 	sw	t2,4(a0)
     888:	ae040008 	sw	a0,8(s0)
     88c:	ae110004 	sw	s1,4(s0)
     890:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     894:	afa40024 	sw	a0,36(sp)
     898:	10400002 	beqz	v0,8a4 <__osMalloc_NoLock+0xd8>
     89c:	8fa40024 	lw	a0,36(sp)
     8a0:	ac44000c 	sw	a0,12(v0)
     8a4:	a6000002 	sh	zero,2(s0)
     8a8:	8fa70040 	lw	a3,64(sp)
     8ac:	02002025 	move	a0,s0
     8b0:	00002825 	move	a1,zero
     8b4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     8b8:	00003025 	move	a2,zero
     8bc:	8fad0040 	lw	t5,64(sp)
     8c0:	26040030 	addiu	a0,s0,48
     8c4:	afa40030 	sw	a0,48(sp)
     8c8:	91ae0022 	lbu	t6,34(t5)
     8cc:	240500cd 	li	a1,205
     8d0:	31cf0001 	andi	t7,t6,0x1
     8d4:	51e0000a 	beqzl	t7,900 <__osMalloc_NoLock+0x134>
     8d8:	8fbf001c 	lw	ra,28(sp)
     8dc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     8e0:	02203025 	move	a2,s1
     8e4:	10000006 	b	900 <__osMalloc_NoLock+0x134>
     8e8:	8fbf001c 	lw	ra,28(sp)
     8ec:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     8f0:	02002025 	move	a0,s0
     8f4:	1440ffc0 	bnez	v0,7f8 <__osMalloc_NoLock+0x2c>
     8f8:	00408025 	move	s0,v0
     8fc:	8fbf001c 	lw	ra,28(sp)
     900:	8fa20030 	lw	v0,48(sp)
     904:	8fb00014 	lw	s0,20(sp)
     908:	8fb10018 	lw	s1,24(sp)
     90c:	03e00008 	jr	ra
     910:	27bd0040 	addiu	sp,sp,64

00000914 <__osMalloc>:
     914:	27bdffe0 	addiu	sp,sp,-32
     918:	afbf0014 	sw	ra,20(sp)
     91c:	afa40020 	sw	a0,32(sp)
     920:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     924:	afa50024 	sw	a1,36(sp)
     928:	8fa40020 	lw	a0,32(sp)
     92c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     930:	8fa50024 	lw	a1,36(sp)
     934:	afa2001c 	sw	v0,28(sp)
     938:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     93c:	8fa40020 	lw	a0,32(sp)
     940:	8fbf0014 	lw	ra,20(sp)
     944:	8fa2001c 	lw	v0,28(sp)
     948:	27bd0020 	addiu	sp,sp,32
     94c:	03e00008 	jr	ra
     950:	00000000 	nop

00000954 <__osMallocR>:
     954:	27bdffb8 	addiu	sp,sp,-72
     958:	afb1001c 	sw	s1,28(sp)
     95c:	afbf0024 	sw	ra,36(sp)
     960:	afb20020 	sw	s2,32(sp)
     964:	24b1000f 	addiu	s1,a1,15
     968:	2401fff0 	li	at,-16
     96c:	00809025 	move	s2,a0
     970:	afb00018 	sw	s0,24(sp)
     974:	afa00034 	sw	zero,52(sp)
     978:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     97c:	02218824 	and	s1,s1,at
     980:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     984:	02402025 	move	a0,s2
     988:	10400041 	beqz	v0,a90 <__osMallocR+0x13c>
     98c:	00408025 	move	s0,v0
     990:	844e0002 	lh	t6,2(v0)
     994:	11c0003a 	beqz	t6,a80 <__osMallocR+0x12c>
     998:	00000000 	nop
     99c:	8c4f0004 	lw	t7,4(v0)
     9a0:	01f1082b 	sltu	at,t7,s1
     9a4:	14200036 	bnez	at,a80 <__osMallocR+0x12c>
     9a8:	00000000 	nop
     9ac:	92580022 	lbu	t8,34(s2)
     9b0:	02402025 	move	a0,s2
     9b4:	33190004 	andi	t9,t8,0x4
     9b8:	53200004 	beqzl	t9,9cc <__osMallocR+0x78>
     9bc:	8e020004 	lw	v0,4(s0)
     9c0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     9c4:	02002825 	move	a1,s0
     9c8:	8e020004 	lw	v0,4(s0)
     9cc:	2623000f 	addiu	v1,s1,15
     9d0:	2401fff0 	li	at,-16
     9d4:	00611824 	and	v1,v1,at
     9d8:	24630030 	addiu	v1,v1,48
     9dc:	0062082b 	sltu	at,v1,v0
     9e0:	10200016 	beqz	at,a3c <__osMallocR+0xe8>
     9e4:	02024021 	addu	t0,s0,v0
     9e8:	01112823 	subu	a1,t0,s1
     9ec:	afa50040 	sw	a1,64(sp)
     9f0:	02002025 	move	a0,s0
     9f4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     9f8:	afa3002c 	sw	v1,44(sp)
     9fc:	8fa40040 	lw	a0,64(sp)
     a00:	8fa3002c 	lw	v1,44(sp)
     a04:	24097373 	li	t1,29555
     a08:	ac820008 	sw	v0,8(a0)
     a0c:	ac90000c 	sw	s0,12(a0)
     a10:	ac910004 	sw	s1,4(a0)
     a14:	a4890000 	sh	t1,0(a0)
     a18:	8e0a0004 	lw	t2,4(s0)
     a1c:	ae040008 	sw	a0,8(s0)
     a20:	01435823 	subu	t3,t2,v1
     a24:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     a28:	ae0b0004 	sw	t3,4(s0)
     a2c:	10400002 	beqz	v0,a38 <__osMallocR+0xe4>
     a30:	8fa50040 	lw	a1,64(sp)
     a34:	ac45000c 	sw	a1,12(v0)
     a38:	00a08025 	move	s0,a1
     a3c:	a6000002 	sh	zero,2(s0)
     a40:	02002025 	move	a0,s0
     a44:	00002825 	move	a1,zero
     a48:	00003025 	move	a2,zero
     a4c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     a50:	02403825 	move	a3,s2
     a54:	26040030 	addiu	a0,s0,48
     a58:	afa40034 	sw	a0,52(sp)
     a5c:	924c0022 	lbu	t4,34(s2)
     a60:	240500cd 	li	a1,205
     a64:	318d0001 	andi	t5,t4,0x1
     a68:	11a00009 	beqz	t5,a90 <__osMallocR+0x13c>
     a6c:	00000000 	nop
     a70:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     a74:	02203025 	move	a2,s1
     a78:	10000005 	b	a90 <__osMallocR+0x13c>
     a7c:	00000000 	nop
     a80:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     a84:	02002025 	move	a0,s0
     a88:	1440ffc1 	bnez	v0,990 <__osMallocR+0x3c>
     a8c:	00408025 	move	s0,v0
     a90:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     a94:	02402025 	move	a0,s2
     a98:	8fbf0024 	lw	ra,36(sp)
     a9c:	8fa20034 	lw	v0,52(sp)
     aa0:	8fb00018 	lw	s0,24(sp)
     aa4:	8fb1001c 	lw	s1,28(sp)
     aa8:	8fb20020 	lw	s2,32(sp)
     aac:	03e00008 	jr	ra
     ab0:	27bd0048 	addiu	sp,sp,72

00000ab4 <__osFree_NoLock>:
     ab4:	27bdffd0 	addiu	sp,sp,-48
     ab8:	afbf001c 	sw	ra,28(sp)
     abc:	afb10018 	sw	s1,24(sp)
     ac0:	afb00014 	sw	s0,20(sp)
     ac4:	10a00076 	beqz	a1,ca0 <__osFree_NoLock+0x1ec>
     ac8:	00803825 	move	a3,a0
     acc:	24b0ffd0 	addiu	s0,a1,-48
     ad0:	12000005 	beqz	s0,ae8 <__osFree_NoLock+0x34>
     ad4:	3c040000 	lui	a0,0x0
     ad8:	860e0000 	lh	t6,0(s0)
     adc:	24017373 	li	at,29555
     ae0:	51c10006 	beql	t6,at,afc <__osFree_NoLock+0x48>
     ae4:	860f0002 	lh	t7,2(s0)
     ae8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     aec:	248400bc 	addiu	a0,a0,188
     af0:	1000006c 	b	ca4 <__osFree_NoLock+0x1f0>
     af4:	8fbf001c 	lw	ra,28(sp)
     af8:	860f0002 	lh	t7,2(s0)
     afc:	3c040000 	lui	a0,0x0
     b00:	51e00006 	beqzl	t7,b1c <__osFree_NoLock+0x68>
     b04:	8e06001c 	lw	a2,28(s0)
     b08:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     b0c:	248400e0 	addiu	a0,a0,224
     b10:	10000064 	b	ca4 <__osFree_NoLock+0x1f0>
     b14:	8fbf001c 	lw	ra,28(sp)
     b18:	8e06001c 	lw	a2,28(s0)
     b1c:	02002025 	move	a0,s0
     b20:	10e60008 	beq	a3,a2,b44 <__osFree_NoLock+0x90>
     b24:	00000000 	nop
     b28:	10e00006 	beqz	a3,b44 <__osFree_NoLock+0x90>
     b2c:	00e02825 	move	a1,a3
     b30:	3c040000 	lui	a0,0x0
     b34:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     b38:	24840104 	addiu	a0,a0,260
     b3c:	10000059 	b	ca4 <__osFree_NoLock+0x1f0>
     b40:	8fbf001c 	lw	ra,28(sp)
     b44:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     b48:	afa70030 	sw	a3,48(sp)
     b4c:	00408825 	move	s1,v0
     b50:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     b54:	02002025 	move	a0,s0
     b58:	24180001 	li	t8,1
     b5c:	a6180002 	sh	t8,2(s0)
     b60:	afa20024 	sw	v0,36(sp)
     b64:	8fa70030 	lw	a3,48(sp)
     b68:	02002025 	move	a0,s0
     b6c:	00002825 	move	a1,zero
     b70:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     b74:	00003025 	move	a2,zero
     b78:	8fb90030 	lw	t9,48(sp)
     b7c:	8fa30024 	lw	v1,36(sp)
     b80:	26040030 	addiu	a0,s0,48
     b84:	93280022 	lbu	t0,34(t9)
     b88:	240500ef 	li	a1,239
     b8c:	31090002 	andi	t1,t0,0x2
     b90:	51200006 	beqzl	t1,bac <__osFree_NoLock+0xf8>
     b94:	8e0a0004 	lw	t2,4(s0)
     b98:	8e060004 	lw	a2,4(s0)
     b9c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     ba0:	afa30024 	sw	v1,36(sp)
     ba4:	8fa30024 	lw	v1,36(sp)
     ba8:	8e0a0004 	lw	t2,4(s0)
     bac:	020a5821 	addu	t3,s0,t2
     bb0:	256c0030 	addiu	t4,t3,48
     bb4:	162c001f 	bne	s1,t4,c34 <__osFree_NoLock+0x180>
     bb8:	00000000 	nop
     bbc:	862d0002 	lh	t5,2(s1)
     bc0:	02202025 	move	a0,s1
     bc4:	11a0001b 	beqz	t5,c34 <__osFree_NoLock+0x180>
     bc8:	00000000 	nop
     bcc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     bd0:	afa30024 	sw	v1,36(sp)
     bd4:	8fa30024 	lw	v1,36(sp)
     bd8:	10400002 	beqz	v0,be4 <__osFree_NoLock+0x130>
     bdc:	00403825 	move	a3,v0
     be0:	ac50000c 	sw	s0,12(v0)
     be4:	8e0e0004 	lw	t6,4(s0)
     be8:	8e2f0004 	lw	t7,4(s1)
     bec:	02202025 	move	a0,s1
     bf0:	240500ef 	li	a1,239
     bf4:	01cfc021 	addu	t8,t6,t7
     bf8:	27190030 	addiu	t9,t8,48
     bfc:	ae190004 	sw	t9,4(s0)
     c00:	8fa80030 	lw	t0,48(sp)
     c04:	24060030 	li	a2,48
     c08:	91090022 	lbu	t1,34(t0)
     c0c:	312a0002 	andi	t2,t1,0x2
     c10:	51400007 	beqzl	t2,c30 <__osFree_NoLock+0x17c>
     c14:	ae070008 	sw	a3,8(s0)
     c18:	afa30024 	sw	v1,36(sp)
     c1c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     c20:	afa70020 	sw	a3,32(sp)
     c24:	8fa30024 	lw	v1,36(sp)
     c28:	8fa70020 	lw	a3,32(sp)
     c2c:	ae070008 	sw	a3,8(s0)
     c30:	00e08825 	move	s1,a3
     c34:	5060001b 	beqzl	v1,ca4 <__osFree_NoLock+0x1f0>
     c38:	8fbf001c 	lw	ra,28(sp)
     c3c:	846b0002 	lh	t3,2(v1)
     c40:	51600018 	beqzl	t3,ca4 <__osFree_NoLock+0x1f0>
     c44:	8fbf001c 	lw	ra,28(sp)
     c48:	8c620004 	lw	v0,4(v1)
     c4c:	00626021 	addu	t4,v1,v0
     c50:	258d0030 	addiu	t5,t4,48
     c54:	560d0013 	bnel	s0,t5,ca4 <__osFree_NoLock+0x1f0>
     c58:	8fbf001c 	lw	ra,28(sp)
     c5c:	12200003 	beqz	s1,c6c <__osFree_NoLock+0x1b8>
     c60:	02002025 	move	a0,s0
     c64:	ae23000c 	sw	v1,12(s1)
     c68:	8c620004 	lw	v0,4(v1)
     c6c:	ac710008 	sw	s1,8(v1)
     c70:	8e0e0004 	lw	t6,4(s0)
     c74:	240500ef 	li	a1,239
     c78:	004e7821 	addu	t7,v0,t6
     c7c:	25f80030 	addiu	t8,t7,48
     c80:	ac780004 	sw	t8,4(v1)
     c84:	8fb90030 	lw	t9,48(sp)
     c88:	93280022 	lbu	t0,34(t9)
     c8c:	31090002 	andi	t1,t0,0x2
     c90:	51200004 	beqzl	t1,ca4 <__osFree_NoLock+0x1f0>
     c94:	8fbf001c 	lw	ra,28(sp)
     c98:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     c9c:	24060030 	li	a2,48
     ca0:	8fbf001c 	lw	ra,28(sp)
     ca4:	8fb00014 	lw	s0,20(sp)
     ca8:	8fb10018 	lw	s1,24(sp)
     cac:	03e00008 	jr	ra
     cb0:	27bd0030 	addiu	sp,sp,48

00000cb4 <__osFree>:
     cb4:	27bdffe8 	addiu	sp,sp,-24
     cb8:	afbf0014 	sw	ra,20(sp)
     cbc:	afa40018 	sw	a0,24(sp)
     cc0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     cc4:	afa5001c 	sw	a1,28(sp)
     cc8:	8fa40018 	lw	a0,24(sp)
     ccc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     cd0:	8fa5001c 	lw	a1,28(sp)
     cd4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     cd8:	8fa40018 	lw	a0,24(sp)
     cdc:	8fbf0014 	lw	ra,20(sp)
     ce0:	27bd0018 	addiu	sp,sp,24
     ce4:	03e00008 	jr	ra
     ce8:	00000000 	nop

00000cec <__osFree_NoLockDebug>:
     cec:	27bdffd0 	addiu	sp,sp,-48
     cf0:	afb10018 	sw	s1,24(sp)
     cf4:	00808825 	move	s1,a0
     cf8:	afbf001c 	sw	ra,28(sp)
     cfc:	afb00014 	sw	s0,20(sp)
     d00:	10a00078 	beqz	a1,ee4 <__osFree_NoLockDebug+0x1f8>
     d04:	afa60038 	sw	a2,56(sp)
     d08:	24b0ffd0 	addiu	s0,a1,-48
     d0c:	12000004 	beqz	s0,d20 <__osFree_NoLockDebug+0x34>
     d10:	3c040000 	lui	a0,0x0
     d14:	860e0000 	lh	t6,0(s0)
     d18:	24017373 	li	at,29555
     d1c:	11c10005 	beq	t6,at,d34 <__osFree_NoLockDebug+0x48>
     d20:	24840148 	addiu	a0,a0,328
     d24:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     d28:	8fa60038 	lw	a2,56(sp)
     d2c:	1000006e 	b	ee8 <__osFree_NoLockDebug+0x1fc>
     d30:	8fbf001c 	lw	ra,28(sp)
     d34:	860f0002 	lh	t7,2(s0)
     d38:	3c040000 	lui	a0,0x0
     d3c:	24840178 	addiu	a0,a0,376
     d40:	51e00006 	beqzl	t7,d5c <__osFree_NoLockDebug+0x70>
     d44:	8e06001c 	lw	a2,28(s0)
     d48:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     d4c:	8fa60038 	lw	a2,56(sp)
     d50:	10000065 	b	ee8 <__osFree_NoLockDebug+0x1fc>
     d54:	8fbf001c 	lw	ra,28(sp)
     d58:	8e06001c 	lw	a2,28(s0)
     d5c:	02002025 	move	a0,s0
     d60:	52260009 	beql	s1,a2,d88 <__osFree_NoLockDebug+0x9c>
     d64:	afa7003c 	sw	a3,60(sp)
     d68:	12200006 	beqz	s1,d84 <__osFree_NoLockDebug+0x98>
     d6c:	02202825 	move	a1,s1
     d70:	3c040000 	lui	a0,0x0
     d74:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     d78:	248401a8 	addiu	a0,a0,424
     d7c:	1000005a 	b	ee8 <__osFree_NoLockDebug+0x1fc>
     d80:	8fbf001c 	lw	ra,28(sp)
     d84:	afa7003c 	sw	a3,60(sp)
     d88:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     d8c:	afb10030 	sw	s1,48(sp)
     d90:	00408825 	move	s1,v0
     d94:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     d98:	02002025 	move	a0,s0
     d9c:	24180001 	li	t8,1
     da0:	a6180002 	sh	t8,2(s0)
     da4:	afa20024 	sw	v0,36(sp)
     da8:	8fa70030 	lw	a3,48(sp)
     dac:	8fa6003c 	lw	a2,60(sp)
     db0:	8fa50038 	lw	a1,56(sp)
     db4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     db8:	02002025 	move	a0,s0
     dbc:	8fb90030 	lw	t9,48(sp)
     dc0:	8fa30024 	lw	v1,36(sp)
     dc4:	26040030 	addiu	a0,s0,48
     dc8:	93280022 	lbu	t0,34(t9)
     dcc:	240500ef 	li	a1,239
     dd0:	31090002 	andi	t1,t0,0x2
     dd4:	51200006 	beqzl	t1,df0 <__osFree_NoLockDebug+0x104>
     dd8:	8e0a0004 	lw	t2,4(s0)
     ddc:	8e060004 	lw	a2,4(s0)
     de0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     de4:	afa30024 	sw	v1,36(sp)
     de8:	8fa30024 	lw	v1,36(sp)
     dec:	8e0a0004 	lw	t2,4(s0)
     df0:	020a5821 	addu	t3,s0,t2
     df4:	256c0030 	addiu	t4,t3,48
     df8:	162c001f 	bne	s1,t4,e78 <__osFree_NoLockDebug+0x18c>
     dfc:	00000000 	nop
     e00:	862d0002 	lh	t5,2(s1)
     e04:	02202025 	move	a0,s1
     e08:	11a0001b 	beqz	t5,e78 <__osFree_NoLockDebug+0x18c>
     e0c:	00000000 	nop
     e10:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     e14:	afa30024 	sw	v1,36(sp)
     e18:	8fa30024 	lw	v1,36(sp)
     e1c:	10400002 	beqz	v0,e28 <__osFree_NoLockDebug+0x13c>
     e20:	00403825 	move	a3,v0
     e24:	ac50000c 	sw	s0,12(v0)
     e28:	8e0e0004 	lw	t6,4(s0)
     e2c:	8e2f0004 	lw	t7,4(s1)
     e30:	02202025 	move	a0,s1
     e34:	240500ef 	li	a1,239
     e38:	01cfc021 	addu	t8,t6,t7
     e3c:	27190030 	addiu	t9,t8,48
     e40:	ae190004 	sw	t9,4(s0)
     e44:	8fa80030 	lw	t0,48(sp)
     e48:	24060030 	li	a2,48
     e4c:	91090022 	lbu	t1,34(t0)
     e50:	312a0002 	andi	t2,t1,0x2
     e54:	51400007 	beqzl	t2,e74 <__osFree_NoLockDebug+0x188>
     e58:	ae070008 	sw	a3,8(s0)
     e5c:	afa30024 	sw	v1,36(sp)
     e60:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     e64:	afa70020 	sw	a3,32(sp)
     e68:	8fa30024 	lw	v1,36(sp)
     e6c:	8fa70020 	lw	a3,32(sp)
     e70:	ae070008 	sw	a3,8(s0)
     e74:	00e08825 	move	s1,a3
     e78:	5060001b 	beqzl	v1,ee8 <__osFree_NoLockDebug+0x1fc>
     e7c:	8fbf001c 	lw	ra,28(sp)
     e80:	846b0002 	lh	t3,2(v1)
     e84:	51600018 	beqzl	t3,ee8 <__osFree_NoLockDebug+0x1fc>
     e88:	8fbf001c 	lw	ra,28(sp)
     e8c:	8c620004 	lw	v0,4(v1)
     e90:	00626021 	addu	t4,v1,v0
     e94:	258d0030 	addiu	t5,t4,48
     e98:	560d0013 	bnel	s0,t5,ee8 <__osFree_NoLockDebug+0x1fc>
     e9c:	8fbf001c 	lw	ra,28(sp)
     ea0:	12200003 	beqz	s1,eb0 <__osFree_NoLockDebug+0x1c4>
     ea4:	02002025 	move	a0,s0
     ea8:	ae23000c 	sw	v1,12(s1)
     eac:	8c620004 	lw	v0,4(v1)
     eb0:	ac710008 	sw	s1,8(v1)
     eb4:	8e0e0004 	lw	t6,4(s0)
     eb8:	240500ef 	li	a1,239
     ebc:	004e7821 	addu	t7,v0,t6
     ec0:	25f80030 	addiu	t8,t7,48
     ec4:	ac780004 	sw	t8,4(v1)
     ec8:	8fb90030 	lw	t9,48(sp)
     ecc:	93280022 	lbu	t0,34(t9)
     ed0:	31090002 	andi	t1,t0,0x2
     ed4:	51200004 	beqzl	t1,ee8 <__osFree_NoLockDebug+0x1fc>
     ed8:	8fbf001c 	lw	ra,28(sp)
     edc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     ee0:	24060030 	li	a2,48
     ee4:	8fbf001c 	lw	ra,28(sp)
     ee8:	8fb00014 	lw	s0,20(sp)
     eec:	8fb10018 	lw	s1,24(sp)
     ef0:	03e00008 	jr	ra
     ef4:	27bd0030 	addiu	sp,sp,48

00000ef8 <__osFreeDebug>:
     ef8:	27bdffe8 	addiu	sp,sp,-24
     efc:	afbf0014 	sw	ra,20(sp)
     f00:	afa40018 	sw	a0,24(sp)
     f04:	afa5001c 	sw	a1,28(sp)
     f08:	afa60020 	sw	a2,32(sp)
     f0c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     f10:	afa70024 	sw	a3,36(sp)
     f14:	8fa40018 	lw	a0,24(sp)
     f18:	8fa5001c 	lw	a1,28(sp)
     f1c:	8fa60020 	lw	a2,32(sp)
     f20:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     f24:	8fa70024 	lw	a3,36(sp)
     f28:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     f2c:	8fa40018 	lw	a0,24(sp)
     f30:	8fbf0014 	lw	ra,20(sp)
     f34:	27bd0018 	addiu	sp,sp,24
     f38:	03e00008 	jr	ra
     f3c:	00000000 	nop

00000f40 <__osRealloc>:
     f40:	27bdff78 	addiu	sp,sp,-136
     f44:	afb00018 	sw	s0,24(sp)
     f48:	afa40088 	sw	a0,136(sp)
     f4c:	24d0000f 	addiu	s0,a2,15
     f50:	2401fff0 	li	at,-16
     f54:	afbf001c 	sw	ra,28(sp)
     f58:	02018024 	and	s0,s0,at
     f5c:	3c040000 	lui	a0,0x0
     f60:	afa5008c 	sw	a1,140(sp)
     f64:	248401ec 	addiu	a0,a0,492
     f68:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     f6c:	02003025 	move	a2,s0
     f70:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     f74:	8fa40088 	lw	a0,136(sp)
     f78:	8fae008c 	lw	t6,140(sp)
     f7c:	8fa40088 	lw	a0,136(sp)
     f80:	15c00005 	bnez	t6,f98 <__osRealloc+0x58>
     f84:	00000000 	nop
     f88:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     f8c:	02002825 	move	a1,s0
     f90:	100000af 	b	1250 <__osRealloc+0x310>
     f94:	afa2008c 	sw	v0,140(sp)
     f98:	16000006 	bnez	s0,fb4 <__osRealloc+0x74>
     f9c:	8fa7008c 	lw	a3,140(sp)
     fa0:	8fa40088 	lw	a0,136(sp)
     fa4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     fa8:	8fa5008c 	lw	a1,140(sp)
     fac:	100000a8 	b	1250 <__osRealloc+0x310>
     fb0:	afa0008c 	sw	zero,140(sp)
     fb4:	8ce3ffd4 	lw	v1,-44(a3)
     fb8:	24e7ffd0 	addiu	a3,a3,-48
     fbc:	3c040000 	lui	a0,0x0
     fc0:	16030005 	bne	s0,v1,fd8 <__osRealloc+0x98>
     fc4:	0070082b 	sltu	at,v1,s0
     fc8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     fcc:	24840204 	addiu	a0,a0,516
     fd0:	1000009f 	b	1250 <__osRealloc+0x310>
     fd4:	00000000 	nop
     fd8:	1020003c 	beqz	at,10cc <__osRealloc+0x18c>
     fdc:	00e02025 	move	a0,a3
     fe0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
     fe4:	afa70024 	sw	a3,36(sp)
     fe8:	8fa70024 	lw	a3,36(sp)
     fec:	3c040000 	lui	a0,0x0
     ff0:	24840274 	addiu	a0,a0,628
     ff4:	8ce30004 	lw	v1,4(a3)
     ff8:	00e37821 	addu	t7,a3,v1
     ffc:	25f80030 	addiu	t8,t7,48
    1000:	14580021 	bne	v0,t8,1088 <__osRealloc+0x148>
    1004:	02034023 	subu	t0,s0,v1
    1008:	84590002 	lh	t9,2(v0)
    100c:	1320001e 	beqz	t9,1088 <__osRealloc+0x148>
    1010:	00000000 	nop
    1014:	8c490004 	lw	t1,4(v0)
    1018:	0128082b 	sltu	at,t1,t0
    101c:	1420001a 	bnez	at,1088 <__osRealloc+0x148>
    1020:	00000000 	nop
    1024:	3c040000 	lui	a0,0x0
    1028:	24840238 	addiu	a0,a0,568
    102c:	afa2007c 	sw	v0,124(sp)
    1030:	afa70024 	sw	a3,36(sp)
    1034:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1038:	afa80068 	sw	t0,104(sp)
    103c:	8fa4007c 	lw	a0,124(sp)
    1040:	8fa80068 	lw	t0,104(sp)
    1044:	8c8a0004 	lw	t2,4(a0)
    1048:	01485823 	subu	t3,t2,t0
    104c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1050:	ac8b0004 	sw	t3,4(a0)
    1054:	8fa5007c 	lw	a1,124(sp)
    1058:	8fa70024 	lw	a3,36(sp)
    105c:	10400003 	beqz	v0,106c <__osRealloc+0x12c>
    1060:	8fa80068 	lw	t0,104(sp)
    1064:	00a86021 	addu	t4,a1,t0
    1068:	ac4c000c 	sw	t4,12(v0)
    106c:	00a82021 	addu	a0,a1,t0
    1070:	ace40008 	sw	a0,8(a3)
    1074:	acf00004 	sw	s0,4(a3)
    1078:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    107c:	24060030 	li	a2,48
    1080:	10000073 	b	1250 <__osRealloc+0x310>
    1084:	00000000 	nop
    1088:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    108c:	afa70024 	sw	a3,36(sp)
    1090:	8fa40088 	lw	a0,136(sp)
    1094:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1098:	02002825 	move	a1,s0
    109c:	8fa70024 	lw	a3,36(sp)
    10a0:	10400008 	beqz	v0,10c4 <__osRealloc+0x184>
    10a4:	00408025 	move	s0,v0
    10a8:	8fa4008c 	lw	a0,140(sp)
    10ac:	00402825 	move	a1,v0
    10b0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    10b4:	8ce60004 	lw	a2,4(a3)
    10b8:	8fa40088 	lw	a0,136(sp)
    10bc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    10c0:	8fa5008c 	lw	a1,140(sp)
    10c4:	10000062 	b	1250 <__osRealloc+0x310>
    10c8:	afb0008c 	sw	s0,140(sp)
    10cc:	0203082b 	sltu	at,s0,v1
    10d0:	1020005f 	beqz	at,1250 <__osRealloc+0x310>
    10d4:	00e02025 	move	a0,a3
    10d8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    10dc:	afa70024 	sw	a3,36(sp)
    10e0:	10400035 	beqz	v0,11b8 <__osRealloc+0x278>
    10e4:	8fa70024 	lw	a3,36(sp)
    10e8:	844d0002 	lh	t5,2(v0)
    10ec:	3c040000 	lui	a0,0x0
    10f0:	248402a4 	addiu	a0,a0,676
    10f4:	51a00031 	beqzl	t5,11bc <__osRealloc+0x27c>
    10f8:	8cf90004 	lw	t9,4(a3)
    10fc:	afa2006c 	sw	v0,108(sp)
    1100:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1104:	afa70024 	sw	a3,36(sp)
    1108:	8fb8006c 	lw	t8,108(sp)
    110c:	27a20030 	addiu	v0,sp,48
    1110:	8fa70024 	lw	a3,36(sp)
    1114:	0040c825 	move	t9,v0
    1118:	27090030 	addiu	t1,t8,48
    111c:	8f0f0000 	lw	t7,0(t8)
    1120:	2718000c 	addiu	t8,t8,12
    1124:	2739000c 	addiu	t9,t9,12
    1128:	af2ffff4 	sw	t7,-12(t9)
    112c:	8f0efff8 	lw	t6,-8(t8)
    1130:	af2efff8 	sw	t6,-8(t9)
    1134:	8f0ffffc 	lw	t7,-4(t8)
    1138:	1709fff8 	bne	t8,t1,111c <__osRealloc+0x1dc>
    113c:	af2ffffc 	sw	t7,-4(t9)
    1140:	260a000f 	addiu	t2,s0,15
    1144:	2401fff0 	li	at,-16
    1148:	01415824 	and	t3,t2,at
    114c:	00eb2021 	addu	a0,a3,t3
    1150:	24840030 	addiu	a0,a0,48
    1154:	0080c025 	move	t8,a0
    1158:	00404825 	move	t1,v0
    115c:	24590030 	addiu	t9,v0,48
    1160:	8d2d0000 	lw	t5,0(t1)
    1164:	2529000c 	addiu	t1,t1,12
    1168:	2718000c 	addiu	t8,t8,12
    116c:	af0dfff4 	sw	t5,-12(t8)
    1170:	8d2cfff8 	lw	t4,-8(t1)
    1174:	af0cfff8 	sw	t4,-8(t8)
    1178:	8d2dfffc 	lw	t5,-4(t1)
    117c:	1539fff8 	bne	t1,t9,1160 <__osRealloc+0x220>
    1180:	af0dfffc 	sw	t5,-4(t8)
    1184:	8c8e0004 	lw	t6,4(a0)
    1188:	8cef0004 	lw	t7,4(a3)
    118c:	01cf5021 	addu	t2,t6,t7
    1190:	01505823 	subu	t3,t2,s0
    1194:	ac8b0004 	sw	t3,4(a0)
    1198:	ace40008 	sw	a0,8(a3)
    119c:	acf00004 	sw	s0,4(a3)
    11a0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    11a4:	afa40020 	sw	a0,32(sp)
    11a8:	10400029 	beqz	v0,1250 <__osRealloc+0x310>
    11ac:	8fa40020 	lw	a0,32(sp)
    11b0:	10000027 	b	1250 <__osRealloc+0x310>
    11b4:	ac44000c 	sw	a0,12(v0)
    11b8:	8cf90004 	lw	t9,4(a3)
    11bc:	26090030 	addiu	t1,s0,48
    11c0:	3c040000 	lui	a0,0x0
    11c4:	0139082b 	sltu	at,t1,t9
    11c8:	1020001e 	beqz	at,1244 <__osRealloc+0x304>
    11cc:	00000000 	nop
    11d0:	3c040000 	lui	a0,0x0
    11d4:	248402dc 	addiu	a0,a0,732
    11d8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    11dc:	afa70024 	sw	a3,36(sp)
    11e0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    11e4:	8fa40024 	lw	a0,36(sp)
    11e8:	8fa70024 	lw	a3,36(sp)
    11ec:	2603000f 	addiu	v1,s0,15
    11f0:	2401fff0 	li	at,-16
    11f4:	00611824 	and	v1,v1,at
    11f8:	24630030 	addiu	v1,v1,48
    11fc:	00e32021 	addu	a0,a3,v1
    1200:	ac820008 	sw	v0,8(a0)
    1204:	ac87000c 	sw	a3,12(a0)
    1208:	8cf80004 	lw	t8,4(a3)
    120c:	240d0001 	li	t5,1
    1210:	240e7373 	li	t6,29555
    1214:	03036023 	subu	t4,t8,v1
    1218:	ac8c0004 	sw	t4,4(a0)
    121c:	a48d0002 	sh	t5,2(a0)
    1220:	a48e0000 	sh	t6,0(a0)
    1224:	ace40008 	sw	a0,8(a3)
    1228:	acf00004 	sw	s0,4(a3)
    122c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1230:	afa40020 	sw	a0,32(sp)
    1234:	10400006 	beqz	v0,1250 <__osRealloc+0x310>
    1238:	8fa40020 	lw	a0,32(sp)
    123c:	10000004 	b	1250 <__osRealloc+0x310>
    1240:	ac44000c 	sw	a0,12(v0)
    1244:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1248:	24840318 	addiu	a0,a0,792
    124c:	afa0008c 	sw	zero,140(sp)
    1250:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1254:	8fa40088 	lw	a0,136(sp)
    1258:	8fbf001c 	lw	ra,28(sp)
    125c:	8fa2008c 	lw	v0,140(sp)
    1260:	8fb00018 	lw	s0,24(sp)
    1264:	03e00008 	jr	ra
    1268:	27bd0088 	addiu	sp,sp,136

0000126c <__osReallocDebug>:
    126c:	27bdffe8 	addiu	sp,sp,-24
    1270:	afbf0014 	sw	ra,20(sp)
    1274:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1278:	afa70024 	sw	a3,36(sp)
    127c:	8fbf0014 	lw	ra,20(sp)
    1280:	27bd0018 	addiu	sp,sp,24
    1284:	03e00008 	jr	ra
    1288:	00000000 	nop

0000128c <ArenaImpl_GetSizes>:
    128c:	27bdffd8 	addiu	sp,sp,-40
    1290:	afbf0024 	sw	ra,36(sp)
    1294:	afb30020 	sw	s3,32(sp)
    1298:	afb2001c 	sw	s2,28(sp)
    129c:	afb10018 	sw	s1,24(sp)
    12a0:	00a08825 	move	s1,a1
    12a4:	00c09025 	move	s2,a2
    12a8:	00e09825 	move	s3,a3
    12ac:	afb00014 	sw	s0,20(sp)
    12b0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    12b4:	afa40028 	sw	a0,40(sp)
    12b8:	ae200000 	sw	zero,0(s1)
    12bc:	ae400000 	sw	zero,0(s2)
    12c0:	ae600000 	sw	zero,0(s3)
    12c4:	8fae0028 	lw	t6,40(sp)
    12c8:	8dd00000 	lw	s0,0(t6)
    12cc:	12000017 	beqz	s0,132c <ArenaImpl_GetSizes+0xa0>
    12d0:	00000000 	nop
    12d4:	860f0002 	lh	t7,2(s0)
    12d8:	51e0000d 	beqzl	t7,1310 <ArenaImpl_GetSizes+0x84>
    12dc:	8e6a0000 	lw	t2,0(s3)
    12e0:	8e580000 	lw	t8,0(s2)
    12e4:	8e190004 	lw	t9,4(s0)
    12e8:	03194021 	addu	t0,t8,t9
    12ec:	ae480000 	sw	t0,0(s2)
    12f0:	8e290000 	lw	t1,0(s1)
    12f4:	8e020004 	lw	v0,4(s0)
    12f8:	0122082b 	sltu	at,t1,v0
    12fc:	10200007 	beqz	at,131c <ArenaImpl_GetSizes+0x90>
    1300:	00000000 	nop
    1304:	10000005 	b	131c <ArenaImpl_GetSizes+0x90>
    1308:	ae220000 	sw	v0,0(s1)
    130c:	8e6a0000 	lw	t2,0(s3)
    1310:	8e0b0004 	lw	t3,4(s0)
    1314:	014b6021 	addu	t4,t2,t3
    1318:	ae6c0000 	sw	t4,0(s3)
    131c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1320:	02002025 	move	a0,s0
    1324:	1440ffeb 	bnez	v0,12d4 <ArenaImpl_GetSizes+0x48>
    1328:	00408025 	move	s0,v0
    132c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1330:	8fa40028 	lw	a0,40(sp)
    1334:	8fbf0024 	lw	ra,36(sp)
    1338:	8fb00014 	lw	s0,20(sp)
    133c:	8fb10018 	lw	s1,24(sp)
    1340:	8fb2001c 	lw	s2,28(sp)
    1344:	8fb30020 	lw	s3,32(sp)
    1348:	03e00008 	jr	ra
    134c:	27bd0028 	addiu	sp,sp,40

00001350 <__osDisplayArena>:
    1350:	27bdff98 	addiu	sp,sp,-104
    1354:	afbf003c 	sw	ra,60(sp)
    1358:	afb40038 	sw	s4,56(sp)
    135c:	afb30034 	sw	s3,52(sp)
    1360:	afb20030 	sw	s2,48(sp)
    1364:	afb1002c 	sw	s1,44(sp)
    1368:	afb00028 	sw	s0,40(sp)
    136c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1370:	afa40068 	sw	a0,104(sp)
    1374:	14400005 	bnez	v0,138c <__osDisplayArena+0x3c>
    1378:	3c040000 	lui	a0,0x0
    137c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1380:	24840348 	addiu	a0,a0,840
    1384:	10000076 	b	1560 <__osDisplayArena+0x210>
    1388:	8fbf003c 	lw	ra,60(sp)
    138c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1390:	8fa40068 	lw	a0,104(sp)
    1394:	3c040000 	lui	a0,0x0
    1398:	0000a025 	move	s4,zero
    139c:	00009025 	move	s2,zero
    13a0:	00009825 	move	s3,zero
    13a4:	24840368 	addiu	a0,a0,872
    13a8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    13ac:	8fa50068 	lw	a1,104(sp)
    13b0:	3c040000 	lui	a0,0x0
    13b4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    13b8:	24840384 	addiu	a0,a0,900
    13bc:	8fae0068 	lw	t6,104(sp)
    13c0:	8dd00000 	lw	s0,0(t6)
    13c4:	12000057 	beqz	s0,1524 <__osDisplayArena+0x1d4>
    13c8:	00000000 	nop
    13cc:	1200004f 	beqz	s0,150c <__osDisplayArena+0x1bc>
    13d0:	3c040000 	lui	a0,0x0
    13d4:	860f0000 	lh	t7,0(s0)
    13d8:	24017373 	li	at,29555
    13dc:	02002825 	move	a1,s0
    13e0:	15e1004a 	bne	t7,at,150c <__osDisplayArena+0x1bc>
    13e4:	00000000 	nop
    13e8:	8e110008 	lw	s1,8(s0)
    13ec:	3c030000 	lui	v1,0x0
    13f0:	246303e4 	addiu	v1,v1,996
    13f4:	16200003 	bnez	s1,1404 <__osDisplayArena+0xb4>
    13f8:	3c040000 	lui	a0,0x0
    13fc:	10000008 	b	1420 <__osDisplayArena+0xd0>
    1400:	24070024 	li	a3,36
    1404:	8e38000c 	lw	t8,12(s1)
    1408:	24020020 	li	v0,32
    140c:	12180003 	beq	s0,t8,141c <__osDisplayArena+0xcc>
    1410:	00000000 	nop
    1414:	10000001 	b	141c <__osDisplayArena+0xcc>
    1418:	24020021 	li	v0,33
    141c:	00403825 	move	a3,v0
    1420:	86190002 	lh	t9,2(s0)
    1424:	13200004 	beqz	t9,1438 <__osDisplayArena+0xe8>
    1428:	00000000 	nop
    142c:	3c030000 	lui	v1,0x0
    1430:	10000001 	b	1438 <__osDisplayArena+0xe8>
    1434:	246303dc 	addiu	v1,v1,988
    1438:	8e020004 	lw	v0,4(s0)
    143c:	afa30010 	sw	v1,16(sp)
    1440:	248403c8 	addiu	a0,a0,968
    1444:	02023021 	addu	a2,s0,v0
    1448:	24c60030 	addiu	a2,a2,48
    144c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1450:	afa20014 	sw	v0,20(sp)
    1454:	86080002 	lh	t0,2(s0)
    1458:	24060000 	li	a2,0
    145c:	24070040 	li	a3,64
    1460:	1500001b 	bnez	t0,14d0 <__osDisplayArena+0x180>
    1464:	00000000 	nop
    1468:	8e040020 	lw	a0,32(s0)
    146c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1470:	8e050024 	lw	a1,36(s0)
    1474:	00402025 	move	a0,v0
    1478:	00602825 	move	a1,v1
    147c:	24060000 	li	a2,0
    1480:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1484:	24070003 	li	a3,3
    1488:	afa20040 	sw	v0,64(sp)
    148c:	afa30044 	sw	v1,68(sp)
    1490:	8e040010 	lw	a0,16(s0)
    1494:	8fa70044 	lw	a3,68(sp)
    1498:	3c030000 	lui	v1,0x0
    149c:	10800003 	beqz	a0,14ac <__osDisplayArena+0x15c>
    14a0:	8fa60040 	lw	a2,64(sp)
    14a4:	10000002 	b	14b0 <__osDisplayArena+0x160>
    14a8:	00801825 	move	v1,a0
    14ac:	24630404 	addiu	v1,v1,1028
    14b0:	8e090018 	lw	t1,24(s0)
    14b4:	afa30014 	sw	v1,20(sp)
    14b8:	3c040000 	lui	a0,0x0
    14bc:	afa90010 	sw	t1,16(sp)
    14c0:	8e0a0014 	lw	t2,20(s0)
    14c4:	248403ec 	addiu	a0,a0,1004
    14c8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    14cc:	afaa0018 	sw	t2,24(sp)
    14d0:	3c040000 	lui	a0,0x0
    14d4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    14d8:	24840410 	addiu	a0,a0,1040
    14dc:	860b0002 	lh	t3,2(s0)
    14e0:	51600008 	beqzl	t3,1504 <__osDisplayArena+0x1b4>
    14e4:	8e0c0004 	lw	t4,4(s0)
    14e8:	8e020004 	lw	v0,4(s0)
    14ec:	0282082b 	sltu	at,s4,v0
    14f0:	1020000a 	beqz	at,151c <__osDisplayArena+0x1cc>
    14f4:	02429021 	addu	s2,s2,v0
    14f8:	10000008 	b	151c <__osDisplayArena+0x1cc>
    14fc:	0040a025 	move	s4,v0
    1500:	8e0c0004 	lw	t4,4(s0)
    1504:	10000005 	b	151c <__osDisplayArena+0x1cc>
    1508:	026c9821 	addu	s3,s3,t4
    150c:	24840414 	addiu	a0,a0,1044
    1510:	02002825 	move	a1,s0
    1514:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1518:	00008825 	move	s1,zero
    151c:	1620ffab 	bnez	s1,13cc <__osDisplayArena+0x7c>
    1520:	02208025 	move	s0,s1
    1524:	3c040000 	lui	a0,0x0
    1528:	24840428 	addiu	a0,a0,1064
    152c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1530:	02602825 	move	a1,s3
    1534:	3c040000 	lui	a0,0x0
    1538:	24840450 	addiu	a0,a0,1104
    153c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1540:	02402825 	move	a1,s2
    1544:	3c040000 	lui	a0,0x0
    1548:	24840478 	addiu	a0,a0,1144
    154c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1550:	02802825 	move	a1,s4
    1554:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1558:	8fa40068 	lw	a0,104(sp)
    155c:	8fbf003c 	lw	ra,60(sp)
    1560:	8fb00028 	lw	s0,40(sp)
    1564:	8fb1002c 	lw	s1,44(sp)
    1568:	8fb20030 	lw	s2,48(sp)
    156c:	8fb30034 	lw	s3,52(sp)
    1570:	8fb40038 	lw	s4,56(sp)
    1574:	03e00008 	jr	ra
    1578:	27bd0068 	addiu	sp,sp,104

0000157c <ArenaImpl_FaultClient>:
    157c:	27bdffc0 	addiu	sp,sp,-64
    1580:	afb10020 	sw	s1,32(sp)
    1584:	00808825 	move	s1,a0
    1588:	afbf003c 	sw	ra,60(sp)
    158c:	3c040000 	lui	a0,0x0
    1590:	afb70038 	sw	s7,56(sp)
    1594:	afb60034 	sw	s6,52(sp)
    1598:	afb50030 	sw	s5,48(sp)
    159c:	afb4002c 	sw	s4,44(sp)
    15a0:	afb30028 	sw	s3,40(sp)
    15a4:	afb20024 	sw	s2,36(sp)
    15a8:	afb0001c 	sw	s0,28(sp)
    15ac:	248404a0 	addiu	a0,a0,1184
    15b0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    15b4:	02202825 	move	a1,s1
    15b8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    15bc:	02202025 	move	a0,s1
    15c0:	14400007 	bnez	v0,15e0 <ArenaImpl_FaultClient+0x64>
    15c4:	00009825 	move	s3,zero
    15c8:	3c040000 	lui	a0,0x0
    15cc:	248404b8 	addiu	a0,a0,1208
    15d0:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    15d4:	02202825 	move	a1,s1
    15d8:	10000053 	b	1728 <ArenaImpl_FaultClient+0x1ac>
    15dc:	8fbf003c 	lw	ra,60(sp)
    15e0:	3c040000 	lui	a0,0x0
    15e4:	0000a025 	move	s4,zero
    15e8:	00009025 	move	s2,zero
    15ec:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    15f0:	248404d0 	addiu	a0,a0,1232
    15f4:	8e300000 	lw	s0,0(s1)
    15f8:	3c170000 	lui	s7,0x0
    15fc:	26f7050c 	addiu	s7,s7,1292
    1600:	1200003a 	beqz	s0,16ec <ArenaImpl_FaultClient+0x170>
    1604:	3c160000 	lui	s6,0x0
    1608:	26d60508 	addiu	s6,s6,1288
    160c:	24157373 	li	s5,29555
    1610:	1200002e 	beqz	s0,16cc <ArenaImpl_FaultClient+0x150>
    1614:	3404f801 	li	a0,0xf801
    1618:	860e0000 	lh	t6,0(s0)
    161c:	02002825 	move	a1,s0
    1620:	16ae002a 	bne	s5,t6,16cc <ArenaImpl_FaultClient+0x150>
    1624:	00000000 	nop
    1628:	8e110008 	lw	s1,8(s0)
    162c:	3c040000 	lui	a0,0x0
    1630:	02e01825 	move	v1,s7
    1634:	56200004 	bnezl	s1,1648 <ArenaImpl_FaultClient+0xcc>
    1638:	8e2f000c 	lw	t7,12(s1)
    163c:	10000008 	b	1660 <ArenaImpl_FaultClient+0xe4>
    1640:	24070024 	li	a3,36
    1644:	8e2f000c 	lw	t7,12(s1)
    1648:	24020020 	li	v0,32
    164c:	120f0003 	beq	s0,t7,165c <ArenaImpl_FaultClient+0xe0>
    1650:	00000000 	nop
    1654:	10000001 	b	165c <ArenaImpl_FaultClient+0xe0>
    1658:	24020021 	li	v0,33
    165c:	00403825 	move	a3,v0
    1660:	86180002 	lh	t8,2(s0)
    1664:	13000003 	beqz	t8,1674 <ArenaImpl_FaultClient+0xf8>
    1668:	00000000 	nop
    166c:	10000001 	b	1674 <ArenaImpl_FaultClient+0xf8>
    1670:	02c01825 	move	v1,s6
    1674:	8e020004 	lw	v0,4(s0)
    1678:	afa30010 	sw	v1,16(sp)
    167c:	248404f4 	addiu	a0,a0,1268
    1680:	02023021 	addu	a2,s0,v0
    1684:	24c60030 	addiu	a2,a2,48
    1688:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    168c:	afa20014 	sw	v0,20(sp)
    1690:	3c040000 	lui	a0,0x0
    1694:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1698:	24840510 	addiu	a0,a0,1296
    169c:	86190002 	lh	t9,2(s0)
    16a0:	53200008 	beqzl	t9,16c4 <ArenaImpl_FaultClient+0x148>
    16a4:	8e080004 	lw	t0,4(s0)
    16a8:	8e020004 	lw	v0,4(s0)
    16ac:	0262082b 	sltu	at,s3,v0
    16b0:	1020000c 	beqz	at,16e4 <ArenaImpl_FaultClient+0x168>
    16b4:	0282a021 	addu	s4,s4,v0
    16b8:	1000000a 	b	16e4 <ArenaImpl_FaultClient+0x168>
    16bc:	00409825 	move	s3,v0
    16c0:	8e080004 	lw	t0,4(s0)
    16c4:	10000007 	b	16e4 <ArenaImpl_FaultClient+0x168>
    16c8:	02489021 	addu	s2,s2,t0
    16cc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    16d0:	00008825 	move	s1,zero
    16d4:	3c040000 	lui	a0,0x0
    16d8:	24840514 	addiu	a0,a0,1300
    16dc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    16e0:	02002825 	move	a1,s0
    16e4:	1620ffca 	bnez	s1,1610 <ArenaImpl_FaultClient+0x94>
    16e8:	02208025 	move	s0,s1
    16ec:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    16f0:	240407f1 	li	a0,2033
    16f4:	3c040000 	lui	a0,0x0
    16f8:	24840528 	addiu	a0,a0,1320
    16fc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1700:	02402825 	move	a1,s2
    1704:	3c040000 	lui	a0,0x0
    1708:	24840548 	addiu	a0,a0,1352
    170c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1710:	02802825 	move	a1,s4
    1714:	3c040000 	lui	a0,0x0
    1718:	24840568 	addiu	a0,a0,1384
    171c:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1720:	02602825 	move	a1,s3
    1724:	8fbf003c 	lw	ra,60(sp)
    1728:	8fb0001c 	lw	s0,28(sp)
    172c:	8fb10020 	lw	s1,32(sp)
    1730:	8fb20024 	lw	s2,36(sp)
    1734:	8fb30028 	lw	s3,40(sp)
    1738:	8fb4002c 	lw	s4,44(sp)
    173c:	8fb50030 	lw	s5,48(sp)
    1740:	8fb60034 	lw	s6,52(sp)
    1744:	8fb70038 	lw	s7,56(sp)
    1748:	03e00008 	jr	ra
    174c:	27bd0040 	addiu	sp,sp,64

00001750 <__osCheckArena>:
    1750:	27bdffd8 	addiu	sp,sp,-40
    1754:	afbf001c 	sw	ra,28(sp)
    1758:	afb10018 	sw	s1,24(sp)
    175c:	afb00014 	sw	s0,20(sp)
    1760:	afa40028 	sw	a0,40(sp)
    1764:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1768:	afa00020 	sw	zero,32(sp)
    176c:	3c040000 	lui	a0,0x0
    1770:	24840588 	addiu	a0,a0,1416
    1774:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    1778:	8fa50028 	lw	a1,40(sp)
    177c:	8fae0028 	lw	t6,40(sp)
    1780:	24117373 	li	s1,29555
    1784:	8dd00000 	lw	s0,0(t6)
    1788:	52000011 	beqzl	s0,17d0 <__osCheckArena+0x80>
    178c:	8fb80020 	lw	t8,32(sp)
    1790:	1200000a 	beqz	s0,17bc <__osCheckArena+0x6c>
    1794:	00000000 	nop
    1798:	86060000 	lh	a2,0(s0)
    179c:	16260007 	bne	s1,a2,17bc <__osCheckArena+0x6c>
    17a0:	3c040000 	lui	a0,0x0
    17a4:	248405bc 	addiu	a0,a0,1468
    17a8:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    17ac:	02002825 	move	a1,s0
    17b0:	240f0001 	li	t7,1
    17b4:	10000005 	b	17cc <__osCheckArena+0x7c>
    17b8:	afaf0020 	sw	t7,32(sp)
    17bc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    17c0:	02002025 	move	a0,s0
    17c4:	1440fff2 	bnez	v0,1790 <__osCheckArena+0x40>
    17c8:	00408025 	move	s0,v0
    17cc:	8fb80020 	lw	t8,32(sp)
    17d0:	3c040000 	lui	a0,0x0
    17d4:	17000003 	bnez	t8,17e4 <__osCheckArena+0x94>
    17d8:	00000000 	nop
    17dc:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    17e0:	248405e4 	addiu	a0,a0,1508
    17e4:	0c000000 	jal	0 <ArenaImpl_GetFillAllocBlock>
    17e8:	8fa40028 	lw	a0,40(sp)
    17ec:	8fbf001c 	lw	ra,28(sp)
    17f0:	8fa20020 	lw	v0,32(sp)
    17f4:	8fb00014 	lw	s0,20(sp)
    17f8:	8fb10018 	lw	s1,24(sp)
    17fc:	03e00008 	jr	ra
    1800:	27bd0028 	addiu	sp,sp,40

00001804 <func_800FF334>:
    1804:	03e00008 	jr	ra
    1808:	90820020 	lbu	v0,32(a0)
    180c:	00000000 	nop
