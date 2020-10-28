
build/src/code/z_sram.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Sram_InitNewSave>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	3c040000 	lui	a0,0x0
       c:	2484001c 	addiu	a0,a0,28
      10:	0c000000 	jal	0 <Sram_InitNewSave>
      14:	24051338 	li	a1,4920
      18:	3c020000 	lui	v0,0x0
      1c:	24420000 	addiu	v0,v0,0
      20:	3c0f0000 	lui	t7,0x0
      24:	25ef0000 	addiu	t7,t7,0
      28:	3c0e0000 	lui	t6,0x0
      2c:	ac400014 	sw	zero,20(v0)
      30:	ac400018 	sw	zero,24(v0)
      34:	25ce001c 	addiu	t6,t6,28
      38:	25e80048 	addiu	t0,t7,72
      3c:	8df90000 	lw	t9,0(t7)
      40:	25ef000c 	addiu	t7,t7,12
      44:	25ce000c 	addiu	t6,t6,12
      48:	add9fff4 	sw	t9,-12(t6)
      4c:	8df8fff8 	lw	t8,-8(t7)
      50:	add8fff8 	sw	t8,-8(t6)
      54:	8df9fffc 	lw	t9,-4(t7)
      58:	15e8fff8 	bne	t7,t0,3c <Sram_InitNewSave+0x3c>
      5c:	add9fffc 	sw	t9,-4(t6)
      60:	8df90000 	lw	t9,0(t7)
      64:	3c0a0000 	lui	t2,0x0
      68:	254a0000 	addiu	t2,t2,0
      6c:	add90000 	sw	t9,0(t6)
      70:	8d4c0000 	lw	t4,0(t2)
      74:	3c090000 	lui	t1,0x0
      78:	25290068 	addiu	t1,t1,104
      7c:	a92c0000 	swl	t4,0(t1)
      80:	8d4b0004 	lw	t3,4(t2)
      84:	b92c0003 	swr	t4,3(t1)
      88:	954c0008 	lhu	t4,8(t2)
      8c:	3c080000 	lui	t0,0x0
      90:	25080000 	addiu	t0,t0,0
      94:	3c0d0000 	lui	t5,0x0
      98:	a92b0004 	swl	t3,4(t1)
      9c:	25ad0074 	addiu	t5,t5,116
      a0:	25180060 	addiu	t8,t0,96
      a4:	b92b0007 	swr	t3,7(t1)
      a8:	a52c0008 	sh	t4,8(t1)
      ac:	8d0e0000 	lw	t6,0(t0)
      b0:	2508000c 	addiu	t0,t0,12
      b4:	25ad000c 	addiu	t5,t5,12
      b8:	adaefff4 	sw	t6,-12(t5)
      bc:	8d0ffff8 	lw	t7,-8(t0)
      c0:	adaffff8 	sw	t7,-8(t5)
      c4:	8d0efffc 	lw	t6,-4(t0)
      c8:	1518fff8 	bne	t0,t8,ac <Sram_InitNewSave+0xac>
      cc:	adaefffc 	sw	t6,-4(t5)
      d0:	3c190000 	lui	t9,0x0
      d4:	97390000 	lhu	t9,0(t9)
      d8:	3c010000 	lui	at,0x0
      dc:	8fbf0014 	lw	ra,20(sp)
      e0:	a4391352 	sh	t9,4946(at)
      e4:	24090051 	li	t1,81
      e8:	240af8d0 	li	t2,-1840
      ec:	240b0048 	li	t3,72
      f0:	240c1579 	li	t4,5497
      f4:	24189527 	li	t8,-27353
      f8:	24080001 	li	t0,1
      fc:	3c0d4000 	lui	t5,0x4000
     100:	a4491348 	sh	t1,4936(v0)
     104:	a44a134a 	sh	t2,4938(v0)
     108:	a44b134c 	sh	t3,4940(v0)
     10c:	a44c134e 	sh	t4,4942(v0)
     110:	a4581350 	sh	t8,4944(v0)
     114:	a0400032 	sb	zero,50(v0)
     118:	a4480f32 	sh	t0,3890(v0)
     11c:	ac4d0164 	sw	t5,356(v0)
     120:	03e00008 	jr	ra
     124:	27bd0018 	addiu	sp,sp,24

00000128 <Sram_InitDebugSave>:
     128:	27bdffe8 	addiu	sp,sp,-24
     12c:	afbf0014 	sw	ra,20(sp)
     130:	3c040000 	lui	a0,0x0
     134:	2484001c 	addiu	a0,a0,28
     138:	0c000000 	jal	0 <Sram_InitNewSave>
     13c:	24051338 	li	a1,4920
     140:	3c020000 	lui	v0,0x0
     144:	24420000 	addiu	v0,v0,0
     148:	3c0f0000 	lui	t7,0x0
     14c:	25ef0000 	addiu	t7,t7,0
     150:	3c0e0000 	lui	t6,0x0
     154:	ac400014 	sw	zero,20(v0)
     158:	ac400018 	sw	zero,24(v0)
     15c:	25ce001c 	addiu	t6,t6,28
     160:	25e80048 	addiu	t0,t7,72
     164:	8df90000 	lw	t9,0(t7)
     168:	25ef000c 	addiu	t7,t7,12
     16c:	25ce000c 	addiu	t6,t6,12
     170:	add9fff4 	sw	t9,-12(t6)
     174:	8df8fff8 	lw	t8,-8(t7)
     178:	add8fff8 	sw	t8,-8(t6)
     17c:	8df9fffc 	lw	t9,-4(t7)
     180:	15e8fff8 	bne	t7,t0,164 <Sram_InitDebugSave+0x3c>
     184:	add9fffc 	sw	t9,-4(t6)
     188:	8df90000 	lw	t9,0(t7)
     18c:	3c0a0000 	lui	t2,0x0
     190:	254a0000 	addiu	t2,t2,0
     194:	add90000 	sw	t9,0(t6)
     198:	8d4c0000 	lw	t4,0(t2)
     19c:	3c090000 	lui	t1,0x0
     1a0:	25290068 	addiu	t1,t1,104
     1a4:	a92c0000 	swl	t4,0(t1)
     1a8:	8d4b0004 	lw	t3,4(t2)
     1ac:	b92c0003 	swr	t4,3(t1)
     1b0:	954c0008 	lhu	t4,8(t2)
     1b4:	3c080000 	lui	t0,0x0
     1b8:	25080000 	addiu	t0,t0,0
     1bc:	3c0d0000 	lui	t5,0x0
     1c0:	a92b0004 	swl	t3,4(t1)
     1c4:	25ad0074 	addiu	t5,t5,116
     1c8:	25180060 	addiu	t8,t0,96
     1cc:	b92b0007 	swr	t3,7(t1)
     1d0:	a52c0008 	sh	t4,8(t1)
     1d4:	8d0e0000 	lw	t6,0(t0)
     1d8:	2508000c 	addiu	t0,t0,12
     1dc:	25ad000c 	addiu	t5,t5,12
     1e0:	adaefff4 	sw	t6,-12(t5)
     1e4:	8d0ffff8 	lw	t7,-8(t0)
     1e8:	adaffff8 	sw	t7,-8(t5)
     1ec:	8d0efffc 	lw	t6,-4(t0)
     1f0:	1518fff8 	bne	t0,t8,1d4 <Sram_InitDebugSave+0xac>
     1f4:	adaefffc 	sw	t6,-4(t5)
     1f8:	3c190000 	lui	t9,0x0
     1fc:	97390000 	lhu	t9,0(t9)
     200:	3c010000 	lui	at,0x0
     204:	240af8d0 	li	t2,-1840
     208:	a4391352 	sh	t9,4946(at)
     20c:	a44a134a 	sh	t2,4938(v0)
     210:	240c1579 	li	t4,5497
     214:	94480ef8 	lhu	t0,3832(v0)
     218:	944f0ed4 	lhu	t7,3796(v0)
     21c:	94590ee4 	lhu	t9,3812(v0)
     220:	944a0eec 	lhu	t2,3820(v0)
     224:	a44c134e 	sh	t4,4942(v0)
     228:	8c4c0004 	lw	t4,4(v0)
     22c:	24090051 	li	t1,81
     230:	240b0048 	li	t3,72
     234:	a4491348 	sh	t1,4936(v0)
     238:	a44b134c 	sh	t3,4940(v0)
     23c:	24189527 	li	t8,-27353
     240:	350d5009 	ori	t5,t0,0x5009
     244:	35ee123f 	ori	t6,t7,0x123f
     248:	37290001 	ori	t1,t9,0x1
     24c:	354b0010 	ori	t3,t2,0x10
     250:	a4581350 	sh	t8,4944(v0)
     254:	a44d0ef8 	sh	t5,3832(v0)
     258:	a44e0ed4 	sh	t6,3796(v0)
     25c:	a4490ee4 	sh	t1,3812(v0)
     260:	11800003 	beqz	t4,270 <Sram_InitDebugSave+0x148>
     264:	a44b0eec 	sh	t3,3820(v0)
     268:	10000002 	b	274 <Sram_InitDebugSave+0x14c>
     26c:	24030005 	li	v1,5
     270:	24030011 	li	v1,17
     274:	24010005 	li	at,5
     278:	14610012 	bne	v1,at,2c4 <Sram_InitDebugSave+0x19c>
     27c:	2418003b 	li	t8,59
     280:	a0580068 	sb	t8,104(v0)
     284:	00002025 	move	a0,zero
     288:	0c000000 	jal	0 <Sram_InitNewSave>
     28c:	24050001 	li	a1,1
     290:	3c020000 	lui	v0,0x0
     294:	24420000 	addiu	v0,v0,0
     298:	8c481354 	lw	t0,4948(v0)
     29c:	240100ff 	li	at,255
     2a0:	24030006 	li	v1,6
     2a4:	15010007 	bne	t0,at,2c4 <Sram_InitDebugSave+0x19c>
     2a8:	24040001 	li	a0,1
     2ac:	a0430069 	sb	v1,105(v0)
     2b0:	a043006c 	sb	v1,108(v0)
     2b4:	0c000000 	jal	0 <Sram_InitNewSave>
     2b8:	24050001 	li	a1,1
     2bc:	3c020000 	lui	v0,0x0
     2c0:	24420000 	addiu	v0,v0,0
     2c4:	8fbf0014 	lw	ra,20(sp)
     2c8:	240d00cd 	li	t5,205
     2cc:	3c0f4000 	lui	t7,0x4000
     2d0:	ac4d0000 	sw	t5,0(v0)
     2d4:	a0400032 	sb	zero,50(v0)
     2d8:	ac4f0164 	sw	t7,356(v0)
     2dc:	03e00008 	jr	ra
     2e0:	27bd0018 	addiu	sp,sp,24

000002e4 <Sram_OpenSave>:
     2e4:	27bdffd8 	addiu	sp,sp,-40
     2e8:	afb00014 	sw	s0,20(sp)
     2ec:	00808025 	move	s0,a0
     2f0:	afbf001c 	sw	ra,28(sp)
     2f4:	3c040000 	lui	a0,0x0
     2f8:	afb10018 	sw	s1,24(sp)
     2fc:	0c000000 	jal	0 <Sram_InitNewSave>
     300:	24840000 	addiu	a0,a0,0
     304:	3c110000 	lui	s1,0x0
     308:	26310000 	addiu	s1,s1,0
     30c:	8e261354 	lw	a2,4948(s1)
     310:	3c070000 	lui	a3,0x0
     314:	3c040000 	lui	a0,0x0
     318:	00067040 	sll	t6,a2,0x1
     31c:	00ee3821 	addu	a3,a3,t6
     320:	94e50000 	lhu	a1,0(a3)
     324:	24840000 	addiu	a0,a0,0
     328:	0c000000 	jal	0 <Sram_InitNewSave>
     32c:	a7a50026 	sh	a1,38(sp)
     330:	97a70026 	lhu	a3,38(sp)
     334:	8e0f0000 	lw	t7,0(s0)
     338:	02202025 	move	a0,s1
     33c:	24061354 	li	a2,4948
     340:	0c000000 	jal	0 <Sram_InitNewSave>
     344:	01e72821 	addu	a1,t7,a3
     348:	3c040000 	lui	a0,0x0
     34c:	0c000000 	jal	0 <Sram_InitNewSave>
     350:	24840000 	addiu	a0,a0,0
     354:	3c040000 	lui	a0,0x0
     358:	24840000 	addiu	a0,a0,0
     35c:	8e260000 	lw	a2,0(s1)
     360:	0c000000 	jal	0 <Sram_InitNewSave>
     364:	86250066 	lh	a1,102(s1)
     368:	86220066 	lh	v0,102(s1)
     36c:	2841001b 	slti	at,v0,27
     370:	14200006 	bnez	at,38c <Sram_OpenSave+0xa8>
     374:	00408025 	move	s0,v0
     378:	2401004f 	li	at,79
     37c:	52010029 	beql	s0,at,424 <L800A85C0+0x4>
     380:	240e041b 	li	t6,1051
     384:	1000002a 	b	430 <L800A85CC+0x4>
     388:	24010034 	li	at,52
     38c:	2e01001b 	sltiu	at,s0,27
     390:	10200026 	beqz	at,42c <L800A85CC>
     394:	0010c080 	sll	t8,s0,0x2
     398:	3c010000 	lui	at,0x0
     39c:	00380821 	addu	at,at,t8
     3a0:	8c380000 	lw	t8,0(at)
     3a4:	03000008 	jr	t8
     3a8:	00000000 	nop

