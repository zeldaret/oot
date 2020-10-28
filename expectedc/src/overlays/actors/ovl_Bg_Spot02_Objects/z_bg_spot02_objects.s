
build/src/overlays/actors/ovl_Bg_Spot02_Objects/z_bg_spot02_objects.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot02Objects_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa50034 	sw	a1,52(sp)
      10:	00808025 	move	s0,a0
      14:	afa00024 	sw	zero,36(sp)
      18:	0c000000 	jal	0 <BgSpot02Objects_Init>
      1c:	00002825 	move	a1,zero
      20:	8619001c 	lh	t9,28(s0)
      24:	860e001c 	lh	t6,28(s0)
      28:	332800ff 	andi	t0,t9,0xff
      2c:	3109ffff 	andi	t1,t0,0xffff
      30:	2d210005 	sltiu	at,t1,5
      34:	000ec203 	sra	t8,t6,0x8
      38:	a218016b 	sb	t8,363(s0)
      3c:	10200086 	beqz	at,258 <L808AC87C+0x3c>
      40:	a608001c 	sh	t0,28(s0)
      44:	00094880 	sll	t1,t1,0x2
      48:	3c010000 	lui	at,0x0
      4c:	00290821 	addu	at,at,t1
      50:	8c290000 	lw	t1,0(at)
      54:	01200008 	jr	t1
      58:	00000000 	nop

0000005c <L808AC6BC>:
      5c:	3c050000 	lui	a1,0x0
      60:	24a50000 	addiu	a1,a1,0
      64:	0c000000 	jal	0 <BgSpot02Objects_Init>
      68:	02002025 	move	a0,s0
      6c:	8602001c 	lh	v0,28(s0)
      70:	8fa40034 	lw	a0,52(sp)
      74:	24010001 	li	at,1
      78:	14400016 	bnez	v0,d4 <L808AC6BC+0x78>
      7c:	00000000 	nop
      80:	0c000000 	jal	0 <BgSpot02Objects_Init>
      84:	9205016b 	lbu	a1,363(s0)
      88:	1040000a 	beqz	v0,b4 <L808AC6BC+0x58>
      8c:	3c040601 	lui	a0,0x601
      90:	3c01437f 	lui	at,0x437f
      94:	44813000 	mtc1	at,$f6
      98:	c6040028 	lwc1	$f4,40(s0)
      9c:	3c0a0000 	lui	t2,0x0
      a0:	254a0000 	addiu	t2,t2,0
      a4:	46062200 	add.s	$f8,$f4,$f6
      a8:	ae0a0164 	sw	t2,356(s0)
      ac:	10000004 	b	c0 <L808AC6BC+0x64>
      b0:	e6080028 	swc1	$f8,40(s0)
      b4:	3c0b0000 	lui	t3,0x0
      b8:	256b0000 	addiu	t3,t3,0
      bc:	ae0b0164 	sw	t3,356(s0)
      c0:	24842ba4 	addiu	a0,a0,11172
      c4:	0c000000 	jal	0 <BgSpot02Objects_Init>
      c8:	27a50024 	addiu	a1,sp,36
      cc:	1000001e 	b	148 <L808AC6BC+0xec>
      d0:	8fa40034 	lw	a0,52(sp)
      d4:	1441000d 	bne	v0,at,10c <L808AC6BC+0xb0>
      d8:	8faf0034 	lw	t7,52(sp)
      dc:	3c0c0000 	lui	t4,0x0
      e0:	258c0000 	addiu	t4,t4,0
      e4:	3c040601 	lui	a0,0x601
      e8:	ae0c0164 	sw	t4,356(s0)
      ec:	248428d8 	addiu	a0,a0,10456
      f0:	0c000000 	jal	0 <BgSpot02Objects_Init>
      f4:	27a50024 	addiu	a1,sp,36
      f8:	8e0d0004 	lw	t5,4(s0)
      fc:	3c010040 	lui	at,0x40
     100:	01a17025 	or	t6,t5,at
     104:	1000000f 	b	144 <L808AC6BC+0xe8>
     108:	ae0e0004 	sw	t6,4(s0)
     10c:	85f800a4 	lh	t8,164(t7)
     110:	24010053 	li	at,83
     114:	3c040601 	lui	a0,0x601
     118:	17010005 	bne	t8,at,130 <L808AC6BC+0xd4>
     11c:	248433ec 	addiu	a0,a0,13292
     120:	3c190000 	lui	t9,0x0
     124:	27390000 	addiu	t9,t9,0
     128:	10000004 	b	13c <L808AC6BC+0xe0>
     12c:	ae190164 	sw	t9,356(s0)
     130:	3c080000 	lui	t0,0x0
     134:	25080000 	addiu	t0,t0,0
     138:	ae080164 	sw	t0,356(s0)
     13c:	0c000000 	jal	0 <BgSpot02Objects_Init>
     140:	27a50024 	addiu	a1,sp,36
     144:	8fa40034 	lw	a0,52(sp)
     148:	02003025 	move	a2,s0
     14c:	8fa70024 	lw	a3,36(sp)
     150:	0c000000 	jal	0 <BgSpot02Objects_Init>
     154:	24850810 	addiu	a1,a0,2064
     158:	3c030000 	lui	v1,0x0
     15c:	24630000 	addiu	v1,v1,0
     160:	ae02014c 	sw	v0,332(s0)
     164:	94690ed6 	lhu	t1,3798(v1)
     168:	8fab0034 	lw	t3,52(sp)
     16c:	312a2000 	andi	t2,t1,0x2000
     170:	5140000a 	beqzl	t2,19c <L808AC6BC+0x140>
     174:	8c6e0004 	lw	t6,4(v1)
     178:	856c00a4 	lh	t4,164(t3)
     17c:	24010053 	li	at,83
     180:	55810006 	bnel	t4,at,19c <L808AC6BC+0x140>
     184:	8c6e0004 	lw	t6,4(v1)
     188:	860d001c 	lh	t5,28(s0)
     18c:	24010002 	li	at,2
     190:	11a10008 	beq	t5,at,1b4 <L808AC6BC+0x158>
     194:	00000000 	nop
     198:	8c6e0004 	lw	t6,4(v1)
     19c:	55c0002f 	bnezl	t6,25c <L808AC87C+0x40>
     1a0:	8fbf001c 	lw	ra,28(sp)
     1a4:	860f001c 	lh	t7,28(s0)
     1a8:	24010001 	li	at,1
     1ac:	55e1002b 	bnel	t7,at,25c <L808AC87C+0x40>
     1b0:	8fbf001c 	lw	ra,28(sp)
     1b4:	0c000000 	jal	0 <BgSpot02Objects_Init>
     1b8:	02002025 	move	a0,s0
     1bc:	10000027 	b	25c <L808AC87C+0x40>
     1c0:	8fbf001c 	lw	ra,28(sp)

000001c4 <L808AC824>:
     1c4:	a200016a 	sb	zero,362(s0)
     1c8:	8fa40034 	lw	a0,52(sp)
     1cc:	02003025 	move	a2,s0
     1d0:	24070007 	li	a3,7
     1d4:	0c000000 	jal	0 <BgSpot02Objects_Init>
     1d8:	24851c24 	addiu	a1,a0,7204
     1dc:	3c190000 	lui	t9,0x0
     1e0:	3c080000 	lui	t0,0x0
     1e4:	3c030000 	lui	v1,0x0
     1e8:	27390000 	addiu	t9,t9,0
     1ec:	25080000 	addiu	t0,t0,0
     1f0:	24630000 	addiu	v1,v1,0
     1f4:	ae190164 	sw	t9,356(s0)
     1f8:	ae080134 	sw	t0,308(s0)
     1fc:	94690ed6 	lhu	t1,3798(v1)
     200:	312a2000 	andi	t2,t1,0x2000
     204:	51400015 	beqzl	t2,25c <L808AC87C+0x40>
     208:	8fbf001c 	lw	ra,28(sp)
     20c:	0c000000 	jal	0 <BgSpot02Objects_Init>
     210:	02002025 	move	a0,s0
     214:	10000011 	b	25c <L808AC87C+0x40>
     218:	8fbf001c 	lw	ra,28(sp)

