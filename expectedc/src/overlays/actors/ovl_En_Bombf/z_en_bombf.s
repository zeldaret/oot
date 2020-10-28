
build/src/overlays/actors/ovl_En_Bombf/z_en_bombf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBombf_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac8501fc 	sw	a1,508(a0)

00000008 <EnBombf_Init>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	afb10020 	sw	s1,32(sp)
      10:	44802000 	mtc1	zero,$f4
      14:	00a08825 	move	s1,a1
      18:	afbf0024 	sw	ra,36(sp)
      1c:	afb0001c 	sw	s0,28(sp)
      20:	3c053c23 	lui	a1,0x3c23
      24:	00808025 	move	s0,a0
      28:	34a5d70a 	ori	a1,a1,0xd70a
      2c:	0c000000 	jal	0 <EnBombf_SetupAction>
      30:	e7a4003c 	swc1	$f4,60(sp)
      34:	240e0001 	li	t6,1
      38:	ae0e0200 	sw	t6,512(s0)
      3c:	2605014c 	addiu	a1,s0,332
      40:	afa5002c 	sw	a1,44(sp)
      44:	0c000000 	jal	0 <EnBombf_SetupAction>
      48:	02202025 	move	a0,s1
      4c:	26050198 	addiu	a1,s0,408
      50:	afa50030 	sw	a1,48(sp)
      54:	0c000000 	jal	0 <EnBombf_SetupAction>
      58:	02202025 	move	a0,s1
      5c:	3c070000 	lui	a3,0x0
      60:	24e70020 	addiu	a3,a3,32
      64:	02202025 	move	a0,s1
      68:	8fa5002c 	lw	a1,44(sp)
      6c:	0c000000 	jal	0 <EnBombf_SetupAction>
      70:	02003025 	move	a2,s0
      74:	3c070000 	lui	a3,0x0
      78:	260f01b8 	addiu	t7,s0,440
      7c:	afaf0010 	sw	t7,16(sp)
      80:	24e70070 	addiu	a3,a3,112
      84:	02202025 	move	a0,s1
      88:	8fa50030 	lw	a1,48(sp)
      8c:	0c000000 	jal	0 <EnBombf_SetupAction>
      90:	02003025 	move	a2,s0
      94:	8618001c 	lh	t8,28(s0)
      98:	3c060000 	lui	a2,0x0
      9c:	24c60000 	addiu	a2,a2,0
      a0:	17000005 	bnez	t8,b8 <EnBombf_Init+0xb0>
      a4:	260400b4 	addiu	a0,s0,180
      a8:	3c01447a 	lui	at,0x447a
      ac:	44813000 	mtc1	at,$f6
      b0:	00000000 	nop
      b4:	e7a6003c 	swc1	$f6,60(sp)
      b8:	8fa5003c 	lw	a1,60(sp)
      bc:	0c000000 	jal	0 <EnBombf_SetupAction>
      c0:	3c074140 	lui	a3,0x4140
      c4:	8e080024 	lw	t0,36(s0)
      c8:	8e190028 	lw	t9,40(s0)
      cc:	3c010000 	lui	at,0x0
      d0:	ae080038 	sw	t0,56(s0)
      d4:	8e08002c 	lw	t0,44(s0)
      d8:	ae19003c 	sw	t9,60(s0)
      dc:	02202025 	move	a0,s1
      e0:	ae080040 	sw	t0,64(s0)
      e4:	c4280050 	lwc1	$f8,80(at)
      e8:	02002825 	move	a1,s0
      ec:	2406005c 	li	a2,92
      f0:	24070001 	li	a3,1
      f4:	0c000000 	jal	0 <EnBombf_SetupAction>
      f8:	e7a80010 	swc1	$f8,16(sp)
      fc:	10400004 	beqz	v0,110 <EnBombf_Init+0x108>
     100:	241900ff 	li	t9,255
     104:	8e090004 	lw	t1,4(s0)
     108:	352a0020 	ori	t2,t1,0x20
     10c:	ae0a0004 	sw	t2,4(s0)
     110:	860b001c 	lh	t3,28(s0)
     114:	2402000a 	li	v0,10
     118:	a60200a8 	sh	v0,168(s0)
     11c:	a60200aa 	sh	v0,170(s0)
     120:	15600019 	bnez	t3,188 <EnBombf_Init+0x180>
     124:	a200001f 	sb	zero,31(s0)
     128:	3c01bfc0 	lui	at,0xbfc0
     12c:	44815000 	mtc1	at,$f10
     130:	240c008c 	li	t4,140
     134:	240d000f 	li	t5,15
     138:	a60c01f8 	sh	t4,504(s0)
     13c:	a60d0206 	sh	t5,518(s0)
     140:	02202025 	move	a0,s1
     144:	26251c24 	addiu	a1,s1,7204
     148:	02003025 	move	a2,s0
     14c:	24070003 	li	a3,3
     150:	0c000000 	jal	0 <EnBombf_SetupAction>
     154:	e60a006c 	swc1	$f10,108(s0)
     158:	8e0f0004 	lw	t7,4(s0)
     15c:	2401fffe 	li	at,-2
     160:	240e00c8 	li	t6,200
     164:	3c050000 	lui	a1,0x0
     168:	01e1c024 	and	t8,t7,at
     16c:	a20e00ae 	sb	t6,174(s0)
     170:	ae180004 	sw	t8,4(s0)
     174:	24a50000 	addiu	a1,a1,0
     178:	0c000000 	jal	0 <EnBombf_SetupAction>
     17c:	02002025 	move	a0,s0
     180:	1000000a 	b	1ac <EnBombf_Init+0x1a4>
     184:	00000000 	nop
     188:	3c013f80 	lui	at,0x3f80
     18c:	44818000 	mtc1	at,$f16
     190:	24080001 	li	t0,1
     194:	a21900ae 	sb	t9,174(s0)
     198:	a2080204 	sb	t0,516(s0)
     19c:	02002025 	move	a0,s0
     1a0:	8605001c 	lh	a1,28(s0)
     1a4:	0c000000 	jal	0 <EnBombf_SetupAction>
     1a8:	e610020c 	swc1	$f16,524(s0)
     1ac:	3c010000 	lui	at,0x0
     1b0:	c4200054 	lwc1	$f0,84(at)
     1b4:	c61200f8 	lwc1	$f18,248(s0)
     1b8:	c60600f4 	lwc1	$f6,244(s0)
     1bc:	46009100 	add.s	$f4,$f18,$f0
     1c0:	46003200 	add.s	$f8,$f6,$f0
     1c4:	e60400f8 	swc1	$f4,248(s0)
     1c8:	e60800f4 	swc1	$f8,244(s0)
     1cc:	8fbf0024 	lw	ra,36(sp)
     1d0:	8fb10020 	lw	s1,32(sp)
     1d4:	8fb0001c 	lw	s0,28(sp)
     1d8:	03e00008 	jr	ra
     1dc:	27bd0040 	addiu	sp,sp,64

000001e0 <EnBombf_Destroy>:
     1e0:	27bdffe8 	addiu	sp,sp,-24
     1e4:	afa40018 	sw	a0,24(sp)
     1e8:	afa5001c 	sw	a1,28(sp)
     1ec:	00a02025 	move	a0,a1
     1f0:	8fa50018 	lw	a1,24(sp)
     1f4:	afbf0014 	sw	ra,20(sp)
     1f8:	0c000000 	jal	0 <EnBombf_SetupAction>
     1fc:	24a5014c 	addiu	a1,a1,332
     200:	8fa50018 	lw	a1,24(sp)
     204:	8fa4001c 	lw	a0,28(sp)
     208:	0c000000 	jal	0 <EnBombf_SetupAction>
     20c:	24a50198 	addiu	a1,a1,408
     210:	8fbf0014 	lw	ra,20(sp)
     214:	27bd0018 	addiu	sp,sp,24
     218:	03e00008 	jr	ra
     21c:	00000000 	nop

00000220 <EnBombf_SetupGrowBomb>:
     220:	27bdffe8 	addiu	sp,sp,-24
     224:	afa5001c 	sw	a1,28(sp)
     228:	afbf0014 	sw	ra,20(sp)
     22c:	3c050000 	lui	a1,0x0
     230:	0c000000 	jal	0 <EnBombf_SetupAction>
     234:	24a50000 	addiu	a1,a1,0
     238:	8fbf0014 	lw	ra,20(sp)
     23c:	27bd0018 	addiu	sp,sp,24
     240:	03e00008 	jr	ra
     244:	00000000 	nop

