
build/src/overlays/actors/ovl_En_Wallmas/z_en_wallmas.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnWallmas_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnWallmas_Init>
      1c:	24a50074 	addiu	a1,a1,116
      20:	260400b4 	addiu	a0,s0,180
      24:	24050000 	li	a1,0
      28:	00003025 	move	a2,zero
      2c:	0c000000 	jal	0 <EnWallmas_Init>
      30:	3c073f00 	lui	a3,0x3f00
      34:	3c060000 	lui	a2,0x0
      38:	3c070000 	lui	a3,0x0
      3c:	260e0198 	addiu	t6,s0,408
      40:	260f022e 	addiu	t7,s0,558
      44:	24180019 	li	t8,25
      48:	afb80018 	sw	t8,24(sp)
      4c:	afaf0014 	sw	t7,20(sp)
      50:	afae0010 	sw	t6,16(sp)
      54:	24e70000 	addiu	a3,a3,0
      58:	24c60000 	addiu	a2,a2,0
      5c:	8fa4003c 	lw	a0,60(sp)
      60:	0c000000 	jal	0 <EnWallmas_Init>
      64:	2605014c 	addiu	a1,s0,332
      68:	260502c8 	addiu	a1,s0,712
      6c:	afa50030 	sw	a1,48(sp)
      70:	0c000000 	jal	0 <EnWallmas_Init>
      74:	8fa4003c 	lw	a0,60(sp)
      78:	3c070000 	lui	a3,0x0
      7c:	8fa50030 	lw	a1,48(sp)
      80:	24e70020 	addiu	a3,a3,32
      84:	8fa4003c 	lw	a0,60(sp)
      88:	0c000000 	jal	0 <EnWallmas_Init>
      8c:	02003025 	move	a2,s0
      90:	3c050000 	lui	a1,0x0
      94:	3c060000 	lui	a2,0x0
      98:	24c6004c 	addiu	a2,a2,76
      9c:	24a50054 	addiu	a1,a1,84
      a0:	0c000000 	jal	0 <EnWallmas_Init>
      a4:	26040098 	addiu	a0,s0,152
      a8:	860a001c 	lh	t2,28(s0)
      ac:	8619001c 	lh	t9,28(s0)
      b0:	24010002 	li	at,2
      b4:	314b00ff 	andi	t3,t2,0xff
      b8:	a60b001c 	sh	t3,28(s0)
      bc:	8602001c 	lh	v0,28(s0)
      c0:	00194203 	sra	t0,t9,0x8
      c4:	310900ff 	andi	t1,t0,0xff
      c8:	1441000e 	bne	v0,at,104 <EnWallmas_Init+0x104>
      cc:	a6090196 	sh	t1,406(s0)
      d0:	8fa4003c 	lw	a0,60(sp)
      d4:	0c000000 	jal	0 <EnWallmas_Init>
      d8:	86050196 	lh	a1,406(s0)
      dc:	10400005 	beqz	v0,f4 <EnWallmas_Init+0xf4>
      e0:	00000000 	nop
      e4:	0c000000 	jal	0 <EnWallmas_Init>
      e8:	02002025 	move	a0,s0
      ec:	1000000f 	b	12c <EnWallmas_Init+0x12c>
      f0:	8fbf002c 	lw	ra,44(sp)
      f4:	0c000000 	jal	0 <EnWallmas_Init>
      f8:	02002025 	move	a0,s0
      fc:	1000000b 	b	12c <EnWallmas_Init+0x12c>
     100:	8fbf002c 	lw	ra,44(sp)
     104:	24010001 	li	at,1
     108:	14410005 	bne	v0,at,120 <EnWallmas_Init+0x120>
     10c:	02002025 	move	a0,s0
     110:	0c000000 	jal	0 <EnWallmas_Init>
     114:	02002025 	move	a0,s0
     118:	10000004 	b	12c <EnWallmas_Init+0x12c>
     11c:	8fbf002c 	lw	ra,44(sp)
     120:	0c000000 	jal	0 <EnWallmas_Init>
     124:	8fa5003c 	lw	a1,60(sp)
     128:	8fbf002c 	lw	ra,44(sp)
     12c:	8fb00028 	lw	s0,40(sp)
     130:	27bd0038 	addiu	sp,sp,56
     134:	03e00008 	jr	ra
     138:	00000000 	nop

0000013c <EnWallmas_Destroy>:
     13c:	27bdffe8 	addiu	sp,sp,-24
     140:	00803025 	move	a2,a0
     144:	afbf0014 	sw	ra,20(sp)
     148:	00a02025 	move	a0,a1
     14c:	0c000000 	jal	0 <EnWallmas_Init>
     150:	24c502c8 	addiu	a1,a2,712
     154:	8fbf0014 	lw	ra,20(sp)
     158:	27bd0018 	addiu	sp,sp,24
     15c:	03e00008 	jr	ra
     160:	00000000 	nop

00000164 <EnWallmas_TimerInit>:
     164:	8c8e0004 	lw	t6,4(a0)
     168:	8ca21c44 	lw	v0,7236(a1)
     16c:	2401fffe 	li	at,-2
     170:	44802000 	mtc1	zero,$f4
     174:	01c17824 	and	t7,t6,at
     178:	ac8f0004 	sw	t7,4(a0)
     17c:	35f90020 	ori	t9,t7,0x20
     180:	24080082 	li	t0,130
     184:	ac990004 	sw	t9,4(a0)
     188:	a4880194 	sh	t0,404(a0)
     18c:	e4840060 	swc1	$f4,96(a0)
     190:	c4460028 	lwc1	$f6,40(v0)
     194:	3c090000 	lui	t1,0x0
     198:	3c0a0000 	lui	t2,0x0
     19c:	e4860028 	swc1	$f6,40(a0)
     1a0:	c4480080 	lwc1	$f8,128(v0)
     1a4:	25290000 	addiu	t1,t1,0
     1a8:	254a0000 	addiu	t2,t2,0
     1ac:	ac890134 	sw	t1,308(a0)
     1b0:	ac8a0190 	sw	t2,400(a0)
     1b4:	03e00008 	jr	ra
     1b8:	e4880080 	swc1	$f8,128(a0)

000001bc <EnWallmas_SetupDrop>:
     1bc:	27bdffc8 	addiu	sp,sp,-56
     1c0:	afb00028 	sw	s0,40(sp)
     1c4:	afbf002c 	sw	ra,44(sp)
     1c8:	8ca31c44 	lw	v1,7236(a1)
     1cc:	00808025 	move	s0,a0
     1d0:	3c040000 	lui	a0,0x0
     1d4:	24840000 	addiu	a0,a0,0
     1d8:	0c000000 	jal	0 <EnWallmas_Init>
     1dc:	afa30034 	sw	v1,52(sp)
     1e0:	44822000 	mtc1	v0,$f4
     1e4:	44800000 	mtc1	zero,$f0
     1e8:	3c050000 	lui	a1,0x0
     1ec:	468021a0 	cvt.s.w	$f6,$f4
     1f0:	240e0002 	li	t6,2
     1f4:	44060000 	mfc1	a2,$f0
     1f8:	afae0014 	sw	t6,20(sp)
     1fc:	24a50000 	addiu	a1,a1,0
     200:	2604014c 	addiu	a0,s0,332
     204:	e7a60010 	swc1	$f6,16(sp)
     208:	3c0741a0 	lui	a3,0x41a0
     20c:	0c000000 	jal	0 <EnWallmas_Init>
     210:	e7a00018 	swc1	$f0,24(sp)
     214:	8fa30034 	lw	v1,52(sp)
     218:	3c014396 	lui	at,0x4396
     21c:	44818000 	mtc1	at,$f16
     220:	c4680028 	lwc1	$f8,40(v1)
     224:	8e190004 	lw	t9,4(s0)
     228:	34018000 	li	at,0x8000
     22c:	e60802c4 	swc1	$f8,708(s0)
     230:	c46a0028 	lwc1	$f10,40(v1)
     234:	37280001 	ori	t0,t9,0x1
     238:	3c0b0000 	lui	t3,0x0
     23c:	46105480 	add.s	$f18,$f10,$f16
     240:	256b0000 	addiu	t3,t3,0
     244:	e6120028 	swc1	$f18,40(s0)
     248:	846f00b6 	lh	t7,182(v1)
     24c:	01e1c021 	addu	t8,t7,at
     250:	a6180032 	sh	t8,50(s0)
     254:	c4640080 	lwc1	$f4,128(v1)
     258:	2401ffdf 	li	at,-33
     25c:	ae080004 	sw	t0,4(s0)
     260:	01015024 	and	t2,t0,at
     264:	ae0a0004 	sw	t2,4(s0)
     268:	ae0b0190 	sw	t3,400(s0)
     26c:	e6040080 	swc1	$f4,128(s0)
     270:	8fbf002c 	lw	ra,44(sp)
     274:	8fb00028 	lw	s0,40(sp)
     278:	27bd0038 	addiu	sp,sp,56
     27c:	03e00008 	jr	ra
     280:	00000000 	nop

00000284 <EnWallmas_SetupLand>:
     284:	27bdffc8 	addiu	sp,sp,-56
     288:	afb00030 	sw	s0,48(sp)
     28c:	00808025 	move	s0,a0
     290:	afbf0034 	sw	ra,52(sp)
     294:	3c040000 	lui	a0,0x0
     298:	afa5003c 	sw	a1,60(sp)
     29c:	0c000000 	jal	0 <EnWallmas_Init>
     2a0:	24840000 	addiu	a0,a0,0
     2a4:	44822000 	mtc1	v0,$f4
     2a8:	3c01c040 	lui	at,0xc040
     2ac:	44814000 	mtc1	at,$f8
     2b0:	468021a0 	cvt.s.w	$f6,$f4
     2b4:	3c050000 	lui	a1,0x0
     2b8:	240e0002 	li	t6,2
     2bc:	afae0014 	sw	t6,20(sp)
     2c0:	24a50000 	addiu	a1,a1,0
     2c4:	2604014c 	addiu	a0,s0,332
     2c8:	e7a60010 	swc1	$f6,16(sp)
     2cc:	3c063f80 	lui	a2,0x3f80
     2d0:	3c074224 	lui	a3,0x4224
     2d4:	0c000000 	jal	0 <EnWallmas_Init>
     2d8:	e7a80018 	swc1	$f8,24(sp)
     2dc:	3c0141a0 	lui	at,0x41a0
     2e0:	44815000 	mtc1	at,$f10
     2e4:	240f0006 	li	t7,6
     2e8:	2418012c 	li	t8,300
     2ec:	24190064 	li	t9,100
     2f0:	24080001 	li	t0,1
     2f4:	afa80020 	sw	t0,32(sp)
     2f8:	afb9001c 	sw	t9,28(sp)
     2fc:	afb80018 	sw	t8,24(sp)
     300:	afaf0010 	sw	t7,16(sp)
     304:	8fa4003c 	lw	a0,60(sp)
     308:	02002825 	move	a1,s0
     30c:	26060024 	addiu	a2,s0,36
     310:	3c074170 	lui	a3,0x4170
     314:	0c000000 	jal	0 <EnWallmas_Init>
     318:	e7aa0014 	swc1	$f10,20(sp)
     31c:	02002025 	move	a0,s0
     320:	0c000000 	jal	0 <EnWallmas_Init>
     324:	24053893 	li	a1,14483
     328:	3c090000 	lui	t1,0x0
     32c:	25290000 	addiu	t1,t1,0
     330:	ae090190 	sw	t1,400(s0)
     334:	8fbf0034 	lw	ra,52(sp)
     338:	8fb00030 	lw	s0,48(sp)
     33c:	27bd0038 	addiu	sp,sp,56
     340:	03e00008 	jr	ra
     344:	00000000 	nop