0000021c <L808AC87C>:
     21c:	240bfff4 	li	t3,-12
     220:	340cffff 	li	t4,0xffff
     224:	a60b0168 	sh	t3,360(s0)
     228:	a60c0170 	sh	t4,368(s0)
     22c:	8fa40034 	lw	a0,52(sp)
     230:	02003025 	move	a2,s0
     234:	24070007 	li	a3,7
     238:	0c000000 	jal	0 <BgSpot02Objects_Init>
     23c:	24851c24 	addiu	a1,a0,7204
     240:	3c0e0000 	lui	t6,0x0
     244:	3c0f0000 	lui	t7,0x0
     248:	25ce0000 	addiu	t6,t6,0
     24c:	25ef0000 	addiu	t7,t7,0
     250:	ae0e0164 	sw	t6,356(s0)
     254:	ae0f0134 	sw	t7,308(s0)
     258:	8fbf001c 	lw	ra,28(sp)
     25c:	8fb00018 	lw	s0,24(sp)
     260:	27bd0030 	addiu	sp,sp,48
     264:	03e00008 	jr	ra
     268:	00000000 	nop

0000026c <BgSpot02Objects_Destroy>:
     26c:	27bdffe8 	addiu	sp,sp,-24
     270:	afa40018 	sw	a0,24(sp)
     274:	8fae0018 	lw	t6,24(sp)
     278:	afbf0014 	sw	ra,20(sp)
     27c:	00a02025 	move	a0,a1
     280:	24a50810 	addiu	a1,a1,2064
     284:	0c000000 	jal	0 <BgSpot02Objects_Init>
     288:	8dc6014c 	lw	a2,332(t6)
     28c:	8fbf0014 	lw	ra,20(sp)
     290:	27bd0018 	addiu	sp,sp,24
     294:	03e00008 	jr	ra
     298:	00000000 	nop

0000029c <func_808AC8FC>:
     29c:	afa40000 	sw	a0,0(sp)
     2a0:	03e00008 	jr	ra
     2a4:	afa50004 	sw	a1,4(sp)

000002a8 <func_808AC908>:
     2a8:	27bdffc8 	addiu	sp,sp,-56
     2ac:	afbf0024 	sw	ra,36(sp)
     2b0:	afb00020 	sw	s0,32(sp)
     2b4:	90ae1d6c 	lbu	t6,7532(a1)
     2b8:	00808025 	move	s0,a0
     2bc:	00a03025 	move	a2,a1
     2c0:	51c00035 	beqzl	t6,398 <func_808AC908+0xf0>
     2c4:	8fbf0024 	lw	ra,36(sp)
     2c8:	8ca21d98 	lw	v0,7576(a1)
     2cc:	50400032 	beqzl	v0,398 <func_808AC908+0xf0>
     2d0:	8fbf0024 	lw	ra,36(sp)
     2d4:	944f0000 	lhu	t7,0(v0)
     2d8:	24010002 	li	at,2
     2dc:	240528c2 	li	a1,10434
     2e0:	55e1002d 	bnel	t7,at,398 <func_808AC908+0xf0>
     2e4:	8fbf0024 	lw	ra,36(sp)
     2e8:	0c000000 	jal	0 <BgSpot02Objects_Init>
     2ec:	afa6003c 	sw	a2,60(sp)
     2f0:	3c020000 	lui	v0,0x0
     2f4:	24420000 	addiu	v0,v0,0
     2f8:	94580ed6 	lhu	t8,3798(v0)
     2fc:	24080019 	li	t0,25
     300:	37192000 	ori	t9,t8,0x2000
     304:	a4590ed6 	sh	t9,3798(v0)
     308:	a6080168 	sh	t0,360(s0)
     30c:	0c000000 	jal	0 <BgSpot02Objects_Init>
     310:	860400b6 	lh	a0,182(s0)
     314:	3c014248 	lui	at,0x4248
     318:	44812000 	mtc1	at,$f4
     31c:	c6080024 	lwc1	$f8,36(s0)
     320:	3c0141f0 	lui	at,0x41f0
     324:	46040182 	mul.s	$f6,$f0,$f4
     328:	44819000 	mtc1	at,$f18
     32c:	46083280 	add.s	$f10,$f6,$f8
     330:	e7aa002c 	swc1	$f10,44(sp)
     334:	c6100028 	lwc1	$f16,40(s0)
     338:	46128100 	add.s	$f4,$f16,$f18
     33c:	e7a40030 	swc1	$f4,48(sp)
     340:	0c000000 	jal	0 <BgSpot02Objects_Init>
     344:	860400b6 	lh	a0,182(s0)
     348:	3c014248 	lui	at,0x4248
     34c:	44813000 	mtc1	at,$f6
     350:	c60a002c 	lwc1	$f10,44(s0)
     354:	3c060000 	lui	a2,0x0
     358:	46060202 	mul.s	$f8,$f0,$f6
     35c:	24c60000 	addiu	a2,a2,0
     360:	24090046 	li	t1,70
     364:	240a001e 	li	t2,30
     368:	afaa0014 	sw	t2,20(sp)
     36c:	afa90010 	sw	t1,16(sp)
     370:	00c03825 	move	a3,a2
     374:	460a4400 	add.s	$f16,$f8,$f10
     378:	8fa4003c 	lw	a0,60(sp)
     37c:	27a5002c 	addiu	a1,sp,44
     380:	0c000000 	jal	0 <BgSpot02Objects_Init>
     384:	e7b00034 	swc1	$f16,52(sp)
     388:	3c0b0000 	lui	t3,0x0
     38c:	256b0000 	addiu	t3,t3,0
     390:	ae0b0164 	sw	t3,356(s0)
     394:	8fbf0024 	lw	ra,36(sp)
     398:	8fb00020 	lw	s0,32(sp)
     39c:	27bd0038 	addiu	sp,sp,56
     3a0:	03e00008 	jr	ra
     3a4:	00000000 	nop

000003a8 <func_808ACA08>:
     3a8:	27bdffc0 	addiu	sp,sp,-64
     3ac:	afbf0034 	sw	ra,52(sp)
     3b0:	afb00030 	sw	s0,48(sp)
     3b4:	afa50044 	sw	a1,68(sp)
     3b8:	8caf1c44 	lw	t7,7236(a1)
     3bc:	00808025 	move	s0,a0
     3c0:	24010014 	li	at,20
     3c4:	afaf003c 	sw	t7,60(sp)
     3c8:	84820168 	lh	v0,360(a0)
     3cc:	26050024 	addiu	a1,s0,36
     3d0:	3c0641f0 	lui	a2,0x41f0
     3d4:	10400003 	beqz	v0,3e4 <func_808ACA08+0x3c>
     3d8:	2458ffff 	addiu	t8,v0,-1
     3dc:	a4980168 	sh	t8,360(a0)
     3e0:	84820168 	lh	v0,360(a0)
     3e4:	14410013 	bne	v0,at,434 <func_808ACA08+0x8c>
     3e8:	00003825 	move	a3,zero
     3ec:	ae000134 	sw	zero,308(s0)
     3f0:	3c0c0601 	lui	t4,0x601
     3f4:	258c2d30 	addiu	t4,t4,11568
     3f8:	24190019 	li	t9,25
     3fc:	24080005 	li	t0,5
     400:	24090028 	li	t1,40
     404:	240a00a1 	li	t2,161
     408:	240b0014 	li	t3,20
     40c:	afab0020 	sw	t3,32(sp)
     410:	afaa001c 	sw	t2,28(sp)
     414:	afa90018 	sw	t1,24(sp)
     418:	afa80014 	sw	t0,20(sp)
     41c:	afb90010 	sw	t9,16(sp)
     420:	afac0024 	sw	t4,36(sp)
     424:	0c000000 	jal	0 <BgSpot02Objects_Init>
     428:	8fa40044 	lw	a0,68(sp)
     42c:	10000006 	b	448 <func_808ACA08+0xa0>
     430:	8fad0044 	lw	t5,68(sp)
     434:	54400004 	bnezl	v0,448 <func_808ACA08+0xa0>
     438:	8fad0044 	lw	t5,68(sp)
     43c:	0c000000 	jal	0 <BgSpot02Objects_Init>
     440:	02002025 	move	a0,s0
     444:	8fad0044 	lw	t5,68(sp)
     448:	24010192 	li	at,402
     44c:	3c0f0000 	lui	t7,0x0
     450:	95ae1d74 	lhu	t6,7540(t5)
     454:	55c1000d 	bnel	t6,at,48c <func_808ACA08+0xe4>
     458:	8fbf0034 	lw	ra,52(sp)
     45c:	8def0004 	lw	t7,4(t7)
     460:	2405683e 	li	a1,26686
     464:	8fa4003c 	lw	a0,60(sp)
     468:	11e00005 	beqz	t7,480 <func_808ACA08+0xd8>
     46c:	00000000 	nop
     470:	0c000000 	jal	0 <BgSpot02Objects_Init>
     474:	8fa4003c 	lw	a0,60(sp)
     478:	10000004 	b	48c <func_808ACA08+0xe4>
     47c:	8fbf0034 	lw	ra,52(sp)
     480:	0c000000 	jal	0 <BgSpot02Objects_Init>
     484:	2405681e 	li	a1,26654
     488:	8fbf0034 	lw	ra,52(sp)
     48c:	8fb00030 	lw	s0,48(sp)
     490:	27bd0040 	addiu	sp,sp,64
     494:	03e00008 	jr	ra
     498:	00000000 	nop