000003ac <L800A854C>:
     3ac:	0002c840 	sll	t9,v0,0x1
     3b0:	3c0c0000 	lui	t4,0x0
     3b4:	01996021 	addu	t4,t4,t9
     3b8:	858c0000 	lh	t4,0(t4)
     3bc:	1000002c 	b	470 <L800A85CC+0x44>
     3c0:	ae2c0000 	sw	t4,0(s1)

000003c4 <L800A8564>:
     3c4:	1000002a 	b	470 <L800A85CC+0x44>
     3c8:	ae200000 	sw	zero,0(s1)

000003cc <L800A856C>:
     3cc:	240d0004 	li	t5,4
     3d0:	10000027 	b	470 <L800A85CC+0x44>
     3d4:	ae2d0000 	sw	t5,0(s1)

000003d8 <L800A8578>:
     3d8:	240e0028 	li	t6,40
     3dc:	10000024 	b	470 <L800A85CC+0x44>
     3e0:	ae2e0000 	sw	t6,0(s1)

000003e4 <L800A8584>:
     3e4:	240f0169 	li	t7,361
     3e8:	10000021 	b	470 <L800A85CC+0x44>
     3ec:	ae2f0000 	sw	t7,0(s1)

000003f0 <L800A8590>:
     3f0:	24180165 	li	t8,357
     3f4:	1000001e 	b	470 <L800A85CC+0x44>
     3f8:	ae380000 	sw	t8,0(s1)

000003fc <L800A859C>:
     3fc:	24190010 	li	t9,16
     400:	1000001b 	b	470 <L800A85CC+0x44>
     404:	ae390000 	sw	t9,0(s1)

00000408 <L800A85A8>:
     408:	240c0082 	li	t4,130
     40c:	10000018 	b	470 <L800A85CC+0x44>
     410:	ae2c0000 	sw	t4,0(s1)

00000414 <L800A85B4>:
     414:	240d0037 	li	t5,55
     418:	10000015 	b	470 <L800A85CC+0x44>
     41c:	ae2d0000 	sw	t5,0(s1)

00000420 <L800A85C0>:
     420:	240e041b 	li	t6,1051
     424:	10000012 	b	470 <L800A85CC+0x44>
     428:	ae2e0000 	sw	t6,0(s1)

0000042c <L800A85CC>:
     42c:	24010034 	li	at,52
     430:	1041000e 	beq	v0,at,46c <L800A85CC+0x40>
     434:	240c00bb 	li	t4,187
     438:	8e2f0004 	lw	t7,4(s1)
     43c:	24010005 	li	at,5
     440:	24100011 	li	s0,17
     444:	11e00003 	beqz	t7,454 <L800A85CC+0x28>
     448:	241905f4 	li	t9,1524
     44c:	10000001 	b	454 <L800A85CC+0x28>
     450:	24100005 	li	s0,5
     454:	16010003 	bne	s0,at,464 <L800A85CC+0x38>
     458:	241800bb 	li	t8,187
     45c:	10000004 	b	470 <L800A85CC+0x44>
     460:	ae380000 	sw	t8,0(s1)
     464:	10000002 	b	470 <L800A85CC+0x44>
     468:	ae390000 	sw	t9,0(s1)
     46c:	ae2c0000 	sw	t4,0(s1)
     470:	3c040000 	lui	a0,0x0
     474:	24840000 	addiu	a0,a0,0
     478:	0c000000 	jal	0 <Sram_InitNewSave>
     47c:	8e250000 	lw	a1,0(s1)
     480:	3c040000 	lui	a0,0x0
     484:	0c000000 	jal	0 <Sram_InitNewSave>
     488:	24840000 	addiu	a0,a0,0
     48c:	862d0030 	lh	t5,48(s1)
     490:	240e0030 	li	t6,48
     494:	3c040000 	lui	a0,0x0
     498:	29a10030 	slti	at,t5,48
     49c:	50200003 	beqzl	at,4ac <L800A85CC+0x80>
     4a0:	922f0f40 	lbu	t7,3904(s1)
     4a4:	a62e0030 	sh	t6,48(s1)
     4a8:	922f0f40 	lbu	t7,3904(s1)
     4ac:	51e00022 	beqzl	t7,538 <L800A85CC+0x10c>
     4b0:	923812c5 	lbu	t8,4805(s1)
     4b4:	0c000000 	jal	0 <Sram_InitNewSave>
     4b8:	24840000 	addiu	a0,a0,0
     4bc:	3c040000 	lui	a0,0x0
     4c0:	0c000000 	jal	0 <Sram_InitNewSave>
     4c4:	24840000 	addiu	a0,a0,0
     4c8:	3c040000 	lui	a0,0x0
     4cc:	3c050000 	lui	a1,0x0
     4d0:	24a50f41 	addiu	a1,a1,3905
     4d4:	8c840000 	lw	a0,0(a0)
     4d8:	0c000000 	jal	0 <Sram_InitNewSave>
     4dc:	24060360 	li	a2,864
     4e0:	3c100000 	lui	s0,0x0
     4e4:	8e100000 	lw	s0,0(s0)
     4e8:	00003825 	move	a3,zero
     4ec:	3c040000 	lui	a0,0x0
     4f0:	92050000 	lbu	a1,0(s0)
     4f4:	a7a70026 	sh	a3,38(sp)
     4f8:	0c000000 	jal	0 <Sram_InitNewSave>
     4fc:	24840000 	addiu	a0,a0,0
     500:	97a70026 	lhu	a3,38(sp)
     504:	26100001 	addiu	s0,s0,1
     508:	24e70001 	addiu	a3,a3,1
     50c:	30e7ffff 	andi	a3,a3,0xffff
     510:	28e10360 	slti	at,a3,864
     514:	1420fff5 	bnez	at,4ec <L800A85CC+0xc0>
     518:	00000000 	nop
     51c:	3c040000 	lui	a0,0x0
     520:	0c000000 	jal	0 <Sram_InitNewSave>
     524:	24840000 	addiu	a0,a0,0
     528:	3c040000 	lui	a0,0x0
     52c:	0c000000 	jal	0 <Sram_InitNewSave>
     530:	24840000 	addiu	a0,a0,0
     534:	923812c5 	lbu	t8,4805(s1)
     538:	3c040000 	lui	a0,0x0
     53c:	53000022 	beqzl	t8,5c8 <L800A85CC+0x19c>
     540:	96220edc 	lhu	v0,3804(s1)
     544:	0c000000 	jal	0 <Sram_InitNewSave>
     548:	24840000 	addiu	a0,a0,0
     54c:	3c040000 	lui	a0,0x0
     550:	0c000000 	jal	0 <Sram_InitNewSave>
     554:	24840000 	addiu	a0,a0,0
     558:	3c040000 	lui	a0,0x0
     55c:	3c050000 	lui	a1,0x0
     560:	24a512c6 	addiu	a1,a1,4806
     564:	8c840000 	lw	a0,0(a0)
     568:	0c000000 	jal	0 <Sram_InitNewSave>
     56c:	24060080 	li	a2,128
     570:	3c100000 	lui	s0,0x0
     574:	8e100000 	lw	s0,0(s0)
     578:	00003825 	move	a3,zero
     57c:	3c040000 	lui	a0,0x0
     580:	92050000 	lbu	a1,0(s0)
     584:	a7a70026 	sh	a3,38(sp)
     588:	0c000000 	jal	0 <Sram_InitNewSave>
     58c:	24840000 	addiu	a0,a0,0
     590:	97a70026 	lhu	a3,38(sp)
     594:	26100001 	addiu	s0,s0,1
     598:	24e70001 	addiu	a3,a3,1
     59c:	30e7ffff 	andi	a3,a3,0xffff
     5a0:	28e10080 	slti	at,a3,128
     5a4:	1420fff5 	bnez	at,57c <L800A85CC+0x150>
     5a8:	00000000 	nop
     5ac:	3c040000 	lui	a0,0x0
     5b0:	0c000000 	jal	0 <Sram_InitNewSave>
     5b4:	24840000 	addiu	a0,a0,0
     5b8:	3c040000 	lui	a0,0x0
     5bc:	0c000000 	jal	0 <Sram_InitNewSave>
     5c0:	24840000 	addiu	a0,a0,0
     5c4:	96220edc 	lhu	v0,3804(s1)
     5c8:	3c0a0000 	lui	t2,0x0
     5cc:	254a0000 	addiu	t2,t2,0
     5d0:	30590001 	andi	t9,v0,0x1
     5d4:	13200019 	beqz	t9,63c <L800A85CC+0x210>
     5d8:	3c090000 	lui	t1,0x0
     5dc:	3c0c0000 	lui	t4,0x0
     5e0:	8d8c0030 	lw	t4,48(t4)
     5e4:	8e2d00a4 	lw	t5,164(s1)
     5e8:	3c0b0000 	lui	t3,0x0
     5ec:	256b0000 	addiu	t3,t3,0
     5f0:	018d7024 	and	t6,t4,t5
     5f4:	15c00011 	bnez	t6,63c <L800A85CC+0x210>
     5f8:	24040022 	li	a0,34
     5fc:	916f0023 	lbu	t7,35(t3)
     600:	3047fffe 	andi	a3,v0,0xfffe
     604:	a6270edc 	sh	a3,3804(s1)
     608:	022fc021 	addu	t8,s1,t7
     60c:	a3040074 	sb	a0,116(t8)
     610:	24030001 	li	v1,1
     614:	24050023 	li	a1,35
     618:	02231021 	addu	v0,s1,v1
     61c:	90590068 	lbu	t9,104(v0)
     620:	24630001 	addiu	v1,v1,1
     624:	3063ffff 	andi	v1,v1,0xffff
     628:	14b90002 	bne	a1,t9,634 <L800A85CC+0x208>
     62c:	28610004 	slti	at,v1,4
     630:	a0440068 	sb	a0,104(v0)
     634:	5420fff9 	bnezl	at,61c <L800A85CC+0x1f0>
     638:	02231021 	addu	v0,s1,v1
     63c:	8e2c0004 	lw	t4,4(s1)
     640:	3c0b0000 	lui	t3,0x0
     644:	256b0000 	addiu	t3,t3,0
     648:	11800003 	beqz	t4,658 <L800A85CC+0x22c>
     64c:	24010011 	li	at,17
     650:	10000002 	b	65c <L800A85CC+0x230>
     654:	24100005 	li	s0,5
     658:	24100011 	li	s0,17
     65c:	16010011 	bne	s0,at,6a4 <L800A85CC+0x278>
     660:	3c0d0000 	lui	t5,0x0
     664:	3c0e0000 	lui	t6,0x0
     668:	91ce0000 	lbu	t6,0(t6)
     66c:	8dad0004 	lw	t5,4(t5)
     670:	9623009c 	lhu	v1,156(s1)
     674:	2419003c 	li	t9,60
     678:	01cd1004 	sllv	v0,t5,t6
     67c:	00437824 	and	t7,v0,v1
     680:	15e00008 	bnez	t7,6a4 <L800A85CC+0x278>
     684:	0062c025 	or	t8,v1,v0
     688:	962c0070 	lhu	t4,112(s1)
     68c:	a638009c 	sh	t8,156(s1)
     690:	a2390068 	sb	t9,104(s1)
     694:	318efff0 	andi	t6,t4,0xfff0
     698:	a62e0070 	sh	t6,112(s1)
     69c:	35cf0002 	ori	t7,t6,0x2
     6a0:	a62f0070 	sh	t7,112(s1)
     6a4:	9178002d 	lbu	t8,45(t3)
     6a8:	00003825 	move	a3,zero
     6ac:	25290000 	addiu	t1,t1,0
     6b0:	02384021 	addu	t0,s1,t8
     6b4:	00073040 	sll	a2,a3,0x1
     6b8:	0126c821 	addu	t9,t1,a2
     6bc:	87240000 	lh	a0,0(t9)
     6c0:	910c0074 	lbu	t4,116(t0)
     6c4:	24e70001 	addiu	a3,a3,1
     6c8:	30e7ffff 	andi	a3,a3,0xffff
     6cc:	15840010 	bne	t4,a0,710 <L800A85CC+0x2e4>
     6d0:	01466821 	addu	t5,t2,a2
     6d4:	85a50000 	lh	a1,0(t5)
     6d8:	24030001 	li	v1,1
     6dc:	01657021 	addu	t6,t3,a1
     6e0:	91cf0000 	lbu	t7,0(t6)
     6e4:	022fc021 	addu	t8,s1,t7
     6e8:	a3050074 	sb	a1,116(t8)
     6ec:	02231021 	addu	v0,s1,v1
     6f0:	90590068 	lbu	t9,104(v0)
     6f4:	24630001 	addiu	v1,v1,1
     6f8:	3063ffff 	andi	v1,v1,0xffff
     6fc:	17240002 	bne	t9,a0,708 <L800A85CC+0x2dc>
     700:	28610004 	slti	at,v1,4
     704:	a0450068 	sb	a1,104(v0)
     708:	5420fff9 	bnezl	at,6f0 <L800A85CC+0x2c4>
     70c:	02231021 	addu	v0,s1,v1
     710:	28e10003 	slti	at,a3,3
     714:	5420ffe8 	bnezl	at,6b8 <L800A85CC+0x28c>
     718:	00073040 	sll	a2,a3,0x1
     71c:	8fbf001c 	lw	ra,28(sp)
     720:	a2200032 	sb	zero,50(s1)
     724:	8fb10018 	lw	s1,24(sp)
     728:	8fb00014 	lw	s0,20(sp)
     72c:	03e00008 	jr	ra
     730:	27bd0028 	addiu	sp,sp,40