00000348 <EnWallmas_SetupStand>:
     348:	27bdffe8 	addiu	sp,sp,-24
     34c:	afbf0014 	sw	ra,20(sp)
     350:	afa40018 	sw	a0,24(sp)
     354:	3c050000 	lui	a1,0x0
     358:	24a50000 	addiu	a1,a1,0
     35c:	0c000000 	jal	0 <EnWallmas_Init>
     360:	2484014c 	addiu	a0,a0,332
     364:	8faf0018 	lw	t7,24(sp)
     368:	3c0e0000 	lui	t6,0x0
     36c:	25ce0000 	addiu	t6,t6,0
     370:	adee0190 	sw	t6,400(t7)
     374:	8fbf0014 	lw	ra,20(sp)
     378:	27bd0018 	addiu	sp,sp,24
     37c:	03e00008 	jr	ra
     380:	00000000 	nop

00000384 <EnWallmas_SetupWalk>:
     384:	27bdffe8 	addiu	sp,sp,-24
     388:	afbf0014 	sw	ra,20(sp)
     38c:	00803825 	move	a3,a0
     390:	3c050000 	lui	a1,0x0
     394:	24a50000 	addiu	a1,a1,0
     398:	afa70018 	sw	a3,24(sp)
     39c:	2484014c 	addiu	a0,a0,332
     3a0:	0c000000 	jal	0 <EnWallmas_Init>
     3a4:	3c064040 	lui	a2,0x4040
     3a8:	8fa70018 	lw	a3,24(sp)
     3ac:	3c014040 	lui	at,0x4040
     3b0:	44812000 	mtc1	at,$f4
     3b4:	3c0e0000 	lui	t6,0x0
     3b8:	25ce0000 	addiu	t6,t6,0
     3bc:	acee0190 	sw	t6,400(a3)
     3c0:	e4e40068 	swc1	$f4,104(a3)
     3c4:	8fbf0014 	lw	ra,20(sp)
     3c8:	27bd0018 	addiu	sp,sp,24
     3cc:	03e00008 	jr	ra
     3d0:	00000000 	nop

000003d4 <EnWallmas_SetupJumpToCeiling>:
     3d4:	27bdffe8 	addiu	sp,sp,-24
     3d8:	afbf0014 	sw	ra,20(sp)
     3dc:	00803025 	move	a2,a0
     3e0:	3c050000 	lui	a1,0x0
     3e4:	24a50000 	addiu	a1,a1,0
     3e8:	afa60018 	sw	a2,24(sp)
     3ec:	0c000000 	jal	0 <EnWallmas_Init>
     3f0:	2484014c 	addiu	a0,a0,332
     3f4:	8fa60018 	lw	a2,24(sp)
     3f8:	44802000 	mtc1	zero,$f4
     3fc:	3c0e0000 	lui	t6,0x0
     400:	25ce0000 	addiu	t6,t6,0
     404:	acce0190 	sw	t6,400(a2)
     408:	e4c40068 	swc1	$f4,104(a2)
     40c:	8fbf0014 	lw	ra,20(sp)
     410:	27bd0018 	addiu	sp,sp,24
     414:	03e00008 	jr	ra
     418:	00000000 	nop

0000041c <EnWallmas_SetupReturnToCeiling>:
     41c:	44802000 	mtc1	zero,$f4
     420:	27bdffd8 	addiu	sp,sp,-40
     424:	afbf0024 	sw	ra,36(sp)
     428:	00802825 	move	a1,a0
     42c:	a4800194 	sh	zero,404(a0)
     430:	e4840068 	swc1	$f4,104(a0)
     434:	3c040000 	lui	a0,0x0
     438:	24840000 	addiu	a0,a0,0
     43c:	0c000000 	jal	0 <EnWallmas_Init>
     440:	afa50028 	sw	a1,40(sp)
     444:	44823000 	mtc1	v0,$f6
     448:	3c01c040 	lui	at,0xc040
     44c:	44815000 	mtc1	at,$f10
     450:	46803220 	cvt.s.w	$f8,$f6
     454:	8fa40028 	lw	a0,40(sp)
     458:	3c050000 	lui	a1,0x0
     45c:	240e0002 	li	t6,2
     460:	afae0014 	sw	t6,20(sp)
     464:	24a50000 	addiu	a1,a1,0
     468:	e7a80010 	swc1	$f8,16(sp)
     46c:	3c064040 	lui	a2,0x4040
     470:	24070000 	li	a3,0
     474:	e7aa0018 	swc1	$f10,24(sp)
     478:	0c000000 	jal	0 <EnWallmas_Init>
     47c:	2484014c 	addiu	a0,a0,332
     480:	8fb80028 	lw	t8,40(sp)
     484:	3c0f0000 	lui	t7,0x0
     488:	25ef0000 	addiu	t7,t7,0
     48c:	af0f0190 	sw	t7,400(t8)
     490:	8fbf0024 	lw	ra,36(sp)
     494:	27bd0028 	addiu	sp,sp,40
     498:	03e00008 	jr	ra
     49c:	00000000 	nop

000004a0 <EnWallmas_SetupTakeDamage>:
     4a0:	27bdffd8 	addiu	sp,sp,-40
     4a4:	afb00020 	sw	s0,32(sp)
     4a8:	00808025 	move	s0,a0
     4ac:	afbf0024 	sw	ra,36(sp)
     4b0:	3c050000 	lui	a1,0x0
     4b4:	24a50000 	addiu	a1,a1,0
     4b8:	2484014c 	addiu	a0,a0,332
     4bc:	0c000000 	jal	0 <EnWallmas_Init>
     4c0:	3c06c040 	lui	a2,0xc040
     4c4:	8e0e0304 	lw	t6,772(s0)
     4c8:	3c010001 	lui	at,0x1
     4cc:	3421f824 	ori	at,at,0xf824
     4d0:	8dcf0000 	lw	t7,0(t6)
     4d4:	02002025 	move	a0,s0
     4d8:	01e1c024 	and	t8,t7,at
     4dc:	13000005 	beqz	t8,4f4 <EnWallmas_SetupTakeDamage+0x54>
     4e0:	00000000 	nop
     4e4:	8e1902d0 	lw	t9,720(s0)
     4e8:	87280032 	lh	t0,50(t9)
     4ec:	10000006 	b	508 <EnWallmas_SetupTakeDamage+0x68>
     4f0:	a6080032 	sh	t0,50(s0)
     4f4:	0c000000 	jal	0 <EnWallmas_Init>
     4f8:	8e0502d0 	lw	a1,720(s0)
     4fc:	34018000 	li	at,0x8000
     500:	00414821 	addu	t1,v0,at
     504:	a6090032 	sh	t1,50(s0)
     508:	240a0014 	li	t2,20
     50c:	afaa0010 	sw	t2,16(sp)
     510:	02002025 	move	a0,s0
     514:	24054000 	li	a1,16384
     518:	240600ff 	li	a2,255
     51c:	0c000000 	jal	0 <EnWallmas_Init>
     520:	00003825 	move	a3,zero
     524:	3c0140a0 	lui	at,0x40a0
     528:	44812000 	mtc1	at,$f4
     52c:	3c014120 	lui	at,0x4120
     530:	44813000 	mtc1	at,$f6
     534:	3c0b0000 	lui	t3,0x0
     538:	256b0000 	addiu	t3,t3,0
     53c:	ae0b0190 	sw	t3,400(s0)
     540:	e6040068 	swc1	$f4,104(s0)
     544:	e6060060 	swc1	$f6,96(s0)
     548:	8fbf0024 	lw	ra,36(sp)
     54c:	8fb00020 	lw	s0,32(sp)
     550:	27bd0028 	addiu	sp,sp,40
     554:	03e00008 	jr	ra
     558:	00000000 	nop

0000055c <EnWallmas_SetupCooldown>:
     55c:	27bdffe8 	addiu	sp,sp,-24
     560:	afbf0014 	sw	ra,20(sp)
     564:	00803025 	move	a2,a0
     568:	3c050000 	lui	a1,0x0
     56c:	24a50000 	addiu	a1,a1,0
     570:	afa60018 	sw	a2,24(sp)
     574:	0c000000 	jal	0 <EnWallmas_Init>
     578:	2484014c 	addiu	a0,a0,332
     57c:	8fa60018 	lw	a2,24(sp)
     580:	44800000 	mtc1	zero,$f0
     584:	3c0f0000 	lui	t7,0x0
     588:	84ce00b6 	lh	t6,182(a2)
     58c:	25ef0000 	addiu	t7,t7,0
     590:	accf0190 	sw	t7,400(a2)
     594:	e4c00068 	swc1	$f0,104(a2)
     598:	e4c00060 	swc1	$f0,96(a2)
     59c:	a4ce0032 	sh	t6,50(a2)
     5a0:	8fbf0014 	lw	ra,20(sp)
     5a4:	27bd0018 	addiu	sp,sp,24
     5a8:	03e00008 	jr	ra
     5ac:	00000000 	nop

000005b0 <EnWallmas_SetupDie>:
     5b0:	27bdffa8 	addiu	sp,sp,-88
     5b4:	44800000 	mtc1	zero,$f0
     5b8:	afbf004c 	sw	ra,76(sp)
     5bc:	afb00048 	sw	s0,72(sp)
     5c0:	afa5005c 	sw	a1,92(sp)
     5c4:	e4800068 	swc1	$f0,104(a0)
     5c8:	e4800060 	swc1	$f0,96(a0)
     5cc:	00808025 	move	s0,a0
     5d0:	3c060000 	lui	a2,0x0
     5d4:	24c60080 	addiu	a2,a2,128
     5d8:	26050024 	addiu	a1,s0,36
     5dc:	240e00fa 	li	t6,250
     5e0:	240ffff6 	li	t7,-10
     5e4:	241800ff 	li	t8,255
     5e8:	241900ff 	li	t9,255
     5ec:	240800ff 	li	t0,255
     5f0:	240900ff 	li	t1,255
     5f4:	240a00ff 	li	t2,255
     5f8:	240b0001 	li	t3,1
     5fc:	240c0009 	li	t4,9
     600:	240d0001 	li	t5,1
     604:	afad003c 	sw	t5,60(sp)
     608:	afac0038 	sw	t4,56(sp)
     60c:	afab0034 	sw	t3,52(sp)
     610:	afaa0030 	sw	t2,48(sp)
     614:	afa90024 	sw	t1,36(sp)
     618:	afa80020 	sw	t0,32(sp)
     61c:	afb9001c 	sw	t9,28(sp)
     620:	afb80018 	sw	t8,24(sp)
     624:	afaf0014 	sw	t7,20(sp)
     628:	afae0010 	sw	t6,16(sp)
     62c:	afa50054 	sw	a1,84(sp)
     630:	00c03825 	move	a3,a2
     634:	8fa4005c 	lw	a0,92(sp)
     638:	afa0002c 	sw	zero,44(sp)
     63c:	0c000000 	jal	0 <EnWallmas_Init>
     640:	afa00028 	sw	zero,40(sp)
     644:	8fa4005c 	lw	a0,92(sp)
     648:	02002825 	move	a1,s0
     64c:	8fa60054 	lw	a2,84(sp)
     650:	0c000000 	jal	0 <EnWallmas_Init>
     654:	240700c0 	li	a3,192
     658:	3c0e0000 	lui	t6,0x0
     65c:	25ce0000 	addiu	t6,t6,0
     660:	ae0e0190 	sw	t6,400(s0)
     664:	8fbf004c 	lw	ra,76(sp)
     668:	8fb00048 	lw	s0,72(sp)
     66c:	27bd0058 	addiu	sp,sp,88
     670:	03e00008 	jr	ra
     674:	00000000 	nop