0000049c <func_808ACAFC>:
     49c:	27bdffe8 	addiu	sp,sp,-24
     4a0:	afa40018 	sw	a0,24(sp)
     4a4:	8fae0018 	lw	t6,24(sp)
     4a8:	afbf0014 	sw	ra,20(sp)
     4ac:	afa5001c 	sw	a1,28(sp)
     4b0:	00a02025 	move	a0,a1
     4b4:	0c000000 	jal	0 <BgSpot02Objects_Init>
     4b8:	91c5016b 	lbu	a1,363(t6)
     4bc:	1040000a 	beqz	v0,4e8 <func_808ACAFC+0x4c>
     4c0:	8fa40018 	lw	a0,24(sp)
     4c4:	0c000000 	jal	0 <BgSpot02Objects_Init>
     4c8:	3c054270 	lui	a1,0x4270
     4cc:	8fa4001c 	lw	a0,28(sp)
     4d0:	0c000000 	jal	0 <BgSpot02Objects_Init>
     4d4:	8fa50018 	lw	a1,24(sp)
     4d8:	8fb80018 	lw	t8,24(sp)
     4dc:	3c0f0000 	lui	t7,0x0
     4e0:	25ef0000 	addiu	t7,t7,0
     4e4:	af0f0164 	sw	t7,356(t8)
     4e8:	8fbf0014 	lw	ra,20(sp)
     4ec:	27bd0018 	addiu	sp,sp,24
     4f0:	03e00008 	jr	ra
     4f4:	00000000 	nop

000004f8 <func_808ACB58>:
     4f8:	27bdffe8 	addiu	sp,sp,-24
     4fc:	afbf0014 	sw	ra,20(sp)
     500:	afa5001c 	sw	a1,28(sp)
     504:	00803825 	move	a3,a0
     508:	3c01437f 	lui	at,0x437f
     50c:	44813000 	mtc1	at,$f6
     510:	c4e4000c 	lwc1	$f4,12(a3)
     514:	afa70018 	sw	a3,24(sp)
     518:	24840028 	addiu	a0,a0,40
     51c:	46062200 	add.s	$f8,$f4,$f6
     520:	3c063f80 	lui	a2,0x3f80
     524:	44054000 	mfc1	a1,$f8
     528:	0c000000 	jal	0 <BgSpot02Objects_Init>
     52c:	00000000 	nop
     530:	1040000a 	beqz	v0,55c <func_808ACB58+0x64>
     534:	8fa70018 	lw	a3,24(sp)
     538:	00e02025 	move	a0,a3
     53c:	24052893 	li	a1,10387
     540:	0c000000 	jal	0 <BgSpot02Objects_Init>
     544:	afa70018 	sw	a3,24(sp)
     548:	8fa70018 	lw	a3,24(sp)
     54c:	3c0e0000 	lui	t6,0x0
     550:	25ce0000 	addiu	t6,t6,0
     554:	10000004 	b	568 <func_808ACB58+0x70>
     558:	acee0164 	sw	t6,356(a3)
     55c:	00e02025 	move	a0,a3
     560:	0c000000 	jal	0 <BgSpot02Objects_Init>
     564:	240500cb 	li	a1,203
     568:	8fbf0014 	lw	ra,20(sp)
     56c:	27bd0018 	addiu	sp,sp,24
     570:	03e00008 	jr	ra
     574:	00000000 	nop

00000578 <BgSpot02Objects_Update>:
     578:	27bdffe8 	addiu	sp,sp,-24
     57c:	afbf0014 	sw	ra,20(sp)
     580:	8c990164 	lw	t9,356(a0)
     584:	0320f809 	jalr	t9
     588:	00000000 	nop
     58c:	8fbf0014 	lw	ra,20(sp)
     590:	27bd0018 	addiu	sp,sp,24
     594:	03e00008 	jr	ra
     598:	00000000 	nop

0000059c <BgSpot02Objects_Draw>:
     59c:	27bdffe8 	addiu	sp,sp,-24
     5a0:	afbf0014 	sw	ra,20(sp)
     5a4:	00803825 	move	a3,a0
     5a8:	84ee001c 	lh	t6,28(a3)
     5ac:	00a02025 	move	a0,a1
     5b0:	3c050000 	lui	a1,0x0
     5b4:	000e7880 	sll	t7,t6,0x2
     5b8:	00af2821 	addu	a1,a1,t7
     5bc:	0c000000 	jal	0 <BgSpot02Objects_Init>
     5c0:	8ca50000 	lw	a1,0(a1)
     5c4:	8fbf0014 	lw	ra,20(sp)
     5c8:	27bd0018 	addiu	sp,sp,24
     5cc:	03e00008 	jr	ra
     5d0:	00000000 	nop

000005d4 <func_808ACC34>:
     5d4:	27bdffe8 	addiu	sp,sp,-24
     5d8:	afbf0014 	sw	ra,20(sp)
     5dc:	90ae1d6c 	lbu	t6,7532(a1)
     5e0:	51c00012 	beqzl	t6,62c <func_808ACC34+0x58>
     5e4:	94a21d74 	lhu	v0,7540(a1)
     5e8:	8ca21d8c 	lw	v0,7564(a1)
     5ec:	5040000f 	beqzl	v0,62c <func_808ACC34+0x58>
     5f0:	94a21d74 	lhu	v0,7540(a1)
     5f4:	944f0000 	lhu	t7,0(v0)
     5f8:	24010002 	li	at,2
     5fc:	55e1000b 	bnel	t7,at,62c <func_808ACC34+0x58>
     600:	94a21d74 	lhu	v0,7540(a1)
     604:	9098016a 	lbu	t8,362(a0)
     608:	27190001 	addiu	t9,t8,1
     60c:	332800ff 	andi	t0,t9,0xff
     610:	2901000c 	slti	at,t0,12
     614:	14200004 	bnez	at,628 <func_808ACC34+0x54>
     618:	a099016a 	sb	t9,362(a0)
     61c:	0c000000 	jal	0 <BgSpot02Objects_Init>
     620:	afa5001c 	sw	a1,28(sp)
     624:	8fa5001c 	lw	a1,28(sp)
     628:	94a21d74 	lhu	v0,7540(a1)
     62c:	240100f5 	li	at,245
     630:	10410003 	beq	v0,at,640 <func_808ACC34+0x6c>
     634:	2401015f 	li	at,351
     638:	54410004 	bnel	v0,at,64c <func_808ACC34+0x78>
     63c:	8fbf0014 	lw	ra,20(sp)
     640:	0c000000 	jal	0 <BgSpot02Objects_Init>
     644:	2404282e 	li	a0,10286
     648:	8fbf0014 	lw	ra,20(sp)
     64c:	27bd0018 	addiu	sp,sp,24
     650:	03e00008 	jr	ra
     654:	00000000 	nop