00000248 <EnBombf_GrowBomb>:
     248:	27bdffb0 	addiu	sp,sp,-80
     24c:	afbf0034 	sw	ra,52(sp)
     250:	afb10030 	sw	s1,48(sp)
     254:	afb0002c 	sw	s0,44(sp)
     258:	3c013f80 	lui	at,0x3f80
     25c:	44811000 	mtc1	at,$f2
     260:	c480020c 	lwc1	$f0,524(a0)
     264:	00808025 	move	s0,a0
     268:	00a08825 	move	s1,a1
     26c:	4600103e 	c.le.s	$f2,$f0
     270:	8ca31c44 	lw	v1,7236(a1)
     274:	4502008f 	bc1fl	4b4 <EnBombf_GrowBomb+0x26c>
     278:	861801f8 	lh	t8,504(s0)
     27c:	0c000000 	jal	0 <EnBombf_SetupAction>
     280:	afa30040 	sw	v1,64(sp)
     284:	1040002a 	beqz	v0,330 <EnBombf_GrowBomb+0xe8>
     288:	8fa30040 	lw	v1,64(sp)
     28c:	c6040028 	lwc1	$f4,40(s0)
     290:	8e070024 	lw	a3,36(s0)
     294:	26241c24 	addiu	a0,s1,7204
     298:	e7a40010 	swc1	$f4,16(sp)
     29c:	c606002c 	lwc1	$f6,44(s0)
     2a0:	afa30040 	sw	v1,64(sp)
     2a4:	afa00024 	sw	zero,36(sp)
     2a8:	afa00020 	sw	zero,32(sp)
     2ac:	afa0001c 	sw	zero,28(sp)
     2b0:	afa00018 	sw	zero,24(sp)
     2b4:	02202825 	move	a1,s1
     2b8:	2406004c 	li	a2,76
     2bc:	0c000000 	jal	0 <EnBombf_SetupAction>
     2c0:	e7a60014 	swc1	$f6,20(sp)
     2c4:	8fa30040 	lw	v1,64(sp)
     2c8:	10400010 	beqz	v0,30c <EnBombf_GrowBomb+0xc4>
     2cc:	00402825 	move	a1,v0
     2d0:	02002025 	move	a0,s0
     2d4:	0c000000 	jal	0 <EnBombf_SetupAction>
     2d8:	02203025 	move	a2,s1
     2dc:	44804000 	mtc1	zero,$f8
     2e0:	240e00b4 	li	t6,180
     2e4:	a60e01f8 	sh	t6,504(s0)
     2e8:	02002025 	move	a0,s0
     2ec:	2405086a 	li	a1,2154
     2f0:	0c000000 	jal	0 <EnBombf_SetupAction>
     2f4:	e608020c 	swc1	$f8,524(s0)
     2f8:	8e0f0004 	lw	t7,4(s0)
     2fc:	2401fffe 	li	at,-2
     300:	01e1c024 	and	t8,t7,at
     304:	1000008c 	b	538 <EnBombf_GrowBomb+0x2f0>
     308:	ae180004 	sw	t8,4(s0)
     30c:	ac60011c 	sw	zero,284(v1)
     310:	ac6003ac 	sw	zero,940(v1)
     314:	ac600438 	sw	zero,1080(v1)
     318:	ae000118 	sw	zero,280(s0)
     31c:	8c79067c 	lw	t9,1660(v1)
     320:	2401f7ff 	li	at,-2049
     324:	03214024 	and	t0,t9,at
     328:	10000083 	b	538 <EnBombf_GrowBomb+0x2f0>
     32c:	ac68067c 	sw	t0,1660(v1)
     330:	9202015d 	lbu	v0,349(s0)
     334:	02202025 	move	a0,s1
     338:	26050024 	addiu	a1,s0,36
     33c:	30490002 	andi	t1,v0,0x2
     340:	11200021 	beqz	t1,3c8 <EnBombf_GrowBomb+0x180>
     344:	3c0641f0 	lui	a2,0x41f0
     348:	8e0b0154 	lw	t3,340(s0)
     34c:	304afffd 	andi	t2,v0,0xfffd
     350:	a20a015d 	sb	t2,349(s0)
     354:	916c0002 	lbu	t4,2(t3)
     358:	24010009 	li	at,9
     35c:	26241c24 	addiu	a0,s1,7204
     360:	11810075 	beq	t4,at,538 <EnBombf_GrowBomb+0x2f0>
     364:	02202825 	move	a1,s1
     368:	c60a0028 	lwc1	$f10,40(s0)
     36c:	8e070024 	lw	a3,36(s0)
     370:	2406004c 	li	a2,76
     374:	e7aa0010 	swc1	$f10,16(sp)
     378:	c610002c 	lwc1	$f16,44(s0)
     37c:	afa00024 	sw	zero,36(sp)
     380:	afa00020 	sw	zero,32(sp)
     384:	afa0001c 	sw	zero,28(sp)
     388:	afa00018 	sw	zero,24(sp)
     38c:	0c000000 	jal	0 <EnBombf_SetupAction>
     390:	e7b00014 	swc1	$f16,20(sp)
     394:	10400068 	beqz	v0,538 <EnBombf_GrowBomb+0x2f0>
     398:	240d0001 	li	t5,1
     39c:	ac4d0200 	sw	t5,512(v0)
     3a0:	a44001f8 	sh	zero,504(v0)
     3a4:	8e0f0004 	lw	t7,4(s0)
     3a8:	44809000 	mtc1	zero,$f18
     3ac:	2401fffe 	li	at,-2
     3b0:	240e00b4 	li	t6,180
     3b4:	01e1c024 	and	t8,t7,at
     3b8:	a60e01f8 	sh	t6,504(s0)
     3bc:	ae180004 	sw	t8,4(s0)
     3c0:	1000005d 	b	538 <EnBombf_GrowBomb+0x2f0>
     3c4:	e612020c 	swc1	$f18,524(s0)
     3c8:	3c074248 	lui	a3,0x4248
     3cc:	afa30040 	sw	v1,64(sp)
     3d0:	0c000000 	jal	0 <EnBombf_SetupAction>
     3d4:	afa50038 	sw	a1,56(sp)
     3d8:	1040001a 	beqz	v0,444 <EnBombf_GrowBomb+0x1fc>
     3dc:	8fa30040 	lw	v1,64(sp)
     3e0:	c6040028 	lwc1	$f4,40(s0)
     3e4:	8e070024 	lw	a3,36(s0)
     3e8:	26241c24 	addiu	a0,s1,7204
     3ec:	e7a40010 	swc1	$f4,16(sp)
     3f0:	c606002c 	lwc1	$f6,44(s0)
     3f4:	afa00024 	sw	zero,36(sp)
     3f8:	afa00020 	sw	zero,32(sp)
     3fc:	afa0001c 	sw	zero,28(sp)
     400:	afa00018 	sw	zero,24(sp)
     404:	02202825 	move	a1,s1
     408:	2406004c 	li	a2,76
     40c:	0c000000 	jal	0 <EnBombf_SetupAction>
     410:	e7a60014 	swc1	$f6,20(sp)
     414:	10400048 	beqz	v0,538 <EnBombf_GrowBomb+0x2f0>
     418:	24190064 	li	t9,100
     41c:	a45901f8 	sh	t9,504(v0)
     420:	8e090004 	lw	t1,4(s0)
     424:	44804000 	mtc1	zero,$f8
     428:	2401fffe 	li	at,-2
     42c:	240800b4 	li	t0,180
     430:	01215024 	and	t2,t1,at
     434:	a60801f8 	sh	t0,504(s0)
     438:	ae0a0004 	sw	t2,4(s0)
     43c:	1000003e 	b	538 <EnBombf_GrowBomb+0x2f0>
     440:	e608020c 	swc1	$f8,524(s0)
     444:	02002025 	move	a0,s0
     448:	02202825 	move	a1,s1
     44c:	0c000000 	jal	0 <EnBombf_SetupAction>
     450:	afa30040 	sw	v1,64(sp)
     454:	14400006 	bnez	v0,470 <EnBombf_GrowBomb+0x228>
     458:	8fa30040 	lw	v1,64(sp)
     45c:	02002025 	move	a0,s0
     460:	0c000000 	jal	0 <EnBombf_SetupAction>
     464:	02202825 	move	a1,s1
     468:	10000034 	b	53c <EnBombf_GrowBomb+0x2f4>
     46c:	8fbf0034 	lw	ra,52(sp)
     470:	ac60011c 	sw	zero,284(v1)
     474:	ac6003ac 	sw	zero,940(v1)
     478:	ac600438 	sw	zero,1080(v1)
     47c:	ae000118 	sw	zero,280(s0)
     480:	8c6b067c 	lw	t3,1660(v1)
     484:	2401f7ff 	li	at,-2049
     488:	01616024 	and	t4,t3,at
     48c:	ac6c067c 	sw	t4,1660(v1)
     490:	8e0f0008 	lw	t7,8(s0)
     494:	8fad0038 	lw	t5,56(sp)
     498:	adaf0000 	sw	t7,0(t5)
     49c:	8e0e000c 	lw	t6,12(s0)
     4a0:	adae0004 	sw	t6,4(t5)
     4a4:	8e0f0010 	lw	t7,16(s0)
     4a8:	10000023 	b	538 <EnBombf_GrowBomb+0x2f0>
     4ac:	adaf0008 	sw	t7,8(t5)
     4b0:	861801f8 	lh	t8,504(s0)
     4b4:	3c010000 	lui	at,0x0
     4b8:	02002025 	move	a0,s0
     4bc:	1700000c 	bnez	t8,4f0 <EnBombf_GrowBomb+0x2a8>
     4c0:	02202825 	move	a1,s1
     4c4:	c42a0058 	lwc1	$f10,88(at)
     4c8:	460a0400 	add.s	$f16,$f0,$f10
     4cc:	e610020c 	swc1	$f16,524(s0)
     4d0:	c612020c 	lwc1	$f18,524(s0)
     4d4:	4612103e 	c.le.s	$f2,$f18
     4d8:	00000000 	nop
     4dc:	45000004 	bc1f	4f0 <EnBombf_GrowBomb+0x2a8>
     4e0:	00000000 	nop
     4e4:	8e190004 	lw	t9,4(s0)
     4e8:	37280001 	ori	t0,t9,0x1
     4ec:	ae080004 	sw	t0,4(s0)
     4f0:	0c000000 	jal	0 <EnBombf_SetupAction>
     4f4:	afa30040 	sw	v1,64(sp)
     4f8:	1040000f 	beqz	v0,538 <EnBombf_GrowBomb+0x2f0>
     4fc:	8fa30040 	lw	v1,64(sp)
     500:	ac60011c 	sw	zero,284(v1)
     504:	ac6003ac 	sw	zero,940(v1)
     508:	ac600438 	sw	zero,1080(v1)
     50c:	ae000118 	sw	zero,280(s0)
     510:	8c69067c 	lw	t1,1660(v1)
     514:	2401f7ff 	li	at,-2049
     518:	01215024 	and	t2,t1,at
     51c:	ac6a067c 	sw	t2,1660(v1)
     520:	8e0c0008 	lw	t4,8(s0)
     524:	8e0b000c 	lw	t3,12(s0)
     528:	ae0c0024 	sw	t4,36(s0)
     52c:	8e0c0010 	lw	t4,16(s0)
     530:	ae0b0028 	sw	t3,40(s0)
     534:	ae0c002c 	sw	t4,44(s0)
     538:	8fbf0034 	lw	ra,52(sp)
     53c:	8fb0002c 	lw	s0,44(sp)
     540:	8fb10030 	lw	s1,48(sp)
     544:	03e00008 	jr	ra
     548:	27bd0050 	addiu	sp,sp,80