00000678 <EnWallmas_SetupTakePlayer>:
     678:	27bdffe0 	addiu	sp,sp,-32
     67c:	afa50024 	sw	a1,36(sp)
     680:	afbf001c 	sw	ra,28(sp)
     684:	00803825 	move	a3,a0
     688:	3c050000 	lui	a1,0x0
     68c:	24a50000 	addiu	a1,a1,0
     690:	afa70020 	sw	a3,32(sp)
     694:	2484014c 	addiu	a0,a0,332
     698:	0c000000 	jal	0 <EnWallmas_Init>
     69c:	3c06c0a0 	lui	a2,0xc0a0
     6a0:	8fa50020 	lw	a1,32(sp)
     6a4:	44800000 	mtc1	zero,$f0
     6a8:	3c0f0000 	lui	t7,0x0
     6ac:	c4a40094 	lwc1	$f4,148(a1)
     6b0:	240effe2 	li	t6,-30
     6b4:	25ef0000 	addiu	t7,t7,0
     6b8:	a4ae0194 	sh	t6,404(a1)
     6bc:	acaf0190 	sw	t7,400(a1)
     6c0:	e4a00068 	swc1	$f0,104(a1)
     6c4:	e4a00060 	swc1	$f0,96(a1)
     6c8:	e4a402c4 	swc1	$f4,708(a1)
     6cc:	8fa40024 	lw	a0,36(sp)
     6d0:	0c000000 	jal	0 <EnWallmas_Init>
     6d4:	24060025 	li	a2,37
     6d8:	8fa70020 	lw	a3,32(sp)
     6dc:	8fa40024 	lw	a0,36(sp)
     6e0:	2405251c 	li	a1,9500
     6e4:	2406270f 	li	a2,9999
     6e8:	0c000000 	jal	0 <EnWallmas_Init>
     6ec:	afa00010 	sw	zero,16(sp)
     6f0:	8fbf001c 	lw	ra,28(sp)
     6f4:	27bd0020 	addiu	sp,sp,32
     6f8:	03e00008 	jr	ra
     6fc:	00000000 	nop

00000700 <EnWallmas_ProximityOrSwitchInit>:
     700:	8c8e0004 	lw	t6,4(a0)
     704:	8498001c 	lh	t8,28(a0)
     708:	2401fffe 	li	at,-2
     70c:	01c17824 	and	t7,t6,at
     710:	24010001 	li	at,1
     714:	a4800194 	sh	zero,404(a0)
     718:	ac800134 	sw	zero,308(a0)
     71c:	17010005 	bne	t8,at,734 <EnWallmas_ProximityOrSwitchInit+0x34>
     720:	ac8f0004 	sw	t7,4(a0)
     724:	3c190000 	lui	t9,0x0
     728:	27390000 	addiu	t9,t9,0
     72c:	03e00008 	jr	ra
     730:	ac990190 	sw	t9,400(a0)
     734:	3c080000 	lui	t0,0x0
     738:	25080000 	addiu	t0,t0,0
     73c:	ac880190 	sw	t0,400(a0)
     740:	03e00008 	jr	ra
     744:	00000000 	nop

00000748 <EnWallmas_SetupStun>:
     748:	3c0141a0 	lui	at,0x41a0
     74c:	44812000 	mtc1	at,$f4
     750:	27bdffd0 	addiu	sp,sp,-48
     754:	3c01c040 	lui	at,0xc040
     758:	44813000 	mtc1	at,$f6
     75c:	afb00028 	sw	s0,40(sp)
     760:	00808025 	move	s0,a0
     764:	afbf002c 	sw	ra,44(sp)
     768:	3c050000 	lui	a1,0x0
     76c:	240e0002 	li	t6,2
     770:	afae0014 	sw	t6,20(sp)
     774:	24a50000 	addiu	a1,a1,0
     778:	2484014c 	addiu	a0,a0,332
     77c:	3c063fc0 	lui	a2,0x3fc0
     780:	24070000 	li	a3,0
     784:	e7a40010 	swc1	$f4,16(sp)
     788:	0c000000 	jal	0 <EnWallmas_Init>
     78c:	e7a60018 	swc1	$f6,24(sp)
     790:	920f00b1 	lbu	t7,177(s0)
     794:	44804000 	mtc1	zero,$f8
     798:	24010004 	li	at,4
     79c:	15e1000a 	bne	t7,at,7c8 <EnWallmas_SetupStun+0x80>
     7a0:	e6080068 	swc1	$f8,104(s0)
     7a4:	24180050 	li	t8,80
     7a8:	afb80010 	sw	t8,16(sp)
     7ac:	02002025 	move	a0,s0
     7b0:	24058000 	li	a1,-32768
     7b4:	240600ff 	li	a2,255
     7b8:	0c000000 	jal	0 <EnWallmas_Init>
     7bc:	00003825 	move	a3,zero
     7c0:	1000000b 	b	7f0 <EnWallmas_SetupStun+0xa8>
     7c4:	00000000 	nop
     7c8:	24190050 	li	t9,80
     7cc:	afb90010 	sw	t9,16(sp)
     7d0:	02002025 	move	a0,s0
     7d4:	00002825 	move	a1,zero
     7d8:	240600ff 	li	a2,255
     7dc:	0c000000 	jal	0 <EnWallmas_Init>
     7e0:	00003825 	move	a3,zero
     7e4:	02002025 	move	a0,s0
     7e8:	0c000000 	jal	0 <EnWallmas_Init>
     7ec:	2405389e 	li	a1,14494
     7f0:	3c090000 	lui	t1,0x0
     7f4:	24080050 	li	t0,80
     7f8:	25290000 	addiu	t1,t1,0
     7fc:	a6080194 	sh	t0,404(s0)
     800:	ae090190 	sw	t1,400(s0)
     804:	8fbf002c 	lw	ra,44(sp)
     808:	8fb00028 	lw	s0,40(sp)
     80c:	27bd0030 	addiu	sp,sp,48
     810:	03e00008 	jr	ra
     814:	00000000 	nop

00000818 <EnWallmas_WaitToDrop>:
     818:	27bdffe0 	addiu	sp,sp,-32
     81c:	afbf001c 	sw	ra,28(sp)
     820:	afb00018 	sw	s0,24(sp)
     824:	afa50024 	sw	a1,36(sp)
     828:	8ca31c44 	lw	v1,7236(a1)
     82c:	84820194 	lh	v0,404(a0)
     830:	00808025 	move	s0,a0
     834:	24660024 	addiu	a2,v1,36
     838:	8cd80000 	lw	t8,0(a2)
     83c:	2448ffff 	addiu	t0,v0,-1
     840:	ac980024 	sw	t8,36(a0)
     844:	8ccf0004 	lw	t7,4(a2)
     848:	ac8f0028 	sw	t7,40(a0)
     84c:	8cd80008 	lw	t8,8(a2)
     850:	ac98002c 	sw	t8,44(a0)
     854:	c4640080 	lwc1	$f4,128(v1)
     858:	e4840080 	swc1	$f4,128(a0)
     85c:	8c790078 	lw	t9,120(v1)
     860:	10400002 	beqz	v0,86c <EnWallmas_WaitToDrop+0x54>
     864:	ac990078 	sw	t9,120(a0)
     868:	a4880194 	sh	t0,404(a0)
     86c:	8c62067c 	lw	v0,1660(v1)
     870:	00024ac0 	sll	t1,v0,0xb
     874:	05200015 	bltz	t1,8cc <EnWallmas_WaitToDrop+0xb4>
     878:	00025100 	sll	t2,v0,0x4
     87c:	05400013 	bltz	t2,8cc <EnWallmas_WaitToDrop+0xb4>
     880:	00000000 	nop
     884:	946b0088 	lhu	t3,136(v1)
     888:	316c0001 	andi	t4,t3,0x1
     88c:	1180000f 	beqz	t4,8cc <EnWallmas_WaitToDrop+0xb4>
     890:	00000000 	nop
     894:	860d001c 	lh	t5,28(s0)
     898:	24010001 	li	at,1
     89c:	26040008 	addiu	a0,s0,8
     8a0:	55a1000f 	bnel	t5,at,8e0 <EnWallmas_WaitToDrop+0xc8>
     8a4:	86020194 	lh	v0,404(s0)
     8a8:	0c000000 	jal	0 <EnWallmas_Init>
     8ac:	00c02825 	move	a1,a2
     8b0:	3c0143a0 	lui	at,0x43a0
     8b4:	44813000 	mtc1	at,$f6
     8b8:	00000000 	nop
     8bc:	4600303c 	c.lt.s	$f6,$f0
     8c0:	00000000 	nop
     8c4:	45020006 	bc1fl	8e0 <EnWallmas_WaitToDrop+0xc8>
     8c8:	86020194 	lh	v0,404(s0)
     8cc:	0c000000 	jal	0 <EnWallmas_Init>
     8d0:	24043890 	li	a0,14480
     8d4:	240e0082 	li	t6,130
     8d8:	a60e0194 	sh	t6,404(s0)
     8dc:	86020194 	lh	v0,404(s0)
     8e0:	24010050 	li	at,80
     8e4:	02002025 	move	a0,s0
     8e8:	14410004 	bne	v0,at,8fc <EnWallmas_WaitToDrop+0xe4>
     8ec:	00000000 	nop
     8f0:	0c000000 	jal	0 <EnWallmas_Init>
     8f4:	24053890 	li	a1,14480
     8f8:	86020194 	lh	v0,404(s0)
     8fc:	14400003 	bnez	v0,90c <EnWallmas_WaitToDrop+0xf4>
     900:	02002025 	move	a0,s0
     904:	0c000000 	jal	0 <EnWallmas_Init>
     908:	8fa50024 	lw	a1,36(sp)
     90c:	8fbf001c 	lw	ra,28(sp)
     910:	8fb00018 	lw	s0,24(sp)
     914:	27bd0020 	addiu	sp,sp,32
     918:	03e00008 	jr	ra
     91c:	00000000 	nop