00000734 <Sram_WriteSave>:
     734:	3c050000 	lui	a1,0x0
     738:	24a50000 	addiu	a1,a1,0
     73c:	27bdffe0 	addiu	sp,sp,-32
     740:	afa40020 	sw	a0,32(sp)
     744:	afbf0014 	sw	ra,20(sp)
     748:	a4a01352 	sh	zero,4946(a1)
     74c:	00a01825 	move	v1,a1
     750:	00002025 	move	a0,zero
     754:	00001025 	move	v0,zero
     758:	00004025 	move	t0,zero
     75c:	24090020 	li	t1,32
     760:	24420001 	addiu	v0,v0,1
     764:	3042ffff 	andi	v0,v0,0xffff
     768:	15220002 	bne	t1,v0,774 <Sram_WriteSave+0x40>
     76c:	25080001 	addiu	t0,t0,1
     770:	00001025 	move	v0,zero
     774:	946e0000 	lhu	t6,0(v1)
     778:	3108ffff 	andi	t0,t0,0xffff
     77c:	2d0109aa 	sltiu	at,t0,2474
     780:	008e2021 	addu	a0,a0,t6
     784:	3084ffff 	andi	a0,a0,0xffff
     788:	1420fff5 	bnez	at,760 <Sram_WriteSave+0x2c>
     78c:	24630002 	addiu	v1,v1,2
     790:	a4a41352 	sh	a0,4946(a1)
     794:	00a01825 	move	v1,a1
     798:	00002025 	move	a0,zero
     79c:	00004025 	move	t0,zero
     7a0:	24420001 	addiu	v0,v0,1
     7a4:	3042ffff 	andi	v0,v0,0xffff
     7a8:	15220002 	bne	t1,v0,7b4 <Sram_WriteSave+0x80>
     7ac:	25080001 	addiu	t0,t0,1
     7b0:	00001025 	move	v0,zero
     7b4:	946f0000 	lhu	t7,0(v1)
     7b8:	3108ffff 	andi	t0,t0,0xffff
     7bc:	2d0109aa 	sltiu	at,t0,2474
     7c0:	008f2021 	addu	a0,a0,t7
     7c4:	3084ffff 	andi	a0,a0,0xffff
     7c8:	1420fff5 	bnez	at,7a0 <Sram_WriteSave+0x6c>
     7cc:	24630002 	addiu	v1,v1,2
     7d0:	8cb81354 	lw	t8,4948(a1)
     7d4:	3c080000 	lui	t0,0x0
     7d8:	3c010800 	lui	at,0x800
     7dc:	0018c840 	sll	t9,t8,0x1
     7e0:	01194021 	addu	t0,t0,t9
     7e4:	95080000 	lhu	t0,0(t0)
     7e8:	24061450 	li	a2,5200
     7ec:	24070001 	li	a3,1
     7f0:	a7a2001a 	sh	v0,26(sp)
     7f4:	0c000000 	jal	0 <Sram_InitNewSave>
     7f8:	01012021 	addu	a0,t0,at
     7fc:	3c050000 	lui	a1,0x0
     800:	24a50000 	addiu	a1,a1,0
     804:	97a2001a 	lhu	v0,26(sp)
     808:	24090020 	li	t1,32
     80c:	00a01825 	move	v1,a1
     810:	00002025 	move	a0,zero
     814:	00004025 	move	t0,zero
     818:	24420001 	addiu	v0,v0,1
     81c:	3042ffff 	andi	v0,v0,0xffff
     820:	15220002 	bne	t1,v0,82c <Sram_WriteSave+0xf8>
     824:	25080001 	addiu	t0,t0,1
     828:	00001025 	move	v0,zero
     82c:	946a0000 	lhu	t2,0(v1)
     830:	3108ffff 	andi	t0,t0,0xffff
     834:	2d0109aa 	sltiu	at,t0,2474
     838:	008a2021 	addu	a0,a0,t2
     83c:	3084ffff 	andi	a0,a0,0xffff
     840:	1420fff5 	bnez	at,818 <Sram_WriteSave+0xe4>
     844:	24630002 	addiu	v1,v1,2
     848:	8cab1354 	lw	t3,4948(a1)
     84c:	3c080000 	lui	t0,0x0
     850:	3c010800 	lui	at,0x800
     854:	000b6040 	sll	t4,t3,0x1
     858:	010c4021 	addu	t0,t0,t4
     85c:	95080006 	lhu	t0,6(t0)
     860:	24061450 	li	a2,5200
     864:	24070001 	li	a3,1
     868:	0c000000 	jal	0 <Sram_InitNewSave>
     86c:	01012021 	addu	a0,t0,at
     870:	8fbf0014 	lw	ra,20(sp)
     874:	27bd0020 	addiu	sp,sp,32
     878:	03e00008 	jr	ra
     87c:	00000000 	nop