0000054c <EnBombf_Move>:
     54c:	27bdffd8 	addiu	sp,sp,-40
     550:	afbf0024 	sw	ra,36(sp)
     554:	afb00020 	sw	s0,32(sp)
     558:	00808025 	move	s0,a0
     55c:	0c000000 	jal	0 <EnBombf_SetupAction>
     560:	afa5002c 	sw	a1,44(sp)
     564:	10400009 	beqz	v0,58c <EnBombf_Move+0x40>
     568:	02002025 	move	a0,s0
     56c:	44800000 	mtc1	zero,$f0
     570:	3c050000 	lui	a1,0x0
     574:	24a50000 	addiu	a1,a1,0
     578:	0c000000 	jal	0 <EnBombf_SetupAction>
     57c:	e600020c 	swc1	$f0,524(s0)
     580:	240effff 	li	t6,-1
     584:	10000033 	b	654 <EnBombf_Move+0x108>
     588:	a20e0003 	sb	t6,3(s0)
     58c:	960f0088 	lhu	t7,136(s0)
     590:	3c013f80 	lui	at,0x3f80
     594:	44811000 	mtc1	at,$f2
     598:	31f80001 	andi	t8,t7,0x1
     59c:	1700000b 	bnez	t8,5cc <EnBombf_Move+0x80>
     5a0:	e602020c 	swc1	$f2,524(s0)
     5a4:	44800000 	mtc1	zero,$f0
     5a8:	44061000 	mfc1	a2,$f2
     5ac:	3c073ccc 	lui	a3,0x3ccc
     5b0:	44050000 	mfc1	a1,$f0
     5b4:	34e7cccd 	ori	a3,a3,0xcccd
     5b8:	26040068 	addiu	a0,s0,104
     5bc:	0c000000 	jal	0 <EnBombf_SetupAction>
     5c0:	e7a00010 	swc1	$f0,16(sp)
     5c4:	10000024 	b	658 <EnBombf_Move+0x10c>
     5c8:	8fbf0024 	lw	ra,36(sp)
     5cc:	44800000 	mtc1	zero,$f0
     5d0:	44061000 	mfc1	a2,$f2
     5d4:	26040068 	addiu	a0,s0,104
     5d8:	44050000 	mfc1	a1,$f0
     5dc:	3c073fc0 	lui	a3,0x3fc0
     5e0:	0c000000 	jal	0 <EnBombf_SetupAction>
     5e4:	e7a00010 	swc1	$f0,16(sp)
     5e8:	96190088 	lhu	t9,136(s0)
     5ec:	3c01c0c0 	lui	at,0xc0c0
     5f0:	33280002 	andi	t0,t9,0x2
     5f4:	51000011 	beqzl	t0,63c <EnBombf_Move+0xf0>
     5f8:	860901f8 	lh	t1,504(s0)
     5fc:	c6040060 	lwc1	$f4,96(s0)
     600:	44813000 	mtc1	at,$f6
     604:	8fa4002c 	lw	a0,44(sp)
     608:	4606203c 	c.lt.s	$f4,$f6
     60c:	00000000 	nop
     610:	4502000a 	bc1fl	63c <EnBombf_Move+0xf0>
     614:	860901f8 	lh	t1,504(s0)
     618:	0c000000 	jal	0 <EnBombf_SetupAction>
     61c:	02002825 	move	a1,s0
     620:	3c01bf00 	lui	at,0xbf00
     624:	44815000 	mtc1	at,$f10
     628:	c6080060 	lwc1	$f8,96(s0)
     62c:	460a4402 	mul.s	$f16,$f8,$f10
     630:	10000008 	b	654 <EnBombf_Move+0x108>
     634:	e6100060 	swc1	$f16,96(s0)
     638:	860901f8 	lh	t1,504(s0)
     63c:	02002025 	move	a0,s0
     640:	29210004 	slti	at,t1,4
     644:	54200004 	bnezl	at,658 <EnBombf_Move+0x10c>
     648:	8fbf0024 	lw	ra,36(sp)
     64c:	0c000000 	jal	0 <EnBombf_SetupAction>
     650:	8fa5002c 	lw	a1,44(sp)
     654:	8fbf0024 	lw	ra,36(sp)
     658:	8fb00020 	lw	s0,32(sp)
     65c:	27bd0028 	addiu	sp,sp,40
     660:	03e00008 	jr	ra
     664:	00000000 	nop

00000668 <EnBombf_WaitForRelease>:
     668:	27bdffe8 	addiu	sp,sp,-24
     66c:	afbf0014 	sw	ra,20(sp)
     670:	afa40018 	sw	a0,24(sp)
     674:	0c000000 	jal	0 <EnBombf_SetupAction>
     678:	afa5001c 	sw	a1,28(sp)
     67c:	1040000a 	beqz	v0,6a8 <EnBombf_WaitForRelease+0x40>
     680:	8fae0018 	lw	t6,24(sp)
     684:	3c050000 	lui	a1,0x0
     688:	24a50000 	addiu	a1,a1,0
     68c:	0c000000 	jal	0 <EnBombf_SetupAction>
     690:	8fa40018 	lw	a0,24(sp)
     694:	8fa40018 	lw	a0,24(sp)
     698:	0c000000 	jal	0 <EnBombf_SetupAction>
     69c:	8fa5001c 	lw	a1,28(sp)
     6a0:	10000005 	b	6b8 <EnBombf_WaitForRelease+0x50>
     6a4:	8fbf0014 	lw	ra,20(sp)
     6a8:	44802000 	mtc1	zero,$f4
     6ac:	00000000 	nop
     6b0:	e5c40060 	swc1	$f4,96(t6)
     6b4:	8fbf0014 	lw	ra,20(sp)
     6b8:	27bd0018 	addiu	sp,sp,24
     6bc:	03e00008 	jr	ra
     6c0:	00000000 	nop