00000658 <func_808ACCB8>:
     658:	27bdff88 	addiu	sp,sp,-120
     65c:	afb10018 	sw	s1,24(sp)
     660:	00a08825 	move	s1,a1
     664:	afbf001c 	sw	ra,28(sp)
     668:	afb00014 	sw	s0,20(sp)
     66c:	afa40078 	sw	a0,120(sp)
     670:	8ca50000 	lw	a1,0(a1)
     674:	3c060000 	lui	a2,0x0
     678:	24c60000 	addiu	a2,a2,0
     67c:	27a40050 	addiu	a0,sp,80
     680:	24070258 	li	a3,600
     684:	0c000000 	jal	0 <BgSpot02Objects_Init>
     688:	00a08025 	move	s0,a1
     68c:	922e1d6c 	lbu	t6,7532(s1)
     690:	11c001ad 	beqz	t6,d48 <func_808ACCB8+0x6f0>
     694:	00000000 	nop
     698:	8e231d8c 	lw	v1,7564(s1)
     69c:	106001aa 	beqz	v1,d48 <func_808ACCB8+0x6f0>
     6a0:	00000000 	nop
     6a4:	946f0000 	lhu	t7,0(v1)
     6a8:	24010002 	li	at,2
     6ac:	8fa50078 	lw	a1,120(sp)
     6b0:	15e101a5 	bne	t7,at,d48 <func_808ACCB8+0x6f0>
     6b4:	00000000 	nop
     6b8:	90a2016a 	lbu	v0,362(a1)
     6bc:	28410005 	slti	at,v0,5
     6c0:	10200061 	beqz	at,848 <func_808ACCB8+0x1f0>
     6c4:	00402025 	move	a0,v0
     6c8:	3c01437f 	lui	at,0x437f
     6cc:	44816000 	mtc1	at,$f12
     6d0:	44822000 	mtc1	v0,$f4
     6d4:	3c0142c8 	lui	at,0x42c8
     6d8:	44817000 	mtc1	at,$f14
     6dc:	04410005 	bgez	v0,6f4 <func_808ACCB8+0x9c>
     6e0:	468021a0 	cvt.s.w	$f6,$f4
     6e4:	3c014f80 	lui	at,0x4f80
     6e8:	44814000 	mtc1	at,$f8
     6ec:	00000000 	nop
     6f0:	46083180 	add.s	$f6,$f6,$f8
     6f4:	3c0140a0 	lui	at,0x40a0
     6f8:	44815000 	mtc1	at,$f10
     6fc:	3c01431b 	lui	at,0x431b
     700:	44818000 	mtc1	at,$f16
     704:	460a3003 	div.s	$f0,$f6,$f10
     708:	240a0001 	li	t2,1
     70c:	241800ff 	li	t8,255
     710:	241900ff 	li	t9,255
     714:	240800ff 	li	t0,255
     718:	a3a8006b 	sb	t0,107(sp)
     71c:	a3b9006a 	sb	t9,106(sp)
     720:	a3b80069 	sb	t8,105(sp)
     724:	3c014f00 	lui	at,0x4f00
     728:	46008082 	mul.s	$f2,$f16,$f0
     72c:	460e1480 	add.s	$f18,$f2,$f14
     730:	4449f800 	cfc1	t1,$31
     734:	44caf800 	ctc1	t2,$31
     738:	00000000 	nop
     73c:	46009124 	cvt.w.s	$f4,$f18
     740:	444af800 	cfc1	t2,$31
     744:	00000000 	nop
     748:	314a0078 	andi	t2,t2,0x78
     74c:	51400013 	beqzl	t2,79c <func_808ACCB8+0x144>
     750:	440a2000 	mfc1	t2,$f4
     754:	44812000 	mtc1	at,$f4
     758:	240a0001 	li	t2,1
     75c:	46049101 	sub.s	$f4,$f18,$f4
     760:	44caf800 	ctc1	t2,$31
     764:	00000000 	nop
     768:	46002124 	cvt.w.s	$f4,$f4
     76c:	444af800 	cfc1	t2,$31
     770:	00000000 	nop
     774:	314a0078 	andi	t2,t2,0x78
     778:	15400005 	bnez	t2,790 <func_808ACCB8+0x138>
     77c:	00000000 	nop
     780:	440a2000 	mfc1	t2,$f4
     784:	3c018000 	lui	at,0x8000
     788:	10000007 	b	7a8 <func_808ACCB8+0x150>
     78c:	01415025 	or	t2,t2,at
     790:	10000005 	b	7a8 <func_808ACCB8+0x150>
     794:	240affff 	li	t2,-1
     798:	440a2000 	mfc1	t2,$f4
     79c:	00000000 	nop
     7a0:	0540fffb 	bltz	t2,790 <func_808ACCB8+0x138>
     7a4:	00000000 	nop
     7a8:	44c9f800 	ctc1	t1,$31
     7ac:	240d0001 	li	t5,1
     7b0:	240b00ff 	li	t3,255
     7b4:	46026201 	sub.s	$f8,$f12,$f2
     7b8:	a3aa0068 	sb	t2,104(sp)
     7bc:	a3ab0067 	sb	t3,103(sp)
     7c0:	3c014f00 	lui	at,0x4f00
     7c4:	444cf800 	cfc1	t4,$31
     7c8:	44cdf800 	ctc1	t5,$31
     7cc:	00000000 	nop
     7d0:	460041a4 	cvt.w.s	$f6,$f8
     7d4:	444df800 	cfc1	t5,$31
     7d8:	00000000 	nop
     7dc:	31ad0078 	andi	t5,t5,0x78
     7e0:	51a00013 	beqzl	t5,830 <func_808ACCB8+0x1d8>
     7e4:	440d3000 	mfc1	t5,$f6
     7e8:	44813000 	mtc1	at,$f6
     7ec:	240d0001 	li	t5,1
     7f0:	46064181 	sub.s	$f6,$f8,$f6
     7f4:	44cdf800 	ctc1	t5,$31
     7f8:	00000000 	nop
     7fc:	460031a4 	cvt.w.s	$f6,$f6
     800:	444df800 	cfc1	t5,$31
     804:	00000000 	nop
     808:	31ad0078 	andi	t5,t5,0x78
     80c:	15a00005 	bnez	t5,824 <func_808ACCB8+0x1cc>
     810:	00000000 	nop
     814:	440d3000 	mfc1	t5,$f6
     818:	3c018000 	lui	at,0x8000
     81c:	10000007 	b	83c <func_808ACCB8+0x1e4>
     820:	01a16825 	or	t5,t5,at
     824:	10000005 	b	83c <func_808ACCB8+0x1e4>
     828:	240dffff 	li	t5,-1
     82c:	440d3000 	mfc1	t5,$f6
     830:	00000000 	nop
     834:	05a0fffb 	bltz	t5,824 <func_808ACCB8+0x1cc>
     838:	00000000 	nop
     83c:	44ccf800 	ctc1	t4,$31
     840:	100000a2 	b	acc <func_808ACCB8+0x474>
     844:	a3ad0066 	sb	t5,102(sp)
     848:	248efffb 	addiu	t6,a0,-5
     84c:	448e5000 	mtc1	t6,$f10
     850:	3c01437f 	lui	at,0x437f
     854:	44816000 	mtc1	at,$f12
     858:	46805420 	cvt.s.w	$f16,$f10
     85c:	3c0142c8 	lui	at,0x42c8
     860:	44817000 	mtc1	at,$f14
     864:	3c0140e0 	lui	at,0x40e0
     868:	44819000 	mtc1	at,$f18
     86c:	24020001 	li	v0,1
     870:	3c014f00 	lui	at,0x4f00
     874:	46128003 	div.s	$f0,$f16,$f18
     878:	46006102 	mul.s	$f4,$f12,$f0
     87c:	46046201 	sub.s	$f8,$f12,$f4
     880:	444ff800 	cfc1	t7,$31
     884:	44c2f800 	ctc1	v0,$31
     888:	00000000 	nop
     88c:	460041a4 	cvt.w.s	$f6,$f8
     890:	4442f800 	cfc1	v0,$31
     894:	00000000 	nop
     898:	30420078 	andi	v0,v0,0x78
     89c:	50400013 	beqzl	v0,8ec <func_808ACCB8+0x294>
     8a0:	44023000 	mfc1	v0,$f6
     8a4:	44813000 	mtc1	at,$f6
     8a8:	24020001 	li	v0,1
     8ac:	46064181 	sub.s	$f6,$f8,$f6
     8b0:	44c2f800 	ctc1	v0,$31
     8b4:	00000000 	nop
     8b8:	460031a4 	cvt.w.s	$f6,$f6
     8bc:	4442f800 	cfc1	v0,$31
     8c0:	00000000 	nop
     8c4:	30420078 	andi	v0,v0,0x78
     8c8:	14400005 	bnez	v0,8e0 <func_808ACCB8+0x288>
     8cc:	00000000 	nop
     8d0:	44023000 	mfc1	v0,$f6
     8d4:	3c018000 	lui	at,0x8000
     8d8:	10000007 	b	8f8 <func_808ACCB8+0x2a0>
     8dc:	00411025 	or	v0,v0,at
     8e0:	10000005 	b	8f8 <func_808ACCB8+0x2a0>
     8e4:	2402ffff 	li	v0,-1
     8e8:	44023000 	mfc1	v0,$f6
     8ec:	00000000 	nop
     8f0:	0440fffb 	bltz	v0,8e0 <func_808ACCB8+0x288>
     8f4:	00000000 	nop
     8f8:	3c01425c 	lui	at,0x425c
     8fc:	44cff800 	ctc1	t7,$31
     900:	44815000 	mtc1	at,$f10
     904:	24190001 	li	t9,1
     908:	a3a2006b 	sb	v0,107(sp)
     90c:	46005402 	mul.s	$f16,$f10,$f0
     910:	3c014f00 	lui	at,0x4f00
     914:	46106481 	sub.s	$f18,$f12,$f16
     918:	4458f800 	cfc1	t8,$31
     91c:	44d9f800 	ctc1	t9,$31
     920:	00000000 	nop
     924:	46009124 	cvt.w.s	$f4,$f18
     928:	4459f800 	cfc1	t9,$31
     92c:	00000000 	nop
     930:	33390078 	andi	t9,t9,0x78
     934:	53200013 	beqzl	t9,984 <func_808ACCB8+0x32c>
     938:	44192000 	mfc1	t9,$f4
     93c:	44812000 	mtc1	at,$f4
     940:	24190001 	li	t9,1
     944:	46049101 	sub.s	$f4,$f18,$f4
     948:	44d9f800 	ctc1	t9,$31
     94c:	00000000 	nop
     950:	46002124 	cvt.w.s	$f4,$f4
     954:	4459f800 	cfc1	t9,$31
     958:	00000000 	nop
     95c:	33390078 	andi	t9,t9,0x78
     960:	17200005 	bnez	t9,978 <func_808ACCB8+0x320>
     964:	00000000 	nop
     968:	44192000 	mfc1	t9,$f4
     96c:	3c018000 	lui	at,0x8000
     970:	10000007 	b	990 <func_808ACCB8+0x338>
     974:	0321c825 	or	t9,t9,at
     978:	10000005 	b	990 <func_808ACCB8+0x338>
     97c:	2419ffff 	li	t9,-1
     980:	44192000 	mfc1	t9,$f4
     984:	00000000 	nop
     988:	0720fffb 	bltz	t9,978 <func_808ACCB8+0x320>
     98c:	00000000 	nop
     990:	3c0142d2 	lui	at,0x42d2
     994:	44d8f800 	ctc1	t8,$31
     998:	44814000 	mtc1	at,$f8
     99c:	24090001 	li	t1,1
     9a0:	a3b9006a 	sb	t9,106(sp)
     9a4:	46004182 	mul.s	$f6,$f8,$f0
     9a8:	a3a20069 	sb	v0,105(sp)
     9ac:	3c014f00 	lui	at,0x4f00
     9b0:	46066281 	sub.s	$f10,$f12,$f6
     9b4:	4448f800 	cfc1	t0,$31
     9b8:	44c9f800 	ctc1	t1,$31
     9bc:	00000000 	nop
     9c0:	46005424 	cvt.w.s	$f16,$f10
     9c4:	4449f800 	cfc1	t1,$31
     9c8:	00000000 	nop
     9cc:	31290078 	andi	t1,t1,0x78
     9d0:	51200013 	beqzl	t1,a20 <func_808ACCB8+0x3c8>
     9d4:	44098000 	mfc1	t1,$f16
     9d8:	44818000 	mtc1	at,$f16
     9dc:	24090001 	li	t1,1
     9e0:	46105401 	sub.s	$f16,$f10,$f16
     9e4:	44c9f800 	ctc1	t1,$31
     9e8:	00000000 	nop
     9ec:	46008424 	cvt.w.s	$f16,$f16
     9f0:	4449f800 	cfc1	t1,$31
     9f4:	00000000 	nop
     9f8:	31290078 	andi	t1,t1,0x78
     9fc:	15200005 	bnez	t1,a14 <func_808ACCB8+0x3bc>
     a00:	00000000 	nop
     a04:	44098000 	mfc1	t1,$f16
     a08:	3c018000 	lui	at,0x8000
     a0c:	10000007 	b	a2c <func_808ACCB8+0x3d4>
     a10:	01214825 	or	t1,t1,at
     a14:	10000005 	b	a2c <func_808ACCB8+0x3d4>
     a18:	2409ffff 	li	t1,-1
     a1c:	44098000 	mfc1	t1,$f16
     a20:	00000000 	nop
     a24:	0520fffb 	bltz	t1,a14 <func_808ACCB8+0x3bc>
     a28:	00000000 	nop
     a2c:	44c8f800 	ctc1	t0,$31
     a30:	240b0001 	li	t3,1
     a34:	a3a90068 	sb	t1,104(sp)
     a38:	46007482 	mul.s	$f18,$f14,$f0
     a3c:	a3a20067 	sb	v0,103(sp)
     a40:	3c014f00 	lui	at,0x4f00
     a44:	460e9100 	add.s	$f4,$f18,$f14
     a48:	444af800 	cfc1	t2,$31
     a4c:	44cbf800 	ctc1	t3,$31
     a50:	00000000 	nop
     a54:	46002224 	cvt.w.s	$f8,$f4
     a58:	444bf800 	cfc1	t3,$31
     a5c:	00000000 	nop
     a60:	316b0078 	andi	t3,t3,0x78
     a64:	51600013 	beqzl	t3,ab4 <func_808ACCB8+0x45c>
     a68:	440b4000 	mfc1	t3,$f8
     a6c:	44814000 	mtc1	at,$f8
     a70:	240b0001 	li	t3,1
     a74:	46082201 	sub.s	$f8,$f4,$f8
     a78:	44cbf800 	ctc1	t3,$31
     a7c:	00000000 	nop
     a80:	46004224 	cvt.w.s	$f8,$f8
     a84:	444bf800 	cfc1	t3,$31
     a88:	00000000 	nop
     a8c:	316b0078 	andi	t3,t3,0x78
     a90:	15600005 	bnez	t3,aa8 <func_808ACCB8+0x450>
     a94:	00000000 	nop
     a98:	440b4000 	mfc1	t3,$f8
     a9c:	3c018000 	lui	at,0x8000
     aa0:	10000007 	b	ac0 <func_808ACCB8+0x468>
     aa4:	01615825 	or	t3,t3,at
     aa8:	10000005 	b	ac0 <func_808ACCB8+0x468>
     aac:	240bffff 	li	t3,-1
     ab0:	440b4000 	mfc1	t3,$f8
     ab4:	00000000 	nop
     ab8:	0560fffb 	bltz	t3,aa8 <func_808ACCB8+0x450>
     abc:	00000000 	nop
     ac0:	44caf800 	ctc1	t2,$31
     ac4:	a3ab0066 	sb	t3,102(sp)
     ac8:	00000000 	nop
     acc:	8c6e0014 	lw	t6,20(v1)
     ad0:	8c6c000c 	lw	t4,12(v1)
     ad4:	8c6d0010 	lw	t5,16(v1)
     ad8:	448e8000 	mtc1	t6,$f16
     adc:	448c3000 	mtc1	t4,$f6
     ae0:	448d5000 	mtc1	t5,$f10
     ae4:	46808420 	cvt.s.w	$f16,$f16
     ae8:	00003825 	move	a3,zero
     aec:	46803320 	cvt.s.w	$f12,$f6
     af0:	44068000 	mfc1	a2,$f16
     af4:	0c000000 	jal	0 <BgSpot02Objects_Init>
     af8:	468053a0 	cvt.s.w	$f14,$f10
     afc:	8e2f1d8c 	lw	t7,7564(s1)
     b00:	3c014f80 	lui	at,0x4f80
     b04:	95f80006 	lhu	t8,6(t7)
     b08:	44989000 	mtc1	t8,$f18
     b0c:	07010004 	bgez	t8,b20 <func_808ACCB8+0x4c8>
     b10:	46809120 	cvt.s.w	$f4,$f18
     b14:	44814000 	mtc1	at,$f8
     b18:	00000000 	nop
     b1c:	46082100 	add.s	$f4,$f4,$f8
     b20:	3c010000 	lui	at,0x0
     b24:	c4260000 	lwc1	$f6,0(at)
     b28:	24050001 	li	a1,1
     b2c:	46062302 	mul.s	$f12,$f4,$f6
     b30:	0c000000 	jal	0 <BgSpot02Objects_Init>
     b34:	00000000 	nop
     b38:	8e391d8c 	lw	t9,7564(s1)
     b3c:	3c014f80 	lui	at,0x4f80
     b40:	97280008 	lhu	t0,8(t9)
     b44:	44885000 	mtc1	t0,$f10
     b48:	05010004 	bgez	t0,b5c <func_808ACCB8+0x504>
     b4c:	46805420 	cvt.s.w	$f16,$f10
     b50:	44819000 	mtc1	at,$f18
     b54:	00000000 	nop
     b58:	46128400 	add.s	$f16,$f16,$f18
     b5c:	3c010000 	lui	at,0x0
     b60:	c4280000 	lwc1	$f8,0(at)
     b64:	24050001 	li	a1,1
     b68:	46088302 	mul.s	$f12,$f16,$f8
     b6c:	0c000000 	jal	0 <BgSpot02Objects_Init>
     b70:	00000000 	nop
     b74:	8e291d8c 	lw	t1,7564(s1)
     b78:	3c014f80 	lui	at,0x4f80
     b7c:	952a000a 	lhu	t2,10(t1)
     b80:	448a2000 	mtc1	t2,$f4
     b84:	05410004 	bgez	t2,b98 <func_808ACCB8+0x540>
     b88:	468021a0 	cvt.s.w	$f6,$f4
     b8c:	44815000 	mtc1	at,$f10
     b90:	00000000 	nop
     b94:	460a3180 	add.s	$f6,$f6,$f10
     b98:	3c010000 	lui	at,0x0
     b9c:	c4320000 	lwc1	$f18,0(at)
     ba0:	24050001 	li	a1,1
     ba4:	46123302 	mul.s	$f12,$f6,$f18
     ba8:	0c000000 	jal	0 <BgSpot02Objects_Init>
     bac:	00000000 	nop
     bb0:	3c013f80 	lui	at,0x3f80
     bb4:	44816000 	mtc1	at,$f12
     bb8:	24070001 	li	a3,1
     bbc:	44066000 	mfc1	a2,$f12
     bc0:	0c000000 	jal	0 <BgSpot02Objects_Init>
     bc4:	46006386 	mov.s	$f14,$f12
     bc8:	0c000000 	jal	0 <BgSpot02Objects_Init>
     bcc:	8e240000 	lw	a0,0(s1)
     bd0:	8e0202d0 	lw	v0,720(s0)
     bd4:	3c07e700 	lui	a3,0xe700
     bd8:	3c0dfa00 	lui	t5,0xfa00
     bdc:	244b0008 	addiu	t3,v0,8
     be0:	ae0b02d0 	sw	t3,720(s0)
     be4:	ac470000 	sw	a3,0(v0)
     be8:	ac400004 	sw	zero,4(v0)
     bec:	8e0202d0 	lw	v0,720(s0)
     bf0:	3c050000 	lui	a1,0x0
     bf4:	24a50000 	addiu	a1,a1,0
     bf8:	244c0008 	addiu	t4,v0,8
     bfc:	ae0c02d0 	sw	t4,720(s0)
     c00:	ac4d0000 	sw	t5,0(v0)
     c04:	93a8006a 	lbu	t0,106(sp)
     c08:	93af006b 	lbu	t7,107(sp)
     c0c:	93ac0069 	lbu	t4,105(sp)
     c10:	00084c00 	sll	t1,t0,0x10
     c14:	000fc600 	sll	t8,t7,0x18
     c18:	03095025 	or	t2,t8,t1
     c1c:	000c6a00 	sll	t5,t4,0x8
     c20:	014d7025 	or	t6,t2,t5
     c24:	35cf00ff 	ori	t7,t6,0xff
     c28:	ac4f0004 	sw	t7,4(v0)
     c2c:	8e0202d0 	lw	v0,720(s0)
     c30:	3c08fb00 	lui	t0,0xfb00
     c34:	240602a7 	li	a2,679
     c38:	24590008 	addiu	t9,v0,8
     c3c:	ae1902d0 	sw	t9,720(s0)
     c40:	ac480000 	sw	t0,0(v0)
     c44:	93aa0067 	lbu	t2,103(sp)
     c48:	93a90068 	lbu	t1,104(sp)
     c4c:	93b90066 	lbu	t9,102(sp)
     c50:	000a6c00 	sll	t5,t2,0x10
     c54:	00095e00 	sll	t3,t1,0x18
     c58:	016d7025 	or	t6,t3,t5
     c5c:	00194200 	sll	t0,t9,0x8
     c60:	01c8c025 	or	t8,t6,t0
     c64:	370900ff 	ori	t1,t8,0xff
     c68:	ac490004 	sw	t1,4(v0)
     c6c:	8e0202d0 	lw	v0,720(s0)
     c70:	3c0ada38 	lui	t2,0xda38
     c74:	354a0003 	ori	t2,t2,0x3
     c78:	244c0008 	addiu	t4,v0,8
     c7c:	ae0c02d0 	sw	t4,720(s0)
     c80:	ac4a0000 	sw	t2,0(v0)
     c84:	8e240000 	lw	a0,0(s1)
     c88:	0c000000 	jal	0 <BgSpot02Objects_Init>
     c8c:	afa20040 	sw	v0,64(sp)
     c90:	8fa30040 	lw	v1,64(sp)
     c94:	3c0ddb06 	lui	t5,0xdb06
     c98:	35ad0020 	ori	t5,t5,0x20
     c9c:	ac620004 	sw	v0,4(v1)
     ca0:	8e0202d0 	lw	v0,720(s0)
     ca4:	3c040000 	lui	a0,0x0
     ca8:	3c0a0000 	lui	t2,0x0
     cac:	244b0008 	addiu	t3,v0,8
     cb0:	ae0b02d0 	sw	t3,720(s0)
     cb4:	ac4d0000 	sw	t5,0(v0)
     cb8:	8faf0078 	lw	t7,120(sp)
     cbc:	3c0100ff 	lui	at,0xff
     cc0:	3421ffff 	ori	at,at,0xffff
     cc4:	91f9016a 	lbu	t9,362(t7)
     cc8:	3c07e700 	lui	a3,0xe700
     ccc:	00197080 	sll	t6,t9,0x2
     cd0:	008e2021 	addu	a0,a0,t6
     cd4:	8c840000 	lw	a0,0(a0)
     cd8:	3c0ede00 	lui	t6,0xde00
     cdc:	0004c100 	sll	t8,a0,0x4
     ce0:	00184f02 	srl	t1,t8,0x1c
     ce4:	00096080 	sll	t4,t1,0x2
     ce8:	014c5021 	addu	t2,t2,t4
     cec:	8d4a0000 	lw	t2,0(t2)
     cf0:	00814024 	and	t0,a0,at
     cf4:	3c018000 	lui	at,0x8000
     cf8:	010a5821 	addu	t3,t0,t2
     cfc:	01616821 	addu	t5,t3,at
     d00:	ac4d0004 	sw	t5,4(v0)
     d04:	8e0202d0 	lw	v0,720(s0)
     d08:	3c180601 	lui	t8,0x601
     d0c:	271826f0 	addiu	t8,t8,9968
     d10:	244f0008 	addiu	t7,v0,8
     d14:	ae0f02d0 	sw	t7,720(s0)
     d18:	ac400004 	sw	zero,4(v0)
     d1c:	ac470000 	sw	a3,0(v0)
     d20:	8e0202d0 	lw	v0,720(s0)
     d24:	24590008 	addiu	t9,v0,8
     d28:	ae1902d0 	sw	t9,720(s0)
     d2c:	ac580004 	sw	t8,4(v0)
     d30:	ac4e0000 	sw	t6,0(v0)
     d34:	8e0202d0 	lw	v0,720(s0)
     d38:	24490008 	addiu	t1,v0,8
     d3c:	ae0902d0 	sw	t1,720(s0)
     d40:	ac400004 	sw	zero,4(v0)
     d44:	ac470000 	sw	a3,0(v0)
     d48:	3c060000 	lui	a2,0x0
     d4c:	24c60000 	addiu	a2,a2,0
     d50:	27a40050 	addiu	a0,sp,80
     d54:	8e250000 	lw	a1,0(s1)
     d58:	0c000000 	jal	0 <BgSpot02Objects_Init>
     d5c:	240702b4 	li	a3,692
     d60:	8fbf001c 	lw	ra,28(sp)
     d64:	8fb00014 	lw	s0,20(sp)
     d68:	8fb10018 	lw	s1,24(sp)
     d6c:	03e00008 	jr	ra
     d70:	27bd0078 	addiu	sp,sp,120