00000880 <Sram_VerifyAndLoadAllSaves>:
     880:	27bdff88 	addiu	sp,sp,-120
     884:	afa40078 	sw	a0,120(sp)
     888:	afbf004c 	sw	ra,76(sp)
     88c:	3c040000 	lui	a0,0x0
     890:	afbe0048 	sw	s8,72(sp)
     894:	afb70044 	sw	s7,68(sp)
     898:	afb60040 	sw	s6,64(sp)
     89c:	afb5003c 	sw	s5,60(sp)
     8a0:	afb40038 	sw	s4,56(sp)
     8a4:	afb30034 	sw	s3,52(sp)
     8a8:	afb20030 	sw	s2,48(sp)
     8ac:	afb1002c 	sw	s1,44(sp)
     8b0:	afb00028 	sw	s0,40(sp)
     8b4:	afa5007c 	sw	a1,124(sp)
     8b8:	0c000000 	jal	0 <Sram_InitNewSave>
     8bc:	24840000 	addiu	a0,a0,0
     8c0:	8fae007c 	lw	t6,124(sp)
     8c4:	34058000 	li	a1,0x8000
     8c8:	0c000000 	jal	0 <Sram_InitNewSave>
     8cc:	8dc40000 	lw	a0,0(t6)
     8d0:	8faf007c 	lw	t7,124(sp)
     8d4:	3c040800 	lui	a0,0x800
     8d8:	34068000 	li	a2,0x8000
     8dc:	00003825 	move	a3,zero
     8e0:	0c000000 	jal	0 <Sram_InitNewSave>
     8e4:	8de50000 	lw	a1,0(t7)
     8e8:	3c140000 	lui	s4,0x0
     8ec:	26940000 	addiu	s4,s4,0
     8f0:	9698000c 	lhu	t8,12(s4)
     8f4:	3c1e0000 	lui	s8,0x0
     8f8:	3c160000 	lui	s6,0x0
     8fc:	26d60000 	addiu	s6,s6,0
     900:	27de0000 	addiu	s8,s8,0
     904:	a7a00072 	sh	zero,114(sp)
     908:	afa0005c 	sw	zero,92(sp)
     90c:	24170020 	li	s7,32
     910:	a7b80066 	sh	t8,102(sp)
     914:	97b90072 	lhu	t9,114(sp)
     918:	3c090000 	lui	t1,0x0
     91c:	25290000 	addiu	t1,t1,0
     920:	00194040 	sll	t0,t9,0x1
     924:	01091021 	addu	v0,t0,t1
     928:	94520000 	lhu	s2,0(v0)
     92c:	3c040000 	lui	a0,0x0
     930:	24840000 	addiu	a0,a0,0
     934:	afa20060 	sw	v0,96(sp)
     938:	8e861354 	lw	a2,4948(s4)
     93c:	24071354 	li	a3,4948
     940:	0c000000 	jal	0 <Sram_InitNewSave>
     944:	02402825 	move	a1,s2
     948:	8faa007c 	lw	t2,124(sp)
     94c:	02802025 	move	a0,s4
     950:	24061354 	li	a2,4948
     954:	8d4b0000 	lw	t3,0(t2)
     958:	0c000000 	jal	0 <Sram_InitNewSave>
     95c:	01722821 	addu	a1,t3,s2
     960:	96951352 	lhu	s5,4946(s4)
     964:	3c040000 	lui	a0,0x0
     968:	a6801352 	sh	zero,4946(s4)
     96c:	02808025 	move	s0,s4
     970:	24840000 	addiu	a0,a0,0
     974:	0c000000 	jal	0 <Sram_InitNewSave>
     978:	8fa5005c 	lw	a1,92(sp)
     97c:	00009825 	move	s3,zero
     980:	00008825 	move	s1,zero
     984:	960c0000 	lhu	t4,0(s0)
     988:	26310001 	addiu	s1,s1,1
     98c:	3231ffff 	andi	s1,s1,0xffff
     990:	2e2109aa 	sltiu	at,s1,2474
     994:	26520002 	addiu	s2,s2,2
     998:	026c9821 	addu	s3,s3,t4
     99c:	3252ffff 	andi	s2,s2,0xffff
     9a0:	3273ffff 	andi	s3,s3,0xffff
     9a4:	1420fff7 	bnez	at,984 <Sram_VerifyAndLoadAllSaves+0x104>
     9a8:	26100002 	addiu	s0,s0,2
     9ac:	3c040000 	lui	a0,0x0
     9b0:	24840000 	addiu	a0,a0,0
     9b4:	02609025 	move	s2,s3
     9b8:	02602825 	move	a1,s3
     9bc:	02a08025 	move	s0,s5
     9c0:	0c000000 	jal	0 <Sram_InitNewSave>
     9c4:	02a03025 	move	a2,s5
     9c8:	121200bb 	beq	s0,s2,cb8 <Sram_VerifyAndLoadAllSaves+0x438>
     9cc:	3c040000 	lui	a0,0x0
     9d0:	8fad0060 	lw	t5,96(sp)
     9d4:	3c040000 	lui	a0,0x0
     9d8:	24840000 	addiu	a0,a0,0
     9dc:	8fa6005c 	lw	a2,92(sp)
     9e0:	0c000000 	jal	0 <Sram_InitNewSave>
     9e4:	95a50000 	lhu	a1,0(t5)
     9e8:	8fae005c 	lw	t6,92(sp)
     9ec:	8fb9007c 	lw	t9,124(sp)
     9f0:	3c180000 	lui	t8,0x0
     9f4:	27180000 	addiu	t8,t8,0
     9f8:	000e7840 	sll	t7,t6,0x1
     9fc:	01f81021 	addu	v0,t7,t8
     a00:	94520006 	lhu	s2,6(v0)
     a04:	8f280000 	lw	t0,0(t9)
     a08:	afa20050 	sw	v0,80(sp)
     a0c:	02802025 	move	a0,s4
     a10:	24061354 	li	a2,4948
     a14:	0c000000 	jal	0 <Sram_InitNewSave>
     a18:	01122821 	addu	a1,t0,s2
     a1c:	96951352 	lhu	s5,4946(s4)
     a20:	3c040000 	lui	a0,0x0
     a24:	a6801352 	sh	zero,4946(s4)
     a28:	02808025 	move	s0,s4
     a2c:	0c000000 	jal	0 <Sram_InitNewSave>
     a30:	24840000 	addiu	a0,a0,0
     a34:	00009825 	move	s3,zero
     a38:	00008825 	move	s1,zero
     a3c:	96090000 	lhu	t1,0(s0)
     a40:	26310001 	addiu	s1,s1,1
     a44:	3231ffff 	andi	s1,s1,0xffff
     a48:	2e2109aa 	sltiu	at,s1,2474
     a4c:	26520002 	addiu	s2,s2,2
     a50:	02699821 	addu	s3,s3,t1
     a54:	3252ffff 	andi	s2,s2,0xffff
     a58:	3273ffff 	andi	s3,s3,0xffff
     a5c:	1420fff7 	bnez	at,a3c <Sram_VerifyAndLoadAllSaves+0x1bc>
     a60:	26100002 	addiu	s0,s0,2
     a64:	3c040000 	lui	a0,0x0
     a68:	24840000 	addiu	a0,a0,0
     a6c:	02609025 	move	s2,s3
     a70:	02602825 	move	a1,s3
     a74:	02a08025 	move	s0,s5
     a78:	0c000000 	jal	0 <Sram_InitNewSave>
     a7c:	02a03025 	move	a2,s5
     a80:	1212007c 	beq	s0,s2,c74 <Sram_VerifyAndLoadAllSaves+0x3f4>
     a84:	3c040000 	lui	a0,0x0
     a88:	8faa0050 	lw	t2,80(sp)
     a8c:	24840000 	addiu	a0,a0,0
     a90:	8fa6005c 	lw	a2,92(sp)
     a94:	00009025 	move	s2,zero
     a98:	0c000000 	jal	0 <Sram_InitNewSave>
     a9c:	95450006 	lhu	a1,6(t2)
     aa0:	02802025 	move	a0,s4
     aa4:	0c000000 	jal	0 <Sram_InitNewSave>
     aa8:	24050004 	li	a1,4
     aac:	3c040000 	lui	a0,0x0
     ab0:	24840004 	addiu	a0,a0,4
     ab4:	0c000000 	jal	0 <Sram_InitNewSave>
     ab8:	24050004 	li	a1,4
     abc:	3c040000 	lui	a0,0x0
     ac0:	24840008 	addiu	a0,a0,8
     ac4:	0c000000 	jal	0 <Sram_InitNewSave>
     ac8:	24050004 	li	a1,4
     acc:	3c040000 	lui	a0,0x0
     ad0:	2484000c 	addiu	a0,a0,12
     ad4:	0c000000 	jal	0 <Sram_InitNewSave>
     ad8:	24050004 	li	a1,4
     adc:	3c040000 	lui	a0,0x0
     ae0:	24840010 	addiu	a0,a0,16
     ae4:	0c000000 	jal	0 <Sram_InitNewSave>
     ae8:	24050004 	li	a1,4
     aec:	3c040000 	lui	a0,0x0
     af0:	24840014 	addiu	a0,a0,20
     af4:	0c000000 	jal	0 <Sram_InitNewSave>
     af8:	24050004 	li	a1,4
     afc:	3c040000 	lui	a0,0x0
     b00:	24840018 	addiu	a0,a0,24
     b04:	0c000000 	jal	0 <Sram_InitNewSave>
     b08:	24050004 	li	a1,4
     b0c:	97ab0072 	lhu	t3,114(sp)
     b10:	1560001c 	bnez	t3,b84 <Sram_VerifyAndLoadAllSaves+0x304>
     b14:	00000000 	nop
     b18:	0c000000 	jal	0 <Sram_InitNewSave>
     b1c:	00000000 	nop
     b20:	2402005a 	li	v0,90
     b24:	240e0044 	li	t6,68
     b28:	240f0041 	li	t7,65
     b2c:	240c0045 	li	t4,69
     b30:	240d004c 	li	t5,76
     b34:	31f900ff 	andi	t9,t7,0xff
     b38:	31d800ff 	andi	t8,t6,0xff
     b3c:	304800ff 	andi	t0,v0,0xff
     b40:	3c040000 	lui	a0,0x0
     b44:	a282001c 	sb	v0,28(s4)
     b48:	a28c001d 	sb	t4,29(s4)
     b4c:	a28d001e 	sb	t5,30(s4)
     b50:	a28e001f 	sb	t6,31(s4)
     b54:	a28f0020 	sb	t7,32(s4)
     b58:	a2820021 	sb	v0,33(s4)
     b5c:	24840000 	addiu	a0,a0,0
     b60:	afa80018 	sw	t0,24(sp)
     b64:	afb80010 	sw	t8,16(sp)
     b68:	afb90014 	sw	t9,20(sp)
     b6c:	31a700ff 	andi	a3,t5,0xff
     b70:	318600ff 	andi	a2,t4,0xff
     b74:	0c000000 	jal	0 <Sram_InitNewSave>
     b78:	304500ff 	andi	a1,v0,0xff
     b7c:	10000003 	b	b8c <Sram_VerifyAndLoadAllSaves+0x30c>
     b80:	00000000 	nop
     b84:	0c000000 	jal	0 <Sram_InitNewSave>
     b88:	00000000 	nop
     b8c:	3c040000 	lui	a0,0x0
     b90:	02808025 	move	s0,s4
     b94:	0c000000 	jal	0 <Sram_InitNewSave>
     b98:	24840000 	addiu	a0,a0,0
     b9c:	00009825 	move	s3,zero
     ba0:	00008825 	move	s1,zero
     ba4:	02c02025 	move	a0,s6
     ba8:	0c000000 	jal	0 <Sram_InitNewSave>
     bac:	96050000 	lhu	a1,0(s0)
     bb0:	26520001 	addiu	s2,s2,1
     bb4:	3252ffff 	andi	s2,s2,0xffff
     bb8:	56f20005 	bnel	s7,s2,bd0 <Sram_VerifyAndLoadAllSaves+0x350>
     bbc:	96090000 	lhu	t1,0(s0)
     bc0:	0c000000 	jal	0 <Sram_InitNewSave>
     bc4:	03c02025 	move	a0,s8
     bc8:	00009025 	move	s2,zero
     bcc:	96090000 	lhu	t1,0(s0)
     bd0:	26310001 	addiu	s1,s1,1
     bd4:	3231ffff 	andi	s1,s1,0xffff
     bd8:	2e2109aa 	sltiu	at,s1,2474
     bdc:	02699821 	addu	s3,s3,t1
     be0:	3273ffff 	andi	s3,s3,0xffff
     be4:	1420ffef 	bnez	at,ba4 <Sram_VerifyAndLoadAllSaves+0x324>
     be8:	26100002 	addiu	s0,s0,2
     bec:	3c040000 	lui	a0,0x0
     bf0:	a6931352 	sh	s3,4946(s4)
     bf4:	24840000 	addiu	a0,a0,0
     bf8:	3265ffff 	andi	a1,s3,0xffff
     bfc:	02609025 	move	s2,s3
     c00:	0c000000 	jal	0 <Sram_InitNewSave>
     c04:	02603025 	move	a2,s3
     c08:	8faa0050 	lw	t2,80(sp)
     c0c:	3c010800 	lui	at,0x800
     c10:	02802825 	move	a1,s4
     c14:	95500006 	lhu	s0,6(t2)
     c18:	24061450 	li	a2,5200
     c1c:	24070001 	li	a3,1
     c20:	0c000000 	jal	0 <Sram_InitNewSave>
     c24:	02012021 	addu	a0,s0,at
     c28:	928b001f 	lbu	t3,31(s4)
     c2c:	928c0020 	lbu	t4,32(s4)
     c30:	928d0021 	lbu	t5,33(s4)
     c34:	3c040000 	lui	a0,0x0
     c38:	24840000 	addiu	a0,a0,0
     c3c:	9285001c 	lbu	a1,28(s4)
     c40:	9286001d 	lbu	a2,29(s4)
     c44:	9287001e 	lbu	a3,30(s4)
     c48:	afab0010 	sw	t3,16(sp)
     c4c:	afac0014 	sw	t4,20(sp)
     c50:	0c000000 	jal	0 <Sram_InitNewSave>
     c54:	afad0018 	sw	t5,24(sp)
     c58:	3c040000 	lui	a0,0x0
     c5c:	24840000 	addiu	a0,a0,0
     c60:	02002825 	move	a1,s0
     c64:	8fa6005c 	lw	a2,92(sp)
     c68:	96871352 	lhu	a3,4946(s4)
     c6c:	0c000000 	jal	0 <Sram_InitNewSave>
     c70:	afb20010 	sw	s2,16(sp)
     c74:	8fae0060 	lw	t6,96(sp)
     c78:	3c010800 	lui	at,0x800
     c7c:	02802825 	move	a1,s4
     c80:	95d00000 	lhu	s0,0(t6)
     c84:	24061450 	li	a2,5200
     c88:	24070001 	li	a3,1
     c8c:	0c000000 	jal	0 <Sram_InitNewSave>
     c90:	02012021 	addu	a0,s0,at
     c94:	3c040000 	lui	a0,0x0
     c98:	24840000 	addiu	a0,a0,0
     c9c:	02002825 	move	a1,s0
     ca0:	8fa6005c 	lw	a2,92(sp)
     ca4:	96871352 	lhu	a3,4946(s4)
     ca8:	0c000000 	jal	0 <Sram_InitNewSave>
     cac:	afb20010 	sw	s2,16(sp)
     cb0:	10000004 	b	cc4 <Sram_VerifyAndLoadAllSaves+0x444>
     cb4:	97af0072 	lhu	t7,114(sp)
     cb8:	0c000000 	jal	0 <Sram_InitNewSave>
     cbc:	24840000 	addiu	a0,a0,0
     cc0:	97af0072 	lhu	t7,114(sp)
     cc4:	25f80001 	addiu	t8,t7,1
     cc8:	3302ffff 	andi	v0,t8,0xffff
     ccc:	28410003 	slti	at,v0,3
     cd0:	afa2005c 	sw	v0,92(sp)
     cd4:	1420ff0f 	bnez	at,914 <Sram_VerifyAndLoadAllSaves+0x94>
     cd8:	a7b80072 	sh	t8,114(sp)
     cdc:	8fb9007c 	lw	t9,124(sp)
     ce0:	34058000 	li	a1,0x8000
     ce4:	0c000000 	jal	0 <Sram_InitNewSave>
     ce8:	8f240000 	lw	a0,0(t9)
     cec:	8fa8007c 	lw	t0,124(sp)
     cf0:	3c040800 	lui	a0,0x800
     cf4:	34068000 	li	a2,0x8000
     cf8:	00003825 	move	a3,zero
     cfc:	0c000000 	jal	0 <Sram_InitNewSave>
     d00:	8d050000 	lw	a1,0(t0)
     d04:	97a90066 	lhu	t1,102(sp)
     d08:	3c040000 	lui	a0,0x0
     d0c:	240a00a4 	li	t2,164
     d10:	240b002c 	li	t3,44
     d14:	240c00cf 	li	t4,207
     d18:	afac0018 	sw	t4,24(sp)
     d1c:	afab0014 	sw	t3,20(sp)
     d20:	afaa0010 	sw	t2,16(sp)
     d24:	24840000 	addiu	a0,a0,0
     d28:	24050022 	li	a1,34
     d2c:	24060024 	li	a2,36
     d30:	2407002e 	li	a3,46
     d34:	0c000000 	jal	0 <Sram_InitNewSave>
     d38:	a689000c 	sh	t1,12(s4)
     d3c:	8fad007c 	lw	t5,124(sp)
     d40:	8fa40078 	lw	a0,120(sp)
     d44:	3c010001 	lui	at,0x1
     d48:	8da50000 	lw	a1,0(t5)
     d4c:	3421c9f6 	ori	at,at,0xc9f6
     d50:	24060002 	li	a2,2
     d54:	00812021 	addu	a0,a0,at
     d58:	0c000000 	jal	0 <Sram_InitNewSave>
     d5c:	24a50042 	addiu	a1,a1,66
     d60:	8fae007c 	lw	t6,124(sp)
     d64:	8fa40078 	lw	a0,120(sp)
     d68:	3c010001 	lui	at,0x1
     d6c:	8dc50000 	lw	a1,0(t6)
     d70:	3421c9f8 	ori	at,at,0xc9f8
     d74:	24060002 	li	a2,2
     d78:	00812021 	addu	a0,a0,at
     d7c:	0c000000 	jal	0 <Sram_InitNewSave>
     d80:	24a51492 	addiu	a1,a1,5266
     d84:	8faf007c 	lw	t7,124(sp)
     d88:	8fa40078 	lw	a0,120(sp)
     d8c:	3c010001 	lui	at,0x1
     d90:	8de50000 	lw	a1,0(t7)
     d94:	3421c9fa 	ori	at,at,0xc9fa
     d98:	24060002 	li	a2,2
     d9c:	00812021 	addu	a0,a0,at
     da0:	0c000000 	jal	0 <Sram_InitNewSave>
     da4:	24a528e2 	addiu	a1,a1,10466
     da8:	8fb8007c 	lw	t8,124(sp)
     dac:	8fa40078 	lw	a0,120(sp)
     db0:	3c010001 	lui	at,0x1
     db4:	8f050000 	lw	a1,0(t8)
     db8:	3421c9fc 	ori	at,at,0xc9fc
     dbc:	24060008 	li	a2,8
     dc0:	00812021 	addu	a0,a0,at
     dc4:	0c000000 	jal	0 <Sram_InitNewSave>
     dc8:	24a50044 	addiu	a1,a1,68
     dcc:	8fb9007c 	lw	t9,124(sp)
     dd0:	8fa40078 	lw	a0,120(sp)
     dd4:	3c010001 	lui	at,0x1
     dd8:	8f250000 	lw	a1,0(t9)
     ddc:	3421ca04 	ori	at,at,0xca04
     de0:	24060008 	li	a2,8
     de4:	00812021 	addu	a0,a0,at
     de8:	0c000000 	jal	0 <Sram_InitNewSave>
     dec:	24a51494 	addiu	a1,a1,5268
     df0:	8fa8007c 	lw	t0,124(sp)
     df4:	8fa40078 	lw	a0,120(sp)
     df8:	3c010001 	lui	at,0x1
     dfc:	8d050000 	lw	a1,0(t0)
     e00:	3421ca0c 	ori	at,at,0xca0c
     e04:	24060008 	li	a2,8
     e08:	00812021 	addu	a0,a0,at
     e0c:	0c000000 	jal	0 <Sram_InitNewSave>
     e10:	24a528e4 	addiu	a1,a1,10468
     e14:	8fa9007c 	lw	t1,124(sp)
     e18:	8fa40078 	lw	a0,120(sp)
     e1c:	3c010001 	lui	at,0x1
     e20:	8d250000 	lw	a1,0(t1)
     e24:	3421ca14 	ori	at,at,0xca14
     e28:	24060002 	li	a2,2
     e2c:	00812021 	addu	a0,a0,at
     e30:	0c000000 	jal	0 <Sram_InitNewSave>
     e34:	24a5004e 	addiu	a1,a1,78
     e38:	8faa007c 	lw	t2,124(sp)
     e3c:	8fa40078 	lw	a0,120(sp)
     e40:	3c010001 	lui	at,0x1
     e44:	8d450000 	lw	a1,0(t2)
     e48:	3421ca16 	ori	at,at,0xca16
     e4c:	24060002 	li	a2,2
     e50:	00812021 	addu	a0,a0,at
     e54:	0c000000 	jal	0 <Sram_InitNewSave>
     e58:	24a5149e 	addiu	a1,a1,5278
     e5c:	8fab007c 	lw	t3,124(sp)
     e60:	8fa40078 	lw	a0,120(sp)
     e64:	3c010001 	lui	at,0x1
     e68:	8d650000 	lw	a1,0(t3)
     e6c:	3421ca18 	ori	at,at,0xca18
     e70:	24060002 	li	a2,2
     e74:	00812021 	addu	a0,a0,at
     e78:	0c000000 	jal	0 <Sram_InitNewSave>
     e7c:	24a528ee 	addiu	a1,a1,10478
     e80:	8fac007c 	lw	t4,124(sp)
     e84:	8fa40078 	lw	a0,120(sp)
     e88:	3c010001 	lui	at,0x1
     e8c:	8d850000 	lw	a1,0(t4)
     e90:	3421ca1c 	ori	at,at,0xca1c
     e94:	24060004 	li	a2,4
     e98:	00812021 	addu	a0,a0,at
     e9c:	0c000000 	jal	0 <Sram_InitNewSave>
     ea0:	24a500c4 	addiu	a1,a1,196
     ea4:	8fad007c 	lw	t5,124(sp)
     ea8:	8fa40078 	lw	a0,120(sp)
     eac:	3c010001 	lui	at,0x1
     eb0:	8da50000 	lw	a1,0(t5)
     eb4:	3421ca20 	ori	at,at,0xca20
     eb8:	24060004 	li	a2,4
     ebc:	00812021 	addu	a0,a0,at
     ec0:	0c000000 	jal	0 <Sram_InitNewSave>
     ec4:	24a51514 	addiu	a1,a1,5396
     ec8:	8fae007c 	lw	t6,124(sp)
     ecc:	8fa40078 	lw	a0,120(sp)
     ed0:	3c010001 	lui	at,0x1
     ed4:	8dc50000 	lw	a1,0(t6)
     ed8:	3421ca24 	ori	at,at,0xca24
     edc:	24060004 	li	a2,4
     ee0:	00812021 	addu	a0,a0,at
     ee4:	0c000000 	jal	0 <Sram_InitNewSave>
     ee8:	24a52964 	addiu	a1,a1,10596
     eec:	8faf007c 	lw	t7,124(sp)
     ef0:	8fa40078 	lw	a0,120(sp)
     ef4:	3c010001 	lui	at,0x1
     ef8:	8de50000 	lw	a1,0(t7)
     efc:	3421ca28 	ori	at,at,0xca28
     f00:	24060002 	li	a2,2
     f04:	00812021 	addu	a0,a0,at
     f08:	0c000000 	jal	0 <Sram_InitNewSave>
     f0c:	24a5004c 	addiu	a1,a1,76
     f10:	8fb8007c 	lw	t8,124(sp)
     f14:	8fa40078 	lw	a0,120(sp)
     f18:	3c010001 	lui	at,0x1
     f1c:	8f050000 	lw	a1,0(t8)
     f20:	3421ca2a 	ori	at,at,0xca2a
     f24:	24060002 	li	a2,2
     f28:	00812021 	addu	a0,a0,at
     f2c:	0c000000 	jal	0 <Sram_InitNewSave>
     f30:	24a5149c 	addiu	a1,a1,5276
     f34:	8fb9007c 	lw	t9,124(sp)
     f38:	8fa40078 	lw	a0,120(sp)
     f3c:	3c010001 	lui	at,0x1
     f40:	8f250000 	lw	a1,0(t9)
     f44:	3421ca2c 	ori	at,at,0xca2c
     f48:	24060002 	li	a2,2
     f4c:	00812021 	addu	a0,a0,at
     f50:	0c000000 	jal	0 <Sram_InitNewSave>
     f54:	24a528ec 	addiu	a1,a1,10476
     f58:	8fa8007c 	lw	t0,124(sp)
     f5c:	8fa40078 	lw	a0,120(sp)
     f60:	3c010001 	lui	at,0x1
     f64:	8d050000 	lw	a1,0(t0)
     f68:	3421ca2e 	ori	at,at,0xca2e
     f6c:	24060001 	li	a2,1
     f70:	00812021 	addu	a0,a0,at
     f74:	0c000000 	jal	0 <Sram_InitNewSave>
     f78:	24a500ef 	addiu	a1,a1,239
     f7c:	8fa9007c 	lw	t1,124(sp)
     f80:	8fa40078 	lw	a0,120(sp)
     f84:	3c010001 	lui	at,0x1
     f88:	8d250000 	lw	a1,0(t1)
     f8c:	3421ca2f 	ori	at,at,0xca2f
     f90:	24060001 	li	a2,1
     f94:	00812021 	addu	a0,a0,at
     f98:	0c000000 	jal	0 <Sram_InitNewSave>
     f9c:	24a5153f 	addiu	a1,a1,5439
     fa0:	8faa007c 	lw	t2,124(sp)
     fa4:	8fa40078 	lw	a0,120(sp)
     fa8:	3c010001 	lui	at,0x1
     fac:	8d450000 	lw	a1,0(t2)
     fb0:	3421ca30 	ori	at,at,0xca30
     fb4:	24060001 	li	a2,1
     fb8:	00812021 	addu	a0,a0,at
     fbc:	0c000000 	jal	0 <Sram_InitNewSave>
     fc0:	24a5298f 	addiu	a1,a1,10639
     fc4:	8fab007c 	lw	t3,124(sp)
     fc8:	8fa40078 	lw	a0,120(sp)
     fcc:	3c010001 	lui	at,0x1
     fd0:	8d650000 	lw	a1,0(t3)
     fd4:	3421ca32 	ori	at,at,0xca32
     fd8:	24060002 	li	a2,2
     fdc:	00812021 	addu	a0,a0,at
     fe0:	0c000000 	jal	0 <Sram_InitNewSave>
     fe4:	24a50050 	addiu	a1,a1,80
     fe8:	8fac007c 	lw	t4,124(sp)
     fec:	8fa40078 	lw	a0,120(sp)
     ff0:	3c010001 	lui	at,0x1
     ff4:	8d850000 	lw	a1,0(t4)
     ff8:	3421ca34 	ori	at,at,0xca34
     ffc:	24060002 	li	a2,2
    1000:	00812021 	addu	a0,a0,at
    1004:	0c000000 	jal	0 <Sram_InitNewSave>
    1008:	24a514a0 	addiu	a1,a1,5280
    100c:	8fad007c 	lw	t5,124(sp)
    1010:	8fa40078 	lw	a0,120(sp)
    1014:	3c010001 	lui	at,0x1
    1018:	8da50000 	lw	a1,0(t5)
    101c:	3421ca36 	ori	at,at,0xca36
    1020:	24060002 	li	a2,2
    1024:	00812021 	addu	a0,a0,at
    1028:	0c000000 	jal	0 <Sram_InitNewSave>
    102c:	24a528f0 	addiu	a1,a1,10480
    1030:	8fb00078 	lw	s0,120(sp)
    1034:	3c010001 	lui	at,0x1
    1038:	34218000 	ori	at,at,0x8000
    103c:	02018021 	addu	s0,s0,at
    1040:	3c040000 	lui	a0,0x0
    1044:	24840000 	addiu	a0,a0,0
    1048:	86054a28 	lh	a1,18984(s0)
    104c:	86064a2a 	lh	a2,18986(s0)
    1050:	0c000000 	jal	0 <Sram_InitNewSave>
    1054:	86074a2c 	lh	a3,18988(s0)
    1058:	3c040000 	lui	a0,0x0
    105c:	24840000 	addiu	a0,a0,0
    1060:	82054a2e 	lb	a1,18990(s0)
    1064:	82064a2f 	lb	a2,18991(s0)
    1068:	0c000000 	jal	0 <Sram_InitNewSave>
    106c:	82074a30 	lb	a3,18992(s0)
    1070:	3c040000 	lui	a0,0x0
    1074:	24840000 	addiu	a0,a0,0
    1078:	96054a32 	lhu	a1,18994(s0)
    107c:	96064a34 	lhu	a2,18996(s0)
    1080:	0c000000 	jal	0 <Sram_InitNewSave>
    1084:	96074a36 	lhu	a3,18998(s0)
    1088:	8fbf004c 	lw	ra,76(sp)
    108c:	8fb00028 	lw	s0,40(sp)
    1090:	8fb1002c 	lw	s1,44(sp)
    1094:	8fb20030 	lw	s2,48(sp)
    1098:	8fb30034 	lw	s3,52(sp)
    109c:	8fb40038 	lw	s4,56(sp)
    10a0:	8fb5003c 	lw	s5,60(sp)
    10a4:	8fb60040 	lw	s6,64(sp)
    10a8:	8fb70044 	lw	s7,68(sp)
    10ac:	8fbe0048 	lw	s8,72(sp)
    10b0:	03e00008 	jr	ra
    10b4:	27bd0078 	addiu	sp,sp,120