000006c4 <EnBombf_Explode>:
     6c4:	27bdffe0 	addiu	sp,sp,-32
     6c8:	afbf001c 	sw	ra,28(sp)
     6cc:	afb00018 	sw	s0,24(sp)
     6d0:	afa50024 	sw	a1,36(sp)
     6d4:	8c8201b4 	lw	v0,436(a0)
     6d8:	00808025 	move	s0,a0
     6dc:	240500ff 	li	a1,255
     6e0:	8443002e 	lh	v1,46(v0)
     6e4:	24060014 	li	a2,20
     6e8:	5460000a 	bnezl	v1,714 <EnBombf_Explode+0x50>
     6ec:	24780008 	addiu	t8,v1,8
     6f0:	8c8e0004 	lw	t6,4(a0)
     6f4:	c48c0090 	lwc1	$f12,144(a0)
     6f8:	24070096 	li	a3,150
     6fc:	35cf0020 	ori	t7,t6,0x20
     700:	0c000000 	jal	0 <EnBombf_SetupAction>
     704:	ac8f0004 	sw	t7,4(a0)
     708:	8e0201b4 	lw	v0,436(s0)
     70c:	8443002e 	lh	v1,46(v0)
     710:	24780008 	addiu	t8,v1,8
     714:	a458002e 	sh	t8,46(v0)
     718:	8e0201b4 	lw	v0,436(s0)
     71c:	24010001 	li	at,1
     720:	26060198 	addiu	a2,s0,408
     724:	8459002e 	lh	t9,46(v0)
     728:	a4590036 	sh	t9,54(v0)
     72c:	8608001c 	lh	t0,28(s0)
     730:	8fa40024 	lw	a0,36(sp)
     734:	15010004 	bne	t0,at,748 <EnBombf_Explode+0x84>
     738:	3c010001 	lui	at,0x1
     73c:	34211e60 	ori	at,at,0x1e60
     740:	0c000000 	jal	0 <EnBombf_SetupAction>
     744:	00812821 	addu	a1,a0,at
     748:	8fa20024 	lw	v0,36(sp)
     74c:	3c010001 	lui	at,0x1
     750:	00411021 	addu	v0,v0,at
     754:	84430ab6 	lh	v1,2742(v0)
     758:	10600002 	beqz	v1,764 <EnBombf_Explode+0xa0>
     75c:	246affe7 	addiu	t2,v1,-25
     760:	a44a0ab6 	sh	t2,2742(v0)
     764:	84430ab8 	lh	v1,2744(v0)
     768:	10600002 	beqz	v1,774 <EnBombf_Explode+0xb0>
     76c:	246bffe7 	addiu	t3,v1,-25
     770:	a44b0ab8 	sh	t3,2744(v0)
     774:	84430aba 	lh	v1,2746(v0)
     778:	10600002 	beqz	v1,784 <EnBombf_Explode+0xc0>
     77c:	246cffe7 	addiu	t4,v1,-25
     780:	a44c0aba 	sh	t4,2746(v0)
     784:	84430ab0 	lh	v1,2736(v0)
     788:	10600002 	beqz	v1,794 <EnBombf_Explode+0xd0>
     78c:	246dffe7 	addiu	t5,v1,-25
     790:	a44d0ab0 	sh	t5,2736(v0)
     794:	84430ab2 	lh	v1,2738(v0)
     798:	10600002 	beqz	v1,7a4 <EnBombf_Explode+0xe0>
     79c:	246effe7 	addiu	t6,v1,-25
     7a0:	a44e0ab2 	sh	t6,2738(v0)
     7a4:	84430ab4 	lh	v1,2740(v0)
     7a8:	10600002 	beqz	v1,7b4 <EnBombf_Explode+0xf0>
     7ac:	246fffe7 	addiu	t7,v1,-25
     7b0:	a44f0ab4 	sh	t7,2740(v0)
     7b4:	861801f8 	lh	t8,504(s0)
     7b8:	8fb90024 	lw	t9,36(sp)
     7bc:	57000012 	bnezl	t8,808 <EnBombf_Explode+0x144>
     7c0:	8fbf001c 	lw	ra,28(sp)
     7c4:	8f221c44 	lw	v0,7236(t9)
     7c8:	8c43067c 	lw	v1,1660(v0)
     7cc:	30680800 	andi	t0,v1,0x800
     7d0:	1100000a 	beqz	t0,7fc <EnBombf_Explode+0x138>
     7d4:	00000000 	nop
     7d8:	8c4903ac 	lw	t1,940(v0)
     7dc:	2401f7ff 	li	at,-2049
     7e0:	00615024 	and	t2,v1,at
     7e4:	16090005 	bne	s0,t1,7fc <EnBombf_Explode+0x138>
     7e8:	00000000 	nop
     7ec:	ac40011c 	sw	zero,284(v0)
     7f0:	ac4003ac 	sw	zero,940(v0)
     7f4:	ac400438 	sw	zero,1080(v0)
     7f8:	ac4a067c 	sw	t2,1660(v0)
     7fc:	0c000000 	jal	0 <EnBombf_SetupAction>
     800:	02002025 	move	a0,s0
     804:	8fbf001c 	lw	ra,28(sp)
     808:	8fb00018 	lw	s0,24(sp)
     80c:	27bd0020 	addiu	sp,sp,32
     810:	03e00008 	jr	ra
     814:	00000000 	nop