00000920 <EnWallmas_Drop>:
     920:	27bdffe0 	addiu	sp,sp,-32
     924:	afbf0014 	sw	ra,20(sp)
     928:	8ca31c44 	lw	v1,7236(a1)
     92c:	00803025 	move	a2,a0
     930:	afa60020 	sw	a2,32(sp)
     934:	00a02025 	move	a0,a1
     938:	afa50024 	sw	a1,36(sp)
     93c:	0c000000 	jal	0 <EnWallmas_Init>
     940:	afa3001c 	sw	v1,28(sp)
     944:	8fa3001c 	lw	v1,28(sp)
     948:	8fa50024 	lw	a1,36(sp)
     94c:	14400023 	bnez	v0,9dc <EnWallmas_Drop+0xbc>
     950:	8fa60020 	lw	a2,32(sp)
     954:	8c6e0680 	lw	t6,1664(v1)
     958:	31cf0010 	andi	t7,t6,0x10
     95c:	55e00020 	bnezl	t7,9e0 <EnWallmas_Drop+0xc0>
     960:	8fbf0014 	lw	ra,20(sp)
     964:	80780a78 	lb	t8,2680(v1)
     968:	3c0141f0 	lui	at,0x41f0
     96c:	0702001c 	bltzl	t8,9e0 <EnWallmas_Drop+0xc0>
     970:	8fbf0014 	lw	ra,20(sp)
     974:	c4c40090 	lwc1	$f4,144(a2)
     978:	44813000 	mtc1	at,$f6
     97c:	3c01c0a0 	lui	at,0xc0a0
     980:	4606203c 	c.lt.s	$f4,$f6
     984:	00000000 	nop
     988:	45020015 	bc1fl	9e0 <EnWallmas_Drop+0xc0>
     98c:	8fbf0014 	lw	ra,20(sp)
     990:	c4c00094 	lwc1	$f0,148(a2)
     994:	44814000 	mtc1	at,$f8
     998:	00000000 	nop
     99c:	4608003c 	c.lt.s	$f0,$f8
     9a0:	00000000 	nop
     9a4:	4502000e 	bc1fl	9e0 <EnWallmas_Drop+0xc0>
     9a8:	8fbf0014 	lw	ra,20(sp)
     9ac:	847904da 	lh	t9,1242(v1)
     9b0:	2728000a 	addiu	t0,t9,10
     9b4:	44885000 	mtc1	t0,$f10
     9b8:	00000000 	nop
     9bc:	46805420 	cvt.s.w	$f16,$f10
     9c0:	46008487 	neg.s	$f18,$f16
     9c4:	4600903c 	c.lt.s	$f18,$f0
     9c8:	00000000 	nop
     9cc:	45020004 	bc1fl	9e0 <EnWallmas_Drop+0xc0>
     9d0:	8fbf0014 	lw	ra,20(sp)
     9d4:	0c000000 	jal	0 <EnWallmas_Init>
     9d8:	00c02025 	move	a0,a2
     9dc:	8fbf0014 	lw	ra,20(sp)
     9e0:	27bd0020 	addiu	sp,sp,32
     9e4:	03e00008 	jr	ra
     9e8:	00000000 	nop

000009ec <EnWallmas_Land>:
     9ec:	27bdffe8 	addiu	sp,sp,-24
     9f0:	afbf0014 	sw	ra,20(sp)
     9f4:	afa40018 	sw	a0,24(sp)
     9f8:	afa5001c 	sw	a1,28(sp)
     9fc:	0c000000 	jal	0 <EnWallmas_Init>
     a00:	2484014c 	addiu	a0,a0,332
     a04:	50400004 	beqzl	v0,a18 <EnWallmas_Land+0x2c>
     a08:	8fbf0014 	lw	ra,20(sp)
     a0c:	0c000000 	jal	0 <EnWallmas_Init>
     a10:	8fa40018 	lw	a0,24(sp)
     a14:	8fbf0014 	lw	ra,20(sp)
     a18:	27bd0018 	addiu	sp,sp,24
     a1c:	03e00008 	jr	ra
     a20:	00000000 	nop

00000a24 <EnWallmas_Stand>:
     a24:	27bdffe8 	addiu	sp,sp,-24
     a28:	afbf0014 	sw	ra,20(sp)
     a2c:	afa40018 	sw	a0,24(sp)
     a30:	afa5001c 	sw	a1,28(sp)
     a34:	0c000000 	jal	0 <EnWallmas_Init>
     a38:	2484014c 	addiu	a0,a0,332
     a3c:	50400004 	beqzl	v0,a50 <EnWallmas_Stand+0x2c>
     a40:	8fae0018 	lw	t6,24(sp)
     a44:	0c000000 	jal	0 <EnWallmas_Init>
     a48:	8fa40018 	lw	a0,24(sp)
     a4c:	8fae0018 	lw	t6,24(sp)
     a50:	34018000 	li	at,0x8000
     a54:	240600b6 	li	a2,182
     a58:	85c5008a 	lh	a1,138(t6)
     a5c:	25c40032 	addiu	a0,t6,50
     a60:	00a12821 	addu	a1,a1,at
     a64:	00052c00 	sll	a1,a1,0x10
     a68:	0c000000 	jal	0 <EnWallmas_Init>
     a6c:	00052c03 	sra	a1,a1,0x10
     a70:	8fbf0014 	lw	ra,20(sp)
     a74:	27bd0018 	addiu	sp,sp,24
     a78:	03e00008 	jr	ra
     a7c:	00000000 	nop

00000a80 <EnWallmas_Walk>:
     a80:	27bdffe0 	addiu	sp,sp,-32
     a84:	afb10018 	sw	s1,24(sp)
     a88:	afb00014 	sw	s0,20(sp)
     a8c:	00808825 	move	s1,a0
     a90:	afbf001c 	sw	ra,28(sp)
     a94:	2490014c 	addiu	s0,a0,332
     a98:	afa50024 	sw	a1,36(sp)
     a9c:	0c000000 	jal	0 <EnWallmas_Init>
     aa0:	02002025 	move	a0,s0
     aa4:	50400004 	beqzl	v0,ab8 <EnWallmas_Walk+0x38>
     aa8:	8625008a 	lh	a1,138(s1)
     aac:	0c000000 	jal	0 <EnWallmas_Init>
     ab0:	02202025 	move	a0,s1
     ab4:	8625008a 	lh	a1,138(s1)
     ab8:	34018000 	li	at,0x8000
     abc:	26240032 	addiu	a0,s1,50
     ac0:	00a12821 	addu	a1,a1,at
     ac4:	00052c00 	sll	a1,a1,0x10
     ac8:	00052c03 	sra	a1,a1,0x10
     acc:	0c000000 	jal	0 <EnWallmas_Init>
     ad0:	240600b6 	li	a2,182
     ad4:	02002025 	move	a0,s0
     ad8:	0c000000 	jal	0 <EnWallmas_Init>
     adc:	24050000 	li	a1,0
     ae0:	1440000c 	bnez	v0,b14 <EnWallmas_Walk+0x94>
     ae4:	02002025 	move	a0,s0
     ae8:	0c000000 	jal	0 <EnWallmas_Init>
     aec:	3c054140 	lui	a1,0x4140
     af0:	14400008 	bnez	v0,b14 <EnWallmas_Walk+0x94>
     af4:	02002025 	move	a0,s0
     af8:	0c000000 	jal	0 <EnWallmas_Init>
     afc:	3c0541c0 	lui	a1,0x41c0
     b00:	14400004 	bnez	v0,b14 <EnWallmas_Walk+0x94>
     b04:	02002025 	move	a0,s0
     b08:	0c000000 	jal	0 <EnWallmas_Init>
     b0c:	3c054210 	lui	a1,0x4210
     b10:	10400003 	beqz	v0,b20 <EnWallmas_Walk+0xa0>
     b14:	02202025 	move	a0,s1
     b18:	0c000000 	jal	0 <EnWallmas_Init>
     b1c:	24053894 	li	a1,14484
     b20:	8fbf001c 	lw	ra,28(sp)
     b24:	8fb00014 	lw	s0,20(sp)
     b28:	8fb10018 	lw	s1,24(sp)
     b2c:	03e00008 	jr	ra
     b30:	27bd0020 	addiu	sp,sp,32

00000b34 <EnWallmas_JumpToCeiling>:
     b34:	27bdffe8 	addiu	sp,sp,-24
     b38:	afbf0014 	sw	ra,20(sp)
     b3c:	afa40018 	sw	a0,24(sp)
     b40:	afa5001c 	sw	a1,28(sp)
     b44:	0c000000 	jal	0 <EnWallmas_Init>
     b48:	2484014c 	addiu	a0,a0,332
     b4c:	50400004 	beqzl	v0,b60 <EnWallmas_JumpToCeiling+0x2c>
     b50:	8fbf0014 	lw	ra,20(sp)
     b54:	0c000000 	jal	0 <EnWallmas_Init>
     b58:	8fa40018 	lw	a0,24(sp)
     b5c:	8fbf0014 	lw	ra,20(sp)
     b60:	27bd0018 	addiu	sp,sp,24
     b64:	03e00008 	jr	ra
     b68:	00000000 	nop

00000b6c <EnWallmas_ReturnToCeiling>:
     b6c:	27bdffd8 	addiu	sp,sp,-40
     b70:	afb00018 	sw	s0,24(sp)
     b74:	afbf001c 	sw	ra,28(sp)
     b78:	afa5002c 	sw	a1,44(sp)
     b7c:	8caf1c44 	lw	t7,7236(a1)
     b80:	00808025 	move	s0,a0
     b84:	2484014c 	addiu	a0,a0,332
     b88:	afa40020 	sw	a0,32(sp)
     b8c:	0c000000 	jal	0 <EnWallmas_Init>
     b90:	afaf0024 	sw	t7,36(sp)
     b94:	3c0141a0 	lui	at,0x41a0
     b98:	44810000 	mtc1	at,$f0
     b9c:	c6040164 	lwc1	$f4,356(s0)
     ba0:	8fa40020 	lw	a0,32(sp)
     ba4:	44050000 	mfc1	a1,$f0
     ba8:	4604003c 	c.lt.s	$f0,$f4
     bac:	3c0141f0 	lui	at,0x41f0
     bb0:	45000008 	bc1f	bd4 <EnWallmas_ReturnToCeiling+0x68>
     bb4:	00000000 	nop
     bb8:	c6060028 	lwc1	$f6,40(s0)
     bbc:	44814000 	mtc1	at,$f8
     bc0:	86180194 	lh	t8,404(s0)
     bc4:	46083280 	add.s	$f10,$f6,$f8
     bc8:	27190009 	addiu	t9,t8,9
     bcc:	a6190194 	sh	t9,404(s0)
     bd0:	e60a0028 	swc1	$f10,40(s0)
     bd4:	0c000000 	jal	0 <EnWallmas_Init>
     bd8:	00000000 	nop
     bdc:	10400003 	beqz	v0,bec <EnWallmas_ReturnToCeiling+0x80>
     be0:	02002025 	move	a0,s0
     be4:	0c000000 	jal	0 <EnWallmas_Init>
     be8:	24053891 	li	a1,14481
     bec:	3c01c461 	lui	at,0xc461
     bf0:	44819000 	mtc1	at,$f18
     bf4:	c6100094 	lwc1	$f16,148(s0)
     bf8:	4612803c 	c.lt.s	$f16,$f18
     bfc:	00000000 	nop
     c00:	4502001c 	bc1fl	c74 <EnWallmas_ReturnToCeiling+0x108>
     c04:	8fbf001c 	lw	ra,28(sp)
     c08:	8602001c 	lh	v0,28(s0)
     c0c:	24010002 	li	at,2
     c10:	14410005 	bne	v0,at,c28 <EnWallmas_ReturnToCeiling+0xbc>
     c14:	00000000 	nop
     c18:	0c000000 	jal	0 <EnWallmas_Init>
     c1c:	02002025 	move	a0,s0
     c20:	10000014 	b	c74 <EnWallmas_ReturnToCeiling+0x108>
     c24:	8fbf001c 	lw	ra,28(sp)
     c28:	1040000a 	beqz	v0,c54 <EnWallmas_ReturnToCeiling+0xe8>
     c2c:	8fa50024 	lw	a1,36(sp)
     c30:	26040008 	addiu	a0,s0,8
     c34:	0c000000 	jal	0 <EnWallmas_Init>
     c38:	24a50024 	addiu	a1,a1,36
     c3c:	3c014348 	lui	at,0x4348
     c40:	44812000 	mtc1	at,$f4
     c44:	00000000 	nop
     c48:	4604003c 	c.lt.s	$f0,$f4
     c4c:	00000000 	nop
     c50:	45000005 	bc1f	c68 <EnWallmas_ReturnToCeiling+0xfc>
     c54:	02002025 	move	a0,s0
     c58:	0c000000 	jal	0 <EnWallmas_Init>
     c5c:	8fa5002c 	lw	a1,44(sp)
     c60:	10000004 	b	c74 <EnWallmas_ReturnToCeiling+0x108>
     c64:	8fbf001c 	lw	ra,28(sp)
     c68:	0c000000 	jal	0 <EnWallmas_Init>
     c6c:	02002025 	move	a0,s0
     c70:	8fbf001c 	lw	ra,28(sp)
     c74:	8fb00018 	lw	s0,24(sp)
     c78:	27bd0028 	addiu	sp,sp,40
     c7c:	03e00008 	jr	ra
     c80:	00000000 	nop