000010b8 <Sram_InitSave>:
    10b8:	27bdffb8 	addiu	sp,sp,-72
    10bc:	afb60040 	sw	s6,64(sp)
    10c0:	3c160001 	lui	s6,0x1
    10c4:	36d68000 	ori	s6,s6,0x8000
    10c8:	afb1002c 	sw	s1,44(sp)
    10cc:	afbf0044 	sw	ra,68(sp)
    10d0:	afb5003c 	sw	s5,60(sp)
    10d4:	afb40038 	sw	s4,56(sp)
    10d8:	afb30034 	sw	s3,52(sp)
    10dc:	afb20030 	sw	s2,48(sp)
    10e0:	afb00028 	sw	s0,40(sp)
    10e4:	afa5004c 	sw	a1,76(sp)
    10e8:	00968821 	addu	s1,a0,s6
    10ec:	862e4a38 	lh	t6,19000(s1)
    10f0:	0080a825 	move	s5,a0
    10f4:	11c00005 	beqz	t6,110c <Sram_InitSave+0x54>
    10f8:	00000000 	nop
    10fc:	0c000000 	jal	0 <Sram_InitNewSave>
    1100:	00000000 	nop
    1104:	10000003 	b	1114 <Sram_InitSave+0x5c>
    1108:	00000000 	nop
    110c:	0c000000 	jal	0 <Sram_InitNewSave>
    1110:	00000000 	nop
    1114:	3c140000 	lui	s4,0x0
    1118:	26940000 	addiu	s4,s4,0
    111c:	240f00bb 	li	t7,187
    1120:	24180001 	li	t8,1
    1124:	24196aab 	li	t9,27307
    1128:	3408fff1 	li	t0,0xfff1
    112c:	ae8f0000 	sw	t7,0(s4)
    1130:	ae980004 	sw	t8,4(s4)
    1134:	a699000c 	sh	t9,12(s4)
    1138:	ae880008 	sw	t0,8(s4)
    113c:	86294a38 	lh	t1,19000(s1)
    1140:	00008025 	move	s0,zero
    1144:	2402005a 	li	v0,90
    1148:	15200002 	bnez	t1,1154 <Sram_InitSave+0x9c>
    114c:	24190045 	li	t9,69
    1150:	ae800008 	sw	zero,8(s4)
    1154:	862a4a38 	lh	t2,19000(s1)
    1158:	0290c021 	addu	t8,s4,s0
    115c:	000a58c0 	sll	t3,t2,0x3
    1160:	02ab6021 	addu	t4,s5,t3
    1164:	01906821 	addu	t5,t4,s0
    1168:	26100001 	addiu	s0,s0,1
    116c:	01b67021 	addu	t6,t5,s6
    1170:	91cf49fc 	lbu	t7,18940(t6)
    1174:	3210ffff 	andi	s0,s0,0xffff
    1178:	2a010008 	slti	at,s0,8
    117c:	1420fff5 	bnez	at,1154 <Sram_InitSave+0x9c>
    1180:	a30f0024 	sb	t7,36(t8)
    1184:	2408004c 	li	t0,76
    1188:	24090044 	li	t1,68
    118c:	240a0041 	li	t2,65
    1190:	a282001c 	sb	v0,28(s4)
    1194:	a299001d 	sb	t9,29(s4)
    1198:	a288001e 	sb	t0,30(s4)
    119c:	a289001f 	sb	t1,31(s4)
    11a0:	a28a0020 	sb	t2,32(s4)
    11a4:	a2820021 	sb	v0,33(s4)
    11a8:	922b49f4 	lbu	t3,18932(s1)
    11ac:	3c040000 	lui	a0,0x0
    11b0:	2484048c 	addiu	a0,a0,1164
    11b4:	a68b002c 	sh	t3,44(s4)
    11b8:	0c000000 	jal	0 <Sram_InitNewSave>
    11bc:	922549f4 	lbu	a1,18932(s1)
    11c0:	928c001f 	lbu	t4,31(s4)
    11c4:	928d0020 	lbu	t5,32(s4)
    11c8:	928e0021 	lbu	t6,33(s4)
    11cc:	3c040000 	lui	a0,0x0
    11d0:	248404a0 	addiu	a0,a0,1184
    11d4:	9285001c 	lbu	a1,28(s4)
    11d8:	9286001d 	lbu	a2,29(s4)
    11dc:	9287001e 	lbu	a3,30(s4)
    11e0:	afac0010 	sw	t4,16(sp)
    11e4:	afad0014 	sw	t5,20(sp)
    11e8:	0c000000 	jal	0 <Sram_InitNewSave>
    11ec:	afae0018 	sw	t6,24(sp)
    11f0:	3c040000 	lui	a0,0x0
    11f4:	0c000000 	jal	0 <Sram_InitNewSave>
    11f8:	248404b8 	addiu	a0,a0,1208
    11fc:	02808825 	move	s1,s4
    1200:	00009025 	move	s2,zero
    1204:	00009825 	move	s3,zero
    1208:	00008025 	move	s0,zero
    120c:	3c040000 	lui	a0,0x0
    1210:	24840508 	addiu	a0,a0,1288
    1214:	0c000000 	jal	0 <Sram_InitNewSave>
    1218:	96250000 	lhu	a1,0(s1)
    121c:	962f0000 	lhu	t7,0(s1)
    1220:	26520001 	addiu	s2,s2,1
    1224:	3252ffff 	andi	s2,s2,0xffff
    1228:	24010020 	li	at,32
    122c:	026f9821 	addu	s3,s3,t7
    1230:	3273ffff 	andi	s3,s3,0xffff
    1234:	16410005 	bne	s2,at,124c <Sram_InitSave+0x194>
    1238:	26310002 	addiu	s1,s1,2
    123c:	3c040000 	lui	a0,0x0
    1240:	0c000000 	jal	0 <Sram_InitNewSave>
    1244:	2484050c 	addiu	a0,a0,1292
    1248:	00009025 	move	s2,zero
    124c:	26100001 	addiu	s0,s0,1
    1250:	3210ffff 	andi	s0,s0,0xffff
    1254:	2e0109aa 	sltiu	at,s0,2474
    1258:	1420ffec 	bnez	at,120c <Sram_InitSave+0x154>
    125c:	00000000 	nop
    1260:	3c040000 	lui	a0,0x0
    1264:	a6931352 	sh	s3,4946(s4)
    1268:	24840510 	addiu	a0,a0,1296
    126c:	0c000000 	jal	0 <Sram_InitNewSave>
    1270:	3265ffff 	andi	a1,s3,0xffff
    1274:	8e861354 	lw	a2,4948(s4)
    1278:	3c130000 	lui	s3,0x0
    127c:	26730000 	addiu	s3,s3,0
    1280:	0006c040 	sll	t8,a2,0x1
    1284:	0278c821 	addu	t9,s3,t8
    1288:	97300000 	lhu	s0,0(t9)
    128c:	3c040000 	lui	a0,0x0
    1290:	24840524 	addiu	a0,a0,1316
    1294:	0c000000 	jal	0 <Sram_InitNewSave>
    1298:	02002825 	move	a1,s0
    129c:	8fa8004c 	lw	t0,76(sp)
    12a0:	02802825 	move	a1,s4
    12a4:	24061354 	li	a2,4948
    12a8:	8d090000 	lw	t1,0(t0)
    12ac:	0c000000 	jal	0 <Sram_InitNewSave>
    12b0:	01302021 	addu	a0,t1,s0
    12b4:	8e911354 	lw	s1,4948(s4)
    12b8:	3c040000 	lui	a0,0x0
    12bc:	24840530 	addiu	a0,a0,1328
    12c0:	00115040 	sll	t2,s1,0x1
    12c4:	026a5821 	addu	t3,s3,t2
    12c8:	95700006 	lhu	s0,6(t3)
    12cc:	26260003 	addiu	a2,s1,3
    12d0:	0c000000 	jal	0 <Sram_InitNewSave>
    12d4:	02002825 	move	a1,s0
    12d8:	8fac004c 	lw	t4,76(sp)
    12dc:	02802825 	move	a1,s4
    12e0:	24061354 	li	a2,4948
    12e4:	8d8d0000 	lw	t5,0(t4)
    12e8:	0c000000 	jal	0 <Sram_InitNewSave>
    12ec:	01b02021 	addu	a0,t5,s0
    12f0:	8fae004c 	lw	t6,76(sp)
    12f4:	3c040800 	lui	a0,0x800
    12f8:	34068000 	li	a2,0x8000
    12fc:	24070001 	li	a3,1
    1300:	0c000000 	jal	0 <Sram_InitNewSave>
    1304:	8dc50000 	lw	a1,0(t6)
    1308:	3c040000 	lui	a0,0x0
    130c:	0c000000 	jal	0 <Sram_InitNewSave>
    1310:	2484053c 	addiu	a0,a0,1340
    1314:	3c040000 	lui	a0,0x0
    1318:	2484054c 	addiu	a0,a0,1356
    131c:	0c000000 	jal	0 <Sram_InitNewSave>
    1320:	8e851354 	lw	a1,4948(s4)
    1324:	3c040000 	lui	a0,0x0
    1328:	240f00a4 	li	t7,164
    132c:	2418002c 	li	t8,44
    1330:	afb80014 	sw	t8,20(sp)
    1334:	afaf0010 	sw	t7,16(sp)
    1338:	24840568 	addiu	a0,a0,1384
    133c:	24050022 	li	a1,34
    1340:	24060024 	li	a2,36
    1344:	0c000000 	jal	0 <Sram_InitNewSave>
    1348:	2407002e 	li	a3,46
    134c:	8e821354 	lw	v0,4948(s4)
    1350:	8fa8004c 	lw	t0,76(sp)
    1354:	3c010001 	lui	at,0x1
    1358:	00021040 	sll	v0,v0,0x1
    135c:	0262c821 	addu	t9,s3,v0
    1360:	97320000 	lhu	s2,0(t9)
    1364:	8d090000 	lw	t1,0(t0)
    1368:	02a22021 	addu	a0,s5,v0
    136c:	3421c9f6 	ori	at,at,0xc9f6
    1370:	01322821 	addu	a1,t1,s2
    1374:	24a50022 	addiu	a1,a1,34
    1378:	00812021 	addu	a0,a0,at
    137c:	0c000000 	jal	0 <Sram_InitNewSave>
    1380:	24060002 	li	a2,2
    1384:	8fac004c 	lw	t4,76(sp)
    1388:	8e8a1354 	lw	t2,4948(s4)
    138c:	3c010001 	lui	at,0x1
    1390:	8d8d0000 	lw	t5,0(t4)
    1394:	000a58c0 	sll	t3,t2,0x3
    1398:	02ab2021 	addu	a0,s5,t3
    139c:	3421c9fc 	ori	at,at,0xc9fc
    13a0:	01b22821 	addu	a1,t5,s2
    13a4:	24a50024 	addiu	a1,a1,36
    13a8:	00812021 	addu	a0,a0,at
    13ac:	0c000000 	jal	0 <Sram_InitNewSave>
    13b0:	24060008 	li	a2,8
    13b4:	8fb8004c 	lw	t8,76(sp)
    13b8:	8e8e1354 	lw	t6,4948(s4)
    13bc:	3c010001 	lui	at,0x1
    13c0:	8f190000 	lw	t9,0(t8)
    13c4:	000e7840 	sll	t7,t6,0x1
    13c8:	02af2021 	addu	a0,s5,t7
    13cc:	3421ca14 	ori	at,at,0xca14
    13d0:	03322821 	addu	a1,t9,s2
    13d4:	24a5002e 	addiu	a1,a1,46
    13d8:	00812021 	addu	a0,a0,at
    13dc:	0c000000 	jal	0 <Sram_InitNewSave>
    13e0:	24060002 	li	a2,2
    13e4:	8faa004c 	lw	t2,76(sp)
    13e8:	8e881354 	lw	t0,4948(s4)
    13ec:	3c010001 	lui	at,0x1
    13f0:	8d4b0000 	lw	t3,0(t2)
    13f4:	00084880 	sll	t1,t0,0x2
    13f8:	02a92021 	addu	a0,s5,t1
    13fc:	3421ca1c 	ori	at,at,0xca1c
    1400:	01722821 	addu	a1,t3,s2
    1404:	24a500a4 	addiu	a1,a1,164
    1408:	00812021 	addu	a0,a0,at
    140c:	0c000000 	jal	0 <Sram_InitNewSave>
    1410:	24060004 	li	a2,4
    1414:	8fae004c 	lw	t6,76(sp)
    1418:	8e8c1354 	lw	t4,4948(s4)
    141c:	3c010001 	lui	at,0x1
    1420:	8dcf0000 	lw	t7,0(t6)
    1424:	000c6840 	sll	t5,t4,0x1
    1428:	02ad2021 	addu	a0,s5,t5
    142c:	3421ca28 	ori	at,at,0xca28
    1430:	01f22821 	addu	a1,t7,s2
    1434:	24a5002c 	addiu	a1,a1,44
    1438:	00812021 	addu	a0,a0,at
    143c:	0c000000 	jal	0 <Sram_InitNewSave>
    1440:	24060002 	li	a2,2
    1444:	8fb9004c 	lw	t9,76(sp)
    1448:	8e981354 	lw	t8,4948(s4)
    144c:	3c010001 	lui	at,0x1
    1450:	8f280000 	lw	t0,0(t9)
    1454:	3421ca2e 	ori	at,at,0xca2e
    1458:	02b82021 	addu	a0,s5,t8
    145c:	01122821 	addu	a1,t0,s2
    1460:	24a500cf 	addiu	a1,a1,207
    1464:	00812021 	addu	a0,a0,at
    1468:	0c000000 	jal	0 <Sram_InitNewSave>
    146c:	24060001 	li	a2,1
    1470:	8fab004c 	lw	t3,76(sp)
    1474:	8e891354 	lw	t1,4948(s4)
    1478:	3c010001 	lui	at,0x1
    147c:	8d6c0000 	lw	t4,0(t3)
    1480:	00095040 	sll	t2,t1,0x1
    1484:	02aa2021 	addu	a0,s5,t2
    1488:	3421ca32 	ori	at,at,0xca32
    148c:	01922821 	addu	a1,t4,s2
    1490:	24a50030 	addiu	a1,a1,48
    1494:	00812021 	addu	a0,a0,at
    1498:	0c000000 	jal	0 <Sram_InitNewSave>
    149c:	24060002 	li	a2,2
    14a0:	8e911354 	lw	s1,4948(s4)
    14a4:	3c040000 	lui	a0,0x0
    14a8:	248405a0 	addiu	a0,a0,1440
    14ac:	00116840 	sll	t5,s1,0x1
    14b0:	02ad7021 	addu	t6,s5,t5
    14b4:	01d67821 	addu	t7,t6,s6
    14b8:	85e64a28 	lh	a2,18984(t7)
    14bc:	0c000000 	jal	0 <Sram_InitNewSave>
    14c0:	02202825 	move	a1,s1
    14c4:	8e911354 	lw	s1,4948(s4)
    14c8:	3c040000 	lui	a0,0x0
    14cc:	248405b0 	addiu	a0,a0,1456
    14d0:	02b1c021 	addu	t8,s5,s1
    14d4:	0316c821 	addu	t9,t8,s6
    14d8:	83264a2e 	lb	a2,18990(t9)
    14dc:	0c000000 	jal	0 <Sram_InitNewSave>
    14e0:	02202825 	move	a1,s1
    14e4:	8e911354 	lw	s1,4948(s4)
    14e8:	3c040000 	lui	a0,0x0
    14ec:	248405c8 	addiu	a0,a0,1480
    14f0:	00114040 	sll	t0,s1,0x1
    14f4:	02a84821 	addu	t1,s5,t0
    14f8:	01365021 	addu	t2,t1,s6
    14fc:	95464a32 	lhu	a2,18994(t2)
    1500:	0c000000 	jal	0 <Sram_InitNewSave>
    1504:	02202825 	move	a1,s1
    1508:	8fbf0044 	lw	ra,68(sp)
    150c:	8fb00028 	lw	s0,40(sp)
    1510:	8fb1002c 	lw	s1,44(sp)
    1514:	8fb20030 	lw	s2,48(sp)
    1518:	8fb30034 	lw	s3,52(sp)
    151c:	8fb40038 	lw	s4,56(sp)
    1520:	8fb5003c 	lw	s5,60(sp)
    1524:	8fb60040 	lw	s6,64(sp)
    1528:	03e00008 	jr	ra
    152c:	27bd0048 	addiu	sp,sp,72