00000d74 <func_808AD3D4>:
     d74:	27bdffe8 	addiu	sp,sp,-24
     d78:	afbf0014 	sw	ra,20(sp)
     d7c:	90ae1d6c 	lbu	t6,7532(a1)
     d80:	51c00018 	beqzl	t6,de4 <func_808AD3D4+0x70>
     d84:	8fbf0014 	lw	ra,20(sp)
     d88:	8ca21d94 	lw	v0,7572(a1)
     d8c:	50400015 	beqzl	v0,de4 <func_808AD3D4+0x70>
     d90:	8fbf0014 	lw	ra,20(sp)
     d94:	944f0000 	lhu	t7,0(v0)
     d98:	24030002 	li	v1,2
     d9c:	546f0011 	bnel	v1,t7,de4 <func_808AD3D4+0x70>
     da0:	8fbf0014 	lw	ra,20(sp)
     da4:	84820168 	lh	v0,360(a0)
     da8:	2405183b 	li	a1,6203
     dac:	54620006 	bnel	v1,v0,dc8 <func_808AD3D4+0x54>
     db0:	28410020 	slti	at,v0,32
     db4:	0c000000 	jal	0 <BgSpot02Objects_Init>
     db8:	afa40018 	sw	a0,24(sp)
     dbc:	8fa40018 	lw	a0,24(sp)
     dc0:	84820168 	lh	v0,360(a0)
     dc4:	28410020 	slti	at,v0,32
     dc8:	10200003 	beqz	at,dd8 <func_808AD3D4+0x64>
     dcc:	24580001 	addiu	t8,v0,1
     dd0:	10000003 	b	de0 <func_808AD3D4+0x6c>
     dd4:	a4980168 	sh	t8,360(a0)
     dd8:	0c000000 	jal	0 <BgSpot02Objects_Init>
     ddc:	00000000 	nop
     de0:	8fbf0014 	lw	ra,20(sp)
     de4:	27bd0018 	addiu	sp,sp,24
     de8:	03e00008 	jr	ra
     dec:	00000000 	nop