00000c84 <EnWallmas_TakeDamage>:
     c84:	27bdffd8 	addiu	sp,sp,-40
     c88:	afb00018 	sw	s0,24(sp)
     c8c:	00808025 	move	s0,a0
     c90:	afbf001c 	sw	ra,28(sp)
     c94:	2484014c 	addiu	a0,a0,332
     c98:	afa5002c 	sw	a1,44(sp)
     c9c:	0c000000 	jal	0 <EnWallmas_Init>
     ca0:	afa40024 	sw	a0,36(sp)
     ca4:	5040000c 	beqzl	v0,cd8 <EnWallmas_TakeDamage+0x54>
     ca8:	8fa40024 	lw	a0,36(sp)
     cac:	920e00af 	lbu	t6,175(s0)
     cb0:	02002025 	move	a0,s0
     cb4:	15c00005 	bnez	t6,ccc <EnWallmas_TakeDamage+0x48>
     cb8:	00000000 	nop
     cbc:	0c000000 	jal	0 <EnWallmas_Init>
     cc0:	8fa5002c 	lw	a1,44(sp)
     cc4:	10000004 	b	cd8 <EnWallmas_TakeDamage+0x54>
     cc8:	8fa40024 	lw	a0,36(sp)
     ccc:	0c000000 	jal	0 <EnWallmas_Init>
     cd0:	02002025 	move	a0,s0
     cd4:	8fa40024 	lw	a0,36(sp)
     cd8:	0c000000 	jal	0 <EnWallmas_Init>
     cdc:	3c054150 	lui	a1,0x4150
     ce0:	10400003 	beqz	v0,cf0 <EnWallmas_TakeDamage+0x6c>
     ce4:	02002025 	move	a0,s0
     ce8:	0c000000 	jal	0 <EnWallmas_Init>
     cec:	2405387b 	li	a1,14459
     cf0:	3c063e4c 	lui	a2,0x3e4c
     cf4:	34c6cccd 	ori	a2,a2,0xcccd
     cf8:	26040068 	addiu	a0,s0,104
     cfc:	0c000000 	jal	0 <EnWallmas_Init>
     d00:	24050000 	li	a1,0
     d04:	8fbf001c 	lw	ra,28(sp)
     d08:	8fb00018 	lw	s0,24(sp)
     d0c:	27bd0028 	addiu	sp,sp,40
     d10:	03e00008 	jr	ra
     d14:	00000000 	nop

00000d18 <EnWallmas_Cooldown>:
     d18:	27bdffe8 	addiu	sp,sp,-24
     d1c:	afbf0014 	sw	ra,20(sp)
     d20:	afa40018 	sw	a0,24(sp)
     d24:	afa5001c 	sw	a1,28(sp)
     d28:	0c000000 	jal	0 <EnWallmas_Init>
     d2c:	2484014c 	addiu	a0,a0,332
     d30:	50400004 	beqzl	v0,d44 <EnWallmas_Cooldown+0x2c>
     d34:	8fbf0014 	lw	ra,20(sp)
     d38:	0c000000 	jal	0 <EnWallmas_Init>
     d3c:	8fa40018 	lw	a0,24(sp)
     d40:	8fbf0014 	lw	ra,20(sp)
     d44:	27bd0018 	addiu	sp,sp,24
     d48:	03e00008 	jr	ra
     d4c:	00000000 	nop

00000d50 <EnWallmas_Die>:
     d50:	27bdffe0 	addiu	sp,sp,-32
     d54:	afb00018 	sw	s0,24(sp)
     d58:	00808025 	move	s0,a0
     d5c:	afbf001c 	sw	ra,28(sp)
     d60:	afa50024 	sw	a1,36(sp)
     d64:	3c063ac4 	lui	a2,0x3ac4
     d68:	34c69ba6 	ori	a2,a2,0x9ba6
     d6c:	24050000 	li	a1,0
     d70:	0c000000 	jal	0 <EnWallmas_Init>
     d74:	24840050 	addiu	a0,a0,80
     d78:	1040000b 	beqz	v0,da8 <EnWallmas_Die+0x58>
     d7c:	02002025 	move	a0,s0
     d80:	3c053c23 	lui	a1,0x3c23
     d84:	0c000000 	jal	0 <EnWallmas_Init>
     d88:	34a5d70a 	ori	a1,a1,0xd70a
     d8c:	8fa40024 	lw	a0,36(sp)
     d90:	02002825 	move	a1,s0
     d94:	26060024 	addiu	a2,s0,36
     d98:	0c000000 	jal	0 <EnWallmas_Init>
     d9c:	240700c0 	li	a3,192
     da0:	0c000000 	jal	0 <EnWallmas_Init>
     da4:	02002025 	move	a0,s0
     da8:	c6000050 	lwc1	$f0,80(s0)
     dac:	e6000058 	swc1	$f0,88(s0)
     db0:	e6000054 	swc1	$f0,84(s0)
     db4:	8fbf001c 	lw	ra,28(sp)
     db8:	8fb00018 	lw	s0,24(sp)
     dbc:	27bd0020 	addiu	sp,sp,32
     dc0:	03e00008 	jr	ra
     dc4:	00000000 	nop

00000dc8 <EnWallmas_TakePlayer>:
     dc8:	27bdffd0 	addiu	sp,sp,-48
     dcc:	afb00018 	sw	s0,24(sp)
     dd0:	afbf001c 	sw	ra,28(sp)
     dd4:	afa50034 	sw	a1,52(sp)
     dd8:	8caf1c44 	lw	t7,7236(a1)
     ddc:	00808025 	move	s0,a0
     de0:	2484014c 	addiu	a0,a0,332
     de4:	afa40024 	sw	a0,36(sp)
     de8:	3c053f80 	lui	a1,0x3f80
     dec:	0c000000 	jal	0 <EnWallmas_Init>
     df0:	afaf002c 	sw	t7,44(sp)
     df4:	1040000f 	beqz	v0,e34 <EnWallmas_TakePlayer+0x6c>
     df8:	3c180000 	lui	t8,0x0
     dfc:	8f180004 	lw	t8,4(t8)
     e00:	24056825 	li	a1,26661
     e04:	02002025 	move	a0,s0
     e08:	13000005 	beqz	t8,e20 <EnWallmas_TakePlayer+0x58>
     e0c:	00000000 	nop
     e10:	0c000000 	jal	0 <EnWallmas_Init>
     e14:	02002025 	move	a0,s0
     e18:	10000004 	b	e2c <EnWallmas_TakePlayer+0x64>
     e1c:	02002025 	move	a0,s0
     e20:	0c000000 	jal	0 <EnWallmas_Init>
     e24:	24056805 	li	a1,26629
     e28:	02002025 	move	a0,s0
     e2c:	0c000000 	jal	0 <EnWallmas_Init>
     e30:	24053892 	li	a1,14482
     e34:	0c000000 	jal	0 <EnWallmas_Init>
     e38:	8fa40024 	lw	a0,36(sp)
     e3c:	10400041 	beqz	v0,f44 <EnWallmas_TakePlayer+0x17c>
     e40:	3c0b0000 	lui	t3,0x0
     e44:	8fa3002c 	lw	v1,44(sp)
     e48:	c6040024 	lwc1	$f4,36(s0)
     e4c:	3c014120 	lui	at,0x4120
     e50:	3c080000 	lui	t0,0x0
     e54:	e4640024 	swc1	$f4,36(v1)
     e58:	c606002c 	lwc1	$f6,44(s0)
     e5c:	3c090000 	lui	t1,0x0
     e60:	e466002c 	swc1	$f6,44(v1)
     e64:	86190194 	lh	t9,404(s0)
     e68:	07230008 	bgezl	t9,e8c <EnWallmas_TakePlayer+0xc4>
     e6c:	c6120028 	lwc1	$f18,40(s0)
     e70:	3c014000 	lui	at,0x4000
     e74:	44815000 	mtc1	at,$f10
     e78:	c6080028 	lwc1	$f8,40(s0)
     e7c:	460a4400 	add.s	$f16,$f8,$f10
     e80:	10000006 	b	e9c <EnWallmas_TakePlayer+0xd4>
     e84:	e6100028 	swc1	$f16,40(s0)
     e88:	c6120028 	lwc1	$f18,40(s0)
     e8c:	44812000 	mtc1	at,$f4
     e90:	00000000 	nop
     e94:	46049180 	add.s	$f6,$f18,$f4
     e98:	e6060028 	swc1	$f6,40(s0)
     e9c:	8d080004 	lw	t0,4(t0)
     ea0:	3c014248 	lui	at,0x4248
     ea4:	51000008 	beqzl	t0,ec8 <EnWallmas_TakePlayer+0x100>
     ea8:	c6120028 	lwc1	$f18,40(s0)
     eac:	3c0141f0 	lui	at,0x41f0
     eb0:	44815000 	mtc1	at,$f10
     eb4:	c6080028 	lwc1	$f8,40(s0)
     eb8:	460a4401 	sub.s	$f16,$f8,$f10
     ebc:	10000006 	b	ed8 <EnWallmas_TakePlayer+0x110>
     ec0:	e4700028 	swc1	$f16,40(v1)
     ec4:	c6120028 	lwc1	$f18,40(s0)
     ec8:	44812000 	mtc1	at,$f4
     ecc:	00000000 	nop
     ed0:	46049181 	sub.s	$f6,$f18,$f4
     ed4:	e4660028 	swc1	$f6,40(v1)
     ed8:	86020194 	lh	v0,404(s0)
     edc:	2401ffe2 	li	at,-30
     ee0:	1441000f 	bne	v0,at,f20 <EnWallmas_TakePlayer+0x158>
     ee4:	00000000 	nop
     ee8:	8d290004 	lw	t1,4(t1)
     eec:	2405682c 	li	a1,26668
     ef0:	02002025 	move	a0,s0
     ef4:	11200006 	beqz	t1,f10 <EnWallmas_TakePlayer+0x148>
     ef8:	00000000 	nop
     efc:	0c000000 	jal	0 <EnWallmas_Init>
     f00:	02002025 	move	a0,s0
     f04:	86020194 	lh	v0,404(s0)
     f08:	10000005 	b	f20 <EnWallmas_TakePlayer+0x158>
     f0c:	8fa3002c 	lw	v1,44(sp)
     f10:	0c000000 	jal	0 <EnWallmas_Init>
     f14:	2405680c 	li	a1,26636
     f18:	86020194 	lh	v0,404(s0)
     f1c:	8fa3002c 	lw	v1,44(sp)
     f20:	14400005 	bnez	v0,f38 <EnWallmas_TakePlayer+0x170>
     f24:	02002025 	move	a0,s0
     f28:	0c000000 	jal	0 <EnWallmas_Init>
     f2c:	24053891 	li	a1,14481
     f30:	86020194 	lh	v0,404(s0)
     f34:	8fa3002c 	lw	v1,44(sp)
     f38:	244a0002 	addiu	t2,v0,2
     f3c:	10000014 	b	f90 <EnWallmas_TakePlayer+0x1c8>
     f40:	a60a0194 	sh	t2,404(s0)
     f44:	8d6b0004 	lw	t3,4(t3)
     f48:	8fac002c 	lw	t4,44(sp)
     f4c:	3c014248 	lui	at,0x4248
     f50:	51600006 	beqzl	t3,f6c <EnWallmas_TakePlayer+0x1a4>
     f54:	44810000 	mtc1	at,$f0
     f58:	3c0141f0 	lui	at,0x41f0
     f5c:	44810000 	mtc1	at,$f0
     f60:	10000004 	b	f74 <EnWallmas_TakePlayer+0x1ac>
     f64:	c5880028 	lwc1	$f8,40(t4)
     f68:	44810000 	mtc1	at,$f0
     f6c:	00000000 	nop
     f70:	c5880028 	lwc1	$f8,40(t4)
     f74:	26040028 	addiu	a0,s0,40
     f78:	3c0640a0 	lui	a2,0x40a0
     f7c:	46080280 	add.s	$f10,$f0,$f8
     f80:	44055000 	mfc1	a1,$f10
     f84:	0c000000 	jal	0 <EnWallmas_Init>
     f88:	00000000 	nop
     f8c:	8fa3002c 	lw	v1,44(sp)
     f90:	26040024 	addiu	a0,s0,36
     f94:	8c650024 	lw	a1,36(v1)
     f98:	0c000000 	jal	0 <EnWallmas_Init>
     f9c:	3c064040 	lui	a2,0x4040
     fa0:	8fad002c 	lw	t5,44(sp)
     fa4:	2604002c 	addiu	a0,s0,44
     fa8:	3c064040 	lui	a2,0x4040
     fac:	0c000000 	jal	0 <EnWallmas_Init>
     fb0:	8da5002c 	lw	a1,44(t5)
     fb4:	860e0194 	lh	t6,404(s0)
     fb8:	2401001e 	li	at,30
     fbc:	55c10006 	bnel	t6,at,fd8 <EnWallmas_TakePlayer+0x210>
     fc0:	8fbf001c 	lw	ra,28(sp)
     fc4:	0c000000 	jal	0 <EnWallmas_Init>
     fc8:	24045801 	li	a0,22529
     fcc:	0c000000 	jal	0 <EnWallmas_Init>
     fd0:	8fa40034 	lw	a0,52(sp)
     fd4:	8fbf001c 	lw	ra,28(sp)
     fd8:	8fb00018 	lw	s0,24(sp)
     fdc:	27bd0030 	addiu	sp,sp,48
     fe0:	03e00008 	jr	ra
     fe4:	00000000 	nop