00000818 <EnBombf_Update>:
     818:	27bdff68 	addiu	sp,sp,-152
     81c:	3c0f0000 	lui	t7,0x0
     820:	afbf002c 	sw	ra,44(sp)
     824:	afb00028 	sw	s0,40(sp)
     828:	afa5009c 	sw	a1,156(sp)
     82c:	25ef0080 	addiu	t7,t7,128
     830:	8df90000 	lw	t9,0(t7)
     834:	27ae008c 	addiu	t6,sp,140
     838:	8df80004 	lw	t8,4(t7)
     83c:	add90000 	sw	t9,0(t6)
     840:	8df90008 	lw	t9,8(t7)
     844:	3c0a0000 	lui	t2,0x0
     848:	254a008c 	addiu	t2,t2,140
     84c:	add80004 	sw	t8,4(t6)
     850:	add90008 	sw	t9,8(t6)
     854:	8d4c0000 	lw	t4,0(t2)
     858:	27a90080 	addiu	t1,sp,128
     85c:	8d4b0004 	lw	t3,4(t2)
     860:	ad2c0000 	sw	t4,0(t1)
     864:	8d4c0008 	lw	t4,8(t2)
     868:	3c0e0000 	lui	t6,0x0
     86c:	25ce0098 	addiu	t6,t6,152
     870:	ad2b0004 	sw	t3,4(t1)
     874:	ad2c0008 	sw	t4,8(t1)
     878:	8dd80000 	lw	t8,0(t6)
     87c:	27ad0074 	addiu	t5,sp,116
     880:	8dcf0004 	lw	t7,4(t6)
     884:	adb80000 	sw	t8,0(t5)
     888:	8dd80008 	lw	t8,8(t6)
     88c:	3c090000 	lui	t1,0x0
     890:	252900a4 	addiu	t1,t1,164
     894:	adaf0004 	sw	t7,4(t5)
     898:	adb80008 	sw	t8,8(t5)
     89c:	8d2b0000 	lw	t3,0(t1)
     8a0:	27b9005c 	addiu	t9,sp,92
     8a4:	8d2a0004 	lw	t2,4(t1)
     8a8:	af2b0000 	sw	t3,0(t9)
     8ac:	8d2b0008 	lw	t3,8(t1)
     8b0:	3c0c0000 	lui	t4,0x0
     8b4:	af2a0004 	sw	t2,4(t9)
     8b8:	af2b0008 	sw	t3,8(t9)
     8bc:	8d8c00b0 	lw	t4,176(t4)
     8c0:	00808025 	move	s0,a0
     8c4:	afac0058 	sw	t4,88(sp)
     8c8:	8c8d0200 	lw	t5,512(a0)
     8cc:	51a00006 	beqzl	t5,8e8 <EnBombf_Update+0xd0>
     8d0:	920f0204 	lbu	t7,516(s0)
     8d4:	848201f8 	lh	v0,504(a0)
     8d8:	10400002 	beqz	v0,8e4 <EnBombf_Update+0xcc>
     8dc:	244effff 	addiu	t6,v0,-1
     8e0:	a48e01f8 	sh	t6,504(a0)
     8e4:	920f0204 	lbu	t7,516(s0)
     8e8:	02002025 	move	a0,s0
     8ec:	55e0001d 	bnezl	t7,964 <EnBombf_Update+0x14c>
     8f0:	8e1901fc 	lw	t9,508(s0)
     8f4:	0c000000 	jal	0 <EnBombf_SetupAction>
     8f8:	8fa5009c 	lw	a1,156(sp)
     8fc:	14400018 	bnez	v0,960 <EnBombf_Update+0x148>
     900:	3c0141a0 	lui	at,0x41a0
     904:	c6040090 	lwc1	$f4,144(s0)
     908:	44813000 	mtc1	at,$f6
     90c:	3c0142a0 	lui	at,0x42a0
     910:	24180001 	li	t8,1
     914:	4604303e 	c.le.s	$f6,$f4
     918:	00000000 	nop
     91c:	45030010 	bc1tl	960 <EnBombf_Update+0x148>
     920:	a2180204 	sb	t8,516(s0)
     924:	c6000094 	lwc1	$f0,148(s0)
     928:	44804000 	mtc1	zero,$f8
     92c:	44815000 	mtc1	at,$f10
     930:	4600403e 	c.le.s	$f8,$f0
     934:	00000000 	nop
     938:	45020004 	bc1fl	94c <EnBombf_Update+0x134>
     93c:	46000087 	neg.s	$f2,$f0
     940:	10000002 	b	94c <EnBombf_Update+0x134>
     944:	46000086 	mov.s	$f2,$f0
     948:	46000087 	neg.s	$f2,$f0
     94c:	4602503e 	c.le.s	$f10,$f2
     950:	00000000 	nop
     954:	45020003 	bc1fl	964 <EnBombf_Update+0x14c>
     958:	8e1901fc 	lw	t9,508(s0)
     95c:	a2180204 	sb	t8,516(s0)
     960:	8e1901fc 	lw	t9,508(s0)
     964:	02002025 	move	a0,s0
     968:	8fa5009c 	lw	a1,156(sp)
     96c:	0320f809 	jalr	t9
     970:	00000000 	nop
     974:	8609001c 	lh	t1,28(s0)
     978:	55200004 	bnezl	t1,98c <EnBombf_Update+0x174>
     97c:	44801000 	mtc1	zero,$f2
     980:	0c000000 	jal	0 <EnBombf_SetupAction>
     984:	02002025 	move	a0,s0
     988:	44801000 	mtc1	zero,$f2
     98c:	c610006c 	lwc1	$f16,108(s0)
     990:	240a0001 	li	t2,1
     994:	3c0b0000 	lui	t3,0x0
     998:	46101032 	c.eq.s	$f2,$f16
     99c:	02002825 	move	a1,s0
     9a0:	3c0640a0 	lui	a2,0x40a0
     9a4:	4503000e 	bc1tl	9e0 <EnBombf_Update+0x1c8>
     9a8:	860e001c 	lh	t6,28(s0)
     9ac:	8d6b0000 	lw	t3,0(t3)
     9b0:	240c001f 	li	t4,31
     9b4:	3c074120 	lui	a3,0x4120
     9b8:	a56a0560 	sh	t2,1376(t3)
     9bc:	afac0014 	sw	t4,20(sp)
     9c0:	e7a20010 	swc1	$f2,16(sp)
     9c4:	0c000000 	jal	0 <EnBombf_SetupAction>
     9c8:	8fa4009c 	lw	a0,156(sp)
     9cc:	3c0d0000 	lui	t5,0x0
     9d0:	8dad0000 	lw	t5,0(t5)
     9d4:	44801000 	mtc1	zero,$f2
     9d8:	a5a00560 	sh	zero,1376(t5)
     9dc:	860e001c 	lh	t6,28(s0)
     9e0:	55c0012a 	bnezl	t6,e8c <EnBombf_Update+0x674>
     9e4:	8e0b0028 	lw	t3,40(s0)
     9e8:	c6000060 	lwc1	$f0,96(s0)
     9ec:	4600103c 	c.lt.s	$f2,$f0
     9f0:	00000000 	nop
     9f4:	45020008 	bc1fl	a18 <EnBombf_Update+0x200>
     9f8:	c6040068 	lwc1	$f4,104(s0)
     9fc:	960f0088 	lhu	t7,136(s0)
     a00:	31f80010 	andi	t8,t7,0x10
     a04:	53000004 	beqzl	t8,a18 <EnBombf_Update+0x200>
     a08:	c6040068 	lwc1	$f4,104(s0)
     a0c:	46000487 	neg.s	$f18,$f0
     a10:	e6120060 	swc1	$f18,96(s0)
     a14:	c6040068 	lwc1	$f4,104(s0)
     a18:	46041032 	c.eq.s	$f2,$f4
     a1c:	00000000 	nop
     a20:	45030032 	bc1tl	aec <EnBombf_Update+0x2d4>
     a24:	920a015d 	lbu	t2,349(s0)
     a28:	96190088 	lhu	t9,136(s0)
     a2c:	33290008 	andi	t1,t9,0x8
     a30:	5120002e 	beqzl	t1,aec <EnBombf_Update+0x2d4>
     a34:	920a015d 	lbu	t2,349(s0)
     a38:	8604007e 	lh	a0,126(s0)
     a3c:	860a0032 	lh	t2,50(s0)
     a40:	008a2823 	subu	a1,a0,t2
     a44:	00051400 	sll	v0,a1,0x10
     a48:	00021403 	sra	v0,v0,0x10
     a4c:	04400003 	bltz	v0,a5c <EnBombf_Update+0x244>
     a50:	00021823 	negu	v1,v0
     a54:	10000001 	b	a5c <EnBombf_Update+0x244>
     a58:	00401825 	move	v1,v0
     a5c:	28614001 	slti	at,v1,16385
     a60:	14200004 	bnez	at,a74 <EnBombf_Update+0x25c>
     a64:	00a45821 	addu	t3,a1,a0
     a68:	24018000 	li	at,-32768
     a6c:	01616021 	addu	t4,t3,at
     a70:	a60c0032 	sh	t4,50(s0)
     a74:	02002025 	move	a0,s0
     a78:	0c000000 	jal	0 <EnBombf_SetupAction>
     a7c:	2405282f 	li	a1,10287
     a80:	0c000000 	jal	0 <EnBombf_SetupAction>
     a84:	02002025 	move	a0,s0
     a88:	3c0e0000 	lui	t6,0x0
     a8c:	8dce0000 	lw	t6,0(t6)
     a90:	240d0001 	li	t5,1
     a94:	44803000 	mtc1	zero,$f6
     a98:	a5cd0560 	sh	t5,1376(t6)
     a9c:	240f001f 	li	t7,31
     aa0:	afaf0014 	sw	t7,20(sp)
     aa4:	8fa4009c 	lw	a0,156(sp)
     aa8:	02002825 	move	a1,s0
     aac:	3c0640a0 	lui	a2,0x40a0
     ab0:	3c074120 	lui	a3,0x4120
     ab4:	0c000000 	jal	0 <EnBombf_SetupAction>
     ab8:	e7a60010 	swc1	$f6,16(sp)
     abc:	3c180000 	lui	t8,0x0
     ac0:	8f180000 	lw	t8,0(t8)
     ac4:	3c010000 	lui	at,0x0
     ac8:	a7000560 	sh	zero,1376(t8)
     acc:	c6080068 	lwc1	$f8,104(s0)
     ad0:	c42a005c 	lwc1	$f10,92(at)
     ad4:	96190088 	lhu	t9,136(s0)
     ad8:	460a4402 	mul.s	$f16,$f8,$f10
     adc:	3329fff7 	andi	t1,t9,0xfff7
     ae0:	a6090088 	sh	t1,136(s0)
     ae4:	e6100068 	swc1	$f16,104(s0)
     ae8:	920a015d 	lbu	t2,349(s0)
     aec:	24180001 	li	t8,1
     af0:	314b0002 	andi	t3,t2,0x2
     af4:	5560000b 	bnezl	t3,b24 <EnBombf_Update+0x30c>
     af8:	ae180200 	sw	t8,512(s0)
     afc:	920c015e 	lbu	t4,350(s0)
     b00:	318d0002 	andi	t5,t4,0x2
     b04:	51a0000a 	beqzl	t5,b30 <EnBombf_Update+0x318>
     b08:	861901f8 	lh	t9,504(s0)
     b0c:	8e0e0158 	lw	t6,344(s0)
     b10:	24010005 	li	at,5
     b14:	91cf0002 	lbu	t7,2(t6)
     b18:	55e10005 	bnel	t7,at,b30 <EnBombf_Update+0x318>
     b1c:	861901f8 	lh	t9,504(s0)
     b20:	ae180200 	sw	t8,512(s0)
     b24:	1000000c 	b	b58 <EnBombf_Update+0x340>
     b28:	a60001f8 	sh	zero,504(s0)
     b2c:	861901f8 	lh	t9,504(s0)
     b30:	8fa4009c 	lw	a0,156(sp)
     b34:	26050024 	addiu	a1,s0,36
     b38:	2b210065 	slti	at,t9,101
     b3c:	14200006 	bnez	at,b58 <EnBombf_Update+0x340>
     b40:	3c0641f0 	lui	a2,0x41f0
     b44:	0c000000 	jal	0 <EnBombf_SetupAction>
     b48:	3c074248 	lui	a3,0x4248
     b4c:	10400002 	beqz	v0,b58 <EnBombf_Update+0x340>
     b50:	24090064 	li	t1,100
     b54:	a60901f8 	sh	t1,504(s0)
     b58:	8e0a0200 	lw	t2,512(s0)
     b5c:	44801000 	mtc1	zero,$f2
     b60:	3c010000 	lui	at,0x0
     b64:	514000c9 	beqzl	t2,e8c <EnBombf_Update+0x674>
     b68:	8e0b0028 	lw	t3,40(s0)
     b6c:	c4320060 	lwc1	$f18,96(at)
     b70:	260b0024 	addiu	t3,s0,36
     b74:	afab003c 	sw	t3,60(sp)
     b78:	e7b20060 	swc1	$f18,96(sp)
     b7c:	8d6f0000 	lw	t7,0(t3)
     b80:	27ac0068 	addiu	t4,sp,104
     b84:	3c0141c8 	lui	at,0x41c8
     b88:	ad8f0000 	sw	t7,0(t4)
     b8c:	8d6e0004 	lw	t6,4(t3)
     b90:	44813000 	mtc1	at,$f6
     b94:	3c190001 	lui	t9,0x1
     b98:	ad8e0004 	sw	t6,4(t4)
     b9c:	8d6f0008 	lw	t7,8(t3)
     ba0:	ad8f0008 	sw	t7,8(t4)
     ba4:	c7a4006c 	lwc1	$f4,108(sp)
     ba8:	8fb8009c 	lw	t8,156(sp)
     bac:	46062200 	add.s	$f8,$f4,$f6
     bb0:	0338c821 	addu	t9,t9,t8
     bb4:	e7a8006c 	swc1	$f8,108(sp)
     bb8:	860201f8 	lh	v0,504(s0)
     bbc:	2841007f 	slti	at,v0,127
     bc0:	50200022 	beqzl	at,c4c <EnBombf_Update+0x434>
     bc4:	24010003 	li	at,3
     bc8:	8f391de4 	lw	t9,7652(t9)
     bcc:	03002025 	move	a0,t8
     bd0:	02002825 	move	a1,s0
     bd4:	33290001 	andi	t1,t9,0x1
     bd8:	15200005 	bnez	t1,bf0 <EnBombf_Update+0x3d8>
     bdc:	27a60068 	addiu	a2,sp,104
     be0:	27aa0074 	addiu	t2,sp,116
     be4:	afaa0010 	sw	t2,16(sp)
     be8:	0c000000 	jal	0 <EnBombf_SetupAction>
     bec:	27a7008c 	addiu	a3,sp,140
     bf0:	02002025 	move	a0,s0
     bf4:	0c000000 	jal	0 <EnBombf_SetupAction>
     bf8:	2405100d 	li	a1,4109
     bfc:	3c014040 	lui	at,0x4040
     c00:	44818000 	mtc1	at,$f16
     c04:	c7aa006c 	lwc1	$f10,108(sp)
     c08:	27ab0058 	addiu	t3,sp,88
     c0c:	240c0032 	li	t4,50
     c10:	46105480 	add.s	$f18,$f10,$f16
     c14:	240d0005 	li	t5,5
     c18:	afad001c 	sw	t5,28(sp)
     c1c:	afac0018 	sw	t4,24(sp)
     c20:	e7b2006c 	swc1	$f18,108(sp)
     c24:	afab0010 	sw	t3,16(sp)
     c28:	afab0014 	sw	t3,20(sp)
     c2c:	8fa4009c 	lw	a0,156(sp)
     c30:	27a50068 	addiu	a1,sp,104
     c34:	27a6008c 	addiu	a2,sp,140
     c38:	0c000000 	jal	0 <EnBombf_SetupAction>
     c3c:	27a7005c 	addiu	a3,sp,92
     c40:	44801000 	mtc1	zero,$f2
     c44:	860201f8 	lh	v0,504(s0)
     c48:	24010003 	li	at,3
     c4c:	10410007 	beq	v0,at,c6c <EnBombf_Update+0x454>
     c50:	2401001e 	li	at,30
     c54:	10410005 	beq	v0,at,c6c <EnBombf_Update+0x454>
     c58:	24010032 	li	at,50
     c5c:	10410003 	beq	v0,at,c6c <EnBombf_Update+0x454>
     c60:	24010046 	li	at,70
     c64:	54410006 	bnel	v0,at,c80 <EnBombf_Update+0x468>
     c68:	28410064 	slti	at,v0,100
     c6c:	860e0206 	lh	t6,518(s0)
     c70:	860201f8 	lh	v0,504(s0)
     c74:	000e7843 	sra	t7,t6,0x1
     c78:	a60f0206 	sh	t7,518(s0)
     c7c:	28410064 	slti	at,v0,100
     c80:	50200015 	beqzl	at,cd8 <EnBombf_Update+0x4c0>
     c84:	86180206 	lh	t8,518(s0)
     c88:	86030206 	lh	v1,518(s0)
     c8c:	24790001 	addiu	t9,v1,1
     c90:	00594824 	and	t1,v0,t9
     c94:	51200010 	beqzl	t1,cd8 <EnBombf_Update+0x4c0>
     c98:	86180206 	lh	t8,518(s0)
     c9c:	44832000 	mtc1	v1,$f4
     ca0:	3c014316 	lui	at,0x4316
     ca4:	44810000 	mtc1	at,$f0
     ca8:	468021a0 	cvt.s.w	$f6,$f4
     cac:	26040208 	addiu	a0,s0,520
     cb0:	44050000 	mfc1	a1,$f0
     cb4:	3c063f80 	lui	a2,0x3f80
     cb8:	e7a20010 	swc1	$f2,16(sp)
     cbc:	46060203 	div.s	$f8,$f0,$f6
     cc0:	44074000 	mfc1	a3,$f8
     cc4:	0c000000 	jal	0 <EnBombf_SetupAction>
     cc8:	00000000 	nop
     ccc:	1000000f 	b	d0c <EnBombf_Update+0x4f4>
     cd0:	860201f8 	lh	v0,504(s0)
     cd4:	86180206 	lh	t8,518(s0)
     cd8:	3c014316 	lui	at,0x4316
     cdc:	44810000 	mtc1	at,$f0
     ce0:	44985000 	mtc1	t8,$f10
     ce4:	44051000 	mfc1	a1,$f2
     ce8:	e7a20010 	swc1	$f2,16(sp)
     cec:	46805420 	cvt.s.w	$f16,$f10
     cf0:	26040208 	addiu	a0,s0,520
     cf4:	3c063f80 	lui	a2,0x3f80
     cf8:	46100483 	div.s	$f18,$f0,$f16
     cfc:	44079000 	mfc1	a3,$f18
     d00:	0c000000 	jal	0 <EnBombf_SetupAction>
     d04:	00000000 	nop
     d08:	860201f8 	lh	v0,504(s0)
     d0c:	28410003 	slti	at,v0,3
     d10:	10200009 	beqz	at,d38 <EnBombf_Update+0x520>
     d14:	3c010000 	lui	at,0x0
     d18:	c4260064 	lwc1	$f6,100(at)
     d1c:	c6040050 	lwc1	$f4,80(s0)
     d20:	02002025 	move	a0,s0
     d24:	46062200 	add.s	$f8,$f4,$f6
     d28:	44054000 	mfc1	a1,$f8
     d2c:	0c000000 	jal	0 <EnBombf_SetupAction>
     d30:	00000000 	nop
     d34:	860201f8 	lh	v0,504(s0)
     d38:	14400053 	bnez	v0,e88 <EnBombf_Update+0x670>
     d3c:	8fab003c 	lw	t3,60(sp)
     d40:	8d6d0000 	lw	t5,0(t3)
     d44:	8fa5009c 	lw	a1,156(sp)
     d48:	27aa0068 	addiu	t2,sp,104
     d4c:	ad4d0000 	sw	t5,0(t2)
     d50:	8d6c0004 	lw	t4,4(t3)
     d54:	3c014120 	lui	at,0x4120
     d58:	44818000 	mtc1	at,$f16
     d5c:	ad4c0004 	sw	t4,4(t2)
     d60:	8d6d0008 	lw	t5,8(t3)
     d64:	3c010001 	lui	at,0x1
     d68:	00a11821 	addu	v1,a1,at
     d6c:	ad4d0008 	sw	t5,8(t2)
     d70:	c7aa006c 	lwc1	$f10,108(sp)
     d74:	afa30038 	sw	v1,56(sp)
     d78:	02002025 	move	a0,s0
     d7c:	46105480 	add.s	$f18,$f10,$f16
     d80:	0c000000 	jal	0 <EnBombf_SetupAction>
     d84:	e7b2006c 	swc1	$f18,108(sp)
     d88:	10400006 	beqz	v0,da4 <EnBombf_Update+0x58c>
     d8c:	8fa30038 	lw	v1,56(sp)
     d90:	3c0141f0 	lui	at,0x41f0
     d94:	44813000 	mtc1	at,$f6
     d98:	c7a4006c 	lwc1	$f4,108(sp)
     d9c:	46062200 	add.s	$f8,$f4,$f6
     da0:	e7a8006c 	swc1	$f8,108(sp)
     da4:	240e0064 	li	t6,100
     da8:	240f0013 	li	t7,19
     dac:	afaf0014 	sw	t7,20(sp)
     db0:	afae0010 	sw	t6,16(sp)
     db4:	8fa4009c 	lw	a0,156(sp)
     db8:	27a50068 	addiu	a1,sp,104
     dbc:	27a6008c 	addiu	a2,sp,140
     dc0:	27a70080 	addiu	a3,sp,128
     dc4:	0c000000 	jal	0 <EnBombf_SetupAction>
     dc8:	afa30038 	sw	v1,56(sp)
     dcc:	c60a0080 	lwc1	$f10,128(s0)
     dd0:	3c01c6fa 	lui	at,0xc6fa
     dd4:	44818000 	mtc1	at,$f16
     dd8:	e7aa006c 	swc1	$f10,108(sp)
     ddc:	c6120080 	lwc1	$f18,128(s0)
     de0:	8fa30038 	lw	v1,56(sp)
     de4:	8fa4009c 	lw	a0,156(sp)
     de8:	4612803c 	c.lt.s	$f16,$f18
     dec:	27a50068 	addiu	a1,sp,104
     df0:	27a6008c 	addiu	a2,sp,140
     df4:	27a70074 	addiu	a3,sp,116
     df8:	45020005 	bc1fl	e10 <EnBombf_Update+0x5f8>
     dfc:	02002025 	move	a0,s0
     e00:	0c000000 	jal	0 <EnBombf_SetupAction>
     e04:	afa30038 	sw	v1,56(sp)
     e08:	8fa30038 	lw	v1,56(sp)
     e0c:	02002025 	move	a0,s0
     e10:	2405180e 	li	a1,6158
     e14:	0c000000 	jal	0 <EnBombf_SetupAction>
     e18:	afa30038 	sw	v1,56(sp)
     e1c:	8fa30038 	lw	v1,56(sp)
     e20:	240800fa 	li	t0,250
     e24:	24050002 	li	a1,2
     e28:	a4680aba 	sh	t0,2746(v1)
     e2c:	84620aba 	lh	v0,2746(v1)
     e30:	a4680ab4 	sh	t0,2740(v1)
     e34:	2406000b 	li	a2,11
     e38:	a4620ab8 	sh	v0,2744(v1)
     e3c:	a4620ab6 	sh	v0,2742(v1)
     e40:	84620ab4 	lh	v0,2740(v1)
     e44:	24070008 	li	a3,8
     e48:	a4620ab2 	sh	v0,2738(v1)
     e4c:	a4620ab0 	sh	v0,2736(v1)
     e50:	8fa4009c 	lw	a0,156(sp)
     e54:	0c000000 	jal	0 <EnBombf_SetupAction>
     e58:	248401e0 	addiu	a0,a0,480
     e5c:	8e180004 	lw	t8,4(s0)
     e60:	24190001 	li	t9,1
     e64:	2409000a 	li	t1,10
     e68:	3c050000 	lui	a1,0x0
     e6c:	370a0020 	ori	t2,t8,0x20
     e70:	a619001c 	sh	t9,28(s0)
     e74:	a60901f8 	sh	t1,504(s0)
     e78:	ae0a0004 	sw	t2,4(s0)
     e7c:	24a50000 	addiu	a1,a1,0
     e80:	0c000000 	jal	0 <EnBombf_SetupAction>
     e84:	02002025 	move	a0,s0
     e88:	8e0b0028 	lw	t3,40(s0)
     e8c:	3c014120 	lui	at,0x4120
     e90:	8e0c0024 	lw	t4,36(s0)
     e94:	ae0b003c 	sw	t3,60(s0)
     e98:	c604003c 	lwc1	$f4,60(s0)
     e9c:	44813000 	mtc1	at,$f6
     ea0:	860d001c 	lh	t5,28(s0)
     ea4:	ae0c0038 	sw	t4,56(s0)
     ea8:	46062200 	add.s	$f8,$f4,$f6
     eac:	8e0c002c 	lw	t4,44(s0)
     eb0:	02002025 	move	a0,s0
     eb4:	2605014c 	addiu	a1,s0,332
     eb8:	e608003c 	swc1	$f8,60(s0)
     ebc:	1da00018 	bgtz	t5,f20 <EnBombf_Update+0x708>
     ec0:	ae0c0040 	sw	t4,64(s0)
     ec4:	0c000000 	jal	0 <EnBombf_SetupAction>
     ec8:	afa5003c 	sw	a1,60(sp)
     ecc:	3c013f80 	lui	at,0x3f80
     ed0:	44818000 	mtc1	at,$f16
     ed4:	c60a020c 	lwc1	$f10,524(s0)
     ed8:	460a803e 	c.le.s	$f16,$f10
     edc:	00000000 	nop
     ee0:	4502000a 	bc1fl	f0c <EnBombf_Update+0x6f4>
     ee4:	8fa4009c 	lw	a0,156(sp)
     ee8:	920e0204 	lbu	t6,516(s0)
     eec:	3c010001 	lui	at,0x1
     ef0:	34211e60 	ori	at,at,0x1e60
     ef4:	11c00004 	beqz	t6,f08 <EnBombf_Update+0x6f0>
     ef8:	8fa4009c 	lw	a0,156(sp)
     efc:	00812821 	addu	a1,a0,at
     f00:	0c000000 	jal	0 <EnBombf_SetupAction>
     f04:	8fa6003c 	lw	a2,60(sp)
     f08:	8fa4009c 	lw	a0,156(sp)
     f0c:	3c010001 	lui	at,0x1
     f10:	34211e60 	ori	at,at,0x1e60
     f14:	8fa6003c 	lw	a2,60(sp)
     f18:	0c000000 	jal	0 <EnBombf_SetupAction>
     f1c:	00812821 	addu	a1,a0,at
     f20:	3c010000 	lui	at,0x0
     f24:	c4240068 	lwc1	$f4,104(at)
     f28:	c6120050 	lwc1	$f18,80(s0)
     f2c:	4612203e 	c.le.s	$f4,$f18
     f30:	00000000 	nop
     f34:	4502001f 	bc1fl	fb4 <EnBombf_Update+0x79c>
     f38:	8fbf002c 	lw	ra,44(sp)
     f3c:	8609001c 	lh	t1,28(s0)
     f40:	24010001 	li	at,1
     f44:	1121001a 	beq	t1,at,fb0 <EnBombf_Update+0x798>
     f48:	3c0141a0 	lui	at,0x41a0
     f4c:	44814000 	mtc1	at,$f8
     f50:	c6060084 	lwc1	$f6,132(s0)
     f54:	8fa4009c 	lw	a0,156(sp)
     f58:	260500e4 	addiu	a1,s0,228
     f5c:	4606403e 	c.le.s	$f8,$f6
     f60:	2406180f 	li	a2,6159
     f64:	24070001 	li	a3,1
     f68:	24180001 	li	t8,1
     f6c:	45000008 	bc1f	f90 <EnBombf_Update+0x778>
     f70:	240a000a 	li	t2,10
     f74:	afb80010 	sw	t8,16(sp)
     f78:	0c000000 	jal	0 <EnBombf_SetupAction>
     f7c:	afaa0014 	sw	t2,20(sp)
     f80:	0c000000 	jal	0 <EnBombf_SetupAction>
     f84:	02002025 	move	a0,s0
     f88:	1000000a 	b	fb4 <EnBombf_Update+0x79c>
     f8c:	8fbf002c 	lw	ra,44(sp)
     f90:	96020088 	lhu	v0,136(s0)
     f94:	02002025 	move	a0,s0
     f98:	24052817 	li	a1,10263
     f9c:	304b0040 	andi	t3,v0,0x40
     fa0:	11600003 	beqz	t3,fb0 <EnBombf_Update+0x798>
     fa4:	304cffbf 	andi	t4,v0,0xffbf
     fa8:	0c000000 	jal	0 <EnBombf_SetupAction>
     fac:	a60c0088 	sh	t4,136(s0)
     fb0:	8fbf002c 	lw	ra,44(sp)
     fb4:	8fb00028 	lw	s0,40(sp)
     fb8:	27bd0098 	addiu	sp,sp,152
     fbc:	03e00008 	jr	ra
     fc0:	00000000 	nop