00000df0 <func_808AD450>:
     df0:	27bdff68 	addiu	sp,sp,-152
     df4:	afb1003c 	sw	s1,60(sp)
     df8:	00a08825 	move	s1,a1
     dfc:	afbf0044 	sw	ra,68(sp)
     e00:	afb20040 	sw	s2,64(sp)
     e04:	afb00038 	sw	s0,56(sp)
     e08:	8ca50000 	lw	a1,0(a1)
     e0c:	00809025 	move	s2,a0
     e10:	3c060000 	lui	a2,0x0
     e14:	24c60000 	addiu	a2,a2,0
     e18:	27a40078 	addiu	a0,sp,120
     e1c:	240702e0 	li	a3,736
     e20:	0c000000 	jal	0 <BgSpot02Objects_Init>
     e24:	00a08025 	move	s0,a1
     e28:	922e1d6c 	lbu	t6,7532(s1)
     e2c:	11c000e4 	beqz	t6,11c0 <func_808AD450+0x3d0>
     e30:	00000000 	nop
     e34:	8e221d94 	lw	v0,7572(s1)
     e38:	104000e1 	beqz	v0,11c0 <func_808AD450+0x3d0>
     e3c:	00000000 	nop
     e40:	944f000a 	lhu	t7,10(v0)
     e44:	3c014f80 	lui	at,0x4f80
     e48:	448f2000 	mtc1	t7,$f4
     e4c:	05e10004 	bgez	t7,e60 <func_808AD450+0x70>
     e50:	468021a0 	cvt.s.w	$f6,$f4
     e54:	44814000 	mtc1	at,$f8
     e58:	00000000 	nop
     e5c:	46083180 	add.s	$f6,$f6,$f8
     e60:	3c010000 	lui	at,0x0
     e64:	c42a0000 	lwc1	$f10,0(at)
     e68:	24030001 	li	v1,1
     e6c:	3c014f00 	lui	at,0x4f00
     e70:	460a3402 	mul.s	$f16,$f6,$f10
     e74:	4458f800 	cfc1	t8,$31
     e78:	44c3f800 	ctc1	v1,$31
     e7c:	00000000 	nop
     e80:	460084a4 	cvt.w.s	$f18,$f16
     e84:	4443f800 	cfc1	v1,$31
     e88:	00000000 	nop
     e8c:	30630078 	andi	v1,v1,0x78
     e90:	50600013 	beqzl	v1,ee0 <func_808AD450+0xf0>
     e94:	44039000 	mfc1	v1,$f18
     e98:	44819000 	mtc1	at,$f18
     e9c:	24030001 	li	v1,1
     ea0:	46128481 	sub.s	$f18,$f16,$f18
     ea4:	44c3f800 	ctc1	v1,$31
     ea8:	00000000 	nop
     eac:	460094a4 	cvt.w.s	$f18,$f18
     eb0:	4443f800 	cfc1	v1,$31
     eb4:	00000000 	nop
     eb8:	30630078 	andi	v1,v1,0x78
     ebc:	14600005 	bnez	v1,ed4 <func_808AD450+0xe4>
     ec0:	00000000 	nop
     ec4:	44039000 	mfc1	v1,$f18
     ec8:	3c018000 	lui	at,0x8000
     ecc:	10000007 	b	eec <func_808AD450+0xfc>
     ed0:	00611825 	or	v1,v1,at
     ed4:	10000005 	b	eec <func_808AD450+0xfc>
     ed8:	2403ffff 	li	v1,-1
     edc:	44039000 	mfc1	v1,$f18
     ee0:	00000000 	nop
     ee4:	0460fffb 	bltz	v1,ed4 <func_808AD450+0xe4>
     ee8:	00000000 	nop
     eec:	96440170 	lhu	a0,368(s2)
     ef0:	44d8f800 	ctc1	t8,$31
     ef4:	3063ffff 	andi	v1,v1,0xffff
     ef8:	1064000a 	beq	v1,a0,f24 <func_808AD450+0x134>
     efc:	3401ffff 	li	at,0xffff
     f00:	54810006 	bnel	a0,at,f1c <func_808AD450+0x12c>
     f04:	a6440172 	sh	a0,370(s2)
     f08:	a6430170 	sh	v1,368(s2)
     f0c:	a6430172 	sh	v1,370(s2)
     f10:	10000004 	b	f24 <func_808AD450+0x134>
     f14:	8e221d94 	lw	v0,7572(s1)
     f18:	a6440172 	sh	a0,370(s2)
     f1c:	a6430170 	sh	v1,368(s2)
     f20:	8e221d94 	lw	v0,7572(s1)
     f24:	94440004 	lhu	a0,4(v0)
     f28:	94450002 	lhu	a1,2(v0)
     f2c:	0c000000 	jal	0 <BgSpot02Objects_Init>
     f30:	96261d74 	lhu	a2,7540(s1)
     f34:	e7a0008c 	swc1	$f0,140(sp)
     f38:	8e221d94 	lw	v0,7572(s1)
     f3c:	24010002 	li	at,2
     f40:	94490000 	lhu	t1,0(v0)
     f44:	1521009e 	bne	t1,at,11c0 <func_808AD450+0x3d0>
     f48:	00000000 	nop
     f4c:	8c4c0014 	lw	t4,20(v0)
     f50:	8c4a000c 	lw	t2,12(v0)
     f54:	8c4b0010 	lw	t3,16(v0)
     f58:	448c3000 	mtc1	t4,$f6
     f5c:	448a2000 	mtc1	t2,$f4
     f60:	448b4000 	mtc1	t3,$f8
     f64:	468031a0 	cvt.s.w	$f6,$f6
     f68:	00003825 	move	a3,zero
     f6c:	46802320 	cvt.s.w	$f12,$f4
     f70:	44063000 	mfc1	a2,$f6
     f74:	0c000000 	jal	0 <BgSpot02Objects_Init>
     f78:	468043a0 	cvt.s.w	$f14,$f8
     f7c:	8e2d1d94 	lw	t5,7572(s1)
     f80:	3c014f80 	lui	at,0x4f80
     f84:	95ae0006 	lhu	t6,6(t5)
     f88:	448e5000 	mtc1	t6,$f10
     f8c:	05c10004 	bgez	t6,fa0 <func_808AD450+0x1b0>
     f90:	46805420 	cvt.s.w	$f16,$f10
     f94:	44819000 	mtc1	at,$f18
     f98:	00000000 	nop
     f9c:	46128400 	add.s	$f16,$f16,$f18
     fa0:	3c010000 	lui	at,0x0
     fa4:	c4240000 	lwc1	$f4,0(at)
     fa8:	24050001 	li	a1,1
     fac:	46048302 	mul.s	$f12,$f16,$f4
     fb0:	0c000000 	jal	0 <BgSpot02Objects_Init>
     fb4:	00000000 	nop
     fb8:	8e2f1d94 	lw	t7,7572(s1)
     fbc:	3c014f80 	lui	at,0x4f80
     fc0:	95f80008 	lhu	t8,8(t7)
     fc4:	44984000 	mtc1	t8,$f8
     fc8:	07010004 	bgez	t8,fdc <func_808AD450+0x1ec>
     fcc:	468041a0 	cvt.s.w	$f6,$f8
     fd0:	44815000 	mtc1	at,$f10
     fd4:	00000000 	nop
     fd8:	460a3180 	add.s	$f6,$f6,$f10
     fdc:	3c010000 	lui	at,0x0
     fe0:	c4320000 	lwc1	$f18,0(at)
     fe4:	24050001 	li	a1,1
     fe8:	46123302 	mul.s	$f12,$f6,$f18
     fec:	0c000000 	jal	0 <BgSpot02Objects_Init>
     ff0:	00000000 	nop
     ff4:	96420172 	lhu	v0,370(s2)
     ff8:	96590170 	lhu	t9,368(s2)
     ffc:	c7a8008c 	lwc1	$f8,140(sp)
    1000:	3c010000 	lui	at,0x0
    1004:	03224823 	subu	t1,t9,v0
    1008:	44898000 	mtc1	t1,$f16
    100c:	c42c0000 	lwc1	$f12,0(at)
    1010:	44823000 	mtc1	v0,$f6
    1014:	46808120 	cvt.s.w	$f4,$f16
    1018:	3c014f80 	lui	at,0x4f80
    101c:	46006386 	mov.s	$f14,$f12
    1020:	468034a0 	cvt.s.w	$f18,$f6
    1024:	46082282 	mul.s	$f10,$f4,$f8
    1028:	04430005 	bgezl	v0,1040 <func_808AD450+0x250>
    102c:	46125100 	add.s	$f4,$f10,$f18
    1030:	44818000 	mtc1	at,$f16
    1034:	00000000 	nop
    1038:	46109480 	add.s	$f18,$f18,$f16
    103c:	46125100 	add.s	$f4,$f10,$f18
    1040:	3c010000 	lui	at,0x0
    1044:	c4280000 	lwc1	$f8,0(at)
    1048:	24070001 	li	a3,1
    104c:	46082182 	mul.s	$f6,$f4,$f8
    1050:	44063000 	mfc1	a2,$f6
    1054:	0c000000 	jal	0 <BgSpot02Objects_Init>
    1058:	00000000 	nop
    105c:	0c000000 	jal	0 <BgSpot02Objects_Init>
    1060:	8e240000 	lw	a0,0(s1)
    1064:	8e0202d0 	lw	v0,720(s0)
    1068:	3c0be700 	lui	t3,0xe700
    106c:	3c0dfa00 	lui	t5,0xfa00
    1070:	244a0008 	addiu	t2,v0,8
    1074:	ae0a02d0 	sw	t2,720(s0)
    1078:	ac4b0000 	sw	t3,0(v0)
    107c:	ac400004 	sw	zero,4(v0)
    1080:	8e0202d0 	lw	v0,720(s0)
    1084:	240eaa80 	li	t6,-21888
    1088:	3c199678 	lui	t9,0x9678
    108c:	244c0008 	addiu	t4,v0,8
    1090:	ae0c02d0 	sw	t4,720(s0)
    1094:	ac4d0000 	sw	t5,0(v0)
    1098:	ac4e0004 	sw	t6,4(v0)
    109c:	8e0202d0 	lw	v0,720(s0)
    10a0:	37390080 	ori	t9,t9,0x80
    10a4:	3c18fb00 	lui	t8,0xfb00
    10a8:	244f0008 	addiu	t7,v0,8
    10ac:	ae0f02d0 	sw	t7,720(s0)
    10b0:	ac580000 	sw	t8,0(v0)
    10b4:	ac590004 	sw	t9,4(v0)
    10b8:	8e0202d0 	lw	v0,720(s0)
    10bc:	3c0ada38 	lui	t2,0xda38
    10c0:	354a0003 	ori	t2,t2,0x3
    10c4:	24490008 	addiu	t1,v0,8
    10c8:	ae0902d0 	sw	t1,720(s0)
    10cc:	ac4a0000 	sw	t2,0(v0)
    10d0:	8e240000 	lw	a0,0(s1)
    10d4:	3c050000 	lui	a1,0x0
    10d8:	24a50000 	addiu	a1,a1,0
    10dc:	2406031b 	li	a2,795
    10e0:	0c000000 	jal	0 <BgSpot02Objects_Init>
    10e4:	afa20064 	sw	v0,100(sp)
    10e8:	8fa30064 	lw	v1,100(sp)
    10ec:	3c0cdb06 	lui	t4,0xdb06
    10f0:	358c0020 	ori	t4,t4,0x20
    10f4:	ac620004 	sw	v0,4(v1)
    10f8:	8e0202d0 	lw	v0,720(s0)
    10fc:	240d0020 	li	t5,32
    1100:	240e0040 	li	t6,64
    1104:	244b0008 	addiu	t3,v0,8
    1108:	ae0b02d0 	sw	t3,720(s0)
    110c:	ac4c0000 	sw	t4,0(v0)
    1110:	86430168 	lh	v1,360(s2)
    1114:	8e240000 	lw	a0,0(s1)
    1118:	240f0001 	li	t7,1
    111c:	00030823 	negu	at,v1
    1120:	0001c880 	sll	t9,at,0x2
    1124:	0321c823 	subu	t9,t9,at
    1128:	0019c840 	sll	t9,t9,0x1
    112c:	00013880 	sll	a3,at,0x2
    1130:	24090020 	li	t1,32
    1134:	240a0040 	li	t2,64
    1138:	0003c080 	sll	t8,v1,0x2
    113c:	afb8001c 	sw	t8,28(sp)
    1140:	afaa0028 	sw	t2,40(sp)
    1144:	afa90024 	sw	t1,36(sp)
    1148:	00e13823 	subu	a3,a3,at
    114c:	afb90020 	sw	t9,32(sp)
    1150:	afaf0018 	sw	t7,24(sp)
    1154:	afae0014 	sw	t6,20(sp)
    1158:	afad0010 	sw	t5,16(sp)
    115c:	00002825 	move	a1,zero
    1160:	afa20060 	sw	v0,96(sp)
    1164:	0c000000 	jal	0 <BgSpot02Objects_Init>
    1168:	00033040 	sll	a2,v1,0x1
    116c:	8fa80060 	lw	t0,96(sp)
    1170:	3c04e700 	lui	a0,0xe700
    1174:	3c0e0600 	lui	t6,0x600
    1178:	ad020004 	sw	v0,4(t0)
    117c:	8e0202d0 	lw	v0,720(s0)
    1180:	25ce13f0 	addiu	t6,t6,5104
    1184:	3c0dde00 	lui	t5,0xde00
    1188:	244b0008 	addiu	t3,v0,8
    118c:	ae0b02d0 	sw	t3,720(s0)
    1190:	ac400004 	sw	zero,4(v0)
    1194:	ac440000 	sw	a0,0(v0)
    1198:	8e0202d0 	lw	v0,720(s0)
    119c:	244c0008 	addiu	t4,v0,8
    11a0:	ae0c02d0 	sw	t4,720(s0)
    11a4:	ac4e0004 	sw	t6,4(v0)
    11a8:	ac4d0000 	sw	t5,0(v0)
    11ac:	8e0202d0 	lw	v0,720(s0)
    11b0:	244f0008 	addiu	t7,v0,8
    11b4:	ae0f02d0 	sw	t7,720(s0)
    11b8:	ac400004 	sw	zero,4(v0)
    11bc:	ac440000 	sw	a0,0(v0)
    11c0:	3c060000 	lui	a2,0x0
    11c4:	24c60000 	addiu	a2,a2,0
    11c8:	27a40078 	addiu	a0,sp,120
    11cc:	8e250000 	lw	a1,0(s1)
    11d0:	0c000000 	jal	0 <BgSpot02Objects_Init>
    11d4:	24070332 	li	a3,818
    11d8:	8fbf0044 	lw	ra,68(sp)
    11dc:	8fb00038 	lw	s0,56(sp)
    11e0:	8fb1003c 	lw	s1,60(sp)
    11e4:	8fb20040 	lw	s2,64(sp)
    11e8:	03e00008 	jr	ra
    11ec:	27bd0098 	addiu	sp,sp,152