00000fe8 <EnWallmas_WaitForProximity>:
     fe8:	27bdffe8 	addiu	sp,sp,-24
     fec:	afbf0014 	sw	ra,20(sp)
     ff0:	afa40018 	sw	a0,24(sp)
     ff4:	afa5001c 	sw	a1,28(sp)
     ff8:	8ca21c44 	lw	v0,7236(a1)
     ffc:	24840008 	addiu	a0,a0,8
    1000:	0c000000 	jal	0 <EnWallmas_Init>
    1004:	24450024 	addiu	a1,v0,36
    1008:	3c014348 	lui	at,0x4348
    100c:	44812000 	mtc1	at,$f4
    1010:	8fa40018 	lw	a0,24(sp)
    1014:	4604003c 	c.lt.s	$f0,$f4
    1018:	00000000 	nop
    101c:	45020004 	bc1fl	1030 <EnWallmas_WaitForProximity+0x48>
    1020:	8fbf0014 	lw	ra,20(sp)
    1024:	0c000000 	jal	0 <EnWallmas_Init>
    1028:	8fa5001c 	lw	a1,28(sp)
    102c:	8fbf0014 	lw	ra,20(sp)
    1030:	27bd0018 	addiu	sp,sp,24
    1034:	03e00008 	jr	ra
    1038:	00000000 	nop

0000103c <EnWallmas_WaitForSwitchFlag>:
    103c:	27bdffe8 	addiu	sp,sp,-24
    1040:	afa40018 	sw	a0,24(sp)
    1044:	8fae0018 	lw	t6,24(sp)
    1048:	afbf0014 	sw	ra,20(sp)
    104c:	afa5001c 	sw	a1,28(sp)
    1050:	00a02025 	move	a0,a1
    1054:	0c000000 	jal	0 <EnWallmas_Init>
    1058:	85c50196 	lh	a1,406(t6)
    105c:	10400006 	beqz	v0,1078 <EnWallmas_WaitForSwitchFlag+0x3c>
    1060:	8fa40018 	lw	a0,24(sp)
    1064:	0c000000 	jal	0 <EnWallmas_Init>
    1068:	8fa5001c 	lw	a1,28(sp)
    106c:	8fb80018 	lw	t8,24(sp)
    1070:	240f0051 	li	t7,81
    1074:	a70f0194 	sh	t7,404(t8)
    1078:	8fbf0014 	lw	ra,20(sp)
    107c:	27bd0018 	addiu	sp,sp,24
    1080:	03e00008 	jr	ra
    1084:	00000000 	nop

00001088 <EnWallmas_Stun>:
    1088:	27bdffe8 	addiu	sp,sp,-24
    108c:	afbf0014 	sw	ra,20(sp)
    1090:	00803025 	move	a2,a0
    1094:	afa5001c 	sw	a1,28(sp)
    1098:	afa60018 	sw	a2,24(sp)
    109c:	0c000000 	jal	0 <EnWallmas_Init>
    10a0:	2484014c 	addiu	a0,a0,332
    10a4:	8fa60018 	lw	a2,24(sp)
    10a8:	84c20194 	lh	v0,404(a2)
    10ac:	10400003 	beqz	v0,10bc <EnWallmas_Stun+0x34>
    10b0:	244effff 	addiu	t6,v0,-1
    10b4:	a4ce0194 	sh	t6,404(a2)
    10b8:	84c20194 	lh	v0,404(a2)
    10bc:	5440000c 	bnezl	v0,10f0 <EnWallmas_Stun+0x68>
    10c0:	8fbf0014 	lw	ra,20(sp)
    10c4:	90cf00af 	lbu	t7,175(a2)
    10c8:	00c02025 	move	a0,a2
    10cc:	15e00005 	bnez	t7,10e4 <EnWallmas_Stun+0x5c>
    10d0:	00000000 	nop
    10d4:	0c000000 	jal	0 <EnWallmas_Init>
    10d8:	8fa5001c 	lw	a1,28(sp)
    10dc:	10000004 	b	10f0 <EnWallmas_Stun+0x68>
    10e0:	8fbf0014 	lw	ra,20(sp)
    10e4:	0c000000 	jal	0 <EnWallmas_Init>
    10e8:	00c02025 	move	a0,a2
    10ec:	8fbf0014 	lw	ra,20(sp)
    10f0:	27bd0018 	addiu	sp,sp,24
    10f4:	03e00008 	jr	ra
    10f8:	00000000 	nop

000010fc <EnWallmas_ColUpdate>:
    10fc:	27bdffd8 	addiu	sp,sp,-40
    1100:	afbf0024 	sw	ra,36(sp)
    1104:	afb00020 	sw	s0,32(sp)
    1108:	afa5002c 	sw	a1,44(sp)
    110c:	908202d9 	lbu	v0,729(a0)
    1110:	00808025 	move	s0,a0
    1114:	260502e0 	addiu	a1,s0,736
    1118:	304e0002 	andi	t6,v0,0x2
    111c:	11c00038 	beqz	t6,1200 <EnWallmas_ColUpdate+0x104>
    1120:	304ffffd 	andi	t7,v0,0xfffd
    1124:	a08f02d9 	sb	t7,729(a0)
    1128:	0c000000 	jal	0 <EnWallmas_Init>
    112c:	24060001 	li	a2,1
    1130:	921800b1 	lbu	t8,177(s0)
    1134:	17000004 	bnez	t8,1148 <EnWallmas_ColUpdate+0x4c>
    1138:	00000000 	nop
    113c:	921900b0 	lbu	t9,176(s0)
    1140:	53200030 	beqzl	t9,1204 <EnWallmas_ColUpdate+0x108>
    1144:	8fbf0024 	lw	ra,36(sp)
    1148:	0c000000 	jal	0 <EnWallmas_Init>
    114c:	02002025 	move	a0,s0
    1150:	1440000b 	bnez	v0,1180 <EnWallmas_ColUpdate+0x84>
    1154:	8fa4002c 	lw	a0,44(sp)
    1158:	0c000000 	jal	0 <EnWallmas_Init>
    115c:	02002825 	move	a1,s0
    1160:	02002025 	move	a0,s0
    1164:	0c000000 	jal	0 <EnWallmas_Init>
    1168:	24053896 	li	a1,14486
    116c:	8e080004 	lw	t0,4(s0)
    1170:	2401fffe 	li	at,-2
    1174:	01014824 	and	t1,t0,at
    1178:	10000007 	b	1198 <EnWallmas_ColUpdate+0x9c>
    117c:	ae090004 	sw	t1,4(s0)
    1180:	920a00b0 	lbu	t2,176(s0)
    1184:	02002025 	move	a0,s0
    1188:	51400004 	beqzl	t2,119c <EnWallmas_ColUpdate+0xa0>
    118c:	920200b1 	lbu	v0,177(s0)
    1190:	0c000000 	jal	0 <EnWallmas_Init>
    1194:	24053895 	li	a1,14485
    1198:	920200b1 	lbu	v0,177(s0)
    119c:	24010004 	li	at,4
    11a0:	10410003 	beq	v0,at,11b0 <EnWallmas_ColUpdate+0xb4>
    11a4:	24010001 	li	at,1
    11a8:	5441000b 	bnel	v0,at,11d8 <EnWallmas_ColUpdate+0xdc>
    11ac:	24010002 	li	at,2
    11b0:	8e0c0190 	lw	t4,400(s0)
    11b4:	3c0b0000 	lui	t3,0x0
    11b8:	256b0000 	addiu	t3,t3,0
    11bc:	516c0011 	beql	t3,t4,1204 <EnWallmas_ColUpdate+0x108>
    11c0:	8fbf0024 	lw	ra,36(sp)
    11c4:	0c000000 	jal	0 <EnWallmas_Init>
    11c8:	02002025 	move	a0,s0
    11cc:	1000000d 	b	1204 <EnWallmas_ColUpdate+0x108>
    11d0:	8fbf0024 	lw	ra,36(sp)
    11d4:	24010002 	li	at,2
    11d8:	14410007 	bne	v0,at,11f8 <EnWallmas_ColUpdate+0xfc>
    11dc:	8fa4002c 	lw	a0,44(sp)
    11e0:	240d0028 	li	t5,40
    11e4:	afad0010 	sw	t5,16(sp)
    11e8:	02002825 	move	a1,s0
    11ec:	26060024 	addiu	a2,s0,36
    11f0:	0c000000 	jal	0 <EnWallmas_Init>
    11f4:	24070028 	li	a3,40
    11f8:	0c000000 	jal	0 <EnWallmas_Init>
    11fc:	02002025 	move	a0,s0
    1200:	8fbf0024 	lw	ra,36(sp)
    1204:	8fb00020 	lw	s0,32(sp)
    1208:	27bd0028 	addiu	sp,sp,40
    120c:	03e00008 	jr	ra
    1210:	00000000 	nop