00000fc4 <EnBombf_NewMtxDList>:
     fc4:	27bdffd8 	addiu	sp,sp,-40
     fc8:	afbf0014 	sw	ra,20(sp)
     fcc:	afa5002c 	sw	a1,44(sp)
     fd0:	afa40028 	sw	a0,40(sp)
     fd4:	0c000000 	jal	0 <EnBombf_SetupAction>
     fd8:	24050028 	li	a1,40
     fdc:	8fa4002c 	lw	a0,44(sp)
     fe0:	3c010001 	lui	at,0x1
     fe4:	34211da0 	ori	at,at,0x1da0
     fe8:	afa20024 	sw	v0,36(sp)
     fec:	afa20020 	sw	v0,32(sp)
     ff0:	0c000000 	jal	0 <EnBombf_SetupAction>
     ff4:	00812021 	addu	a0,a0,at
     ff8:	8fa70020 	lw	a3,32(sp)
     ffc:	3c0eda38 	lui	t6,0xda38
    1000:	35ce0003 	ori	t6,t6,0x3
    1004:	acee0000 	sw	t6,0(a3)
    1008:	3c050000 	lui	a1,0x0
    100c:	24e30008 	addiu	v1,a3,8
    1010:	afa30020 	sw	v1,32(sp)
    1014:	24a50000 	addiu	a1,a1,0
    1018:	8fa40028 	lw	a0,40(sp)
    101c:	240603fd 	li	a2,1021
    1020:	0c000000 	jal	0 <EnBombf_SetupAction>
    1024:	afa7001c 	sw	a3,28(sp)
    1028:	8fa30020 	lw	v1,32(sp)
    102c:	8fa7001c 	lw	a3,28(sp)
    1030:	3c0fdf00 	lui	t7,0xdf00
    1034:	ace20004 	sw	v0,4(a3)
    1038:	ac600004 	sw	zero,4(v1)
    103c:	ac6f0000 	sw	t7,0(v1)
    1040:	8fbf0014 	lw	ra,20(sp)
    1044:	8fa20024 	lw	v0,36(sp)
    1048:	27bd0028 	addiu	sp,sp,40
    104c:	03e00008 	jr	ra
    1050:	00000000 	nop