00001530 <Sram_EraseSave>:
    1530:	27bdffd8 	addiu	sp,sp,-40
    1534:	afbf001c 	sw	ra,28(sp)
    1538:	afb00018 	sw	s0,24(sp)
    153c:	afa40028 	sw	a0,40(sp)
    1540:	0c000000 	jal	0 <Sram_InitNewSave>
    1544:	afa5002c 	sw	a1,44(sp)
    1548:	8fa20028 	lw	v0,40(sp)
    154c:	3c010001 	lui	at,0x1
    1550:	34218000 	ori	at,at,0x8000
    1554:	00411021 	addu	v0,v0,at
    1558:	844e4a46 	lh	t6,19014(v0)
    155c:	8fb8002c 	lw	t8,44(sp)
    1560:	3c100000 	lui	s0,0x0
    1564:	000e7840 	sll	t7,t6,0x1
    1568:	020f8021 	addu	s0,s0,t7
    156c:	96100000 	lhu	s0,0(s0)
    1570:	8f190000 	lw	t9,0(t8)
    1574:	3c050000 	lui	a1,0x0
    1578:	24a50000 	addiu	a1,a1,0
    157c:	afa20020 	sw	v0,32(sp)
    1580:	24061354 	li	a2,4948
    1584:	0c000000 	jal	0 <Sram_InitNewSave>
    1588:	03302021 	addu	a0,t9,s0
    158c:	3c010800 	lui	at,0x800
    1590:	3c050000 	lui	a1,0x0
    1594:	24a50000 	addiu	a1,a1,0
    1598:	02012021 	addu	a0,s0,at
    159c:	24061450 	li	a2,5200
    15a0:	0c000000 	jal	0 <Sram_InitNewSave>
    15a4:	24070001 	li	a3,1
    15a8:	8fa90020 	lw	t1,32(sp)
    15ac:	8fac002c 	lw	t4,44(sp)
    15b0:	8fa80028 	lw	t0,40(sp)
    15b4:	852a4a46 	lh	t2,19014(t1)
    15b8:	8d8d0000 	lw	t5,0(t4)
    15bc:	3c010001 	lui	at,0x1
    15c0:	000a5840 	sll	t3,t2,0x1
    15c4:	3421ca28 	ori	at,at,0xca28
    15c8:	010b2021 	addu	a0,t0,t3
    15cc:	01b02821 	addu	a1,t5,s0
    15d0:	24a5002c 	addiu	a1,a1,44
    15d4:	00812021 	addu	a0,a0,at
    15d8:	0c000000 	jal	0 <Sram_InitNewSave>
    15dc:	24060002 	li	a2,2
    15e0:	8fae0020 	lw	t6,32(sp)
    15e4:	8fb9002c 	lw	t9,44(sp)
    15e8:	3c100000 	lui	s0,0x0
    15ec:	85cf4a46 	lh	t7,19014(t6)
    15f0:	8f290000 	lw	t1,0(t9)
    15f4:	3c050000 	lui	a1,0x0
    15f8:	000fc040 	sll	t8,t7,0x1
    15fc:	02188021 	addu	s0,s0,t8
    1600:	96100006 	lhu	s0,6(s0)
    1604:	24a50000 	addiu	a1,a1,0
    1608:	24061354 	li	a2,4948
    160c:	0c000000 	jal	0 <Sram_InitNewSave>
    1610:	01302021 	addu	a0,t1,s0
    1614:	3c010800 	lui	at,0x800
    1618:	3c050000 	lui	a1,0x0
    161c:	24a50000 	addiu	a1,a1,0
    1620:	02012021 	addu	a0,s0,at
    1624:	24061450 	li	a2,5200
    1628:	0c000000 	jal	0 <Sram_InitNewSave>
    162c:	24070001 	li	a3,1
    1630:	3c040000 	lui	a0,0x0
    1634:	0c000000 	jal	0 <Sram_InitNewSave>
    1638:	248405dc 	addiu	a0,a0,1500
    163c:	8fbf001c 	lw	ra,28(sp)
    1640:	8fb00018 	lw	s0,24(sp)
    1644:	27bd0028 	addiu	sp,sp,40
    1648:	03e00008 	jr	ra
    164c:	00000000 	nop