00001214 <EnWallmas_Update>:
    1214:	27bdffc8 	addiu	sp,sp,-56
    1218:	afbf0024 	sw	ra,36(sp)
    121c:	afb00020 	sw	s0,32(sp)
    1220:	00808025 	move	s0,a0
    1224:	0c000000 	jal	0 <EnWallmas_Init>
    1228:	afa5003c 	sw	a1,60(sp)
    122c:	8e190190 	lw	t9,400(s0)
    1230:	02002025 	move	a0,s0
    1234:	8fa5003c 	lw	a1,60(sp)
    1238:	0320f809 	jalr	t9
    123c:	00000000 	nop
    1240:	8e020190 	lw	v0,400(s0)
    1244:	3c0e0000 	lui	t6,0x0
    1248:	25ce0000 	addiu	t6,t6,0
    124c:	11c2005c 	beq	t6,v0,13c0 <EnWallmas_Update+0x1ac>
    1250:	3c0f0000 	lui	t7,0x0
    1254:	25ef0000 	addiu	t7,t7,0
    1258:	11e20059 	beq	t7,v0,13c0 <EnWallmas_Update+0x1ac>
    125c:	3c030000 	lui	v1,0x0
    1260:	24630000 	addiu	v1,v1,0
    1264:	10620056 	beq	v1,v0,13c0 <EnWallmas_Update+0x1ac>
    1268:	3c180000 	lui	t8,0x0
    126c:	27180000 	addiu	t8,t8,0
    1270:	13020053 	beq	t8,v0,13c0 <EnWallmas_Update+0x1ac>
    1274:	3c080000 	lui	t0,0x0
    1278:	25080000 	addiu	t0,t0,0
    127c:	11020006 	beq	t0,v0,1298 <EnWallmas_Update+0x84>
    1280:	00000000 	nop
    1284:	10620004 	beq	v1,v0,1298 <EnWallmas_Update+0x84>
    1288:	00000000 	nop
    128c:	0c000000 	jal	0 <EnWallmas_Init>
    1290:	02002025 	move	a0,s0
    1294:	8e020190 	lw	v0,400(s0)
    1298:	3c030000 	lui	v1,0x0
    129c:	24630000 	addiu	v1,v1,0
    12a0:	1062000d 	beq	v1,v0,12d8 <EnWallmas_Update+0xc4>
    12a4:	8fa4003c 	lw	a0,60(sp)
    12a8:	44802000 	mtc1	zero,$f4
    12ac:	2409001d 	li	t1,29
    12b0:	afa90014 	sw	t1,20(sp)
    12b4:	02002825 	move	a1,s0
    12b8:	3c0641a0 	lui	a2,0x41a0
    12bc:	3c0741c8 	lui	a3,0x41c8
    12c0:	afa3002c 	sw	v1,44(sp)
    12c4:	0c000000 	jal	0 <EnWallmas_Init>
    12c8:	e7a40010 	swc1	$f4,16(sp)
    12cc:	8fa3002c 	lw	v1,44(sp)
    12d0:	10000010 	b	1314 <EnWallmas_Update+0x100>
    12d4:	8e020190 	lw	v0,400(s0)
    12d8:	c60002c4 	lwc1	$f0,708(s0)
    12dc:	c6060028 	lwc1	$f6,40(s0)
    12e0:	4600303e 	c.le.s	$f6,$f0
    12e4:	00000000 	nop
    12e8:	4500000a 	bc1f	1314 <EnWallmas_Update+0x100>
    12ec:	00000000 	nop
    12f0:	44804000 	mtc1	zero,$f8
    12f4:	e6000028 	swc1	$f0,40(s0)
    12f8:	02002025 	move	a0,s0
    12fc:	e6080060 	swc1	$f8,96(s0)
    1300:	afa3002c 	sw	v1,44(sp)
    1304:	0c000000 	jal	0 <EnWallmas_Init>
    1308:	8fa5003c 	lw	a1,60(sp)
    130c:	8fa3002c 	lw	v1,44(sp)
    1310:	8e020190 	lw	v0,400(s0)
    1314:	3c0a0000 	lui	t2,0x0
    1318:	254a0000 	addiu	t2,t2,0
    131c:	1142001c 	beq	t2,v0,1390 <EnWallmas_Update+0x17c>
    1320:	00000000 	nop
    1324:	1062001a 	beq	v1,v0,1390 <EnWallmas_Update+0x17c>
    1328:	02002025 	move	a0,s0
    132c:	260502c8 	addiu	a1,s0,712
    1330:	0c000000 	jal	0 <EnWallmas_Init>
    1334:	afa50028 	sw	a1,40(sp)
    1338:	8fa4003c 	lw	a0,60(sp)
    133c:	3c010001 	lui	at,0x1
    1340:	34211e60 	ori	at,at,0x1e60
    1344:	00812821 	addu	a1,a0,at
    1348:	afa5002c 	sw	a1,44(sp)
    134c:	0c000000 	jal	0 <EnWallmas_Init>
    1350:	8fa60028 	lw	a2,40(sp)
    1354:	8e0c0190 	lw	t4,400(s0)
    1358:	3c0b0000 	lui	t3,0x0
    135c:	256b0000 	addiu	t3,t3,0
    1360:	116c000b 	beq	t3,t4,1390 <EnWallmas_Update+0x17c>
    1364:	8fa5002c 	lw	a1,44(sp)
    1368:	960d0088 	lhu	t5,136(s0)
    136c:	31b90001 	andi	t9,t5,0x1
    1370:	13200007 	beqz	t9,1390 <EnWallmas_Update+0x17c>
    1374:	00000000 	nop
    1378:	960e0110 	lhu	t6,272(s0)
    137c:	8fa4003c 	lw	a0,60(sp)
    1380:	15c00003 	bnez	t6,1390 <EnWallmas_Update+0x17c>
    1384:	00000000 	nop
    1388:	0c000000 	jal	0 <EnWallmas_Init>
    138c:	8fa60028 	lw	a2,40(sp)
    1390:	3c0f0000 	lui	t7,0x0
    1394:	25ef0000 	addiu	t7,t7,0
    1398:	afaf002c 	sw	t7,44(sp)
    139c:	02002025 	move	a0,s0
    13a0:	0c000000 	jal	0 <EnWallmas_Init>
    13a4:	3c0541c8 	lui	a1,0x41c8
    13a8:	8fb8002c 	lw	t8,44(sp)
    13ac:	8e080190 	lw	t0,400(s0)
    13b0:	53080004 	beql	t8,t0,13c4 <EnWallmas_Update+0x1b0>
    13b4:	8fbf0024 	lw	ra,36(sp)
    13b8:	86090032 	lh	t1,50(s0)
    13bc:	a60900b6 	sh	t1,182(s0)
    13c0:	8fbf0024 	lw	ra,36(sp)
    13c4:	8fb00020 	lw	s0,32(sp)
    13c8:	27bd0038 	addiu	sp,sp,56
    13cc:	03e00008 	jr	ra
    13d0:	00000000 	nop

000013d4 <EnWallmas_DrawXlu>:
    13d4:	27bdff68 	addiu	sp,sp,-152
    13d8:	afbf0024 	sw	ra,36(sp)
    13dc:	afb00020 	sw	s0,32(sp)
    13e0:	afa5009c 	sw	a1,156(sp)
    13e4:	8c8e0078 	lw	t6,120(a0)
    13e8:	00808025 	move	s0,a0
    13ec:	51c0006d 	beqzl	t6,15a4 <EnWallmas_DrawXlu+0x1d0>
    13f0:	8fbf0024 	lw	ra,36(sp)
    13f4:	848f0194 	lh	t7,404(a0)
    13f8:	3c060000 	lui	a2,0x0
    13fc:	24c60000 	addiu	a2,a2,0
    1400:	29e10051 	slti	at,t7,81
    1404:	14200006 	bnez	at,1420 <EnWallmas_DrawXlu+0x4c>
    1408:	8fa9009c 	lw	t1,156(sp)
    140c:	8c990190 	lw	t9,400(a0)
    1410:	3c180000 	lui	t8,0x0
    1414:	27180000 	addiu	t8,t8,0
    1418:	57190062 	bnel	t8,t9,15a4 <EnWallmas_DrawXlu+0x1d0>
    141c:	8fbf0024 	lw	ra,36(sp)
    1420:	8d250000 	lw	a1,0(t1)
    1424:	27a4003c 	addiu	a0,sp,60
    1428:	2407056a 	li	a3,1386
    142c:	0c000000 	jal	0 <EnWallmas_Init>
    1430:	afa5004c 	sw	a1,76(sp)
    1434:	8faa009c 	lw	t2,156(sp)
    1438:	0c000000 	jal	0 <EnWallmas_Init>
    143c:	8d440000 	lw	a0,0(t2)
    1440:	8fa8004c 	lw	t0,76(sp)
    1444:	3c0cfa00 	lui	t4,0xfa00
    1448:	240d00ff 	li	t5,255
    144c:	8d0202d0 	lw	v0,720(t0)
    1450:	27ae0050 	addiu	t6,sp,80
    1454:	244b0008 	addiu	t3,v0,8
    1458:	ad0b02d0 	sw	t3,720(t0)
    145c:	ac4d0004 	sw	t5,4(v0)
    1460:	ac4c0000 	sw	t4,0(v0)
    1464:	8e07002c 	lw	a3,44(s0)
    1468:	8e060080 	lw	a2,128(s0)
    146c:	8e050024 	lw	a1,36(s0)
    1470:	8e040078 	lw	a0,120(s0)
    1474:	0c000000 	jal	0 <EnWallmas_Init>
    1478:	afae0010 	sw	t6,16(sp)
    147c:	27a40050 	addiu	a0,sp,80
    1480:	0c000000 	jal	0 <EnWallmas_Init>
    1484:	00002825 	move	a1,zero
    1488:	8e020190 	lw	v0,400(s0)
    148c:	3c0f0000 	lui	t7,0x0
    1490:	25ef0000 	addiu	t7,t7,0
    1494:	11e20010 	beq	t7,v0,14d8 <EnWallmas_DrawXlu+0x104>
    1498:	3c180000 	lui	t8,0x0
    149c:	27180000 	addiu	t8,t8,0
    14a0:	1302000d 	beq	t8,v0,14d8 <EnWallmas_DrawXlu+0x104>
    14a4:	3c190000 	lui	t9,0x0
    14a8:	27390000 	addiu	t9,t9,0
    14ac:	1322000a 	beq	t9,v0,14d8 <EnWallmas_DrawXlu+0x104>
    14b0:	3c090000 	lui	t1,0x0
    14b4:	25290000 	addiu	t1,t1,0
    14b8:	11220007 	beq	t1,v0,14d8 <EnWallmas_DrawXlu+0x104>
    14bc:	3c014248 	lui	at,0x4248
    14c0:	c6040050 	lwc1	$f4,80(s0)
    14c4:	44813000 	mtc1	at,$f6
    14c8:	00000000 	nop
    14cc:	46062302 	mul.s	$f12,$f4,$f6
    14d0:	10000010 	b	1514 <EnWallmas_DrawXlu+0x140>
    14d4:	3c013f80 	lui	at,0x3f80
    14d8:	860a0194 	lh	t2,404(s0)
    14dc:	240b0050 	li	t3,80
    14e0:	016a1023 	subu	v0,t3,t2
    14e4:	28410051 	slti	at,v0,81
    14e8:	14200003 	bnez	at,14f8 <EnWallmas_DrawXlu+0x124>
    14ec:	00401825 	move	v1,v0
    14f0:	10000001 	b	14f8 <EnWallmas_DrawXlu+0x124>
    14f4:	24030050 	li	v1,80
    14f8:	44834000 	mtc1	v1,$f8
    14fc:	3c010000 	lui	at,0x0
    1500:	c4300078 	lwc1	$f16,120(at)
    1504:	468042a0 	cvt.s.w	$f10,$f8
    1508:	46105302 	mul.s	$f12,$f10,$f16
    150c:	00000000 	nop
    1510:	3c013f80 	lui	at,0x3f80
    1514:	44817000 	mtc1	at,$f14
    1518:	44066000 	mfc1	a2,$f12
    151c:	0c000000 	jal	0 <EnWallmas_Init>
    1520:	24070001 	li	a3,1
    1524:	8fa3004c 	lw	v1,76(sp)
    1528:	3c0dda38 	lui	t5,0xda38
    152c:	35ad0003 	ori	t5,t5,0x3
    1530:	8c6202d0 	lw	v0,720(v1)
    1534:	3c050000 	lui	a1,0x0
    1538:	24a50014 	addiu	a1,a1,20
    153c:	244c0008 	addiu	t4,v0,8
    1540:	ac6c02d0 	sw	t4,720(v1)
    1544:	ac4d0000 	sw	t5,0(v0)
    1548:	8fae009c 	lw	t6,156(sp)
    154c:	2406058d 	li	a2,1421
    1550:	00408025 	move	s0,v0
    1554:	0c000000 	jal	0 <EnWallmas_Init>
    1558:	8dc40000 	lw	a0,0(t6)
    155c:	ae020004 	sw	v0,4(s0)
    1560:	8faf004c 	lw	t7,76(sp)
    1564:	3c090000 	lui	t1,0x0
    1568:	25290000 	addiu	t1,t1,0
    156c:	8de202d0 	lw	v0,720(t7)
    1570:	3c19de00 	lui	t9,0xde00
    1574:	3c060000 	lui	a2,0x0
    1578:	24580008 	addiu	t8,v0,8
    157c:	adf802d0 	sw	t8,720(t7)
    1580:	ac490004 	sw	t1,4(v0)
    1584:	ac590000 	sw	t9,0(v0)
    1588:	8fab009c 	lw	t3,156(sp)
    158c:	24c60028 	addiu	a2,a2,40
    1590:	27a4003c 	addiu	a0,sp,60
    1594:	24070592 	li	a3,1426
    1598:	0c000000 	jal	0 <EnWallmas_Init>
    159c:	8d650000 	lw	a1,0(t3)
    15a0:	8fbf0024 	lw	ra,36(sp)
    15a4:	8fb00020 	lw	s0,32(sp)
    15a8:	27bd0098 	addiu	sp,sp,152
    15ac:	03e00008 	jr	ra
    15b0:	00000000 	nop