00001054 <EnBombf_Draw>:
    1054:	27bdff98 	addiu	sp,sp,-104
    1058:	afbf001c 	sw	ra,28(sp)
    105c:	afb00018 	sw	s0,24(sp)
    1060:	afa40068 	sw	a0,104(sp)
    1064:	afa5006c 	sw	a1,108(sp)
    1068:	8ca50000 	lw	a1,0(a1)
    106c:	3c060000 	lui	a2,0x0
    1070:	24c60010 	addiu	a2,a2,16
    1074:	27a4004c 	addiu	a0,sp,76
    1078:	2407040a 	li	a3,1034
    107c:	0c000000 	jal	0 <EnBombf_SetupAction>
    1080:	00a08025 	move	s0,a1
    1084:	8fa20068 	lw	v0,104(sp)
    1088:	8fb8006c 	lw	t8,108(sp)
    108c:	00002025 	move	a0,zero
    1090:	844f001c 	lh	t7,28(v0)
    1094:	1de00083 	bgtz	t7,12a4 <EnBombf_Draw+0x250>
    1098:	00000000 	nop
    109c:	0c000000 	jal	0 <EnBombf_SetupAction>
    10a0:	8f040000 	lw	a0,0(t8)
    10a4:	8fb90068 	lw	t9,104(sp)
    10a8:	3c0ada38 	lui	t2,0xda38
    10ac:	8728001c 	lh	t0,28(t9)
    10b0:	5100002b 	beqzl	t0,1160 <EnBombf_Draw+0x10c>
    10b4:	8e0202c0 	lw	v0,704(s0)
    10b8:	8e0202c0 	lw	v0,704(s0)
    10bc:	354a0003 	ori	t2,t2,0x3
    10c0:	3c050000 	lui	a1,0x0
    10c4:	24490008 	addiu	t1,v0,8
    10c8:	ae0902c0 	sw	t1,704(s0)
    10cc:	ac4a0000 	sw	t2,0(v0)
    10d0:	8fab006c 	lw	t3,108(sp)
    10d4:	24a50020 	addiu	a1,a1,32
    10d8:	24060411 	li	a2,1041
    10dc:	8d640000 	lw	a0,0(t3)
    10e0:	0c000000 	jal	0 <EnBombf_SetupAction>
    10e4:	afa20048 	sw	v0,72(sp)
    10e8:	8fa30048 	lw	v1,72(sp)
    10ec:	3c0d0000 	lui	t5,0x0
    10f0:	25ad0000 	addiu	t5,t5,0
    10f4:	ac620004 	sw	v0,4(v1)
    10f8:	8e0202c0 	lw	v0,704(s0)
    10fc:	3c04de00 	lui	a0,0xde00
    1100:	44806000 	mtc1	zero,$f12
    1104:	244c0008 	addiu	t4,v0,8
    1108:	ae0c02c0 	sw	t4,704(s0)
    110c:	ac4d0004 	sw	t5,4(v0)
    1110:	ac440000 	sw	a0,0(v0)
    1114:	8e0202c0 	lw	v0,704(s0)
    1118:	3c0f0000 	lui	t7,0x0
    111c:	3c01447a 	lui	at,0x447a
    1120:	244e0008 	addiu	t6,v0,8
    1124:	ae0e02c0 	sw	t6,704(s0)
    1128:	25ef0000 	addiu	t7,t7,0
    112c:	44817000 	mtc1	at,$f14
    1130:	44066000 	mfc1	a2,$f12
    1134:	24070001 	li	a3,1
    1138:	ac4f0004 	sw	t7,4(v0)
    113c:	0c000000 	jal	0 <EnBombf_SetupAction>
    1140:	ac440000 	sw	a0,0(v0)
    1144:	8fb80068 	lw	t8,104(sp)
    1148:	24070001 	li	a3,1
    114c:	c70c020c 	lwc1	$f12,524(t8)
    1150:	44066000 	mfc1	a2,$f12
    1154:	0c000000 	jal	0 <EnBombf_SetupAction>
    1158:	46006386 	mov.s	$f14,$f12
    115c:	8e0202c0 	lw	v0,704(s0)
    1160:	3c09c8ff 	lui	t1,0xc8ff
    1164:	3529c8ff 	ori	t1,t1,0xc8ff
    1168:	24590008 	addiu	t9,v0,8
    116c:	ae1902c0 	sw	t9,704(s0)
    1170:	3c08fa00 	lui	t0,0xfa00
    1174:	ac480000 	sw	t0,0(v0)
    1178:	ac490004 	sw	t1,4(v0)
    117c:	8e0202c0 	lw	v0,704(s0)
    1180:	3c0be700 	lui	t3,0xe700
    1184:	3c0dfb00 	lui	t5,0xfb00
    1188:	244a0008 	addiu	t2,v0,8
    118c:	ae0a02c0 	sw	t2,704(s0)
    1190:	ac4b0000 	sw	t3,0(v0)
    1194:	ac400004 	sw	zero,4(v0)
    1198:	8e0202c0 	lw	v0,704(s0)
    119c:	3c010014 	lui	at,0x14
    11a0:	3c050000 	lui	a1,0x0
    11a4:	244c0008 	addiu	t4,v0,8
    11a8:	ae0c02c0 	sw	t4,704(s0)
    11ac:	ac4d0000 	sw	t5,0(v0)
    11b0:	8fae0068 	lw	t6,104(sp)
    11b4:	24a50030 	addiu	a1,a1,48
    11b8:	2406041e 	li	a2,1054
    11bc:	c5c40208 	lwc1	$f4,520(t6)
    11c0:	3c0eda38 	lui	t6,0xda38
    11c4:	35ce0003 	ori	t6,t6,0x3
    11c8:	4600218d 	trunc.w.s	$f6,$f4
    11cc:	44093000 	mfc1	t1,$f6
    11d0:	00000000 	nop
    11d4:	00095600 	sll	t2,t1,0x18
    11d8:	01415825 	or	t3,t2,at
    11dc:	356c0a00 	ori	t4,t3,0xa00
    11e0:	ac4c0004 	sw	t4,4(v0)
    11e4:	8e0202c0 	lw	v0,704(s0)
    11e8:	244d0008 	addiu	t5,v0,8
    11ec:	ae0d02c0 	sw	t5,704(s0)
    11f0:	ac4e0000 	sw	t6,0(v0)
    11f4:	8faf006c 	lw	t7,108(sp)
    11f8:	8de40000 	lw	a0,0(t7)
    11fc:	0c000000 	jal	0 <EnBombf_SetupAction>
    1200:	afa20030 	sw	v0,48(sp)
    1204:	8fa30030 	lw	v1,48(sp)
    1208:	3c19db06 	lui	t9,0xdb06
    120c:	37390020 	ori	t9,t9,0x20
    1210:	ac620004 	sw	v0,4(v1)
    1214:	8e0202c0 	lw	v0,704(s0)
    1218:	8fa5006c 	lw	a1,108(sp)
    121c:	24580008 	addiu	t8,v0,8
    1220:	ae1802c0 	sw	t8,704(s0)
    1224:	ac590000 	sw	t9,0(v0)
    1228:	8ca40000 	lw	a0,0(a1)
    122c:	0c000000 	jal	0 <EnBombf_SetupAction>
    1230:	afa2002c 	sw	v0,44(sp)
    1234:	8fa5006c 	lw	a1,108(sp)
    1238:	afa20024 	sw	v0,36(sp)
    123c:	0c000000 	jal	0 <EnBombf_SetupAction>
    1240:	8ca40000 	lw	a0,0(a1)
    1244:	8faa0024 	lw	t2,36(sp)
    1248:	3c0e0000 	lui	t6,0x0
    124c:	3c0100ff 	lui	at,0xff
    1250:	000a5900 	sll	t3,t2,0x4
    1254:	000b6702 	srl	t4,t3,0x1c
    1258:	000c6880 	sll	t5,t4,0x2
    125c:	01cd7021 	addu	t6,t6,t5
    1260:	8dce0000 	lw	t6,0(t6)
    1264:	3421ffff 	ori	at,at,0xffff
    1268:	00414824 	and	t1,v0,at
    126c:	8fb9002c 	lw	t9,44(sp)
    1270:	3c018000 	lui	at,0x8000
    1274:	012e7821 	addu	t7,t1,t6
    1278:	01e1c021 	addu	t8,t7,at
    127c:	af380004 	sw	t8,4(t9)
    1280:	8e0202c0 	lw	v0,704(s0)
    1284:	3c0b0000 	lui	t3,0x0
    1288:	256b0000 	addiu	t3,t3,0
    128c:	24480008 	addiu	t0,v0,8
    1290:	ae0802c0 	sw	t0,704(s0)
    1294:	3c0ade00 	lui	t2,0xde00
    1298:	ac4a0000 	sw	t2,0(v0)
    129c:	10000003 	b	12ac <EnBombf_Draw+0x258>
    12a0:	ac4b0004 	sw	t3,4(v0)
    12a4:	0c000000 	jal	0 <EnBombf_SetupAction>
    12a8:	24450198 	addiu	a1,v0,408
    12ac:	8fac006c 	lw	t4,108(sp)
    12b0:	3c060000 	lui	a2,0x0
    12b4:	24c60040 	addiu	a2,a2,64
    12b8:	27a4004c 	addiu	a0,sp,76
    12bc:	24070427 	li	a3,1063
    12c0:	0c000000 	jal	0 <EnBombf_SetupAction>
    12c4:	8d850000 	lw	a1,0(t4)
    12c8:	8fbf001c 	lw	ra,28(sp)
    12cc:	8fb00018 	lw	s0,24(sp)
    12d0:	27bd0068 	addiu	sp,sp,104
    12d4:	03e00008 	jr	ra
    12d8:	00000000 	nop
    12dc:	00000000 	nop