00001650 <Sram_CopySave>:
    1650:	27bdffc8 	addiu	sp,sp,-56
    1654:	afb3002c 	sw	s3,44(sp)
    1658:	3c010001 	lui	at,0x1
    165c:	00809825 	move	s3,a0
    1660:	afb20028 	sw	s2,40(sp)
    1664:	afb10024 	sw	s1,36(sp)
    1668:	34218000 	ori	at,at,0x8000
    166c:	afbf0034 	sw	ra,52(sp)
    1670:	afb40030 	sw	s4,48(sp)
    1674:	afb00020 	sw	s0,32(sp)
    1678:	02618821 	addu	s1,s3,at
    167c:	86274a5e 	lh	a3,19038(s1)
    1680:	00a09025 	move	s2,a1
    1684:	86254a46 	lh	a1,19014(s1)
    1688:	3c140000 	lui	s4,0x0
    168c:	26940000 	addiu	s4,s4,0
    1690:	0007c040 	sll	t8,a3,0x1
    1694:	0298c821 	addu	t9,s4,t8
    1698:	00057040 	sll	t6,a1,0x1
    169c:	97280000 	lhu	t0,0(t9)
    16a0:	028e7821 	addu	t7,s4,t6
    16a4:	95e60000 	lhu	a2,0(t7)
    16a8:	3c040000 	lui	a0,0x0
    16ac:	248405ec 	addiu	a0,a0,1516
    16b0:	0c000000 	jal	0 <Sram_InitNewSave>
    16b4:	afa80010 	sw	t0,16(sp)
    16b8:	86294a46 	lh	t1,19014(s1)
    16bc:	8e4c0000 	lw	t4,0(s2)
    16c0:	3c040000 	lui	a0,0x0
    16c4:	00095040 	sll	t2,t1,0x1
    16c8:	028a5821 	addu	t3,s4,t2
    16cc:	95700000 	lhu	s0,0(t3)
    16d0:	24840000 	addiu	a0,a0,0
    16d4:	24061354 	li	a2,4948
    16d8:	0c000000 	jal	0 <Sram_InitNewSave>
    16dc:	01902821 	addu	a1,t4,s0
    16e0:	862d4a5e 	lh	t5,19038(s1)
    16e4:	8e580000 	lw	t8,0(s2)
    16e8:	3c050000 	lui	a1,0x0
    16ec:	000d7040 	sll	t6,t5,0x1
    16f0:	028e7821 	addu	t7,s4,t6
    16f4:	95f00000 	lhu	s0,0(t7)
    16f8:	24a50000 	addiu	a1,a1,0
    16fc:	24061354 	li	a2,4948
    1700:	0c000000 	jal	0 <Sram_InitNewSave>
    1704:	03102021 	addu	a0,t8,s0
    1708:	86394a5e 	lh	t9,19038(s1)
    170c:	8e4a0000 	lw	t2,0(s2)
    1710:	3c050000 	lui	a1,0x0
    1714:	00194040 	sll	t0,t9,0x1
    1718:	02884821 	addu	t1,s4,t0
    171c:	95300006 	lhu	s0,6(t1)
    1720:	24a50000 	addiu	a1,a1,0
    1724:	24061354 	li	a2,4948
    1728:	0c000000 	jal	0 <Sram_InitNewSave>
    172c:	01502021 	addu	a0,t2,s0
    1730:	3c040800 	lui	a0,0x800
    1734:	8e450000 	lw	a1,0(s2)
    1738:	34068000 	li	a2,0x8000
    173c:	0c000000 	jal	0 <Sram_InitNewSave>
    1740:	24070001 	li	a3,1
    1744:	86224a5e 	lh	v0,19038(s1)
    1748:	8e4c0000 	lw	t4,0(s2)
    174c:	3c010001 	lui	at,0x1
    1750:	00021040 	sll	v0,v0,0x1
    1754:	02825821 	addu	t3,s4,v0
    1758:	95700000 	lhu	s0,0(t3)
    175c:	02622021 	addu	a0,s3,v0
    1760:	3421c9f6 	ori	at,at,0xc9f6
    1764:	01902821 	addu	a1,t4,s0
    1768:	24a50022 	addiu	a1,a1,34
    176c:	00812021 	addu	a0,a0,at
    1770:	0c000000 	jal	0 <Sram_InitNewSave>
    1774:	24060002 	li	a2,2
    1778:	862d4a5e 	lh	t5,19038(s1)
    177c:	8e4f0000 	lw	t7,0(s2)
    1780:	3c010001 	lui	at,0x1
    1784:	000d70c0 	sll	t6,t5,0x3
    1788:	026e2021 	addu	a0,s3,t6
    178c:	3421c9fc 	ori	at,at,0xc9fc
    1790:	01f02821 	addu	a1,t7,s0
    1794:	24a50024 	addiu	a1,a1,36
    1798:	00812021 	addu	a0,a0,at
    179c:	0c000000 	jal	0 <Sram_InitNewSave>
    17a0:	24060008 	li	a2,8
    17a4:	86384a5e 	lh	t8,19038(s1)
    17a8:	8e480000 	lw	t0,0(s2)
    17ac:	3c010001 	lui	at,0x1
    17b0:	0018c840 	sll	t9,t8,0x1
    17b4:	02792021 	addu	a0,s3,t9
    17b8:	3421ca14 	ori	at,at,0xca14
    17bc:	01102821 	addu	a1,t0,s0
    17c0:	24a5002e 	addiu	a1,a1,46
    17c4:	00812021 	addu	a0,a0,at
    17c8:	0c000000 	jal	0 <Sram_InitNewSave>
    17cc:	24060002 	li	a2,2
    17d0:	86294a5e 	lh	t1,19038(s1)
    17d4:	8e4b0000 	lw	t3,0(s2)
    17d8:	3c010001 	lui	at,0x1
    17dc:	00095080 	sll	t2,t1,0x2
    17e0:	026a2021 	addu	a0,s3,t2
    17e4:	3421ca1c 	ori	at,at,0xca1c
    17e8:	01702821 	addu	a1,t3,s0
    17ec:	24a500a4 	addiu	a1,a1,164
    17f0:	00812021 	addu	a0,a0,at
    17f4:	0c000000 	jal	0 <Sram_InitNewSave>
    17f8:	24060004 	li	a2,4
    17fc:	862c4a5e 	lh	t4,19038(s1)
    1800:	8e4e0000 	lw	t6,0(s2)
    1804:	3c010001 	lui	at,0x1
    1808:	000c6840 	sll	t5,t4,0x1
    180c:	026d2021 	addu	a0,s3,t5
    1810:	3421ca28 	ori	at,at,0xca28
    1814:	01d02821 	addu	a1,t6,s0
    1818:	24a5002c 	addiu	a1,a1,44
    181c:	00812021 	addu	a0,a0,at
    1820:	0c000000 	jal	0 <Sram_InitNewSave>
    1824:	24060002 	li	a2,2
    1828:	862f4a5e 	lh	t7,19038(s1)
    182c:	8e580000 	lw	t8,0(s2)
    1830:	3c010001 	lui	at,0x1
    1834:	3421ca2e 	ori	at,at,0xca2e
    1838:	026f2021 	addu	a0,s3,t7
    183c:	03102821 	addu	a1,t8,s0
    1840:	24a500cf 	addiu	a1,a1,207
    1844:	00812021 	addu	a0,a0,at
    1848:	0c000000 	jal	0 <Sram_InitNewSave>
    184c:	24060001 	li	a2,1
    1850:	86394a5e 	lh	t9,19038(s1)
    1854:	8e490000 	lw	t1,0(s2)
    1858:	3c010001 	lui	at,0x1
    185c:	00194040 	sll	t0,t9,0x1
    1860:	02682021 	addu	a0,s3,t0
    1864:	3421ca32 	ori	at,at,0xca32
    1868:	01302821 	addu	a1,t1,s0
    186c:	24a50030 	addiu	a1,a1,48
    1870:	00812021 	addu	a0,a0,at
    1874:	0c000000 	jal	0 <Sram_InitNewSave>
    1878:	24060002 	li	a2,2
    187c:	3c100000 	lui	s0,0x0
    1880:	8e101354 	lw	s0,4948(s0)
    1884:	3c060002 	lui	a2,0x2
    1888:	3c040000 	lui	a0,0x0
    188c:	00105040 	sll	t2,s0,0x1
    1890:	026a5821 	addu	t3,s3,t2
    1894:	00cb3021 	addu	a2,a2,t3
    1898:	84c6ca28 	lh	a2,-13784(a2)
    189c:	24840610 	addiu	a0,a0,1552
    18a0:	0c000000 	jal	0 <Sram_InitNewSave>
    18a4:	02002825 	move	a1,s0
    18a8:	3c100000 	lui	s0,0x0
    18ac:	8e101354 	lw	s0,4948(s0)
    18b0:	3c060002 	lui	a2,0x2
    18b4:	3c040000 	lui	a0,0x0
    18b8:	02706021 	addu	t4,s3,s0
    18bc:	00cc3021 	addu	a2,a2,t4
    18c0:	80c6ca2e 	lb	a2,-13778(a2)
    18c4:	24840620 	addiu	a0,a0,1568
    18c8:	0c000000 	jal	0 <Sram_InitNewSave>
    18cc:	02002825 	move	a1,s0
    18d0:	3c040000 	lui	a0,0x0
    18d4:	0c000000 	jal	0 <Sram_InitNewSave>
    18d8:	24840638 	addiu	a0,a0,1592
    18dc:	8fbf0034 	lw	ra,52(sp)
    18e0:	8fb00020 	lw	s0,32(sp)
    18e4:	8fb10024 	lw	s1,36(sp)
    18e8:	8fb20028 	lw	s2,40(sp)
    18ec:	8fb3002c 	lw	s3,44(sp)
    18f0:	8fb40030 	lw	s4,48(sp)
    18f4:	03e00008 	jr	ra
    18f8:	27bd0038 	addiu	sp,sp,56