000015b4 <EnWallMas_OverrideLimbDraw>:
    15b4:	24010001 	li	at,1
    15b8:	afa40000 	sw	a0,0(sp)
    15bc:	14a10018 	bne	a1,at,1620 <EnWallMas_OverrideLimbDraw+0x6c>
    15c0:	afa60008 	sw	a2,8(sp)
    15c4:	8fa20014 	lw	v0,20(sp)
    15c8:	3c0e0000 	lui	t6,0x0
    15cc:	25ce0000 	addiu	t6,t6,0
    15d0:	8c4f0190 	lw	t7,400(v0)
    15d4:	3c0144c8 	lui	at,0x44c8
    15d8:	51cf0008 	beql	t6,t7,15fc <EnWallMas_OverrideLimbDraw+0x48>
    15dc:	c440015c 	lwc1	$f0,348(v0)
    15e0:	c4e40008 	lwc1	$f4,8(a3)
    15e4:	44813000 	mtc1	at,$f6
    15e8:	00001025 	move	v0,zero
    15ec:	46062201 	sub.s	$f8,$f4,$f6
    15f0:	03e00008 	jr	ra
    15f4:	e4e80008 	swc1	$f8,8(a3)
    15f8:	c440015c 	lwc1	$f0,348(v0)
    15fc:	c4500164 	lwc1	$f16,356(v0)
    1600:	3c0144c8 	lui	at,0x44c8
    1604:	44815000 	mtc1	at,$f10
    1608:	46100481 	sub.s	$f18,$f0,$f16
    160c:	c4e80008 	lwc1	$f8,8(a3)
    1610:	46125102 	mul.s	$f4,$f10,$f18
    1614:	46002183 	div.s	$f6,$f4,$f0
    1618:	46064401 	sub.s	$f16,$f8,$f6
    161c:	e4f00008 	swc1	$f16,8(a3)
    1620:	03e00008 	jr	ra
    1624:	00001025 	move	v0,zero

00001628 <EnWallMas_PostLimbDraw>:
    1628:	27bdffc0 	addiu	sp,sp,-64
    162c:	24010002 	li	at,2
    1630:	afbf001c 	sw	ra,28(sp)
    1634:	afb00018 	sw	s0,24(sp)
    1638:	afa40040 	sw	a0,64(sp)
    163c:	afa60048 	sw	a2,72(sp)
    1640:	14a1003f 	bne	a1,at,1740 <EnWallMas_PostLimbDraw+0x118>
    1644:	afa7004c 	sw	a3,76(sp)
    1648:	8c850000 	lw	a1,0(a0)
    164c:	3c060000 	lui	a2,0x0
    1650:	24c6003c 	addiu	a2,a2,60
    1654:	27a4002c 	addiu	a0,sp,44
    1658:	240705c6 	li	a3,1478
    165c:	0c000000 	jal	0 <EnWallmas_Init>
    1660:	00a08025 	move	s0,a1
    1664:	0c000000 	jal	0 <EnWallmas_Init>
    1668:	00000000 	nop
    166c:	3c0144c8 	lui	at,0x44c8
    1670:	44816000 	mtc1	at,$f12
    1674:	3c01c42f 	lui	at,0xc42f
    1678:	44817000 	mtc1	at,$f14
    167c:	3c06c4d4 	lui	a2,0xc4d4
    1680:	34c68000 	ori	a2,a2,0x8000
    1684:	0c000000 	jal	0 <EnWallmas_Init>
    1688:	24070001 	li	a3,1
    168c:	3c010000 	lui	at,0x0
    1690:	c42c007c 	lwc1	$f12,124(at)
    1694:	0c000000 	jal	0 <EnWallmas_Init>
    1698:	24050001 	li	a1,1
    169c:	3c010000 	lui	at,0x0
    16a0:	c42c0080 	lwc1	$f12,128(at)
    16a4:	0c000000 	jal	0 <EnWallmas_Init>
    16a8:	24050001 	li	a1,1
    16ac:	3c014000 	lui	at,0x4000
    16b0:	44816000 	mtc1	at,$f12
    16b4:	24070001 	li	a3,1
    16b8:	44066000 	mfc1	a2,$f12
    16bc:	0c000000 	jal	0 <EnWallmas_Init>
    16c0:	46006386 	mov.s	$f14,$f12
    16c4:	8e0202c0 	lw	v0,704(s0)
    16c8:	3c18da38 	lui	t8,0xda38
    16cc:	37180003 	ori	t8,t8,0x3
    16d0:	244f0008 	addiu	t7,v0,8
    16d4:	ae0f02c0 	sw	t7,704(s0)
    16d8:	ac580000 	sw	t8,0(v0)
    16dc:	8fb90040 	lw	t9,64(sp)
    16e0:	3c050000 	lui	a1,0x0
    16e4:	24a50050 	addiu	a1,a1,80
    16e8:	8f240000 	lw	a0,0(t9)
    16ec:	240605d1 	li	a2,1489
    16f0:	0c000000 	jal	0 <EnWallmas_Init>
    16f4:	afa20028 	sw	v0,40(sp)
    16f8:	8fa30028 	lw	v1,40(sp)
    16fc:	3c0a0000 	lui	t2,0x0
    1700:	254a0000 	addiu	t2,t2,0
    1704:	ac620004 	sw	v0,4(v1)
    1708:	8e0202c0 	lw	v0,704(s0)
    170c:	3c09de00 	lui	t1,0xde00
    1710:	24480008 	addiu	t0,v0,8
    1714:	ae0802c0 	sw	t0,704(s0)
    1718:	ac4a0004 	sw	t2,4(v0)
    171c:	0c000000 	jal	0 <EnWallmas_Init>
    1720:	ac490000 	sw	t1,0(v0)
    1724:	8fab0040 	lw	t3,64(sp)
    1728:	3c060000 	lui	a2,0x0
    172c:	24c60064 	addiu	a2,a2,100
    1730:	27a4002c 	addiu	a0,sp,44
    1734:	240705d7 	li	a3,1495
    1738:	0c000000 	jal	0 <EnWallmas_Init>
    173c:	8d650000 	lw	a1,0(t3)
    1740:	8fbf001c 	lw	ra,28(sp)
    1744:	8fb00018 	lw	s0,24(sp)
    1748:	27bd0040 	addiu	sp,sp,64
    174c:	03e00008 	jr	ra
    1750:	00000000 	nop

00001754 <EnWallmas_Draw>:
    1754:	27bdffd0 	addiu	sp,sp,-48
    1758:	afbf002c 	sw	ra,44(sp)
    175c:	afb00028 	sw	s0,40(sp)
    1760:	afa50034 	sw	a1,52(sp)
    1764:	8c8f0190 	lw	t7,400(a0)
    1768:	3c0e0000 	lui	t6,0x0
    176c:	25ce0000 	addiu	t6,t6,0
    1770:	11cf000f 	beq	t6,t7,17b0 <EnWallmas_Draw+0x5c>
    1774:	00808025 	move	s0,a0
    1778:	0c000000 	jal	0 <EnWallmas_Init>
    177c:	8ca40000 	lw	a0,0(a1)
    1780:	8e050150 	lw	a1,336(s0)
    1784:	8e06016c 	lw	a2,364(s0)
    1788:	9207014e 	lbu	a3,334(s0)
    178c:	3c190000 	lui	t9,0x0
    1790:	3c080000 	lui	t0,0x0
    1794:	25080000 	addiu	t0,t0,0
    1798:	27390000 	addiu	t9,t9,0
    179c:	afb90010 	sw	t9,16(sp)
    17a0:	afa80014 	sw	t0,20(sp)
    17a4:	afb00018 	sw	s0,24(sp)
    17a8:	0c000000 	jal	0 <EnWallmas_Init>
    17ac:	8fa40034 	lw	a0,52(sp)
    17b0:	02002025 	move	a0,s0
    17b4:	0c000000 	jal	0 <EnWallmas_Init>
    17b8:	8fa50034 	lw	a1,52(sp)
    17bc:	8fbf002c 	lw	ra,44(sp)
    17c0:	8fb00028 	lw	s0,40(sp)
    17c4:	27bd0030 	addiu	sp,sp,48
    17c8:	03e00008 	jr	ra
    17cc:	00000000 	nop
