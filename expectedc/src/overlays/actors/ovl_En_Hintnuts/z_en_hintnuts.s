
build/src/overlays/actors/ovl_En_Hintnuts/z_en_hintnuts.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHintnuts_Init>:
       0:	27bdffb0 	addiu	sp,sp,-80
       4:	afb10038 	sw	s1,56(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf003c 	sw	ra,60(sp)
      10:	afb00034 	sw	s0,52(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnHintnuts_Init>
      20:	24a50058 	addiu	a1,a1,88
      24:	860e001c 	lh	t6,28(s0)
      28:	2401000a 	li	at,10
      2c:	260400b4 	addiu	a0,s0,180
      30:	15c10006 	bne	t6,at,4c <EnHintnuts_Init+0x4c>
      34:	24050000 	li	a1,0
      38:	8e0f0004 	lw	t7,4(s0)
      3c:	2401fffa 	li	at,-6
      40:	01e1c024 	and	t8,t7,at
      44:	10000050 	b	188 <EnHintnuts_Init+0x188>
      48:	ae180004 	sw	t8,4(s0)
      4c:	3c060000 	lui	a2,0x0
      50:	24c60000 	addiu	a2,a2,0
      54:	0c000000 	jal	0 <EnHintnuts_Init>
      58:	3c07420c 	lui	a3,0x420c
      5c:	3c060000 	lui	a2,0x0
      60:	3c070000 	lui	a3,0x0
      64:	2619019a 	addiu	t9,s0,410
      68:	260801d6 	addiu	t0,s0,470
      6c:	2409000a 	li	t1,10
      70:	afa90018 	sw	t1,24(sp)
      74:	afa80014 	sw	t0,20(sp)
      78:	afb90010 	sw	t9,16(sp)
      7c:	24e70000 	addiu	a3,a3,0
      80:	24c60000 	addiu	a2,a2,0
      84:	02202025 	move	a0,s1
      88:	0c000000 	jal	0 <EnHintnuts_Init>
      8c:	2605014c 	addiu	a1,s0,332
      90:	26050214 	addiu	a1,s0,532
      94:	afa50044 	sw	a1,68(sp)
      98:	0c000000 	jal	0 <EnHintnuts_Init>
      9c:	02202025 	move	a0,s1
      a0:	3c070000 	lui	a3,0x0
      a4:	8fa50044 	lw	a1,68(sp)
      a8:	24e70020 	addiu	a3,a3,32
      ac:	02202025 	move	a0,s1
      b0:	0c000000 	jal	0 <EnHintnuts_Init>
      b4:	02003025 	move	a2,s0
      b8:	3c060000 	lui	a2,0x0
      bc:	24c6004c 	addiu	a2,a2,76
      c0:	26040098 	addiu	a0,s0,152
      c4:	0c000000 	jal	0 <EnHintnuts_Init>
      c8:	00002825 	move	a1,zero
      cc:	8606001c 	lh	a2,28(s0)
      d0:	02202025 	move	a0,s1
      d4:	02002825 	move	a1,s0
      d8:	00063203 	sra	a2,a2,0x8
      dc:	30c600ff 	andi	a2,a2,0xff
      e0:	00063400 	sll	a2,a2,0x10
      e4:	0c000000 	jal	0 <EnHintnuts_Init>
      e8:	00063403 	sra	a2,a2,0x10
      ec:	860b001c 	lh	t3,28(s0)
      f0:	960a010e 	lhu	t2,270(s0)
      f4:	3c010000 	lui	at,0x0
      f8:	316c00ff 	andi	t4,t3,0xff
      fc:	a60c001c 	sh	t4,28(s0)
     100:	a60a0198 	sh	t2,408(s0)
     104:	a4200054 	sh	zero,84(at)
     108:	960d010e 	lhu	t5,270(s0)
     10c:	2401109b 	li	at,4251
     110:	02202025 	move	a0,s1
     114:	15a10009 	bne	t5,at,13c <EnHintnuts_Init+0x13c>
     118:	00000000 	nop
     11c:	0c000000 	jal	0 <EnHintnuts_Init>
     120:	24050009 	li	a1,9
     124:	10400005 	beqz	v0,13c <EnHintnuts_Init+0x13c>
     128:	00000000 	nop
     12c:	0c000000 	jal	0 <EnHintnuts_Init>
     130:	02002025 	move	a0,s0
     134:	10000015 	b	18c <EnHintnuts_Init+0x18c>
     138:	8fbf003c 	lw	ra,60(sp)
     13c:	0c000000 	jal	0 <EnHintnuts_Init>
     140:	02002025 	move	a0,s0
     144:	c6040024 	lwc1	$f4,36(s0)
     148:	240f000a 	li	t7,10
     14c:	26241c24 	addiu	a0,s1,7204
     150:	e7a40010 	swc1	$f4,16(sp)
     154:	c6060028 	lwc1	$f6,40(s0)
     158:	02002825 	move	a1,s0
     15c:	02203025 	move	a2,s1
     160:	e7a60014 	swc1	$f6,20(sp)
     164:	c608002c 	lwc1	$f8,44(s0)
     168:	afa0001c 	sw	zero,28(sp)
     16c:	24070192 	li	a3,402
     170:	e7a80018 	swc1	$f8,24(sp)
     174:	860e0032 	lh	t6,50(s0)
     178:	afaf0028 	sw	t7,40(sp)
     17c:	afa00024 	sw	zero,36(sp)
     180:	0c000000 	jal	0 <EnHintnuts_Init>
     184:	afae0020 	sw	t6,32(sp)
     188:	8fbf003c 	lw	ra,60(sp)
     18c:	8fb00034 	lw	s0,52(sp)
     190:	8fb10038 	lw	s1,56(sp)
     194:	03e00008 	jr	ra
     198:	27bd0050 	addiu	sp,sp,80

0000019c <EnHintnuts_Destroy>:
     19c:	27bdffe8 	addiu	sp,sp,-24
     1a0:	afbf0014 	sw	ra,20(sp)
     1a4:	848e001c 	lh	t6,28(a0)
     1a8:	00803025 	move	a2,a0
     1ac:	2401000a 	li	at,10
     1b0:	11c10003 	beq	t6,at,1c0 <EnHintnuts_Destroy+0x24>
     1b4:	00a02025 	move	a0,a1
     1b8:	0c000000 	jal	0 <EnHintnuts_Init>
     1bc:	24c50214 	addiu	a1,a2,532
     1c0:	8fbf0014 	lw	ra,20(sp)
     1c4:	27bd0018 	addiu	sp,sp,24
     1c8:	03e00008 	jr	ra
     1cc:	00000000 	nop

000001d0 <EnHintnuts_HitByScrubProjectile1>:
     1d0:	27bdffe8 	addiu	sp,sp,-24
     1d4:	afbf0014 	sw	ra,20(sp)
     1d8:	afa5001c 	sw	a1,28(sp)
     1dc:	948e010e 	lhu	t6,270(a0)
     1e0:	00803025 	move	a2,a0
     1e4:	51c00018 	beqzl	t6,248 <EnHintnuts_HitByScrubProjectile1+0x78>
     1e8:	8fbf0014 	lw	ra,20(sp)
     1ec:	908f0002 	lbu	t7,2(a0)
     1f0:	24010005 	li	at,5
     1f4:	55e10014 	bnel	t7,at,248 <EnHintnuts_HitByScrubProjectile1+0x78>
     1f8:	8fbf0014 	lw	ra,20(sp)
     1fc:	8498001c 	lh	t8,28(a0)
     200:	3c190000 	lui	t9,0x0
     204:	53000006 	beqzl	t8,220 <EnHintnuts_HitByScrubProjectile1+0x50>
     208:	8cc80004 	lw	t0,4(a2)
     20c:	87390054 	lh	t9,84(t9)
     210:	24010002 	li	at,2
     214:	5721000c 	bnel	t9,at,248 <EnHintnuts_HitByScrubProjectile1+0x78>
     218:	8fbf0014 	lw	ra,20(sp)
     21c:	8cc80004 	lw	t0,4(a2)
     220:	2401fffa 	li	at,-6
     224:	24070001 	li	a3,1
     228:	01014824 	and	t1,t0,at
     22c:	acc90004 	sw	t1,4(a2)
     230:	352b0009 	ori	t3,t1,0x9
     234:	accb0004 	sw	t3,4(a2)
     238:	8fa4001c 	lw	a0,28(sp)
     23c:	0c000000 	jal	0 <EnHintnuts_Init>
     240:	24851c24 	addiu	a1,a0,7204
     244:	8fbf0014 	lw	ra,20(sp)
     248:	27bd0018 	addiu	sp,sp,24
     24c:	03e00008 	jr	ra
     250:	00000000 	nop

00000254 <EnHintnuts_SetupWait>:
     254:	27bdffe8 	addiu	sp,sp,-24
     258:	afbf0014 	sw	ra,20(sp)
     25c:	00803825 	move	a3,a0
     260:	3c050000 	lui	a1,0x0
     264:	24a50000 	addiu	a1,a1,0
     268:	afa70018 	sw	a3,24(sp)
     26c:	2484014c 	addiu	a0,a0,332
     270:	0c000000 	jal	0 <EnHintnuts_Init>
     274:	24060000 	li	a2,0
     278:	24040064 	li	a0,100
     27c:	0c000000 	jal	0 <EnHintnuts_Init>
     280:	24050032 	li	a1,50
     284:	8fa70018 	lw	a3,24(sp)
     288:	3c090000 	lui	t1,0x0
     28c:	240e0005 	li	t6,5
     290:	8cf80008 	lw	t8,8(a3)
     294:	90f90225 	lbu	t9,549(a3)
     298:	8cef000c 	lw	t7,12(a3)
     29c:	acf80024 	sw	t8,36(a3)
     2a0:	8cf80010 	lw	t8,16(a3)
     2a4:	25290000 	addiu	t1,t1,0
     2a8:	3328fffe 	andi	t0,t9,0xfffe
     2ac:	a4e20194 	sh	v0,404(a3)
     2b0:	a4ee0256 	sh	t6,598(a3)
     2b4:	a0e80225 	sb	t0,549(a3)
     2b8:	ace90190 	sw	t1,400(a3)
     2bc:	acef0028 	sw	t7,40(a3)
     2c0:	acf8002c 	sw	t8,44(a3)
     2c4:	8fbf0014 	lw	ra,20(sp)
     2c8:	27bd0018 	addiu	sp,sp,24
     2cc:	03e00008 	jr	ra
     2d0:	00000000 	nop

000002d4 <EnHintnuts_SetupLookAround>:
     2d4:	27bdffe8 	addiu	sp,sp,-24
     2d8:	afbf0014 	sw	ra,20(sp)
     2dc:	00803025 	move	a2,a0
     2e0:	3c050000 	lui	a1,0x0
     2e4:	24a50000 	addiu	a1,a1,0
     2e8:	afa60018 	sw	a2,24(sp)
     2ec:	0c000000 	jal	0 <EnHintnuts_Init>
     2f0:	2484014c 	addiu	a0,a0,332
     2f4:	8fa60018 	lw	a2,24(sp)
     2f8:	3c0f0000 	lui	t7,0x0
     2fc:	240e0002 	li	t6,2
     300:	25ef0000 	addiu	t7,t7,0
     304:	a4ce0194 	sh	t6,404(a2)
     308:	accf0190 	sw	t7,400(a2)
     30c:	8fbf0014 	lw	ra,20(sp)
     310:	27bd0018 	addiu	sp,sp,24
     314:	03e00008 	jr	ra
     318:	00000000 	nop

0000031c <EnHintnuts_SetupThrowScrubProjectile>:
     31c:	27bdffe8 	addiu	sp,sp,-24
     320:	afbf0014 	sw	ra,20(sp)
     324:	afa40018 	sw	a0,24(sp)
     328:	3c050000 	lui	a1,0x0
     32c:	24a50000 	addiu	a1,a1,0
     330:	0c000000 	jal	0 <EnHintnuts_Init>
     334:	2484014c 	addiu	a0,a0,332
     338:	8faf0018 	lw	t7,24(sp)
     33c:	3c0e0000 	lui	t6,0x0
     340:	25ce0000 	addiu	t6,t6,0
     344:	adee0190 	sw	t6,400(t7)
     348:	8fbf0014 	lw	ra,20(sp)
     34c:	27bd0018 	addiu	sp,sp,24
     350:	03e00008 	jr	ra
     354:	00000000 	nop

00000358 <EnHintnuts_SetupStand>:
     358:	27bdffe8 	addiu	sp,sp,-24
     35c:	afbf0014 	sw	ra,20(sp)
     360:	00803825 	move	a3,a0
     364:	3c050000 	lui	a1,0x0
     368:	24a50000 	addiu	a1,a1,0
     36c:	afa70018 	sw	a3,24(sp)
     370:	2484014c 	addiu	a0,a0,332
     374:	0c000000 	jal	0 <EnHintnuts_Init>
     378:	3c06c040 	lui	a2,0xc040
     37c:	8fa70018 	lw	a3,24(sp)
     380:	3c0e0000 	lui	t6,0x0
     384:	25ce0000 	addiu	t6,t6,0
     388:	8cef0190 	lw	t7,400(a3)
     38c:	3c080000 	lui	t0,0x0
     390:	24190001 	li	t9,1
     394:	15cf0004 	bne	t6,t7,3a8 <EnHintnuts_SetupStand+0x50>
     398:	25080000 	addiu	t0,t0,0
     39c:	24181002 	li	t8,4098
     3a0:	10000002 	b	3ac <EnHintnuts_SetupStand+0x54>
     3a4:	a4f80194 	sh	t8,404(a3)
     3a8:	a4f90194 	sh	t9,404(a3)
     3ac:	ace80190 	sw	t0,400(a3)
     3b0:	8fbf0014 	lw	ra,20(sp)
     3b4:	27bd0018 	addiu	sp,sp,24
     3b8:	03e00008 	jr	ra
     3bc:	00000000 	nop

000003c0 <EnHintnuts_SetupBurrow>:
     3c0:	27bdffe8 	addiu	sp,sp,-24
     3c4:	afbf0014 	sw	ra,20(sp)
     3c8:	afa40018 	sw	a0,24(sp)
     3cc:	3c050000 	lui	a1,0x0
     3d0:	24a50000 	addiu	a1,a1,0
     3d4:	2484014c 	addiu	a0,a0,332
     3d8:	0c000000 	jal	0 <EnHintnuts_Init>
     3dc:	3c06c0a0 	lui	a2,0xc0a0
     3e0:	8fa40018 	lw	a0,24(sp)
     3e4:	0c000000 	jal	0 <EnHintnuts_Init>
     3e8:	2405387d 	li	a1,14461
     3ec:	8faf0018 	lw	t7,24(sp)
     3f0:	3c0e0000 	lui	t6,0x0
     3f4:	25ce0000 	addiu	t6,t6,0
     3f8:	adee0190 	sw	t6,400(t7)
     3fc:	8fbf0014 	lw	ra,20(sp)
     400:	27bd0018 	addiu	sp,sp,24
     404:	03e00008 	jr	ra
     408:	00000000 	nop

0000040c <EnHintnuts_HitByScrubProjectile2>:
     40c:	27bdffe8 	addiu	sp,sp,-24
     410:	afbf0014 	sw	ra,20(sp)
     414:	00803825 	move	a3,a0
     418:	3c050000 	lui	a1,0x0
     41c:	24a50000 	addiu	a1,a1,0
     420:	afa70018 	sw	a3,24(sp)
     424:	2484014c 	addiu	a0,a0,332
     428:	0c000000 	jal	0 <EnHintnuts_Init>
     42c:	3c06c040 	lui	a2,0xc040
     430:	8fa40018 	lw	a0,24(sp)
     434:	240e0025 	li	t6,37
     438:	24053880 	li	a1,14464
     43c:	0c000000 	jal	0 <EnHintnuts_Init>
     440:	a48e0256 	sh	t6,598(a0)
     444:	8fa70018 	lw	a3,24(sp)
     448:	3c0d0000 	lui	t5,0x0
     44c:	25ad0000 	addiu	t5,t5,0
     450:	90ef0225 	lbu	t7,549(a3)
     454:	84e3001c 	lh	v1,28(a3)
     458:	31f8fffe 	andi	t8,t7,0xfffe
     45c:	18600022 	blez	v1,4e8 <EnHintnuts_HitByScrubProjectile2+0xdc>
     460:	a0f80225 	sb	t8,549(a3)
     464:	28610004 	slti	at,v1,4
     468:	50200020 	beqzl	at,4ec <EnHintnuts_HitByScrubProjectile2+0xe0>
     46c:	aced0190 	sw	t5,400(a3)
     470:	90f90002 	lbu	t9,2(a3)
     474:	24010005 	li	at,5
     478:	3c050000 	lui	a1,0x0
     47c:	1721001a 	bne	t9,at,4e8 <EnHintnuts_HitByScrubProjectile2+0xdc>
     480:	24a50054 	addiu	a1,a1,84
     484:	84a20000 	lh	v0,0(a1)
     488:	2401fffc 	li	at,-4
     48c:	3c0c0000 	lui	t4,0x0
     490:	54410005 	bnel	v0,at,4a8 <EnHintnuts_HitByScrubProjectile2+0x9c>
     494:	24440001 	addiu	a0,v0,1
     498:	a4a00000 	sh	zero,0(a1)
     49c:	84a20000 	lh	v0,0(a1)
     4a0:	84e3001c 	lh	v1,28(a3)
     4a4:	24440001 	addiu	a0,v0,1
     4a8:	14830003 	bne	a0,v1,4b8 <EnHintnuts_HitByScrubProjectile2+0xac>
     4ac:	00000000 	nop
     4b0:	10000007 	b	4d0 <EnHintnuts_HitByScrubProjectile2+0xc4>
     4b4:	a4a40000 	sh	a0,0(a1)
     4b8:	18400003 	blez	v0,4c8 <EnHintnuts_HitByScrubProjectile2+0xbc>
     4bc:	00024023 	negu	t0,v0
     4c0:	a4a80000 	sh	t0,0(a1)
     4c4:	84a20000 	lh	v0,0(a1)
     4c8:	2449ffff 	addiu	t1,v0,-1
     4cc:	a4a90000 	sh	t1,0(a1)
     4d0:	8cea0004 	lw	t2,4(a3)
     4d4:	258c0000 	addiu	t4,t4,0
     4d8:	acec0190 	sw	t4,400(a3)
     4dc:	354b0010 	ori	t3,t2,0x10
     4e0:	10000002 	b	4ec <EnHintnuts_HitByScrubProjectile2+0xe0>
     4e4:	aceb0004 	sw	t3,4(a3)
     4e8:	aced0190 	sw	t5,400(a3)
     4ec:	8fbf0014 	lw	ra,20(sp)
     4f0:	27bd0018 	addiu	sp,sp,24
     4f4:	03e00008 	jr	ra
     4f8:	00000000 	nop

000004fc <EnHintnuts_SetupRun>:
     4fc:	27bdffe8 	addiu	sp,sp,-24
     500:	afbf0014 	sw	ra,20(sp)
     504:	00803025 	move	a2,a0
     508:	3c050000 	lui	a1,0x0
     50c:	24a50000 	addiu	a1,a1,0
     510:	afa60018 	sw	a2,24(sp)
     514:	0c000000 	jal	0 <EnHintnuts_Init>
     518:	2484014c 	addiu	a0,a0,332
     51c:	8fa60018 	lw	a2,24(sp)
     520:	3c0f0000 	lui	t7,0x0
     524:	240e0005 	li	t6,5
     528:	25ef0000 	addiu	t7,t7,0
     52c:	a4ce0194 	sh	t6,404(a2)
     530:	accf0190 	sw	t7,400(a2)
     534:	8fbf0014 	lw	ra,20(sp)
     538:	27bd0018 	addiu	sp,sp,24
     53c:	03e00008 	jr	ra
     540:	00000000 	nop

00000544 <EnHintnuts_SetupTalk>:
     544:	27bdffe8 	addiu	sp,sp,-24
     548:	afbf0014 	sw	ra,20(sp)
     54c:	00803825 	move	a3,a0
     550:	3c050000 	lui	a1,0x0
     554:	24a50000 	addiu	a1,a1,0
     558:	afa70018 	sw	a3,24(sp)
     55c:	2484014c 	addiu	a0,a0,332
     560:	0c000000 	jal	0 <EnHintnuts_Init>
     564:	3c06c0a0 	lui	a2,0xc0a0
     568:	8fa70018 	lw	a3,24(sp)
     56c:	44802000 	mtc1	zero,$f4
     570:	3c0e0000 	lui	t6,0x0
     574:	25ce0000 	addiu	t6,t6,0
     578:	acee0190 	sw	t6,400(a3)
     57c:	e4e40068 	swc1	$f4,104(a3)
     580:	8fbf0014 	lw	ra,20(sp)
     584:	27bd0018 	addiu	sp,sp,24
     588:	03e00008 	jr	ra
     58c:	00000000 	nop

00000590 <EnHintnuts_SetupLeave>:
     590:	27bdffc8 	addiu	sp,sp,-56
     594:	afb00030 	sw	s0,48(sp)
     598:	afa5003c 	sw	a1,60(sp)
     59c:	00808025 	move	s0,a0
     5a0:	afbf0034 	sw	ra,52(sp)
     5a4:	3c050000 	lui	a1,0x0
     5a8:	24a50000 	addiu	a1,a1,0
     5ac:	2484014c 	addiu	a0,a0,332
     5b0:	0c000000 	jal	0 <EnHintnuts_Init>
     5b4:	3c06c0a0 	lui	a2,0xc0a0
     5b8:	92180226 	lbu	t8,550(s0)
     5bc:	8e080004 	lw	t0,4(s0)
     5c0:	3c014040 	lui	at,0x4040
     5c4:	44812000 	mtc1	at,$f4
     5c8:	860f00b6 	lh	t7,182(s0)
     5cc:	240e0064 	li	t6,100
     5d0:	3319fffe 	andi	t9,t8,0xfffe
     5d4:	35090010 	ori	t1,t0,0x10
     5d8:	a60e0194 	sh	t6,404(s0)
     5dc:	a2190226 	sb	t9,550(s0)
     5e0:	ae090004 	sw	t1,4(s0)
     5e4:	02002025 	move	a0,s0
     5e8:	24053880 	li	a1,14464
     5ec:	e6040068 	swc1	$f4,104(s0)
     5f0:	0c000000 	jal	0 <EnHintnuts_Init>
     5f4:	a60f0032 	sh	t7,50(s0)
     5f8:	c6060028 	lwc1	$f6,40(s0)
     5fc:	8e070024 	lw	a3,36(s0)
     600:	8fa5003c 	lw	a1,60(sp)
     604:	e7a60010 	swc1	$f6,16(sp)
     608:	c608002c 	lwc1	$f8,44(s0)
     60c:	240a0003 	li	t2,3
     610:	afaa0024 	sw	t2,36(sp)
     614:	afa00020 	sw	zero,32(sp)
     618:	afa0001c 	sw	zero,28(sp)
     61c:	afa00018 	sw	zero,24(sp)
     620:	24060015 	li	a2,21
     624:	24a41c24 	addiu	a0,a1,7204
     628:	0c000000 	jal	0 <EnHintnuts_Init>
     62c:	e7a80014 	swc1	$f8,20(sp)
     630:	3c0b0000 	lui	t3,0x0
     634:	256b0000 	addiu	t3,t3,0
     638:	ae0b0190 	sw	t3,400(s0)
     63c:	8fbf0034 	lw	ra,52(sp)
     640:	8fb00030 	lw	s0,48(sp)
     644:	27bd0038 	addiu	sp,sp,56
     648:	03e00008 	jr	ra
     64c:	00000000 	nop

00000650 <EnHintnuts_SetupFreeze>:
     650:	27bdffd8 	addiu	sp,sp,-40
     654:	afb00020 	sw	s0,32(sp)
     658:	00808025 	move	s0,a0
     65c:	afbf0024 	sw	ra,36(sp)
     660:	3c050000 	lui	a1,0x0
     664:	24a50000 	addiu	a1,a1,0
     668:	0c000000 	jal	0 <EnHintnuts_Init>
     66c:	2484014c 	addiu	a0,a0,332
     670:	8e0e0004 	lw	t6,4(s0)
     674:	2401fffe 	li	at,-2
     678:	24180064 	li	t8,100
     67c:	01c17824 	and	t7,t6,at
     680:	ae0f0004 	sw	t7,4(s0)
     684:	afb80010 	sw	t8,16(sp)
     688:	02002025 	move	a0,s0
     68c:	00002825 	move	a1,zero
     690:	240600ff 	li	a2,255
     694:	0c000000 	jal	0 <EnHintnuts_Init>
     698:	00003825 	move	a3,zero
     69c:	24190001 	li	t9,1
     6a0:	a2190114 	sb	t9,276(s0)
     6a4:	a6000194 	sh	zero,404(s0)
     6a8:	02002025 	move	a0,s0
     6ac:	0c000000 	jal	0 <EnHintnuts_Init>
     6b0:	24053882 	li	a1,14466
     6b4:	3c080000 	lui	t0,0x0
     6b8:	85080054 	lh	t0,84(t0)
     6bc:	2401fffd 	li	at,-3
     6c0:	15010006 	bne	t0,at,6dc <EnHintnuts_SetupFreeze+0x8c>
     6c4:	00000000 	nop
     6c8:	0c000000 	jal	0 <EnHintnuts_Init>
     6cc:	24044806 	li	a0,18438
     6d0:	2409fffc 	li	t1,-4
     6d4:	3c010000 	lui	at,0x0
     6d8:	a4290054 	sh	t1,84(at)
     6dc:	3c0a0000 	lui	t2,0x0
     6e0:	254a0000 	addiu	t2,t2,0
     6e4:	ae0a0190 	sw	t2,400(s0)
     6e8:	8fbf0024 	lw	ra,36(sp)
     6ec:	8fb00020 	lw	s0,32(sp)
     6f0:	27bd0028 	addiu	sp,sp,40
     6f4:	03e00008 	jr	ra
     6f8:	00000000 	nop

000006fc <EnHintnuts_Wait>:
     6fc:	27bdffd0 	addiu	sp,sp,-48
     700:	afbf001c 	sw	ra,28(sp)
     704:	afb00018 	sw	s0,24(sp)
     708:	afa50034 	sw	a1,52(sp)
     70c:	3c013f00 	lui	at,0x3f00
     710:	44813000 	mtc1	at,$f6
     714:	c4840168 	lwc1	$f4,360(a0)
     718:	00808025 	move	s0,a0
     71c:	00001825 	move	v1,zero
     720:	4606203c 	c.lt.s	$f4,$f6
     724:	2604014c 	addiu	a0,s0,332
     728:	3c054110 	lui	a1,0x4110
     72c:	45000002 	bc1f	738 <EnHintnuts_Wait+0x3c>
     730:	00000000 	nop
     734:	24030001 	li	v1,1
     738:	50600006 	beqzl	v1,754 <EnHintnuts_Wait+0x58>
     73c:	afa3002c 	sw	v1,44(sp)
     740:	86020194 	lh	v0,404(s0)
     744:	10400002 	beqz	v0,750 <EnHintnuts_Wait+0x54>
     748:	244effff 	addiu	t6,v0,-1
     74c:	a60e0194 	sh	t6,404(s0)
     750:	afa3002c 	sw	v1,44(sp)
     754:	0c000000 	jal	0 <EnHintnuts_Init>
     758:	afa40020 	sw	a0,32(sp)
     75c:	3c014110 	lui	at,0x4110
     760:	44816000 	mtc1	at,$f12
     764:	10400005 	beqz	v0,77c <EnHintnuts_Wait+0x80>
     768:	8fa40020 	lw	a0,32(sp)
     76c:	920f0225 	lbu	t7,549(s0)
     770:	35f80001 	ori	t8,t7,0x1
     774:	1000000c 	b	7a8 <EnHintnuts_Wait+0xac>
     778:	a2180225 	sb	t8,549(s0)
     77c:	0c000000 	jal	0 <EnHintnuts_Init>
     780:	3c054100 	lui	a1,0x4100
     784:	3c014110 	lui	at,0x4110
     788:	44816000 	mtc1	at,$f12
     78c:	10400006 	beqz	v0,7a8 <EnHintnuts_Wait+0xac>
     790:	02002025 	move	a0,s0
     794:	0c000000 	jal	0 <EnHintnuts_Init>
     798:	2405387c 	li	a1,14460
     79c:	3c014110 	lui	at,0x4110
     7a0:	44816000 	mtc1	at,$f12
     7a4:	00000000 	nop
     7a8:	c6000164 	lwc1	$f0,356(s0)
     7ac:	3c014140 	lui	at,0x4140
     7b0:	460c003c 	c.lt.s	$f0,$f12
     7b4:	00000000 	nop
     7b8:	45020004 	bc1fl	7cc <EnHintnuts_Wait+0xd0>
     7bc:	44817000 	mtc1	at,$f14
     7c0:	1000000b 	b	7f0 <EnHintnuts_Wait+0xf4>
     7c4:	46006006 	mov.s	$f0,$f12
     7c8:	44817000 	mtc1	at,$f14
     7cc:	00000000 	nop
     7d0:	4600703c 	c.lt.s	$f14,$f0
     7d4:	00000000 	nop
     7d8:	45020004 	bc1fl	7ec <EnHintnuts_Wait+0xf0>
     7dc:	46000086 	mov.s	$f2,$f0
     7e0:	10000002 	b	7ec <EnHintnuts_Wait+0xf0>
     7e4:	46007086 	mov.s	$f2,$f14
     7e8:	46000086 	mov.s	$f2,$f0
     7ec:	46001006 	mov.s	$f0,$f2
     7f0:	460c0201 	sub.s	$f8,$f0,$f12
     7f4:	3c0140a0 	lui	at,0x40a0
     7f8:	44818000 	mtc1	at,$f16
     7fc:	3c0142f0 	lui	at,0x42f0
     800:	460c4282 	mul.s	$f10,$f8,$f12
     804:	46105480 	add.s	$f18,$f10,$f16
     808:	4600910d 	trunc.w.s	$f4,$f18
     80c:	44082000 	mfc1	t0,$f4
     810:	00000000 	nop
     814:	a6080256 	sh	t0,598(s0)
     818:	8fa9002c 	lw	t1,44(sp)
     81c:	1520000c 	bnez	t1,850 <EnHintnuts_Wait+0x154>
     820:	00000000 	nop
     824:	c6060090 	lwc1	$f6,144(s0)
     828:	44814000 	mtc1	at,$f8
     82c:	00000000 	nop
     830:	4608303c 	c.lt.s	$f6,$f8
     834:	00000000 	nop
     838:	45000005 	bc1f	850 <EnHintnuts_Wait+0x154>
     83c:	00000000 	nop
     840:	0c000000 	jal	0 <EnHintnuts_Init>
     844:	02002025 	move	a0,s0
     848:	10000021 	b	8d0 <EnHintnuts_Wait+0x1d4>
     84c:	8fab002c 	lw	t3,44(sp)
     850:	0c000000 	jal	0 <EnHintnuts_Init>
     854:	8fa40020 	lw	a0,32(sp)
     858:	1040001c 	beqz	v0,8cc <EnHintnuts_Wait+0x1d0>
     85c:	3c0142f0 	lui	at,0x42f0
     860:	c6020090 	lwc1	$f2,144(s0)
     864:	44815000 	mtc1	at,$f10
     868:	00000000 	nop
     86c:	460a103c 	c.lt.s	$f2,$f10
     870:	00000000 	nop
     874:	45020006 	bc1fl	890 <EnHintnuts_Wait+0x194>
     878:	860a0194 	lh	t2,404(s0)
     87c:	0c000000 	jal	0 <EnHintnuts_Init>
     880:	02002025 	move	a0,s0
     884:	10000012 	b	8d0 <EnHintnuts_Wait+0x1d4>
     888:	8fab002c 	lw	t3,44(sp)
     88c:	860a0194 	lh	t2,404(s0)
     890:	3c0143a0 	lui	at,0x43a0
     894:	1540000b 	bnez	t2,8c4 <EnHintnuts_Wait+0x1c8>
     898:	00000000 	nop
     89c:	44818000 	mtc1	at,$f16
     8a0:	00000000 	nop
     8a4:	4602803c 	c.lt.s	$f16,$f2
     8a8:	00000000 	nop
     8ac:	45000005 	bc1f	8c4 <EnHintnuts_Wait+0x1c8>
     8b0:	00000000 	nop
     8b4:	0c000000 	jal	0 <EnHintnuts_Init>
     8b8:	02002025 	move	a0,s0
     8bc:	10000004 	b	8d0 <EnHintnuts_Wait+0x1d4>
     8c0:	8fab002c 	lw	t3,44(sp)
     8c4:	0c000000 	jal	0 <EnHintnuts_Init>
     8c8:	02002025 	move	a0,s0
     8cc:	8fab002c 	lw	t3,44(sp)
     8d0:	3c014320 	lui	at,0x4320
     8d4:	5160001e 	beqzl	t3,950 <EnHintnuts_Wait+0x254>
     8d8:	8fbf001c 	lw	ra,28(sp)
     8dc:	c6020090 	lwc1	$f2,144(s0)
     8e0:	44819000 	mtc1	at,$f18
     8e4:	00000000 	nop
     8e8:	4602903c 	c.lt.s	$f18,$f2
     8ec:	00000000 	nop
     8f0:	45020017 	bc1fl	950 <EnHintnuts_Wait+0x254>
     8f4:	8fbf001c 	lw	ra,28(sp)
     8f8:	c6000094 	lwc1	$f0,148(s0)
     8fc:	3c0142f0 	lui	at,0x42f0
     900:	44812000 	mtc1	at,$f4
     904:	46000005 	abs.s	$f0,$f0
     908:	4604003c 	c.lt.s	$f0,$f4
     90c:	00000000 	nop
     910:	4502000f 	bc1fl	950 <EnHintnuts_Wait+0x254>
     914:	8fbf001c 	lw	ra,28(sp)
     918:	860c0194 	lh	t4,404(s0)
     91c:	3c0143f0 	lui	at,0x43f0
     920:	51800007 	beqzl	t4,940 <EnHintnuts_Wait+0x244>
     924:	3c013f80 	lui	at,0x3f80
     928:	44813000 	mtc1	at,$f6
     92c:	00000000 	nop
     930:	4606103c 	c.lt.s	$f2,$f6
     934:	00000000 	nop
     938:	45000004 	bc1f	94c <EnHintnuts_Wait+0x250>
     93c:	3c013f80 	lui	at,0x3f80
     940:	44814000 	mtc1	at,$f8
     944:	00000000 	nop
     948:	e6080168 	swc1	$f8,360(s0)
     94c:	8fbf001c 	lw	ra,28(sp)
     950:	8fb00018 	lw	s0,24(sp)
     954:	27bd0030 	addiu	sp,sp,48
     958:	03e00008 	jr	ra
     95c:	00000000 	nop

00000960 <EnHintnuts_LookAround>:
     960:	27bdffe0 	addiu	sp,sp,-32
     964:	00803025 	move	a2,a0
     968:	afbf0014 	sw	ra,20(sp)
     96c:	2484014c 	addiu	a0,a0,332
     970:	afa50024 	sw	a1,36(sp)
     974:	afa4001c 	sw	a0,28(sp)
     978:	0c000000 	jal	0 <EnHintnuts_Init>
     97c:	afa60020 	sw	a2,32(sp)
     980:	8fa4001c 	lw	a0,28(sp)
     984:	0c000000 	jal	0 <EnHintnuts_Init>
     988:	24050000 	li	a1,0
     98c:	10400005 	beqz	v0,9a4 <EnHintnuts_LookAround+0x44>
     990:	8fa60020 	lw	a2,32(sp)
     994:	84c20194 	lh	v0,404(a2)
     998:	10400002 	beqz	v0,9a4 <EnHintnuts_LookAround+0x44>
     99c:	244effff 	addiu	t6,v0,-1
     9a0:	a4ce0194 	sh	t6,404(a2)
     9a4:	3c0142f0 	lui	at,0x42f0
     9a8:	44813000 	mtc1	at,$f6
     9ac:	c4c40090 	lwc1	$f4,144(a2)
     9b0:	4606203c 	c.lt.s	$f4,$f6
     9b4:	00000000 	nop
     9b8:	45010004 	bc1t	9cc <EnHintnuts_LookAround+0x6c>
     9bc:	00000000 	nop
     9c0:	84cf0194 	lh	t7,404(a2)
     9c4:	55e00004 	bnezl	t7,9d8 <EnHintnuts_LookAround+0x78>
     9c8:	8fbf0014 	lw	ra,20(sp)
     9cc:	0c000000 	jal	0 <EnHintnuts_Init>
     9d0:	00c02025 	move	a0,a2
     9d4:	8fbf0014 	lw	ra,20(sp)
     9d8:	27bd0020 	addiu	sp,sp,32
     9dc:	03e00008 	jr	ra
     9e0:	00000000 	nop

000009e4 <EnHintnuts_Stand>:
     9e4:	27bdffd8 	addiu	sp,sp,-40
     9e8:	afb00018 	sw	s0,24(sp)
     9ec:	00808025 	move	s0,a0
     9f0:	afbf001c 	sw	ra,28(sp)
     9f4:	2484014c 	addiu	a0,a0,332
     9f8:	afa5002c 	sw	a1,44(sp)
     9fc:	0c000000 	jal	0 <EnHintnuts_Init>
     a00:	afa40024 	sw	a0,36(sp)
     a04:	8fa40024 	lw	a0,36(sp)
     a08:	0c000000 	jal	0 <EnHintnuts_Init>
     a0c:	24050000 	li	a1,0
     a10:	10400005 	beqz	v0,a28 <EnHintnuts_Stand+0x44>
     a14:	260400b6 	addiu	a0,s0,182
     a18:	86020194 	lh	v0,404(s0)
     a1c:	10400002 	beqz	v0,a28 <EnHintnuts_Stand+0x44>
     a20:	244effff 	addiu	t6,v0,-1
     a24:	a60e0194 	sh	t6,404(s0)
     a28:	860f0194 	lh	t7,404(s0)
     a2c:	24060002 	li	a2,2
     a30:	24070e38 	li	a3,3640
     a34:	31f81000 	andi	t8,t7,0x1000
     a38:	57000004 	bnezl	t8,a4c <EnHintnuts_Stand+0x68>
     a3c:	3c0142f0 	lui	at,0x42f0
     a40:	0c000000 	jal	0 <EnHintnuts_Init>
     a44:	8605008a 	lh	a1,138(s0)
     a48:	3c0142f0 	lui	at,0x42f0
     a4c:	44813000 	mtc1	at,$f6
     a50:	c6040090 	lwc1	$f4,144(s0)
     a54:	4606203c 	c.lt.s	$f4,$f6
     a58:	00000000 	nop
     a5c:	45010005 	bc1t	a74 <EnHintnuts_Stand+0x90>
     a60:	00000000 	nop
     a64:	86020194 	lh	v0,404(s0)
     a68:	24011000 	li	at,4096
     a6c:	14410005 	bne	v0,at,a84 <EnHintnuts_Stand+0xa0>
     a70:	00000000 	nop
     a74:	0c000000 	jal	0 <EnHintnuts_Init>
     a78:	02002025 	move	a0,s0
     a7c:	10000006 	b	a98 <EnHintnuts_Stand+0xb4>
     a80:	8fbf001c 	lw	ra,28(sp)
     a84:	54400004 	bnezl	v0,a98 <EnHintnuts_Stand+0xb4>
     a88:	8fbf001c 	lw	ra,28(sp)
     a8c:	0c000000 	jal	0 <EnHintnuts_Init>
     a90:	02002025 	move	a0,s0
     a94:	8fbf001c 	lw	ra,28(sp)
     a98:	8fb00018 	lw	s0,24(sp)
     a9c:	27bd0028 	addiu	sp,sp,40
     aa0:	03e00008 	jr	ra
     aa4:	00000000 	nop

00000aa8 <EnHintnuts_ThrowNut>:
     aa8:	27bdffb8 	addiu	sp,sp,-72
     aac:	afb00030 	sw	s0,48(sp)
     ab0:	00808025 	move	s0,a0
     ab4:	afbf0034 	sw	ra,52(sp)
     ab8:	afa5004c 	sw	a1,76(sp)
     abc:	8605008a 	lh	a1,138(s0)
     ac0:	248400b6 	addiu	a0,a0,182
     ac4:	24060002 	li	a2,2
     ac8:	0c000000 	jal	0 <EnHintnuts_Init>
     acc:	24070e38 	li	a3,3640
     ad0:	3c0142f0 	lui	at,0x42f0
     ad4:	44813000 	mtc1	at,$f6
     ad8:	c6040090 	lwc1	$f4,144(s0)
     adc:	2604014c 	addiu	a0,s0,332
     ae0:	4606203c 	c.lt.s	$f4,$f6
     ae4:	00000000 	nop
     ae8:	45000005 	bc1f	b00 <EnHintnuts_ThrowNut+0x58>
     aec:	00000000 	nop
     af0:	0c000000 	jal	0 <EnHintnuts_Init>
     af4:	02002025 	move	a0,s0
     af8:	10000036 	b	bd4 <EnHintnuts_ThrowNut+0x12c>
     afc:	8fbf0034 	lw	ra,52(sp)
     b00:	0c000000 	jal	0 <EnHintnuts_Init>
     b04:	afa40038 	sw	a0,56(sp)
     b08:	10400005 	beqz	v0,b20 <EnHintnuts_ThrowNut+0x78>
     b0c:	8fa40038 	lw	a0,56(sp)
     b10:	0c000000 	jal	0 <EnHintnuts_Init>
     b14:	02002025 	move	a0,s0
     b18:	1000002e 	b	bd4 <EnHintnuts_ThrowNut+0x12c>
     b1c:	8fbf0034 	lw	ra,52(sp)
     b20:	0c000000 	jal	0 <EnHintnuts_Init>
     b24:	3c0540c0 	lui	a1,0x40c0
     b28:	5040002a 	beqzl	v0,bd4 <EnHintnuts_ThrowNut+0x12c>
     b2c:	8fbf0034 	lw	ra,52(sp)
     b30:	0c000000 	jal	0 <EnHintnuts_Init>
     b34:	860400b6 	lh	a0,182(s0)
     b38:	3c0141b8 	lui	at,0x41b8
     b3c:	44814000 	mtc1	at,$f8
     b40:	c6100024 	lwc1	$f16,36(s0)
     b44:	3c014140 	lui	at,0x4140
     b48:	46080282 	mul.s	$f10,$f0,$f8
     b4c:	44813000 	mtc1	at,$f6
     b50:	46105480 	add.s	$f18,$f10,$f16
     b54:	e7b2003c 	swc1	$f18,60(sp)
     b58:	c6040028 	lwc1	$f4,40(s0)
     b5c:	46062200 	add.s	$f8,$f4,$f6
     b60:	e7a80040 	swc1	$f8,64(sp)
     b64:	0c000000 	jal	0 <EnHintnuts_Init>
     b68:	860400b6 	lh	a0,182(s0)
     b6c:	3c0141b8 	lui	at,0x41b8
     b70:	44815000 	mtc1	at,$f10
     b74:	c612002c 	lwc1	$f18,44(s0)
     b78:	c7a40040 	lwc1	$f4,64(sp)
     b7c:	460a0402 	mul.s	$f16,$f0,$f10
     b80:	8fa5004c 	lw	a1,76(sp)
     b84:	e7a40010 	swc1	$f4,16(sp)
     b88:	24190001 	li	t9,1
     b8c:	24060193 	li	a2,403
     b90:	8fa7003c 	lw	a3,60(sp)
     b94:	24a41c24 	addiu	a0,a1,7204
     b98:	46128080 	add.s	$f2,$f16,$f18
     b9c:	e7a20014 	swc1	$f2,20(sp)
     ba0:	860e00b4 	lh	t6,180(s0)
     ba4:	afae0018 	sw	t6,24(sp)
     ba8:	860f00b6 	lh	t7,182(s0)
     bac:	afaf001c 	sw	t7,28(sp)
     bb0:	861800b8 	lh	t8,184(s0)
     bb4:	afb90024 	sw	t9,36(sp)
     bb8:	0c000000 	jal	0 <EnHintnuts_Init>
     bbc:	afb80020 	sw	t8,32(sp)
     bc0:	10400003 	beqz	v0,bd0 <EnHintnuts_ThrowNut+0x128>
     bc4:	02002025 	move	a0,s0
     bc8:	0c000000 	jal	0 <EnHintnuts_Init>
     bcc:	2405387e 	li	a1,14462
     bd0:	8fbf0034 	lw	ra,52(sp)
     bd4:	8fb00030 	lw	s0,48(sp)
     bd8:	27bd0048 	addiu	sp,sp,72
     bdc:	03e00008 	jr	ra
     be0:	00000000 	nop

00000be4 <EnHintnuts_Burrow>:
     be4:	27bdffd0 	addiu	sp,sp,-48
     be8:	afb00018 	sw	s0,24(sp)
     bec:	00808025 	move	s0,a0
     bf0:	afbf001c 	sw	ra,28(sp)
     bf4:	2484014c 	addiu	a0,a0,332
     bf8:	afa50034 	sw	a1,52(sp)
     bfc:	0c000000 	jal	0 <EnHintnuts_Init>
     c00:	afa40024 	sw	a0,36(sp)
     c04:	10400005 	beqz	v0,c1c <EnHintnuts_Burrow+0x38>
     c08:	3c013f80 	lui	at,0x3f80
     c0c:	0c000000 	jal	0 <EnHintnuts_Init>
     c10:	02002025 	move	a0,s0
     c14:	10000023 	b	ca4 <EnHintnuts_Burrow+0xc0>
     c18:	8fa40024 	lw	a0,36(sp)
     c1c:	44811000 	mtc1	at,$f2
     c20:	c6000164 	lwc1	$f0,356(s0)
     c24:	3c014040 	lui	at,0x4040
     c28:	4602003c 	c.lt.s	$f0,$f2
     c2c:	00000000 	nop
     c30:	45020004 	bc1fl	c44 <EnHintnuts_Burrow+0x60>
     c34:	44812000 	mtc1	at,$f4
     c38:	1000000c 	b	c6c <EnHintnuts_Burrow+0x88>
     c3c:	46001006 	mov.s	$f0,$f2
     c40:	44812000 	mtc1	at,$f4
     c44:	3c014040 	lui	at,0x4040
     c48:	4600203c 	c.lt.s	$f4,$f0
     c4c:	00000000 	nop
     c50:	45020005 	bc1fl	c68 <EnHintnuts_Burrow+0x84>
     c54:	46000086 	mov.s	$f2,$f0
     c58:	44811000 	mtc1	at,$f2
     c5c:	10000003 	b	c6c <EnHintnuts_Burrow+0x88>
     c60:	46001006 	mov.s	$f0,$f2
     c64:	46000086 	mov.s	$f2,$f0
     c68:	46001006 	mov.s	$f0,$f2
     c6c:	3c014040 	lui	at,0x4040
     c70:	44813000 	mtc1	at,$f6
     c74:	3c014140 	lui	at,0x4140
     c78:	44815000 	mtc1	at,$f10
     c7c:	46003201 	sub.s	$f8,$f6,$f0
     c80:	3c0140a0 	lui	at,0x40a0
     c84:	44819000 	mtc1	at,$f18
     c88:	460a4402 	mul.s	$f16,$f8,$f10
     c8c:	46128100 	add.s	$f4,$f16,$f18
     c90:	4600218d 	trunc.w.s	$f6,$f4
     c94:	440f3000 	mfc1	t7,$f6
     c98:	00000000 	nop
     c9c:	a60f0256 	sh	t7,598(s0)
     ca0:	8fa40024 	lw	a0,36(sp)
     ca4:	0c000000 	jal	0 <EnHintnuts_Init>
     ca8:	3c054080 	lui	a1,0x4080
     cac:	10400004 	beqz	v0,cc0 <EnHintnuts_Burrow+0xdc>
     cb0:	26040024 	addiu	a0,s0,36
     cb4:	92180225 	lbu	t8,549(s0)
     cb8:	3319fffe 	andi	t9,t8,0xfffe
     cbc:	a2190225 	sb	t9,549(s0)
     cc0:	8e050008 	lw	a1,8(s0)
     cc4:	3c063f00 	lui	a2,0x3f00
     cc8:	0c000000 	jal	0 <EnHintnuts_Init>
     ccc:	3c074040 	lui	a3,0x4040
     cd0:	2604002c 	addiu	a0,s0,44
     cd4:	8e050010 	lw	a1,16(s0)
     cd8:	3c063f00 	lui	a2,0x3f00
     cdc:	0c000000 	jal	0 <EnHintnuts_Init>
     ce0:	3c074040 	lui	a3,0x4040
     ce4:	8fbf001c 	lw	ra,28(sp)
     ce8:	8fb00018 	lw	s0,24(sp)
     cec:	27bd0030 	addiu	sp,sp,48
     cf0:	03e00008 	jr	ra
     cf4:	00000000 	nop

00000cf8 <EnHintnuts_BeginRun>:
     cf8:	27bdffe0 	addiu	sp,sp,-32
     cfc:	afb00018 	sw	s0,24(sp)
     d00:	00808025 	move	s0,a0
     d04:	afbf001c 	sw	ra,28(sp)
     d08:	afa50024 	sw	a1,36(sp)
     d0c:	0c000000 	jal	0 <EnHintnuts_Init>
     d10:	2484014c 	addiu	a0,a0,332
     d14:	50400008 	beqzl	v0,d38 <EnHintnuts_BeginRun+0x40>
     d18:	260400b6 	addiu	a0,s0,182
     d1c:	860e008a 	lh	t6,138(s0)
     d20:	34018000 	li	at,0x8000
     d24:	02002025 	move	a0,s0
     d28:	01c17821 	addu	t7,t6,at
     d2c:	0c000000 	jal	0 <EnHintnuts_Init>
     d30:	a60f0196 	sh	t7,406(s0)
     d34:	260400b6 	addiu	a0,s0,182
     d38:	8605008a 	lh	a1,138(s0)
     d3c:	24060002 	li	a2,2
     d40:	0c000000 	jal	0 <EnHintnuts_Init>
     d44:	24070e38 	li	a3,3640
     d48:	8fbf001c 	lw	ra,28(sp)
     d4c:	8fb00018 	lw	s0,24(sp)
     d50:	27bd0020 	addiu	sp,sp,32
     d54:	03e00008 	jr	ra
     d58:	00000000 	nop

00000d5c <EnHintnuts_BeginFreeze>:
     d5c:	27bdffe8 	addiu	sp,sp,-24
     d60:	afbf0014 	sw	ra,20(sp)
     d64:	afa40018 	sw	a0,24(sp)
     d68:	afa5001c 	sw	a1,28(sp)
     d6c:	0c000000 	jal	0 <EnHintnuts_Init>
     d70:	2484014c 	addiu	a0,a0,332
     d74:	50400004 	beqzl	v0,d88 <EnHintnuts_BeginFreeze+0x2c>
     d78:	8fbf0014 	lw	ra,20(sp)
     d7c:	0c000000 	jal	0 <EnHintnuts_Init>
     d80:	8fa40018 	lw	a0,24(sp)
     d84:	8fbf0014 	lw	ra,20(sp)
     d88:	27bd0018 	addiu	sp,sp,24
     d8c:	03e00008 	jr	ra
     d90:	00000000 	nop

00000d94 <EnHintnuts_CheckProximity>:
     d94:	27bdffe8 	addiu	sp,sp,-24
     d98:	afbf0014 	sw	ra,20(sp)
     d9c:	908e0002 	lbu	t6,2(a0)
     da0:	24010005 	li	at,5
     da4:	51c1001d 	beql	t6,at,e1c <EnHintnuts_CheckProximity+0x88>
     da8:	8fbf0014 	lw	ra,20(sp)
     dac:	908f0226 	lbu	t7,550(a0)
     db0:	31f80002 	andi	t8,t7,0x2
     db4:	57000005 	bnezl	t8,dcc <EnHintnuts_CheckProximity+0x38>
     db8:	8c880004 	lw	t0,4(a0)
     dbc:	9099010c 	lbu	t9,268(a0)
     dc0:	53200007 	beqzl	t9,de0 <EnHintnuts_CheckProximity+0x4c>
     dc4:	8c8a0004 	lw	t2,4(a0)
     dc8:	8c880004 	lw	t0,4(a0)
     dcc:	3c010001 	lui	at,0x1
     dd0:	01014825 	or	t1,t0,at
     dd4:	10000006 	b	df0 <EnHintnuts_CheckProximity+0x5c>
     dd8:	ac890004 	sw	t1,4(a0)
     ddc:	8c8a0004 	lw	t2,4(a0)
     de0:	3c01fffe 	lui	at,0xfffe
     de4:	3421ffff 	ori	at,at,0xffff
     de8:	01415824 	and	t3,t2,at
     dec:	ac8b0004 	sw	t3,4(a0)
     df0:	3c014302 	lui	at,0x4302
     df4:	44813000 	mtc1	at,$f6
     df8:	c4840090 	lwc1	$f4,144(a0)
     dfc:	4606203c 	c.lt.s	$f4,$f6
     e00:	00000000 	nop
     e04:	45020005 	bc1fl	e1c <EnHintnuts_CheckProximity+0x88>
     e08:	8fbf0014 	lw	ra,20(sp)
     e0c:	948c0198 	lhu	t4,408(a0)
     e10:	0c000000 	jal	0 <EnHintnuts_Init>
     e14:	a48c010e 	sh	t4,270(a0)
     e18:	8fbf0014 	lw	ra,20(sp)
     e1c:	27bd0018 	addiu	sp,sp,24
     e20:	03e00008 	jr	ra
     e24:	00000000 	nop

00000e28 <EnHintnuts_Run>:
     e28:	27bdffc0 	addiu	sp,sp,-64
     e2c:	afb00020 	sw	s0,32(sp)
     e30:	00808025 	move	s0,a0
     e34:	afbf0024 	sw	ra,36(sp)
     e38:	2484014c 	addiu	a0,a0,332
     e3c:	afa50044 	sw	a1,68(sp)
     e40:	0c000000 	jal	0 <EnHintnuts_Init>
     e44:	afa4002c 	sw	a0,44(sp)
     e48:	8fa4002c 	lw	a0,44(sp)
     e4c:	0c000000 	jal	0 <EnHintnuts_Init>
     e50:	24050000 	li	a1,0
     e54:	10400005 	beqz	v0,e6c <EnHintnuts_Run+0x44>
     e58:	3c0540c0 	lui	a1,0x40c0
     e5c:	86030194 	lh	v1,404(s0)
     e60:	10600002 	beqz	v1,e6c <EnHintnuts_Run+0x44>
     e64:	246effff 	addiu	t6,v1,-1
     e68:	a60e0194 	sh	t6,404(s0)
     e6c:	54400005 	bnezl	v0,e84 <EnHintnuts_Run+0x5c>
     e70:	02002025 	move	a0,s0
     e74:	0c000000 	jal	0 <EnHintnuts_Init>
     e78:	8fa4002c 	lw	a0,44(sp)
     e7c:	10400003 	beqz	v0,e8c <EnHintnuts_Run+0x64>
     e80:	02002025 	move	a0,s0
     e84:	0c000000 	jal	0 <EnHintnuts_Init>
     e88:	2405387f 	li	a1,14463
     e8c:	26040068 	addiu	a0,s0,104
     e90:	3c0540f0 	lui	a1,0x40f0
     e94:	0c000000 	jal	0 <EnHintnuts_Init>
     e98:	3c063f80 	lui	a2,0x3f80
     e9c:	86050196 	lh	a1,406(s0)
     ea0:	240f00b6 	li	t7,182
     ea4:	afaf0010 	sw	t7,16(sp)
     ea8:	26040032 	addiu	a0,s0,50
     eac:	24060001 	li	a2,1
     eb0:	0c000000 	jal	0 <EnHintnuts_Init>
     eb4:	24070e38 	li	a3,3640
     eb8:	5440003f 	bnezl	v0,fb8 <EnHintnuts_Run+0x190>
     ebc:	860e0032 	lh	t6,50(s0)
     ec0:	96020088 	lhu	v0,136(s0)
     ec4:	02002025 	move	a0,s0
     ec8:	30580020 	andi	t8,v0,0x20
     ecc:	13000005 	beqz	t8,ee4 <EnHintnuts_Run+0xbc>
     ed0:	30590008 	andi	t9,v0,0x8
     ed4:	0c000000 	jal	0 <EnHintnuts_Init>
     ed8:	26050008 	addiu	a1,s0,8
     edc:	10000035 	b	fb4 <EnHintnuts_Run+0x18c>
     ee0:	a6020196 	sh	v0,406(s0)
     ee4:	53200005 	beqzl	t9,efc <EnHintnuts_Run+0xd4>
     ee8:	86090194 	lh	t1,404(s0)
     eec:	8608007e 	lh	t0,126(s0)
     ef0:	10000030 	b	fb4 <EnHintnuts_Run+0x18c>
     ef4:	a6080196 	sh	t0,406(s0)
     ef8:	86090194 	lh	t1,404(s0)
     efc:	02002025 	move	a0,s0
     f00:	55200029 	bnezl	t1,fa8 <EnHintnuts_Run+0x180>
     f04:	860c008a 	lh	t4,138(s0)
     f08:	0c000000 	jal	0 <EnHintnuts_Init>
     f0c:	26050008 	addiu	a1,s0,8
     f10:	8605008a 	lh	a1,138(s0)
     f14:	00451823 	subu	v1,v0,a1
     f18:	00031c00 	sll	v1,v1,0x10
     f1c:	00031c03 	sra	v1,v1,0x10
     f20:	04600003 	bltz	v1,f30 <EnHintnuts_Run+0x108>
     f24:	00032023 	negu	a0,v1
     f28:	10000001 	b	f30 <EnHintnuts_Run+0x108>
     f2c:	00602025 	move	a0,v1
     f30:	28812001 	slti	at,a0,8193
     f34:	54200004 	bnezl	at,f48 <EnHintnuts_Run+0x120>
     f38:	44832000 	mtc1	v1,$f4
     f3c:	1000001d 	b	fb4 <EnHintnuts_Run+0x18c>
     f40:	a6020196 	sh	v0,406(s0)
     f44:	44832000 	mtc1	v1,$f4
     f48:	44804000 	mtc1	zero,$f8
     f4c:	44859000 	mtc1	a1,$f18
     f50:	468021a0 	cvt.s.w	$f6,$f4
     f54:	3c01bf80 	lui	at,0xbf80
     f58:	4606403e 	c.le.s	$f8,$f6
     f5c:	00000000 	nop
     f60:	45020006 	bc1fl	f7c <EnHintnuts_Run+0x154>
     f64:	44810000 	mtc1	at,$f0
     f68:	3c013f80 	lui	at,0x3f80
     f6c:	44810000 	mtc1	at,$f0
     f70:	10000004 	b	f84 <EnHintnuts_Run+0x15c>
     f74:	3c01c600 	lui	at,0xc600
     f78:	44810000 	mtc1	at,$f0
     f7c:	00000000 	nop
     f80:	3c01c600 	lui	at,0xc600
     f84:	44815000 	mtc1	at,$f10
     f88:	46809120 	cvt.s.w	$f4,$f18
     f8c:	460a0402 	mul.s	$f16,$f0,$f10
     f90:	46048180 	add.s	$f6,$f16,$f4
     f94:	4600320d 	trunc.w.s	$f8,$f6
     f98:	440b4000 	mfc1	t3,$f8
     f9c:	10000005 	b	fb4 <EnHintnuts_Run+0x18c>
     fa0:	a60b0196 	sh	t3,406(s0)
     fa4:	860c008a 	lh	t4,138(s0)
     fa8:	34018000 	li	at,0x8000
     fac:	01816821 	addu	t5,t4,at
     fb0:	a60d0196 	sh	t5,406(s0)
     fb4:	860e0032 	lh	t6,50(s0)
     fb8:	34018000 	li	at,0x8000
     fbc:	02002025 	move	a0,s0
     fc0:	01c17821 	addu	t7,t6,at
     fc4:	a60f00b6 	sh	t7,182(s0)
     fc8:	0c000000 	jal	0 <EnHintnuts_Init>
     fcc:	8fa50044 	lw	a1,68(sp)
     fd0:	50400006 	beqzl	v0,fec <EnHintnuts_Run+0x1c4>
     fd4:	86180194 	lh	t8,404(s0)
     fd8:	0c000000 	jal	0 <EnHintnuts_Init>
     fdc:	02002025 	move	a0,s0
     fe0:	10000031 	b	10a8 <EnHintnuts_Run+0x280>
     fe4:	8fbf0024 	lw	ra,36(sp)
     fe8:	86180194 	lh	t8,404(s0)
     fec:	02002025 	move	a0,s0
     ff0:	5700002a 	bnezl	t8,109c <EnHintnuts_Run+0x274>
     ff4:	02002025 	move	a0,s0
     ff8:	0c000000 	jal	0 <EnHintnuts_Init>
     ffc:	26050008 	addiu	a1,s0,8
    1000:	3c0141a0 	lui	at,0x41a0
    1004:	44815000 	mtc1	at,$f10
    1008:	00000000 	nop
    100c:	460a003c 	c.lt.s	$f0,$f10
    1010:	00000000 	nop
    1014:	45020021 	bc1fl	109c <EnHintnuts_Run+0x274>
    1018:	02002025 	move	a0,s0
    101c:	c6120028 	lwc1	$f18,40(s0)
    1020:	c610000c 	lwc1	$f16,12(s0)
    1024:	3c014000 	lui	at,0x4000
    1028:	44812000 	mtc1	at,$f4
    102c:	46109001 	sub.s	$f0,$f18,$f16
    1030:	46000005 	abs.s	$f0,$f0
    1034:	4604003c 	c.lt.s	$f0,$f4
    1038:	00000000 	nop
    103c:	45020017 	bc1fl	109c <EnHintnuts_Run+0x274>
    1040:	02002025 	move	a0,s0
    1044:	92190002 	lbu	t9,2(s0)
    1048:	44803000 	mtc1	zero,$f6
    104c:	24010001 	li	at,1
    1050:	1721000d 	bne	t9,at,1088 <EnHintnuts_Run+0x260>
    1054:	e6060068 	swc1	$f6,104(s0)
    1058:	8e080004 	lw	t0,4(s0)
    105c:	3c01fffe 	lui	at,0xfffe
    1060:	3421fff6 	ori	at,at,0xfff6
    1064:	8fa40044 	lw	a0,68(sp)
    1068:	01014824 	and	t1,t0,at
    106c:	ae090004 	sw	t1,4(s0)
    1070:	352b0005 	ori	t3,t1,0x5
    1074:	ae0b0004 	sw	t3,4(s0)
    1078:	02003025 	move	a2,s0
    107c:	24070005 	li	a3,5
    1080:	0c000000 	jal	0 <EnHintnuts_Init>
    1084:	24851c24 	addiu	a1,a0,7204
    1088:	0c000000 	jal	0 <EnHintnuts_Init>
    108c:	02002025 	move	a0,s0
    1090:	10000005 	b	10a8 <EnHintnuts_Run+0x280>
    1094:	8fbf0024 	lw	ra,36(sp)
    1098:	02002025 	move	a0,s0
    109c:	0c000000 	jal	0 <EnHintnuts_Init>
    10a0:	8fa50044 	lw	a1,68(sp)
    10a4:	8fbf0024 	lw	ra,36(sp)
    10a8:	8fb00020 	lw	s0,32(sp)
    10ac:	27bd0040 	addiu	sp,sp,64
    10b0:	03e00008 	jr	ra
    10b4:	00000000 	nop

000010b8 <EnHintnuts_Talk>:
    10b8:	27bdffe0 	addiu	sp,sp,-32
    10bc:	afbf001c 	sw	ra,28(sp)
    10c0:	afa40020 	sw	a0,32(sp)
    10c4:	afa50024 	sw	a1,36(sp)
    10c8:	0c000000 	jal	0 <EnHintnuts_Init>
    10cc:	2484014c 	addiu	a0,a0,332
    10d0:	8fa30020 	lw	v1,32(sp)
    10d4:	240e0100 	li	t6,256
    10d8:	24060003 	li	a2,3
    10dc:	8465008a 	lh	a1,138(v1)
    10e0:	afae0010 	sw	t6,16(sp)
    10e4:	24070400 	li	a3,1024
    10e8:	0c000000 	jal	0 <EnHintnuts_Init>
    10ec:	246400b6 	addiu	a0,v1,182
    10f0:	8fa40024 	lw	a0,36(sp)
    10f4:	0c000000 	jal	0 <EnHintnuts_Init>
    10f8:	248420d8 	addiu	a0,a0,8408
    10fc:	24010005 	li	at,5
    1100:	14410003 	bne	v0,at,1110 <EnHintnuts_Talk+0x58>
    1104:	8fa40020 	lw	a0,32(sp)
    1108:	0c000000 	jal	0 <EnHintnuts_Init>
    110c:	8fa50024 	lw	a1,36(sp)
    1110:	8fbf001c 	lw	ra,28(sp)
    1114:	27bd0020 	addiu	sp,sp,32
    1118:	03e00008 	jr	ra
    111c:	00000000 	nop

00001120 <EnHintnuts_Leave>:
    1120:	27bdffd0 	addiu	sp,sp,-48
    1124:	afb00014 	sw	s0,20(sp)
    1128:	00808025 	move	s0,a0
    112c:	afbf001c 	sw	ra,28(sp)
    1130:	afb10018 	sw	s1,24(sp)
    1134:	2484014c 	addiu	a0,a0,332
    1138:	00a08825 	move	s1,a1
    113c:	0c000000 	jal	0 <EnHintnuts_Init>
    1140:	afa40024 	sw	a0,36(sp)
    1144:	86030194 	lh	v1,404(s0)
    1148:	24050000 	li	a1,0
    114c:	10600002 	beqz	v1,1158 <EnHintnuts_Leave+0x38>
    1150:	246effff 	addiu	t6,v1,-1
    1154:	a60e0194 	sh	t6,404(s0)
    1158:	0c000000 	jal	0 <EnHintnuts_Init>
    115c:	8fa40024 	lw	a0,36(sp)
    1160:	14400004 	bnez	v0,1174 <EnHintnuts_Leave+0x54>
    1164:	8fa40024 	lw	a0,36(sp)
    1168:	0c000000 	jal	0 <EnHintnuts_Init>
    116c:	3c0540c0 	lui	a1,0x40c0
    1170:	10400003 	beqz	v0,1180 <EnHintnuts_Leave+0x60>
    1174:	02002025 	move	a0,s0
    1178:	0c000000 	jal	0 <EnHintnuts_Init>
    117c:	2405387f 	li	a1,14463
    1180:	960f0088 	lhu	t7,136(s0)
    1184:	31f80008 	andi	t8,t7,0x8
    1188:	53000004 	beqzl	t8,119c <EnHintnuts_Leave+0x7c>
    118c:	863907a0 	lh	t9,1952(s1)
    1190:	1000002a 	b	123c <EnHintnuts_Leave+0x11c>
    1194:	8605007e 	lh	a1,126(s0)
    1198:	863907a0 	lh	t9,1952(s1)
    119c:	00194080 	sll	t0,t9,0x2
    11a0:	02284821 	addu	t1,s1,t0
    11a4:	0c000000 	jal	0 <EnHintnuts_Init>
    11a8:	8d240790 	lw	a0,1936(t1)
    11ac:	860a008a 	lh	t2,138(s0)
    11b0:	24018000 	li	at,-32768
    11b4:	01422823 	subu	a1,t2,v0
    11b8:	00a12821 	addu	a1,a1,at
    11bc:	00052c00 	sll	a1,a1,0x10
    11c0:	00052c03 	sra	a1,a1,0x10
    11c4:	04a00003 	bltz	a1,11d4 <EnHintnuts_Leave+0xb4>
    11c8:	00051023 	negu	v0,a1
    11cc:	10000001 	b	11d4 <EnHintnuts_Leave+0xb4>
    11d0:	00a01025 	move	v0,a1
    11d4:	28414001 	slti	at,v0,16385
    11d8:	5420000c 	bnezl	at,120c <EnHintnuts_Leave+0xec>
    11dc:	862e07a0 	lh	t6,1952(s1)
    11e0:	862b07a0 	lh	t3,1952(s1)
    11e4:	000b6080 	sll	t4,t3,0x2
    11e8:	022c6821 	addu	t5,s1,t4
    11ec:	0c000000 	jal	0 <EnHintnuts_Init>
    11f0:	8da40790 	lw	a0,1936(t5)
    11f4:	34018000 	li	at,0x8000
    11f8:	00412821 	addu	a1,v0,at
    11fc:	00052c00 	sll	a1,a1,0x10
    1200:	1000000e 	b	123c <EnHintnuts_Leave+0x11c>
    1204:	00052c03 	sra	a1,a1,0x10
    1208:	862e07a0 	lh	t6,1952(s1)
    120c:	000e7880 	sll	t7,t6,0x2
    1210:	022fc021 	addu	t8,s1,t7
    1214:	8f040790 	lw	a0,1936(t8)
    1218:	0c000000 	jal	0 <EnHintnuts_Init>
    121c:	a7a5002e 	sh	a1,46(sp)
    1220:	87a5002e 	lh	a1,46(sp)
    1224:	34018000 	li	at,0x8000
    1228:	0005c843 	sra	t9,a1,0x1
    122c:	00592823 	subu	a1,v0,t9
    1230:	00a12821 	addu	a1,a1,at
    1234:	00052c00 	sll	a1,a1,0x10
    1238:	00052c03 	sra	a1,a1,0x10
    123c:	260400b6 	addiu	a0,s0,182
    1240:	0c000000 	jal	0 <EnHintnuts_Init>
    1244:	24060800 	li	a2,2048
    1248:	86090194 	lh	t1,404(s0)
    124c:	860800b6 	lh	t0,182(s0)
    1250:	11200008 	beqz	t1,1274 <EnHintnuts_Leave+0x154>
    1254:	a6080032 	sh	t0,50(s0)
    1258:	c60400ec 	lwc1	$f4,236(s0)
    125c:	44803000 	mtc1	zero,$f6
    1260:	00000000 	nop
    1264:	4606203c 	c.lt.s	$f4,$f6
    1268:	00000000 	nop
    126c:	45020017 	bc1fl	12cc <EnHintnuts_Leave+0x1ac>
    1270:	8fbf001c 	lw	ra,28(sp)
    1274:	0c000000 	jal	0 <EnHintnuts_Init>
    1278:	02202025 	move	a0,s1
    127c:	860a001c 	lh	t2,28(s0)
    1280:	24010003 	li	at,3
    1284:	02202025 	move	a0,s1
    1288:	55410007 	bnel	t2,at,12a8 <EnHintnuts_Leave+0x188>
    128c:	8e06011c 	lw	a2,284(s0)
    1290:	0c000000 	jal	0 <EnHintnuts_Init>
    1294:	82050003 	lb	a1,3(s0)
    1298:	240b0003 	li	t3,3
    129c:	3c010000 	lui	at,0x0
    12a0:	a42b0054 	sh	t3,84(at)
    12a4:	8e06011c 	lw	a2,284(s0)
    12a8:	02202025 	move	a0,s1
    12ac:	26251c24 	addiu	a1,s1,7204
    12b0:	10c00003 	beqz	a2,12c0 <EnHintnuts_Leave+0x1a0>
    12b4:	00000000 	nop
    12b8:	0c000000 	jal	0 <EnHintnuts_Init>
    12bc:	24070006 	li	a3,6
    12c0:	0c000000 	jal	0 <EnHintnuts_Init>
    12c4:	02002025 	move	a0,s0
    12c8:	8fbf001c 	lw	ra,28(sp)
    12cc:	8fb00014 	lw	s0,20(sp)
    12d0:	8fb10018 	lw	s1,24(sp)
    12d4:	03e00008 	jr	ra
    12d8:	27bd0030 	addiu	sp,sp,48

000012dc <EnHintnuts_Freeze>:
    12dc:	27bdffd8 	addiu	sp,sp,-40
    12e0:	afb00018 	sw	s0,24(sp)
    12e4:	00808025 	move	s0,a0
    12e8:	afbf001c 	sw	ra,28(sp)
    12ec:	afa5002c 	sw	a1,44(sp)
    12f0:	240e0001 	li	t6,1
    12f4:	a08e0114 	sb	t6,276(a0)
    12f8:	2484014c 	addiu	a0,a0,332
    12fc:	0c000000 	jal	0 <EnHintnuts_Init>
    1300:	afa40024 	sw	a0,36(sp)
    1304:	8fa40024 	lw	a0,36(sp)
    1308:	0c000000 	jal	0 <EnHintnuts_Init>
    130c:	24050000 	li	a1,0
    1310:	10400003 	beqz	v0,1320 <EnHintnuts_Freeze+0x44>
    1314:	02002025 	move	a0,s0
    1318:	0c000000 	jal	0 <EnHintnuts_Init>
    131c:	24053882 	li	a1,14466
    1320:	860f0194 	lh	t7,404(s0)
    1324:	3c020000 	lui	v0,0x0
    1328:	3c01420c 	lui	at,0x420c
    132c:	55e00014 	bnezl	t7,1380 <EnHintnuts_Freeze+0xa4>
    1330:	c604000c 	lwc1	$f4,12(s0)
    1334:	84420054 	lh	v0,84(v0)
    1338:	24010003 	li	at,3
    133c:	5441000b 	bnel	v0,at,136c <EnHintnuts_Freeze+0x90>
    1340:	2401fffc 	li	at,-4
    1344:	8e06011c 	lw	a2,284(s0)
    1348:	8fa4002c 	lw	a0,44(sp)
    134c:	10c00003 	beqz	a2,135c <EnHintnuts_Freeze+0x80>
    1350:	24851c24 	addiu	a1,a0,7204
    1354:	0c000000 	jal	0 <EnHintnuts_Init>
    1358:	24070006 	li	a3,6
    135c:	24180001 	li	t8,1
    1360:	10000024 	b	13f4 <EnHintnuts_Freeze+0x118>
    1364:	a6180194 	sh	t8,404(s0)
    1368:	2401fffc 	li	at,-4
    136c:	14410021 	bne	v0,at,13f4 <EnHintnuts_Freeze+0x118>
    1370:	24190002 	li	t9,2
    1374:	1000001f 	b	13f4 <EnHintnuts_Freeze+0x118>
    1378:	a6190194 	sh	t9,404(s0)
    137c:	c604000c 	lwc1	$f4,12(s0)
    1380:	44813000 	mtc1	at,$f6
    1384:	26040028 	addiu	a0,s0,40
    1388:	3c0640e0 	lui	a2,0x40e0
    138c:	46062201 	sub.s	$f8,$f4,$f6
    1390:	44054000 	mfc1	a1,$f8
    1394:	0c000000 	jal	0 <EnHintnuts_Init>
    1398:	00000000 	nop
    139c:	50400016 	beqzl	v0,13f8 <EnHintnuts_Freeze+0x11c>
    13a0:	8fbf001c 	lw	ra,28(sp)
    13a4:	86080194 	lh	t0,404(s0)
    13a8:	24010001 	li	at,1
    13ac:	3c0d0000 	lui	t5,0x0
    13b0:	55010006 	bnel	t0,at,13cc <EnHintnuts_Freeze+0xf0>
    13b4:	8e090004 	lw	t1,4(s0)
    13b8:	0c000000 	jal	0 <EnHintnuts_Init>
    13bc:	02002025 	move	a0,s0
    13c0:	1000000d 	b	13f8 <EnHintnuts_Freeze+0x11c>
    13c4:	8fbf001c 	lw	ra,28(sp)
    13c8:	8e090004 	lw	t1,4(s0)
    13cc:	2401ffef 	li	at,-17
    13d0:	02002025 	move	a0,s0
    13d4:	352a0001 	ori	t2,t1,0x1
    13d8:	ae0a0004 	sw	t2,4(s0)
    13dc:	01416024 	and	t4,t2,at
    13e0:	ae0c0004 	sw	t4,4(s0)
    13e4:	91ad004c 	lbu	t5,76(t5)
    13e8:	a2000114 	sb	zero,276(s0)
    13ec:	0c000000 	jal	0 <EnHintnuts_Init>
    13f0:	a20d00af 	sb	t5,175(s0)
    13f4:	8fbf001c 	lw	ra,28(sp)
    13f8:	8fb00018 	lw	s0,24(sp)
    13fc:	27bd0028 	addiu	sp,sp,40
    1400:	03e00008 	jr	ra
    1404:	00000000 	nop

00001408 <EnHintnuts_ColliderCheck>:
    1408:	27bdffe0 	addiu	sp,sp,-32
    140c:	afbf001c 	sw	ra,28(sp)
    1410:	afb00018 	sw	s0,24(sp)
    1414:	90820225 	lbu	v0,549(a0)
    1418:	00808025 	move	s0,a0
    141c:	00a03825 	move	a3,a1
    1420:	304e0002 	andi	t6,v0,0x2
    1424:	11c00017 	beqz	t6,1484 <EnHintnuts_ColliderCheck+0x7c>
    1428:	304ffffd 	andi	t7,v0,0xfffd
    142c:	a08f0225 	sb	t7,549(a0)
    1430:	afa70024 	sw	a3,36(sp)
    1434:	2605022c 	addiu	a1,s0,556
    1438:	0c000000 	jal	0 <EnHintnuts_Init>
    143c:	24060001 	li	a2,1
    1440:	8e18021c 	lw	t8,540(s0)
    1444:	24010193 	li	at,403
    1448:	8fa70024 	lw	a3,36(sp)
    144c:	87190000 	lh	t9,0(t8)
    1450:	02002025 	move	a0,s0
    1454:	13210005 	beq	t9,at,146c <EnHintnuts_ColliderCheck+0x64>
    1458:	00000000 	nop
    145c:	0c000000 	jal	0 <EnHintnuts_Init>
    1460:	02002025 	move	a0,s0
    1464:	10000010 	b	14a8 <EnHintnuts_ColliderCheck+0xa0>
    1468:	8fbf001c 	lw	ra,28(sp)
    146c:	0c000000 	jal	0 <EnHintnuts_Init>
    1470:	00e02825 	move	a1,a3
    1474:	0c000000 	jal	0 <EnHintnuts_Init>
    1478:	02002025 	move	a0,s0
    147c:	1000000a 	b	14a8 <EnHintnuts_ColliderCheck+0xa0>
    1480:	8fbf001c 	lw	ra,28(sp)
    1484:	90e81c26 	lbu	t0,7206(a3)
    1488:	02002025 	move	a0,s0
    148c:	51000006 	beqzl	t0,14a8 <EnHintnuts_ColliderCheck+0xa0>
    1490:	8fbf001c 	lw	ra,28(sp)
    1494:	0c000000 	jal	0 <EnHintnuts_Init>
    1498:	00e02825 	move	a1,a3
    149c:	0c000000 	jal	0 <EnHintnuts_Init>
    14a0:	02002025 	move	a0,s0
    14a4:	8fbf001c 	lw	ra,28(sp)
    14a8:	8fb00018 	lw	s0,24(sp)
    14ac:	27bd0020 	addiu	sp,sp,32
    14b0:	03e00008 	jr	ra
    14b4:	00000000 	nop

000014b8 <EnHintnuts_Update>:
    14b8:	27bdffc8 	addiu	sp,sp,-56
    14bc:	afbf0024 	sw	ra,36(sp)
    14c0:	afb10020 	sw	s1,32(sp)
    14c4:	afb0001c 	sw	s0,28(sp)
    14c8:	848e001c 	lh	t6,28(a0)
    14cc:	2401000a 	li	at,10
    14d0:	00808025 	move	s0,a0
    14d4:	11c10053 	beq	t6,at,1624 <EnHintnuts_Update+0x16c>
    14d8:	00a08825 	move	s1,a1
    14dc:	0c000000 	jal	0 <EnHintnuts_Init>
    14e0:	00000000 	nop
    14e4:	8e190190 	lw	t9,400(s0)
    14e8:	02002025 	move	a0,s0
    14ec:	02202825 	move	a1,s1
    14f0:	0320f809 	jalr	t9
    14f4:	00000000 	nop
    14f8:	8e030190 	lw	v1,400(s0)
    14fc:	3c0f0000 	lui	t7,0x0
    1500:	25ef0000 	addiu	t7,t7,0
    1504:	11e30014 	beq	t7,v1,1558 <EnHintnuts_Update+0xa0>
    1508:	3c180000 	lui	t8,0x0
    150c:	27180000 	addiu	t8,t8,0
    1510:	53030012 	beql	t8,v1,155c <EnHintnuts_Update+0xa4>
    1514:	26050214 	addiu	a1,s0,532
    1518:	0c000000 	jal	0 <EnHintnuts_Init>
    151c:	02002025 	move	a0,s0
    1520:	86080254 	lh	t0,596(s0)
    1524:	86090256 	lh	t1,598(s0)
    1528:	240a001d 	li	t2,29
    152c:	44882000 	mtc1	t0,$f4
    1530:	44893000 	mtc1	t1,$f6
    1534:	afaa0014 	sw	t2,20(sp)
    1538:	46802120 	cvt.s.w	$f4,$f4
    153c:	02202025 	move	a0,s1
    1540:	02002825 	move	a1,s0
    1544:	3c0641a0 	lui	a2,0x41a0
    1548:	46803220 	cvt.s.w	$f8,$f6
    154c:	44072000 	mfc1	a3,$f4
    1550:	0c000000 	jal	0 <EnHintnuts_Init>
    1554:	e7a80010 	swc1	$f8,16(sp)
    1558:	26050214 	addiu	a1,s0,532
    155c:	afa50028 	sw	a1,40(sp)
    1560:	0c000000 	jal	0 <EnHintnuts_Init>
    1564:	02002025 	move	a0,s0
    1568:	920b0225 	lbu	t3,549(s0)
    156c:	3c010001 	lui	at,0x1
    1570:	34211e60 	ori	at,at,0x1e60
    1574:	316c0001 	andi	t4,t3,0x1
    1578:	11800004 	beqz	t4,158c <EnHintnuts_Update+0xd4>
    157c:	02202025 	move	a0,s1
    1580:	02212821 	addu	a1,s1,at
    1584:	0c000000 	jal	0 <EnHintnuts_Init>
    1588:	8fa60028 	lw	a2,40(sp)
    158c:	3c010001 	lui	at,0x1
    1590:	34211e60 	ori	at,at,0x1e60
    1594:	02212821 	addu	a1,s1,at
    1598:	02202025 	move	a0,s1
    159c:	0c000000 	jal	0 <EnHintnuts_Init>
    15a0:	8fa60028 	lw	a2,40(sp)
    15a4:	8e030190 	lw	v1,400(s0)
    15a8:	3c0d0000 	lui	t5,0x0
    15ac:	25ad0000 	addiu	t5,t5,0
    15b0:	15a30006 	bne	t5,v1,15cc <EnHintnuts_Update+0x114>
    15b4:	3c0e0000 	lui	t6,0x0
    15b8:	02002025 	move	a0,s0
    15bc:	0c000000 	jal	0 <EnHintnuts_Init>
    15c0:	8e050164 	lw	a1,356(s0)
    15c4:	10000018 	b	1628 <EnHintnuts_Update+0x170>
    15c8:	8fbf0024 	lw	ra,36(sp)
    15cc:	25ce0000 	addiu	t6,t6,0
    15d0:	15c30012 	bne	t6,v1,161c <EnHintnuts_Update+0x164>
    15d4:	02002025 	move	a0,s0
    15d8:	3c040000 	lui	a0,0x0
    15dc:	0c000000 	jal	0 <EnHintnuts_Init>
    15e0:	24840000 	addiu	a0,a0,0
    15e4:	3c0141a0 	lui	at,0x41a0
    15e8:	44810000 	mtc1	at,$f0
    15ec:	c60a0164 	lwc1	$f10,356(s0)
    15f0:	44829000 	mtc1	v0,$f18
    15f4:	02002025 	move	a0,s0
    15f8:	46005402 	mul.s	$f16,$f10,$f0
    15fc:	46809120 	cvt.s.w	$f4,$f18
    1600:	46048183 	div.s	$f6,$f16,$f4
    1604:	46060201 	sub.s	$f8,$f0,$f6
    1608:	44054000 	mfc1	a1,$f8
    160c:	0c000000 	jal	0 <EnHintnuts_Init>
    1610:	00000000 	nop
    1614:	10000004 	b	1628 <EnHintnuts_Update+0x170>
    1618:	8fbf0024 	lw	ra,36(sp)
    161c:	0c000000 	jal	0 <EnHintnuts_Init>
    1620:	3c0541a0 	lui	a1,0x41a0
    1624:	8fbf0024 	lw	ra,36(sp)
    1628:	8fb0001c 	lw	s0,28(sp)
    162c:	8fb10020 	lw	s1,32(sp)
    1630:	03e00008 	jr	ra
    1634:	27bd0038 	addiu	sp,sp,56

00001638 <EnHintnuts_OverrideLimbDraw>:
    1638:	27bdffe8 	addiu	sp,sp,-24
    163c:	24010005 	li	at,5
    1640:	afbf0014 	sw	ra,20(sp)
    1644:	afa40018 	sw	a0,24(sp)
    1648:	afa60020 	sw	a2,32(sp)
    164c:	14a10043 	bne	a1,at,175c <EnHintnuts_OverrideLimbDraw+0x124>
    1650:	afa70024 	sw	a3,36(sp)
    1654:	8fa2002c 	lw	v0,44(sp)
    1658:	3c0e0000 	lui	t6,0x0
    165c:	25ce0000 	addiu	t6,t6,0
    1660:	8c4f0190 	lw	t7,400(v0)
    1664:	3c0140c0 	lui	at,0x40c0
    1668:	55cf003d 	bnel	t6,t7,1760 <EnHintnuts_OverrideLimbDraw+0x128>
    166c:	00001025 	move	v0,zero
    1670:	44819000 	mtc1	at,$f18
    1674:	c4400164 	lwc1	$f0,356(v0)
    1678:	3c0140e0 	lui	at,0x40e0
    167c:	4612003e 	c.le.s	$f0,$f18
    1680:	00000000 	nop
    1684:	4502000f 	bc1fl	16c4 <EnHintnuts_OverrideLimbDraw+0x8c>
    1688:	44811000 	mtc1	at,$f2
    168c:	3c013f80 	lui	at,0x3f80
    1690:	44819000 	mtc1	at,$f18
    1694:	3c010000 	lui	at,0x0
    1698:	c4240000 	lwc1	$f4,0(at)
    169c:	3c010000 	lui	at,0x0
    16a0:	c4280004 	lwc1	$f8,4(at)
    16a4:	46040182 	mul.s	$f6,$f0,$f4
    16a8:	00000000 	nop
    16ac:	46080282 	mul.s	$f10,$f0,$f8
    16b0:	46069381 	sub.s	$f14,$f18,$f6
    16b4:	46125300 	add.s	$f12,$f10,$f18
    16b8:	10000025 	b	1750 <EnHintnuts_OverrideLimbDraw+0x118>
    16bc:	46006406 	mov.s	$f16,$f12
    16c0:	44811000 	mtc1	at,$f2
    16c4:	3c014120 	lui	at,0x4120
    16c8:	4602003e 	c.le.s	$f0,$f2
    16cc:	00000000 	nop
    16d0:	4502000e 	bc1fl	170c <EnHintnuts_OverrideLimbDraw+0xd4>
    16d4:	44812000 	mtc1	at,$f4
    16d8:	3c013f00 	lui	at,0x3f00
    16dc:	44812000 	mtc1	at,$f4
    16e0:	3c010000 	lui	at,0x0
    16e4:	c4260008 	lwc1	$f6,8(at)
    16e8:	46120001 	sub.s	$f0,$f0,$f18
    16ec:	3c010000 	lui	at,0x0
    16f0:	c428000c 	lwc1	$f8,12(at)
    16f4:	46002380 	add.s	$f14,$f4,$f0
    16f8:	46080282 	mul.s	$f10,$f0,$f8
    16fc:	460a3301 	sub.s	$f12,$f6,$f10
    1700:	10000013 	b	1750 <EnHintnuts_OverrideLimbDraw+0x118>
    1704:	46006406 	mov.s	$f16,$f12
    1708:	44812000 	mtc1	at,$f4
    170c:	3c013f80 	lui	at,0x3f80
    1710:	4604003e 	c.le.s	$f0,$f4
    1714:	00000000 	nop
    1718:	4500000b 	bc1f	1748 <EnHintnuts_OverrideLimbDraw+0x110>
    171c:	00000000 	nop
    1720:	44816000 	mtc1	at,$f12
    1724:	46020201 	sub.s	$f8,$f0,$f2
    1728:	3c010000 	lui	at,0x0
    172c:	c4260010 	lwc1	$f6,16(at)
    1730:	3c013fc0 	lui	at,0x3fc0
    1734:	44812000 	mtc1	at,$f4
    1738:	46064282 	mul.s	$f10,$f8,$f6
    173c:	46006406 	mov.s	$f16,$f12
    1740:	10000003 	b	1750 <EnHintnuts_OverrideLimbDraw+0x118>
    1744:	460a2381 	sub.s	$f14,$f4,$f10
    1748:	10000005 	b	1760 <EnHintnuts_OverrideLimbDraw+0x128>
    174c:	00001025 	move	v0,zero
    1750:	44068000 	mfc1	a2,$f16
    1754:	0c000000 	jal	0 <EnHintnuts_Init>
    1758:	24070001 	li	a3,1
    175c:	00001025 	move	v0,zero
    1760:	8fbf0014 	lw	ra,20(sp)
    1764:	27bd0018 	addiu	sp,sp,24
    1768:	03e00008 	jr	ra
    176c:	00000000 	nop

00001770 <EnHintnuts_Draw>:
    1770:	27bdffe0 	addiu	sp,sp,-32
    1774:	afbf001c 	sw	ra,28(sp)
    1778:	afa40020 	sw	a0,32(sp)
    177c:	afa50024 	sw	a1,36(sp)
    1780:	848f001c 	lh	t7,28(a0)
    1784:	2401000a 	li	at,10
    1788:	8fa40024 	lw	a0,36(sp)
    178c:	15e10007 	bne	t7,at,17ac <EnHintnuts_Draw+0x3c>
    1790:	8fb80020 	lw	t8,32(sp)
    1794:	00a02025 	move	a0,a1
    1798:	3c050000 	lui	a1,0x0
    179c:	0c000000 	jal	0 <EnHintnuts_Init>
    17a0:	24a50000 	addiu	a1,a1,0
    17a4:	10000009 	b	17cc <EnHintnuts_Draw+0x5c>
    17a8:	8fbf001c 	lw	ra,28(sp)
    17ac:	8f050150 	lw	a1,336(t8)
    17b0:	8f06016c 	lw	a2,364(t8)
    17b4:	3c070000 	lui	a3,0x0
    17b8:	24e70000 	addiu	a3,a3,0
    17bc:	afb80014 	sw	t8,20(sp)
    17c0:	0c000000 	jal	0 <EnHintnuts_Init>
    17c4:	afa00010 	sw	zero,16(sp)
    17c8:	8fbf001c 	lw	ra,28(sp)
    17cc:	27bd0020 	addiu	sp,sp,32
    17d0:	03e00008 	jr	ra
    17d4:	00000000 	nop
	...