000018fc <Sram_Write16Bytes>:
    18fc:	27bdffe8 	addiu	sp,sp,-24
    1900:	afa40018 	sw	a0,24(sp)
    1904:	8fae0018 	lw	t6,24(sp)
    1908:	afbf0014 	sw	ra,20(sp)
    190c:	3c040800 	lui	a0,0x800
    1910:	24060010 	li	a2,16
    1914:	24070001 	li	a3,1
    1918:	0c000000 	jal	0 <Sram_InitNewSave>
    191c:	8dc50000 	lw	a1,0(t6)
    1920:	8fbf0014 	lw	ra,20(sp)
    1924:	27bd0018 	addiu	sp,sp,24
    1928:	03e00008 	jr	ra
    192c:	00000000 	nop

00001930 <Sram_InitSram>:
    1930:	27bdffd0 	addiu	sp,sp,-48
    1934:	afa40030 	sw	a0,48(sp)
    1938:	afbf002c 	sw	ra,44(sp)
    193c:	afb1001c 	sw	s1,28(sp)
    1940:	3c040000 	lui	a0,0x0
    1944:	00a08825 	move	s1,a1
    1948:	afb40028 	sw	s4,40(sp)
    194c:	afb30024 	sw	s3,36(sp)
    1950:	afb20020 	sw	s2,32(sp)
    1954:	afb00018 	sw	s0,24(sp)
    1958:	0c000000 	jal	0 <Sram_InitNewSave>
    195c:	24840648 	addiu	a0,a0,1608
    1960:	3c040800 	lui	a0,0x800
    1964:	8e250000 	lw	a1,0(s1)
    1968:	34068000 	li	a2,0x8000
    196c:	0c000000 	jal	0 <Sram_InitNewSave>
    1970:	00003825 	move	a3,zero
    1974:	3c140000 	lui	s4,0x0
    1978:	3c130000 	lui	s3,0x0
    197c:	3c120000 	lui	s2,0x0
    1980:	26520000 	addiu	s2,s2,0
    1984:	26730000 	addiu	s3,s3,0
    1988:	26940674 	addiu	s4,s4,1652
    198c:	00008025 	move	s0,zero
    1990:	8e230000 	lw	v1,0(s1)
    1994:	00001025 	move	v0,zero
    1998:	02427021 	addu	t6,s2,v0
    199c:	0062c021 	addu	t8,v1,v0
    19a0:	93190003 	lbu	t9,3(t8)
    19a4:	91cf0003 	lbu	t7,3(t6)
    19a8:	51f90011 	beql	t7,t9,19f0 <Sram_InitSram+0xc0>
    19ac:	26100001 	addiu	s0,s0,1
    19b0:	0c000000 	jal	0 <Sram_InitNewSave>
    19b4:	02802025 	move	a0,s4
    19b8:	8e280000 	lw	t0,0(s1)
    19bc:	02402825 	move	a1,s2
    19c0:	2406000c 	li	a2,12
    19c4:	91090002 	lbu	t1,2(t0)
    19c8:	a2691409 	sb	t1,5129(s3)
    19cc:	0c000000 	jal	0 <Sram_InitNewSave>
    19d0:	8e240000 	lw	a0,0(s1)
    19d4:	926a1409 	lbu	t2,5129(s3)
    19d8:	8e2b0000 	lw	t3,0(s1)
    19dc:	02202025 	move	a0,s1
    19e0:	0c000000 	jal	0 <Sram_InitNewSave>
    19e4:	a16a0002 	sb	t2,2(t3)
    19e8:	8e230000 	lw	v1,0(s1)
    19ec:	26100001 	addiu	s0,s0,1
    19f0:	3210ffff 	andi	s0,s0,0xffff
    19f4:	2e010009 	sltiu	at,s0,9
    19f8:	1420ffe7 	bnez	at,1998 <Sram_InitSram+0x68>
    19fc:	02001025 	move	v0,s0
    1a00:	906c0000 	lbu	t4,0(v1)
    1a04:	318d0003 	andi	t5,t4,0x3
    1a08:	a26d140a 	sb	t5,5130(s3)
    1a0c:	8e2e0000 	lw	t6,0(s1)
    1a10:	91d80001 	lbu	t8,1(t6)
    1a14:	330f0001 	andi	t7,t8,0x1
    1a18:	a26f140c 	sb	t7,5132(s3)
    1a1c:	8e390000 	lw	t9,0(s1)
    1a20:	93280002 	lbu	t0,2(t9)
    1a24:	310900ff 	andi	t1,t0,0xff
    1a28:	29210003 	slti	at,t1,3
    1a2c:	14200006 	bnez	at,1a48 <Sram_InitSram+0x118>
    1a30:	a2681409 	sb	t0,5129(s3)
    1a34:	a2601409 	sb	zero,5129(s3)
    1a38:	8e2b0000 	lw	t3,0(s1)
    1a3c:	02202025 	move	a0,s1
    1a40:	0c000000 	jal	0 <Sram_InitNewSave>
    1a44:	a1600002 	sb	zero,2(t3)
    1a48:	8fac0030 	lw	t4,48(sp)
    1a4c:	34058000 	li	a1,0x8000
    1a50:	958d0044 	lhu	t5,68(t4)
    1a54:	31ae0100 	andi	t6,t5,0x100
    1a58:	11c00014 	beqz	t6,1aac <Sram_InitSram+0x17c>
    1a5c:	00000000 	nop
    1a60:	0c000000 	jal	0 <Sram_InitNewSave>
    1a64:	8e240000 	lw	a0,0(s1)
    1a68:	00008025 	move	s0,zero
    1a6c:	8e380000 	lw	t8,0(s1)
    1a70:	03107821 	addu	t7,t8,s0
    1a74:	a1f00000 	sb	s0,0(t7)
    1a78:	26100001 	addiu	s0,s0,1
    1a7c:	3210ffff 	andi	s0,s0,0xffff
    1a80:	2e0109aa 	sltiu	at,s0,2474
    1a84:	5420fffa 	bnezl	at,1a70 <Sram_InitSram+0x140>
    1a88:	8e380000 	lw	t8,0(s1)
    1a8c:	3c040800 	lui	a0,0x800
    1a90:	8e250000 	lw	a1,0(s1)
    1a94:	34068000 	li	a2,0x8000
    1a98:	0c000000 	jal	0 <Sram_InitNewSave>
    1a9c:	24070001 	li	a3,1
    1aa0:	3c040000 	lui	a0,0x0
    1aa4:	0c000000 	jal	0 <Sram_InitNewSave>
    1aa8:	24840690 	addiu	a0,a0,1680
    1aac:	3c040000 	lui	a0,0x0
    1ab0:	248406ac 	addiu	a0,a0,1708
    1ab4:	24051338 	li	a1,4920
    1ab8:	24060004 	li	a2,4
    1abc:	0c000000 	jal	0 <Sram_InitNewSave>
    1ac0:	2407133c 	li	a3,4924
    1ac4:	3c040000 	lui	a0,0x0
    1ac8:	0c000000 	jal	0 <Sram_InitNewSave>
    1acc:	248406d8 	addiu	a0,a0,1752
    1ad0:	3c040000 	lui	a0,0x0
    1ad4:	248406e0 	addiu	a0,a0,1760
    1ad8:	0c000000 	jal	0 <Sram_InitNewSave>
    1adc:	9265140a 	lbu	a1,5130(s3)
    1ae0:	3c040000 	lui	a0,0x0
    1ae4:	248406fc 	addiu	a0,a0,1788
    1ae8:	0c000000 	jal	0 <Sram_InitNewSave>
    1aec:	9265140a 	lbu	a1,5130(s3)
    1af0:	3c040000 	lui	a0,0x0
    1af4:	24840718 	addiu	a0,a0,1816
    1af8:	0c000000 	jal	0 <Sram_InitNewSave>
    1afc:	9265140a 	lbu	a1,5130(s3)
    1b00:	3c040000 	lui	a0,0x0
    1b04:	0c000000 	jal	0 <Sram_InitNewSave>
    1b08:	24840734 	addiu	a0,a0,1844
    1b0c:	0c000000 	jal	0 <Sram_InitNewSave>
    1b10:	8264140a 	lb	a0,5130(s3)
    1b14:	8fbf002c 	lw	ra,44(sp)
    1b18:	8fb00018 	lw	s0,24(sp)
    1b1c:	8fb1001c 	lw	s1,28(sp)
    1b20:	8fb20020 	lw	s2,32(sp)
    1b24:	8fb30024 	lw	s3,36(sp)
    1b28:	8fb40028 	lw	s4,40(sp)
    1b2c:	03e00008 	jr	ra
    1b30:	27bd0030 	addiu	sp,sp,48

00001b34 <Sram_Alloc>:
    1b34:	27bdffe8 	addiu	sp,sp,-24
    1b38:	afbf0014 	sw	ra,20(sp)
    1b3c:	afa5001c 	sw	a1,28(sp)
    1b40:	3c060000 	lui	a2,0x0
    1b44:	24c60738 	addiu	a2,a2,1848
    1b48:	34058000 	li	a1,0x8000
    1b4c:	0c000000 	jal	0 <Sram_InitNewSave>
    1b50:	2407050e 	li	a3,1294
    1b54:	8fae001c 	lw	t6,28(sp)
    1b58:	3c040000 	lui	a0,0x0
    1b5c:	14400006 	bnez	v0,1b78 <Sram_Alloc+0x44>
    1b60:	adc20000 	sw	v0,0(t6)
    1b64:	3c050000 	lui	a1,0x0
    1b68:	24a5075c 	addiu	a1,a1,1884
    1b6c:	24840744 	addiu	a0,a0,1860
    1b70:	0c000000 	jal	0 <Sram_InitNewSave>
    1b74:	2406050f 	li	a2,1295
    1b78:	8fbf0014 	lw	ra,20(sp)
    1b7c:	27bd0018 	addiu	sp,sp,24
    1b80:	03e00008 	jr	ra
    1b84:	00000000 	nop

00001b88 <Sram_Init>:
    1b88:	afa40000 	sw	a0,0(sp)
    1b8c:	03e00008 	jr	ra
    1b90:	afa50004 	sw	a1,4(sp)
	...
